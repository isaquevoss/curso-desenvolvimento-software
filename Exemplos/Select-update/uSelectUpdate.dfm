object Form3: TForm3
  Left = 0
  Top = 0
  Caption = 'Form3'
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
  object Button1: TButton
    Left = 64
    Top = 48
    Width = 129
    Height = 25
    Caption = 'Select'
    TabOrder = 0
    OnClick = Button1Click
  end
  object Button2: TButton
    Left = 328
    Top = 48
    Width = 129
    Height = 25
    Caption = 'UPDATE/INSERT'
    TabOrder = 1
    OnClick = Button2Click
  end
  object Memo1: TMemo
    Left = 0
    Top = 153
    Width = 527
    Height = 89
    Align = alBottom
    Lines.Strings = (
      'Memo1')
    TabOrder = 2
    ExplicitLeft = 216
    ExplicitTop = 160
    ExplicitWidth = 185
  end
  object QrSelect: TFDQuery
    Connection = DataModule1.Conexao
    Left = 160
    Top = 128
  end
  object QrUpdateInsert: TFDQuery
    Connection = DataModule1.Conexao
    Left = 320
    Top = 128
  end
end
