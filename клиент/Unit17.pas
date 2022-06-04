unit Unit17;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, Grids, DBGrids, DB;

type
  TForm17 = class(TForm)
    DataSource1: TDataSource;
    DBGrid1: TDBGrid;
    BitBtn5: TBitBtn;
    BitBtn6: TBitBtn;
    BitBtn7: TBitBtn;
    BitBtn8: TBitBtn;
    Label6: TLabel;
    BitBtn10: TBitBtn;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    procedure BitBtn1Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure BitBtn3Click(Sender: TObject);
    procedure BitBtn4Click(Sender: TObject);
    procedure BitBtn5Click(Sender: TObject);
    procedure BitBtn6Click(Sender: TObject);
    procedure BitBtn7Click(Sender: TObject);
    procedure BitBtn8Click(Sender: TObject);
    procedure BitBtn9Click(Sender: TObject);
    procedure BitBtn10Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form17: TForm17;

implementation

uses Unit2, Unit18, Unit19, Unit20, Unit23, Unit24, Unit25, Unit27, Unit28;

{$R *.dfm}

procedure TForm17.BitBtn1Click(Sender: TObject);
var
 id,k:integer;
begin
   fmMSG6.ShowModal;
   if dm.cdsTMP1.Active then
    begin
     dm.cdsTMP1.CancelUpdates;
     dm.cdsTMP1.Close;
   end;
   dm.cdsTMP1.Open;
   dm.cdsTMP1.AddIndex('indexID', 'ID',[],'','');
   dm.cdsTMP1.IndexFieldNames:='ID';
   dm.cdsTour.First;
   while not dm.cdsTour.Eof do
   begin
     if (dm.cdsTourCOUNTRY_NAME.Value <> '') then
     begin
       if (fmMSG6.ComboBox1.Text = 'Все') and   (fmMSG6.ComboBox2.Text = '') then
    begin
     id:= dm.cdsTourID_COUNTRY.Value;
     if dm.cdsTMP1.FindKey([id]) then
     dm.cdsTMP1.Edit
     else
     begin
      k:=k+1;
      dm.cdsTMP1.Append;
      dm.cdsTMP1.FieldByName('ID').Value:=id;
      dm.cdsTMP1.FieldByName('NAME').Value:=dm.cdsTourCOUNTRY_NAME.Value;
      dm.cdsTMP1.FieldByName('SURNAME').Value:=dm.cdsTourCLIENT_NAME.Value;
      //dm.cdsTMP1.FieldByName('LASTNAME').Value:=dm.cdsClientLASTNAME.Value;
     // dm.cdsTMP.FieldByName('SUMM').Value :=0;
    end;
      //dm.cdsTMP.fieldByName('SUMM').Value:=dm.cdsTMP.FieldByName('SUMM').Value+dm.cdsExcursionRETING_AGENCY.Value;
      dm.cdsTMP1.Post;
    end
    else if (dm.cdsTourCOUNTRY_NAME.Value = fmMSG6.ComboBox1.Text) and   (fmMSG6.ComboBox2.Text = '') then
       begin
     id:= dm.cdsTourID_COUNTRY.Value;
     if dm.cdsTMP1.FindKey([id]) then
     dm.cdsTMP1.Edit;
     begin
      k:=k+1;
      dm.cdsTMP1.Append;
      dm.cdsTMP1.FieldByName('ID').Value:=id;
      dm.cdsTMP1.FieldByName('NAME').Value:=dm.cdsTourCOUNTRY_NAME.Value;
      dm.cdsTMP1.FieldByName('SURNAME').Value:=dm.cdsTourCLIENT_NAME.Value;
      //dm.cdsTMP1.FieldByName('LASTNAME').Value:=dm.cdsClientLASTNAME.Value;
     // dm.cdsTMP.FieldByName('SUMM').Value :=0;
    end;
      //dm.cdsTMP.fieldByName('SUMM').Value:=dm.cdsTMP.FieldByName('SUMM').Value+dm.cdsExcursionRETING_AGENCY.Value;
      dm.cdsTMP1.Post;
    end
    else if (fmMSG6.ComboBox1.Text = 'Все') and   (fmMSG6.ComboBox2.Text = dm.cdsTourPURPOSE.Value)  then
       begin
     id:= dm.cdsTourID_COUNTRY.Value;
     if dm.cdsTMP1.FindKey([id]) then
     dm.cdsTMP1.Edit;
     begin
      k:=k+1;
      dm.cdsTMP1.Append;
      dm.cdsTMP1.FieldByName('ID').Value:=id;
      dm.cdsTMP1.FieldByName('NAME').Value:=dm.cdsTourCOUNTRY_NAME.Value;
      dm.cdsTMP1.FieldByName('SURNAME').Value:=dm.cdsTourCLIENT_NAME.Value;
      //dm.cdsTMP1.FieldByName('LASTNAME').Value:=dm.cdsClientLASTNAME.Value;
     // dm.cdsTMP.FieldByName('SUMM').Value :=0;
    end;
      //dm.cdsTMP.fieldByName('SUMM').Value:=dm.cdsTMP.FieldByName('SUMM').Value+dm.cdsExcursionRETING_AGENCY.Value;
      dm.cdsTMP1.Post;
    end
    else if (dm.cdsTourCOUNTRY_NAME.Value = fmMSG6.ComboBox1.Text) and     (fmMSG6.ComboBox2.Text = dm.cdsTourPURPOSE.Value)  then
       begin
     id:= dm.cdsTourID_COUNTRY.Value;
     if dm.cdsTMP1.FindKey([id]) then
     dm.cdsTMP1.Edit;
     begin
      k:=k+1;
      dm.cdsTMP1.Append;
      dm.cdsTMP1.FieldByName('ID').Value:=id;
      dm.cdsTMP1.FieldByName('NAME').Value:=dm.cdsTourCOUNTRY_NAME.Value;
      dm.cdsTMP1.FieldByName('SURNAME').Value:=dm.cdsTourCLIENT_NAME.Value;
      //dm.cdsTMP1.FieldByName('LASTNAME').Value:=dm.cdsClientLASTNAME.Value;
     // dm.cdsTMP.FieldByName('SUMM').Value :=0;
    end;
      //dm.cdsTMP.fieldByName('SUMM').Value:=dm.cdsTMP.FieldByName('SUMM').Value+dm.cdsExcursionRETING_AGENCY.Value;
      dm.cdsTMP1.Post;
    end
    end;
      dm.cdsTour.Next;
    end;
    dm.cdsTMP1.Append;
    dm.cdsTMP1.FieldByName('NAME').Value:='Всего туристов: '+ IntToStr(k);
    dm.cdsTMP1.FieldByName('ID').Visible:=False;
    dm.cdsTMP1.FieldByName('NAME').DisplayLabel:='Страна';
    dm.cdsTMP1.FieldByName('NAME').DisplayWidth:=15;
    dm.cdsTMP1.FieldByName('SURNAME').DisplayLabel:='Клиент';
    dm.cdsTMP1.FieldByName('SURNAME').DisplayWidth:=15;
    dm.cdsTMP1.FieldByName('SUMM').Visible:= False;
    dm.cdsTMP1.FieldByName('LASTNAME').Visible:= False;
    //dm.cdsTMP1.FieldByName('LASTNAME').DisplayLabel:='Отчество';
    //dm.cdsTMP.FieldByName('SUMM').DisplayLabel:='Рейтинг';
    //dm.cdsTMP.FieldByName('SUMM').DisplayWidth:=10;
    DataSource1.DataSet:=dm.cdsTMP1;

