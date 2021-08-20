program OrientacaoObjetos;

uses
  Vcl.Forms,
  MVC in 'MVC.pas' {Form1},
  uClasses in 'uClasses.pas',
  uDfeClass in 'uDfeClass.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TForm1, Form1);
  Application.Run;
end.
