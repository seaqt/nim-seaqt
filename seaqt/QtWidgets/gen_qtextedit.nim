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
{.compile("gen_qtextedit.cpp", cflags).}


type QTextEditLineWrapModeEnum* = distinct cint
template NoWrap*(_: type QTextEditLineWrapModeEnum): untyped = 0
template WidgetWidth*(_: type QTextEditLineWrapModeEnum): untyped = 1
template FixedPixelWidth*(_: type QTextEditLineWrapModeEnum): untyped = 2
template FixedColumnWidth*(_: type QTextEditLineWrapModeEnum): untyped = 3


type QTextEditAutoFormattingFlagEnum* = distinct cint
template AutoNone*(_: type QTextEditAutoFormattingFlagEnum): untyped = 0
template AutoBulletList*(_: type QTextEditAutoFormattingFlagEnum): untyped = 1
template AutoAll*(_: type QTextEditAutoFormattingFlagEnum): untyped = 4294967295


import ./gen_qtextedit_types
export gen_qtextedit_types

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
  ../QtGui/gen_qcolor_types,
  ../QtGui/gen_qevent_types,
  ../QtGui/gen_qfont_types,
  ../QtGui/gen_qpagedpaintdevice_types,
  ../QtGui/gen_qpaintdevice_types,
  ../QtGui/gen_qpaintengine_types,
  ../QtGui/gen_qpainter_types,
  ../QtGui/gen_qtextcursor_types,
  ../QtGui/gen_qtextdocument_types,
  ../QtGui/gen_qtextformat_types,
  ./gen_qabstractscrollarea,
  ./gen_qmenu_types,
  ./gen_qstyleoption_types,
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
  gen_qcolor_types,
  gen_qevent_types,
  gen_qfont_types,
  gen_qpagedpaintdevice_types,
  gen_qpaintdevice_types,
  gen_qpaintengine_types,
  gen_qpainter_types,
  gen_qtextcursor_types,
  gen_qtextdocument_types,
  gen_qtextformat_types,
  gen_qabstractscrollarea,
  gen_qmenu_types,
  gen_qstyleoption_types,
  gen_qwidget_types

type cQTextEdit*{.exportc: "QTextEdit", incompleteStruct.} = object
type cQTextEditExtraSelection*{.exportc: "QTextEdit__ExtraSelection", incompleteStruct.} = object

