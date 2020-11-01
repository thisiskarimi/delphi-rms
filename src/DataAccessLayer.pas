unit DataAccessLayer;

interface

uses
  System.SysUtils, System.Classes, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Error, FireDAC.UI.Intf, FireDAC.Phys.Intf, FireDAC.Stan.Def,
  FireDAC.Stan.Pool, FireDAC.Stan.Async, FireDAC.Phys, FireDAC.VCLUI.Wait,
  FireDAC.Stan.Param, FireDAC.DatS, FireDAC.DApt.Intf, FireDAC.DApt, Data.DB,
  FireDAC.Comp.DataSet, FireDAC.Comp.Client, FireDAC.Phys.SQLite,
  FireDAC.Phys.SQLiteDef, FireDAC.Stan.ExprFuncs,
  FireDAC.Phys.SQLiteWrapper.Stat, Datasnap.DBClient;

type
  TDM = class(TDataModule)
    ConnectionMain: TFDConnection;
    tblCustomer: TFDTable;
    tblFood: TFDTable;
    DSFoods: TDataSource;
    DSCustomer: TDataSource;
    CDSOrderItem: TClientDataSet;
    CDSOrderItemfood_id: TIntegerField;
    CDSOrderItemquantity: TIntegerField;
    DSOrderItem: TDataSource;
    CDSOrderItemfood_name: TStringField;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  DM: TDM;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

{$R *.dfm}

end.
