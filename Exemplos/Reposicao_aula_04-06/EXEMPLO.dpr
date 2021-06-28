program EXEMPLO;

uses
  Vcl.Forms,
  uDMConexao in 'uDMConexao.pas' {dmConexao: TDataModule},
  uPrincpal in 'uPrincpal.pas' {Form1},
  uProblema in 'uProblema.pas',
  uSolucao in 'uSolucao.pas',
  uProblema2 in 'uProblema2.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TForm1, Form1);
  Application.CreateForm(TdmConexao, dmConexao);
  Application.CreateForm(TForm1, Form1);
  Application.Run;
end.
