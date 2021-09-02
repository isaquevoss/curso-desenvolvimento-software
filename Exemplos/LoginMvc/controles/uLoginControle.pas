unit uLoginControle;

interface

uses
  uUsuario, Vcl.Dialogs, System.SysUtils, uLogHelper;

type
  TLoginControle = class
  private
    FgravarLog: Boolean;
    function buscaUsuarioPorEmail(_email: string): TUsuario;
    function verificarSenhaCorreta(_usuario: TUsuario; senha: string): Boolean;
  public
    function login(email, senha: string): Boolean;

    property gravarLog: Boolean read FgravarLog write FgravarLog;
  end;

var
  LoginControle: TLoginControle;
  usuarioLogado: TUsuario;

implementation

{ TLoginControle }

function TLoginControle.buscaUsuarioPorEmail(_email: string): TUsuario;
begin
  if gravarLog then
    gravaLog('buscando usuario por email');
  if _email = 'isaque@gdoor.com.br' then
  begin
    Result := TUsuario.Create;
    Result.email := 'isaque@gdoor.com.br';
    Result.password := '123456';
  end
  else
    raise Exception.Create('Usuário não existe');

end;

function TLoginControle.login(email, senha: string): Boolean;
var
  usuario: TUsuario;
begin
  if gravarLog then
    gravaLog('tentando Login');

  try

    usuario := buscaUsuarioPorEmail(email);
    verificarSenhaCorreta(usuario,senha);
    usuarioLogado := usuario;
    Result := True;
  except
    on E: Exception do
    begin
      gravaLog('Erro no login: '#13+e.Message);
      raise Exception.Create('Usuário ou senha incorretos');
    end;
  end;

  Result := True;

  ShowMessage('login deu certo');
end;

function TLoginControle.verificarSenhaCorreta(_usuario: TUsuario; senha: string): Boolean;
begin
  if _usuario.password = senha then
    Result := True
  else
    raise Exception.Create('Senha Incorreta');

end;

end.

