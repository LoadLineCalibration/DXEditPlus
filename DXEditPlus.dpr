program DXEditPlus;

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
  uFrmBrushBuilder in 'uFrmBrushBuilder.pas' {frmBrushBuilder},
  uBrushBuilders.Utils in 'uBrushBuilders.Utils.pas',
  Engine.UnObj in 'Engine.UnObj.pas',
  Engine.UnCamera in 'Engine.UnCamera.pas',
  Editor.Editor in 'Editor.Editor.Pas',
  uFrm2DShapeEditor in 'uFrm2DShapeEditor.pas' {frm2DShapeEditor},
  DXEditPlus.Helpers in 'DXEditPlus.Helpers.pas',
  uFrmNewMap in 'uFrmNewMap.pas' {frmNewMap},
  uFrmAddSpecialBrush in 'uFrmAddSpecialBrush.pas' {frmAddSpecialBrush},
  uFrmMeshViewer in 'uFrmMeshViewer.pas' {frmMeshViewer},
  uFrmNewTexture in 'uFrmNewTexture.pas' {frmNewTexture},
  uFrmTextureProperties in 'uFrmTextureProperties.pas' {frmTextureProperties};

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
  Application.CreateForm(Tfrm2DShapeEditor, frm2DShapeEditor);
  Application.CreateForm(TfrmNewMap, frmNewMap);
  Application.CreateForm(TfrmAddSpecialBrush, frmAddSpecialBrush);
  Application.CreateForm(TfrmMeshViewer, frmMeshViewer);
  Application.CreateForm(TfrmNewTexture, frmNewTexture);
  Application.Run;
  ReportMemoryLeaksOnShutdown := True;
end.
