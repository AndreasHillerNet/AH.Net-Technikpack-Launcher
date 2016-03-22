unit main;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExeInfo, ImgList, Menus, AdvMenus, AdvAppStyler,
  AdvOfficeStatusBar, AdvOfficeStatusBarStylers, AdvToolBar,
  AdvToolBarStylers, AdvMenuStylers, AdvOfficePager, AdvOfficePagerStylers,
  pngimage, ExtCtrls, AdvGlowButton, cefvcl,ceflib, ActnList, WinXP, WebCopy,AdvStyleIF,
  urlmon, ConsoleIO, ZipMstr, CoolTrayIcon, AdvMemo, AdvPanel, AdvNavBar,
  FileCtrl, FlCtrlEx, AdvSplitter, AdvmWS, Buttons, AdvFindDialogForm, jpeg,
  OleCtrls, SHDocVw, JvComponentBase, JvCreateProcess;

type
  TmainFrm = class(TForm)
    ExeInfo1: TExeInfo;
    Image1: TImage;
    AdvDockPanel1: TAdvDockPanel;
    AdvToolBar1: TAdvToolBar;
    AdvToolBar2: TAdvToolBar;
    AdvOfficeStatusBar1: TAdvOfficeStatusBar;
    AdvOfficePager1: TAdvOfficePager;
    AdvOfficePager11: TAdvOfficePage;
    AdvOfficePager13: TAdvOfficePage;
    AdvOfficePagerOfficeStyler1: TAdvOfficePagerOfficeStyler;
    AdvMenuOfficeStyler1: TAdvMenuOfficeStyler;
    AdvToolBarOfficeStyler1: TAdvToolBarOfficeStyler;
    AdvOfficeStatusBarOfficeStyler1: TAdvOfficeStatusBarOfficeStyler;
    AdvFormStyler1: TAdvFormStyler;
    AdvMainMenu1: TAdvMainMenu;
    File1: TMenuItem;
    Configuration1: TMenuItem;
    N1: TMenuItem;
    Activateordeactivatemods1: TMenuItem;
    Buildaminecraftserverwiththemodpack1: TMenuItem;
    N2: TMenuItem;
    Backupaworld1: TMenuItem;
    Recoveraworld1: TMenuItem;
    N3: TMenuItem;
    exit1: TMenuItem;
    Help1: TMenuItem;
    Helptopics1: TMenuItem;
    N4: TMenuItem;
    Visitthemodpackwebsite1: TMenuItem;
    Visitthedeveloperwebsitegerman1: TMenuItem;
    N5: TMenuItem;
    CheckforUpdate1: TMenuItem;
    N6: TMenuItem;
    About1: TMenuItem;
    ImageList1: TImageList;
    ImageList2: TImageList;
    AdvToolBarButton1: TAdvToolBarButton;
    AdvToolBarButton2: TAdvToolBarButton;
    AdvToolBarButton3: TAdvToolBarButton;
    AdvToolBarButton4: TAdvToolBarButton;
    AdvToolBarButton5: TAdvToolBarButton;
    AdvToolBarButton6: TAdvToolBarButton;
    AdvToolBarButton7: TAdvToolBarButton;
    AdvToolBarButton8: TAdvToolBarButton;
    AdvToolBarButton9: TAdvToolBarButton;
    AdvToolBarButton10: TAdvToolBarButton;
    AdvToolBarButton11: TAdvToolBarButton;
    AdvToolBarSeparator8: TAdvToolBarSeparator;
    installMCBtn: TAdvGlowButton;
    startMCBtn: TAdvGlowButton;
    Label1: TLabel;
    console: TMemo;
    tabicons: TImageList;
    ActionList1: TActionList;
    configAction: TAction;
    WinXP1: TWinXP;
    WebCopy1: TWebCopy;
    activateAction: TAction;
    installMCSAction: TAction;
    backupAction: TAction;
    recoveryAction: TAction;
    exitAction: TAction;
    helpAction: TAction;
    webpackAction: TAction;
    webAction: TAction;
    updateAction: TAction;
    infoAction: TAction;
    ConsoleIO1: TConsoleIO;
    ZipMaster1: TZipMaster;
    Memo1: TMemo;
    CoolTrayIcon1: TCoolTrayIcon;
    AdvPopupMenu1: TAdvPopupMenu;
    Activateordeactivatemods2: TMenuItem;
    Makeaminecraftserverwiththemodpack1: TMenuItem;
    BackupaworldtoaZIPFile1: TMenuItem;
    RecoveraworldfromaZIPFile1: TMenuItem;
    StartMinecraftwiththeAHNetTechnikpack1: TMenuItem;
    N7: TMenuItem;
    N8: TMenuItem;
    Helptopics2: TMenuItem;
    Visitthemodpackwebsite2: TMenuItem;
    Visitthedeveloperwebsitegerman2: TMenuItem;
    CheckforUpdates1: TMenuItem;
    About2: TMenuItem;
    N9: TMenuItem;
    Configuration2: TMenuItem;
    N10: TMenuItem;
    ExitProgram1: TMenuItem;
    startMinecraftAction: TAction;
    installMinecraftAction: TAction;
    InstallMinecraftwiththeAHNetTechnikpack1: TMenuItem;
    AdvOfficePage2: TAdvOfficePage;
    AdvNavBar1: TAdvNavBar;
    AdvNavBarPanel1: TAdvNavBarPanel;
    AdvPanel1: TAdvPanel;
    AdvPanelStyler1: TAdvPanelStyler;
    AdvMemo1: TAdvMemo;
    DirectoryListBoxEx1: TDirectoryListBoxEx;
    FileListBoxEx1: TFileListBoxEx;
    AdvSplitter1: TAdvSplitter;
    AdvHTMLMemoStyler1: TAdvHTMLMemoStyler;
    Timer1: TTimer;
    AdvDockPanel2: TAdvDockPanel;
    AdvToolBar3: TAdvToolBar;
    AdvToolBarButton12: TAdvToolBarButton;
    AdvToolBarSeparator1: TAdvToolBarSeparator;
    AdvToolBarButton13: TAdvToolBarButton;
    AdvToolBarButton14: TAdvToolBarButton;
    AdvToolBarSeparator2: TAdvToolBarSeparator;
    AdvToolBarButton15: TAdvToolBarButton;
    AdvToolBarButton16: TAdvToolBarButton;
    AdvToolBarButton17: TAdvToolBarButton;
    AdvToolBarButton18: TAdvToolBarButton;
    AdvToolBarSeparator3: TAdvToolBarSeparator;
    AdvToolBarButton19: TAdvToolBarButton;
    AdvToolBarSeparator4: TAdvToolBarSeparator;
    AdvToolBarButton20: TAdvToolBarButton;
    AdvMemoCut1: TAdvMemoCut;
    AdvMemoCopy1: TAdvMemoCopy;
    AdvMemoPaste1: TAdvMemoPaste;
    AdvMemoDelete1: TAdvMemoDelete;
    AdvMemoUndo1: TAdvMemoUndo;
    AdvMemoRedo1: TAdvMemoRedo;
    AdvMemoSelectAll1: TAdvMemoSelectAll;
    filebeopen: TLabel;
    AdvMemoFindDialog1: TAdvMemoFindDialog;
    AdvFindDialog1: TAdvFindDialog;
    WebBrowser1: TWebBrowser;
    JvCreateProcess1: TJvCreateProcess;
    procedure FormCreate(Sender: TObject);
    procedure configActionExecute(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure WebCopy1CopyDone(Sender: TObject);
    procedure WebCopy1CopyProgress(Sender: TObject; fileidx: Integer; size,
      totsize: Cardinal);
    procedure WebCopy1FileStart(Sender: TObject; idx: Integer);
    procedure ConsoleIO1ReceiveOutput(Sender: TObject; const Cmd: String);
    procedure ZipMaster1Progress(Sender: TObject;
      details: TZMProgressDetails);
    procedure ConsoleIO1Error(Sender: TObject; const Cmd: String);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure ConsoleIO1ReceiveError(Sender: TObject; const Cmd: String);
    procedure exitActionExecute(Sender: TObject);
    procedure activateActionExecute(Sender: TObject);
    procedure helpActionExecute(Sender: TObject);
    procedure webpackActionExecute(Sender: TObject);
    procedure webActionExecute(Sender: TObject);
    procedure infoActionExecute(Sender: TObject);
    procedure startMinecraftActionExecute(Sender: TObject);
    procedure installMinecraftActionExecute(Sender: TObject);
    procedure CoolTrayIcon1DblClick(Sender: TObject);
    procedure FileListBoxEx1DblClick(Sender: TObject);
    procedure AdvToolBarButton12Click(Sender: TObject);
    procedure AdvToolBarButton20Click(Sender: TObject);
    procedure installMCSActionExecute(Sender: TObject);
    procedure FormActivate(Sender: TObject);
  private
    { Private-Deklarationen }
  public
    { Public-Deklarationen }
  end;

var
  mainFrm: TmainFrm;
  config: Array[0..11] of String;

implementation

uses settings, activatemods, info, buildwebserver;

{$R *.dfm}

function CreateUUID: String; Stdcall; external 'ahnetrl.dll';
function GetProgramTitle(name, version: String): String; StdCall; external 'ahnetrl.dll';
function ReadFromIni(Filename, Section, Key: String): String; StdCall; external 'ahnetrl.dll';
procedure WriteToIni(Filename, Section, Key, Value: String); StdCall; external 'ahnetrl.dll';
function SetStyle(Flag: Integer): TTMSStyle; StdCall; external 'ahnetrl.dll';
procedure SetDelay(const Milliseconds: DWord); StdCall; external 'ahnetrl.dll';
procedure ExecuteFile(Filename, Params, WorkDir: String); StdCall; external 'ahnetrl.dll';
function getAssetUrl(hash: string): String; StdCall; external 'minecraftapi.dll';

procedure ShowWindow(flag: boolean);
begin
  with mainFrm do
  begin
    if flag = true then
    begin
      CoolTrayIcon1.ShowMainForm;
      CoolTrayIcon1.ShowTaskbarIcon;
      CoolTrayIcon1.IconVisible:=false;
    end
    else
    begin
      CoolTrayIcon1.HideTaskbarIcon;
      CoolTrayIcon1.HideTaskbarIcon;
      CoolTrayIcon1.IconVisible:=true;
    end;
  end;
end;

procedure TmainFrm.FormCreate(Sender: TObject);
begin
  Application.Title:=GetProgramTitle(ExeInfo1.ProductName,ExeInfo1.FileVersion);
  Caption:=Application.Title;
  UrlDownloadToFile(nil, PChar('http://technikpack.andreashiller.net/data/launcher.mcm'), PChar(ExtractFilePath(application.ExeName)+'launcher.mcm'), 0, nil);
  WebCopy1.Agent:=Exeinfo1.ProductName;
end;

procedure TmainFrm.configActionExecute(Sender: TObject);
begin
  configFrm.ShowModal;
end;

procedure TmainFrm.FormShow(Sender: TObject);
var
  configfile: String;
  uuid: String;
begin
  configfile:=ExtractFilePath(application.ExeName)+'config.ini';
  if(fileexists(configfile)) then
  begin
    config[0]:=ReadFromIni(configfile,'SETTINGS','JavaPath');
    config[1]:=ReadFromIni(configfile,'SETTINGS','JavaEXE');
    config[2]:=ReadFromIni(configfile,'SETTINGS','ModpackPath');
    config[3]:=ReadFromIni(configfile,'SETTINGS','Username');
    config[4]:=ReadFromIni(configfile,'SETTINGS','Password');
    config[5]:=ReadFromIni(configfile,'SETTINGS','Design');
    config[6]:=ReadFromIni(configfile,'SETTINGS','RamIndex');
    config[7]:=ReadFromIni(configfile,'TOKENS','ClientToken');
    config[8]:=ReadFromIni(configfile,'TOKENS','ProfileID');
    config[9]:=ReadFromIni(configfile,'TOKENS','AccessToken');
    config[10]:=ReadFromIni(configfile,'TOKENS','MinecraftUser');
    config[11]:=ReadFromIni(configfile,'TOKENS','TwitchToken');
  end
  else
  begin
    uuid:=CreateUUID();
    WriteToIni(configfile,'SETTINGS','JavaPath','');
    WriteToIni(configfile,'SETTINGS','JavaEXE','');
    WriteToIni(configfile,'SETTINGS','ModpackPath',ExtractFilePath(Application.ExeName)+'modpack');
    WriteToIni(configfile,'SETTINGS','Username','');
    WriteToIni(configfile,'SETTINGS','Password','');
    WriteToIni(configfile,'SETTINGS','Design','9');
    WriteToIni(configfile,'SETTINGS','RamIndex','2');
    WriteToIni(configfile,'TOKENS','ClientToken',uuid);
    WriteToIni(configfile,'TOKENS','ProfileID','');
    WriteToIni(configfile,'TOKENS','AccessToken','');
    WriteToIni(configfile,'TOKENS','MinecraftUser','');
    WriteToIni(configfile,'TOKENS','TwitchToken','');
    config[0]:='';
    config[1]:='';
    config[2]:=ExtractFilePath(Application.ExeName)+'modpack';
    config[3]:='';
    config[4]:='';
    config[5]:='9';
    config[6]:='2';
    config[7]:='uuid';
    config[8]:='';
    config[9]:='';
    config[10]:='';
    config[11]:='1234567890';
    configFrm.ShowModal;
  end;
  AdvFormStyler1.Style:=SetStyle(StrToInt(config[5]));

  // Checking Directorys and Files

  if DirectoryExists(config[2]) = false then
    mkdir(config[2]);

  if FileExists(config[2]+'\bin\minecraft.jar') then
  begin
    startMinecraftAction.Visible:=true;
    installMinecraftAction.Visible:=false;
  end
  else
  begin
    startMinecraftAction.Visible:=false;
    installMinecraftAction.Visible:=true;
  end;

  if DirectoryExists(config[2]+'\config') = true then
  begin
    AdvOfficePage2.TabVisible:=true;
    DirectoryListBoxEx1.Directory:=config[2]+'\config';
  end
  else
  begin
    AdvOfficePage2.TabVisible:=false;
  end;

end;

procedure TmainFrm.WebCopy1CopyDone(Sender: TObject);
begin
  //console.Lines.Add('['+DateToStr(now)+', '+TimeToStr(now)+'] All files downloaded ...');
end;

procedure TmainFrm.WebCopy1CopyProgress(Sender: TObject; fileidx: Integer;
  size, totsize: Cardinal);
begin
  if webcopy1.Items.Count > 1 then
  begin
    AdvOfficeStatusBar1.Panels[4].Progress.position:=fileidx;
  end
  else
  begin
    AdvOfficeStatusBar1.Panels[4].Progress.max:=totsize;
    AdvOfficeStatusBar1.Panels[4].Progress.position:=size;
  end;

end;

procedure TmainFrm.WebCopy1FileStart(Sender: TObject; idx: Integer);
begin
  AdvOfficeStatusBar1.Panels[3].Text:='Downloading '+  WebCopy1.Items.Items[idx].TargetFilename+ ' ...';
  //console.Lines.Add('['+DateToStr(now)+', '+TimeToStr(now)+'] Downloading '+WebCopy1.Items.Items[idx].TargetFilename+' ...');
end;

procedure TmainFrm.ConsoleIO1ReceiveOutput(Sender: TObject;
  const Cmd: String);
begin
  console.Lines.Add(Cmd);
end;

procedure TmainFrm.ZipMaster1Progress(Sender: TObject;
  details: TZMProgressDetails);
begin
  AdvOfficeStatusBar1.Panels[4].Progress.max:=100;
  AdvOfficeStatusBar1.Panels[4].Progress.position:=details.TotalPerCent;
end;

procedure TmainFrm.ConsoleIO1Error(Sender: TObject; const Cmd: String);
begin
  console.Lines.Add('['+TimeToStr(now)+'] [Launcher] Error: '+cmd);
end;

procedure TmainFrm.FormCloseQuery(Sender: TObject; var CanClose: Boolean);
begin
  DeleteFile(config[2]+'\starter.bat');
  DeleteFile(ExtractFilePath(Application.ExeName)+'launcher.mcm');
end;

procedure TmainFrm.ConsoleIO1ReceiveError(Sender: TObject;
  const Cmd: String);
begin
  console.Lines.Add('['+TimeToStr(now)+'] [Launcher] Error: '+cmd);
end;

procedure TmainFrm.exitActionExecute(Sender: TObject);
begin
  if MessageDlg('Are you sure that you want to exit '+caption+'?', mtConfirmation, [mbYes, mbNo], 0) = mrYes then
  begin
    mainFrm.CloseQuery;
    application.Terminate;
  end;

end;

procedure TmainFrm.activateActionExecute(Sender: TObject);
begin
  activateModsFrm.ShowModal;
end;

procedure TmainFrm.helpActionExecute(Sender: TObject);
begin
  executefile(extractFilePath(application.ExeName)+'help.chm','',ExtractFilePath(application.ExeName));
end;

procedure TmainFrm.webpackActionExecute(Sender: TObject);
begin
  executefile('http://technikpack.andreashiller.net','','');
end;

procedure TmainFrm.webActionExecute(Sender: TObject);
begin
  executefile('http://www.andreashiller.net','','');
end;

procedure TmainFrm.infoActionExecute(Sender: TObject);
begin
  infoFrm.ShowModal;
end;

procedure TmainFrm.startMinecraftActionExecute(Sender: TObject);
var
  starter: String;
begin
  console.Lines.Clear;
  memo1.Lines.Clear;
  memo1.Lines.LoadFromFile(extractfilepath(application.ExeName)+'launcher.mcm');
  starter:=memo1.Text;
  starter:=StringReplace(starter,'[InstallPath]',Config[2],[rfReplaceAll]);
  starter:=StringReplace(starter,'[Username]',Config[10],[rfReplaceAll]);
  starter:=StringReplace(starter,'[Uuid]',Config[8],[rfReplaceAll]);
  starter:=StringReplace(starter,'[AccessToken]',Config[9],[rfReplaceAll]);
  starter:=StringReplace(starter,'[TwitchToken]',Config[11],[rfReplaceAll]);
  starter:=StringReplace(starter,'[Ram]',IntToStr(StrToInt(Config[6])+1),[rfReplaceAll]);
  memo1.Lines.Clear;
  memo1.Lines.Add(starter);
  memo1.Lines.SaveToFile(config[2]+'\starter.bat');
  advOfficePager1.ActivePageIndex:=1;
  consoleio1.RunProcess(config[2]+'\starter.bat',config[2],false);
end;

procedure TmainFrm.installMinecraftActionExecute(Sender: TObject);
var
  webItem: TWebCopyItem;
  count, x: Integer;
  modlistfile: String;
  hash, path, url: String;
begin
  AdvOfficePager1.ActivePageIndex:=1;

  // '['+DateToStr(now)+', '+TimeToStr(now)+'] '
  console.Lines.Add('['+TimeToStr(now)+'] [Launcher] Installing Minecraft with the AH.Net Technik Modpack');
  setDelay(3000);
  console.Lines.Add('['+TimeToStr(now)+'] [Launcher] Creating folder bin ...');
  if directoryExists(Config[2]+'\bin') = false then mkdir(Config[2]+'\bin');
  console.Lines.Add('['+TimeToStr(now)+'] [Launcher] Creating folder mods ...');
  if directoryExists(Config[2]+'\mods') = false then mkdir(Config[2]+'\mods');
  console.Lines.Add('['+TimeToStr(now)+'] [Launcher] Downloading modlist ...');
  UrlDownloadToFile(nil, PChar('http://technikpack.andreashiller.net/data/modlist.ini'), PChar(Config[2]+'\modlist.ini'), 0, nil);
  console.Lines.Add('['+TimeToStr(now)+'] [Launcher] Preparing download of the mod files ...');
  WebCopy1.Items.Clear;
  modlistfile:=Config[2]+'\modlist.ini';
  count:=StrToInt(ReadFromIni(modlistfile,'Files','count'));
  for x:=1 to count do
  begin
    webItem:=WebCopy1.Items.Add;
    webItem.URL:='http://technikpack.andreashiller.net'+ReadFromIni(modlistfile,IntToStr(x),'path')+ReadFromIni(modlistfile,IntToStr(x),'name');
    WebItem.TargetDir:=Config[2]+ReadFromIni(modlistfile,IntToStr(x),'path');
    WebItem.TargetFilename:=ReadFromIni(modlistfile,IntToSTr(x),'name');
  end;
  console.Lines.Add('['+TimeToStr(now)+'] [Launcher] Start downloading '+inttostr(x-1)+' mod files ...');
  AdvOfficeStatusBar1.Panels[4].Progress.max:=WebCopy1.Items.Count;
  WebCopy1.Execute;
  deletefile(config[2]+'\modlist.ini');

  // Downloading assets
  UrlDownloadToFile(nil, PChar('http://technikpack.andreashiller.net/data/assets.ini'), PChar(Config[2]+'\assets.ini'), 0, nil);
  console.Lines.Add('['+TimeToStr(now)+'] [Launcher] Preparing download of the Minecraft assets ...');

  count:=StrToInt(ReadFromIni(Config[2]+'\assets.ini','FILES','count'));
  webcopy1.Items.Clear;
  if directoryExists(config[2]+'\assets') = false then
    mkdir(config[2]+'\assets');
  if directoryexists(config[2]+'\assets\objects') = false then
    mkdir(config[2]+'\assets\objects');

  for x:=1 to count do
  begin
    hash:=ReadFromIni(Config[2]+'\assets.ini',IntToStr(x),'hash');
    path:=ReadFromIni(Config[2]+'\assets.ini',IntToStr(x),'path');
    url:=getAssetUrl(hash);
    if directoryexists(Config[2]+'\assets\objects\'+path) then
        mkdir(Config[2]+'\assets\objects\'+path);
    webItem:=WebCOpy1.Items.Add;
    webItem.URL:=url;
    webItem.TargetDir:=Config[2]+'\assets\objects\'+path;
    webItem.TargetFilename:=hash;
  end;

  // Downloading Assets
  console.Lines.Add('['+TimeToStr(now)+'] [Launcher] Downloading Minecraft assets ...');
  AdvOfficeStatusbar1.Panels[4].Progress.max:=count;
  Webcopy1.Execute;
  deletefile(config[2]+'\assets.ini');

  if directoryexists(config[2]+'\assets\indexes') = false then
    mkdir(config[2]+'\assets\indexes');

  // Downloading asset index file
  console.Lines.Add('['+TimeToStr(now)+'] [Launcher] Downloading asset index file ...');
  UrlDownloadToFile(nil, PChar('https://s3.amazonaws.com/Minecraft.Download/indexes/1.7.10.json'), PChar(Config[2]+'\assets\indexes\1.7.10.json'), 0, nil);

  // Download libraries
  console.Lines.Add('['+TimeToStr(now)+'] [Launcher] Downloading libraries ...');
  if directoryexists(config[2]+'\libraries') = false then
    mkdir(config[2]+'\libraries');
  WebCopy1.Items.Clear;
  webitem:=WebCopy1.Items.Add;
  webitem.URL:='http://technikpack.andreashiller.net/libraries/libraries.jar';
  webitem.TargetDir:=config[2]+'\libraries';
  webitem.TargetFilename:='libraries.jar';
  WebCopy1.Execute;

  // Extracting libraries
  console.Lines.Add('['+TimeToStr(now)+'] [Launcher] Extracting packed libraries ...');
  Zipmaster1.DLLDirectory:=extractfilepath(application.exename);
  Zipmaster1.ExtrBaseDir:=Config[2]+'\libraries';
  Zipmaster1.ZipFileName:=Config[2]+'\libraries\libraries.jar';
  Zipmaster1.Extract;
  deletefile(Config[2]+'\libraries\libraries.jar');

  // Downloading the minecraft.jar and the minecraft.json
  console.Lines.Add('['+TimeToStr(now)+'] [Launcher] Downloading the minecraft.jar ...');
  WebCopy1.Items.Clear;
  webitem:=WebCopy1.Items.Add;
  webitem.URL:='http://s3.amazonaws.com/Minecraft.Download/versions/1.7.10/1.7.10.jar';
  webitem.TargetDir:=Config[2]+'\bin';
  webitem.TargetFilename:='minecraft.jar';
  Webcopy1.Execute;
  UrlDownloadToFile(nil, PChar('http://s3.amazonaws.com/Minecraft.Download/versions/1.7.10/1.7.10.json'), PChar(Config[2]+'\bin\1.7.10.json'), 0, nil);

  // Download natives
  console.Lines.Add('['+TimeToStr(now)+'] [Launcher] Downloading the natives.jar ...');
  if directoryexists(config[2]+'\bin\natives') = false then
    mkdir(config[2]+'\bin\natives');
  WebCopy1.Items.Clear;
  webitem:=WebCopy1.Items.Add;
  webitem.URL:='http://technikpack.andreashiller.net/bin/natives.jar';
  webitem.TargetDir:=config[2]+'\bin\natives';
  webitem.TargetFilename:='natives.jar';
  Webcopy1.Execute;

  // Extracting Natives
  console.Lines.Add('['+TimeToStr(now)+'] [Launcher] Extract the Natives ...');
  ZipMaster1.ExtrBaseDir:=config[2]+'\bin\natives';
  ZipMaster1.ZipFileName:=config[2]+'\bin\natives\natives.jar';
  ZipMaster1.Extract;
  DeleteFile(config[2]+'\bin\natives\natives.jar');
  UrlDownloadToFile(nil, PChar('http://technikpack.andreashiller.net/bin/forge.json'), PChar(Config[2]+'\bin\forge.json'), 0, nil);

  // Getting Custom Menu Template and resources
  console.Lines.Add('['+TimeToStr(now)+'] [Launcher] Downloading the custom menu template and resources ...');
  webcopy1.Items.Clear;
  webitem:=Webcopy1.Items.Add;
  webitem.URL:='http://technikpack.andreashiller.net/data/custommenu.zip';
  webitem.TargetDir:=config[2];
  webitem.TargetFilename:='custommenu.zip';
  webcopy1.Execute;

  // Extracting Custom Menu Template an resources
  console.Lines.Add('['+TimeToStr(now)+'] [Launcher] Extracting the custom menu template and resources ...');
  ZipMaster1.ExtrBaseDir:=config[2];
  ZipMaster1.ZipFileName:=config[2]+'\custommenu.zip';
  ZipMaster1.Extract;
  DeleteFile(config[2]+'\custommenu.zip');

  console.Lines.Add('['+TimeToStr(now)+'] [Launcher] Minecraft is successfully installed - ready to run...');
  startMCbtn.Visible:=true;
  installMCbtn.Visible:=false;
end;

procedure TmainFrm.CoolTrayIcon1DblClick(Sender: TObject);
begin
  ShowWindow(true);
end;

procedure TmainFrm.FileListBoxEx1DblClick(Sender: TObject);
begin
  advmemo1.Lines.LoadFromFile(FileListBoxEx1.FileName);
  filebeopen.Caption:=FileListBoxEx1.FileName;
end;

procedure TmainFrm.AdvToolBarButton12Click(Sender: TObject);
begin
  if MessageDlg('Are you sure that you want to overwrite this config file?',mtConfirmation, [mbYes, mbNo], 0) = mrYes then
  begin
    AdvMemo1.Lines.SaveToFile(filebeopen.Caption);
  end;
end;

procedure TmainFrm.AdvToolBarButton20Click(Sender: TObject);
begin
  AdvMemoFindDialog1.Execute;
end;

procedure TmainFrm.installMCSActionExecute(Sender: TObject);
begin
  makeAServerFrm.showModal;
end;

procedure TmainFrm.FormActivate(Sender: TObject);
begin
  Webbrowser1.Navigate('http://technikpack.andreashiller.net/launcherwelcome.php');
end;

end.
