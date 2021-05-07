program SaveOpenDialog;

uses
  Vcl.Forms,
  uPrincipal in 'uPrincipal.pas' {frmPrincipal},
  uDmConexao in 'uDmConexao.pas' {DmConexao: TDataModule},
  uFrmConfig in 'uFrmConfig.pas' {FrmConfig};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TfrmPrincipal, frmPrincipal);
  Application.CreateForm(TDmConexao, DmConexao);
  Application.CreateForm(TFrmConfig, FrmConfig);

  Application.Run;
end.
