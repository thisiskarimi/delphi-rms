unit Main;

interface

uses
  AddCustomer, DataAccessLayer, Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ComCtrls, Vcl.ExtCtrls,
  Vcl.StdCtrls, Data.DB, Vcl.Grids, Vcl.DBGrids, Vcl.DBCtrls,
  Vcl.Imaging.pngimage;

type
  TfrmMain = class(TForm)
    StatusBarFooter: TStatusBar;
    GBLeftMenu: TGroupBox;
    imgAddCustomer: TImage;
    procedure status_bar_panels_divider;
    procedure FormCreate(Sender: TObject);
    procedure imgAddCustomerClick(Sender: TObject);
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
    StatusBarFooter.Panels[i].width := Monitor.width div StatusBarFooter.Panels.Count;
  end;
end;

end.
