import ./Qt6Widgets_libs

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

const cflags = gorge("pkg-config --cflags Qt6Widgets")  & " -fPIC"
{.compile("gen_qplaintextedit.cpp", cflags).}


type QPlainTextEditLineWrapModeEnum* = distinct cint
template NoWrap*(_: type QPlainTextEditLineWrapModeEnum): untyped = 0
template WidgetWidth*(_: type QPlainTextEditLineWrapModeEnum): untyped = 1


import ./gen_qplaintextedit_types
export gen_qplaintextedit_types

import
  ../QtCore/gen_qcoreevent_types,
  ../QtCore/gen_qmetaobject_types,
  ../QtCore/gen_qmimedata_types,
  ../QtCore/gen_qobject_types,
  ../QtCore/gen_qobjectdefs_types,
  ../QtCore/gen_qpoint_types,
  ../QtCore/gen_qrect_types,
  ../QtCore/gen_qregularexpression_types,
  ../QtCore/gen_qsize_types,
  ../QtCore/gen_qurl_types,
  ../QtCore/gen_qvariant_types,
  ../QtGui/gen_qabstracttextdocumentlayout,
  ../QtGui/gen_qevent_types,
  ../QtGui/gen_qpagedpaintdevice_types,
  ../QtGui/gen_qpaintdevice_types,
  ../QtGui/gen_qpaintengine_types,
  ../QtGui/gen_qpainter_types,
  ../QtGui/gen_qtextcursor_types,
  ../QtGui/gen_qtextdocument_types,
  ../QtGui/gen_qtextformat_types,
  ../QtGui/gen_qtextlayout_types,
  ../QtGui/gen_qtextobject_types,
  ./gen_qabstractscrollarea,
  ./gen_qmenu_types,
  ./gen_qstyleoption_types,
  ./gen_qtextedit_types,
  ./gen_qwidget_types
export
  gen_qcoreevent_types,
  gen_qmetaobject_types,
  gen_qmimedata_types,
  gen_qobject_types,
  gen_qobjectdefs_types,
  gen_qpoint_types,
  gen_qrect_types,
  gen_qregularexpression_types,
  gen_qsize_types,
  gen_qurl_types,
  gen_qvariant_types,
  gen_qabstracttextdocumentlayout,
  gen_qevent_types,
  gen_qpagedpaintdevice_types,
  gen_qpaintdevice_types,
  gen_qpaintengine_types,
  gen_qpainter_types,
  gen_qtextcursor_types,
  gen_qtextdocument_types,
  gen_qtextformat_types,
  gen_qtextlayout_types,
  gen_qtextobject_types,
  gen_qabstractscrollarea,
  gen_qmenu_types,
  gen_qstyleoption_types,
  gen_qtextedit_types,
  gen_qwidget_types

type cQPlainTextEdit*{.exportc: "QPlainTextEdit", incompleteStruct.} = object
type cQPlainTextDocumentLayout*{.exportc: "QPlainTextDocumentLayout", incompleteStruct.} = object

