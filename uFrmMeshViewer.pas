unit uFrmMeshViewer;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, ES.BaseControls, ES.Layouts, Vcl.ExtCtrls,
  uEditorLoader, System.StrUtils, uEditorTypes, Engine.UnCamera;

type
  TfrmMeshViewer = class(TForm)
    MeshViewport: TEsPanel;
    GroupBox1: TGroupBox;
    cmbMeshes: TComboBox;
    Label1: TLabel;
    lbAnimSeq: TListBox;
    btnPrevMesh: TButton;
    btnNextMesh: TButton;
    GroupBox2: TGroupBox;
    rbTexturedMesh: TRadioButton;
    rbPolygons: TRadioButton;
    chkAutoDolly: TCheckBox;
    btnPlayAnim: TButton;
    lblFrame: TLabel;
    btnZeroFrameAnim: TButton;
    btnNextAnimFlame: TButton;
    btnPrevAnimFlame: TButton;
    btnRefresh: TButton;
    rbWireframe: TRadioButton;
    chkGrayMeshBG: TCheckBox;
    cmbPackages: TComboBox;
    btnNextPackage: TButton;
    btnPrevPackage: TButton;

    // New procedures
    procedure UpdatePackageList(cmd: string);
    procedure UpdateMeshList(Cmd: string);
    procedure UpdateFrameList(Cmd: string);
    procedure UpdateFrame(Cmd: string);
    procedure UpdateFrameCaption(Cmd: string);


    procedure FormShow(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure MeshViewportResize(Sender: TObject);
    procedure cmbMeshesChange(Sender: TObject);
    procedure lbAnimSeqDrawItem(Control: TWinControl; Index: Integer; Rect: TRect; State: TOwnerDrawState);
    procedure btnRefreshClick(Sender: TObject);
    procedure lbAnimSeqClick(Sender: TObject);
    procedure btnNextMeshClick(Sender: TObject);
    procedure btnPrevMeshClick(Sender: TObject);
    procedure ChangeViewClick(Sender: TObject);
    procedure btnZeroFrameAnimClick(Sender: TObject);
    procedure btnPrevAnimFlameClick(Sender: TObject);
    procedure btnNextAnimFlameClick(Sender: TObject);
    procedure btnPlayAnimClick(Sender: TObject);
    procedure chkGrayMeshBGClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure cmbPackagesChange(Sender: TObject);
    procedure btnNextPackageClick(Sender: TObject);
    procedure btnPrevPackageClick(Sender: TObject);
  private
    { Private declarations }
  public
    var CurrentMesh: string;
    { Public declarations }
  end;

var
  frmMeshViewer: TfrmMeshViewer;
  FramePos: Integer;
  NumFrames: Integer;
  bPlaying: Boolean;


implementation

{$R *.dfm}

procedure TfrmMeshViewer.UpdatePackageList(cmd: string);
begin
    cmbPackages.Clear();

    var PackList:= ServerGetProp('OBJ', 'PACKAGES CLASS=Mesh');
    while PackList <> '' do
        cmbPackages.Items.Add(ExtractCommaString(PackList));

    if cmbPackages.Items.Count > 0 then
    begin
        cmbPackages.ItemIndex := 0;
        UpdateMeshList(cmd);
    end;
end;

procedure TfrmMeshViewer.UpdateMeshList(Cmd: string);
begin
    cmbMeshes.Clear();

    var ItemIdx:= cmbPackages.ItemIndex;
    var MeshList:= ServerGetProp('OBJ', 'QUERY TYPE=Mesh PACKAGE=' + cmbPackages.Items[ItemIdx]);
    while MeshList <> '' do
        cmbMeshes.Items.Add(ExtractString(MeshList));

    if cmbMeshes.Items.Count > 0 then
    begin
        cmbMeshes.ItemIndex := 0;
        UpdateFrameList(Cmd);
    end;
end;

procedure TfrmMeshViewer.UpdateFrameList(Cmd: string);
var
  i, N: Integer;
  S: string;
begin
    lbAnimSeq.Clear();

    if cmbMeshes.ItemIndex >= 0 then
    begin
        N := StrToIntDef(ServerGetProp('MESH', 'NUMANIMSEQS' + ' NAME=' + AnsiQuotedStr(cmbMeshes.Items[cmbMeshes.ItemIndex], '"' )), 0);

        for i := 0 to N - 1 do
        begin
            S := Trim(ServerGetProp('MESH', 'ANIMSEQ' + ' NAME=' + AnsiQuotedStr(cmbMeshes.Items[cmbMeshes.ItemIndex], '"') + ' NUM=' + Trim(IntToStr(i))));
            if S <> '' then
                lbAnimSeq.Items.Add(S);
        end;
        if lbAnimSeq.Count > 0 then
            lbAnimSeq.ItemIndex := 0;
    end;

    UpdateFrame(Cmd);
end;

procedure TfrmMeshViewer.btnNextMeshClick(Sender: TObject);
begin
    if cmbMeshes.ItemIndex >= 0 then
    begin
        if cmbMeshes.ItemIndex + 1 < cmbMeshes.Items.Count then
            cmbMeshes.ItemIndex := cmbMeshes.ItemIndex + 1
        else
            cmbMeshes.ItemIndex := 0;

        cmbMeshesChange(self);
    end;
end;

procedure TfrmMeshViewer.btnNextPackageClick(Sender: TObject);
begin
    if cmbPackages.ItemIndex = cmbPackages.Items.Count - 1 then
        cmbPackages.ItemIndex := 0
    else
        cmbPackages.ItemIndex := cmbPackages.ItemIndex + 1;

    cmbPackagesChange(self);
end;

procedure TfrmMeshViewer.btnNextAnimFlameClick(Sender: TObject);
begin
    Inc(FramePos);

    if FramePos >= NumFrames then
        FramePos := 0;

    UpdateFrameCaption('Update');
end;

procedure TfrmMeshViewer.btnPlayAnimClick(Sender: TObject);
begin
    if bPlaying = True then
    begin
        btnPlayAnim.Caption := 'Play >>';
        btnZeroFrameAnim.Enabled := True;
        btnPrevAnimFlame.Enabled := True;
        btnNextAnimFlame.Enabled := True;
        bPlaying := False;
    end
    else
    begin
        btnPlayAnim.Caption := 'Stop';
        btnZeroFrameAnim.Enabled := False;
        btnPrevAnimFlame.Enabled := False;
        btnNextAnimFlame.Enabled := False;
        bPlaying := True;
    end;

    UpdateFrameCaption('Update');
end;

procedure TfrmMeshViewer.btnPrevAnimFlameClick(Sender: TObject);
begin
    Dec(FramePos);

    if FramePos < 0 then
        FramePos := NumFrames - 1;

    if FramePos < 0 then
        FramePos := 0;

    UpdateFrameCaption('Update');
end;

procedure TfrmMeshViewer.btnPrevMeshClick(Sender: TObject);
begin
    if cmbMeshes.ItemIndex >= 0 then
    begin
        if cmbMeshes.ItemIndex > 0 then
            cmbMeshes.ItemIndex := cmbMeshes.ItemIndex - 1
        else if cmbMeshes.Items.Count > 0 then
            cmbMeshes.ItemIndex := cmbMeshes.Items.Count - 1;

        cmbMeshesChange(self);
    end;
end;

procedure TfrmMeshViewer.btnPrevPackageClick(Sender: TObject);
begin
    if cmbPackages.ItemIndex = 0 then
        cmbPackages.ItemIndex := cmbPackages.Items.Count - 1
    else
        cmbPackages.ItemIndex := cmbPackages.ItemIndex - 1;

    cmbPackagesChange(self);
end;

procedure TfrmMeshViewer.btnRefreshClick(Sender: TObject);
begin
    UpdatePackageList('Update')
end;

procedure TfrmMeshViewer.btnZeroFrameAnimClick(Sender: TObject);
begin
    FramePos := 0;
    UpdateFrameCaption('Update');
end;

procedure TfrmMeshViewer.ChangeViewClick(Sender: TObject);
begin
    UpdateFrameCaption('Update');
end;

procedure TfrmMeshViewer.chkGrayMeshBGClick(Sender: TObject);
begin
    case chkGrayMeshBG.Checked of
        True:  ServerCmd('set editorengine C_WireBackground (R=96,G=96,B=96)');
        False: ServerCmd('set editorengine C_WireBackground (R=0,G=0,B=0)'); // Reset background color back to default
    end;

    UpdateFrameCaption('Update');
end;

procedure TfrmMeshViewer.cmbMeshesChange(Sender: TObject);
begin
    UpdateFrameList('Update');

    if cmbMeshes.ItemIndex <> -1 then
        CurrentMesh := cmbMeshes.Items[cmbMeshes.ItemIndex]
    else
        CurrentMesh := '';
end;

procedure TfrmMeshViewer.cmbPackagesChange(Sender: TObject);
begin
    UpdateMeshList('Update');
end;

procedure TfrmMeshViewer.FormClose(Sender: TObject; var Action: TCloseAction);
begin
    if bPlaying = True then
        btnPlayAnimClick(self);

    ServerCmd('CAMERA CLOSE NAME=MeshViewCam');
    ServerCmd('set editorengine C_WireBackground (R=0,G=0,B=0)'); // Reset background color back to default
    chkGrayMeshBG.Checked := False;
end;

procedure TfrmMeshViewer.FormCreate(Sender: TObject);
begin
    cmbMeshes.Sorted := True;
end;

procedure TfrmMeshViewer.FormShow(Sender: TObject);
begin
    UpdatePackageList('Open');

//    UpdateMeshList('Open');
//    cmbMeshesChange(self);
end;

procedure TfrmMeshViewer.lbAnimSeqClick(Sender: TObject);
begin
    UpdateFrame('Update');
end;

procedure TfrmMeshViewer.lbAnimSeqDrawItem(Control: TWinControl; Index: Integer; Rect: TRect; State: TOwnerDrawState);
begin
    var ItemText, NamePart, NumSeqFrames, SeqNum: string;
    var SpacePos: Integer;

    with (Control as TListBox).Canvas do
    begin
        FillRect(Rect);

        // Получить текст элемента
        ItemText := (Control as TListBox).Items[Index];

        // Найти первый пробел (для разделения названия)
        SpacePos := Pos(' ', ItemText);
        if SpacePos > 0 then
            NamePart := Copy(ItemText, 1, SpacePos - 1)
        else
            NamePart := ItemText;

        NumSeqFrames := Copy(ItemText, Length(ItemText) - 2, 3); // Считываем строку справа налево и берём три последних символа.
        SeqNum := Copy(ItemText, Length(ItemText) - 6, 3); // Продолжаем...

        // Animation sequence name
        TextOut(Rect.Left + 2, Rect.Top, NamePart);

        // Draw number of sequience frames
        if NumSeqFrames <> '' then
            TextOut(Rect.Left + 230, Rect.Top, '[' + NumSeqFrames + ']');

        //
        if SeqNum <> '' then
            TextOut(Rect.Left + 190, Rect.Top, '[' + SeqNum + ']');
    end;
end;

procedure TfrmMeshViewer.MeshViewportResize(Sender: TObject);
begin
    var ViewPortHandle := FindWindowEx(MeshViewport.Handle, 0, 'DXEditPlusUnrealWOpenGLWindowsViewportWindow', nil);

    if ViewPortHandle <> 0 then // The Top should be always 0 in this case
        SetWindowPos(ViewPortHandle, 0, MeshViewport.Left, 0, MeshViewport.ClientWidth, MeshViewport.ClientHeight,
                     SWP_NOZORDER or SWP_NOACTIVATE);
end;

procedure TfrmMeshViewer.UpdateFrame(Cmd: string);
begin
    FramePos := 0;

    if lbAnimSeq.Items.Count > 0 then
        NumFrames := StrToIntDef(Copy(lbAnimSeq.Items[lbAnimSeq.ItemIndex], Length(lbAnimSeq.Items[lbAnimSeq.ItemIndex]) - 2, 3), 0)
    else
        NumFrames := 0;

    UpdateFrameCaption(Cmd);
end;

procedure TfrmMeshViewer.UpdateFrameCaption(Cmd: string);
var
    Tmp: string;
    Flags: Integer;
begin
    // Determine temporary string for 'OPEN' command
    if UpperCase(Cmd) = 'OPEN' then
        Tmp := ' XR=' + IntToStr(MeshViewport.ClientWidth) + ' YR=' + IntToStr(MeshViewport.ClientHeight)
    else
        Tmp := '';

    // Update the label to indicate whether we are playing or displaying a specific frame
    if bPlaying then
        lblFrame.Caption := 'Playing ' + IntToStr(NumFrames) + ' frames...'
    else
        lblFrame.Caption := 'Frame ' + IntToStr(FramePos) + ' of ' + IntToStr(NumFrames);

    // Check if there are any meshes in the list
    if cmbMeshes.Items.Count <= 0 then
    begin
        ServerCmd('CAMERA CLOSE NAME=MeshViewCam');
        Exit;
    end;

    // Build flags for the camera
    Flags := SHOW_ChildWindow + SHOW_NOBUTTONS;

    if bPlaying then
        Flags := Flags + SHOW_BACKDROP;

    if bPlaying or chkAutoDolly.Checked then
        Flags := Flags + SHOW_REALTIME;

    if chkAutoDolly.Checked then
        Flags := Flags + SHOW_BRUSH;

    if rbPolygons.Checked then
        Flags := Flags + SHOW_COORDS;

    if rbWireframe.Checked = True then
        Flags := Flags + SHOW_Frame;

    ServerCmd('CAMERA ' + Cmd + ' NAME=MeshViewCam X=0 Y=0' +
      ' MESH=' + AnsiQuotedStr(cmbMeshes.Text, '"') +
      ' REN=' + IntToStr(REN_MESHVIEW) +
      ' FLAGS=' + IntToStr(Flags) +
      ' HWND=' + IntToStr(MeshViewport.Handle) +
      ' MISC1=' + Copy(lbAnimSeq.Items[lbAnimSeq.ItemIndex], Length(lbAnimSeq.Items[lbAnimSeq.ItemIndex]) - 6, 3) +
      ' MISC2=' + IntToStr(FramePos) + Tmp);
end;

end.
