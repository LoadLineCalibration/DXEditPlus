object frmBrushBuilder: TfrmBrushBuilder
  Left = 0
  Top = 0
  BorderStyle = bsDialog
  Caption = 'Cube Builder'
  ClientHeight = 255
  ClientWidth = 408
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  Position = poScreenCenter
  ShowHint = True
  OnCreate = FormCreate
  OnMouseWheel = FormMouseWheel
  OnShow = FormShow
  TextHeight = 15
  object gb1: TGroupBox
    Left = 8
    Top = 8
    Width = 313
    Height = 241
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
      Width = 301
      Height = 214
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
        Width = 297
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
        Width = 291
        Height = 186
        HorzScrollBar.Visible = False
        Align = alClient
        BorderStyle = bsNone
        TabOrder = 0
      end
    end
  end
  object btnClose: TButton
    Left = 327
    Top = 70
    Width = 75
    Height = 25
    Cancel = True
    Caption = 'Close'
    TabOrder = 1
    OnClick = btnCloseClick
  end
  object btnReset: TButton
    Left = 327
    Top = 39
    Width = 75
    Height = 25
    Cancel = True
    Caption = 'Reset'
    TabOrder = 2
    OnClick = btnResetClick
  end
  object btnBuild: TButton
    Left = 327
    Top = 8
    Width = 75
    Height = 25
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
  end
end
