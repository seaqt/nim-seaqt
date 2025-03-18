import ./qtwidgets_pkg

{.push raises: [].}

from system/ansi_c import c_free, c_malloc

type
  struct_miqt_string {.used.} = object
    len: csize_t
    data: pointer

  struct_miqt_array {.used.} = object
    len: csize_t
    data: pointer

  struct_miqt_map {.used.} = object
    len: csize_t
    keys: pointer
    values: pointer

  miqt_uintptr_t {.importc: "uintptr_t", header: "stdint.h", used.} = uint
  miqt_intptr_t {.importc: "intptr_t", header: "stdint.h", used.} = int

func fromBytes(T: type string, v: struct_miqt_string): string {.used.} =
  if v.len > 0:
    let len = cast[int](v.len)
    result = newString(len)
    when nimvm:
      let d = cast[ptr UncheckedArray[char]](v.data)
      for i in 0..<len:
        result[i] = d[i]
    else:
      copyMem(addr result[0], v.data, len)


{.compile("gen_qplaintextedit.cpp", QtWidgetsCFlags).}


type QPlainTextEditLineWrapModeEnum* = distinct cint
template NoWrap*(_: type QPlainTextEditLineWrapModeEnum): untyped = 0
template WidgetWidth*(_: type QPlainTextEditLineWrapModeEnum): untyped = 1


import ./gen_qplaintextedit_types
export gen_qplaintextedit_types

import
  ../QtCore/gen_qcoreevent_types,
  ../QtCore/gen_qmargins_types,
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
  gen_qmargins_types,
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

proc fcQPlainTextEdit_metaObject(self: pointer): pointer {.importc: "QPlainTextEdit_metaObject".}
proc fcQPlainTextEdit_metacast(self: pointer, param1: cstring): pointer {.importc: "QPlainTextEdit_metacast".}
proc fcQPlainTextEdit_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.importc: "QPlainTextEdit_metacall".}
proc fcQPlainTextEdit_tr(s: cstring): struct_miqt_string {.importc: "QPlainTextEdit_tr".}
proc fcQPlainTextEdit_setDocument(self: pointer, document: pointer): void {.importc: "QPlainTextEdit_setDocument".}
proc fcQPlainTextEdit_document(self: pointer): pointer {.importc: "QPlainTextEdit_document".}
proc fcQPlainTextEdit_setPlaceholderText(self: pointer, placeholderText: struct_miqt_string): void {.importc: "QPlainTextEdit_setPlaceholderText".}
proc fcQPlainTextEdit_placeholderText(self: pointer): struct_miqt_string {.importc: "QPlainTextEdit_placeholderText".}
proc fcQPlainTextEdit_setTextCursor(self: pointer, cursor: pointer): void {.importc: "QPlainTextEdit_setTextCursor".}
proc fcQPlainTextEdit_textCursor(self: pointer): pointer {.importc: "QPlainTextEdit_textCursor".}
proc fcQPlainTextEdit_isReadOnly(self: pointer): bool {.importc: "QPlainTextEdit_isReadOnly".}
proc fcQPlainTextEdit_setReadOnly(self: pointer, ro: bool): void {.importc: "QPlainTextEdit_setReadOnly".}
proc fcQPlainTextEdit_setTextInteractionFlags(self: pointer, flags: cint): void {.importc: "QPlainTextEdit_setTextInteractionFlags".}
proc fcQPlainTextEdit_textInteractionFlags(self: pointer): cint {.importc: "QPlainTextEdit_textInteractionFlags".}
proc fcQPlainTextEdit_mergeCurrentCharFormat(self: pointer, modifier: pointer): void {.importc: "QPlainTextEdit_mergeCurrentCharFormat".}
proc fcQPlainTextEdit_setCurrentCharFormat(self: pointer, format: pointer): void {.importc: "QPlainTextEdit_setCurrentCharFormat".}
proc fcQPlainTextEdit_currentCharFormat(self: pointer): pointer {.importc: "QPlainTextEdit_currentCharFormat".}
proc fcQPlainTextEdit_tabChangesFocus(self: pointer): bool {.importc: "QPlainTextEdit_tabChangesFocus".}
proc fcQPlainTextEdit_setTabChangesFocus(self: pointer, b: bool): void {.importc: "QPlainTextEdit_setTabChangesFocus".}
proc fcQPlainTextEdit_setDocumentTitle(self: pointer, title: struct_miqt_string): void {.importc: "QPlainTextEdit_setDocumentTitle".}
proc fcQPlainTextEdit_documentTitle(self: pointer): struct_miqt_string {.importc: "QPlainTextEdit_documentTitle".}
proc fcQPlainTextEdit_isUndoRedoEnabled(self: pointer): bool {.importc: "QPlainTextEdit_isUndoRedoEnabled".}
proc fcQPlainTextEdit_setUndoRedoEnabled(self: pointer, enable: bool): void {.importc: "QPlainTextEdit_setUndoRedoEnabled".}
proc fcQPlainTextEdit_setMaximumBlockCount(self: pointer, maximum: cint): void {.importc: "QPlainTextEdit_setMaximumBlockCount".}
proc fcQPlainTextEdit_maximumBlockCount(self: pointer): cint {.importc: "QPlainTextEdit_maximumBlockCount".}
proc fcQPlainTextEdit_lineWrapMode(self: pointer): cint {.importc: "QPlainTextEdit_lineWrapMode".}
proc fcQPlainTextEdit_setLineWrapMode(self: pointer, mode: cint): void {.importc: "QPlainTextEdit_setLineWrapMode".}
proc fcQPlainTextEdit_wordWrapMode(self: pointer): cint {.importc: "QPlainTextEdit_wordWrapMode".}
proc fcQPlainTextEdit_setWordWrapMode(self: pointer, policy: cint): void {.importc: "QPlainTextEdit_setWordWrapMode".}
proc fcQPlainTextEdit_setBackgroundVisible(self: pointer, visible: bool): void {.importc: "QPlainTextEdit_setBackgroundVisible".}
proc fcQPlainTextEdit_backgroundVisible(self: pointer): bool {.importc: "QPlainTextEdit_backgroundVisible".}
proc fcQPlainTextEdit_setCenterOnScroll(self: pointer, enabled: bool): void {.importc: "QPlainTextEdit_setCenterOnScroll".}
proc fcQPlainTextEdit_centerOnScroll(self: pointer): bool {.importc: "QPlainTextEdit_centerOnScroll".}
proc fcQPlainTextEdit_find(self: pointer, exp: struct_miqt_string): bool {.importc: "QPlainTextEdit_find".}
proc fcQPlainTextEdit_findWithExp(self: pointer, exp: pointer): bool {.importc: "QPlainTextEdit_findWithExp".}
proc fcQPlainTextEdit_toPlainText(self: pointer): struct_miqt_string {.importc: "QPlainTextEdit_toPlainText".}
proc fcQPlainTextEdit_ensureCursorVisible(self: pointer): void {.importc: "QPlainTextEdit_ensureCursorVisible".}
proc fcQPlainTextEdit_loadResource(self: pointer, typeVal: cint, name: pointer): pointer {.importc: "QPlainTextEdit_loadResource".}
proc fcQPlainTextEdit_createStandardContextMenu(self: pointer): pointer {.importc: "QPlainTextEdit_createStandardContextMenu".}
proc fcQPlainTextEdit_createStandardContextMenuWithPosition(self: pointer, position: pointer): pointer {.importc: "QPlainTextEdit_createStandardContextMenuWithPosition".}
proc fcQPlainTextEdit_cursorForPosition(self: pointer, pos: pointer): pointer {.importc: "QPlainTextEdit_cursorForPosition".}
proc fcQPlainTextEdit_cursorRect(self: pointer, cursor: pointer): pointer {.importc: "QPlainTextEdit_cursorRect".}
proc fcQPlainTextEdit_cursorRect2(self: pointer): pointer {.importc: "QPlainTextEdit_cursorRect2".}
proc fcQPlainTextEdit_anchorAt(self: pointer, pos: pointer): struct_miqt_string {.importc: "QPlainTextEdit_anchorAt".}
proc fcQPlainTextEdit_overwriteMode(self: pointer): bool {.importc: "QPlainTextEdit_overwriteMode".}
proc fcQPlainTextEdit_setOverwriteMode(self: pointer, overwrite: bool): void {.importc: "QPlainTextEdit_setOverwriteMode".}
proc fcQPlainTextEdit_tabStopDistance(self: pointer): float64 {.importc: "QPlainTextEdit_tabStopDistance".}
proc fcQPlainTextEdit_setTabStopDistance(self: pointer, distance: float64): void {.importc: "QPlainTextEdit_setTabStopDistance".}
proc fcQPlainTextEdit_cursorWidth(self: pointer): cint {.importc: "QPlainTextEdit_cursorWidth".}
proc fcQPlainTextEdit_setCursorWidth(self: pointer, width: cint): void {.importc: "QPlainTextEdit_setCursorWidth".}
proc fcQPlainTextEdit_setExtraSelections(self: pointer, selections: struct_miqt_array): void {.importc: "QPlainTextEdit_setExtraSelections".}
proc fcQPlainTextEdit_extraSelections(self: pointer): struct_miqt_array {.importc: "QPlainTextEdit_extraSelections".}
proc fcQPlainTextEdit_moveCursor(self: pointer, operation: cint): void {.importc: "QPlainTextEdit_moveCursor".}
proc fcQPlainTextEdit_canPaste(self: pointer): bool {.importc: "QPlainTextEdit_canPaste".}
proc fcQPlainTextEdit_print(self: pointer, printer: pointer): void {.importc: "QPlainTextEdit_print".}
proc fcQPlainTextEdit_blockCount(self: pointer): cint {.importc: "QPlainTextEdit_blockCount".}
proc fcQPlainTextEdit_inputMethodQuery(self: pointer, property: cint): pointer {.importc: "QPlainTextEdit_inputMethodQuery".}
proc fcQPlainTextEdit_inputMethodQuery2(self: pointer, query: cint, argument: pointer): pointer {.importc: "QPlainTextEdit_inputMethodQuery2".}
proc fcQPlainTextEdit_setPlainText(self: pointer, text: struct_miqt_string): void {.importc: "QPlainTextEdit_setPlainText".}
proc fcQPlainTextEdit_cut(self: pointer): void {.importc: "QPlainTextEdit_cut".}
proc fcQPlainTextEdit_copy(self: pointer): void {.importc: "QPlainTextEdit_copy".}
proc fcQPlainTextEdit_paste(self: pointer): void {.importc: "QPlainTextEdit_paste".}
proc fcQPlainTextEdit_undo(self: pointer): void {.importc: "QPlainTextEdit_undo".}
proc fcQPlainTextEdit_redo(self: pointer): void {.importc: "QPlainTextEdit_redo".}
proc fcQPlainTextEdit_clear(self: pointer): void {.importc: "QPlainTextEdit_clear".}
proc fcQPlainTextEdit_selectAll(self: pointer): void {.importc: "QPlainTextEdit_selectAll".}
proc fcQPlainTextEdit_insertPlainText(self: pointer, text: struct_miqt_string): void {.importc: "QPlainTextEdit_insertPlainText".}
proc fcQPlainTextEdit_appendPlainText(self: pointer, text: struct_miqt_string): void {.importc: "QPlainTextEdit_appendPlainText".}
proc fcQPlainTextEdit_appendHtml(self: pointer, html: struct_miqt_string): void {.importc: "QPlainTextEdit_appendHtml".}
proc fcQPlainTextEdit_centerCursor(self: pointer): void {.importc: "QPlainTextEdit_centerCursor".}
proc fcQPlainTextEdit_zoomIn(self: pointer): void {.importc: "QPlainTextEdit_zoomIn".}
proc fcQPlainTextEdit_zoomOut(self: pointer): void {.importc: "QPlainTextEdit_zoomOut".}
proc fcQPlainTextEdit_textChanged(self: pointer): void {.importc: "QPlainTextEdit_textChanged".}
proc fcQPlainTextEdit_connect_textChanged(self: pointer, slot: int, callback: proc (slot: int) {.cdecl.}, release: proc(slot: int) {.cdecl.}) {.importc: "QPlainTextEdit_connect_textChanged".}
proc fcQPlainTextEdit_undoAvailable(self: pointer, b: bool): void {.importc: "QPlainTextEdit_undoAvailable".}
proc fcQPlainTextEdit_connect_undoAvailable(self: pointer, slot: int, callback: proc (slot: int, b: bool) {.cdecl.}, release: proc(slot: int) {.cdecl.}) {.importc: "QPlainTextEdit_connect_undoAvailable".}
proc fcQPlainTextEdit_redoAvailable(self: pointer, b: bool): void {.importc: "QPlainTextEdit_redoAvailable".}
proc fcQPlainTextEdit_connect_redoAvailable(self: pointer, slot: int, callback: proc (slot: int, b: bool) {.cdecl.}, release: proc(slot: int) {.cdecl.}) {.importc: "QPlainTextEdit_connect_redoAvailable".}
proc fcQPlainTextEdit_copyAvailable(self: pointer, b: bool): void {.importc: "QPlainTextEdit_copyAvailable".}
proc fcQPlainTextEdit_connect_copyAvailable(self: pointer, slot: int, callback: proc (slot: int, b: bool) {.cdecl.}, release: proc(slot: int) {.cdecl.}) {.importc: "QPlainTextEdit_connect_copyAvailable".}
proc fcQPlainTextEdit_selectionChanged(self: pointer): void {.importc: "QPlainTextEdit_selectionChanged".}
proc fcQPlainTextEdit_connect_selectionChanged(self: pointer, slot: int, callback: proc (slot: int) {.cdecl.}, release: proc(slot: int) {.cdecl.}) {.importc: "QPlainTextEdit_connect_selectionChanged".}
proc fcQPlainTextEdit_cursorPositionChanged(self: pointer): void {.importc: "QPlainTextEdit_cursorPositionChanged".}
proc fcQPlainTextEdit_connect_cursorPositionChanged(self: pointer, slot: int, callback: proc (slot: int) {.cdecl.}, release: proc(slot: int) {.cdecl.}) {.importc: "QPlainTextEdit_connect_cursorPositionChanged".}
proc fcQPlainTextEdit_updateRequest(self: pointer, rect: pointer, dy: cint): void {.importc: "QPlainTextEdit_updateRequest".}
proc fcQPlainTextEdit_connect_updateRequest(self: pointer, slot: int, callback: proc (slot: int, rect: pointer, dy: cint) {.cdecl.}, release: proc(slot: int) {.cdecl.}) {.importc: "QPlainTextEdit_connect_updateRequest".}
proc fcQPlainTextEdit_blockCountChanged(self: pointer, newBlockCount: cint): void {.importc: "QPlainTextEdit_blockCountChanged".}
proc fcQPlainTextEdit_connect_blockCountChanged(self: pointer, slot: int, callback: proc (slot: int, newBlockCount: cint) {.cdecl.}, release: proc(slot: int) {.cdecl.}) {.importc: "QPlainTextEdit_connect_blockCountChanged".}
proc fcQPlainTextEdit_modificationChanged(self: pointer, param1: bool): void {.importc: "QPlainTextEdit_modificationChanged".}
proc fcQPlainTextEdit_connect_modificationChanged(self: pointer, slot: int, callback: proc (slot: int, param1: bool) {.cdecl.}, release: proc(slot: int) {.cdecl.}) {.importc: "QPlainTextEdit_connect_modificationChanged".}
proc fcQPlainTextEdit_tr2(s: cstring, c: cstring): struct_miqt_string {.importc: "QPlainTextEdit_tr2".}
proc fcQPlainTextEdit_tr3(s: cstring, c: cstring, n: cint): struct_miqt_string {.importc: "QPlainTextEdit_tr3".}
proc fcQPlainTextEdit_find2(self: pointer, exp: struct_miqt_string, options: cint): bool {.importc: "QPlainTextEdit_find2".}
proc fcQPlainTextEdit_find22(self: pointer, exp: pointer, options: cint): bool {.importc: "QPlainTextEdit_find22".}
proc fcQPlainTextEdit_moveCursor2(self: pointer, operation: cint, mode: cint): void {.importc: "QPlainTextEdit_moveCursor2".}
proc fcQPlainTextEdit_zoomIn1(self: pointer, range: cint): void {.importc: "QPlainTextEdit_zoomIn1".}
proc fcQPlainTextEdit_zoomOut1(self: pointer, range: cint): void {.importc: "QPlainTextEdit_zoomOut1".}
proc fcQPlainTextEdit_vtbl(self: pointer): pointer {.importc: "QPlainTextEdit_vtbl".}
proc fcQPlainTextEdit_vdata(self: pointer): pointer {.importc: "QPlainTextEdit_vdata".}

