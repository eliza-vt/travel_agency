unit uCountry;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Menus, Grids, DBGrids, DB;

type
  TfmCountry = class(TForm)
    MainMenu1: TMainMenu;
    DataSource1: TDataSource;
    DBGrid1: TDBGrid;
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
       city_id: integer;
     city_name: string;
    { Public declarations }
  end;

var
  fmCountry: TfmCountry;

implementation

uses uNewCountry, Unit2, Unit14;

{$R *.dfm}

procedure TfmCountry.N1Click(Sender: TObject);
begin
  fmNewCountry.eName.Text :=' ';
  fmNewCountry.Edit1.Text :=' ' ;
  fmNewCountry.ShowModal;
  if (fmNewCountry.ModalResult = mrOk) then
  begin
    try
      dm.DCOMConnection1.AppServer.smAddCountry(0,fmNewCountry.city_id, fmNewCountry.eName.Text);
    except
      MessageDlg('������ ������', mtError, [mbOk], 0);
    end;
    dm.cdsCountry.Refresh;
  end;
end;

procedure TfmCountry.FormCreate(Sender: TObject);
begin
  DataSource1.Dataset :=dm.cdsCountry;
end;

procedure TfmCountry.N2Click(Sender: TObject);
begin
  begin
  fmNewCountry.eName.Text :=dm.cdsCountryNAME.Value;
  fmNewCountry.Edit1.Text :=dm.cdsCountryCity_name.Value;
  fmNewCountry.ShowModal;
  if (fmNewCountry.ModalResult = mrOk) then
  begin
    try
      dm.DCOMConnection1.AppServer.smAddCountry(dm.cdsCountryID.Value, fmNewCountry.city_id, fmNewCountry.eName.Text);
    except
      MessageDlg('������ ������', mtError, [mbOk], 0);
    end;
    dm.cdsCountry.Refresh;
  end;
end;
end;

procedure TfmCountry.N3Click(Sender: TObject);
begin
     MessageDlg('������� ����� '''+ dm.cdsCountryNAME.Value +''' ?', mtConfirmation, [mbYes, mbNo], 0);
     dm.DCOMConnection1.AppServer.smDeleteCountry(dm.cdsCountryID.Value);
     dm.cdsCountry.Refresh;
end;

procedure TfmCountry.N4Click(Sender: TObject);
begin
   fmCountry.Close;
end;

procedure TfmCountry.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  fmNewTour.country_id := dm.cdsCountryID.Value;
  fmNewTour.country_name :=  dm.cdsCountryNAME.Value;
end;

end.
