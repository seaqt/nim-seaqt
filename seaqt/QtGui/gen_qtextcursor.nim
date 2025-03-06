import ./Qt5Gui_libs

{.push raises: [].}

from system/ansi_c import c_free

type
  struct_miqt_string {.used.} = object
    len: csize_t
    data: cstring

  struct_miqt_array {.used.} = object
    len: csize_t
    data: pointer

  struct_miqt_map {.used.} = object
    len: csize_t
    keys: pointer
    values: pointer

  miqt_uintptr_t {.importc: "uintptr_t", header: "stdint.h", used.} = uint
  miqt_intptr_t {.importc: "intptr_t", header: "stdint.h", used.} = int

func fromBytes(T: type string, v: openArray[byte]): string {.used.} =
  if v.len > 0:
    result = newString(v.len)
    when nimvm:
      for i, c in v:
        result[i] = cast[char](c)
    else:
      copyMem(addr result[0], unsafeAddr v[0], v.len)

const cflags = gorge("pkg-config --cflags Qt5Gui")  & " -fPIC"
{.compile("gen_qtextcursor.cpp", cflags).}


type QTextCursorMoveModeEnum* = distinct cint
template MoveAnchor*(_: type QTextCursorMoveModeEnum): untyped = 0
template KeepAnchor*(_: type QTextCursorMoveModeEnum): untyped = 1


type QTextCursorMoveOperationEnum* = distinct cint
template NoMove*(_: type QTextCursorMoveOperationEnum): untyped = 0
template Start*(_: type QTextCursorMoveOperationEnum): untyped = 1
template Up*(_: type QTextCursorMoveOperationEnum): untyped = 2
template StartOfLine*(_: type QTextCursorMoveOperationEnum): untyped = 3
template StartOfBlock*(_: type QTextCursorMoveOperationEnum): untyped = 4
template StartOfWord*(_: type QTextCursorMoveOperationEnum): untyped = 5
template PreviousBlock*(_: type QTextCursorMoveOperationEnum): untyped = 6
template PreviousCharacter*(_: type QTextCursorMoveOperationEnum): untyped = 7
template PreviousWord*(_: type QTextCursorMoveOperationEnum): untyped = 8
template Left*(_: type QTextCursorMoveOperationEnum): untyped = 9
template WordLeft*(_: type QTextCursorMoveOperationEnum): untyped = 10
template End*(_: type QTextCursorMoveOperationEnum): untyped = 11
template Down*(_: type QTextCursorMoveOperationEnum): untyped = 12
template EndOfLine*(_: type QTextCursorMoveOperationEnum): untyped = 13
template EndOfWord*(_: type QTextCursorMoveOperationEnum): untyped = 14
template EndOfBlock*(_: type QTextCursorMoveOperationEnum): untyped = 15
template NextBlock*(_: type QTextCursorMoveOperationEnum): untyped = 16
template NextCharacter*(_: type QTextCursorMoveOperationEnum): untyped = 17
template NextWord*(_: type QTextCursorMoveOperationEnum): untyped = 18
template Right*(_: type QTextCursorMoveOperationEnum): untyped = 19
template WordRight*(_: type QTextCursorMoveOperationEnum): untyped = 20
template NextCell*(_: type QTextCursorMoveOperationEnum): untyped = 21
template PreviousCell*(_: type QTextCursorMoveOperationEnum): untyped = 22
template NextRow*(_: type QTextCursorMoveOperationEnum): untyped = 23
template PreviousRow*(_: type QTextCursorMoveOperationEnum): untyped = 24


type QTextCursorSelectionTypeEnum* = distinct cint
template WordUnderCursor*(_: type QTextCursorSelectionTypeEnum): untyped = 0
template LineUnderCursor*(_: type QTextCursorSelectionTypeEnum): untyped = 1
template BlockUnderCursor*(_: type QTextCursorSelectionTypeEnum): untyped = 2
template Document*(_: type QTextCursorSelectionTypeEnum): untyped = 3


import ./gen_qtextcursor_types
export gen_qtextcursor_types

