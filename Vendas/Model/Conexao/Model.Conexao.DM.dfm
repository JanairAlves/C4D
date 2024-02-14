object ModelConexaoDM: TModelConexaoDM
  Height = 190
  Width = 566
  object FDConnection1: TFDConnection
    Params.Strings = (
      
        'Database=C:\Users\janai\OneDrive\Desktop\ProjetosDelphi\Vendas\D' +
        'ados\DADOS.FDB'
      'User_Name=sysdba'
      'Password=masterkey'
      'DriverID=FB')
    Connected = True
    LoginPrompt = False
    Left = 104
    Top = 40
  end
  object FDGUIxWaitCursor1: TFDGUIxWaitCursor
    Provider = 'Forms'
    Left = 256
    Top = 40
  end
  object FDPhysFBDriverLink1: TFDPhysFBDriverLink
    Left = 424
    Top = 40
  end
end
