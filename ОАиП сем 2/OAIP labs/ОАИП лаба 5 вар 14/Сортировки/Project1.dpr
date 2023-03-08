program Project1;





uses
  Vcl.Forms,
  Unit1 in 'Unit1.pas' {Unit1Form},
  Unitcmpr in 'Unitcmpr.pas' {Unit—mprForm},
  Unitexchng in 'Unitexchng.pas' {unitEcxchngForm};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TUnit1Form, Unit1Form);
  Application.CreateForm(TUnit—mprForm, Unit—mprForm);
  Application.CreateForm(TunitEcxchngForm, unitEcxchngForm);
  Application.Run;
end.
