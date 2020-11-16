object frmTableReservation: TfrmTableReservation
  Left = 0
  Top = 0
  BiDiMode = bdRightToLeft
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = #1585#1586#1585#1608' '#1605#1740#1586
  ClientHeight = 421
  ClientWidth = 494
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  ParentBiDiMode = False
  Position = poScreenCenter
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object PageControl1: TPageControl
    Left = 0
    Top = 8
    Width = 489
    Height = 409
    ActivePage = tsReserved
    TabOrder = 0
    object tsReserve: TTabSheet
      Caption = #1585#1586#1585#1608
      ExplicitLeft = 8
      object lblRT: TLabel
        Left = 31
        Top = 22
        Width = 83
        Height = 32
        Caption = #1575#1606#1578#1582#1575#1576' '#1605#1740#1586
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -20
        Font.Name = 'Vazir'
        Font.Style = []
        ParentFont = False
      end
      object lblRET: TLabel
        Left = 165
        Top = 151
        Width = 29
        Height = 25
        Caption = #1662#1575#1740#1575#1606
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Vazir'
        Font.Style = []
        ParentFont = False
      end
      object lblRST: TLabel
        Left = 295
        Top = 151
        Width = 36
        Height = 25
        Caption = #1588#1585#1608#1593
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Vazir'
        Font.Style = []
        ParentFont = False
      end
      object lblRTi: TLabel
        Left = 407
        Top = 191
        Width = 54
        Height = 32
        Caption = #1587#1600#1575#1593#1600#1578
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -20
        Font.Name = 'Vazir'
        Font.Style = []
        ParentFont = False
      end
      object lblRC: TLabel
        Left = 407
        Top = 33
        Width = 55
        Height = 32
        Caption = #1605#1588#1578#1585#1740
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -20
        Font.Name = 'Vazir'
        Font.Style = []
        ParentFont = False
      end
      object lblRD: TLabel
        Left = 407
        Top = 91
        Width = 52
        Height = 32
        Caption = #1578#1600#1600#1575#1585#1740#1600#1600#1582
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -20
        Font.Name = 'Vazir'
        Font.Style = []
        ParentFont = False
      end
      object sbtnRTSubmit: TSpeedButton
        Left = 139
        Top = 312
        Width = 223
        Height = 50
        Caption = #1578#1575#1740#1740#1583
        Enabled = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Tahoma'
        Font.Style = []
        Glyph.Data = {
          36030000424D3603000000000000360000002800000010000000100000000100
          18000000000000030000C40E0000C40E00000000000000000000C1E2BF5DB559
          50AF4C50AF4C50AF4C50AF4C50AF4C50AF4C50AF4C50AF4C50AF4C50AF4C50AF
          4C50AF4C5DB559C1E3C05CB55950AF4C50AF4C50AF4C50AF4C50AF4C50AF4C50
          AF4C50AF4C50AF4C50AF4C50AF4C50AF4C50AF4C50AF4C5DB55950AF4C50AF4C
          50AF4C50AF4C50AF4C50AF4C50AF4C50AF4C50AF4C50AF4C50AF4C50AF4C50AF
          4C50AF4C50AF4C50AF4C50AF4C50AF4C50AF4C50AF4C50AF4C50AF4C50AF4C50
          AF4C50AF4C50AF4C50AF4C50AF4C50AF4C50AF4C50AF4C50AF4C50AF4C50AF4C
          50AF4C50AF4C50AF4C50AF4C50AF4C50AF4C50AF4C50AF4C50AF4C50AF4C50AF
          4C50AF4C50AF4C50AF4C50AF4C50AF4C50AF4C50AF4C50AF4C50AF4C8CCA8AC4
          E2C25BB45750AF4C50AF4C50AF4C50AF4C50AF4C50AF4C50AF4C50AF4C50AF4C
          50AF4C50AF4C50AF4C8FCA8CF9F9F9F2F6F2D7EBD65BB45750AF4C50AF4C50AF
          4C50AF4C50AF4C50AF4C50AF4C50AF4C50AF4C50AF4C84C581F9F9F9A9D6A767
          B964E7F2E7D7EBD65BB45750AF4C50AF4C50AF4C50AF4C50AF4C50AF4C50AF4C
          50AF4C50AF4C7CC3799AD09850AF4C50AF4C67B964E7F2E7D7EBD65BB45750AF
          4C50AF4C50AF4C50AF4C50AF4C50AF4C50AF4C50AF4C50AF4C50AF4C50AF4C50
          AF4C50AF4C67B964E7F2E7D7EBD656B25250AF4C50AF4C50AF4C50AF4C50AF4C
          50AF4C50AF4C50AF4C50AF4C50AF4C50AF4C50AF4C50AF4C67B964CAE5C962B7
          5F50AF4C50AF4C50AF4C50AF4C50AF4C50AF4C50AF4C50AF4C50AF4C50AF4C50
          AF4C50AF4C50AF4C50AF4C50AF4C50AF4C50AF4C50AF4C50AF4C50AF4C50AF4C
          50AF4C50AF4C50AF4C50AF4C50AF4C50AF4C50AF4C50AF4C50AF4C50AF4C50AF
          4C50AF4C50AF4C50AF4C50AF4C50AF4C50AF4C50AF4C50AF4C50AF4C50AF4C50
          AF4C50AF4C50AF4C50AF4C50AF4C50AF4C50AF4C50AF4C50AF4C5CB55950AF4C
          50AF4C50AF4C50AF4C50AF4C50AF4C50AF4C50AF4C50AF4C50AF4C50AF4C50AF
          4C50AF4C50AF4C5DB559BFE2BE5CB55950AF4C50AF4C50AF4C50AF4C50AF4C50
          AF4C50AF4C50AF4C50AF4C50AF4C50AF4C50AF4C5CB559C1E2BF}
        ParentFont = False
        OnClick = sbtnRTSubmitClick
      end
      object btnTRPossibility: TButton
        Left = 139
        Top = 252
        Width = 223
        Height = 34
        Caption = #1575#1605#1705#1575#1606' '#1587#1606#1580#1740' '#1585#1586#1585#1608
        TabOrder = 0
        OnClick = btnTRPossibilityClick
      end
      object dblcbRC: TDBLookupComboBox
        Left = 139
        Top = 33
        Width = 223
        Height = 27
        DataField = 'customer_id'
        DataSource = DM.DSrTableReservation
        DropDownRows = 50
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Tahoma'
        Font.Style = []
        KeyField = 'id'
        ListField = 'full_name'
        ListSource = DM.DSCustomer
        ParentFont = False
        TabOrder = 1
      end
      object dblbRT: TDBLookupListBox
        Left = 3
        Top = 60
        Width = 121
        Height = 303
        DataField = 'table_id'
        DataSource = DM.DSrTableReservation
        KeyField = 'id'
        ListField = 'number'
        ListSource = DM.DSrTable
        TabOrder = 2
        OnClick = sbtnRTSubmitDisable
      end
      object dpRD: TDateTimePicker
        Left = 139
        Top = 82
        Width = 223
        Height = 41
        Date = 44141.627928726860000000
        Time = 44141.627928726860000000
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -27
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        TabOrder = 3
        OnChange = sbtnRTSubmitDisable
      end
      object tpRET: TDateTimePicker
        Left = 139
        Top = 182
        Width = 97
        Height = 41
        Date = 44141.965937500000000000
        Format = 'hh'
        Time = 44141.965937500000000000
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -27
        Font.Name = 'Tahoma'
        Font.Style = []
        Kind = dtkTime
        ParentFont = False
        TabOrder = 4
        OnChange = sbtnRTSubmitDisable
      end
      object tpRST: TDateTimePicker
        Left = 265
        Top = 182
        Width = 97
        Height = 41
        BiDiMode = bdLeftToRight
        Date = 44141.628450104170000000
        Format = 'hh'
        Time = 44141.628450104170000000
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -27
        Font.Name = 'Tahoma'
        Font.Style = []
        Kind = dtkTime
        ParentBiDiMode = False
        ParentFont = False
        TabOrder = 5
        OnChange = sbtnRTSubmitDisable
      end
    end
    object tsReserved: TTabSheet
      Caption = #1604#1740#1587#1578
      ImageIndex = 1
      ExplicitWidth = 585
      object DBGrTableReserved: TDBGrid
        Left = 3
        Top = 32
        Width = 475
        Height = 329
        DataSource = DM.DSrTableReservation
        TabOrder = 0
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'Tahoma'
        TitleFont.Style = []
        Columns = <
          item
            Expanded = False
            FieldName = 'table_id'
            Title.Alignment = taCenter
            Title.Caption = #1588#1605#1575#1585#1607' '#1605#1740#1586
            Width = 62
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'customer_id'
            Title.Alignment = taCenter
            Title.Caption = #1705#1583#1605#1588#1578#1585#1740
            Width = 69
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'reserve_date'
            Title.Alignment = taCenter
            Title.Caption = #1578#1575#1585#1740#1582
            Width = 77
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'start_time'
            Title.Alignment = taCenter
            Title.Caption = #1575#1586' '#1587#1575#1593#1578
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'end_time'
            Title.Alignment = taCenter
            Title.Caption = #1578#1575' '#1587#1575#1593#1578
            Visible = True
          end>
      end
    end
  end
end
