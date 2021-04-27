unit uDmModulos;

interface

uses
  System.SysUtils, System.Classes, uDmConexao, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS,
  FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt,
  Data.DB, FireDAC.Comp.DataSet, FireDAC.Comp.Client;

type
  TdmModulos = class(TDataModule)
    QrModulos: TFDQuery;
    QrBuscar: TFDQuery;
  private
    { Private declarations }
  public
    { Public declarations }
    procedure carregarQrModulos();
    function buscarIdModuloPorDescricao(descricao: string): Integer;
  end;

var
  dmModulos: TdmModulos;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

{$R *.dfm}

{ TdmModulos }

function TdmModulos.buscarIdModuloPorDescricao(descricao: string): Integer;
begin
  QrBuscar.SQL.Clear();
  QrBuscar.SQL.Add('select id from modulos where nome = :nome');
  QrBuscar.ParamByName('nome').AsString := descricao;
  QrBuscar.Open();

  if QrBuscar.RecordCount = 0 then
  begin
    raise Exception.Create('Não foi encontrado módulo com a seguinte descricao: "'+descricao+'"');
  end;

  Result := QrBuscar.FieldByName('id').AsInteger;
end;

procedure TdmModulos.carregarQrModulos;
begin
  QrModulos.SQL.Clear();
  QrModulos.SQL.Add('select * from modulos');
  QrModulos.Open();
end;

end.
