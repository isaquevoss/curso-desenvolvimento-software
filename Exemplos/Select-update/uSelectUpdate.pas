unit uSelectUpdate;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf,
  FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt, Data.DB,
  FireDAC.Comp.DataSet, FireDAC.Comp.Client, Vcl.StdCtrls, uDmConexao;

type
  TForm3 = class(TForm)
    Button1: TButton;
    Button2: TButton;
    QrSelect: TFDQuery;
    QrUpdateInsert: TFDQuery;
    Memo1: TMemo;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form3: TForm3;

implementation

{$R *.dfm}

procedure TForm3.Button1Click(Sender: TObject);
var
  i: Integer;
  informacoes: string;
begin
  QrSelect.SQL.Clear();
  QrSelect.SQL.Add('select * from problemas');
  QrSelect.Open();

  while not QrSelect.Eof do
  begin

    for i := 0 to QrSelect.Fields.Count -1 do
    begin
      Memo1.lines.add(QrSelect.Fields[i].FieldName + ' - ' + QrSelect.Fields[i].AsString );
    end;

    QrSelect.Next();
//    ShowMessage(QrSelect.FieldByName('NOME_DO_CAMPO').AsString);
  end;
  //passar com um for em todos os campos de cada linha
  //e adicionar ou apresentar uma mensagem com a informação.
end;

procedure TForm3.Button2Click(Sender: TObject);
begin
  QrUpdateInsert.SQL.Clear();
  QrUpdateInsert.SQL.Add('insert into problemas (descricao) values (:descricao)');
  //acessar todos os parametros necessários
  QrUpdateInsert.ParamByName('descricao').AsString := 'valor do parametro';
  QrUpdateInsert.ExecSQL();
end;

end.
