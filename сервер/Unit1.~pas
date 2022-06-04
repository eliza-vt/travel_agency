unit Unit1;

{$WARN SYMBOL_PLATFORM OFF}

interface

uses
  Windows, Messages, SysUtils, Classes, ComServ, ComObj, VCLCom, DataBkr,
  DBClient, Project2_TLB, StdVcl, IBStoredProc, DB, IBCustomDataSet,
  IBTable, IBDatabase, Provider;

type
  TMyServer = class(TRemoteDataModule, IMyServer)
    IBDatabase1: TIBDatabase;
    IBTransaction1: TIBTransaction;
    TApplication: TIBTable;
    TChild: TIBTable;
    TCity: TIBTable;
    TClient: TIBTable;
    TCountry: TIBTable;
    TExcursion: TIBTable;
    THavingweight: TIBTable;
    THotel: TIBTable;
    TLeaving: TIBTable;
    TTour: TIBTable;
    TTransport: TIBTable;
    TWeight: TIBTable;
    TWeighter: TIBTable;
    spAddApplication: TIBStoredProc;
    spDeleteApplication: TIBStoredProc;
    spDeleteChild: TIBStoredProc;
    spAddCity: TIBStoredProc;
    spDeleteCity: TIBStoredProc;
    spDeleteClient: TIBStoredProc;
    spAddCountry: TIBStoredProc;
    spDeleteCountry: TIBStoredProc;
    spAddExcursion: TIBStoredProc;
    spDeleteExcursion: TIBStoredProc;
    spAddHavingweight: TIBStoredProc;
    spDeleteHavingweight: TIBStoredProc;
    spAddChild: TIBStoredProc;
    spAddHotel: TIBStoredProc;
    spDeleteHotel: TIBStoredProc;
    spAddLeaving: TIBStoredProc;
    spDeleteLeaving: TIBStoredProc;
    spAddTour: TIBStoredProc;
    spDeleteTour: TIBStoredProc;
    spAddTransport: TIBStoredProc;
    spDeleteTransport: TIBStoredProc;
    spAddWeight: TIBStoredProc;
    spDeleteWeight: TIBStoredProc;
    spAddWeighter: TIBStoredProc;
    spDeleteWeighter: TIBStoredProc;
    spAddClient: TIBStoredProc;
    dspApplication: TDataSetProvider;
    dspChild: TDataSetProvider;
    dspCity: TDataSetProvider;
    dspClient: TDataSetProvider;
    dspCountry: TDataSetProvider;
    dspExcursion: TDataSetProvider;
    dspHavingweight: TDataSetProvider;
    dspHotel: TDataSetProvider;
    dspLeaving: TDataSetProvider;
    dspTour: TDataSetProvider;
    dspTransport: TDataSetProvider;
    dspWeight: TDataSetProvider;
    dspWeighter: TDataSetProvider;
    tTMP: TIBTable;
    dspTMP: TDataSetProvider;
  private
    { Private declarations }
  protected
    class procedure UpdateRegistry(Register: Boolean; const ClassID, ProgID: string); override;
    procedure smAddClient(ID: Integer; const SURNAME, NAME,
      LASTNAME: WideString; ID_CHILD: Integer; const POL,
      PURPOSE: WideString); safecall;
    procedure smAddChild(id: Integer; const NAME, SURNAME,
      LASTNAME: WideString); safecall;
    procedure smAddApplication(ID, ID_CLIENT: Integer; DATE_RG: TDateTime);
      safecall;
    procedure smAddCity(ID: Integer; const NAME: WideString); safecall;
    procedure smAddCountry(ID, ID_CITY: Integer; const NAME: WideString);
      safecall;
    procedure smAddExcurtion(ID: Integer; DATE_EXCRSN: TDateTime;
      const NAME: WideString; LASTING: Integer; const PLACE,
      AGENCY: WideString; RETING_AGENCY, PRICE: Double); safecall;
    procedure smAddHavingWeight(ID_CLIENT, ID_WEIGHT, ID_WEIGHTER,
      ID_TRANSPORT: Integer); safecall;
    procedure smAddHotel(ID: Integer; const NAME: WideString; RECING,
      PRICE: Double); safecall;
    procedure smAddLeaving(ID_CLIENT, ID_HOTEL: Integer; DATE_ARRIVING,
      DATE_LEAVING: TDateTime); safecall;
    procedure smAddTour(ID, ID_TRANSPORT, ID_EXCURTION, ID_COUNTRY, ID_CITY,
      ID_CLIENT: Integer; DATE_ARRIVING, DATE_LEAVING: TDateTime;
      KOL_VO: Integer; PRICE: Double; const VISA: WideString; PRICE_AGENCY,
      PRICE_VISA: Double); safecall;
    procedure smAddTransport(ID: Integer; const NAME, AIRPORT: WideString;
      PRICE: Double; const KIND: WideString; DISPATCHER, KEEPING: Double);
      safecall;
    procedure smAddWeight(ID, ID_CLIENT: Integer; DATE_ARRIVING,
      DATE_LEAVING: TDateTime; const KIND: WideString; PRICE: Double);
      safecall;
    procedure smAddWeighter(ID: Integer; const NAME, SURNAME,
      LASTNAME: WideString); safecall;
    procedure smDeleteApplication(ID: Integer); safecall;
    procedure smDeleteChild(ID: Integer); safecall;
    procedure smDeleteCity(ID: Integer); safecall;
    procedure smDeleteClient(ID: Integer); safecall;
    procedure smDeleteCountry(ID: Integer); safecall;
    procedure smDeleteExcursion(ID: Integer); safecall;
    procedure smDeleteHavingWeight(ID_CLIENT, ID_WEIGHT, ID_WEIGHTER,
      ID_TRANSPORT: Integer); safecall;
    procedure smDeleteHotel(ID: Integer); safecall;
    procedure smDeleteLeaving(ID_CLIENT, ID_HOTEL: Integer); safecall;
    procedure smDeleteTour(ID: Integer); safecall;
    procedure smDeleteTransport(ID: Integer); safecall;
    procedure smDeleteWeight(ID: Integer); safecall;
    procedure smDeleteWeighter(ID: Integer); safecall;
  public
    { Public declarations }
  end;

