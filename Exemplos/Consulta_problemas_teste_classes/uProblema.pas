unit uProblema;

interface
  uses
    uSolucao, System.Generics.Collections;

type

  TModulo = class
  private
    Fid: integer;
    Fnome: string;
  public
    property id: integer read Fid write Fid;
    property nome: string read Fnome write Fnome;
  end;

  TProduto = class
  private
  public
  end;

  TProblema = class
  private
    Fid: integer;
    Fdescricao: string;
    Fmodulo: TModulo;
    Fproduto: TProduto;
    FdataHora: TDateTime;
    Fsolucoes: TList<TSolucao>;

  public
    property id: integer read Fid write Fid;
    property descricao: string read Fdescricao write Fdescricao;
    property modulo: TModulo read Fmodulo write Fmodulo;
    property produto: TProduto read Fproduto write Fproduto;
    property dataHora: TDateTime read FdataHora write FdataHora;

    property solucoes: TList<TSolucao> read Fsolucoes write Fsolucoes;

    //    uSolucao, System.Generics.Collections;

    constructor Create(id: integer = 0);
  end;

implementation

constructor TProblema.Create(id: integer = 0);
begin
  produto := TProduto.Create();
  modulo := TModulo.Create();

  solucoes := TList<TSolucao>.Create();
end;

end.
