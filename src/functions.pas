unit functions;

interface

uses System.SysUtils, FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param,
  FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf,
  FireDAC.Stan.Async, FireDAC.DApt, Data.DB, FireDAC.Comp.DataSet,
  FireDAC.Comp.Client;
function day_of_week: string;
function IsReserveAbleRTable(rtable_number:integer; date,start_time,end_time:string): boolean;
function GetRTableNumber(rtable_number:integer):integer;  // returns 0 for field or rtable.id on success
function ReserveRTable(rtable_number,customer_id:integer; date,start_time,end_time:string): boolean;

implementation

function day_of_week: string;
begin
  case DayOfWeek(now) of
    1:
      result := 'یکشنبه';
    2:
      result := 'دوشنبه';
    3:
      result := 'سه شنبه';
    4:
      result := 'چهارشنبه';
    5:
      result := 'پنجشنبه';
    6:
      result := 'جمعه';
    7:
      result := 'شنبه';
  end;
end;

function IsReserveAbleRTable(rtable_number:integer; date,start_time,end_time:string): boolean;
begin

end;

function GetRTableNumber(rtable_number:integer):integer;
// returns 0 for field or rtable.id on success
 var
  qry : TFDQuery;
begin
  with qry do
    begin
      qry := TFDQuery(nil);
      try
        Close;
        //Connection :=
        SQL.Clear;
        SQL.Add(' SELECT rtable.id, rtable.number, COUNT(rtable.number) AS record_counter ');
        SQL.Add(' FROM rtable ');
        SQL.Add(' WHERE number = :rtable_number ');
        Params.ParamByName('rtable_number').Value := rtable_number;
        ExecSQL;
        if FieldByName('record_counter').AsInteger = 1 then
          result := FieldByName('id').AsInteger
        else
          result := 0;
        Close;
      finally
        FreeAndNil(qry);
      end;
    end;

end;

function ReserveRTable(rtable_number,customer_id:integer; date,start_time,end_time:string): boolean;
 var
  qry : TFDQuery;
  table_id : integer;
begin
  with qry do
    begin
      if IsReserveAbleRTable(rtable_number,date,start_time,end_time) then
        begin
          table_id := GetRTableNumber(rtable_number);
          qry := TFDQuery(nil);
          Try
            Close;
            //Connection :=
            SQL.Clear;
            SQL.Add(' INSERT INTO rtable_reservation(table_id, customer_id, date, start_time, end_time) ');
            SQL.Add(' VALUES :table_id, :customer_id, :date, :start_time, :end_time ');
            Params.ParamByName('table_id').Value := table_id;
            Params.ParamByName('customer_id').Value := customer_id;
            Params.ParamByName('date').Value := date;
            Params.ParamByName('start_time').Value := start_time;
            Params.ParamByName('end_time').Value := end_time;
            ExecSQL;
            Close;
          Finally
            FreeAndNil(qry);
          end;
          result := True;
        end
      else
        result := False;
    end;
end;

end.
