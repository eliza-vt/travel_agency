unit Unit12;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, ComCtrls;

type
  TfmNewLeaving = class(TForm)
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Edit1: TEdit;
    Edit2: TEdit;
    DateTimePicker1: TDateTimePicker;
    DateTimePicker2: TDateTimePicker;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    BitBtn3: TBitBtn;
    BitBtn4: TBitBtn;
    Label5: TLabel;
    ComboBox1: TComboBox;
    procedure BitBtn1Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
  private
    { Private declarations }
  public
       client_id, hotel_id: integer;
     client_name, hotel_name: string;
    { Public declarations }
  end;

var
  fmNewLeaving: TfmNewLeaving;

implementation

uses Unit3, uHotel;

{$R *.dfm}

procedure TfmNewLeaving.BitBtn1Click(Sender: TObject);
begin
  fmClient.ShowModal;
  Edit1.Text := client_name;
end;

procedure TfmNewLeaving.BitBtn2Click(Sender: TObject);
begin
  fmHotel.ShowModal;
  Edit2.Text := hotel_name;
end;

end.
