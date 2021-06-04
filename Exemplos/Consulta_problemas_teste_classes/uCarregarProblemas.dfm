object Form1: TForm1
  Left = 0
  Top = 0
  Caption = 'Form1'
  ClientHeight = 242
  ClientWidth = 521
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object grid: TStringGrid
    Left = 0
    Top = 48
    Width = 521
    Height = 194
    Align = alBottom
    ColCount = 3
    FixedCols = 0
    RowCount = 2
    Options = [goFixedVertLine, goFixedHorzLine, goVertLine, goHorzLine, goRangeSelect, goEditing]
    TabOrder = 0
    OnDblClick = gridDblClick
    ColWidths = (
      56
      322
      122)
    RowHeights = (
      24
      24)
  end
  object Button1: TButton
    Left = 416
    Top = 17
    Width = 75
    Height = 25
    Caption = 'Carregar'
    TabOrder = 1
    OnClick = Button1Click
  end
  object qrProblemas: TFDQuery
    Connection = dmConexao.FDConnection1
    Left = 168
  end
end
