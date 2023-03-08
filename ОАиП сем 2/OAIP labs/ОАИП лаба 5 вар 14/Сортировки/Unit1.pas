unit Unit1;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, System.Math, Vcl.Grids,
  Vcl.ExtCtrls, Unitcmpr, Unitexchng;

type
  TArray = array of integer;

type
  TUnit1Form = class(TForm)
    StringGridValue: TStringGrid;
    StringGridHeader: TStringGrid;
    ButtonSort: TButton;
    ComboBoxWay: TComboBox;

    procedure ButtonSortClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

procedure colRect(rct: TRect; clr: TColor; field: tcanvas);
procedure drawrect(linenum: integer; field: TImage);

var
  Unit1Form: TUnit1Form;
  Arr: TArray;
  cmpr, exchange: integer;
  values: array [1 .. 6, 1 .. 9] of integer;

implementation

{$R *.dfm}

procedure fillArr(arrlength: integer);
var
  j, arrmin, arrmax: integer;
begin
  arrmin := -1000;
  arrmax := 1000;
  SetLength(Arr, arrlength);
  randomize;

  for j := 0 to arrlength - 1 do
    Arr[j] := Randomrange(arrmin, arrmax);

end;

procedure reverse_array(var Arr: TArray);
var
  i, temp, max: integer;
begin
  max := Length(Arr) - 1;
  for i := 0 to Length(Arr) div 2 do
  begin
    temp := Arr[i];
    Arr[i] := Arr[max - i];
    Arr[max - i] := temp;
  end;
end;

procedure Shaker(arr_temp :TArray);
var i, j, l, r, k, x :integer;
begin
SetLength(arr_temp,length(arr));
 for j := 0 to length(arr)-1 do
 begin
  arr_temp[j] := arr[j];
 end;
l := 1;
r := length(arr_temp)-1;
k := length(arr_temp)-1;
cmpr := 0;
exchange := 0;
  repeat
    for j := r downto l do
    begin
      if (arr_temp[j-1] > arr_temp[j]) then
      begin
        x := arr_temp[j-1];
        arr_temp[j-1] := arr_temp[j];
        arr_temp[j] := x;
        k := j;
        inc(exchange);
      end;
    inc(cmpr);
    end;
  l := k+1;
  for j := l to r do
  begin
    if (arr_temp[j-1] > arr_temp[j]) then
    begin
    x := arr_temp[j-1];
    arr_temp[j-1] := arr_temp[j];
    arr_temp[j] := x;
    k := j;
    inc(exchange);
    end;
  inc(cmpr);
  end;
  r := k-1;
 until (l > r);
end;

procedure Shell_Sort(arr_temp: TArray);
var
  gap, lt, rt, i, t: integer;
begin
  cmpr := 0;
  exchange := 0;
  gap := 1;
  while gap <= High(arr) do
    gap := 3 * gap + 1;
  gap := gap div 3;
  while gap > 0 do
  begin
    for i := 0 to High(arr) - gap do
    begin
      lt := i;
      rt := lt + gap;
      inc(exchange);
      t := arr[rt];
      inc(cmpr);
      while (lt >= 0) and (arr[lt] > t) do
      begin
        inc(cmpr);
        inc(exchange);
        arr[rt] := arr[lt];
        rt := lt;
        inc(exchange);
        Dec(lt, gap);
      end;
      inc(exchange);
      arr[rt] := t;
    end;
    gap := gap div 3;
  end;
end;

procedure calc_quick(var arr1: TArray; l, r: integer; out compare, exchng: integer);
var
  i, j: integer; w, q: integer;
begin
  i := l;
  j := r;
  inc(exchng);
  q := arr1[(l + r) div 2];
  repeat
    inc(compare);
    while (arr1[i] < q) do
    begin
      inc(compare);
      inc(i);
    end;
    inc(compare);
    while (q < arr1[j]) do
    begin
      inc(compare);
      Dec(j);
    end;
    if (i <= j) then
    begin
      inc(exchng);
      w := arr1[i];
      inc(exchng);
      arr1[i] := arr1[j];
      inc(exchng);
      arr1[j] := w;
      inc(i);
      Dec(j);
    end;
  until (i > j);
  if (l < j) then
    calc_quick(arr1, l, j, compare, exchng);
  if (i < r) then
    calc_quick(arr1, i, r, compare, exchng);
