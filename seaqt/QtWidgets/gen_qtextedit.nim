import ./Qt5Widgets_libs

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

const cflags = gorge("pkg-config --cflags Qt5Widgets")  & " -fPIC"
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
  ../QtCore/gen_qregexp_types,
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
  ./gen_qwidget_types
export
  gen_qcoreevent_types,
  gen_qmetaobject_types,
  gen_qmimedata_types,
  gen_qobject_types,
  gen_qobjectdefs_types,
  gen_qpoint_types,
  gen_qrect_types,
  gen_qregexp_types,
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
  gen_qwidget_types

type cQTextEdit*{.exportc: "QTextEdit", incompleteStruct.} = object
type cQTextEditExtraSelection*{.exportc: "QTextEdit__ExtraSelection", incompleteStruct.} = object

proc fcQTextEdit_metaObject(self: pointer, ): pointer {.importc: "QTextEdit_metaObject".}
proc fcQTextEdit_metacast(self: pointer, param1: cstring): pointer {.importc: "QTextEdit_metacast".}
proc fcQTextEdit_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.importc: "QTextEdit_metacall".}
proc fcQTextEdit_tr(s: cstring): struct_miqt_string {.importc: "QTextEdit_tr".}
proc fcQTextEdit_trUtf8(s: cstring): struct_miqt_string {.importc: "QTextEdit_trUtf8".}
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
proc fcQTextEdit_find2(self: pointer, exp: pointer): bool {.importc: "QTextEdit_find2".}
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
proc fcQTextEdit_tabStopWidth(self: pointer, ): cint {.importc: "QTextEdit_tabStopWidth".}
proc fcQTextEdit_setTabStopWidth(self: pointer, width: cint): void {.importc: "QTextEdit_setTabStopWidth".}
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
proc fcQTextEdit_trUtf82(s: cstring, c: cstring): struct_miqt_string {.importc: "QTextEdit_trUtf82".}
proc fcQTextEdit_trUtf83(s: cstring, c: cstring, n: cint): struct_miqt_string {.importc: "QTextEdit_trUtf83".}
proc fcQTextEdit_find22(self: pointer, exp: struct_miqt_string, options: cint): bool {.importc: "QTextEdit_find22".}
proc fcQTextEdit_find23(self: pointer, exp: pointer, options: cint): bool {.importc: "QTextEdit_find23".}
proc fcQTextEdit_find24(self: pointer, exp: pointer, options: cint): bool {.importc: "QTextEdit_find24".}
proc fcQTextEdit_toMarkdown1(self: pointer, features: cint): struct_miqt_string {.importc: "QTextEdit_toMarkdown1".}
proc fcQTextEdit_moveCursor2(self: pointer, operation: cint, mode: cint): void {.importc: "QTextEdit_moveCursor2".}
proc fcQTextEdit_zoomIn1(self: pointer, range: cint): void {.importc: "QTextEdit_zoomIn1".}
proc fcQTextEdit_zoomOut1(self: pointer, range: cint): void {.importc: "QTextEdit_zoomOut1".}
type cQTextEditVTable = object
  destructor*: proc(vtbl: ptr cQTextEditVTable, self: ptr cQTextEdit) {.cdecl, raises:[], gcsafe.}
  metaObject*: proc(vtbl, self: pointer, ): pointer {.cdecl, raises: [], gcsafe.}
  metacast*: proc(vtbl, self: pointer, param1: cstring): pointer {.cdecl, raises: [], gcsafe.}
  metacall*: proc(vtbl, self: pointer, param1: cint, param2: cint, param3: pointer): cint {.cdecl, raises: [], gcsafe.}
  loadResource*: proc(vtbl, self: pointer, typeVal: cint, name: pointer): pointer {.cdecl, raises: [], gcsafe.}
  inputMethodQuery*: proc(vtbl, self: pointer, property: cint): pointer {.cdecl, raises: [], gcsafe.}
  event*: proc(vtbl, self: pointer, e: pointer): bool {.cdecl, raises: [], gcsafe.}
  timerEvent*: proc(vtbl, self: pointer, e: pointer): void {.cdecl, raises: [], gcsafe.}
  keyPressEvent*: proc(vtbl, self: pointer, e: pointer): void {.cdecl, raises: [], gcsafe.}
  keyReleaseEvent*: proc(vtbl, self: pointer, e: pointer): void {.cdecl, raises: [], gcsafe.}
  resizeEvent*: proc(vtbl, self: pointer, e: pointer): void {.cdecl, raises: [], gcsafe.}
  paintEvent*: proc(vtbl, self: pointer, e: pointer): void {.cdecl, raises: [], gcsafe.}
  mousePressEvent*: proc(vtbl, self: pointer, e: pointer): void {.cdecl, raises: [], gcsafe.}
  mouseMoveEvent*: proc(vtbl, self: pointer, e: pointer): void {.cdecl, raises: [], gcsafe.}
  mouseReleaseEvent*: proc(vtbl, self: pointer, e: pointer): void {.cdecl, raises: [], gcsafe.}
  mouseDoubleClickEvent*: proc(vtbl, self: pointer, e: pointer): void {.cdecl, raises: [], gcsafe.}
  focusNextPrevChild*: proc(vtbl, self: pointer, next: bool): bool {.cdecl, raises: [], gcsafe.}
  contextMenuEvent*: proc(vtbl, self: pointer, e: pointer): void {.cdecl, raises: [], gcsafe.}
  dragEnterEvent*: proc(vtbl, self: pointer, e: pointer): void {.cdecl, raises: [], gcsafe.}
  dragLeaveEvent*: proc(vtbl, self: pointer, e: pointer): void {.cdecl, raises: [], gcsafe.}
  dragMoveEvent*: proc(vtbl, self: pointer, e: pointer): void {.cdecl, raises: [], gcsafe.}
  dropEvent*: proc(vtbl, self: pointer, e: pointer): void {.cdecl, raises: [], gcsafe.}
  focusInEvent*: proc(vtbl, self: pointer, e: pointer): void {.cdecl, raises: [], gcsafe.}
  focusOutEvent*: proc(vtbl, self: pointer, e: pointer): void {.cdecl, raises: [], gcsafe.}
  showEvent*: proc(vtbl, self: pointer, param1: pointer): void {.cdecl, raises: [], gcsafe.}
  changeEvent*: proc(vtbl, self: pointer, e: pointer): void {.cdecl, raises: [], gcsafe.}
  wheelEvent*: proc(vtbl, self: pointer, e: pointer): void {.cdecl, raises: [], gcsafe.}
  createMimeDataFromSelection*: proc(vtbl, self: pointer, ): pointer {.cdecl, raises: [], gcsafe.}
  canInsertFromMimeData*: proc(vtbl, self: pointer, source: pointer): bool {.cdecl, raises: [], gcsafe.}
  insertFromMimeData*: proc(vtbl, self: pointer, source: pointer): void {.cdecl, raises: [], gcsafe.}
  inputMethodEvent*: proc(vtbl, self: pointer, param1: pointer): void {.cdecl, raises: [], gcsafe.}
  scrollContentsBy*: proc(vtbl, self: pointer, dx: cint, dy: cint): void {.cdecl, raises: [], gcsafe.}
  doSetTextCursor*: proc(vtbl, self: pointer, cursor: pointer): void {.cdecl, raises: [], gcsafe.}
  minimumSizeHint*: proc(vtbl, self: pointer, ): pointer {.cdecl, raises: [], gcsafe.}
  sizeHint*: proc(vtbl, self: pointer, ): pointer {.cdecl, raises: [], gcsafe.}
  setupViewport*: proc(vtbl, self: pointer, viewport: pointer): void {.cdecl, raises: [], gcsafe.}
  eventFilter*: proc(vtbl, self: pointer, param1: pointer, param2: pointer): bool {.cdecl, raises: [], gcsafe.}
  viewportEvent*: proc(vtbl, self: pointer, param1: pointer): bool {.cdecl, raises: [], gcsafe.}
  viewportSizeHint*: proc(vtbl, self: pointer, ): pointer {.cdecl, raises: [], gcsafe.}
  devType*: proc(vtbl, self: pointer, ): cint {.cdecl, raises: [], gcsafe.}
  setVisible*: proc(vtbl, self: pointer, visible: bool): void {.cdecl, raises: [], gcsafe.}
  heightForWidth*: proc(vtbl, self: pointer, param1: cint): cint {.cdecl, raises: [], gcsafe.}
  hasHeightForWidth*: proc(vtbl, self: pointer, ): bool {.cdecl, raises: [], gcsafe.}
  paintEngine*: proc(vtbl, self: pointer, ): pointer {.cdecl, raises: [], gcsafe.}
  enterEvent*: proc(vtbl, self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  leaveEvent*: proc(vtbl, self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  moveEvent*: proc(vtbl, self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  closeEvent*: proc(vtbl, self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  tabletEvent*: proc(vtbl, self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  actionEvent*: proc(vtbl, self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  hideEvent*: proc(vtbl, self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  nativeEvent*: proc(vtbl, self: pointer, eventType: struct_miqt_string, message: pointer, resultVal: ptr clong): bool {.cdecl, raises: [], gcsafe.}
  metric*: proc(vtbl, self: pointer, param1: cint): cint {.cdecl, raises: [], gcsafe.}
  initPainter*: proc(vtbl, self: pointer, painter: pointer): void {.cdecl, raises: [], gcsafe.}
  redirected*: proc(vtbl, self: pointer, offset: pointer): pointer {.cdecl, raises: [], gcsafe.}
  sharedPainter*: proc(vtbl, self: pointer, ): pointer {.cdecl, raises: [], gcsafe.}
  childEvent*: proc(vtbl, self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  customEvent*: proc(vtbl, self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  connectNotify*: proc(vtbl, self: pointer, signal: pointer): void {.cdecl, raises: [], gcsafe.}
  disconnectNotify*: proc(vtbl, self: pointer, signal: pointer): void {.cdecl, raises: [], gcsafe.}
proc fcQTextEdit_virtualbase_metaObject(self: pointer, ): pointer {.importc: "QTextEdit_virtualbase_metaObject".}
proc fcQTextEdit_virtualbase_metacast(self: pointer, param1: cstring): pointer {.importc: "QTextEdit_virtualbase_metacast".}
proc fcQTextEdit_virtualbase_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.importc: "QTextEdit_virtualbase_metacall".}
proc fcQTextEdit_virtualbase_loadResource(self: pointer, typeVal: cint, name: pointer): pointer {.importc: "QTextEdit_virtualbase_loadResource".}
proc fcQTextEdit_virtualbase_inputMethodQuery(self: pointer, property: cint): pointer {.importc: "QTextEdit_virtualbase_inputMethodQuery".}
proc fcQTextEdit_virtualbase_event(self: pointer, e: pointer): bool {.importc: "QTextEdit_virtualbase_event".}
proc fcQTextEdit_virtualbase_timerEvent(self: pointer, e: pointer): void {.importc: "QTextEdit_virtualbase_timerEvent".}
proc fcQTextEdit_virtualbase_keyPressEvent(self: pointer, e: pointer): void {.importc: "QTextEdit_virtualbase_keyPressEvent".}
proc fcQTextEdit_virtualbase_keyReleaseEvent(self: pointer, e: pointer): void {.importc: "QTextEdit_virtualbase_keyReleaseEvent".}
proc fcQTextEdit_virtualbase_resizeEvent(self: pointer, e: pointer): void {.importc: "QTextEdit_virtualbase_resizeEvent".}
proc fcQTextEdit_virtualbase_paintEvent(self: pointer, e: pointer): void {.importc: "QTextEdit_virtualbase_paintEvent".}
proc fcQTextEdit_virtualbase_mousePressEvent(self: pointer, e: pointer): void {.importc: "QTextEdit_virtualbase_mousePressEvent".}
proc fcQTextEdit_virtualbase_mouseMoveEvent(self: pointer, e: pointer): void {.importc: "QTextEdit_virtualbase_mouseMoveEvent".}
proc fcQTextEdit_virtualbase_mouseReleaseEvent(self: pointer, e: pointer): void {.importc: "QTextEdit_virtualbase_mouseReleaseEvent".}
proc fcQTextEdit_virtualbase_mouseDoubleClickEvent(self: pointer, e: pointer): void {.importc: "QTextEdit_virtualbase_mouseDoubleClickEvent".}
proc fcQTextEdit_virtualbase_focusNextPrevChild(self: pointer, next: bool): bool {.importc: "QTextEdit_virtualbase_focusNextPrevChild".}
proc fcQTextEdit_virtualbase_contextMenuEvent(self: pointer, e: pointer): void {.importc: "QTextEdit_virtualbase_contextMenuEvent".}
proc fcQTextEdit_virtualbase_dragEnterEvent(self: pointer, e: pointer): void {.importc: "QTextEdit_virtualbase_dragEnterEvent".}
proc fcQTextEdit_virtualbase_dragLeaveEvent(self: pointer, e: pointer): void {.importc: "QTextEdit_virtualbase_dragLeaveEvent".}
proc fcQTextEdit_virtualbase_dragMoveEvent(self: pointer, e: pointer): void {.importc: "QTextEdit_virtualbase_dragMoveEvent".}
proc fcQTextEdit_virtualbase_dropEvent(self: pointer, e: pointer): void {.importc: "QTextEdit_virtualbase_dropEvent".}
proc fcQTextEdit_virtualbase_focusInEvent(self: pointer, e: pointer): void {.importc: "QTextEdit_virtualbase_focusInEvent".}
proc fcQTextEdit_virtualbase_focusOutEvent(self: pointer, e: pointer): void {.importc: "QTextEdit_virtualbase_focusOutEvent".}
proc fcQTextEdit_virtualbase_showEvent(self: pointer, param1: pointer): void {.importc: "QTextEdit_virtualbase_showEvent".}
proc fcQTextEdit_virtualbase_changeEvent(self: pointer, e: pointer): void {.importc: "QTextEdit_virtualbase_changeEvent".}
proc fcQTextEdit_virtualbase_wheelEvent(self: pointer, e: pointer): void {.importc: "QTextEdit_virtualbase_wheelEvent".}
proc fcQTextEdit_virtualbase_createMimeDataFromSelection(self: pointer, ): pointer {.importc: "QTextEdit_virtualbase_createMimeDataFromSelection".}
proc fcQTextEdit_virtualbase_canInsertFromMimeData(self: pointer, source: pointer): bool {.importc: "QTextEdit_virtualbase_canInsertFromMimeData".}
proc fcQTextEdit_virtualbase_insertFromMimeData(self: pointer, source: pointer): void {.importc: "QTextEdit_virtualbase_insertFromMimeData".}
proc fcQTextEdit_virtualbase_inputMethodEvent(self: pointer, param1: pointer): void {.importc: "QTextEdit_virtualbase_inputMethodEvent".}
proc fcQTextEdit_virtualbase_scrollContentsBy(self: pointer, dx: cint, dy: cint): void {.importc: "QTextEdit_virtualbase_scrollContentsBy".}
proc fcQTextEdit_virtualbase_doSetTextCursor(self: pointer, cursor: pointer): void {.importc: "QTextEdit_virtualbase_doSetTextCursor".}
proc fcQTextEdit_virtualbase_minimumSizeHint(self: pointer, ): pointer {.importc: "QTextEdit_virtualbase_minimumSizeHint".}
proc fcQTextEdit_virtualbase_sizeHint(self: pointer, ): pointer {.importc: "QTextEdit_virtualbase_sizeHint".}
proc fcQTextEdit_virtualbase_setupViewport(self: pointer, viewport: pointer): void {.importc: "QTextEdit_virtualbase_setupViewport".}
proc fcQTextEdit_virtualbase_eventFilter(self: pointer, param1: pointer, param2: pointer): bool {.importc: "QTextEdit_virtualbase_eventFilter".}
proc fcQTextEdit_virtualbase_viewportEvent(self: pointer, param1: pointer): bool {.importc: "QTextEdit_virtualbase_viewportEvent".}
proc fcQTextEdit_virtualbase_viewportSizeHint(self: pointer, ): pointer {.importc: "QTextEdit_virtualbase_viewportSizeHint".}
proc fcQTextEdit_virtualbase_devType(self: pointer, ): cint {.importc: "QTextEdit_virtualbase_devType".}
proc fcQTextEdit_virtualbase_setVisible(self: pointer, visible: bool): void {.importc: "QTextEdit_virtualbase_setVisible".}
proc fcQTextEdit_virtualbase_heightForWidth(self: pointer, param1: cint): cint {.importc: "QTextEdit_virtualbase_heightForWidth".}
proc fcQTextEdit_virtualbase_hasHeightForWidth(self: pointer, ): bool {.importc: "QTextEdit_virtualbase_hasHeightForWidth".}
proc fcQTextEdit_virtualbase_paintEngine(self: pointer, ): pointer {.importc: "QTextEdit_virtualbase_paintEngine".}
proc fcQTextEdit_virtualbase_enterEvent(self: pointer, event: pointer): void {.importc: "QTextEdit_virtualbase_enterEvent".}
proc fcQTextEdit_virtualbase_leaveEvent(self: pointer, event: pointer): void {.importc: "QTextEdit_virtualbase_leaveEvent".}
proc fcQTextEdit_virtualbase_moveEvent(self: pointer, event: pointer): void {.importc: "QTextEdit_virtualbase_moveEvent".}
proc fcQTextEdit_virtualbase_closeEvent(self: pointer, event: pointer): void {.importc: "QTextEdit_virtualbase_closeEvent".}
proc fcQTextEdit_virtualbase_tabletEvent(self: pointer, event: pointer): void {.importc: "QTextEdit_virtualbase_tabletEvent".}
proc fcQTextEdit_virtualbase_actionEvent(self: pointer, event: pointer): void {.importc: "QTextEdit_virtualbase_actionEvent".}
proc fcQTextEdit_virtualbase_hideEvent(self: pointer, event: pointer): void {.importc: "QTextEdit_virtualbase_hideEvent".}
proc fcQTextEdit_virtualbase_nativeEvent(self: pointer, eventType: struct_miqt_string, message: pointer, resultVal: ptr clong): bool {.importc: "QTextEdit_virtualbase_nativeEvent".}
proc fcQTextEdit_virtualbase_metric(self: pointer, param1: cint): cint {.importc: "QTextEdit_virtualbase_metric".}
proc fcQTextEdit_virtualbase_initPainter(self: pointer, painter: pointer): void {.importc: "QTextEdit_virtualbase_initPainter".}
proc fcQTextEdit_virtualbase_redirected(self: pointer, offset: pointer): pointer {.importc: "QTextEdit_virtualbase_redirected".}
proc fcQTextEdit_virtualbase_sharedPainter(self: pointer, ): pointer {.importc: "QTextEdit_virtualbase_sharedPainter".}
proc fcQTextEdit_virtualbase_childEvent(self: pointer, event: pointer): void {.importc: "QTextEdit_virtualbase_childEvent".}
proc fcQTextEdit_virtualbase_customEvent(self: pointer, event: pointer): void {.importc: "QTextEdit_virtualbase_customEvent".}
proc fcQTextEdit_virtualbase_connectNotify(self: pointer, signal: pointer): void {.importc: "QTextEdit_virtualbase_connectNotify".}
proc fcQTextEdit_virtualbase_disconnectNotify(self: pointer, signal: pointer): void {.importc: "QTextEdit_virtualbase_disconnectNotify".}
proc fcQTextEdit_new(vtbl: pointer, parent: pointer): ptr cQTextEdit {.importc: "QTextEdit_new".}
proc fcQTextEdit_new2(vtbl: pointer, ): ptr cQTextEdit {.importc: "QTextEdit_new2".}
proc fcQTextEdit_new3(vtbl: pointer, text: struct_miqt_string): ptr cQTextEdit {.importc: "QTextEdit_new3".}
proc fcQTextEdit_new4(vtbl: pointer, text: struct_miqt_string, parent: pointer): ptr cQTextEdit {.importc: "QTextEdit_new4".}
proc fcQTextEdit_staticMetaObject(): pointer {.importc: "QTextEdit_staticMetaObject".}
proc fcQTextEdit_delete(self: pointer) {.importc: "QTextEdit_delete".}
proc fcQTextEditExtraSelection_operatorAssign(self: pointer, param1: pointer): void {.importc: "QTextEdit__ExtraSelection_operatorAssign".}
proc fcQTextEditExtraSelection_new(param1: pointer): ptr cQTextEditExtraSelection {.importc: "QTextEdit__ExtraSelection_new".}
proc fcQTextEditExtraSelection_delete(self: pointer) {.importc: "QTextEdit__ExtraSelection_delete".}

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

proc trUtf8*(_: type gen_qtextedit_types.QTextEdit, s: cstring): string =
  let v_ms = fcQTextEdit_trUtf8(s)
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

proc find*(self: gen_qtextedit_types.QTextEdit, exp: gen_qregexp_types.QRegExp): bool =
  fcQTextEdit_findWithExp(self.h, exp.h)

proc find*(self: gen_qtextedit_types.QTextEdit, exp: gen_qregularexpression_types.QRegularExpression): bool =
  fcQTextEdit_find2(self.h, exp.h)

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

proc tabStopWidth*(self: gen_qtextedit_types.QTextEdit, ): cint =
  fcQTextEdit_tabStopWidth(self.h)

proc setTabStopWidth*(self: gen_qtextedit_types.QTextEdit, width: cint): void =
  fcQTextEdit_setTabStopWidth(self.h, width)

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
proc miqt_exec_callback_cQTextEdit_textChanged(slot: int) {.exportc: "miqt_exec_callback_QTextEdit_textChanged".} =
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
proc miqt_exec_callback_cQTextEdit_undoAvailable(slot: int, b: bool) {.exportc: "miqt_exec_callback_QTextEdit_undoAvailable".} =
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
proc miqt_exec_callback_cQTextEdit_redoAvailable(slot: int, b: bool) {.exportc: "miqt_exec_callback_QTextEdit_redoAvailable".} =
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
proc miqt_exec_callback_cQTextEdit_currentCharFormatChanged(slot: int, format: pointer) {.exportc: "miqt_exec_callback_QTextEdit_currentCharFormatChanged".} =
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
proc miqt_exec_callback_cQTextEdit_copyAvailable(slot: int, b: bool) {.exportc: "miqt_exec_callback_QTextEdit_copyAvailable".} =
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
proc miqt_exec_callback_cQTextEdit_selectionChanged(slot: int) {.exportc: "miqt_exec_callback_QTextEdit_selectionChanged".} =
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
proc miqt_exec_callback_cQTextEdit_cursorPositionChanged(slot: int) {.exportc: "miqt_exec_callback_QTextEdit_cursorPositionChanged".} =
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

proc trUtf8*(_: type gen_qtextedit_types.QTextEdit, s: cstring, c: cstring): string =
  let v_ms = fcQTextEdit_trUtf82(s, c)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc trUtf8*(_: type gen_qtextedit_types.QTextEdit, s: cstring, c: cstring, n: cint): string =
  let v_ms = fcQTextEdit_trUtf83(s, c, n)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc find*(self: gen_qtextedit_types.QTextEdit, exp: string, options: cint): bool =
  fcQTextEdit_find22(self.h, struct_miqt_string(data: exp, len: csize_t(len(exp))), cint(options))

proc find*(self: gen_qtextedit_types.QTextEdit, exp: gen_qregexp_types.QRegExp, options: cint): bool =
  fcQTextEdit_find23(self.h, exp.h, cint(options))

proc find*(self: gen_qtextedit_types.QTextEdit, exp: gen_qregularexpression_types.QRegularExpression, options: cint): bool =
  fcQTextEdit_find24(self.h, exp.h, cint(options))

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

type QTextEditmetaObjectProc* = proc(self: QTextEdit): gen_qobjectdefs_types.QMetaObject {.raises: [], gcsafe.}
type QTextEditmetacastProc* = proc(self: QTextEdit, param1: cstring): pointer {.raises: [], gcsafe.}
type QTextEditmetacallProc* = proc(self: QTextEdit, param1: cint, param2: cint, param3: pointer): cint {.raises: [], gcsafe.}
type QTextEditloadResourceProc* = proc(self: QTextEdit, typeVal: cint, name: gen_qurl_types.QUrl): gen_qvariant_types.QVariant {.raises: [], gcsafe.}
type QTextEditinputMethodQueryProc* = proc(self: QTextEdit, property: cint): gen_qvariant_types.QVariant {.raises: [], gcsafe.}
type QTextEditeventProc* = proc(self: QTextEdit, e: gen_qcoreevent_types.QEvent): bool {.raises: [], gcsafe.}
type QTextEdittimerEventProc* = proc(self: QTextEdit, e: gen_qcoreevent_types.QTimerEvent): void {.raises: [], gcsafe.}
type QTextEditkeyPressEventProc* = proc(self: QTextEdit, e: gen_qevent_types.QKeyEvent): void {.raises: [], gcsafe.}
type QTextEditkeyReleaseEventProc* = proc(self: QTextEdit, e: gen_qevent_types.QKeyEvent): void {.raises: [], gcsafe.}
type QTextEditresizeEventProc* = proc(self: QTextEdit, e: gen_qevent_types.QResizeEvent): void {.raises: [], gcsafe.}
type QTextEditpaintEventProc* = proc(self: QTextEdit, e: gen_qevent_types.QPaintEvent): void {.raises: [], gcsafe.}
type QTextEditmousePressEventProc* = proc(self: QTextEdit, e: gen_qevent_types.QMouseEvent): void {.raises: [], gcsafe.}
type QTextEditmouseMoveEventProc* = proc(self: QTextEdit, e: gen_qevent_types.QMouseEvent): void {.raises: [], gcsafe.}
type QTextEditmouseReleaseEventProc* = proc(self: QTextEdit, e: gen_qevent_types.QMouseEvent): void {.raises: [], gcsafe.}
type QTextEditmouseDoubleClickEventProc* = proc(self: QTextEdit, e: gen_qevent_types.QMouseEvent): void {.raises: [], gcsafe.}
type QTextEditfocusNextPrevChildProc* = proc(self: QTextEdit, next: bool): bool {.raises: [], gcsafe.}
type QTextEditcontextMenuEventProc* = proc(self: QTextEdit, e: gen_qevent_types.QContextMenuEvent): void {.raises: [], gcsafe.}
type QTextEditdragEnterEventProc* = proc(self: QTextEdit, e: gen_qevent_types.QDragEnterEvent): void {.raises: [], gcsafe.}
type QTextEditdragLeaveEventProc* = proc(self: QTextEdit, e: gen_qevent_types.QDragLeaveEvent): void {.raises: [], gcsafe.}
type QTextEditdragMoveEventProc* = proc(self: QTextEdit, e: gen_qevent_types.QDragMoveEvent): void {.raises: [], gcsafe.}
type QTextEditdropEventProc* = proc(self: QTextEdit, e: gen_qevent_types.QDropEvent): void {.raises: [], gcsafe.}
type QTextEditfocusInEventProc* = proc(self: QTextEdit, e: gen_qevent_types.QFocusEvent): void {.raises: [], gcsafe.}
type QTextEditfocusOutEventProc* = proc(self: QTextEdit, e: gen_qevent_types.QFocusEvent): void {.raises: [], gcsafe.}
type QTextEditshowEventProc* = proc(self: QTextEdit, param1: gen_qevent_types.QShowEvent): void {.raises: [], gcsafe.}
type QTextEditchangeEventProc* = proc(self: QTextEdit, e: gen_qcoreevent_types.QEvent): void {.raises: [], gcsafe.}
type QTextEditwheelEventProc* = proc(self: QTextEdit, e: gen_qevent_types.QWheelEvent): void {.raises: [], gcsafe.}
type QTextEditcreateMimeDataFromSelectionProc* = proc(self: QTextEdit): gen_qmimedata_types.QMimeData {.raises: [], gcsafe.}
type QTextEditcanInsertFromMimeDataProc* = proc(self: QTextEdit, source: gen_qmimedata_types.QMimeData): bool {.raises: [], gcsafe.}
type QTextEditinsertFromMimeDataProc* = proc(self: QTextEdit, source: gen_qmimedata_types.QMimeData): void {.raises: [], gcsafe.}
type QTextEditinputMethodEventProc* = proc(self: QTextEdit, param1: gen_qevent_types.QInputMethodEvent): void {.raises: [], gcsafe.}
type QTextEditscrollContentsByProc* = proc(self: QTextEdit, dx: cint, dy: cint): void {.raises: [], gcsafe.}
type QTextEditdoSetTextCursorProc* = proc(self: QTextEdit, cursor: gen_qtextcursor_types.QTextCursor): void {.raises: [], gcsafe.}
type QTextEditminimumSizeHintProc* = proc(self: QTextEdit): gen_qsize_types.QSize {.raises: [], gcsafe.}
type QTextEditsizeHintProc* = proc(self: QTextEdit): gen_qsize_types.QSize {.raises: [], gcsafe.}
type QTextEditsetupViewportProc* = proc(self: QTextEdit, viewport: gen_qwidget_types.QWidget): void {.raises: [], gcsafe.}
type QTextEditeventFilterProc* = proc(self: QTextEdit, param1: gen_qobject_types.QObject, param2: gen_qcoreevent_types.QEvent): bool {.raises: [], gcsafe.}
type QTextEditviewportEventProc* = proc(self: QTextEdit, param1: gen_qcoreevent_types.QEvent): bool {.raises: [], gcsafe.}
type QTextEditviewportSizeHintProc* = proc(self: QTextEdit): gen_qsize_types.QSize {.raises: [], gcsafe.}
type QTextEditdevTypeProc* = proc(self: QTextEdit): cint {.raises: [], gcsafe.}
type QTextEditsetVisibleProc* = proc(self: QTextEdit, visible: bool): void {.raises: [], gcsafe.}
type QTextEditheightForWidthProc* = proc(self: QTextEdit, param1: cint): cint {.raises: [], gcsafe.}
type QTextEdithasHeightForWidthProc* = proc(self: QTextEdit): bool {.raises: [], gcsafe.}
type QTextEditpaintEngineProc* = proc(self: QTextEdit): gen_qpaintengine_types.QPaintEngine {.raises: [], gcsafe.}
type QTextEditenterEventProc* = proc(self: QTextEdit, event: gen_qcoreevent_types.QEvent): void {.raises: [], gcsafe.}
type QTextEditleaveEventProc* = proc(self: QTextEdit, event: gen_qcoreevent_types.QEvent): void {.raises: [], gcsafe.}
type QTextEditmoveEventProc* = proc(self: QTextEdit, event: gen_qevent_types.QMoveEvent): void {.raises: [], gcsafe.}
type QTextEditcloseEventProc* = proc(self: QTextEdit, event: gen_qevent_types.QCloseEvent): void {.raises: [], gcsafe.}
type QTextEdittabletEventProc* = proc(self: QTextEdit, event: gen_qevent_types.QTabletEvent): void {.raises: [], gcsafe.}
type QTextEditactionEventProc* = proc(self: QTextEdit, event: gen_qevent_types.QActionEvent): void {.raises: [], gcsafe.}
type QTextEdithideEventProc* = proc(self: QTextEdit, event: gen_qevent_types.QHideEvent): void {.raises: [], gcsafe.}
type QTextEditnativeEventProc* = proc(self: QTextEdit, eventType: seq[byte], message: pointer, resultVal: ptr clong): bool {.raises: [], gcsafe.}
type QTextEditmetricProc* = proc(self: QTextEdit, param1: cint): cint {.raises: [], gcsafe.}
type QTextEditinitPainterProc* = proc(self: QTextEdit, painter: gen_qpainter_types.QPainter): void {.raises: [], gcsafe.}
type QTextEditredirectedProc* = proc(self: QTextEdit, offset: gen_qpoint_types.QPoint): gen_qpaintdevice_types.QPaintDevice {.raises: [], gcsafe.}
type QTextEditsharedPainterProc* = proc(self: QTextEdit): gen_qpainter_types.QPainter {.raises: [], gcsafe.}
type QTextEditchildEventProc* = proc(self: QTextEdit, event: gen_qcoreevent_types.QChildEvent): void {.raises: [], gcsafe.}
type QTextEditcustomEventProc* = proc(self: QTextEdit, event: gen_qcoreevent_types.QEvent): void {.raises: [], gcsafe.}
type QTextEditconnectNotifyProc* = proc(self: QTextEdit, signal: gen_qmetaobject_types.QMetaMethod): void {.raises: [], gcsafe.}
type QTextEditdisconnectNotifyProc* = proc(self: QTextEdit, signal: gen_qmetaobject_types.QMetaMethod): void {.raises: [], gcsafe.}
type QTextEditVTable* = object
  vtbl: cQTextEditVTable
  metaObject*: QTextEditmetaObjectProc
  metacast*: QTextEditmetacastProc
  metacall*: QTextEditmetacallProc
  loadResource*: QTextEditloadResourceProc
  inputMethodQuery*: QTextEditinputMethodQueryProc
  event*: QTextEditeventProc
  timerEvent*: QTextEdittimerEventProc
  keyPressEvent*: QTextEditkeyPressEventProc
  keyReleaseEvent*: QTextEditkeyReleaseEventProc
  resizeEvent*: QTextEditresizeEventProc
  paintEvent*: QTextEditpaintEventProc
  mousePressEvent*: QTextEditmousePressEventProc
  mouseMoveEvent*: QTextEditmouseMoveEventProc
  mouseReleaseEvent*: QTextEditmouseReleaseEventProc
  mouseDoubleClickEvent*: QTextEditmouseDoubleClickEventProc
  focusNextPrevChild*: QTextEditfocusNextPrevChildProc
  contextMenuEvent*: QTextEditcontextMenuEventProc
  dragEnterEvent*: QTextEditdragEnterEventProc
  dragLeaveEvent*: QTextEditdragLeaveEventProc
  dragMoveEvent*: QTextEditdragMoveEventProc
  dropEvent*: QTextEditdropEventProc
  focusInEvent*: QTextEditfocusInEventProc
  focusOutEvent*: QTextEditfocusOutEventProc
  showEvent*: QTextEditshowEventProc
  changeEvent*: QTextEditchangeEventProc
  wheelEvent*: QTextEditwheelEventProc
  createMimeDataFromSelection*: QTextEditcreateMimeDataFromSelectionProc
  canInsertFromMimeData*: QTextEditcanInsertFromMimeDataProc
  insertFromMimeData*: QTextEditinsertFromMimeDataProc
  inputMethodEvent*: QTextEditinputMethodEventProc
  scrollContentsBy*: QTextEditscrollContentsByProc
  doSetTextCursor*: QTextEditdoSetTextCursorProc
  minimumSizeHint*: QTextEditminimumSizeHintProc
  sizeHint*: QTextEditsizeHintProc
  setupViewport*: QTextEditsetupViewportProc
  eventFilter*: QTextEditeventFilterProc
  viewportEvent*: QTextEditviewportEventProc
  viewportSizeHint*: QTextEditviewportSizeHintProc
  devType*: QTextEditdevTypeProc
  setVisible*: QTextEditsetVisibleProc
  heightForWidth*: QTextEditheightForWidthProc
  hasHeightForWidth*: QTextEdithasHeightForWidthProc
  paintEngine*: QTextEditpaintEngineProc
  enterEvent*: QTextEditenterEventProc
  leaveEvent*: QTextEditleaveEventProc
  moveEvent*: QTextEditmoveEventProc
  closeEvent*: QTextEditcloseEventProc
  tabletEvent*: QTextEdittabletEventProc
  actionEvent*: QTextEditactionEventProc
  hideEvent*: QTextEdithideEventProc
  nativeEvent*: QTextEditnativeEventProc
  metric*: QTextEditmetricProc
  initPainter*: QTextEditinitPainterProc
  redirected*: QTextEditredirectedProc
  sharedPainter*: QTextEditsharedPainterProc
  childEvent*: QTextEditchildEventProc
  customEvent*: QTextEditcustomEventProc
  connectNotify*: QTextEditconnectNotifyProc
  disconnectNotify*: QTextEditdisconnectNotifyProc
proc QTextEditmetaObject*(self: gen_qtextedit_types.QTextEdit, ): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQTextEdit_virtualbase_metaObject(self.h))

proc miqt_exec_callback_cQTextEdit_metaObject(vtbl: pointer, self: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QTextEditVTable](vtbl)
  let self = QTextEdit(h: self)
  var virtualReturn = vtbl[].metaObject(self)
  virtualReturn.h

proc QTextEditmetacast*(self: gen_qtextedit_types.QTextEdit, param1: cstring): pointer =
  fcQTextEdit_virtualbase_metacast(self.h, param1)

proc miqt_exec_callback_cQTextEdit_metacast(vtbl: pointer, self: pointer, param1: cstring): pointer {.cdecl.} =
  let vtbl = cast[ptr QTextEditVTable](vtbl)
  let self = QTextEdit(h: self)
  let slotval1 = (param1)
  var virtualReturn = vtbl[].metacast(self, slotval1)
  virtualReturn

proc QTextEditmetacall*(self: gen_qtextedit_types.QTextEdit, param1: cint, param2: cint, param3: pointer): cint =
  fcQTextEdit_virtualbase_metacall(self.h, cint(param1), param2, param3)

proc miqt_exec_callback_cQTextEdit_metacall(vtbl: pointer, self: pointer, param1: cint, param2: cint, param3: pointer): cint {.cdecl.} =
  let vtbl = cast[ptr QTextEditVTable](vtbl)
  let self = QTextEdit(h: self)
  let slotval1 = cint(param1)
  let slotval2 = param2
  let slotval3 = param3
  var virtualReturn = vtbl[].metacall(self, slotval1, slotval2, slotval3)
  virtualReturn

proc QTextEditloadResource*(self: gen_qtextedit_types.QTextEdit, typeVal: cint, name: gen_qurl_types.QUrl): gen_qvariant_types.QVariant =
  gen_qvariant_types.QVariant(h: fcQTextEdit_virtualbase_loadResource(self.h, typeVal, name.h))

proc miqt_exec_callback_cQTextEdit_loadResource(vtbl: pointer, self: pointer, typeVal: cint, name: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QTextEditVTable](vtbl)
  let self = QTextEdit(h: self)
  let slotval1 = typeVal
  let slotval2 = gen_qurl_types.QUrl(h: name)
  var virtualReturn = vtbl[].loadResource(self, slotval1, slotval2)
  virtualReturn.h

proc QTextEditinputMethodQuery*(self: gen_qtextedit_types.QTextEdit, property: cint): gen_qvariant_types.QVariant =
  gen_qvariant_types.QVariant(h: fcQTextEdit_virtualbase_inputMethodQuery(self.h, cint(property)))

proc miqt_exec_callback_cQTextEdit_inputMethodQuery(vtbl: pointer, self: pointer, property: cint): pointer {.cdecl.} =
  let vtbl = cast[ptr QTextEditVTable](vtbl)
  let self = QTextEdit(h: self)
  let slotval1 = cint(property)
  var virtualReturn = vtbl[].inputMethodQuery(self, slotval1)
  virtualReturn.h

proc QTextEditevent*(self: gen_qtextedit_types.QTextEdit, e: gen_qcoreevent_types.QEvent): bool =
  fcQTextEdit_virtualbase_event(self.h, e.h)

proc miqt_exec_callback_cQTextEdit_event(vtbl: pointer, self: pointer, e: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QTextEditVTable](vtbl)
  let self = QTextEdit(h: self)
  let slotval1 = gen_qcoreevent_types.QEvent(h: e)
  var virtualReturn = vtbl[].event(self, slotval1)
  virtualReturn

proc QTextEdittimerEvent*(self: gen_qtextedit_types.QTextEdit, e: gen_qcoreevent_types.QTimerEvent): void =
  fcQTextEdit_virtualbase_timerEvent(self.h, e.h)

proc miqt_exec_callback_cQTextEdit_timerEvent(vtbl: pointer, self: pointer, e: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QTextEditVTable](vtbl)
  let self = QTextEdit(h: self)
  let slotval1 = gen_qcoreevent_types.QTimerEvent(h: e)
  vtbl[].timerEvent(self, slotval1)

proc QTextEditkeyPressEvent*(self: gen_qtextedit_types.QTextEdit, e: gen_qevent_types.QKeyEvent): void =
  fcQTextEdit_virtualbase_keyPressEvent(self.h, e.h)

proc miqt_exec_callback_cQTextEdit_keyPressEvent(vtbl: pointer, self: pointer, e: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QTextEditVTable](vtbl)
  let self = QTextEdit(h: self)
  let slotval1 = gen_qevent_types.QKeyEvent(h: e)
  vtbl[].keyPressEvent(self, slotval1)

proc QTextEditkeyReleaseEvent*(self: gen_qtextedit_types.QTextEdit, e: gen_qevent_types.QKeyEvent): void =
  fcQTextEdit_virtualbase_keyReleaseEvent(self.h, e.h)

proc miqt_exec_callback_cQTextEdit_keyReleaseEvent(vtbl: pointer, self: pointer, e: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QTextEditVTable](vtbl)
  let self = QTextEdit(h: self)
  let slotval1 = gen_qevent_types.QKeyEvent(h: e)
  vtbl[].keyReleaseEvent(self, slotval1)

proc QTextEditresizeEvent*(self: gen_qtextedit_types.QTextEdit, e: gen_qevent_types.QResizeEvent): void =
  fcQTextEdit_virtualbase_resizeEvent(self.h, e.h)

proc miqt_exec_callback_cQTextEdit_resizeEvent(vtbl: pointer, self: pointer, e: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QTextEditVTable](vtbl)
  let self = QTextEdit(h: self)
  let slotval1 = gen_qevent_types.QResizeEvent(h: e)
  vtbl[].resizeEvent(self, slotval1)

proc QTextEditpaintEvent*(self: gen_qtextedit_types.QTextEdit, e: gen_qevent_types.QPaintEvent): void =
  fcQTextEdit_virtualbase_paintEvent(self.h, e.h)

proc miqt_exec_callback_cQTextEdit_paintEvent(vtbl: pointer, self: pointer, e: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QTextEditVTable](vtbl)
  let self = QTextEdit(h: self)
  let slotval1 = gen_qevent_types.QPaintEvent(h: e)
  vtbl[].paintEvent(self, slotval1)

proc QTextEditmousePressEvent*(self: gen_qtextedit_types.QTextEdit, e: gen_qevent_types.QMouseEvent): void =
  fcQTextEdit_virtualbase_mousePressEvent(self.h, e.h)

proc miqt_exec_callback_cQTextEdit_mousePressEvent(vtbl: pointer, self: pointer, e: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QTextEditVTable](vtbl)
  let self = QTextEdit(h: self)
  let slotval1 = gen_qevent_types.QMouseEvent(h: e)
  vtbl[].mousePressEvent(self, slotval1)

proc QTextEditmouseMoveEvent*(self: gen_qtextedit_types.QTextEdit, e: gen_qevent_types.QMouseEvent): void =
  fcQTextEdit_virtualbase_mouseMoveEvent(self.h, e.h)

proc miqt_exec_callback_cQTextEdit_mouseMoveEvent(vtbl: pointer, self: pointer, e: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QTextEditVTable](vtbl)
  let self = QTextEdit(h: self)
  let slotval1 = gen_qevent_types.QMouseEvent(h: e)
  vtbl[].mouseMoveEvent(self, slotval1)

proc QTextEditmouseReleaseEvent*(self: gen_qtextedit_types.QTextEdit, e: gen_qevent_types.QMouseEvent): void =
  fcQTextEdit_virtualbase_mouseReleaseEvent(self.h, e.h)

proc miqt_exec_callback_cQTextEdit_mouseReleaseEvent(vtbl: pointer, self: pointer, e: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QTextEditVTable](vtbl)
  let self = QTextEdit(h: self)
  let slotval1 = gen_qevent_types.QMouseEvent(h: e)
  vtbl[].mouseReleaseEvent(self, slotval1)

proc QTextEditmouseDoubleClickEvent*(self: gen_qtextedit_types.QTextEdit, e: gen_qevent_types.QMouseEvent): void =
  fcQTextEdit_virtualbase_mouseDoubleClickEvent(self.h, e.h)

proc miqt_exec_callback_cQTextEdit_mouseDoubleClickEvent(vtbl: pointer, self: pointer, e: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QTextEditVTable](vtbl)
  let self = QTextEdit(h: self)
  let slotval1 = gen_qevent_types.QMouseEvent(h: e)
  vtbl[].mouseDoubleClickEvent(self, slotval1)

proc QTextEditfocusNextPrevChild*(self: gen_qtextedit_types.QTextEdit, next: bool): bool =
  fcQTextEdit_virtualbase_focusNextPrevChild(self.h, next)

proc miqt_exec_callback_cQTextEdit_focusNextPrevChild(vtbl: pointer, self: pointer, next: bool): bool {.cdecl.} =
  let vtbl = cast[ptr QTextEditVTable](vtbl)
  let self = QTextEdit(h: self)
  let slotval1 = next
  var virtualReturn = vtbl[].focusNextPrevChild(self, slotval1)
  virtualReturn

proc QTextEditcontextMenuEvent*(self: gen_qtextedit_types.QTextEdit, e: gen_qevent_types.QContextMenuEvent): void =
  fcQTextEdit_virtualbase_contextMenuEvent(self.h, e.h)

proc miqt_exec_callback_cQTextEdit_contextMenuEvent(vtbl: pointer, self: pointer, e: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QTextEditVTable](vtbl)
  let self = QTextEdit(h: self)
  let slotval1 = gen_qevent_types.QContextMenuEvent(h: e)
  vtbl[].contextMenuEvent(self, slotval1)

proc QTextEditdragEnterEvent*(self: gen_qtextedit_types.QTextEdit, e: gen_qevent_types.QDragEnterEvent): void =
  fcQTextEdit_virtualbase_dragEnterEvent(self.h, e.h)

proc miqt_exec_callback_cQTextEdit_dragEnterEvent(vtbl: pointer, self: pointer, e: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QTextEditVTable](vtbl)
  let self = QTextEdit(h: self)
  let slotval1 = gen_qevent_types.QDragEnterEvent(h: e)
  vtbl[].dragEnterEvent(self, slotval1)

proc QTextEditdragLeaveEvent*(self: gen_qtextedit_types.QTextEdit, e: gen_qevent_types.QDragLeaveEvent): void =
  fcQTextEdit_virtualbase_dragLeaveEvent(self.h, e.h)

proc miqt_exec_callback_cQTextEdit_dragLeaveEvent(vtbl: pointer, self: pointer, e: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QTextEditVTable](vtbl)
  let self = QTextEdit(h: self)
  let slotval1 = gen_qevent_types.QDragLeaveEvent(h: e)
  vtbl[].dragLeaveEvent(self, slotval1)

proc QTextEditdragMoveEvent*(self: gen_qtextedit_types.QTextEdit, e: gen_qevent_types.QDragMoveEvent): void =
  fcQTextEdit_virtualbase_dragMoveEvent(self.h, e.h)

proc miqt_exec_callback_cQTextEdit_dragMoveEvent(vtbl: pointer, self: pointer, e: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QTextEditVTable](vtbl)
  let self = QTextEdit(h: self)
  let slotval1 = gen_qevent_types.QDragMoveEvent(h: e)
  vtbl[].dragMoveEvent(self, slotval1)

proc QTextEditdropEvent*(self: gen_qtextedit_types.QTextEdit, e: gen_qevent_types.QDropEvent): void =
  fcQTextEdit_virtualbase_dropEvent(self.h, e.h)

proc miqt_exec_callback_cQTextEdit_dropEvent(vtbl: pointer, self: pointer, e: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QTextEditVTable](vtbl)
  let self = QTextEdit(h: self)
  let slotval1 = gen_qevent_types.QDropEvent(h: e)
  vtbl[].dropEvent(self, slotval1)

proc QTextEditfocusInEvent*(self: gen_qtextedit_types.QTextEdit, e: gen_qevent_types.QFocusEvent): void =
  fcQTextEdit_virtualbase_focusInEvent(self.h, e.h)

proc miqt_exec_callback_cQTextEdit_focusInEvent(vtbl: pointer, self: pointer, e: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QTextEditVTable](vtbl)
  let self = QTextEdit(h: self)
  let slotval1 = gen_qevent_types.QFocusEvent(h: e)
  vtbl[].focusInEvent(self, slotval1)

proc QTextEditfocusOutEvent*(self: gen_qtextedit_types.QTextEdit, e: gen_qevent_types.QFocusEvent): void =
  fcQTextEdit_virtualbase_focusOutEvent(self.h, e.h)

proc miqt_exec_callback_cQTextEdit_focusOutEvent(vtbl: pointer, self: pointer, e: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QTextEditVTable](vtbl)
  let self = QTextEdit(h: self)
  let slotval1 = gen_qevent_types.QFocusEvent(h: e)
  vtbl[].focusOutEvent(self, slotval1)

proc QTextEditshowEvent*(self: gen_qtextedit_types.QTextEdit, param1: gen_qevent_types.QShowEvent): void =
  fcQTextEdit_virtualbase_showEvent(self.h, param1.h)

proc miqt_exec_callback_cQTextEdit_showEvent(vtbl: pointer, self: pointer, param1: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QTextEditVTable](vtbl)
  let self = QTextEdit(h: self)
  let slotval1 = gen_qevent_types.QShowEvent(h: param1)
  vtbl[].showEvent(self, slotval1)

proc QTextEditchangeEvent*(self: gen_qtextedit_types.QTextEdit, e: gen_qcoreevent_types.QEvent): void =
  fcQTextEdit_virtualbase_changeEvent(self.h, e.h)

proc miqt_exec_callback_cQTextEdit_changeEvent(vtbl: pointer, self: pointer, e: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QTextEditVTable](vtbl)
  let self = QTextEdit(h: self)
  let slotval1 = gen_qcoreevent_types.QEvent(h: e)
  vtbl[].changeEvent(self, slotval1)

proc QTextEditwheelEvent*(self: gen_qtextedit_types.QTextEdit, e: gen_qevent_types.QWheelEvent): void =
  fcQTextEdit_virtualbase_wheelEvent(self.h, e.h)

proc miqt_exec_callback_cQTextEdit_wheelEvent(vtbl: pointer, self: pointer, e: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QTextEditVTable](vtbl)
  let self = QTextEdit(h: self)
  let slotval1 = gen_qevent_types.QWheelEvent(h: e)
  vtbl[].wheelEvent(self, slotval1)

proc QTextEditcreateMimeDataFromSelection*(self: gen_qtextedit_types.QTextEdit, ): gen_qmimedata_types.QMimeData =
  gen_qmimedata_types.QMimeData(h: fcQTextEdit_virtualbase_createMimeDataFromSelection(self.h))

proc miqt_exec_callback_cQTextEdit_createMimeDataFromSelection(vtbl: pointer, self: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QTextEditVTable](vtbl)
  let self = QTextEdit(h: self)
  var virtualReturn = vtbl[].createMimeDataFromSelection(self)
  virtualReturn.h

proc QTextEditcanInsertFromMimeData*(self: gen_qtextedit_types.QTextEdit, source: gen_qmimedata_types.QMimeData): bool =
  fcQTextEdit_virtualbase_canInsertFromMimeData(self.h, source.h)

proc miqt_exec_callback_cQTextEdit_canInsertFromMimeData(vtbl: pointer, self: pointer, source: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QTextEditVTable](vtbl)
  let self = QTextEdit(h: self)
  let slotval1 = gen_qmimedata_types.QMimeData(h: source)
  var virtualReturn = vtbl[].canInsertFromMimeData(self, slotval1)
  virtualReturn

proc QTextEditinsertFromMimeData*(self: gen_qtextedit_types.QTextEdit, source: gen_qmimedata_types.QMimeData): void =
  fcQTextEdit_virtualbase_insertFromMimeData(self.h, source.h)

proc miqt_exec_callback_cQTextEdit_insertFromMimeData(vtbl: pointer, self: pointer, source: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QTextEditVTable](vtbl)
  let self = QTextEdit(h: self)
  let slotval1 = gen_qmimedata_types.QMimeData(h: source)
  vtbl[].insertFromMimeData(self, slotval1)

proc QTextEditinputMethodEvent*(self: gen_qtextedit_types.QTextEdit, param1: gen_qevent_types.QInputMethodEvent): void =
  fcQTextEdit_virtualbase_inputMethodEvent(self.h, param1.h)

proc miqt_exec_callback_cQTextEdit_inputMethodEvent(vtbl: pointer, self: pointer, param1: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QTextEditVTable](vtbl)
  let self = QTextEdit(h: self)
  let slotval1 = gen_qevent_types.QInputMethodEvent(h: param1)
  vtbl[].inputMethodEvent(self, slotval1)

proc QTextEditscrollContentsBy*(self: gen_qtextedit_types.QTextEdit, dx: cint, dy: cint): void =
  fcQTextEdit_virtualbase_scrollContentsBy(self.h, dx, dy)

proc miqt_exec_callback_cQTextEdit_scrollContentsBy(vtbl: pointer, self: pointer, dx: cint, dy: cint): void {.cdecl.} =
  let vtbl = cast[ptr QTextEditVTable](vtbl)
  let self = QTextEdit(h: self)
  let slotval1 = dx
  let slotval2 = dy
  vtbl[].scrollContentsBy(self, slotval1, slotval2)

proc QTextEditdoSetTextCursor*(self: gen_qtextedit_types.QTextEdit, cursor: gen_qtextcursor_types.QTextCursor): void =
  fcQTextEdit_virtualbase_doSetTextCursor(self.h, cursor.h)

proc miqt_exec_callback_cQTextEdit_doSetTextCursor(vtbl: pointer, self: pointer, cursor: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QTextEditVTable](vtbl)
  let self = QTextEdit(h: self)
  let slotval1 = gen_qtextcursor_types.QTextCursor(h: cursor)
  vtbl[].doSetTextCursor(self, slotval1)

proc QTextEditminimumSizeHint*(self: gen_qtextedit_types.QTextEdit, ): gen_qsize_types.QSize =
  gen_qsize_types.QSize(h: fcQTextEdit_virtualbase_minimumSizeHint(self.h))

proc miqt_exec_callback_cQTextEdit_minimumSizeHint(vtbl: pointer, self: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QTextEditVTable](vtbl)
  let self = QTextEdit(h: self)
  var virtualReturn = vtbl[].minimumSizeHint(self)
  virtualReturn.h

proc QTextEditsizeHint*(self: gen_qtextedit_types.QTextEdit, ): gen_qsize_types.QSize =
  gen_qsize_types.QSize(h: fcQTextEdit_virtualbase_sizeHint(self.h))

proc miqt_exec_callback_cQTextEdit_sizeHint(vtbl: pointer, self: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QTextEditVTable](vtbl)
  let self = QTextEdit(h: self)
  var virtualReturn = vtbl[].sizeHint(self)
  virtualReturn.h

proc QTextEditsetupViewport*(self: gen_qtextedit_types.QTextEdit, viewport: gen_qwidget_types.QWidget): void =
  fcQTextEdit_virtualbase_setupViewport(self.h, viewport.h)

proc miqt_exec_callback_cQTextEdit_setupViewport(vtbl: pointer, self: pointer, viewport: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QTextEditVTable](vtbl)
  let self = QTextEdit(h: self)
  let slotval1 = gen_qwidget_types.QWidget(h: viewport)
  vtbl[].setupViewport(self, slotval1)

proc QTextEditeventFilter*(self: gen_qtextedit_types.QTextEdit, param1: gen_qobject_types.QObject, param2: gen_qcoreevent_types.QEvent): bool =
  fcQTextEdit_virtualbase_eventFilter(self.h, param1.h, param2.h)

proc miqt_exec_callback_cQTextEdit_eventFilter(vtbl: pointer, self: pointer, param1: pointer, param2: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QTextEditVTable](vtbl)
  let self = QTextEdit(h: self)
  let slotval1 = gen_qobject_types.QObject(h: param1)
  let slotval2 = gen_qcoreevent_types.QEvent(h: param2)
  var virtualReturn = vtbl[].eventFilter(self, slotval1, slotval2)
  virtualReturn

proc QTextEditviewportEvent*(self: gen_qtextedit_types.QTextEdit, param1: gen_qcoreevent_types.QEvent): bool =
  fcQTextEdit_virtualbase_viewportEvent(self.h, param1.h)

proc miqt_exec_callback_cQTextEdit_viewportEvent(vtbl: pointer, self: pointer, param1: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QTextEditVTable](vtbl)
  let self = QTextEdit(h: self)
  let slotval1 = gen_qcoreevent_types.QEvent(h: param1)
  var virtualReturn = vtbl[].viewportEvent(self, slotval1)
  virtualReturn

proc QTextEditviewportSizeHint*(self: gen_qtextedit_types.QTextEdit, ): gen_qsize_types.QSize =
  gen_qsize_types.QSize(h: fcQTextEdit_virtualbase_viewportSizeHint(self.h))

proc miqt_exec_callback_cQTextEdit_viewportSizeHint(vtbl: pointer, self: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QTextEditVTable](vtbl)
  let self = QTextEdit(h: self)
  var virtualReturn = vtbl[].viewportSizeHint(self)
  virtualReturn.h

proc QTextEditdevType*(self: gen_qtextedit_types.QTextEdit, ): cint =
  fcQTextEdit_virtualbase_devType(self.h)

proc miqt_exec_callback_cQTextEdit_devType(vtbl: pointer, self: pointer): cint {.cdecl.} =
  let vtbl = cast[ptr QTextEditVTable](vtbl)
  let self = QTextEdit(h: self)
  var virtualReturn = vtbl[].devType(self)
  virtualReturn

proc QTextEditsetVisible*(self: gen_qtextedit_types.QTextEdit, visible: bool): void =
  fcQTextEdit_virtualbase_setVisible(self.h, visible)

proc miqt_exec_callback_cQTextEdit_setVisible(vtbl: pointer, self: pointer, visible: bool): void {.cdecl.} =
  let vtbl = cast[ptr QTextEditVTable](vtbl)
  let self = QTextEdit(h: self)
  let slotval1 = visible
  vtbl[].setVisible(self, slotval1)

proc QTextEditheightForWidth*(self: gen_qtextedit_types.QTextEdit, param1: cint): cint =
  fcQTextEdit_virtualbase_heightForWidth(self.h, param1)

proc miqt_exec_callback_cQTextEdit_heightForWidth(vtbl: pointer, self: pointer, param1: cint): cint {.cdecl.} =
  let vtbl = cast[ptr QTextEditVTable](vtbl)
  let self = QTextEdit(h: self)
  let slotval1 = param1
  var virtualReturn = vtbl[].heightForWidth(self, slotval1)
  virtualReturn

proc QTextEdithasHeightForWidth*(self: gen_qtextedit_types.QTextEdit, ): bool =
  fcQTextEdit_virtualbase_hasHeightForWidth(self.h)

proc miqt_exec_callback_cQTextEdit_hasHeightForWidth(vtbl: pointer, self: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QTextEditVTable](vtbl)
  let self = QTextEdit(h: self)
  var virtualReturn = vtbl[].hasHeightForWidth(self)
  virtualReturn

proc QTextEditpaintEngine*(self: gen_qtextedit_types.QTextEdit, ): gen_qpaintengine_types.QPaintEngine =
  gen_qpaintengine_types.QPaintEngine(h: fcQTextEdit_virtualbase_paintEngine(self.h))

proc miqt_exec_callback_cQTextEdit_paintEngine(vtbl: pointer, self: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QTextEditVTable](vtbl)
  let self = QTextEdit(h: self)
  var virtualReturn = vtbl[].paintEngine(self)
  virtualReturn.h

proc QTextEditenterEvent*(self: gen_qtextedit_types.QTextEdit, event: gen_qcoreevent_types.QEvent): void =
  fcQTextEdit_virtualbase_enterEvent(self.h, event.h)

proc miqt_exec_callback_cQTextEdit_enterEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QTextEditVTable](vtbl)
  let self = QTextEdit(h: self)
  let slotval1 = gen_qcoreevent_types.QEvent(h: event)
  vtbl[].enterEvent(self, slotval1)

proc QTextEditleaveEvent*(self: gen_qtextedit_types.QTextEdit, event: gen_qcoreevent_types.QEvent): void =
  fcQTextEdit_virtualbase_leaveEvent(self.h, event.h)

proc miqt_exec_callback_cQTextEdit_leaveEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QTextEditVTable](vtbl)
  let self = QTextEdit(h: self)
  let slotval1 = gen_qcoreevent_types.QEvent(h: event)
  vtbl[].leaveEvent(self, slotval1)

proc QTextEditmoveEvent*(self: gen_qtextedit_types.QTextEdit, event: gen_qevent_types.QMoveEvent): void =
  fcQTextEdit_virtualbase_moveEvent(self.h, event.h)

proc miqt_exec_callback_cQTextEdit_moveEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QTextEditVTable](vtbl)
  let self = QTextEdit(h: self)
  let slotval1 = gen_qevent_types.QMoveEvent(h: event)
  vtbl[].moveEvent(self, slotval1)

proc QTextEditcloseEvent*(self: gen_qtextedit_types.QTextEdit, event: gen_qevent_types.QCloseEvent): void =
  fcQTextEdit_virtualbase_closeEvent(self.h, event.h)

proc miqt_exec_callback_cQTextEdit_closeEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QTextEditVTable](vtbl)
  let self = QTextEdit(h: self)
  let slotval1 = gen_qevent_types.QCloseEvent(h: event)
  vtbl[].closeEvent(self, slotval1)

proc QTextEdittabletEvent*(self: gen_qtextedit_types.QTextEdit, event: gen_qevent_types.QTabletEvent): void =
  fcQTextEdit_virtualbase_tabletEvent(self.h, event.h)

proc miqt_exec_callback_cQTextEdit_tabletEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QTextEditVTable](vtbl)
  let self = QTextEdit(h: self)
  let slotval1 = gen_qevent_types.QTabletEvent(h: event)
  vtbl[].tabletEvent(self, slotval1)

proc QTextEditactionEvent*(self: gen_qtextedit_types.QTextEdit, event: gen_qevent_types.QActionEvent): void =
  fcQTextEdit_virtualbase_actionEvent(self.h, event.h)

proc miqt_exec_callback_cQTextEdit_actionEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QTextEditVTable](vtbl)
  let self = QTextEdit(h: self)
  let slotval1 = gen_qevent_types.QActionEvent(h: event)
  vtbl[].actionEvent(self, slotval1)

proc QTextEdithideEvent*(self: gen_qtextedit_types.QTextEdit, event: gen_qevent_types.QHideEvent): void =
  fcQTextEdit_virtualbase_hideEvent(self.h, event.h)

proc miqt_exec_callback_cQTextEdit_hideEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QTextEditVTable](vtbl)
  let self = QTextEdit(h: self)
  let slotval1 = gen_qevent_types.QHideEvent(h: event)
  vtbl[].hideEvent(self, slotval1)

