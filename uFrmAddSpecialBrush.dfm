object frmAddSpecialBrush: TfrmAddSpecialBrush
  Left = 0
  Top = 0
  BorderIcons = []
  BorderStyle = bsDialog
  Caption = 'Add Special'
  ClientHeight = 183
  ClientWidth = 332
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  Position = poMainFormCenter
  ShowHint = True
  OnCreate = FormCreate
  TextHeight = 15
  object GroupBox1: TGroupBox
    Left = 4
    Top = 4
    Width = 322
    Height = 140
    Caption = 'Flags'
    DefaultHeaderFont = False
    HeaderFont.Charset = DEFAULT_CHARSET
    HeaderFont.Color = clWindowText
    HeaderFont.Height = -12
    HeaderFont.Name = 'Segoe UI'
    HeaderFont.Style = [fsBold]
    TabOrder = 0
    object Label1: TLabel
      Left = 3
      Top = 16
      Width = 59
      Height = 37
      Alignment = taRightJustify
      AutoSize = False
      Caption = 'Prefabs:'
      Layout = tlCenter
    end
    object rgSolidity: TRadioGroup
      Left = 224
      Top = 48
      Width = 89
      Height = 85
      Caption = 'Solidity'
      ItemIndex = 2
      Items.Strings = (
        'Solid'
        'Semi-Solid'
        'Non-Solid')
      TabOrder = 0
    end
    object cmbPrefabs: TComboBox
      Left = 68
      Top = 24
      Width = 145
      Height = 22
      Style = csOwnerDrawFixed
      TabOrder = 1
      OnChange = cmbPrefabsChange
      Items.Strings = (
        'Invisible Collision Hull'
        'Zone Portal'
        'Semisolid Pillar'
        'Transparent Window'
        'Masked Decoration'
        'Masked Wall'
        'Water'
        'Regular Brush')
    end
    object chkMasked: TCheckBox
      Left = 16
      Top = 52
      Width = 97
      Height = 17
      Caption = 'Masked'
      TabOrder = 2
    end
    object chkTranslucent: TCheckBox
      Left = 16
      Top = 75
      Width = 97
      Height = 17
      Caption = 'Translucent'
      TabOrder = 3
    end
    object chkTwoSided: TCheckBox
      Left = 121
      Top = 52
      Width = 97
      Height = 17
      Caption = '2 Sided'
      TabOrder = 4
    end
    object chkModulated: TCheckBox
      Left = 16
      Top = 97
      Width = 97
      Height = 17
      Caption = 'Modulated'
      TabOrder = 5
    end
    object chkZonePortal: TCheckBox
      Left = 121
      Top = 75
      Width = 97
      Height = 17
      Caption = 'Zone Portal'
      TabOrder = 6
    end
    object chkInvisible: TCheckBox
      Left = 121
      Top = 98
      Width = 97
      Height = 17
      Caption = 'Invisible'
      TabOrder = 7
    end
  end
  object btnCancel: TButton
    Left = 158
    Top = 150
    Width = 75
    Height = 25
    Caption = 'Cancel'
    TabOrder = 1
    OnClick = btnCancelClick
  end
  object btnOK: TButton
    Left = 239
    Top = 150
    Width = 87
    Height = 25
    Caption = 'Add Special'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = 'Segoe UI'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 2
    OnClick = btnOKClick
  end
  object chkAutoClose: TCheckBox
    Left = 4
    Top = 150
    Width = 93
    Height = 25
    Hint = 'This dialog will be closed when you click "Add Special".'
    Caption = 'Auto close?'
    TabOrder = 3
  end
end
