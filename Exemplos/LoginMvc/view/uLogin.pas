unit uLogin;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, uloginControle, Vcl.StdCtrls,
  Vcl.ExtCtrls, uClienteControle;

type
  TForm1 = class(TForm)
    Button1: TButton;
    Edit1: TEdit;
    Edit2: TEdit;
    Timer1: TTimer;
    Label1: TLabel;
    procedure Button1Click(Sender: TObject);
    procedure Timer1Timer(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

uses
  System.Generics.Collections;

{$R *.dfm}

procedure TForm1.Button1Click(Sender: TObject);
begin
 LoginControle.gravarLog := true;
  LoginControle.login(Edit1.Text,Edit2.Text);
  //busca usuario
  //verifica senha
  //loga
end;

procedure TForm1.FormCreate(Sender: TObject);
begin
 LoginControle := TLoginControle.Create();
end;

procedure TForm1.Timer1Timer(Sender: TObject);
begin
  if Assigned( usuarioLogado ) then
  begin
    Label1.Caption := usuarioLogado.email;
    Timer1.Enabled := false;
  end;

end;

end.
