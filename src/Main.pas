unit Main;

interface

uses
  DataAccessLayer, TableReservation, Settings, CustomerManager, functions, Winapi.Windows,
  Winapi.Messages, System.SysUtils, System.Variants, System.Classes,
  Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Vcl.ExtCtrls, Vcl.ComCtrls,
  Vcl.Grids, Vcl.DBGrids, Vcl.DBCtrls, Vcl.Imaging.pngimage, Vcl.StdCtrls;

type
  TfrmMain = class(TForm)
    GBLeftMenu: TGroupBox;
    imgAddCustomer: TImage;
    imgTableReservation: TImage;
    imgSetting: TImage;
    GBNewOrder: TGroupBox;
    DBGOrderItems: TDBGrid;
    StatusBarFooter: TStatusBar;
    TimerClock: TTimer;
    DBComboBox1: TDBComboBox;
    DBLookupComboBox1: TDBLookupComboBox;
    procedure status_bar_panels_divider;
    procedure FormCreate(Sender: TObject);
    procedure imgAddCustomerClick(Sender: TObject);
    procedure TimerClockTimer(Sender: TObject);
    procedure imgSettingClick(Sender: TObject);
    procedure imgTableReservationClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmMain: TfrmMain;

implementation

{$R *.dfm}

procedure TfrmMain.FormCreate(Sender: TObject);
var
  i: integer;
begin
  status_bar_panels_divider;
  StatusBarFooter.Panels[1].Text := 'امروز: ' + day_of_week + ' ' +
    DateToStr(Now);
  GBLeftMenu.Width := Monitor.Width div 5;
  GBNewOrder.Width := Monitor.Width - GBLeftMenu.Width;
  imgSetting.Top := GBLeftMenu.height - imgSetting.height;

  // for fixing width of DBGOrderItem columns
  DBGOrderItems.Width := GBNewOrder.Width - 10;
  DBGOrderItems.Columns[0].Width := DBGOrderItems.Width div 4 - 35;
  DBGOrderItems.Columns[1].Width := DBGOrderItems.Width div 2;
  DBGOrderItems.Columns[2].Width := DBGOrderItems.Width div 4;

  while not DM.tblCustomer.Eof do
  begin
    DBComboBox1.Items.Add(DM.tblCustomer['full_name']);
    DM.tblCustomer.Next;
  end;


end;

procedure TfrmMain.imgAddCustomerClick(Sender: TObject);
begin
  Application.CreateForm(TfrmCustomerManager, frmCustomerManager);
  frmCustomerManager.ShowModal;
  frmCustomerManager.Destroy;
end;

procedure TfrmMain.imgSettingClick(Sender: TObject);
begin
  Application.CreateForm(TfrmSettings, frmSettings);
  frmSettings.ShowModal;
  frmSettings.Destroy;
end;

procedure TfrmMain.imgTableReservationClick(Sender: TObject);
begin
  Application.CreateForm(TfrmTableReservation, frmTableReservation);
  frmTableReservation.ShowModal;
  frmTableReservation.Destroy;
end;

procedure TfrmMain.status_bar_panels_divider;
var
  i: integer;
begin
  for i := 0 to StatusBarFooter.Panels.Count - 1 do
  begin
    StatusBarFooter.Panels[i].Width :=
      Monitor.Width div StatusBarFooter.Panels.Count;
  end;
end;

procedure TfrmMain.TimerClockTimer(Sender: TObject);
begin
  StatusBarFooter.Panels[0].Text := TimeToStr(Now);
end;

end.
