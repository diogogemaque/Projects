unit Unit1;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls;

type
  TForm1 = class(TForm)
    DOLAR: TEdit;
    CONVERSAO: TButton;
    REAL: TEdit;
    Label1: TLabel;
    Label2: TLabel;
    COMPRA: TButton;
    MSG: TLabel;
    procedure CONVERSAOClick(Sender: TObject);
    procedure COMPRAClick(Sender: TObject);
    procedure DOLARChange(Sender: TObject);

  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;
//  var1: string;
//  var2: real;
  //real, integer, double, currency
  VARREAL, x: REAL;
  VARNOME: STRING;


implementation

{$R *.dfm}

procedure TForm1.CONVERSAOClick(Sender: TObject);
begin
//var1 := 'mensagem';
//  var2 := 1000.13;
  //edit1.text := var2;
  //edit1.text := inttostr(var2);
//  edit1.text := floattostr(var2);
//float ponto flutuante
   IF DOLAR.Text = '' then
    BEGIN
      SHOWMESSAGE ('Digite valor em DOLAR');
    END
   ELSE
      BEGIN
        COMPRA.Enabled := TRUE;
        VARREAL:= STRTOFLOAT (DOLAR.Text) * 3.9;
        REAL.Text := FLOATTOSTR (VARREAL);
      END;
end;


procedure TForm1.DOLARChange(Sender: TObject);
begin
  if (dolar.Text = '0') then
    begin
      x := 1;
      showmessage('Falta informar o dolar');
    end
    else
    begin
      varnome := inputbox('nome', '','');
        if (varnome = '') then
        begin
          x:=1;
          showmessage('Falta informar o nome');
        end
    end
end;

procedure TForm1.COMPRAClick(Sender: TObject);
begin
  if x = 0 then
    MSG.Caption := 'PARABENS ' + VARNOME + ' , VOCE COMPROU ' + DOLAR.Text + ' DOLAR(ES)'
end;

end.
