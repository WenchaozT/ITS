unit Data;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, BaseGrid, AdvGrid, ComCtrls, StdCtrls;

type
  TDataForm = class(TForm)
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    AdvStringGrid1: TAdvStringGrid;
    TabSheet2: TTabSheet;
    AdvStringGrid2: TAdvStringGrid;
    TabSheet3: TTabSheet;
    AdvStringGrid3: TAdvStringGrid;
    TabSheet4: TTabSheet;
    AdvStringGrid4: TAdvStringGrid;
    TabSheet5: TTabSheet;
    AdvStringGrid5: TAdvStringGrid;
    TabSheet6: TTabSheet;
    AdvStringGrid6: TAdvStringGrid;
    TabSheet7: TTabSheet;
    AdvStringGrid7: TAdvStringGrid;
    TabSheet8: TTabSheet;
    AdvStringGrid8: TAdvStringGrid;
    TabSheet9: TTabSheet;
    AdvStringGrid9: TAdvStringGrid;
    TabSheet10: TTabSheet;
    AdvStringGrid10: TAdvStringGrid;
    TabSheet11: TTabSheet;
    AdvStringGrid11: TAdvStringGrid;
    TabSheet12: TTabSheet;
    AdvStringGrid12: TAdvStringGrid;
    TabSheet13: TTabSheet;
    AdvStringGrid13: TAdvStringGrid;
    TabSheet14: TTabSheet;
    AdvStringGrid14: TAdvStringGrid;
    TabSheet15: TTabSheet;
    AdvStringGrid15: TAdvStringGrid;
    TabSheet16: TTabSheet;
    AdvStringGrid16: TAdvStringGrid;
    Edit3: TEdit;
    Label1: TLabel;
    Edit1: TEdit;
    Label3: TLabel;
    procedure FormShow(Sender: TObject);
    procedure FormCreate(Sender: TObject);

  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  DataForm: TDataForm;
    procedure advstr_ini();
    procedure datadisplay(channelnow:integer;peakwave,x_coord,Y_coord,U_coord,V_coord,CCT2,Lamda,CRI2,lx,irrad:double);overload;
implementation

{$R *.dfm}
uses LTSmain,chartf2,commonmethods;

procedure advstr_ini();
var i:integer;
begin
for i:=1 to 16 do
with tadvstringgrid(dataform.FindComponent('advstringgrid'+inttostr(i))) do
begin
  width:=680;
  rowcount:=1;
  ColCount:=11;
  ColWidths[0]:=25;
  Cells[1,0]:='time';
  ColWidths[1]:=65;
  cells[2,0]:='running time';
  ColWidths[1]:=65;
  cells[3,0]:='Irradiance';
  colwidths[3]:=58;
  cells[4,0]:='illuminance';
  colwidths[4]:=68;
  Cells[5,0]:='PeakWave';
  ColWidths[5]:=68;
  Cells[6,0]:='DomWave';
  ColWidths[6]:=68;
  Cells[7,0]:='(x,y)';
  ColWidths[7]:=85;
  Cells[8,0]:='(u,v)';
  ColWidths[8]:=85;
  Cells[9,0]:='CCT';
  ColWidths[9]:=40;
  Cells[10,0]:='CRI';
  ColWidths[10]:=40;

end;
end;

procedure datadisplay(channelnow:integer;peakwave,x_coord,Y_coord,U_coord,V_coord,CCT2,Lamda,CRI2,lx,irrad:double);overload;
begin
with tadvstringgrid(dataform.FindComponent('advstringgrid'+inttostr(channelnow))) do
begin
  RowCount:=RowCount+1;
  Cells[0,RowCount-1]:=inttostr(RowCount-1);
  Cells[1,RowCount-1]:=timetostr(get_time);
  Cells[2,RowCount-1]:=timetostr(test_time);
  cells[3,rowcount-1]:=floattostr(round(irrad*100)/100);
  Cells[4,RowCount-1]:=floattostr(round(lx*100)/100);
  Cells[5,RowCount-1]:=floattostr(round(PeakWave*100)/100);
  Cells[6,RowCount-1]:=floattostr(round(lamda*100)/100);
  Cells[7,RowCount-1]:='('+floattostr(round(x_coord*1000)/1000)+','+floattostr(round(y_coord*1000)/1000)+')';
  Cells[8,RowCount-1]:='('+floattostr(round(u_coord*1000)/1000)+','+floattostr(round(v_coord*1000)/1000)+')';
  Cells[9,RowCount-1]:=floattostr(CCT2);
  Cells[10,RowCount-1]:=floattostr(CRI2);
end;

end;

procedure TDataForm.FormShow(Sender: TObject);
begin
  advstr_ini();
end;



procedure TDataForm.FormCreate(Sender: TObject);
begin
  top:=0;
  left:=0;
  height:=2 * SDIAppForm.ClientHeight div 5-5;
  width:=SDIAppForm.ClientWidth div 2-5;
end;

end.
