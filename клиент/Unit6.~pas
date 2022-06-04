unit Unit6;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Menus, Grids, DBGrids, DB;

type
  TfmHavingWeight = class(TForm)
    MainMenu1: TMainMenu;
    DataSource1: TDataSource;
    DBGrid1: TDBGrid;
    N1: TMenuItem;
    N2: TMenuItem;
    N3: TMenuItem;
    N4: TMenuItem;
    procedure FormCreate(Sender: TObject);
    procedure N4Click(Sender: TObject);
    procedure N1Click(Sender: TObject);
    procedure N2Click(Sender: TObject);
    procedure N3Click(Sender: TObject);
  private
    { Private declarations }
  public
       client_id1, weight_id, weighter_id, transport_id: integer;
     client_name1, weight_name, weighter_name, transport_name: string;
    { Public declarations }
  end;

var
  fmHavingWeight: TfmHavingWeight;

implementation

uses Unit2, Unit7;

{$R *.dfm}

procedure TfmHavingWeight.FormCreate(Sender: TObject);
begin
   DataSource1.Dataset :=dm.cdsHavingWeight;
end;

procedure TfmHavingWeight.N4Click(Sender: TObject);
begin
     fmHavingWeight.Close;
end;

procedure TfmHavingWeight.N1Click(Sender: TObject);
begin
  fmNewHavingWeight.Edit1.Text :=' ';
  fmNewHavingWeight.Edit2.Text:=' ';
  fmNewHavingWeight.Edit3.Text:=' ';
  fmNewHavingWeight.Edit4.Text:=' ';
  fmNewHavingWeight.ShowModal;
  if (fmNewHavingWeight.ModalResult = mrOk) then
  begin
    try
      dm.DCOMConnection1.AppServer.smAddHavingWeight(fmNewHavingWeight.client_id,
      fmNewHavingWeight.weight_id,fmNewHavingWeight.weighter_id,fmNewHavingWeight.transport_id);
    except
      MessageDlg('Ошибка записи', mtError, [mbOk], 0);
    end;
    dm.cdsHavingWeight.Refresh;
  end;
end;

procedure TfmHavingWeight.N2Click(Sender: TObject);
begin
   begin
  fmNewHavingWeight.Edit1.Text := dm.cdsHavingWeightClient_name.Value;
  fmNewHavingWeight.Edit2.Text:=dm.cdsHavingweightWeight_name.Value;
  fmNewHavingWeight.Edit3.Text:=dm.cdsHavingweightWeighter_name.Value;
  fmNewHavingWeight.Edit4.Text:=dm.cdsHavingweightTransport_name.Value;;
  fmNewHavingWeight.ShowModal;
  if (fmNewHavingWeight.ModalResult = mrOk) then
  begin
    try
      dm.DCOMConnection1.AppServer.smAddHavingWeight(fmNewHavingWeight.client_id,
      fmNewHavingWeight.weight_id,
      fmNewHavingWeight.weighter_id, fmNewHavingWeight.transport_id);
    except
      MessageDlg('Ошибка записи', mtError, [mbOk], 0);
    end;
    dm.cdsHavingWeight.Refresh;
  end;
end;
end;

procedure TfmHavingWeight.N3Click(Sender: TObject);
begin
     MessageDlg('Удалить запись?', mtConfirmation, [mbYes, mbNo], 0);
     dm.DCOMConnection1.AppServer.smDeleteHavingWeight(dm.cdsClientID.Value,dm.cdsWeightID.Value,dm.cdsWeighterID.Value,dm.cdsTransportID.Value);
     dm.cdsHavingWeight.Refresh;
end;

end.
