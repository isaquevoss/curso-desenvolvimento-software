unit MVC;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics, Vcl.Controls, Vcl.Forms, Vcl.Dialogs,
  Vcl.StdCtrls, uClasses, uDfeClass, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf,
  FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt, Data.DB,
  FireDAC.Comp.DataSet, FireDAC.Comp.Client, FireDAC.UI.Intf, FireDAC.Stan.Def,
  FireDAC.Stan.Pool, FireDAC.Phys, FireDAC.Phys.FB, FireDAC.Phys.FBDef,
  FireDAC.VCLUI.Wait, FireDAC.Comp.UI;

type
  TForm1 = class(TForm)
    Button1: TButton;
    Button2: TButton;
    Button3: TButton;
    Button4: TButton;
    Button5: TButton;
    Button6: TButton;
    Edit1: TEdit;
    Label1: TLabel;
    Button7: TButton;
    Button8: TButton;
    FDQuery1: TFDQuery;
    FDConnection1: TFDConnection;
    FDGUIxWaitCursor1: TFDGUIxWaitCursor;
    Button9: TButton;
    FDManager1: TFDManager;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);
    procedure Button6Click(Sender: TObject);
    procedure Button5Click(Sender: TObject);
    procedure Button7Click(Sender: TObject);
    procedure Button8Click(Sender: TObject);
    procedure Button9Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    procedure transmitirDFe(dfe: tdfe);
    procedure gravarPessoa(pessoa: TPessoa);
    procedure nomeComponente(componente: TComponent);
    procedure setarFoco(compoente: TWinControl);
    procedure relatorioFromDataSet(dataSet: TDataSet);
  end;

var
  Form1: TForm1;

implementation



{$R *.dfm}

procedure TForm1.Button1Click(Sender: TObject);
var
  cliente: TCliente;
begin
  cliente := TCliente.Create();

  cliente.nome := 'Isaque';
  cliente.cpf := '08362536985';

  cliente.Free();

end;

procedure TForm1.Button2Click(Sender: TObject);
var
  usuario: TUsuario;
begin
  usuario := TUsuario.Create();
  usuario.nome := 'Isaque';
  usuario.cpf := '08362536985';
  ShowMessage('cpf: '+usuario.cpf+#13'cpf Formatado: '+usuario.cpfFormatado);
  usuario.gravar();

end;

procedure TForm1.Button3Click(Sender: TObject);
var
  nfe: Tdfe;
begin
  nfe := TNFe.Create();

  transmitirDFe(nfe);

end;

procedure TForm1.Button4Click(Sender: TObject);
var
  cte: TCte;
begin
  cte := TCte.Create();

//  cte.consultar();
  cte.numero := 46546;

  transmitirDFe(cte);

end;

procedure TForm1.Button5Click(Sender: TObject);
var
  usuario: TUsuario;
begin
  usuario := TUsuario.Create();

  gravarPessoa(usuario);

end;

procedure TForm1.Button6Click(Sender: TObject);
var
  cliente: TClienteHerdando;
begin
  cliente := TClienteHerdando.Create();
  cliente.cpf :=  '08362536985';

  ShowMessage(cliente.cpf+#13+cliente.cpfFormatado);
  gravarPessoa(cliente);

end;

procedure TForm1.Button7Click(Sender: TObject);
var
  i: Integer;
begin
  for i := 0 to ComponentCount - 1 do
    nomeComponente(Components[i]);
end;

procedure TForm1.Button8Click(Sender: TObject);
begin
  setarFoco(Button2);
end;

procedure TForm1.Button9Click(Sender: TObject);
begin
  FDQuery1.Open('select first 10 codigo, nome, endereco from cliente');

  relatorioFromDataSet(FDQuery1);
end;

procedure TForm1.gravarPessoa(pessoa: TPessoa);
begin
  pessoa.gravar();
end;

procedure TForm1.nomeComponente(componente: TComponent);
begin
  ShowMessage(componente.Name);
end;

procedure TForm1.relatorioFromDataSet(dataSet: TDataSet);
var
  sl: TStringList;
  linha: string;
  i: Integer;
begin
  sl := TStringList.Create;
  dataSet.First();
  while not dataSet.Eof do
  begin
    linha := '';
    for i := 0 to dataSet.Fields.Count - 1 do
    begin
      linha := linha + ' '+ dataSet.Fields[i].FieldName + ': '+ dataSet.Fields[i].AsString;

    end;
      sl.Add(linha);
        dataSet.Next();
  end;
   sl.SaveToFile('relatorio.txt');

end;

procedure TForm1.setarFoco(compoente: TWinControl);
begin
  compoente.SetFocus();
end;

procedure TForm1.transmitirDFe(dfe: tdfe);
begin
  ShowMessage('transmitiendo ' + IntToStr(dfe.numero) + ' classe: ' + dfe.ToString);
  dfe.enviar();

end;

end.

