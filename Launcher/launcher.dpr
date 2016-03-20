program launcher;

uses
  ShareMem,
  Forms,
  Windows,
  main in 'main.pas' {mainFrm},
  settings in 'settings.pas' {configFrm},
  activatemods in 'activatemods.pas' {activateModsFrm},
  info in 'info.pas' {infoFrm},
  splash in 'splash.pas' {splashFrm};

{$R *.res}

procedure SetDelay(const Milliseconds: DWord); StdCall; external 'ahnetrl.dll';

begin
  splashFrm :=TsplashFrm.Create(application);
  try
    splashFrm.Show;
    Application.Initialize;
    splashFrm.Update;
    Application.CreateForm(TmainFrm, mainFrm);
  Application.CreateForm(TconfigFrm, configFrm);
  Application.CreateForm(TactivateModsFrm, activateModsFrm);
  Application.CreateForm(TinfoFrm, infoFrm);
  setDelay(3000);
    splashFrm.Hide;
  finally
    splashFrm.Free;
  end;
  Application.Run;
end.
