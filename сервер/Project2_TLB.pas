unit Project2_TLB;

// ************************************************************************ //
// WARNING                                                                    
// -------                                                                    
// The types declared in this file were generated from data read from a       
// Type Library. If this type library is explicitly or indirectly (via        
// another type library referring to this type library) re-imported, or the   
// 'Refresh' command of the Type Library Editor activated while editing the   
// Type Library, the contents of this file will be regenerated and all        
// manual modifications will be lost.                                         
// ************************************************************************ //

// PASTLWTR : 1.2
// File generated on 01.06.2020 14:27:17 from Type Library described below.

// ************************************************************************  //
// Type Lib: C:\Users\448\Downloads\Project\Project\сервер\Project2.tlb (1)
// LIBID: {5C19FB2A-5F2C-451A-AF5E-7C0554071D99}
// LCID: 0
// Helpfile: 
// HelpString: Project2 Library
// DepndLst: 
//   (1) v1.0 Midas, (C:\Program Files (x86)\Embarcadero\Studio\20.0\bin64\midas.dll)
//   (2) v2.0 stdole, (C:\Windows\SysWOW64\stdole2.tlb)
// ************************************************************************ //
{$TYPEDADDRESS OFF} // Unit must be compiled without type-checked pointers. 
{$WARN SYMBOL_PLATFORM OFF}
{$WRITEABLECONST ON}
{$VARPROPSETTER ON}
interface

uses Windows, ActiveX, Classes, Graphics, Midas, StdVCL, Variants;
  

// *********************************************************************//
// GUIDS declared in the TypeLibrary. Following prefixes are used:        
//   Type Libraries     : LIBID_xxxx                                      
//   CoClasses          : CLASS_xxxx                                      
//   DISPInterfaces     : DIID_xxxx                                       
//   Non-DISP interfaces: IID_xxxx                                        
// *********************************************************************//
const
  // TypeLibrary Major and minor versions
  Project2MajorVersion = 1;
  Project2MinorVersion = 0;

  LIBID_Project2: TGUID = '{5C19FB2A-5F2C-451A-AF5E-7C0554071D99}';

  IID_IMyServer: TGUID = '{B9E6069A-3435-4BB4-855A-906296A93D15}';
  CLASS_MyServer: TGUID = '{65F470B2-7A2D-4111-A4C7-894CAB170A02}';
type

// *********************************************************************//
// Forward declaration of types defined in TypeLibrary                    
// *********************************************************************//
  IMyServer = interface;
  IMyServerDisp = dispinterface;

// *********************************************************************//
// Declaration of CoClasses defined in Type Library                       
// (NOTE: Here we map each CoClass to its Default Interface)              
// *********************************************************************//
  MyServer = IMyServer;