import
  ./gen_qimage_types,
  ./gen_qtextdocument_types,
  ./gen_qtextdocumentfragment_types,
  ./gen_qtextformat_types,
  ./gen_qtextlist_types,
  ./gen_qtextobject_types,
  ./gen_qtexttable_types
export
  gen_qimage_types,
  gen_qtextdocument_types,
  gen_qtextdocumentfragment_types,
  gen_qtextformat_types,
  gen_qtextlist_types,
  gen_qtextobject_types,
  gen_qtexttable_types

type cQTextCursor*{.exportc: "QTextCursor", incompleteStruct.} = object

proc fcQTextCursor_operatorAssign(self: pointer, other: pointer): void {.importc: "QTextCursor_operatorAssign".}
proc fcQTextCursor_swap(self: pointer, other: pointer): void {.importc: "QTextCursor_swap".}
proc fcQTextCursor_isNull(self: pointer, ): bool {.importc: "QTextCursor_isNull".}
proc fcQTextCursor_setPosition(self: pointer, pos: cint): void {.importc: "QTextCursor_setPosition".}
proc fcQTextCursor_position(self: pointer, ): cint {.importc: "QTextCursor_position".}
proc fcQTextCursor_positionInBlock(self: pointer, ): cint {.importc: "QTextCursor_positionInBlock".}
proc fcQTextCursor_anchor(self: pointer, ): cint {.importc: "QTextCursor_anchor".}
proc fcQTextCursor_insertText(self: pointer, text: struct_miqt_string): void {.importc: "QTextCursor_insertText".}
proc fcQTextCursor_insertText2(self: pointer, text: struct_miqt_string, format: pointer): void {.importc: "QTextCursor_insertText2".}
proc fcQTextCursor_movePosition(self: pointer, op: cint): bool {.importc: "QTextCursor_movePosition".}
proc fcQTextCursor_visualNavigation(self: pointer, ): bool {.importc: "QTextCursor_visualNavigation".}
proc fcQTextCursor_setVisualNavigation(self: pointer, b: bool): void {.importc: "QTextCursor_setVisualNavigation".}
proc fcQTextCursor_setVerticalMovementX(self: pointer, x: cint): void {.importc: "QTextCursor_setVerticalMovementX".}
proc fcQTextCursor_verticalMovementX(self: pointer, ): cint {.importc: "QTextCursor_verticalMovementX".}
proc fcQTextCursor_setKeepPositionOnInsert(self: pointer, b: bool): void {.importc: "QTextCursor_setKeepPositionOnInsert".}
proc fcQTextCursor_keepPositionOnInsert(self: pointer, ): bool {.importc: "QTextCursor_keepPositionOnInsert".}
proc fcQTextCursor_deleteChar(self: pointer, ): void {.importc: "QTextCursor_deleteChar".}
proc fcQTextCursor_deletePreviousChar(self: pointer, ): void {.importc: "QTextCursor_deletePreviousChar".}
proc fcQTextCursor_select(self: pointer, selection: cint): void {.importc: "QTextCursor_select".}
proc fcQTextCursor_hasSelection(self: pointer, ): bool {.importc: "QTextCursor_hasSelection".}
proc fcQTextCursor_hasComplexSelection(self: pointer, ): bool {.importc: "QTextCursor_hasComplexSelection".}
proc fcQTextCursor_removeSelectedText(self: pointer, ): void {.importc: "QTextCursor_removeSelectedText".}
proc fcQTextCursor_clearSelection(self: pointer, ): void {.importc: "QTextCursor_clearSelection".}
proc fcQTextCursor_selectionStart(self: pointer, ): cint {.importc: "QTextCursor_selectionStart".}
proc fcQTextCursor_selectionEnd(self: pointer, ): cint {.importc: "QTextCursor_selectionEnd".}
proc fcQTextCursor_selectedText(self: pointer, ): struct_miqt_string {.importc: "QTextCursor_selectedText".}
proc fcQTextCursor_selection(self: pointer, ): pointer {.importc: "QTextCursor_selection".}
proc fcQTextCursor_selectedTableCells(self: pointer, firstRow: ptr cint, numRows: ptr cint, firstColumn: ptr cint, numColumns: ptr cint): void {.importc: "QTextCursor_selectedTableCells".}
proc fcQTextCursor_blockX(self: pointer, ): pointer {.importc: "QTextCursor_block".}
proc fcQTextCursor_charFormat(self: pointer, ): pointer {.importc: "QTextCursor_charFormat".}
proc fcQTextCursor_setCharFormat(self: pointer, format: pointer): void {.importc: "QTextCursor_setCharFormat".}
proc fcQTextCursor_mergeCharFormat(self: pointer, modifier: pointer): void {.importc: "QTextCursor_mergeCharFormat".}
proc fcQTextCursor_blockFormat(self: pointer, ): pointer {.importc: "QTextCursor_blockFormat".}
proc fcQTextCursor_setBlockFormat(self: pointer, format: pointer): void {.importc: "QTextCursor_setBlockFormat".}
proc fcQTextCursor_mergeBlockFormat(self: pointer, modifier: pointer): void {.importc: "QTextCursor_mergeBlockFormat".}
proc fcQTextCursor_blockCharFormat(self: pointer, ): pointer {.importc: "QTextCursor_blockCharFormat".}
proc fcQTextCursor_setBlockCharFormat(self: pointer, format: pointer): void {.importc: "QTextCursor_setBlockCharFormat".}
proc fcQTextCursor_mergeBlockCharFormat(self: pointer, modifier: pointer): void {.importc: "QTextCursor_mergeBlockCharFormat".}
proc fcQTextCursor_atBlockStart(self: pointer, ): bool {.importc: "QTextCursor_atBlockStart".}
proc fcQTextCursor_atBlockEnd(self: pointer, ): bool {.importc: "QTextCursor_atBlockEnd".}
proc fcQTextCursor_atStart(self: pointer, ): bool {.importc: "QTextCursor_atStart".}
proc fcQTextCursor_atEnd(self: pointer, ): bool {.importc: "QTextCursor_atEnd".}
proc fcQTextCursor_insertBlock(self: pointer, ): void {.importc: "QTextCursor_insertBlock".}
proc fcQTextCursor_insertBlockWithFormat(self: pointer, format: pointer): void {.importc: "QTextCursor_insertBlockWithFormat".}
proc fcQTextCursor_insertBlock2(self: pointer, format: pointer, charFormat: pointer): void {.importc: "QTextCursor_insertBlock2".}
proc fcQTextCursor_insertList(self: pointer, format: pointer): pointer {.importc: "QTextCursor_insertList".}
proc fcQTextCursor_insertListWithStyle(self: pointer, style: cint): pointer {.importc: "QTextCursor_insertListWithStyle".}
proc fcQTextCursor_createList(self: pointer, format: pointer): pointer {.importc: "QTextCursor_createList".}
proc fcQTextCursor_createListWithStyle(self: pointer, style: cint): pointer {.importc: "QTextCursor_createListWithStyle".}
proc fcQTextCursor_currentList(self: pointer, ): pointer {.importc: "QTextCursor_currentList".}
proc fcQTextCursor_insertTable(self: pointer, rows: cint, cols: cint, format: pointer): pointer {.importc: "QTextCursor_insertTable".}
proc fcQTextCursor_insertTable2(self: pointer, rows: cint, cols: cint): pointer {.importc: "QTextCursor_insertTable2".}
proc fcQTextCursor_currentTable(self: pointer, ): pointer {.importc: "QTextCursor_currentTable".}
proc fcQTextCursor_insertFrame(self: pointer, format: pointer): pointer {.importc: "QTextCursor_insertFrame".}
proc fcQTextCursor_currentFrame(self: pointer, ): pointer {.importc: "QTextCursor_currentFrame".}
proc fcQTextCursor_insertFragment(self: pointer, fragment: pointer): void {.importc: "QTextCursor_insertFragment".}
proc fcQTextCursor_insertHtml(self: pointer, html: struct_miqt_string): void {.importc: "QTextCursor_insertHtml".}
proc fcQTextCursor_insertImage(self: pointer, format: pointer, alignment: cint): void {.importc: "QTextCursor_insertImage".}
proc fcQTextCursor_insertImageWithFormat(self: pointer, format: pointer): void {.importc: "QTextCursor_insertImageWithFormat".}
proc fcQTextCursor_insertImageWithName(self: pointer, name: struct_miqt_string): void {.importc: "QTextCursor_insertImageWithName".}
proc fcQTextCursor_insertImageWithImage(self: pointer, image: pointer): void {.importc: "QTextCursor_insertImageWithImage".}
proc fcQTextCursor_beginEditBlock(self: pointer, ): void {.importc: "QTextCursor_beginEditBlock".}
proc fcQTextCursor_joinPreviousEditBlock(self: pointer, ): void {.importc: "QTextCursor_joinPreviousEditBlock".}
proc fcQTextCursor_endEditBlock(self: pointer, ): void {.importc: "QTextCursor_endEditBlock".}
proc fcQTextCursor_operatorNotEqual(self: pointer, rhs: pointer): bool {.importc: "QTextCursor_operatorNotEqual".}
proc fcQTextCursor_operatorLesser(self: pointer, rhs: pointer): bool {.importc: "QTextCursor_operatorLesser".}
proc fcQTextCursor_operatorLesserOrEqual(self: pointer, rhs: pointer): bool {.importc: "QTextCursor_operatorLesserOrEqual".}
proc fcQTextCursor_operatorEqual(self: pointer, rhs: pointer): bool {.importc: "QTextCursor_operatorEqual".}
proc fcQTextCursor_operatorGreaterOrEqual(self: pointer, rhs: pointer): bool {.importc: "QTextCursor_operatorGreaterOrEqual".}
proc fcQTextCursor_operatorGreater(self: pointer, rhs: pointer): bool {.importc: "QTextCursor_operatorGreater".}
proc fcQTextCursor_isCopyOf(self: pointer, other: pointer): bool {.importc: "QTextCursor_isCopyOf".}
proc fcQTextCursor_blockNumber(self: pointer, ): cint {.importc: "QTextCursor_blockNumber".}
proc fcQTextCursor_columnNumber(self: pointer, ): cint {.importc: "QTextCursor_columnNumber".}
proc fcQTextCursor_document(self: pointer, ): pointer {.importc: "QTextCursor_document".}
proc fcQTextCursor_setPosition2(self: pointer, pos: cint, mode: cint): void {.importc: "QTextCursor_setPosition2".}
proc fcQTextCursor_movePosition2(self: pointer, op: cint, param2: cint): bool {.importc: "QTextCursor_movePosition2".}
proc fcQTextCursor_movePosition3(self: pointer, op: cint, param2: cint, n: cint): bool {.importc: "QTextCursor_movePosition3".}
proc fcQTextCursor_insertImage2(self: pointer, image: pointer, name: struct_miqt_string): void {.importc: "QTextCursor_insertImage2".}
proc fcQTextCursor_new(): ptr cQTextCursor {.importc: "QTextCursor_new".}
proc fcQTextCursor_new2(document: pointer): ptr cQTextCursor {.importc: "QTextCursor_new2".}
proc fcQTextCursor_new3(frame: pointer): ptr cQTextCursor {.importc: "QTextCursor_new3".}
proc fcQTextCursor_new4(blockVal: pointer): ptr cQTextCursor {.importc: "QTextCursor_new4".}
proc fcQTextCursor_new5(cursor: pointer): ptr cQTextCursor {.importc: "QTextCursor_new5".}
proc fcQTextCursor_delete(self: pointer) {.importc: "QTextCursor_delete".}

