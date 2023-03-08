unit Unit9;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls;

type
  TForm9 = class(TForm)
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
    Edit1: TEdit;
    Edit2: TEdit;
    Edit3: TEdit;
    Edit4: TEdit;
    Edit5: TEdit;
    Edit6: TEdit;
    Button1: TButton;
    procedure FormActivate(Sender: TObject);
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form9: TForm9;

implementation

{$R *.dfm}

uses Unit8, Unit1;

procedure TForm9.Button1Click(Sender: TObject);
begin
    AdrCurr:=Adr1;
    while AdrCurr.Data.Number <> NumberOfSearch do
        AdrCurr:=AdrCurr^.Adrcled;
    AdrCurr^.Data.Number:= StrToInt(Edit1.Text);
    AdrCurr^.Data.Adres:= Edit2.Text;
    AdrCurr^.Data.TimeMin:= StrToInt(Edit3.Text);
    AdrCurr^.Data.TimeMax:= StrToInt(Edit4.Text);
    AdrCurr^.Data.Ves:= StrToInt(Edit5.Text);
    AdrCurr^.Data.Obiem:= StrToInt(Edit6.Text);
    ShowMessage('Изменения успешно сохранены');
    Form8.ComboBox1.Text:='';
    Form8.Edit1.Text:='';
    Form8.Close;
    Form9.Close;
    Form1.ListOfZakazi.Clear;
    AdrCurr:=Adr1;
    while AdrCurr^.Adrcled <> nil do
    begin
        AdrCurr:=AdrCurr^.Adrcled;
        Form1.ListOfZakazi.Lines.Add('Заказ нормер: '+IntToStr(AdrCurr.Data.Number)+#13#10+'Адрес доставки: '+AdrCurr.Data.Adres+#13#10+'Время доставки: с '+IntToStr(AdrCurr.Data.TimeMin)+' до '+IntToStr(AdrCurr.Data.TimeMax)+' часов'+#13#10+'Вес: '+IntToStr(AdrCurr.Data.Ves)+' кг'+#13#10+'Объём: '+IntToStr(AdrCurr.Data.Obiem)+' м^3'+#13#10);
    end;

end;

procedure TForm9.FormActivate(Sender: TObject);
begin
    AdrCurr:=Adr1;
    while AdrCurr.Data.Number <> NumberOfSearch do
        AdrCurr:=AdrCurr^.Adrcled;
    Edit1.Text:=IntToStr(AdrCurr.Data.Number);
    Edit2.Text:=AdrCurr.Data.Adres;
    Edit3.Text:=IntToStr(AdrCurr.Data.TimeMin);
    Edit4.Text:=IntToStr(AdrCurr.Data.TimeMax);
    Edit5.Text:=IntToStr(AdrCurr.Data.Ves);
    Edit6.Text:=IntToStr(AdrCurr.Data.Obiem);
end;

end.
