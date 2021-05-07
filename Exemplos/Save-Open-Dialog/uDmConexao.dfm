object DmConexao: TDmConexao
  OldCreateOrder = False
  Height = 234
  Width = 444
  object FDConnection1: TFDConnection
    Params.Strings = (
      'OpenMode=OpenOrCreate'
      'DriverID=FB'
      'User_Name=sysdba'
      'Password=masterkey')
    Left = 40
    Top = 16
  end
  object FDPhysFBDriverLink1: TFDPhysFBDriverLink
    Left = 136
    Top = 16
  end
  object FDGUIxWaitCursor1: TFDGUIxWaitCursor
    Provider = 'Forms'
    ScreenCursor = gcrNone
    Left = 248
    Top = 16
  end
end
