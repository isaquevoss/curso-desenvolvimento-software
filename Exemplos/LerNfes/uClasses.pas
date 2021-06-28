unit uClasses;

interface

uses
  System.Generics.Collections;

type
  TEmitente = class
  private
    Frazao_social: string;
    Fcnpj: string;
  public
    property razao_social: string read Frazao_social write Frazao_social;
    property cnpj: string read Fcnpj write Fcnpj;
  end;

  TCliente = class
  private
    Frazao_social: string;
    Fcnpj: string;
  public
    property razao_social: string read Frazao_social write Frazao_social;
    property cnpj: string read Fcnpj write Fcnpj;
  end;

  TProduto = class
  private
    Fdescricao: string;
    FcodBarras: string;
  public
    property descricao: string read Fdescricao write Fdescricao;
    property codBarras: string read FcodBarras write FcodBarras;
  end;

  TNotaFiscal = class
  private
    Femitente: TEmitente;
    Fcliente: TCliente;
    Fprodutos: TList<TProduto>;
  public
    property emitente: TEmitente read Femitente write Femitente;
    property cliente: TCliente read Fcliente write Fcliente;
    property produtos: TList<TProduto> read Fprodutos write Fprodutos;
       //uses
    //  System.Generics.Collections;

    function jaExisteCodBarras(barras: string): Boolean;

    constructor Create();

    procedure gravar();
  end;

implementation

{ TNotaFiscal }

constructor TNotaFiscal.Create;
begin
  emitente := TEmitente.Create();
  cliente := TCliente.Create();
  produtos := TList<TProduto>.Create;
end;

procedure TNotaFiscal.gravar;
begin
  //
end;

function TNotaFiscal.jaExisteCodBarras(barras: string): Boolean;
var
  i: Integer;
begin
  Result := False;
  if (barras = '') or (barras = 'SEM GTIN') then
    exit;


  for i := 0 to produtos.Count - 1 do
  begin
    if barras = produtos[i].codBarras then
      result := True;
  end;
end;

end.

