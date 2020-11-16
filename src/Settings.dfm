object frmSettings: TfrmSettings
  Left = 0
  Top = 0
  BiDiMode = bdRightToLeft
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = #1605#1583#1740#1585#1740#1578' '#1606#1585#1605' '#1575#1601#1586#1575#1585
  ClientHeight = 428
  ClientWidth = 602
  Color = clHighlightText
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  ParentBiDiMode = False
  Position = poScreenCenter
  PixelsPerInch = 96
  TextHeight = 13
  object PageControl: TPageControl
    Left = 0
    Top = 0
    Width = 600
    Height = 450
    ActivePage = غذاها
    BiDiMode = bdRightToLeft
    MultiLine = True
    ParentBiDiMode = False
    TabOrder = 0
    object غذاها: TTabSheet
      Caption = #1594#1584#1575#1607#1575
      object DBGrid2: TDBGrid
        Left = 3
        Top = 112
        Width = 586
        Height = 120
        DataSource = DM.DSFoods
        TabOrder = 0
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'Tahoma'
        TitleFont.Style = []
        Columns = <
          item
            Expanded = False
            FieldName = 'category_id'
            Width = 107
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'name'
            Width = 154
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'price'
            Width = 213
            Visible = True
          end>
      end
      object DBGrid3: TDBGrid
        Left = 3
        Top = 288
        Width = 586
        Height = 104
        DataSource = DM.DSFoodCategory
        TabOrder = 1
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'Tahoma'
        TitleFont.Style = []
      end
    end
    object میزها: TTabSheet
      Caption = #1605#1740#1586#1607#1575
      ImageIndex = 1
      object DBGrid1: TDBGrid
        Left = 3
        Top = 3
        Width = 240
        Height = 359
        DataSource = DM.DSrTable
        TabOrder = 0
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'Tahoma'
        TitleFont.Style = []
        Columns = <
          item
            Alignment = taCenter
            Expanded = False
            FieldName = 'number'
            Title.Alignment = taCenter
            Title.Caption = #1588#1605#1575#1585#1607' '#1605#1740#1586
            Width = 90
            Visible = True
          end
          item
            Alignment = taCenter
            Expanded = False
            FieldName = 'capacity'
            Title.Alignment = taCenter
            Title.Caption = #1592#1585#1601#1740#1578
            Width = 113
            Visible = True
          end>
      end
      object DBNavigator1: TDBNavigator
        Left = 3
        Top = 368
        Width = 240
        Height = 25
        DataSource = DM.DSrTable
        TabOrder = 1
      end
    end
    object کارمندان: TTabSheet
      Caption = #1705#1575#1585#1605#1606#1583#1575#1606
      ImageIndex = 2
    end
  end
end
