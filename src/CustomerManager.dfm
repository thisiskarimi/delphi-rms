object frmCustomerManager: TfrmCustomerManager
  Left = 0
  Top = 0
  BiDiMode = bdRightToLeft
  BorderIcons = [biSystemMenu]
  Caption = #1605#1583#1740#1585#1740#1578' '#1605#1588#1578#1585#1740
  ClientHeight = 461
  ClientWidth = 734
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -10
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  ParentBiDiMode = False
  Position = poScreenCenter
  PixelsPerInch = 96
  TextHeight = 12
  object DBNCustomerAddress: TDBNavigator
    Left = 9
    Top = 200
    Width = 370
    Height = 40
    Margins.Left = 4
    Margins.Top = 4
    Margins.Right = 4
    Margins.Bottom = 4
    DataSource = DM.DSCustomerAddress
    TabOrder = 0
  end
  object DBGrid1: TDBGrid
    Left = 9
    Top = 248
    Width = 368
    Height = 197
    Margins.Left = 4
    Margins.Top = 4
    Margins.Right = 4
    Margins.Bottom = 4
    DataSource = DM.DSCustomerAddress
    TabOrder = 1
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -10
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
    Columns = <
      item
        Expanded = False
        FieldName = 'title'
        Title.Caption = #1593#1606#1608#1575#1606
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'full_text'
        Title.Alignment = taCenter
        Title.Caption = #1570#1583#1585#1587
        Width = 275
        Visible = True
      end>
  end
  object DBGrid2: TDBGrid
    Left = 391
    Top = 64
    Width = 334
    Height = 381
    Margins.Left = 4
    Margins.Top = 4
    Margins.Right = 4
    Margins.Bottom = 4
    DataSource = DM.DSCustomer
    TabOrder = 2
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -10
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
    Columns = <
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'subscription_code'
        Title.Alignment = taCenter
        Title.Caption = #1575#1588#1578#1585#1575#1705
        Width = 77
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'full_name'
        Title.Alignment = taCenter
        Title.Caption = #1606#1575#1605
        Width = 217
        Visible = True
      end>
  end
  object DBNCustomerPhoneNumber: TDBNavigator
    Left = 9
    Top = 16
    Width = 370
    Height = 41
    Margins.Left = 4
    Margins.Top = 4
    Margins.Right = 4
    Margins.Bottom = 4
    DataSource = DM.DSCustomerPhoneNumber
    TabOrder = 3
  end
  object DBGrid3: TDBGrid
    Left = 8
    Top = 64
    Width = 368
    Height = 129
    DataSource = DM.DSCustomerPhoneNumber
    TabOrder = 4
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -10
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
    Columns = <
      item
        Expanded = False
        FieldName = 'title'
        Title.Alignment = taCenter
        Title.Caption = #1593#1606#1608#1575#1606
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'phone_number'
        Title.Alignment = taCenter
        Title.Caption = #1588#1605#1575#1585#1607' '#1578#1604#1601#1606
        Width = 178
        Visible = True
      end>
  end
  object DBNCustomer: TDBNavigator
    Left = 391
    Top = 16
    Width = 330
    Height = 41
    DataSource = DM.DSCustomer
    TabOrder = 5
  end
end
