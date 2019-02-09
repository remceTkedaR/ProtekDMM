object MainForm: TMainForm
  Left = 206
  Top = 138
  BiDiMode = bdRightToLeft
  BorderIcons = [biSystemMenu, biMinimize]
  BorderStyle = bsSingle
  Caption = 'Pomiar Protek 506'
  ClientHeight = 345
  ClientWidth = 507
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  Menu = Konfiguracja
  OldCreateOrder = False
  ParentBiDiMode = False
  Position = poMainFormCenter
  PrintScale = poNone
  Visible = True
  WindowMenu = COM
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object LabelPort: TLabel
    Left = 0
    Top = 312
    Width = 45
    Height = 13
    Caption = 'COM 1..3'
    OnClick = COMClick
  end
  object LabelData: TLabel
    Left = 0
    Top = 329
    Width = 5
    Height = 16
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clNavy
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label1: TLabel
    Left = 112
    Top = 96
    Width = 328
    Height = 55
    Caption = '-----Pomiar------'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -48
    Font.Name = 'Times New Roman'
    Font.Style = [fsBold]
    ParentFont = False
    OnClick = COMClick
  end
  object Bevel1: TBevel
    Left = 96
    Top = 96
    Width = 369
    Height = 65
    Shape = bsFrame
    Style = bsRaised
  end
  object Label2DataTime: TLabel
    Left = 216
    Top = 64
    Width = 69
    Height = 19
    Alignment = taCenter
    Caption = 'Data/Czas'
    Font.Charset = EASTEUROPE_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Times New Roman'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Bevel2: TBevel
    Left = 184
    Top = 64
    Width = 209
    Height = 25
    Shape = bsFrame
    Style = bsRaised
  end
  object Break: TBitBtn
    Left = 424
    Top = 0
    Width = 75
    Height = 25
    Caption = 'Break'
    TabOrder = 0
    OnClick = BreakClick
  end
  object Start: TBitBtn
    Left = 424
    Top = 0
    Width = 75
    Height = 25
    Caption = 'Start'
    TabOrder = 1
    Visible = False
    OnClick = StartClick
  end
  object Konfiguracja: TMainMenu
    BiDiMode = bdRightToLeftNoAlign
    ParentBiDiMode = False
    Left = 16
    object MenuFile: TMenuItem
      Caption = 'File'
      object MenuExit: TMenuItem
        Break = mbBreak
        Caption = 'Exit'
        OnClick = OnClose
      end
      object MenuClose: TMenuItem
        Caption = 'Close Signal'
        OnClick = MenuCloseClick
      end
    end
    object Port: TMenuItem
      Caption = 'Port'
      object COM: TMenuItem
        Caption = 'COM'
        OnClick = COMClick
      end
      object TimerPomiaru: TMenuItem
        Caption = 'Pr'#243'bkowanie'
        OnClick = TimerPomiaruClick
      end
    end
    object Wyswietlacz: TMenuItem
      Caption = 'Wy'#347'wietlacz'
      object Digital: TMenuItem
        Caption = 'Digital'
        OnClick = DigitalClick
      end
      object Graf: TMenuItem
        Caption = 'Graph'
        OnClick = GrafClick
      end
    end
  end
end