proc QTextEditnativeEvent*(self: gen_qtextedit_types.QTextEdit, eventType: seq[byte], message: pointer, resultVal: ptr clong): bool =
  fcQTextEdit_virtualbase_nativeEvent(self.h, struct_miqt_string(data: cast[cstring](if len(eventType) == 0: nil else: unsafeAddr eventType[0]), len: csize_t(len(eventType))), message, resultVal)

proc miqt_exec_callback_cQTextEdit_nativeEvent(vtbl: pointer, self: pointer, eventType: struct_miqt_string, message: pointer, resultVal: ptr clong): bool {.cdecl.} =
  let vtbl = cast[ptr QTextEditVTable](vtbl)
  let self = QTextEdit(h: self)
  var veventType_bytearray = eventType
  var veventTypex_ret = @(toOpenArrayByte(veventType_bytearray.data, 0, int(veventType_bytearray.len)-1))
  c_free(veventType_bytearray.data)
  let slotval1 = veventTypex_ret
  let slotval2 = message
  let slotval3 = resultVal
  var virtualReturn = vtbl[].nativeEvent(self, slotval1, slotval2, slotval3)
  virtualReturn

proc QTextEditmetric*(self: gen_qtextedit_types.QTextEdit, param1: cint): cint =
  fcQTextEdit_virtualbase_metric(self.h, cint(param1))