type cQPlainTextEditVTable {.pure.} = object
  destructor*: proc(self: pointer) {.cdecl, raises:[], gcsafe.}
  metaObject*: proc(self: pointer): pointer {.cdecl, raises: [], gcsafe.}
  metacast*: proc(self: pointer, param1: cstring): pointer {.cdecl, raises: [], gcsafe.}
  metacall*: proc(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.cdecl, raises: [], gcsafe.}
  loadResource*: proc(self: pointer, typeVal: cint, name: pointer): pointer {.cdecl, raises: [], gcsafe.}
  inputMethodQuery*: proc(self: pointer, property: cint): pointer {.cdecl, raises: [], gcsafe.}
  event*: proc(self: pointer, e: pointer): bool {.cdecl, raises: [], gcsafe.}
  timerEvent*: proc(self: pointer, e: pointer): void {.cdecl, raises: [], gcsafe.}
  keyPressEvent*: proc(self: pointer, e: pointer): void {.cdecl, raises: [], gcsafe.}
  keyReleaseEvent*: proc(self: pointer, e: pointer): void {.cdecl, raises: [], gcsafe.}
  resizeEvent*: proc(self: pointer, e: pointer): void {.cdecl, raises: [], gcsafe.}
  paintEvent*: proc(self: pointer, e: pointer): void {.cdecl, raises: [], gcsafe.}
  mousePressEvent*: proc(self: pointer, e: pointer): void {.cdecl, raises: [], gcsafe.}
  mouseMoveEvent*: proc(self: pointer, e: pointer): void {.cdecl, raises: [], gcsafe.}
  mouseReleaseEvent*: proc(self: pointer, e: pointer): void {.cdecl, raises: [], gcsafe.}
  mouseDoubleClickEvent*: proc(self: pointer, e: pointer): void {.cdecl, raises: [], gcsafe.}
  focusNextPrevChild*: proc(self: pointer, next: bool): bool {.cdecl, raises: [], gcsafe.}
  contextMenuEvent*: proc(self: pointer, e: pointer): void {.cdecl, raises: [], gcsafe.}
  dragEnterEvent*: proc(self: pointer, e: pointer): void {.cdecl, raises: [], gcsafe.}
  dragLeaveEvent*: proc(self: pointer, e: pointer): void {.cdecl, raises: [], gcsafe.}
  dragMoveEvent*: proc(self: pointer, e: pointer): void {.cdecl, raises: [], gcsafe.}
  dropEvent*: proc(self: pointer, e: pointer): void {.cdecl, raises: [], gcsafe.}
  focusInEvent*: proc(self: pointer, e: pointer): void {.cdecl, raises: [], gcsafe.}
  focusOutEvent*: proc(self: pointer, e: pointer): void {.cdecl, raises: [], gcsafe.}
  showEvent*: proc(self: pointer, param1: pointer): void {.cdecl, raises: [], gcsafe.}
  changeEvent*: proc(self: pointer, e: pointer): void {.cdecl, raises: [], gcsafe.}
  wheelEvent*: proc(self: pointer, e: pointer): void {.cdecl, raises: [], gcsafe.}
  createMimeDataFromSelection*: proc(self: pointer): pointer {.cdecl, raises: [], gcsafe.}
  canInsertFromMimeData*: proc(self: pointer, source: pointer): bool {.cdecl, raises: [], gcsafe.}
  insertFromMimeData*: proc(self: pointer, source: pointer): void {.cdecl, raises: [], gcsafe.}
  inputMethodEvent*: proc(self: pointer, param1: pointer): void {.cdecl, raises: [], gcsafe.}
  scrollContentsBy*: proc(self: pointer, dx: cint, dy: cint): void {.cdecl, raises: [], gcsafe.}
  doSetTextCursor*: proc(self: pointer, cursor: pointer): void {.cdecl, raises: [], gcsafe.}
  minimumSizeHint*: proc(self: pointer): pointer {.cdecl, raises: [], gcsafe.}
  sizeHint*: proc(self: pointer): pointer {.cdecl, raises: [], gcsafe.}
  setupViewport*: proc(self: pointer, viewport: pointer): void {.cdecl, raises: [], gcsafe.}
  eventFilter*: proc(self: pointer, param1: pointer, param2: pointer): bool {.cdecl, raises: [], gcsafe.}
  viewportEvent*: proc(self: pointer, param1: pointer): bool {.cdecl, raises: [], gcsafe.}
  viewportSizeHint*: proc(self: pointer): pointer {.cdecl, raises: [], gcsafe.}
  initStyleOption*: proc(self: pointer, option: pointer): void {.cdecl, raises: [], gcsafe.}
  devType*: proc(self: pointer): cint {.cdecl, raises: [], gcsafe.}
  setVisible*: proc(self: pointer, visible: bool): void {.cdecl, raises: [], gcsafe.}
  heightForWidth*: proc(self: pointer, param1: cint): cint {.cdecl, raises: [], gcsafe.}
  hasHeightForWidth*: proc(self: pointer): bool {.cdecl, raises: [], gcsafe.}
  paintEngine*: proc(self: pointer): pointer {.cdecl, raises: [], gcsafe.}
  enterEvent*: proc(self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  leaveEvent*: proc(self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  moveEvent*: proc(self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  closeEvent*: proc(self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  tabletEvent*: proc(self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  actionEvent*: proc(self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  hideEvent*: proc(self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  nativeEvent*: proc(self: pointer, eventType: struct_miqt_string, message: pointer, resultVal: ptr uint): bool {.cdecl, raises: [], gcsafe.}
  metric*: proc(self: pointer, param1: cint): cint {.cdecl, raises: [], gcsafe.}
  initPainter*: proc(self: pointer, painter: pointer): void {.cdecl, raises: [], gcsafe.}
  redirected*: proc(self: pointer, offset: pointer): pointer {.cdecl, raises: [], gcsafe.}
  sharedPainter*: proc(self: pointer): pointer {.cdecl, raises: [], gcsafe.}
  childEvent*: proc(self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  customEvent*: proc(self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  connectNotify*: proc(self: pointer, signal: pointer): void {.cdecl, raises: [], gcsafe.}
  disconnectNotify*: proc(self: pointer, signal: pointer): void {.cdecl, raises: [], gcsafe.}
proc fcQPlainTextEdit_virtualbase_metaObject(self: pointer): pointer {.importc: "QPlainTextEdit_virtualbase_metaObject".}
proc fcQPlainTextEdit_virtualbase_metacast(self: pointer, param1: cstring): pointer {.importc: "QPlainTextEdit_virtualbase_metacast".}
proc fcQPlainTextEdit_virtualbase_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.importc: "QPlainTextEdit_virtualbase_metacall".}
proc fcQPlainTextEdit_virtualbase_loadResource(self: pointer, typeVal: cint, name: pointer): pointer {.importc: "QPlainTextEdit_virtualbase_loadResource".}
proc fcQPlainTextEdit_virtualbase_inputMethodQuery(self: pointer, property: cint): pointer {.importc: "QPlainTextEdit_virtualbase_inputMethodQuery".}
proc fcQPlainTextEdit_virtualbase_event(self: pointer, e: pointer): bool {.importc: "QPlainTextEdit_virtualbase_event".}
proc fcQPlainTextEdit_virtualbase_timerEvent(self: pointer, e: pointer): void {.importc: "QPlainTextEdit_virtualbase_timerEvent".}
proc fcQPlainTextEdit_virtualbase_keyPressEvent(self: pointer, e: pointer): void {.importc: "QPlainTextEdit_virtualbase_keyPressEvent".}
proc fcQPlainTextEdit_virtualbase_keyReleaseEvent(self: pointer, e: pointer): void {.importc: "QPlainTextEdit_virtualbase_keyReleaseEvent".}
proc fcQPlainTextEdit_virtualbase_resizeEvent(self: pointer, e: pointer): void {.importc: "QPlainTextEdit_virtualbase_resizeEvent".}
proc fcQPlainTextEdit_virtualbase_paintEvent(self: pointer, e: pointer): void {.importc: "QPlainTextEdit_virtualbase_paintEvent".}
proc fcQPlainTextEdit_virtualbase_mousePressEvent(self: pointer, e: pointer): void {.importc: "QPlainTextEdit_virtualbase_mousePressEvent".}
proc fcQPlainTextEdit_virtualbase_mouseMoveEvent(self: pointer, e: pointer): void {.importc: "QPlainTextEdit_virtualbase_mouseMoveEvent".}
proc fcQPlainTextEdit_virtualbase_mouseReleaseEvent(self: pointer, e: pointer): void {.importc: "QPlainTextEdit_virtualbase_mouseReleaseEvent".}
proc fcQPlainTextEdit_virtualbase_mouseDoubleClickEvent(self: pointer, e: pointer): void {.importc: "QPlainTextEdit_virtualbase_mouseDoubleClickEvent".}
proc fcQPlainTextEdit_virtualbase_focusNextPrevChild(self: pointer, next: bool): bool {.importc: "QPlainTextEdit_virtualbase_focusNextPrevChild".}
proc fcQPlainTextEdit_virtualbase_contextMenuEvent(self: pointer, e: pointer): void {.importc: "QPlainTextEdit_virtualbase_contextMenuEvent".}
proc fcQPlainTextEdit_virtualbase_dragEnterEvent(self: pointer, e: pointer): void {.importc: "QPlainTextEdit_virtualbase_dragEnterEvent".}
proc fcQPlainTextEdit_virtualbase_dragLeaveEvent(self: pointer, e: pointer): void {.importc: "QPlainTextEdit_virtualbase_dragLeaveEvent".}
proc fcQPlainTextEdit_virtualbase_dragMoveEvent(self: pointer, e: pointer): void {.importc: "QPlainTextEdit_virtualbase_dragMoveEvent".}
proc fcQPlainTextEdit_virtualbase_dropEvent(self: pointer, e: pointer): void {.importc: "QPlainTextEdit_virtualbase_dropEvent".}
proc fcQPlainTextEdit_virtualbase_focusInEvent(self: pointer, e: pointer): void {.importc: "QPlainTextEdit_virtualbase_focusInEvent".}
proc fcQPlainTextEdit_virtualbase_focusOutEvent(self: pointer, e: pointer): void {.importc: "QPlainTextEdit_virtualbase_focusOutEvent".}
proc fcQPlainTextEdit_virtualbase_showEvent(self: pointer, param1: pointer): void {.importc: "QPlainTextEdit_virtualbase_showEvent".}
proc fcQPlainTextEdit_virtualbase_changeEvent(self: pointer, e: pointer): void {.importc: "QPlainTextEdit_virtualbase_changeEvent".}
proc fcQPlainTextEdit_virtualbase_wheelEvent(self: pointer, e: pointer): void {.importc: "QPlainTextEdit_virtualbase_wheelEvent".}
proc fcQPlainTextEdit_virtualbase_createMimeDataFromSelection(self: pointer): pointer {.importc: "QPlainTextEdit_virtualbase_createMimeDataFromSelection".}
proc fcQPlainTextEdit_virtualbase_canInsertFromMimeData(self: pointer, source: pointer): bool {.importc: "QPlainTextEdit_virtualbase_canInsertFromMimeData".}
proc fcQPlainTextEdit_virtualbase_insertFromMimeData(self: pointer, source: pointer): void {.importc: "QPlainTextEdit_virtualbase_insertFromMimeData".}
proc fcQPlainTextEdit_virtualbase_inputMethodEvent(self: pointer, param1: pointer): void {.importc: "QPlainTextEdit_virtualbase_inputMethodEvent".}
proc fcQPlainTextEdit_virtualbase_scrollContentsBy(self: pointer, dx: cint, dy: cint): void {.importc: "QPlainTextEdit_virtualbase_scrollContentsBy".}
proc fcQPlainTextEdit_virtualbase_doSetTextCursor(self: pointer, cursor: pointer): void {.importc: "QPlainTextEdit_virtualbase_doSetTextCursor".}
proc fcQPlainTextEdit_virtualbase_minimumSizeHint(self: pointer): pointer {.importc: "QPlainTextEdit_virtualbase_minimumSizeHint".}
proc fcQPlainTextEdit_virtualbase_sizeHint(self: pointer): pointer {.importc: "QPlainTextEdit_virtualbase_sizeHint".}
proc fcQPlainTextEdit_virtualbase_setupViewport(self: pointer, viewport: pointer): void {.importc: "QPlainTextEdit_virtualbase_setupViewport".}
proc fcQPlainTextEdit_virtualbase_eventFilter(self: pointer, param1: pointer, param2: pointer): bool {.importc: "QPlainTextEdit_virtualbase_eventFilter".}
proc fcQPlainTextEdit_virtualbase_viewportEvent(self: pointer, param1: pointer): bool {.importc: "QPlainTextEdit_virtualbase_viewportEvent".}
proc fcQPlainTextEdit_virtualbase_viewportSizeHint(self: pointer): pointer {.importc: "QPlainTextEdit_virtualbase_viewportSizeHint".}
proc fcQPlainTextEdit_virtualbase_initStyleOption(self: pointer, option: pointer): void {.importc: "QPlainTextEdit_virtualbase_initStyleOption".}
proc fcQPlainTextEdit_virtualbase_devType(self: pointer): cint {.importc: "QPlainTextEdit_virtualbase_devType".}
proc fcQPlainTextEdit_virtualbase_setVisible(self: pointer, visible: bool): void {.importc: "QPlainTextEdit_virtualbase_setVisible".}
proc fcQPlainTextEdit_virtualbase_heightForWidth(self: pointer, param1: cint): cint {.importc: "QPlainTextEdit_virtualbase_heightForWidth".}
proc fcQPlainTextEdit_virtualbase_hasHeightForWidth(self: pointer): bool {.importc: "QPlainTextEdit_virtualbase_hasHeightForWidth".}
proc fcQPlainTextEdit_virtualbase_paintEngine(self: pointer): pointer {.importc: "QPlainTextEdit_virtualbase_paintEngine".}
proc fcQPlainTextEdit_virtualbase_enterEvent(self: pointer, event: pointer): void {.importc: "QPlainTextEdit_virtualbase_enterEvent".}
proc fcQPlainTextEdit_virtualbase_leaveEvent(self: pointer, event: pointer): void {.importc: "QPlainTextEdit_virtualbase_leaveEvent".}
proc fcQPlainTextEdit_virtualbase_moveEvent(self: pointer, event: pointer): void {.importc: "QPlainTextEdit_virtualbase_moveEvent".}
proc fcQPlainTextEdit_virtualbase_closeEvent(self: pointer, event: pointer): void {.importc: "QPlainTextEdit_virtualbase_closeEvent".}
proc fcQPlainTextEdit_virtualbase_tabletEvent(self: pointer, event: pointer): void {.importc: "QPlainTextEdit_virtualbase_tabletEvent".}
proc fcQPlainTextEdit_virtualbase_actionEvent(self: pointer, event: pointer): void {.importc: "QPlainTextEdit_virtualbase_actionEvent".}
proc fcQPlainTextEdit_virtualbase_hideEvent(self: pointer, event: pointer): void {.importc: "QPlainTextEdit_virtualbase_hideEvent".}
proc fcQPlainTextEdit_virtualbase_nativeEvent(self: pointer, eventType: struct_miqt_string, message: pointer, resultVal: ptr uint): bool {.importc: "QPlainTextEdit_virtualbase_nativeEvent".}
proc fcQPlainTextEdit_virtualbase_metric(self: pointer, param1: cint): cint {.importc: "QPlainTextEdit_virtualbase_metric".}
proc fcQPlainTextEdit_virtualbase_initPainter(self: pointer, painter: pointer): void {.importc: "QPlainTextEdit_virtualbase_initPainter".}
proc fcQPlainTextEdit_virtualbase_redirected(self: pointer, offset: pointer): pointer {.importc: "QPlainTextEdit_virtualbase_redirected".}
proc fcQPlainTextEdit_virtualbase_sharedPainter(self: pointer): pointer {.importc: "QPlainTextEdit_virtualbase_sharedPainter".}
proc fcQPlainTextEdit_virtualbase_childEvent(self: pointer, event: pointer): void {.importc: "QPlainTextEdit_virtualbase_childEvent".}
proc fcQPlainTextEdit_virtualbase_customEvent(self: pointer, event: pointer): void {.importc: "QPlainTextEdit_virtualbase_customEvent".}
proc fcQPlainTextEdit_virtualbase_connectNotify(self: pointer, signal: pointer): void {.importc: "QPlainTextEdit_virtualbase_connectNotify".}
proc fcQPlainTextEdit_virtualbase_disconnectNotify(self: pointer, signal: pointer): void {.importc: "QPlainTextEdit_virtualbase_disconnectNotify".}
proc fcQPlainTextEdit_protectedbase_firstVisibleBlock(self: pointer): pointer {.importc: "QPlainTextEdit_protectedbase_firstVisibleBlock".}
proc fcQPlainTextEdit_protectedbase_contentOffset(self: pointer): pointer {.importc: "QPlainTextEdit_protectedbase_contentOffset".}
proc fcQPlainTextEdit_protectedbase_blockBoundingRect(self: pointer, blockVal: pointer): pointer {.importc: "QPlainTextEdit_protectedbase_blockBoundingRect".}
proc fcQPlainTextEdit_protectedbase_blockBoundingGeometry(self: pointer, blockVal: pointer): pointer {.importc: "QPlainTextEdit_protectedbase_blockBoundingGeometry".}
proc fcQPlainTextEdit_protectedbase_getPaintContext(self: pointer): pointer {.importc: "QPlainTextEdit_protectedbase_getPaintContext".}
proc fcQPlainTextEdit_protectedbase_zoomInF(self: pointer, range: float32): void {.importc: "QPlainTextEdit_protectedbase_zoomInF".}
proc fcQPlainTextEdit_protectedbase_setViewportMargins(self: pointer, left: cint, top: cint, right: cint, bottom: cint): void {.importc: "QPlainTextEdit_protectedbase_setViewportMargins".}
proc fcQPlainTextEdit_protectedbase_viewportMargins(self: pointer): pointer {.importc: "QPlainTextEdit_protectedbase_viewportMargins".}
proc fcQPlainTextEdit_protectedbase_drawFrame(self: pointer, param1: pointer): void {.importc: "QPlainTextEdit_protectedbase_drawFrame".}
proc fcQPlainTextEdit_protectedbase_updateMicroFocus(self: pointer): void {.importc: "QPlainTextEdit_protectedbase_updateMicroFocus".}
proc fcQPlainTextEdit_protectedbase_create(self: pointer): void {.importc: "QPlainTextEdit_protectedbase_create".}
proc fcQPlainTextEdit_protectedbase_destroy(self: pointer): void {.importc: "QPlainTextEdit_protectedbase_destroy".}
proc fcQPlainTextEdit_protectedbase_focusNextChild(self: pointer): bool {.importc: "QPlainTextEdit_protectedbase_focusNextChild".}
proc fcQPlainTextEdit_protectedbase_focusPreviousChild(self: pointer): bool {.importc: "QPlainTextEdit_protectedbase_focusPreviousChild".}
proc fcQPlainTextEdit_protectedbase_sender(self: pointer): pointer {.importc: "QPlainTextEdit_protectedbase_sender".}
proc fcQPlainTextEdit_protectedbase_senderSignalIndex(self: pointer): cint {.importc: "QPlainTextEdit_protectedbase_senderSignalIndex".}
proc fcQPlainTextEdit_protectedbase_receivers(self: pointer, signal: cstring): cint {.importc: "QPlainTextEdit_protectedbase_receivers".}
proc fcQPlainTextEdit_protectedbase_isSignalConnected(self: pointer, signal: pointer): bool {.importc: "QPlainTextEdit_protectedbase_isSignalConnected".}
proc fcQPlainTextEdit_new(vtbl, vdata: pointer, parent: pointer): ptr cQPlainTextEdit {.importc: "QPlainTextEdit_new".}
proc fcQPlainTextEdit_new2(vtbl, vdata: pointer): ptr cQPlainTextEdit {.importc: "QPlainTextEdit_new2".}
proc fcQPlainTextEdit_new3(vtbl, vdata: pointer, text: struct_miqt_string): ptr cQPlainTextEdit {.importc: "QPlainTextEdit_new3".}
proc fcQPlainTextEdit_new4(vtbl, vdata: pointer, text: struct_miqt_string, parent: pointer): ptr cQPlainTextEdit {.importc: "QPlainTextEdit_new4".}
proc fcQPlainTextEdit_staticMetaObject(): pointer {.importc: "QPlainTextEdit_staticMetaObject".}
proc fcQPlainTextDocumentLayout_metaObject(self: pointer): pointer {.importc: "QPlainTextDocumentLayout_metaObject".}
proc fcQPlainTextDocumentLayout_metacast(self: pointer, param1: cstring): pointer {.importc: "QPlainTextDocumentLayout_metacast".}
proc fcQPlainTextDocumentLayout_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.importc: "QPlainTextDocumentLayout_metacall".}
proc fcQPlainTextDocumentLayout_tr(s: cstring): struct_miqt_string {.importc: "QPlainTextDocumentLayout_tr".}
proc fcQPlainTextDocumentLayout_draw(self: pointer, param1: pointer, param2: pointer): void {.importc: "QPlainTextDocumentLayout_draw".}
proc fcQPlainTextDocumentLayout_hitTest(self: pointer, param1: pointer, param2: cint): cint {.importc: "QPlainTextDocumentLayout_hitTest".}
proc fcQPlainTextDocumentLayout_pageCount(self: pointer): cint {.importc: "QPlainTextDocumentLayout_pageCount".}
proc fcQPlainTextDocumentLayout_documentSize(self: pointer): pointer {.importc: "QPlainTextDocumentLayout_documentSize".}
proc fcQPlainTextDocumentLayout_frameBoundingRect(self: pointer, param1: pointer): pointer {.importc: "QPlainTextDocumentLayout_frameBoundingRect".}
proc fcQPlainTextDocumentLayout_blockBoundingRect(self: pointer, blockVal: pointer): pointer {.importc: "QPlainTextDocumentLayout_blockBoundingRect".}
proc fcQPlainTextDocumentLayout_ensureBlockLayout(self: pointer, blockVal: pointer): void {.importc: "QPlainTextDocumentLayout_ensureBlockLayout".}
proc fcQPlainTextDocumentLayout_setCursorWidth(self: pointer, width: cint): void {.importc: "QPlainTextDocumentLayout_setCursorWidth".}
proc fcQPlainTextDocumentLayout_cursorWidth(self: pointer): cint {.importc: "QPlainTextDocumentLayout_cursorWidth".}
proc fcQPlainTextDocumentLayout_requestUpdate(self: pointer): void {.importc: "QPlainTextDocumentLayout_requestUpdate".}
proc fcQPlainTextDocumentLayout_tr2(s: cstring, c: cstring): struct_miqt_string {.importc: "QPlainTextDocumentLayout_tr2".}
proc fcQPlainTextDocumentLayout_tr3(s: cstring, c: cstring, n: cint): struct_miqt_string {.importc: "QPlainTextDocumentLayout_tr3".}
proc fcQPlainTextDocumentLayout_vtbl(self: pointer): pointer {.importc: "QPlainTextDocumentLayout_vtbl".}
proc fcQPlainTextDocumentLayout_vdata(self: pointer): pointer {.importc: "QPlainTextDocumentLayout_vdata".}

type cQPlainTextDocumentLayoutVTable {.pure.} = object
  destructor*: proc(self: pointer) {.cdecl, raises:[], gcsafe.}
  metaObject*: proc(self: pointer): pointer {.cdecl, raises: [], gcsafe.}
  metacast*: proc(self: pointer, param1: cstring): pointer {.cdecl, raises: [], gcsafe.}
  metacall*: proc(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.cdecl, raises: [], gcsafe.}
  draw*: proc(self: pointer, param1: pointer, param2: pointer): void {.cdecl, raises: [], gcsafe.}
  hitTest*: proc(self: pointer, param1: pointer, param2: cint): cint {.cdecl, raises: [], gcsafe.}
  pageCount*: proc(self: pointer): cint {.cdecl, raises: [], gcsafe.}
  documentSize*: proc(self: pointer): pointer {.cdecl, raises: [], gcsafe.}
  frameBoundingRect*: proc(self: pointer, param1: pointer): pointer {.cdecl, raises: [], gcsafe.}
  blockBoundingRect*: proc(self: pointer, blockVal: pointer): pointer {.cdecl, raises: [], gcsafe.}
  documentChanged*: proc(self: pointer, fromVal: cint, param2: cint, charsAdded: cint): void {.cdecl, raises: [], gcsafe.}
  resizeInlineObject*: proc(self: pointer, item: pointer, posInDocument: cint, format: pointer): void {.cdecl, raises: [], gcsafe.}
  positionInlineObject*: proc(self: pointer, item: pointer, posInDocument: cint, format: pointer): void {.cdecl, raises: [], gcsafe.}
  drawInlineObject*: proc(self: pointer, painter: pointer, rect: pointer, objectVal: pointer, posInDocument: cint, format: pointer): void {.cdecl, raises: [], gcsafe.}
  event*: proc(self: pointer, event: pointer): bool {.cdecl, raises: [], gcsafe.}
  eventFilter*: proc(self: pointer, watched: pointer, event: pointer): bool {.cdecl, raises: [], gcsafe.}
  timerEvent*: proc(self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  childEvent*: proc(self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  customEvent*: proc(self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  connectNotify*: proc(self: pointer, signal: pointer): void {.cdecl, raises: [], gcsafe.}
  disconnectNotify*: proc(self: pointer, signal: pointer): void {.cdecl, raises: [], gcsafe.}
proc fcQPlainTextDocumentLayout_virtualbase_metaObject(self: pointer): pointer {.importc: "QPlainTextDocumentLayout_virtualbase_metaObject".}
proc fcQPlainTextDocumentLayout_virtualbase_metacast(self: pointer, param1: cstring): pointer {.importc: "QPlainTextDocumentLayout_virtualbase_metacast".}
proc fcQPlainTextDocumentLayout_virtualbase_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.importc: "QPlainTextDocumentLayout_virtualbase_metacall".}
proc fcQPlainTextDocumentLayout_virtualbase_draw(self: pointer, param1: pointer, param2: pointer): void {.importc: "QPlainTextDocumentLayout_virtualbase_draw".}
proc fcQPlainTextDocumentLayout_virtualbase_hitTest(self: pointer, param1: pointer, param2: cint): cint {.importc: "QPlainTextDocumentLayout_virtualbase_hitTest".}
proc fcQPlainTextDocumentLayout_virtualbase_pageCount(self: pointer): cint {.importc: "QPlainTextDocumentLayout_virtualbase_pageCount".}
proc fcQPlainTextDocumentLayout_virtualbase_documentSize(self: pointer): pointer {.importc: "QPlainTextDocumentLayout_virtualbase_documentSize".}
proc fcQPlainTextDocumentLayout_virtualbase_frameBoundingRect(self: pointer, param1: pointer): pointer {.importc: "QPlainTextDocumentLayout_virtualbase_frameBoundingRect".}
proc fcQPlainTextDocumentLayout_virtualbase_blockBoundingRect(self: pointer, blockVal: pointer): pointer {.importc: "QPlainTextDocumentLayout_virtualbase_blockBoundingRect".}
proc fcQPlainTextDocumentLayout_virtualbase_documentChanged(self: pointer, fromVal: cint, param2: cint, charsAdded: cint): void {.importc: "QPlainTextDocumentLayout_virtualbase_documentChanged".}
proc fcQPlainTextDocumentLayout_virtualbase_resizeInlineObject(self: pointer, item: pointer, posInDocument: cint, format: pointer): void {.importc: "QPlainTextDocumentLayout_virtualbase_resizeInlineObject".}
proc fcQPlainTextDocumentLayout_virtualbase_positionInlineObject(self: pointer, item: pointer, posInDocument: cint, format: pointer): void {.importc: "QPlainTextDocumentLayout_virtualbase_positionInlineObject".}
proc fcQPlainTextDocumentLayout_virtualbase_drawInlineObject(self: pointer, painter: pointer, rect: pointer, objectVal: pointer, posInDocument: cint, format: pointer): void {.importc: "QPlainTextDocumentLayout_virtualbase_drawInlineObject".}
proc fcQPlainTextDocumentLayout_virtualbase_event(self: pointer, event: pointer): bool {.importc: "QPlainTextDocumentLayout_virtualbase_event".}
proc fcQPlainTextDocumentLayout_virtualbase_eventFilter(self: pointer, watched: pointer, event: pointer): bool {.importc: "QPlainTextDocumentLayout_virtualbase_eventFilter".}
proc fcQPlainTextDocumentLayout_virtualbase_timerEvent(self: pointer, event: pointer): void {.importc: "QPlainTextDocumentLayout_virtualbase_timerEvent".}
proc fcQPlainTextDocumentLayout_virtualbase_childEvent(self: pointer, event: pointer): void {.importc: "QPlainTextDocumentLayout_virtualbase_childEvent".}
proc fcQPlainTextDocumentLayout_virtualbase_customEvent(self: pointer, event: pointer): void {.importc: "QPlainTextDocumentLayout_virtualbase_customEvent".}
proc fcQPlainTextDocumentLayout_virtualbase_connectNotify(self: pointer, signal: pointer): void {.importc: "QPlainTextDocumentLayout_virtualbase_connectNotify".}
proc fcQPlainTextDocumentLayout_virtualbase_disconnectNotify(self: pointer, signal: pointer): void {.importc: "QPlainTextDocumentLayout_virtualbase_disconnectNotify".}
proc fcQPlainTextDocumentLayout_protectedbase_formatIndex(self: pointer, pos: cint): cint {.importc: "QPlainTextDocumentLayout_protectedbase_formatIndex".}
proc fcQPlainTextDocumentLayout_protectedbase_format(self: pointer, pos: cint): pointer {.importc: "QPlainTextDocumentLayout_protectedbase_format".}
proc fcQPlainTextDocumentLayout_protectedbase_sender(self: pointer): pointer {.importc: "QPlainTextDocumentLayout_protectedbase_sender".}
proc fcQPlainTextDocumentLayout_protectedbase_senderSignalIndex(self: pointer): cint {.importc: "QPlainTextDocumentLayout_protectedbase_senderSignalIndex".}
proc fcQPlainTextDocumentLayout_protectedbase_receivers(self: pointer, signal: cstring): cint {.importc: "QPlainTextDocumentLayout_protectedbase_receivers".}
proc fcQPlainTextDocumentLayout_protectedbase_isSignalConnected(self: pointer, signal: pointer): bool {.importc: "QPlainTextDocumentLayout_protectedbase_isSignalConnected".}
proc fcQPlainTextDocumentLayout_new(vtbl, vdata: pointer, document: pointer): ptr cQPlainTextDocumentLayout {.importc: "QPlainTextDocumentLayout_new".}
proc fcQPlainTextDocumentLayout_staticMetaObject(): pointer {.importc: "QPlainTextDocumentLayout_staticMetaObject".}

proc metaObject*(self: gen_qplaintextedit_types.QPlainTextEdit): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQPlainTextEdit_metaObject(self.h), owned: false)

proc metacast*(self: gen_qplaintextedit_types.QPlainTextEdit, param1: cstring): pointer =
  fcQPlainTextEdit_metacast(self.h, param1)

proc metacall*(self: gen_qplaintextedit_types.QPlainTextEdit, param1: cint, param2: cint, param3: pointer): cint =
  fcQPlainTextEdit_metacall(self.h, cint(param1), param2, param3)

proc tr*(_: type gen_qplaintextedit_types.QPlainTextEdit, s: cstring): string =
  let v_ms = fcQPlainTextEdit_tr(s)
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

proc setDocument*(self: gen_qplaintextedit_types.QPlainTextEdit, document: gen_qtextdocument_types.QTextDocument): void =
  fcQPlainTextEdit_setDocument(self.h, document.h)

proc document*(self: gen_qplaintextedit_types.QPlainTextEdit): gen_qtextdocument_types.QTextDocument =
  gen_qtextdocument_types.QTextDocument(h: fcQPlainTextEdit_document(self.h), owned: false)

proc setPlaceholderText*(self: gen_qplaintextedit_types.QPlainTextEdit, placeholderText: openArray[char]): void =
  fcQPlainTextEdit_setPlaceholderText(self.h, struct_miqt_string(data: if len(placeholderText) > 0: addr placeholderText[0] else: nil, len: csize_t(len(placeholderText))))

proc placeholderText*(self: gen_qplaintextedit_types.QPlainTextEdit): string =
  let v_ms = fcQPlainTextEdit_placeholderText(self.h)
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

proc setTextCursor*(self: gen_qplaintextedit_types.QPlainTextEdit, cursor: gen_qtextcursor_types.QTextCursor): void =
  fcQPlainTextEdit_setTextCursor(self.h, cursor.h)

proc textCursor*(self: gen_qplaintextedit_types.QPlainTextEdit): gen_qtextcursor_types.QTextCursor =
  gen_qtextcursor_types.QTextCursor(h: fcQPlainTextEdit_textCursor(self.h), owned: true)

proc isReadOnly*(self: gen_qplaintextedit_types.QPlainTextEdit): bool =
  fcQPlainTextEdit_isReadOnly(self.h)

proc setReadOnly*(self: gen_qplaintextedit_types.QPlainTextEdit, ro: bool): void =
  fcQPlainTextEdit_setReadOnly(self.h, ro)

proc setTextInteractionFlags*(self: gen_qplaintextedit_types.QPlainTextEdit, flags: cint): void =
  fcQPlainTextEdit_setTextInteractionFlags(self.h, cint(flags))

proc textInteractionFlags*(self: gen_qplaintextedit_types.QPlainTextEdit): cint =
  cint(fcQPlainTextEdit_textInteractionFlags(self.h))

proc mergeCurrentCharFormat*(self: gen_qplaintextedit_types.QPlainTextEdit, modifier: gen_qtextformat_types.QTextCharFormat): void =
  fcQPlainTextEdit_mergeCurrentCharFormat(self.h, modifier.h)

proc setCurrentCharFormat*(self: gen_qplaintextedit_types.QPlainTextEdit, format: gen_qtextformat_types.QTextCharFormat): void =
  fcQPlainTextEdit_setCurrentCharFormat(self.h, format.h)

proc currentCharFormat*(self: gen_qplaintextedit_types.QPlainTextEdit): gen_qtextformat_types.QTextCharFormat =
  gen_qtextformat_types.QTextCharFormat(h: fcQPlainTextEdit_currentCharFormat(self.h), owned: true)

proc tabChangesFocus*(self: gen_qplaintextedit_types.QPlainTextEdit): bool =
  fcQPlainTextEdit_tabChangesFocus(self.h)

proc setTabChangesFocus*(self: gen_qplaintextedit_types.QPlainTextEdit, b: bool): void =
  fcQPlainTextEdit_setTabChangesFocus(self.h, b)

proc setDocumentTitle*(self: gen_qplaintextedit_types.QPlainTextEdit, title: openArray[char]): void =
  fcQPlainTextEdit_setDocumentTitle(self.h, struct_miqt_string(data: if len(title) > 0: addr title[0] else: nil, len: csize_t(len(title))))

proc documentTitle*(self: gen_qplaintextedit_types.QPlainTextEdit): string =
  let v_ms = fcQPlainTextEdit_documentTitle(self.h)
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

proc isUndoRedoEnabled*(self: gen_qplaintextedit_types.QPlainTextEdit): bool =
  fcQPlainTextEdit_isUndoRedoEnabled(self.h)

proc setUndoRedoEnabled*(self: gen_qplaintextedit_types.QPlainTextEdit, enable: bool): void =
  fcQPlainTextEdit_setUndoRedoEnabled(self.h, enable)

proc setMaximumBlockCount*(self: gen_qplaintextedit_types.QPlainTextEdit, maximum: cint): void =
  fcQPlainTextEdit_setMaximumBlockCount(self.h, maximum)

proc maximumBlockCount*(self: gen_qplaintextedit_types.QPlainTextEdit): cint =
  fcQPlainTextEdit_maximumBlockCount(self.h)

proc lineWrapMode*(self: gen_qplaintextedit_types.QPlainTextEdit): cint =
  cint(fcQPlainTextEdit_lineWrapMode(self.h))

proc setLineWrapMode*(self: gen_qplaintextedit_types.QPlainTextEdit, mode: cint): void =
  fcQPlainTextEdit_setLineWrapMode(self.h, cint(mode))

proc wordWrapMode*(self: gen_qplaintextedit_types.QPlainTextEdit): cint =
  cint(fcQPlainTextEdit_wordWrapMode(self.h))

proc setWordWrapMode*(self: gen_qplaintextedit_types.QPlainTextEdit, policy: cint): void =
  fcQPlainTextEdit_setWordWrapMode(self.h, cint(policy))

proc setBackgroundVisible*(self: gen_qplaintextedit_types.QPlainTextEdit, visible: bool): void =
  fcQPlainTextEdit_setBackgroundVisible(self.h, visible)

proc backgroundVisible*(self: gen_qplaintextedit_types.QPlainTextEdit): bool =
  fcQPlainTextEdit_backgroundVisible(self.h)

proc setCenterOnScroll*(self: gen_qplaintextedit_types.QPlainTextEdit, enabled: bool): void =
  fcQPlainTextEdit_setCenterOnScroll(self.h, enabled)

proc centerOnScroll*(self: gen_qplaintextedit_types.QPlainTextEdit): bool =
  fcQPlainTextEdit_centerOnScroll(self.h)

proc find*(self: gen_qplaintextedit_types.QPlainTextEdit, exp: openArray[char]): bool =
  fcQPlainTextEdit_find(self.h, struct_miqt_string(data: if len(exp) > 0: addr exp[0] else: nil, len: csize_t(len(exp))))

proc find*(self: gen_qplaintextedit_types.QPlainTextEdit, exp: gen_qregularexpression_types.QRegularExpression): bool =
  fcQPlainTextEdit_findWithExp(self.h, exp.h)

proc toPlainText*(self: gen_qplaintextedit_types.QPlainTextEdit): string =
  let v_ms = fcQPlainTextEdit_toPlainText(self.h)
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

proc ensureCursorVisible*(self: gen_qplaintextedit_types.QPlainTextEdit): void =
  fcQPlainTextEdit_ensureCursorVisible(self.h)

proc loadResource*(self: gen_qplaintextedit_types.QPlainTextEdit, typeVal: cint, name: gen_qurl_types.QUrl): gen_qvariant_types.QVariant =
  gen_qvariant_types.QVariant(h: fcQPlainTextEdit_loadResource(self.h, typeVal, name.h), owned: true)

proc createStandardContextMenu*(self: gen_qplaintextedit_types.QPlainTextEdit): gen_qmenu_types.QMenu =
  gen_qmenu_types.QMenu(h: fcQPlainTextEdit_createStandardContextMenu(self.h), owned: false)

proc createStandardContextMenu*(self: gen_qplaintextedit_types.QPlainTextEdit, position: gen_qpoint_types.QPoint): gen_qmenu_types.QMenu =
  gen_qmenu_types.QMenu(h: fcQPlainTextEdit_createStandardContextMenuWithPosition(self.h, position.h), owned: false)

proc cursorForPosition*(self: gen_qplaintextedit_types.QPlainTextEdit, pos: gen_qpoint_types.QPoint): gen_qtextcursor_types.QTextCursor =
  gen_qtextcursor_types.QTextCursor(h: fcQPlainTextEdit_cursorForPosition(self.h, pos.h), owned: true)

proc cursorRect*(self: gen_qplaintextedit_types.QPlainTextEdit, cursor: gen_qtextcursor_types.QTextCursor): gen_qrect_types.QRect =
  gen_qrect_types.QRect(h: fcQPlainTextEdit_cursorRect(self.h, cursor.h), owned: true)

proc cursorRect*(self: gen_qplaintextedit_types.QPlainTextEdit): gen_qrect_types.QRect =
  gen_qrect_types.QRect(h: fcQPlainTextEdit_cursorRect2(self.h), owned: true)

proc anchorAt*(self: gen_qplaintextedit_types.QPlainTextEdit, pos: gen_qpoint_types.QPoint): string =
  let v_ms = fcQPlainTextEdit_anchorAt(self.h, pos.h)
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

proc overwriteMode*(self: gen_qplaintextedit_types.QPlainTextEdit): bool =
  fcQPlainTextEdit_overwriteMode(self.h)

proc setOverwriteMode*(self: gen_qplaintextedit_types.QPlainTextEdit, overwrite: bool): void =
  fcQPlainTextEdit_setOverwriteMode(self.h, overwrite)

proc tabStopDistance*(self: gen_qplaintextedit_types.QPlainTextEdit): float64 =
  fcQPlainTextEdit_tabStopDistance(self.h)

proc setTabStopDistance*(self: gen_qplaintextedit_types.QPlainTextEdit, distance: float64): void =
  fcQPlainTextEdit_setTabStopDistance(self.h, distance)

proc cursorWidth*(self: gen_qplaintextedit_types.QPlainTextEdit): cint =
  fcQPlainTextEdit_cursorWidth(self.h)

proc setCursorWidth*(self: gen_qplaintextedit_types.QPlainTextEdit, width: cint): void =
  fcQPlainTextEdit_setCursorWidth(self.h, width)

proc setExtraSelections*(self: gen_qplaintextedit_types.QPlainTextEdit, selections: openArray[gen_qtextedit_types.QTextEditExtraSelection]): void =
  var selections_CArray = newSeq[pointer](len(selections))
  for i in 0..<len(selections):
    selections_CArray[i] = selections[i].h

  fcQPlainTextEdit_setExtraSelections(self.h, struct_miqt_array(len: csize_t(len(selections)), data: if len(selections) == 0: nil else: addr(selections_CArray[0])))

proc extraSelections*(self: gen_qplaintextedit_types.QPlainTextEdit): seq[gen_qtextedit_types.QTextEditExtraSelection] =
  var v_ma = fcQPlainTextEdit_extraSelections(self.h)
  var vx_ret = newSeq[gen_qtextedit_types.QTextEditExtraSelection](int(v_ma.len))
  let v_outCast = cast[ptr UncheckedArray[pointer]](v_ma.data)
  for i in 0 ..< v_ma.len:
    vx_ret[i] = gen_qtextedit_types.QTextEditExtraSelection(h: v_outCast[i], owned: true)
  c_free(v_ma.data)
  vx_ret

proc moveCursor*(self: gen_qplaintextedit_types.QPlainTextEdit, operation: cint): void =
  fcQPlainTextEdit_moveCursor(self.h, cint(operation))

proc canPaste*(self: gen_qplaintextedit_types.QPlainTextEdit): bool =
  fcQPlainTextEdit_canPaste(self.h)

proc print*(self: gen_qplaintextedit_types.QPlainTextEdit, printer: gen_qpagedpaintdevice_types.QPagedPaintDevice): void =
  fcQPlainTextEdit_print(self.h, printer.h)

proc blockCount*(self: gen_qplaintextedit_types.QPlainTextEdit): cint =
  fcQPlainTextEdit_blockCount(self.h)

proc inputMethodQuery*(self: gen_qplaintextedit_types.QPlainTextEdit, property: cint): gen_qvariant_types.QVariant =
  gen_qvariant_types.QVariant(h: fcQPlainTextEdit_inputMethodQuery(self.h, cint(property)), owned: true)

proc inputMethodQuery*(self: gen_qplaintextedit_types.QPlainTextEdit, query: cint, argument: gen_qvariant_types.QVariant): gen_qvariant_types.QVariant =
  gen_qvariant_types.QVariant(h: fcQPlainTextEdit_inputMethodQuery2(self.h, cint(query), argument.h), owned: true)

proc setPlainText*(self: gen_qplaintextedit_types.QPlainTextEdit, text: openArray[char]): void =
  fcQPlainTextEdit_setPlainText(self.h, struct_miqt_string(data: if len(text) > 0: addr text[0] else: nil, len: csize_t(len(text))))

proc cut*(self: gen_qplaintextedit_types.QPlainTextEdit): void =
  fcQPlainTextEdit_cut(self.h)

proc copy*(self: gen_qplaintextedit_types.QPlainTextEdit): void =
  fcQPlainTextEdit_copy(self.h)

proc paste*(self: gen_qplaintextedit_types.QPlainTextEdit): void =
  fcQPlainTextEdit_paste(self.h)

proc undo*(self: gen_qplaintextedit_types.QPlainTextEdit): void =
  fcQPlainTextEdit_undo(self.h)

proc redo*(self: gen_qplaintextedit_types.QPlainTextEdit): void =
  fcQPlainTextEdit_redo(self.h)

proc clear*(self: gen_qplaintextedit_types.QPlainTextEdit): void =
  fcQPlainTextEdit_clear(self.h)

proc selectAll*(self: gen_qplaintextedit_types.QPlainTextEdit): void =
  fcQPlainTextEdit_selectAll(self.h)

proc insertPlainText*(self: gen_qplaintextedit_types.QPlainTextEdit, text: openArray[char]): void =
  fcQPlainTextEdit_insertPlainText(self.h, struct_miqt_string(data: if len(text) > 0: addr text[0] else: nil, len: csize_t(len(text))))

proc appendPlainText*(self: gen_qplaintextedit_types.QPlainTextEdit, text: openArray[char]): void =
  fcQPlainTextEdit_appendPlainText(self.h, struct_miqt_string(data: if len(text) > 0: addr text[0] else: nil, len: csize_t(len(text))))

proc appendHtml*(self: gen_qplaintextedit_types.QPlainTextEdit, html: openArray[char]): void =
  fcQPlainTextEdit_appendHtml(self.h, struct_miqt_string(data: if len(html) > 0: addr html[0] else: nil, len: csize_t(len(html))))

proc centerCursor*(self: gen_qplaintextedit_types.QPlainTextEdit): void =
  fcQPlainTextEdit_centerCursor(self.h)

proc zoomIn*(self: gen_qplaintextedit_types.QPlainTextEdit): void =
  fcQPlainTextEdit_zoomIn(self.h)

proc zoomOut*(self: gen_qplaintextedit_types.QPlainTextEdit): void =
  fcQPlainTextEdit_zoomOut(self.h)

proc textChanged*(self: gen_qplaintextedit_types.QPlainTextEdit): void =
  fcQPlainTextEdit_textChanged(self.h)

type QPlainTextEdittextChangedSlot* = proc()
proc fcQPlainTextEdit_slot_callback_textChanged(slot: int) {.cdecl.} =
  let nimfunc = cast[ptr QPlainTextEdittextChangedSlot](cast[pointer](slot))
  nimfunc[]()

proc fcQPlainTextEdit_slot_callback_textChanged_release(slot: int) {.cdecl.} =
  let nimfunc = cast[ref QPlainTextEdittextChangedSlot](cast[pointer](slot))
  GC_unref(nimfunc)

proc onTextChanged*(self: gen_qplaintextedit_types.QPlainTextEdit, slot: QPlainTextEdittextChangedSlot) =
  var tmp = new QPlainTextEdittextChangedSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQPlainTextEdit_connect_textChanged(self.h, cast[int](addr tmp[]), fcQPlainTextEdit_slot_callback_textChanged, fcQPlainTextEdit_slot_callback_textChanged_release)

proc undoAvailable*(self: gen_qplaintextedit_types.QPlainTextEdit, b: bool): void =
  fcQPlainTextEdit_undoAvailable(self.h, b)

type QPlainTextEditundoAvailableSlot* = proc(b: bool)
proc fcQPlainTextEdit_slot_callback_undoAvailable(slot: int, b: bool) {.cdecl.} =
  let nimfunc = cast[ptr QPlainTextEditundoAvailableSlot](cast[pointer](slot))
  let slotval1 = b

  nimfunc[](slotval1)

proc fcQPlainTextEdit_slot_callback_undoAvailable_release(slot: int) {.cdecl.} =
  let nimfunc = cast[ref QPlainTextEditundoAvailableSlot](cast[pointer](slot))
  GC_unref(nimfunc)

proc onUndoAvailable*(self: gen_qplaintextedit_types.QPlainTextEdit, slot: QPlainTextEditundoAvailableSlot) =
  var tmp = new QPlainTextEditundoAvailableSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQPlainTextEdit_connect_undoAvailable(self.h, cast[int](addr tmp[]), fcQPlainTextEdit_slot_callback_undoAvailable, fcQPlainTextEdit_slot_callback_undoAvailable_release)

proc redoAvailable*(self: gen_qplaintextedit_types.QPlainTextEdit, b: bool): void =
  fcQPlainTextEdit_redoAvailable(self.h, b)

type QPlainTextEditredoAvailableSlot* = proc(b: bool)
proc fcQPlainTextEdit_slot_callback_redoAvailable(slot: int, b: bool) {.cdecl.} =
  let nimfunc = cast[ptr QPlainTextEditredoAvailableSlot](cast[pointer](slot))
  let slotval1 = b

  nimfunc[](slotval1)

proc fcQPlainTextEdit_slot_callback_redoAvailable_release(slot: int) {.cdecl.} =
  let nimfunc = cast[ref QPlainTextEditredoAvailableSlot](cast[pointer](slot))
  GC_unref(nimfunc)

proc onRedoAvailable*(self: gen_qplaintextedit_types.QPlainTextEdit, slot: QPlainTextEditredoAvailableSlot) =
  var tmp = new QPlainTextEditredoAvailableSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQPlainTextEdit_connect_redoAvailable(self.h, cast[int](addr tmp[]), fcQPlainTextEdit_slot_callback_redoAvailable, fcQPlainTextEdit_slot_callback_redoAvailable_release)

proc copyAvailable*(self: gen_qplaintextedit_types.QPlainTextEdit, b: bool): void =
  fcQPlainTextEdit_copyAvailable(self.h, b)

type QPlainTextEditcopyAvailableSlot* = proc(b: bool)
proc fcQPlainTextEdit_slot_callback_copyAvailable(slot: int, b: bool) {.cdecl.} =
  let nimfunc = cast[ptr QPlainTextEditcopyAvailableSlot](cast[pointer](slot))
  let slotval1 = b

  nimfunc[](slotval1)

proc fcQPlainTextEdit_slot_callback_copyAvailable_release(slot: int) {.cdecl.} =
  let nimfunc = cast[ref QPlainTextEditcopyAvailableSlot](cast[pointer](slot))
  GC_unref(nimfunc)

proc onCopyAvailable*(self: gen_qplaintextedit_types.QPlainTextEdit, slot: QPlainTextEditcopyAvailableSlot) =
  var tmp = new QPlainTextEditcopyAvailableSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQPlainTextEdit_connect_copyAvailable(self.h, cast[int](addr tmp[]), fcQPlainTextEdit_slot_callback_copyAvailable, fcQPlainTextEdit_slot_callback_copyAvailable_release)

proc selectionChanged*(self: gen_qplaintextedit_types.QPlainTextEdit): void =
  fcQPlainTextEdit_selectionChanged(self.h)

type QPlainTextEditselectionChangedSlot* = proc()
proc fcQPlainTextEdit_slot_callback_selectionChanged(slot: int) {.cdecl.} =
  let nimfunc = cast[ptr QPlainTextEditselectionChangedSlot](cast[pointer](slot))
  nimfunc[]()

proc fcQPlainTextEdit_slot_callback_selectionChanged_release(slot: int) {.cdecl.} =
  let nimfunc = cast[ref QPlainTextEditselectionChangedSlot](cast[pointer](slot))
  GC_unref(nimfunc)

proc onSelectionChanged*(self: gen_qplaintextedit_types.QPlainTextEdit, slot: QPlainTextEditselectionChangedSlot) =
  var tmp = new QPlainTextEditselectionChangedSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQPlainTextEdit_connect_selectionChanged(self.h, cast[int](addr tmp[]), fcQPlainTextEdit_slot_callback_selectionChanged, fcQPlainTextEdit_slot_callback_selectionChanged_release)

proc cursorPositionChanged*(self: gen_qplaintextedit_types.QPlainTextEdit): void =
  fcQPlainTextEdit_cursorPositionChanged(self.h)

type QPlainTextEditcursorPositionChangedSlot* = proc()
proc fcQPlainTextEdit_slot_callback_cursorPositionChanged(slot: int) {.cdecl.} =
  let nimfunc = cast[ptr QPlainTextEditcursorPositionChangedSlot](cast[pointer](slot))
  nimfunc[]()

proc fcQPlainTextEdit_slot_callback_cursorPositionChanged_release(slot: int) {.cdecl.} =
  let nimfunc = cast[ref QPlainTextEditcursorPositionChangedSlot](cast[pointer](slot))
  GC_unref(nimfunc)

proc onCursorPositionChanged*(self: gen_qplaintextedit_types.QPlainTextEdit, slot: QPlainTextEditcursorPositionChangedSlot) =
  var tmp = new QPlainTextEditcursorPositionChangedSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQPlainTextEdit_connect_cursorPositionChanged(self.h, cast[int](addr tmp[]), fcQPlainTextEdit_slot_callback_cursorPositionChanged, fcQPlainTextEdit_slot_callback_cursorPositionChanged_release)

proc updateRequest*(self: gen_qplaintextedit_types.QPlainTextEdit, rect: gen_qrect_types.QRect, dy: cint): void =
  fcQPlainTextEdit_updateRequest(self.h, rect.h, dy)

type QPlainTextEditupdateRequestSlot* = proc(rect: gen_qrect_types.QRect, dy: cint)
proc fcQPlainTextEdit_slot_callback_updateRequest(slot: int, rect: pointer, dy: cint) {.cdecl.} =
  let nimfunc = cast[ptr QPlainTextEditupdateRequestSlot](cast[pointer](slot))
  let slotval1 = gen_qrect_types.QRect(h: rect, owned: false)

  let slotval2 = dy

  nimfunc[](slotval1, slotval2)

proc fcQPlainTextEdit_slot_callback_updateRequest_release(slot: int) {.cdecl.} =
  let nimfunc = cast[ref QPlainTextEditupdateRequestSlot](cast[pointer](slot))
  GC_unref(nimfunc)

proc onUpdateRequest*(self: gen_qplaintextedit_types.QPlainTextEdit, slot: QPlainTextEditupdateRequestSlot) =
  var tmp = new QPlainTextEditupdateRequestSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQPlainTextEdit_connect_updateRequest(self.h, cast[int](addr tmp[]), fcQPlainTextEdit_slot_callback_updateRequest, fcQPlainTextEdit_slot_callback_updateRequest_release)

proc blockCountChanged*(self: gen_qplaintextedit_types.QPlainTextEdit, newBlockCount: cint): void =
  fcQPlainTextEdit_blockCountChanged(self.h, newBlockCount)

type QPlainTextEditblockCountChangedSlot* = proc(newBlockCount: cint)
proc fcQPlainTextEdit_slot_callback_blockCountChanged(slot: int, newBlockCount: cint) {.cdecl.} =
  let nimfunc = cast[ptr QPlainTextEditblockCountChangedSlot](cast[pointer](slot))
  let slotval1 = newBlockCount

  nimfunc[](slotval1)

proc fcQPlainTextEdit_slot_callback_blockCountChanged_release(slot: int) {.cdecl.} =
  let nimfunc = cast[ref QPlainTextEditblockCountChangedSlot](cast[pointer](slot))
  GC_unref(nimfunc)

proc onBlockCountChanged*(self: gen_qplaintextedit_types.QPlainTextEdit, slot: QPlainTextEditblockCountChangedSlot) =
  var tmp = new QPlainTextEditblockCountChangedSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQPlainTextEdit_connect_blockCountChanged(self.h, cast[int](addr tmp[]), fcQPlainTextEdit_slot_callback_blockCountChanged, fcQPlainTextEdit_slot_callback_blockCountChanged_release)

proc modificationChanged*(self: gen_qplaintextedit_types.QPlainTextEdit, param1: bool): void =
  fcQPlainTextEdit_modificationChanged(self.h, param1)

type QPlainTextEditmodificationChangedSlot* = proc(param1: bool)
proc fcQPlainTextEdit_slot_callback_modificationChanged(slot: int, param1: bool) {.cdecl.} =
  let nimfunc = cast[ptr QPlainTextEditmodificationChangedSlot](cast[pointer](slot))
  let slotval1 = param1

  nimfunc[](slotval1)

proc fcQPlainTextEdit_slot_callback_modificationChanged_release(slot: int) {.cdecl.} =
  let nimfunc = cast[ref QPlainTextEditmodificationChangedSlot](cast[pointer](slot))
  GC_unref(nimfunc)

proc onModificationChanged*(self: gen_qplaintextedit_types.QPlainTextEdit, slot: QPlainTextEditmodificationChangedSlot) =
  var tmp = new QPlainTextEditmodificationChangedSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQPlainTextEdit_connect_modificationChanged(self.h, cast[int](addr tmp[]), fcQPlainTextEdit_slot_callback_modificationChanged, fcQPlainTextEdit_slot_callback_modificationChanged_release)

proc tr*(_: type gen_qplaintextedit_types.QPlainTextEdit, s: cstring, c: cstring): string =
  let v_ms = fcQPlainTextEdit_tr2(s, c)
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

proc tr*(_: type gen_qplaintextedit_types.QPlainTextEdit, s: cstring, c: cstring, n: cint): string =
  let v_ms = fcQPlainTextEdit_tr3(s, c, n)
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

proc find*(self: gen_qplaintextedit_types.QPlainTextEdit, exp: openArray[char], options: cint): bool =
  fcQPlainTextEdit_find2(self.h, struct_miqt_string(data: if len(exp) > 0: addr exp[0] else: nil, len: csize_t(len(exp))), cint(options))

proc find*(self: gen_qplaintextedit_types.QPlainTextEdit, exp: gen_qregularexpression_types.QRegularExpression, options: cint): bool =
  fcQPlainTextEdit_find22(self.h, exp.h, cint(options))

proc moveCursor*(self: gen_qplaintextedit_types.QPlainTextEdit, operation: cint, mode: cint): void =
  fcQPlainTextEdit_moveCursor2(self.h, cint(operation), cint(mode))

proc zoomIn*(self: gen_qplaintextedit_types.QPlainTextEdit, range: cint): void =
  fcQPlainTextEdit_zoomIn1(self.h, range)

proc zoomOut*(self: gen_qplaintextedit_types.QPlainTextEdit, range: cint): void =
  fcQPlainTextEdit_zoomOut1(self.h, range)

type QPlainTextEditmetaObjectProc* = proc(self: QPlainTextEdit): gen_qobjectdefs_types.QMetaObject {.raises: [], gcsafe.}
type QPlainTextEditmetacastProc* = proc(self: QPlainTextEdit, param1: cstring): pointer {.raises: [], gcsafe.}
type QPlainTextEditmetacallProc* = proc(self: QPlainTextEdit, param1: cint, param2: cint, param3: pointer): cint {.raises: [], gcsafe.}
type QPlainTextEditloadResourceProc* = proc(self: QPlainTextEdit, typeVal: cint, name: gen_qurl_types.QUrl): gen_qvariant_types.QVariant {.raises: [], gcsafe.}
type QPlainTextEditinputMethodQueryProc* = proc(self: QPlainTextEdit, property: cint): gen_qvariant_types.QVariant {.raises: [], gcsafe.}
type QPlainTextEditeventProc* = proc(self: QPlainTextEdit, e: gen_qcoreevent_types.QEvent): bool {.raises: [], gcsafe.}
type QPlainTextEdittimerEventProc* = proc(self: QPlainTextEdit, e: gen_qcoreevent_types.QTimerEvent): void {.raises: [], gcsafe.}
type QPlainTextEditkeyPressEventProc* = proc(self: QPlainTextEdit, e: gen_qevent_types.QKeyEvent): void {.raises: [], gcsafe.}
type QPlainTextEditkeyReleaseEventProc* = proc(self: QPlainTextEdit, e: gen_qevent_types.QKeyEvent): void {.raises: [], gcsafe.}
type QPlainTextEditresizeEventProc* = proc(self: QPlainTextEdit, e: gen_qevent_types.QResizeEvent): void {.raises: [], gcsafe.}
type QPlainTextEditpaintEventProc* = proc(self: QPlainTextEdit, e: gen_qevent_types.QPaintEvent): void {.raises: [], gcsafe.}
type QPlainTextEditmousePressEventProc* = proc(self: QPlainTextEdit, e: gen_qevent_types.QMouseEvent): void {.raises: [], gcsafe.}
type QPlainTextEditmouseMoveEventProc* = proc(self: QPlainTextEdit, e: gen_qevent_types.QMouseEvent): void {.raises: [], gcsafe.}
type QPlainTextEditmouseReleaseEventProc* = proc(self: QPlainTextEdit, e: gen_qevent_types.QMouseEvent): void {.raises: [], gcsafe.}
type QPlainTextEditmouseDoubleClickEventProc* = proc(self: QPlainTextEdit, e: gen_qevent_types.QMouseEvent): void {.raises: [], gcsafe.}
type QPlainTextEditfocusNextPrevChildProc* = proc(self: QPlainTextEdit, next: bool): bool {.raises: [], gcsafe.}
type QPlainTextEditcontextMenuEventProc* = proc(self: QPlainTextEdit, e: gen_qevent_types.QContextMenuEvent): void {.raises: [], gcsafe.}
type QPlainTextEditdragEnterEventProc* = proc(self: QPlainTextEdit, e: gen_qevent_types.QDragEnterEvent): void {.raises: [], gcsafe.}
type QPlainTextEditdragLeaveEventProc* = proc(self: QPlainTextEdit, e: gen_qevent_types.QDragLeaveEvent): void {.raises: [], gcsafe.}
type QPlainTextEditdragMoveEventProc* = proc(self: QPlainTextEdit, e: gen_qevent_types.QDragMoveEvent): void {.raises: [], gcsafe.}
type QPlainTextEditdropEventProc* = proc(self: QPlainTextEdit, e: gen_qevent_types.QDropEvent): void {.raises: [], gcsafe.}
type QPlainTextEditfocusInEventProc* = proc(self: QPlainTextEdit, e: gen_qevent_types.QFocusEvent): void {.raises: [], gcsafe.}
type QPlainTextEditfocusOutEventProc* = proc(self: QPlainTextEdit, e: gen_qevent_types.QFocusEvent): void {.raises: [], gcsafe.}
type QPlainTextEditshowEventProc* = proc(self: QPlainTextEdit, param1: gen_qevent_types.QShowEvent): void {.raises: [], gcsafe.}
type QPlainTextEditchangeEventProc* = proc(self: QPlainTextEdit, e: gen_qcoreevent_types.QEvent): void {.raises: [], gcsafe.}
type QPlainTextEditwheelEventProc* = proc(self: QPlainTextEdit, e: gen_qevent_types.QWheelEvent): void {.raises: [], gcsafe.}
type QPlainTextEditcreateMimeDataFromSelectionProc* = proc(self: QPlainTextEdit): gen_qmimedata_types.QMimeData {.raises: [], gcsafe.}
type QPlainTextEditcanInsertFromMimeDataProc* = proc(self: QPlainTextEdit, source: gen_qmimedata_types.QMimeData): bool {.raises: [], gcsafe.}
type QPlainTextEditinsertFromMimeDataProc* = proc(self: QPlainTextEdit, source: gen_qmimedata_types.QMimeData): void {.raises: [], gcsafe.}
type QPlainTextEditinputMethodEventProc* = proc(self: QPlainTextEdit, param1: gen_qevent_types.QInputMethodEvent): void {.raises: [], gcsafe.}
type QPlainTextEditscrollContentsByProc* = proc(self: QPlainTextEdit, dx: cint, dy: cint): void {.raises: [], gcsafe.}
type QPlainTextEditdoSetTextCursorProc* = proc(self: QPlainTextEdit, cursor: gen_qtextcursor_types.QTextCursor): void {.raises: [], gcsafe.}
type QPlainTextEditminimumSizeHintProc* = proc(self: QPlainTextEdit): gen_qsize_types.QSize {.raises: [], gcsafe.}
type QPlainTextEditsizeHintProc* = proc(self: QPlainTextEdit): gen_qsize_types.QSize {.raises: [], gcsafe.}
type QPlainTextEditsetupViewportProc* = proc(self: QPlainTextEdit, viewport: gen_qwidget_types.QWidget): void {.raises: [], gcsafe.}
type QPlainTextEditeventFilterProc* = proc(self: QPlainTextEdit, param1: gen_qobject_types.QObject, param2: gen_qcoreevent_types.QEvent): bool {.raises: [], gcsafe.}
type QPlainTextEditviewportEventProc* = proc(self: QPlainTextEdit, param1: gen_qcoreevent_types.QEvent): bool {.raises: [], gcsafe.}
type QPlainTextEditviewportSizeHintProc* = proc(self: QPlainTextEdit): gen_qsize_types.QSize {.raises: [], gcsafe.}
type QPlainTextEditinitStyleOptionProc* = proc(self: QPlainTextEdit, option: gen_qstyleoption_types.QStyleOptionFrame): void {.raises: [], gcsafe.}
type QPlainTextEditdevTypeProc* = proc(self: QPlainTextEdit): cint {.raises: [], gcsafe.}
type QPlainTextEditsetVisibleProc* = proc(self: QPlainTextEdit, visible: bool): void {.raises: [], gcsafe.}
type QPlainTextEditheightForWidthProc* = proc(self: QPlainTextEdit, param1: cint): cint {.raises: [], gcsafe.}
type QPlainTextEdithasHeightForWidthProc* = proc(self: QPlainTextEdit): bool {.raises: [], gcsafe.}
type QPlainTextEditpaintEngineProc* = proc(self: QPlainTextEdit): gen_qpaintengine_types.QPaintEngine {.raises: [], gcsafe.}
type QPlainTextEditenterEventProc* = proc(self: QPlainTextEdit, event: gen_qevent_types.QEnterEvent): void {.raises: [], gcsafe.}
type QPlainTextEditleaveEventProc* = proc(self: QPlainTextEdit, event: gen_qcoreevent_types.QEvent): void {.raises: [], gcsafe.}
type QPlainTextEditmoveEventProc* = proc(self: QPlainTextEdit, event: gen_qevent_types.QMoveEvent): void {.raises: [], gcsafe.}
type QPlainTextEditcloseEventProc* = proc(self: QPlainTextEdit, event: gen_qevent_types.QCloseEvent): void {.raises: [], gcsafe.}
type QPlainTextEdittabletEventProc* = proc(self: QPlainTextEdit, event: gen_qevent_types.QTabletEvent): void {.raises: [], gcsafe.}
type QPlainTextEditactionEventProc* = proc(self: QPlainTextEdit, event: gen_qevent_types.QActionEvent): void {.raises: [], gcsafe.}
type QPlainTextEdithideEventProc* = proc(self: QPlainTextEdit, event: gen_qevent_types.QHideEvent): void {.raises: [], gcsafe.}
type QPlainTextEditnativeEventProc* = proc(self: QPlainTextEdit, eventType: openArray[byte], message: pointer, resultVal: ptr uint): bool {.raises: [], gcsafe.}
type QPlainTextEditmetricProc* = proc(self: QPlainTextEdit, param1: cint): cint {.raises: [], gcsafe.}
type QPlainTextEditinitPainterProc* = proc(self: QPlainTextEdit, painter: gen_qpainter_types.QPainter): void {.raises: [], gcsafe.}
type QPlainTextEditredirectedProc* = proc(self: QPlainTextEdit, offset: gen_qpoint_types.QPoint): gen_qpaintdevice_types.QPaintDevice {.raises: [], gcsafe.}
type QPlainTextEditsharedPainterProc* = proc(self: QPlainTextEdit): gen_qpainter_types.QPainter {.raises: [], gcsafe.}
type QPlainTextEditchildEventProc* = proc(self: QPlainTextEdit, event: gen_qcoreevent_types.QChildEvent): void {.raises: [], gcsafe.}
type QPlainTextEditcustomEventProc* = proc(self: QPlainTextEdit, event: gen_qcoreevent_types.QEvent): void {.raises: [], gcsafe.}
type QPlainTextEditconnectNotifyProc* = proc(self: QPlainTextEdit, signal: gen_qmetaobject_types.QMetaMethod): void {.raises: [], gcsafe.}
type QPlainTextEditdisconnectNotifyProc* = proc(self: QPlainTextEdit, signal: gen_qmetaobject_types.QMetaMethod): void {.raises: [], gcsafe.}

type QPlainTextEditVTable* {.inheritable, pure.} = object
  vtbl: cQPlainTextEditVTable
  metaObject*: QPlainTextEditmetaObjectProc
  metacast*: QPlainTextEditmetacastProc
  metacall*: QPlainTextEditmetacallProc
  loadResource*: QPlainTextEditloadResourceProc
  inputMethodQuery*: QPlainTextEditinputMethodQueryProc
  event*: QPlainTextEditeventProc
  timerEvent*: QPlainTextEdittimerEventProc
  keyPressEvent*: QPlainTextEditkeyPressEventProc
  keyReleaseEvent*: QPlainTextEditkeyReleaseEventProc
  resizeEvent*: QPlainTextEditresizeEventProc
  paintEvent*: QPlainTextEditpaintEventProc
  mousePressEvent*: QPlainTextEditmousePressEventProc
  mouseMoveEvent*: QPlainTextEditmouseMoveEventProc
  mouseReleaseEvent*: QPlainTextEditmouseReleaseEventProc
  mouseDoubleClickEvent*: QPlainTextEditmouseDoubleClickEventProc
  focusNextPrevChild*: QPlainTextEditfocusNextPrevChildProc
  contextMenuEvent*: QPlainTextEditcontextMenuEventProc
  dragEnterEvent*: QPlainTextEditdragEnterEventProc
  dragLeaveEvent*: QPlainTextEditdragLeaveEventProc
  dragMoveEvent*: QPlainTextEditdragMoveEventProc
  dropEvent*: QPlainTextEditdropEventProc
  focusInEvent*: QPlainTextEditfocusInEventProc
  focusOutEvent*: QPlainTextEditfocusOutEventProc
  showEvent*: QPlainTextEditshowEventProc
  changeEvent*: QPlainTextEditchangeEventProc
  wheelEvent*: QPlainTextEditwheelEventProc
  createMimeDataFromSelection*: QPlainTextEditcreateMimeDataFromSelectionProc
  canInsertFromMimeData*: QPlainTextEditcanInsertFromMimeDataProc
  insertFromMimeData*: QPlainTextEditinsertFromMimeDataProc
  inputMethodEvent*: QPlainTextEditinputMethodEventProc
  scrollContentsBy*: QPlainTextEditscrollContentsByProc
  doSetTextCursor*: QPlainTextEditdoSetTextCursorProc
  minimumSizeHint*: QPlainTextEditminimumSizeHintProc
  sizeHint*: QPlainTextEditsizeHintProc
  setupViewport*: QPlainTextEditsetupViewportProc
  eventFilter*: QPlainTextEditeventFilterProc
  viewportEvent*: QPlainTextEditviewportEventProc
  viewportSizeHint*: QPlainTextEditviewportSizeHintProc
  initStyleOption*: QPlainTextEditinitStyleOptionProc
  devType*: QPlainTextEditdevTypeProc
  setVisible*: QPlainTextEditsetVisibleProc
  heightForWidth*: QPlainTextEditheightForWidthProc
  hasHeightForWidth*: QPlainTextEdithasHeightForWidthProc
  paintEngine*: QPlainTextEditpaintEngineProc
  enterEvent*: QPlainTextEditenterEventProc
  leaveEvent*: QPlainTextEditleaveEventProc
  moveEvent*: QPlainTextEditmoveEventProc
  closeEvent*: QPlainTextEditcloseEventProc
  tabletEvent*: QPlainTextEdittabletEventProc
  actionEvent*: QPlainTextEditactionEventProc
  hideEvent*: QPlainTextEdithideEventProc
  nativeEvent*: QPlainTextEditnativeEventProc
  metric*: QPlainTextEditmetricProc
  initPainter*: QPlainTextEditinitPainterProc
  redirected*: QPlainTextEditredirectedProc
  sharedPainter*: QPlainTextEditsharedPainterProc
  childEvent*: QPlainTextEditchildEventProc
  customEvent*: QPlainTextEditcustomEventProc
  connectNotify*: QPlainTextEditconnectNotifyProc
  disconnectNotify*: QPlainTextEditdisconnectNotifyProc

proc QPlainTextEditmetaObject*(self: gen_qplaintextedit_types.QPlainTextEdit): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQPlainTextEdit_virtualbase_metaObject(self.h), owned: false)

proc QPlainTextEditmetacast*(self: gen_qplaintextedit_types.QPlainTextEdit, param1: cstring): pointer =
  fcQPlainTextEdit_virtualbase_metacast(self.h, param1)

proc QPlainTextEditmetacall*(self: gen_qplaintextedit_types.QPlainTextEdit, param1: cint, param2: cint, param3: pointer): cint =
  fcQPlainTextEdit_virtualbase_metacall(self.h, cint(param1), param2, param3)

proc QPlainTextEditloadResource*(self: gen_qplaintextedit_types.QPlainTextEdit, typeVal: cint, name: gen_qurl_types.QUrl): gen_qvariant_types.QVariant =
  gen_qvariant_types.QVariant(h: fcQPlainTextEdit_virtualbase_loadResource(self.h, typeVal, name.h), owned: true)

proc QPlainTextEditinputMethodQuery*(self: gen_qplaintextedit_types.QPlainTextEdit, property: cint): gen_qvariant_types.QVariant =
  gen_qvariant_types.QVariant(h: fcQPlainTextEdit_virtualbase_inputMethodQuery(self.h, cint(property)), owned: true)

proc QPlainTextEditevent*(self: gen_qplaintextedit_types.QPlainTextEdit, e: gen_qcoreevent_types.QEvent): bool =
  fcQPlainTextEdit_virtualbase_event(self.h, e.h)

proc QPlainTextEdittimerEvent*(self: gen_qplaintextedit_types.QPlainTextEdit, e: gen_qcoreevent_types.QTimerEvent): void =
  fcQPlainTextEdit_virtualbase_timerEvent(self.h, e.h)

proc QPlainTextEditkeyPressEvent*(self: gen_qplaintextedit_types.QPlainTextEdit, e: gen_qevent_types.QKeyEvent): void =
  fcQPlainTextEdit_virtualbase_keyPressEvent(self.h, e.h)

proc QPlainTextEditkeyReleaseEvent*(self: gen_qplaintextedit_types.QPlainTextEdit, e: gen_qevent_types.QKeyEvent): void =
  fcQPlainTextEdit_virtualbase_keyReleaseEvent(self.h, e.h)

proc QPlainTextEditresizeEvent*(self: gen_qplaintextedit_types.QPlainTextEdit, e: gen_qevent_types.QResizeEvent): void =
  fcQPlainTextEdit_virtualbase_resizeEvent(self.h, e.h)

proc QPlainTextEditpaintEvent*(self: gen_qplaintextedit_types.QPlainTextEdit, e: gen_qevent_types.QPaintEvent): void =
  fcQPlainTextEdit_virtualbase_paintEvent(self.h, e.h)

proc QPlainTextEditmousePressEvent*(self: gen_qplaintextedit_types.QPlainTextEdit, e: gen_qevent_types.QMouseEvent): void =
  fcQPlainTextEdit_virtualbase_mousePressEvent(self.h, e.h)

proc QPlainTextEditmouseMoveEvent*(self: gen_qplaintextedit_types.QPlainTextEdit, e: gen_qevent_types.QMouseEvent): void =
  fcQPlainTextEdit_virtualbase_mouseMoveEvent(self.h, e.h)

proc QPlainTextEditmouseReleaseEvent*(self: gen_qplaintextedit_types.QPlainTextEdit, e: gen_qevent_types.QMouseEvent): void =
  fcQPlainTextEdit_virtualbase_mouseReleaseEvent(self.h, e.h)

proc QPlainTextEditmouseDoubleClickEvent*(self: gen_qplaintextedit_types.QPlainTextEdit, e: gen_qevent_types.QMouseEvent): void =
  fcQPlainTextEdit_virtualbase_mouseDoubleClickEvent(self.h, e.h)

proc QPlainTextEditfocusNextPrevChild*(self: gen_qplaintextedit_types.QPlainTextEdit, next: bool): bool =
  fcQPlainTextEdit_virtualbase_focusNextPrevChild(self.h, next)

proc QPlainTextEditcontextMenuEvent*(self: gen_qplaintextedit_types.QPlainTextEdit, e: gen_qevent_types.QContextMenuEvent): void =
  fcQPlainTextEdit_virtualbase_contextMenuEvent(self.h, e.h)

proc QPlainTextEditdragEnterEvent*(self: gen_qplaintextedit_types.QPlainTextEdit, e: gen_qevent_types.QDragEnterEvent): void =
  fcQPlainTextEdit_virtualbase_dragEnterEvent(self.h, e.h)

proc QPlainTextEditdragLeaveEvent*(self: gen_qplaintextedit_types.QPlainTextEdit, e: gen_qevent_types.QDragLeaveEvent): void =
  fcQPlainTextEdit_virtualbase_dragLeaveEvent(self.h, e.h)

proc QPlainTextEditdragMoveEvent*(self: gen_qplaintextedit_types.QPlainTextEdit, e: gen_qevent_types.QDragMoveEvent): void =
  fcQPlainTextEdit_virtualbase_dragMoveEvent(self.h, e.h)

proc QPlainTextEditdropEvent*(self: gen_qplaintextedit_types.QPlainTextEdit, e: gen_qevent_types.QDropEvent): void =
  fcQPlainTextEdit_virtualbase_dropEvent(self.h, e.h)

proc QPlainTextEditfocusInEvent*(self: gen_qplaintextedit_types.QPlainTextEdit, e: gen_qevent_types.QFocusEvent): void =
  fcQPlainTextEdit_virtualbase_focusInEvent(self.h, e.h)

proc QPlainTextEditfocusOutEvent*(self: gen_qplaintextedit_types.QPlainTextEdit, e: gen_qevent_types.QFocusEvent): void =
  fcQPlainTextEdit_virtualbase_focusOutEvent(self.h, e.h)

proc QPlainTextEditshowEvent*(self: gen_qplaintextedit_types.QPlainTextEdit, param1: gen_qevent_types.QShowEvent): void =
  fcQPlainTextEdit_virtualbase_showEvent(self.h, param1.h)

proc QPlainTextEditchangeEvent*(self: gen_qplaintextedit_types.QPlainTextEdit, e: gen_qcoreevent_types.QEvent): void =
  fcQPlainTextEdit_virtualbase_changeEvent(self.h, e.h)

proc QPlainTextEditwheelEvent*(self: gen_qplaintextedit_types.QPlainTextEdit, e: gen_qevent_types.QWheelEvent): void =
  fcQPlainTextEdit_virtualbase_wheelEvent(self.h, e.h)

proc QPlainTextEditcreateMimeDataFromSelection*(self: gen_qplaintextedit_types.QPlainTextEdit): gen_qmimedata_types.QMimeData =
  gen_qmimedata_types.QMimeData(h: fcQPlainTextEdit_virtualbase_createMimeDataFromSelection(self.h), owned: false)

proc QPlainTextEditcanInsertFromMimeData*(self: gen_qplaintextedit_types.QPlainTextEdit, source: gen_qmimedata_types.QMimeData): bool =
  fcQPlainTextEdit_virtualbase_canInsertFromMimeData(self.h, source.h)

proc QPlainTextEditinsertFromMimeData*(self: gen_qplaintextedit_types.QPlainTextEdit, source: gen_qmimedata_types.QMimeData): void =
  fcQPlainTextEdit_virtualbase_insertFromMimeData(self.h, source.h)

proc QPlainTextEditinputMethodEvent*(self: gen_qplaintextedit_types.QPlainTextEdit, param1: gen_qevent_types.QInputMethodEvent): void =
  fcQPlainTextEdit_virtualbase_inputMethodEvent(self.h, param1.h)

proc QPlainTextEditscrollContentsBy*(self: gen_qplaintextedit_types.QPlainTextEdit, dx: cint, dy: cint): void =
  fcQPlainTextEdit_virtualbase_scrollContentsBy(self.h, dx, dy)

proc QPlainTextEditdoSetTextCursor*(self: gen_qplaintextedit_types.QPlainTextEdit, cursor: gen_qtextcursor_types.QTextCursor): void =
  fcQPlainTextEdit_virtualbase_doSetTextCursor(self.h, cursor.h)

proc QPlainTextEditminimumSizeHint*(self: gen_qplaintextedit_types.QPlainTextEdit): gen_qsize_types.QSize =
  gen_qsize_types.QSize(h: fcQPlainTextEdit_virtualbase_minimumSizeHint(self.h), owned: true)

proc QPlainTextEditsizeHint*(self: gen_qplaintextedit_types.QPlainTextEdit): gen_qsize_types.QSize =
  gen_qsize_types.QSize(h: fcQPlainTextEdit_virtualbase_sizeHint(self.h), owned: true)

proc QPlainTextEditsetupViewport*(self: gen_qplaintextedit_types.QPlainTextEdit, viewport: gen_qwidget_types.QWidget): void =
  fcQPlainTextEdit_virtualbase_setupViewport(self.h, viewport.h)

proc QPlainTextEditeventFilter*(self: gen_qplaintextedit_types.QPlainTextEdit, param1: gen_qobject_types.QObject, param2: gen_qcoreevent_types.QEvent): bool =
  fcQPlainTextEdit_virtualbase_eventFilter(self.h, param1.h, param2.h)

proc QPlainTextEditviewportEvent*(self: gen_qplaintextedit_types.QPlainTextEdit, param1: gen_qcoreevent_types.QEvent): bool =
  fcQPlainTextEdit_virtualbase_viewportEvent(self.h, param1.h)

proc QPlainTextEditviewportSizeHint*(self: gen_qplaintextedit_types.QPlainTextEdit): gen_qsize_types.QSize =
  gen_qsize_types.QSize(h: fcQPlainTextEdit_virtualbase_viewportSizeHint(self.h), owned: true)

proc QPlainTextEditinitStyleOption*(self: gen_qplaintextedit_types.QPlainTextEdit, option: gen_qstyleoption_types.QStyleOptionFrame): void =
  fcQPlainTextEdit_virtualbase_initStyleOption(self.h, option.h)

proc QPlainTextEditdevType*(self: gen_qplaintextedit_types.QPlainTextEdit): cint =
  fcQPlainTextEdit_virtualbase_devType(self.h)

proc QPlainTextEditsetVisible*(self: gen_qplaintextedit_types.QPlainTextEdit, visible: bool): void =
  fcQPlainTextEdit_virtualbase_setVisible(self.h, visible)

proc QPlainTextEditheightForWidth*(self: gen_qplaintextedit_types.QPlainTextEdit, param1: cint): cint =
  fcQPlainTextEdit_virtualbase_heightForWidth(self.h, param1)

proc QPlainTextEdithasHeightForWidth*(self: gen_qplaintextedit_types.QPlainTextEdit): bool =
  fcQPlainTextEdit_virtualbase_hasHeightForWidth(self.h)

proc QPlainTextEditpaintEngine*(self: gen_qplaintextedit_types.QPlainTextEdit): gen_qpaintengine_types.QPaintEngine =
  gen_qpaintengine_types.QPaintEngine(h: fcQPlainTextEdit_virtualbase_paintEngine(self.h), owned: false)

proc QPlainTextEditenterEvent*(self: gen_qplaintextedit_types.QPlainTextEdit, event: gen_qevent_types.QEnterEvent): void =
  fcQPlainTextEdit_virtualbase_enterEvent(self.h, event.h)

proc QPlainTextEditleaveEvent*(self: gen_qplaintextedit_types.QPlainTextEdit, event: gen_qcoreevent_types.QEvent): void =
  fcQPlainTextEdit_virtualbase_leaveEvent(self.h, event.h)

proc QPlainTextEditmoveEvent*(self: gen_qplaintextedit_types.QPlainTextEdit, event: gen_qevent_types.QMoveEvent): void =
  fcQPlainTextEdit_virtualbase_moveEvent(self.h, event.h)

proc QPlainTextEditcloseEvent*(self: gen_qplaintextedit_types.QPlainTextEdit, event: gen_qevent_types.QCloseEvent): void =
  fcQPlainTextEdit_virtualbase_closeEvent(self.h, event.h)

proc QPlainTextEdittabletEvent*(self: gen_qplaintextedit_types.QPlainTextEdit, event: gen_qevent_types.QTabletEvent): void =
  fcQPlainTextEdit_virtualbase_tabletEvent(self.h, event.h)

proc QPlainTextEditactionEvent*(self: gen_qplaintextedit_types.QPlainTextEdit, event: gen_qevent_types.QActionEvent): void =
  fcQPlainTextEdit_virtualbase_actionEvent(self.h, event.h)

proc QPlainTextEdithideEvent*(self: gen_qplaintextedit_types.QPlainTextEdit, event: gen_qevent_types.QHideEvent): void =
  fcQPlainTextEdit_virtualbase_hideEvent(self.h, event.h)

proc QPlainTextEditnativeEvent*(self: gen_qplaintextedit_types.QPlainTextEdit, eventType: openArray[byte], message: pointer, resultVal: ptr uint): bool =
  fcQPlainTextEdit_virtualbase_nativeEvent(self.h, struct_miqt_string(data: cast[cstring](if len(eventType) == 0: nil else: unsafeAddr eventType[0]), len: csize_t(len(eventType))), message, resultVal)

proc QPlainTextEditmetric*(self: gen_qplaintextedit_types.QPlainTextEdit, param1: cint): cint =
  fcQPlainTextEdit_virtualbase_metric(self.h, cint(param1))

proc QPlainTextEditinitPainter*(self: gen_qplaintextedit_types.QPlainTextEdit, painter: gen_qpainter_types.QPainter): void =
  fcQPlainTextEdit_virtualbase_initPainter(self.h, painter.h)

proc QPlainTextEditredirected*(self: gen_qplaintextedit_types.QPlainTextEdit, offset: gen_qpoint_types.QPoint): gen_qpaintdevice_types.QPaintDevice =
  gen_qpaintdevice_types.QPaintDevice(h: fcQPlainTextEdit_virtualbase_redirected(self.h, offset.h), owned: false)

proc QPlainTextEditsharedPainter*(self: gen_qplaintextedit_types.QPlainTextEdit): gen_qpainter_types.QPainter =
  gen_qpainter_types.QPainter(h: fcQPlainTextEdit_virtualbase_sharedPainter(self.h), owned: false)

proc QPlainTextEditchildEvent*(self: gen_qplaintextedit_types.QPlainTextEdit, event: gen_qcoreevent_types.QChildEvent): void =
  fcQPlainTextEdit_virtualbase_childEvent(self.h, event.h)

proc QPlainTextEditcustomEvent*(self: gen_qplaintextedit_types.QPlainTextEdit, event: gen_qcoreevent_types.QEvent): void =
  fcQPlainTextEdit_virtualbase_customEvent(self.h, event.h)

proc QPlainTextEditconnectNotify*(self: gen_qplaintextedit_types.QPlainTextEdit, signal: gen_qmetaobject_types.QMetaMethod): void =
  fcQPlainTextEdit_virtualbase_connectNotify(self.h, signal.h)

proc QPlainTextEditdisconnectNotify*(self: gen_qplaintextedit_types.QPlainTextEdit, signal: gen_qmetaobject_types.QMetaMethod): void =
  fcQPlainTextEdit_virtualbase_disconnectNotify(self.h, signal.h)


proc fcQPlainTextEdit_vtable_callback_metaObject(self: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QPlainTextEditVTable](fcQPlainTextEdit_vdata(self))
  let self = QPlainTextEdit(h: self)
  var virtualReturn = vtbl[].metaObject(self)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc fcQPlainTextEdit_vtable_callback_metacast(self: pointer, param1: cstring): pointer {.cdecl.} =
  let vtbl = cast[ptr QPlainTextEditVTable](fcQPlainTextEdit_vdata(self))
  let self = QPlainTextEdit(h: self)
  let slotval1 = (param1)
  var virtualReturn = vtbl[].metacast(self, slotval1)
  virtualReturn

proc fcQPlainTextEdit_vtable_callback_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.cdecl.} =
  let vtbl = cast[ptr QPlainTextEditVTable](fcQPlainTextEdit_vdata(self))
  let self = QPlainTextEdit(h: self)
  let slotval1 = cint(param1)
  let slotval2 = param2
  let slotval3 = param3
  var virtualReturn = vtbl[].metacall(self, slotval1, slotval2, slotval3)
  virtualReturn

proc fcQPlainTextEdit_vtable_callback_loadResource(self: pointer, typeVal: cint, name: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QPlainTextEditVTable](fcQPlainTextEdit_vdata(self))
  let self = QPlainTextEdit(h: self)
  let slotval1 = typeVal
  let slotval2 = gen_qurl_types.QUrl(h: name, owned: false)
  var virtualReturn = vtbl[].loadResource(self, slotval1, slotval2)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc fcQPlainTextEdit_vtable_callback_inputMethodQuery(self: pointer, property: cint): pointer {.cdecl.} =
  let vtbl = cast[ptr QPlainTextEditVTable](fcQPlainTextEdit_vdata(self))
  let self = QPlainTextEdit(h: self)
  let slotval1 = cint(property)
  var virtualReturn = vtbl[].inputMethodQuery(self, slotval1)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc fcQPlainTextEdit_vtable_callback_event(self: pointer, e: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QPlainTextEditVTable](fcQPlainTextEdit_vdata(self))
  let self = QPlainTextEdit(h: self)
  let slotval1 = gen_qcoreevent_types.QEvent(h: e, owned: false)
  var virtualReturn = vtbl[].event(self, slotval1)
  virtualReturn

proc fcQPlainTextEdit_vtable_callback_timerEvent(self: pointer, e: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QPlainTextEditVTable](fcQPlainTextEdit_vdata(self))
  let self = QPlainTextEdit(h: self)
  let slotval1 = gen_qcoreevent_types.QTimerEvent(h: e, owned: false)
  vtbl[].timerEvent(self, slotval1)

proc fcQPlainTextEdit_vtable_callback_keyPressEvent(self: pointer, e: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QPlainTextEditVTable](fcQPlainTextEdit_vdata(self))
  let self = QPlainTextEdit(h: self)
  let slotval1 = gen_qevent_types.QKeyEvent(h: e, owned: false)
  vtbl[].keyPressEvent(self, slotval1)

proc fcQPlainTextEdit_vtable_callback_keyReleaseEvent(self: pointer, e: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QPlainTextEditVTable](fcQPlainTextEdit_vdata(self))
  let self = QPlainTextEdit(h: self)
  let slotval1 = gen_qevent_types.QKeyEvent(h: e, owned: false)
  vtbl[].keyReleaseEvent(self, slotval1)

proc fcQPlainTextEdit_vtable_callback_resizeEvent(self: pointer, e: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QPlainTextEditVTable](fcQPlainTextEdit_vdata(self))
  let self = QPlainTextEdit(h: self)
  let slotval1 = gen_qevent_types.QResizeEvent(h: e, owned: false)
  vtbl[].resizeEvent(self, slotval1)

proc fcQPlainTextEdit_vtable_callback_paintEvent(self: pointer, e: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QPlainTextEditVTable](fcQPlainTextEdit_vdata(self))
  let self = QPlainTextEdit(h: self)
  let slotval1 = gen_qevent_types.QPaintEvent(h: e, owned: false)
  vtbl[].paintEvent(self, slotval1)

proc fcQPlainTextEdit_vtable_callback_mousePressEvent(self: pointer, e: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QPlainTextEditVTable](fcQPlainTextEdit_vdata(self))
  let self = QPlainTextEdit(h: self)
  let slotval1 = gen_qevent_types.QMouseEvent(h: e, owned: false)
  vtbl[].mousePressEvent(self, slotval1)

proc fcQPlainTextEdit_vtable_callback_mouseMoveEvent(self: pointer, e: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QPlainTextEditVTable](fcQPlainTextEdit_vdata(self))
  let self = QPlainTextEdit(h: self)
  let slotval1 = gen_qevent_types.QMouseEvent(h: e, owned: false)
  vtbl[].mouseMoveEvent(self, slotval1)

proc fcQPlainTextEdit_vtable_callback_mouseReleaseEvent(self: pointer, e: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QPlainTextEditVTable](fcQPlainTextEdit_vdata(self))
  let self = QPlainTextEdit(h: self)
  let slotval1 = gen_qevent_types.QMouseEvent(h: e, owned: false)
  vtbl[].mouseReleaseEvent(self, slotval1)

proc fcQPlainTextEdit_vtable_callback_mouseDoubleClickEvent(self: pointer, e: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QPlainTextEditVTable](fcQPlainTextEdit_vdata(self))
  let self = QPlainTextEdit(h: self)
  let slotval1 = gen_qevent_types.QMouseEvent(h: e, owned: false)
  vtbl[].mouseDoubleClickEvent(self, slotval1)

proc fcQPlainTextEdit_vtable_callback_focusNextPrevChild(self: pointer, next: bool): bool {.cdecl.} =
  let vtbl = cast[ptr QPlainTextEditVTable](fcQPlainTextEdit_vdata(self))
  let self = QPlainTextEdit(h: self)
  let slotval1 = next
  var virtualReturn = vtbl[].focusNextPrevChild(self, slotval1)
  virtualReturn

proc fcQPlainTextEdit_vtable_callback_contextMenuEvent(self: pointer, e: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QPlainTextEditVTable](fcQPlainTextEdit_vdata(self))
  let self = QPlainTextEdit(h: self)
  let slotval1 = gen_qevent_types.QContextMenuEvent(h: e, owned: false)
  vtbl[].contextMenuEvent(self, slotval1)

proc fcQPlainTextEdit_vtable_callback_dragEnterEvent(self: pointer, e: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QPlainTextEditVTable](fcQPlainTextEdit_vdata(self))
  let self = QPlainTextEdit(h: self)
  let slotval1 = gen_qevent_types.QDragEnterEvent(h: e, owned: false)
  vtbl[].dragEnterEvent(self, slotval1)

proc fcQPlainTextEdit_vtable_callback_dragLeaveEvent(self: pointer, e: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QPlainTextEditVTable](fcQPlainTextEdit_vdata(self))
  let self = QPlainTextEdit(h: self)
  let slotval1 = gen_qevent_types.QDragLeaveEvent(h: e, owned: false)
  vtbl[].dragLeaveEvent(self, slotval1)

proc fcQPlainTextEdit_vtable_callback_dragMoveEvent(self: pointer, e: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QPlainTextEditVTable](fcQPlainTextEdit_vdata(self))
  let self = QPlainTextEdit(h: self)
  let slotval1 = gen_qevent_types.QDragMoveEvent(h: e, owned: false)
  vtbl[].dragMoveEvent(self, slotval1)

proc fcQPlainTextEdit_vtable_callback_dropEvent(self: pointer, e: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QPlainTextEditVTable](fcQPlainTextEdit_vdata(self))
  let self = QPlainTextEdit(h: self)
  let slotval1 = gen_qevent_types.QDropEvent(h: e, owned: false)
  vtbl[].dropEvent(self, slotval1)

proc fcQPlainTextEdit_vtable_callback_focusInEvent(self: pointer, e: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QPlainTextEditVTable](fcQPlainTextEdit_vdata(self))
  let self = QPlainTextEdit(h: self)
  let slotval1 = gen_qevent_types.QFocusEvent(h: e, owned: false)
  vtbl[].focusInEvent(self, slotval1)

proc fcQPlainTextEdit_vtable_callback_focusOutEvent(self: pointer, e: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QPlainTextEditVTable](fcQPlainTextEdit_vdata(self))
  let self = QPlainTextEdit(h: self)
  let slotval1 = gen_qevent_types.QFocusEvent(h: e, owned: false)
  vtbl[].focusOutEvent(self, slotval1)

proc fcQPlainTextEdit_vtable_callback_showEvent(self: pointer, param1: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QPlainTextEditVTable](fcQPlainTextEdit_vdata(self))
  let self = QPlainTextEdit(h: self)
  let slotval1 = gen_qevent_types.QShowEvent(h: param1, owned: false)
  vtbl[].showEvent(self, slotval1)

proc fcQPlainTextEdit_vtable_callback_changeEvent(self: pointer, e: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QPlainTextEditVTable](fcQPlainTextEdit_vdata(self))
  let self = QPlainTextEdit(h: self)
  let slotval1 = gen_qcoreevent_types.QEvent(h: e, owned: false)
  vtbl[].changeEvent(self, slotval1)

proc fcQPlainTextEdit_vtable_callback_wheelEvent(self: pointer, e: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QPlainTextEditVTable](fcQPlainTextEdit_vdata(self))
  let self = QPlainTextEdit(h: self)
  let slotval1 = gen_qevent_types.QWheelEvent(h: e, owned: false)
  vtbl[].wheelEvent(self, slotval1)

proc fcQPlainTextEdit_vtable_callback_createMimeDataFromSelection(self: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QPlainTextEditVTable](fcQPlainTextEdit_vdata(self))
  let self = QPlainTextEdit(h: self)
  var virtualReturn = vtbl[].createMimeDataFromSelection(self)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc fcQPlainTextEdit_vtable_callback_canInsertFromMimeData(self: pointer, source: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QPlainTextEditVTable](fcQPlainTextEdit_vdata(self))
  let self = QPlainTextEdit(h: self)
  let slotval1 = gen_qmimedata_types.QMimeData(h: source, owned: false)
  var virtualReturn = vtbl[].canInsertFromMimeData(self, slotval1)
  virtualReturn

proc fcQPlainTextEdit_vtable_callback_insertFromMimeData(self: pointer, source: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QPlainTextEditVTable](fcQPlainTextEdit_vdata(self))
  let self = QPlainTextEdit(h: self)
  let slotval1 = gen_qmimedata_types.QMimeData(h: source, owned: false)
  vtbl[].insertFromMimeData(self, slotval1)

proc fcQPlainTextEdit_vtable_callback_inputMethodEvent(self: pointer, param1: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QPlainTextEditVTable](fcQPlainTextEdit_vdata(self))
  let self = QPlainTextEdit(h: self)
  let slotval1 = gen_qevent_types.QInputMethodEvent(h: param1, owned: false)
  vtbl[].inputMethodEvent(self, slotval1)

proc fcQPlainTextEdit_vtable_callback_scrollContentsBy(self: pointer, dx: cint, dy: cint): void {.cdecl.} =
  let vtbl = cast[ptr QPlainTextEditVTable](fcQPlainTextEdit_vdata(self))
  let self = QPlainTextEdit(h: self)
  let slotval1 = dx
  let slotval2 = dy
  vtbl[].scrollContentsBy(self, slotval1, slotval2)

proc fcQPlainTextEdit_vtable_callback_doSetTextCursor(self: pointer, cursor: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QPlainTextEditVTable](fcQPlainTextEdit_vdata(self))
  let self = QPlainTextEdit(h: self)
  let slotval1 = gen_qtextcursor_types.QTextCursor(h: cursor, owned: false)
  vtbl[].doSetTextCursor(self, slotval1)

proc fcQPlainTextEdit_vtable_callback_minimumSizeHint(self: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QPlainTextEditVTable](fcQPlainTextEdit_vdata(self))
  let self = QPlainTextEdit(h: self)
  var virtualReturn = vtbl[].minimumSizeHint(self)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc fcQPlainTextEdit_vtable_callback_sizeHint(self: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QPlainTextEditVTable](fcQPlainTextEdit_vdata(self))
  let self = QPlainTextEdit(h: self)
  var virtualReturn = vtbl[].sizeHint(self)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc fcQPlainTextEdit_vtable_callback_setupViewport(self: pointer, viewport: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QPlainTextEditVTable](fcQPlainTextEdit_vdata(self))
  let self = QPlainTextEdit(h: self)
  let slotval1 = gen_qwidget_types.QWidget(h: viewport, owned: false)
  vtbl[].setupViewport(self, slotval1)

proc fcQPlainTextEdit_vtable_callback_eventFilter(self: pointer, param1: pointer, param2: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QPlainTextEditVTable](fcQPlainTextEdit_vdata(self))
  let self = QPlainTextEdit(h: self)
  let slotval1 = gen_qobject_types.QObject(h: param1, owned: false)
  let slotval2 = gen_qcoreevent_types.QEvent(h: param2, owned: false)
  var virtualReturn = vtbl[].eventFilter(self, slotval1, slotval2)
  virtualReturn

proc fcQPlainTextEdit_vtable_callback_viewportEvent(self: pointer, param1: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QPlainTextEditVTable](fcQPlainTextEdit_vdata(self))
  let self = QPlainTextEdit(h: self)
  let slotval1 = gen_qcoreevent_types.QEvent(h: param1, owned: false)
  var virtualReturn = vtbl[].viewportEvent(self, slotval1)
  virtualReturn

proc fcQPlainTextEdit_vtable_callback_viewportSizeHint(self: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QPlainTextEditVTable](fcQPlainTextEdit_vdata(self))
  let self = QPlainTextEdit(h: self)
  var virtualReturn = vtbl[].viewportSizeHint(self)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc fcQPlainTextEdit_vtable_callback_initStyleOption(self: pointer, option: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QPlainTextEditVTable](fcQPlainTextEdit_vdata(self))
  let self = QPlainTextEdit(h: self)
  let slotval1 = gen_qstyleoption_types.QStyleOptionFrame(h: option, owned: false)
  vtbl[].initStyleOption(self, slotval1)

proc fcQPlainTextEdit_vtable_callback_devType(self: pointer): cint {.cdecl.} =
  let vtbl = cast[ptr QPlainTextEditVTable](fcQPlainTextEdit_vdata(self))
  let self = QPlainTextEdit(h: self)
  var virtualReturn = vtbl[].devType(self)
  virtualReturn

proc fcQPlainTextEdit_vtable_callback_setVisible(self: pointer, visible: bool): void {.cdecl.} =
  let vtbl = cast[ptr QPlainTextEditVTable](fcQPlainTextEdit_vdata(self))
  let self = QPlainTextEdit(h: self)
  let slotval1 = visible
  vtbl[].setVisible(self, slotval1)

proc fcQPlainTextEdit_vtable_callback_heightForWidth(self: pointer, param1: cint): cint {.cdecl.} =
  let vtbl = cast[ptr QPlainTextEditVTable](fcQPlainTextEdit_vdata(self))
  let self = QPlainTextEdit(h: self)
  let slotval1 = param1
  var virtualReturn = vtbl[].heightForWidth(self, slotval1)
  virtualReturn

proc fcQPlainTextEdit_vtable_callback_hasHeightForWidth(self: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QPlainTextEditVTable](fcQPlainTextEdit_vdata(self))
  let self = QPlainTextEdit(h: self)
  var virtualReturn = vtbl[].hasHeightForWidth(self)
  virtualReturn

proc fcQPlainTextEdit_vtable_callback_paintEngine(self: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QPlainTextEditVTable](fcQPlainTextEdit_vdata(self))
  let self = QPlainTextEdit(h: self)
  var virtualReturn = vtbl[].paintEngine(self)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc fcQPlainTextEdit_vtable_callback_enterEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QPlainTextEditVTable](fcQPlainTextEdit_vdata(self))
  let self = QPlainTextEdit(h: self)
  let slotval1 = gen_qevent_types.QEnterEvent(h: event, owned: false)
  vtbl[].enterEvent(self, slotval1)

proc fcQPlainTextEdit_vtable_callback_leaveEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QPlainTextEditVTable](fcQPlainTextEdit_vdata(self))
  let self = QPlainTextEdit(h: self)
  let slotval1 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  vtbl[].leaveEvent(self, slotval1)

proc fcQPlainTextEdit_vtable_callback_moveEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QPlainTextEditVTable](fcQPlainTextEdit_vdata(self))
  let self = QPlainTextEdit(h: self)
  let slotval1 = gen_qevent_types.QMoveEvent(h: event, owned: false)
  vtbl[].moveEvent(self, slotval1)

proc fcQPlainTextEdit_vtable_callback_closeEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QPlainTextEditVTable](fcQPlainTextEdit_vdata(self))
  let self = QPlainTextEdit(h: self)
  let slotval1 = gen_qevent_types.QCloseEvent(h: event, owned: false)
  vtbl[].closeEvent(self, slotval1)

proc fcQPlainTextEdit_vtable_callback_tabletEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QPlainTextEditVTable](fcQPlainTextEdit_vdata(self))
  let self = QPlainTextEdit(h: self)
  let slotval1 = gen_qevent_types.QTabletEvent(h: event, owned: false)
  vtbl[].tabletEvent(self, slotval1)

proc fcQPlainTextEdit_vtable_callback_actionEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QPlainTextEditVTable](fcQPlainTextEdit_vdata(self))
  let self = QPlainTextEdit(h: self)
  let slotval1 = gen_qevent_types.QActionEvent(h: event, owned: false)
  vtbl[].actionEvent(self, slotval1)

