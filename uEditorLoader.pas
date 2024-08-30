unit uEditorLoader;

interface

uses
    WinAPI.Windows, System.SysUtils, System.StrUtils, System.Classes, uEditor.Consts;

procedure EdInitServer(hWndMain: HWND; hWndCallback: HWND); stdcall; external 'Editor.dll' name '_EdInitServer@8';
procedure EdExitServer; stdcall; external 'Editor.dll' name '_EdExitServer@0';
procedure EdExec(const Cmd: PAnsiChar); stdcall; external 'Editor.dll' name '_EdExec@4';
procedure EdSetProp(const Topic, Item, Value: PAnsiChar); stdcall; external 'Editor.dll' name '_EdSetProp@12';
function EdGetProp(const Topic, Item: PAnsiChar): PAnsiChar; stdcall; external 'Editor.dll' name '_EdGetProp@8';

// Для удобства
procedure ServerCmd(command: string); // отправить команду
function ServerGetProp(const Topic, Item: string): string; // получить что-то
procedure ServerSetProp(const Topic, Item, Value: string); // Topic = Объект, Item = Поле, Value = значение?


// Utilities
function ExtractCommaString(var S: string): string;
function NumSelectedActors(): Integer;
function SelectedIsMover(): Boolean;
function SelectedIsBrush(): Boolean;
function SelectedIsChildOf(className: string): Boolean;
function GetSelectedClass(): string;
function GetPackagesList(): TArray<string>;
function Get_GIsRequestingExit(): Integer;
function DynamicFindClass(const SearchText: string): string;
function DynamicFindClassInChildren(const ParentClass: string; const SearchText: string): string;

function GetActorEvent(): string;
function GetActorTag(): string;
function GetActorName(): string;
function GetActorAttachTag(): string;
function GetActorBindName(): string;
function GetActorBarkBindName(): string;

procedure ServerSetCurrentClass(const NewClass: string);
procedure SetGridSize(const NewValue: Integer);
procedure SetRotGridSize(const NewValue: Integer);
procedure SetMoverKeyFrame(const NewKey: Integer);
procedure SelectActorsOfClass(const NewClass: string);

// New commands from Hanflings's EditorPatch
procedure SelectOfSubClass(const NewClass: string); // 	Works like the SELECT OFCLASS command, but includes subclasses as well.
procedure SelectOfTag(const NewTag: string); // 	Selects all Actors with Tag=<tag>.
procedure SelectOfEvent(const NewEvent: string); // 	Selects all Actors with Event=<event>.
procedure SelectOfAttachTag(const NewTag: string); // 	Selects all Actors with AttachTag=<attachtag>.
procedure SelectOfBindName(const NewBindName: string); //	Selects all Actors with Bindname=<bindname>
procedure SelectOfBarkBindName(const NewBarkBindName: string); // 	Selects all Actors with BarkBindname=<barkbindname>






implementation

procedure ServerCmd(command: string);
var
    Cmd: AnsiString;
begin
    Cmd := AnsiString(command);  // Преобразуем строку в AnsiString

    EdExec(PAnsiChar(Cmd));
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

function ExtractCommaString(var S: string): string;
begin
    S := Trim(S);  // Убираем пробелы по краям
    var i := Pos(',', S);  // Ищем первую запятую

    if i <> 0 then
    begin
        Result := Copy(S, 1, i - 1);  // Извлекаем элемент до запятой
        Delete(S, 1, i);  // Удаляем извлеченный элемент и запятую из исходной строки
    end
    else
    begin
        Result := S;  // Если запятая не найдена, возвращаем всю строку
        S := '';  // Очищаем исходную строку
    end;
end;

function NumSelectedActors(): Integer;
begin
    Result := StrToInt(ServerGetProp('Actor', 'NumSelected'));
end;

function SelectedIsMover(): Boolean;
begin
    Result := StrToInt(ServerGetProp('Actor', 'IsKindOf CLASS=MOVER')) <> 0;
end;

function SelectedIsBrush(): Boolean;
begin
    Result := StrToInt(ServerGetProp('Actor', 'IsKindOf CLASS=BRUSH')) <> 0;
end;

