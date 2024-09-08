unit uFrmSurfaceProps;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ComCtrls, uEditorLoader, uEditor.Strings,
  ES.Labels, Vcl.ExtCtrls, Vcl.Mask, JvExMask, JvSpin, ES.BaseControls, ES.Layouts;

type
  TfrmSurfaceProps = class(TForm)
    pgc_SurfProps: TPageControl;
    tsSurfaceFlags: TTabSheet;
    tsAlign: TTabSheet;
    tsStats: TTabSheet;
    chkMasked: TCheckBox;
    chkInvisible: TCheckBox;
    chk2Sided: TCheckBox;
    chkPortal: TCheckBox;
    chkMirror: TCheckBox;
    chkNoBoundsReject: TCheckBox;
    chkSpecialLit: TCheckBox;
    chkUnlit: TCheckBox;
    chkHighShadowDetail: TCheckBox;
    chkLowShadowDetail: TCheckBox;
    chkDirtyShadows: TCheckBox;
    chkBrightCorners: TCheckBox;
    chkForceViewZone: TCheckBox;
    chkFakeBackdrop: TCheckBox;
    chkSmallWavy: TCheckBox;
    chkSpecialPoly: TCheckBox;
    chkModulated: TCheckBox;
    chkTranslucent: TCheckBox;
    chkNoSmooth: TCheckBox;
    chkVpan: TCheckBox;
    chkUpan: TCheckBox;
    btnClose: TButton;
    Bevel1: TBevel;
    LL_FlagsInfo: TEsLinkLabel;
    gb_Pan: TGroupBox;
    Label1: TLabel;
    btnPanU1: TButton;
    btnPanU4: TButton;
    btnPanV64: TButton;
    btnPanV16: TButton;
    btnPanU16: TButton;
    btnPanV4: TButton;
    btnPanV1: TButton;
    btnPanU64: TButton;
    btnPanU128: TButton;
    btnPanV128: TButton;
    gb_Rotation: TGroupBox;
    gb_Alignment: TGroupBox;
    gb_Scaling: TGroupBox;
    cmbScale: TComboBox;
    mmoStats: TMemo;
    btnAlignFloor: TButton;
    btnAlignOneTile: TButton;
    btnUnalign: TButton;
    btnAlignWallDir: TButton;
    btnAlignWallColumn: TButton;
    btnAlignWallPan: TButton;
    Label2: TLabel;
    se_VVScale: TJvSpinEdit;
    se_UUScale: TJvSpinEdit;
    se_WallColumnTexels: TJvSpinEdit;
    btnApplySimpleScaling: TButton;
    btnApply_UV_Scaling: TButton;
    btnRotate0_5: TButton;
    btnRotate1: TButton;
    btnRotate11_25: TButton;
    btnRotate22_5: TButton;
    btnRotate45: TButton;
    btnRotate90: TButton;
    btnRotate180: TButton;
    lblHoldShift: TLabel;
    btnSmallDiagonal: TButton;
    btnBigDiagonal: TButton;
    btnFlipU: TButton;
    btnFlipV: TButton;
    se_CustomAngle: TJvSpinEdit;
    btnApplyViewportRatio: TButton;
    chkRelativeScaling: TCheckBox;
    btnClearAllSurfFlags: TButton;
    tsAlign2: TTabSheet;
    gb_TextureSkew: TGroupBox;
    chkHorizontalSkew: TCheckBox;
    chkVerticalSkew: TCheckBox;
    se_HRise: TJvSpinEdit;
    Label3: TLabel;
    se_HRun: TJvSpinEdit;
    se_HScale: TJvSpinEdit;
    pnlHSkew: TEsPanel;
    chkHNegate: TCheckBox;
    pnlVSkew: TEsPanel;
    Label4: TLabel;
    se_VRise: TJvSpinEdit;
    se_VRun: TJvSpinEdit;
    se_VScale: TJvSpinEdit;
    chkVNegate: TCheckBox;
    Bevel2: TBevel;
    EsPanel2: TEsPanel;
    btnApplySkewing: TButton;
    btnResetAll: TButton;

    // New procedures
    procedure SetFlagValues(FlagsOn, FlagsOff: Integer);
    procedure PolyFlagsUpdate();
    procedure GetSelectedPolys();

    // new functions
    function GetTagValue(CheckBox: TCheckBox): Integer;

    procedure btnCloseClick(Sender: TObject);
    procedure btnUnalignClick(Sender: TObject);
    procedure btnPanUClick(Sender: TObject);
    procedure btnPanVClick(Sender: TObject);
    procedure btnRotate0_5Click(Sender: TObject);
    procedure btnRotate1Click(Sender: TObject);
    procedure btnRotate11_25Click(Sender: TObject);
    procedure btnRotate22_5Click(Sender: TObject);
    procedure btnRotate45Click(Sender: TObject);
    procedure btnRotate90Click(Sender: TObject);
    procedure btnRotate180Click(Sender: TObject);
    procedure btnSmallDiagonalClick(Sender: TObject);
    procedure btnBigDiagonalClick(Sender: TObject);
    procedure btnFlipUClick(Sender: TObject);
    procedure btnFlipVClick(Sender: TObject);
    procedure btnApplyViewportRatioClick(Sender: TObject);
    procedure btnApplySimpleScalingClick(Sender: TObject);
    procedure btnApply_UV_ScalingClick(Sender: TObject);
    procedure btnAlignWallDirClick(Sender: TObject);
    procedure btnAlignWallPanClick(Sender: TObject);
    procedure btnAlignWallColumnClick(Sender: TObject);
    procedure PolyFlagsClick(Sender: TObject);
    procedure btnClearAllSurfFlagsClick(Sender: TObject);
    procedure pgc_SurfPropsChange(Sender: TObject);
    procedure chkVerticalSkewClick(Sender: TObject);
    procedure chkHorizontalSkewClick(Sender: TObject);
    procedure btnApplySkewingClick(Sender: TObject);
    procedure btnResetAllClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  protected
    //
  public
    { Public declarations }
  end;

