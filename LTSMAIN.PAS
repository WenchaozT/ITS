unit LTSMAIN;

interface

uses Windows, Classes, Graphics, Forms, Controls, Menus,
  Dialogs, StdCtrls, Buttons, ExtCtrls, ComCtrls, ImgList, StdActns,
  ActnList, ToolWin,Inifiles,SysUtils,OmniDriver_TLB, OleServer,comobj,Series,strutils,
  ExtDlgs, TeeSurfa;


type
  TSDIAppForm = class(TForm)
    OpenDialog: TOpenDialog;
    SaveDialog: TSaveDialog;
    ActionList1: TActionList;
    FileNew1: TAction;
    FileOpen1: TAction;
    FileSave1: TAction;
    FileSaveAs1: TAction;
    FileExit1: TAction;
    EditCut1: TEditCut;
    EditCopy1: TEditCopy;
    EditPaste1: TEditPaste;
    HelpAbout1: TAction;
    StatusBar: TStatusBar;
    ImageList1: TImageList;
    MainMenu1: TMainMenu;
    File1: TMenuItem;
    FileNewItem: TMenuItem;
    FileOpenItem: TMenuItem;
    FileSaveItem: TMenuItem;
    FileSaveAsItem: TMenuItem;
    N1: TMenuItem;
    FileExitItem: TMenuItem;
    Edit1: TMenuItem;
    CutItem: TMenuItem;
    CopyItem: TMenuItem;
    PasteItem: TMenuItem;
    Help1: TMenuItem;
    HelpAboutItem: TMenuItem;
    Windows1: TMenuItem;
    Setting1: TMenuItem;
    Data1: TMenuItem;
    Spectrum1: TMenuItem;
    DegradationCurves1: TMenuItem;
    Timer1: TTimer;
    SaveDialog1: TSaveDialog;
    SaveDialog2: TSaveDialog;
    ToolBar1: TToolBar;
    ToolButton9: TToolButton;
    ToolButton1: TToolButton;
    ToolButton2: TToolButton;
    ToolButton3: TToolButton;
    ToolButton4: TToolButton;
    ToolButton5: TToolButton;
    ToolButton6: TToolButton;
    ToolButton7: TToolButton;
    ToolButton8: TToolButton;
    Label18: TLabel;
    ComboBox1: TComboBox;
    ToolButton10: TToolButton;
    ToolButton11: TToolButton;
    ToolButton13: TToolButton;
    ToolButton15: TToolButton;
    ToolButton16: TToolButton;
    ToolButton12: TToolButton;
    ToolButton21: TToolButton;
    ToolButton14: TToolButton;
    ToolButton17: TToolButton;
    ToolButton18: TToolButton;
    ToolButton19: TToolButton;
    SavePictureDialog1: TSavePictureDialog;
    SavePictureDialog2: TSavePictureDialog;
    Timer2: TTimer;
    spec1: TMenuItem;
    Timer3: TTimer;
    procedure FileNew1Execute(Sender: TObject);
    procedure FileOpen1Execute(Sender: TObject);
    procedure FileSave1Execute(Sender: TObject);
    procedure FileExit1Execute(Sender: TObject);
    procedure HelpAbout1Execute(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure ToolButton8Click(Sender: TObject);
    procedure Setting1Click(Sender: TObject);
    procedure Data1Click(Sender: TObject);
    procedure Spectrum1Click(Sender: TObject);
    procedure DegradationCurves1Click(Sender: TObject);
    procedure ToolButton10Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure ToolButton13Click(Sender: TObject);
    procedure ToolButton11Click(Sender: TObject);
    procedure ToolButton15Click(Sender: TObject);
    procedure Timer1Timer(Sender: TObject);
    procedure ToolButton12Click(Sender: TObject);
    procedure ToolButton16Click(Sender: TObject);
    procedure ToolButton17Click(Sender: TObject);
    procedure ToolButton21Click(Sender: TObject);
//    procedure CheckBox1Click(Sender: TObject);
    procedure ToolButton18Click(Sender: TObject);
    procedure ToolButton19Click(Sender: TObject);
    procedure Timer2Timer(Sender: TObject);
    procedure spec1Click(Sender: TObject);
    procedure Timer3Timer(Sender: TObject);
 


  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  SDIAppForm: TSDIAppForm;
  i2:integer;

implementation

 uses  Setting,Data,Chartf2,Unit1,CommonMethods, Calibrate,about, Unit3;

{$R *.dfm}


procedure TSDIAppForm.FileNew1Execute(Sender: TObject);
begin
  { Do nothing }
end;

procedure TSDIAppForm.FileOpen1Execute(Sender: TObject);
var str,a,b,temp,str1,str2:string;
xls_sign,spec_sign:boolean;
strlist:tstringlist;
i,j,k:integer;
  myinifile:Tinifile;
begin
   xls_sign:=false;
  spec_sign:=false;
  if OpenDialog.Execute then
  begin
    str:=opendialog.FileName;
    a:=copy(str,pos('.',str)+1,length(str)-pos('.',str));
    b:=copy(str,0,pos('.',str));
    if a='xls' then
    begin
      xls_sign:=true;
      if fileexists(b+'spec') then  spec_sign:=true;
    end;
    if a='spec' then
    begin
      spec_sign:=true;
      if fileexists(b+'xls') then xls_sign:=true;
    end;

    if xls_sign=true then
    begin
      StrList:=TStringList.Create;
      strlist.LoadFromFile(b+'xls');
      for i:=0 to strlist.Count-1 do
      begin
        if strlist[i]='[Parameter]' then
        begin
          for j:=i+2 to strlist.Count-1 do
          begin
            str1:=strlist[j];
            temp:=copy(str1,0,pos(#9,str1)-1);
            channelnow:=strtoint(temp);
            str1:=copy(str1,pos(#9,str1)+1,length(str1)-pos(#9,str1));
            get_time:=strtotime(copy(str1,0,pos(#9,str1)-1));
            str1:=copy(str1,pos(#9,str1)+1,length(str1)-pos(#9,str1));
            test_time:=strtotime(copy(str1,0,pos(#9,str1)-1));
            str1:=copy(str1,pos(#9,str1)+1,length(str1)-pos(#9,str1));
            irrad:=strtofloat(copy(str1,0,pos(#9,str1)-1));
            str1:=copy(str1,pos(#9,str1)+1,length(str1)-pos(#9,str1));
            lx:=strtofloat(copy(str1,0,pos(#9,str1)-1));
            str1:=copy(str1,pos(#9,str1)+1,length(str1)-pos(#9,str1));
            peakwave:=strtofloat(copy(str1,0,pos(#9,str1)-1));
            str1:=copy(str1,pos(#9,str1)+1,length(str1)-pos(#9,str1));
            lamda:=strtofloat(copy(str1,0,pos(#9,str1)-1));
            str1:=copy(str1,pos(#9,str1)+1,length(str1)-pos(#9,str1));
            x_coord:=strtofloat(copy(str1,0,pos(#9,str1)-1));
            str1:=copy(str1,pos(#9,str1)+1,length(str1)-pos(#9,str1));
            y_coord:=strtofloat(copy(str1,0,pos(#9,str1)-1));
            str1:=copy(str1,pos(#9,str1)+1,length(str1)-pos(#9,str1));
            u_coord:=strtofloat(copy(str1,0,pos(#9,str1)-1));
            str1:=copy(str1,pos(#9,str1)+1,length(str1)-pos(#9,str1));
            v_coord:=strtofloat(copy(str1,0,pos(#9,str1)-1));
            str1:=copy(str1,pos(#9,str1)+1,length(str1)-pos(#9,str1));
            cct2:=strtofloat(copy(str1,0,pos(#9,str1)-1));
            str1:=copy(str1,pos(#9,str1)+1,length(str1)-pos(#9,str1));
            cri2:=strtofloat(copy(str1,0,length(str1)));
            datadisplay(channelnow,peakwave,x_coord,Y_coord,U_coord,V_coord,CCT2,Lamda,CRI2,lx,irrad);

          end;
        strlist.Free;
        break;
        end;
      end;
    end;
    if spec_sign=true then
    begin
      myinifile:=TInifile.Create(b+'spec');
      numberofpixels:=myinifile.ReadInteger('information','numberofpixels',0);
      myinifile.Free;
      StrList:=TStringList.Create;
      strlist.LoadFromFile(b+'spec');
      for i:=0 to strlist.Count-1 do
      begin
        if strlist[i]='[Date]' then
        begin
          for j:=i+1 to strlist.Count-1 do
          begin
            str1:=strlist[j];
            str2:=copy(str1,0,pos(#9,str1)-1);
            str1:=copy(str1,pos(#9,str1)+1,length(str1)-pos(#9,str1));
            if str2='Wavelength' then
            begin
              for k:=0 to numberofpixels-1 do
              begin
                str2:=copy(str1,0,pos(#9,str1)-1);
                wavelengths[k]:=strtofloat(str2);
                str1:=copy(str1,pos(#9,str1)+1,length(str1)-pos(#9,str1));
              end;
            end;
            if str2='Counts' then
            begin
              str2:=copy(str1,0,pos(#9,str1)-1);
              channelnow:=strtoint(str2);
              str1:=copy(str1,pos(#9,str1)+1,length(str1)-pos(#9,str1));
              for k:=0 to numberofpixels-1 do
              begin
                str2:=copy(str1,0,pos(#9,str1)-1);
                Pixels[k]:=strtofloat(str2);
                str1:=copy(str1,pos(#9,str1)+1,length(str1)-pos(#9,str1));
              end;
              //chatdisplay(pixels,wavelengths,channelnow,chartform.Chart5);
            end;
            if str2='Powers' then
            begin
              str2:=copy(str1,0,pos(#9,str1)-1);
              channelnow:=strtoint(str2);
              str1:=copy(str1,pos(#9,str1)+1,length(str1)-pos(#9,str1));
              for k:=0 to numberofpixels-1 do
              begin
                str2:=copy(str1,0,pos(#9,str1)-1);
                powers[k]:=strtofloat(str2);
                str1:=copy(str1,pos(#9,str1)+1,length(str1)-pos(#9,str1));
              end;
              //chatdisplay(powers,wavelengths,channelnow,chartform.Chart1);
            end;
          end;
        break;
        end;

      end;

    end;

  end;
end;

procedure TSDIAppForm.FileSave1Execute(Sender: TObject);
begin
  SaveDialog.Execute;
end;

procedure TSDIAppForm.FileExit1Execute(Sender: TObject);
begin
  Close;
end;

procedure TSDIAppForm.HelpAbout1Execute(Sender: TObject);
begin
  AboutBox.ShowModal;
end;

procedure TSDIAppForm.FormCreate(Sender: TObject);
var
  myinifile:Tinifile;
  StrList:Tstringlist;
  i,j:integer;
begin        // Import Specif. and Cal. files
//sdiappform.ComboBox2.Items.Add('0'+#32+'all');
//----导入配置文件program.ini-----//
  myinifile:=TInifile.Create(ExtractFilePath(paramstr(0))+'program.ini');
  numberofpixels:=myinifile.readinteger ('information','numberofpixels',0);
  //settingform.Edit7.Text:=inttostr(myinifile.ReadInteger('setting','integrationtime',0));
  spectrometer:=myinifile.ReadString('information','spectrometer','');
  calpath:=myinifile.ReadString('information','calpath','');
  //---导入波长---//
  StrList:=TStringList.Create;
  Strlist.LoadFromFile(ExtractFilePath(paramstr(0))+'program.ini');
  setlength(wavelengths,numberofpixels);

  j:=0;
  for i:=strlist.Count-1 downto 0 do
  begin
    wavelengths[numberofpixels-j-1]:=strtofloat(strlist[i]);
    j:=j+1;
    if j=numberofpixels then break;
  end;
  //部分参数初始化
  setlength(pixels,numberofpixels);
  setlength(lightCounts,numberofpixels);
  setlength(powers,numberofpixels);
  test_sign:=false;
  self.Color:=CLMEDGRAY;
end;

procedure TSDIAppForm.ToolButton8Click(Sender: TObject);
var numberOfSpectrometers:integer;
  myinifile:Tinifile;
  StrList:Tstringlist;
  i,j:integer;
begin
with SettingForm do
begin                          // open and Initialize System
  wrapper := TCCoWrapper.Create(self);
  wrapper.CreateWrapper();                 //初始化光谱仪
  wrapper.closeAllSpectrometers();
  numberOfSpectrometers := wrapper.openAllSpectrometers();
  settingform.Memo1.Text:='Number Of Spectrometer: '+inttostr(numberOfSpectrometers);
  settingform.memo1.Lines.Add(spectrometer);
  if numberofspectrometers=0 then
    begin
      StatusBar.Panels.Items[0].Text:='No Spectrometer Opened!';
      exit;
    end else StatusBar.Panels.Items[0].Text:='Spectrometer Opened!';
  //try
   //comport1.Port:=comcombobox1.Items[comcombobox1.itemindex];
   //comport1.Open;
    //except
    //end;
end;
//导入系统文件



end;

procedure TSDIAppForm.Setting1Click(Sender: TObject);
begin
  SettingForm.Show;
end;

procedure TSDIAppForm.Data1Click(Sender: TObject);
begin
  DataForm.Show;
end;

procedure TSDIAppForm.Spectrum1Click(Sender: TObject);
begin
  Form1.Show;
end;

procedure TSDIAppForm.DegradationCurves1Click(Sender: TObject);
begin
  Form2.Show;
end;

procedure TSDIAppForm.ToolButton10Click(Sender: TObject);
var str:string;
begin
  str:=combobox1.Items[combobox1.ItemIndex];
  str:=inttostr(mpmnum[strtoint(str)]);
  settingform.comport1.WriteStr('LA'+str+#13#10);
  settingform.comport1.WriteStr('M'+#13#10);
  channelnow:=strtoint(combobox1.Items[combobox1.ItemIndex]);
end;

procedure TSDIAppForm.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  settingform.ComPort1.Close;
  settingform.ComPort2.Close;
  settingform.ComPort3.Close;
end;

procedure TSDIAppForm.ToolButton13Click(Sender: TObject);
var
i,j:integer;
filetobesaved,str:string;
f:textfile;
inif:Tinifile;
response:word;
begin
savedialog.Filter:='DarkData(*.dak)|*.dak|Text(*.txt)|*.txt';
savedialog.defaultext:='dak';
repeat
  if savedialog.Execute then
  if fileexists(savedialog.filename) then
  begin
    response:=messagedlg('Overwrite the existing file?',mtconfirmation,mbYesNoCancel,0);
    case response of
    mrYes:
    begin
     assignfile(f,savedialog.filename);
     rewrite(f);
     closefile(f);
    inif:=TInifile.Create(savedialog.filename);
    inif.WriteString('information','time',datetimetostr(now));
    inif.WriteString('information','type','Dark');
    inif.WriteInteger('information','IntegrationTime',strtoint(settingform.edit7.Text));
    inif.Free;
    saveinstantdata(savedialog.filename,'darkdata');
    str:='';
    for i:=1 to 16 do
      if channelnum[i]=1 then
        str:=str+inttostr(i)+#9;
    SaveInstantData(savedialog.filename,str);
    for j:=0 to numberofpixels-1 do
    begin
      str:='';
      str:=str;
      for i:=1 to 16 do
        if channelnum[i]=1 then
          str:=str+floattostr(round(darkcounts[i-1][j]*100)/100)+#9;
      SaveInstantData(savedialog.filename,str);
    end;
    break;
    end;
    mrCancel:
    begin
      exit;
    end;
    end;    //case end
  end else
  if savedialog.filename='' then break
  else begin
     assignfile(f,savedialog.filename);
     rewrite(f);
     closefile(f);
    inif:=TInifile.Create(savedialog.filename);
    inif.WriteString('information','time',datetimetostr(now));
    inif.WriteString('information','type','Dark');
    inif.Free;
    saveinstantdata(savedialog.filename,'darkdata');
    str:='';
    for i:=1 to 16 do
      if channelnum[i]=1 then
        str:=str+inttostr(i)+#9;
    SaveInstantData(savedialog.filename,str);
    for j:=0 to numberofpixels-1 do
    begin
      str:='';
      str:=str;
      for i:=1 to 16 do
        if channelnum[i]=1 then
          str:=str+floattostr(round(darkcounts[i-1][j]*100)/100)+#9;
      SaveInstantData(savedialog.filename,str);
    end;
    break;
  end;
  until (response<>mrNo);
end;

procedure TSDIAppForm.ToolButton11Click(Sender: TObject);
var peakpixel:integer;
i,n,m,j:integer;

ri2:array of double;
PixelsInt:array of double;
CompWave:boolean;
str:string;
strlist:tstringlist;
begin
  channelnow:=strtoint(combobox1.Items[combobox1.itemindex]);
  wrapper.setIntegrationTime(0, integrationtime[channelnow]);
  wrapper.setBoxcarWidth(0,5);//平滑
	wrapper.setScansToAverage(0,3);//平均3次
	wrapper.setCorrectForElectricalDark(0,1);//(0,1)启动暗噪声自动校正
  lightcounts := wrapper.getSpectrum(0);
  wavelengths := wrapper.getWavelengths(0);
  numberOfPixels := wrapper.getNumberOfPixels(0);
  get_time:=now;
  for i:=0 to numberofpixels-1 do
  begin
  if lightcounts[i]>darkcounts[channelnow-1][i] then
  begin
    pixels[i]:=lightcounts[i]-darkcounts[channelnow-1][i]
  end else pixels[i]:=0;
  powers[i]:=pixels[i]*CalVal[channelnow-1][i]/integrationtime[channelnow]*1000;
  end;

//-----------------------------------------------------//
  //参数计算
  //计算峰值
  max:=powers[round(8/47*numberofPixels)];
  peakpixel:=round(8/47*numberofPixels);
  for i := round(8/47*numberofPixels) to round(63/94*numberofPixels)  do  //求峰值
  begin             //350nm-850nm
    if max<powers[i] then     //列举法
    begin
      max:=powers[i];
      peakpixel:=i;
    end;
  end;
  peakwave:=round(wavelengths[peakpixel]*100000)/100000;
  if max>form3.Chart1.leftAxis.Maximum then
    form3.Chart1.leftAxis.Maximum:=max*1.1;
      form3.Chart1.Series[channelnow-1].Clear;
  for i:=0 to numberofpixels-1 do
  begin
  form3.chart1.Series[channelnow-1].AddXY(wavelengths[i],powers[i]);
  end ;
 //色度学参数计算
 //取380到780的整数点
  Setlength(PixelsInt,401);
  i:=0;
  for n:=380 to 780 do
  begin
    m:=0;
    w:=0;
    for j:=0 to numberofpixels-1 do
      if n+1-wavelengths[j]>0 then
      begin
        if abs(n-wavelengths[j])<0.5 then
        begin
          w:=w+powers[j];
          m:=m+1;
        end;
      end else
        break;
    PixelsInt[i]:=w/m;
    i:=i+1;
  end;

  //参数
  TriStimulus(PixelsInt,X,Y,Z);                         //色度学计算
  x_coord:=X/(X+Y+Z);
  y_coord:=Y/(X+Y+Z);
  u_coord:=4*X/(X+15*Y+3*Z);
  v_coord:=6*Y/(X+15*Y+3*Z);
  DomWavelength(x_coord,y_coord,xOut,yOut,xComp,yComp,Lamda,Pe,CompWave);
  if x_coord<0 then x_coord:=0;
  if y_coord<0 then y_coord:=0;
  if lamda<0 then lamda:=0;
  CCT2:=FindCCT(x_coord,y_coord,u_coord,v_coord);
  setlength(ri2,8);
  cri2:=0;
  irrad:=0;
  for i:=round(8/47*numberofPixels) to round(63/94*numberofPixels) do
    irrad:=irrad+powers[i]*0.26;
 lx:=0;
 j:=0;
 for i:=0 to numberofpixels-1 do
 begin
 if wavelengths[i]>380 then
 if wavelengths[i]<780 then
 begin
  lx:=lx+photopic[j]*powers[i]*683*0.26;
  j:=j+1;
 end;
 end;

 test_time:=get_time-start_time-pauses_time;
  datadisplay(channelnow,peakwave,x_coord,Y_coord,U_coord,V_coord,CCT2,Lamda,CRI2,lx,irrad);
if test_sign=true then
begin
  //保存数据
  str:=inttostr(channelnow)+#9+timetostr(get_time)+#9+timetostr(get_time-start_time-pauses_time)
        +#9+floattostr(round(irrad*1000)/1000)+#9+floattostr(round(lx))
        +#9+floattostr(round(peakwave*100)/100)+#9+floattostr(round(Lamda*100)/100)
        +#9+floattostr(round(x_coord*1000)/1000)+#9+floattostr(round(Y_coord*1000)/1000)
        +#9+floattostr(round(U_coord*1000)/1000)+#9+floattostr(round(V_coord*1000)/1000)
        +#9+floattostr(round(CCT2))+#9+floattostr(round(CRI2));
  SaveInstantData(savedialog1.FileName,str);
   rirrad[co-1,channelnow-1]:=irrad;
  intensity[co-1,channelnow-1]:=lx/(r*r);  //光强
  if imax<lx/(r*r) then
  begin
     imax:=lx/(r*r);
    end;
    if imin>lx/(r*r) then
  begin
     imin:=lx/(r*r);
    end;
   Form1.chart1.Series[Form1.chart1.SeriesCount-1].AddXY(dtemp[channelnow-1],lx/(r*r));
   Form1.chart2.Series[Form1.chart2.SeriesCount-1].AddXY(dtemp[channelnow-1],lx/(r*r));
  str:='Counts'+#9+inttostr(channelnow)+#9;
  for i:=0 to numberofpixels-1 do
  begin
    str:=str+floattostr(round(lightcounts[i]*100)/100)+#9;
  end;
  saveinstantdata(savedialog2.FileName,str);
  str:='Powers'+#9+inttostr(channelnow)+#9;
  for i:=0 to numberofpixels-1 do
  begin
    str:=str+floattostr(round(powers[i]*100)/100)+#9;
  end;
  saveinstantdata(savedialog2.FileName,str);
end;
end;

procedure TSDIAppForm.ToolButton15Click(Sender: TObject);
//开始试验
var i:integer;
 str:string;
 response:word;
 f:textfile;
 inif:Tinifile;

begin
  if (settingform.edit1.Text='') or (settingform.edit2.Text='') or (settingform.edit4.Text='')  then
     begin
     showmessage('setting is unfinished!');
     exit;
     end;
    imax:=0;
    imin:=10000000;
    an:=strtofloat(settingform.Edit4.Text);
    ni:=strtofloat(settingform.Edit1.Text);
    if ni=0 then
    begin
      t:=1;
      d:='0';
    end
    else
    begin
      t:=round(an / ni);
      d:=floattostr(round(800*ni));
    end;
  setlength(intensity,2*t+1,16);
  setlength(rirrad,2*t+1,16);
  r:=strtofloat(settingform.edit10.Text)/100;

for i:=1 to 7 do
begin
   area[i-1]:=(2*pi*(r)*(r)*(sin((12*(i-1))/180*pi)-sin((-6+(i-1)*12)/180*pi)))/t;
    area[16-i]:=(2*pi*(r)*(r)*(sin((6+12*(i-1))/180*pi)-sin(((i-1)*12)/180*pi)))/t;
end;
  area[7]:= (2*pi*(r)*(r)*(sin(84/180*pi)-sin((78)/180*pi)))/t;
  area[8]:= (2*pi*(r)*(r)*(sin(pi/2)-sin((84)/180*pi)))/t;
flux:=0;
Radiometric:=0;
test_sign:=true;
pauses_time:=0;
combobox1.ItemIndex:=0;
toolbutton10.Click;     //change to ch1
savedialog1.Filter:='ParameterData(*.xls)|*.xls';          //parameter
savedialog1.defaultext:='xls';
repeat
  if savedialog1.Execute then
  if fileexists(savedialog1.filename) then
  begin
    response:=messagedlg('Overwrite the existing *.xls file?',mtconfirmation,mbYesNoCancel,0);
    case response of
    mrYes:
    begin
    deletefile(savedialog1.filename);
    assignfile(f,savedialog1.filename);
    rewrite(f);
    closefile(f);
    inif:=TInifile.Create(savedialog1.filename);
    inif.WriteString('information','time',datetimetostr(now));
    inif.WriteString('information','type','Parameter');
    inif.Free;
    saveinstantdata(savedialog1.filename,'[Parameter]');
    str:='channel'+#9+'time'+#9+'test_time'+#9+'Irradiance'+#9+'Illuminance'+#9+'PeakWave'+#9+'DomWave'
          +#9+'x_coord'+#9+'y_coord'+#9+'u_coord'+#9+'v_coord'+#9+'CCT'+#9+'CRI';
     saveinstantdata(savedialog1.filename,STR);
    savedialog2.FileName:=copy(savedialog1.FileName,0,pos('.',savedialog1.FileName))+'spec';
    repeat
      if fileexists(savedialog2.filename) then
      begin
        response:=messagedlg('Overwrite the existing *.spec file?',mtconfirmation,mbYesNoCancel,0);
        case response of
        mrYes:
        begin
          deletefile(savedialog2.filename);
          assignfile(f,savedialog2.filename);
          rewrite(f);
          closefile(f);
          inif:=TInifile.Create(savedialog2.filename);
          inif.WriteString('information','time',datetimetostr(now));
          inif.WriteString('information','type','Data');
          inif.WriteInteger('information','numberofpixels',numberofpixels);
          inif.Free;
          saveinstantdata(savedialog2.filename,'[Date]');
          str:='Wavelength'+#9;
          for i:=0 to numberofpixels-1 do
            str:=str+floattostr(round(wavelengths[i]*100)/100)+#9;
          saveinstantdata(savedialog2.filename,str);
        end;
        mrCancel: exit;
        end;          //end case
      end else
      begin
          assignfile(f,savedialog2.filename);
          rewrite(f);
          closefile(f);
          inif:=TInifile.Create(savedialog2.filename);
          inif.WriteString('information','time',datetimetostr(now));
          inif.WriteString('information','type','Data');
          inif.WriteInteger('information','numberofpixels',numberofpixels);
          inif.Free;
          saveinstantdata(savedialog2.filename,'[Date]');
          str:='Wavelength'+#9;
          for i:=0 to numberofpixels-1 do
            str:=str+floattostr(round(wavelengths[i]*100)/100)+#9;
          saveinstantdata(savedialog2.filename,str);
      end;
    until (response<>mrNo);
    end;
    mrCancel:
    begin
      exit;
    end;
    end;    //case end
  end else
  begin
    assignfile(f,savedialog1.filename);
    rewrite(f);
    closefile(f);
    inif:=TInifile.Create(savedialog1.filename);
    inif.WriteString('information','time',datetimetostr(now));
    inif.WriteString('information','type','Parameter');
    inif.Free;
    saveinstantdata(savedialog1.filename,'[Parameter]');
    str:='channel'+#9+'time'+#9+'test_time'+#9+'Irradiance'+#9+'Illuminance'+#9+'PeakWave'+#9+'DomWave'
          +#9+'x_coord'+#9+'y_coord'+#9+'u_coord'+#9+'v_coord'+#9+'CCT'+#9+'CRI';
    saveinstantdata(savedialog1.filename,STR);
    savedialog2.FileName:=copy(savedialog1.FileName,0,pos('.',savedialog1.FileName))+'spec';
    repeat
      if fileexists(savedialog2.filename) then
      begin
        response:=messagedlg('Overwrite the existing *.spec file?',mtconfirmation,mbYesNoCancel,0);
        case response of
        mrYes:
        begin
          deletefile(savedialog2.filename);
          assignfile(f,savedialog2.filename);
          rewrite(f);
          closefile(f);
          inif:=TInifile.Create(savedialog2.filename);
          inif.WriteString('information','time',datetimetostr(now));
          inif.WriteString('information','type','Data');
          inif.WriteInteger('information','numberofpixels',numberofpixels);
          inif.Free;
          saveinstantdata(savedialog2.filename,'[Date]');
          str:='Wavelength'+#9;
          for i:=0 to numberofpixels-1 do
            str:=str+floattostr(round(wavelengths[i]*100)/100)+#9;
          saveinstantdata(savedialog2.filename,str);
        end;
        mrCancel: exit;
        end;          //end case
      end else
      begin
          assignfile(f,savedialog2.filename);
          rewrite(f);
          closefile(f);
          inif:=TInifile.Create(savedialog2.filename);
          inif.WriteString('information','time',datetimetostr(now));
          inif.WriteString('information','type','Data');
          inif.WriteInteger('information','numberofpixels',numberofpixels);
          inif.Free;
          saveinstantdata(savedialog2.filename,'[Date]');
          str:='Wavelength'+#9;
          for i:=0 to numberofpixels-1 do
            str:=str+floattostr(round(wavelengths[i]*100)/100)+#9;
          saveinstantdata(savedialog2.filename,str);
      end;
    until (response<>mrNo);
  end;
until (response<>mrNo);
  timer1.Enabled:=true;
  co:=1;
end;

procedure TSDIAppForm.Timer1Timer(Sender: TObject);
var
  steps:integer;
  readstr:string;
begin
  timer1.Enabled :=false;
  i2:=1; //16路光，从1开始
  //最开始时轨道不移动直接测
if co<>1 then
  begin
    settingform.button9.Click;
  end;
  timer2.Enabled :=true;
end;

procedure TSDIAppForm.ToolButton12Click(Sender: TObject);
begin
if messagedlg('Are you sure to stop?',mtwarning,[mbYes,mbNo],0)=mrYes then
begin
  timer1.Enabled:=false;
  timer2.Enabled:=false;
  test_sign:=false;
end;
end;

procedure TSDIAppForm.ToolButton16Click(Sender: TObject);
begin
if toolbutton16.Hint='Pause' then
begin
  toolbutton16.Hint:='go on';
  timer1.Enabled:=false;
    settingform.comport2.WriteStr('SPX'+chr(13));
  pausetime:=now;
  pausetime2:=getTickCount()-pausetime2;

end else
begin
  toolbutton16.Hint:='Pause';
  pausetime:=now-pausetime;
  pauses_time:=pauses_time+pausetime;
  timer1.Interval:=timer1.Interval-pausetime2;
  timer1.Enabled:=true;

end;
end;

procedure TSDIAppForm.ToolButton17Click(Sender: TObject);
begin
calibform.show;

end;



procedure TSDIAppForm.ToolButton21Click(Sender: TObject);
var i:integer;
     newseries,newseries1:TLineSeries;
begin
  combobox1.itemindex:=0;
  toolbutton10.Click;
  settingform.CheckBox1.Checked:=true;
  settingform.CheckBox2.Checked:=true;
  settingform.CheckBox3.Checked:=true;
  settingform.CheckBox4.Checked:=true;
  settingform.CheckBox5.Checked:=true;
  settingform.CheckBox6.Checked:=true;
  settingform.CheckBox7.Checked:=true;
  settingform.CheckBox8.Checked:=true;
  settingform.CheckBox9.Checked:=true;
  settingform.CheckBox10.Checked:=true;
  settingform.CheckBox11.Checked:=true;
  settingform.CheckBox12.Checked:=true;
  settingform.CheckBox13.Checked:=true;
  settingform.CheckBox14.Checked:=true;
  settingform.CheckBox15.Checked:=true;
  settingform.CheckBox16.Checked:=true;
  settingform.Button3.Click;
  form2.series1.clear;
  form2.Chart1.AddSeries( TsurfaceSeries.Create( Self ) );
 for i:=0 to form1.Chart1.SeriesCount-1 do
begin
 form1.Chart1.Series[i].clear;
end;
  newseries:=TLineSeries.Create(form1);     //增加series
      newseries.ParentChart:=form1.chart1;
for i:=0 to 15 do
begin
 form3.Chart1.Series[i].Clear;
end;
//dataform
with dataform do
begin
  advstringgrid1.Clear;
  advstringgrid2.Clear;
  advstringgrid3.Clear;
  advstringgrid4.Clear;
  advstringgrid5.Clear;
  advstringgrid6.Clear;
  advstringgrid7.Clear;
  advstringgrid8.Clear;
  advstringgrid9.Clear;
  advstringgrid10.Clear;
  advstringgrid11.Clear;
  advstringgrid12.Clear;
  advstringgrid13.Clear;
  advstringgrid14.Clear;
  advstringgrid15.Clear;
  advstringgrid16.Clear;
  edit3.Clear;
  edit1.Clear;
   advstr_ini();
end;
end;

procedure TSDIAppForm.ToolButton18Click(Sender: TObject);
begin
 savepicturedialog1.Filter:='Bitmaps (*.bmp)|*.bmp';
savepicturedialog1.DefaultExt:='bmp';
if savepicturedialog1.Execute then
Form1.Chart1.SaveToBitmapFile(savepicturedialog1.FileName);
end;

procedure TSDIAppForm.ToolButton19Click(Sender: TObject);
begin
  savepicturedialog2.Filter:='Bitmaps (*.bmp)|*.bmp';
savepicturedialog2.DefaultExt:='bmp';
if savepicturedialog2.Execute then
Form2.GetFormImage.SaveToFile(savepicturedialog2.FileName);
end;


procedure TSDIAppForm.Timer2Timer(Sender: TObject);
var
newseries,newseries1:TLineSeries;
 i,j,time:integer;
   str5,null:string;
   x,y,z:double;
   inif:Tinifile;
    function ii(a:double):tcolor;
   begin
    if a<=imin+(imax-imin)*1/8then result:=clSilver
    else if a<=imin+(imax-imin)*2/8 then result:=clGray
    else if a<=imin+(imax-imin)*3/8 then result:=clGreen
    else if a<=imin+(imax-imin)*4/8 then result:=clPurple
    else if a<=imin+(imax-imin)*5/8 then result:=clBlue
    else if a<=imin+(imax-imin)*6/8 then result:=clred
    else if a<=imin+(imax-imin)*7/8 then result:=clLime
    else  result:=clYellow;
    end;
begin
      null:='';
      time:=0;

if channelnum[i2]=1 then
  begin
    combobox1.ItemIndex:=i2-1;
      toolbutton10.Click;
      sleep(500);
      toolbutton11.Click;
      end;
      i2:=i2+1;
if i2>16 then
  begin
    co:=co+1;
    timer2.enabled:=false;
    newseries:=TLineSeries.Create(form1);     //增加series
    newseries.ParentChart:=form1.chart1;
    //timer1.Enabled:=true;
    if co=(t+1) then
      timer3.Enabled :=true
    else if co>2*t then
      begin
        timer2.Enabled:=false;
        test_sign:=false;
        for i:=0 to 15 do
        begin
          for j:=0 to 2*t-1 do
          begin
           if j<2*t then
            begin
            x:=10*r*cos(11.341785*i*pi/180);
            y:=10*r*sin(11.341785*i*pi/180)*sin((j*ni)/180*pi);
            z:=10*r*sin(11.341785*i*pi/180)*cos(j*ni*pi/180);
            form2.series1.AddXYZ(x,z,y,null,ii(intensity[j,i]));
            flux:=flux+area[i]*intensity[j,i]*r*r;
            Radiometric:=Radiometric+area[i]*rirrad[j,i];
            end
           else
            begin
            x:=10*r*cos(11.341785*i*pi/180);
            y:=10*r*sin(11.341785*i*pi/180)*sin((j*ni)/180*pi);
            z:=10*r*sin(11.341785*i*pi/180)*cos(j*ni*pi/180);
            form2.series1.AddXYZ(x,z,y,null,ii(intensity[j,i]));
            flux:=flux+area[i]*intensity[j,i]*r*r;
            Radiometric:=Radiometric+area[i]*rirrad[j,i];
            end;
          end;
        end;
    dataform.edit3.Text:=floattostr(flux);
    dataform.edit1.Text:=floattostr(Radiometric);
    inif:=TInifile.Create(savedialog1.filename);
    inif.WriteString('information','Photometric [lm]',floattostr(flux));
    inif.WriteString('information','Radiometric [w]',floattostr(Radiometric));
    inif.Free;
    saveinstantdata(savedialog1.filename,'[Date]');
    form2.Label1.Caption:=inttostr(round(imax));
    form2.Label2.Caption:=inttostr(round(imin+(imax-imin)*7/8));
    form2.label3.Caption:=inttostr(round(imin+(imax-imin)*6/8));
    form2.Label4.Caption:=inttostr(round(imin+(imax-imin)*5/8));
    form2.Label5.Caption:=inttostr(round(imin+(imax-imin)*4/8));
    form2.label6.Caption:=inttostr(round(imin+(imax-imin)*3/8));
    form2.label7.Caption:=inttostr(round(imin+(imax-imin)*2/8));
    form2.label8.Caption:=inttostr(round(imin+(imax-imin)*1/8));
    form2.label9.Caption:=inttostr(round(imin));
      end
      else
        timer1.Enabled :=true;
  end;
    pausetime2:=getTickCount();
end;

procedure TSDIAppForm.spec1Click(Sender: TObject);
begin
  form3.Show;
end;

procedure TSDIAppForm.Timer3Timer(Sender: TObject);
begin
  timer3.Enabled :=false;
  //滑块运动，轨道反转并开始测量
  settingform.Button7.Click ;
  i2:=1;
  timer2.Enabled:=true;
  if settingform.ComboBox1.ItemIndex=1 then
    settingform.ComboBox1.ItemIndex:=0
  else
    settingform.ComboBox1.ItemIndex:=1;
end;

end.
