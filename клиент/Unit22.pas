unit Unit22;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ComCtrls, StdCtrls, Buttons;

type
  TfmNewInexcursion = class(TForm)
    Label1: TLabel;
    Label2: TLabel;
    Edit1: TEdit;
    Edit2: TEdit;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    BitBtn3: TBitBtn;
    BitBtn4: TBitBtn;
    DateTimePicker1: TDateTimePicker;
    Label3: TLabel;
    procedure BitBtn3Click(Sender: TObject);
    procedure BitBtn4Click(Sender: TObject);
  private
    { Private declarations }
  public
       client_id, excursion_id: integer;
     client_name, excursion_name: string;
    { Public declarations }
  end;

var
  fmNewInexcursion: TfmNewInexcursion;

implementation

uses Unit3, uExcursion;

{$R *.dfm}

procedure TfmNewInexcursion.BitBtn3Click(Sender: TObject);
begin
  fmClient.ShowModal;
  Edit1.Text := client_name;
end;

procedure TfmNewInexcursion.BitBtn4Click(Sender: TObject);
begin
  fmExcursion.ShowModal;
  Edit2.Text := excursion_name;
end;

end.
