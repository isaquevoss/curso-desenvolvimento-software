object FrmConfig: TFrmConfig
  Left = 0
  Top = 0
  Caption = 'FrmConfig'
  ClientHeight = 242
  ClientWidth = 527
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
  object Label1: TLabel
    Left = 24
    Top = 24
    Width = 27
    Height = 13
    Caption = 'Base:'
  end
  object EdCaminhoBase: TEdit
    Left = 57
    Top = 21
    Width = 273
    Height = 21
    TabOrder = 0
    Text = 'EdCaminhoBase'
  end
  object Button1: TButton
    Left = 360
    Top = 19
    Width = 75
    Height = 25
    Caption = 'Localizar'
    TabOrder = 1
    OnClick = Button1Click
  end
  object OpenDialog1: TOpenDialog
    Left = 248
    Top = 64
  end
end
