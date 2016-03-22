unit buildwebserver;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, AdvPanel, StdCtrls, pngimage, AdvStyleIF, AdvAppStyler,
  AdvGlowButton, AdvOfficePager, AdvOfficePagerStylers, AdvEdit, AdvEdBtn,
  AdvDirectoryEdit, ImgList, jpeg, DCPcrypt2, DCPmd5, DCPblockciphers,
  DCPdes;

type
  TmakeAServerFrm = class(TForm)
    Image1: TImage;
    Label1: TLabel;
    Label2: TLabel;
    AdvPanel1: TAdvPanel;
    AdvFormStyler1: TAdvFormStyler;
    AdvPanelStyler1: TAdvPanelStyler;
    AdvOfficePager1: TAdvOfficePager;
    AdvOfficePager11: TAdvOfficePage;
    AdvOfficePager12: TAdvOfficePage;
    AdvOfficePagerOfficeStyler1: TAdvOfficePagerOfficeStyler;
    Label3: TLabel;
    server: TEdit;
    serverport: TEdit;
    Label4: TLabel;
    worldname: TEdit;
    Label5: TLabel;
    levelseed: TEdit;
    Label6: TLabel;
    leveltype: TComboBox;
    Label7: TLabel;
    generatorsettings: TEdit;
    Label8: TLabel;
    motd: TEdit;
    Label9: TLabel;
    permissionlevel: TEdit;
    Label10: TLabel;
    allowflight: TComboBox;
    Label11: TLabel;
    enablequery: TComboBox;
    Label12: TLabel;
    allownether: TComboBox;
    Label13: TLabel;
    achievements: TComboBox;
    Label14: TLabel;
    enablercon: TComboBox;
    Label15: TLabel;
    Label16: TLabel;
    directory: TAdvDirectoryEdit;
    forcegamemode: TComboBox;
    Label17: TLabel;
    maxbuildheight: TEdit;
    Label18: TLabel;
    spawnnpcs: TComboBox;
    Label19: TLabel;
    whitelist: TComboBox;
    Label20: TLabel;
    spawnanimals: TComboBox;
    Label21: TLabel;
    snooperenabled: TComboBox;
    Label22: TLabel;
    hardcore: TComboBox;
    Label23: TLabel;
    onlinemode: TComboBox;
    Label24: TLabel;
    pvp: TComboBox;
    Label25: TLabel;
    difficulty: TComboBox;
    Label26: TLabel;
    commandblock: TComboBox;
    Label27: TLabel;
    playeridletimeout: TComboBox;
    Label28: TLabel;
    gamemode: TComboBox;
    Label29: TLabel;
    maxplayers: TEdit;
    Label30: TLabel;
    spawnmonsters: TComboBox;
    Label31: TLabel;
    viewdistance: TComboBox;
    Label32: TLabel;
    generatestructures: TComboBox;
    Label33: TLabel;
    resourcepack: TEdit;
    Label34: TLabel;
    eula: TComboBox;
    Label35: TLabel;
    queryport: TEdit;
    Label36: TLabel;
    maxticktime: TEdit;
    Label37: TLabel;
    rconpasswort: TEdit;
    Image2: TImage;
    Bevel1: TBevel;
    AdvGlowButton2: TAdvGlowButton;
    AdvGlowButton3: TAdvGlowButton;
    AdvGlowButton4: TAdvGlowButton;
    AdvGlowButton5: TAdvGlowButton;
    AdvGlowButton6: TAdvGlowButton;
    ImageList1: TImageList;
    OpenDialog1: TOpenDialog;
    SaveDialog1: TSaveDialog;
    Label38: TLabel;
    ram: TComboBox;
    Label39: TLabel;
    Memo1: TMemo;
    Memo2: TMemo;
    md5: TDCP_md5;
    DCP_3des1: TDCP_3des;
    procedure FormShow(Sender: TObject);
    procedure AdvGlowButton2Click(Sender: TObject);
    procedure AdvGlowButton6Click(Sender: TObject);
    procedure AdvGlowButton3Click(Sender: TObject);
    procedure AdvGlowButton4Click(Sender: TObject);
    procedure AdvGlowButton5Click(Sender: TObject);
  private
    { Private-Deklarationen }
  public
    { Public-Deklarationen }
  end;

var
  makeAServerFrm: TmakeAServerFrm;

implementation

uses main;

{$R *.dfm}

