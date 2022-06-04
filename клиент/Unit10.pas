unit Unit10;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Menus, Grids, DBGrids, DB;

type
  TfmWeight = class(TForm)
    MainMenu1: TMainMenu;
    DataSource1: TDataSource;
    DBGrid1: TDBGrid;
    N1: TMenuItem;
    N2: TMenuItem;
    N3: TMenuItem;
    N4: TMenuItem;
    procedure N4Click(Sender: TObject);
    procedure N1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure N2Click(Sender: TObject);
    procedure N3Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fmWeight: TfmWeight;

implementation

uses Unit9, Unit2, Unit7;

{$R *.dfm}

procedure TfmWeight.N4Click(Sender: TObject);
begin
     fmWeight.Close;
end;

procedure TfmWeight.N1Click(Sender: TObject);
begin
  fmNewWeight.Edit1.Text :=' ';
  fmNewWeight.DateTimePicker1.Date := Now;
  fmNewWeight.DateTimePicker2.Date :=Now;
  fmNewWeight.Edit2.Text:=' ';
  fmNewWeight.Edit3.Text:=' ';
  fmNewWeight.ShowModal;
  if (fmNewWeight.ModalResult = mrOk) then
  begin
    try
      dm.DCOMConnection1.AppServer.smAddWeight(0,fmNewWeight.client_id,
      fmNewWeight.DateTimePicker1.Date, fmNewWeight.DateTimePicker2.Date, fmNewWeight.Edit2.Text,
      fmNewWeight.Edit3.Text);
    except
      MessageDlg('Ошибка записи', mtError, [mbOk], 0);
    end;
    dm.cdsWeight.Refresh;
  end;
end;


procedure TfmWeight.FormCreate(Sender: TObject);
begin
  DataSource1.Dataset :=dm.cdsWeight;
end;

procedure TfmWeight.N2Click(Sender: TObject);
begin
begin
  fmNewWeight.Edit1.Text :=dm.cdsWeightClient_name.Value;;
  fmNewWeight.DateTimePicker1.Date := dm.cdsWeightDATE_ARRIVING.Value;
  fmNewWeight.DateTimePicker2.Date :=dm.cdsWeightDATE_LEAVING.Value;
  fmNewWeight.Edit2.Text:=dm.cdsWeightKIND.Value;
  fmNewWeight.Edit3.Text:=dm.cdsWeightPRICE.AsString;
  fmNewWeight.ShowModal;
  if (fmNewWeight.ModalResult = mrOk) then
  begin
    try
      dm.DCOMConnection1.AppServer.smAddWeight(dm.cdsWeightID.Value, fmNewWeight.client_id,
      fmNewWeight.DateTimePicker1.Date, fmNewWeight.DateTimePicker2.Date, fmNewWeight.Edit2.Text,
      fmNewWeight.Edit3.Text);
    except
      MessageDlg('Ошибка записи', mtError, [mbOk], 0);
    end;
    dm.cdsWeight.Refresh;
  end;
end;
end;

procedure TfmWeight.N3Click(Sender: TObject);
begin
     MessageDlg('Удалить груз '''+ dm.cdsWeightKIND.Value +''' ?', mtConfirmation, [mbYes, mbNo], 0);
     dm.DCOMConnection1.AppServer.smDeleteWeight(dm.cdsWeightID.Value);
     dm.cdsWeight.Refresh;
end;

procedure TfmWeight.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  fmNewHavingWeight.weight_id := dm.cdsWeightID.Value;
  fmNewHavingWeight.weight_name :=  dm.cdsWeightKIND.Value;
end;

end.
