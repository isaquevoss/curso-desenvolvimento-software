program Project2;

uses
  Vcl.Forms,
  Unit3 in 'Unit3.pas' {Form3},
  uDmConexao in 'uDmConexao.pas' {DataModule1: TDataModule},
  uDmProblemas in 'uDmProblemas.pas' {dmProblemas: TDataModule};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TForm3, Form3);
  Application.CreateForm(TDataModule1, DataModule1);
  Application.CreateForm(TdmProblemas, dmProblemas);
  Application.Run;
end.
