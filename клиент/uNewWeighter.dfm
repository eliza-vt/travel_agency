object fmNewWeighter: TfmNewWeighter
  Left = 498
  Top = 264
  Width = 430
  Height = 258
  Caption = #1053#1086#1074#1099#1081' '#1075#1088#1091#1079#1095#1080#1082
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
    Left = 80
    Top = 24
    Width = 22
    Height = 13
    Caption = #1048#1084#1103
  end
  object laSurname: TLabel
    Left = 80
    Top = 56
    Width = 49
    Height = 13
    BiDiMode = bdRightToLeft
    Caption = #1060#1072#1084#1080#1083#1080#1103
    ParentBiDiMode = False
  end
  object laLastname: TLabel
    Left = 80
    Top = 96
    Width = 47
    Height = 13
    Caption = #1054#1090#1095#1077#1089#1090#1074#1086
  end
  object eName: TEdit
    Left = 184
    Top = 16
    Width = 121
    Height = 21
    TabOrder = 0
    Text = 'eName'
  end
  object eSurname: TEdit
    Left = 184
    Top = 56
    Width = 121
    Height = 21
    TabOrder = 1
  end
  object eLastname: TEdit
    Left = 184
    Top = 96
    Width = 121
    Height = 21
    TabOrder = 2
  end
  object BitBtn1: TBitBtn
    Left = 112
    Top = 152
    Width = 75
    Height = 25
    TabOrder = 3
    Kind = bkOK
  end
  object BitBtn2: TBitBtn
    Left = 256
    Top = 160
    Width = 75
    Height = 25
    TabOrder = 4
    Kind = bkCancel
  end
end
