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
    function SalvarProblema(problema: string): Boolean;
  end;

var
  dmProblemas: TdmProblemas;

implementation


{%CLASSGROUP 'Vcl.Controls.TControl'}

{$R *.dfm}

{ TDataModule2 }



{ TdmProblemas }

function TdmProblemas.SalvarProblema(problema: string): Boolean;
begin
  QrUpdateInsert.SQL.Clear();

  QrUpdateInsert.SQL.Add('insert into problemas (descricao) values (:descricao)');

  QrUpdateInsert.ParamByName('descricao').asString := problema;

  QrUpdateInsert.ExecSQL();
end;

end.
