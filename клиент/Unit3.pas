unit Unit3;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, Grids, DBGrids, Menus;

type
  TfmClient = class(TForm)
    MainMenu1: TMainMenu;
    N1: TMenuItem;
    N2: TMenuItem;
    N3: TMenuItem;
    N4: TMenuItem;
    DBGrid1: TDBGrid;
    DataSource1: TDataSource;
    procedure FormActivate(Sender: TObject);
    procedure N1Click(Sender: TObject);
    procedure N2Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure N4Click(Sender: TObject);
    procedure N3Click(Sender: TObject);
 
  private
    { Private declarations }
  public
     child_id: integer;
     child_name: string;
     client_id: integer;
     client_name: string;
    { Public declarations }
  end;

var
  fmClient: TfmClient;

implementation

uses Unit2, Unit9, Unit4, Unit7, Unit12, Unit14, Unit16, Unit22;

{$R *.dfm}

procedure TfmClient.FormActivate(Sender: TObject);
begin
 DataSource1.Dataset :=dm.cdsClient;
end;

procedure TfmClient.N1Click(Sender: TObject);
begin
  fmNewClient.eName.Text :=' ';
  fmNewClient.eSurname.Text :=' ';
  fmNewClient.eLastname.Text :=' ';
  fmNewClient.ePol.Text :=' ';
  fmNewClient.ePurpose.Text :=' ';
  fmNewClient.Edit1.Text :=' ' ;
  fmNewClient.ShowModal;
    if (fmNewClient.ModalResult = mrOk) then
  begin
    try
      dm.DCOMConnection1.AppServer.smAddClient(0, fmNewClient.eName.Text, fmNewClient.eSurname.Text,
      fmNewClient.eLastname.Text,fmNewClient.child_id, fmNewClient.ePol.Text, fmNewClient.ePurpose.Text);
    except
      MessageDlg('Ошибка записи', mtError, [mbOk], 0);
    end;
    dm.cdsClient.Refresh;
  end;
 end;
procedure TfmClient.N2Click(Sender: TObject);
begin
  begin
  fmNewClient.eName.Text :=dm.cdsClientNAME.Value;
  fmNewClient.eSurname.Text :=dm.cdsClientSURNAME.Value;
  fmNewClient.eLastname.Text :=dm.cdsClientLASTNAME.Value;
  fmNewClient.ePol.Text :=dm.cdsClientPOL.Value;
  fmNewClient.ePurpose.Text :=dm.cdsClientPURPOSE.Value;
  fmNewClient.Edit1.Text :=dm.cdsClientChild_name.Value;
  fmNewClient.ShowModal;
  if (fmNewClient.ModalResult = mrOk) then
  begin
    try
      dm.DCOMConnection1.AppServer.smAddClient(dm.cdsClientID.Value, fmNewClient.eName.Text,
               fmNewClient.eSurname.Text, fmNewClient.eLastname.Text,
               fmNewClient.child_id, fmNewClient.ePol.Text, fmNewClient.ePurpose.Text);
    except
      MessageDlg('Ошибка записи', mtError, [mbOk], 0);
    end;
    dm.cdsClient.Refresh;
  end;
end;
end;


procedure TfmClient.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  fmNewWeight.client_id := dm.cdsClientID.Value;
  fmNewWeight.client_name :=  dm.cdsClientNAME.Value;
  fmNewHavingWeight.client_id := dm.cdsClientID.Value;
  fmNewHavingWeight.client_name :=  dm.cdsClientNAME.Value;
  fmNewLeaving.client_id := dm.cdsClientID.Value;
  fmNewLeaving.client_name :=  dm.cdsClientNAME.Value;
  fmNewApplication.client_id := dm.cdsClientID.Value;
  fmNewApplication.client_name :=  dm.cdsClientNAME.Value;
  fmNewInexcursion.client_id := dm.cdsClientID.Value;
  fmNewInexcursion.client_name :=  dm.cdsClientNAME.Value;
end;

procedure TfmClient.N4Click(Sender: TObject);
begin
       fmClient.Close;
end;

procedure TfmClient.N3Click(Sender: TObject);
begin
     MessageDlg('Удалить город '''+ dm.cdsClientNAME.Value +''' ?', mtConfirmation, [mbYes, mbNo], 0);
     dm.DCOMConnection1.AppServer.smDeleteClient(dm.cdsClientID.Value);
     dm.cdsClient.Refresh;
end;



end.