end;

procedure TForm17.BitBtn2Click(Sender: TObject);
var
 id,g,m,n: real;
begin
   g:=0;
   m:=0;
   n:=0;
   fmMSG7.ShowModal;
   if dm.cdsTMP1.Active then
    begin
     dm.cdsTMP1.CancelUpdates;
     dm.cdsTMP1.Close;
   end;
   dm.cdsTMP1.Open;
   dm.cdsTMP1.AddIndex('indexID', 'ID',[],'','');
   dm.cdsTMP1.IndexFieldNames:='ID';
   dm.cdsTour.First;
   while not dm.cdsTour.Eof do
   begin
     if (dm.cdsTourPURPOSE.Value <> '') then
     begin
       if (fmMSG7.CheckBox1.Checked = True)  then
    begin
    if dm.cdsTourPURPOSE.Value = ' Travel tour' then   g:=g+1;
    begin
     id:= dm.cdsTourID_APPLICATION.Value;
     if dm.cdsTMP1.FindKey([id]) then
     dm.cdsTMP1.Edit
     else
     begin
      dm.cdsTMP1.Append;
      dm.cdsTMP1.FieldByName('ID').Value:=id;
      //dm.cdsTMP1.FieldByName('NAME').Value:=dm.cdsTourCOUNTRY_NAME.Value;
      //dm.cdsTMP1.FieldByName('SURNAME').Value:=dm.cdsTourCLIENT_NAME.Value;
      //dm.cdsTMP1.FieldByName('LASTNAME').Value:=dm.cdsClientLASTNAME.Value;
     // dm.cdsTMP.FieldByName('SUMM').Value :=0;
    end;
      //dm.cdsTMP.fieldByName('SUMM').Value:=dm.cdsTMP.FieldByName('SUMM').Value+dm.cdsExcursionRETING_AGENCY.Value;
      dm.cdsTMP1.Post;
    end ;
      g:=g+1;
    dm.cdsTour.Next;
    if dm.cdsTourPURPOSE.Value = ' Shop tour' then   m:=m+1;
    begin
     id:= dm.cdsTourID_APPLICATION.Value;
     if dm.cdsTMP1.FindKey([id]) then
     dm.cdsTMP1.Edit
     else
     begin
      dm.cdsTMP1.Append;
      dm.cdsTMP1.FieldByName('ID').Value:=id;
      //dm.cdsTMP1.FieldByName('NAME').Value:=dm.cdsTourCOUNTRY_NAME.Value;
      //dm.cdsTMP1.FieldByName('SURNAME').Value:=dm.cdsTourCLIENT_NAME.Value;
      //dm.cdsTMP1.FieldByName('LASTNAME').Value:=dm.cdsClientLASTNAME.Value;
     // dm.cdsTMP.FieldByName('SUMM').Value :=0;
    end;
      //dm.cdsTMP.fieldByName('SUMM').Value:=dm.cdsTMP.FieldByName('SUMM').Value+dm.cdsExcursionRETING_AGENCY.Value;
      dm.cdsTMP1.Post;
    end ;
      m:=m+1;
    dm.cdsTour.Next;
    end;      end
    else if (fmMSG7.CheckBox1.Checked = False) and ((fmMSG7.DateTimePicker1.Date <= (dm.cdsTourDATE_ARRIVING.Value)) and (fmMSG7.DateTimePicker2.Date>=dm.cdsTourDATE_LEAVING.Value))   then
    begin
    if dm.cdsTourPURPOSE.Value = ' Travel tour' then   g:=g+1;
    begin
     id:= dm.cdsTourID_APPLICATION.Value;
     if dm.cdsTMP1.FindKey([id]) then
     dm.cdsTMP1.Edit
     else
     begin
      dm.cdsTMP1.Append;
      dm.cdsTMP1.FieldByName('ID').Value:=id;
      //dm.cdsTMP1.FieldByName('NAME').Value:=dm.cdsTourCOUNTRY_NAME.Value;
      //dm.cdsTMP1.FieldByName('SURNAME').Value:=dm.cdsTourCLIENT_NAME.Value;
      //dm.cdsTMP1.FieldByName('LASTNAME').Value:=dm.cdsClientLASTNAME.Value;
     // dm.cdsTMP.FieldByName('SUMM').Value :=0;
    end;
      //dm.cdsTMP.fieldByName('SUMM').Value:=dm.cdsTMP.FieldByName('SUMM').Value+dm.cdsExcursionRETING_AGENCY.Value;
      dm.cdsTMP1.Post;
    end ;
      g:=g+1;
    dm.cdsTour.Next;
    end;
    if dm.cdsTourPURPOSE.Value = ' Shop tour' then   m:=m+1;
    begin
     id:= dm.cdsTourID_APPLICATION.Value;
     if dm.cdsTMP1.FindKey([id]) then
     dm.cdsTMP1.Edit
     else
     begin
      dm.cdsTMP1.Append;
      dm.cdsTMP1.FieldByName('ID').Value:=id;
      //dm.cdsTMP1.FieldByName('NAME').Value:=dm.cdsTourCOUNTRY_NAME.Value;
      //dm.cdsTMP1.FieldByName('SURNAME').Value:=dm.cdsTourCLIENT_NAME.Value;
      //dm.cdsTMP1.FieldByName('LASTNAME').Value:=dm.cdsClientLASTNAME.Value;
     // dm.cdsTMP.FieldByName('SUMM').Value :=0;
    end;
      //dm.cdsTMP.fieldByName('SUMM').Value:=dm.cdsTMP.FieldByName('SUMM').Value+dm.cdsExcursionRETING_AGENCY.Value;
      dm.cdsTMP1.Post;
    end ;
      m:=m+1;
    dm.cdsTour.Next;
    end;

    dm.cdsTMP1.Append;
      n:=g/m*100;
    dm.cdsTMP1.FieldByName('NAME').Value:='Cоотношение: '+ FloatToStr(n) +'%';
    dm.cdsTMP1.FieldByName('ID').Visible:=False;
    dm.cdsTMP1.FieldByName('NAME').DisplayLabel:='Страна';
    dm.cdsTMP1.FieldByName('NAME').DisplayWidth:=17;
    dm.cdsTMP1.FieldByName('SURNAME').Visible:= False;
    dm.cdsTMP1.FieldByName('SURNAME').DisplayWidth:=15;
    dm.cdsTMP1.FieldByName('SUMM').Visible:= False;
    dm.cdsTMP1.FieldByName('LASTNAME').Visible:= False;
    //dm.cdsTMP1.FieldByName('LASTNAME').DisplayLabel:='Отчество';
    //dm.cdsTMP.FieldByName('SUMM').DisplayLabel:='Рейтинг';
    //dm.cdsTMP.FieldByName('SUMM').DisplayWidth:=10;
    n:=0;
    DataSource1.DataSet:=dm.cdsTMP1;

