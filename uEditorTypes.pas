unit uEditorTypes;

interface

uses Engine.UnCamera;

const
  MAXVERTICES = 12; // Max vertices per polygon
  MAXBRUSHPOLYS = 250; //  Max polys per brush

  SHOW_NORMAL        = SHOW_FRAME + SHOW_ACTORS + SHOW_BRUSH;
  SHOW_FREE          = SHOW_FRAME + SHOW_ACTORS + SHOW_MENU + SHOW_BACKDROP;

type
  // Тип для вектора с плавающей точкой
  TFVector = record
    X: Single;
    Y: Single;
    Z: Single;
  end;

  // Тип для полигона браша
  TBuildBrushPoly = record
    Origin: TFVector;      // Origin.X=Maxword means unspecified
    Normal: TFVector;      // X=Maxword means unspecified
    TextureU: TFVector;    // X=Maxword means unspecified
    TextureV: TFVector;    // X=Maxword means unspecified
    NumVertices: Integer;  // Может быть равно 0
    Vertex: array[0..MAXVERTICES] of TFVector;
    Flags: Longint;        // По умолчанию равно нулю
    Group: string;         // Может быть пустым
    Item: string;          // Может быть пустым
  end;

    TBuildBrush = record
        NumPolys: Integer;
        Polys: array[1..MAXBRUSHPOLYS] of TBuildBrushPoly;
    end;

  TBuildOptions = record // save/restore build options
    // Geometry and BSP
    bRebuildGeometry: Boolean;
    bRebuildBSP: Boolean;
    OptimizationLevel: Integer; // 0 = Lame, 1 = Good, 2 = Optimal
    bOptimizeGeometry: Boolean;
    bBuildVisZones: Boolean;
    TreeCutsValue: Integer;

    // Lighting
    bRebuildLighting: Boolean;
    bApplySelectedLights: Boolean;

    // AI Paths
    bDefinePaths: Boolean;
  end;

const DefaultBuiltOptions: TBuildOptions = // defaults
(
    bRebuildGeometry: True;
    bRebuildBSP: True;
    OptimizationLevel: 1; // Good
    bOptimizeGeometry: True;
    bBuildVisZones: True;
    TreeCutsValue: 15;

    bRebuildLighting: True;
    bApplySelectedLights: False;

    bDefinePaths: False;
);

implementation




end.
