{
    For now only values I need for the DxEditPlus.
}
unit Editor.Editor;

interface

const

    // Editor mode settings.
    EM_None          = 0;   // Gameplay, editor disabled.
    EM_ViewportMove  = 1;   // Move viewport normally.
    EM_ViewportZoom  = 2;   // Move viewport with acceleration.
    EM_BrushRotate   = 5;   // Rotate brush.
    EM_BrushSheer    = 6;   // Sheer brush.
    EM_BrushScale    = 7;   // Scale brush.
    EM_BrushStretch  = 8;   // Stretch brush.
    EM_TexturePan    = 11;  // Pan textures.
    EM_TextureRotate = 13; // Rotate textures.
    EM_TextureScale  = 14;  // Scale textures.
    EM_BrushSnap     = 18;  // Brush snap-scale.
    EM_TexView       = 19;  // Viewing textures.
    EM_TexBrowser    = 20;  // Browsing textures.
    EM_MeshView      = 21;  // Viewing mesh.
    EM_MeshBrowser   = 22;   // Browsing mesh.


    // Editor callback codes.
    EDC_None               = 0;
    EDC_Browse             = 1;  // when ... clicked in properties window, open corresponding browser to choose something
    EDC_UseCurrent         = 2;  // when 'Use' button is pressed, assing chosen object?
    EDC_CurTexChange       = 10; // Change in current texture
    EDC_SelPolyChange      = 20; // Poly selection set changed
    EDC_SelChange          = 21; // Selection set changed
    EDC_RtClickTexture     = 23; // Right clicked on a texture
    EDC_RtClickPoly        = 24; // Right clicked on a polygon
    EDC_RtClickActor       = 25; // Right clicked on an actor
    EDC_RtClickWindow      = 26; // Right clicked on camera window
    EDC_RtClickWindowCanAdd= 27; // Right clicked on camera window
    EDC_MapChange          = 42;  // Change in map, bsp

    // Bsp poly alignment types for polyTexAlign.
    TEXALIGN_Default     = 0;  // No special alignment (just derive from UV vectors).
    TEXALIGN_Floor       = 1;  // Regular floor (U,V not necessarily axis-aligned).
    TEXALIGN_WallDir     = 2;  // Grade (approximate floor), U,V X-Y axis aligned.
    TEXALIGN_WallPan     = 3;  // Align as wall (V vertical, U horizontal).
    TEXALIGN_OneTile     = 4;  // Align one tile.
    TEXALIGN_WallColumn  = 5;   // Align as wall on column.


implementation

end.
