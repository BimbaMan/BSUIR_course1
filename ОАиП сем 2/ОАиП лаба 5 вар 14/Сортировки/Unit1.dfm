object Unit1Form: TUnit1Form
  Left = 0
  Top = 62
  Caption = 'Form1'
  ClientHeight = 375
  ClientWidth = 752
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesigned
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object StringGridValue: TStringGrid
    Left = 168
    Top = 32
    Width = 561
    Height = 313
    ColCount = 7
    DefaultColWidth = 78
    DefaultRowHeight = 30
    Enabled = False
    FixedCols = 0
    RowCount = 10
    FixedRows = 0
    ScrollBars = ssNone
    TabOrder = 0
  end
  object StringGridHeader: TStringGrid
    Left = 248
    Top = 1
    Width = 481
    Height = 32
    ColCount = 3
    DefaultColWidth = 156
    DefaultRowHeight = 30
    Enabled = False
    FixedCols = 0
    RowCount = 1
    FixedRows = 0
    ScrollBars = ssNone
    TabOrder = 1
  end
  object ButtonSort: TButton
    Left = 40
    Top = 136
    Width = 87
    Height = 25
    Caption = 'Sort And Draw'
    TabOrder = 2
    OnClick = ButtonSortClick
  end
  object ComboBoxWay: TComboBox
    Left = 17
    Top = 56
    Width = 145
    Height = 21
    Style = csDropDownList
    ItemIndex = 0
    TabOrder = 3
    Text = '10'
    Items.Strings = (
      '10'
      '100'
      '2000')
  end
end
