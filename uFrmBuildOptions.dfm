object frmBuildOptions: TfrmBuildOptions
  Left = 0
  Top = 0
  BorderStyle = bsDialog
  Caption = 'Build'
  ClientHeight = 531
  ClientWidth = 390
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  Position = poMainFormCenter
  ShowHint = True
  OnShow = FormShow
  TextHeight = 15
  object PageControl1: TPageControl
    AlignWithMargins = True
    Left = 4
    Top = 4
    Width = 382
    Height = 493
    Margins.Left = 4
    Margins.Top = 4
    Margins.Right = 4
    Margins.Bottom = 4
    ActivePage = tsBuild
    Align = alTop
    Style = tsButtons
    TabOrder = 0
    object tsBuild: TTabSheet
      Caption = 'Build'
      object Label3: TLabel
        Left = 0
        Top = 420
        Width = 257
        Height = 31
        Alignment = taRightJustify
        AutoSize = False
        Caption = 'Set required options and click'
      end
      object Bevel1: TBevel
        Left = 0
        Top = 458
        Width = 374
        Height = 2
        Align = alBottom
        Shape = bsTopLine
        ExplicitTop = 495
        ExplicitWidth = 390
      end
      object GroupBox1: TGroupBox
        Left = 0
        Top = 0
        Width = 374
        Height = 217
        Caption = 'Geometry and BSP'
        DefaultHeaderFont = False
        HeaderFont.Charset = DEFAULT_CHARSET
        HeaderFont.Color = clWindowText
        HeaderFont.Height = -12
        HeaderFont.Name = 'Verdana'
        HeaderFont.Style = [fsBold]
        TabOrder = 0
        object Label1: TLabel
          Left = 16
          Top = 184
          Width = 74
          Height = 15
          Caption = 'Minimize cuts'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Segoe UI'
          Font.Style = []
          ParentFont = False
        end
        object Label2: TLabel
          Left = 296
          Top = 184
          Width = 65
          Height = 15
          Alignment = taRightJustify
          Caption = 'Balance Tree'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Segoe UI'
          Font.Style = []
          ParentFont = False
        end
        object lblTreeCutsValue: TLabel
          Left = 151
          Top = 184
          Width = 66
          Height = 15
          Alignment = taCenter
          AutoSize = False
          Caption = 'lblTreeCutsValue'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Segoe UI'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object chkRebuildGeometry: TCheckBox
          Left = 16
          Top = 24
          Width = 129
          Height = 17
          Caption = 'Rebuild Geometry'
          Checked = True
          State = cbChecked
          TabOrder = 0
        end
        object chkRebuildBSP: TCheckBox
          Left = 16
          Top = 47
          Width = 129
          Height = 17
          Caption = 'Rebuild BSP'
          Checked = True
          State = cbChecked
          TabOrder = 1
        end
        object rgOptimizationLvl: TRadioGroup
          Left = 16
          Top = 70
          Width = 129
          Height = 82
          Caption = 'Optimization:'
          DefaultHeaderFont = False
          HeaderFont.Charset = DEFAULT_CHARSET
          HeaderFont.Color = clWindowText
          HeaderFont.Height = -12
          HeaderFont.Name = 'Verdana'
          HeaderFont.Style = [fsBold]
          ItemIndex = 1
          Items.Strings = (
            'Lame'
            'Good'
            'Optimal')
          TabOrder = 2
        end
        object GroupBox2: TGroupBox
          Left = 151
          Top = 70
          Width = 210
          Height = 82
          Caption = 'BSP Rebuild options'
          DefaultHeaderFont = False
          HeaderFont.Charset = DEFAULT_CHARSET
          HeaderFont.Color = clWindowText
          HeaderFont.Height = -12
          HeaderFont.Name = 'Verdana'
          HeaderFont.Style = [fsBold]
          TabOrder = 3
          object chkOptimizeGeometry: TCheckBox
            Left = 16
            Top = 25
            Width = 161
            Height = 17
            Caption = 'Optimize Geometry'
            Checked = True
            State = cbChecked
            TabOrder = 0
          end
          object chkBuildVisZones: TCheckBox
            Left = 16
            Top = 48
            Width = 161
            Height = 17
            Caption = 'Build Visibility Zones'
            Checked = True
            State = cbChecked
            TabOrder = 1
          end
        end
        object tbTreeCuts: TTrackBar
          Left = 16
          Top = 159
          Width = 345
          Height = 26
          Max = 100
          Position = 15
          PositionToolTip = ptTop
          TabOrder = 4
          TickMarks = tmBoth
          TickStyle = tsNone
          OnChange = tbTreeCutsChange
        end
      end
      object GroupBox3: TGroupBox
        Left = 0
        Top = 223
        Width = 374
        Height = 98
        Caption = 'Lighting'
        DefaultHeaderFont = False
        HeaderFont.Charset = DEFAULT_CHARSET
        HeaderFont.Color = clWindowText
        HeaderFont.Height = -12
        HeaderFont.Name = 'Verdana'
        HeaderFont.Style = [fsBold]
        TabOrder = 1
        object chkRebuildLighting: TCheckBox
          Left = 16
          Top = 24
          Width = 129
          Height = 17
          Caption = 'Rebuild lighting'
          Checked = True
          State = cbChecked
          TabOrder = 0
        end
        object chkApplySelectedLights: TCheckBox
          Left = 32
          Top = 47
          Width = 281
          Height = 34
          Caption = 
            'Apply selected lights and lights in selected zone descriptors on' +
            'ly.'
          TabOrder = 1
          WordWrap = True
        end
      end
      object GroupBox4: TGroupBox
        Left = 0
        Top = 327
        Width = 374
        Height = 87
        Caption = 'AI Paths'
        DefaultHeaderFont = False
        HeaderFont.Charset = DEFAULT_CHARSET
        HeaderFont.Color = clWindowText
        HeaderFont.Height = -12
        HeaderFont.Name = 'Verdana'
        HeaderFont.Style = [fsBold]
        TabOrder = 2
        object chkDefinePaths: TCheckBox
          Left = 16
          Top = 24
          Width = 129
          Height = 17
          Caption = 'Define paths'
          Checked = True
          State = cbChecked
          TabOrder = 0
        end
        object btnDefinePaths: TButton
          Left = 16
          Top = 47
          Width = 113
          Height = 25
          Hint = 'Build paths from placed NavigationPoints'
          Caption = 'Define paths now'
          TabOrder = 1
          OnClick = btnDefinePathsClick
        end
        object btnUndefinePaths: TButton
          Left = 135
          Top = 47
          Width = 113
          Height = 25
          Hint = 'Remove all built paths, NavigationPoints will stay'
          Caption = 'Undefine paths'
          TabOrder = 2
          OnClick = btnUndefinePathsClick
        end
        object btnAutoBuildPaths: TButton
          Left = 254
          Top = 48
          Width = 107
          Height = 25
          Hint = 'Generate paths automatically'
          Caption = 'AutoPaths...'
          TabOrder = 3
          OnClick = btnAutoBuildPathsClick
        end
      end
      object btnStartBuild: TButton
        Left = 296
        Top = 420
        Width = 75
        Height = 31
        Caption = 'Build'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Segoe UI'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 3
      end
    end
    object tsStats: TTabSheet
      Caption = 'Stats'
      ImageIndex = 1
      object mmoStats: TMemo
        Left = 0
        Top = 0
        Width = 374
        Height = 460
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
        ExplicitHeight = 454
      end
    end
  end
  object btnCloseBuilder: TButton
    Left = 8
    Top = 498
    Width = 75
    Height = 25
    Caption = 'Close'
    TabOrder = 1
    OnClick = btnCloseBuilderClick
  end
  object btnRefreshStats: TButton
    Left = 264
    Top = 498
    Width = 118
    Height = 25
    Caption = 'View/Refresh Stats'
    TabOrder = 2
    OnClick = btnRefreshStatsClick
  end
  object AutoPathsPopup: TPopupMenu
    Left = 240
    Top = 264
    object PATHSBUILDLOWOPT1: TMenuItem
      Caption = 'PATHS BUILD LOWOPT'
      OnClick = PATHSBUILDLOWOPT1Click
    end
    object PATHSBUILD1: TMenuItem
      Caption = 'PATHS BUILD (Medium opt)'
      OnClick = PATHSBUILD1Click
    end
    object PATHSBUILDHIGHOPT1: TMenuItem
      Caption = 'PATHS BUILD HIGHOPT'
      OnClick = PATHSBUILDHIGHOPT1Click
    end
  end
end
