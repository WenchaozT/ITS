object form2: Tform2
  Left = 254
  Top = 141
  Width = 710
  Height = 600
  Caption = '3D Form'
  Color = clBtnFace
  Constraints.MaxHeight = 620
  Constraints.MaxWidth = 800
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
    Width = 694
    Height = 561
    ActivePage = TabSheet1
    Align = alClient
    TabOrder = 0
    object TabSheet1: TTabSheet
      Caption = #20809#24378#20998#24067#65288#27979#37327#65289
      object Chart1: TChart
        Left = 0
        Top = 33
        Width = 686
        Height = 502
        Legend.CheckBoxesStyle = cbsRadio
        Legend.ColorWidth = 10
        Legend.Font.Color = clWhite
        Legend.Font.Shadow.Visible = False
        Legend.Frame.Visible = False
        Legend.Gradient.Direction = gdBottomTop
        Legend.LegendStyle = lsValues
        Legend.Shadow.Visible = False
        Legend.Symbol.Continuous = True
        Legend.Symbol.Gradient.EndColor = 753908
        Legend.Symbol.Gradient.MidColor = 8872058
        Legend.Symbol.Gradient.StartColor = 12400769
        Legend.Symbol.Gradient.SubGradient.Transparency = 42
        Legend.Symbol.Shadow.Visible = False
        Legend.Symbol.Width = 10
        Legend.Symbol.WidthUnits = lcsPixels
        Legend.TextStyle = ltsRightValue
        Legend.TopPos = 2
        Legend.VertSpacing = 40
        Legend.Visible = False
        MarginRight = 15
        Title.Font.Height = -16
        Title.Text.Strings = (
          '3D')
        Chart3DPercent = 40
        DepthAxis.Visible = True
        Shadow.Visible = False
        Align = alClient
        ParentColor = True
        TabOrder = 0
        AutoSize = True
        DesignSize = (
          686
          502)
        ColorPaletteIndex = 5
        object Panel1: TPanel
          Left = 571
          Top = 7
          Width = 86
          Height = 466
          Anchors = []
          BevelOuter = bvNone
          Color = clWindow
          Ctl3D = False
          ParentBackground = True
          ParentCtl3D = False
          TabOrder = 0
          DesignSize = (
            86
            466)
          object Label2: TLabel
            Left = 43
            Top = 48
            Width = 7
            Height = 16
            Anchors = []
            Caption = '2'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
            Transparent = True
            Layout = tlCenter
          end
          object Label3: TLabel
            Left = 43
            Top = 98
            Width = 7
            Height = 16
            Anchors = []
            Caption = '3'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
            Transparent = True
            Layout = tlCenter
          end
          object Label4: TLabel
            Left = 43
            Top = 148
            Width = 7
            Height = 16
            Anchors = []
            Caption = '4'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
            Transparent = True
            Layout = tlCenter
          end
          object Label5: TLabel
            Left = 43
            Top = 198
            Width = 7
            Height = 16
            Anchors = []
            Caption = '5'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
            Transparent = True
            Layout = tlCenter
          end
          object Label6: TLabel
            Left = 43
            Top = 248
            Width = 7
            Height = 16
            Anchors = []
            Caption = '6'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
            Transparent = True
            Layout = tlCenter
          end
          object Label7: TLabel
            Left = 43
            Top = 298
            Width = 7
            Height = 16
            Anchors = []
            Caption = '7'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
            Transparent = True
            Layout = tlCenter
          end
          object Label8: TLabel
            Left = 43
            Top = 348
            Width = 7
            Height = 16
            Anchors = []
            Caption = '8'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
            Transparent = True
            Layout = tlCenter
          end
          object Label9: TLabel
            Left = 43
            Top = 398
            Width = 7
            Height = 16
            Anchors = []
            Caption = '9'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
            Transparent = True
            Layout = tlCenter
          end
          object Label1: TLabel
            Left = 43
            Top = -1
            Width = 28
            Height = 16
            Anchors = []
            Caption = '1000'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
            Transparent = True
            Layout = tlCenter
          end
          object StaticText1: TStaticText
            Left = 12
            Top = 16
            Width = 25
            Height = 50
            Anchors = []
            AutoSize = False
            Caption = ' '
            Color = clYellow
            ParentColor = False
            TabOrder = 0
          end
          object StaticText2: TStaticText
            Left = 12
            Top = 66
            Width = 25
            Height = 50
            Anchors = []
            AutoSize = False
            Caption = ' '
            Color = clLime
            ParentColor = False
            TabOrder = 1
          end
          object StaticText3: TStaticText
            Left = 12
            Top = 114
            Width = 25
            Height = 50
            Anchors = []
            AutoSize = False
            Caption = ' '
            Color = clRed
            ParentColor = False
            TabOrder = 2
          end
          object StaticText4: TStaticText
            Left = 12
            Top = 172
            Width = 25
            Height = 50
            Anchors = []
            AutoSize = False
            Caption = ' '
            Color = clGreen
            ParentColor = False
            TabOrder = 3
          end
          object StaticText5: TStaticText
            Left = 12
            Top = 217
            Width = 25
            Height = 50
            Anchors = []
            AutoSize = False
            Caption = ' '
            Color = clSkyBlue
            ParentColor = False
            TabOrder = 4
          end
          object StaticText6: TStaticText
            Left = 12
            Top = 270
            Width = 25
            Height = 50
            Anchors = []
            AutoSize = False
            Caption = ' '
            Color = clBlue
            ParentColor = False
            TabOrder = 5
          end
          object StaticText7: TStaticText
            Left = 12
            Top = 314
            Width = 25
            Height = 50
            Anchors = []
            AutoSize = False
            Caption = ' '
            Color = clPurple
            ParentColor = False
            TabOrder = 6
          end
          object StaticText8: TStaticText
            Left = 12
            Top = 369
            Width = 25
            Height = 50
            Anchors = []
            AutoSize = False
            Caption = ' '
            Color = clGray
            ParentColor = False
            TabOrder = 7
          end
        end
        object Series1: TSurfaceSeries
          Marks.Arrow.Visible = True
          Marks.Callout.Brush.Color = clBlack
          Marks.Callout.Arrow.Visible = True
          Marks.Visible = False
          MidColor = clBlue
          NumXValues = 100
          NumZValues = 100
          SideBrush.Color = clWhite
          SideBrush.Style = bsClear
          StartColor = 8454143
          XValues.Name = 'X'
          XValues.Order = loNone
          YValues.Name = 'Y'
          YValues.Order = loNone
          ZValues.Name = 'Z'
          ZValues.Order = loNone
        end
        object ChartTool1: TPageNumTool
          Active = False
          Callout.Brush.Color = clBlack
          Callout.Arrow.Visible = False
          Shape.Text = 'Page 1 of 1'
          Text = #31532' 1'#39029','#20849' 1'#39029
          DisabledButton.EndColor = clSilver
          DisabledButton.Visible = True
          EnabledButton.EndColor = clSilver
          EnabledButton.StartColor = clBlack
          EnabledButton.Visible = True
        end
      end
      object TeeCommander1: TTeeCommander
        Left = 0
        Top = 0
        Width = 686
        Height = 33
        Panel = Chart1
        Align = alTop
        ParentShowHint = False
        TabOrder = 1
      end
    end
    object TabSheet2: TTabSheet
      Caption = #20809#24378#20998#24067#65288#25512#23548#65289
      ImageIndex = 1
      object Chart2: TChart
        Left = 0
        Top = 33
        Width = 773
        Height = 519
        Legend.ColorWidth = 30
        Legend.Symbol.Width = 30
        Legend.TopPos = 11
        Legend.VertSpacing = 1
        Legend.Visible = False
        MarginRight = 15
        Title.Font.Height = -16
        Title.Text.Strings = (
          '3D')
        Chart3DPercent = 40
        DepthAxis.Visible = True
        Align = alClient
        TabOrder = 0
        ColorPaletteIndex = 13
        object SurfaceSeries1: TSurfaceSeries
          Marks.Arrow.Visible = True
          Marks.Callout.Brush.Color = clBlack
          Marks.Callout.Arrow.Visible = True
          Marks.Shadow.Color = 8487297
          Marks.Visible = False
          EndColor = clYellow
          NumXValues = 100
          NumZValues = 100
          Pen.Visible = False
          PaletteSteps = 41
          PaletteStyle = psRainbow
          SideBrush.Color = clWhite
          SideBrush.Style = bsClear
          StartColor = clRed
          XValues.Name = 'X'
          XValues.Order = loNone
          YValues.Name = 'Y'
          YValues.Order = loNone
          ZValues.Name = 'Z'
          ZValues.Order = loNone
        end
        object PageNumTool1: TPageNumTool
          Active = False
          Callout.Brush.Color = clBlack
          Callout.Arrow.Visible = False
          Shape.Text = 'Page 1 of 1'
          Text = #31532' 1'#39029','#20849' 1'#39029
          DisabledButton.EndColor = clSilver
          DisabledButton.Visible = True
          EnabledButton.EndColor = clSilver
          EnabledButton.StartColor = clBlack
          EnabledButton.Visible = True
        end
      end
      object TeeCommander2: TTeeCommander
        Left = 0
        Top = 0
        Width = 773
        Height = 33
        Panel = Chart2
        Align = alTop
        ParentShowHint = False
        TabOrder = 1
      end
    end
  end
  object SeriesTextSource1: TSeriesTextSource
    Fields = <>
    FieldSeparator = ','
    Left = 312
    Top = 8
  end
end