proc miqt_exec_callback_cQTextEdit_metric(vtbl: pointer, self: pointer, param1: cint): cint {.cdecl.} =
  let vtbl = cast[ptr QTextEditVTable](vtbl)
  let self = QTextEdit(h: self)
  let slotval1 = cint(param1)
  var virtualReturn = vtbl[].metric(self, slotval1)
  virtualReturn

proc QTextEditinitPainter*(self: gen_qtextedit_types.QTextEdit, painter: gen_qpainter_types.QPainter): void =
  fcQTextEdit_virtualbase_initPainter(self.h, painter.h)

proc miqt_exec_callback_cQTextEdit_initPainter(vtbl: pointer, self: pointer, painter: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QTextEditVTable](vtbl)
  let self = QTextEdit(h: self)
  let slotval1 = gen_qpainter_types.QPainter(h: painter)
  vtbl[].initPainter(self, slotval1)

proc QTextEditredirected*(self: gen_qtextedit_types.QTextEdit, offset: gen_qpoint_types.QPoint): gen_qpaintdevice_types.QPaintDevice =
  gen_qpaintdevice_types.QPaintDevice(h: fcQTextEdit_virtualbase_redirected(self.h, offset.h))

proc miqt_exec_callback_cQTextEdit_redirected(vtbl: pointer, self: pointer, offset: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QTextEditVTable](vtbl)
  let self = QTextEdit(h: self)
  let slotval1 = gen_qpoint_types.QPoint(h: offset)
  var virtualReturn = vtbl[].redirected(self, slotval1)
  virtualReturn.h

