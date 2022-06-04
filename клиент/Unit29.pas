unit Unit29;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs,  StdCtrls, Buttons, Unit1, DateUtils;

type
  TfmTest = class(TForm)
    BitBtn1: TBitBtn;
    procedure BitBtn1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fmTest: TfmTest;

implementation

uses Unit2;

{$R *.dfm}

procedure TfmTest.BitBtn1Click(Sender: TObject);
var i:integer; s:string;
     Start, Stop : TDateTime;
begin
  Start:= Now;
  for i := 1 to 10 do
    dm.DCOMConnection1.AppServer.smAddWeighter(0, 'тест', 0, 1);
     Stop:= Now;
     MillisecondsBetween(Start, Stop) ;
     s :=s + ' 10 ' + IntToStr(MilliSecondsBetween(Start, Stop));

    Start:= Now;
  for i := 1 to 50 do
    dm.DCOMConnection1.AppServer.smAddWeighter(0, 'тест', 0, 1);
   Stop:= Now;
   MillisecondsBetween(Start, Stop) ;
   s :=s + ' 50 ' + IntToStr(MilliSecondsBetween(Start, Stop));

  Start:= Now;
  for i := 1 to 100 do
    dm.DCOMConnection1.AppServer.smAddWeighter(0, 'тест', 0, 1);
  Stop:= Now;
  MillisecondsBetween(Start, Stop);
  s :=s + ' 100 ' + IntToStr(MilliSecondsBetween(Start, Stop));

  Start:= Now;
  for i := 1 to 500 do
    dm.DCOMConnection1.AppServer.smAddWeighter(0, 'тест', 0, 1);
  Stop:= Now;
  MillisecondsBetween(Start, Stop);
  s :=s + ' 500 ' + IntToStr(MilliSecondsBetween(Start, Stop));

 Start:= Now;
  for i := 1 to 1000 do
    dm.DCOMConnection1.AppServer.smAddWeighter(0, 'тест', 0, 1);
 Stop:= Now;
 MillisecondsBetween(Start, Stop);
 s :=s + ' 1000 ' + IntToStr(MilliSecondsBetween(Start, Stop));
  ShowMessage(s);


end;

end.
