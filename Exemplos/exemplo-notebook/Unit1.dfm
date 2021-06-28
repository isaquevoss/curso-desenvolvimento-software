object Form1: TForm1
  Left = 0
  Top = 0
  Caption = 'Form1'
  ClientHeight = 358
  ClientWidth = 606
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object Button1: TButton
    Left = 16
    Top = 8
    Width = 75
    Height = 25
    Caption = 'Config Nfce'
    TabOrder = 0
    OnClick = Button1Click
  end
  object Button2: TButton
    Left = 16
    Top = 64
    Width = 75
    Height = 25
    Caption = 'Config Sat'
    TabOrder = 1
    OnClick = Button2Click
  end
  object pnConfiguracoes: TPanel
    Left = 120
    Top = 0
    Width = 486
    Height = 358
    Align = alRight
    Anchors = [akLeft, akTop, akRight, akBottom]
    Caption = 'pnConfiguracoes'
    TabOrder = 2
    ExplicitLeft = 128
    ExplicitTop = -8
  end
end
