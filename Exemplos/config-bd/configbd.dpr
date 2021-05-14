program configbd;

uses
  Vcl.Forms,

  System.SysUtils,
  Vcl.Controls,

  uPrincipal in 'uPrincipal.pas' {Form4} ,
  uDMConexao in 'uDMConexao.pas' {dmConexao: TDataModule} ,
  uConfig in 'uConfig.pas', Vcl.Dialogs {frmConfig};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TForm4, Form4);
  Application.CreateForm(TdmConexao, dmConexao);
  Application.CreateForm(TfrmConfig, frmConfig);

  if not FileExists('configbd.ini') then
  begin
    if frmConfig.ShowModal <> mrOk then
    begin
      exit;
    end;

  end;

  try
    dmConexao.conectarBanco();
  except
    on E: Exception do
    begin
      ShowMessage('Ocorreu um erro ao conectar no banco de dados, verifique as configurações.');
      if frmConfig.ShowModal() = mrOk then
      begin
        dmConexao.conectarBanco();
      end;

    end;
  end;


  Application.Run;

end.
