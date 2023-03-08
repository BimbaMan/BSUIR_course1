unit Unitexchng;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls;

type
  TunitEcxchngForm = class(TForm)
    ImageGraphexchng: TImage;
    procedure ImageGraphexchngClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  unitEcxchngForm: TunitEcxchngForm;

implementation

{$R *.dfm}

procedure TunitEcxchngForm.ImageGraphexchngClick(Sender: TObject);
begin
  ImageGraphexchng.Canvas.Brush.Color := clWhite;
  ImageGraphexchng.Canvas.TextOut(10, 10, 'Exchange''s rate');
  ImageGraphexchng.Canvas.MoveTo(0,
    10 * (ImageGraphexchng.ClientHeight div 11));
  ImageGraphexchng.Canvas.LineTo(ImageGraphexchng.ClientWidth,
    10 * (ImageGraphexchng.ClientHeight div 11));
  ImageGraphexchng.Canvas.MoveTo(ImageGraphexchng.ClientWidth div 3, 0);
  ImageGraphexchng.Canvas.LineTo(ImageGraphexchng.ClientWidth div 3,
    ImageGraphexchng.ClientHeight);
  ImageGraphexchng.Canvas.MoveTo(2 * (ImageGraphexchng.ClientWidth div 3), 0);
  ImageGraphexchng.Canvas.LineTo(2 * (ImageGraphexchng.ClientWidth div 3),
    ImageGraphexchng.ClientHeight);
  ImageGraphexchng.Canvas.TextOut(ImageGraphexchng.ClientWidth div 8,
    ImageGraphexchng.ClientHeight - 50, 'Unsorted');
  ImageGraphexchng.Canvas.TextOut(ImageGraphexchng.ClientWidth div 2 - 40,
    ImageGraphexchng.ClientHeight - 50, 'Sorted');
  ImageGraphexchng.Canvas.TextOut(5 * (ImageGraphexchng.ClientWidth div 7) +
    140, ImageGraphexchng.ClientHeight - 50, 'Reverse sort');
end;

end.
