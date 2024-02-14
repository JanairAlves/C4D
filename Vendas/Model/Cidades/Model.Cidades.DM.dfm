object ModelCidadesDM: TModelCidadesDM
  Height = 189
  Width = 622
  object QCidadesCadastro: TFDQuery
    Connection = ModelConexaoDM.FDConnection1
    SQL.Strings = (
      'SELECT * FROM cidades')
    Left = 48
    Top = 56
    object QCidadesCadastroID: TIntegerField
      DisplayLabel = 'C'#243'digo'
      FieldName = 'ID'
      Origin = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object QCidadesCadastroNOME: TStringField
      DisplayLabel = 'Nome'
      FieldName = 'NOME'
      Origin = 'NOME'
      Size = 60
    end
    object QCidadesCadastroUF: TStringField
      FieldName = 'UF'
      Origin = 'UF'
      Size = 2
    end
    object QCidadesCadastroCODIGO_IBGE: TIntegerField
      DisplayLabel = 'C'#243'digo IBGE'
      FieldName = 'CODIGO_IBGE'
      Origin = 'CODIGO_IBGE'
    end
  end
  object QCidadesBuscar: TFDQuery
    Connection = ModelConexaoDM.FDConnection1
    SQL.Strings = (
      'SELECT * FROM cidades')
    Left = 168
    Top = 56
    object QCidadesBuscarID: TIntegerField
      DisplayLabel = 'C'#243'digo'
      FieldName = 'ID'
      Origin = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object QCidadesBuscarNOME: TStringField
      DisplayLabel = 'Nome'
      FieldName = 'NOME'
      Origin = 'NOME'
      Size = 60
    end
    object QCidadesBuscarUF: TStringField
      FieldName = 'UF'
      Origin = 'UF'
      Size = 2
    end
    object QCidadesBuscarCODIGO_IBGE: TIntegerField
      DisplayLabel = 'C'#243'digo IBGE'
      FieldName = 'CODIGO_IBGE'
      Origin = 'CODIGO_IBGE'
    end
  end
end
