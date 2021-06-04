unit uCarregarProblemas;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Grids, uDMConexao,
  FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param,
  FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf,
  FireDAC.Stan.Async, FireDAC.DApt, Data.DB, FireDAC.Comp.DataSet,
  FireDAC.Comp.Client;

type
  TForm1 = class(TForm)
    grid: TStringGrid;
    Button1: TButton;
    qrProblemas: TFDQuery;
    procedure Button1Click(Sender: TObject);
    procedure gridDblClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

uses
  uProblema;

{$R *.dfm}

procedure TForm1.Button1Click(Sender: TObject);
var
  problema: TProblema;
  linha: integer;
begin
  dmConexao.conectarBanco();
  qrProblemas.Open('select id from problemas');
  while not qrProblemas.Eof do
  begin
    problema := TProblema.Create();
    problema.carregarPeloId(qrProblemas.FieldByName('id').AsInteger);
    if grid.Cells[0, 1] <> '' then
      grid.RowCount := grid.RowCount + 1;
    linha := grid.RowCount - 1;
    grid.Cells[0, linha] := IntToStr(problema.id);
    grid.Cells[1, linha] := problema.descricao;
    grid.Cells[2, linha] := DateToStr(problema.dataHora);
    grid.Objects[0, linha] := problema;

    qrProblemas.Next();
  end;
end;

procedure TForm1.gridDblClick(Sender: TObject);
begin
  ShowMessage(TProblema(grid.Objects[0, grid.Row]).descricao);
end;

end.
