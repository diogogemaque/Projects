program Project3_Bloco_De_Notas;

uses
  Vcl.Forms,
  Unit3_Bloco_De_Notas in 'Unit3_Bloco_De_Notas.pas' {Form3};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TForm3, Form3);
  Application.Run;
end.