proc operatorAssign*(self: gen_qtextcursor_types.QTextCursor, other: gen_qtextcursor_types.QTextCursor): void =
  fcQTextCursor_operatorAssign(self.h, other.h)

proc swap*(self: gen_qtextcursor_types.QTextCursor, other: gen_qtextcursor_types.QTextCursor): void =
  fcQTextCursor_swap(self.h, other.h)

proc isNull*(self: gen_qtextcursor_types.QTextCursor, ): bool =
  fcQTextCursor_isNull(self.h)

proc setPosition*(self: gen_qtextcursor_types.QTextCursor, pos: cint): void =
  fcQTextCursor_setPosition(self.h, pos)

proc position*(self: gen_qtextcursor_types.QTextCursor, ): cint =
  fcQTextCursor_position(self.h)

proc positionInBlock*(self: gen_qtextcursor_types.QTextCursor, ): cint =
  fcQTextCursor_positionInBlock(self.h)

proc anchor*(self: gen_qtextcursor_types.QTextCursor, ): cint =
  fcQTextCursor_anchor(self.h)

proc insertText*(self: gen_qtextcursor_types.QTextCursor, text: string): void =
  fcQTextCursor_insertText(self.h, struct_miqt_string(data: text, len: csize_t(len(text))))

proc insertText*(self: gen_qtextcursor_types.QTextCursor, text: string, format: gen_qtextformat_types.QTextCharFormat): void =
  fcQTextCursor_insertText2(self.h, struct_miqt_string(data: text, len: csize_t(len(text))), format.h)

