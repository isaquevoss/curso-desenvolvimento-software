object frmCadastroProblema: TfrmCadastroProblema
  Left = 0
  Top = 0
  Caption = 'frmCadastroProblema'
  ClientHeight = 338
  ClientWidth = 474
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
  object lbProduto: TLabel
    Left = 56
    Top = 21
    Width = 38
    Height = 13
    Caption = 'Produto'
  end
  object LbModulo: TLabel
    Left = 56
    Top = 72
    Width = 34
    Height = 13
    Caption = 'M'#243'dulo'
  end
  object mmProblema: TMemo
    Left = 56
    Top = 144
    Width = 353
    Height = 89
    Hint = 'Digite seu problema'
    ParentShowHint = False
    ShowHint = True
    TabOrder = 0
  end
  object btCancelar: TButton
    Left = 296
    Top = 280
    Width = 75
    Height = 25
    Caption = 'Cancelar'
    TabOrder = 1
    OnClick = btCancelarClick
  end
  object btGravar: TButton
    Left = 72
    Top = 280
    Width = 75
    Height = 25
    Caption = 'Gravar'
    TabOrder = 2
    OnClick = btGravarClick
  end
  object cbProduto: TComboBox
    Left = 56
    Top = 40
    Width = 353
    Height = 21
    Style = csDropDownList
    TabOrder = 3
  end
  object cbModulo: TComboBox
    Left = 56
    Top = 91
    Width = 353
    Height = 21
    Style = csDropDownList
    TabOrder = 4
  end
end
