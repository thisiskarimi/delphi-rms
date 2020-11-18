unit TableReservation;

interface

uses
  functions, DateUtils, DataAccessLayer, Winapi.Windows, Winapi.Messages,
  System.SysUtils,
  System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.DBCtrls, Vcl.ComCtrls, Vcl.StdCtrls,
  Vcl.Buttons, CommCtrl, Data.DB, Vcl.Grids, Vcl.DBGrids, Vcl.Imaging.jpeg,
  Vcl.ExtCtrls;

type
  TfrmTableReservation = class(TForm)
    dblcbRC: TDBLookupComboBox;
    dblbRT: TDBLookupListBox;
    dpRD: TDateTimePicker;
    tpRST: TDateTimePicker;
    tpRET: TDateTimePicker;
    btnTRPossibility: TButton;
    lblRC: TLabel;
    lblRTi: TLabel;
    lblRD: TLabel;
    lblRST: TLabel;
    lblRET: TLabel;
    lblRT: TLabel;
    PageControl1: TPageControl;
    tsReserve: TTabSheet;
    tsReserved: TTabSheet;
    DBGrTableReserved: TDBGrid;
    sbtnRTSubmit: TSpeedButton;
    procedure btnTRPossibilityClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure sbtnRTSubmitClick(Sender: TObject);
    procedure sbtnRTSubmitDisable(Sender: TObject);
//    procedure dpRDChange(Sender: TObject);
//    procedure tpRETChange(Sender: TObject);
//    procedure tpRSTChange(Sender: TObject);
//    procedure dblbRTClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmTableReservation: TfrmTableReservation;

implementation

{$R *.dfm}

procedure TfrmTableReservation.sbtnRTSubmitDisable(Sender: TObject);
begin
  sbtnRTSubmit.Enabled := False;
end;

procedure TfrmTableReservation.FormShow(Sender: TObject);
begin
  tpRST.Time := TimeOf(now);
  tpRET.Time := IncHour(TimeOf(now));
  dpRD.Date := Now;
end;

procedure TfrmTableReservation.btnTRPossibilityClick(Sender: TObject);
var
  i: integer;
begin
  i := MinutesBetween(tpRET.Time, tpRST.Time);

  if TimeToStr(tpRST.Time) > TimeToStr(tpRET.Time) then
    ShowMessage('زمان شروع باید قبل تر باشد')
  else if i < 60 then
    ShowMessage('حداقل زمان رزرو 30 دقیقه میباشد')
  else if not IsReserveAbleRTable(StrToInt(dblbRT.SelectedItem),
    StrToInt(FormatDateTime('hh', tpRST.Time)),
    StrToInt(FormatDateTime('hh', tpRET.Time)), DateToStr(dpRD.Date)) then
    ShowMessage('رزروی با اطلاعات مشابه وجود دارد')
  else
    sbtnRTSubmit.Enabled := True;
end;



procedure TfrmTableReservation.sbtnRTSubmitClick(Sender: TObject);
begin
  if ReserverTable(StrToInt(dblbRT.SelectedItem), 2,
    StrToInt(FormatDateTime('hh', tpRST.Time)),
    StrToInt(FormatDateTime('hh', tpRET.Time)), DateToStr(dpRD.Date)) then
  begin
    ShowMessage('رزرو ثبت شد');
    sbtnRTSubmit.Enabled := False;
  end
  else
    ShowMessage('مشکلی در رزرو پیش آمد. لطفا دوباره امتحان کنید');
end;



//code for disabling sbtnRTSubmit on any change!
//procedure TfrmTableReservation.tpRETChange(Sender: TObject);
//begin
//  sbtnRTSubmitDisable;
//end;
//
//procedure TfrmTableReservation.tpRSTChange(Sender: TObject);
//begin
//  sbtnRTSubmitDisable;
//end;
//
//procedure TfrmTableReservation.dblbRTClick(Sender: TObject);
//begin
//  sbtnRTSubmitDisable;
//end;
//
//procedure TfrmTableReservation.dpRDChange(Sender: TObject);
//begin
//  sbtnRTSubmitDisable;
//end;

end.
