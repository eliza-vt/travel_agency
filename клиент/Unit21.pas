unit Unit21;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Menus, Grids, DBGrids, DB;

type
  TfmInexcursion = class(TForm)
    MainMenu1: TMainMenu;
    DataSource1: TDataSource;
    DBGrid1: TDBGrid;
    N1: TMenuItem;
    N2: TMenuItem;
    N3: TMenuItem;
    N4: TMenuItem;
    procedure N4Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure N1Click(Sender: TObject);
    procedure N2Click(Sender: TObject);
    procedure N3Click(Sender: TObject);
  private
    { Private declarations }
  public
         client_id, excursion_id: integer;
     client_name, excursion_name: string;
    { Public declarations }
  end;

var
  fmInexcursion: TfmInexcursion;

implementation

uses Unit2, Unit22;

{$R *.dfm}

procedure TfmInexcursion.N4Click(Sender: TObject);
begin
    fmInexcursion.Close;
end;

procedure TfmInexcursion.FormCreate(Sender: TObject);
begin
   DataSource1.Dataset :=dm.cdsInexcursion;
end;

procedure TfmInexcursion.N1Click(Sender: TObject);
begin
  fmNewInexcursion.Edit1.Text :=' ';
  fmNewInexcursion.Edit2.Text:=' ';
  fmNewInexcursion.DateTimePicker1.Date := Now;
  fmNewInexcursion.ShowModal;
  if (fmNewInexcursion.ModalResult = mrOk) then
  begin
    try
      dm.DCOMConnection1.AppServer.smAddInexcursion(fmNewInexcursion.client_id,
      fmNewInexcursion.excursion_id,fmNewInexcursion.DateTimePicker1.Date);
    except
      MessageDlg('Ошибка записи', mtError, [mbOk], 0);
    end;
    dm.cdsInexcursion.Refresh;
  end;
end;

procedure TfmInexcursion.N2Click(Sender: TObject);
begin
  fmNewInexcursion.Edit1.Text :=dm.cdsInexcursionClient_name.Value;
  fmNewInexcursion.Edit2.Text:=dm.cdsInexcursionExcursion_name.Value;
  fmNewInexcursion.DateTimePicker1.Date := dm.cdsInexcursionDATE_EXC.Value;
  fmNewInexcursion.ShowModal;
  if (fmNewInexcursion.ModalResult = mrOk) then
  begin
    try
      dm.DCOMConnection1.AppServer.smAddInexcursion(dm.cdsInexcursionID_CLIENT.Value,
      dm.cdsInexcursionID_EXCURSION.Value,fmNewInexcursion.DateTimePicker1.Date)  ;
    except
      MessageDlg('Ошибка записи', mtError, [mbOk], 0);
    end;
    dm.cdsInexcursion.Refresh;
  end;
end;


procedure TfmInexcursion.N3Click(Sender: TObject);
begin
     MessageDlg('Удалить запись?', mtConfirmation, [mbYes, mbNo], 0);
     dm.DCOMConnection1.AppServer.smDeleteInexcursion(dm.cdsInexcursionID_CLIENT.Value,dm.cdsInexcursionID_EXCURSION.Value);
     dm.cdsInexcursion.Refresh;
end;

end.
