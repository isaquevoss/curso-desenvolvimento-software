object frmPrincipal: TfrmPrincipal
  Left = 0
  Top = 0
  Caption = 'frmPrincipal'
  ClientHeight = 414
  ClientWidth = 868
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poMainFormCenter
  PixelsPerInch = 96
  TextHeight = 13
  object pnMenu: TPanel
    Left = 0
    Top = 0
    Width = 868
    Height = 80
    Align = alTop
    TabOrder = 0
    object btCadstroProblemas: TButton
      Left = 48
      Top = 28
      Width = 145
      Height = 25
      Caption = 'Cadastro de problemas'
      TabOrder = 0
      OnClick = btCadstroProblemasClick
    end
  end
end
