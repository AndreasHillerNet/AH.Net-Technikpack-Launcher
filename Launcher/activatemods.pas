unit activatemods;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, ExtCtrls;

type
  TactivateModsFrm = class(TForm)
    Label1: TLabel;
    ListBox1: TListBox;
    Label2: TLabel;
    Label3: TLabel;
    ListBox2: TListBox;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    procedure FormShow(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
  private
    { Private-Deklarationen }
  public
    { Public-Deklarationen }
  end;

var
  activateModsFrm: TactivateModsFrm;

implementation

uses main;

{$R *.dfm}

procedure FindAllFiles(const FileList: tstrings;RootFolder: string; Maske: array of string; Recurse: Boolean = True); Stdcall; external 'ahnetrl.dll';

procedure TactivateModsFrm.FormShow(Sender: TObject);
begin
  ListBox1.Items.Clear;
  ListBox2.Items.Clear;
  FindAllFiles(ListBox1.Items,config[2]+'\mods',['*.jar','*.zip','*.litemod'],true);
  FindAllFiles(ListBox2.Items,config[2]+'\mods',['*.disabled'],true);
end;

procedure TactivateModsFrm.BitBtn1Click(Sender: TObject);
var
  selItem: String;
begin
  try
    selItem:=ListBox1.Items[ListBox1.ItemIndex];
    RenameFile(Config[2]+'\mods\'+selItem,Config[2]+'\mods\'+selItem+'.disabled');
    listBox2.Items.Add(selItem+'.disabled');
    listBox1.Items.Delete(ListBox1.ItemIndex);
  except

  end;
end;

procedure TactivateModsFrm.BitBtn2Click(Sender: TObject);
var
  selItem: string;
  newFile: String;
begin
  try
    selItem:=ListBox2.Items[ListBox2.ItemIndex];
    newFile:=StringReplace(selItem,'.disabled','',[rfReplaceAll, rfIgnoreCase]);
    RenameFile(Config[2]+'\mods\'+selItem,Config[2]+'\mods\'+newFile);
    ListBox2.Items.Delete(ListBox2.ItemIndex);
    ListBox1.Items.Add(newFile);
  except
  
  end;
end;

end.
