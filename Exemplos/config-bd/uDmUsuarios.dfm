object dmUsuarios: TdmUsuarios
  OldCreateOrder = False
  Height = 232
  Width = 411
  object QrUsuarios: TFDQuery
    Connection = dmConexao.FDConnection1
    Left = 32
    Top = 16
  end
  object QrUpdateInsert: TFDQuery
    Connection = dmConexao.FDConnection1
    Left = 32
    Top = 80
  end
  object dsUsuarios: TDataSource
    DataSet = QrUsuarios
    Left = 104
    Top = 16
  end
end
