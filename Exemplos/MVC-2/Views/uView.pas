unit uView;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, uControle;

type
  Tview = class(TForm)
  private
    Fcontrole: TControle;
    { Private declarations }
  public
    { Public declarations }
    property controle: TControle read Fcontrole write Fcontrole;
  end;

var
  view: Tview;

implementation

{$R *.dfm}

end.