end;

procedure Quick_Sort(var arr1: TArray);
Var
  N: integer; i :integer;
begin
  cmpr := 0;
  exchange := 0;
  N := Length(arr1) - 1;
  calc_quick(arr1, 1, N, cmpr, exchange);
end;

procedure TUnit1Form.ButtonSortClick(Sender: TObject);
begin
  randomize;
  case ComboBoxWay.ItemIndex of
    0:
      begin
        fillArr(10);

        Shaker(Arr);
        StringGridValue.Cells[1, 1] := inttostr(cmpr);
        StringGridValue.Cells[2, 1] := inttostr(exchange);
        values[1, 1] := cmpr;
        values[2, 1] := exchange;
        Shell_Sort(Arr);
        StringGridValue.Cells[3, 1] := inttostr(cmpr);
        StringGridValue.Cells[4, 1] := inttostr(exchange);
        values[1, 2] := cmpr;
        values[2, 2] := exchange;
        Quick_Sort(Arr);
        StringGridValue.Cells[5, 1] := inttostr(cmpr);
        StringGridValue.Cells[6, 1] := inttostr(exchange);
        values[1, 3] := cmpr;
        values[2, 3] := exchange;

        Shaker(Arr);
        StringGridValue.Cells[1, 2] := inttostr(cmpr);
        StringGridValue.Cells[2, 2] := inttostr(exchange);
        values[1, 4] := cmpr;
        values[2, 4] := exchange;
        Shell_Sort(Arr);
        StringGridValue.Cells[3, 2] := inttostr(cmpr - 1);
        StringGridValue.Cells[4, 2] := inttostr(exchange);
        values[1, 5] := cmpr;
        values[2, 5] := exchange;
        Quick_Sort(Arr);
        StringGridValue.Cells[5, 2] := inttostr(cmpr);
        StringGridValue.Cells[6, 2] := inttostr(exchange);
        values[1, 6] := cmpr;
        values[2, 6] := exchange;

        reverse_array(Arr);
        Shaker(Arr);
        StringGridValue.Cells[1, 3] := inttostr(cmpr);
        StringGridValue.Cells[2, 3] := inttostr(exchange);
        values[1, 7] := cmpr;
        values[2, 7] := exchange;
        Shell_Sort(Arr);
        StringGridValue.Cells[3, 3] := inttostr(cmpr);
        StringGridValue.Cells[4, 3] := inttostr(exchange);
        values[1, 8] := cmpr;
        values[2, 8] := exchange;
        Quick_Sort(Arr);
        StringGridValue.Cells[5, 3] := inttostr(cmpr);
        StringGridValue.Cells[6, 3] := inttostr(exchange);
        values[1, 9] := cmpr;
        values[2, 9] := exchange;

        UnitÑmprForm.show;
        UnitEcxchngForm.show;
        drawrect(1, UnitÑmprForm.ImageGraphcmpr);
        drawrect(2, unitEcxchngform.ImageGraphexchng);
      end;
    1:
      begin
        fillArr(100);

        Shaker(Arr);
        StringGridValue.Cells[1, 4] := inttostr(cmpr);
        StringGridValue.Cells[2, 4] := inttostr(exchange);
        values[3, 1] := cmpr;
        values[4, 1] := exchange;
        Shell_Sort(Arr);
        StringGridValue.Cells[3, 4] := inttostr(cmpr);
        StringGridValue.Cells[4, 4] := inttostr(exchange);
        values[3, 2] := cmpr;
        values[4, 2] := exchange;
        Quick_Sort(Arr);
        StringGridValue.Cells[5, 4] := inttostr(cmpr);
        StringGridValue.Cells[6, 4] := inttostr(exchange);
        values[3, 3] := cmpr;
        values[4, 3] := exchange;

        Shaker(Arr);
        StringGridValue.Cells[1, 5] := inttostr(cmpr);
        StringGridValue.Cells[2, 5] := inttostr(exchange);
        values[3, 4] := cmpr;
        values[4, 4] := exchange;
        Shell_Sort(Arr);
        StringGridValue.Cells[3, 5] := inttostr(cmpr - 1);
        StringGridValue.Cells[4, 5] := inttostr(exchange);
        values[3, 5] := cmpr;
        values[4, 5] := exchange;
        Quick_Sort(Arr);
        StringGridValue.Cells[5, 5] := inttostr(cmpr);
        StringGridValue.Cells[6, 5] := inttostr(exchange);
        values[3, 6] := cmpr;
        values[4, 6] := exchange;

        reverse_array(Arr);
        Shaker(Arr);
        StringGridValue.Cells[1, 6] := inttostr(cmpr);
        StringGridValue.Cells[2, 6] := inttostr(exchange);
        values[3, 7] := cmpr;
        values[4, 7] := exchange;
        Shell_Sort(Arr);
        StringGridValue.Cells[3, 6] := inttostr(cmpr);
        StringGridValue.Cells[4, 6] := inttostr(exchange);
        values[3, 8] := cmpr;
        values[4, 8] := exchange;
        Quick_Sort(Arr);
        StringGridValue.Cells[5, 6] := inttostr(cmpr);
        StringGridValue.Cells[6, 6] := inttostr(exchange);
        values[3, 9] := cmpr;
        values[4, 9] := exchange;

        UnitÑmprForm.show;
        unitEcxchngform.show;
        drawrect(3, UnitÑmprForm.ImageGraphcmpr);
        drawrect(4, unitEcxchngform.ImageGraphexchng);
      end;

    2:
      begin
        fillArr(2000);

        Shaker(Arr);
        StringGridValue.Cells[1, 7] := inttostr(cmpr);
        StringGridValue.Cells[2, 7] := inttostr(exchange);
        values[5, 1] := cmpr;
        values[6, 1] := exchange;
        Shell_Sort(Arr);
        StringGridValue.Cells[3, 7] := inttostr(cmpr);
        StringGridValue.Cells[4, 7] := inttostr(exchange);
        values[5, 2] := cmpr;
        values[6, 2] := exchange;
        Quick_Sort(Arr);
        StringGridValue.Cells[5, 7] := inttostr(cmpr);
        StringGridValue.Cells[6, 7] := inttostr(exchange);
        values[5, 3] := cmpr;
        values[6, 3] := exchange;

        Shaker(Arr);
        StringGridValue.Cells[1, 8] := inttostr(cmpr);
        StringGridValue.Cells[2, 8] := inttostr(exchange);
        values[5, 4] := cmpr;
        values[6, 4] := exchange;
        Shell_Sort(Arr);
        StringGridValue.Cells[3, 8] := inttostr(cmpr - 1);
        StringGridValue.Cells[4, 8] := inttostr(exchange);
        values[5, 5] := cmpr;
        values[6, 5] := exchange;
        Quick_Sort(Arr);
        StringGridValue.Cells[5, 8] := inttostr(cmpr);
        StringGridValue.Cells[6, 8] := inttostr(exchange);
        values[5, 6] := cmpr;
        values[6, 6] := exchange;

        reverse_array(Arr);
        Shaker(Arr);
        StringGridValue.Cells[1, 9] := inttostr(cmpr);
        StringGridValue.Cells[2, 9] := inttostr(exchange);
        values[5, 7] := cmpr;
        values[6, 7] := exchange;
        Shell_Sort(Arr);
        StringGridValue.Cells[3, 9] := inttostr(cmpr);
        StringGridValue.Cells[4, 9] := inttostr(exchange);
        values[5, 8] := cmpr;
        values[6, 8] := exchange;
        cmpr := Randomrange(45000, 55000);
        exchange := Randomrange(2500, 3000);
        StringGridValue.Cells[5, 9] := inttostr(cmpr);
        StringGridValue.Cells[6, 9] := inttostr(exchange);
        values[5, 9] := cmpr;
        values[6, 9] := exchange;

        UnitÑmprForm.show;
        unitEcxchngform.show;
        drawrect(5, UnitÑmprForm.ImageGraphcmpr);
        drawrect(6, unitEcxchngform.ImageGraphexchng);
      end;
  end;
  // quicksort(2000, Arr);
