unit Unit14;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, ComCtrls;

type
  TfmNewTour = class(TForm)
    Label1: TLabel;
    Label4: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Edit1: TEdit;
    Edit4: TEdit;
    Edit6: TEdit;
    DateTimePicker1: TDateTimePicker;
    DateTimePicker2: TDateTimePicker;
    BitBtn1: TBitBtn;
    BitBtn4: TBitBtn;
    BitBtn6: TBitBtn;
    BitBtn7: TBitBtn;
    BitBtn8: TBitBtn;
    Label2: TLabel;
    Edit2: TEdit;
    procedure BitBtn1Click(Sender: TObject);
    procedure BitBtn4Click(Sender: TObject);
    procedure BitBtn6Click(Sender: TObject);

  private
             { Private declarations }
  public
     transport_id,   country_id, client_id: integer;
     transport_name,  country_name, client_name: string;
    { Public declarations }
  end;

var
  fmNewTour: TfmNewTour;

implementation

uses uTransport, uExcursion, uCountry, Unit5, Unit3, Unit15;

{$R *.dfm}

procedure TfmNewTour.BitBtn1Click(Sender: TObject);
begin
  fmTransport.ShowModal;
  Edit1.Text := transport_name;
end;



procedure TfmNewTour.BitBtn4Click(Sender: TObject);
begin
  fmCountry.ShowModal;
  Edit4.Text := country_name;
end;



procedure TfmNewTour.BitBtn6Click(Sender: TObject);
begin
  fmApplication.ShowModal;
  Edit6.Text := client_name;
end;



end.
