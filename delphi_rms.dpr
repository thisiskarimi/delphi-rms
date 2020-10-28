program delphi_rms;

uses
  Vcl.Forms,
  Main in 'Main.pas' {frmMain},
  DataAccessLayer in 'DataAccessLayer.pas' {DM: TDataModule};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TfrmMain, frmMain);
  Application.CreateForm(TDM, DM);
  Application.Run;
end.
