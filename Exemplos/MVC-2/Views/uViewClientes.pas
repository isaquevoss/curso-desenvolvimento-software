unit uViewClientes;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, uView;

type
  Tview1 = class(Tview)
  private
    { Private declarations }
  public
    { Public declarations }
    procedure teste();

  end;

var
  view1: Tview1;

implementation

{$R *.dfm}

{ Tview1 }

procedure Tview1.teste;
begin

end;

end.
