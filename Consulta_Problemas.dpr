program Consulta_Problemas;

uses
  Vcl.Forms,
  Vcl.Controls,
  uPrincipal in 'uPrincipal.pas' {frmPrincipal},
  uDmConexao in 'uDmConexao.pas' {DataModule1: TDataModule},
  uDmProblemas in 'uDmProblemas.pas' {dmProblemas: TDataModule},
  uCadastroProblema in 'uCadastroProblema.pas' {frmCadastroProblema},
  uLogin in 'uLogin.pas' {frmLogin},
  uDmProdutos in 'uDmProdutos.pas' {dmProdutos: TDataModule},
  uDmModulos in 'uDmModulos.pas' {dmModulos: TDataModule},
  uSolucao in 'uSolucao.pas' {frmSolucao},
  uDmSolucao in 'uDmSolucao.pas' {dmSolucao: TDataModule};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := true;
  Application.CreateForm(TfrmPrincipal, frmPrincipal);
  Application.CreateForm(TDataModule1, DataModule1);
  Application.CreateForm(TdmProblemas, dmProblemas);
  Application.CreateForm(TfrmCadastroProblema, frmCadastroProblema);
  Application.CreateForm(TfrmLogin, frmLogin);
  Application.CreateForm(TdmProdutos, dmProdutos);
  Application.CreateForm(TdmModulos, dmModulos);
  Application.CreateForm(TfrmSolucao, frmSolucao);
  Application.CreateForm(TdmSolucao, dmSolucao);
  if frmLogin.ShowModal <> mrOK then
  begin
    Application.Terminate();
  end;


  Application.Run;
end.
