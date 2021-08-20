unit uClasses;

interface

type
  TModelo = class
    private
    Ftabela: string;
      property tabela: string read Ftabela write Ftabela;
    public
      procedure gravar(); virtual;
  end;


  TPessoa = class(TModelo)
  private
    Fnome: string;
    Fcpf: string;
    function getCpfFormatado: string;
  public
    property nome: string read Fnome write Fnome;
    property cpf: string read Fcpf write Fcpf;
    property cpfFormatado: string read getCpfFormatado;

    procedure gravar(); override;
  end;

  TCliente = class
  private
    Fnome: string;
    Fcpf: string;
  public
    property nome: string read Fnome write Fnome;
    property cpf: string read Fcpf write Fcpf;
    constructor Create();
  end;

  TUsuario = class(TPessoa)
  private
    Fcargo: string;
  public
    property cargo: string read Fcargo write Fcargo;
    procedure gravar(); override;

    constructor Create();
  end;
  TClienteHerdando= class(TPessoa)
  private
  public
   constructor Create();
  end;

implementation

uses
  Vcl.Dialogs;

{ TPessoa }

function TPessoa.getCpfFormatado: string;
begin
  Result := Fcpf+'formatação';
end;

procedure TPessoa.gravar;
begin
  inherited;
  showmessage('Gravando Pessoa na tabela '+tabela );
end;

{ TUsuario }

constructor TUsuario.Create;
begin
  Ftabela := 'usuarios';
end;

procedure TUsuario.gravar;
begin
  inherited;
  ShowMessage('gravando usuario');
end;

{ TCliente }

constructor TCliente.Create;
begin

end;

{ TClienteHerdando }

constructor TClienteHerdando.Create;
begin
  Ftabela := 'Cliente';
end;

{ TModelo }

procedure TModelo.gravar;
begin
  ShowMessage('gravando classe '+Self.ToString+ 'no banco de dados');

end;

end.

