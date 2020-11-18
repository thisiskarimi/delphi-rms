unit functions;

interface

uses System.SysUtils, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Param,
  FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf,
  FireDAC.Stan.Async, FireDAC.DApt, Data.DB, FireDAC.Comp.DataSet,
  FireDAC.Comp.Client, DataAccessLayer, Vcl.Dialogs;
function day_of_week: string;
function IsReserveAbleRTable(rtable_number, start_time, end_time: integer;
  date: string): boolean;
function ReserverTable(rtable_number, customer_id, start_time,
  end_time: integer; date: string): boolean;

implementation

function IsReserveAbleRTable(rtable_number, start_time, end_time: integer;
  date: string): boolean;
var
  qry: TFDQuery;
begin
  qry := TFDQuery.Create(nil);
  qry.Connection := dm.ConnectionMain;
  try
    with qry do
    begin
    Close;
    SQL.Clear;
    SQL.Add(' SELECT tr.id ');
    SQL.Add(' FROM rtable_reservation AS tr ');
    SQL.Add(' WHERE table_id = :rtable_number ');
    SQL.Add(' AND reserve_date = :reserve_date ');
    SQL.Add(' AND start_time = :start_time ');
    SQL.Add(' AND end_time = :end_time ');
    SQL.Add(' LIMIT 1 ');

//    SQL.Text := 'select * from rtable_reservation where(' +
//      ' table_id = :rtable_number and reserve_date = :reserve_date and start_time = :start_time and end_time = :end_time);';
    Params.ParamByName('rtable_number').Value := rtable_number;
    Params.ParamByName('start_time').Value := start_time;
    Params.ParamByName('end_time').Value := end_time;
    Params.ParamByName('reserve_date').Value := date;
    ExecSQL;
    close;
//    Open;
    end;
    if qry.RecordCount > 0 then
      Result := False
    else
      Result := True;
  finally
    FreeAndNil(qry);
//  except
//    Result := False;
  end;
end;

function ReserverTable(rtable_number, customer_id, start_time,
  end_time: integer; date: string): boolean;
var
  qry: TFDQuery;
begin
  if IsReserveAbleRTable(rtable_number, start_time, end_time, date) then
  begin
    qry := TFDQuery.Create(nil);
    qry.Connection := dm.ConnectionMain;
    try
      Try
        qry.SQL.Text :=
          'insert INTO rtable_reservation(table_id, customer_id, reserve_date, start_time, end_time)    '
          + 'VALUES(:rtable_number, :customer_id, :reserve_date, :start_time, :end_time);';
        qry.Params.ParamByName('rtable_number').Value := rtable_number;
        qry.Params.ParamByName('customer_id').Value := 2;
        qry.Params.ParamByName('start_time').Value := start_time;
        qry.Params.ParamByName('end_time').Value := end_time;
        qry.Params.ParamByName('reserve_date').Value := date;
        qry.ExecSQL;
      Finally
        FreeAndNil(qry);
      end;
      Result := True;
    except
      Result := False;
    end;
  end;

end;

function day_of_week: string;
begin
  case DayOfWeek(now) of
    1:
      Result := 'یکشنبه';
    2:
      Result := 'دوشنبه';
    3:
      Result := 'سه شنبه';
    4:
      Result := 'چهارشنبه';
    5:
      Result := 'پنجشنبه';
    6:
      Result := 'جمعه';
    7:
      Result := 'شنبه';
  end;
end;

end.