proc QTextEditsharedPainter*(self: gen_qtextedit_types.QTextEdit, ): gen_qpainter_types.QPainter =
  gen_qpainter_types.QPainter(h: fcQTextEdit_virtualbase_sharedPainter(self.h))

proc miqt_exec_callback_cQTextEdit_sharedPainter(vtbl: pointer, self: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QTextEditVTable](vtbl)
  let self = QTextEdit(h: self)
  var virtualReturn = vtbl[].sharedPainter(self)
  virtualReturn.h

proc QTextEditchildEvent*(self: gen_qtextedit_types.QTextEdit, event: gen_qcoreevent_types.QChildEvent): void =
  fcQTextEdit_virtualbase_childEvent(self.h, event.h)

proc miqt_exec_callback_cQTextEdit_childEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QTextEditVTable](vtbl)
  let self = QTextEdit(h: self)
  let slotval1 = gen_qcoreevent_types.QChildEvent(h: event)
  vtbl[].childEvent(self, slotval1)

proc QTextEditcustomEvent*(self: gen_qtextedit_types.QTextEdit, event: gen_qcoreevent_types.QEvent): void =
  fcQTextEdit_virtualbase_customEvent(self.h, event.h)

proc miqt_exec_callback_cQTextEdit_customEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QTextEditVTable](vtbl)
  let self = QTextEdit(h: self)
  let slotval1 = gen_qcoreevent_types.QEvent(h: event)
  vtbl[].customEvent(self, slotval1)

