﻿unit Unit1test;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls;

type
  TfrmMain = class(TForm)
    FemaleList: TListBox;
    btnMainAdd: TButton;
    btnMainDel: TButton;
    lblFemaleList: TLabel;
    MaleList: TListBox;
    lblMaleList: TLabel;
    btnMainEdition: TButton;
    btnMainCreatePairs: TButton;
    btnMainFileCreate: TButton;
    btnMainFileOpen: TButton;
    btnMainClean: TButton;
    frmMainSort: TButton;
    procedure FormCreate(Sender: TObject);
    procedure btnMainAddClick(Sender: TObject);
    procedure btnMainDelClick(Sender: TObject);
    procedure btnMainEditionClick(Sender: TObject);
    procedure btnMainCreatePairsClick(Sender: TObject);
    procedure btnMainFileCreateClick(Sender: TObject);
    procedure btnMainFileOpenClick(Sender: TObject);
    procedure btnMainCleanClick(Sender: TObject);
    procedure frmMainSortClick(Sender: TObject);



  private

    { Private declarations }
  public
    { Public declarations }
  end;

TPHuman = ^THuman;
THuman = record
  Prev:TPHuman;
  Number : integer;
  Name : string[255];
  Age : string[255];
  Height : string[255];
  Weight : string[255];
  AgeMin, AgeMax:string[255];
  HeightMin, HeightMax:string[255];
  WeightMin, WeightMax:string[255];
  Next: TPHuman;
  end;


var
  frmMain: TfrmMain;
  PFemHead:TPHuman;
  PMaleHead:TPHuman;
  PTemporary:TPHuman;
  procedure list_elem_create(const Name, Age, Height, Weight, AgeMin, AgeMax, HeightMin, HeightMax, WeightMin, WeightMax:string; const PPP:TPHuman);
  procedure element_delete(const TTT:TPHuman);
  procedure element_number_search(const Number:string; const PPP:TPHuman; out TTT:TPHuman);
  procedure file_create_typized(const PPP:TPHuman; const NameOfFile:string);
  procedure file_create_text(const PPP:TPHuman; const NameOfFile:string);
  procedure listbox_print_male(const PPP:TPHuman);
  procedure file_open_typized(const PPP:TPHuman; const NameOfFile:string);
  procedure listbox_print_female(const PPP:TPHuman);
  procedure file_open_text(const HHH:TPHuman; const NameOfFile:string);
  procedure clean_lists;
  implementation

{$R *.dfm}
uses unit2test, unit4test, unit5test, unit6test, unit7test, unit8test;





procedure TfrmMain.FormCreate(Sender: TObject);
begin
new(PFemHead);
PFemHead^.Next:=nil;
PFemHead^.Prev:=nil;
new(PMaleHead);
PMaleHead^.Next:=nil;
PMaleHead^.Prev:=nil;
new(PTemporary);
PTemporary^.Next:=nil;
PTemporary^.Prev:=nil;
end;



procedure list_elem_create(const Name, Age, Height, Weight, AgeMin, AgeMax, HeightMin, HeightMax, WeightMin, WeightMax:string; const PPP:TPHuman);
var temp, current:TPHuman;
begin
 temp:=PPP;
 while temp^.Next<>nil do begin
 temp:=temp^.Next;
 end;
 new(current);
 temp^.Next:=Current;
 current^.Prev:=temp;
 current^.Next:=nil;
 current^.Name:=trim(Name);
 current^.Age:=trim(Age);
 current^.Height:=trim(Height);
 current^.Weight:=trim(Weight);
 current^.AgeMin:=trim(AgeMin);
 current^.AgeMax:=trim(AgeMax);
 current^.HeightMin:=trim(HeightMin);
 current^.HeightMax:=trim(HeightMax);
 current^.WeightMin:=trim(WeightMin);
 current^.WeightMax:=trim(WeightMax);
end;





procedure listbox_print_female(const PPP:TPHuman);
var temp:TPHuman;
  procedure number(const HHH:TPHuman);
    var curr:TPHuman; i: integer;
     begin
       curr:=HHH;
       i:=0;
       while curr^.Next<>nil do begin
          inc(i);
          curr:=curr^.Next;
          curr^.Number:=i;
       end;
     end;
