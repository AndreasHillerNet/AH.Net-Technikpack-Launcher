object splashFrm: TsplashFrm
  Left = 360
  Top = 231
  AutoSize = True
  BorderStyle = bsNone
  ClientHeight = 206
  ClientWidth = 451
  Color = clBtnFace
  Font.Charset = ANSI_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object Image1: TImage
    Left = 0
    Top = 0
    Width = 450
    Height = 46
  end
  object Label1: TLabel
    Left = 15
    Top = 15
    Width = 5
    Height = 19
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label2: TLabel
    Left = 15
    Top = 65
    Width = 255
    Height = 16
    Caption = 'Programmed and designed by Andreas Hiller'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object Label3: TLabel
    Left = 15
    Top = 85
    Width = 205
    Height = 16
    Caption = 'Copyright '#169' 2016 AndreasHiller.Net'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object Label4: TLabel
    Left = 15
    Top = 105
    Width = 104
    Height = 16
    Caption = 'All rights reserved'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object Label5: TLabel
    Left = 15
    Top = 135
    Width = 48
    Height = 16
    Caption = 'WWW: '
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label6: TLabel
    Left = 65
    Top = 135
    Width = 203
    Height = 16
    Caption = 'http://technikpack.andreashiller.net'
    Color = clNavy
    Font.Charset = ANSI_CHARSET
    Font.Color = clNavy
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentColor = False
    ParentFont = False
    Transparent = True
  end
  object AdvProgressBar1: TAdvProgressBar
    Left = 15
    Top = 170
    Width = 421
    Height = 18
    Animated = True
    CompletionSmooth = True
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Verdana'
    Font.Style = []
    Infinite = True
    Level0ColorTo = 14811105
    Level1ColorTo = 13303807
    Level2Color = 5483007
    Level2ColorTo = 11064319
    Level3ColorTo = 13290239
    Level1Perc = 70
    Level2Perc = 90
    Position = 0
    Rounded = False
    ShowBorder = True
    ShowPercentage = False
    ShowPosition = False
    Stacked = True
    Version = '1.2.0.2'
  end
  object Bevel1: TBevel
    Left = 0
    Top = 0
    Width = 451
    Height = 206
    Style = bsRaised
  end
  object ExeInfo1: TExeInfo
    Version = '1.2.4.0'
    Left = 310
    Top = 80
  end
end