var
  frmSurfaceProps: TfrmSurfaceProps;
  bUpdating: Boolean;


implementation

{$R *.dfm}

uses uFrmMain;



procedure TfrmSurfaceProps.SetFlagValues(FlagsOn, FlagsOff: Integer);
var
    i: Integer;
    CheckBox: TCheckBox;
begin
    bUpdating := True;
    for i := 0 to tsSurfaceFlags.ControlCount - 1 do
    begin
        if tsSurfaceFlags.Controls[i] is TCheckBox then
        begin
            CheckBox := TCheckBox(tsSurfaceFlags.Controls[i]);
            if (FlagsOn and GetTagValue(CheckBox)) = (FlagsOff and GetTagValue(CheckBox)) then
                CheckBox.State := cbGrayed
            else if (FlagsOn and GetTagValue(CheckBox)) <> 0 then
                CheckBox.State := cbChecked
            else
                CheckBox.State := cbUnchecked;
        end;
    end;
    bUpdating := False;
end;

procedure TfrmSurfaceProps.PolyFlagsUpdate();
var
    OnFlags, OffFlags: Integer;
begin
    OnFlags := 0;
    OffFlags := 0;

    for var i := 0 to tsSurfaceFlags.ControlCount - 1 do
    begin
        if (tsSurfaceFlags.Controls[i] is TCheckBox) and (TCheckBox(tsSurfaceFlags.Controls[i]).State <> cbGrayed) then
        begin
            if TCheckBox(tsSurfaceFlags.Controls[i]).Checked then
                OnFlags := OnFlags + GetTagValue(TCheckBox(tsSurfaceFlags.Controls[i]))
            else
                OffFlags := OffFlags + GetTagValue(TCheckBox(tsSurfaceFlags.Controls[i]));
        end;
    end;

    var command_com := Format('POLY SET SETFLAGS=%d CLEARFLAGS=%d', [OnFlags, OffFlags]);
    ServerCmd(command_com);
