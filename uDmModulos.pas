unit uDmModulos;

interface

uses
  System.SysUtils, System.Classes, uDmConexao, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS,
  FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt,
  Data.DB, FireDAC.Comp.DataSet, FireDAC.Comp.Client;

type
  TdmModulos = class(TDataModule)
    QrModulos: TFDQuery;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  dmModulos: TdmModulos;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

{$R *.dfm}

end.
