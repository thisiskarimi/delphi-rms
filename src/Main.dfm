object frmMain: TfrmMain
  Left = 0
  Top = 0
  BiDiMode = bdRightToLeft
  BorderIcons = [biSystemMenu, biMinimize]
  BorderStyle = bsSingle
  Caption = #1589#1601#1581#1607' '#1575#1589#1604#1740
  ClientHeight = 589
  ClientWidth = 722
  Color = clWindow
  CustomTitleBar.CaptionAlignment = taCenter
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  ParentBiDiMode = False
  Position = poScreenCenter
  WindowState = wsMaximized
  StyleElements = [seFont, seClient]
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object StatusBarFooter: TStatusBar
    Left = 0
    Top = 570
    Width = 722
    Height = 19
    Color = clRed
    Panels = <
      item
        Width = 50
      end
      item
        Width = 50
      end
      item
        Width = 50
      end
      item
        Width = 50
      end>
  end
  object GBLeftMenu: TGroupBox
    Left = 0
    Top = 0
    Width = 113
    Height = 570
    Align = alLeft
    Color = 3937500
    ParentBackground = False
    ParentColor = False
    TabOrder = 1
  end
  object DBGFoods: TDBGrid
    Left = 394
    Top = 432
    Width = 320
    Height = 120
    DataSource = DM.DSFoods
    TabOrder = 2
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
    Columns = <
      item
        Expanded = False
        FieldName = 'name'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'price'
        Visible = True
      end>
  end
  object DBNavigator1: TDBNavigator
    Left = 394
    Top = 392
    Width = 240
    Height = 25
    DataSource = DM.DSFoods
    TabOrder = 3
  end
  object DBLCBOrderCustomer: TDBLookupComboBox
    Left = 440
    Top = 56
    Width = 145
    Height = 21
    DataField = 'full_name'
    DataSource = DM.DSCustomer
    TabOrder = 4
  end
end
