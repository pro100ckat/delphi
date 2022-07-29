object Form2: TForm2
  Left = 0
  Top = 0
  Caption = 'Form2'
  ClientHeight = 320
  ClientWidth = 755
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 32
    Top = 43
    Width = 94
    Height = 13
    Caption = #1048#1089#1093#1086#1076#1085#1072#1103' '#1084#1072#1090#1088#1080#1094#1072
  end
  object Label2: TLabel
    Left = 379
    Top = 37
    Width = 136
    Height = 13
    Caption = #1054#1090#1089#1086#1088#1090#1080#1088#1086#1074#1072#1085#1085#1072#1103' '#1084#1072#1090#1088#1080#1094#1072
  end
  object Edit1: TEdit
    Left = 32
    Top = 16
    Width = 121
    Height = 21
    ReadOnly = True
    TabOrder = 0
    Text = '5'
    OnChange = Edit1Change
  end
  object UpDown1: TUpDown
    Left = 153
    Top = 16
    Width = 16
    Height = 21
    Associate = Edit1
    Position = 5
    TabOrder = 1
  end
  object StringGrid1: TStringGrid
    Left = 32
    Top = 56
    Width = 329
    Height = 209
    FixedCols = 0
    FixedRows = 0
    Options = [goFixedVertLine, goFixedHorzLine, goVertLine, goHorzLine, goRangeSelect, goEditing]
    TabOrder = 2
  end
  object Button1: TButton
    Left = 32
    Top = 271
    Width = 75
    Height = 25
    Caption = #1042#1074#1086#1076
    TabOrder = 3
    OnClick = Button1Click
  end
  object Button2: TButton
    Left = 160
    Top = 271
    Width = 75
    Height = 25
    Caption = #1042#1099#1074#1086#1076
    TabOrder = 4
    OnClick = Button2Click
  end
  object StringGrid2: TStringGrid
    Left = 379
    Top = 56
    Width = 362
    Height = 209
    FixedCols = 0
    FixedRows = 0
    Options = [goFixedVertLine, goFixedHorzLine, goVertLine, goHorzLine, goRangeSelect, goEditing]
    TabOrder = 5
  end
  object BitBtn1: TBitBtn
    Left = 666
    Top = 271
    Width = 75
    Height = 25
    Kind = bkClose
    NumGlyphs = 2
    TabOrder = 6
  end
end
