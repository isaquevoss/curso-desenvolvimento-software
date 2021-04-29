object Form3: TForm3
  Left = 0
  Top = 0
  Caption = 'Form3'
  ClientHeight = 332
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
    Top = 299
    Width = 75
    Height = 25
    Caption = 'Button1'
    TabOrder = 0
    OnClick = Button1Click
  end
  object ComboBox1: TComboBox
    Left = 64
    Top = 32
    Width = 145
    Height = 21
    TabOrder = 1
    Text = 'ComboBox1'
  end
  object ComboBox2: TComboBox
    Left = 314
    Top = 32
    Width = 145
    Height = 21
    TabOrder = 2
    Text = 'ComboBox1'
  end
  object Edit1: TEdit
    Left = 64
    Top = 88
    Width = 145
    Height = 21
    TabOrder = 3
    Text = 'Edit1'
  end
  object Edit2: TEdit
    Left = 314
    Top = 88
    Width = 145
    Height = 21
    TabOrder = 4
    Text = 'Edit1'
  end
  object DateTimePicker1: TDateTimePicker
    Left = 64
    Top = 136
    Width = 186
    Height = 21
    Date = 44315.796514398150000000
    Time = 44315.796514398150000000
    TabOrder = 5
  end
  object CheckBox1: TCheckBox
    Left = 64
    Top = 200
    Width = 97
    Height = 17
    Caption = 'CheckBox1'
    TabOrder = 6
  end
  object RadioGroup1: TRadioGroup
    Left = 274
    Top = 136
    Width = 185
    Height = 105
    Caption = 'RadioGroup1'
    Items.Strings = (
      'Op'#231#227'o 1'
      'Op'#231#227'o 2'
      'Op'#231#227'o 3'
      'Op'#231#227'o 4'
      'Op'#231#227'o 5')
    TabOrder = 7
  end
end
