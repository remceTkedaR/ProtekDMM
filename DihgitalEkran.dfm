object SecondForm3: TSecondForm3
  Left = 191
  Top = 139
  Width = 597
  Height = 375
  Caption = 'Wykres'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object Chart1: TChart
    Left = 16
    Top = 64
    Width = 537
    Height = 250
    Cursor = crCross
    BackWall.Brush.Color = clWhite
    BackWall.Brush.Style = bsClear
    Gradient.Direction = gdBottomTop
    Gradient.EndColor = 8388863
    Gradient.Visible = True
    Title.Text.Strings = (
      'GRAPH')
    Legend.Visible = False
    View3D = False
    BorderStyle = bsSingle
    TabOrder = 0
    object Series1: TLineSeries
      Marks.ArrowLength = 8
      Marks.Visible = False
      SeriesColor = clRed
      Pointer.InflateMargins = True
      Pointer.Style = psRectangle
      Pointer.Visible = False
      XValues.DateTime = False
      XValues.Name = 'X'
      XValues.Multiplier = 1
      XValues.Order = loAscending
      YValues.DateTime = False
      YValues.Name = 'Y'
      YValues.Multiplier = 1
      YValues.Order = loNone
    end
  end
end