end;

procedure TfrmSurfaceProps.GetSelectedPolys();
var
    OnFlags, OffFlags: Integer;
begin
    OnFlags := StrToIntDef(ServerGetProp('Polys', 'SelectedSetFlags'), 0);
    OffFlags := StrToIntDef(ServerGetProp('Polys', 'SelectedClearFlags'), 0);
    var NumSelected := NumSelectedPolys();

    // Установка флажков
    SetFlagValues(OnFlags, OffFlags);

    // Установка заголовка формы
    Caption := Format('Surface properties (%d selected)', [NumSelected]);

    // Stats
    mmoStats.Clear();
    mmoStats.Lines.Add('Static Lights:' + Chr(9) + ServerGetProp('Polys', 'StaticLights'));
    mmoStats.Lines.Add('Dynamic Lights:' + Chr(9) + ServerGetProp('Polys', 'DynamicLights'));
    mmoStats.Lines.Add('Meshels:' + Chr(9) + ServerGetProp('Polys', 'Meshels'));
    mmoStats.Lines.Add('MeshSize:' + Chr(9) + ServerGetProp('Polys', 'MeshSize'));

    // Enable/Disable controls
    frmMain.SetComponentsEnabled(tsSurfaceFlags, NumSelected > 0);
    frmMain.SetComponentsEnabled(tsAlign, NumSelected > 0);
    frmMain.SetComponentsEnabled(tsAlign2, NumSelected > 0);
    frmMain.SetComponentsEnabled(tsStats, NumSelected > 0);

    btnResetAll.Enabled := NumSelected > 0;

    chkHorizontalSkewClick(self);
    chkVerticalSkewClick(Self);
end;

function TfrmSurfaceProps.GetTagValue(CheckBox: TCheckBox): Integer;
begin
    Result := CheckBox.Tag;
end;

procedure TfrmSurfaceProps.pgc_SurfPropsChange(Sender: TObject);
begin
    lblHoldShift.Visible := pgc_SurfProps.ActivePageIndex = 1;
    LL_FlagsInfo.Visible := pgc_SurfProps.ActivePageIndex = 0;
end;

procedure TfrmSurfaceProps.btnCloseClick(Sender: TObject);
begin
    Close();
end;

procedure TfrmSurfaceProps.btnUnalignClick(Sender: TObject);
begin
    ServerCmd('POLY TEXPAN RESET');
end;

procedure TfrmSurfaceProps.chkHorizontalSkewClick(Sender: TObject);
begin
    frmMain.SetComponentsEnabled(pnlHSkew, chkHorizontalSkew.Checked);

    btnApplySkewing.Enabled := (chkHorizontalSkew.Checked = True) or (chkVerticalSkew.Checked = True) and (NumSelectedPolys() > 0);
end;

procedure TfrmSurfaceProps.chkVerticalSkewClick(Sender: TObject);
begin
    frmMain.SetComponentsEnabled(pnlVSkew, chkVerticalSkew.Checked);

    btnApplySkewing.Enabled := (chkVerticalSkew.Checked = True) or (chkHorizontalSkew.Checked = True) and (NumSelectedPolys() > 0);
end;

procedure TfrmSurfaceProps.FormShow(Sender: TObject);
begin
    pgc_SurfProps.ActivePageIndex := 0; // start from first page
    pgc_SurfPropsChange(self);
end;

procedure TfrmSurfaceProps.btnClearAllSurfFlagsClick(Sender: TObject);
begin
    bUpdating := True;

    for var i := 0 to tsSurfaceFlags.ControlCount - 1 do
    begin
        if tsSurfaceFlags.Controls[i] is TCheckBox then
            TCheckBox(tsSurfaceFlags.Controls[i]).State := cbUnchecked;
    end;

    bUpdating := False;
    PolyFlagsUpdate();