function SelectedIsChildOf(className: string): Boolean;
begin
    Result := StrToInt(ServerGetProp('Actor', 'IsKindOf CLASS=' + className)) <> 0;
end;

function GetSelectedClass(): string;
begin
    Result := ServerGetProp('Actor', 'ClassSelected');
end;

function GetPackagesList(): TArray<string>;
var
    List: string;
    Package: string;
    Packages: TArray<string>;
    bShouldAdd: Boolean;
begin
    // Why not EditPackages..?
    List := ServerGetProp('OBJ', 'PACKAGES CLASS=Class');
    // Запускаем цикл, пока в строке List есть элементы
    while List <> '' do
    begin
        // Извлекаем первый элемент из строки
        Package := ExtractCommaString(List);
        // Проверяем, если этот пакет находится в списке FilterPackages
        bShouldAdd := True;
        for var i := Low(uEditor.Consts.EditorPatchFileNames) to High(uEditor.Consts.FilterPackages) do
        begin
            if SameText(Package, uEditor.Consts.FilterPackages[i]) then
            begin
                bShouldAdd := False;
                Break;
            end;
        end;
        // Если пакет не в списке FilterPackages, добавляем его в массив
        if bShouldAdd then
            Packages := Packages + [Package];
    end;
    // Возвращаем массив пакетов
    Result := Packages;
end;

function Get_GIsRequestingExit(): Integer;
var
    hCoreDll: HMODULE;
    GIsRequestingExitPtr: PInteger;
begin
    Result := -1; // Default result value to indicate failure

    // Load the DLL
    hCoreDll := LoadLibrary('Core.dll');
    if hCoreDll = 0 then
    begin
        MessageBox(0, 'Failed to load Core.dll', 'Core.dll', MB_OK + MB_ICONSTOP + MB_DEFBUTTON2 + MB_TOPMOST);
        Exit;
    end;

    try
        // Get the address of the GIsRequestingExit variable
        GIsRequestingExitPtr := GetProcAddress(hCoreDll, '?GIsRequestingExit@@3HA');
        if GIsRequestingExitPtr = nil then
        begin
            MessageBox(0, 'Failed to locate GIsRequestingExit in ', 'Core.dll', MB_OK + MB_ICONSTOP + MB_DEFBUTTON2 + MB_TOPMOST);
            Exit;
        end;

        // Read the value of GIsRequestingExit
        Result := GIsRequestingExitPtr^;
    finally
        // Free the library
        FreeLibrary(hCoreDll);
    end;
end;

function DynamicFindClass(const SearchText: string): string;
var
    StartFrom: string;
    Lines: TStringList;
    i: Integer;
    CurrentLine, ClassName: string;
begin
    Result := 'Not Found';  // Начальное значение
    // Запрашиваем дочерние классы для 'Actor'
    StartFrom := ServerGetProp('Class', 'Query Parent=Actor');
    Lines := TStringList.Create;
    try
        Lines.Text := StartFrom;
        for i := 0 to Lines.Count - 1 do
        begin
            CurrentLine := Trim(Lines[i]);
            // Извлекаем имя класса до символа '|'
            ClassName := Copy(CurrentLine, 1, Pos('|', CurrentLine) - 1);
            // Убираем символ * если он присутствует
            if ClassName[1] = '*' then
                Delete(ClassName, 1, 1);
            // Сравнение с искомым текстом
            if SameText(ClassName, SearchText) then
            begin
                Result := ClassName;
                Exit;
            end;
            // Если у класса есть дочерние элементы (обозначение |C)
            if EndsText('|C', CurrentLine) then
            begin
                // Рекурсивный вызов функции для поиска в дочерних узлах
                Result := DynamicFindClassInChildren(ClassName, SearchText);
                if Result <> 'Not Found' then
                    Exit;
            end;
        end;
    finally
        Lines.Free();
    end;
end;

function DynamicFindClassInChildren(const ParentClass: string; const SearchText: string): string;
var
    StartFrom: string;
    Lines: TStringList;
    i: Integer;
    CurrentLine, ClassName: string;
