unit uCadastroProblema;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls;

type
  TfrmCadastroProblema = class(TForm)
    mmProblema: TMemo;
    btCancelar: TButton;
    btGravar: TButton;
    cbProduto: TComboBox;
    cbModulo: TComboBox;
    lbProduto: TLabel;
    LbModulo: TLabel;
    procedure btCancelarClick(Sender: TObject);
    procedure btGravarClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    procedure CarregarProdutos();
    procedure CarregarModulos();
  end;

var
  frmCadastroProblema: TfrmCadastroProblema;

implementation

uses
  udmproblemas, uDmModulos, uDmProdutos;

{$R *.dfm}

procedure TfrmCadastroProblema.btCancelarClick(Sender: TObject);
var
  retorno: Integer;
begin
  retorno := MessageDlg('Deseja cancelar a operação ?', mtConfirmation,
    [mbyes, mbno, mbCancel], 0);

  if retorno = mrYes then
  begin
    Close();
  end;

end;

procedure TfrmCadastroProblema.btGravarClick(Sender: TObject);
var
  idModulo: Integer;
  idProduto: Integer;
begin
  idModulo := dmModulos.buscarIdModuloPorDescricao(cbModulo.Text);
  idProduto := dmProdutos.buscarIdProdutoPorDescricao(cbProduto.Text);

  dmProblemas.SalvarProblema(mmProblema.Lines.Text, idModulo, idProduto);

  Close();
end;

procedure TfrmCadastroProblema.CarregarModulos;
begin
  dmModulos.carregarQrModulos();
  cbModulo.Items.Clear();
  cbModulo.Items.Add('Módulo que não existe');
  while not dmModulos.QrModulos.Eof do
  begin
    cbModulo.Items.Add(dmModulos.QrModulos.FieldByName('nome').AsString);
    dmModulos.QrModulos.Next();
  end;

end;

procedure TfrmCadastroProblema.CarregarProdutos;
begin
  dmProdutos.carregarQrProdutos();
  cbProduto.Clear();
  while not dmProdutos.QrProdutos.Eof do
  begin
    cbProduto.Items.Add(dmProdutos.QrProdutos.FieldByName('nome').AsString);
    dmProdutos.QrProdutos.Next();
  end;
end;

procedure TfrmCadastroProblema.FormShow(Sender: TObject);
begin
  CarregarProdutos();
  CarregarModulos();
end;

end.
