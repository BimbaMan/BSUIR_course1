object frmDel: TfrmDel
  Left = 0
  Top = 0
  AutoSize = True
  BorderIcons = [biSystemMenu]
  Caption = 'frmDel'
  ClientHeight = 272
  ClientWidth = 524
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object lblDelTitle: TLabel
    Left = 0
    Top = 0
    Width = 524
    Height = 23
    Align = alTop
    Alignment = taCenter
    Caption = #1059#1076#1072#1083#1077#1085#1080#1077' '#1087#1086#1083#1100#1079#1086#1074#1072#1090#1077#1083#1103
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -19
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    ExplicitWidth = 237
  end
  object lblDelNumber: TLabel
    Left = 135
    Top = 50
    Width = 141
    Height = 19
    Alignment = taCenter
    Caption = #1055#1086#1088#1103#1076#1082#1086#1074#1099#1081' '#1085#1086#1084#1077#1088
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object edtDel: TEdit
    Left = 8
    Top = 52
    Width = 121
    Height = 21
    NumbersOnly = True
    TabOrder = 0
  end
  object rbDelMale: TRadioButton
    Left = 8
    Top = 29
    Width = 57
    Height = 17
    Caption = #1046#1077#1085#1080#1093
    TabOrder = 1
  end
  object rbDelFemale: TRadioButton
    Left = 71
    Top = 29
    Width = 57
    Height = 17
    Caption = #1053#1077#1074#1077#1089#1090#1072
    TabOrder = 2
  end
  object btnDelDel: TButton
    Left = 216
    Top = 247
    Width = 75
    Height = 25
    Caption = #1059#1076#1072#1083#1080#1090#1100
    TabOrder = 3
    OnClick = btnDelDelClick
  end
end