proc fcQTextEdit_new(parent: pointer): ptr cQTextEdit {.importc: "QTextEdit_new".}
proc fcQTextEdit_new2(): ptr cQTextEdit {.importc: "QTextEdit_new2".}
proc fcQTextEdit_new3(text: struct_miqt_string): ptr cQTextEdit {.importc: "QTextEdit_new3".}
proc fcQTextEdit_new4(text: struct_miqt_string, parent: pointer): ptr cQTextEdit {.importc: "QTextEdit_new4".}
proc fcQTextEdit_metaObject(self: pointer, ): pointer {.importc: "QTextEdit_metaObject".}
proc fcQTextEdit_metacast(self: pointer, param1: cstring): pointer {.importc: "QTextEdit_metacast".}
proc fcQTextEdit_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.importc: "QTextEdit_metacall".}
proc fcQTextEdit_tr(s: cstring): struct_miqt_string {.importc: "QTextEdit_tr".}
proc fcQTextEdit_setDocument(self: pointer, document: pointer): void {.importc: "QTextEdit_setDocument".}
proc fcQTextEdit_document(self: pointer, ): pointer {.importc: "QTextEdit_document".}
proc fcQTextEdit_setPlaceholderText(self: pointer, placeholderText: struct_miqt_string): void {.importc: "QTextEdit_setPlaceholderText".}
proc fcQTextEdit_placeholderText(self: pointer, ): struct_miqt_string {.importc: "QTextEdit_placeholderText".}
proc fcQTextEdit_setTextCursor(self: pointer, cursor: pointer): void {.importc: "QTextEdit_setTextCursor".}
proc fcQTextEdit_textCursor(self: pointer, ): pointer {.importc: "QTextEdit_textCursor".}
proc fcQTextEdit_isReadOnly(self: pointer, ): bool {.importc: "QTextEdit_isReadOnly".}
proc fcQTextEdit_setReadOnly(self: pointer, ro: bool): void {.importc: "QTextEdit_setReadOnly".}
proc fcQTextEdit_setTextInteractionFlags(self: pointer, flags: cint): void {.importc: "QTextEdit_setTextInteractionFlags".}
proc fcQTextEdit_textInteractionFlags(self: pointer, ): cint {.importc: "QTextEdit_textInteractionFlags".}
proc fcQTextEdit_fontPointSize(self: pointer, ): float64 {.importc: "QTextEdit_fontPointSize".}
proc fcQTextEdit_fontFamily(self: pointer, ): struct_miqt_string {.importc: "QTextEdit_fontFamily".}
proc fcQTextEdit_fontWeight(self: pointer, ): cint {.importc: "QTextEdit_fontWeight".}
proc fcQTextEdit_fontUnderline(self: pointer, ): bool {.importc: "QTextEdit_fontUnderline".}
proc fcQTextEdit_fontItalic(self: pointer, ): bool {.importc: "QTextEdit_fontItalic".}
proc fcQTextEdit_textColor(self: pointer, ): pointer {.importc: "QTextEdit_textColor".}
proc fcQTextEdit_textBackgroundColor(self: pointer, ): pointer {.importc: "QTextEdit_textBackgroundColor".}
proc fcQTextEdit_currentFont(self: pointer, ): pointer {.importc: "QTextEdit_currentFont".}
proc fcQTextEdit_alignment(self: pointer, ): cint {.importc: "QTextEdit_alignment".}
proc fcQTextEdit_mergeCurrentCharFormat(self: pointer, modifier: pointer): void {.importc: "QTextEdit_mergeCurrentCharFormat".}
proc fcQTextEdit_setCurrentCharFormat(self: pointer, format: pointer): void {.importc: "QTextEdit_setCurrentCharFormat".}
proc fcQTextEdit_currentCharFormat(self: pointer, ): pointer {.importc: "QTextEdit_currentCharFormat".}
proc fcQTextEdit_autoFormatting(self: pointer, ): cint {.importc: "QTextEdit_autoFormatting".}
proc fcQTextEdit_setAutoFormatting(self: pointer, features: cint): void {.importc: "QTextEdit_setAutoFormatting".}
proc fcQTextEdit_tabChangesFocus(self: pointer, ): bool {.importc: "QTextEdit_tabChangesFocus".}
proc fcQTextEdit_setTabChangesFocus(self: pointer, b: bool): void {.importc: "QTextEdit_setTabChangesFocus".}
proc fcQTextEdit_setDocumentTitle(self: pointer, title: struct_miqt_string): void {.importc: "QTextEdit_setDocumentTitle".}
proc fcQTextEdit_documentTitle(self: pointer, ): struct_miqt_string {.importc: "QTextEdit_documentTitle".}
proc fcQTextEdit_isUndoRedoEnabled(self: pointer, ): bool {.importc: "QTextEdit_isUndoRedoEnabled".}
proc fcQTextEdit_setUndoRedoEnabled(self: pointer, enable: bool): void {.importc: "QTextEdit_setUndoRedoEnabled".}
proc fcQTextEdit_lineWrapMode(self: pointer, ): cint {.importc: "QTextEdit_lineWrapMode".}
proc fcQTextEdit_setLineWrapMode(self: pointer, mode: cint): void {.importc: "QTextEdit_setLineWrapMode".}
proc fcQTextEdit_lineWrapColumnOrWidth(self: pointer, ): cint {.importc: "QTextEdit_lineWrapColumnOrWidth".}
proc fcQTextEdit_setLineWrapColumnOrWidth(self: pointer, w: cint): void {.importc: "QTextEdit_setLineWrapColumnOrWidth".}
proc fcQTextEdit_wordWrapMode(self: pointer, ): cint {.importc: "QTextEdit_wordWrapMode".}
proc fcQTextEdit_setWordWrapMode(self: pointer, policy: cint): void {.importc: "QTextEdit_setWordWrapMode".}
proc fcQTextEdit_find(self: pointer, exp: struct_miqt_string): bool {.importc: "QTextEdit_find".}
proc fcQTextEdit_findWithExp(self: pointer, exp: pointer): bool {.importc: "QTextEdit_findWithExp".}
proc fcQTextEdit_toPlainText(self: pointer, ): struct_miqt_string {.importc: "QTextEdit_toPlainText".}
proc fcQTextEdit_toHtml(self: pointer, ): struct_miqt_string {.importc: "QTextEdit_toHtml".}
proc fcQTextEdit_toMarkdown(self: pointer, ): struct_miqt_string {.importc: "QTextEdit_toMarkdown".}
proc fcQTextEdit_ensureCursorVisible(self: pointer, ): void {.importc: "QTextEdit_ensureCursorVisible".}
proc fcQTextEdit_loadResource(self: pointer, typeVal: cint, name: pointer): pointer {.importc: "QTextEdit_loadResource".}
proc fcQTextEdit_createStandardContextMenu(self: pointer, ): pointer {.importc: "QTextEdit_createStandardContextMenu".}
proc fcQTextEdit_createStandardContextMenuWithPosition(self: pointer, position: pointer): pointer {.importc: "QTextEdit_createStandardContextMenuWithPosition".}
proc fcQTextEdit_cursorForPosition(self: pointer, pos: pointer): pointer {.importc: "QTextEdit_cursorForPosition".}
proc fcQTextEdit_cursorRect(self: pointer, cursor: pointer): pointer {.importc: "QTextEdit_cursorRect".}
proc fcQTextEdit_cursorRect2(self: pointer, ): pointer {.importc: "QTextEdit_cursorRect2".}
proc fcQTextEdit_anchorAt(self: pointer, pos: pointer): struct_miqt_string {.importc: "QTextEdit_anchorAt".}
proc fcQTextEdit_overwriteMode(self: pointer, ): bool {.importc: "QTextEdit_overwriteMode".}
proc fcQTextEdit_setOverwriteMode(self: pointer, overwrite: bool): void {.importc: "QTextEdit_setOverwriteMode".}
proc fcQTextEdit_tabStopDistance(self: pointer, ): float64 {.importc: "QTextEdit_tabStopDistance".}
proc fcQTextEdit_setTabStopDistance(self: pointer, distance: float64): void {.importc: "QTextEdit_setTabStopDistance".}
proc fcQTextEdit_cursorWidth(self: pointer, ): cint {.importc: "QTextEdit_cursorWidth".}
proc fcQTextEdit_setCursorWidth(self: pointer, width: cint): void {.importc: "QTextEdit_setCursorWidth".}
proc fcQTextEdit_acceptRichText(self: pointer, ): bool {.importc: "QTextEdit_acceptRichText".}
proc fcQTextEdit_setAcceptRichText(self: pointer, accept: bool): void {.importc: "QTextEdit_setAcceptRichText".}
proc fcQTextEdit_setExtraSelections(self: pointer, selections: struct_miqt_array): void {.importc: "QTextEdit_setExtraSelections".}
proc fcQTextEdit_extraSelections(self: pointer, ): struct_miqt_array {.importc: "QTextEdit_extraSelections".}
proc fcQTextEdit_moveCursor(self: pointer, operation: cint): void {.importc: "QTextEdit_moveCursor".}
proc fcQTextEdit_canPaste(self: pointer, ): bool {.importc: "QTextEdit_canPaste".}
proc fcQTextEdit_print(self: pointer, printer: pointer): void {.importc: "QTextEdit_print".}
proc fcQTextEdit_inputMethodQuery(self: pointer, property: cint): pointer {.importc: "QTextEdit_inputMethodQuery".}
proc fcQTextEdit_inputMethodQuery2(self: pointer, query: cint, argument: pointer): pointer {.importc: "QTextEdit_inputMethodQuery2".}
proc fcQTextEdit_setFontPointSize(self: pointer, s: float64): void {.importc: "QTextEdit_setFontPointSize".}
proc fcQTextEdit_setFontFamily(self: pointer, fontFamily: struct_miqt_string): void {.importc: "QTextEdit_setFontFamily".}
proc fcQTextEdit_setFontWeight(self: pointer, w: cint): void {.importc: "QTextEdit_setFontWeight".}
proc fcQTextEdit_setFontUnderline(self: pointer, b: bool): void {.importc: "QTextEdit_setFontUnderline".}
proc fcQTextEdit_setFontItalic(self: pointer, b: bool): void {.importc: "QTextEdit_setFontItalic".}
proc fcQTextEdit_setTextColor(self: pointer, c: pointer): void {.importc: "QTextEdit_setTextColor".}
proc fcQTextEdit_setTextBackgroundColor(self: pointer, c: pointer): void {.importc: "QTextEdit_setTextBackgroundColor".}
proc fcQTextEdit_setCurrentFont(self: pointer, f: pointer): void {.importc: "QTextEdit_setCurrentFont".}
proc fcQTextEdit_setAlignment(self: pointer, a: cint): void {.importc: "QTextEdit_setAlignment".}
proc fcQTextEdit_setPlainText(self: pointer, text: struct_miqt_string): void {.importc: "QTextEdit_setPlainText".}
proc fcQTextEdit_setHtml(self: pointer, text: struct_miqt_string): void {.importc: "QTextEdit_setHtml".}
proc fcQTextEdit_setMarkdown(self: pointer, markdown: struct_miqt_string): void {.importc: "QTextEdit_setMarkdown".}
proc fcQTextEdit_setText(self: pointer, text: struct_miqt_string): void {.importc: "QTextEdit_setText".}
proc fcQTextEdit_cut(self: pointer, ): void {.importc: "QTextEdit_cut".}
proc fcQTextEdit_copy(self: pointer, ): void {.importc: "QTextEdit_copy".}
proc fcQTextEdit_paste(self: pointer, ): void {.importc: "QTextEdit_paste".}
proc fcQTextEdit_undo(self: pointer, ): void {.importc: "QTextEdit_undo".}
proc fcQTextEdit_redo(self: pointer, ): void {.importc: "QTextEdit_redo".}
proc fcQTextEdit_clear(self: pointer, ): void {.importc: "QTextEdit_clear".}
proc fcQTextEdit_selectAll(self: pointer, ): void {.importc: "QTextEdit_selectAll".}
proc fcQTextEdit_insertPlainText(self: pointer, text: struct_miqt_string): void {.importc: "QTextEdit_insertPlainText".}
proc fcQTextEdit_insertHtml(self: pointer, text: struct_miqt_string): void {.importc: "QTextEdit_insertHtml".}
proc fcQTextEdit_append(self: pointer, text: struct_miqt_string): void {.importc: "QTextEdit_append".}
proc fcQTextEdit_scrollToAnchor(self: pointer, name: struct_miqt_string): void {.importc: "QTextEdit_scrollToAnchor".}
proc fcQTextEdit_zoomIn(self: pointer, ): void {.importc: "QTextEdit_zoomIn".}
proc fcQTextEdit_zoomOut(self: pointer, ): void {.importc: "QTextEdit_zoomOut".}
proc fcQTextEdit_textChanged(self: pointer, ): void {.importc: "QTextEdit_textChanged".}
proc fcQTextEdit_connect_textChanged(self: pointer, slot: int) {.importc: "QTextEdit_connect_textChanged".}
proc fcQTextEdit_undoAvailable(self: pointer, b: bool): void {.importc: "QTextEdit_undoAvailable".}
proc fcQTextEdit_connect_undoAvailable(self: pointer, slot: int) {.importc: "QTextEdit_connect_undoAvailable".}
proc fcQTextEdit_redoAvailable(self: pointer, b: bool): void {.importc: "QTextEdit_redoAvailable".}
proc fcQTextEdit_connect_redoAvailable(self: pointer, slot: int) {.importc: "QTextEdit_connect_redoAvailable".}
proc fcQTextEdit_currentCharFormatChanged(self: pointer, format: pointer): void {.importc: "QTextEdit_currentCharFormatChanged".}
proc fcQTextEdit_connect_currentCharFormatChanged(self: pointer, slot: int) {.importc: "QTextEdit_connect_currentCharFormatChanged".}
proc fcQTextEdit_copyAvailable(self: pointer, b: bool): void {.importc: "QTextEdit_copyAvailable".}
proc fcQTextEdit_connect_copyAvailable(self: pointer, slot: int) {.importc: "QTextEdit_connect_copyAvailable".}
proc fcQTextEdit_selectionChanged(self: pointer, ): void {.importc: "QTextEdit_selectionChanged".}
proc fcQTextEdit_connect_selectionChanged(self: pointer, slot: int) {.importc: "QTextEdit_connect_selectionChanged".}
proc fcQTextEdit_cursorPositionChanged(self: pointer, ): void {.importc: "QTextEdit_cursorPositionChanged".}
proc fcQTextEdit_connect_cursorPositionChanged(self: pointer, slot: int) {.importc: "QTextEdit_connect_cursorPositionChanged".}
proc fcQTextEdit_tr2(s: cstring, c: cstring): struct_miqt_string {.importc: "QTextEdit_tr2".}
proc fcQTextEdit_tr3(s: cstring, c: cstring, n: cint): struct_miqt_string {.importc: "QTextEdit_tr3".}
proc fcQTextEdit_find2(self: pointer, exp: struct_miqt_string, options: cint): bool {.importc: "QTextEdit_find2".}
proc fcQTextEdit_find22(self: pointer, exp: pointer, options: cint): bool {.importc: "QTextEdit_find22".}
proc fcQTextEdit_toMarkdown1(self: pointer, features: cint): struct_miqt_string {.importc: "QTextEdit_toMarkdown1".}
proc fcQTextEdit_moveCursor2(self: pointer, operation: cint, mode: cint): void {.importc: "QTextEdit_moveCursor2".}
proc fcQTextEdit_zoomIn1(self: pointer, range: cint): void {.importc: "QTextEdit_zoomIn1".}
proc fcQTextEdit_zoomOut1(self: pointer, range: cint): void {.importc: "QTextEdit_zoomOut1".}
proc fQTextEdit_virtualbase_metaObject(self: pointer, ): pointer{.importc: "QTextEdit_virtualbase_metaObject".}
proc fcQTextEdit_override_virtual_metaObject(self: pointer, slot: int) {.importc: "QTextEdit_override_virtual_metaObject".}
proc fQTextEdit_virtualbase_metacast(self: pointer, param1: cstring): pointer{.importc: "QTextEdit_virtualbase_metacast".}
proc fcQTextEdit_override_virtual_metacast(self: pointer, slot: int) {.importc: "QTextEdit_override_virtual_metacast".}
proc fQTextEdit_virtualbase_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint{.importc: "QTextEdit_virtualbase_metacall".}
proc fcQTextEdit_override_virtual_metacall(self: pointer, slot: int) {.importc: "QTextEdit_override_virtual_metacall".}
proc fQTextEdit_virtualbase_loadResource(self: pointer, typeVal: cint, name: pointer): pointer{.importc: "QTextEdit_virtualbase_loadResource".}
proc fcQTextEdit_override_virtual_loadResource(self: pointer, slot: int) {.importc: "QTextEdit_override_virtual_loadResource".}
proc fQTextEdit_virtualbase_inputMethodQuery(self: pointer, property: cint): pointer{.importc: "QTextEdit_virtualbase_inputMethodQuery".}
proc fcQTextEdit_override_virtual_inputMethodQuery(self: pointer, slot: int) {.importc: "QTextEdit_override_virtual_inputMethodQuery".}
proc fQTextEdit_virtualbase_event(self: pointer, e: pointer): bool{.importc: "QTextEdit_virtualbase_event".}
proc fcQTextEdit_override_virtual_event(self: pointer, slot: int) {.importc: "QTextEdit_override_virtual_event".}
proc fQTextEdit_virtualbase_timerEvent(self: pointer, e: pointer): void{.importc: "QTextEdit_virtualbase_timerEvent".}
proc fcQTextEdit_override_virtual_timerEvent(self: pointer, slot: int) {.importc: "QTextEdit_override_virtual_timerEvent".}
proc fQTextEdit_virtualbase_keyPressEvent(self: pointer, e: pointer): void{.importc: "QTextEdit_virtualbase_keyPressEvent".}
proc fcQTextEdit_override_virtual_keyPressEvent(self: pointer, slot: int) {.importc: "QTextEdit_override_virtual_keyPressEvent".}
proc fQTextEdit_virtualbase_keyReleaseEvent(self: pointer, e: pointer): void{.importc: "QTextEdit_virtualbase_keyReleaseEvent".}
proc fcQTextEdit_override_virtual_keyReleaseEvent(self: pointer, slot: int) {.importc: "QTextEdit_override_virtual_keyReleaseEvent".}
proc fQTextEdit_virtualbase_resizeEvent(self: pointer, e: pointer): void{.importc: "QTextEdit_virtualbase_resizeEvent".}
proc fcQTextEdit_override_virtual_resizeEvent(self: pointer, slot: int) {.importc: "QTextEdit_override_virtual_resizeEvent".}
proc fQTextEdit_virtualbase_paintEvent(self: pointer, e: pointer): void{.importc: "QTextEdit_virtualbase_paintEvent".}
proc fcQTextEdit_override_virtual_paintEvent(self: pointer, slot: int) {.importc: "QTextEdit_override_virtual_paintEvent".}
proc fQTextEdit_virtualbase_mousePressEvent(self: pointer, e: pointer): void{.importc: "QTextEdit_virtualbase_mousePressEvent".}
proc fcQTextEdit_override_virtual_mousePressEvent(self: pointer, slot: int) {.importc: "QTextEdit_override_virtual_mousePressEvent".}
proc fQTextEdit_virtualbase_mouseMoveEvent(self: pointer, e: pointer): void{.importc: "QTextEdit_virtualbase_mouseMoveEvent".}
proc fcQTextEdit_override_virtual_mouseMoveEvent(self: pointer, slot: int) {.importc: "QTextEdit_override_virtual_mouseMoveEvent".}
proc fQTextEdit_virtualbase_mouseReleaseEvent(self: pointer, e: pointer): void{.importc: "QTextEdit_virtualbase_mouseReleaseEvent".}
proc fcQTextEdit_override_virtual_mouseReleaseEvent(self: pointer, slot: int) {.importc: "QTextEdit_override_virtual_mouseReleaseEvent".}
proc fQTextEdit_virtualbase_mouseDoubleClickEvent(self: pointer, e: pointer): void{.importc: "QTextEdit_virtualbase_mouseDoubleClickEvent".}
proc fcQTextEdit_override_virtual_mouseDoubleClickEvent(self: pointer, slot: int) {.importc: "QTextEdit_override_virtual_mouseDoubleClickEvent".}
proc fQTextEdit_virtualbase_focusNextPrevChild(self: pointer, next: bool): bool{.importc: "QTextEdit_virtualbase_focusNextPrevChild".}
proc fcQTextEdit_override_virtual_focusNextPrevChild(self: pointer, slot: int) {.importc: "QTextEdit_override_virtual_focusNextPrevChild".}
proc fQTextEdit_virtualbase_contextMenuEvent(self: pointer, e: pointer): void{.importc: "QTextEdit_virtualbase_contextMenuEvent".}
proc fcQTextEdit_override_virtual_contextMenuEvent(self: pointer, slot: int) {.importc: "QTextEdit_override_virtual_contextMenuEvent".}
proc fQTextEdit_virtualbase_dragEnterEvent(self: pointer, e: pointer): void{.importc: "QTextEdit_virtualbase_dragEnterEvent".}
proc fcQTextEdit_override_virtual_dragEnterEvent(self: pointer, slot: int) {.importc: "QTextEdit_override_virtual_dragEnterEvent".}
proc fQTextEdit_virtualbase_dragLeaveEvent(self: pointer, e: pointer): void{.importc: "QTextEdit_virtualbase_dragLeaveEvent".}
proc fcQTextEdit_override_virtual_dragLeaveEvent(self: pointer, slot: int) {.importc: "QTextEdit_override_virtual_dragLeaveEvent".}
proc fQTextEdit_virtualbase_dragMoveEvent(self: pointer, e: pointer): void{.importc: "QTextEdit_virtualbase_dragMoveEvent".}
proc fcQTextEdit_override_virtual_dragMoveEvent(self: pointer, slot: int) {.importc: "QTextEdit_override_virtual_dragMoveEvent".}
proc fQTextEdit_virtualbase_dropEvent(self: pointer, e: pointer): void{.importc: "QTextEdit_virtualbase_dropEvent".}
proc fcQTextEdit_override_virtual_dropEvent(self: pointer, slot: int) {.importc: "QTextEdit_override_virtual_dropEvent".}
proc fQTextEdit_virtualbase_focusInEvent(self: pointer, e: pointer): void{.importc: "QTextEdit_virtualbase_focusInEvent".}
proc fcQTextEdit_override_virtual_focusInEvent(self: pointer, slot: int) {.importc: "QTextEdit_override_virtual_focusInEvent".}
proc fQTextEdit_virtualbase_focusOutEvent(self: pointer, e: pointer): void{.importc: "QTextEdit_virtualbase_focusOutEvent".}
proc fcQTextEdit_override_virtual_focusOutEvent(self: pointer, slot: int) {.importc: "QTextEdit_override_virtual_focusOutEvent".}
proc fQTextEdit_virtualbase_showEvent(self: pointer, param1: pointer): void{.importc: "QTextEdit_virtualbase_showEvent".}
proc fcQTextEdit_override_virtual_showEvent(self: pointer, slot: int) {.importc: "QTextEdit_override_virtual_showEvent".}
proc fQTextEdit_virtualbase_changeEvent(self: pointer, e: pointer): void{.importc: "QTextEdit_virtualbase_changeEvent".}
proc fcQTextEdit_override_virtual_changeEvent(self: pointer, slot: int) {.importc: "QTextEdit_override_virtual_changeEvent".}
proc fQTextEdit_virtualbase_wheelEvent(self: pointer, e: pointer): void{.importc: "QTextEdit_virtualbase_wheelEvent".}
proc fcQTextEdit_override_virtual_wheelEvent(self: pointer, slot: int) {.importc: "QTextEdit_override_virtual_wheelEvent".}
proc fQTextEdit_virtualbase_createMimeDataFromSelection(self: pointer, ): pointer{.importc: "QTextEdit_virtualbase_createMimeDataFromSelection".}
proc fcQTextEdit_override_virtual_createMimeDataFromSelection(self: pointer, slot: int) {.importc: "QTextEdit_override_virtual_createMimeDataFromSelection".}
proc fQTextEdit_virtualbase_canInsertFromMimeData(self: pointer, source: pointer): bool{.importc: "QTextEdit_virtualbase_canInsertFromMimeData".}
proc fcQTextEdit_override_virtual_canInsertFromMimeData(self: pointer, slot: int) {.importc: "QTextEdit_override_virtual_canInsertFromMimeData".}
proc fQTextEdit_virtualbase_insertFromMimeData(self: pointer, source: pointer): void{.importc: "QTextEdit_virtualbase_insertFromMimeData".}
proc fcQTextEdit_override_virtual_insertFromMimeData(self: pointer, slot: int) {.importc: "QTextEdit_override_virtual_insertFromMimeData".}
proc fQTextEdit_virtualbase_inputMethodEvent(self: pointer, param1: pointer): void{.importc: "QTextEdit_virtualbase_inputMethodEvent".}
proc fcQTextEdit_override_virtual_inputMethodEvent(self: pointer, slot: int) {.importc: "QTextEdit_override_virtual_inputMethodEvent".}
proc fQTextEdit_virtualbase_scrollContentsBy(self: pointer, dx: cint, dy: cint): void{.importc: "QTextEdit_virtualbase_scrollContentsBy".}
proc fcQTextEdit_override_virtual_scrollContentsBy(self: pointer, slot: int) {.importc: "QTextEdit_override_virtual_scrollContentsBy".}
proc fQTextEdit_virtualbase_doSetTextCursor(self: pointer, cursor: pointer): void{.importc: "QTextEdit_virtualbase_doSetTextCursor".}
proc fcQTextEdit_override_virtual_doSetTextCursor(self: pointer, slot: int) {.importc: "QTextEdit_override_virtual_doSetTextCursor".}
proc fQTextEdit_virtualbase_minimumSizeHint(self: pointer, ): pointer{.importc: "QTextEdit_virtualbase_minimumSizeHint".}
proc fcQTextEdit_override_virtual_minimumSizeHint(self: pointer, slot: int) {.importc: "QTextEdit_override_virtual_minimumSizeHint".}
proc fQTextEdit_virtualbase_sizeHint(self: pointer, ): pointer{.importc: "QTextEdit_virtualbase_sizeHint".}
proc fcQTextEdit_override_virtual_sizeHint(self: pointer, slot: int) {.importc: "QTextEdit_override_virtual_sizeHint".}
proc fQTextEdit_virtualbase_setupViewport(self: pointer, viewport: pointer): void{.importc: "QTextEdit_virtualbase_setupViewport".}
proc fcQTextEdit_override_virtual_setupViewport(self: pointer, slot: int) {.importc: "QTextEdit_override_virtual_setupViewport".}
proc fQTextEdit_virtualbase_eventFilter(self: pointer, param1: pointer, param2: pointer): bool{.importc: "QTextEdit_virtualbase_eventFilter".}
proc fcQTextEdit_override_virtual_eventFilter(self: pointer, slot: int) {.importc: "QTextEdit_override_virtual_eventFilter".}
proc fQTextEdit_virtualbase_viewportEvent(self: pointer, param1: pointer): bool{.importc: "QTextEdit_virtualbase_viewportEvent".}
proc fcQTextEdit_override_virtual_viewportEvent(self: pointer, slot: int) {.importc: "QTextEdit_override_virtual_viewportEvent".}
proc fQTextEdit_virtualbase_viewportSizeHint(self: pointer, ): pointer{.importc: "QTextEdit_virtualbase_viewportSizeHint".}
proc fcQTextEdit_override_virtual_viewportSizeHint(self: pointer, slot: int) {.importc: "QTextEdit_override_virtual_viewportSizeHint".}
proc fQTextEdit_virtualbase_initStyleOption(self: pointer, option: pointer): void{.importc: "QTextEdit_virtualbase_initStyleOption".}
proc fcQTextEdit_override_virtual_initStyleOption(self: pointer, slot: int) {.importc: "QTextEdit_override_virtual_initStyleOption".}
proc fQTextEdit_virtualbase_devType(self: pointer, ): cint{.importc: "QTextEdit_virtualbase_devType".}
proc fcQTextEdit_override_virtual_devType(self: pointer, slot: int) {.importc: "QTextEdit_override_virtual_devType".}
proc fQTextEdit_virtualbase_setVisible(self: pointer, visible: bool): void{.importc: "QTextEdit_virtualbase_setVisible".}
proc fcQTextEdit_override_virtual_setVisible(self: pointer, slot: int) {.importc: "QTextEdit_override_virtual_setVisible".}
proc fQTextEdit_virtualbase_heightForWidth(self: pointer, param1: cint): cint{.importc: "QTextEdit_virtualbase_heightForWidth".}
proc fcQTextEdit_override_virtual_heightForWidth(self: pointer, slot: int) {.importc: "QTextEdit_override_virtual_heightForWidth".}
proc fQTextEdit_virtualbase_hasHeightForWidth(self: pointer, ): bool{.importc: "QTextEdit_virtualbase_hasHeightForWidth".}
proc fcQTextEdit_override_virtual_hasHeightForWidth(self: pointer, slot: int) {.importc: "QTextEdit_override_virtual_hasHeightForWidth".}
proc fQTextEdit_virtualbase_paintEngine(self: pointer, ): pointer{.importc: "QTextEdit_virtualbase_paintEngine".}
proc fcQTextEdit_override_virtual_paintEngine(self: pointer, slot: int) {.importc: "QTextEdit_override_virtual_paintEngine".}
proc fQTextEdit_virtualbase_enterEvent(self: pointer, event: pointer): void{.importc: "QTextEdit_virtualbase_enterEvent".}
proc fcQTextEdit_override_virtual_enterEvent(self: pointer, slot: int) {.importc: "QTextEdit_override_virtual_enterEvent".}
proc fQTextEdit_virtualbase_leaveEvent(self: pointer, event: pointer): void{.importc: "QTextEdit_virtualbase_leaveEvent".}
proc fcQTextEdit_override_virtual_leaveEvent(self: pointer, slot: int) {.importc: "QTextEdit_override_virtual_leaveEvent".}
proc fQTextEdit_virtualbase_moveEvent(self: pointer, event: pointer): void{.importc: "QTextEdit_virtualbase_moveEvent".}
proc fcQTextEdit_override_virtual_moveEvent(self: pointer, slot: int) {.importc: "QTextEdit_override_virtual_moveEvent".}
proc fQTextEdit_virtualbase_closeEvent(self: pointer, event: pointer): void{.importc: "QTextEdit_virtualbase_closeEvent".}
proc fcQTextEdit_override_virtual_closeEvent(self: pointer, slot: int) {.importc: "QTextEdit_override_virtual_closeEvent".}
proc fQTextEdit_virtualbase_tabletEvent(self: pointer, event: pointer): void{.importc: "QTextEdit_virtualbase_tabletEvent".}
proc fcQTextEdit_override_virtual_tabletEvent(self: pointer, slot: int) {.importc: "QTextEdit_override_virtual_tabletEvent".}
proc fQTextEdit_virtualbase_actionEvent(self: pointer, event: pointer): void{.importc: "QTextEdit_virtualbase_actionEvent".}
proc fcQTextEdit_override_virtual_actionEvent(self: pointer, slot: int) {.importc: "QTextEdit_override_virtual_actionEvent".}
proc fQTextEdit_virtualbase_hideEvent(self: pointer, event: pointer): void{.importc: "QTextEdit_virtualbase_hideEvent".}
proc fcQTextEdit_override_virtual_hideEvent(self: pointer, slot: int) {.importc: "QTextEdit_override_virtual_hideEvent".}
proc fQTextEdit_virtualbase_nativeEvent(self: pointer, eventType: struct_miqt_string, message: pointer, resultVal: ptr uint): bool{.importc: "QTextEdit_virtualbase_nativeEvent".}
proc fcQTextEdit_override_virtual_nativeEvent(self: pointer, slot: int) {.importc: "QTextEdit_override_virtual_nativeEvent".}
proc fQTextEdit_virtualbase_metric(self: pointer, param1: cint): cint{.importc: "QTextEdit_virtualbase_metric".}
proc fcQTextEdit_override_virtual_metric(self: pointer, slot: int) {.importc: "QTextEdit_override_virtual_metric".}
proc fQTextEdit_virtualbase_initPainter(self: pointer, painter: pointer): void{.importc: "QTextEdit_virtualbase_initPainter".}
proc fcQTextEdit_override_virtual_initPainter(self: pointer, slot: int) {.importc: "QTextEdit_override_virtual_initPainter".}
proc fQTextEdit_virtualbase_redirected(self: pointer, offset: pointer): pointer{.importc: "QTextEdit_virtualbase_redirected".}
proc fcQTextEdit_override_virtual_redirected(self: pointer, slot: int) {.importc: "QTextEdit_override_virtual_redirected".}
proc fQTextEdit_virtualbase_sharedPainter(self: pointer, ): pointer{.importc: "QTextEdit_virtualbase_sharedPainter".}
proc fcQTextEdit_override_virtual_sharedPainter(self: pointer, slot: int) {.importc: "QTextEdit_override_virtual_sharedPainter".}
proc fQTextEdit_virtualbase_childEvent(self: pointer, event: pointer): void{.importc: "QTextEdit_virtualbase_childEvent".}
proc fcQTextEdit_override_virtual_childEvent(self: pointer, slot: int) {.importc: "QTextEdit_override_virtual_childEvent".}
proc fQTextEdit_virtualbase_customEvent(self: pointer, event: pointer): void{.importc: "QTextEdit_virtualbase_customEvent".}
proc fcQTextEdit_override_virtual_customEvent(self: pointer, slot: int) {.importc: "QTextEdit_override_virtual_customEvent".}
proc fQTextEdit_virtualbase_connectNotify(self: pointer, signal: pointer): void{.importc: "QTextEdit_virtualbase_connectNotify".}
proc fcQTextEdit_override_virtual_connectNotify(self: pointer, slot: int) {.importc: "QTextEdit_override_virtual_connectNotify".}
proc fQTextEdit_virtualbase_disconnectNotify(self: pointer, signal: pointer): void{.importc: "QTextEdit_virtualbase_disconnectNotify".}
proc fcQTextEdit_override_virtual_disconnectNotify(self: pointer, slot: int) {.importc: "QTextEdit_override_virtual_disconnectNotify".}
proc fcQTextEdit_staticMetaObject(): pointer {.importc: "QTextEdit_staticMetaObject".}
proc fcQTextEdit_delete(self: pointer) {.importc: "QTextEdit_delete".}
proc fcQTextEditExtraSelection_new(param1: pointer): ptr cQTextEditExtraSelection {.importc: "QTextEdit__ExtraSelection_new".}
proc fcQTextEditExtraSelection_operatorAssign(self: pointer, param1: pointer): void {.importc: "QTextEdit__ExtraSelection_operatorAssign".}
proc fcQTextEditExtraSelection_delete(self: pointer) {.importc: "QTextEdit__ExtraSelection_delete".}


