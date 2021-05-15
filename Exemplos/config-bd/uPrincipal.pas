unit uPrincipal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs , uDMConexao, Vcl.StdCtrls, uconfig,
  Vcl.ExtCtrls, uFrmUsuarios;

type
  TForm4 = class(TForm)
    Button1: TButton;
    pnMenu: TPanel;
    pnSistema: TPanel;
    Button2: TButton;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form4: TForm4;

implementation

{$R *.dfm}

procedure TForm4.Button1Click(Sender: TObject);
begin
  frmconfig.show;
end;

procedure TForm4.Button2Click(Sender: TObject);
begin
  frmUsuarios.Parent := pnSistema;
  frmUsuarios.Show();


end;

end.