begin
number(PPP);
    temp:=PPP;
    while temp^.Next<>nil do begin
      temp:=temp^.Next;
      frmMain.FemaleList.Items.Add('№: '+inttostr(temp^.Number));
      frmMain.FemaleList.Items.Add('Имя: '+temp^.Name);
      frmMain.FemaleList.Items.Add('Возраст: '+temp^.Age);
      frmMain.FemaleList.Items.Add('Рост: '+temp^.Height);
      frmMain.FemaleList.Items.Add('Вес: '+temp^.Weight);
      frmMain.FemaleList.Items.Add('Требования к партнеру: ');
      frmMain.FemaleList.Items.Add('Возраст: от '+temp^.AgeMin+' до '+temp^.AgeMax);
      frmMain.FemaleList.Items.Add('Рост: от '+temp^.HeightMin+' до '+temp^.HeightMax);
      frmMain.FemaleList.Items.Add('Вес: от '+temp^.WeightMin+' до '+temp^.WeightMax);
      frmMain.FemaleList.Items.Add('');
end;
end;




procedure listbox_print_male(const PPP:TPHuman);
var temp:TPHuman;
  procedure number(const HHH:TPHuman);
    var curr:TPHuman; i: integer;
     begin
       curr:=HHH;
       i:=0;
       while curr^.Next<>nil do begin
          inc(i);
          curr:=curr^.Next;
          curr^.Number:=i;
       end;
     end;
begin
    number(PPP);
    temp:=PPP;
    while temp^.Next<>nil do begin
      temp:=temp^.Next;
      frmMain.MaleList.Items.Add('№: '+inttostr(temp^.Number));
      frmMain.MaleList.Items.Add('Имя: '+temp^.Name);
      frmMain.MaleList.Items.Add('Возраст: '+temp^.Age);
      frmMain.MaleList.Items.Add('Рост: '+temp^.Height);
      frmMain.MaleList.Items.Add('Вес: '+temp^.Weight);
      frmMain.MaleList.Items.Add('Требования к партнеру: ');
      frmMain.MaleList.Items.Add('Возраст: от '+temp^.AgeMin+' до '+temp^.AgeMax);
      frmMain.MaleList.Items.Add('Рост: от '+temp^.HeightMin+' до '+temp^.HeightMax);
      frmMain.MaleList.Items.Add('Вес: от '+temp^.WeightMin+' до '+temp^.WeightMax);
      frmMain.MaleList.Items.Add('');
    end;
 end;






procedure element_number_search(const Number:string; const PPP:TPHuman; out TTT:TPHuman);
var temp:TPHuman;
 begin
   temp:=PPP;
   TTT:=nil;
   if temp^.Next=nil then begin
   showmessage('Список пуст');
   TTT:=nil;
 end;
   if temp^.Next<>nil then begin
   while temp^.Next<>nil do begin
   temp:=temp^.Next;
   if (temp^.Number=strtoint(Number)) then
    TTT:=temp;
   end;
   if TTT=nil then
    showmessage('Ошибка! Не удалось найти человека по введенному номеру');
 end;
end;





procedure element_delete(const TTT:TPHuman);
begin

      if TTT^.Next<>nil then begin
      TTT^.Next^.Prev:=TTT^.prev;
      TTT^.prev^.Next := TTT^.Next;
      dispose(TTT);
      end;

      if TTT^.Next=nil then begin
      TTT^.Prev^.Next:=nil;
      dispose(TTT);
      end;
end;