end;

procedure TForm17.BitBtn3Click(Sender: TObject);
var
 id:integer;
begin
 if dm.cdsTMP1.Active then
   begin
     dm.cdsTMP1.CancelUpdates;
     dm.cdsTMP1.Close;
   end;
   dm.cdsTMP1.Open;
   dm.cdsTMP1.AddIndex('indexID', 'ID',[],'','');
   dm.cdsTMP1.IndexFieldNames:='ID';
   dm.cdsClient.First;
   while not dm.cdsClient.Eof do
   begin
     if dm.cdsClientCHILD_NAME.Value <> 'нет' then
    begin
     id:= dm.cdsClientID.Value;
     if dm.cdsTMP1.FindKey([id]) then
     dm.cdsTMP1.Edit
     else
     begin
      dm.cdsTMP1.Append;
      dm.cdsTMP1.FieldByName('ID').Value:=id;
      dm.cdsTMP1.FieldByName('NAME').Value:=dm.cdsClientNAME.Value;
      dm.cdsTMP1.FieldByName('SURNAME').Value:=dm.cdsClientSURNAME.Value;
      dm.cdsTMP1.FieldByName('LASTNAME').Value:=dm.cdsClientLASTNAME.Value;
     // dm.cdsTMP.FieldByName('SUMM').Value :=0;
    end;
      //dm.cdsTMP.fieldByName('SUMM').Value:=dm.cdsTMP.FieldByName('SUMM').Value+dm.cdsExcursionRETING_AGENCY.Value;
      //dm.cdsTMP.Post;
    end;
      dm.cdsClient.Next;
    end;
    dm.cdsTMP1.FieldByName('ID').Visible:=False;
    dm.cdsTMP1.FieldByName('NAME').DisplayLabel:='Имя';
    dm.cdsTMP1.FieldByName('NAME').DisplayWidth:=15;
    dm.cdsTMP1.FieldByName('SURNAME').DisplayLabel:='Фамилия';
    dm.cdsTMP1.FieldByName('SURNAME').DisplayWidth:=15;
    dm.cdsTMP1.FieldByName('LASTNAME').DisplayLabel:='Отчество';
    dm.cdsTMP1.FieldByName('LASTNAME').DisplayWidth:=15;
    dm.cdsTMP1.FieldByName('SUMM').Visible:= False;
    //dm.cdsTMP.FieldByName('SUMM').DisplayLabel:='Рейтинг';
    //dm.cdsTMP.FieldByName('SUMM').DisplayWidth:=10;
    DataSource1.DataSet:=dm.cdsTMP1;
end;

procedure TForm17.BitBtn4Click(Sender: TObject);
var
  id:integer;
