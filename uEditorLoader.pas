unit uEditorLoader;

interface

uses
    WinAPI.Windows, system.SysUtils;

function EdInitServer(hWndMain: HWND; hWndCallback: HWND): LongBool; stdcall; external 'Editor.dll' name '_EdInitServer@8';
procedure EdExitServer; stdcall; external 'Editor.dll' name '_EdExitServer@0';
procedure EdExec(const Cmd: PAnsiChar); stdcall; external 'Editor.dll' name '_EdExec@4';
procedure EdSetProp(const Topic, Item, Value: PAnsiChar); stdcall; external 'Editor.dll' name '_EdSetProp@12';
function EdGetProp(const Topic, Item: PAnsiChar): PAnsiChar; stdcall; external 'Editor.dll' name '_EdGetProp@8';

// Для удобства
procedure ServerCmd(command: string); // отправить команду
function ServerGetProp(const Topic, Item: string): string; // получить что-то
procedure ServerSetProp(const Topic, Item, Value: string);

// Utilities
function NumSelectedActors(): Integer;
function IsMover(): Boolean;
function IsBrush(): Boolean;
function IsChildOf(className: string): Boolean;



implementation

procedure ServerCmd(command: string);
var
    AnsiCommand: AnsiString;
begin
    // Преобразуем команду в AnsiString
    AnsiCommand := AnsiString(command);

    // Преобразуем AnsiString в PAnsiChar
    EdExec(PAnsiChar(AnsiCommand));
end;

function ServerGetProp(const Topic, Item: string): string;
var
    AnsiTopic, AnsiItem: AnsiString;
    AnsiResult: PAnsiChar;
begin
    AnsiTopic := AnsiString(Topic);
    AnsiItem := AnsiString(Item);

    // Преобразуем команду в AnsiString
    AnsiResult := EdGetProp(PAnsiChar(AnsiTopic), PAnsiChar(AnsiItem));

    Result := string(AnsiResult);
end;

procedure ServerSetProp(const Topic, Item, Value: string);
var
    AnsiTopic, AnsiItem, AnsiValue: AnsiString;
begin
    AnsiTopic := AnsiString(Topic);
    AnsiItem := AnsiString(Item);

    EdSetProp(PAnsiChar(AnsiTopic), PAnsiChar(AnsiItem), PAnsiChar(AnsiValue));
end;

function NumSelectedActors(): Integer;
begin
    Result := StrToInt(ServerGetProp('Actor', 'NumSelected'));
end;

function IsMover(): Boolean;
begin
    Result := StrToInt(ServerGetProp('Actor', 'ISKINDOF CLASS=MOVER')) <> 0;
end;

function IsBrush(): Boolean;
begin
    Result := StrToInt(ServerGetProp('Actor', 'ISKINDOF CLASS=BRUSH')) <> 0;
end;

function IsChildOf(className: string): Boolean;
begin
    Result := StrToInt(ServerGetProp('Actor', 'ISKINDOF CLASS=' + className)) <> 0;
end;

end.
