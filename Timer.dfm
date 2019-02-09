object SecondFormTime: TSecondFormTime
  Left = 396
  Top = 187
  ActiveControl = BitBtnOk
  BorderStyle = bsDialog
  Caption = 'Time'
  ClientHeight = 204
  ClientWidth = 327
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 48
    Top = 32
    Width = 229
    Height = 22
    Caption = 'Sta³a czasowa próbkowania'
    Font.Charset = EASTEUROPE_CHARSET
    Font.Color = clNavy
    Font.Height = -19
    Font.Name = 'Times New Roman'
    Font.Pitch = fpFixed
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Bevel1: TBevel
    Left = 40
    Top = 24
    Width = 241
    Height = 41
    Shape = bsFrame
  end
  object Label2: TLabel
    Left = 296
    Top = 104
    Width = 8
    Height = 22
    Caption = 's'
    Font.Charset = EASTEUROPE_CHARSET
    Font.Color = clWindowText
    Font.Height = -19
    Font.Name = 'Times New Roman'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Bevel2: TBevel
    Left = 288
    Top = 104
    Width = 25
    Height = 25
  end
  object EditCzas: TEdit
    Left = 56
    Top = 104
    Width = 225
    Height = 21
    TabOrder = 0
    Text = '1'
  end
  object BitBtnOk: TBitBtn
    Left = 56
    Top = 144
    Width = 75
    Height = 25
    TabOrder = 1
    OnClick = BitBtnOkClick
    Kind = bkOK
  end
  object BitBtnCancel: TBitBtn
    Left = 192
    Top = 144
    Width = 75
    Height = 25
    TabOrder = 2
    OnClick = BitBtnCancelClick
    Kind = bkCancel
  end
end
