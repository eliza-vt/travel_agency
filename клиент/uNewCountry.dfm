object fmNewCountry: TfmNewCountry
  Left = 607
  Top = 245
  Width = 379
  Height = 279
  Caption = #1053#1086#1074#1072#1103' '#1089#1090#1088#1072#1085#1072
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object laName: TLabel
    Left = 72
    Top = 72
    Width = 50
    Height = 13
    Caption = #1053#1072#1079#1074#1072#1085#1080#1077
  end
  object Label1: TLabel
    Left = 80
    Top = 112
    Width = 30
    Height = 13
    Caption = #1043#1086#1088#1086#1076
  end
  object eName: TEdit
    Left = 144
    Top = 64
    Width = 121
    Height = 21
    TabOrder = 0
  end
  object BitBtn1: TBitBtn
    Left = 72
    Top = 168
    Width = 75
    Height = 25
    Caption = #1044#1086#1073#1072#1074#1080#1090#1100
    TabOrder = 1
    Kind = bkOK
  end
  object BitBtn2: TBitBtn
    Left = 184
    Top = 168
    Width = 75
    Height = 25
    Caption = #1054#1090#1084#1077#1085#1072
    TabOrder = 2
    Kind = bkCancel
  end
  object Edit1: TEdit
    Left = 144
    Top = 104
    Width = 121
    Height = 21
    TabOrder = 3
    Text = 'Edit1'
  end
  object BitBtn3: TBitBtn
    Left = 264
    Top = 104
    Width = 33
    Height = 17
    Caption = '...'
    TabOrder = 4
    OnClick = BitBtn3Click
  end
end
