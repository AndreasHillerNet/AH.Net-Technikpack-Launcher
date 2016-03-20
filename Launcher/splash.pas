unit splash;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, AdvProgressBar, StdCtrls, pngimage, ExeInfo;

type
  TsplashFrm = class(TForm)
    Image1: TImage;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    AdvProgressBar1: TAdvProgressBar;
    Bevel1: TBevel;
    ExeInfo1: TExeInfo;
    procedure FormCreate(Sender: TObject);
  private
    { Private-Deklarationen }
  public
    { Public-Deklarationen }
  end;

var
  splashFrm: TsplashFrm;

implementation

{$R *.dfm}

function GetProgramTitle(name, version: String): String; StdCall; external 'ahnetrl.dll';

procedure TsplashFrm.FormCreate(Sender: TObject);
begin
  image1.Picture.LoadFromFile(ExtractFilePath(application.ExeName)+'images\headerbg.png');
  label1.Caption:=GetProgramTitle(exeinfo1.ProductName,exeinfo1.FileVersion);
end;

end.