proc fcQPlainTextEdit_new(parent: pointer): ptr cQPlainTextEdit {.importc: "QPlainTextEdit_new".}
proc fcQPlainTextEdit_new2(): ptr cQPlainTextEdit {.importc: "QPlainTextEdit_new2".}
proc fcQPlainTextEdit_new3(text: struct_miqt_string): ptr cQPlainTextEdit {.importc: "QPlainTextEdit_new3".}
proc fcQPlainTextEdit_new4(text: struct_miqt_string, parent: pointer): ptr cQPlainTextEdit {.importc: "QPlainTextEdit_new4".}
proc fcQPlainTextEdit_metaObject(self: pointer, ): pointer {.importc: "QPlainTextEdit_metaObject".}
proc fcQPlainTextEdit_metacast(self: pointer, param1: cstring): pointer {.importc: "QPlainTextEdit_metacast".}
proc fcQPlainTextEdit_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.importc: "QPlainTextEdit_metacall".}
proc fcQPlainTextEdit_tr(s: cstring): struct_miqt_string {.importc: "QPlainTextEdit_tr".}
proc fcQPlainTextEdit_setDocument(self: pointer, document: pointer): void {.importc: "QPlainTextEdit_setDocument".}
proc fcQPlainTextEdit_document(self: pointer, ): pointer {.importc: "QPlainTextEdit_document".}
proc fcQPlainTextEdit_setPlaceholderText(self: pointer, placeholderText: struct_miqt_string): void {.importc: "QPlainTextEdit_setPlaceholderText".}
proc fcQPlainTextEdit_placeholderText(self: pointer, ): struct_miqt_string {.importc: "QPlainTextEdit_placeholderText".}
proc fcQPlainTextEdit_setTextCursor(self: pointer, cursor: pointer): void {.importc: "QPlainTextEdit_setTextCursor".}
proc fcQPlainTextEdit_textCursor(self: pointer, ): pointer {.importc: "QPlainTextEdit_textCursor".}
proc fcQPlainTextEdit_isReadOnly(self: pointer, ): bool {.importc: "QPlainTextEdit_isReadOnly".}
proc fcQPlainTextEdit_setReadOnly(self: pointer, ro: bool): void {.importc: "QPlainTextEdit_setReadOnly".}
proc fcQPlainTextEdit_setTextInteractionFlags(self: pointer, flags: cint): void {.importc: "QPlainTextEdit_setTextInteractionFlags".}
proc fcQPlainTextEdit_textInteractionFlags(self: pointer, ): cint {.importc: "QPlainTextEdit_textInteractionFlags".}
proc fcQPlainTextEdit_mergeCurrentCharFormat(self: pointer, modifier: pointer): void {.importc: "QPlainTextEdit_mergeCurrentCharFormat".}
proc fcQPlainTextEdit_setCurrentCharFormat(self: pointer, format: pointer): void {.importc: "QPlainTextEdit_setCurrentCharFormat".}
proc fcQPlainTextEdit_currentCharFormat(self: pointer, ): pointer {.importc: "QPlainTextEdit_currentCharFormat".}
proc fcQPlainTextEdit_tabChangesFocus(self: pointer, ): bool {.importc: "QPlainTextEdit_tabChangesFocus".}
proc fcQPlainTextEdit_setTabChangesFocus(self: pointer, b: bool): void {.importc: "QPlainTextEdit_setTabChangesFocus".}
proc fcQPlainTextEdit_setDocumentTitle(self: pointer, title: struct_miqt_string): void {.importc: "QPlainTextEdit_setDocumentTitle".}
proc fcQPlainTextEdit_documentTitle(self: pointer, ): struct_miqt_string {.importc: "QPlainTextEdit_documentTitle".}
proc fcQPlainTextEdit_isUndoRedoEnabled(self: pointer, ): bool {.importc: "QPlainTextEdit_isUndoRedoEnabled".}
proc fcQPlainTextEdit_setUndoRedoEnabled(self: pointer, enable: bool): void {.importc: "QPlainTextEdit_setUndoRedoEnabled".}
proc fcQPlainTextEdit_setMaximumBlockCount(self: pointer, maximum: cint): void {.importc: "QPlainTextEdit_setMaximumBlockCount".}
proc fcQPlainTextEdit_maximumBlockCount(self: pointer, ): cint {.importc: "QPlainTextEdit_maximumBlockCount".}
proc fcQPlainTextEdit_lineWrapMode(self: pointer, ): cint {.importc: "QPlainTextEdit_lineWrapMode".}
proc fcQPlainTextEdit_setLineWrapMode(self: pointer, mode: cint): void {.importc: "QPlainTextEdit_setLineWrapMode".}
proc fcQPlainTextEdit_wordWrapMode(self: pointer, ): cint {.importc: "QPlainTextEdit_wordWrapMode".}
proc fcQPlainTextEdit_setWordWrapMode(self: pointer, policy: cint): void {.importc: "QPlainTextEdit_setWordWrapMode".}
proc fcQPlainTextEdit_setBackgroundVisible(self: pointer, visible: bool): void {.importc: "QPlainTextEdit_setBackgroundVisible".}
proc fcQPlainTextEdit_backgroundVisible(self: pointer, ): bool {.importc: "QPlainTextEdit_backgroundVisible".}
proc fcQPlainTextEdit_setCenterOnScroll(self: pointer, enabled: bool): void {.importc: "QPlainTextEdit_setCenterOnScroll".}
proc fcQPlainTextEdit_centerOnScroll(self: pointer, ): bool {.importc: "QPlainTextEdit_centerOnScroll".}
proc fcQPlainTextEdit_find(self: pointer, exp: struct_miqt_string): bool {.importc: "QPlainTextEdit_find".}
proc fcQPlainTextEdit_findWithExp(self: pointer, exp: pointer): bool {.importc: "QPlainTextEdit_findWithExp".}
proc fcQPlainTextEdit_toPlainText(self: pointer, ): struct_miqt_string {.importc: "QPlainTextEdit_toPlainText".}
proc fcQPlainTextEdit_ensureCursorVisible(self: pointer, ): void {.importc: "QPlainTextEdit_ensureCursorVisible".}
proc fcQPlainTextEdit_loadResource(self: pointer, typeVal: cint, name: pointer): pointer {.importc: "QPlainTextEdit_loadResource".}
proc fcQPlainTextEdit_createStandardContextMenu(self: pointer, ): pointer {.importc: "QPlainTextEdit_createStandardContextMenu".}
proc fcQPlainTextEdit_createStandardContextMenuWithPosition(self: pointer, position: pointer): pointer {.importc: "QPlainTextEdit_createStandardContextMenuWithPosition".}
proc fcQPlainTextEdit_cursorForPosition(self: pointer, pos: pointer): pointer {.importc: "QPlainTextEdit_cursorForPosition".}
proc fcQPlainTextEdit_cursorRect(self: pointer, cursor: pointer): pointer {.importc: "QPlainTextEdit_cursorRect".}
proc fcQPlainTextEdit_cursorRect2(self: pointer, ): pointer {.importc: "QPlainTextEdit_cursorRect2".}
proc fcQPlainTextEdit_anchorAt(self: pointer, pos: pointer): struct_miqt_string {.importc: "QPlainTextEdit_anchorAt".}
proc fcQPlainTextEdit_overwriteMode(self: pointer, ): bool {.importc: "QPlainTextEdit_overwriteMode".}
proc fcQPlainTextEdit_setOverwriteMode(self: pointer, overwrite: bool): void {.importc: "QPlainTextEdit_setOverwriteMode".}
proc fcQPlainTextEdit_tabStopDistance(self: pointer, ): float64 {.importc: "QPlainTextEdit_tabStopDistance".}
proc fcQPlainTextEdit_setTabStopDistance(self: pointer, distance: float64): void {.importc: "QPlainTextEdit_setTabStopDistance".}
proc fcQPlainTextEdit_cursorWidth(self: pointer, ): cint {.importc: "QPlainTextEdit_cursorWidth".}
proc fcQPlainTextEdit_setCursorWidth(self: pointer, width: cint): void {.importc: "QPlainTextEdit_setCursorWidth".}
proc fcQPlainTextEdit_setExtraSelections(self: pointer, selections: struct_miqt_array): void {.importc: "QPlainTextEdit_setExtraSelections".}
proc fcQPlainTextEdit_extraSelections(self: pointer, ): struct_miqt_array {.importc: "QPlainTextEdit_extraSelections".}
proc fcQPlainTextEdit_moveCursor(self: pointer, operation: cint): void {.importc: "QPlainTextEdit_moveCursor".}
proc fcQPlainTextEdit_canPaste(self: pointer, ): bool {.importc: "QPlainTextEdit_canPaste".}
proc fcQPlainTextEdit_print(self: pointer, printer: pointer): void {.importc: "QPlainTextEdit_print".}
proc fcQPlainTextEdit_blockCount(self: pointer, ): cint {.importc: "QPlainTextEdit_blockCount".}
proc fcQPlainTextEdit_inputMethodQuery(self: pointer, property: cint): pointer {.importc: "QPlainTextEdit_inputMethodQuery".}
proc fcQPlainTextEdit_inputMethodQuery2(self: pointer, query: cint, argument: pointer): pointer {.importc: "QPlainTextEdit_inputMethodQuery2".}
proc fcQPlainTextEdit_setPlainText(self: pointer, text: struct_miqt_string): void {.importc: "QPlainTextEdit_setPlainText".}
proc fcQPlainTextEdit_cut(self: pointer, ): void {.importc: "QPlainTextEdit_cut".}
proc fcQPlainTextEdit_copy(self: pointer, ): void {.importc: "QPlainTextEdit_copy".}
proc fcQPlainTextEdit_paste(self: pointer, ): void {.importc: "QPlainTextEdit_paste".}
proc fcQPlainTextEdit_undo(self: pointer, ): void {.importc: "QPlainTextEdit_undo".}
proc fcQPlainTextEdit_redo(self: pointer, ): void {.importc: "QPlainTextEdit_redo".}
proc fcQPlainTextEdit_clear(self: pointer, ): void {.importc: "QPlainTextEdit_clear".}
proc fcQPlainTextEdit_selectAll(self: pointer, ): void {.importc: "QPlainTextEdit_selectAll".}
proc fcQPlainTextEdit_insertPlainText(self: pointer, text: struct_miqt_string): void {.importc: "QPlainTextEdit_insertPlainText".}
proc fcQPlainTextEdit_appendPlainText(self: pointer, text: struct_miqt_string): void {.importc: "QPlainTextEdit_appendPlainText".}
proc fcQPlainTextEdit_appendHtml(self: pointer, html: struct_miqt_string): void {.importc: "QPlainTextEdit_appendHtml".}
proc fcQPlainTextEdit_centerCursor(self: pointer, ): void {.importc: "QPlainTextEdit_centerCursor".}
proc fcQPlainTextEdit_zoomIn(self: pointer, ): void {.importc: "QPlainTextEdit_zoomIn".}
proc fcQPlainTextEdit_zoomOut(self: pointer, ): void {.importc: "QPlainTextEdit_zoomOut".}
proc fcQPlainTextEdit_textChanged(self: pointer, ): void {.importc: "QPlainTextEdit_textChanged".}
proc fcQPlainTextEdit_connect_textChanged(self: pointer, slot: int) {.importc: "QPlainTextEdit_connect_textChanged".}
proc fcQPlainTextEdit_undoAvailable(self: pointer, b: bool): void {.importc: "QPlainTextEdit_undoAvailable".}
proc fcQPlainTextEdit_connect_undoAvailable(self: pointer, slot: int) {.importc: "QPlainTextEdit_connect_undoAvailable".}
proc fcQPlainTextEdit_redoAvailable(self: pointer, b: bool): void {.importc: "QPlainTextEdit_redoAvailable".}
proc fcQPlainTextEdit_connect_redoAvailable(self: pointer, slot: int) {.importc: "QPlainTextEdit_connect_redoAvailable".}
proc fcQPlainTextEdit_copyAvailable(self: pointer, b: bool): void {.importc: "QPlainTextEdit_copyAvailable".}
proc fcQPlainTextEdit_connect_copyAvailable(self: pointer, slot: int) {.importc: "QPlainTextEdit_connect_copyAvailable".}
proc fcQPlainTextEdit_selectionChanged(self: pointer, ): void {.importc: "QPlainTextEdit_selectionChanged".}
proc fcQPlainTextEdit_connect_selectionChanged(self: pointer, slot: int) {.importc: "QPlainTextEdit_connect_selectionChanged".}
proc fcQPlainTextEdit_cursorPositionChanged(self: pointer, ): void {.importc: "QPlainTextEdit_cursorPositionChanged".}
proc fcQPlainTextEdit_connect_cursorPositionChanged(self: pointer, slot: int) {.importc: "QPlainTextEdit_connect_cursorPositionChanged".}
proc fcQPlainTextEdit_updateRequest(self: pointer, rect: pointer, dy: cint): void {.importc: "QPlainTextEdit_updateRequest".}
proc fcQPlainTextEdit_connect_updateRequest(self: pointer, slot: int) {.importc: "QPlainTextEdit_connect_updateRequest".}
proc fcQPlainTextEdit_blockCountChanged(self: pointer, newBlockCount: cint): void {.importc: "QPlainTextEdit_blockCountChanged".}
proc fcQPlainTextEdit_connect_blockCountChanged(self: pointer, slot: int) {.importc: "QPlainTextEdit_connect_blockCountChanged".}
proc fcQPlainTextEdit_modificationChanged(self: pointer, param1: bool): void {.importc: "QPlainTextEdit_modificationChanged".}
proc fcQPlainTextEdit_connect_modificationChanged(self: pointer, slot: int) {.importc: "QPlainTextEdit_connect_modificationChanged".}
proc fcQPlainTextEdit_tr2(s: cstring, c: cstring): struct_miqt_string {.importc: "QPlainTextEdit_tr2".}
proc fcQPlainTextEdit_tr3(s: cstring, c: cstring, n: cint): struct_miqt_string {.importc: "QPlainTextEdit_tr3".}
proc fcQPlainTextEdit_find2(self: pointer, exp: struct_miqt_string, options: cint): bool {.importc: "QPlainTextEdit_find2".}
proc fcQPlainTextEdit_find22(self: pointer, exp: pointer, options: cint): bool {.importc: "QPlainTextEdit_find22".}
proc fcQPlainTextEdit_moveCursor2(self: pointer, operation: cint, mode: cint): void {.importc: "QPlainTextEdit_moveCursor2".}
proc fcQPlainTextEdit_zoomIn1(self: pointer, range: cint): void {.importc: "QPlainTextEdit_zoomIn1".}
proc fcQPlainTextEdit_zoomOut1(self: pointer, range: cint): void {.importc: "QPlainTextEdit_zoomOut1".}
proc fQPlainTextEdit_virtualbase_metaObject(self: pointer, ): pointer{.importc: "QPlainTextEdit_virtualbase_metaObject".}
proc fcQPlainTextEdit_override_virtual_metaObject(self: pointer, slot: int) {.importc: "QPlainTextEdit_override_virtual_metaObject".}
proc fQPlainTextEdit_virtualbase_metacast(self: pointer, param1: cstring): pointer{.importc: "QPlainTextEdit_virtualbase_metacast".}
proc fcQPlainTextEdit_override_virtual_metacast(self: pointer, slot: int) {.importc: "QPlainTextEdit_override_virtual_metacast".}
proc fQPlainTextEdit_virtualbase_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint{.importc: "QPlainTextEdit_virtualbase_metacall".}
proc fcQPlainTextEdit_override_virtual_metacall(self: pointer, slot: int) {.importc: "QPlainTextEdit_override_virtual_metacall".}
proc fQPlainTextEdit_virtualbase_loadResource(self: pointer, typeVal: cint, name: pointer): pointer{.importc: "QPlainTextEdit_virtualbase_loadResource".}
proc fcQPlainTextEdit_override_virtual_loadResource(self: pointer, slot: int) {.importc: "QPlainTextEdit_override_virtual_loadResource".}
proc fQPlainTextEdit_virtualbase_inputMethodQuery(self: pointer, property: cint): pointer{.importc: "QPlainTextEdit_virtualbase_inputMethodQuery".}
proc fcQPlainTextEdit_override_virtual_inputMethodQuery(self: pointer, slot: int) {.importc: "QPlainTextEdit_override_virtual_inputMethodQuery".}
proc fQPlainTextEdit_virtualbase_event(self: pointer, e: pointer): bool{.importc: "QPlainTextEdit_virtualbase_event".}
proc fcQPlainTextEdit_override_virtual_event(self: pointer, slot: int) {.importc: "QPlainTextEdit_override_virtual_event".}
proc fQPlainTextEdit_virtualbase_timerEvent(self: pointer, e: pointer): void{.importc: "QPlainTextEdit_virtualbase_timerEvent".}
proc fcQPlainTextEdit_override_virtual_timerEvent(self: pointer, slot: int) {.importc: "QPlainTextEdit_override_virtual_timerEvent".}
proc fQPlainTextEdit_virtualbase_keyPressEvent(self: pointer, e: pointer): void{.importc: "QPlainTextEdit_virtualbase_keyPressEvent".}
proc fcQPlainTextEdit_override_virtual_keyPressEvent(self: pointer, slot: int) {.importc: "QPlainTextEdit_override_virtual_keyPressEvent".}
proc fQPlainTextEdit_virtualbase_keyReleaseEvent(self: pointer, e: pointer): void{.importc: "QPlainTextEdit_virtualbase_keyReleaseEvent".}
proc fcQPlainTextEdit_override_virtual_keyReleaseEvent(self: pointer, slot: int) {.importc: "QPlainTextEdit_override_virtual_keyReleaseEvent".}
proc fQPlainTextEdit_virtualbase_resizeEvent(self: pointer, e: pointer): void{.importc: "QPlainTextEdit_virtualbase_resizeEvent".}
proc fcQPlainTextEdit_override_virtual_resizeEvent(self: pointer, slot: int) {.importc: "QPlainTextEdit_override_virtual_resizeEvent".}
proc fQPlainTextEdit_virtualbase_paintEvent(self: pointer, e: pointer): void{.importc: "QPlainTextEdit_virtualbase_paintEvent".}
proc fcQPlainTextEdit_override_virtual_paintEvent(self: pointer, slot: int) {.importc: "QPlainTextEdit_override_virtual_paintEvent".}
proc fQPlainTextEdit_virtualbase_mousePressEvent(self: pointer, e: pointer): void{.importc: "QPlainTextEdit_virtualbase_mousePressEvent".}
proc fcQPlainTextEdit_override_virtual_mousePressEvent(self: pointer, slot: int) {.importc: "QPlainTextEdit_override_virtual_mousePressEvent".}
proc fQPlainTextEdit_virtualbase_mouseMoveEvent(self: pointer, e: pointer): void{.importc: "QPlainTextEdit_virtualbase_mouseMoveEvent".}
proc fcQPlainTextEdit_override_virtual_mouseMoveEvent(self: pointer, slot: int) {.importc: "QPlainTextEdit_override_virtual_mouseMoveEvent".}
proc fQPlainTextEdit_virtualbase_mouseReleaseEvent(self: pointer, e: pointer): void{.importc: "QPlainTextEdit_virtualbase_mouseReleaseEvent".}
proc fcQPlainTextEdit_override_virtual_mouseReleaseEvent(self: pointer, slot: int) {.importc: "QPlainTextEdit_override_virtual_mouseReleaseEvent".}
proc fQPlainTextEdit_virtualbase_mouseDoubleClickEvent(self: pointer, e: pointer): void{.importc: "QPlainTextEdit_virtualbase_mouseDoubleClickEvent".}
proc fcQPlainTextEdit_override_virtual_mouseDoubleClickEvent(self: pointer, slot: int) {.importc: "QPlainTextEdit_override_virtual_mouseDoubleClickEvent".}
proc fQPlainTextEdit_virtualbase_focusNextPrevChild(self: pointer, next: bool): bool{.importc: "QPlainTextEdit_virtualbase_focusNextPrevChild".}
proc fcQPlainTextEdit_override_virtual_focusNextPrevChild(self: pointer, slot: int) {.importc: "QPlainTextEdit_override_virtual_focusNextPrevChild".}
proc fQPlainTextEdit_virtualbase_contextMenuEvent(self: pointer, e: pointer): void{.importc: "QPlainTextEdit_virtualbase_contextMenuEvent".}
proc fcQPlainTextEdit_override_virtual_contextMenuEvent(self: pointer, slot: int) {.importc: "QPlainTextEdit_override_virtual_contextMenuEvent".}
proc fQPlainTextEdit_virtualbase_dragEnterEvent(self: pointer, e: pointer): void{.importc: "QPlainTextEdit_virtualbase_dragEnterEvent".}
proc fcQPlainTextEdit_override_virtual_dragEnterEvent(self: pointer, slot: int) {.importc: "QPlainTextEdit_override_virtual_dragEnterEvent".}
proc fQPlainTextEdit_virtualbase_dragLeaveEvent(self: pointer, e: pointer): void{.importc: "QPlainTextEdit_virtualbase_dragLeaveEvent".}
proc fcQPlainTextEdit_override_virtual_dragLeaveEvent(self: pointer, slot: int) {.importc: "QPlainTextEdit_override_virtual_dragLeaveEvent".}
proc fQPlainTextEdit_virtualbase_dragMoveEvent(self: pointer, e: pointer): void{.importc: "QPlainTextEdit_virtualbase_dragMoveEvent".}
proc fcQPlainTextEdit_override_virtual_dragMoveEvent(self: pointer, slot: int) {.importc: "QPlainTextEdit_override_virtual_dragMoveEvent".}
proc fQPlainTextEdit_virtualbase_dropEvent(self: pointer, e: pointer): void{.importc: "QPlainTextEdit_virtualbase_dropEvent".}
proc fcQPlainTextEdit_override_virtual_dropEvent(self: pointer, slot: int) {.importc: "QPlainTextEdit_override_virtual_dropEvent".}
proc fQPlainTextEdit_virtualbase_focusInEvent(self: pointer, e: pointer): void{.importc: "QPlainTextEdit_virtualbase_focusInEvent".}
proc fcQPlainTextEdit_override_virtual_focusInEvent(self: pointer, slot: int) {.importc: "QPlainTextEdit_override_virtual_focusInEvent".}
proc fQPlainTextEdit_virtualbase_focusOutEvent(self: pointer, e: pointer): void{.importc: "QPlainTextEdit_virtualbase_focusOutEvent".}
proc fcQPlainTextEdit_override_virtual_focusOutEvent(self: pointer, slot: int) {.importc: "QPlainTextEdit_override_virtual_focusOutEvent".}
proc fQPlainTextEdit_virtualbase_showEvent(self: pointer, param1: pointer): void{.importc: "QPlainTextEdit_virtualbase_showEvent".}
proc fcQPlainTextEdit_override_virtual_showEvent(self: pointer, slot: int) {.importc: "QPlainTextEdit_override_virtual_showEvent".}
proc fQPlainTextEdit_virtualbase_changeEvent(self: pointer, e: pointer): void{.importc: "QPlainTextEdit_virtualbase_changeEvent".}
proc fcQPlainTextEdit_override_virtual_changeEvent(self: pointer, slot: int) {.importc: "QPlainTextEdit_override_virtual_changeEvent".}
proc fQPlainTextEdit_virtualbase_wheelEvent(self: pointer, e: pointer): void{.importc: "QPlainTextEdit_virtualbase_wheelEvent".}
proc fcQPlainTextEdit_override_virtual_wheelEvent(self: pointer, slot: int) {.importc: "QPlainTextEdit_override_virtual_wheelEvent".}
proc fQPlainTextEdit_virtualbase_createMimeDataFromSelection(self: pointer, ): pointer{.importc: "QPlainTextEdit_virtualbase_createMimeDataFromSelection".}
proc fcQPlainTextEdit_override_virtual_createMimeDataFromSelection(self: pointer, slot: int) {.importc: "QPlainTextEdit_override_virtual_createMimeDataFromSelection".}
proc fQPlainTextEdit_virtualbase_canInsertFromMimeData(self: pointer, source: pointer): bool{.importc: "QPlainTextEdit_virtualbase_canInsertFromMimeData".}
proc fcQPlainTextEdit_override_virtual_canInsertFromMimeData(self: pointer, slot: int) {.importc: "QPlainTextEdit_override_virtual_canInsertFromMimeData".}
proc fQPlainTextEdit_virtualbase_insertFromMimeData(self: pointer, source: pointer): void{.importc: "QPlainTextEdit_virtualbase_insertFromMimeData".}
proc fcQPlainTextEdit_override_virtual_insertFromMimeData(self: pointer, slot: int) {.importc: "QPlainTextEdit_override_virtual_insertFromMimeData".}
proc fQPlainTextEdit_virtualbase_inputMethodEvent(self: pointer, param1: pointer): void{.importc: "QPlainTextEdit_virtualbase_inputMethodEvent".}
proc fcQPlainTextEdit_override_virtual_inputMethodEvent(self: pointer, slot: int) {.importc: "QPlainTextEdit_override_virtual_inputMethodEvent".}
proc fQPlainTextEdit_virtualbase_scrollContentsBy(self: pointer, dx: cint, dy: cint): void{.importc: "QPlainTextEdit_virtualbase_scrollContentsBy".}
proc fcQPlainTextEdit_override_virtual_scrollContentsBy(self: pointer, slot: int) {.importc: "QPlainTextEdit_override_virtual_scrollContentsBy".}
proc fQPlainTextEdit_virtualbase_doSetTextCursor(self: pointer, cursor: pointer): void{.importc: "QPlainTextEdit_virtualbase_doSetTextCursor".}
proc fcQPlainTextEdit_override_virtual_doSetTextCursor(self: pointer, slot: int) {.importc: "QPlainTextEdit_override_virtual_doSetTextCursor".}
proc fQPlainTextEdit_virtualbase_minimumSizeHint(self: pointer, ): pointer{.importc: "QPlainTextEdit_virtualbase_minimumSizeHint".}
proc fcQPlainTextEdit_override_virtual_minimumSizeHint(self: pointer, slot: int) {.importc: "QPlainTextEdit_override_virtual_minimumSizeHint".}
proc fQPlainTextEdit_virtualbase_sizeHint(self: pointer, ): pointer{.importc: "QPlainTextEdit_virtualbase_sizeHint".}
proc fcQPlainTextEdit_override_virtual_sizeHint(self: pointer, slot: int) {.importc: "QPlainTextEdit_override_virtual_sizeHint".}
proc fQPlainTextEdit_virtualbase_setupViewport(self: pointer, viewport: pointer): void{.importc: "QPlainTextEdit_virtualbase_setupViewport".}
proc fcQPlainTextEdit_override_virtual_setupViewport(self: pointer, slot: int) {.importc: "QPlainTextEdit_override_virtual_setupViewport".}
proc fQPlainTextEdit_virtualbase_eventFilter(self: pointer, param1: pointer, param2: pointer): bool{.importc: "QPlainTextEdit_virtualbase_eventFilter".}
proc fcQPlainTextEdit_override_virtual_eventFilter(self: pointer, slot: int) {.importc: "QPlainTextEdit_override_virtual_eventFilter".}
proc fQPlainTextEdit_virtualbase_viewportEvent(self: pointer, param1: pointer): bool{.importc: "QPlainTextEdit_virtualbase_viewportEvent".}
proc fcQPlainTextEdit_override_virtual_viewportEvent(self: pointer, slot: int) {.importc: "QPlainTextEdit_override_virtual_viewportEvent".}
proc fQPlainTextEdit_virtualbase_viewportSizeHint(self: pointer, ): pointer{.importc: "QPlainTextEdit_virtualbase_viewportSizeHint".}
proc fcQPlainTextEdit_override_virtual_viewportSizeHint(self: pointer, slot: int) {.importc: "QPlainTextEdit_override_virtual_viewportSizeHint".}
proc fQPlainTextEdit_virtualbase_initStyleOption(self: pointer, option: pointer): void{.importc: "QPlainTextEdit_virtualbase_initStyleOption".}
proc fcQPlainTextEdit_override_virtual_initStyleOption(self: pointer, slot: int) {.importc: "QPlainTextEdit_override_virtual_initStyleOption".}
proc fQPlainTextEdit_virtualbase_devType(self: pointer, ): cint{.importc: "QPlainTextEdit_virtualbase_devType".}
proc fcQPlainTextEdit_override_virtual_devType(self: pointer, slot: int) {.importc: "QPlainTextEdit_override_virtual_devType".}
proc fQPlainTextEdit_virtualbase_setVisible(self: pointer, visible: bool): void{.importc: "QPlainTextEdit_virtualbase_setVisible".}
proc fcQPlainTextEdit_override_virtual_setVisible(self: pointer, slot: int) {.importc: "QPlainTextEdit_override_virtual_setVisible".}
proc fQPlainTextEdit_virtualbase_heightForWidth(self: pointer, param1: cint): cint{.importc: "QPlainTextEdit_virtualbase_heightForWidth".}
proc fcQPlainTextEdit_override_virtual_heightForWidth(self: pointer, slot: int) {.importc: "QPlainTextEdit_override_virtual_heightForWidth".}
proc fQPlainTextEdit_virtualbase_hasHeightForWidth(self: pointer, ): bool{.importc: "QPlainTextEdit_virtualbase_hasHeightForWidth".}
proc fcQPlainTextEdit_override_virtual_hasHeightForWidth(self: pointer, slot: int) {.importc: "QPlainTextEdit_override_virtual_hasHeightForWidth".}
proc fQPlainTextEdit_virtualbase_paintEngine(self: pointer, ): pointer{.importc: "QPlainTextEdit_virtualbase_paintEngine".}
proc fcQPlainTextEdit_override_virtual_paintEngine(self: pointer, slot: int) {.importc: "QPlainTextEdit_override_virtual_paintEngine".}
proc fQPlainTextEdit_virtualbase_enterEvent(self: pointer, event: pointer): void{.importc: "QPlainTextEdit_virtualbase_enterEvent".}
proc fcQPlainTextEdit_override_virtual_enterEvent(self: pointer, slot: int) {.importc: "QPlainTextEdit_override_virtual_enterEvent".}
proc fQPlainTextEdit_virtualbase_leaveEvent(self: pointer, event: pointer): void{.importc: "QPlainTextEdit_virtualbase_leaveEvent".}
proc fcQPlainTextEdit_override_virtual_leaveEvent(self: pointer, slot: int) {.importc: "QPlainTextEdit_override_virtual_leaveEvent".}
proc fQPlainTextEdit_virtualbase_moveEvent(self: pointer, event: pointer): void{.importc: "QPlainTextEdit_virtualbase_moveEvent".}
proc fcQPlainTextEdit_override_virtual_moveEvent(self: pointer, slot: int) {.importc: "QPlainTextEdit_override_virtual_moveEvent".}
proc fQPlainTextEdit_virtualbase_closeEvent(self: pointer, event: pointer): void{.importc: "QPlainTextEdit_virtualbase_closeEvent".}
proc fcQPlainTextEdit_override_virtual_closeEvent(self: pointer, slot: int) {.importc: "QPlainTextEdit_override_virtual_closeEvent".}
proc fQPlainTextEdit_virtualbase_tabletEvent(self: pointer, event: pointer): void{.importc: "QPlainTextEdit_virtualbase_tabletEvent".}
proc fcQPlainTextEdit_override_virtual_tabletEvent(self: pointer, slot: int) {.importc: "QPlainTextEdit_override_virtual_tabletEvent".}
proc fQPlainTextEdit_virtualbase_actionEvent(self: pointer, event: pointer): void{.importc: "QPlainTextEdit_virtualbase_actionEvent".}
proc fcQPlainTextEdit_override_virtual_actionEvent(self: pointer, slot: int) {.importc: "QPlainTextEdit_override_virtual_actionEvent".}
proc fQPlainTextEdit_virtualbase_hideEvent(self: pointer, event: pointer): void{.importc: "QPlainTextEdit_virtualbase_hideEvent".}
proc fcQPlainTextEdit_override_virtual_hideEvent(self: pointer, slot: int) {.importc: "QPlainTextEdit_override_virtual_hideEvent".}
proc fQPlainTextEdit_virtualbase_nativeEvent(self: pointer, eventType: struct_miqt_string, message: pointer, resultVal: ptr uint): bool{.importc: "QPlainTextEdit_virtualbase_nativeEvent".}
proc fcQPlainTextEdit_override_virtual_nativeEvent(self: pointer, slot: int) {.importc: "QPlainTextEdit_override_virtual_nativeEvent".}
proc fQPlainTextEdit_virtualbase_metric(self: pointer, param1: cint): cint{.importc: "QPlainTextEdit_virtualbase_metric".}
proc fcQPlainTextEdit_override_virtual_metric(self: pointer, slot: int) {.importc: "QPlainTextEdit_override_virtual_metric".}
proc fQPlainTextEdit_virtualbase_initPainter(self: pointer, painter: pointer): void{.importc: "QPlainTextEdit_virtualbase_initPainter".}
proc fcQPlainTextEdit_override_virtual_initPainter(self: pointer, slot: int) {.importc: "QPlainTextEdit_override_virtual_initPainter".}
proc fQPlainTextEdit_virtualbase_redirected(self: pointer, offset: pointer): pointer{.importc: "QPlainTextEdit_virtualbase_redirected".}
proc fcQPlainTextEdit_override_virtual_redirected(self: pointer, slot: int) {.importc: "QPlainTextEdit_override_virtual_redirected".}
proc fQPlainTextEdit_virtualbase_sharedPainter(self: pointer, ): pointer{.importc: "QPlainTextEdit_virtualbase_sharedPainter".}
proc fcQPlainTextEdit_override_virtual_sharedPainter(self: pointer, slot: int) {.importc: "QPlainTextEdit_override_virtual_sharedPainter".}
proc fQPlainTextEdit_virtualbase_childEvent(self: pointer, event: pointer): void{.importc: "QPlainTextEdit_virtualbase_childEvent".}
proc fcQPlainTextEdit_override_virtual_childEvent(self: pointer, slot: int) {.importc: "QPlainTextEdit_override_virtual_childEvent".}
proc fQPlainTextEdit_virtualbase_customEvent(self: pointer, event: pointer): void{.importc: "QPlainTextEdit_virtualbase_customEvent".}
proc fcQPlainTextEdit_override_virtual_customEvent(self: pointer, slot: int) {.importc: "QPlainTextEdit_override_virtual_customEvent".}
proc fQPlainTextEdit_virtualbase_connectNotify(self: pointer, signal: pointer): void{.importc: "QPlainTextEdit_virtualbase_connectNotify".}
proc fcQPlainTextEdit_override_virtual_connectNotify(self: pointer, slot: int) {.importc: "QPlainTextEdit_override_virtual_connectNotify".}
proc fQPlainTextEdit_virtualbase_disconnectNotify(self: pointer, signal: pointer): void{.importc: "QPlainTextEdit_virtualbase_disconnectNotify".}
proc fcQPlainTextEdit_override_virtual_disconnectNotify(self: pointer, slot: int) {.importc: "QPlainTextEdit_override_virtual_disconnectNotify".}
proc fcQPlainTextEdit_staticMetaObject(): pointer {.importc: "QPlainTextEdit_staticMetaObject".}
proc fcQPlainTextEdit_delete(self: pointer) {.importc: "QPlainTextEdit_delete".}
proc fcQPlainTextDocumentLayout_new(document: pointer): ptr cQPlainTextDocumentLayout {.importc: "QPlainTextDocumentLayout_new".}
proc fcQPlainTextDocumentLayout_metaObject(self: pointer, ): pointer {.importc: "QPlainTextDocumentLayout_metaObject".}
proc fcQPlainTextDocumentLayout_metacast(self: pointer, param1: cstring): pointer {.importc: "QPlainTextDocumentLayout_metacast".}
proc fcQPlainTextDocumentLayout_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.importc: "QPlainTextDocumentLayout_metacall".}
proc fcQPlainTextDocumentLayout_tr(s: cstring): struct_miqt_string {.importc: "QPlainTextDocumentLayout_tr".}
proc fcQPlainTextDocumentLayout_draw(self: pointer, param1: pointer, param2: pointer): void {.importc: "QPlainTextDocumentLayout_draw".}
proc fcQPlainTextDocumentLayout_hitTest(self: pointer, param1: pointer, param2: cint): cint {.importc: "QPlainTextDocumentLayout_hitTest".}
proc fcQPlainTextDocumentLayout_pageCount(self: pointer, ): cint {.importc: "QPlainTextDocumentLayout_pageCount".}
proc fcQPlainTextDocumentLayout_documentSize(self: pointer, ): pointer {.importc: "QPlainTextDocumentLayout_documentSize".}
proc fcQPlainTextDocumentLayout_frameBoundingRect(self: pointer, param1: pointer): pointer {.importc: "QPlainTextDocumentLayout_frameBoundingRect".}
proc fcQPlainTextDocumentLayout_blockBoundingRect(self: pointer, blockVal: pointer): pointer {.importc: "QPlainTextDocumentLayout_blockBoundingRect".}
proc fcQPlainTextDocumentLayout_ensureBlockLayout(self: pointer, blockVal: pointer): void {.importc: "QPlainTextDocumentLayout_ensureBlockLayout".}
proc fcQPlainTextDocumentLayout_setCursorWidth(self: pointer, width: cint): void {.importc: "QPlainTextDocumentLayout_setCursorWidth".}
proc fcQPlainTextDocumentLayout_cursorWidth(self: pointer, ): cint {.importc: "QPlainTextDocumentLayout_cursorWidth".}
proc fcQPlainTextDocumentLayout_requestUpdate(self: pointer, ): void {.importc: "QPlainTextDocumentLayout_requestUpdate".}
proc fcQPlainTextDocumentLayout_tr2(s: cstring, c: cstring): struct_miqt_string {.importc: "QPlainTextDocumentLayout_tr2".}
proc fcQPlainTextDocumentLayout_tr3(s: cstring, c: cstring, n: cint): struct_miqt_string {.importc: "QPlainTextDocumentLayout_tr3".}
proc fQPlainTextDocumentLayout_virtualbase_metaObject(self: pointer, ): pointer{.importc: "QPlainTextDocumentLayout_virtualbase_metaObject".}
proc fcQPlainTextDocumentLayout_override_virtual_metaObject(self: pointer, slot: int) {.importc: "QPlainTextDocumentLayout_override_virtual_metaObject".}
proc fQPlainTextDocumentLayout_virtualbase_metacast(self: pointer, param1: cstring): pointer{.importc: "QPlainTextDocumentLayout_virtualbase_metacast".}
proc fcQPlainTextDocumentLayout_override_virtual_metacast(self: pointer, slot: int) {.importc: "QPlainTextDocumentLayout_override_virtual_metacast".}
proc fQPlainTextDocumentLayout_virtualbase_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint{.importc: "QPlainTextDocumentLayout_virtualbase_metacall".}
proc fcQPlainTextDocumentLayout_override_virtual_metacall(self: pointer, slot: int) {.importc: "QPlainTextDocumentLayout_override_virtual_metacall".}
proc fQPlainTextDocumentLayout_virtualbase_draw(self: pointer, param1: pointer, param2: pointer): void{.importc: "QPlainTextDocumentLayout_virtualbase_draw".}
proc fcQPlainTextDocumentLayout_override_virtual_draw(self: pointer, slot: int) {.importc: "QPlainTextDocumentLayout_override_virtual_draw".}
proc fQPlainTextDocumentLayout_virtualbase_hitTest(self: pointer, param1: pointer, param2: cint): cint{.importc: "QPlainTextDocumentLayout_virtualbase_hitTest".}
proc fcQPlainTextDocumentLayout_override_virtual_hitTest(self: pointer, slot: int) {.importc: "QPlainTextDocumentLayout_override_virtual_hitTest".}
proc fQPlainTextDocumentLayout_virtualbase_pageCount(self: pointer, ): cint{.importc: "QPlainTextDocumentLayout_virtualbase_pageCount".}
proc fcQPlainTextDocumentLayout_override_virtual_pageCount(self: pointer, slot: int) {.importc: "QPlainTextDocumentLayout_override_virtual_pageCount".}
proc fQPlainTextDocumentLayout_virtualbase_documentSize(self: pointer, ): pointer{.importc: "QPlainTextDocumentLayout_virtualbase_documentSize".}
proc fcQPlainTextDocumentLayout_override_virtual_documentSize(self: pointer, slot: int) {.importc: "QPlainTextDocumentLayout_override_virtual_documentSize".}
proc fQPlainTextDocumentLayout_virtualbase_frameBoundingRect(self: pointer, param1: pointer): pointer{.importc: "QPlainTextDocumentLayout_virtualbase_frameBoundingRect".}
proc fcQPlainTextDocumentLayout_override_virtual_frameBoundingRect(self: pointer, slot: int) {.importc: "QPlainTextDocumentLayout_override_virtual_frameBoundingRect".}
proc fQPlainTextDocumentLayout_virtualbase_blockBoundingRect(self: pointer, blockVal: pointer): pointer{.importc: "QPlainTextDocumentLayout_virtualbase_blockBoundingRect".}
proc fcQPlainTextDocumentLayout_override_virtual_blockBoundingRect(self: pointer, slot: int) {.importc: "QPlainTextDocumentLayout_override_virtual_blockBoundingRect".}
proc fQPlainTextDocumentLayout_virtualbase_documentChanged(self: pointer, fromVal: cint, param2: cint, charsAdded: cint): void{.importc: "QPlainTextDocumentLayout_virtualbase_documentChanged".}
proc fcQPlainTextDocumentLayout_override_virtual_documentChanged(self: pointer, slot: int) {.importc: "QPlainTextDocumentLayout_override_virtual_documentChanged".}
proc fQPlainTextDocumentLayout_virtualbase_resizeInlineObject(self: pointer, item: pointer, posInDocument: cint, format: pointer): void{.importc: "QPlainTextDocumentLayout_virtualbase_resizeInlineObject".}
proc fcQPlainTextDocumentLayout_override_virtual_resizeInlineObject(self: pointer, slot: int) {.importc: "QPlainTextDocumentLayout_override_virtual_resizeInlineObject".}
proc fQPlainTextDocumentLayout_virtualbase_positionInlineObject(self: pointer, item: pointer, posInDocument: cint, format: pointer): void{.importc: "QPlainTextDocumentLayout_virtualbase_positionInlineObject".}
proc fcQPlainTextDocumentLayout_override_virtual_positionInlineObject(self: pointer, slot: int) {.importc: "QPlainTextDocumentLayout_override_virtual_positionInlineObject".}
proc fQPlainTextDocumentLayout_virtualbase_drawInlineObject(self: pointer, painter: pointer, rect: pointer, objectVal: pointer, posInDocument: cint, format: pointer): void{.importc: "QPlainTextDocumentLayout_virtualbase_drawInlineObject".}
proc fcQPlainTextDocumentLayout_override_virtual_drawInlineObject(self: pointer, slot: int) {.importc: "QPlainTextDocumentLayout_override_virtual_drawInlineObject".}
proc fQPlainTextDocumentLayout_virtualbase_event(self: pointer, event: pointer): bool{.importc: "QPlainTextDocumentLayout_virtualbase_event".}
proc fcQPlainTextDocumentLayout_override_virtual_event(self: pointer, slot: int) {.importc: "QPlainTextDocumentLayout_override_virtual_event".}
proc fQPlainTextDocumentLayout_virtualbase_eventFilter(self: pointer, watched: pointer, event: pointer): bool{.importc: "QPlainTextDocumentLayout_virtualbase_eventFilter".}
proc fcQPlainTextDocumentLayout_override_virtual_eventFilter(self: pointer, slot: int) {.importc: "QPlainTextDocumentLayout_override_virtual_eventFilter".}
proc fQPlainTextDocumentLayout_virtualbase_timerEvent(self: pointer, event: pointer): void{.importc: "QPlainTextDocumentLayout_virtualbase_timerEvent".}
proc fcQPlainTextDocumentLayout_override_virtual_timerEvent(self: pointer, slot: int) {.importc: "QPlainTextDocumentLayout_override_virtual_timerEvent".}
proc fQPlainTextDocumentLayout_virtualbase_childEvent(self: pointer, event: pointer): void{.importc: "QPlainTextDocumentLayout_virtualbase_childEvent".}
proc fcQPlainTextDocumentLayout_override_virtual_childEvent(self: pointer, slot: int) {.importc: "QPlainTextDocumentLayout_override_virtual_childEvent".}
proc fQPlainTextDocumentLayout_virtualbase_customEvent(self: pointer, event: pointer): void{.importc: "QPlainTextDocumentLayout_virtualbase_customEvent".}
proc fcQPlainTextDocumentLayout_override_virtual_customEvent(self: pointer, slot: int) {.importc: "QPlainTextDocumentLayout_override_virtual_customEvent".}
proc fQPlainTextDocumentLayout_virtualbase_connectNotify(self: pointer, signal: pointer): void{.importc: "QPlainTextDocumentLayout_virtualbase_connectNotify".}
proc fcQPlainTextDocumentLayout_override_virtual_connectNotify(self: pointer, slot: int) {.importc: "QPlainTextDocumentLayout_override_virtual_connectNotify".}
proc fQPlainTextDocumentLayout_virtualbase_disconnectNotify(self: pointer, signal: pointer): void{.importc: "QPlainTextDocumentLayout_virtualbase_disconnectNotify".}
proc fcQPlainTextDocumentLayout_override_virtual_disconnectNotify(self: pointer, slot: int) {.importc: "QPlainTextDocumentLayout_override_virtual_disconnectNotify".}
proc fcQPlainTextDocumentLayout_staticMetaObject(): pointer {.importc: "QPlainTextDocumentLayout_staticMetaObject".}
proc fcQPlainTextDocumentLayout_delete(self: pointer) {.importc: "QPlainTextDocumentLayout_delete".}


