unit uConfig;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Buttons;

type
  TfrmConfig = class(TForm)
    edHost: TEdit;
    Label1: TLabel;
    Label2: TLabel;
    EdPorta: TEdit;
    btGravar: TButton;
    procedure btGravarClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    procedure gravar();
  public
    procedure carregar();
  end;

var
  frmConfig: TfrmConfig;

implementation

uses
  System.IniFiles;

{$R *.dfm}

procedure TfrmConfig.btGravarClick(Sender: TObject);
begin
  gravar();
  ModalResult := mrOk;
end;

procedure TfrmConfig.carregar;
var
  arq_ini: TIniFile;
begin
  arq_ini := TIniFile.Create('.\configbd.ini');

  edHost.Text := arq_ini.ReadString('DB','HOST','');
  EdPorta.Text := arq_ini.ReadString('DB','PORT','');

  arq_ini.Free();
end;

procedure TfrmConfig.FormShow(Sender: TObject);
begin
  carregar();
end;

procedure TfrmConfig.gravar;
var
  arq_ini: TIniFile;
begin
  arq_ini := TIniFile.Create('.\configbd.ini');

  arq_ini.WriteString('DB', 'HOST', edHost.Text);
  arq_ini.WriteString('DB', 'PORT', EdPorta.Text);

  arq_ini.Free;

end;

end.
