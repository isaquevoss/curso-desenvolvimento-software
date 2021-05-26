unit uUsuario;

interface
  uses uDmUsuarios;


type

  TUsuario = class
  private
    Fid: Integer;
    Fnome: string;

  public
    property id: Integer read Fid write Fid;
    property nome: string read Fnome write Fnome;

    procedure carregarPeloId(_id: integer);
    procedure gravar();
    procedure deletar();
  end;

implementation

uses
  System.SysUtils;

{ TUsuario }

procedure TUsuario.carregarPeloId(_id: integer);
begin
  dmUsuarios.QrBuscarUsuario.Open('select * from usuarios where id ='+IntToStr(_id));
  if dmUsuarios.QrBuscarUsuario.RecordCount > 0 then
  begin
    id := dmUsuarios.QrBuscarUsuario.FieldByName('id').AsInteger;
    nome := dmUsuarios.QrBuscarUsuario.FieldByName('nome').AsString;
  end;
end;

procedure TUsuario.deletar;
begin
 //
end;

procedure TUsuario.gravar;
begin
  dmUsuarios.QrUpdateInsert.SQL.Clear();
  dmUsuarios.QrUpdateInsert.SQL.Add('update usuarios set nome = :nome where id = :id');
  dmUsuarios.QrUpdateInsert.ParamByName('id').AsInteger := id;
  dmUsuarios.QrUpdateInsert.ParamByName('nome').AsString := nome;
  dmUsuarios.QrUpdateInsert.ExecSQL();
end;

end.