end;

procedure TfrmSurfaceProps.btnPanUClick(Sender: TObject);
begin
    var PanValue := (Sender as TButton).Tag;

    if GetKeyState(VK_SHIFT) < 0 then
        ServerCmd('POLY TEXPAN U=-' + IntToStr(PanValue))
    else
        ServerCmd('POLY TEXPAN U=' + IntToStr(PanValue))
end;

procedure TfrmSurfaceProps.btnPanVClick(Sender: TObject);
begin
    var PanValue := (Sender as TButton).Tag;

    if GetKeyState(VK_SHIFT) < 0 then
        ServerCmd('POLY TEXPAN V=-' + IntToStr(PanValue))
    else
        ServerCmd('POLY TEXPAN V=' + IntToStr(PanValue))
end;

procedure TfrmSurfaceProps.btnAlignWallColumnClick(Sender: TObject);
begin
    ServerCmd('POLY TEXALIGN WALLCOLUMN TEXELS=' + se_WallColumnTexels.Value.ToString);
end;

procedure TfrmSurfaceProps.btnAlignWallDirClick(Sender: TObject);
begin
    ServerCmd('POLY TEXALIGN WALLDIR');
end;

procedure TfrmSurfaceProps.btnAlignWallPanClick(Sender: TObject);
begin
    ServerCmd('POLY TEXALIGN WALLPAN');
end;

procedure TfrmSurfaceProps.btnApplySimpleScalingClick(Sender: TObject);
var
    Scale: Double;
    FormatSettings: TFormatSettings;
    InputText: string;
begin
    FormatSettings := TFormatSettings.Create; // Настраиваем форматирование для использования точки в качестве разделителя
    FormatSettings.DecimalSeparator := '.';

    InputText := Trim(cmbScale.Text);
    InputText := StringReplace(InputText, ',', '.', [rfReplaceAll]);     // Заменяем запятую на точку, если она присутствует

    if (InputText = '') or TryStrToFloat(InputText, Scale, FormatSettings) = False then
    begin
        MessageBox(Handle, PChar(strInvalidScale), PChar(strInvalidScaleTitle), MB_OK + MB_ICONSTOP + MB_TOPMOST);
        Exit;
    end;

    try
        Scale := StrToFloat(InputText, FormatSettings);
        uEditorLoader.ScaleTexture(Scale, Scale, chkRelativeScaling.Checked);
    except
        on E: EConvertError do
        MessageBox(Handle, PChar(strInvalidScale), PChar(strInvalidScaleTitle), MB_OK + MB_ICONSTOP + MB_TOPMOST);
    end;
end;

procedure TfrmSurfaceProps.btnApplySkewingClick(Sender: TObject);
begin
    var SkewCommand: string;

    if (chkHorizontalSkew.Checked = True) and (chkVerticalSkew.Checked = False) then
    begin
        SkewCommand := uEditorLoader.GenerateHorzTexSkew(se_HRise.Value, se_HRun.Value, se_HScale.Value, chkHNegate.Checked)
    end
    else if (chkVerticalSkew.Checked = True) and (chkHorizontalSkew.Checked = False) then
    begin
        SkewCommand := uEditorLoader.GenerateVertTexSkew(se_VRise.Value, se_VRun.Value, se_VScale.Value, chkVNegate.Checked)
    end
    else if (chkHorizontalSkew.Checked = True and chkVerticalSkew.Checked = True) then
    begin
        SkewCommand := GenerateHVTexSkew(se_HRise.Value, se_HRun.Value, se_HScale.Value, chkHNegate.Checked,
                                         se_VRise.Value, se_VRun.Value, se_VScale.Value, chkVNegate.Checked);
    end;

    ServerCmd(SkewCommand);
