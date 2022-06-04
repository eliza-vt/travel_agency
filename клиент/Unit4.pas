unit Unit4;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons;

type
  TfmNewClient = class(TForm)
    laName: TLabel;
    laSurname: TLabel;
    eName: TEdit;
    eSurname: TEdit;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    ePol: TEdit;
    laLastname: TLabel;
    laPol: TLabel;
    ePurpose: TEdit;
    laPurpose: TLabel;
    eLastname: TEdit;
    Label1: TLabel;
    Edit1: TEdit;
    BitBtn3: TBitBtn;
    procedure BitBtn3Click(Sender: TObject);
  private
    { Private declarations }
  public
       child_id: integer;
     child_name: string;
    { Public declarations }
  end;

var
  fmNewClient: TfmNewClient;

implementation

uses uChild, uCountry, uExcursion, uHotel, uWeighter ;

{$R *.dfm}

procedure TfmNewClient.BitBtn3Click(Sender: TObject);
begin
  fmChild.ShowModal;
  Edit1.Text := child_name;
end;

end.