// *********************************************************************//
// Interface: IMyServer
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {B9E6069A-3435-4BB4-855A-906296A93D15}
// *********************************************************************//
  IMyServer = interface(IAppServer)
    ['{B9E6069A-3435-4BB4-855A-906296A93D15}']
    procedure smAddClient(ID: Integer; const NAME: WideString; const SURNAME: WideString; 
                          const LASTNAME: WideString; ID_CHILD: Integer; const POL: WideString; 
                          const PURPOSE: WideString); safecall;
    procedure smAddChild(ID: Integer; const NAME: WideString; const SURNAME: WideString; 
                         const LASTNAME: WideString); safecall;
    procedure smAddApplication(ID: Integer; ID_CLIENT: Integer; DATE_RG: TDateTime); safecall;
    procedure smAddCity(ID: Integer; const NAME: WideString); safecall;
    procedure smAddCountry(ID: Integer; ID_CITY: Integer; const NAME: WideString); safecall;
    procedure smAddExcurtion(ID: Integer; DATE_EXCRSN: TDateTime; const NAME: WideString; 
                             LASTING: Integer; const PLACE: WideString; const AGENCY: WideString; 
                             RETING_AGENCY: Double; PRICE: Double); safecall;
    procedure smAddHavingWeight(ID_CLIENT: Integer; ID_WEIGHT: Integer; ID_WEIGHTER: Integer; 
                                ID_TRANSPORT: Integer); safecall;
    procedure smAddHotel(ID: Integer; const NAME: WideString; RECING: Double; PRICE: Double); safecall;
    procedure smAddLeaving(ID_CLIENT: Integer; ID_HOTEL: Integer; DATE_ARRIVING: TDateTime; 
                           DATE_LEAVING: TDateTime); safecall;
    procedure smAddTour(ID: Integer; ID_TRANSPORT: Integer; ID_EXCURTION: Integer; 
                        ID_COUNTRY: Integer; ID_CITY: Integer; ID_CLIENT: Integer; 
                        DATE_ARRIVING: TDateTime; DATE_LEAVING: TDateTime; KOL_VO: Integer; 
                        PRICE: Double; const VISA: WideString; PRICE_AGENCY: Double; 
                        PRICE_VISA: Double); safecall;
    procedure smAddTransport(ID: Integer; const NAME: WideString; const AIRPORT: WideString; 
                             PRICE: Double; const KIND: WideString; DISPATCHER: Double; 
                             KEEPING: Double); safecall;
    procedure smAddWeight(ID: Integer; ID_CLIENT: Integer; DATE_ARRIVING: TDateTime; 
                          DATE_LEAVING: TDateTime; const KIND: WideString; PRICE: Double); safecall;
    procedure smAddWeighter(ID: Integer; const NAME: WideString; const SURNAME: WideString; 
                            const LASTNAME: WideString); safecall;
    procedure smDeleteChild(ID: Integer); safecall;
    procedure smDeleteApplication(ID: Integer); safecall;
    procedure smDeleteCity(ID: Integer); safecall;
    procedure smDeleteCountry(ID: Integer); safecall;
    procedure smDeleteExcursion(ID: Integer); safecall;
    procedure smDeleteHavingWeight(ID_CLIENT: Integer; ID_WEIGHT: Integer; ID_WEIGHTER: Integer; 
                                   ID_TRANSPORT: Integer); safecall;
    procedure smDeleteClient(ID: Integer); safecall;
    procedure smDeleteHotel(ID: Integer); safecall;
    procedure smDeleteLeaving(ID_CLIENT: Integer; ID_HOTEL: Integer); safecall;
    procedure smDeleteTour(ID: Integer); safecall;
    procedure smDeleteTransport(ID: Integer); safecall;
    procedure smDeleteWeight(ID: Integer); safecall;
    procedure smDeleteWeighter(ID: Integer); safecall;
  end;

