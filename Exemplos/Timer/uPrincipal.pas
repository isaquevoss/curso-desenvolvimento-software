unit uPrincipal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, Vcl.StdCtrls,
  dxGDIPlusClasses, Vcl.ComCtrls;

type
  TForm4 = class(TForm)
    Timer1: TTimer;
    Button1: TButton;
    Edit1: TEdit;
    Label1: TLabel;
    timer_tempo: TTimer;
    Label2: TLabel;
    Image1: TImage;
    Image2: TImage;
    ProgressBar1: TProgressBar;
    procedure Timer1Timer(Sender: TObject);
    procedure Edit1Change(Sender: TObject);
    procedure timer_tempoTimer(Sender: TObject);
  private
  var
    tempoParaBuscar: integer;
  public
    { Public declarations }
  end;

var
  Form4: TForm4;

implementation

{$R *.dfm}

procedure TForm4.Edit1Change(Sender: TObject);
begin
  Label1.Caption := 'Digitando ..... ';
  Image1.Visible := true;
  Image2.Visible := false;
  tempoParaBuscar := 3;
  timer_tempo.Enabled := true;
  Label1.Visible := true;
  Timer1.Enabled := false;
  Timer1.Enabled := true;
end;

procedure TForm4.Timer1Timer(Sender: TObject);
var
  i: integer;
begin
  Timer1.Enabled := false;
  timer_tempo.Enabled := false;
  Image2.Visible := true;
  Image1.Visible := false;
  ProgressBar1.State := pbsNormal;
  Label1.Caption := 'Buscando ....';
  Application.ProcessMessages();
  Sleep(2000);
  ShowMessage('fazendo a busca');
  Label1.Visible := false;
end;

procedure TForm4.timer_tempoTimer(Sender: TObject);
begin
  Label2.Caption := 'A busca será iniciada em :' + IntToStr(tempoParaBuscar);
  tempoParaBuscar := tempoParaBuscar - 1;
end;

end.
