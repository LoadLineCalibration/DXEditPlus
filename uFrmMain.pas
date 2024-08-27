unit uFrmMain;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Classes, Vcl.Graphics, Vcl.Controls, Vcl.Forms,
  Vcl.Dialogs, system.IniFiles, uEditorLoader, Vcl.StdCtrls, uFrmViewport, ES.BaseControls, ES.Layouts, Vcl.Menus,
  ES.CfxClasses, Vcl.Buttons, Vcl.ExtCtrls, uEditorTypes, Editor.Editor, Engine.UnCamera, Engine.UnObj, Vcl.ComCtrls,
  System.Threading, System.ImageList, Vcl.ImgList, system.IOUtils, System.StrUtils, uEditor.Consts, uEditor.Strings, JPP.BasicSpeedButton,
  Vcl.ToolWin, JvExControls, JvSpeedButton, Vcl.ButtonStylesAttributes, Vcl.StyledButton;

type
  TfrmMain = class(TForm)
    ButtonsPanel: TEsPanel;
    CommandBar: TEsPanel;
    mnuMainForm: TMainMenu;
    File1: TMenuItem;
    ViewportsPanel: TEsPanel;
    cmbCommand: TComboBox;
    Label1: TLabel;
    cmbLeftPanelsWidthRatio: TComboBox;
    ToolbarPanel: TEsPanel;
    Callback: TEdit;
    ViewportPopup: TPopupMenu;
    AddLighthere1: TMenuItem;
    N1: TMenuItem;
    Grid1: TMenuItem;
    Pivot1: TMenuItem;
    Levelproperties1: TMenuItem;
    N3: TMenuItem;
    N1unit1: TMenuItem;
    N2units1: TMenuItem;
    N4units1: TMenuItem;
    N8units1: TMenuItem;
    N16units1: TMenuItem;
    N32units1: TMenuItem;
    N64units1: TMenuItem;
    N128units1: TMenuItem;
    N256units1: TMenuItem;
    Placepivotsnappedhere1: TMenuItem;
    PlacePivothere1: TMenuItem;
    ActorSelectedPopup: TPopupMenu;
    ProgressBar: TProgressBar;
    View1: TMenuItem;
    ToolbarImages: TImageList;
    sbLog: TJppBasicSpeedButton;
    Masterbrowser1: TMenuItem;
    Recentfiles1: TMenuItem;
    N11: TMenuItem;
    N21: TMenuItem;
    N31: TMenuItem;
    N41: TMenuItem;
    N51: TMenuItem;
    N61: TMenuItem;
    N71: TMenuItem;
    N91: TMenuItem;
    N101: TMenuItem;
    Build1: TMenuItem;
    PlayLevel1: TMenuItem;
    N4: TMenuItem;
    RebuildBSPonly1: TMenuItem;
    RebuildGeometryonly1: TMenuItem;
    RebuildLightingOnly1: TMenuItem;
    RebuildAIPaths1: TMenuItem;
    BuildAll1: TMenuItem;
    N5: TMenuItem;
    BuildOptions1: TMenuItem;
    DeusExLevelInfoproperties1: TMenuItem;
    btnApplyViewportRatio: TButton;
    ProgressText: TStaticText;
    Edit1: TMenuItem;
    Copy1: TMenuItem;
    ButtonGroups: TCategoryPanelGroup;
    catBrushMode: TCategoryPanel;
    catBrushBuilders: TCategoryPanel;
    catOperations: TCategoryPanel;
    catExtra: TCategoryPanel;
    EditorModeImages: TImageList;
    sbViewportMove: TSpeedButton;
    sbBrushSheer: TSpeedButton;
    sbBrushScale: TSpeedButton;
    sbBrushRotate: TSpeedButton;
    sbSnapBrushStretch: TSpeedButton;
    sbTextureRotate: TSpeedButton;
    sbTexturePan: TSpeedButton;
    sbBrushStretch: TSpeedButton;
    bbCube: TSpeedButton;
    BrushBuildersImages: TImageList;
    bbSheet: TSpeedButton;
    New1: TMenuItem;
    Open1: TMenuItem;
    Savecurrentmap1: TMenuItem;
    Savecurrentmapas1: TMenuItem;
    Import1: TMenuItem;
    Export1: TMenuItem;
    N2: TMenuItem;
    N6: TMenuItem;
    N7: TMenuItem;
    N8: TMenuItem;
    Exit1: TMenuItem;
    Undo1: TMenuItem;
    Redo1: TMenuItem;
    N9: TMenuItem;
    Searchforactors1: TMenuItem;
    Cut1: TMenuItem;
    Paste1: TMenuItem;
    N10: TMenuItem;
    N12: TMenuItem;
    Duplicate1: TMenuItem;
    Delete1: TMenuItem;
    N13: TMenuItem;
    SelectAllActors1: TMenuItem;
    SelectNone1: TMenuItem;
    SelectSurfaces1: TMenuItem;
    LotsofstuffIveneverused1: TMenuItem;
    ActorClassBrowser1: TMenuItem;
    GroupBrowser1: TMenuItem;
    MeshBrowser1: TMenuItem;
    Musicbrowser1: TMenuItem;
    ScriptEditor1: TMenuItem;
    SoundBrowser1: TMenuItem;
    extureBrowser1: TMenuItem;
    N14: TMenuItem;
    Log1: TMenuItem;
    ActorProperties1: TMenuItem;
    Surfaceproperties1: TMenuItem;
    LevelProperties2: TMenuItem;
    DeusExLevelInfoProperties2: TMenuItem;
    N15: TMenuItem;
    Viewports1: TMenuItem;
    Implementsomething1: TMenuItem;
    Brush1: TMenuItem;
    Reset1: TMenuItem;
    MoveToOrigin1: TMenuItem;
    ResetPivot1: TMenuItem;
    ResetRotation1: TMenuItem;
    ResetScaling1: TMenuItem;
    ResetAll1: TMenuItem;
    N16: TMenuItem;
    mniBrushAdd: TMenuItem;
    mniBrushSubtract: TMenuItem;
    Intersect1: TMenuItem;
    DeIntersect1: TMenuItem;
    N17: TMenuItem;
    AddMover1: TMenuItem;
    AddDeusExMover1: TMenuItem;
    AddSpecial1: TMenuItem;
    N18: TMenuItem;
    OpenBrush1: TMenuItem;
    SaveBrushAs1: TMenuItem;
    N19: TMenuItem;
    Import2: TMenuItem;
    Export2: TMenuItem;
    Export3: TMenuItem;
    InvertSelection1: TMenuItem;
    ools1: TMenuItem;
    AdvancedOptions1: TMenuItem;
    N2DShapeEditor1: TMenuItem;
    Help1: TMenuItem;
    Placeholder1: TMenuItem;
    ToolBar1: TToolBar;
    ToolButton1: TToolButton;
    ServerSetCurrentClass1: TMenuItem;
    mniSelectedProperties: TMenuItem;
    mnuMoverKeys: TMenuItem;
    mniMoverKey0: TMenuItem;
    mniMoverKey1: TMenuItem;
    mniMoverKey2: TMenuItem;
    mniMoverKey3: TMenuItem;
    mniMoverKey4: TMenuItem;
    mniMoverKey5: TMenuItem;
    mniMoverKey6: TMenuItem;
    mniMoverKey7: TMenuItem;
    mnuReset: TMenuItem;
    mnuTransform: TMenuItem;
    mnuOrder: TMenuItem;
    mnuCopyPolygns: TMenuItem;
    mniMoveToOrigin: TMenuItem;
    mniMirrorAboutX: TMenuItem;
    mniOrderToFirst: TMenuItem;
    mniPolysToBrush: TMenuItem;
    mnuBrushSolidity: TMenuItem;
    mniBrushMakeSolid: TMenuItem;
    N23: TMenuItem;
    mniSelectAllOfType: TMenuItem;
    mniSelectNone: TMenuItem;
    mniSelectAllActors: TMenuItem;
    mnuSelectBrushes: TMenuItem;
    mniMapSelectAdds: TMenuItem;
    N24: TMenuItem;
    mniDuplicateSelection: TMenuItem;
    mniDeleteSelected: TMenuItem;
    mniEditScript: TMenuItem;
    mniResetPivot: TMenuItem;
    mniResetRotation: TMenuItem;
    mniResetScaling: TMenuItem;
    mniResetAllPositioning: TMenuItem;
    mniMirrorAboutY: TMenuItem;
    mniMirrorAboutZ: TMenuItem;
    mniOrderToLast: TMenuItem;
    mniPolysFromBrush: TMenuItem;
    mniBrushMakeSemiSolid: TMenuItem;
    mniBrushMakeNonSolid: TMenuItem;
    mniMapSelectSubtracts: TMenuItem;
    mniMapSelectSemiSolids: TMenuItem;
    mniMapSelectNonSolids: TMenuItem;
    mniTransformPermanently: TMenuItem;
    ActorPopupImages: TImageList;
    mniCut: TMenuItem;
    mniCopy: TMenuItem;
    mniPaste: TMenuItem;
    N20: TMenuItem;

    // new functions
    function CheckEditorPatch(): Boolean;
    function CheckFilesInPaths(const FileName: string; const EditPackages: TStrings; out MissingPackages: TStrings): Boolean;
    function GetEditPackages(const FileName: string): TStrings;
    function CheckPackageSource(const EditPackage: string): Boolean;

    // new procedures
    procedure OpenCamera(bReopen: Boolean; hWnd: HWND; X, Y, XR, YR: Integer; Flags, RenType: Longint; CameraName: String);
    procedure OpenCameras(bReopen: Boolean);

    procedure ReplaceLogWindowFont();
    procedure ShowLogWindow();
    procedure StartupCheck();


    procedure BuildCube();
    procedure DisableMouseAcceleration();
    procedure InitEditorServer();

    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormResize(Sender: TObject);
    procedure ButtonGroupsMouseWheel(Sender: TObject; Shift: TShiftState; WheelDelta: Integer; MousePos: TPoint;
      var Handled: Boolean);
    procedure cmbCommandKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure CallbackKeyPress(Sender: TObject; var Key: Char);
    procedure MeshImporttest1Click(Sender: TObject);
    procedure sbActorBrowserClick(Sender: TObject);
    procedure sbLogClick(Sender: TObject);
    procedure sbTextureBrowserClick(Sender: TObject);
    procedure Masterbrowser1Click(Sender: TObject);
    procedure sbScriptEditorClick(Sender: TObject);
    procedure sbSearchClick(Sender: TObject);
    procedure sbUndoClick(Sender: TObject);
    procedure sbRedoClick(Sender: TObject);
    procedure BuildOptions1Click(Sender: TObject);
    procedure DeusExLevelInfoproperties1Click(Sender: TObject);
    procedure Levelproperties1Click(Sender: TObject);
    procedure btnApplyViewportRatioClick(Sender: TObject);
    procedure bbCubeMouseDown(Sender: TObject; Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
    procedure FormCreate(Sender: TObject);
    procedure sbViewportMoveClick(Sender: TObject);
    procedure sbBrushSheerClick(Sender: TObject);
    procedure sbBrushScaleClick(Sender: TObject);
    procedure sbBrushStretchClick(Sender: TObject);
    procedure sbSnapBrushStretchClick(Sender: TObject);
    procedure sbBrushRotateClick(Sender: TObject);
    procedure sbTexturePanClick(Sender: TObject);
    procedure sbTextureRotateClick(Sender: TObject);
    procedure FormMouseMove(Sender: TObject; Shift: TShiftState; X, Y: Integer);
    procedure ServerSetCurrentClass1Click(Sender: TObject);
    procedure AdvancedOptions1Click(Sender: TObject);
    procedure bbSheetMouseDown(Sender: TObject; Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
    procedure ActorClassBrowser1Click(Sender: TObject);
    procedure extureBrowser1Click(Sender: TObject);
    procedure SetMoverKeyClick(Sender: TObject);
    procedure mniMoveToOriginClick(Sender: TObject);
    procedure mniResetPivotClick(Sender: TObject);
    procedure mniResetRotationClick(Sender: TObject);
    procedure mniResetScalingClick(Sender: TObject);
    procedure mniResetAllPositioningClick(Sender: TObject);
    procedure mniMirrorAboutXClick(Sender: TObject);
    procedure mniMirrorAboutYClick(Sender: TObject);
    procedure mniMirrorAboutZClick(Sender: TObject);
    procedure mniTransformPermanentlyClick(Sender: TObject);
    procedure mniOrderToFirstClick(Sender: TObject);
    procedure mniOrderToLastClick(Sender: TObject);
    procedure mniPolysToBrushClick(Sender: TObject);
    procedure mniPolysFromBrushClick(Sender: TObject);
    procedure mniMapSelectAddsClick(Sender: TObject);
    procedure mniMapSelectSubtractsClick(Sender: TObject);
    procedure mniMapSelectSemiSolidsClick(Sender: TObject);
    procedure mniMapSelectNonSolidsClick(Sender: TObject);
    procedure mniDuplicateSelectionClick(Sender: TObject);
    procedure mniDeleteSelectedClick(Sender: TObject);
    procedure mniSelectAllOfTypeClick(Sender: TObject);
    procedure mniSelectAllActorsClick(Sender: TObject);
    procedure mniSelectNoneClick(Sender: TObject);
    procedure mniBrushMakeSolidClick(Sender: TObject);
    procedure mniBrushMakeSemiSolidClick(Sender: TObject);
    procedure mniBrushMakeNonSolidClick(Sender: TObject);
    procedure mniSelectedPropertiesClick(Sender: TObject);
    procedure mniBrushAddClick(Sender: TObject);
    procedure mniBrushSubtractClick(Sender: TObject);
    procedure Intersect1Click(Sender: TObject);
    procedure DeIntersect1Click(Sender: TObject);
    procedure AddMover1Click(Sender: TObject);
    procedure AddDeusExMover1Click(Sender: TObject);
    procedure mniCutClick(Sender: TObject);
    procedure mniCopyClick(Sender: TObject);
    procedure mniPasteClick(Sender: TObject);
  private
    procedure CreateViewportPanels();
    procedure CreateViewports();
    procedure FitViewportsToWindow();
    procedure HandleCallback(Value: Integer);
  protected
    procedure WndProc(var Msg: TMessage); override;
    { Private declarations }
  public
    var BuildOptions: TBuildOptions;
    var BuildBrush: TBuildBrush;  // Global brush variable
    { Public declarations }
  end;

var
  frmMain: TfrmMain;
  hWndEditor: HWND;
  LeftPanelsWidthRatio: Float32 = 0.65;
  ViewportPanels: array[0..3] of TESPanel; // Массив панелей
  ViewPorts: array[0..3] of TfrmViewport; // формочки ^_^
  PropertiesWindowHandle: HWND;
  LogWindowHandle: HWND;
  LogWindowFont: HFONT;
  GIsRequestingExit: Integer;
  SelectedClassStr: string;
  bStartupCheckPassed: Boolean;
  ServerTask: ITask;


const
  LOG_WINDOW_FONT_NAME = 'Consolas';
  LOG_WINDOW_FONT_SIZE = 10;

implementation

{$R *.dfm}

uses uFrmScriptEditor, uFrmTextures, uFrmMeshImport, uFrmClassBrowser, uFrmMasterBrowser, uFrmBuildOptions, uFrmBrushBuilder;


procedure TfrmMain.FormResize(Sender: TObject);
begin
    FitViewportsToWindow();
    ServerCmd('CAMERA HIDESTANDARD');
    OpenCameras(True);
end;

procedure TfrmMain.HandleCallback(Value: Integer);
begin
    var MouseCoords: TPoint;
    GetCursorPos(MouseCoords);

    case Value - 32 of
        EDC_None:   ShowMessage('Do Nothing');
        EDC_Browse:   ShowMessage('Browse item');
        EDC_UseCurrent:   ShowMessage('Use current item');
        EDC_CurTexChange:  ShowMessage('Current texture changed');
        EDC_SelPolyChange:  ShowMessage('Poly selection set changed');
        //EDC_SelChange:  ShowMessage('Selection set changed');

        // Right click, show the popup menu
        EDC_RtClickTexture:
        begin
            frmTextures.TexturePopup.Popup(MouseCoords.X, MouseCoords.Y);
        end;

        EDC_RtClickPoly:
        begin
            ShowMessage('Right clicked on a polygon');
        end;

        EDC_RtClickActor:
        begin
            var NumSelected := NumSelectedActors();
            var bIsBrush := SelectedIsBrush();
            var bIsMover := SelectedIsMover();
            SelectedClassStr := GetSelectedClass();

            mnuMoverKeys.Visible := bIsMover;
            mnuTransform.Visible := bIsBrush;
            mnuOrder.Visible := bIsBrush;
            mnuCopyPolygns.Visible := bIsBrush;
            mnuBrushSolidity.Visible := bIsBrush;
            mnuSelectBrushes.Visible := bIsBrush;

            if SelectedClassStr <> '' then // Выбрано несколько акторов одного класса
            begin
                mniSelectedProperties.Caption := Format('%s properties (%d selected)...', [SelectedClassStr, NumSelected]);
                mniSelectAllOfType.Caption := Format('Select All "%s" actors', [SelectedClassStr]);
                mniSelectAllOfType.Visible := True;
                mniEditScript.Visible := True;
            end
            else
            begin // Выбраны разные классы
                mniSelectedProperties.Caption := Format('Actor properties (%d selected)...', [NumSelected]);
                mniSelectAllOfType.Visible := False;
                mniEditScript.Visible := False;
            end;


            ActorSelectedPopup.Popup(MouseCoords.X, MouseCoords.Y);
        end;

        EDC_RtClickWindow:
        begin
             //ShowMessage('Right clicked on camera window');
        end;

        EDC_RtClickWindowCanAdd:
        begin
            ViewportPopup.Popup(MouseCoords.X, MouseCoords.Y);
            // ShowMessage('Right clicked on camera window with the option to add');
        end;

        EDC_MapChange:
        begin
            ShowMessage('Map geometry changed');
        end;
    end;

    Callback.text := IntToStr(Value - 32);
end;

procedure TfrmMain.CreateViewports();
begin
    for var i := 0 to High(ViewPorts) do
    begin
        ViewPorts[i] := TfrmViewport.Create(ViewportPanels[i]);
        ViewPorts[i].Parent := ViewportPanels[i];
        ViewPorts[i].Align := alClient;
        ViewPorts[i].Show();
    end;
end;

procedure TfrmMain.mniBrushAddClick(Sender: TObject);
begin
    ServerCmd('BRUSH ADD');
end;

procedure TfrmMain.mniBrushMakeNonSolidClick(Sender: TObject);
begin
    ServerCmd('MAP SETBRUSH CLEARFLAGS=' + Trim(IntToStr(PF_SEMISOLID + PF_NOTSOLID)) + ' SETFLAGS=' + Trim(IntToStr(PF_NOTSOLID)));
end;

procedure TfrmMain.mniBrushMakeSemiSolidClick(Sender: TObject);
begin
    ServerCmd('MAP SETBRUSH CLEARFLAGS=' + Trim(IntToStr(PF_SEMISOLID + PF_NOTSOLID)) + ' SETFLAGS=' + Trim(IntToStr(PF_SEMISOLID)));
end;

procedure TfrmMain.mniBrushMakeSolidClick(Sender: TObject);
begin
    ServerCmd('MAP SETBRUSH CLEARFLAGS=' + Trim(IntToStr(PF_SEMISOLID + PF_NOTSOLID)) + ' SETFLAGS=' + Trim(IntToStr(0)));
end;

procedure TfrmMain.mniBrushSubtractClick(Sender: TObject);
begin
    ServerCmd('BRUSH SUBTRACT');
end;

procedure TfrmMain.mniCopyClick(Sender: TObject);
begin
    ServerCmd('EDIT COPY"');
end;

procedure TfrmMain.mniCutClick(Sender: TObject);
begin
    ServerCmd('EDIT CUT');
end;

procedure TfrmMain.mniDeleteSelectedClick(Sender: TObject);
begin
    ServerCmd('ACTOR DELETE');
end;

procedure TfrmMain.DeIntersect1Click(Sender: TObject);
begin
    ServerCmd('BRUSH FROM DEINTERSECTION');
end;

procedure TfrmMain.DeusExLevelInfoproperties1Click(Sender: TObject);
begin
    ServerCmd('EDITACTOR CLASS=DeusExLevelInfo');
end;

procedure TfrmMain.DisableMouseAcceleration();
var
    MouseParams: array[0..2] of Integer;
begin
    // Получаем текущие параметры мыши
    SystemParametersInfo(SPI_GETMOUSE, 0, @MouseParams, 0);

    // Отключаем ускорение мыши (делаем его линейным)
    MouseParams[0] := 0; // Ускорение (threshold 1)
    MouseParams[1] := 0; // Ускорение (threshold 2)
    MouseParams[2] := 0; // Скорость мыши

    // Устанавливаем новые параметры мыши
    SystemParametersInfo(SPI_SETMOUSE, 0, @MouseParams, SPIF_SENDCHANGE);
end;

procedure TfrmMain.mniDuplicateSelectionClick(Sender: TObject);
begin
    ServerCmd('ACTOR DUPLICATE');
end;

procedure TfrmMain.extureBrowser1Click(Sender: TObject);
begin
    frmTextures.show();
end;

procedure TfrmMain.FitViewportsToWindow();
var
  LeftPanelWidth, RightPanelWidth: Integer;
  PanelHeight: Integer;
begin
    PanelHeight := ViewportsPanel.ClientHeight div 2;

    case cmbLeftPanelsWidthRatio.ItemIndex of
      0: LeftPanelsWidthRatio := 0.5;
      1: LeftPanelsWidthRatio := 0.65;
      2: LeftPanelsWidthRatio := 0.75;
    end;

    LeftPanelWidth := Round(ViewportsPanel.ClientWidth * LeftPanelsWidthRatio);
    RightPanelWidth := ViewportsPanel.ClientWidth - LeftPanelWidth;

    // Длинные панели слева
    ViewportPanels[0].Width := LeftPanelWidth;
    ViewportPanels[0].Height := PanelHeight;
    ViewportPanels[0].Left := 0;
    ViewportPanels[0].Top := 0;

    // Короткие панели справа
    ViewportPanels[1].Width := RightPanelWidth;
    ViewportPanels[1].Height := PanelHeight;
    ViewportPanels[1].Left := LeftPanelWidth;
    ViewportPanels[1].Top := 0;

    // Длинные панели снизу слева
    ViewportPanels[2].Width := LeftPanelWidth;
    ViewportPanels[2].Height := PanelHeight;
    ViewportPanels[2].Left := 0;
    ViewportPanels[2].Top := PanelHeight;

    // Короткие панели снизу справа
    ViewportPanels[3].Width := RightPanelWidth;
    ViewportPanels[3].Height := PanelHeight;
    ViewportPanels[3].Left := LeftPanelWidth;
    ViewportPanels[3].Top := PanelHeight;
end;

procedure TfrmMain.BuildCube();
begin
//
end;

procedure TfrmMain.BuildOptions1Click(Sender: TObject);
begin
    frmBuildOptions.Show();
end;

procedure TfrmMain.btnApplyViewportRatioClick(Sender: TObject);
begin
    FitViewportsToWindow();
    OpenCameras(False);
    FormResize(self);

    ActiveControl := CommandBar;
end;

procedure TfrmMain.ButtonGroupsMouseWheel(Sender: TObject; Shift: TShiftState; WheelDelta: Integer; MousePos: TPoint;
  var Handled: Boolean);
begin
//    if ButtonGroups.VertScrollBar.Visible = True then
//    begin
        if WheelDelta > 1 then
        begin
            ButtonGroups.VertScrollBar.Position := ButtonGroups.VertScrollBar.Position - 25;
            Handled := True;
        end else
        begin
            ButtonGroups.VertScrollBar.Position := ButtonGroups.VertScrollBar.Position + 25;
            Handled := True;
        end;
//    end;
end;

procedure TfrmMain.CallbackKeyPress(Sender: TObject; var Key: Char);
begin
    HandleCallback(Ord(Key));
    Callback.Text := '';
end;

function TfrmMain.CheckEditorPatch(): Boolean;
begin
    var FilePath := ExtractFilePath(ParamStr(0));

    Result := True;

    // Проверяем наличие каждого файла
    for var i := 0 to High(EditorPatchFileNames) do
    begin
        if TFile.Exists(FilePath + EditorPatchFileNames[i]) = False then
        begin
            Result := False; // Если хотя бы один файл отсутствует
            Break;
        end;
    end;
end;

procedure TfrmMain.cmbCommandKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
    if Key = VK_RETURN then
    begin
        ServerCmd(cmbCommand.Text);
    end;
end;

procedure TfrmMain.CreateViewportPanels();
begin
    // Создаем панели и добавляем их на форму
    for var i := 0 to High(ViewportPanels) do
    begin
        ViewportPanels[i] := TEsPanel.Create(ViewportsPanel);
        ViewportPanels[i].Parent := ViewportsPanel;
        ViewportPanels[i].FrameStyle := TExFrameStyle.Flat;
        ViewportPanels[i].ParentColor := False;
        ViewportPanels[i].FrameColor := clGray;
    end;
end;

procedure TfrmMain.FormClose(Sender: TObject; var Action: TCloseAction);
begin
    DeleteObject(LogWindowFont);
    EdExitServer();
end;

procedure TfrmMain.FormCreate(Sender: TObject);
begin
    StartupCheck();

    if bStartupCheckPassed = True then
    begin
        TTask.Run(procedure
        begin
            Sleep(100); // Задержка 100 миллисекунд, чтобы успел появиться интерфейс
            TThread.Synchronize(nil, procedure
            begin
                InitEditorServer();
            end);
        end);
    end;
end;

procedure TfrmMain.FormMouseMove(Sender: TObject; Shift: TShiftState; X, Y: Integer);
begin
    DisableMouseAcceleration();
end;

procedure TfrmMain.ActorClassBrowser1Click(Sender: TObject);
begin
    frmClassBrowser.Show();
end;

procedure TfrmMain.AddDeusExMover1Click(Sender: TObject);
begin
    ServerCmd('BRUSH ADDMOVER CLASS=DeusExMover');
end;

procedure TfrmMain.AddMover1Click(Sender: TObject);
begin
    ServerCmd('BRUSH ADDMOVER');
end;

procedure TfrmMain.AdvancedOptions1Click(Sender: TObject);
begin
    ServerCmd('PREFERENCES');
end;

procedure TfrmMain.bbCubeMouseDown(Sender: TObject; Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
    if Button = TMouseButton.mbRight then
        frmBrushBuilder.ShowBuilder(bmCube);
end;

procedure TfrmMain.bbSheetMouseDown(Sender: TObject; Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
    if Button = TMouseButton.mbRight then
        frmBrushBuilder.ShowBuilder(bmSheet);
end;

procedure TfrmMain.Levelproperties1Click(Sender: TObject);
begin
    ServerCmd('HOOK LEVELPROPERTIES');
end;

procedure TfrmMain.Masterbrowser1Click(Sender: TObject);
begin
    frmMasterBrowser.show();
end;

procedure TfrmMain.MeshImporttest1Click(Sender: TObject);
begin
    frmMeshImport.ShowModal();
end;

procedure TfrmMain.mniMirrorAboutXClick(Sender: TObject);
begin
    ServerCmd('ACTOR MIRROR X=-1');
end;

procedure TfrmMain.mniMirrorAboutYClick(Sender: TObject);
begin
    ServerCmd('ACTOR MIRROR Y=-1');
end;

procedure TfrmMain.mniMirrorAboutZClick(Sender: TObject);
begin
    ServerCmd('ACTOR MIRROR Z=-1');
end;

procedure TfrmMain.mniMoveToOriginClick(Sender: TObject);
begin
    ServerCmd('ACTOR RESET LOCATION');
end;

procedure TfrmMain.mniOrderToFirstClick(Sender: TObject);
begin
    ServerCmd('MAP SENDTO FIRST');
end;

procedure TfrmMain.mniOrderToLastClick(Sender: TObject);
begin
    ServerCmd('MAP SENDTO LAST');
end;

procedure TfrmMain.mniPasteClick(Sender: TObject);
begin
    ServerCmd('EDIT PASTE');
end;

procedure TfrmMain.mniPolysFromBrushClick(Sender: TObject);
begin
    ServerCmd('MAP BRUSH PUT');
end;

procedure TfrmMain.mniPolysToBrushClick(Sender: TObject);
begin
    ServerCmd('MAP BRUSH GET');
end;

procedure TfrmMain.mniResetPivotClick(Sender: TObject);
begin
    ServerCmd('ACTOR RESET PIVOT');
end;

procedure TfrmMain.mniResetRotationClick(Sender: TObject);
begin
    ServerCmd('ACTOR RESET ROTATION');
end;

procedure TfrmMain.mniResetScalingClick(Sender: TObject);
begin
    ServerCmd('ACTOR RESET SCALE');
end;

procedure TfrmMain.mniTransformPermanentlyClick(Sender: TObject);
begin
    ServerCmd('ACTOR APPLYTRANSFORM');
end;

procedure TfrmMain.mniMapSelectNonSolidsClick(Sender: TObject);
begin
    ServerCmd('MAP SELECT NONSOLIDS');
end;

procedure TfrmMain.mniMapSelectAddsClick(Sender: TObject);
begin
    ServerCmd('MAP SELECT ADDS');
end;

procedure TfrmMain.SetMoverKeyClick(Sender: TObject);
begin
    SetMoverKeyFrame((Sender as TMenuItem).Tag);
end;

procedure TfrmMain.OpenCamera(bReopen: Boolean; hWnd: HWND; X, Y, XR, YR: Integer; Flags, RenType: Longint; CameraName: String);
var
    Cmd: String;
begin
    Cmd := 'CAMERA OPEN';

    Cmd := Cmd + ' HWND=' + Trim(IntToStr(hWnd));
    Cmd := Cmd + ' X=' + Trim(IntToStr(X));
    Cmd := Cmd + ' Y=' + Trim(IntToStr(Y));
    Cmd := Cmd + ' XR=' + Trim(IntToStr(XR));
    Cmd := Cmd + ' YR=' + Trim(IntToStr(YR));

    if bReopen = False then
    begin
        Cmd := Cmd + ' FLAGS=' + Trim(IntToStr(Flags));
        Cmd := Cmd + ' REN=' + Trim(IntToStr(RenType));
    end;

    if CameraName <> '' then
    begin
        Cmd := Cmd + ' NAME=' + AnsiQuotedStr(CameraName, '"');
    end;

    ServerCmd(cmd);
end;

procedure TfrmMain.OpenCameras(bReopen: Boolean);
begin
  OpenCamera(bReopen, ViewPorts[0].ViewportContainer.Handle, 0, 0,
    ViewPorts[0].Width,
    ViewPorts[0].Height,
    SHOW_NORMAL + SHOW_StandardView + SHOW_NOBUTTONS + SHOW_ChildWindow + SHOW_MOVINGBRUSHES,
    REN_ORTHXY, 'Standard1V'); //    REN_ORTHXY, 'Standard1V');
  ViewPorts[0].ViewportHeader.Caption := 'Top';
  ViewPorts[0].Caption := 'Standard1V';


  // Открыть вторую камеру
  OpenCamera(bReopen, ViewPorts[1].ViewportContainer.Handle, 0, 0,
    ViewPorts[1].Width,
    ViewPorts[1].Height,
    SHOW_NORMAL + SHOW_StandardView + SHOW_NOBUTTONS + SHOW_ChildWindow + SHOW_MOVINGBRUSHES,
    REN_ORTHXZ, 'Standard2V');
  ViewPorts[1].ViewportHeader.Caption := 'Front';
  ViewPorts[1].Caption := 'Standard2V';


  // Note: when using 'Standard3V', the audio seem to be fails to initialize, leading to crash
  // Fix: disable 'Data Execution Prevention Compatible' in project options.
  OpenCamera(bReopen, ViewPorts[2].ViewportContainer.Handle, 0, 0,
    ViewPorts[2].Width,
    ViewPorts[2].Height,
    SHOW_NORMAL + SHOW_StandardView + SHOW_NOBUTTONS + SHOW_ChildWindow + SHOW_MOVINGBRUSHES,
    REN_DYNLIGHT, 'Standard3V');
  ViewPorts[2].ViewportHeader.Caption := 'Dynamic Lighting';
  ViewPorts[2].Caption := 'Standard3V';


  // Открыть четвертую камеру
  OpenCamera(bReopen, ViewPorts[3].ViewportContainer.Handle, 0, 0,
    ViewPorts[3].Width,
    ViewPorts[3].Height,
    SHOW_NORMAL + SHOW_StandardView + SHOW_NOBUTTONS + SHOW_ChildWindow + SHOW_MOVINGBRUSHES,
    REN_ORTHYZ, 'Standard4V');
  ViewPorts[3].ViewportHeader.Caption := 'Side';
  ViewPorts[3].Caption := 'Standard4V';
end;

procedure TfrmMain.ReplaceLogWindowFont();
begin
    TTask.Run(procedure
    var
      ParentWnd: HWND;
      ChildWnd: HWND;
      LogFont: TLogFont;
      DC: HDC;
    begin
        // Поиск родительского окна с задержкой
        ParentWnd := 0;
        while ParentWnd = 0 do
        begin
            ParentWnd := FindWindow('DxEditUnrealWLog', nil);
            Sleep(100); // Ожидание между попытками
        end;

        // Поиск дочернего окна
        ChildWnd := 0;
        while ChildWnd = 0 do
        begin
            ChildWnd := FindWindowEx(ParentWnd, 0, 'DxEditUnrealWEditTerminal', nil);
            Sleep(100); // Ожидание между попытками
        end;

        // Сохранение указателя на окно
        LogWindowHandle := ParentWnd;

        // Получаем DC для правильной настройки размеров шрифта
        DC := GetDC(ChildWnd);

        // Настройка шрифта
        ZeroMemory(@LogFont, SizeOf(LogFont));
        with LogFont do
        begin
            lfHeight := -MulDiv(LOG_WINDOW_FONT_SIZE, GetDeviceCaps(DC, LOGPIXELSY), 72); // Размер шрифта в точках на дюйм (DPI)
            StrPCopy(lfFaceName, LOG_WINDOW_FONT_NAME); // Название шрифта
            lfWeight := FW_NORMAL; // Обычный шрифт
            lfCharSet := RUSSIAN_CHARSET; // Поддержка кириллицы
        end;

        // Освобождаем DC после использования
        ReleaseDC(ChildWnd, DC);

        // Создание и установка шрифта
        LogWindowFont := CreateFontIndirect(LogFont);
        SendMessage(ChildWnd, WM_SETFONT, WPARAM(LogWindowFont), LPARAM(TRUE));

        // Resize
        SetWindowPos(ParentWnd, HWND_TOPMOST, 0, 0, frmMain.Width, frmMain.Height div 2, SWP_NOMOVE or SWP_NOACTIVATE or SWP_NOZORDER);
    end);
end;

procedure TfrmMain.mniResetAllPositioningClick(Sender: TObject);
begin
    ServerCmd('ACTOR RESET ALL');
end;

procedure TfrmMain.InitEditorServer();
begin
    GIsRequestingExit := Get_GIsRequestingExit();

    EdInitServer(Handle, Callback.Handle);

    var SetupProgressBar := 'APP SET ProgressBar=' + Trim(IntToStr(frmMain.ProgressBar.Handle)) +
        ' ProgressText=' + Trim(IntToStr(frmMain.ProgressText.Handle));

    ServerCmd(SetupProgressBar);

    ServerCmd('HIDELOG');
    ServerCmd('MAP GRID X=16 Y=16 Z=16 BASE=ABSOLUTE SHOW2D=ON SHOW3D=OFF');
    ServerCmd('MAP ROTGRID PITCH=4 YAW=4 ROLL=4');
    ServerCmd('MODE CAMERAMOVE GRID=ON ROTGRID=ON SNAPTOPIVOT=ON SNAPDIST=10');

    ReplaceLogWindowFont();

    CreateViewportPanels();
    FitViewportsToWindow();
    CreateViewports();
    OpenCameras(False);

    BuildOptions := DefaultBuiltOptions;

    Screen.HintFont.Name := 'Verdana';
    Application.HintHidePause := 10000;

    OnResize := FormResize;

    frmTextures.OnCreate := frmTextures.FormCreate;
end;

procedure TfrmMain.Intersect1Click(Sender: TObject);
begin
    ServerCmd('BRUSH FROM INTERSECTION');
end;

procedure TfrmMain.sbActorBrowserClick(Sender: TObject);
begin
    frmClassBrowser.Show();
end;

procedure TfrmMain.sbBrushRotateClick(Sender: TObject);
begin
    ServerCmd('MODE BRUSHROTATE');
end;

procedure TfrmMain.sbBrushScaleClick(Sender: TObject);
begin
    ServerCmd('MODE BRUSHSCALE');
end;

procedure TfrmMain.sbBrushSheerClick(Sender: TObject);
begin
    ServerCmd('MODE BRUSHSHEER');
end;

procedure TfrmMain.sbBrushStretchClick(Sender: TObject);
begin
    ServerCmd('MODE BRUSHSTRETCH');
end;

procedure TfrmMain.sbLogClick(Sender: TObject);
begin
    ShowLogWindow();
end;


procedure TfrmMain.sbScriptEditorClick(Sender: TObject);
begin
    frmScriptEditor.Show();
end;

procedure TfrmMain.sbSearchClick(Sender: TObject);
begin
    var bEditorPatchPresent := CheckEditorPatch();

    if bEditorPatchPresent = True then
        ServerCmd('ACTOR SEARCH');
end;

procedure TfrmMain.sbSnapBrushStretchClick(Sender: TObject);
begin
    ServerCmd('MODE BRUSHSNAP');
end;

procedure TfrmMain.sbTextureBrowserClick(Sender: TObject);
begin
    frmTextures.Show();
end;

procedure TfrmMain.sbTexturePanClick(Sender: TObject);
begin
    ServerCmd('MODE TEXTUREPAN');
end;

procedure TfrmMain.sbTextureRotateClick(Sender: TObject);
begin
    ServerCmd('MODE TEXTUREROTATE');
end;

procedure TfrmMain.sbUndoClick(Sender: TObject);
begin
    ServerCmd('TRANSACTION UNDO');
end;

procedure TfrmMain.sbViewportMoveClick(Sender: TObject);
begin
    ServerCmd('MODE CAMERAMOVE');
end;

procedure TfrmMain.sbRedoClick(Sender: TObject);
begin
    ServerCmd('TRANSACTION REDO');
end;

procedure TfrmMain.mniMapSelectSemiSolidsClick(Sender: TObject);
begin
    ServerCmd('MAP SELECT SEMISOLIDS');
end;

procedure TfrmMain.mniSelectAllOfTypeClick(Sender: TObject);
begin
    ServerCmd('ACTOR SELECT OFCLASS CLASS=');
end;

procedure TfrmMain.mniSelectedPropertiesClick(Sender: TObject);
begin
    ServerCmd('HOOK ACTORPROPERTIES');
end;

procedure TfrmMain.mniSelectAllActorsClick(Sender: TObject);
begin
    ServerCmd('ACTOR SELECT ALL');
end;

procedure TfrmMain.mniSelectNoneClick(Sender: TObject);
begin
    ServerCmd('SELECT NONE');
end;

procedure TfrmMain.ServerSetCurrentClass1Click(Sender: TObject);
begin
    ServerSetCurrentClass('DeusExMover');

    ServerSetCurrentClass('Mover');
end;

procedure TfrmMain.ShowLogWindow();
begin
    if LogWindowHandle <> 0 then
    begin
        ShowWindow(LogWindowHandle, SW_SHOWNORMAL);
        SetWindowPos(LogWindowHandle, Application.Handle, 0, 0, 0, 0, SWP_NOSIZE or SWP_NOMOVE);
    end
    else
        ServerCmd('SHOWLOG');
end;

function TfrmMain.GetEditPackages(const FileName: string): TStrings;
var
    Lines: TStrings;
    I: Integer;
    EditPackages: TStrings;
    SectionFound: Boolean;
begin
    Lines := TStringList.Create;
    EditPackages := TStringList.Create;
    try
        Lines.LoadFromFile(FileName);
        SectionFound := False;

        for I := 0 to Lines.Count - 1 do
        begin
            if AnsiStartsStr('[Editor.EditorEngine]', Lines[I]) then
              SectionFound := True
            else if SectionFound then
            begin
                if AnsiStartsStr('EditPackages=', Lines[I]) then
                    EditPackages.Add(Trim(Copy(Lines[I], 14, MaxInt)));

                if (Lines[I] <> '') and (Lines[I][1] = '[') then
                    Break; // Если встречается новый раздел, то завершить поиск
            end;
        end;

        Result := EditPackages;

    finally
        Lines.Free();
    end;
end;

function TfrmMain.CheckFilesInPaths(const FileName: string; const EditPackages: TStrings; out MissingPackages: TStrings): Boolean;
var
    Lines: TStrings;
    I, J: Integer;
    Path, Pattern, RelPath, FileNameWithExt: string;
    bFileFound: Boolean;
    bAllFilesFound: Boolean;
begin
    Lines := TStringList.Create;
    MissingPackages := TStringList.Create;
    try
        Lines.LoadFromFile(FileName);
        //Memo1.Lines.Clear;
        //Memo1.Lines.Add('Проверка файлов по следующим путям и шаблонам:');
        bAllFilesFound := True;

        for J := 0 to EditPackages.Count - 1 do
        begin
            bFileFound := False;
            for I := 0 to Lines.Count - 1 do
            begin
                if AnsiStartsStr('Paths=', Lines[I]) then
                begin
                    // Извлекаем путь и шаблон из строки
                    Pattern := Trim(Copy(Lines[I], 7, MaxInt));
                    RelPath := ExtractFileDir(Pattern) + PathDelim;
                    RelPath := StringReplace(RelPath, '*', '', [rfReplaceAll]); // Убираем "*"

                    RelPath := StringReplace(RelPath, '/', PathDelim, [rfReplaceAll]);

                    // Относительный путь
                    Path := ExpandFileName(ExtractFileDir(ParamStr(0)) + PathDelim + RelPath);

                    // Сформировать полный путь к файлу
                    FileNameWithExt := Path + EditPackages[J] + ExtractFileExt(Pattern);

                    if FileExists(FileNameWithExt) then
                    begin
                        //Memo1.Lines.Add(Format('Файл найден: %s', [FileNameWithExt]));
                        bFileFound := True;
                        Break; // Прекращаем поиск этого файла, так как он найден
                    end;
                end;
            end;

            if bFileFound = False then
            begin
                MissingPackages.Add(EditPackages[J]); // Добавляем отсутствующий файл в список
                //Memo1.Lines.Add(Format('Файл не найден: %s', [EditPackages[J]]));
                bAllFilesFound := False; // Один из файлов не найден
            end;
        end;

        Result := bAllFilesFound;
//        if Result then
//            Memo1.Lines.Add('Все файлы найдены.')
//        else
//            Memo1.Lines.Add('Некоторые файлы не найдены.');

    finally
        Lines.Free();
    end;
end;

function TfrmMain.CheckPackageSource(const EditPackage: string): Boolean;
begin
//
end;

procedure TfrmMain.StartupCheck();
var
    EditPackages, MissingPackages: TStrings;
begin
    EditPackages := GetEditPackages('DeusEx.ini');
    var MPcount: Integer := 0;

    try
        if CheckFilesInPaths('DeusEx.ini', EditPackages, MissingPackages) = False then
        begin
            MPcount := MissingPackages.Count;

            if MissingPackages.Count = 1 then
            begin
                MessageBox(Handle, PChar(Format(strCannotFindEditPack, [MissingPackages.Strings[0]])), PChar(strCannotFindEditPackTitle), MB_OK or MB_ICONERROR);
            end
            else if MissingPackages.Count > 1 then
            begin
                var MissingPackagesStr := MissingPackages.Text;
                MessageBox(Handle, PChar(Format(strCannotFindEditPackMany, [MissingPackagesStr])), PChar(strCannotFindEditPacksTitle), MB_OK or MB_ICONERROR);
            end;
        end;

    finally
        EditPackages.Free();
        MissingPackages.Free();

        if MPcount > 0 then
        begin
            bStartupCheckPassed := False;
            Application.Terminate();
        end
        else bStartupCheckPassed := True;

    end;
end;

procedure TfrmMain.mniMapSelectSubtractsClick(Sender: TObject);
begin
    ServerCmd('MAP SELECT SUBTRACTS');
end;

procedure TfrmMain.WndProc(var Msg: TMessage);
begin
{    if Msg.Msg = WM_NCACTIVATE then
    begin
        Msg.WParam := WPARAM(True); // Всегда указываем, что окно активно
    end; }

    inherited;
end;

end.