procedure Creating(const MMM, FFF:TPHuman);
var PMaleTemp, PFemTemp:TPHuman;
begin
   PMaleTemp:=MMM;
   PFemTemp:=FFF;
   if (PMaleTemp^.Next<>nil) and (PFemTemp^.Next<>nil) then begin

     while PFemTemp^.Next<>nil do begin
       PFemTemp:=PFemTemp^.Next;
       PMaleTemp:=MMM;

       while PMaleTemp^.Next<>nil do begin
         PMaleTemp:=PMaleTemp^.Next;
         if (strtoint(PFemTemp^.AgeMin)<=strtoint(PMaleTemp^.Age)) and (strtoint(PFemTemp^.AgeMax)>=strtoint(PMaleTemp^.Age))
         and (strtoint(PFemTemp^.HeightMin)<=strtoint(PMaleTemp^.Height)) and (strtoint(PFemTemp^.HeightMax)>=strtoint(PMaleTemp^.Height))
         and (strtoint(PFemTemp^.WeightMin)<=strtoint(PMaleTemp^.Weight)) and (strtoint(PFemTemp^.WeightMax)>=strtoint(PMaleTemp^.Weight))
         and (strtoint(PMaleTemp^.AgeMin)<=strtoint(PFemTemp^.Age)) and (strtoint(PMaleTemp^.AgeMax)>=strtoint(PFemTemp^.Age))
         and (strtoint(PMaleTemp^.HeightMin)<=strtoint(PFemTemp^.Height)) and (strtoint(PMaleTemp^.HeightMax)>=strtoint(PFemTemp^.Height))
         and (strtoint(PMaleTemp^.WeightMin)<=strtoint(PFemTemp^.Weight)) and (strtoint(PMaleTemp^.WeightMax)>=strtoint(PFemTemp^.Weight))
         then begin
           frmPairs.PairsList.Items.Add(inttostr(PMaleTemp^.Number)+'.'+PMaleTemp^.Name+','+PMaleTemp^.Age+' <-> '
           +inttostr(PFemTemp^.Number)+'.'+PFemTemp^.Name+','+PFemTemp^.Age);
         end;
       end;

     end;


     PFemTemp:=FFF;
     PMaleTemp:=MMM;
     while PFemTemp^.Next<>nil do begin
       PFemTemp:=PFemTemp^.Next;
       PMaleTemp:=MMM;

       while PMaleTemp^.Next<>nil do begin
         PMaleTemp:=PMaleTemp^.Next;
         if (strtoint(PFemTemp^.AgeMin)<=strtoint(PMaleTemp^.Age)) and (strtoint(PFemTemp^.AgeMax)>=strtoint(PMaleTemp^.Age))
         and (strtoint(PFemTemp^.HeightMin)<=strtoint(PMaleTemp^.Height)) and (strtoint(PFemTemp^.HeightMax)>=strtoint(PMaleTemp^.Height))
         and (strtoint(PFemTemp^.WeightMin)<=strtoint(PMaleTemp^.Weight)) and (strtoint(PFemTemp^.WeightMax)>=strtoint(PMaleTemp^.Weight))
         and (strtoint(PMaleTemp^.AgeMin)<=strtoint(PFemTemp^.Age)) and (strtoint(PMaleTemp^.AgeMax)>=strtoint(PFemTemp^.Age))
         and (strtoint(PMaleTemp^.HeightMin)<=strtoint(PFemTemp^.Height)) and (strtoint(PMaleTemp^.HeightMax)>=strtoint(PFemTemp^.Height))
         and (strtoint(PMaleTemp^.WeightMin)<=strtoint(PFemTemp^.Weight)) and (strtoint(PMaleTemp^.WeightMax)>=strtoint(PFemTemp^.Weight))
         then begin
           frmPairs.CreatedPairsList.Items.Add(inttostr(PMaleTemp^.Number)+'.'+PMaleTemp^.Name+','+PMaleTemp^.Age+' ♥♥♥ '
           +inttostr(PFemTemp^.Number)+'.'+PFemTemp^.Name+','+PFemTemp^.Age);

           if PMaleTemp^.Next=nil then begin
              PMaleTemp^.Prev^.Next:=nil;
           end;

           if PMaleTemp^.Next<>nil then begin
              PMaleTemp^.Next^.Prev:=PMaleTemp^.prev;
              PMaleTemp^.prev^.Next := PMaleTemp^.Next;
           end;

           if PFemTemp^.Next=nil then begin
              PFemTemp^.Prev^.Next:=nil;
              PFemTemp:=PFemTemp^.Prev;
           end;

           if PFemTemp^.Next<>nil then begin
              PFemTemp^.Next^.Prev:=PFemTemp^.Prev;
              PFemTemp^.Prev^.Next:=PFemTemp^.Next;
              PFemTemp:=PFemTemp^.Prev;
           end;

           break;
         end;
       end;

     end;
   end;
end;





procedure file_create_typized(const PPP:TPHuman; const NameOfFile:string);
var temp:TPHuman; FType:file of THuman;
begin

   if NameOfFile<>'' then begin
     AssignFile(FType, NameOfFile+'.dat');
     Rewrite(FType);
     temp:=PPP;
     while temp^.Next<>nil do begin
       temp:=temp^.Next;
       write(FType, temp^);
     end;
     closefile(FType);
 end
 else
 ShowMessage('Ошибка! Введите имя файла');

end;





procedure file_open_typized(const PPP:TPHuman; const NameOfFile:string);
var temp:THuman; FType:file of THuman;
begin
  if NameOfFile<>'' then begin
    AssignFile(FType, NameOfFile+'.dat');
    Reset(FType);
    while not eof(FType) do begin
      read(FType, temp);
      list_elem_create(temp.Name, temp.Age, temp.Height, temp.Weight, temp.AgeMin, temp.AgeMax, temp.HeightMin,
      temp.HeightMax, temp.WeightMin, temp.WeightMax, PPP);
    end;
    closefile(FType);
  end
  else
  ShowMessage('Ошибка! Введите имя файла');

end;





