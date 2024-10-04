unit uFrmClassBrowser;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Menus, Vcl.StdCtrls, Vcl.CheckLst, Vcl.ComCtrls, Vcl.ExtCtrls,
  ES.BaseControls, ES.Layouts, uEditorLoader, System.Generics.Collections, Vcl.Mask, System.StrUtils,
  uEditor.Strings, uEditor.Consts, System.Types;

type
  TfrmClassBrowser = class(TForm)
    mnuClassBrowser: TMainMenu;
    pnlTree: TEsPanel;
    pnlPackages: TEsPanel;
    Splitter: TSplitter;
    TreeClasses: TTreeView;
    File1: TMenuItem;
    view1: TMenuItem;
    pnlOptions: TEsPanel;
    chkActorsOnly: TCheckBox;
    edtClassSearch: TLabeledEdit;
    pm_ClassTree: TPopupMenu;
    ExpandAll1: TMenuItem;
    CollapseAll1: TMenuItem;
    Addnewclass1: TMenuItem;
    mnuViewScript: TMenuItem;
    Deletethisclass1: TMenuItem;
    N1: TMenuItem;
    SelectActorsofthisclass1: TMenuItem;
    SelectActorsofSubClass1: TMenuItem;
    Defaultproperties1: TMenuItem;
    N2: TMenuItem;
    btnStartClassSearch: TButton;
    PackagesList: TCheckListBox;
    chkShowPackages: TCheckBox;
    btnQuickJump: TButton;
    pm_QuickJump: TPopupMenu;
    N3: TMenuItem;
    OpenPackage1: TMenuItem;
    Savecheckedpackages1: TMenuItem;
    N4: TMenuItem;
    ExportCheckedPackages1: TMenuItem;
    Exportmodifiedscripts1: TMenuItem;
    Exportallscripts1: TMenuItem;
    mi_FollowMainWindow: TMenuItem;
    N8: TMenuItem;
    DocktoMasterBrowser1: TMenuItem;

    // new functions
    function GetCurrentClass(): string;
    function GetCurrentPackage(): string;

    // new procedures
    procedure BuildTreeFromString(const Input, StartFrom: string);
    procedure TryToFindClass();
    procedure FillPackagesList();
    procedure BuildQuickJumpMenu();


    procedure TreeClassesExpanding(Sender: TObject; Node: TTreeNode; var AllowExpansion: Boolean);
    procedure chkActorsOnlyClick(Sender: TObject);
    procedure TreeClassesMouseDown(Sender: TObject; Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
    procedure ExpandAll1Click(Sender: TObject);
    procedure CollapseAll1Click(Sender: TObject);
    procedure mnuViewScriptClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure TreeClassesEditing(Sender: TObject; Node: TTreeNode; var AllowEdit: Boolean);
    procedure TreeClassesChange(Sender: TObject; Node: TTreeNode);
    procedure btnStartClassSearchClick(Sender: TObject);
    procedure edtClassSearchKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure chkShowPackagesClick(Sender: TObject);
    procedure QuickJumpItemClick(Sender: TObject);
    procedure btnQuickJumpClick(Sender: TObject);
    procedure mi_FollowMainWindowClick(Sender: TObject);
    procedure TreeClassesKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
  private
    procedure LoadNodeChildren(Node: TTreeNode);
    { Private declarations }
  public
    var CurrentClass: string;
    var bFollowMainWindow: Boolean;
    { Public declarations }
  end;

var
  frmClassBrowser: TfrmClassBrowser;

implementation

{$R *.dfm}

uses uFrmMain, uFrmScriptEditor;

procedure TfrmClassBrowser.btnQuickJumpClick(Sender: TObject);
begin
    BuildQuickJumpMenu();

    if pm_QuickJump.Items.Count > 0 then
    begin
        pm_QuickJump.Popup(btnQuickJump.ClientToScreen(Point(0, btnQuickJump.Height)).X,
                           btnQuickJump.ClientToScreen(Point(0, btnQuickJump.Height)).Y);
    end;
end;

procedure TfrmClassBrowser.btnStartClassSearchClick(Sender: TObject);
begin
    if Trim(edtClassSearch.text) <> '' then
        TryToFindClass();
end;

procedure TfrmClassBrowser.BuildTreeFromString(const Input, StartFrom: string);
var
    Items: TStringList;
    I: Integer;
    Node: TTreeNode;
    NodeName, NodeType: string;
    NodeDict: TDictionary<string, TTreeNode>;
begin
    TreeClasses.Items.BeginUpdate;
    try
        TreeClasses.Items.Clear;

        Items := TStringList.Create;
        NodeDict := TDictionary<string, TTreeNode>.Create;
        try
            // ��������� ������ �� �������� �� �������
            ExtractStrings([','], [], PChar(Input), Items);

            // �������� �������� ���� "Object" ��� "Actor"
            NodeDict.Add(StartFrom, TreeClasses.Items.Add(nil, StartFrom));

            // �������� ���� � ��� �������, � ������� ��� ���������� � ������
            for I := 0 to Items.Count - 1 do
            begin
                NodeName := Items[I];
                NodeType := Copy(NodeName, Length(NodeName) - 1, 2);
                NodeName := Copy(NodeName, 1, Length(NodeName) - 2);

                // ���� ���� ����� ��� |X
                if NodeType = '|X' then
                begin
                    // ��������� ��� �������� ���� ��������� ���� "Object"
                    TreeClasses.Items.AddChild(NodeDict[StartFrom], NodeName);
                end
                else if NodeType = '|C' then // ���� ���� ����� ��� |C
                begin
                    // ����� ������������ ����
                    if not NodeDict.TryGetValue(NodeName, Node) then
                    begin
                        Node := TreeClasses.Items.AddChild(NodeDict[StartFrom], NodeName);
                        NodeDict.Add(NodeName, Node);

                        // �������� "Loading..." ��� ��������� �������� �������
                        TreeClasses.Items.AddChild(Node, strLoading);
                    end;
                end;
            end;

        finally
            Items.Free();
            NodeDict.Free();
        end;

    finally
        TreeClasses.Items.EndUpdate();
    end;
end;

procedure TfrmClassBrowser.chkActorsOnlyClick(Sender: TObject);
begin
    if chkActorsOnly.Checked = True then
    begin
        var Actors := ServerGetProp('Class', 'Query Parent=Actor');
        BuildTreeFromString(Actors, '*Actor');
    end else
    begin
        var Objects := ServerGetProp('Class', 'Query Parent=Object');
        BuildTreeFromString(Objects, '*Object');
    end;
end;

procedure TfrmClassBrowser.chkShowPackagesClick(Sender: TObject);
begin
    pnlPackages.Visible := chkShowPackages.Checked;
    Splitter.Visible := chkShowPackages.Checked;
end;

procedure TfrmClassBrowser.CollapseAll1Click(Sender: TObject);
begin
    TreeClasses.FullCollapse();
end;

procedure TfrmClassBrowser.edtClassSearchKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
    if Key = VK_RETURN then btnStartClassSearchClick(self);
end;

procedure TfrmClassBrowser.ExpandAll1Click(Sender: TObject);
begin
    TreeClasses.FullExpand();
end;

procedure TfrmClassBrowser.FillPackagesList();
begin
    PackagesList.Clear();
    
    var Packages := GetPackagesList();

    for var Package in Packages do
    begin
        PackagesList.Items.Add(Package);
    end;
end;

procedure TfrmClassBrowser.BuildQuickJumpMenu();
var
    QuickJumpItems: TStringList;
begin
    pm_QuickJump.Items.Clear(); // ������� ����� ��������� �������� ����

    QuickJumpItems := TStringList.Create();
    try
        QuickJumpItems.LoadFromFile(ExtractFilePath(ParamStr(0)) + 'EditorRes\' + ActorBrowserQuickJump);

        for var i:= 0 to QuickJumpItems.Count -1 do
        begin
            var line := QuickJumpItems.Strings[i];

            // skip empty lines
            if QuickJumpItems.Strings[i].IsEmpty then
                Continue;

            if QuickJumpItems.Strings[i] = '-' then
            begin
                var CustomMenuSeparator := TMenuItem.Create(pm_QuickJump);

                CustomMenuSeparator.Caption := QuickJumpItems.Strings[i];
                pm_QuickJump.Items.Add(CustomMenuSeparator);
                Continue;
            end;

            // now split the line
            var parts := TStringList.Create();

            try
                parts.Delimiter := ';';
                parts.StrictDelimiter := True;
                parts.DelimitedText := line;

                var QuickJumpMenuItem := TMenuItem.Create(pm_QuickJump);
                    QuickJumpMenuItem.Caption := parts[0] + #9 + parts[1];

                // OnClick event handler...
                QuickJumpMenuItem.OnClick := QuickJumpItemClick;

                // Add to menu
                pm_QuickJump.Items.Add(QuickJumpMenuItem);
            finally
                parts.Free(); // free memory
            end;
        end;

    finally
        QuickJumpItems.Free();
    end;
end;

procedure TfrmClassBrowser.mi_FollowMainWindowClick(Sender: TObject);
begin
    bFollowMainWindow := mi_FollowMainWindow.Checked;
end;

procedure TfrmClassBrowser.FormShow(Sender: TObject);
begin
    chkActorsOnly.Checked := True;
    chkActorsOnlyClick(self);

    FillPackagesList();
end;

function TfrmClassBrowser.GetCurrentClass(): string;
var
    NodeText: string;
begin
    if Assigned(TreeClasses.Selected) = True then
    begin
        // �������� ����� ���������� ����
        NodeText := TreeClasses.Selected.Text;

        // ���� ����� ���������� � '*', ������� ���� ������
        if NodeText.StartsWith('*') then
          NodeText := NodeText.Substring(1);

        // ���������� ��������� � ��������� ���������
        Result := Trim(NodeText);
    end
    else
    begin
        // ���� ��� ���������� ����, ���������� ������ ������
        Result := '';
    end;
end;

function TfrmClassBrowser.GetCurrentPackage(): string;
begin
    var ClassName := GetCurrentClass(); // �������� ��� �������� ���������� ������

    if ClassName <> '' then
    begin
        // ����������� �������� ������ ��� �������� ������
        Result := ServerGetProp('Class', Format('Package Class=%s', [ClassName]));
    end
    else
    begin
        // ���� ������� ����� �� ������, ���������� ������ ������
        Result := '';
    end;
end;

procedure TfrmClassBrowser.LoadNodeChildren(Node: TTreeNode);
var
    ResultString: string;
    Items: TStringList;
    I: Integer;
    NewNodeName, NodeType: string;
    NewNode: TTreeNode;
    NodeText: string;
begin
    // ������� '*' �� ����� ����, ���� ��� ������������
    NodeText := Node.Text;
    if NodeText[1] = '*' then
        NodeText := Copy(NodeText, 2, Length(NodeText) - 1);

    // �������� ������ ������ ��� ���������� ����
    ResultString := ServerGetProp('Class', Format('Query Parent=%s', [NodeText]));

    // ������� ������ ������ �� ��������
    Items := TStringList.Create;
    try
        ExtractStrings([','], [], PChar(ResultString), Items);

        TreeClasses.Items.BeginUpdate;
        try
            // ������� �������� ������� "Loading..."
            if Node.Count = 1 then
            begin
                if Node.Item[0].Text = strLoading then
                begin
                    Node.Item[0].Delete;
                end;
            end;

            // �������� ����� �������� ��������
            for I := 0 to Items.Count - 1 do
            begin
                NodeType := Copy(Items[I], Length(Items[I]) - 1, 2);
                NewNodeName := Copy(Items[I], 1, Length(Items[I]) - 2);

                // ��������� ��� ����� �������� ����
                NewNode := TreeClasses.Items.AddChild(Node, NewNodeName);

                // ��������� "Loading..." ��� �������� ����� ���� |C
                if NodeType = '|C' then
                begin
                    TreeClasses.Items.AddChild(NewNode, strLoading);
                end;
            end;

        finally
            TreeClasses.Items.EndUpdate();
        end;
    finally
        Items.Free();
    end;
end;

procedure TfrmClassBrowser.mnuViewScriptClick(Sender: TObject);
begin
    var ScriptName := GetCurrentPackage() + '.' + GetCurrentClass();
    frmScriptEditor.ScriptEdit.Text := frmScriptEditor.RemoveRTFFormatting(ServerGetProp('RTF', ScriptName));
    frmScriptEditor.Show();
end;

procedure TfrmClassBrowser.QuickJumpItemClick(Sender: TObject);
var
    UseText, TextB4Tab: string;
begin
    UseText := (Sender as TMenuItem).Caption;

    var TabIndex := Pos(#9, UseText); // find position of Tab char

    if TabIndex = 0 then
        TextB4Tab := UseText // no Tab char, so use whole caption
    else
        TextB4Tab := Copy(UseText, 1, TabIndex -1);

    edtClassSearch.Text := TextB4Tab;
    TryToFindClass();
end;

procedure TfrmClassBrowser.TreeClassesChange(Sender: TObject; Node: TTreeNode);
begin
    Caption := GetCurrentPackage() + '.' + GetCurrentClass();
    CurrentClass := Caption;
end;

procedure TfrmClassBrowser.TreeClassesEditing(Sender: TObject; Node: TTreeNode; var AllowEdit: Boolean);
begin
    AllowEdit := False;
end;

procedure TfrmClassBrowser.TreeClassesExpanding(Sender: TObject; Node: TTreeNode; var AllowExpansion: Boolean);
begin
    // ���������, �������� �� ���� �������� ������� "Loading..."
    if Node.Count = 1 then
    begin
        if Node.Item[0].Text = strLoading then
          LoadNodeChildren(Node); // ���������� ���� � ��������� �������� ��������
    end;
end;

procedure TfrmClassBrowser.TreeClassesKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
    var NodeRect: TRect;

    if (Key = VK_APPS) and (TreeClasses.Selected <> nil) then
    begin
        NodeRect := TreeClasses.Selected.DisplayRect(True);

        var NodePos := TreeClasses.ClientToScreen(NodeRect);
        pm_ClassTree.Popup(NodePos.Left, NodePos.Top);
    end;
end;

procedure TfrmClassBrowser.TreeClassesMouseDown(Sender: TObject; Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
    var ScreenPos: TPoint;

    // Convert client coordinates to screen coordinates
    ScreenPos := ClientToScreen(Point(X, Y));

    // I don't know why there is exception, so I will spawn the menu manually...
    if Button = mbRight then
        pm_ClassTree.Popup(ScreenPos.X, ScreenPos.Y + 45);
end;

procedure TfrmClassBrowser.TryToFindClass();
var
    SearchTextUpper: string;
    NodeFound: Boolean;
    FoundNode: TTreeNode;
    NodeStates: TDictionary<TTreeNode, Boolean>;  // ������� ��� �������� ��������� �����

    // ����� ���� � ��� �������� �����
    procedure SearchNode(ANode: TTreeNode);
    var
        ChildNode: TTreeNode;
    begin
        // ��������� ����� �������� ����
        if Pos(SearchTextUpper, UpperCase(ANode.Text)) > 0 then
        begin
            FoundNode := ANode;  // ���������� ��������� ����
            ANode.MakeVisible;  // ������ ���� �������
            ANode.Selected := True;  // �������� ����
            TreeClasses.Selected := ANode;
            NodeFound := True;  // ������������� ����, ��� ���� ������
        end;
        // ���������� ����, ���� �� �������� �������� ����
        if ANode.HasChildren then
        begin
            ANode.Expand(False);  // ���������� ����, �� �������� ������� ���������
        end;
        // ���������� ��������� �������� ����
        ChildNode := ANode.GetFirstChild;
        while ChildNode <> nil do
        begin
            SearchNode(ChildNode);
            ChildNode := ChildNode.GetNextSibling;
        end;
    end;

    procedure SaveNodeStates(ANode: TTreeNode; States: TDictionary<TTreeNode, Boolean>); // Save tree state
    var
        ChildNode: TTreeNode;
    begin
        if not States.ContainsKey(ANode) then
            States.Add(ANode, ANode.Expanded);

        ChildNode := ANode.GetFirstChild;
        while ChildNode <> nil do
        begin
            SaveNodeStates(ChildNode, States);
            ChildNode := ChildNode.GetNextSibling;
        end;
    end;

    procedure RestoreNodeStates(States: TDictionary<TTreeNode, Boolean>);     // Restore tree back to previous state
    var
        NodeStatePair: TPair<TTreeNode, Boolean>;
    begin
        // ��������������� ��������� ����� �� �������
        TreeClasses.Items.BeginUpdate;
        try
            for NodeStatePair in States do
            begin
                if NodeStatePair.Value then
                    NodeStatePair.Key.Expand(False)
                else
                    NodeStatePair.Key.Collapse(False);
            end;

        finally
            TreeClasses.Items.EndUpdate();
        end;
    end;

    // ����� �� ���� ����� ������
    procedure SearchAllNodes();
    var
        RootNode: TTreeNode;
    begin
        // �������� ���������� ������
        TreeClasses.Items.BeginUpdate;
        try
            NodeFound := False;  // ���������� ���� �� ������
            // �������� �� ���� �������� �����
            RootNode := TreeClasses.Items.GetFirstNode;
            while RootNode <> nil do
            begin
                SearchNode(RootNode);  // ���� ����, ������� � ���������
                RootNode := RootNode.GetNextSibling;  // ��������� � ���������� ��������� ����
            end;

        finally
            // ��������� ���������� ������
            TreeClasses.Items.EndUpdate;
        end;
    end;
begin
    SearchTextUpper := UpperCase(edtClassSearch.Text);  // �������� ����� ������ � ������� ��������
    FoundNode := nil;  // ���������� ��� ���������� ����
    NodeStates := TDictionary<TTreeNode, Boolean>.Create();

    try
        // ��������� ��������� ���� �����
        SaveNodeStates(TreeClasses.Items[0], NodeStates);
        SearchAllNodes();  // ��������� ����� �� ���� ����� ������

        if NodeFound and (FoundNode <> nil) then
        begin
            // ������������ � ���������� ��������
            RestoreNodeStates(NodeStates);
            FoundNode.MakeVisible;
            TreeClasses.Selected := FoundNode;  // �������� ��������� ����
        end
        else
        begin
            MessageBox(Handle, PChar(strCannotFind + edtClassSearch.Text), 'Search', MB_OK + MB_ICONWARNING + MB_TOPMOST);
            RestoreNodeStates(NodeStates);
        end;

    finally
        NodeStates.Free();  // ����������� �������
    end;
end;


end.
