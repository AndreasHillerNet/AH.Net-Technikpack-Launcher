object configFrm: TconfigFrm
  Left = 561
  Top = 166
  BorderStyle = bsDialog
  Caption = 'Configuration'
  ClientHeight = 482
  ClientWidth = 411
  Color = clBtnFace
  Font.Charset = ANSI_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  Icon.Data = {
    0000010001001010000001002000680400001600000028000000100000002000
    0000010020000000000000000000000000000000000000000000000000000000
    0000000000000000000000000000424242136E6D6C9A7F7C7AE85F5F5F306666
    6676787572E66A69689500000000000000000000000000000000000000000000
    0000000000004B4B4B1C4F4F4F245A5A5A4CB5AEA5FFC0B7AEFF888480E88B86
    81F3B0A79AFF7C7774F3505050034B4B4B334242420D00000000000000000000
    0000484848108C8A87DAB7B2ABF8999591E8D4CBC1FFCFC6BBFFC6BDB3FFBBB2
    A8FFCAC1B0FF9A928BFF787572E67E7974FF6C6A69C03C3C3C06000000000000
    000059595951D0C8BFFFF9EFE3FFF3EADEFFEDE0D1FFF1E2D2FFE2D5C9FFE1D6
    CCFFEFE4DAFFD0C7BEFFA69D94FF988F87FF7D7873F945454516000000003636
    36065A5A5A1BA09C96F1FBEFE2FFF4E2CEFFC8BAABFF777573BF6565656E6464
    646A727170B1BFB9B3FEE4DAD2FFA89F97FF7C7975E35A5A5A404343430F7876
    74A7BCB3A9FFEEE1D3FFF1E0CCFFC0B09EFF6767677900000000000000000000
    0000000000006464645DBEB7B1FED4CAC1FFA59D94FF918B84FF6A696891A099
    91E9EBDCC7FFECE1CDFFDBC2A9FF797571C90000000000000000000000000000
    00000000000000000000706F6FACF0E4D9FFB7AEA5FFACA39AFF777572D96A6A
    6974BEB3A7F9F7E5D2FFC7AE95FF666666810000000000000000000000000000
    0000000000000000000060606064DCD0C5FFCAC1B6FF938E89F76060602C5D5D
    5D25A29A91F1F9E5D1FFD4BCA3FF666666840000000000000000000000000000
    0000000000000000000060606068DDCFC1FFD5CBBFFFA59F99FB676666648A84
    7DE4EFD9C2FFF6E0CAFFEBD3BBFF7F7A75D24040400200000000000000000000
    00000000000000000000747270B7F2E0CEFFDCD3C1FFD6CEBEFF928F8AED6E6D
    6B93D4C0ACFFE1CDB8FFF4DDC6FFCEBCA9FF6968688F3E3E3E02000000000000
    00000000000065656574C1B2A1FFF5E7D6FFE7DED4FFB9B3ABFF7D7B79BD4949
    49135E5E5E4F837E79C7F1DAC1FFF5DFC7FFD1BFACFF827D77D4666666866565
    658177736EC8B6A491FFEBD7C2FFFAEFE2FFB3AEA8FC63636336464646160000
    00003B3A3A0A988E84E7EDD4BAFFF0D9C0FFF4DEC6FFF1DAC2FFE0C8B1FFD3BB
    A2FFD8BEA5FFECD8C4FFFCEFDFFFFBEFE1FFE4DBCFFF6666666A000000000000
    00003E3E3E10847E77D1D4BEA7FFADA092FBDCC8B2FFE3D7C0FFEEDDC6FFF8E5
    D0FFFBE9D6FFF9E8D7FFB4ACA3F4BAB2AAF98B8885D259595919000000000000
    0000000000004A4A4A09666666655F5F5F16948B82E1E6CFB6FFCEBDABFEB5A9
    9DFDF7E3CEFFE6D6C5FF6161615C4A4A49194646460C00000000000000000000
    0000000000000000000000000000000000006B6A696A8C857EC873716E8D6564
    6430948D86EB747270995050501600000000000000000000000000000000F01F
    AC41C003AC418001AC418001AC410000AC4103C0AC4107E0AC4107E0AC4107E0
    AC4103E0AC4101C0AC410000AC418001AC418001AC41C003AC41F80FAC41}
  OldCreateOrder = False
  Position = poScreenCenter
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Bevel1: TBevel
    Left = 0
    Top = 430
    Width = 411
    Height = 50
    Shape = bsTopLine
  end
  object GroupBox1: TGroupBox
    Left = 15
    Top = 15
    Width = 386
    Height = 161
    Caption = 'Directorys and Files (can be changed later)'
    TabOrder = 0
    object Label2: TLabel
      Left = 10
      Top = 20
      Width = 202
      Height = 13
      Caption = 'Java Path: (Java JRE not Java SDK!)'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label3: TLabel
      Left = 10
      Top = 65
      Width = 158
      Height = 13
      Caption = 'Java Runtime Executetable:'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label4: TLabel
      Left = 10
      Top = 110
      Width = 83
      Height = 13
      Caption = 'Modpack Path:'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object javapath: TAdvDirectoryEdit
      Left = 10
      Top = 35
      Width = 366
      Height = 24
      Flat = False
      LabelFont.Charset = DEFAULT_CHARSET
      LabelFont.Color = clWindowText
      LabelFont.Height = -11
      LabelFont.Name = 'MS Sans Serif'
      LabelFont.Style = []
      Lookup.Separator = ';'
      Color = clWindow
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      ReadOnly = False
      TabOrder = 0
      Visible = True
      OnChange = javapathChange
      Version = '1.3.3.3'
      ButtonStyle = bsButton
      ButtonWidth = 18
      Etched = False
      Glyph.Data = {
        CE000000424DCE0000000000000076000000280000000C0000000B0000000100
        0400000000005800000000000000000000001000000000000000000000000000
        8000008000000080800080000000800080008080000080808000C0C0C0000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00F00000000FFF
        00000088888880FF00000B088888880F00000BB08888888000000BBB00000000
        00000BBBBBBB0B0F00000BBB00000B0F0000F000BBBBBB0F0000FF0BBBBBBB0F
        0000FF0BBB00000F0000FFF000FFFFFF0000}
      BrowseDialogText = 'Select Directory'
    end
    object javaexe: TEdit
      Left = 10
      Top = 80
      Width = 366
      Height = 24
      Color = clMoneyGreen
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      ReadOnly = True
      TabOrder = 1
    end
    object modpackpath: TAdvDirectoryEdit
      Left = 10
      Top = 125
      Width = 366
      Height = 24
      Flat = False
      LabelFont.Charset = DEFAULT_CHARSET
      LabelFont.Color = clWindowText
      LabelFont.Height = -11
      LabelFont.Name = 'MS Sans Serif'
      LabelFont.Style = []
      Lookup.Separator = ';'
      Color = clWindow
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      ReadOnly = False
      TabOrder = 2
      Visible = True
      Version = '1.3.3.3'
      ButtonStyle = bsButton
      ButtonWidth = 18
      Etched = False
      Glyph.Data = {
        CE000000424DCE0000000000000076000000280000000C0000000B0000000100
        0400000000005800000000000000000000001000000000000000000000000000
        8000008000000080800080000000800080008080000080808000C0C0C0000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00F00000000FFF
        00000088888880FF00000B088888880F00000BB08888888000000BBB00000000
        00000BBBBBBB0B0F00000BBB00000B0F0000F000BBBBBB0F0000FF0BBBBBBB0F
        0000FF0BBB00000F0000FFF000FFFFFF0000}
      BrowseDialogText = 'Select Directory'
    end
  end
  object GroupBox2: TGroupBox
    Left = 15
    Top = 185
    Width = 386
    Height = 116
    Caption = 'Minecraft Username and Password (required!)'
    TabOrder = 1
    object Label5: TLabel
      Left = 10
      Top = 20
      Width = 228
      Height = 13
      Caption = 'E-Mail Address: (migated Accounts only)'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label6: TLabel
      Left = 10
      Top = 65
      Width = 57
      Height = 13
      Caption = 'Password:'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object username: TEdit
      Left = 10
      Top = 35
      Width = 366
      Height = 24
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
    end
    object password: TEdit
      Left = 10
      Top = 80
      Width = 366
      Height = 24
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      PasswordChar = '*'
      TabOrder = 1
    end
  end
  object GroupBox3: TGroupBox
    Left = 15
    Top = 310
    Width = 386
    Height = 111
    Caption = 'Other Stuff'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 2
    object Label7: TLabel
      Left = 10
      Top = 25
      Width = 58
      Height = 13
      Caption = 'GUI-Style:'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label8: TLabel
      Left = 10
      Top = 80
      Width = 228
      Height = 13
      Caption = 'Allocated RAM: (up 3 GB recommended):'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object style: TComboBox
      Left = 10
      Top = 40
      Width = 366
      Height = 24
      Style = csDropDownList
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = []
      ItemHeight = 16
      ItemIndex = 9
      ParentFont = False
      TabOrder = 0
      Text = 'Office 2010 Silver'
      OnChange = styleChange
      Items.Strings = (
        'Offce 2003 Blue'
        'Office 2003 Classic'
        'Office 2003 Olive'
        'Office 2003 Silver'
        'Office 2007 Luna'
        'Office 2007 Obsidian'
        'Office 2007 Silver'
        'Office 2010 Black'
        'Office 2010 Blue'
        'Office 2010 Silver'
        'Terminal'
        'Whidbey Style'
        'Windows XP'
        'Windows Vista'
        'Windows 7')
    end
    object ram: TComboBox
      Left = 330
      Top = 75
      Width = 46
      Height = 24
      Style = csDropDownList
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = []
      ItemHeight = 16
      ItemIndex = 2
      ParentFont = False
      TabOrder = 1
      Text = '3'
      Items.Strings = (
        '1'
        '2'
        '3'
        '4'
        '5'
        '6'
        '7'
        '8')
    end
  end
  object BitBtn1: TBitBtn
    Left = 175
    Top = 440
    Width = 111
    Height = 31
    Caption = 'Save Changes'
    TabOrder = 3
    OnClick = BitBtn1Click
    Glyph.Data = {
      36030000424D3603000000000000360000002800000010000000100000000100
      1800000000000003000000000000000000000000000000000000FF00FFFF00FF
      FF00FFFF00FFFF00FF6F936D41813B2F7F272F7F2741813B6F936DFF00FFFF00
      FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF6691651B9B153CA73281B97436
      B02C29BE2029BE2029BE201B9B15689367FF00FFFF00FFFF00FFFF00FFFF00FF
      3E833E06BF041EAC1BDCE5CCFEFEEAA9CF9B06C50406C50406C50406C50406BF
      043E833EFF00FFFF00FFFF00FF66916502B50112A710D0DEC4FEFEEAFEFEEAFE
      FEEA2FAD2B06BF0406BF0406BF0406BF0402B501669165FF00FFFF00FF38952C
      0D9D0CC5D7BBFEFEF0FEFEF0FEFEEAFEFEEAB3D1A503A90203A90203A90203A9
      0203A902038C02FF00FF749771509F40BACFB2FEFEF0FEFEF0D0DEC4B4CAA8FE
      FEEAFEFEEA41A03B059E03059E03059E03059E03059E036F936D4887416FA866
      FEFEF0FFFFF5D6E1CC1E8C1A378C32FEFEF0FEFEEACADBBB038C020791040791
      040791040791042875251E8C1A1AB51570BC7386C181157F12088205087E05AC
      C3A2FEFEF0FEFEF0609F580882050882050882050882050964080C940C0FCE0F
      16D0171ED11F1EAC1B0A75060A7506287525F7F8E9FEFEEAE4EBD51474110A75
      060A75060A75060A5C0831933121D22229D42A31D53239D73A31BB3108820508
      7E0580A878FEFEF0FEFEF08CB282097A06097A06097A06296C276D9B6D31D532
      3CD83E44DA464DDB4E58DE5A54D55526A625088205D6E1CCFEFEF0FEFEEA318F
      2C038C02088F05688F68FF00FF38B43A50DC5258DE5A60DF6267E16A6FE2727B
      E57E62D46456A653FEFEEAFEFEF0C5D8B8079D04068604FF00FFFF00FF709970
      5FD9616BE26E6FE2727BE57E83E6868AE88E92EA9598E99C9CBD97FEFEF0C5D7
      BB03A902669165FF00FFFF00FFFF00FF588E5979DE7C83E68692EA9596EA999E
      ECA1A6EEAAAEEFB2ACE6AF95C49798CD9B518A51FF00FFFF00FFFF00FFFF00FF
      FF00FF70997070BC73A1EDA5A9EEADB1F0B5B9F2BDC1F3C5C8F5CC8DC2907497
      71FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF799B796D9B6D6D
      A57070A572709970799B79FF00FFFF00FFFF00FFFF00FFFF00FF}
  end
  object BitBtn2: TBitBtn
    Left = 290
    Top = 440
    Width = 111
    Height = 31
    Caption = 'Cancel'
    TabOrder = 4
    OnClick = BitBtn2Click
    Glyph.Data = {
      36030000424D3603000000000000360000002800000010000000100000000100
      1800000000000003000000000000000000000000000000000000FF00FFFF00FF
      FF00FFFF00FFFF00FF6868C32626AA06069E06069E2626AA6868C3FF00FFFF00
      FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF6565C40000A60000A60000A600
      00A60000A80000A80000A80000A86565C4FF00FFFF00FFFF00FFFF00FFFF00FF
      3E3EBA0000B00000B00000B00000A82020B32020B30000A80000B00000BB0000
      B03E3EBAFF00FFFF00FFFF00FF6565CA0000BB0000BB0000BBFF00FFFF00FFFF
      00FFFF00FFFF00FF2A2ABA0000C00000C00000C06565CAFF00FFFF00FF0000C0
      0000C00707C0FF00FFFF00FFFF00FFFF00FFFF00FF7878D10000CD0000CD0000
      CD0000CD0000CDFF00FF6868D10000D10000D1FF00FFFF00FFFF00FFFF00FFFF
      00FFFF00FF0000D10000D12222CB6969CE0000D10000DD6868D12222CB0000DD
      0000D1FF00FFFF00FFFF00FFFF00FFFF00FF0000DD0000E51D1DD1FF00FFFF00
      FF0000DD0000E52626D30000D10606EB2626D3FF00FFFF00FFFF00FFFF00FF00
      00E50606EB1919DAFF00FFFF00FFFF00FF2626D30000F00000DD0606DD0000F0
      2020DEFF00FFFF00FFFF00FF0606EB0101FA1515E1FF00FFFF00FFFF00FFFF00
      FF2020DE0101FA0606E22727DF0101FA0606EBFF00FFFF00FF0000F00505FC16
      16E8FF00FFFF00FFFF00FFFF00FFFF00FF0C0CEC0505FC2D2DE16B6BDA1414FC
      1414FC4E4ED21717F01717FB1F1FE8FF00FFFF00FFFF00FFFF00FFFF00FFFF00
      FF1E1EFA1E1EFA7474D8FF00FF2222F01E1EFA2828F92828F92E2EEAFF00FFFF
      00FFFF00FFFF00FFFF00FFFF00FF2E2EEA3030F82E2EEAFF00FFFF00FF7474D8
      3939F63939F63939F66363D2FF00FFFF00FFFF00FFFF00FFFF00FF3D3DE74141
      F44141F47474D8FF00FFFF00FFFF00FF5A5AD64C4CF34C4CF34C4CF34545E351
      51DB5151DB4545E35252F25252F25252F26363D2FF00FFFF00FFFF00FFFF00FF
      FF00FF7878D15555E76161F06161F06161F06161F06161F06464EF5B5BE77D7D
      D7FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF8383D86565D859
      59D85959D86B6BDA8383D8FF00FFFF00FFFF00FFFF00FFFF00FF}
  end
  object Timer1: TTimer
    Enabled = False
    Interval = 50
    OnTimer = Timer1Timer
    Left = 330
    Top = 400
  end
end