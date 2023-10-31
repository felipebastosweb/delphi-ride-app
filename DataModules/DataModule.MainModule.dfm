object DataModule1: TDataModule1
  Height = 480
  Width = 640
  object FDConnection1: TFDConnection
    ConnectionName = 'rideapp'
    Params.Strings = (
      'DriverID=SQLite'
      
        'Database=C:\Users\Laborat'#243'rio\Documents\Embarcadero\Studio\Proje' +
        'cts\RideApp\DataModules\database.sqlite'
      'LockingMode=Normal')
    LoginPrompt = False
    AfterConnect = FDConnection1AfterConnect
    BeforeConnect = FDConnection1BeforeConnect
    Left = 48
    Top = 24
  end
  object FDQuery1: TFDQuery
    Left = 152
    Top = 16
  end
end
