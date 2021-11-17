object DataModule2: TDataModule2
  OldCreateOrder = False
  Height = 277
  Width = 350
  object FDConnection1: TFDConnection
    Params.Strings = (
      'Database=cadastro'
      'User_Name=root'
      'DriverID=MySQL')
    Left = 136
    Top = 144
  end
  object queryTabelas: TFDQuery
    Connection = FDConnection1
    Left = 264
    Top = 96
  end
end
