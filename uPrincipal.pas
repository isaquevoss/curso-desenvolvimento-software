unit uPrincipal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Error, FireDAC.UI.Intf, FireDAC.Phys.Intf,
  FireDAC.Stan.Def, FireDAC.Stan.Pool, FireDAC.Stan.Async, FireDAC.Phys,
  FireDAC.Phys.MySQL, FireDAC.Phys.MySQLDef, Data.DB, FireDAC.Comp.Client,
  FireDAC.Stan.Param, FireDAC.DatS, FireDAC.DApt.Intf, FireDAC.DApt,
  Vcl.ExtCtrls, Vcl.DBCtrls, Vcl.Grids, Vcl.DBGrids, FireDAC.Comp.DataSet,
  FireDAC.VCLUI.Wait, FireDAC.Comp.UI, Vcl.Mask, uDmProblemas;

type
  TfrmPrincipal = class(TForm)
    pnMenu: TPanel;
    btCadstroProblemas: TButton;
    procedure Button1DragOver(Sender, Source: TObject; X, Y: Integer;
      State: TDragState; var Accept: Boolean);
    procedure Button1MouseLeave(Sender: TObject);
    procedure btCadstroProblemasClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmPrincipal: TfrmPrincipal;

implementation

uses
  uCadastroProblema;

{$R *.dfm}

procedure TfrmPrincipal.btCadstroProblemasClick(Sender: TObject);
begin
  frmCadastroProblema.Show();
end;

procedure TfrmPrincipal.Button1DragOver(Sender, Source: TObject; X, Y: Integer;
  State: TDragState; var Accept: Boolean);
begin
  ShowMessage('HELLO WORLD !!!!!!!!!!');
end;

procedure TfrmPrincipal.Button1MouseLeave(Sender: TObject);
begin
  ShowMessage('HELLO WORLD !!!!!!!!!!');
end;

end.
