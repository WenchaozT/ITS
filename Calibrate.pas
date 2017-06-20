unit Calibrate;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, TeEngine, Series, ExtCtrls, TeeProcs, Chart, ComCtrls, StdCtrls,Setting;

type
  Tcalibform = class(TForm)
    GroupBox6: TGroupBox;
    Label18: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    ComboBox1: TComboBox;
    Edit1: TEdit;
    Button6: TButton;
    Button7: TButton;
    Button8: TButton;
    Button12: TButton;
    PageControl2: TPageControl;
    TabSheet5: TTabSheet;
    chart1: TChart;
    FastLineSeries2: TFastLineSeries;
    TabSheet6: TTabSheet;
    Chart2: TChart;
    FastLineSeries1: TFastLineSeries;
    TabSheet7: TTabSheet;
    Chart3: TChart;
    FastLineSeries3: TFastLineSeries;
    Button10: TButton;
    Button9: TButton;
    Button11: TButton;
    OpenDialog1: TOpenDialog;
    SaveDialog1: TSaveDialog;
    procedure Button7Click(Sender: TObject);
    procedure Button8Click(Sender: TObject);
    procedure Button12Click(Sender: TObject);
    procedure Button9Click(Sender: TObject);
    procedure Button11Click(Sender: TObject);
    procedure Button10Click(Sender: TObject);
    procedure Button6Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  calibform: Tcalibform;

implementation

uses LTSMAIN,commonmethods,inifiles;

{$R *.dfm}

procedure Tcalibform.Button7Click(Sender: TObject);
var i:integer;
begin
  wrapper.setIntegrationTime(0, strtoint(edit1.Text)*1000);
  wrapper.setBoxcarWidth(0,5);//平滑
	wrapper.setScansToAverage(0,3);//平均3次
	wrapper.setCorrectForElectricalDark(0,1);//(0,1)启动暗噪声自动校正
  Clightpixels := wrapper.getSpectrum(0);
  wavelengths := wrapper.getWavelengths(0);
  numberOfPixels := wrapper.getNumberOfPixels(0);
  chart1.Series[0].Clear;
  clight_sign:=true;
  if cdark_sign=true then
  begin
  for i:=0 to numberofpixels-1 do
    chart1.Series[0].AddXY(wavelengths[i],clightpixels[i]-cdarkpixels[i]);
  end else
  for i:=0 to numberofpixels-1 do
    chart1.Series[0].AddXY(wavelengths[i],clightpixels[i]);
//tabsheet1.Focused:=true;
pagecontrol2.TabIndex:=0;
end;

procedure Tcalibform.Button8Click(Sender: TObject);
var i:integer;
begin
wrapper.setIntegrationTime(0, strtoint(settingform.Edit7.text)*1000);
  wrapper.setBoxcarWidth(0,5);//平滑
	wrapper.setScansToAverage(0,3);//平均3次
	wrapper.setCorrectForElectricalDark(0,1);//(0,1)启动暗噪声自动校正
  cdarkpixels := wrapper.getSpectrum(0);
  wavelengths := wrapper.getWavelengths(0);
  numberOfPixels := wrapper.getNumberOfPixels(0);
  chart1.Series[0].Clear;
  cdark_sign:=true;
  if clight_sign=true then
  begin
  for i:=0 to numberofpixels-1 do
    chart1.Series[0].AddXY(wavelengths[i],clightpixels[i]-cdarkpixels[i]);
  end else
  for i:=0 to numberofpixels-1 do
    chart1.Series[0].AddXY(wavelengths[i],cdarkpixels[i]);
pagecontrol2.TabIndex:=0;
end;

procedure Tcalibform.Button12Click(Sender: TObject);
var
  myinifile:Tinifile;
  StrList:Tstringlist;
  str,str1:string;
  i:integer;
begin
opendialog1.Filter:='DataIS(*.isd)|*.isd';
opendialog1.DefaultExt:='isd';
if opendialog1.Execute then
begin
  cis_sign:=true;