proc movePosition*(self: gen_qtextcursor_types.QTextCursor, op: cint): bool =
  fcQTextCursor_movePosition(self.h, cint(op))

proc visualNavigation*(self: gen_qtextcursor_types.QTextCursor, ): bool =
  fcQTextCursor_visualNavigation(self.h)

proc setVisualNavigation*(self: gen_qtextcursor_types.QTextCursor, b: bool): void =
  fcQTextCursor_setVisualNavigation(self.h, b)

proc setVerticalMovementX*(self: gen_qtextcursor_types.QTextCursor, x: cint): void =
  fcQTextCursor_setVerticalMovementX(self.h, x)

proc verticalMovementX*(self: gen_qtextcursor_types.QTextCursor, ): cint =
  fcQTextCursor_verticalMovementX(self.h)

proc setKeepPositionOnInsert*(self: gen_qtextcursor_types.QTextCursor, b: bool): void =
  fcQTextCursor_setKeepPositionOnInsert(self.h, b)

proc keepPositionOnInsert*(self: gen_qtextcursor_types.QTextCursor, ): bool =
  fcQTextCursor_keepPositionOnInsert(self.h)

proc deleteChar*(self: gen_qtextcursor_types.QTextCursor, ): void =
  fcQTextCursor_deleteChar(self.h)

