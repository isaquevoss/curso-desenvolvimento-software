object Form3: TForm3
  Left = 0
  Top = 0
  Caption = 'Form3'
  ClientHeight = 366
  ClientWidth = 527
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object Button1: TButton
    Left = 384
    Top = 331
    Width = 75
    Height = 25
    Caption = 'Button1'
    TabOrder = 0
    OnClick = Button1Click
  end
  object ComboBox1: TComboBox
    Left = 64
    Top = 64
    Width = 145
    Height = 21
    ItemIndex = 1
    TabOrder = 1
    Text = 'Op'#231#227'o 2'
    Items.Strings = (
      'Op'#231#227'o 1'
      'Op'#231#227'o 2'
      'Op'#231#227'o 3'
      'Op'#231#227'o 4')
  end
  object ComboBox2: TComboBox
    Left = 314
    Top = 64
    Width = 145
    Height = 21
    TabOrder = 2
    Text = 'ComboBox1'
    Items.Strings = (
      'Op'#231#227'o 1'
      'Op'#231#227'o 2'
      'Op'#231#227'o 3'
      'Op'#231#227'o 4')
  end
  object Edit1: TEdit
    Left = 64
    Top = 120
    Width = 145
    Height = 21
    TabOrder = 3
    Text = 'Edit1'
  end
  object Edit2: TEdit
    Left = 314
    Top = 120
    Width = 145
    Height = 21
    TabOrder = 4
    Text = 'Edit1'
  end
  object DateTimePicker1: TDateTimePicker
    Left = 64
    Top = 168
    Width = 186
    Height = 21
    Date = 44315.796514398150000000
    Time = 44315.796514398150000000
    TabOrder = 5
  end
  object CheckBox1: TCheckBox
    Left = 64
    Top = 224
    Width = 97
    Height = 17
    Caption = 'CheckBox1'
    TabOrder = 6
  end
  object RadioGroup1: TRadioGroup
    Left = 290
    Top = 184
    Width = 185
    Height = 105
    Caption = 'RadioGroup1'
    ItemIndex = 0
    Items.Strings = (
      'Op'#231#227'o 1'
      'Op'#231#227'o 2'
      'Op'#231#227'o 3'
      'Op'#231#227'o 4'
      'Op'#231#227'o 5')
    TabOrder = 7
  end
  object Button2: TButton
    Left = 56
    Top = 328
    Width = 75
    Height = 25
    Caption = 'Carregar Ini'
    TabOrder = 8
    OnClick = Button2Click
  end
  object Button3: TButton
    Left = 314
    Top = 8
    Width = 75
    Height = 25
    Caption = 'Button3'
    TabOrder = 9
    OnClick = Button3Click
  end
  object EdArquivo: TEdit
    Left = 144
    Top = 8
    Width = 121
    Height = 21
    TabOrder = 10
    Text = 'EdArquivo'
  end
  object OpenDialog1: TOpenDialog
    Options = [ofHideReadOnly, ofAllowMultiSelect, ofEnableSizing]
    Left = 88
    Top = 8
  end
  object SaveDialog1: TSaveDialog
    Left = 168
    Top = 8
  end
end
