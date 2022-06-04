unit uWeighter;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Menus, Grids, DBGrids, DB;

type
  TfmWeighter = class(TForm)
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
    procedure N4Click(Sender: TObject);
    procedure N3Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fmWeighter: TfmWeighter;

implementation

uses  Unit2, Unit9, uNewWeighter, Unit7;

{$R *.dfm}

procedure TfmWeighter.N1Click(Sender: TObject);
begin
  fmNewWeighter.eName.Text :=' ';
  fmNewWeighter.eSurname.Text :=' ';
  fmNewWeighter.eLastname.Text :=' ';
  fmNewWeighter.ShowModal;
    if (fmNewWeighter.ModalResult = mrOk) then
  begin
    try
      dm.DCOMConnection1.AppServer.smAddWeighter(0, fmNewWeighter.eName.Text, fmNewWeighter.eSurname.Text,
      fmNewWeighter.eLastname.Text);
    except
      MessageDlg('Ошибка записи', mtError, [mbOk], 0);
    end;
    dm.cdsWeighter.Refresh;
  end;
end;

procedure TfmWeighter.FormCreate(Sender: TObject);
begin
   DataSource1.Dataset :=dm.cdsWeighter;
end;

procedure TfmWeighter.N2Click(Sender: TObject);
begin
 begin
  fmNewWeighter.eName.Text :=dm.cdsWeighterNAME.Value;
  fmNewWeighter.eSurname.Text :=dm.cdsWeighterSURNAME.Value;
  fmNewWeighter.eLastname.Text :=dm.cdsWeighterLASTNAME.Value;;
  fmNewWeighter.ShowModal;
  if (fmNewWeighter.ModalResult = mrOk) then
  begin
    try
      dm.DCOMConnection1.AppServer.smAddWeighter(dm.cdsWeighterID.Value, fmNewWeighter.eName.Text,
               fmNewWeighter.eSurname.Text ,fmNewWeighter.eLastname.Text);
    except
      MessageDlg('Ошибка записи', mtError, [mbOk], 0);
    end;
    dm.cdsWeighter.Refresh;
  end;
end;
end;

procedure TfmWeighter.N4Click(Sender: TObject);
begin
   fmWeighter.Close;
end;

procedure TfmWeighter.N3Click(Sender: TObject);
begin
      MessageDlg('Удалить грузчика'''+ dm.cdsWeighterNAME.Value +''' ?', mtConfirmation, [mbYes, mbNo], 0);
     dm.DCOMConnection1.AppServer.smDeleteWeighter(dm.cdsWeighterID.Value);
     dm.cdsWeighter.Refresh;
end;

procedure TfmWeighter.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  fmNewHavingWeight.weighter_id := dm.cdsWeighterID.Value;
  fmNewHavingWeight.weighter_name :=  dm.cdsWeighterNAME.Value;
end;

end.
 