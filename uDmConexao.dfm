object DataModule1: TDataModule1
  OldCreateOrder = False
  Height = 211
  Width = 372
  object FDGUIxWaitCursor1: TFDGUIxWaitCursor
    Provider = 'Forms'
    Left = 76
    Top = 144
  end
  object FDPhysMySQLDriverLink1: TFDPhysMySQLDriverLink
    Left = 72
    Top = 88
  end
  object Conexao: TFDConnection
    Params.Strings = (
      'Database=consulta_problemas'
      'User_Name=root'
      'Password=root'
      'Port=3330612'
      'Server=127.0.0.1'
      'DriverID=MySQL'
      'Compress=True')
    Left = 72
    Top = 32
  end
end
