unit Unit2;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics, Vcl.Controls, Vcl.Forms, Vcl.Dialogs,
  Vcl.StdCtrls, Vcl.ExtCtrls;

type
  TForm2 = class(TForm)
    Notebook1: TNotebook;
    Edit2: TEdit;
    Edit32: TEdit;
    Edit33: TEdit;
    Edit34: TEdit;
    Edit35: TEdit;
    Edit36: TEdit;
    Edit37: TEdit;
    Button1: TButton;
    Button2: TButton;
    Button3: TButton;
    Label1: TLabel;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure FormActivate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form2: TForm2;

implementation

{$R *.dfm}

procedure TForm2.Button1Click(Sender: TObject);
begin
  Notebook1.ActivePage := 'Default';
end;

procedure TForm2.Button2Click(Sender: TObject);
begin
  Notebook1.ActivePage := 'pag2';

end;

procedure TForm2.Button3Click(Sender: TObject);
begin
  if (Notebook1.PageIndex >= (Notebook1.Pages.Count - 1)) then
    Notebook1.PageIndex := 0
  else
    Notebook1.PageIndex := Notebook1.PageIndex + 1;
end;

procedure TForm2.FormActivate(Sender: TObject);
begin
  Notebook1.ActivePage := 'Default';
end;

end.

