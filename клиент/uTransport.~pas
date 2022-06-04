unit uTransport;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Menus, Grids, DBGrids, DB;

type
  TfmTransport = class(TForm)
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
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fmTransport: TfmTransport;

implementation

uses Unit2, uNewTransport, uNewWeighter, Unit7, Unit14;

{$R *.dfm}

procedure TfmTransport.N4Click(Sender: TObject);
begin
  fmTransport.Close;
end;

procedure TfmTransport.FormCreate(Sender: TObject);
begin
  DataSource1.Dataset :=dm.cdsTransport;
end;

procedure TfmTransport.N1Click(Sender: TObject);
begin
  fmNewTransport.Edit1.Text :=' ';
  fmNewTransport.Edit2.Text :=' ';
  fmNewTransport.Edit3.Text :=' ';
  fmNewTransport.Edit4.Text :=' ';
  fmNewTransport.Edit5.Text :=' ';
  fmNewTransport.Edit6.Text :=' ';
  fmNewTransport.ShowModal;
    if (fmNewTransport.ModalResult = mrOk) then
  begin
    try
      dm.DCOMConnection1.AppServer.smAddTransport(0,fmNewTransport.Edit1.Text,fmNewTransport.Edit2.Text,fmNewTransport.Edit3.Text,
      fmNewTransport.Edit4.Text,fmNewTransport.Edit5.Text,fmNewTransport.Edit6.Text);
    except
      MessageDlg('Ошибка записи', mtError, [mbOk], 0);
    end;
    dm.cdsTransport.Refresh;
  end;
end;

procedure TfmTransport.N2Click(Sender: TObject);
begin
begin
  fmNewTransport.Edit1.Text := dm.cdsTransportNAME.Value;
  fmNewTransport.Edit2.Text := dm.cdsTransportAIRPORT.Value;
  fmNewTransport.Edit3.Text :=dm.cdsTransportPRICE.AsString;
  fmNewTransport.Edit4.Text :=dm.cdsTransportKIND.Value;
  fmNewTransport.Edit5.Text :=dm.cdsTransportDISPATCHER.AsString;
  fmNewTransport.Edit6.Text :=dm.cdsTransportKEEPING.AsString;
  fmNewTransport.ShowModal;
  if (fmNewTransport.ModalResult = mrOk) then
  begin
    try
      dm.DCOMConnection1.AppServer.smAddTransport(dm.cdsTransportID.Value, fmNewTransport.Edit1.Text,fmNewTransport.Edit2.Text,fmNewTransport.Edit3.Text,
      fmNewTransport.Edit4.Text,fmNewTransport.Edit5.Text,fmNewTransport.Edit6.Text);
    except
      MessageDlg('Ошибка записи', mtError, [mbOk], 0);
    end;
    dm.cdsTransport.Refresh;
  end;
end;
end;

procedure TfmTransport.N3Click(Sender: TObject);
begin
      MessageDlg('Удалить транспорт'''+ dm.cdsTransportNAME.Value +''' ?', mtConfirmation, [mbYes, mbNo], 0);
     dm.DCOMConnection1.AppServer.smDeleteTransport(dm.cdsTransportID.Value);
     dm.cdsTransport.Refresh;
end;

procedure TfmTransport.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  fmNewHavingWeight.transport_id := dm.cdsTransportID.Value;
  fmNewHavingWeight.transport_name :=  dm.cdsTransportNAME.Value;
  fmNewTour.transport_id := dm.cdsTransportID.Value;
  fmNewTour.transport_name :=  dm.cdsTransportNAME.Value;
end;

end.
