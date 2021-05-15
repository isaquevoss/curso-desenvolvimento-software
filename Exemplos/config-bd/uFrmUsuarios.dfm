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
    ExplicitLeft = 1
    ExplicitTop = -5
    ExplicitWidth = 523
    DesignSize = (
      477
      75)
    object Image1: TImage
      Left = 450
      Top = 0
      Width = 25
      Height = 25
      Anchors = []
      Picture.Data = {
        0B546478504E47496D61676589504E470D0A1A0A0000000D4948445200000032
        0000003208060000001E3F88B10000000473424954080808087C086488000001
        E8494441546843EDD8414A03311406E097816ED28D78826E9B2EF408F6008237
        B037D01BA827A8E001D41BE80D142FD04D4329083D81E8A25DB589042C8CA29D
        97E4FD524A064A374926DF7BC9CCCB28DA914BED88830A64DB3259325232028A
        40595AA0C0260FCBCA8831E65029753A9FCFAF66B3D97BF2DD223A1A632E9C73
        CF93C9E489D38D05E9F57AD74474E6BD1F2D168B3E1A638CB9554A0DBCF78FD6
        DA133148A7D3D96BB7DB213207684C0DF1414447D6DA9118240CF41F98544498
        1F6B69AD2382C4E420A221A8CCE4229220D218094432440A2385C882E4622411
        D990548C344204128B4120C4205C0C0A210A69C22011E290BF305AEBE157ED14
        5576704A93759BA8373B77E07A05E09C7B534AED13110C01C948BD9CD15ABF06
        84736EB55AADFAD3E9F4851B8CD876908C8449843D41440322724AA90A5D3543
        20F58DBD5C2E8F5BADD60DFA08200EF9EDE984AC9A219B7DD323168D11CB08E7
        3D81C488403808F4E12C1B12834062B22029081426199283406092201208694C
        344412218989822010521836048990C0B020DD6EF7BCAAAAA1F71E5A8AFF3CCF
        10D1FD783C0E8567E3C58284AFF14474197EDC6FB18D77DED02054005AEB3B22
        7AB0D686FFC68B05691C650B1A14C81624E1DB144A464A464011284B0B14D8E4
        614B46924307EAF8092E945251197175490000000049454E44AE426082}
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
    end
    object Button2: TButton
      Left = 135
      Top = 26
      Width = 75
      Height = 25
      Caption = 'Alterar'
      TabOrder = 1
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
    ExplicitLeft = 40
    ExplicitTop = 184
    ExplicitWidth = 185
    ExplicitHeight = 41
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
