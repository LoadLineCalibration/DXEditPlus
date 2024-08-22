{
    For now only values I need for the DxEditPlus.
}
unit Engine.UnCamera;

interface

const
    // Information for rendering the viewport (detail level settings).
    REN_None       = 0;   // Hide completely.
    REN_Wire       = 1;   // Wireframe of EdPolys.
    REN_Zones      = 2;   // Show zones and zone portals.
    REN_Polys      = 3;   // Flat-shaded Bsp.
    REN_PolyCuts   = 4;   // Flat-shaded Bsp with normals displayed.
    REN_DynLight   = 5;   // Illuminated texture mapping.
    REN_PlainTex   = 6;   // Plain texture mapping.
    REN_OrthXY     = 13;  // Orthogonal overhead (XY) view.
    REN_OrthXZ     = 14;  // Orthogonal XZ view.
    REN_OrthYZ     = 15;  // Orthogonal YZ view.
    REN_TexView    = 16;  // Viewing a texture (no actor).
    REN_TexBrowser = 17;  // Viewing a texture browser (no actor).
    REN_MeshView   = 18;  // Viewing a mesh.

  // Viewport capabilities.
//  EViewportCaps =
//  (
//    CC_RGB565 = 1,    // RGB 565 format (otherwise 555).
//    CC_Mask = $ff     // Caps mask which affects cached rendering info.
//  );

    // ShowFlags for viewport.
    SHOW_Frame         = $00000001; // Show world bounding cube.
    SHOW_ActorRadii    = $00000002; // Show actor collision radii.
    SHOW_Backdrop      = $00000004; // Show background scene.
    SHOW_Actors        = $00000008; // Show actors.
    SHOW_Coords        = $00000010; // Show brush/actor coords.
    SHOW_ActorIcons    = $00000020; // Show actors as icons.
    SHOW_Brush         = $00000040; // Show the active brush.
    SHOW_StandardView  = $00000080; // Viewport is a standard view.
    SHOW_Menu          = $00000100; // Show menu on viewport.
    SHOW_ChildWindow   = $00000200; // Show as true child window.
    SHOW_MovingBrushes = $00000400; // Show moving brushes.
    SHOW_PlayerCtrl    = $00000800; // Player controls are on.
    SHOW_Paths         = $00001000; // Show paths.
    SHOW_NoButtons     = $00002000; // No menu/view buttons.
    SHOW_RealTime      = $00004000;  // Update window in realtime.


implementation

end.
