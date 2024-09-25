object frmTextureProperties: TfrmTextureProperties
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu, biMaximize]
  Caption = 'frmTextureProperties'
  ClientHeight = 416
  ClientWidth = 640
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  Position = poOwnerFormCenter
  OnClose = FormClose
  OnCreate = FormCreate
  OnResize = Splitter1Moved
  TextHeight = 15
  object Splitter1: TSplitter
    Left = 377
    Top = 0
    Width = 4
    Height = 386
    Beveled = True
    OnMoved = Splitter1Moved
  end
  object ScrollBox1: TScrollBox
    Left = 0
    Top = 0
    Width = 377
    Height = 386
    HorzScrollBar.Tracking = True
    VertScrollBar.Tracking = True
    Align = alLeft
    TabOrder = 0
    object TextureVP: TEsPanel
      Left = 0
      Top = 0
      Width = 185
      Height = 41
      TabOrder = 0
      FrameStyle = None
    end
  end
  object pnlTexProps: TEsPanel
    Left = 381
    Top = 0
    Width = 259
    Height = 386
    Align = alClient
    TabOrder = 1
    FrameStyle = Chess
    ExplicitLeft = 380
    ExplicitWidth = 210
  end
  object EsPanel2: TEsPanel
    Left = 0
    Top = 386
    Width = 640
    Height = 30
    Align = alBottom
    TabOrder = 2
    FrameStyle = Chess
    ExplicitWidth = 590
    DesignSize = (
      640
      30)
    object Label1: TLabel
      Left = 2
      Top = 2
      Width = 90
      Height = 26
      Align = alLeft
      Alignment = taRightJustify
      AutoSize = False
      Caption = 'Zoom (in %):'
      Layout = tlCenter
      ExplicitLeft = 4
      ExplicitTop = 405
      ExplicitHeight = 23
    end
    object btnClear: TButton
      Left = 231
      Top = 4
      Width = 58
      Height = 22
      Anchors = [akLeft, akBottom]
      Caption = 'Clear'
      TabOrder = 0
      OnClick = btnClearClick
    end
    object btnClose: TButton
      Left = 295
      Top = 4
      Width = 82
      Height = 22
      Anchors = [akLeft, akBottom]
      Caption = 'Close'
      TabOrder = 1
      OnClick = btnCloseClick
    end
    object cmbZoom: TComboBox
      Left = 100
      Top = 4
      Width = 125
      Height = 22
      Style = csOwnerDrawFixed
      Anchors = [akLeft, akBottom]
      TabOrder = 2
      OnChange = cmbZoomChange
      Items.Strings = (
        '25'
        '50'
        '100'
        '200'
        '400'
        '800')
    end
  end
end