func init*(T: type gen_qtextedit_types.QTextEdit, h: ptr cQTextEdit): gen_qtextedit_types.QTextEdit =
  T(h: h)
proc create*(T: type gen_qtextedit_types.QTextEdit, parent: gen_qwidget_types.QWidget): gen_qtextedit_types.QTextEdit =
  gen_qtextedit_types.QTextEdit.init(fcQTextEdit_new(parent.h))

proc create*(T: type gen_qtextedit_types.QTextEdit, ): gen_qtextedit_types.QTextEdit =
  gen_qtextedit_types.QTextEdit.init(fcQTextEdit_new2())

proc create*(T: type gen_qtextedit_types.QTextEdit, text: string): gen_qtextedit_types.QTextEdit =
  gen_qtextedit_types.QTextEdit.init(fcQTextEdit_new3(struct_miqt_string(data: text, len: csize_t(len(text)))))

proc create*(T: type gen_qtextedit_types.QTextEdit, text: string, parent: gen_qwidget_types.QWidget): gen_qtextedit_types.QTextEdit =
  gen_qtextedit_types.QTextEdit.init(fcQTextEdit_new4(struct_miqt_string(data: text, len: csize_t(len(text))), parent.h))

proc metaObject*(self: gen_qtextedit_types.QTextEdit, ): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQTextEdit_metaObject(self.h))

proc metacast*(self: gen_qtextedit_types.QTextEdit, param1: cstring): pointer =
  fcQTextEdit_metacast(self.h, param1)

proc metacall*(self: gen_qtextedit_types.QTextEdit, param1: cint, param2: cint, param3: pointer): cint =
  fcQTextEdit_metacall(self.h, cint(param1), param2, param3)

proc tr*(_: type gen_qtextedit_types.QTextEdit, s: cstring): string =
  let v_ms = fcQTextEdit_tr(s)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc setDocument*(self: gen_qtextedit_types.QTextEdit, document: gen_qtextdocument_types.QTextDocument): void =
  fcQTextEdit_setDocument(self.h, document.h)

proc document*(self: gen_qtextedit_types.QTextEdit, ): gen_qtextdocument_types.QTextDocument =
  gen_qtextdocument_types.QTextDocument(h: fcQTextEdit_document(self.h))

proc setPlaceholderText*(self: gen_qtextedit_types.QTextEdit, placeholderText: string): void =
  fcQTextEdit_setPlaceholderText(self.h, struct_miqt_string(data: placeholderText, len: csize_t(len(placeholderText))))

proc placeholderText*(self: gen_qtextedit_types.QTextEdit, ): string =
  let v_ms = fcQTextEdit_placeholderText(self.h)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc setTextCursor*(self: gen_qtextedit_types.QTextEdit, cursor: gen_qtextcursor_types.QTextCursor): void =
  fcQTextEdit_setTextCursor(self.h, cursor.h)

proc textCursor*(self: gen_qtextedit_types.QTextEdit, ): gen_qtextcursor_types.QTextCursor =
  gen_qtextcursor_types.QTextCursor(h: fcQTextEdit_textCursor(self.h))

proc isReadOnly*(self: gen_qtextedit_types.QTextEdit, ): bool =
  fcQTextEdit_isReadOnly(self.h)

proc setReadOnly*(self: gen_qtextedit_types.QTextEdit, ro: bool): void =
  fcQTextEdit_setReadOnly(self.h, ro)

proc setTextInteractionFlags*(self: gen_qtextedit_types.QTextEdit, flags: cint): void =
  fcQTextEdit_setTextInteractionFlags(self.h, cint(flags))

proc textInteractionFlags*(self: gen_qtextedit_types.QTextEdit, ): cint =
  cint(fcQTextEdit_textInteractionFlags(self.h))

proc fontPointSize*(self: gen_qtextedit_types.QTextEdit, ): float64 =
  fcQTextEdit_fontPointSize(self.h)

proc fontFamily*(self: gen_qtextedit_types.QTextEdit, ): string =
  let v_ms = fcQTextEdit_fontFamily(self.h)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc fontWeight*(self: gen_qtextedit_types.QTextEdit, ): cint =
  fcQTextEdit_fontWeight(self.h)

proc fontUnderline*(self: gen_qtextedit_types.QTextEdit, ): bool =
  fcQTextEdit_fontUnderline(self.h)

proc fontItalic*(self: gen_qtextedit_types.QTextEdit, ): bool =
  fcQTextEdit_fontItalic(self.h)

proc textColor*(self: gen_qtextedit_types.QTextEdit, ): gen_qcolor_types.QColor =
  gen_qcolor_types.QColor(h: fcQTextEdit_textColor(self.h))

proc textBackgroundColor*(self: gen_qtextedit_types.QTextEdit, ): gen_qcolor_types.QColor =
  gen_qcolor_types.QColor(h: fcQTextEdit_textBackgroundColor(self.h))

proc currentFont*(self: gen_qtextedit_types.QTextEdit, ): gen_qfont_types.QFont =
  gen_qfont_types.QFont(h: fcQTextEdit_currentFont(self.h))

proc alignment*(self: gen_qtextedit_types.QTextEdit, ): cint =
  cint(fcQTextEdit_alignment(self.h))

proc mergeCurrentCharFormat*(self: gen_qtextedit_types.QTextEdit, modifier: gen_qtextformat_types.QTextCharFormat): void =
  fcQTextEdit_mergeCurrentCharFormat(self.h, modifier.h)

proc setCurrentCharFormat*(self: gen_qtextedit_types.QTextEdit, format: gen_qtextformat_types.QTextCharFormat): void =
  fcQTextEdit_setCurrentCharFormat(self.h, format.h)

proc currentCharFormat*(self: gen_qtextedit_types.QTextEdit, ): gen_qtextformat_types.QTextCharFormat =
  gen_qtextformat_types.QTextCharFormat(h: fcQTextEdit_currentCharFormat(self.h))

proc autoFormatting*(self: gen_qtextedit_types.QTextEdit, ): cint =
  cint(fcQTextEdit_autoFormatting(self.h))

proc setAutoFormatting*(self: gen_qtextedit_types.QTextEdit, features: cint): void =
  fcQTextEdit_setAutoFormatting(self.h, cint(features))

proc tabChangesFocus*(self: gen_qtextedit_types.QTextEdit, ): bool =
  fcQTextEdit_tabChangesFocus(self.h)

proc setTabChangesFocus*(self: gen_qtextedit_types.QTextEdit, b: bool): void =
  fcQTextEdit_setTabChangesFocus(self.h, b)

proc setDocumentTitle*(self: gen_qtextedit_types.QTextEdit, title: string): void =
  fcQTextEdit_setDocumentTitle(self.h, struct_miqt_string(data: title, len: csize_t(len(title))))

proc documentTitle*(self: gen_qtextedit_types.QTextEdit, ): string =
  let v_ms = fcQTextEdit_documentTitle(self.h)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc isUndoRedoEnabled*(self: gen_qtextedit_types.QTextEdit, ): bool =
  fcQTextEdit_isUndoRedoEnabled(self.h)

proc setUndoRedoEnabled*(self: gen_qtextedit_types.QTextEdit, enable: bool): void =
  fcQTextEdit_setUndoRedoEnabled(self.h, enable)

proc lineWrapMode*(self: gen_qtextedit_types.QTextEdit, ): cint =
  cint(fcQTextEdit_lineWrapMode(self.h))