implementation

{$R *.DFM}

class procedure TMyServer.UpdateRegistry(Register: Boolean; const ClassID, ProgID: string);
begin
  if Register then
  begin
    inherited UpdateRegistry(Register, ClassID, ProgID);
    EnableSocketTransport(ClassID);
    EnableWebTransport(ClassID);
  end else
  begin
    DisableSocketTransport(ClassID);
    DisableWebTransport(ClassID);
    inherited UpdateRegistry(Register, ClassID, ProgID);
  end;
end;

procedure TMyServer.smAddClient(ID: Integer; const SURNAME, NAME,
  LASTNAME: WideString; ID_CHILD: Integer; const POL, PURPOSE: WideString);
begin
  if (spAddClient.Transaction.InTransaction) then
    spAddClient.Transaction.Commit;
    spAddClient.Params[0].Value := ID;
    spAddClient.Params[1].Value := SURNAME;
    spAddClient.Params[2].Value := NAME;
    spAddClient.Params[3].Value := LASTNAME;
    spAddClient.Params[4].Value := ID_CHILD;
    spAddClient.Params[5].Value := POL;
    SpAddClient.Params[6].Value := PURPOSE;
    spAddClient.ExecProc;
    if (spAddClient.Transaction.InTransaction) then
      spAddClient.Transaction.Commit;
end;

procedure TMyServer.smAddChild(id: Integer; const NAME, SURNAME,
  LASTNAME: WideString);
begin
   if (spAddChild.Transaction.InTransaction) then
    spAddChild.Transaction.Commit;
    spAddChild.Params[0].Value := ID;
    spAddChild.Params[1].Value := NAME;
    spAddChild.Params[2].Value := SURNAME;
    spAddChild.Params[3].Value := LASTNAME;
    spAddChild.ExecProc;
    if (spAddChild.Transaction.InTransaction) then
      spAddChild.Transaction.Commit;
end;

procedure TMyServer.smAddApplication(ID, ID_CLIENT: Integer;
  DATE_RG: TDateTime);
begin
    if (spAddApplication.Transaction.InTransaction) then
    spAddApplication.Transaction.Commit;
    spAddApplication.Params[0].Value := ID;
    spAddApplication.Params[1].Value := ID_CLIENT;
    spAddApplication.Params[2].Value := DATE_RG;
    spAddApplication.ExecProc;
    if (spAddApplication.Transaction.InTransaction) then
      spAddApplication.Transaction.Commit;
end;

procedure TMyServer.smAddCity(ID: Integer; const NAME: WideString);
begin
      if (spAddCity.Transaction.InTransaction) then
    spAddCity.Transaction.Commit;
    spAddCity.Params[0].Value := ID;
    spAddCity.Params[1].Value := NAME;
    spAddCity.ExecProc;
    if (spAddCity.Transaction.InTransaction) then
      spAddCity.Transaction.Commit;