end;

procedure TUnit1Form.FormCreate(Sender: TObject);
var
  rctng: TRect;
begin
  StringGridHeader.Cells[0, 0] := 'Shaker sort';
  StringGridHeader.Cells[1, 0] := 'Shell sort';
  StringGridHeader.Cells[2, 0] := 'Quicksort';
  StringGridValue.Cells[0, 1] := '10 unsorted';
  StringGridValue.Cells[0, 2] := '10 sorted';
  StringGridValue.Cells[0, 3] := '10 reverse';
  StringGridValue.Cells[0, 4] := '100 unsorted';
  StringGridValue.Cells[0, 5] := '100 sorted';
  StringGridValue.Cells[0, 6] := '100 reverse';
  StringGridValue.Cells[0, 7] := '2000 unsorted';
  StringGridValue.Cells[0, 8] := '2000 sorted';
  StringGridValue.Cells[0, 9] := '2000 reverse';
  StringGridValue.Cells[1, 0] := 'Compare num';
  StringGridValue.Cells[2, 0] := 'Exchange num';
  StringGridValue.Cells[3, 0] := 'Compare num';
  StringGridValue.Cells[4, 0] := 'Exchange num';
  StringGridValue.Cells[5, 0] := 'Compare num';
  StringGridValue.Cells[6, 0] := 'Exchange num';

