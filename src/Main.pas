unit Main;

interface

uses
  functions, AddCustomer, DataAccessLayer, Winapi.Windows, Winapi.Messages,
  System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ComCtrls, Vcl.ExtCtrls,
  Vcl.StdCtrls, Data.DB, Vcl.Grids, Vcl.DBGrids, Vcl.DBCtrls,
  Vcl.Imaging.pngimage, Vcl.Menus;

type
  TfrmMain = class(TForm)
    StatusBarFooter: TStatusBar;
    GBLeftMenu: TGroupBox;
    imgAddCustomer: TImage;
    TimerClock: TTimer;
    GBNewOrder: TGroupBox;
    imgTableReservation: TImage;
    imgSetting: TImage;
    DBLCBOrderCustomer: TDBLookupComboBox;
    DBGOrderItems: TDBGrid;
    procedure status_bar_panels_divider;
    procedure FormCreate(Sender: TObject);
    procedure imgAddCustomerClick(Sender: TObject);
    procedure TimerClockTimer(Sender: TObject);
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
begin
  status_bar_panels_divider;
  StatusBarFooter.Panels[1].Text := 'امروز: ' + day_of_week + ' ' +
    DateToStr(Now);
  GBLeftMenu.Width := Monitor.Width div 5;
  GBNewOrder.Width := Monitor.Width - GBLeftMenu.Width;
  imgSetting.Top := GBLeftMenu.height - imgSetting.height;

  //for fixing width of DBGOrderItem columns
  DBGOrderItems.Width := GBNewOrder.Width-10;
  DBGOrderItems.Columns[0].Width := DBGOrderItems.Width div 4 - 35;
  DBGOrderItems.Columns[1].Width := DBGOrderItems.Width div 2;
  DBGOrderItems.Columns[2].Width := DBGOrderItems.Width div 4;
end;

procedure TfrmMain.imgAddCustomerClick(Sender: TObject);
begin
  Application.CreateForm(TfrmAddCustomer, frmAddCustomer);
  frmAddCustomer.ShowModal;
  frmAddCustomer.Destroy;
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