proc fcQPlainTextEdit_vtable_callback_hideEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QPlainTextEditVTable](fcQPlainTextEdit_vdata(self))
  let self = QPlainTextEdit(h: self)
  let slotval1 = gen_qevent_types.QHideEvent(h: event, owned: false)
  vtbl[].hideEvent(self, slotval1)

proc fcQPlainTextEdit_vtable_callback_nativeEvent(self: pointer, eventType: struct_miqt_string, message: pointer, resultVal: ptr uint): bool {.cdecl.} =
  let vtbl = cast[ptr QPlainTextEditVTable](fcQPlainTextEdit_vdata(self))
  let self = QPlainTextEdit(h: self)
  var veventType_bytearray = eventType
  var veventTypex_ret = @(toOpenArray(cast[ptr UncheckedArray[byte]](veventType_bytearray.data), 0, int(veventType_bytearray.len)-1))
  c_free(veventType_bytearray.data)
  let slotval1 = veventTypex_ret
  let slotval2 = message
  let slotval3 = resultVal
  var virtualReturn = vtbl[].nativeEvent(self, slotval1, slotval2, slotval3)
  virtualReturn

proc fcQPlainTextEdit_vtable_callback_metric(self: pointer, param1: cint): cint {.cdecl.} =
  let vtbl = cast[ptr QPlainTextEditVTable](fcQPlainTextEdit_vdata(self))
  let self = QPlainTextEdit(h: self)
  let slotval1 = cint(param1)
  var virtualReturn = vtbl[].metric(self, slotval1)
  virtualReturn