proc setLineWrapMode*(self: gen_qtextedit_types.QTextEdit, mode: cint): void =
  fcQTextEdit_setLineWrapMode(self.h, cint(mode))

proc lineWrapColumnOrWidth*(self: gen_qtextedit_types.QTextEdit, ): cint =
  fcQTextEdit_lineWrapColumnOrWidth(self.h)

proc setLineWrapColumnOrWidth*(self: gen_qtextedit_types.QTextEdit, w: cint): void =
  fcQTextEdit_setLineWrapColumnOrWidth(self.h, w)

proc wordWrapMode*(self: gen_qtextedit_types.QTextEdit, ): cint =
  cint(fcQTextEdit_wordWrapMode(self.h))

proc setWordWrapMode*(self: gen_qtextedit_types.QTextEdit, policy: cint): void =
  fcQTextEdit_setWordWrapMode(self.h, cint(policy))

proc find*(self: gen_qtextedit_types.QTextEdit, exp: string): bool =
  fcQTextEdit_find(self.h, struct_miqt_string(data: exp, len: csize_t(len(exp))))

proc find*(self: gen_qtextedit_types.QTextEdit, exp: gen_qregularexpression_types.QRegularExpression): bool =
  fcQTextEdit_findWithExp(self.h, exp.h)

proc toPlainText*(self: gen_qtextedit_types.QTextEdit, ): string =
  let v_ms = fcQTextEdit_toPlainText(self.h)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc toHtml*(self: gen_qtextedit_types.QTextEdit, ): string =
  let v_ms = fcQTextEdit_toHtml(self.h)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc toMarkdown*(self: gen_qtextedit_types.QTextEdit, ): string =
  let v_ms = fcQTextEdit_toMarkdown(self.h)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc ensureCursorVisible*(self: gen_qtextedit_types.QTextEdit, ): void =
  fcQTextEdit_ensureCursorVisible(self.h)

proc loadResource*(self: gen_qtextedit_types.QTextEdit, typeVal: cint, name: gen_qurl_types.QUrl): gen_qvariant_types.QVariant =
  gen_qvariant_types.QVariant(h: fcQTextEdit_loadResource(self.h, typeVal, name.h))

proc createStandardContextMenu*(self: gen_qtextedit_types.QTextEdit, ): gen_qmenu_types.QMenu =
  gen_qmenu_types.QMenu(h: fcQTextEdit_createStandardContextMenu(self.h))

proc createStandardContextMenu*(self: gen_qtextedit_types.QTextEdit, position: gen_qpoint_types.QPoint): gen_qmenu_types.QMenu =
  gen_qmenu_types.QMenu(h: fcQTextEdit_createStandardContextMenuWithPosition(self.h, position.h))

proc cursorForPosition*(self: gen_qtextedit_types.QTextEdit, pos: gen_qpoint_types.QPoint): gen_qtextcursor_types.QTextCursor =
  gen_qtextcursor_types.QTextCursor(h: fcQTextEdit_cursorForPosition(self.h, pos.h))

proc cursorRect*(self: gen_qtextedit_types.QTextEdit, cursor: gen_qtextcursor_types.QTextCursor): gen_qrect_types.QRect =
  gen_qrect_types.QRect(h: fcQTextEdit_cursorRect(self.h, cursor.h))

proc cursorRect*(self: gen_qtextedit_types.QTextEdit, ): gen_qrect_types.QRect =
  gen_qrect_types.QRect(h: fcQTextEdit_cursorRect2(self.h))

proc anchorAt*(self: gen_qtextedit_types.QTextEdit, pos: gen_qpoint_types.QPoint): string =
  let v_ms = fcQTextEdit_anchorAt(self.h, pos.h)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc overwriteMode*(self: gen_qtextedit_types.QTextEdit, ): bool =
  fcQTextEdit_overwriteMode(self.h)

proc setOverwriteMode*(self: gen_qtextedit_types.QTextEdit, overwrite: bool): void =
  fcQTextEdit_setOverwriteMode(self.h, overwrite)

proc tabStopDistance*(self: gen_qtextedit_types.QTextEdit, ): float64 =
  fcQTextEdit_tabStopDistance(self.h)

proc setTabStopDistance*(self: gen_qtextedit_types.QTextEdit, distance: float64): void =
  fcQTextEdit_setTabStopDistance(self.h, distance)

proc cursorWidth*(self: gen_qtextedit_types.QTextEdit, ): cint =
  fcQTextEdit_cursorWidth(self.h)

proc setCursorWidth*(self: gen_qtextedit_types.QTextEdit, width: cint): void =
  fcQTextEdit_setCursorWidth(self.h, width)

proc acceptRichText*(self: gen_qtextedit_types.QTextEdit, ): bool =
  fcQTextEdit_acceptRichText(self.h)

proc setAcceptRichText*(self: gen_qtextedit_types.QTextEdit, accept: bool): void =
  fcQTextEdit_setAcceptRichText(self.h, accept)

proc setExtraSelections*(self: gen_qtextedit_types.QTextEdit, selections: seq[gen_qtextedit_types.QTextEditExtraSelection]): void =
  var selections_CArray = newSeq[pointer](len(selections))
  for i in 0..<len(selections):
    selections_CArray[i] = selections[i].h

  fcQTextEdit_setExtraSelections(self.h, struct_miqt_array(len: csize_t(len(selections)), data: if len(selections) == 0: nil else: addr(selections_CArray[0])))

proc extraSelections*(self: gen_qtextedit_types.QTextEdit, ): seq[gen_qtextedit_types.QTextEditExtraSelection] =
  var v_ma = fcQTextEdit_extraSelections(self.h)
  var vx_ret = newSeq[gen_qtextedit_types.QTextEditExtraSelection](int(v_ma.len))
  let v_outCast = cast[ptr UncheckedArray[pointer]](v_ma.data)
  for i in 0 ..< v_ma.len:
    vx_ret[i] = gen_qtextedit_types.QTextEditExtraSelection(h: v_outCast[i])
  vx_ret

proc moveCursor*(self: gen_qtextedit_types.QTextEdit, operation: cint): void =
  fcQTextEdit_moveCursor(self.h, cint(operation))

proc canPaste*(self: gen_qtextedit_types.QTextEdit, ): bool =
  fcQTextEdit_canPaste(self.h)

proc print*(self: gen_qtextedit_types.QTextEdit, printer: gen_qpagedpaintdevice_types.QPagedPaintDevice): void =
  fcQTextEdit_print(self.h, printer.h)

proc inputMethodQuery*(self: gen_qtextedit_types.QTextEdit, property: cint): gen_qvariant_types.QVariant =
  gen_qvariant_types.QVariant(h: fcQTextEdit_inputMethodQuery(self.h, cint(property)))

proc inputMethodQuery*(self: gen_qtextedit_types.QTextEdit, query: cint, argument: gen_qvariant_types.QVariant): gen_qvariant_types.QVariant =
  gen_qvariant_types.QVariant(h: fcQTextEdit_inputMethodQuery2(self.h, cint(query), argument.h))

proc setFontPointSize*(self: gen_qtextedit_types.QTextEdit, s: float64): void =
  fcQTextEdit_setFontPointSize(self.h, s)

proc setFontFamily*(self: gen_qtextedit_types.QTextEdit, fontFamily: string): void =
  fcQTextEdit_setFontFamily(self.h, struct_miqt_string(data: fontFamily, len: csize_t(len(fontFamily))))

proc setFontWeight*(self: gen_qtextedit_types.QTextEdit, w: cint): void =
  fcQTextEdit_setFontWeight(self.h, w)

proc setFontUnderline*(self: gen_qtextedit_types.QTextEdit, b: bool): void =
  fcQTextEdit_setFontUnderline(self.h, b)

proc setFontItalic*(self: gen_qtextedit_types.QTextEdit, b: bool): void =
  fcQTextEdit_setFontItalic(self.h, b)

proc setTextColor*(self: gen_qtextedit_types.QTextEdit, c: gen_qcolor_types.QColor): void =
  fcQTextEdit_setTextColor(self.h, c.h)

proc setTextBackgroundColor*(self: gen_qtextedit_types.QTextEdit, c: gen_qcolor_types.QColor): void =
  fcQTextEdit_setTextBackgroundColor(self.h, c.h)

proc setCurrentFont*(self: gen_qtextedit_types.QTextEdit, f: gen_qfont_types.QFont): void =
  fcQTextEdit_setCurrentFont(self.h, f.h)

proc setAlignment*(self: gen_qtextedit_types.QTextEdit, a: cint): void =
  fcQTextEdit_setAlignment(self.h, cint(a))

proc setPlainText*(self: gen_qtextedit_types.QTextEdit, text: string): void =
  fcQTextEdit_setPlainText(self.h, struct_miqt_string(data: text, len: csize_t(len(text))))

proc setHtml*(self: gen_qtextedit_types.QTextEdit, text: string): void =
  fcQTextEdit_setHtml(self.h, struct_miqt_string(data: text, len: csize_t(len(text))))

proc setMarkdown*(self: gen_qtextedit_types.QTextEdit, markdown: string): void =
  fcQTextEdit_setMarkdown(self.h, struct_miqt_string(data: markdown, len: csize_t(len(markdown))))

proc setText*(self: gen_qtextedit_types.QTextEdit, text: string): void =
  fcQTextEdit_setText(self.h, struct_miqt_string(data: text, len: csize_t(len(text))))

proc cut*(self: gen_qtextedit_types.QTextEdit, ): void =
  fcQTextEdit_cut(self.h)

proc copy*(self: gen_qtextedit_types.QTextEdit, ): void =
  fcQTextEdit_copy(self.h)

proc paste*(self: gen_qtextedit_types.QTextEdit, ): void =
  fcQTextEdit_paste(self.h)

proc undo*(self: gen_qtextedit_types.QTextEdit, ): void =
  fcQTextEdit_undo(self.h)

proc redo*(self: gen_qtextedit_types.QTextEdit, ): void =
  fcQTextEdit_redo(self.h)

proc clear*(self: gen_qtextedit_types.QTextEdit, ): void =
  fcQTextEdit_clear(self.h)

proc selectAll*(self: gen_qtextedit_types.QTextEdit, ): void =
  fcQTextEdit_selectAll(self.h)

proc insertPlainText*(self: gen_qtextedit_types.QTextEdit, text: string): void =
  fcQTextEdit_insertPlainText(self.h, struct_miqt_string(data: text, len: csize_t(len(text))))

proc insertHtml*(self: gen_qtextedit_types.QTextEdit, text: string): void =
  fcQTextEdit_insertHtml(self.h, struct_miqt_string(data: text, len: csize_t(len(text))))

proc append*(self: gen_qtextedit_types.QTextEdit, text: string): void =
  fcQTextEdit_append(self.h, struct_miqt_string(data: text, len: csize_t(len(text))))

proc scrollToAnchor*(self: gen_qtextedit_types.QTextEdit, name: string): void =
  fcQTextEdit_scrollToAnchor(self.h, struct_miqt_string(data: name, len: csize_t(len(name))))

proc zoomIn*(self: gen_qtextedit_types.QTextEdit, ): void =
  fcQTextEdit_zoomIn(self.h)

proc zoomOut*(self: gen_qtextedit_types.QTextEdit, ): void =
  fcQTextEdit_zoomOut(self.h)

proc textChanged*(self: gen_qtextedit_types.QTextEdit, ): void =
  fcQTextEdit_textChanged(self.h)

type QTextEdittextChangedSlot* = proc()
proc miqt_exec_callback_QTextEdit_textChanged(slot: int) {.exportc.} =
  let nimfunc = cast[ptr QTextEdittextChangedSlot](cast[pointer](slot))
  nimfunc[]()

proc ontextChanged*(self: gen_qtextedit_types.QTextEdit, slot: QTextEdittextChangedSlot) =
  var tmp = new QTextEdittextChangedSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQTextEdit_connect_textChanged(self.h, cast[int](addr tmp[]))

proc undoAvailable*(self: gen_qtextedit_types.QTextEdit, b: bool): void =
  fcQTextEdit_undoAvailable(self.h, b)

type QTextEditundoAvailableSlot* = proc(b: bool)
proc miqt_exec_callback_QTextEdit_undoAvailable(slot: int, b: bool) {.exportc.} =
  let nimfunc = cast[ptr QTextEditundoAvailableSlot](cast[pointer](slot))
  let slotval1 = b

  nimfunc[](slotval1)

proc onundoAvailable*(self: gen_qtextedit_types.QTextEdit, slot: QTextEditundoAvailableSlot) =
  var tmp = new QTextEditundoAvailableSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQTextEdit_connect_undoAvailable(self.h, cast[int](addr tmp[]))

proc redoAvailable*(self: gen_qtextedit_types.QTextEdit, b: bool): void =
  fcQTextEdit_redoAvailable(self.h, b)

type QTextEditredoAvailableSlot* = proc(b: bool)
proc miqt_exec_callback_QTextEdit_redoAvailable(slot: int, b: bool) {.exportc.} =
  let nimfunc = cast[ptr QTextEditredoAvailableSlot](cast[pointer](slot))
  let slotval1 = b

  nimfunc[](slotval1)

proc onredoAvailable*(self: gen_qtextedit_types.QTextEdit, slot: QTextEditredoAvailableSlot) =
  var tmp = new QTextEditredoAvailableSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQTextEdit_connect_redoAvailable(self.h, cast[int](addr tmp[]))

proc currentCharFormatChanged*(self: gen_qtextedit_types.QTextEdit, format: gen_qtextformat_types.QTextCharFormat): void =
  fcQTextEdit_currentCharFormatChanged(self.h, format.h)

type QTextEditcurrentCharFormatChangedSlot* = proc(format: gen_qtextformat_types.QTextCharFormat)
proc miqt_exec_callback_QTextEdit_currentCharFormatChanged(slot: int, format: pointer) {.exportc.} =
  let nimfunc = cast[ptr QTextEditcurrentCharFormatChangedSlot](cast[pointer](slot))
  let slotval1 = gen_qtextformat_types.QTextCharFormat(h: format)

  nimfunc[](slotval1)

proc oncurrentCharFormatChanged*(self: gen_qtextedit_types.QTextEdit, slot: QTextEditcurrentCharFormatChangedSlot) =
  var tmp = new QTextEditcurrentCharFormatChangedSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQTextEdit_connect_currentCharFormatChanged(self.h, cast[int](addr tmp[]))

proc copyAvailable*(self: gen_qtextedit_types.QTextEdit, b: bool): void =
  fcQTextEdit_copyAvailable(self.h, b)

type QTextEditcopyAvailableSlot* = proc(b: bool)
proc miqt_exec_callback_QTextEdit_copyAvailable(slot: int, b: bool) {.exportc.} =
  let nimfunc = cast[ptr QTextEditcopyAvailableSlot](cast[pointer](slot))
  let slotval1 = b

  nimfunc[](slotval1)

proc oncopyAvailable*(self: gen_qtextedit_types.QTextEdit, slot: QTextEditcopyAvailableSlot) =
  var tmp = new QTextEditcopyAvailableSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQTextEdit_connect_copyAvailable(self.h, cast[int](addr tmp[]))

