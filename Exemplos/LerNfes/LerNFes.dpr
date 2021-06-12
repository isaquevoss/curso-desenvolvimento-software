program LerNFes;

uses
  Vcl.Forms,
  uPrincipal in 'uPrincipal.pas' {Form1},
  uClasses in 'uClasses.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TForm1, Form1);
  Application.Run;
end.
