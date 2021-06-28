unit uProblema2;

interface

uses
  FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error,
  FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async,
  FireDAC.DApt, Data.DB, FireDAC.Comp.DataSet, FireDAC.Comp.Client, uDMConexao;

type
  TProblema2 = class
  private
    Fid: integer;
    Fdescricao: string;
    Fdata_hora: TDateTime;
  public
    property id: integer read Fid write Fid;
    property descricao: string read Fdescricao write Fdescricao;
    property data_hora: TDateTime read Fdata_hora write Fdata_hora;
    procedure carregarPeloId(_id: integer);
    function toString(): string;
  end;

implementation

uses
  System.SysUtils;


{ TProblema }

procedure TProblema2.carregarPeloId(_id: integer);
var
  qr: TFDQuery;
begin
  qr := TFDQuery.Create(nil);
  try
    qr.Connection := dmConexao.FDConnection1;
    qr.Open('select * from problemas where id = ' + IntToStr(_id));
    id := qr.FieldByName('id').AsInteger;
    descricao := qr.FieldByName('descricao').AsString;
    data_hora := qr.FieldByName('data_hora').AsDateTime;
  finally
    qr.Free();
  end;
end;

function TProblema2.toString: string;
begin
  result := 'id ' + IntToStr(id);
  Result := Result + #13'Descricao ' + descricao;
  Result := Result + #13'Data hora' + DateTimeToStr(data_hora);
end;

end.

