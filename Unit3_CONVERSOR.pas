unit Unit3_CONVERSOR;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Mask, Vcl.ExtCtrls;

type
  TForm3 = class(TForm)
    ContadorHora: TMaskEdit;
    setup1: TButton;
    Label1: TLabel;
    Timer1: TTimer;
    setup3: TButton;
    TempSeg: TLabel;
    procedure setup1Click(Sender: TObject);
    procedure Timer1Timer(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form3: TForm3;
  segundos, minutos, horas : integer;

implementation

{$R *.dfm}

procedure TForm3.setup1Click(Sender: TObject);
  var seg1: integer;
  seg1 := 120930;
begin
  TempSeg.Text := StrtoInt(seg1.ToString);
end;

procedure TForm3.Timer1Timer(Sender: TObject);
begin
  ContadorHora.Text := DateTimeToStr(now);
end;

end.
