unit Model.Cidades.DM;

interface

uses
  System.SysUtils, System.Classes, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf,
  FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt, Data.DB,
  FireDAC.Comp.DataSet, FireDAC.Comp.Client, Model.Conexao.DM;

type
  TModelCidadesDM = class(TDataModule)
    QCidadesCadastro: TFDQuery;
    QCidadesBuscar: TFDQuery;
    QCidadesCadastroID: TIntegerField;
    QCidadesCadastroNOME: TStringField;
    QCidadesCadastroUF: TStringField;
    QCidadesCadastroCODIGO_IBGE: TIntegerField;
    QCidadesBuscarID: TIntegerField;
    QCidadesBuscarNOME: TStringField;
    QCidadesBuscarUF: TStringField;
    QCidadesBuscarCODIGO_IBGE: TIntegerField;
  private

  public
    procedure CidadesBuscar(const ACondicao: string);
    procedure CadastrarGet(const AIdCidade: Integer);
  end;

var
  ModelCidadesDM: TModelCidadesDM;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

{$R *.dfm}

procedure TModelCidadesDM.CadastrarGet(const AIdCidade: Integer);
begin
  QCidadesCadastro.Close;
  QCidadesCadastro.SQL.Clear;
  QCidadesCadastro.SQL.Add('select * from cidades');
  QCidadesCadastro.SQL.Add('where(id = :IdCidade)');
  QCidadesCadastro.ParamByName('IdCidade').AsInteger := AIdCidade;
  QCidadesCadastro.Open;
end;

procedure TModelCidadesDM.CidadesBuscar(const ACondicao: string);
begin
  QCidadesBuscar.Close;
  QCidadesBuscar.SQL.Clear;
  QCidadesBuscar.SQL.Add('select * from cidades');
  QCidadesBuscar.SQL.Add(ACondicao);
  QCidadesBuscar.Open;
end;

end.
