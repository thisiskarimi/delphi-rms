unit TableReservation;

interface

uses
  DateUtils, DataAccessLayer, Winapi.Windows, Winapi.Messages, System.SysUtils,
  System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.DBCtrls, Vcl.ComCtrls, Vcl.StdCtrls;

type
  TfrmTableReservation = class(TForm)
    DBLookupComboBox1: TDBLookupComboBox;
    DBLookupListBox1: TDBLookupListBox;
    DPDaterTableReservation: TDateTimePicker;
    TPStartTimerTableReservation: TDateTimePicker;
    TPEndTimerTableReservation: TDateTimePicker;
    btnSubmitrTableReservation: TButton;
    procedure btnSubmitrTableReservationClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmTableReservation: TfrmTableReservation;

implementation

{$R *.dfm}

procedure TfrmTableReservation.btnSubmitrTableReservationClick(Sender: TObject);
var
  i: integer;
begin
  i := MinutesBetween(TPEndTimerTableReservation.Time,
    TPStartTimerTableReservation.Time);
  if TimeToStr(TPStartTimerTableReservation.Time) >
    TimeToStr(TPEndTimerTableReservation.Time) then
    ShowMessage('زمان شروع باید قبل تر باشد');
  if i < 30 then
    ShowMessage('حداقل زمان رزرو 30 دقیقه میباشد');

end;

end.