end;

procedure TMyServer.smAddCountry(ID, ID_CITY: Integer;
  const NAME: WideString);
begin
      if (spAddCountry.Transaction.InTransaction) then
    spAddCountry.Transaction.Commit;
    spAddCountry.Params[0].Value := ID;
    spAddCountry.Params[1].Value := ID_CITY;
    spAddCountry.Params[2].Value := NAME;
    spAddCountry.ExecProc;
    if (spAddCountry.Transaction.InTransaction) then
      spAddCountry.Transaction.Commit;
end;

procedure TMyServer.smAddExcurtion(ID: Integer; DATE_EXCRSN: TDateTime;
  const NAME: WideString; LASTING: Integer; const PLACE,
  AGENCY: WideString; RETING_AGENCY, PRICE: Double);
begin
      if (spAddExcursion.Transaction.InTransaction) then
    spAddExcursion.Transaction.Commit;
    spAddExcursion.Params[0].Value := ID;
    spAddExcursion.Params[1].Value := DATE_EXCRSN;
    spAddExcursion.Params[2].Value := NAME;
    spAddExcursion.Params[3].Value := LASTING;
    spAddExcursion.Params[4].Value := PLACE;
    spAddExcursion.Params[5].Value := AGENCY;
    spAddExcursion.Params[6].Value := RETING_AGENCY;
    spAddExcursion.Params[7].Value := PRICE;
    spAddExcursion.ExecProc;
    if (spAddExcursion.Transaction.InTransaction) then
      spAddExcursion.Transaction.Commit;
end;

procedure TMyServer.smAddHavingWeight(ID_CLIENT, ID_WEIGHT, ID_WEIGHTER,
  ID_TRANSPORT: Integer);
begin
      if (spAddHavingWeight.Transaction.InTransaction) then
    spAddHavingWeight.Transaction.Commit;
    spAddHavingWeight.Params[0].Value := ID_CLIENT;
    spAddHavingWeight.Params[1].Value := ID_WEIGHT;
    spAddHavingWeight.Params[2].Value := ID_WEIGHTER;
    spAddHavingWeight.Params[3].Value := ID_TRANSPORT;
    spAddHavingWeight.ExecProc;
    if (spAddHavingWeight.Transaction.InTransaction) then
      spAddHavingWeight.Transaction.Commit;
end;

procedure TMyServer.smAddHotel(ID: Integer; const NAME: WideString; RECING,
  PRICE: Double);
begin
      if (spAddHotel.Transaction.InTransaction) then
    spAddHotel.Transaction.Commit;
    spAddHotel.Params[0].Value := ID;
    spAddHotel.Params[1].Value := NAME;
    spAddHotel.Params[2].Value := RECING;
    spAddHotel.Params[3].Value := PRICE;
    spAddHotel.ExecProc;
    if (spAddHotel.Transaction.InTransaction) then
      spAddHotel.Transaction.Commit;
end;

procedure TMyServer.smAddLeaving(ID_CLIENT, ID_HOTEL: Integer;
  DATE_ARRIVING, DATE_LEAVING: TDateTime);
begin
      if (spAddHotel.Transaction.InTransaction) then
    spAddLeaving.Transaction.Commit;
    spAddLeaving.Params[0].Value := ID_CLIENT;
    spAddLeaving.Params[1].Value := ID_HOTEL;
    spAddLeaving.Params[2].Value := DATE_ARRIVING;
    spAddLeaving.Params[3].Value := DATE_LEAVING;
    spAddLeaving.ExecProc;
    if (spAddLeaving.Transaction.InTransaction) then
      spAddLeaving.Transaction.Commit;
end;

procedure TMyServer.smAddTour(ID, ID_TRANSPORT, ID_EXCURTION, ID_COUNTRY,
  ID_CITY, ID_CLIENT: Integer; DATE_ARRIVING, DATE_LEAVING: TDateTime;
  KOL_VO: Integer; PRICE: Double; const VISA: WideString; PRICE_AGENCY,
  PRICE_VISA: Double);
