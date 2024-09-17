unit uFrmAddSpecialBrush;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls, uEditorLoader, Engine.UnObj;

type
  TfrmAddSpecialBrush = class(TForm)
    GroupBox1: TGroupBox;
    btnCancel: TButton;
    btnOK: TButton;
    rgSolidity: TRadioGroup;
    cmbPrefabs: TComboBox;
    Label1: TLabel;
    chkMasked: TCheckBox;
    chkTranslucent: TCheckBox;
    chkTwoSided: TCheckBox;
    chkModulated: TCheckBox;
    chkZonePortal: TCheckBox;
    chkInvisible: TCheckBox;
    chkAutoClose: TCheckBox;
    procedure cmbPrefabsChange(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure btnCancelClick(Sender: TObject);
    procedure btnOKClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmAddSpecialBrush: TfrmAddSpecialBrush;

implementation

{$R *.dfm}

procedure TfrmAddSpecialBrush.btnCancelClick(Sender: TObject);
begin
    Close();
end;

procedure TfrmAddSpecialBrush.btnOKClick(Sender: TObject);
var
    Flags: LongWord;
    FlagsStr: string;
begin
    Flags := 0;
    FlagsStr := '';

    // Set flags based on user selections
    if chkMasked.Checked then
    begin
        Flags := Flags or PF_Masked;
        FlagsStr := FlagsStr + 'PF_Masked, ';
    end;

    if chkTranslucent.Checked then
    begin
        Flags := Flags or PF_Translucent;
        FlagsStr := FlagsStr + 'PF_Translucent, ';
    end;

    if chkModulated.Checked then
    begin
        Flags := Flags or PF_Modulated;
        FlagsStr := FlagsStr + 'PF_Modulated, ';
    end;

    if chkInvisible.Checked then
    begin
        Flags := Flags or PF_Invisible;
        FlagsStr := FlagsStr + 'PF_Invisible, ';
    end;

    if chkZonePortal.Checked then
    begin
        Flags := Flags or PF_Portal;
        FlagsStr := FlagsStr + 'PF_Portal, ';
    end;

    if chkTwoSided.Checked then
    begin
        Flags := Flags or PF_TwoSided;
        FlagsStr := FlagsStr + 'PF_TwoSided, ';
    end;

    // Solidity options
    case rgSolidity.ItemIndex of
        0: FlagsStr := FlagsStr + '0 (Solid), ';
        1:
        begin
            Flags := Flags or PF_Semisolid;
            FlagsStr := FlagsStr + 'PF_Semisolid, ';
        end;

        2:
        begin
            Flags := Flags or PF_NotSolid;
            FlagsStr := FlagsStr + 'PF_NotSolid, ';
        end;
    end;

//    ShowMessage('Integer flags: ' + IntToStr(Flags) + #13#10'Flags as string: ' + FlagsStr);
    ServerCmd('BRUSH ADD FLAGS=' + IntToStr(Flags));

    if chkAutoClose.Checked then
      Close();
end;

procedure TfrmAddSpecialBrush.cmbPrefabsChange(Sender: TObject);
begin
    case cmbPrefabs.ItemIndex of // Invisible collision hull
        0: begin
            chkMasked.Checked := False;
            chkZonePortal.Checked := False;
            chkTranslucent.Checked := False;
            chkModulated.Checked := False;
            chkInvisible.Checked := True;
            rgSolidity.ItemIndex := 1; // Semi-Solid
            chkTwoSided.Checked := False;
        end;

        1: begin // Zone Portal
            chkMasked.Checked := False;
            chkZonePortal.Checked := True;
            chkTranslucent.Checked := False;
            chkModulated.Checked := False;
            chkInvisible.Checked := True;
            rgSolidity.ItemIndex := 2; // Non-Solid
            chkTwoSided.Checked := True;
        end;

        2: begin // Semisolid Pillar
            chkMasked.Checked := False;
            chkZonePortal.Checked := False;
            chkTranslucent.Checked := False;
            chkModulated.Checked := False;
            chkInvisible.Checked := False;
            rgSolidity.ItemIndex := 1; // Semi-Solid
            chkTwoSided.Checked := False;
        end;

        3: begin // Transparent Window
            chkMasked.Checked := False;
            chkZonePortal.Checked := False;
            chkTranslucent.Checked := True;
            chkModulated.Checked := False;
            chkInvisible.Checked := False;
            rgSolidity.ItemIndex := 2; // Non-Solid
            chkTwoSided.Checked := False;
        end;

        4: begin // Masked Decoration
            chkMasked.Checked := True;
            chkZonePortal.Checked := False;
            chkTranslucent.Checked := False;
            chkModulated.Checked := False;
            chkInvisible.Checked := False;
            rgSolidity.ItemIndex := 2; // Non-Solid
            chkTwoSided.Checked := False;
        end;

        5: begin // Masked Wall
            chkMasked.Checked := True;
            chkZonePortal.Checked := False;
            chkTranslucent.Checked := False;
            chkModulated.Checked := False;
            chkInvisible.Checked := False;
            rgSolidity.ItemIndex := 1; // Semi-Solid
            chkTwoSided.Checked := False;
        end;

        6: begin // Water
            chkMasked.Checked := False;
            chkZonePortal.Checked := True;
            chkTranslucent.Checked := True;
            chkModulated.Checked := False;
            chkInvisible.Checked := False;
            rgSolidity.ItemIndex := 2; // Non-Solid
            chkTwoSided.Checked := True;
        end;

        7: begin // Regular Brush
            chkMasked.Checked := False;
            chkZonePortal.Checked := False;
            chkTranslucent.Checked := False;
            chkModulated.Checked := False;
            chkInvisible.Checked := False;
            rgSolidity.ItemIndex := 0; // Solid
            chkTwoSided.Checked := False;
        end;
    end;
end;

procedure TfrmAddSpecialBrush.FormCreate(Sender: TObject);
begin
    cmbPrefabs.ItemIndex := 7;
    cmbPrefabsChange(self);
end;

end.
