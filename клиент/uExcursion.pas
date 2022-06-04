unit uExcursion;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Menus, Grids, DBGrids, DB;

type
  TfmExcursion = class(TForm)
    MainMenu1: TMainMenu;
    DataSource1: TDataSource;
    DBGrid1: TDBGrid;
    N1: TMenuItem;
    N2: TMenuItem;
    N3: TMenuItem;
    N4: TMenuItem;
    procedure FormCreate(Sender: TObject);
    procedure N1Click(Sender: TObject);
    procedure N2Click(Sender: TObject);
    procedure N3Click(Sender: TObject);
    procedure N4Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fmExcursion: TfmExcursion;

implementation

uses Unit2, uNewWeighter, uNewExcursion, Unit14, Unit22;

{$R *.dfm}



procedure TfmExcursion.FormCreate(Sender: TObject);
begin
  DataSource1.Dataset :=dm.cdsExcursion;
end;

procedure TfmExcursion.N1Click(Sender: TObject);
begin
  fmNewExcursion.DateTimePicker1.Date := Now;
  fmNewExcursion.eName.Text :=' ';
  fmNewExcursion.eTime.Text :=' ';
  fmNewExcursion.ePlace.Text :=' ';
  fmNewExcursion.eAgency.Text :=' ';
  fmNewExcursion.eRecing.Text :=' ';
  fmNewExcursion.ePrice.Text :=' ';
  fmNewExcursion.ShowModal;
    if (fmNewExcursion.ModalResult = mrOk) then
  begin
    try
      dm.DCOMConnection1.AppServer.smAddExcurtion(0, fmNewExcursion.DateTimePicker1.Date, fmNewExcursion.eName.Text,
  fmNewExcursion.eTime.Text ,fmNewExcursion.ePlace.Text,fmNewExcursion.eAgency.Text,fmNewExcursion.eRecing.Text, fmNewExcursion.ePrice.Text);
    except
      MessageDlg('Ошибка записи', mtError, [mbOk], 0);
    end;
    dm.cdsExcursion.Refresh;
  end;
end;

procedure TfmExcursion.N2Click(Sender: TObject);
begin
  begin
  //fmNewExcursion.DateTimePicker1 := NULL;
  fmNewExcursion.eName.Text :=dm.cdsExcursionNAME.Value;
  fmNewExcursion.eTime.Text :=dm.cdsExcursionLASTING.AsString;
  fmNewExcursion.ePlace.Text :=dm.cdsExcursionPLACE.Value;
  fmNewExcursion.eAgency.Text :=dm.cdsExcursionAGENCY.Value;
  fmNewExcursion.eRecing.Text :=dm.cdsExcursionRETING_AGENCY.AsString;
  fmNewExcursion.ePrice.Text :=dm.cdsExcursionPRICE.AsString;
  fmNewExcursion.ShowModal;
  if (fmNewExcursion.ModalResult = mrOk) then
  begin
    try
      dm.DCOMConnection1.AppServer.smAddExcurtion(dm.cdsExcursionID.Value,fmNewExcursion.DateTimePicker1.Date, fmNewExcursion.eName.Text,
  fmNewExcursion.eTime.Text ,fmNewExcursion.ePlace.Text,fmNewExcursion.eAgency.Text,fmNewExcursion.eRecing.Text,
  fmNewExcursion.ePrice.Text);
    except
      MessageDlg('Ошибка записи', mtError, [mbOk], 0);
    end;
    dm.cdsExcursion.Refresh;
  end;
end;
end;

procedure TfmExcursion.N3Click(Sender: TObject);
begin
      MessageDlg('Удалить экскурсию'''+ dm.cdsExcursionNAME.Value +''' ?', mtConfirmation, [mbYes, mbNo], 0);
     dm.DCOMConnection1.AppServer.smDeleteExcursion(dm.cdsExcursionID.Value);
     dm.cdsExcursion.Refresh;
end;

procedure TfmExcursion.N4Click(Sender: TObject);
begin
  fmExcursion.Close;
end;

procedure TfmExcursion.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  fmNewInexcursion.excursion_id := dm.cdsExcursionID.Value;
  fmNewInexcursion.excursion_name :=  dm.cdsExcursionNAME.Value;
end;

end.

