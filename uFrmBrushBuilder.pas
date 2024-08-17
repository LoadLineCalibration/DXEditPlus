unit uFrmBrushBuilder;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.StdCtrls, Vcl.ExtCtrls, vcl.Dialogs, ES.BaseControls, ES.Layouts,
  System.Generics.Collections, ES.CfxClasses, Vcl.ComCtrls;

type
  TControlType = (ctComboBox, ctCheckBox, ctFloat);  // only for testing!

  TfrmBrushBuilder = class(TForm)
    gb1: TGroupBox;
    bbScrollBox: TScrollBox;
    bbHeader: THeaderControl;
    EsPanel2: TEsPanel;
    btnClose: TButton;
    btnReset: TButton;
    btnBuild: TButton;

    // New procedures
    procedure AddParameterCell(const aName: string; ControlType: TControlType; Items: TArray<string> = nil);
    procedure SortItems();
    procedure HandleHeaderResize();

    procedure FormShow(Sender: TObject);
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
  private
    { Private declarations }
  public
    FDividerPosition: Integer;
    FPanels: TList<TEsPanel>;
    { Public declarations }
  end;

var
  frmBrushBuilder: TfrmBrushBuilder;

implementation

{$R *.dfm}

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
        Panel.Height := 25;  // Уменьшение высоты панели
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
                    TEdit(Control).Text := '0.00';
                end;
        end;

        // Настройка контрола и добавление в панель
        Control.Left := FDividerPosition;  // Использование FDividerPosition для задания отступа
        Control.Top := 2;  // Уменьшено, чтобы соответствовать высоте панели

        FPanels.Add(Panel); // Добавление панели в список для дальнейшего обновления

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

procedure TfrmBrushBuilder.btnCloseClick(Sender: TObject);
begin
    Close();
end;

procedure TfrmBrushBuilder.btnResetClick(Sender: TObject);
begin
    SortItems();
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

procedure TfrmBrushBuilder.FormCreate(Sender: TObject);
begin
    FDividerPosition := 140;  // Начальное положение разделителя
    FPanels := TList<TEsPanel>.Create;
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

procedure TfrmBrushBuilder.FormShow(Sender: TObject);
begin
    AddParameterCell('Height', ctFloat);
    AddParameterCell('Width', ctFloat);
    AddParameterCell('Breadth', ctFloat);
    AddParameterCell('WallThickness', ctFloat);
    AddParameterCell('Hollow', ctCheckBox);

    AddParameterCell('Select Option', ctComboBox, ['Option1', 'Option2', 'Option3']);
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

procedure TfrmBrushBuilder.SortItems();
begin
    // Проходим по всем панелям и выставляем их в порядке добавления
    for var i := 0 to FPanels.Count - 1 do
    begin
        FPanels[i].Align := alNone; // Убираем выравнивание
        FPanels[i].Top := i * FPanels[i].Height;
        FPanels[i].Align := alTop;  // Восстанавливаем выравнивание
    end;
end;

end.
