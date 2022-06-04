unit uNewCountry;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons;

type
  TfmNewCountry = class(TForm)
    laName: TLabel;
    eName: TEdit;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    Label1: TLabel;
    Edit1: TEdit;
    BitBtn3: TBitBtn;
    procedure BitBtn3Click(Sender: TObject);
  private
    { Private declarations }
  public
     city_id: integer;
     city_name: string;
    { Public declarations }
  end;

var
  fmNewCountry: TfmNewCountry;

implementation

uses Unit5;

{$R *.dfm}

procedure TfmNewCountry.BitBtn3Click(Sender: TObject);
begin
  fmCity.ShowModal;
  Edit1.Text := city_name;
end;

end.