func init*(T: type gen_qplaintextedit_types.QPlainTextEdit, h: ptr cQPlainTextEdit): gen_qplaintextedit_types.QPlainTextEdit =
  T(h: h)
proc create*(T: type gen_qplaintextedit_types.QPlainTextEdit, parent: gen_qwidget_types.QWidget): gen_qplaintextedit_types.QPlainTextEdit =
  gen_qplaintextedit_types.QPlainTextEdit.init(fcQPlainTextEdit_new(parent.h))

proc create*(T: type gen_qplaintextedit_types.QPlainTextEdit, ): gen_qplaintextedit_types.QPlainTextEdit =
  gen_qplaintextedit_types.QPlainTextEdit.init(fcQPlainTextEdit_new2())

proc create*(T: type gen_qplaintextedit_types.QPlainTextEdit, text: string): gen_qplaintextedit_types.QPlainTextEdit =
  gen_qplaintextedit_types.QPlainTextEdit.init(fcQPlainTextEdit_new3(struct_miqt_string(data: text, len: csize_t(len(text)))))

proc create*(T: type gen_qplaintextedit_types.QPlainTextEdit, text: string, parent: gen_qwidget_types.QWidget): gen_qplaintextedit_types.QPlainTextEdit =
  gen_qplaintextedit_types.QPlainTextEdit.init(fcQPlainTextEdit_new4(struct_miqt_string(data: text, len: csize_t(len(text))), parent.h))

proc metaObject*(self: gen_qplaintextedit_types.QPlainTextEdit, ): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQPlainTextEdit_metaObject(self.h))

proc metacast*(self: gen_qplaintextedit_types.QPlainTextEdit, param1: cstring): pointer =
  fcQPlainTextEdit_metacast(self.h, param1)

proc metacall*(self: gen_qplaintextedit_types.QPlainTextEdit, param1: cint, param2: cint, param3: pointer): cint =
  fcQPlainTextEdit_metacall(self.h, cint(param1), param2, param3)

proc tr*(_: type gen_qplaintextedit_types.QPlainTextEdit, s: cstring): string =
  let v_ms = fcQPlainTextEdit_tr(s)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc setDocument*(self: gen_qplaintextedit_types.QPlainTextEdit, document: gen_qtextdocument_types.QTextDocument): void =
  fcQPlainTextEdit_setDocument(self.h, document.h)

proc document*(self: gen_qplaintextedit_types.QPlainTextEdit, ): gen_qtextdocument_types.QTextDocument =
  gen_qtextdocument_types.QTextDocument(h: fcQPlainTextEdit_document(self.h))

proc setPlaceholderText*(self: gen_qplaintextedit_types.QPlainTextEdit, placeholderText: string): void =
  fcQPlainTextEdit_setPlaceholderText(self.h, struct_miqt_string(data: placeholderText, len: csize_t(len(placeholderText))))

proc placeholderText*(self: gen_qplaintextedit_types.QPlainTextEdit, ): string =
  let v_ms = fcQPlainTextEdit_placeholderText(self.h)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc setTextCursor*(self: gen_qplaintextedit_types.QPlainTextEdit, cursor: gen_qtextcursor_types.QTextCursor): void =
  fcQPlainTextEdit_setTextCursor(self.h, cursor.h)

proc textCursor*(self: gen_qplaintextedit_types.QPlainTextEdit, ): gen_qtextcursor_types.QTextCursor =
  gen_qtextcursor_types.QTextCursor(h: fcQPlainTextEdit_textCursor(self.h))

proc isReadOnly*(self: gen_qplaintextedit_types.QPlainTextEdit, ): bool =
  fcQPlainTextEdit_isReadOnly(self.h)

proc setReadOnly*(self: gen_qplaintextedit_types.QPlainTextEdit, ro: bool): void =
  fcQPlainTextEdit_setReadOnly(self.h, ro)

proc setTextInteractionFlags*(self: gen_qplaintextedit_types.QPlainTextEdit, flags: cint): void =
  fcQPlainTextEdit_setTextInteractionFlags(self.h, cint(flags))

proc textInteractionFlags*(self: gen_qplaintextedit_types.QPlainTextEdit, ): cint =
  cint(fcQPlainTextEdit_textInteractionFlags(self.h))

proc mergeCurrentCharFormat*(self: gen_qplaintextedit_types.QPlainTextEdit, modifier: gen_qtextformat_types.QTextCharFormat): void =
  fcQPlainTextEdit_mergeCurrentCharFormat(self.h, modifier.h)

proc setCurrentCharFormat*(self: gen_qplaintextedit_types.QPlainTextEdit, format: gen_qtextformat_types.QTextCharFormat): void =
  fcQPlainTextEdit_setCurrentCharFormat(self.h, format.h)

proc currentCharFormat*(self: gen_qplaintextedit_types.QPlainTextEdit, ): gen_qtextformat_types.QTextCharFormat =
  gen_qtextformat_types.QTextCharFormat(h: fcQPlainTextEdit_currentCharFormat(self.h))

proc tabChangesFocus*(self: gen_qplaintextedit_types.QPlainTextEdit, ): bool =
  fcQPlainTextEdit_tabChangesFocus(self.h)

proc setTabChangesFocus*(self: gen_qplaintextedit_types.QPlainTextEdit, b: bool): void =
  fcQPlainTextEdit_setTabChangesFocus(self.h, b)

proc setDocumentTitle*(self: gen_qplaintextedit_types.QPlainTextEdit, title: string): void =
  fcQPlainTextEdit_setDocumentTitle(self.h, struct_miqt_string(data: title, len: csize_t(len(title))))

proc documentTitle*(self: gen_qplaintextedit_types.QPlainTextEdit, ): string =
  let v_ms = fcQPlainTextEdit_documentTitle(self.h)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc isUndoRedoEnabled*(self: gen_qplaintextedit_types.QPlainTextEdit, ): bool =
  fcQPlainTextEdit_isUndoRedoEnabled(self.h)

proc setUndoRedoEnabled*(self: gen_qplaintextedit_types.QPlainTextEdit, enable: bool): void =
  fcQPlainTextEdit_setUndoRedoEnabled(self.h, enable)

proc setMaximumBlockCount*(self: gen_qplaintextedit_types.QPlainTextEdit, maximum: cint): void =
  fcQPlainTextEdit_setMaximumBlockCount(self.h, maximum)

proc maximumBlockCount*(self: gen_qplaintextedit_types.QPlainTextEdit, ): cint =
  fcQPlainTextEdit_maximumBlockCount(self.h)

proc lineWrapMode*(self: gen_qplaintextedit_types.QPlainTextEdit, ): cint =
  cint(fcQPlainTextEdit_lineWrapMode(self.h))

proc setLineWrapMode*(self: gen_qplaintextedit_types.QPlainTextEdit, mode: cint): void =
  fcQPlainTextEdit_setLineWrapMode(self.h, cint(mode))

proc wordWrapMode*(self: gen_qplaintextedit_types.QPlainTextEdit, ): cint =
  cint(fcQPlainTextEdit_wordWrapMode(self.h))

proc setWordWrapMode*(self: gen_qplaintextedit_types.QPlainTextEdit, policy: cint): void =
  fcQPlainTextEdit_setWordWrapMode(self.h, cint(policy))

proc setBackgroundVisible*(self: gen_qplaintextedit_types.QPlainTextEdit, visible: bool): void =
  fcQPlainTextEdit_setBackgroundVisible(self.h, visible)

proc backgroundVisible*(self: gen_qplaintextedit_types.QPlainTextEdit, ): bool =
  fcQPlainTextEdit_backgroundVisible(self.h)

proc setCenterOnScroll*(self: gen_qplaintextedit_types.QPlainTextEdit, enabled: bool): void =
  fcQPlainTextEdit_setCenterOnScroll(self.h, enabled)

proc centerOnScroll*(self: gen_qplaintextedit_types.QPlainTextEdit, ): bool =
  fcQPlainTextEdit_centerOnScroll(self.h)

proc find*(self: gen_qplaintextedit_types.QPlainTextEdit, exp: string): bool =
  fcQPlainTextEdit_find(self.h, struct_miqt_string(data: exp, len: csize_t(len(exp))))

proc find*(self: gen_qplaintextedit_types.QPlainTextEdit, exp: gen_qregularexpression_types.QRegularExpression): bool =
  fcQPlainTextEdit_findWithExp(self.h, exp.h)

proc toPlainText*(self: gen_qplaintextedit_types.QPlainTextEdit, ): string =
  let v_ms = fcQPlainTextEdit_toPlainText(self.h)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc ensureCursorVisible*(self: gen_qplaintextedit_types.QPlainTextEdit, ): void =
  fcQPlainTextEdit_ensureCursorVisible(self.h)

proc loadResource*(self: gen_qplaintextedit_types.QPlainTextEdit, typeVal: cint, name: gen_qurl_types.QUrl): gen_qvariant_types.QVariant =
  gen_qvariant_types.QVariant(h: fcQPlainTextEdit_loadResource(self.h, typeVal, name.h))

proc createStandardContextMenu*(self: gen_qplaintextedit_types.QPlainTextEdit, ): gen_qmenu_types.QMenu =
  gen_qmenu_types.QMenu(h: fcQPlainTextEdit_createStandardContextMenu(self.h))

proc createStandardContextMenu*(self: gen_qplaintextedit_types.QPlainTextEdit, position: gen_qpoint_types.QPoint): gen_qmenu_types.QMenu =
  gen_qmenu_types.QMenu(h: fcQPlainTextEdit_createStandardContextMenuWithPosition(self.h, position.h))

proc cursorForPosition*(self: gen_qplaintextedit_types.QPlainTextEdit, pos: gen_qpoint_types.QPoint): gen_qtextcursor_types.QTextCursor =
  gen_qtextcursor_types.QTextCursor(h: fcQPlainTextEdit_cursorForPosition(self.h, pos.h))

proc cursorRect*(self: gen_qplaintextedit_types.QPlainTextEdit, cursor: gen_qtextcursor_types.QTextCursor): gen_qrect_types.QRect =
  gen_qrect_types.QRect(h: fcQPlainTextEdit_cursorRect(self.h, cursor.h))

proc cursorRect*(self: gen_qplaintextedit_types.QPlainTextEdit, ): gen_qrect_types.QRect =
  gen_qrect_types.QRect(h: fcQPlainTextEdit_cursorRect2(self.h))

proc anchorAt*(self: gen_qplaintextedit_types.QPlainTextEdit, pos: gen_qpoint_types.QPoint): string =
  let v_ms = fcQPlainTextEdit_anchorAt(self.h, pos.h)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc overwriteMode*(self: gen_qplaintextedit_types.QPlainTextEdit, ): bool =
  fcQPlainTextEdit_overwriteMode(self.h)

proc setOverwriteMode*(self: gen_qplaintextedit_types.QPlainTextEdit, overwrite: bool): void =
  fcQPlainTextEdit_setOverwriteMode(self.h, overwrite)

proc tabStopDistance*(self: gen_qplaintextedit_types.QPlainTextEdit, ): float64 =
  fcQPlainTextEdit_tabStopDistance(self.h)

proc setTabStopDistance*(self: gen_qplaintextedit_types.QPlainTextEdit, distance: float64): void =
  fcQPlainTextEdit_setTabStopDistance(self.h, distance)

proc cursorWidth*(self: gen_qplaintextedit_types.QPlainTextEdit, ): cint =
  fcQPlainTextEdit_cursorWidth(self.h)

proc setCursorWidth*(self: gen_qplaintextedit_types.QPlainTextEdit, width: cint): void =
  fcQPlainTextEdit_setCursorWidth(self.h, width)

proc setExtraSelections*(self: gen_qplaintextedit_types.QPlainTextEdit, selections: seq[gen_qtextedit_types.QTextEditExtraSelection]): void =
  var selections_CArray = newSeq[pointer](len(selections))
  for i in 0..<len(selections):
    selections_CArray[i] = selections[i].h

  fcQPlainTextEdit_setExtraSelections(self.h, struct_miqt_array(len: csize_t(len(selections)), data: if len(selections) == 0: nil else: addr(selections_CArray[0])))

proc extraSelections*(self: gen_qplaintextedit_types.QPlainTextEdit, ): seq[gen_qtextedit_types.QTextEditExtraSelection] =
  var v_ma = fcQPlainTextEdit_extraSelections(self.h)
  var vx_ret = newSeq[gen_qtextedit_types.QTextEditExtraSelection](int(v_ma.len))
  let v_outCast = cast[ptr UncheckedArray[pointer]](v_ma.data)
  for i in 0 ..< v_ma.len:
    vx_ret[i] = gen_qtextedit_types.QTextEditExtraSelection(h: v_outCast[i])
  vx_ret

proc moveCursor*(self: gen_qplaintextedit_types.QPlainTextEdit, operation: cint): void =
  fcQPlainTextEdit_moveCursor(self.h, cint(operation))

proc canPaste*(self: gen_qplaintextedit_types.QPlainTextEdit, ): bool =
  fcQPlainTextEdit_canPaste(self.h)

proc print*(self: gen_qplaintextedit_types.QPlainTextEdit, printer: gen_qpagedpaintdevice_types.QPagedPaintDevice): void =
  fcQPlainTextEdit_print(self.h, printer.h)

proc blockCount*(self: gen_qplaintextedit_types.QPlainTextEdit, ): cint =
  fcQPlainTextEdit_blockCount(self.h)

proc inputMethodQuery*(self: gen_qplaintextedit_types.QPlainTextEdit, property: cint): gen_qvariant_types.QVariant =
  gen_qvariant_types.QVariant(h: fcQPlainTextEdit_inputMethodQuery(self.h, cint(property)))

