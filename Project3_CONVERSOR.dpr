program Project3_CONVERSOR;

uses
  Vcl.Forms,
  Unit3_CONVERSOR in 'Unit3_CONVERSOR.pas' {Form3};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TForm3, Form3);
  Application.Run;
end.
