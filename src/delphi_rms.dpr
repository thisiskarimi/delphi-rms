program delphi_rms;

uses
  Vcl.Forms,
  Main in 'Main.pas' {frmMain},
  DataAccessLayer in 'DataAccessLayer.pas' {DM: TDataModule},
  AddCustomer in 'AddCustomer.pas' {frmAddCustomer},
  functions in 'functions.pas',
  Settings in 'Settings.pas' {frmSettings};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TfrmMain, frmMain);
  Application.CreateForm(TDM, DM);
  Application.CreateForm(TfrmSettings, frmSettings);
  Application.Run;
end.
