program Project3_Uni_Debugs_1;

uses
  Vcl.Forms,
  Unit3_Uni_Debugs_1 in 'Unit3_Uni_Debugs_1.pas' {Form3};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TForm3, Form3);
  Application.Run;
end.
