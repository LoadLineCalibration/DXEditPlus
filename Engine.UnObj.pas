{
    For now only values I need for the DxEditPlus.
}
unit Engine.UnObj;

interface

const
  // Regular in-game flags.
  PF_Invisible         = $00000001;  // Poly is invisible.
  PF_Masked            = $00000002;  // Poly should be drawn masked.
  PF_Translucent       = $00000004;  // Poly is transparent.
  PF_NotSolid          = $00000008;  // Poly is not solid, doesn't block.
  PF_Environment       = $00000010;  // Poly should be drawn environment mapped.
  PF_ForceViewZone     = $00000010;  // Force current iViewZone in OccludeBSP (reuse Environment flag)
  PF_Semisolid         = $00000020;  // Poly is semi-solid = collision solid, Csg nonsolid.
  PF_Modulated         = $00000040;  // Modulation transparency.
  PF_FakeBackdrop      = $00000080;  // Poly looks exactly like backdrop.
  PF_TwoSided          = $00000100;  // Poly is visible from both sides.
  PF_AutoUPan          = $00000200;  // Automatically pans in U direction.
  PF_AutoVPan          = $00000400;  // Automatically pans in V direction.
  PF_NoSmooth          = $00000800;  // Don't smooth textures.
  PF_BigWavy           = $00001000;  // Poly has a big wavy pattern in it.
  PF_SpecialPoly       = $00001000;  // Game-specific poly-level render control (reuse BigWavy flag)
  PF_SmallWavy         = $00002000;  // Small wavy pattern (for water/enviro reflection).
  PF_Flat              = $00004000;  // Flat surface.
  PF_LowShadowDetail   = $00008000;  // Low detail shadows.
  PF_NoMerge           = $00010000;  // Don't merge poly's nodes before lighting when rendering.
  PF_CloudWavy         = $00020000;  // Polygon appears wavy like clouds.
  PF_DirtyShadows      = $00040000;  // Dirty shadows.
  PF_BrightCorners     = $00080000;  // Brighten convex corners.
  PF_SpecialLit        = $00100000;  // Only speciallit lights apply to this poly.
  PF_Gouraud           = $00200000;  // Gouraud shaded.
  PF_NoBoundRejection  = $00200000;  // Disable bound rejection in OccludeBSP (reuse Gouraud flag)
  PF_Unlit             = $00400000;  // Unlit.
  PF_HighShadowDetail  = $00800000;  // High detail shadows.
  PF_Portal            = $04000000;  // Portal between iZones.
  PF_Mirrored          = $08000000;  // Reflective surface.
  // Editor flags.
  PF_Memorized         = $01000000;  // Editor: Poly is remembered.
  PF_Selected          = $02000000;  // Editor: Poly is selected.
  PF_Highlighted       = $10000000;  // Editor: Poly is highlighted.
  PF_FlatShaded        = $40000000;  // FPoly has been split by SplitPolyWithPlane.
  // Internal.
  PF_EdProcessed       = $40000000;  // FPoly was already processed in editorBuildFPolys.
  PF_EdCut             = $80000000;  // FPoly has been split by SplitPolyWithPlane.
  PF_RenderFog         = $40000000;  // Render with fogmapping.
  PF_Occlude           = $80000000;  // Occludes even if PF_NoOcclude.
  PF_RenderHint        = $01000000;  // Rendering optimization hint.
  // Combinations of flags.
  PF_NoOcclude         = PF_Masked or PF_Translucent or PF_Invisible or PF_Modulated;
  PF_NoEdit            = PF_Memorized or PF_Selected or PF_EdProcessed or PF_NoMerge or PF_EdCut;
  PF_NoImport          = PF_NoEdit or PF_NoMerge or PF_Memorized or PF_Selected or PF_EdProcessed or PF_EdCut;
  PF_AddLast           = PF_Semisolid or PF_NotSolid;
  PF_NoAddToBSP        = PF_EdCut or PF_EdProcessed or PF_Selected or PF_Memorized;
  PF_NoShadows         = PF_Unlit or PF_Invisible or PF_Environment or PF_FakeBackdrop;
  PF_Transient         = PF_Highlighted;


implementation

end.