function SetStyle(Flag: Integer): TTMSStyle; StdCall; external 'ahnetrl.dll';
procedure ExecuteFile(Filename, Params, WorkDir: String); StdCall; external 'ahnetrl.dll';
function ReadFromIni(Filename, Section, Key: String): String; StdCall; external 'ahnetrl.dll';
procedure WriteToIni(Filename, Section, Key, Value: String); StdCall; external 'ahnetrl.dll';


procedure TmakeAServerFrm.FormShow(Sender: TObject);
begin
  // SET STYLE
  advformstyler1.Style:=SetStyle(StrToInt(Config[5]));

  // SET DEFAULT VALUES
  server.Text:='localhost';
  serverport.Text:='25565';
  worldname.Text:='world';
  levelseed.Text:='';
  leveltype.ItemIndex:=0;
  generatorsettings.Text:='';
  ram.ItemIndex:=1;
  motd.Text:='';
  Directory.Text:=ExtractFilePath(application.ExeName);
  permissionlevel.Text:='4';
  allowflight.ItemIndex:=1;
  enablequery.ItemIndex:=1;
  allownether.ItemIndex:=1;
  achievements.ItemIndex:=1;
  enablercon.ItemIndex:=1;
  forcegamemode.ItemIndex:=1;
  maxbuildheight.Text:='256';
  spawnnpcs.ItemIndex:=0;
  whitelist.ItemIndex:=1;
  spawnanimals.ItemIndex:=0;
  snooperenabled.ItemIndex:=0;
  hardcore.ItemIndex:=1;
  onlinemode.ItemIndex:=0;
  pvp.ItemIndex:=0;
  difficulty.ItemIndex:=1;
  commandblock.ItemIndex:=1;
  playeridletimeout.ItemIndex:=0;
  gamemode.ItemIndex:=0;
  maxplayers.Text:='20';
  spawnmonsters.ItemIndex:=0;
  viewdistance.ItemIndex:=7;
  generatestructures.ItemIndex:=0;
  resourcepack.Text:='';
  eula.ItemIndex:=0;
  queryport.Text:='25565';
  maxticktime.Text:='-1';
  rconpasswort.Text:='';
  OpenDialog1.InitialDir:=ExtractFilePath(application.ExeName);
  SaveDialog1.InitialDir:=ExtractFilePath(application.ExeName);
end;

procedure TmakeAServerFrm.AdvGlowButton2Click(Sender: TObject);
begin
  ExecuteFile('http://minecraft-de.gamepedia.com/Server.properties','','');
end;

procedure TmakeAServerFrm.AdvGlowButton6Click(Sender: TObject);
begin
  close;
end;

procedure TmakeAServerFrm.AdvGlowButton3Click(Sender: TObject);
var
  filename, Section: String;
