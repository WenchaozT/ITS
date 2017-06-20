unit Setting;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, Grids, BaseGrid, AdvGrid, StdCtrls, Buttons, CPort,
  CPortCtl, ComCtrls, TeEngine, Series, TeeProcs, Chart,inifiles,strutils;


type
  TSettingForm = class(TForm)
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    TabSheet2: TTabSheet;
    Label17: TLabel;
    ComComboBox1: TComComboBox;
    ComLed1: TComLed;
    ComPort1: TComPort;
    Shape1: TShape;
    Shape2: TShape;
    Shape3: TShape;
    Shape4: TShape;
    Shape8: TShape;
    Shape12: TShape;
    Shape16: TShape;
    Shape15: TShape;
    Shape11: TShape;
    Shape7: TShape;
    Shape6: TShape;
    Shape10: TShape;
    Shape14: TShape;
    Shape13: TShape;
    Shape9: TShape;
    Shape5: TShape;
    Label1: TLabel;
    Label2: TLabel;
    GroupBox1: TGroupBox;
    CheckBox1: TCheckBox;
    CheckBox2: TCheckBox;
    CheckBox3: TCheckBox;
    CheckBox4: TCheckBox;
    CheckBox5: TCheckBox;
    CheckBox6: TCheckBox;
    CheckBox7: TCheckBox;
    CheckBox8: TCheckBox;
    CheckBox9: TCheckBox;
    CheckBox10: TCheckBox;
    CheckBox11: TCheckBox;
    CheckBox12: TCheckBox;
    CheckBox13: TCheckBox;
    CheckBox14: TCheckBox;
    CheckBox15: TCheckBox;
    CheckBox16: TCheckBox;
    GroupBox3: TGroupBox;
    AdvStringGrid1: TAdvStringGrid;
    OpenDialog1: TOpenDialog;
    Button3: TButton;
    StatusBar: TStatusBar;
    Button4: TButton;
    Button5: TButton;
    OpenDialog2: TOpenDialog;
    SaveDialog1: TSaveDialog;
    Memo1: TMemo;
    TabSheet3: TTabSheet;
    Label3: TLabel;
    Label4: TLabel;
    ComComboBox2: TComComboBox;
    ComboBox1: TComboBox;
    Button9: TButton;
    Button10: TButton;
    Button11: TButton;
    Button12: TButton;
    ComPort2: TComPort;
    Label5: TLabel;
    Edit1: TEdit;
    Edit2: TEdit;
    Label6: TLabel;
    Label7: TLabel;
    Edit4: TEdit;
    Label8: TLabel;
    ComLed2: TComLed;
    Label9: TLabel;
    Edit7: TEdit;
    CheckBox17: TCheckBox;
    TabSheet4: TTabSheet;
    ComPort3: TComPort;
    Label16: TLabel;
    Label15: TLabel;
    Label14: TLabel;
    Label13: TLabel;
    Label12: TLabel;
    Label11: TLabel;
    ComLed3: TComLed;
    ComComboBox3: TComComboBox;
    ComboBox2: TComboBox;
    Button7: TButton;
    Button6: TButton;
    Button2: TButton;
    Button1: TButton;
    Edit12: TEdit;
    Edit11: TEdit;
    Edit10: TEdit;
    Edit9: TEdit;
    Memo2: TMemo;
    Memo3: TMemo;
    Button8: TButton;
    Button13: TButton;
    TabSheet5: TTabSheet;
    ComPort4: TComPort;
    ComPort5: TComPort;
    Timer1: TTimer;
    Button14: TButton;
    Button15: TButton;
    ComComboBox4: TComComboBox;
    ComComboBox5: TComComboBox;
    ComLed4: TComLed;
    ComLed5: TComLed;
    Label10: TLabel;
    Label18: TLabel;
    Memo4: TMemo;
    Memo5: TMemo;
    ComboBox3: TComboBox;
    procedure FormCreate(Sender: TObject);
    procedure AdvStringGrid1GetEditorType(Sender: TObject; ACol,
      ARow: Integer; var AEditor: TEditorType);
    procedure delaygrid1GetEditorType(Sender: TObject; ACol, ARow: Integer;
      var AEditor: TEditorType);
    procedure AdvStringGrid1ClickCell(Sender: TObject; ARow,
      ACol: Integer);
    procedure Button3Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);
    procedure Button5Click(Sender: TObject);
    procedure Edit1Change(Sender: TObject);
    procedure Edit1KeyPress(Sender: TObject; var Key: Char);
    procedure Edit2KeyPress(Sender: TObject; var Key: Char);
    procedure Edit3KeyPress(Sender: TObject; var Key: Char);
    procedure Edit4KeyPress(Sender: TObject; var Key: Char);
    procedure Button6Click(Sender: TObject);
    procedure Button7Click(Sender: TObject);
    procedure Button9Click(Sender: TObject);
    procedure Button10Click(Sender: TObject);
    procedure Button12Click(Sender: TObject);
    procedure Button11Click(Sender: TObject);
    procedure Edit2Change(Sender: TObject);
    procedure Edit4Change(Sender: TObject);
    procedure CheckBox17Click(Sender: TObject);
    procedure Edit7Change(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Edit12KeyPress(Sender: TObject; var Key: Char);
    procedure Edit11KeyPress(Sender: TObject; var Key: Char);
    procedure Edit9KeyPress(Sender: TObject; var Key: Char);
    procedure Edit10KeyPress(Sender: TObject; var Key: Char);
    procedure Button1Click(Sender: TObject);
    procedure Edit12Change(Sender: TObject);
    procedure Button8Click(Sender: TObject);
    procedure Button13Click(Sender: TObject);
    procedure Button14Click(Sender: TObject);
    procedure ComComboBox4Change(Sender: TObject);
    procedure Button15Click(Sender: TObject);
    procedure ComComboBox5Change(Sender: TObject);
    procedure Timer1Timer(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  SettingForm: TSettingForm;

  t,c,co,huakuai_zero,guidao_zero:integer;
  an,ni,r,ni_huakuai:double;
    de,v,d:string;

implementation

uses LTSMAIN,commonmethods, Calibrate;

{$R *.dfm}

procedure TSettingForm.FormCreate(Sender: TObject);
var
  i,j,n,tempn:integer;
  myinifile:Tinifile;
  filename,cpath:string;
StrList:Tstringlist;
str:string;
chnum:array of integer;

begin
   EnumComPorts(comComboBox1.Items);
   EnumComPorts(comComboBox2.Items);
   EnumComPorts(comComboBox3.Items);
  height:=555;
  width:=400;
  top:=(Screen.Height-self.Height )div 2;
  left:=(Screen.Width-self.Width )div 2;
  v:='8000';
  ni:=0;
  an:=0;
  huakuai_zero:=0;
  guidao_zero:=0;
  //comport2.WriteStr('VX,'+v+chr(13));

  d:='8000';

for i:=1 to 16 do
  integrationtime[i]:=strtoint(edit7.text)*1000;

  For i:=1 to  AdvstringGrid1.RowCount-1 do
  AdvstringGrid1.Alignments[1,i]:=TaRightJustify;
   comcombobox1.ItemIndex:=0;
   for i:=1 to 16 do
     channelnum[i]:=1;
   sdiappform.toolbutton8.Click;   //初始化光谱仪
    comcombobox2.ItemIndex:=1;
   //导入校准文件
   for i:=0 to 15 do
   begin
     myinifile:=TInifile.Create(ExtractFilePath(paramstr(0))+'program.ini');
     filename:=myinifile.ReadString('calfile','cal'+inttostr(i+1),'');
     cpath:=ExtractFilePath(paramstr(0))+calpath+'\';
     if fileExists(cpath+filename)=false then
     begin
       Tcheckbox(findComponent('checkBox'+inttostr(i+1))).enabled:=false;
       Tcheckbox(findComponent('checkBox'+inttostr(i+1))).checked:=false;
       continue;
     end;
     advstringgrid1.Cells[1,i+1]:=filename;
         StrList:=TStringList.Create;
     Strlist.LoadFromFile(cpath+filename);
     j:=0;
     setlength(CalVal,16,numberofpixels);
     for n:=strlist.Count-1 downto 0 do
     begin
       CalVal[i][numberofpixels-j-1]:=strtofloat(strlist.Strings[n]);
       j:=j+1;
       if j=numberofpixels then break;
     end;
   end;
   //导入暗光谱
  setlength(chnum,16);
  for i:=0 to 15 do
  begin
    chnum[i]:=0;
  end;
  StrList:=TStringList.Create;
  Strlist.LoadFromFile('dark.dak');
  setlength(darkcounts,16,numberofpixels);
  for n:=0 to 5 do
    if strlist[n]='darkdata' then
    begin
      str:=strlist[n+1];
      for i:=0 to 15 do
      begin
      tempn:=strtoint(copy(str,1,pos(#9,str)-1))-1;
      if tempn=i then
      begin
        str:=copy(str,pos(#9,str)+1,length(str)-pos(#9,str));
        chnum[i]:=1;
        if str='' then break;
      end;
      end;
      for j:=n+2 to strlist.Count-1 do
      begin
        str:=strlist[j];
        for i:=0 to 15 do
        begin
        if chnum[i]=1 then
        begin
          darkcounts[i][j-n-2]:=strtofloat(copy(str,1,pos(#9,str)-1));
          str:=copy(str,pos(#9,str)+1,length(str)-pos(#9,str));
        end else
        begin
          darkcounts[i][j-n-2]:=0;
        end;
        end;
      end;
    end;
    //导入视见函数
  filename:='photopicEfficiency.ini';
   StrList:=TStringList.Create;
  Strlist.LoadFromFile(ExtractFilePath(paramstr(0))+filename);
  setlength(photopic,strlist.Count);
  for i:=0 to strlist.Count-1 do
      photopic[i]:=strtofloat(strlist.Strings[i]);
end;

procedure TSettingForm.AdvStringGrid1GetEditorType(Sender: TObject; ACol,
  ARow: Integer; var AEditor: TEditorType);
begin
  case acol of
    0: Aeditor:=edButton;
  end;
end;

procedure TSettingForm.delaygrid1GetEditorType(Sender: TObject; ACol,
  ARow: Integer; var AEditor: TEditorType);
begin
  case acol of
    0,1: Aeditor:=edPositiveNumeric;
    2: Aeditor:=edFloat;
    3: Aeditor:=edcombolist;
   end;
end;

procedure TSettingForm.AdvStringGrid1ClickCell(Sender: TObject; ARow,
  ACol: Integer);
var
  StrList:Tstringlist;
  j,n:integer;
begin
  if (Acol=0) and (Arow>0) and opendialog1.Execute then
    begin
      AdvStringGrid1.Cells[1,Arow]:=opendialog1.filename;
     StrList:=TStringList.Create;
     Strlist.LoadFromFile(opendialog1.filename);
     j:=0;
     setlength(CalVal,16,numberofpixels);
     for n:=strlist.Count-1 downto 0 do
     begin
       CalVal[arow-1][numberofpixels-j-1]:=strtofloat(strlist.Strings[n]);
       j:=j+1;
       if j=numberofpixels then break;
     end;
       Tcheckbox(findComponent('checkBox'+inttostr(Arow))).enabled:=true;
       Tcheckbox(findComponent('checkBox'+inttostr(Arow))).checked:=true;
    end;
end;

procedure TSettingForm.Button3Click(Sender: TObject);
var i:integer;
begin
for i:=1 to 16 do
if tcheckbox(findcomponent('checkbox'+inttostr(i))).Checked then
begin
  channelnum[i]:=1;
  tshape(findcomponent('shape'+inttostr(i))).Brush.Color:=clred;
end else
begin
  channelnum[i]:=0;
  tshape(findcomponent('shape'+inttostr(i))).Brush.Color:=clgray;
end;

end;


procedure TSettingForm.Button4Click(Sender: TObject);
var i:integer;
begin
  setlength(darkcounts,16,numberofpixels);
  for i:=1 to 16 do
  begin
  if channelnum[i]=1 then
  begin
    sdiappform.ComboBox1.ItemIndex:=i;
    sdiappform.ToolButton10.Click;
    sleep(100);
    wrapper.setIntegrationTime(0, integrationtime[i]);
    wrapper.setBoxcarWidth(0,5);//平滑
	  wrapper.setScansToAverage(0,3);//平均3次
	  wrapper.setCorrectForElectricalDark(0,1);//(0,1)启动暗噪声自动校正
    darkcounts[i-1]:= wrapper.getSpectrum(0);
  end;
  end;
  sdiappform.ComboBox1.ItemIndex:=0;
end;

procedure TSettingForm.Button5Click(Sender: TObject);
var
  StrList:Tstringlist;
  str:string;
  i,j,n,tempn:integer;
  chnum:array of integer;
begin
if  OpenDialog2.Execute then
begin
  StrList:=TStringList.Create;
  Strlist.LoadFromFile(opendialog2.FileName);
  setlength(darkcounts,16,numberofpixels);
  setlength(chnum,16);
  for i:=0 to 15 do
  begin
    chnum[i]:=0;
  end;
  for n:=0 to 5 do
    if strlist[n]='darkdata' then
    begin
      str:=strlist[n+1];
      for i:=0 to 15 do
      begin
        tempn:=strtoint(copy(str,1,pos(#9,str)-1))-1;
        if tempn=i then
        begin
          str:=copy(str,pos(#9,str)+1,length(str)-pos(#9,str));
          chnum[i]:=1;
        if str='' then break;
        end;
      end;
      for j:=n+2 to strlist.Count-1 do
      begin
        str:=strlist[j];
        for i:=0 to 15 do
        begin
        if chnum[i]=1 then
        begin
          darkcounts[i][j-n-2]:=strtofloat(copy(str,1,pos(#9,str)-1));
          str:=copy(str,pos(#9,str)+1,length(str)-pos(#9,str));
        end else
        begin
          darkcounts[i][j-n-2]:=0;
        end;
      end;
      end;
    end;
end;
end;


procedure TSettingForm.Edit1Change(Sender: TObject);
begin
if edit1.Text=''then
ni:=0
else
ni:=strtofloat(edit1.Text);
d:=floattostr(800*ni);
end;

procedure TSettingForm.Edit1KeyPress(Sender: TObject; var Key: Char);
begin
  if not (key in ['0'..'9','.',#8,#13]) then
  key:=#0;
end;

procedure TSettingForm.Edit2KeyPress(Sender: TObject; var Key: Char);
begin
  if not (key in ['0'..'9','.',#8,#13]) then
  key:=#0;
end;

procedure TSettingForm.Edit3KeyPress(Sender: TObject; var Key: Char);
begin
  if not (key in ['0'..'9','.',#8,#13]) then
  key:=#0;
end;

procedure TSettingForm.Edit4KeyPress(Sender: TObject; var Key: Char);
begin
  if not (key in ['0'..'9','.',#8,#13]) then
  key:=#0;
end;

procedure TSettingForm.Button6Click(Sender: TObject);
var readstr:string;
  xpos:integer;
begin
  if Comport3.Connected then
  begin
    //消除验证连接（Comport3.Connected）的反馈
    Comport3.ReadStr(readstr,10);
    Comport3.WriteStr('?X'+CHR(13));
    sleep(200);
    Comport3.ReadStr(readstr,30);
    xpos:=pos('?XX',readstr)+5;
    readstr:=copy(readstr,xpos,length(readstr)-xpos);
    readstr:=inttostr(strtoint(readstr)-huakuai_zero);
    Memo3.Text := Memo3.Text + '当前相对位置为：'+ readstr+#13#10;
    Memo3.SelLength := Length(Memo3.Text);
  end;
end;

procedure TSettingForm.Button7Click(Sender: TObject);
var de2:string;
  readStr:string;
  steps:Integer;
begin
  if Comport3.Connected then
  begin
      //正反转
      if combobox2.ItemIndex=1 then
        de2:='+'
      else
        de2:='-';
      Edit9.Text := floattostr(strtofloat(Edit10.Text)*Sin(PI*strtofloat(Edit12.Text)/180));
     //计算需要前进的步数 10单位换算， 400一圈的步数，8 螺杆导程
      steps := Round(10*strtofloat(Edit9.Text)*400/8);
    //设置速度
      if strtoint(Edit11.Text)<255 then
        begin
         Comport3.WriteStr('V'+inttostr(strtoint(Edit11.Text)div 10)+CHR(13));
        end
      else
        begin
          Memo3.Text := Memo3.Text + '速度超过最大值255' +#13#10;
          Memo3.SelLength := Length(Memo3.Text);
          exit;
        end;
      sleep(100);
    //设置运动步数
      Comport3.WriteStr('X'+de2+inttostr(steps)+CHR(13));
      sleep(100);
    //显示仪器的反馈
      Comport3.ReadStr(readstr,30);
      Memo3.Text := Memo3.Text + readstr +#13#10;
      Memo3.SelLength := Length(Memo3.Text);
  end;
end;

procedure TSettingForm.Button9Click(Sender: TObject);
var
  readstr:string;
  steps:Integer;
begin
  if Comport2.Connected then
  begin
  //正反转
    if ComboBox1.ItemIndex=1 then
      de:='-'
    else
      de:='+';
     //脉冲数
    steps := Round(strtofloat(Edit1.Text)*800);
    //设置速度
    if strtoint(Edit2.Text) <25 then
    begin
      Comport2.WriteStr('VX,'+inttostr(strtoint(Edit2.Text)*800)+CHR(13));
      sleep(100);
      Comport2.ReadStr(readstr,20);
    end
    else
    begin
      Memo2.Text := Memo2.Text + '速度超过最大值25' +#13#10;
      Memo2.SelLength := Length(Memo2.Text);
      exit;
    end;
    sleep(100);
    //设置运动步数
    Comport2.WriteStr(de+'X,'+inttostr(steps)+CHR(13));
    sleep((3000*strtoint(edit1.Text)) div strtoint(edit2.text)+1500);
    //显示仪器的反馈
    Comport2.ReadStr(readstr,50);
    if readstr <> '' then
    begin
    readstr:=copy(readstr,pos('?X,',readstr)+3,length(readstr)-pos('?X,',readstr)-3);
    readstr:=inttostr(strtoint(readstr)-guidao_zero);
    Memo2.Text:=Memo2.Text+'当前轨道位置为：'+readstr+#13#10;
    Memo2.SelLength := Length(Memo2.Text);
    end;
  end;
end;

procedure TSettingForm.Button10Click(Sender: TObject);
var readstr:string;
begin
  if Comport2.Connected then
  begin
    comport2.WriteStr('?X'+chr(13));
    sleep(200);
    comport2.ReadStr(readstr,100);
    readstr:=copy(readstr,pos('?X,',readstr)+3,length(readstr)-pos('?X,',readstr)-3);
    readstr:=inttostr(strtoint(readstr)-guidao_zero);
    Memo2.Text:=Memo2.Text+'当前轨道位置为：'+readstr+#13#10;
    Memo2.SelLength := Length(Memo2.Text);
  end;
end;

procedure TSettingForm.Button12Click(Sender: TObject);
var readstr:string;
begin
  if Comport2.Connected then
  begin
    comport2.WriteStr('?X'+chr(13));
    sleep(200);
    comport2.ReadStr(readstr,100);
    readstr:=copy(readstr,pos('?X,',readstr)+3,length(readstr)-pos('?X,',readstr)-3);
    guidao_zero:=strtoint(readstr);
    Memo2.Text:=Memo2.Text+'轨道原点设置为：'+inttostr(guidao_zero)+#13#10;
    Memo2.SelLength := Length(Memo2.Text);
  end;
end;

procedure TSettingForm.Button11Click(Sender: TObject);
var
  z:integer;
  readstr:string;
begin
if comport2.Connected then
  begin
    comport2.WriteStr('?X'+chr(13));
    sleep(200);
    comport2.ReadStr(readstr,100);
    if readstr<>'' then
      begin
      readstr:=copy(readstr,pos('?X,',readstr)+3,length(readstr)-pos('?X,',readstr)-3);
      z:=strtoint(readstr);
     if z>guidao_zero then
      begin
      comport2.WriteStr('-'+'X,'+inttostr(z-guidao_zero)+chr(13));
      sleep(1000*(strtoint(inttostr(z-guidao_zero)) div (800*strtoint(edit2.text)))+500);
      end
     else
      begin
      comport2.WriteStr('+'+'X,'+inttostr(guidao_zero-z)+chr(13));
      sleep(1000*(strtoint(inttostr(guidao_zero-z)) div (800*strtoint(edit2.text)))+500);
      end;
     comport2.ReadStr(readstr,100);
     Memo2.Text:=Memo2.Text+'当前轨道位置已重置'+#13#10;
     Memo2.SelLength := Length(Memo2.Text);
    end;
  end;
end;

procedure TSettingForm.Edit2Change(Sender: TObject);
var a1:integer;
begin
 if edit2.Text=''then
  a1:=0
 else
  a1:=strtoint(edit2.Text);
  v:=inttostr(800*a1);
    if a1>25 then
      showmessage('The speed is more then the maximum "25"!')
  else
   comport2.WriteStr('VX,'+v+chr(13));
   //SDIAppForm.timer1.Interval:=1000*(1+round(ni) div a1);
end;


procedure TSettingForm.Edit4Change(Sender: TObject);
begin
if edit4.Text=''then
an:=0
else
an:=strtoint(edit4.Text);
end;

{procedure TSettingForm.Button1Click(Sender: TObject);
var
i,a,b,c,d,e:integer;
begin
for i:=1 to 16 do
if channelnum[i]=1 then
begin
  sdiappform.combobox1.ItemIndex:=i-1;
  sdiappform.toolbutton10.Click;
  a:=0;
  b:=100;
  d:=0;
  e:=0;
while d=0 do            //二分法求积分时间
  begin
    wrapper.setIntegrationTime(0, b);
    pixels := wrapper.getSpectrum(0);
    if wrapper.isSaturated(0) then
     begin
      while abs(a-b)>0.01*b do   //精度
       begin
        inc(e);
        c:=((a+b) div 2);
        wrapper.setIntegrationTime(0, c);
         pixels := wrapper.getSpectrum(0);
         if wrapper.isSaturated(0) then          //判断饱和
          b:=c
          else a:=c;                            //缩小区间
      end;
      inc(e);
      wrapper.setIntegrationTime(0, c);
      integrationtime[i]:=round(c*0.9);
      d:=1;
     end
    else begin
      inc(e);
      a:=b;
      if b<100000 then
         b:=b*10
      else b:=b+100000;
      if b>2000000 then
      begin
        integrationtime[i]:=round(b*0.9);
        d:=1;
      end;
    end;

 end;
 end;
  end; }


procedure TSettingForm.CheckBox17Click(Sender: TObject);
var
i,a,b,c,d,e,f:integer;
begin

if checkbox17.Checked then
 begin
 if messagedlg('make sure that the LED is lighting!',mtwarning,[mbYes,mbNo],0)=mrYes then
  begin
for i:=1 to 16 do
if channelnum[i]=1 then
  begin
  sdiappform.combobox1.ItemIndex:=i-1;
  sdiappform.toolbutton10.Click;
  a:=0;
  b:=2000000;
  d:=0;
  e:=0;
while d=0 do            //二分法求积分时间
   begin
    wrapper.setIntegrationTime(0, b);
    pixels := wrapper.getSpectrum(0);
    if wrapper.isSaturated(0) then
     begin
      while abs(a-b)>0.01*b do   //精度
       begin
        inc(e);
        c:=((a+b) div 2);
        wrapper.setIntegrationTime(0, c);
         pixels := wrapper.getSpectrum(0);
         if wrapper.isSaturated(0) then          //判断饱和
          b:=c
          else a:=c;                            //缩小区间
      end;
      inc(e);
      wrapper.setIntegrationTime(0, c);
      integrationtime[i]:=round(c*0.9);
      d:=1;
     end
    else begin
      inc(e);
      a:=b;
      if b<100000 then
         b:=b*10
      else b:=b+100000;
      if b>=2000000 then
      begin
        integrationtime[i]:=round(b*0.9);
        d:=1;
      end;
    end;
    end;
   end;
 end
else
for f:=1 to 16 do
  integrationtime[f]:=strtoint(edit7.text)*1000;
end;
end;

procedure TSettingForm.Edit7Change(Sender: TObject);
var e:integer;
begin
   if edit7.Text=''then
 e:=0
 else
   for e:=1 to 16 do
  integrationtime[e]:=strtoint(edit7.text)*1000;
end;




procedure TSettingForm.Button2Click(Sender: TObject);
var readstr:string;
begin
  if ComComboBox3.ItemIndex=-1 then
    Memo3.text := Memo3.text +'请选择所要连接的接口'+#13#10
  else
    try
      Comport3.Port:=ComComboBox3.Items[comcombobox3.ItemIndex];
      Comport3.Open;
      Comport3.WriteStr('?R'+CHR(13));
      sleep(200);
      Comport3.ReadStr(readstr,10);
      if pos('OK',readstr)<>0 then
      begin
        Memo3.text := Memo3.text + '7SC is Connected'+#13#10;
        Memo3.SelLength := Length(Memo3.Text);
      end
      else
        Memo3.text := Memo3.text + '连接失败!'+#13#10;
        Memo3.SelLength := Length(Memo3.Text);
    Except
      Memo3.text := Memo3.text + '连接失败!'+#13#10;
      Memo3.SelLength := Length(Memo3.Text);
    end;
end;

procedure TSettingForm.Edit12KeyPress(Sender: TObject; var Key: Char);
begin
  if not (key in ['0'..'9','.',#8,#13]) then
    key:=#0;
end;

procedure TSettingForm.Edit11KeyPress(Sender: TObject; var Key: Char);
begin
  if not (key in ['0'..'9','.',#8,#13]) then
    key:=#0;
end;

procedure TSettingForm.Edit9KeyPress(Sender: TObject; var Key: Char);
begin
  if not (key in ['0'..'9','.',#8,#13]) then
    key:=#0;
end;

procedure TSettingForm.Edit10KeyPress(Sender: TObject; var Key: Char);
begin
  if not (key in ['0'..'9','.',#8,#13]) then
    key:=#0;
end;

procedure TSettingForm.Button1Click(Sender: TObject);
var readstr:string;
  xpos:integer;
begin
  if Comport3.Connected then
  begin
    Comport3.ReadStr(readstr,10);
    Comport3.WriteStr('?X'+CHR(13));
    sleep(200);
    Comport3.ReadStr(readstr,20);
    xpos:=pos('?XX',readstr)+5;
    huakuai_zero:=strtoint(copy(readstr,xpos,length(readstr)-xpos));
    Memo3.Text := Memo3.Text +'当前零点的绝对位置：' +inttostr(huakuai_zero) +#13#10;
    Memo3.SelLength := Length(Memo3.Text);
  end;
end;


procedure TSettingForm.Edit12Change(Sender: TObject);
begin
if edit12.Text=''then
  ni_huakuai:=0
else
  ni_huakuai:=strtofloat(edit12.Text);
end;

procedure TSettingForm.Button8Click(Sender: TObject);
var readstr:string;
begin
  if ComComboBox2.ItemIndex=-1 then
    Memo2.text := Memo2.text +'请选择所要连接的接口'+#13#10
  else
    try
      Comport2.Port:=ComComboBox2.Items[ComComboBox2.ItemIndex];
      Comport2.Open;
      Comport2.WriteStr(CHR(13));
      sleep(200);
      Comport2.ReadStr(readstr,10);
      if pos('OK',readstr)<>0 then
      begin
        Memo2.text := Memo2.text + 'SC300 is Connected'+#13#10;
        Memo2.SelLength := Length(Memo2.Text);
      end
      else
        Memo2.text := Memo2.text + '连接失败!'+#13#10;
        Memo2.SelLength := Length(Memo2.Text);
    Except
      Memo2.text := Memo2.text + '连接失败!'+#13#10;
      Memo2.SelLength := Length(Memo2.Text);
    end;
end;

procedure TSettingForm.Button13Click(Sender: TObject);
begin
  settingform.Close;
end;

procedure TSettingForm.ComComboBox4Change(Sender: TObject);
begin
  try
    comport4.Port :=ComComboBox4.Items[comcombobox4.ItemIndex];
    Comport4.Open;
  Except
      Memo4.text := Memo4.text + '连接失败!'+#13#10;
      Memo4.SelLength := Length(Memo4.Text);
  end;
end;

procedure TSettingForm.Button14Click(Sender: TObject);
begin
  if Button15.Caption = '实时测量' then
  begin
    Button15.Caption:='停止测量';
    Timer1.Enabled:=True;
  end
  else if Button15.Caption='停止测量' then
  begin
    Button15.Caption := '实时测量';
    Timer1.Enabled:=False;
  end;
end;

procedure TSettingForm.Button15Click(Sender: TObject);
var readstr:string;
  end_pos,start_pos:Integer;
begin
  if comport4.Connected and (Button15.Caption='实时测量') then
  begin
    comport4.readstr(readstr,100);
    end_pos:=LastDelimiter('cm',readstr);
    delete(readstr,end_pos-1,2);
    start_pos:=LastDelimiter('cm',readstr);
    readstr:=copy(readstr,start_pos+1,(end_pos-start_pos-1));
    memo4.Text:=memo4.Text+readstr+' cm'+#13#10;
    Memo4.SelLength := Length(Memo4.Text);
  end;
  if comport5.Connected and (Button15.Caption='实时测量') then
  begin
    comport5.readstr(readstr,100);
    end_pos:=LastDelimiter('cm',readstr);
    delete(readstr,end_pos-1,2);
    start_pos:=LastDelimiter('cm',readstr);
    readstr:=copy(readstr,start_pos+1,(end_pos-start_pos-1));
    memo5.Text:=memo5.Text+readstr+' cm'+#13#10;
    Memo5.SelLength := Length(Memo5.Text);
  end;
end;

procedure TSettingForm.ComComboBox5Change(Sender: TObject);
begin
  try
    comport5.Port :=ComComboBox5.Items[comcombobox5.ItemIndex];
    Comport5.Open;
  Except
      Memo5.text := Memo5.text + '连接失败!'+#13#10;
      Memo5.SelLength := Length(Memo5.Text);
  end;
end;

procedure TSettingForm.Timer1Timer(Sender: TObject);
var readstr:string;
begin
  if comport4.Connected then
  begin
    comport4.readstr(readstr,100);
    memo4.Text:=memo4.Text+readstr;
    Memo4.SelLength := Length(Memo4.Text);
  end;
  if comport5.Connected then
  begin
    comport4.readstr(readstr,100);
    memo4.Text:=memo4.Text+readstr;
    Memo4.SelLength := Length(Memo4.Text);
  end;
end;

end.
