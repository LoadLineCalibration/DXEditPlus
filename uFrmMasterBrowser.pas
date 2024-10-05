unit uFrmMasterBrowser;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ComCtrls, System.ImageList, Vcl.ImgList;

type
  TBrowserType =
  (
      BTD_ActorClasses,
      BTD_Music,
      BTD_SoundFX,
      BTD_Textures,
      BTD_Meshes
  );

  TfrmMasterBrowser = class(TForm)
    pgc_Browsers: TPageControl;
    tabTextures: TTabSheet;
    tabGroups: TTabSheet;
    tabActorClasses: TTabSheet;
    tabSounds: TTabSheet;
    tabMusic: TTabSheet;
    tabMeshes: TTabSheet;
    ImageList1: TImageList;

    // New procedures
    procedure DockBrowser(BrowserToDock: TBrowserType);
    procedure UndockBrowser(BrowserToUndock: TBrowserType);
    procedure pgc_BrowsersChange(Sender: TObject);
  private
    { Private declarations }
  public
    var bFollowMainWindow: Boolean;
    { Public declarations }
  end;

var
  frmMasterBrowser: TfrmMasterBrowser;

implementation

{$R *.dfm}

uses uFrmClassBrowser, uFrmMusicBrowser, uFrmSoundFX, uFrmTextures, uFrmMeshViewer;

{ TfrmMasterBrowser }

procedure TfrmMasterBrowser.DockBrowser(BrowserToDock: TBrowserType);
begin
    case BrowserToDock of
        BTD_ActorClasses:
        begin
            if frmClassBrowser <> nil then // На всякий случай...
            begin
                pgc_Browsers.ActivePage := tabActorClasses;
                frmClassBrowser.BorderStyle := bsNone;
                frmClassBrowser.Parent := tabActorClasses;
                frmClassBrowser.Align := alClient;
                frmClassBrowser.Show();
                frmClassBrowser.Menu := nil;
                Self.Menu := frmClassBrowser.menu_ClassBrowser;
                Self.Show();
            end;
        end;
        BTD_Music:
        begin
            if frmMusicBrowser <> nil then
            begin
                pgc_Browsers.ActivePage := tabMusic;
                frmMusicBrowser.BorderStyle := bsNone;
                frmMusicBrowser.Parent := tabMusic;
                frmMusicBrowser.Align := alClient;
                frmMusicBrowser.Show();
                frmMusicBrowser.Menu := nil;
                Self.Menu := frmMusicBrowser.menu_MusicBrowser;
                Self.Show();
            end;
        end;
        BTD_SoundFX:
        begin
            if frmSoundFX <> nil then
            begin
                pgc_Browsers.ActivePage := tabSounds;
                frmSoundFX.BorderStyle := bsNone;
                frmSoundFX.Parent := tabSounds;
                frmSoundFX.Align := alClient;
                frmSoundFX.Show();
                frmSoundFX.Menu := nil;
                Self.Menu := frmSoundFX.menu_SoundFX;
                Self.Show();
            end;
        end;
        BTD_Textures:
        begin
            if frmTextures <> nil then
            begin
                pgc_Browsers.ActivePage := tabTextures;
                frmTextures.BorderStyle := bsNone;
                frmTextures.Parent := tabTextures;
                frmTextures.Align := alClient;
                frmTextures.Show();
                frmTextures.Menu := nil;
                Self.Menu := frmTextures.menu_TextureBrowser;
                Self.Show();
            end;
        end;
        BTD_Meshes:
        begin
            if frmMeshViewer <> nil then
            begin
                pgc_Browsers.ActivePage := tabMeshes;
                frmMeshViewer.BorderStyle := bsNone;
                frmMeshViewer.Parent := tabMeshes;
                frmMeshViewer.Align := alClient;
                frmMeshViewer.Show();
                frmMeshViewer.Menu := nil;
                Self.Menu := frmMeshViewer.menu_MeshViewer;
                Self.Show();
            end;
        end;
    end;
end;


