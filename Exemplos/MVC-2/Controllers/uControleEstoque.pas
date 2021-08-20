unit uControleEstoque;

interface

uses
  uControle, uEstoque;

type
  TControleEstoque = class(TControle)
  private
  public
    function getEstoque(cod: integer): TEstoque;
  end;

implementation

uses
  System.SysUtils;

{ TControleEstoque }

function TControleEstoque.getEstoque(cod: integer): TEstoque;
begin
  Result := TEstoque.Create();
  Result.cod := cod;
  Result.nome := 'Produto c�digo '+IntToStr(Result.cod);
end;

end.

