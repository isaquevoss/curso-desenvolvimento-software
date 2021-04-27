unit uDmSolucao;

interface

uses
  System.SysUtils, System.Classes, uDmConexao, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf,
  FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt, Data.DB,
  FireDAC.Comp.DataSet, FireDAC.Comp.Client;

type
  TdmSolucao = class(TDataModule)
    qrUpdateInsert: TFDQuery;
  private
    { Private declarations }
  public
    { Public declarations }
    function salvarSolucao(descricao: string): Boolean;
  end;

var
  dmSolucao: TdmSolucao;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

{$R *.dfm}

{ TdmSolucao }

function TdmSolucao.salvarSolucao(descricao: string): Boolean;
begin
  qrUpdateInsert.SQL.Clear();

  qrUpdateInsert.SQL.Add('insert into solucoes (descricao) values (:descricao)');
  qrUpdateInsert.ParamByName('descricao').AsString := descricao;

  qrUpdateInsert.ExecSQL();
end;

end.
