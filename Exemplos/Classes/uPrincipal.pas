unit uPrincipal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, uPessoa, Vcl.StdCtrls;

type
  TForm4 = class(TForm)
    Button1: TButton;
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

procedure TForm4.Button1Click(Sender: TObject);
var
  pessoa: TPessoa;
begin
  pessoa := TPessoa.Create();

  pessoa.nome := 'Isaque';
  pessoa.sobrenome := 'Voss Klassmann';

  pessoa.data_nascimento := StrToDate('02/10/1993');

  ShowMessage(pessoa.nomeCompleto +' '+ IntToStr(pessoa.idade));

end;

end.
