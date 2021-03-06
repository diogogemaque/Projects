unit Unit2;

interface
uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Error, FireDAC.UI.Intf, FireDAC.Phys.Intf,
  FireDAC.Stan.Def, FireDAC.Stan.Pool, FireDAC.Stan.Async, FireDAC.Phys,
  FireDAC.Phys.MSAcc, FireDAC.Phys.MSAccDef, FireDAC.VCLUI.Wait,
  FireDAC.Stan.Param, FireDAC.DatS, FireDAC.DApt.Intf, FireDAC.DApt, Data.DB,
  FireDAC.Comp.DataSet, FireDAC.Comp.Client, Vcl.Grids, Vcl.DBGrids,
  Vcl.ExtCtrls, Vcl.Buttons;
type
  TForm2 = class(TForm)
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    txt_ID: TEdit;
    txt_NOME: TEdit;
    txt_EMAIL: TEdit;
    txt_TELEFONE: TEdit;
    txt_OBS: TMemo;
    FDConnection1: TFDConnection;
    FDContatos: TFDTable;
    DataSource1: TDataSource;
    btn_NOVO: TButton;
    btn_SALVAR: TButton;
    conexao: TLabel;
    Button1: TButton;
    Button2: TButton;
    btn_DELETE: TButton;
    btn_EDITAR: TButton;
    btn_CANCELAR: TButton;
    txt_PROCURA: TEdit;
    SpeedButton1: TSpeedButton;
    procedure carrega;
    procedure bloqueia;
    procedure limpa;
    procedure FormCreate(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure btn_NOVOClick(Sender: TObject);
    procedure btn_SALVARClick(Sender: TObject);
    procedure FDContatosBeforePost(DataSet: TDataSet);
    procedure btn_DELETEClick(Sender: TObject);
    procedure btn_EDITARClick(Sender: TObject);
    procedure btn_CANCELARClick(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;
var
  Form2: TForm2;
  estado: integer;

implementation
{$R *.dfm}
procedure Tform2.bloqueia;
begin
txt_NOME.Enabled      := not   txt_NOME.Enabled;
txt_EMAIL.Enabled     := not   txt_EMAIL.Enabled;
txt_TELEFONE.Enabled  := not   txt_TELEFONE.Enabled;
txt_obs.Enabled       := not   txt_OBS.Enabled;
end;
procedure Tform2.limpa;
begin
txt_id.Text       := '';
txt_NOME.text     := '';
txt_EMAIL.text    := '';
txt_TELEFONE.text := '';
txt_obs.text      := '';
txt_NOME.SetFocus;

end;

procedure TForm2.SpeedButton1Click(Sender: TObject);
begin
 IF fdcontatos.FindKey([txt_PROCURA.Text]) then
       carrega
 else
     showmessage('nao encontrado')


end;
procedure TForm2.btn_CANCELARClick(Sender: TObject);
begin
limpa;
if estado = 1  then
  fdcontatos.Prior;
carrega;
bloqueia;
estado := 0;


end;
procedure TForm2.btn_DELETEClick(Sender: TObject);
begin
fdcontatos.Delete;
carrega;
end;
procedure TForm2.btn_EDITARClick(Sender: TObject);
begin
bloqueia;
fdcontatos.Edit;
end;
procedure TForm2.btn_NOVOClick(Sender: TObject);
begin
fdcontatos.Insert;
bloqueia;
limpa;
 estado := 1;   // 1 = post


end;
procedure TForm2.btn_SALVARClick(Sender: TObject);
begin
fdcontatos.Post;
bloqueia;
showmessage ('Dados Gravados');
end;
procedure TForm2.Button1Click(Sender: TObject);
begin
fdcontatos.Next;
carrega;
end;
procedure TForm2.Button2Click(Sender: TObject);
begin
fdcontatos.Prior;
carrega;
end;
procedure Tform2.carrega;
begin
txt_ID.text       := fdcontatos.FieldByName('id').Value;
txt_NOME.text     := fdcontatos.FieldByName('nome').Value;
txt_EMAIL.text    := fdcontatos.FieldByName('email').Value;
txt_TELEFONE.text := fdcontatos.FieldByName('telefone').Value;
if fdcontatos.FieldByName('observacoes').Value = NULL then
   txt_OBS.text :=''
else
 txt_OBS.text      := fdcontatos.FieldByName('observacoes').Value;
end;

procedure TForm2.FDContatosBeforePost(DataSet: TDataSet);
begin
fdcontatos.FieldByName('nome').value        := txt_nome.Text;
fdcontatos.FieldByName('email').value       := txt_email.Text;
fdcontatos.FieldByName('telefone').value    := txt_telefone.Text;
fdcontatos.FieldByName('observacoes').value := txt_obs.Text;
end;
procedure TForm2.FormCreate(Sender: TObject);
begin
 fdconnection1.Params.Database :=  GetCurrentDir+'\assets\contatos.mdb' ;
 fdconnection1.Connected := true;
 fdcontatos.TableName    := 'contatos';
 fdcontatos.Active       := true;
 if fdconnection1.Connected = true then
 begin
    conexao.Caption := 'Conectado';
    carrega;
 end;
end;
end.

