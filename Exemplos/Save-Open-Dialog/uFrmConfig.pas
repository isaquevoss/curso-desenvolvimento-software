unit uFrmConfig;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls;

type
  TFrmConfig = class(TForm)
    EdCaminhoBase: TEdit;
    Label1: TLabel;
    Button1: TButton;
    OpenDialog1: TOpenDialog;
    procedure Button1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    procedure SalvarConfigINI();
    procedure CarregarConfigIni();
  end;

var
  FrmConfig: TFrmConfig;

implementation
  uses  System.IniFiles;

{$R *.dfm}

procedure TFrmConfig.Button1Click(Sender: TObject);
begin
  if OpenDialog1.Execute then
  begin
    EdCaminhoBase.Text := OpenDialog1.FileName;
    SalvarConfigINI();
  end;
end;

procedure TFrmConfig.CarregarConfigIni;
var
  ini: tIniFile;
begin
  ini := TIniFile.Create('.\Config.ini');
  EdCaminhoBase.Text := ini.ReadString('Database','BASE',EdCaminhoBase.Text);
  ini.Free();
end;

procedure TFrmConfig.FormCreate(Sender: TObject);
begin
  CarregarConfigIni();
end;

procedure TFrmConfig.SalvarConfigINI;
var
  ini: tIniFile;
begin
  ini := TIniFile.Create('.\Config.ini');
  ini.WriteString('Database','BASE',EdCaminhoBase.Text);
  ini.Free();

end;

end.
