unit Unit16;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, ComCtrls;

type
  TfmNewApplication = class(TForm)
    Label1: TLabel;
    Label2: TLabel;
    DateTimePicker1: TDateTimePicker;
    Edit1: TEdit;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    BitBtn3: TBitBtn;
    procedure BitBtn1Click(Sender: TObject);
  private
    { Private declarations }
  public
  client_name: string;
  client_id:integer;
    { Public declarations }
  end;

var
  fmNewApplication: TfmNewApplication;

implementation

uses Unit3;

{$R *.dfm}

procedure TfmNewApplication.BitBtn1Click(Sender: TObject);
begin
  fmClient.ShowModal;
  Edit1.Text := client_name;
end;

end.
