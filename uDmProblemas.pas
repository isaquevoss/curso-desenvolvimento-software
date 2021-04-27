unit uDmProblemas;

interface

uses
  System.SysUtils, System.Classes, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf,
  FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt, Data.DB,
  FireDAC.Comp.DataSet, FireDAC.Comp.Client;

type
  TdmProblemas = class(TDataModule)
    QrProblemas: TFDQuery;
    dsProblemas: TDataSource;
    QrUpdateInsert: TFDQuery;
  private
    { Private declarations }

  public
    { Public declarations }
    function SalvarProblema(problema: string; idModulo: Integer; idProblema: Integer): Boolean;
  end;

var
  dmProblemas: TdmProblemas;

implementation


{%CLASSGROUP 'Vcl.Controls.TControl'}

{$R *.dfm}

{ TDataModule2 }



{ TdmProblemas }

function TdmProblemas.SalvarProblema(problema: string; idModulo: Integer; idProblema: Integer): Boolean;
begin
  QrUpdateInsert.SQL.Clear();

  QrUpdateInsert.SQL.Add('insert into problemas (descricao, modulo_id, produto_id)');
  QrUpdateInsert.SQL.Add(' values ');
  QrUpdateInsert.SQL.Add('(:descricao, :modulo_id, :produto_id)');

  QrUpdateInsert.ParamByName('descricao').asString := problema;
  QrUpdateInsert.ParamByName('modulo_id').AsInteger := idModulo;
  QrUpdateInsert.ParamByName('produto_id').AsInteger := idProblema;

  QrUpdateInsert.ExecSQL();
end;

end.
