object SettingForm: TSettingForm
  Left = 440
  Top = 140
  Width = 408
  Height = 590
  Caption = 'System Setting'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -10
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  FormStyle = fsStayOnTop
  OldCreateOrder = False
  Position = poDefaultPosOnly
  Visible = True
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object PageControl1: TPageControl
    Left = 0
    Top = 0
    Width = 392
    Height = 532
    ActivePage = TabSheet4
    Align = alClient
    TabOrder = 0
    object TabSheet1: TTabSheet
      Caption = 'Spectrometer'
      object GroupBox3: TGroupBox
        Left = 23
        Top = 17
        Width = 314
        Height = 168
        Caption = 'Load Calibration Files'
        TabOrder = 0
        object AdvStringGrid1: TAdvStringGrid
          Left = 2
          Top = 15
          Width = 310
          Height = 151
          Cursor = crDefault
          Align = alClient
          ColCount = 2
          DefaultRowHeight = 21
          DefaultDrawing = False
          FixedCols = 1
          RowCount = 17
          FixedRows = 1
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          GridLineWidth = 1
          Options = [goFixedVertLine, goFixedHorzLine, goVertLine, goHorzLine, goRangeSelect, goDrawFocusSelected, goEditing, goAlwaysShowEditor]
          ParentFont = False
          TabOrder = 0
          GridLineColor = clSilver
          ActiveCellShow = False
          ActiveCellFont.Charset = DEFAULT_CHARSET
          ActiveCellFont.Color = clWindowText
          ActiveCellFont.Height = -13
          ActiveCellFont.Name = 'MS Sans Serif'
          ActiveCellFont.Style = [fsBold]
          ActiveCellColor = clGray
          Bands.Active = True
          Bands.PrimaryColor = clInfoBk
          Bands.PrimaryLength = 1
          Bands.SecondaryColor = clWindow
          Bands.SecondaryLength = 1
          Bands.Print = False
          AutoNumAlign = False
          AutoSize = False
          VAlignment = vtaCenter
          EnhTextSize = False
          EnhRowColMove = False
          SizeWithForm = False
          Multilinecells = False
          OnClickCell = AdvStringGrid1ClickCell
          OnGetEditorType = AdvStringGrid1GetEditorType
          DragDropSettings.OleAcceptFiles = True
          DragDropSettings.OleAcceptText = True
          SortSettings.AutoColumnMerge = False
          SortSettings.Column = 0
          SortSettings.Show = False
          SortSettings.IndexShow = False
          SortSettings.IndexColor = clYellow
          SortSettings.Full = True
          SortSettings.SingleColumn = False
          SortSettings.IgnoreBlanks = False
          SortSettings.BlankPos = blFirst
          SortSettings.AutoFormat = True
          SortSettings.Direction = sdAscending
          SortSettings.FixedCols = False
          SortSettings.NormalCellsOnly = False
          SortSettings.Row = 0
          FloatingFooter.Color = clBtnFace
          FloatingFooter.Column = 0
          FloatingFooter.FooterStyle = fsFixedLastRow
          FloatingFooter.Visible = False
          ControlLook.Color = clBlack
          ControlLook.CheckSize = 15
          ControlLook.RadioSize = 10
          ControlLook.ControlStyle = csClassic
          ControlLook.FlatButton = False
          EnableBlink = False
          EnableHTML = True
          EnableWheel = True
          Flat = False
          HintColor = clInfoBk
          SelectionColor = clHighlight
          SelectionTextColor = clHighlightText
          SelectionRectangle = False
          SelectionResizer = False
          SelectionRTFKeep = False
          HintShowCells = False
          HintShowLargeText = False
          HintShowSizing = False
          PrintSettings.FooterSize = 0
          PrintSettings.HeaderSize = 0
          PrintSettings.Time = ppNone
          PrintSettings.Date = ppNone
          PrintSettings.DateFormat = 'dd/mm/yyyy'
          PrintSettings.PageNr = ppNone
          PrintSettings.Title = ppNone
          PrintSettings.Font.Charset = DEFAULT_CHARSET
          PrintSettings.Font.Color = clWindowText
          PrintSettings.Font.Height = -13
          PrintSettings.Font.Name = 'MS Sans Serif'
          PrintSettings.Font.Style = []
          PrintSettings.HeaderFont.Charset = DEFAULT_CHARSET
          PrintSettings.HeaderFont.Color = clWindowText
          PrintSettings.HeaderFont.Height = -13
          PrintSettings.HeaderFont.Name = 'MS Sans Serif'
          PrintSettings.HeaderFont.Style = []
          PrintSettings.FooterFont.Charset = DEFAULT_CHARSET
          PrintSettings.FooterFont.Color = clWindowText
          PrintSettings.FooterFont.Height = -13
          PrintSettings.FooterFont.Name = 'MS Sans Serif'
          PrintSettings.FooterFont.Style = []
          PrintSettings.Borders = pbNoborder
          PrintSettings.BorderStyle = psSolid
          PrintSettings.Centered = False
          PrintSettings.RepeatFixedRows = False
          PrintSettings.RepeatFixedCols = False
          PrintSettings.LeftSize = 0
          PrintSettings.RightSize = 0
          PrintSettings.ColumnSpacing = 0
          PrintSettings.RowSpacing = 0
          PrintSettings.TitleSpacing = 0
          PrintSettings.Orientation = poPortrait
          PrintSettings.PageNumberOffset = 0
          PrintSettings.MaxPagesOffset = 0
          PrintSettings.FixedWidth = 0
          PrintSettings.FixedHeight = 0
          PrintSettings.UseFixedHeight = False
          PrintSettings.UseFixedWidth = False
          PrintSettings.FitToPage = fpNever
          PrintSettings.PageNumSep = '/'
          PrintSettings.NoAutoSize = False
          PrintSettings.NoAutoSizeRow = False
          PrintSettings.PrintGraphics = False
          HTMLSettings.Width = 100
          HTMLSettings.XHTML = False
          Navigation.AdvanceDirection = adLeftRight
          Navigation.AllowClipboardShortCuts = True
          Navigation.AllowClipboardAlways = True
          Navigation.InsertPosition = pInsertBefore
          Navigation.KeepHorizScroll = True
          Navigation.HomeEndKey = heFirstLastColumn
          Navigation.TabToNextAtEnd = False
          Navigation.TabAdvanceDirection = adLeftRight
          ColumnSize.Stretch = True
          ColumnSize.Location = clRegistry
          CellNode.Color = clSilver
          CellNode.NodeColor = clBlack
          CellNode.ShowTree = False
          MaxEditLength = 0
          MouseActions.DirectEdit = True
          IntelliPan = ipVertical
          URLColor = clBlue
          URLShow = False
          URLFull = False
          URLEdit = False
          ScrollType = ssNormal
          ScrollColor = clNone
          ScrollWidth = 21
          ScrollSynch = False
          ScrollProportional = False
          ScrollHints = shNone
          OemConvert = False
          FixedFooters = 0
          FixedRightCols = 0
          FixedColWidth = 64
          FixedRowHeight = 21
          FixedColAlways = True
          FixedFont.Charset = DEFAULT_CHARSET
          FixedFont.Color = clWindowText
          FixedFont.Height = -13
          FixedFont.Name = 'Tahoma'
          FixedFont.Style = []
          FixedAsButtons = True
          FloatFormat = '%.2f'
          IntegralHeight = False
          WordWrap = False
          ColumnHeaders.Strings = (
            'Channel'
            'Calibration File')
          RowHeaders.Strings = (
            'Channel'
            '1 >>'
            '2 >>'
            '3 >>'
            '4 >>'
            '5 >>'
            '6 >>'
            '7 >>'
            '8 >>'
            '9 >>'
            '10 >>'
            '11 >>'
            '12 >>'
            '13 >>'
            '14 >>'
            '15 >>'
            '16 >>')
          Lookup = False
          LookupCaseSensitive = False
          LookupHistory = False
          BackGround.Top = 0
          BackGround.Left = 0
          BackGround.Display = bdTile
          BackGround.Cells = bcNormal
          Filter = <>
          ColWidths = (
            64
            224)
        end
      end
      object Memo1: TMemo
        Left = 23
        Top = 208
        Width = 306
        Height = 121
        Lines.Strings = (
          'Memo1')
        TabOrder = 1
      end
      object Button4: TButton
        Left = 88
        Top = 368
        Width = 75
        Height = 25
        Caption = 'scan dark'
        TabOrder = 2
        OnClick = Button4Click
      end
      object Button5: TButton
        Left = 200
        Top = 368
        Width = 75
        Height = 25
        Caption = 'load dark'
        TabOrder = 3
        OnClick = Button5Click
      end
    end
    object TabSheet2: TTabSheet
      Caption = 'MPM2000'
      ImageIndex = 1
      object Label17: TLabel
        Left = 141
        Top = 21
        Width = 27
        Height = 13
        Caption = 'COM:'
      end
      object ComLed1: TComLed
        Left = 247
        Top = 13
        Width = 21
        Height = 20
        ComPort = ComPort1
        LedSignal = lsConn
        Kind = lkGreenLight
      end
      object Shape1: TShape
        Left = 134
        Top = 248
        Width = 13
        Height = 14
        Brush.Color = clRed
      end
      object Shape2: TShape
        Left = 152
        Top = 248
        Width = 13
        Height = 14
        Brush.Color = clRed
      end
      object Shape3: TShape
        Left = 169
        Top = 248
        Width = 13
        Height = 14
        Brush.Color = clRed
      end
      object Shape4: TShape
        Left = 187
        Top = 248
        Width = 13
        Height = 14
        Brush.Color = clRed
      end
      object Shape8: TShape
        Left = 259
        Top = 248
        Width = 13
        Height = 14
        Brush.Color = clRed
      end
      object Shape12: TShape
        Left = 187
        Top = 267
        Width = 13
        Height = 14
        Brush.Color = clRed
      end
      object Shape16: TShape
        Left = 259
        Top = 267
        Width = 13
        Height = 14
        Brush.Color = clRed
      end
      object Shape15: TShape
        Left = 241
        Top = 267
        Width = 13
        Height = 14
        Brush.Color = clRed
      end
      object Shape11: TShape
        Left = 169
        Top = 267
        Width = 13
        Height = 14
        Brush.Color = clRed
      end
      object Shape7: TShape
        Left = 241
        Top = 248
        Width = 13
        Height = 14
        Brush.Color = clRed
      end
      object Shape6: TShape
        Left = 223
        Top = 248
        Width = 13
        Height = 14
        Brush.Color = clRed
      end
      object Shape10: TShape
        Left = 152
        Top = 267
        Width = 13
        Height = 14
        Brush.Color = clRed
      end
      object Shape14: TShape
        Left = 223
        Top = 267
        Width = 13
        Height = 14
        Brush.Color = clRed
      end
      object Shape13: TShape
        Left = 205
        Top = 267
        Width = 13
        Height = 14
        Brush.Color = clRed
      end
      object Shape9: TShape
        Left = 134
        Top = 267
        Width = 13
        Height = 14
        Brush.Color = clRed
      end
      object Shape5: TShape
        Left = 205
        Top = 248
        Width = 13
        Height = 14
        Brush.Color = clRed
      end
      object Label1: TLabel
        Left = 85
        Top = 248
        Width = 37
        Height = 13
        Caption = 'CH1~8:'
      end
      object Label2: TLabel
        Left = 79
        Top = 267
        Width = 43
        Height = 13
        Caption = 'CH9~16:'
      end
      object ComComboBox1: TComComboBox
        Left = 174
        Top = 15
        Width = 65
        Height = 21
        ComPort = ComPort1
        AutoApply = True
        Style = csDropDownList
        ItemHeight = 13
        ItemIndex = -1
        TabOrder = 0
      end
      object GroupBox1: TGroupBox
        Left = 82
        Top = 42
        Width = 209
        Height = 106
        Caption = 'Channels'
        TabOrder = 1
        object CheckBox1: TCheckBox
          Left = 8
          Top = 16
          Width = 25
          Height = 17
          Caption = '1'
          Checked = True
          State = cbChecked
          TabOrder = 0
        end
        object CheckBox2: TCheckBox
          Left = 57
          Top = 16
          Width = 25
          Height = 17
          Caption = '2'
          Checked = True
          State = cbChecked
          TabOrder = 1
        end
        object CheckBox3: TCheckBox
          Left = 106
          Top = 16
          Width = 25
          Height = 17
          Caption = '3'
          Checked = True
          State = cbChecked
          TabOrder = 2
        end
        object CheckBox4: TCheckBox
          Left = 155
          Top = 16
          Width = 25
          Height = 17
          Caption = '4'
          Checked = True
          State = cbChecked
          TabOrder = 3
        end
        object CheckBox5: TCheckBox
          Left = 8
          Top = 36
          Width = 25
          Height = 17
          Caption = '5'
          Checked = True
          State = cbChecked
          TabOrder = 4
        end
        object CheckBox6: TCheckBox
          Left = 57
          Top = 36
          Width = 25
          Height = 17
          Caption = '6'
          Checked = True
          State = cbChecked
          TabOrder = 5
        end
        object CheckBox7: TCheckBox
          Left = 106
          Top = 36
          Width = 25
          Height = 17
          Caption = '7'
          Checked = True
          State = cbChecked
          TabOrder = 6
        end
        object CheckBox8: TCheckBox
          Left = 155
          Top = 36
          Width = 28
          Height = 17
          Caption = '8'
          Checked = True
          State = cbChecked
          TabOrder = 7
        end
        object CheckBox9: TCheckBox
          Left = 8
          Top = 56
          Width = 25
          Height = 17
          Caption = '9'
          Checked = True
          State = cbChecked
          TabOrder = 8
        end
        object CheckBox10: TCheckBox
          Left = 57
          Top = 56
          Width = 33
          Height = 17
          Caption = '10'
          Checked = True
          State = cbChecked
          TabOrder = 9
        end
        object CheckBox11: TCheckBox
          Left = 106
          Top = 56
          Width = 30
          Height = 17
          Caption = '11'
          Checked = True
          State = cbChecked
          TabOrder = 10
        end
        object CheckBox12: TCheckBox
          Left = 155
          Top = 56
          Width = 31
          Height = 17
          Caption = '12'
          Checked = True
          State = cbChecked
          TabOrder = 11
        end
        object CheckBox13: TCheckBox
          Left = 8
          Top = 76
          Width = 31
          Height = 17
          Caption = '13'
          Checked = True
          State = cbChecked
          TabOrder = 12
        end
        object CheckBox14: TCheckBox
          Left = 57
          Top = 76
          Width = 31
          Height = 17
          Caption = '14'
          Checked = True
          State = cbChecked
          TabOrder = 13
        end
        object CheckBox15: TCheckBox
          Left = 106
          Top = 76
          Width = 31
          Height = 17
          Caption = '15'
          Checked = True
          State = cbChecked
          TabOrder = 14
        end
        object CheckBox16: TCheckBox
          Left = 155
          Top = 76
          Width = 31
          Height = 17
          Caption = '16'
          Checked = True
          State = cbChecked
          TabOrder = 15
        end
      end
      object Button3: TButton
        Left = 165
        Top = 179
        Width = 61
        Height = 20
        Caption = 'Update'
        TabOrder = 2
        OnClick = Button3Click
      end
    end
    object TabSheet3: TTabSheet
      Caption = #36712#36947#25511#21046
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ImageIndex = 2
      ParentFont = False
      object Label3: TLabel
        Left = 120
        Top = 16
        Width = 45
        Height = 20
        Caption = 'COM:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label4: TLabel
        Left = 83
        Top = 217
        Width = 72
        Height = 16
        Caption = #26059#36716#26041#21521':'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = #23435#20307
        Font.Style = []
        ParentFont = False
      end
      object Label5: TLabel
        Left = 67
        Top = 56
        Width = 96
        Height = 16
        Caption = #27493#38271#35282#24230'(o):'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = #23435#20307
        Font.Style = []
        ParentFont = False
      end
      object Label6: TLabel
        Left = 51
        Top = 96
        Width = 112
        Height = 16
        Caption = #26059#36716#36895#24230'(o/s):'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = #23435#20307
        Font.Style = []
        ParentFont = False
      end
      object Label7: TLabel
        Left = 83
        Top = 177
        Width = 72
        Height = 16
        Caption = #26059#36716#36215#28857':'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = #23435#20307
        Font.Style = []
        ParentFont = False
      end
      object Label8: TLabel
        Left = 51
        Top = 137
        Width = 112
        Height = 16
        Caption = #24635#26059#36716#35282#24230'(o):'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = #23435#20307
        Font.Style = []
        ParentFont = False
      end
      object ComLed2: TComLed
        Left = 87
        Top = 21
        Width = 15
        Height = 15
        ComPort = ComPort2
        LedSignal = lsConn
        Kind = lkGreenLight
      end
      object Label9: TLabel
        Left = 51
        Top = 258
        Width = 112
        Height = 16
        Caption = #31215#20998#26102#38388'(ms): '
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = #23435#20307
        Font.Style = []
        ParentFont = False
      end
      object ComComboBox2: TComComboBox
        Left = 176
        Top = 16
        Width = 89
        Height = 24
        ComPort = ComPort2
        AutoApply = True
        Style = csDropDownList
        ItemHeight = 16
        ItemIndex = -1
        TabOrder = 0
      end
      object ComboBox1: TComboBox
        Left = 176
        Top = 217
        Width = 145
        Height = 24
        ItemHeight = 16
        ItemIndex = 0
        TabOrder = 1
        Text = 'clockwise'
        Items.Strings = (
          'clockwise'
          'anticlockwise')
      end
      object Button9: TButton
        Left = 56
        Top = 330
        Width = 113
        Height = 31
        Caption = #36816' '#34892
        Font.Charset = GB2312_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = #23435#20307
        Font.Style = []
        ParentFont = False
        TabOrder = 2
        OnClick = Button9Click
      end
      object Button10: TButton
        Left = 56
        Top = 288
        Width = 113
        Height = 33
        Caption = #24403#21069#20301#32622
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = #23435#20307
        Font.Style = []
        ParentFont = False
        TabOrder = 3
        OnClick = Button10Click
      end
      object Button11: TButton
        Left = 184
        Top = 330
        Width = 113
        Height = 31
        Caption = #22238#21040#21407#28857
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = #23435#20307
        Font.Style = []
        ParentFont = False
        TabOrder = 4
        OnClick = Button11Click
      end
      object Button12: TButton
        Left = 184
        Top = 288
        Width = 113
        Height = 33
        Caption = #32622#20026#21407#28857
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = #23435#20307
        Font.Style = []
        ParentFont = False
        TabOrder = 5
        OnClick = Button12Click
      end
      object Edit1: TEdit
        Left = 176
        Top = 56
        Width = 89
        Height = 24
        TabOrder = 6
        Text = '1'
        OnChange = Edit1Change
        OnKeyPress = Edit1KeyPress
      end
      object Edit2: TEdit
        Left = 176
        Top = 96
        Width = 89
        Height = 24
        TabOrder = 7
        Text = '10'
        OnChange = Edit2Change
        OnKeyPress = Edit2KeyPress
      end
      object Edit4: TEdit
        Left = 176
        Top = 137
        Width = 89
        Height = 24
        TabOrder = 8
        Text = '3'
        OnChange = Edit4Change
        OnKeyPress = Edit4KeyPress
      end
      object Edit7: TEdit
        Left = 176
        Top = 258
        Width = 48
        Height = 24
        TabOrder = 9
        Text = '2000'
        OnChange = Edit7Change
      end
      object CheckBox17: TCheckBox
        Left = 232
        Top = 264
        Width = 97
        Height = 17
        Caption = 'Auto'
        TabOrder = 10
        OnClick = CheckBox17Click
      end
      object Memo2: TMemo
        Left = 64
        Top = 368
        Width = 241
        Height = 121
        Lines.Strings = (
          #36712#36947#25511#21046#65306)
        TabOrder = 11
      end
      object Button8: TButton
        Left = 280
        Top = 16
        Width = 65
        Height = 25
        Caption = #36830' '#25509
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = #23435#20307
        Font.Style = []
        ParentFont = False
        TabOrder = 12
        OnClick = Button8Click
      end
      object ComboBox3: TComboBox
        Left = 176
        Top = 177
        Width = 145
        Height = 24
        ItemHeight = 16
        TabOrder = 13
        Text = #22402#30452#20301#32622
        Items.Strings = (
          #22402#30452#20301#32622
          #27700#24179#36828#31471
          #27700#24179#36817#31471)
      end
    end
    object TabSheet4: TTabSheet
      Caption = #28369#22359#25511#21046
      ImageIndex = 3
      object Label16: TLabel
        Left = 121
        Top = 16
        Width = 40
        Height = 20
        AutoSize = False
        Caption = 'COM:'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Times New Roman'
        Font.Style = []
        ParentFont = False
      end
      object Label15: TLabel
        Left = 80
        Top = 216
        Width = 80
        Height = 20
        AutoSize = False
        Caption = 'Direction:'
        Font.Charset = GB2312_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = #23435#20307
        Font.Style = []
        ParentFont = False
      end
      object Label14: TLabel
        Left = 64
        Top = 56
        Width = 96
        Height = 20
        AutoSize = False
        Caption = #19978#21319#35282#24230'(o):'
        Font.Charset = GB2312_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = #23435#20307
        Font.Style = []
        ParentFont = False
      end
      object Label13: TLabel
        Left = 80
        Top = 96
        Width = 80
        Height = 20
        AutoSize = False
        Caption = #36816#21160#36895#24230':'
        Font.Charset = GB2312_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = #23435#20307
        Font.Style = []
        ParentFont = False
      end
      object Label12: TLabel
        Left = 75
        Top = 176
        Width = 85
        Height = 20
        AutoSize = False
        Caption = 'Radius(cm):'
        Font.Charset = GB2312_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = #23435#20307
        Font.Style = []
        ParentFont = False
      end
      object Label11: TLabel
        Left = 80
        Top = 136
        Width = 80
        Height = 16
        AutoSize = False
        Caption = #34892#31243'(cm): '
        Font.Charset = GB2312_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = #23435#20307
        Font.Style = []
        ParentFont = False
      end
      object ComLed3: TComLed
        Left = 87
        Top = 21
        Width = 15
        Height = 15
        ComPort = ComPort3
        LedSignal = lsConn
        Kind = lkGreenLight
      end
      object ComComboBox3: TComComboBox
        Left = 176
        Top = 16
        Width = 89
        Height = 21
        ComPort = ComPort3
        AutoApply = True
        Style = csDropDownList
        ItemHeight = 13
        ItemIndex = -1
        TabOrder = 0
      end
      object ComboBox2: TComboBox
        Left = 176
        Top = 216
        Width = 145
        Height = 21
        ItemHeight = 13
        ItemIndex = 0
        TabOrder = 1
        Text = 'clockwise'
        Items.Strings = (
          'clockwise'
          'anticlockwise')
      end
      object Button7: TButton
        Left = 56
        Top = 322
        Width = 113
        Height = 31
        Caption = #36816' '#34892
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = #23435#20307
        Font.Style = []
        ParentFont = False
        TabOrder = 2
        OnClick = Button7Click
      end
      object Button6: TButton
        Left = 57
        Top = 272
        Width = 112
        Height = 33
        Caption = #24403#21069#20301#32622
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = #23435#20307
        Font.Style = []
        ParentFont = False
        TabOrder = 3
        OnClick = Button6Click
      end
      object Button2: TButton
        Left = 280
        Top = 18
        Width = 65
        Height = 23
        Caption = #36830' '#25509
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = #23435#20307
        Font.Style = []
        ParentFont = False
        TabOrder = 4
        OnClick = Button2Click
      end
      object Button1: TButton
        Left = 192
        Top = 272
        Width = 113
        Height = 33
        Caption = #32622#20026#21407#28857
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = #23435#20307
        Font.Style = []
        ParentFont = False
        TabOrder = 5
        OnClick = Button1Click
      end
      object Edit12: TEdit
        Left = 176
        Top = 56
        Width = 89
        Height = 21
        TabOrder = 6
        Text = '1'
        OnChange = Edit12Change
        OnKeyPress = Edit12KeyPress
      end
      object Edit11: TEdit
        Left = 176
        Top = 96
        Width = 89
        Height = 21
        TabOrder = 7
        Text = '100'
        OnKeyPress = Edit11KeyPress
      end
      object Edit10: TEdit
        Left = 176
        Top = 176
        Width = 89
        Height = 21
        TabOrder = 8
        Text = '50'
        OnKeyPress = Edit10KeyPress
      end
      object Edit9: TEdit
        Left = 176
        Top = 136
        Width = 89
        Height = 21
        Enabled = False
        TabOrder = 9
        Text = '15'
        OnKeyPress = Edit9KeyPress
      end
      object Memo3: TMemo
        Left = 72
        Top = 368
        Width = 233
        Height = 105
        Lines.Strings = (
          #28369#22359#25511#21046#65306)
        TabOrder = 10
      end
      object Button13: TButton
        Left = 192
        Top = 320
        Width = 113
        Height = 33
        Caption = 'OK'
        TabOrder = 11
        OnClick = Button13Click
      end
    end
    object TabSheet5: TTabSheet
      Caption = #26679#21697#23450#20301
      ImageIndex = 4
      object ComLed4: TComLed
        Left = 232
        Top = 24
        Width = 25
        Height = 25
        ComPort = ComPort4
        LedSignal = lsConn
        Kind = lkRedLight
      end
      object ComLed5: TComLed
        Left = 232
        Top = 64
        Width = 25
        Height = 25
        ComPort = ComPort5
        LedSignal = lsConn
        Kind = lkRedLight
      end
      object Label10: TLabel
        Left = 64
        Top = 24
        Width = 42
        Height = 13
        Caption = #36229#22768'1'#65306
      end
      object Label18: TLabel
        Left = 64
        Top = 64
        Width = 42
        Height = 13
        Caption = #36229#22768'2'#65306
      end
      object Button14: TButton
        Left = 80
        Top = 112
        Width = 75
        Height = 25
        Caption = #23454#26102#27979#37327
        TabOrder = 0
        OnClick = Button14Click
      end
      object Button15: TButton
        Left = 176
        Top = 112
        Width = 75
        Height = 25
        Caption = #27979#37327
        TabOrder = 1
        OnClick = Button15Click
      end
      object ComComboBox4: TComComboBox
        Left = 128
        Top = 24
        Width = 89
        Height = 21
        ComPort = ComPort4
        Style = csDropDownList
        ItemHeight = 13
        ItemIndex = -1
        TabOrder = 2
        OnChange = ComComboBox4Change
      end
      object ComComboBox5: TComComboBox
        Left = 128
        Top = 64
        Width = 89
        Height = 21
        ComPort = ComPort5
        Style = csDropDownList
        ItemHeight = 13
        ItemIndex = -1
        TabOrder = 3
        OnChange = ComComboBox5Change
      end
      object Memo4: TMemo
        Left = 56
        Top = 152
        Width = 105
        Height = 305
        Lines.Strings = (
          #36229#22768'1'#65306)
        ScrollBars = ssVertical
        TabOrder = 4
      end
      object Memo5: TMemo
        Left = 184
        Top = 152
        Width = 105
        Height = 305
        Lines.Strings = (
          #36229#22768'2'#65306)
        ScrollBars = ssVertical
        TabOrder = 5
      end
    end
  end
  object StatusBar: TStatusBar
    Left = 0
    Top = 532
    Width = 392
    Height = 19
    Panels = <
      item
        Width = 150
      end
      item
        Width = 50
      end>
  end
  object ComPort1: TComPort
    BaudRate = br9600
    Port = 'COM1'
    Parity.Bits = prNone
    StopBits = sbOneStopBit
    DataBits = dbEight
    Events = [evRxChar, evTxEmpty, evRxFlag, evRing, evBreak, evCTS, evDSR, evError, evRLSD, evRx80Full]
    FlowControl.OutCTSFlow = False
    FlowControl.OutDSRFlow = False
    FlowControl.ControlDTR = dtrDisable
    FlowControl.ControlRTS = rtsDisable
    FlowControl.XonXoffOut = False
    FlowControl.XonXoffIn = False
    Left = 368
    Top = 25
  end
  object OpenDialog1: TOpenDialog
    Filter = 'Calibr. File|*.cal'
    Left = 364
    Top = 65531
  end
  object OpenDialog2: TOpenDialog
    Filter = 'darkdata|*.dak'
    Left = 368
    Top = 56
  end
  object SaveDialog1: TSaveDialog
    Left = 368
    Top = 112
  end
  object ComPort2: TComPort
    Connected = True
    BaudRate = br19200
    Port = 'COM6'
    Parity.Bits = prNone
    StopBits = sbOneStopBit
    DataBits = dbEight
    Events = [evRxChar, evTxEmpty, evRxFlag, evRing, evBreak, evCTS, evDSR, evError, evRLSD, evRx80Full]
    FlowControl.OutCTSFlow = False
    FlowControl.OutDSRFlow = False
    FlowControl.ControlDTR = dtrDisable
    FlowControl.ControlRTS = rtsDisable
    FlowControl.XonXoffOut = False
    FlowControl.XonXoffIn = False
    Left = 369
    Top = 144
  end
  object ComPort3: TComPort
    BaudRate = br9600
    Port = 'COM1'
    Parity.Bits = prNone
    StopBits = sbOneStopBit
    DataBits = dbEight
    Events = [evRxChar, evTxEmpty, evRxFlag, evRing, evBreak, evCTS, evDSR, evError, evRLSD, evRx80Full]
    FlowControl.OutCTSFlow = False
    FlowControl.OutDSRFlow = False
    FlowControl.ControlDTR = dtrDisable
    FlowControl.ControlRTS = rtsDisable
    FlowControl.XonXoffOut = False
    FlowControl.XonXoffIn = False
    Left = 368
    Top = 80
  end
  object ComPort4: TComPort
    BaudRate = br9600
    Port = 'COM1'
    Parity.Bits = prNone
    StopBits = sbOneStopBit
    DataBits = dbEight
    Events = [evRxChar, evTxEmpty, evRxFlag, evRing, evBreak, evCTS, evDSR, evError, evRLSD, evRx80Full]
    FlowControl.OutCTSFlow = False
    FlowControl.OutDSRFlow = False
    FlowControl.ControlDTR = dtrDisable
    FlowControl.ControlRTS = rtsDisable
    FlowControl.XonXoffOut = False
    FlowControl.XonXoffIn = False
    Left = 368
    Top = 176
  end
  object ComPort5: TComPort
    BaudRate = br9600
    Port = 'COM1'
    Parity.Bits = prNone
    StopBits = sbOneStopBit
    DataBits = dbEight
    Events = [evRxChar, evTxEmpty, evRxFlag, evRing, evBreak, evCTS, evDSR, evError, evRLSD, evRx80Full]
    FlowControl.OutCTSFlow = False
    FlowControl.OutDSRFlow = False
    FlowControl.ControlDTR = dtrDisable
    FlowControl.ControlRTS = rtsDisable
    FlowControl.XonXoffOut = False
    FlowControl.XonXoffIn = False
    Left = 368
    Top = 208
  end
  object Timer1: TTimer
    OnTimer = Timer1Timer
    Left = 368
    Top = 240
  end
end
