unit Unit5test;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls;

type
  TfrmEdit = class(TForm)
    lblEditTitle: TLabel;
    edtEditNumber: TEdit;
    rbEditMale: TRadioButton;
    rbEditFemale: TRadioButton;
    btnEditFind: TButton;
    edtEditName: TEdit;
    edtEditAge: TEdit;
    edtEditHeight: TEdit;
    edtEditWeight: TEdit;
    btnEditEditing: TButton;
    edtEditAgeMin: TEdit;
    edtEditAgeMax: TEdit;
    edtEditHeightMin: TEdit;
    edtEditHeightMax: TEdit;
    edtEditWeightMin: TEdit;
    edtEditWeightMax: TEdit;
    lblEditNumber: TLabel;
    lblEditName: TLabel;
    lblAddAge: TLabel;
    lblEditHeight: TLabel;
    lblEditWeight: TLabel;
    lblEditAgeMinAgeMax: TLabel;
    lblEditHeightMinHeightMax: TLabel;
    lblEditWeightMinWeightMax: TLabel;
    lblAEditWants: TLabel;
    procedure btnEditFindClick(Sender: TObject);
    procedure btnEditEditingClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmEdit: TfrmEdit;

implementation
 uses Unit1test;
{$R *.dfm}



procedure TfrmEdit.btnEditFindClick(Sender: TObject);
begin
  if (rbEditFemale.Checked=True) then begin
    if trim(edtEditNumber.Text)<>'' then begin
      element_number_search(edtEditNumber.Text, PFemHead, PTemporary);
      if PTemporary<>nil then begin
        edtEditName.Text:=PTemporary^.Name;
        edtEditAge.Text:=PTemporary^.Age;
        edtEditHeight.Text:=PTemporary^.Height;
        edtEditWeight.Text:=PTemporary^.Weight;
        edtEditAgeMin.Text:=PTemporary^.AgeMin;
        edtEditAgeMax.Text:=PTemporary^.AgeMax;
        edtEditHeightMin.Text:=PTemporary^.HeightMin;
        edtEditHeightMax.Text:=PTemporary^.HeightMax;
        edtEditWeightMin.Text:=PTemporary^.WeightMin;
        edtEditWeightMax.Text:=PTemporary^.WeightMax;
      end;
    end
    else
    ShowMessage('Ошибка! Введите номер пользователя.');
  end;

  if (rbEditMale.Checked=True) then begin
    if trim(edtEditNumber.Text)<>'' then begin
      element_number_search(edtEditNumber.Text, PMaleHead, PTemporary);
      if PTemporary<>nil then begin
        edtEditName.Text:=PTemporary^.Name;
        edtEditAge.Text:=PTemporary^.Age;
        edtEditHeight.Text:=PTemporary^.Height;
        edtEditWeight.Text:=PTemporary^.Weight;
        edtEditAgeMin.Text:=PTemporary^.AgeMin;
        edtEditAgeMax.Text:=PTemporary^.AgeMax;
        edtEditHeightMin.Text:=PTemporary^.HeightMin;
        edtEditHeightMax.Text:=PTemporary^.HeightMax;
        edtEditWeightMin.Text:=PTemporary^.WeightMin;
        edtEditWeightMax.Text:=PTemporary^.WeightMax;
      end;
    end
    else
    ShowMessage('Ошбика! Введите номер пользователя.');
  end;

  if (rbEditFemale.Checked=False) and (rbEditMale.Checked=False) then
    ShowMessage('Ошибка! Выберите пол пользователя.');

  edtEditNumber.Text:='';
end;



procedure TfrmEdit.btnEditEditingClick(Sender: TObject);
begin

 if (edtEditAgeMin.Text<>'') and (edtEditAgeMax.Text<>'') and (edtEditHeightMin.Text<>'') and (edtEditHeightMax.Text<>'') and (edtEditWeightMin.Text<>'') and (edtEditWeightMax.Text<>'')  then begin

   if (strtoint(edtEditAgeMin.Text)<=strtoint(edtEditAgeMax.Text)) and (strtoint(edtEditHeightMin.Text)<=strtoint(edtEditHeightMax.Text)) and (strtoint(edtEditWeightMin.Text)<=strtoint(edtEditWeightMax.Text)) then begin
     if PTemporary<>nil then begin
       PTemporary^.Name:=trim(edtEditName.Text);
       PTemporary^.Age:=trim(edtEditAge.Text);
       PTemporary^.Height:=trim(edtEditHeight.Text);
       PTemporary^.Weight:=trim(edtEditWeight.Text);
       PTemporary^.AgeMin:=trim(edtEditAgeMin.Text);
       PTemporary^.AgeMax:=trim(edtEditAgeMax.Text);
       PTemporary^.HeightMin:=trim(edtEditHeightMin.Text);
       PTemporary^.HeightMax:=trim(edtEditHeightMax.Text);
       PTemporary^.WeightMin:=trim(edtEditWeightMin.Text);
       PTemporary^.WeightMax:=trim(edtEditWeightMax.Text);

       if rbEditFemale.Checked=True then begin
         frmMain.FemaleList.Clear;
         listbox_print_female(PFemHead);
       end;

       if rbEditMale.Checked=True then begin
         frmMain.MaleList.Clear;
         listbox_print_male(PMaleHead);
       end;

       PTemporary:=nil;

     end;
   end
   else
   ShowMessage('Ошибка! Не верно введены требования к партнеру.');

 end

 else begin
     if PTemporary<>nil then begin
       PTemporary^.Name:=trim(edtEditName.Text);
       PTemporary^.Age:=trim(edtEditAge.Text);
       PTemporary^.Height:=trim(edtEditHeight.Text);
       PTemporary^.Weight:=trim(edtEditWeight.Text);
       PTemporary^.AgeMin:=trim(edtEditAgeMin.Text);
       PTemporary^.AgeMax:=trim(edtEditAgeMax.Text);
       PTemporary^.HeightMin:=trim(edtEditHeightMin.Text);
       PTemporary^.HeightMax:=trim(edtEditHeightMax.Text);
       PTemporary^.WeightMin:=trim(edtEditWeightMin.Text);
       PTemporary^.WeightMax:=trim(edtEditWeightMax.Text);

       if rbEditFemale.Checked=True then begin
         frmMain.FemaleList.Clear;
         listbox_print_female(PFemHead);
       end;

       if rbEditMale.Checked=True then begin
         frmMain.MaleList.Clear;
         listbox_print_male(PMaleHead);
       end;

       PTemporary:=nil;

     end;
 end;


  edtEditName.Text:='';
  edtEditAge.Text:='';
  edtEditHeight.Text:='';
  edtEditWeight.Text:='';
  edtEditAgeMin.Text:='';
  edtEditAgeMax.Text:='';
  edtEditHeightMin.Text:='';
  edtEditHeightMax.Text:='';
  edtEditWeightMin.Text:='';
  edtEditWeightMax.Text:='';
 end;


end.