begin
  if OpenDialog1.Execute then
  begin
    filename:=OpenDialog1.FileName;
    section:= 'DATA';

    server.Text:=ReadFromIni(filename, section,'server');
    serverport.Text:=ReadFromIni(filename, section,'serverport');
    worldname.Text:=ReadFromIni(filename, section,'worldname');
    levelseed.Text:=ReadFromIni(filename, section,'levelseed');
    leveltype.ItemIndex:=StrToInt(ReadFromIni(filename, section,'leveltype'));
    generatorsettings.Text:=ReadFromIni(filename, section,'generatorsettings');
    ram.ItemIndex:=StrToInt(ReadFromIni(filename, section,'ram'));
    motd.Text:=ReadFromIni(filename, section,'motd');
    Directory.Text:=ReadFromIni(filename, section,'directory');
    permissionlevel.Text:=ReadFromIni(filename, section,'permissionlevel');
    allowflight.ItemIndex:=StrToInt(ReadFromIni(filename, section,'allowflight'));
    enablequery.ItemIndex:=StrToInt(ReadFromIni(filename, section,'enablequery'));
    allownether.ItemIndex:=StrToInt(ReadFromIni(filename, section,'allownether'));
    achievements.ItemIndex:=StrToInt(ReadFromIni(filename, section,'achievements'));
    enablercon.ItemIndex:=StrToInt(ReadFromIni(filename, section,'enablercon'));
    forcegamemode.ItemIndex:=StrToInt(ReadFromIni(filename, section,'forcegamemode'));
    maxbuildheight.Text:=ReadFromIni(filename, section,'maxbuildheight');
    spawnnpcs.ItemIndex:=StrToInt(ReadFromIni(filename, section,'spawnnpcs'));
    whitelist.ItemIndex:=StrToInt(ReadFromIni(filename, section,'whitelist'));
    spawnanimals.ItemIndex:=StrToInt(ReadFromIni(filename, section,'spawnanimals'));
    snooperenabled.ItemIndex:=StrToInt(ReadFromIni(filename, section,'snooperenabled'));
    hardcore.ItemIndex:=StrToInt(ReadFromIni(filename, section,'hardcore'));
    onlinemode.ItemIndex:=StrToInt(ReadFromIni(filename, section,'onlinemode'));
    pvp.ItemIndex:=StrToInt(ReadFromIni(filename, section,'pvp'));
    difficulty.ItemIndex:=StrToInt(ReadFromIni(filename, section,'difficulty'));
    commandblock.ItemIndex:=StrToInt(ReadFromIni(filename, section,'commandblock'));
    playeridletimeout.ItemIndex:=StrToInt(ReadFromIni(filename, section,'playeridletimeout'));
    gamemode.ItemIndex:=StrToInt(ReadFromIni(filename, section,'gamemode'));
    maxplayers.Text:=ReadFromIni(filename, section,'maxplayers');
    spawnmonsters.ItemIndex:=StrToInt(ReadFromIni(filename, section,'spawnmonsters'));
    viewdistance.ItemIndex:=StrToInt(ReadFromIni(filename, section,'viewdistance'));
    generatestructures.ItemIndex:=StrToInt(ReadFromIni(filename, section,'generatestructures'));
    resourcepack.Text:=ReadFromIni(filename, section,'resourcepack');
    eula.ItemIndex:=StrToInt(ReadFromIni(filename, section,'eula'));
    queryport.Text:=ReadFromIni(filename, section,'queryport');
    maxticktime.Text:=ReadFromIni(filename, section,'maxticktime');
    rconpasswort.Text:=ReadFromIni(filename, section,'rconpasswort');
    OpenDialog1.InitialDir:=ReadFromIni(filename, section,'directory');
    SaveDialog1.InitialDir:=ReadFromIni(filename, section,'directory');
  end;
end;

procedure TmakeAServerFrm.AdvGlowButton4Click(Sender: TObject);
var
  filename, section: String;
begin
  if SaveDialog1.Execute then
  begin
    filename:=SaveDialog1.FileName;
    section:= 'DATA';

    WriteToIni(filename, section, 'server', server.Text);
    WriteToIni(filename, section, 'serverport', serverport.Text);
    WriteToIni(filename, section, 'worldname', worldname.Text);
    WriteToIni(filename, section, 'levelseed', levelseed.Text);
    WriteToIni(filename, section, 'leveltype', IntToStr(leveltype.ItemIndex));
    WriteToIni(filename, section, 'ram', IntToStr(ram.ItemIndex));
    WriteToIni(filename, section, 'generatorsettings', generatorsettings.Text);
    WriteToIni(filename, section, 'motd', motd.Text);
    WriteToIni(filename, section, 'directory', Directory.Text);
    WriteToIni(filename, section, 'permissionlevel', permissionlevel.Text);
    WriteToIni(filename, section, 'allowflight', IntToStr(allowflight.ItemIndex));
    WriteToIni(filename, section, 'enablequery', IntToStr(enablequery.ItemIndex));
    WriteToIni(filename, section, 'allownether', IntToStr(allownether.ItemIndex));
    WriteToIni(filename, section, 'achievements', IntToStr(achievements.ItemIndex));
    WriteToIni(filename, section, 'enablercon', IntToStr(enablercon.ItemIndex));
    WriteToIni(filename, section, 'forcegamemode', IntToStr(forcegamemode.ItemIndex));
    WriteToIni(filename, section, 'maxbuildheight', maxbuildheight.Text);
    WriteToIni(filename, section, 'spawnnpcs', IntToStr(spawnnpcs.ItemIndex));
    WriteToIni(filename, section, 'whitelist', IntToStr(whitelist.ItemIndex));
    WriteToIni(filename, section, 'spawnanimals', IntToStr(spawnanimals.ItemIndex));
    WriteToIni(filename, section, 'snooperenabled', IntToStr(snooperenabled.ItemIndex));
    WriteToIni(filename, section, 'hardcore', IntToStr(hardcore.ItemIndex));
    WriteToIni(filename, section, 'onlinemode', IntToStr(onlinemode.ItemIndex));
    WriteToIni(filename, section, 'pvp', IntToStr(pvp.ItemIndex));
    WriteToIni(filename, section, 'difficulty', IntToStr(difficulty.ItemIndex));
    WriteToIni(filename, section, 'commandblock', IntToStr(commandblock.ItemIndex));
    WriteToIni(filename, section, 'playeridletimeout', IntToStr(playeridletimeout.ItemIndex));
    WriteToIni(filename, section, 'gamemode', IntToStr(gamemode.ItemIndex));
    WriteToIni(filename, section, 'maxplayers', maxplayers.Text);
    WriteToIni(filename, section, 'spawnmonsters', IntToStr(spawnmonsters.ItemIndex));
    WriteToIni(filename, section, 'viewdistance', IntToStr(viewdistance.ItemIndex));
    WriteToIni(filename, section, 'generatestructures', IntToStr(generatestructures.ItemIndex));
    WriteToIni(filename, section, 'resourcepack', resourcepack.Text);
    WriteToIni(filename, section, 'eula', IntToStr(eula.ItemIndex));
    WriteToIni(filename, section, 'queryport', queryport.Text);
    WriteToIni(filename, section, 'maxticktime', maxticktime.Text);
    WriteToIni(filename, section, 'rconpasswort', rconpasswort.Text);

  end;
