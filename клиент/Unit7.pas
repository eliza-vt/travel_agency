unit Unit7;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons;

type
  TfmNewHavingWeight = class(TForm)
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Edit1: TEdit;
    Edit2: TEdit;
    Edit3: TEdit;
    Edit4: TEdit;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    BitBtn3: TBitBtn;
    BitBtn4: TBitBtn;
    BitBtn5: TBitBtn;
    BitBtn6: TBitBtn;
    procedure BitBtn1Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure BitBtn3Click(Sender: TObject);
    procedure BitBtn4Click(Sender: TObject);
  private
    { Private declarations }
  public
     client_id, weight_id, weighter_id, transport_id: integer;
     client_name, weight_name, weighter_name, transport_name: string;
    { Public declarations }
  end;

var
  fmNewHavingWeight: TfmNewHavingWeight;

implementation

uses Unit3, Unit10, uWeighter, uTransport;

{$R *.dfm}

procedure TfmNewHavingWeight.BitBtn1Click(Sender: TObject);
begin
  fmClient.ShowModal;
  Edit1.Text := client_name;
end;

procedure TfmNewHavingWeight.BitBtn2Click(Sender: TObject);
begin
  fmWeight.ShowModal;
  Edit2.Text := weight_name;
end;

procedure TfmNewHavingWeight.BitBtn3Click(Sender: TObject);
begin
  fmWeighter.ShowModal;
  Edit3.Text := weighter_name;
end;

procedure TfmNewHavingWeight.BitBtn4Click(Sender: TObject);
begin
  fmTransport.ShowModal;
  Edit4.Text := transport_name;
end;

end.
