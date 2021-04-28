object Form3: TForm3
  Left = 0
  Top = 0
  Caption = 'Form3'
  ClientHeight = 299
  ClientWidth = 635
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 96
    Top = 11
    Width = 89
    Height = 13
    Caption = 'Nome do Arquivo: '
  end
  object Label2: TLabel
    Left = 64
    Top = 59
    Width = 42
    Height = 13
    Caption = 'Campo 1'
  end
  object Label3: TLabel
    Left = 344
    Top = 59
    Width = 33
    Height = 13
    Caption = 'Valor 1'
  end
  object Button1: TButton
    Left = 144
    Top = 208
    Width = 75
    Height = 25
    Caption = 'Gravar Ini'
    TabOrder = 0
    OnClick = Button1Click
  end
  object Button2: TButton
    Left = 432
    Top = 208
    Width = 75
    Height = 25
    Caption = 'Ler Ini'
    TabOrder = 1
    OnClick = Button2Click
  end
  object EdNomeIni: TEdit
    Left = 234
    Top = 8
    Width = 273
    Height = 21
    TabOrder = 2
    Text = 'Arquivo.ini'
  end
  object EdCampo1: TEdit
    Left = 136
    Top = 56
    Width = 121
    Height = 21
    TabOrder = 3
    Text = 'EdCampo1'
  end
  object EdValor1: TEdit
    Left = 408
    Top = 56
    Width = 121
    Height = 21
    TabOrder = 4
    Text = 'EdValor1'
  end
end
