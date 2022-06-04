unit Unit8;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons;

type
  TfmNewChild = class(TForm)
    laSurname: TLabel;
    laLastname: TLabel;
    eName: TEdit;
    eSurname: TEdit;
    eLastname: TEdit;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    laName: TLabel;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fmNewChild: TfmNewChild;

implementation

{$R *.dfm}

end.
