unit uPrincipal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls,
  uSolucao, uProblema;

type
  TForm4 = class(TForm)
    Button1: TButton;
    Edit1: TEdit;
    Memo1: TMemo;
    Button2: TButton;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
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
  novaSolucao: TSolucao;
begin
  if not Assigned(problema) then
  begin
    problema := TProblema.Create();
  end;

  novaSolucao := TSolucao.Create();
  novaSolucao.descricao := Edit1.Text;

  problema.solucoes.Add(novaSolucao);


  Memo1.Visible := True;
  Button2.Visible := true;


end;

procedure TForm4.Button2Click(Sender: TObject);
var
  i: Integer;
begin
  Memo1.Lines.Clear();
  for i := 0 to problema.solucoes.Count -1 do
  begin
    Memo1.Lines.Add(problema.solucoes[i].descricao);
  end;
  Memo1.Lines.Add('Foram encontradas '+ IntToStr( problema.solucoes.Count ) + ' Soluções' );
end;

end.
