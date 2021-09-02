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
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 291
    Top = 272
    Width = 5
    Height = 19
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object Button1: TButton
    Left = 248
    Top = 168
    Width = 75
    Height = 25
    Caption = 'Login'
    TabOrder = 0
    OnClick = Button1Click
  end
  object Edit1: TEdit
    Left = 216
    Top = 80
    Width = 121
    Height = 21
    TabOrder = 1
  end
  object Edit2: TEdit
    Left = 216
    Top = 120
    Width = 121
    Height = 21
    PasswordChar = '*'
    TabOrder = 2
  end
  object Timer1: TTimer
    OnTimer = Timer1Timer
    Left = 456
    Top = 32
  end
end
