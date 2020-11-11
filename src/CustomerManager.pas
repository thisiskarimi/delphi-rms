unit CustomerManager;

interface

uses
  DataAccessLayer, Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Vcl.Grids, Vcl.DBGrids,
  Vcl.ExtCtrls, Vcl.DBCtrls;

type
  TfrmCustomerManager = class(TForm)
    DBNCustomerAddress: TDBNavigator;
    DBGrid1: TDBGrid;
    DBGrid2: TDBGrid;
    DBNCustomerPhoneNumber: TDBNavigator;
    DBGrid3: TDBGrid;
    DBNCustomer: TDBNavigator;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmCustomerManager: TfrmCustomerManager;

implementation

{$R *.dfm}

end.