proc deletePreviousChar*(self: gen_qtextcursor_types.QTextCursor, ): void =
  fcQTextCursor_deletePreviousChar(self.h)

proc select*(self: gen_qtextcursor_types.QTextCursor, selection: cint): void =
  fcQTextCursor_select(self.h, cint(selection))

proc hasSelection*(self: gen_qtextcursor_types.QTextCursor, ): bool =
  fcQTextCursor_hasSelection(self.h)

proc hasComplexSelection*(self: gen_qtextcursor_types.QTextCursor, ): bool =
  fcQTextCursor_hasComplexSelection(self.h)

proc removeSelectedText*(self: gen_qtextcursor_types.QTextCursor, ): void =
  fcQTextCursor_removeSelectedText(self.h)

proc clearSelection*(self: gen_qtextcursor_types.QTextCursor, ): void =
  fcQTextCursor_clearSelection(self.h)

proc selectionStart*(self: gen_qtextcursor_types.QTextCursor, ): cint =
  fcQTextCursor_selectionStart(self.h)

proc selectionEnd*(self: gen_qtextcursor_types.QTextCursor, ): cint =
  fcQTextCursor_selectionEnd(self.h)

proc selectedText*(self: gen_qtextcursor_types.QTextCursor, ): string =
  let v_ms = fcQTextCursor_selectedText(self.h)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc selection*(self: gen_qtextcursor_types.QTextCursor, ): gen_qtextdocumentfragment_types.QTextDocumentFragment =
  gen_qtextdocumentfragment_types.QTextDocumentFragment(h: fcQTextCursor_selection(self.h))

proc selectedTableCells*(self: gen_qtextcursor_types.QTextCursor, firstRow: ptr cint, numRows: ptr cint, firstColumn: ptr cint, numColumns: ptr cint): void =
  fcQTextCursor_selectedTableCells(self.h, firstRow, numRows, firstColumn, numColumns)

