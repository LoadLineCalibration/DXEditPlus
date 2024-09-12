unit uFrmBuildOptions;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ComCtrls, Vcl.StdCtrls, Vcl.ExtCtrls, uEditorLoader, Vcl.Menus,
  uEditor.Strings, system.Types;

type
  TfrmBuildOptions = class(TForm)
    PageControl1: TPageControl;
    tsBuild: TTabSheet;
    tsStats: TTabSheet;
    btnCloseBuilder: TButton;
    GroupBox1: TGroupBox;
    chkRebuildGeometry: TCheckBox;
    chkRebuildBSP: TCheckBox;
    rgOptimizationLvl: TRadioGroup;
    chkBuildVisZones: TCheckBox;
    chkOptimizeGeometry: TCheckBox;
    GroupBox2: TGroupBox;
    tbTreeCuts: TTrackBar;
    Label1: TLabel;
    Label2: TLabel;
    lblTreeCutsValue: TLabel;
    GroupBox3: TGroupBox;
    chkRebuildLighting: TCheckBox;
    chkApplySelectedLights: TCheckBox;
    GroupBox4: TGroupBox;
    chkDefinePaths: TCheckBox;
    btnDefinePaths: TButton;
    Label3: TLabel;
    btnStartBuild: TButton;
    btnUndefinePaths: TButton;
    btnAutoBuildPaths: TButton;
    AutoPathsPopup: TPopupMenu;
    PATHSBUILD1: TMenuItem;
    PATHSBUILDLOWOPT1: TMenuItem;
    PATHSBUILDHIGHOPT1: TMenuItem;
    mmoStats: TMemo;
    btnRefreshStats: TButton;
    Bevel1: TBevel;

    procedure SaveBuildOptions();
    procedure LoadBuildOptions();

    procedure LoadStats();

    procedure tbTreeCutsChange(Sender: TObject);
    procedure btnCloseBuilderClick(Sender: TObject);
    procedure btnDefinePathsClick(Sender: TObject);
    procedure btnUndefinePathsClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure PATHSBUILDLOWOPT1Click(Sender: TObject);
    procedure PATHSBUILD1Click(Sender: TObject);
    procedure PATHSBUILDHIGHOPT1Click(Sender: TObject);
    procedure btnAutoBuildPathsClick(Sender: TObject);
    procedure btnRefreshStatsClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmBuildOptions: TfrmBuildOptions;

implementation

{$R *.dfm}

uses uFrmMain;

procedure TfrmBuildOptions.btnAutoBuildPathsClick(Sender: TObject);
begin
    var P := btnAutoBuildPaths.ClientToScreen(Point(0, btnAutoBuildPaths.Height));

    AutoPathsPopup.Popup(P.X, P.Y);
end;

procedure TfrmBuildOptions.btnCloseBuilderClick(Sender: TObject);
begin
    Self.Close();
    SaveBuildOptions();
end;

procedure TfrmBuildOptions.btnDefinePathsClick(Sender: TObject);
begin
    ServerCmd('PATHS DEFINE');
end;

procedure TfrmBuildOptions.btnRefreshStatsClick(Sender: TObject);
begin
    PageControl1.ActivePageIndex := 1;
    LoadStats();
end;

procedure TfrmBuildOptions.btnUndefinePathsClick(Sender: TObject);
begin
    ServerCmd('PATHS UNDEFINE');
end;

procedure TfrmBuildOptions.FormShow(Sender: TObject);
begin
    LoadBuildOptions();
end;

procedure TfrmBuildOptions.SaveBuildOptions();
begin
    with frmMain.BuildOptions do
    begin
        bRebuildGeometry       := chkRebuildGeometry.Checked;
        bRebuildBSP            := chkRebuildBSP.Checked;
        OptimizationLevel      := rgOptimizationLvl.ItemIndex;

        bOptimizeGeometry      := chkOptimizeGeometry.Checked;
        bBuildVisZones         := chkBuildVisZones.Checked;

        TreeCutsValue          := tbTreeCuts.Position;

        bRebuildLighting       := chkRebuildLighting.Checked;
        bApplySelectedLights   := chkApplySelectedLights.Checked;

        bDefinePaths           := chkDefinePaths.Checked;
    end;
