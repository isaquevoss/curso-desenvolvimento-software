unit uLerIniExemplo;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls;

type
  TForm3 = class(TForm)
    Button1: TButton;
    Button2: TButton;
    EdNomeIni: TEdit;
    Label1: TLabel;
    EdCampo1: TEdit;
    EdValor1: TEdit;
    Label2: TLabel;
    Label3: TLabel;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form3: TForm3;

implementation

USES
  System.IniFiles;

{$R *.dfm}

procedure TForm3.Button1Click(Sender: TObject);
var
  ini: TIniFile;
begin
  ini := TIniFile.Create(EdNomeIni.Text);


  ini.WriteString('GERAL',EdCampo1.Text,EdValor1.Text);


  ini.Free();
end;

procedure TForm3.Button2Click(Sender: TObject);
var
  ini: TIniFile;
begin
  ini := TIniFile.Create(EdNomeIni.Text);

  EdValor1.Text := ini.ReadString('GERAL',EdCampo1.Text,'Sem informação');

  ini.Free();
end;

end.