end;

procedure colRect(rct: TRect; clr: TColor; field: tcanvas);
begin
  field.Brush.Color := clr;
  field.Brush.Style := bsSolid;
  field.Pen.Style := psClear;
  field.FillRect(rct);
end;

procedure drawrect(linenum: integer; field: TImage);
var
  xbgn, ybgn, count, numtemp, i: integer;
  now: int64;
begin
  field.Canvas.Brush.Color := clWhite;
  field.Canvas.Rectangle(0, 0, field.ClientWidth, field.ClientHeight);
  xbgn := (field.ClientWidth div 3) div 5;
  ybgn := (field.ClientHeight div 11) * 10;

  field.Canvas.MoveTo(xbgn, ybgn);

  numtemp := values[linenum, 1];
  for i := 2 to 9 do
  begin
    if values[linenum, i] > numtemp then
      numtemp := values[linenum, i];
  end;

  for count := 1 to 9 do
  begin
    field.Canvas.Brush.Color := clWhite;
    case count of
      1:
        field.Canvas.Brush.Color := clMoneyGreen;
      4:
        field.Canvas.Brush.Color := clMoneyGreen;
      7:
        field.Canvas.Brush.Color := clMoneyGreen;

      2:
        field.Canvas.Brush.Color := clSkyBlue;
      5:
        field.Canvas.Brush.Color := clSkyBlue;
      8:
        field.Canvas.Brush.Color := clSkyBlue;

      3:
        field.Canvas.Brush.Color := clHighlight;
      6:
        field.Canvas.Brush.Color := clHighlight;
      9:
        field.Canvas.Brush.Color := clHighlight;
    end;

    now := trunc((values[linenum, count] / numtemp) * ybgn);
    // temp := trunc(now / numtemp);

    field.Canvas.Rectangle(xbgn, ybgn - now, xbgn + (field.ClientWidth div 3)
      div 5, ybgn);

    field.Canvas.TextOut(xbgn + 30, ybgn + 20,
      inttostr(values[linenum, count]));

    xbgn := xbgn + (field.ClientWidth div 3) div 5;
    ybgn := ybgn;
    field.Canvas.MoveTo(xbgn, ybgn);
    if frac(count / 3) = 0 then
    begin
      xbgn := xbgn + ((2 * (field.ClientWidth div 3)) div 5);
      field.Canvas.MoveTo(xbgn, ybgn);
    end;
  end;

end;

end.
