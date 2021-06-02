program Consulta_problemas_teste_classes;

uses
  Vcl.Forms,
  uPrincipal in 'uPrincipal.pas' {Form4},
  uProblema in 'uProblema.pas',
  uSolucao in 'uSolucao.pas',
  uDMConexao in 'uDMConexao.pas' {dmConexao: TDataModule};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TForm4, Form4);
  Application.CreateForm(TdmConexao, dmConexao);
  Application.Run;
end.
