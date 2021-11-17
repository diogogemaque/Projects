unit Unit3_Bloco_De_Notas;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Menus, Vcl.StdCtrls, Vcl.ExtCtrls,
  System.Actions, Vcl.ActnList, Vcl.StdActns, Data.Bind.EngExt,
  Vcl.Bind.DBEngExt, System.Rtti, System.Bindings.Outputs, Vcl.Bind.Editors,
  Data.Bind.Components,DB;

type
  TForm3 = class(TForm)
    MainMenu1: TMainMenu;
    Arquivo1: TMenuItem;
    novo: TMenuItem;
    abrir: TMenuItem;
    salvar: TMenuItem;
    SalvarComo1: TMenuItem;
    Fechar1: TMenuItem;
    Imprimir1: TMenuItem;
    Formatar1: TMenuItem;
    Memo1: TMemo;
    OpenDialog1: TOpenDialog;
    SaveDialog1: TSaveDialog;
    FontDialog1: TFontDialog;
    PalavraLoc: TEdit;
    Panel1: TPanel;
    Localizar: TButton;
    PalavraSub: TEdit;
    Substituir: TButton;
    procedure novoClick(Sender: TObject);
    procedure abrirClick(Sender: TObject);
    procedure Fechar1Click(Sender: TObject);
    procedure SalvarComo1Click(Sender: TObject);
    procedure salvarClick(Sender: TObject);
    procedure Imprimir1Click(Sender: TObject);
    procedure Formatar1Click(Sender: TObject);
    procedure SubstituirClick(Sender: TObject);
    procedure LocalizarClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form3: TForm3;

implementation

{$R *.dfm}

procedure TForm3.Fechar1Click(Sender: TObject);
begin
Application.terminate;
end;

procedure TForm3.Formatar1Click(Sender: TObject);
begin
   var texto: string;

   if FontDialog1.Execute then
    Memo1.Lines.Text;
end;

procedure TForm3.Imprimir1Click(Sender: TObject);
begin
  print
end;


procedure TForm3.LocalizarClick(Sender: TObject);
  var texto2:string;
begin
  texto2 := memo1.Lines.Text;
    memo1.Lines.Clear
    //memo1.Lines.Text := Sting (texto2,PalavraLoc.Text,[loPartialKey,loCaseInsensitive]);
end;

procedure TForm3.novoClick(Sender: TObject);
begin
  Memo1.Lines.Clear;
end;

procedure TForm3.salvarClick(Sender: TObject);
begin
    Memo1.Lines.SaveToFile(SaveDialog1.FileName);
end;

procedure TForm3.SalvarComo1Click(Sender: TObject);
begin
    if SaveDialog1.Execute then
    Memo1.Lines.SaveToFile(SaveDialog1.FileName);
end;

procedure TForm3.SubstituirClick(Sender: TObject);
var texto3: string;
  begin
    texto3 := memo1.Lines.Text;
    memo1.Lines.Clear;
    memo1.Lines.Text := StringReplace(texto3,PalavraLoc.Text,PalavraSub.Text,[rfIgnoreCase]);
  end;
procedure TForm3.abrirClick(Sender: TObject);
begin
    if OpenDialog1.Execute then
    memo1.Lines.LoadFromFile(Opendialog1.FileName);
end;

end.
