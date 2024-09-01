unit uEditor.Consts;

interface

const EditorPatchFileNames: array[0..5] of string = // To check if Hanfling's EditorPatch is installed.
(
    'EditorPatch.dll',
    'EditorPatch.ini',
    'EditorPatch.int',
    'EditorPatch.u',
    'RenderExt.dll',
    'RenderExt.int'
);

const FilterPackages: array[0..8] of string = // Don't show these packages in Actor class browser
(
    'OpenGLDrv',
    'SoftDrv',
    'D3D9DrvRTX',
    'd3d10drv',
    'D3D9Drv',
    'D3DDrv',
    'Window',
    'WinDrv',
    'RenderExt'
);

const DXEditPlusIniFile = 'DXEditPlus.ini';
const MAX_RECENT_FILES = 9; // like in ConEditPlus, actually 10


implementation

end.
