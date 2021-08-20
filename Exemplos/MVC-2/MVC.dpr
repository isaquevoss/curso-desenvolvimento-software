program MVC;

uses
  Vcl.Forms,
  uPrincipal in 'uPrincipal.pas' {Form1},
  uControleTelaInicial in 'Controllers\uControleTelaInicial.pas',
  uControle in 'Controllers\uControle.pas',
  uViewEstoque in 'Views\uViewEstoque.pas' {viewEstoque},
  uControleEstoque in 'Controllers\uControleEstoque.pas',
  uEstoque in 'Modelos\uEstoque.pas',
  uModelo in 'Modelos\uModelo.pas',
  uView in 'Views\uView.pas' {view},
  uViewClientes in 'Views\uViewClientes.pas' {view1};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TForm1, Form1);
  Application.CreateForm(TviewEstoque, viewEstoque);

  controleTelaInicial := TControleTelaInicial.Create();

  Application.Run;
end.
