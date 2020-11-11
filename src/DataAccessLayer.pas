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
    tblOrder: TFDTable;
    tblOrderid: TFDAutoIncField;
    tblOrdercustomer_id: TIntegerField;
    tblOrdercreated_at: TWideMemoField;
    tblOrderdelivery: TIntegerField;
    tblOrderdelivery_id: TIntegerField;
    tblOrderreservation: TIntegerField;
    tblOrderreservation_id: TIntegerField;
    DSOrder: TDataSource;
    tblrTableReservation: TFDTable;
    tblrTable: TFDTable;
    DSrTableReservation: TDataSource;
    DSrTable: TDataSource;
    tblFoodid: TFDAutoIncField;
    tblFoodcategory_id: TIntegerField;
    tblFoodname: TWideMemoField;
    tblFoodprice: TIntegerField;
    tblFoodCategory: TFDTable;
    tblFoodCategoryid: TFDAutoIncField;
    tblFoodCategoryname: TWideMemoField;
    DSFoodCategory: TDataSource;
    tblrTableid: TFDAutoIncField;
    tblrTablenumber: TIntegerField;
    tblrTablecapacity: TIntegerField;
    tblrTableReservationid: TFDAutoIncField;
    tblrTableReservationtable_id: TIntegerField;
    tblrTableReservationcustomer_id: TIntegerField;
    tblrTableReservationreserve_date: TWideMemoField;
    tblrTableReservationstart_time: TIntegerField;
    tblrTableReservationend_time: TIntegerField;
    FDqry: TFDQuery;
    procedure tblCustomerAddressfull_textGetText(Sender: TField;
      var Text: string; DisplayText: Boolean);
    procedure tblCustomerAddresstitleGetText(Sender: TField; var Text: string;
      DisplayText: Boolean);
    procedure tblCustomerfull_nameGetText(Sender: TField; var Text: string;
      DisplayText: Boolean);
    procedure tblCustomercreated_atGetText(Sender: TField; var Text: string;
      DisplayText: Boolean);
    procedure tblFoodCategorynameGetText(Sender: TField; var Text: string;
      DisplayText: Boolean);
    procedure tblrTableReservationreserve_dateGetText(Sender: TField;
      var Text: string; DisplayText: Boolean);
    procedure tblCustomerPhoneNumberphone_numberGetText(Sender: TField;
      var Text: string; DisplayText: Boolean);
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

procedure TDM.tblCustomerPhoneNumberphone_numberGetText(Sender: TField;
  var Text: string; DisplayText: Boolean);
begin
  Text := Sender.AsString;
end;

procedure TDM.tblFoodCategorynameGetText(Sender: TField; var Text: string;
  DisplayText: Boolean);
begin
  Text := Sender.AsString;
end;

procedure TDM.tblrTableReservationreserve_dateGetText(Sender: TField;
  var Text: string; DisplayText: Boolean);
begin
  Text := Sender.AsString;
end;

end.
