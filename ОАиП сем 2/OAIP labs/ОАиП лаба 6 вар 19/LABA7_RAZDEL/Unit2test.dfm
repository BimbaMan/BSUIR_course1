object frmAdd: TfrmAdd
  Left = 0
  Top = 0
  AutoSize = True
  BorderIcons = [biSystemMenu]
  Caption = 'frmAdd'
  ClientHeight = 298
  ClientWidth = 525
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object lblAddTitle: TLabel
    Left = 0
    Top = 0
    Width = 525
    Height = 23
    Align = alTop
    Alignment = taCenter
    Caption = #1044#1086#1073#1072#1074#1083#1077#1085#1080#1077' '#1087#1086#1083#1100#1079#1086#1074#1072#1090#1077#1083#1103
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -19
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    ExplicitWidth = 263
  end
  object lblAddName: TLabel
    Left = 135
    Top = 45
    Width = 156
    Height = 21
    Alignment = taCenter
    AutoSize = False
    Caption = #1048#1084#1103
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object lblAddAge: TLabel
    Left = 135
    Top = 72
    Width = 156
    Height = 21
    Alignment = taCenter
    AutoSize = False
    Caption = #1042#1086#1079#1088#1072#1089#1090
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object lblAddHeight: TLabel
    Left = 135
    Top = 99
    Width = 156
    Height = 21
    Alignment = taCenter
    AutoSize = False
    Caption = #1056#1086#1089#1090
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object lblAddWeight: TLabel
    Left = 135
    Top = 126
    Width = 156
    Height = 21
    Alignment = taCenter
    AutoSize = False
    Caption = #1042#1077#1089
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object lblAddAgeMinAgeMax: TLabel
    Left = 135
    Top = 178
    Width = 156
    Height = 21
    Alignment = taCenter
    AutoSize = False
    Caption = #1042#1086#1079#1088#1072#1089#1090'(Min-Max)'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object lblAddHeightMinHeightMax: TLabel
    Left = 135
    Top = 204
    Width = 156
    Height = 21
    Alignment = taCenter
    AutoSize = False
    Caption = #1056#1086#1089#1090'(Min-Max)'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object lblAddWeightMinWeightMax: TLabel
    Left = 135
    Top = 231
    Width = 156
    Height = 21
    Alignment = taCenter
    AutoSize = False
    Caption = #1042#1077#1089'(Min-Max)'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object lblAddWants: TLabel
    Left = 8
    Top = 153
    Width = 179
    Height = 19
    Alignment = taCenter
    Caption = #1058#1088#1077#1073#1086#1074#1072#1085#1080#1103' '#1082' '#1087#1072#1088#1090#1085#1077#1088#1091':'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object edtAddName: TEdit
    Left = 8
    Top = 45
    Width = 121
    Height = 21
    TabOrder = 0
  end
  object edtAddAge: TEdit
    Left = 8
    Top = 72
    Width = 121
    Height = 21
    NumbersOnly = True
    TabOrder = 1
  end
  object edtAddHeight: TEdit
    Left = 8
    Top = 99
    Width = 121
    Height = 21
    NumbersOnly = True
    TabOrder = 2
  end
  object edtAddWeight: TEdit
    Left = 8
    Top = 126
    Width = 121
    Height = 21
    NumbersOnly = True
    TabOrder = 3
  end
  object btnAddAdd: TButton
    Left = 216
    Top = 273
    Width = 75
    Height = 25
    Caption = #1044#1086#1073#1072#1074#1080#1090#1100
    TabOrder = 4
    OnClick = btnAddAddClick
  end
  object rbAddMale: TRadioButton
    Left = 8
    Top = 22
    Width = 65
    Height = 17
    Caption = #1046#1077#1085#1080#1093
    TabOrder = 5
  end
  object rbAddFemale: TRadioButton
    Left = 72
    Top = 22
    Width = 65
    Height = 17
    Caption = #1053#1077#1074#1077#1089#1090#1072
    TabOrder = 6
  end
  object edtAddAgeMin: TEdit
    Left = 8
    Top = 177
    Width = 49
    Height = 21
    NumbersOnly = True
    TabOrder = 7
  end
  object edtAddAgeMax: TEdit
    Left = 80
    Top = 177
    Width = 49
    Height = 21
    NumbersOnly = True
    TabOrder = 8
  end
  object edtAddHeightMin: TEdit
    Left = 8
    Top = 204
    Width = 49
    Height = 21
    NumbersOnly = True
    TabOrder = 9
  end
  object edtAddHeightMax: TEdit
    Left = 80
    Top = 204
    Width = 49
    Height = 21
    NumbersOnly = True
    TabOrder = 10
  end
  object edtAddWeightMin: TEdit
    Left = 8
    Top = 231
    Width = 49
    Height = 21
    NumbersOnly = True
    TabOrder = 11
  end
  object edtAddWeightMax: TEdit
    Left = 80
    Top = 231
    Width = 49
    Height = 21
    NumbersOnly = True
    TabOrder = 12
  end
end
