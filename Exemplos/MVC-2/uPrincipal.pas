unit uPrincipal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, uControleTelaInicial,
  Vcl.ExtCtrls;

type
  TForm1 = class(TForm)
    Label1: TLabel;
    lbUsuariosConectados: TLabel;
    Timer1: TTimer;
    Button1: TButton;
    procedure FormShow(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure Timer1Timer(Sender: TObject);
    procedure Button1Click(Sender: TObject);
  private
    Fcontrole: TControleTelaInicial;
    { Private declarations }
  public
    { Public declarations }
    property controle: TControleTelaInicial read Fcontrole write Fcontrole;
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

procedure TForm1.Button1Click(Sender: TObject);
begin
  controle.showCadastroEstoque();
end;

procedure TForm1.FormCreate(Sender: TObject);
begin
  controle := TControleTelaInicial.Create();
end;

procedure TForm1.FormShow(Sender: TObject);
begin
  Label1.Caption := DateToStr( controle.getDataAtual() );
end;

procedure TForm1.Timer1Timer(Sender: TObject);
begin
  lbUsuariosConectados.Caption := IntToStr(controle.getUsuariosConectados())+' usuários conectados.';
end;

end.