end;

procedure TfrmBuildOptions.LoadBuildOptions();
begin
    with frmMain.BuildOptions do
    begin
        chkRebuildGeometry.Checked   := bRebuildGeometry;
        chkRebuildBSP.Checked        := bRebuildBSP;
        rgOptimizationLvl.ItemIndex  := OptimizationLevel;

        chkOptimizeGeometry.Checked  := bOptimizeGeometry;
        chkBuildVisZones.Checked     := bBuildVisZones;

        tbTreeCuts.Position          := TreeCutsValue;

        chkRebuildLighting.Checked   := bRebuildLighting;
        chkApplySelectedLights.Checked:= bApplySelectedLights;

        chkDefinePaths.Checked       := bDefinePaths;
    end;

    tbTreeCutsChange(self);
end;

procedure TfrmBuildOptions.LoadStats();
    function ShowAsPercents(Caption: string; Nodes: string): string;
    begin
        if StrToInt(Nodes) = 0 then
            Result := '(0%)'
        else
            Result := '(' + IntToStr(Round(100 * StrToInt(Caption) / StrToInt(Nodes))) + '%)';
    end;
begin
    var Ratio: string;

    // Refresh BSP Stats
    var EdPolys := ServerGetProp('BSP', 'Polys');
    var Nodes := ServerGetProp('BSP', 'Nodes');
    var MaxDepth := ServerGetProp('BSP', 'MaxDepth');
    var AvgDepth := ServerGetProp('BSP', 'AvgDepth');
    var Branches := ServerGetProp('BSP', 'Branches');
    var Coplanars := ServerGetProp('BSP', 'Coplanars');
    var Fronts := ServerGetProp('BSP', 'Fronts');
    var Backs := ServerGetProp('BSP', 'Backs');
    var Leaves := ServerGetProp('BSP', 'Leaves');

    // Calculate percents
    var pLeaves := ShowAsPercents(Leaves, Nodes);
    var pBacks := ShowAsPercents(Backs, Nodes);
    var pFronts := ShowAsPercents(Fronts, Nodes);
    var pCoplanars := ShowAsPercents(Coplanars, Nodes);
    var pBranches := ShowAsPercents(Branches, Nodes);

    // Calculate Ratio
    if StrToInt(EdPolys) = 0 then
        Ratio := '0'
    else
        Ratio := IntToStr(Round(100 * StrToInt(Nodes) / StrToInt(EdPolys)));

    // Refresh Geometry Stats
    var MapBrushes := ServerGetProp('Map', 'Brushes');
    var MapAdd := ServerGetProp('Map', 'Add');
    var MapSubtract := ServerGetProp('Map', 'Subtract');
    var MapSpecial := ServerGetProp('Map', 'Special');
    var MapAvgPolys := ServerGetProp('Map', 'AvgPolys');
    var MapTotalPolys := ServerGetProp('Map', 'TotalPolys');
    var MapPoints := ServerGetProp('Map', 'Points');
    var MapVectors := ServerGetProp('Map', 'Vectors');
    var MapSides := ServerGetProp('Map', 'Sides');
    var MapBounds := ServerGetProp('Map', 'Bounds');
    var MapZones := ServerGetProp('Map', 'Zones');

    // Refresh Light Stats
    var LightCount := ServerGetProp('Light', 'Count');
    var LightMeshes := ServerGetProp('Light', 'Meshes');
    var LightMeshPts := ServerGetProp('Light', 'MeshPts');
    var LightCacheSize := ServerGetProp('Light', 'CacheSize');
    var LightAvgSize := ServerGetProp('Light', 'AvgSize');
    var LightMaxSize := ServerGetProp('Light', 'MaxSize');
    var LightMeters := ServerGetProp('Light', 'Meters');

    // Я думаю что Memo просто удобнее чем множество Labels (в данном случае).
    mmoStats.Lines.Clear;
    mmoStats.Lines.Add('-=[ BSP Stats ]=-');
    mmoStats.Lines.Add('Polys:' + Chr(9) + Chr(9) + EdPolys);
    mmoStats.Lines.Add('Nodes:' + Chr(9) + Chr(9) + Nodes);
    mmoStats.Lines.Add('Max Depth:' + Chr(9) + MaxDepth);
    mmoStats.Lines.Add('Avg Depth:' + Chr(9) + AvgDepth);
    mmoStats.Lines.Add('Branches:' + Chr(9) + Branches + ' ' + pBranches);
    mmoStats.Lines.Add('Coplanars:' + Chr(9) + Coplanars + ' ' + pCoplanars);
    mmoStats.Lines.Add('Fronts:' + Chr(9) + Chr(9) + Fronts + ' ' + pFronts);
    mmoStats.Lines.Add('Backs:' + Chr(9) + Chr(9) + Backs + ' ' + pBacks);
    mmoStats.Lines.Add('Leaves:' + Chr(9) + Chr(9) + Leaves + ' ' + pLeaves);
    mmoStats.Lines.Add('Ratio:' + Chr(9) + Chr(9) + Ratio);

    mmoStats.Lines.Add(#13#10 + '-=[ Geometry Stats ]=-');
    mmoStats.Lines.Add('Brushes:' + Chr(9) + MapBrushes);
    mmoStats.Lines.Add('Add:' + Chr(9) + Chr(9) + MapAdd);
    mmoStats.Lines.Add('Subtract:' + Chr(9) + MapSubtract);
    mmoStats.Lines.Add('Special:' + Chr(9) + MapSpecial);

    mmoStats.Lines.Add(#13#10 + 'Average Polys:' + Chr(9) + MapAvgPolys);
    mmoStats.Lines.Add('Total Polys:'+ Chr(9) + MapTotalPolys);

    mmoStats.Lines.Add(#13#10 + 'Points:' + Chr(9) + Chr(9) + MapPoints);
    mmoStats.Lines.Add('Vectors:' + Chr(9) + MapVectors);
    mmoStats.Lines.Add('Sides:' + Chr(9) + Chr(9) + MapSides);
    mmoStats.Lines.Add('Bounds:' + Chr(9) + Chr(9) + MapBounds);
    mmoStats.Lines.Add('Zones:' + Chr(9) + Chr(9) + MapZones);

    mmoStats.Lines.Add(#13#10 + '-=[ Light Stats ]=-');
    mmoStats.Lines.Add('Total/Selected:' + Chr(9) + LightCount);
    mmoStats.Lines.Add('Meshes:' + Chr(9) + Chr(9) + LightMeshes);
    mmoStats.Lines.Add('Mesh Points:' + Chr(9) + LightMeshPts);
    mmoStats.Lines.Add('Average Size:' + Chr(9) + LightAvgSize);
    mmoStats.Lines.Add('Max. Size:' + Chr(9) + LightMaxSize);
    mmoStats.Lines.Add('Cache Size:' + Chr(9) + LightCacheSize);
    mmoStats.Lines.Add('Square Meters:' + Chr(9) + LightMeters);
end;

procedure TfrmBuildOptions.PATHSBUILD1Click(Sender: TObject);
begin
    if MessageBox(Handle, PChar(strAskBuildPaths), 'Build Paths', MB_YESNO +
       MB_ICONQUESTION + MB_TOPMOST) = IDYES then
    begin
        ServerCmd('PATHS BUILD');
    end;
end;

procedure TfrmBuildOptions.PATHSBUILDHIGHOPT1Click(Sender: TObject);
begin
    if MessageBox(Handle, PChar(strAskBuildPaths), 'Build Paths', MB_YESNO +
       MB_ICONQUESTION + MB_TOPMOST) = IDYES then
    begin
        ServerCmd('PATHS BUILD HIGHOPT');
    end;
end;

procedure TfrmBuildOptions.PATHSBUILDLOWOPT1Click(Sender: TObject);
begin
    if MessageBox(Handle, PChar(strAskBuildPaths), 'Build Paths', MB_YESNO +
       MB_ICONQUESTION + MB_TOPMOST) = IDYES then
    begin
        ServerCmd('PATHS BUILD LOWOPT');
    end;
end;

procedure TfrmBuildOptions.tbTreeCutsChange(Sender: TObject);
begin
    lblTreeCutsValue.Caption := tbTreeCuts.Position.ToString;
end;

end.
