unit Unitcmpr;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls;

type
  TUnit—mprForm = class(TForm)
    ImageGraphcmpr: TImage;
    procedure ImageGraphcmprClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Unit—mprForm: TUnit—mprForm;

implementation

{$R *.dfm}

procedure TUnit—mprForm.ImageGraphcmprClick(Sender: TObject);
begin
  ImageGraphcmpr.Canvas.Brush.Color := clWhite;
  ImageGraphcmpr.Canvas.TextOut(10, 10, 'Compare''s rate');
  ImageGraphcmpr.Canvas.MoveTo(0, 10 * (ImageGraphcmpr.ClientHeight div 11));
  ImageGraphcmpr.Canvas.LineTo(ImageGraphcmpr.ClientWidth,
    10 * (ImageGraphcmpr.ClientHeight div 11));
  ImageGraphcmpr.Canvas.MoveTo(ImageGraphcmpr.ClientWidth div 3, 0);
  ImageGraphcmpr.Canvas.LineTo(ImageGraphcmpr.ClientWidth div 3,
    ImageGraphcmpr.ClientHeight);
  ImageGraphcmpr.Canvas.MoveTo(2 * (ImageGraphcmpr.ClientWidth div 3), 0);
  ImageGraphcmpr.Canvas.LineTo(2 * (ImageGraphcmpr.ClientWidth div 3),
    ImageGraphcmpr.ClientHeight);
  ImageGraphcmpr.Canvas.TextOut(ImageGraphcmpr.ClientWidth div 8,
    ImageGraphcmpr.ClientHeight - 50, 'Unsorted');
  ImageGraphcmpr.Canvas.TextOut(ImageGraphcmpr.ClientWidth div 2 - 40,
    ImageGraphcmpr.ClientHeight - 50, 'Sorted');
  ImageGraphcmpr.Canvas.TextOut(5 * (ImageGraphcmpr.ClientWidth div 7) + 140,
     ImageGraphcmpr.ClientHeight - 50, 'Reverse sort');
end;

end.
