program delphi_rms;

uses
  Vcl.Forms,
  Main in 'Main.pas' {frmMain},
  functions in 'functions.pas',
  Settings in 'Settings.pas' {frmSettings},
  CustomerManager in 'CustomerManager.pas' {frmCustomerManager},
  DataAccessLayer in 'DataAccessLayer.pas' {DM: TDataModule},
  TableReservation in 'TableReservation.pas' {frmTableReservation};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TDM, DM);
  Application.CreateForm(TfrmMain, frmMain);
  Application.Run;
end.
