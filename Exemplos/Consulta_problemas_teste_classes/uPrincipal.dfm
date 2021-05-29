object Form4: TForm4
  Left = 0
  Top = 0
  Caption = 'Form4'
  ClientHeight = 224
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
    Left = 320
    Top = 22
    Width = 75
    Height = 25
    Caption = 'Button1'
    TabOrder = 0
    OnClick = Button1Click
  end
  object Edit1: TEdit
    Left = 72
    Top = 24
    Width = 193
    Height = 21
    TabOrder = 1
    Text = 'Edit1'
  end
  object Memo1: TMemo
    Left = 72
    Top = 80
    Width = 185
    Height = 89
    Lines.Strings = (
      'Memo1')
    TabOrder = 2
    Visible = False
  end
  object Button2: TButton
    Left = 320
    Top = 144
    Width = 75
    Height = 25
    Caption = 'Button2'
    TabOrder = 3
    Visible = False
    OnClick = Button2Click
  end
end