proc blockX*(self: gen_qtextcursor_types.QTextCursor, ): gen_qtextobject_types.QTextBlock =
  gen_qtextobject_types.QTextBlock(h: fcQTextCursor_blockX(self.h))

proc charFormat*(self: gen_qtextcursor_types.QTextCursor, ): gen_qtextformat_types.QTextCharFormat =
  gen_qtextformat_types.QTextCharFormat(h: fcQTextCursor_charFormat(self.h))

proc setCharFormat*(self: gen_qtextcursor_types.QTextCursor, format: gen_qtextformat_types.QTextCharFormat): void =
  fcQTextCursor_setCharFormat(self.h, format.h)

proc mergeCharFormat*(self: gen_qtextcursor_types.QTextCursor, modifier: gen_qtextformat_types.QTextCharFormat): void =
  fcQTextCursor_mergeCharFormat(self.h, modifier.h)

proc blockFormat*(self: gen_qtextcursor_types.QTextCursor, ): gen_qtextformat_types.QTextBlockFormat =
  gen_qtextformat_types.QTextBlockFormat(h: fcQTextCursor_blockFormat(self.h))

proc setBlockFormat*(self: gen_qtextcursor_types.QTextCursor, format: gen_qtextformat_types.QTextBlockFormat): void =
  fcQTextCursor_setBlockFormat(self.h, format.h)

proc mergeBlockFormat*(self: gen_qtextcursor_types.QTextCursor, modifier: gen_qtextformat_types.QTextBlockFormat): void =
  fcQTextCursor_mergeBlockFormat(self.h, modifier.h)

proc blockCharFormat*(self: gen_qtextcursor_types.QTextCursor, ): gen_qtextformat_types.QTextCharFormat =
  gen_qtextformat_types.QTextCharFormat(h: fcQTextCursor_blockCharFormat(self.h))

proc setBlockCharFormat*(self: gen_qtextcursor_types.QTextCursor, format: gen_qtextformat_types.QTextCharFormat): void =
  fcQTextCursor_setBlockCharFormat(self.h, format.h)

proc mergeBlockCharFormat*(self: gen_qtextcursor_types.QTextCursor, modifier: gen_qtextformat_types.QTextCharFormat): void =
  fcQTextCursor_mergeBlockCharFormat(self.h, modifier.h)

proc atBlockStart*(self: gen_qtextcursor_types.QTextCursor, ): bool =
  fcQTextCursor_atBlockStart(self.h)

proc atBlockEnd*(self: gen_qtextcursor_types.QTextCursor, ): bool =
  fcQTextCursor_atBlockEnd(self.h)

proc atStart*(self: gen_qtextcursor_types.QTextCursor, ): bool =
  fcQTextCursor_atStart(self.h)

proc atEnd*(self: gen_qtextcursor_types.QTextCursor, ): bool =
  fcQTextCursor_atEnd(self.h)

proc insertBlock*(self: gen_qtextcursor_types.QTextCursor, ): void =
  fcQTextCursor_insertBlock(self.h)

proc insertBlock*(self: gen_qtextcursor_types.QTextCursor, format: gen_qtextformat_types.QTextBlockFormat): void =
  fcQTextCursor_insertBlockWithFormat(self.h, format.h)

proc insertBlock*(self: gen_qtextcursor_types.QTextCursor, format: gen_qtextformat_types.QTextBlockFormat, charFormat: gen_qtextformat_types.QTextCharFormat): void =
  fcQTextCursor_insertBlock2(self.h, format.h, charFormat.h)

proc insertList*(self: gen_qtextcursor_types.QTextCursor, format: gen_qtextformat_types.QTextListFormat): gen_qtextlist_types.QTextList =
  gen_qtextlist_types.QTextList(h: fcQTextCursor_insertList(self.h, format.h))

proc insertList*(self: gen_qtextcursor_types.QTextCursor, style: cint): gen_qtextlist_types.QTextList =
  gen_qtextlist_types.QTextList(h: fcQTextCursor_insertListWithStyle(self.h, cint(style)))

