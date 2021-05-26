unit uFrmUsuarios;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, uDmUsuarios, Data.DB, Vcl.Grids,
  Vcl.DBGrids, Vcl.ExtCtrls, Vcl.StdCtrls, dxGDIPlusClasses, Vcl.DBCtrls,
  uUsuario;

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
  usuario: TUsuario;
  nomeUsuario: string;
begin
  usuario := TUsuario.Create();
  try
    if InputQuery('Novo usuário', 'Nome do usuário', nomeUsuario) then
    begin
      usuario.nome := nomeUsuario;
//      dmUsuarios.cadastrarUsuario(usuario);
      dmUsuarios.carregarQrUsuarios();
      dmUsuarios.QrUsuarios.Last();
    end;
  finally
    usuario.Free();
  end;

end;

procedure TfrmUsuarios.Button2Click(Sender: TObject);
var
  nomeUsuario: string;
  usuario: TUsuario;
begin
  usuario := TUsuario.Create();
  try
    usuario.carregarPeloId(dmUsuarios.QrUsuarios.FieldByName('id').AsInteger);

    nomeUsuario := usuario.nome;

    if InputQuery('Alterar usuário', 'Nome do usuário', nomeUsuario) then
    begin
      usuario.nome := nomeUsuario;

      usuario.gravar();

      dmUsuarios.QrUsuarios.RefreshRecord();
    end;
  finally
    usuario.Free;
  end;

end;

procedure TfrmUsuarios.Button3Click(Sender: TObject);
var
  usuario: TUsuario;
begin
  usuario := TUsuario.Create();
  try
    usuario.id := dmUsuarios.QrUsuarios.FieldByName('id').AsInteger;
    usuario.nome := dmUsuarios.QrUsuarios.FieldByName('nome').AsString;

//    dmUsuarios.deletarUsuario(usuario);
    ShowMessage('Processo concluído');
  finally
    usuario.Free;
  end;

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
