unit uClasses;

interface

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
    Fproduto: TProduto;
  public
    property emitente: TEmitente read Femitente write Femitente;
    property cliente: TCliente read Fcliente write Fcliente;
    property produto: TProduto read Fproduto write Fproduto;
    constructor Create();
    procedure gravar();
  end;

implementation

{ TNotaFiscal }

constructor TNotaFiscal.Create;
begin
  emitente := TEmitente.Create();
  cliente := TCliente.Create();
  produto := TProduto.Create();
end;

procedure TNotaFiscal.gravar;
begin
  //
end;

end.

