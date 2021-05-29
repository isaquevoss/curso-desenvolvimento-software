unit uSolucao;

interface

type

  TSolucao = class
  private
    Fid: Integer;
    Fdescricao: string;
    FdataHora: TDateTime;

  public
    property id: Integer read Fid write Fid;
    property descricao: string read Fdescricao write Fdescricao;
    property dataHora: TDateTime read FdataHora write FdataHora;
  end;

implementation

end.
