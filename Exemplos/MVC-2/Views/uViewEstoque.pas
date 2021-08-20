unit uViewEstoque;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, uControleEstoque;

type
  TviewEstoque = class(TForm)
    lbProduto: TLabel;
    Button1: TButton;
    procedure Button1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    Fcontrole: TControleEstoque;
    { Private declarations }
  public
    property controle: TControleEstoque read Fcontrole write Fcontrole;
  end;

var
  viewEstoque: TviewEstoque;

implementation

uses
  uEstoque;

{$R *.dfm}

procedure TviewEstoque.Button1Click(Sender: TObject);
var
  produto : tEstoque;
begin
  produto := controle.getEstoque(Random(568));

  lbProduto.Caption := 'produto Cod: '+IntToStr(produto.cod)+ ' Nome: '+produto.nome;
end;

procedure TviewEstoque.FormCreate(Sender: TObject);
begin
  controle := TControleEstoque.Create();
end;

end.
