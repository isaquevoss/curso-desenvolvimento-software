program LerNFes;

uses
  Vcl.Forms,
  uPrincipal in 'uPrincipal.pas' {frmNotaFiscal},
  uClasses in 'uClasses.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TfrmNotaFiscal, frmNotaFiscal);
  Application.Run;
end.
