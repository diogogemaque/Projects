program Project3_CemF;

uses
  Vcl.Forms,
  Unit3_CemF in 'Unit3_CemF.pas' {FormPrincipal};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TFormPrincipal, FormPrincipal);
  Application.Run;
end.
