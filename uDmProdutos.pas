unit uDmProdutos;

interface

uses
  System.SysUtils, System.Classes, uDmConexao, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS,
  FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt,
  Data.DB, FireDAC.Comp.DataSet, FireDAC.Comp.Client;

type
  TdmProdutos = class(TDataModule)
    QrProdutos: TFDQuery;
  private
    { Private declarations }
  public
    { Public declarations }
    procedure carregarQrProdutos();
  end;

var
  dmProdutos: TdmProdutos;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

{$R *.dfm}

{ TdmProdutos }

procedure TdmProdutos.carregarQrProdutos;
begin
  QrProdutos.SQL.Clear();
  QrProdutos.SQL.Add('select * from produtos');
  QrProdutos.Open();
end;

end.
