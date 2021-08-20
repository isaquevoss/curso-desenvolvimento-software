object Form1: TForm1
  Left = 0
  Top = 0
  Caption = 'Form1'
  ClientHeight = 299
  ClientWidth = 635
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  OnCreate = FormCreate
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 80
    Top = 16
    Width = 30
    Height = 13
    Caption = 'Data: '
  end
  object lbUsuariosConectados: TLabel
    Left = 88
    Top = 56
    Width = 106
    Height = 13
    Caption = 'lbUsuariosConectados'
  end
  object Button1: TButton
    Left = 312
    Top = 24
    Width = 75
    Height = 25
    Caption = 'Estoque'
    TabOrder = 0
    OnClick = Button1Click
  end
  object Timer1: TTimer
    Interval = 10000
    OnTimer = Timer1Timer
    Left = 432
    Top = 40
  end
end
