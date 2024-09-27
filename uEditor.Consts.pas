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

const OpenGlDrvFiles: array[0..1] of string = // To check if Hanfling's OpenGlDrv is installed
(
    'OpenGlDrv.dll',
    'OpenGlDrv.int'
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

const FilterFonts: array[0..32] of string = // Remove these entries from texture groups
(
    'SmallFont', // Engine.u
    'MedFont',
    'BigFont',
    'LargeFont',
    'TechMedium', // Extension
    'TechMedium_DS',
    'TechMedium_B',
    'TechSmall',
    'TechSmall_DS',
    'TechTiny',
    'FontSansSerif_8_Bold', // DeusExUI
    'FontSansSerif_8',
    'FontComputer8x20_C',
    'FontComputer8x20_A',
    'FontSpinningDX',
    'FontComputer8x20_B',
    'FontLocation',
    'FontConversationLargeBold',
    'FontConversationBold',
    'FontConversation',
    'FontHUDWingDings',
    'FontFixedWidthLocation',
    'FontTitleLarge',
    'FontMenuSmall_DS',
    'FontMenuSmall',
    'FontMenuTitle',
    'FontMenuHeaders_DS',
    'FontMenuHeaders',
    'FontFixedWidthSmall_DS',
    'FontFixedWidthSmall',
    'FontMenuExtraLarge',
    'FontTiny',
    'FontConversationLarge'
);

const DXEditPlusIniFile = 'DXEditPlus.ini';
const MAX_RECENT_MAPS = 9; // like in ConEditPlus, actually 10
const GAME_INI_FILE = 'DeusEx.ini'; // Using this file by default
const ActorBrowserQuickJump = 'ActorBrowser.QuickJump.txt';


implementation

end.
