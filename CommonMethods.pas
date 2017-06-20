unit CommonMethods;

interface
  uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ComCtrls, StdCtrls, math,Inifiles,series, TeEngine, Extctrls,
  OmniDriver_TLB, OleServer;

var

 //  StartTime:Tdatetime;
{   Tc,Tj,Vdc,Vp,DeltaV0,Pe,Po:double;
   Idc, Vcomp, Pulse_on, Pulse_off, Ibias: double; }
{   Compl,BiasValue,DarkValue:double;
   Wave_From,Wave_To,Wave_Step,Wave_Curr,Switch_outlet,Switch_G2,Switch_G3:double;
   cycles,SamplingDelay,ScanDelay,CurrPos:integer;
   SPD_Done, MonoSettingChanged, ScanDark: Boolean; }
   wrapper:TCCoWrapper;
   numberOfSpectrometers:integer;
   spectrometer:string;
   numberofpixels:integer;
    imin,imax:double;
   DarkCounts:array of array of double;      // Dark counts of ch1..ch16
   CalVal:array of array of double;          // Calibr. values of ch1..ch16
   calpath:string;
   photopic:array of double;
   integrationtime:array[1..16] of integer;
   //scan,goon:boolean;
   //channelorder:array of integer;
   //parameter,calfilename:string;
   //start_temp, end_temp,step_temp:double;
   //Lambda:array[0..400] of double;
   //CurrentTime:TDateTime; //当前时间值
   max,w,X,Y,Z,x_coord,Y_coord,U_coord,V_coord,peakwave,
   Radiometric,xOut,yOut,xComp,yComp,Lamda,Pe,CCT2,CRI2,irrad,lx,flux:double;
   channelnow,pointnow,pointcounts:integer;
   pixels,lightCounts,wavelengths,powers:array of double;
   mpmnum:array[1..16] of integer=
     (-2438,-1535,-619,277,1169,2069,2971,3870,4772,5661,6561,7458,8360,9258,10158,11060);
   TestTime:array of integer;
   test_sign,data_sign:boolean;
   start_time,pausetime,pauses_time,get_time,test_time:ttime;
   pausetime2:integer;
 //from settingform
  channelnum:array[1..16] of integer;
  area:array[0..15]of double;
  intensity: array of array of double;
  rirrad: array of array of double;
  dtemp:array[0..15] of double=
  (-90,-78,-66,-54,-42,-30,-18,-6,6,18,30,42,54,66,78,90);
   atemp:array[0..15] of double=
  (-1,-1,-1,-1,-1,-1,-1,-1,1,1,1,1,1,1,1,1);
  standardW,standardl:array of double;
  IntStandardW,IntStandardl:array of double;
  Cpixels,Clightpixels,Cwavelengths,Cdarkpixels,ratio:array of double;
  clight_sign,cdark_sign,cis_sign,ccal_sign:boolean;
  cal_sign:boolean;

  procedure TriStimulus(Lamda:array of double;var Xstimuli,Ystimuli,Zstimuli:double);stdcall;external 'color-new.dll';
  procedure GetCIExy(i:integer;var x,y:double);stdcall;external 'color-new.dll';
  procedure CRI_15Ri(Lamda:array of double; Tc:double; var Ri:array of double);stdcall;external 'color-new.dll';
 // Procedure DrawCIExy(series1:TChartSeries);stdcall;external 'color.dll';
 // Procedure DrawCIEuv(series1:TChartSeries);stdcall;external 'color.dll';
  Procedure DomWavelength(xIn,yIn:double;Var xOut,yOut,xComp,yComp,Lamda,Pe:double;var CompWave:boolean);stdcall;external 'color-new.dll';
 // procedure DrawBlackBodyLocus(series1:TChartSeries);stdcall;external 'black.dll';
 // procedure DrawIsoTemp(series1:array of TChartSeries);stdcall;external 'black.dll';
  function FindCCT(x,y:double;var u0,v0:double):double;stdcall;external 'black-new.dll';
  procedure GetIsoTemp(i:integer;var uvplus1,uvplus2,uvminus1,uvminus2:double);stdcall;external 'black-new.dll';
  procedure GetBlackBodyLocus(i:integer;var u,v:double);stdcall;external 'black-new.dll';

  procedure DrawChromaCoord(lamda:array of double);
  function ExtractLambda(MSeries:TChartSeries;var Lambda:array of double):boolean;
  Procedure SaveInstantData(filename,str:string);


