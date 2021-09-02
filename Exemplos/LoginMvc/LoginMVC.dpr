program LoginMVC;

uses
  Vcl.Forms,
  uLogin in 'view\uLogin.pas' {Form1},
  uLoginControle in 'controles\uLoginControle.pas',
  uUsuario in 'modelos\uUsuario.pas',
  uLogHelper in 'helpers\uLogHelper.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TForm1, Form1);
  Application.Run;
end.
