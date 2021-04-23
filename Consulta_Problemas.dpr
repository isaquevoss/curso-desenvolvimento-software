program Consulta_Problemas;

uses
  Vcl.Forms,
  uPrincipal in 'uPrincipal.pas' {frmPrincipal},
  uDmConexao in 'uDmConexao.pas' {DataModule1: TDataModule},
  uDmProblemas in 'uDmProblemas.pas' {dmProblemas: TDataModule},
  uCadastroProblema in 'uCadastroProblema.pas' {frmCadastroProblema};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TfrmPrincipal, frmPrincipal);
  Application.CreateForm(TDataModule1, DataModule1);
  Application.CreateForm(TdmProblemas, dmProblemas);
  Application.CreateForm(TfrmCadastroProblema, frmCadastroProblema);
  Application.Run;
end.
