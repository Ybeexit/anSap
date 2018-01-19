object Form1: TForm1
  Left = 229
  Top = 177
  Width = 928
  Height = 480
  Caption = #1059#1087#1088#1080#1072#1074#1083#1077#1085#1080#1077
  Color = clBtnFace
  Font.Charset = RUSSIAN_CHARSET
  Font.Color = clBlack
  Font.Height = -11
  Font.Name = 'Arial Narrow'
  Font.Style = []
  Menu = MainMenu
  OldCreateOrder = False
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 15
  object Label3: TLabel
    Left = 176
    Top = 16
    Width = 3
    Height = 15
    OnClick = Label3Click
  end
  object GroupBox: TGroupBox
    Left = 270
    Top = 104
    Width = 372
    Height = 233
    Caption = #1060#1080#1083#1100#1090#1088
    TabOrder = 0
    object SpeedButton: TSpeedButton
      Left = 280
      Top = 203
      Width = 65
      Height = 22
      Caption = #1042#1099#1073#1088#1072#1090#1100
      Flat = True
      Font.Charset = RUSSIAN_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'Arial Narrow'
      Font.Style = []
      ParentFont = False
    end
    object Label1: TLabel
      Left = 48
      Top = 80
      Width = 34
      Height = 15
      Caption = #1059#1095#1072#1089#1090#1086#1082
    end
    object Label2: TLabel
      Left = 48
      Top = 128
      Width = 44
      Height = 15
      Caption = #1055#1088#1086#1092#1077#1089#1080#1103
    end
    object ComboBox1: TComboBox
      Left = 160
      Top = 122
      Width = 145
      Height = 23
      ItemHeight = 15
      TabOrder = 0
      Text = 'ComboBox1'
    end
    object ComboBox: TComboBox
      Left = 160
      Top = 72
      Width = 145
      Height = 23
      ItemHeight = 15
      TabOrder = 1
      Text = 'ComboBox'
      OnChange = ComboBoxChange
    end
  end
  object StatusBar: TStatusBar
    Left = 0
    Top = 402
    Width = 912
    Height = 19
    Panels = <>
  end
  object MainMenu: TMainMenu
    Left = 192
    Top = 48
    object N3: TMenuItem
      Caption = #1053#1072#1089#1090#1088#1086#1081#1082#1080
      OnClick = Label3Click
    end
  end
end
