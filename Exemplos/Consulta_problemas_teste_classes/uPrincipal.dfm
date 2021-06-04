object Form4: TForm4
  Left = 0
  Top = 0
  Caption = 'Form4'
  ClientHeight = 298
  ClientWidth = 516
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
    Left = 8
    Top = 96
    Width = 46
    Height = 13
    Caption = 'Descricao'
  end
  object lbCódigo: TLabel
    Left = 185
    Top = 56
    Width = 41
    Height = 13
    Caption = 'lbC'#243'digo'
  end
  object edId: TEdit
    Left = 8
    Top = 8
    Width = 121
    Height = 21
    NumbersOnly = True
    TabOrder = 0
    Text = '1'
  end
  object Button1: TButton
    Left = 151
    Top = 8
    Width = 75
    Height = 25
    Caption = 'Carregar'
    TabOrder = 1
    OnClick = Button1Click
  end
  object edDescricao: TEdit
    Left = 76
    Top = 93
    Width = 341
    Height = 21
    TabOrder = 2
    Text = 'edDescricao'
  end
  object lbSolucoes: TListBox
    Left = 0
    Top = 137
    Width = 516
    Height = 161
    Align = alBottom
    ItemHeight = 13
    TabOrder = 3
    OnDblClick = lbSolucoesDblClick
  end
  object dtDataHoraProblema: TDateTimePicker
    Left = 314
    Top = 66
    Width = 103
    Height = 21
    Date = 44348.858960648150000000
    Time = 44348.858960648150000000
    TabOrder = 4
  end
end
