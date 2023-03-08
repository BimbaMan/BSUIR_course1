unit Unit4test;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls;

type
  TfrmDel = class(TForm)
    rbDelMale: TRadioButton;
    rbDelFemale: TRadioButton;
    lblDelTitle: TLabel;
    btnDelDel: TButton;
    edtDel: TEdit;
    lblDelNumber: TLabel;
    procedure btnDelDelClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmDel: TfrmDel;

implementation
 uses unit1test;
{$R *.dfm}



procedure TfrmDel.btnDelDelClick(Sender: TObject);
begin
  if rbDelFemale.Checked=True then begin
    if trim(edtDel.Text)<>'' then begin
      element_number_search(edtDel.Text, PFemHead, PTemporary);
      if PTemporary<>nil then
        element_delete(PTemporary);
      frmMain.FemaleList.Clear;
      listbox_print_female(PFemHead);
    end
    else
    ShowMessage('������! ������� ����� ������������.');
  end;

  if rbDelMale.Checked=True then begin
    if trim(edtDel.Text)<> '' then begin
      element_number_search(edtDel.Text, PMaleHead, PTemporary);
      if PTemporary<>nil then
        element_delete(PTemporary);
      frmMain.MaleList.Clear;
      listbox_print_male(PMaleHead);
    end
    else
    ShowMessage('������! ������� ����� ������������.');
  end;

  if (rbDelFemale.Checked=False) and (rbDelMale.Checked=False) then
    ShowMessage('������! �������� ��� ������������.');

 edtDel.Text:='';
end;

end.
