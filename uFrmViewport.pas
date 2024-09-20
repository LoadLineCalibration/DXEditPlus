unit uFrmViewport;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, ES.BaseControls, ES.Layouts, Vcl.ExtCtrls,
  Vcl.Buttons, System.ImageList, Vcl.ImgList, uEditorTypes, uEditorLoader, Engine.UnCamera, Vcl.Menus,
  uEditor.Strings;

type
  TfrmViewport = class(TForm)
    ViewportHeader: TEsPanel;
    ViewportContainer: TEsPanel;
    sbTop: TSpeedButton;
    ImageList1: TImageList;
    sbFront: TSpeedButton;
    sbSide: TSpeedButton;
    sbBSPCuts: TSpeedButton;
    sbTextureUsage: TSpeedButton;
    sbWireframe: TSpeedButton;
    sbTextured: TSpeedButton;
    sbDynLight: TSpeedButton;
    sbZonePortal: TSpeedButton;
    sbMaxMinVP: TSpeedButton;
    sbRealtime: TSpeedButton;
    pm_SkyLink: TPopupMenu;
    sbLightingOnly: TSpeedButton;
    ImageList2: TImageList;
    sbLinkSkybox: TSpeedButton;
    SKYLINK1: TMenuItem;
    SKYUNLINK1: TMenuItem;

    // new procedures
    procedure DrawCustomBorder();
    procedure SetRenderingMode(NewMode: LongInt; Flags: LongInt);

    // new functions
    function IsViewportActive(): Boolean;

    procedure FormShow(Sender: TObject);
    procedure switchRenderModeClick(Sender: TObject);
    procedure sbMaxMinVPClick(Sender: TObject);
    procedure SKYLINK1Click(Sender: TObject);
    procedure SKYUNLINK1Click(Sender: TObject);
    procedure sbLinkSkyboxClick(Sender: TObject);
    procedure sbRealtimeClick(Sender: TObject);
  private
    { Private declarations }
  protected
//    procedure WndProc(var Msg: TMessage); override;
  public
    var ViewportFlags: LongInt;
    var ViewportMode: LongInt;
    //hwndTarget: HWND;
    { Public declarations }
  end;

var
  frmViewport: TfrmViewport;


implementation


{$R *.dfm}

uses uFrmMain;


function TfrmViewport.IsViewportActive(): Boolean;
begin
    var CurrentActiveWindow := GetForegroundWindow();
    var bMatch := CurrentActiveWindow = Tag;  // совпадение означает что окно активно

    if bMatch = true then
       frmMain.LastActiveViewport := Tag;

    // Возвращаем True, если окно активно или LastActiveViewport не равен 0
    Result := bMatch or (frmMain.LastActiveViewport = Tag);
end;

procedure TfrmViewport.DrawCustomBorder();
var
    DC: HDC;
    R: TRect;
    Brush: HBRUSH;
    OldBrush: HBRUSH;
begin
    DC := GetWindowDC(Handle);

    try
        // Получаем координаты окна и смещаем их в контекст клиента
        GetWindowRect(Handle, R);
        OffsetRect(R, -R.Left, -R.Top);

        // Выбираем цвет рамки в зависимости от активности окна
        if IsViewportActive() = True then
        begin
            var ActiveColor := RGB(255, 255, 255);
            Brush := CreateSolidBrush(ActiveColor);  // Яркая рамка для активного окна
            Color := ActiveColor;
        end
        else
        begin
            var InactiveColor := RGB(0, 0, 0);
            Brush := CreateSolidBrush(InactiveColor); // Чёрная рамка для неактивного окна
            Color := InactiveColor;
        end;

        // Сохраняем текущую кисть и рисуем рамку
        OldBrush := SelectObject(DC, Brush);
        try
            FrameRect(DC, R, Brush);
        finally
            SelectObject(DC, OldBrush); // Восстанавливаем оригинальную кисть
        end;

        // Обновляем только рамку без полной перерисовки окна
        InvalidateRect(Handle, @R, False);
    finally
        // Освобождаем ресурсы
        ReleaseDC(Handle, DC);
        DeleteObject(Brush);
    end;
end;

procedure TfrmViewport.FormShow(Sender: TObject);
var
    Style: LongInt;
begin
    Style := GetWindowLong(Handle, GWL_STYLE);
    Style := Style and not (WS_CAPTION or WS_SYSMENU or WS_MINIMIZEBOX or WS_MAXIMIZEBOX or WS_SIZEBOX);
    SetWindowLong(Handle, GWL_STYLE, Style);
    SetWindowPos(Handle, 0, 0, 0, 0, 0, SWP_NOMOVE or SWP_NOSIZE or SWP_NOZORDER or SWP_FRAMECHANGED);
