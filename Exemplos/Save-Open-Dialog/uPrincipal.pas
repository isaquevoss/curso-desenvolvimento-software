unit uPrincipal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, System.IniFiles,
  Vcl.ToolWin, Vcl.ComCtrls, Vcl.Menus;

type
  TfrmPrincipal = class(TForm)
    OpenDialog1: TOpenDialog;
    SaveDialog1: TSaveDialog;
    EdAbrirArquivo: TEdit;
    EdSalvarArquivo: TEdit;
    btAbrirArquivo: TButton;
    btSalvarArquivo: TButton;
    PopupMenu1: TPopupMenu;
    MainMenu1: TMainMenu;
    Configurar1: TMenuItem;
    Opes1: TMenuItem;
    Configurar2: TMenuItem;
    ToolBar1: TToolBar;
    Button1: TButton;
    procedure btAbrirArquivoClick(Sender: TObject);
    procedure btSalvarArquivoClick(Sender: TObject);
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmPrincipal: TfrmPrincipal;

implementation

uses
  uDmConexao;

{$R *.dfm}

procedure TfrmPrincipal.btAbrirArquivoClick(Sender: TObject);
begin
  if OpenDialog1.Execute() then
  begin
    EdAbrirArquivo.Text := OpenDialog1.FileName;
  end;
end;

procedure TfrmPrincipal.btSalvarArquivoClick(Sender: TObject);
begin
  if SaveDialog1.Execute then
  begin
    EdSalvarArquivo.Text := SaveDialog1.FileName;
  end;
end;

procedure TfrmPrincipal.Button1Click(Sender: TObject);
begin
  DmConexao.conectarBanco(EdAbrirArquivo.Text);
end;

end.
