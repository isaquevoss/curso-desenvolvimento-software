object frmUsuarios: TfrmUsuarios
  Left = 0
  Top = 0
  Align = alClient
  BorderStyle = bsNone
  Caption = 'frmUsuarios'
  ClientHeight = 299
  ClientWidth = 477
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  OnShow = FormShow
  ExplicitWidth = 320
  ExplicitHeight = 240
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 477
    Height = 75
    Align = alTop
    BevelOuter = bvNone
    TabOrder = 0
    DesignSize = (
      477
      75)
    object Image1: TImage
      Left = 450
      Top = 0
      Width = 25
      Height = 25
      Anchors = []
      Proportional = True
      Stretch = True
      OnClick = Image1Click
      ExplicitLeft = 448
    end
    object Button1: TButton
      Left = 40
      Top = 26
      Width = 75
      Height = 25
      Caption = 'Novo'
      TabOrder = 0
      OnClick = Button1Click
    end
    object Button2: TButton
      Left = 135
      Top = 26
      Width = 75
      Height = 25
      Caption = 'Alterar'
      TabOrder = 1
      OnClick = Button2Click
    end
    object Button3: TButton
      Left = 232
      Top = 26
      Width = 75
      Height = 25
      Caption = 'Excluir'
      TabOrder = 2
      OnClick = Button3Click
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 75
    Width = 477
    Height = 224
    Align = alClient
    TabOrder = 1
    object DBGrid1: TDBGrid
      Left = 1
      Top = 1
      Width = 475
      Height = 222
      Align = alClient
      DataSource = dmUsuarios.dsUsuarios
      TabOrder = 0
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'Tahoma'
      TitleFont.Style = []
    end
  end
end