begin
  if dm.cdsTMP1.Active then
   begin
     dm.cdsTMP1.CancelUpdates;
     dm.cdsTMP1.Close;
   end;
   dm.cdsTMP1.Open;
   dm.cdsTMP1.AddIndex('indexID', 'ID',[],'','');
   dm.cdsTMP1.IndexFieldNames:='ID';
   dm.cdsClient.First;
   while not dm.cdsClient.Eof do
   begin
     if (dm.cdsClientPURPOSE.Value <> 'туризм') then
    begin
     id:= dm.cdsClientID.Value;
     if dm.cdsTMP1.FindKey([id]) then
     dm.cdsTMP1.Edit
     else
     begin
      dm.cdsTMP1.Append;
      dm.cdsTMP1.FieldByName('ID').Value:=id;
      dm.cdsTMP1.FieldByName('NAME').Value:=dm.cdsClientNAME.Value;
      dm.cdsTMP1.FieldByName('SURNAME').Value:=dm.cdsClientSURNAME.Value;
      dm.cdsTMP1.FieldByName('LASTNAME').Value:=dm.cdsClientLASTNAME.Value;
     // dm.cdsTMP.FieldByName('SUMM').Value :=0;
    end;
      //dm.cdsTMP.fieldByName('SUMM').Value:=dm.cdsTMP.FieldByName('SUMM').Value+dm.cdsExcursionRETING_AGENCY.Value;
      dm.cdsTMP1.Post;
    end;
      dm.cdsClient.Next;
    end;
    dm.cdsTMP1.FieldByName('ID').Visible:=False;
    dm.cdsTMP1.FieldByName('NAME').DisplayLabel:='Имя';
    dm.cdsTMP1.FieldByName('NAME').DisplayWidth:=15;
    dm.cdsTMP1.FieldByName('SURNAME').DisplayLabel:='Фамилия';
    dm.cdsTMP1.FieldByName('SURNAME').DisplayWidth:=15;
    dm.cdsTMP1.FieldByName('LASTNAME').DisplayLabel:='Отчество';
    dm.cdsTMP1.FieldByName('LASTNAME').DisplayWidth:=15;
    dm.cdsTMP1.FieldByName('SUMM').Visible:= False;
    //dm.cdsTMP.FieldByName('SUMM').DisplayLabel:='Рейтинг';
    //dm.cdsTMP.FieldByName('SUMM').DisplayWidth:=10;
    DataSource1.DataSet:=dm.cdsTMP1;
end;

procedure TForm17.BitBtn5Click(Sender: TObject);
var
 id:integer;
begin
   fmMSG.ShowModal;
   if dm.cdsTMP1.Active then
    begin
     dm.cdsTMP1.CancelUpdates;
     dm.cdsTMP1.Close;
   end;
   dm.cdsTMP1.Open;
   dm.cdsTMP1.AddIndex('indexID', 'ID',[],'','');
   dm.cdsTMP1.IndexFieldNames:='ID';
   dm.cdsLeaving.First;
   while not dm.cdsLeaving.Eof do
   begin
     if (dm.cdsLeavingHOTEL_NAME.Value <> '') then
     begin
       if (fmMSG.ComboBox1.Text = 'Все') and (fmMSG.Edit1.Text = '') then
    begin
     id:= dm.cdsLeavingID_CLIENT.Value;
     if dm.cdsTMP1.FindKey([id]) then
     dm.cdsTMP1.Edit
     else
     begin
      dm.cdsTMP1.Append;
      dm.cdsTMP1.FieldByName('ID').Value:=id;
      dm.cdsTMP1.FieldByName('NAME').Value:=dm.cdsLeavingHOTEL_NAME.Value;
      dm.cdsTMP1.FieldByName('SURNAME').Value:=dm.cdsLeavingCLIENT_NAME.Value;
     // dm.cdsTMP1.FieldByName('LASTNAME').Value:=dm.cdsClientLASTNAME.Value;
     // dm.cdsTMP.FieldByName('SUMM').Value :=0;
    end;
      //dm.cdsTMP.fieldByName('SUMM').Value:=dm.cdsTMP.FieldByName('SUMM').Value+dm.cdsExcursionRETING_AGENCY.Value;
      dm.cdsTMP1.Post;
    end
    else if (dm.cdsLeavingHOTEL_NAME.Value = fmMSG.ComboBox1.Text)  and (fmMSG.Edit1.Text = '') then
       begin
     id:= dm.cdsLeavingID_CLIENT.Value;
     if dm.cdsTMP1.FindKey([id]) then
     dm.cdsTMP1.Edit;
     begin
      dm.cdsTMP1.Append;
      dm.cdsTMP1.FieldByName('ID').Value:=id;
      dm.cdsTMP1.FieldByName('NAME').Value:=dm.cdsLeavingHOTEL_NAME.Value;
      dm.cdsTMP1.FieldByName('SURNAME').Value:=dm.cdsLeavingCLIENT_NAME.Value;
     // dm.cdsTMP1.FieldByName('LASTNAME').Value:=dm.cdsClientLASTNAME.Value;
     // dm.cdsTMP.FieldByName('SUMM').Value :=0;
    end;
      //dm.cdsTMP.fieldByName('SUMM').Value:=dm.cdsTMP.FieldByName('SUMM').Value+dm.cdsExcursionRETING_AGENCY.Value;
      dm.cdsTMP1.Post;
    end
     else if (fmMSG.ComboBox1.Text = 'Все') and (StrToInt(fmMSG.Edit1.Text)< ((dm.cdsLeavingDATE_LEAVING.Value) - (dm.cdsLeavingDATE_ARRIVING.Value))) then
    begin
     id:= dm.cdsLeavingID_CLIENT.Value;
     if dm.cdsTMP1.FindKey([id]) then
     dm.cdsTMP1.Edit
     else
     begin
      dm.cdsTMP1.Append;
      dm.cdsTMP1.FieldByName('ID').Value:=id;
      dm.cdsTMP1.FieldByName('NAME').Value:=dm.cdsLeavingHOTEL_NAME.Value;
      dm.cdsTMP1.FieldByName('SURNAME').Value:=dm.cdsLeavingCLIENT_NAME.Value;
     // dm.cdsTMP1.FieldByName('LASTNAME').Value:=dm.cdsClientLASTNAME.Value;
     // dm.cdsTMP.FieldByName('SUMM').Value :=0;
    end;
      //dm.cdsTMP.fieldByName('SUMM').Value:=dm.cdsTMP.FieldByName('SUMM').Value+dm.cdsExcursionRETING_AGENCY.Value;
      dm.cdsTMP1.Post;
    end
    else if (dm.cdsLeavingHOTEL_NAME.Value = fmMSG.ComboBox1.Text)  and (StrToInt(fmMSG.Edit1.Text)< ((dm.cdsLeavingDATE_LEAVING.Value) - (dm.cdsLeavingDATE_ARRIVING.Value))) then
       begin
     id:= dm.cdsLeavingID_CLIENT.Value;
     if dm.cdsTMP1.FindKey([id]) then
     dm.cdsTMP1.Edit;
     begin
      dm.cdsTMP1.Append;
      dm.cdsTMP1.FieldByName('ID').Value:=id;
      dm.cdsTMP1.FieldByName('NAME').Value:=dm.cdsLeavingHOTEL_NAME.Value;
      dm.cdsTMP1.FieldByName('SURNAME').Value:=dm.cdsLeavingCLIENT_NAME.Value;
     // dm.cdsTMP1.FieldByName('LASTNAME').Value:=dm.cdsClientLASTNAME.Value;
     // dm.cdsTMP.FieldByName('SUMM').Value :=0;
    end;
      //dm.cdsTMP.fieldByName('SUMM').Value:=dm.cdsTMP.FieldByName('SUMM').Value+dm.cdsExcursionRETING_AGENCY.Value;
      dm.cdsTMP1.Post;
    end;    end;
      dm.cdsLeaving.Next;
    end;
    dm.cdsTMP1.FieldByName('ID').Visible:=False;
    dm.cdsTMP1.FieldByName('NAME').DisplayLabel:='Гостиница';
    dm.cdsTMP1.FieldByName('NAME').DisplayWidth:=15;
    dm.cdsTMP1.FieldByName('SURNAME').DisplayLabel:='Клиент';
    dm.cdsTMP1.FieldByName('SURNAME').DisplayWidth:=15;
    dm.cdsTMP1.FieldByName('LASTNAME').Visible := false;
    dm.cdsTMP1.FieldByName('SUMM').Visible:= False;
    //dm.cdsTMP1.FieldByName('LASTNAME').DisplayWidth:=15;
    //dm.cdsTMP.FieldByName('SUMM').DisplayLabel:='Рейтинг';
    //dm.cdsTMP.FieldByName('SUMM').DisplayWidth:=10;
    DataSource1.DataSet:=dm.cdsTMP1;
