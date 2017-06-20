unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, TeEngine, Series, ExtCtrls,TeeProcs, Chart, TeeComma, ComCtrls,
  TeeChartBook;

type
  TForm1 = class(TForm)
    ChartBook1: TChartBook;
    TabSheet1: TTabSheet;
    Chart1: TChart;
    Series1: TLineSeries;
    TeeCommander1: TTeeCommander;
    TabSheet2: TTabSheet;
    Chart2: TChart;
    TeeCommander2: TTeeCommander;
    Series2: TLineSeries;
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

uses LTSMAIN;

{$R *.dfm}

procedure TForm1.FormCreate(Sender: TObject);
begin
  Left:=SDIAppForm.ClientWidth div 2;
  top:=SDIAppForm.ClientHeight div 3 -5;
  Height:=2*SDIAppForm.ClientHeight div 3 -50;
  width:=SDIAppForm.ClientWidth div 2 -10;
//InitSeries;
end;

end.