begin
      if (spAddTour.Transaction.InTransaction) then
     spAddTour.Transaction.Commit;
    spAddTour.Params[0].Value := ID;
    spAddTour.Params[1].Value := ID_TRANSPORT;
    spAddTour.Params[2].Value := ID_EXCURTION;
    spAddTour.Params[3].Value := ID_COUNTRY;
    spAddTour.Params[4].Value := ID_CITY;
    spAddTour.Params[5].Value := ID_CLIENT;
    spAddTour.Params[6].Value := DATE_ARRIVING;
    spAddTour.Params[7].Value := DATE_LEAVING;
    spAddTour.Params[8].Value := KOL_VO;
    spAddTour.Params[9].Value := PRICE;
    spAddTour.Params[10].Value := VISA;
    spAddTour.Params[11].Value := PRICE_AGENCY;
    spAddTour.Params[12].Value := PRICE_VISA;
    spAddTour.ExecProc;
    if (spAddTour.Transaction.InTransaction) then
      spAddTour.Transaction.Commit;
end;

procedure TMyServer.smAddTransport(ID: Integer; const NAME,
  AIRPORT: WideString; PRICE: Double; const KIND: WideString; DISPATCHER,
  KEEPING: Double);
begin
         if (spAddTransport.Transaction.InTransaction) then
     spAddTransport.Transaction.Commit;
    spAddTransport.Params[0].Value := ID;
    spAddTransport.Params[1].Value := NAME;
    spAddTransport.Params[2].Value := AIRPORT;
    spAddTransport.Params[3].Value := PRICE;
    spAddTransport.Params[4].Value := KIND;
    spAddTransport.Params[5].Value := DISPATCHER;
    spAddTransport.Params[6].Value := KEEPING;
    spAddTransport.ExecProc;
    if (spAddTransport.Transaction.InTransaction) then
      spAddTransport.Transaction.Commit;
end;

procedure TMyServer.smAddWeight(ID, ID_CLIENT: Integer; DATE_ARRIVING,
  DATE_LEAVING: TDateTime; const KIND: WideString; PRICE: Double);
begin
         if (spAddWeight.Transaction.InTransaction) then
     spAddWeight.Transaction.Commit;
    spAddWeight.Params[0].Value := ID;
    spAddWeight.Params[1].Value := ID_CLIENT;
    spAddWeight.Params[2].Value := DATE_ARRIVING;
    spAddWeight.Params[3].Value := DATE_LEAVING;
    spAddWeight.Params[4].Value := KIND;
    spAddWeight.Params[5].Value := PRICE;
    spAddWeight.ExecProc;
    if (spAddWeight.Transaction.InTransaction) then
      spAddWeight.Transaction.Commit;
end;

procedure TMyServer.smAddWeighter(ID: Integer; const NAME, SURNAME,
  LASTNAME: WideString);
begin
         if (spAddWeighter.Transaction.InTransaction) then
     spAddWeighter.Transaction.Commit;
    spAddWeighter.Params[0].Value := ID;
    spAddWeighter.Params[1].Value := NAME;
    spAddWeighter.Params[2].Value := SURNAME;
    spAddWeighter.Params[3].Value := LASTNAME;
    spAddWeighter.ExecProc;
    if (spAddWeighter.Transaction.InTransaction) then
      spAddWeighter.Transaction.Commit;
end;

procedure TMyServer.smDeleteApplication(ID: Integer);
begin
         if (spDeleteApplication.Transaction.InTransaction) then
    spDeleteApplication.Transaction.Commit;
    spDeleteApplication.Params[0].Value := ID;
    spDeleteApplication.ExecProc;
    if (spDeleteApplication.Transaction.InTransaction) then
      spDeleteApplication.Transaction.Commit;
end;

procedure TMyServer.smDeleteChild(ID: Integer);
begin
         if (spDeleteChild.Transaction.InTransaction) then
    spDeleteChild.Transaction.Commit;
    spDeleteChild.Params[0].Value := ID;
    spDeleteChild.ExecProc;
    if (spDeleteChild.Transaction.InTransaction) then
      spDeleteChild.Transaction.Commit;
end;

procedure TMyServer.smDeleteCity(ID: Integer);
begin
         if (spDeleteCity.Transaction.InTransaction) then
    spDeleteCity.Transaction.Commit;
    spDeleteCity.Params[0].Value := ID;
    spDeleteCity.ExecProc;
    if (spDeleteCity.Transaction.InTransaction) then
      spDeleteCity.Transaction.Commit;
end;

procedure TMyServer.smDeleteClient(ID: Integer);
begin
         if (spDeleteClient.Transaction.InTransaction) then
    spDeleteClient.Transaction.Commit;
    spDeleteClient.Params[0].Value := ID;
    spDeleteClient.ExecProc;
    if (spDeleteClient.Transaction.InTransaction) then
      spDeleteClient.Transaction.Commit;
