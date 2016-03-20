object infoFrm: TinfoFrm
  Left = 381
  Top = 228
  BorderStyle = bsDialog
  Caption = 'Programinformations'
  ClientHeight = 300
  ClientWidth = 494
  Color = clBtnFace
  Font.Charset = ANSI_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 15
    Top = 15
    Width = 6
    Height = 23
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -19
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label2: TLabel
    Left = 15
    Top = 50
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
    Top = 70
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
    Top = 90
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
    Top = 120
    Width = 44
    Height = 16
    Caption = 'WWW:'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label6: TLabel
    Left = 85
    Top = 120
    Width = 167
    Height = 16
    Cursor = crHandPoint
    Caption = 'http://www.andreashiller.net'
    Font.Charset = ANSI_CHARSET
    Font.Color = clNavy
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = [fsUnderline]
    ParentFont = False
    OnClick = Label6Click
  end
  object Label7: TLabel
    Left = 15
    Top = 140
    Width = 62
    Height = 16
    Caption = 'Modpack:'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label8: TLabel
    Left = 85
    Top = 140
    Width = 203
    Height = 16
    Cursor = crHandPoint
    Caption = 'http://technikpack.andreashiller.net'
    Font.Charset = ANSI_CHARSET
    Font.Color = clNavy
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = [fsUnderline]
    ParentFont = False
    OnClick = Label8Click
  end
  object Label9: TLabel
    Left = 15
    Top = 160
    Width = 43
    Height = 16
    Caption = 'E-Mail:'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label10: TLabel
    Left = 85
    Top = 160
    Width = 149
    Height = 16
    Cursor = crHandPoint
    Caption = 'kontakt@andreashiller.net'
    Font.Charset = ANSI_CHARSET
    Font.Color = clNavy
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = [fsUnderline]
    ParentFont = False
    OnClick = Label10Click
  end
  object Label11: TLabel
    Left = 15
    Top = 200
    Width = 466
    Height = 41
    AutoSize = False
    Caption = 
      'This software is freeware. You are able to use this software for' +
      ' free. You are able to copy this software for private purpose. Y' +
      'ou not able to distribute this software on other websites than m' +
      'ine. You are not able to decompile, disassamble this software or' +
      ' in other possible ways.'
    Transparent = True
    WordWrap = True
  end
  object BitBtn1: TBitBtn
    Left = 405
    Top = 255
    Width = 75
    Height = 31
    Caption = 'Close'
    TabOrder = 0
    OnClick = BitBtn1Click
    Glyph.Data = {
      36030000424D3603000000000000360000002800000010000000100000000100
      1800000000000003000000000000000000000000000000000000FF00FFFF00FF
      4242DE2C2CD3FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF2C2C
      B04242B5FF00FFFF00FFFF00FF3E3EE60000FC0000F52828D9FF00FFFF00FFFF
      00FFFF00FFFF00FFFF00FF2828BE0000B00000A93E3EB7FF00FF4242E20000FC
      0000FC0000FC0000FC2828D9FF00FFFF00FFFF00FFFF00FF2828CD0000C80000
      C00000B80000B04242BB2828D90000F50000F50000FC0000FC0000FC2929E0FF
      00FFFF00FF2828D90000DE0000D60000C80000C80000C02828BEFF00FF2828D9
      0000F50000F50000F50000FC0000FC2929E02828E90000F50101ED0000E50000
      E50000D62828C7FF00FFFF00FFFF00FF2828D90101ED0000F50000F50000F500
      00FC0000FC0000FC0000FC0000F50101ED2C2CD3FF00FFFF00FFFF00FFFF00FF
      FF00FF2828D90101ED0101ED0000F50000F50000F50000FC0000FC0000FC2828
      D9FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF2828D90101ED0101ED01
      01ED0000F50000F50000F52828D9FF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
      FF00FFFF00FF2828D90101ED0606F00101ED0101ED0101ED0000F52828D9FF00
      FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF2929E00707FB0707FB0707F506
      06F00606F00101ED0101ED0000F52828D9FF00FFFF00FFFF00FFFF00FFFF00FF
      3434DF1919FA1616FB1919FA1919FA1919FA1D1DFA1919FA1D1DFA1D1DFA1D1D
      FA3E3EDEFF00FFFF00FFFF00FF3E3EDE1D1DFA2D2DF81D1DFA2D2DF82D2DF83E
      3EDE4242DE2E2EF73030F73030F73030F73030F74242DEFF00FF4848D83939F6
      3939F63939F64141F43939F64848D8FF00FFFF00FF4848D84141F44141F44141
      F44141F44141F45353DC5D5DD64A4AF34A4AF34A4AF35353F15353DCFF00FFFF
      00FFFF00FFFF00FF5353DC5353F15353F15D5DF05353F16666D4FF00FF6666D4
      5D5DF05D5DF05C5CDAFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF6060D96666
      EF6666EF6A6AD5FF00FFFF00FFFF00FF6A6AD56666D4FF00FFFF00FFFF00FFFF
      00FFFF00FFFF00FFFF00FFFF00FF6666D46A6AD5FF00FFFF00FF}
  end
end
