object calibform: Tcalibform
  Left = 374
  Top = 332
  Width = 323
  Height = 456
  Caption = 'Calibration'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object GroupBox6: TGroupBox
    Left = 32
    Top = 24
    Width = 257
    Height = 73
    TabOrder = 0
    object Label18: TLabel
      Left = 12
      Top = 45
      Width = 41
      Height = 13
      Caption = 'channel:'
    end
    object Label3: TLabel
      Left = 220
      Top = 17
      Width = 13
      Height = 13
      Caption = 'ms'
    end
    object Label4: TLabel
      Left = 12
      Top = 17
      Width = 68
      Height = 13
      Caption = 'IntegrateTime:'
    end
    object ComboBox1: TComboBox
      Left = 104
      Top = 41
      Width = 65
      Height = 21
      ImeName = #20013#25991' ('#31616#20307') - '#25628#29399#25340#38899#36755#20837#27861
      ItemHeight = 13
      ItemIndex = 0
      TabOrder = 0
      Text = '1'
      Items.Strings = (
        '1'
        '2'
        '3'
        '4'
        '5'
        '6'
        '7'
        '8'
        '9'
        '10'
        '11'
        '12'
        '13'
        '14'
        '15'
        '16')
    end
    object Edit1: TEdit
      Left = 103
      Top = 12
      Width = 69
      Height = 21
      ImeName = #20013#25991' ('#31616#20307') - '#25628#29399#25340#38899#36755#20837#27861
      TabOrder = 1
      Text = '100'
    end
    object Button6: TButton
      Left = 181
      Top = 40
      Width = 65
      Height = 25
      Caption = 'move'
      TabOrder = 2
      OnClick = Button6Click
    end
  end
  object Button7: TButton
    Left = 32
    Top = 112
    Width = 81
    Height = 25
    Caption = 'Get Spectrum'
    TabOrder = 1
    OnClick = Button7Click
  end
  object Button8: TButton
    Left = 120
    Top = 112
    Width = 81
    Height = 25
    Caption = 'Scan Dark'
    TabOrder = 2
    OnClick = Button8Click
  end
  object Button12: TButton
    Left = 208
    Top = 112
    Width = 75
    Height = 25
    Caption = 'Standard'
    TabOrder = 3
    OnClick = Button12Click
  end
  object PageControl2: TPageControl
    Left = 28
    Top = 144
    Width = 253
    Height = 225
    ActivePage = TabSheet5
    TabOrder = 4
    object TabSheet5: TTabSheet
      Caption = 'HR4000'
      object chart1: TChart
        Left = 0
        Top = 0
        Width = 245
        Height = 197
        Legend.Visible = False
        Title.Text.Strings = (
          'HR4000')
        BottomAxis.Title.Caption = 'wavelengths'
        BottomAxis.TitleSize = 9
        LeftAxis.Title.Caption = 'pixels'
        LeftAxis.TitleSize = 3
        View3D = False
        Align = alClient
        TabOrder = 0
        ColorPaletteIndex = 13
        object FastLineSeries2: TFastLineSeries
          Marks.Arrow.Visible = True
          Marks.Callout.Brush.Color = clBlack
          Marks.Callout.Arrow.Visible = True
          Marks.Visible = False
          LinePen.Color = 10708548
          XValues.Name = 'X'
          XValues.Order = loAscending
          YValues.Name = 'Y'
          YValues.Order = loNone
        end
      end
    end
    object TabSheet6: TTabSheet
      Caption = 'standard'
      ImageIndex = 1
      object Chart2: TChart
        Left = 0
        Top = 0
        Width = 245
        Height = 197
        Legend.Visible = False
        Title.Text.Strings = (
          'Standard data')
        BottomAxis.Title.Caption = 'wavelengths'
        BottomAxis.TitleSize = 9
        LeftAxis.TickLength = 0
        LeftAxis.Title.Caption = 'W/m2'
        LeftAxis.TitleSize = 5
        View3D = False
        Align = alClient
        TabOrder = 0
        ColorPaletteIndex = 13
        object FastLineSeries1: TFastLineSeries
          Marks.Arrow.Visible = True
          Marks.Callout.Brush.Color = clBlack
          Marks.Callout.Arrow.Visible = True
          Marks.Visible = False
          LinePen.Color = 10708548
          XValues.Name = 'X'
          XValues.Order = loAscending
          YValues.Name = 'Y'
          YValues.Order = loNone
        end
      end
    end
    object TabSheet7: TTabSheet
      Caption = 'Coefficiency'
      ImageIndex = 2
      object Chart3: TChart
        Left = 0
        Top = 0
        Width = 245
        Height = 197
        Legend.Visible = False
        Title.Text.Strings = (
          'Coefficiency')
        BottomAxis.Title.Caption = 'wavelengths'
        BottomAxis.TitleSize = 9
        View3D = False
        Align = alClient
        TabOrder = 0
        ColorPaletteIndex = 13
        object FastLineSeries3: TFastLineSeries
          Marks.Arrow.Visible = True
          Marks.Callout.Brush.Color = clBlack
          Marks.Callout.Arrow.Visible = True
          Marks.Visible = False
          LinePen.Color = 10708548
          XValues.Name = 'X'
          XValues.Order = loAscending
          YValues.Name = 'Y'
          YValues.Order = loNone
        end
      end
    end
  end
  object Button10: TButton
    Left = 107
    Top = 378
    Width = 75
    Height = 25
    Caption = 'Save'
    TabOrder = 5
    OnClick = Button10Click
  end
  object Button9: TButton
    Left = 24
    Top = 378
    Width = 73
    Height = 25
    Caption = 'calibrate'
    TabOrder = 6
    OnClick = Button9Click
  end
  object Button11: TButton
    Left = 198
    Top = 378
    Width = 75
    Height = 25
    Caption = 'Use'
    TabOrder = 7
    OnClick = Button11Click
  end
  object OpenDialog1: TOpenDialog
    Left = 80
    Top = 168
  end
  object SaveDialog1: TSaveDialog
    Left = 200
    Top = 168
  end
end
