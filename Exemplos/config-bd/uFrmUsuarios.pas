unit uFrmUsuarios;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, uDmUsuarios, Data.DB, Vcl.Grids,
  Vcl.DBGrids, Vcl.ExtCtrls, Vcl.StdCtrls, dxGDIPlusClasses, Vcl.DBCtrls;

type
  TfrmUsuarios = class(TForm)
    Panel1: TPanel;
    Panel2: TPanel;
    DBGrid1: TDBGrid;
    Button1: TButton;
    Button2: TButton;
    Button3: TButton;
    Image1: TImage;
    procedure Image1Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmUsuarios: TfrmUsuarios;

implementation

{$R *.dfm}

procedure TfrmUsuarios.Button1Click(Sender: TObject);
var
  usuario: string;
begin
  if InputQuery('Novo usuário','Nome do usuário',usuario) then
  begin
    dmUsuarios.cadastrarUsuario(usuario);
    dmUsuarios.carregarQrUsuarios();
    dmUsuarios.QrUsuarios.Last();
  end;
end;

procedure TfrmUsuarios.Button2Click(Sender: TObject);
var
  usuario: string;
  id: Integer;
begin
  usuario := dmUsuarios.QrUsuarios.FieldByName('nome').AsString;
  id := dmUsuarios.QrUsuarios.FieldByName('id').AsInteger;
  if InputQuery('Alterar usuário','Nome do usuário',usuario) then
  begin
    dmUsuarios.alterarUsuario(id,usuario);
    dmUsuarios.QrUsuarios.RefreshRecord();
  end;
end;

procedure TfrmUsuarios.Button3Click(Sender: TObject);
begin

  dmUsuarios.deletarUsuario(dmUsuarios.QrUsuarios.FieldByName('id').AsInteger);
  ShowMessage('Processo concluído');

end;

procedure TfrmUsuarios.FormShow(Sender: TObject);
begin
  dmUsuarios.carregarQrUsuarios();
end;

procedure TfrmUsuarios.Image1Click(Sender: TObject);
begin
  Close();
end;

end.
