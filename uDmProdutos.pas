unit uDmProdutos;

interface

uses
  System.SysUtils, System.Classes, uDmConexao, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS,
  FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt,
  Data.DB, FireDAC.Comp.DataSet, FireDAC.Comp.Client;

type
  TdmProdutos = class(TDataModule)
    QrProdutos: TFDQuery;
    QrBuscar: TFDQuery;
  private
    { Private declarations }
  public
    { Public declarations }
    procedure carregarQrProdutos();
    function buscarIdProdutoPorDescricao(descricao: string): integer;
  end;

var
  dmProdutos: TdmProdutos;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

{$R *.dfm}

{ TdmProdutos }
 //function buscarIdProdutoPorDescricao(descricao: string): integer;
function TdmProdutos.buscarIdProdutoPorDescricao(descricao: string): integer;
begin
  QrBuscar.SQL.Clear();
  QrBuscar.SQL.Add('select id from produtos where nome = :nome');
  QrBuscar.ParamByName('nome').AsString := descricao;
  QrBuscar.Open();

  if QrBuscar.RecordCount = 0 then
  begin
    raise Exception.Create('Não foi encontrado módulo com a seguinte descricao: "'+descricao+'"');
  end;

  Result := QrBuscar.FieldByName('id').AsInteger;
end;

procedure TdmProdutos.carregarQrProdutos;
begin
  QrProdutos.SQL.Clear();
  QrProdutos.SQL.Add('select * from produtos');
  QrProdutos.Open();
end;

end.
