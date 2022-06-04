unit Unit13;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Menus, Grids, DBGrids, DB;

type
  TfmTour = class(TForm)
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
  //  procedure N2Click(Sender: TObject);
    procedure N3Click(Sender: TObject);
    procedure N2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fmTour: TfmTour;

implementation

uses Unit2, Unit14,  uNewCountry, uNewExcursion;

{$R *.dfm}

procedure TfmTour.FormCreate(Sender: TObject);
begin
  DataSource1.Dataset :=dm.cdsTour;
end;

procedure TfmTour.N4Click(Sender: TObject);
begin
  fmTour.Close;
end;

procedure TfmTour.N1Click(Sender: TObject);
begin
  fmNewTour.DateTimePicker1.Date := Now;
  fmNewTour.DateTimePicker2.Date := Now;
  fmNewTour.Edit1.Text :=' ';
  fmNewTour.Edit4.Text :=' ';
  fmNewTour.Edit6.Text :=' ';
  fmNewTour.Edit2.Text :=' ';
  fmNewTour.ShowModal;
    if (fmNewTour.ModalResult = mrOk) then
  begin
    try
      dm.DCOMConnection1.AppServer.smAddTravel(0,fmNewTour.transport_id,
      fmNewTour.country_id, fmNewTour.client_id, fmNewTour.DateTimePicker1.Date,
      fmNewTour.DateTimePicker2.Date, fmNewTour.Edit2.Text );
    except
      MessageDlg('Îøèáêà çàïèñè', mtError, [mbOk], 0);
    end;
    dm.cdsTour.Refresh;
  end;
end;



procedure TfmTour.N3Click(Sender: TObject);
begin
     MessageDlg('Óäàëèòü òóð ?', mtConfirmation, [mbYes, mbNo], 0);
     dm.DCOMConnection1.AppServer.smDeleteTour(dm.cdsTourID.Value);
     dm.cdsTour.Refresh;
end;

procedure TfmTour.N2Click(Sender: TObject);
begin
  begin
  fmNewTour.DateTimePicker1.Date := dm.cdsTourDATE_ARRIVING.Value;
  fmNewTour.DateTimePicker2.Date := dm.cdsTourDATE_LEAVING.Value;
  fmNewTour.Edit1.Text :=dm.cdsTourTRANSPORT_NAME.Value;
  fmNewTour.Edit4.Text :=dm.cdsTourCOUNTRY_NAME.Value;
  fmNewTour.Edit6.Text :=dm.cdsTourCLIENT_NAME.Value;
  fmNewTour.Edit2.Text :=dm.cdsTourPURPOSE.Value;
  fmNewTour.ShowModal;
  if (fmNewTour.ModalResult = mrOk) then
  begin
    try
      dm.DCOMConnection1.AppServer.smAddTravel(dm.cdsTourID.Value,dm.cdsTourID_TRANSPORT.Value,
  dm.cdsTourID_COUNTRY.Value, dm.cdsTourID_APPLICATION.Value, fmNewTour.DateTimePicker1.Date,
      fmNewTour.DateTimePicker2.Date, dm.cdsTourPURPOSE.Value);
    except
      MessageDlg('Îøèáêà çàïèñè', mtError, [mbOk], 0);
    end;
    dm.cdsTour.Refresh;
  end;
end;
end;

procedure TfmTour.DBGrid1TitleClick(Column: TColumn);
begin
  dm.cdsTour.IndexFieldNames := Column.DisplayName;
end;

end.
