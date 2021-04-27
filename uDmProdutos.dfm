object dmProdutos: TdmProdutos
  OldCreateOrder = False
  Height = 150
  Width = 215
  object QrProdutos: TFDQuery
    Connection = DataModule1.Conexao
    Left = 48
    Top = 24
  end
  object QrBuscar: TFDQuery
    Connection = DataModule1.Conexao
    Left = 41
    Top = 80
  end
end
