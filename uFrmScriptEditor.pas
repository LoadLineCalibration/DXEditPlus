unit uFrmScriptEditor;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, TextEditor, Vcl.Menus, Vcl.StdCtrls, Vcl.ComCtrls;

type
  TfrmScriptEditor = class(TForm)
    ScriptEdit: TTextEditor;
    mnuScriptEditor: TMainMenu;
    File1: TMenuItem;
    Loadtest1: TMenuItem;

    function RemoveRTFFormatting(const rtfText: string): string; // https://groups.google.com/g/borland.public.delphi.objectpascal/c/vFCXxbARZRI
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmScriptEditor: TfrmScriptEditor;

implementation

{$R *.dfm}

function TfrmScriptEditor.RemoveRTFFormatting(const rtfText: string): string;
var
    ss:TStringStream;
    tempRichEdit: TRichEdit;
begin
    tempRichEdit := TRichEdit.Create(self);
    tempRichEdit.Parent := Self;
    tempRichEdit.Hide();

    ss:= TStringStream.Create(rtfText);

    try
        tempRichEdit.PlainText := FALSE;
        tempRichEdit.Lines.LoadFromStream(ss);
        Result := tempRichEdit.Text;

    finally
        ss.free();
        tempRichEdit.Free()
    end;
end;

end.
