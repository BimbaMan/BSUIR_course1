program test;

uses
  Vcl.Forms,
  Unit1test in 'Unit1test.pas' {frmMain},
  Unit2test in 'Unit2test.pas' {frmAdd},
  Unit4test in 'Unit4test.pas' {frmDel},
  Unit5test in 'Unit5test.pas' {frmEdit},
  Unit6test in 'Unit6test.pas' {frmPairs},
  Unit7test in 'Unit7test.pas' {frmSave},
  Unit8test in 'Unit8test.pas' {frmOpen};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TfrmMain, frmMain);
  Application.CreateForm(TfrmAdd, frmAdd);
  Application.CreateForm(TfrmDel, frmDel);
  Application.CreateForm(TfrmEdit, frmEdit);
  Application.CreateForm(TfrmPairs, frmPairs);
  Application.CreateForm(TfrmSave, frmSave);
  Application.CreateForm(TfrmOpen, frmOpen);
  Application.Run;
end.
