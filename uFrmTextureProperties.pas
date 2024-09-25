unit uFrmTextureProperties;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, ES.BaseControls, ES.Layouts, Vcl.StdCtrls, uEditorLoader,
  Engine.UnCamera, Vcl.ExtCtrls;

type
  TfrmTextureProperties = class(TForm)
    ScrollBox1: TScrollBox;
    btnClear: TButton;
    TextureVP: TEsPanel;
    cmbZoom: TComboBox;
    Label1: TLabel;
    btnClose: TButton;
    pnlTexProps: TEsPanel;
    EsPanel2: TEsPanel;
    Splitter1: TSplitter;

    // New procedures
    procedure SetTexture(const aName: string);
    procedure IntegrateWindowToPanel(ChildWindow: HWND; ParentPanel: HWND);


    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure btnClearClick(Sender: TObject);
    procedure cmbZoomChange(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure btnCloseClick(Sender: TObject);
    procedure Splitter1Moved(Sender: TObject);
  private
    { Private declarations }
  public
    var PSHandle: HWND;
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
            ' NAME=TexPropCam_' + IntToStr(TextureVP.Handle) +' X=0 Y=0' +
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

procedure TfrmTextureProperties.Splitter1Moved(Sender: TObject);
begin
    if PSHandle = 0 then Exit();

    var Rect: TRect;
    Winapi.Windows.GetClientRect(pnlTexProps.Handle, Rect);

    // Устанавливаем размеры дочернего окна под размеры панели
    SetWindowPos(PSHandle, HWND_TOP, Rect.Left, Rect.Top, Rect.Right - Rect.Left, Rect.Bottom - Rect.Top, SWP_NOZORDER or SWP_NOACTIVATE);
end;

procedure TfrmTextureProperties.IntegrateWindowToPanel(ChildWindow: HWND; ParentPanel: HWND);
var
    Style: LongInt;
begin
    Style := GetWindowLong(ChildWindow, GWL_STYLE);
    Style := Style and not (WS_CAPTION or WS_THICKFRAME or WS_BORDER); // Убираем рамки
    SetWindowLong(ChildWindow, GWL_STYLE, Style);

    // Устанавливаем родителем для найденного окна панель
    Winapi.Windows.SetParent(ChildWindow, ParentPanel);

    var Rect: TRect;
    Winapi.Windows.GetClientRect(ParentPanel, Rect);

    // Устанавливаем размеры дочернего окна под размеры панели
    SetWindowPos(ChildWindow, HWND_TOP, Rect.Left, Rect.Top, Rect.Right - Rect.Left, Rect.Bottom - Rect.Top, SWP_NOZORDER or SWP_NOACTIVATE);

    // Убедимся, что окно будет правильно отображаться
    ShowWindow(ChildWindow, SW_SHOW);
end;

procedure TfrmTextureProperties.FormClose(Sender: TObject; var Action: TCloseAction);
begin
    if PSHandle <> 0 then
        SendMessage(PSHandle, WM_CLOSE, 0, 0);

    ServerCmd('CAMERA CLOSE NAME=TexPropCam_' + IntToStr(TextureVP.Handle));

    Action := caFree;
end;

procedure TfrmTextureProperties.FormCreate(Sender: TObject);
begin
    cmbZoom.ItemIndex := 2; // 100
end;

procedure TfrmTextureProperties.btnClearClick(Sender: TObject);
begin
    ServerCmd('TEXTURE CLEAR NAME=' + AnsiQuotedStr(Caption, '"'));
end;

procedure TfrmTextureProperties.btnCloseClick(Sender: TObject);
begin
    Close();
end;

procedure TfrmTextureProperties.cmbZoomChange(Sender: TObject);
begin
    SetTexture(Caption);
end;



end.
