object Form3: TForm3
  Left = 450
  Top = 215
  Width = 585
  Height = 175
  Caption = #1053#1072#1089#1090#1088#1086#1081#1082#1080
  Color = clBtnFace
  Font.Charset = RUSSIAN_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Arial Narrow'
  Font.Style = []
  OldCreateOrder = False
  OnCreate = FormCreate
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 15
  object Label1: TLabel
    Left = 24
    Top = 8
    Width = 114
    Height = 15
    Caption = #1056#1077#1087#1086#1079#1080#1090#1086#1088#1080#1081' '#1073#1072#1079#1099' '#1076#1072#1085#1085#1099#1093
  end
  object SpeedButton1: TSpeedButton
    Left = 488
    Top = 24
    Width = 57
    Height = 22
    Caption = #1054#1090#1082#1088#1099#1090#1100
    OnClick = SpeedButton1Click
  end
  object Label2: TLabel
    Left = 24
    Top = 56
    Width = 61
    Height = 15
    Caption = #1057#1080#1085#1088#1086#1085#1080#1079#1072#1094#1080#1103
  end
  object SpeedButton2: TSpeedButton
    Left = 352
    Top = 96
    Width = 89
    Height = 22
    Caption = #1054#1090#1084#1077#1085#1072
    OnClick = SpeedButton2Click
  end
  object SpeedButton3: TSpeedButton
    Left = 456
    Top = 96
    Width = 89
    Height = 22
    Caption = #1055#1088#1080#1084#1077#1085#1080#1090#1100
    OnClick = SpeedButton3Click
  end
  object Label3: TLabel
    Left = 272
    Top = 72
    Width = 7
    Height = 20
    Caption = '0'
    Font.Charset = RUSSIAN_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Arial Narrow'
    Font.Style = []
    ParentFont = False
  end
  object edt1: TEdit
    Left = 24
    Top = 24
    Width = 465
    Height = 23
    TabOrder = 0
  end
  object TrackBar1: TTrackBar
    Left = 24
    Top = 72
    Width = 225
    Height = 45
    Max = 100000
    Min = 6000
    Position = 6000
    TabOrder = 1
  end
  object OpenDialog1: TOpenDialog
    Filter = 'Excel makros|*.xlsm|Excel |*.xlsx'
    Left = 424
  end
  object Timer1: TTimer
    Interval = 10
    OnTimer = Timer1Timer
    Left = 384
  end
end