begin
    Result := 'Not Found';  // Начальное значение
    // Запрашиваем дочерние классы для ParentClass
    StartFrom := ServerGetProp('Class', Format('Query Parent=%s', [ParentClass]));
    Lines := TStringList.Create;
    try
        Lines.Text := StartFrom;
        for i := 0 to Lines.Count - 1 do
        begin
            CurrentLine := Trim(Lines[i]);
            // Извлекаем имя класса до символа '|'
            ClassName := Copy(CurrentLine, 1, Pos('|', CurrentLine) - 1);
            // Убираем символ * если он присутствует
            if ClassName[1] = '*' then
                Delete(ClassName, 1, 1);
            // Сравнение с искомым текстом
            if SameText(ClassName, SearchText) then
            begin
                Result := ClassName;
                Exit;
            end;
            // Если у класса есть дочерние элементы (обозначение |C)
            if EndsText('|C', CurrentLine) then
            begin
                // Рекурсивный вызов функции для поиска в дочерних узлах
                Result := DynamicFindClassInChildren(ClassName, SearchText);
                if Result <> 'Not Found' then
                    Exit;
            end;
        end;
    finally
      Lines.Free;
    end;
end;

function GetActorEvent(): string;
begin
//
end;

function GetActorTag(): string;
begin
//
end;

function GetActorName(): string;
begin
//
end;

function GetActorAttachTag(): string;
begin
//
end;

function GetActorBindName(): string;
begin
//
end;

function GetActorBarkBindName(): string;
begin
  //
end;

procedure ServerSetCurrentClass(const NewClass: string);
begin
    var CheckSuccess := DynamicFindClass(NewClass);

    if UpperCase(CheckSuccess) = UpperCase(NewClass) then
        ServerCmd('SETCURRENTCLASS CLASS=' + Trim(NewClass))
    else
        MessageBox(0, PChar(NewClass +': '+ CheckSuccess), 'Class not found', MB_OK + MB_ICONINFORMATION + MB_TOPMOST);
end;

procedure SetGridSize(const NewValue: Integer);
begin
    ServerCmd(Format('MAP GRID X=%d Y=%d Z=%d', [NewValue, NewValue, NewValue]));
end;

procedure SetRotGridSize(const NewValue: Integer);
begin
    ServerCmd(Format('MAP ROTGRID X=%d Y=%d Z=%d', [NewValue, NewValue, NewValue]));
end;

procedure SetMoverKeyFrame(const NewKey: Integer);
begin
    ServerCmd(Format('ACTOR KEYFRAME NUM=%d', [NewKey]));
end;

procedure SelectActorsOfClass(const NewClass: string);
begin
    ServerCmd(Format('ACTOR SELECT OFCLASS CLASS=%s', [NewClass]));
end;

procedure SelectOfSubClass(const NewClass: string); // 	Works like the SELECT OFCLASS command, but includes subclasses as well.
begin
    ServerCmd(Format('ACTOR SELECT OFSUBCLASS CLASS=%s', [NewClass]));
end;

procedure SelectOfTag(const NewTag: string); // 	Selects all Actors with Tag=<tag>.
begin
    ServerCmd(Format('ACTOR SELECT OFTAG TAG=%s', [NewTag]));
end;

procedure SelectOfEvent(const NewEvent: string); // 	Selects all Actors with Event=<event>.
begin
    ServerCmd(Format('ACTOR SELECT OFEVENT EVENT=%s', [NewEvent]));
end;

procedure SelectOfAttachTag(const NewTag: string); // 	Selects all Actors with AttachTag=<attachtag>.
begin
    ServerCmd(Format('ACTOR SELECT OFATTACHTAG ATTACHTAG=%s', [NewTag]));
end;

procedure SelectOfBindName(const NewBindName: string); //	Selects all Actors with Bindname=<bindname>
begin
    ServerCmd(Format('ACTOR SELECT OFBINDNAME BINDNAME=%s', [NewBindName]));
end;

procedure SelectOfBarkBindName(const NewBarkBindName: string); // 	Selects all Actors with BarkBindname=<barkbindname>
begin
    ServerCmd(Format('ACTOR SELECT OFBARKBINDNAME BARKBINDNAME=%s', [NewBarkBindName]));
end;



end.