procedure file_create_text(const PPP:TPHuman; const NameOfFile:string);
var temp:TPHuman; FType:textfile;
begin

 if NameOfFile<>'' then begin
     AssignFile(FType, NameOfFile+'.txt');
     Rewrite(FType);
    if PPP^.Next<>nil then begin
       temp := PPP^.Next;
      repeat
       writeln(FType,'№: '+inttostr(temp^.Number));
       writeln(FType,'Имя: '+temp^.Name);
       writeln(FType,'Возраст: '+temp^.Age);
       writeln(FType,'Рост: '+temp^.Height);
       writeln(FType,'Вес: '+temp^.Weight);
       writeln(FType,'Требования к партнеру:');
       writeln(FType,'Возраст: от '+temp^.AgeMin+' до '+temp^.AgeMax);
       writeln(FType,'Рост: от '+temp^.HeightMin+' до '+temp^.HeightMax);
       writeln(FType,'Вес: от '+temp^.WeightMin+' до '+temp^.WeightMax);
       writeln(FType,' ');
        temp := temp^.next;
      until temp = nil;
    end;
    closefile(FType);

 end
 else
 ShowMessage('Ошибка! Введите имя файла');

end;

procedure file_open_text(const HHH:TPHuman; const NameOfFile:string);
var TName, TAge, THeight, TWeight, TAgeMin, TAgeMax,THeightMin, THeightMax, TWeightMin, TWeightMax, garb:string; position:integer; FType:textfile;
begin
 if NameOfFile<>'' then begin
  AssignFile(FType, NameOfFile+'.txt');
  Reset(FType);

      while not eof(FType) do begin

      readln(FType, garb);
      readln(FType, TName);
      readln(FType, TAge);
      readln(FType, THeight);
      readln(FType, TWeight);
      readln(FType, garb);
      readln(FType, TAgeMin);
      readln(FType, THeightMin);
      readln(FType, TWeightMin);
      readln(FType, garb);
      delete(TName, 1, 5);
      delete(TAge, 1, 9);
      delete(THeight, 1, 6);
      delete(TWeight, 1, 5);

      delete(TAgeMin, 1, 12);
      TAgeMax:=TAgeMin;
      position:=pos(' ',TAgeMin);
      delete(TAgeMin, position, length(TAgeMin));
      delete(TAgeMax, 1, position);
      position:=pos(' ',TAgeMax);
      delete(TAgeMax, 1, position);

      delete(THeightMin, 1, 9);
      THeightMax:=THeightMin;
      position:=pos(' ',THeightMin);
      delete(THeightMin, position, length(THeightMin));
      delete(THeightMax, 1, position);
      position:=pos(' ',THeightMax);
      delete(THeightMax, 1, position);

      delete(TWeightMin, 1, 8);
      TWeightMax:=TWeightMin;
      position:=pos(' ',TWeightMin);
      delete(TWeightMin, position, length(TWeightMin));
      delete(TWeightMax, 1, position);
      position:=pos(' ',TWeightMax);
      delete(TWeightMax, 1, position);
      list_elem_create(TName, TAge, THeight, TWeight, TAgeMin, TAgeMax, THeightMin, THeightMax, TWeightMin, TWeightMax, HHH);
      end;

  closefile(FType);
 end
 else
 ShowMessage('Ошибка! Введите имя файла');

end;





procedure clean_lists;
var temp:TPHuman;
begin
  temp:=PMaleHead;
  while temp^.Next<>nil do begin
    temp:=temp^.Next;
    element_delete(temp);
  end;

  temp:=PFemHead;
  while temp^.Next<>nil do begin
    temp:=temp^.Next;
    element_delete(temp);
  end;

  frmMain.FemaleList.Clear;
  frmMain.MaleList.Clear;
  listbox_print_male(PMaleHead);
  listbox_print_female(PFemHead);


end;

