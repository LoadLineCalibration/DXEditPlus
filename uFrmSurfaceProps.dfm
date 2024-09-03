object frmSurfaceProps: TfrmSurfaceProps
  Left = 0
  Top = 0
  BorderStyle = bsDialog
  Caption = 'frmSurfaceProps'
  ClientHeight = 283
  ClientWidth = 539
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  ShowHint = True
  DesignSize = (
    539
    283)
  TextHeight = 15
  object Bevel1: TBevel
    Left = 0
    Top = 240
    Width = 539
    Height = 3
    Align = alTop
    ExplicitLeft = 3
    ExplicitTop = 239
  end
  object LL_FlagsInfo: TEsLinkLabel
    Left = 8
    Top = 260
    Width = 154
    Height = 15
    Hint = 'https://beyondunrealwiki.github.io/pages/surface-flags-ut.html'
    Anchors = [akLeft, akBottom]
    Caption = 'Descriptions from UnrealWiki'
    Url = 'https://beyondunrealwiki.github.io/pages/surface-flags-ut.html'
    ExplicitTop = 233
  end
  object Label3: TLabel
    Left = 202
    Top = 260
    Width = 181
    Height = 15
    Caption = 'Hold SHIFT to pan/rotate opposite'
  end
  object PageControl1: TPageControl
    AlignWithMargins = True
    Left = 3
    Top = 3
    Width = 533
    Height = 234
    ActivePage = TabSheet2
    Align = alTop
    Style = tsButtons
    TabOrder = 0
    object tsSurfaceFlags: TTabSheet
      Caption = 'Surface Flags'
      object chkMasked: TCheckBox
        Left = 3
        Top = 16
        Width = 97
        Height = 17
        Hint = 
          'You see masked textures as fences, grates, chains, etc. '#13#10'If a t' +
          'exture has been created as masked, then this flag isn'#39't necessar' +
          'y: the masking effect is "built-in".'#13#10'Some textures however will' +
          ' need this flag to make black parts transparent. '#13#10'Note that if ' +
          'you have a texture that is masked, it will be rendered after eve' +
          'rything else. '#13#10'This means that gibs, weapons and players etc, w' +
          'ill be rendered even if they are obscured by a masked texture. '#13 +
          #10'This has a severe effect on framerate, so go easy on the masked' +
          ' textures!'
        Caption = 'Masked'
        TabOrder = 0
      end
      object chkInvisible: TCheckBox
        Left = 3
        Top = 39
        Width = 97
        Height = 17
        Hint = 
          'The texture will be invisible. '#13#10'For example, the surfaces of zo' +
          'ne portals and invisible collision hulls are invisible. '#13#10'These ' +
          'surfaces are displayed in UnrealEd unless realtime preview is en' +
          'abled in the viewport'#39's titlebar.'
        Caption = 'Invisible'
        TabOrder = 1
      end
      object chk2Sided: TCheckBox
        Left = 3
        Top = 62
        Width = 97
        Height = 17
        Hint = 
          'The texture will be two sided. Mainly used for sheets and Nonsol' +
          'id objects. '#13#10'For example, if you have a cube that is non-solid ' +
          'you will see its textures from the outside and it will look like' +
          ' a normal cube. If you move inside of it you won'#39't see the insid' +
          'e walls of the cube. Setting the 2 sided flag on those surfaces ' +
          'will allow you to see the inside walls of the cube. Both sides o' +
          'f the wall (outside and inside) well be the same texture and ali' +
          'gnment. '#13#10'There is no way to have a different texture per side.'
        Caption = 'Two-Sided'
        TabOrder = 2
      end
      object chkPortal: TCheckBox
        Left = 3
        Top = 85
        Width = 97
        Height = 17
        Hint = 'Makes the surface a Zone Portal.'
        Caption = 'Portal'
        TabOrder = 3
      end
      object chkMirror: TCheckBox
        Left = 3
        Top = 108
        Width = 97
        Height = 17
        Hint = 
          'The surface will look like a mirror. Make sure there is a frame ' +
          'or something as the effect looks very unnatural. Also look out f' +
          'or frame rates.'#13#10'If you want a surface to have a reflective appe' +
          'arance you would set this flag as well as translucent. This meth' +
          'od is used for things like marble floors that mirror the surroun' +
          'ding area but you will also be able to see the texture that is a' +
          'ssigned to it.'
        Caption = 'Mirror'
        TabOrder = 4
      end
      object chkNoBoundsReject: TCheckBox
        Left = 379
        Top = 108
        Width = 122
        Height = 17
        Hint = 
          'Poly-specific disabling of bound rejection. Failure of the bound' +
          ' rejection code below causes holes that appear and disappear as ' +
          'you move around the polygon. Flagging the polygon (or in some ca' +
          'ses, several adjacent polygons as well) with PF_NoBoundRejection' +
          ' will eliminate this problem. To verify that the polygon in ques' +
          'tion is suffering from this problem, select all surfaces, then t' +
          'oggle the flag. The missing polygon should appear when "No Bound' +
          ' Rejection" is flagged. This is mainly a band aid fix to what is' +
          ' really causing the problem. '
        Caption = 'No Bounds Reject'
        TabOrder = 5
      end
      object chkSpecialLit: TCheckBox
        Left = 116
        Top = 16
        Width = 97
        Height = 17
        Hint = 
          'Texture will only be illuminated by Light(s) that are also set t' +
          'o special lit.'#13#10'Used when you want a surface to be lit independe' +
          'nt of light sources around it. '#13#10'Example a glowing sphere that i' +
          's not affected by your lighting around it. '#13#10'You need to set up ' +
          'a special light source in this case.'
        Caption = 'Special Lit'
        TabOrder = 6
      end
      object chkUnlit: TCheckBox
        Left = 116
        Top = 39
        Width = 97
        Height = 17
        Hint = 
          'The surface will not be affected by the lighting process. '#13#10'It w' +
          'ill show at full brightness, i.e. it will show the same in Textu' +
          'red view, in Dynamic Light view and in-game. '#13#10'Useful for textur' +
          'es that look like light sources.'
        Caption = 'Unlit'
        TabOrder = 7
      end
      object chkHighShadowDetail: TCheckBox
        Left = 116
        Top = 62
        Width = 125
        Height = 17
        Hint = 
          'Makes shadows on the texture more defined with less fuzzy edges ' +
          'by increasing the light map resolution. '#13#10'Also makes the scene a' +
          ' little slower when dynamic lights are present, like those cause' +
          'd by weapon fire. '
        Caption = 'High Shadow Detail'
        TabOrder = 8
      end
      object chkLowShadowDetail: TCheckBox
        Left = 116
        Top = 85
        Width = 125
        Height = 17
        Hint = 
          'Makes shadows less defined and more fuzzy on the edges. '#13#10'Decrea' +
          'ses lightmap resolution and speeds up gameplay when dynamic ligh' +
          'ts are present.'#13#10'Note: if both Low and High Shadow Detail are se' +
          't then the texture will have Ultra Low Shadow Detail. '
        Caption = 'Low Shadow Detail'
        TabOrder = 9
      end
      object chkDirtyShadows: TCheckBox
        Left = 116
        Top = 108
        Width = 97
        Height = 17
        Hint = 
          'Uses more conservative lighting, supposedly faster, at the expen' +
          'se of looks...'
        Caption = 'Dirty Shadows'
        TabOrder = 10
      end
      object chkBrightCorners: TCheckBox
        Left = 116
        Top = 131
        Width = 109
        Height = 17
        Hint = 
          'Makes the texture more responsive to light which make the over a' +
          'll texture brighter including the edges and corners. '#13#10'Also help' +
          's to illuminate smaller textures that aren'#39't responding to norma' +
          'l lightmapping. If you have a texture that keeps coming out blac' +
          'k then try setting this.'#13#10'This is useful when you have a large s' +
          'urface that is unevenly lit. Enabling this will ensure that all ' +
          'parts are smoothly lit, looking more natural and that there are ' +
          'no dark corners.'
        Caption = 'Bright Corners'
        TabOrder = 11
      end
      object chkForceViewZone: TCheckBox
        Left = 379
        Top = 131
        Width = 114
        Height = 17
        Hint = 
          'Render the poly regardless of its zone mapping. During the zone ' +
          'mapping process, polys will sometimes be flagged as part of Zone' +
          ' 0, causing them to be invisible when the player is within the l' +
          'evel. Level designers can detect this class of hole by moving "i' +
          'nto geometry" (i.e., outside the level) while viewing the level ' +
          'from an editor window set to "Zone/Portal View." If the hole is ' +
          'replaced by a polygon colored unlike the rest of the polygons in' +
          ' the zone (usually dark gray), the "hole" can usually be patched' +
          ' by setting the PF_ForceViewZone flag. The patch can immediately' +
          ' be verified by moving inside the level. '
        Caption = 'Force View Zone'
        TabOrder = 12
      end
      object chkFakeBackdrop: TCheckBox
        Left = 259
        Top = 108
        Width = 97
        Height = 17
        Hint = 
          'Links the texture to the SkyZone actor. '#13#10'When looking into a Fa' +
          'ke Backdrop texture you will see what the Skyzone actor sees. '#13#10 +
          'Less technical meaning is it is used to create the background Sk' +
          'yBox texture visible in a level. '#13#10'Examples: a window or the cei' +
          'ling of an outdoor area.'
        Caption = 'Fake Backdrop'
        TabOrder = 13
      end
      object chkSmallWavy: TCheckBox
        Left = 259
        Top = 85
        Width = 97
        Height = 17
        Hint = 
          'Makes the texture move around in circles in a wavy fashion. '#13#10'Of' +
          'ten used for water but looks ugly when done this way. '#13#10'This is ' +
          'kinda like Panning except it'#39'll got in all four directions at ra' +
          'dom. '#13#10'Good for water in a pool.'
        Caption = 'Small Wavy'
        TabOrder = 14
      end
      object chkSpecialPoly: TCheckBox
        Left = 379
        Top = 85
        Width = 97
        Height = 17
        Caption = 'Special Poly'
        TabOrder = 15
      end
      object chkModulated: TCheckBox
        Left = 259
        Top = 62
        Width = 97
        Height = 17
        Hint = 
          'Multiplies the source and destination pixels by 2 (like the Phot' +
          'oshop "Multiply" mode). '#13#10'This results in:'#13#10'* color 0,0,0 = dark' +
          'en whatever is behind it'#13#10'* color 127,127,127 = no change'#13#10'* col' +
          'or 255, 255, 255 = brighten whatever is behind it'#13#10#13#10
        Caption = 'Modulated'
        TabOrder = 16
      end
      object chkTranslucent: TCheckBox
        Left = 259
        Top = 39
        Width = 97
        Height = 17
        Hint = 
          'Surface is transparent.'#13#10'The brightness of the color determines ' +
          'it'#39's opacity. i.e.'#13#10'* white is 100% opaque'#13#10'* a middle bright co' +
          'lour such as grey or medium yellow is partially transparent'#13#10'* b' +
          'lack is 100% translucent'#13#10
        Caption = 'Translucent'
        TabOrder = 17
      end
      object chkNoSmooth: TCheckBox
        Left = 259
        Top = 16
        Width = 97
        Height = 17
        Hint = 'Turns off all texture filtering and smoothing for the surface.'
        Caption = 'No Smooth'
        TabOrder = 18
      end
      object chkVpan: TCheckBox
        Left = 379
        Top = 39
        Width = 97
        Height = 17
        Hint = 
          'Texture will pan along the u-axis (horizontal) or the v-axis (ve' +
          'rtical) respectively. '#13#10'These axes are relative to the texture, ' +
          'so are dependant on how it'#39's been rotated, scaled of skewed. '#13#10'T' +
          'he panning speed is set for the whole zone the surface belongs t' +
          'o in the ZoneInfo actor'#39's TexUPanSpeed and TexVPanSpeed properti' +
          'es. '#13#10'Good for flowing water, clouds in the SkyBox. '
        Caption = 'V-Pan'
        TabOrder = 19
      end
      object chkUpan: TCheckBox
        Left = 379
        Top = 16
        Width = 97
        Height = 17
        Hint = 
          'Texture will pan along the u-axis (horizontal) or the v-axis (ve' +
          'rtical) respectively. '#13#10'These axes are relative to the texture, ' +
          'so are dependant on how it'#39's been rotated, scaled of skewed. '#13#10'T' +
          'he panning speed is set for the whole zone the surface belongs t' +
          'o in the ZoneInfo actor'#39's TexUPanSpeed and TexVPanSpeed properti' +
          'es. '#13#10'Good for flowing water, clouds in the SkyBox. '
        Caption = 'U-Pan'
        TabOrder = 20
      end
    end
    object TabSheet2: TTabSheet
      Caption = 'Align'
      ImageIndex = 1
      object gb_Pan: TGroupBox
        Left = 3
        Top = 0
        Width = 170
        Height = 81
        Caption = 'Pan'
        DefaultHeaderFont = False
        HeaderFont.Charset = DEFAULT_CHARSET
        HeaderFont.Color = clWindowText
        HeaderFont.Height = -12
        HeaderFont.Name = 'Segoe UI'
        HeaderFont.Style = [fsBold]
        TabOrder = 0
        object Label1: TLabel
          Left = 2
          Top = 17
          Width = 19
          Height = 62
          Align = alLeft
          Alignment = taRightJustify
          AutoSize = False
          Caption = 'U:'#13#10#13#10'V:'
        end
        object btnPanU1: TButton
          Tag = 1
          Left = 32
          Top = 14
          Width = 25
          Height = 25
          Caption = '1'
          TabOrder = 0
          OnClick = btnPanUClick
        end
        object btnPanU4: TButton
          Tag = 4
          Left = 58
          Top = 14
          Width = 25
          Height = 25
          Caption = '4'
          TabOrder = 1
          OnClick = btnPanUClick
        end
        object btnPanV64: TButton
          Tag = 64
          Left = 112
          Top = 44
          Width = 25
          Height = 25
          Caption = '64'
          TabOrder = 2
          OnClick = btnPanVClick
        end
        object btnPanV16: TButton
          Tag = 16
          Left = 85
          Top = 44
          Width = 25
          Height = 25
          Caption = '16'
          TabOrder = 3
          OnClick = btnPanVClick
        end
        object btnPanU16: TButton
          Tag = 16
          Left = 85
          Top = 14
          Width = 25
          Height = 25
          Caption = '16'
          TabOrder = 4
          OnClick = btnPanUClick
        end
        object btnPanV4: TButton
          Tag = 4
          Left = 58
          Top = 44
          Width = 25
          Height = 25
          Caption = '4'
          TabOrder = 5
          OnClick = btnPanVClick
        end
        object btnPanV1: TButton
          Tag = 1
          Left = 32
          Top = 44
          Width = 25
          Height = 25
          Caption = '1'
          TabOrder = 6
          OnClick = btnPanVClick
        end
        object btnPanU64: TButton
          Tag = 64
          Left = 112
          Top = 14
          Width = 25
          Height = 25
          Caption = '64'
          TabOrder = 7
          OnClick = btnPanUClick
        end
        object btnPanU128: TButton
          Tag = 128
          Left = 139
          Top = 13
          Width = 25
          Height = 25
          Caption = '128'
          TabOrder = 8
          OnClick = btnPanUClick
        end
        object btnPanV128: TButton
          Tag = 128
          Left = 139
          Top = 44
          Width = 25
          Height = 25
          Caption = '128'
          TabOrder = 9
          OnClick = btnPanVClick
        end
      end
      object gb_Rotation: TGroupBox
        Left = 179
        Top = 0
        Width = 346
        Height = 81
        Caption = 'Rotation'
        DefaultHeaderFont = False
        HeaderFont.Charset = DEFAULT_CHARSET
        HeaderFont.Color = clWindowText
        HeaderFont.Height = -12
        HeaderFont.Name = 'Segoe UI'
        HeaderFont.Style = [fsBold]
        TabOrder = 1
        DesignSize = (
          346
          81)
        object btnRotate0_5: TButton
          Left = 8
          Top = 13
          Width = 29
          Height = 25
          Caption = '0.5'#176
          TabOrder = 0
          OnClick = btnRotate0_5Click
        end
        object btnRotate1: TButton
          Left = 39
          Top = 13
          Width = 25
          Height = 25
          Caption = '1'#176
          TabOrder = 1
          OnClick = btnRotate1Click
        end
        object btnRotate11_25: TButton
          Left = 66
          Top = 13
          Width = 43
          Height = 25
          Caption = '11.25'#176
          TabOrder = 2
          OnClick = btnRotate11_25Click
        end
        object btnRotate22_5: TButton
          Left = 110
          Top = 13
          Width = 38
          Height = 25
          Caption = '22.5'#176
          TabOrder = 3
          OnClick = btnRotate22_5Click
        end
        object btnRotate45: TButton
          Left = 149
          Top = 13
          Width = 25
          Height = 25
          Caption = '45'#176
          TabOrder = 4
          OnClick = btnRotate45Click
        end
        object btnRotate90: TButton
          Left = 176
          Top = 13
          Width = 25
          Height = 25
          Caption = '90'#176
          TabOrder = 5
          OnClick = btnRotate90Click
        end
        object btnRotate180: TButton
          Left = 203
          Top = 13
          Width = 32
          Height = 25
          Caption = '180'#176
          TabOrder = 6
          OnClick = btnRotate180Click
        end
        object btnSmallDiagonal: TButton
          Left = 257
          Top = 13
          Width = 81
          Height = 25
          Hint = 'Small Diagonal'
          Caption = 'Small Diag.'
          TabOrder = 7
          OnClick = btnSmallDiagonalClick
        end
        object btnBigDiagonal: TButton
          Left = 257
          Top = 44
          Width = 81
          Height = 25
          Hint = 'Big Diagonal'
          Caption = 'Big Diagonal'
          TabOrder = 8
          OnClick = btnBigDiagonalClick
        end
        object btnFlipU: TButton
          Left = 8
          Top = 44
          Width = 43
          Height = 25
          Caption = 'Flip U'
          TabOrder = 9
          OnClick = btnFlipUClick
        end
        object btnFlipV: TButton
          Left = 52
          Top = 44
          Width = 43
          Height = 25
          Caption = 'Flip V'
          TabOrder = 10
          OnClick = btnFlipVClick
        end
        object se_CustomAngle: TJvSpinEdit
          Left = 190
          Top = 45
          Width = 61
          Height = 23
          Thousands = True
          Decimal = 3
          Increment = 0.001000000000000000
          ValueType = vtFloat
          Font.Charset = RUSSIAN_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Consolas'
          Font.Style = []
          ParentFont = False
          TabOrder = 11
          HideSelection = False
        end
        object btnApplyViewportRatio: TButton
          Left = 97
          Top = 44
          Width = 91
          Height = 25
          Anchors = [akTop, akRight]
          Caption = 'Apply Custom:'
          TabOrder = 12
          OnClick = btnApplyViewportRatioClick
        end
      end
      object gb_Alignment: TGroupBox
        Left = 3
        Top = 85
        Width = 258
        Height = 113
        Caption = 'Alignment'
        DefaultHeaderFont = False
        HeaderFont.Charset = DEFAULT_CHARSET
        HeaderFont.Color = clWindowText
        HeaderFont.Height = -12
        HeaderFont.Name = 'Segoe UI'
        HeaderFont.Style = [fsBold]
        TabOrder = 2
        object btnAlignFloor: TButton
          Left = 147
          Top = 25
          Width = 102
          Height = 25
          Caption = 'Floor/Ceiling'
          TabOrder = 0
        end
        object btnAlignOneTile: TButton
          Left = 147
          Top = 52
          Width = 102
          Height = 25
          Caption = 'One Tile'
          TabOrder = 1
        end
        object btnUnalign: TButton
          Left = 192
          Top = 79
          Width = 57
          Height = 25
          Caption = 'Unalign'
          TabOrder = 2
          OnClick = btnUnalignClick
        end
        object btnAlignWallDir: TButton
          Left = 8
          Top = 25
          Width = 102
          Height = 25
          Caption = 'Wall Direction'
          TabOrder = 3
        end
        object btnAlignWallColumn: TButton
          Left = 8
          Top = 79
          Width = 102
          Height = 25
          Caption = 'Wall Column:'
          TabOrder = 4
        end
        object btnAlignWallPan: TButton
          Left = 8
          Top = 52
          Width = 102
          Height = 25
          Caption = 'Wall Pan'
          TabOrder = 5
        end
        object se_WallColumnTexels: TJvSpinEdit
          Left = 112
          Top = 80
          Width = 69
          Height = 23
          ValueType = vtFloat
          Value = 256.000000000000000000
          Font.Charset = RUSSIAN_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Consolas'
          Font.Style = []
          ParentFont = False
          TabOrder = 6
        end
      end
      object GroupBox2: TGroupBox
        Left = 267
        Top = 85
        Width = 258
        Height = 113
        Caption = 'Scaling'
        DefaultHeaderFont = False
        HeaderFont.Charset = DEFAULT_CHARSET
        HeaderFont.Color = clWindowText
        HeaderFont.Height = -12
        HeaderFont.Name = 'Segoe UI'
        HeaderFont.Style = [fsBold]
        TabOrder = 3
        object Label2: TLabel
          AlignWithMargins = True
          Left = 5
          Top = 20
          Width = 52
          Height = 88
          Align = alLeft
          Alignment = taRightJustify
          Caption = 'Simple:'#13#10#13#10'Texture U:'#13#10#13#10'Texture V:'
          ExplicitHeight = 75
        end
        object cmbScale: TComboBox
          Left = 63
          Top = 20
          Width = 89
          Height = 23
          ItemIndex = 8
          TabOrder = 0
          Text = '1.0'#10
          Items.Strings = (
            '0.0625'
            '0.09375'
            '0.125'
            '0.1875'
            '0.25'
            '0.375'
            '0.5'
            '0.75'
            '1.0'#10
            '1.125'
            #10'1.25'
            #10'1.375'
            #10'1.5'
            #10'1.625'
            #10'1.75'
            #10'1.875'
            #10'2.0'
            #10'4.0'
            #10'8.0'#10
            '16.0')
        end
        object JvSpinEdit1: TJvSpinEdit
          Left = 63
          Top = 77
          Width = 89
          Height = 23
          Decimal = 6
          ValueType = vtFloat
          Font.Charset = RUSSIAN_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Consolas'
          Font.Style = []
          ParentFont = False
          TabOrder = 1
        end
        object JvSpinEdit2: TJvSpinEdit
          Left = 63
          Top = 49
          Width = 89
          Height = 23
          Decimal = 6
          ValueType = vtFloat
          Font.Charset = RUSSIAN_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Consolas'
          Font.Style = []
          ParentFont = False
          TabOrder = 2
        end
        object btnApplySimpleScaling: TButton
          Left = 158
          Top = 18
          Width = 51
          Height = 25
          Caption = 'Apply'
          TabOrder = 3
        end
        object btnApply_UV_Scaling: TButton
          Left = 157
          Top = 49
          Width = 52
          Height = 52
          Caption = 'Apply'
          TabOrder = 4
        end
      end
    end
    object TabSheet3: TTabSheet
      Caption = 'Stats'
      ImageIndex = 2
      object mmoStats: TMemo
        Left = 0
        Top = 0
        Width = 525
        Height = 201
        Align = alClient
        Color = clBtnFace
        Font.Charset = RUSSIAN_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Consolas'
        Font.Style = []
        Lines.Strings = (
          'mmoStats')
        ParentFont = False
        ScrollBars = ssVertical
        TabOrder = 0
      end
    end
  end
  object btnClose: TButton
    Left = 456
    Top = 250
    Width = 75
    Height = 25
    Anchors = [akRight, akBottom]
    Caption = 'Close'
    TabOrder = 1
    OnClick = btnCloseClick
  end
end
