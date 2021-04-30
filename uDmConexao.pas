unit uDmConexao;

interface

uses
  System.SysUtils, System.Classes, FireDAC.UI.Intf, FireDAC.VCLUI.Wait,
  FireDAC.Phys.MySQLDef, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Error, FireDAC.Phys.Intf, FireDAC.Stan.Def, FireDAC.Stan.Pool,
  FireDAC.Stan.Async, FireDAC.Phys, FireDAC.Phys.MySQL, Data.DB,
  FireDAC.Comp.Client, FireDAC.Comp.UI, System.IniFiles;

type
  TDataModule1 = class(TDataModule)
    FDGUIxWaitCursor1: TFDGUIxWaitCursor;
    FDPhysMySQLDriverLink1: TFDPhysMySQLDriverLink;
    Conexao: TFDConnection;
  private
    { Private declarations }
  public
    { Public declarations }
    procedure gravarConfigDB;
    procedure carregarConfigDB;
  end;

var
  DataModule1: TDataModule1;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

{$R *.dfm}

{ TDataModule1 }

procedure TDataModule1.carregarConfigDB;
var
  ini: Tinifile;
begin
  ini := TIniFile.Create('.\configDB.ini');

  Conexao.Params.Database := ini.ReadString('DATABASE','BASE','');
  Conexao.Params.Add('PORT='+ini.ReadInteger('database','PORTA',3306));
  ini.Free();

end;

procedure TDataModule1.gravarConfigDB;
var
  ini: Tinifile;
begin
  ini := TIniFile.Create('.\configDB.ini');
  ini.WriteString('DATABASE','BASE','consulta_problema');
  ini.WriteInteger('DATABASE','PORTA','3306');
  ini.Free;

end;

end.
