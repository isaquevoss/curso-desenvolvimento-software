unit uDMConexao;

interface

uses
  System.SysUtils, System.Classes, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Error, FireDAC.UI.Intf, FireDAC.Phys.Intf, FireDAC.Stan.Def,
  FireDAC.Stan.Pool, FireDAC.Stan.Async, FireDAC.Phys, Data.DB,
  FireDAC.Comp.Client, FireDAC.VCLUI.Wait, FireDAC.Phys.MySQLDef,
  FireDAC.Phys.MySQL, FireDAC.Comp.UI, System.IniFiles;

type
  TdmConexao = class(TDataModule)
    FDConnection1: TFDConnection;
    FDGUIxWaitCursor1: TFDGUIxWaitCursor;
    FDPhysMySQLDriverLink1: TFDPhysMySQLDriverLink;
  private

  public
    procedure conectarBanco();
  end;

var
  dmConexao: TdmConexao;

implementation



{ %CLASSGROUP 'Vcl.Controls.TControl' }

{$R *.dfm}
{ TdmConexao }

procedure TdmConexao.conectarBanco;
var
  arquivo_ini: TIniFile;
begin
  arquivo_ini := TIniFile.Create('.\configbd.ini');

  FDConnection1.Params.Clear();
  FDConnection1.DriverName := 'MySQL';
  FDConnection1.Params.Database := 'consulta_problemas';
  FDConnection1.Params.Add('server=' + arquivo_ini.ReadString('DB', 'HOST', ''));
  FDConnection1.Params.Add('host=' + arquivo_ini.ReadString('DB', 'HOST', ''));
  FDConnection1.Params.Add('port=' + arquivo_ini.ReadString('DB',
    'PORT', '3306'));
  FDConnection1.Params.Add('user_name=root');
  FDConnection1.Params.Add('password=root');
  FDConnection1.Open();

  arquivo_ini.Free();

end;

end.