proc createList*(self: gen_qtextcursor_types.QTextCursor, format: gen_qtextformat_types.QTextListFormat): gen_qtextlist_types.QTextList =
  gen_qtextlist_types.QTextList(h: fcQTextCursor_createList(self.h, format.h))

proc createList*(self: gen_qtextcursor_types.QTextCursor, style: cint): gen_qtextlist_types.QTextList =
  gen_qtextlist_types.QTextList(h: fcQTextCursor_createListWithStyle(self.h, cint(style)))

proc currentList*(self: gen_qtextcursor_types.QTextCursor, ): gen_qtextlist_types.QTextList =
  gen_qtextlist_types.QTextList(h: fcQTextCursor_currentList(self.h))

proc insertTable*(self: gen_qtextcursor_types.QTextCursor, rows: cint, cols: cint, format: gen_qtextformat_types.QTextTableFormat): gen_qtexttable_types.QTextTable =
  gen_qtexttable_types.QTextTable(h: fcQTextCursor_insertTable(self.h, rows, cols, format.h))

proc insertTable*(self: gen_qtextcursor_types.QTextCursor, rows: cint, cols: cint): gen_qtexttable_types.QTextTable =
  gen_qtexttable_types.QTextTable(h: fcQTextCursor_insertTable2(self.h, rows, cols))

proc currentTable*(self: gen_qtextcursor_types.QTextCursor, ): gen_qtexttable_types.QTextTable =
  gen_qtexttable_types.QTextTable(h: fcQTextCursor_currentTable(self.h))

proc insertFrame*(self: gen_qtextcursor_types.QTextCursor, format: gen_qtextformat_types.QTextFrameFormat): gen_qtextobject_types.QTextFrame =
  gen_qtextobject_types.QTextFrame(h: fcQTextCursor_insertFrame(self.h, format.h))

proc currentFrame*(self: gen_qtextcursor_types.QTextCursor, ): gen_qtextobject_types.QTextFrame =
  gen_qtextobject_types.QTextFrame(h: fcQTextCursor_currentFrame(self.h))

proc insertFragment*(self: gen_qtextcursor_types.QTextCursor, fragment: gen_qtextdocumentfragment_types.QTextDocumentFragment): void =
  fcQTextCursor_insertFragment(self.h, fragment.h)

proc insertHtml*(self: gen_qtextcursor_types.QTextCursor, html: string): void =
  fcQTextCursor_insertHtml(self.h, struct_miqt_string(data: html, len: csize_t(len(html))))

proc insertImage*(self: gen_qtextcursor_types.QTextCursor, format: gen_qtextformat_types.QTextImageFormat, alignment: cint): void =
  fcQTextCursor_insertImage(self.h, format.h, cint(alignment))

proc insertImage*(self: gen_qtextcursor_types.QTextCursor, format: gen_qtextformat_types.QTextImageFormat): void =
  fcQTextCursor_insertImageWithFormat(self.h, format.h)

proc insertImage*(self: gen_qtextcursor_types.QTextCursor, name: string): void =
  fcQTextCursor_insertImageWithName(self.h, struct_miqt_string(data: name, len: csize_t(len(name))))

proc insertImage*(self: gen_qtextcursor_types.QTextCursor, image: gen_qimage_types.QImage): void =
  fcQTextCursor_insertImageWithImage(self.h, image.h)

proc beginEditBlock*(self: gen_qtextcursor_types.QTextCursor, ): void =
  fcQTextCursor_beginEditBlock(self.h)

proc joinPreviousEditBlock*(self: gen_qtextcursor_types.QTextCursor, ): void =
  fcQTextCursor_joinPreviousEditBlock(self.h)

proc endEditBlock*(self: gen_qtextcursor_types.QTextCursor, ): void =
  fcQTextCursor_endEditBlock(self.h)

proc operatorNotEqual*(self: gen_qtextcursor_types.QTextCursor, rhs: gen_qtextcursor_types.QTextCursor): bool =
  fcQTextCursor_operatorNotEqual(self.h, rhs.h)