end;

procedure TForm17.BitBtn6Click(Sender: TObject);
var
 id, k:integer;
begin
   fmMSG2.ShowModal;
   if dm.cdsTMP1.Active then
    begin
     dm.cdsTMP1.CancelUpdates;
     dm.cdsTMP1.Close;
   end;
   dm.cdsTMP1.Open;
   dm.cdsTMP1.AddIndex('indexID', 'ID',[],'','');
   dm.cdsTMP1.IndexFieldNames:='ID';
   dm.cdsLeaving.First;
   while not dm.cdsLeaving.Eof do
   begin
     if (dm.cdsLeavingHOTEL_NAME.Value <> '') then
     begin
       if ((fmMSG2.DateTimePicker1.Date <= (dm.cdsLeavingDATE_ARRIVING.Value)) and (fmMSG2.DateTimePicker2.Date>=dm.cdsLeavingDATE_LEAVING.Value)) then
    begin
     id:= dm.cdsLeavingID_CLIENT.Value;
     if dm.cdsTMP1.FindKey([id]) then
     dm.cdsTMP1.Edit
     else
     begin
      k:=k+1;
      dm.cdsTMP1.Append;
      dm.cdsTMP1.FieldByName('ID').Value:=id;
      dm.cdsTMP1.FieldByName('NAME').Value:=dm.cdsLeavingHOTEL_NAME.Value;
      dm.cdsTMP1.FieldByName('SURNAME').Value:=dm.cdsLeavingCLIENT_NAME.Value;
      dm.cdsTMP1.FieldByName('LASTNAME').Value:=StrToCurr(dm.cdsLeavingROOM.AsString);
      dm.cdsTMP1.FieldByName('SUMM').Value :=0;
    end;
      dm.cdsTMP1.fieldByName('SUMM').Value:=dm.cdsTMP1.FieldByName('SUMM').Value+1;
      dm.cdsTMP1.Post;
    end;
    end;
      dm.cdsLeaving.Next;
    end;
    dm.cdsTMP1.Append;
    dm.cdsTMP1.FieldByName('ID').Visible:=False;
    dm.cdsTMP1.FieldByName('NAME').Value:='Кол-во занимаемых номеров   '+ IntToStr(k);
    dm.cdsTMP1.FieldByName('NAME').DisplayLabel:='Гостиница';
    dm.cdsTMP1.FieldByName('NAME').DisplayWidth:=30;
    dm.cdsTMP1.FieldByName('SURNAME').DisplayLabel:='Клиент';
    dm.cdsTMP1.FieldByName('SURNAME').DisplayWidth:=15;
    dm.cdsTMP1.FieldByName('LASTNAME').DisplayLabel := 'Номер';
    dm.cdsTMP1.FieldByName('LASTNAME').DisplayWidth:=15;
    //dm.cdsTMP1.FieldByName('SUMM').DisplayLabel := 'Кол-во занятых номеров';
    //dm.cdsTMP1.FieldByName('SUMM').DisplayWidth:=15;
    dm.cdsTMP1.FieldByName('SUMM').Visible:= False;
    //dm.cdsTMP.FieldByName('SUMM').DisplayWidth:=10;
    DataSource1.DataSet:=dm.cdsTMP1;

