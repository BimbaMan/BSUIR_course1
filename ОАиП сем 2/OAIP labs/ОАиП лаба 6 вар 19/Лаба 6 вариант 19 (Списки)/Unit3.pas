unit Unit3;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls;

type
  TForm3 = class(TForm)
    Label1: TLabel;
    Label2: TLabel;
    Edit1: TEdit;
    Label3: TLabel;
    Edit2: TEdit;
    Label4: TLabel;
    Edit3: TEdit;
    Label5: TLabel;
    Edit4: TEdit;
    Label6: TLabel;
    Edit5: TEdit;
    Label7: TLabel;
    Label8: TLabel;
    Edit6: TEdit;
    Label9: TLabel;
    Label10: TLabel;
    Edit7: TEdit;
    Label11: TLabel;
    Label12: TLabel;
    Edit8: TEdit;
    Label13: TLabel;
    Button1: TButton;
    procedure FormCreate(Sender: TObject);
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form3: TForm3;

implementation

{$R *.dfm}

uses Unit1, Unit2;

procedure TForm3.Button1Click(Sender: TObject);
begin
    if (Edit1.Text='') or (Edit2.Text='') or (Edit3.Text='') or (Edit4.Text='') or (Edit5.Text='') or (Edit6.Text='')  or (Edit7.Text='') or (Edit8.Text='') then
        ShowMessage('Проверьте корректность введённых данных')
    else
    begin
        New(AddrCurr^.Addrcled);
        AddrCurr:= AddrCurr^.Addrcled;
        AddrCurr^.Data.Number:= StrToInt(Edit1.Text);
        AddrCurr^.Data.Name:=Edit2.Text;
        AddrCurr^.Data.Surname:=Edit3.Text;
        AddrCurr^.Data.SecondName:=Edit4.Text;
        AddrCurr^.Data.WorkTimeMin:=StrToInt(Edit5.Text);
        AddrCurr^.Data.WorkTimeMax:=StrToInt(Edit6.Text);
        AddrCurr^.Data.Gruzopodiem:=StrToInt(Edit7.Text);
        AddrCurr^.Data.MaxObiem:=StrToInt(Edit8.Text);
        AddrCurr^.Addrcled:= nil;
        Edit1.Text:='';
        Edit2.Text:='';
        Edit3.Text:='';
        Edit4.Text:='';
        Edit5.Text:='';
        Edit6.Text:='';
        Edit7.Text:='';
        Edit8.Text:='';
        Form1.ListOfKyrieri.Lines.Add('Номер курьера: '+IntToStr(AddrCurr.Data.Number)+#13#10+'ФИО: '+AddrCurr.Data.Surname+' '+AddrCurr.Data.Name+' '+AddrCurr.Data.SecondName+#13#10+'Время работы: с '+IntToStr(AddrCurr.Data.WorkTimeMin)+' до '+IntToStr(AddrCurr.Data.WorkTimeMax)+' часов'+#13#10+'Грузоподъёмность автомобиля: '+IntToStr(AddrCurr.Data.Gruzopodiem)+' кг'+#13#10+'Максимальный объём груза: '+IntToStr(AddrCurr.Data.MaxObiem)+' м^3'+#13#10);
        ShowMessage('Курьер успешно добавлен.');
        Form3.Close;
    end;
end;

procedure TForm3.FormCreate(Sender: TObject);
begin
   // Addr1:= nil;
end;

end.
