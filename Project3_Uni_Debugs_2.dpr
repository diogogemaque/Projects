program Project3_Uni_Debugs_2;

uses
  Vcl.Forms,
  Unit3_Uni_Debugs_2 in 'Unit3_Uni_Debugs_2.pas' {Form3};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TForm3, Form3);
  Application.Run;
end.
