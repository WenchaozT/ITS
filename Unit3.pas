unit Unit3;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, TeEngine, Series, ExtCtrls, TeeProcs, Chart, StdCtrls, TeeComma;

type
  TForm3 = class(TForm)
    Chart1: TChart;
    Series1: TLineSeries;
    Series2: TLineSeries;
    Series3: TLineSeries;
    Series4: TLineSeries;
    Series5: TLineSeries;
    Series6: TLineSeries;
    Series7: TLineSeries;
    Series8: TLineSeries;
    Series9: TLineSeries;
    Series10: TLineSeries;
    Series11: TLineSeries;
    Series12: TLineSeries;
    Series13: TLineSeries;
    Series14: TLineSeries;
    Series16: TLineSeries;
    Series17: TLineSeries;
    Edit1: TEdit;
    Edit2: TEdit;
    Button1: TButton;
    Label1: TLabel;
    Label2: TLabel;
    procedure FormCreate(Sender: TObject);
    procedure Button1Click(Sender: TObject);
  //  procedure Chart1ClickSeries(Sender: TCustomChart; Series: TChartSeries;
   //   ValueIndex: Integer; Button: TMouseButton; Shift: TShiftState; X,
 //     Y: Integer);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form3: TForm3;

implementation

uses LTSMAIN;


{$R *.dfm}

procedure TForm3.FormCreate(Sender: TObject);
begin
Left:=SDIAppForm.ClientWidth div 2;
top:=0;
Width:=SDIAppForm.ClientWidth div 2 - 10;
Height:=SDIAppForm.ClientHeight div 3-5;
end;

procedure TForm3.Button1Click(Sender: TObject);
begin
  if strtofloat(edit1.Text)<195 then
  begin
    showmessage('Out Of Range');
    exit;
  end;
  if strtofloat(edit2.Text)>1116 then
  begin
    showmessage('Out Of Range');
    exit;
  end;
  if strtofloat(edit1.Text)>=strtofloat(edit2.Text) then
  begin
    showmessage('min must < max');
    exit;
  end;
  chart1.BottomAxis.Maximum:=strtofloat(edit2.Text);
  chart1.BottomAxis.Minimum:=strtofloat(edit1.Text);
end;



end.
