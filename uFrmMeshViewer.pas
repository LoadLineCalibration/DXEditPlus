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

    // New procedures
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
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmMeshViewer: TfrmMeshViewer;
  FramePos: Integer;
  NumFrames: Integer;
  bPlaying: Boolean;


implementation

{$R *.dfm}

procedure TfrmMeshViewer.UpdateMeshList(Cmd: string);
var
    ResultStr, S: string;
begin
    cmbMeshes.Clear;
    ResultStr := ServerGetProp('OBJ', 'Query Type=Mesh');

    while True do
    begin
        S := ExtractString(ResultStr);
        if S = '' then Break;
        cmbMeshes.Items.Add(S);
    end;

    if cmbMeshes.Items.Count > 0 then
        cmbMeshes.ItemIndex := 0;

    UpdateFrameList(Cmd);
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

procedure TfrmMeshViewer.btnRefreshClick(Sender: TObject);
begin
    UpdateMeshList('Update');
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
end;

procedure TfrmMeshViewer.FormClose(Sender: TObject; var Action: TCloseAction);
begin
    if bPlaying = True then
        btnPlayAnimClick(self);

    ServerCmd('CAMERA CLOSE NAME=MeshViewCam');
    ServerCmd('set editorengine C_WireBackground (R=0,G=0,B=0)'); // Reset background color back to default
    chkGrayMeshBG.Checked := False;
end;

procedure TfrmMeshViewer.FormShow(Sender: TObject);
begin
    UpdateMeshList('Open');
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

        // �������� ����� ��������
        ItemText := (Control as TListBox).Items[Index];

        // ����� ������ ������ (��� ���������� ��������)
        SpacePos := Pos(' ', ItemText);
        if SpacePos > 0 then
            NamePart := Copy(ItemText, 1, SpacePos - 1)
        else
            NamePart := ItemText;

        NumSeqFrames := Copy(ItemText, Length(ItemText) - 2, 3); // ��������� ������ ������ ������ � ���� ��� ��������� �������.
        SeqNum := Copy(ItemText, Length(ItemText) - 6, 3); // ����������...

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
