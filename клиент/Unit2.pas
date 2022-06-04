unit Unit2;

interface

uses
  SysUtils, Classes, DB, DBClient, MConnect;

type
  Tdm = class(TDataModule)
    DCOMConnection1: TDCOMConnection;
    cdsApplication: TClientDataSet;
    cdsApplicationID: TIntegerField;
    cdsApplicationID_CLIENT: TIntegerField;
    cdsApplicationDATE_RG: TDateField;
    cdsChild: TClientDataSet;
    cdsCity: TClientDataSet;
    cdsClient: TClientDataSet;
    cdsCountry: TClientDataSet;
    cdsExcursion: TClientDataSet;
    cdsHavingweight: TClientDataSet;
    cdsHotel: TClientDataSet;
    cdsLeaving: TClientDataSet;
    cdsTour: TClientDataSet;
    cdsTransport: TClientDataSet;
    cdsWeight: TClientDataSet;
    cdsChildID: TIntegerField;
    cdsChildNAME: TStringField;
    cdsChildSURNAME: TStringField;
    cdsChildLASTNAME: TStringField;
    cdsCityID: TIntegerField;
    cdsCityNAME: TStringField;
    cdsCountryID: TIntegerField;
    cdsCountryID_CITY: TIntegerField;
    cdsCountryNAME: TStringField;
    cdsClientID: TIntegerField;
    cdsClientNAME: TStringField;
    cdsClientSURNAME: TStringField;
    cdsClientLASTNAME: TStringField;
    cdsClientID_CHILD: TIntegerField;
    cdsClientPOL: TStringField;
    cdsClientPURPOSE: TStringField;
    cdsExcursionID: TIntegerField;
    cdsExcursionDATE_EXCRSN: TDateField;
    cdsExcursionNAME: TStringField;
    cdsExcursionLASTING: TIntegerField;
    cdsExcursionPLACE: TStringField;
    cdsExcursionAGENCY: TStringField;
    cdsExcursionRETING_AGENCY: TFloatField;
    cdsExcursionPRICE: TFloatField;
    cdsHavingweightID_CLIENT: TIntegerField;
    cdsHavingweightID_WEIGHT: TIntegerField;
    cdsHavingweightID_WEIGHTER: TIntegerField;
    cdsHavingweightID_TRANSPORT: TIntegerField;
    cdsHotelID: TIntegerField;
    cdsHotelNAME: TStringField;
    cdsHotelRECING: TFloatField;
    cdsHotelPRICE: TFloatField;
    cdsLeavingID_CLIENT: TIntegerField;
    cdsLeavingID_HOTEL: TIntegerField;
    cdsLeavingDATE_ARRIVING: TDateField;
    cdsLeavingDATE_LEAVING: TDateField;
    cdsTransportID: TIntegerField;
    cdsTransportNAME: TStringField;
    cdsTransportAIRPORT: TStringField;
    cdsTransportPRICE: TFloatField;
    cdsTransportKIND: TStringField;
    cdsTransportDISPATCHER: TFloatField;
    cdsTransportKEEPING: TFloatField;
    cdsWeightID: TIntegerField;
    cdsWeightID_CLIENT: TIntegerField;
    cdsWeightDATE_ARRIVING: TDateField;
    cdsWeightDATE_LEAVING: TDateField;
    cdsWeightKIND: TStringField;
    cdsWeightPRICE: TFloatField;
    cdsWeighter: TClientDataSet;
    cdsWeighterID: TIntegerField;
    cdsWeighterNAME: TStringField;
    cdsWeighterSURNAME: TStringField;
    cdsWeighterLASTNAME: TStringField;
    cdsClientCHILD_NAME: TStringField;
    cdsCountryCITY_NAME: TStringField;
    cdsWeightCLIENT_NAME: TStringField;
    cdsHavingweightCLIENT_NAME: TStringField;
    cdsHavingweightWEIGHT_NAME: TStringField;
    cdsHavingweightWEIGHTER_NAME: TStringField;
    cdsHavingweightTRANSPORT_NAME: TStringField;
    cdsLeavingCLIENT_NAME: TStringField;
    cdsLeavingHOTEL_NAME: TStringField;
    cdsApplicationCLIENT_NAME: TStringField;
    cdsTMP: TClientDataSet;
    cdsTMPID: TIntegerField;
    cdsTMPNAME: TStringField;
    cdsTMPSUMM: TBCDField;
    cdsTMP1: TClientDataSet;
    cdsTMP1ID: TIntegerField;
    cdsTMP1NAME: TStringField;
    cdsTMP1SURNAME: TStringField;
    cdsTMP1LASTNAME: TStringField;
    cdsLeavingROOM: TIntegerField;
    cdsTMP1SUMM: TIntegerField;
    cdsInexcursion: TClientDataSet;
    cdsInexcursionID_CLIENT: TIntegerField;
    cdsInexcursionID_EXCURSION: TIntegerField;
    cdsInexcursionDATE_EXC: TDateField;
    cdsInexcursionCLIENT_NAME: TStringField;
    cdsInexcursionEXCURSION_NAME: TStringField;
    cdsTourID: TIntegerField;
    cdsTourID_TRANSPORT: TIntegerField;
    cdsTourID_COUNTRY: TIntegerField;
    cdsTourID_APPLICATION: TIntegerField;
    cdsTourDATE_ARRIVING: TDateField;
    cdsTourDATE_LEAVING: TDateField;
    cdsTourPURPOSE: TStringField;
    cdsTourTRANSPORT_NAME: TStringField;
    cdsTourCOUNTRY_NAME: TStringField;
    cdsTourCLIENT_NAME: TStringField;
    procedure DataModuleCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  dm: Tdm;

implementation

{$R *.dfm}

procedure Tdm.DataModuleCreate(Sender: TObject);
begin
   cdsApplication.Open;
   cdsChild.Open;
   cdsCity.Open;
   cdsClient.Open;
   cdsCountry.Open;
   cdsExcursion.Open;
   cdsHavingweight.Open;
   cdsHotel.Open;
   cdsLeaving.Open;
   cdsTour.Open;
   cdsTransport.Open;
   cdsWeight.Open;
   cdsWeighter.Open;
   cdsInexcursion.Open;
   cdsTMP.Open;
   cdsTMP1.Open;
end;



end.
