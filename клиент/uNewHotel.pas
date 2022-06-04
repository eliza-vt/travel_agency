unit uNewHotel;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons;

type
  TfmNewHotel = class(TForm)
    laName: TLabel;
    laKind: TLabel;
    laPrice: TLabel;
    eName: TEdit;
    eKind: TEdit;
    ePrice: TEdit;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fmNewHotel: TfmNewHotel;

implementation

{$R *.dfm}

procedure TfmNewHotel.ePriceKeyPress(Sender: TObject; var Key: Char);
begin
  if not (Key in ['0'..'9', #8]) then Key := #0;
end;

end.
