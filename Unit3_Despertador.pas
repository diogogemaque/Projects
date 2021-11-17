unit Unit3_Despertador;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls, Vcl.MPlayer,
  Vcl.Mask;

type
  TForm3 = class(TForm)
    relogio: TPanel;
    LabelHrs: TLabel;
    Timer1: TTimer;
    Desativar: TButton;
    Ativar: TButton;
    Timer2: TTimer;
    MaskEdit1: TMaskEdit;
    status: TLabel;
    procedure Timer1Timer(Sender: TObject);
    procedure AtivarClick(Sender: TObject);
    procedure DesativarClick(Sender: TObject);
    procedure Timer2Timer(Sender: TObject);

  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form3: TForm3;
  var tempoFinal: string;
implementation

{$R *.dfm}

procedure TForm3.AtivarClick(Sender: TObject);
begin
  status.Caption:='Ativado';
  timer2.Enabled:=true;
end;

procedure TForm3.DesativarClick(Sender: TObject);
begin
  status.Caption:='Desativado';
  timer2.Enabled:=False;
end;

procedure TForm3.Timer1Timer(Sender: TObject);
  begin
  relogio.Caption := TimeToStr(now);
  end;


procedure TForm3.Timer2Timer(Sender: TObject);
begin
  if Maskedit1.Text <> '' then
      if relogio.Caption > Maskedit1.Text then
      begin
        beep;
      end;
end;

end.
