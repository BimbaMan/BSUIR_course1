unit Unit10;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls;

type
  TForm10 = class(TForm)
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    Label11: TLabel;
    Label12: TLabel;
    Label13: TLabel;
    Edit1: TEdit;
    Edit2: TEdit;
    Edit3: TEdit;
    Edit4: TEdit;
    Edit5: TEdit;
    Edit6: TEdit;
    Edit7: TEdit;
    Edit8: TEdit;
    Button1: TButton;
    procedure FormActivate(Sender: TObject);
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form10: TForm10;

implementation

{$R *.dfm}

uses Unit8, Unit1;

procedure TForm10.Button1Click(Sender: TObject);
begin
    AddrCurr:=Addr1;
    while AddrCurr.Data.Number <> NumberOfSearch do
        AddrCurr:=AddrCurr^.Addrcled;

    AddrCurr^.Data.Number:= StrToInt(Edit1.Text);
    AddrCurr^.Data.Name:= Edit2.Text;
    AddrCurr^.Data.Surname:= Edit3.Text;
    AddrCurr^.Data.SecondName:= Edit4.Text;
    AddrCurr^.Data.WorkTimeMin:= StrToInt(Edit5.Text);
    AddrCurr^.Data.WorkTimeMax:= StrToInt(Edit6.Text);
    AddrCurr^.Data.Gruzopodiem:= StrToInt(Edit7.Text);
    AddrCurr^.Data.MaxObiem:= StrToInt(Edit8.Text);

    ShowMessage('Изменения успешно сохранены');
    Form8.ComboBox1.Text:='';
    Form8.Edit1.Text:='';
    Form8.Close;
    Form10.Close;
    Form1.ListOfKyrieri.Clear;
    AddrCurr:=Addr1;
    while AddrCurr^.Addrcled <> nil do
    begin
        AddrCurr:=AddrCurr^.Addrcled;
        Form1.ListOfKyrieri.Lines.Add('Номер курьера: '+IntToStr(AddrCurr.Data.Number)+#13#10+'ФИО: '+AddrCurr.Data.Surname+' '+AddrCurr.Data.Name+' '+AddrCurr.Data.SecondName+#13#10+'Время работы: с '+IntToStr(AddrCurr.Data.WorkTimeMin)+' до '+IntToStr(AddrCurr.Data.WorkTimeMax)+' часов'+#13#10+'Грузоподъёмность автомобиля: '+IntToStr(AddrCurr.Data.Gruzopodiem)+' кг'+#13#10+'Максимальный объём груза: '+IntToStr(AddrCurr.Data.MaxObiem)+' м^3'+#13#10);
    end;
end;

procedure TForm10.FormActivate(Sender: TObject);
begin
    AddrCurr:=Addr1;
    while AddrCurr.Data.Number <> NumberOfSearch do
        AddrCurr:=AddrCurr^.Addrcled;
    Edit1.Text:=IntToStr(AddrCurr.Data.Number);
    Edit2.Text:=AddrCurr.Data.Name;
    Edit3.Text:=AddrCurr.Data.Surname;
    Edit4.Text:=AddrCurr.Data.SecondName;
    Edit5.Text:=IntToStr(AddrCurr.Data.WorkTimeMin);
    Edit6.Text:=IntToStr(AddrCurr.Data.WorkTimeMax);
    Edit7.Text:=IntToStr(AddrCurr.Data.Gruzopodiem);
    Edit8.Text:=IntToStr(AddrCurr.Data.MaxObiem);
end;

end.