implementation
{Procedure SaveInstantData(filename,str:string);
var
  f:textfile;
begin
  if fileexists(filename) then
    begin
      assignfile(f,filename);
      append(f);
      writeln(f,str);
      closefile(f);
    end;
end;   }

function InitDataSave(savedialog1:TsaveDialog;curveNo:integer;yaxis,stitle:string):string;
var
  i,j:integer;
  response:word;
  procedure savedata;
   var
     f:textfile;
     inif:Tinifile;
     i,j,maxcount:integer;
     tmpstring,titlestr,tmpfile:string;
   begin
     tmpfile:=savedialog1.filename;
     assignfile(f,tmpfile);
     rewrite(f);
     closefile(f);

     inif:=TInifile.Create(tmpfile);
     inif.WriteString('Data','Title','Time Dependent PEC');
     inif.WriteString('Data','X-Axis','Time (s)');
     inif.WriteString('Data','Y-Axis',yaxis);
     inif.WriteInteger('Data','CurvesNo',curveNo);
     inif.WriteInteger('Data','DataRowsNo',0);
     inif.WriteString('Data','SeriesTitle',stitle);
     inif.WriteString('Data','Datetime',Datetimetostr(Now));
     inif.Free;

     assignfile(f,tmpfile);
     append(f);
  //   writeln(f,ctitle);
     closefile(f);
   end;

begin
  savedialog1.Filter:='Data(*.dat)|*.dat|Text(*.txt)|*.txt';
  savedialog1.defaultext:='dat';
  repeat
   if savedialog1.Execute then
   if fileexists(savedialog1.filename) then
    begin
     response:=messagedlg('Overwrite the existing file?',mtconfirmation,mbYesNoCancel,0);
     case response of
      mrYes: begin
             savedata;
             break;
             end;
      mrCancel: begin Result:=''; exit; end;
     end;    //case end
    end else
    if savedialog1.filename='' then break
     else begin
           savedata;
           break;
          end;
  until (response<>mrNo);
  Result:=savedialog1.filename;
end;

Procedure SaveInstantData(filename,str:string);
var
  f:textfile;
begin
  if fileexists(filename) then
    begin
      assignfile(f,filename);
      append(f);
      writeln(f,str);
      closefile(f);
    end;
end;

function Text2Value(edit:array of Tlabelededit;var value:array of double):boolean;
var
  i,errorcode:Integer;
begin
  for i:=0 to length(value)-1 do
    begin
      Val(edit[i].Text,value[i],errorcode);
       if errorcode<>0 then
        begin
         showmessage('Wrong Number!');
         edit[i].SetFocus;
         edit[i].SelectAll;
         result:=False;
         exit;
        end;
    end;
  result:=True;
end;


 procedure DrawChromaCoord(lamda:array of double);
 var u_coord,v_coord,DomWave_x,DomWave_y,CompWave_x,CompWave_y,DomWave,Pe:double;
  CompWaveJudge:boolean;
  X,Y,Z,x_coord,y_coord,CCT:double;
  Ra,K:double;
  Ri:array[1..15] of double;
  i,j:integer;
  s:string;
 begin
  Tristimulus(lamda,X,Y,Z);
  if (X+Y+Z)=0 then
    begin
     showmessage('X+Y+Z=0!, Improper spectra Data');
     exit;
    end;
  x_coord:=X/(X+Y+Z);
  y_coord:=Y/(X+Y+Z);
  u_coord:=4*x_coord/(-2*x_coord+12*y_coord+3);
  v_coord:=6*y_coord/(-2*x_coord+12*y_coord+3);
  DomWavelength(x_coord,y_coord,DomWave_x,DomWave_y,CompWave_x,CompWave_y,DomWave,Pe,CompWaveJudge);

