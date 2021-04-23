object dmModulos: TdmModulos
  OldCreateOrder = False
  Height = 150
  Width = 215
  object QrModulos: TFDQuery
    Connection = DataModule1.Conexao
    Left = 24
    Top = 16
  end
  object QrBuscar: TFDQuery
    Connection = DataModule1.Conexao
    Left = 24
    Top = 72
  end
end
