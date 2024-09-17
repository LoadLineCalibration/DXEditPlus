object frmTextures: TfrmTextures
  Left = 0
  Top = 0
  Caption = 'frmTextures'
  ClientHeight = 631
  ClientWidth = 473
  Color = clBtnFace
  Constraints.MinHeight = 300
  Constraints.MinWidth = 300
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  Menu = mnuTextureBrowser
  Position = poMainFormCenter
  ShowHint = True
  OnMouseWheel = FormMouseWheel
  OnResize = FormResize
  OnShow = FormShow
  TextHeight = 15
  object TextureBrowserPanel: TEsPanel
    Left = 0
    Top = 104
    Width = 473
    Height = 527
    Align = alClient
    TabOrder = 0
    FrameStyle = Etched
    object TexScrollbar: TScrollBar
      Left = 454
      Top = 2
      Width = 17
      Height = 523
      Align = alRight
      Kind = sbVertical
      PageSize = 0
      TabOrder = 0
      OnChange = TexScrollbarChange
    end
    object TextureBrowser: TEsPanel
      Left = 2
      Top = 2
      Width = 452
      Height = 523
      Align = alClient
      TabOrder = 1
      Caption = #1058#1077#1082#1089#1090#1091#1088#1099
      FrameStyle = None
    end
  end
  object EsPanel2: TEsPanel
    Left = 0
    Top = 0
    Width = 473
    Height = 40
    Align = alTop
    TabOrder = 1
    CaptionVisible = False
    FrameStyle = Etched
    object ToolBar1: TToolBar
      AlignWithMargins = True
      Left = 5
      Top = 5
      Width = 463
      Height = 30
      ButtonHeight = 26
      ButtonWidth = 27
      Caption = 'ToolBar1'
      DrawingStyle = dsGradient
      Flat = False
      Font.Charset = SYMBOL_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Marlett'
      Font.Style = [fsBold]
      GradientEndColor = clBtnFace
      GradientStartColor = clBtnFace
      HotTrackColor = clSilver
      Images = ImageList1
      List = True
      GradientDirection = gdHorizontal
      ParentFont = False
      TabOrder = 0
      Transparent = False
      StyleName = 'Windows'
      object tbOpenUTX: TToolButton
        Left = 0
        Top = 0
        Hint = 'Open .utx package'
        ImageIndex = 0
      end
      object tbSaveUTX_As: TToolButton
        Left = 27
        Top = 0
        Hint = 'Save .utx package as...'
        ImageIndex = 1
      end
      object ToolButton5: TToolButton
        Left = 54
        Top = 0
        Width = 8
        ImageIndex = 2
        Style = tbsDivider
      end
      object tbLoadEntirePackage: TToolButton
        Left = 62
        Top = 0
        Hint = 'Load entire package'
        ImageIndex = 2
        OnClick = tbLoadEntirePackageClick
      end
      object ToolButton8: TToolButton
        Left = 89
        Top = 0
        Width = 8
        ImageIndex = 4
        Style = tbsSeparator
      end
      object tbTextureProperties: TToolButton
        Left = 97
        Top = 0
        Hint = 'Properties...'
        ImageIndex = 3
      end
      object ToolButton1: TToolButton
        Left = 124
        Top = 0
        Width = 8
        ImageIndex = 6
        Style = tbsSeparator
      end
      object tbPrevGroup: TToolButton
        Left = 132
        Top = 0
        Hint = 'Previous group'
        ImageIndex = 4
      end
      object tbNextGroup: TToolButton
        Left = 159
        Top = 0
        Hint = 'Next Group'
        ImageIndex = 5
      end
      object ToolButton7: TToolButton
        Left = 186
        Top = 0
        Width = 8
        ImageIndex = 6
        Style = tbsSeparator
      end
      object tbRealTimePreview: TToolButton
        Left = 194
        Top = 0
        Hint = 'Realtime preview'
        AllowAllUp = True
        ImageIndex = 6
        Style = tbsCheck
      end
    end
  end
  object EsPanel3: TEsPanel
    Left = 0
    Top = 40
    Width = 473
    Height = 64
    Align = alTop
    TabOrder = 2
    CaptionVisible = False
    FrameStyle = Etched
    DesignSize = (
      473
      64)
    object Label1: TLabel
      AlignWithMargins = True
      Left = 5
      Top = 9
      Width = 52
      Height = 53
      Margins.Top = 7
      Margins.Bottom = 0
      Align = alLeft
      Alignment = taRightJustify
      Caption = 'Packages:'#13#10#13#10'Groups:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Segoe UI'
      Font.Style = []
      ParentFont = False
      ExplicitHeight = 45
    end
    object cmbPackages: TComboBox
      Left = 67
      Top = 7
      Width = 396
      Height = 22
      Style = csOwnerDrawFixed
      Anchors = [akLeft, akTop, akRight]
      TabOrder = 0
      OnChange = cmbPackagesChange
    end
    object cmbGroups: TComboBox
      Left = 67
      Top = 35
      Width = 396
      Height = 22
      Style = csOwnerDrawFixed
      Anchors = [akLeft, akTop, akRight]
      TabOrder = 1
      OnChange = cmbGroupsChange
    end
  end
  object mnuTextureBrowser: TMainMenu
    Left = 232
    Top = 217
    object File1: TMenuItem
      Caption = 'File'
      object File2: TMenuItem
        Caption = 'New'
      end
      object Open1: TMenuItem
        Caption = 'Open...'
      end
      object SaveAs1: TMenuItem
        Caption = 'Save As...'
      end
      object N3: TMenuItem
        Caption = '-'
      end
    end
    object View1: TMenuItem
      Caption = 'View'
      object View2: TMenuItem
        Caption = 'Item size'
        object texSize32: TMenuItem
          Caption = '32'
          GroupIndex = 5
          RadioItem = True
          OnClick = texSize512Click
        end
        object texSize64: TMenuItem
          Caption = '64'
          GroupIndex = 5
          RadioItem = True
          OnClick = texSize512Click
        end
        object texSize128: TMenuItem
          Caption = '128'
          Checked = True
          GroupIndex = 5
          RadioItem = True
          OnClick = texSize512Click
        end
        object texSize256: TMenuItem
          Caption = '256'
          GroupIndex = 5
          RadioItem = True
          OnClick = texSize512Click
        end
        object texSize512: TMenuItem
          Caption = '512'
          GroupIndex = 5
          RadioItem = True
          OnClick = texSize512Click
        end
      end
    end
  end
  object TexturePopup: TPopupMenu
    OnPopup = TexturePopupPopup
    Left = 290
    Top = 403
    object mnuTextureProperties: TMenuItem
      Caption = '<Edit texture>'
    end
    object N1: TMenuItem
      Caption = '-'
    end
    object Apply1: TMenuItem
      Caption = 'Apply'
    end
    object Export1: TMenuItem
      Caption = 'Export'
    end
    object Delete1: TMenuItem
      Caption = 'Delete'
    end
    object RemovefromlevelTEXTURECULL1: TMenuItem
      Caption = 'Remove from level'
      ShortCut = 81
    end
    object N2: TMenuItem
      Caption = '-'
    end
    object Copynametoclipboard1: TMenuItem
      Caption = 'Copy name to clipboard'
    end
  end
  object ImageList1: TImageList
    Height = 20
    Width = 20
    Left = 386
    Top = 227
    Bitmap = {
      494C010107002800040014001400FFFFFFFFFF10FFFFFFFFFFFFFFFF424D3600
      0000000000003600000028000000500000002800000001002000000000000032
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000EBD6B800DAB27800CE9A4D00C98D3800C98D3800CE9A
      4D00DAB27800EBD6BA0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000EBD8BD00CE994B00C98A3000C98A3000C98A3000C98A3000C98A3000C98A
      3000C98A3000C98A3000CE994B00ECD9BD000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000093939300C8C8C800000000000000000000000000000000000000
      00000000000000000000000000000000000000000000C8C8C800939393000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000DCBB
      8B00C5883000C8893000C98A3000C98A3000C98A3000C98A3000C98A3000C98A
      3000C98A3000C98A3000C98A3000C98A3000E0BE8E0000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000323232000000000013131300000000000000000000000000000000000000
      0000000000000000000000000000000000000000000012121200000000003232
      3200000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000DBBA8A00C588
      3000C5883000C5883000CD944300C98A3000C98A3000CE954300CF964500CA8B
      3200C98A3000C98A3000C98A3000C98A3000C98A3000E0BF9000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000C9C9C9001919
      1900000000000000000051515100000000000000000000000000000000000000
      0000000000000000000000000000000000000000000050505000000000000000
      000019191900C9C9C90000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000EBD6BB00C5883000C588
      3000C5883000CC954800F7F3EE00E9D0AC00FBF7F100FFFFFF00FFFFFF00FBF7
      F100EAD1AD00CF974700C98A3000C98A3000C98A3000C98A3000ECD9BD000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000A9A9A900090909000000
      0000000000006565650000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000006D6D6D000000
      00000000000007070700A2A2A200000000000000000000000000000000000000
      00000000000000000000000000000000000000000000CE994B00C8893000C588
      3000C5883000E7D2B300FAFAFA00F8F5F200DFBA8600D4A35C00D4A25A00E0BB
      8700F7EEE000FBF7F000D6A66200C98A3000C98A3000C98A3000CD984A000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000008787870001010100000000000202
      0200878787000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000009898
      9800040404000000000000000000767676000000000000000000000000000000
      000000000000000000000000000000000000EBD6B700C98A3000C98A3000C889
      3000C88E3A00EBDBC200ECDCC400EBDBC300C9914000C8893000C98A3000C98A
      3000CA8D3600EDD7B800FBF7F100D0984900C98A3000C98A3000C98A3000EBD6
      BA00000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000005A5A5A0000000000000000000D0D0D00B3B3
      B300000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000BABABA001010100000000000000000005353530000000000000000000000
      000000000000000000000000000000000000D9B17700C98A3000C98A3000C98A
      3000C8893000C5883000C5883000C5883000C5883000C5883000C8893000C98A
      3100E0BB8700D3A05700F6EBDC00EBD4B300C98A3000C98A3000C98A3000D9B2
      7900000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000034343400000000000000000023232300D5D5D5000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000DADADA002727270000000000000000002F2F2F00000000000000
      000000000000000000000000000000000000CE994D00C98A3000C98A3000C98A
      3000C98A3000C8893000C5883000C5883000C5883000C68B3600CA924200EDD9
      BC00E3C29200C98B3200DEB78000FDFAF600CA8D3600C98A3000C98A3000CE9A
      4D00000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000002A2A2A0000000000000000004242420000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000004242420000000000000000002B2B2B000000
      000000000000000000000000000000000000C98D3800C98A3000C98A3000CB8F
      3900E3C39500C98B3200C8893000C5883000C9903F00EBDAC100F3EADF00D1A1
      5C00C8893000C98A3000D29D5100FFFFFF00D19C5000C98A3000C98A3000CA8D
      3900000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000002A2A2A0000000000000000004242420000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000004242420000000000000000002B2B2B000000
      000000000000000000000000000000000000C98D3800C98A3000C98A3000D29D
      5100FFFFFF00D19B4E00C98A3000C8893000C88E3B00EBDAC000E7D1B100C588
      3000C5883000C8893000D19B4F00FFFFFF00D29D5200C98A3000C98A3000C98D
      3800000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000034343400000000000000000023232300D5D5D5000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000DADADA002727270000000000000000002F2F2F00000000000000
      000000000000000000000000000000000000CE994C00C98A3000C98A3000CB8F
      3800FDFBF900DBB27700C98A3000C98A3000C8893000E0C29600CC954800C588
      3000C5883000C5883000DBB27700FDFBF900CB8E3700C98A3000C98A3000CE9A
      4E00000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000005A5A5A0000000000000000000D0D0D00B3B3
      B300000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000BABABA001010100000000000000000005353530000000000000000000000
      000000000000000000000000000000000000DAB07500C98A3000C98A3000C98A
      3000EED9BC00F3E5D100C98B3200C98A3000C98A3000E3C49700CB964700C588
      3000C5883000C5893200EEE2CE00ECD8BB00C98A3000C98A3000C98A3000DAB2
      7800000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000008787870001010100000000000202
      0200878787000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000009898
      9800040404000000000000000000767676000000000000000000000000000000
      000000000000000000000000000000000000EBD5B600C98A3000C98A3000C98A
      3000D29D5200FDFAF700E7CCA500C98A3100C98A3000E3C29200CD944400C588
      3000C5893200E3C9A300F8F5F200CD9A4F00C8893000C98A3000C98A3000EBD6
      B800000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000A9A9A900090909000000
      0000000000006565650000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000006D6D6D000000
      00000000000007070700A2A2A200000000000000000000000000000000000000
      00000000000000000000000000000000000000000000CE974B00C98A3000C98A
      3000C98A3000DAAE6F00FDFBF800F2E3CD00DAAE7000CF964500CF964500D9AE
      7000EEDFCA00F8F5F200D6AB6D00C5883000C5883000C8893000CE9649000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000C9C9C9001919
      1900000000000000000053535300000000000000000000000000000000000000
      0000000000000000000000000000000000000000000052525200000000000000
      000019191900C9C9C90000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000EBD7BA00C98A3000C98A
      3000C98A3000C98A3000D39F5500EFDCC100FEFDFC00FFFFFF00FFFFFF00FEFD
      FC00EEDBBF00CE9B5300C5883000C5883000C5883000C5883000EBD8BD000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000323232000000000014141400000000000000000000000000000000000000
      0000000000000000000000000000000000000000000013131300000000003232
      3200000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000DFBD8B00C98A
      3000C98A3000C98A3000C98A3000C98A3000CC913C00D4A25A00D4A25A00CC91
      3C00C98A3000C8893000C5883000C5883000C5883000DCBA8D00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000093939300C8C8C800000000000000000000000000000000000000
      00000000000000000000000000000000000000000000C7C7C700939393000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000DFBD
      8B00C98A3000C98A3000C98A3000C98A3000C98A3000C98A3000C98A3000C98A
      3000C98A3000C98A3000C8893000C5883000DBBA8A0000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000EBD7BA00CD984A00C98A3000C98A3000C98A3000C98A3000C98A3000C98A
      3000C98A3000C98A3000CE974B00EBD6BB000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000EBD5B600D9B17700CE9A4E00C88C3700C88C3700CE9A
      4E00D9B17700EBD6B70000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000148BD200148BD2005EAE
      DE00A8D3ED000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000148BD20098EEFB0073D5
      F10050BBE60032A3DC00148BD20045A2DA0088C3E700CBE4F300000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000B987AC00B47DA600C092B300CBA2C000CCA3C100CCA3C100CCA3
      C100CCA3C100CCA3C100CCA3C100CCA3C100CCA3C100CCA3C100CCA3C100BC88
      B000B77FA900C79ABB0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000DADADA006F6F6F006F6F6F006F6F6F006F6F6F006F6F6F006F6F6F006F6F
      6F006F6F6F006F6F6F006F6F6F006F6F6F006F6F6F006F6F6F006F6F6F009393
      930000000000000000000000000000000000000000001389D000A4F7FE008CF1
      FF0081EFFF0073EBFF0069E8FF004DBDE90032A7DF001990D400148BD200148B
      D20071B8E200B2D8EF0000000000000000000000000000000000000000000000
      0000D7BCCF009E528A009E528A00F5F3F400FAFAFA00FEFEFE00FFFFFF00FFFF
      FF00FFFFFF00FDFDFD00FDFDFD00FFFFFF00FFFFFF00FFFFFF00FFFFFF00ECE1
      EA00A1538C00A1538C000000000000000000796A4D00687350006C7351006C73
      5100674F2F006154310068774F006D7450006D7451006D7451006D7451006D74
      51006D7451006D7451006D7451006D7451006B4D2E0000000000000000000000
      00008E6A4C008F694C008F694C008E6A4C008E6A4C008F6A4C008F6A4C008E69
      4B008E6A4C008F6A4C008E694C008F6A4C008F6A4C008F694C008F6A4C006F6F
      6F000000000000000000000000000000000000000000148BD200A7F7FE009FF6
      FF008DF2FF0082EFFF0076EBFF005FE5FF0053E1FF0049DFFF0041DCFF003FDC
      FF003FDCFF003FDCFF00239DDB0042A1D9000000000000000000000000000000
      0000DABCD1009E528A009E528A00F6F4F500FAFAFA00D2D2D200D2D1D100D3D3
      D300F9F9F900D8D7D700EAE9E900FDFDFD00FFFFFF00FFFFFF00FFFFFF00F0E5
      ED00A1538C00A1538C00F1E8EF0000000000816546006B9F720060C08D0055B6
      820055B37F0064654200689E700069CC980058BB850056B9840056B9840056B9
      840056B9840056B9840056B9840057AC79006A422200BC9E8C00E6DEDA000000
      0000936E5000FEFEFD00FEFEFD00FEFEFD00FEFEFD00FEFEFD00FEFEFD00FEFE
      FD00FEFEFD00FEFEFD00FEFEFD00FEFEFD00FEFEFD00FEFEFD00936F51006F6F
      6F000000000000000000000000000000000000000000148BD2008BDFF400AAF7
      FE0092F3FF0088F0FF007EEEFF0066E7FF0059E3FF004FE1FF0046DEFF003FDC
      FF003FDCFF003FDCFF004CCBF100148BD2000000000000000000000000000000
      0000DABCD200A0528B009E528A00F6F4F500FAFAFA00FAFAFA00FAFAFA00FEFE
      FE00FDFDFD00EAE9E90075727100B7B5B500FDFDFD00FDFDFD00FFFFFF00F0E5
      ED00A1538C00A1538C00F1E8EF0000000000976C4B008F7047006694690063C3
      910055B6820055B58100626D4700659064006ACE990058BB860056B9840056B9
      840056B9840056B9840057AB7800745C3800874B2500BF6F3700BBA08F000000
      000099745600FCF9F700FCF9F700FCF9F700FCF9F700FCF9F700FCF9F700FCF9
      F700FCF9F700FCF9F700FCF9F700FCF9F700FCF9F700FCF9F700997456006F6F
      6F000000000000000000000000000000000000000000148BD20059BBE500ABF8
      FE009BF5FF008EF2FF0084F0FF006CE9FF0060E6FF0055E2FF004BDFFF0043DC
      FF003FDCFF003FDCFF003FDCFF00259EDB0041A0D90000000000000000000000
      0000DABCD200A1538C00A0528B00F6F5F600FAFAFA00D2D2D200CFCECE00CFCE
      CE00D2D1D100E1E1E100B6B5B400B7B5B50093929200EFEFEF00FDFDFD00F0E5
      ED00A1538C00A1538C00F1E8EF0000000000996E4D00FFCC8D0093774D006489
      5E0064C4910055B5800069633F008B694100648157006CD09A0059BC870056B9
      840056B9840057AA7700745C3800F0B67400975B3000D77F42007A472600B192
      7F009C785B00FBF7F400FBF7F400FBF7F400FBF7F400FBF7F400FBF7F400FBF7
      F400FBF7F400FBF7F400FBF7F400FBF7F400FBF7F400FBF7F4009D775A006F6F
      6F000000000000000000000000000000000000000000148BD2002798D700A6F8
      FF00A5F8FE0093F4FF008AF2FF0073EBFF0067E7FF005BE3FF0050E0FF0047DE
      FF003FDCFF003FDCFF003FDCFF0050CCF100148BD20000000000000000000000
      0000DABCD200A1538C00A1538C00FAF9F900FAFAFA00F2F2F200F0F0F000F0F0
      F000F0F1F100F4F4F400F6F6F60093929200716E6D0092908F00F7F7F700EFE2
      EC00A1538C00A1538C00F1E8EF0000000000996E4D00FFCC8D00FFC57F00A282
      5300647B510067664000CD9C6400FAC17D00AC89570064734B006DCF9B005BBE
      890057A97600755D3900F0B77500FFC57F00975B3000D77F4200B5673000976C
      4E00A37E6200F7F1EC00F7F1EC00F7F1EC00F7F1EC00F7F1EC00F7F1EC00F7F1
      EC00F7F1EC00F7F1EC00F7F1EC00F7F1EC00F7F1EC00F7F1EC00A37E62006F6F
      6F000000000000000000000000000000000000000000148BD200148BD2008EE0
      F400ABF9FE009AF5FF0090F3FF007AEDFF006EEAFF0062E6FF0056E3FF004CE0
      FF003FDCFF003FDCFF003FDCFF003FDCFF00269EDC0000000000000000000000
      0000DABCD200A1538C00A1538C00FBF9FA00FEFEFE00DADADA00D8D8D800D8D8
      D800D8D8D800D8D8D800DAD9D900F5F5F50092918F00716E6D00908E8C00E3D3
      DE009F548C00A1538C00F1E8EF0000000000996E4D00FFCC8D00FFC57F00FFC5
      7F00B28F5B00C99C6500FAC17D00FAC17D00FAC17D00BE945D00636842006CBA
      8800735D3700F2B97600FFC57F00FFC57F00975B3000D77F4200B5673000976C
      4E00A7826500F6EEE800F6EEE800F6EEE800F6EEE800F6EEE800F6EEE800F5ED
      E700EDE6E000E7DFD900F2EAE400F6EEE800F6EEE800F6EEE800A78166006F6F
      6F000000000000000000000000000000000000000000148BD20003BEF6002999
      D800A5F8FF00ABF9FE0099F6FF00A0F5FE0097F3FE0088F0FF0075EBFF0063E6
      FF0045DDFF003FDCFF003FDCFF003FDCFF003FDCFF002A95D400000000000000
      0000DABCD200A1538C00A1538C00FBF9FA00FFFFFF00FEFEFE00FAFAFA00FAFA
      FA00FAFAFA00FAFAFA00FAFAFA00FCFCFC00F7F7F70092918F00716E6D00908E
      8C00D7BFD1009F548C00F1E8EF0000000000996E4D00FFCC8D00FFC57F00FFC5
      7F00FFC57F00FEC47E00FAC27D00FAC17D00FAC17D00FAC17D00CD9F6400725A
      3400F3B97700FFC57F00FFC57F00FFC57F00975B3000D77F4200B5673000976C
      4E00AE896D00F2E8E000F2E8E000F1E7DF00E7DDD500E8DED6009D969100BFBB
      B8006C84A300635F5C008E888400EAE1D900F2E8E000F2E8E000AE896E006F6F
      6F000000000000000000000000000000000000000000148BD20000C8FD00148B
      D200148BD20034A1DB004EB3E2007CD5F00092E6F7009EF6FE009DF5FE0096F3
      FF0072E9FE0041DDFF003FDCFF003FDCFF003FDCFF00148BD200D4E9F5000000
      0000DABCD200A1538C00A1538C00CAA1BE00DBBFD200DBBFD200DABED200D7BB
      CF00D7BBCE00D7BBCE00D7BBCE00D7BBCF00DABDD200DCC5D50092918F00716E
      6D00908E8C00D7BFD1000000000000000000996E4D00FFCC8D00EAB27100836F
      5300BA905E00FFC57F00FEC47E00FAC27D00FAC17D00FAC17D00FAC17D00FAC2
      7D00FEC47E00FFC57F00FFC57F00FFC57F00975B3000D77F4200B5673000976C
      4E00B5907500EFE2D800EFE2D800DED5CF0075737400656568006595C3005D5B
      59005E8AB9007DAED80044618500938B8500EADED400EFE2D800B59175006F6F
      6F000000000000000000000000000000000000000000148BD20000CBFF0001C6
      FC0008B0EC000DA3E3001196DA00148BD200148BD200148BD20031A0DB0047B2
      E2006BD2F0007BE1F70089F0FF0083EEFE007CECFE00279FDC00148BD2000000
      0000DABCD200A1538C00A1538C00A1538C00A1538C00A1538C00A1538C00A052
      8B009E528A009E528A009E528A009E528A009E528A009E518900D8BDD0009291
      8F00716E6D00908E8C000000000000000000996E4D00FFCC8D00786751005DC3
      E3005B675E00EDB47200FFC57F00FEC47E00FAC27D00FAC17D00FAC17D00FAC1
      7D00FAC27D00FEC47E00FFC57F00FFC57F00975B3000D77F4200B5673000976C
      4E00B8947900EDDFD400EDDFD400BBBDC4006190C00047638600A5CBE9004458
      7200505F73008ABBE20072A6D4005E585400D2C6BC00E9DCD100B99379006F6F
      6F0000000000DCDCDC00CFCFCF00CECECE0000000000148BD20000CBFF0000CB
      FF0000CBFF0000CBFF0000CBFF0000CBFF0000CAFE0005BCF40009ADEA000E9F
      E000148BD200148BD200148BD2002B9FDB003CAFE2003DB4E500148BD2000000
      0000DABCD200A1538C00A1538C00A1538C00A1538C00A1538C00A1538C00A153
      8C00A0528B009E528A009E528A009E528A009E528A009E528A009E518900D8BC
      D000928E8D0085818000C0BEBE0000000000996E4D00FFCC8D008E7758006689
      8C0068574000F7BE7A00FFC57F00FFC57F00FEC47E00FAC27D00FAC17D00FAC1
      7D00FAC17D00FAC27D00FEC47E00FFC57F00975B3000D77F4200B5673000976C
      4E00BF9A8000EBDACD00EAD9CC00CCBDB2007FACD500ABCFEA004B77AB00A5CB
      E9006393C20081ABD200A5CBE9005A8BBD005A544F007068620057463A003131
      31008C8C8C0091260900912609009126090000000000148BD20000CBFF0000CB
      FF0000CBFF0000CBFF0000CBFF0000CBFF0000CBFF0000CBFF0000CBFF0000CB
      FF0000CBFF0000CBFF0003C2F8005FCDEE00148BD200148BD200148BD200DCEC
      F600DABCD200A1538C00A1538C00A7629400E6D2E000E8D7E300E8D7E300E8D7
      E300E8D7E300E7D6E200E4D3DF00E3D3DE00E3D3DE00E3D3DE00D7BBCF009F53
      8B00D9C0D100BFBEBD00716F6E00E4E4E400996E4D00FFCC8D00FEC47E00DAA1
      6500F1B87500FFC57F00FFC57F00FFC57F00FFC57F00FEC47E00FAC27D00FAC1
      7D00FAC17D00FAC17D00FAC27D00FEC47E00975B3000D77F4200B5673000976C
      4E00C19D8200EAD8CB00E5D4C9004F77A8006385A50082B1D8007DACD500ABCF
      EA008FBFE4003F6BA1009BC5E60074ABD9003D608C003B5E8B0042669300355C
      8F0047556600992A0B00992A0B00992A0B0000000000148BD20000C9FF0000CA
      FF0000CAFF0000CAFF0000CAFF0000CCFF00229EDB0052A7DA00148BD200148B
      D200148BD200289E450022973C001C8F330017872A000F7B1B00409245000000
      0000DABCD200A1538C00A1538C00C69ABB00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF0085838200827F7E00C0BFBE00FAFAFA00F8F8F8009E52
      8A009E518900D4B9CD00E1E0E00000000000996E4D00FFCC8D00FFC57F00FFC5
      7F00FFC57F00FFC57F00FFC57F00FFC57F00FFC57F00FFC57F00FEC47E00FAC2
      7D00FAC17D00FAC17D00FAC17D00FAC27D0096593000D77F4200B5673000976C
      4E00C6A28700FFFFFF00FFFFFF00DBE3ED009DCBED0075A5D10082B4DD0073A2
      CE007DABD3007CB1DD006999C8008FBFE40069A1D20073A7D60074A9D70068A1
      D40040699B009C2E0F009C2E0F009C2E0F0000000000148BD2007AEFFF007CEF
      FF007CEFFF007CEFFF007CEFFF007EF3FF0057B0DF0000000000000000000000
      00000000000059B26B0039B45E005AD9840042BE690035AF58000C7716000000
      0000DABCD200A1538C00A1538C00C89CBD00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00716E6D00706D6C00B5B3B300FAFAFA00FAFAFA009E52
      8A009E528A00A0528B00F1E8EF0000000000B1927A00875B3B007F441C008F4F
      22008F4F22008F4F22008F4F22008F4F22008F4F22008F4F22008F4F22008E4E
      22008D4E22008D4E23008D4E23008D4E23008F4C1F00D67E4200B5673000976C
      4E0000000000000000000000000000000000BECCDE0087B7DD008BBDE60097C5
      E50087BAE2009AC6E80095C9F20075ABDA009ACAED0094C7ED0094C7ED008EC1
      E9005280B000A2351600A2351600A2351600000000001D8ED100148BD200148B
      D200148BD200148BD200148BD2002295D500B4D8EF0000000000000000000000
      0000000000000000000053AB620032AC55005AD9840035AF58000C7716000000
      0000DABCD200A1538C00A1538C00C89CBD00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00716E6D00716E6D00B7B5B500FAFAFA00FAFAFA009E52
      8A009E528A009E528A00F1E8EF000000000000000000D5CAC100A25B2D00CF7C
      4200CF7C4200CF7C4200CF7C4200CF7C4200CF7C4200CF7C4200CF7C4200CF7C
      4200CE7B4200CB7A4200CB7A4200CB7A4200CB7A4200B56C3A00B4663000976C
      4E000000000000000000000000000000000000000000B6C7DA00BBDDF40072A3
      CF0098C5E60082B6E10094C7ED0094C7ED0094C7ED0094C7ED0094C7ED008DC1
      E9005D92C200AD422500AE432600AE4326000000000000000000000000000000
      00000000000000000000000000000000000000000000000000000000000094D2
      A000000000000000000022973C005AD9840042BE690035AF58000C7716000000
      0000DABCD200A1538C00A1538C00C89CBD00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00716E6D00716E6D00B8B6B600FEFEFE00FAFAFA009E52
      8A009E528A00A0578D0000000000000000000000000000000000C7B3A8008145
      1F00C06A2E00C06A2E00C06A2E00C06A2E00C06A2E00C06A2E00C06A2E00C06A
      2E00C06A2E00BF692E00BD692E00BC692E00BC692E00BC692E00E2844200976C
      4F00000000000000000000000000000000000000000000000000CBD6E400C8E7
      FD009DCEF2009ACBF1009BCCF0009CCDF0009CCCF0009BCCEF0096C9F0008EC3
      EC0074ABDB00BA533700BC553900BC5539000000000000000000000000000000
      00000000000000000000000000000000000000000000000000000000000035AF
      5800C5E4C800289E45005AD984004BCA740042BE690035AF58000C7716000000
      0000DABED200A1538C00A1538C00C89CBD00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00BEBDBD00BDBBBB00E0DFDF00FFFFFF00FEFEFE009E52
      8A00A2598F00E2D0DD0000000000000000000000000000000000000000007C4A
      2B00A46A4300A46A4300A46A4300A46A4300A46A4300A46A4300A46A4300A46A
      4300A46A4300A46A4300A3694300A2694300A2694300A2694300A2694300936B
      50000000000000000000000000000000000000000000000000000000000096BA
      DA00C8E7FB00C5E6FC00ABD7F600ABD7F6009ED0F40099CDF50098CDF40091C6
      F00079B0E000BC553900BC553900BC5539000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000C7E6
      CB004DCC77005AD9840054D37D001C8F3300BDDBBF0043954A000C7716000000
      000000000000BE8BB000B77FA900BD88AE00CCA3C100CCA3C100CCA3C100CCA3
      C100CCA3C100CCA3C100CCA3C100CCA3C100CCA3C100CCA3C100CCA3C100B981
      A900E7DAE4000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000E0E5EE00A4B7CF0083A3C50081A1C30083A1C4009EB5CF00A2B5
      C900A5B7CC00AB3F2100AB3F2100AB3F21000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00002DA54C00289E450022973C00BFDDC1000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000424D3E000000000000003E000000
      2800000050000000280000000100010000000000E00100000000000000000000
      000000000000000000000000FFFFFF00FFFFFFFFFFFC03F000000000FFFFFFFF
      FFF000F000000000FFF9FF9FFFE0007000000000FFF1FF8FFFC0003000000000
      FFC1FF83FF80001000000000FF83FFC1FF80001000000000FF07FFE0FF000000
      00000000FE0FFFF07F00000000000000FC1FFFF83F00000000000000F87FFFFE
      1F00000000000000F87FFFFE1F00000000000000FC1FFFF83F00000000000000
      FE0FFFF07F00000000000000FF07FFE0FF00000000000000FF83FFC1FF800010
      00000000FFC1FF83FF80001000000000FFF1FF8FFFC0003000000000FFF9FF9F
      FFE0007000000000FFFFFFFFFFF000F000000000FFFFFFFFFFFC03F000000000
      87FFFFFFFFFFFFFFFFFF0000803FF80003FFFFF0000F00008003F00003000070
      000F00008000F00001000010000F00008000F00001000010000F000080007000
      01000000000F00008000700001000000000F00008000700001000000000F0000
      8000300001000000000F00008000100003000000000F00008000100003000000
      0008000080001000010000000000000080000000000000000000000080001000
      0100000000000000807810000100000F00000000807C10000180000F80000000
      FFEC100003C0000FC0000000FFE0100003E0000FE0000000FFE0180007FFFFFF
      F8000000FFF0FFFFFFFFFFFFFFFF000000000000000000000000000000000000
      000000000000}
  end
end
