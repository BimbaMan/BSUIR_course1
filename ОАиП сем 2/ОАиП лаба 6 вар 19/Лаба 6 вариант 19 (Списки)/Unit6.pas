unit Unit6;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls;

type
  TForm6 = class(TForm)
    Label1: TLabel;
    Button1: TButton;
    ComboBox1: TComboBox;
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form6: TForm6;

implementation

{$R *.dfm}

uses Unit1;

procedure TForm6.Button1Click(Sender: TObject);
var
    i,j,temp:integer;
    MasZakazi,MasKyrieri: Array of integer;
begin
    Form1.ListOfZakazi.Clear;
    Form1.ListOfKyrieri.Clear;
    i:=0;
    j:=0;
    AdrCurr:=Adr1;
    while AdrCurr^.Adrcled <> nil do
    begin
        i:=i+1;
        AdrCurr:=AdrCurr^.Adrcled;
    end;
    SetLength(MasZakazi,i);
    AddrCurr:=Addr1;
    while AddrCurr^.Addrcled <> nil do
    begin
        j:=j+1;
        AddrCurr:=AddrCurr^.Addrcled;
    end;
    SetLength(MasKyrieri,j);
    if ComboBox1.Text = 'По Массе' then
    begin
        i:=0;
        AdrCurr:=Adr1;
        while AdrCurr^.Adrcled <> nil do
        begin
            AdrCurr:=AdrCurr^.Adrcled;
            MasZakazi[i]:=AdrCurr.Data.Ves;
            inc(i);
        end;
        for i := 0 to Length(MasZakazi)-2 do
        begin
            for j := i+1 to Length(MasZakazi)-1 do
            begin
                if MasZakazi[i]>MasZakazi[j] then
                begin
                    temp:=MasZakazi[i];
                    MasZakazi[i]:=MasZakazi[j];
                    MasZakazi[j]:=temp;
                end;
            end;
        end;
        j:=Length(MasZakazi);
        i:=0;
        while j <> 0 do
        begin
            AdrCurr:=Adr1;
            while AdrCurr^.Data.Ves <> MasZakazi[i] do
                AdrCurr:=AdrCurr^.Adrcled;
            Form1.ListOfZakazi.Lines.Add('Заказ нормер: '+IntToStr(AdrCurr.Data.Number)+#13#10+'Адрес доставки: '+AdrCurr.Data.Adres+#13#10+'Время доставки: с '+IntToStr(AdrCurr.Data.TimeMin)+' до '+IntToStr(AdrCurr.Data.TimeMax)+' часов'+#13#10+'Вес: '+IntToStr(AdrCurr.Data.Ves)+' кг'+#13#10+'Объём: '+IntToStr(AdrCurr.Data.Obiem)+' м^3'+#13#10);
            dec(j);
            inc(i);
        end;



        i:=0;
        AddrCurr:=Addr1;
        while AddrCurr^.Addrcled <> nil do
        begin
            AddrCurr:=AddrCurr^.Addrcled;
            MasKyrieri[i]:=AddrCurr.Data.Gruzopodiem;
            inc(i);
        end;
        for i := 0 to Length(MasKyrieri)-2 do
        begin
            for j := i+1 to Length(MasKyrieri)-1 do
            begin
                if MasKyrieri[i]>MasKyrieri[j] then
                begin
                    temp:=MasKyrieri[i];
                    MasKyrieri[i]:=MasKyrieri[j];
                    MasKyrieri[j]:=temp;
                end;
            end;
        end;
        j:=Length(MasKyrieri);
        i:=0;
        while j <> 0 do
        begin
            AddrCurr:=Addr1;
            while AddrCurr^.Data.Gruzopodiem <> MasKyrieri[i] do
                AddrCurr:=AddrCurr^.Addrcled;
            Form1.ListOfKyrieri.Lines.Add('Номер курьера: '+IntToStr(AddrCurr.Data.Number)+#13#10+'ФИО: '+AddrCurr.Data.Surname+' '+AddrCurr.Data.Name+' '+AddrCurr.Data.SecondName+#13#10+'Время работы: с '+IntToStr(AddrCurr.Data.WorkTimeMin)+' до '+IntToStr(AddrCurr.Data.WorkTimeMax)+' часов'+#13#10+'Грузоподъёмность автомобиля: '+IntToStr(AddrCurr.Data.Gruzopodiem)+' кг'+#13#10+'Максимальный объём груза: '+IntToStr(AddrCurr.Data.MaxObiem)+' м^3'+#13#10);
            dec(j);
            inc(i);
        end;
        ShowMessage('Списки отсортированы успешно');
        ComboBox1.Text:='';
        Form6.Close;
    end;

    if ComboBox1.Text = 'По Объёму' then
    begin
        i:=0;
        AdrCurr:=Adr1;
        while AdrCurr^.Adrcled <> nil do
        begin
            AdrCurr:=AdrCurr^.Adrcled;
            MasZakazi[i]:=AdrCurr.Data.Obiem;
            inc(i);
        end;
        for i := 0 to Length(MasZakazi)-2 do
        begin
            for j := i+1 to Length(MasZakazi)-1 do
            begin
                if MasZakazi[i]>MasZakazi[j] then
                begin
                    temp:=MasZakazi[i];
                    MasZakazi[i]:=MasZakazi[j];
                    MasZakazi[j]:=temp;
                end;
            end;
        end;
        j:=Length(MasZakazi);
        i:=0;
        while j <> 0 do
        begin
            AdrCurr:=Adr1;
            while AdrCurr^.Data.Obiem <> MasZakazi[i] do
                AdrCurr:=AdrCurr^.Adrcled;
            Form1.ListOfZakazi.Lines.Add('Заказ нормер: '+IntToStr(AdrCurr.Data.Number)+#13#10+'Адрес доставки: '+AdrCurr.Data.Adres+#13#10+'Время доставки: с '+IntToStr(AdrCurr.Data.TimeMin)+' до '+IntToStr(AdrCurr.Data.TimeMax)+' часов'+#13#10+'Вес: '+IntToStr(AdrCurr.Data.Ves)+' кг'+#13#10+'Объём: '+IntToStr(AdrCurr.Data.Obiem)+' м^3'+#13#10);
            dec(j);
            inc(i);
        end;



        i:=0;
        AddrCurr:=Addr1;
        while AddrCurr^.Addrcled <> nil do
        begin
            AddrCurr:=AddrCurr^.Addrcled;
            MasKyrieri[i]:=AddrCurr.Data.MaxObiem;
            inc(i);
        end;
        for i := 0 to Length(MasKyrieri)-2 do
        begin
            for j := i+1 to Length(MasKyrieri)-1 do
            begin
                if MasKyrieri[i]>MasKyrieri[j] then
                begin
                    temp:=MasKyrieri[i];
                    MasKyrieri[i]:=MasKyrieri[j];
                    MasKyrieri[j]:=temp;
                end;
            end;
        end;
        j:=Length(MasKyrieri);
        i:=0;
        while j <> 0 do
        begin
            AddrCurr:=Addr1;
            while AddrCurr^.Data.MaxObiem <> MasKyrieri[i] do
                AddrCurr:=AddrCurr^.Addrcled;
            Form1.ListOfKyrieri.Lines.Add('Номер курьера: '+IntToStr(AddrCurr.Data.Number)+#13#10+'ФИО: '+AddrCurr.Data.Surname+' '+AddrCurr.Data.Name+' '+AddrCurr.Data.SecondName+#13#10+'Время работы: с '+IntToStr(AddrCurr.Data.WorkTimeMin)+' до '+IntToStr(AddrCurr.Data.WorkTimeMax)+' часов'+#13#10+'Грузоподъёмность автомобиля: '+IntToStr(AddrCurr.Data.Gruzopodiem)+' кг'+#13#10+'Максимальный объём груза: '+IntToStr(AddrCurr.Data.MaxObiem)+' м^3'+#13#10);
            dec(j);
            inc(i);
        end;
        ShowMessage('Списки отсортированы успешно');
        ComboBox1.Text:='';
        Form6.Close;
    end;

end;

end.
