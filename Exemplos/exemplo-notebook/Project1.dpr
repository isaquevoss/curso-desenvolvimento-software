program Project1;

uses
  Vcl.Forms,
  Unit1 in 'Unit1.pas' {Form1},
  Unit2 in 'Unit2.pas' {Form2},
  uConfigNFCe in 'uConfigNFCe.pas' {frmNFCe},
  uConfigSat in 'uConfigSat.pas' {FrmSat};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TForm1, Form1);
  Application.CreateForm(TForm2, Form2);
  Application.CreateForm(TfrmNFCe, frmNFCe);
  Application.CreateForm(TFrmSat, FrmSat);
  Application.Run;
end.
