unit uSolucao;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls;

type
  TfrmSolucao = class(TForm)
    mmSolucao: TMemo;
    btGravar: TButton;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmSolucao: TfrmSolucao;

implementation

{$R *.dfm}

end.
