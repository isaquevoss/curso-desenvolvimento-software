unit uPrincipal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, System.IniFiles, Vcl.StdCtrls,
  Vcl.ExtCtrls, Vcl.ComCtrls;

type
  TForm3 = class(TForm)
    Button1: TButton;
    ComboBox1: TComboBox;
    ComboBox2: TComboBox;
    Edit1: TEdit;
    Edit2: TEdit;
    DateTimePicker1: TDateTimePicker;
    CheckBox1: TCheckBox;
    RadioGroup1: TRadioGroup;
    Button2: TButton;
    OpenDialog1: TOpenDialog;
    Button3: TButton;
    EdArquivo: TEdit;
    SaveDialog1: TSaveDialog;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
  private
    { Private declarations }
  public
    procedure gravarConfiguracoes();
    procedure carregarConfiguracoes();
  end;

var
  Form3: TForm3;

implementation

{$R *.dfm}

procedure TForm3.Button1Click(Sender: TObject);
begin
  gravarConfiguracoes;
end;

procedure TForm3.Button2Click(Sender: TObject);
begin
  carregarConfiguracoes();
end;

procedure TForm3.Button3Click(Sender: TObject);
begin
  OpenDialog1.Execute();
  ShowMessage(OpenDialog1.Files.Text);
end;

procedure TForm3.carregarConfiguracoes;
var
  arquivo_ini: TIniFile;
begin
  OpenDialog1.Execute();

  arquivo_ini := TIniFile.Create(OpenDialog1.FileName);

  ComboBox1.ItemIndex := arquivo_ini.ReadInteger('CONFIG', ComboBox1.Name, -1);
  ComboBox2.ItemIndex := arquivo_ini.ReadInteger('CONFIG', ComboBox2.Name, -1);

  Edit1.Text := arquivo_ini.ReadString('CONFIG', Edit1.Name, '');
  Edit2.Text := arquivo_ini.ReadString('CONFIG', Edit2.Name, '');

  DateTimePicker1.DateTime := arquivo_ini.ReadDateTime('CONFIG',
    DateTimePicker1.Name, Now);

  RadioGroup1.ItemIndex := arquivo_ini.ReadInteger('CONFIG',
    RadioGroup1.Name, 0);
  CheckBox1.Checked := arquivo_ini.ReadBool('CONFIG', CheckBox1.Name,
    CheckBox1.Checked);

end;

procedure TForm3.gravarConfiguracoes;
var
  arquivo_ini: TIniFile;
begin
  arquivo_ini := TIniFile.Create('.\Config.ini');

  arquivo_ini.WriteInteger('CONFIG', ComboBox1.Name, ComboBox1.ItemIndex);
  arquivo_ini.WriteInteger('CONFIG', ComboBox2.Name, ComboBox2.ItemIndex);

  arquivo_ini.WriteString('CONFIG', Edit1.Name, Edit1.Text);
  arquivo_ini.WriteString('CONFIG', Edit2.Name, Edit2.Text);

  arquivo_ini.WriteDateTime('CONFIG', DateTimePicker1.Name,
    DateTimePicker1.DateTime);

  arquivo_ini.WriteInteger('CONFIG', RadioGroup1.Name, RadioGroup1.ItemIndex);
  arquivo_ini.WriteBool('CONFIG', CheckBox1.Name, CheckBox1.Checked);

end;

end.
