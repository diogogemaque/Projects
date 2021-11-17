program Project2;

uses
  Vcl.Forms,
  Unit2_SEGUNDO in 'Unit2_SEGUNDO.pas' {Form2};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TForm2, Form2);
  Application.Run;
end.