//  myinifile:=TInifile.Create(opendialog1.FileName);
  StrList:=TStringList.Create;
  Strlist.LoadFromFile(opendialog1.FileName);
  setlength(standardw,strlist.Count-118);
  setlength(standardl,strlist.Count-118);
  for i:=117 to strlist.Count-2 do
  begin
    str:=strlist[i];
    str1:=copy(str,ansipos(#9,str)+1,1+length(str)-ansipos(#9,str)-1);
    standardw[i-117] := strtofloat(str1);   //    +length(str)-ansipos('#9',str)+2
    str1:=copy(str,1,ansipos(#9,str)-1);
    standardl[i-117]:=strtofloat(str1);
  end;
  numberofpixels:=strlist.Count-118;
  for i:=0 to strlist.Count-119 do
    chart2.Series[0].AddXY(standardl[i],standardw[i]);
end;
strlist.Free;
pagecontrol2.TabIndex:=1;

end;

procedure Tcalibform.Button9Click(Sender: TObject);
var i,j,n:integer;
  a,b,x,y:double;
  myinifile:Tinifile;
  StrList:Tstringlist;
  sign:boolean;
begin
  sign:=false;
 if cis_sign=true then
 if clight_sign=true then
 if cdark_sign=true then
 begin
  ccal_sign:=true;
//----内插---//
// myinifile:=TInifile.Create(ExtractFilePath(paramstr(0))+'pixels.ini');
 StrList:=TStringList.Create;
 StrList.LoadFromFile(ExtractFilePath(paramstr(0))+'pixels.ini');
 setlength(intstandardl,strlist.Count);
 setlength(intstandardw,strlist.Count);
 for i:=0 to strlist.Count-1 do
   intstandardl[i]:=strtofloat(strlist[i]);

 a:=standardL[0];
 b:=standardL[1];
 x:=standardw[0];
 y:=standardw[1];
 j:=0;
 numberofpixels:=strlist.Count;
 for i:=0 to strlist.Count-1 do
 begin
  if intstandardl[i]<=a then
  begin
    intstandardw[i]:=x-(a-intstandardl[i])/(b-a)*(y-x);
    continue;
  end;
  while intstandardl[i]>b do
  begin
    j:=j+1;
    if j>=numberofpixels-118 then
    begin
      j:=j-1;
      intstandardw[i]:=(intstandardl[i]-b)/(b-a)*(y-x)+y;
      sign:=true;
      break;
    end else
    b:=standardL[j+1];
  end;
  if sign=true then
  begin
    sign:=false;
    continue;
  end;
  x:=standardw[j];
  y:=standardw[j+1];
  a:=standardL[j];
  b:=standardL[j+1];
   if intstandardl[i]>a then
   if intstandardl[i]<b then
   begin
     intstandardw[i]:=(intstandardl[i]-a)/(b-a)*(y-x)+x;
   end;
 end;

//----------HR4000 coefficient-----------//
setlength(Cpixels,numberofpixels);
setlength(ratio,numberofpixels);
for i:=0 to numberofpixels-1 do
begin
  Cpixels[i]:=clightpixels[i]-cdarkpixels[i];
  if cpixels[i]<=0 then cpixels[i]:=1;
  ratio[i]:=intstandardw[i]/Cpixels[i]*strtoint(edit1.Text);
end;
for i:=0 to strlist.Count-1 do
  chart3.Series[0].AddXY(intstandardl[i],ratio[i]);
end;
pagecontrol2.TabIndex:=2;

end;

procedure Tcalibform.Button11Click(Sender: TObject);
var i:integer;
begin
if ccal_sign=true then
begin
for i:=0 to numberofpixels-1 do
  CalVal[channelnow-1][i]:=ratio[i];
cal_sign:=true;
end;
end;

procedure Tcalibform.Button10Click(Sender: TObject);
var
myinifile:tinifile;
i:integer;
response:word;
f:textfile;
str:string;

  procedure savedata;
   var
     f:textfile;
//     inif:Tinifile;
     j,maxcount:integer;
     tmpstring,titlestr,tmpfile,str:string;
   begin
     tmpfile:=savedialog1.filename;
     assignfile(f,tmpfile);
     rewrite(f);
     closefile(f);
  myinifile:=tinifile.Create(SaveDialog1.FileName);
  myinifile.WriteString('Information','time',datetostr(now)+' '+timetostr(now));
  myinifile.WriteString('Information','Spectrometer','Master');
  myinifile.WriteString('Information','Lamp S/N',' ');
  myinifile.WriteString('Information','Int Period (ms)',edit1.Text);
  myinifile.Writeinteger('Information','Average',5);
  myinifile.Writeinteger('Information','Boxcar',3);
  myinifile.Writeinteger('Information','Fiber (micron)',3900);
  myinifile.Writeinteger('Information','NumberOfDataX',numberofpixels);
  myinifile.Writeinteger('Information','NumberOfDataY',1);
  myinifile.Writestring('Information','X-Unit','CCD Piexls');
  myinifile.Writestring('Information','Y-Unit','uJoule/count');

     myinifile.Free;



     assignfile(f,tmpfile);
     append(f);
     str:=#10#13+#10#13+'[data]'+#10#13;
     writeln(f,str);
     closefile(f);

   end;

begin
if ccal_sign=true then
begin
  savedialog1.Filter:='Cal(*.cal)|*.cal|Text(*.txt)|*.txt';
  savedialog1.defaultext:='cal';
if SaveDialog1.Execute then
begin
if fileexists(savedialog1.filename) then
    begin
     response:=messagedlg('Overwrite the existing file?',mtconfirmation,mbYesNoCancel,0);
     case response of
      mrYes: begin
             savedata;
             end;
      mrCancel: begin //Result:='';
      exit; end;
     end;    //case end
    end;

  assignfile(f,SaveDialog1.FileName);
  append(f);
  for i:=0 to numberofpixels-1 do
  begin
    str:=floattostr(ratio[i])+#10#13;
    writeln(f,str);
  end;

  closefile(f);
end;
end;
end;

procedure Tcalibform.Button6Click(Sender: TObject);
var str:string;
begin
 str:=combobox1.Items[combobox1.ItemIndex];
  str:=inttostr(mpmnum[strtoint(str)]);
  settingform.comport1.WriteStr('LA'+str+#13#10);
  settingform.comport1.WriteStr('M'+#13#10);
  channelnow:=strtoint(combobox1.Items[combobox1.ItemIndex]);
end;

end.