// *********************************************************************//
// DispIntf:  IMyServerDisp
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {B9E6069A-3435-4BB4-855A-906296A93D15}
// *********************************************************************//
  IMyServerDisp = dispinterface
    ['{B9E6069A-3435-4BB4-855A-906296A93D15}']
    procedure smAddClient(ID: Integer; const NAME: WideString; const SURNAME: WideString; 
                          const LASTNAME: WideString; ID_CHILD: Integer; const POL: WideString; 
                          const PURPOSE: WideString); dispid 301;
    procedure smAddChild(ID: Integer; const NAME: WideString; const SURNAME: WideString; 
                         const LASTNAME: WideString); dispid 302;
    procedure smAddApplication(ID: Integer; ID_CLIENT: Integer; DATE_RG: TDateTime); dispid 303;
    procedure smAddCity(ID: Integer; const NAME: WideString); dispid 304;
    procedure smAddCountry(ID: Integer; ID_CITY: Integer; const NAME: WideString); dispid 305;
    procedure smAddExcurtion(ID: Integer; DATE_EXCRSN: TDateTime; const NAME: WideString; 
                             LASTING: Integer; const PLACE: WideString; const AGENCY: WideString; 
                             RETING_AGENCY: Double; PRICE: Double); dispid 306;
    procedure smAddHavingWeight(ID_CLIENT: Integer; ID_WEIGHT: Integer; ID_WEIGHTER: Integer; 
                                ID_TRANSPORT: Integer); dispid 307;
    procedure smAddHotel(ID: Integer; const NAME: WideString; RECING: Double; PRICE: Double); dispid 308;
    procedure smAddLeaving(ID_CLIENT: Integer; ID_HOTEL: Integer; DATE_ARRIVING: TDateTime; 
                           DATE_LEAVING: TDateTime); dispid 309;
    procedure smAddTour(ID: Integer; ID_TRANSPORT: Integer; ID_EXCURTION: Integer; 
                        ID_COUNTRY: Integer; ID_CITY: Integer; ID_CLIENT: Integer; 
                        DATE_ARRIVING: TDateTime; DATE_LEAVING: TDateTime; KOL_VO: Integer; 
                        PRICE: Double; const VISA: WideString; PRICE_AGENCY: Double; 
                        PRICE_VISA: Double); dispid 310;
    procedure smAddTransport(ID: Integer; const NAME: WideString; const AIRPORT: WideString; 
                             PRICE: Double; const KIND: WideString; DISPATCHER: Double; 
                             KEEPING: Double); dispid 311;
    procedure smAddWeight(ID: Integer; ID_CLIENT: Integer; DATE_ARRIVING: TDateTime; 
                          DATE_LEAVING: TDateTime; const KIND: WideString; PRICE: Double); dispid 312;
    procedure smAddWeighter(ID: Integer; const NAME: WideString; const SURNAME: WideString; 
                            const LASTNAME: WideString); dispid 313;
    procedure smDeleteChild(ID: Integer); dispid 314;
    procedure smDeleteApplication(ID: Integer); dispid 315;
    procedure smDeleteCity(ID: Integer); dispid 316;
    procedure smDeleteCountry(ID: Integer); dispid 317;
    procedure smDeleteExcursion(ID: Integer); dispid 318;
    procedure smDeleteHavingWeight(ID_CLIENT: Integer; ID_WEIGHT: Integer; ID_WEIGHTER: Integer; 
                                   ID_TRANSPORT: Integer); dispid 319;
    procedure smDeleteClient(ID: Integer); dispid 320;
    procedure smDeleteHotel(ID: Integer); dispid 321;
    procedure smDeleteLeaving(ID_CLIENT: Integer; ID_HOTEL: Integer); dispid 322;
    procedure smDeleteTour(ID: Integer); dispid 323;
    procedure smDeleteTransport(ID: Integer); dispid 324;
    procedure smDeleteWeight(ID: Integer); dispid 325;
    procedure smDeleteWeighter(ID: Integer); dispid 326;
    function AS_ApplyUpdates(const ProviderName: WideString; Delta: OleVariant; MaxErrors: SYSINT; 
                             out ErrorCount: SYSINT; var OwnerData: OleVariant): OleVariant; dispid 20000000;
    function AS_GetRecords(const ProviderName: WideString; Count: SYSINT; out RecsOut: SYSINT; 
                           Options: SYSINT; const CommandText: WideString; var Params: OleVariant; 
                           var OwnerData: OleVariant): OleVariant; dispid 20000001;
    function AS_DataRequest(const ProviderName: WideString; Data: OleVariant): OleVariant; dispid 20000002;
    function AS_GetProviderNames: OleVariant; dispid 20000003;
    function AS_GetParams(const ProviderName: WideString; var OwnerData: OleVariant): OleVariant; dispid 20000004;
    function AS_RowRequest(const ProviderName: WideString; Row: OleVariant; RequestType: SYSINT; 
                           var OwnerData: OleVariant): OleVariant; dispid 20000005;
    procedure AS_Execute(const ProviderName: WideString; const CommandText: WideString; 
                         var Params: OleVariant; var OwnerData: OleVariant); dispid 20000006;
  end;

// *********************************************************************//
// The Class CoMyServer provides a Create and CreateRemote method to          
// create instances of the default interface IMyServer exposed by              
// the CoClass MyServer. The functions are intended to be used by             
// clients wishing to automate the CoClass objects exposed by the         
// server of this typelibrary.                                            
// *********************************************************************//
  CoMyServer = class
    class function Create: IMyServer;
    class function CreateRemote(const MachineName: string): IMyServer;
  end;

implementation

uses ComObj;

class function CoMyServer.Create: IMyServer;
begin
  Result := CreateComObject(CLASS_MyServer) as IMyServer;
end;

class function CoMyServer.CreateRemote(const MachineName: string): IMyServer;
begin
  Result := CreateRemoteComObject(MachineName, CLASS_MyServer) as IMyServer;
end;

end.