end;

procedure TMyServer.smDeleteCountry(ID: Integer);
begin
         if (spDeleteCountry.Transaction.InTransaction) then
    spDeleteCountry.Transaction.Commit;
    spDeleteCountry.Params[0].Value := ID;
    spDeleteCountry.ExecProc;
    if (spDeleteCountry.Transaction.InTransaction) then
      spDeleteCountry.Transaction.Commit;
end;

procedure TMyServer.smDeleteExcursion(ID: Integer);
begin
         if (spDeleteExcursion.Transaction.InTransaction) then
    spDeleteExcursion.Transaction.Commit;
    spDeleteExcursion.Params[0].Value := ID;
    spDeleteExcursion.ExecProc;
    if (spDeleteExcursion.Transaction.InTransaction) then
      spDeleteExcursion.Transaction.Commit;
end;

procedure TMyServer.smDeleteHavingWeight(ID_CLIENT, ID_WEIGHT, ID_WEIGHTER,
  ID_TRANSPORT: Integer);
begin
         if (spDeleteHavingWeight.Transaction.InTransaction) then
    spDeleteHavingWeight.Transaction.Commit;
    spDeleteHavingWeight.Params[0].Value := ID_CLIENT;
    spDeleteHavingWeight.Params[1].Value := ID_WEIGHT;
    spDeleteHavingWeight.Params[2].Value := ID_WEIGHTER;
    spDeleteHavingWeight.Params[3].Value := ID_TRANSPORT;
    spDeleteHavingWeight.ExecProc;
    if (spDeleteHavingWeight.Transaction.InTransaction) then
      spDeleteHavingWeight.Transaction.Commit;
end;

procedure TMyServer.smDeleteHotel(ID: Integer);
begin
         if (spDeleteHotel.Transaction.InTransaction) then
    spDeleteHotel.Transaction.Commit;
    spDeleteHotel.Params[0].Value := ID;
    spDeleteHotel.ExecProc;
    if (spDeleteHotel.Transaction.InTransaction) then
      spDeleteHotel.Transaction.Commit;
end;

procedure TMyServer.smDeleteLeaving(ID_CLIENT, ID_HOTEL: Integer);
begin
         if (spDeleteLeaving.Transaction.InTransaction) then
    spDeleteLeaving.Transaction.Commit;
    spDeleteLeaving.Params[0].Value := ID_CLIENT;
    spDeleteLeaving.Params[1].Value := ID_HOTEL;
    spDeleteLeaving.ExecProc;
    if (spDeleteLeaving.Transaction.InTransaction) then
      spDeleteLeaving.Transaction.Commit;
end;

procedure TMyServer.smDeleteTour(ID: Integer);
begin
         if (spDeleteTour.Transaction.InTransaction) then
    spDeleteTour.Transaction.Commit;
    spDeleteTour.Params[0].Value := ID;
    spDeleteTour.ExecProc;
    if (spDeleteTour.Transaction.InTransaction) then
      spDeleteTour.Transaction.Commit;
end;

procedure TMyServer.smDeleteTransport(ID: Integer);
begin
         if (spDeleteTransport.Transaction.InTransaction) then
    spDeleteTransport.Transaction.Commit;
    spDeleteTransport.Params[0].Value := ID;
    spDeleteTransport.ExecProc;
    if (spDeleteTransport.Transaction.InTransaction) then
      spDeleteTransport.Transaction.Commit;
end;

procedure TMyServer.smDeleteWeight(ID: Integer);
begin
         if (spDeleteWeight.Transaction.InTransaction) then
    spDeleteWeight.Transaction.Commit;
    spDeleteWeight.Params[0].Value := ID;
    spDeleteWeight.ExecProc;
    if (spDeleteWeight.Transaction.InTransaction) then
      spDeleteWeight.Transaction.Commit;
end;

procedure TMyServer.smDeleteWeighter(ID: Integer);
begin
         if (spDeleteWeighter.Transaction.InTransaction) then
    spDeleteWeighter.Transaction.Commit;
    spDeleteWeighter.Params[0].Value := ID;
    spDeleteWeighter.ExecProc;
    if (spDeleteWeighter.Transaction.InTransaction) then
      spDeleteWeighter.Transaction.Commit;
end;







initialization
  TComponentFactory.Create(ComServer, TMyServer,
    Class_MyServer, ciMultiInstance, tmApartment);
end.
