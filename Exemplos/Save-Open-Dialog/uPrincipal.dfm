object frmPrincipal: TfrmPrincipal
  Left = 0
  Top = 0
  Caption = 'frmPrincipal'
  ClientHeight = 305
  ClientWidth = 524
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  Menu = MainMenu1
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object EdAbrirArquivo: TEdit
    Left = 80
    Top = 56
    Width = 305
    Height = 21
    TabOrder = 0
  end
  object EdSalvarArquivo: TEdit
    Left = 80
    Top = 104
    Width = 305
    Height = 21
    TabOrder = 1
  end
  object btAbrirArquivo: TButton
    Left = 416
    Top = 54
    Width = 75
    Height = 25
    Caption = 'Abrir'
    TabOrder = 2
    OnClick = btAbrirArquivoClick
  end
  object btSalvarArquivo: TButton
    Left = 416
    Top = 102
    Width = 75
    Height = 25
    Caption = 'Salvar'
    TabOrder = 3
    OnClick = btSalvarArquivoClick
  end
  object ToolBar1: TToolBar
    Left = 0
    Top = 0
    Width = 524
    Height = 29
    ButtonHeight = 21
    ButtonWidth = 43
    Caption = 'ToolBar1'
    Menu = MainMenu1
    ShowCaptions = True
    TabOrder = 4
  end
  object Button1: TButton
    Left = 216
    Top = 184
    Width = 75
    Height = 25
    Caption = 'Conectar'
    TabOrder = 5
    OnClick = Button1Click
  end
  object OpenDialog1: TOpenDialog
    Left = 224
    Top = 224
  end
  object SaveDialog1: TSaveDialog
    Left = 312
    Top = 224
  end
  object PopupMenu1: TPopupMenu
    Left = 128
    Top = 144
    object Configurar1: TMenuItem
      Caption = 'Configurar'
    end
  end
  object MainMenu1: TMainMenu
    Left = 56
    Top = 216
    object Opes1: TMenuItem
      Caption = 'Op'#231#245'es'
      object Configurar2: TMenuItem
        Caption = 'Configurar'
      end
    end
  end
end
