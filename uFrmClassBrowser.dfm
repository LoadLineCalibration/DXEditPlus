object frmClassBrowser: TfrmClassBrowser
  Left = 0
  Top = 0
  Caption = 'frmClassBrowser'
  ClientHeight = 403
  ClientWidth = 442
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  Menu = mnuClassBrowser
  Position = poOwnerFormCenter
  OnShow = FormShow
  TextHeight = 15
  object Splitter: TSplitter
    Left = 0
    Top = 228
    Width = 442
    Height = 3
    Cursor = crVSplit
    Align = alBottom
    ExplicitLeft = -40
    ExplicitTop = 327
    ExplicitWidth = 445
  end
  object pnlTree: TEsPanel
    Left = 0
    Top = 57
    Width = 442
    Height = 171
    Align = alClient
    TabOrder = 0
    FrameStyle = Down
    object TreeClasses: TTreeView
      Left = 1
      Top = 1
      Width = 440
      Height = 169
      Align = alClient
      Color = clCream
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = 'Verdana'
      Font.Style = []
      HideSelection = False
      Indent = 19
      ParentFont = False
      SortType = stText
      TabOrder = 0
      OnChange = TreeClassesChange
      OnEditing = TreeClassesEditing
      OnExpanding = TreeClassesExpanding
      OnKeyDown = TreeClassesKeyDown
      OnMouseDown = TreeClassesMouseDown
    end
  end
  object pnlPackages: TEsPanel
    Left = 0
    Top = 231
    Width = 442
    Height = 172
    Align = alBottom
    TabOrder = 1
    FrameStyle = Down
    object PackagesList: TCheckListBox
      AlignWithMargins = True
      Left = 4
      Top = 4
      Width = 434
      Height = 164
      Align = alClient
      BorderStyle = bsNone
      Color = 13887443
      Flat = False
      Font.Charset = RUSSIAN_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Verdana'
      Font.Style = []
      HeaderBackgroundColor = 13887443
      ItemHeight = 20
      Items.Strings = (
        'Core'
        'Engine'
        'SomePackage'
        'AnotherPackage'
        'Test')
      ParentFont = False
      Style = lbOwnerDrawFixed
      TabOrder = 0
    end
  end
  object pnlOptions: TEsPanel
    Left = 0
    Top = 0
    Width = 442
    Height = 57
    Align = alTop
    TabOrder = 2
    FrameStyle = Flat
    DesignSize = (
      442
      57)
    object chkActorsOnly: TCheckBox
      Left = 9
      Top = 10
      Width = 153
      Height = 17
      Caption = 'Actor classes only'
      Checked = True
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Verdana'
      Font.Style = []
      ParentFont = False
      State = cbChecked
      TabOrder = 0
      OnClick = chkActorsOnlyClick
    end
    object edtClassSearch: TLabeledEdit
      Left = 248
      Top = 7
      Width = 135
      Height = 22
      Anchors = [akLeft, akTop, akRight]
      EditLabel.Width = 76
      EditLabel.Height = 22
      EditLabel.Caption = 'Find in tree:'
      EditLabel.Font.Charset = DEFAULT_CHARSET
      EditLabel.Font.Color = clWindowText
      EditLabel.Font.Height = -12
      EditLabel.Font.Name = 'Verdana'
      EditLabel.Font.Style = []
      EditLabel.ParentFont = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Verdana'
      Font.Style = []
      LabelPosition = lpLeft
      ParentFont = False
      TabOrder = 1
      Text = ''
      TextHint = 'Search '
      OnKeyDown = edtClassSearchKeyDown
    end
    object btnStartClassSearch: TButton
      Left = 385
      Top = 8
      Width = 50
      Height = 22
      Anchors = [akTop, akRight]
      Caption = 'Go >'
      TabOrder = 2
      OnClick = btnStartClassSearchClick
    end
    object chkShowPackages: TCheckBox
      Left = 9
      Top = 33
      Width = 153
      Height = 17
      Caption = 'Show packages'
      Checked = True
      State = cbChecked
      TabOrder = 3
      OnClick = chkShowPackagesClick
    end
    object btnQuickJump: TButton
      Left = 168
      Top = 31
      Width = 117
      Height = 21
      Caption = 'Quick Jump...'
      TabOrder = 4
      OnClick = btnQuickJumpClick
    end
  end
  object mnuClassBrowser: TMainMenu
    Left = 308
    object File1: TMenuItem
      Caption = 'File'
      object OpenPackage1: TMenuItem
        Caption = 'Open package...'
      end
      object Savecheckedpackages1: TMenuItem
        Caption = 'Save checked packages'
      end
      object N4: TMenuItem
        Caption = '-'
      end
      object ExportCheckedPackages1: TMenuItem
        Caption = 'Export checked packages'
      end
      object Exportmodifiedscripts1: TMenuItem
        Caption = 'Export modified scripts'
      end
      object Exportallscripts1: TMenuItem
        Caption = 'Export all scripts'
      end
    end
    object view1: TMenuItem
      Caption = 'View'
      object mi_FollowMainWindow: TMenuItem
        AutoCheck = True
        Caption = 'Follow main window'
        OnClick = mi_FollowMainWindowClick
      end
      object N8: TMenuItem
        Caption = '-'
      end
      object DocktoMasterBrowser1: TMenuItem
        Caption = 'Dock to MasterBrowser'
      end
    end
  end
  object pm_ClassTree: TPopupMenu
    Left = 140
    Top = 79
    object Addnewclass1: TMenuItem
      Caption = 'Add new class...'
    end
    object mnuViewScript: TMenuItem
      Caption = 'View script'
      OnClick = mnuViewScriptClick
    end
    object Deletethisclass1: TMenuItem
      Caption = 'Delete this class'
    end
    object N1: TMenuItem
      Caption = '-'
    end
    object SelectActorsofthisclass1: TMenuItem
      Caption = 'Select Actors of '#1057'lass'
    end
    object SelectActorsofSubClass1: TMenuItem
      Caption = 'Select Actors of SubClass'
    end
    object Defaultproperties1: TMenuItem
      Caption = 'Default properties...'
    end
    object N2: TMenuItem
      Caption = '-'
    end
    object ExpandAll1: TMenuItem
      Caption = 'Expand All'
      OnClick = ExpandAll1Click
    end
    object CollapseAll1: TMenuItem
      Caption = 'Collapse All'
      OnClick = CollapseAll1Click
    end
  end
  object pm_QuickJump: TPopupMenu
    AutoHotkeys = maManual
    Left = 40
    Top = 73
    object N3: TMenuItem
      Caption = 'One'
      OnClick = QuickJumpItemClick
    end
  end
end
