unit Unit4;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls;

type
  TForm4 = class(TForm)
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
  Form4: TForm4;

implementation

{$R *.dfm}

uses Unit1;

procedure TForm4.Button1Click(Sender: TObject);
var
    A,previous:Adr;
    Num: Integer;
    Check:Boolean;
begin
    Check:=False;
    Num:=StrToInt(Edit1.Text);

    AdrCurr:=Adr1;
    while AdrCurr^.Adrcled <> nil do
    begin
        AdrCurr:=AdrCurr^.Adrcled;
        if AdrCurr.Data.Number = Num then
            Check:=True;
    end;
    if Check = True then
    begin
        AdrCurr:=Adr1;
        while AdrCurr^.Data.Number <> Num do
        begin
            previous:=AdrCurr;
            AdrCurr:=AdrCurr^.Adrcled;
        end;
        A:=previous^.Adrcled;
        previous^.Adrcled:=previous^.Adrcled^.Adrcled;
        Dispose(A);
        Edit1.Text:='';
        ShowMessage('����� ������� �����.');
        Form4.Close;
        Form1.ListOfZakazi.Clear;
        AdrCurr:=Adr1;
        while AdrCurr^.Adrcled <> nil do
        begin
            AdrCurr:=AdrCurr^.Adrcled;
            Form1.ListOfZakazi.Lines.Add('����� ������: '+IntToStr(AdrCurr.Data.Number)+#13#10+'����� ��������: '+AdrCurr.Data.Adres+#13#10+'����� ��������: � '+IntToStr(AdrCurr.Data.TimeMin)+' �� '+IntToStr(AdrCurr.Data.TimeMax)+' �����'+#13#10+'���: '+IntToStr(AdrCurr.Data.Ves)+' ��'+#13#10+'�����: '+IntToStr(AdrCurr.Data.Obiem)+' �^3'+#13#10);
        end;
    end
    else
    ShowMessage('������ ������ �� ����������');
end;

end.
