object frmConfig: TfrmConfig
  Left = 0
  Top = 0
  Align = alClient
  Caption = 'frmConfig'
  ClientHeight = 172
  ClientWidth = 354
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 40
    Top = 24
    Width = 29
    Height = 13
    Caption = 'Host: '
  end
  object Label2: TLabel
    Left = 216
    Top = 64
    Width = 30
    Height = 13
    Caption = 'Porta:'
  end
  object edHost: TEdit
    Left = 75
    Top = 21
    Width = 238
    Height = 21
    TabOrder = 0
  end
  object EdPorta: TEdit
    Left = 251
    Top = 61
    Width = 62
    Height = 21
    TabOrder = 1
  end
  object btGravar: TButton
    Left = 144
    Top = 128
    Width = 75
    Height = 25
    Caption = 'Gravar'
    TabOrder = 2
    OnClick = btGravarClick
  end
end