proc QTextEditconnectNotify*(self: gen_qtextedit_types.QTextEdit, signal: gen_qmetaobject_types.QMetaMethod): void =
  fcQTextEdit_virtualbase_connectNotify(self.h, signal.h)

proc miqt_exec_callback_cQTextEdit_connectNotify(vtbl: pointer, self: pointer, signal: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QTextEditVTable](vtbl)
  let self = QTextEdit(h: self)
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal)
  vtbl[].connectNotify(self, slotval1)

proc QTextEditdisconnectNotify*(self: gen_qtextedit_types.QTextEdit, signal: gen_qmetaobject_types.QMetaMethod): void =
  fcQTextEdit_virtualbase_disconnectNotify(self.h, signal.h)

proc miqt_exec_callback_cQTextEdit_disconnectNotify(vtbl: pointer, self: pointer, signal: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QTextEditVTable](vtbl)
  let self = QTextEdit(h: self)
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal)
  vtbl[].disconnectNotify(self, slotval1)

proc create*(T: type gen_qtextedit_types.QTextEdit,
    parent: gen_qwidget_types.QWidget,
    vtbl: ref QTextEditVTable = nil): gen_qtextedit_types.QTextEdit =
  let vtbl = if vtbl == nil: new QTextEditVTable else: vtbl
  GC_ref(vtbl)
  vtbl.vtbl.destructor = proc(vtbl: ptr cQTextEditVTable, _: ptr cQTextEdit) {.cdecl.} =
    let vtbl = cast[ref QTextEditVTable](vtbl)
    GC_unref(vtbl)
  if not isNil(vtbl.metaObject):
    vtbl[].vtbl.metaObject = miqt_exec_callback_cQTextEdit_metaObject
  if not isNil(vtbl.metacast):
    vtbl[].vtbl.metacast = miqt_exec_callback_cQTextEdit_metacast
  if not isNil(vtbl.metacall):
    vtbl[].vtbl.metacall = miqt_exec_callback_cQTextEdit_metacall
  if not isNil(vtbl.loadResource):
    vtbl[].vtbl.loadResource = miqt_exec_callback_cQTextEdit_loadResource
  if not isNil(vtbl.inputMethodQuery):
    vtbl[].vtbl.inputMethodQuery = miqt_exec_callback_cQTextEdit_inputMethodQuery
  if not isNil(vtbl.event):
    vtbl[].vtbl.event = miqt_exec_callback_cQTextEdit_event
  if not isNil(vtbl.timerEvent):
    vtbl[].vtbl.timerEvent = miqt_exec_callback_cQTextEdit_timerEvent
  if not isNil(vtbl.keyPressEvent):
    vtbl[].vtbl.keyPressEvent = miqt_exec_callback_cQTextEdit_keyPressEvent
  if not isNil(vtbl.keyReleaseEvent):
    vtbl[].vtbl.keyReleaseEvent = miqt_exec_callback_cQTextEdit_keyReleaseEvent
  if not isNil(vtbl.resizeEvent):
    vtbl[].vtbl.resizeEvent = miqt_exec_callback_cQTextEdit_resizeEvent
  if not isNil(vtbl.paintEvent):
    vtbl[].vtbl.paintEvent = miqt_exec_callback_cQTextEdit_paintEvent
  if not isNil(vtbl.mousePressEvent):
    vtbl[].vtbl.mousePressEvent = miqt_exec_callback_cQTextEdit_mousePressEvent
  if not isNil(vtbl.mouseMoveEvent):
    vtbl[].vtbl.mouseMoveEvent = miqt_exec_callback_cQTextEdit_mouseMoveEvent
  if not isNil(vtbl.mouseReleaseEvent):
    vtbl[].vtbl.mouseReleaseEvent = miqt_exec_callback_cQTextEdit_mouseReleaseEvent
  if not isNil(vtbl.mouseDoubleClickEvent):
    vtbl[].vtbl.mouseDoubleClickEvent = miqt_exec_callback_cQTextEdit_mouseDoubleClickEvent
  if not isNil(vtbl.focusNextPrevChild):
    vtbl[].vtbl.focusNextPrevChild = miqt_exec_callback_cQTextEdit_focusNextPrevChild
  if not isNil(vtbl.contextMenuEvent):
    vtbl[].vtbl.contextMenuEvent = miqt_exec_callback_cQTextEdit_contextMenuEvent
  if not isNil(vtbl.dragEnterEvent):
    vtbl[].vtbl.dragEnterEvent = miqt_exec_callback_cQTextEdit_dragEnterEvent
  if not isNil(vtbl.dragLeaveEvent):
    vtbl[].vtbl.dragLeaveEvent = miqt_exec_callback_cQTextEdit_dragLeaveEvent
  if not isNil(vtbl.dragMoveEvent):
    vtbl[].vtbl.dragMoveEvent = miqt_exec_callback_cQTextEdit_dragMoveEvent
  if not isNil(vtbl.dropEvent):
    vtbl[].vtbl.dropEvent = miqt_exec_callback_cQTextEdit_dropEvent
  if not isNil(vtbl.focusInEvent):
    vtbl[].vtbl.focusInEvent = miqt_exec_callback_cQTextEdit_focusInEvent
  if not isNil(vtbl.focusOutEvent):
    vtbl[].vtbl.focusOutEvent = miqt_exec_callback_cQTextEdit_focusOutEvent
  if not isNil(vtbl.showEvent):
    vtbl[].vtbl.showEvent = miqt_exec_callback_cQTextEdit_showEvent
  if not isNil(vtbl.changeEvent):
    vtbl[].vtbl.changeEvent = miqt_exec_callback_cQTextEdit_changeEvent
  if not isNil(vtbl.wheelEvent):
    vtbl[].vtbl.wheelEvent = miqt_exec_callback_cQTextEdit_wheelEvent
  if not isNil(vtbl.createMimeDataFromSelection):
    vtbl[].vtbl.createMimeDataFromSelection = miqt_exec_callback_cQTextEdit_createMimeDataFromSelection
  if not isNil(vtbl.canInsertFromMimeData):
    vtbl[].vtbl.canInsertFromMimeData = miqt_exec_callback_cQTextEdit_canInsertFromMimeData
  if not isNil(vtbl.insertFromMimeData):
    vtbl[].vtbl.insertFromMimeData = miqt_exec_callback_cQTextEdit_insertFromMimeData
  if not isNil(vtbl.inputMethodEvent):
    vtbl[].vtbl.inputMethodEvent = miqt_exec_callback_cQTextEdit_inputMethodEvent
  if not isNil(vtbl.scrollContentsBy):
    vtbl[].vtbl.scrollContentsBy = miqt_exec_callback_cQTextEdit_scrollContentsBy
  if not isNil(vtbl.doSetTextCursor):
    vtbl[].vtbl.doSetTextCursor = miqt_exec_callback_cQTextEdit_doSetTextCursor
  if not isNil(vtbl.minimumSizeHint):
    vtbl[].vtbl.minimumSizeHint = miqt_exec_callback_cQTextEdit_minimumSizeHint
  if not isNil(vtbl.sizeHint):
    vtbl[].vtbl.sizeHint = miqt_exec_callback_cQTextEdit_sizeHint
  if not isNil(vtbl.setupViewport):
    vtbl[].vtbl.setupViewport = miqt_exec_callback_cQTextEdit_setupViewport
  if not isNil(vtbl.eventFilter):
    vtbl[].vtbl.eventFilter = miqt_exec_callback_cQTextEdit_eventFilter
  if not isNil(vtbl.viewportEvent):
    vtbl[].vtbl.viewportEvent = miqt_exec_callback_cQTextEdit_viewportEvent
  if not isNil(vtbl.viewportSizeHint):
    vtbl[].vtbl.viewportSizeHint = miqt_exec_callback_cQTextEdit_viewportSizeHint
  if not isNil(vtbl.devType):
    vtbl[].vtbl.devType = miqt_exec_callback_cQTextEdit_devType
  if not isNil(vtbl.setVisible):
    vtbl[].vtbl.setVisible = miqt_exec_callback_cQTextEdit_setVisible
  if not isNil(vtbl.heightForWidth):
    vtbl[].vtbl.heightForWidth = miqt_exec_callback_cQTextEdit_heightForWidth
  if not isNil(vtbl.hasHeightForWidth):
    vtbl[].vtbl.hasHeightForWidth = miqt_exec_callback_cQTextEdit_hasHeightForWidth
  if not isNil(vtbl.paintEngine):
    vtbl[].vtbl.paintEngine = miqt_exec_callback_cQTextEdit_paintEngine
  if not isNil(vtbl.enterEvent):
    vtbl[].vtbl.enterEvent = miqt_exec_callback_cQTextEdit_enterEvent
  if not isNil(vtbl.leaveEvent):
    vtbl[].vtbl.leaveEvent = miqt_exec_callback_cQTextEdit_leaveEvent
  if not isNil(vtbl.moveEvent):
    vtbl[].vtbl.moveEvent = miqt_exec_callback_cQTextEdit_moveEvent
  if not isNil(vtbl.closeEvent):
    vtbl[].vtbl.closeEvent = miqt_exec_callback_cQTextEdit_closeEvent
  if not isNil(vtbl.tabletEvent):
    vtbl[].vtbl.tabletEvent = miqt_exec_callback_cQTextEdit_tabletEvent
  if not isNil(vtbl.actionEvent):
    vtbl[].vtbl.actionEvent = miqt_exec_callback_cQTextEdit_actionEvent
  if not isNil(vtbl.hideEvent):
    vtbl[].vtbl.hideEvent = miqt_exec_callback_cQTextEdit_hideEvent
  if not isNil(vtbl.nativeEvent):
    vtbl[].vtbl.nativeEvent = miqt_exec_callback_cQTextEdit_nativeEvent
  if not isNil(vtbl.metric):
    vtbl[].vtbl.metric = miqt_exec_callback_cQTextEdit_metric
  if not isNil(vtbl.initPainter):
    vtbl[].vtbl.initPainter = miqt_exec_callback_cQTextEdit_initPainter
  if not isNil(vtbl.redirected):
    vtbl[].vtbl.redirected = miqt_exec_callback_cQTextEdit_redirected
  if not isNil(vtbl.sharedPainter):
    vtbl[].vtbl.sharedPainter = miqt_exec_callback_cQTextEdit_sharedPainter
  if not isNil(vtbl.childEvent):
    vtbl[].vtbl.childEvent = miqt_exec_callback_cQTextEdit_childEvent
  if not isNil(vtbl.customEvent):
    vtbl[].vtbl.customEvent = miqt_exec_callback_cQTextEdit_customEvent
  if not isNil(vtbl.connectNotify):
    vtbl[].vtbl.connectNotify = miqt_exec_callback_cQTextEdit_connectNotify
  if not isNil(vtbl.disconnectNotify):
    vtbl[].vtbl.disconnectNotify = miqt_exec_callback_cQTextEdit_disconnectNotify
  gen_qtextedit_types.QTextEdit(h: fcQTextEdit_new(addr(vtbl[]), parent.h))

