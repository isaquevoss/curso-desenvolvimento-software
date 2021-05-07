object Form4: TForm4
  Left = 0
  Top = 0
  Caption = 'Form4'
  ClientHeight = 374
  ClientWidth = 464
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object btCarregar: TButton
    Left = 342
    Top = 337
    Width = 75
    Height = 25
    Caption = 'Carregar'
    TabOrder = 0
    OnClick = btCarregarClick
  end
  object ProgressBar1: TProgressBar
    Left = 56
    Top = 306
    Width = 361
    Height = 17
    TabOrder = 1
  end
  object Edit1: TEdit
    Left = 280
    Top = 24
    Width = 121
    Height = 21
    NumbersOnly = True
    TabOrder = 2
  end
  object btDescarregar: TButton
    Left = 56
    Top = 337
    Width = 75
    Height = 25
    Caption = 'Descarregar'
    TabOrder = 3
    OnClick = btDescarregarClick
  end
  object rbCarregar: TRadioButton
    Left = 56
    Top = 226
    Width = 113
    Height = 17
    Caption = 'Carregar'
    TabOrder = 4
  end
  object rbDescarregar: TRadioButton
    Left = 56
    Top = 264
    Width = 113
    Height = 17
    Caption = 'Descarregar'
    TabOrder = 5
  end
  object Button3: TButton
    Left = 342
    Top = 260
    Width = 75
    Height = 25
    Caption = 'Executar'
    TabOrder = 6
    OnClick = Button3Click
  end
  object ListBox1: TListBox
    Left = 56
    Top = 72
    Width = 121
    Height = 137
    ItemHeight = 13
    TabOrder = 7
    OnDragDrop = ListBox1DragDrop
  end
  object ListBox2: TListBox
    Left = 296
    Top = 72
    Width = 121
    Height = 137
    ItemHeight = 13
    TabOrder = 8
  end
  object btCarregarItens: TButton
    Left = 56
    Top = 22
    Width = 121
    Height = 25
    Caption = 'Carregar itens'
    TabOrder = 9
    OnClick = btCarregarItensClick
  end
end
