program Classes;

uses
  Vcl.Forms,
  uPrincipal in 'uPrincipal.pas' {Form4},
  uPessoa in 'uPessoa.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TForm4, Form4);
  Application.Run;
end.
