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
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmCadastroProblema: TfrmCadastroProblema;

implementation

uses
  udmproblemas;

{$R *.dfm}

procedure TfrmCadastroProblema.btCancelarClick(Sender: TObject);
var
  retorno: Integer;
begin
  retorno := MessageDlg('Deseja cancelar a operação ?', mtConfirmation , [mbyes,mbno,mbCancel] , 0);

  if retorno = mrYes then
  begin
    Close();
  end;

end;

procedure TfrmCadastroProblema.btGravarClick(Sender: TObject);
begin

  dmProblemas.SalvarProblema(mmProblema.Lines.Text);

  Close();
end;

end.