proc create*(T: type gen_qtextedit_types.QTextEdit,
    vtbl: ref QTextEditVTable = nil): gen_qtextedit_types.QTextEdit =
  let vtbl = if vtbl == nil: new QTextEditVTable else: vtbl
  GC_ref(vtbl)
  vtbl.vtbl.destructor = proc(vtbl: ptr cQTextEditVTable, _: ptr cQTextEdit) {.cdecl.} =
    let vtbl = cast[ref QTextEditVTable](vtbl)
    GC_unref(vtbl)
  if not isNil(vtbl.metaObject):
    vtbl[].vtbl.metaObject = miqt_exec_callback_cQTextEdit_metaObject
  if not isNil(vtbl.metacast):
    vtbl[].vtbl.metacast = miqt_exec_callback_cQTextEdit_metacast
  if not isNil(vtbl.metacall):
    vtbl[].vtbl.metacall = miqt_exec_callback_cQTextEdit_metacall
  if not isNil(vtbl.loadResource):
    vtbl[].vtbl.loadResource = miqt_exec_callback_cQTextEdit_loadResource
  if not isNil(vtbl.inputMethodQuery):
    vtbl[].vtbl.inputMethodQuery = miqt_exec_callback_cQTextEdit_inputMethodQuery
  if not isNil(vtbl.event):
    vtbl[].vtbl.event = miqt_exec_callback_cQTextEdit_event
  if not isNil(vtbl.timerEvent):
    vtbl[].vtbl.timerEvent = miqt_exec_callback_cQTextEdit_timerEvent
  if not isNil(vtbl.keyPressEvent):
    vtbl[].vtbl.keyPressEvent = miqt_exec_callback_cQTextEdit_keyPressEvent
  if not isNil(vtbl.keyReleaseEvent):
    vtbl[].vtbl.keyReleaseEvent = miqt_exec_callback_cQTextEdit_keyReleaseEvent
  if not isNil(vtbl.resizeEvent):
    vtbl[].vtbl.resizeEvent = miqt_exec_callback_cQTextEdit_resizeEvent
  if not isNil(vtbl.paintEvent):
    vtbl[].vtbl.paintEvent = miqt_exec_callback_cQTextEdit_paintEvent
  if not isNil(vtbl.mousePressEvent):
    vtbl[].vtbl.mousePressEvent = miqt_exec_callback_cQTextEdit_mousePressEvent
  if not isNil(vtbl.mouseMoveEvent):
    vtbl[].vtbl.mouseMoveEvent = miqt_exec_callback_cQTextEdit_mouseMoveEvent
  if not isNil(vtbl.mouseReleaseEvent):
    vtbl[].vtbl.mouseReleaseEvent = miqt_exec_callback_cQTextEdit_mouseReleaseEvent
  if not isNil(vtbl.mouseDoubleClickEvent):
    vtbl[].vtbl.mouseDoubleClickEvent = miqt_exec_callback_cQTextEdit_mouseDoubleClickEvent
  if not isNil(vtbl.focusNextPrevChild):
    vtbl[].vtbl.focusNextPrevChild = miqt_exec_callback_cQTextEdit_focusNextPrevChild
  if not isNil(vtbl.contextMenuEvent):
    vtbl[].vtbl.contextMenuEvent = miqt_exec_callback_cQTextEdit_contextMenuEvent
  if not isNil(vtbl.dragEnterEvent):
    vtbl[].vtbl.dragEnterEvent = miqt_exec_callback_cQTextEdit_dragEnterEvent
  if not isNil(vtbl.dragLeaveEvent):
    vtbl[].vtbl.dragLeaveEvent = miqt_exec_callback_cQTextEdit_dragLeaveEvent
  if not isNil(vtbl.dragMoveEvent):
    vtbl[].vtbl.dragMoveEvent = miqt_exec_callback_cQTextEdit_dragMoveEvent
  if not isNil(vtbl.dropEvent):
    vtbl[].vtbl.dropEvent = miqt_exec_callback_cQTextEdit_dropEvent
  if not isNil(vtbl.focusInEvent):
    vtbl[].vtbl.focusInEvent = miqt_exec_callback_cQTextEdit_focusInEvent
  if not isNil(vtbl.focusOutEvent):
    vtbl[].vtbl.focusOutEvent = miqt_exec_callback_cQTextEdit_focusOutEvent
  if not isNil(vtbl.showEvent):
    vtbl[].vtbl.showEvent = miqt_exec_callback_cQTextEdit_showEvent
  if not isNil(vtbl.changeEvent):
    vtbl[].vtbl.changeEvent = miqt_exec_callback_cQTextEdit_changeEvent
  if not isNil(vtbl.wheelEvent):
    vtbl[].vtbl.wheelEvent = miqt_exec_callback_cQTextEdit_wheelEvent
  if not isNil(vtbl.createMimeDataFromSelection):
    vtbl[].vtbl.createMimeDataFromSelection = miqt_exec_callback_cQTextEdit_createMimeDataFromSelection
  if not isNil(vtbl.canInsertFromMimeData):
    vtbl[].vtbl.canInsertFromMimeData = miqt_exec_callback_cQTextEdit_canInsertFromMimeData
  if not isNil(vtbl.insertFromMimeData):
    vtbl[].vtbl.insertFromMimeData = miqt_exec_callback_cQTextEdit_insertFromMimeData
  if not isNil(vtbl.inputMethodEvent):
    vtbl[].vtbl.inputMethodEvent = miqt_exec_callback_cQTextEdit_inputMethodEvent
  if not isNil(vtbl.scrollContentsBy):
    vtbl[].vtbl.scrollContentsBy = miqt_exec_callback_cQTextEdit_scrollContentsBy
  if not isNil(vtbl.doSetTextCursor):
    vtbl[].vtbl.doSetTextCursor = miqt_exec_callback_cQTextEdit_doSetTextCursor
  if not isNil(vtbl.minimumSizeHint):
    vtbl[].vtbl.minimumSizeHint = miqt_exec_callback_cQTextEdit_minimumSizeHint
  if not isNil(vtbl.sizeHint):
    vtbl[].vtbl.sizeHint = miqt_exec_callback_cQTextEdit_sizeHint
  if not isNil(vtbl.setupViewport):
    vtbl[].vtbl.setupViewport = miqt_exec_callback_cQTextEdit_setupViewport
  if not isNil(vtbl.eventFilter):
    vtbl[].vtbl.eventFilter = miqt_exec_callback_cQTextEdit_eventFilter
  if not isNil(vtbl.viewportEvent):
    vtbl[].vtbl.viewportEvent = miqt_exec_callback_cQTextEdit_viewportEvent
  if not isNil(vtbl.viewportSizeHint):
    vtbl[].vtbl.viewportSizeHint = miqt_exec_callback_cQTextEdit_viewportSizeHint
  if not isNil(vtbl.devType):
    vtbl[].vtbl.devType = miqt_exec_callback_cQTextEdit_devType
  if not isNil(vtbl.setVisible):
    vtbl[].vtbl.setVisible = miqt_exec_callback_cQTextEdit_setVisible
  if not isNil(vtbl.heightForWidth):
    vtbl[].vtbl.heightForWidth = miqt_exec_callback_cQTextEdit_heightForWidth
  if not isNil(vtbl.hasHeightForWidth):
    vtbl[].vtbl.hasHeightForWidth = miqt_exec_callback_cQTextEdit_hasHeightForWidth
  if not isNil(vtbl.paintEngine):
    vtbl[].vtbl.paintEngine = miqt_exec_callback_cQTextEdit_paintEngine
  if not isNil(vtbl.enterEvent):
    vtbl[].vtbl.enterEvent = miqt_exec_callback_cQTextEdit_enterEvent
  if not isNil(vtbl.leaveEvent):
    vtbl[].vtbl.leaveEvent = miqt_exec_callback_cQTextEdit_leaveEvent
  if not isNil(vtbl.moveEvent):
    vtbl[].vtbl.moveEvent = miqt_exec_callback_cQTextEdit_moveEvent
  if not isNil(vtbl.closeEvent):
    vtbl[].vtbl.closeEvent = miqt_exec_callback_cQTextEdit_closeEvent
  if not isNil(vtbl.tabletEvent):
    vtbl[].vtbl.tabletEvent = miqt_exec_callback_cQTextEdit_tabletEvent
  if not isNil(vtbl.actionEvent):
    vtbl[].vtbl.actionEvent = miqt_exec_callback_cQTextEdit_actionEvent
  if not isNil(vtbl.hideEvent):
    vtbl[].vtbl.hideEvent = miqt_exec_callback_cQTextEdit_hideEvent
  if not isNil(vtbl.nativeEvent):
    vtbl[].vtbl.nativeEvent = miqt_exec_callback_cQTextEdit_nativeEvent
  if not isNil(vtbl.metric):
    vtbl[].vtbl.metric = miqt_exec_callback_cQTextEdit_metric
  if not isNil(vtbl.initPainter):
    vtbl[].vtbl.initPainter = miqt_exec_callback_cQTextEdit_initPainter
  if not isNil(vtbl.redirected):
    vtbl[].vtbl.redirected = miqt_exec_callback_cQTextEdit_redirected
  if not isNil(vtbl.sharedPainter):
    vtbl[].vtbl.sharedPainter = miqt_exec_callback_cQTextEdit_sharedPainter
  if not isNil(vtbl.childEvent):
    vtbl[].vtbl.childEvent = miqt_exec_callback_cQTextEdit_childEvent
  if not isNil(vtbl.customEvent):
    vtbl[].vtbl.customEvent = miqt_exec_callback_cQTextEdit_customEvent
  if not isNil(vtbl.connectNotify):
    vtbl[].vtbl.connectNotify = miqt_exec_callback_cQTextEdit_connectNotify
  if not isNil(vtbl.disconnectNotify):
    vtbl[].vtbl.disconnectNotify = miqt_exec_callback_cQTextEdit_disconnectNotify
  gen_qtextedit_types.QTextEdit(h: fcQTextEdit_new2(addr(vtbl[]), ))

