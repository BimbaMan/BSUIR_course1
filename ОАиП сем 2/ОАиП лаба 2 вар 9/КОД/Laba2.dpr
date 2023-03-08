program Laba2;

{$APPTYPE CONSOLE}

{$R *.res}

uses
  System.SysUtils, System.DateUtils, typinfo;

type                                                                                                          {Перечисляемый тип задается непосредственно перечислением всех значений,
                                                                                                               которые может принимать переменная данного типа.}
 Months=(jan=1, feb, mar, apr, may, jun, jul, aug, sep, oct, nov, dec);
 WeekDays=(sun=1, mon, tue, wed, thu, fri, sat);
Var
 DaysInNotLeapYear :array [1..12] of byte=(31, 28, 31, 30, 31, 30, 31, 31, 30, 31, 30, 31);
 DaysInLeapYear: array [1 .. 12] of byte = (31, 29, 31, 30, 31, 30, 31, 31, 30, 31, 30, 31);

 year, month, day :integer;
 inputflag, leapflag :boolean;

function IfThen(AC: Boolean; AT: Integer; AF: Integer): Integer;
 begin
  if AC=True then
   Result:=AT
  else
   Result:=AF;
 end;
procedure DaysUntilTheEnd (y:integer; m:integer; d:integer);  //input year, month, day (count days until the end of the year)
begin
 Writeln('Days until the end of the year: '+ inttostr(DaysInAYear(y)-DayOfTheYear(EncodeDate(y, m, d))));
end;
procedure WriteYear;
var inputyear :string;
begin
inputflag:= false;
  repeat
    write('Write year: ');
    try
      readln(inputyear);
      year:= StrToInt(inputyear);
    except
      on E: Exception do
      begin
        writeln('Wrong input: '+E.Message);
      end;
    end;
    if (year>=1) and (year<=9999) then
     inputflag:=true
    else
     writeln('Please, write year in 1..9999.');

  until inputflag;
end;
procedure WriteMonth;
var inputmonth :string;
begin
inputflag:= false;
  repeat
    write('Write month: ');
    try
      readln(inputmonth);
      month:= StrToInt(inputmonth);
    except
      on E: Exception do
      begin
        writeln('Wrong input: '+E.Message);
      end;
    end;
        if (month>=1) and (month<=12) then
     inputflag:=true
    else
     writeln('Please, write month in 1..12.');
  until inputflag;
end;
procedure WriteDay;
var inputday :string;
begin
inputflag:= false;
  repeat
    write('Write day: ');
    try
      readln(inputday);
      day:= StrToInt(inputday);
    except
      on E: Exception do
      begin
        writeln('Wrong input: '+E.Message);
      end;
    end;
    if (day>=1) and (day<=MonthDays[IsLeapYear(year),month]) then
     inputflag:=true
    else
     writeln('Please, write day in 1..'+IntToStr(MonthDays[IsLeapYear(year),month])+'.');
  until inputflag;
end;
procedure LeapYear;
begin
if IsLeapYear(year) then
 begin
  writeln('This year is leap');
  leapflag:=true;
 end
else
 begin
  writeln('This year is not leap');
  leapflag:=false
 end;
end;
procedure Mondays;
Var i, j, dd :integer; FirstLapFlag :boolean; MonthName : Months;
begin
 dd := DayOfWeek(EncodeDate(year, month, day));
 while dd<>2 do
 begin
  if dd<ord(WeekDays(mon)) then inc(dd)
  else dd:=pred(dd);
 end;
 MonthName:=Months(month);
 FirstLapFlag:=true;
   for i := month to 12 do
    begin
     for j := IfThen(FirstLapFlag,day,1) to IfThen(leapflag,DaysInLeapYear[i],DaysInNotLeapYear[i]) do
      begin
       if DayOfWeek(EncodeDate(year, i, j))=dd then
       writeln(j,'.',ord(MonthName),'.',year);
      end;
     FirstLapFlag:=false;
     MonthName:=succ(MonthName);
    end;
end;

begin
//inpyt year, month and day with check their value
 WriteYear;
 WriteMonth;
 WriteDay;
 Writeln;
 Writeln('Your input year: ',year,', month: ',month,', day: ',day);
//Output message about leap year
 LeapYear;
//counting and output quantity of days until the end of the year
 DaysUntilTheEnd(year,month,day);
//dates falling on Mondays
 Mondays;
readln;
end.