end;

procedure TmakeAServerFrm.AdvGlowButton5Click(Sender: TObject);
begin
  memo1.Lines.Clear;
  memo1.Lines.Add('server-ip='+server.Text);
  memo1.Lines.Add('server-port='+serverport.Text);
  memo1.Lines.Add('level-name='+worldname.Text);
  memo1.Lines.Add('level-seed='+levelseed.Text);
  memo1.Lines.Add('level-type='+leveltype.Text);
  memo1.Lines.Add('generator-settings='+generatorsettings.Text);
  memo1.Lines.Add('motd='+motd.Text);
  memo1.Lines.Add('op-permission-level='+permissionlevel.Text);
  Memo1.Lines.Add('allow-flight='+allowflight.Text);
  Memo1.Lines.Add('enable-query='+enablequery.Text);
  Memo1.Lines.Add('allow-nether='+allownether.Text);
  Memo1.Lines.Add('announce-player-achievements='+achievements.Text);
  Memo1.Lines.Add('enable-rcon='+enablercon.Text);
  Memo1.Lines.Add('force-gamemode='+forcegamemode.Text);
  Memo1.Lines.Add('max-build-height='+maxbuildheight.Text);
  Memo1.Lines.Add('spawn-npcs='+spawnnpcs.Text);
  Memo1.Lines.Add('white-list='+whitelist.Text);
  Memo1.Lines.Add('spawn-animals='+spawnanimals.Text);
  Memo1.Lines.Add('snooper-anabled='+snooperenabled.Text);
  Memo1.Lines.Add('hardcore='+hardcore.Text);
  Memo1.Lines.Add('online-mode='+onlinemode.Text);
  Memo1.Lines.Add('pvp='+pvp.Text);
  Memo1.Lines.Add('difficulty='+difficulty.Text);
  Memo1.Lines.Add('enable-command-block='+commandblock.Text);
  Memo1.Lines.Add('player-idle-timeout='+playeridletimeout.Text);
  Memo1.Lines.Add('gamemode='+gamemode.Text);
  Memo1.Lines.Add('max-players='+maxplayers.Text);
  Memo1.Lines.Add('spawn-monsters='+spawnmonsters.Text);
  Memo1.Lines.Add('view-distance='+viewdistance.Text);
  Memo1.Lines.Add('generate-structures='+generatestructures.Text);
  Memo1.Lines.Add('resource-pack='+resourcepack.Text);
  Memo1.Lines.Add('eula='+eula.Text);
  Memo1.Lines.Add('query.port='+queryport.Text);
  Memo1.Lines.Add('max-tick-time='+maxticktime.Text);
  Memo1.Lines.Add('rcon.password='+rconpasswort.Text);

  memo2.Lines.Clear;
  memo2.Lines.Add('java -Xmx'+IntToStr(StrToInt(ram.Text)*1024)+'M -Xms'+IntToStr(StrToInt(ram.Text)*1024)+'M -jar minecraft_server.jar nogui');

  memo1.Lines.SaveToFile(ExtractFilePath(application.ExeName)+'server.properties');
  memo2.Lines.SaveToFile(ExtractFilePath(application.ExeName)+'run.bat');

end;

end.