end;

procedure TfrmSurfaceProps.btnApplyViewportRatioClick(Sender: TObject);
begin
    if GetKeyState(VK_SHIFT) < 0 then
        uEditorLoader.RotateTexture(-se_CustomAngle.Value)
    else
        uEditorLoader.RotateTexture(se_CustomAngle.Value);
end;

procedure TfrmSurfaceProps.btnApply_UV_ScalingClick(Sender: TObject);
begin
    var ScaleUU := se_UUScale.Value;
    var ScaleVV := se_VVScale.Value;

    uEditorLoader.ScaleTexture(ScaleUU, ScaleVV, chkRelativeScaling.Checked);
end;

procedure TfrmSurfaceProps.btnBigDiagonalClick(Sender: TObject);
begin
    ServerCmd('POLY TEXMULT UU=0.5 VV=0.5 UV=-0.5 VU=0.5');
end;

procedure TfrmSurfaceProps.btnFlipUClick(Sender: TObject);
begin
    ServerCmd('POLY TEXMULT UU=-1 VV=1');
end;

procedure TfrmSurfaceProps.btnFlipVClick(Sender: TObject);
begin
    ServerCmd('POLY TEXMULT UU=1 VV=-1');
end;

procedure TfrmSurfaceProps.btnResetAllClick(Sender: TObject);
begin
    ServerCmd('POLY TEXPAN RESET');
    ServerCmd('POLY TEXSCALE');
    ServerCmd('POLY TEXALIGN DEFAULT');
end;

procedure TfrmSurfaceProps.btnRotate0_5Click(Sender: TObject);
begin
    if GetKeyState(VK_SHIFT) < 0 then
        uEditorLoader.RotateTexture(-0.5)
    else
        uEditorLoader.RotateTexture(0.5);
end;

procedure TfrmSurfaceProps.btnRotate11_25Click(Sender: TObject);
begin
    if GetKeyState(VK_SHIFT) < 0 then
        uEditorLoader.RotateTexture(-11.25)
    else
        uEditorLoader.RotateTexture(11.25);
end;

procedure TfrmSurfaceProps.btnRotate180Click(Sender: TObject);
begin
    if GetKeyState(VK_SHIFT) < 0 then
        uEditorLoader.RotateTexture(-180.0)
    else
        uEditorLoader.RotateTexture(180);
end;

procedure TfrmSurfaceProps.btnRotate1Click(Sender: TObject);
begin
    if GetKeyState(VK_SHIFT) < 0 then
        uEditorLoader.RotateTexture(-1.0)
    else
        uEditorLoader.RotateTexture(1.0);
end;

procedure TfrmSurfaceProps.btnRotate22_5Click(Sender: TObject);
begin
    if GetKeyState(VK_SHIFT) < 0 then
        uEditorLoader.RotateTexture(-22.5)
    else
        uEditorLoader.RotateTexture(22.5);
end;

procedure TfrmSurfaceProps.btnRotate45Click(Sender: TObject);
begin
    if GetKeyState(VK_SHIFT) < 0 then
        uEditorLoader.RotateTexture(-45.0)
    else
        uEditorLoader.RotateTexture(45.0);
end;

procedure TfrmSurfaceProps.btnRotate90Click(Sender: TObject);
begin
    if GetKeyState(VK_SHIFT) < 0 then
        uEditorLoader.RotateTexture(-90.0)
    else
        uEditorLoader.RotateTexture(90.0);
end;

procedure TfrmSurfaceProps.btnSmallDiagonalClick(Sender: TObject);
begin
    ServerCmd('POLY TEXMULT UU=1 VV=1 UV=-1 VU=1');
end;

procedure TfrmSurfaceProps.PolyFlagsClick(Sender: TObject);
begin
    if bUpdating = False then
        PolyFlagsUpdate();
end;


end.
