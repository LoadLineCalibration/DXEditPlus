unit uEditor.Strings;

interface

const
    NoneString = '(none)';
    AllString = '(All)';


resourcestring
    strAskBuildPaths = 'This command will erase all existing pathnodes and attempt to create a pathnode network on its own.' +
    '  Are you sure this is what you want to do?' + #13#10#13#10 + 'NOTE : This process can take a VERY long time.';

    // Viewport captions/Hints
    strRealTimePreview = 'RealTime Preview';
    strWireframe = 'Wireframe';
    strTextureUsage = 'Texture Usage';
    strBSPCuts = 'BSP Cuts';
    strTextured = 'Textured';
    strDynLight = 'Dynamic Light';
    strZonesPortals = 'Zone/Portal';
    strTop = 'Top';
    strFront = 'Front';
    strSide = 'Side';

    // Actor class browser
    strCannotFind = 'Cannot find such class: ';
    strLoading = 'Loading...';

    // Error messages
    strCannotFindEditPack = 'Can''t find edit package "%s". Cannot continue. Editor will be closed.';
    strCannotFindEditPackSrc = 'Can''t find edit package "%s", but sources of this package has been found in "%s".' + #13#10#13#10 +
                               'Rebuild this package and relaunch the editor.';


implementation

end.
