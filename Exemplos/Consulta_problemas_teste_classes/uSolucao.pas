unit uSolucao;

interface

uses
  System.Generics.Collections, uDMConexao,
  FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf,
  FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt, Data.DB,
  FireDAC.Comp.DataSet, FireDAC.Comp.Client;

type

  TSolucao = class
  private
    Fid: Integer;
    Fdescricao: string;
    FdataHora: TDateTime;

  public
    property id: Integer read Fid write Fid;
    property descricao: string read Fdescricao write Fdescricao;
    property dataHora: TDateTime read FdataHora write FdataHora;

    procedure gravar();
    procedure carregarPeloId(_id: Integer);
    function toString(): string;
  end;

implementation

uses
  System.SysUtils;

{ TSolucao }

procedure TSolucao.carregarPeloId(_id: Integer);
var
  qr: TFDQuery;
begin
  qr := TFDQuery.Create(nil);
  try
    qr.Connection := dmConexao.FDConnection1;

    qr.Open('select * from solucoes where id = ' + IntToStr(_id));
    id := qr.FieldByName('id').AsInteger;
    descricao := qr.FieldByName('descricao').AsString;
    dataHora := qr.FieldByName('data_hora').AsDateTime;

  finally
    qr.Free();
  end;
end;

procedure TSolucao.gravar;
var
  qr: TFDQuery;
begin
  qr := TFDQuery.Create(nil);
  try
    qr.Connection := dmConexao.FDConnection1;
    qr.SQL.Add('INSERT INTO solucoes(descricao,data_hora)');
    qr.SQL.Add(' VALUES(:descricao, :data_hora)');

    qr.ParamByName('descricao').AsString := descricao;
    qr.ParamByName('data_hora').AsDateTime := dataHora;

    qr.ExecSQL();

    if id = 0 then
    begin
      qr.close();
      qr.SQL.Clear();
      qr.Open('select last_insert_id();');
      id := qr.Fields[0].AsInteger;
    end;

  finally
    qr.Free();
  end;
end;

function TSolucao.toString: string;
begin
  Result := IntToStr(id)+' '+descricao;
end;

end.