proc selectionChanged*(self: gen_qtextedit_types.QTextEdit, ): void =
  fcQTextEdit_selectionChanged(self.h)

type QTextEditselectionChangedSlot* = proc()
proc miqt_exec_callback_QTextEdit_selectionChanged(slot: int) {.exportc.} =
  let nimfunc = cast[ptr QTextEditselectionChangedSlot](cast[pointer](slot))
  nimfunc[]()

proc onselectionChanged*(self: gen_qtextedit_types.QTextEdit, slot: QTextEditselectionChangedSlot) =
  var tmp = new QTextEditselectionChangedSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQTextEdit_connect_selectionChanged(self.h, cast[int](addr tmp[]))

proc cursorPositionChanged*(self: gen_qtextedit_types.QTextEdit, ): void =
  fcQTextEdit_cursorPositionChanged(self.h)

type QTextEditcursorPositionChangedSlot* = proc()
proc miqt_exec_callback_QTextEdit_cursorPositionChanged(slot: int) {.exportc.} =
  let nimfunc = cast[ptr QTextEditcursorPositionChangedSlot](cast[pointer](slot))
  nimfunc[]()

proc oncursorPositionChanged*(self: gen_qtextedit_types.QTextEdit, slot: QTextEditcursorPositionChangedSlot) =
  var tmp = new QTextEditcursorPositionChangedSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQTextEdit_connect_cursorPositionChanged(self.h, cast[int](addr tmp[]))

proc tr*(_: type gen_qtextedit_types.QTextEdit, s: cstring, c: cstring): string =
  let v_ms = fcQTextEdit_tr2(s, c)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc tr*(_: type gen_qtextedit_types.QTextEdit, s: cstring, c: cstring, n: cint): string =
  let v_ms = fcQTextEdit_tr3(s, c, n)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc find*(self: gen_qtextedit_types.QTextEdit, exp: string, options: cint): bool =
  fcQTextEdit_find2(self.h, struct_miqt_string(data: exp, len: csize_t(len(exp))), cint(options))

proc find*(self: gen_qtextedit_types.QTextEdit, exp: gen_qregularexpression_types.QRegularExpression, options: cint): bool =
  fcQTextEdit_find22(self.h, exp.h, cint(options))

proc toMarkdown*(self: gen_qtextedit_types.QTextEdit, features: cint): string =
  let v_ms = fcQTextEdit_toMarkdown1(self.h, cint(features))
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc moveCursor*(self: gen_qtextedit_types.QTextEdit, operation: cint, mode: cint): void =
  fcQTextEdit_moveCursor2(self.h, cint(operation), cint(mode))

proc zoomIn*(self: gen_qtextedit_types.QTextEdit, range: cint): void =
  fcQTextEdit_zoomIn1(self.h, range)

proc zoomOut*(self: gen_qtextedit_types.QTextEdit, range: cint): void =
  fcQTextEdit_zoomOut1(self.h, range)

proc QTextEditmetaObject*(self: gen_qtextedit_types.QTextEdit, ): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fQTextEdit_virtualbase_metaObject(self.h))

