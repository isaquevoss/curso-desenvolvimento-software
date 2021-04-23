object frmCadastroProblema: TfrmCadastroProblema
  Left = 0
  Top = 0
  Caption = 'frmCadastroProblema'
  ClientHeight = 242
  ClientWidth = 474
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object mmProblema: TMemo
    Left = 48
    Top = 24
    Width = 353
    Height = 89
    Hint = 'Digite seu problema'
    ParentShowHint = False
    ShowHint = True
    TabOrder = 0
  end
  object btCancelar: TButton
    Left = 296
    Top = 176
    Width = 75
    Height = 25
    Caption = 'Cancelar'
    TabOrder = 1
    OnClick = btCancelarClick
  end
  object btGravar: TButton
    Left = 80
    Top = 176
    Width = 75
    Height = 25
    Caption = 'Gravar'
    TabOrder = 2
    OnClick = btGravarClick
  end
end
