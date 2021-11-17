unit Unit3_CemF;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls;

type
  TFormPrincipal = class(TForm)
    Button1: TButton;
    Celsius: TEdit;
    txt_Celsius: TLabel;
    pnlTopo: TPanel;
    Fahrenheit: TLabel;
    Label1: TLabel;
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormPrincipal: TFormPrincipal;

  vFahrenheit: real;

implementation

{$R *.dfm}

procedure TFormPrincipal.Button1Click(Sender: TObject);
begin
  if Celsius.text = '' then
    begin
        showmessage('Digite a temperatura');
    end

  else
  begin
    vFahrenheit := (strtofloat(Celsius.Text) * 1.8)+32;
    Fahrenheit.caption := floattostr(vFahrenheit)+'F';
    label1.Enabled := true;
    label1.Caption := 'A Conversão é ';
  end;

end;

end.