//  with Spectform do
//   begin    //begin of with

   {with LogForm.LogGrid do
    begin
     Addrow;
     FontColors[0,rowcount-1]:=tmpcolor;
   //  RowHeaders.add(inttostr(rowcount-1));
     cells[0,rowcount-1]:=inttostr(rowcount-1);
     Floats[3,rowcount-1]:=Y*683.0/1000.0;
     Floats[4,rowcount-1]:=milliwatt;
     K:=Y*683/(1000*milliwatt);
     Floats[5,rowcount-1]:=K;
     Floats[6,rowcount-1]:=DomWave;
     Floats[7,rowcount-1]:=pe;
     cells[8,rowcount-1]:='('+floattostr(Round(x_coord*1E4)/1E4)+', '+floattostr(Round(y_coord*1E4)/1E4)+')';
     cells[9,rowcount-1]:='('+floattostr(Round(u_coord*1E4)/1E4)+', '+floattostr(Round(v_coord*1E4)/1E4)+')';
    end;     

    with chart1.Series[chart1.SeriesCount-1]  do
      begin
        if (count>0) then
         begin
          j:=YValues.Locate(MaxYValue);
          with LogForm.LogGrid do
           begin
            Floats[1,rowcount-1]:=XValue[j];
            Floats[2,rowcount-1]:=MaxYValue;
           end;
         end;
      end;    }

 {    seriesxy4.Clear;
     seriesxy4.AddXY(0.333314,0.333288,'E');
     seriesxy4.AddXY(x_coord,y_coord,'L');
     seriesxy4.AddXY(DomWave_x,DomWave_y,floattostr(DomWave));
     if CompWaveJudge=True then seriesxy4.AddXY(CompWave_x,CompWave_y,' ');
     seriesuv3.clear;
     seriesuv3.AddXY(u_coord,v_coord,'L');

     CCT:=FindCCT(x_coord,y_coord,u_coord,v_coord);
     seriesuv3.AddXY(u_coord,v_coord,floattostr(CCT));
     CRI_15Ri(lamda,CCT,Ri);
     Ra:=0;
     for j:=1 to 8 do Ra:=Ra+Ri[j];
     Ra:=round(Ra*10/8)/10;

     memo1.Clear;
     memo1.Lines.Add('x: '+format('%6.4f',[x_coord])+',  y: '+format('%6.4f',[y_coord]));
     memo1.Lines.Add('u: '+format('%6.4f',[u_coord])+',  v: '+format('%6.4f',[v_coord]));
     memo1.Lines.Add('Dom.Wave: '+floattostr(DomWave)+' nm');
     memo1.Lines.Add('Purity: '+format('%5.3f',[Pe]));
     memo1.Lines.Add('CCT: '+floattostr(CCT)+' K');
     memo1.Lines.Add('Ra: '+floattostr(Ra));
     memo1.Lines.Add('Ri[1]...Ri[15]:');
     s:='';
     for j:=1 to 15 do
       begin
         s:=s+format('%6.2f',[Ri[j]])+',  ';
         if (j mod 5)=0 then begin
                               memo1.Lines.Add(s);
                               s:='';
                             end;
       end;                                    }
  {   statusbar1.SimpleText:='Ra='+floattostr(Ra);
     with chart1.Series[chart1.SeriesCount-1]  do
      begin
        if (count>0) then
          begin
          // chart1.Legend.font.Color:=chart1.Series[chart1.SeriesCount-1].SeriesColor;
           title:='Ra='+floattostr(Ra);
          end;
      end;  

     with LogForm.LogGrid do
       begin
         Floats[10,rowcount-1]:=CCT;
         Floats[11,rowcount-1]:=Ra;
         CRISeries.AddXY(K,Ra,cells[0,rowcount-1],tmpcolor);
       end;

     for j:=1 to 15 do
       begin
         LogForm.LogGrid.Floats[11+j,LogForm.LogGrid.rowcount-1]:=Ri[j];
       end; }
 // end;   //end of with
 end;

function ExtractLambda(MSeries:TChartSeries;var Lambda:array of double):boolean;
var
  i,j,k,Wave:integer;
begin
  if (Mseries.MinXValue>780) or (Mseries.MaxXValue<380) then
   begin
    result:=False;
    exit;
   end;
  If (high(Lambda)-low(lambda))<>400 then
    begin
      showmessage('Improper Array, 401 elements required!');
      result:=False;
      exit;
    end;
  k:=0;
  For i:=low(lambda) to high(lambda) do
   begin             // For 1
     Wave:=380-low(Lambda)+i;
     If (Wave<Mseries.MinXValue) or (Wave>Mseries.MaxXValue) then
       begin
         Lambda[i]:=0;
         continue;
       end;
     For j:=k to Mseries.Count-2 do
       begin    // For 2
         If (MSeries.XValue[j]<=Wave) and (Mseries.XValue[j+1]>=Wave) then
           begin
             Lambda[i]:=Mseries.YValue[j]+(Wave-MSeries.XValue[j])*(MSeries.YValue[j+1]-MSeries.YValue[j])/(MSeries.XValue[j+1]-MSeries.XValue[j]);
             k:=j;
             break;
           end else continue;
       end;    // For 2
   end;       // For 1
  Result:=True;
end;            


end.
