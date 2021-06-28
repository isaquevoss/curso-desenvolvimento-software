unit uPrincipal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics, Vcl.Controls, Vcl.Forms, Vcl.Dialogs, ACBrBase,
  ACBrDFe, ACBrNFe, Vcl.StdCtrls;

type
  TForm1 = class(TForm)
    Button1: TButton;
    ACBrNFe1: TACBrNFe;
    OpenDialog1: TOpenDialog;
    Button2: TButton;
    Button3: TButton;
    Button4: TButton;
    Button5: TButton;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);
    procedure Button5Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

  TProduto = class
  private
    Fcodigo: Integer;
    Fdescricao: string;
    FcodBarras: string;
  public
    property codigo: Integer read Fcodigo write Fcodigo;
    property descricao: string read Fdescricao write Fdescricao;
    property codBarras: string read FcodBarras write FcodBarras;
    procedure gravar();
  end;

var
  Form1: TForm1;

implementation

uses
  pcnNFe;

{$R *.dfm}

procedure TForm1.Button1Click(Sender: TObject);
var
  valor_itens: double;
  i: integer;
begin
  if OpenDialog1.Execute then
  begin
    ACBrNFe1.NotasFiscais.LoadFromFile(OpenDialog1.FileName);

    for i := 0 to ACBrNFe1.NotasFiscais[0].NFe.Det.Count - 1 do
    begin
      valor_itens := ACBrNFe1.NotasFiscais[0].NFe.Det[i].Imposto.vTotTrib + valor_itens;
    end;

    ShowMessage(FloatToStr(valor_itens));
  end;
end;

procedure TForm1.Button2Click(Sender: TObject);
var
  i: Integer;
  total_notas: double;
begin
  if OpenDialog1.Execute then
  begin
    for i := 0 to OpenDialog1.Files.Count - 1 do
    begin
      ACBrNFe1.NotasFiscais.LoadFromFile(OpenDialog1.Files[i]);

    end;

    for i := 0 to ACBrNFe1.NotasFiscais.Count - 1 do
    begin
      total_notas := total_notas + ACBrNFe1.NotasFiscais[i].NFe.Total.ICMSTot.vTotTrib;
    end;

    ShowMessage(FloatToStr(total_notas));

  end;
end;

procedure TForm1.Button4Click(Sender: TObject);
var
  valor_itens: double;
  i: integer;
  produto: TProduto;
  a: Integer;
  nfe: TNFe;
  prod: TProd;
begin
  if OpenDialog1.Execute then
  begin
    ACBrNFe1.NotasFiscais.LoadFromFile(OpenDialog1.FileName);
    for a := 0 to ACBrNFe1.NotasFiscais.Count - 1 do
    begin
      nfe := ACBrNFe1.NotasFiscais[a].NFe;

      for i := 0 to nfe.Det.Count - 1 do
      begin
        prod := nfe.Det[i].Prod;

        produto := TProduto.Create();
        produto.codigo := i;
        produto.descricao := Prod.xProd;
        produto.codBarras := Prod.cEAN;
        produto.gravar();
      end;
    end;

  end;
end;

procedure TForm1.Button5Click(Sender: TObject);
begin

  ACBrNFe1.NotasFiscais.Add;

  ACBrNFe1.NotasFiscais[0].NFe.Emit; // dados do emitente

  ACBrNFe1.NotasFiscais[0].NFe.Dest; //dados do destinatario;

  ACBrNFe1.NotasFiscais[0].NFe.Det; // produtos e serviços

  ACBrNFe1.NotasFiscais[0].EnviarEmail('', '', '');

  //etc

  ACBrNFe1.NotasFiscais.GerarNFe(); // gera o xml;

  ACBrNFe1.WebServices.Enviar(); // transmitir a nfe

  ACBrNFe1.NotasFiscais[0].NFe.Ide.nNF := 56;
  ShowMessage(ACBrNFe1.NotasFiscais[0].NFe.infNFe.ID);

end;

{ TProduto }

procedure TProduto.gravar;
begin
  ShowMessage('gravando produto ' + Self.descricao + ' ' + Self.codBarras);
end;



end.

