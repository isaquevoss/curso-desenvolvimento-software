unit uDmConexao;

interface

uses
  System.SysUtils, System.Classes, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Error, FireDAC.UI.Intf, FireDAC.Phys.Intf, FireDAC.Stan.Def,
  FireDAC.Stan.Pool, FireDAC.Stan.Async, FireDAC.Phys, FireDAC.Phys.FBDef,
  FireDAC.VCLUI.Wait, FireDAC.Comp.UI, FireDAC.Phys.IBBase, FireDAC.Phys.FB,
  Data.DB, FireDAC.Comp.Client, uPrincipal;

type
  TDmConexao = class(TDataModule)
    FDConnection1: TFDConnection;
    FDPhysFBDriverLink1: TFDPhysFBDriverLink;
    FDGUIxWaitCursor1: TFDGUIxWaitCursor;
  private
    { Private declarations }
  public
    { Public declarations }
    procedure conectarBanco(base: string);
  end;

var
  DmConexao: TDmConexao;

implementation

{ %CLASSGROUP 'Vcl.Controls.TControl' }

{$R *.dfm}
{ TDataModule1 }

procedure TDmConexao.conectarBanco(base: string);
begin

  FDConnection1.Params.Database := base;
  FDConnection1.Params.Add('PORT=3050');
  FDConnection1.DriverName := 'FB';
  FDConnection1.Params.UserName := 'SYSDBA';
  FDConnection1.Params.Password := 'masterkey';
  FDConnection1.Open();

end;

end.