end;

procedure TForm17.BitBtn7Click(Sender: TObject);
var
 id:integer;
begin
   fmMSG1.ShowModal;
   if dm.cdsTMP1.Active then
    begin
     dm.cdsTMP1.CancelUpdates;
     dm.cdsTMP1.Close;
   end;
   dm.cdsTMP1.Open;
   dm.cdsTMP1.AddIndex('indexID', 'ID',[],'','');
   dm.cdsTMP1.IndexFieldNames:='ID';
   dm.cdsClient.First;
   while not dm.cdsClient.Eof do
   begin
     if (dm.cdsClientSURNAME.Value <> '') then
     begin
       if (fmMSG1.ComboBox1.Text = 'Все')  then
    begin
     id:= dm.cdsClientID.Value;
     if dm.cdsTMP1.FindKey([id]) then
     dm.cdsTMP1.Edit
     else
     begin
      dm.cdsTMP1.Append;
      dm.cdsTMP1.FieldByName('ID').Value:=id;
      dm.cdsTMP1.FieldByName('NAME').Value:=dm.cdsClientNAME.Value;
      dm.cdsTMP1.FieldByName('SURNAME').Value:=dm.cdsClientSURNAME.Value;
      dm.cdsTMP1.FieldByName('LASTNAME').Value:=dm.cdsClientLASTNAME.Value;
     // dm.cdsTMP.FieldByName('SUMM').Value :=0;
    end;
      //dm.cdsTMP.fieldByName('SUMM').Value:=dm.cdsTMP.FieldByName('SUMM').Value+dm.cdsExcursionRETING_AGENCY.Value;
      dm.cdsTMP1.Post;
    end
    else if (dm.cdsClientPOL.Value = fmMSG1.ComboBox1.Text) then
       begin
     id:= dm.cdsClientID.Value;
     if dm.cdsTMP1.FindKey([id]) then
     dm.cdsTMP1.Edit;
     begin
      dm.cdsTMP1.Append;
      dm.cdsTMP1.FieldByName('ID').Value:=id;
      dm.cdsTMP1.FieldByName('NAME').Value:=dm.cdsClientNAME.Value;
      dm.cdsTMP1.FieldByName('SURNAME').Value:=dm.cdsClientSURNAME.Value;
      dm.cdsTMP1.FieldByName('LASTNAME').Value:=dm.cdsClientLASTNAME.Value;
     // dm.cdsTMP.FieldByName('SUMM').Value :=0;
    end;
      //dm.cdsTMP.fieldByName('SUMM').Value:=dm.cdsTMP.FieldByName('SUMM').Value+dm.cdsExcursionRETING_AGENCY.Value;
      dm.cdsTMP1.Post;
    end
    else if (dm.cdsClientPURPOSE.Value = fmMSG1.ComboBox1.Text) then
       begin
     id:= dm.cdsClientID.Value;
     if dm.cdsTMP1.FindKey([id]) then
     dm.cdsTMP1.Edit;
     begin
      dm.cdsTMP1.Append;
      dm.cdsTMP1.FieldByName('ID').Value:=id;
      dm.cdsTMP1.FieldByName('NAME').Value:=dm.cdsClientNAME.Value;
      dm.cdsTMP1.FieldByName('SURNAME').Value:=dm.cdsClientSURNAME.Value;
      dm.cdsTMP1.FieldByName('LASTNAME').Value:=dm.cdsClientLASTNAME.Value;
     // dm.cdsTMP.FieldByName('SUMM').Value :=0;
    end;
      //dm.cdsTMP.fieldByName('SUMM').Value:=dm.cdsTMP.FieldByName('SUMM').Value+dm.cdsExcursionRETING_AGENCY.Value;
      dm.cdsTMP1.Post;
    end
    else if (fmMSG1.ComboBox1.Text = 'Туристы с детьми') then
    begin
     if dm.cdsClientCHILD_NAME.Value <> 'нет' then
       begin
     id:= dm.cdsClientID.Value;
     if dm.cdsTMP1.FindKey([id]) then
     dm.cdsTMP1.Edit;
     begin
      dm.cdsTMP1.Append;
      dm.cdsTMP1.FieldByName('ID').Value:=id;
      dm.cdsTMP1.FieldByName('NAME').Value:=dm.cdsClientNAME.Value;
      dm.cdsTMP1.FieldByName('SURNAME').Value:=dm.cdsClientSURNAME.Value;
      dm.cdsTMP1.FieldByName('LASTNAME').Value:=dm.cdsClientLASTNAME.Value;
     // dm.cdsTMP.FieldByName('SUMM').Value :=0;
    end;
      //dm.cdsTMP.fieldByName('SUMM').Value:=dm.cdsTMP.FieldByName('SUMM').Value+dm.cdsExcursionRETING_AGENCY.Value;
      dm.cdsTMP1.Post;
    end;
    end;
    end;
      dm.cdsClient.Next;
    end;
    dm.cdsTMP1.FieldByName('ID').Visible:=False;
    dm.cdsTMP1.FieldByName('NAME').DisplayLabel:='Имя';
    dm.cdsTMP1.FieldByName('NAME').DisplayWidth:=15;
    dm.cdsTMP1.FieldByName('SURNAME').DisplayLabel:='Фамилия';
    dm.cdsTMP1.FieldByName('SURNAME').DisplayWidth:=15;
    dm.cdsTMP1.FieldByName('SUMM').Visible:= False;
    dm.cdsTMP1.FieldByName('LASTNAME').DisplayWidth:=15;
    dm.cdsTMP1.FieldByName('LASTNAME').DisplayLabel:='Отчество';
    //dm.cdsTMP.FieldByName('SUMM').DisplayLabel:='Рейтинг';
    //dm.cdsTMP.FieldByName('SUMM').DisplayWidth:=10;
    DataSource1.DataSet:=dm.cdsTMP1;

