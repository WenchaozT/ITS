unit chartf2;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, TeEngine, Series, ExtCtrls, TeeProcs, Chart, ComCtrls, ToolWin,
  TeeSurfa, TeePoin3, TeeTriSurface, TeeFunci, TeeComma, StdCtrls,
  TeeTools, TeePageNumTool, TeCanvas, TeePenDlg, TeeFilters,
  TeePreviewPanel, TeeCCIFunction, TeeChartBook, TeeURL, TeeSeriesTextEd;

type
  Tform2 = class(TForm)
    ChartBook1: TChartBook;
    TabSheet1: TTabSheet;
    Chart1: TChart;
    Panel1: TPanel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    ChartTool1: TPageNumTool;
    TabSheet2: TTabSheet;
    Chart2: TChart;
    SurfaceSeries1: TSurfaceSeries;
    PageNumTool1: TPageNumTool;
    TeeCommander1: TTeeCommander;
    TeeCommander2: TTeeCommander;
    Label1: TLabel;
    SeriesTextSource1: TSeriesTextSource;
    Series1: TSurfaceSeries;
    StaticText1: TStaticText;
    StaticText2: TStaticText;
    StaticText3: TStaticText;
    StaticText4: TStaticText;
    StaticText5: TStaticText;
    StaticText6: TStaticText;
    StaticText7: TStaticText;
    StaticText8: TStaticText;
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  form2: Tform2;
  old_width,old_height:integer;

implementation

uses LTSMAIN;

{$R *.dfm}

procedure Tform2.FormCreate(Sender: TObject);
begin
Left:=0;
top:=2*SDIAppForm.ClientHeight div 5;
Width:=SDIAppForm.ClientWidth div 2-5;
Height:=3*SDiAppForm.ClientHeight div 5-55;
old_width:=Width;
old_height:=Height;
//Panel1.Left:=Width - 150;
//Panel1.top:=form2.ClientHeight div 5;
//Panel2.Left:=Width - 150;
//Panel2.top:=form2.ClientHeight div 5;
end;

end.
