object frmMeshViewer: TfrmMeshViewer
  Left = 0
  Top = 0
  Caption = 'Mesh Browser'
  ClientHeight = 490
  ClientWidth = 409
  Color = clBtnFace
  Constraints.MinHeight = 400
  Constraints.MinWidth = 300
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  Position = poMainFormCenter
  ShowHint = True
  OnClose = FormClose
  OnCreate = FormCreate
  OnShow = FormShow
  TextHeight = 15
  object MeshViewport: TEsPanel
    Left = 0
    Top = 220
    Width = 409
    Height = 270
    Align = alClient
    TabOrder = 0
    OnResize = MeshViewportResize
    FrameStyle = Chess
    ExplicitTop = 184
    ExplicitWidth = 502
    ExplicitHeight = 296
  end
  object GroupBox1: TGroupBox
    AlignWithMargins = True
    Left = 3
    Top = 3
    Width = 403
    Height = 214
    Align = alTop
    Caption = 'Controls'
    DefaultHeaderFont = False
    HeaderFont.Charset = DEFAULT_CHARSET
    HeaderFont.Color = clWindowText
    HeaderFont.Height = -12
    HeaderFont.Name = 'Segoe UI'
    HeaderFont.Style = [fsBold]
    TabOrder = 1
    ExplicitWidth = 496
    DesignSize = (
      403
      214)
    object Label1: TLabel
      AlignWithMargins = True
      Left = 5
      Top = 20
      Width = 80
      Height = 189
      Align = alLeft
      Alignment = taRightJustify
      AutoSize = False
      Caption = 'Packages:'#13#10#13#10'Meshes:'#13#10#13#10'Animations:'#13#10'(Name/Num/'#13#10'NumFrames)'
      ExplicitTop = 32
    end
    object lblFrame: TLabel
      Left = 171
      Top = 179
      Width = 217
      Height = 25
      AutoSize = False
      Caption = 'lblFrame'
      Layout = tlCenter
    end
    object cmbMeshes: TComboBox
      Left = 95
      Top = 46
      Width = 241
      Height = 22
      Style = csOwnerDrawFixed
      Anchors = [akLeft, akTop, akRight]
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Verdana'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
      OnChange = cmbMeshesChange
      ExplicitWidth = 334
    end
    object lbAnimSeq: TListBox
      Left = 95
      Top = 74
      Width = 200
      Height = 99
      Style = lbOwnerDrawFixed
      Anchors = [akLeft, akTop, akRight]
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Verdana'
      Font.Style = []
      Items.Strings = (
        '123'
        '123'
        '5555'
        '6666'
        '8888'
        '99999'
        '555'
        '555'
        '777'
        '777'
        '33333')
      ParentFont = False
      TabOrder = 1
      OnClick = lbAnimSeqClick
      OnDrawItem = lbAnimSeqDrawItem
      ExplicitWidth = 293
    end
    object btnPrevMesh: TButton
      Left = 342
      Top = 45
      Width = 26
      Height = 22
      Anchors = [akTop, akRight]
      Caption = '3'
      Font.Charset = SYMBOL_CHARSET
      Font.Color = clWindowText
      Font.Height = -19
      Font.Name = 'Marlett'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 2
      OnClick = btnPrevMeshClick
      ExplicitLeft = 435
    end
    object btnNextMesh: TButton
      Left = 370
      Top = 46
      Width = 26
      Height = 22
      Anchors = [akTop, akRight]
      Caption = '4'
      Font.Charset = SYMBOL_CHARSET
      Font.Color = clWindowText
      Font.Height = -19
      Font.Name = 'Marlett'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 3
      OnClick = btnNextMeshClick
      ExplicitLeft = 463
    end
    object GroupBox2: TGroupBox
      Left = 301
      Top = 77
      Width = 95
      Height = 130
      Anchors = [akTop, akRight]
      Caption = 'View'
      TabOrder = 4
      ExplicitLeft = 394
      object rbTexturedMesh: TRadioButton
        Left = 8
        Top = 20
        Width = 80
        Height = 17
        Caption = 'Textured'
        Checked = True
        TabOrder = 0
        TabStop = True
        OnClick = ChangeViewClick
      end
      object rbPolygons: TRadioButton
        Left = 8
        Top = 39
        Width = 80
        Height = 17
        Caption = 'Polygons'
        TabOrder = 1
        OnClick = ChangeViewClick
      end
      object chkAutoDolly: TCheckBox
        Left = 8
        Top = 81
        Width = 81
        Height = 17
        Hint = 'Enables/disables model rotation.'
        Caption = 'Auto dolly'
        TabOrder = 2
        OnClick = ChangeViewClick
      end
      object rbWireframe: TRadioButton
        Left = 8
        Top = 58
        Width = 80
        Height = 17
        Caption = 'Wireframe'
        TabOrder = 3
        OnClick = ChangeViewClick
      end
      object chkGrayMeshBG: TCheckBox
        Left = 8
        Top = 100
        Width = 80
        Height = 17
        Hint = 
          'Sets the viewport background color to gray. Will be reset defaul' +
          't to black when the window is closed.'
        Caption = 'Gray BG'
        TabOrder = 4
        OnClick = chkGrayMeshBGClick
      end
    end
    object btnPlayAnim: TButton
      Left = 91
      Top = 179
      Width = 70
      Height = 25
      Hint = 'Play/Stop the selected animation'
      Caption = 'Play >>'
      TabOrder = 5
      OnClick = btnPlayAnimClick
    end
    object btnZeroFrameAnim: TButton
      Left = 7
      Top = 179
      Width = 26
      Height = 25
      Hint = 'Jump to starting frame of selected animation'
      Caption = '0'
      TabOrder = 6
      OnClick = btnZeroFrameAnimClick
    end
    object btnNextAnimFlame: TButton
      Left = 63
      Top = 179
      Width = 26
      Height = 25
      Hint = 'Next anim frame'
      Caption = '4'
      Font.Charset = SYMBOL_CHARSET
      Font.Color = clWindowText
      Font.Height = -19
      Font.Name = 'Marlett'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 7
      OnClick = btnNextAnimFlameClick
    end
    object btnPrevAnimFlame: TButton
      Left = 35
      Top = 179
      Width = 26
      Height = 25
      Hint = 'Prev. anim frame'
      Caption = '3'
      Font.Charset = SYMBOL_CHARSET
      Font.Color = clWindowText
      Font.Height = -19
      Font.Name = 'Marlett'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 8
      OnClick = btnPrevAnimFlameClick
    end
    object btnRefresh: TButton
      Left = 7
      Top = 148
      Width = 82
      Height = 25
      Hint = 'Reloads the list of meshes'
      Caption = 'Refresh'
      TabOrder = 9
      OnClick = btnRefreshClick
    end
    object cmbPackages: TComboBox
      Left = 96
      Top = 17
      Width = 241
      Height = 22
      Style = csOwnerDrawFixed
      Anchors = [akLeft, akTop, akRight]
      TabOrder = 10
      OnChange = cmbPackagesChange
      ExplicitWidth = 334
    end
    object btnNextPackage: TButton
      Left = 370
      Top = 18
      Width = 26
      Height = 22
      Hint = 'Next texture package'
      Anchors = [akTop, akRight]
      Caption = '4'
      Font.Charset = SYMBOL_CHARSET
      Font.Color = clWindowText
      Font.Height = -19
      Font.Name = 'Marlett'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 11
      OnClick = btnNextPackageClick
      ExplicitLeft = 463
    end
    object btnPrevPackage: TButton
      Left = 342
      Top = 18
      Width = 26
      Height = 22
      Hint = 'Prev. texture package'
      Anchors = [akTop, akRight]
      Caption = '3'
      Font.Charset = SYMBOL_CHARSET
      Font.Color = clWindowText
      Font.Height = -19
      Font.Name = 'Marlett'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 12
      OnClick = btnPrevPackageClick
      ExplicitLeft = 435
    end
  end
end
