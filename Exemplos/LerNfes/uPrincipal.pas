unit uPrincipal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics, Vcl.Controls, Vcl.Forms, Vcl.Dialogs,
  Vcl.StdCtrls, ACBrBase, ACBrDFe, ACBrNFe;

type
  TForm1 = class(TForm)
    ACBrNFe1: TACBrNFe;
    OpenDialog1: TOpenDialog;
    Button1: TButton;
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

uses
  uClasses;

{$R *.dfm}

procedure TForm1.Button1Click(Sender: TObject);
var
  nota: TNotaFiscal;
begin
  if OpenDialog1.Execute then
  begin
    ACBrNFe1.NotasFiscais.LoadFromFile(OpenDialog1.FileName);

    nota := TNotaFiscal.Create();

    nota.emitente.razao_social := ACBrNFe1.NotasFiscais[0].NFe.Emit.xNome;
    nota.emitente.cnpj := ACBrNFe1.NotasFiscais[0].NFe.Emit.CNPJCPF;

    nota.cliente.razao_social := ACBrNFe1.NotasFiscais[0].NFe.Dest.xNome;
    nota.cliente.cnpj := ACBrNFe1.NotasFiscais[0].NFe.Dest.CNPJCPF;

    nota.produto.descricao := ACBrNFe1.NotasFiscais[0].NFe.Det[0].Prod.xProd;
    nota.produto.codBarras := ACBrNFe1.NotasFiscais[0].NFe.Det[0].Prod.cEAN;


    nota.gravar();
  end;

end;

end.

