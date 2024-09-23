unit uFrmMain;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Classes, Vcl.Graphics, Vcl.Controls, Vcl.Forms,
  Vcl.Dialogs, system.IniFiles, uEditorLoader, Vcl.StdCtrls, uFrmViewport, ES.BaseControls, ES.Layouts, Vcl.Menus,
  ES.CfxClasses, Vcl.Buttons, Vcl.ExtCtrls, uEditorTypes, Editor.Editor, Engine.UnCamera, Engine.UnObj, Vcl.ComCtrls,
  System.Threading, System.ImageList, Vcl.ImgList, system.IOUtils, System.StrUtils, uEditor.Consts, uEditor.Strings,
  Vcl.ToolWin, System.Actions, Vcl.ActnList, Vcl.Clipbrd, Vcl.AppEvnts, Vcl.Mask, JvExMask, JvSpin;

type
  TfrmMain = class(TForm)
    ButtonsPanel: TEsPanel;
    CommandBar: TEsPanel;
    menuMainForm: TMainMenu;
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
    mnuView: TMenuItem;
    ToolbarImages: TImageList;
    Masterbrowser1: TMenuItem;
    mnuRecentMaps: TMenuItem;
    RecentFile0: TMenuItem;
    RecentFile1: TMenuItem;
    RecentFile2: TMenuItem;
    RecentFile3: TMenuItem;
    RecentFile4: TMenuItem;
    RecentFile5: TMenuItem;
    RecentFile6: TMenuItem;
    RecentFile7: TMenuItem;
    RecentFile8: TMenuItem;
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
    catSelection: TCategoryPanel;
    EditorModeImages: TImageList;
    BrushBuildersImages: TImageList;
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
    ToolBar1: TToolBar;
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
    EditorActions: TActionList;
    file_NewMap: TAction;
    file_OpenMap: TAction;
    file_SaveCurrentMap: TAction;
    file_SaveCurrentMapAs: TAction;
    file_Import: TAction;
    file_Export: TAction;
    edit_Undo: TAction;
    edit_Redo: TAction;
    edit_SearchActors: TAction;
    edit_ActorCut: TAction;
    edit_ActorCopy: TAction;
    edit_ActorPaste: TAction;
    edit_ActorDelete: TAction;
    edit_ActorDuplicate: TAction;
    edit_SelectAllActors: TAction;
    edit_SelectNoneActors: TAction;
    edit_SelectInvert: TAction;
    brushAdd: TAction;
    brushSubtract: TAction;
    brushIntersect: TAction;
    brushDeintersect: TAction;
    ActorReset_moveToOrigin: TAction;
    ActorReset_Pivot: TAction;
    ActorReset_Rotation: TAction;
    ActorReset_Scaling: TAction;
    ActorReset_All: TAction;
    edit_SelectInsideBrush: TAction;
    brushAddMover: TAction;
    brushAddDeusExMover: TAction;
    brushAddBreakableGlass: TAction;
    brushAddBreakableWall: TAction;
    brushMakeSolid: TAction;
    brushMakeSemiSolid: TAction;
    brushMakeNonSolid: TAction;
    edit_SelectOfClass: TAction;
    RotationGrid1: TMenuItem;
    N1024Unitsdefault1: TMenuItem;
    N512Units1: TMenuItem;
    N256Units2: TMenuItem;
    N128Units2: TMenuItem;
    N64Units2: TMenuItem;
    N32Units2: TMenuItem;
    N16Units2: TMenuItem;
    Withsame1: TMenuItem;
    WithsameEvent1: TMenuItem;
    N22: TMenuItem;
    AllActorswithsameAttachTag1: TMenuItem;
    SelectAllActorswithsameBindName1: TMenuItem;
    SelectAllActorswithsameBarkBindName1: TMenuItem;
    edit_SelectOfSubClass: TAction;
    edit_SelectOfEvent: TAction;
    edit_SelectOfTag: TAction;
    edit_SelectOfAttachTag: TAction;
    edit_SelectOfBindName: TAction;
    edit_SelectOfBarkBindName: TAction;
    subMenu_SelectActors: TMenuItem;
    InvertSelection2: TMenuItem;
    view_ActorSelectedProperties: TAction;
    view_surf_Properties: TAction;
    SurfacePopup: TPopupMenu;
    Surfacepropertiessthselected1: TMenuItem;
    N25: TMenuItem;
    AddLighthere2: TMenuItem;
    AddCustom11: TMenuItem;
    AddCustom21: TMenuItem;
    AddCustom31: TMenuItem;
    AddCustom41: TMenuItem;
    AddCustom51: TMenuItem;
    AddCustom61: TMenuItem;
    N26: TMenuItem;
    AddcurrentClasshere1: TMenuItem;
    AlighSelected1: TMenuItem;
    AlignAsFloorCeiling1: TMenuItem;
    AlignOneTile1: TMenuItem;
    N27: TMenuItem;
    N28: TMenuItem;
    AlignWallPanning1: TMenuItem;
    N29: TMenuItem;
    Unalignbacktodefault1: TMenuItem;
    ResetAllPanningScaleandAlign1: TMenuItem;
    N30: TMenuItem;
    Select1: TMenuItem;
    Lotsofstuff1: TMenuItem;
    SelectAllSurfaces1: TMenuItem;
    UnselectAllSurfaces1: TMenuItem;
    N32: TMenuItem;
    miApplySelectedTex: TMenuItem;
    AppEvents: TApplicationEvents;
    OpenMapDlg: TOpenDialog;
    ResizeTimer: TTimer;
    Extensions1: TMenuItem;
    InstallOpenGLDrv1: TMenuItem;
    ToolButton2: TToolButton;
    ToolButton3: TToolButton;
    ToolButton4: TToolButton;
    ToolButton6: TToolButton;
    ToolButton7: TToolButton;
    ToolButton11: TToolButton;
    ToolButton14: TToolButton;
    ToolButton15: TToolButton;
    ToolButton16: TToolButton;
    ToolButton17: TToolButton;
    ToolButton18: TToolButton;
    br_ActorBrowser: TAction;
    br_MusicBrowser: TAction;
    br_TextureBrowser: TAction;
    br_SoundBrowser: TAction;
    br_MeshBrowser: TAction;
    view_level_properties: TAction;
    view_DX_LevelinfoProperties: TAction;
    view_Log: TAction;
    br_MasterBrowser: TAction;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    ToolButton1: TToolButton;
    ToolButton5: TToolButton;
    Label7: TLabel;
    ToolButton8: TToolButton;
    Label8: TLabel;
    ToolButton9: TToolButton;
    tbBuildGeometry: TToolButton;
    Label9: TLabel;
    tbBuildLighting: TToolButton;
    tbBuildPaths: TToolButton;
    tbBuildAll: TToolButton;
    tbBuildOptions: TToolButton;
    ToolButton21: TToolButton;
    build_options: TAction;
    miGenerateIntForMap: TMenuItem;
    N33: TMenuItem;
    RecentFile9: TMenuItem;
    btnViewLog: TButton;
    ToolBar2: TToolBar;
    tbAdd: TToolButton;
    tbIntersect: TToolButton;
    tbDeintersect: TToolButton;
    tbSubtract: TToolButton;
    tbAddSpecial: TToolButton;
    tbAddMover: TToolButton;
    operationsImageList: TImageList;
    toolbarBrushBuilders: TToolBar;
    tbSheet: TToolButton;
    tbCylinder: TToolButton;
    tbCube: TToolButton;
    tbSpiralStairCase: TToolButton;
    tbCone: TToolButton;
    tbSphere: TToolButton;
    tbCurvedStaircase: TToolButton;
    tbLinearStairCase: TToolButton;
    ToolButton30: TToolButton;
    ToolButton31: TToolButton;
    ToolButton32: TToolButton;
    ToolButton33: TToolButton;
    ToolButton34: TToolButton;
    ToolButton35: TToolButton;
    ToolButton36: TToolButton;
    toolbarEditorMode: TToolBar;
    tbMoveCamera: TToolButton;
    tbSheerBrush: TToolButton;
    tbScaleBrush: TToolButton;
    tbStretchBrush: TToolButton;
    tbSnapScaleBrush: TToolButton;
    tbRotateBrush: TToolButton;
    tbTexturePan: TToolButton;
    tbTextureRotate: TToolButton;
    ToolButton45: TToolButton;
    ToolBar3: TToolBar;
    tbShowSelectedActorsOnly: TToolButton;
    tbHideSelectedActors: TToolButton;
    tbSelActorsInsideRedBrush: TToolButton;
    tbSelectAllActors: TToolButton;
    tbInvertSelection: TToolButton;
    tbShowAllActors: TToolButton;
    tbCameraSpeed: TToolButton;
    tbCameraAlign: TToolButton;
    ToolButton37: TToolButton;
    SelectionImageList: TImageList;
    pnlConverter: TEsPanel;
    chkShowConverter: TCheckBox;
    se_RotationUU: TJvSpinEdit;
    Label10: TLabel;
    se_CustomAngle: TJvSpinEdit;
    GroupBox1: TGroupBox;
    GroupBox2: TGroupBox;
    lblDistance: TLabel;
    se_Dist_Cm: TJvSpinEdit;
    se_DistanceUU: TJvSpinEdit;
    se_Dist_Meters: TJvSpinEdit;
    chkUseInches: TCheckBox;
    estTextureProperties1: TMenuItem;

    // new functions
    function CheckEditorPatch(): Boolean;
    function CheckFilesInPaths(const FileName: string; const EditPackages: TStrings; out MissingPackages: TStrings): Boolean;
    function GetEditPackages(const FileName: string): TStrings;
    function CheckPackageSource(const EditPackage: string): Boolean;

    // new procedures
    procedure OpenCamera(bReopen: Boolean; hWnd: HWND; X, Y, XR, YR: Integer; Flags, RenType: Longint; CameraName: String);
    procedure OpenCameras(bReopen: Boolean);
    procedure EmbedCamera(const Num: Integer);
    procedure ReleaseCamera(const Num: Integer);
    procedure SetComponentsEnabled(Parent: TWinControl; bEnabled: Boolean);
    procedure SetCheckboxAsButton(ChkBox: TCheckBox);
    procedure EnableDistConverterEvents(ActiveSpinEdit: TJvSpinEdit);

    procedure ReplaceLogWindowFont();
    procedure ShowLogWindow();
    procedure StartupCheck();
    procedure LoadCfg();
    procedure SaveCfg();

    procedure BuildCube();
    procedure DisableMouseAcceleration();
    procedure LoadEditor();

    procedure AddRecentMapFile(aFile: string); // add opened file to "recent" list
    procedure ClearRecentMapFiles();
    procedure OpenRecentMap(aFile: string);

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
    procedure sbScriptEditorClick(Sender: TObject);
    procedure btnApplyViewportRatioClick(Sender: TObject);
    procedure bbCubeMouseDown(Sender: TObject; Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
    procedure FormCreate(Sender: TObject);
    procedure ServerSetCurrentClass1Click(Sender: TObject);
    procedure AdvancedOptions1Click(Sender: TObject);
    procedure bbSheetMouseDown(Sender: TObject; Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
    procedure SetMoverKeyClick(Sender: TObject);
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
    procedure mniSelectAllOfTypeClick(Sender: TObject);
    procedure brushAddExecute(Sender: TObject);
    procedure brushSubtractExecute(Sender: TObject);
    procedure brushIntersectExecute(Sender: TObject);
    procedure brushDeintersectExecute(Sender: TObject);
    procedure edit_ActorDuplicateExecute(Sender: TObject);
    procedure edit_ActorDeleteExecute(Sender: TObject);
    procedure edit_UndoExecute(Sender: TObject);
    procedure edit_RedoExecute(Sender: TObject);
    procedure edit_SearchActorsExecute(Sender: TObject);
    procedure edit_ActorCutExecute(Sender: TObject);
    procedure edit_ActorCopyExecute(Sender: TObject);
    procedure edit_ActorPasteExecute(Sender: TObject);
    procedure edit_SelectAllActorsExecute(Sender: TObject);
    procedure edit_SelectNoneActorsExecute(Sender: TObject);
    procedure edit_SelectInvertExecute(Sender: TObject);
    procedure ActorReset_moveToOriginExecute(Sender: TObject);
    procedure ActorReset_PivotExecute(Sender: TObject);
    procedure ActorReset_RotationExecute(Sender: TObject);
    procedure ActorReset_ScalingExecute(Sender: TObject);
    procedure ActorReset_AllExecute(Sender: TObject);
    procedure brushAddDeusExMoverExecute(Sender: TObject);
    procedure brushAddMoverExecute(Sender: TObject);
    procedure brushAddBreakableGlassExecute(Sender: TObject);
    procedure brushAddBreakableWallExecute(Sender: TObject);
    procedure brushMakeSolidExecute(Sender: TObject);
    procedure brushMakeSemiSolidExecute(Sender: TObject);
    procedure brushMakeNonSolidExecute(Sender: TObject);
    procedure edit_SelectInsideBrushExecute(Sender: TObject);
    procedure edit_SelectOfClassExecute(Sender: TObject);
    procedure edit_SelectOfSubClassExecute(Sender: TObject);
    procedure view_ActorSelectedPropertiesExecute(Sender: TObject);
    procedure edit_SelectOfEventExecute(Sender: TObject);
    procedure edit_SelectOfTagExecute(Sender: TObject);
    procedure edit_SelectOfAttachTagExecute(Sender: TObject);
    procedure edit_SelectOfBindNameExecute(Sender: TObject);
    procedure edit_SelectOfBarkBindNameExecute(Sender: TObject);
    procedure view_surf_PropertiesExecute(Sender: TObject);
    {$WARN SYMBOL_DEPRECATED OFF}
    procedure AppEventsShowHint(var HintStr: string; var CanShow: Boolean; var HintInfo: THintInfo);
    procedure SetRotGridSizeCick(Sender: TObject);
    procedure SetGridSizeClick(Sender: TObject);
    procedure ResizeFinished(Sender: TObject);
    procedure file_NewMapExecute(Sender: TObject);
    procedure file_OpenMapExecute(Sender: TObject);
    procedure view_LogExecute(Sender: TObject);
    procedure view_DX_LevelinfoPropertiesExecute(Sender: TObject);
    procedure view_level_propertiesExecute(Sender: TObject);
    procedure br_ActorBrowserExecute(Sender: TObject);
    procedure br_MasterBrowserExecute(Sender: TObject);
    procedure br_TextureBrowserExecute(Sender: TObject);
    procedure build_optionsExecute(Sender: TObject);
    procedure N2DShapeEditor1Click(Sender: TObject);
    procedure miGenerateIntForMapClick(Sender: TObject);
    procedure AppEventsIdle(Sender: TObject; var Done: Boolean);
    procedure menuMainFormChange(Sender: TObject; Source: TMenuItem; Rebuild: Boolean);
    procedure OpenRecentMapClick(Sender: TObject);
    procedure InstallOpenGLDrv1Click(Sender: TObject);
    procedure SetEditorModeClick(Sender: TObject);
    procedure tbAddSpecialClick(Sender: TObject);
    procedure chkShowConverterClick(Sender: TObject);
    procedure se_CustomAngleChange(Sender: TObject);
    procedure se_RotationUUChange(Sender: TObject);
    procedure se_DistanceUUChange(Sender: TObject);
    procedure se_Dist_CmChange(Sender: TObject);
    procedure se_Dist_MetersChange(Sender: TObject);
    procedure chkUseInchesClick(Sender: TObject);
    procedure tbBuildGeometryClick(Sender: TObject);
    procedure tbBuildPathsClick(Sender: TObject);
    procedure br_MeshBrowserExecute(Sender: TObject);
    procedure estTextureProperties1Click(Sender: TObject);
  private
    procedure CreateViewportPanels();
    procedure CreateViewports();
    procedure HandleCallback(Value: Integer);
//    procedure WMNCActivate(var Msg: TWMNCActivate); message WM_NCACTIVATE;
//    procedure WMActivate(var Msg: TWMActivate); message WM_ACTIVATE;
  protected
//    procedure WndProc(var Msg: TMessage); override;
    { Private declarations }
  public
    procedure FitViewportsToWindow(SelectedPanelIndex: Integer = -1);
    var GameIniFile: string;
    var BuildOptions: TBuildOptions;
    var BuildBrush: TBuildBrush;  // Global brush variable
    var CurrentMouseCoords: TPoint;
    var CurrentExpandedViewport: Integer;
    var CurrentMap: string;
    var LastActiveViewport: HWND;
    var RecentMaps: array[0..MAX_RECENT_MAPS] of string;
    var bMapModified: Boolean;
    var LogWindowHandle: HWND;
    var LogWindowTerminalHandle: HWND;
    var LogWindowFont: HFONT;

    { Public declarations }
  end;

var
  frmMain: TfrmMain;
  hWndEditor: HWND;
  LeftPanelsWidthRatio: Float32 = 0.65;
  ViewportPanels: array[0..3] of TESPanel; // Массив панелей для ViewPorts
  ViewPorts: array[0..3] of TfrmViewport; // формочки ^_^
  PropertiesWindowHandle: HWND;


  GIsRequestingExit: Integer;
  vp_SelectedClassStr: string; // something is selected in ViewPort
  vp_SelectedClassName: string;
  vp_SelectedClassEvent: string;
  vp_SelectedClassTag: string;
  vp_SelectedClassAttachTag: string;
  vp_SelectedClassBindName: string;
  vp_SelectedClassBarkBindName: string;
  bStartupCheckPassed: Boolean;


const
  LOG_WINDOW_FONT_NAME = 'Consolas';
  LOG_WINDOW_FONT_SIZE = 10;

implementation

{$R *.dfm}

uses uFrmScriptEditor, uFrmTextures, uFrmMeshImport, uFrmClassBrowser, uFrmMasterBrowser, uFrmBuildOptions, uFrmBrushBuilder, uFrmSurfaceProps, uFrmNewMap,
  uFrm2DShapeEditor, uFrmAddSpecialBrush, uFrmMeshViewer, uFrmTextureProperties;


procedure TfrmMain.FormResize(Sender: TObject);
begin
    ResizeTimer.Enabled := False;
    ResizeTimer.Enabled := True;
{    var SysScrollBarWidth := GetSystemMetrics(SM_CXVSCROLL);

    if ButtonGroups.VertScrollBar.Visible = False then
        ButtonsPanel.Width := ButtonsPanel.Width - SysScrollBarWidth
    else
        ButtonsPanel.Width := ButtonsPanel.Width + SysScrollBarWidth;
}
end;

procedure TfrmMain.HandleCallback(Value: Integer);
begin
    GetCursorPos(CurrentMouseCoords);

    case Value - 32 of
        EDC_Browse:   ShowMessage('Browse item');
        EDC_UseCurrent:   ShowMessage('Use current item');
        EDC_CurTexChange:  ShowMessage('Current texture changed');
        EDC_SelPolyChange:
        begin
//            ShowMessage('Poly selection set changed');  // set of polys, like Shift + B
            frmSurfaceProps.GetSelectedPolys();
        end;
        EDC_SelChange:
        begin
//            ShowMessage('Selection changed');
            frmSurfaceProps.GetSelectedPolys();
        end;

        // Right click on texture in Texture Browser, show the popup menu
        EDC_RtClickTexture:
        begin
            frmTextures.TexturePopup.Popup(CurrentMouseCoords.X, CurrentMouseCoords.Y);
        end;

        EDC_RtClickPoly:
        begin
            view_surf_Properties.Caption := Format(strSurfaceProperties, [uEditorLoader.NumSelectedPolys()]);

            var TempCurTex := frmTextures.GetCurrentTextureFull();
            if TempCurTex = '' then
                TempCurTex := frmTextures.GetCurrentTexture();

            miApplySelectedTex.Caption := Format('Apply %s',[TempCurTex]);
            SurfacePopup.Popup(CurrentMouseCoords.X, CurrentMouseCoords.Y);
        end;

        EDC_RtClickActor:
        begin
            var TempData: string;
            var bIsBrush := uEditorLoader.SelectedIsBrush();
            var bIsMover := uEditorLoader.SelectedIsMover();
            var NumSelected := uEditorLoader.NumSelectedActors();
            vp_SelectedClassStr := uEditorLoader.GetSelectedClass();

            mnuMoverKeys.Visible := bIsMover;
            mnuTransform.Visible := bIsBrush;
            mnuOrder.Visible := bIsBrush;
            mnuCopyPolygns.Visible := bIsBrush;
            mnuBrushSolidity.Visible := bIsBrush;
            mnuSelectBrushes.Visible := bIsBrush;

            if NumSelected = 1 then
            begin
                ServerCmd('EDIT COPY'); // Right now this is the only way to get actor fields and values
                try
                    TempData := Clipboard.AsText;
                except
                    TempData := '';
                end;

                if TempData <> '' then
                begin
                    vp_SelectedClassName := uEditorLoader.GetActorName(TempData);
                    vp_SelectedClassEvent := uEditorLoader.GetActorEvent(TempData);
                    vp_SelectedClassTag := uEditorLoader.GetActorTag(TempData);
                    vp_SelectedClassAttachTag := uEditorLoader.GetActorAttachTag(TempData);
                    vp_SelectedClassBindName := uEditorLoader.GetActorBindName(TempData);
                    vp_SelectedClassBarkBindName := uEditorLoader.GetActorBarkBindName(TempData);
                end;
            end
            else
            begin
                vp_SelectedClassName := '';
                vp_SelectedClassEvent := '';
                vp_SelectedClassTag := '';
                vp_SelectedClassAttachTag := '';
                vp_SelectedClassBindName := '';
                vp_SelectedClassBarkBindName := '';
            end;

            if vp_SelectedClassStr <> '' then // Выбрано несколько акторов одного класса
            begin
                if NumSelected = 1 then
                begin
                    if vp_SelectedClassName <> '' then // Есть имя, отображаем его
                        view_ActorSelectedProperties.Caption := Format(strPropertiesNumSelected, [vp_SelectedClassName, NumSelected])
                    else // Нету? Тогда название класса.
                        view_ActorSelectedProperties.Caption := Format(strPropertiesNumSelected, [vp_SelectedClassStr, NumSelected]);

                    edit_SelectOfClass.Caption := Format(strSelectAllType, [vp_SelectedClassStr]);
                    edit_SelectOfSubClass.Caption := Format(strSelectWithSubClases, [vp_SelectedClassStr]);

                    edit_SelectOfEvent.Visible := vp_SelectedClassEvent <> '';
                    if vp_SelectedClassEvent <> '' then edit_SelectOfEvent.Caption := Format(strSelectWithSameEvent, [vp_SelectedClassEvent]);

                    edit_SelectOfTag.Visible := vp_SelectedClassTag <> '';
                    if vp_SelectedClassTag <> '' then edit_SelectOfTag.Caption := Format(strSelectWithSameTag, [vp_SelectedClassTag]);

                    edit_SelectOfAttachTag.Visible := vp_SelectedClassAttachTag <> '';
                    if vp_SelectedClassAttachTag <> '' then edit_SelectOfAttachTag.Caption := Format(strSelectWithSameAttachTag, [vp_SelectedClassAttachTag]);

                    edit_SelectOfBindName.Visible := vp_SelectedClassBindName <> '';
                    if vp_SelectedClassBindName <> '' then edit_SelectOfBindName.Caption := Format(strSelectWithSameBindName, [vp_SelectedClassBindName]);

                    edit_SelectOfBarkBindName.Visible := vp_SelectedClassBarkBindName <> '';
                    if vp_SelectedClassBarkBindName <> '' then edit_SelectOfBarkBindName.Caption := Format(strSelectWithSameBarkBindName, [vp_SelectedClassBarkBindName]);
                end
                else if NumSelected > 1 then
                begin
                    view_ActorSelectedProperties.Caption := Format(strPropertiesNumSelected, [vp_SelectedClassStr, NumSelected]);

                    edit_SelectOfClass.Caption := Format(strSelectAllType, [vp_SelectedClassStr]); // Выбрать все акторы такого-же класса
                    edit_SelectOfClass.Visible := True;

                    edit_SelectOfSubClass.Caption := Format(strSelectWithSubClases, [vp_SelectedClassStr]);
                    edit_SelectOfSubClass.Visible := True;

                    mniEditScript.Visible := True; // Можно просмотреть скрипт.
                end;
            end
            else
            begin // Выбраны разные классы
                view_ActorSelectedProperties.Caption := Format(strPropertiesDifferentSelected, [NumSelected]);
                edit_SelectOfClass.Visible := False; // Выбрать все акторы такого-же класса недоступна
                edit_SelectOfSubClass.Visible := False;
                edit_SelectOfEvent.Visible := False;
                edit_SelectOfTag.Visible := False;
                edit_SelectOfAttachTag.Visible := False;
                edit_SelectOfBindName.Visible := False;
                edit_SelectOfBarkBindName.Visible := False;

                mniEditScript.Visible := False; // Скрыть команду просмотра скрипта
            end;

            ActorSelectedPopup.Popup(CurrentMouseCoords.X, CurrentMouseCoords.Y);
        end;

        EDC_RtClickWindow:
        begin
             //ShowMessage('Right clicked on camera window');
        end;

        EDC_RtClickWindowCanAdd:
        begin
            ViewportPopup.Popup(CurrentMouseCoords.X, CurrentMouseCoords.Y);
            // ShowMessage('Right clicked on camera window with the option to add');
        end;

        EDC_MapChange:
        begin
            //ShowMessage('Map geometry changed');
        end;
    end;

    Callback.text := IntToStr(Value - 32);
end;

procedure TfrmMain.InstallOpenGLDrv1Click(Sender: TObject);
begin
    if MessageBox(Handle, PChar(strInstallEnhancements), 'Install extensions?',
    MB_OKCANCEL + MB_ICONQUESTION + MB_TOPMOST) = ID_OK then
    begin
        var DXIniFile := TIniFile.Create(ExtractFilePath(ParamStr(0)) + GameIniFile);

        try // make required changes to DeusEx.ini file.
            with DXIniFile do
            begin
                WriteString('Engine.Engine', 'EditorEngine', 'EditorPatch.EditorPatchEngine');
                WriteString('Engine.Engine', 'EditorRender', 'OpenGLDrv.OpenGLRender');
                WriteString('Engine.Engine', 'EditorClient', 'OpenGLDrv.OpenGLWindowsClient');
                WriteString('Engine.Engine', 'WindowedRenderDevice', 'OpenGLDrv.OpenGLRenderDevice');
            end;

        finally
            DXIniFile.Free();
        end;
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

procedure TfrmMain.CreateViewports();
begin
    for var i := 0 to High(ViewPorts) do
    begin
        ViewPorts[i] := TfrmViewport.Create(ViewportPanels[i]);
        ViewPorts[i].Parent := ViewportPanels[i];
        ViewPorts[i].Align := alClient;
        ViewPorts[i].sbMaxMinVP.HelpContext := i;
        ViewPorts[i].Show();
    end;
end;

procedure TfrmMain.FitViewportsToWindow(SelectedPanelIndex: Integer = -1);
var
    LeftPanelWidth, RightPanelWidth: Integer;
    PanelHeight: Integer;
    i: Integer;
begin
    if (SelectedPanelIndex >= 0) and (SelectedPanelIndex < Length(ViewportPanels)) then
    begin
        // Разворачиваем выбранную панель на всю область
        for i := 0 to High(ViewportPanels) do
        begin
            if i = SelectedPanelIndex then
            begin
                ViewportPanels[i].SetBounds(0, 0, ViewportsPanel.ClientWidth, ViewportsPanel.ClientHeight);
                ViewportPanels[i].Visible := True;
                CurrentExpandedViewport := SelectedPanelIndex;
//                OpenCameras(True);
                ServerCmd('LEVEL REDRAW');
            end
            else
                ViewportPanels[i].Visible := False;
        end;
        Exit;
    end;
    // Если панель не выбрана, отображаем в обычном режиме
    PanelHeight := ViewportsPanel.ClientHeight div 2;
    case cmbLeftPanelsWidthRatio.ItemIndex of
        0: LeftPanelsWidthRatio := 0.5;
        1: LeftPanelsWidthRatio := 0.65;
        2: LeftPanelsWidthRatio := 0.75;
    end;

    LeftPanelWidth := Round(ViewportsPanel.ClientWidth * LeftPanelsWidthRatio);
    RightPanelWidth := ViewportsPanel.ClientWidth - LeftPanelWidth;
    // Распределение панелей
    ViewportPanels[0].SetBounds(0, 0, LeftPanelWidth, PanelHeight);
    ViewportPanels[0].Visible := True;
    ViewportPanels[1].SetBounds(LeftPanelWidth, 0, RightPanelWidth, PanelHeight);
    ViewportPanels[1].Visible := True;
    ViewportPanels[2].SetBounds(0, PanelHeight, LeftPanelWidth, PanelHeight);
    ViewportPanels[2].Visible := True;
    ViewportPanels[3].SetBounds(LeftPanelWidth, PanelHeight, RightPanelWidth, PanelHeight);
    ViewportPanels[3].Visible := True;
end;


{procedure TfrmMain.FitViewportsToWindow();
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
end;}

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

procedure TfrmMain.edit_ActorCopyExecute(Sender: TObject);
begin
    ServerCmd('EDIT COPY"');
end;

procedure TfrmMain.edit_ActorCutExecute(Sender: TObject);
begin
    ServerCmd('EDIT CUT');
end;

procedure TfrmMain.edit_ActorDeleteExecute(Sender: TObject);
begin
    ServerCmd('ACTOR DELETE');
end;

procedure TfrmMain.edit_ActorDuplicateExecute(Sender: TObject);
begin
    ServerCmd('ACTOR DUPLICATE');
end;

procedure TfrmMain.edit_ActorPasteExecute(Sender: TObject);
begin
    ServerCmd('EDIT PASTE');
end;

procedure TfrmMain.edit_RedoExecute(Sender: TObject);
begin
    ServerCmd('TRANSACTION REDO');
end;

procedure TfrmMain.edit_SearchActorsExecute(Sender: TObject);
begin
    var bEditorPatchPresent := CheckEditorPatch();

    if bEditorPatchPresent = True then
        ServerCmd('ACTOR SEARCH');
end;

procedure TfrmMain.edit_SelectAllActorsExecute(Sender: TObject);
begin
    ServerCmd('ACTOR SELECT ALL');
end;

procedure TfrmMain.edit_SelectInsideBrushExecute(Sender: TObject);
begin
    ServerCmd('ACTOR SELECT INSIDE');
end;

procedure TfrmMain.edit_SelectInvertExecute(Sender: TObject);
begin
    ServerCmd('ACTOR SELECT INVERT');
end;

procedure TfrmMain.edit_SelectNoneActorsExecute(Sender: TObject);
begin
    ServerCmd('SELECT NONE');
end;

procedure TfrmMain.edit_SelectOfAttachTagExecute(Sender: TObject);
begin
    uEditorLoader.SelectOfAttachTag(vp_SelectedClassAttachTag);
end;

procedure TfrmMain.edit_SelectOfBarkBindNameExecute(Sender: TObject);
begin
    uEditorLoader.SelectOfBarkBindName(vp_SelectedClassBarkBindName);
end;

procedure TfrmMain.edit_SelectOfBindNameExecute(Sender: TObject);
begin
    uEditorLoader.SelectOfBindName(vp_SelectedClassBindName);
end;

procedure TfrmMain.edit_SelectOfClassExecute(Sender: TObject);
begin
    uEditorLoader.SelectActorsOfClass(vp_SelectedClassStr);
end;

procedure TfrmMain.edit_SelectOfEventExecute(Sender: TObject);
begin
    uEditorLoader.SelectOfEvent(vp_SelectedClassEvent);
end;

procedure TfrmMain.edit_SelectOfSubClassExecute(Sender: TObject);
begin
    uEditorLoader.SelectOfSubClass(vp_SelectedClassStr);
end;

procedure TfrmMain.edit_SelectOfTagExecute(Sender: TObject);
begin
    uEditorLoader.SelectOfTag(vp_SelectedClassTag);
end;

procedure TfrmMain.edit_UndoExecute(Sender: TObject);
begin
    ServerCmd('TRANSACTION UNDO');
end;

procedure TfrmMain.file_NewMapExecute(Sender: TObject);
begin
    frmNewMap.ShowModal();
end;

procedure TfrmMain.file_OpenMapExecute(Sender: TObject);
begin
    if OpenMapDlg.Execute(Handle) = True then
    begin
        CurrentMap := OpenMapDlg.FileName; // set global variable so we can use it later
        var DXLevel := AnsiQuotedStr(OpenMapDlg.FileName, '"');
        ServerCmd('MAP LOAD FILE=' + DXLevel);

        AddRecentMapFile(CurrentMap);
    end;
end;

procedure TfrmMain.BuildCube();
begin
//
end;

procedure TfrmMain.build_optionsExecute(Sender: TObject);
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
    if WheelDelta > 1 then
    begin
        ButtonGroups.VertScrollBar.Position := ButtonGroups.VertScrollBar.Position - 25;
        Handled := True;
    end else
    begin
        ButtonGroups.VertScrollBar.Position := ButtonGroups.VertScrollBar.Position + 25;
        Handled := True;
    end;
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
        cmbCommand.Items.Add(cmbCommand.Text); // История команд.
    end;
end;

procedure TfrmMain.FormClose(Sender: TObject; var Action: TCloseAction);
begin
    ServerCmd('CAMERA CLOSE ALL');
    SaveCfg();
    DeleteObject(LogWindowFont);
    EdExitServer();
end;

procedure TfrmMain.FormCreate(Sender: TObject);
begin
    SetCheckboxAsButton(chkShowConverter);

    GameIniFile := GAME_INI_FILE; // for now,but it should be parsed from commandline, if any.

    ViewportsPanel.Color := clBlack;
    CurrentExpandedViewport := -1;
    Application.Title := 'DXEditPlus';
    frmMain.Caption := Application.Title;

    StartupCheck();

    if bStartupCheckPassed = True then
    begin
        TTask.Run(procedure
        begin
            Sleep(100); // Задержка 100 миллисекунд, чтобы успел появиться интерфейс
            TThread.Synchronize(nil, procedure
            begin
                LoadEditor();
            end);
        end);
    end;
end;

procedure TfrmMain.ActorReset_AllExecute(Sender: TObject);
begin
    ServerCmd('ACTOR RESET ALL');
end;

procedure TfrmMain.ActorReset_moveToOriginExecute(Sender: TObject);
begin
    ServerCmd('ACTOR RESET LOCATION');
end;

procedure TfrmMain.ActorReset_PivotExecute(Sender: TObject);
begin
    ServerCmd('ACTOR RESET PIVOT');
end;

procedure TfrmMain.ActorReset_RotationExecute(Sender: TObject);
begin
    ServerCmd('ACTOR RESET ROTATION');
end;

procedure TfrmMain.ActorReset_ScalingExecute(Sender: TObject);
begin
    ServerCmd('ACTOR RESET SCALE');
end;

procedure TfrmMain.view_ActorSelectedPropertiesExecute(Sender: TObject);
begin
    if NumSelectedActors() > 0 then
        ServerCmd('HOOK ACTORPROPERTIES');
end;

procedure TfrmMain.view_DX_LevelinfoPropertiesExecute(Sender: TObject);
begin
    ServerCmd('EDITACTOR CLASS=DeusExLevelInfo');
end;

procedure TfrmMain.view_level_propertiesExecute(Sender: TObject);
begin
    ServerCmd('HOOK LEVELPROPERTIES');
end;

procedure TfrmMain.AdvancedOptions1Click(Sender: TObject);
begin
    ServerCmd('HOOK PREFERENCES');
end;


procedure TfrmMain.AppEventsIdle(Sender: TObject; var Done: Boolean);
begin
    for var i:= 0 to 3 do
    begin
        if ViewPorts[i] <> nil then
            ViewPorts[i].DrawCustomBorder();
    end;

    Done := True;
end;

{$WARN SYMBOL_DEPRECATED OFF} // Оно бы ещё работало... Либо я что-то не так делаю.
procedure TfrmMain.AppEventsShowHint(var HintStr: string; var CanShow: Boolean; var HintInfo: THintInfo);
begin
    HintInfo.HintMaxWidth := 400;
end;
{$WARN SYMBOL_DEPRECATED ON}

procedure TfrmMain.bbCubeMouseDown(Sender: TObject; Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
    if Button = TMouseButton.mbRight then
    begin
        GetCursorPos(CurrentMouseCoords);
        frmBrushBuilder.ShowBuilder(bmCube);
        frmBrushBuilder.Left := CurrentMouseCoords.X;
        frmBrushBuilder.Top := CurrentMouseCoords.Y;
    end;
end;

procedure TfrmMain.bbSheetMouseDown(Sender: TObject; Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
    if Button = TMouseButton.mbRight then
        frmBrushBuilder.ShowBuilder(bmSheet);
end;

procedure TfrmMain.brushAddBreakableGlassExecute(Sender: TObject);
begin
    ServerCmd('BRUSH ADDMOVER CLASS=BreakableGlass');
end;

procedure TfrmMain.brushAddBreakableWallExecute(Sender: TObject);
begin
    ServerCmd('BRUSH ADDMOVER CLASS=BreakableWall');
end;

procedure TfrmMain.brushAddDeusExMoverExecute(Sender: TObject);
begin
    ServerCmd('BRUSH ADDMOVER CLASS=DeusExMover');
end;

procedure TfrmMain.brushAddExecute(Sender: TObject);
begin
    ServerCmd('BRUSH ADD');
end;

procedure TfrmMain.brushAddMoverExecute(Sender: TObject);
begin
    ServerCmd('BRUSH ADDMOVER');
end;

procedure TfrmMain.brushDeintersectExecute(Sender: TObject);
begin
    ServerCmd('BRUSH FROM DEINTERSECTION');
end;

procedure TfrmMain.brushIntersectExecute(Sender: TObject);
begin
    ServerCmd('BRUSH FROM INTERSECTION');
end;

procedure TfrmMain.brushMakeNonSolidExecute(Sender: TObject);
begin
    ServerCmd('MAP SETBRUSH CLEARFLAGS=' + Trim(IntToStr(PF_SEMISOLID + PF_NOTSOLID)) + ' SETFLAGS=' + Trim(IntToStr(PF_NOTSOLID)));
end;

procedure TfrmMain.brushMakeSemiSolidExecute(Sender: TObject);
begin
    ServerCmd('MAP SETBRUSH CLEARFLAGS=' + Trim(IntToStr(PF_SEMISOLID + PF_NOTSOLID)) + ' SETFLAGS=' + Trim(IntToStr(PF_SEMISOLID)));
end;

procedure TfrmMain.brushMakeSolidExecute(Sender: TObject);
begin
    ServerCmd('MAP SETBRUSH CLEARFLAGS=' + Trim(IntToStr(PF_SEMISOLID + PF_NOTSOLID)) + ' SETFLAGS=' + Trim(IntToStr(0)));
end;

procedure TfrmMain.brushSubtractExecute(Sender: TObject);
begin
    ServerCmd('BRUSH SUBTRACT');
end;

procedure TfrmMain.br_ActorBrowserExecute(Sender: TObject);
begin
    frmClassBrowser.Show();
end;

procedure TfrmMain.br_MasterBrowserExecute(Sender: TObject);
begin
    frmMasterBrowser.show();
end;

procedure TfrmMain.br_MeshBrowserExecute(Sender: TObject);
begin
    frmMeshViewer.Show();
end;

procedure TfrmMain.br_TextureBrowserExecute(Sender: TObject);
begin
    frmTextures.show();
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

procedure TfrmMain.mniOrderToFirstClick(Sender: TObject);
begin
    ServerCmd('MAP SENDTO FIRST');
end;

procedure TfrmMain.mniOrderToLastClick(Sender: TObject);
begin
    ServerCmd('MAP SENDTO LAST');
end;

procedure TfrmMain.mniPolysFromBrushClick(Sender: TObject);
begin
    ServerCmd('MAP BRUSH PUT');
end;

procedure TfrmMain.mniPolysToBrushClick(Sender: TObject);
begin
    ServerCmd('MAP BRUSH GET');
end;

procedure TfrmMain.mniTransformPermanentlyClick(Sender: TObject);
begin
    ServerCmd('ACTOR APPLYTRANSFORM');
end;

procedure TfrmMain.N2DShapeEditor1Click(Sender: TObject);
begin
    frm2DShapeEditor.Show();
end;

procedure TfrmMain.mniMapSelectNonSolidsClick(Sender: TObject);
begin
    ServerCmd('MAP SELECT NONSOLIDS');
end;

procedure TfrmMain.miGenerateIntForMapClick(Sender: TObject);
begin
    if (CurrentMap <> '') and (TFile.Exists(CurrentMap) = True) then
    begin
        var CurrentMapFileName := ExtractFileName(CurrentMap); // Убираем путь
        var GeneratedInt := ChangeFileExt(CurrentMapFileName, '.int');
        ServerCmd('DUMPINT ' + CurrentMapFileName);

        if TFile.Exists(GeneratedInt) then // Если файл был создан, то он будет в каталоге с программой (DeusEx\System\)
            MessageBox(0, PChar('Generated: ' + GeneratedInt), 'Done!', MB_OK + MB_ICONINFORMATION + MB_TOPMOST);
    end;
end;

procedure TfrmMain.mniMapSelectAddsClick(Sender: TObject);
begin
    ServerCmd('MAP SELECT ADDS');
end;

procedure TfrmMain.SetMoverKeyClick(Sender: TObject);
begin
    SetMoverKeyFrame((Sender as TMenuItem).Tag);
end;

procedure TfrmMain.SetRotGridSizeCick(Sender: TObject);
begin
    var NewSize := (Sender as TMenuItem).Tag;

    uEditorLoader.SetRotGridSize(NewSize);
end;

procedure TfrmMain.se_CustomAngleChange(Sender: TObject);
begin
    se_RotationUU.OnChange := nil;
    se_RotationUU.Value := uEditorLoader.DegreesToUU(se_CustomAngle.Value);
    se_RotationUU.OnChange := se_RotationUUChange;
end;

procedure TfrmMain.se_DistanceUUChange(Sender: TObject);
begin
    se_Dist_Cm.OnChange := nil;
    se_Dist_Meters.OnChange := nil;

    if chkUseInches.Checked = False then
    begin
        se_Dist_Cm.Value := uEditorLoader.UUToCm(se_DistanceUU.Value);
        se_Dist_Meters.value := uEditorLoader.UUToMeters(se_DistanceUU.Value);
    end
    else
    begin
        se_Dist_Cm.Value := uEditorLoader.UUToInches(se_DistanceUU.Value);
        se_Dist_Meters.value := uEditorLoader.UUToFeet(se_DistanceUU.Value);
    end;

    EnableDistConverterEvents(se_DistanceUU);
end;

procedure TfrmMain.se_Dist_CmChange(Sender: TObject);
begin
    se_DistanceUU.OnChange := nil;
    se_Dist_Meters.OnChange := nil;

    if chkUseInches.Checked = False then
    begin
        se_DistanceUU.Value := uEditorLoader.CmToUU(se_Dist_Cm.Value);
        se_Dist_Meters.Value := se_Dist_Cm.Value / 100;
    end
    else
    begin
        se_DistanceUU.Value := uEditorLoader.InchesToUU(se_Dist_Cm.Value);
        se_Dist_Meters.Value := se_Dist_Cm.Value / 12;
    end;

    EnableDistConverterEvents(se_Dist_Cm);
end;

procedure TfrmMain.se_Dist_MetersChange(Sender: TObject);
begin
    se_DistanceUU.OnChange := nil;
    se_Dist_Cm.OnChange := nil;

    if chkUseInches.Checked = False then
    begin
        se_DistanceUU.Value := uEditorLoader.MetersToUU(se_Dist_Meters.Value);
        se_Dist_Cm.Value := se_Dist_Meters.Value * 100;
    end
    else
    begin
        se_DistanceUU.Value := uEditorLoader.FeetToUU(se_Dist_Meters.Value);
        se_Dist_Cm.Value := se_Dist_Meters.Value * 12;
    end;

    EnableDistConverterEvents(se_Dist_Meters);
end;

procedure TfrmMain.se_RotationUUChange(Sender: TObject);
begin
    se_CustomAngle.OnChange := nil;
    se_CustomAngle.value := uEditorLoader.UUToDegrees(Round(se_rotationUU.value));
    se_CustomAngle.OnChange := se_CustomAngleChange;
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
      ViewPorts[0].ViewportContainer.Width,
      ViewPorts[0].ViewportContainer.Height,
      SHOW_Regular_Mode,
      REN_ORTHXY, 'Standard1V');
    ViewPorts[0].ViewportHeader.Caption := '[0] Top';
    ViewPorts[0].Caption := 'Standard1V';
    ViewPorts[0].ViewportFlags := SHOW_Regular_Mode;
    ViewPorts[0].ViewportMode := REN_ORTHXY;

    // Открыть вторую камеру
    OpenCamera(bReopen, ViewPorts[1].ViewportContainer.Handle, 0, 0,
      ViewPorts[1].ViewportContainer.Width,
      ViewPorts[1].ViewportContainer.Height,
      SHOW_Regular_Mode,
      REN_ORTHXZ, 'Standard2V');
    ViewPorts[1].ViewportHeader.Caption := '[1] Front';
    ViewPorts[1].Caption := 'Standard2V';
    ViewPorts[1].ViewportFlags := SHOW_Regular_Mode;
    ViewPorts[1].ViewportMode := REN_ORTHXZ;

    // Note: when using 'Standard3V', the audio seem to be fails to initialize, leading to crash
    // Fix: disable 'Data Execution Prevention Compatible' in project options.
    OpenCamera(bReopen, ViewPorts[2].ViewportContainer.Handle, 0, 0,
      ViewPorts[2].ViewportContainer.Width,
      ViewPorts[2].ViewportContainer.Height,
      SHOW_Regular_Mode,
      REN_DYNLIGHT, 'Standard3V');
    ViewPorts[2].ViewportHeader.Caption := '[2] Dynamic Light';
    ViewPorts[2].Caption := 'Standard3V';
    ViewPorts[2].ViewportFlags := SHOW_Regular_Mode;
    ViewPorts[2].ViewportMode := REN_DYNLIGHT;

    // Открыть четвертую камеру
    OpenCamera(bReopen, ViewPorts[3].ViewportContainer.Handle, 0, 0,
      ViewPorts[3].ViewportContainer.Width,
      ViewPorts[3].ViewportContainer.Height,
      SHOW_Regular_Mode,
      REN_ORTHYZ, 'Standard4V');
    ViewPorts[3].ViewportHeader.Caption := '[3] Side';
    ViewPorts[3].Caption := 'Standard4V';
    ViewPorts[3].ViewportFlags := SHOW_Regular_Mode;
    ViewPorts[3].ViewportMode := REN_ORTHYZ;
end;

procedure TfrmMain.EmbedCamera(const Num: Integer);
//var
//    CurrentStyles: NativeInt;
begin
    // OpenGLDrv
    ViewPorts[Num].Tag := FindWindowEx(ViewPorts[Num].ViewportContainer.Handle, 0, 'DXEditPlusUnrealWOpenGLWindowsViewportWindow', nil);
    if ViewPorts[Num].Tag = 0 then // Not found? Try SoftDrv
        ViewPorts[Num].Tag := FindWindowEx(ViewPorts[Num].ViewportContainer.Handle, 0, 'DXEditPlusUnrealWEditorWindowsViewportWindow', nil);

//    CurrentStyles := GetWindowLongPtr(ViewPorts[Num].Tag, GWL_STYLE);
//    CurrentStyles := (CurrentStyles or WS_CHILD) and not (WS_POPUP);
//    SetWindowLongPtr(ViewPorts[Num].Tag, GWL_STYLE, CurrentStyles);
//    SetWindowPos(ViewPorts[Num].Tag, 0, 0, 0, 0, 0, SWP_NOMOVE or SWP_NOSIZE or SWP_NOZORDER or SWP_FRAMECHANGED);
end;

procedure TfrmMain.ReleaseCamera(const Num: Integer);
begin
//
end;

procedure TfrmMain.SetComponentsEnabled(Parent: TWinControl; bEnabled: Boolean);
var
    Control: TControl;
begin
    for var i := 0 to Parent.ControlCount - 1 do
    begin
        Control := Parent.Controls[i];

        // Включение или отключение компонентов по их типам
        if Control is TWinControl then
            SetComponentsEnabled(TWinControl(Control), bEnabled);

        // Устанавливаем свойство Enabled, если компонент поддерживает его
        if Control is TWinControl then
            TWinControl(Control).Enabled := bEnabled;
    end;
end;

procedure TfrmMain.SetCheckboxAsButton(ChkBox: TCheckBox);
const
    BS_TYPEMASK = $0000000F; // С маскирующим значением
begin
    if not Assigned(ChkBox) then
      Exit();

var
    CurrentStyle: LongInt;

    // Получаем текущий стиль
    CurrentStyle := GetWindowLongPtr(ChkBox.Handle, GWL_STYLE);

    // Устанавливаем стиль BS_PUSHLIKE для чекбокса
    SetWindowLongPtr(ChkBox.Handle, GWL_STYLE,
      (CurrentStyle and not BS_TYPEMASK) or BS_PUSHLIKE or BS_AUTORADIOBUTTON);

    // Добавляем стиль рамки, если необходимо
//    SetWindowLongPtr(ChkBox.Handle, GWL_EXSTYLE,
//      (GetWindowLongPtr(ChkBox.Handle, GWL_EXSTYLE) and not WS_EX_CLIENTEDGE) or WS_EX_CLIENTEDGE);

    // Перерисовываем элемент управления, чтобы изменения вступили в силу
    SendMessage(ChkBox.Handle, BM_SETSTYLE, BS_PUSHLIKE or BS_AUTORADIOBUTTON, 0);
end;

procedure TfrmMain.EnableDistConverterEvents(ActiveSpinEdit: TJvSpinEdit);
begin
    if ActiveSpinEdit <> se_DistanceUU then
        se_DistanceUU.OnChange := se_DistanceUUChange;

    if ActiveSpinEdit <> se_Dist_Cm then
        se_Dist_Cm.OnChange := se_Dist_CmChange;

    if ActiveSpinEdit <> se_Dist_Meters then
        se_Dist_Meters.OnChange := se_Dist_MetersChange;
end;

procedure TfrmMain.estTextureProperties1Click(Sender: TObject);
begin
    frmTextureProperties.SetTexture('DeusExDeco.Skins.ATMTex1');
end;

procedure TfrmMain.SetEditorModeClick(Sender: TObject);
var
    ModeButton: TToolButton;
begin
    if (Sender is TToolButton) then
    begin
        ModeButton := TToolButton(Sender);

        if ModeButton.Parent = toolbarEditorMode then
        begin
            case (Sender as TToolButton).tag of
                EM_ViewportMove:  ServerCmd('MODE CAMERAMOVE'); //   = 1;   Move viewport normally.
                EM_BrushSheer:    ServerCmd('MODE BRUSHSHEER');//    = 6;   // Sheer brush.
                EM_BrushScale:    ServerCmd('MODE BRUSHSCALE');   //    = 7;   // Scale brush.
                EM_BrushStretch:  ServerCmd('MODE BRUSHSTRETCH'); //  = 8;   // Stretch brush.
                EM_BrushSnap:     ServerCmd('MODE BRUSHSNAP'); //     = 18;  // Brush snap-scale.
                EM_BrushRotate:   ServerCmd('MODE BRUSHROTATE');  //   = 5;   // Rotate brush.
                EM_TexturePan:    ServerCmd('MODE TEXTUREPAN');   //    = 11;  // Pan textures.
                EM_TextureRotate: ServerCmd('MODE TEXTUREROTATE');// = 13; // Rotate textures.
            end;
        end;
    end;
end;

procedure TfrmMain.SetGridSizeClick(Sender: TObject);
begin
    var NewSize := (Sender as TMenuItem).Tag;
    uEditorLoader.SetGridSize(NewSize);
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
            ParentWnd := FindWindow('DXEditPlusUnrealWLog', nil);
            Sleep(100); // Ожидание между попытками
        end;

        // Поиск дочернего окна
        ChildWnd := 0;
        while ChildWnd = 0 do
        begin
            ChildWnd := FindWindowEx(ParentWnd, 0, 'DXEditPlusUnrealWEditTerminal', nil);
            Sleep(100); // Ожидание между попытками
        end;

        // Сохранение указателя на окно
        LogWindowHandle := ParentWnd;
        LogWindowTerminalHandle := ChildWnd;

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

procedure TfrmMain.ResizeFinished(Sender: TObject);
begin
    ResizeTimer.Enabled := False;
    FitViewportsToWindow();
    FitViewportsToWindow(CurrentExpandedViewport);
    ServerCmd('CAMERA HIDESTANDARD');
    OpenCameras(True);

    for var i:= 0 to 3 do
        EmbedCamera(i);
end;

procedure TfrmMain.LoadEditor();
begin
    GIsRequestingExit := Get_GIsRequestingExit();

    EdInitServer(Handle, Callback.Handle);

    var SetupProgressBar := 'APP SET ProgressBar=' + Trim(IntToStr(frmMain.ProgressBar.Handle)) +
        ' ProgressText=' + Trim(IntToStr(frmMain.ProgressText.Handle));

    ServerCmd(SetupProgressBar);

    ServerCmd('HIDELOG');
    ServerCmd('MODE CAMERAMOVE GRID=ON ROTGRID=ON SNAPTOPIVOT=ON SNAPDIST=10');

    ReplaceLogWindowFont();

    CreateViewportPanels();
    FitViewportsToWindow();
    CreateViewports();
    OpenCameras(False);

    BuildOptions := DefaultBuiltOptions;

    Screen.HintFont.Name := 'Verdana';
    Application.HintHidePause := 30000;

    OnResize := FormResize;

    frmTextures.FormCreate(self);

    for var i:= 0 to 3 do
        EmbedCamera(i);

    LoadCfg();
end;

procedure TfrmMain.menuMainFormChange(Sender: TObject; Source: TMenuItem; Rebuild: Boolean);
begin
    for var i := 0 to MAX_RECENT_MAPS do
        mnuRecentMaps.Items[i].Visible := mnuRecentMaps.Items[i].Caption <> '';
end;

procedure TfrmMain.AddRecentMapFile(aFile: string); // add opened file to "recent" list
var
    i: Integer;
begin
    var bListIsFull := True;

    for i := 0 to Length(RecentMaps) - 1 do
    begin
        if RecentMaps[i] = aFile then
            Exit;

        if RecentMaps[i] = '' then
        begin
            RecentMaps[i] := aFile;
            mnuRecentMaps.Items[i].Caption := aFile;
            mnuRecentMaps.Items[i].Visible := True;
            bListIsFull := False;
            Break;
        end;
    end;

    if bListIsFull then
    begin
        // Shift all items down by 1
        for i := Length(RecentMaps) - 1 downto 1 do
        begin
            RecentMaps[i] := RecentMaps[i - 1];
            mnuRecentMaps.Items[i].Caption := mnuRecentMaps.Items[i - 1].Caption;
            mnuRecentMaps.Items[i].Visible := mnuRecentMaps.Items[i - 1].Visible;
        end;

        RecentMaps[0] := aFile;
        mnuRecentMaps.Items[0].Caption := aFile;
        mnuRecentMaps.Items[0].Visible := True;
    end;
end;

procedure TfrmMain.ClearRecentMapFiles();
begin
    for var i:= 0 to MAX_RECENT_MAPS do
    begin
        RecentMaps[i] := '';
        mnuRecentMaps.Items[i].Caption := '';
    end;

end;

procedure TfrmMain.OpenRecentMap(aFile: string);
begin
    ServerCmd('MAP LOAD FILE=' + AnsiQuotedStr(aFile, '"') + ' REDRAW=OFF');
end;

procedure TfrmMain.OpenRecentMapClick(Sender: TObject);
begin
    if bMapModified = true then
    begin
        case MessageBox(0, 'Save changes to Map?', 'Save current map?', MB_YESNOCANCEL + MB_ICONQUESTION + MB_TOPMOST) of
            ID_CANCEL: Exit(); // Cancel, just close the dialog and exit
            //ID_YES: FileSaveExecute(self); // Save the file
        end;
    end;

    var fileName := (Sender as TMenuItem).Caption;

    if FileExists(fileName) = True then
        OpenRecentMap(fileName)
    else
        MessageBox(0, PChar(strRecentFileNotFound), 'Error: File not found!', MB_OK + MB_ICONSTOP + MB_TOPMOST);
end;

procedure TfrmMain.sbActorBrowserClick(Sender: TObject);
begin
    frmClassBrowser.Show();
end;

procedure TfrmMain.sbLogClick(Sender: TObject);
begin
    ShowLogWindow();
end;

procedure TfrmMain.sbScriptEditorClick(Sender: TObject);
begin
    frmScriptEditor.Show();
end;

procedure TfrmMain.sbTextureBrowserClick(Sender: TObject);
begin
    frmTextures.Show();
end;

procedure TfrmMain.mniMapSelectSemiSolidsClick(Sender: TObject);
begin
    ServerCmd('MAP SELECT SEMISOLIDS');
end;

procedure TfrmMain.mniSelectAllOfTypeClick(Sender: TObject);
begin
    ServerCmd('ACTOR SELECT OFCLASS CLASS=');
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
        SetWindowPos(LogWindowHandle, Handle, 0, 0, 0, 0, SWP_NOSIZE or SWP_NOMOVE);
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
    Result := False; // for now
end;

procedure TfrmMain.chkShowConverterClick(Sender: TObject);
begin
    pnlConverter.Visible := chkShowConverter.Checked;
end;

procedure TfrmMain.chkUseInchesClick(Sender: TObject);
begin
    case chkUseInches.Checked of
        True: lblDistance.Caption := strInch;
        False: lblDistance.Caption := strCm;
    end;
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

procedure TfrmMain.tbAddSpecialClick(Sender: TObject);
begin
    frmAddSpecialBrush.Show();
end;

procedure TfrmMain.tbBuildGeometryClick(Sender: TObject);
begin
    ServerCmd('MAP REBUILD');
end;

procedure TfrmMain.tbBuildPathsClick(Sender: TObject);
begin
    ServerCmd('HIDELOG');
    ServerCmd('PATHS DEFINE');
end;

procedure TfrmMain.view_surf_PropertiesExecute(Sender: TObject);
begin
    GetCursorPos(CurrentMouseCoords);

    frmSurfaceProps.Left := CurrentMouseCoords.X;
    frmSurfaceProps.Top := CurrentMouseCoords.Y;
    frmSurfaceProps.Show();
end;

procedure TfrmMain.view_LogExecute(Sender: TObject);
begin
    ShowLogWindow();
end;

procedure TfrmMain.LoadCfg();
begin
    var DXEditPlusIni := TIniFile.Create(ExtractFilePath(ParamStr(0)) + uEditor.Consts.DXEditPlusIniFile);
    try
        with DXEditPlusIni do
        begin
            // Main Form Height + width
            Height := ReadInteger('Settings', 'frmMain.Height', 600); // maybe 640x480? :D
            Width := ReadInteger('Settings', 'frmMain.Width', 800);
            // Left + top
            Left := ReadInteger('Settings', 'frmMain.Left', 0);
            Top := ReadInteger('Settings', 'frmMain.Top', 0);

             // up to 10 recent files
             for var i := 0 to MAX_RECENT_MAPS do
             begin
                 RecentMaps[i] := ReadString('RecentMaps', 'RecentMap'+i.ToString , '');
                 mnuRecentMaps.Items[i].Caption := RecentMaps[i];
             end;

            // BrushBuilder (only height + width)
            frmBrushBuilder.Height := ReadInteger('Settings', 'frmBrushBuilder.Height', 264);
            frmBrushBuilder.Width := ReadInteger('Settings', 'frmBrushBuilder.Width', 354);
            frmBrushBuilder.chkCloseWhenBuilt.Checked := ReadBool('Settings', 'frmBrushBuilder.chkCloseWhenBuilt.Checked', False);

            // Textures Browser

            frmTextures.Visible := ReadBool('Settings', 'frmTextures.Visible', False);

            frmTextures.Height := ReadInteger('Settings', 'frmTextures.Height', 450);
            frmTextures.Width := ReadInteger('Settings', 'frmTextures.Width', 450);

            if ValueExists('Settings', 'frmTextures.Left') and ValueExists('Settings', 'frmTextures.Top') then
            begin
                frmTextures.Position := poDesigned;
                frmTextures.Left := ReadInteger('Settings', 'frmTextures.Left', 450);
                frmTextures.Top := ReadInteger('Settings', 'frmTextures.Top', 200);
            end;




            // Actor Class Browser

            // Something else...
        end;

    finally
        DXEditPlusIni.Free();
    end;
end;

procedure TfrmMain.SaveCfg();
begin
    var DXEditPlusIni := TIniFile.Create(ExtractFilePath(ParamStr(0)) + uEditor.Consts.DXEditPlusIniFile);
    try
        with DXEditPlusIni do
        begin
            // Main form
            WriteInteger('Settings', 'frmMain.Height', Height);
            WriteInteger('Settings', 'frmMain.Width', Width);

            WriteInteger('Settings', 'frmMain.Left', Left);
            WriteInteger('Settings', 'frmMain.Top', Top);

            for var i := 0 to MAX_RECENT_MAPS do
                 WriteString('RecentMaps', 'RecentMap'+i.ToString, RecentMaps[i]);

            // BrushBuilder (only height + width)
            WriteInteger('Settings', 'frmBrushBuilder.Height', frmBrushBuilder.Height);
            WriteInteger('Settings', 'frmBrushBuilder.Width', frmBrushBuilder.Width);
            WriteBool('Settings', 'frmBrushBuilder.chkCloseWhenBuilt.Checked', frmBrushBuilder.chkCloseWhenBuilt.Checked);

            // Textures Browser
            WriteBool('Settings', 'frmTextures.Visible', frmTextures.Visible);

            WriteInteger('Settings', 'frmTextures.Height', frmTextures.Height);
            WriteInteger('Settings', 'frmTextures.Width', frmTextures.Width);

            WriteInteger('Settings', 'frmTextures.Left', frmTextures.Left);
            WriteInteger('Settings', 'frmTextures.Top', frmTextures.Top);

            // Actor Class Browser

            // Something else...
        end;

    finally
        DXEditPlusIni.Free();
    end;
end;

procedure TfrmMain.mniMapSelectSubtractsClick(Sender: TObject);
begin
    ServerCmd('MAP SELECT SUBTRACTS');
end;

{procedure TfrmMain.WMNCActivate(var Msg: TWMNCActivate);
begin
    inherited;
end;

procedure TfrmMain.WMActivate(var Msg: TWMActivate);
begin
    inherited;
end;}

//procedure TfrmMain.WndProc(var Msg: TMessage);
//begin
{    if Msg.Msg = WM_NCACTIVATE then
    begin
        Msg.WParam := WPARAM(True); // Всегда указываем, что окно активно
    end; }

//    inherited;
//end;

end.

