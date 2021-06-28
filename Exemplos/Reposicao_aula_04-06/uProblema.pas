unit uProblema;

interface

uses
  uSolucao, System.Generics.Collections, uDMConexao,
  FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf,
  FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt, Data.DB,
  FireDAC.Comp.DataSet, FireDAC.Comp.Client;

type

  TModulo = class
  private
    Fid: integer;
    Fnome: string;
  public
    property id: integer read Fid write Fid;
    property nome: string read Fnome write Fnome;
  end;

  TProduto = class
  private
  public
  end;

  TProblema = class
  private
    Fid: integer;
    Fdescricao: string;
    Fmodulo: TModulo;
    Fproduto: TProduto;
    FdataHora: TDateTime;
    Fsolucoes: TList<TSolucao>;

  public
    property id: integer read Fid write Fid;
    property descricao: string read Fdescricao write Fdescricao;
    property modulo: TModulo read Fmodulo write Fmodulo;
    property produto: TProduto read Fproduto write Fproduto;
    property dataHora: TDateTime read FdataHora write FdataHora;

    property solucoes: TList<TSolucao> read Fsolucoes write Fsolucoes;

    procedure gravarSolucoes();
    procedure carregarSolucoes();

    procedure gravar();
    procedure carregarPeloId(_id: integer);

    // uSolucao, System.Generics.Collections;

    constructor Create(id: integer = 0);

    function toString: string;
  end;

implementation

uses
  System.SysUtils;

procedure TProblema.carregarPeloId(_id: integer);
var
  qr: TFDQuery;
begin
  qr := TFDQuery.Create(nil);
  try
    qr.Connection := dmConexao.FDConnection1;

    qr.Open('select * from problemas where id = ' + intToStr(_id));

    id := qr.FieldByName('id').AsInteger;
    descricao := qr.FieldByName('descricao').AsString;
    dataHora := qr.FieldByName('data_hora').AsDateTime;

  finally
    qr.Free();
  end;
end;

procedure TProblema.carregarSolucoes;
var
  qr: TFDQuery;
  solucao: TSolucao;
begin
  qr := TFDQuery.Create(nil);
  try
    qr.Connection := dmConexao.FDConnection1;
    qr.SQL.Add('select * from problema_solucao where problema_id = :problema_id');
    qr.ParamByName('problema_id').AsInteger := id;
    qr.Open();

    while not qr.Eof do
    begin
      solucao := TSolucao.Create;
      solucao.carregarPeloId(qr.FieldByName('solucao_id').AsInteger);
      solucoes.Add(solucao);
      qr.Next();
    end;
  finally
    qr.Free;
  end;

end;

constructor TProblema.Create(id: integer = 0);
begin
  produto := TProduto.Create();
  modulo := TModulo.Create();

  solucoes := TList<TSolucao>.Create();
end;

procedure TProblema.gravar;
var
  qr: TFDQuery;
begin
  qr := TFDQuery.Create(nil);
  try
    qr.Connection := dmConexao.FDConnection1;
    qr.SQL.Add('INSERT INTO problemas(descricao,data_hora)');
    qr.SQL.Add(' VALUES(:descricao, :data_hora);');

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

    gravarSolucoes;

  finally
    qr.Free();
  end;
end;

procedure TProblema.gravarSolucoes;
var
  i: integer;
  qr: TFDQuery;
begin
  qr := TFDQuery.Create(nil);
  try
    qr.Connection := dmConexao.FDConnection1;
    qr.SQL.Add('insert into problema_solucao(problema_id,solucao_id)');
    qr.SQL.Add('values(:problema_id,:solucao_id)');
    for i := 0 to solucoes.Count - 1 do
    begin
      solucoes[i].gravar();
      qr.ParamByName('problema_id').AsInteger := id;
      qr.ParamByName('solucao_id').AsInteger := solucoes[i].id;
      qr.ExecSQL();
    end;
  finally
    qr.Free;
  end;
end;

function TProblema.toString: string;
begin
  Result := 'id '+ IntToStr(id);
  Result := Result + #13'descricao '+descricao;
end;

end.
