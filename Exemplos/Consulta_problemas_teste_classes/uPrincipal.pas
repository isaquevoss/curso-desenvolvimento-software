unit uPrincipal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls,
  uSolucao, uProblema, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf,
  FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt, Data.DB,
  FireDAC.Comp.DataSet, FireDAC.Comp.Client, uDMConexao, Vcl.ComCtrls;

type
  TForm4 = class(TForm)
    edId: TEdit;
    Button1: TButton;
    edDescricao: TEdit;
    Label1: TLabel;
    lbCódigo: TLabel;
    lbSolucoes: TListBox;
    dtDataHoraProblema: TDateTimePicker;
    procedure Button1Click(Sender: TObject);
    procedure lbSolucoesClick(Sender: TObject);
    procedure lbSolucoesDblClick(Sender: TObject);
  private
    Fproblema: TProblema;
    { Private declarations }
  public
    property problema: TProblema read Fproblema write Fproblema;
  end;

var
  Form4: TForm4;

implementation

{$R *.dfm}

procedure TForm4.Button1Click(Sender: TObject);
var
  i: Integer;
begin
  dmConexao.conectarBanco();

  if Assigned(problema) then
    problema.Free;
  problema := TProblema.Create();

  problema.carregarPeloId(StrToInt(edId.Text));

  edDescricao.Text := problema.descricao;

  lbCódigo.Caption := 'Código: ' + IntToStr(problema.id);
  dtDataHoraProblema.DateTime := problema.dataHora;

  problema.carregarSolucoes();
  lbSolucoes.Clear();
  for i := 0 to problema.solucoes.Count - 1 do
  begin
    lbSolucoes.AddItem(problema.solucoes[i].descricao, problema.solucoes[i]);
  end;

end;

procedure TForm4.lbSolucoesClick(Sender: TObject);
var
  i: Integer;
begin
  for i := 0 to lbSolucoes.Items.Count -1  do
  begin
    ShowMessage( lbSolucoes.Items.Objects[i].ToString);
  end;

  lbSolucoes.Items.Objects[0];
end;

procedure TForm4.lbSolucoesDblClick(Sender: TObject);
 var
  solucao: string;
begin
 ShowMessage( TSolucao( lbSolucoes.Items.Objects[lbSolucoes.ItemIndex]).descricao );


End;

end.
