object DM: TDM
  OldCreateOrder = False
  Height = 523
  Width = 698
  object CDSOrderItem: TClientDataSet
    PersistDataPacket.Data = {
      4C0000009619E0BD0100000018000000030000000000030000004C00086F7264
      65725F6964040001000000000007666F6F645F69640400010000000000087175
      616E7469747904000100000000000000}
    Active = True
    Aggregates = <>
    Params = <>
    Left = 40
    Top = 238
    object CDSOrderItemfood_id: TIntegerField
      FieldName = 'food_id'
    end
    object CDSOrderItemfood_name: TStringField
      FieldKind = fkLookup
      FieldName = 'food_name'
      LookupDataSet = tblFood
      LookupKeyFields = 'id'
      LookupResultField = 'name'
      KeyFields = 'food_id'
      Lookup = True
    end
    object CDSOrderItemquantity: TIntegerField
      FieldName = 'quantity'
    end
  end
  object ConnectionMain: TFDConnection
    Params.Strings = (
      'Database=C:\Users\Mojtaba\Desktop\delphi-rms\db.sqlite3'
      'DriverID=SQLite')
    Connected = True
    Left = 40
    Top = 24
  end
  object tblCustomer: TFDTable
    Active = True
    IndexFieldNames = 'id'
    Connection = ConnectionMain
    UpdateOptions.UpdateTableName = 'customer'
    TableName = 'customer'
    Left = 40
    Top = 96
    object tblCustomerid: TFDAutoIncField
      DisplayWidth = 12
      FieldName = 'id'
      Origin = 'id'
      ProviderFlags = [pfInWhere, pfInKey]
    end
    object tblCustomersubscription_code: TIntegerField
      DisplayWidth = 17
      FieldName = 'subscription_code'
      Origin = 'subscription_code'
      Required = True
    end
    object tblCustomerfull_name: TWideMemoField
      DisplayWidth = 32
      FieldName = 'full_name'
      Origin = 'full_name'
      OnGetText = tblCustomerfull_nameGetText
      BlobType = ftWideMemo
    end
    object tblCustomercreated_at: TWideMemoField
      DisplayWidth = 45
      FieldName = 'created_at'
      Origin = 'created_at'
      OnGetText = tblCustomercreated_atGetText
      BlobType = ftWideMemo
    end
  end
  object tblFood: TFDTable
    IndexFieldNames = 'id'
    Connection = ConnectionMain
    UpdateOptions.UpdateTableName = 'food'
    TableName = 'food'
    Left = 127
    Top = 96
  end
  object DSFoods: TDataSource
    DataSet = tblFood
    Left = 128
    Top = 160
  end
  object DSCustomer: TDataSource
    DataSet = tblCustomer
    Left = 40
    Top = 152
  end
  object DSOrderItem: TDataSource
    DataSet = CDSOrderItem
    Left = 128
    Top = 240
  end
  object FDGUIxWaitCursor1: TFDGUIxWaitCursor
    Provider = 'Forms'
    Left = 120
    Top = 32
  end
  object tblCustomerAddress: TFDTable
    Active = True
    IndexFieldNames = 'customer_id'
    MasterSource = DSCustomer
    MasterFields = 'id'
    Connection = ConnectionMain
    UpdateOptions.UpdateTableName = 'address'
    TableName = 'address'
    Left = 216
    Top = 96
    object tblCustomerAddressid: TFDAutoIncField
      FieldName = 'id'
      Origin = 'id'
      ProviderFlags = [pfInWhere, pfInKey]
    end
    object tblCustomerAddresscustomer_id: TIntegerField
      FieldName = 'customer_id'
      Origin = 'customer_id'
      Required = True
    end
    object tblCustomerAddresstitle: TWideMemoField
      FieldName = 'title'
      Origin = 'title'
      OnGetText = tblCustomerAddresstitleGetText
      BlobType = ftWideMemo
    end
    object tblCustomerAddressfull_text: TWideMemoField
      FieldName = 'full_text'
      Origin = 'full_text'
      OnGetText = tblCustomerAddressfull_textGetText
      BlobType = ftWideMemo
    end
  end
  object tblCustomerPhoneNumber: TFDTable
    Active = True
    IndexFieldNames = 'customer_id'
    MasterSource = DSCustomer
    MasterFields = 'id'
    Connection = ConnectionMain
    UpdateOptions.UpdateTableName = 'phone_number'
    TableName = 'phone_number'
    Left = 344
    Top = 96
    object tblCustomerPhoneNumberid: TFDAutoIncField
      FieldName = 'id'
      Origin = 'id'
      ProviderFlags = [pfInWhere, pfInKey]
    end
    object tblCustomerPhoneNumbercustomer_id: TIntegerField
      FieldName = 'customer_id'
      Origin = 'customer_id'
      Required = True
    end
    object tblCustomerPhoneNumbertitle: TWideMemoField
      FieldName = 'title'
      Origin = 'title'
      BlobType = ftWideMemo
    end
    object tblCustomerPhoneNumberphone_number: TWideMemoField
      FieldName = 'phone_number'
      Origin = 'phone_number'
      BlobType = ftWideMemo
    end
  end
  object DSCustomerAddress: TDataSource
    DataSet = tblCustomerAddress
    Left = 208
    Top = 160
  end
  object DSCustomerPhoneNumber: TDataSource
    DataSet = tblCustomerPhoneNumber
    Left = 344
    Top = 160
  end
end