proc inputMethodQuery*(self: gen_qplaintextedit_types.QPlainTextEdit, query: cint, argument: gen_qvariant_types.QVariant): gen_qvariant_types.QVariant =
  gen_qvariant_types.QVariant(h: fcQPlainTextEdit_inputMethodQuery2(self.h, cint(query), argument.h))

proc setPlainText*(self: gen_qplaintextedit_types.QPlainTextEdit, text: string): void =
  fcQPlainTextEdit_setPlainText(self.h, struct_miqt_string(data: text, len: csize_t(len(text))))

proc cut*(self: gen_qplaintextedit_types.QPlainTextEdit, ): void =
  fcQPlainTextEdit_cut(self.h)

proc copy*(self: gen_qplaintextedit_types.QPlainTextEdit, ): void =
  fcQPlainTextEdit_copy(self.h)

proc paste*(self: gen_qplaintextedit_types.QPlainTextEdit, ): void =
  fcQPlainTextEdit_paste(self.h)

proc undo*(self: gen_qplaintextedit_types.QPlainTextEdit, ): void =
  fcQPlainTextEdit_undo(self.h)

proc redo*(self: gen_qplaintextedit_types.QPlainTextEdit, ): void =
  fcQPlainTextEdit_redo(self.h)

proc clear*(self: gen_qplaintextedit_types.QPlainTextEdit, ): void =
  fcQPlainTextEdit_clear(self.h)

proc selectAll*(self: gen_qplaintextedit_types.QPlainTextEdit, ): void =
  fcQPlainTextEdit_selectAll(self.h)

proc insertPlainText*(self: gen_qplaintextedit_types.QPlainTextEdit, text: string): void =
  fcQPlainTextEdit_insertPlainText(self.h, struct_miqt_string(data: text, len: csize_t(len(text))))

proc appendPlainText*(self: gen_qplaintextedit_types.QPlainTextEdit, text: string): void =
  fcQPlainTextEdit_appendPlainText(self.h, struct_miqt_string(data: text, len: csize_t(len(text))))

proc appendHtml*(self: gen_qplaintextedit_types.QPlainTextEdit, html: string): void =
  fcQPlainTextEdit_appendHtml(self.h, struct_miqt_string(data: html, len: csize_t(len(html))))

proc centerCursor*(self: gen_qplaintextedit_types.QPlainTextEdit, ): void =
  fcQPlainTextEdit_centerCursor(self.h)

proc zoomIn*(self: gen_qplaintextedit_types.QPlainTextEdit, ): void =
  fcQPlainTextEdit_zoomIn(self.h)

proc zoomOut*(self: gen_qplaintextedit_types.QPlainTextEdit, ): void =
  fcQPlainTextEdit_zoomOut(self.h)

proc textChanged*(self: gen_qplaintextedit_types.QPlainTextEdit, ): void =
  fcQPlainTextEdit_textChanged(self.h)

type QPlainTextEdittextChangedSlot* = proc()
proc miqt_exec_callback_QPlainTextEdit_textChanged(slot: int) {.exportc.} =
  let nimfunc = cast[ptr QPlainTextEdittextChangedSlot](cast[pointer](slot))
  nimfunc[]()

proc ontextChanged*(self: gen_qplaintextedit_types.QPlainTextEdit, slot: QPlainTextEdittextChangedSlot) =
  var tmp = new QPlainTextEdittextChangedSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQPlainTextEdit_connect_textChanged(self.h, cast[int](addr tmp[]))

proc undoAvailable*(self: gen_qplaintextedit_types.QPlainTextEdit, b: bool): void =
  fcQPlainTextEdit_undoAvailable(self.h, b)

type QPlainTextEditundoAvailableSlot* = proc(b: bool)
proc miqt_exec_callback_QPlainTextEdit_undoAvailable(slot: int, b: bool) {.exportc.} =
  let nimfunc = cast[ptr QPlainTextEditundoAvailableSlot](cast[pointer](slot))
  let slotval1 = b

  nimfunc[](slotval1)

proc onundoAvailable*(self: gen_qplaintextedit_types.QPlainTextEdit, slot: QPlainTextEditundoAvailableSlot) =
  var tmp = new QPlainTextEditundoAvailableSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQPlainTextEdit_connect_undoAvailable(self.h, cast[int](addr tmp[]))

proc redoAvailable*(self: gen_qplaintextedit_types.QPlainTextEdit, b: bool): void =
  fcQPlainTextEdit_redoAvailable(self.h, b)

type QPlainTextEditredoAvailableSlot* = proc(b: bool)
proc miqt_exec_callback_QPlainTextEdit_redoAvailable(slot: int, b: bool) {.exportc.} =
  let nimfunc = cast[ptr QPlainTextEditredoAvailableSlot](cast[pointer](slot))
  let slotval1 = b

  nimfunc[](slotval1)

proc onredoAvailable*(self: gen_qplaintextedit_types.QPlainTextEdit, slot: QPlainTextEditredoAvailableSlot) =
  var tmp = new QPlainTextEditredoAvailableSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQPlainTextEdit_connect_redoAvailable(self.h, cast[int](addr tmp[]))

proc copyAvailable*(self: gen_qplaintextedit_types.QPlainTextEdit, b: bool): void =
  fcQPlainTextEdit_copyAvailable(self.h, b)

type QPlainTextEditcopyAvailableSlot* = proc(b: bool)
proc miqt_exec_callback_QPlainTextEdit_copyAvailable(slot: int, b: bool) {.exportc.} =
  let nimfunc = cast[ptr QPlainTextEditcopyAvailableSlot](cast[pointer](slot))
  let slotval1 = b

  nimfunc[](slotval1)

proc oncopyAvailable*(self: gen_qplaintextedit_types.QPlainTextEdit, slot: QPlainTextEditcopyAvailableSlot) =
  var tmp = new QPlainTextEditcopyAvailableSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQPlainTextEdit_connect_copyAvailable(self.h, cast[int](addr tmp[]))

proc selectionChanged*(self: gen_qplaintextedit_types.QPlainTextEdit, ): void =
  fcQPlainTextEdit_selectionChanged(self.h)

type QPlainTextEditselectionChangedSlot* = proc()
proc miqt_exec_callback_QPlainTextEdit_selectionChanged(slot: int) {.exportc.} =
  let nimfunc = cast[ptr QPlainTextEditselectionChangedSlot](cast[pointer](slot))
  nimfunc[]()

proc onselectionChanged*(self: gen_qplaintextedit_types.QPlainTextEdit, slot: QPlainTextEditselectionChangedSlot) =
  var tmp = new QPlainTextEditselectionChangedSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQPlainTextEdit_connect_selectionChanged(self.h, cast[int](addr tmp[]))

proc cursorPositionChanged*(self: gen_qplaintextedit_types.QPlainTextEdit, ): void =
  fcQPlainTextEdit_cursorPositionChanged(self.h)

type QPlainTextEditcursorPositionChangedSlot* = proc()
proc miqt_exec_callback_QPlainTextEdit_cursorPositionChanged(slot: int) {.exportc.} =
  let nimfunc = cast[ptr QPlainTextEditcursorPositionChangedSlot](cast[pointer](slot))
  nimfunc[]()

proc oncursorPositionChanged*(self: gen_qplaintextedit_types.QPlainTextEdit, slot: QPlainTextEditcursorPositionChangedSlot) =
  var tmp = new QPlainTextEditcursorPositionChangedSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQPlainTextEdit_connect_cursorPositionChanged(self.h, cast[int](addr tmp[]))

proc updateRequest*(self: gen_qplaintextedit_types.QPlainTextEdit, rect: gen_qrect_types.QRect, dy: cint): void =
  fcQPlainTextEdit_updateRequest(self.h, rect.h, dy)

type QPlainTextEditupdateRequestSlot* = proc(rect: gen_qrect_types.QRect, dy: cint)
proc miqt_exec_callback_QPlainTextEdit_updateRequest(slot: int, rect: pointer, dy: cint) {.exportc.} =
  let nimfunc = cast[ptr QPlainTextEditupdateRequestSlot](cast[pointer](slot))
  let slotval1 = gen_qrect_types.QRect(h: rect)

  let slotval2 = dy

  nimfunc[](slotval1, slotval2)

proc onupdateRequest*(self: gen_qplaintextedit_types.QPlainTextEdit, slot: QPlainTextEditupdateRequestSlot) =
  var tmp = new QPlainTextEditupdateRequestSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQPlainTextEdit_connect_updateRequest(self.h, cast[int](addr tmp[]))

proc blockCountChanged*(self: gen_qplaintextedit_types.QPlainTextEdit, newBlockCount: cint): void =
  fcQPlainTextEdit_blockCountChanged(self.h, newBlockCount)

type QPlainTextEditblockCountChangedSlot* = proc(newBlockCount: cint)
proc miqt_exec_callback_QPlainTextEdit_blockCountChanged(slot: int, newBlockCount: cint) {.exportc.} =
  let nimfunc = cast[ptr QPlainTextEditblockCountChangedSlot](cast[pointer](slot))
  let slotval1 = newBlockCount

  nimfunc[](slotval1)

proc onblockCountChanged*(self: gen_qplaintextedit_types.QPlainTextEdit, slot: QPlainTextEditblockCountChangedSlot) =
  var tmp = new QPlainTextEditblockCountChangedSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQPlainTextEdit_connect_blockCountChanged(self.h, cast[int](addr tmp[]))

proc modificationChanged*(self: gen_qplaintextedit_types.QPlainTextEdit, param1: bool): void =
  fcQPlainTextEdit_modificationChanged(self.h, param1)

type QPlainTextEditmodificationChangedSlot* = proc(param1: bool)
proc miqt_exec_callback_QPlainTextEdit_modificationChanged(slot: int, param1: bool) {.exportc.} =
  let nimfunc = cast[ptr QPlainTextEditmodificationChangedSlot](cast[pointer](slot))
  let slotval1 = param1

  nimfunc[](slotval1)

proc onmodificationChanged*(self: gen_qplaintextedit_types.QPlainTextEdit, slot: QPlainTextEditmodificationChangedSlot) =
  var tmp = new QPlainTextEditmodificationChangedSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQPlainTextEdit_connect_modificationChanged(self.h, cast[int](addr tmp[]))

proc tr*(_: type gen_qplaintextedit_types.QPlainTextEdit, s: cstring, c: cstring): string =
  let v_ms = fcQPlainTextEdit_tr2(s, c)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc tr*(_: type gen_qplaintextedit_types.QPlainTextEdit, s: cstring, c: cstring, n: cint): string =
  let v_ms = fcQPlainTextEdit_tr3(s, c, n)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc find*(self: gen_qplaintextedit_types.QPlainTextEdit, exp: string, options: cint): bool =
  fcQPlainTextEdit_find2(self.h, struct_miqt_string(data: exp, len: csize_t(len(exp))), cint(options))

proc find*(self: gen_qplaintextedit_types.QPlainTextEdit, exp: gen_qregularexpression_types.QRegularExpression, options: cint): bool =
  fcQPlainTextEdit_find22(self.h, exp.h, cint(options))

proc moveCursor*(self: gen_qplaintextedit_types.QPlainTextEdit, operation: cint, mode: cint): void =
  fcQPlainTextEdit_moveCursor2(self.h, cint(operation), cint(mode))

proc zoomIn*(self: gen_qplaintextedit_types.QPlainTextEdit, range: cint): void =
  fcQPlainTextEdit_zoomIn1(self.h, range)

proc zoomOut*(self: gen_qplaintextedit_types.QPlainTextEdit, range: cint): void =
  fcQPlainTextEdit_zoomOut1(self.h, range)

proc QPlainTextEditmetaObject*(self: gen_qplaintextedit_types.QPlainTextEdit, ): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fQPlainTextEdit_virtualbase_metaObject(self.h))

