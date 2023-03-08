program NOD;

{$APPTYPE CONSOLE}
{$R *.res}

uses
  System.SysUtils;

var
 a, b, c :word;
begin
readln(a);    //140
readln(b);    //32
c:=0;
  asm
    mov ax, a
    mov bx, b
    @Nod:    cmp ax, bx
    jz  @Nod_2       //Jump if zero (ax = bx)
    ja  @Nod_1       //Jump if above (ax > bx)
    xchg    ax,bx
    @Nod_1:  sub ax, bx
    jmp @Nod
    @Nod_2: mov c, ax
  end;
writeln(c);  //4
readln;
end.
