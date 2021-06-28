unit uPrincipal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics, Vcl.Controls, Vcl.Forms, Vcl.Dialogs,
  Vcl.StdCtrls, ACBrBase, ACBrDFe, ACBrNFe, uClasses;

type
  TfrmNotaFiscal = class(TForm)
    ACBrNFe1: TACBrNFe;
    OpenDialog1: TOpenDialog;
    Button1: TButton;
    Button2: TButton;
    Memo1: TMemo;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
  private
    Fnota: TNotaFiscal;
    { Private declarations }
  public
    property nota: TNotaFiscal read Fnota write Fnota;
    { Public declarations }
  end;

var
  frmNotaFiscal: TfrmNotaFiscal;

implementation

uses
  pcnNFe;

{$R *.dfm}

procedure TfrmNotaFiscal.Button1Click(Sender: TObject);
var
  NFe: TNFe;
  prod: TProd;
  produto: TProduto;
  i: Integer;
begin
  if OpenDialog1.Execute then
  begin
    ACBrNFe1.NotasFiscais.LoadFromFile(OpenDialog1.FileName);

    nota := TNotaFiscal.Create();
/////////// Utilização de With do
//    with ACBrNFe1.NotasFiscais[0].NFe do
//    begin
//      nota.emitente.razao_social := Emit.xNome;
//      with Det[0] do
//      begin
//        nota.produto.descricao := Prod.xProd;
//      end;
//
//    end;
/////////// Utilização de With do
///
    NFe := ACBrNFe1.NotasFiscais[0].NFe;

    nota.emitente.razao_social := NFe.Emit.xNome;
    nota.emitente.cnpj := NFe.Emit.CNPJCPF;

    nota.cliente.razao_social := NFe.Dest.xNome;
    nota.cliente.cnpj := NFe.Dest.CNPJCPF;

    for i := 0 to NFe.Det.Count - 1 do
    begin
      prod := NFe.Det[i].prod;

      produto := TProduto.Create();

      produto.descricao := prod.xProd;
      produto.codBarras := prod.cEAN;

      nota.produtos.Add(produto);
    end;

  end;

end;

procedure TfrmNotaFiscal.Button2Click(Sender: TObject);
var
  emitente: TEmitente;
  i: Integer;
begin
  emitente := nota.emitente;
  Memo1.Lines.Add('emitente: ' + emitente.razao_social + ' cnpj: ' + emitente.cnpj);
  Memo1.Lines.Add('cliente: ' + nota.cliente.razao_social + ' cnpj: ' + nota.cliente.cnpj);
  for i := 0 to nota.produtos.Count - 1 do
  begin
    Memo1.Lines.Add('produto: ' + nota.produtos[i].descricao+ ' ean: ' + nota.produtos[i].codBarras);
  end;

end;

end.