proc create*(T: type gen_qtextedit_types.QTextEdit,
    text: string,
    vtbl: ref QTextEditVTable = nil): gen_qtextedit_types.QTextEdit =
  let vtbl = if vtbl == nil: new QTextEditVTable else: vtbl
  GC_ref(vtbl)
  vtbl.vtbl.destructor = proc(vtbl: ptr cQTextEditVTable, _: ptr cQTextEdit) {.cdecl.} =
    let vtbl = cast[ref QTextEditVTable](vtbl)
    GC_unref(vtbl)
  if not isNil(vtbl.metaObject):
    vtbl[].vtbl.metaObject = miqt_exec_callback_cQTextEdit_metaObject
  if not isNil(vtbl.metacast):
    vtbl[].vtbl.metacast = miqt_exec_callback_cQTextEdit_metacast
  if not isNil(vtbl.metacall):
    vtbl[].vtbl.metacall = miqt_exec_callback_cQTextEdit_metacall
  if not isNil(vtbl.loadResource):
    vtbl[].vtbl.loadResource = miqt_exec_callback_cQTextEdit_loadResource
  if not isNil(vtbl.inputMethodQuery):
    vtbl[].vtbl.inputMethodQuery = miqt_exec_callback_cQTextEdit_inputMethodQuery
  if not isNil(vtbl.event):
    vtbl[].vtbl.event = miqt_exec_callback_cQTextEdit_event
  if not isNil(vtbl.timerEvent):
    vtbl[].vtbl.timerEvent = miqt_exec_callback_cQTextEdit_timerEvent
  if not isNil(vtbl.keyPressEvent):
    vtbl[].vtbl.keyPressEvent = miqt_exec_callback_cQTextEdit_keyPressEvent
  if not isNil(vtbl.keyReleaseEvent):
    vtbl[].vtbl.keyReleaseEvent = miqt_exec_callback_cQTextEdit_keyReleaseEvent
  if not isNil(vtbl.resizeEvent):
    vtbl[].vtbl.resizeEvent = miqt_exec_callback_cQTextEdit_resizeEvent
  if not isNil(vtbl.paintEvent):
    vtbl[].vtbl.paintEvent = miqt_exec_callback_cQTextEdit_paintEvent
  if not isNil(vtbl.mousePressEvent):
    vtbl[].vtbl.mousePressEvent = miqt_exec_callback_cQTextEdit_mousePressEvent
  if not isNil(vtbl.mouseMoveEvent):
    vtbl[].vtbl.mouseMoveEvent = miqt_exec_callback_cQTextEdit_mouseMoveEvent
  if not isNil(vtbl.mouseReleaseEvent):
    vtbl[].vtbl.mouseReleaseEvent = miqt_exec_callback_cQTextEdit_mouseReleaseEvent
  if not isNil(vtbl.mouseDoubleClickEvent):
    vtbl[].vtbl.mouseDoubleClickEvent = miqt_exec_callback_cQTextEdit_mouseDoubleClickEvent
  if not isNil(vtbl.focusNextPrevChild):
    vtbl[].vtbl.focusNextPrevChild = miqt_exec_callback_cQTextEdit_focusNextPrevChild
  if not isNil(vtbl.contextMenuEvent):
    vtbl[].vtbl.contextMenuEvent = miqt_exec_callback_cQTextEdit_contextMenuEvent
  if not isNil(vtbl.dragEnterEvent):
    vtbl[].vtbl.dragEnterEvent = miqt_exec_callback_cQTextEdit_dragEnterEvent
  if not isNil(vtbl.dragLeaveEvent):
    vtbl[].vtbl.dragLeaveEvent = miqt_exec_callback_cQTextEdit_dragLeaveEvent
  if not isNil(vtbl.dragMoveEvent):
    vtbl[].vtbl.dragMoveEvent = miqt_exec_callback_cQTextEdit_dragMoveEvent
  if not isNil(vtbl.dropEvent):
    vtbl[].vtbl.dropEvent = miqt_exec_callback_cQTextEdit_dropEvent
  if not isNil(vtbl.focusInEvent):
    vtbl[].vtbl.focusInEvent = miqt_exec_callback_cQTextEdit_focusInEvent
  if not isNil(vtbl.focusOutEvent):
    vtbl[].vtbl.focusOutEvent = miqt_exec_callback_cQTextEdit_focusOutEvent
  if not isNil(vtbl.showEvent):
    vtbl[].vtbl.showEvent = miqt_exec_callback_cQTextEdit_showEvent
  if not isNil(vtbl.changeEvent):
    vtbl[].vtbl.changeEvent = miqt_exec_callback_cQTextEdit_changeEvent
  if not isNil(vtbl.wheelEvent):
    vtbl[].vtbl.wheelEvent = miqt_exec_callback_cQTextEdit_wheelEvent
  if not isNil(vtbl.createMimeDataFromSelection):
    vtbl[].vtbl.createMimeDataFromSelection = miqt_exec_callback_cQTextEdit_createMimeDataFromSelection
  if not isNil(vtbl.canInsertFromMimeData):
    vtbl[].vtbl.canInsertFromMimeData = miqt_exec_callback_cQTextEdit_canInsertFromMimeData
  if not isNil(vtbl.insertFromMimeData):
    vtbl[].vtbl.insertFromMimeData = miqt_exec_callback_cQTextEdit_insertFromMimeData
  if not isNil(vtbl.inputMethodEvent):
    vtbl[].vtbl.inputMethodEvent = miqt_exec_callback_cQTextEdit_inputMethodEvent
  if not isNil(vtbl.scrollContentsBy):
    vtbl[].vtbl.scrollContentsBy = miqt_exec_callback_cQTextEdit_scrollContentsBy
  if not isNil(vtbl.doSetTextCursor):
    vtbl[].vtbl.doSetTextCursor = miqt_exec_callback_cQTextEdit_doSetTextCursor
  if not isNil(vtbl.minimumSizeHint):
    vtbl[].vtbl.minimumSizeHint = miqt_exec_callback_cQTextEdit_minimumSizeHint
  if not isNil(vtbl.sizeHint):
    vtbl[].vtbl.sizeHint = miqt_exec_callback_cQTextEdit_sizeHint
  if not isNil(vtbl.setupViewport):
    vtbl[].vtbl.setupViewport = miqt_exec_callback_cQTextEdit_setupViewport
  if not isNil(vtbl.eventFilter):
    vtbl[].vtbl.eventFilter = miqt_exec_callback_cQTextEdit_eventFilter
  if not isNil(vtbl.viewportEvent):
    vtbl[].vtbl.viewportEvent = miqt_exec_callback_cQTextEdit_viewportEvent
  if not isNil(vtbl.viewportSizeHint):
    vtbl[].vtbl.viewportSizeHint = miqt_exec_callback_cQTextEdit_viewportSizeHint
  if not isNil(vtbl.devType):
    vtbl[].vtbl.devType = miqt_exec_callback_cQTextEdit_devType
  if not isNil(vtbl.setVisible):
    vtbl[].vtbl.setVisible = miqt_exec_callback_cQTextEdit_setVisible
  if not isNil(vtbl.heightForWidth):
    vtbl[].vtbl.heightForWidth = miqt_exec_callback_cQTextEdit_heightForWidth
  if not isNil(vtbl.hasHeightForWidth):
    vtbl[].vtbl.hasHeightForWidth = miqt_exec_callback_cQTextEdit_hasHeightForWidth
  if not isNil(vtbl.paintEngine):
    vtbl[].vtbl.paintEngine = miqt_exec_callback_cQTextEdit_paintEngine
  if not isNil(vtbl.enterEvent):
    vtbl[].vtbl.enterEvent = miqt_exec_callback_cQTextEdit_enterEvent
  if not isNil(vtbl.leaveEvent):
    vtbl[].vtbl.leaveEvent = miqt_exec_callback_cQTextEdit_leaveEvent
  if not isNil(vtbl.moveEvent):
    vtbl[].vtbl.moveEvent = miqt_exec_callback_cQTextEdit_moveEvent
  if not isNil(vtbl.closeEvent):
    vtbl[].vtbl.closeEvent = miqt_exec_callback_cQTextEdit_closeEvent
  if not isNil(vtbl.tabletEvent):
    vtbl[].vtbl.tabletEvent = miqt_exec_callback_cQTextEdit_tabletEvent
  if not isNil(vtbl.actionEvent):
    vtbl[].vtbl.actionEvent = miqt_exec_callback_cQTextEdit_actionEvent
  if not isNil(vtbl.hideEvent):
    vtbl[].vtbl.hideEvent = miqt_exec_callback_cQTextEdit_hideEvent
  if not isNil(vtbl.nativeEvent):
    vtbl[].vtbl.nativeEvent = miqt_exec_callback_cQTextEdit_nativeEvent
  if not isNil(vtbl.metric):
    vtbl[].vtbl.metric = miqt_exec_callback_cQTextEdit_metric
  if not isNil(vtbl.initPainter):
    vtbl[].vtbl.initPainter = miqt_exec_callback_cQTextEdit_initPainter
  if not isNil(vtbl.redirected):
    vtbl[].vtbl.redirected = miqt_exec_callback_cQTextEdit_redirected
  if not isNil(vtbl.sharedPainter):
    vtbl[].vtbl.sharedPainter = miqt_exec_callback_cQTextEdit_sharedPainter
  if not isNil(vtbl.childEvent):
    vtbl[].vtbl.childEvent = miqt_exec_callback_cQTextEdit_childEvent
  if not isNil(vtbl.customEvent):
    vtbl[].vtbl.customEvent = miqt_exec_callback_cQTextEdit_customEvent
  if not isNil(vtbl.connectNotify):
    vtbl[].vtbl.connectNotify = miqt_exec_callback_cQTextEdit_connectNotify
  if not isNil(vtbl.disconnectNotify):
    vtbl[].vtbl.disconnectNotify = miqt_exec_callback_cQTextEdit_disconnectNotify
  gen_qtextedit_types.QTextEdit(h: fcQTextEdit_new3(addr(vtbl[]), struct_miqt_string(data: text, len: csize_t(len(text)))))

