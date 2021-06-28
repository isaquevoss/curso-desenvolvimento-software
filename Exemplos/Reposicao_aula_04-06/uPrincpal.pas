unit uPrincpal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics, Vcl.Controls, Vcl.Forms, Vcl.Dialogs,
  Vcl.StdCtrls, FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param,
  FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf,
  FireDAC.Stan.Async, FireDAC.DApt, Data.DB, FireDAC.Comp.DataSet,
  FireDAC.Comp.Client, Vcl.Grids, uDMConexao, uProblema;

type
  TForm1 = class(TForm)
    Button1: TButton;
    grid: TStringGrid;
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


{$R *.dfm}

procedure TForm1.Button1Click(Sender: TObject);
var
  qr: TFDQuery;
  problema: TProblema;
  linha: integer;
begin
  dmConexao.conectarBanco();
  qr := TFDQuery.Create(nil); // cria a instancia da váriavel
  try
    qr.Connection := dmConexao.FDConnection1;

    qr.Open('select id from problemas');

    grid.RowCount := 2;
    grid.Cells[0,1] := ''; // limpar a primeira celula

    //adicionar titulo das colunas
    grid.Cells[0, 0] := 'ID';
    grid.Cells[1, 0] := 'Descricao';
    grid.Cells[2, 0] := 'Data Hora';

    while not qr.Eof do
    begin
      problema := TProblema.Create();
      problema.carregarPeloId(qr.FieldByName('id').AsInteger);

      //inserir no grid
      if grid.Cells[0,grid.RowCount -1] <> '' then
        grid.RowCount := grid.RowCount + 1;

      linha := grid.RowCount - 1;
      grid.Objects[0, linha] := problema;
      grid.Cells[0, linha] := IntToStr(problema.id);
      grid.Cells[1, linha] := problema.descricao;
      grid.Cells[2, linha] := DateTimeToStr(problema.dataHora);

      qr.Next();
    end;

  finally
    qr.Free(); // destroi a variavel
  end;
end;

procedure TForm1.gridDblClick(Sender: TObject);
var

  nova_descricao: string;
begin
  InputQuery('informe a nova descricao do problema','descricao',nova_descricao);
  if nova_descricao <> '' then
    TProblema(grid.Objects[0,grid.Row]).descricao := nova_descricao;
  TProblema(grid.Objects[0,grid.Row]).dataHora := Now();
  TProblema(grid.Objects[0,grid.Row]).gravar();


  ShowMessage(  TProblema(grid.Objects[0,grid.Row]).toString );
end;

end.