end;

procedure TfrmViewport.sbLinkSkyboxClick(Sender: TObject);
begin
    pm_SkyLink.Popup(sbLinkSkybox.ClientToScreen(Point(0, sbLinkSkybox.Height)).X,
                     sbLinkSkybox.ClientToScreen(Point(0, sbLinkSkybox.Height)).Y);
end;

procedure TfrmViewport.sbMaxMinVPClick(Sender: TObject);
begin
    case sbMaxMinVP.Down of
        True:
        begin
            sbMaxMinVP.Caption := '2'; // Marlett font
            var VP_id := (Sender as TSpeedButton).HelpContext;
            frmMain.FitViewportsToWindow(VP_id);
            frmMain.OpenCameras(True);
        end;

        False:
        begin
            sbMaxMinVP.Caption := '1';
            frmMain.FitViewportsToWindow(-1);
            frmMain.CurrentExpandedViewport := -1;
            frmMain.OpenCameras(True);
        end;
    end;
end;

procedure TfrmViewport.sbRealtimeClick(Sender: TObject);
begin
    case sbRealtime.Down of
        True: begin
            ViewportFlags := ViewportFlags or SHOW_RealTime;
            SetRenderingMode(ViewportMode, ViewportFlags);
        end;

        False: begin
            ViewportFlags := ViewportFlags and not SHOW_RealTime;
            SetRenderingMode(ViewportMode, ViewportFlags);
        end;
    end;
end;

procedure TfrmViewport.switchRenderModeClick(Sender: TObject);
begin
    case (Sender as TSpeedButton).Tag of
        REN_ORTHXY:       SetRenderingMode(REN_ORTHXY, SHOW_Regular_Mode);
        REN_ORTHXZ:       SetRenderingMode(REN_ORTHXZ, SHOW_Regular_Mode);
        REN_ORTHYZ:       SetRenderingMode(REN_ORTHYZ, SHOW_Regular_Mode);

        REN_WIRE:         SetRenderingMode(REN_WIRE, SHOW_Regular_Mode);
        REN_POLYS:        SetRenderingMode(REN_POLYS, SHOW_Regular_Mode);
        REN_POLYCUTS:     SetRenderingMode(REN_POLYCUTS, SHOW_Regular_Mode);
        REN_PLAINTEX:     SetRenderingMode(REN_PLAINTEX, SHOW_Regular_Mode);
        REN_DYNLIGHT:     SetRenderingMode(REN_DYNLIGHT, SHOW_Regular_Mode);
        REN_ZONES:        SetRenderingMode(REN_ZONES, SHOW_Regular_Mode);
        REN_LightingOnly: SetRenderingMode(REN_LightingOnly, SHOW_Regular_Mode);
    end;

    ServerCmd('LEVEL REDRAW');
end;

procedure TfrmViewport.SetRenderingMode(NewMode: LongInt; Flags: LongInt);
var
    ViewportModeText: string;
begin
    case NewMode of
        REN_ORTHXY: ViewportModeText := strTop;
        REN_ORTHXZ: ViewportModeText := strFront;
        REN_ORTHYZ: ViewportModeText := strSide;

        REN_WIRE:   ViewportModeText := strWireframe;
        REN_POLYS:  ViewportModeText := strTextureUsage;
        REN_POLYCUTS: ViewportModeText := strBSPCuts;
        REN_PLAINTEX: ViewportModeText := strTextured;
        REN_DYNLIGHT: ViewportModeText := strDynLight;
        REN_ZONES:  ViewportModeText := strZonesPortals;
        REN_LightingOnly: ViewportModeText := strLightingOnly;
    end;

    frmMain.OpenCamera(False, ViewportContainer.Handle, 0, 0,
                       Width, Height, Flags, NewMode, Caption);

    ViewportFlags := Flags;  // save mode and flags here
    ViewportMode  := NewMode;

    ViewportHeader.Caption := ViewportModeText + ' Flags:' + ViewportFlags.ToString + ' Mode:' + ViewportMode.ToString;
end;

procedure TfrmViewport.SKYLINK1Click(Sender: TObject);
begin
    ServerCmd('SKY LINK');
end;

procedure TfrmViewport.SKYUNLINK1Click(Sender: TObject);
begin
    ServerCmd('SKY UNLINK');
end;

end.
