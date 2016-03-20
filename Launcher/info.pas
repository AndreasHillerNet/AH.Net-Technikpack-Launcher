unit info;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons;

type
  TinfoFrm = class(TForm)
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    Label11: TLabel;
    BitBtn1: TBitBtn;
    procedure FormShow(Sender: TObject);
    procedure Label6Click(Sender: TObject);
    procedure Label8Click(Sender: TObject);
    procedure Label10Click(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
  private
    { Private-Deklarationen }
  public
    { Public-Deklarationen }
  end;

var
  infoFrm: TinfoFrm;

implementation

uses main;

{$R *.dfm}

procedure ExecuteFile(Filename, Params, WorkDir: String); StdCall; external 'ahnetrl.dll';

procedure TinfoFrm.FormShow(Sender: TObject);
begin
  label1.Caption:=mainFrm.Caption;
end;

procedure TinfoFrm.Label6Click(Sender: TObject);
begin
  executefile('http://www.andreashiller.net','','');
end;

procedure TinfoFrm.Label8Click(Sender: TObject);
begin
  executefile('http://technikpack.andreashiller.net','','');
end;

procedure TinfoFrm.Label10Click(Sender: TObject);
begin
  executefile('mailto:kontakt@andreashiller.net','','');
end;

procedure TinfoFrm.BitBtn1Click(Sender: TObject);
begin
  close;
end;

end.
