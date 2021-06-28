unit Unit1;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics, Vcl.Controls, Vcl.Forms, Vcl.Dialogs,
  Vcl.ComCtrls, Vcl.StdCtrls, Vcl.Menus, Vcl.ExtCtrls;

type
  TForm1 = class(TForm)
    Button1: TButton;
    Button2: TButton;
    pnConfiguracoes: TPanel;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

uses
  uConfigNFCe, uConfigSat;

//procedure showForm(form: TForm; parent: TWinControl);
//begin
//  form.Parent := parent;
//  form.Show();
//end;


{$R *.dfm}

procedure TForm1.Button1Click(Sender: TObject);
begin
  //showForm(frmNFCe, pnConfiguracoes);
  frmNFCe.Parent := pnConfiguracoes;
  frmNFCe.Show();
end;

procedure TForm1.Button2Click(Sender: TObject);
begin
  //showForm(frmSat, pnConfiguracoes);
  FrmSat.Parent := pnConfiguracoes;
  FrmSat.Show();
end;

end.

