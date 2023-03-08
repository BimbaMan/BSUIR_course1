object Form1: TForm1
  Left = 0
  Top = 0
  BorderStyle = bsSingle
  Caption = #1057#1087#1080#1089#1082#1080
  ClientHeight = 518
  ClientWidth = 972
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  Menu = MainMenu1
  OldCreateOrder = False
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 435
    Top = 8
    Width = 166
    Height = 25
    Caption = #1057#1087#1080#1089#1086#1082' '#1050#1091#1088#1100#1077#1088#1086#1074
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -21
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object Label2: TLabel
    Left = 87
    Top = 8
    Width = 150
    Height = 25
    Caption = #1057#1087#1080#1089#1086#1082' '#1047#1072#1082#1072#1079#1086#1074
    Font.Charset = RUSSIAN_CHARSET
    Font.Color = clBlack
    Font.Height = -21
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object Label3: TLabel
    Left = 760
    Top = 8
    Width = 65
    Height = 18
    Caption = #1044#1077#1081#1089#1090#1074#1080#1103
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -15
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object Button1: TButton
    Left = 715
    Top = 41
    Width = 175
    Height = 41
    Caption = #1044#1086#1073#1072#1074#1080#1090#1100' '#1079#1072#1082#1072#1079
    TabOrder = 0
    OnClick = Button1Click
  end
  object Button2: TButton
    Left = 715
    Top = 104
    Width = 175
    Height = 41
    Caption = #1044#1086#1073#1072#1074#1080#1090#1100' '#1082#1091#1088#1100#1077#1088#1072
    TabOrder = 1
    OnClick = Button2Click
  end
  object ListOfZakazi: TMemo
    Left = 8
    Top = 51
    Width = 321
    Height = 377
    BorderStyle = bsNone
    ScrollBars = ssVertical
    TabOrder = 2
  end
  object ListOfKyrieri: TMemo
    Left = 363
    Top = 51
    Width = 321
    Height = 377
    BorderStyle = bsNone
    ScrollBars = ssVertical
    TabOrder = 3
  end
  object Button3: TButton
    Left = 715
    Top = 160
    Width = 175
    Height = 41
    Caption = #1059#1076#1072#1083#1080#1090#1100' '#1079#1072#1082#1072#1079
    TabOrder = 4
    OnClick = Button3Click
  end
  object Button4: TButton
    Left = 715
    Top = 216
    Width = 175
    Height = 41
    Caption = #1059#1076#1072#1083#1080#1090#1100' '#1082#1091#1088#1100#1077#1088#1072
    TabOrder = 5
    OnClick = Button4Click
  end
  object Button5: TButton
    Left = 715
    Top = 280
    Width = 190
    Height = 41
    Caption = #1057#1086#1088#1090#1080#1088#1086#1074#1072#1090#1100' '#1079#1072#1087#1080#1089#1080
    TabOrder = 6
    OnClick = Button5Click
  end
  object Button6: TButton
    Left = 715
    Top = 344
    Width = 175
    Height = 41
    Caption = #1055#1086#1080#1089#1082
    TabOrder = 7
    OnClick = Button6Click
  end
  object Button7: TButton
    Left = 715
    Top = 403
    Width = 175
    Height = 41
    Caption = #1056#1077#1076#1072#1082#1090#1080#1088#1086#1074#1072#1090#1100
    TabOrder = 8
    OnClick = Button7Click
  end
  object Button8: TButton
    Left = 715
    Top = 456
    Width = 206
    Height = 41
    Caption = #1056#1072#1089#1087#1088#1077#1076#1077#1083#1080#1090#1100' '#1079#1072#1082#1072#1079#1099
    TabOrder = 9
    OnClick = Button8Click
  end
  object MainMenu1: TMainMenu
    Left = 272
    Top = 8
    object N1: TMenuItem
      Caption = #1057#1086#1093#1088#1072#1085#1080#1090#1100
      object N2: TMenuItem
        Caption = #1047#1072#1082#1072#1079#1099
        OnClick = N2Click
      end
      object N4: TMenuItem
        Caption = #1050#1091#1088#1100#1077#1088#1086#1074
        OnClick = N4Click
      end
    end
    object N3: TMenuItem
      Caption = #1054#1090#1082#1088#1099#1090#1100
      object N5: TMenuItem
        Caption = #1047#1072#1082#1072#1079#1099
        OnClick = N5Click
      end
      object N6: TMenuItem
        Caption = #1050#1091#1088#1100#1077#1088#1086#1074
        OnClick = N6Click
      end
    end
  end
  object SaveDialog1: TSaveDialog
    Left = 328
    Top = 8
  end
  object OpenDialog1: TOpenDialog
    Left = 384
    Top = 8
  end
end
