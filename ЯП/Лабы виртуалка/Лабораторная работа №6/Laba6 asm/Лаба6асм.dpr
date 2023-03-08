program Лаба6асм;

{$APPTYPE CONSOLE}

uses
  SysUtils;

{------------------------------------------------------------------------------}
procedure zd1;

  var
  a, b, c, d, y2: integer;
  y1: extended;
  begin
    writeln('Через делфи');
    write('a = '); readln(a);
    write('b = '); readln(b);
    write('c = '); readln(c);
    write('d = '); readln(d);
    y1 := (a*b*c + 5)/(d-1);
    writeln('y1 = ',y1:2:0);
    writeln;

    writeln('Через ассемблерную вставку');
    asm
      mov eax, a
      imul  b
      imul c
      add eax, 5
      mov ebx, d
      sub ebx, 1
      idiv ebx
      mov y2, eax
    end;
    writeln('y2 = ',y2);
  end;
{------------------------------------------------------------------------------}
procedure zd2;
  var
    mas: array[1..5] of integer;
    i, p: integer;
    label dog, cat;

  begin
    writeln('Введите массив: ');
    for i := 1 to 5 do
      begin
        write('mas[',i,'] = '); readln(mas[i])
      end;

    p := 1;
    writeln('Через делфи');
    for i := 1 to 5 do
      begin
        if mas[i] > 0 then
          p := p * mas[i]
      end;
    writeln('p = ',p); writeln;

    writeln('Через ассемблерную вставку');
   asm
     lea esi, [mas]
     mov ecx, 5
     mov eax, 1
      cat:
     mov ebx, [esi]  //eax = a[i]
     cmp ebx,0
      jle dog
        mul ebx
      dog:
     add esi, 4
     dec ecx
      jnz cat
     mov [p], eax
   end;
    writeln('p = ',p); writeln;

  end;
{------------------------------------------------------------------------------}
procedure zd3;
  var
    mas: array of integer;
    n, x, s, i: integer;
    label
      next, metka;
  begin
    write('Введите размер массива: ');readln(n);
    setlength(mas,n);
    write('Введите х: ');readln(x);

    writeln; writeln('Введите массив: ');
    for i := 0 to n-1 do
      begin
        write('mas[',i+1,'] = '); readln(mas[i])
      end;

    writeln; writeln('Через делфи');  writeln;
    S := 0;
    for i := 0 to n-1 do
      if abs(mas[i]) > x then
        S := S + mas[i];
    writeln(' S = ',s);

    S := 0;
    writeln; writeln('Через ассемблерную вставку');writeln;
    asm
        mov esi, [mas]
        mov eax, S
        mov ebx, 0
        mov ecx, n
        mov edx, x
          metka:
            cmp [esi+ebx], edx
          jbe next
        add eax, [esi+ebx]
          next:
            add ebx,4
          loopnz metka

        mov [S], eax
    end;
    writeln(' S = ',s)

  end;
{------------------------------------------------------------------------------}
begin
zd1;
zd2;
zd3;

readln
end.
