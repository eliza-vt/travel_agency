unit Unit11;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Menus, Grids, DBGrids, DB;

type
  TfmLeaving = class(TForm)
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
     client_id, hotel_id: integer;
     client_name, hotel_name: string;
    { Public declarations }
  end;

var
  fmLeaving: TfmLeaving;

implementation

uses Unit2, Unit12, Unit7;

{$R *.dfm}


procedure TfmLeaving.FormCreate(Sender: TObject);
begin
   DataSource1.Dataset :=dm.cdsLeaving;
end;

procedure TfmLeaving.N4Click(Sender: TObject);
begin
    fmLeaving.Close;
end;

procedure TfmLeaving.N1Click(Sender: TObject);
begin
  fmNewLeaving.Edit1.Text :=' ';
  fmNewLeaving.Edit2.Text:=' ';
  fmNewLeaving.DateTimePicker1.Date := Now;
  fmNewLeaving.DateTimePicker1.Date := Now;
  fmNewLeaving.ComboBox1.Text := ' ';
  fmNewLeaving.ShowModal;
  if (fmNewLeaving.ModalResult = mrOk) then
  begin
    try
      dm.DCOMConnection1.AppServer.smAddLeaving(fmNewLeaving.client_id,
      fmNewLeaving.hotel_id,fmNewLeaving.DateTimePicker1.Date,fmNewLeaving.DateTimePicker2.Date, fmNewLeaving.ComboBox1.Text);
    except
      MessageDlg('Ошибка записи', mtError, [mbOk], 0);
    end;
    dm.cdsLeaving.Refresh;
  end;
end;

procedure TfmLeaving.N2Click(Sender: TObject);
begin
begin
  fmNewLeaving.Edit1.Text :=dm.cdsLeavingClient_name.Value;
  fmNewLeaving.Edit2.Text:=dm.cdsLeavingHotel_name.Value;
  fmNewLeaving.DateTimePicker1.Date := dm.cdsLeavingDATE_ARRIVING.Value;
  fmNewLeaving.DateTimePicker1.Date := dm.cdsLeavingDATE_LEAVING.Value;
  fmNewLeaving.ShowModal;
  if (fmNewLeaving.ModalResult = mrOk) then
  begin
    try
      dm.DCOMConnection1.AppServer.smAddLeaving(fmNewLeaving.client_id,
      fmNewLeaving.hotel_id,fmNewLeaving.DateTimePicker1.Date,fmNewLeaving.DateTimePicker2.Date, fmNewLeaving.ComboBox1.Text);
    except
      MessageDlg('Ошибка записи', mtError, [mbOk], 0);
    end;
    dm.cdsLeaving.Refresh;
  end;
end;
end;

procedure TfmLeaving.N3Click(Sender: TObject);
begin
     MessageDlg('Удалить запись?', mtConfirmation, [mbYes, mbNo], 0);
     dm.DCOMConnection1.AppServer.smDeleteLeaving(dm.cdsClientID.Value,dm.cdsHotelID.Value);
     dm.cdsLeaving.Refresh;
end;

end.