proc fcQPlainTextEdit_vtable_callback_initPainter(self: pointer, painter: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QPlainTextEditVTable](fcQPlainTextEdit_vdata(self))
  let self = QPlainTextEdit(h: self)
  let slotval1 = gen_qpainter_types.QPainter(h: painter, owned: false)
  vtbl[].initPainter(self, slotval1)

proc fcQPlainTextEdit_vtable_callback_redirected(self: pointer, offset: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QPlainTextEditVTable](fcQPlainTextEdit_vdata(self))
  let self = QPlainTextEdit(h: self)
  let slotval1 = gen_qpoint_types.QPoint(h: offset, owned: false)
  var virtualReturn = vtbl[].redirected(self, slotval1)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc fcQPlainTextEdit_vtable_callback_sharedPainter(self: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QPlainTextEditVTable](fcQPlainTextEdit_vdata(self))
  let self = QPlainTextEdit(h: self)
  var virtualReturn = vtbl[].sharedPainter(self)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc fcQPlainTextEdit_vtable_callback_childEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QPlainTextEditVTable](fcQPlainTextEdit_vdata(self))
  let self = QPlainTextEdit(h: self)
  let slotval1 = gen_qcoreevent_types.QChildEvent(h: event, owned: false)
  vtbl[].childEvent(self, slotval1)

proc fcQPlainTextEdit_vtable_callback_customEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QPlainTextEditVTable](fcQPlainTextEdit_vdata(self))
  let self = QPlainTextEdit(h: self)
  let slotval1 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  vtbl[].customEvent(self, slotval1)

proc fcQPlainTextEdit_vtable_callback_connectNotify(self: pointer, signal: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QPlainTextEditVTable](fcQPlainTextEdit_vdata(self))
  let self = QPlainTextEdit(h: self)
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal, owned: false)
  vtbl[].connectNotify(self, slotval1)

proc fcQPlainTextEdit_vtable_callback_disconnectNotify(self: pointer, signal: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QPlainTextEditVTable](fcQPlainTextEdit_vdata(self))
  let self = QPlainTextEdit(h: self)
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal, owned: false)
  vtbl[].disconnectNotify(self, slotval1)

type VirtualQPlainTextEdit* {.inheritable.} = ref object of QPlainTextEdit
  vtbl*: cQPlainTextEditVTable

method metaObject*(self: VirtualQPlainTextEdit): gen_qobjectdefs_types.QMetaObject {.base.} =
  QPlainTextEditmetaObject(self[])
method metacast*(self: VirtualQPlainTextEdit, param1: cstring): pointer {.base.} =
  QPlainTextEditmetacast(self[], param1)
method metacall*(self: VirtualQPlainTextEdit, param1: cint, param2: cint, param3: pointer): cint {.base.} =
  QPlainTextEditmetacall(self[], param1, param2, param3)
method loadResource*(self: VirtualQPlainTextEdit, typeVal: cint, name: gen_qurl_types.QUrl): gen_qvariant_types.QVariant {.base.} =
  QPlainTextEditloadResource(self[], typeVal, name)
method inputMethodQuery*(self: VirtualQPlainTextEdit, property: cint): gen_qvariant_types.QVariant {.base.} =
  QPlainTextEditinputMethodQuery(self[], property)
method event*(self: VirtualQPlainTextEdit, e: gen_qcoreevent_types.QEvent): bool {.base.} =
  QPlainTextEditevent(self[], e)
method timerEvent*(self: VirtualQPlainTextEdit, e: gen_qcoreevent_types.QTimerEvent): void {.base.} =
  QPlainTextEdittimerEvent(self[], e)
method keyPressEvent*(self: VirtualQPlainTextEdit, e: gen_qevent_types.QKeyEvent): void {.base.} =
  QPlainTextEditkeyPressEvent(self[], e)
method keyReleaseEvent*(self: VirtualQPlainTextEdit, e: gen_qevent_types.QKeyEvent): void {.base.} =
  QPlainTextEditkeyReleaseEvent(self[], e)
method resizeEvent*(self: VirtualQPlainTextEdit, e: gen_qevent_types.QResizeEvent): void {.base.} =
  QPlainTextEditresizeEvent(self[], e)
method paintEvent*(self: VirtualQPlainTextEdit, e: gen_qevent_types.QPaintEvent): void {.base.} =
  QPlainTextEditpaintEvent(self[], e)
