unit uFrmBrushBuilder;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.StdCtrls, Vcl.ExtCtrls, vcl.Dialogs, ES.BaseControls, ES.Layouts,
  ES.CfxClasses, Vcl.ComCtrls, uBrushBuilders.Utils, Engine.UnObj, DXEditPlus.Helpers;

type
  TControlType = (ctComboBox, ctCheckBox, ctFloat, ctString);  // only for testing!
  TBruhBuilderMode = (bmCube, bmSheet);

  TfrmBrushBuilder = class(TForm)
    gb1: TGroupBox;
    bbScrollBox: TScrollBox;
    bbHeader: THeaderControl;
    EsPanel2: TEsPanel;
    btnClose: TButton;
    btnReset: TButton;
    btnBuild: TButton;
    chkCloseWhenBuilt: TCheckBox;

    // New procedures
    procedure AddParameterCell(const aName: string; ControlType: TControlType; Items: TArray<string> = nil);
    procedure SortItems();
    procedure HandleHeaderResize();
    procedure BuildCube();
    procedure BuildSheet();

    function FindEditField(const NameToFind: string): TEdit;
    function FindCheckBox(const NameToFind: string): TCheckBox;
    function FindComboBox(const NameToFind: string): TComboBox;

    procedure FormMouseWheel(Sender: TObject; Shift: TShiftState; WheelDelta: Integer; MousePos: TPoint; var Handled: Boolean);
    procedure FormCreate(Sender: TObject);
    procedure bbHeaderDrawSection(HeaderControl: THeaderControl; Section: THeaderSection; const Rect: TRect; Pressed: Boolean);
    procedure bbItemEnter(Sender: TObject);
    procedure bbItemExit(Sender: TObject);
    procedure bbItemClick(Sender: TObject);
    procedure bbItemDoubleClick(Sender: TObject);
    procedure btnCloseClick(Sender: TObject);
    procedure btnResetClick(Sender: TObject);
    procedure bbHeaderSectionResize(HeaderControl: THeaderControl; Section: THeaderSection);
    procedure EditFieldEnter(Sender: TObject);
    procedure EditFieldExit(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure btnBuildClick(Sender: TObject);
  private
    { Private declarations }
  public
    FDividerPosition: Integer;
    BrushBuilderMode: TBruhBuilderMode;
    procedure ShowBuilder(mode: TBruhBuilderMode);
    { Public declarations }
  end;

var
  frmBrushBuilder: TfrmBrushBuilder;

implementation

{$R *.dfm}

uses uFrmMain;

procedure TfrmBrushBuilder.AddParameterCell(const aName: string; ControlType: TControlType; Items: TArray<string>);
var
    Panel: TEsPanel;
    Control: TControl;
begin
    try
        // Создание панели с использованием TEsPanel
        Panel := TEsPanel.Create(bbScrollBox);
        Panel.ParentBackground := False;
        Panel.Color := clSilver;
        Panel.OnEnter := bbItemEnter;
        Panel.OnExit := bbItemExit;
        Panel.OnClick := bbItemClick;
        Panel.OnDblClick := bbItemDoubleClick;

        Panel.Parent := bbScrollBox;
        Panel.FrameStyle := TExFrameStyle.Flat;
        Panel.Align := alTop;
        Panel.Height := Round(25 * DXEditPlus.Helpers.GetDPIAsRatio());  // Уменьшение высоты панели
        Panel.Caption := aName;
        Panel.CaptionHorzLayout := THorzLayout.Left;
        Panel.TabStop := True; // Позволяет панели получать фокус

        // Установка цвета рамки панели
        Panel.FrameColor := clWebDarkGray;


        // Создание и настройка контрола
        case ControlType of
            ctCheckBox:
                begin
                    Control := TCheckBox.Create(Panel);
                    Control.Parent := Panel;
                    TCheckBox(Control).Caption := '';
                    TCheckBox(Control).Top := 3;
                    TCheckBox(Control).Checked := False;
                    TCheckBox(Control).Width := 18;
                end;

            ctComboBox:
                begin
                    Control := TComboBox.Create(Panel);
                    Control.Parent := Panel;
                    Control.Width := 150; // Ширина контрола
                    TComboBox(Control).ParentFont := False;
                    TComboBox(Control).Items.AddStrings(Items);
                    TComboBox(Control).Style := csOwnerDrawFixed;
                    TComboBox(Control).ItemIndex := 0;
                    TComboBox(Control).Color := clMoneyGreen;
                end;

            ctFloat:
                begin
                    Control := TEdit.Create(Panel);
                    Control.Parent := Panel;
                    TEdit(Control).ParentFont := False;
                    TEdit(Control).Text := '256';
                    TEdit(Control).Color := clSilver;
                    TEdit(Control).BorderStyle := bsNone;
                    TEdit(Control).Height := Round(15 * DXEditPlus.Helpers.GetDPIAsRatio());
                    TEdit(Control).Top := 5;
                    TEdit(Control).OnEnter := EditFieldEnter;
                    TEdit(Control).OnExit := EditFieldExit;
                end;

            ctString:
                begin
                    Control := TEdit.Create(Panel);
                    Control.Parent := Panel;
                    TEdit(Control).ParentFont := False;
                    TEdit(Control).Text := 'Sample text';
                    TEdit(Control).Color := clSilver;
                    TEdit(Control).BorderStyle := bsNone;
                    TEdit(Control).Height := Round(15 * DXEditPlus.Helpers.GetDPIAsRatio());
                    TEdit(Control).Top := 5;
                    TEdit(Control).OnEnter := EditFieldEnter;
                    TEdit(Control).OnExit := EditFieldExit;
                end;
        end;

        // Настройка контрола и добавление в панель
        Control.Left := FDividerPosition;  // Использование FDividerPosition для задания отступа

    finally
        SortItems();
    end;
end;

procedure TfrmBrushBuilder.bbHeaderDrawSection(HeaderControl: THeaderControl; Section: THeaderSection; const Rect: TRect; Pressed: Boolean);
begin
    var TempRect := Rect;
    var TempRect2 := Rect;

    with bbHeader.Canvas do
    begin
        Font.Name := 'Verdana';
        Font.Size := 9;

        SetBkMode(Handle, TRANSPARENT); // Прозрачный фон.
        TempRect.Left := Rect.Left + 4; // Отступ
        TempRect.Top := Rect.Top + 1;

        // Handle style colors manually... because only first section is themed correctly.
        //Font.Color := StyleServices.GetStyleFontColor(sfButtonTextNormal);
        Brush.Color := clBtnFace;
        FillRect(Rect);

        DrawText(Handle, Section.Text, -1, TempRect, DT_END_ELLIPSIS); // Название
    end;

    Frame3D(bbHeader.Canvas, TempRect2, clBtnHighlight, clBtnShadow, 1);
end;

procedure TfrmBrushBuilder.bbHeaderSectionResize(HeaderControl: THeaderControl; Section: THeaderSection);
begin
    HandleHeaderResize();
end;

procedure TfrmBrushBuilder.bbItemClick(Sender: TObject);
begin
    if Sender is TESPanel then
    begin
        TESPanel(Sender).SetFocus();

        if TEsPanel(Sender).Controls[0] <> nil then
        begin
            if TEsPanel(Sender).Controls[0] is TEdit then
                TEdit(TEsPanel(Sender).Controls[0]).SetFocus();
        end;
    end;
end;

procedure TfrmBrushBuilder.bbItemEnter(Sender: TObject);
begin
    if Sender is TESPanel then
    begin
        TESPanel(Sender).Color := clNavy;
        TESPanel(Sender).Font.Color := clWhite;
    end;
end;

procedure TfrmBrushBuilder.bbItemExit(Sender: TObject);
begin
    if Sender is TESPanel then
    begin
        TESPanel(Sender).Color := clSilver;
        TESPanel(Sender).Font.Color := clBlack;
    end;
end;

procedure TfrmBrushBuilder.btnBuildClick(Sender: TObject);
begin
    case BrushBuilderMode of
      bmCube: BuildCube();
      bmSheet:;
    end;

    if chkCloseWhenBuilt.Checked = True then Close();
end;

procedure TfrmBrushBuilder.btnCloseClick(Sender: TObject);
begin
    Close();
end;

procedure TfrmBrushBuilder.btnResetClick(Sender: TObject);
begin
    SortItems();
end;

procedure TfrmBrushBuilder.BuildCube();
var
    HHeight: Single; // Половина высоты и т.д.
    HWidth: Single;
    HBreadth: Single;
    WThickness: Single;
    Temp: Double;
    Group: string;
    bHollow: Boolean;
begin
    frmMain.BuildBrush.NumPolys := 0;

    var HeightText := FindEditField('Height');
    HeightText.Text := '256';
    Temp := StrToFloat(HeightText.Text);
    HHeight := Temp / 2;


    var WidthText := FindEditField('Width');
    WidthText.Text := '256';
    Temp := StrToFloat(WidthText.Text);
    HWidth := Temp / 2;


    var BreadthText := FindEditField('Breadth');
    BreadthText.Text := '256';
    Temp := StrToFloat(BreadthText.Text);
    HBreadth := Temp / 2;

    var ThicknessText := FindEditField('WallThickness');
    ThicknessText.Text := '16';
    WThickness := StrToFloat(ThicknessText.Text);

    var GroupText := FindEditField('GroupName');
    GroupText.Text := 'Rect';
    Group := UpperCase(GroupText.Text);

    var chkHollow := FindCheckBox('Hollow');
    bHollow := chkHollow.Checked;


    if (HHeight <= 0) or (HWidth <= 0) or (HBreadth <= 0) then
    begin
        ShowMessage('Вы должны указать все числа, и они должны быть положительными и ненулевыми');
        Exit;
    end;

    if bHollow = True then
    begin
        if WThickness <= 0 then
        begin
            ShowMessage('Толщина должна быть положительной!');
            Exit;
        end;
        if (WThickness >= HHeight) or (WThickness >= HWidth) or (WThickness >= HBreadth) then
        begin
            ShowMessage('Стенка слишком толстая для своего размера!');
            Exit;
        end;
    end;

    // Строим внешнюю часть
    frmMain.BuildBrush.NumPolys := 6;
    MakeSymRectXY(1, 1, 1, HBreadth, HWidth, HHeight, Group, 'OUTSIDE');
    MakeSymRectXY(2, 4, -1, HBreadth, HWidth, -HHeight, Group, 'OUTSIDE');
    MakeSymRectXZ(3, 1, 1, HBreadth, HWidth, HHeight, Group, 'OUTSIDE');
    MakeSymRectXZ(4, 4, -1, HBreadth, -HWidth, HHeight, Group, 'OUTSIDE');
    MakeSymRectYZ(5, 4, -1, HBreadth, HWidth, HHeight, Group, 'OUTSIDE');
    MakeSymRectYZ(6, 1, 1, -HBreadth, HWidth, HHeight, Group, 'OUTSIDE');

    // Строим внутреннюю часть
    if bHollow = True then
    begin
        frmMain.BuildBrush.NumPolys := 12;
        HHeight := HHeight - WThickness;
        HWidth := HWidth - WThickness;
        HBreadth := HBreadth - WThickness;
        MakeSymRectXY(7, 4, -1, HBreadth, HWidth, HHeight, Group, 'CEILING');
        MakeSymRectXY(8, 1, 1, HBreadth, HWidth, -HHeight, Group, 'FLOOR');
        MakeSymRectXZ(9, 4, -1, HBreadth, HWidth, HHeight, Group, 'WALL');
        MakeSymRectXZ(10, 1, 1, HBreadth, -HWidth, HHeight, Group, 'WALL');
        MakeSymRectYZ(11, 1, 1, HBreadth, HWidth, HHeight, Group, 'WALL');
        MakeSymRectYZ(12, 4, -1, -HBreadth, HWidth, HHeight, Group, 'WALL');
    end;

    SendBrush();
end;

procedure TfrmBrushBuilder.BuildSheet();
var
    U, V, Temp: Single;
begin
    frmMain.BuildBrush.NumPolys := 0;

    var HeightText := FindEditField('Height');
    HeightText.Text := '128';
    Temp := StrToFloat(HeightText.Text);
    U := Temp / 2;

    var WidthText := FindEditField('Width');
    WidthText.Text := '128';
    Temp := StrToFloat(WidthText.Text);
    V := Temp / 2;

    // Ensure U and V are greater than 1
    if (U < 1) or (V < 1) then
    begin
        MessageBox(Handle, 'U and V parameters must be greater than 1.', 'Cannot create brush', MB_OK + MB_ICONSTOP + MB_TOPMOST);
        Exit;
    end;

    var GroupText := FindEditField('GroupName');
    GroupText.Text := 'Sheet';

    var AxisCombo := FindComboBox('Axis');
    case AxisCombo.ItemIndex of
        0: MakeSymRectXY(1, 1, 1, U, V, 0, GroupText.Text, 'Sheet'); // Horizontal
        1: MakeSymRectYZ(1, 1, 1, 0, U, V, GroupText.Text, 'Sheet'); // X
        2: MakeSymRectXZ(1, 1, 1, U, 0, V, GroupText.Text, 'Sheet'); // Y
    end;

    // Set the number of polygons in the brush
    frmMain.BuildBrush.NumPolys := 1;

    // Set the brush polygon flags
    frmMain.BuildBrush.Polys[1].Flags := PF_NotSolid;

    // Send the brush data to the editor and update the status
    SendBrush();
end;

procedure TfrmBrushBuilder.EditFieldEnter(Sender: TObject);
begin
    if Sender is TEdit then
    begin
        TEdit(Sender).Color := clWindow;
    end;
end;

procedure TfrmBrushBuilder.EditFieldExit(Sender: TObject);
begin
    if Sender is TEdit then
    begin
        TEdit(Sender).Color := clSilver;
    end;
end;

procedure TfrmBrushBuilder.bbItemDoubleClick(Sender: TObject);
begin
    if Sender is TESPanel then
    begin
        if TEsPanel(Sender).Controls[0] <> nil then
        begin
            if TEsPanel(Sender).Controls[0] is TCheckBox then
                TCheckBox(TEsPanel(Sender).Controls[0]).Checked := not TCheckBox(TEsPanel(Sender).Controls[0]).Checked;
        end;
    end;
end;

function TfrmBrushBuilder.FindCheckBox(const NameToFind: string): TCheckBox;
begin
    for var i := 0 to bbScrollBox.ControlCount - 1 do
    begin
        if (bbScrollBox.Controls[i] is TEsPanel) then
        begin
            if TEsPanel(bbScrollBox.Controls[i]).Caption = NameToFind then
            begin
                if TEsPanel(bbScrollBox.Controls[i]).Controls[0] is TCheckBox then
                begin
                    Result := TCheckBox(TEsPanel(bbScrollBox.Controls[i]).Controls[0]);
                    Break;
                end;
            end;
        end;
    end;
end;

function TfrmBrushBuilder.FindEditField(const NameToFind: string): TEdit;
begin
    for var i := 0 to bbScrollBox.ControlCount - 1 do
    begin
        if (bbScrollBox.Controls[i] is TEsPanel) then
        begin
            if TEsPanel(bbScrollBox.Controls[i]).Caption = NameToFind then
            begin
                if TEsPanel(bbScrollBox.Controls[i]).Controls[0] is TEdit then
                begin
                    Result := TEdit(TEsPanel(bbScrollBox.Controls[i]).Controls[0]);
                    Break;
                end;
            end;
        end;
    end;
end;

function TfrmBrushBuilder.FindComboBox(const NameToFind: string): TComboBox;
begin
    for var i := 0 to bbScrollBox.ControlCount - 1 do
    begin
        if (bbScrollBox.Controls[i] is TEsPanel) then
        begin
            if TEsPanel(bbScrollBox.Controls[i]).Caption = NameToFind then
            begin
                if TEsPanel(bbScrollBox.Controls[i]).Controls[0] is TComboBox then
                begin
                    Result := TComboBox(TEsPanel(bbScrollBox.Controls[i]).Controls[0]);
                    Break;
                end;
            end;
        end;
    end;
end;

procedure TfrmBrushBuilder.FormClose(Sender: TObject; var Action: TCloseAction);
begin
    for var i := bbScrollBox.ControlCount - 1 downto 0 do
    begin
        //if bbScrollBox.Controls[i] is TEsPanel then
            TEsPanel(bbScrollBox.Controls[i]).Free();
    end;
end;

procedure TfrmBrushBuilder.FormCreate(Sender: TObject);
begin
    FDividerPosition := 140;  // Начальное положение разделителя
end;

procedure TfrmBrushBuilder.FormMouseWheel(Sender: TObject; Shift: TShiftState; WheelDelta: Integer; MousePos: TPoint; var Handled: Boolean);
begin
    if WheelDelta > 1 then
    begin
        bbScrollBox.VertScrollBar.Position := bbScrollBox.VertScrollBar.Position - 25;
        Handled := True;
    end else
    begin
        bbScrollBox.VertScrollBar.Position := bbScrollBox.VertScrollBar.Position + 25;
        Handled := True;
    end;
end;

procedure TfrmBrushBuilder.HandleHeaderResize();
var
    Panel: TEsPanel;
    ValueControl: TControl;
begin
    var NameSectionWidth := bbHeader.Sections[0].Width;
    var ValueSectionStart := NameSectionWidth; // Начальная позиция для секции значения

    // Проходим по всем контролам в bbScrollBox
    for var i := 0 to bbScrollBox.ControlCount - 1 do
    begin
        // Проверяем, является ли контрол панелью TEsPanel
        if bbScrollBox.Controls[i] is TEsPanel then
        begin
            Panel := TEsPanel(bbScrollBox.Controls[i]);

            // Проверяем, что в панели есть хотя бы один контрол (элемент значения)
            if Panel.ControlCount > 0 then
            begin
                ValueControl := Panel.Controls[0];  // Единственный контрол на панели (элемент значения)

                // Настройка положения и ширины элемента значения
                ValueControl.Left := ValueSectionStart;
            end;
        end;
    end;
end;

procedure TfrmBrushBuilder.ShowBuilder(mode: TBruhBuilderMode);
begin
    case mode of
        bmCube:
        begin
            AddParameterCell('Height', ctFloat);
            AddParameterCell('Width', ctFloat);
            AddParameterCell('Breadth', ctFloat);
            AddParameterCell('WallThickness', ctFloat);
            AddParameterCell('GroupName', ctString);
            AddParameterCell('Hollow', ctCheckBox);
        end;

        bmSheet:
        begin
            AddParameterCell('Height', ctFloat);
            AddParameterCell('Width', ctFloat);
            AddParameterCell('Axis', ctComboBox, ['AX_Horizontal', 'AX_XAxis', 'AX_YAxis']);
            AddParameterCell('GroupName', ctString);
        end;
    end;

    Show();
end;

procedure TfrmBrushBuilder.SortItems();
begin
    for var i := 0 to bbScrollBox.ControlCount - 1 do
    begin
        if bbScrollBox.Controls[i] is TEsPanel then
        begin
            TEsPanel(bbScrollBox.Controls[i]).Align := alNone;
            TEsPanel(bbScrollBox.Controls[i]).Top := i * TEsPanel(bbScrollBox.Controls[i]).Height;
            TEsPanel(bbScrollBox.Controls[i]).Align := alTop;
        end;
    end;
end;

end.
