unit Unit8;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls;

type
  TForm8 = class(TForm)
    Label1: TLabel;
    ComboBox1: TComboBox;
    Label2: TLabel;
    Edit1: TEdit;
    Button1: TButton;
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form8: TForm8;
  NumberOfSearch:Integer;
  FieldOfSearch:String;

implementation

{$R *.dfm}

uses Unit1, Unit9, Unit10;

procedure TForm8.Button1Click(Sender: TObject);
begin
    NumberOfSearch:=StrToInt(Edit1.Text);
    if ComboBox1.Text='Заказ' then
    begin
        AdrCurr:=Adr1;
        FieldOfSearch:=ComboBox1.Text;
        while (AdrCurr^.Adrcled <> nil) and ( AdrCurr.Data.Number <> NumberOfSearch) do
            AdrCurr:=AdrCurr^.Adrcled;
        if AdrCurr.Data.Number = NumberOfSearch then
            Form9.Show
        else
            ShowMessage('Такого заказа не существует');
    end;
    if ComboBox1.Text='Курьера' then
    begin
        AddrCurr:=Addr1;
        FieldOfSearch:=ComboBox1.Text;
        while (AddrCurr^.Addrcled <> nil) and ( AddrCurr.Data.Number <> NumberOfSearch) do
            AddrCurr:=AddrCurr^.Addrcled;
        if AddrCurr.Data.Number = NumberOfSearch then
            Form10.Show
        else
            ShowMessage('Такого курьера не существует');
    end;
end;

end.
