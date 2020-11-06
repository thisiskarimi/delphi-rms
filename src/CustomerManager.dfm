object frmCustomerManager: TfrmCustomerManager
  Left = 0
  Top = 0
  BiDiMode = bdRightToLeft
  BorderIcons = [biSystemMenu]
  Caption = #1605#1583#1740#1585#1740#1578' '#1605#1588#1578#1585#1740
  ClientHeight = 310
  ClientWidth = 664
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
  object DBNavigator1: TDBNavigator
    Left = 9
    Top = 45
    Width = 200
    Height = 24
    Margins.Left = 4
    Margins.Top = 4
    Margins.Right = 4
    Margins.Bottom = 4
    TabOrder = 0
  end
  object DBGrid1: TDBGrid
    Left = 9
    Top = 168
    Width = 307
    Height = 133
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
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'full_text'
        Width = 210
        Visible = True
      end>
  end
  object DBGrid2: TDBGrid
    Left = 321
    Top = 72
    Width = 334
    Height = 229
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
  end
  object DBNavigator2: TDBNavigator
    Left = 9
    Top = 9
    Width = 200
    Height = 28
    Margins.Left = 4
    Margins.Top = 4
    Margins.Right = 4
    Margins.Bottom = 4
    DataSource = DM.DSCustomer
    TabOrder = 3
  end
  object DBGrid3: TDBGrid
    Left = 9
    Top = 72
    Width = 308
    Height = 89
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
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'phone_number'
        Visible = True
      end>
  end
end
