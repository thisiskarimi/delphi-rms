unit DataAccessLayer;

interface

uses
  System.SysUtils, System.Classes, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Error, FireDAC.UI.Intf, FireDAC.Phys.Intf, FireDAC.Stan.Def,
  FireDAC.Stan.Pool, FireDAC.Stan.Async, FireDAC.Phys, FireDAC.Phys.SQLite,
  FireDAC.Phys.SQLiteDef, FireDAC.Stan.ExprFuncs, FireDAC.Stan.Param,
  FireDAC.DatS, FireDAC.DApt.Intf, FireDAC.DApt, FireDAC.Comp.DataSet,
  FireDAC.Comp.Client, Data.DB, Datasnap.DBClient, FireDAC.VCLUI.Wait,
  FireDAC.Comp.UI;

type
  TDM = class(TDataModule)
    CDSOrderItem: TClientDataSet;
    CDSOrderItemfood_id: TIntegerField;
    CDSOrderItemfood_name: TStringField;
    CDSOrderItemquantity: TIntegerField;
    ConnectionMain: TFDConnection;
    tblCustomer: TFDTable;
    tblFood: TFDTable;
    DSFoods: TDataSource;
    DSCustomer: TDataSource;
    DSOrderItem: TDataSource;
    FDGUIxWaitCursor1: TFDGUIxWaitCursor;
    tblCustomerid: TFDAutoIncField;
    tblCustomersubscription_code: TIntegerField;
    tblCustomerfull_name: TWideMemoField;
    tblCustomercreated_at: TWideMemoField;
    tblCustomerAddress: TFDTable;
    tblCustomerPhoneNumber: TFDTable;
    DSCustomerAddress: TDataSource;
    tblCustomerAddressid: TFDAutoIncField;
    tblCustomerAddresscustomer_id: TIntegerField;
    tblCustomerAddresstitle: TWideMemoField;
    tblCustomerAddressfull_text: TWideMemoField;
    DSCustomerPhoneNumber: TDataSource;
    tblCustomerPhoneNumberid: TFDAutoIncField;
    tblCustomerPhoneNumbercustomer_id: TIntegerField;
    tblCustomerPhoneNumbertitle: TWideMemoField;
    tblCustomerPhoneNumberphone_number: TWideMemoField;
    procedure tblCustomerAddressfull_textGetText(Sender: TField;
      var Text: string; DisplayText: Boolean);
    procedure tblCustomerAddresstitleGetText(Sender: TField; var Text: string;
      DisplayText: Boolean);
    procedure tblCustomerfull_nameGetText(Sender: TField; var Text: string;
      DisplayText: Boolean);
    procedure tblCustomercreated_atGetText(Sender: TField; var Text: string;
      DisplayText: Boolean);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  DM: TDM;

implementation

{ %CLASSGROUP 'Vcl.Controls.TControl' }

{$R *.dfm}

procedure TDM.tblCustomerAddressfull_textGetText(Sender: TField;
  var Text: string; DisplayText: Boolean);
begin
  Text := Sender.AsString;
end;

procedure TDM.tblCustomerAddresstitleGetText(Sender: TField; var Text: string;
  DisplayText: Boolean);
begin
  Text := Sender.AsString;
end;

procedure TDM.tblCustomercreated_atGetText(Sender: TField; var Text: string;
  DisplayText: Boolean);
begin
  Text := Sender.AsString;
end;

procedure TDM.tblCustomerfull_nameGetText(Sender: TField; var Text: string;
  DisplayText: Boolean);
begin
  Text := Sender.AsString;
end;

end.
