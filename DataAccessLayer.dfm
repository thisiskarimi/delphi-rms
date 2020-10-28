object DM: TDM
  OldCreateOrder = False
  Height = 372
  Width = 500
  object ConnectionMain: TFDConnection
    Left = 40
    Top = 24
  end
  object tblCustomer: TFDTable
    Connection = ConnectionMain
    Left = 48
    Top = 96
  end
  object tblOrderMaster: TFDTable
    Connection = ConnectionMain
    Left = 152
    Top = 96
  end
  object tblOrderDetail: TFDTable
    Connection = ConnectionMain
    Left = 248
    Top = 96
  end
  object tblFood: TFDTable
    Connection = ConnectionMain
    Left = 344
    Top = 96
  end
end
