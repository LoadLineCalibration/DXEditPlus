object frmSoundFX: TfrmSoundFX
  Left = 0
  Top = 0
  Caption = 'Sound Browser'
  ClientHeight = 508
  ClientWidth = 324
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  Menu = MainMenu1
  Position = poMainFormCenter
  OnShow = FormShow
  TextHeight = 15
  object EsPanel1: TEsPanel
    Left = 0
    Top = 0
    Width = 324
    Height = 38
    Align = alTop
    TabOrder = 0
    FrameStyle = Etched
    object ToolBar1: TToolBar
      AlignWithMargins = True
      Left = 5
      Top = 5
      Width = 314
      Height = 28
      ButtonHeight = 26
      ButtonWidth = 27
      DrawingStyle = dsGradient
      Flat = False
      Font.Charset = SYMBOL_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Marlett'
      Font.Style = [fsBold]
      GradientEndColor = clBtnFace
      GradientStartColor = clBtnFace
      HotTrackColor = 16757721
      Images = frmTextures.ImageList1
      List = True
      GradientDirection = gdHorizontal
      ParentFont = False
      TabOrder = 0
      Transparent = False
      StyleName = 'Windows'
      Wrapable = False
      object tbOpenUAX: TToolButton
        Left = 0
        Top = 0
        Hint = 'Open .uax package'
        ImageIndex = 0
      end
      object tbSaveUAX_As: TToolButton
        Left = 27
        Top = 0
        Hint = 'Save .uax package as...'
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
        ImageIndex = 7
        OnClick = tbLoadEntirePackageClick
      end
      object ToolButton8: TToolButton
        Left = 89
        Top = 0
        Width = 8
        ImageIndex = 4
        Style = tbsSeparator
      end
      object tbPlay: TToolButton
        Left = 97
        Top = 0
        Hint = 'Play selected sound'
        ImageIndex = 8
      end
      object tbStop: TToolButton
        Left = 124
        Top = 0
        Hint = 'Copy Texture name to Clipboard'
        ImageIndex = 9
      end
      object ToolButton1: TToolButton
        Left = 151
        Top = 0
        Width = 8
        Caption = 'ToolButton1'
        ImageIndex = 7
        Style = tbsSeparator
      end
      object tbCopySound: TToolButton
        Left = 159
        Top = 0
        Caption = 'tbCopySound'
        ImageIndex = 6
      end
      object ToolButton3: TToolButton
        Left = 186
        Top = 0
        Width = 8
        Caption = 'ToolButton3'
        ImageIndex = 8
        Style = tbsSeparator
      end
      object edtCurrentSound: TEdit
        Left = 194
        Top = 0
        Width = 300
        Height = 26
        BorderStyle = bsNone
        Color = clBtnFace
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Verdana'
        Font.Style = []
        ParentFont = False
        ReadOnly = True
        TabOrder = 0
      end
    end
  end
  object EsPanel3: TEsPanel
    Left = 0
    Top = 38
    Width = 324
    Height = 64
    Align = alTop
    TabOrder = 1
    CaptionVisible = False
    FrameStyle = Etched
    ExplicitLeft = -149
    ExplicitTop = 40
    ExplicitWidth = 473
    DesignSize = (
      324
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
      Width = 194
      Height = 22
      Style = csOwnerDrawFixed
      Anchors = [akLeft, akTop, akRight]
      TabOrder = 0
      OnChange = cmbPackagesChange
      ExplicitWidth = 343
    end
    object cmbGroups: TComboBox
      Left = 67
      Top = 35
      Width = 194
      Height = 22
      Style = csOwnerDrawFixed
      Anchors = [akLeft, akTop, akRight]
      TabOrder = 1
      OnChange = cmbGroupsChange
      ExplicitWidth = 343
    end
    object btnPrevTexGroup: TButton
      Left = 267
      Top = 35
      Width = 26
      Height = 22
      Hint = 'Prev. group'
      Anchors = [akTop, akRight]
      Caption = '3'
      Font.Charset = SYMBOL_CHARSET
      Font.Color = clWindowText
      Font.Height = -19
      Font.Name = 'Marlett'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 2
      ExplicitLeft = 416
    end
    object btnNextTexGroup: TButton
      Left = 293
      Top = 35
      Width = 26
      Height = 22
      Hint = 'Next group'
      Anchors = [akTop, akRight]
      Caption = '4'
      Font.Charset = SYMBOL_CHARSET
      Font.Color = clWindowText
      Font.Height = -19
      Font.Name = 'Marlett'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 3
      ExplicitLeft = 442
    end
    object btnPrevPackage: TButton
      Left = 267
      Top = 7
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
      TabOrder = 4
      ExplicitLeft = 416
    end
    object btnNextPackage: TButton
      Left = 293
      Top = 7
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
      TabOrder = 5
      ExplicitLeft = 442
    end
  end
  object EsPanel2: TEsPanel
    Left = 0
    Top = 102
    Width = 324
    Height = 406
    Align = alClient
    TabOrder = 2
    FrameStyle = Etched
    ExplicitLeft = 44
    ExplicitTop = 228
    ExplicitWidth = 185
    ExplicitHeight = 41
    object lstSounds: TListBox
      Left = 2
      Top = 2
      Width = 320
      Height = 402
      Style = lbOwnerDrawFixed
      Align = alClient
      BorderStyle = bsNone
      Color = clSilver
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Verdana'
      Font.Style = []
      ItemHeight = 22
      Items.Strings = (
        'Item1'
        'Item2'
        'Item3')
      ParentFont = False
      PopupMenu = pm_SoundFX
      TabOrder = 0
    end
  end
  object pm_SoundFX: TPopupMenu
    Left = 128
    Top = 238
  end
  object MainMenu1: TMainMenu
    Left = 100
    Top = 350
    object File1: TMenuItem
      Caption = 'File'
      object Open1: TMenuItem
        Caption = 'Open...'
      end
      object SaveAs1: TMenuItem
        Caption = 'Save As...'
      end
      object N1: TMenuItem
        Caption = '-'
      end
      object Importsounds1: TMenuItem
        Caption = 'Import sounds...'
      end
      object Exportsounds1: TMenuItem
        Caption = 'Export sounds...'
      end
      object Recentfiles1: TMenuItem
        Caption = 'Recent files'
        object uax01: TMenuItem
          Caption = 'uax0'
        end
        object uax11: TMenuItem
          Caption = 'uax1'
        end
        object uax21: TMenuItem
          Caption = 'uax2'
        end
        object uax31: TMenuItem
          Caption = 'uax3'
        end
        object uax41: TMenuItem
          Caption = 'uax4'
        end
        object uax51: TMenuItem
          Caption = 'uax5'
        end
        object uax61: TMenuItem
          Caption = 'uax6'
        end
        object uax71: TMenuItem
          Caption = 'uax7'
        end
        object uax81: TMenuItem
          Caption = 'uax8'
        end
        object uax91: TMenuItem
          Caption = 'uax9'
        end
      end
    end
    object Edit1: TMenuItem
      Caption = 'Edit'
      object Delete1: TMenuItem
        Caption = 'Delete'
      end
      object N2: TMenuItem
        Caption = '-'
      end
      object Play1: TMenuItem
        Caption = 'Play'
      end
      object Stop1: TMenuItem
        Caption = 'Stop'
      end
    end
  end
end