end;

procedure TForm17.BitBtn8Click(Sender: TObject);
var
 id, k:integer;
begin
   fmMSG4.ShowModal;
   if dm.cdsTMP1.Active then
    begin
     dm.cdsTMP1.CancelUpdates;
     dm.cdsTMP1.Close;
   end;
   dm.cdsTMP1.Open;
   dm.cdsTMP1.AddIndex('indexID', 'ID',[],'','');
   dm.cdsTMP1.IndexFieldNames:='ID';
   dm.cdsInexcursion.First;
   while not dm.cdsInexcursion.Eof do
   begin
     if (dm.cdsInexcursionCLIENT_NAME.Value <> '') then
     begin
       if ((fmMSG4.DateTimePicker1.Date <= (dm.cdsInexcursionDATE_EXC.Value)) and (fmMSG4.DateTimePicker2.Date>=dm.cdsInexcursionDATE_EXC.Value)) then
    begin
     id:= dm.cdsInexcursionID_CLIENT.Value;
     if dm.cdsTMP1.FindKey([id]) then
     dm.cdsTMP1.Edit
     else
     begin
      k:=  k+1;
      dm.cdsTMP1.Append;
      dm.cdsTMP1.FieldByName('ID').Value:=id;
      dm.cdsTMP1.FieldByName('NAME').Value:=dm.cdsInexcursionEXCURSION_NAME.Value;
      dm.cdsTMP1.FieldByName('SURNAME').Value:=dm.cdsInexcursionCLIENT_NAME.Value;
      //dm.cdsTMP1.FieldByName('LASTNAME').Value:=dm.cdsInexcursionDATE_EXC.Value;
      //dm.cdsTMP1.FieldByName('SUMM').Value :=0;
    end;
     // dm.cdsTMP1.fieldByName('SUMM').Value:=dm.cdsTMP1.FieldByName('SUMM').Value+1;
      dm.cdsTMP1.Post;
    end;
    end;
      dm.cdsInexcursion.Next;
    end;
    dm.cdsTMP1.Append;
    dm.cdsTMP1.FieldByName('NAME').Value:='Всего туристов: ' + IntToStr(k);
    dm.cdsTMP1.FieldByName('ID').Visible:=False;
    dm.cdsTMP1.FieldByName('NAME').DisplayLabel:='Экскурсия';
    dm.cdsTMP1.FieldByName('NAME').DisplayWidth:=15;
    dm.cdsTMP1.FieldByName('SURNAME').DisplayLabel:='Клиент';
    dm.cdsTMP1.FieldByName('SURNAME').DisplayWidth:=15;
    dm.cdsTMP1.FieldByName('LASTNAME').Visible:= True;
   
    dm.cdsTMP1.FieldByName('LASTNAME').Visible := False;
    dm.cdsTMP1.FieldByName('SUMM').Visible:= False;
    //dm.cdsTMP.FieldByName('SUMM').DisplayWidth:=10;
    DataSource1.DataSet:=dm.cdsTMP1;
end;

procedure TForm17.BitBtn9Click(Sender: TObject);
  var
 id:integer;
begin
   fmMSG5.ShowModal;
   if dm.cdsTMP1.Active then
    begin
     dm.cdsTMP1.CancelUpdates;
     dm.cdsTMP1.Close;
   end;
   dm.cdsTMP1.Open;
   dm.cdsTMP1.AddIndex('indexID', 'ID',[],'','');
   dm.cdsTMP1.IndexFieldNames:='ID';
   dm.cdsExcursion.First;
   while not dm.cdsExcursion.Eof do
   begin
     if (dm.cdsExcursionNAME.Value <> '') then
     begin
       if (fmMSG5.ComboBox1.Text = 'Агентства' ) then
       begin
       if (dm.cdsExcursionRETING_AGENCY.Value = 5) then
    begin
     id:= dm.cdsExcursionID.Value;
     if dm.cdsTMP1.FindKey([id]) then
     dm.cdsTMP1.Edit
     else
     begin
      dm.cdsTMP1.Append;
      dm.cdsTMP1.FieldByName('ID').Value:=id;
      dm.cdsTMP1.FieldByName('NAME').Value:=dm.cdsExcursionAGENCY.Value;
      dm.cdsTMP1.FieldByName('SURNAME').Value:=dm.cdsExcursionRETING_AGENCY.Value;
     // dm.cdsTMP1.FieldByName('LASTNAME').Value:=dm.cdsClientLASTNAME.Value;
     // dm.cdsTMP.FieldByName('SUMM').Value :=0;
    end;
      //dm.cdsTMP.fieldByName('SUMM').Value:=dm.cdsTMP.FieldByName('SUMM').Value+dm.cdsExcursionRETING_AGENCY.Value;
      dm.cdsTMP1.Post;
      end;
    end;
    end;
      dm.cdsExcursion.Next;
    end;
    dm.cdsTMP1.FieldByName('ID').Visible:=False;
    dm.cdsTMP1.FieldByName('NAME').DisplayLabel:='Агентство';
    dm.cdsTMP1.FieldByName('NAME').DisplayWidth:=15;
    dm.cdsTMP1.FieldByName('SURNAME').DisplayLabel:='Рейтинг';
    dm.cdsTMP1.FieldByName('SURNAME').DisplayWidth:=15;
    dm.cdsTMP1.FieldByName('LASTNAME').Visible :=False;
    dm.cdsTMP1.FieldByName('SUMM').Visible:= False;
    //dm.cdsTMP1.FieldByName('LASTNAME').DisplayWidth:=15;
    //dm.cdsTMP.FieldByName('SUMM').DisplayLabel:='Рейтинг';
    //dm.cdsTMP.FieldByName('SUMM').DisplayWidth:=10;
    DataSource1.DataSet:=dm.cdsTMP1;

