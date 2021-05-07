unit uPrincipal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics, System.threading,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ComCtrls, Vcl.StdCtrls;

type
  TForm4 = class(TForm)
    btCarregar: TButton;
    ProgressBar1: TProgressBar;
    Edit1: TEdit;
    btDescarregar: TButton;
    rbCarregar: TRadioButton;
    rbDescarregar: TRadioButton;
    Button3: TButton;
    ListBox1: TListBox;
    ListBox2: TListBox;
    btCarregarItens: TButton;
    procedure btCarregarClick(Sender: TObject);
    procedure btDescarregarClick(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure btCarregarItensClick(Sender: TObject);
    procedure ListBox1DragDrop(Sender, Source: TObject; X, Y: Integer);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form4: TForm4;

implementation

{$R *.dfm}

procedure TForm4.btCarregarClick(Sender: TObject);
var
  i: Integer;
begin
  ProgressBar1.Max := ListBox1.Items.Count - 1;
  for i := 0 to ProgressBar1.Max do
  begin
    ListBox2.Items.Add(ListBox1.Items[i]);
    ProgressBar1.Position := i;
    //sleep(40);
  end;
  ListBox1.Items.Clear();
end;

procedure TForm4.btCarregarItensClick(Sender: TObject);
var
  i: Integer;
begin
  ListBox1.Clear();
  for i := 1 to StrToInt(Edit1.Text) do
  begin
    ListBox1.Items.Add('item ' + IntToStr(i));
  end;
end;

procedure TForm4.btDescarregarClick(Sender: TObject);
var
  i: Integer;
begin
  ProgressBar1.Max := ListBox2.Items.Count - 1;
  for i := 0 to ProgressBar1.Max do
  begin
    ListBox1.Items.Add(ListBox2.Items[i]);
    ProgressBar1.Position := ProgressBar1.Position - 1;
  end;
  ListBox2.Clear;
end;

procedure TForm4.Button3Click(Sender: TObject);
begin
  if rbCarregar.Checked then
  begin
    btCarregar.Click();
    exit;
  end;

  if rbDescarregar.Checked then
  begin
    btDescarregar.Click();
    exit;
  end;

end;

procedure TForm4.ListBox1DragDrop(Sender, Source: TObject; X, Y: Integer);
begin
  ShowMessage('');
end;

end.
