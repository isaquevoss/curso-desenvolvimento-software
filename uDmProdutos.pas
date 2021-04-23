unit uDmProdutos;

interface

uses
  System.SysUtils, System.Classes;

type
  TdmProdutos = class(TDataModule)
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  dmProdutos: TdmProdutos;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

{$R *.dfm}

end.
