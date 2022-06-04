program Project1;

uses
  Forms,
  Unit1 in 'Unit1.pas' {Form1},
  Unit2 in 'Unit2.pas' {dm: TDataModule},
  Unit3 in 'Unit3.pas' {fmClient},
  Unit4 in 'Unit4.pas' {fmNewClient},
  Unit5 in 'Unit5.pas' {fmCity},
  uNewCity in 'uNewCity.pas' {fmNewCity},
  uChild in 'uChild.pas' {fmChild},
  Unit8 in 'Unit8.pas' {fmNewChild},
  uCountry in 'uCountry.pas' {fmCountry},
  uNewCountry in 'uNewCountry.pas' {fmNewCountry},
  uWeighter in 'uWeighter.pas' {fmWeighter},
  uHotel in 'uHotel.pas' {fmHotel},
  uNewHotel in 'uNewHotel.pas' {fmNewHotel},
  uNewWeighter in 'uNewWeighter.pas' {fmNewWeighter},
  uExcursion in 'uExcursion.pas' {fmExcursion},
  uNewExcursion in 'uNewExcursion.pas' {fmNewExcursion},
  uTransport in 'uTransport.pas' {fmTransport},
  uNewTransport in 'uNewTransport.pas' {fmNewTransport},
  Unit6 in 'Unit6.pas' {fmHavingWeight},
  Unit7 in 'Unit7.pas' {fmNewHavingWeight},
  Unit9 in 'Unit9.pas' {fmNewWeight},
  Unit10 in 'Unit10.pas' {fmWeight},
  Unit11 in 'Unit11.pas' {fmLeaving},
  Unit12 in 'Unit12.pas' {fmNewLeaving},
  Unit13 in 'Unit13.pas' {fmTour},
  Unit14 in 'Unit14.pas' {fmNewTour},
  Unit15 in 'Unit15.pas' {fmApplication},
  Unit16 in 'Unit16.pas' {fmNewApplication},
  Unit17 in 'Unit17.pas' {Form17},
  Unit18 in 'Unit18.pas' {fmMSG},
  Unit19 in 'Unit19.pas' {fmMSG2},
  Unit20 in 'Unit20.pas' {fmMSG1},
  Unit22 in 'Unit22.pas' {fmNewInexcursion},
  Unit21 in 'Unit21.pas' {fmInexcursion},
  Unit23 in 'Unit23.pas' {fmMSG4},
  Unit24 in 'Unit24.pas' {fmMSG5},
  Unit25 in 'Unit25.pas' {fmMSG55},
  Unit26 in 'Unit26.pas' {Frame26: TFrame},
  Unit27 in 'Unit27.pas' {fmMSG6},
  Unit28 in 'Unit28.pas' {fmMSG7},
  Unit29 in 'Unit29.pas' {fmTest};

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TForm1, Form1);
  Application.CreateForm(Tdm, dm);
  Application.CreateForm(TfmClient, fmClient);
  Application.CreateForm(TfmNewClient, fmNewClient);
  Application.CreateForm(TfmCity, fmCity);
  Application.CreateForm(TfmNewCity, fmNewCity);
  Application.CreateForm(TfmChild, fmChild);
  Application.CreateForm(TfmNewChild, fmNewChild);
  Application.CreateForm(TfmCountry, fmCountry);
  Application.CreateForm(TfmNewCountry, fmNewCountry);
  Application.CreateForm(TfmWeighter, fmWeighter);
  Application.CreateForm(TfmHotel, fmHotel);
  Application.CreateForm(TfmNewHotel, fmNewHotel);
  Application.CreateForm(TfmNewWeighter, fmNewWeighter);
  Application.CreateForm(TfmExcursion, fmExcursion);
  Application.CreateForm(TfmNewExcursion, fmNewExcursion);
  Application.CreateForm(TfmTransport, fmTransport);
  Application.CreateForm(TfmNewTransport, fmNewTransport);
  Application.CreateForm(TfmHavingWeight, fmHavingWeight);
  Application.CreateForm(TfmNewHavingWeight, fmNewHavingWeight);
  Application.CreateForm(TfmNewWeight, fmNewWeight);
  Application.CreateForm(TfmWeight, fmWeight);
  Application.CreateForm(TfmLeaving, fmLeaving);
  Application.CreateForm(TfmNewLeaving, fmNewLeaving);
  Application.CreateForm(TfmTour, fmTour);
  Application.CreateForm(TfmNewTour, fmNewTour);
  Application.CreateForm(TfmApplication, fmApplication);
  Application.CreateForm(TfmNewApplication, fmNewApplication);
  Application.CreateForm(TForm17, Form17);
  Application.CreateForm(TfmMSG, fmMSG);
  Application.CreateForm(TfmMSG2, fmMSG2);
  Application.CreateForm(TfmMSG1, fmMSG1);
  Application.CreateForm(TfmNewInexcursion, fmNewInexcursion);
  Application.CreateForm(TfmInexcursion, fmInexcursion);
  Application.CreateForm(TfmMSG4, fmMSG4);
  Application.CreateForm(TfmMSG5, fmMSG5);
  Application.CreateForm(TfmMSG55, fmMSG55);
  Application.CreateForm(TfmMSG6, fmMSG6);
  Application.CreateForm(TfmMSG7, fmMSG7);
  Application.CreateForm(TfmTest, fmTest);
  Application.Run;
end.
