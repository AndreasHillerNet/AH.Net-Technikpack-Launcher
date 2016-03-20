unit settings;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, AdvEdit, AdvEdBtn, AdvDirectoryEdit, Buttons, AdvStyleIF,
  ExtCtrls;

type
  TconfigFrm = class(TForm)
    GroupBox1: TGroupBox;
    Label2: TLabel;
    javapath: TAdvDirectoryEdit;
    Label3: TLabel;
    javaexe: TEdit;
    Label4: TLabel;
    modpackpath: TAdvDirectoryEdit;
    GroupBox2: TGroupBox;
    Label5: TLabel;
    username: TEdit;
    Label6: TLabel;
    password: TEdit;
    GroupBox3: TGroupBox;
    Label7: TLabel;
    style: TComboBox;
    Label8: TLabel;
    ram: TComboBox;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    Timer1: TTimer;
    Bevel1: TBevel;
    procedure javapathChange(Sender: TObject);
    procedure styleChange(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure Timer1Timer(Sender: TObject);
  private
    { Private-Deklarationen }
  public
    { Public-Deklarationen }
  end;

var
  configFrm: TconfigFrm;

implementation

uses main;

{$R *.dfm}

function SetStyle(Flag: Integer): TTMSStyle; StdCall; external 'ahnetrl.dll';
procedure WriteToIni(Filename, Section, Key, Value: String); StdCall; external 'ahnetrl.dll';

procedure TconfigFrm.javapathChange(Sender: TObject);
begin
  javaexe.Text:=javapath.Text+'\java.exe';
end;

procedure TconfigFrm.styleChange(Sender: TObject);
begin
  mainFrm.AdvFormStyler1.Style:=SetStyle(style.ItemIndex);
end;

procedure TconfigFrm.FormShow(Sender: TObject);
begin
  javapath.Text:=Config[0];
  javaexe.Text:=Config[1];
  modpackpath.Text:=Config[2];
  username.Text:=Config[3];
  password.Text:=Config[4];
  style.ItemIndex:=StrToInt(Config[5]);
  ram.ItemIndex:=StrToInt(Config[6]);
end;

procedure TconfigFrm.BitBtn2Click(Sender: TObject);
begin
  close;
end;

procedure TconfigFrm.BitBtn1Click(Sender: TObject);
var
  configfile: String;
begin
  configfile:=ExtractFilePath(application.ExeName)+'config.ini';
  WriteToIni(configfile,'SETTINGS','JavaPath',javapath.Text);
  WriteToIni(configfile,'SETTINGS','JavaEXE',javaexe.Text);
  WriteToIni(configfile,'SETTINGS','ModpackPath',modpackpath.Text);
  WriteToIni(configfile,'SETTINGS','Username',username.Text);
  WriteToIni(configfile,'SETTINGS','Password',password.Text);
  WriteToIni(configfile,'SETTINGS','Design',IntToStr(style.ItemIndex));
  WriteToIni(configfile,'SETTINGS','RamIndex',IntToStr(ram.ItemIndex));
  Config[0]:=javapath.Text;
  Config[1]:=javaexe.Text;
  Config[2]:=modpackpath.Text;
  Config[3]:=username.Text;
  Config[4]:=password.Text;
  Config[5]:=IntToStr(style.ItemIndex);
  Config[6]:=IntToStr(ram.ItemIndex);
  if DirectoryExists(Config[2]) = false then
    mkdir(Config[2]);
  close;
end;

procedure TconfigFrm.Timer1Timer(Sender: TObject);
begin
  if (username.Text = '') or (password.Text = '') or ((username.Text = '') and (password.Text = '')) then
  begin
    bitbtn1.Enabled:=false;
    bitbtn2.Enabled:=false;
  end
  else
  begin
    bitbtn1.Enabled:=true;
    bitbtn2.Enabled:=true;
  end;
end;

end.