procedure TfrmMasterBrowser.UndockBrowser(BrowserToUndock: TBrowserType);
begin
    case BrowserToUndock of
    BTD_ActorClasses:
        begin
            Self.Menu := nil;
            frmClassBrowser.Hide(); // To avoid flickering
            frmClassBrowser.Menu := frmClassBrowser.menu_ClassBrowser;
            frmClassBrowser.Parent := nil;
            frmClassBrowser.BorderStyle := bsSizeable;
            frmClassBrowser.Align := alNone;
            frmClassBrowser.Width := Self.Width;
            frmClassBrowser.Height := Self.Height;
            frmClassBrowser.Position := poMainFormCenter;
            frmClassBrowser.Show();
        end;
    BTD_Music:
        begin
            Self.Menu := nil;
            frmMusicBrowser.Hide(); // To avoid flickering
            frmMusicBrowser.Menu := frmMusicBrowser.menu_MusicBrowser;
            frmMusicBrowser.Parent := nil;
            frmMusicBrowser.BorderStyle := bsSizeable;
            frmMusicBrowser.Align := alNone;
            frmMusicBrowser.Width := Self.Width;
            frmMusicBrowser.Height := Self.Height;
            frmMusicBrowser.Position := poMainFormCenter;
            frmMusicBrowser.Show();
        end;
    BTD_SoundFX:
        begin
            Self.Menu := nil;
            frmSoundFX.Hide(); // To avoid flickering
            frmSoundFX.Menu := frmSoundFX.menu_SoundFX;
            frmSoundFX.Parent := nil;
            frmSoundFX.BorderStyle := bsSizeable;
            frmSoundFX.Align := alNone;
            frmSoundFX.Width := Self.Width;
            frmSoundFX.Height := Self.Height;
            frmSoundFX.Position := poMainFormCenter;
            frmSoundFX.Show();
        end;
    BTD_Textures:
        begin
            Self.Menu := nil;
            frmTextures.Hide(); // To avoid flickering
            frmTextures.Menu := frmTextures.menu_TextureBrowser;
            frmTextures.Parent := nil;
            frmTextures.BorderStyle := bsSizeable;
            frmTextures.Align := alNone;
            frmTextures.Width := Self.Width;
            frmTextures.Height := Self.Height;
            frmTextures.Position := poMainFormCenter;
            frmTextures.Show();
        end;
    BTD_Meshes:
        begin
            Self.Menu := nil;
            frmMeshViewer.Hide(); // To avoid flickering
            frmMeshViewer.Menu := frmMeshViewer.menu_MeshViewer;
            frmMeshViewer.Parent := nil;
            frmMeshViewer.BorderStyle := bsSizeable;
            frmMeshViewer.Align := alNone;
            frmMeshViewer.Width := Self.Width;
            frmMeshViewer.Height := Self.Height;
            frmMeshViewer.Position := poMainFormCenter;
            frmMeshViewer.Show();
        end;
    end;
end;

procedure TfrmMasterBrowser.pgc_BrowsersChange(Sender: TObject);
begin
    case pgc_Browsers.ActivePageIndex of
        0: // tabActorClasses:
        begin
            if frmClassBrowser.Parent = tabActorClasses then
            begin
                Menu := frmClassBrowser.menu_ClassBrowser;
            end;
        end;
        1: //tabMusic:
        begin
            if frmMusicBrowser.Parent = tabMusic then
            begin
                Menu := frmMusicBrowser.menu_MusicBrowser;
            end;
        end;
        2: //tabSounds:
        begin
            if frmSoundFX.Parent = tabSounds then
            begin
                Menu := frmSoundFX.menu_SoundFX;
            end;
        end;
        3: //tabTextures:
        begin
            if frmTextures.Parent = tabTextures then
            begin
                Menu := frmTextures.menu_TextureBrowser;
            end;
        end;
        4: //tabMeshes:
        begin
            if frmMeshViewer.Parent = tabMeshes then
            begin
                Menu := frmMeshViewer.menu_MeshViewer;
            end;
        end;
    end;
end;


end.
