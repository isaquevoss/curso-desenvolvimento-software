object Form4: TForm4
  Left = 0
  Top = 0
  Caption = 'Form4'
  ClientHeight = 242
  ClientWidth = 527
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object pnMenu: TPanel
    Left = 0
    Top = 0
    Width = 527
    Height = 41
    Align = alTop
    BevelOuter = bvNone
    TabOrder = 0
    object Button1: TButton
      Left = 440
      Top = 10
      Width = 75
      Height = 25
      Caption = 'Configurar'
      TabOrder = 0
      OnClick = Button1Click
    end
    object Button2: TButton
      Left = 16
      Top = 10
      Width = 75
      Height = 25
      Caption = 'Usu'#225'rios'
      TabOrder = 1
      OnClick = Button2Click
    end
  end
  object pnSistema: TPanel
    Left = 0
    Top = 41
    Width = 527
    Height = 201
    Align = alClient
    BevelOuter = bvNone
    TabOrder = 1
  end
end
