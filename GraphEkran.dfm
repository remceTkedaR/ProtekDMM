object SecondForm2: TSecondForm2
  Left = 203
  Top = 155
  Width = 493
  Height = 375
  Caption = 'Multimetr'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object IAeverLiquidIndicator1: TIAeverLiquidIndicator
    Left = 112
    Top = 64
    Width = 289
    Height = 121
    IndicatorWidth = 289
    IndicatorHeight = 121
  end
  object Memo1: TMemo
    Left = 120
    Top = 224
    Width = 273
    Height = 113
    Lines.Strings = (
      'Memo1')
    TabOrder = 1
  end
  object Bagraf: TProgressBar
    Left = 112
    Top = 192
    Width = 289
    Height = 13
    Min = 0
    Max = 100
    TabOrder = 2
  end
end
