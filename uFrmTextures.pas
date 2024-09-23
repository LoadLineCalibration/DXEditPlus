unit uFrmTextures;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, ES.BaseControls, ES.Layouts, Vcl.Menus, Vcl.StdCtrls,
  uEditorLoader, uEditor.Strings, uEditorTypes, Engine.UnCamera, Vcl.ComCtrls, Vcl.ToolWin, System.ImageList,
  Vcl.ImgList, Vcl.Clipbrd, Winapi.ShellAPI;

type
  TfrmTextures = class(TForm)
    TextureBrowserPanel: TEsPanel;
    EsPanel2: TEsPanel;
    mnuTextureBrowser: TMainMenu;
    EsPanel3: TEsPanel;
    cmbPackages: TComboBox;
    cmbGroups: TComboBox;
    TexScrollbar: TScrollBar;
    TextureBrowser: TEsPanel;
    TexturePopup: TPopupMenu;
    mnuTextureProperties: TMenuItem;
    N1: TMenuItem;
    Apply1: TMenuItem;
    Export1: TMenuItem;
    Delete1: TMenuItem;
    N2: TMenuItem;
    Copynametoclipboard1: TMenuItem;
    RemovefromlevelTEXTURECULL1: TMenuItem;
    File1: TMenuItem;
    File2: TMenuItem;
    Open1: TMenuItem;
    SaveAs1: TMenuItem;
    N3: TMenuItem;
    View1: TMenuItem;
    View2: TMenuItem;
    texSize32: TMenuItem;
    texSize64: TMenuItem;
    texSize128: TMenuItem;
    texSize256: TMenuItem;
    texSize512: TMenuItem;
    ToolBar1: TToolBar;
    tbOpenUTX: TToolButton;
    ImageList1: TImageList;
    tbSaveUTX_As: TToolButton;
    ToolButton5: TToolButton;
    tbLoadEntirePackage: TToolButton;
    ToolButton8: TToolButton;
    Label1: TLabel;
    ToolButton1: TToolButton;
    tbTextureProperties: TToolButton;
    tbRealTimePreview: TToolButton;
    Recentfiles1: TMenuItem;
    RecentUtx0: TMenuItem;
    RecentUtx1: TMenuItem;
    RecentUtx2: TMenuItem;
    RecentUtx3: TMenuItem;
    RecentUtx4: TMenuItem;
    RecentUtx5: TMenuItem;
    RecentUtx6: TMenuItem;
    RecentUtx7: TMenuItem;
    RecentUtx8: TMenuItem;
    RecentUtx9: TMenuItem;
    ToolButton2: TToolButton;
    tbTexturesOnlineSearch: TToolButton;
    btnPrevTexGroup: TButton;
    btnNextTexGroup: TButton;
    btnPrevPackage: TButton;
    btnNextPackage: TButton;

    procedure UpdateBrowserCamera(Cmd: string);
    procedure RefreshTextureSet(PackageName: string; GroupName: string);

    function GetCurrentTextureFull(): string; // full name, with package and group (if any);
    function GetCurrentTexture(): string; // only name, no package
    function GetCurrentTextureSet(): string;
    function GetCurrentTextureGroup(): string;

    procedure cmbPackagesChange(Sender: TObject);
    procedure FormMouseWheel(Sender: TObject; Shift: TShiftState; WheelDelta: Integer; MousePos: TPoint; var Handled: Boolean);
    procedure cmbGroupsChange(Sender: TObject);
    procedure TexScrollbarChange(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure TexturePopupPopup(Sender: TObject);
    procedure texSize512Click(Sender: TObject);
    procedure tbLoadEntirePackageClick(Sender: TObject);
    procedure FormResize(Sender: TObject);
    procedure File2Click(Sender: TObject);
    procedure Copynametoclipboard1Click(Sender: TObject);
    procedure mnuTexturePropertiesClick(Sender: TObject);
    procedure tbRealTimePreviewClick(Sender: TObject);
    procedure tbTexturesOnlineSearchClick(Sender: TObject);
    procedure btnPrevPackageClick(Sender: TObject);
    procedure btnNextPackageClick(Sender: TObject);
    procedure btnPrevTexGroupClick(Sender: TObject);
    procedure btnNextTexGroupClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmTextures: TfrmTextures;
  bRefreshing: Boolean;
  OrigSet: string;
  OrigTexture: string;

implementation

{$R *.dfm}

uses uFrmNewTexture, uFrmTextureProperties;


procedure TfrmTextures.cmbGroupsChange(Sender: TObject);
begin
    UpdateBrowserCamera('UPDATE');
end;

procedure TfrmTextures.cmbPackagesChange(Sender: TObject);
begin
    if bRefreshing = False then
    begin
        TexScrollBar.Position := 0;
        RefreshTextureSet(cmbPackages.Items[cmbPackages.ItemIndex], cmbGroups.Items[cmbGroups.ItemIndex]);
    end;
end;

procedure TfrmTextures.Copynametoclipboard1Click(Sender: TObject);
begin
    Clipboard.AsText := GetCurrentTextureFull();
end;

procedure TfrmTextures.File2Click(Sender: TObject);
begin
    frmNewTexture.ShowModal();
end;

procedure TfrmTextures.FormCreate(Sender: TObject);
begin
    RefreshTextureSet('','');
    if cmbPackages.Items.Count > 1 then
        cmbPackages.ItemIndex := 1;

    cmbPackagesChange(cmbPackages);
end;

procedure TfrmTextures.FormMouseWheel(Sender: TObject; Shift: TShiftState; WheelDelta: Integer; MousePos: TPoint; var Handled: Boolean);
begin
    if WheelDelta > 1 then
    begin
        TexScrollbar.Position := TexScrollbar.Position - 45;
        UpdateBrowserCamera('UPDATE');
        Handled := True;
    end else
    begin
        TexScrollbar.Position := TexScrollbar.Position + 45;
        UpdateBrowserCamera('UPDATE');
        Handled := True;
    end;
end;

procedure TfrmTextures.FormResize(Sender: TObject);
begin
    var ViewPortHandle := FindWindowEx(TextureBrowser.Handle, 0, 'DXEditPlusUnrealWOpenGLWindowsViewportWindow', nil);

    if ViewPortHandle <> 0 then
        SetWindowPos(ViewPortHandle, 0, TextureBrowser.Left, TextureBrowser.Top, TextureBrowser.Width, TextureBrowser.Height,
                     SWP_NOZORDER or SWP_NOACTIVATE);
end;

procedure TfrmTextures.FormShow(Sender: TObject);
begin
    UpdateBrowserCamera('OPEN');
    RefreshTextureSet('','');
end;

function TfrmTextures.GetCurrentTexture(): string;
begin
    Result := ServerGetProp('ED', 'CURTEX');
end;

function TfrmTextures.GetCurrentTextureFull(): string;
begin
    Result := ServerGetProp('Texture', 'CurrentTexture');
end;

function TfrmTextures.GetCurrentTextureGroup(): string;
begin
    if cmbGroups.ItemIndex < 0 then
        Result := ''
    else if cmbGroups.Items[cmbGroups.ItemIndex] = NoneString then
        Result := ''
    else
        Result := Trim(cmbGroups.Items[cmbGroups.ItemIndex]);
end;

function TfrmTextures.GetCurrentTextureSet(): string;
begin
    if cmbPackages.ItemIndex < 0 then
        Result := ''
    else if cmbPackages.Items[cmbPackages.ItemIndex] = NoneString then
        Result := ''
    else
        Result := Trim(cmbPackages.Items[cmbPackages.ItemIndex]);
end;

procedure TfrmTextures.mnuTexturePropertiesClick(Sender: TObject);
begin
    var Tex := GetCurrentTextureFull();

    ServerCmd('HOOK TEXTUREPROPERTIES TEXTURE=' + Tex);
    frmTextureProperties.SetTexture(Tex);
end;

procedure TfrmTextures.TexScrollbarChange(Sender: TObject);
begin
    UpdateBrowserCamera('UPDATE');
    cmbPackages.SetFocus();
end;

procedure TfrmTextures.texSize512Click(Sender: TObject);
begin
    (Sender as TMenuItem).Checked := True;

    UpdateBrowserCamera('UPDATE');
end;

procedure TfrmTextures.TexturePopupPopup(Sender: TObject);
begin
    mnuTextureProperties.Caption := 'Edit ' + GetCurrentTextureFull() + ' properties...';
end;

procedure TfrmTextures.tbLoadEntirePackageClick(Sender: TObject);
begin
    ServerCmd('OBJ LOAD FILE=' + cmbPackages.Items[cmbPackages.ItemIndex]);
    RefreshTextureSet(cmbPackages.Items[cmbPackages.ItemIndex], '');
end;

procedure TfrmTextures.tbRealTimePreviewClick(Sender: TObject);
begin
    UpdateBrowserCamera('UPDATE');
end;

procedure TfrmTextures.tbTexturesOnlineSearchClick(Sender: TObject);
begin
    if MessageBox(0,
        'Are you sure you want to open the webpage to search for textures?',
        'Question', MB_YESNO + MB_ICONQUESTION + MB_TOPMOST) = IDYES then
    begin
        ShellExecute(0, 'open', 'https://dxgalaxy.org/docs/reference/textures/', nil, nil, SW_SHOWNORMAL);
    end;
end;

procedure TfrmTextures.UpdateBrowserCamera(Cmd: string);
var
    Temp: Integer;
    S: string;
begin
    var Size := 0;
    var Flags: LongInt;

    case tbRealTimePreview.Down of
        True:  Flags := SHOW_NORMAL + SHOW_ChildWindow + SHOW_NOBUTTONS + SHOW_RealTime;
        False: Flags := SHOW_NORMAL + SHOW_ChildWindow + SHOW_NOBUTTONS;
    end;

    if texSize32.Checked = true then
        Size := 32
    else if texSize64.Checked = True then
        Size := 64
    else if texSize128.Checked = True then
        Size := 128
    else if texSize256.Checked = True then
        Size := 256
    else if texSize512.Checked = True then
        Size := 512;

        ServerCmd('CAMERA ' + Cmd + ' X=0 Y=0' +
            ' XR=' + IntToStr(TextureBrowser.Width) +
            ' YR=' + IntToStr(TextureBrowser.Height) +
            ' FLAGS=' + IntToStr(Flags) +
            ' HWND=' + IntToStr(TextureBrowser.Handle) +
            ' MISC1=' + IntToStr(Size) +
            ' MISC2=' + IntToStr(TexScrollBar.Position) +
            ' REN=' + IntToStr(REN_TEXBROWSER) +
            ' NAME=BrowserCam' +
            ' PACKAGE=' + AnsiQuotedStr(cmbPackages.Items[cmbPackages.ItemIndex], '"') +
            ' GROUP=' + AnsiQuotedStr(cmbGroups.Items[cmbGroups.ItemIndex], '"'));

        S := ServerGetProp('ED', 'LASTSCROLL');
        Temp := StrToIntDef(S, 0);

        if Temp <= 32767 then
            TexScrollBar.Max := Temp
        else
            TexScrollBar.Max := 32767;

        TexScrollBar.LargeChange := 512;
        TexScrollBar.SmallChange := 64;
        TexScrollBar.Visible := True;
end;

procedure TfrmTextures.RefreshTextureSet(PackageName: string; GroupName: string);
var
    All: string;
    i: Integer;
begin
    bRefreshing := True;
    if PackageName <> '' then
        OrigSet := PackageName
    else if cmbPackages.ItemIndex >= 0 then
        OrigSet := cmbPackages.Items[cmbPackages.ItemIndex]
    else
        OrigSet := '';

    All := ServerGetProp('Obj', 'Packages Class=Texture');
    cmbPackages.Items.Clear;
    cmbPackages.Items.Add(AllString);
    cmbPackages.ItemIndex := 0;
    while All <> '' do
        cmbPackages.Items.Add(ExtractCommaString(All));
    for i := 0 to cmbPackages.Items.Count - 1 do
        if cmbPackages.Items[i] = OrigSet then
            cmbPackages.ItemIndex := i;

    cmbGroups.Clear;
    if cmbPackages.ItemIndex >= 0 then
    begin
        cmbGroups.Items.Add(AllString);
        cmbGroups.ItemIndex := 0;
        All := ServerGetProp('Obj', 'Groups Class=Texture Package=' + cmbPackages.Items[cmbPackages.ItemIndex]);
        while All <> '' do
            cmbGroups.Items.Add(ExtractCommaString(All));
        for i := 0 to cmbGroups.Items.Count - 1 do
            if cmbGroups.Items[i] = GroupName then
                cmbGroups.ItemIndex := i;
    end;

    UpdateBrowserCamera('UPDATE');
    bRefreshing := False;
end;

procedure TfrmTextures.btnNextPackageClick(Sender: TObject);
begin
    if cmbPackages.ItemIndex = cmbPackages.Items.Count - 1 then
        cmbPackages.ItemIndex := 0
    else
        cmbPackages.ItemIndex := cmbPackages.ItemIndex + 1;

    cmbPackagesChange(self);
end;

procedure TfrmTextures.btnPrevPackageClick(Sender: TObject);
begin
    if cmbPackages.ItemIndex = 0 then
        cmbPackages.ItemIndex := cmbPackages.Items.Count - 1
    else
        cmbPackages.ItemIndex := cmbPackages.ItemIndex - 1;

    cmbPackagesChange(self);
end;

procedure TfrmTextures.btnNextTexGroupClick(Sender: TObject);
begin
    if cmbGroups.ItemIndex = cmbGroups.Items.Count - 1 then
        cmbGroups.ItemIndex := 0
    else
        cmbGroups.ItemIndex := cmbGroups.ItemIndex + 1;

    cmbGroupsChange(self);
end;


procedure TfrmTextures.btnPrevTexGroupClick(Sender: TObject);
begin
    if cmbGroups.ItemIndex = 0 then
        cmbGroups.ItemIndex := cmbGroups.Items.Count - 1
    else
        cmbGroups.ItemIndex := cmbGroups.ItemIndex - 1;

    cmbGroupsChange(self);
end;

end.
