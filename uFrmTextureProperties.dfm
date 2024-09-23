object frmTextureProperties: TfrmTextureProperties
  Left = 0
  Top = 0
  Caption = 'frmTextureProperties'
  ClientHeight = 406
  ClientWidth = 400
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  OnClose = FormClose
  OnCreate = FormCreate
  DesignSize = (
    400
    406)
  TextHeight = 15
  object Label1: TLabel
    Left = 4
    Top = 375
    Width = 90
    Height = 23
    Alignment = taRightJustify
    Anchors = [akLeft, akBottom]
    AutoSize = False
    Caption = 'Zoom (in %):'
    Layout = tlCenter
    ExplicitTop = 405
  end
  object ScrollBox1: TScrollBox
    Left = 0
    Top = 0
    Width = 400
    Height = 370
    HorzScrollBar.Tracking = True
    VertScrollBar.Tracking = True
    Anchors = [akLeft, akTop, akRight, akBottom]
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
  object btnClear: TButton
    Left = 326
    Top = 376
    Width = 75
    Height = 25
    Anchors = [akLeft, akBottom]
    Caption = 'Clear'
    TabOrder = 1
    OnClick = btnClearClick
  end
  object cmbZoom: TComboBox
    Left = 100
    Top = 376
    Width = 125
    Height = 22
    Style = csOwnerDrawFixed
    Anchors = [akLeft, akBottom]
    ItemIndex = 2
    TabOrder = 2
    Text = '100'
    OnChange = cmbZoomChange
    Items.Strings = (
      '25'
      '50'
      '100'
      '200')
  end
end
