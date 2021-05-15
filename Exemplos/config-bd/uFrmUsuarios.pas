unit uFrmUsuarios;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, uDmUsuarios, Data.DB, Vcl.Grids,
  Vcl.DBGrids, Vcl.ExtCtrls, Vcl.StdCtrls, dxGDIPlusClasses;

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
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmUsuarios: TfrmUsuarios;

implementation

{$R *.dfm}

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
