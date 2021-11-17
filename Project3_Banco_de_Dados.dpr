program Project3_Banco_de_Dados;

uses
  Vcl.Forms,
  Unit3_Banco_de_Dados in 'Unit3_Banco_de_Dados.pas' {Form3};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TForm3, Form3);
  Application.Run;
end.
