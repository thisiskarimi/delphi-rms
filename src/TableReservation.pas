unit TableReservation;

interface

uses
  functions, DateUtils, DataAccessLayer, Winapi.Windows, Winapi.Messages,
  System.SysUtils,
  System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.DBCtrls, Vcl.ComCtrls, Vcl.StdCtrls,
  Vcl.Buttons, CommCtrl, Data.DB, Vcl.Grids, Vcl.DBGrids;

type
  TfrmTableReservation = class(TForm)
    DBLCBrTableReservationCustomer: TDBLookupComboBox;
    DBLLBrTable: TDBLookupListBox;
    DPDaterTableReservation: TDateTimePicker;
    TPStartTimerTableReservation: TDateTimePicker;
    TPEndTimerTableReservation: TDateTimePicker;
    btnSubmitrTableReservation: TButton;
    lblrTableReservationCustomer: TLabel;
    lblReservationTime: TLabel;
    SpeedButton1: TSpeedButton;
    lblReservationDate: TLabel;
    lblReservationStartTime: TLabel;
    lblReservationEndTime: TLabel;
    Label1: TLabel;
    PageControl1: TPageControl;
    tsReserve: TTabSheet;
    tsReserved: TTabSheet;
    DBGrTableReserved: TDBGrid;
    procedure btnSubmitrTableReservationClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure btnSubmitReserveDisable;
    procedure DPDaterTableReservationChange(Sender: TObject);
    procedure TPEndTimerTableReservationChange(Sender: TObject);
    procedure TPStartTimerTableReservationChange(Sender: TObject);
    procedure DBLLBrTableClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmTableReservation: TfrmTableReservation;

implementation

{$R *.dfm}

procedure TfrmTableReservation.btnSubmitReserveDisable;
begin
  SpeedButton1.Enabled := False;
end;

procedure TfrmTableReservation.btnSubmitrTableReservationClick(Sender: TObject);
var
  i: integer;
begin
  i := MinutesBetween(TPEndTimerTableReservation.Time,
    TPStartTimerTableReservation.Time);
  if TimeToStr(TPStartTimerTableReservation.Time) >
    TimeToStr(TPEndTimerTableReservation.Time) then
    ShowMessage('زمان شروع باید قبل تر باشد');
  if i < 60 then
    ShowMessage('حداقل زمان رزرو 30 دقیقه میباشد');

  if not IsReserveAbleRTable(StrToInt(DBLLBrTable.SelectedItem),
    StrToInt(FormatDateTime('hh', TPStartTimerTableReservation.Time)),
    StrToInt(FormatDateTime('hh', TPEndTimerTableReservation.Time)),
    DateToStr(DPDaterTableReservation.Date)) then
    ShowMessage('nemishe')
  else
    SpeedButton1.Enabled := True;
end;

procedure TfrmTableReservation.DBLLBrTableClick(Sender: TObject);
begin
btnSubmitReserveDisable;
end;

procedure TfrmTableReservation.DPDaterTableReservationChange(Sender: TObject);
begin
  btnSubmitReserveDisable;
end;

procedure TfrmTableReservation.FormShow(Sender: TObject);
begin
  TPStartTimerTableReservation.Time := TimeOf(now);
  TPEndTimerTableReservation.Time := IncHour(TimeOf(now));
end;

procedure TfrmTableReservation.SpeedButton1Click(Sender: TObject);
begin
  if ReserverTable(StrToInt(DBLLBrTable.SelectedItem), 2,
    StrToInt(FormatDateTime('hh', TPStartTimerTableReservation.Time)),
    StrToInt(FormatDateTime('hh', TPEndTimerTableReservation.Time)),
    DateToStr(DPDaterTableReservation.Date)) then
  begin
    ShowMessage('رزرو ثبت شد');
    SpeedButton1.Enabled := False;
  end
  else
    ShowMessage('مشکلی در رزرو پیش آمد. لطفا دوباره امتحان کنید');
end;

procedure TfrmTableReservation.TPEndTimerTableReservationChange(
  Sender: TObject);
begin
btnSubmitReserveDisable;
end;

procedure TfrmTableReservation.TPStartTimerTableReservationChange(
  Sender: TObject);
begin
btnSubmitReserveDisable;
end;

end.
