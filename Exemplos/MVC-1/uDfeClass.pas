unit uDfeClass;

interface

type
  TDFe = class
  private
    Fnumero: integer;
    Fmodelo: string;
  public
    property numero: integer read Fnumero write Fnumero;
    property modelo: string read Fmodelo write Fmodelo;
    procedure enviar(); virtual; abstract;
    procedure consultar(); virtual; abstract;
  end;

  TNFe = class(TDFe)
  private
  public
    procedure enviar(); override;
    procedure consultar(); override;
  end;
  TCte = class(TDFe)
    private
    public

  end;

implementation

{ TDFe }

{ TNFe }

procedure TNFe.consultar;
begin
//
end;

procedure TNFe.enviar;
begin
//
end;

end.

