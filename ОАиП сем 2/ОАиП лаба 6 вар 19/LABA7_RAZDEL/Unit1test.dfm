object frmMain: TfrmMain
  Left = 0
  Top = 0
  AutoSize = True
  BorderIcons = [biSystemMenu]
  Caption = 'frmMain'
  ClientHeight = 470
  ClientWidth = 863
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object lblFemaleList: TLabel
    Left = 598
    Top = 0
    Width = 265
    Height = 19
    Alignment = taCenter
    AutoSize = False
    Caption = #1057#1087#1080#1089#1086#1082' '#1085#1077#1074#1077#1089#1090
    Color = clRed
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentColor = False
    ParentFont = False
  end
  object lblMaleList: TLabel
    Left = 318
    Top = 0
    Width = 265
    Height = 19
    Alignment = taCenter
    AutoSize = False
    Caption = #1057#1087#1080#1089#1086#1082' '#1078#1077#1085#1080#1093#1086#1074
    Color = clSkyBlue
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentColor = False
    ParentFont = False
  end
  object FemaleList: TListBox
    Left = 598
    Top = 17
    Width = 265
    Height = 453
    ItemHeight = 13
    TabOrder = 0
  end
  object btnMainAdd: TButton
    Left = 0
    Top = 17
    Width = 95
    Height = 25
    Caption = #1044#1086#1073#1072#1074#1083#1077#1085#1080#1077
    TabOrder = 1
    OnClick = btnMainAddClick
  end
  object btnMainDel: TButton
    Left = 101
    Top = 17
    Width = 95
    Height = 25
    Caption = #1059#1076#1072#1083#1077#1085#1080#1077
    TabOrder = 2
    OnClick = btnMainDelClick
  end
  object MaleList: TListBox
    Left = 318
    Top = 17
    Width = 265
    Height = 453
    ItemHeight = 13
    TabOrder = 3
  end
  object btnMainEdition: TButton
    Left = 202
    Top = 17
    Width = 95
    Height = 25
    Caption = #1056#1077#1076#1072#1082#1090#1080#1088#1086#1074#1072#1085#1080#1077
    TabOrder = 4
    OnClick = btnMainEditionClick
  end
  object btnMainCreatePairs: TButton
    Left = 0
    Top = 48
    Width = 95
    Height = 25
    Caption = #1057#1086#1079#1076#1072#1085#1080#1077' '#1087#1072#1088
    TabOrder = 5
    OnClick = btnMainCreatePairsClick
  end
  object btnMainFileCreate: TButton
    Left = 101
    Top = 48
    Width = 95
    Height = 25
    Caption = #1057#1086#1093#1088#1072#1085#1077#1085#1080#1077
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 6
    OnClick = btnMainFileCreateClick
  end
  object btnMainFileOpen: TButton
    Left = 202
    Top = 48
    Width = 95
    Height = 25
    Caption = #1054#1090#1082#1088#1099#1090#1100' '#1092#1072#1081#1083
    TabOrder = 7
    OnClick = btnMainFileOpenClick
  end
  object btnMainClean: TButton
    Left = 0
    Top = 79
    Width = 95
    Height = 25
    Caption = #1054#1095#1080#1089#1090#1080#1090#1100' '#1089#1087#1080#1089#1082#1080
    TabOrder = 8
    OnClick = btnMainCleanClick
  end
  object frmMainSort: TButton
    Left = 101
    Top = 79
    Width = 156
    Height = 25
    Caption = #1054#1090#1089#1086#1088#1090#1080#1088#1086#1074#1072#1090#1100' '#1087#1086' '#1074#1086#1079#1088#1072#1089#1090#1091
    TabOrder = 9
    OnClick = frmMainSortClick
  end
end
