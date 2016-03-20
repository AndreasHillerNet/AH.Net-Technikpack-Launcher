library minecraftapi;

{ Wichtiger Hinweis zur DLL-Speicherverwaltung: ShareMem muss sich in der
  ersten Unit der unit-Klausel der Bibliothek und des Projekts befinden (Projekt-
  Quelltext anzeigen), falls die DLL Prozeduren oder Funktionen exportiert, die
  Strings als Parameter oder Funktionsergebnisse übergeben. Das gilt für alle
  Strings, die von oder an die DLL übergeben werden -- sogar für diejenigen, die
  sich in Records und Klassen befinden. Sharemem ist die Schnittstellen-Unit zur
  Verwaltungs-DLL für gemeinsame Speicherzugriffe, BORLNDMM.DLL.
  Um die Verwendung von BORLNDMM.DLL zu vermeiden, können Sie String-
  Informationen als PChar- oder ShortString-Parameter übergeben. }


uses
  Sharemem,
  Dialogs,
  SysUtils,
  Classes,
  IdBaseComponent,
  IdIOHandler,
  IdIOHandlerSocket,
  IdSSLOpenSSL,
  IdComponent,
  IdTCPConnection,
  IdTCPClient,
  IdHTTP;

{$R *.res}

function getAssetUrl(hash: string): String; StdCall;
var
  baseDir: String;
begin
  baseDir:='http://resources.download.minecraft.net/';
  result:=baseDir + Copy(hash,1,2) + '/' + hash;
end;

function getAssetPath(hash: string): String; Stdcall;
begin
  result:=Copy(hash, 1, 2);
end;

function getAccessData(Address, jsonString: String): String; stdcall;
var
  sResponse: String;
  JsonToSend: TStringStream;
  Request: String;
  IOHandler: TIdSSLIOHandlerSocket;
  http: TIdHttp;
begin
  Request:=jsonString;
  JsonToSend:=TStringStream.Create(Utf8Encode(jsonString));
  try
    Http:=TIdHttp.Create(nil);
    IOHandler:=TIdSSLIOHandlerSocket.Create(nil);
    Http.Request.ContentType := 'application/json';
    Http.Request.ContentEncoding:='utf-8';
    Http.IOHandler:=IOHandler;
    try
      sResponse := http.Post(Address,JsonToSend);
    except
      on E:Exception do
        ShowMessage('Error on request: '#13#10 + e.Message);
    end;
  finally
    JsonToSend.Free;
    IOHandler.Free;
    http.Free;
  end;
  result:=sResponse;
end;

exports

getAssetUrl,
getAssetPath,
getAccessData;

begin
end.
 