method mousePressEvent*(self: VirtualQPlainTextEdit, e: gen_qevent_types.QMouseEvent): void {.base.} =
  QPlainTextEditmousePressEvent(self[], e)
method mouseMoveEvent*(self: VirtualQPlainTextEdit, e: gen_qevent_types.QMouseEvent): void {.base.} =
  QPlainTextEditmouseMoveEvent(self[], e)
method mouseReleaseEvent*(self: VirtualQPlainTextEdit, e: gen_qevent_types.QMouseEvent): void {.base.} =
  QPlainTextEditmouseReleaseEvent(self[], e)
method mouseDoubleClickEvent*(self: VirtualQPlainTextEdit, e: gen_qevent_types.QMouseEvent): void {.base.} =
  QPlainTextEditmouseDoubleClickEvent(self[], e)
method focusNextPrevChild*(self: VirtualQPlainTextEdit, next: bool): bool {.base.} =
  QPlainTextEditfocusNextPrevChild(self[], next)
method contextMenuEvent*(self: VirtualQPlainTextEdit, e: gen_qevent_types.QContextMenuEvent): void {.base.} =
  QPlainTextEditcontextMenuEvent(self[], e)
method dragEnterEvent*(self: VirtualQPlainTextEdit, e: gen_qevent_types.QDragEnterEvent): void {.base.} =
  QPlainTextEditdragEnterEvent(self[], e)
method dragLeaveEvent*(self: VirtualQPlainTextEdit, e: gen_qevent_types.QDragLeaveEvent): void {.base.} =
  QPlainTextEditdragLeaveEvent(self[], e)
method dragMoveEvent*(self: VirtualQPlainTextEdit, e: gen_qevent_types.QDragMoveEvent): void {.base.} =
  QPlainTextEditdragMoveEvent(self[], e)
method dropEvent*(self: VirtualQPlainTextEdit, e: gen_qevent_types.QDropEvent): void {.base.} =
  QPlainTextEditdropEvent(self[], e)
method focusInEvent*(self: VirtualQPlainTextEdit, e: gen_qevent_types.QFocusEvent): void {.base.} =
  QPlainTextEditfocusInEvent(self[], e)
method focusOutEvent*(self: VirtualQPlainTextEdit, e: gen_qevent_types.QFocusEvent): void {.base.} =
  QPlainTextEditfocusOutEvent(self[], e)
method showEvent*(self: VirtualQPlainTextEdit, param1: gen_qevent_types.QShowEvent): void {.base.} =
  QPlainTextEditshowEvent(self[], param1)
method changeEvent*(self: VirtualQPlainTextEdit, e: gen_qcoreevent_types.QEvent): void {.base.} =
  QPlainTextEditchangeEvent(self[], e)
method wheelEvent*(self: VirtualQPlainTextEdit, e: gen_qevent_types.QWheelEvent): void {.base.} =
  QPlainTextEditwheelEvent(self[], e)
method createMimeDataFromSelection*(self: VirtualQPlainTextEdit): gen_qmimedata_types.QMimeData {.base.} =
  QPlainTextEditcreateMimeDataFromSelection(self[])
method canInsertFromMimeData*(self: VirtualQPlainTextEdit, source: gen_qmimedata_types.QMimeData): bool {.base.} =
  QPlainTextEditcanInsertFromMimeData(self[], source)
method insertFromMimeData*(self: VirtualQPlainTextEdit, source: gen_qmimedata_types.QMimeData): void {.base.} =
  QPlainTextEditinsertFromMimeData(self[], source)
method inputMethodEvent*(self: VirtualQPlainTextEdit, param1: gen_qevent_types.QInputMethodEvent): void {.base.} =
  QPlainTextEditinputMethodEvent(self[], param1)
method scrollContentsBy*(self: VirtualQPlainTextEdit, dx: cint, dy: cint): void {.base.} =
  QPlainTextEditscrollContentsBy(self[], dx, dy)
method doSetTextCursor*(self: VirtualQPlainTextEdit, cursor: gen_qtextcursor_types.QTextCursor): void {.base.} =
  QPlainTextEditdoSetTextCursor(self[], cursor)
method minimumSizeHint*(self: VirtualQPlainTextEdit): gen_qsize_types.QSize {.base.} =
  QPlainTextEditminimumSizeHint(self[])
method sizeHint*(self: VirtualQPlainTextEdit): gen_qsize_types.QSize {.base.} =
  QPlainTextEditsizeHint(self[])
method setupViewport*(self: VirtualQPlainTextEdit, viewport: gen_qwidget_types.QWidget): void {.base.} =
  QPlainTextEditsetupViewport(self[], viewport)
method eventFilter*(self: VirtualQPlainTextEdit, param1: gen_qobject_types.QObject, param2: gen_qcoreevent_types.QEvent): bool {.base.} =
  QPlainTextEditeventFilter(self[], param1, param2)
method viewportEvent*(self: VirtualQPlainTextEdit, param1: gen_qcoreevent_types.QEvent): bool {.base.} =
  QPlainTextEditviewportEvent(self[], param1)
method viewportSizeHint*(self: VirtualQPlainTextEdit): gen_qsize_types.QSize {.base.} =
  QPlainTextEditviewportSizeHint(self[])
method initStyleOption*(self: VirtualQPlainTextEdit, option: gen_qstyleoption_types.QStyleOptionFrame): void {.base.} =
  QPlainTextEditinitStyleOption(self[], option)
method devType*(self: VirtualQPlainTextEdit): cint {.base.} =
  QPlainTextEditdevType(self[])
method setVisible*(self: VirtualQPlainTextEdit, visible: bool): void {.base.} =
  QPlainTextEditsetVisible(self[], visible)
method heightForWidth*(self: VirtualQPlainTextEdit, param1: cint): cint {.base.} =
  QPlainTextEditheightForWidth(self[], param1)
method hasHeightForWidth*(self: VirtualQPlainTextEdit): bool {.base.} =
  QPlainTextEdithasHeightForWidth(self[])
method paintEngine*(self: VirtualQPlainTextEdit): gen_qpaintengine_types.QPaintEngine {.base.} =
  QPlainTextEditpaintEngine(self[])
method enterEvent*(self: VirtualQPlainTextEdit, event: gen_qevent_types.QEnterEvent): void {.base.} =
  QPlainTextEditenterEvent(self[], event)
method leaveEvent*(self: VirtualQPlainTextEdit, event: gen_qcoreevent_types.QEvent): void {.base.} =
  QPlainTextEditleaveEvent(self[], event)
method moveEvent*(self: VirtualQPlainTextEdit, event: gen_qevent_types.QMoveEvent): void {.base.} =
  QPlainTextEditmoveEvent(self[], event)
method closeEvent*(self: VirtualQPlainTextEdit, event: gen_qevent_types.QCloseEvent): void {.base.} =
  QPlainTextEditcloseEvent(self[], event)
method tabletEvent*(self: VirtualQPlainTextEdit, event: gen_qevent_types.QTabletEvent): void {.base.} =
  QPlainTextEdittabletEvent(self[], event)
method actionEvent*(self: VirtualQPlainTextEdit, event: gen_qevent_types.QActionEvent): void {.base.} =
  QPlainTextEditactionEvent(self[], event)
method hideEvent*(self: VirtualQPlainTextEdit, event: gen_qevent_types.QHideEvent): void {.base.} =
  QPlainTextEdithideEvent(self[], event)
method nativeEvent*(self: VirtualQPlainTextEdit, eventType: openArray[byte], message: pointer, resultVal: ptr uint): bool {.base.} =
  QPlainTextEditnativeEvent(self[], eventType, message, resultVal)
method metric*(self: VirtualQPlainTextEdit, param1: cint): cint {.base.} =
  QPlainTextEditmetric(self[], param1)
method initPainter*(self: VirtualQPlainTextEdit, painter: gen_qpainter_types.QPainter): void {.base.} =
  QPlainTextEditinitPainter(self[], painter)
method redirected*(self: VirtualQPlainTextEdit, offset: gen_qpoint_types.QPoint): gen_qpaintdevice_types.QPaintDevice {.base.} =
  QPlainTextEditredirected(self[], offset)
method sharedPainter*(self: VirtualQPlainTextEdit): gen_qpainter_types.QPainter {.base.} =
  QPlainTextEditsharedPainter(self[])
method childEvent*(self: VirtualQPlainTextEdit, event: gen_qcoreevent_types.QChildEvent): void {.base.} =
  QPlainTextEditchildEvent(self[], event)
method customEvent*(self: VirtualQPlainTextEdit, event: gen_qcoreevent_types.QEvent): void {.base.} =
  QPlainTextEditcustomEvent(self[], event)
method connectNotify*(self: VirtualQPlainTextEdit, signal: gen_qmetaobject_types.QMetaMethod): void {.base.} =
  QPlainTextEditconnectNotify(self[], signal)
method disconnectNotify*(self: VirtualQPlainTextEdit, signal: gen_qmetaobject_types.QMetaMethod): void {.base.} =
  QPlainTextEditdisconnectNotify(self[], signal)

proc fcQPlainTextEdit_method_callback_metaObject(self: pointer): pointer {.cdecl.} =
  let inst = cast[VirtualQPlainTextEdit](fcQPlainTextEdit_vdata(self))
  var virtualReturn = inst.metaObject()
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc fcQPlainTextEdit_method_callback_metacast(self: pointer, param1: cstring): pointer {.cdecl.} =
  let inst = cast[VirtualQPlainTextEdit](fcQPlainTextEdit_vdata(self))
  let slotval1 = (param1)
  var virtualReturn = inst.metacast(slotval1)
  virtualReturn

proc fcQPlainTextEdit_method_callback_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.cdecl.} =
  let inst = cast[VirtualQPlainTextEdit](fcQPlainTextEdit_vdata(self))
  let slotval1 = cint(param1)
  let slotval2 = param2
  let slotval3 = param3
  var virtualReturn = inst.metacall(slotval1, slotval2, slotval3)
  virtualReturn

proc fcQPlainTextEdit_method_callback_loadResource(self: pointer, typeVal: cint, name: pointer): pointer {.cdecl.} =
  let inst = cast[VirtualQPlainTextEdit](fcQPlainTextEdit_vdata(self))
  let slotval1 = typeVal
  let slotval2 = gen_qurl_types.QUrl(h: name, owned: false)
  var virtualReturn = inst.loadResource(slotval1, slotval2)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc fcQPlainTextEdit_method_callback_inputMethodQuery(self: pointer, property: cint): pointer {.cdecl.} =
  let inst = cast[VirtualQPlainTextEdit](fcQPlainTextEdit_vdata(self))
  let slotval1 = cint(property)
  var virtualReturn = inst.inputMethodQuery(slotval1)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc fcQPlainTextEdit_method_callback_event(self: pointer, e: pointer): bool {.cdecl.} =
  let inst = cast[VirtualQPlainTextEdit](fcQPlainTextEdit_vdata(self))
  let slotval1 = gen_qcoreevent_types.QEvent(h: e, owned: false)
  var virtualReturn = inst.event(slotval1)
  virtualReturn

proc fcQPlainTextEdit_method_callback_timerEvent(self: pointer, e: pointer): void {.cdecl.} =
  let inst = cast[VirtualQPlainTextEdit](fcQPlainTextEdit_vdata(self))
  let slotval1 = gen_qcoreevent_types.QTimerEvent(h: e, owned: false)
  inst.timerEvent(slotval1)

proc fcQPlainTextEdit_method_callback_keyPressEvent(self: pointer, e: pointer): void {.cdecl.} =
  let inst = cast[VirtualQPlainTextEdit](fcQPlainTextEdit_vdata(self))
  let slotval1 = gen_qevent_types.QKeyEvent(h: e, owned: false)
  inst.keyPressEvent(slotval1)

proc fcQPlainTextEdit_method_callback_keyReleaseEvent(self: pointer, e: pointer): void {.cdecl.} =
  let inst = cast[VirtualQPlainTextEdit](fcQPlainTextEdit_vdata(self))
  let slotval1 = gen_qevent_types.QKeyEvent(h: e, owned: false)
  inst.keyReleaseEvent(slotval1)

proc fcQPlainTextEdit_method_callback_resizeEvent(self: pointer, e: pointer): void {.cdecl.} =
  let inst = cast[VirtualQPlainTextEdit](fcQPlainTextEdit_vdata(self))
  let slotval1 = gen_qevent_types.QResizeEvent(h: e, owned: false)
  inst.resizeEvent(slotval1)

proc fcQPlainTextEdit_method_callback_paintEvent(self: pointer, e: pointer): void {.cdecl.} =
  let inst = cast[VirtualQPlainTextEdit](fcQPlainTextEdit_vdata(self))
  let slotval1 = gen_qevent_types.QPaintEvent(h: e, owned: false)
  inst.paintEvent(slotval1)

proc fcQPlainTextEdit_method_callback_mousePressEvent(self: pointer, e: pointer): void {.cdecl.} =
  let inst = cast[VirtualQPlainTextEdit](fcQPlainTextEdit_vdata(self))
  let slotval1 = gen_qevent_types.QMouseEvent(h: e, owned: false)
  inst.mousePressEvent(slotval1)

proc fcQPlainTextEdit_method_callback_mouseMoveEvent(self: pointer, e: pointer): void {.cdecl.} =
  let inst = cast[VirtualQPlainTextEdit](fcQPlainTextEdit_vdata(self))
  let slotval1 = gen_qevent_types.QMouseEvent(h: e, owned: false)
  inst.mouseMoveEvent(slotval1)

proc fcQPlainTextEdit_method_callback_mouseReleaseEvent(self: pointer, e: pointer): void {.cdecl.} =
  let inst = cast[VirtualQPlainTextEdit](fcQPlainTextEdit_vdata(self))
  let slotval1 = gen_qevent_types.QMouseEvent(h: e, owned: false)
  inst.mouseReleaseEvent(slotval1)

proc fcQPlainTextEdit_method_callback_mouseDoubleClickEvent(self: pointer, e: pointer): void {.cdecl.} =
  let inst = cast[VirtualQPlainTextEdit](fcQPlainTextEdit_vdata(self))
  let slotval1 = gen_qevent_types.QMouseEvent(h: e, owned: false)
  inst.mouseDoubleClickEvent(slotval1)

proc fcQPlainTextEdit_method_callback_focusNextPrevChild(self: pointer, next: bool): bool {.cdecl.} =
  let inst = cast[VirtualQPlainTextEdit](fcQPlainTextEdit_vdata(self))
  let slotval1 = next
  var virtualReturn = inst.focusNextPrevChild(slotval1)
  virtualReturn

proc fcQPlainTextEdit_method_callback_contextMenuEvent(self: pointer, e: pointer): void {.cdecl.} =
  let inst = cast[VirtualQPlainTextEdit](fcQPlainTextEdit_vdata(self))
  let slotval1 = gen_qevent_types.QContextMenuEvent(h: e, owned: false)
  inst.contextMenuEvent(slotval1)

proc fcQPlainTextEdit_method_callback_dragEnterEvent(self: pointer, e: pointer): void {.cdecl.} =
  let inst = cast[VirtualQPlainTextEdit](fcQPlainTextEdit_vdata(self))
  let slotval1 = gen_qevent_types.QDragEnterEvent(h: e, owned: false)
  inst.dragEnterEvent(slotval1)

proc fcQPlainTextEdit_method_callback_dragLeaveEvent(self: pointer, e: pointer): void {.cdecl.} =
  let inst = cast[VirtualQPlainTextEdit](fcQPlainTextEdit_vdata(self))
  let slotval1 = gen_qevent_types.QDragLeaveEvent(h: e, owned: false)
  inst.dragLeaveEvent(slotval1)

proc fcQPlainTextEdit_method_callback_dragMoveEvent(self: pointer, e: pointer): void {.cdecl.} =
  let inst = cast[VirtualQPlainTextEdit](fcQPlainTextEdit_vdata(self))
  let slotval1 = gen_qevent_types.QDragMoveEvent(h: e, owned: false)
  inst.dragMoveEvent(slotval1)

proc fcQPlainTextEdit_method_callback_dropEvent(self: pointer, e: pointer): void {.cdecl.} =
  let inst = cast[VirtualQPlainTextEdit](fcQPlainTextEdit_vdata(self))
  let slotval1 = gen_qevent_types.QDropEvent(h: e, owned: false)
  inst.dropEvent(slotval1)

proc fcQPlainTextEdit_method_callback_focusInEvent(self: pointer, e: pointer): void {.cdecl.} =
  let inst = cast[VirtualQPlainTextEdit](fcQPlainTextEdit_vdata(self))
  let slotval1 = gen_qevent_types.QFocusEvent(h: e, owned: false)
  inst.focusInEvent(slotval1)

proc fcQPlainTextEdit_method_callback_focusOutEvent(self: pointer, e: pointer): void {.cdecl.} =
  let inst = cast[VirtualQPlainTextEdit](fcQPlainTextEdit_vdata(self))
  let slotval1 = gen_qevent_types.QFocusEvent(h: e, owned: false)
  inst.focusOutEvent(slotval1)

proc fcQPlainTextEdit_method_callback_showEvent(self: pointer, param1: pointer): void {.cdecl.} =
  let inst = cast[VirtualQPlainTextEdit](fcQPlainTextEdit_vdata(self))
  let slotval1 = gen_qevent_types.QShowEvent(h: param1, owned: false)
  inst.showEvent(slotval1)

proc fcQPlainTextEdit_method_callback_changeEvent(self: pointer, e: pointer): void {.cdecl.} =
  let inst = cast[VirtualQPlainTextEdit](fcQPlainTextEdit_vdata(self))
  let slotval1 = gen_qcoreevent_types.QEvent(h: e, owned: false)
  inst.changeEvent(slotval1)

proc fcQPlainTextEdit_method_callback_wheelEvent(self: pointer, e: pointer): void {.cdecl.} =
  let inst = cast[VirtualQPlainTextEdit](fcQPlainTextEdit_vdata(self))
  let slotval1 = gen_qevent_types.QWheelEvent(h: e, owned: false)
  inst.wheelEvent(slotval1)

proc fcQPlainTextEdit_method_callback_createMimeDataFromSelection(self: pointer): pointer {.cdecl.} =
  let inst = cast[VirtualQPlainTextEdit](fcQPlainTextEdit_vdata(self))
  var virtualReturn = inst.createMimeDataFromSelection()
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc fcQPlainTextEdit_method_callback_canInsertFromMimeData(self: pointer, source: pointer): bool {.cdecl.} =
  let inst = cast[VirtualQPlainTextEdit](fcQPlainTextEdit_vdata(self))
  let slotval1 = gen_qmimedata_types.QMimeData(h: source, owned: false)
  var virtualReturn = inst.canInsertFromMimeData(slotval1)
  virtualReturn

proc fcQPlainTextEdit_method_callback_insertFromMimeData(self: pointer, source: pointer): void {.cdecl.} =
  let inst = cast[VirtualQPlainTextEdit](fcQPlainTextEdit_vdata(self))
  let slotval1 = gen_qmimedata_types.QMimeData(h: source, owned: false)
  inst.insertFromMimeData(slotval1)

proc fcQPlainTextEdit_method_callback_inputMethodEvent(self: pointer, param1: pointer): void {.cdecl.} =
  let inst = cast[VirtualQPlainTextEdit](fcQPlainTextEdit_vdata(self))
  let slotval1 = gen_qevent_types.QInputMethodEvent(h: param1, owned: false)
  inst.inputMethodEvent(slotval1)

proc fcQPlainTextEdit_method_callback_scrollContentsBy(self: pointer, dx: cint, dy: cint): void {.cdecl.} =
  let inst = cast[VirtualQPlainTextEdit](fcQPlainTextEdit_vdata(self))
  let slotval1 = dx
  let slotval2 = dy
  inst.scrollContentsBy(slotval1, slotval2)

proc fcQPlainTextEdit_method_callback_doSetTextCursor(self: pointer, cursor: pointer): void {.cdecl.} =
  let inst = cast[VirtualQPlainTextEdit](fcQPlainTextEdit_vdata(self))
  let slotval1 = gen_qtextcursor_types.QTextCursor(h: cursor, owned: false)
  inst.doSetTextCursor(slotval1)

proc fcQPlainTextEdit_method_callback_minimumSizeHint(self: pointer): pointer {.cdecl.} =
  let inst = cast[VirtualQPlainTextEdit](fcQPlainTextEdit_vdata(self))
  var virtualReturn = inst.minimumSizeHint()
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc fcQPlainTextEdit_method_callback_sizeHint(self: pointer): pointer {.cdecl.} =
  let inst = cast[VirtualQPlainTextEdit](fcQPlainTextEdit_vdata(self))
  var virtualReturn = inst.sizeHint()
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc fcQPlainTextEdit_method_callback_setupViewport(self: pointer, viewport: pointer): void {.cdecl.} =
  let inst = cast[VirtualQPlainTextEdit](fcQPlainTextEdit_vdata(self))
  let slotval1 = gen_qwidget_types.QWidget(h: viewport, owned: false)
  inst.setupViewport(slotval1)

proc fcQPlainTextEdit_method_callback_eventFilter(self: pointer, param1: pointer, param2: pointer): bool {.cdecl.} =
  let inst = cast[VirtualQPlainTextEdit](fcQPlainTextEdit_vdata(self))
  let slotval1 = gen_qobject_types.QObject(h: param1, owned: false)
  let slotval2 = gen_qcoreevent_types.QEvent(h: param2, owned: false)
  var virtualReturn = inst.eventFilter(slotval1, slotval2)
  virtualReturn

proc fcQPlainTextEdit_method_callback_viewportEvent(self: pointer, param1: pointer): bool {.cdecl.} =
  let inst = cast[VirtualQPlainTextEdit](fcQPlainTextEdit_vdata(self))
  let slotval1 = gen_qcoreevent_types.QEvent(h: param1, owned: false)
  var virtualReturn = inst.viewportEvent(slotval1)
  virtualReturn

proc fcQPlainTextEdit_method_callback_viewportSizeHint(self: pointer): pointer {.cdecl.} =
  let inst = cast[VirtualQPlainTextEdit](fcQPlainTextEdit_vdata(self))
  var virtualReturn = inst.viewportSizeHint()
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc fcQPlainTextEdit_method_callback_initStyleOption(self: pointer, option: pointer): void {.cdecl.} =
  let inst = cast[VirtualQPlainTextEdit](fcQPlainTextEdit_vdata(self))
  let slotval1 = gen_qstyleoption_types.QStyleOptionFrame(h: option, owned: false)
  inst.initStyleOption(slotval1)

proc fcQPlainTextEdit_method_callback_devType(self: pointer): cint {.cdecl.} =
  let inst = cast[VirtualQPlainTextEdit](fcQPlainTextEdit_vdata(self))
  var virtualReturn = inst.devType()
  virtualReturn

proc fcQPlainTextEdit_method_callback_setVisible(self: pointer, visible: bool): void {.cdecl.} =
  let inst = cast[VirtualQPlainTextEdit](fcQPlainTextEdit_vdata(self))
  let slotval1 = visible
  inst.setVisible(slotval1)

proc fcQPlainTextEdit_method_callback_heightForWidth(self: pointer, param1: cint): cint {.cdecl.} =
  let inst = cast[VirtualQPlainTextEdit](fcQPlainTextEdit_vdata(self))
  let slotval1 = param1
  var virtualReturn = inst.heightForWidth(slotval1)
  virtualReturn

proc fcQPlainTextEdit_method_callback_hasHeightForWidth(self: pointer): bool {.cdecl.} =
  let inst = cast[VirtualQPlainTextEdit](fcQPlainTextEdit_vdata(self))
  var virtualReturn = inst.hasHeightForWidth()
  virtualReturn

proc fcQPlainTextEdit_method_callback_paintEngine(self: pointer): pointer {.cdecl.} =
  let inst = cast[VirtualQPlainTextEdit](fcQPlainTextEdit_vdata(self))
  var virtualReturn = inst.paintEngine()
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc fcQPlainTextEdit_method_callback_enterEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQPlainTextEdit](fcQPlainTextEdit_vdata(self))
  let slotval1 = gen_qevent_types.QEnterEvent(h: event, owned: false)
  inst.enterEvent(slotval1)

proc fcQPlainTextEdit_method_callback_leaveEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQPlainTextEdit](fcQPlainTextEdit_vdata(self))
  let slotval1 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  inst.leaveEvent(slotval1)

proc fcQPlainTextEdit_method_callback_moveEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQPlainTextEdit](fcQPlainTextEdit_vdata(self))
  let slotval1 = gen_qevent_types.QMoveEvent(h: event, owned: false)
  inst.moveEvent(slotval1)

proc fcQPlainTextEdit_method_callback_closeEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQPlainTextEdit](fcQPlainTextEdit_vdata(self))
  let slotval1 = gen_qevent_types.QCloseEvent(h: event, owned: false)
  inst.closeEvent(slotval1)

proc fcQPlainTextEdit_method_callback_tabletEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQPlainTextEdit](fcQPlainTextEdit_vdata(self))
  let slotval1 = gen_qevent_types.QTabletEvent(h: event, owned: false)
  inst.tabletEvent(slotval1)

proc fcQPlainTextEdit_method_callback_actionEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQPlainTextEdit](fcQPlainTextEdit_vdata(self))
  let slotval1 = gen_qevent_types.QActionEvent(h: event, owned: false)
  inst.actionEvent(slotval1)

proc fcQPlainTextEdit_method_callback_hideEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQPlainTextEdit](fcQPlainTextEdit_vdata(self))
  let slotval1 = gen_qevent_types.QHideEvent(h: event, owned: false)
  inst.hideEvent(slotval1)

proc fcQPlainTextEdit_method_callback_nativeEvent(self: pointer, eventType: struct_miqt_string, message: pointer, resultVal: ptr uint): bool {.cdecl.} =
  let inst = cast[VirtualQPlainTextEdit](fcQPlainTextEdit_vdata(self))
  var veventType_bytearray = eventType
  var veventTypex_ret = @(toOpenArray(cast[ptr UncheckedArray[byte]](veventType_bytearray.data), 0, int(veventType_bytearray.len)-1))
  c_free(veventType_bytearray.data)
  let slotval1 = veventTypex_ret
  let slotval2 = message
  let slotval3 = resultVal
  var virtualReturn = inst.nativeEvent(slotval1, slotval2, slotval3)
  virtualReturn

proc fcQPlainTextEdit_method_callback_metric(self: pointer, param1: cint): cint {.cdecl.} =
  let inst = cast[VirtualQPlainTextEdit](fcQPlainTextEdit_vdata(self))
  let slotval1 = cint(param1)
  var virtualReturn = inst.metric(slotval1)
  virtualReturn

proc fcQPlainTextEdit_method_callback_initPainter(self: pointer, painter: pointer): void {.cdecl.} =
  let inst = cast[VirtualQPlainTextEdit](fcQPlainTextEdit_vdata(self))
  let slotval1 = gen_qpainter_types.QPainter(h: painter, owned: false)
  inst.initPainter(slotval1)

proc fcQPlainTextEdit_method_callback_redirected(self: pointer, offset: pointer): pointer {.cdecl.} =
  let inst = cast[VirtualQPlainTextEdit](fcQPlainTextEdit_vdata(self))
  let slotval1 = gen_qpoint_types.QPoint(h: offset, owned: false)
  var virtualReturn = inst.redirected(slotval1)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc fcQPlainTextEdit_method_callback_sharedPainter(self: pointer): pointer {.cdecl.} =
  let inst = cast[VirtualQPlainTextEdit](fcQPlainTextEdit_vdata(self))
  var virtualReturn = inst.sharedPainter()
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc fcQPlainTextEdit_method_callback_childEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQPlainTextEdit](fcQPlainTextEdit_vdata(self))
  let slotval1 = gen_qcoreevent_types.QChildEvent(h: event, owned: false)
  inst.childEvent(slotval1)

proc fcQPlainTextEdit_method_callback_customEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQPlainTextEdit](fcQPlainTextEdit_vdata(self))
  let slotval1 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  inst.customEvent(slotval1)

proc fcQPlainTextEdit_method_callback_connectNotify(self: pointer, signal: pointer): void {.cdecl.} =
  let inst = cast[VirtualQPlainTextEdit](fcQPlainTextEdit_vdata(self))
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal, owned: false)
  inst.connectNotify(slotval1)

proc fcQPlainTextEdit_method_callback_disconnectNotify(self: pointer, signal: pointer): void {.cdecl.} =
  let inst = cast[VirtualQPlainTextEdit](fcQPlainTextEdit_vdata(self))
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal, owned: false)
  inst.disconnectNotify(slotval1)


proc firstVisibleBlock*(self: gen_qplaintextedit_types.QPlainTextEdit): gen_qtextobject_types.QTextBlock =
  gen_qtextobject_types.QTextBlock(h: fcQPlainTextEdit_protectedbase_firstVisibleBlock(self.h), owned: true)

proc contentOffset*(self: gen_qplaintextedit_types.QPlainTextEdit): gen_qpoint_types.QPointF =
  gen_qpoint_types.QPointF(h: fcQPlainTextEdit_protectedbase_contentOffset(self.h), owned: true)

proc blockBoundingRect*(self: gen_qplaintextedit_types.QPlainTextEdit, blockVal: gen_qtextobject_types.QTextBlock): gen_qrect_types.QRectF =
  gen_qrect_types.QRectF(h: fcQPlainTextEdit_protectedbase_blockBoundingRect(self.h, blockVal.h), owned: true)

proc blockBoundingGeometry*(self: gen_qplaintextedit_types.QPlainTextEdit, blockVal: gen_qtextobject_types.QTextBlock): gen_qrect_types.QRectF =
  gen_qrect_types.QRectF(h: fcQPlainTextEdit_protectedbase_blockBoundingGeometry(self.h, blockVal.h), owned: true)

proc getPaintContext*(self: gen_qplaintextedit_types.QPlainTextEdit): gen_qabstracttextdocumentlayout_types.QAbstractTextDocumentLayoutPaintContext =
  gen_qabstracttextdocumentlayout_types.QAbstractTextDocumentLayoutPaintContext(h: fcQPlainTextEdit_protectedbase_getPaintContext(self.h), owned: true)

proc zoomInF*(self: gen_qplaintextedit_types.QPlainTextEdit, range: float32): void =
  fcQPlainTextEdit_protectedbase_zoomInF(self.h, range)

proc setViewportMargins*(self: gen_qplaintextedit_types.QPlainTextEdit, left: cint, top: cint, right: cint, bottom: cint): void =
  fcQPlainTextEdit_protectedbase_setViewportMargins(self.h, left, top, right, bottom)

proc viewportMargins*(self: gen_qplaintextedit_types.QPlainTextEdit): gen_qmargins_types.QMargins =
  gen_qmargins_types.QMargins(h: fcQPlainTextEdit_protectedbase_viewportMargins(self.h), owned: true)

proc drawFrame*(self: gen_qplaintextedit_types.QPlainTextEdit, param1: gen_qpainter_types.QPainter): void =
  fcQPlainTextEdit_protectedbase_drawFrame(self.h, param1.h)

proc updateMicroFocus*(self: gen_qplaintextedit_types.QPlainTextEdit): void =
  fcQPlainTextEdit_protectedbase_updateMicroFocus(self.h)

proc createX*(self: gen_qplaintextedit_types.QPlainTextEdit): void =
  fcQPlainTextEdit_protectedbase_create(self.h)

proc destroy*(self: gen_qplaintextedit_types.QPlainTextEdit): void =
  fcQPlainTextEdit_protectedbase_destroy(self.h)

proc focusNextChild*(self: gen_qplaintextedit_types.QPlainTextEdit): bool =
  fcQPlainTextEdit_protectedbase_focusNextChild(self.h)

proc focusPreviousChild*(self: gen_qplaintextedit_types.QPlainTextEdit): bool =
  fcQPlainTextEdit_protectedbase_focusPreviousChild(self.h)

