object frmNewTexture: TfrmNewTexture
  Left = 0
  Top = 0
  BorderIcons = []
  BorderStyle = bsDialog
  Caption = 'Create a new texture'
  ClientHeight = 226
  ClientWidth = 288
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  Position = poMainFormCenter
  OnActivate = FormActivate
  TextHeight = 15
  object GroupBox1: TGroupBox
    Left = 4
    Top = 8
    Width = 280
    Height = 181
    Caption = 'Set parameters'
    DefaultHeaderFont = False
    HeaderFont.Charset = DEFAULT_CHARSET
    HeaderFont.Color = clWindowText
    HeaderFont.Height = -12
    HeaderFont.Name = 'Segoe UI'
    HeaderFont.Style = [fsBold]
    TabOrder = 0
    object Label1: TLabel
      Left = 16
      Top = 147
      Width = 38
      Height = 23
      AutoSize = False
      Caption = 'Width: '
      Layout = tlCenter
    end
    object Label2: TLabel
      Left = 146
      Top = 147
      Width = 42
      Height = 23
      AutoSize = False
      Caption = 'Height: '
      Layout = tlCenter
    end
    object Label3: TLabel
      Left = 16
      Top = 111
      Width = 38
      Height = 23
      Alignment = taRightJustify
      AutoSize = False
      Caption = 'Class: '
      Layout = tlCenter
    end
    object edtPackage: TLabeledEdit
      Left = 60
      Top = 82
      Width = 210
      Height = 23
      EditLabel.Width = 50
      EditLabel.Height = 23
      EditLabel.Caption = 'Package: '
      LabelPosition = lpLeft
      TabOrder = 0
      Text = ''
    end
    object edtGroup: TLabeledEdit
      Left = 60
      Top = 53
      Width = 210
      Height = 23
      EditLabel.Width = 39
      EditLabel.Height = 23
      EditLabel.Caption = 'Group: '
      LabelPosition = lpLeft
      TabOrder = 1
      Text = ''
    end
    object edtTexName: TLabeledEdit
      Left = 60
      Top = 24
      Width = 210
      Height = 23
      EditLabel.Width = 38
      EditLabel.Height = 23
      EditLabel.Caption = 'Name: '
      LabelPosition = lpLeft
      TabOrder = 2
      Text = ''
    end
    object se_TexWidth: TJvSpinEdit
      Left = 60
      Top = 148
      Width = 80
      Height = 23
      EditorEnabled = False
      Items.Strings = (
        '1'
        '2'
        '4'
        '8'
        '16'
        '32'
        '64'
        '128'
        '256'
        '512'
        '1024'
        '2048')
      ValueType = vtString
      Value = 8.000000000000000000
      TabOrder = 3
      HideSelection = False
    end
    object se_TexHeight: TJvSpinEdit
      Left = 190
      Top = 148
      Width = 80
      Height = 23
      EditorEnabled = False
      Items.Strings = (
        '1'
        '2'
        '4'
        '8'
        '16'
        '32'
        '64'
        '128'
        '256'
        '512'
        '1024'
        '2048')
      ValueType = vtString
      Value = 8.000000000000000000
      TabOrder = 4
      HideSelection = False
    end
    object cmbTextureClass: TComboBox
      Left = 60
      Top = 111
      Width = 210
      Height = 22
      Style = csOwnerDrawFixed
      TabOrder = 5
    end
  end
  object btnCreate: TButton
    Left = 176
    Top = 195
    Width = 104
    Height = 25
    Caption = 'Create Texture'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = 'Segoe UI'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 1
    OnClick = btnCreateClick
  end
  object btnCancel: TButton
    Left = 4
    Top = 195
    Width = 75
    Height = 25
    Caption = 'Cancel'
    TabOrder = 2
    OnClick = btnCancelClick
  end
end
