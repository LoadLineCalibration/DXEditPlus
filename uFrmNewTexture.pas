unit uFrmNewTexture;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, JvExMask, JvSpin, Vcl.Mask, Vcl.ExtCtrls,
  uEditorLoader, uEditor.Strings;

type
  TfrmNewTexture = class(TForm)
    GroupBox1: TGroupBox;
    edtPackage: TLabeledEdit;
    edtGroup: TLabeledEdit;
    edtTexName: TLabeledEdit;
    se_TexWidth: TJvSpinEdit;
    se_TexHeight: TJvSpinEdit;
    Label1: TLabel;
    Label2: TLabel;
    btnCreate: TButton;
    btnCancel: TButton;
    cmbTextureClass: TComboBox;
    Label3: TLabel;
    procedure btnCancelClick(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure btnCreateClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmNewTexture: TfrmNewTexture;
  NameCounter: Integer;

implementation

{$R *.dfm}

uses uFrmTextures;

procedure TfrmNewTexture.btnCancelClick(Sender: TObject);
begin
    Close();
end;

procedure TfrmNewTexture.btnCreateClick(Sender: TObject);
begin
    ServerCmd('TEXTURE NEW' +
        ' NAME=' + AnsiQuotedStr(edtTexName.Text, '"') +
        ' CLASS=' + cmbTextureClass.Items[cmbTextureClass.ItemIndex] +
        ' GROUP=' + edtGroup.Text +
        ' USIZE=' + se_TexWidth.Text  + // Value.ToString +
        ' VSIZE=' + se_TexHeight.Text + //Value.ToString +
        ' PACKAGE=' + AnsiQuotedStr(edtPackage.Text, '"'));

    frmTextures.TexScrollbarChange(frmTextures); // update browser window
    Close();
end;

procedure TfrmNewTexture.FormActivate(Sender: TObject);
var
    S, T: string;
begin
    // Increment UniqueCount and update the TexName
    Inc(NameCounter);
    edtTexName.Text := 'MyTex' + IntToStr(NameCounter);

    // Set TexSet from frmTexBrowser, with a default value
    edtPackage.Text := frmTextures.cmbPackages.Items[frmTextures.cmbPackages.ItemIndex];
    if edtPackage.Text = AllString then
        edtPackage.Text := 'MyTextures';

    // Set TexGroup from frmTexBrowser, with a default value
    edtGroup.Text := frmTextures.cmbGroups.Items[frmTextures.cmbGroups.ItemIndex];
    if edtGroup.Text = AllString then
        edtGroup.Text := 'None';

    // Populate TexClass with available texture classes
    cmbTextureClass.Clear;
    S := ServerGetProp('Class', 'GetChildren Class=Texture Concrete=1');
    T := ExtractString(S);

    while T <> '' do
    begin
        cmbTextureClass.Items.Add(T);
        if UpperCase(T) = 'FIRETEXTURE' then
            cmbTextureClass.ItemIndex := cmbTextureClass.Items.Count - 1;
        T := ExtractString(S);
    end;

    // Set a default index if nothing is selected
    if cmbTextureClass.ItemIndex < 0 then
        cmbTextureClass.ItemIndex := 0;
end;

end.