type QTextEditmetaObjectProc* = proc(): gen_qobjectdefs_types.QMetaObject
proc onmetaObject*(self: gen_qtextedit_types.QTextEdit, slot: QTextEditmetaObjectProc) =
  # TODO check subclass
  var tmp = new QTextEditmetaObjectProc
  tmp[] = slot
  GC_ref(tmp)
  fcQTextEdit_override_virtual_metaObject(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QTextEdit_metaObject(self: ptr cQTextEdit, slot: int): pointer {.exportc: "miqt_exec_callback_QTextEdit_metaObject ".} =
  var nimfunc = cast[ptr QTextEditmetaObjectProc](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )

  virtualReturn.h
proc QTextEditmetacast*(self: gen_qtextedit_types.QTextEdit, param1: cstring): pointer =
  fQTextEdit_virtualbase_metacast(self.h, param1)

type QTextEditmetacastProc* = proc(param1: cstring): pointer
proc onmetacast*(self: gen_qtextedit_types.QTextEdit, slot: QTextEditmetacastProc) =
  # TODO check subclass
  var tmp = new QTextEditmetacastProc
  tmp[] = slot
  GC_ref(tmp)
  fcQTextEdit_override_virtual_metacast(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QTextEdit_metacast(self: ptr cQTextEdit, slot: int, param1: cstring): pointer {.exportc: "miqt_exec_callback_QTextEdit_metacast ".} =
  var nimfunc = cast[ptr QTextEditmetacastProc](cast[pointer](slot))
  let slotval1 = (param1)


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn
proc QTextEditmetacall*(self: gen_qtextedit_types.QTextEdit, param1: cint, param2: cint, param3: pointer): cint =
  fQTextEdit_virtualbase_metacall(self.h, cint(param1), param2, param3)

type QTextEditmetacallProc* = proc(param1: cint, param2: cint, param3: pointer): cint
proc onmetacall*(self: gen_qtextedit_types.QTextEdit, slot: QTextEditmetacallProc) =
  # TODO check subclass
  var tmp = new QTextEditmetacallProc
  tmp[] = slot
  GC_ref(tmp)
  fcQTextEdit_override_virtual_metacall(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QTextEdit_metacall(self: ptr cQTextEdit, slot: int, param1: cint, param2: cint, param3: pointer): cint {.exportc: "miqt_exec_callback_QTextEdit_metacall ".} =
  var nimfunc = cast[ptr QTextEditmetacallProc](cast[pointer](slot))
  let slotval1 = cint(param1)

  let slotval2 = param2

  let slotval3 = param3


  let virtualReturn = nimfunc[](slotval1, slotval2, slotval3 )

  virtualReturn
proc QTextEditloadResource*(self: gen_qtextedit_types.QTextEdit, typeVal: cint, name: gen_qurl_types.QUrl): gen_qvariant_types.QVariant =
  gen_qvariant_types.QVariant(h: fQTextEdit_virtualbase_loadResource(self.h, typeVal, name.h))

type QTextEditloadResourceProc* = proc(typeVal: cint, name: gen_qurl_types.QUrl): gen_qvariant_types.QVariant
proc onloadResource*(self: gen_qtextedit_types.QTextEdit, slot: QTextEditloadResourceProc) =
  # TODO check subclass
  var tmp = new QTextEditloadResourceProc
  tmp[] = slot
  GC_ref(tmp)
  fcQTextEdit_override_virtual_loadResource(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QTextEdit_loadResource(self: ptr cQTextEdit, slot: int, typeVal: cint, name: pointer): pointer {.exportc: "miqt_exec_callback_QTextEdit_loadResource ".} =
  var nimfunc = cast[ptr QTextEditloadResourceProc](cast[pointer](slot))
  let slotval1 = typeVal

  let slotval2 = gen_qurl_types.QUrl(h: name)


  let virtualReturn = nimfunc[](slotval1, slotval2 )

  virtualReturn.h
proc QTextEditinputMethodQuery*(self: gen_qtextedit_types.QTextEdit, property: cint): gen_qvariant_types.QVariant =
  gen_qvariant_types.QVariant(h: fQTextEdit_virtualbase_inputMethodQuery(self.h, cint(property)))

type QTextEditinputMethodQueryProc* = proc(property: cint): gen_qvariant_types.QVariant
proc oninputMethodQuery*(self: gen_qtextedit_types.QTextEdit, slot: QTextEditinputMethodQueryProc) =
  # TODO check subclass
  var tmp = new QTextEditinputMethodQueryProc
  tmp[] = slot
  GC_ref(tmp)
  fcQTextEdit_override_virtual_inputMethodQuery(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QTextEdit_inputMethodQuery(self: ptr cQTextEdit, slot: int, property: cint): pointer {.exportc: "miqt_exec_callback_QTextEdit_inputMethodQuery ".} =
  var nimfunc = cast[ptr QTextEditinputMethodQueryProc](cast[pointer](slot))
  let slotval1 = cint(property)


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn.h
proc QTextEditevent*(self: gen_qtextedit_types.QTextEdit, e: gen_qcoreevent_types.QEvent): bool =
  fQTextEdit_virtualbase_event(self.h, e.h)

type QTextEditeventProc* = proc(e: gen_qcoreevent_types.QEvent): bool
proc onevent*(self: gen_qtextedit_types.QTextEdit, slot: QTextEditeventProc) =
  # TODO check subclass
  var tmp = new QTextEditeventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQTextEdit_override_virtual_event(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QTextEdit_event(self: ptr cQTextEdit, slot: int, e: pointer): bool {.exportc: "miqt_exec_callback_QTextEdit_event ".} =
  var nimfunc = cast[ptr QTextEditeventProc](cast[pointer](slot))
  let slotval1 = gen_qcoreevent_types.QEvent(h: e)


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn
proc QTextEdittimerEvent*(self: gen_qtextedit_types.QTextEdit, e: gen_qcoreevent_types.QTimerEvent): void =
  fQTextEdit_virtualbase_timerEvent(self.h, e.h)

type QTextEdittimerEventProc* = proc(e: gen_qcoreevent_types.QTimerEvent): void
proc ontimerEvent*(self: gen_qtextedit_types.QTextEdit, slot: QTextEdittimerEventProc) =
  # TODO check subclass
  var tmp = new QTextEdittimerEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQTextEdit_override_virtual_timerEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QTextEdit_timerEvent(self: ptr cQTextEdit, slot: int, e: pointer): void {.exportc: "miqt_exec_callback_QTextEdit_timerEvent ".} =
  var nimfunc = cast[ptr QTextEdittimerEventProc](cast[pointer](slot))
  let slotval1 = gen_qcoreevent_types.QTimerEvent(h: e)


  nimfunc[](slotval1)
proc QTextEditkeyPressEvent*(self: gen_qtextedit_types.QTextEdit, e: gen_qevent_types.QKeyEvent): void =
  fQTextEdit_virtualbase_keyPressEvent(self.h, e.h)

type QTextEditkeyPressEventProc* = proc(e: gen_qevent_types.QKeyEvent): void
proc onkeyPressEvent*(self: gen_qtextedit_types.QTextEdit, slot: QTextEditkeyPressEventProc) =
  # TODO check subclass
  var tmp = new QTextEditkeyPressEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQTextEdit_override_virtual_keyPressEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QTextEdit_keyPressEvent(self: ptr cQTextEdit, slot: int, e: pointer): void {.exportc: "miqt_exec_callback_QTextEdit_keyPressEvent ".} =
  var nimfunc = cast[ptr QTextEditkeyPressEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QKeyEvent(h: e)


  nimfunc[](slotval1)
proc QTextEditkeyReleaseEvent*(self: gen_qtextedit_types.QTextEdit, e: gen_qevent_types.QKeyEvent): void =
  fQTextEdit_virtualbase_keyReleaseEvent(self.h, e.h)

type QTextEditkeyReleaseEventProc* = proc(e: gen_qevent_types.QKeyEvent): void
proc onkeyReleaseEvent*(self: gen_qtextedit_types.QTextEdit, slot: QTextEditkeyReleaseEventProc) =
  # TODO check subclass
  var tmp = new QTextEditkeyReleaseEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQTextEdit_override_virtual_keyReleaseEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QTextEdit_keyReleaseEvent(self: ptr cQTextEdit, slot: int, e: pointer): void {.exportc: "miqt_exec_callback_QTextEdit_keyReleaseEvent ".} =
  var nimfunc = cast[ptr QTextEditkeyReleaseEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QKeyEvent(h: e)


  nimfunc[](slotval1)
proc QTextEditresizeEvent*(self: gen_qtextedit_types.QTextEdit, e: gen_qevent_types.QResizeEvent): void =
  fQTextEdit_virtualbase_resizeEvent(self.h, e.h)

type QTextEditresizeEventProc* = proc(e: gen_qevent_types.QResizeEvent): void
proc onresizeEvent*(self: gen_qtextedit_types.QTextEdit, slot: QTextEditresizeEventProc) =
  # TODO check subclass
  var tmp = new QTextEditresizeEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQTextEdit_override_virtual_resizeEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QTextEdit_resizeEvent(self: ptr cQTextEdit, slot: int, e: pointer): void {.exportc: "miqt_exec_callback_QTextEdit_resizeEvent ".} =
  var nimfunc = cast[ptr QTextEditresizeEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QResizeEvent(h: e)


  nimfunc[](slotval1)
proc QTextEditpaintEvent*(self: gen_qtextedit_types.QTextEdit, e: gen_qevent_types.QPaintEvent): void =
  fQTextEdit_virtualbase_paintEvent(self.h, e.h)

type QTextEditpaintEventProc* = proc(e: gen_qevent_types.QPaintEvent): void
proc onpaintEvent*(self: gen_qtextedit_types.QTextEdit, slot: QTextEditpaintEventProc) =
  # TODO check subclass
  var tmp = new QTextEditpaintEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQTextEdit_override_virtual_paintEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QTextEdit_paintEvent(self: ptr cQTextEdit, slot: int, e: pointer): void {.exportc: "miqt_exec_callback_QTextEdit_paintEvent ".} =
  var nimfunc = cast[ptr QTextEditpaintEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QPaintEvent(h: e)


  nimfunc[](slotval1)
proc QTextEditmousePressEvent*(self: gen_qtextedit_types.QTextEdit, e: gen_qevent_types.QMouseEvent): void =
  fQTextEdit_virtualbase_mousePressEvent(self.h, e.h)

type QTextEditmousePressEventProc* = proc(e: gen_qevent_types.QMouseEvent): void
proc onmousePressEvent*(self: gen_qtextedit_types.QTextEdit, slot: QTextEditmousePressEventProc) =
  # TODO check subclass
  var tmp = new QTextEditmousePressEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQTextEdit_override_virtual_mousePressEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QTextEdit_mousePressEvent(self: ptr cQTextEdit, slot: int, e: pointer): void {.exportc: "miqt_exec_callback_QTextEdit_mousePressEvent ".} =
  var nimfunc = cast[ptr QTextEditmousePressEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QMouseEvent(h: e)


  nimfunc[](slotval1)
proc QTextEditmouseMoveEvent*(self: gen_qtextedit_types.QTextEdit, e: gen_qevent_types.QMouseEvent): void =
  fQTextEdit_virtualbase_mouseMoveEvent(self.h, e.h)

type QTextEditmouseMoveEventProc* = proc(e: gen_qevent_types.QMouseEvent): void
proc onmouseMoveEvent*(self: gen_qtextedit_types.QTextEdit, slot: QTextEditmouseMoveEventProc) =
  # TODO check subclass
  var tmp = new QTextEditmouseMoveEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQTextEdit_override_virtual_mouseMoveEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QTextEdit_mouseMoveEvent(self: ptr cQTextEdit, slot: int, e: pointer): void {.exportc: "miqt_exec_callback_QTextEdit_mouseMoveEvent ".} =
  var nimfunc = cast[ptr QTextEditmouseMoveEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QMouseEvent(h: e)


  nimfunc[](slotval1)
proc QTextEditmouseReleaseEvent*(self: gen_qtextedit_types.QTextEdit, e: gen_qevent_types.QMouseEvent): void =
  fQTextEdit_virtualbase_mouseReleaseEvent(self.h, e.h)

type QTextEditmouseReleaseEventProc* = proc(e: gen_qevent_types.QMouseEvent): void
proc onmouseReleaseEvent*(self: gen_qtextedit_types.QTextEdit, slot: QTextEditmouseReleaseEventProc) =
  # TODO check subclass
  var tmp = new QTextEditmouseReleaseEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQTextEdit_override_virtual_mouseReleaseEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QTextEdit_mouseReleaseEvent(self: ptr cQTextEdit, slot: int, e: pointer): void {.exportc: "miqt_exec_callback_QTextEdit_mouseReleaseEvent ".} =
  var nimfunc = cast[ptr QTextEditmouseReleaseEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QMouseEvent(h: e)


  nimfunc[](slotval1)
proc QTextEditmouseDoubleClickEvent*(self: gen_qtextedit_types.QTextEdit, e: gen_qevent_types.QMouseEvent): void =
  fQTextEdit_virtualbase_mouseDoubleClickEvent(self.h, e.h)

type QTextEditmouseDoubleClickEventProc* = proc(e: gen_qevent_types.QMouseEvent): void
proc onmouseDoubleClickEvent*(self: gen_qtextedit_types.QTextEdit, slot: QTextEditmouseDoubleClickEventProc) =
  # TODO check subclass
  var tmp = new QTextEditmouseDoubleClickEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQTextEdit_override_virtual_mouseDoubleClickEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QTextEdit_mouseDoubleClickEvent(self: ptr cQTextEdit, slot: int, e: pointer): void {.exportc: "miqt_exec_callback_QTextEdit_mouseDoubleClickEvent ".} =
  var nimfunc = cast[ptr QTextEditmouseDoubleClickEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QMouseEvent(h: e)


  nimfunc[](slotval1)
proc QTextEditfocusNextPrevChild*(self: gen_qtextedit_types.QTextEdit, next: bool): bool =
  fQTextEdit_virtualbase_focusNextPrevChild(self.h, next)

type QTextEditfocusNextPrevChildProc* = proc(next: bool): bool
proc onfocusNextPrevChild*(self: gen_qtextedit_types.QTextEdit, slot: QTextEditfocusNextPrevChildProc) =
  # TODO check subclass
  var tmp = new QTextEditfocusNextPrevChildProc
  tmp[] = slot
  GC_ref(tmp)
  fcQTextEdit_override_virtual_focusNextPrevChild(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QTextEdit_focusNextPrevChild(self: ptr cQTextEdit, slot: int, next: bool): bool {.exportc: "miqt_exec_callback_QTextEdit_focusNextPrevChild ".} =
  var nimfunc = cast[ptr QTextEditfocusNextPrevChildProc](cast[pointer](slot))
  let slotval1 = next


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn
proc QTextEditcontextMenuEvent*(self: gen_qtextedit_types.QTextEdit, e: gen_qevent_types.QContextMenuEvent): void =
  fQTextEdit_virtualbase_contextMenuEvent(self.h, e.h)

type QTextEditcontextMenuEventProc* = proc(e: gen_qevent_types.QContextMenuEvent): void
proc oncontextMenuEvent*(self: gen_qtextedit_types.QTextEdit, slot: QTextEditcontextMenuEventProc) =
  # TODO check subclass
  var tmp = new QTextEditcontextMenuEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQTextEdit_override_virtual_contextMenuEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QTextEdit_contextMenuEvent(self: ptr cQTextEdit, slot: int, e: pointer): void {.exportc: "miqt_exec_callback_QTextEdit_contextMenuEvent ".} =
  var nimfunc = cast[ptr QTextEditcontextMenuEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QContextMenuEvent(h: e)


  nimfunc[](slotval1)
proc QTextEditdragEnterEvent*(self: gen_qtextedit_types.QTextEdit, e: gen_qevent_types.QDragEnterEvent): void =
  fQTextEdit_virtualbase_dragEnterEvent(self.h, e.h)

type QTextEditdragEnterEventProc* = proc(e: gen_qevent_types.QDragEnterEvent): void
proc ondragEnterEvent*(self: gen_qtextedit_types.QTextEdit, slot: QTextEditdragEnterEventProc) =
  # TODO check subclass
  var tmp = new QTextEditdragEnterEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQTextEdit_override_virtual_dragEnterEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QTextEdit_dragEnterEvent(self: ptr cQTextEdit, slot: int, e: pointer): void {.exportc: "miqt_exec_callback_QTextEdit_dragEnterEvent ".} =
  var nimfunc = cast[ptr QTextEditdragEnterEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QDragEnterEvent(h: e)


  nimfunc[](slotval1)
proc QTextEditdragLeaveEvent*(self: gen_qtextedit_types.QTextEdit, e: gen_qevent_types.QDragLeaveEvent): void =
  fQTextEdit_virtualbase_dragLeaveEvent(self.h, e.h)

type QTextEditdragLeaveEventProc* = proc(e: gen_qevent_types.QDragLeaveEvent): void
proc ondragLeaveEvent*(self: gen_qtextedit_types.QTextEdit, slot: QTextEditdragLeaveEventProc) =
  # TODO check subclass
  var tmp = new QTextEditdragLeaveEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQTextEdit_override_virtual_dragLeaveEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QTextEdit_dragLeaveEvent(self: ptr cQTextEdit, slot: int, e: pointer): void {.exportc: "miqt_exec_callback_QTextEdit_dragLeaveEvent ".} =
  var nimfunc = cast[ptr QTextEditdragLeaveEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QDragLeaveEvent(h: e)


  nimfunc[](slotval1)
proc QTextEditdragMoveEvent*(self: gen_qtextedit_types.QTextEdit, e: gen_qevent_types.QDragMoveEvent): void =
  fQTextEdit_virtualbase_dragMoveEvent(self.h, e.h)

type QTextEditdragMoveEventProc* = proc(e: gen_qevent_types.QDragMoveEvent): void
proc ondragMoveEvent*(self: gen_qtextedit_types.QTextEdit, slot: QTextEditdragMoveEventProc) =
  # TODO check subclass
  var tmp = new QTextEditdragMoveEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQTextEdit_override_virtual_dragMoveEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QTextEdit_dragMoveEvent(self: ptr cQTextEdit, slot: int, e: pointer): void {.exportc: "miqt_exec_callback_QTextEdit_dragMoveEvent ".} =
  var nimfunc = cast[ptr QTextEditdragMoveEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QDragMoveEvent(h: e)


  nimfunc[](slotval1)
proc QTextEditdropEvent*(self: gen_qtextedit_types.QTextEdit, e: gen_qevent_types.QDropEvent): void =
  fQTextEdit_virtualbase_dropEvent(self.h, e.h)

type QTextEditdropEventProc* = proc(e: gen_qevent_types.QDropEvent): void
proc ondropEvent*(self: gen_qtextedit_types.QTextEdit, slot: QTextEditdropEventProc) =
  # TODO check subclass
  var tmp = new QTextEditdropEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQTextEdit_override_virtual_dropEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QTextEdit_dropEvent(self: ptr cQTextEdit, slot: int, e: pointer): void {.exportc: "miqt_exec_callback_QTextEdit_dropEvent ".} =
  var nimfunc = cast[ptr QTextEditdropEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QDropEvent(h: e)


  nimfunc[](slotval1)
proc QTextEditfocusInEvent*(self: gen_qtextedit_types.QTextEdit, e: gen_qevent_types.QFocusEvent): void =
  fQTextEdit_virtualbase_focusInEvent(self.h, e.h)

type QTextEditfocusInEventProc* = proc(e: gen_qevent_types.QFocusEvent): void
proc onfocusInEvent*(self: gen_qtextedit_types.QTextEdit, slot: QTextEditfocusInEventProc) =
  # TODO check subclass
  var tmp = new QTextEditfocusInEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQTextEdit_override_virtual_focusInEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QTextEdit_focusInEvent(self: ptr cQTextEdit, slot: int, e: pointer): void {.exportc: "miqt_exec_callback_QTextEdit_focusInEvent ".} =
  var nimfunc = cast[ptr QTextEditfocusInEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QFocusEvent(h: e)


  nimfunc[](slotval1)
proc QTextEditfocusOutEvent*(self: gen_qtextedit_types.QTextEdit, e: gen_qevent_types.QFocusEvent): void =
  fQTextEdit_virtualbase_focusOutEvent(self.h, e.h)

type QTextEditfocusOutEventProc* = proc(e: gen_qevent_types.QFocusEvent): void
proc onfocusOutEvent*(self: gen_qtextedit_types.QTextEdit, slot: QTextEditfocusOutEventProc) =
  # TODO check subclass
  var tmp = new QTextEditfocusOutEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQTextEdit_override_virtual_focusOutEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QTextEdit_focusOutEvent(self: ptr cQTextEdit, slot: int, e: pointer): void {.exportc: "miqt_exec_callback_QTextEdit_focusOutEvent ".} =
  var nimfunc = cast[ptr QTextEditfocusOutEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QFocusEvent(h: e)


  nimfunc[](slotval1)
proc QTextEditshowEvent*(self: gen_qtextedit_types.QTextEdit, param1: gen_qevent_types.QShowEvent): void =
  fQTextEdit_virtualbase_showEvent(self.h, param1.h)

type QTextEditshowEventProc* = proc(param1: gen_qevent_types.QShowEvent): void
proc onshowEvent*(self: gen_qtextedit_types.QTextEdit, slot: QTextEditshowEventProc) =
  # TODO check subclass
  var tmp = new QTextEditshowEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQTextEdit_override_virtual_showEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QTextEdit_showEvent(self: ptr cQTextEdit, slot: int, param1: pointer): void {.exportc: "miqt_exec_callback_QTextEdit_showEvent ".} =
  var nimfunc = cast[ptr QTextEditshowEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QShowEvent(h: param1)


  nimfunc[](slotval1)
proc QTextEditchangeEvent*(self: gen_qtextedit_types.QTextEdit, e: gen_qcoreevent_types.QEvent): void =
  fQTextEdit_virtualbase_changeEvent(self.h, e.h)

type QTextEditchangeEventProc* = proc(e: gen_qcoreevent_types.QEvent): void
proc onchangeEvent*(self: gen_qtextedit_types.QTextEdit, slot: QTextEditchangeEventProc) =
  # TODO check subclass
  var tmp = new QTextEditchangeEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQTextEdit_override_virtual_changeEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QTextEdit_changeEvent(self: ptr cQTextEdit, slot: int, e: pointer): void {.exportc: "miqt_exec_callback_QTextEdit_changeEvent ".} =
  var nimfunc = cast[ptr QTextEditchangeEventProc](cast[pointer](slot))
  let slotval1 = gen_qcoreevent_types.QEvent(h: e)


  nimfunc[](slotval1)
proc QTextEditwheelEvent*(self: gen_qtextedit_types.QTextEdit, e: gen_qevent_types.QWheelEvent): void =
  fQTextEdit_virtualbase_wheelEvent(self.h, e.h)

type QTextEditwheelEventProc* = proc(e: gen_qevent_types.QWheelEvent): void
proc onwheelEvent*(self: gen_qtextedit_types.QTextEdit, slot: QTextEditwheelEventProc) =
  # TODO check subclass
  var tmp = new QTextEditwheelEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQTextEdit_override_virtual_wheelEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QTextEdit_wheelEvent(self: ptr cQTextEdit, slot: int, e: pointer): void {.exportc: "miqt_exec_callback_QTextEdit_wheelEvent ".} =
  var nimfunc = cast[ptr QTextEditwheelEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QWheelEvent(h: e)


  nimfunc[](slotval1)
proc QTextEditcreateMimeDataFromSelection*(self: gen_qtextedit_types.QTextEdit, ): gen_qmimedata_types.QMimeData =
  gen_qmimedata_types.QMimeData(h: fQTextEdit_virtualbase_createMimeDataFromSelection(self.h))

type QTextEditcreateMimeDataFromSelectionProc* = proc(): gen_qmimedata_types.QMimeData
proc oncreateMimeDataFromSelection*(self: gen_qtextedit_types.QTextEdit, slot: QTextEditcreateMimeDataFromSelectionProc) =
  # TODO check subclass
  var tmp = new QTextEditcreateMimeDataFromSelectionProc
  tmp[] = slot
  GC_ref(tmp)
  fcQTextEdit_override_virtual_createMimeDataFromSelection(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QTextEdit_createMimeDataFromSelection(self: ptr cQTextEdit, slot: int): pointer {.exportc: "miqt_exec_callback_QTextEdit_createMimeDataFromSelection ".} =
  var nimfunc = cast[ptr QTextEditcreateMimeDataFromSelectionProc](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )

  virtualReturn.h
proc QTextEditcanInsertFromMimeData*(self: gen_qtextedit_types.QTextEdit, source: gen_qmimedata_types.QMimeData): bool =
  fQTextEdit_virtualbase_canInsertFromMimeData(self.h, source.h)

type QTextEditcanInsertFromMimeDataProc* = proc(source: gen_qmimedata_types.QMimeData): bool
proc oncanInsertFromMimeData*(self: gen_qtextedit_types.QTextEdit, slot: QTextEditcanInsertFromMimeDataProc) =
  # TODO check subclass
  var tmp = new QTextEditcanInsertFromMimeDataProc
  tmp[] = slot
  GC_ref(tmp)
  fcQTextEdit_override_virtual_canInsertFromMimeData(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QTextEdit_canInsertFromMimeData(self: ptr cQTextEdit, slot: int, source: pointer): bool {.exportc: "miqt_exec_callback_QTextEdit_canInsertFromMimeData ".} =
  var nimfunc = cast[ptr QTextEditcanInsertFromMimeDataProc](cast[pointer](slot))
  let slotval1 = gen_qmimedata_types.QMimeData(h: source)


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn
proc QTextEditinsertFromMimeData*(self: gen_qtextedit_types.QTextEdit, source: gen_qmimedata_types.QMimeData): void =
  fQTextEdit_virtualbase_insertFromMimeData(self.h, source.h)

type QTextEditinsertFromMimeDataProc* = proc(source: gen_qmimedata_types.QMimeData): void
proc oninsertFromMimeData*(self: gen_qtextedit_types.QTextEdit, slot: QTextEditinsertFromMimeDataProc) =
  # TODO check subclass
  var tmp = new QTextEditinsertFromMimeDataProc
  tmp[] = slot
  GC_ref(tmp)
  fcQTextEdit_override_virtual_insertFromMimeData(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QTextEdit_insertFromMimeData(self: ptr cQTextEdit, slot: int, source: pointer): void {.exportc: "miqt_exec_callback_QTextEdit_insertFromMimeData ".} =
  var nimfunc = cast[ptr QTextEditinsertFromMimeDataProc](cast[pointer](slot))
  let slotval1 = gen_qmimedata_types.QMimeData(h: source)


  nimfunc[](slotval1)
proc QTextEditinputMethodEvent*(self: gen_qtextedit_types.QTextEdit, param1: gen_qevent_types.QInputMethodEvent): void =
  fQTextEdit_virtualbase_inputMethodEvent(self.h, param1.h)

type QTextEditinputMethodEventProc* = proc(param1: gen_qevent_types.QInputMethodEvent): void
proc oninputMethodEvent*(self: gen_qtextedit_types.QTextEdit, slot: QTextEditinputMethodEventProc) =
  # TODO check subclass
  var tmp = new QTextEditinputMethodEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQTextEdit_override_virtual_inputMethodEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QTextEdit_inputMethodEvent(self: ptr cQTextEdit, slot: int, param1: pointer): void {.exportc: "miqt_exec_callback_QTextEdit_inputMethodEvent ".} =
  var nimfunc = cast[ptr QTextEditinputMethodEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QInputMethodEvent(h: param1)


  nimfunc[](slotval1)
proc QTextEditscrollContentsBy*(self: gen_qtextedit_types.QTextEdit, dx: cint, dy: cint): void =
  fQTextEdit_virtualbase_scrollContentsBy(self.h, dx, dy)

type QTextEditscrollContentsByProc* = proc(dx: cint, dy: cint): void
proc onscrollContentsBy*(self: gen_qtextedit_types.QTextEdit, slot: QTextEditscrollContentsByProc) =
  # TODO check subclass
  var tmp = new QTextEditscrollContentsByProc
  tmp[] = slot
  GC_ref(tmp)
  fcQTextEdit_override_virtual_scrollContentsBy(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QTextEdit_scrollContentsBy(self: ptr cQTextEdit, slot: int, dx: cint, dy: cint): void {.exportc: "miqt_exec_callback_QTextEdit_scrollContentsBy ".} =
  var nimfunc = cast[ptr QTextEditscrollContentsByProc](cast[pointer](slot))
  let slotval1 = dx

  let slotval2 = dy


  nimfunc[](slotval1, slotval2)
proc QTextEditdoSetTextCursor*(self: gen_qtextedit_types.QTextEdit, cursor: gen_qtextcursor_types.QTextCursor): void =
  fQTextEdit_virtualbase_doSetTextCursor(self.h, cursor.h)

type QTextEditdoSetTextCursorProc* = proc(cursor: gen_qtextcursor_types.QTextCursor): void
proc ondoSetTextCursor*(self: gen_qtextedit_types.QTextEdit, slot: QTextEditdoSetTextCursorProc) =
  # TODO check subclass
  var tmp = new QTextEditdoSetTextCursorProc
  tmp[] = slot
  GC_ref(tmp)
  fcQTextEdit_override_virtual_doSetTextCursor(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QTextEdit_doSetTextCursor(self: ptr cQTextEdit, slot: int, cursor: pointer): void {.exportc: "miqt_exec_callback_QTextEdit_doSetTextCursor ".} =
  var nimfunc = cast[ptr QTextEditdoSetTextCursorProc](cast[pointer](slot))
  let slotval1 = gen_qtextcursor_types.QTextCursor(h: cursor)


  nimfunc[](slotval1)
proc QTextEditminimumSizeHint*(self: gen_qtextedit_types.QTextEdit, ): gen_qsize_types.QSize =
  gen_qsize_types.QSize(h: fQTextEdit_virtualbase_minimumSizeHint(self.h))

type QTextEditminimumSizeHintProc* = proc(): gen_qsize_types.QSize
proc onminimumSizeHint*(self: gen_qtextedit_types.QTextEdit, slot: QTextEditminimumSizeHintProc) =
  # TODO check subclass
  var tmp = new QTextEditminimumSizeHintProc
  tmp[] = slot
  GC_ref(tmp)
  fcQTextEdit_override_virtual_minimumSizeHint(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QTextEdit_minimumSizeHint(self: ptr cQTextEdit, slot: int): pointer {.exportc: "miqt_exec_callback_QTextEdit_minimumSizeHint ".} =
  var nimfunc = cast[ptr QTextEditminimumSizeHintProc](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )

  virtualReturn.h
proc QTextEditsizeHint*(self: gen_qtextedit_types.QTextEdit, ): gen_qsize_types.QSize =
  gen_qsize_types.QSize(h: fQTextEdit_virtualbase_sizeHint(self.h))

type QTextEditsizeHintProc* = proc(): gen_qsize_types.QSize
proc onsizeHint*(self: gen_qtextedit_types.QTextEdit, slot: QTextEditsizeHintProc) =
  # TODO check subclass
  var tmp = new QTextEditsizeHintProc
  tmp[] = slot
  GC_ref(tmp)
  fcQTextEdit_override_virtual_sizeHint(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QTextEdit_sizeHint(self: ptr cQTextEdit, slot: int): pointer {.exportc: "miqt_exec_callback_QTextEdit_sizeHint ".} =
  var nimfunc = cast[ptr QTextEditsizeHintProc](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )

  virtualReturn.h
proc QTextEditsetupViewport*(self: gen_qtextedit_types.QTextEdit, viewport: gen_qwidget_types.QWidget): void =
  fQTextEdit_virtualbase_setupViewport(self.h, viewport.h)

type QTextEditsetupViewportProc* = proc(viewport: gen_qwidget_types.QWidget): void
proc onsetupViewport*(self: gen_qtextedit_types.QTextEdit, slot: QTextEditsetupViewportProc) =
  # TODO check subclass
  var tmp = new QTextEditsetupViewportProc
  tmp[] = slot
  GC_ref(tmp)
  fcQTextEdit_override_virtual_setupViewport(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QTextEdit_setupViewport(self: ptr cQTextEdit, slot: int, viewport: pointer): void {.exportc: "miqt_exec_callback_QTextEdit_setupViewport ".} =
  var nimfunc = cast[ptr QTextEditsetupViewportProc](cast[pointer](slot))
  let slotval1 = gen_qwidget_types.QWidget(h: viewport)


  nimfunc[](slotval1)
proc QTextEditeventFilter*(self: gen_qtextedit_types.QTextEdit, param1: gen_qobject_types.QObject, param2: gen_qcoreevent_types.QEvent): bool =
  fQTextEdit_virtualbase_eventFilter(self.h, param1.h, param2.h)

type QTextEditeventFilterProc* = proc(param1: gen_qobject_types.QObject, param2: gen_qcoreevent_types.QEvent): bool
proc oneventFilter*(self: gen_qtextedit_types.QTextEdit, slot: QTextEditeventFilterProc) =
  # TODO check subclass
  var tmp = new QTextEditeventFilterProc
  tmp[] = slot
  GC_ref(tmp)
  fcQTextEdit_override_virtual_eventFilter(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QTextEdit_eventFilter(self: ptr cQTextEdit, slot: int, param1: pointer, param2: pointer): bool {.exportc: "miqt_exec_callback_QTextEdit_eventFilter ".} =
  var nimfunc = cast[ptr QTextEditeventFilterProc](cast[pointer](slot))
  let slotval1 = gen_qobject_types.QObject(h: param1)

  let slotval2 = gen_qcoreevent_types.QEvent(h: param2)


  let virtualReturn = nimfunc[](slotval1, slotval2 )

  virtualReturn
proc QTextEditviewportEvent*(self: gen_qtextedit_types.QTextEdit, param1: gen_qcoreevent_types.QEvent): bool =
  fQTextEdit_virtualbase_viewportEvent(self.h, param1.h)

type QTextEditviewportEventProc* = proc(param1: gen_qcoreevent_types.QEvent): bool
proc onviewportEvent*(self: gen_qtextedit_types.QTextEdit, slot: QTextEditviewportEventProc) =
  # TODO check subclass
  var tmp = new QTextEditviewportEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQTextEdit_override_virtual_viewportEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QTextEdit_viewportEvent(self: ptr cQTextEdit, slot: int, param1: pointer): bool {.exportc: "miqt_exec_callback_QTextEdit_viewportEvent ".} =
  var nimfunc = cast[ptr QTextEditviewportEventProc](cast[pointer](slot))
  let slotval1 = gen_qcoreevent_types.QEvent(h: param1)


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn
proc QTextEditviewportSizeHint*(self: gen_qtextedit_types.QTextEdit, ): gen_qsize_types.QSize =
  gen_qsize_types.QSize(h: fQTextEdit_virtualbase_viewportSizeHint(self.h))

type QTextEditviewportSizeHintProc* = proc(): gen_qsize_types.QSize
proc onviewportSizeHint*(self: gen_qtextedit_types.QTextEdit, slot: QTextEditviewportSizeHintProc) =
  # TODO check subclass
  var tmp = new QTextEditviewportSizeHintProc
  tmp[] = slot
  GC_ref(tmp)
  fcQTextEdit_override_virtual_viewportSizeHint(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QTextEdit_viewportSizeHint(self: ptr cQTextEdit, slot: int): pointer {.exportc: "miqt_exec_callback_QTextEdit_viewportSizeHint ".} =
  var nimfunc = cast[ptr QTextEditviewportSizeHintProc](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )

  virtualReturn.h
proc QTextEditinitStyleOption*(self: gen_qtextedit_types.QTextEdit, option: gen_qstyleoption_types.QStyleOptionFrame): void =
  fQTextEdit_virtualbase_initStyleOption(self.h, option.h)

type QTextEditinitStyleOptionProc* = proc(option: gen_qstyleoption_types.QStyleOptionFrame): void
proc oninitStyleOption*(self: gen_qtextedit_types.QTextEdit, slot: QTextEditinitStyleOptionProc) =
  # TODO check subclass
  var tmp = new QTextEditinitStyleOptionProc
  tmp[] = slot
  GC_ref(tmp)
  fcQTextEdit_override_virtual_initStyleOption(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QTextEdit_initStyleOption(self: ptr cQTextEdit, slot: int, option: pointer): void {.exportc: "miqt_exec_callback_QTextEdit_initStyleOption ".} =
  var nimfunc = cast[ptr QTextEditinitStyleOptionProc](cast[pointer](slot))
  let slotval1 = gen_qstyleoption_types.QStyleOptionFrame(h: option)


  nimfunc[](slotval1)
proc QTextEditdevType*(self: gen_qtextedit_types.QTextEdit, ): cint =
  fQTextEdit_virtualbase_devType(self.h)

type QTextEditdevTypeProc* = proc(): cint
proc ondevType*(self: gen_qtextedit_types.QTextEdit, slot: QTextEditdevTypeProc) =
  # TODO check subclass
  var tmp = new QTextEditdevTypeProc
  tmp[] = slot
  GC_ref(tmp)
  fcQTextEdit_override_virtual_devType(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QTextEdit_devType(self: ptr cQTextEdit, slot: int): cint {.exportc: "miqt_exec_callback_QTextEdit_devType ".} =
  var nimfunc = cast[ptr QTextEditdevTypeProc](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )

  virtualReturn
proc QTextEditsetVisible*(self: gen_qtextedit_types.QTextEdit, visible: bool): void =
  fQTextEdit_virtualbase_setVisible(self.h, visible)

type QTextEditsetVisibleProc* = proc(visible: bool): void
proc onsetVisible*(self: gen_qtextedit_types.QTextEdit, slot: QTextEditsetVisibleProc) =
  # TODO check subclass
  var tmp = new QTextEditsetVisibleProc
  tmp[] = slot
  GC_ref(tmp)
  fcQTextEdit_override_virtual_setVisible(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QTextEdit_setVisible(self: ptr cQTextEdit, slot: int, visible: bool): void {.exportc: "miqt_exec_callback_QTextEdit_setVisible ".} =
  var nimfunc = cast[ptr QTextEditsetVisibleProc](cast[pointer](slot))
  let slotval1 = visible


  nimfunc[](slotval1)
proc QTextEditheightForWidth*(self: gen_qtextedit_types.QTextEdit, param1: cint): cint =
  fQTextEdit_virtualbase_heightForWidth(self.h, param1)

type QTextEditheightForWidthProc* = proc(param1: cint): cint
proc onheightForWidth*(self: gen_qtextedit_types.QTextEdit, slot: QTextEditheightForWidthProc) =
  # TODO check subclass
  var tmp = new QTextEditheightForWidthProc
  tmp[] = slot
  GC_ref(tmp)
  fcQTextEdit_override_virtual_heightForWidth(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QTextEdit_heightForWidth(self: ptr cQTextEdit, slot: int, param1: cint): cint {.exportc: "miqt_exec_callback_QTextEdit_heightForWidth ".} =
  var nimfunc = cast[ptr QTextEditheightForWidthProc](cast[pointer](slot))
  let slotval1 = param1


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn
proc QTextEdithasHeightForWidth*(self: gen_qtextedit_types.QTextEdit, ): bool =
  fQTextEdit_virtualbase_hasHeightForWidth(self.h)

type QTextEdithasHeightForWidthProc* = proc(): bool
proc onhasHeightForWidth*(self: gen_qtextedit_types.QTextEdit, slot: QTextEdithasHeightForWidthProc) =
  # TODO check subclass
  var tmp = new QTextEdithasHeightForWidthProc
  tmp[] = slot
  GC_ref(tmp)
  fcQTextEdit_override_virtual_hasHeightForWidth(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QTextEdit_hasHeightForWidth(self: ptr cQTextEdit, slot: int): bool {.exportc: "miqt_exec_callback_QTextEdit_hasHeightForWidth ".} =
  var nimfunc = cast[ptr QTextEdithasHeightForWidthProc](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )

  virtualReturn
proc QTextEditpaintEngine*(self: gen_qtextedit_types.QTextEdit, ): gen_qpaintengine_types.QPaintEngine =
  gen_qpaintengine_types.QPaintEngine(h: fQTextEdit_virtualbase_paintEngine(self.h))

type QTextEditpaintEngineProc* = proc(): gen_qpaintengine_types.QPaintEngine
proc onpaintEngine*(self: gen_qtextedit_types.QTextEdit, slot: QTextEditpaintEngineProc) =
  # TODO check subclass
  var tmp = new QTextEditpaintEngineProc
  tmp[] = slot
  GC_ref(tmp)
  fcQTextEdit_override_virtual_paintEngine(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QTextEdit_paintEngine(self: ptr cQTextEdit, slot: int): pointer {.exportc: "miqt_exec_callback_QTextEdit_paintEngine ".} =
  var nimfunc = cast[ptr QTextEditpaintEngineProc](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )

  virtualReturn.h
proc QTextEditenterEvent*(self: gen_qtextedit_types.QTextEdit, event: gen_qevent_types.QEnterEvent): void =
  fQTextEdit_virtualbase_enterEvent(self.h, event.h)

type QTextEditenterEventProc* = proc(event: gen_qevent_types.QEnterEvent): void
proc onenterEvent*(self: gen_qtextedit_types.QTextEdit, slot: QTextEditenterEventProc) =
  # TODO check subclass
  var tmp = new QTextEditenterEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQTextEdit_override_virtual_enterEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QTextEdit_enterEvent(self: ptr cQTextEdit, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QTextEdit_enterEvent ".} =
  var nimfunc = cast[ptr QTextEditenterEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QEnterEvent(h: event)


  nimfunc[](slotval1)
proc QTextEditleaveEvent*(self: gen_qtextedit_types.QTextEdit, event: gen_qcoreevent_types.QEvent): void =
  fQTextEdit_virtualbase_leaveEvent(self.h, event.h)

type QTextEditleaveEventProc* = proc(event: gen_qcoreevent_types.QEvent): void
proc onleaveEvent*(self: gen_qtextedit_types.QTextEdit, slot: QTextEditleaveEventProc) =
  # TODO check subclass
  var tmp = new QTextEditleaveEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQTextEdit_override_virtual_leaveEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QTextEdit_leaveEvent(self: ptr cQTextEdit, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QTextEdit_leaveEvent ".} =
  var nimfunc = cast[ptr QTextEditleaveEventProc](cast[pointer](slot))
  let slotval1 = gen_qcoreevent_types.QEvent(h: event)


  nimfunc[](slotval1)
proc QTextEditmoveEvent*(self: gen_qtextedit_types.QTextEdit, event: gen_qevent_types.QMoveEvent): void =
  fQTextEdit_virtualbase_moveEvent(self.h, event.h)

type QTextEditmoveEventProc* = proc(event: gen_qevent_types.QMoveEvent): void
proc onmoveEvent*(self: gen_qtextedit_types.QTextEdit, slot: QTextEditmoveEventProc) =
  # TODO check subclass
  var tmp = new QTextEditmoveEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQTextEdit_override_virtual_moveEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QTextEdit_moveEvent(self: ptr cQTextEdit, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QTextEdit_moveEvent ".} =
  var nimfunc = cast[ptr QTextEditmoveEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QMoveEvent(h: event)


  nimfunc[](slotval1)
proc QTextEditcloseEvent*(self: gen_qtextedit_types.QTextEdit, event: gen_qevent_types.QCloseEvent): void =
  fQTextEdit_virtualbase_closeEvent(self.h, event.h)

type QTextEditcloseEventProc* = proc(event: gen_qevent_types.QCloseEvent): void
proc oncloseEvent*(self: gen_qtextedit_types.QTextEdit, slot: QTextEditcloseEventProc) =
  # TODO check subclass
  var tmp = new QTextEditcloseEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQTextEdit_override_virtual_closeEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QTextEdit_closeEvent(self: ptr cQTextEdit, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QTextEdit_closeEvent ".} =
  var nimfunc = cast[ptr QTextEditcloseEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QCloseEvent(h: event)


  nimfunc[](slotval1)
proc QTextEdittabletEvent*(self: gen_qtextedit_types.QTextEdit, event: gen_qevent_types.QTabletEvent): void =
  fQTextEdit_virtualbase_tabletEvent(self.h, event.h)

type QTextEdittabletEventProc* = proc(event: gen_qevent_types.QTabletEvent): void
proc ontabletEvent*(self: gen_qtextedit_types.QTextEdit, slot: QTextEdittabletEventProc) =
  # TODO check subclass
  var tmp = new QTextEdittabletEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQTextEdit_override_virtual_tabletEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QTextEdit_tabletEvent(self: ptr cQTextEdit, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QTextEdit_tabletEvent ".} =
  var nimfunc = cast[ptr QTextEdittabletEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QTabletEvent(h: event)


  nimfunc[](slotval1)
proc QTextEditactionEvent*(self: gen_qtextedit_types.QTextEdit, event: gen_qevent_types.QActionEvent): void =
  fQTextEdit_virtualbase_actionEvent(self.h, event.h)

type QTextEditactionEventProc* = proc(event: gen_qevent_types.QActionEvent): void
proc onactionEvent*(self: gen_qtextedit_types.QTextEdit, slot: QTextEditactionEventProc) =
  # TODO check subclass
  var tmp = new QTextEditactionEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQTextEdit_override_virtual_actionEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QTextEdit_actionEvent(self: ptr cQTextEdit, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QTextEdit_actionEvent ".} =
  var nimfunc = cast[ptr QTextEditactionEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QActionEvent(h: event)


  nimfunc[](slotval1)
proc QTextEdithideEvent*(self: gen_qtextedit_types.QTextEdit, event: gen_qevent_types.QHideEvent): void =
  fQTextEdit_virtualbase_hideEvent(self.h, event.h)

type QTextEdithideEventProc* = proc(event: gen_qevent_types.QHideEvent): void
proc onhideEvent*(self: gen_qtextedit_types.QTextEdit, slot: QTextEdithideEventProc) =
  # TODO check subclass
  var tmp = new QTextEdithideEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQTextEdit_override_virtual_hideEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QTextEdit_hideEvent(self: ptr cQTextEdit, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QTextEdit_hideEvent ".} =
  var nimfunc = cast[ptr QTextEdithideEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QHideEvent(h: event)


  nimfunc[](slotval1)
proc QTextEditnativeEvent*(self: gen_qtextedit_types.QTextEdit, eventType: seq[byte], message: pointer, resultVal: ptr uint): bool =
  fQTextEdit_virtualbase_nativeEvent(self.h, struct_miqt_string(data: cast[cstring](if len(eventType) == 0: nil else: unsafeAddr eventType[0]), len: csize_t(len(eventType))), message, resultVal)

type QTextEditnativeEventProc* = proc(eventType: seq[byte], message: pointer, resultVal: ptr uint): bool
proc onnativeEvent*(self: gen_qtextedit_types.QTextEdit, slot: QTextEditnativeEventProc) =
  # TODO check subclass
  var tmp = new QTextEditnativeEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQTextEdit_override_virtual_nativeEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QTextEdit_nativeEvent(self: ptr cQTextEdit, slot: int, eventType: struct_miqt_string, message: pointer, resultVal: ptr uint): bool {.exportc: "miqt_exec_callback_QTextEdit_nativeEvent ".} =
  var nimfunc = cast[ptr QTextEditnativeEventProc](cast[pointer](slot))
  var veventType_bytearray = eventType
  var veventTypex_ret = @(toOpenArrayByte(veventType_bytearray.data, 0, int(veventType_bytearray.len)-1))
  c_free(veventType_bytearray.data)
  let slotval1 = veventTypex_ret

  let slotval2 = message

  let slotval3 = resultVal


  let virtualReturn = nimfunc[](slotval1, slotval2, slotval3 )

  virtualReturn
proc QTextEditmetric*(self: gen_qtextedit_types.QTextEdit, param1: cint): cint =
  fQTextEdit_virtualbase_metric(self.h, cint(param1))

type QTextEditmetricProc* = proc(param1: cint): cint
proc onmetric*(self: gen_qtextedit_types.QTextEdit, slot: QTextEditmetricProc) =
  # TODO check subclass
  var tmp = new QTextEditmetricProc
  tmp[] = slot
  GC_ref(tmp)
  fcQTextEdit_override_virtual_metric(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QTextEdit_metric(self: ptr cQTextEdit, slot: int, param1: cint): cint {.exportc: "miqt_exec_callback_QTextEdit_metric ".} =
  var nimfunc = cast[ptr QTextEditmetricProc](cast[pointer](slot))
  let slotval1 = cint(param1)


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn
proc QTextEditinitPainter*(self: gen_qtextedit_types.QTextEdit, painter: gen_qpainter_types.QPainter): void =
  fQTextEdit_virtualbase_initPainter(self.h, painter.h)

type QTextEditinitPainterProc* = proc(painter: gen_qpainter_types.QPainter): void
proc oninitPainter*(self: gen_qtextedit_types.QTextEdit, slot: QTextEditinitPainterProc) =
  # TODO check subclass
  var tmp = new QTextEditinitPainterProc
  tmp[] = slot
  GC_ref(tmp)
  fcQTextEdit_override_virtual_initPainter(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QTextEdit_initPainter(self: ptr cQTextEdit, slot: int, painter: pointer): void {.exportc: "miqt_exec_callback_QTextEdit_initPainter ".} =
  var nimfunc = cast[ptr QTextEditinitPainterProc](cast[pointer](slot))
  let slotval1 = gen_qpainter_types.QPainter(h: painter)


  nimfunc[](slotval1)
proc QTextEditredirected*(self: gen_qtextedit_types.QTextEdit, offset: gen_qpoint_types.QPoint): gen_qpaintdevice_types.QPaintDevice =
  gen_qpaintdevice_types.QPaintDevice(h: fQTextEdit_virtualbase_redirected(self.h, offset.h))

type QTextEditredirectedProc* = proc(offset: gen_qpoint_types.QPoint): gen_qpaintdevice_types.QPaintDevice
proc onredirected*(self: gen_qtextedit_types.QTextEdit, slot: QTextEditredirectedProc) =
  # TODO check subclass
  var tmp = new QTextEditredirectedProc
  tmp[] = slot
  GC_ref(tmp)
  fcQTextEdit_override_virtual_redirected(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QTextEdit_redirected(self: ptr cQTextEdit, slot: int, offset: pointer): pointer {.exportc: "miqt_exec_callback_QTextEdit_redirected ".} =
  var nimfunc = cast[ptr QTextEditredirectedProc](cast[pointer](slot))
  let slotval1 = gen_qpoint_types.QPoint(h: offset)


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn.h
proc QTextEditsharedPainter*(self: gen_qtextedit_types.QTextEdit, ): gen_qpainter_types.QPainter =
  gen_qpainter_types.QPainter(h: fQTextEdit_virtualbase_sharedPainter(self.h))

type QTextEditsharedPainterProc* = proc(): gen_qpainter_types.QPainter
proc onsharedPainter*(self: gen_qtextedit_types.QTextEdit, slot: QTextEditsharedPainterProc) =
  # TODO check subclass
  var tmp = new QTextEditsharedPainterProc
  tmp[] = slot
  GC_ref(tmp)
  fcQTextEdit_override_virtual_sharedPainter(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QTextEdit_sharedPainter(self: ptr cQTextEdit, slot: int): pointer {.exportc: "miqt_exec_callback_QTextEdit_sharedPainter ".} =
  var nimfunc = cast[ptr QTextEditsharedPainterProc](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )

  virtualReturn.h
proc QTextEditchildEvent*(self: gen_qtextedit_types.QTextEdit, event: gen_qcoreevent_types.QChildEvent): void =
  fQTextEdit_virtualbase_childEvent(self.h, event.h)

type QTextEditchildEventProc* = proc(event: gen_qcoreevent_types.QChildEvent): void
proc onchildEvent*(self: gen_qtextedit_types.QTextEdit, slot: QTextEditchildEventProc) =
  # TODO check subclass
  var tmp = new QTextEditchildEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQTextEdit_override_virtual_childEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QTextEdit_childEvent(self: ptr cQTextEdit, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QTextEdit_childEvent ".} =
  var nimfunc = cast[ptr QTextEditchildEventProc](cast[pointer](slot))
  let slotval1 = gen_qcoreevent_types.QChildEvent(h: event)


  nimfunc[](slotval1)
proc QTextEditcustomEvent*(self: gen_qtextedit_types.QTextEdit, event: gen_qcoreevent_types.QEvent): void =
  fQTextEdit_virtualbase_customEvent(self.h, event.h)

type QTextEditcustomEventProc* = proc(event: gen_qcoreevent_types.QEvent): void
proc oncustomEvent*(self: gen_qtextedit_types.QTextEdit, slot: QTextEditcustomEventProc) =
  # TODO check subclass
  var tmp = new QTextEditcustomEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQTextEdit_override_virtual_customEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QTextEdit_customEvent(self: ptr cQTextEdit, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QTextEdit_customEvent ".} =
  var nimfunc = cast[ptr QTextEditcustomEventProc](cast[pointer](slot))
  let slotval1 = gen_qcoreevent_types.QEvent(h: event)


  nimfunc[](slotval1)
proc QTextEditconnectNotify*(self: gen_qtextedit_types.QTextEdit, signal: gen_qmetaobject_types.QMetaMethod): void =
  fQTextEdit_virtualbase_connectNotify(self.h, signal.h)

type QTextEditconnectNotifyProc* = proc(signal: gen_qmetaobject_types.QMetaMethod): void
proc onconnectNotify*(self: gen_qtextedit_types.QTextEdit, slot: QTextEditconnectNotifyProc) =
  # TODO check subclass
  var tmp = new QTextEditconnectNotifyProc
  tmp[] = slot
  GC_ref(tmp)
  fcQTextEdit_override_virtual_connectNotify(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QTextEdit_connectNotify(self: ptr cQTextEdit, slot: int, signal: pointer): void {.exportc: "miqt_exec_callback_QTextEdit_connectNotify ".} =
  var nimfunc = cast[ptr QTextEditconnectNotifyProc](cast[pointer](slot))
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal)


  nimfunc[](slotval1)
proc QTextEditdisconnectNotify*(self: gen_qtextedit_types.QTextEdit, signal: gen_qmetaobject_types.QMetaMethod): void =
  fQTextEdit_virtualbase_disconnectNotify(self.h, signal.h)

type QTextEditdisconnectNotifyProc* = proc(signal: gen_qmetaobject_types.QMetaMethod): void
proc ondisconnectNotify*(self: gen_qtextedit_types.QTextEdit, slot: QTextEditdisconnectNotifyProc) =
  # TODO check subclass
  var tmp = new QTextEditdisconnectNotifyProc
  tmp[] = slot
  GC_ref(tmp)
  fcQTextEdit_override_virtual_disconnectNotify(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QTextEdit_disconnectNotify(self: ptr cQTextEdit, slot: int, signal: pointer): void {.exportc: "miqt_exec_callback_QTextEdit_disconnectNotify ".} =
  var nimfunc = cast[ptr QTextEditdisconnectNotifyProc](cast[pointer](slot))
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal)


  nimfunc[](slotval1)
proc staticMetaObject*(_: type gen_qtextedit_types.QTextEdit): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQTextEdit_staticMetaObject())
proc delete*(self: gen_qtextedit_types.QTextEdit) =
  fcQTextEdit_delete(self.h)

func init*(T: type gen_qtextedit_types.QTextEditExtraSelection, h: ptr cQTextEditExtraSelection): gen_qtextedit_types.QTextEditExtraSelection =
  T(h: h)
proc create*(T: type gen_qtextedit_types.QTextEditExtraSelection, param1: gen_qtextedit_types.QTextEditExtraSelection): gen_qtextedit_types.QTextEditExtraSelection =
  gen_qtextedit_types.QTextEditExtraSelection.init(fcQTextEditExtraSelection_new(param1.h))

proc operatorAssign*(self: gen_qtextedit_types.QTextEditExtraSelection, param1: gen_qtextedit_types.QTextEditExtraSelection): void =
  fcQTextEditExtraSelection_operatorAssign(self.h, param1.h)

proc delete*(self: gen_qtextedit_types.QTextEditExtraSelection) =
  fcQTextEditExtraSelection_delete(self.h)
