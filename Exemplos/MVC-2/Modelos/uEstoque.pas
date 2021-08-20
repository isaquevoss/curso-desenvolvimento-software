unit uEstoque;

interface

uses
  uModelo;

type
  TEstoque = class(TModelo)
  private
    Fcod: integer;
    Fnome: string;
  public
    property cod: integer read Fcod write Fcod;
    property nome: string read Fnome write Fnome;
  end;

implementation

end.

