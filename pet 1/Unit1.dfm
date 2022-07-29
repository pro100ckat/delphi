object Form1: TForm1
  Left = 0
  Top = 0
  Caption = 'Form1'
  ClientHeight = 244
  ClientWidth = 161
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
    Left = 18
    Top = 119
    Width = 79
    Height = 26
    AutoSize = False
    BiDiMode = bdLeftToRight
    Caption = #1053#1072#1087#1088#1103#1078#1077#1085#1080#1077' ('#1074#1086#1083#1090')'
    ParentBiDiMode = False
    WordWrap = True
  end
  object Label2: TLabel
    Left = 18
    Top = 160
    Width = 79
    Height = 26
    Caption = #1057#1086#1087#1088#1086#1090#1080#1074#1083#1077#1085#1080#1077' ('#1054#1084')'
    WordWrap = True
  end
  object Label3: TLabel
    Left = 18
    Top = 192
    Width = 22
    Height = 13
    Caption = #1058#1086#1082':'
  end
  object RadioGroup1: TRadioGroup
    Left = 18
    Top = 8
    Width = 111
    Height = 105
    HelpType = htKeyword
    BiDiMode = bdRightToLeftReadingOnly
    ItemIndex = 0
    Items.Strings = (
      #1058#1086#1082
      #1053#1072#1087#1088#1103#1078#1077#1085#1080#1077
      #1057#1086#1087#1088#1086#1090#1080#1074#1083#1077#1085#1080#1077)
    ParentBiDiMode = False
    TabOrder = 0
    OnClick = RadioGroup1Click
  end
  object Edit1: TEdit
    Left = 112
    Top = 119
    Width = 41
    Height = 21
    TabOrder = 1
    Text = '0'
  end
  object Edit2: TEdit
    Left = 112
    Top = 157
    Width = 41
    Height = 21
    TabOrder = 2
    Text = '0'
  end
  object Button1: TButton
    Left = 18
    Top = 211
    Width = 75
    Height = 25
    Caption = #1042#1099#1095#1080#1089#1083#1080#1090#1100
    TabOrder = 3
    OnClick = Button1Click
  end
  object BitBtn1: TBitBtn
    Left = 99
    Top = 211
    Width = 58
    Height = 25
    Kind = bkClose
    NumGlyphs = 2
    TabOrder = 4
  end
end
