object frmMain: TfrmMain
  Left = 0
  Top = 0
  HorzScrollBar.Visible = False
  VertScrollBar.Visible = False
  Caption = 'DxEditPlus'
  ClientHeight = 600
  ClientWidth = 800
  Color = clBtnFace
  Constraints.MinHeight = 400
  Constraints.MinWidth = 600
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  Menu = mnuMainForm
  Position = poScreenCenter
  ShowHint = True
  OnClose = FormClose
  OnCreate = FormCreate
  OnMouseMove = FormMouseMove
  DesignSize = (
    800
    600)
  TextHeight = 15
  object ButtonsPanel: TEsPanel
    Left = 0
    Top = 32
    Width = 120
    Height = 536
    Align = alLeft
    Color = clGray
    ParentBackground = False
    ParentColor = False
    TabOrder = 0
    FrameStyle = None
    FrameColor = 8421440
    object ButtonGroups: TCategoryPanelGroup
      Left = 0
      Top = 0
      Width = 120
      Height = 536
      VertScrollBar.Tracking = True
      Align = alClient
      ChevronHotColor = clBlue
      GradientBaseColor = clGray
      GradientDirection = gdHorizontal
      HeaderAlignment = taRightJustify
      HeaderFont.Charset = DEFAULT_CHARSET
      HeaderFont.Color = clWindowText
      HeaderFont.Height = -12
      HeaderFont.Name = 'Segoe UI'
      HeaderFont.Style = []
      TabOrder = 0
      OnMouseWheel = ButtonGroupsMouseWheel
      object catExtra: TCategoryPanel
        Top = 530
        Color = clGray
        TabOrder = 0
      end
      object catOperations: TCategoryPanel
        Top = 330
        Color = clGray
        TabOrder = 1
      end
      object catBrushBuilders: TCategoryPanel
        Top = 130
        Color = clGray
        TabOrder = 2
        object bbCube: TSpeedButton
          Left = 0
          Top = 0
          Width = 30
          Height = 30
          Hint = 
            'Build a Cube Brush (default: Simple, 256x256x256).'#13#10'Right click ' +
            'for options.'
          ImageIndex = 0
          Images = BrushBuildersImages
          Layout = blGlyphTop
          Transparent = False
          OnMouseDown = bbCubeMouseDown
        end
        object bbSheet: TSpeedButton
          Left = 32
          Top = 0
          Width = 30
          Height = 30
          Hint = 'Build a Cube Brush (default: 256x256x256)'
          ImageIndex = 1
          Images = BrushBuildersImages
          Layout = blGlyphTop
          Transparent = False
          OnMouseDown = bbSheetMouseDown
        end
      end
      object catBrushMode: TCategoryPanel
        Top = 0
        Height = 130
        Color = clGray
        Ctl3D = True
        ParentCtl3D = False
        TabOrder = 3
        object sbViewportMove: TSpeedButton
          Left = 0
          Top = 0
          Width = 30
          Height = 30
          Hint = 'Camera Move'
          GroupIndex = 1
          Down = True
          ImageIndex = 0
          Images = EditorModeImages
          Layout = blGlyphTop
          Transparent = False
          StyleElements = []
          StyleName = 'Windows'
          OnClick = sbViewportMoveClick
        end
        object sbBrushSheer: TSpeedButton
          Left = 32
          Top = 0
          Width = 30
          Height = 30
          Hint = 'Brush Sheer'
          GroupIndex = 1
          ImageIndex = 1
          Images = EditorModeImages
          Layout = blGlyphTop
          Transparent = False
          StyleElements = []
          StyleName = 'Windows'
          OnClick = sbBrushSheerClick
        end
        object sbBrushScale: TSpeedButton
          Left = 64
          Top = 0
          Width = 30
          Height = 30
          Hint = 'Brush Scale Uniform'
          GroupIndex = 1
          ImageIndex = 2
          Images = EditorModeImages
          Layout = blGlyphTop
          Transparent = False
          StyleName = 'Windows'
          OnClick = sbBrushScaleClick
        end
        object sbBrushRotate: TSpeedButton
          Left = 64
          Top = 32
          Width = 30
          Height = 30
          Hint = 'Brush Rotate'
          GroupIndex = 1
          ImageIndex = 5
          Images = EditorModeImages
          Layout = blGlyphTop
          Transparent = False
          StyleName = 'Windows'
          OnClick = sbBrushRotateClick
        end
        object sbSnapBrushStretch: TSpeedButton
          Left = 32
          Top = 32
          Width = 30
          Height = 30
          Hint = 'Brush Scale Snap'
          GroupIndex = 1
          ImageIndex = 4
          Images = EditorModeImages
          Layout = blGlyphTop
          Transparent = False
          StyleName = 'Windows'
          OnClick = sbSnapBrushStretchClick
        end
        object sbTextureRotate: TSpeedButton
          Left = 32
          Top = 64
          Width = 30
          Height = 30
          Hint = 'Rotate Textures'
          GroupIndex = 1
          ImageIndex = 7
          Images = EditorModeImages
          Layout = blGlyphTop
          Transparent = False
          StyleName = 'Windows'
          OnClick = sbTextureRotateClick
        end
        object sbTexturePan: TSpeedButton
          Left = 0
          Top = 64
          Width = 30
          Height = 30
          Hint = 'Pan Textures'
          GroupIndex = 1
          ImageIndex = 6
          Images = EditorModeImages
          Layout = blGlyphTop
          Transparent = False
          StyleName = 'Windows'
          OnClick = sbTexturePanClick
        end
        object sbBrushStretch: TSpeedButton
          Left = 0
          Top = 32
          Width = 30
          Height = 30
          Hint = 'Brush Scale Axial'
          GroupIndex = 1
          ImageIndex = 3
          Images = EditorModeImages
          Layout = blGlyphTop
          Transparent = False
          StyleName = 'Windows'
          OnClick = sbBrushStretchClick
        end
      end
    end
  end
  object CommandBar: TEsPanel
    Left = 0
    Top = 568
    Width = 800
    Height = 32
    Align = alBottom
    Color = clGray
    ParentBackground = False
    ParentColor = False
    TabOrder = 1
    FrameStyle = None
    FrameColor = 8421440
    DesignSize = (
      800
      32)
    object Label1: TLabel
      Left = 6
      Top = 6
      Width = 75
      Height = 23
      Alignment = taRightJustify
      AutoSize = False
      Caption = 'Command:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Verdana'
      Font.Style = [fsBold]
      ParentFont = False
      Layout = tlCenter
    end
    object sbLog: TJppBasicSpeedButton
      Left = 394
      Top = 6
      Width = 22
      Height = 22
      Caption = ''
      Appearance.Normal.Color = clGray
      Appearance.Normal.FontColor = clWindowText
      Appearance.Normal.BorderColor = 6579300
      Appearance.Normal.BorderWidth = 1
      Appearance.Hot.Color = 10526880
      Appearance.Hot.FontColor = clHighlightText
      Appearance.Hot.BorderColor = clHighlight
      Appearance.Hot.BorderWidth = 1
      Appearance.Down.Color = 11053224
      Appearance.Down.FontColor = clHighlightText
      Appearance.Down.BorderColor = 4921863
      Appearance.Down.BorderWidth = 1
      Appearance.Disabled.Color = 13555418
      Appearance.Disabled.FontColor = clBtnShadow
      Appearance.Disabled.BorderColor = clBtnShadow
      Appearance.Disabled.BorderWidth = 1
      Appearance.MoveWhenDown = True
      Appearance.ShowCaption = False
      PngImage.Data = {
        89504E470D0A1A0A0000000D49484452000000140000001408060000008D891D
        0D000000017352474200AECE1CE9000000097048597300000EC300000EC301C7
        6FA8640000005D4944415478DA633C70E0C07F062A024690810E0E0706B9812E
        2E2E0CBF7FFFA6D8305656564C034D66CD22D9A0336969B80DA4890B413692E2
        52FABB905857C1D4D2D78503E66574EFD3D785833FD910E3C261906CA80518A9
        5D05000094599E41A83EBBF70000000049454E44AE426082}
      Layout = blGlyphTop
      AutoWidth = False
      OnClick = sbLogClick
    end
    object cmbCommand: TComboBox
      Left = 83
      Top = 6
      Width = 305
      Height = 23
      TabOrder = 0
      TextHint = 'Enter command and press Enter'
      OnKeyDown = cmbCommandKeyDown
    end
    object cmbLeftPanelsWidthRatio: TComboBox
      Left = 736
      Top = 6
      Width = 57
      Height = 22
      Hint = 'Left viewports width ratio'
      Style = csOwnerDrawFixed
      Anchors = [akTop, akRight]
      ItemIndex = 1
      TabOrder = 1
      Text = '65%'
      Items.Strings = (
        '50%'
        '65%'
        '75%')
    end
    object ProgressBar: TProgressBar
      Left = 0
      Top = 0
      Width = 800
      Height = 6
      Align = alTop
      Smooth = True
      BarColor = 16744448
      BackgroundColor = clWhite
      TabOrder = 2
    end
    object btnApplyViewportRatio: TButton
      Left = 707
      Top = 8
      Width = 28
      Height = 22
      Anchors = [akTop, akRight]
      Caption = 'Ok'
      TabOrder = 3
      OnClick = btnApplyViewportRatioClick
    end
    object ProgressText: TStaticText
      Left = 428
      Top = 6
      Width = 241
      Height = 19
      Alignment = taCenter
      AutoSize = False
      Caption = 'ProgressText'
      TabOrder = 4
    end
  end
  object ViewportsPanel: TEsPanel
    Left = 119
    Top = 32
    Width = 681
    Height = 536
    Anchors = [akLeft, akTop, akRight, akBottom]
    Color = clSilver
    ParentBackground = False
    ParentColor = False
    TabOrder = 2
    FrameStyle = None
  end
  object ToolbarPanel: TEsPanel
    Left = 0
    Top = 0
    Width = 800
    Height = 32
    Align = alTop
    Color = clGray
    ParentBackground = False
    ParentColor = False
    TabOrder = 3
    FrameStyle = None
    object ToolBar1: TToolBar
      AlignWithMargins = True
      Left = 3
      Top = 3
      Width = 794
      Height = 29
      ButtonHeight = 26
      ButtonWidth = 27
      Caption = 'ToolBar1'
      DrawingStyle = dsGradient
      GradientEndColor = clGray
      GradientStartColor = clGray
      Images = ToolbarImages
      TabOrder = 0
      Transparent = False
      object ToolButton1: TToolButton
        Left = 0
        Top = 0
        Width = 8
        Caption = 'ToolButton1'
        Style = tbsSeparator
      end
    end
  end
  object Callback: TEdit
    Left = 671
    Top = 539
    Width = 121
    Height = 23
    TabOrder = 4
    Visible = False
    OnKeyPress = CallbackKeyPress
  end
  object mnuMainForm: TMainMenu
    Left = 616
    Top = 96
    object File1: TMenuItem
      Caption = 'File'
      object New1: TMenuItem
        Caption = 'New...'
      end
      object Open1: TMenuItem
        Caption = 'Open...'
      end
      object N2: TMenuItem
        Caption = '-'
      end
      object Savecurrentmap1: TMenuItem
        Caption = 'Save current map'
      end
      object Savecurrentmapas1: TMenuItem
        Caption = 'Save current map as...'
      end
      object N6: TMenuItem
        Caption = '-'
      end
      object Import1: TMenuItem
        Caption = 'Import...'
      end
      object Export1: TMenuItem
        Caption = 'Export...'
      end
      object N7: TMenuItem
        Caption = '-'
      end
      object Recentfiles1: TMenuItem
        Caption = 'Recent files'
        object N11: TMenuItem
          Caption = '1'
        end
        object N21: TMenuItem
          Caption = '2'
        end
        object N31: TMenuItem
          Caption = '3'
        end
        object N41: TMenuItem
          Caption = '4'
        end
        object N51: TMenuItem
          Caption = '5'
        end
        object N61: TMenuItem
          Caption = '6'
        end
        object N71: TMenuItem
          Caption = '7'
        end
        object N91: TMenuItem
          Caption = '9'
        end
        object N101: TMenuItem
          Caption = '10'
        end
      end
      object N8: TMenuItem
        Caption = '-'
      end
      object Exit1: TMenuItem
        Caption = 'Exit'
      end
    end
    object Edit1: TMenuItem
      Caption = 'Edit'
      object Undo1: TMenuItem
        Caption = 'Undo'
      end
      object Redo1: TMenuItem
        Caption = 'Redo'
      end
      object N9: TMenuItem
        Caption = '-'
      end
      object Searchforactors1: TMenuItem
        Caption = 'Search for actors...'
      end
      object N10: TMenuItem
        Caption = '-'
      end
      object Cut1: TMenuItem
        Caption = 'Cut'
      end
      object Copy1: TMenuItem
        Caption = 'Copy'
      end
      object Paste1: TMenuItem
        Caption = 'Paste'
      end
      object Delete1: TMenuItem
        Caption = 'Delete'
      end
      object N12: TMenuItem
        Caption = '-'
      end
      object Duplicate1: TMenuItem
        Caption = 'Duplicate'
      end
      object N13: TMenuItem
        Caption = '-'
      end
      object SelectNone1: TMenuItem
        Caption = 'Select None'
      end
      object SelectAllActors1: TMenuItem
        Caption = 'Select All Actors'
      end
      object InvertSelection1: TMenuItem
        Caption = 'Invert Selection'
      end
      object SelectSurfaces1: TMenuItem
        Caption = 'Select Surfaces'
        object LotsofstuffIveneverused1: TMenuItem
          Caption = 'Lots of stuff I'#39've never used...'
        end
      end
    end
    object View1: TMenuItem
      Caption = 'View'
      object ActorClassBrowser1: TMenuItem
        Caption = 'Actor Class Browser'
        OnClick = ActorClassBrowser1Click
      end
      object GroupBrowser1: TMenuItem
        Caption = 'Group Browser'
      end
      object Masterbrowser1: TMenuItem
        Caption = 'Master browser'
        OnClick = Masterbrowser1Click
      end
      object MeshBrowser1: TMenuItem
        Caption = 'Mesh Browser'
      end
      object Musicbrowser1: TMenuItem
        Caption = 'Music browser'
      end
      object ScriptEditor1: TMenuItem
        Caption = 'Script Editor'
      end
      object SoundBrowser1: TMenuItem
        Caption = 'Sound Browser'
      end
      object extureBrowser1: TMenuItem
        Caption = 'Texture Browser'
        OnClick = extureBrowser1Click
      end
      object N14: TMenuItem
        Caption = '-'
      end
      object Log1: TMenuItem
        Caption = 'Log'
      end
      object ActorProperties1: TMenuItem
        Caption = 'Actor Properties'
      end
      object Surfaceproperties1: TMenuItem
        Caption = 'Surface properties'
      end
      object LevelProperties2: TMenuItem
        Caption = 'Level Properties'
      end
      object DeusExLevelInfoProperties2: TMenuItem
        Caption = 'DeusExLevelInfo Properties'
      end
      object N15: TMenuItem
        Caption = '-'
      end
      object Viewports1: TMenuItem
        Caption = 'Viewports'
        object Implementsomething1: TMenuItem
          Caption = 'Implement something'
        end
      end
    end
    object Brush1: TMenuItem
      Caption = 'Brush'
      object Reset1: TMenuItem
        Caption = 'Reset'
        object MoveToOrigin1: TMenuItem
          Caption = 'Move To Origin'
        end
        object ResetPivot1: TMenuItem
          Caption = 'Reset Pivot'
        end
        object ResetRotation1: TMenuItem
          Caption = 'Reset Rotation'
        end
        object ResetScaling1: TMenuItem
          Caption = 'Reset Scaling'
        end
        object ResetAll1: TMenuItem
          Caption = 'Reset All'
        end
      end
      object N16: TMenuItem
        Caption = '-'
      end
      object mniBrushAdd: TMenuItem
        Caption = 'Add'
      end
      object mniBrushSubtract: TMenuItem
        Caption = 'Subtract'
      end
      object Intersect1: TMenuItem
        Caption = 'Intersect'
      end
      object DeIntersect1: TMenuItem
        Caption = 'Deintersect'
      end
      object N17: TMenuItem
        Caption = '-'
      end
      object AddMover1: TMenuItem
        Caption = 'Add Mover'
      end
      object AddDeusExMover1: TMenuItem
        Caption = 'Add DeusExMover'
      end
      object AddSpecial1: TMenuItem
        Caption = 'Add Special...'
      end
      object N18: TMenuItem
        Caption = '-'
      end
      object OpenBrush1: TMenuItem
        Caption = 'Open Brush...'
      end
      object SaveBrushAs1: TMenuItem
        Caption = 'Save Brush As...'
      end
      object N19: TMenuItem
        Caption = '-'
      end
      object Import2: TMenuItem
        Caption = 'Import...'
      end
      object Export2: TMenuItem
        Caption = 'Export...'
      end
      object Export3: TMenuItem
        Caption = 'Export...'
      end
    end
    object Build1: TMenuItem
      Caption = 'Build'
      object PlayLevel1: TMenuItem
        Caption = 'Play Level'
      end
      object N4: TMenuItem
        Caption = '-'
      end
      object RebuildBSPonly1: TMenuItem
        Caption = 'Rebuild BSP Only'
      end
      object RebuildGeometryonly1: TMenuItem
        Caption = 'Rebuild Geometry Only'
      end
      object RebuildLightingOnly1: TMenuItem
        Caption = 'Rebuild Lighting Only'
      end
      object RebuildAIPaths1: TMenuItem
        Caption = 'Rebuild AI Paths'
      end
      object BuildAll1: TMenuItem
        Caption = 'Build All'
      end
      object N5: TMenuItem
        Caption = '-'
      end
      object BuildOptions1: TMenuItem
        Caption = 'Build Options...'
        OnClick = BuildOptions1Click
      end
    end
    object ools1: TMenuItem
      Caption = 'Tools'
      object AdvancedOptions1: TMenuItem
        Caption = 'Advanced Options'
        OnClick = AdvancedOptions1Click
      end
      object N2DShapeEditor1: TMenuItem
        Caption = '2D Shape Editor'
      end
    end
    object Help1: TMenuItem
      Caption = 'Help'
      object Placeholder1: TMenuItem
        Caption = 'Placeholder'
      end
      object ServerSetCurrentClass1: TMenuItem
        Caption = 'ServerSetCurrentClass'
        OnClick = ServerSetCurrentClass1Click
      end
    end
  end
  object ViewportPopup: TPopupMenu
    Left = 392
    Top = 304
    object AddLighthere1: TMenuItem
      Caption = 'Add Light here'
    end
    object N1: TMenuItem
      Caption = '-'
    end
    object RotationGrid1: TMenuItem
      Caption = 'Rotation Grid'
      object N16Units2: TMenuItem
        Caption = '16 Units'
      end
      object N32Units2: TMenuItem
        Caption = '32 Units'
      end
      object N64Units2: TMenuItem
        Caption = '64 Units'
      end
      object N128Units2: TMenuItem
        Caption = '128 Units'
      end
      object N256Units2: TMenuItem
        Caption = '256 Units'
      end
      object N512Units1: TMenuItem
        Caption = '512 Units'
      end
      object N1024Unitsdefault1: TMenuItem
        Caption = '1024 Units (default)'
      end
    end
    object Grid1: TMenuItem
      Caption = 'Grid'
      object N1unit1: TMenuItem
        Caption = '1 unit'
      end
      object N2units1: TMenuItem
        Caption = '2 units'
      end
      object N4units1: TMenuItem
        Caption = '4 units'
      end
      object N8units1: TMenuItem
        Caption = '8 units'
      end
      object N16units1: TMenuItem
        Caption = '16 units'
      end
      object N32units1: TMenuItem
        Caption = '32 units'
      end
      object N64units1: TMenuItem
        Caption = '64 units'
      end
      object N128units1: TMenuItem
        Caption = '128 units'
      end
      object N256units1: TMenuItem
        Caption = '256 units'
      end
    end
    object Pivot1: TMenuItem
      Caption = 'Pivot'
      object Placepivotsnappedhere1: TMenuItem
        Caption = 'Place Pivot Snapped here'
      end
      object PlacePivothere1: TMenuItem
        Caption = 'Place Pivot here'
      end
    end
    object N3: TMenuItem
      Caption = '-'
    end
    object Levelproperties1: TMenuItem
      Caption = 'Level properties'
      OnClick = Levelproperties1Click
    end
    object DeusExLevelInfoproperties1: TMenuItem
      Caption = 'DeusExLevelInfo properties'
      OnClick = DeusExLevelInfoproperties1Click
    end
  end
  object ActorSelectedPopup: TPopupMenu
    AutoHotkeys = maManual
    AutoLineReduction = maManual
    MenuAnimation = [maNone]
    Left = 391
    Top = 368
    object mniSelectedProperties: TMenuItem
      Caption = 'Properties of selected'
      ImageIndex = 4
    end
    object mnuMoverKeys: TMenuItem
      Bitmap.Data = {
        460E0000424D460E00000000000036000000280000001E0000001E0000000100
        200000000000100E0000120B0000120B00000000000000000000808080FF8080
        80FF808080FF808080FF808080FF808080FF808080FF808080FF808080FF8080
        80FF808080FF808080FF808080FF808080FF808080FF808080FF808080FF8080
        80FF808080FF808080FF808080FF808080FF808080FF808080FF808080FF8080
        80FF808080FF808080FF808080FF808080FF808080FF808080FF808080FF8080
        80FF808080FF808080FF808080FF808080FF808080FF808080FF808080FF8080
        80FF808080FF808080FF808080FF808080FF808080FF808080FF808080FF8080
        80FF808080FF808080FF808080FF808080FF808080FF808080FF808080FF8080
        80FF808080FF808080FF808080FF808080FF808080FF808080FF808080FF8080
        80FF808080FF808080FF818181FF808080FF808080FF808080FF808080FF8080
        80FF808080FF808080FF808080FF808080FF808080FF7F7F7FFF808080FF8080
        80FF808080FF808080FF808080FF808080FF7A7B79FF808080FF808080FF8080
        80FF808080FF808080FF808080FF808080FF808080FF808080FF808080FF8080
        80FF808080FF808080FF808080FF808080FF808080FF808080FF808080FF8080
        80FF808080FF808080FF808080FF808080FF808080FF808080FF808080FF7A7B
        79FF71726EFF656760FF57594FFF6D6E69FF808080FF808080FF808080FF8080
        80FF808080FF808080FF808080FF808080FF808080FF808080FF808080FF8080
        80FF808080FF808080FF808080FF808080FF808080FF808080FF808080FF8080
        80FF808080FF808080FF808080FF6F7071FF5E6066FF525549FF474B3CFF4549
        3AFF45493AFF4E5145FF71726EFF808080FF808080FF808080FF808080FF8080
        80FF808080FF808080FF808080FF808080FF808080FF808080FF808080FF8080
        80FF808080FF808080FF808080FF808080FF808080FF808080FF71726EFF7172
        6EFF515449FF474B3BFF494D3DFF4A4F3EFF535848FF4F5344FF45493AFF5B5D
        54FF808080FF808080FF808080FF808080FF808080FF808080FF808080FF8080
        80FF808080FF808080FF808080FF808080FF808080FF808080FF808080FF8080
        80FF808080FF7A7B79FF6F7073FF575A50FF464A3BFF45493AFF45493AFF5257
        45FF6B7254FF899369FF9BA674FF636951FF45493AFF686A64FF808080FF8080
        80FF808080FF808080FF808080FF808080FF808080FF808080FF808080FF8080
        80FF808080FF808080FF808080FF808080FF7A7B79FF73746FFF6B6F5FFF494D
        3FFF494D3DFF45493AFF4C5143FF565B4EFF747C5AFFA4B07BFFA4B07BFFA4B0
        7BFFA4B07BFF565B46FF45493AFF71726EFF808080FF808080FF808080FF8080
        80FF808080FF808080FF808080FF808080FF808080FF808080FF808080FF8080
        80FF71726EFF5A5C6AFF505347FF484C3DFF484C3CFF4A4E3DFF585D47FF747C
        5AFFA4B07BFFA4B07BFFB8C588FFB8C588FFB8C588FFA4B07BFF919B6EFF484D
        3CFF57594FFF7A7B79FF808080FF808080FF808080FF808080FF808080FF8080
        80FF808080FF808080FF808080FF71726EFF71726EFF5B5D54FF4B4E41FF464A
        3AFF4B503FFF575C46FF6B7254FF899369FFA4B07BFFC6D493FFC4D291FFC4D2
        91FFC4D291FFB8C588FFB8C588FFB8C588FF747B5AFF45493AFF60625AFF8080
        80FF808080FF808080FF808080FF808080FF808080FF808080FF7A7B79FF7172
        6EFF5B5D54FF505347FF494D3FFF45493AFF525743FF71785AFF8E986DFFA8B4
        7EFFCCDA96FFCAD895FFDBEAA2FFDBEAA2FFCFDD99FFCAD895FFD5E39DFFCAD8
        95FFB8C588FFA4B07BFF4F5341FF4B4E41FF71726EFF808080FF808080FF8080
        80FF808080FF808080FF71726EFF656760FF57594FFF4C4F42FF45493AFF4B4E
        3EFF656B50FF808863FFB1BD84FFCFDE99FFD4E29DFFDCEBA3FF323447FF1A1A
        3AFFBDC992FFE4F2A7FFDAE8A1FFD5E39DFFD7E59FFFCAD895FFC4D291FFA3AF
        7BFF45493AFF505347FF71726EFF808080FF808080FF808080FF808080FF7778
        75FF494E3EFF474B3DFF474B3CFF535745FF727959FFB2BE85FFCDDB9AFFECF8
        B3FFEBFAADFFE7F6ABFFE6F4AAFFEBFAADFF656A62FF1A1A3AFF8C9478FFDBEA
        A2FFD5E39DFFD4E19FFFD7E6A0FFC7D593FFC4D291FF7E8661FF45493AFF5B5D
        54FF808080FF808080FF808080FF808080FF7B7B7AFF5A5E52FF4A4E3EFF4B50
        3EFF808862FFCDDB9AFFEAF9ADFFE4F4A8FFECFCAEFFEEFDB0FFEBFAADFFEBFA
        ADFFEBFAADFFEBFAADFFE9F8ACFFE4F2A7FFE7F6ABFFE4F2A7FFE7F6ABFFDCEA
        A3FFD2E09CFFC7D593FFB8C588FF6A7054FF45493AFF686A64FF808080FF8080
        80FF808080FF808080FF808080FF7C7D78FF4A4F3EFF45493AFF525743FF8E98
        6CFFCDDB9AFFEAF9ADFFEAF9ADFFEBFAADFFEBFAADFFE9F8ADFFEBFAADFFEBFA
        ADFFC9D59AFF1A1A3AFF323447FFE2F1A6FFE0EFA6FFE4F2A7FFDBEAA2FFCAD8
        95FFA4B07BFF515643FF4D5144FF71726EFF808080FF808080FF808080FF8080
        80FF808080FF808080FF818478FF45493AFF45493AFF515641FF717959FFA3AF
        7BFFEAF9ADFFEAF9ADFFE9F8ACFFEEFDB0FFEBFAADFFE7F6AAFFE9F8ACFF7980
        6EFF1A1A3AFF4B4E54FFCAD698FFDBEAA2FFE0EFA6FFD0DF9BFF919B6EFF474B
        3BFF57594FFF7A7B79FF808080FF808080FF808080FF808080FF808080FF8080
        80FF828282FF888888FF5B5D58FF45493AFF45493AFF45493AFF879067FFEAF9
        ADFFEAF9ADFFEAF9ADFFEEFDB0FFEDFCAFFFEAF8ADFFE7F5AAFF9EA883FF2323
        3EFF252640FFB1BC8CFFDEEDA4FFC8D794FF747C5AFF45493AFF60625AFF8080
        80FF808080FF808080FF808080FF808080FF808080FF808080FF808080FF8080
        80FF858585FF747572FF4D4F47FF45493AFF45493AFF5B6147FFCDDB9AFFEAF9
        ADFFEAF9ADFFE6F5AAFFEBFAADFFEBFAADFFEBFAADFFB2BD8DFF1A1A3AFF3335
        48FFE5F4AAFFB1BD84FF595E47FF474B3DFF71726EFF808080FF808080FF8080
        80FF808080FF808080FF808080FF808080FF808080FF808080FF808080FF8181
        81FF878787FF63645FFF45493AFF45493AFF45493AFFB6C288FFEAF9ADFFD4E3
        9DFF1A1A3AFFABB68AFFE0EFA7FFC4D097FF1A1A3AFF2A2B42FFE1F0A6FFAEBA
        82FF4C503FFF464A3DFF71726EFF808080FF808080FF808080FF808080FF8080
        80FF808080FF808080FF808080FF808080FF808080FF808080FF808080FF8080
        80FF71726EFF57594FFF494D3FFF45493AFF61674DFFB6C288FFC2D091FF1A1A
        39FF333548FF1E1F3CFF3E404EFFAAB589FFD1DF99FF7E8761FF45493AFF5055
        40FF808080FF808080FF808080FF808080FF808080FF808080FF808080FF8080
        80FF808080FF808080FF808080FF808080FF808080FF808080FF808080FF8080
        80FF5F6259FF4C5043FF45493AFF45493AFFA7B47DFFC0CD90FFDAE9A2FFDDEC
        A4FFEAF9ADFFE7F5AAFFC3D090FF6B7153FF45493AFF5F644CFF808080FF8080
        80FF808080FF808080FF808080FF808080FF808080FF808080FF808080FF8080
        80FF808080FF808080FF808080FF808080FF808080FF808080FF808080FF7172
        6EFF57594FFF45493AFF45493AFF65685BFFADB786FFC9D794FFDEECA4FFEBFA
        ADFFA7B47DFF545944FF505542FF72736EFF808080FF808080FF808080FF8080
        80FF808080FF808080FF808080FF808080FF808080FF808080FF808080FF8080
        80FF808080FF808080FF808080FF808080FF808080FF808080FF808080FF5F62
        59FF4E5144FF45493AFF494E3DFF929B73FFC6D492FFC6D492FF899369FF4A4F
        3EFF585B4EFF7A7B79FF808080FF808080FF808080FF808080FF808080FF8080
        80FF808080FF808080FF808080FF808080FF808080FF808080FF808080FF8080
        80FF808080FF808080FF808080FF808080FF808080FF808080FF6D6E69FF5356
        4BFF494D3FFF45493AFF7C8560FFADB980FF6B7254FF4A4E3EFF656760FF8080
        80FF808080FF808080FF808080FF808080FF808080FF808080FF808080FF8080
        80FF808080FF808080FF808080FF808080FF808080FF808080FF808080FF8080
        80FF808080FF808080FF808080FF808080FF808080FF7A7B79FF5F6259FF4E51
        44FF4D5140FF5B624AFF545944FF4F5442FF71726EFF808080FF808080FF8080
        80FF808080FF808080FF808080FF808080FF808080FF808080FF808080FF8080
        80FF808080FF808080FF808080FF808080FF808080FF808080FF808080FF8080
        80FF808080FF808080FF808080FF808080FF808080FF6D6E69FF53564BFF484C
        3EFF464A3BFF4D5144FF71726EFF808080FF808080FF808080FF808080FF8080
        80FF808080FF808080FF808080FF808080FF808080FF808080FF808080FF8080
        80FF808080FF808080FF808080FF808080FF808080FF808080FF808080FF8080
        80FF808080FF808080FF808080FF808080FF7A7B79FF525549FF45493AFF5558
        4DFF808080FF808080FF808080FF808080FF808080FF808080FF808080FF8080
        80FF808080FF808080FF808080FF808080FF808080FF808080FF808080FF8080
        80FF808080FF808080FF808080FF808080FF808080FF808080FF808080FF8080
        80FF808080FF808080FF808080FF808080FF5B5D54FF808080FF808080FF8080
        80FF808080FF808080FF808080FF808080FF808080FF808080FF808080FF8080
        80FF808080FF808080FF808080FF808080FF808080FF808080FF808080FF8080
        80FF808080FF808080FF808080FF808080FF808080FF808080FF808080FF8080
        80FF808080FF808080FF808080FF808080FF808080FF808080FF808080FF8080
        80FF808080FF808080FF808080FF808080FF808080FF808080FF808080FF8080
        80FF808080FF808080FF808080FF808080FF808080FF808080FF808080FF8080
        80FF808080FF808080FF808080FF808080FF808080FF808080FF808080FF8080
        80FF808080FF808080FF808080FF808080FF808080FF808080FF808080FF8080
        80FF808080FF808080FF}
      Caption = 'Mover Keyframe'
      object mniMoverKey0: TMenuItem
        Caption = 'Key 0 (Base)'
        OnClick = SetMoverKeyClick
      end
      object mniMoverKey1: TMenuItem
        Tag = 1
        Caption = 'Key 1'
        OnClick = SetMoverKeyClick
      end
      object mniMoverKey2: TMenuItem
        Tag = 2
        Caption = 'Key 2'
        OnClick = SetMoverKeyClick
      end
      object mniMoverKey3: TMenuItem
        Tag = 3
        Caption = 'Key 3'
        OnClick = SetMoverKeyClick
      end
      object mniMoverKey4: TMenuItem
        Tag = 4
        Caption = 'Key 4'
        OnClick = SetMoverKeyClick
      end
      object mniMoverKey5: TMenuItem
        Tag = 5
        Caption = 'Key 5'
        OnClick = SetMoverKeyClick
      end
      object mniMoverKey6: TMenuItem
        Tag = 6
        Caption = 'Key 6'
        OnClick = SetMoverKeyClick
      end
      object mniMoverKey7: TMenuItem
        Tag = 7
        Caption = 'Key 7'
        OnClick = SetMoverKeyClick
      end
    end
    object mnuReset: TMenuItem
      Caption = 'Reset'
      object mniMoveToOrigin: TMenuItem
        Caption = 'Move to Origin'
      end
      object mniResetPivot: TMenuItem
        Caption = 'Reset Pivot'
      end
      object mniResetRotation: TMenuItem
        Caption = 'Reset Rotation'
      end
      object mniResetScaling: TMenuItem
        Caption = 'Reset Scaling'
      end
      object mniResetAllPositioning: TMenuItem
        Caption = 'Reset All Positioning'
      end
    end
    object mnuTransform: TMenuItem
      Caption = 'Transform'
      object mniMirrorAboutX: TMenuItem
        Caption = 'Mirror about X'
        OnClick = mniMirrorAboutXClick
      end
      object mniMirrorAboutY: TMenuItem
        Caption = 'Mirror about Y'
        OnClick = mniMirrorAboutYClick
      end
      object mniMirrorAboutZ: TMenuItem
        Caption = 'Mirror about Z (vertical)'
        OnClick = mniMirrorAboutZClick
      end
      object mniTransformPermanently: TMenuItem
        Caption = 'Transform Permanently'
        OnClick = mniTransformPermanentlyClick
      end
    end
    object mnuOrder: TMenuItem
      Caption = 'Order'
      object mniOrderToFirst: TMenuItem
        Caption = 'To First'
        OnClick = mniOrderToFirstClick
      end
      object mniOrderToLast: TMenuItem
        Caption = 'To Last'
        OnClick = mniOrderToLastClick
      end
    end
    object mnuCopyPolygns: TMenuItem
      Caption = 'Copy Polygns'
      object mniPolysToBrush: TMenuItem
        Caption = 'To Brush'
        OnClick = mniPolysToBrushClick
      end
      object mniPolysFromBrush: TMenuItem
        Caption = 'From Brush'
        OnClick = mniPolysFromBrushClick
      end
    end
    object mnuBrushSolidity: TMenuItem
      Caption = 'Solidity'
      object mniBrushMakeSolid: TMenuItem
        Caption = 'Make Solid'
        ImageIndex = 0
      end
      object mniBrushMakeSemiSolid: TMenuItem
        Caption = 'Make SemiSolid'
        ImageIndex = 1
      end
      object mniBrushMakeNonSolid: TMenuItem
        Caption = 'Make NonSolod'
        ImageIndex = 2
      end
    end
    object N23: TMenuItem
      Caption = '-'
    end
    object mnuSelectBrushes: TMenuItem
      Caption = 'Select Brushes'
      object mniMapSelectAdds: TMenuItem
        Caption = 'Adds'
        OnClick = mniMapSelectAddsClick
      end
      object mniMapSelectSubtracts: TMenuItem
        Caption = 'Subtracts'
        OnClick = mniMapSelectSubtractsClick
      end
      object mniMapSelectSemiSolids: TMenuItem
        Caption = 'Semisolids'
        OnClick = mniMapSelectSemiSolidsClick
      end
      object mniMapSelectNonSolids: TMenuItem
        Caption = 'NonSolids'
        OnClick = mniMapSelectNonSolidsClick
      end
    end
    object subMenu_SelectActors: TMenuItem
      Caption = 'Select Actors'
      object mniSelectAllActors: TMenuItem
        Action = edit_SelectAllActors
      end
      object mniSelectAllOfType: TMenuItem
        Action = edit_SelectOfClass
      end
      object N22: TMenuItem
        Action = edit_SelectOfSubClass
      end
      object WithsameEvent1: TMenuItem
        Action = edit_SelectOfEvent
      end
      object Withsame1: TMenuItem
        Action = edit_SelectOfTag
      end
      object AllActorswithsameAttachTag1: TMenuItem
        Action = edit_SelectOfAttachTag
      end
      object SelectAllActorswithsameBindName1: TMenuItem
        Action = edit_SelectOfBindName
      end
      object SelectAllActorswithsameBarkBindName1: TMenuItem
        Action = edit_SelectOfBarkBindName
      end
      object mniSelectNone: TMenuItem
        Action = edit_SelectNoneActors
      end
      object InvertSelection2: TMenuItem
        Action = edit_SelectInvert
      end
    end
    object N24: TMenuItem
      Caption = '-'
    end
    object mniCut: TMenuItem
      Caption = 'Cut'
      ImageIndex = 6
    end
    object mniCopy: TMenuItem
      Caption = 'Copy'
    end
    object mniPaste: TMenuItem
      Caption = 'Paste'
      ImageIndex = 5
    end
    object N20: TMenuItem
      Caption = '-'
    end
    object mniDeleteSelected: TMenuItem
      Caption = 'Delete'
      ImageIndex = 7
    end
    object mniDuplicateSelection: TMenuItem
      Caption = 'Duplicate'
      ImageIndex = 3
    end
    object mniEditScript: TMenuItem
      Caption = 'Edit Script'
    end
  end
  object ToolbarImages: TImageList
    Height = 20
    Width = 20
    Left = 367
    Top = 152
    Bitmap = {
      494C010102000800040014001400FFFFFFFFFF10FFFFFFFFFFFFFFFF424D3600
      0000000000003600000028000000500000001400000001002000000000000019
      0000000000000000000000000000000000008080800080808000808080008080
      8000808080008080800080808000808080008080800080808000808080008080
      8000808080008080800080808000808080008080800080808000808080008080
      8000808080008080800080808000808080008080800080808000808080008080
      8000808080008080800080808000808080008080800080808000808080008080
      8000808080008080800080808000808080000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000008080800080808000808080008080
      8000808080008080800080808000808080008080800080808000808080008080
      8000808080008080800080808000808080008080800080808000808080008080
      8000808080008080800080808000808080008080800080808000808080008080
      8000808080008080800080808000808080008080800080808000808080008080
      8000808080008080800080808000808080000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000008080800080808000808080008080
      8000808080008080800080808000808080008080800080808000808080008080
      8000808080008080800080808000808080008080800080808000808080008080
      8000808080008080800080808000808080008080800080808000808080008080
      8000808080008080800080808000808080008080800080808000808080008080
      8000808080008080800080808000808080000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000008080800080808000808080008080
      8000808080008080800080808000808080008080800080808000808080008080
      8000808080008080800080808000808080008080800080808000808080008080
      8000808080008080800080808000808080008080800080808000808080008080
      8000808080008080800080808000808080008080800080808000808080008080
      8000808080008080800080808000808080000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000008080800080808000808080008080
      8000808080008080800080808000808080008080800080808000808080008080
      8000808080008080800080808000808080008080800080808000808080008080
      8000808080008080800080808000040404000404040004040400040404000404
      0400040404000404040004040400040404000404040004040400808080008080
      8000808080008080800080808000808080000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000008080800080808000808080008080
      8000808080000404040004040400040404000404040004040400040404000404
      0400040404000404040004040400040404008080800080808000808080008080
      800080808000808080008080800004040400040404004A4E35004A4E35004A4E
      35004A4E35004A4E35004A4E35004A4E35004A4E35004A4E3500040404008080
      8000808080008080800080808000808080000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000008080800080808000808080008080
      80008080800004040400C5CF9400C5CF9400C5CF9400C5CF9400C5CF9400C5CF
      9400C5CF9400C5CF9400C5CF9400040404008080800080808000808080008080
      800080808000808080008080800004040400EDFF7500040404004A4E35004A4E
      35004A4E35004A4E35004A4E35004A4E35004A4E35004A4E35004A4E35000404
      0400808080008080800080808000808080000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000008080800080808000808080008080
      80008080800004040400EDFF7500C5CF9400C5CF9400C5CF9400C5CF9400C5CF
      9400C5CF9400C5CF9400C5CF9400040404008080800080808000808080008080
      800080808000808080008080800004040400EDFF750097A27200040404004A4E
      35004A4E35004A4E35004A4E35004A4E35004A4E35004A4E35004A4E35004A4E
      3500040404008080800080808000808080000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000008080800080808000808080008080
      80008080800004040400EDFF7500C5CF9400C5CF9400C5CF9400C5CF9400C5CF
      9400C5CF9400C5CF9400C5CF9400040404008080800080808000808080008080
      800080808000808080008080800004040400EDFF750097A2720097A272000404
      04004A4E35004A4E35004A4E35004A4E35004A4E35004A4E35004A4E35004A4E
      35004A4E35000404040080808000808080000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000008080800080808000808080008080
      80008080800004040400EDFF7500C5CF9400C5CF9400C5CF9400C5CF9400C5CF
      9400C5CF9400C5CF9400C5CF9400040404008080800080808000808080008080
      800080808000808080008080800004040400EDFF750097A2720097A2720097A2
      7200040404000404040004040400040404000404040004040400040404000404
      0400040404000404040080808000808080000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000008080800080808000808080008080
      80008080800004040400EDFF7500C5CF9400C5CF9400C5CF9400C5CF9400C5CF
      9400C5CF9400C5CF9400C5CF9400040404008080800080808000808080008080
      800080808000808080008080800004040400EDFF750097A2720097A2720097A2
      7200040404000404040004040400040404000404040004040400040404000404
      0400040404000404040080808000808080000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000008080800080808000808080008080
      80008080800004040400EDFF7500C5CF9400C5CF9400C5CF9400C5CF9400C5CF
      9400C5CF9400C5CF9400C5CF9400040404008080800080808000808080008080
      800080808000808080008080800004040400EDFF750097A2720097A2720097A2
      720097A2720097A2720097A2720097A2720097A2720004040400808080008080
      8000808080008080800080808000808080000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000008080800080808000808080008080
      80008080800004040400EDFF7500C5CF9400C5CF9400C5CF9400C5CF9400C5CF
      9400C5CF9400C5CF9400C5CF9400040404008080800080808000808080008080
      800080808000808080008080800004040400EDFF750097A2720097A2720097A2
      720097A2720097A2720097A2720097A2720097A2720004040400808080008080
      8000808080008080800080808000808080000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000008080800080808000808080008080
      80008080800004040400EDFF7500C5CF9400C5CF9400C5CF9400C5CF9400C5CF
      9400C5CF9400C5CF9400C5CF9400040404008080800080808000808080008080
      800080808000808080008080800004040400EDFF7500EDFF7500EDFF7500EDFF
      7500EDFF7500EDFF7500EDFF7500EDFF7500EDFF750004040400808080008080
      8000808080008080800080808000808080000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000008080800080808000808080008080
      80008080800004040400EDFF7500C5CF9400C5CF9400C5CF9400C5CF9400C5CF
      9400040404000404040004040400040404008080800080808000808080008080
      8000808080008080800080808000808080000404040004040400040404000404
      0400040404000404040004040400040404000404040004040400808080000404
      0400040404000404040080808000808080000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000008080800080808000808080008080
      80008080800004040400EDFF7500C5CF9400C5CF9400C5CF9400C5CF9400C5CF
      940004040400C5CF940004040400808080008080800080808000808080008080
      8000808080008080800080808000808080008080800080808000808080008080
      8000808080008080800080808000808080008080800080808000808080008080
      8000040404000404040080808000808080000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000008080800080808000808080008080
      80008080800004040400EDFF7500EDFF7500EDFF7500EDFF7500EDFF7500EDFF
      7500040404000404040080808000808080008080800080808000808080008080
      8000808080008080800080808000808080008080800080808000808080008080
      8000808080008080800080808000040404008080800080808000808080000404
      0400808080000404040080808000808080000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000008080800080808000808080008080
      8000808080000404040004040400040404000404040004040400040404000404
      0400040404008080800080808000808080008080800080808000808080008080
      8000808080008080800080808000808080008080800080808000808080008080
      8000808080008080800080808000808080000404040004040400040404008080
      8000808080008080800080808000808080000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000008080800080808000808080008080
      8000808080008080800080808000808080008080800080808000808080008080
      8000808080008080800080808000808080008080800080808000808080008080
      8000808080008080800080808000808080008080800080808000808080008080
      8000808080008080800080808000808080008080800080808000808080008080
      8000808080008080800080808000808080000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000008080800080808000808080008080
      8000808080008080800080808000808080008080800080808000808080008080
      8000808080008080800080808000808080008080800080808000808080008080
      8000808080008080800080808000808080008080800080808000808080008080
      8000808080008080800080808000808080008080800080808000808080008080
      8000808080008080800080808000808080000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000424D3E000000000000003E000000
      2800000050000000140000000100010000000000F00000000000000000000000
      000000000000000000000000FFFFFF0000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000}
  end
  object EditorModeImages: TImageList
    GrayscaleFactor = 128
    Height = 30
    Masked = False
    Width = 30
    Left = 199
    Top = 88
    Bitmap = {
      494C01010800180004001E001E00FFFFFFFFFF10FFFFFFFFFFFFFFFF424D3600
      0000000000003600000028000000780000005A0000000100200000000000C0A8
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000008585850085858500858585008585
      8500858585008585850085858500858585008585850085858500858585008585
      8500858585008585850085858500858585008686860086868600858585008585
      8500858585008585850085858500858585008585850085858500858585008585
      8500858585008585850080808000808080008080800080808000808080008080
      8000808080008080800080808000808080008080800080808000808080008282
      8200707071007D7D7D0084848400808080008080800080808000808080008080
      8000808080008080800080808000808080008080800080808000808080008080
      8000808080008080800080808000808080008080800080808000808080008080
      8000808080008080800080808000808080008080800080808000808080008080
      8000808080008080800080808000808080008080800080808000808080008080
      8000808080008080800080808000808080008080800080808000808080008080
      8000808080008080800080808000808080008080800080808000808080008080
      8000808080008080800080808000808080008080800080808000808080008080
      8000808080008080800080808000808080008080800080808000808080008080
      8000808080008080800080808000808080008585850085858500858585008585
      8500858585008585850085858500858585008585850085858500858585008585
      8500858585008585850088888800868686007E7E7E0081818100868686008585
      8500858585008585850085858500858585008585850085858500858585008585
      8500858585008585850080808000808080008080800080808000808080008080
      8000808080008080800080808000808080008181810084848400878787009190
      9000494949002727270078797900878686008080800080808000808080008080
      8000808080008080800080808000808080008080800080808000808080008080
      8000808080008080800080808000808080008080800080808000808080008080
      8000808080008080800080808000808080008080800080808000676769000000
      0000676769008080800080808000808080008080800080808000808080008080
      8000808080008080800080808000808080008080800080808000808080008080
      8000808080008080800080808000808080008080800080808000808080008080
      80008080800080808000808080008080800039393900111111007A7A7A008080
      8000808080008080800080808000808080008080800080808000808080008080
      8000808080008080800080808000808080008585850085858500858585008585
      8500858585008585850085858500858585008585850085858500858585008585
      85008888880088888800797979005B5B5B004D4F4D0050504E00747474008989
      8900858585008585850085858500858585008585850085858500858585008585
      8500858585008585850080808000808080008080800080808000808080008080
      800080808000808080008181810087878700818181006D6D6D00515151004444
      44001F1F1F000000000016171700636364008787870081818100808080008080
      8000808080008080800080808000808080008080800080808000808080008080
      8000808080008080800080808000808080008080800080808000808080008080
      800080808000808080008080800080808000808080006767690000000000767E
      5C00000000006767690080808000808080008080800080808000808080008080
      8000808080008080800080808000808080008080800080808000808080008080
      8000808080008080800080808000808080008080800080808000808080008080
      800080808000808080008080800082828200010301001B1F0E00000000006060
      6000808080008080800080808000808080008080800080808000808080008080
      8000808080008080800080808000808080008585850085858500858585008585
      8500858585008585850085858500858585008585850085858500888888008888
      88007A7A7A005E5C5E004C4F4B00575A5400696B61005E5F59004E4E4E007976
      7A00898989008585850085858500858585008585850085858500858585008585
      8500858585008585850080808000808080008080800080808000808080008080
      8000808080008585850080808000545454002323230005050500000000000000
      0000000000000000000000000000060607005252530083838200818181008080
      8000808080008080800080808000808080008080800080808000808080008080
      8000808080008080800080808000808080008080800080808000808080008080
      8000808080008080800080808000808080006767690000000000A7B27D00D1DC
      9600767E5C000000000067676900808080008080800080808000808080008080
      8000808080008080800080808000808080008080800080808000808080008080
      8000808080008080800080808000808080008080800080808000808080008080
      80006D6D6D002B2B2B00020202000000000000000000727E52004A4F32000000
      00003D3D3D008080800080808000808080008080800080808000808080008080
      8000808080008080800080808000808080008585850085858500858585008585
      85008585850085858500858585008585850086868600888888007B7B7B005E5E
      5E004E4E4E0057585400676A5F006D6F65006D6F67006E6E66005B5E5800504E
      50007B7B7B008888880085858500858585008585850085858500858585008585
      8500858585008585850080808000808080008080800080808000808080008181
      8100878787006B6B6B0024242400000000000000000000000000000000000000
      0000000000000000000000000000000000000000000053545400858585008080
      8000808080008181810080808000808080008080800080808000808080008080
      8000808080008080800080808000808080008080800080808000808080008080
      80008080800080808000808080006767690000000000A7B27D00D1DC9600D1DC
      96008C956D00767E5C0000000000676769008080800080808000808080008080
      8000808080008080800080808000808080008080800080808000808080008080
      8000808080008080800080808000808080008080800080808000808080001919
      19000000000000000000242C110049532900595F3F007E89590099A572005F69
      3F00000000001C1C1C0080808000808080008080800080808000808080008080
      8000808080008080800080808000808080008585850085858500858585008585
      8500858585008585850086868600898989007D7D7D00616161004E4E4E005657
      510067695F006E6E66006A6E6600696C66006D6F67006F6F67006D6F65005B5C
      5800525252007E7E7E0088888800858585008585850085858500858585008585
      8500858585008585850080808000808080008080800080808000818181008181
      81004F4F4F000909090000000000000000000000000000000000000000000000
      0000000000000000000000000000000000003D3D3D0078797900818181008080
      8000838383008181810083838300808080008080800080808000808080008080
      8000808080008080800080808000808080008080800080808000808080008080
      800080808000808080008080800000000000F5FFC800F5FFC800F5FFC800D1DC
      96008C956D008C956D00767E5C00000000008080800080808000808080008080
      8000808080008080800080808000808080008080800080808000808080008080
      8000808080008080800080808000808080008080800060616400000000000000
      000040443100747E54008B9661008E9964008B9369008A9565008E9A670098A3
      6E00ADB88300090B000036333700808080008080800080808000808080008080
      8000808080008080800080808000808080008585850085858500888888008B8B
      8B00898989008B8B8B007E7E7E00626262004E4E4E005356520067675F006E6E
      64006A6E6600696C66006A6E66006E6E66006D7169006F7169006F6F67006E71
      6600575A54005552560081818100888888008585850085858500858585008585
      8500858585008585850080808000808080008080800080808000848383007070
      7000060606000000000000000000000000000000000000000000161616003434
      340021212100000000000D0D0D00575757008787870083838300808080008585
      8500787878002A2A2A005E5E5E00868686008080800080808000808080008080
      8000808080008080800080808000808080008080800080808000808080008080
      8000808080008080800080808000000000000000000000000000F5FFC800D1DC
      96008C956D000000000000000000000000008080800080808000808080008080
      8000808080008080800080808000808080008080800080808000808080008080
      80008080800080808000808080008080800064646400000000001B1E11006C71
      540090986C008B9564009AA57000C1CBA100EAF5C000C2CD98009BA67100E5F0
      BB008D986800000000006C696D008080800028262800050505007C7C7C008080
      8000808080008080800080808000808080008585850088888800707070005E5E
      5E00707070006262620052525200585A580067675F006B6D65006A6E64006B6D
      65006E6E66006D6F65006D6F67006F6F65006E72680075746A00727568007272
      6A006F6F67005456540057575700848484008686860085858500858585008585
      8500858585008585850080808000808080008080800080808000808080008383
      8300595959000606060000000000000000001E1E1E005D5D5D007E7E7E007D7D
      7D004040400044454200464643007D7D7D008181810080808000848484007A7A
      7A00212121000000000012121200787878008484840080808000808080008080
      8000808080008080800080808000808080008080800080808000808080008080
      8000808080008080800080808000808080008080800000000000F5FFC800D1DC
      96008C956D000000000080808000808080008080800080808000808080008080
      8000808080008080800080808000808080008080800080808000808080008080
      800080808000808080008080800080808000474749000000000068725000969E
      7200919B6A00EAF5C000FFFFFF00D3DEA900ACB78200FFFFFF00E7F2BD00454A
      3300000002007B7B7D008080800027282B000000000010150800000000008080
      800080808000808080008080800080808000858585008B8B8B00686868000B0B
      0B000000000000000000161A100031352B00606258006D6F65006B6D65006A6E
      66006D6F65006F71690075756D0072756A0072726A0076796C0076796C007476
      6C006D7469006F6F6700565654005E5E5E00898989008B8B8B00898989008585
      8500858585008585850080808000808080008080800080808000828282008181
      8100878787005A5A5B000F0F10003C3C3C00808080007A797A00646465004243
      4000393B3100464B34006167490050504C0078787900828282007C7C7C002222
      2200000000000000000000000000343434008585850080808000808080008080
      8000808080008080800080808000808080008080800080808000808080008080
      8000808080008080800080808000808080008080800000000000F5FFC800F5FF
      C800A7B27D000000000080808000808080008080800080808000808080008080
      8000808080008080800080808000808080008080800080808000808080008080
      800080808000808080008080800080808000808080003434340000000000979F
      7D00FFFFFF00B9C592001A1C12000E10060000000000B1BA8C00171E00002122
      2500808080008080800028282800050800008C956D0079825E00000000002424
      24008080800080808000808080008080800085858500858585008B8B8B002424
      24000000000000000000000000000D11070063675D006D7169006E6E66007272
      6A0074766E00696B6100494D450055554D0075796F00797E7100797C6F00777A
      6D0074766C006A6D6200595951003A3D3900484648006C6C6C00696969008282
      82008686860085858500808080008080800080808000838383007A7A7A008181
      81008080800085858500737373007B7B7C006564660040403E0045483B004B50
      3A00545A43005F654B00A4AF79007E865D004E4C4E007D7C7D007E7E7E002221
      2200000000000000000000000000010101006464640085858500808080008080
      8000808080008080800080808000808080008080800080808000808080008080
      8000808080008080800080808000808080008080800000000000000000000000
      0000000000000000000080808000808080008080800080808000808080008080
      8000808080008080800080808000808080008080800080808000808080008080
      80008080800080808000808080005555550025252500808080002E2E2E003B45
      1B0062675200020202006C6C6C00808080001F1F1F0000000000505052008080
      800080808000605D610000000000A4AE7D009EAA7E009AA278005E6547000000
      00007070700082828200808080008080800085858500858585008F8F8F005050
      50000000000013150D00000000000001000047473F0072726A0072756A005B5F
      570032342C000C100800161A07000F12050037392F0081857200828675007D81
      72008184770063665B00020400000000000000000000000000002F2F2F008282
      820086868600858585008080800080808000858585006F7070001B1B1B006565
      650086868600808080007979790052535100484B3C00596045006A7050006C73
      55005C634B00565B4400ABB78000CFDE960060664A0056565A00838383007071
      71000B0B0B000000000000000000000000003132320085858500808080008080
      8000808080008080800080808000808080006767690000000000000000008080
      80008080800080808000808080007E7E7E008080800080808000808080008080
      8000808080008080800080808000808080008080800080808000808080008080
      8000000000000000000067676900808080008080800080808000808080008080
      8000808080008080800067676700000000000B11020011111100808080003737
      3700272727008080800080808000808080008080800080808000808080008080
      8000808080008080800006060600555C3E00AAB483009BA57B00949C72001A1C
      0B00232325008080800080808000808080008585850085858500898989006565
      6500484744006F6F670052544C00111109000000000023231B0023251B000809
      0000191D0A00424828006B7648006B7349001C2209002E322300797D6E00797D
      6E005255480022251A000000000000000000000000000A0A0A007E7E7E008888
      8800858585008585850080808000838383007C7C7C0020202000000000001C1C
      1C007B7B7B0083838300646565004E53400076805700828B6400767D5B006C72
      54005F654B005A5F4800A9B47E00E8F9AA00B1BE81004F524200666568008687
      8600414242000000000000000000000000000C0C0D0078787800838282008080
      80008080800080808000808080006767690000000000767E5C00000000008080
      8000808080008080800080808000808080008080800000000000000000000000
      0000000000000000000080808000808080008080800080808000808080008080
      800000000000767E5C0000000000676769008080800080808000808080008080
      8000808080008282820000000000515834008690640000000000343434008080
      8000808080008080800080808000000000000000000000000000000000000000
      000080808000808080006F6F710000000000838C6400A3AC7E00A0AB7D005F69
      4700000000008080800080808000808080008585850085858500888888006161
      61005B5E5A006D6F650072726A006F6F6700393B3300000000001F210E00434C
      2F005A633F00646D4700727E52008B965F00747F4F003D432300242815001D21
      0E000A0B00001D20130043483B0044463E0016171100575757008B8B8B008585
      8500858585008585850081818100858585003131320000000000000000000000
      000030303000848484006C6C6D0061664B00919C6D00858E660079825E00727A
      5900676D51005E634A00B0BD8300EDFDAC00DCEAA200929C69004F504A007C7B
      7C0070707000060606000000000000000000000000005F606000858585008080
      800080808000808080006767690000000000767E5C008C956D00000000000000
      0000000000000000000080808000808080008080800000000000000000000000
      0000000000000000000080808000808080008080800001010100000000000000
      0000000000008C956D00767E5C00000000006767690080808000808080008080
      80008080800005020600252B1A009BA77B009CA77200636D3C00000000006060
      6000808080008080800080808000000000000000000000000000000000000000
      00008080800080808000808080001A1A1C0033391E00A2AF7F00A3AE80008E96
      6C00000000007676760082828200808080008585850085858500858585005959
      590063635B006E6E66006E6E66007174690064665E000F1205004B5235005962
      3C00626B45006C764A00828E5B0095A1660086905D0086925F003A4422003236
      2300747867007E8273007C81740075786D006566600057575700848484008585
      85008585850085858500878686004C4C4D000000000000000000000000000000
      0000000000004A4A4A005B5C5B00707754009CA675008D966C00848D65007B83
      5F006B7153005D634700B2BB8500FAFFBC00E2F1A600BAC7870056594A007D7D
      7C00818181001B1B1B000000000000000000000000004E4E4E008A8A8A008181
      8100808080006767690000000000767E5C008C956D008C956D008C956D008C95
      6D00767E5C000000000080808000808080008080800080808000000000000000
      0000000000008080800080808000818181008080800001010100A7B27D008C95
      6D008C956D008C956D008C956D00767E5C000000000067676900808080008080
      8000252325000E1405009FAC84009DA87A009DA67600939E6900475127000000
      00007D7D7D008080800080808000808080000000000000000000000000008080
      80008080800080808000808080004242420004060000949D7500AAB48300A3AE
      8000161B0E004A494F0080808000808080008585850086868600848484005353
      530065695F006E6E66006D6F6700717469005759510015160700505739006069
      41006C764C0077825200919B6600A0B073008F9C650096A46900525C34004F53
      40009195840082867500797E710074766C006B6B630050505000828282008686
      86008585850085858500656666000A0A0A000202020000000000000000000000
      0000040404000F0F0F00595A530087916400ABB7810098A272008D966A008088
      6100757E5A0082896200D0D4AC00FFFFD400EAFBAD00CFDF960060664D007575
      76007B7B7B002626260000000000000000000000000040404000818181007C7C
      7C008080800000000000F5FFC800D1DC9600A7B27D00A7B27D00A7B27D00A7B2
      7D00767E5C000000000080808000808080008080800080808000000000000000
      0000000000008080800081818100818181008080800002020200F5FFC800D1DC
      9600D1DC9600D1DC9600D1DC9600D1DC9600767E5C0000000000808080006868
      68002A2A2200DEE9B900E1ECB7008F9B6800A0AB7600BAC590009DA976004649
      3C00434642008080800080808000808080000000000000000000000000008080
      800080808000808080001E1E1E0004080000090B00007B846000ABB88800B2BE
      8B003F442D0001030000000000008080800085858500868686007E7E7E005050
      50006A6D62006D6F65006F6F670075756D0050524A001A1C0D005C633F006A71
      4900727E52007F8A5C009DA86F00B2C07D009BA96C00A7B47500606C40004C51
      3C0090948100858976007E827300757C6F006D6F6500505050007D7D7D008686
      8600858585008585850076767600707070002C2C2C0000000000000000000000
      00003C3C3D007F7F7F005C5E5200A3AE7600BBC88B00A4AF7B009EA97600A8B3
      7E00C5CE9900E9EFBD00FEFFD900FDFFDF00F3FFBE00E2F5A200727855006564
      68001314140005050500000000000000000000000000070707001D1E1E007373
      7300808080006767690000000000F5FFC800D1DC9600D1DC9600D1DC9600D1DC
      9600767E5C000000000080808000808080008080800080808000000000000000
      0000000000008080800081818100838383008080800001010100F5FFC800F5FF
      C800F5FFC800F5FFC800D1DC9600A7B27D000000000067676900808080007D7D
      7D001F1F1D002B3013008A956000ABB68800A1AC7700C9D49F000C0D07002727
      2700646464008080800080808000808080000000000000000000000000008080
      80008080800080808000171719004F563000C7D29D008E9A6700AAB58000A8B4
      83009BA77B004349300000000000808080008585850088888800777777005153
      51006E6E64006D6F67006E71660076766E004A4A420022251000646D47006F79
      4F007E8A590093A06900BCC98800C8D69200A6B77600B1C07F00767E4B004C51
      3A0091988300898E7900818576007D7E6F007174690053535300747474008888
      88008585850085858500828282008B8B8B003838380000000000000000000000
      000033343400888888006E735C00CAD89200CBD99500C0CD8E00D3E29C00ECFB
      AF00FBFFC400F9FFC800F3FFBE00F4FEBF00F8FFC500F4FFB600869063005C5C
      6000424343000000000000000000000000000000000000000000545555008686
      860080808000808080006767690000000000F5FFC800D1DC9600000000000000
      0000000000000000000080808000000000008080800080808000000000000000
      0000000000008080800080808000000000008080800001010100000000000000
      000000000000F5FFC800A7B27D00000000006767690080808000808080008080
      800080808000312E2D00A6B17C00CED8A7009EA97400B9C48F00181A0B00696A
      6D00808080000000000080808000808080000000000000000000000000008080
      800080808000000000008181810036363600B0B98B00E3EEB900A0AB7600ACB8
      8700757E5A00000000006E6E6E008080800085858500898989006D6D6D005655
      52006F7169006E7166006E72680075796F0040423A002B3118007A8555008C99
      6200A2B37200B7C88000BFCC8600C5D48C00C1D08600C6D68C00869257004E54
      3900949984008D927D00868A790081846F0075786D00545654006D6D6D008989
      8900858585008585850080808000888888004848480000000000000000000000
      0000151416007D7D7D00666B5200BFCE8800D5E49D00D0DE9900DCEBA100E4F4
      A600E7F6A800E6F7A900E5F6A800DFF1A200E1EFA700FAFFBC00AEBA80005859
      5600848484002F2F300000000000000000000000000035353600868686008181
      81008080800080808000808080006767690000000000F5FFC800000000008080
      8000808080008080800080808000000000000000000000000000000000000000
      0000000000000000000000000000000000008080800080808000808080008080
      800000000000F5FFC80000000000676769008080800080808000808080008080
      80008282820053535500838F5C00DAE5B000A3AE7900B4BF8A00404729002122
      2500808080000000000000000000000000000000000000000000000000000000
      00000000000000000000808080007B7B7B0000000000D2D9B100D0DBA6008C98
      670000000000434143008080800080808000858585008989890064656800575A
      54006E7268006F7169006E7268007979710042463E00191D0A00798552009BA9
      6C00A1AE6F009FAC6B009FB06F00A6B37200B6C48000E0F0A40098A76800494E
      3700959C850093968100888D7A00828675007A7D7000585C5400646568008989
      8900858585008585850080808000848484006666660001010100000000000000
      000000000000585858005E5E5C00585C4600919B6900C5D39100CBD99700CAD8
      9500CFDD9800D2DF9900D4E29C00D6E7A000D2E29A00D4E39B009EA971005354
      4E00838383007D7D7D0020202000000000001F1F1F007D7D7D00838383008080
      8000808080008080800080808000808080006767690000000000000000008080
      8000808080008080800080808000000000000000000000000000000000000000
      0000000000000000000000000000000000008080800080808000808080008080
      8000000000000000000067676900808080008080800080808000808080008080
      800080808000807E80004E582E00F6FFD300B9C48F00A8B37E00889463000000
      0000808080000606060016161600121212000000000000000000000000000000
      000000000000000000008080800080808000525052000D0C0700C6CBA5001F26
      0800171719008383830080808000808080008585850088888800606060005B5E
      5800727268006E7268007174690075746A0070716600393A2D00111506002F36
      1900687248008C99620093A069008F9C65007F8A550079825C005D6348007276
      5B009EA48900949982008D927D00868877007D8170005E625800606060008888
      880085858500858585008080800081818100808080001C1C1C00000000000000
      00000000000019191900787878005E5E62004E4F4900646A4C00A3B07800C1CD
      8F00C3D09100C5D29000B9C687009EAB73007B845A005C624900535549006E6E
      6E0080808000868686006B6B6B001C1C1C006C6C6C0085858500808080008080
      8000808080008080800080808000808080008080800080808000808080008080
      8000808080008080800080808000808080008080800080808000808080008080
      8000808080008080800080808000808080008080800080808000808080008080
      8000808080008080800080808000808080008080800080808000808080008282
      820080808000808080001D1E1A00DDE8B300EFFAC500A9B28200ADB88300444E
      1D00050206008080800080808000818181005D5A5E0079797900808080008080
      8000818181005A5A5A003C3C3C00848484008080800037373700000000000604
      0400808080008080800080808000808080008585850085858500595959006466
      5E0072726A006E726800717469007174690076766C007E817400727667004B4C
      3D002F341F00454F2D0048502E00484E2E005A614400737A5D009FA48600BCC2
      A200B0B696009AA085008D947F00868D78007D80730063675F005A5A5A008585
      850085858500858585008080800080808000878787004F4F4F00000000000000
      00000000000000000000383838008282820075747500505050004E504300777F
      5800899164006B725100555B460050514A005858570067666A00717173008282
      82008080800080808000828282007A7B7B008282820080808000808080008080
      8000808080008080800080808000808080008080800080808000808080008080
      8000808080008080800080808000808080008080800000000000000000000000
      0000000000000000000080808000808080008080800080808000808080008080
      8000808080008080800080808000808080008080800080808000808080008080
      80008080800080808000696969002B311100FFFFFF00E9F4BF009CA772000B10
      00003E3E3E008585850082828200454545000000000012121200818181007979
      79001F1F1F0000000000000000001415180083838300929292006A6A6A008080
      8000828282008080800080808000808080008686860082828200535353006B6B
      630072726A0072746A0075786D007D7E710083857600898D7A00939681009BA0
      8900818A730023270C005E634C009DA18600A1A78C00A5AB9000A5A98C00A5AB
      8B00AEB19300AEB2900099A186008B9079007C817400696D6500555555008484
      84008686860085858500808080008080800082828200808080001F1F20000000
      0000000000000A0C0C005C5D5D0083838300808080007C7C7C007A7A7A004E4F
      4C004E4F4C0062626400676767007B7B7B00838384006F6E6F003D3D3D007878
      7800848484008080800080808000828282008080800080808000808080008080
      8000808080008080800080808000808080008080800080808000808080008080
      8000808080008080800080808000808080008080800000000000767E5C00767E
      5C00767E5C000000000080808000808080008080800080808000808080008080
      8000808080008080800080808000808080008080800080808000808080008080
      800080808000808080008080800026262800646F3F00FFFFFF00222A08002626
      280080808000858689000B0B0B0000000000656D4D0000000000000000000000
      00000000000052583F00A3AC7E00222613000E0E0E0089898900828282008080
      800080808000808080008080800080808000868686007F7F7F00505050007376
      6900797E71007D8172008084750083857600868B7600888C79008B8D7A008F93
      8000828974001E230C00686E55009BA08900969C8100969C8300979D8200979D
      8200979D820098A085009FA689009A9E8500838576006E6E6600505050007F7F
      7F008686860085858500808080008080800080808000858585006A6A6B000504
      0400080A0A006265650088888800808080008080800086868600747474001E1E
      1E003E3E3E008E8E8E008181810074747400464646000D0D0D00000000002B2B
      2B00808181008383830080808000808080008080800080808000808080008080
      8000808080008080800080808000808080008282820080808000808080008080
      8000808080008080800080808000808080008080800000000000D1DC9600A7B2
      7D008C956D000000000080808000808080008080800080808000808080008080
      8000808080008080800080808000808080008080800080808000808080008080
      80008080800080808000808080008282820012121200060903003A3936008080
      8000716E72000000000015190800949F7100868F67002E3423003C412C00626A
      4A00929E7200BDC89300C0CE9500E1ECB700606B360024252100828282008080
      8000808080008080800080808000808080008686860084848400575757005657
      510066695E0072756A007D7E71007E8273008185720082867500858976008F93
      80007B7F6E00151906005F645100939784008A917C008C9279008E917C008E91
      7C008A917C008A8F7C008B8D7A008A8F7C008A8D780076776A0050504E007A7A
      7A00868686008585850080808000808080008080800080808000868686005353
      53005D5E5F008787870080808000818181008989890066666600131313000000
      0000191919003535350022222200090909000000000000000000000000000000
      0000292929007B7B7B0082828200808080008080800080808000808080008080
      8000808080008080800080808000808080008080800080808000808080008080
      8000808080008080800080808000000000000000000000000000D1DC9600A7B2
      7D008C956D000000000000000000000000008080800080808000808080008080
      8000808080008080800080808000808080008080800080808000808080008080
      800080808000808080008080800080808000808080007C7C7C00838383006D6D
      6D0000000000454B2B009DA87800BFCB9800B5C18E00B1BD8C00B6C28F00BDC8
      9300BDC89300C8D39E00FEFFFA00FFFFFF00505B2B0027291F00808080008080
      80008080800080808000808080008080800085858500868686007F7F7F006969
      69005A5A5A0050505000565751005E615B00707166007A7D7000777D6C00595D
      4C004C5241000A0E0000494B3A00707665007F81700083887500838576008084
      75007D817000797C6F006E72680063675F005B5E580056575100555555008181
      8100868686008585850080808000808080008080800080808000808080008484
      8400848484008080800081818100808080005252530009090A00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000171717007070700083838300808080008080800080808000808080008080
      8000808080008080800080808000808080008080800080808000808080008080
      800080808000808080008080800000000000F5FFC800D1DC9600D1DC9600A7B2
      7D008C956D008C956D00767E5C00000000008080800080808000808080008080
      8000808080008080800080808000808080008080800080808000808080008080
      8000808080008080800080808000808080008080800080808000808080004849
      4C0000000000E4EFBA00F2FDC800B3BE8900C3CE9900D0DBA600D4E0AF00F0FC
      C900FFFFFF00FFFFFF00BBC69800131504002B2B2B0086868600808080008080
      8000808080008080800080808000808080008585850085858500868686008989
      8900868686007F7F7F00707070006060600053535300515351005B5A55001515
      0D000000000000000000000000001114090063675D0067695F005B5E5800575A
      54005356520050534F00565656005D5D5D00656365006D6D6D007E7E7E008686
      8600858585008585850080808000808080008080800080808000808080008080
      8000808080008080800086868600525252000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000050505003B3B
      3B007B7B7B008484840080808000808080008080800080808000808080008080
      8000808080008080800080808000808080008080800080808000808080008080
      80008080800080808000808080006767690000000000F5FFC800D1DC9600A7B2
      7D008C956D00767E5C0000000000676769008080800080808000808080008080
      8000808080008080800080808000808080008080800080808000808080008080
      8000808080008080800080808000808080008080800080808000808080008383
      83004644460006070300C5CF9E00FAFFE600CAD5A000FCFFDA00EFF6D000C6D1
      9C00808A59001C230C000C0C0C00646464008585850080808000808080008080
      8000808080008080800080808000808080008585850085858500858585008585
      8500858585008686860088888800888888008484840076767600696969004242
      42000000000000000000000000002E2E2E005B5B5B005E5E5E00656365006D6D
      6D00777777007F7F7F0084848400868686008989890089898900868686008585
      8500858585008585850080808000808080008080800080808000808080008080
      80008080800080808000818181007B7C7C004141420002020200000000000000
      0000000000000000000000000000000000000F0F0F0035353500686868008686
      8600838383008080800080808000808080008080800080808000808080008080
      8000808080008080800080808000808080008080800080808000808080008080
      8000808080008080800080808000808080006767690000000000F5FFC800D1DC
      9600767E5C000000000067676900808080008080800080808000808080008080
      8000808080008080800080808000808080008080800080808000808080008080
      8000808080008080800080808000808080008080800080808000808080008080
      8000808080006767690000000000838E5E00BFCA9500000000001A1B10001E20
      16003F3F3F006F6F6F0083838300808080008080800080808000808080008080
      8000808080008080800080808000808080008585850085858500858585008585
      8500858585008585850085858500858585008686860088888800898989008C8C
      8C00414141000000000032323200848486008484840086868600898989008888
      8800868686008686860085858500858585008585850085858500858585008585
      8500858585008585850080808000808080008080800080808000808080008080
      800080808000808080008080800082828200888888005C5C5C00111111000000
      00001D232200484949004B4B4B005E5E5E007979790086868600858585008080
      8000808080008080800080808000808080008080800080808000808080008080
      8000808080008080800080808000808080008080800080808000808080008080
      800080808000808080008080800080808000808080006767690000000000F5FF
      C800000000006767690080808000808080008080800080808000808080008080
      8000808080008080800080808000808080008080800080808000808080008080
      8000808080008080800080808000808080008080800080808000808080008080
      800080808000828282008686860012121200080B000000000000888888008383
      8300828282008080800080808000808080008080800080808000808080008080
      8000808080008080800080808000808080008585850085858500858585008585
      8500858585008585850085858500858585008585850085858500858585008888
      88007E7E7E00373737007B7B7B00898989008585850085858500858585008585
      8500858585008585850085858500858585008585850085858500858585008585
      8500858585008585850080808000808080008080800080808000808080008080
      8000808080008080800080808000808080008080800087878700747474002222
      2300404242009394940088888800858585008282820080808000808080008080
      8000808080008080800080808000808080008080800080808000808080008080
      8000808080008080800080808000808080008080800080808000808080008080
      8000808080008080800080808000808080008080800080808000676769000000
      0000676769008080800080808000808080008080800080808000808080008080
      8000808080008080800080808000808080008080800080808000808080008080
      8000838383008080800080808000808080008080800080808000808080008080
      8000808080008080800080808000868686004A4A4C005E5E5E00848484008080
      8000808080008080800080808000808080008080800080808000808080008080
      8000808080008080800080808000808080008585850085858500858585008585
      8500858585008585850085858500858585008585850085858500858585008585
      8500868686008585850086868600858585008585850085858500858585008585
      8500858585008585850085858500858585008585850085858500858585008585
      8500858585008585850080808000808080008080800080808000808080008080
      8000808080008080800080808000808080008080800080808000858484007B7B
      7C006D6D6E008282820080808000808080008080800080808000808080008080
      8000808080008080800080808000808080008080800080808000808080008080
      8000808080008080800080808000808080008080800080808000808080008080
      8000808080008080800080808000808080008080800080808000808080008080
      8000808080008080800080808000808080008080800080808000808080008080
      8000808080008080800080808000808080008080800080808000828282008080
      8000808080008080800080808000808080008080800080808000808080008080
      8000808080008080800080808000848484008787870084848400828282008080
      8000808080008080800080808000808080008080800080808000808080008282
      8200828282008282820082828200828282008080800080808000808080008080
      8000808080008080800080808000808080008080800080808000808080008080
      8000808080008080800080808000808080008080800080808000808080008080
      8000808080008080800080808000808080008080800080808000808080008080
      800080808000808080007F7F7F007F7F7F007F7F7F007F7F7F007F7F7F007F7F
      7F007F7F7F007F7F7F007F7F7F007F7F7F007F7F7F007F7F7F007F7F7F007F7F
      7F007F7F7F007F7F7F007F7F7F007F7F7F007F7F7F007F7F7F007F7F7F007F7F
      7F007F7F7F007F7F7F007F7F7F007F7F7F007F7F7F007F7F7F007F7F7F007F7F
      7F00808080008080800080808000808080008080800080808000808080008080
      8000808080008080800080808000808080008080800080808000808080008080
      8000808080008080800080808000808080008080800080808000808080008080
      8000808080008080800080808000808080008080800080808000808080008080
      8000808080008080800080808000808080008080800080808000808080008080
      8000808080008080800080808000808080008080800080808000808080008080
      8000808080008080800080808000808080008080800080808000808080008080
      8000808080008080800080808000808080008080800080808000808080008080
      8000808080008080800080808000808080008080800080808000808080008080
      8000808080008080800080808000808080008080800080808000808080008080
      8000808080008080800080808000808080008080800080808000808080008080
      800080808000808080007F7F7F007F7F7F007F7F7F007F7F7F007F7F7F007F7F
      7F007F7F7F007F7F7F007F7F7F007F7F7F007F7F7F007F7F7F007F7F7F007F7F
      7F007F7F7F007F7F7F007F7F7F007F7F7F007F7F7F007F7F7F007F7F7F007F7F
      7F007F7F7F007F7F7F007F7F7F007F7F7F007F7F7F007F7F7F007F7F7F007F7F
      7F00808080008080800080808000808080008080800080808000808080008080
      8000808080008080800080808000808080008080800080808000808080008080
      8000808080008080800080808000808080008080800080808000808080008080
      8000808080008080800080808000808080008080800080808000808080008080
      8000808080008080800080808000808080008080800080808000808080008080
      8000808080008080800080808000808080008080800080808000808080008080
      8000808080008080800080808000808080008080800080808000808080008080
      8000808080008080800080808000808080008080800080808000808080008080
      8000808080008080800080808000808080008080800080808000808080008080
      8000808080008080800080808000808080008080800080808000808080008080
      8000808080008080800080808000808080008080800080808000808080008080
      800080808000808080007F7F7F007F7F7F007F7F7F007F7F7F007F7F7F007F7F
      7F007F7F7F007F7F7F007F7F7F007F7F7F007F7F7F007F7F7F007F7F7F007F7F
      7F007F7F7F007F7F7F00707165006F7064006F706400696A5F00727367007F7F
      7F007F7F7F007F7F7F007F7F7F007F7F7F007F7F7F007F7F7F007F7F7F007F7F
      7F00808080008080800080808000808080008080800080808000808080008080
      80008080800080808000808080008080800080808000696B5A005E6050004C4D
      3F004A4C3E004A4C3E004C4D3F0064665500727461006F715E00808080008080
      8000808080008080800080808000808080008080800080808000808080008080
      8000808080008080800080808000808080008080800080808000808080008080
      8000808080008080800080808000616458006365590057584E0054564B005354
      4A00808080008080800080808000808080008080800080808000808080008080
      8000808080008080800080808000808080008080800080808000808080008080
      8000808080008080800080808000808080008080800080808000808080008080
      8000808080008080800080808000808080008080800080808000808080008080
      8000808080008080800080808000808080008080800080808000808080008080
      800080808000808080007F7F7F007F7F7F007F7F7F007F7F7F007F7F7F007F7F
      7F007F7F7F007F7F7F007F7F7F007F7F7F007F7F7F007F7F7F007F7F7F007F7F
      7F007F7F7F006D6E62005C5D5300585950005859500052534A005B5C52006768
      5D007F7F7F007F7F7F007F7F7F007F7F7F007F7F7F007F7F7F007F7F7F007F7F
      7F00808080008080800080808000808080008080800080808000808080008080
      8000808080008080800080808000696B5A004A4C3E003F413400454739004A4C
      3E00313328003133280037392C00454739003F41340053554500696B5A00696B
      5A00808080008080800080808000808080008080800080808000808080008080
      8000808080008080800080808000808080008080800080808000808080008080
      8000808080005C5D530058594F0056574D0076796C0076796C0057584E006466
      5B004F50470056574D0080808000808080008080800080808000808080008080
      8000808080008080800080808000808080008080800080808000808080008181
      8100818181008181810081818100818181008181810081818100818181008181
      8100818181008181810081818100818181008181810081818100818181008181
      8100818181008181810081818100808080008282820080808000808080008080
      800080808000808080007F7F7F007F7F7F007F7F7F007F7F7F007F7F7F007F7F
      7F007F7F7F007F7F7F007F7F7F007F7F7F007F7F7F007F7F7F007F7F7F006667
      5C005859500056574E0053544B0052534A0052534A0052534A0052534A005455
      4C0064655A0075776A007F7F7F007F7F7F007F7F7F007F7F7F007F7F7F007F7F
      7F00808080008080800080808000808080008080800080808000808080008080
      8000808080008080800042443700393A2E004D4F41005E605000797A68006163
      520052534400505244002C2E23003133280034362B00393A2E005A5B4C005A5B
      4C00616352006C6E5D0080808000808080008080800080808000808080008080
      8000808080008080800080808000808080008080800080808000808080008080
      8000595B500058594F006D6F64007275680082847600727568005F605600777A
      6D006D6F640066695D0054564B00636559008080800080808000808080008080
      8000808080008080800080808000808080008080800080808000838383008080
      80007E7E8000807E8000807E8000807E80008080800080808000808080008080
      8000808080008080800080808000808080008080800080808000808080008080
      8000808080008080800080808000838383008282820082828200828282008282
      820082828200808080007F7F7F007F7F7F007F7F7F007F7F7F007F7F7F007F7F
      7F007F7F7F007F7F7F007F7F7F007F7F7F007F7F7F007F7F7F0054554C004344
      3D0042433C004C4D450053544B0053544B0053544B0053544B0052534A005152
      49006061570065665B007F7F7F007F7F7F007F7F7F007F7F7F007F7F7F007F7F
      7F00808080008080800080808000808080008080800080808000808080007274
      6100454739003133280053554500585A4A007D806C007C7F6B007F826E006163
      52005A5B4C005A5B4C007D806C005D5E4F002E30250034362B0037392C00393A
      2E005D5E4F005A5B4C00585A4A00808080008080800080808000808080008080
      8000808080008080800080808000808080008080800080808000808080005C5D
      5300595B50007376690076796C0075776A008083750072756800606157006164
      5800636559005D5F54004749400064665B008080800080808000808080008080
      8000808080008080800080808000808080008181810080808000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000008282820082828200828282008282
      820082828200818181007F7F7F007F7F7F007F7F7F007F7F7F007F7F7F007F7F
      7F007F7F7F007F7F7F007F7F7F007F7F7F00595E2F002A2E0F002A2E0F004142
      3B0041423B0040413A0041423B005152490053544B0052534A0052534A005152
      49006061570065665B007F7F7F007F7F7F007F7F7F007F7F7F007F7F7F007F7F
      7F008080800080808000808080008080800080808000808080004D4F41003133
      28004D4F41005A5B4C007C7F6B007D806C007D806C007C7F6B007A7C69005E60
      5000585A4A005A5B4C007D806C007D806C008487720047483A0037392C003436
      2B003C3E31005D5E4F0056584800808080008080800080808000808080008080
      800080808000808080008080800080808000808080008080800080808000595B
      50005C5D5300606157006164580076796C007F8273006E7164005F6056006061
      5700494A410056574D0066695D00636559008080800080808000808080008080
      800080808000808080008080800080808000828282008080800000000000A7B1
      7E0067704A00676E4A00636B49005F6747005C6444005A6143005A5F4100585E
      3E00565E3E00565E3E00565E3E00565E3E00565E3E00565E3E00565E3E00565E
      3E00585E3E00585D3F00363B2400000000008282820016161600171812000E0F
      0B0000000000858585007F7F7F007F7F7F007F7F7F007F7F7F007F7F7F007F7F
      7F007F7F7F007F7F7F007F7F7F00373C1900373C1900868D4F005A603100363A
      18002F3313002B2B2700393A340041423B004F50480053544B0052534A005354
      4B0064655A007F7F7F007F7F7F007F7F7F007F7F7F007F7F7F007F7F7F007F7F
      7F00808080008080800080808000808080008080800034362B0047483A007274
      6100828571007F826E007D806C007D806C00696B5A0068733600505826005159
      2700505826002C2E2300585A4A00727461007C7F6B0082857100848772004244
      370047483A005658480056584800808080008080800080808000808080008080
      8000808080008080800080808000808080008080800080808000808080005859
      4F006E71640066695D0065685C0063693300676D360042461D00454B2000464C
      2000484E210065685C0061645800636559008080800080808000808080008080
      800080808000808080008080800080808000828282008080800000000000D8E1
      A00098A373003C412C003C412C003C412C003C412C003C412C003C412C003C41
      2C003C412C003C412C003C412C003C412C003C412C003C412C003C412C003C41
      2C003C412C003C412C005C6141000000000012121400161810006C734D006C73
      4D0000000000858585007F7F7F007F7F7F007F7F7F007F7F7F007F7F7F007F7F
      7F007F7F7F003E431D00393D1900737A4300B0B77A00BDC38C0061673500868D
      4F007E85490041451F0032332E00393A340042433C0052534A0057584F006869
      5E007F7F7F007F7F7F007F7F7F007F7F7F007F7F7F007F7F7F007F7F7F007F7F
      7F00808080008080800080808000808080003334290050524400888B76007F82
      6E007C7F6B0082857100585A4A006873360056602B00717C3B0098A655006873
      36005C652E003A4118003E461B003C3E310056584800797A68007F826E007677
      64005A5B4C0047483A0080808000808080008080800080808000808080008080
      8000808080008080800080808000808080008080800080808000808080005859
      4F006F7265006A723900676D360051572700777F4200777F4200555B2A00555B
      2A003034110043491E00515727005B5C52008080800080808000808080008080
      800080808000808080008080800080808000828282008080800000000000DBE3
      A4009FA8780026291E0012140C0012130D0010130D0011120C000F120C001011
      0D0010110B000F100A000D100A000F100A000F100A000F100A000F100A000F10
      0A000A0B07004A4E3500626A480000000000333621003E442900484F2B00484F
      2B0000000000848484007F7F7F007F7F7F007F7F7F007F7F7F007F7F7F007F7F
      7F0041451F00848B4E00AFB67700BDC38C00B0B77A00B8BF8600979F5C006469
      3700848B4E00929A5700767D4400363731004F504800696A5F007F7F7F007F7F
      7F007F7F7F007F7F7F007F7F7F007F7F7F007F7F7F007F7F7F007F7F7F007F7F
      7F008080800080808000808080008080800037392C004A4C3E004D4F41006668
      5600888B7600646F33005E682F00849048009BAA580094A2520096A354008490
      48007F8B450065703500515A27004C5423003133280061635200525344003E3F
      33004A4C3E00585A4A0080808000808080008080800080808000808080008080
      8000808080008080800080808000808080008080800080808000808080005C5D
      530051572700585E2B00828949009BA45B00959E57006F763C00757C40007A82
      430072793D00616731003439140042461D008080800080808000808080008080
      800080808000808080008080800080808000828282008080800000000000DBE2
      AB00A7B17E006B7351008B9569008A95650088916300828C60007E885E007A83
      5B0079805800767D57007279550070795300707753007077530070775300737A
      5400393D2A00454C35006F774D0039401C004A512B00282D1600303818003038
      180000000000848484007F7F7F007F7F7F007F7F7F007F7F7F007F7F7F007F7F
      7F002B2F1100CCD1A200C5CA9700B6BD8200AFB67900A5AD6B00BEC58F00737A
      4300676C3900888F500098A15C00272B0E0042433C007F7F7F007F7F7F007F7F
      7F007F7F7F007F7F7F007F7F7F007F7F7F007F7F7F007F7F7F007F7F7F007F7F
      7F008080800080808000808080008080800034362B00797A68005E6050003334
      290034362B008A964C00A2B15C00ABB96900AAB868009DAB580094A252006C77
      39007C8843007C8843007C884300606931001718100031332800313328005658
      48004D4F41004D4F410080808000808080008080800080808000808080008080
      800080808000808080008080800080808000808080008080800080808000464C
      20007C834500A3AC6000ACB56F00AAB36C00A1AA5E006C733A005B612E007980
      430080884800949D5500585E2B00525828008080800080808000808080008080
      800080808000808080008080800080808000828282008080800000000000DCE4
      B100AEB984006F7854009DA976009DA7740099A37000949E6D008F9A6A008B96
      660087926400838D6100808A5E007E865C007C845A007B8359007B8359007D85
      5B003D422D00444B34006A734B002D311800373D1D00252A1300434A2400434A
      240000000000848484007F7F7F007F7F7F007F7F7F007F7F7F007F7F7F007F7F
      7F00272B0E00A5AD6B00C6CC9A00B7BE8400A6AF6E00A4AC6900B1B87B009EA6
      610052572B006B723D008B935300777E4500272B0E007F7F7F007F7F7F007F7F
      7F007F7F7F007F7F7F007F7F7F007F7F7F007F7F7F007F7F7F007F7F7F007F7F
      7F008080800080808000808080008080800034362B007F826E007D806C006E6F
      5D005058260097A55400AAB86800A9B66500AAB86800A9B66500ABB96B00707B
      3B00636C32007C8843007C884300657035004951220050524400565848005658
      48004D4F41004D4F410080808000808080008080800080808000808080008080
      8000808080008080800080808000808080008080800080808000808080004045
      1B008E975200AAB36C00A9B26A00AAB36C00ACB56F008C955100606631005B61
      2E007A82430097A05800616731005A602D008080800080808000808080008080
      800080808000808080008080800080808000828282008080800000000000DFE6
      B600B7C28900737A5600A0AB76009DA9760099A5720097A16E00939C6C008E99
      69008A956500858F6300848D5F007E885C007A835B007A825800798157007A82
      58003C412C00444B34006D764E00353B1B00464F290033391E00535A3200535A
      320000000000838383007F7F7F007F7F7F007F7F7F007F7F7F007F7F7F007F7F
      7F0081884B00393D1900BBC28B00B7BE8400A5AD6B00A4AC6900A5AD6B00BAC1
      89007980450053592C0082894C00777E4500737A4300313513007F7F7F007F7F
      7F007F7F7F007F7F7F007F7F7F007F7F7F007F7F7F007F7F7F007F7F7F007F7F
      7F008080800080808000808080008080800034362B007F826E007C7F6B008084
      6F0059632D00A2B15C00AAB86800AAB86800AAB86800AAB86800ADBA6C00707B
      3B00606931007C8843007C884300646F33005D672F005A5B4C00585A4A005658
      48004D4F41004D4F410080808000808080008080800080808000808080008080
      8000808080008080800080808000808080008080800080808000808080003F43
      1A009BA45B00AAB36C00AAB36C00AAB36C00ACB56F008E975200606631005A60
      2D00798043008088480063693300585E2B008080800080808000808080008080
      800080808000808080008080800080808000828282008080800000000000DFE6
      BE00BFCB8E00767D5700A8B37E00A5B27B00A1AC77009CA8750098A3730095A0
      7000939C6C008F986A008B946600858F6300838B61007E875F007C855D007C85
      5D003A3E2B0041483300778155005B643600646D3F0045492C006F784A006F78
      4A0000000000838383007F7F7F007F7F7F007F7F7F007F7F7F007F7F7F007F7F
      7F007F7F7F003C401C00868D4F00B3BA7E00A6AF6E00A4AC6900A4AC6900AFB6
      7900A4AC690064693700565C2E006F764000737A43003E431D007F7F7F007F7F
      7F007F7F7F007F7F7F007F7F7F007F7F7F007F7F7F007F7F7F007F7F7F007F7F
      7F008080800080808000808080008080800034362B00858874007C7F6B008084
      6F0059632D00A2B15C00AAB86800AAB86800AAB86800AAB86800ADBA6C00707B
      3B00606931007D8A43007D8A4300646F33005C652E005A5B4C005A5B4C005658
      48004D4F41004D4F410080808000808080008080800080808000808080008080
      8000808080008080800080808000808080008080800080808000808080003F43
      1A009BA45B00AAB36C00AAB36C00AAB36C00ACB56F008E975200606631005A60
      2D007980430080884800646A3400585E2B008080800080808000808080008080
      800080808000808080008080800080808000828282008080800000000000E3E7
      C500C4D09300E7EAD500E7EAD500E6E9D400E5E9CE00E4E8CB00E2E7C700E1E7
      C300E1E6BE00DFE5BB00DDE5B700DCE4B300DBE3AE00DBE2AB00DAE2A500D8E2
      A300656A4D00464B3400848F610099A3680096A06B005C6141009CA46F009CA4
      6F0000000000858585007F7F7F007F7F7F007F7F7F007F7F7F007F7F7F007F7F
      7F007F7F7F00707740004E532800B1B87B00A6AF6E00A4AC6900A4AC6900A8B0
      7000B4BB810072794100595E2F00595E2F006E743E00686E3A0040441F007F7F
      7F007F7F7F007F7F7F007F7F7F007F7F7F007F7F7F007F7F7F007F7F7F007F7F
      7F008080800080808000808080008080800033342900A1A48E00777966007F82
      6E0059632D00A1AF5A00ABB96B00A7B56400A9B66500A6B56300ABB969007782
      3F005E682F00707B3B0075803E00657035005C652E005A5B4C005A5B4C005A5B
      4C00505244004D4F410080808000808080008080800080808000808080008080
      8000808080008080800080808000808080008080800080808000808080003F43
      1A00A3AC6100AFB87300A7B06900A9B26A00A9B26A008B924F00696F37005A60
      2D006C733A00737A3F005E6430005A602D008080800080808000808080008080
      800080808000808080008080800080808000808080008080800000000000E4E8
      CB00C9D39600C4D09300C2CC8F00BDC68F00BAC38A00B6BF8800B0BA8500ADB7
      8200A9B38000A5AF7C00A0AA79009DA6760098A37300969F7100919B6F008F99
      6D008D976B008D976B008D976B00ACB67700E2E7C7008C906600D0D89900D0D8
      990000000000858585007F7F7F007F7F7F007F7F7F007F7F7F007F7F7F007F7F
      7F007F7F7F007F7F7F0050562A0089925200A8B06F00A4AC6900A4AC6900A4AC
      6900B4BB800090985600595E2F005A6031005C613200737A43004F552A006B72
      3D007F7F7F007F7F7F007F7F7F007F7F7F007F7F7F007F7F7F007F7F7F007F7F
      7F008080800080808000808080008080800033342900A1A48E0090937D008A8D
      770056602B00A9B66500BECA8700ABB96B00ADBA6C00C2CD8C00E1E9BA00AFBD
      70007C8843006B7537005E682F0059632D005D672F005A5B4C005A5B4C005A5B
      4C00505244004D4F410080808000808080008080800080808000808080008080
      8000808080008080800080808000808080008080800080808000808080003D42
      1A00ADB67000B8BF7D00ADB67200B0B97500C2CA8E00B0B975008C9551006A72
      3900555B2A0061673100525828005A602D008080800080808000808080008080
      800080808000808080008080800080808000808080008080800000000000E6EA
      D100CDD89900CAD29700C5CF9400C3CB9000BCC58C00B9C28B00B4BF8600B2BB
      8400AEB68100A8B27F00A5AD7C00A0A979009BA6760097A27200959D7100939C
      6E0090986C008D976B008D976B005E663C008995640081886000E7EAD500E2E7
      C70000000000858585007F7F7F007F7F7F007F7F7F007F7F7F007F7F7F007F7F
      7F007F7F7F007F7F7F00575D2F0053592C00A2AB6700A5AD6B00A5AD6B00A4AC
      6900ABB37300AFB677007B8248005A6031005C61320062683600434720005E64
      33007F7F7F007F7F7F007F7F7F007F7F7F007F7F7F007F7F7F007F7F7F007F7F
      7F008080800080808000808080008080800033342900A1A48E00A0A38D00A0A3
      8D006B753700B8C47C00C4CE8E00C2CD8B00DDE5B500D0D9A100D4DDA600CCD7
      9B00C6D1920098A655007F8B45005E682F005C652E005A5B4C005A5B4C005A5B
      4C00505244004D4F410080808000808080008080800080808000808080008080
      8000808080008080800080808000808080008080800080808000808080003D42
      1A00B6BE7C00B5BC7900C7CE9400CFD5A000C5CC9200B9C18000B0B97500A3AC
      6100808848005A602D00525828005A602D008080800080808000808080008080
      800080808000808080008080800080808000808080008080800000000000E7EA
      D500D0DA9B00CDD59A00C8D29500737A5600E1E6BE00E2E6BA00DEE4B800DDE4
      B300DCE4AF00DCE3AC00D8E1A800D8E2A300D8E1A000E3E7C50098A17100959E
      7000919C6C008E986C008D976B0002020200282D16009CA46F00D0DE9A00D0DE
      9A0000000000858585007F7F7F007F7F7F007F7F7F007F7F7F007F7F7F007F7F
      7F007F7F7F007F7F7F007F7F7F00444821008D965500A5AD6B00A5AD6B00A4AC
      6900A2AB6800BAC1880098A15C0070774000575D2F005A6031005C613200373C
      19006F7640007F7F7F007F7F7F007F7F7F007F7F7F007F7F7F007F7F7F007F7F
      7F008080800080808000808080008080800033342900A1A48E009CA08A00A0A3
      8D006C773900D0D99F00E7EFC400CCD79B00C6D19200C5D09000C5D09000C4CE
      8E00CCD79B00E5EDC100BECA87006B7537006B75370061635200585A4A005A5B
      4C00505244004D4F410080808000808080008080800080808000808080008080
      8000808080008080800080808000808080008080800080808000808080003D42
      1A00B6BE7C00D4DAA600C7CE9500B5BC7A00B5BC7A00B5BC7A00ACB56F00B5BC
      7A00B5BC7900A7B069004C5224005A602D008080800080808000808080008080
      800080808000808080008080800080808000808080008080800000000000E5E8
      D300D8E1A000D1D99A00CCD69700737A56000000000000000000000000000000
      00000000000000000000000000000000000000000000D8E1A0009BA5740096A1
      710037FF0000909A6E0090996B000000000000000000282D16009CA46F009CA4
      6F0000000000868686007F7F7F007F7F7F007F7F7F007F7F7F007F7F7F007F7F
      7F007F7F7F007F7F7F007F7F7F00484E24005C613200A2AB6800A4AC6900A4AC
      6900ABB37300ABB37300ECF0CF00ECF0CF00A4AC6900727941005C613200373C
      19006B723D007F7F7F007F7F7F007F7F7F007F7F7F007F7F7F007F7F7F007F7F
      7F008080800080808000808080008080800033342900A6A99500A7AA9600D4D6
      C6009DAB5800A2B15C00C6D19300CCD79B00C5D09000C5D09000C4CE8E00C5D0
      9000C5D09000CCD79B00DCE4B2008E9B4E007C7F6B008A8D77005E6050005A5B
      4C00505244004D4F410080808000808080008080800080808000808080008080
      8000808080008080800080808000808080008080800080808000808080004246
      1D00858C4B00C1C88C00C7CE9400B3BB7700BEC58600BEC58600AAB36C00A9B2
      6A00B5BC7900AFB873006F763C005A602D008080800080808000808080008080
      80008080800080808000808080008080800080808000000000000B0B0B00444B
      3400E5E8D300D8E1A000D8E1A000737A56000000000000000000000000000000
      00000000000000000000000000000000000000000000D8E1A0009EA777009AA4
      730037FF0000949D6F00909B6D00000000008080800000000000000000000000
      000000000000848484007F7F7F007F7F7F007F7F7F007F7F7F007F7F7F007F7F
      7F007F7F7F007F7F7F007F7F7F007F7F7F002B2F1100979F5C00B4BB8100B6BD
      8200D3D8AC00D1D7A900BEC58F00BEC58F00CCD1A200C1C8930090985600676C
      3900252A0D007F7F7F007F7F7F007F7F7F007F7F7F007F7F7F007F7F7F007F7F
      7F008080800080808000808080008080800031332800EAECDF00E1E2D400CACB
      BA00AEB19C00737D3D00636C3200A5B36100B8C47C00C5D09000C6D19300C5D0
      9000B5C1770094A252005E682F0071726000A4A79300A0A38D00A3A690008487
      7200535545004D4F410080808000808080008080800080808000808080008080
      8000808080008080800080808000808080008080800080808000808080005D5F
      54004C52240042461D00959E5700A4AD6300BEC58600B6BE7C00A6AF660097A0
      5800798043003C401800454B200065685C008080800080808000808080008080
      8000808080008080800080808000808080008080800000000000B5BE87008C97
      6700444B3400E7EAD500E6E9D200E7E9D000E6EACD00E3E8CA00E2E7C700E0E6
      C400E2E7BF00E2E6BC00DDE5B900DEE5B500DCE3B300DBE3AE00DAE3AA00DBE3
      A800D9E1A400D8E0A300D8E1A000000000008080800080808000808080008282
      820083838300808080007F7F7F007F7F7F007F7F7F007F7F7F007F7F7F007F7F
      7F007F7F7F007F7F7F007F7F7F007F7F7F00575D2F00484E2400DADFB600E5E9
      C500C6CC9A00BFC69000C1C89300C1C89300BFC69200D1D7A900F0F4D500AFB6
      77002B2F11007F7F7F007F7F7F007F7F7F007F7F7F007F7F7F007F7F7F007F7F
      7F00808080008080800080808000808080002E302500C0C2B100C3C5B400999C
      87009CA08A00A1A48E00A6A99500717C3B0077833F009AA95600A3B25E0097A5
      5400737D3D0077833F00A9AC9800A1A48E009CA08A009CA08A00A0A38D00A3A6
      90006F715E004A4C3E0080808000808080008080800080808000808080008080
      8000808080008080800080808000808080008080800080808000808080005758
      4E008284760085887A004F552500676D36008088480097A05800A6AF6600494F
      2200494F220065685C0057584E00636559008080800080808000808080008080
      8000808080008080800080808000808080008080800000000000B5BE8700B5BE
      87008C976700444B3400444B3400444B3400444B3400444B3400444B3400444B
      3400444B34000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000008080800080808000808080008181
      810080808000808080007F7F7F007F7F7F007F7F7F007F7F7F007F7F7F007F7F
      7F007F7F7F007F7F7F007F7F7F007F7F7F007F7F7F005E6433004F552A007A81
      4700C6CC9A00C6CC9A00C1C89300BFC69200C5CA9700C8CD9B00A2AB68006167
      35005A6031007F7F7F007F7F7F007F7F7F007F7F7F007F7F7F007F7F7F007F7F
      7F00808080008080800080808000808080006163520047483A00646655009B9E
      8800A3A69000A0A38D009CA08A00A1A48E00999C8700828E460077833F007C88
      4300A0A38D00A1A48E009CA08A00A0A38D00A1A48E00A6A9950092957F005658
      48004D4F41006C6E5D0080808000808080008080800080808000808080008080
      8000808080008080800080808000808080008080800080808000808080005758
      4E007A7C6F00898C7E009295870095988900494F2200494F2200494F22007E80
      72006C6E63005D5F540056574D0064665B008080800080808000808080008080
      8000808080008080800080808000808080008080800000000000ADB58200ADB5
      8200ADB58200ADB58200ADB58200ADB58200ADB58200ADB58200ADB58200898F
      6500000000005252520080808000808080008080800080808000808080008080
      8000808080008080800080808000808080008080800080808000808080008080
      800080808000808080007F7F7F007F7F7F007F7F7F007F7F7F007F7F7F007F7F
      7F007F7F7F007F7F7F007F7F7F007F7F7F007F7F7F007F7F7F006B723D006268
      360033371600888F5000C6CC9A00CCD1A100ABB37300373C1900484E24007F7F
      7F007F7F7F007F7F7F007F7F7F007F7F7F007F7F7F007F7F7F007F7F7F007F7F
      7F0080808000808080008080800080808000808080008080800061635200393A
      2E006C6E5D00A1A48E00A1A48E009CA08A00A0A38D00A1A48E008A8D7700999C
      8700A0A38D009CA08A00A0A38D00989B84008B8E7900535545003C3E31006C6E
      5D00808080008080800080808000808080008080800080808000808080008080
      8000808080008080800080808000808080008080800080808000808080005456
      4B00999B8F00AEB0A5009FA295008D908200898C7E00898C7E008B8D7E008C8F
      7F0087897B007B7E710053544A0064665B008080800080808000808080008080
      8000808080008080800080808000808080008080800000000000E7EAD500E7EA
      D500E6E9D400E3E8D100E6EACD00E3E8CA00E4E8C600E1E7C300E1E6C0000000
      0000525252008080800080808000808080008080800080808000808080008080
      8000808080008080800080808000808080008080800080808000808080008080
      800080808000808080007F7F7F007F7F7F007F7F7F007F7F7F007F7F7F007F7F
      7F007F7F7F007F7F7F007F7F7F007F7F7F007F7F7F007F7F7F007F7F7F007F7F
      7F007F7F7F004B5027002A2E0F002E3212002F3313007F7F7F007F7F7F007F7F
      7F007F7F7F007F7F7F007F7F7F007F7F7F007F7F7F007F7F7F007F7F7F007F7F
      7F00808080008080800080808000808080008080800080808000808080008080
      800050524400313328007C7F6B00A3A69000A0A38D00A1A48E00717260008E92
      7C00A0A38D00A0A38D009CA08A00616352002C2E23006B6C5B00808080008080
      8000808080008080800080808000808080008080800080808000808080008080
      8000808080008080800080808000808080008080800080808000808080005758
      4E006E7164008F9183008D9082008B8D7E008C8F7F008C8F7F008C8F7F008B8D
      7E008C8F7F008B8D7E0060615700616458008080800080808000808080008080
      8000808080008080800080808000808080008080800000000000000000000000
      0000000000000000000000000000000000000000000000000000000000005252
      5200808080008080800080808000808080008080800080808000808080008080
      8000808080008080800080808000808080008080800080808000808080008080
      800080808000808080007F7F7F007F7F7F007F7F7F007F7F7F007F7F7F007F7F
      7F007F7F7F007F7F7F007F7F7F007F7F7F007F7F7F007F7F7F007F7F7F007F7F
      7F007F7F7F007F7F7F007F7F7F007F7F7F007F7F7F007F7F7F007F7F7F007F7F
      7F007F7F7F007F7F7F007F7F7F007F7F7F007F7F7F007F7F7F007F7F7F007F7F
      7F00808080008080800080808000808080008080800080808000808080008080
      80008080800084877200393A2E0037392C0082857100A0A38D00717260008E92
      7C009B9E8800727461002E302500525344008285710080808000808080008080
      8000808080008080800080808000808080008080800080808000808080008080
      8000808080008080800080808000808080008080800080808000808080008080
      800054564B00494A410075776A00898C7E008B8D7E008C8F7F008B8D7E00898C
      7E006F726500474940005C5D5300808080008080800080808000808080008080
      8000808080008080800080808000808080008080800080808000808080008080
      8000808080008080800080808000808080008080800080808000808080008080
      8000808080008080800080808000808080008080800080808000808080008080
      8000808080008080800080808000808080008080800080808000808080008080
      800080808000808080007F7F7F007F7F7F007F7F7F007F7F7F007F7F7F007F7F
      7F007F7F7F007F7F7F007F7F7F007F7F7F007F7F7F007F7F7F007F7F7F007F7F
      7F007F7F7F007F7F7F007F7F7F007F7F7F007F7F7F007F7F7F007F7F7F007F7F
      7F007F7F7F007F7F7F007F7F7F007F7F7F007F7F7F007F7F7F007F7F7F007F7F
      7F00808080008080800080808000808080008080800080808000808080008080
      80008080800080808000808080007D806C0037392C00505244005A5B4C00696B
      5A003E3F33004244370085887400808080008080800080808000808080008080
      8000808080008080800080808000808080008080800080808000808080008080
      8000808080008080800080808000808080008080800080808000808080008080
      800080808000808080004F50470054564B00737669007F8273006F7265005052
      490053544A008080800080808000808080008080800080808000808080008080
      8000808080008080800080808000808080008080800080808000808080008080
      8000808080008080800080808000808080008080800080808000808080008080
      8000808080008080800080808000808080008080800080808000808080008080
      8000808080008080800080808000808080008080800080808000808080008080
      800080808000808080007F7F7F007F7F7F007F7F7F007F7F7F007F7F7F007F7F
      7F007F7F7F007F7F7F007F7F7F007F7F7F007F7F7F007F7F7F007F7F7F007F7F
      7F007F7F7F007F7F7F007F7F7F007F7F7F007F7F7F007F7F7F007F7F7F007F7F
      7F007F7F7F007F7F7F007F7F7F007F7F7F007F7F7F007F7F7F007F7F7F007F7F
      7F00808080008080800080808000808080008080800080808000808080008080
      800080808000808080008080800080808000808080006C6E5D004C4D3F004A4C
      3E007F826E008080800080808000808080008080800080808000808080008080
      8000808080008080800080808000808080008080800080808000808080008080
      8000808080008080800080808000808080008080800080808000808080008080
      80008080800080808000808080008080800056574D0057584E0056574D008080
      8000808080008080800080808000808080008080800080808000808080008080
      8000808080008080800080808000808080008080800080808000808080008080
      8000808080008080800080808000808080008080800080808000808080008080
      8000808080008080800080808000808080008080800080808000808080008080
      8000808080008080800080808000808080008080800080808000808080008080
      800080808000808080007F7F7F007F7F7F007F7F7F007F7F7F007F7F7F007F7F
      7F007F7F7F007F7F7F007F7F7F007F7F7F007F7F7F007F7F7F007F7F7F007F7F
      7F007F7F7F007F7F7F007F7F7F007F7F7F007F7F7F007F7F7F007F7F7F007F7F
      7F007F7F7F007F7F7F007F7F7F007F7F7F007F7F7F007F7F7F007F7F7F007F7F
      7F00808080008080800080808000808080008080800080808000808080008080
      8000808080008080800080808000808080008080800080808000808080008080
      8000808080008080800080808000808080008080800080808000808080008080
      8000808080008080800080808000808080008080800080808000808080008080
      8000808080008080800080808000808080008080800080808000808080008080
      8000808080008080800080808000808080008080800080808000808080008080
      8000808080008080800080808000808080008080800080808000808080008080
      8000808080008080800080808000808080008080800080808000808080008080
      8000808080008080800080808000808080008080800080808000808080008080
      8000808080008080800080808000808080008080800080808000808080008080
      8000808080008080800080808000808080008080800080808000808080008080
      800080808000808080007F7F7F007F7F7F007F7F7F007F7F7F007F7F7F007F7F
      7F007F7F7F007F7F7F007F7F7F007F7F7F007F7F7F007F7F7F007F7F7F007F7F
      7F007F7F7F007F7F7F007F7F7F007F7F7F007F7F7F007F7F7F007F7F7F007F7F
      7F007F7F7F007F7F7F007F7F7F007F7F7F007F7F7F007F7F7F007F7F7F007F7F
      7F00808080008080800080808000808080008080800080808000808080008080
      8000808080008080800080808000808080008080800080808000808080008080
      8000808080008080800080808000808080008080800080808000808080008080
      8000808080008080800080808000808080008080800080808000808080008080
      8000808080008080800080808000808080008080800080808000808080008080
      8000808080008080800080808000808080008080800080808000808080008080
      8000808080008080800080808000808080008080800080808000808080008080
      8000808080008080800080808000808080008080800080808000808080008080
      8000808080008080800080808000808080008080800080808000808080008080
      8000808080008080800080808000808080008080800080808000808080008080
      8000808080008080800080808000808080008080800080808000808080008080
      800080808000808080007F7F7F007F7F7F007F7F7F007F7F7F007F7F7F007F7F
      7F007F7F7F007F7F7F007F7F7F007F7F7F007F7F7F007F7F7F007F7F7F007F7F
      7F007F7F7F007F7F7F007F7F7F007F7F7F007F7F7F007F7F7F007F7F7F007F7F
      7F007F7F7F007F7F7F007F7F7F007F7F7F007F7F7F007F7F7F007F7F7F007F7F
      7F00808080008080800080808000808080008080800080808000808080008080
      8000808080008080800080808000808080008080800080808000808080008080
      8000808080008080800080808000808080008080800080808000808080008080
      8000808080008080800080808000808080008080800080808000808080008080
      8000808080008080800080808000808080008080800080808000808080008080
      8000808080008080800080808000808080008080800080808000808080008080
      8000808080008080800080808000808080008080800080808000808080008080
      800080808000808080008080800080808000424D3E000000000000003E000000
      28000000780000005A0000000100010000000000A00500000000000000000000
      000000000000000000000000FFFFFF0000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000}
  end
  object BrushBuildersImages: TImageList
    GrayscaleFactor = 128
    Height = 30
    Masked = False
    Width = 30
    Left = 199
    Top = 148
    Bitmap = {
      494C010102000C0004001E001E00FFFFFFFFFF10FFFFFFFFFFFFFFFF424D3600
      0000000000003600000028000000780000001E00000001002000000000004038
      0000000000000000000000000000000000008080800080808000808080008080
      8000808080008080800080808000808080008080800080808000808080008080
      8000808080008080800080808000808080008080800080808000808080008080
      8000808080008080800080808000808080008080800080808000808080008080
      8000808080008080800080808000808080008080800080808000808080008080
      8000808080008080800080808000808080008080800080808000808080008080
      8000808080008080800080808000808080008080800080808000808080008080
      8000808080008080800080808000808080008080800080808000808080008080
      8000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000008080800080808000808080008080
      8000808080008080800080808000808080008080800080808000808080008080
      8000808080008080800080808000828282008787870088888800848484008080
      8000808080008080800080808000808080008080800080808000808080008080
      8000808080008080800080808000808080008080800080808000808080008080
      8000808080008080800080808000808080008080800080808000808080008080
      8000808080008080800080808000808080008080800080808000808080008080
      8000808080008080800080808000808080008080800080808000808080008080
      8000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000008080800080808000808080008080
      8000808080008080800080808000808080008080800080808000808080008080
      80008080800081818100878787007C7C7C004D4B4D0039393B0069696B008686
      8600808080008080800080808000808080008080800080808000808080008080
      8000808080008080800080808000808080008080800080808000808080008080
      8000808080008080800080808000808080008080800080808000808080008080
      8000808080008080800080808000808080008080800080808000808080008080
      8000808080008080800080808000808080008080800080808000808080008080
      8000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000008080800080808000808080008080
      8000808080008080800080808000808080008080800080808000808080008181
      81008686860080808000505052001A1A1A00131610002A2D2000171717007171
      7300858585008080800080808000808080008080800080808000808080008080
      8000808080008080800080808000808080008080800080808000808080008080
      8000808080008080800080808000808080008080800080808000808080008080
      8000808080008080800080808000808080008080800080808000808080008080
      8000808080008080800080808000808080008080800080808000808080008080
      8000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000008080800080808000808080008080
      8000808080008080800080808000808080008080800081818100868686008282
      8200595959001D1D1F0014150F003A3E2D004D523F007E856100595E40001C1A
      1C007F7F7F008383830080808000808080008080800080808000808080008080
      8000808080008080800080808000808080008080800080808000808080008080
      8000808080008080800080808000808080008080800080808000808080008080
      8000808080008080800080808000808080008080800080808000808080008080
      8000808080008080800080808000808080008080800080808000808080008080
      8000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000008080800080808000808080008080
      8000808080008080800080808000808080008585850084848400605E60002323
      2300131410003A3C2D00595E47005B6148004D513E00757D5B00BCC88B00383C
      29002D2C30008585850081818100808080008080800080808000808080008080
      8000808080008080800080808000808080008080800080808000808080008080
      8000808080008080800080808000808080008080800080808000808080008080
      8000808080008080800082828200848484008484840080808000808080008080
      8000808080008080800080808000808080008080800080808000808080008080
      8000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000008080800080808000808080008080
      8000808080008080800084848400868686006666660028282A0011140E00393D
      2C005F654A00636950005C624900585D46004E523F00737B5900C4D19200AEB9
      80001F2217004543450088888800808080008080800080808000808080008080
      8000808080008080800080808000808080008080800080808000808080008080
      8000808080008080800080808000808080008080800080808000808080008080
      800082828200878787007C7C7C00626262006866680084848400818181008080
      8000808080008080800080808000808080008080800080808000808080008080
      8000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000008080800080808000808080008080
      800081818100868686006C6C6C002F2F2F0013141000383C2B00656C4F006F74
      5600666D500060664D005D634A00596148004F544100737B5900C7D59200C4D3
      920098A2710012130D005A5A5C00888888008080800080808000808080008080
      8000808080008080800080808000808080008080800080808000808080008080
      8000808080008080800080808000808080008080800080808000828282008787
      87007D7D7D004F4D4F00131315001D1F17002222180045454700888888008181
      8100808080008080800080808000808080008080800080808000808080008080
      8000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000008080800080808000808080008181
      8100808080003E3E400012130F00363A29006A715300787E5E00717757006C71
      5400676E510063694E0060664B005E6249005358410073795900CEDC9800C7D5
      9200C7D493007E865C000F0F0F006D6D6F008686860080808000808080008080
      8000808080008080800080808000808080008080800080808000808080008080
      80008080800080808000808080008080800082828200888888007D7D7D004D4D
      4F00151315000D100C005B604200D1D5A900D9D8CA0027291F00454345008888
      8800818181008080800080808000808080008080800080808000808080008080
      8000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000008080800080808000808080008585
      85005A5C5C00181A12006D755300838C64007C855F00757D5B00727858006D75
      55006A715300676E500061694E005F654A00555A450071795900D5E49C00CFDD
      9900C4D39200C5D293005E64440017161A007C7C7C0083838300808080008080
      8000808080008080800080808000808080008080800080808000808080008080
      8000808080008080800082828200878787007E7C7E004E4E4E00131315000D0F
      0D005B604300C3C99400FFFBD700FFFAEA00FFFEFC00D8D7CD0025251B004646
      4800888888008181810080808000808080008080800080808000808080008080
      8000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000008080800080808000808080008888
      8800424145003C412C008F996D00828963007D8660007A815D00757D5B007278
      58006D7456006B705300656B500062684D00585D480072785800DCEBA100D9E8
      A000CDDB9700C5D29100BCCA8D003E432C0029282C0083838300818181008080
      8000808080008080800080808000808080008080800080808000808080008080
      800082828200888888007D7D7D004D4D4D001513150010110D00585E4300BFC9
      8E00FAFFCE00FFF9E300FFF9E100FFFADF00FFF8E100FFFDF800D8D8C7002123
      190048484A008888880081818100808080008080800080808000808080008080
      8000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000008080800080808000808080008787
      8700363436004D533800919B6F00858E6600828B63007E87610079815F00767C
      5C00727858006D74560069705300656B50005C6249006F775700E2F2A600E2F2
      A600D6E59D00CBD99500C4D19200AFBA83002324190050505000878787008080
      8000808080008080800080808000808080008080800080808000828282008787
      87007D7D7D004D4B4D001313150011120E00585C4300B7C38800F2FFC000FCFF
      D800FCFFD700FAFFD700FCFFD700FFFFDB00FFFCDC00FFFADD00FFFDF600D6D4
      BD001E2116004B4A4E0088888800818181008080800080808000808080008080
      8000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000008080800080808000818181008080
      82002A282A00676D4D00969F71008B95690089916700838C64007F8862007B82
      5E00767E5C00727A58006D7456006A6F520060664B006F765800E7F7A900EBFC
      AC00DEEDA300D4E19B00C8D69300C9D794005F65450032313500878787008080
      80008080800080808000808080008080800082828200878787007C7C7C004C4A
      4C001513150010130D00555B4000AFBA8300E7F9AB00F3FFC400F3FFC300F2FF
      C500F5FFCA00F5FFCF00F7FFD200F9FFD500FCFFD700FEFFD900FFFED900FFFC
      F000D5D1B1001C1E14004D4C5000888888008080800080808000808080008080
      8000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000008080800080808000828282007A7A
      7C001C1E1C00828B63009AA37500919B6F008D976B0089936900848D65008089
      61007A835F00767E5C00727858006C735500666B4E006E755700ECFDAD00F1FF
      BA00E6F6AA00DBEAA200D0DD9700CBD996007D855B0028282A00828282008181
      8100808080008080800080808000838383007D7D7D004B4B4B00161416001516
      1000545A4100A6B17C00DAE7A100E8F8AA00E9FAAA00EAFAAC00F0FFAF00F0FF
      B600F1FFBD00F3FFC100F3FFC700F5FFCD00F6FFD200F8FFD400FAFFD500FBFF
      D600FFFAEA00D3CFA7001A1C12004F4F51008888880080808000808080008080
      8000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000008080800080808000828282007272
      72001E20180098A47300A1AB78009AA37300969F7100929B6D008C946A00858E
      6600828963007C835F00767E5C0071775700696E51006A715300EFFFAD00F4FF
      CA00F0FFAF00E4F2A600D7E49E00CFDD99009BA774001F1F1D007C7C7C008181
      8100808080008080800083838300757575001F2121001C1E1600565C43009EA8
      7700CAD79600D5E49E00D7E69E00D9E8A000DEEEA200E2F2A600E6F6A800ECFB
      AB00EDFEAE00EFFFB200F0FFB800F2FFBF00F4FFC400F4FFCA00F4FFCF00F5FF
      CF00F7FFD100FFF9E400CFD19C00151812005251550088888800808080008080
      8000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000008080800080808000848484005F5D
      5F0030342500A9B47D00A7B17E009FAB7A009EA8750096A17100919C6E008E97
      6900889066008089630079805C006F7658006C735500858C6800F8FFC900F8FF
      D200F1FFBC00EAFBAB00DDECA200D3E19D00B6C487001C1D1700747474008383
      83008080800080808000858585005B5B5D0015170F00929B6D00C3D29100C4D3
      9200C5D29100C9D79400CDDB9700D1DF9B00D5E49E00DAE9A100DDEDA300E3F1
      A500E3F5A700E7F7A900EBFCAC00EFFFB000F0FFB600F2FFBB00F2FFC000F3FF
      C300F3FFC500F4FFC700FFFCDD00C7CD92001516100053525800888886008080
      8000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000008080800080808000878787004849
      4C00484C3300BAC68B00AEBA8100A9B47F00A3AF7C009EA8770097A27200939C
      6E008A926800838A6400858E66009EA87700CAD79400F7FFB700FFFCEC00FEFF
      E200F3FFC800EFFFB200E4F4A800D9E8A000C7D5920030322300626062008484
      84008080800080808000828282007A7A7C002B2B2B002B2F1E008A926600C0CF
      9000C2CF9000C1CE8F00C3D29100C9D79400CEDC9800D1E09A00D6E39D00D9E8
      A000DCECA000DEEDA300E2F2A600E6F6A800EAFBAB00EDFEAE00F0FFB100EFFF
      B500F1FFB700F1FFB900F0FFBB00FBFFD800C0CB8C001D1F17005F5D5F008585
      8500000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000008080800080808000888888003736
      3A005F654500C8D59400B7C38800B2BE8300ACB78000A3AF7C009DA6760098A3
      7300A2AC7900B9C78A00DFEEA400F5FFC800FCFFD700FAFFD500F8FFD200FFFE
      E400FDFFDD00F0FFBD00E9F9AB00DDEDA300D4E39D00484C33004D4C50008787
      870080808000808080008080800082828200828282004A484A0013131300494D
      3400A4B17C00C6D19200C0CD8E00C0CF8E00C5D29100C9D79400CDDB9700CEDE
      9A00D2E19B00D6E39D00D8E9A100DDEDA300E1F1A500E4F4A800E7F7A900EBFA
      AA00EBFCAC00EFFFB000F2FFBF00F1FFC200F2FFBA00535B3900343337008989
      8900000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000008080800080808000848484002E2C
      2E007F895D00CEDC9800BFCC8D00B7C58800B4C08500B2BE8500B9C58A00CBDB
      9700E5F5A900F1FFC100F5FFCD00F6FFCB00F3FFCB00F4FFC900F3FFC500F4FF
      C200FDFFD900FCFFD500EFFFB000E2F2A600E1F0A6005E66440038373D008888
      8800808080008080800080808000808080008181810088888800727274002D2E
      3100191B13006E755100B8C68900C2CF9000BCCA8D00C1CE8D00C4D19000C7D5
      9200CAD79400CDDB9700D1DF9B00D5E49C00D8E79F00DBEBA100E0EFA500E9F9
      AB00EEFFAE00DCEBA100A7B27B006168440027281D00262826006C6E6E008383
      8300000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000080808000828282007D7D7D002424
      2200A5B07900D4E39D00CBD99600C9D79400C8D59400CFDE9800DCECA200E8F8
      AA00EFFEAE00EFFFB300EFFFB800F1FFB900F0FFBB00F1FFBA00F1FFB700EFFF
      B200EEFFAE00FBFFC900F8FFCA00E8F9A900E5F5A9007A8458002E2D31008585
      8500808080008080800080808000808080008080800080808000838383008686
      86005E5C5E001A181A0030342300919A6C00BECC8F00BDC98C00BAC88B00BCCA
      8D00C1CE8F00C3D29100C9D79400CEDC9800D7E69E00DDECA400D2E19900A3B0
      790061694700282B20001E1E1E0038373D006565670080808000838383008080
      8000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000008080800082828200757577002122
      1C00D3E29A00D9E89E00C9D79400C5D29100CAD89500D1E09A00D8E79F00DDEC
      A200E2F2A600E6F6A800EBFAAA00E9FCAC00EAFAAC00EAFAAC00E9F9AB00E7F7
      A900E4F4A600DFF1A300F2FFB600F1FFBC00E6F6AA009AA67300252525007E7E
      8000818181008080800080808000808080008080800080808000808080008181
      8100868686007E7E7E00424042001314100050563B00A9B47D00BCCA8D00B6C4
      8700BAC68900C2CF9000CAD79600C2CF90009DA87300606846002B2E21001D1D
      1B0036353900636163007E7E7E00888888008484840081818100808080008080
      8000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000808080008282820077777900191A
      16008F986800BDC98C00BAC68900BDCA8B00C3D08F00C9D69300CEDC9800D4E3
      9B00D8E79F00DCEBA100DEEDA300DFEEA400E0F0A400DFEEA400DDECA400DDED
      A100DAE9A100D5E49E00D2E19B00E4F4A800EFFFB300BECB8A001D1E1A007979
      7900828282008080800080808000808080008080800080808000808080008080
      80008080800082828200888888006E6E6E00272729001D1F1500747D5500B3BF
      8600B4C08500939E6E005D6343002D2F20001B1B1B00333437005D5D5F007D7D
      7D00878787008585850081818100808080008080800080808000808080008080
      8000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000008080800081818100848484005555
      55000F110F00494F3600A3AE7900BFCB8E00BDCA8B00BFCC8D00C3D09100C7D7
      9400CDDB9700D0DE9A00D2E19B00D4E39B00D3E29C00D3E29C00D3E29A00D0DF
      9900CDDD9900CBDB9700CAD79400C5D29100DBEBA100E0F0A4002A2B20006B6B
      6D00838383008080800080808000808080008080800080808000808080008080
      8000808080008080800080808000858585008484840055555700161618003436
      27002F32250019191900302F330059595B007B7B7B0087878700858585008181
      8100808080008080800080808000808080008080800080808000808080008080
      8000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000008080800080808000808080008686
      8600717171002D2B2D001C1C14006C755100B4C08700BBC98C00B8C68900BECB
      8C00C2CF8E00C4D19200C7D59200C8D69300C9D69300C8D59400C5D49300C6D3
      9200C6D49100C4D39200C7D69500C4D19000B2BE8500939D6A001D1F15006C6C
      6E00838383008080800080808000808080008080800080808000808080008080
      8000808080008080800080808000808080008181810087878700787878004C4A
      4C00545456007977790086868600868686008282820080808000808080008080
      8000808080008080800080808000808080008080800080808000808080008080
      8000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000008080800080808000808080008080
      800084848400868686005B5B5D001A1A1A00303223008D966800B7C58A00B7C3
      8800B6C28700B9C58800B9C78A00BCC88B00BBC98C00BFCC8D00C0CF8E00C6D4
      9100BDCA8B00A5B27B00777E5600464C330020221A001C1C1C004E4E4E008183
      8100818181008080800080808000808080008080800080808000808080008080
      8000808080008080800080808000808080008080800080808000828282008787
      8700868686008282820080808000808080008080800080808000808080008080
      8000808080008080800080808000808080008080800080808000808080008080
      8000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000008080800080808000808080008080
      80008080800081818100878787007E7E7E0042404200131311004C5237009EA8
      7700B3BF8600AFBA8300B1BD8400B8C48900BAC68900AEBA8100909B6B006268
      4600363A27001A1B15002424260040404200666668007E7E7E00858585008080
      8000808080008080800080808000808080008080800080808000808080008080
      8000808080008080800080808000808080008080800080808000808080008080
      8000808080008080800080808000808080008080800080808000808080008080
      8000808080008080800080808000808080008080800080808000808080008080
      8000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000008080800080808000808080008080
      800080808000808080008080800082828200888888006D6D6F002A282A001A1B
      150069714F00A2AD78009BA57400767F59004A503700272A1D001A1A1A002E2D
      31004F4E52007171730082828200888888008484840081818100808080008080
      8000808080008080800080808000808080008080800080808000808080008080
      8000808080008080800080808000808080008080800080808000808080008080
      8000808080008080800080808000808080008080800080808000808080008080
      8000808080008080800080808000808080008080800080808000808080008080
      8000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000008080800080808000808080008080
      8000808080008080800080808000808080008080800084848400858585005957
      59001919190028291E001C1D17002020200039383C005D5D5F007A7A7A008484
      8600878787008383830081818100808080008080800080808000808080008080
      8000808080008080800080808000808080008080800080808000808080008080
      8000808080008080800080808000808080008080800080808000808080008080
      8000808080008080800080808000808080008080800080808000808080008080
      8000808080008080800080808000808080008080800080808000808080008080
      8000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000008080800080808000808080008080
      8000808080008080800080808000808080008080800080808000818181008787
      87007A7A7A005E5E60006B6B6B007F7F7F008787870085858500828282008080
      8000808080008080800080808000808080008080800080808000808080008080
      8000808080008080800080808000808080008080800080808000808080008080
      8000808080008080800080808000808080008080800080808000808080008080
      8000808080008080800080808000808080008080800080808000808080008080
      8000808080008080800080808000808080008080800080808000808080008080
      8000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000008080800080808000808080008080
      8000808080008080800080808000808080008080800080808000808080008080
      8000828282008585850083838300818181008080800080808000808080008080
      8000808080008080800080808000808080008080800080808000808080008080
      8000808080008080800080808000808080008080800080808000808080008080
      8000808080008080800080808000808080008080800080808000808080008080
      8000808080008080800080808000808080008080800080808000808080008080
      8000808080008080800080808000808080008080800080808000808080008080
      8000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000424D3E000000000000003E000000
      28000000780000001E0000000100010000000000E00100000000000000000000
      000000000000000000000000FFFFFF0000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000}
  end
  object ActorPopupImages: TImageList
    Left = 543
    Top = 316
    Bitmap = {
      494C01010A003800040010001000FFFFFFFFFF10FFFFFFFFFFFFFFFF424D3600
      0000000000003600000028000000400000003000000001002000000000000030
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000CECECE00BEBEBE00BBBBBB00BBBC
      BC00BBBCBC00BBBCBC00BBBBBB00BEBEBE00BEBEBE00BEBEBE00BEBEBE00BEBE
      BE00BEBEBE00BEBEBE00BEBEBE00CECECE000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000D0C7D600A69FBC00A5A5C400A4A4
      C100A4A4C100A4A4C100A4A4C100A4A4C100A5A5C400A6A6C500A6A6C500A6A6
      C500A6A6C500A6A6C500AA98B300000000006E6E6E00BEBEBE00BEBEBE005D5D
      5D00BBBCBC00BBBCBC005D5D5D00BBBBBB00BEBEBE005E5E5E00BEBEBE00BEBE
      BE005E5E5E00BEBEBE00BEBEBE006E6E6E000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000ECEBEF00AC8EA800A3A5C300A2A4
      C200A0A2C000A0A2C000A0A2C000A0A2C000A0A2C000A2A4C200A3A5C300A3A5
      C300A3A5C300A389A600D0C6D500000000006E6E6E00BEBEBE00BEBEBE005E5E
      5E00BBBBBB00BBBCBC005D5D5D00BBBCBC00BBBBBB005E5E5E00BEBEBE00BEBE
      BE005E5E5E00BEBEBE00BEBEBE006E6E6E000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000C0AEC3009EA7C700C6AA
      B100C2A7AF00C9ACB300C0A5AC00B28B9D00C9ACB300C9ACB300CCAEB500CDAF
      B600B293A700A5A2BF0000000000000000006E6E6E008E8E8E008E8E8E00BEBE
      BE008E8E8E008B8B8B00BBBCBC008B8B8B008B8B8B00BBBBBB008E8E8E008E8E
      8E00BEBEBE008E8E8E008E8E8E006E6E6E000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000C0AEC300A1A0BE00FCE6
      CB00F9DFBB00FCEBD400F8E6CC00C9A5A700FAEBDA00FAEBDA00FAECDA00FEEF
      DD00C8A9B100A5A2BF0000000000000000006E6E6E008E8E8E008E8E8E00BEBE
      BE008E8E8E008E8E8E00BBBBBB008B8B8B008B8B8B00BBBCBC008B8B8B008E8E
      8E00BEBEBE008E8E8E008E8E8E006E6E6E000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000C0AEC300A1A0BE00FAE0
      BF00FBE4C700FDF1E200FEF2E300C9A3A400F9E8D300FAEBDA00FAEBDA00FAEC
      DA00C7A7B000A5A2BF0000000000000000006E6E6E00BEBEBE00BEBEBE005E5E
      5E00BEBEBE00BEBEBE005E5E5E00BBBBBB00BBBCBC005D5D5D00BBBCBC00BBBB
      BB005E5E5E00BEBEBE00BEBEBE006E6E6E000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000C0AEC300A1A0BE00F9DE
      BB00FCE6CB00FBE8CE00FDEDD800CDAAAE00F6E0C300FAEBDA00FAEBDA00FAEB
      DA00C4A5AE00A4A1BF0000000000000000006E6E6E00BEBEBE00BEBEBE005E5E
      5E00BEBEBE00BEBEBE005E5E5E00BEBEBE00BBBBBB005D5D5D00BBBCBC00BBBC
      BC005D5D5D00BEBEBE00BEBEBE006E6E6E000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000C0AEC300A1A0BE00F9DE
      BB00FAE0BF00FBE4C700FBE2C400CFAEB500F9E0BF00F9E9D300FAEBDA00FAEB
      DA00C4A5AE00A39FBD0000000000000000006E6E6E008E8E8E008E8E8E00BEBE
      BE008E8E8E008E8E8E00BEBEBE008E8E8E008E8E8E00BBBBBB008B8B8B008B8B
      8B00BBBCBC008B8B8B008E8E8E006E6E6E000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000C0AEC300A1A0BE00F9DE
      BB00F9DEBB00FCE6CB00F9DFBB00CEACB100FDEAD000FAE3C500FAECDA00FAEB
      DA00C4A5AE00A39FBC0000000000000000006E6E6E008E8E8E008E8E8E00BEBE
      BE008E8E8E008E8E8E00BEBEBE008E8E8E008E8E8E00BEBEBE008B8B8B008B8B
      8B00BBBCBC008B8B8B008B8B8B006E6E6E000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000C0AEC300A1A0BE00C9A2
      A200C9A2A200CAA3A400CAA4A800B4879900CCAAB200D0ABA800EAD3C800CFB0
      B500C4A5AE00A39FBC0000000000000000006E6E6E00BEBEBE00BEBEBE005E5E
      5E00BEBEBE00BEBEBE005E5E5E00BEBEBE00BEBEBE005E5E5E00BEBEBE00BBBB
      BB005D5D5D00BBBCBC00BBBCBC006D6D6D000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000C0AEC300A1A0BE00F9DE
      BB00F9DEBB00F9DEBB00FCEAD300CCA5A400FDECD500FDEAD000FCEAD300FEEF
      DD00C4A5AE00A39FBC0000000000000000006E6E6E00BEBEBE00BEBEBE005E5E
      5E00BEBEBE00BEBEBE005E5E5E00BEBEBE00BEBEBE005E5E5E00BEBEBE00BEBE
      BE005D5D5D00BBBCBC00BBBCBC006D6D6D000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000C0AEC300A1A0BE00F9DE
      BB00F9DEBB00F9DEBB00FCEBD500CEAAAC00FBE2C400FFF0DD00FAE1C000FEED
      D700C7A7B000A39FBD0000000000000000006E6E6E008E8E8E008E8E8E00BEBE
      BE008E8E8E008E8E8E00BEBEBE008E8E8E008E8E8E00BEBEBE008E8E8E008E8E
      8E00BEBEBE005D5D5D00BBBCBC00CACBCB000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000C0AEC300A1A0BE00E8C8
      B300E8C8B300D7B3AA00D7B3AA00CEA9AC00E8C9B300EBD4C800DABBB700D9B7
      B000C8A8B100A4A1BF0000000000000000006E6E6E008E8E8E008E8E8E00BEBE
      BE008E8E8E008E8E8E00BEBEBE008E8E8E008E8E8E00BEBEBE008E8E8E008E8E
      8E00BEBEBE007E7E7E0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000C0AEC3009EA7C700BDA0
      AA00BDA0AA00BDA0AA00BDA0AA00AF869B00C0A3AC00C0A3AC00C8A7B000BEA1
      AA00B08FA500A5A2BF0000000000000000006E6E6E00BEBEBE00BEBEBE005E5E
      5E00BEBEBE00BEBEBE005E5E5E00BEBEBE00BEBEBE005E5E5E00BEBEBE00BEBE
      BE00BEBEBE00DEDEDE0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000B393AC00A49DBB00A49D
      BB00A49DBB00A49DBB00A49DBB00A49DBB00A49DBB00A49DBB00A49DBB00A49D
      BB00A49DBB00A686A300EAE0E700000000006D6D6D00BEBEBE00BEBEBE005E5E
      5E00BEBEBE00BEBEBE005E5E5E00BEBEBE00BEBEBE006E6E6E00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000CACBCB00BBBBBB00BEBEBE00BEBE
      BE00BEBEBE00BEBEBE00BEBEBE00BEBEBE00BEBEBE00CECECE00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000010101000101
      0100010101000101010001010100000000000000000000000000000000000000
      00000000000000000000000000000000000000000000D8D8D800D8D8D800D8D8
      D800D8D8D800D8D8D8006E5742006E5742006E5742006E5742006E5742006E57
      42006E5742006E5742006E5742006E5742000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000B2B2E4004343C000C4C4E7000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000D1D1EF005D5DC8000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000042658700385D8100385D8100385D
      8100385D8100385D8100735C4800FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00735C4800000000003D3D3D00010101002B2B
      2B00CBCBCB000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000004B4BC4002A2ABC004646C2000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000004B4BC4009A9ADE000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000003B6286005498BE00569CC200569C
      C200579CC200579CC2007A645000FFFFFF00F8ECD500B4A18F00B09E8A00AB9B
      8400A7987F00F5E2BE00FFFFFF007A645000434343002C2C2C00A6A6A6004343
      43001E1E1E000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000004141C4002C2CBF002C2CBF00A0A0
      DF00000000000000000000000000000000000000000000000000000000000000
      0000000000008C8CDB003434BF00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000003E678B0051A0C60051A0C50052A0
      C50052A0C500529FC500816B5800FFFFFF00F9EFDB00F8EDD700F8EBD200F7E9
      CE00F6E7C900F6E5C500FFFFFF00816B5800080808009D9D9D0000000000C3C3
      C30000000000D9D9D90032323200818181008181810010101000818181008181
      8100101010008181810081818100323232007171D3002E2EC2002E2EC2003838
      C300000000000000000000000000000000000000000000000000000000000000
      0000C2C2EC002E2EBF009595DE00000000000000000000000000000000000000
      0000000000000000000001010100010101000101010001010100000000000000
      000000000000000000000000000000000000416C90004DA3C9004DA3C9004DA3
      C9004DA3C9004DA3C90088726000FFFFFF00FAF2E100B4A18F00B09E8A00AB9B
      8400A7987F00F7E8CB00FFFFFF00887260003A3A3A0037373700BABABA005050
      500000000000BFBFBF00B9B9B900DBDBDB00DBDBDB0098989800DBDBDB00DBDB
      DB0098989800DBDBDB00DBDBDB00B9B9B900D4D4F1003131C3003131C5003131
      C5007C7CD900000000000000000000000000000000000000000000000000E2E2
      F4003D3DC5004343C90000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000101
      0100000000000000000000000000000000004371960047A7CD0048A7CD0048A7
      CD0048A7CD0048A7CD008F7A6800FFFFFF00FBF4E800FAF2E300FAF0DF00F9EE
      DA00F8ECD600F8EAD100FFFFFF008F7A6800D6D6D6002A2A2A00000000001919
      1900070707008E8E8E00B0B0B000656565006565650065656500656565006565
      650000000000000000000000000000000000000000008B8BDE003333C8003333
      C8003333C800BCBCEB0000000000000000000000000000000000000000005555
      CC003333C700B3B3E90000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000101
      01000000000000000000000000000000000046769B0043ABD10043ABD10043AB
      D00043ABD00043ABD00095806E00E9E5E200E7E0D600B4A18F00B09E8A00AB9B
      8400A7987F00F9EDD800FFFFFF00978170000000000000000000000000000000
      00005D5D5D002222220008080800000000000000000000000000222222008787
      87000000000000000000000000000000000000000000000000006464D4003636
      CB003636CB004141CC00E3E3F6000000000000000000000000006464D1003636
      C7006D6DD4000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000101
      010000000000000000000000000000000000497BA0003DAFD4003EAFD4003EAF
      D4003EAFD4003EAFD40087A6AA00A69281009781700087715E0078614D00EDE4
      D600FAF2E300FAF0DE00FFFFFF009E8978000000000000000000000000000000
      0000BCBCBC000000000000000000040404005C5C5C00BEBEBE00000000000000
      0000000000000000000000000000000000000000000000000000000000005757
      D3003838CE003838CE005454D20000000000000000006C6CD6003838CA004141
      CB00E3E3F3000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000101
      0100000000000000000000000000000000004B80A50039B3D80039B3D80039B2
      D80039B2D80039B2D80039B2D8007C9DA100D9D1CA00FFFFFF0078614D00EEE7
      DC00FBF5E900FBF3E400FFFFFF00A59080000000000000000000000000000000
      0000BDBDBD0000000000000000000505050062626200C5C5C500000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00005B5BD7003B3BD2003B3BD2006767DB006969DA003B3BD1003B3BCE00B7B7
      EA00000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000101
      0100000000000000000000000000010101004E85AA0034B6DC0034B6DC0034B6
      DC0034B6DC0034B6DB0034B6DB0034B6DB0070949700D3CBC40078614D00EFEA
      E300FCF8EF00FCF6EA00FFFFFF00AC9889000000000000000000000000000000
      00005F5F5F0021212100080808000000000000000000000000002A2A2A008D8D
      8D00000000000000000000000000000000000000000000000000000000000000
      0000000000007272DE003D3DD5003D3DD5003D3DD5003D3DD5009090E4000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000001010100518AAF002FBADF002FBADF002FBA
      DF002FBADF002FBADF002FBADF002FBADF002FBADF00658B8E0078614D00F0EE
      EC00FFFFFF00FFFFFF00FFFFFF00B39F9100D6D6D6002B2B2B00000000001A1A
      1A00070707008D8D8D00ACACAC00020202000000000000000000000000000000
      00000606060055555500B9B9B900000000000000000000000000000000000000
      000000000000BABAEF003F3FD5004040D8004040D8004646D700000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000010101000101010001010100548FB4002ABEE3002ABEE3002ABE
      E3002ABEE3002ABEE3002ABEE3002ABEE3002ABEE3002ABEE30059828400B9A5
      9700BAA69800BAA69800BAA69800BAA698003A3A3A0036363600B8B8B8005050
      500000000000BEBEBE0000000000B7B7B7001212120000000000000000000000
      00000000000000000000000000002F2F2F000000000000000000000000000000
      00008383E5004242DB004242DB004242DB004242DB004242DB005C5CDE00E1E1
      F800000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000010101005694BA0099FFFF00333333003333
      33003333330033333300333333003333330033333300333333003333330099FF
      FF005693B900000000000000000000000000070707009D9D9D0000000000C4C4
      C40000000000D9D9D9000000000000000000000000007F7F7F00242424000101
      010000000000010101003D3D3D00A0A0A0000000000000000000ACACEF005151
      DE004545DE004545DE004545DE006262E000D6D6F6007E7EE6004545DE004F4F
      DD00CACAF4000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000001010100629CC0005998BE006D6D6D006D6D
      6D006D6D6D006C6C6C006C6C6C006C6C6C006C6C6C006B6B6B006B6B6B005998
      BE00609CC000000000000000000000000000414141002D2D2D00A7A7A7004444
      44001D1D1D000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000D0D0F4006060E1004747E1004747
      E1004747E1004747E1006C6CE500000000000000000000000000C4C4F4005A5A
      E2004646DE009494EC0000000000000000000101010000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000080808000DFDFDF007F7F7F000000000000000000000000000000
      000000000000000000000000000000000000DEDEDE003A3A3A00000000002929
      2900C9C9C9000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000005F5FE1004848E3004949E4004949
      E4004848E1009494ED0000000000000000000000000000000000000000000000
      0000A2A2F0005555E3006363E500D6D6F6000101010001010100000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000A4A4A40092929200A4A4A4000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000B9B9EF006565E5005F5FE7008686
      ED00DBDBF8000000000000000000000000000000000000000000000000000000
      00000000000000000000B1B1F3007979EB00FF330000FF330000FF330000FF33
      0000FF330000FF330000FF330000FF330000FF330000FF330000FF330000FF33
      0000FF330000FF330000FF330000FF3300000066CC000066CC000066CC000066
      CC000066CC000066CC000066CC000066CC000066CC000066CC000066CC000066
      CC000066CC000066CC000066CC000066CC0033CC000033CC000033CC000033CC
      000033CC000033CC000033CC000033CC000033CC000033CC000033CC000033CC
      000033CC000033CC000033CC000033CC00000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FF330000FF330000FF330000FF33
      0000FF330000FF330000FF330000FF330000FF330000FF330000FF330000FF33
      0000FF330000FF330000FF330000FF3300000066CC000066CC000066CC000066
      CC000066CC000066CC000066CC000066CC000066CC000066CC000066CC000066
      CC000066CC000066CC000066CC000066CC0033CC000033CC000033CC000033CC
      000033CC000033CC000033CC000033CC000033CC000033CC000033CC000033CC
      000033CC000033CC000033CC000033CC00000000000000000000000000000000
      0000B2ABA400989086009E968F009E978F009F989000A0999100A0999100A099
      91009A928700B7B0AA000000000000000000FF330000FF330000C0C0C000C0C0
      C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0
      C000C0C0C000C0C0C000FF330000FF3300000066CC000066CC00C0C0C000C0C0
      C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0
      C000C0C0C000C0C0C0000066CC000066CC0033CC000033CC0000C0C0C000C0C0
      C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0
      C000C0C0C000C0C0C00033CC000033CC0000000000000000000000000000E4E1
      DE009C938A00E0E0E000E0E0E000E0E0E000E1E1E100E4E4E400E5E5E500E5E5
      E500E5E5E5009E958C000000000000000000FF330000FF333300C0C0C000C0C0
      C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0
      C000C0C0C000C0C0C000FF330000FF3300000066CC000066CC00C0C0C000C0C0
      C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0
      C000C0C0C000C0C0C0000066CC000066CC0033CC000033CC0000C0C0C000C0C0
      C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0
      C000C0C0C000C0C0C00033CC000033CC000000000000000000009F978E00C2BE
      BA0099908700E1E1E100E0E0E000E0E0E000E0E0E000E1E1E100E4E4E400E5E5
      E500E5E5E5009E958C000000000000000000FF330000FF330000C0C0C000C0C0
      C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0
      C000C0C0C000C0C0C000FF330000FF3300000066CC000066CC00C0C0C000C0C0
      C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0
      C000C0C0C000C0C0C0000066CC000066CC0033CC000033CC0000C0C0C000C0C0
      C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0
      C000C0C0C000C0C0C00033CC000033CC000000000000000000009E958C00E5E5
      E5009A918800E4E4E400E1E1E100E0E0E000E0E0E000E0E0E000E1E1E100E4E4
      E400E5E5E5009E958C000000000000000000FF330000FF330000C0C0C000C0C0
      C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0
      C000C0C0C000C0C0C000FF330000FF3300000066CC000066CC00C0C0C000C0C0
      C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0
      C000C0C0C000C0C0C0000066CC000066CC0033CC000033CC0000C0C0C000C0C0
      C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0
      C000C0C0C000C0C0C00033CC000033CC000000000000000000009E958C00E5E5
      E5009A918800E5E5E500E4E4E400E1E1E100E0E0E000E0E0E000E0E0E000E1E1
      E100E4E4E4009E958C000000000000000000FF330000FF330000C0C0C000C0C0
      C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0
      C000C0C0C000C0C0C000FF330000FF3300000066CC000066CC00C0C0C000C0C0
      C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0
      C000C0C0C000C0C0C0000066CC000066CC0033CC000033CC0000C0C0C000C0C0
      C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0
      C000C0C0C000C0C0C00033CC000033CC000000000000000000009E958C00E5E5
      E5009A918800E5E5E500E5E5E500E4E4E400E1E1E100E0E0E000E0E0E000E0E0
      E000E1E1E1009E958C000000000000000000FF330000FF330000C0C0C000C0C0
      C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0
      C000C0C0C000C0C0C000FF330000FF3300000066CC000066CC00C0C0C000C0C0
      C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0
      C000C0C0C000C0C0C0000066CC000066CC0033CC000033CC0000C0C0C000C0C0
      C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0
      C000C0C0C000C0C0C00033CC000033CC000000000000000000009E958C00E5E5
      E5009A918800E5E5E500E5E5E500E5E5E500E4E4E400E1E1E100E0E0E000E0E0
      E000E0E0E0009B9289000000000000000000FF330000FF330000C0C0C000C0C0
      C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0
      C000C0C0C000C0C0C000FF330000FF3300000066CC000066CC00C0C0C000C0C0
      C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0
      C000C0C0C000C0C0C0000066CC000066CC0033CC000033CC0000C0C0C000C0C0
      C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0
      C000C0C0C000C0C0C00033CC000033CC000000000000000000009E958C00E5E5
      E5009A918800E5E5E500E5E5E500E5E5E500E5E5E500E4E4E400E1E1E100E0E0
      E000E0E0E0009B9289000000000000000000FF330000FF333300C0C0C000C0C0
      C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0
      C000C0C0C000C0C0C000FF330000FF3300000066CC000066CC00C0C0C000C0C0
      C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0
      C000C0C0C000C0C0C0000066CC000066CC0033CC000033CC0000C0C0C000C0C0
      C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0
      C000C0C0C000C0C0C00033CC000033CC000000000000000000009E958C00E5E5
      E5009A918800E5E5E500E5E5E500E5E5E500E5E5E500E5E5E500E4E4E400E1E1
      E100E0E0E0009B9289000000000000000000FF330000FF333300C0C0C000C0C0
      C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0
      C000C0C0C000C0C0C000FF330000FF3300000066CC000066CC00C0C0C000C0C0
      C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0
      C000C0C0C000C0C0C0000066CC000066CC0033CC000033CC0000C0C0C000C0C0
      C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0
      C000C0C0C000C0C0C00033CC000033CC000000000000000000009E958C00E5E5
      E500978E8500968D8500B3ADA700E5E5E500E5E5E500E5E5E500E5E5E500E4E4
      E400E1E1E1009B9289000000000000000000FF330000FF333300C0C0C000C0C0
      C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0
      C000C0C0C000C0C0C000FF330000FF3300000066CC000066CC00C0C0C000C0C0
      C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0
      C000C0C0C000C0C0C0000066CC000066CC0033CC000033CC0000C0C0C000C0C0
      C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0
      C000C0C0C000C0C0C00033CC000033CC000000000000000000009E958C00E5E5
      E500B1ABA5009B958F008E867F00CBC8C500E5E5E500E5E5E500E5E5E500E5E5
      E500E4E4E4009B9289000000000000000000FF330000FF333300C0C0C000C0C0
      C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0
      C000C0C0C000C0C0C000FF330000FF3300000066CC000066CC00C0C0C000C0C0
      C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0
      C000C0C0C000C0C0C0000066CC000066CC0033CC000033CC0000C0C0C000C0C0
      C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0
      C000C0C0C000C0C0C00033CC000033CC00000000000000000000948C8100958D
      8500948B8200AFA9A3008E867E00CBC8C500E5E5E500E5E5E500E5E5E500E5E5
      E500DDDCDB00998E85000000000000000000FF330000FF333300C0C0C000C0C0
      C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0
      C000C0C0C000C0C0C000FF330000FF3300000066CC000066CC00C0C0C000C0C0
      C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0
      C000C0C0C000C0C0C0000066CC000066CC0033CC000033CC0000C0C0C000C0C0
      C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0
      C000C0C0C000C0C0C00033CC000033CC00000000000000000000DCD9D6008C82
      7A0097928C00C4C0BC00BAB5B0009F978F009F978F009F978F009F978F009990
      8700A9A29A00000000000000000000000000FF330000FF330000FF330000FF33
      0000FF330000FF330000FF330000FF330000FF330000FF330000FF330000FF33
      0000FF330000FF330000FF330000FF3300000066CC000066CC000066CC000066
      CC000066CC000066CC000066CC000066CC000066CC000066CC000066CC000066
      CC000066CC000066CC000066CC000066CC0033CC000033CC000033CC000033CC
      000033CC000033CC000033CC000033CC000033CC000033CC000033CC000033CC
      000033CC000033CC000033CC000033CC0000000000000000000000000000DCD9
      D60084786F00B1ACA600BDB9B400BDB9B400BDB9B400BDB9B400B5AFAA009F97
      8E0000000000000000000000000000000000FF330000FF330000FF330000FF33
      0000FF330000FF330000FF330000FF330000FF330000FF330000FF330000FF33
      0000FF330000FF330000FF330000FF3300000066CC000066CC000066CC000066
      CC000066CC000066CC000066CC000066CC000066CC000066CC000066CC000066
      CC000066CC000066CC000066CC000066CC0033CC000033CC000033CC000033CC
      000033CC000033CC000033CC000033CC000033CC000033CC000033CC000033CC
      000033CC000033CC000033CC000033CC00000000000000000000000000000000
      000000000000CECBC500CECBC500CECBC500CECBC500CECBC500D4D1CC000000
      000000000000000000000000000000000000424D3E000000000000003E000000
      2800000040000000300000000100010000000000800100000000000000000000
      000000000000000000000000FFFFFF00FFFF0000000000000001000000000000
      0001000000000000800300000000000080030000000000008003000000000000
      8003000000000000800300000000000080030000000000008003000000000000
      8003000000000000800300000000000080030003000000008003000300000000
      8001003F00000000FFFF003F0000000000008000FFFF1FFC7FEE000087FF1FFC
      7FEA000007FF0FF94FEE000020000FF148200000000007E37FEE0000000F83E3
      7FEE0000F00FC1C74FEE0000F03FE187482E0000F03FF00F7FEE0000F00FF81F
      7FEE00000001F83F4FE000000200F00F482E00072380C0077FEA000707FF01C3
      7FEEF8FF07FF03F00000F8FFFFFF07FC000000000000FFFF000000000000F003
      000000000000E003000000000000C003000000000000C003000000000000C003
      000000000000C003000000000000C003000000000000C003000000000000C003
      000000000000C003000000000000C003000000000000C003000000000000C007
      000000000000E00F000000000000F81F00000000000000000000000000000000
      000000000000}
  end
  object EditorActions: TActionList
    Images = ActorPopupImages
    Left = 151
    Top = 472
    object NewFile: TAction
      Category = 'File'
      Caption = 'NewFile'
    end
    object OpenFile: TAction
      Category = 'File'
      Caption = 'OpenFile'
    end
    object SaveCurrentMap: TAction
      Category = 'File'
      Caption = 'SaveCurrentMap'
    end
    object SaveCurrentMapAs: TAction
      Category = 'File'
      Caption = 'SaveCurrentMapAs'
    end
    object Import: TAction
      Category = 'File'
      Caption = 'Import'
    end
    object Export: TAction
      Category = 'File'
      Caption = 'Export'
    end
    object edit_Undo: TAction
      Category = 'Edit'
      Caption = 'Undo'
      OnExecute = edit_UndoExecute
    end
    object edit_Redo: TAction
      Category = 'Edit'
      Caption = 'Redo'
      OnExecute = edit_RedoExecute
    end
    object edit_SearchActors: TAction
      Category = 'Edit'
      Caption = 'Search Actor...'
      OnExecute = edit_SearchActorsExecute
    end
    object edit_ActorCut: TAction
      Category = 'Edit'
      Caption = 'Cut'
      OnExecute = edit_ActorCutExecute
    end
    object edit_ActorCopy: TAction
      Category = 'Edit'
      Caption = 'Copy'
      OnExecute = edit_ActorCopyExecute
    end
    object edit_ActorPaste: TAction
      Category = 'Edit'
      Caption = 'Paste'
      OnExecute = edit_ActorPasteExecute
    end
    object edit_ActorDelete: TAction
      Category = 'Edit'
      Caption = 'Delete'
      OnExecute = edit_ActorDeleteExecute
    end
    object edit_ActorDuplicate: TAction
      Category = 'Edit'
      Caption = 'Duplicate'
      OnExecute = edit_ActorDuplicateExecute
    end
    object edit_SelectAllActors: TAction
      Category = 'Edit_Select'
      Caption = 'Select All Actors'
      OnExecute = edit_SelectAllActorsExecute
    end
    object brushAdd: TAction
      Category = 'Brush'
      Caption = 'Add'
      OnExecute = brushAddExecute
    end
    object brushSubtract: TAction
      Category = 'Brush'
      Caption = 'Subtract'
      OnExecute = brushSubtractExecute
    end
    object brushIntersect: TAction
      Category = 'Brush'
      Caption = 'Intersect'
      OnExecute = brushIntersectExecute
    end
    object brushDeintersect: TAction
      Category = 'Brush'
      Caption = 'Deintersect'
      OnExecute = brushDeintersectExecute
    end
    object ActorReset_moveToOrigin: TAction
      Category = 'ActorReset'
      Caption = 'ActorReset_moveToOrigin'
      OnExecute = ActorReset_moveToOriginExecute
    end
    object ActorReset_Pivot: TAction
      Category = 'ActorReset'
      Caption = 'ActorReset_Pivot'
      OnExecute = ActorReset_PivotExecute
    end
    object ActorReset_Rotation: TAction
      Category = 'ActorReset'
      Caption = 'ActorReset_Rotation'
      OnExecute = ActorReset_RotationExecute
    end
    object ActorReset_Scaling: TAction
      Category = 'ActorReset'
      Caption = 'ActorReset_Scaling'
      OnExecute = ActorReset_ScalingExecute
    end
    object ActorReset_All: TAction
      Category = 'ActorReset'
      Caption = 'ActorReset_All'
      OnExecute = ActorReset_AllExecute
    end
    object brushAddMover: TAction
      Category = 'Brush'
      Caption = 'Add Mover'
      OnExecute = brushAddMoverExecute
    end
    object brushAddDeusExMover: TAction
      Category = 'Brush'
      Caption = 'Add DeusExMover'
      OnExecute = brushAddDeusExMoverExecute
    end
    object brushAddBreakableGlass: TAction
      Category = 'Brush'
      Caption = 'Add BreakableGlass'
      ImageIndex = 8
      OnExecute = brushAddBreakableGlassExecute
    end
    object brushAddBreakableWall: TAction
      Category = 'Brush'
      Caption = 'Add BreakableWall'
      ImageIndex = 9
      OnExecute = brushAddBreakableWallExecute
    end
    object brushMakeSolid: TAction
      Category = 'Brush'
      Caption = 'Make Solid'
      ImageIndex = 0
      OnExecute = brushMakeSolidExecute
    end
    object brushMakeSemiSolid: TAction
      Category = 'Brush'
      Caption = 'Make SemiSolid'
      ImageIndex = 1
      OnExecute = brushMakeSemiSolidExecute
    end
    object brushMakeNonSolid: TAction
      Category = 'Brush'
      Caption = 'Make NonSolid'
      ImageIndex = 2
      OnExecute = brushMakeNonSolidExecute
    end
    object edit_SelectOfClass: TAction
      Category = 'Edit_Select'
      Caption = 'Select All %s'
      OnExecute = edit_SelectOfClassExecute
    end
    object edit_SelectOfSubClass: TAction
      Category = 'Edit_Select'
      Caption = 'Select All Actort of this class (%s) incl. subclasses'
      OnExecute = edit_SelectOfSubClassExecute
    end
    object edit_SelectOfEvent: TAction
      Category = 'Edit_Select'
      Caption = 'Select All Actors with same Event (%s)'
    end
    object edit_SelectOfTag: TAction
      Category = 'Edit_Select'
      Caption = 'Select All Actors with same Tag (%s)'
    end
    object edit_SelectOfAttachTag: TAction
      Category = 'Edit_Select'
      Caption = 'Select All Actors with same AttachTag (%s)'
    end
    object edit_SelectOfBindName: TAction
      Category = 'Edit_Select'
      Caption = 'Select All Actors with same BindName (%s)'
    end
    object edit_SelectOfBarkBindName: TAction
      Category = 'Edit_Select'
      Caption = 'Select All Actors with same BarkBindName (%s)'
    end
    object edit_SelectNoneActors: TAction
      Category = 'Edit_Select'
      Caption = 'Select None'
      OnExecute = edit_SelectNoneActorsExecute
    end
    object edit_SelectInvert: TAction
      Category = 'Edit_Select'
      Caption = 'Invert Selection'
      OnExecute = edit_SelectInvertExecute
    end
    object edit_SelectInsideBrush: TAction
      Category = 'Edit_Select'
      Caption = 'edit_SelectInsideBrush'
      OnExecute = edit_SelectInsideBrushExecute
    end
    object Actor_Selected_Properties: TAction
      Category = 'Actor_Selected'
      Caption = 'Actor_Selected_Properties'
      OnExecute = Actor_Selected_PropertiesExecute
    end
  end
end
