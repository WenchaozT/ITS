object Form1: TForm1
  Left = 611
  Top = 242
  BorderStyle = bsDialog
  Caption = '2D Form'
  ClientHeight = 380
  ClientWidth = 473
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  FormStyle = fsMDIChild
  OldCreateOrder = False
  Position = poDefault
  Visible = True
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object ChartBook1: TChartBook
    Left = 0
    Top = 0
    Width = 473
    Height = 380
    ActivePage = TabSheet1
    Align = alClient
    TabOrder = 0
    object TabSheet1: TTabSheet
      Caption = #27839#36712#36947#20998#24067
      object Chart1: TChart
        Left = 0
        Top = 33
        Width = 465
        Height = 321
        Legend.Visible = False
        Title.Font.Height = -20
        Title.Text.Strings = (
          '2D')
        BottomAxis.Automatic = False
        BottomAxis.AutomaticMaximum = False
        BottomAxis.AutomaticMinimum = False
        BottomAxis.ExactDateTime = False
        BottomAxis.Maximum = 90.000000000000000000
        BottomAxis.Minimum = -96.000000000000000000
        BottomAxis.MinorTickCount = 5
        BottomAxis.Title.Caption = 'angle[O]'
        LeftAxis.Title.Caption = 'Intensity [cd]'
        View3D = False
        Align = alClient
        TabOrder = 0
        PrintMargins = (
          15
          6
          15
          6)
        ColorPaletteIndex = 13
        object Series1: TLineSeries
          Marks.Arrow.Visible = True
          Marks.Callout.Brush.Color = clBlack
          Marks.Callout.Arrow.Visible = True
          Marks.Visible = False
          Pointer.Draw3D = False
          Pointer.InflateMargins = True
          Pointer.Style = psRectangle
          Pointer.Transparency = 2
          Pointer.Visible = False
          XValues.Name = 'X'
          XValues.Order = loAscending
          YValues.Name = 'Y'
          YValues.Order = loNone
        end
      end
      object TeeCommander1: TTeeCommander
        Left = 0
        Top = 0
        Width = 465
        Height = 33
        Panel = Chart1
        Align = alTop
        ParentShowHint = False
        TabOrder = 1
      end
    end
    object TabSheet2: TTabSheet
      Caption = #27839#28369#22359#36816#21160#36335#24452#20998#24067
      ImageIndex = 1
      object Chart2: TChart
        Left = 0
        Top = 33
        Width = 465
        Height = 321
        Legend.Visible = False
        Title.Font.Height = -20
        Title.Text.Strings = (
          '2D')
        BottomAxis.Automatic = False
        BottomAxis.AutomaticMaximum = False
        BottomAxis.AutomaticMinimum = False
        BottomAxis.ExactDateTime = False
        BottomAxis.Maximum = 90.000000000000000000
        BottomAxis.Minimum = -96.000000000000000000
        BottomAxis.MinorTickCount = 5
        BottomAxis.Title.Caption = 'angle[O]'
        LeftAxis.Title.Caption = 'Intensity [cd]'
        View3D = False
        Align = alClient
        TabOrder = 0
        PrintMargins = (
          15
          6
          15
          6)
        ColorPaletteIndex = 13
        object Series2: TLineSeries
          Marks.Arrow.Visible = True
          Marks.Callout.Brush.Color = clBlack
          Marks.Callout.Arrow.Visible = True
          Marks.Visible = False
          Pointer.InflateMargins = True
          Pointer.Style = psRectangle
          Pointer.Visible = False
          XValues.Name = 'X'
          XValues.Order = loAscending
          YValues.Name = 'Y'
          YValues.Order = loNone
        end
      end
      object TeeCommander2: TTeeCommander
        Left = 0
        Top = 0
        Width = 465
        Height = 33
        Panel = Chart2
        Align = alTop
        ParentShowHint = False
        TabOrder = 1
      end
    end
  end
end
