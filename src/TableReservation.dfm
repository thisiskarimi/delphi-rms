object frmTableReservation: TfrmTableReservation
  Left = 0
  Top = 0
  BiDiMode = bdRightToLeft
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = #1585#1586#1585#1608' '#1605#1740#1586
  ClientHeight = 271
  ClientWidth = 444
  Color = clBtnFace
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
  object DBLookupComboBox1: TDBLookupComboBox
    Left = 291
    Top = 8
    Width = 145
    Height = 21
    DataField = 'customer_id'
    DataSource = DM.DSrTableReservation
    DropDownRows = 50
    KeyField = 'id'
    ListField = 'full_name'
    ListSource = DM.DSCustomer
    TabOrder = 0
  end
  object DBLookupListBox1: TDBLookupListBox
    Left = 8
    Top = 8
    Width = 121
    Height = 251
    DataField = 'table_id'
    DataSource = DM.DSrTableReservation
    KeyField = 'id'
    ListField = 'number'
    ListSource = DM.DSrTable
    TabOrder = 1
  end
  object DPDaterTableReservation: TDateTimePicker
    Left = 250
    Top = 48
    Width = 186
    Height = 21
    Date = 44141.627928726860000000
    Time = 44141.627928726860000000
    TabOrder = 2
  end
  object TPStartTimerTableReservation: TDateTimePicker
    Left = 250
    Top = 112
    Width = 186
    Height = 21
    BiDiMode = bdLeftToRight
    Date = 44141.628450104170000000
    Time = 44141.628450104170000000
    Kind = dtkTime
    ParentBiDiMode = False
    TabOrder = 3
  end
  object TPEndTimerTableReservation: TDateTimePicker
    Left = 250
    Top = 168
    Width = 186
    Height = 21
    Date = 44141.632612604170000000
    Time = 44141.632612604170000000
    Kind = dtkTime
    TabOrder = 4
  end
  object btnSubmitrTableReservation: TButton
    Left = 286
    Top = 213
    Width = 150
    Height = 50
    Caption = #1575#1605#1705#1575#1606' '#1587#1606#1580#1740' '#1585#1586#1585#1608
    TabOrder = 5
    OnClick = btnSubmitrTableReservationClick
  end
end
