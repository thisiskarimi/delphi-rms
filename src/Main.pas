unit Main;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ComCtrls, Vcl.ExtCtrls, Vcl.StdCtrls;

type
  TfrmMain = class(TForm)
    StatusBarFooter: TStatusBar;
    GroupBox1: TGroupBox;
    procedure FormCreate(Sender: TObject);
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
var width:integer;
var i: integer;
begin
  for I := 0 to StatusBarFooter.Panels.Count-1 do
  begin
    StatusBarFooter.Panels[i].Width :=   Monitor.Width div 4;
  end;
end;

end.
