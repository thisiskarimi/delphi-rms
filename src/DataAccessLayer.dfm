object DM: TDM
  OldCreateOrder = False
  Height = 372
  Width = 500
  object ConnectionMain: TFDConnection
    Params.Strings = (
      'Database=C:\Users\Mojtaba\Desktop\delphi-rms\db.sqlite3'
      'DriverID=SQLite')
    Connected = True
    Left = 40
    Top = 24
  end
  object tblCustomer: TFDTable
    IndexFieldNames = 'id'
    Connection = ConnectionMain
    UpdateOptions.UpdateTableName = 'customer'
    TableName = 'customer'
    Left = 48
    Top = 96
  end
  object tblFood: TFDTable
    Active = True
    IndexFieldNames = 'id'
    Connection = ConnectionMain
    UpdateOptions.UpdateTableName = 'food'
    TableName = 'food'
    Left = 344
    Top = 96
  end
  object DSFoods: TDataSource
    DataSet = tblFood
    Left = 344
    Top = 168
  end
  object DSCustomer: TDataSource
    DataSet = tblCustomer
    Left = 48
    Top = 176
  end
  object CDSOrderItem: TClientDataSet
    PersistDataPacket.Data = {
      4C0000009619E0BD0100000018000000030000000000030000004C00086F7264
      65725F6964040001000000000007666F6F645F69640400010000000000087175
      616E7469747904000100000000000000}
    Active = True
    Aggregates = <>
    Params = <>
    Left = 48
    Top = 240
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
  object DSOrderItem: TDataSource
    DataSet = CDSOrderItem
    Left = 136
    Top = 176
  end
end
