object dmConexao: TdmConexao
  OldCreateOrder = False
  Height = 150
  Width = 426
  object FDConnection1: TFDConnection
    Params.Strings = (
      'User_Name=root'
      'Password=root'
      'Server=192.168.1.113'
      'DriverID=MySQL')
    Left = 40
    Top = 24
  end
  object FDGUIxWaitCursor1: TFDGUIxWaitCursor
    Provider = 'Forms'
    Left = 144
    Top = 24
  end
  object FDPhysMySQLDriverLink1: TFDPhysMySQLDriverLink
    Left = 264
    Top = 24
  end
end
