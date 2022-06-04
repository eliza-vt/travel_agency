unit Unit15;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Menus, Grids, DBGrids, DB;

type
  TfmApplication = class(TForm)
    MainMenu1: TMainMenu;
    DataSource1: TDataSource;
    DBGrid1: TDBGrid;
    N1: TMenuItem;
    N2: TMenuItem;
    N3: TMenuItem;
    N4: TMenuItem;
    procedure N1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure N4Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure N2Click(Sender: TObject);
    procedure N3Click(Sender: TObject);
  private
    { Private declarations }
  public
  client_id: integer;
  client_name:string;
    { Public declarations }
  end;

var
  fmApplication: TfmApplication;

implementation

uses Unit16, uNewCountry, Unit2, Unit14;

{$R *.dfm}

procedure TfmApplication.N1Click(Sender: TObject);
begin
  fmNewApplication.Edit1.Text :=' ';
  fmNewApplication.DateTimePicker1.Date := Now;
  fmNewApplication.ShowModal;
  if (fmNewApplication.ModalResult = mrOk) then
  begin
    try
      dm.DCOMConnection1.AppServer.smAddApplication(0,fmNewApplication.client_id,
      fmNewApplication.DateTimePicker1.Date);
    except
      MessageDlg('Ошибка записи', mtError, [mbOk], 0);
    end;
    dm.cdsApplication.Refresh;
  end;
end;

procedure TfmApplication.FormCreate(Sender: TObject);
begin
  DataSource1.Dataset :=dm.cdsApplication;
end;

procedure TfmApplication.N4Click(Sender: TObject);
begin
 fmApplication.Close;
end;

procedure TfmApplication.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  fmNewTour.client_id := dm.cdsApplicationID.Value;
  fmNewTour.client_name :=  dm.cdsApplicationCLIENT_NAME.Value;
end;

procedure TfmApplication.N2Click(Sender: TObject);
begin
   begin
  fmNewApplication.Edit1.Text :=dm.cdsApplicationCLIENT_NAME.Value;
  fmNewApplication.DateTimePicker1.Date :=dm.cdsApplicationDATE_RG.Value;
  fmNewApplication.ShowModal;
  if (fmNewApplication.ModalResult = mrOk) then
  begin
    try
      dm.DCOMConnection1.AppServer.smAddApplication(dm.cdsApplicationID.Value,dm.cdsApplicationCLIENT_NAME.Value, dm.cdsApplicationDATE_RG.Value);
    except
      MessageDlg('Ошибка записи', mtError, [mbOk], 0);
    end;
    dm.cdsApplication.Refresh;
  end;
end;
end;

procedure TfmApplication.N3Click(Sender: TObject);
begin
    MessageDlg('Удалить заявку '''+ dm.cdsApplicationCLIENT_NAME.Value +''' ?', mtConfirmation, [mbYes, mbNo], 0);
     dm.DCOMConnection1.AppServer.smDeleteApplication(dm.cdsApplicationID.Value);
     dm.cdsApplication.Refresh;
end;

end.