type QPlainTextEditmetaObjectProc* = proc(): gen_qobjectdefs_types.QMetaObject
proc onmetaObject*(self: gen_qplaintextedit_types.QPlainTextEdit, slot: QPlainTextEditmetaObjectProc) =
  # TODO check subclass
  var tmp = new QPlainTextEditmetaObjectProc
  tmp[] = slot
  GC_ref(tmp)
  fcQPlainTextEdit_override_virtual_metaObject(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QPlainTextEdit_metaObject(self: ptr cQPlainTextEdit, slot: int): pointer {.exportc: "miqt_exec_callback_QPlainTextEdit_metaObject ".} =
  var nimfunc = cast[ptr QPlainTextEditmetaObjectProc](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )

  virtualReturn.h
proc QPlainTextEditmetacast*(self: gen_qplaintextedit_types.QPlainTextEdit, param1: cstring): pointer =
  fQPlainTextEdit_virtualbase_metacast(self.h, param1)

type QPlainTextEditmetacastProc* = proc(param1: cstring): pointer
proc onmetacast*(self: gen_qplaintextedit_types.QPlainTextEdit, slot: QPlainTextEditmetacastProc) =
  # TODO check subclass
  var tmp = new QPlainTextEditmetacastProc
  tmp[] = slot
  GC_ref(tmp)
  fcQPlainTextEdit_override_virtual_metacast(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QPlainTextEdit_metacast(self: ptr cQPlainTextEdit, slot: int, param1: cstring): pointer {.exportc: "miqt_exec_callback_QPlainTextEdit_metacast ".} =
  var nimfunc = cast[ptr QPlainTextEditmetacastProc](cast[pointer](slot))
  let slotval1 = (param1)


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn
proc QPlainTextEditmetacall*(self: gen_qplaintextedit_types.QPlainTextEdit, param1: cint, param2: cint, param3: pointer): cint =
  fQPlainTextEdit_virtualbase_metacall(self.h, cint(param1), param2, param3)

type QPlainTextEditmetacallProc* = proc(param1: cint, param2: cint, param3: pointer): cint
proc onmetacall*(self: gen_qplaintextedit_types.QPlainTextEdit, slot: QPlainTextEditmetacallProc) =
  # TODO check subclass
  var tmp = new QPlainTextEditmetacallProc
  tmp[] = slot
  GC_ref(tmp)
  fcQPlainTextEdit_override_virtual_metacall(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QPlainTextEdit_metacall(self: ptr cQPlainTextEdit, slot: int, param1: cint, param2: cint, param3: pointer): cint {.exportc: "miqt_exec_callback_QPlainTextEdit_metacall ".} =
  var nimfunc = cast[ptr QPlainTextEditmetacallProc](cast[pointer](slot))
  let slotval1 = cint(param1)

  let slotval2 = param2

  let slotval3 = param3


  let virtualReturn = nimfunc[](slotval1, slotval2, slotval3 )

  virtualReturn
proc QPlainTextEditloadResource*(self: gen_qplaintextedit_types.QPlainTextEdit, typeVal: cint, name: gen_qurl_types.QUrl): gen_qvariant_types.QVariant =
  gen_qvariant_types.QVariant(h: fQPlainTextEdit_virtualbase_loadResource(self.h, typeVal, name.h))

type QPlainTextEditloadResourceProc* = proc(typeVal: cint, name: gen_qurl_types.QUrl): gen_qvariant_types.QVariant
proc onloadResource*(self: gen_qplaintextedit_types.QPlainTextEdit, slot: QPlainTextEditloadResourceProc) =
  # TODO check subclass
  var tmp = new QPlainTextEditloadResourceProc
  tmp[] = slot
  GC_ref(tmp)
  fcQPlainTextEdit_override_virtual_loadResource(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QPlainTextEdit_loadResource(self: ptr cQPlainTextEdit, slot: int, typeVal: cint, name: pointer): pointer {.exportc: "miqt_exec_callback_QPlainTextEdit_loadResource ".} =
  var nimfunc = cast[ptr QPlainTextEditloadResourceProc](cast[pointer](slot))
  let slotval1 = typeVal

  let slotval2 = gen_qurl_types.QUrl(h: name)


  let virtualReturn = nimfunc[](slotval1, slotval2 )

  virtualReturn.h
proc QPlainTextEditinputMethodQuery*(self: gen_qplaintextedit_types.QPlainTextEdit, property: cint): gen_qvariant_types.QVariant =
  gen_qvariant_types.QVariant(h: fQPlainTextEdit_virtualbase_inputMethodQuery(self.h, cint(property)))

type QPlainTextEditinputMethodQueryProc* = proc(property: cint): gen_qvariant_types.QVariant
proc oninputMethodQuery*(self: gen_qplaintextedit_types.QPlainTextEdit, slot: QPlainTextEditinputMethodQueryProc) =
  # TODO check subclass
  var tmp = new QPlainTextEditinputMethodQueryProc
  tmp[] = slot
  GC_ref(tmp)
  fcQPlainTextEdit_override_virtual_inputMethodQuery(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QPlainTextEdit_inputMethodQuery(self: ptr cQPlainTextEdit, slot: int, property: cint): pointer {.exportc: "miqt_exec_callback_QPlainTextEdit_inputMethodQuery ".} =
  var nimfunc = cast[ptr QPlainTextEditinputMethodQueryProc](cast[pointer](slot))
  let slotval1 = cint(property)


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn.h
proc QPlainTextEditevent*(self: gen_qplaintextedit_types.QPlainTextEdit, e: gen_qcoreevent_types.QEvent): bool =
  fQPlainTextEdit_virtualbase_event(self.h, e.h)

type QPlainTextEditeventProc* = proc(e: gen_qcoreevent_types.QEvent): bool
proc onevent*(self: gen_qplaintextedit_types.QPlainTextEdit, slot: QPlainTextEditeventProc) =
  # TODO check subclass
  var tmp = new QPlainTextEditeventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQPlainTextEdit_override_virtual_event(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QPlainTextEdit_event(self: ptr cQPlainTextEdit, slot: int, e: pointer): bool {.exportc: "miqt_exec_callback_QPlainTextEdit_event ".} =
  var nimfunc = cast[ptr QPlainTextEditeventProc](cast[pointer](slot))
  let slotval1 = gen_qcoreevent_types.QEvent(h: e)


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn
proc QPlainTextEdittimerEvent*(self: gen_qplaintextedit_types.QPlainTextEdit, e: gen_qcoreevent_types.QTimerEvent): void =
  fQPlainTextEdit_virtualbase_timerEvent(self.h, e.h)

type QPlainTextEdittimerEventProc* = proc(e: gen_qcoreevent_types.QTimerEvent): void
proc ontimerEvent*(self: gen_qplaintextedit_types.QPlainTextEdit, slot: QPlainTextEdittimerEventProc) =
  # TODO check subclass
  var tmp = new QPlainTextEdittimerEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQPlainTextEdit_override_virtual_timerEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QPlainTextEdit_timerEvent(self: ptr cQPlainTextEdit, slot: int, e: pointer): void {.exportc: "miqt_exec_callback_QPlainTextEdit_timerEvent ".} =
  var nimfunc = cast[ptr QPlainTextEdittimerEventProc](cast[pointer](slot))
  let slotval1 = gen_qcoreevent_types.QTimerEvent(h: e)


  nimfunc[](slotval1)
proc QPlainTextEditkeyPressEvent*(self: gen_qplaintextedit_types.QPlainTextEdit, e: gen_qevent_types.QKeyEvent): void =
  fQPlainTextEdit_virtualbase_keyPressEvent(self.h, e.h)

type QPlainTextEditkeyPressEventProc* = proc(e: gen_qevent_types.QKeyEvent): void
proc onkeyPressEvent*(self: gen_qplaintextedit_types.QPlainTextEdit, slot: QPlainTextEditkeyPressEventProc) =
  # TODO check subclass
  var tmp = new QPlainTextEditkeyPressEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQPlainTextEdit_override_virtual_keyPressEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QPlainTextEdit_keyPressEvent(self: ptr cQPlainTextEdit, slot: int, e: pointer): void {.exportc: "miqt_exec_callback_QPlainTextEdit_keyPressEvent ".} =
  var nimfunc = cast[ptr QPlainTextEditkeyPressEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QKeyEvent(h: e)


  nimfunc[](slotval1)
proc QPlainTextEditkeyReleaseEvent*(self: gen_qplaintextedit_types.QPlainTextEdit, e: gen_qevent_types.QKeyEvent): void =
  fQPlainTextEdit_virtualbase_keyReleaseEvent(self.h, e.h)

type QPlainTextEditkeyReleaseEventProc* = proc(e: gen_qevent_types.QKeyEvent): void
proc onkeyReleaseEvent*(self: gen_qplaintextedit_types.QPlainTextEdit, slot: QPlainTextEditkeyReleaseEventProc) =
  # TODO check subclass
  var tmp = new QPlainTextEditkeyReleaseEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQPlainTextEdit_override_virtual_keyReleaseEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QPlainTextEdit_keyReleaseEvent(self: ptr cQPlainTextEdit, slot: int, e: pointer): void {.exportc: "miqt_exec_callback_QPlainTextEdit_keyReleaseEvent ".} =
  var nimfunc = cast[ptr QPlainTextEditkeyReleaseEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QKeyEvent(h: e)


  nimfunc[](slotval1)
proc QPlainTextEditresizeEvent*(self: gen_qplaintextedit_types.QPlainTextEdit, e: gen_qevent_types.QResizeEvent): void =
  fQPlainTextEdit_virtualbase_resizeEvent(self.h, e.h)

type QPlainTextEditresizeEventProc* = proc(e: gen_qevent_types.QResizeEvent): void
proc onresizeEvent*(self: gen_qplaintextedit_types.QPlainTextEdit, slot: QPlainTextEditresizeEventProc) =
  # TODO check subclass
  var tmp = new QPlainTextEditresizeEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQPlainTextEdit_override_virtual_resizeEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QPlainTextEdit_resizeEvent(self: ptr cQPlainTextEdit, slot: int, e: pointer): void {.exportc: "miqt_exec_callback_QPlainTextEdit_resizeEvent ".} =
  var nimfunc = cast[ptr QPlainTextEditresizeEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QResizeEvent(h: e)


  nimfunc[](slotval1)
proc QPlainTextEditpaintEvent*(self: gen_qplaintextedit_types.QPlainTextEdit, e: gen_qevent_types.QPaintEvent): void =
  fQPlainTextEdit_virtualbase_paintEvent(self.h, e.h)

type QPlainTextEditpaintEventProc* = proc(e: gen_qevent_types.QPaintEvent): void
proc onpaintEvent*(self: gen_qplaintextedit_types.QPlainTextEdit, slot: QPlainTextEditpaintEventProc) =
  # TODO check subclass
  var tmp = new QPlainTextEditpaintEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQPlainTextEdit_override_virtual_paintEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QPlainTextEdit_paintEvent(self: ptr cQPlainTextEdit, slot: int, e: pointer): void {.exportc: "miqt_exec_callback_QPlainTextEdit_paintEvent ".} =
  var nimfunc = cast[ptr QPlainTextEditpaintEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QPaintEvent(h: e)


  nimfunc[](slotval1)
proc QPlainTextEditmousePressEvent*(self: gen_qplaintextedit_types.QPlainTextEdit, e: gen_qevent_types.QMouseEvent): void =
  fQPlainTextEdit_virtualbase_mousePressEvent(self.h, e.h)

type QPlainTextEditmousePressEventProc* = proc(e: gen_qevent_types.QMouseEvent): void
proc onmousePressEvent*(self: gen_qplaintextedit_types.QPlainTextEdit, slot: QPlainTextEditmousePressEventProc) =
  # TODO check subclass
  var tmp = new QPlainTextEditmousePressEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQPlainTextEdit_override_virtual_mousePressEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QPlainTextEdit_mousePressEvent(self: ptr cQPlainTextEdit, slot: int, e: pointer): void {.exportc: "miqt_exec_callback_QPlainTextEdit_mousePressEvent ".} =
  var nimfunc = cast[ptr QPlainTextEditmousePressEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QMouseEvent(h: e)


  nimfunc[](slotval1)
proc QPlainTextEditmouseMoveEvent*(self: gen_qplaintextedit_types.QPlainTextEdit, e: gen_qevent_types.QMouseEvent): void =
  fQPlainTextEdit_virtualbase_mouseMoveEvent(self.h, e.h)

type QPlainTextEditmouseMoveEventProc* = proc(e: gen_qevent_types.QMouseEvent): void
proc onmouseMoveEvent*(self: gen_qplaintextedit_types.QPlainTextEdit, slot: QPlainTextEditmouseMoveEventProc) =
  # TODO check subclass
  var tmp = new QPlainTextEditmouseMoveEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQPlainTextEdit_override_virtual_mouseMoveEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QPlainTextEdit_mouseMoveEvent(self: ptr cQPlainTextEdit, slot: int, e: pointer): void {.exportc: "miqt_exec_callback_QPlainTextEdit_mouseMoveEvent ".} =
  var nimfunc = cast[ptr QPlainTextEditmouseMoveEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QMouseEvent(h: e)


  nimfunc[](slotval1)
proc QPlainTextEditmouseReleaseEvent*(self: gen_qplaintextedit_types.QPlainTextEdit, e: gen_qevent_types.QMouseEvent): void =
  fQPlainTextEdit_virtualbase_mouseReleaseEvent(self.h, e.h)

type QPlainTextEditmouseReleaseEventProc* = proc(e: gen_qevent_types.QMouseEvent): void
proc onmouseReleaseEvent*(self: gen_qplaintextedit_types.QPlainTextEdit, slot: QPlainTextEditmouseReleaseEventProc) =
  # TODO check subclass
  var tmp = new QPlainTextEditmouseReleaseEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQPlainTextEdit_override_virtual_mouseReleaseEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QPlainTextEdit_mouseReleaseEvent(self: ptr cQPlainTextEdit, slot: int, e: pointer): void {.exportc: "miqt_exec_callback_QPlainTextEdit_mouseReleaseEvent ".} =
  var nimfunc = cast[ptr QPlainTextEditmouseReleaseEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QMouseEvent(h: e)


  nimfunc[](slotval1)
proc QPlainTextEditmouseDoubleClickEvent*(self: gen_qplaintextedit_types.QPlainTextEdit, e: gen_qevent_types.QMouseEvent): void =
  fQPlainTextEdit_virtualbase_mouseDoubleClickEvent(self.h, e.h)

type QPlainTextEditmouseDoubleClickEventProc* = proc(e: gen_qevent_types.QMouseEvent): void
proc onmouseDoubleClickEvent*(self: gen_qplaintextedit_types.QPlainTextEdit, slot: QPlainTextEditmouseDoubleClickEventProc) =
  # TODO check subclass
  var tmp = new QPlainTextEditmouseDoubleClickEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQPlainTextEdit_override_virtual_mouseDoubleClickEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QPlainTextEdit_mouseDoubleClickEvent(self: ptr cQPlainTextEdit, slot: int, e: pointer): void {.exportc: "miqt_exec_callback_QPlainTextEdit_mouseDoubleClickEvent ".} =
  var nimfunc = cast[ptr QPlainTextEditmouseDoubleClickEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QMouseEvent(h: e)


  nimfunc[](slotval1)
proc QPlainTextEditfocusNextPrevChild*(self: gen_qplaintextedit_types.QPlainTextEdit, next: bool): bool =
  fQPlainTextEdit_virtualbase_focusNextPrevChild(self.h, next)

type QPlainTextEditfocusNextPrevChildProc* = proc(next: bool): bool
proc onfocusNextPrevChild*(self: gen_qplaintextedit_types.QPlainTextEdit, slot: QPlainTextEditfocusNextPrevChildProc) =
  # TODO check subclass
  var tmp = new QPlainTextEditfocusNextPrevChildProc
  tmp[] = slot
  GC_ref(tmp)
  fcQPlainTextEdit_override_virtual_focusNextPrevChild(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QPlainTextEdit_focusNextPrevChild(self: ptr cQPlainTextEdit, slot: int, next: bool): bool {.exportc: "miqt_exec_callback_QPlainTextEdit_focusNextPrevChild ".} =
  var nimfunc = cast[ptr QPlainTextEditfocusNextPrevChildProc](cast[pointer](slot))
  let slotval1 = next


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn
proc QPlainTextEditcontextMenuEvent*(self: gen_qplaintextedit_types.QPlainTextEdit, e: gen_qevent_types.QContextMenuEvent): void =
  fQPlainTextEdit_virtualbase_contextMenuEvent(self.h, e.h)

type QPlainTextEditcontextMenuEventProc* = proc(e: gen_qevent_types.QContextMenuEvent): void
proc oncontextMenuEvent*(self: gen_qplaintextedit_types.QPlainTextEdit, slot: QPlainTextEditcontextMenuEventProc) =
  # TODO check subclass
  var tmp = new QPlainTextEditcontextMenuEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQPlainTextEdit_override_virtual_contextMenuEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QPlainTextEdit_contextMenuEvent(self: ptr cQPlainTextEdit, slot: int, e: pointer): void {.exportc: "miqt_exec_callback_QPlainTextEdit_contextMenuEvent ".} =
  var nimfunc = cast[ptr QPlainTextEditcontextMenuEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QContextMenuEvent(h: e)


  nimfunc[](slotval1)
proc QPlainTextEditdragEnterEvent*(self: gen_qplaintextedit_types.QPlainTextEdit, e: gen_qevent_types.QDragEnterEvent): void =
  fQPlainTextEdit_virtualbase_dragEnterEvent(self.h, e.h)

type QPlainTextEditdragEnterEventProc* = proc(e: gen_qevent_types.QDragEnterEvent): void
proc ondragEnterEvent*(self: gen_qplaintextedit_types.QPlainTextEdit, slot: QPlainTextEditdragEnterEventProc) =
  # TODO check subclass
  var tmp = new QPlainTextEditdragEnterEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQPlainTextEdit_override_virtual_dragEnterEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QPlainTextEdit_dragEnterEvent(self: ptr cQPlainTextEdit, slot: int, e: pointer): void {.exportc: "miqt_exec_callback_QPlainTextEdit_dragEnterEvent ".} =
  var nimfunc = cast[ptr QPlainTextEditdragEnterEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QDragEnterEvent(h: e)


  nimfunc[](slotval1)
proc QPlainTextEditdragLeaveEvent*(self: gen_qplaintextedit_types.QPlainTextEdit, e: gen_qevent_types.QDragLeaveEvent): void =
  fQPlainTextEdit_virtualbase_dragLeaveEvent(self.h, e.h)

type QPlainTextEditdragLeaveEventProc* = proc(e: gen_qevent_types.QDragLeaveEvent): void
proc ondragLeaveEvent*(self: gen_qplaintextedit_types.QPlainTextEdit, slot: QPlainTextEditdragLeaveEventProc) =
  # TODO check subclass
  var tmp = new QPlainTextEditdragLeaveEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQPlainTextEdit_override_virtual_dragLeaveEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QPlainTextEdit_dragLeaveEvent(self: ptr cQPlainTextEdit, slot: int, e: pointer): void {.exportc: "miqt_exec_callback_QPlainTextEdit_dragLeaveEvent ".} =
  var nimfunc = cast[ptr QPlainTextEditdragLeaveEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QDragLeaveEvent(h: e)


  nimfunc[](slotval1)
proc QPlainTextEditdragMoveEvent*(self: gen_qplaintextedit_types.QPlainTextEdit, e: gen_qevent_types.QDragMoveEvent): void =
  fQPlainTextEdit_virtualbase_dragMoveEvent(self.h, e.h)

type QPlainTextEditdragMoveEventProc* = proc(e: gen_qevent_types.QDragMoveEvent): void
proc ondragMoveEvent*(self: gen_qplaintextedit_types.QPlainTextEdit, slot: QPlainTextEditdragMoveEventProc) =
  # TODO check subclass
  var tmp = new QPlainTextEditdragMoveEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQPlainTextEdit_override_virtual_dragMoveEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QPlainTextEdit_dragMoveEvent(self: ptr cQPlainTextEdit, slot: int, e: pointer): void {.exportc: "miqt_exec_callback_QPlainTextEdit_dragMoveEvent ".} =
  var nimfunc = cast[ptr QPlainTextEditdragMoveEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QDragMoveEvent(h: e)


  nimfunc[](slotval1)
proc QPlainTextEditdropEvent*(self: gen_qplaintextedit_types.QPlainTextEdit, e: gen_qevent_types.QDropEvent): void =
  fQPlainTextEdit_virtualbase_dropEvent(self.h, e.h)

type QPlainTextEditdropEventProc* = proc(e: gen_qevent_types.QDropEvent): void
proc ondropEvent*(self: gen_qplaintextedit_types.QPlainTextEdit, slot: QPlainTextEditdropEventProc) =
  # TODO check subclass
  var tmp = new QPlainTextEditdropEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQPlainTextEdit_override_virtual_dropEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QPlainTextEdit_dropEvent(self: ptr cQPlainTextEdit, slot: int, e: pointer): void {.exportc: "miqt_exec_callback_QPlainTextEdit_dropEvent ".} =
  var nimfunc = cast[ptr QPlainTextEditdropEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QDropEvent(h: e)


  nimfunc[](slotval1)
proc QPlainTextEditfocusInEvent*(self: gen_qplaintextedit_types.QPlainTextEdit, e: gen_qevent_types.QFocusEvent): void =
  fQPlainTextEdit_virtualbase_focusInEvent(self.h, e.h)

type QPlainTextEditfocusInEventProc* = proc(e: gen_qevent_types.QFocusEvent): void
proc onfocusInEvent*(self: gen_qplaintextedit_types.QPlainTextEdit, slot: QPlainTextEditfocusInEventProc) =
  # TODO check subclass
  var tmp = new QPlainTextEditfocusInEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQPlainTextEdit_override_virtual_focusInEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QPlainTextEdit_focusInEvent(self: ptr cQPlainTextEdit, slot: int, e: pointer): void {.exportc: "miqt_exec_callback_QPlainTextEdit_focusInEvent ".} =
  var nimfunc = cast[ptr QPlainTextEditfocusInEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QFocusEvent(h: e)


  nimfunc[](slotval1)
proc QPlainTextEditfocusOutEvent*(self: gen_qplaintextedit_types.QPlainTextEdit, e: gen_qevent_types.QFocusEvent): void =
  fQPlainTextEdit_virtualbase_focusOutEvent(self.h, e.h)

type QPlainTextEditfocusOutEventProc* = proc(e: gen_qevent_types.QFocusEvent): void
proc onfocusOutEvent*(self: gen_qplaintextedit_types.QPlainTextEdit, slot: QPlainTextEditfocusOutEventProc) =
  # TODO check subclass
  var tmp = new QPlainTextEditfocusOutEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQPlainTextEdit_override_virtual_focusOutEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QPlainTextEdit_focusOutEvent(self: ptr cQPlainTextEdit, slot: int, e: pointer): void {.exportc: "miqt_exec_callback_QPlainTextEdit_focusOutEvent ".} =
  var nimfunc = cast[ptr QPlainTextEditfocusOutEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QFocusEvent(h: e)


  nimfunc[](slotval1)
proc QPlainTextEditshowEvent*(self: gen_qplaintextedit_types.QPlainTextEdit, param1: gen_qevent_types.QShowEvent): void =
  fQPlainTextEdit_virtualbase_showEvent(self.h, param1.h)

type QPlainTextEditshowEventProc* = proc(param1: gen_qevent_types.QShowEvent): void
proc onshowEvent*(self: gen_qplaintextedit_types.QPlainTextEdit, slot: QPlainTextEditshowEventProc) =
  # TODO check subclass
  var tmp = new QPlainTextEditshowEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQPlainTextEdit_override_virtual_showEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QPlainTextEdit_showEvent(self: ptr cQPlainTextEdit, slot: int, param1: pointer): void {.exportc: "miqt_exec_callback_QPlainTextEdit_showEvent ".} =
  var nimfunc = cast[ptr QPlainTextEditshowEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QShowEvent(h: param1)


  nimfunc[](slotval1)
proc QPlainTextEditchangeEvent*(self: gen_qplaintextedit_types.QPlainTextEdit, e: gen_qcoreevent_types.QEvent): void =
  fQPlainTextEdit_virtualbase_changeEvent(self.h, e.h)

type QPlainTextEditchangeEventProc* = proc(e: gen_qcoreevent_types.QEvent): void
proc onchangeEvent*(self: gen_qplaintextedit_types.QPlainTextEdit, slot: QPlainTextEditchangeEventProc) =
  # TODO check subclass
  var tmp = new QPlainTextEditchangeEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQPlainTextEdit_override_virtual_changeEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QPlainTextEdit_changeEvent(self: ptr cQPlainTextEdit, slot: int, e: pointer): void {.exportc: "miqt_exec_callback_QPlainTextEdit_changeEvent ".} =
  var nimfunc = cast[ptr QPlainTextEditchangeEventProc](cast[pointer](slot))
  let slotval1 = gen_qcoreevent_types.QEvent(h: e)


  nimfunc[](slotval1)
proc QPlainTextEditwheelEvent*(self: gen_qplaintextedit_types.QPlainTextEdit, e: gen_qevent_types.QWheelEvent): void =
  fQPlainTextEdit_virtualbase_wheelEvent(self.h, e.h)

type QPlainTextEditwheelEventProc* = proc(e: gen_qevent_types.QWheelEvent): void
proc onwheelEvent*(self: gen_qplaintextedit_types.QPlainTextEdit, slot: QPlainTextEditwheelEventProc) =
  # TODO check subclass
  var tmp = new QPlainTextEditwheelEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQPlainTextEdit_override_virtual_wheelEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QPlainTextEdit_wheelEvent(self: ptr cQPlainTextEdit, slot: int, e: pointer): void {.exportc: "miqt_exec_callback_QPlainTextEdit_wheelEvent ".} =
  var nimfunc = cast[ptr QPlainTextEditwheelEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QWheelEvent(h: e)


  nimfunc[](slotval1)
proc QPlainTextEditcreateMimeDataFromSelection*(self: gen_qplaintextedit_types.QPlainTextEdit, ): gen_qmimedata_types.QMimeData =
  gen_qmimedata_types.QMimeData(h: fQPlainTextEdit_virtualbase_createMimeDataFromSelection(self.h))

type QPlainTextEditcreateMimeDataFromSelectionProc* = proc(): gen_qmimedata_types.QMimeData
proc oncreateMimeDataFromSelection*(self: gen_qplaintextedit_types.QPlainTextEdit, slot: QPlainTextEditcreateMimeDataFromSelectionProc) =
  # TODO check subclass
  var tmp = new QPlainTextEditcreateMimeDataFromSelectionProc
  tmp[] = slot
  GC_ref(tmp)
  fcQPlainTextEdit_override_virtual_createMimeDataFromSelection(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QPlainTextEdit_createMimeDataFromSelection(self: ptr cQPlainTextEdit, slot: int): pointer {.exportc: "miqt_exec_callback_QPlainTextEdit_createMimeDataFromSelection ".} =
  var nimfunc = cast[ptr QPlainTextEditcreateMimeDataFromSelectionProc](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )

  virtualReturn.h
proc QPlainTextEditcanInsertFromMimeData*(self: gen_qplaintextedit_types.QPlainTextEdit, source: gen_qmimedata_types.QMimeData): bool =
  fQPlainTextEdit_virtualbase_canInsertFromMimeData(self.h, source.h)

type QPlainTextEditcanInsertFromMimeDataProc* = proc(source: gen_qmimedata_types.QMimeData): bool
proc oncanInsertFromMimeData*(self: gen_qplaintextedit_types.QPlainTextEdit, slot: QPlainTextEditcanInsertFromMimeDataProc) =
  # TODO check subclass
  var tmp = new QPlainTextEditcanInsertFromMimeDataProc
  tmp[] = slot
  GC_ref(tmp)
  fcQPlainTextEdit_override_virtual_canInsertFromMimeData(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QPlainTextEdit_canInsertFromMimeData(self: ptr cQPlainTextEdit, slot: int, source: pointer): bool {.exportc: "miqt_exec_callback_QPlainTextEdit_canInsertFromMimeData ".} =
  var nimfunc = cast[ptr QPlainTextEditcanInsertFromMimeDataProc](cast[pointer](slot))
  let slotval1 = gen_qmimedata_types.QMimeData(h: source)


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn
proc QPlainTextEditinsertFromMimeData*(self: gen_qplaintextedit_types.QPlainTextEdit, source: gen_qmimedata_types.QMimeData): void =
  fQPlainTextEdit_virtualbase_insertFromMimeData(self.h, source.h)

type QPlainTextEditinsertFromMimeDataProc* = proc(source: gen_qmimedata_types.QMimeData): void
proc oninsertFromMimeData*(self: gen_qplaintextedit_types.QPlainTextEdit, slot: QPlainTextEditinsertFromMimeDataProc) =
  # TODO check subclass
  var tmp = new QPlainTextEditinsertFromMimeDataProc
  tmp[] = slot
  GC_ref(tmp)
  fcQPlainTextEdit_override_virtual_insertFromMimeData(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QPlainTextEdit_insertFromMimeData(self: ptr cQPlainTextEdit, slot: int, source: pointer): void {.exportc: "miqt_exec_callback_QPlainTextEdit_insertFromMimeData ".} =
  var nimfunc = cast[ptr QPlainTextEditinsertFromMimeDataProc](cast[pointer](slot))
  let slotval1 = gen_qmimedata_types.QMimeData(h: source)


  nimfunc[](slotval1)
proc QPlainTextEditinputMethodEvent*(self: gen_qplaintextedit_types.QPlainTextEdit, param1: gen_qevent_types.QInputMethodEvent): void =
  fQPlainTextEdit_virtualbase_inputMethodEvent(self.h, param1.h)

type QPlainTextEditinputMethodEventProc* = proc(param1: gen_qevent_types.QInputMethodEvent): void
proc oninputMethodEvent*(self: gen_qplaintextedit_types.QPlainTextEdit, slot: QPlainTextEditinputMethodEventProc) =
  # TODO check subclass
  var tmp = new QPlainTextEditinputMethodEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQPlainTextEdit_override_virtual_inputMethodEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QPlainTextEdit_inputMethodEvent(self: ptr cQPlainTextEdit, slot: int, param1: pointer): void {.exportc: "miqt_exec_callback_QPlainTextEdit_inputMethodEvent ".} =
  var nimfunc = cast[ptr QPlainTextEditinputMethodEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QInputMethodEvent(h: param1)


  nimfunc[](slotval1)
proc QPlainTextEditscrollContentsBy*(self: gen_qplaintextedit_types.QPlainTextEdit, dx: cint, dy: cint): void =
  fQPlainTextEdit_virtualbase_scrollContentsBy(self.h, dx, dy)

type QPlainTextEditscrollContentsByProc* = proc(dx: cint, dy: cint): void
proc onscrollContentsBy*(self: gen_qplaintextedit_types.QPlainTextEdit, slot: QPlainTextEditscrollContentsByProc) =
  # TODO check subclass
  var tmp = new QPlainTextEditscrollContentsByProc
  tmp[] = slot
  GC_ref(tmp)
  fcQPlainTextEdit_override_virtual_scrollContentsBy(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QPlainTextEdit_scrollContentsBy(self: ptr cQPlainTextEdit, slot: int, dx: cint, dy: cint): void {.exportc: "miqt_exec_callback_QPlainTextEdit_scrollContentsBy ".} =
  var nimfunc = cast[ptr QPlainTextEditscrollContentsByProc](cast[pointer](slot))
  let slotval1 = dx

  let slotval2 = dy


  nimfunc[](slotval1, slotval2)
proc QPlainTextEditdoSetTextCursor*(self: gen_qplaintextedit_types.QPlainTextEdit, cursor: gen_qtextcursor_types.QTextCursor): void =
  fQPlainTextEdit_virtualbase_doSetTextCursor(self.h, cursor.h)

type QPlainTextEditdoSetTextCursorProc* = proc(cursor: gen_qtextcursor_types.QTextCursor): void
proc ondoSetTextCursor*(self: gen_qplaintextedit_types.QPlainTextEdit, slot: QPlainTextEditdoSetTextCursorProc) =
  # TODO check subclass
  var tmp = new QPlainTextEditdoSetTextCursorProc
  tmp[] = slot
  GC_ref(tmp)
  fcQPlainTextEdit_override_virtual_doSetTextCursor(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QPlainTextEdit_doSetTextCursor(self: ptr cQPlainTextEdit, slot: int, cursor: pointer): void {.exportc: "miqt_exec_callback_QPlainTextEdit_doSetTextCursor ".} =
  var nimfunc = cast[ptr QPlainTextEditdoSetTextCursorProc](cast[pointer](slot))
  let slotval1 = gen_qtextcursor_types.QTextCursor(h: cursor)


  nimfunc[](slotval1)
proc QPlainTextEditminimumSizeHint*(self: gen_qplaintextedit_types.QPlainTextEdit, ): gen_qsize_types.QSize =
  gen_qsize_types.QSize(h: fQPlainTextEdit_virtualbase_minimumSizeHint(self.h))

type QPlainTextEditminimumSizeHintProc* = proc(): gen_qsize_types.QSize
proc onminimumSizeHint*(self: gen_qplaintextedit_types.QPlainTextEdit, slot: QPlainTextEditminimumSizeHintProc) =
  # TODO check subclass
  var tmp = new QPlainTextEditminimumSizeHintProc
  tmp[] = slot
  GC_ref(tmp)
  fcQPlainTextEdit_override_virtual_minimumSizeHint(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QPlainTextEdit_minimumSizeHint(self: ptr cQPlainTextEdit, slot: int): pointer {.exportc: "miqt_exec_callback_QPlainTextEdit_minimumSizeHint ".} =
  var nimfunc = cast[ptr QPlainTextEditminimumSizeHintProc](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )

  virtualReturn.h
proc QPlainTextEditsizeHint*(self: gen_qplaintextedit_types.QPlainTextEdit, ): gen_qsize_types.QSize =
  gen_qsize_types.QSize(h: fQPlainTextEdit_virtualbase_sizeHint(self.h))

type QPlainTextEditsizeHintProc* = proc(): gen_qsize_types.QSize
proc onsizeHint*(self: gen_qplaintextedit_types.QPlainTextEdit, slot: QPlainTextEditsizeHintProc) =
  # TODO check subclass
  var tmp = new QPlainTextEditsizeHintProc
  tmp[] = slot
  GC_ref(tmp)
  fcQPlainTextEdit_override_virtual_sizeHint(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QPlainTextEdit_sizeHint(self: ptr cQPlainTextEdit, slot: int): pointer {.exportc: "miqt_exec_callback_QPlainTextEdit_sizeHint ".} =
  var nimfunc = cast[ptr QPlainTextEditsizeHintProc](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )

  virtualReturn.h
proc QPlainTextEditsetupViewport*(self: gen_qplaintextedit_types.QPlainTextEdit, viewport: gen_qwidget_types.QWidget): void =
  fQPlainTextEdit_virtualbase_setupViewport(self.h, viewport.h)

type QPlainTextEditsetupViewportProc* = proc(viewport: gen_qwidget_types.QWidget): void
proc onsetupViewport*(self: gen_qplaintextedit_types.QPlainTextEdit, slot: QPlainTextEditsetupViewportProc) =
  # TODO check subclass
  var tmp = new QPlainTextEditsetupViewportProc
  tmp[] = slot
  GC_ref(tmp)
  fcQPlainTextEdit_override_virtual_setupViewport(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QPlainTextEdit_setupViewport(self: ptr cQPlainTextEdit, slot: int, viewport: pointer): void {.exportc: "miqt_exec_callback_QPlainTextEdit_setupViewport ".} =
  var nimfunc = cast[ptr QPlainTextEditsetupViewportProc](cast[pointer](slot))
  let slotval1 = gen_qwidget_types.QWidget(h: viewport)


  nimfunc[](slotval1)
proc QPlainTextEditeventFilter*(self: gen_qplaintextedit_types.QPlainTextEdit, param1: gen_qobject_types.QObject, param2: gen_qcoreevent_types.QEvent): bool =
  fQPlainTextEdit_virtualbase_eventFilter(self.h, param1.h, param2.h)

type QPlainTextEditeventFilterProc* = proc(param1: gen_qobject_types.QObject, param2: gen_qcoreevent_types.QEvent): bool
proc oneventFilter*(self: gen_qplaintextedit_types.QPlainTextEdit, slot: QPlainTextEditeventFilterProc) =
  # TODO check subclass
  var tmp = new QPlainTextEditeventFilterProc
  tmp[] = slot
  GC_ref(tmp)
  fcQPlainTextEdit_override_virtual_eventFilter(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QPlainTextEdit_eventFilter(self: ptr cQPlainTextEdit, slot: int, param1: pointer, param2: pointer): bool {.exportc: "miqt_exec_callback_QPlainTextEdit_eventFilter ".} =
  var nimfunc = cast[ptr QPlainTextEditeventFilterProc](cast[pointer](slot))
  let slotval1 = gen_qobject_types.QObject(h: param1)

  let slotval2 = gen_qcoreevent_types.QEvent(h: param2)


  let virtualReturn = nimfunc[](slotval1, slotval2 )

  virtualReturn
proc QPlainTextEditviewportEvent*(self: gen_qplaintextedit_types.QPlainTextEdit, param1: gen_qcoreevent_types.QEvent): bool =
  fQPlainTextEdit_virtualbase_viewportEvent(self.h, param1.h)

type QPlainTextEditviewportEventProc* = proc(param1: gen_qcoreevent_types.QEvent): bool
proc onviewportEvent*(self: gen_qplaintextedit_types.QPlainTextEdit, slot: QPlainTextEditviewportEventProc) =
  # TODO check subclass
  var tmp = new QPlainTextEditviewportEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQPlainTextEdit_override_virtual_viewportEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QPlainTextEdit_viewportEvent(self: ptr cQPlainTextEdit, slot: int, param1: pointer): bool {.exportc: "miqt_exec_callback_QPlainTextEdit_viewportEvent ".} =
  var nimfunc = cast[ptr QPlainTextEditviewportEventProc](cast[pointer](slot))
  let slotval1 = gen_qcoreevent_types.QEvent(h: param1)


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn
proc QPlainTextEditviewportSizeHint*(self: gen_qplaintextedit_types.QPlainTextEdit, ): gen_qsize_types.QSize =
  gen_qsize_types.QSize(h: fQPlainTextEdit_virtualbase_viewportSizeHint(self.h))

type QPlainTextEditviewportSizeHintProc* = proc(): gen_qsize_types.QSize
proc onviewportSizeHint*(self: gen_qplaintextedit_types.QPlainTextEdit, slot: QPlainTextEditviewportSizeHintProc) =
  # TODO check subclass
  var tmp = new QPlainTextEditviewportSizeHintProc
  tmp[] = slot
  GC_ref(tmp)
  fcQPlainTextEdit_override_virtual_viewportSizeHint(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QPlainTextEdit_viewportSizeHint(self: ptr cQPlainTextEdit, slot: int): pointer {.exportc: "miqt_exec_callback_QPlainTextEdit_viewportSizeHint ".} =
  var nimfunc = cast[ptr QPlainTextEditviewportSizeHintProc](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )

  virtualReturn.h
proc QPlainTextEditinitStyleOption*(self: gen_qplaintextedit_types.QPlainTextEdit, option: gen_qstyleoption_types.QStyleOptionFrame): void =
  fQPlainTextEdit_virtualbase_initStyleOption(self.h, option.h)

type QPlainTextEditinitStyleOptionProc* = proc(option: gen_qstyleoption_types.QStyleOptionFrame): void
proc oninitStyleOption*(self: gen_qplaintextedit_types.QPlainTextEdit, slot: QPlainTextEditinitStyleOptionProc) =
  # TODO check subclass
  var tmp = new QPlainTextEditinitStyleOptionProc
  tmp[] = slot
  GC_ref(tmp)
  fcQPlainTextEdit_override_virtual_initStyleOption(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QPlainTextEdit_initStyleOption(self: ptr cQPlainTextEdit, slot: int, option: pointer): void {.exportc: "miqt_exec_callback_QPlainTextEdit_initStyleOption ".} =
  var nimfunc = cast[ptr QPlainTextEditinitStyleOptionProc](cast[pointer](slot))
  let slotval1 = gen_qstyleoption_types.QStyleOptionFrame(h: option)


  nimfunc[](slotval1)
proc QPlainTextEditdevType*(self: gen_qplaintextedit_types.QPlainTextEdit, ): cint =
  fQPlainTextEdit_virtualbase_devType(self.h)

type QPlainTextEditdevTypeProc* = proc(): cint
proc ondevType*(self: gen_qplaintextedit_types.QPlainTextEdit, slot: QPlainTextEditdevTypeProc) =
  # TODO check subclass
  var tmp = new QPlainTextEditdevTypeProc
  tmp[] = slot
  GC_ref(tmp)
  fcQPlainTextEdit_override_virtual_devType(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QPlainTextEdit_devType(self: ptr cQPlainTextEdit, slot: int): cint {.exportc: "miqt_exec_callback_QPlainTextEdit_devType ".} =
  var nimfunc = cast[ptr QPlainTextEditdevTypeProc](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )

  virtualReturn
proc QPlainTextEditsetVisible*(self: gen_qplaintextedit_types.QPlainTextEdit, visible: bool): void =
  fQPlainTextEdit_virtualbase_setVisible(self.h, visible)

type QPlainTextEditsetVisibleProc* = proc(visible: bool): void
proc onsetVisible*(self: gen_qplaintextedit_types.QPlainTextEdit, slot: QPlainTextEditsetVisibleProc) =
  # TODO check subclass
  var tmp = new QPlainTextEditsetVisibleProc
  tmp[] = slot
  GC_ref(tmp)
  fcQPlainTextEdit_override_virtual_setVisible(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QPlainTextEdit_setVisible(self: ptr cQPlainTextEdit, slot: int, visible: bool): void {.exportc: "miqt_exec_callback_QPlainTextEdit_setVisible ".} =
  var nimfunc = cast[ptr QPlainTextEditsetVisibleProc](cast[pointer](slot))
  let slotval1 = visible


  nimfunc[](slotval1)
proc QPlainTextEditheightForWidth*(self: gen_qplaintextedit_types.QPlainTextEdit, param1: cint): cint =
  fQPlainTextEdit_virtualbase_heightForWidth(self.h, param1)

type QPlainTextEditheightForWidthProc* = proc(param1: cint): cint
proc onheightForWidth*(self: gen_qplaintextedit_types.QPlainTextEdit, slot: QPlainTextEditheightForWidthProc) =
  # TODO check subclass
  var tmp = new QPlainTextEditheightForWidthProc
  tmp[] = slot
  GC_ref(tmp)
  fcQPlainTextEdit_override_virtual_heightForWidth(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QPlainTextEdit_heightForWidth(self: ptr cQPlainTextEdit, slot: int, param1: cint): cint {.exportc: "miqt_exec_callback_QPlainTextEdit_heightForWidth ".} =
  var nimfunc = cast[ptr QPlainTextEditheightForWidthProc](cast[pointer](slot))
  let slotval1 = param1


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn
proc QPlainTextEdithasHeightForWidth*(self: gen_qplaintextedit_types.QPlainTextEdit, ): bool =
  fQPlainTextEdit_virtualbase_hasHeightForWidth(self.h)

type QPlainTextEdithasHeightForWidthProc* = proc(): bool
proc onhasHeightForWidth*(self: gen_qplaintextedit_types.QPlainTextEdit, slot: QPlainTextEdithasHeightForWidthProc) =
  # TODO check subclass
  var tmp = new QPlainTextEdithasHeightForWidthProc
  tmp[] = slot
  GC_ref(tmp)
  fcQPlainTextEdit_override_virtual_hasHeightForWidth(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QPlainTextEdit_hasHeightForWidth(self: ptr cQPlainTextEdit, slot: int): bool {.exportc: "miqt_exec_callback_QPlainTextEdit_hasHeightForWidth ".} =
  var nimfunc = cast[ptr QPlainTextEdithasHeightForWidthProc](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )

  virtualReturn
proc QPlainTextEditpaintEngine*(self: gen_qplaintextedit_types.QPlainTextEdit, ): gen_qpaintengine_types.QPaintEngine =
  gen_qpaintengine_types.QPaintEngine(h: fQPlainTextEdit_virtualbase_paintEngine(self.h))

type QPlainTextEditpaintEngineProc* = proc(): gen_qpaintengine_types.QPaintEngine
proc onpaintEngine*(self: gen_qplaintextedit_types.QPlainTextEdit, slot: QPlainTextEditpaintEngineProc) =
  # TODO check subclass
  var tmp = new QPlainTextEditpaintEngineProc
  tmp[] = slot
  GC_ref(tmp)
  fcQPlainTextEdit_override_virtual_paintEngine(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QPlainTextEdit_paintEngine(self: ptr cQPlainTextEdit, slot: int): pointer {.exportc: "miqt_exec_callback_QPlainTextEdit_paintEngine ".} =
  var nimfunc = cast[ptr QPlainTextEditpaintEngineProc](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )

  virtualReturn.h
proc QPlainTextEditenterEvent*(self: gen_qplaintextedit_types.QPlainTextEdit, event: gen_qevent_types.QEnterEvent): void =
  fQPlainTextEdit_virtualbase_enterEvent(self.h, event.h)

type QPlainTextEditenterEventProc* = proc(event: gen_qevent_types.QEnterEvent): void
proc onenterEvent*(self: gen_qplaintextedit_types.QPlainTextEdit, slot: QPlainTextEditenterEventProc) =
  # TODO check subclass
  var tmp = new QPlainTextEditenterEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQPlainTextEdit_override_virtual_enterEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QPlainTextEdit_enterEvent(self: ptr cQPlainTextEdit, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QPlainTextEdit_enterEvent ".} =
  var nimfunc = cast[ptr QPlainTextEditenterEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QEnterEvent(h: event)


  nimfunc[](slotval1)
proc QPlainTextEditleaveEvent*(self: gen_qplaintextedit_types.QPlainTextEdit, event: gen_qcoreevent_types.QEvent): void =
  fQPlainTextEdit_virtualbase_leaveEvent(self.h, event.h)

type QPlainTextEditleaveEventProc* = proc(event: gen_qcoreevent_types.QEvent): void
proc onleaveEvent*(self: gen_qplaintextedit_types.QPlainTextEdit, slot: QPlainTextEditleaveEventProc) =
  # TODO check subclass
  var tmp = new QPlainTextEditleaveEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQPlainTextEdit_override_virtual_leaveEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QPlainTextEdit_leaveEvent(self: ptr cQPlainTextEdit, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QPlainTextEdit_leaveEvent ".} =
  var nimfunc = cast[ptr QPlainTextEditleaveEventProc](cast[pointer](slot))
  let slotval1 = gen_qcoreevent_types.QEvent(h: event)


  nimfunc[](slotval1)
proc QPlainTextEditmoveEvent*(self: gen_qplaintextedit_types.QPlainTextEdit, event: gen_qevent_types.QMoveEvent): void =
  fQPlainTextEdit_virtualbase_moveEvent(self.h, event.h)

type QPlainTextEditmoveEventProc* = proc(event: gen_qevent_types.QMoveEvent): void
proc onmoveEvent*(self: gen_qplaintextedit_types.QPlainTextEdit, slot: QPlainTextEditmoveEventProc) =
  # TODO check subclass
  var tmp = new QPlainTextEditmoveEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQPlainTextEdit_override_virtual_moveEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QPlainTextEdit_moveEvent(self: ptr cQPlainTextEdit, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QPlainTextEdit_moveEvent ".} =
  var nimfunc = cast[ptr QPlainTextEditmoveEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QMoveEvent(h: event)


  nimfunc[](slotval1)
proc QPlainTextEditcloseEvent*(self: gen_qplaintextedit_types.QPlainTextEdit, event: gen_qevent_types.QCloseEvent): void =
  fQPlainTextEdit_virtualbase_closeEvent(self.h, event.h)

type QPlainTextEditcloseEventProc* = proc(event: gen_qevent_types.QCloseEvent): void
proc oncloseEvent*(self: gen_qplaintextedit_types.QPlainTextEdit, slot: QPlainTextEditcloseEventProc) =
  # TODO check subclass
  var tmp = new QPlainTextEditcloseEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQPlainTextEdit_override_virtual_closeEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QPlainTextEdit_closeEvent(self: ptr cQPlainTextEdit, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QPlainTextEdit_closeEvent ".} =
  var nimfunc = cast[ptr QPlainTextEditcloseEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QCloseEvent(h: event)


  nimfunc[](slotval1)
proc QPlainTextEdittabletEvent*(self: gen_qplaintextedit_types.QPlainTextEdit, event: gen_qevent_types.QTabletEvent): void =
  fQPlainTextEdit_virtualbase_tabletEvent(self.h, event.h)

type QPlainTextEdittabletEventProc* = proc(event: gen_qevent_types.QTabletEvent): void
proc ontabletEvent*(self: gen_qplaintextedit_types.QPlainTextEdit, slot: QPlainTextEdittabletEventProc) =
  # TODO check subclass
  var tmp = new QPlainTextEdittabletEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQPlainTextEdit_override_virtual_tabletEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QPlainTextEdit_tabletEvent(self: ptr cQPlainTextEdit, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QPlainTextEdit_tabletEvent ".} =
  var nimfunc = cast[ptr QPlainTextEdittabletEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QTabletEvent(h: event)


  nimfunc[](slotval1)
proc QPlainTextEditactionEvent*(self: gen_qplaintextedit_types.QPlainTextEdit, event: gen_qevent_types.QActionEvent): void =
  fQPlainTextEdit_virtualbase_actionEvent(self.h, event.h)

type QPlainTextEditactionEventProc* = proc(event: gen_qevent_types.QActionEvent): void
proc onactionEvent*(self: gen_qplaintextedit_types.QPlainTextEdit, slot: QPlainTextEditactionEventProc) =
  # TODO check subclass
  var tmp = new QPlainTextEditactionEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQPlainTextEdit_override_virtual_actionEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QPlainTextEdit_actionEvent(self: ptr cQPlainTextEdit, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QPlainTextEdit_actionEvent ".} =
  var nimfunc = cast[ptr QPlainTextEditactionEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QActionEvent(h: event)


  nimfunc[](slotval1)
proc QPlainTextEdithideEvent*(self: gen_qplaintextedit_types.QPlainTextEdit, event: gen_qevent_types.QHideEvent): void =
  fQPlainTextEdit_virtualbase_hideEvent(self.h, event.h)

type QPlainTextEdithideEventProc* = proc(event: gen_qevent_types.QHideEvent): void
proc onhideEvent*(self: gen_qplaintextedit_types.QPlainTextEdit, slot: QPlainTextEdithideEventProc) =
  # TODO check subclass
  var tmp = new QPlainTextEdithideEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQPlainTextEdit_override_virtual_hideEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QPlainTextEdit_hideEvent(self: ptr cQPlainTextEdit, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QPlainTextEdit_hideEvent ".} =
  var nimfunc = cast[ptr QPlainTextEdithideEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QHideEvent(h: event)


  nimfunc[](slotval1)
proc QPlainTextEditnativeEvent*(self: gen_qplaintextedit_types.QPlainTextEdit, eventType: seq[byte], message: pointer, resultVal: ptr uint): bool =
  fQPlainTextEdit_virtualbase_nativeEvent(self.h, struct_miqt_string(data: cast[cstring](if len(eventType) == 0: nil else: unsafeAddr eventType[0]), len: csize_t(len(eventType))), message, resultVal)

type QPlainTextEditnativeEventProc* = proc(eventType: seq[byte], message: pointer, resultVal: ptr uint): bool
proc onnativeEvent*(self: gen_qplaintextedit_types.QPlainTextEdit, slot: QPlainTextEditnativeEventProc) =
  # TODO check subclass
  var tmp = new QPlainTextEditnativeEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQPlainTextEdit_override_virtual_nativeEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QPlainTextEdit_nativeEvent(self: ptr cQPlainTextEdit, slot: int, eventType: struct_miqt_string, message: pointer, resultVal: ptr uint): bool {.exportc: "miqt_exec_callback_QPlainTextEdit_nativeEvent ".} =
  var nimfunc = cast[ptr QPlainTextEditnativeEventProc](cast[pointer](slot))
  var veventType_bytearray = eventType
  var veventTypex_ret = @(toOpenArrayByte(veventType_bytearray.data, 0, int(veventType_bytearray.len)-1))
  c_free(veventType_bytearray.data)
  let slotval1 = veventTypex_ret

  let slotval2 = message

  let slotval3 = resultVal


  let virtualReturn = nimfunc[](slotval1, slotval2, slotval3 )

  virtualReturn
proc QPlainTextEditmetric*(self: gen_qplaintextedit_types.QPlainTextEdit, param1: cint): cint =
  fQPlainTextEdit_virtualbase_metric(self.h, cint(param1))

type QPlainTextEditmetricProc* = proc(param1: cint): cint
proc onmetric*(self: gen_qplaintextedit_types.QPlainTextEdit, slot: QPlainTextEditmetricProc) =
  # TODO check subclass
  var tmp = new QPlainTextEditmetricProc
  tmp[] = slot
  GC_ref(tmp)
  fcQPlainTextEdit_override_virtual_metric(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QPlainTextEdit_metric(self: ptr cQPlainTextEdit, slot: int, param1: cint): cint {.exportc: "miqt_exec_callback_QPlainTextEdit_metric ".} =
  var nimfunc = cast[ptr QPlainTextEditmetricProc](cast[pointer](slot))
  let slotval1 = cint(param1)


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn
proc QPlainTextEditinitPainter*(self: gen_qplaintextedit_types.QPlainTextEdit, painter: gen_qpainter_types.QPainter): void =
  fQPlainTextEdit_virtualbase_initPainter(self.h, painter.h)

type QPlainTextEditinitPainterProc* = proc(painter: gen_qpainter_types.QPainter): void
proc oninitPainter*(self: gen_qplaintextedit_types.QPlainTextEdit, slot: QPlainTextEditinitPainterProc) =
  # TODO check subclass
  var tmp = new QPlainTextEditinitPainterProc
  tmp[] = slot
  GC_ref(tmp)
  fcQPlainTextEdit_override_virtual_initPainter(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QPlainTextEdit_initPainter(self: ptr cQPlainTextEdit, slot: int, painter: pointer): void {.exportc: "miqt_exec_callback_QPlainTextEdit_initPainter ".} =
  var nimfunc = cast[ptr QPlainTextEditinitPainterProc](cast[pointer](slot))
  let slotval1 = gen_qpainter_types.QPainter(h: painter)


  nimfunc[](slotval1)
proc QPlainTextEditredirected*(self: gen_qplaintextedit_types.QPlainTextEdit, offset: gen_qpoint_types.QPoint): gen_qpaintdevice_types.QPaintDevice =
  gen_qpaintdevice_types.QPaintDevice(h: fQPlainTextEdit_virtualbase_redirected(self.h, offset.h))

type QPlainTextEditredirectedProc* = proc(offset: gen_qpoint_types.QPoint): gen_qpaintdevice_types.QPaintDevice
proc onredirected*(self: gen_qplaintextedit_types.QPlainTextEdit, slot: QPlainTextEditredirectedProc) =
  # TODO check subclass
  var tmp = new QPlainTextEditredirectedProc
  tmp[] = slot
  GC_ref(tmp)
  fcQPlainTextEdit_override_virtual_redirected(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QPlainTextEdit_redirected(self: ptr cQPlainTextEdit, slot: int, offset: pointer): pointer {.exportc: "miqt_exec_callback_QPlainTextEdit_redirected ".} =
  var nimfunc = cast[ptr QPlainTextEditredirectedProc](cast[pointer](slot))
  let slotval1 = gen_qpoint_types.QPoint(h: offset)


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn.h
proc QPlainTextEditsharedPainter*(self: gen_qplaintextedit_types.QPlainTextEdit, ): gen_qpainter_types.QPainter =
  gen_qpainter_types.QPainter(h: fQPlainTextEdit_virtualbase_sharedPainter(self.h))

type QPlainTextEditsharedPainterProc* = proc(): gen_qpainter_types.QPainter
proc onsharedPainter*(self: gen_qplaintextedit_types.QPlainTextEdit, slot: QPlainTextEditsharedPainterProc) =
  # TODO check subclass
  var tmp = new QPlainTextEditsharedPainterProc
  tmp[] = slot
  GC_ref(tmp)
  fcQPlainTextEdit_override_virtual_sharedPainter(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QPlainTextEdit_sharedPainter(self: ptr cQPlainTextEdit, slot: int): pointer {.exportc: "miqt_exec_callback_QPlainTextEdit_sharedPainter ".} =
  var nimfunc = cast[ptr QPlainTextEditsharedPainterProc](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )

  virtualReturn.h
proc QPlainTextEditchildEvent*(self: gen_qplaintextedit_types.QPlainTextEdit, event: gen_qcoreevent_types.QChildEvent): void =
  fQPlainTextEdit_virtualbase_childEvent(self.h, event.h)

type QPlainTextEditchildEventProc* = proc(event: gen_qcoreevent_types.QChildEvent): void
proc onchildEvent*(self: gen_qplaintextedit_types.QPlainTextEdit, slot: QPlainTextEditchildEventProc) =
  # TODO check subclass
  var tmp = new QPlainTextEditchildEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQPlainTextEdit_override_virtual_childEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QPlainTextEdit_childEvent(self: ptr cQPlainTextEdit, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QPlainTextEdit_childEvent ".} =
  var nimfunc = cast[ptr QPlainTextEditchildEventProc](cast[pointer](slot))
  let slotval1 = gen_qcoreevent_types.QChildEvent(h: event)


  nimfunc[](slotval1)
proc QPlainTextEditcustomEvent*(self: gen_qplaintextedit_types.QPlainTextEdit, event: gen_qcoreevent_types.QEvent): void =
  fQPlainTextEdit_virtualbase_customEvent(self.h, event.h)

type QPlainTextEditcustomEventProc* = proc(event: gen_qcoreevent_types.QEvent): void
proc oncustomEvent*(self: gen_qplaintextedit_types.QPlainTextEdit, slot: QPlainTextEditcustomEventProc) =
  # TODO check subclass
  var tmp = new QPlainTextEditcustomEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQPlainTextEdit_override_virtual_customEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QPlainTextEdit_customEvent(self: ptr cQPlainTextEdit, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QPlainTextEdit_customEvent ".} =
  var nimfunc = cast[ptr QPlainTextEditcustomEventProc](cast[pointer](slot))
  let slotval1 = gen_qcoreevent_types.QEvent(h: event)


  nimfunc[](slotval1)
proc QPlainTextEditconnectNotify*(self: gen_qplaintextedit_types.QPlainTextEdit, signal: gen_qmetaobject_types.QMetaMethod): void =
  fQPlainTextEdit_virtualbase_connectNotify(self.h, signal.h)

type QPlainTextEditconnectNotifyProc* = proc(signal: gen_qmetaobject_types.QMetaMethod): void
proc onconnectNotify*(self: gen_qplaintextedit_types.QPlainTextEdit, slot: QPlainTextEditconnectNotifyProc) =
  # TODO check subclass
  var tmp = new QPlainTextEditconnectNotifyProc
  tmp[] = slot
  GC_ref(tmp)
  fcQPlainTextEdit_override_virtual_connectNotify(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QPlainTextEdit_connectNotify(self: ptr cQPlainTextEdit, slot: int, signal: pointer): void {.exportc: "miqt_exec_callback_QPlainTextEdit_connectNotify ".} =
  var nimfunc = cast[ptr QPlainTextEditconnectNotifyProc](cast[pointer](slot))
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal)


  nimfunc[](slotval1)
proc QPlainTextEditdisconnectNotify*(self: gen_qplaintextedit_types.QPlainTextEdit, signal: gen_qmetaobject_types.QMetaMethod): void =
  fQPlainTextEdit_virtualbase_disconnectNotify(self.h, signal.h)

type QPlainTextEditdisconnectNotifyProc* = proc(signal: gen_qmetaobject_types.QMetaMethod): void
proc ondisconnectNotify*(self: gen_qplaintextedit_types.QPlainTextEdit, slot: QPlainTextEditdisconnectNotifyProc) =
  # TODO check subclass
  var tmp = new QPlainTextEditdisconnectNotifyProc
  tmp[] = slot
  GC_ref(tmp)
  fcQPlainTextEdit_override_virtual_disconnectNotify(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QPlainTextEdit_disconnectNotify(self: ptr cQPlainTextEdit, slot: int, signal: pointer): void {.exportc: "miqt_exec_callback_QPlainTextEdit_disconnectNotify ".} =
  var nimfunc = cast[ptr QPlainTextEditdisconnectNotifyProc](cast[pointer](slot))
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal)


  nimfunc[](slotval1)
proc staticMetaObject*(_: type gen_qplaintextedit_types.QPlainTextEdit): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQPlainTextEdit_staticMetaObject())
proc delete*(self: gen_qplaintextedit_types.QPlainTextEdit) =
  fcQPlainTextEdit_delete(self.h)

func init*(T: type gen_qplaintextedit_types.QPlainTextDocumentLayout, h: ptr cQPlainTextDocumentLayout): gen_qplaintextedit_types.QPlainTextDocumentLayout =
  T(h: h)
proc create*(T: type gen_qplaintextedit_types.QPlainTextDocumentLayout, document: gen_qtextdocument_types.QTextDocument): gen_qplaintextedit_types.QPlainTextDocumentLayout =
  gen_qplaintextedit_types.QPlainTextDocumentLayout.init(fcQPlainTextDocumentLayout_new(document.h))

proc metaObject*(self: gen_qplaintextedit_types.QPlainTextDocumentLayout, ): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQPlainTextDocumentLayout_metaObject(self.h))

proc metacast*(self: gen_qplaintextedit_types.QPlainTextDocumentLayout, param1: cstring): pointer =
  fcQPlainTextDocumentLayout_metacast(self.h, param1)

proc metacall*(self: gen_qplaintextedit_types.QPlainTextDocumentLayout, param1: cint, param2: cint, param3: pointer): cint =
  fcQPlainTextDocumentLayout_metacall(self.h, cint(param1), param2, param3)

proc tr*(_: type gen_qplaintextedit_types.QPlainTextDocumentLayout, s: cstring): string =
  let v_ms = fcQPlainTextDocumentLayout_tr(s)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc draw*(self: gen_qplaintextedit_types.QPlainTextDocumentLayout, param1: gen_qpainter_types.QPainter, param2: gen_qabstracttextdocumentlayout_types.QAbstractTextDocumentLayoutPaintContext): void =
  fcQPlainTextDocumentLayout_draw(self.h, param1.h, param2.h)

proc hitTest*(self: gen_qplaintextedit_types.QPlainTextDocumentLayout, param1: gen_qpoint_types.QPointF, param2: cint): cint =
  fcQPlainTextDocumentLayout_hitTest(self.h, param1.h, cint(param2))

proc pageCount*(self: gen_qplaintextedit_types.QPlainTextDocumentLayout, ): cint =
  fcQPlainTextDocumentLayout_pageCount(self.h)

proc documentSize*(self: gen_qplaintextedit_types.QPlainTextDocumentLayout, ): gen_qsize_types.QSizeF =
  gen_qsize_types.QSizeF(h: fcQPlainTextDocumentLayout_documentSize(self.h))

proc frameBoundingRect*(self: gen_qplaintextedit_types.QPlainTextDocumentLayout, param1: gen_qtextobject_types.QTextFrame): gen_qrect_types.QRectF =
  gen_qrect_types.QRectF(h: fcQPlainTextDocumentLayout_frameBoundingRect(self.h, param1.h))

proc blockBoundingRect*(self: gen_qplaintextedit_types.QPlainTextDocumentLayout, blockVal: gen_qtextobject_types.QTextBlock): gen_qrect_types.QRectF =
  gen_qrect_types.QRectF(h: fcQPlainTextDocumentLayout_blockBoundingRect(self.h, blockVal.h))

proc ensureBlockLayout*(self: gen_qplaintextedit_types.QPlainTextDocumentLayout, blockVal: gen_qtextobject_types.QTextBlock): void =
  fcQPlainTextDocumentLayout_ensureBlockLayout(self.h, blockVal.h)

proc setCursorWidth*(self: gen_qplaintextedit_types.QPlainTextDocumentLayout, width: cint): void =
  fcQPlainTextDocumentLayout_setCursorWidth(self.h, width)

proc cursorWidth*(self: gen_qplaintextedit_types.QPlainTextDocumentLayout, ): cint =
  fcQPlainTextDocumentLayout_cursorWidth(self.h)

proc requestUpdate*(self: gen_qplaintextedit_types.QPlainTextDocumentLayout, ): void =
  fcQPlainTextDocumentLayout_requestUpdate(self.h)

proc tr*(_: type gen_qplaintextedit_types.QPlainTextDocumentLayout, s: cstring, c: cstring): string =
  let v_ms = fcQPlainTextDocumentLayout_tr2(s, c)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc tr*(_: type gen_qplaintextedit_types.QPlainTextDocumentLayout, s: cstring, c: cstring, n: cint): string =
  let v_ms = fcQPlainTextDocumentLayout_tr3(s, c, n)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc QPlainTextDocumentLayoutmetaObject*(self: gen_qplaintextedit_types.QPlainTextDocumentLayout, ): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fQPlainTextDocumentLayout_virtualbase_metaObject(self.h))

type QPlainTextDocumentLayoutmetaObjectProc* = proc(): gen_qobjectdefs_types.QMetaObject
proc onmetaObject*(self: gen_qplaintextedit_types.QPlainTextDocumentLayout, slot: QPlainTextDocumentLayoutmetaObjectProc) =
  # TODO check subclass
  var tmp = new QPlainTextDocumentLayoutmetaObjectProc
  tmp[] = slot
  GC_ref(tmp)
  fcQPlainTextDocumentLayout_override_virtual_metaObject(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QPlainTextDocumentLayout_metaObject(self: ptr cQPlainTextDocumentLayout, slot: int): pointer {.exportc: "miqt_exec_callback_QPlainTextDocumentLayout_metaObject ".} =
  var nimfunc = cast[ptr QPlainTextDocumentLayoutmetaObjectProc](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )

  virtualReturn.h
proc QPlainTextDocumentLayoutmetacast*(self: gen_qplaintextedit_types.QPlainTextDocumentLayout, param1: cstring): pointer =
  fQPlainTextDocumentLayout_virtualbase_metacast(self.h, param1)

type QPlainTextDocumentLayoutmetacastProc* = proc(param1: cstring): pointer
proc onmetacast*(self: gen_qplaintextedit_types.QPlainTextDocumentLayout, slot: QPlainTextDocumentLayoutmetacastProc) =
  # TODO check subclass
  var tmp = new QPlainTextDocumentLayoutmetacastProc
  tmp[] = slot
  GC_ref(tmp)
  fcQPlainTextDocumentLayout_override_virtual_metacast(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QPlainTextDocumentLayout_metacast(self: ptr cQPlainTextDocumentLayout, slot: int, param1: cstring): pointer {.exportc: "miqt_exec_callback_QPlainTextDocumentLayout_metacast ".} =
  var nimfunc = cast[ptr QPlainTextDocumentLayoutmetacastProc](cast[pointer](slot))
  let slotval1 = (param1)


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn
proc QPlainTextDocumentLayoutmetacall*(self: gen_qplaintextedit_types.QPlainTextDocumentLayout, param1: cint, param2: cint, param3: pointer): cint =
  fQPlainTextDocumentLayout_virtualbase_metacall(self.h, cint(param1), param2, param3)

type QPlainTextDocumentLayoutmetacallProc* = proc(param1: cint, param2: cint, param3: pointer): cint
proc onmetacall*(self: gen_qplaintextedit_types.QPlainTextDocumentLayout, slot: QPlainTextDocumentLayoutmetacallProc) =
  # TODO check subclass
  var tmp = new QPlainTextDocumentLayoutmetacallProc
  tmp[] = slot
  GC_ref(tmp)
  fcQPlainTextDocumentLayout_override_virtual_metacall(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QPlainTextDocumentLayout_metacall(self: ptr cQPlainTextDocumentLayout, slot: int, param1: cint, param2: cint, param3: pointer): cint {.exportc: "miqt_exec_callback_QPlainTextDocumentLayout_metacall ".} =
  var nimfunc = cast[ptr QPlainTextDocumentLayoutmetacallProc](cast[pointer](slot))
  let slotval1 = cint(param1)

  let slotval2 = param2

  let slotval3 = param3


  let virtualReturn = nimfunc[](slotval1, slotval2, slotval3 )

  virtualReturn
proc QPlainTextDocumentLayoutdraw*(self: gen_qplaintextedit_types.QPlainTextDocumentLayout, param1: gen_qpainter_types.QPainter, param2: gen_qabstracttextdocumentlayout_types.QAbstractTextDocumentLayoutPaintContext): void =
  fQPlainTextDocumentLayout_virtualbase_draw(self.h, param1.h, param2.h)

type QPlainTextDocumentLayoutdrawProc* = proc(param1: gen_qpainter_types.QPainter, param2: gen_qabstracttextdocumentlayout_types.QAbstractTextDocumentLayoutPaintContext): void
proc ondraw*(self: gen_qplaintextedit_types.QPlainTextDocumentLayout, slot: QPlainTextDocumentLayoutdrawProc) =
  # TODO check subclass
  var tmp = new QPlainTextDocumentLayoutdrawProc
  tmp[] = slot
  GC_ref(tmp)
  fcQPlainTextDocumentLayout_override_virtual_draw(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QPlainTextDocumentLayout_draw(self: ptr cQPlainTextDocumentLayout, slot: int, param1: pointer, param2: pointer): void {.exportc: "miqt_exec_callback_QPlainTextDocumentLayout_draw ".} =
  var nimfunc = cast[ptr QPlainTextDocumentLayoutdrawProc](cast[pointer](slot))
  let slotval1 = gen_qpainter_types.QPainter(h: param1)

  let slotval2 = gen_qabstracttextdocumentlayout_types.QAbstractTextDocumentLayoutPaintContext(h: param2)


  nimfunc[](slotval1, slotval2)
proc QPlainTextDocumentLayouthitTest*(self: gen_qplaintextedit_types.QPlainTextDocumentLayout, param1: gen_qpoint_types.QPointF, param2: cint): cint =
  fQPlainTextDocumentLayout_virtualbase_hitTest(self.h, param1.h, cint(param2))

type QPlainTextDocumentLayouthitTestProc* = proc(param1: gen_qpoint_types.QPointF, param2: cint): cint
proc onhitTest*(self: gen_qplaintextedit_types.QPlainTextDocumentLayout, slot: QPlainTextDocumentLayouthitTestProc) =
  # TODO check subclass
  var tmp = new QPlainTextDocumentLayouthitTestProc
  tmp[] = slot
  GC_ref(tmp)
  fcQPlainTextDocumentLayout_override_virtual_hitTest(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QPlainTextDocumentLayout_hitTest(self: ptr cQPlainTextDocumentLayout, slot: int, param1: pointer, param2: cint): cint {.exportc: "miqt_exec_callback_QPlainTextDocumentLayout_hitTest ".} =
  var nimfunc = cast[ptr QPlainTextDocumentLayouthitTestProc](cast[pointer](slot))
  let slotval1 = gen_qpoint_types.QPointF(h: param1)

  let slotval2 = cint(param2)


  let virtualReturn = nimfunc[](slotval1, slotval2 )

  virtualReturn
proc QPlainTextDocumentLayoutpageCount*(self: gen_qplaintextedit_types.QPlainTextDocumentLayout, ): cint =
  fQPlainTextDocumentLayout_virtualbase_pageCount(self.h)

type QPlainTextDocumentLayoutpageCountProc* = proc(): cint
proc onpageCount*(self: gen_qplaintextedit_types.QPlainTextDocumentLayout, slot: QPlainTextDocumentLayoutpageCountProc) =
  # TODO check subclass
  var tmp = new QPlainTextDocumentLayoutpageCountProc
  tmp[] = slot
  GC_ref(tmp)
  fcQPlainTextDocumentLayout_override_virtual_pageCount(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QPlainTextDocumentLayout_pageCount(self: ptr cQPlainTextDocumentLayout, slot: int): cint {.exportc: "miqt_exec_callback_QPlainTextDocumentLayout_pageCount ".} =
  var nimfunc = cast[ptr QPlainTextDocumentLayoutpageCountProc](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )

  virtualReturn
proc QPlainTextDocumentLayoutdocumentSize*(self: gen_qplaintextedit_types.QPlainTextDocumentLayout, ): gen_qsize_types.QSizeF =
  gen_qsize_types.QSizeF(h: fQPlainTextDocumentLayout_virtualbase_documentSize(self.h))

type QPlainTextDocumentLayoutdocumentSizeProc* = proc(): gen_qsize_types.QSizeF
proc ondocumentSize*(self: gen_qplaintextedit_types.QPlainTextDocumentLayout, slot: QPlainTextDocumentLayoutdocumentSizeProc) =
  # TODO check subclass
  var tmp = new QPlainTextDocumentLayoutdocumentSizeProc
  tmp[] = slot
  GC_ref(tmp)
  fcQPlainTextDocumentLayout_override_virtual_documentSize(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QPlainTextDocumentLayout_documentSize(self: ptr cQPlainTextDocumentLayout, slot: int): pointer {.exportc: "miqt_exec_callback_QPlainTextDocumentLayout_documentSize ".} =
  var nimfunc = cast[ptr QPlainTextDocumentLayoutdocumentSizeProc](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )

  virtualReturn.h
proc QPlainTextDocumentLayoutframeBoundingRect*(self: gen_qplaintextedit_types.QPlainTextDocumentLayout, param1: gen_qtextobject_types.QTextFrame): gen_qrect_types.QRectF =
  gen_qrect_types.QRectF(h: fQPlainTextDocumentLayout_virtualbase_frameBoundingRect(self.h, param1.h))

type QPlainTextDocumentLayoutframeBoundingRectProc* = proc(param1: gen_qtextobject_types.QTextFrame): gen_qrect_types.QRectF
proc onframeBoundingRect*(self: gen_qplaintextedit_types.QPlainTextDocumentLayout, slot: QPlainTextDocumentLayoutframeBoundingRectProc) =
  # TODO check subclass
  var tmp = new QPlainTextDocumentLayoutframeBoundingRectProc
  tmp[] = slot
  GC_ref(tmp)
  fcQPlainTextDocumentLayout_override_virtual_frameBoundingRect(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QPlainTextDocumentLayout_frameBoundingRect(self: ptr cQPlainTextDocumentLayout, slot: int, param1: pointer): pointer {.exportc: "miqt_exec_callback_QPlainTextDocumentLayout_frameBoundingRect ".} =
  var nimfunc = cast[ptr QPlainTextDocumentLayoutframeBoundingRectProc](cast[pointer](slot))
  let slotval1 = gen_qtextobject_types.QTextFrame(h: param1)


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn.h
proc QPlainTextDocumentLayoutblockBoundingRect*(self: gen_qplaintextedit_types.QPlainTextDocumentLayout, blockVal: gen_qtextobject_types.QTextBlock): gen_qrect_types.QRectF =
  gen_qrect_types.QRectF(h: fQPlainTextDocumentLayout_virtualbase_blockBoundingRect(self.h, blockVal.h))

type QPlainTextDocumentLayoutblockBoundingRectProc* = proc(blockVal: gen_qtextobject_types.QTextBlock): gen_qrect_types.QRectF
proc onblockBoundingRect*(self: gen_qplaintextedit_types.QPlainTextDocumentLayout, slot: QPlainTextDocumentLayoutblockBoundingRectProc) =
  # TODO check subclass
  var tmp = new QPlainTextDocumentLayoutblockBoundingRectProc
  tmp[] = slot
  GC_ref(tmp)
  fcQPlainTextDocumentLayout_override_virtual_blockBoundingRect(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QPlainTextDocumentLayout_blockBoundingRect(self: ptr cQPlainTextDocumentLayout, slot: int, blockVal: pointer): pointer {.exportc: "miqt_exec_callback_QPlainTextDocumentLayout_blockBoundingRect ".} =
  var nimfunc = cast[ptr QPlainTextDocumentLayoutblockBoundingRectProc](cast[pointer](slot))
  let slotval1 = gen_qtextobject_types.QTextBlock(h: blockVal)


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn.h
proc QPlainTextDocumentLayoutdocumentChanged*(self: gen_qplaintextedit_types.QPlainTextDocumentLayout, fromVal: cint, param2: cint, charsAdded: cint): void =
  fQPlainTextDocumentLayout_virtualbase_documentChanged(self.h, fromVal, param2, charsAdded)

type QPlainTextDocumentLayoutdocumentChangedProc* = proc(fromVal: cint, param2: cint, charsAdded: cint): void
proc ondocumentChanged*(self: gen_qplaintextedit_types.QPlainTextDocumentLayout, slot: QPlainTextDocumentLayoutdocumentChangedProc) =
  # TODO check subclass
  var tmp = new QPlainTextDocumentLayoutdocumentChangedProc
  tmp[] = slot
  GC_ref(tmp)
  fcQPlainTextDocumentLayout_override_virtual_documentChanged(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QPlainTextDocumentLayout_documentChanged(self: ptr cQPlainTextDocumentLayout, slot: int, fromVal: cint, param2: cint, charsAdded: cint): void {.exportc: "miqt_exec_callback_QPlainTextDocumentLayout_documentChanged ".} =
  var nimfunc = cast[ptr QPlainTextDocumentLayoutdocumentChangedProc](cast[pointer](slot))
  let slotval1 = fromVal

  let slotval2 = param2

  let slotval3 = charsAdded


  nimfunc[](slotval1, slotval2, slotval3)
proc QPlainTextDocumentLayoutresizeInlineObject*(self: gen_qplaintextedit_types.QPlainTextDocumentLayout, item: gen_qtextlayout_types.QTextInlineObject, posInDocument: cint, format: gen_qtextformat_types.QTextFormat): void =
  fQPlainTextDocumentLayout_virtualbase_resizeInlineObject(self.h, item.h, posInDocument, format.h)

type QPlainTextDocumentLayoutresizeInlineObjectProc* = proc(item: gen_qtextlayout_types.QTextInlineObject, posInDocument: cint, format: gen_qtextformat_types.QTextFormat): void
proc onresizeInlineObject*(self: gen_qplaintextedit_types.QPlainTextDocumentLayout, slot: QPlainTextDocumentLayoutresizeInlineObjectProc) =
  # TODO check subclass
  var tmp = new QPlainTextDocumentLayoutresizeInlineObjectProc
  tmp[] = slot
  GC_ref(tmp)
  fcQPlainTextDocumentLayout_override_virtual_resizeInlineObject(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QPlainTextDocumentLayout_resizeInlineObject(self: ptr cQPlainTextDocumentLayout, slot: int, item: pointer, posInDocument: cint, format: pointer): void {.exportc: "miqt_exec_callback_QPlainTextDocumentLayout_resizeInlineObject ".} =
  var nimfunc = cast[ptr QPlainTextDocumentLayoutresizeInlineObjectProc](cast[pointer](slot))
  let slotval1 = gen_qtextlayout_types.QTextInlineObject(h: item)

  let slotval2 = posInDocument

  let slotval3 = gen_qtextformat_types.QTextFormat(h: format)


  nimfunc[](slotval1, slotval2, slotval3)
proc QPlainTextDocumentLayoutpositionInlineObject*(self: gen_qplaintextedit_types.QPlainTextDocumentLayout, item: gen_qtextlayout_types.QTextInlineObject, posInDocument: cint, format: gen_qtextformat_types.QTextFormat): void =
  fQPlainTextDocumentLayout_virtualbase_positionInlineObject(self.h, item.h, posInDocument, format.h)

type QPlainTextDocumentLayoutpositionInlineObjectProc* = proc(item: gen_qtextlayout_types.QTextInlineObject, posInDocument: cint, format: gen_qtextformat_types.QTextFormat): void
proc onpositionInlineObject*(self: gen_qplaintextedit_types.QPlainTextDocumentLayout, slot: QPlainTextDocumentLayoutpositionInlineObjectProc) =
  # TODO check subclass
  var tmp = new QPlainTextDocumentLayoutpositionInlineObjectProc
  tmp[] = slot
  GC_ref(tmp)
  fcQPlainTextDocumentLayout_override_virtual_positionInlineObject(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QPlainTextDocumentLayout_positionInlineObject(self: ptr cQPlainTextDocumentLayout, slot: int, item: pointer, posInDocument: cint, format: pointer): void {.exportc: "miqt_exec_callback_QPlainTextDocumentLayout_positionInlineObject ".} =
  var nimfunc = cast[ptr QPlainTextDocumentLayoutpositionInlineObjectProc](cast[pointer](slot))
  let slotval1 = gen_qtextlayout_types.QTextInlineObject(h: item)

  let slotval2 = posInDocument

  let slotval3 = gen_qtextformat_types.QTextFormat(h: format)


  nimfunc[](slotval1, slotval2, slotval3)
proc QPlainTextDocumentLayoutdrawInlineObject*(self: gen_qplaintextedit_types.QPlainTextDocumentLayout, painter: gen_qpainter_types.QPainter, rect: gen_qrect_types.QRectF, objectVal: gen_qtextlayout_types.QTextInlineObject, posInDocument: cint, format: gen_qtextformat_types.QTextFormat): void =
  fQPlainTextDocumentLayout_virtualbase_drawInlineObject(self.h, painter.h, rect.h, objectVal.h, posInDocument, format.h)

type QPlainTextDocumentLayoutdrawInlineObjectProc* = proc(painter: gen_qpainter_types.QPainter, rect: gen_qrect_types.QRectF, objectVal: gen_qtextlayout_types.QTextInlineObject, posInDocument: cint, format: gen_qtextformat_types.QTextFormat): void
proc ondrawInlineObject*(self: gen_qplaintextedit_types.QPlainTextDocumentLayout, slot: QPlainTextDocumentLayoutdrawInlineObjectProc) =
  # TODO check subclass
  var tmp = new QPlainTextDocumentLayoutdrawInlineObjectProc
  tmp[] = slot
  GC_ref(tmp)
  fcQPlainTextDocumentLayout_override_virtual_drawInlineObject(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QPlainTextDocumentLayout_drawInlineObject(self: ptr cQPlainTextDocumentLayout, slot: int, painter: pointer, rect: pointer, objectVal: pointer, posInDocument: cint, format: pointer): void {.exportc: "miqt_exec_callback_QPlainTextDocumentLayout_drawInlineObject ".} =
  var nimfunc = cast[ptr QPlainTextDocumentLayoutdrawInlineObjectProc](cast[pointer](slot))
  let slotval1 = gen_qpainter_types.QPainter(h: painter)

  let slotval2 = gen_qrect_types.QRectF(h: rect)

  let slotval3 = gen_qtextlayout_types.QTextInlineObject(h: objectVal)

  let slotval4 = posInDocument

  let slotval5 = gen_qtextformat_types.QTextFormat(h: format)


  nimfunc[](slotval1, slotval2, slotval3, slotval4, slotval5)
proc QPlainTextDocumentLayoutevent*(self: gen_qplaintextedit_types.QPlainTextDocumentLayout, event: gen_qcoreevent_types.QEvent): bool =
  fQPlainTextDocumentLayout_virtualbase_event(self.h, event.h)

type QPlainTextDocumentLayouteventProc* = proc(event: gen_qcoreevent_types.QEvent): bool
proc onevent*(self: gen_qplaintextedit_types.QPlainTextDocumentLayout, slot: QPlainTextDocumentLayouteventProc) =
  # TODO check subclass
  var tmp = new QPlainTextDocumentLayouteventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQPlainTextDocumentLayout_override_virtual_event(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QPlainTextDocumentLayout_event(self: ptr cQPlainTextDocumentLayout, slot: int, event: pointer): bool {.exportc: "miqt_exec_callback_QPlainTextDocumentLayout_event ".} =
  var nimfunc = cast[ptr QPlainTextDocumentLayouteventProc](cast[pointer](slot))
  let slotval1 = gen_qcoreevent_types.QEvent(h: event)


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn
proc QPlainTextDocumentLayouteventFilter*(self: gen_qplaintextedit_types.QPlainTextDocumentLayout, watched: gen_qobject_types.QObject, event: gen_qcoreevent_types.QEvent): bool =
  fQPlainTextDocumentLayout_virtualbase_eventFilter(self.h, watched.h, event.h)

type QPlainTextDocumentLayouteventFilterProc* = proc(watched: gen_qobject_types.QObject, event: gen_qcoreevent_types.QEvent): bool
proc oneventFilter*(self: gen_qplaintextedit_types.QPlainTextDocumentLayout, slot: QPlainTextDocumentLayouteventFilterProc) =
  # TODO check subclass
  var tmp = new QPlainTextDocumentLayouteventFilterProc
  tmp[] = slot
  GC_ref(tmp)
  fcQPlainTextDocumentLayout_override_virtual_eventFilter(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QPlainTextDocumentLayout_eventFilter(self: ptr cQPlainTextDocumentLayout, slot: int, watched: pointer, event: pointer): bool {.exportc: "miqt_exec_callback_QPlainTextDocumentLayout_eventFilter ".} =
  var nimfunc = cast[ptr QPlainTextDocumentLayouteventFilterProc](cast[pointer](slot))
  let slotval1 = gen_qobject_types.QObject(h: watched)

  let slotval2 = gen_qcoreevent_types.QEvent(h: event)


  let virtualReturn = nimfunc[](slotval1, slotval2 )

  virtualReturn
proc QPlainTextDocumentLayouttimerEvent*(self: gen_qplaintextedit_types.QPlainTextDocumentLayout, event: gen_qcoreevent_types.QTimerEvent): void =
  fQPlainTextDocumentLayout_virtualbase_timerEvent(self.h, event.h)

type QPlainTextDocumentLayouttimerEventProc* = proc(event: gen_qcoreevent_types.QTimerEvent): void
proc ontimerEvent*(self: gen_qplaintextedit_types.QPlainTextDocumentLayout, slot: QPlainTextDocumentLayouttimerEventProc) =
  # TODO check subclass
  var tmp = new QPlainTextDocumentLayouttimerEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQPlainTextDocumentLayout_override_virtual_timerEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QPlainTextDocumentLayout_timerEvent(self: ptr cQPlainTextDocumentLayout, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QPlainTextDocumentLayout_timerEvent ".} =
  var nimfunc = cast[ptr QPlainTextDocumentLayouttimerEventProc](cast[pointer](slot))
  let slotval1 = gen_qcoreevent_types.QTimerEvent(h: event)


  nimfunc[](slotval1)
proc QPlainTextDocumentLayoutchildEvent*(self: gen_qplaintextedit_types.QPlainTextDocumentLayout, event: gen_qcoreevent_types.QChildEvent): void =
  fQPlainTextDocumentLayout_virtualbase_childEvent(self.h, event.h)

type QPlainTextDocumentLayoutchildEventProc* = proc(event: gen_qcoreevent_types.QChildEvent): void
proc onchildEvent*(self: gen_qplaintextedit_types.QPlainTextDocumentLayout, slot: QPlainTextDocumentLayoutchildEventProc) =
  # TODO check subclass
  var tmp = new QPlainTextDocumentLayoutchildEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQPlainTextDocumentLayout_override_virtual_childEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QPlainTextDocumentLayout_childEvent(self: ptr cQPlainTextDocumentLayout, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QPlainTextDocumentLayout_childEvent ".} =
  var nimfunc = cast[ptr QPlainTextDocumentLayoutchildEventProc](cast[pointer](slot))
  let slotval1 = gen_qcoreevent_types.QChildEvent(h: event)


  nimfunc[](slotval1)
proc QPlainTextDocumentLayoutcustomEvent*(self: gen_qplaintextedit_types.QPlainTextDocumentLayout, event: gen_qcoreevent_types.QEvent): void =
  fQPlainTextDocumentLayout_virtualbase_customEvent(self.h, event.h)

type QPlainTextDocumentLayoutcustomEventProc* = proc(event: gen_qcoreevent_types.QEvent): void
proc oncustomEvent*(self: gen_qplaintextedit_types.QPlainTextDocumentLayout, slot: QPlainTextDocumentLayoutcustomEventProc) =
  # TODO check subclass
  var tmp = new QPlainTextDocumentLayoutcustomEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQPlainTextDocumentLayout_override_virtual_customEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QPlainTextDocumentLayout_customEvent(self: ptr cQPlainTextDocumentLayout, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QPlainTextDocumentLayout_customEvent ".} =
  var nimfunc = cast[ptr QPlainTextDocumentLayoutcustomEventProc](cast[pointer](slot))
  let slotval1 = gen_qcoreevent_types.QEvent(h: event)


  nimfunc[](slotval1)
proc QPlainTextDocumentLayoutconnectNotify*(self: gen_qplaintextedit_types.QPlainTextDocumentLayout, signal: gen_qmetaobject_types.QMetaMethod): void =
  fQPlainTextDocumentLayout_virtualbase_connectNotify(self.h, signal.h)

type QPlainTextDocumentLayoutconnectNotifyProc* = proc(signal: gen_qmetaobject_types.QMetaMethod): void
proc onconnectNotify*(self: gen_qplaintextedit_types.QPlainTextDocumentLayout, slot: QPlainTextDocumentLayoutconnectNotifyProc) =
  # TODO check subclass
  var tmp = new QPlainTextDocumentLayoutconnectNotifyProc
  tmp[] = slot
  GC_ref(tmp)
  fcQPlainTextDocumentLayout_override_virtual_connectNotify(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QPlainTextDocumentLayout_connectNotify(self: ptr cQPlainTextDocumentLayout, slot: int, signal: pointer): void {.exportc: "miqt_exec_callback_QPlainTextDocumentLayout_connectNotify ".} =
  var nimfunc = cast[ptr QPlainTextDocumentLayoutconnectNotifyProc](cast[pointer](slot))
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal)


  nimfunc[](slotval1)
proc QPlainTextDocumentLayoutdisconnectNotify*(self: gen_qplaintextedit_types.QPlainTextDocumentLayout, signal: gen_qmetaobject_types.QMetaMethod): void =
  fQPlainTextDocumentLayout_virtualbase_disconnectNotify(self.h, signal.h)

type QPlainTextDocumentLayoutdisconnectNotifyProc* = proc(signal: gen_qmetaobject_types.QMetaMethod): void
proc ondisconnectNotify*(self: gen_qplaintextedit_types.QPlainTextDocumentLayout, slot: QPlainTextDocumentLayoutdisconnectNotifyProc) =
  # TODO check subclass
  var tmp = new QPlainTextDocumentLayoutdisconnectNotifyProc
  tmp[] = slot
  GC_ref(tmp)
  fcQPlainTextDocumentLayout_override_virtual_disconnectNotify(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QPlainTextDocumentLayout_disconnectNotify(self: ptr cQPlainTextDocumentLayout, slot: int, signal: pointer): void {.exportc: "miqt_exec_callback_QPlainTextDocumentLayout_disconnectNotify ".} =
  var nimfunc = cast[ptr QPlainTextDocumentLayoutdisconnectNotifyProc](cast[pointer](slot))
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal)


  nimfunc[](slotval1)
proc staticMetaObject*(_: type gen_qplaintextedit_types.QPlainTextDocumentLayout): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQPlainTextDocumentLayout_staticMetaObject())
proc delete*(self: gen_qplaintextedit_types.QPlainTextDocumentLayout) =
  fcQPlainTextDocumentLayout_delete(self.h)
