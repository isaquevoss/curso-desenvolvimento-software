program SelectUpdate;

uses
  Vcl.Forms,
  uSelectUpdate in 'uSelectUpdate.pas' {Form3},
  uDmConexao in '..\..\uDmConexao.pas' {DataModule1: TDataModule};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TForm3, Form3);
  Application.CreateForm(TDataModule1, DataModule1);
  Application.Run;
end.
