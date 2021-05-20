unit uPessoa;

interface
  uses
    System.DateUtils, System.SysUtils;

type
  TPessoa = class
  private
    fsobrenome: string;
    fnome: string;
    Fdata_nascimento: TDate;
    function getNomeCompleto: string;
    function getIdade: Integer;

  public
    property nome: string read fnome write fnome;
    property sobrenome: string read fsobrenome write fsobrenome;

    property data_nascimento: TDate read Fdata_nascimento write Fdata_nascimento;
    property idade: Integer read getIdade;


    property nomeCompleto: string read getNomeCompleto;

  end;

implementation



{ TPessoa }

function TPessoa.getIdade: Integer;
begin
  Result := YearsBetween(now,data_nascimento);
end;

function TPessoa.getNomeCompleto: string;
begin
  Result := nome + ' ' + sobrenome;
end;

end.
