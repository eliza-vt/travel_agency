unit uHotel;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Menus, Grids, DBGrids, DB;

type
  TfmHotel = class(TForm)
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
  fmHotel: TfmHotel;

implementation

uses Unit2, uNewHotel, uNewCountry, Unit12;

{$R *.dfm}

procedure TfmHotel.FormCreate(Sender: TObject);
begin
  DataSource1.Dataset :=dm.cdsHotel;
end;

procedure TfmHotel.N1Click(Sender: TObject);
begin
  fmNewHotel.eName.Text :=' ';
  fmNewHotel.eKind.Text :=' ';
  fmNewHotel.ePrice.Text :=' ';
  fmNewHotel.ShowModal;
  if (fmNewHotel.ModalResult = mrOk) then
  begin
    try
      dm.DCOMConnection1.AppServer.smAddHotel(0, fmNewHotel.eName.Text, fmNewHotel.eKind.Text,fmNewHotel.ePrice.Text);
    except
      MessageDlg('Ошибка записи', mtError, [mbOk], 0);
    end;
    dm.cdsHotel.Refresh;
  end;
end;

procedure TfmHotel.N2Click(Sender: TObject);
begin
 begin
  fmNewHotel.eName.Text :=dm.cdsHotelNAME.Value;
  fmNewHotel.eKind.Text :=dm.cdsHotelRECING.AsString;
  fmNewHotel.ePrice.Text :=dm.cdsHotelPRICE.AsString;
  fmNewHotel.ShowModal;
  if (fmNewHotel.ModalResult = mrOk) then
  begin
    try
      dm.DCOMConnection1.AppServer.smAddHotel(dm.cdsHotelID.Value, fmNewHotel.eName.Text, fmNewHotel.eKind.Text,fmNewHotel.ePrice.Text);
    except
      MessageDlg('Ошибка записи', mtError, [mbOk], 0);
    end;
    dm.cdsHotel.Refresh;
  end;
end;
end;

procedure TfmHotel.N3Click(Sender: TObject);
begin
     MessageDlg('Удалить город '''+ dm.cdsHotelNAME.Value +''' ?', mtConfirmation, [mbYes, mbNo], 0);
     dm.DCOMConnection1.AppServer.smDeleteHotel(dm.cdsHotelID.Value);
     dm.cdsHotel.Refresh;
end;

procedure TfmHotel.N4Click(Sender: TObject);
begin
  fmHotel.Close;
end;

procedure TfmHotel.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  fmNewLeaving.hotel_id := dm.cdsHotelID.Value;
  fmNewLeaving.hotel_name :=  dm.cdsHotelNAME.Value;
end;

end.