proc create*(T: type gen_qtextedit_types.QTextEdit,
    text: string, parent: gen_qwidget_types.QWidget,
    vtbl: ref QTextEditVTable = nil): gen_qtextedit_types.QTextEdit =
  let vtbl = if vtbl == nil: new QTextEditVTable else: vtbl
  GC_ref(vtbl)
  vtbl.vtbl.destructor = proc(vtbl: ptr cQTextEditVTable, _: ptr cQTextEdit) {.cdecl.} =
    let vtbl = cast[ref QTextEditVTable](vtbl)
    GC_unref(vtbl)
  if not isNil(vtbl.metaObject):
    vtbl[].vtbl.metaObject = miqt_exec_callback_cQTextEdit_metaObject
  if not isNil(vtbl.metacast):
    vtbl[].vtbl.metacast = miqt_exec_callback_cQTextEdit_metacast
  if not isNil(vtbl.metacall):
    vtbl[].vtbl.metacall = miqt_exec_callback_cQTextEdit_metacall
  if not isNil(vtbl.loadResource):
    vtbl[].vtbl.loadResource = miqt_exec_callback_cQTextEdit_loadResource
  if not isNil(vtbl.inputMethodQuery):
    vtbl[].vtbl.inputMethodQuery = miqt_exec_callback_cQTextEdit_inputMethodQuery
  if not isNil(vtbl.event):
    vtbl[].vtbl.event = miqt_exec_callback_cQTextEdit_event
  if not isNil(vtbl.timerEvent):
    vtbl[].vtbl.timerEvent = miqt_exec_callback_cQTextEdit_timerEvent
  if not isNil(vtbl.keyPressEvent):
    vtbl[].vtbl.keyPressEvent = miqt_exec_callback_cQTextEdit_keyPressEvent
  if not isNil(vtbl.keyReleaseEvent):
    vtbl[].vtbl.keyReleaseEvent = miqt_exec_callback_cQTextEdit_keyReleaseEvent
  if not isNil(vtbl.resizeEvent):
    vtbl[].vtbl.resizeEvent = miqt_exec_callback_cQTextEdit_resizeEvent
  if not isNil(vtbl.paintEvent):
    vtbl[].vtbl.paintEvent = miqt_exec_callback_cQTextEdit_paintEvent
  if not isNil(vtbl.mousePressEvent):
    vtbl[].vtbl.mousePressEvent = miqt_exec_callback_cQTextEdit_mousePressEvent
  if not isNil(vtbl.mouseMoveEvent):
    vtbl[].vtbl.mouseMoveEvent = miqt_exec_callback_cQTextEdit_mouseMoveEvent
  if not isNil(vtbl.mouseReleaseEvent):
    vtbl[].vtbl.mouseReleaseEvent = miqt_exec_callback_cQTextEdit_mouseReleaseEvent
  if not isNil(vtbl.mouseDoubleClickEvent):
    vtbl[].vtbl.mouseDoubleClickEvent = miqt_exec_callback_cQTextEdit_mouseDoubleClickEvent
  if not isNil(vtbl.focusNextPrevChild):
    vtbl[].vtbl.focusNextPrevChild = miqt_exec_callback_cQTextEdit_focusNextPrevChild
  if not isNil(vtbl.contextMenuEvent):
    vtbl[].vtbl.contextMenuEvent = miqt_exec_callback_cQTextEdit_contextMenuEvent
  if not isNil(vtbl.dragEnterEvent):
    vtbl[].vtbl.dragEnterEvent = miqt_exec_callback_cQTextEdit_dragEnterEvent
  if not isNil(vtbl.dragLeaveEvent):
    vtbl[].vtbl.dragLeaveEvent = miqt_exec_callback_cQTextEdit_dragLeaveEvent
  if not isNil(vtbl.dragMoveEvent):
    vtbl[].vtbl.dragMoveEvent = miqt_exec_callback_cQTextEdit_dragMoveEvent
  if not isNil(vtbl.dropEvent):
    vtbl[].vtbl.dropEvent = miqt_exec_callback_cQTextEdit_dropEvent
  if not isNil(vtbl.focusInEvent):
    vtbl[].vtbl.focusInEvent = miqt_exec_callback_cQTextEdit_focusInEvent
  if not isNil(vtbl.focusOutEvent):
    vtbl[].vtbl.focusOutEvent = miqt_exec_callback_cQTextEdit_focusOutEvent
  if not isNil(vtbl.showEvent):
    vtbl[].vtbl.showEvent = miqt_exec_callback_cQTextEdit_showEvent
  if not isNil(vtbl.changeEvent):
    vtbl[].vtbl.changeEvent = miqt_exec_callback_cQTextEdit_changeEvent
  if not isNil(vtbl.wheelEvent):
    vtbl[].vtbl.wheelEvent = miqt_exec_callback_cQTextEdit_wheelEvent
  if not isNil(vtbl.createMimeDataFromSelection):
    vtbl[].vtbl.createMimeDataFromSelection = miqt_exec_callback_cQTextEdit_createMimeDataFromSelection
  if not isNil(vtbl.canInsertFromMimeData):
    vtbl[].vtbl.canInsertFromMimeData = miqt_exec_callback_cQTextEdit_canInsertFromMimeData
  if not isNil(vtbl.insertFromMimeData):
    vtbl[].vtbl.insertFromMimeData = miqt_exec_callback_cQTextEdit_insertFromMimeData
  if not isNil(vtbl.inputMethodEvent):
    vtbl[].vtbl.inputMethodEvent = miqt_exec_callback_cQTextEdit_inputMethodEvent
  if not isNil(vtbl.scrollContentsBy):
    vtbl[].vtbl.scrollContentsBy = miqt_exec_callback_cQTextEdit_scrollContentsBy
  if not isNil(vtbl.doSetTextCursor):
    vtbl[].vtbl.doSetTextCursor = miqt_exec_callback_cQTextEdit_doSetTextCursor
  if not isNil(vtbl.minimumSizeHint):
    vtbl[].vtbl.minimumSizeHint = miqt_exec_callback_cQTextEdit_minimumSizeHint
  if not isNil(vtbl.sizeHint):
    vtbl[].vtbl.sizeHint = miqt_exec_callback_cQTextEdit_sizeHint
  if not isNil(vtbl.setupViewport):
    vtbl[].vtbl.setupViewport = miqt_exec_callback_cQTextEdit_setupViewport
  if not isNil(vtbl.eventFilter):
    vtbl[].vtbl.eventFilter = miqt_exec_callback_cQTextEdit_eventFilter
  if not isNil(vtbl.viewportEvent):
    vtbl[].vtbl.viewportEvent = miqt_exec_callback_cQTextEdit_viewportEvent
  if not isNil(vtbl.viewportSizeHint):
    vtbl[].vtbl.viewportSizeHint = miqt_exec_callback_cQTextEdit_viewportSizeHint
  if not isNil(vtbl.devType):
    vtbl[].vtbl.devType = miqt_exec_callback_cQTextEdit_devType
  if not isNil(vtbl.setVisible):
    vtbl[].vtbl.setVisible = miqt_exec_callback_cQTextEdit_setVisible
  if not isNil(vtbl.heightForWidth):
    vtbl[].vtbl.heightForWidth = miqt_exec_callback_cQTextEdit_heightForWidth
  if not isNil(vtbl.hasHeightForWidth):
    vtbl[].vtbl.hasHeightForWidth = miqt_exec_callback_cQTextEdit_hasHeightForWidth
  if not isNil(vtbl.paintEngine):
    vtbl[].vtbl.paintEngine = miqt_exec_callback_cQTextEdit_paintEngine
  if not isNil(vtbl.enterEvent):
    vtbl[].vtbl.enterEvent = miqt_exec_callback_cQTextEdit_enterEvent
  if not isNil(vtbl.leaveEvent):
    vtbl[].vtbl.leaveEvent = miqt_exec_callback_cQTextEdit_leaveEvent
  if not isNil(vtbl.moveEvent):
    vtbl[].vtbl.moveEvent = miqt_exec_callback_cQTextEdit_moveEvent
  if not isNil(vtbl.closeEvent):
    vtbl[].vtbl.closeEvent = miqt_exec_callback_cQTextEdit_closeEvent
  if not isNil(vtbl.tabletEvent):
    vtbl[].vtbl.tabletEvent = miqt_exec_callback_cQTextEdit_tabletEvent
  if not isNil(vtbl.actionEvent):
    vtbl[].vtbl.actionEvent = miqt_exec_callback_cQTextEdit_actionEvent
  if not isNil(vtbl.hideEvent):
    vtbl[].vtbl.hideEvent = miqt_exec_callback_cQTextEdit_hideEvent
  if not isNil(vtbl.nativeEvent):
    vtbl[].vtbl.nativeEvent = miqt_exec_callback_cQTextEdit_nativeEvent
  if not isNil(vtbl.metric):
    vtbl[].vtbl.metric = miqt_exec_callback_cQTextEdit_metric
  if not isNil(vtbl.initPainter):
    vtbl[].vtbl.initPainter = miqt_exec_callback_cQTextEdit_initPainter
  if not isNil(vtbl.redirected):
    vtbl[].vtbl.redirected = miqt_exec_callback_cQTextEdit_redirected
  if not isNil(vtbl.sharedPainter):
    vtbl[].vtbl.sharedPainter = miqt_exec_callback_cQTextEdit_sharedPainter
  if not isNil(vtbl.childEvent):
    vtbl[].vtbl.childEvent = miqt_exec_callback_cQTextEdit_childEvent
  if not isNil(vtbl.customEvent):
    vtbl[].vtbl.customEvent = miqt_exec_callback_cQTextEdit_customEvent
  if not isNil(vtbl.connectNotify):
    vtbl[].vtbl.connectNotify = miqt_exec_callback_cQTextEdit_connectNotify
  if not isNil(vtbl.disconnectNotify):
    vtbl[].vtbl.disconnectNotify = miqt_exec_callback_cQTextEdit_disconnectNotify
  gen_qtextedit_types.QTextEdit(h: fcQTextEdit_new4(addr(vtbl[]), struct_miqt_string(data: text, len: csize_t(len(text))), parent.h))

proc staticMetaObject*(_: type gen_qtextedit_types.QTextEdit): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQTextEdit_staticMetaObject())
proc delete*(self: gen_qtextedit_types.QTextEdit) =
  fcQTextEdit_delete(self.h)
proc operatorAssign*(self: gen_qtextedit_types.QTextEditExtraSelection, param1: gen_qtextedit_types.QTextEditExtraSelection): void =
  fcQTextEditExtraSelection_operatorAssign(self.h, param1.h)

proc create*(T: type gen_qtextedit_types.QTextEditExtraSelection,
    param1: gen_qtextedit_types.QTextEditExtraSelection): gen_qtextedit_types.QTextEditExtraSelection =
  gen_qtextedit_types.QTextEditExtraSelection(h: fcQTextEditExtraSelection_new(param1.h))

proc delete*(self: gen_qtextedit_types.QTextEditExtraSelection) =
  fcQTextEditExtraSelection_delete(self.h)
