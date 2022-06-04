unit Unit9;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, ComCtrls;

type
  TfmNewWeight = class(TForm)
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Edit1: TEdit;
    Edit2: TEdit;
    Edit3: TEdit;
    DateTimePicker1: TDateTimePicker;
    DateTimePicker2: TDateTimePicker;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    BitBtn3: TBitBtn;
    procedure BitBtn1Click(Sender: TObject);
  private
    { Private declarations }
  public
         client_id: integer;
     client_name: string;
    { Public declarations }
  end;

var
  fmNewWeight: TfmNewWeight;

implementation

uses Unit3;

{$R *.dfm}

procedure TfmNewWeight.BitBtn1Click(Sender: TObject);
begin
  fmClient.ShowModal;
  Edit1.Text := client_name;
end;

end.
