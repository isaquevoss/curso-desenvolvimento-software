object Form1: TForm1
  Left = 0
  Top = 0
  Caption = 'Form1'
  ClientHeight = 425
  ClientWidth = 749
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
    Left = 616
    Top = 144
    Width = 31
    Height = 13
    Caption = 'Label1'
  end
  object Button1: TButton
    Left = 32
    Top = 24
    Width = 153
    Height = 25
    Caption = 'Classe Simples Cliente'
    TabOrder = 0
    OnClick = Button1Click
  end
  object Button2: TButton
    Left = 32
    Top = 71
    Width = 153
    Height = 25
    Caption = 'Classe Usuriario com heran'#231'a'
    TabOrder = 1
    OnClick = Button2Click
  end
  object Button3: TButton
    Left = 32
    Top = 112
    Width = 185
    Height = 25
    Caption = 'Classe NFe herdando DFE'
    TabOrder = 2
    OnClick = Button3Click
  end
  object Button4: TButton
    Left = 32
    Top = 150
    Width = 185
    Height = 25
    Caption = 'classe CTE herdando de DFE'
    TabOrder = 3
    OnClick = Button4Click
  end
  object Button5: TButton
    Left = 464
    Top = 24
    Width = 161
    Height = 25
    Caption = 'Gravar Usuario'
    TabOrder = 4
    OnClick = Button5Click
  end
  object Button6: TButton
    Left = 232
    Top = 24
    Width = 211
    Height = 25
    Caption = 'Gravar Cliente'
    TabOrder = 5
    OnClick = Button6Click
  end
  object Edit1: TEdit
    Left = 424
    Top = 152
    Width = 121
    Height = 21
    TabOrder = 6
    Text = 'Edit1'
  end
  object Button7: TButton
    Left = 496
    Top = 208
    Width = 185
    Height = 25
    Caption = 'Nome dos componentes'
    TabOrder = 7
    OnClick = Button7Click
  end
  object Button8: TButton
    Left = 496
    Top = 256
    Width = 185
    Height = 25
    Caption = 'Setar Foco em componentes'
    TabOrder = 8
    OnClick = Button8Click
  end
  object Button9: TButton
    Left = 288
    Top = 304
    Width = 75
    Height = 25
    Caption = 'Relat'#243'rio'
    TabOrder = 9
    OnClick = Button9Click
  end
  object FDQuery1: TFDQuery
    Connection = FDConnection1
    Left = 384
    Top = 112
  end
  object FDConnection1: TFDConnection
    Params.Strings = (
      'Database=C:\GDOOR Sistemas\GDOOR PRO\datages.FDB'
      'User_Name=sysdba'
      'Password=masterkey'
      'DriverID=FB')
    Connected = True
    Left = 328
    Top = 144
  end
  object FDGUIxWaitCursor1: TFDGUIxWaitCursor
    Provider = 'Forms'
    Left = 336
    Top = 216
  end
  object FDManager1: TFDManager
    FormatOptions.AssignedValues = [fvMapRules]
    FormatOptions.OwnMapRules = True
    FormatOptions.MapRules = <>
    Active = True
    Left = 312
    Top = 88
  end
end