procedure SortByAge(PPP:TPHuman);
var temp, x, sss:TPHuman; i, n, j:integer;
begin
    new(sss);
    temp:=PPP;
    while temp^.Next<>nil do begin
      temp:=temp^.Next;
     if temp^.Next<>nil then begin
      x:=temp^.Next;
      if strtoint(x^.Age)<strtoint(temp^.Age) then begin
          sss^.Number:=x^.Number;
          sss^.Name:=x^.Name;
          sss^.Age:=x^.Age;
          sss^.Height:=x^.Height;
          sss^.Weight:=x^.Weight;
          sss^.AgeMin:=x^.AgeMin;
          sss^.AgeMax:=x^.AgeMax;
          sss^.HeightMin:=x^.HeightMin;
          sss^.HeightMax:=x^.HeightMax;
          sss^.WeightMin:=x^.WeightMin;
          sss^.WeightMax:=x^.WeightMax;

          x^.Number:=temp^.Number;
          x^.Name:=temp^.Name;
          x^.Age:=temp^.Age;
          x^.Height:=temp^.Height;
          x^.Weight:=temp^.Weight;
          x^.AgeMin:=temp^.AgeMin;
          x^.AgeMax:=temp^.AgeMax;
          x^.HeightMin:=temp^.HeightMin;
          x^.HeightMax:=temp^.HeightMax;
          x^.WeightMin:=temp^.WeightMin;
          x^.WeightMax:=temp^.WeightMax;

          temp^.Number:=sss^.Number;
          temp^.Name:=sss^.Name;
          temp^.Age:=sss^.Age;
          temp^.Height:=sss^.Height;
          temp^.Weight:=sss^.Weight;
          temp^.AgeMin:=sss^.AgeMin;
          temp^.AgeMax:=sss^.AgeMax;
          temp^.HeightMin:=sss^.HeightMin;
          temp^.HeightMax:=sss^.HeightMax;
          temp^.WeightMin:=sss^.WeightMin;
          temp^.WeightMax:=sss^.WeightMax;
      end;

      while x^.Next<>nil do begin
        x:=x^.Next;
        if strtoint(x^.Age)<strtoint(temp^.Age) then begin
          sss^.Number:=x^.Number;
          sss^.Name:=x^.Name;
          sss^.Age:=x^.Age;
          sss^.Height:=x^.Height;
          sss^.Weight:=x^.Weight;
          sss^.AgeMin:=x^.AgeMin;
          sss^.AgeMax:=x^.AgeMax;
          sss^.HeightMin:=x^.HeightMin;
          sss^.HeightMax:=x^.HeightMax;
          sss^.WeightMin:=x^.WeightMin;
          sss^.WeightMax:=x^.WeightMax;

          x^.Number:=temp^.Number;
          x^.Name:=temp^.Name;
          x^.Age:=temp^.Age;
          x^.Height:=temp^.Height;
          x^.Weight:=temp^.Weight;
          x^.AgeMin:=temp^.AgeMin;
          x^.AgeMax:=temp^.AgeMax;
          x^.HeightMin:=temp^.HeightMin;
          x^.HeightMax:=temp^.HeightMax;
          x^.WeightMin:=temp^.WeightMin;
          x^.WeightMax:=temp^.WeightMax;

          temp^.Number:=sss^.Number;
          temp^.Name:=sss^.Name;
          temp^.Age:=sss^.Age;
          temp^.Height:=sss^.Height;
          temp^.Weight:=sss^.Weight;
          temp^.AgeMin:=sss^.AgeMin;
          temp^.AgeMax:=sss^.AgeMax;
          temp^.HeightMin:=sss^.HeightMin;
          temp^.HeightMax:=sss^.HeightMax;
          temp^.WeightMin:=sss^.WeightMin;
          temp^.WeightMax:=sss^.WeightMax;
        end;
      end;
     end;
    end;
end;





procedure TfrmMain.frmMainSortClick(Sender: TObject);
begin
  frmMain.MaleList.Clear;
  SortByAge(PMaleHead);
  listbox_print_male(PMaleHead);
  frmMain.FemaleList.Clear;
  SortByAge(PFemHead);
  listbox_print_female(PFemHead);
end;




procedure TfrmMain.btnMainAddClick(Sender: TObject);
begin
  frmAdd.Show;
end;





procedure TfrmMain.btnMainCreatePairsClick(Sender: TObject);
begin
 if (PMaleHead^.Next<>nil) and (PFemHead^.Next<>nil) then begin
  frmPairs.CreatedPairsList.Clear;
  frmPairs.PairsList.Clear;
  Creating(PMaleHead, PFemHead);
  frmMain.FemaleList.Clear;
  listbox_print_female(PFemHead);
  frmMain.MaleList.Clear;
  listbox_print_male(PMaleHead);
  frmPairs.Show;
 end
 else
 ShowMessage('В списках отсутствуют пользователи.');
end;

procedure TfrmMain.btnMainDelClick(Sender: TObject);
begin
frmDel.Show;
end;


procedure TfrmMain.btnMainEditionClick(Sender: TObject);
begin
frmEdit.Show;
end;

procedure TfrmMain.btnMainFileCreateClick(Sender: TObject);
begin
frmSave.Show;
end;


procedure TfrmMain.btnMainFileOpenClick(Sender: TObject);
begin
frmOpen.Show;
end;

procedure TfrmMain.btnMainCleanClick(Sender: TObject);
begin
clean_lists;
end;

end.