proc operatorLesser*(self: gen_qtextcursor_types.QTextCursor, rhs: gen_qtextcursor_types.QTextCursor): bool =
  fcQTextCursor_operatorLesser(self.h, rhs.h)

proc operatorLesserOrEqual*(self: gen_qtextcursor_types.QTextCursor, rhs: gen_qtextcursor_types.QTextCursor): bool =
  fcQTextCursor_operatorLesserOrEqual(self.h, rhs.h)

proc operatorEqual*(self: gen_qtextcursor_types.QTextCursor, rhs: gen_qtextcursor_types.QTextCursor): bool =
  fcQTextCursor_operatorEqual(self.h, rhs.h)

proc operatorGreaterOrEqual*(self: gen_qtextcursor_types.QTextCursor, rhs: gen_qtextcursor_types.QTextCursor): bool =
  fcQTextCursor_operatorGreaterOrEqual(self.h, rhs.h)

proc operatorGreater*(self: gen_qtextcursor_types.QTextCursor, rhs: gen_qtextcursor_types.QTextCursor): bool =
  fcQTextCursor_operatorGreater(self.h, rhs.h)

proc isCopyOf*(self: gen_qtextcursor_types.QTextCursor, other: gen_qtextcursor_types.QTextCursor): bool =
  fcQTextCursor_isCopyOf(self.h, other.h)

proc blockNumber*(self: gen_qtextcursor_types.QTextCursor, ): cint =
  fcQTextCursor_blockNumber(self.h)

proc columnNumber*(self: gen_qtextcursor_types.QTextCursor, ): cint =
  fcQTextCursor_columnNumber(self.h)

proc document*(self: gen_qtextcursor_types.QTextCursor, ): gen_qtextdocument_types.QTextDocument =
  gen_qtextdocument_types.QTextDocument(h: fcQTextCursor_document(self.h))

proc setPosition*(self: gen_qtextcursor_types.QTextCursor, pos: cint, mode: cint): void =
  fcQTextCursor_setPosition2(self.h, pos, cint(mode))

proc movePosition*(self: gen_qtextcursor_types.QTextCursor, op: cint, param2: cint): bool =
  fcQTextCursor_movePosition2(self.h, cint(op), cint(param2))

proc movePosition*(self: gen_qtextcursor_types.QTextCursor, op: cint, param2: cint, n: cint): bool =
  fcQTextCursor_movePosition3(self.h, cint(op), cint(param2), n)

proc insertImage*(self: gen_qtextcursor_types.QTextCursor, image: gen_qimage_types.QImage, name: string): void =
  fcQTextCursor_insertImage2(self.h, image.h, struct_miqt_string(data: name, len: csize_t(len(name))))

proc create*(T: type gen_qtextcursor_types.QTextCursor): gen_qtextcursor_types.QTextCursor =
  gen_qtextcursor_types.QTextCursor(h: fcQTextCursor_new())

proc create*(T: type gen_qtextcursor_types.QTextCursor,
    document: gen_qtextdocument_types.QTextDocument): gen_qtextcursor_types.QTextCursor =
  gen_qtextcursor_types.QTextCursor(h: fcQTextCursor_new2(document.h))

proc create*(T: type gen_qtextcursor_types.QTextCursor,
    frame: gen_qtextobject_types.QTextFrame): gen_qtextcursor_types.QTextCursor =
  gen_qtextcursor_types.QTextCursor(h: fcQTextCursor_new3(frame.h))

proc create*(T: type gen_qtextcursor_types.QTextCursor,
    blockVal: gen_qtextobject_types.QTextBlock): gen_qtextcursor_types.QTextCursor =
  gen_qtextcursor_types.QTextCursor(h: fcQTextCursor_new4(blockVal.h))

proc create*(T: type gen_qtextcursor_types.QTextCursor,
    cursor: gen_qtextcursor_types.QTextCursor): gen_qtextcursor_types.QTextCursor =
  gen_qtextcursor_types.QTextCursor(h: fcQTextCursor_new5(cursor.h))

proc delete*(self: gen_qtextcursor_types.QTextCursor) =
  fcQTextCursor_delete(self.h)
