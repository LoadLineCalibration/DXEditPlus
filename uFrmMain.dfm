object frmMain: TfrmMain
  Left = 0
  Top = 0
  HorzScrollBar.Visible = False
  VertScrollBar.Visible = False
  Caption = 'DXEditPlus'
  ClientHeight = 600
  ClientWidth = 999
  Color = clBtnFace
  Constraints.MinHeight = 400
  Constraints.MinWidth = 600
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -13
  Font.Name = 'Segoe UI'
  Font.Style = []
  Menu = menuMainForm
  Position = poScreenCenter
  ShowHint = True
  OnClose = FormClose
  OnCreate = FormCreate
  OnResize = FormResize
  DesignSize = (
    999
    600)
  TextHeight = 17
  object ButtonsPanel: TEsPanel
    Left = 0
    Top = 32
    Width = 122
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
      Width = 122
      Height = 536
      VertScrollBar.ButtonSize = 1
      VertScrollBar.Margin = 1
      VertScrollBar.Size = 1
      VertScrollBar.ThumbSize = 1
      VertScrollBar.Tracking = True
      VertScrollBar.Visible = False
      Align = alClient
      ChevronHotColor = clBlue
      GradientBaseColor = clGray
      GradientColor = clMedGray
      HeaderAlignment = taRightJustify
      HeaderFont.Charset = DEFAULT_CHARSET
      HeaderFont.Color = clWindowText
      HeaderFont.Height = -12
      HeaderFont.Name = 'Segoe UI'
      HeaderFont.Style = []
      HeaderHeight = 20
      TabOrder = 0
      OnMouseWheel = ButtonGroupsMouseWheel
      object catSelection: TCategoryPanel
        Top = 289
        Height = 140
        Color = clGray
        TabOrder = 0
        object ToolBar3: TToolBar
          Left = 0
          Top = 0
          Width = 116
          Height = 118
          Align = alClient
          ButtonHeight = 36
          ButtonWidth = 37
          Caption = 'ToolBar3'
          DrawingStyle = dsGradient
          GradientEndColor = clGray
          GradientStartColor = clGray
          HotTrackColor = 4227327
          Images = SelectionImageList
          TabOrder = 0
          Transparent = False
          object tbShowSelectedActorsOnly: TToolButton
            Left = 0
            Top = 0
            Hint = 'Show selected actors only'
            ImageIndex = 0
          end
          object tbHideSelectedActors: TToolButton
            Left = 37
            Top = 0
            Hint = 'Hide selected actors'
            ImageIndex = 1
          end
          object tbSelActorsInsideRedBrush: TToolButton
            Left = 74
            Top = 0
            Hint = 'Select actors inside builder (red) brush'
            ImageIndex = 2
            Wrap = True
          end
          object tbSelectAllActors: TToolButton
            Left = 0
            Top = 36
            Hint = 'Select all (actors and brushes)'
            ImageIndex = 3
          end
          object tbInvertSelection: TToolButton
            Left = 37
            Top = 36
            Hint = 'Invert selection'
            ImageIndex = 4
          end
          object tbShowAllActors: TToolButton
            Left = 74
            Top = 36
            Hint = 'Show all actors'
            ImageIndex = 5
            Wrap = True
          end
          object tbCameraSpeed: TToolButton
            Left = 0
            Top = 72
            Hint = 'Select camera speed...'
            ImageIndex = 6
          end
          object tbCameraAlign: TToolButton
            Left = 37
            Top = 72
            Hint = 'Align viewport cameras to 3D viewport camera'
            ImageIndex = 7
          end
          object ToolButton37: TToolButton
            Left = 74
            Top = 72
            ImageIndex = 8
            Visible = False
          end
        end
      end
      object catOperations: TCategoryPanel
        Top = 177
        Height = 112
        Color = clGray
        TabOrder = 1
        object ToolBar2: TToolBar
          Left = 0
          Top = 0
          Width = 116
          Height = 109
          ButtonHeight = 37
          ButtonWidth = 37
          Caption = 'ToolBar2'
          DrawingStyle = dsGradient
          GradientEndColor = clGray
          GradientStartColor = clGray
          HotTrackColor = clAqua
          Images = operationsImageList
          TabOrder = 0
          Transparent = False
          object tbAdd: TToolButton
            Left = 0
            Top = 0
            Action = brushAdd
            ImageIndex = 0
          end
          object tbSubtract: TToolButton
            Left = 37
            Top = 0
            Action = brushSubtract
            ImageIndex = 1
          end
          object tbIntersect: TToolButton
            Left = 74
            Top = 0
            Action = brushIntersect
            ImageIndex = 2
            Wrap = True
          end
          object tbDeintersect: TToolButton
            Left = 0
            Top = 37
            Action = brushDeintersect
            ImageIndex = 3
          end
          object tbAddSpecial: TToolButton
            Left = 37
            Top = 37
            Hint = 'Add Special Brush'
            ImageIndex = 4
            OnClick = tbAddSpecialClick
          end
          object tbAddMover: TToolButton
            Left = 74
            Top = 37
            Hint = 'Add Mover...'
            ImageIndex = 5
          end
        end
      end
      object catBrushBuilders: TCategoryPanel
        Top = 151
        Height = 26
        Color = clGray
        Collapsed = True
        TabOrder = 2
        ExpandedHeight = 216
        object toolbarBrushBuilders: TToolBar
          Left = 0
          Top = 0
          Width = 116
          Height = 188
          ButtonHeight = 37
          ButtonWidth = 37
          Caption = 'toolbarBrushBuilders'
          DrawingStyle = dsGradient
          GradientEndColor = clGray
          GradientStartColor = clGray
          HideClippedButtons = True
          Images = BrushBuildersImages
          List = True
          TabOrder = 0
          Transparent = False
          object tbCube: TToolButton
            Left = 0
            Top = 0
            ImageIndex = 0
          end
          object tbSheet: TToolButton
            Left = 37
            Top = 0
            ImageIndex = 1
          end
          object tbCylinder: TToolButton
            Left = 74
            Top = 0
            ImageIndex = 2
            Wrap = True
          end
          object tbCone: TToolButton
            Left = 0
            Top = 37
            ImageIndex = 3
          end
          object tbSphere: TToolButton
            Left = 37
            Top = 37
            ImageIndex = 4
          end
          object tbCurvedStaircase: TToolButton
            Left = 74
            Top = 37
            ImageIndex = 5
            Wrap = True
          end
          object tbSpiralStairCase: TToolButton
            Left = 0
            Top = 74
            ImageIndex = 6
          end
          object tbLinearStairCase: TToolButton
            Left = 37
            Top = 74
            ImageIndex = 7
          end
          object ToolButton30: TToolButton
            Left = 74
            Top = 74
            Enabled = False
            Wrap = True
          end
          object ToolButton31: TToolButton
            Left = 0
            Top = 111
            Enabled = False
          end
          object ToolButton32: TToolButton
            Left = 37
            Top = 111
            Enabled = False
          end
          object ToolButton33: TToolButton
            Left = 74
            Top = 111
            Enabled = False
            ImageIndex = 8
            Wrap = True
          end
          object ToolButton34: TToolButton
            Left = 0
            Top = 148
            Enabled = False
            ImageIndex = 9
          end
          object ToolButton35: TToolButton
            Left = 37
            Top = 148
            Enabled = False
            ImageIndex = 10
          end
          object ToolButton36: TToolButton
            Left = 74
            Top = 148
            Enabled = False
            ImageIndex = 11
          end
        end
      end
      object catBrushMode: TCategoryPanel
        Top = 0
        Height = 151
        Color = clGray
        Ctl3D = True
        ParentCtl3D = False
        TabOrder = 3
        object toolbarEditorMode: TToolBar
          Left = 0
          Top = 0
          Width = 116
          Height = 129
          Align = alClient
          ButtonHeight = 37
          ButtonWidth = 37
          Customizable = True
          DrawingStyle = dsGradient
          GradientEndColor = clGray
          GradientStartColor = clGray
          HotTrackColor = 13030033
          Images = EditorModeImages
          TabOrder = 0
          Transparent = False
          object tbMoveCamera: TToolButton
            Tag = 1
            Left = 0
            Top = 0
            Caption = 'tbMoveCamera'
            Down = True
            Grouped = True
            ImageIndex = 0
            Style = tbsCheck
            OnClick = SetEditorModeClick
          end
          object tbSheerBrush: TToolButton
            Tag = 6
            Left = 37
            Top = 0
            Caption = 'tbSheerBrush'
            Grouped = True
            ImageIndex = 1
            Style = tbsCheck
            OnClick = SetEditorModeClick
          end
          object tbScaleBrush: TToolButton
            Tag = 7
            Left = 74
            Top = 0
            Caption = 'tbScaleBrush'
            Grouped = True
            ImageIndex = 2
            Wrap = True
            Style = tbsCheck
            OnClick = SetEditorModeClick
          end
          object tbStretchBrush: TToolButton
            Tag = 8
            Left = 0
            Top = 37
            Caption = 'tbStretchBrush'
            Grouped = True
            ImageIndex = 3
            Style = tbsCheck
            OnClick = SetEditorModeClick
          end
          object tbSnapScaleBrush: TToolButton
            Tag = 18
            Left = 37
            Top = 37
            Caption = 'tbSnapScaleBrush'
            Grouped = True
            ImageIndex = 4
            Style = tbsCheck
            OnClick = SetEditorModeClick
          end
          object tbRotateBrush: TToolButton
            Tag = 5
            Left = 74
            Top = 37
            Caption = 'tbRotateBrush'
            Grouped = True
            ImageIndex = 5
            Wrap = True
            Style = tbsCheck
            OnClick = SetEditorModeClick
          end
          object tbTexturePan: TToolButton
            Tag = 11
            Left = 0
            Top = 74
            Caption = 'tbTexturePan'
            Grouped = True
            ImageIndex = 6
            Style = tbsCheck
            OnClick = SetEditorModeClick
          end
          object tbTextureRotate: TToolButton
            Tag = 13
            Left = 37
            Top = 74
            Caption = 'tbTextureRotate'
            Grouped = True
            ImageIndex = 7
            Style = tbsCheck
            OnClick = SetEditorModeClick
          end
          object ToolButton45: TToolButton
            Left = 74
            Top = 74
            Caption = 'ToolButton45'
            Enabled = False
            Grouped = True
            ImageIndex = 8
            OnClick = SetEditorModeClick
          end
        end
      end
    end
  end
  object CommandBar: TEsPanel
    Left = 0
    Top = 568
    Width = 999
    Height = 32
    Align = alBottom
    Color = clGray
    ParentBackground = False
    ParentColor = False
    TabOrder = 1
    FrameStyle = None
    FrameColor = 8421440
    DesignSize = (
      999
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
    object cmbCommand: TComboBox
      Left = 83
      Top = 6
      Width = 417
      Height = 24
      Font.Charset = RUSSIAN_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Verdana'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
      TextHint = 'Enter command and press Enter'
      OnKeyDown = cmbCommandKeyDown
    end
    object cmbLeftPanelsWidthRatio: TComboBox
      Left = 935
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
      Width = 999
      Height = 6
      Align = alTop
      Smooth = True
      BarColor = 16744448
      BackgroundColor = clWhite
      TabOrder = 2
    end
    object btnApplyViewportRatio: TButton
      Left = 906
      Top = 6
      Width = 28
      Height = 22
      Anchors = [akTop, akRight]
      Caption = 'Ok'
      TabOrder = 3
      OnClick = btnApplyViewportRatioClick
    end
    object btnViewLog: TButton
      Left = 500
      Top = 6
      Width = 24
      Height = 24
      ImageAlignment = iaCenter
      ImageIndex = 21
      Images = ToolbarImages
      TabOrder = 5
      OnClick = sbLogClick
    end
    object ProgressText: TStaticText
      Left = 651
      Top = 6
      Width = 249
      Height = 19
      Alignment = taCenter
      Anchors = [akLeft, akTop, akRight]
      AutoSize = False
      Color = clGray
      ParentColor = False
      TabOrder = 4
      Transparent = False
    end
    object chkShowConverter: TCheckBox
      Left = 528
      Top = 8
      Width = 117
      Height = 21
      Caption = 'Show Converter'
      TabOrder = 6
      OnClick = chkShowConverterClick
    end
  end
  object ViewportsPanel: TEsPanel
    Left = 120
    Top = 32
    Width = 879
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
    Width = 999
    Height = 32
    Align = alTop
    Color = clGray
    ParentBackground = False
    ParentColor = False
    TabOrder = 3
    CaptionVisible = False
    FrameStyle = None
    object ToolBar1: TToolBar
      AlignWithMargins = True
      Left = 3
      Top = 3
      Width = 993
      Height = 29
      ButtonHeight = 26
      ButtonWidth = 27
      Caption = 'ToolBar1'
      DoubleBuffered = True
      DrawingStyle = dsGradient
      EdgeInner = esNone
      EdgeOuter = esNone
      Flat = False
      GradientEndColor = clGray
      GradientStartColor = clGray
      HotTrackColor = 14675076
      Images = ToolbarImages
      GradientDirection = gdHorizontal
      ParentDoubleBuffered = False
      TabOrder = 0
      Transparent = False
      StyleName = 'Windows'
      object Label3: TLabel
        Left = 0
        Top = 0
        Width = 5
        Height = 26
        Alignment = taCenter
        AutoSize = False
        Transparent = False
      end
      object ToolButton2: TToolButton
        Left = 5
        Top = 0
        Action = file_NewMap
        ImageIndex = 0
      end
      object ToolButton3: TToolButton
        Left = 32
        Top = 0
        Action = file_OpenMap
        ImageIndex = 1
      end
      object ToolButton4: TToolButton
        Left = 59
        Top = 0
        Caption = 'ToolButton4'
        ImageIndex = 2
      end
      object Label2: TLabel
        Left = 86
        Top = 0
        Width = 10
        Height = 26
        Alignment = taCenter
        AutoSize = False
        Transparent = False
      end
      object ToolButton6: TToolButton
        Left = 96
        Top = 0
        Action = edit_Undo
        ImageIndex = 3
      end
      object ToolButton7: TToolButton
        Left = 123
        Top = 0
        Action = edit_Redo
        ImageIndex = 4
      end
      object Label5: TLabel
        Left = 150
        Top = 0
        Width = 10
        Height = 26
        Alignment = taCenter
        AutoSize = False
        Transparent = False
      end
      object ToolButton11: TToolButton
        Left = 160
        Top = 0
        Action = edit_SearchActors
        ImageIndex = 5
      end
      object Label6: TLabel
        Left = 187
        Top = 0
        Width = 10
        Height = 26
        Alignment = taCenter
        AutoSize = False
        Transparent = False
      end
      object ToolButton14: TToolButton
        Left = 197
        Top = 0
        Action = br_ActorBrowser
        ImageIndex = 6
      end
      object ToolButton15: TToolButton
        Left = 224
        Top = 0
        Action = br_MusicBrowser
        ImageIndex = 7
      end
      object ToolButton16: TToolButton
        Left = 251
        Top = 0
        Action = br_SoundBrowser
        ImageIndex = 8
      end
      object ToolButton17: TToolButton
        Left = 278
        Top = 0
        Action = br_TextureBrowser
        ImageIndex = 9
      end
      object ToolButton18: TToolButton
        Left = 305
        Top = 0
        Action = br_MeshBrowser
        ImageIndex = 10
      end
      object Label4: TLabel
        Left = 332
        Top = 0
        Width = 10
        Height = 26
        Alignment = taCenter
        AutoSize = False
        Transparent = False
      end
      object ToolButton1: TToolButton
        Left = 342
        Top = 0
        Caption = 'ToolButton1'
        ImageIndex = 11
        OnClick = N2DShapeEditor1Click
      end
      object ToolButton5: TToolButton
        Left = 369
        Top = 0
        Caption = 'ToolButton5'
        ImageIndex = 12
      end
      object Label8: TLabel
        Left = 396
        Top = 0
        Width = 10
        Height = 26
        Alignment = taCenter
        AutoSize = False
        Transparent = False
      end
      object ToolButton8: TToolButton
        Left = 406
        Top = 0
        Caption = 'ToolButton8'
        ImageIndex = 13
      end
      object ToolButton9: TToolButton
        Left = 433
        Top = 0
        Caption = 'ToolButton9'
        ImageIndex = 14
      end
      object Label9: TLabel
        Left = 460
        Top = 0
        Width = 10
        Height = 26
        Alignment = taCenter
        AutoSize = False
        Transparent = False
      end
      object tbBuildGeometry: TToolButton
        Left = 470
        Top = 0
        Hint = 'Build Geometry'
        Caption = 'tbBuildGeometry'
        ImageIndex = 15
        OnClick = tbBuildGeometryClick
      end
      object tbBuildLighting: TToolButton
        Left = 497
        Top = 0
        Hint = 'Build Lighting'
        Caption = 'tbBuildLighting'
        ImageIndex = 16
      end
      object tbBuildPaths: TToolButton
        Left = 524
        Top = 0
        Hint = 'Build Paths'
        Caption = 'tbBuildPaths'
        ImageIndex = 17
        OnClick = tbBuildPathsClick
      end
      object tbBuildAll: TToolButton
        Left = 551
        Top = 0
        Hint = 'Build All (as per current build settings)'
        Caption = 'tbBuildAll'
        ImageIndex = 18
      end
      object tbBuildOptions: TToolButton
        Left = 578
        Top = 0
        Hint = 'Build Options...'
        Action = build_options
        ImageIndex = 19
      end
      object Label7: TLabel
        Left = 605
        Top = 0
        Width = 10
        Height = 26
        Alignment = taCenter
        AutoSize = False
        Transparent = False
      end
      object ToolButton21: TToolButton
        Left = 615
        Top = 0
        Hint = 'Play Map!'
        Caption = 'ToolButton21'
        ImageIndex = 20
      end
    end
  end
  object Callback: TEdit
    Left = 632
    Top = 574
    Width = 13
    Height = 25
    TabOrder = 4
    Visible = False
    OnKeyPress = CallbackKeyPress
  end
  object pnlConverter: TEsPanel
    Left = 527
    Top = 420
    Width = 438
    Height = 150
    Anchors = [akLeft, akBottom]
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = 'Segoe UI'
    Font.Style = []
    ParentFont = False
    TabOrder = 5
    Visible = False
    CaptionVisible = False
    FrameStyle = Flat
    FrameColor = clBlue
    FrameWidth = 2
    object GroupBox1: TGroupBox
      Left = 8
      Top = 4
      Width = 209
      Height = 117
      Caption = 'Angles/Rotation'
      DefaultHeaderFont = False
      HeaderFont.Charset = DEFAULT_CHARSET
      HeaderFont.Color = clWindowText
      HeaderFont.Height = -12
      HeaderFont.Name = 'Segoe UI'
      HeaderFont.Style = [fsBold]
      TabOrder = 0
      object Label10: TLabel
        Left = 2
        Top = 17
        Width = 75
        Height = 98
        Align = alLeft
        Alignment = taRightJustify
        AutoSize = False
        Caption = #13#10'Unreal Units:'#13#10#13#10'Degrees:'#13#10
        ExplicitTop = 16
        ExplicitHeight = 122
      end
      object se_CustomAngle: TJvSpinEdit
        Left = 83
        Top = 57
        Width = 120
        Height = 23
        Thousands = True
        Decimal = 3
        Increment = 0.001000000000000000
        MaxValue = 360.000000000000000000
        MinValue = -360.000000000000000000
        ValueType = vtFloat
        Font.Charset = RUSSIAN_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Consolas'
        Font.Style = []
        ParentFont = False
        TabOrder = 0
        OnChange = se_CustomAngleChange
        HideSelection = False
      end
      object se_RotationUU: TJvSpinEdit
        Left = 83
        Top = 28
        Width = 120
        Height = 23
        Decimal = 0
        MaxValue = 65536.000000000000000000
        MinValue = -65536.000000000000000000
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Consolas'
        Font.Style = []
        ParentFont = False
        TabOrder = 1
        OnChange = se_RotationUUChange
        HideSelection = False
      end
    end
    object GroupBox2: TGroupBox
      Left = 223
      Top = 4
      Width = 209
      Height = 117
      Caption = 'Distance'
      DefaultHeaderFont = False
      HeaderFont.Charset = DEFAULT_CHARSET
      HeaderFont.Color = clWindowText
      HeaderFont.Height = -12
      HeaderFont.Name = 'Segoe UI'
      HeaderFont.Style = [fsBold]
      TabOrder = 1
      object lblDistance: TLabel
        Left = 2
        Top = 17
        Width = 75
        Height = 98
        Align = alLeft
        Alignment = taRightJustify
        AutoSize = False
        Caption = #13#10'Unreal Units:'#13#10#13#10'Dist. In Cm:'#13#10#13#10'in Meters:'
        ExplicitTop = 16
        ExplicitHeight = 122
      end
      object se_Dist_Cm: TJvSpinEdit
        Left = 83
        Top = 57
        Width = 120
        Height = 23
        Decimal = 3
        Increment = 0.001000000000000000
        ValueType = vtFloat
        Font.Charset = RUSSIAN_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Consolas'
        Font.Style = []
        ParentFont = False
        TabOrder = 0
        OnChange = se_Dist_CmChange
        HideSelection = False
      end
      object se_DistanceUU: TJvSpinEdit
        Left = 83
        Top = 28
        Width = 120
        Height = 23
        Decimal = 0
        MaxValue = 65536.000000000000000000
        MinValue = -65536.000000000000000000
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Consolas'
        Font.Style = []
        ParentFont = False
        TabOrder = 1
        OnChange = se_DistanceUUChange
        HideSelection = False
      end
      object se_Dist_Meters: TJvSpinEdit
        Left = 83
        Top = 86
        Width = 120
        Height = 23
        Decimal = 3
        Increment = 0.001000000000000000
        ValueType = vtFloat
        Font.Charset = RUSSIAN_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Consolas'
        Font.Style = []
        ParentFont = False
        TabOrder = 2
        OnChange = se_Dist_MetersChange
        HideSelection = False
      end
    end
    object chkUseInches: TCheckBox
      Left = 223
      Top = 125
      Width = 122
      Height = 17
      Caption = 'Use Inches/Feet?'
      TabOrder = 2
      OnClick = chkUseInchesClick
    end
  end
  object menuMainForm: TMainMenu
    OnChange = menuMainFormChange
    Left = 500
    Top = 36
    object File1: TMenuItem
      Caption = 'File'
      object New1: TMenuItem
        Action = file_NewMap
      end
      object Open1: TMenuItem
        Action = file_OpenMap
      end
      object N2: TMenuItem
        Caption = '-'
      end
      object Savecurrentmap1: TMenuItem
        Action = file_SaveCurrentMap
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
      object N33: TMenuItem
        Caption = '-'
      end
      object miGenerateIntForMap: TMenuItem
        Caption = 'Generate .int file for current map'
        OnClick = miGenerateIntForMapClick
      end
      object N7: TMenuItem
        Caption = '-'
      end
      object mnuRecentMaps: TMenuItem
        AutoHotkeys = maManual
        AutoLineReduction = maManual
        Caption = 'Recent files'
        object RecentFile0: TMenuItem
          Caption = '0'
          OnClick = OpenRecentMapClick
        end
        object RecentFile1: TMenuItem
          Caption = '1'
          OnClick = OpenRecentMapClick
        end
        object RecentFile2: TMenuItem
          Caption = '2'
          OnClick = OpenRecentMapClick
        end
        object RecentFile3: TMenuItem
          Caption = '3'
          OnClick = OpenRecentMapClick
        end
        object RecentFile4: TMenuItem
          Caption = '4'
          OnClick = OpenRecentMapClick
        end
        object RecentFile5: TMenuItem
          Caption = '5'
          OnClick = OpenRecentMapClick
        end
        object RecentFile6: TMenuItem
          Caption = '6'
          OnClick = OpenRecentMapClick
        end
        object RecentFile7: TMenuItem
          Caption = '7'
          OnClick = OpenRecentMapClick
        end
        object RecentFile8: TMenuItem
          Caption = '8'
          OnClick = OpenRecentMapClick
        end
        object RecentFile9: TMenuItem
          Caption = '9'
          OnClick = OpenRecentMapClick
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
    object mnuView: TMenuItem
      Caption = 'View'
      object ActorClassBrowser1: TMenuItem
        Action = br_ActorBrowser
      end
      object GroupBrowser1: TMenuItem
        Caption = 'Group Browser'
        Visible = False
      end
      object Masterbrowser1: TMenuItem
        Action = br_MasterBrowser
      end
      object MeshBrowser1: TMenuItem
        Action = br_MeshBrowser
      end
      object Musicbrowser1: TMenuItem
        Action = br_MusicBrowser
      end
      object ScriptEditor1: TMenuItem
        Caption = 'Script Editor'
        Visible = False
      end
      object SoundBrowser1: TMenuItem
        Action = br_SoundBrowser
      end
      object extureBrowser1: TMenuItem
        Action = br_TextureBrowser
      end
      object N14: TMenuItem
        Caption = '-'
      end
      object Log1: TMenuItem
        Action = view_Log
      end
      object ActorProperties1: TMenuItem
        Action = view_ActorSelectedProperties
      end
      object Surfaceproperties1: TMenuItem
        Action = view_surf_Properties
      end
      object LevelProperties2: TMenuItem
        Action = view_level_properties
      end
      object DeusExLevelInfoProperties2: TMenuItem
        Action = view_DX_LevelinfoProperties
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
        Action = build_options
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
        OnClick = N2DShapeEditor1Click
      end
    end
    object Extensions1: TMenuItem
      Caption = 'Extensions'
      object InstallOpenGLDrv1: TMenuItem
        Caption = 'Install OpenGLDrv + EditorPatch...'
        OnClick = InstallOpenGLDrv1Click
      end
    end
    object Help1: TMenuItem
      Caption = 'Help'
      object ServerSetCurrentClass1: TMenuItem
        Caption = 'ServerSetCurrentClass'
        OnClick = ServerSetCurrentClass1Click
      end
      object estTextureProperties1: TMenuItem
        Caption = 'Test TextureProperties'
        OnClick = estTextureProperties1Click
      end
    end
  end
  object ViewportPopup: TPopupMenu
    Images = ActorPopupImages
    MenuAnimation = [maNone]
    Left = 316
    Top = 472
    object AddLighthere1: TMenuItem
      Caption = 'Add Light here'
    end
    object N1: TMenuItem
      Caption = '-'
    end
    object RotationGrid1: TMenuItem
      Caption = 'Rotation Grid'
      ImageIndex = 12
      object N16Units2: TMenuItem
        Tag = 16
        Caption = '16 Units'
        GroupIndex = 4
        RadioItem = True
        OnClick = SetRotGridSizeCick
      end
      object N32Units2: TMenuItem
        Tag = 32
        Caption = '32 Units'
        GroupIndex = 4
        RadioItem = True
        OnClick = SetRotGridSizeCick
      end
      object N64Units2: TMenuItem
        Tag = 64
        Caption = '64 Units'
        GroupIndex = 4
        RadioItem = True
        OnClick = SetRotGridSizeCick
      end
      object N128Units2: TMenuItem
        Tag = 128
        Caption = '128 Units'
        GroupIndex = 4
        RadioItem = True
        OnClick = SetRotGridSizeCick
      end
      object N256Units2: TMenuItem
        Tag = 256
        Caption = '256 Units'
        GroupIndex = 4
        RadioItem = True
        OnClick = SetRotGridSizeCick
      end
      object N512Units1: TMenuItem
        Tag = 512
        Caption = '512 Units'
        GroupIndex = 4
        RadioItem = True
        OnClick = SetRotGridSizeCick
      end
      object N1024Unitsdefault1: TMenuItem
        Tag = 1024
        Caption = '1024 Units (default)'
        GroupIndex = 4
        RadioItem = True
        OnClick = SetRotGridSizeCick
      end
    end
    object Grid1: TMenuItem
      Caption = 'Grid'
      ImageIndex = 11
      object N1unit1: TMenuItem
        Tag = 1
        Caption = '1 unit'
        GroupIndex = 5
        RadioItem = True
        OnClick = SetGridSizeClick
      end
      object N2units1: TMenuItem
        Tag = 2
        Caption = '2 units'
        GroupIndex = 5
        RadioItem = True
        OnClick = SetGridSizeClick
      end
      object N4units1: TMenuItem
        Tag = 4
        Caption = '4 units'
        GroupIndex = 5
        RadioItem = True
        OnClick = SetGridSizeClick
      end
      object N8units1: TMenuItem
        Tag = 8
        Caption = '8 units'
        GroupIndex = 5
        RadioItem = True
        OnClick = SetGridSizeClick
      end
      object N16units1: TMenuItem
        Tag = 16
        Caption = '16 units (default)'
        GroupIndex = 5
        RadioItem = True
        OnClick = SetGridSizeClick
      end
      object N32units1: TMenuItem
        Tag = 32
        Caption = '32 units'
        GroupIndex = 5
        RadioItem = True
        OnClick = SetGridSizeClick
      end
      object N64units1: TMenuItem
        Tag = 64
        Caption = '64 units'
        GroupIndex = 5
        RadioItem = True
        OnClick = SetGridSizeClick
      end
      object N128units1: TMenuItem
        Tag = 128
        Caption = '128 units'
        GroupIndex = 5
        RadioItem = True
        OnClick = SetGridSizeClick
      end
      object N256units1: TMenuItem
        Tag = 256
        Caption = '256 units'
        GroupIndex = 5
        RadioItem = True
        OnClick = SetGridSizeClick
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
    end
    object DeusExLevelInfoproperties1: TMenuItem
      Caption = 'DeusExLevelInfo properties'
    end
  end
  object ActorSelectedPopup: TPopupMenu
    AutoHotkeys = maManual
    AutoLineReduction = maManual
    Images = ActorPopupImages
    MenuAnimation = [maNone]
    OwnerDraw = True
    Left = 419
    Top = 472
    object mniSelectedProperties: TMenuItem
      Action = view_ActorSelectedProperties
    end
    object mnuMoverKeys: TMenuItem
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
    Left = 411
    Top = 36
    Bitmap = {
      494C010116001800040014001400FFFFFFFFFF10FFFFFFFFFFFFFFFF424D3600
      0000000000003600000028000000500000007800000001002000000000000096
      0000000000000000000000000000000000008080800080808000808080008080
      8000808080008080800080808000808080008080800080808000808080008080
      8000808080008080800080808000808080008080800080808000808080008080
      8000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0
      C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0
      C000C0C0C000C0C0C000C0C0C000C0C0C0000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000008080800080808000808080000000
      0000000000000000000000000000808080008080800080808000808080008080
      8000808080000000000000000000000000000000000080808000808080008080
      8000C0C0C0000404040004040400040404000404040004040400040404000404
      0400040404000404040004040400040404000404040004040400040404000404
      0400040404000404040004040400040404000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000008080800080808000808080000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000080808000808080008080
      8000C0C0C00004040400FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00040404000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000008080800080808000808080000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000080808000808080008080
      8000C0C0C00004040400FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00040404000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000008080800080808000808080000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000080808000808080008080
      8000C0C0C00004040400FFFFFF00FFFFFF0099993300FFFFFF00999933009999
      3300999933009999330099993300999933009999330099993300FFFFFF009999
      330099993300FFFFFF00FFFFFF00040404000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000008080800080808000808080004C4C
      4C004C4C4C004C4C4C004C4C4C004C4C4C004C4C4C004C4C4C004C4C4C004C4C
      4C004C4C4C004C4C4C004C4C4C004C4C4C004C4C4C0080808000808080008080
      8000C0C0C00004040400FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00040404000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000008080800080808000808080008080
      8000A5B07B003D4130003D413000808080008080800023232300000000008080
      8000808080008080800080808000808080008080800080808000808080008080
      8000C0C0C00004040400FFFFFF00FFFFFF0099993300FFFFFF00999933009999
      3300999933009999330099993300999933009999330099993300999933009999
      330099993300FFFFFF00FFFFFF00040404000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000008080800080808000808080008080
      8000808080008080800080808000808080008080800023232300000000008080
      8000808080008080800080808000808080008080800080808000808080008080
      8000C0C0C00004040400FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00040404000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000008080800080808000808080008080
      8000808080008080800080808000808080008080800023232300000000008080
      8000808080008080800080808000808080008080800080808000808080008080
      8000C0C0C00004040400FFFFFF00FFFFFF009999330099993300999933009999
      3300999933009999330099993300999933009999330099993300999933009999
      330099993300FFFFFF00FFFFFF00040404000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000008080800080808000808080008080
      8000808080008080800080808000808080008080800023232300000000008080
      8000808080008080800080808000808080008080800080808000808080008080
      8000C0C0C00004040400FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00040404000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000008080800080808000808080008080
      8000808080008080800080808000808080008080800023232300000000008080
      8000808080008080800080808000808080008080800080808000808080008080
      8000C0C0C00004040400FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00040404000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000008080800080808000808080008080
      8000808080008080800080808000808080007878780023232300000000006C6C
      6C007D7D7D008080800080808000808080008080800080808000808080008080
      8000C0C0C00004040400FFFFFF00FFFFFF009999330099993300999933009999
      3300999933009999330099993300999933009999330099993300FFFFFF009999
      330099993300FFFFFF00FFFFFF00040404000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000008080800080808000808080008080
      8000808080008080800080808000717171004040400000000000000000002121
      2100525252007C7C7C0080808000808080008080800080808000808080008080
      8000C0C0C00004040400FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00040404000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000008080800080808000808080008080
      800080808000808080007B7B7B004C4C4C000F0F0F0000000000000000000606
      06001B1B1B006969690080808000808080008080800080808000808080008080
      8000C0C0C00004040400FFFFFF00FFFFFF0099993300FFFFFF00999933009999
      3300999933009999330099993300999933009999330099993300999933009999
      330099993300FFFFFF00FFFFFF00040404000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000008080800080808000808080008080
      8000808080008080800074747400313131000505050002020200000000000303
      0300090909005353530080808000808080008080800080808000808080008080
      8000C0C0C00004040400FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00040404000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000008080800080808000808080008080
      8000808080008080800074747400323232000404040070707000252525000202
      0200090909005353530080808000808080008080800080808000808080008080
      8000C0C0C00004040400FFFFFF00FFFFFF009999330099993300999933009999
      3300999933009999330099993300999933009999330099993300999933009999
      330099993300FFFFFF00FFFFFF00040404000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000008080800080808000808080008080
      800080808000808080007B7B7B004C4C4C000F0F0F00A4A4A4006B6B6B000606
      06001B1B1B006969690080808000808080008080800080808000808080008080
      8000C0C0C00004040400FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00040404000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000008080800080808000808080008080
      8000808080008080800080808000727272003F3F3F001B1B1B00141414002121
      2100535353007C7C7C0080808000808080008080800080808000808080008080
      8000C0C0C0008000000080000000800000008000000080000000800000008000
      0000800000008000000080000000800000008000000080000000800000008000
      0000800000008000000080000000800000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000008080800080808000808080008080
      80008080800080808000808080008080800077777700666666005F5F5F006D6D
      6D007C7C7C008080800080808000808080008080800080808000808080008080
      8000C0C0C0008000000080000000800000008000000080000000800000008000
      0000800000008000000080000000800000008000000080000000800000008000
      0000800000008000000080000000800000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000008080800080808000808080008080
      8000808080008080800080808000808080008080800080808000808080008080
      8000808080008080800080808000808080008080800080808000808080008080
      8000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0
      C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0
      C000C0C0C000C0C0C000C0C0C000C0C0C0000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000008080800080808000808080008080
      8000808080008080800080808000808080008080800080808000808080008080
      8000808080008080800080808000808080008080800080808000808080008080
      8000808080008080800080808000808080008080800080808000808080008080
      8000808080008080800080808000808080008080800080808000808080008080
      8000808080008080800080808000808080008080800080808000808080008080
      8000808080008080800080808000808080008080800080808000808080008080
      8000808080008080800080808000808080008080800080808000808080008080
      8000808080008080800080808000808080008080800080808000808080005050
      5000505050005050500050505000808080008080800080808000808080008080
      8000808080008080800080808000808080008080800080808000808080008080
      8000808080008080800080808000808080007E7E7E0080808000808080008080
      8000808080008080800080808000808080008080800080808000808080008080
      8000808080008080800080808000808080008080800080808000808080008080
      8000808080008080800080808000808080008080800075767200373833005456
      4F00787977008080800080808000808080008080800080808000808080008080
      8000808080008080800080808000808080008080800080808000808080008080
      8000808080008080800020221A0024261C007D7D7D0080808000808080008080
      8000808080008080800080808000808080008080800080808000000000000000
      0000000000000000000050505000808080008080800080808000808080008080
      8000808080008080800080808000808080008080800080808000808080008080
      80008080800080808000808080008080800020221A0024261C0024261C007D7D
      7D00808080008080800080808000808080008080800080808000808080008080
      8000808080008080800080808000808080008080800080808000808080008080
      80008080800080808000808080008080800080808000525549003F4332003F43
      320054574C008080800080808000808080008080800080808000808080008080
      8000808080008080800080808000808080008080800080808000808080008080
      800080808000494E39003D413000323528003D42300080808000808080008080
      8000808080008080800080808000808080008080800080808000000000003D41
      30003D4130000000000050505000808080008080800080808000808080008080
      8000808080008080800080808000808080008080800080808000808080008080
      8000808080008080800080808000494E39003D41300032352800323528003D42
      3000808080008080800080808000808080008080800080808000808080008080
      8000808080008080800080808000808080008080800080808000808080008080
      80008080800080808000808080008080800080808000464A3A00767F59004F53
      3D00454839008080800080808000808080008080800080808000808080008080
      800080808000818180008585850081818200676769006C6C6E00848484008080
      800080808000A5B07B00616748002A2C2200464B360080808000808080008080
      800080808000808080008080800080808000808080008080800000000000727A
      56003D4130000000000050505000808080008080800080808000808080008080
      8000808080008080800080808000808080008080800080808000808080008080
      8000808080008080800080808000A5B07B00616748002A2C22002A2C2200464B
      3600808080008080800080808000808080008080800080808000808080008080
      80008080800080808000757672003738330054564F0078797700808080008080
      80008080800080808000808080008080800080808000646854009FAA7700737B
      570054574C008080800080808000808080008080800080808000808080008080
      800084848400888889007171730047474700383B310043443C00707072008080
      800080808000494E3900353A290022231A002A2C210080808000808080008080
      800080808000808080000000000000000000000000000000000000000000727A
      56003D4130000000000000000000000000000000000000000000000000000000
      0000000000000000000080808000808080008080800080808000808080008080
      8000808080008080800080808000494E3900353A290022231A0022231A002A2C
      2100808080008080800080808000808080008080800080808000808080008080
      80008080800080808000525549003F4332003F43320054574C00808080008080
      80008080800080808000808080008080800080808000575756002E2F2A006669
      5D00787876008080800080808000808080008080800080808000838283008888
      8800787779004D4D4D00373930003D423100595F43007A8258004D4F45007877
      7B0080808000A5B07B007F885F002F3124006066490080808000808080008080
      800080808000808080000000000000000000000000000000000000000000727A
      56003D4130000000000000000000000000000000000000000000000000000000
      0000000000000000000080808000808080008080800080808000808080008080
      8000808080008080800080808000A5B07B007F885F002F3124002F3124006066
      4900808080008080800080808000808080008080800080808000808080008080
      80008080800080808000464A3A00767F59004F533D0045483900808080008080
      8000808080008080800080808000808080007070700000000000222222008080
      80008080800080808000808080008080800080808000828382007C7C7D005453
      53003A3D34004B513A0061674A005A604900595F4700B3BF8400909B67004D4C
      4B0080808000C4CAB000DEE5C100C3CAA900C0C6AC0080808000808080008080
      800080808000808080008080800080808000808080008080800000000000727A
      56003D4130000000000050505000808080008080800080808000808080008080
      8000808080008080800080808000808080008080800080808000808080008080
      8000808080008080800080808000C4CAB000DEE5C100C3CAA900C3CAA900C0C6
      AC00808080008080800080808000808080008080800080808000808080008080
      80008080800080808000646854009FAA7700737B570015161300151515007070
      7000808080008080800080808000808080000A0A0A00050505007D7D7D008080
      80008080800080808000808080008080800080808000808181004B4C48004B50
      3700737C5800767C5A006A7153005C624A00595E4600B0BC8400DBEBA0006D74
      550056555800C4CAB000E0E8C400E1E8C400C4CAB00080808000808080008080
      800080808000808080008080800080808000808080008080800000000000D3DA
      BB00D3DABB000000000050505000808080008080800080808000808080008080
      8000808080008080800080808000808080008080800080808000808080008080
      8000808080008080800081818100C4CAB000E0E8C400E1E8C400E1E8C400C4CA
      B000808080008080800080808000808080008080800080808000808080008080
      80008080800080808000797977006C6F600066695D0069696700101010000404
      04004B4B4B00757672003738330031332E00010101005C5C5C00808080008080
      80008080800080808000808080008080800080808000757478004A4D40008791
      6400868F6700767D5B007077570063694E005D634A00B6C48800E6F7A800C0CD
      8F005B5F4700D5DCBC00E2EAC500E2EAC500D8E0BE0084848300808080008080
      8000808080008080800080808000808080008080800080808000000000000000
      0000000000000000000050505000808080008080800080808000808080008080
      8000808080008080800080808000808080008080800080808000808080008080
      8000808080008080800083838300D5DCBC00E2EAC500E2EAC500E2EAC500D8E0
      BE00848483008080800080808000808080008080800080808000808080008080
      80008080800080808000808080001C1C1C005D5D5D00808080007D7D7D003535
      35000404040046493E003F4332003C3F2F00383A330080808000808080008080
      800080808000808080008080800080808000808080006E6D710055594600959F
      70008B936A007F88630078805D006B7153005E644A00BBC78B00F2FEB200D5E2
      9E0099A27800DFE7C300E4ECC800E6EDCC00E0E8C400A7AB9C00828382008080
      8000808080008080800080808000808080008080800080808000808080008080
      8000808080008080800050505000505050005050500050505000808080008080
      8000808080008080800080808000808080008080800080808000808080008080
      8000808080008080800083838300D5DCBC00E2EAC500E2EAC500E2EAC500D8E0
      BE00848483008080800080808000808080008080800080808000808080008080
      80008080800080808000808080001C1C1C005D5D5D00808080007D7D7D003535
      35000404040046493E003F4332003C3F2F00383A330080808000808080008080
      800080808000808080008080800080808000808080006E6D710055594600959F
      70008B936A007F88630078805D006B7153005E644A00BBC78B00F2FEB200D5E2
      9E0099A27800DFE7C300E4ECC800E6EDCC00E0E8C400A7AB9C00828382008080
      8000808080008080800080808000808080008080800080808000808080008080
      8000808080008080800050505000505050005050500050505000808080008080
      8000808080008080800080808000808080008080800080808000808080008080
      800080808000818181009FA19600DFE7C300E4ECC800E6EDCC00E6EDCC00E0E8
      C400A7AB9C008283820080808000808080008080800080808000808080008080
      8000808080008080800080808000000000005D5D5D0080808000808080008080
      80006262620045493900767F59004F533D004548390080808000808080008080
      8000808080008080800080808000808080008080800064646500676E4F00A9B4
      7F0096A171008D966A00818962006C735400696F4D00C9CEA100FEFFC700CFDA
      9F00CAD1B200E2EAC500E5ECCA00E9EFD300E2EAC600D2D8BA0093958E008080
      8000808080008080800080808000808080008080800080808000808080008080
      8000808080000000000000000000000000000000000050505000808080008080
      8000808080008080800080808000808080008080800080808000808080008080
      80008080800090918B00CCD2B600E2EAC500E5ECCA00E9EFD300E9EFD300E2EA
      C600D2D8BA0093958E0080808000808080008080800080808000808080008080
      8000808080007F7F7F00757672000000000054564F0078797700808080008080
      800080808000646854009FAA7700737B570054574C0080808000808080008080
      800080808000808080008080800080808000808080005B5A5A00828A6000BBC8
      8B00A1AC790096A07000929B6D00A5AF7E00CDD5A200F8F9D700FDFFDB00BCC4
      A000DBE3C100E4EBC900F1F5E300EDF2DA00E2EAC500DEE6C200A6A99B008080
      8000808080008080800080808000808080008080800080808000808080008080
      800080808000000000003D4130003D4130000000000050505000808080008080
      8000808080008080800080808000808080008080800080808000808080008080
      8000808080009FA29600DBE3C100E4EBC900F1F5E300EDF2DA00EDF2DA00E2EA
      C500DEE6C200A6A99B0080808000808080008080800080808000808080008080
      8000808080007D7E7D005255490026281E003F43320054574C00808080008080
      800080808000797977006C6F600064675B00070707002A2A2A00757672003738
      330054564F007879770080808000808080008080800057585300A8B37A00CCDA
      9600B6C38800C2D09000DDEDA500F6FFC200FCFFCE00F6FFC600F9FFCC00BEC3
      A600DBE3C100F0F4E200FDFDFB00F4F7EA00E2EAC500DEE6C200A6A99B008080
      8000808080008080800080808000808080008080800080808000808080008080
      80008080800000000000727A56003D4130000000000050505000808080008080
      8000808080008080800080808000808080008080800080808000808080008080
      8000808080009FA29600DBE3C100F0F4E200FDFDFB00F4F7EA00F4F7EA00E2EA
      C500DEE6C200A6A99B0080808000808080008080800080808000808080008080
      8000808080007B7B7900464A3A00767F59004F533D00454839007E7F7E008080
      80008080800080808000808080008080800037373700050505004F5246003F43
      32003F43320054574C0080808000808080008080800053534A00B8C58200D7E6
      9E00CEDC9800DCECA200E8F8AA00ECFBAE00EAFBAF00E9F9AB00E4F4A600C7CF
      A300CED5B700E5ECCD00EDF2DB00E5EBCA00E1E9C500D3DABB0094968E008080
      8000808080008080800000000000000000000000000000000000000000000000
      00000000000000000000727A56003D4130000000000000000000000000000000
      0000000000000000000080808000808080008080800080808000808080008080
      80008080800090918B00CED5B700E5ECCD00EDF2DB00E5EBCA00E5EBCA00E1E9
      C500D3DABB0094968E0080808000808080008080800080808000808080008080
      8000808080007F807E00646854009FAA7700737B570054574C00808080008080
      80008080800080808000808080008080800080808000404040003A3E3000767F
      59004F533D00454839008080800080808000808080005E5E5E00565B440095A0
      6C00C7D59200CEDD9900CDDC9700D3E19B00D6E49C00D7E69F00DAEAA100C9D7
      9800A8AB9A00D0D6B900DEE5C200DEE6C300D3DABB00A9AC9D00838382008080
      8000808080008080800000000000000000000000000000000000000000000000
      00000000000000000000727A56003D4130000000000000000000000000000000
      0000000000000000000080808000808080008080800080808000808080008080
      80008080800082828100A5A89A00D0D6B900DEE5C200DEE6C300DEE6C300D3DA
      BB00A9AC9D008383820080808000808080008080800080808000808080008080
      80008080800080808000797977006C6F600066695D0078787600808080008080
      8000808080008080800080808000808080008080800080808000646854009FAA
      7700737B570054574C0080808000808080008080800084848400626167004647
      4200676E4D00AAB67C00C4D29200C6D49300CAD89400C0CE8C00A7B47900838B
      64006A7056008C8D8600A4A79A00A5A89A0095968F0083838200808080008080
      8000808080008080800080808000808080008080800080808000808080008080
      80008080800000000000727A56003D4130000000000050505000808080008080
      8000808080008080800080808000808080008080800080808000808080008080
      800080808000808080008282810093948D00A4A79A00A5A89A00A5A89A009596
      8F00838382008080800080808000808080008080800080808000808080008080
      8000808080008080800080808000808080008080800080808000808080008080
      8000808080008080800080808000808080008080800080808000797977006C6F
      600066695D007878760080808000808080008080800082828200888888007B7A
      7E0058575A00494C3F00777F58008E9667006F775300585D4700515249005858
      5700646367007776790083838300808080008080800080808000808080008080
      8000808080008080800080808000808080008080800080808000808080008080
      80008080800000000000D3DABB00D3DABB000000000050505000808080008080
      8000808080008080800080808000808080008080800080808000808080008080
      8000808080008080800080808000808080008080800080808000808080008080
      8000808080008080800080808000808080008080800080808000808080008080
      8000808080008080800080808000808080008080800080808000808080008080
      8000808080008080800080808000808080008080800080808000808080008080
      8000808080008080800080808000808080008080800080808000808080008585
      84008585860071707300515151004E4F4B005C5D5D006F6E71007A797D008382
      8400858586008484840081818100808080008080800080808000808080008080
      8000808080008080800080808000808080008080800080808000808080008080
      8000808080000000000000000000000000000000000080808000808080008080
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
      8000808080008080800080808000808080008080800080808000808080008080
      8000808080008080800080808000808080008080800080808000808080008080
      8000808080008080800080808000808080008080800080808000808080008080
      8000808080008080800080808000808080008080800080808000808080008080
      8000808080008080800080808000040404000404040004040400040404000404
      0400040404000404040004040400808080008080800080808000808080008080
      8000808080008080800080808000808080008080800080808000808080000404
      0400040404000404040004040400040404000404040004040400040404008080
      8000808080008080800080808000808080008080800080808000808080008181
      8100878787008080810059595A00434345007575770085868500808080008080
      8000808080008080800080808000808080008080800080808000E3EBC600E3EB
      C600E3EBC600E3EBC600E3EBC600E3EBC600E3EBC600E3EBC600E3EBC600E3EB
      C600E3EBC600E3EBC600E3EBC6009D9F94008080800080808000808080008080
      8000808080008080800080808000808080008080800080808000808080008080
      800080808000808080008080800004040400E2EAC500E2EAC500E2EAC500E2EA
      C500E2EAC500E2EAC50004040400808080008080800080808000808080008080
      8000808080008080800080808000808080008080800080808000808080000404
      0400E2EAC500E2EAC500E2EAC500E2EAC500E2EAC500E2EAC500040404008080
      8000808080008080800080808000808080008080800081818100878787008383
      840061616200333332002C2F2300454A33003F403B007D7C7F00838483008080
      8000808080008080800080808000808080008080800080808000E3EBC600E3EB
      C600E3EBC600E3EBC600E3EBC600E3EBC600E3EBC600E3EBC600E3EBC600E3EB
      C600E3EBC600E3EBC600E3EBC600E3EBC6009D9F940080808000808080008080
      8000808080008080800080808000808080008080800080808000808080008080
      800080808000808080008080800004040400E2EAC50004040400E2EAC5000404
      040004040400E2EAC50004040400808080008080800080808000808080008080
      8000808080008080800080808000808080008080800080808000808080000404
      0400E2EAC50004040400E2EAC5000404040004040400E2EAC500040404008080
      8000808080008080800080808000808080008685860085858600656467003838
      3700303327004A4F3A005256410088916800777E56003D3D3F00858486008282
      8200808080008080800080808000808080008080800080808000E3EBC600E3EB
      C600E3EBC600E3EBC600B5BC9D007D826D006B6E610040424000404240004042
      4000353735006D735300C0CB9200E3EBC600E3EBC6009D9F9400808080008080
      8000808080008080800080808000808080008080800080808000808080008080
      800080808000808080008080800004040400E2EAC500E2EAC500E2EAC500E2EA
      C500E2EAC500E2EAC50004040400808080008080800080808000808080008080
      8000808080008080800080808000808080008080800080808000808080000404
      0400E2EAC500E2EAC500E2EAC500E2EAC500E2EAC500E2EAC500040404008080
      8000808080008080800080808000848484006B6A6C003D3D3C0034372B005359
      3F00666C500061674E004F54400080896200CCDB96005B6142004D4B4F008888
      8800808080008080800080808000808080008080800080808000E3EBC600E3EB
      C600E3EBC600B5BC9D009499820063675A0061645A006A6E6200B2B99A00A8AF
      9400555A4200C0CB9200C0CB9200E3EBC600E3EBC600E3EBC6009D9F94008080
      8000808080008080800080808000808080008080800080808000808080008080
      800080808000808080008080800004040400E2EAC50004040400E2EAC5000404
      040004040400E2EAC50004040400808080008080800080808000808080008080
      8000808080008080800080808000808080008080800080808000808080000404
      0400E2EAC50004040400E2EAC5000404040004040400E2EAC500040404008080
      80008080800080808000858685005D5E5E00323529005C634500757D5B007379
      5900676F510061674D005358420081896300D6E59D00BDCB8B00454936005B5A
      6000888888008080800080808000808080008080800080808000808080008080
      800080808000808080008080800080808000808080008080800062636200555A
      4200C0CB9200C0CB920080808000808080008080800080808000808080008080
      8000808080006062530053574100575B46004F533E004246350034372A002A2D
      2400474B3600757670008080800004040400E2EAC500E2EAC500E2EAC500E2EA
      C500E2EAC500E2EAC50004040400808080008080800080808000808080008080
      8000808080008080800080808000808080008080800080808000808080000404
      0400E2EAC500E2EAC500E2EAC500E2EAC500E2EAC500E2EAC500040404008080
      800080808000818181008484850041423F006C7550008B946A007A825E00737A
      59006D735500676D5000575C4600848C6500DEEFA300D4E29C00A7B47B003B3C
      32006F6F71008484840080808000808080008080800080808000808080008080
      8000808080008080800080808000808080008080800062636200555A4200C0CB
      9200C0CB92008080800080808000808080008080800080808000808080008080
      800080808000898B7D00BCC49E00E3EAC700ADB68B006C7354003F4334004A50
      3B00777C6400828380008080800004040400E2EAC50004040400E2EAC5000404
      040004040400E2EAC50004040400808080008080800080808000808080008080
      8000808080008080800080808000808080008080800080808000808080000404
      0400E2EAC50004040400E2EAC5000404040004040400E2EAC500040404008080
      800080808000828282007D7C800043443D00828B61008C956A00818A63007A82
      5F00737B5A006C7355005D624900858F6600ECFDAD00DAE8A000D3E29C008189
      5D00484748008686870080808000808080008080800080808000808080008080
      80008080800080808000808080008080800062636200555A4200C0CB9200C0CB
      9200646A4D008080800080808000808080008080800080808000808080008080
      8000808080007E7E7F0095988A00A8AB9900767B690030322A002D2F27006E72
      610087888100808081008080800004040400E2EAC500E2EAC500E2EAC500E2EA
      C500E2EAC500E2EAC50004040400808080008080800080808000808080008080
      8000808080008080800080808000808080008080800080808000808080000404
      0400E2EAC500E2EAC500E2EAC500E2EAC500E2EAC500E2EAC500040404008080
      800080808000828282007574770045493C0097A17100939C70008B946A00828B
      64007B835F00737A590061664C00838C6200F5FFB800E7F6AB00D9E79E00A6B2
      7900464742008180830080808000808080008080800080808000808080008080
      800080808000808080008080800062636200C0CB9200C0CB9200C4CF9500646A
      4D00464A39008080800080808000808080008080800080808000808080008080
      8000808080007F80800083838100777D64005D63470031332A00414233007F80
      790081818200808080008080800004040400E2EAC50004040400E2EAC5000404
      040004040400E2EAC50004040400808080008080800093949200949492009393
      92009495930095959300959594009595940096969300999A9800808080000404
      0400E2EAC50004040400E2EAC5000404040004040400E2EAC500040404008080
      8000808080008383830069686B00565B4200ABB780009EA9770097A171008E97
      6B00838B6300747C5A006C7351009FA77B00FDFFD300F1FFB800E2F1A400BFCD
      8C00484B3E007B7A7D0080808000808080008080800080808000808080008080
      800080808000808080008080800062636200C0CB9200C0CB9200C4CF9500646A
      4D00464A39008080800080808000808080008080800080808000808080008080
      8000808080007F80800083838100777D64005D63470031332A00414233007F80
      790081818200808080008080800004040400E2EAC50004040400E2EAC5000404
      040004040400E2EAC50004040400808080008080800093949200949492009393
      92009495930095959300959594009595940096969300999A9800808080000404
      0400E2EAC50004040400E2EAC5000404040004040400E2EAC500040404008080
      8000808080008383830069686B00565B4200ABB780009EA9770097A171008E97
      6B00838B6300747C5A006C7351009FA77B00FDFFD300F1FFB800E2F1A400BFCD
      8C00484B3E007B7A7D0080808000808080008080800080808000808080008080
      80008080800080808000626362004F514F00191C1A00E3EBC600646A4D00464A
      3900808080008080800080808000808080008080800080808000808080008080
      8000808080007F7F800080817D00A1A98300B0B98E005E644C004C503B008589
      750081818200808080008080800004040400E2EAC500E2EAC500E2EAC500E2EA
      C500E2EAC500E2EAC500040404008080800080808000282D1C00303720002F33
      2500353A2B002E32230033372900383E2C0032391A007B7F6B00808080000404
      0400E2EAC500E2EAC500E2EAC500E2EAC500E2EAC500E2EAC500040404008080
      800080808000868685005B5A5D006D735100BDCA8C00A9B57F009FA97800949E
      6F00949D6F00AAB58100D1DAA500F6FBCA00FFFFE700F7FFCD00E8FAAA00D3E3
      9A0055584300716F740080808000808080008080800080808000808080008080
      800080808000626362004F514F00191C1A000C0F0C00404240008D956D008080
      8000808080008080800080808000808080008080800080808000808080008080
      800080808000808080007E7E7E009CA18600D7DEBC00626750005C6048008688
      7B0081808100808080008080800004040400E2EAC50004040400E2EAC5000404
      040004040400E2EAC500040404008080800080808000272A1F00363C2700363A
      2E002C2E26002C2E250033342C002D3128001B1E0A006C6E6100808080000404
      0400E2EAC50004040400E2EAC5000404040004040400E2EAC500040404008080
      80008080800085858500515152008A936500CDDB9700B9C68800B6C28800C4D2
      9100DFEFA700F6FFC400FCFFD000F6FFCB00F5FFC500FCFFD300F3FFBD00E4F5
      A500656B4D006463690080808000808080008080800080808000808080008080
      8000626362004F514F00191C1A000C0F0C004042400065666500808080008080
      8000808080008080800080808000808080008080800080808000808080008080
      800080808000808080007E7E80008C8F7F00C5CDAB005F644D006A6E58008687
      820080808000808080008080800004040400E2EAC500E2EAC500E2EAC500E2EA
      C500E2EAC500E2EAC500040404008080800080808000292B1D00313424002325
      1D00393D29007F8760008C926D00828969006F7650008E928100808080000404
      0400E2EAC500E2EAC500E2EAC500E2EAC500E2EAC500E2EAC500040404008080
      8000808080008282840049494600B5C28300D8E79E00C7D49300D2E19B00E2F2
      A600EBFBAC00EEFDB000ECFDB100EDFCB100EAFBAB00E8F7AB00F2FDBB00F3FF
      B5007C865D0059585D0080808000808080008080800080808000808080006263
      62004F514F00191C1A000C0F0C00404240006566650080808000808080008080
      8000808080008080800080808000808080008080800080808000808080008080
      8000808080008080800080808000808081009AA180005F65480072756A008382
      840080808000808080008080800004040400E2EAC500E2EAC500E2EAC500E2EA
      C500E2EAC500E2EAC500040404008080800080808000474E2A0068733D00535A
      2F0086934D00A4B16B00A0A976009DA478009BA27500AAAD9800808080000404
      0400E2EAC500E2EAC500E2EAC500E2EAC500E2EAC500E2EAC500040404008080
      800080808000848485004F4E4E00666E4900B4C08300C8D59300C9D69300CFDD
      9800D6E59D00DCEBA100DEEDA200DCECA200DAEAA000D5E59D00D5E49C00F1FF
      B400A5B178004F4F4F0080808000808080008080800080808000626362004F51
      4F00191C1A000C0F0C0040424000656665008080800080808000808080008080
      8000808080008080800080808000808080008080800080808000808080008080
      800080808000808080008080800083848200585C4C00393B2D0067695F008484
      840080808000808080008080800004040400C1772500C1772500C1772500C177
      2500C1772500C1772500040404008080800080808000545C350091A24F008895
      4B0096A15F009EA87200B1BA8700939A72007379570094978800808080000404
      0400C1772500C1772500C1772500C1772500C1772500C1772500040404008080
      800080808000828282007F7F80004C4B4E003F413400838D6000BCCA8C00C3D1
      9100C3D09000C7D59300CAD79400CBD89600CEDC9800CEDE9900C1CF8E00AEBB
      7F00737B520050504F00808080008080800080808000808080004F514F00191C
      1A000C0F0C004042400065666500808080008080800080808000808080008080
      8000808080008080800080808000808080008080800080808000808080008080
      80008080800080808000808081007D806E0079806000595E4800545944007E7F
      7A0081818200808080008080800004040400C1772500C1772500C1772500C177
      2500C1772500C177250004040400808080008080800040443200727A5100828C
      5C008F986900C2CD8D00FFFFE500F6FBCD00B0BA7F00A2A69300808080000404
      0400C1772500C1772500C1772500C1772500C1772500C1772500040404008080
      8000808080008080800082828200888888006C6C70003D3C3C0051553D009AA5
      7100BBC78B00BDCA8D00BFCB8C00B4C1840098A36E00737B530050553F004042
      3A004C4C4D007979790080808000808080008080800080808000808080000C0F
      0C00404240006566650080808000808080008080800080808000808080008080
      8000808080008080800080808000808080008080800080808000808080008080
      800080808000808080007D7C7F00898D7900DAE1C0009CA3800063684A007D7D
      7900818182008080800080808000040404000404040004040400040404000404
      0400040404000404040004040400808080008080800050543E009AA27600B4BE
      8600B5BF8600CCD79600F6FCC000EBF6B300C0CC8A00B8BCA100808080000404
      0400040404000404040004040400040404000404040004040400040404008080
      80008080800080808000808080008080800085858500848485005B5A5E003839
      3300646B4A007D855B005C62460045493A0043434100535255006B6A6E007E7D
      8000868687008282820080808000808080008080800080808000808080008080
      8000656665008080800080808000808080008080800080808000808080008080
      8000808080008080800080808000808080008080800080808000808080008080
      800080808000808080007F7F800086888200A8AF8F0098A07A00818572008181
      7F00808080008080800080808000808080008080800080808000808080008080
      800080808000808080008080800080808000808080003B3D3200656850006569
      4E00666A4D0064684C00676B4D0064694D005B6047007C7D7300808080008080
      8000808080008080800080808000808080008080800080808000808080008080
      8000808080008080800080808000808080008080800081818100878787007A79
      7C00504F5100484848005D5D5F00757477008382840086868700858585008282
      8200808080008080800080808000808080008080800080808000808080008080
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
      80008080800080808000808080007C7C7C00090908000B0B0B000B0B0B008080
      8000808080008080800080808000808080008080800080808000808080008080
      800080808000B2B2B200B4B4B200B4B4B200B2B3B200B2B2B200B2B4B200B4B4
      B200B4B4B200B4B4B200B4B4B200B4B4B300B4B4B300B4B4B300B4B4B300B4B4
      B300B4B4B300B4B4B200BABABA00808080008080800080808000808080008080
      8000808080008080800080808000808080008080800080808000808080008080
      8000808080008080800080808000808080008080800080808000808080008080
      8000808080008080800001010100010101000000000040404000404040004040
      4000404040004040400040404000404040004040400040404000404040004040
      4000000000000101010001010100808080008080800080808000808080008080
      80008080800080808000767676000404040052594200393A3600393A36008D8D
      8D00808080008080800080808000808080008080800080808000808080008080
      80008080800000000000333916001F290E00151B080016180B0019200F002025
      140021291400232815002526160023281900272B1C002A2F1C002A301D003239
      1C00373F1D00333F1600B7B7B700808080008080800080808000808080008080
      8000808080008080800080808000808080008080800080808000808080008080
      8000808080008080800080808000808080008080800080808000808080008080
      80008080800080808000000009000000FF00000005000A0AF6000A0AF6000A0A
      F6000A0AF6000A0AF6000A0AF6000A0AF6000A0AF6000A0AF6000A0AF6001010
      DE00000005000000FF0000000900808080008080800080808000808080008080
      80008080800077777700040404006B755500262A200047494800474948009C9C
      9C00858585008080800080808000808080000C0F0C0080808000808080008080
      8000808080000D0D0D003D462A00333823002D301F002D322500393E2E003D40
      3300373D2E00313629002E342400343A2B003C4131003E4433003F4530003F46
      2A003F472600424A1F00B7B7B700808080008080800080808000808080008080
      8000808080008484840086868700858588008584850082828400848484008584
      880088878A008687880084848400838383008383830082828200808080008080
      800080808000808080000101010000000000050505005E5E5E00808080008080
      8000808080008080800080808000808080008080800080808000808080008080
      8000000000000000000001010100808080008080800080808000808080008080
      80007A7A7A00040404006E7D5C00828964002E3227005D605E005D605E00C0C0
      C0008585850080808000808080000C0F0C007D7D7D0080808000808080008080
      8000808080000C0C0C004C54350040492C003B4129003C42300043473B003E44
      340034382D002E3026002D2F270031352B003739300033372E002A2F2300262B
      1A001E1F10002C301000B7B7B600808080008080800080808000808080008282
      8200878787007C7D7E00666766005858530054544E005B5C51005E6053005F61
      5400676762007777720081818000838383008484840084848400818181008080
      800080808000808080008080800072728E000C0CEB0035353700747474008080
      8000808080008080800080808000808080008080800080808000767676003E3E
      42000A0AF60072728E0080808000808080008080800080808000808080007979
      790004040400919E7300676F500052573F00373B2D008F908F008F908F00D3D3
      D30083838300808080000C0F0C007F807F008080800080808000808080008080
      8000808080000C0C0C003B3C29003338260033362600383A2D0036372F002C2E
      250028282000292B200033342A0033332A002C2B260025262200252A22002A2A
      1D0024271400171C0900B6B6B600808080008080800080808000818181008483
      83006464610044443900555742006B6E540074795E00797D620083876B008286
      6B0074785C006567500061645100696B5B006566590070706B00818181008080
      8000808080008080800080808000808080003A3AC500353581004C4C4C008080
      80008080800080808000808080008080800080808000808080004C4C4C003535
      81003A3AC5008080800080808000808080008080800080808000040404000404
      040087976E007B845F0051563E005A6045001E211E00DCDCDC00DCDCDC00E2E2
      E200848484000C0F0C007F7F7F00808080008080800080808000808080008080
      8000808080000C0C0C001F2015001D1F150020241C001F1F1A0020211E001215
      100028291F00535741006A70560071755B007074590070755D006E755E00656B
      4E005B633A00474E2D00B8B8B600808080008080800080808000838385005E5F
      5A00444834005E624400676A4E007E8267009EA28700ADAF9600B6B99F00B9BC
      A400B0B29900A9AC9000989B7F0096987C009A9C800072736000737371008080
      80008080800080808000808080008080800072728E000F0FEA00353538007171
      7100808080008080800080808000808080008080800077777700333335001010
      E60072728E0080808000808080008080800080808000464A3600BCCC94002B2C
      2800555E450051563E006D735300889068000C0F0C00FFFFFF00FFFFFF00FDFD
      FD00858585007F7F7F0080808000808080008080800080808000808080008080
      8000808080000C0C0C0059623500393F28003E402E002B2E21002E3121002F32
      22005B614000969E6F009FA87900A5AE7F00A6AE80009EA77B0090977100878F
      6900868E66007F886300B9B9B80080808000808080008686860071726F004C4E
      390054583B0053573B00989C8400E3E4CF00E7EAD000C8CBB000C3C6AC00DBDE
      C600FCFDF400F9FAEF00EBECD500D5D9BE00DCDFC400A0A48C0072736E008080
      800080808000808080008080800080808000808080003A3AC500353588004646
      460080808000808080008080800080808000808080004D4D4D0035357E003A3A
      C500808080008080800080808000808080008080800048503B00C4CF95004F53
      4000959D700099A2750089906800C1CC9300414341000404040004040400FFFF
      FF00858585000C0F0C000C0F0C000C0F0C000C0F0C0080808000808080008080
      8000808080000C0C0C00738040003F442800565E3800555B350031371E006A74
      40009CAB5B00A5B36600A4AF6F00A4AE7600A4AC7900A2A97B00A4A97D00A3AA
      7D00A4A97F00A4A97E00BABAB900808080008080800088878700545648004E51
      35003F422700A8AB9100FFFEFB00EDECDC009194790063664B006B6E5400797D
      5F00C2C3B100FFFFFF00FEFDF900B8BB9F00979A7E00898C7600757672008080
      80008080800080808000808080008080800080808000767689000A0AF2003636
      3A006E6E6E0080808000808080008080800077777700333335000C0CEB007676
      8900808080008080800080808000808080008080800051584300E1E8C200686D
      5000C3CF9D00CDD7A400C0CB9200C4CF95005B5C59000404040004040400FFFF
      FF0084848400808080007F7F7F00808080008080800080808000808080008080
      8000808080000C0C0C0089994700454A2800798747008A954C002E331B008995
      4E00A2B25C009AA85A009BA568009DA67400A1A87B00A3AB7D00A0A87D009DA5
      7B009FA77B009DA57600BABAB90080808000808080006D6D690043462F002A2D
      13003C3F2800C8CAB000F2F2DB00AAAD9100ACAD9D004E50440018180D004749
      300072755800E1E2D300AAAC9C006D70540096997D007C7E6E007A7A79008080
      80008080800080808000808080008080800080808000808080003D3DC3003333
      9100434343008080800080808000808080005050500031317A003D3DC3008080
      8000808080008080800080808000808080008080800051584300E1E8C200686D
      5000C3CF9D00CDD7A400C0CB9200C4CF95005B5C59000404040004040400FFFF
      FF0084848400808080007F7F7F00808080008080800080808000808080008080
      8000808080000C0C0C0089994700454A2800798747008A954C002E331B008995
      4E00A2B25C009AA85A009BA568009DA67400A1A87B00A3AB7D00A0A87D009DA5
      7B009FA77B009DA57600BABAB90080808000808080006D6D690043462F002A2D
      13003C3F2800C8CAB000F2F2DB00AAAD9100ACAD9D004E50440018180D004749
      300072755800E1E2D300AAAC9C006D70540096997D007C7E6E007A7A79008080
      80008080800080808000808080008080800080808000808080003D3DC3003333
      9100434343008080800080808000808080005050500031317A003D3DC3008080
      8000808080008080800080808000808080008080800060695300E5ECCA00474A
      3C00C7D0A100E3EAC500DDE5BC00C4CF950026292100B9BBB900B9BBB900F7F7
      F700828282000C0F0C0080808000808080008080800080808000808080008080
      8000808080000C0C0C009AAE55006672370093A44D009CAC52004D532B0096A2
      5A0095A15E0090996300919A6B00949F6F008E996A007A845F006B7255006A70
      5400707758006C735200B8B8B80080808000808080004848460033351C002326
      0C000F11030034362B006B6F57005D614800B9BAB3005F5F5F00000000001417
      0300424529005A5D410062644800B1B59A0097988400706F6B00828283008080
      8000808080008080800080808000808080008080800080808000797987000A0A
      F6003A3A3F00696969008080800077777700333335000C0CEB00797987008080
      800080808000808080008080800080808000808080007A7B79006F7466004850
      3B009AA37800CED8A400E3EBC600E3EBC6004E514F009496950094969500CCCC
      CC0082828200808080000C0F0C00808080008080800080808000808080008080
      8000808080000C0C0C0098A75C00818F4A0091A25000A2B55A00909B5500A6B4
      6900A3AC6C009DA77400ACB68000C7D19100C8CF9C00B2B88400929B6C007D82
      6200797D5F0070765700B9B9B8008080800080808000626263002C2F1E002D31
      13002B2E16000C0E0200020700000E11000026291D0010120D00020500002124
      0B003A3D23006C6F5500C6C9AE00ABAF97006C6D67007E7D7F00818181008080
      8000808080008080800080808000808080008080800080808000808080004141
      BE0030309D003E3E3E0080808000535353002F2F77004141BE00808080008080
      800080808000808080008080800080808000808080007F7F7F00808080007F7F
      7F0048503B00ABB48300CDD7A300DEE7BF00222523006669670066696700A6A6
      A6008282820080808000808080000C0F0C008080800080808000808080008080
      8000808080000C0C0C006B734C00656B460071794C0075834E007A815400838C
      5E00949C6B00A5AC7700C6D28D00F4FCC100FDFDED00FAFBDC00E6F2AE00BAC2
      8D00A2A97F00858C6B00B9B9B800808080008080800083828200676764003D40
      2D00494C2F005A5C40004A4D3300484A3200383C230044483100575A4000888B
      6F00B4B79C00D4D8BC00A9AB91006C6E60007C7D7C0083828300808080008080
      8000808080008080800080808000808080008080800080808000808080007979
      87000A0AF6003C3C43005F5F5F00333335000C0CEB0079798700808080008080
      8000808080008080800080808000808080008080800080808000808080008080
      80007F7F7F0048503B00B1BC8B00ACB48C00191C1A004143420041434200A0A0
      A00083838300808080007F7F7F00808080000C0F0C0080808000808080008080
      8000808080000C0C0C00656C4D0061674C006F7654007E875D00858D6200868D
      640096A07100AEB88100D7E69B00FEFFDE00FFFFFF00FFFFEE00F8FFBA00C9D6
      9500B0B982009EA57800BABAB900808080008080800080808000858585007678
      7500606254006B6D55007E81650083856800828569009B9F8200B2B49800C0C3
      A700B4B69E008A8C7C0074766D007E7E7D008181820080808000808080008080
      8000808080008080800080808000808080008080800080808000808080008080
      80004646BA002E2EA400353535002E2E77004646BA0080808000808080008080
      8000808080008080800080808000808080008080800080808000808080008080
      8000808080007F7F7F0048503B00A5AF7F00363B2C0051535200515352008888
      8800818181008080800080808000808080008080800080808000808080008080
      8000808080000C0C0C00787F5900696E5000777E5C00A1AA7900ABB57C00A6AF
      7C00A7B07C00B4BF8500D2E19B00F6FFBE00FFFFD200FCFFC800E5F2A800BFCE
      8F00B0BA8100ABB47D00BABAB900808080008080800080808000818181008384
      840081828200797A760077796E0077786D007E7E6F0087877800898B7F008283
      7800777875007979790081818100828182008080800080808000808080008080
      8000808080008080800080808000808080008080800080808000808080008080
      8000797987000E0EED0037373E001212DA007979870080808000808080008080
      8000808080008080800080808000808080008080800080808000808080008080
      800080808000808080007F7F7F0048503B00A8B183004D5140004D5140008080
      8000808080008080800080808000808080008080800080808000808080008080
      8000808080000C0C0C00888F6700939B6F009AA47400ADB58000B0BB8200AFB9
      8100AFB98100B0BA8200BDC68C00D1DD9A00DFE8A200D7E49F00C4D19100B3BE
      8400ADB58100ABB37E00BABAB900808080008080800080808000808080008080
      800080808100828283008282830080808100808080007F7E7F007E7E7F008080
      8000818181008181810080808000808080008080800080808000808080008080
      8000808080008080800080808000808080008080800080808000808080008080
      8000808080000101010001010100000000008080800080808000808080008080
      8000808080008080800080808000808080008080800080808000808080008080
      80008080800080808000808080007F7F7F0048503B0048503B0048503B008282
      8200808080008080800080808000808080008080800080808000808080008080
      8000808080000C0C0C00959D7400A5AC8200AFB68300B2BD8500B5BE8400B5C0
      8500B6C18500B5BF8500B6C18500BAC48800BDC68A00BAC48900B3BD8600B1BA
      8500ACB58500A7AF8200BCBDBB00808080008080800080808000808080008080
      8000808080008080800080808000808080008080800080808000808080008080
      8000808080008080800080808000808080008080800080808000808080008080
      8000808080008080800080808000808080008080800080808000808080008080
      800080808000000009000000FF00000005008080800080808000808080008080
      8000808080008080800080808000808080008080800080808000808080008080
      8000808080008080800080808000808080008080800080808000808080008080
      8000808080008080800080808000808080008080800080808000808080008080
      8000808080000C0C0C000F0F0E000F100F0010100F0010100F0010100F001010
      0F0010100F0010100F0010100F0010100F0010100F0010100F0010100F001010
      0F0010100F00090908007E7E7E00808080008080800080808000808080008080
      8000808080008080800080808000808080008080800080808000808080008080
      8000808080008080800080808000808080008080800080808000808080008080
      8000808080008080800080808000808080008080800080808000808080008080
      8000808080000101010000000000000000008080800080808000808080008080
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
      8000808080008080800080808000808080008080800080808000808080008080
      8000808080008080800080808000808080008080800080808000808080008080
      8000818181008080800080808000808080008080800080808000808080008080
      8000808080008080800080808000808080008080800080808000808080008080
      8000808080008080800080808000808080008080800080808000808080008080
      8000808080008080800080808000808080008080800080808000808080008080
      8000808080008080800080808000808080008080800080808000808080008080
      8000808080008080800080808000808080008080800080808000808080008080
      8000808080008080800080808000808080008080800080808000808080008080
      8000808080008080800080808000808080008080800080808000808080008080
      8000808080008080800080808000808080008080800080808000808080008080
      8000808080008080800080808000808080008383830083838300595959005959
      5900818181008080800080808000808080008080800080808000808080008080
      8000808080008080800080808000808080008080800080808000808080008080
      8000808080008080800080808000808080008080800080808000808080008080
      8000808080008080800080808000808080008080800080808000808080007D7D
      7D000E0E0E000E0E0E000E0E0E000F0F0F00111110000E0E0E000E0E0E000E0E
      0E00151513002A2D23003E4132007F7F7F008080800080808000808080008080
      8000808080008080800080808000808080007E7E7E007D7D7D00757575007575
      7500808080008080800080808000808080008080800080808000808080008080
      8000808080008080800080808000808080008080800080808000808080008080
      8000808080008080800080808000808080008383830083838300040404001515
      11005E5E5F008181810080808000808080008080800080808000808080008080
      8000808080008080800004040400040404000404040004040400040404008080
      8000808080008080800080808000808080000404040004040400040404000404
      0400040404008080800080808000808080008080800080808000808080008080
      8000858B6500888F6B00979D7B0089916B00838B6600676E5000646A4D00454A
      38003B3E320052574200656A4F00808080008080800080808000808080008080
      80008080800080808000808080007D7D7D00585958000D100D000E110E000D10
      0D003A3C3A008080800080808000808080008080800080808000808080008080
      8000808080008080800080808000808080008080800080808000808080008080
      8000808080008080800080808000808080008383830083838300040404005050
      3A001A1A15005757580081818100808080008080800080808000808080008080
      8000808080008080800004040400C5CF94009CAB5B00040404003D462A008080
      80008080800080808000808080008080800004040400C5CF94009CAB5B001215
      10003D462A008080800080808000808080008080800080808000808080008080
      8000898C7C00AFB78E00EAEFD900BEC5A200929A7300767D5B00464A39003235
      2C00464A3900646A5000868A7A00808080008080800080808000808080008080
      8000808080008080800080808000373837000C0F0C000C0F0C000D100D000D10
      0D000C0F0C005354530080808000808080008080800080808000808080008080
      8000808080008080800080808000808080008080800080808000808080008080
      8000808080008080800080808000808080008383830083838300040404007E7E
      5E007A7A5B001919140061616300818181008080800080808000808080008080
      8000808080008080800050505000FFFFDE00EDFF7500505050003E4E1B008080
      80008080800080808000808080008080800050505000FFFFDE00EDFF75005050
      50003E4E1B008080800080808000808080008080800080808000808080008080
      80008080800090958000C9CFAD00DFE4CC00ADB49300565A480030322B003E41
      34006A705600888D780080808000808080008080800080808000808080008080
      80008080800080808000808080003A3B3A00101210000D100D000C0F0C000D10
      0D000C0F0C001215120080808000808080008080800080808000808080008080
      8000808080008080800080808000808080008383830083838300838383008383
      8300838383008383830083838300838383008383830083838300040404007979
      5900B3B387007474560012121000626264008181810080808000808080008080
      8000808080008080800004040400040404000404040004040400040404008080
      8000808080008080800080808000808080000404040004040400040404000404
      0400040404008080800080808000808080008080800080808000808080008080
      8000808080008080800083847E002A2C2800292A26001B1C1A00161615003A3C
      3000787878008080800080808000808080008080800080808000808080008080
      800080808000808080008080800068696800111311000D100D000D100D000D10
      0D000C0F0C000C0F0C0080808000808080008080800080808000808080008080
      8000808080008080800080808000808080008383830004040400040404000404
      0400838383000404040004040400040404000404040004040400040404007A7A
      5A00ADAD8200B4B48700747456001A1A16005C5C5D0081818100808080008080
      8000808080008080800004040400C5CF94009CAB5B00040404003D462A008080
      80008080800080808000808080008080800004040400C5CF94009CAB5B001215
      10003D462A008080800080808000808080008080800080808000808080008080
      800080808000808080008D937A0098A174008B936A004D513F0035372D005F62
      480086887D008080800080808000808080008080800080808000808080008080
      8000808080008080800080808000808080006F706F0044454400343534003C3E
      3C000C0F0C000C0F0C0080808000808080008080800080808000808080008080
      800080808000808080008080800080808000838383000404040050503A000404
      0400838383000404040050503A0050503A0050503A0050503A0050503A007474
      5600A9A97E00B1B18400BDBD8E007D7D5D00161612005A5A5C00818181008181
      8100808080008080800004040400C5CF94009CAB5B00040404003D462A000404
      04000404040080808000040404000404040004040400C5CF94009CAB5B001215
      10003D462A008080800080808000808080008080800080808000808080008080
      800080808000808080008E937A00A6AE83009DA67E006E7456003F4235005358
      41008C907A008080800080808000808080008080800080808000808080008080
      8000808080008080800080808000808080008080800080808000808080008080
      80000C0F0C000C0F0C0080808000808080008080800080808000808080008080
      8000808080008080800080808000808080008383830004040400747458000404
      0400838383000404040050503A00828262008A8A680091916D009B9B7500A1A1
      7800A7A77D00AFAF8300B7B78900C2C292007E7E5E001A1A13005D5D5D008181
      8100808080008080800004040400C5CF94009CAB5B00040404003D462A00C5CF
      9400040404000404040004040400C5CF940004040400C5CF94009CAB5B001215
      10003D462A008080800080808000808080008080800080808000808080008080
      80008080800080808000898C7C00B5BD9400D8DFC000767D5D003E413500696E
      5000888B7B008080800080808000808080008080800080808000808080008080
      8000808080008080800080808000808080008080800080808000808080008080
      80000C0F0C000C0F0C0080808000808080008080800080808000808080008080
      8000808080008080800080808000808080008383830004040400747458000404
      0400838383000404040050503A00818161008A8A670091916C00989872009F9F
      7700A7A77D00AFAF8300B6B68800BBBB8B00CECE9E00ADAD9A00151514008181
      8100808080008080800004040400C5CF94009CAB5B00040404003D462A00C5CF
      9400040404000404040004040400C5CF940004040400C5CF94009CAB5B001215
      10003D462A008080800080808000808080008080800080808000808080008080
      8000808080008080800082827F00A9B28700E6EBD40070765800414436008086
      640081827E008080800080808000808080008080800080808000808080008080
      8000808080008080800080808000808080008080800080808000808080008080
      80000C0F0C000C0F0C0080808000808080008080800080808000808080008080
      8000808080008080800080808000808080008383830004040400747458000404
      0400838383000404040050503A00818161008A8A670091916C00989872009F9F
      7700A7A77D00AFAF8300B6B68800BBBB8B00CECE9E00ADAD9A00151514008181
      8100808080008080800004040400C5CF94009CAB5B00040404003D462A00C5CF
      9400040404000404040004040400C5CF940004040400C5CF94009CAB5B001215
      10003D462A008080800080808000808080008080800080808000808080008080
      8000808080008080800082827F00A9B28700E6EBD40070765800414436008086
      640081827E008080800080808000808080008080800080808000808080008080
      8000808080008080800080808000808080008080800080808000808080008080
      80000C0F0C000C0F0C0080808000808080008080800080808000808080008080
      8000808080008080800080808000808080008383830004040400747458000404
      0400838383000404040050503A00858565008E8E6B00959570009D9D76009F9F
      7700A7A77D00AFAF8300B4B48600C2C29300E3E3CD00151514005E5E5F007F7F
      7F00808080008080800004040400FFFFDE00EDFF7500505050003E4E1B00C5CF
      9400040404000404040004040400C5CF940004040400FFFFDE00EDFF75005050
      50003D462A008080800080808000808080008080800080808000808080008080
      8000808080008080800080808000989E7E00D3DBBB006F74580044473900888D
      720080807F008080800080808000808080008080800080808000808080008080
      8000808080008080800080808000808080008080800080808000808080008080
      80000C0F0C000C0F0C0080808000808080008080800080808000808080008080
      8000808080008080800080808000808080008383830004040400D5D5BD000404
      0400838383000404040074745600D5D5BD00D5D5BD00D5D5BD00D5D5BD00D5D5
      BD00A8A87E00ADAD8000BDBD8F00E1E1CB00151514005E5E5F00818181008181
      8100808080008080800080808000040404000404040004040400040404000404
      0400040404000404040004040400040404000404040004040400040404000404
      0400808080008080800080808000808080008080800080808000808080008080
      800080808000808080008080800082838000ADB68B005F634B00565B45007F80
      7C00808080008080800080808000808080008080800080808000808080008080
      8000808080008080800080808000808080008080800080808000808080008080
      80000C0F0C000C0F0C005859580035373500454745005B5B5B00787878007F7F
      7F00808080008080800080808000808080008383830004040400040404000404
      0400838383000404040004040400040404000404040004040400040404008383
      6200A9A97D00B8B88C00D7D7C000151514005E5E5F0081818100818181008080
      80008080800080808000808080008080800004040400C5CF9400040404000404
      0400040404008080800004040400C5CF94000404040004040400040404008080
      8000808080008080800080808000808080008080800080808000808080008080
      80008080800080808000808080008080800090987000585C460062674C008080
      8000808080008080800080808000808080008080800080808000808080008080
      8000808080008080800080808000808080008080800080808000808080008080
      80000C0F0C000C0F0C000E110E000C0F0C000C0F0C000C0F0C000E110E004243
      4200797979007F7F7F0080808000808080008383830080808000808080008282
      8200838383008181810081818100818181008484840083838300040404007676
      5500B2B28700D5D5BD00151514005E5E5F008181810081818100808080008080
      8000808080008080800080808000808080000404040004040400040404000404
      0400040404008080800004040400040404000404040004040400040404008080
      8000808080008080800080808000808080008080800080808000808080008080
      800080808000808080008080800083857A0031322C0033342D002F302A007B7E
      7000808080008080800080808000808080008080800080808000808080008080
      8000808080008080800080808000808080008080800080808000808080008080
      80000C0F0C000C0F0C000C0F0C000D100D000E110E0010131000111411000F12
      0F0025272500696A690080808000808080008383830080808000808080008080
      8000818181008181810081818100818181008484840083838300040404007D7D
      5E00DDDDC200151514005E5E5F00818181008080800080808000808080008080
      8000808080008080800080808000808080008080800004040400040404000404
      0400808080008080800080808000040404000404040004040400808080008080
      8000808080008080800080808000808080008080800080808000808080008080
      800080808000808080007E7E7C00777E5D007C8460006A7052004B503D006369
      4D0080817F008080800080808000808080008080800080808000808080008080
      8000808080008080800080808000808080008080800080808000808080008080
      80000C0F0C000D100D00121512001B1E1B002427240023262300222522001C1F
      1C00151815003F413F0080808000808080008080800080808000808080008080
      800080808000808080008080800080808000838383008383830004040400ABAB
      9700151514005E5E5F0081818100808080008080800080808000808080008080
      8000808080008080800080808000808080008080800004040400C5CF94000404
      040080808000808080008080800004040400C5CF940004040400808080008080
      8000808080008080800080808000808080008080800080808000808080008080
      800080808000808080007C7C79008B936E00D7DEC00098A07B00656B50005559
      440081817F008080800080808000808080008080800080808000808080008080
      8000808080008080800080808000808080008080800080808000808080008080
      80000D100D0013161300272A27004042400065666500787878007C7C7C007D7D
      7D00777777007475740080808000808080008080800080808000808080008080
      8000808080008080800080808000808080008383830083838300040404001515
      14005E5E5F008181810081818100808080008080800080808000808080008080
      8000808080008080800080808000808080008080800004040400040404000404
      0400808080008080800080808000040404000404040004040400808080008080
      8000808080008080800080808000808080008080800080808000808080008080
      800080808000808080007F807F00A8AF8D00EAEFD900BCC49C00717757007D84
      5F00818180008080800080808000808080008080800080808000808080008080
      8000808080008080800080808000808080008080800080808000808080008080
      80000C0F0C00131613005F615F00808080008080800080808000808080008080
      8000808080008080800080808000808080008080800080808000808080008080
      80008080800080808000808080008080800083838300838383005E5E5F005E5E
      5F00818181008181810080808000808080008080800080808000808080008080
      8000808080008080800080808000808080008080800080808000808080008080
      8000808080008080800080808000808080008080800080808000808080008080
      8000808080008080800080808000808080008080800080808000808080008080
      800080808000808080008080800083847F00979F760097A07500868C73008384
      7D00808080008080800080808000808080008080800080808000808080008080
      8000808080008080800080808000808080008080800080808000808080008080
      8000808080007F7F7F007F807F0083847F008282820080808000808080008080
      8000808080008080800080808000808080008080800080808000808080008080
      8000808080008080800080808000808080008080800080808000818181008080
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
      8000808080008080800080808000808080008080800080808000808080008080
      8000808080008080800080808000808080008080800080808000808080008080
      8000808080008080800080808000808080008080800080808000808080008080
      8000808080008080800080808000808080008080800080808000808080008080
      8000808080008080800080808000808080008080800080808000808080008080
      8000808080008080800080808000808080008080800080808000808080008080
      8000808080008080800080808000808080008080800080808000808080008181
      8100808080008080800080808000808080008080800080808000808080008080
      8000808080008080800080808000808080008080800080808000808080008080
      8000808080008080800080808000808080008080800080808000808080008080
      8000808080008080800080808000808080008080800080808000808080008080
      8000808080008080800080808000808080008080800080808000808080008080
      8000808080008080800080808000808080008080800080808000808080008080
      8000808080008080800080808000808080008080800080808000808080008080
      8000808080008080800080808000808080008080800080808000808080008080
      8000808080008080800080808000808080008080800080808000808080008080
      8000808080008080800080808000808080008080800080808000808080008181
      8100595959005959590083838300838383008080800080808000808080008080
      8000808080008080800080808000808080008080800080808000808080008080
      8000808080008080800080808000808080008080800080808000808080008080
      8000808080008080800080808000808080008080800080808000808080008080
      8000808080008080800080808000808080008080800080808000808080008080
      8000808080008080800080808000808080008080800080808000808080008080
      8000808080008080800080808000808080008080800080808000808080008080
      8000808080008080800080808000808080008080800080808000808080008080
      8000808080008080800080808000808080008080800080808000808080008080
      8000808080008080800080808000808080008080800080808000818181005E5E
      5F00151511000404040083838300838383008080800080808000808080008080
      8000808080008080800080808000808080008080800080808000808080008080
      8000808080008080800080808000808080008080800080808000808080008080
      8000808080008080800080808000808080008080800080808000808080008080
      8000808080008080800080808000808080008080800080808000808080008080
      8000808080008080800080808000808080008080800080808000808080008080
      8000808080008080800080808000808080008080800080808000808080008080
      8000040404000404040004040400040404000404040004040400040404000404
      0400040404000404040004040400040404000404040080808000808080008080
      8000808080008080800080808000808080008080800081818100575758001A1A
      150050503A000404040083838300838383008080800080808000808080008080
      8000808080008080800080808000808080008080800080808000808080008080
      8000808080000404040004040400040404000404040004040400040404000404
      0400040404000404040004040400040404008080800080808000808080008080
      8000808080008080800080808000040404000404040004040400040404000404
      0400040404000404040004040400040404000404040004040400808080008080
      8000808080008080800080808000808080008080800080808000808080000404
      040097A2720097A2720004040400040404000404040004040400040404000404
      040080808000808080000404040097A272000404040080808000808080008080
      8000808080008080800080808000808080008181810061616300191914007A7A
      5B007E7E5E000404040083838300838383008080800080808000808080008080
      8000808080008080800080808000808080008080800080808000808080008080
      80008080800004040400C5CF9400C5CF9400C5CF9400C5CF9400C5CF9400C5CF
      9400C5CF9400C5CF9400C5CF9400040404008080800080808000808080008080
      800080808000808080008080800004040400040404004A4E35004A4E35004A4E
      35004A4E35004A4E35004A4E35004A4E35004A4E35004A4E3500040404008080
      8000808080008080800080808000808080008080800080808000808080000404
      040097A2720097A2720004040400040404000404040004040400040404000404
      040080808000808080000404040097A272000404040080808000808080008080
      800080808000808080008080800081818100626264001212100074745600B3B3
      8700797959000404040083838300838383008383830083838300838383008383
      8300838383008383830083838300838383008080800080808000808080008080
      80008080800004040400EDFF7500C5CF9400C5CF9400C5CF9400C5CF9400C5CF
      9400C5CF9400C5CF9400C5CF9400040404008080800080808000808080008080
      800080808000808080008080800004040400EDFF7500040404004A4E35004A4E
      35004A4E35004A4E35004A4E35004A4E35004A4E35004A4E35004A4E35000404
      0400808080008080800080808000808080008080800080808000808080000404
      040097A2720097A2720004040400040404000404040004040400040404000404
      040080808000808080000404040097A272000404040080808000808080008080
      80008080800080808000818181005C5C5D001A1A160074745600B4B48700ADAD
      82007A7A5A000404040004040400040404000404040004040400040404008383
      8300040404000404040004040400838383008080800080808000808080008080
      80008080800004040400EDFF7500C5CF9400C5CF9400C5CF9400C5CF9400C5CF
      9400C5CF9400C5CF9400C5CF9400040404008080800080808000808080008080
      800080808000808080008080800004040400EDFF750097A27200040404004A4E
      35004A4E35004A4E35004A4E35004A4E35004A4E35004A4E35004A4E35004A4E
      3500040404008080800080808000808080008080800080808000808080000404
      040097A2720097A2720004040400040404000404040004040400040404000404
      040004040400040404000404040097A272000404040080808000808080008080
      800081818100818181005A5A5C00161612007D7D5D00BDBD8E00B1B18400A9A9
      7E007474560050503A0050503A0050503A0050503A0050503A00040404008383
      83000404040050503A0004040400838383008080800080808000808080008080
      80008080800004040400EDFF7500C5CF9400C5CF9400C5CF9400C5CF9400C5CF
      9400C5CF9400C5CF9400C5CF9400040404008080800080808000808080008080
      800080808000808080008080800004040400EDFF750097A2720097A272000404
      04004A4E35004A4E35004A4E35004A4E35004A4E35004A4E35004A4E35004A4E
      35004A4E35000404040080808000808080008080800080808000808080000404
      040097A2720097A2720097A2720097A2720097A2720097A2720097A2720097A2
      720097A2720097A2720097A2720097A272000404040080808000808080008080
      8000818181005D5D5D001A1A13007E7E5E00C2C29200B7B78900AFAF8300A7A7
      7D00A1A178009B9B750091916D008A8A68008282620050503A00040404008383
      8300040404007474580004040400838383008080800080808000808080008080
      80008080800004040400EDFF7500C5CF9400C5CF9400C5CF9400C5CF9400C5CF
      9400C5CF9400C5CF9400C5CF9400040404008080800080808000808080008080
      800080808000808080008080800004040400EDFF750097A2720097A2720097A2
      7200040404000404040004040400040404000404040004040400040404000404
      0400040404000404040080808000808080008080800080808000808080000404
      040097A2720097A2720004040400040404000404040004040400040404000404
      0400040404000404040097A2720097A272000404040080808000808080008080
      80008181810015151400ADAD9A00CECE9E00BBBB8B00B6B68800AFAF8300A7A7
      7D009F9F77009898720091916C008A8A67008181610050503A00040404008383
      8300040404007474580004040400838383008080800080808000808080008080
      80008080800004040400EDFF7500C5CF9400C5CF9400C5CF9400C5CF9400C5CF
      9400C5CF9400C5CF9400C5CF9400040404008080800080808000808080008080
      800080808000808080008080800004040400EDFF750097A2720097A2720097A2
      7200040404000404040004040400040404000404040004040400040404000404
      0400040404000404040080808000808080008080800080808000808080000404
      040097A2720097A2720004040400040404000404040004040400040404000404
      0400040404000404040097A2720097A272000404040080808000808080008080
      80008181810015151400ADAD9A00CECE9E00BBBB8B00B6B68800AFAF8300A7A7
      7D009F9F77009898720091916C008A8A67008181610050503A00040404008383
      8300040404007474580004040400838383008080800080808000808080008080
      80008080800004040400EDFF7500C5CF9400C5CF9400C5CF9400C5CF9400C5CF
      9400C5CF9400C5CF9400C5CF9400040404008080800080808000808080008080
      800080808000808080008080800004040400EDFF750097A2720097A2720097A2
      720097A2720097A2720097A2720097A2720097A2720004040400808080008080
      8000808080008080800080808000808080008080800080808000808080000404
      040097A2720004040400C5CF9400C5CF9400C5CF9400C5CF9400C5CF9400C5CF
      9400C5CF9400C5CF94000404040097A272000404040080808000808080008080
      80007F7F7F005E5E5F0015151400E3E3CD00C2C29300B4B48600AFAF8300A7A7
      7D009F9F77009D9D7600959570008E8E6B008585650050503A00040404008383
      8300040404007474580004040400838383008080800080808000808080008080
      80008080800004040400EDFF7500C5CF9400C5CF9400C5CF9400C5CF9400C5CF
      9400C5CF9400C5CF9400C5CF9400040404008080800080808000808080008080
      800080808000808080008080800004040400EDFF750097A2720097A2720097A2
      720097A2720097A2720097A2720097A2720097A2720004040400808080008080
      8000808080008080800080808000808080008080800080808000808080000404
      040097A2720004040400C5CF9400C5CF9400C5CF9400C5CF9400C5CF9400C5CF
      9400C5CF9400C5CF94000404040097A272000404040080808000808080008080
      800081818100818181005E5E5F0015151400E1E1CB00BDBD8F00ADAD8000A8A8
      7E00D5D5BD00D5D5BD00D5D5BD00D5D5BD00D5D5BD0074745600040404008383
      830004040400D5D5BD0004040400838383008080800080808000808080008080
      80008080800004040400EDFF7500C5CF9400C5CF9400C5CF9400C5CF9400C5CF
      9400C5CF9400C5CF9400C5CF9400040404008080800080808000808080008080
      800080808000808080008080800004040400EDFF7500EDFF7500EDFF7500EDFF
      7500EDFF7500EDFF7500EDFF7500EDFF7500EDFF750004040400808080008080
      8000808080008080800080808000808080008080800080808000808080000404
      040097A2720004040400C5CF9400C5CF9400C5CF9400C5CF9400C5CF9400C5CF
      9400C5CF9400C5CF94000404040097A272000404040080808000808080008080
      80008080800081818100818181005E5E5F0015151400D7D7C000B8B88C00A9A9
      7D00838362000404040004040400040404000404040004040400040404008383
      8300040404000404040004040400838383008080800080808000808080008080
      80008080800004040400EDFF7500C5CF9400C5CF9400C5CF9400C5CF9400C5CF
      9400040404000404040004040400040404008080800080808000808080008080
      8000808080008080800080808000808080000404040004040400040404000404
      0400040404000404040004040400040404000404040004040400808080000404
      0400040404000404040080808000808080008080800080808000808080000404
      040097A2720004040400C5CF9400C5CF9400C5CF9400C5CF9400C5CF9400C5CF
      9400C5CF9400C5CF94000404040097A272000404040080808000808080008080
      8000808080008080800081818100818181005E5E5F0015151400D5D5BD00B2B2
      8700767655000404040083838300848484008181810081818100818181008383
      8300828282008080800080808000838383008080800080808000808080008080
      80008080800004040400EDFF7500C5CF9400C5CF9400C5CF9400C5CF9400C5CF
      940004040400C5CF940004040400808080008080800080808000808080008080
      8000808080008080800080808000808080008080800080808000808080008080
      8000808080008080800080808000808080008080800080808000808080008080
      8000040404000404040080808000808080008080800080808000808080000404
      040097A2720004040400C5CF9400C5CF9400C5CF9400C5CF9400C5CF9400C5CF
      9400C5CF9400C5CF940004040400040404000404040080808000808080008080
      800080808000808080008080800080808000818181005E5E5F0015151400DDDD
      C2007D7D5E000404040083838300848484008181810081818100818181008181
      8100808080008080800080808000838383008080800080808000808080008080
      80008080800004040400EDFF7500EDFF7500EDFF7500EDFF7500EDFF7500EDFF
      7500040404000404040080808000808080008080800080808000808080008080
      8000808080008080800080808000808080008080800080808000808080008080
      8000808080008080800080808000040404008080800080808000808080000404
      0400808080000404040080808000808080008080800080808000808080000404
      0400EDFF750004040400EDFF7500EDFF7500EDFF7500EDFF7500EDFF7500EDFF
      7500EDFF7500EDFF750004040400808080000404040080808000808080008080
      80008080800080808000808080008080800080808000818181005E5E5F001515
      1400ABAB97000404040083838300838383008080800080808000808080008080
      8000808080008080800080808000808080008080800080808000808080008080
      8000808080000404040004040400040404000404040004040400040404000404
      0400040404008080800080808000808080008080800080808000808080008080
      8000808080008080800080808000808080008080800080808000808080008080
      8000808080008080800080808000808080000404040004040400040404008080
      8000808080008080800080808000808080008080800080808000808080000404
      0400040404000404040004040400040404000404040004040400040404000404
      0400040404000404040004040400040404000404040080808000808080008080
      8000808080008080800080808000808080008080800081818100818181005E5E
      5F00151514000404040083838300838383008080800080808000808080008080
      8000808080008080800080808000808080008080800080808000808080008080
      8000808080008080800080808000808080008080800080808000808080008080
      8000808080008080800080808000808080008080800080808000808080008080
      8000808080008080800080808000808080008080800080808000808080008080
      8000808080008080800080808000808080008080800080808000808080008080
      8000808080008080800080808000808080008080800080808000808080008080
      8000808080008080800080808000808080008080800080808000808080008080
      8000808080008080800080808000808080008080800080808000808080008080
      8000808080008080800080808000808080008080800080808000818181008181
      81005E5E5F005E5E5F0083838300838383008080800080808000808080008080
      8000808080008080800080808000808080008080800080808000808080008080
      8000808080008080800080808000808080008080800080808000808080008080
      8000808080008080800080808000808080008080800080808000808080008080
      8000808080008080800080808000808080008080800080808000808080008080
      8000808080008080800080808000808080008080800080808000808080008080
      8000808080008080800080808000808080008080800080808000808080008080
      8000808080008080800080808000808080008080800080808000808080008080
      8000808080008080800080808000808080008080800080808000808080008080
      8000808080008080800080808000808080008080800080808000808080008080
      8000808080008181810080808000808080008080800080808000808080008080
      800080808000808080008080800080808000424D3E000000000000003E000000
      2800000050000000780000000100010000000000A00500000000000000000000
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
  object EditorModeImages: TImageList
    GrayscaleFactor = 128
    Height = 30
    Masked = False
    Width = 30
    Left = 155
    Top = 48
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
    Left = 187
    Top = 304
    Bitmap = {
      494C010108000C0004001E001E00FFFFFFFFFF10FFFFFFFFFFFFFFFF424D3600
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
      0000000000000000000000000000000000008080800080808000808080008080
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
      8000808080008080800080808000808080008080800080808000808080008080
      8000808080008080800080808000808080008080800080808000808080008080
      8000808080008080800080808000808080008080800080808000808080008080
      8000808080008080800080808000808080008080800080808000808080008080
      8000808080008080800080808000808080008080800080808000808080008080
      8000808080008080800080808000808080008080800080808000808080008080
      8000818181008282820082828200828282008282820081818100808080008080
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
      8000808080008080800080808000808080008080800080808000808080008282
      8200878787008888880084848400808080008080800080808000808080008080
      8000808080008080800080808000808080008080800080808000808080008080
      8000808080008080800080808000808080008080800081818100868686008686
      86007E7E7E00797979007775770077777700797979007F7F7F00868686008585
      8500818181008080800080808000808080008080800080808000808080008080
      8000808080008080800080808000808080008080800080808000808080008080
      8000808080008080800080808000808080008080800080808000808080008080
      8000808080008080800080808000808080008080800080808000808080008080
      8000808080008080800080808000808080008080800080808000808080008080
      8000808080008080800080808000808080008080800080808000808080008080
      8000808080008080800080808000818181008585850085858500848484008484
      8400838383008383830082828200828282008282820082828200828282008181
      8100818181008181810081818100818181008080800080808000808080008080
      8000808080008080800080808000808080008080800080808000808080008080
      8000808080008080800080808000808080008181810085858500868686007676
      760052505200444446006A6A6C00868686008080800080808000808080008080
      8000808080008080800080808000808080008080800080808000808080008080
      80008080800080808000808080008080800086868600808080005F5F5F003838
      3800202020001414140010121000121210001414120021211F003A3A3A006161
      6100818181008686860080808000808080008080800080808000808080008080
      8000808080008080800080808000808080008080800080808000808080008080
      8000808080008080800080808000808080008080800080808000838383008787
      8700888888008787870085858500848484008282820081818100818181008080
      8000808080008080800080808000808080008080800080808000808080008080
      8000808080008080800080808000808080008080800080808000808080008080
      80008080800080808000818181007D7D7F00606060005E5E5E00626264006866
      68006C6C6C006F6F71007575750077777700777779007A7A7A007B7B7B007D7B
      7D007E7E7E007F7F7F007F7F8100838383008282820080808000808080008080
      8000808080008080800080808000808080008080800080808000808080008080
      8000808080008080800083838300888888008080800063636300363636001414
      14001415110023261B0016161600696969008787870080808000808080008080
      8000808080008080800080808000808080008080800080808000808080008080
      80008080800080808000818181008686860061616100212121000F0F0D001819
      1500262820002E3028002F3129002F3129002D2F270024251F00151612000A0C
      0A00232323006464640087878700818181008080800080808000808080008080
      8000808080008080800080808000808080008080800080808000808080008080
      80008080800080808000808080008080800080808000848484006F6F6F003535
      37003F3F3F004B4B4D005A5A5C006B6B6B00777777007D7D7D00818181008686
      8600888888008787870085858500838383008282820081818100808080008080
      8000808080008080800080808000808080008080800080808000808080008080
      80008080800080808000878787004A4A4A000F100C001D1E18001A1B15001819
      150017181400171814001617130017171500191A16001A1A1A001C1E1C002020
      2000242422002727250029292900312F31007272720083838300808080008080
      8000808080008080800080808000808080008080800080808000808080008181
      810086868600858585007373730047474900201E200011110F0023251B003F43
      32004245380060664D004C513A001111110068686A0087878700808080008080
      8000808080008080800080808000808080008080800080808000808080008080
      8000808080008282820085858500414141000D0D0B00262A2000373931003739
      2F0034362E0033352D0034362E0035372D0036392E00373A2F00393B31003236
      2C001B1C18000909090047454700858585008282820080808000808080008080
      8000808080008080800080808000808080008080800080808000808080008080
      800080808000808080008080800080808000868686007F7F7F0024242400363A
      290026291E00212319001C1D1700191A1600161816001F1F1D002A2A2A003535
      3700424042004F4D4F005E5E5E006E6E6E00777779007E7E7E00838383008080
      8000808080008080800080808000808080008080800080808000808080008080
      800080808000818181007F7F7F00242320005A614300494D3C00474B3A00464A
      3900464B3800484D3A004A4F3C004E533E0051584100585E45005B6146005C63
      46005C614400595F44005C6547001F2217004A4A4C0087878700808080008080
      8000808080008080800080808000808080008181810084848400878787007C7C
      7E005C5C5C002E2E3000131311001C1E1600373B2C004D523F00515643004E52
      3F0041443700545B4400828B65004A4F38001111110068686A00878787008080
      8000808080008080800080808000808080008080800080808000808080008080
      800081818100848484003838380012130F00424637003E41360033352D003335
      2D0033372D00363A30003B3E33003F4235004144370042453800424538004246
      37004043380031332900070707003F3D3F008585850081818100808080008080
      8000808080008080800080808000808080008080800081818100818181008181
      81008181810082828200858585008888880073717300212026005E6444009FA8
      780042453800484C3D00474B3A0045493A00464A390044483700404231003739
      2A002F3324002A2D220025271D001E1F19001C1C1A00212121005A5A5A008585
      8500808080008080800080808000808080008080800080808000808080008080
      8000808080008686860057575900383C2900939F6E00363B2E003E4435004044
      350042483700464C3B004D523D0051584100595F460061684B00677052006F77
      5500747B570079805C00879068003D422D003E3C3E0088888800808080008080
      800080808000808080008282820087878700848484006C6C6E00404042001B1B
      1B00161711002F3324004E533E00595E4700585D4600535843004D523F004B4F
      3C003E433600505540007F866000808963004A4F38001111110068686A008787
      8700808080008080800080808000808080008080800080808000808080008080
      8000878787003F3F410017190F00555C45004448390033352D0034362E00383B
      30003D40350042463700464C3B004B4F3E004E52410050544100515641005156
      41004F5340004D513E003D403300090A06004846480087878700808080008080
      800080808000808080008080800080808000828282007F7F7F007E7E7E007F7F
      7F007F7D7F0076767600626262003C3C3E001B1C160060664600E8F8AA0097A1
      7000303228003B40330041453400464A39004C503D00535843005B6049006369
      4E006C7154006E765600707656006D75550072785600424730002E2C2E008383
      8500808080008080800080808000808080008080800080808000808080008080
      80008080800085858500201F23008F9B6800C6D09D00797A6F007A7C6D007577
      6800717564006C7261006C705D0069705B0068715A006F755C00757C5F007780
      62007B8363007D8565008A936D0051573E003434340086868600808080008080
      80007F817F00868686007A7A7A00545454002927290014141200272A1F004B50
      390060664B00626A4F005C644900575E4700565B460050544100484C3B003F43
      34003C403100565A47007B845E007C835F00818A62004C4F3800111111006868
      6A00878787008080800080808000808080008080800080808000808080008686
      86005E5E600011100D00676C4F005C624900373A2F0036382E003B3E33004147
      38004A4E3B004F53400054594400575E47005D634A005E664B005F674C006168
      4B005F654A005D614800585D46003D4132000808080064646600868686008080
      8000808080008080800080808000858585006060600022222200242424002626
      26002222200011131100151513003A3F2C00909B6B00D9E8A000EDFFAD00C7CF
      9C009A9B8C008D8F7E007D7F6E006E725F006469540062695200636B5000666D
      5000656D4D006A7250006F775500737C58007C855F0061684A00272725007F7F
      7F00808080008080800080808000808080008080800080808000808080008080
      800085858500636365001F211900E9FAAA00FFFEE300FFF9E500FFFBE400FFFA
      E200FFFAE100FFF8DE00FFF8DD00FFF9DB00FFF9D900FBF3D700F9F3D300F4EE
      D000F1EDCD00EEEACA00F2F0D5006F6F5E002C2C2E0086868600808080008080
      80008282820049494900161816002121190043483300666D4F00707858006C73
      5500656C4F0061674C005E6449005A5F480054594200484D3A00575C47008A8A
      6F00C5C3A100EEE8C800BABD930078815B007B825E00818A6200495039001111
      110068686A008787870080808000808080008080800080808000818181008181
      81001C1B1F005A5F4200868F67005054410035392F003F423500474B3A004E52
      4100545B44005D634A0063694E00697052006D74560071775700737957007278
      58006F7658006B725400686D500061674E00282B200021212300838383008181
      81008080800080808000808080008989890039393B0022251A0046483700393C
      2F0033362B002F312900383A3000838A6400ACB98200CCDA9600EEF9AF00FFFA
      E600FFFDF400FFFBED00FFFAE900FFFAE300FAF5DC00ECEACF00DDDBC000D0CF
      B300C1C3A600B1B59A00A5AA8D00979E80008E967400818967001E201E007A7A
      7A00808080008080800080808000808080008080800080808000808080008080
      80008787870028272D00757D5300FBFFD900FEFFD900FFF9E200FFF9E500FFF9
      E200FFF8E000FFF9E000FFF9E000FFF9DF00FFF8E100FFF8E100FFF8E100FFF9
      E200FFF9E300FFFCF000AFA98900191717006969690084848400808080008383
      83007472740011140E00606749007E8761007F866200767E5C006F7658006C71
      5400696E510063694E0061654C00595F4600555A4500B3B48E00FBF5C800FFF9
      E400FFFAE800FFF9E400FFF9E400C9CB9D007A835F0078815D00838A64004C4F
      3A00110F110068686A0087878700808080008080800080808000868686005B59
      5B0022251A00A7B17E008A926800484C3B003E413400474D3C00505542005A5F
      480063694E006A735500747C5A007B825E007F886200838C6400838D6500838C
      6600828963007E855F00767E5C006F7658005B6148000E0E0C00636163008585
      8500808080008080800081818100858585003333330035382B0052574200474B
      3A004145360037392F0034382E00757D5B00A5B07B00C1D08F00C0C49100EAE3
      BA00FFF8E000FFFBEC00FFFBEC00FFFAE800FFFAE900FFFBEB00FFFBED00FFFC
      F000FFFCF200FFFCF000FFFBEB00FFFBEE00FFFDF000949283001D1B1D007C7C
      7C00808080008080800080808000808080008080800080808000808080008585
      85006A6A6C0014171100DEECA000D1DE9D00797E5E009FA37900C6C89500E9EC
      B100FEFFCB00FFFFDB00FFF9E100FFFAE000FFFCDD00FFFEDC00FFFEDB00FFFE
      DB00FFFAE800B0AE860011110F00646466008787870080808000808080008484
      840066646600292A1F0089916700838C64007E855F00777F5D00737959006F74
      540069705200656C4F0060664B005358430051564100A1A97F00EFEDBA00FFF8
      E100FFFCDC00FFFEDB00FFFCDD00FFF9E300D7DAA9007F886400787F5B00818A
      64004A4F3800131111006969690084848400808080008080800087878700302F
      3300676E4A00CAD796008A92680043473800464A3B00525643005B634A00676E
      5100717959007D846000858F67008E986C00969F71009AA373009AA4730098A3
      7300949F71008E986C00868F67007E876100767E5C00292C1F0038383A008787
      8700808080008080800081818100818181002A2A28003E4231004E5340004448
      390041443700393C310034342C0070765600A4AF7A00BCC98A0061674C00565B
      44007F846600B8B79000E9E2B800FFF9DC00FFFAE900FFFAE800FFF9E400FFF9
      E300FFF9E400FFF9E500FFFCF000F8EFD0006B6656001C1A1C00666668008383
      8300808080008080800080808000808080008080800080808000828282008080
      80001C1B1F00686F4B00F6FFCE00BECB8C0040463500414736004A513E005F65
      4C0079815F009EA67800C1C68F00DCE2A500F8FDB900FCFFD200FEFFDA00FFF9
      E300B2B786001212100062626400888886008080800080808000808080008585
      85005A585A00313526008C966C00878E66007F8862007B825E00757D5B007078
      560069725400656B50005C60470051564100515641007F88600088946A00C5CC
      9B00FEFFD400FFFDDC00FCFFD800FEFFDA00FFFAE000E6E9B00089906A00757E
      5A00828B6300383C29002F2F31008585850080808000828282007C7C7E002222
      2200ABB77C00D5E29C00868E640044483900515641005D634A0069705200757D
      5B00828B63008F996D009CA67500A6B17C00AEB98200B2BD8600B3BE8500B0BC
      8300ABB67F00A2AE7B0099A372008D976B00848D67004D523B00242424008080
      80008181810080808000828282007D7D7D0020202000484D38004D523F004448
      3900424538003E41340032342C00696E5100A1AD7A00B2BE8500585C4300474C
      39004E533E00545C4300697052008D916D00C0BF9200EAE6B700FFF9D700FFF9
      E400FFF9E500FFFBEC00C9C3A300323027002D2D2F007B7B7B00868686008080
      8000808080008080800080808000808080008080800081818100878787003838
      3A001D1F1500ACB98200EFFFAF00C4D0950054594C004E524300494E3B004F54
      3D005A6144005E674A00656C4E00727A5800848D6500A3AB7A00C9D09700B5BB
      88001A1916005E5F620088888800808080008080800080808000808080008787
      87004C4C4E003C402D00969F71008A926800828B63007E855F00767E5C007278
      58006B73530060664B00545944005257420050554000868E640088926800818A
      6200A6AE8000F3F8B700FFFEDB00FBFFD600FAFFD500FFFDDC00F1F6B500939B
      710078815D00595E410027292700818181008080800082828200767678002122
      1C00D2E19B00D5E49C007B8460004A4E3D005A5F4800686F5100777D5B00848D
      6500939D7100A4AF7A00B3BF8400BFCC8D00C9D49300CDDB9800CCDC9800CAD8
      9500C3D08F00B6C48900AAB780009DA77600909A6E006A7252001A1A18007B7B
      7B00828282008080800082828200797979001A1A18004D523D004C503F004648
      3900424637004043360032362E005E6249009CA47300C1CD9000A1A688007378
      61006168510062694C00687050006D7353006C7454007A815D00979D7300C4C8
      9500E8E5B7008E8D6E0019191700505052008686860083838300808080008080
      8000808080008080800080808000808080008080800089898900575557000707
      05004F543D009DA77600E4F3AD00F6FFD000EAF6BD00CDD8A800B1BA96009AA0
      8500848A6F00727A5F006F7659006C745200737C5600808A6000919C6E006B72
      4E00282828008484840081818100808080008080800080808000808080008888
      88003F3E4400474D34009CA675008A946800868E64007E87610079805C00727A
      5800686D5000585D4600515643004D513E00434938007E875F008C946A008A92
      6800818A62008D976D00D3DBA000F9FFD600F9FFD500F7FFD200FCFFD700F5FF
      BC00A2AB7B005B63480020201E007D7D7D008080800082828200727274002A2B
      2000D7E69E00CFDD9900757D5B005257420063694E0071795900828B6300939E
      7000A7B17C00B9C58A00CAD89500D8E79F00E2F1A700E9FAAA00EBFAAA00E4F4
      A800DAE9A100CBDB9700BBC98C00ACB87F009DA776007C855F001B1C18007878
      7800828282008080800082828200727272001A1B15004F5441004C503F00474B
      3A00434639004245380033372D005C604700D5E49C00F8FFD200FDFFDC00FAFF
      D200E3E8B700C2C79F00A6AD8700919A72008A92680086906400889066008B96
      6800889066000E10100069696B00888888008181810080808000808080008080
      80008080800080808000808080008080800088888800666666000C0C0C002E33
      2600545B4400909A6E00DBEBA700F3FFC800F7FFD000F7FFD100F9FFD600F6FF
      D200F3FFCA00EEFABF00D8E2AF00C3CBA100B2B99500A5AE8600A6B181008D95
      6B00252523007D7D7D0081818100808080008080800080808000808080008888
      880039383C0052583D009DA676008B956B00878F65007F88600079805C006F74
      5600585D46004C513E00565B440073795900A1A77B00A9B18300868F6700858E
      66008A926800868E6400818A6200B0BA8700F3FFBA00F8FFD400F6FFD100FCFF
      D800FFFFDB00AAB47F0014141200787878008080800082828200737375002729
      2100C8D69200C3D09100717757005A6047006C7355007E855F008F976D00A3AD
      7A00B8C48900CDDB9800DFEFA500EEFFB300F4FFC700F7FFD000F9FFD000F5FF
      C700EEFFB400E1F1A500CDDB9700B9C58A00A7B27D00848E64001C1D19007777
      7900828282008080800084848400666466001E1F1900535841004C503D00464A
      3B0043493800424637003A3D320053584300A5B17E00EBFBAD00FAFFD500F9FF
      D400FAFFD700FDFFDC00FAFFDA00F5FFC600DFE7B400C8D1A300B5C18E00B1BC
      8700A2AF7800272921007A787A00828282008080800080808000808080008080
      800080808000808080008080800088888800616161000D0D0D00292C2100454B
      3A0054594200747C5A006B735300929D6F00C4D39200EEFDAD00F2FFC300F3FF
      C400F2FFBF00F1FFC100F4FFC600F5FFD000F6FFD400FAFFDB00EBF7BE00838A
      6D001A1C1C007C7C7E0081818100808080008080800080808000818181008585
      850033333300616747009BA574008D956B00878F65007F886000747C5A005E64
      4B006D735800B2BC8900E0EFA500F4FFC700FCFFD800F7FFD200D4DEA10099A1
      7500828B630086906600858E660080876100959E7000DCE7A400F0FFB900CAD9
      930098A26F005F6545001B1B1B007B7B7B008080800082828200787678001E1F
      1900AAB57E00B3BE85007177570063684B00747C5A00868D67009AA37300B0BB
      8200C7D49300DEEDA300F0FFB900F9FFD400FFFCDF00FFFAE400FFFAE400FFFC
      DE00F9FFD200EFFFB400DBEAA000C4D19000AFBC8500838B61001B1B19007979
      7B008282820080808000868686005858580023251D00545B44004C503D00484C
      3B0044483900424637003F4334004B4F3E004E5241006A715300B6C28700F0FF
      B700F7FFD200F4FFCE00F4FFCE00F7FFD100FAFFD700FCFFDA00FEFFE000F6FF
      D300CDD8A30026281E0073717300828282008080800080808000808080008080
      80008080800080808000878787005C5C5C000B0B0B002C2E2400464A3B004144
      3700424637005A60470051584100505740005E644B007B846000ABB88100D7E6
      9E00EFFFB000F1FFB900F2FFC200F4FFC400D5E59B00818C5C00323724002022
      20005E5E5E008383830080808000808080008080800080808000818181008080
      82002C2C2C006F7652009AA373008D956B00878F65007B825E006A6F5200585D
      46007D836100C9D49B00F0FBB500F6FFD200F4FFCE00F3FFCB00F7FFD300F3FF
      BD00C1CA93008B946C00818A6200858E6600818B6300858C640037392A001A1C
      1A002A292D00403F43006E6E6E008282820080808000828282007D7D7F002222
      220079805800A2AE7B0070785800686D50007A815D008C966C00A3AD7A00B8C6
      8900D4E19B00EEFDAD00F8FFD200FFFBE200FFFBED00FFFCF200FFFCF200FFFB
      EB00FFFCDF00F4FFC900E4F4A800CBD99600B9C58A006C734F0024242400817F
      81008181810080808000878787004C4A4C0027291F00585D46004D513E00494D
      3C0040433600393C310043473800636651005E6449005F654A00697254008D97
      6B00C8D69300F0FFB800F5FFCD00FAFFD600F6FFD000EAF9A900ACB87B006F73
      510035352B00333333007F7F7F00818181008080800080808000808080008080
      800080808000858585005B5B5B000D0E0A0033382B004A4E3D00434736004548
      3B0070715C00AEB29000989D8000697059005D634A005F684A006A7252007E88
      60009FAB7800CBD99500B9C687005A6143001E20180029282C005A5A5C007F7F
      7F00858585008080800080808000808080008080800080808000818181007E7C
      7E00232523007E865C0095A072008C946A008289630070765600666B4E005C60
      4700787F5B00949F6F00979F7300B8C28F00E5F2AC00F3FFC900F4FFC900F4FF
      C700F5FFCF00E6F5AB00ACB68100858C6600828B6500818A6200202218005D5D
      5F00888888008888880083838300808080008080800080808000878787003434
      360041463100939E7000737959006B7254007E8561008F9B6F00A7B47D00C1CE
      8F00DBEAA000F1FFBC00FFFFDA00FFFBEB00FFFDF600FFFEFB00FFFEFA00FFFC
      F200FFFAE500F9FFD000E9FAAA00CEDC9800BAC88B0041483100373739008888
      8800808080008080800088888800404242002C2F2200585D46004D514000484C
      3B006C7154009BA37500C6CF9600E0EAAF00B3BC96008C947200808961007E88
      6000828963009DA97600CBD996009AA57000575C3F0027291F00292729003F40
      4300696769008282820081818100808080008080800080808000808080008080
      800081818100838383002826280035392A005B6049004B503B005E634C00BCC4
      9100E5F2AC00EEFFB200EEFDB700E0EBB600BCC69E009AA28200858D6B008089
      61008490640098A373003B3F2C00232228007171710085858500868686008181
      8100808080008080800080808000808080008080800080808000828282007A7A
      7A001E1F1B008A936500939C6E00858E6600777E5A006B725400656C4F005B61
      48007A815D009DA77400949F6F008E986C00939D7100B4BF8A00E1EEA800F2FF
      C200F2FFC200F3FFC400F4FFC200D4E19E009CA57700838C64002C2F22005959
      5B00868686008080800080808000808080008080800080808000868686006060
      6000141711007A815D00757B5B006E76560080896300959E7000ABB67F00C3D0
      9100DDEDA300F2FFC000FFFEDD00FFFBED00FFFDF800FFFFFD00FFFEFC00FFFC
      F300FFFAE500F8FFCE00E7F8A800CEDC9800A5B07B00181A1200646464008585
      85008080800080808000878787003737390033362900585D46004D523F004B4F
      3E0091996D00EEFFAF00F1FFBD00EEFFB300F1FFBF00EDF8B900CBD6A600A8B2
      8600949D6F008F9A6C0077805A000F11110049484C0072707200828282008787
      8700838383008181810080808000808080008080800080808000808080008080
      8000818181007E7E7E00222222004D523D0063694E00585D46005E644B00848E
      6400C4D19200E5F5A700E7F6A600E5F6A600ECFCB000EBF9B500E0EBB600CAD5
      A700B6C19300B5C08B00484D36004F4E52008A8A8A0080808000808080008080
      8000808080008080800080808000808080008080800080808000828282007575
      75001D201A008D9668008C966A007D846000737959006C745400666D4F00575C
      4500757D5B009CA6750096A1710095A07000929D6F008C966A00929A6E00B0BB
      8600DDEAA400F0FFB800F2FFC200F8FFD400F4FFC700C6D19200373928004C4C
      4E00868686008080800080808000808080008080800080808000818181008383
      8300202022003E422F0079815F007177570080896300959E7000AAB47F00C2CF
      9000DBEAA200F0FFBB00FEFFDA00FFFAE800FFFCF300FFFDF700FFFDF600FFFB
      EC00FFFCDD00F3FFC100DEEDA300CDDB9800595E400023212300848484008181
      81008080800080808000838383002E2E2E003B3D2E00555A45004F534000545B
      4400596049008A926800DDECA200EBFCAC00EAFBA900EFFFAD00F0FFBB00F1FF
      BB00DAE5B000C3CD9A00919A6C002C2C2A008585850084848400818181008080
      8000808080008080800080808000808080008080800080808000808080008080
      8000828282007B7B7B001B1B1B00525740005C6449005D634A00565C43004E55
      3E00666D5000A0AA7700D4E39B00E2F2A600E9FAAA00EAFDAB00E7F5A700E1F0
      A800D4E2A500B5BE9600393B2C004A4A4C008787870080808000808080008080
      8000808080008080800080808000808080008080800080808000848484006969
      6B00272A1F008E976900868D6500747C5A00696E51005D634A005B614800676C
      4F00939D73009CA77700939C6E00949F6F00949F6F00939E7000929B6D008C94
      68008E986C00B0BA8500C5D29100919B6A0068714B004B5136001C1D17006060
      6200848484008080800080808000808080008080800080808000808080008686
      8600656565000D0D0B005E654800777F5D007E875F00909A6E00A6B17C00BCC8
      8B00D4E39B00EBFCAC00F6FFCD00FFFDDE00FFFAE800FFFBEB00FFFAE800FFFC
      DE00F6FFCD00EBFAAA00D7E8A000949E6D000D0F0D0068666800858585008080
      800080808000808080007F7F7F00272725005C65480071775700697053006F74
      5700666D500062664B008B956900D8E79F00ECFDAD00E3F5A700DEF0A200DBEB
      9F00D3E09A00BEC994007A816300242424007F7F7F0081818100808080008080
      8000808080008080800080808000808080008080800080808000808080008080
      800082828200797979001717150081876700A5AA8400ADB48C00ADB39100747B
      64005E674A00697351008B956900B7C388008C976700656D4B004C5237003236
      27001F2119002425210037353700767676008282820080808000808080008080
      8000808080008080800080808000808080008080800080808000858585005D5D
      5F002D30230079815F006E755700747C5A0089916700A5B07B00C4D39200E0EF
      A500EEFDB300DDE8A900BDC79200A0AB7B00929D6F008F996D00939C6E00909A
      6E008E986C00929B6D005C6144000E0E10003D3C400055545800727272008282
      8200808080008080800080808000808080008080800080808000808080008080
      8000878787004846480015150D00676E50007F8862008D956B009FA97800B2BE
      8500C6D59400DCEBA300EFFFB000F4FFC900FBFFD400FDFFD800F9FFD400F3FF
      C400EAFBAB00DDEDA300AAB57E00191D130048484A0087878700808080008080
      800080808000808080007B7B7D0029292700C0CE8B00E4F1A900E1EEA600E2EC
      AD00B1B99700787E5E00777E5A008E986C005E634500464B340035392A00292B
      2300262723002C2D2900333333005D5D5D008383830080808000808080008080
      8000808080008080800080808000808080008080800080808000808080008080
      8000818181008282820027252700676F4D00E9F8AE00E3F0A800E4F3AB00DCE7
      B200AFB99700878F6D008089630079825A000E0E0E0035343A004D4E51006262
      6400747476007D7B7D0084848400828282008080800080808000808080008080
      8000808080008080800080808000808080008080800080808000848484006462
      64000E110B006A725000B9C58800E2F2A600F1FFBC00F0FFB800EEFFB100EBFB
      AD00ECFBAB00F0FFAF00F0FFB300E8F7AF00CFDB9E00B1BB880099A274008E99
      6B008D976B00969F71005F654500313131008B8B8B0086868600838383008080
      8000808080008080800080808000808080008080800080808000808080008080
      80008181810085858500403E400013150D0061684A0089926A0099A27200A7B2
      7D00BBC58A00CBD99600D8E9A100E7F8A800EDFEAE00EEFFAE00EAFBAB00E1F3
      A500DAE9A10099A572001A1E14003F3F41008686860081818100808080008080
      800080808000808080007E7E7E00292B2900AFBB8000DDEDA300DAEAA000DDED
      A100E5F3AF00CBD3A7009DA57B00747D5700151418005C5B5F006D6B6D007674
      760079797B007F7D7F0083838300858585008080800080808000808080008080
      8000808080008080800080808000808080008080800080808000808080008080
      800080808000848484006B696B0011110F00ACB77E00E0F0A400DAE9A100DEEE
      A200E8F5AF00E2EDB400CBD3A0008D976B002424220084848400878787008484
      8400828282008181810081818100808080008080800080808000808080008080
      8000808080008080800080808000808080008080800080808000818181008080
      80004A4A4A002829250028291E004F553A00848D5F00BECB8A00E0F0A400EEFF
      B100EEFFAF00E7F9AB00E8F9A900E9FAAA00EFFEAE00ECFCAE00E0EDA700C4D0
      9500A6B07F009BA57400686E4E002B2B2B008181810081818100808080008080
      8000808080008080800080808000808080008080800080808000808080008080
      8000808080008282820086868600484848000F0F0D004045300080896100A0AA
      7900AFBA8300B8C68900C5D29100CFDD9900D5E29C00D8E79F00D3E29C00B5C3
      8600606646001212100048484A00868686008181810080808000808080008080
      800080808000808080007F817F002B2D2B009DA87300D9E8A000D3E29C00D5E6
      9E00D8E79F00E1F0A600E3EDB20090976F002C2C2A0085858500848484008282
      8200818181008181810081818100808080008080800080808000808080008080
      8000808080008080800080808000808080008080800080808000808080008080
      80008080800080808000888888003A393D00313621008E99690085906200828B
      5D007C8458007A8355007F8660005C6047002424240080808000818181008080
      8000808080008080800080808000808080008080800080808000808080008080
      8000808080008080800080808000808080008080800080808000808080008181
      8100868686007F7F7F006B6B6D00464549002A292D001C1C1A0034382700656C
      48009EA97400D0DF9900E6F6A800EEFFAF00EDFEAE00EFFFB500EEFFB600EDFE
      AE00E0EFA500C7D495006E745200232323008080800081818100808080008080
      8000808080008080800080808000808080008080800080808000808080008080
      8000808080008080800081818100878787006565670026262600151812003B3F
      2C006A704E008C9567009DA77400A4AF78009CA673007F875D004D5338001D1F
      1700262426006868680087878700818181008080800080808000808080008080
      80008080800080808000858585003A3A3A0032342500464B3600474A3500474C
      3500494E3700494E370051573C003C3F3200393B3B0084848400818181008080
      8000808080008080800080808000808080008080800080808000808080008080
      8000808080008080800080808000808080008080800080808000808080008080
      80008080800080808000828282007C7C7C00393939002E2E2E00313131003131
      33003333350035353700363638003A3A3C006767670083838300808080008080
      8000808080008080800080808000808080008080800080808000808080008080
      8000808080008080800080808000808080008080800080808000808080008080
      80008080800081818100838383008787870084848400777779005A5A5C003534
      3A002222220021231B004B4F36007D875B00939D6A0078805600616745004B4F
      36003436270026261E00252622004E4E4E008383830081818100808080008080
      8000808080008080800080808000808080008080800080808000808080008080
      8000808080008080800080808000808080008585850083838300636365003939
      3B00252525001B1D1B001E1F1B001E1F1B001D1D1B002525250039383C006563
      6500838383008585850080808000808080008080800080808000808080008080
      800080808000808080008282820079797900626264005F5E62005F5E62005E5D
      61005D5C60005D5C60005B5A5E005E5D61007A7A7A0082828200808080008080
      8000808080008080800080808000808080008080800080808000808080008080
      8000808080008080800080808000808080008080800080808000808080008080
      8000808080008080800080808000828282008585850083818300848484008585
      8500868686008787870088888800888888008484840080808000808080008080
      8000808080008080800080808000808080008080800080808000808080008080
      8000808080008080800080808000808080008080800080808000808080008080
      8000808080008080800080808000808080008181810082828200858585008787
      8700807E80006C6C6E0048474B002C2C2E002C2C2E0033323600403D43005251
      550064636700757375007C7C7C00838383008080800080808000808080008080
      8000808080008080800080808000808080008080800080808000808080008080
      8000808080008080800080808000808080008080800081818100858585008787
      87008080800079797B00787878007878780079797B0080808000878787008484
      8400818181008080800080808000808080008080800080808000808080008080
      8000808080008080800080808000828282008484840084848400848484008484
      8400848484008484840084848400848484008282820080808000808080008080
      8000808080008080800080808000808080008080800080808000808080008080
      8000808080008080800080808000808080008080800080808000808080008080
      8000808080008080800080808000808080008080800081818100818181008080
      8000808080008080800080808000808080008080800080808000808080008080
      8000808080008080800080808000808080008080800080808000808080008080
      8000808080008080800080808000808080008080800080808000808080008080
      8000808080008080800080808000808080008080800080808000808080008080
      8000818181008383830087878700858585008383830087878700888888008686
      8600848484008282820081818100808080008080800080808000808080008080
      8000808080008080800080808000808080008080800080808000808080008080
      8000808080008080800080808000808080008080800080808000808080008080
      8000818181008282820082828200828282008282820081818100808080008080
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
      8000808080008080800080808000808080008181810080808000808080008080
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
      8000808080008080800080808000808080008080800080808000808080008080
      8000808080008080800080808000808080008080800080808000808080008080
      8000808080008080800080808000808080008080800080808000808080008080
      8000808080008080800080808000808080008080800080808000808080008080
      8000808080008080800080808000808080008080800080808000808080008080
      8000808080008080800080808000808080008080800081818100828282008282
      8200818181008181810080808000808080008080800080808000808080008080
      8000808080008080800080808000808080008080800080808000808080008080
      8000808080008080800080808000808080008080800080808000808080008181
      81008383830088888800848484007E7E7E007A7A7A00797979007A787A007D7D
      7D00838383008888880084848400818181008080800080808000808080008080
      8000808080008080800080808000808080008080800080808000808080008080
      8000808080008080800080808000808080008080800080808000808080008080
      8000808080008080800080808000828282008787870088888800848484008080
      8000808080008080800080808000808080008080800080808000808080008080
      8000808080008080800080808000808080008080800080808000808080008080
      8000808080008080800080808000808080008080800080808000808080008080
      8000808080008080800080808000808080008080800080808000808080008080
      8000808080008080800080808000808080008080800080808000808080008080
      8000808080008080800080808000808080008080800080808000808080008080
      80008080800080808000828282008686860086868600808080007D7B7D007C7C
      7C007B7B7D008080800087878700858585008181810080808000808080008080
      8000808080008080800080808000808080008080800080808000808080008080
      8000808080008080800080808000808080008080800080808000848484008484
      84006E6C6E00474547002E2E2E00232323001D1F1D0020211D0020211D002323
      23002A2A2C003F3E420068686A00828284008585850080808000808080008080
      8000808080008080800080808000808080008080800080808000808080008080
      8000808080008080800080808000808080008080800080808000808080008080
      80008080800081818100878787007C7C7C004D4B4D0039393B0069696B008686
      8600808080008080800080808000808080008080800080808000808080008080
      8000808080008080800080808000808080008080800080808000808080008080
      8000808080008080800080808000808080008080800080808000808080008080
      8000808080008080800080808000808080008080800080808000808080008080
      8000808080008080800080808000808080008080800080808000808080008080
      8000808080008080800080808000808080008080800080808000808080008080
      800081818100868686007D7D7D005959590037373700252525001D1D1D001C1C
      1C001D1F1D0026262600363638005C5A5C008080800086868600808080008080
      8000808080008080800080808000808080008080800080808000808080008080
      80008080800080808000808080008080800080808000878787006C6C6C002C2C
      2E00151612002F31220054593C00757C56008E996B00A0AA7700A5B07B009DA8
      7300838C5E00555C3E0021231B00252527006666680087878700818181008080
      8000808080008080800080808000808080008080800080808000808080008080
      8000808080008080800080808000808080008080800080808000808080008181
      81008686860080808000505052001A1A1A00131610002A2D2000171717007171
      7300858585008080800080808000808080008080800080808000808080008080
      8000808080008080800080808000808080008080800080808000808080008080
      8000808080008080800080808000808080008080800080808000808080008080
      8000808080008080800080808000808080008080800080808000808080008080
      8000808080008080800080808000808080008080800080808000808080008080
      8000808080008080800080808000808080008080800080808000808080008282
      82008686860058585800191919000D0D0B00181913002A2C22003B4033004E51
      3C00555B420052583F00404530001F2117001E1C1E0060606200878787008080
      8000808080008080800080808000808080008080800080808000808080008080
      80008080800080808000808080008181810087878700525052000F0F0F003135
      2600686F5100848B6500929B6D009AA47300A6B07D00B2BE8500C1CE8F00CFDD
      9900DDEDA300E7F5A900CFDE9800757F55001518120049494B00868686008181
      8100808080008080800080808000808080008080800080808000808080008080
      8000808080008080800080808000808080008080800081818100868686008282
      8200595959001D1D1F0014150F003A3E2D004D523F007E856100595E40001C1A
      1C007F7F7F008383830080808000808080008080800080808000808080008080
      8000808080008080800080808000808080008080800080808000808080008080
      8000808080008080800080808000808080008080800080808000808080008080
      8000808080008080800080808000808080008080800080808000808080008080
      8000808080008080800080808000808080008080800080808000808080008080
      8000808080008080800080808000808080008080800080808000818181008585
      8500424242000808060022231D0033352D00383B3000414437004D5140005C62
      49006C74540081886200929D6F0095A070006268480012130F00504E50008787
      8700808080008080800080808000808080008080800080808000808080008080
      8000808080008080800080808000878787004E4E4E000C0D09004D523B007177
      5700757B5B007D8460008A92680097A07200A3AD7C00B2BE8500BECC8F00CDDB
      9800D7E69E00DFEFA500E7F9AB00F0FFB900B9C6870022231800464648008787
      8500808080008080800080808000808080008080800080808000808080008080
      8000808080008080800080808000808080008585850084848400605E60002323
      2300131410003A3C2D00595E47005B6148004D513E00757D5B00BCC88B00383C
      29002D2C30008585850081818100808080008080800080808000808080008080
      8000808080008080800080808000808080008080800080808000808080008080
      8000808080008080800080808000808080008080800080808000808080008080
      8000808080008080800082828200848484008484840080808000808080008080
      8000808080008080800080808000808080008080800080808000808080008080
      8000808080008080800080808000808080008080800080808000858785004A4A
      4A000C0D090036392E003638300033352D0036392E00424336004E523F005D63
      4A006D7555008087610090986C009EAC7900B6C287008C97670013140E005C5C
      5C00868686008080800080808000808080008080800080808000808080008080
      800080808000808080008686860062626400090909004A4F3A00666D50006970
      5200727757007C855F008A92680096A17100A4B17C00B6C28500C4D19000D1DF
      9B00DCEBA100E4F4A800E6F8AA00E8F8AA00F0FFB300BBC88700161711005F5F
      6100868686008080800080808000808080008080800080808000808080008080
      8000808080008080800084848400868686006666660028282A0011140E00393D
      2C005F654A00636950005C624900585D46004E523F00737B5900C4D19200AEB9
      80001F2217004543450088888800808080008080800080808000808080008080
      8000808080008080800080808000808080008080800080808000808080008080
      8000808080008080800080808000808080008080800080808000808080008080
      800082828200878787007C7C7C00626262006866680084848400818181008080
      8000808080008080800080808000808080008080800080808000808080008080
      8000808080008080800080808000808080008080800083838300727070001112
      0E00404635003F42370030332D0033352D0037392F0043473600525540006267
      4A0073795700828B6500949F6F00A5AF7A00B0BC8300C3D08F00747D55001616
      18007E7E7E008181810080808000808080008080800080808000808080008080
      800080808000818181008383830025272500393D2C0060664D005D654A00696E
      5100717757007D845E008A92680097A27200A7B27D00B8C48900C8D69300D6E3
      9D00E0EFA500E8F8AA00EDFCAC00EAFBAB00E4F4A800EAFAAC00747D55002222
      2400818183008181810080808000808080008080800080808000808080008080
      800081818100868686006C6C6C002F2F2F0013141000383C2B00656C4F006F74
      5600666D500060664D005D634A00596148004F544100737B5900C7D59200C4D3
      920098A2710012130D005A5A5C00888888008080800080808000808080008080
      8000808080008080800080808000808080008080800080808000808080008080
      8000808080008080800080808000808080008080800080808000828282008787
      87007D7D7D004F4D4F00131315001D1F17002222180045454700888888008181
      8100808080008080800080808000808080008080800080808000808080008080
      8000808080008080800080808000808080008080800088888800494949002427
      1C00595E4700383C320030332D0033352D00363A30004347380053584300636A
      4D00747A5A00868F670099A47400ABB77E00B7C38800C0CD8E00B5C388002526
      1B00615F61008484840080808000808080008080800080808000808080008080
      80008080800083838300717173001E2018008F9A6C0060664B005C624900666D
      50006E7557007B825E008892680099A27200AAB57E00BAC88B00CCDA9600DAE9
      A100E4F6A800EEFDAD00EFFFB000ECFDAB00E4F4A800DEEDA300BDC889001A1B
      1700747476008282820080808000808080008080800080808000808080008181
      8100808080003E3E400012130F00363A29006A715300787E5E00717757006C71
      5400676E510063694E0060664B005E6249005358410073795900CEDC9800C7D5
      9200C7D493007E865C000F0F0F006D6D6F008686860080808000808080008080
      8000808080008080800080808000808080008080800080808000808080008080
      80008080800080808000808080008080800082828200888888007D7D7D004D4D
      4F00151315000D100C005B604200D1D5A900D9D8CA0027291F00454345008888
      8800818181008080800080808000808080008080800080808000808080008080
      8000808080008080800080808000808080008080800088888800373739003A3E
      2B00585D4600383B300030332D0033352D00393C310045493A00555A4300676C
      4F00777F5D008A936B009FA97800B1BC8300BFCC8B00C5D29100C5D493004449
      340048474B008787870080808000808080008080800080808000808080008080
      80008080800084848400646367003A3E2B00C3D08F00767E5C00585D4600666B
      4E006D7456007A815D008790680098A37300ACB78000C0CB8C00D1DE9800DEEE
      A400EAFAAC00EFFFB300EFFFB400ECFDAD00E3F3A700D9E8A000C5D390002C2D
      22006C6C6E008383830080808000808080008080800080808000808080008585
      85005A5C5C00181A12006D755300838C64007C855F00757D5B00727858006D75
      55006A715300676E500061694E005F654A00555A450071795900D5E49C00CFDD
      9900C4D39200C5D293005E64440017161A007C7C7C0083838300808080008080
      8000808080008080800080808000808080008080800080808000808080008080
      8000808080008080800082828200878787007E7C7E004E4E4E00131315000D0F
      0D005B604300C3C99400FFFBD700FFFAEA00FFFEFC00D8D7CD0025251B004646
      4800888888008181810080808000808080008080800080808000808080008080
      80008080800080808000808080008080800081818100838383002F2F2F00474C
      370052574400373A2F0032342C0033352D003A3D3200484C3B00575C4500676D
      52007A835F008F996D00A5AF7C00B8C48900C7D49100CBDB9700D3E19D005960
      420038373B008888880080808000808080008080800080808000808080008080
      8000808080008484840066656900373B2A00E0F0A400A2AC7900595F46006167
      4E006C735500777F5D00868F670098A37300ADB98000C1CE8F00D3E29C00E4F4
      A800EEFFB100F0FFBB00F0FFB800ECFDAD00E1F1A500D4E39D00BDCA8B002224
      1C006F6F71008383830080808000808080008080800080808000808080008888
      8800424145003C412C008F996D00828963007D8660007A815D00757D5B007278
      58006D7456006B705300656B500062684D00585D480072785800DCEBA100D9E8
      A000CDDB9700C5D29100BCCA8D003E432C0029282C0083838300818181008080
      8000808080008080800080808000808080008080800080808000808080008080
      800082828200888888007D7D7D004D4D4D001513150010110D00585E4300BFC9
      8E00FAFFCE00FFF9E300FFF9E100FFFADF00FFF8E100FFFDF800D8D8C7002123
      190048484A008888880081818100808080008080800080808000808080008080
      800080808000808080008080800080808000828282007E7E7E0024242400555B
      40004F53400035392F0032342C0034362C003B403300494D3C005B5F46006C71
      53007F866200949F6F00AAB78000BFCC8D00CEDC9800D4E39D00DAE9A100767D
      55002D2D2F008585850080808000808080008080800080808000808080008080
      8000808080008282820076767600191C1600D0E19900D6E39D006A7355005C62
      49006A715300767E5C00878E660098A37300AFBA8300C3D29100D9E6A000E9F9
      AB00F1FFBA00F2FFC200F0FFBB00EDFCAC00DEEEA200D6E59D00939D6C001818
      18007C7A7C008282820080808000808080008080800080808000808080008787
      8700363436004D533800919B6F00858E6600828B63007E87610079815F00767C
      5C00727858006D74560069705300656B50005C6249006F775700E2F2A600E2F2
      A600D6E59D00CBD99500C4D19200AFBA83002324190050505000878787008080
      8000808080008080800080808000808080008080800080808000828282008787
      87007D7D7D004D4B4D001313150011120E00585C4300B7C38800F2FFC000FCFF
      D800FCFFD700FAFFD700FCFFD700FFFFDB00FFFCDC00FFFADD00FFFDF600D6D4
      BD001E2116004B4A4E0088888800818181008080800080808000808080008080
      8000808080008080800080808000808080008282820078787A001B1C18006269
      4C004A503F003638300032342C0034362E003E4134004B4F3E005D6148006B74
      5600838A64009AA37300B0BC8300C6D39200D5E49E00DDECA200DFEEA600969E
      6D00232325007F7F7F0081818100808080008080800080808000808080008080
      80008080800080808000858585002C2B2F006D764E00F3FFC80096A17100595F
      4600686F5200767C5A00848D650098A37300B0BC8300C9D69300DDECA200EDFF
      B000F3FFC300F3FFC600F2FFBB00E9F9AB00D9E99F00CFDD99003F442D003B39
      3B00878785008080800080808000808080008080800080808000818181008080
      82002A282A00676D4D00969F71008B95690089916700838C64007F8862007B82
      5E00767E5C00727A58006D7456006A6F520060664B006F765800E7F7A900EBFC
      AC00DEEDA300D4E19B00C8D69300C9D794005F65450032313500878787008080
      80008080800080808000808080008080800082828200878787007C7C7C004C4A
      4C001513150010130D00555B4000AFBA8300E7F9AB00F3FFC400F3FFC300F2FF
      C500F5FFCA00F5FFCF00F7FFD200F9FFD500FCFFD700FEFFD900FFFED900FFFC
      F000D5D1B1001C1E14004D4C5000888888008080800080808000808080008080
      80008080800080808000808080008080800083838300707070001F1F1700676E
      50004A4E3D0033372D0032342C0033372D003F4235004C503F005F6348006F77
      5700858E66009FA97600B6C18800CDDA9700DEEEA200E5F5A900E5F5A900B5C1
      86001C1D19007A787A0082828200808080008080800080808000808080008080
      80008080800080808000848484006B6B6B0017181200D6E69C00D5E29C00656A
      4D0061694E0073795900858D630099A37200B1BD8400CCD99600E2F2A600F1FF
      B900F5FFCB00F5FFCB00F1FFB900E5F5A900D9EAA20098A47100111111007373
      7500838383008080800080808000808080008080800080808000828282007A7A
      7C001C1E1C00828B63009AA37500919B6F008D976B0089936900848D65008089
      61007A835F00767E5C00727858006C735500666B4E006E755700ECFDAD00F1FF
      BA00E6F6AA00DBEAA200D0DD9700CBD996007D855B0028282A00828282008181
      8100808080008080800080808000838383007D7D7D004B4B4B00161416001516
      1000545A4100A6B17C00DAE7A100E8F8AA00E9FAAA00EAFAAC00F0FFAF00F0FF
      B600F1FFBD00F3FFC100F3FFC700F5FFCD00F6FFD200F8FFD400FAFFD500FBFF
      D600FFFAEA00D3CFA7001A1C12004F4F51008888880080808000808080008080
      80008080800080808000808080008080800084848400605E6000292C1F006871
      5300494D3A0034362E0032342C0036382E00404336004F543F005F654C007379
      590089936900A3AD7A00BDCA8B00D3E29C00E6F6A800EEFFAF00EDFEAC00CCDB
      950020241A006E6E700082828200808080008080800080808000808080008080
      8000808080008080800080808000888888002E2D330061674500F3FFC8008993
      69005A614A0071765800818A620097A37200B3BF8400CFDC9900E8F9A900F3FF
      C400F7FFD200F5FFCD00EFFFB700E1F1A500D2E09C003C412C003B3A3E008888
      8800808080008080800080808000808080008080800080808000828282007272
      72001E20180098A47300A1AB78009AA37300969F7100929B6D008C946A00858E
      6600828963007C835F00767E5C0071775700696E51006A715300EFFFAD00F4FF
      CA00F0FFAF00E4F2A600D7E49E00CFDD99009BA774001F1F1D007C7C7C008181
      8100808080008080800083838300757575001F2121001C1E1600565C43009EA8
      7700CAD79600D5E49E00D7E69E00D9E8A000DEEEA200E2F2A600E6F6A800ECFB
      AB00EDFEAE00EFFFB200F0FFB800F2FFBF00F4FFC400F4FFCA00F4FFCF00F5FF
      CF00F7FFD100FFF9E400CFD19C00151812005251550088888800808080008080
      800080808000808080008080800080808000878787004E4E5000323627006E75
      570047493A0034362C0033352D0036392E00414437004F54410061674C00757D
      5B008C966A00A7B17E00C0CF8E00DAE9A100EDFEAE00F2FFBD00F1FFBA00DCEB
      A100383A29005C5B5F0084848400808080008080800080808000808080008080
      8000808080008080800080808000848484007070720013131100CBD99500C8D5
      94005E644B006D7254007D86620096A17100B3BF8600D1E09A00EDFEAC00F6FF
      CE00FAFFD500F5FFCD00EEFFAF00E1F1A50099A46F0010121000767676008383
      8300808080008080800080808000808080008080800080808000848484005F5D
      5F0030342500A9B47D00A7B17E009FAB7A009EA8750096A17100919C6E008E97
      6900889066008089630079805C006F7658006C735500858C6800F8FFC900F8FF
      D200F1FFBC00EAFBAB00DDECA200D3E19D00B6C487001C1D1700747474008383
      83008080800080808000858585005B5B5D0015170F00929B6D00C3D29100C4D3
      9200C5D29100C9D79400CDDB9700D1DF9B00D5E49E00DAE9A100DDEDA300E3F1
      A500E3F5A700E7F7A900EBFCAC00EFFFB000F0FFB600F2FFBB00F2FFC000F3FF
      C300F3FFC500F4FFC700FFFCDD00C7CD92001516100053525800888886008080
      800080808000808080008080800080808000888888003F3E420041442F00727A
      5A004448390030332D0033352D00373A2F00424538005156410062684D00787E
      5C00919A6C00ABB67F00C5D49300DFEFA500F0FFBB00F4FFCD00F3FFC800EDFE
      AE004D53380048474B0087878700808080008080800080808000808080008080
      8000808080008080800080808000808080008686880037363A0050573900F0FF
      B30079815F00646A4F007C835F00969F6F00B5C18600D6E59D00F1FFB700F9FF
      D400FBFFD800F5FFCA00EAFBAB00D7E49E00393D2A003E3D4100888888008080
      8000808080008080800080808000808080008080800080808000878787004849
      4C00484C3300BAC68B00AEBA8100A9B47F00A3AF7C009EA8770097A27200939C
      6E008A926800838A6400858E66009EA87700CAD79400F7FFB700FFFCEC00FEFF
      E200F3FFC800EFFFB200E4F4A800D9E8A000C7D5920030322300626062008484
      84008080800080808000828282007A7A7C002B2B2B002B2F1E008A926600C0CF
      9000C2CF9000C1CE8F00C3D29100C9D79400CEDC9800D1E09A00D6E39D00D9E8
      A000DCECA000DEEDA300E2F2A600E6F6A800EAFBAB00EDFEAE00F0FFB100EFFF
      B500F1FFB700F1FFB900F0FFBB00FBFFD800C0CB8C001D1F17005F5D5F008585
      85008080800080808000808080008080800087878700343436004F553A00727A
      5A004347380032342C0031332B0033352B003A3D32004B4F3C005E664B007881
      5B00939C6E00AFBB8000C9D99500E5F6A400F4FFC400F9FFD400F8FFD200F3FF
      C700656D4B0036353B0088888800808080008080800080808000808080008080
      800080808000808080008080800080808000838383007775770012121200BCC7
      8600B4C087005F654C00787F5B00939C6E00B5C18600D9E8A000F2FFC200FDFF
      D900FDFFD900F3FFC400E9FAAA0098A26F001210120078787800838383008080
      8000808080008080800080808000808080008080800080808000888888003736
      3A005F654500C8D59400B7C38800B2BE8300ACB78000A3AF7C009DA6760098A3
      7300A2AC7900B9C78A00DFEEA400F5FFC800FCFFD700FAFFD500F8FFD200FFFE
      E400FDFFDD00F0FFBD00E9F9AB00DDEDA300D4E39D00484C33004D4C50008787
      870080808000808080008080800082828200828282004A484A0013131300494D
      3400A4B17C00C6D19200C0CD8E00C0CF8E00C5D29100C9D79400CDDB9700CEDE
      9A00D2E19B00D6E39D00D8E9A100DDEDA300E1F1A500E4F4A800E7F7A900EBFA
      AA00EBFCAC00EFFFB000F2FFBF00F1FFC200F2FFBA00535B3900343337008989
      890080808000808080008080800081818100828282002B2D2B00646A4A00727A
      58003D4035002A2B2700383B3000575E4700838C6400A9B47F00C4D09300D9E4
      A100E7EEAD00F0F6B700F5FAC100F9FFCD00FBFFDC00FFFFDE00FDFFD800F6FF
      D100838E60002D2C300085858500808080008080800080808000808080008080
      80008080800080808000808080008080800080808000888888003E3D43004448
      2F00DBEAA2006E755700717757008E986C00B3BF8600DCECA200F5FFCB00FFFC
      DD00FDFFD900F0FFBB00DBEAA000373C27004040420088888800808080008080
      8000808080008080800080808000808080008080800080808000848484002E2C
      2E007F895D00CEDC9800BFCC8D00B7C58800B4C08500B2BE8500B9C58A00CBDB
      9700E5F5A900F1FFC100F5FFCD00F6FFCB00F3FFCB00F4FFC900F3FFC500F4FF
      C200FDFFD900FCFFD500EFFFB000E2F2A600E1F0A6005E66440038373D008888
      8800808080008080800080808000808080008181810088888800727274002D2E
      3100191B13006E755100B8C68900C2CF9000BCCA8D00C1CE8D00C4D19000C7D5
      9200CAD79400CDDB9700D1DF9B00D5E49C00D8E79F00DBEBA100E0EFA500E9F9
      AB00EEFFAE00DCEBA100A7B27B006168440027281D00262826006C6E6E008383
      8300808080008080800080808000828282007D7D7D002323210079825A006D74
      56004C503F007F866200BECD8E00E6F6A800F3FFC000F5FFCF00F8FFD300FAFF
      D500FAFFD500F9FFD600F8FFD700FAFFDA00FAFFDF00FEFFE900FFFCE900FBFF
      D800A6B27700252523007F7F7F00818181008080800080808000808080008080
      80008080800080808000808080008080800080808000828282007B7B7B001212
      1400A4AF78009FA97800696E51008A946800B4C08500E1F1A300F9FFD400FFF9
      E100FAFFD700F0FFB80096A26F00111113007A7A7A0082828200808080008080
      80008080800080808000808080008080800080808000828282007D7D7D002424
      2200A5B07900D4E39D00CBD99600C9D79400C8D59400CFDE9800DCECA200E8F8
      AA00EFFEAE00EFFFB300EFFFB800F1FFB900F0FFBB00F1FFBA00F1FFB700EFFF
      B200EEFFAE00FBFFC900F8FFCA00E8F9A900E5F5A9007A8458002E2D31008585
      8500808080008080800080808000808080008080800080808000838383008686
      86005E5C5E001A181A0030342300919A6C00BECC8F00BDC98C00BAC88B00BCCA
      8D00C1CE8F00C3D29100C9D79400CEDC9800D7E69E00DDECA400D2E19900A3B0
      790061694700282B20001E1E1E0038373D006565670080808000838383008080
      800080808000808080008080800082828200767678001C1D1900959F6E0098A3
      7300B9C78A00E2F2A400E9FAAA00EAFAAC00EEFFAE00EFFFB500F1FFBA00F1FF
      BE00F2FFC000F2FFC200F2FFC200F0FFBE00F1FFB900F0FFB800F6FFC600FFFF
      DD00CCDA96001A1C1A007A787A00828282008080800080808000808080008080
      8000808080008080800080808000808080008080800080808000878787004845
      4B00383B2600BFCB8E006B725400838C6400B1BC8300E3F5A700FEFFDA00FFF9
      E300F8FFD100E0F2A40034382500434345008888880080808000808080008080
      8000808080008080800080808000808080008080800082828200757577002122
      1C00D3E29A00D9E89E00C9D79400C5D29100CAD89500D1E09A00D8E79F00DDEC
      A200E2F2A600E6F6A800EBFAAA00E9FCAC00EAFAAC00EAFAAC00E9F9AB00E7F7
      A900E4F4A600DFF1A300F2FFB600F1FFBC00E6F6AA009AA67300252525007E7E
      8000818181008080800080808000808080008080800080808000808080008181
      8100868686007E7E7E00424042001314100050563B00A9B47D00BCCA8D00B6C4
      8700BAC68900C2CF9000CAD79600C2CF90009DA87300606846002B2E21001D1D
      1B0036353900636163007E7E7E00888888008484840081818100808080008080
      80008080800080808000808080008484840068686A00292C2100BDCA8B00C6D3
      9200D1DF9B00D5E29C00D9E99F00DFEEA400E4F4A800E8F8AA00ECFDAD00EFFE
      AE00EDFFB000EFFFB000EFFFB000EEFFAE00EEFDAD00E9F9AB00E5F5A700EEFD
      AD00E4F2A60024261C006E6D7100838383008080800080808000808080008080
      8000808080008080800080808000808080008080800080808000828282007F7F
      7F0017151700899464008E966C0079805C00ADB98000E8F8AA00FFFBDF00FFF9
      E400F6FFD00096A26F00131313007B7B7B008282820080808000808080008080
      800080808000808080008080800080808000808080008282820077777900191A
      16008F986800BDC98C00BAC68900BDCA8B00C3D08F00C9D69300CEDC9800D4E3
      9B00D8E79F00DCEBA100DEEDA300DFEEA400E0F0A400DFEEA400DDECA400DDED
      A100DAE9A100D5E49E00D2E19B00E4F4A800EFFFB300BECB8A001D1E1A007979
      7900828282008080800080808000808080008080800080808000808080008080
      80008080800082828200888888006E6E6E00272729001D1F1500747D5500B3BF
      8600B4C08500939E6E005D6343002D2F20001B1B1B00333437005D5D5F007D7D
      7D00878787008585850081818100808080008080800080808000808080008080
      8000808080008080800080808000858585005A595D0044493200BFCB8E00BFCB
      8E00C5D29100CADA9600D1DF9B00D5E69E00DBEAA000DFEFA300E2F2A600E5F3
      A700E4F4A800E4F4A800E4F4A600E5F3A700E2F2A600E2F0A400DDECA200DBEB
      A100DAE99F003C412E00605F6300848484008080800080808000808080008080
      8000808080008080800080808000808080008080800080808000808080008787
      8700505052002B2E2100A1AD7A00747C5A00A7B27D00EDFCAC00FFFAE600FFFB
      E300ECFDAB003136230046454900888888008080800080808000808080008080
      8000808080008080800080808000808080008080800081818100848484005555
      55000F110F00494F3600A3AE7900BFCB8E00BDCA8B00BFCC8D00C3D09100C7D7
      9400CDDB9700D0DE9A00D2E19B00D4E39B00D3E29C00D3E29C00D3E29A00D0DF
      9900CDDD9900CBDB9700CAD79400C5D29100DBEBA100E0F0A4002A2B20006B6B
      6D00838383008080800080808000808080008080800080808000808080008080
      8000808080008080800080808000858585008484840055555700161618003436
      27002F32250019191900302F330059595B007B7B7B0087878700858585008181
      8100808080008080800080808000808080008080800080808000808080008080
      8000808080008080800080808000858585005C5C5E00373B2A00B6C28700B7C5
      8800BDCA8B00C2CF9000C7D49300CCDA9700CEDE9A00D3E29C00D7E49E00D8E7
      9F00D9E8A000D9E6A000D9E89E00D8E79F00D7E69E00D6E39D00D4E19B00D2E1
      9B00CEDC98003034250063636500848484008080800080808000808080008080
      8000808080008080800080808000808080008080800080808000808080008181
      8100808280001B1A1E0070775100848D65009EA87500F0FCB000FFFBEB00FFFB
      E20099A66F00121214007D7B7D00828282008080800080808000808080008080
      8000808080008080800080808000808080008080800080808000808080008686
      8600717171002D2B2D001C1C14006C755100B4C08700BBC98C00B8C68900BECB
      8C00C2CF8E00C4D19200C7D59200C8D69300C9D69300C8D59400C5D49300C6D3
      9200C6D49100C4D39200C7D69500C4D19000B2BE8500939D6A001D1F15006C6C
      6E00838383008080800080808000808080008080800080808000808080008080
      8000808080008080800080808000808080008181810087878700787878004C4A
      4C00545456007977790086868600868686008282820080808000808080008080
      8000808080008080800080808000808080008080800080808000808080008080
      80008080800080808000808080008383830075737500141511008D986800B9C7
      8A00B4C08700B9C58800BBC98C00C1CE8F00C5D29100C6D59400CBD99600CCDA
      9600CDDB9800CDDC9600CDDB9800CCDA9700CBD99600CAD89500C9D79400D3E1
      9D00929B6B001414140078787A00828282008080800080808000808080008080
      8000808080008080800080808000808080008080800080808000808080008080
      80008787870059595900212419008A926800949D6F00EFF9B300FFFCF100F8FF
      C0002F34210049484C0087878700808080008080800080808000808080008080
      8000808080008080800080808000808080008080800080808000808080008080
      800084848400868686005B5B5D001A1A1A00303223008D966800B7C58A00B7C3
      8800B6C28700B9C58800B9C78A00BCC88B00BBC98C00BFCC8D00C0CF8E00C6D4
      9100BDCA8B00A5B27B00777E5600464C330020221A001C1C1C004E4E4E008183
      8100818181008080800080808000808080008080800080808000808080008080
      8000808080008080800080808000808080008080800080808000828282008787
      8700868686008282820080808000808080008080800080808000808080008080
      8000808080008080800080808000808080008080800080808000808080008080
      80008080800080808000808080008080800086868600464648001B1F150096A0
      6F00B9C58A00B3BF8600B3C18600B7C38800B9C78A00BCCB8C00BECD8C00C1CE
      8F00C2CF8E00C2CF9000C0CF9000C1CE8F00C1CE8F00C3D09100C8D7960099A3
      72001A1A12005250520086868600808080008080800080808000808080008080
      8000808080008080800080808000808080008080800080808000808080008080
      800081818100848484002121230053593E00939E6E00EDF5B600FFFDF7009FA9
      7400141214007E7E7E0082828200808080008080800080808000808080008080
      8000808080008080800080808000808080008080800080808000808080008080
      80008080800081818100878787007E7E7E0042404200131311004C5237009EA8
      7700B3BF8600AFBA8300B1BD8400B8C48900BAC68900AEBA8100909B6B006268
      4600363A27001A1B15002424260040404200666668007E7E7E00858585008080
      8000808080008080800080808000808080008080800080808000808080008080
      8000808080008080800080808000808080008080800080808000808080008080
      8000808080008080800080808000808080008080800080808000808080008080
      8000808080008080800080808000808080008080800080808000808080008080
      8000808080008080800080808000808080008181810086868600414143001417
      1100656B4B00A3AE7900B5C18600B5C38800B3C18600B4C08700B5C38800B6C4
      8900B8C68900BAC68900BDCA8B00C1CE8F00BECA8D00A8B37E00606646001413
      10004C4B4F008787850081818100808080008080800080808000808080008080
      8000808080008080800080808000808080008080800080808000808080008080
      800080808000868686005F5F610017181200828C6200ECF1BA00FEFFDF003034
      21004B4A4E008787870080808000808080008080800080808000808080008080
      8000808080008080800080808000808080008080800080808000808080008080
      800080808000808080008080800082828200888888006D6D6F002A282A001A1B
      150069714F00A2AD78009BA57400767F59004A503700272A1D001A1A1A002E2D
      31004F4E52007171730082828200888888008484840081818100808080008080
      8000808080008080800080808000808080008080800080808000808080008080
      8000808080008080800080808000808080008080800080808000808080008080
      8000808080008080800080808000808080008080800080808000808080008080
      8000808080008080800080808000808080008080800080808000808080008080
      8000808080008080800080808000808080008080800081818100868686005E5E
      5E00212121001F211900474D34006E7551008B9668009CA87500A0AD7800A4AF
      7A00A4AF7A00A0AA77008D9668006C754F00434831001A1D1700252527006666
      6600868686008080800080808000808080008080800080808000808080008080
      8000808080008080800080808000808080008080800080808000808080008080
      80008080800080808000848486002727290040452E00F1F8C100B0B18B001313
      15007F7F7F008282820080808000808080008080800080808000808080008080
      8000808080008080800080808000808080008080800080808000808080008080
      8000808080008080800080808000808080008080800084848400858585005957
      59001919190028291E001C1D17002020200039383C005D5D5F007A7A7A008484
      8600878787008383830081818100808080008080800080808000808080008080
      8000808080008080800080808000808080008080800080808000808080008080
      8000808080008080800080808000808080008080800080808000808080008080
      8000808080008080800080808000808080008080800080808000808080008080
      8000808080008080800080808000808080008080800080808000808080008080
      8000808080008080800080808000808080008080800080808000808080008686
      860081818100626264003C3B3F00292929001D1F1D001C1D190022241C002527
      1D0021231B001C1D1900202020002B292B004140440068686A00838383008585
      8500808080008080800080808000808080008080800080808000808080008080
      8000808080008080800080808000808080008080800080808000808080008080
      8000808080008080800085858500686668000F100A00B2B69200383B2E004E4D
      5100878787008080800080808000808080008080800080808000808080008080
      8000808080008080800080808000808080008080800080808000808080008080
      8000808080008080800080808000808080008080800080808000818181008787
      87007A7A7A005E5E60006B6B6B007F7F7F008787870085858500828282008080
      8000808080008080800080808000808080008080800080808000808080008080
      8000808080008080800080808000808080008080800080808000808080008080
      8000808080008080800080808000808080008080800080808000808080008080
      8000808080008080800080808000808080008080800080808000808080008080
      8000808080008080800080808000808080008080800080808000808080008080
      8000808080008080800080808000808080008080800080808000808080008080
      8000818181008484840088888800828282007B7B7B007575770073717300716F
      710072727400777777007C7C7C00838383008888880084848400818181008080
      8000808080008080800080808000808080008080800080808000808080008080
      8000808080008080800080808000808080008080800080808000808080008080
      800080808000808080008080800085858500434343001B1B1900303030008181
      8100818181008080800080808000808080008080800080808000808080008080
      8000808080008080800080808000808080008080800080808000808080008080
      8000808080008080800080808000808080008080800080808000808080008080
      8000828282008585850083838300818181008080800080808000808080008080
      8000808080008080800080808000808080008080800080808000808080008080
      8000808080008080800080808000808080008080800080808000808080008080
      8000808080008080800080808000808080008080800080808000808080008080
      8000808080008080800080808000808080008080800080808000808080008080
      8000808080008080800080808000808080008080800080808000808080008080
      8000808080008080800080808000808080008080800080808000808080008080
      8000808080008080800080808000818181008282820082828200828282008383
      8300828282008282820081818100818181008080800080808000808080008080
      8000808080008080800080808000808080008080800080808000808080008080
      8000808080008080800080808000808080008080800080808000808080008080
      8000808080008080800080808000818181008282820078787800808080008181
      8100808080008080800080808000808080008080800080808000808080008080
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
  object ActorPopupImages: TImageList
    Left = 543
    Top = 316
    Bitmap = {
      494C01010E003800040010001000FFFFFFFFFF10FFFFFFFFFFFFFFFF424D3600
      0000000000003600000028000000400000004000000001002000000000000040
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000969898008F8F8F00929292008F8F8F0082828200909090000000
      000000000000000000000000000000000000000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FFEBEBE800EBEBE800000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000008F8F
      8F0075767600000000000000000000000000D1D1D10084848400BCBCBC009A9A
      9A00A0A0A000000000000000000000000000000000FF000000FF000000FF0000
      00FF000000FF000000FFA6ACA600A4AAA10096B8BF0096C1CB00000000FF0000
      00FF000000FF000000FF000000FF000000FF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000008A8A8A006666
      6600000000000000000000000000000000008A8A8A0000000000000000000000
      0000D8D8D800898989000000000000000000000000FF000000FF000000FF0000
      00FF000000FF000000FF9694860096948600B1AFA200B1AFA200000000FF0000
      00FF000000FF000000FF000000FF000000FF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000A0A0A000D8D8D8009696
      9600000000000000000000000000000000009F9F9F0000000000000000000000
      000000000000D8D8D800A1A1A10000000000000000FF000000FF000000FF0000
      00FF000000FF000000FF9694860096948600B1AFA200B1AFA200000000FF0000
      00FF000000FF000000FF000000FF000000FF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000009B9B9B00000000000000
      0000A2A2A2000000000000000000C7C7C700CECECE0000000000000000000000
      0000BCBCBC009B9B9B007A7A7A0000000000000000FF000000FF000000FF0000
      00FF000000FF000000FF9BA8A5009DAAA8008CBDCD008AC3CE00000000FF0000
      00FF000000FF000000FF000000FF000000FF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000009A9A9A0000000000000000000000
      0000B2B2B200C5C5C50000000000ADADAD00E0E0E00000000000B9B9B9008686
      8600D3D3D300000000008E8E8E0090909000000000FF000000FF000000FF0000
      00FF000000FF81C9F7001497F1001598F20011BBF00013B9EF0045C5F3000000
      00FF000000FF000000FF000000FF000000FF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000008080800000000000000000000000
      000000000000ADADAD00B4B4B400B5B5B500DEDEDE0088888800C7C7C7000000
      00000000000000000000000000008C8C8C00000000FF000000FF000000FF0000
      00FFC6E6FA00139AF0001793EF00129CF3000FC4F10015B0EE000FC3F1009DDE
      F700000000FF000000FF000000FF000000FF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000004646460000000000000000000000
      00000000000000000000CBCBCB005E5E5E005959590000000000000000000000
      000000000000000000000000000093939300000000FF000000FF000000FF0000
      00FF39AAF200129CF3001793EF00129CF3000FC4F10015B0EE000FC4F10014BE
      EF00000000FF000000FF000000FF000000FF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000008F8F8F008D8D8D0098989800A9A9
      A9009C9C9C009292920099999900575757005E5E5E009A9A9A008C8C8C00A0A0
      A00000000000000000000000000091919100000000FF000000FF000000FFA7D9
      F900129CF3001497F1001498F200129CF3000FC4F10011BCF00012B8EF000FC4
      F10070D1F500000000FF000000FF000000FF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000009494940000000000000000000000
      000000000000000000000000000092929200A5A5A50000000000000000000000
      000093959500A6A6A600000000008C8C8C00000000FF000000FF000000FF6ABF
      F600129CF3001791EF001890EE001694EF0014B0EE0016A9EC0015ACEE000FC4
      F10030C0F000000000FF000000FF000000FF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000009D9D9D0000000000000000000000
      00000000000000000000ACACAC00D8D8D8000000000093939300000000000000
      000000000000C0C0C000A9AAAA0096989800000000FF000000FF000000FF6DC1
      F600129CF3001695F0001694EF001890EE0016A9EC0014B0EE0014B4EE000FC4
      F10033C0F100000000FF000000FF000000FF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000009E9E9E00000000000000
      000000000000000000009A9A9A00000000000000000096969600000000000000
      000000000000000000003636360000000000000000FF000000FF000000FFA6D8
      F900129CF300129CF300129CF300129CF3000FC4F1000FC4F1000FC4F1000FC4
      F1006ED0F600000000FF000000FF000000FF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000009E9E9E00CDCDCD000000
      00000000000081818100000000000000000000000000AEAEAE00000000000000
      000000000000D3D3D3008E8E8E0000000000000000FF000000FF000000FF0000
      00FF33A8F200129CF300129CF300129CF3000FC4F1000FC4F1000FC4F10013BD
      EF00000000FF000000FF000000FF000000FF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000006A6A6A006D6D
      6D009F9F9F0000000000000000000000000000000000C0C0C000D3D3D3000000
      0000DBDBDB00888888000000000000000000000000FF000000FF000000FF0000
      00FFDAEEFB0032A8F200129CF300129CF3000FC4F1000FC4F10012BDEF00BDE8
      F900000000FF000000FF000000FF000000FF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000009E9E
      9E009C9C9C000000000000000000000000000000000082828200000000009C9C
      9C009E9E9E00000000000000000000000000000000FF000000FF000000FF0000
      00FF000000FF000000FFA0D6F8006BC0F60030C0F00065CEF500000000FF0000
      00FF000000FF000000FF000000FF000000FF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000009A9A9A0092929200969696006A6A6A00696969009B9B9B000000
      000000000000000000000000000000000000000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000CECECE00BEBEBE00BBBBBB00BBBC
      BC00BBBCBC00BBBCBC00BBBBBB00BEBEBE00BEBEBE00BEBEBE00BEBEBE00BEBE
      BE00BEBEBE00BEBEBE00BEBEBE00CECECE000000000000000000000000000000
      000000000000000000000000000000000000CAE6B8007ABF4700AFDA90000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000D0C7D600A69FBC00A5A5C400A4A4
      C100A4A4C100A4A4C100A4A4C100A4A4C100A5A5C400A6A6C500A6A6C500A6A6
      C500A6A6C500A6A6C500AA98B300000000006E6E6E00BEBEBE00BEBEBE005D5D
      5D00BBBCBC00BBBCBC005D5D5D00BBBBBB00BEBEBE005E5E5E00BEBEBE00BEBE
      BE005E5E5E00BEBEBE00BEBEBE006E6E6E000000000000000000000000000000
      0000000000000000000000000000C8E5B4006CBD310071CC2E006AC12B00A7D5
      8600000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000ECEBEF00AC8EA800A3A5C300A2A4
      C200A0A2C000A0A2C000A0A2C000A0A2C000A0A2C000A2A4C200A3A5C300A3A5
      C300A3A5C300A389A600D0C6D500000000006E6E6E00BEBEBE00BEBEBE005E5E
      5E00BBBBBB00BBBCBC005D5D5D00BBBCBC00BBBBBB005E5E5E00BEBEBE00BEBE
      BE005E5E5E00BEBEBE00BEBEBE006E6E6E000000000000000000000000000000
      00000000000000000000C8E5B4006CBD310088D25100DCEACD00A0D974006CC4
      2E00ACD88B000000000000000000000000000000000000000000D3D0CB009F96
      8C009E948B009E948B008C8175009E948B009E948B008E837800A1958C00A195
      8C00A1958C00D3D0CB00000000000000000000000000C0AEC3009EA7C700C6AA
      B100C2A7AF00C9ACB300C0A5AC00B28B9D00C9ACB300C9ACB300CCAEB500CDAF
      B600B293A700A5A2BF0000000000000000006E6E6E008E8E8E008E8E8E00BEBE
      BE008E8E8E008B8B8B00BBBCBC008B8B8B008B8B8B00BBBBBB008E8E8E008E8E
      8E00BEBEBE008E8E8E008E8E8E006E6E6E000000000000000000000000000000
      000000000000C7E4B1006EBE320088D25100E7EDDD00ECEBE600F0F0EA00A1D9
      75006EC32D00ADD88D0000000000000000000000000000000000A69D94000000
      00000000000000000000A29992000000000000000000A39A9100000000000000
      000000000000A69D9400000000000000000000000000C0AEC300A1A0BE00FCE6
      CB00F9DFBB00FCEBD400F8E6CC00C9A5A700FAEBDA00FAEBDA00FAECDA00FEEF
      DD00C8A9B100A5A2BF0000000000000000006E6E6E008E8E8E008E8E8E00BEBE
      BE008E8E8E008E8E8E00BBBBBB008B8B8B008B8B8B00BBBCBC008B8B8B008E8E
      8E00BEBEBE008E8E8E008E8E8E006E6E6E000000000000000000000000000000
      0000C8E5B4006EBD330088D25100E7EDDD00E6E4E000D5D3CD00F1F0EB00F0F0
      EA00A1D975006EC42E00AAD88B00000000000000000000000000A69D94000000
      00000000000000000000A39A91000000000000000000A2999200000000000000
      000000000000A69D9400000000000000000000000000C0AEC300A1A0BE00FAE0
      BF00FBE4C700FDF1E200FEF2E300C9A3A400F9E8D300FAEBDA00FAEBDA00FAEC
      DA00C7A7B000A5A2BF0000000000000000006E6E6E00BEBEBE00BEBEBE005E5E
      5E00BEBEBE00BEBEBE005E5E5E00BBBBBB00BBBCBC005D5D5D00BBBCBC00BBBB
      BB005E5E5E00BEBEBE00BEBEBE006E6E6E00000000000000000000000000C6E3
      B0006DBE330088D25100E7EDDD00E6E5E100D5D2CD00EFEEEB00E0DED900E7E4
      E000F0F0EA00A1D975006CC42E00B8DE9D000000000000000000A69D94000000
      00000000000000000000A59D94000000000000000000A2999200000000000000
      000000000000A69D9400000000000000000000000000C0AEC300A1A0BE00F9DE
      BB00FCE6CB00FBE8CE00FDEDD800CDAAAE00F6E0C300FAEBDA00FAEBDA00FAEB
      DA00C4A5AE00A4A1BF0000000000000000006E6E6E00BEBEBE00BEBEBE005E5E
      5E00BEBEBE00BEBEBE005E5E5E00BEBEBE00BBBBBB005D5D5D00BBBCBC00BBBC
      BC005D5D5D00BEBEBE00BEBEBE006E6E6E000000000000000000C7E3B0006CBC
      310089D35100E7EDDD00E6E5E100D5D2CD00EFEEEB00E0DFD900DAD7D200DBD9
      D400E8E7E200EBEEE20073CD3000A1DA7A00000000000000000093887F00ABA3
      9B00ABA39B00ABA39B007C6F6300AAA39B00A8A299007C6F6300A8A29900A8A2
      9900A8A2990092887F00000000000000000000000000C0AEC300A1A0BE00F9DE
      BB00FAE0BF00FBE4C700FBE2C400CFAEB500F9E0BF00F9E9D300FAEBDA00FAEB
      DA00C4A5AE00A39FBD0000000000000000006E6E6E008E8E8E008E8E8E00BEBE
      BE008E8E8E008E8E8E00BEBEBE008E8E8E008E8E8E00BBBBBB008B8B8B008B8B
      8B00BBBCBC008B8B8B008E8E8E006E6E6E0000000000C7E4B2006EBD330088D2
      5100E7EDDD00E6E5E100D5D2CD00EFEEEB00E0DFD900DAD7D200DCDAD500DFDD
      D700EFEFE9009BD86E0079CE3B00E6F5DC000000000000000000A69D94000000
      00000000000000000000A69D94000000000000000000A39A9100000000000000
      000000000000A39A9100000000000000000000000000C0AEC300A1A0BE00F9DE
      BB00F9DEBB00FCE6CB00F9DFBB00CEACB100FDEAD000FAE3C500FAECDA00FAEB
      DA00C4A5AE00A39FBC0000000000000000006E6E6E008E8E8E008E8E8E00BEBE
      BE008E8E8E008E8E8E00BEBEBE008E8E8E008E8E8E00BEBEBE008B8B8B008B8B
      8B00BBBCBC008B8B8B008B8B8B006E6E6E00DEEED1006EBD330071CC2E00BBE0
      9B00F1F0EB00DAD8D300F0EFEA00E0DFD900DAD7D200DCDAD500DFDDD700EFEF
      E9009BD86E0079CE3B00E3F4D600000000000000000000000000A69D94000000
      00000000000000000000A69D94000000000000000000A59D9400000000000000
      000000000000A2999200000000000000000000000000C0AEC300A1A0BE00C9A2
      A200C9A2A200CAA3A400CAA4A800B4879900CCAAB200D0ABA800EAD3C800CFB0
      B500C4A5AE00A39FBC0000000000000000006E6E6E00BEBEBE00BEBEBE005E5E
      5E00BEBEBE00BEBEBE005E5E5E00BEBEBE00BEBEBE005E5E5E00BEBEBE00BBBB
      BB005D5D5D00BBBCBC00BBBCBC006D6D6D00BBE19D0071CC2E0071CC2E0078CE
      3800D5E8C200F1F0EC00E2E0DC00DBD8D300DCDAD500DFDDD700EFEFEA009ED9
      71007ACE3C00E3F3D7000000000000000000000000000000000092877C00A195
      8C00A1958C00A1958C0076685A00A1958C00A1958C0076685A009F968C009E94
      8B009E948B0090857B00000000000000000000000000C0AEC300A1A0BE00F9DE
      BB00F9DEBB00F9DEBB00FCEAD300CCA5A400FDECD500FDEAD000FCEAD300FEEF
      DD00C4A5AE00A39FBC0000000000000000006E6E6E00BEBEBE00BEBEBE005E5E
      5E00BEBEBE00BEBEBE005E5E5E00BEBEBE00BEBEBE005E5E5E00BEBEBE00BEBE
      BE005D5D5D00BBBCBC00BBBCBC006D6D6D00C6E7AC0071CC2E0071CC2E0071CC
      2E0078CE3800D5E8C200EFEDE900DFDCD800DFDCD800EFEFEA009ED9710078CC
      3900E0F3D2000000000000000000000000000000000000000000A69D94000000
      00000000000000000000A69D94000000000000000000A69D9400000000000000
      000000000000A2999200000000000000000000000000C0AEC300A1A0BE00F9DE
      BB00F9DEBB00F9DEBB00FCEBD500CEAAAC00FBE2C400FFF0DD00FAE1C000FEED
      D700C7A7B000A39FBD0000000000000000006E6E6E008E8E8E008E8E8E00BEBE
      BE008E8E8E008E8E8E00BEBEBE008E8E8E008E8E8E00BEBEBE008E8E8E008E8E
      8E00BEBEBE005D5D5D00BBBCBC00CACBCB00C8E8AE0071CC2E0089D2520089D3
      540071CC2E0078CE3800D5E8C200EFEFEB00EFEFEA009ED9710078CD3B00E1F3
      D400000000000000000000000000000000000000000000000000A69D94000000
      00000000000000000000A69D94000000000000000000A69D9400000000000000
      000000000000A39A9100000000000000000000000000C0AEC300A1A0BE00E8C8
      B300E8C8B300D7B3AA00D7B3AA00CEA9AC00E8C9B300EBD4C800DABBB700D9B7
      B000C8A8B100A4A1BF0000000000000000006E6E6E008E8E8E008E8E8E00BEBE
      BE008E8E8E008E8E8E00BEBEBE008E8E8E008E8E8E00BEBEBE008E8E8E008E8E
      8E00BEBEBE007E7E7E000000000000000000C8E9B00087D35000000000000000
      000089D3540071CC2E0078CE3800C5E3AB009AD76A0079CC3A00E1F3D3000000
      0000000000000000000000000000000000000000000000000000A69D94000000
      00000000000000000000A69D94000000000000000000A69D9400000000000000
      000000000000A59D9400000000000000000000000000C0AEC3009EA7C700BDA0
      AA00BDA0AA00BDA0AA00BDA0AA00AF869B00C0A3AC00C0A3AC00C8A7B000BEA1
      AA00B08FA500A5A2BF0000000000000000006E6E6E00BEBEBE00BEBEBE005E5E
      5E00BEBEBE00BEBEBE005E5E5E00BEBEBE00BEBEBE005E5E5E00BEBEBE00BEBE
      BE00BEBEBE00DEDEDE000000000000000000CAE9B10084CE4C00000000000000
      000081CC4A0071CC2E0071CC2E0071CC2E0078CC3900E0F3D200000000000000
      0000000000000000000000000000000000000000000000000000D7D3CF00ABA3
      9B00ABA39B00ABA39B00978D8400ABA39B00ABA39B00978D8400ABA39B00ABA3
      9B00ABA39B00D7D3CF00000000000000000000000000B393AC00A49DBB00A49D
      BB00A49DBB00A49DBB00A49DBB00A49DBB00A49DBB00A49DBB00A49DBB00A49D
      BB00A49DBB00A686A300EAE0E700000000006D6D6D00BEBEBE00BEBEBE005E5E
      5E00BEBEBE00BEBEBE005E5E5E00BEBEBE00BEBEBE006E6E6E00000000000000
      000000000000000000000000000000000000E3F4D60070C92D006EBA36006DB8
      330070CA2E0071CC2E0071CC2E0078CC3900DFF2D20000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000CACBCB00BBBBBB00BEBEBE00BEBE
      BE00BEBEBE00BEBEBE00BEBEBE00BEBEBE00BEBEBE00CECECE00000000000000
      00000000000000000000000000000000000000000000E3F4D600CEECB700CEEC
      B700CEECB700CEECB700CFECB900000000000000000000000000000000000000
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
      2800000040000000400000000100010000000000000200000000000000000000
      000000000000000000000000FFFFFF00F81FFE7F00000000E707FC3F00000000
      CF73FC3F000000008F79FC3F00000000B671FC3F000000007244F81F00000000
      781EF00F000000007C7EF00F00000000000EE007000000007E72E00700000000
      7CB8E00700000000BDBDE007000000009BB9F00F00000000C793F00F00000000
      E7A7FC3F00000000F81FFFFF00000000FFFF0000FF1FFFFF00010000FE0FFFFF
      00010000FC07C00380030000F803DDBB80030000F001DDBB80030000E000DDBB
      80030000C000C003800300008000DDBB800300000001DDBB800300000003C003
      800300000007DDBB80030000000FDDBB80030003301FDDBB80030003303FC003
      8001003F007FFFFFFFFF003F81FFFFFF00008000FFFF1FFC7FEE000087FF1FFC
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
    object br_ActorBrowser: TAction
      Category = 'Browsers'
      Caption = 'Actor Class Browser'
      ShortCut = 16496
      OnExecute = br_ActorBrowserExecute
    end
    object file_NewMap: TAction
      Category = 'File'
      Caption = 'New...'
      OnExecute = file_NewMapExecute
    end
    object file_OpenMap: TAction
      Category = 'File'
      Caption = 'Open...'
      OnExecute = file_OpenMapExecute
    end
    object file_SaveCurrentMap: TAction
      Category = 'File'
      Caption = 'file_SaveCurrentMap'
      ShortCut = 115
    end
    object file_SaveCurrentMapAs: TAction
      Category = 'File'
      Caption = 'file_SaveCurrentMapAs'
    end
    object file_Import: TAction
      Category = 'File'
      Caption = 'file_Import'
    end
    object file_Export: TAction
      Category = 'File'
      Caption = 'file_Export'
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
      Hint = 'Add'
      ShortCut = 16449
      OnExecute = brushAddExecute
    end
    object brushSubtract: TAction
      Category = 'Brush'
      Caption = 'Subtract'
      Hint = 'Subtract'
      ShortCut = 16467
      OnExecute = brushSubtractExecute
    end
    object brushIntersect: TAction
      Category = 'Brush'
      Caption = 'Intersect'
      Hint = 'Intersect'
      OnExecute = brushIntersectExecute
    end
    object brushDeintersect: TAction
      Category = 'Brush'
      Caption = 'Deintersect'
      Hint = 'Deintersect'
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
      OnExecute = edit_SelectOfEventExecute
    end
    object edit_SelectOfTag: TAction
      Category = 'Edit_Select'
      Caption = 'Select All Actors with same Tag (%s)'
      ImageIndex = 10
      OnExecute = edit_SelectOfTagExecute
    end
    object edit_SelectOfAttachTag: TAction
      Category = 'Edit_Select'
      Caption = 'Select All Actors with same AttachTag (%s)'
      OnExecute = edit_SelectOfAttachTagExecute
    end
    object edit_SelectOfBindName: TAction
      Category = 'Edit_Select'
      Caption = 'Select All Actors with same BindName (%s)'
      OnExecute = edit_SelectOfBindNameExecute
    end
    object edit_SelectOfBarkBindName: TAction
      Category = 'Edit_Select'
      Caption = 'Select All Actors with same BarkBindName (%s)'
      OnExecute = edit_SelectOfBarkBindNameExecute
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
    object view_Log: TAction
      Category = 'View'
      Caption = 'Log Window'
      ShortCut = 114
      OnExecute = view_LogExecute
    end
    object view_ActorSelectedProperties: TAction
      Category = 'View'
      Caption = 'Actor Properties'
      ShortCut = 115
      OnExecute = view_ActorSelectedPropertiesExecute
    end
    object view_surf_Properties: TAction
      Category = 'View'
      Caption = 'Surface properties'
      ShortCut = 116
      OnExecute = view_surf_PropertiesExecute
    end
    object br_MasterBrowser: TAction
      Category = 'Browsers'
      Caption = 'Master Browser'
      ShortCut = 16498
      OnExecute = br_MasterBrowserExecute
    end
    object br_MeshBrowser: TAction
      Category = 'Browsers'
      Caption = 'Mesh Browser'
      ShortCut = 16499
      OnExecute = br_MeshBrowserExecute
    end
    object br_MusicBrowser: TAction
      Category = 'Browsers'
      Caption = 'Music Browser'
      ShortCut = 16500
    end
    object br_SoundBrowser: TAction
      Category = 'Browsers'
      Caption = 'Sound Browser'
      ShortCut = 16502
    end
    object br_TextureBrowser: TAction
      Category = 'Browsers'
      Caption = 'Texture Browser'
      ShortCut = 16503
      OnExecute = br_TextureBrowserExecute
    end
    object view_level_properties: TAction
      Category = 'View'
      Caption = 'Level properties'
      ShortCut = 117
      OnExecute = view_level_propertiesExecute
    end
    object view_DX_LevelinfoProperties: TAction
      Category = 'View'
      Caption = 'DeusExLevelInfo properties'
      ShortCut = 118
      OnExecute = view_DX_LevelinfoPropertiesExecute
    end
    object build_options: TAction
      Caption = 'Build options...'
      ShortCut = 119
      OnExecute = build_optionsExecute
    end
  end
  object SurfacePopup: TPopupMenu
    AutoHotkeys = maManual
    AutoLineReduction = maManual
    Images = ActorPopupImages
    MenuAnimation = [maNone]
    Left = 231
    Top = 472
    object Surfacepropertiessthselected1: TMenuItem
      Action = view_surf_Properties
    end
    object N25: TMenuItem
      Caption = '-'
    end
    object AddLighthere2: TMenuItem
      Caption = 'Add Light here'
      ImageIndex = 13
    end
    object AddcurrentClasshere1: TMenuItem
      Caption = 'Add <currentClass> here'
    end
    object AddCustom11: TMenuItem
      Caption = 'Add Custom 1'
    end
    object AddCustom21: TMenuItem
      Caption = 'Add Custom 2'
    end
    object AddCustom31: TMenuItem
      Caption = 'Add Custom 3'
    end
    object AddCustom41: TMenuItem
      Caption = 'Add Custom 4'
    end
    object AddCustom51: TMenuItem
      Caption = 'Add Custom 5'
    end
    object AddCustom61: TMenuItem
      Caption = 'Add Custom 6'
    end
    object N26: TMenuItem
      Caption = '-'
    end
    object AlighSelected1: TMenuItem
      Caption = 'Aligh Selected'
      object AlignAsFloorCeiling1: TMenuItem
        Caption = 'Align As Floor/Ceiling'
      end
      object AlignOneTile1: TMenuItem
        Caption = 'Align One Tile'
      end
      object N27: TMenuItem
        Caption = '-'
      end
      object N28: TMenuItem
        Caption = 'Align Wall Direction'
      end
      object AlignWallPanning1: TMenuItem
        Caption = 'Align Wall Panning'
      end
      object N29: TMenuItem
        Caption = '-'
      end
      object Unalignbacktodefault1: TMenuItem
        Caption = 'Unalign back to default'
      end
    end
    object ResetAllPanningScaleandAlign1: TMenuItem
      Caption = 'Reset All Panning, Scale and Align'
    end
    object N30: TMenuItem
      Caption = '-'
    end
    object Select1: TMenuItem
      Caption = 'Select'
      object Lotsofstuff1: TMenuItem
        Caption = 'Lots of stuff...'
      end
    end
    object SelectAllSurfaces1: TMenuItem
      Caption = 'Select All Surfaces'
    end
    object UnselectAllSurfaces1: TMenuItem
      Caption = 'Unselect All Surfaces'
    end
    object N32: TMenuItem
      Caption = '-'
    end
    object miApplySelectedTex: TMenuItem
      Caption = 'Apply <selected texture>'
    end
  end
  object AppEvents: TApplicationEvents
    OnIdle = AppEventsIdle
    OnShowHint = AppEventsShowHint
    Left = 148
    Top = 388
  end
  object OpenMapDlg: TOpenDialog
    Filter = 'Deus Ex Maps|*.dx|All files|*.*'
    FilterIndex = 0
    Options = [ofHideReadOnly, ofPathMustExist, ofFileMustExist, ofCreatePrompt, ofNoTestFileCreate, ofEnableSizing]
    Left = 735
    Top = 176
  end
  object ResizeTimer: TTimer
    Enabled = False
    Interval = 100
    OnTimer = ResizeFinished
    Left = 711
    Top = 328
  end
  object operationsImageList: TImageList
    Height = 30
    Width = 30
    Left = 195
    Top = 236
    Bitmap = {
      494C01010600080004001E001E00FFFFFFFFFF10FFFFFFFFFFFFFFFF424D3600
      0000000000003600000028000000780000003C00000001002000000000008070
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
      8000505050005050500050505000505050005050500050505000505050005050
      5000505050005050500050505000505050005050500050505000505050005050
      5000505050005050500050505000505050005050500050505000505050005050
      5000808080008080800080808000808080008080800080808000808080008080
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
      0000000000000000000000000000000000008080800080808000808080003F3F
      3F003F3F3F003F3F3F003F3F3F003F3F3F003F3F3F003F3F3F003F3F3F003F3F
      3F003F3F3F003F3F3F003F3F3F003F3F3F003F3F3F003F3F3F003F3F3F003F3F
      3F003F3F3F003F3F3F003F3F3F003F3F3F003F3F3F003F3F3F003F3F3F005050
      5000808080008080800080808000808080008080800080808000808080008080
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
      0000000000000000000000000000000000008080800080808000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000003F3F3F005050
      5000808080008080800080808000808080008080800080808000808080008080
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
      000000000000000000000000000000000000808080008080800000000000834C
      1300814C11007E4A12007C4A11007A481100774610007345100072400F006E41
      11006D3E0E00693F1000673B0F00663A0E0062390E005F370F005C340E005A33
      0E0058330C00562F0C00542F0C00522E0C00522E0C00000000003F3F3F005050
      5000808080008080800080808000808080008080800080808000808080008080
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
      0000000000000000000000000000000000008080800080808000000000007A48
      1900955A1D00935B1D0090561C008E571C008C531A0088521A0085511A00824E
      19007F4C18007D4A18007A4A17007747160074471500714516006F4314006B41
      15006A401400693F1300663D1400653C1300532F0D00000000003F3F3F005050
      5000808080008080800080808000828282008282820081818100818181008080
      8000808080008080800080808000808080008080800080808000808080008080
      8000808080008080800080808000808080008080800080808000808080008080
      8000808080008181810082828200838383008686860088888800858585008080
      8000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000008080800080808000000000007C4F
      1F00985D1E00955A1D00935B1D0091591B008D581B008A551A0088541A008452
      1900825019007F4C18007B4B1800794918007647170074451700714316006E44
      16006D4115006A3E1400683F1400663D140056310C00000000003F3F3F005050
      500080808000808080007E7E7E00767676007B7B7B0080808000848484008787
      8700888888008686860084848400828282008080800080808000808080008383
      83007171710067686B007E7E7E00808080008080800081818100868686008888
      880086868600818181007C7C7C00717171005C5C5C0047474700545454008383
      8300000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000008080800080808000000000008152
      24009C5E1E009A5C1C00975C1D0093581B0091591B008E571C008C551A008854
      1A0084521900824E19007F4C18007D4A1800794B160076471700744517007143
      16006F4314006C4214006A401400693E15005A330E00000000003F3F3F005050
      50008080800080808000717171000F0F0F0013131300202020002E2E2E003C3C
      3C004A4A4A005858580065656500757575008080800081818100858585005151
      5100361E1700784C3800686763007A797D00818181007A7A7A00565656004545
      4500343434002323230012121200070707000202020000000000353535008686
      8600000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000008080800080808000000000008458
      29009E601F009C5E1E00985D1E00000000000000000090581C00000000000000
      000088541A0000000000000000007F4C18000000000000000000764717000000
      0000000000006E4415006B4115006A4014005C340E00000000003F3F3F005050
      500080808000808080007F7F7F00424242002424240020202000171717000E0E
      0E000A0A0A0009090900030303003636360085858500828282003C3B38000000
      00002E0F0500AA6C540098543E006A605300787A7D00727072000D0D0D000000
      0000070707000C0C0C001212120016161600171717001B1B1B006E6E6E008484
      8400000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000008080800080808000000000008A5E
      2F00A0621F009E601F009C5E1E0000000000965B1C00935A1B0091591B008E54
      1A008B541B0088521A0084501900824E19007F4C18007D4A1800794918007647
      170000000000714316006F4314006D41150061360D00000000003F3F3F005050
      500080808000808080008383830076767600414141003F3F3F003F3F3F003C3C
      3C00393939003434340044444400777777007878780028221F00000000000000
      00002D100600B7715000B7745500AC6543007B5D46007A7A7A00707070002E2E
      2E001E1E1E00212121001E1E1E001C1C1C001313130042424200858585008080
      8000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000008080800080808000000000008D63
      3700A4631F00A1621E009E621D009C5E1E00985C1C00965B1C0093591D009159
      1B008E561A008A551A0088541A00854F1900825019007F4C18007D4A1800794B
      18007747160074471700714316006E44150063390D00000000003F3F3F005050
      5000808080008080800080808000848484005858580034343400383838003636
      360033333300303030005D5D5D0064646400130E0B0000000000000000000000
      00002F150200B7725100B77A5E00B7735200AC6D540091593F003D3C38000D0D
      0D00141414001717170017171700161616001D1D1D0074747400848484008080
      8000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000008080800080808000000000009369
      3D00A7672000A4651F00A1641E00000000009B5F1D00985D1E00965D1C00935A
      1B0091591B008E561A008A561C0088541A0084521900834F18007F4C18007D4A
      160000000000774716007445150071451600673D0E00000000003F3F3F005050
      5000808080008080800080808000828282007A7A7A003D3D3D002E2E2E003737
      37003C3C3C002A2A2C001A1A1A00030303000100000000000000000000002F12
      040088462B00A0593600AC654300B7795B00B7755600470F0000000000000404
      060019181C003E3E4000262626000B0B0B004848480086868600808080008080
      8000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000808080008080800000000000986F
      4400A9682200A7672000A4651F00000000009E601F009C5E1E00995D1D00965D
      1C0093581B008F5A1D008E561A008B541B0088541A008551190081501A007F4E
      1800000000007A4817007749160074451500693F1000000000003F3F3F005050
      50008080800080808000808080008080800085858500626262003B3B3B007171
      7100757575001F1B1A00010101000000000000000000060000006A2C0F00A760
      3D00BC7B5100B66D2D00A96019009E583500B7735200732D0A00000000001D09
      0000795A3E00898B8500716F71003E3E3E007474740083838300808080008080
      8000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000008080800080808000000000009C73
      4A00AD6A2000AA682100A7662000A4651F00A0641F009E621D009C601E009A5E
      1C00965D1C00935B1D0090581C008E551C008A551A0088541A00854F19008250
      1900804E17007B4B180079491600764717006D401000000000003F3F3F005050
      500080808000808080008080800080808000818181007F7F7F007B7B7B007779
      7600261F1B000400000000000000000000001F0D000085442700BB7B5300C981
      3600C67C2B00C37A2E00BD753500A45E36009A533000A25C3900934C2900A965
      4400A96D5100985F3E0079777500828282008181810080808000808080008080
      8000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000008080800080808000000000009F79
      5100AF6C2200AC6B2100AA68210000000000A3662000A0621F009E621D009C5E
      1E009A5C1C00955C1D00935A1B008F5A1D008E541A008A561C0088521A00854F
      1900000000007E4D19007B4B18007949160071411000000000003F3F3F005050
      5000808080008080800080808000808080008080800081818100838385004543
      4100050000000200000006000000422215009B584400C5814900CA802E00C77D
      2B00C1783300BB733E00BD753900B66F4100A8603C0098512F009B543100B16B
      4800B06C4A00A45E390050403A007A797D008080800080808000808080008080
      8000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000808080008080800000000000A480
      5800B26E2300AF6C2200AD6B220000000000A8641F00A4651F00A0621F009E60
      1D009A601E00995B1D00975B1B0093591D0091591B008D581B008A551A008854
      1A0000000000825019007F4C18007B4D180073451000000000003F3F3F005050
      5000808080008080800080808000808080008080800080808000848284003936
      3400020000001A0700006C3D2E00B2745500C47E4700C77D2C00C67C2C00BE77
      3C00BB734200BB744300B46D4200AD673E00A7603D00A45A360094512E00924C
      29009B543100A3623E005A3F3100737278008080800080808000808080008080
      8000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000808080008080800000000000AA85
      5E00B46E2200B26E2300B06C2100AD6A2000A9692000A7672000A4631F00A263
      1F009E601F009B5F1D00995B1D00965D1C00935A1B0091571B008E551C008B54
      1B0087511B0085511900824E19007F4E180077461200000000003F3F3F005050
      500080808000808080008080800080808000808080008080800082828400362B
      26005F220200A5634400BA826300BF7D5100BD754700BC743F00B8724600B871
      4800B56F4900B46D4A00AD664400A9623F00A15936009F5732009B583000944F
      2C0085442600904B29006543310076757B008080800080808000808080008080
      8000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000808080008080800000000000AE8B
      6600B7712300B66E2200B36B210000000000AD6B2200A9692000A7672000A463
      1F00A0621F009E601F009C5E1D00985E1C00965D1C00935B1D008F571B008E56
      1A000000000087531B0084501B00834F18007B471000000000003F3F3F005050
      50008080800080808000808080008080800080808000808080007C7B7F005041
      3A00AC6C5100B7887300B77C6000B7745500B8714F00B56E4A00B56E4B00B670
      4D00B36C4A00AB654300A7613E00A25B38009E5734009B55300094512F009453
      2F0092502F00673519004A3D3600828082008080800080808000808080008080
      8000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000808080008080800000000000B292
      6C00BB722300B6702400B56D230000000000AF6A2200AD6A2000AB692000A767
      2000A4651F00A0641F009E601F009A5E1E009A5C1C00955C1D0093591D009157
      1B00000000008A551A0087531B00855119007E4A1200000000003F3F3F005050
      5000808080008080800080808000808080008080800080808000848484005757
      57003A31300073413700A7624400B7795B00B56E4B00B66F4C00B66F4C00B36C
      4A00AF684500A9623F00A25B38009D5734009B5431009B5330009B5530007943
      2400341C0C000C0B080034323400858583008080800080808000808080008080
      8000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000808080008080800000000000B797
      7300BC752400BA712400B7712300B46E2200B26E2100B16A2000AD682000AB67
      2000A7672000A4651F00A0621F009E601D009A5E1E00985C1C00965D1C00935A
      1B0090581C008E551C008C551A0088541A00814D1300000000003F3F3F005050
      5000808080008080800080808000808080008080800080808000878787004B4B
      4B000F0D0F0013141400110908005E2F2700A7624400B66F4C00B6704D00AC66
      4400A8613E00A25A3700A05733009D5530009C532F0080442700391B09000F0F
      0B00020105000505050029292900808080008181810080808000808080008080
      8000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000808080008080800000000000BC9C
      7900BF732300BC752400B972230000000000B66E2200B36B2100AF6C2200AD6B
      2200A9692000A7662000A4651F00A0641F009E621F009C5E1D00985D1E00975A
      1D000000000090561C008E541A008A531A00834E1300000000003F3F3F005050
      5000808080008080800080808000808080008080800080808000858585004444
      44000C0C0C000D0D0D0004030700060609001F130F0076422A00A5624000A767
      4600A45F3A00A1583400A2562F0093513000593424000A080700000000000000
      00000202020000000000141414007C7C7C008282820080808000808080008080
      8000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000808080008080800000000000BEA1
      7F00BE772600BE752400BC7524000000000000000000B46E2300000000000000
      0000AD6922000000000000000000A4631F0000000000000000009C5E1D000000
      000000000000935B1D0090581C008C571C0086501200000000003F3F3F005050
      5000808080008080800080808000808080008080800080808000838383004141
      41001E1E1E002E2E2E00393939004141410049484C005B5A5F004B3E3D00714A
      330098573400985330006C452F00483D3B005E5F620058585A004F4F4F004646
      46003C3C3C00303030002D2D2D00797979008282820080808000808080008080
      8000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000808080008080800000000000C2A5
      8300C1772500BF762500BD762500BC732400B9722300B7712300B46E2200B26E
      2100AF6C2200AD6A2000A9692000A8661F00A3642000A1621E009E601F009C5E
      1E00985C1C00965B1C0093581B0090581C008A521400000000003F3F3F005050
      5000808080008080800080808000808080008080800080808000808080007B7B
      7B007C7C7C0080808000838383008686860087878700818181007B7A7E006461
      67004D463E004F433A00525154007B797B008181810085858500878787008888
      8800868686008383830080808000808080008080800080808000808080008080
      8000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000808080008080800000000000C5A8
      8600C1772500C1772500BE772600BD762500BC732400B9732500B86F2200B56D
      2300B26C2100AF6A2200AD6B2200AA682100A7672000A4631F00A0641F009E60
      1F009C5E1D00985E1C00955A1D0093591D008B521300000000003F3F3F005050
      5000808080008080800080808000808080008080800080808000808080008181
      8100828282008181810081818100808080008080800080808000808080008080
      80007E7C7E007E7C7E0080808000808080008080800080808000808080008080
      8000808080008181810081818100808080008080800080808000808080008080
      8000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000808080008080800000000000C5A8
      8600C1772500C1772500C1772500C0762400BF752300BC732400BB722300B871
      2200B66E2200B26E2100AF6C2200AC6B2100AB692000A8641F00A4651F00A062
      1F009E621F009A5E1E009A5C1C00965B1C008B521300000000003F3F3F008080
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
      000000000000000000000000000000000000808080008080800000000000DCDC
      DC00DCD9D800DAD7D400D9D3CE00D7D2C800D7CFC200D5C9BA00D3C6B300D2C2
      AC00D1BEA500D0BA9F00CFB89800CEB39100CDAF8A00CAAC8400CAA87C00C8A5
      7600C8A06F00C79C6800C59A6200C4995F00C4965B0000000000808080008080
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
      0000000000000000000000000000000000008080800080808000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000808080008080
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
      8000808080008080800080808000808080008080800080808000808080008080
      8000808080008080800080808000808080008080800080808000808080008080
      8000808080008080800080808000808080008080800080808000808080008080
      8000808080008080800080808000808080008080800080808000808080008080
      8000808080008080800080808000808080008080800080808000808080008080
      8000808080008080800080808000808080008080800080808000808080008080
      8000808080008080800080808000808080008080800080808000808080008080
      8000808080008080800080808000808080008080800080808000808080008080
      8000808080008080800080808000808080008080800080808000808080008080
      8000505050005050500050505000505050005050500050505000505050005050
      5000505050005050500050505000505050005050500050505000505050005050
      5000808080008080800080808000808080008080800080808000808080008080
      8000808080008080800080808000808080008080800080808000505050005050
      5000505050005050500050505000505050005050500050505000505050005050
      5000505050005050500050505000505050005050500050505000808080008080
      8000808080008080800080808000808080008080800080808000808080008080
      8000808080008080800080808000808080005050500050505000505050005050
      5000505050005050500050505000505050005050500050505000505050005050
      5000505050005050500050505000505050008080800080808000808080008080
      8000808080008080800080808000808080008080800080808000808080008080
      8000808080008080800050505000505050005050500050505000505050005050
      5000505050005050500050505000505050005050500050505000505050005050
      5000505050005050500080808000808080008080800080808000808080008080
      8000808080008080800080808000808080008080800080808000808080003F3F
      3F003F3F3F003F3F3F003F3F3F003F3F3F003F3F3F003F3F3F003F3F3F003F3F
      3F003F3F3F003F3F3F003F3F3F003F3F3F003F3F3F003F3F3F003F3F3F005050
      5000808080008080800080808000808080008080800080808000808080008080
      800080808000808080008080800080808000808080003F3F3F003F3F3F003F3F
      3F003F3F3F003F3F3F003F3F3F003F3F3F003F3F3F003F3F3F003F3F3F003F3F
      3F003F3F3F003F3F3F003F3F3F003F3F3F003F3F3F0050505000808080008080
      8000808080008080800080808000808080008080800080808000808080008080
      80008080800080808000808080003F3F3F003F3F3F003F3F3F003F3F3F003F3F
      3F003F3F3F003F3F3F003F3F3F003F3F3F003F3F3F003F3F3F003F3F3F003F3F
      3F003F3F3F003F3F3F003F3F3F00505050008080800080808000808080008080
      8000808080008080800080808000808080008080800080808000808080008080
      8000808080003F3F3F003F3F3F003F3F3F003F3F3F003F3F3F003F3F3F003F3F
      3F003F3F3F003F3F3F003F3F3F003F3F3F003F3F3F003F3F3F003F3F3F003F3F
      3F003F3F3F005050500080808000808080008080800080808000808080008080
      8000808080008080800080808000808080008080800080808000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000003F3F3F005050
      5000808080008080800080808000808080008080800080808000808080008080
      8000808080008080800080808000808080000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000003F3F3F0050505000808080008080
      8000808080008080800080808000808080008080800080808000808080008080
      8000808080008080800021212100212121003F3F3F0021212100212121003F3F
      3F0021212100212121003F3F3F0021212100212121003F3F3F00212121002121
      21003F3F3F00212121003F3F3F00505050008080800080808000808080008080
      8000808080008080800080808000808080008080800080808000808080008080
      800021212100212121003F3F3F0021212100212121003F3F3F00212121002121
      21003F3F3F0021212100212121003F3F3F0021212100212121003F3F3F002121
      21003F3F3F005050500080808000808080008080800080808000808080008080
      800080808000808080008080800080808000808080008080800000000000ACB7
      890078805E006C745200686E4E00636A4C00606548005D634300555A3D005056
      3B00474C350045483300404530004449320051573C00000000003F3F3F005050
      5000808080008080800080808000808080008080800080808000808080008080
      80008080800080808000808080008080800000000000ACB7890078805E006C74
      5200686E4E00636A4C00606548005D634300555A3D0050563B00474C35004548
      3300404530004449320051573C00000000003F3F3F0050505000808080008080
      8000808080008080800080808000808080008080800080808000808080008080
      8000808080008080800021212100ACB7890078805E006C745200686E4E00636A
      4C00606548005D634300555A3D0050563B00474C350045483300404530004449
      320051573C003F3F3F003F3F3F00505050008080800080808000808080008080
      8000808080008080800080808000808080008080800080808000808080008080
      800021212100ACB7890078805E006C745200686E4E00636A4C00606548005D63
      4300555A3D0050563B00474C350045483300404530004449320051573C003F3F
      3F003F3F3F005050500080808000808080008080800080808000808080008080
      800080808000808080008080800080808000808080008080800000000000B0BB
      8D00A6B17C00A2AE7B00A0A979009EA875009CA6750099A27200979F7100919C
      6E008C966A00858F67008188620078805E00676D4B00000000003F3F3F005050
      5000808080008080800080808000808080008080800080808000808080008080
      80008080800080808000808080008080800000000000B0BB8D00A6B17C00A2AE
      7B00A0A979009EA875009CA6750099A27200979F7100919C6E008C966A00858F
      67008188620078805E00676D4B00000000003F3F3F0050505000808080008080
      8000808080008080800080808000808080008080800080808000808080008080
      8000808080008080800080808000B0BB8D009EAA77009AA5750099A27400949F
      7100929D6F008E986E008A936B0087906800848E6600818A64007F8662007B84
      6000676D4B00212121003F3F3F00505050008080800080808000808080008080
      8000808080008080800080808000808080008080800080808000808080008080
      800080808000B0BB8D00A6B17C00A2AE7B00A0A979009EA875009CA6750099A2
      7200979F7100919C6E008C966A00858F67008188620078805E00676D4B002121
      21003F3F3F005050500080808000808080008080800080808000808080008080
      800080808000808080008080800080808000808080008080800000000000B5BF
      9500A6B37C00A1AF7C00A2AA7900A0AA77009CA777009CA6750099A5720095A0
      7200909B6D0089936900828B65007A835F00676D4B00000000003F3F3F005050
      5000808080008080800080808000808080008080800080808000808080008080
      80008080800080808000808080008080800000000000B5BF9500A6B37C00A1AF
      7C00A2AA7900A0AA77009CA777009CA6750099A5720095A07200909B6D008993
      6900828B65007A835F00676D4B00000000003F3F3F0050505000808080008080
      8000808080008080800080808000808080008080800080808000808080008080
      8000808080008080800021212100B5BF9500A2AD78009EAA77009AA5750097A3
      720095A07000909D6F008E986E008B95690086906800848D6700818A64007F88
      6000676D4B00212121003F3F3F00505050008080800080808000808080008080
      8000808080008080800080808000808080008080800080808000808080008080
      800021212100B5BF9500A6B37C00A1AF7C00A2AA7900A0AA77009CA777009CA6
      750099A5720095A07200909B6D0089936900828B65007A835F00676D4B002121
      21003F3F3F005050500080808000808080008080800080808000808080008080
      800080808000808080008080800080808000808080008080800000000000BDC4
      9E00A7B47D00A4B07D00A4B17A00A2AD7800A2AC79009FAB78009DA7760099A4
      740095A070008F9A6C00869068007E896300676D4B00000000003F3F3F005050
      5000808080008080800080808000808080008080800080808000808080008080
      80008080800080808000808080008080800000000000BDC49E00A7B47D00A4B0
      7D00A4B17A00A2AD7800A2AC79009FAB78009DA7760099A4740095A070008F9A
      6C00869068007E896300676D4B00000000003F3F3F0050505000808080008080
      8000808080008080800080808000808080008080800080808000808080008080
      8000808080008080800021212100BDC49E00A4B17C00A1AD7A009EA877009AA5
      750097A2720095A07000929D6F008F9A6C008B956B0087906800848D6700818A
      6400676D4B003F3F3F003F3F3F00505050008080800080808000808080008080
      8000808080008080800080808000808080008080800080808000808080008080
      800021212100BDC49E00A7B47D00A4B07D00A4B17A00A2AD7800A2AC79009FAB
      78009DA7760099A4740095A070008F9A6C00869068007E896300676D4B003F3F
      3F003F3F3F005050500080808000808080008080800080808000808080008080
      800080808000808080008080800080808000808080008080800000000000C3CA
      A600A9B67F00A8B57E00A7B27D00A5B07B00A4B17A00A2AE7B00A2AD7800A0AB
      760099A57400949F6F008B976B00858E6600676D4B00000000003F3F3F005050
      5000808080008080800080808000808080008080800080808000808080008080
      80008080800080808000808080008080800000000000C3CAA600A9B67F00A8B5
      7E00A7B27D00A5B07B00A4B17A00A2AE7B00A2AD7800A0AB760099A57400949F
      6F008B976B00858E6600676D4B00000000003F3F3F0050505000808080008080
      8000808080008080800080808000808080008080800080808000808080008080
      8000808080008080800080808000C3CAA600A8B57E00A5B07B00A1AD7A009EAA
      77009BA7740097A37200969F7100919B6F008E986C008B95690087906800848D
      6700676D4B00212121003F3F3F00505050008080800080808000808080008080
      8000808080008080800080808000808080008080800080808000808080008080
      800080808000C3CAA600A9B67F00A8B57E00A7B27D00A5B07B00A4B17A00A2AE
      7B00A2AD7800A0AB760099A57400949F6F008B976B00858E6600676D4B002121
      21003F3F3F005050500080808000808080008080800080808000808080008080
      800080808000808080008080800080808000808080008080800000000000C9D2
      AE00AEBA8100ADB88100A9B67F00A8B57E00A7B47D00A4B17C00A5B07B00A1AE
      7900A0AA77009AA47300939E70008B956900676D4B00000000003F3F3F005050
      5000505050005050500050505000505050005050500050505000505050005050
      50008080800080808000808080008080800000000000C9D2AE00AEBA8100ADB8
      8100A9B67F00A8B57E00A7B47D00A4B17C00A5B07B00A1AE7900A0AA77009AA4
      7300939E70008B956900676D4B00000000003F3F3F0050505000505050005050
      5000505050005050500050505000505050005050500050505000808080008080
      8000808080008080800021212100C9D2AE00ACB87F00A8B57E00A4B07D00A1AD
      7A009EAA77009AA6750097A2740095A07000919B6F008E986C008B9569008790
      6800676D4B00212121003F3F3F00505050005050500050505000505050005050
      5000505050005050500050505000505050008080800080808000808080008080
      800021212100C9D2AE00AEBA8100ADB88100A9B67F00A8B57E00A7B47D00A4B1
      7C00A5B07B00A1AE7900A0AA77009AA47300939E70008B956900676D4B002121
      21003F3F3F005050500050505000505050005050500050505000505050005050
      500050505000505050008080800080808000808080008080800000000000D0D7
      B900B1BD8400B0BC8300ACB98200ABB88100ABB77E00A8B37E00A7B27D00A5B0
      7B00A3AD7A009FA9760097A27200909A6E00676D4B00000000003F3F3F003F3F
      3F003F3F3F003F3F3F003F3F3F003F3F3F003F3F3F003F3F3F003F3F3F005050
      50008080800080808000808080008080800000000000D0D7B900B1BD8400B0BC
      8300ACB98200ABB88100ABB77E00ACB78900CFD7AD00C8D2A600C2CB9D00BAC3
      9500B2BC8B00AAB48300676D4B00000000003F3F3F003F3F3F003F3F3F003F3F
      3F003F3F3F003F3F3F003F3F3F003F3F3F003F3F3F0050505000808080008080
      8000808080008080800021212100D0D7B900AFBB8200ACB87F00A8B57E00A4B0
      7D00A2AD78009DA978009CA6750099A2720095A07000919B6F008E986C008B95
      6900676D4B003F3F3F003F3F3F003F3F3F003F3F3F003F3F3F003F3F3F003F3F
      3F003F3F3F003F3F3F003F3F3F00505050008080800080808000808080008080
      800021212100D0D7B900B1BD8400B0BC8300ACB98200ABB88100ABB77E00ACB7
      8900CFD7AD00C8D2A600C2CB9D00BAC39500B2BC8B00AAB48300676D4B003F3F
      3F003F3F3F003F3F3F003F3F3F003F3F3F003F3F3F003F3F3F003F3F3F003F3F
      3F003F3F3F00505050008080800080808000808080008080800000000000D8DD
      C000B5C18600B4C08500B2BE8500AEBB8400ACB98200AAB780004F553A004F55
      3A008F7F50004F553A004F553A008F7F50004F553A000000FF000000FF000000
      FF000000FF000000FF000000FF000000FF000000FF000000FF003F3F3F005050
      50008080800080808000808080008080800000000000D8DDC000B5C18600B4C0
      8500B2BE8500AEBB8400ACB98200676D4B000000FF000000FF000000FF000000
      FF000000FF000000FF000000FF000000FF000000000000000000000000000000
      0000000000000000000000000000000000003F3F3F0050505000808080008080
      8000808080008080800080808000D8DDC000B2BD8400AFBB8200AAB78000A8B5
      7E00A5B07B00A1AD7A00676D4B009AA67500676D4B00676D4B00939C6E00676D
      4B00676D4B000000FF000000FF000000FF000000FF000000FF000000FF000000
      FF000000FF000000FF003F3F3F00505050008080800080808000808080008080
      800080808000D8DDC000B5C18600B4C08500B2BE8500AEBB8400ACB98200676D
      4B000000FF000000FF000000FF000000FF000000FF000000FF000000FF000000
      FF003F3F3F0021212100212121003F3F3F0021212100212121003F3F3F002121
      21003F3F3F00505050008080800080808000808080008080800000000000DFE3
      C800B6C48700B5C38800B6C28700B2C08500B1BD8400ADBB82004F553A00A88F
      52009E945D009C8D56009A86500098864E0098864E004F553A006D420E00683E
      0F00633A0F0060390E005A350E005C340C006D430E000000FF003F3F3F005050
      50008080800080808000808080008080800000000000DFE3C800B6C48700B5C3
      8800B6C28700B2C08500B1BD8400676D4B000000FF005E3C1800774716007747
      16007447150072431300704113006C401100693F1100673B0F00633A0F005F39
      0F005D350D005C340C006D430E00000000003F3F3F0050505000808080008080
      8000808080008080800021212100DFE3C800B3C18600B3BF8400AFBB8200ACB8
      7F00A8B57E00A4B07D00A1AD7A009DA878009AA5750099A27400969F7100929D
      6F00676D4B000000FF00693F1100673B0F00633A0F005F390F005D350D005C34
      0C006D430E000000FF003F3F3F00505050008080800080808000808080008080
      800021212100DFE3C800B6C48700B5C38800B6C28700B2C08500B1BD8400676D
      4B000000FF00976D4100774716007747160074471500724313005F390F000000
      FF00693F1100673B0F00633A0F005F390F005D350D005C340C006D430E003F3F
      3F003F3F3F00505050008080800080808000808080008080800000000000E5E8
      D300B7C58800B7C58800B6C48700B5C38600B3C18600B3BE85008F7F5000A88F
      5200A58C4F00A3894F009F884F009B864D009A864E00825019007B4B18007649
      1700714516006D411500683F1400653C13005F370F000000FF003F3F3F005050
      50008080800080808000808080008080800000000000E5E8D300B7C58800B7C5
      8800B6C48700B5C38600B3C18600676D4B000000FF005E3E1A007D4C1600955A
      1D00925A1C008B541B0086521A00825019007B4B180076491700714516006D41
      1500683F1400653C13005F370F00000000003F3F3F0050505000808080008080
      8000808080008080800021212100E5E8D300B6C58600B3C18600B1BF8400ADBB
      8200ABB68100A8B37E00676D4B00A1AD7A009DA978009DA7740099A37200949E
      7200676D4B000000FF00754B1C0076491700714516006D411500683F1400653C
      13005F370F000000FF003F3F3F00505050008080800080808000808080008080
      800021212100E5E8D300B7C58800B7C58800B6C48700B5C38600B3C18600676D
      4B000000FF00987146009C601E00955A1D00925A1C008B541B005F390F000000
      FF007B4B180076491700714516006D411500683F1400653C13005F370F002121
      21003F3F3F00505050008080800080808000808080008080800000000000EDF0
      DB00BAC68B00B8C68900B8C68900B7C58800B6C48700B4C287004F553A00A996
      5900A88F5000A58A4F00A3894F009F884F009C854E004F553A00824E17007C4B
      170075481600704417006B411500674015005B350D000000FF003F3F3F005050
      50008080800080808000808080008080800000000000EDF0DB00BAC68B00B8C6
      8900B8C68900B7C58800B6C48700676D4B000000FF005F3F1B007F4D16009B5F
      1D00955A1D0090581C008B541B0077491600824E17007C4B1700754816007044
      17006B411500674015005B350D00000000003F3F3F0050505000808080008080
      8000808080008080800080808000EDF0DB00B7C58800B7C38600B5C18600B3BF
      8400AFBA8300ABB88100676D4B00A4B17C00A2AD78009DA878009AA6750097A2
      7400676D4B000000FF00875A2A007C4B170075481600704417006B4115006740
      15005B350D000000FF003F3F3F00505050008080800080808000808080008080
      800080808000EDF0DB00BAC68B00B8C68900B8C68900B7C58800B6C48700676D
      4B000000FF009E754A009F631E009B5F1D00955A1D0090581C005F390F000000
      FF00824E17007C4B170075481600704417006B411500674015005B350D002121
      21003F3F3F00505050008080800080808000808080008080800000000000F1F5
      E400B9C78A00B9C78A00B8C68900B8C68900B7C58800B8C489004F553A00A996
      5900AB8D5000A88D5000A58A4F00A38B4F009F884F004F553A0085511900804D
      19007B4B180075481600704417006C4214005C340E000000FF003F3F3F005050
      50008080800080808000808080008080800000000000F1F5E400B9C78A00B9C7
      8A00B8C68900B8C68900B7C58800676D4B000000FF00603E1D00814F16009F61
      1E009B5F1D00965D1C008F591B007749160085511900804D19007B4B18007548
      1600704417006C4214005C340E00000000003F3F3F0050505000808080008080
      8000808080008080800021212100F1F5E400B7C58800B7C58800B5C38800B3C1
      8600B1BD8400AFBB8200ABB68100A8B57E00A4B17C00A1AD7A009EAA77009AA5
      7500676D4B000000FF00976C3A00804D19007B4B180075481600704417006C42
      14005C340E000000FF003F3F3F00505050008080800080808000808080008080
      800021212100F1F5E400B9C78A00B9C78A00B8C68900B8C68900B7C58800676D
      4B000000FF00A2795000A6651F009F611E009B5F1D00965D1C005F390F000000
      FF0085511900804D19007B4B180075481600704417006C4214005C340E003F3F
      3F003F3F3F00505050008080800080808000808080008080800000000000F7F9
      EA00B9C78A00B9C78A00B9C78A00B8C68900B8C68900B9C58A008F7F5000A898
      6000AC925100AA8F5100A88D5000A48C5000A1894F008F571B008A561C008551
      1A007F4E18007A4A190074471700704417005F390F000000FF003F3F3F005050
      50008080800080808000808080008080800000000000F7F9EA00B9C78A00B9C7
      8A00B9C78A00B8C68900B8C68900676D4B000000FF0061411E00834F1700A465
      1F009F611E00995D1D0094591C008F571B008A561C0085511A007F4E18007A4A
      190074471700704417005F390F00000000003F3F3F0050505000808080008080
      8000808080008080800021212100F7F9EA00B7C58800B7C58800B7C58800B5C3
      8800B2C28500B1BD8400676D4B0087916500676D4B00676D4B00676D4B00676D
      4B00676D4B000000FF00A87D490085511A007F4E18007A4A1900744717007044
      17005F390F000000FF003F3F3F00505050008080800080808000808080008080
      800021212100F7F9EA00B9C78A00B9C78A00B9C78A00B8C68900B8C68900676D
      4B000000FF00A57F5700A9692000A4651F009F611E00995D1D005F390F000000
      FF008A561C0085511A007F4E18007A4A190074471700704417005F390F002121
      21003F3F3F00505050008080800080808000808080008080800000000000FCFD
      F000FCFDF000FCFDF000F7F9E800EEF2DF00E7EAD500E0E4CB004F553A00AFB0
      7500B0925300AC915100AA8F5100A78C5100A48C50004F553A008E591C008A55
      1A00845219007F4E1800794B180074471700633C0F000000FF003F3F3F005050
      50008080800080808000808080008080800000000000FCFDF000FCFDF000FCFD
      F000F7F9E800EEF2DF00E7EAD500ACB789000000FF0061422000AE6C2300A967
      2000A36620009F612000995D1D00774916008E591C008A551A00845219007F4E
      1800794B180074471700633C0F00000000003F3F3F0050505000808080008080
      8000808080008080800080808000FCFDF000FCFDF000FCFDF000F7F9E800EEF2
      DF00E7EAD500E7EAD50044493200444932004449320044493200444932004449
      3200444932000000FF00BA8E59008A551A00845219007F4E1800794B18007447
      1700633C0F000000FF003F3F3F00505050008080800080808000808080008080
      800080808000FCFDF000FCFDF000FCFDF000F7F9E800EEF2DF00E7EAD500ACB7
      89000000FF00D3C0A900C69A6300C69A6300C69A6300C69A6300C69A63000000
      FF008E591C008A551A00845219007F4E1800794B180074471700633C0F002121
      21003F3F3F005050500080808000808080008080800080808000000000000000
      00000000000000000000000000000000000000000000000000000000FF00575B
      4200B36D21004F553A004F553A00A4631F004F553A004F553A00935B1D008E59
      1C0089551B00845019007F4C1800794B1800683C0F000000FF003F3F3F005050
      5000808080008080800080808000808080000000000000000000000000000000
      0000000000000000000000000000000000000000FF00AF8B6300B36D21007749
      160077491600A4631F007749160077491600935B1D008E591C0089551B008450
      19007F4C1800794B1800683C0F00000000003F3F3F0050505000808080008080
      8000808080008080800021212100808080002121210021212100808080002121
      210021212100808080000000FF000000FF000000FF000000FF000000FF000000
      FF000000FF000000FF00C69A63008E591C0089551B00845019007F4C1800794B
      1800683C0F000000FF003F3F3F00505050008080800080808000808080008080
      8000212121008080800021212100212121008080800021212100212121008080
      80000000FF000000FF000000FF000000FF000000FF000000FF000000FF000000
      FF00935B1D008E591C0089551B00845019007F4C1800794B1800683C0F003F3F
      3F003F3F3F005050500080808000808080008080800080808000808080008080
      80008080800080808000808080008080800080808000808080000000FF00B47E
      3500B7712300B36D2200AD6C2200A8682100A36420009D611F00985E1C00935B
      1D008E571C0089521900845019007E4D1900714110000000FF003F3F3F005050
      5000808080008080800080808000808080008080800080808000808080008080
      80008080800080808000808080008080800000000000B28F6A00B7712300B36D
      2200AD6C2200A8682100A36420009D611F00985E1C00935B1D008E571C008952
      1900845019007E4D190071411000000000003F3F3F0050505000808080008080
      8000808080008080800080808000808080008080800080808000808080008080
      800080808000808080000000FF00B28F6A007747160077471600734614006D41
      1400693F1100623B10007F4E1800935B1D008E571C0089521900845019007E4D
      1900714110000000FF003F3F3F00505050008080800080808000808080008080
      8000808080008080800080808000808080008080800080808000808080008080
      800080808000B28F6A00B7712300B36D2200AD6C2200A8682100A36420009D61
      1F00985E1C00935B1D008E571C0089521900845019007E4D1900714110002121
      21003F3F3F005050500080808000808080008080800080808000808080008080
      80008080800080808000808080008080800080808000808080000000FF00BA85
      4000BC732400B8712200B26E2100AD6B2200A8672100A3641E009E5E1F00985C
      1C00935B1D008E571C0089531B0083511A00774610000000FF003F3F3F005050
      5000808080008080800080808000808080008080800080808000808080008080
      80008080800080808000808080008080800000000000B6967000BC732400B871
      2200B26E2100AD6B2200A8672100A3641E009E5E1F00985C1C00935B1D008E57
      1C0089531B0083511A0077461000000000003F3F3F0050505000808080008080
      8000808080008080800080808000808080008080800080808000808080008080
      800080808000808080000000FF00B6967000BC732400B8712200B26E2100AD6B
      2200A8672100A3641E009E5E1F00985C1C00935B1D008E571C0089531B008351
      1A00774610000000FF003F3F3F00505050008080800080808000808080008080
      8000808080008080800080808000808080008080800080808000808080008080
      800021212100B6967000BC732400B8712200B26E2100AD6B2200A8672100A364
      1E009E5E1F00985C1C00935B1D008E571C0089531B0083511A00774610002121
      21003F3F3F005050500080808000808080008080800080808000808080008080
      80008080800080808000808080008080800080808000808080000000FF00BD90
      5800BE752400BC732400B6702400B26E2100AD6B2200A8661F00A2651F009D61
      1F00975E1D0093581B008C571C0087531B007D4911000000FF003F3F3F005050
      5000808080008080800080808000808080008080800080808000808080008080
      80008080800080808000808080008080800000000000BB9B7700BE752400BC73
      2400B6702400B26E2100AD6B2200A8661F00A2651F009D611F00975E1D009358
      1B008C571C0087531B007D491100000000003F3F3F0050505000808080008080
      8000808080008080800080808000808080008080800080808000808080008080
      800080808000808080000000FF00BB9B7700BE752400BC732400B6702400B26E
      2100AD6B2200A8661F00A2651F009D611F00975E1D0093581B008C571C008753
      1B007D4911000000FF003F3F3F00505050008080800080808000808080008080
      8000808080008080800080808000808080008080800080808000808080008080
      800021212100BB9B7700BE752400BC732400B6702400B26E2100AD6B2200A866
      1F00A2651F009D611F00975E1D0093581B008C571C0087531B007D4911003F3F
      3F003F3F3F005050500080808000808080008080800080808000808080008080
      80008080800080808000808080008080800080808000808080000000FF00C09B
      6E00C1772500BE752400BB742300B56F2300B26C2100AB6B2200A6672100A263
      1F009D5F1E00965B1E00925A1C008C571C00824D12000000FF003F3F3F005050
      5000808080008080800080808000808080008080800080808000808080008080
      80008080800080808000808080008080800000000000BEA17D00C1772500BE75
      2400BB742300B56F2300B26C2100AB6B2200A6672100A2631F009D5F1E00965B
      1E00925A1C008C571C00824D1200000000003F3F3F0050505000808080008080
      8000808080008080800080808000808080008080800080808000808080008080
      800080808000808080000000FF00BEA17D00C1772500BE752400BB742300B56F
      2300B26C2100AB6B2200A6672100A2631F009D5F1E00965B1E00925A1C008C57
      1C00824D12000000FF003F3F3F00505050008080800080808000808080008080
      8000808080008080800080808000808080008080800080808000808080008080
      800080808000BEA17D00C1772500BE752400BB742300B56F2300B26C2100AB6B
      2200A6672100A2631F009D5F1E00965B1E00925A1C008C571C00824D12002121
      21003F3F3F005050500080808000808080008080800080808000808080008080
      80008080800080808000808080008080800080808000808080000000FF00C4A5
      8300C1772500C1772500BD762500B9752500B56F2300B06D2300AC6A2100A568
      2000A0641F009C601E00955C1D00925A1C00885212000000FF003F3F3F005050
      5000808080008080800080808000808080008080800080808000808080008080
      80008080800080808000808080008080800000000000C2A58100C1772500C177
      2500BD762500B9752500B56F2300B06D2300AC6A2100A5682000A0641F009C60
      1E00955C1D00925A1C0088521200000000003F3F3F0050505000808080008080
      8000808080008080800080808000808080008080800080808000808080008080
      800080808000808080000000FF00C2A58100C1772500C1772500BD762500B975
      2500B56F2300B06D2300AC6A2100A5682000A0641F009C601E00955C1D00925A
      1C00885212000000FF003F3F3F00505050008080800080808000808080008080
      8000808080008080800080808000808080008080800080808000808080008080
      800021212100C2A58100C1772500C1772500BD762500B9752500B56F2300B06D
      2300AC6A2100A5682000A0641F009C601E00955C1D00925A1C00885212002121
      21003F3F3F005050500080808000808080008080800080808000808080008080
      80008080800080808000808080008080800080808000808080000000FF00C5A8
      8600C1772500C1772500C1772500BE752400B9722300B56F2300B16D2200AC6A
      2100A5662000A0621F009C5E1E00955C1D008B5213000000FF003F3F3F008080
      8000808080008080800080808000808080008080800080808000808080008080
      80008080800080808000808080008080800000000000C5A88600C1772500C177
      2500C1772500BE752400B9722300B56F2300B16D2200AC6A2100A5662000A062
      1F009C5E1E00955C1D008B521300000000003F3F3F0080808000808080008080
      8000808080008080800080808000808080008080800080808000808080008080
      800080808000808080000000FF00C5A88600C1772500C1772500C1772500BE75
      2400B9722300B56F2300B16D2200AC6A2100A5662000A0621F009C5E1E00955C
      1D008B5213000000FF003F3F3F00808080008080800080808000808080008080
      8000808080008080800080808000808080008080800080808000808080008080
      800021212100C5A88600C1772500C1772500C1772500BE752400B9722300B56F
      2300B16D2200AC6A2100A5662000A0621F009C5E1E00955C1D008B5213003F3F
      3F003F3F3F008080800080808000808080008080800080808000808080008080
      80008080800080808000808080008080800080808000808080000000FF00DCDC
      DC00DAD9D600D9D4CC00D7CEC000D5C5B500D3C0A900D1BA9C00CEB39100CCAE
      8600CBA67900C8A26F00C69A6300C4965B00A97335000000FF00808080008080
      8000808080008080800080808000808080008080800080808000808080008080
      80008080800080808000808080008080800000000000DCDCDC00DAD9D600D9D4
      CC00D7CEC000D5C5B500D3C0A900D1BA9C00CEB39100CCAE8600CBA67900C8A2
      6F00C69A6300C4965B00A9733500000000008080800080808000808080008080
      8000808080008080800080808000808080008080800080808000808080008080
      800080808000808080000000FF00DCDCDC00DAD9D600D9D4CC00D7CEC000D5C5
      B500D3C0A900D1BA9C00CEB39100CCAE8600CBA67900C8A26F00C69A6300C496
      5B00A97335000000FF0080808000808080008080800080808000808080008080
      8000808080008080800080808000808080008080800080808000808080008080
      800080808000DCDCDC00DAD9D600D9D4CC00D7CEC000D5C5B500D3C0A900D1BA
      9C00CEB39100CCAE8600CBA67900C8A26F00C69A6300C4965B00A97335002121
      2100808080008080800080808000808080008080800080808000808080008080
      80008080800080808000808080008080800080808000808080000000FF000000
      FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF000000
      FF000000FF000000FF000000FF000000FF000000FF000000FF00808080008080
      8000808080008080800080808000808080008080800080808000808080008080
      8000808080008080800080808000808080000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000008080800080808000808080008080
      8000808080008080800080808000808080008080800080808000808080008080
      800080808000808080000000FF000000FF000000FF000000FF000000FF000000
      FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF000000
      FF000000FF000000FF0080808000808080008080800080808000808080008080
      8000808080008080800080808000808080008080800080808000808080008080
      8000212121008080800021212100212121008080800021212100212121008080
      8000212121002121210080808000212121002121210080808000212121002121
      2100808080008080800080808000808080008080800080808000808080008080
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
      8000808080008080800080808000808080008080800080808000808080008080
      8000808080008080800080808000808080008080800080808000808080008080
      8000808080008080800080808000808080008080800080808000808080008080
      8000808080008080800080808000808080008080800080808000808080008080
      8000808080008080800080808000808080008080800080808000808080008080
      8000808080008080800080808000808080008080800080808000808080008080
      8000808080008080800080808000808080008080800080808000808080008080
      8000808080008080800080808000808080008080800080808000808080008080
      8000808080008080800080808000808080008080800080808000808080008080
      800080808000808080008080800080808000424D3E000000000000003E000000
      28000000780000003C0000000100010000000000C00300000000000000000000
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
      000000000000}
  end
  object SelectionImageList: TImageList
    Height = 30
    Width = 30
    Left = 368
    Top = 164
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
      0000000000000000000000000000000000008080800080808000808080008080
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
      8000808080008080800080808000808080008080800080808000808080008080
      8000808080008080800080808000808080008080800080808000808080008080
      8000808080007D7E7B0080808000808080008080800080808000808080008080
      80007C7D79008080800080808000808080008080800080808000808080008080
      8000808080008080800080808000808080008080800080808000808080008080
      8000808080008080800080808000808080008080800080808000808080008080
      8000808080008080800080808000808080008080800080808000808080008080
      8000808080008080800080808000808080008080800080808000808080008080
      8000808080008080800080808000808080008080800080808000808080008080
      800080808000414141004040400040404000404040003F3F3F00404040008080
      8000808080008080800080808000808080008080800080808000404040004040
      4000404040004040400040404000404040004040400080808000808080008080
      8000808080008080800080808000808080008080800080808000808080008080
      8000808080008080800080808000808080008080800080808000808080008080
      8000808080008080800080808000808080008080800080808000808080008080
      8000808080008080800080808000808080008080800080808000808080008080
      8000808080008080800080808000808080008080800080808000808080007678
      6F00676C570060664B0080808000808080008080800080808000808080008080
      800060664B00666B5500727569007F7F7E008080800080808000808080008080
      8000808080008080800080808000808080008080800080808000808080008080
      8000808080008080800080808000808080008080800080808000808080008080
      8000808080008080800080808000808080008080800080808000808080008080
      8000808080008080800080808000808080008080800080808000808080008080
      8000808080008080800080808000808080008080800080808000808080008080
      8000808080000000000000000000000000000000000000000000000000003F3F
      3F0080808000808080008080800080808000808080003F3F3F00000000000000
      0000000000000000000000000000000000003F3F3F0080808000808080008080
      8000808080000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000808080008080
      80008080800080808000808080008080800080808000797A7400666B55006066
      4B0060664B0060664B0080808000808080008080800080808000808080008080
      800060664B0060664B0060664B006468520076786F0080808000808080008080
      8000808080008080800080808000808080008080800080808000808080008080
      8000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000080808000808080008080
      8000808080008080800080808000808080008080800080808000808080008080
      80008080800000000000FCFDF000A2A67C009EA279009A9F7600959A73000000
      00003F3F3F008080800080808000808080003F3F3F00000000005D634300999D
      74009EA279009EA27900B8B9AA00000000003F3F3F0080808000808080008080
      8000606060004F4F4F004F4F4F004F4F4F004F4F4F004F4F4F004F4F4F004F4F
      4F004F4F4F004F4F4F004F4F4F004F4F4F004F4F4F004F4F4F004F4F4F004F4F
      4F004F4F4F004F4F4F004F4F4F004F4F4F004F4F4F004F4F4F004F4F4F004F4F
      4F004F4F4F004F4F4F004F4F4F004F4F4F004F4F4F0000000000808080008080
      80008080800080808000808080008080800075776E0061674D0060664B006066
      4B0060664B008189610080808000808080008080800080808000808080008080
      8000848D6400666D4F0060664B0060664B0060664B006E716200808080008080
      8000808080008080800080808000808080008080800080808000808080008080
      8000000000009EA17B0071765A00707455006A6F520065694D0062674B005D62
      4700575C420052573E004E533B004A4F3800484D3600454B3500444933004349
      320042483200424731003F442F000B0C08000000000080808000808080008080
      8000808080008080800080808000808080008080800080808000808080008080
      8000808080008080800000000000FCFDF000A2A67C009EA278009A9E7500959A
      7300000000003F3F3F00808080003F3F3F00000000005D634300A2A67B009EA2
      7900999E7500B8B9AA00000000003F3F3F008080800080808000808080008080
      8000707070006060600060606000606060006060600060606000606060006060
      6000606060006060600060606000606060006060600060606000606060006060
      6000606060006060600060606000606060006060600060606000606060006060
      6000606060006060600060606000606060004F4F4F0000000000808080008080
      800080808000808080008080800074766C0060664B0060664B0060664B008189
      6100B3C08400BFCC8D0080808000808080008080800080808000808080008080
      8000BFCC8D00B9C589008A92680060664B0060664B0060664B006D7161008080
      8000808080008080800080808000808080008080800080808000808080008080
      800000000000A5A88200979B710095996F0091956C008E9269008A8E6700878B
      6300838760007F855E007B815B00777D580074795500707752006C7450006970
      4D00666D4B005E664500141A0C00000000000000000080808000808080008080
      8000808080008080800080808000808080008080800080808000808080008080
      800080808000808080008080800000000000FCFDF000A2A67C009EA27900999F
      7600959B7300000000003F3F3F00000000005D634300A2A67B009EA278009A9F
      7600B8B9AA00000000003F3F3F00808080008080800080808000808080008080
      8000707070006060600060606000606060006060600060606000606060006060
      6000606060006060600060606000606060006060600060606000606060006060
      6000606060006060600060606000606060006060600060606000606060006060
      6000606060006060600060606000606060004F4F4F0000000000808080008080
      80008080800080808000797A740061674D0060664B0063694D0098A37300BFCC
      8D00BFCC8D00BFCC8D0080808000808080008080800080808000808080008080
      8000BFCC8D00BFCC8D00BFCC8D00A7B37D00666D4F0060664B0060664B007275
      6900808080008080800080808000808080008080800080808000808080008080
      800000000000ADAF8C009B9F7400000000000000000000000000000000000000
      000000000000828860007F845E007B815B00787E5800737A5500707652006D73
      5000656C4B00171C0C00060B0000000000000000000080808000808080008080
      8000808080008080800080808000808080008080800080808000808080008080
      80008080800080808000808080008080800000000000FCFDF000A2A67C009EA2
      79009A9F7600969B7300000000005D634300A2A67C009EA27900999F7500B8B9
      AA00000000003F3F3F0080808000808080008080800080808000808080008080
      8000707070007070700070707000707070007070700070707000707070007070
      7000707070007070700070707000707070007070700070707000707070007070
      7000707070007070700070707000707070007070700070707000707070007070
      7000707070007070700070707000707070006060600080808000808080008080
      8000808080007F7F7E00656A530060664B0060664B009EA97700BFCC8D00BFCC
      8D00BFCC8D00B9C58C0080808000808080008080800080808000808080008080
      8000B7C38B00BFCC8D00BFCC8D00BFCC8D00AAB57E0063694D0060664B006268
      4E007D7E7B008080800080808000808080008080800080808000808080008080
      800000000000B4B793009FA3770000000000989C710094986E0092966C008D92
      690000000000868B6400828760007F845D007B805B00777D5800737A55006C72
      4E001C1F0D000A0E0000080D0000000000000000000080808000808080008080
      8000808080008080800080808000808080008080800080808000808080008080
      8000808080008080800080808000808080008080800000000000FCFDF000A2A6
      7C009EA27900999E75005D634300A2A67B009EA379009A9E7600B8B9AA000000
      00003F3F3F008080800080808000808080008080800080808000808080008080
      8000808080008080800080808000808080008080800080808000808080008080
      8000808080008080800080808000808080008080800080808000808080008080
      8000808080008080800080808000808080008080800080808000808080008080
      8000808080008080800080808000808080008080800080808000808080008080
      8000808080007275690060664B0060664B00878F6500BFCC8D00BFCC8D00BFCC
      8D00ABB489008485810080808000808080008080800080808000808080008080
      800080808000A0A68700BFCC8D00BFCC8D00BFCC8D009BA6740060664B006066
      4B006B6F5D008080800080808000808080008080800080808000808080008080
      800000000000BDBF9E00A3A67A00000000009C9F7400979C710095986F009196
      6C00000000008A8E6700868B6400828861007F845E007B815B00737954002024
      0E000E1100000C1000000A0E0000000000000000000080808000808080008080
      8000808080008080800080808000808080008080800080808000808080008080
      800080808000808080008080800080808000808080008080800000000000FCFD
      F000A2A67B009EA27800A2A67C009EA27900999E7500B8B9AA00000000003F3F
      3F00808080008080800080808000808080008080800080808000808080008080
      8000808080008080800080808000808080008080800080808000808080008080
      8000808080008080800080808000808080008080800080808000808080008080
      8000808080008080800080808000808080008080800080808000808080008080
      8000808080008080800080808000808080008080800080808000808080008080
      8000808080006368500060664B00696F5100B6C38700BFCC8D00BFCC8D00A7B0
      8800808080008080800080808000808080008080800080808000808080008080
      800080808000808080009A9F8500BFCC8D00BFCC8D00BFCC8D00727957006066
      4B0060664B007C7D790080808000808080008080800080808000808080008080
      800000000000C5C8A800A7A97C00000000009FA276009B9F7400989B71009599
      6F00000000008E9269008A8E6700878B6400838760007A7F5A00272A12001215
      0000101300000E1100000C100000000000000000000080808000808080008080
      8000808080008080800080808000808080008080800080808000808080008080
      80008080800080808000808080008080800080808000808080003F3F3F000000
      0000A6AA7E00A2A67B009EA279009A9F7600B8B9AA00000000003F3F3F003F3F
      3F00808080008080800080808000808080008080800080808000808080008080
      8000808080008080800080808000808080008080800080808000808080008080
      8000808080008080800080808000808080008080800080808000808080008080
      8000808080008080800080808000808080008080800080808000808080008080
      8000808080008080800080808000808080008080800080808000808080008080
      8000787A730060664B0060664B0090996C00BFCC8D00BFCC8D00B3BE8B008282
      800080808000808080007B7B7700696B5A005E6249005F634B00696B5A007A7A
      7600808080008080800080808000ABB48900BFCC8D00BFCC8D009EA977006066
      4B0060664B0073756A0080808000808080008080800080808000808080008080
      800000000000CFD1B400AAAC7F0000000000A3A679009FA276009B9F7400979C
      71000000000091966C008E9269008A8F6600828660002B2E1600161A03001417
      020012160000101300000E110000000000000000000080808000808080008080
      8000808080008080800080808000808080008080800080808000808080008080
      800080808000808080008080800080808000808080003F3F3F00000000005D63
      4300AAAD8100A6AA7E00A2A67C009EA27900999E75005D634300000000003F3F
      3F003F3F3F008080800080808000808080008080800080808000808080008080
      8000808080008080800080808000808080008080800080808000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000008080
      8000808080008080800080808000808080008080800080808000808080008080
      8000808080008080800080808000808080008080800080808000808080008080
      8000808080007B7B770062674E00969F7000C1CE8E00C7D592009CA67500656A
      4F007A7A76008080800080808000808080008080800080808000808080008080
      8000808080008080800080808000808080008080800080808000808080008080
      800000000000D7D9BE00AEB08200000000000000000000000000000000000000
      00000000000095986E0091956C00888D650032351C001A1D0700181B05001619
      0400141702001215000010130000000000000000000080808000808080008080
      8000808080008080800080808000808080008080800080808000808080008080
      8000808080008080800080808000808080003F3F3F00000000005D634300B3B5
      8700AFB18500ABAD8100B8B9AA00A2A67B009EA379009A9E76005D6343000000
      00003F3F3F003F3F3F0080808000808080008080800080808000808080008080
      80008080800080808000808080008080800080808000A2A67B007B815D007B81
      5D007B815D007B815D007B815D007B815D007B815D007B815D007B815D007B81
      5D007B815D007B815D007B815D007B815D007B815D007B815D00000000008080
      8000808080008080800080808000808080008080800080808000808080008080
      8000808080008080800080808000808080008080800080808000808080008080
      800080808000696B5A00969F7000C7D59200C7D59200C7D59200C7D592009FAA
      76006A6C5C008080800080808000808080008080800080808000808080008080
      8000808080008080800080808000808080008080800080808000808080008080
      800000000000DFE1C900B2B38500AEB18200AAAD8000A7A97C00A3A579009FA2
      77009B9F7400989B71008F946A00373A1F001F210A001C1F09001A1D0700181B
      0500161904001417020012150000000000000000000080808000808080008080
      8000808080008080800080808000808080008080800080808000808080008080
      8000808080007272720073737300515151002424240062675000A8A98500A9AA
      8600A8AA8500B0B1A4000E0E0E00F0F1E6009FA37C009DA17900999F75005D63
      4300000000003F3F3F003F3F3F00808080008080800080808000808080008080
      80008080800080808000808080008080800080808000C8CCB800A2A67B00A2A6
      7B00A2A67B00A2A67B00A2A67B00A2A67B00A2A67B00A2A67B00A2A67B00A2A6
      7B00A2A67B00A2A67B00A2A67B00A2A67B00A2A67B007B815D00000000008080
      8000808080008080800080808000808080008080800080808000808080008080
      8000808080008080800080808000808080008080800080808000808080008080
      80008080800060644C00B7C38600C7D59200C7D59200C7D59200C7D59200C4D1
      8F0061654E008080800080808000808080008080800080808000808080008080
      8000808080008080800080808000808080008080800080808000808080008080
      800000000000E7E8D200B5B78800B2B48500AEB08200AAAD7F00A6A97D00A3A5
      7A009FA2770096996E003B3E220022240D0020230C001E210A001C1F09001A1D
      0600181B05001619030014170200000000000000000080808000808080008080
      8000808080008080800080808000808080008080800080808000808080007F7F
      7F007373720071726E004C4D480033342E006C6F5A00A5A68500A2A48300A0A2
      82009D9E92002A2B29004E4E4D001E1E1D00EBECE000A1A57B009EA278009A9F
      76005D634300000000003F3F3F003F3F3F008080800080808000808080008080
      80008080800080808000808080008080800080808000C8CCB800A2A67B00A2A6
      7B00A2A67B00A2A67B00A2A67B00A2A67B00A2A67B00A2A67B00A2A67B00A2A6
      7B00A2A67B00A2A67B00A2A67B00A2A67B00A2A67B007B815D00000000008080
      8000808080008080800080808000808080008080800080808000808080008080
      8000808080008080800080808000808080008080800080808000808080008080
      80008080800061654E00B4BF8500C7D59200C7D59200C7D59200C7D59200C1CE
      8E00626650008080800080808000808080008080800080808000808080008080
      8000808080008080800080808000808080008080800080808000808080008080
      800000000000ECEDD900B9BA8A00B6B78700B2B48500AEB08200AAAD7F00A7A9
      7C009D9F7400424427002628100024260E0022240D0020230C001F210A001C1F
      08001A1D0700181B0500161A0400000000000000000080808000808080008080
      80008080800080808000808080008080800080808000818181007A7A79006F70
      6D006D6D690052534B00393B300071755A00A4A78200AAAC8800AFB28C00ACAE
      9A005052450076786C008D8E87007E7E7B002B2C2B00E6E7DC00A2A67B009EA2
      7900999E75005D634300000000003F3F3F003F3F3F0080808000808080008080
      80008080800080808000808080008080800080808000C8CCB800C8CCB800C8CC
      B800C8CCB800C8CCB800C8CCB800C8CCB800C8CCB800C8CCB800C8CCB800C8CC
      B800C8CCB800C8CCB800C8CCB800C8CCB800C8CCB800A2A67B00808080008080
      8000808080008080800080808000808080008080800080808000808080008080
      8000808080008080800080808000808080008080800080808000808080008080
      8000808080006B6D5E0089916600C7D59200C7D59200C7D59200C7D59200969F
      70006A6C5C008080800080808000808080008080800080808000808080008080
      8000808080008080800080808000808080008080800080808000808080008080
      800000000000F1F2DF00BDBE8E00B9BB8B00B6B78800B2B48500AEB08200A5A7
      7B0047492B002A2B1300282A120026281000989C710094986E0091956C008E92
      69008A8F6600868B6400181B0500000100000000000080808000808080008080
      800080808000808080008080800080808000808080007D7D7A0071716C007273
      6A0075766D00393A2F009D9F900093958700A4A69800BBBCB100C0C1B6006666
      600070726A0083847A00898B7D0093948700868781007A7A7800C3C3BA00CACA
      C000CACAC000CACAC0005D634300000000003F3F3F0080808000808080008080
      8000808080008080800080808000808080008080800080808000808080008080
      8000808080008080800080808000808080008080800080808000808080008080
      8000808080008080800080808000808080008080800080808000808080008080
      8000808080008080800080808000808080008080800080808000808080008080
      8000808080008080800080808000808080008080800080808000808080008080
      8000808080007D7D7B00626650008C946900B4BF8500B7C38600969F70006468
      52007D7D7B008080800080808000808080008080800080808000808080007F7F
      7E00808080008080800080808000808080008080800080808000808080008080
      800000000000F5F5E400C0C09000BDBE8D00B9BA8B00B6B78800AEAE81004C4E
      2F002E2F16002D2E14002A2C1300282A11009B9F740024260E0023250D002023
      0C001E210A008A8F66001A1D0600010400000000000080808000808080008080
      80008080800080808000808080007F7F7F00787876006C6C65006B6C63007374
      6B0076786D002B2C2300373833004F4F4D005A5B5900525250004D4E4B008B8C
      8A00AFAFB00098999800797A7600707169007D7F740087887F001D1D1A000202
      0200000000000000000000000000000000008080800080808000808080008080
      8000808080008080800080808000808080008080800080808000808080008080
      8000808080008080800080808000808080008080800080808000808080008080
      8000808080008080800080808000808080008080800080808000808080008080
      8000808080008080800080808000808080008080800080808000808080008080
      80007174670060664B0060664B00A4B07A00BFCC8D00BFCC8D00A3AB87008080
      800080808000808080007E7E7D006B6D5E0063675200646852006C6E5F007E7E
      7D0080808000808080008080800094988400BFCC8D00BFCC8D00B6C387006066
      4B0060664B006C705F0080808000808080008080800080808000808080008080
      800000000000F7F7E700C2C39200C0C19000BDBD8E00B4B68700515233003234
      1A00313218002E3016002D2E14002A2C13009FA277002C2E17003C3E2C003638
      250020230C008E9269001C1F0800040700000000000080808000808080008080
      80008080800080808000808080007D7D7C006F716B006E6F66006E6F66007273
      690065665F0089898700AFAFAF00A3A3A20071726D005F6058005A5C52005E60
      570077787200AFAFAE00B4B4B500757573005F605C00696963006A6A64007B7B
      7900808080008080800080808000808080008080800080808000808080008080
      8000808080008080800080808000808080008080800080808000808080008080
      8000808080000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000008080800080808000808080008080
      8000808080008080800080808000808080008080800080808000808080008080
      80007C7D790060664B0060664B0081896100BFCC8D00BFCC8D00BDCA8D008A8C
      8200808080008080800080808000808080008080800080808000808080008080
      8000808080008080800084858100B5C08B00BFCC8D00BFCC8D0095A070006066
      4B0060664B0075776E0080808000808080008080800080808000808080008080
      800000000000F8F9E900C6C69400C3C39200BDBD8C005556360037371D003536
      1B0033341A00313218002E3017002C2E1500A3A579002A2C14002E301A002A2C
      160023240D0092956C001E210A00060900000000000080808000808080008080
      80008080800080808000808080007B7B7A00666762005D5E590052534E005556
      50007E7E7A00B1B1B000AEAEAE006364610053554D005A5C52006D6E66007E7F
      7A005C5E530075776F00B1B2AF0093938F0064655F006C6D670062625D007677
      7200808080008080800080808000808080008080800080808000808080008080
      8000808080008080800080808000808080008080800080808000808080008080
      8000606060004F4F4F004F4F4F004F4F4F004F4F4F004F4F4F004F4F4F004F4F
      4F004F4F4F004F4F4F004F4F4F00000000008080800080808000808080008080
      8000808080008080800080808000808080008080800080808000808080008080
      800080808000666B550060664B0060664B00ADB98100BFCC8D00BFCC8D00B5C0
      8B00868781008080800080808000808080008080800080808000808080008080
      80008080800082828000ABB48900BFCC8D00BFCC8D00BCC98B00696F51006066
      4B00636850007F7F7E0080808000808080008080800080808000808080008080
      800000000000FAFBEC00C8C89600C3C392005A5A3A003B3B200039391E003737
      1C0035361B0033341A00313218002E301600A6AA7C002A2C1300282A12002628
      100024260E0094996F0021230C00090C00000000000080808000808080008080
      80008080800080808000808080007676750062635C0061615B004E4F4B004747
      450051514E006D6E680070716D00585955006D6F65005C5D59005B5C5B009F9F
      9F0075766F00686A5F007C7D74006869630050514D005C5C56006E6F65007A7A
      7400808080008080800080808000808080008080800080808000808080008080
      8000808080008080800080808000808080008080800080808000808080008080
      8000707070006060600060606000606060006060600060606000606060006060
      600060606000606060004F4F4F00000000008080800080808000808080008080
      8000808080008080800080808000808080008080800080808000808080008080
      800080808000787A730060664B0060664B00757D5A00BCC98B00BFCC8D00BFCC
      8D00B9C58C009498840080808000808080008080800080808000808080008080
      800090938300B1BB8A00BFCC8D00BFCC8D00BFCC8D00848D640060664B006066
      4B00727569008080800080808000808080008080800080808000808080008080
      800000000000FAFBED00C7C795005D5E3C003D3E22003C3C20003B3B20003839
      1E0037381D0034361B0033341A0031321800AAAD8000A7A97C00A3A579009FA3
      76009C9F7400979B710022250D000B0E00000000000080808000808080008080
      80008080800080808000808080007676750060615A006B6D630062635B005556
      51004B4B480046474400494A47004F504D006D6E690061626000404040006465
      630061625E005758520051514D004C4D49005F6058007C7D7300888982007172
      6E00808080008080800080808000808080008080800080808000808080008080
      8000808080008080800080808000808080008080800080808000808080008080
      8000707070006060600060606000606060006060600060606000606060006060
      600060606000606060004F4F4F00000000008080800080808000808080008080
      8000808080008080800080808000808080008080800080808000808080008080
      800080808000808080006B6F5D0060664B0060664B00848D6400BFCC8D00BFCC
      8D00BFCC8D00BFCC8D0080808000808080008080800080808000808080008080
      8000BFCC8D00BFCC8D00BFCC8D00BFCC8D0095A0700060664B0060664B00656A
      53007F7F7E008080800080808000808080008080800080808000808080008080
      800000000000F6F7E90060603E00404024003F4023003E3E22003C3C21003A3B
      200039391E0037381C0035361B0033331A00313218002E3016002D2E14002A2C
      1300282A120026280F0024260E000D1000000000000080808000808080008080
      80008080800080808000808080007C7C7C0062635D0064655D00676860006768
      600060615A00565752004D4D4A00494947004747450046474400484846004848
      46004B4C48004E4F4B005657510072736A0094958A0097998F00757571007272
      73007F7F7E008080800080808000808080008080800080808000808080008080
      8000808080008080800080808000808080008080800080808000808080008080
      8000707070007070700070707000707070007070700070707000707070007070
      7000707070007070700060606000808080008080800080808000808080008080
      8000808080008080800080808000808080008080800080808000808080008080
      800080808000808080007E7E7D00656A530060664B0060664B007E865F00B9C5
      8900BFCC8D00BFCC8D0080808000808080008080800080808000808080008080
      8000BFCC8D00BFCC8D00BFCC8D008A92680060664B0060664B0061674D007A7A
      7600808080008080800080808000808080008080800080808000808080008080
      8000000000009FA0950081827A00808177007E7E75007A7B720076776D007374
      6A006E6F6500696A5F00626357005B5B4F00545547004D4F4000454636003D3F
      2F003A3B2800333521002F311C00262713000000000080808000808080008080
      80008080800080808000808080008181810071726F005C5D57005F6059006465
      5E006A6B63006B6C63006B6C64006A6B63006A6C640064655F0060615A006667
      5F006F7067007E80750093948900A2A499009A9A9000767773006F6F6C007F7F
      7F00808080008080800080808000808080008080800080808000808080008080
      8000808080008080800080808000808080008080800080808000808080008080
      8000808080008080800080808000808080008080800080808000808080008080
      8000808080008080800080808000808080008080800080808000808080008080
      8000808080008080800080808000808080008080800080808000808080008080
      80008080800080808000808080007C7D79006468520060664B0060664B00696F
      510095A07000BFCC8D0080808000808080008080800080808000808080008080
      8000BFCC8D00A1AC79006C73540060664B0060664B0061674D00777971008080
      8000808080008080800080808000808080008080800080808000808080008080
      8000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000080808000808080008080
      8000808080008080800080808000818181008282830071716F005C5D56005F60
      5900686862006E6F67007172680077786E007F8075007F8175008E9084009C9E
      91009B9D900097988D0096988E0086877F0064645F00676763007F7F7F008080
      8000808080008080800080808000808080008080800080808000808080008080
      8000808080008080800080808000808080008080800080808000808080008080
      8000808080008080800080808000808080008080800080808000808080008080
      8000808080008080800080808000808080008080800080808000808080008080
      8000808080008080800080808000808080008080800080808000808080008080
      8000808080008080800080808000808080007D7E7B00676C570060664B006066
      4B0060664B0063694D0080808000808080008080800080808000808080008080
      8000696F510060664B0060664B0060664B00646852007A7A7600808080008080
      8000808080008080800080808000808080008080800080808000808080008080
      8000808080008080800080808000808080008080800080808000808080008080
      8000808080008080800080808000808080008080800080808000808080008080
      8000808080008080800080808000808080008080800080808000808080008080
      8000808080008080800080808000808080008080800081818100757673006666
      62005F5F590062635D0064655E006C6C65006F70680076776F007C7E75007C7D
      7600787972006C6D690062635F0060615D0071716E0080808000808080008080
      8000808080008080800080808000808080008080800080808000808080008080
      8000808080008080800080808000808080008080800080808000808080008080
      8000808080008080800080808000808080008080800080808000808080008080
      8000808080008080800080808000808080008080800080808000808080008080
      8000808080008080800080808000808080008080800080808000808080008080
      800080808000808080008080800080808000808080007F7F7E00727569006268
      4E0060664B0060664B0080808000808080008080800080808000808080008080
      800060664B0060664B0061674D006F7264007E7E7D0080808000808080008080
      8000808080008080800080808000808080008080800080808000808080008080
      8000808080008080800080808000808080008080800080808000808080008080
      8000808080008080800080808000808080008080800080808000808080008080
      8000808080007F7F7F007F7F7F007F7F7F008080800080808000808080008080
      8000808080008080800080808000808080008080800080808000818182008080
      8000767675006B6C68006666620065666200646460006464600061615D006161
      5D0063635F006B6B6800727270007C7D7C008181810080808000808080008080
      8000808080008080800080808000808080008080800080808000808080008080
      8000808080008080800080808000808080008080800080808000808080008080
      8000808080008080800080808000808080008080800080808000808080008080
      8000808080008080800080808000808080008080800080808000808080008080
      8000808080008080800080808000808080008080800080808000808080008080
      8000808080008080800080808000808080008080800080808000808080007E7E
      7D0072756900686D580080808000808080008080800080808000808080008080
      8000666B5500707366007C7D7900808080008080800080808000808080008080
      8000808080008080800080808000808080008080800080808000808080008080
      8000808080008080800080808000808080008080800080808000808080008080
      8000808080008080800080808000808080008080800080808000808080008080
      8000808080008080800080808000808080008080800080808000808080008080
      8000808080008080800080808000808080008080800080808000808080008080
      800081818100808080007F7F7E007E7E7E007E7E7D007E7E7D007E7E7D007E7E
      7E007F7F7F008080800080808000808080008080800080808000808080008080
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
      8000808080008080800080808000808080008080800080808000808080008080
      8000808080008080800080808000808080008080800080808000808080008080
      8000808080008080800080808000808080008080800080808000808080008080
      8000808080008080800080808000808080008080800080808000808080008080
      8000808080008080800080808000808080003B3B3B003B3B3B003B3B3B003B3B
      3B00808080003B3B3B003B3B3B003B3B3B003B3B3B00808080003B3B3B003B3B
      3B003B3B3B003B3B3B00808080003B3B3B003B3B3B003B3B3B003B3B3B008080
      8000808080008080800080808000808080008080800080808000808080008080
      8000808080003B3B3B003B3B3B003B3B3B003B3B3B00808080003B3B3B003B3B
      3B003B3B3B003B3B3B00808080003B3B3B003B3B3B003B3B3B003B3B3B008080
      80003B3B3B003B3B3B003B3B3B003B3B3B008080800080808000808080008080
      8000808080008080800080808000808080008080800080808000808080003B3B
      3B003B3B3B003B3B3B003B3B3B00808080003B3B3B003B3B3B003B3B3B003B3B
      3B00808080003B3B3B003B3B3B003B3B3B003B3B3B00808080003B3B3B003B3B
      3B003B3B3B003B3B3B0080808000808080008080800080808000808080008080
      80008080800080808000808080008080800080808000808080003B3B3B003B3B
      3B003B3B3B003B3B3B00808080003B3B3B003B3B3B003B3B3B003B3B3B008080
      80003B3B3B003B3B3B003B3B3B003B3B3B00808080003B3B3B003B3B3B003B3B
      3B003B3B3B008080800080808000808080008080800080808000808080008080
      80008080800080808000808080000000FF000000FF000000FF000000FF003B3B
      3B000000FF000000FF000000FF000000FF003B3B3B000000FF000000FF000000
      FF000000FF003B3B3B000000FF000000FF000000FF000000FF003B3B3B008080
      8000808080008080800080808000808080008080800080808000808080008080
      80000000FF000000FF000000FF000000FF003B3B3B000000FF000000FF000000
      FF000000FF003B3B3B000000FF000000FF000000FF000000FF003B3B3B000000
      FF000000FF000000FF000000FF003B3B3B008080800080808000808080008080
      80008080800080808000808080008080800080808000808080008A551A008A55
      1A008A551A008A551A003B3B3B008A551A008A551A008A551A008A551A003B3B
      3B008A551A008A551A008A551A008A551A003B3B3B008A551A008A551A008A55
      1A008A551A003B3B3B0080808000808080008080800080808000808080008080
      800080808000808080008080800080808000808080000000FF000000FF000000
      FF000000FF003B3B3B000000FF000000FF000000FF000000FF003B3B3B000000
      FF000000FF000000FF000000FF003B3B3B000000FF000000FF000000FF000000
      FF003B3B3B008080800080808000808080008080800080808000808080008080
      80008080800080808000808080000000FF000000FF000000FF000000FF008080
      80000000FF000000FF000000FF000000FF00808080000000FF000000FF000000
      FF000000FF00808080000000FF000000FF000000FF000000FF003B3B3B008080
      8000808080008080800080808000808080008080800080808000808080008080
      80000000FF000000FF000000FF000000FF00808080000000FF000000FF000000
      FF000000FF00808080000000FF000000FF000000FF000000FF00808080000000
      FF000000FF000000FF000000FF003B3B3B008080800080808000808080008080
      80008080800080808000808080008080800080808000808080008A551A000000
      FF000000FF000000FF00808080000000FF000000FF000000FF000000FF008080
      80000000FF000000FF000000FF000000FF00808080000000FF000000FF000000
      FF008A551A003B3B3B0080808000808080008080800080808000808080008080
      800080808000808080008080800080808000808080000000FF000000FF000000
      FF000000FF00808080000000FF000000FF000000FF000000FF00808080000000
      FF000000FF000000FF000000FF00808080000000FF000000FF000000FF000000
      FF003B3B3B008080800080808000808080008080800080808000808080008080
      80008080800080808000808080000000FF000000FF003B3B3B00808080008080
      8000808080008080800080808000808080008080800080808000808080008080
      8000808080008080800080808000808080000000FF000000FF003B3B3B008080
      8000808080008080800080808000808080008080800080808000808080008080
      80000000FF000000FF003B3B3B00808080008080800080808000808080008080
      8000808080008080800080808000808080008080800080808000808080008080
      8000808080000000FF000000FF003B3B3B008080800080808000808080008080
      80008080800080808000808080008080800080808000808080008A551A000000
      FF003B3B3B008080800080808000808080008080800080808000808080008080
      8000808080008080800080808000808080008080800080808000808080000000
      FF008A551A003B3B3B0080808000808080008080800080808000808080008080
      800080808000808080008080800080808000808080000000FF000000FF003B3B
      3B00808080008080800080808000808080008080800080808000808080008080
      80008080800080808000808080008080800080808000808080000000FF000000
      FF003B3B3B008080800080808000808080008080800080808000808080008080
      80008080800080808000808080000000FF000000FF0080808000808080008080
      8000808080008080800080808000808080008080800080808000808080008080
      8000808080008080800080808000808080000000FF000000FF00808080008080
      8000808080008080800080808000808080008080800080808000808080008080
      80000000FF000000FF0080808000808080008080800080808000808080008080
      8000808080008080800080808000808080008080800080808000808080008080
      8000808080000000FF000000FF00808080008080800080808000808080008080
      80008080800080808000808080008080800080808000808080008A551A000000
      FF00808080008080800080808000808080008080800080808000808080008080
      8000808080008080800080808000808080008080800080808000808080000000
      FF008A551A008080800080808000808080008080800080808000808080008080
      800080808000808080008080800080808000808080000000FF000000FF008080
      8000808080008080800080808000808080008080800080808000808080008080
      80008080800080808000808080008080800080808000808080000000FF000000
      FF00808080008080800080808000808080008080800080808000808080008080
      8000808080008080800080808000808080003B3B3B003B3B3B00808080008080
      8000808080008080800080808000808080008080800080808000808080008080
      800080808000808080008080800080808000808080003B3B3B003B3B3B008080
      8000808080008080800080808000808080008080800080808000808080008080
      8000808080003B3B3B003B3B3B00808080008080800080808000808080008080
      8000808080008080800080808000808080008080800080808000808080008080
      800080808000808080003B3B3B003B3B3B008080800080808000808080008080
      8000808080008080800080808000808080008080800080808000808080003B3B
      3B003B3B3B008080800080808000808080008080800080808000808080008080
      8000808080008080800080808000808080008080800080808000808080008080
      80003B3B3B003B3B3B0080808000808080008080800080808000808080008080
      80008080800080808000808080008080800080808000808080003B3B3B003B3B
      3B00808080008080800080808000808080008080800080808000808080008080
      8000808080008080800080808000808080008080800080808000808080003B3B
      3B003B3B3B008080800080808000808080008080800080808000808080008080
      80008080800080808000808080000000FF000000FF003B3B3B00808080008080
      8000808080008080800080808000808080008080800080808000808080008080
      8000808080008080800080808000808080000000FF000000FF003B3B3B008080
      8000808080008080800080808000808080008080800080808000808080008080
      80000000FF000000FF003B3B3B00808080008080800080808000808080008080
      8000808080008080800080808000808080008080800080808000808080008080
      8000808080000000FF000000FF003B3B3B008080800080808000808080008080
      80008080800080808000808080008080800080808000808080008A551A000000
      FF003B3B3B008080800080808000808080008080800080808000808080008080
      8000808080008080800080808000808080008080800080808000808080000000
      FF008A551A003B3B3B0080808000808080008080800080808000808080008080
      800080808000808080008080800080808000808080000000FF000000FF003B3B
      3B00808080008080800080808000808080008080800080808000808080008080
      80008080800080808000808080008080800080808000808080000000FF000000
      FF003B3B3B008080800080808000808080008080800080808000808080008080
      80008080800080808000808080000000FF000000FF003B3B3B00808080008080
      8000808080008080800080808000808080008080800080808000808080008080
      8000808080008080800080808000808080000000FF000000FF003B3B3B008080
      8000808080008080800080808000808080008080800080808000808080008080
      80000000FF000000FF003B3B3B00808080008080800080808000808080008080
      8000808080008080800080808000808080008080800080808000808080008080
      8000808080000000FF000000FF003B3B3B008080800080808000808080008080
      80008080800080808000808080008080800080808000808080008A551A000000
      FF003B3B3B008080800080808000808080008080800080808000808080008080
      8000808080008080800080808000808080008080800080808000808080000000
      FF008A551A003B3B3B0080808000808080008080800080808000808080008080
      800080808000808080008080800080808000808080000000FF000000FF003B3B
      3B00808080008080800080808000808080008080800080808000808080008080
      80008080800080808000808080008080800080808000808080000000FF000000
      FF003B3B3B008080800080808000808080008080800080808000808080008080
      80008080800080808000808080000000FF000000FF003B3B3B00808080008080
      8000808080008080800080808000808080008080800080808000808080008080
      8000808080008080800080808000808080000000FF000000FF003B3B3B008080
      8000808080008080800080808000808080008080800080808000808080008080
      80000000FF000000FF003B3B3B00808080008080800080808000808080008080
      8000808080008080800080808000808080008080800080808000808080008080
      8000808080000000FF000000FF003B3B3B008080800080808000808080008080
      80008080800080808000808080008080800080808000808080008A551A000000
      FF003B3B3B008080800080808000808080008080800080808000808080008080
      8000808080008080800080808000808080008080800080808000808080000000
      FF008A551A003B3B3B0080808000808080008080800080808000808080008080
      800080808000808080008080800080808000808080000000FF000000FF003B3B
      3B00808080008080800080808000808080008080800080808000808080008080
      80008080800080808000808080008080800080808000808080000000FF000000
      FF003B3B3B008080800080808000808080008080800080808000808080008080
      80008080800080808000808080000000FF000000FF0080808000808080008181
      8100818181008181810082828200818181008080810080808000808080008080
      8000808080008080800080808000808080000000FF000000FF00808080008080
      8000808080008080800080808000808080008080800080808000808080008080
      80000000FF000000FF0080808000808080008181810081818100818181008282
      8200818181008080810080808000808080008080800080808000808080008080
      8000808080000000FF000000FF00808080008080800080808000808080008080
      80008080800080808000808080008080800080808000808080008A551A000000
      FF00808080008080800080808000808080008080800080808000808080008080
      8000808080008080800080808000808080008080800080808000808080000000
      FF008A551A008080800080808000808080008080800080808000808080008080
      800080808000808080008080800080808000808080000000FF000000FF008080
      8000808080008080800080808000808080008080800080808000808080008080
      80008080800080808000808080008080800080808000808080000000FF000000
      FF00808080008080800080808000808080008080800080808000808080008080
      8000808080008080800080808000808080003C3C3C004C4C4C007B7B7B007373
      720070706F006F717000757574007A7A7A007E7E7D0082828200818181008080
      800080808000808080008080800080808000808080003B3B3B003B3B3B008080
      8000808080008080800080808000808080008080800080808000808080008080
      8000808080003C3C3C004949470063645F00595A52004F5146004D504600585A
      5100747473007E7E7D0082828200818181008080800080808000808080008080
      800080808000808080003B3B3B003B3B3B008080800080808000808080008080
      8000808080008080800080808000808080008080800080808000808080003C3C
      3C00808080008080800080808000808080008080800080808000808080008080
      8000808080008080800080808000808080008080800080808000808080008080
      80003B3B3B003B3B3B0080808000808080008080800080808000808080008080
      80008080800080808000808080008080800080808000808080003C3C3C004C4C
      4C00808080008080800080808000808080008080800080808000808080008080
      8000808080008080800080808000808080008080800080808000808080003B3B
      3B003B3B3B008080800080808000808080008080800080808000808080008080
      80008080800080808000808080002020DD004C4C97006B6D6100747668007D7E
      7500858678007E8073007D7F7300777870006E6F6B006A6A6800747472007F7F
      7F00808080008080800080808000808080000000FF000000FF003B3B3B008080
      8000808080008080800080808000808080008080800080808000808080007374
      71002D2E930040424300494C3C00535645005B5E4D00686C58006D705B006265
      5200535645005153450065665F00757572007F7F7F0080808000808080008080
      8000808080000000FF000000FF003B3B3B008080800080808000808080008080
      8000808080008080800080808000808080008080800073747100774916004042
      4300808080008080800080808000808080008080800080808000808080008080
      800080808000808080007F7F7F00808080008080800080808000808080000000
      FF008A551A003B3B3B0080808000808080008080800080808000808080008080
      800080808000808080008080800080808000808080002020DD004C4C97006B6D
      6100808080008080800080808000808080008080800080808000808080008080
      80008080800080808000808080008080800080808000808080000000FF000000
      FF003B3B3B008080800080808000808080008080800080808000808080008080
      8000828283007E7E7D0076776F0063655D00686B5A00777A630085887100898D
      750095977F009EA28800A0A38900A2A58C00AEB199009B9D8F007B7C76006C6D
      6C007F7F7F008080800080808000808080000000FF000000FF003B3B3B008080
      80008080800080808000808080008080800080808000828283005F6158004B4D
      3F004D50410061635100686A56006D705C00757863007F826C00858972008488
      710082856E00787B66006467540060625200707268007F7F7E00808080008080
      8000808080000000FF000000FF003B3B3B008080800080808000808080008080
      8000808080008080800080808000828283008080800080808000808080008080
      8000808080008080800080808000808080008080800080808000808080008080
      8000808080008080800080808000808080008080800080808000808080000000
      FF008A551A003B3B3B0080808000808080008080800080808000808080008080
      8000808080008080800080808000808080008080800080808000808080008080
      8000808080008080800080808000808080008080800080808000808080008080
      80008080800080808000808080008080800080808000808080000000FF000000
      FF003B3B3B008080800080808000808080008080800080808000808080008181
      81007A7A740065675700646751006A6C580073756000686B56005F624E008284
      7200A8AA9C00ABADA100A5A69A00898C7D008588740091957A00A5A88E008D8E
      820072736F007A7A790080808000808080000000FF000000FF003B3B3B008080
      8000808080008080800080808000808080008181810055574B00444637005053
      4000595B490060624F005E604D00686A560070725E007B7E6900888B74009A9D
      8400A4A891009DA189008C8F77007F826C006A6D5B0064665700777774008080
      8000808080000000FF000000FF003B3B3B008080800080808000808080008080
      8000808080008080800080808000808080008080800080808000808080008080
      8000808080008080800080808000808080008080800080808000808080008080
      8000808080008080800080808000808080008080800080808000808080000000
      FF008A551A003B3B3B0080808000808080008080800080808000808080008080
      8000808080008080800080808000808080008080800080808000808080008080
      8000808080008080800080808000808080008080800080808000808080008080
      80008080800080808000808080008080800080808000808080000000FF000000
      FF003B3B3B0080808000808080008080800080808000808080007F7F7F007071
      6C00585A490056584500656755006B6F5A00555845006E7065009D9E9900B4B5
      B100A4A49F009A9C9500BFC0BC00DEDEDF00B0B1AF0073746D00606352007B7E
      68008F917E0068695D0075757200808080000202FE000000FF00808080008080
      80008080800080808000808080007F7F7F005E60570042453500494C3A005557
      4600535544004B4D3D004A4C3D004E503F004E50400053564500595B4A00787B
      660080836E008A8C7600A4A78D00999C830093967F00777A6600606254007272
      6F00808080000202FE000000FF00808080008080800080808000808080008080
      8000808080000000000000000000000000000000000000000000808080008080
      8000000000008080800080808000808080000000000080808000808080005454
      54001414140002020200161616005E5E5E008080800080808000808080000000
      FF008A551A008080800080808000808080008080800080808000808080001010
      10006A6A6A0080808000808080006A6A6A001010100080808000808080008080
      8000535353000606060000000000808080008080800080808000808080005353
      53000606060000000000808080008080800080808000808080000202FE000000
      FF008080800080808000808080008080800080808000808080007A7A79005F62
      56005C5F4C005D5F4D00646753004B4D3F0092928E00DDDDDD00C6C6C3006364
      5A003E413000343824003D402F006F716500DEDEDC00E8E8E9006A6A66003F40
      3900515245004C4E3F005E6054007D7D7C00808080003B3B3B003B3B3B008080
      80008080800080808000808080007A7A79004C4F410047493A0038392E002D2F
      25001E1F180013140E0010110C0010110C0010110C0010110C0010110C001011
      0C002F3027003E4034005B5D4E007D7F6B007F826D007D7F6B00595C4B00585A
      4F007D7D7C00808080003B3B3B003B3B3B008080800080808000808080008080
      8000808080008080800080808000000000008080800080808000808080008080
      8000000000008080800080808000808080000000000080808000808080002A2A
      2A00696969007C7C7C00555555000C0C0C0080808000808080007D7D7C008080
      80003B3B3B003B3B3B0080808000808080008080800080808000808080003232
      3200484848008080800080808000484848003232320080808000808080008080
      8000101010006060600080808000808080008080800080808000808080001010
      100060606000808080008080800080808000808080007D7D7C00808080003B3B
      3B003B3B3B008080800080808000808080008080800080808000767674004C4E
      44003B3C320024261D002B2C20007C7D7400E2E2E000DCDCDB0047494200272A
      1B00343924005A5D4D007D7F7400393C27006A6E5E00E2E3DE00A6A69D00484A
      3F00585A4F0042433800656659007E7E7D000101FF000000FF003B3B3B008080
      800080808000808080008080800076767400414339001A1B140013140E001011
      0C0010110C0011120C0011120D0013140F001718120017181300151611001618
      120017181200151610001819130021221B0022231C0033352D003F4036005758
      4C007B7B7A000101FF000000FF003B3B3B008080800080808000808080008080
      8000808080008080800080808000000000008080800080808000808080008080
      8000000000008080800080808000808080000000000080808000808080008080
      800080808000808080005C5C5C000808080080808000808080007B7B7A000000
      FF008A551A003B3B3B0080808000808080008080800080808000808080005353
      5300000000000000000000000000000000005454540080808000808080008080
      8000000000007E7E7E0080808000808080008080800080808000808080000000
      00007E7E7E00808080008080800080808000808080007E7E7D000101FF000000
      FF003B3B3B00808080008080800080808000808080007F7F7F006D6D6A004446
      3900424337001D1E17000E0F0B0022231C005B5D510061625A0030322A005A5E
      4B00383A320037383700BDBDBD006B6D5E0050543E00787A6900515346002022
      1B0038392C005C5E4B0073746600464645000000FF000000FF003B3B3B008080
      800080808000808080007F7F7F006D6D6A002C2D240014151000151610002426
      1D00292B220033352A003C3D33003C3E320046483B005E615000696C5A007073
      60006A6B5C0073756500787A6C0080837100898C790083857300858872005B5D
      4E00444542000000FF000000FF003B3B3B008080800080808000808080008080
      80007F7F7F008080800080808000000000008080800080808000808080008080
      8000000000008080800080808000808080000000000080808000808080006565
      6500292929000E0E0E00050505004C4C4C008080800080808000444542000000
      FF008A551A003B3B3B0080808000808080008080800080808000808080007474
      7400070707007E7E7E007E7E7E00070707007575750080808000808080008080
      8000000000008080800080808000808080008080800080808000808080000000
      00008080800080808000808080008080800073746600464645000000FF000000
      FF003B3B3B0080808000808080008080800080808000818181006D6D6B004143
      3400575A4700444637002B2D2300161610000C0E090012140F001F211A005A5C
      53004344400000000000494A470043453C002F31240023231A00191A13003E40
      3100787B660090938200575868000B0BF1000000FF000000FF003B3B3B008080
      80008080800080808000818181006D6D6B0037382B00474939003E403300494B
      3C0052544300535545005E6150006568560071746100878A76009C9F8B00A2A6
      9200A8AB97009FA38D00929682008E917D009699830091947D00616453003D3F
      35000B0BF1000000FF000000FF003B3B3B008080800080808000808080008080
      8000818181008080800080808000000000008080800080808000808080008080
      80000000000077777700808080007C7C7C000101010080808000808080000E0E
      0E00444444006A6A6A007C7C7C008080800080808000808080000000FF000000
      FF008A551A003B3B3B0080808000808080008080800080808000808080008080
      8000161616006464640063636300171717008080800080808000808080008080
      8000000000008080800080808000808080008080800080808000808080000000
      000080808000808080008080800080808000575868000B0BF1000000FF000000
      FF003B3B3B008080800080808000808080008080800084848400787978004447
      3A00484A3B004F5141004F514000414334002D2F25001A1B140012130E000E0F
      0B000D0E090010110C0010110C00171810001D1E16002D2E220064675500A7A9
      9300AEB19D00696A6200434480000303FB000000FF000000FF00808080008080
      80008080800080808000848484007879780044473A00484A3B004F5141005052
      4100505241005E604F00676A570072756200878A7700A0A49000ACB09800BCBF
      A800BEC1AA00B9BCA400A9AD9700A9AD98009A9D890073766600484B3E004344
      80000303FB000000FF000000FF00808080008080800080808000808080008080
      8000848484008080800080808000000000008080800080808000808080008080
      8000000000003C3C3C007A7A7A004E4E4E001414140080808000808080000A0A
      0A00595959007C7C7C006E6E6E002F2F2F0080808000774916008A551A008A55
      1A008A551A008080800080808000808080008080800080808000808080008080
      8000383838004242420042424200383838008080800080808000808080008080
      8000000000008080800080808000808080008080800080808000808080000000
      000080808000808080008080800080808000434480000303FB000000FF000000
      FF00808080008080800080808000808080008080800084848400818282006364
      5F00393B2E003F413300494B3C00555746005658470057594800545646005558
      4800494B3E00414335004D4E3F005E614F007D806A00A5A89100C4C8B200B3B4
      A0006D6E66005B5C56007E7F7E00808080008080800080808000808080008080
      80008080800080808000848484008182820063645F00393B2E003F413300494B
      3C0055574600585A490061635100767966008E917D00A7AA9300C0C3AD00C4C8
      B200C4C8B200B8BCA400AFB29D008D907F006364580047493E0056574F007E7F
      7E00808080008080800080808000808080008080800080808000808080008080
      8000848484008080800080808000000000008080800080808000808080008080
      8000000000004C4C4C00090909000A0A0A005959590080808000808080005C5C
      5C0016161600020202000F0F0F004F4F4F00808080007E7F7E00808080008080
      8000808080008080800080808000808080008080800080808000808080008080
      80005959590021212100212121005A5A5A008080800080808000808080008080
      8000000000008080800080808000808080008080800080808000808080000000
      0000808080008080800080808000808080007E7F7E0080808000808080008080
      8000808080008080800080808000808080008080800086868600818181008484
      850063635E00383B2C003F403200505144005C5E4E00626451006E715D007E80
      6A007F816A009CA08700B8BCA100B5B99F00ADB09900ACAF9C008C8E7E004849
      3E004E4F47007E7E7E0080808000808080008080800080808000808080008080
      8000808080008080800086868600818181008484850063635E00383B2C003F40
      3200505144005C5E4E0062645100717560008A8D7700A3A78F00B5B9A000C2C5
      AF00C2C6B000A3A691006B6D600058594E0044473B004E4F47007E7E7E008080
      8000808080008080800080808000808080008080800080808000808080008080
      8000868686008080800080808000000000008080800080808000808080008080
      8000808080008080800080808000808080008080800080808000808080008080
      8000808080008080800080808000808080008080800080808000808080008080
      8000808080008080800080808000808080008080800080808000808080008080
      8000797979000606060006060600797979008080800080808000808080008080
      8000000000008080800080808000808080008080800080808000808080000000
      0000808080008080800080808000808080008080800080808000808080008080
      8000808080008080800080808000808080008080800085858500808080008080
      8000828282006A6B66004D4D45003E3F330044463A00494A3C0058594A005F61
      51006C6E5F00797C6A00797B6D0070736500595A520045463E0041423A006161
      5C007F7F7F008080800080808000808080008080800080808000808080008080
      80008080800080808000858585008080800080808000828282006A6B66004D4D
      45003E3F330044463A00494A3C0058594A006062520073756500808471006C6E
      60005D5F54004849410044453D0042433C0063635D007F7F7F00808080008080
      8000808080008080800080808000808080008080800080808000808080008080
      8000858585000000000000000000000000000000000000000000808080008080
      8000808080008080800080808000808080008080800080808000808080008080
      8000808080008080800080808000808080008080800080808000808080008080
      8000808080008080800080808000808080008080800080808000808080008080
      8000808080001C1C1C001D1D1D00808080008080800080808000808080008080
      8000000000008080800080808000808080008080800080808000808080000000
      0000808080008080800080808000808080008080800080808000808080008080
      8000808080008080800080808000808080008080800081818100808080008080
      800080808000838384007F7F7F006C6C6900565750004B4C43004A4C43004748
      3F004748400042423A0041423A0044443D0053534D005E5E5900757674008383
      8300808080008080800080808000808080008080800080808000808080008080
      8000808080008080800081818100808080008080800080808000838384007F7F
      7F006C6C6900565750004B4C43004A4C430047483F004748400042423A004142
      3A0044443D0054544E0060605C00787978008282820080808000808080008080
      8000808080008080800080808000808080008080800080808000808080008080
      8000818181008080800080808000808080008080800080808000808080008080
      8000808080008080800080808000808080008080800080808000808080008080
      8000808080008080800080808000808080008080800080808000808080008080
      8000808080008080800080808000808080008080800080808000808080008080
      8000808080008080800080808000808080008080800080808000000000000000
      0000000000008080800080808000808080008080800000000000000000000000
      0000808080008080800080808000808080008080800080808000808080008080
      8000808080008080800080808000808080008080800080808000808080008080
      8000808080008080800080808100828282007F7F7F007D7D7C007B7B7B007B7B
      7A007B7B7A007B7B7A007C7C7C007D7D7C007E7E7E0082828200818182008080
      8000808080008080800080808000808080008080800080808000808080008080
      8000808080008080800080808000808080008080800080808000808080008080
      8100828282007F7F7F007D7D7C007B7B7B007B7B7A007B7B7A007B7B7A007C7C
      7C007D7D7C007E7E7E0082828200818182008080800080808000808080008080
      8000808080008080800080808000808080008080800080808000808080008080
      8000808080008080800080808000808080008080800080808000808080008080
      8000808080008080800080808000808080008080800080808000808080008080
      8000808080008181820080808000808080008080800080808000808080008080
      8000808080008080800080808000808080008080800080808000808080008080
      80008080800080808000808080008080800080808100828282007F7F7F008080
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
      8000808080008080800080808000808080008080800080808000808080008080
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
end
