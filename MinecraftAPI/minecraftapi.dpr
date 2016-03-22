library minecraftapi;

uses
  ShareMem,
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
  IdHTTP,
  uLkJSON;


type 
  TStringArray = array[0..3] of String;  

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

function getAccessData(Address, jsonString: String): String;
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
    IOHandler:=TIdSSLIOHandlerSocket.Create(Http);
    IOHandler.SSLOptions.Method:=sslvTLSv1;
    Http.Request.ContentType := 'application/json';
    Http.Request.ContentEncoding:='utf-8';
    Http.IOHandler:=IOHandler;
    try
      sResponse := http.Post(Address,JsonToSend);
    except
      result:='error';
    end;
  finally
    JsonToSend.Free;
    IOHandler.Free;
    http.Free;
  end;
  result:=sResponse;
end;

function validate(accesstoken, clienttoken: String): boolean; stdcall;
var
  baseurl, payload, output: String;
begin
  baseurl:='https://authserver.mojang.com/validate';
  payload:='{"accessToken":"'+accesstoken+'","clientToken":"'+clienttoken+'"}';
  output:=getAccessData(baseurl, payload);

  showMessage(output);

  if  output = '' then
    result:=true
  else
    result:=false;
end;

function authenticate(user, pass, ctoken: String): TStringArray; Stdcall;
var
  js: TlkJSONObject;
  ws: TlkJSONstring;
  accesstoken: String;
  clienttoken: String;
  profileid: String;
  username: String;
  baseurl: String;
  jsondata: String;
  jsonString: String;
begin
  //Authserver
  baseurl:='https://authserver.mojang.com/authenticate';
  //Json payload
  jsondata:='{"agent":{"name":"Minecraft","version":1},"username":"'+user+'","password":"'+pass+'","clientToken": "'+ctoken+'"}';
   try
    //Json Response String;
    jsonString:=getAccessData(baseurl,jsondata);
    // Parse the Reponse String
    js := TlkJSON.ParseText(jsonString) as TlkJSONobject;
    accesstoken:=js.getString('accessToken');
    clienttoken:=js.getString('clientToken');
    profileid:=js.Field['selectedProfile'].Field['id'].Value;
    username:=js.Field['selectedProfile'].Field['name'].Value;
    js.Free;
    result[0]:=accesstoken;
    result[1]:=clienttoken;
    result[2]:=profileid;
    result[3]:=username;
  except
    on E: Exception do
      ShowMessage(e.Message);
  end;
end;

exports

getAssetUrl,
getAssetPath,
authenticate,
validate;

begin
end.
 