unit Unit5;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Menus, Grids, DBGrids, DB;

type
  TfmCity = class(TForm)
    DataSource1: TDataSource;
    DBGrid1: TDBGrid;
    MainMenu1: TMainMenu;
    N1: TMenuItem;
    N2: TMenuItem;
    N3: TMenuItem;
    N4: TMenuItem;
    procedure N1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
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
  fmCity: TfmCity;

implementation

uses uNewCity, Unit2, uNewCountry, Unit14;

{$R *.dfm}

procedure TfmCity.N1Click(Sender: TObject);
begin
  fmNewCity.eName.Text :=' ';
  fmNewCity.ShowModal;
  if (fmNewCity.ModalResult = mrOk) then
  begin
    try
      dm.DCOMConnection1.AppServer.smAddCity(0, fmNewCity.eName.Text);
    except
      MessageDlg('Ошибка записи', mtError, [mbOk], 0);
    end;
    dm.cdsCity.Refresh;
  end;
end;

procedure TfmCity.FormCreate(Sender: TObject);
begin
  DataSource1.Dataset :=dm.cdsCity;
end;

procedure TfmCity.N2Click(Sender: TObject);
begin
   begin
  fmNewCity.eName.Text :=dm.cdsCityNAME.Value;
  fmNewCity.ShowModal;
  if (fmNewCity.ModalResult = mrOk) then
  begin
    try
      dm.DCOMConnection1.AppServer.smAddCity(dm.cdsCityID.Value, fmNewCity.eName.Text);
    except
      MessageDlg('Ошибка записи', mtError, [mbOk], 0);
    end;
    dm.cdsCity.Refresh;
  end;
end;
end;

procedure TfmCity.N3Click(Sender: TObject);
begin
     MessageDlg('Удалить город '''+ dm.cdsCityNAME.Value +''' ?', mtConfirmation, [mbYes, mbNo], 0);
     dm.DCOMConnection1.AppServer.smDeleteCity(dm.cdsCityID.Value);
     dm.cdsCity.Refresh;
end;

procedure TfmCity.N4Click(Sender: TObject);
begin
    fmCity.Close;
end;

procedure TfmCity.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  fmNewCountry.city_id := dm.cdsCityID.Value;
  fmNewCountry.city_name :=  dm.cdsCityNAME.Value;
end;

end.
