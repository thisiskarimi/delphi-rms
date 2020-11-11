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
      'SharedCache=False'
      'LockingMode=Normal'
      'DriverID=SQLite')
    Connected = True
    LoginPrompt = False
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
      ReadOnly = True
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
    Active = True
    IndexFieldNames = 'id'
    Connection = ConnectionMain
    UpdateOptions.UpdateTableName = 'food'
    TableName = 'food'
    Left = 127
    Top = 96
    object tblFoodid: TFDAutoIncField
      FieldName = 'id'
      Origin = 'id'
      ProviderFlags = [pfInWhere, pfInKey]
      ReadOnly = True
    end
    object tblFoodcategory_id: TIntegerField
      FieldName = 'category_id'
      Origin = 'category_id'
      Required = True
    end
    object tblFoodname: TWideMemoField
      FieldName = 'name'
      Origin = 'name'
      BlobType = ftWideMemo
    end
    object tblFoodprice: TIntegerField
      FieldName = 'price'
      Origin = 'price'
    end
  end
  object DSFoods: TDataSource
    DataSet = tblFood
    Left = 128
    Top = 160
  end
  object DSCustomer: TDataSource
    DataSet = tblCustomer
    OnDataChange = DSCustomerDataChange
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
    Left = 152
    Top = 24
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
      ReadOnly = True
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
      ReadOnly = True
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
      OnGetText = tblCustomerPhoneNumberphone_numberGetText
      BlobType = ftWideMemo
    end
  end
  object DSCustomerAddress: TDataSource
    DataSet = FDQryCustomerAddress
    Left = 208
    Top = 160
  end
  object DSCustomerPhoneNumber: TDataSource
    DataSet = tblCustomerPhoneNumber
    Left = 344
    Top = 160
  end
  object tblOrder: TFDTable
    IndexFieldNames = 'id'
    Connection = ConnectionMain
    UpdateOptions.UpdateTableName = '"order"'
    TableName = '"order"'
    Left = 464
    Top = 96
    object tblOrderid: TFDAutoIncField
      FieldName = 'id'
      Origin = 'id'
      ProviderFlags = [pfInWhere, pfInKey]
      ReadOnly = True
    end
    object tblOrdercustomer_id: TIntegerField
      FieldName = 'customer_id'
      Origin = 'customer_id'
      Required = True
    end
    object tblOrdercreated_at: TWideMemoField
      FieldName = 'created_at'
      Origin = 'created_at'
      BlobType = ftWideMemo
    end
    object tblOrderdelivery: TIntegerField
      FieldName = 'delivery'
      Origin = 'delivery'
    end
    object tblOrderdelivery_id: TIntegerField
      FieldName = 'delivery_id'
      Origin = 'delivery_id'
    end
    object tblOrderreservation: TIntegerField
      FieldName = 'reservation'
      Origin = 'reservation'
    end
    object tblOrderreservation_id: TIntegerField
      FieldName = 'reservation_id'
      Origin = 'reservation_id'
    end
  end
  object DSOrder: TDataSource
    DataSet = tblOrder
    Left = 464
    Top = 160
  end
  object tblrTableReservation: TFDTable
    Active = True
    IndexFieldNames = 'id'
    Connection = ConnectionMain
    UpdateOptions.UpdateTableName = 'rtable_reservation'
    TableName = 'rtable_reservation'
    Left = 560
    Top = 96
    object tblrTableReservationid: TFDAutoIncField
      DisplayWidth = 12
      FieldName = 'id'
      Origin = 'id'
      ProviderFlags = [pfInWhere, pfInKey]
      ReadOnly = True
    end
    object tblrTableReservationtable_id: TIntegerField
      DisplayWidth = 12
      FieldName = 'table_id'
      Origin = 'table_id'
      Required = True
    end
    object tblrTableReservationcustomer_id: TIntegerField
      DisplayWidth = 11
      FieldName = 'customer_id'
      Origin = 'customer_id'
      Required = True
    end
    object tblrTableReservationreserve_date: TWideMemoField
      DisplayWidth = 13
      FieldName = 'reserve_date'
      Origin = 'reserve_date'
      OnGetText = tblrTableReservationreserve_dateGetText
      BlobType = ftWideMemo
    end
    object tblrTableReservationstart_time: TIntegerField
      DisplayWidth = 12
      FieldName = 'start_time'
      Origin = 'start_time'
    end
    object tblrTableReservationend_time: TIntegerField
      DisplayWidth = 12
      FieldName = 'end_time'
      Origin = 'end_time'
    end
  end
  object tblrTable: TFDTable
    Active = True
    IndexFieldNames = 'id'
    Connection = ConnectionMain
    UpdateOptions.UpdateTableName = 'rtable'
    TableName = 'rtable'
    Left = 648
    Top = 96
    object tblrTableid: TFDAutoIncField
      FieldName = 'id'
      Origin = 'id'
      ProviderFlags = [pfInWhere, pfInKey]
      ReadOnly = True
    end
    object tblrTablenumber: TIntegerField
      FieldName = 'number'
      Origin = 'number'
    end
    object tblrTablecapacity: TIntegerField
      FieldName = 'capacity'
      Origin = 'capacity'
    end
  end
  object DSrTableReservation: TDataSource
    DataSet = tblrTableReservation
    Left = 560
    Top = 160
  end
  object DSrTable: TDataSource
    DataSet = tblrTable
    Left = 648
    Top = 160
  end
  object tblFoodCategory: TFDTable
    IndexFieldNames = 'id'
    Connection = ConnectionMain
    UpdateOptions.UpdateTableName = 'food_category'
    TableName = 'food_category'
    Left = 128
    Top = 320
    object tblFoodCategoryid: TFDAutoIncField
      DisplayWidth = 12
      FieldName = 'id'
      Origin = 'id'
      ProviderFlags = [pfInWhere, pfInKey]
      ReadOnly = True
    end
    object tblFoodCategoryname: TWideMemoField
      DisplayWidth = 66
      FieldName = 'name'
      Origin = 'name'
      OnGetText = tblFoodCategorynameGetText
      BlobType = ftWideMemo
    end
  end
  object DSFoodCategory: TDataSource
    DataSet = tblFoodCategory
    Left = 128
    Top = 384
  end
  object FDQryCustomerAddress: TFDQuery
    Connection = ConnectionMain
    FormatOptions.AssignedValues = [fvMaxStringSize]
    FormatOptions.MaxStringSize = 3276700
    SQL.Strings = (
      
        'select title,full_text from address where customer_id = :custome' +
        'r_id;')
    Left = 232
    Top = 240
    ParamData = <
      item
        Name = 'CUSTOMER_ID'
        ParamType = ptInput
      end>
  end
end
