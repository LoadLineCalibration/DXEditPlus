unit uFrmSurfaceProps;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ComCtrls, uEditorLoader, uEditor.Strings,
  ES.Labels, Vcl.ExtCtrls, Vcl.Mask, JvExMask, JvSpin;

type
  TfrmSurfaceProps = class(TForm)
    PageControl1: TPageControl;
    tsSurfaceFlags: TTabSheet;
    TabSheet2: TTabSheet;
    TabSheet3: TTabSheet;
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
    GroupBox2: TGroupBox;
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
    Label3: TLabel;
    btnSmallDiagonal: TButton;
    btnBigDiagonal: TButton;
    btnFlipU: TButton;
    btnFlipV: TButton;
    se_CustomAngle: TJvSpinEdit;
    btnApplyViewportRatio: TButton;
    chkRelativeScaling: TCheckBox;
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
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmSurfaceProps: TfrmSurfaceProps;

implementation

{$R *.dfm}

procedure TfrmSurfaceProps.btnCloseClick(Sender: TObject);
begin
    Close();
end;

procedure TfrmSurfaceProps.btnUnalignClick(Sender: TObject);
begin
    ServerCmd('POLY TEXPAN RESET');
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


end.
