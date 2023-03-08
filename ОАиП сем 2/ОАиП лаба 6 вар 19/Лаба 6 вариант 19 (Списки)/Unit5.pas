unit Unit5;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls;

type
  TForm5 = class(TForm)
    Label1: TLabel;
    Edit1: TEdit;
    Button1: TButton;
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form5: TForm5;

implementation

{$R *.dfm}

uses Unit1;

procedure TForm5.Button1Click(Sender: TObject);
var
    A,previous:Addr;
    Num: Integer;
    Check:Boolean;
begin
    Check:=False;
    Num:=StrToInt(Edit1.Text);

    AddrCurr:=Addr1;
    while AddrCurr^.Addrcled <> nil do
    begin
        AddrCurr:=AddrCurr^.Addrcled;
        if AddrCurr.Data.Number = Num then
            Check:=True;
    end;
    if Check = True then
    begin
        AddrCurr:=Addr1;
        while AddrCurr^.Data.Number <> Num do
        begin
            previous:=AddrCurr;
            AddrCurr:=AddrCurr^.Addrcled;
        end;
        A:=previous^.Addrcled;
        previous^.Addrcled:=previous^.Addrcled^.Addrcled;
        Dispose(A);
        Edit1.Text:='';
        ShowMessage('Курьер успешно удалён.');
        Form5.Close;
        Form1.ListOfKyrieri.Clear;
        AddrCurr:=Addr1;
        while AddrCurr^.Addrcled <> nil do
        begin
            AddrCurr:=AddrCurr^.Addrcled;
            Form1.ListOfKyrieri.Lines.Add('Номер курьера: '+IntToStr(AddrCurr.Data.Number)+#13#10+'ФИО: '+AddrCurr.Data.Surname+' '+AddrCurr.Data.Name+' '+AddrCurr.Data.SecondName+#13#10+'Время работы: с '+IntToStr(AddrCurr.Data.WorkTimeMin)+' до '+IntToStr(AddrCurr.Data.WorkTimeMax)+' часов'+#13#10+'Грузоподъёмность автомобиля: '+IntToStr(AddrCurr.Data.Gruzopodiem)+' кг'+#13#10+'Максимальный объём груза: '+IntToStr(AddrCurr.Data.MaxObiem)+' м^3'+#13#10);
        end;
    end
    else ShowMessage('Такого курьера не существует');
end;

end.
