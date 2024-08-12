object frmScriptEditor: TfrmScriptEditor
  Left = 0
  Top = 0
  Caption = 'frmScriptEditor'
  ClientHeight = 453
  ClientWidth = 632
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  Menu = mnuScriptEditor
  TextHeight = 15
  object ScriptEdit: TTextEditor
    Left = 0
    Top = 0
    Width = 632
    Height = 453
    Align = alClient
    Caret.Styles.Overwrite = csBlock
    CodeFolding.GuideLines.Padding = 0
    CodeFolding.TextFolding.Active = True
    CodeFolding.Visible = True
    CodeFolding.Width = 18
    Colors.ActiveLineBackground = 3881787
    Colors.ActiveLineBackgroundUnfocused = 3881787
    Colors.CaretMultiEditBackground = 12895428
    Colors.CaretMultiEditForeground = 15921648
    Colors.CodeFoldingActiveLineBackground = 3881787
    Colors.CodeFoldingActiveLineBackgroundUnfocused = 3881787
    Colors.CodeFoldingBackground = 2960685
    Colors.CodeFoldingCollapsedLine = 10197915
    Colors.CodeFoldingFoldingLine = 10197915
    Colors.CodeFoldingFoldingLineHighlight = 10197915
    Colors.CodeFoldingHintBackground = 2960685
    Colors.CodeFoldingHintBorder = 10197915
    Colors.CodeFoldingHintIndicatorBackground = 2960685
    Colors.CodeFoldingHintIndicatorBorder = 10197915
    Colors.CodeFoldingHintIndicatorMark = 10197915
    Colors.CodeFoldingHintText = 15921648
    Colors.CodeFoldingIndent = 10197915
    Colors.CodeFoldingIndentHighlight = 15921648
    Colors.CompletionProposalBackground = 2960685
    Colors.CompletionProposalForeground = 15921648
    Colors.CompletionProposalSelectedBackground = 11693312
    Colors.CompletionProposalSelectedText = clWhite
    Colors.EditorAssemblerCommentBackground = 2960685
    Colors.EditorAssemblerCommentForeground = 10197915
    Colors.EditorAssemblerReservedWordBackground = 2960685
    Colors.EditorAssemblerReservedWordForeground = 16755330
    Colors.EditorAttributeBackground = 2960685
    Colors.EditorAttributeForeground = 7064575
    Colors.EditorBackground = 2960685
    Colors.EditorCharacterBackground = 2960685
    Colors.EditorCharacterForeground = 15921648
    Colors.EditorCommentBackground = 2960685
    Colors.EditorCommentForeground = 10197915
    Colors.EditorDirectiveBackground = 2960685
    Colors.EditorDirectiveForeground = 12897152
    Colors.EditorForeground = 15921648
    Colors.EditorHexNumberBackground = 2960685
    Colors.EditorHexNumberForeground = 5746425
    Colors.EditorHighlightedBlockBackground = 2960685
    Colors.EditorHighlightedBlockForeground = 15921648
    Colors.EditorHighlightedBlockSymbolBackground = 2960685
    Colors.EditorHighlightedBlockSymbolForeground = 16768393
    Colors.EditorLogicalOperatorBackground = 2960685
    Colors.EditorLogicalOperatorForeground = 6708972
    Colors.EditorMethodBackground = 2960685
    Colors.EditorMethodForeground = 16109030
    Colors.EditorMethodItalicBackground = 2960685
    Colors.EditorMethodItalicForeground = 15372999
    Colors.EditorMethodNameBackground = 2960685
    Colors.EditorMethodNameForeground = 15329769
    Colors.EditorNumberBackground = 2960685
    Colors.EditorNumberForeground = 5746425
    Colors.EditorReservedWordBackground = 2960685
    Colors.EditorReservedWordForeground = 4227327
    Colors.EditorStringBackground = 2960685
    Colors.EditorStringForeground = 9750425
    Colors.EditorSymbolBackground = 2960685
    Colors.EditorSymbolForeground = 16768393
    Colors.EditorValueBackground = 2960685
    Colors.EditorValueForeground = 5733369
    Colors.EditorWebLinkBackground = 2960685
    Colors.EditorWebLinkForeground = 16755330
    Colors.LeftMarginActiveLineBackground = 3881787
    Colors.LeftMarginActiveLineBackgroundUnfocused = 3881787
    Colors.LeftMarginActiveLineNumber = 11513775
    Colors.LeftMarginBackground = 2960685
    Colors.LeftMarginBookmarkPanelBackground = 2960685
    Colors.LeftMarginBorder = 10461087
    Colors.LeftMarginLineNumberLine = 10197915
    Colors.LeftMarginLineNumbers = 10197915
    Colors.LeftMarginLineStateModified = 7064575
    Colors.LeftMarginLineStateNormal = 8951296
    Colors.MatchingPairMatched = 16711808
    Colors.MatchingPairUnderline = 10197915
    Colors.MatchingPairUnmatched = 7064575
    Colors.MinimapBookmark = 15921648
    Colors.MinimapVisibleRows = 3881787
    Colors.RightMargin = 10197915
    Colors.RulerBackground = 2960685
    Colors.RulerBorder = 10197915
    Colors.RulerLines = 10197915
    Colors.RulerNumbers = 10197915
    Colors.RulerSelection = 3881787
    Colors.SearchHighlighterBackground = 6773570
    Colors.SearchHighlighterForeground = 15921648
    Colors.SearchInSelectionBackground = 4866610
    Colors.SearchMapForeground = 7064575
    Colors.SelectionBackground = 11693312
    Colors.SelectionBackgroundUnfocused = 4868682
    Colors.SyncEditBackground = 4866610
    Colors.SyncEditWordBorder = 10197915
    Colors.WordWrapIndicatorArrow = 10197915
    Colors.WordWrapIndicatorLines = clSilver
    CompletionProposal.Options = [cpoAutoConstraints, cpoAddHighlighterKeywords, cpoFiltered, cpoParseItemsFromText, cpoShowShadow]
    CompletionProposal.Snippets.Items = <
      item
        Description = 'Create a new empty function'
        Keyword = 'function'
        Position.Active = True
        Position.Column = 1
        Position.Row = 9
        Selection.Active = True
        Selection.FromColumn = 1
        Selection.FromRow = 9
        Selection.ToColumn = 1
        Selection.ToRow = 14
        Snippet.Strings = (
          'function funcA()'
          '{'
          ''
          '}')
      end>
    FontStyles.AssemblerComment = []
    FontStyles.AssemblerReservedWord = []
    FontStyles.Comment = []
    FontStyles.LogicalOperator = []
    FontStyles.Value = []
    Fonts.CodeFoldingHint.Charset = DEFAULT_CHARSET
    Fonts.CodeFoldingHint.Color = 15921648
    Fonts.CodeFoldingHint.Height = -13
    Fonts.CodeFoldingHint.Name = 'Consolas'
    Fonts.CodeFoldingHint.Style = []
    Fonts.CompletionProposal.Charset = DEFAULT_CHARSET
    Fonts.CompletionProposal.Color = 15921648
    Fonts.CompletionProposal.Height = -12
    Fonts.CompletionProposal.Name = 'Consolas'
    Fonts.CompletionProposal.Style = []
    Fonts.LineNumbers.Charset = DEFAULT_CHARSET
    Fonts.LineNumbers.Color = 10197915
    Fonts.LineNumbers.Height = -13
    Fonts.LineNumbers.Name = 'Consolas'
    Fonts.LineNumbers.Style = []
    Fonts.Minimap.Charset = DEFAULT_CHARSET
    Fonts.Minimap.Color = clWindowText
    Fonts.Minimap.Height = -1
    Fonts.Minimap.Name = 'Consolas'
    Fonts.Minimap.Style = []
    Fonts.Ruler.Charset = DEFAULT_CHARSET
    Fonts.Ruler.Color = 10197915
    Fonts.Ruler.Height = -11
    Fonts.Ruler.Name = 'Consolas'
    Fonts.Ruler.Style = []
    Fonts.Text.Charset = DEFAULT_CHARSET
    Fonts.Text.Color = 15921648
    Fonts.Text.Height = -15
    Fonts.Text.Name = 'Consolas'
    Fonts.Text.Style = []
    HighlightLine.Active = True
    Highlighter.JSON.Strings = (
      '{'
      '  "Highlighter": {'
      '    "Sample": ['
      '      "// Hello, World! in UnrealScript\r\n",'
      '      "\r\n",'
      '      "class HelloWorldGame extends GameInfo;\r\n",'
      '      "\r\n",'
      '      "event InitGame( string Options, out string Error )\r\n",'
      '      "{\r\n",'
      '      "    super.InitGame( Options, Error );\r\n",'
      '      "\r\n",'
      '      "    `log( \"Hello, World!\" );\r\n",'
      '      "}"'
      '    ],'
      '    "MainRules": {'
      '      "Attributes": {'
      '        "Element": "Editor"'
      '      },'
      '      "SubRules": {'
      '        "Range": ['
      '          {'
      '            "Type": "BlockComment",'
      '            "Attributes": {'
      '              "Element": "Comment"'
      '            },'
      '            "TokenRange": {'
      '              "Open": "/*",'
      '              "Close": "*/"'
      '            }'
      '          },'
      '          {'
      '            "Type": "LineComment",'
      '            "Attributes": {'
      '              "Element": "Comment"'
      '            },'
      '            "Properties": {'
      '              "CloseOnEndOfLine": true'
      '            },'
      '            "TokenRange": {'
      '              "Open": "//"'
      '            }'
      '          },'
      '          {'
      '            "Type": "String",'
      '            "Attributes": {'
      '              "Element": "String"'
      '            },'
      '            "Properties": {'
      '              "CloseOnEndOfLine": true'
      '            },'
      '            "TokenRange": {'
      '              "Open": "'#39'",'
      '              "Close": "'#39'"'
      '            },'
      '            "SubRules": {'
      '              "Range": ['
      '                {'
      '                  "Type": "String",'
      '                  "Attributes": {'
      '                    "Element": "String"'
      '                  },'
      '                  "Properties": {'
      '                    "CloseOnEndOfLine": true,'
      '                    "CloseOnTerm": true'
      '                  },'
      '                  "TokenRange": {'
      '                    "Open": "\\'#39'",'
      '                    "Close": ""'
      '                  }'
      '                },'
      '                {'
      '                  "Type": "String",'
      '                  "Attributes": {'
      '                    "Element": "String"'
      '                  },'
      '                  "Properties": {'
      '                    "CloseOnEndOfLine": true,'
      '                    "CloseOnTerm": true'
      '                  },'
      '                  "TokenRange": {'
      '                    "Open": "\\\\",'
      '                    "Close": ""'
      '                  }'
      '                }'
      '              ]'
      '            }'
      '          },'
      '          {'
      '            "Type": "String",'
      '            "Attributes": {'
      '              "Element": "String"'
      '            },'
      '            "Properties": {'
      '              "CloseOnEndOfLine": true'
      '            },'
      '            "TokenRange": {'
      '              "Open": "\"",'
      '              "Close": "\""'
      '            },'
      '            "SubRules": {'
      '              "Range": ['
      '                {'
      '                  "Type": "String",'
      '                  "Attributes": {'
      '                    "Element": "String"'
      '                  },'
      '                  "Properties": {'
      '                    "CloseOnEndOfLine": true,'
      '                    "CloseOnTerm": true'
      '                  },'
      '                  "TokenRange": {'
      '                    "Open": "\\\"",'
      '                    "Close": ""'
      '                  }'
      '                },'
      '                {'
      '                  "Type": "String",'
      '                  "Attributes": {'
      '                    "Element": "String"'
      '                  },'
      '                  "Properties": {'
      '                    "CloseOnEndOfLine": true,'
      '                    "CloseOnTerm": true'
      '                  },'
      '                  "TokenRange": {'
      '                    "Open": "\\\\",'
      '                    "Close": ""'
      '                  }'
      '                }'
      '              ]'
      '            }'
      '          },'
      '          {'
      '            "Type": "Method",'
      '            "Attributes": {'
      '              "Element": "MethodName"'
      '            },'
      '            "TokenRange": {'
      '              "Open": "function",'
      '              "Close": "("'
      '            },'
      '            "SubRules": {'
      '              "KeyList": ['
      '                {'
      '                  "Type": "Symbol",'
      '                  "Words": ['
      '                    "("'
      '                  ],'
      '                  "Attributes": {'
      '                    "Element": "Symbol"'
      '                  }'
      '                }'
      '              ]'
      '            }'
      '          },'
      '          {'
      '            "Type": "Method",'
      '            "Attributes": {'
      '              "Element": "MethodName"'
      '            },'
      '            "TokenRange": {'
      '              "Open": "event",'
      '              "Close": "("'
      '            },'
      '            "SubRules": {'
      '              "KeyList": ['
      '                {'
      '                  "Type": "Symbol",'
      '                  "Words": ['
      '                    "("'
      '                  ],'
      '                  "Attributes": {'
      '                    "Element": "Symbol"'
      '                  }'
      '                }'
      '              ]'
      '            }'
      '          },'
      '          {'
      '            "Type": "Method",'
      '            "Attributes": {'
      '              "Element": "MethodName"'
      '            },'
      '            "Properties": {'
      '              "AlternativeClose": ['
      '                ".",'
      '                ";",'
      '                " ",'
      '                "["'
      '              ]'
      '            },'
      '            "TokenRange": {'
      '              "Open": ".",'
      '              "Close": "("'
      '            },'
      '            "SubRules": {'
      '              "KeyList": ['
      '                {'
      '                  "Type": "ReservedWord",'
      '                  "Words": ['
      '                    "static"'
      '                  ],'
      '                  "Attributes": {'
      '                    "Element": "ReservedWord"'
      '                  }'
      '                },'
      '                {'
      '                  "Type": "Symbol",'
      '                  "Words": ['
      '                    ".",'
      '                    "(",'
      '                    ";",'
      '                    "["'
      '                  ],'
      '                  "Attributes": {'
      '                    "Element": "Symbol"'
      '                  }'
      '                }'
      '              ]'
      '            }'
      '          },'
      '          {'
      '            "Type": "HexNumber",'
      '            "Attributes": {'
      '              "Element": "HexNumber"'
      '            },'
      '            "AllowedCharacters": "0123456789abcdefABCDEF",'
      '            "Properties": {'
      '              "CloseOnTerm": true,'
      '              "CloseOnEndOfLine": true'
      '            },'
      '            "TokenRange": {'
      '              "Open": "0x",'
      '              "OpenBreakType": "Any"'
      '            }'
      '          }'
      '        ],'
      '        "KeyList": ['
      '          {'
      '            "Type": "ReservedWord",'
      '            "Words": ['
      '              "abstract",'
      '              "add",'
      '              "additem",'
      '              "always",'
      '              "archetype",'
      '              "array",'
      '              "arraycount",'
      '              "assert",'
      '              "atomic",'
      '              "atomicwhencooked",'
      '              "auto",'
      '              "autocollapsecategories",'
      '              "autoexpandcategories",'
      '              "automated",'
      '              "begin",'
      '              "bool",'
      '              "break",'
      '              "button",'
      '              "byte",'
      '              "case",'
      '              "cacheexempt",'
      '              "cache",'
      '              "class",'
      '              "classgroup",'
      '              "client",'
      '              "coerce",'
      '              "collapsecategories",'
      '              "config",'
      '              "const",'
      '              "continue",'
      '              "cppstruct",'
      '              "cpptext",'
      '              "crosslevelactive",'
      '              "crosslevelpassive",'
      '              "databinding",'
      '              "default",'
      '              "defaultproperties",'
      '              "delegate",'
      '              "demorecording",'
      '              "dependson",'
      '              "deprecated",'
      '              "depreciated",'
      '              "do",'
      '              "dontautocollapsecategories",'
      '              "dontcollapsecategories",'
      '              "dontsortcategories",'
      '              "dllbind",'
      '              "dllimport",'
      '              "duplicatetransient",'
      '              "edfindable",'
      '              "editconst",'
      '              "editconstarray",'
      '              "editfixedsize",'
      '              "edithide",'
      '              "editoronly",'
      '              "editinline",'
      '              "editinlinenew",'
      '              "editinlinenotify",'
      '              "editinlineuse",'
      '              "edittextbox",'
      '              "else",'
      '              "empty",'
      '              "end",'
      '              "enum",'
      '              "enumcount",'
      '              "exec",'
      '              "expands",'
      '              "export",'
      '              "exportstructs",'
      '              "extends",'
      '              "false",'
      '              "filtereditoronly",'
      '              "final",'
      '              "find",'
      '              "float",'
      '              "for",'
      '              "forcescriptorder",'
      '              "foreach",'
      '              "from",'
      '              "global",'
      '              "globalconfig",'
      '              "goto",'
      '              "guid",'
      '              "hidecategories",'
      '              "hidedropdown",'
      '              "if",'
      '              "ignores",'
      '              "immutable",'
      '              "immutablewhencooked",'
      '              "implements",'
      '              "import",'
      '              "inherits",'
      '              "init",'
      '              "input",'
      '              "insert",'
      '              "insertitem",'
      '              "instanced",'
      '              "int",'
      '              "interface",'
      '              "interp",'
      '              "intrinsic",'
      '              "invariant",'
      '              "iterator",'
      '              "k2call",'
      '              "k2override",'
      '              "k2pure",'
      '              "latent",'
      '              "length",'
      '              "local",'
      '              "localized",'
      '              "long",'
      '              "map",'
      '              "name",'
      '              "nameof",'
      '              "native",'
      '              "nativeonly",'
      '              "nativereplication",'
      '              "new",'
      '              "noexport",'
      '              "noexportheader",'
      '              "noclear",'
      '              "noimport",'
      '              "none",'
      '              "nontransactional",'
      '              "nontransient",'
      '              "noteditinlinenew",'
      '              "notforconsole",'
      '              "notinstanced",'
      '              "notplaceable",'
      '              "nousercreate",'
      '              "operator",'
      '              "optional",'
      '              "orderedarray",'
      '              "out",'
      '              "parseconfig",'
      '              "perobjectconfig",'
      '              "perobjectlocalized",'
      '              "placeable",'
      '              "private",'
      '              "privatewrite",'
      '              "preoperator",'
      '              "protected",'
      '              "protectedwrite",'
      '              "pointer",'
      '              "postoperator",'
      '              "public",'
      '              "reliable",'
      '              "remove",'
      '              "removeindex",'
      '              "removeitem",'
      '              "replace",'
      '              "replication",'
      '              "repnotify",'
      '              "repretry",'
      '              "return",'
      '              "rot",'
      '              "rng",'
      '              "showcategories",'
      '              "structcpptext",'
      '              "structdefaultproperties",'
      '              "structdefaults",'
      '              "safereplace",'
      '              "self",'
      '              "server",'
      '              "serializetext",'
      '              "simulated",'
      '              "singular",'
      '              "skip",'
      '              "sort",'
      '              "state",'
      '              "stop",'
      '              "strictconfig",'
      '              "string",'
      '              "struct",'
      '              "super",'
      '              "switch",'
      '              "transient",'
      '              "travel",'
      '              "true",'
      '              "unreliable",'
      '              "until",'
      '              "var",'
      '              "vect",'
      '              "virtual",'
      '              "while",'
      '              "within"'
      '            ],'
      '            "Attributes": {'
      '              "Element": "ReservedWord"'
      '            }'
      '          },'
      '          {'
      '            "Type": "Method",'
      '            "Words": ['
      '              "event",'
      '              "function"'
      '            ],'
      '            "Attributes": {'
      '              "Element": "Method"'
      '            }'
      '          },'
      '          {'
      '            "Type": "Symbol",'
      '            "Words": ['
      '              ":",'
      '              ";",'
      '              "<",'
      '              ">",'
      '              "=",'
      '              "/",'
      '              "*",'
      '              ".",'
      '              ",",'
      '              "-",'
      '              "+",'
      '              "(",'
      '              ")",'
      '              "[",'
      '              "]",'
      '              "{",'
      '              "}"'
      '            ],'
      '            "Attributes": {'
      '              "Element": "Symbol"'
      '            }'
      '          }'
      '        ],'
      '        "Set": ['
      '          {'
      '            "Type": "Numbers",'
      '            "Symbols": ".0123456789",'
      '            "Attributes": {'
      '              "Element": "Number"'
      '            }'
      '          }'
      '        ]'
      '      }'
      '    }'
      '  },'
      '  "CodeFolding": {'
      '    "Ranges": ['
      '      {'
      '        "Options": {'
      '          "StringEscapeChar": "\\"'
      '        },'
      '        "SkipRegion": ['
      '          {'
      '            "OpenToken": "'#39'",'
      '            "CloseToken": "'#39'",'
      '            "RegionType": "SingleLineString"'
      '          },'
      '          {'
      '            "OpenToken": "\"",'
      '            "CloseToken": "\"",'
      '            "RegionType": "SingleLineString"'
      '          },'
      '          {'
      '            "OpenToken": "//",'
      '            "RegionType": "SingleLine"'
      '          },'
      '          {'
      '            "OpenToken": "/*",'
      '            "CloseToken": "*/",'
      '            "RegionType": "MultiLine"'
      '          }'
      '        ],'
      '        "FoldRegion": ['
      '          {'
      '            "OpenToken": "{",'
      '            "CloseToken": "}",'
      '            "Properties": {'
      '              "BreakCharFollows": false'
      '            }'
      '          }'
      '        ]'
      '      }'
      '    ]'
      '  },'
      '  "MatchingPair": {'
      '    "Pairs": ['
      '      {'
      '        "OpenToken": "'#39'",'
      '        "CloseToken": "'#39'"'
      '      },'
      '      {'
      '        "OpenToken": "\"",'
      '        "CloseToken": "\""'
      '      },'
      '      {'
      '        "OpenToken": "(",'
      '        "CloseToken": ")"'
      '      },'
      '      {'
      '        "OpenToken": "[",'
      '        "CloseToken": "]"'
      '      },'
      '      {'
      '        "OpenToken": "{",'
      '        "CloseToken": "}"'
      '      }'
      '    ]'
      '  },'
      '  "CompletionProposal": {'
      '    "SkipRegion": ['
      '      {'
      '        "OpenToken": "'#39'",'
      '        "CloseToken": "'#39'",'
      '        "RegionType": "SingleLineString"'
      '      },'
      '      {'
      '        "OpenToken": "\"",'
      '        "CloseToken": "\"",'
      '        "RegionType": "SingleLineString"'
      '      },'
      '      {'
      '        "OpenToken": "//",'
      '        "RegionType": "SingleLine"'
      '      },'
      '      {'
      '        "OpenToken": "/*",'
      '        "CloseToken": "*/",'
      '        "RegionType": "MultiLine"'
      '      }'
      '    ]'
      '  }'
      '}')
    LeftMargin.Border.Style = mbsRight
    LeftMargin.LineNumbers.Options = [lnoIntens, lnoLeadingZeros]
    LeftMargin.Width = 55
    MatchingPairs.Options = [mpoHighlightAfterToken, mpoHighlightUnmatched, mpoUseMatchedColor]
    RightMargin.Position = 120
    SyncEdit.Options = []
    TabOrder = 0
  end
  object mnuScriptEditor: TMainMenu
    Left = 328
    Top = 80
    object File1: TMenuItem
      Caption = 'File'
      object Loadtest1: TMenuItem
        Caption = 'Load test'
      end
    end
  end
end
