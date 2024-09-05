object frmBrushBuilder: TfrmBrushBuilder
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu]
  Caption = 'Cube Builder'
  ClientHeight = 237
  ClientWidth = 346
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  Position = poScreenCenter
  ShowHint = True
  OnClose = FormClose
  OnCreate = FormCreate
  OnMouseWheel = FormMouseWheel
  DesignSize = (
    346
    237)
  TextHeight = 15
  object gb1: TGroupBox
    Left = 4
    Top = 0
    Width = 340
    Height = 203
    Anchors = [akLeft, akTop, akRight, akBottom]
    Caption = 'Properties'
    DefaultHeaderFont = False
    HeaderFont.Charset = DEFAULT_CHARSET
    HeaderFont.Color = clWindowText
    HeaderFont.Height = -12
    HeaderFont.Name = 'Segoe UI'
    HeaderFont.Style = [fsBold]
    TabOrder = 0
    object EsPanel2: TEsPanel
      AlignWithMargins = True
      Left = 6
      Top = 21
      Width = 328
      Height = 176
      Margins.Left = 4
      Margins.Top = 4
      Margins.Right = 4
      Margins.Bottom = 4
      Align = alClient
      TabOrder = 0
      FrameStyle = Lowered
      object bbHeader: THeaderControl
        Left = 2
        Top = 2
        Width = 324
        Height = 18
        Sections = <
          item
            AllowClick = False
            ImageIndex = -1
            Style = hsOwnerDraw
            Text = 'Parameter'
            Width = 140
          end
          item
            AllowClick = False
            ImageIndex = -1
            Style = hsOwnerDraw
            Text = 'Value'
            Width = 140
          end
          item
            ImageIndex = -1
            Style = hsOwnerDraw
            Width = 500
          end>
        OnDrawSection = bbHeaderDrawSection
        OnSectionResize = bbHeaderSectionResize
        StyleElements = []
      end
      object bbScrollBox: TScrollBox
        AlignWithMargins = True
        Left = 5
        Top = 23
        Width = 318
        Height = 148
        HorzScrollBar.Visible = False
        Align = alClient
        BorderStyle = bsNone
        TabOrder = 0
        OnEnter = EditFieldEnter
        OnExit = EditFieldExit
      end
    end
  end
  object btnClose: TButton
    Left = 107
    Top = 209
    Width = 75
    Height = 25
    Anchors = [akRight, akBottom]
    Cancel = True
    Caption = 'Close'
    TabOrder = 1
    OnClick = btnCloseClick
  end
  object btnReset: TButton
    Left = 188
    Top = 209
    Width = 75
    Height = 25
    Anchors = [akRight, akBottom]
    Cancel = True
    Caption = 'Reset'
    TabOrder = 2
    OnClick = btnResetClick
  end
  object btnBuild: TButton
    Left = 269
    Top = 209
    Width = 75
    Height = 25
    Anchors = [akRight, akBottom]
    Cancel = True
    Caption = 'Build'
    Default = True
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = 'Segoe UI'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 3
    OnClick = btnBuildClick
  end
  object chkCloseWhenBuilt: TCheckBox
    Left = 21
    Top = 209
    Width = 73
    Height = 25
    Anchors = [akRight, akBottom]
    Caption = 'Close after building?'
    TabOrder = 4
    WordWrap = True
  end
end