proc sender*(self: gen_qplaintextedit_types.QPlainTextEdit): gen_qobject_types.QObject =
  gen_qobject_types.QObject(h: fcQPlainTextEdit_protectedbase_sender(self.h), owned: false)

proc senderSignalIndex*(self: gen_qplaintextedit_types.QPlainTextEdit): cint =
  fcQPlainTextEdit_protectedbase_senderSignalIndex(self.h)

proc receivers*(self: gen_qplaintextedit_types.QPlainTextEdit, signal: cstring): cint =
  fcQPlainTextEdit_protectedbase_receivers(self.h, signal)

proc isSignalConnected*(self: gen_qplaintextedit_types.QPlainTextEdit, signal: gen_qmetaobject_types.QMetaMethod): bool =
  fcQPlainTextEdit_protectedbase_isSignalConnected(self.h, signal.h)

proc create*(T: type gen_qplaintextedit_types.QPlainTextEdit,
    parent: gen_qwidget_types.QWidget,
    vtbl: ref QPlainTextEditVTable = nil): gen_qplaintextedit_types.QPlainTextEdit =
  let vtbl = if vtbl == nil: new QPlainTextEditVTable else: vtbl
  GC_ref(vtbl)
  vtbl[].vtbl.destructor = proc(self: pointer) {.cdecl.} =
    let vtbl = cast[ref QPlainTextEditVTable](fcQPlainTextEdit_vdata(self))
    GC_unref(vtbl)
  if not isNil(vtbl[].metaObject):
    vtbl[].vtbl.metaObject = fcQPlainTextEdit_vtable_callback_metaObject
  if not isNil(vtbl[].metacast):
    vtbl[].vtbl.metacast = fcQPlainTextEdit_vtable_callback_metacast
  if not isNil(vtbl[].metacall):
    vtbl[].vtbl.metacall = fcQPlainTextEdit_vtable_callback_metacall
  if not isNil(vtbl[].loadResource):
    vtbl[].vtbl.loadResource = fcQPlainTextEdit_vtable_callback_loadResource
  if not isNil(vtbl[].inputMethodQuery):
    vtbl[].vtbl.inputMethodQuery = fcQPlainTextEdit_vtable_callback_inputMethodQuery
  if not isNil(vtbl[].event):
    vtbl[].vtbl.event = fcQPlainTextEdit_vtable_callback_event
  if not isNil(vtbl[].timerEvent):
    vtbl[].vtbl.timerEvent = fcQPlainTextEdit_vtable_callback_timerEvent
  if not isNil(vtbl[].keyPressEvent):
    vtbl[].vtbl.keyPressEvent = fcQPlainTextEdit_vtable_callback_keyPressEvent
  if not isNil(vtbl[].keyReleaseEvent):
    vtbl[].vtbl.keyReleaseEvent = fcQPlainTextEdit_vtable_callback_keyReleaseEvent
  if not isNil(vtbl[].resizeEvent):
    vtbl[].vtbl.resizeEvent = fcQPlainTextEdit_vtable_callback_resizeEvent
  if not isNil(vtbl[].paintEvent):
    vtbl[].vtbl.paintEvent = fcQPlainTextEdit_vtable_callback_paintEvent
  if not isNil(vtbl[].mousePressEvent):
    vtbl[].vtbl.mousePressEvent = fcQPlainTextEdit_vtable_callback_mousePressEvent
  if not isNil(vtbl[].mouseMoveEvent):
    vtbl[].vtbl.mouseMoveEvent = fcQPlainTextEdit_vtable_callback_mouseMoveEvent
  if not isNil(vtbl[].mouseReleaseEvent):
    vtbl[].vtbl.mouseReleaseEvent = fcQPlainTextEdit_vtable_callback_mouseReleaseEvent
  if not isNil(vtbl[].mouseDoubleClickEvent):
    vtbl[].vtbl.mouseDoubleClickEvent = fcQPlainTextEdit_vtable_callback_mouseDoubleClickEvent
  if not isNil(vtbl[].focusNextPrevChild):
    vtbl[].vtbl.focusNextPrevChild = fcQPlainTextEdit_vtable_callback_focusNextPrevChild
  if not isNil(vtbl[].contextMenuEvent):
    vtbl[].vtbl.contextMenuEvent = fcQPlainTextEdit_vtable_callback_contextMenuEvent
  if not isNil(vtbl[].dragEnterEvent):
    vtbl[].vtbl.dragEnterEvent = fcQPlainTextEdit_vtable_callback_dragEnterEvent
  if not isNil(vtbl[].dragLeaveEvent):
    vtbl[].vtbl.dragLeaveEvent = fcQPlainTextEdit_vtable_callback_dragLeaveEvent
  if not isNil(vtbl[].dragMoveEvent):
    vtbl[].vtbl.dragMoveEvent = fcQPlainTextEdit_vtable_callback_dragMoveEvent
  if not isNil(vtbl[].dropEvent):
    vtbl[].vtbl.dropEvent = fcQPlainTextEdit_vtable_callback_dropEvent
  if not isNil(vtbl[].focusInEvent):
    vtbl[].vtbl.focusInEvent = fcQPlainTextEdit_vtable_callback_focusInEvent
  if not isNil(vtbl[].focusOutEvent):
    vtbl[].vtbl.focusOutEvent = fcQPlainTextEdit_vtable_callback_focusOutEvent
  if not isNil(vtbl[].showEvent):
    vtbl[].vtbl.showEvent = fcQPlainTextEdit_vtable_callback_showEvent
  if not isNil(vtbl[].changeEvent):
    vtbl[].vtbl.changeEvent = fcQPlainTextEdit_vtable_callback_changeEvent
  if not isNil(vtbl[].wheelEvent):
    vtbl[].vtbl.wheelEvent = fcQPlainTextEdit_vtable_callback_wheelEvent
  if not isNil(vtbl[].createMimeDataFromSelection):
    vtbl[].vtbl.createMimeDataFromSelection = fcQPlainTextEdit_vtable_callback_createMimeDataFromSelection
  if not isNil(vtbl[].canInsertFromMimeData):
    vtbl[].vtbl.canInsertFromMimeData = fcQPlainTextEdit_vtable_callback_canInsertFromMimeData
  if not isNil(vtbl[].insertFromMimeData):
    vtbl[].vtbl.insertFromMimeData = fcQPlainTextEdit_vtable_callback_insertFromMimeData
  if not isNil(vtbl[].inputMethodEvent):
    vtbl[].vtbl.inputMethodEvent = fcQPlainTextEdit_vtable_callback_inputMethodEvent
  if not isNil(vtbl[].scrollContentsBy):
    vtbl[].vtbl.scrollContentsBy = fcQPlainTextEdit_vtable_callback_scrollContentsBy
  if not isNil(vtbl[].doSetTextCursor):
    vtbl[].vtbl.doSetTextCursor = fcQPlainTextEdit_vtable_callback_doSetTextCursor
  if not isNil(vtbl[].minimumSizeHint):
    vtbl[].vtbl.minimumSizeHint = fcQPlainTextEdit_vtable_callback_minimumSizeHint
  if not isNil(vtbl[].sizeHint):
    vtbl[].vtbl.sizeHint = fcQPlainTextEdit_vtable_callback_sizeHint
  if not isNil(vtbl[].setupViewport):
    vtbl[].vtbl.setupViewport = fcQPlainTextEdit_vtable_callback_setupViewport
  if not isNil(vtbl[].eventFilter):
    vtbl[].vtbl.eventFilter = fcQPlainTextEdit_vtable_callback_eventFilter
  if not isNil(vtbl[].viewportEvent):
    vtbl[].vtbl.viewportEvent = fcQPlainTextEdit_vtable_callback_viewportEvent
  if not isNil(vtbl[].viewportSizeHint):
    vtbl[].vtbl.viewportSizeHint = fcQPlainTextEdit_vtable_callback_viewportSizeHint
  if not isNil(vtbl[].initStyleOption):
    vtbl[].vtbl.initStyleOption = fcQPlainTextEdit_vtable_callback_initStyleOption
  if not isNil(vtbl[].devType):
    vtbl[].vtbl.devType = fcQPlainTextEdit_vtable_callback_devType
  if not isNil(vtbl[].setVisible):
    vtbl[].vtbl.setVisible = fcQPlainTextEdit_vtable_callback_setVisible
  if not isNil(vtbl[].heightForWidth):
    vtbl[].vtbl.heightForWidth = fcQPlainTextEdit_vtable_callback_heightForWidth
  if not isNil(vtbl[].hasHeightForWidth):
    vtbl[].vtbl.hasHeightForWidth = fcQPlainTextEdit_vtable_callback_hasHeightForWidth
  if not isNil(vtbl[].paintEngine):
    vtbl[].vtbl.paintEngine = fcQPlainTextEdit_vtable_callback_paintEngine
  if not isNil(vtbl[].enterEvent):
    vtbl[].vtbl.enterEvent = fcQPlainTextEdit_vtable_callback_enterEvent
  if not isNil(vtbl[].leaveEvent):
    vtbl[].vtbl.leaveEvent = fcQPlainTextEdit_vtable_callback_leaveEvent
  if not isNil(vtbl[].moveEvent):
    vtbl[].vtbl.moveEvent = fcQPlainTextEdit_vtable_callback_moveEvent
  if not isNil(vtbl[].closeEvent):
    vtbl[].vtbl.closeEvent = fcQPlainTextEdit_vtable_callback_closeEvent
  if not isNil(vtbl[].tabletEvent):
    vtbl[].vtbl.tabletEvent = fcQPlainTextEdit_vtable_callback_tabletEvent
  if not isNil(vtbl[].actionEvent):
    vtbl[].vtbl.actionEvent = fcQPlainTextEdit_vtable_callback_actionEvent
  if not isNil(vtbl[].hideEvent):
    vtbl[].vtbl.hideEvent = fcQPlainTextEdit_vtable_callback_hideEvent
  if not isNil(vtbl[].nativeEvent):
    vtbl[].vtbl.nativeEvent = fcQPlainTextEdit_vtable_callback_nativeEvent
  if not isNil(vtbl[].metric):
    vtbl[].vtbl.metric = fcQPlainTextEdit_vtable_callback_metric
  if not isNil(vtbl[].initPainter):
    vtbl[].vtbl.initPainter = fcQPlainTextEdit_vtable_callback_initPainter
  if not isNil(vtbl[].redirected):
    vtbl[].vtbl.redirected = fcQPlainTextEdit_vtable_callback_redirected
  if not isNil(vtbl[].sharedPainter):
    vtbl[].vtbl.sharedPainter = fcQPlainTextEdit_vtable_callback_sharedPainter
  if not isNil(vtbl[].childEvent):
    vtbl[].vtbl.childEvent = fcQPlainTextEdit_vtable_callback_childEvent
  if not isNil(vtbl[].customEvent):
    vtbl[].vtbl.customEvent = fcQPlainTextEdit_vtable_callback_customEvent
  if not isNil(vtbl[].connectNotify):
    vtbl[].vtbl.connectNotify = fcQPlainTextEdit_vtable_callback_connectNotify
  if not isNil(vtbl[].disconnectNotify):
    vtbl[].vtbl.disconnectNotify = fcQPlainTextEdit_vtable_callback_disconnectNotify
  gen_qplaintextedit_types.QPlainTextEdit(h: fcQPlainTextEdit_new(addr(vtbl[].vtbl), addr(vtbl[]), parent.h), owned: true)

proc create*(T: type gen_qplaintextedit_types.QPlainTextEdit,
    vtbl: ref QPlainTextEditVTable = nil): gen_qplaintextedit_types.QPlainTextEdit =
  let vtbl = if vtbl == nil: new QPlainTextEditVTable else: vtbl
  GC_ref(vtbl)
  vtbl[].vtbl.destructor = proc(self: pointer) {.cdecl.} =
    let vtbl = cast[ref QPlainTextEditVTable](fcQPlainTextEdit_vdata(self))
    GC_unref(vtbl)
  if not isNil(vtbl[].metaObject):
    vtbl[].vtbl.metaObject = fcQPlainTextEdit_vtable_callback_metaObject
  if not isNil(vtbl[].metacast):
    vtbl[].vtbl.metacast = fcQPlainTextEdit_vtable_callback_metacast
  if not isNil(vtbl[].metacall):
    vtbl[].vtbl.metacall = fcQPlainTextEdit_vtable_callback_metacall
  if not isNil(vtbl[].loadResource):
    vtbl[].vtbl.loadResource = fcQPlainTextEdit_vtable_callback_loadResource
  if not isNil(vtbl[].inputMethodQuery):
    vtbl[].vtbl.inputMethodQuery = fcQPlainTextEdit_vtable_callback_inputMethodQuery
  if not isNil(vtbl[].event):
    vtbl[].vtbl.event = fcQPlainTextEdit_vtable_callback_event
  if not isNil(vtbl[].timerEvent):
    vtbl[].vtbl.timerEvent = fcQPlainTextEdit_vtable_callback_timerEvent
  if not isNil(vtbl[].keyPressEvent):
    vtbl[].vtbl.keyPressEvent = fcQPlainTextEdit_vtable_callback_keyPressEvent
  if not isNil(vtbl[].keyReleaseEvent):
    vtbl[].vtbl.keyReleaseEvent = fcQPlainTextEdit_vtable_callback_keyReleaseEvent
  if not isNil(vtbl[].resizeEvent):
    vtbl[].vtbl.resizeEvent = fcQPlainTextEdit_vtable_callback_resizeEvent
  if not isNil(vtbl[].paintEvent):
    vtbl[].vtbl.paintEvent = fcQPlainTextEdit_vtable_callback_paintEvent
  if not isNil(vtbl[].mousePressEvent):
    vtbl[].vtbl.mousePressEvent = fcQPlainTextEdit_vtable_callback_mousePressEvent
  if not isNil(vtbl[].mouseMoveEvent):
    vtbl[].vtbl.mouseMoveEvent = fcQPlainTextEdit_vtable_callback_mouseMoveEvent
  if not isNil(vtbl[].mouseReleaseEvent):
    vtbl[].vtbl.mouseReleaseEvent = fcQPlainTextEdit_vtable_callback_mouseReleaseEvent
  if not isNil(vtbl[].mouseDoubleClickEvent):
    vtbl[].vtbl.mouseDoubleClickEvent = fcQPlainTextEdit_vtable_callback_mouseDoubleClickEvent
  if not isNil(vtbl[].focusNextPrevChild):
    vtbl[].vtbl.focusNextPrevChild = fcQPlainTextEdit_vtable_callback_focusNextPrevChild
  if not isNil(vtbl[].contextMenuEvent):
    vtbl[].vtbl.contextMenuEvent = fcQPlainTextEdit_vtable_callback_contextMenuEvent
  if not isNil(vtbl[].dragEnterEvent):
    vtbl[].vtbl.dragEnterEvent = fcQPlainTextEdit_vtable_callback_dragEnterEvent
  if not isNil(vtbl[].dragLeaveEvent):
    vtbl[].vtbl.dragLeaveEvent = fcQPlainTextEdit_vtable_callback_dragLeaveEvent
  if not isNil(vtbl[].dragMoveEvent):
    vtbl[].vtbl.dragMoveEvent = fcQPlainTextEdit_vtable_callback_dragMoveEvent
  if not isNil(vtbl[].dropEvent):
    vtbl[].vtbl.dropEvent = fcQPlainTextEdit_vtable_callback_dropEvent
  if not isNil(vtbl[].focusInEvent):
    vtbl[].vtbl.focusInEvent = fcQPlainTextEdit_vtable_callback_focusInEvent
  if not isNil(vtbl[].focusOutEvent):
    vtbl[].vtbl.focusOutEvent = fcQPlainTextEdit_vtable_callback_focusOutEvent
  if not isNil(vtbl[].showEvent):
    vtbl[].vtbl.showEvent = fcQPlainTextEdit_vtable_callback_showEvent
  if not isNil(vtbl[].changeEvent):
    vtbl[].vtbl.changeEvent = fcQPlainTextEdit_vtable_callback_changeEvent
  if not isNil(vtbl[].wheelEvent):
    vtbl[].vtbl.wheelEvent = fcQPlainTextEdit_vtable_callback_wheelEvent
  if not isNil(vtbl[].createMimeDataFromSelection):
    vtbl[].vtbl.createMimeDataFromSelection = fcQPlainTextEdit_vtable_callback_createMimeDataFromSelection
  if not isNil(vtbl[].canInsertFromMimeData):
    vtbl[].vtbl.canInsertFromMimeData = fcQPlainTextEdit_vtable_callback_canInsertFromMimeData
  if not isNil(vtbl[].insertFromMimeData):
    vtbl[].vtbl.insertFromMimeData = fcQPlainTextEdit_vtable_callback_insertFromMimeData
  if not isNil(vtbl[].inputMethodEvent):
    vtbl[].vtbl.inputMethodEvent = fcQPlainTextEdit_vtable_callback_inputMethodEvent
  if not isNil(vtbl[].scrollContentsBy):
    vtbl[].vtbl.scrollContentsBy = fcQPlainTextEdit_vtable_callback_scrollContentsBy
  if not isNil(vtbl[].doSetTextCursor):
    vtbl[].vtbl.doSetTextCursor = fcQPlainTextEdit_vtable_callback_doSetTextCursor
  if not isNil(vtbl[].minimumSizeHint):
    vtbl[].vtbl.minimumSizeHint = fcQPlainTextEdit_vtable_callback_minimumSizeHint
  if not isNil(vtbl[].sizeHint):
    vtbl[].vtbl.sizeHint = fcQPlainTextEdit_vtable_callback_sizeHint
  if not isNil(vtbl[].setupViewport):
    vtbl[].vtbl.setupViewport = fcQPlainTextEdit_vtable_callback_setupViewport
  if not isNil(vtbl[].eventFilter):
    vtbl[].vtbl.eventFilter = fcQPlainTextEdit_vtable_callback_eventFilter
  if not isNil(vtbl[].viewportEvent):
    vtbl[].vtbl.viewportEvent = fcQPlainTextEdit_vtable_callback_viewportEvent
  if not isNil(vtbl[].viewportSizeHint):
    vtbl[].vtbl.viewportSizeHint = fcQPlainTextEdit_vtable_callback_viewportSizeHint
  if not isNil(vtbl[].initStyleOption):
    vtbl[].vtbl.initStyleOption = fcQPlainTextEdit_vtable_callback_initStyleOption
  if not isNil(vtbl[].devType):
    vtbl[].vtbl.devType = fcQPlainTextEdit_vtable_callback_devType
  if not isNil(vtbl[].setVisible):
    vtbl[].vtbl.setVisible = fcQPlainTextEdit_vtable_callback_setVisible
  if not isNil(vtbl[].heightForWidth):
    vtbl[].vtbl.heightForWidth = fcQPlainTextEdit_vtable_callback_heightForWidth
  if not isNil(vtbl[].hasHeightForWidth):
    vtbl[].vtbl.hasHeightForWidth = fcQPlainTextEdit_vtable_callback_hasHeightForWidth
  if not isNil(vtbl[].paintEngine):
    vtbl[].vtbl.paintEngine = fcQPlainTextEdit_vtable_callback_paintEngine
  if not isNil(vtbl[].enterEvent):
    vtbl[].vtbl.enterEvent = fcQPlainTextEdit_vtable_callback_enterEvent
  if not isNil(vtbl[].leaveEvent):
    vtbl[].vtbl.leaveEvent = fcQPlainTextEdit_vtable_callback_leaveEvent
  if not isNil(vtbl[].moveEvent):
    vtbl[].vtbl.moveEvent = fcQPlainTextEdit_vtable_callback_moveEvent
  if not isNil(vtbl[].closeEvent):
    vtbl[].vtbl.closeEvent = fcQPlainTextEdit_vtable_callback_closeEvent
  if not isNil(vtbl[].tabletEvent):
    vtbl[].vtbl.tabletEvent = fcQPlainTextEdit_vtable_callback_tabletEvent
  if not isNil(vtbl[].actionEvent):
    vtbl[].vtbl.actionEvent = fcQPlainTextEdit_vtable_callback_actionEvent
  if not isNil(vtbl[].hideEvent):
    vtbl[].vtbl.hideEvent = fcQPlainTextEdit_vtable_callback_hideEvent
  if not isNil(vtbl[].nativeEvent):
    vtbl[].vtbl.nativeEvent = fcQPlainTextEdit_vtable_callback_nativeEvent
  if not isNil(vtbl[].metric):
    vtbl[].vtbl.metric = fcQPlainTextEdit_vtable_callback_metric
  if not isNil(vtbl[].initPainter):
    vtbl[].vtbl.initPainter = fcQPlainTextEdit_vtable_callback_initPainter
  if not isNil(vtbl[].redirected):
    vtbl[].vtbl.redirected = fcQPlainTextEdit_vtable_callback_redirected
  if not isNil(vtbl[].sharedPainter):
    vtbl[].vtbl.sharedPainter = fcQPlainTextEdit_vtable_callback_sharedPainter
  if not isNil(vtbl[].childEvent):
    vtbl[].vtbl.childEvent = fcQPlainTextEdit_vtable_callback_childEvent
  if not isNil(vtbl[].customEvent):
    vtbl[].vtbl.customEvent = fcQPlainTextEdit_vtable_callback_customEvent
  if not isNil(vtbl[].connectNotify):
    vtbl[].vtbl.connectNotify = fcQPlainTextEdit_vtable_callback_connectNotify
  if not isNil(vtbl[].disconnectNotify):
    vtbl[].vtbl.disconnectNotify = fcQPlainTextEdit_vtable_callback_disconnectNotify
  gen_qplaintextedit_types.QPlainTextEdit(h: fcQPlainTextEdit_new2(addr(vtbl[].vtbl), addr(vtbl[])), owned: true)

proc create*(T: type gen_qplaintextedit_types.QPlainTextEdit,
    text: openArray[char],
    vtbl: ref QPlainTextEditVTable = nil): gen_qplaintextedit_types.QPlainTextEdit =
  let vtbl = if vtbl == nil: new QPlainTextEditVTable else: vtbl
  GC_ref(vtbl)
  vtbl[].vtbl.destructor = proc(self: pointer) {.cdecl.} =
    let vtbl = cast[ref QPlainTextEditVTable](fcQPlainTextEdit_vdata(self))
    GC_unref(vtbl)
  if not isNil(vtbl[].metaObject):
    vtbl[].vtbl.metaObject = fcQPlainTextEdit_vtable_callback_metaObject
  if not isNil(vtbl[].metacast):
    vtbl[].vtbl.metacast = fcQPlainTextEdit_vtable_callback_metacast
  if not isNil(vtbl[].metacall):
    vtbl[].vtbl.metacall = fcQPlainTextEdit_vtable_callback_metacall
  if not isNil(vtbl[].loadResource):
    vtbl[].vtbl.loadResource = fcQPlainTextEdit_vtable_callback_loadResource
  if not isNil(vtbl[].inputMethodQuery):
    vtbl[].vtbl.inputMethodQuery = fcQPlainTextEdit_vtable_callback_inputMethodQuery
  if not isNil(vtbl[].event):
    vtbl[].vtbl.event = fcQPlainTextEdit_vtable_callback_event
  if not isNil(vtbl[].timerEvent):
    vtbl[].vtbl.timerEvent = fcQPlainTextEdit_vtable_callback_timerEvent
  if not isNil(vtbl[].keyPressEvent):
    vtbl[].vtbl.keyPressEvent = fcQPlainTextEdit_vtable_callback_keyPressEvent
  if not isNil(vtbl[].keyReleaseEvent):
    vtbl[].vtbl.keyReleaseEvent = fcQPlainTextEdit_vtable_callback_keyReleaseEvent
  if not isNil(vtbl[].resizeEvent):
    vtbl[].vtbl.resizeEvent = fcQPlainTextEdit_vtable_callback_resizeEvent
  if not isNil(vtbl[].paintEvent):
    vtbl[].vtbl.paintEvent = fcQPlainTextEdit_vtable_callback_paintEvent
  if not isNil(vtbl[].mousePressEvent):
    vtbl[].vtbl.mousePressEvent = fcQPlainTextEdit_vtable_callback_mousePressEvent
  if not isNil(vtbl[].mouseMoveEvent):
    vtbl[].vtbl.mouseMoveEvent = fcQPlainTextEdit_vtable_callback_mouseMoveEvent
  if not isNil(vtbl[].mouseReleaseEvent):
    vtbl[].vtbl.mouseReleaseEvent = fcQPlainTextEdit_vtable_callback_mouseReleaseEvent
  if not isNil(vtbl[].mouseDoubleClickEvent):
    vtbl[].vtbl.mouseDoubleClickEvent = fcQPlainTextEdit_vtable_callback_mouseDoubleClickEvent
  if not isNil(vtbl[].focusNextPrevChild):
    vtbl[].vtbl.focusNextPrevChild = fcQPlainTextEdit_vtable_callback_focusNextPrevChild
  if not isNil(vtbl[].contextMenuEvent):
    vtbl[].vtbl.contextMenuEvent = fcQPlainTextEdit_vtable_callback_contextMenuEvent
  if not isNil(vtbl[].dragEnterEvent):
    vtbl[].vtbl.dragEnterEvent = fcQPlainTextEdit_vtable_callback_dragEnterEvent
  if not isNil(vtbl[].dragLeaveEvent):
    vtbl[].vtbl.dragLeaveEvent = fcQPlainTextEdit_vtable_callback_dragLeaveEvent
  if not isNil(vtbl[].dragMoveEvent):
    vtbl[].vtbl.dragMoveEvent = fcQPlainTextEdit_vtable_callback_dragMoveEvent
  if not isNil(vtbl[].dropEvent):
    vtbl[].vtbl.dropEvent = fcQPlainTextEdit_vtable_callback_dropEvent
  if not isNil(vtbl[].focusInEvent):
    vtbl[].vtbl.focusInEvent = fcQPlainTextEdit_vtable_callback_focusInEvent
  if not isNil(vtbl[].focusOutEvent):
    vtbl[].vtbl.focusOutEvent = fcQPlainTextEdit_vtable_callback_focusOutEvent
  if not isNil(vtbl[].showEvent):
    vtbl[].vtbl.showEvent = fcQPlainTextEdit_vtable_callback_showEvent
  if not isNil(vtbl[].changeEvent):
    vtbl[].vtbl.changeEvent = fcQPlainTextEdit_vtable_callback_changeEvent
  if not isNil(vtbl[].wheelEvent):
    vtbl[].vtbl.wheelEvent = fcQPlainTextEdit_vtable_callback_wheelEvent
  if not isNil(vtbl[].createMimeDataFromSelection):
    vtbl[].vtbl.createMimeDataFromSelection = fcQPlainTextEdit_vtable_callback_createMimeDataFromSelection
  if not isNil(vtbl[].canInsertFromMimeData):
    vtbl[].vtbl.canInsertFromMimeData = fcQPlainTextEdit_vtable_callback_canInsertFromMimeData
  if not isNil(vtbl[].insertFromMimeData):
    vtbl[].vtbl.insertFromMimeData = fcQPlainTextEdit_vtable_callback_insertFromMimeData
  if not isNil(vtbl[].inputMethodEvent):
    vtbl[].vtbl.inputMethodEvent = fcQPlainTextEdit_vtable_callback_inputMethodEvent
  if not isNil(vtbl[].scrollContentsBy):
    vtbl[].vtbl.scrollContentsBy = fcQPlainTextEdit_vtable_callback_scrollContentsBy
  if not isNil(vtbl[].doSetTextCursor):
    vtbl[].vtbl.doSetTextCursor = fcQPlainTextEdit_vtable_callback_doSetTextCursor
  if not isNil(vtbl[].minimumSizeHint):
    vtbl[].vtbl.minimumSizeHint = fcQPlainTextEdit_vtable_callback_minimumSizeHint
  if not isNil(vtbl[].sizeHint):
    vtbl[].vtbl.sizeHint = fcQPlainTextEdit_vtable_callback_sizeHint
  if not isNil(vtbl[].setupViewport):
    vtbl[].vtbl.setupViewport = fcQPlainTextEdit_vtable_callback_setupViewport
  if not isNil(vtbl[].eventFilter):
    vtbl[].vtbl.eventFilter = fcQPlainTextEdit_vtable_callback_eventFilter
  if not isNil(vtbl[].viewportEvent):
    vtbl[].vtbl.viewportEvent = fcQPlainTextEdit_vtable_callback_viewportEvent
  if not isNil(vtbl[].viewportSizeHint):
    vtbl[].vtbl.viewportSizeHint = fcQPlainTextEdit_vtable_callback_viewportSizeHint
  if not isNil(vtbl[].initStyleOption):
    vtbl[].vtbl.initStyleOption = fcQPlainTextEdit_vtable_callback_initStyleOption
  if not isNil(vtbl[].devType):
    vtbl[].vtbl.devType = fcQPlainTextEdit_vtable_callback_devType
  if not isNil(vtbl[].setVisible):
    vtbl[].vtbl.setVisible = fcQPlainTextEdit_vtable_callback_setVisible
  if not isNil(vtbl[].heightForWidth):
    vtbl[].vtbl.heightForWidth = fcQPlainTextEdit_vtable_callback_heightForWidth
  if not isNil(vtbl[].hasHeightForWidth):
    vtbl[].vtbl.hasHeightForWidth = fcQPlainTextEdit_vtable_callback_hasHeightForWidth
  if not isNil(vtbl[].paintEngine):
    vtbl[].vtbl.paintEngine = fcQPlainTextEdit_vtable_callback_paintEngine
  if not isNil(vtbl[].enterEvent):
    vtbl[].vtbl.enterEvent = fcQPlainTextEdit_vtable_callback_enterEvent
  if not isNil(vtbl[].leaveEvent):
    vtbl[].vtbl.leaveEvent = fcQPlainTextEdit_vtable_callback_leaveEvent
  if not isNil(vtbl[].moveEvent):
    vtbl[].vtbl.moveEvent = fcQPlainTextEdit_vtable_callback_moveEvent
  if not isNil(vtbl[].closeEvent):
    vtbl[].vtbl.closeEvent = fcQPlainTextEdit_vtable_callback_closeEvent
  if not isNil(vtbl[].tabletEvent):
    vtbl[].vtbl.tabletEvent = fcQPlainTextEdit_vtable_callback_tabletEvent
  if not isNil(vtbl[].actionEvent):
    vtbl[].vtbl.actionEvent = fcQPlainTextEdit_vtable_callback_actionEvent
  if not isNil(vtbl[].hideEvent):
    vtbl[].vtbl.hideEvent = fcQPlainTextEdit_vtable_callback_hideEvent
  if not isNil(vtbl[].nativeEvent):
    vtbl[].vtbl.nativeEvent = fcQPlainTextEdit_vtable_callback_nativeEvent
  if not isNil(vtbl[].metric):
    vtbl[].vtbl.metric = fcQPlainTextEdit_vtable_callback_metric
  if not isNil(vtbl[].initPainter):
    vtbl[].vtbl.initPainter = fcQPlainTextEdit_vtable_callback_initPainter
  if not isNil(vtbl[].redirected):
    vtbl[].vtbl.redirected = fcQPlainTextEdit_vtable_callback_redirected
  if not isNil(vtbl[].sharedPainter):
    vtbl[].vtbl.sharedPainter = fcQPlainTextEdit_vtable_callback_sharedPainter
  if not isNil(vtbl[].childEvent):
    vtbl[].vtbl.childEvent = fcQPlainTextEdit_vtable_callback_childEvent
  if not isNil(vtbl[].customEvent):
    vtbl[].vtbl.customEvent = fcQPlainTextEdit_vtable_callback_customEvent
  if not isNil(vtbl[].connectNotify):
    vtbl[].vtbl.connectNotify = fcQPlainTextEdit_vtable_callback_connectNotify
  if not isNil(vtbl[].disconnectNotify):
    vtbl[].vtbl.disconnectNotify = fcQPlainTextEdit_vtable_callback_disconnectNotify
  gen_qplaintextedit_types.QPlainTextEdit(h: fcQPlainTextEdit_new3(addr(vtbl[].vtbl), addr(vtbl[]), struct_miqt_string(data: if len(text) > 0: addr text[0] else: nil, len: csize_t(len(text)))), owned: true)

