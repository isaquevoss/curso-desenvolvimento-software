object dmProblemas: TdmProblemas
  OldCreateOrder = False
  Height = 221
  Width = 430
  object QrProblemas: TFDQuery
    Connection = DataModule1.Conexao
    SQL.Strings = (
      'select * from problemas')
    Left = 24
    Top = 24
  end
  object dsProblemas: TDataSource
    DataSet = QrProblemas
    Left = 104
    Top = 24
  end
  object QrUpdateInsert: TFDQuery
    Connection = DataModule1.Conexao
    Left = 24
    Top = 80
  end
end
