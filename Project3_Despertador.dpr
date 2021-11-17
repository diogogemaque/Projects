program Project3_Despertador;

uses
  Vcl.Forms,
  Unit3_Despertador in 'Unit3_Despertador.pas' {Form3};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TForm3, Form3);
  Application.Run;
end.