proc create*(T: type gen_qplaintextedit_types.QPlainTextEdit,
    text: openArray[char], parent: gen_qwidget_types.QWidget,
    vtbl: ref QPlainTextEditVTable = nil): gen_qplaintextedit_types.QPlainTextEdit =
  let vtbl = if vtbl == nil: new QPlainTextEditVTable else: vtbl
  GC_ref(vtbl)
  vtbl[].vtbl.destructor = proc(self: pointer) {.cdecl.} =
    let vtbl = cast[ref QPlainTextEditVTable](fcQPlainTextEdit_vdata(self))
    GC_unref(vtbl)
  if not isNil(vtbl[].metaObject):
    vtbl[].vtbl.metaObject = fcQPlainTextEdit_vtable_callback_metaObject
  if not isNil(vtbl[].metacast):
    vtbl[].vtbl.metacast = fcQPlainTextEdit_vtable_callback_metacast
  if not isNil(vtbl[].metacall):
    vtbl[].vtbl.metacall = fcQPlainTextEdit_vtable_callback_metacall
  if not isNil(vtbl[].loadResource):
    vtbl[].vtbl.loadResource = fcQPlainTextEdit_vtable_callback_loadResource
  if not isNil(vtbl[].inputMethodQuery):
    vtbl[].vtbl.inputMethodQuery = fcQPlainTextEdit_vtable_callback_inputMethodQuery
  if not isNil(vtbl[].event):
    vtbl[].vtbl.event = fcQPlainTextEdit_vtable_callback_event
  if not isNil(vtbl[].timerEvent):
    vtbl[].vtbl.timerEvent = fcQPlainTextEdit_vtable_callback_timerEvent
  if not isNil(vtbl[].keyPressEvent):
    vtbl[].vtbl.keyPressEvent = fcQPlainTextEdit_vtable_callback_keyPressEvent
  if not isNil(vtbl[].keyReleaseEvent):
    vtbl[].vtbl.keyReleaseEvent = fcQPlainTextEdit_vtable_callback_keyReleaseEvent
  if not isNil(vtbl[].resizeEvent):
    vtbl[].vtbl.resizeEvent = fcQPlainTextEdit_vtable_callback_resizeEvent
  if not isNil(vtbl[].paintEvent):
    vtbl[].vtbl.paintEvent = fcQPlainTextEdit_vtable_callback_paintEvent
  if not isNil(vtbl[].mousePressEvent):
    vtbl[].vtbl.mousePressEvent = fcQPlainTextEdit_vtable_callback_mousePressEvent
  if not isNil(vtbl[].mouseMoveEvent):
    vtbl[].vtbl.mouseMoveEvent = fcQPlainTextEdit_vtable_callback_mouseMoveEvent
  if not isNil(vtbl[].mouseReleaseEvent):
    vtbl[].vtbl.mouseReleaseEvent = fcQPlainTextEdit_vtable_callback_mouseReleaseEvent
  if not isNil(vtbl[].mouseDoubleClickEvent):
    vtbl[].vtbl.mouseDoubleClickEvent = fcQPlainTextEdit_vtable_callback_mouseDoubleClickEvent
  if not isNil(vtbl[].focusNextPrevChild):
    vtbl[].vtbl.focusNextPrevChild = fcQPlainTextEdit_vtable_callback_focusNextPrevChild
  if not isNil(vtbl[].contextMenuEvent):
    vtbl[].vtbl.contextMenuEvent = fcQPlainTextEdit_vtable_callback_contextMenuEvent
  if not isNil(vtbl[].dragEnterEvent):
    vtbl[].vtbl.dragEnterEvent = fcQPlainTextEdit_vtable_callback_dragEnterEvent
  if not isNil(vtbl[].dragLeaveEvent):
    vtbl[].vtbl.dragLeaveEvent = fcQPlainTextEdit_vtable_callback_dragLeaveEvent
  if not isNil(vtbl[].dragMoveEvent):
    vtbl[].vtbl.dragMoveEvent = fcQPlainTextEdit_vtable_callback_dragMoveEvent
  if not isNil(vtbl[].dropEvent):
    vtbl[].vtbl.dropEvent = fcQPlainTextEdit_vtable_callback_dropEvent
  if not isNil(vtbl[].focusInEvent):
    vtbl[].vtbl.focusInEvent = fcQPlainTextEdit_vtable_callback_focusInEvent
  if not isNil(vtbl[].focusOutEvent):
    vtbl[].vtbl.focusOutEvent = fcQPlainTextEdit_vtable_callback_focusOutEvent
  if not isNil(vtbl[].showEvent):
    vtbl[].vtbl.showEvent = fcQPlainTextEdit_vtable_callback_showEvent
  if not isNil(vtbl[].changeEvent):
    vtbl[].vtbl.changeEvent = fcQPlainTextEdit_vtable_callback_changeEvent
  if not isNil(vtbl[].wheelEvent):
    vtbl[].vtbl.wheelEvent = fcQPlainTextEdit_vtable_callback_wheelEvent
  if not isNil(vtbl[].createMimeDataFromSelection):
    vtbl[].vtbl.createMimeDataFromSelection = fcQPlainTextEdit_vtable_callback_createMimeDataFromSelection
  if not isNil(vtbl[].canInsertFromMimeData):
    vtbl[].vtbl.canInsertFromMimeData = fcQPlainTextEdit_vtable_callback_canInsertFromMimeData
  if not isNil(vtbl[].insertFromMimeData):
    vtbl[].vtbl.insertFromMimeData = fcQPlainTextEdit_vtable_callback_insertFromMimeData
  if not isNil(vtbl[].inputMethodEvent):
    vtbl[].vtbl.inputMethodEvent = fcQPlainTextEdit_vtable_callback_inputMethodEvent
  if not isNil(vtbl[].scrollContentsBy):
    vtbl[].vtbl.scrollContentsBy = fcQPlainTextEdit_vtable_callback_scrollContentsBy
  if not isNil(vtbl[].doSetTextCursor):
    vtbl[].vtbl.doSetTextCursor = fcQPlainTextEdit_vtable_callback_doSetTextCursor
  if not isNil(vtbl[].minimumSizeHint):
    vtbl[].vtbl.minimumSizeHint = fcQPlainTextEdit_vtable_callback_minimumSizeHint
  if not isNil(vtbl[].sizeHint):
    vtbl[].vtbl.sizeHint = fcQPlainTextEdit_vtable_callback_sizeHint
  if not isNil(vtbl[].setupViewport):
    vtbl[].vtbl.setupViewport = fcQPlainTextEdit_vtable_callback_setupViewport
  if not isNil(vtbl[].eventFilter):
    vtbl[].vtbl.eventFilter = fcQPlainTextEdit_vtable_callback_eventFilter
  if not isNil(vtbl[].viewportEvent):
    vtbl[].vtbl.viewportEvent = fcQPlainTextEdit_vtable_callback_viewportEvent
  if not isNil(vtbl[].viewportSizeHint):
    vtbl[].vtbl.viewportSizeHint = fcQPlainTextEdit_vtable_callback_viewportSizeHint
  if not isNil(vtbl[].initStyleOption):
    vtbl[].vtbl.initStyleOption = fcQPlainTextEdit_vtable_callback_initStyleOption
  if not isNil(vtbl[].devType):
    vtbl[].vtbl.devType = fcQPlainTextEdit_vtable_callback_devType
  if not isNil(vtbl[].setVisible):
    vtbl[].vtbl.setVisible = fcQPlainTextEdit_vtable_callback_setVisible
  if not isNil(vtbl[].heightForWidth):
    vtbl[].vtbl.heightForWidth = fcQPlainTextEdit_vtable_callback_heightForWidth
  if not isNil(vtbl[].hasHeightForWidth):
    vtbl[].vtbl.hasHeightForWidth = fcQPlainTextEdit_vtable_callback_hasHeightForWidth
  if not isNil(vtbl[].paintEngine):
    vtbl[].vtbl.paintEngine = fcQPlainTextEdit_vtable_callback_paintEngine
  if not isNil(vtbl[].enterEvent):
    vtbl[].vtbl.enterEvent = fcQPlainTextEdit_vtable_callback_enterEvent
  if not isNil(vtbl[].leaveEvent):
    vtbl[].vtbl.leaveEvent = fcQPlainTextEdit_vtable_callback_leaveEvent
  if not isNil(vtbl[].moveEvent):
    vtbl[].vtbl.moveEvent = fcQPlainTextEdit_vtable_callback_moveEvent
  if not isNil(vtbl[].closeEvent):
    vtbl[].vtbl.closeEvent = fcQPlainTextEdit_vtable_callback_closeEvent
  if not isNil(vtbl[].tabletEvent):
    vtbl[].vtbl.tabletEvent = fcQPlainTextEdit_vtable_callback_tabletEvent
  if not isNil(vtbl[].actionEvent):
    vtbl[].vtbl.actionEvent = fcQPlainTextEdit_vtable_callback_actionEvent
  if not isNil(vtbl[].hideEvent):
    vtbl[].vtbl.hideEvent = fcQPlainTextEdit_vtable_callback_hideEvent
  if not isNil(vtbl[].nativeEvent):
    vtbl[].vtbl.nativeEvent = fcQPlainTextEdit_vtable_callback_nativeEvent
  if not isNil(vtbl[].metric):
    vtbl[].vtbl.metric = fcQPlainTextEdit_vtable_callback_metric
  if not isNil(vtbl[].initPainter):
    vtbl[].vtbl.initPainter = fcQPlainTextEdit_vtable_callback_initPainter
  if not isNil(vtbl[].redirected):
    vtbl[].vtbl.redirected = fcQPlainTextEdit_vtable_callback_redirected
  if not isNil(vtbl[].sharedPainter):
    vtbl[].vtbl.sharedPainter = fcQPlainTextEdit_vtable_callback_sharedPainter
  if not isNil(vtbl[].childEvent):
    vtbl[].vtbl.childEvent = fcQPlainTextEdit_vtable_callback_childEvent
  if not isNil(vtbl[].customEvent):
    vtbl[].vtbl.customEvent = fcQPlainTextEdit_vtable_callback_customEvent
  if not isNil(vtbl[].connectNotify):
    vtbl[].vtbl.connectNotify = fcQPlainTextEdit_vtable_callback_connectNotify
  if not isNil(vtbl[].disconnectNotify):
    vtbl[].vtbl.disconnectNotify = fcQPlainTextEdit_vtable_callback_disconnectNotify
  gen_qplaintextedit_types.QPlainTextEdit(h: fcQPlainTextEdit_new4(addr(vtbl[].vtbl), addr(vtbl[]), struct_miqt_string(data: if len(text) > 0: addr text[0] else: nil, len: csize_t(len(text))), parent.h), owned: true)

const cQPlainTextEdit_mvtbl = cQPlainTextEditVTable(
  destructor: proc(self: pointer) {.cdecl.} =
    let inst = cast[ptr typeof(VirtualQPlainTextEdit()[])](self.fcQPlainTextEdit_vtbl())
    inst[].h = nil
    inst[].owned = false,

  metaObject: fcQPlainTextEdit_method_callback_metaObject,
  metacast: fcQPlainTextEdit_method_callback_metacast,
  metacall: fcQPlainTextEdit_method_callback_metacall,
  loadResource: fcQPlainTextEdit_method_callback_loadResource,
  inputMethodQuery: fcQPlainTextEdit_method_callback_inputMethodQuery,
  event: fcQPlainTextEdit_method_callback_event,
  timerEvent: fcQPlainTextEdit_method_callback_timerEvent,
  keyPressEvent: fcQPlainTextEdit_method_callback_keyPressEvent,
  keyReleaseEvent: fcQPlainTextEdit_method_callback_keyReleaseEvent,
  resizeEvent: fcQPlainTextEdit_method_callback_resizeEvent,
  paintEvent: fcQPlainTextEdit_method_callback_paintEvent,
  mousePressEvent: fcQPlainTextEdit_method_callback_mousePressEvent,
  mouseMoveEvent: fcQPlainTextEdit_method_callback_mouseMoveEvent,
  mouseReleaseEvent: fcQPlainTextEdit_method_callback_mouseReleaseEvent,
  mouseDoubleClickEvent: fcQPlainTextEdit_method_callback_mouseDoubleClickEvent,
  focusNextPrevChild: fcQPlainTextEdit_method_callback_focusNextPrevChild,
  contextMenuEvent: fcQPlainTextEdit_method_callback_contextMenuEvent,
  dragEnterEvent: fcQPlainTextEdit_method_callback_dragEnterEvent,
  dragLeaveEvent: fcQPlainTextEdit_method_callback_dragLeaveEvent,
  dragMoveEvent: fcQPlainTextEdit_method_callback_dragMoveEvent,
  dropEvent: fcQPlainTextEdit_method_callback_dropEvent,
  focusInEvent: fcQPlainTextEdit_method_callback_focusInEvent,
  focusOutEvent: fcQPlainTextEdit_method_callback_focusOutEvent,
  showEvent: fcQPlainTextEdit_method_callback_showEvent,
  changeEvent: fcQPlainTextEdit_method_callback_changeEvent,
  wheelEvent: fcQPlainTextEdit_method_callback_wheelEvent,
  createMimeDataFromSelection: fcQPlainTextEdit_method_callback_createMimeDataFromSelection,
  canInsertFromMimeData: fcQPlainTextEdit_method_callback_canInsertFromMimeData,
  insertFromMimeData: fcQPlainTextEdit_method_callback_insertFromMimeData,
  inputMethodEvent: fcQPlainTextEdit_method_callback_inputMethodEvent,
  scrollContentsBy: fcQPlainTextEdit_method_callback_scrollContentsBy,
  doSetTextCursor: fcQPlainTextEdit_method_callback_doSetTextCursor,
  minimumSizeHint: fcQPlainTextEdit_method_callback_minimumSizeHint,
  sizeHint: fcQPlainTextEdit_method_callback_sizeHint,
  setupViewport: fcQPlainTextEdit_method_callback_setupViewport,
  eventFilter: fcQPlainTextEdit_method_callback_eventFilter,
  viewportEvent: fcQPlainTextEdit_method_callback_viewportEvent,
  viewportSizeHint: fcQPlainTextEdit_method_callback_viewportSizeHint,
  initStyleOption: fcQPlainTextEdit_method_callback_initStyleOption,
  devType: fcQPlainTextEdit_method_callback_devType,
  setVisible: fcQPlainTextEdit_method_callback_setVisible,
  heightForWidth: fcQPlainTextEdit_method_callback_heightForWidth,
  hasHeightForWidth: fcQPlainTextEdit_method_callback_hasHeightForWidth,
  paintEngine: fcQPlainTextEdit_method_callback_paintEngine,
  enterEvent: fcQPlainTextEdit_method_callback_enterEvent,
  leaveEvent: fcQPlainTextEdit_method_callback_leaveEvent,
  moveEvent: fcQPlainTextEdit_method_callback_moveEvent,
  closeEvent: fcQPlainTextEdit_method_callback_closeEvent,
  tabletEvent: fcQPlainTextEdit_method_callback_tabletEvent,
  actionEvent: fcQPlainTextEdit_method_callback_actionEvent,
  hideEvent: fcQPlainTextEdit_method_callback_hideEvent,
  nativeEvent: fcQPlainTextEdit_method_callback_nativeEvent,
  metric: fcQPlainTextEdit_method_callback_metric,
  initPainter: fcQPlainTextEdit_method_callback_initPainter,
  redirected: fcQPlainTextEdit_method_callback_redirected,
  sharedPainter: fcQPlainTextEdit_method_callback_sharedPainter,
  childEvent: fcQPlainTextEdit_method_callback_childEvent,
  customEvent: fcQPlainTextEdit_method_callback_customEvent,
  connectNotify: fcQPlainTextEdit_method_callback_connectNotify,
  disconnectNotify: fcQPlainTextEdit_method_callback_disconnectNotify,
)
proc create*(T: type gen_qplaintextedit_types.QPlainTextEdit,
    parent: gen_qwidget_types.QWidget,
    inst: VirtualQPlainTextEdit) =
  if inst[].h != nil: delete(move(inst[]))
  inst[].h = fcQPlainTextEdit_new(addr(cQPlainTextEdit_mvtbl), addr(inst[]), parent.h)
  inst[].owned = true

proc create*(T: type gen_qplaintextedit_types.QPlainTextEdit,
    inst: VirtualQPlainTextEdit) =
  if inst[].h != nil: delete(move(inst[]))
  inst[].h = fcQPlainTextEdit_new2(addr(cQPlainTextEdit_mvtbl), addr(inst[]))
  inst[].owned = true

proc create*(T: type gen_qplaintextedit_types.QPlainTextEdit,
    text: openArray[char],
    inst: VirtualQPlainTextEdit) =
  if inst[].h != nil: delete(move(inst[]))
  inst[].h = fcQPlainTextEdit_new3(addr(cQPlainTextEdit_mvtbl), addr(inst[]), struct_miqt_string(data: if len(text) > 0: addr text[0] else: nil, len: csize_t(len(text))))
  inst[].owned = true

proc create*(T: type gen_qplaintextedit_types.QPlainTextEdit,
    text: openArray[char], parent: gen_qwidget_types.QWidget,
    inst: VirtualQPlainTextEdit) =
  if inst[].h != nil: delete(move(inst[]))
  inst[].h = fcQPlainTextEdit_new4(addr(cQPlainTextEdit_mvtbl), addr(inst[]), struct_miqt_string(data: if len(text) > 0: addr text[0] else: nil, len: csize_t(len(text))), parent.h)
  inst[].owned = true

proc staticMetaObject*(_: type gen_qplaintextedit_types.QPlainTextEdit): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQPlainTextEdit_staticMetaObject())
proc metaObject*(self: gen_qplaintextedit_types.QPlainTextDocumentLayout): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQPlainTextDocumentLayout_metaObject(self.h), owned: false)

proc metacast*(self: gen_qplaintextedit_types.QPlainTextDocumentLayout, param1: cstring): pointer =
  fcQPlainTextDocumentLayout_metacast(self.h, param1)

proc metacall*(self: gen_qplaintextedit_types.QPlainTextDocumentLayout, param1: cint, param2: cint, param3: pointer): cint =
  fcQPlainTextDocumentLayout_metacall(self.h, cint(param1), param2, param3)

proc tr*(_: type gen_qplaintextedit_types.QPlainTextDocumentLayout, s: cstring): string =
  let v_ms = fcQPlainTextDocumentLayout_tr(s)
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

proc draw*(self: gen_qplaintextedit_types.QPlainTextDocumentLayout, param1: gen_qpainter_types.QPainter, param2: gen_qabstracttextdocumentlayout_types.QAbstractTextDocumentLayoutPaintContext): void =
  fcQPlainTextDocumentLayout_draw(self.h, param1.h, param2.h)

proc hitTest*(self: gen_qplaintextedit_types.QPlainTextDocumentLayout, param1: gen_qpoint_types.QPointF, param2: cint): cint =
  fcQPlainTextDocumentLayout_hitTest(self.h, param1.h, cint(param2))

proc pageCount*(self: gen_qplaintextedit_types.QPlainTextDocumentLayout): cint =
  fcQPlainTextDocumentLayout_pageCount(self.h)

proc documentSize*(self: gen_qplaintextedit_types.QPlainTextDocumentLayout): gen_qsize_types.QSizeF =
  gen_qsize_types.QSizeF(h: fcQPlainTextDocumentLayout_documentSize(self.h), owned: true)

proc frameBoundingRect*(self: gen_qplaintextedit_types.QPlainTextDocumentLayout, param1: gen_qtextobject_types.QTextFrame): gen_qrect_types.QRectF =
  gen_qrect_types.QRectF(h: fcQPlainTextDocumentLayout_frameBoundingRect(self.h, param1.h), owned: true)

proc blockBoundingRect*(self: gen_qplaintextedit_types.QPlainTextDocumentLayout, blockVal: gen_qtextobject_types.QTextBlock): gen_qrect_types.QRectF =
  gen_qrect_types.QRectF(h: fcQPlainTextDocumentLayout_blockBoundingRect(self.h, blockVal.h), owned: true)

proc ensureBlockLayout*(self: gen_qplaintextedit_types.QPlainTextDocumentLayout, blockVal: gen_qtextobject_types.QTextBlock): void =
  fcQPlainTextDocumentLayout_ensureBlockLayout(self.h, blockVal.h)

proc setCursorWidth*(self: gen_qplaintextedit_types.QPlainTextDocumentLayout, width: cint): void =
  fcQPlainTextDocumentLayout_setCursorWidth(self.h, width)

proc cursorWidth*(self: gen_qplaintextedit_types.QPlainTextDocumentLayout): cint =
  fcQPlainTextDocumentLayout_cursorWidth(self.h)

proc requestUpdate*(self: gen_qplaintextedit_types.QPlainTextDocumentLayout): void =
  fcQPlainTextDocumentLayout_requestUpdate(self.h)

proc tr*(_: type gen_qplaintextedit_types.QPlainTextDocumentLayout, s: cstring, c: cstring): string =
  let v_ms = fcQPlainTextDocumentLayout_tr2(s, c)
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

proc tr*(_: type gen_qplaintextedit_types.QPlainTextDocumentLayout, s: cstring, c: cstring, n: cint): string =
  let v_ms = fcQPlainTextDocumentLayout_tr3(s, c, n)
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

type QPlainTextDocumentLayoutmetaObjectProc* = proc(self: QPlainTextDocumentLayout): gen_qobjectdefs_types.QMetaObject {.raises: [], gcsafe.}
type QPlainTextDocumentLayoutmetacastProc* = proc(self: QPlainTextDocumentLayout, param1: cstring): pointer {.raises: [], gcsafe.}
type QPlainTextDocumentLayoutmetacallProc* = proc(self: QPlainTextDocumentLayout, param1: cint, param2: cint, param3: pointer): cint {.raises: [], gcsafe.}
type QPlainTextDocumentLayoutdrawProc* = proc(self: QPlainTextDocumentLayout, param1: gen_qpainter_types.QPainter, param2: gen_qabstracttextdocumentlayout_types.QAbstractTextDocumentLayoutPaintContext): void {.raises: [], gcsafe.}
type QPlainTextDocumentLayouthitTestProc* = proc(self: QPlainTextDocumentLayout, param1: gen_qpoint_types.QPointF, param2: cint): cint {.raises: [], gcsafe.}
type QPlainTextDocumentLayoutpageCountProc* = proc(self: QPlainTextDocumentLayout): cint {.raises: [], gcsafe.}
type QPlainTextDocumentLayoutdocumentSizeProc* = proc(self: QPlainTextDocumentLayout): gen_qsize_types.QSizeF {.raises: [], gcsafe.}
type QPlainTextDocumentLayoutframeBoundingRectProc* = proc(self: QPlainTextDocumentLayout, param1: gen_qtextobject_types.QTextFrame): gen_qrect_types.QRectF {.raises: [], gcsafe.}
type QPlainTextDocumentLayoutblockBoundingRectProc* = proc(self: QPlainTextDocumentLayout, blockVal: gen_qtextobject_types.QTextBlock): gen_qrect_types.QRectF {.raises: [], gcsafe.}
type QPlainTextDocumentLayoutdocumentChangedProc* = proc(self: QPlainTextDocumentLayout, fromVal: cint, param2: cint, charsAdded: cint): void {.raises: [], gcsafe.}
type QPlainTextDocumentLayoutresizeInlineObjectProc* = proc(self: QPlainTextDocumentLayout, item: gen_qtextlayout_types.QTextInlineObject, posInDocument: cint, format: gen_qtextformat_types.QTextFormat): void {.raises: [], gcsafe.}
type QPlainTextDocumentLayoutpositionInlineObjectProc* = proc(self: QPlainTextDocumentLayout, item: gen_qtextlayout_types.QTextInlineObject, posInDocument: cint, format: gen_qtextformat_types.QTextFormat): void {.raises: [], gcsafe.}
type QPlainTextDocumentLayoutdrawInlineObjectProc* = proc(self: QPlainTextDocumentLayout, painter: gen_qpainter_types.QPainter, rect: gen_qrect_types.QRectF, objectVal: gen_qtextlayout_types.QTextInlineObject, posInDocument: cint, format: gen_qtextformat_types.QTextFormat): void {.raises: [], gcsafe.}
type QPlainTextDocumentLayouteventProc* = proc(self: QPlainTextDocumentLayout, event: gen_qcoreevent_types.QEvent): bool {.raises: [], gcsafe.}
type QPlainTextDocumentLayouteventFilterProc* = proc(self: QPlainTextDocumentLayout, watched: gen_qobject_types.QObject, event: gen_qcoreevent_types.QEvent): bool {.raises: [], gcsafe.}
type QPlainTextDocumentLayouttimerEventProc* = proc(self: QPlainTextDocumentLayout, event: gen_qcoreevent_types.QTimerEvent): void {.raises: [], gcsafe.}
type QPlainTextDocumentLayoutchildEventProc* = proc(self: QPlainTextDocumentLayout, event: gen_qcoreevent_types.QChildEvent): void {.raises: [], gcsafe.}
type QPlainTextDocumentLayoutcustomEventProc* = proc(self: QPlainTextDocumentLayout, event: gen_qcoreevent_types.QEvent): void {.raises: [], gcsafe.}
type QPlainTextDocumentLayoutconnectNotifyProc* = proc(self: QPlainTextDocumentLayout, signal: gen_qmetaobject_types.QMetaMethod): void {.raises: [], gcsafe.}
type QPlainTextDocumentLayoutdisconnectNotifyProc* = proc(self: QPlainTextDocumentLayout, signal: gen_qmetaobject_types.QMetaMethod): void {.raises: [], gcsafe.}

type QPlainTextDocumentLayoutVTable* {.inheritable, pure.} = object
  vtbl: cQPlainTextDocumentLayoutVTable
  metaObject*: QPlainTextDocumentLayoutmetaObjectProc
  metacast*: QPlainTextDocumentLayoutmetacastProc
  metacall*: QPlainTextDocumentLayoutmetacallProc
  draw*: QPlainTextDocumentLayoutdrawProc
  hitTest*: QPlainTextDocumentLayouthitTestProc
  pageCount*: QPlainTextDocumentLayoutpageCountProc
  documentSize*: QPlainTextDocumentLayoutdocumentSizeProc
  frameBoundingRect*: QPlainTextDocumentLayoutframeBoundingRectProc
  blockBoundingRect*: QPlainTextDocumentLayoutblockBoundingRectProc
  documentChanged*: QPlainTextDocumentLayoutdocumentChangedProc
  resizeInlineObject*: QPlainTextDocumentLayoutresizeInlineObjectProc
  positionInlineObject*: QPlainTextDocumentLayoutpositionInlineObjectProc
  drawInlineObject*: QPlainTextDocumentLayoutdrawInlineObjectProc
  event*: QPlainTextDocumentLayouteventProc
  eventFilter*: QPlainTextDocumentLayouteventFilterProc
  timerEvent*: QPlainTextDocumentLayouttimerEventProc
  childEvent*: QPlainTextDocumentLayoutchildEventProc
  customEvent*: QPlainTextDocumentLayoutcustomEventProc
  connectNotify*: QPlainTextDocumentLayoutconnectNotifyProc
  disconnectNotify*: QPlainTextDocumentLayoutdisconnectNotifyProc

proc QPlainTextDocumentLayoutmetaObject*(self: gen_qplaintextedit_types.QPlainTextDocumentLayout): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQPlainTextDocumentLayout_virtualbase_metaObject(self.h), owned: false)

proc QPlainTextDocumentLayoutmetacast*(self: gen_qplaintextedit_types.QPlainTextDocumentLayout, param1: cstring): pointer =
  fcQPlainTextDocumentLayout_virtualbase_metacast(self.h, param1)

proc QPlainTextDocumentLayoutmetacall*(self: gen_qplaintextedit_types.QPlainTextDocumentLayout, param1: cint, param2: cint, param3: pointer): cint =
  fcQPlainTextDocumentLayout_virtualbase_metacall(self.h, cint(param1), param2, param3)

proc QPlainTextDocumentLayoutdraw*(self: gen_qplaintextedit_types.QPlainTextDocumentLayout, param1: gen_qpainter_types.QPainter, param2: gen_qabstracttextdocumentlayout_types.QAbstractTextDocumentLayoutPaintContext): void =
  fcQPlainTextDocumentLayout_virtualbase_draw(self.h, param1.h, param2.h)

proc QPlainTextDocumentLayouthitTest*(self: gen_qplaintextedit_types.QPlainTextDocumentLayout, param1: gen_qpoint_types.QPointF, param2: cint): cint =
  fcQPlainTextDocumentLayout_virtualbase_hitTest(self.h, param1.h, cint(param2))

proc QPlainTextDocumentLayoutpageCount*(self: gen_qplaintextedit_types.QPlainTextDocumentLayout): cint =
  fcQPlainTextDocumentLayout_virtualbase_pageCount(self.h)

proc QPlainTextDocumentLayoutdocumentSize*(self: gen_qplaintextedit_types.QPlainTextDocumentLayout): gen_qsize_types.QSizeF =
  gen_qsize_types.QSizeF(h: fcQPlainTextDocumentLayout_virtualbase_documentSize(self.h), owned: true)

proc QPlainTextDocumentLayoutframeBoundingRect*(self: gen_qplaintextedit_types.QPlainTextDocumentLayout, param1: gen_qtextobject_types.QTextFrame): gen_qrect_types.QRectF =
  gen_qrect_types.QRectF(h: fcQPlainTextDocumentLayout_virtualbase_frameBoundingRect(self.h, param1.h), owned: true)

proc QPlainTextDocumentLayoutblockBoundingRect*(self: gen_qplaintextedit_types.QPlainTextDocumentLayout, blockVal: gen_qtextobject_types.QTextBlock): gen_qrect_types.QRectF =
  gen_qrect_types.QRectF(h: fcQPlainTextDocumentLayout_virtualbase_blockBoundingRect(self.h, blockVal.h), owned: true)

proc QPlainTextDocumentLayoutdocumentChanged*(self: gen_qplaintextedit_types.QPlainTextDocumentLayout, fromVal: cint, param2: cint, charsAdded: cint): void =
  fcQPlainTextDocumentLayout_virtualbase_documentChanged(self.h, fromVal, param2, charsAdded)

proc QPlainTextDocumentLayoutresizeInlineObject*(self: gen_qplaintextedit_types.QPlainTextDocumentLayout, item: gen_qtextlayout_types.QTextInlineObject, posInDocument: cint, format: gen_qtextformat_types.QTextFormat): void =
  fcQPlainTextDocumentLayout_virtualbase_resizeInlineObject(self.h, item.h, posInDocument, format.h)

proc QPlainTextDocumentLayoutpositionInlineObject*(self: gen_qplaintextedit_types.QPlainTextDocumentLayout, item: gen_qtextlayout_types.QTextInlineObject, posInDocument: cint, format: gen_qtextformat_types.QTextFormat): void =
  fcQPlainTextDocumentLayout_virtualbase_positionInlineObject(self.h, item.h, posInDocument, format.h)

proc QPlainTextDocumentLayoutdrawInlineObject*(self: gen_qplaintextedit_types.QPlainTextDocumentLayout, painter: gen_qpainter_types.QPainter, rect: gen_qrect_types.QRectF, objectVal: gen_qtextlayout_types.QTextInlineObject, posInDocument: cint, format: gen_qtextformat_types.QTextFormat): void =
  fcQPlainTextDocumentLayout_virtualbase_drawInlineObject(self.h, painter.h, rect.h, objectVal.h, posInDocument, format.h)

