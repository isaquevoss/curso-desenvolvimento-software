unit uControleTelaInicial;

interface

uses
  uControle, uViewEstoque;

type
  TControleTelaInicial = class(TControle)
  private
  public

    function getDataAtual(): TDate;

    function getUsuariosConectados(): Integer;

    procedure showCadastroEstoque();
  end;

  var
    controleTelaInicial: TControleTelaInicial;

implementation

uses
  System.SysUtils;

{ TControleTelaInicial }

function TControleTelaInicial.getDataAtual: TDate;
begin
  Result := Now();
end;

function TControleTelaInicial.getUsuariosConectados: Integer;
begin
  result := Random(200);
end;

procedure TControleTelaInicial.showCadastroEstoque;
begin
  viewEstoque.ShowModal();
end;

end.

