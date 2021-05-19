unit uPrincipal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls;

type
  TForm4 = class(TForm)
    Button1: TButton;
    Edit1: TEdit;
    Edit2: TEdit;
    Edit3: TEdit;
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form4: TForm4;

implementation

{$R *.dfm}

function teste(var valorUn, Qtd, Total: Double): Boolean;
begin
  if valorUn = 0 then
  begin
    valorUn := Total / Qtd;
  end;
  if qtd = 0 then
  begin
    Qtd := Total / valorUn;

  end;
  if Total = 0 then
  begin
    Total := valorUn * qtd;

  end;

end;

procedure TForm4.Button1Click(Sender: TObject);
var valor_un, quantidade, valor_total: Double;
begin
  valor_un := StrToFloat( Edit1.Text );
  quantidade := StrToFloat(Edit2.Text);
  valor_total := StrToFloat(Edit3.Text);
  teste(valor_un,quantidade, valor_total);


  ShowMessage('Valor un: '+FloatToStr(valor_un)+#13'Quantidade: '+FloatToStr(quantidade)+#13'Valor total: '+FloatToStr(valor_total));
end;

end.
