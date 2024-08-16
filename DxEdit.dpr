program DxEdit;

uses
  Vcl.Forms,
  uFrmMain in 'uFrmMain.pas' {frmMain},
  uFrmViewport in 'uFrmViewport.pas' {frmViewport},
  uEditorLoader in 'uEditorLoader.pas',
  uEditorTypes in 'uEditorTypes.pas',
  uFrmClassBrowser in 'uFrmClassBrowser.pas' {frmClassBrowser},
  uFrmTextures in 'uFrmTextures.pas' {frmTextures},
  uFrmScriptEditor in 'uFrmScriptEditor.pas' {frmScriptEditor},
  uFrmMasterBrowser in 'uFrmMasterBrowser.pas' {frmMasterBrowser},
  uFrmMeshImport in 'uFrmMeshImport.pas' {frmMeshImport},
  uEditor.Consts in 'uEditor.Consts.pas',
  uFrmBuildOptions in 'uFrmBuildOptions.pas' {frmBuildOptions},
  uEditor.Strings in 'uEditor.Strings.pas',
  uFrmSurfaceProps in 'uFrmSurfaceProps.pas' {frmSurfaceProps},
  uFrmBrushBuilder in 'uFrmBrushBuilder.pas' {frmBrushBuilder};

{$R *.res}
{$SETPEOSVERSION 5.1} // Windows XP
{$SETPESUBSYSVERSION 5.1}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TfrmMain, frmMain);
  Application.CreateForm(TfrmClassBrowser, frmClassBrowser);
  Application.CreateForm(TfrmTextures, frmTextures);
  Application.CreateForm(TfrmScriptEditor, frmScriptEditor);
  Application.CreateForm(TfrmMasterBrowser, frmMasterBrowser);
  Application.CreateForm(TfrmMeshImport, frmMeshImport);
  Application.CreateForm(TfrmBuildOptions, frmBuildOptions);
  Application.CreateForm(TfrmSurfaceProps, frmSurfaceProps);
  Application.CreateForm(TfrmBrushBuilder, frmBrushBuilder);
  Application.Run;
end.
