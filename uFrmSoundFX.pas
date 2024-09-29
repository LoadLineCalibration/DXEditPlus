unit uFrmSoundFX;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, ES.BaseControls, ES.Layouts, Vcl.StdCtrls, Vcl.ComCtrls, Vcl.ToolWin,
  uEditorLoader, uEditor.Strings, Vcl.Menus;

type
  TfrmSoundFX = class(TForm)
    EsPanel1: TEsPanel;
    ToolBar1: TToolBar;
    tbOpenUAX: TToolButton;
    tbSaveUAX_As: TToolButton;
    ToolButton5: TToolButton;
    tbLoadEntirePackage: TToolButton;
    ToolButton8: TToolButton;
    tbPlay: TToolButton;
    tbStop: TToolButton;
    edtCurrentSound: TEdit;
    ToolButton1: TToolButton;
    tbCopySound: TToolButton;
    ToolButton3: TToolButton;
    EsPanel3: TEsPanel;
    Label1: TLabel;
    cmbPackages: TComboBox;
    cmbGroups: TComboBox;
    btnPrevTexGroup: TButton;
    btnNextTexGroup: TButton;
    btnPrevPackage: TButton;
    btnNextPackage: TButton;
    EsPanel2: TEsPanel;
    lstSounds: TListBox;
    pm_SoundFX: TPopupMenu;
    MainMenu1: TMainMenu;
    File1: TMenuItem;
    Open1: TMenuItem;
    SaveAs1: TMenuItem;
    N1: TMenuItem;
    Importsounds1: TMenuItem;
    Exportsounds1: TMenuItem;
    Recentfiles1: TMenuItem;
    uax01: TMenuItem;
    uax11: TMenuItem;
    uax21: TMenuItem;
    uax31: TMenuItem;
    uax41: TMenuItem;
    uax51: TMenuItem;
    uax61: TMenuItem;
    uax71: TMenuItem;
    uax81: TMenuItem;
    uax91: TMenuItem;
    Edit1: TMenuItem;
    Delete1: TMenuItem;
    N2: TMenuItem;
    Play1: TMenuItem;
    Stop1: TMenuItem;

    // New procedures
    procedure UpdateLists(Pack, Group, Sound: string);

    procedure FormShow(Sender: TObject);
    procedure cmbPackagesChange(Sender: TObject);
    procedure cmbGroupsChange(Sender: TObject);
    procedure tbLoadEntirePackageClick(Sender: TObject);
  private
    { Private declarations }
    var bUpdating: Boolean;
  public
    { Public declarations }
  end;

var
  frmSoundFX: TfrmSoundFX;

implementation

uses uFrmTextures;


{$R *.dfm}


procedure TfrmSoundFX.UpdateLists(Pack, Group, Sound: string);
var
    i: Integer;
begin
    if bUpdating then Exit();
    bUpdating := True;

    // Refresh Package List
    cmbPackages.Clear();
    Sound := ServerGetProp('OBJ', 'PACKAGES CLASS=Sound');
    while Sound <> '' do
        cmbPackages.Items.Add(ExtractCommaString(Sound));

    if cmbPackages.Items.Count = 0 then
        cmbPackages.Items.Add(NoneString);

    cmbPackages.ItemIndex := 0;
    for i := 0 to cmbPackages.Items.Count - 1 do
        if cmbPackages.Items[i] = Pack then
            cmbPackages.ItemIndex := i;

    // Refresh Group List
    cmbGroups.Clear();
    cmbGroups.Items.Add(AllString);
    Sound := ServerGetProp('OBJ', 'GROUPS CLASS=Sound PACKAGE=' + cmbPackages.Items[cmbPackages.ItemIndex]);
    while Sound <> '' do
        cmbGroups.Items.Add(ExtractCommaString(Sound));

    if cmbGroups.Items.Count > 1 then
        cmbGroups.ItemIndex := 1
    else
        cmbGroups.ItemIndex := 0;

    for i := 0 to cmbGroups.Items.Count - 1 do
        if cmbGroups.Items[i] = Group then
            cmbGroups.ItemIndex := i;

    // Refresh Sound List
    lstSounds.Clear();
    Sound := ServerGetProp('OBJ', 'QUERY TYPE=Sound PACKAGE=' + cmbPackages.Items[cmbPackages.ItemIndex] + ' GROUP=' + cmbGroups.Items[cmbGroups.ItemIndex]);
    while Sound <> '' do
        lstSounds.Items.Add(ExtractString(Sound));

    if lstSounds.Count = 0 then
        lstSounds.Items.Add(NoneString);

    lstSounds.ItemIndex := 0;
    for i := 0 to lstSounds.Count - 1 do
        if lstSounds.Items[i] = Sound then
            lstSounds.ItemIndex := i;

    bUpdating := False;
end;

procedure TfrmSoundFX.FormShow(Sender: TObject);
begin
    UpdateLists('','','');
end;

procedure TfrmSoundFX.cmbPackagesChange(Sender: TObject);
begin
    UpdateLists(cmbPackages.Items[cmbPackages.ItemIndex], '', '');
end;

procedure TfrmSoundFX.cmbGroupsChange(Sender: TObject);
begin
    UpdateLists(cmbPackages.Items[cmbPackages.ItemIndex], cmbGroups.Items[cmbGroups.ItemIndex], '');
end;

procedure TfrmSoundFX.tbLoadEntirePackageClick(Sender: TObject);
begin
    ServerCmd('OBJ LOAD FILE=' + cmbPackages.Items[cmbPackages.ItemIndex]);
    UpdateLists(cmbPackages.Items[cmbPackages.ItemIndex], '', '');
end;

end.
