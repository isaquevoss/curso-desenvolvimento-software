object frmLogin: TfrmLogin
  Left = 0
  Top = 0
  Caption = 'Login'
  ClientHeight = 238
  ClientWidth = 499
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object lbSelecioneUsuario: TLabel
    Left = 200
    Top = 48
    Width = 103
    Height = 13
    Caption = 'Selecione seu usu'#225'rio'
  end
  object cbUsuario: TComboBox
    Left = 184
    Top = 80
    Width = 145
    Height = 21
    TabOrder = 0
    Text = 'cbUsuario'
  end
  object btEntrar: TButton
    Left = 216
    Top = 136
    Width = 75
    Height = 25
    Caption = 'Entrar'
    TabOrder = 1
    OnClick = btEntrarClick
  end
  object Button1: TButton
    Left = 208
    Top = 192
    Width = 75
    Height = 25
    Caption = 'cancelar'
    TabOrder = 2
    OnClick = Button1Click
  end
end
