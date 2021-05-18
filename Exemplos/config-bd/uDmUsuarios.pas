unit uDmUsuarios;

interface

uses
  System.SysUtils, System.Classes, uDMConexao, FireDAC.Stan.Intf,
  FireDAC.Stan.Option,
  FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf,
  FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt, Data.DB,
  FireDAC.Comp.DataSet, FireDAC.Comp.Client;

type
  TdmUsuarios = class(TDataModule)
    QrUsuarios: TFDQuery;
    QrUpdateInsert: TFDQuery;
    dsUsuarios: TDataSource;
  private
    { Private declarations }
  public
    procedure carregarQrUsuarios();
    function deletarUsuario(id: integer): Boolean;

    procedure atualizarQrUsuarios();
  end;

var
  dmUsuarios: TdmUsuarios;

implementation

{ %CLASSGROUP 'Vcl.Controls.TControl' }

{$R *.dfm}
{ TdmUsuarios }

procedure TdmUsuarios.atualizarQrUsuarios;
begin
  QrUsuarios.Refresh();
end;

procedure TdmUsuarios.carregarQrUsuarios;
begin
  QrUsuarios.Open('select * from usuarios');
end;

function TdmUsuarios.deletarUsuario(id: integer): Boolean;
begin

  QrUpdateInsert.SQL.Clear();
  QrUpdateInsert.SQL.Add('delete from usuarios where id = :id');
  QrUpdateInsert.ParamByName('id').AsInteger := id;
  QrUpdateInsert.ExecSQL();

  atualizarQrUsuarios();

  Result := True;

end;

end.
