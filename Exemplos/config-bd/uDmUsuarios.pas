unit uDmUsuarios;

interface

uses
  System.SysUtils, System.Classes, uDMConexao, FireDAC.Stan.Intf,
  FireDAC.Stan.Option,
  FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf,
  FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt, Data.DB,
  FireDAC.Comp.DataSet, FireDAC.Comp.Client;

type
  TdmUsuarios = class(TDataModule)
    QrUsuarios: TFDQuery;
    QrUpdateInsert: TFDQuery;
    dsUsuarios: TDataSource;
  private
    { Private declarations }
  public
    procedure carregarQrUsuarios();

    function deletarUsuario(id: integer): Boolean;

    function cadastrarUsuario(nome:string): Boolean;

    function alterarUsuario(id: Integer; nome: string): Boolean;


    procedure atualizarQrUsuarios();
  end;

var
  dmUsuarios: TdmUsuarios;

implementation

{ %CLASSGROUP 'Vcl.Controls.TControl' }

{$R *.dfm}
{ TdmUsuarios }

function TdmUsuarios.alterarUsuario(id: Integer; nome: string): Boolean;
begin
  QrUpdateInsert.SQL.Clear();

  QrUpdateInsert.SQL.Add('update usuarios set nome = :nome where id = :id');
  QrUpdateInsert.ParamByName('id').AsInteger := id;
  QrUpdateInsert.ParamByName('nome').AsString := nome;
  QrUpdateInsert.ExecSQL();
end;

procedure TdmUsuarios.atualizarQrUsuarios;
begin
  QrUsuarios.Refresh();
end;

function TdmUsuarios.cadastrarUsuario(nome: string): Boolean;
begin
  QrUpdateInsert.SQL.Clear();

  QrUpdateInsert.SQL.Add('insert into usuarios(nome)values(:nome)');
  QrUpdateInsert.ParamByName('nome').AsString := nome;
  QrUpdateInsert.ExecSQL();
end;

procedure TdmUsuarios.carregarQrUsuarios;
begin
  QrUsuarios.Open('select * from usuarios');
end;

function TdmUsuarios.deletarUsuario(id: integer): Boolean;
begin

  QrUpdateInsert.SQL.Clear();
  QrUpdateInsert.SQL.Add('delete from usuarios where id = :id');
  QrUpdateInsert.ParamByName('id').AsInteger := id;
  QrUpdateInsert.ExecSQL();

  atualizarQrUsuarios();

  Result := True;

end;

end.
