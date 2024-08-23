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

    procedure SaveBuildOptions();
    procedure LoadBuildOptions();

    procedure tbTreeCutsChange(Sender: TObject);
    procedure btnCloseBuilderClick(Sender: TObject);
    procedure btnDefinePathsClick(Sender: TObject);
    procedure btnUndefinePathsClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure PATHSBUILDLOWOPT1Click(Sender: TObject);
    procedure PATHSBUILD1Click(Sender: TObject);
    procedure PATHSBUILDHIGHOPT1Click(Sender: TObject);
    procedure btnAutoBuildPathsClick(Sender: TObject);
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
