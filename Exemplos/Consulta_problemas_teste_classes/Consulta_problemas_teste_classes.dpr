program Consulta_problemas_teste_classes;

uses
  Vcl.Forms,
  uPrincipal in 'uPrincipal.pas' {Form4},
  uProblema in 'uProblema.pas',
  uSolucao in 'uSolucao.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TForm4, Form4);
  Application.Run;
end.
