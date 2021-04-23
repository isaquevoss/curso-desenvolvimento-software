unit uLogin;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls;

type
  TfrmLogin = class(TForm)
    cbUsuario: TComboBox;
    lbSelecioneUsuario: TLabel;
    btEntrar: TButton;
    Button1: TButton;
    procedure btEntrarClick(Sender: TObject);
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmLogin: TfrmLogin;

implementation

{$R *.dfm}

procedure TfrmLogin.btEntrarClick(Sender: TObject);
begin
  ModalResult := mrOk;
end;

procedure TfrmLogin.Button1Click(Sender: TObject);
begin
  ModalResult := mrCancel;

end;

end.
