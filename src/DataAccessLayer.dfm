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
    UpdateOptions.UpdateTableName = 'Customers'
    TableName = 'Customers'
    Left = 48
    Top = 96
  end
  object tblOrderMaster: TFDTable
    Connection = ConnectionMain
    UpdateOptions.UpdateTableName = 'Orders'
    TableName = 'Orders'
    Left = 152
    Top = 96
  end
  object tblOrderDetail: TFDTable
    Connection = ConnectionMain
    Left = 248
    Top = 96
  end
  object tblFood: TFDTable
    Active = True
    IndexFieldNames = 'id'
    Connection = ConnectionMain
    UpdateOptions.UpdateTableName = 'Foods'
    TableName = 'Foods'
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
end