proc QPlainTextDocumentLayoutevent*(self: gen_qplaintextedit_types.QPlainTextDocumentLayout, event: gen_qcoreevent_types.QEvent): bool =
  fcQPlainTextDocumentLayout_virtualbase_event(self.h, event.h)

proc QPlainTextDocumentLayouteventFilter*(self: gen_qplaintextedit_types.QPlainTextDocumentLayout, watched: gen_qobject_types.QObject, event: gen_qcoreevent_types.QEvent): bool =
  fcQPlainTextDocumentLayout_virtualbase_eventFilter(self.h, watched.h, event.h)

proc QPlainTextDocumentLayouttimerEvent*(self: gen_qplaintextedit_types.QPlainTextDocumentLayout, event: gen_qcoreevent_types.QTimerEvent): void =
  fcQPlainTextDocumentLayout_virtualbase_timerEvent(self.h, event.h)

proc QPlainTextDocumentLayoutchildEvent*(self: gen_qplaintextedit_types.QPlainTextDocumentLayout, event: gen_qcoreevent_types.QChildEvent): void =
  fcQPlainTextDocumentLayout_virtualbase_childEvent(self.h, event.h)

proc QPlainTextDocumentLayoutcustomEvent*(self: gen_qplaintextedit_types.QPlainTextDocumentLayout, event: gen_qcoreevent_types.QEvent): void =
  fcQPlainTextDocumentLayout_virtualbase_customEvent(self.h, event.h)

proc QPlainTextDocumentLayoutconnectNotify*(self: gen_qplaintextedit_types.QPlainTextDocumentLayout, signal: gen_qmetaobject_types.QMetaMethod): void =
  fcQPlainTextDocumentLayout_virtualbase_connectNotify(self.h, signal.h)

proc QPlainTextDocumentLayoutdisconnectNotify*(self: gen_qplaintextedit_types.QPlainTextDocumentLayout, signal: gen_qmetaobject_types.QMetaMethod): void =
  fcQPlainTextDocumentLayout_virtualbase_disconnectNotify(self.h, signal.h)


proc fcQPlainTextDocumentLayout_vtable_callback_metaObject(self: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QPlainTextDocumentLayoutVTable](fcQPlainTextDocumentLayout_vdata(self))
  let self = QPlainTextDocumentLayout(h: self)
  var virtualReturn = vtbl[].metaObject(self)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc fcQPlainTextDocumentLayout_vtable_callback_metacast(self: pointer, param1: cstring): pointer {.cdecl.} =
  let vtbl = cast[ptr QPlainTextDocumentLayoutVTable](fcQPlainTextDocumentLayout_vdata(self))
  let self = QPlainTextDocumentLayout(h: self)
  let slotval1 = (param1)
  var virtualReturn = vtbl[].metacast(self, slotval1)
  virtualReturn

proc fcQPlainTextDocumentLayout_vtable_callback_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.cdecl.} =
  let vtbl = cast[ptr QPlainTextDocumentLayoutVTable](fcQPlainTextDocumentLayout_vdata(self))
  let self = QPlainTextDocumentLayout(h: self)
  let slotval1 = cint(param1)
  let slotval2 = param2
  let slotval3 = param3
  var virtualReturn = vtbl[].metacall(self, slotval1, slotval2, slotval3)
  virtualReturn

proc fcQPlainTextDocumentLayout_vtable_callback_draw(self: pointer, param1: pointer, param2: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QPlainTextDocumentLayoutVTable](fcQPlainTextDocumentLayout_vdata(self))
  let self = QPlainTextDocumentLayout(h: self)
  let slotval1 = gen_qpainter_types.QPainter(h: param1, owned: false)
  let slotval2 = gen_qabstracttextdocumentlayout_types.QAbstractTextDocumentLayoutPaintContext(h: param2, owned: false)
  vtbl[].draw(self, slotval1, slotval2)

proc fcQPlainTextDocumentLayout_vtable_callback_hitTest(self: pointer, param1: pointer, param2: cint): cint {.cdecl.} =
  let vtbl = cast[ptr QPlainTextDocumentLayoutVTable](fcQPlainTextDocumentLayout_vdata(self))
  let self = QPlainTextDocumentLayout(h: self)
  let slotval1 = gen_qpoint_types.QPointF(h: param1, owned: false)
  let slotval2 = cint(param2)
  var virtualReturn = vtbl[].hitTest(self, slotval1, slotval2)
  virtualReturn

proc fcQPlainTextDocumentLayout_vtable_callback_pageCount(self: pointer): cint {.cdecl.} =
  let vtbl = cast[ptr QPlainTextDocumentLayoutVTable](fcQPlainTextDocumentLayout_vdata(self))
  let self = QPlainTextDocumentLayout(h: self)
  var virtualReturn = vtbl[].pageCount(self)
  virtualReturn

proc fcQPlainTextDocumentLayout_vtable_callback_documentSize(self: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QPlainTextDocumentLayoutVTable](fcQPlainTextDocumentLayout_vdata(self))
  let self = QPlainTextDocumentLayout(h: self)
  var virtualReturn = vtbl[].documentSize(self)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc fcQPlainTextDocumentLayout_vtable_callback_frameBoundingRect(self: pointer, param1: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QPlainTextDocumentLayoutVTable](fcQPlainTextDocumentLayout_vdata(self))
  let self = QPlainTextDocumentLayout(h: self)
  let slotval1 = gen_qtextobject_types.QTextFrame(h: param1, owned: false)
  var virtualReturn = vtbl[].frameBoundingRect(self, slotval1)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc fcQPlainTextDocumentLayout_vtable_callback_blockBoundingRect(self: pointer, blockVal: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QPlainTextDocumentLayoutVTable](fcQPlainTextDocumentLayout_vdata(self))
  let self = QPlainTextDocumentLayout(h: self)
  let slotval1 = gen_qtextobject_types.QTextBlock(h: blockVal, owned: false)
  var virtualReturn = vtbl[].blockBoundingRect(self, slotval1)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc fcQPlainTextDocumentLayout_vtable_callback_documentChanged(self: pointer, fromVal: cint, param2: cint, charsAdded: cint): void {.cdecl.} =
  let vtbl = cast[ptr QPlainTextDocumentLayoutVTable](fcQPlainTextDocumentLayout_vdata(self))
  let self = QPlainTextDocumentLayout(h: self)
  let slotval1 = fromVal
  let slotval2 = param2
  let slotval3 = charsAdded
  vtbl[].documentChanged(self, slotval1, slotval2, slotval3)

proc fcQPlainTextDocumentLayout_vtable_callback_resizeInlineObject(self: pointer, item: pointer, posInDocument: cint, format: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QPlainTextDocumentLayoutVTable](fcQPlainTextDocumentLayout_vdata(self))
  let self = QPlainTextDocumentLayout(h: self)
  let slotval1 = gen_qtextlayout_types.QTextInlineObject(h: item, owned: true)
  let slotval2 = posInDocument
  let slotval3 = gen_qtextformat_types.QTextFormat(h: format, owned: false)
  vtbl[].resizeInlineObject(self, slotval1, slotval2, slotval3)

proc fcQPlainTextDocumentLayout_vtable_callback_positionInlineObject(self: pointer, item: pointer, posInDocument: cint, format: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QPlainTextDocumentLayoutVTable](fcQPlainTextDocumentLayout_vdata(self))
  let self = QPlainTextDocumentLayout(h: self)
  let slotval1 = gen_qtextlayout_types.QTextInlineObject(h: item, owned: true)
  let slotval2 = posInDocument
  let slotval3 = gen_qtextformat_types.QTextFormat(h: format, owned: false)
  vtbl[].positionInlineObject(self, slotval1, slotval2, slotval3)

proc fcQPlainTextDocumentLayout_vtable_callback_drawInlineObject(self: pointer, painter: pointer, rect: pointer, objectVal: pointer, posInDocument: cint, format: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QPlainTextDocumentLayoutVTable](fcQPlainTextDocumentLayout_vdata(self))
  let self = QPlainTextDocumentLayout(h: self)
  let slotval1 = gen_qpainter_types.QPainter(h: painter, owned: false)
  let slotval2 = gen_qrect_types.QRectF(h: rect, owned: false)
  let slotval3 = gen_qtextlayout_types.QTextInlineObject(h: objectVal, owned: true)
  let slotval4 = posInDocument
  let slotval5 = gen_qtextformat_types.QTextFormat(h: format, owned: false)
  vtbl[].drawInlineObject(self, slotval1, slotval2, slotval3, slotval4, slotval5)

proc fcQPlainTextDocumentLayout_vtable_callback_event(self: pointer, event: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QPlainTextDocumentLayoutVTable](fcQPlainTextDocumentLayout_vdata(self))
  let self = QPlainTextDocumentLayout(h: self)
  let slotval1 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  var virtualReturn = vtbl[].event(self, slotval1)
  virtualReturn

proc fcQPlainTextDocumentLayout_vtable_callback_eventFilter(self: pointer, watched: pointer, event: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QPlainTextDocumentLayoutVTable](fcQPlainTextDocumentLayout_vdata(self))
  let self = QPlainTextDocumentLayout(h: self)
  let slotval1 = gen_qobject_types.QObject(h: watched, owned: false)
  let slotval2 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  var virtualReturn = vtbl[].eventFilter(self, slotval1, slotval2)
  virtualReturn

proc fcQPlainTextDocumentLayout_vtable_callback_timerEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QPlainTextDocumentLayoutVTable](fcQPlainTextDocumentLayout_vdata(self))
  let self = QPlainTextDocumentLayout(h: self)
  let slotval1 = gen_qcoreevent_types.QTimerEvent(h: event, owned: false)
  vtbl[].timerEvent(self, slotval1)

proc fcQPlainTextDocumentLayout_vtable_callback_childEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QPlainTextDocumentLayoutVTable](fcQPlainTextDocumentLayout_vdata(self))
  let self = QPlainTextDocumentLayout(h: self)
  let slotval1 = gen_qcoreevent_types.QChildEvent(h: event, owned: false)
  vtbl[].childEvent(self, slotval1)

proc fcQPlainTextDocumentLayout_vtable_callback_customEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QPlainTextDocumentLayoutVTable](fcQPlainTextDocumentLayout_vdata(self))
  let self = QPlainTextDocumentLayout(h: self)
  let slotval1 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  vtbl[].customEvent(self, slotval1)

proc fcQPlainTextDocumentLayout_vtable_callback_connectNotify(self: pointer, signal: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QPlainTextDocumentLayoutVTable](fcQPlainTextDocumentLayout_vdata(self))
  let self = QPlainTextDocumentLayout(h: self)
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal, owned: false)
  vtbl[].connectNotify(self, slotval1)

proc fcQPlainTextDocumentLayout_vtable_callback_disconnectNotify(self: pointer, signal: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QPlainTextDocumentLayoutVTable](fcQPlainTextDocumentLayout_vdata(self))
  let self = QPlainTextDocumentLayout(h: self)
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal, owned: false)
  vtbl[].disconnectNotify(self, slotval1)

type VirtualQPlainTextDocumentLayout* {.inheritable.} = ref object of QPlainTextDocumentLayout
  vtbl*: cQPlainTextDocumentLayoutVTable

method metaObject*(self: VirtualQPlainTextDocumentLayout): gen_qobjectdefs_types.QMetaObject {.base.} =
  QPlainTextDocumentLayoutmetaObject(self[])
method metacast*(self: VirtualQPlainTextDocumentLayout, param1: cstring): pointer {.base.} =
  QPlainTextDocumentLayoutmetacast(self[], param1)
method metacall*(self: VirtualQPlainTextDocumentLayout, param1: cint, param2: cint, param3: pointer): cint {.base.} =
  QPlainTextDocumentLayoutmetacall(self[], param1, param2, param3)
method draw*(self: VirtualQPlainTextDocumentLayout, param1: gen_qpainter_types.QPainter, param2: gen_qabstracttextdocumentlayout_types.QAbstractTextDocumentLayoutPaintContext): void {.base.} =
  QPlainTextDocumentLayoutdraw(self[], param1, param2)
method hitTest*(self: VirtualQPlainTextDocumentLayout, param1: gen_qpoint_types.QPointF, param2: cint): cint {.base.} =
  QPlainTextDocumentLayouthitTest(self[], param1, param2)
method pageCount*(self: VirtualQPlainTextDocumentLayout): cint {.base.} =
  QPlainTextDocumentLayoutpageCount(self[])
method documentSize*(self: VirtualQPlainTextDocumentLayout): gen_qsize_types.QSizeF {.base.} =
  QPlainTextDocumentLayoutdocumentSize(self[])
method frameBoundingRect*(self: VirtualQPlainTextDocumentLayout, param1: gen_qtextobject_types.QTextFrame): gen_qrect_types.QRectF {.base.} =
  QPlainTextDocumentLayoutframeBoundingRect(self[], param1)
method blockBoundingRect*(self: VirtualQPlainTextDocumentLayout, blockVal: gen_qtextobject_types.QTextBlock): gen_qrect_types.QRectF {.base.} =
  QPlainTextDocumentLayoutblockBoundingRect(self[], blockVal)
method documentChanged*(self: VirtualQPlainTextDocumentLayout, fromVal: cint, param2: cint, charsAdded: cint): void {.base.} =
  QPlainTextDocumentLayoutdocumentChanged(self[], fromVal, param2, charsAdded)
method resizeInlineObject*(self: VirtualQPlainTextDocumentLayout, item: gen_qtextlayout_types.QTextInlineObject, posInDocument: cint, format: gen_qtextformat_types.QTextFormat): void {.base.} =
  QPlainTextDocumentLayoutresizeInlineObject(self[], item, posInDocument, format)
method positionInlineObject*(self: VirtualQPlainTextDocumentLayout, item: gen_qtextlayout_types.QTextInlineObject, posInDocument: cint, format: gen_qtextformat_types.QTextFormat): void {.base.} =
  QPlainTextDocumentLayoutpositionInlineObject(self[], item, posInDocument, format)
method drawInlineObject*(self: VirtualQPlainTextDocumentLayout, painter: gen_qpainter_types.QPainter, rect: gen_qrect_types.QRectF, objectVal: gen_qtextlayout_types.QTextInlineObject, posInDocument: cint, format: gen_qtextformat_types.QTextFormat): void {.base.} =
  QPlainTextDocumentLayoutdrawInlineObject(self[], painter, rect, objectVal, posInDocument, format)
method event*(self: VirtualQPlainTextDocumentLayout, event: gen_qcoreevent_types.QEvent): bool {.base.} =
  QPlainTextDocumentLayoutevent(self[], event)
method eventFilter*(self: VirtualQPlainTextDocumentLayout, watched: gen_qobject_types.QObject, event: gen_qcoreevent_types.QEvent): bool {.base.} =
  QPlainTextDocumentLayouteventFilter(self[], watched, event)
method timerEvent*(self: VirtualQPlainTextDocumentLayout, event: gen_qcoreevent_types.QTimerEvent): void {.base.} =
  QPlainTextDocumentLayouttimerEvent(self[], event)
method childEvent*(self: VirtualQPlainTextDocumentLayout, event: gen_qcoreevent_types.QChildEvent): void {.base.} =
  QPlainTextDocumentLayoutchildEvent(self[], event)
method customEvent*(self: VirtualQPlainTextDocumentLayout, event: gen_qcoreevent_types.QEvent): void {.base.} =
  QPlainTextDocumentLayoutcustomEvent(self[], event)
method connectNotify*(self: VirtualQPlainTextDocumentLayout, signal: gen_qmetaobject_types.QMetaMethod): void {.base.} =
  QPlainTextDocumentLayoutconnectNotify(self[], signal)
method disconnectNotify*(self: VirtualQPlainTextDocumentLayout, signal: gen_qmetaobject_types.QMetaMethod): void {.base.} =
  QPlainTextDocumentLayoutdisconnectNotify(self[], signal)

proc fcQPlainTextDocumentLayout_method_callback_metaObject(self: pointer): pointer {.cdecl.} =
  let inst = cast[VirtualQPlainTextDocumentLayout](fcQPlainTextDocumentLayout_vdata(self))
  var virtualReturn = inst.metaObject()
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc fcQPlainTextDocumentLayout_method_callback_metacast(self: pointer, param1: cstring): pointer {.cdecl.} =
  let inst = cast[VirtualQPlainTextDocumentLayout](fcQPlainTextDocumentLayout_vdata(self))
  let slotval1 = (param1)
  var virtualReturn = inst.metacast(slotval1)
  virtualReturn

proc fcQPlainTextDocumentLayout_method_callback_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.cdecl.} =
  let inst = cast[VirtualQPlainTextDocumentLayout](fcQPlainTextDocumentLayout_vdata(self))
  let slotval1 = cint(param1)
  let slotval2 = param2
  let slotval3 = param3
  var virtualReturn = inst.metacall(slotval1, slotval2, slotval3)
  virtualReturn

proc fcQPlainTextDocumentLayout_method_callback_draw(self: pointer, param1: pointer, param2: pointer): void {.cdecl.} =
  let inst = cast[VirtualQPlainTextDocumentLayout](fcQPlainTextDocumentLayout_vdata(self))
  let slotval1 = gen_qpainter_types.QPainter(h: param1, owned: false)
  let slotval2 = gen_qabstracttextdocumentlayout_types.QAbstractTextDocumentLayoutPaintContext(h: param2, owned: false)
  inst.draw(slotval1, slotval2)

proc fcQPlainTextDocumentLayout_method_callback_hitTest(self: pointer, param1: pointer, param2: cint): cint {.cdecl.} =
  let inst = cast[VirtualQPlainTextDocumentLayout](fcQPlainTextDocumentLayout_vdata(self))
  let slotval1 = gen_qpoint_types.QPointF(h: param1, owned: false)
  let slotval2 = cint(param2)
  var virtualReturn = inst.hitTest(slotval1, slotval2)
  virtualReturn

proc fcQPlainTextDocumentLayout_method_callback_pageCount(self: pointer): cint {.cdecl.} =
  let inst = cast[VirtualQPlainTextDocumentLayout](fcQPlainTextDocumentLayout_vdata(self))
  var virtualReturn = inst.pageCount()
  virtualReturn

proc fcQPlainTextDocumentLayout_method_callback_documentSize(self: pointer): pointer {.cdecl.} =
  let inst = cast[VirtualQPlainTextDocumentLayout](fcQPlainTextDocumentLayout_vdata(self))
  var virtualReturn = inst.documentSize()
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc fcQPlainTextDocumentLayout_method_callback_frameBoundingRect(self: pointer, param1: pointer): pointer {.cdecl.} =
  let inst = cast[VirtualQPlainTextDocumentLayout](fcQPlainTextDocumentLayout_vdata(self))
  let slotval1 = gen_qtextobject_types.QTextFrame(h: param1, owned: false)
  var virtualReturn = inst.frameBoundingRect(slotval1)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc fcQPlainTextDocumentLayout_method_callback_blockBoundingRect(self: pointer, blockVal: pointer): pointer {.cdecl.} =
  let inst = cast[VirtualQPlainTextDocumentLayout](fcQPlainTextDocumentLayout_vdata(self))
  let slotval1 = gen_qtextobject_types.QTextBlock(h: blockVal, owned: false)
  var virtualReturn = inst.blockBoundingRect(slotval1)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc fcQPlainTextDocumentLayout_method_callback_documentChanged(self: pointer, fromVal: cint, param2: cint, charsAdded: cint): void {.cdecl.} =
  let inst = cast[VirtualQPlainTextDocumentLayout](fcQPlainTextDocumentLayout_vdata(self))
  let slotval1 = fromVal
  let slotval2 = param2
  let slotval3 = charsAdded
  inst.documentChanged(slotval1, slotval2, slotval3)

proc fcQPlainTextDocumentLayout_method_callback_resizeInlineObject(self: pointer, item: pointer, posInDocument: cint, format: pointer): void {.cdecl.} =
  let inst = cast[VirtualQPlainTextDocumentLayout](fcQPlainTextDocumentLayout_vdata(self))
  let slotval1 = gen_qtextlayout_types.QTextInlineObject(h: item, owned: true)
  let slotval2 = posInDocument
  let slotval3 = gen_qtextformat_types.QTextFormat(h: format, owned: false)
  inst.resizeInlineObject(slotval1, slotval2, slotval3)

proc fcQPlainTextDocumentLayout_method_callback_positionInlineObject(self: pointer, item: pointer, posInDocument: cint, format: pointer): void {.cdecl.} =
  let inst = cast[VirtualQPlainTextDocumentLayout](fcQPlainTextDocumentLayout_vdata(self))
  let slotval1 = gen_qtextlayout_types.QTextInlineObject(h: item, owned: true)
  let slotval2 = posInDocument
  let slotval3 = gen_qtextformat_types.QTextFormat(h: format, owned: false)
  inst.positionInlineObject(slotval1, slotval2, slotval3)

proc fcQPlainTextDocumentLayout_method_callback_drawInlineObject(self: pointer, painter: pointer, rect: pointer, objectVal: pointer, posInDocument: cint, format: pointer): void {.cdecl.} =
  let inst = cast[VirtualQPlainTextDocumentLayout](fcQPlainTextDocumentLayout_vdata(self))
  let slotval1 = gen_qpainter_types.QPainter(h: painter, owned: false)
  let slotval2 = gen_qrect_types.QRectF(h: rect, owned: false)
  let slotval3 = gen_qtextlayout_types.QTextInlineObject(h: objectVal, owned: true)
  let slotval4 = posInDocument
  let slotval5 = gen_qtextformat_types.QTextFormat(h: format, owned: false)
  inst.drawInlineObject(slotval1, slotval2, slotval3, slotval4, slotval5)

proc fcQPlainTextDocumentLayout_method_callback_event(self: pointer, event: pointer): bool {.cdecl.} =
  let inst = cast[VirtualQPlainTextDocumentLayout](fcQPlainTextDocumentLayout_vdata(self))
  let slotval1 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  var virtualReturn = inst.event(slotval1)
  virtualReturn

proc fcQPlainTextDocumentLayout_method_callback_eventFilter(self: pointer, watched: pointer, event: pointer): bool {.cdecl.} =
  let inst = cast[VirtualQPlainTextDocumentLayout](fcQPlainTextDocumentLayout_vdata(self))
  let slotval1 = gen_qobject_types.QObject(h: watched, owned: false)
  let slotval2 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  var virtualReturn = inst.eventFilter(slotval1, slotval2)
  virtualReturn

proc fcQPlainTextDocumentLayout_method_callback_timerEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQPlainTextDocumentLayout](fcQPlainTextDocumentLayout_vdata(self))
  let slotval1 = gen_qcoreevent_types.QTimerEvent(h: event, owned: false)
  inst.timerEvent(slotval1)

proc fcQPlainTextDocumentLayout_method_callback_childEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQPlainTextDocumentLayout](fcQPlainTextDocumentLayout_vdata(self))
  let slotval1 = gen_qcoreevent_types.QChildEvent(h: event, owned: false)
  inst.childEvent(slotval1)

proc fcQPlainTextDocumentLayout_method_callback_customEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQPlainTextDocumentLayout](fcQPlainTextDocumentLayout_vdata(self))
  let slotval1 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  inst.customEvent(slotval1)

proc fcQPlainTextDocumentLayout_method_callback_connectNotify(self: pointer, signal: pointer): void {.cdecl.} =
  let inst = cast[VirtualQPlainTextDocumentLayout](fcQPlainTextDocumentLayout_vdata(self))
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal, owned: false)
  inst.connectNotify(slotval1)

proc fcQPlainTextDocumentLayout_method_callback_disconnectNotify(self: pointer, signal: pointer): void {.cdecl.} =
  let inst = cast[VirtualQPlainTextDocumentLayout](fcQPlainTextDocumentLayout_vdata(self))
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal, owned: false)
  inst.disconnectNotify(slotval1)


proc formatIndex*(self: gen_qplaintextedit_types.QPlainTextDocumentLayout, pos: cint): cint =
  fcQPlainTextDocumentLayout_protectedbase_formatIndex(self.h, pos)

proc format*(self: gen_qplaintextedit_types.QPlainTextDocumentLayout, pos: cint): gen_qtextformat_types.QTextCharFormat =
  gen_qtextformat_types.QTextCharFormat(h: fcQPlainTextDocumentLayout_protectedbase_format(self.h, pos), owned: true)

proc sender*(self: gen_qplaintextedit_types.QPlainTextDocumentLayout): gen_qobject_types.QObject =
  gen_qobject_types.QObject(h: fcQPlainTextDocumentLayout_protectedbase_sender(self.h), owned: false)

proc senderSignalIndex*(self: gen_qplaintextedit_types.QPlainTextDocumentLayout): cint =
  fcQPlainTextDocumentLayout_protectedbase_senderSignalIndex(self.h)

proc receivers*(self: gen_qplaintextedit_types.QPlainTextDocumentLayout, signal: cstring): cint =
  fcQPlainTextDocumentLayout_protectedbase_receivers(self.h, signal)

proc isSignalConnected*(self: gen_qplaintextedit_types.QPlainTextDocumentLayout, signal: gen_qmetaobject_types.QMetaMethod): bool =
  fcQPlainTextDocumentLayout_protectedbase_isSignalConnected(self.h, signal.h)

proc create*(T: type gen_qplaintextedit_types.QPlainTextDocumentLayout,
    document: gen_qtextdocument_types.QTextDocument,
    vtbl: ref QPlainTextDocumentLayoutVTable = nil): gen_qplaintextedit_types.QPlainTextDocumentLayout =
  let vtbl = if vtbl == nil: new QPlainTextDocumentLayoutVTable else: vtbl
  GC_ref(vtbl)
  vtbl[].vtbl.destructor = proc(self: pointer) {.cdecl.} =
    let vtbl = cast[ref QPlainTextDocumentLayoutVTable](fcQPlainTextDocumentLayout_vdata(self))
    GC_unref(vtbl)
  if not isNil(vtbl[].metaObject):
    vtbl[].vtbl.metaObject = fcQPlainTextDocumentLayout_vtable_callback_metaObject
  if not isNil(vtbl[].metacast):
    vtbl[].vtbl.metacast = fcQPlainTextDocumentLayout_vtable_callback_metacast
  if not isNil(vtbl[].metacall):
    vtbl[].vtbl.metacall = fcQPlainTextDocumentLayout_vtable_callback_metacall
  if not isNil(vtbl[].draw):
    vtbl[].vtbl.draw = fcQPlainTextDocumentLayout_vtable_callback_draw
  if not isNil(vtbl[].hitTest):
    vtbl[].vtbl.hitTest = fcQPlainTextDocumentLayout_vtable_callback_hitTest
  if not isNil(vtbl[].pageCount):
    vtbl[].vtbl.pageCount = fcQPlainTextDocumentLayout_vtable_callback_pageCount
  if not isNil(vtbl[].documentSize):
    vtbl[].vtbl.documentSize = fcQPlainTextDocumentLayout_vtable_callback_documentSize
  if not isNil(vtbl[].frameBoundingRect):
    vtbl[].vtbl.frameBoundingRect = fcQPlainTextDocumentLayout_vtable_callback_frameBoundingRect
  if not isNil(vtbl[].blockBoundingRect):
    vtbl[].vtbl.blockBoundingRect = fcQPlainTextDocumentLayout_vtable_callback_blockBoundingRect
  if not isNil(vtbl[].documentChanged):
    vtbl[].vtbl.documentChanged = fcQPlainTextDocumentLayout_vtable_callback_documentChanged
  if not isNil(vtbl[].resizeInlineObject):
    vtbl[].vtbl.resizeInlineObject = fcQPlainTextDocumentLayout_vtable_callback_resizeInlineObject
  if not isNil(vtbl[].positionInlineObject):
    vtbl[].vtbl.positionInlineObject = fcQPlainTextDocumentLayout_vtable_callback_positionInlineObject
  if not isNil(vtbl[].drawInlineObject):
    vtbl[].vtbl.drawInlineObject = fcQPlainTextDocumentLayout_vtable_callback_drawInlineObject
  if not isNil(vtbl[].event):
    vtbl[].vtbl.event = fcQPlainTextDocumentLayout_vtable_callback_event
  if not isNil(vtbl[].eventFilter):
    vtbl[].vtbl.eventFilter = fcQPlainTextDocumentLayout_vtable_callback_eventFilter
  if not isNil(vtbl[].timerEvent):
    vtbl[].vtbl.timerEvent = fcQPlainTextDocumentLayout_vtable_callback_timerEvent
  if not isNil(vtbl[].childEvent):
    vtbl[].vtbl.childEvent = fcQPlainTextDocumentLayout_vtable_callback_childEvent
  if not isNil(vtbl[].customEvent):
    vtbl[].vtbl.customEvent = fcQPlainTextDocumentLayout_vtable_callback_customEvent
  if not isNil(vtbl[].connectNotify):
    vtbl[].vtbl.connectNotify = fcQPlainTextDocumentLayout_vtable_callback_connectNotify
  if not isNil(vtbl[].disconnectNotify):
    vtbl[].vtbl.disconnectNotify = fcQPlainTextDocumentLayout_vtable_callback_disconnectNotify
  gen_qplaintextedit_types.QPlainTextDocumentLayout(h: fcQPlainTextDocumentLayout_new(addr(vtbl[].vtbl), addr(vtbl[]), document.h), owned: true)

const cQPlainTextDocumentLayout_mvtbl = cQPlainTextDocumentLayoutVTable(
  destructor: proc(self: pointer) {.cdecl.} =
    let inst = cast[ptr typeof(VirtualQPlainTextDocumentLayout()[])](self.fcQPlainTextDocumentLayout_vtbl())
    inst[].h = nil
    inst[].owned = false,

  metaObject: fcQPlainTextDocumentLayout_method_callback_metaObject,
  metacast: fcQPlainTextDocumentLayout_method_callback_metacast,
  metacall: fcQPlainTextDocumentLayout_method_callback_metacall,
  draw: fcQPlainTextDocumentLayout_method_callback_draw,
  hitTest: fcQPlainTextDocumentLayout_method_callback_hitTest,
  pageCount: fcQPlainTextDocumentLayout_method_callback_pageCount,
  documentSize: fcQPlainTextDocumentLayout_method_callback_documentSize,
  frameBoundingRect: fcQPlainTextDocumentLayout_method_callback_frameBoundingRect,
  blockBoundingRect: fcQPlainTextDocumentLayout_method_callback_blockBoundingRect,
  documentChanged: fcQPlainTextDocumentLayout_method_callback_documentChanged,
  resizeInlineObject: fcQPlainTextDocumentLayout_method_callback_resizeInlineObject,
  positionInlineObject: fcQPlainTextDocumentLayout_method_callback_positionInlineObject,
  drawInlineObject: fcQPlainTextDocumentLayout_method_callback_drawInlineObject,
  event: fcQPlainTextDocumentLayout_method_callback_event,
  eventFilter: fcQPlainTextDocumentLayout_method_callback_eventFilter,
  timerEvent: fcQPlainTextDocumentLayout_method_callback_timerEvent,
  childEvent: fcQPlainTextDocumentLayout_method_callback_childEvent,
  customEvent: fcQPlainTextDocumentLayout_method_callback_customEvent,
  connectNotify: fcQPlainTextDocumentLayout_method_callback_connectNotify,
  disconnectNotify: fcQPlainTextDocumentLayout_method_callback_disconnectNotify,
)
proc create*(T: type gen_qplaintextedit_types.QPlainTextDocumentLayout,
    document: gen_qtextdocument_types.QTextDocument,
    inst: VirtualQPlainTextDocumentLayout) =
  if inst[].h != nil: delete(move(inst[]))
  inst[].h = fcQPlainTextDocumentLayout_new(addr(cQPlainTextDocumentLayout_mvtbl), addr(inst[]), document.h)
  inst[].owned = true

proc staticMetaObject*(_: type gen_qplaintextedit_types.QPlainTextDocumentLayout): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQPlainTextDocumentLayout_staticMetaObject())
