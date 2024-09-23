unit uFrmTextureProperties;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, ES.BaseControls, ES.Layouts, Vcl.StdCtrls, uEditorLoader,
  Engine.UnCamera;

type
  TfrmTextureProperties = class(TForm)
    ScrollBox1: TScrollBox;
    btnClear: TButton;
    TextureVP: TEsPanel;
    cmbZoom: TComboBox;
    Label1: TLabel;

    procedure SetTexture(const aName: string);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure btnClearClick(Sender: TObject);
    procedure cmbZoomChange(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmTextureProperties: TfrmTextureProperties;

implementation

{$R *.dfm}

procedure TfrmTextureProperties.SetTexture(const aName: string);
var
    S: string;
    iPos: Integer;
    Zoom: Double;
begin
    Caption := AName;

    S := ServerGetProp('Texture', 'SIZE TEXTURE=' + AnsiQuotedStr(Caption, '"'));
    Zoom := StrToInt(cmbZoom.Items[cmbZoom.ItemIndex]) / 100;
    iPos := Pos(',', S);

    var TexHeight := StrToInt(Copy(S, iPos + 1, Length(S)));
    var TexWidth := StrToInt(Copy(S, 1, iPos - 1));

    if iPos > 0 then
    begin
        TextureVP.Visible := False;

        TextureVP.Height := Round(TexHeight * Zoom);
        TextureVP.Width := Round(TexWidth * Zoom);

        ServerCmd('CAMERA OPEN ' +
            ' TEXTURE=' + AnsiQuotedStr(Caption, '"') +
            ' NAME=TexPropCam X=0 Y=0' +
            ' XR=' + IntToStr(TextureVP.Width)  +
            ' YR=' + IntToStr(TextureVP.Height) +
            ' REN=' + Trim(IntToStr(REN_TEXVIEW)) +
            ' FLAGS=' + Trim(IntToStr(SHOW_ChildWindow + SHOW_NOBUTTONS + SHOW_REALTIME)) +
            ' HWND=' + Trim(IntToStr(TextureVP.Handle)));

        TextureVP.Visible := True;
        Show();
    end
    else
        Close();
end;

procedure TfrmTextureProperties.FormClose(Sender: TObject; var Action: TCloseAction);
begin
    ServerCmd('CAMERA CLOSE NAME=TexPropCam');
end;

procedure TfrmTextureProperties.FormCreate(Sender: TObject);
begin
    cmbZoom.ItemIndex := 2; // 100
end;

procedure TfrmTextureProperties.btnClearClick(Sender: TObject);
begin
    ServerCmd('TEXTURE CLEAR NAME=' + AnsiQuotedStr(Caption, '"'));
end;

procedure TfrmTextureProperties.cmbZoomChange(Sender: TObject);
begin
    SetTexture(Caption);
end;



end.
