object Form2: TForm2
  Left = 0
  Top = 0
  Caption = 'Form2'
  ClientHeight = 299
  ClientWidth = 635
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  OnActivate = FormActivate
  PixelsPerInch = 96
  TextHeight = 13
  object Notebook1: TNotebook
    Left = 56
    Top = 31
    Width = 262
    Height = 142
    PageIndex = 3
    TabOrder = 0
    object TPage
      Left = 0
      Top = 0
      Caption = 'Default'
      ExplicitWidth = 150
      ExplicitHeight = 150
      object Label1: TLabel
        Left = 88
        Top = 16
        Width = 33
        Height = 13
        Caption = 'Pag Ini'
      end
      object Edit2: TEdit
        Left = 0
        Top = 40
        Width = 121
        Height = 21
        TabOrder = 0
        Text = 'Edit1'
      end
      object Edit32: TEdit
        Left = 13
        Top = 87
        Width = 121
        Height = 21
        TabOrder = 1
        Text = 'Edit1'
      end
      object Edit33: TEdit
        Left = 13
        Top = 95
        Width = 121
        Height = 21
        TabOrder = 2
        Text = 'Edit1'
      end
      object Edit34: TEdit
        Left = 13
        Top = 96
        Width = 121
        Height = 21
        TabOrder = 3
        Text = 'Edit1'
      end
    end
    object TPage
      Left = 0
      Top = 0
      Caption = 'pag1'
      ExplicitWidth = 0
      ExplicitHeight = 0
    end
    object TPage
      Left = 0
      Top = 0
      Caption = 'pag2'
      ExplicitWidth = 0
      ExplicitHeight = 0
    end
    object TPage
      Left = 0
      Top = 0
      Caption = 'pag3'
      ExplicitWidth = 0
      ExplicitHeight = 0
      object Edit35: TEdit
        Left = 26
        Top = 45
        Width = 121
        Height = 21
        TabOrder = 0
        Text = 'Edit1'
      end
      object Edit36: TEdit
        Left = 26
        Top = 72
        Width = 121
        Height = 21
        TabOrder = 1
        Text = 'Edit1'
      end
      object Edit37: TEdit
        Left = 26
        Top = 18
        Width = 121
        Height = 21
        TabOrder = 2
        Text = 'Edit1'
      end
    end
  end
  object Button1: TButton
    Left = 368
    Top = 16
    Width = 75
    Height = 25
    Caption = 'pag default'
    TabOrder = 1
    OnClick = Button1Click
  end
  object Button2: TButton
    Left = 368
    Top = 47
    Width = 75
    Height = 25
    Caption = 'pag 2'
    TabOrder = 2
    OnClick = Button2Click
  end
  object Button3: TButton
    Left = 56
    Top = 208
    Width = 187
    Height = 25
    Caption = 'proxima pag'
    TabOrder = 3
    OnClick = Button3Click
  end
end