end;

procedure TForm17.BitBtn10Click(Sender: TObject);
var
 id:integer;
begin
   fmMSG55.ShowModal;
   if dm.cdsTMP1.Active then
    begin
     dm.cdsTMP1.CancelUpdates;
     dm.cdsTMP1.Close;
   end;
   dm.cdsTMP1.Open;
   dm.cdsTMP1.AddIndex('indexID', 'ID',[],'','');
   dm.cdsTMP1.IndexFieldNames:='ID';
    if fmMSG55.CheckBox2.Checked = TRUE then
    begin
     dm.cdsExcursion.First;
   while not dm.cdsExcursion.Eof do
   begin
     if (dm.cdsExcursionNAME.Value <> '') then
     begin
       if (dm.cdsExcursionRETING_AGENCY.Value = 5) then
    begin
     id:= dm.cdsExcursionID.Value;
     if dm.cdsTMP1.FindKey([id]) then
     dm.cdsTMP1.Edit
     else
     begin
      dm.cdsTMP1.Append;
      dm.cdsTMP1.FieldByName('ID').Value:=id;
      dm.cdsTMP1.FieldByName('NAME').Value:=dm.cdsExcursionAGENCY.Value;
      dm.cdsTMP1.FieldByName('SURNAME').Value:=dm.cdsExcursionRETING_AGENCY.Value;
     // dm.cdsTMP1.FieldByName('LASTNAME').Value:=dm.cdsClientLASTNAME.Value;
     // dm.cdsTMP.FieldByName('SUMM').Value :=0;
    end;
      //dm.cdsTMP.fieldByName('SUMM').Value:=dm.cdsTMP.FieldByName('SUMM').Value+dm.cdsExcursionRETING_AGENCY.Value;
      dm.cdsTMP1.Post;
      end;
    end;
      dm.cdsExcursion.Next;
    end;
    dm.cdsTMP1.FieldByName('ID').Visible:=False;
    dm.cdsTMP1.FieldByName('NAME').DisplayLabel:='Агентство';
    dm.cdsTMP1.FieldByName('NAME').DisplayWidth:=15;
    dm.cdsTMP1.FieldByName('SURNAME').Visible :=True;
    dm.cdsTMP1.FieldByName('SURNAME').DisplayLabel:='Рейтинг';
    dm.cdsTMP1.FieldByName('SURNAME').DisplayWidth:=15;
    dm.cdsTMP1.FieldByName('LASTNAME').Visible :=False;
    dm.cdsTMP1.FieldByName('SUMM').Visible:= False;
    //dm.cdsTMP1.FieldByName('LASTNAME').DisplayWidth:=15;
    //dm.cdsTMP.FieldByName('SUMM').DisplayLabel:='Рейтинг';
    //dm.cdsTMP.FieldByName('SUMM').DisplayWidth:=10;
    fmMSG55.CheckBox2.Checked := False;
    DataSource1.DataSet:=dm.cdsTMP1;
    end;
    if fmMSG55.CheckBox1.Checked = TRUE then
    begin
     dm.cdsInexcursion.First;
   while not dm.cdsInexcursion.Eof do
   begin
     if (dm.cdsInexcursionEXCURSION_NAME.Value <> '') then
     begin
     id:= dm.cdsInexcursionID_EXCURSION.Value;
     if dm.cdsTMP1.FindKey([id]) then
     dm.cdsTMP1.Edit
     else
     begin
      dm.cdsTMP1.Append;
      dm.cdsTMP1.FieldByName('ID').Value:=id;
      dm.cdsTMP1.FieldByName('NAME').Value:=dm.cdsInexcursionEXCURSION_NAME.Value;
     // dm.cdsTMP1.FieldByName('SURNAME').Value:=dm.cdsExcursionRETING_AGENCY.Value;
     // dm.cdsTMP1.FieldByName('LASTNAME').Value:=dm.cdsClientLASTNAME.Value;
      dm.cdsTMP1.FieldByName('SUMM').Value :=0;
    end;
      dm.cdsTMP1.fieldByName('SUMM').Value:=dm.cdsTMP1.FieldByName('SUMM').Value+1;
      dm.cdsTMP1.Post;
    end;
      dm.cdsInexcursion.Next;
    end;
    dm.cdsTMP1.FieldByName('ID').Visible:=False;
    dm.cdsTMP1.FieldByName('NAME').DisplayLabel:='Экскурсия';
    dm.cdsTMP1.FieldByName('NAME').DisplayWidth:=15;
    dm.cdsTMP1.FieldByName('SUMM').Visible:= True;
    dm.cdsTMP1.FieldByName('SUMM').DisplayLabel:='Рейтинг';
    dm.cdsTMP1.FieldByName('SUMM').DisplayWidth:=15;
    //dm.cdsTMP1.FieldByName('SURNAME').DisplayWidth:=15;
    dm.cdsTMP1.FieldByName('LASTNAME').Visible :=False;
    dm.cdsTMP1.FieldByName('SURNAME').Visible:= False;
    //dm.cdsTMP1.FieldByName('LASTNAME').DisplayWidth:=15;
    //dm.cdsTMP.FieldByName('SUMM').DisplayLabel:='Рейтинг';
    //dm.cdsTMP.FieldByName('SUMM').DisplayWidth:=10;
    fmMSG55.CheckBox1.Checked := False;
    DataSource1.DataSet:=dm.cdsTMP1;
    end;


end;

end.
