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


{.compile("gen_qlineedit.cpp", QtWidgetsCFlags).}


type QLineEditActionPositionEnum* = distinct cint
template LeadingPosition*(_: type QLineEditActionPositionEnum): untyped = 0
template TrailingPosition*(_: type QLineEditActionPositionEnum): untyped = 1


type QLineEditEchoModeEnum* = distinct cint
template Normal*(_: type QLineEditEchoModeEnum): untyped = 0
template NoEcho*(_: type QLineEditEchoModeEnum): untyped = 1
template Password*(_: type QLineEditEchoModeEnum): untyped = 2
template PasswordEchoOnEdit*(_: type QLineEditEchoModeEnum): untyped = 3


import ./gen_qlineedit_types
export gen_qlineedit_types

import
  ../QtCore/gen_qcoreevent_types,
  ../QtCore/gen_qmargins_types,
  ../QtCore/gen_qmetaobject_types,
  ../QtCore/gen_qobject_types,
  ../QtCore/gen_qobjectdefs_types,
  ../QtCore/gen_qpoint_types,
  ../QtCore/gen_qrect_types,
  ../QtCore/gen_qsize_types,
  ../QtCore/gen_qvariant_types,
  ../QtGui/gen_qevent_types,
  ../QtGui/gen_qicon_types,
  ../QtGui/gen_qpaintdevice_types,
  ../QtGui/gen_qpaintengine_types,
  ../QtGui/gen_qpainter_types,
  ../QtGui/gen_qvalidator_types,
  ./gen_qaction_types,
  ./gen_qcompleter_types,
  ./gen_qmenu_types,
  ./gen_qstyleoption_types,
  ./gen_qwidget
export
  gen_qcoreevent_types,
  gen_qmargins_types,
  gen_qmetaobject_types,
  gen_qobject_types,
  gen_qobjectdefs_types,
  gen_qpoint_types,
  gen_qrect_types,
  gen_qsize_types,
  gen_qvariant_types,
  gen_qevent_types,
  gen_qicon_types,
  gen_qpaintdevice_types,
  gen_qpaintengine_types,
  gen_qpainter_types,
  gen_qvalidator_types,
  gen_qaction_types,
  gen_qcompleter_types,
  gen_qmenu_types,
  gen_qstyleoption_types,
  gen_qwidget

type cQLineEdit*{.exportc: "QLineEdit", incompleteStruct.} = object

proc fcQLineEdit_metaObject(self: pointer): pointer {.importc: "QLineEdit_metaObject".}
proc fcQLineEdit_metacast(self: pointer, param1: cstring): pointer {.importc: "QLineEdit_metacast".}
proc fcQLineEdit_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.importc: "QLineEdit_metacall".}
proc fcQLineEdit_tr(s: cstring): struct_miqt_string {.importc: "QLineEdit_tr".}
proc fcQLineEdit_trUtf8(s: cstring): struct_miqt_string {.importc: "QLineEdit_trUtf8".}
proc fcQLineEdit_text(self: pointer): struct_miqt_string {.importc: "QLineEdit_text".}
proc fcQLineEdit_displayText(self: pointer): struct_miqt_string {.importc: "QLineEdit_displayText".}
proc fcQLineEdit_placeholderText(self: pointer): struct_miqt_string {.importc: "QLineEdit_placeholderText".}
proc fcQLineEdit_setPlaceholderText(self: pointer, placeholderText: struct_miqt_string): void {.importc: "QLineEdit_setPlaceholderText".}
proc fcQLineEdit_maxLength(self: pointer): cint {.importc: "QLineEdit_maxLength".}
proc fcQLineEdit_setMaxLength(self: pointer, maxLength: cint): void {.importc: "QLineEdit_setMaxLength".}
proc fcQLineEdit_setFrame(self: pointer, frame: bool): void {.importc: "QLineEdit_setFrame".}
proc fcQLineEdit_hasFrame(self: pointer): bool {.importc: "QLineEdit_hasFrame".}
proc fcQLineEdit_setClearButtonEnabled(self: pointer, enable: bool): void {.importc: "QLineEdit_setClearButtonEnabled".}
proc fcQLineEdit_isClearButtonEnabled(self: pointer): bool {.importc: "QLineEdit_isClearButtonEnabled".}
proc fcQLineEdit_echoMode(self: pointer): cint {.importc: "QLineEdit_echoMode".}
proc fcQLineEdit_setEchoMode(self: pointer, echoMode: cint): void {.importc: "QLineEdit_setEchoMode".}
proc fcQLineEdit_isReadOnly(self: pointer): bool {.importc: "QLineEdit_isReadOnly".}
proc fcQLineEdit_setReadOnly(self: pointer, readOnly: bool): void {.importc: "QLineEdit_setReadOnly".}
proc fcQLineEdit_setValidator(self: pointer, validator: pointer): void {.importc: "QLineEdit_setValidator".}
proc fcQLineEdit_validator(self: pointer): pointer {.importc: "QLineEdit_validator".}
proc fcQLineEdit_setCompleter(self: pointer, completer: pointer): void {.importc: "QLineEdit_setCompleter".}
proc fcQLineEdit_completer(self: pointer): pointer {.importc: "QLineEdit_completer".}
proc fcQLineEdit_sizeHint(self: pointer): pointer {.importc: "QLineEdit_sizeHint".}
proc fcQLineEdit_minimumSizeHint(self: pointer): pointer {.importc: "QLineEdit_minimumSizeHint".}
proc fcQLineEdit_cursorPosition(self: pointer): cint {.importc: "QLineEdit_cursorPosition".}
proc fcQLineEdit_setCursorPosition(self: pointer, cursorPosition: cint): void {.importc: "QLineEdit_setCursorPosition".}
proc fcQLineEdit_cursorPositionAt(self: pointer, pos: pointer): cint {.importc: "QLineEdit_cursorPositionAt".}
proc fcQLineEdit_setAlignment(self: pointer, flag: cint): void {.importc: "QLineEdit_setAlignment".}
proc fcQLineEdit_alignment(self: pointer): cint {.importc: "QLineEdit_alignment".}
proc fcQLineEdit_cursorForward(self: pointer, mark: bool): void {.importc: "QLineEdit_cursorForward".}
proc fcQLineEdit_cursorBackward(self: pointer, mark: bool): void {.importc: "QLineEdit_cursorBackward".}
proc fcQLineEdit_cursorWordForward(self: pointer, mark: bool): void {.importc: "QLineEdit_cursorWordForward".}
proc fcQLineEdit_cursorWordBackward(self: pointer, mark: bool): void {.importc: "QLineEdit_cursorWordBackward".}
proc fcQLineEdit_backspace(self: pointer): void {.importc: "QLineEdit_backspace".}
proc fcQLineEdit_del(self: pointer): void {.importc: "QLineEdit_del".}
proc fcQLineEdit_home(self: pointer, mark: bool): void {.importc: "QLineEdit_home".}
proc fcQLineEdit_endX(self: pointer, mark: bool): void {.importc: "QLineEdit_end".}
proc fcQLineEdit_isModified(self: pointer): bool {.importc: "QLineEdit_isModified".}
proc fcQLineEdit_setModified(self: pointer, modified: bool): void {.importc: "QLineEdit_setModified".}
proc fcQLineEdit_setSelection(self: pointer, param1: cint, param2: cint): void {.importc: "QLineEdit_setSelection".}
proc fcQLineEdit_hasSelectedText(self: pointer): bool {.importc: "QLineEdit_hasSelectedText".}
proc fcQLineEdit_selectedText(self: pointer): struct_miqt_string {.importc: "QLineEdit_selectedText".}
proc fcQLineEdit_selectionStart(self: pointer): cint {.importc: "QLineEdit_selectionStart".}
proc fcQLineEdit_selectionEnd(self: pointer): cint {.importc: "QLineEdit_selectionEnd".}
proc fcQLineEdit_selectionLength(self: pointer): cint {.importc: "QLineEdit_selectionLength".}
proc fcQLineEdit_isUndoAvailable(self: pointer): bool {.importc: "QLineEdit_isUndoAvailable".}
proc fcQLineEdit_isRedoAvailable(self: pointer): bool {.importc: "QLineEdit_isRedoAvailable".}
proc fcQLineEdit_setDragEnabled(self: pointer, b: bool): void {.importc: "QLineEdit_setDragEnabled".}
proc fcQLineEdit_dragEnabled(self: pointer): bool {.importc: "QLineEdit_dragEnabled".}
proc fcQLineEdit_setCursorMoveStyle(self: pointer, style: cint): void {.importc: "QLineEdit_setCursorMoveStyle".}
proc fcQLineEdit_cursorMoveStyle(self: pointer): cint {.importc: "QLineEdit_cursorMoveStyle".}
proc fcQLineEdit_inputMask(self: pointer): struct_miqt_string {.importc: "QLineEdit_inputMask".}
proc fcQLineEdit_setInputMask(self: pointer, inputMask: struct_miqt_string): void {.importc: "QLineEdit_setInputMask".}
proc fcQLineEdit_hasAcceptableInput(self: pointer): bool {.importc: "QLineEdit_hasAcceptableInput".}
proc fcQLineEdit_setTextMargins(self: pointer, left: cint, top: cint, right: cint, bottom: cint): void {.importc: "QLineEdit_setTextMargins".}
proc fcQLineEdit_setTextMarginsWithMargins(self: pointer, margins: pointer): void {.importc: "QLineEdit_setTextMarginsWithMargins".}
proc fcQLineEdit_getTextMargins(self: pointer, left: ptr cint, top: ptr cint, right: ptr cint, bottom: ptr cint): void {.importc: "QLineEdit_getTextMargins".}
proc fcQLineEdit_textMargins(self: pointer): pointer {.importc: "QLineEdit_textMargins".}
proc fcQLineEdit_addAction(self: pointer, action: pointer, position: cint): void {.importc: "QLineEdit_addAction".}
proc fcQLineEdit_addAction2(self: pointer, icon: pointer, position: cint): pointer {.importc: "QLineEdit_addAction2".}
proc fcQLineEdit_setText(self: pointer, text: struct_miqt_string): void {.importc: "QLineEdit_setText".}
proc fcQLineEdit_clear(self: pointer): void {.importc: "QLineEdit_clear".}
proc fcQLineEdit_selectAll(self: pointer): void {.importc: "QLineEdit_selectAll".}
proc fcQLineEdit_undo(self: pointer): void {.importc: "QLineEdit_undo".}
proc fcQLineEdit_redo(self: pointer): void {.importc: "QLineEdit_redo".}
proc fcQLineEdit_cut(self: pointer): void {.importc: "QLineEdit_cut".}
proc fcQLineEdit_copy(self: pointer): void {.importc: "QLineEdit_copy".}
proc fcQLineEdit_paste(self: pointer): void {.importc: "QLineEdit_paste".}
proc fcQLineEdit_deselect(self: pointer): void {.importc: "QLineEdit_deselect".}
proc fcQLineEdit_insert(self: pointer, param1: struct_miqt_string): void {.importc: "QLineEdit_insert".}
proc fcQLineEdit_createStandardContextMenu(self: pointer): pointer {.importc: "QLineEdit_createStandardContextMenu".}
proc fcQLineEdit_textChanged(self: pointer, param1: struct_miqt_string): void {.importc: "QLineEdit_textChanged".}
proc fcQLineEdit_connect_textChanged(self: pointer, slot: int, callback: proc (slot: int, param1: struct_miqt_string) {.cdecl.}, release: proc(slot: int) {.cdecl.}) {.importc: "QLineEdit_connect_textChanged".}
proc fcQLineEdit_textEdited(self: pointer, param1: struct_miqt_string): void {.importc: "QLineEdit_textEdited".}
proc fcQLineEdit_connect_textEdited(self: pointer, slot: int, callback: proc (slot: int, param1: struct_miqt_string) {.cdecl.}, release: proc(slot: int) {.cdecl.}) {.importc: "QLineEdit_connect_textEdited".}
proc fcQLineEdit_cursorPositionChanged(self: pointer, param1: cint, param2: cint): void {.importc: "QLineEdit_cursorPositionChanged".}
proc fcQLineEdit_connect_cursorPositionChanged(self: pointer, slot: int, callback: proc (slot: int, param1: cint, param2: cint) {.cdecl.}, release: proc(slot: int) {.cdecl.}) {.importc: "QLineEdit_connect_cursorPositionChanged".}
proc fcQLineEdit_returnPressed(self: pointer): void {.importc: "QLineEdit_returnPressed".}
proc fcQLineEdit_connect_returnPressed(self: pointer, slot: int, callback: proc (slot: int) {.cdecl.}, release: proc(slot: int) {.cdecl.}) {.importc: "QLineEdit_connect_returnPressed".}
proc fcQLineEdit_editingFinished(self: pointer): void {.importc: "QLineEdit_editingFinished".}
proc fcQLineEdit_connect_editingFinished(self: pointer, slot: int, callback: proc (slot: int) {.cdecl.}, release: proc(slot: int) {.cdecl.}) {.importc: "QLineEdit_connect_editingFinished".}
proc fcQLineEdit_selectionChanged(self: pointer): void {.importc: "QLineEdit_selectionChanged".}
proc fcQLineEdit_connect_selectionChanged(self: pointer, slot: int, callback: proc (slot: int) {.cdecl.}, release: proc(slot: int) {.cdecl.}) {.importc: "QLineEdit_connect_selectionChanged".}
proc fcQLineEdit_inputRejected(self: pointer): void {.importc: "QLineEdit_inputRejected".}
proc fcQLineEdit_connect_inputRejected(self: pointer, slot: int, callback: proc (slot: int) {.cdecl.}, release: proc(slot: int) {.cdecl.}) {.importc: "QLineEdit_connect_inputRejected".}
proc fcQLineEdit_inputMethodQuery(self: pointer, param1: cint): pointer {.importc: "QLineEdit_inputMethodQuery".}
proc fcQLineEdit_inputMethodQuery2(self: pointer, property: cint, argument: pointer): pointer {.importc: "QLineEdit_inputMethodQuery2".}
proc fcQLineEdit_event(self: pointer, param1: pointer): bool {.importc: "QLineEdit_event".}
proc fcQLineEdit_tr2(s: cstring, c: cstring): struct_miqt_string {.importc: "QLineEdit_tr2".}
proc fcQLineEdit_tr3(s: cstring, c: cstring, n: cint): struct_miqt_string {.importc: "QLineEdit_tr3".}
proc fcQLineEdit_trUtf82(s: cstring, c: cstring): struct_miqt_string {.importc: "QLineEdit_trUtf82".}
proc fcQLineEdit_trUtf83(s: cstring, c: cstring, n: cint): struct_miqt_string {.importc: "QLineEdit_trUtf83".}
proc fcQLineEdit_cursorForward2(self: pointer, mark: bool, steps: cint): void {.importc: "QLineEdit_cursorForward2".}
proc fcQLineEdit_cursorBackward2(self: pointer, mark: bool, steps: cint): void {.importc: "QLineEdit_cursorBackward2".}
proc fcQLineEdit_vtbl(self: pointer): pointer {.importc: "QLineEdit_vtbl".}
proc fcQLineEdit_vdata(self: pointer): pointer {.importc: "QLineEdit_vdata".}

type cQLineEditVTable {.pure.} = object
  destructor*: proc(self: pointer) {.cdecl, raises:[], gcsafe.}
  metaObject*: proc(self: pointer): pointer {.cdecl, raises: [], gcsafe.}
  metacast*: proc(self: pointer, param1: cstring): pointer {.cdecl, raises: [], gcsafe.}
  metacall*: proc(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.cdecl, raises: [], gcsafe.}
  sizeHint*: proc(self: pointer): pointer {.cdecl, raises: [], gcsafe.}
  minimumSizeHint*: proc(self: pointer): pointer {.cdecl, raises: [], gcsafe.}
  mousePressEvent*: proc(self: pointer, param1: pointer): void {.cdecl, raises: [], gcsafe.}
  mouseMoveEvent*: proc(self: pointer, param1: pointer): void {.cdecl, raises: [], gcsafe.}
  mouseReleaseEvent*: proc(self: pointer, param1: pointer): void {.cdecl, raises: [], gcsafe.}
  mouseDoubleClickEvent*: proc(self: pointer, param1: pointer): void {.cdecl, raises: [], gcsafe.}
  keyPressEvent*: proc(self: pointer, param1: pointer): void {.cdecl, raises: [], gcsafe.}
  focusInEvent*: proc(self: pointer, param1: pointer): void {.cdecl, raises: [], gcsafe.}
  focusOutEvent*: proc(self: pointer, param1: pointer): void {.cdecl, raises: [], gcsafe.}
  paintEvent*: proc(self: pointer, param1: pointer): void {.cdecl, raises: [], gcsafe.}
  dragEnterEvent*: proc(self: pointer, param1: pointer): void {.cdecl, raises: [], gcsafe.}
  dragMoveEvent*: proc(self: pointer, e: pointer): void {.cdecl, raises: [], gcsafe.}
  dragLeaveEvent*: proc(self: pointer, e: pointer): void {.cdecl, raises: [], gcsafe.}
  dropEvent*: proc(self: pointer, param1: pointer): void {.cdecl, raises: [], gcsafe.}
  changeEvent*: proc(self: pointer, param1: pointer): void {.cdecl, raises: [], gcsafe.}
  contextMenuEvent*: proc(self: pointer, param1: pointer): void {.cdecl, raises: [], gcsafe.}
  inputMethodEvent*: proc(self: pointer, param1: pointer): void {.cdecl, raises: [], gcsafe.}
  inputMethodQuery*: proc(self: pointer, param1: cint): pointer {.cdecl, raises: [], gcsafe.}
  event*: proc(self: pointer, param1: pointer): bool {.cdecl, raises: [], gcsafe.}
  devType*: proc(self: pointer): cint {.cdecl, raises: [], gcsafe.}
  setVisible*: proc(self: pointer, visible: bool): void {.cdecl, raises: [], gcsafe.}
  heightForWidth*: proc(self: pointer, param1: cint): cint {.cdecl, raises: [], gcsafe.}
  hasHeightForWidth*: proc(self: pointer): bool {.cdecl, raises: [], gcsafe.}
  paintEngine*: proc(self: pointer): pointer {.cdecl, raises: [], gcsafe.}
  wheelEvent*: proc(self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  keyReleaseEvent*: proc(self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  enterEvent*: proc(self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  leaveEvent*: proc(self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  moveEvent*: proc(self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  resizeEvent*: proc(self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  closeEvent*: proc(self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  tabletEvent*: proc(self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  actionEvent*: proc(self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  showEvent*: proc(self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  hideEvent*: proc(self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  nativeEvent*: proc(self: pointer, eventType: struct_miqt_string, message: pointer, resultVal: ptr clong): bool {.cdecl, raises: [], gcsafe.}
  metric*: proc(self: pointer, param1: cint): cint {.cdecl, raises: [], gcsafe.}
  initPainter*: proc(self: pointer, painter: pointer): void {.cdecl, raises: [], gcsafe.}
  redirected*: proc(self: pointer, offset: pointer): pointer {.cdecl, raises: [], gcsafe.}
  sharedPainter*: proc(self: pointer): pointer {.cdecl, raises: [], gcsafe.}
  focusNextPrevChild*: proc(self: pointer, next: bool): bool {.cdecl, raises: [], gcsafe.}
  eventFilter*: proc(self: pointer, watched: pointer, event: pointer): bool {.cdecl, raises: [], gcsafe.}
  timerEvent*: proc(self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  childEvent*: proc(self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  customEvent*: proc(self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  connectNotify*: proc(self: pointer, signal: pointer): void {.cdecl, raises: [], gcsafe.}
  disconnectNotify*: proc(self: pointer, signal: pointer): void {.cdecl, raises: [], gcsafe.}
proc fcQLineEdit_virtualbase_metaObject(self: pointer): pointer {.importc: "QLineEdit_virtualbase_metaObject".}
proc fcQLineEdit_virtualbase_metacast(self: pointer, param1: cstring): pointer {.importc: "QLineEdit_virtualbase_metacast".}
proc fcQLineEdit_virtualbase_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.importc: "QLineEdit_virtualbase_metacall".}
proc fcQLineEdit_virtualbase_sizeHint(self: pointer): pointer {.importc: "QLineEdit_virtualbase_sizeHint".}
proc fcQLineEdit_virtualbase_minimumSizeHint(self: pointer): pointer {.importc: "QLineEdit_virtualbase_minimumSizeHint".}
proc fcQLineEdit_virtualbase_mousePressEvent(self: pointer, param1: pointer): void {.importc: "QLineEdit_virtualbase_mousePressEvent".}
proc fcQLineEdit_virtualbase_mouseMoveEvent(self: pointer, param1: pointer): void {.importc: "QLineEdit_virtualbase_mouseMoveEvent".}
proc fcQLineEdit_virtualbase_mouseReleaseEvent(self: pointer, param1: pointer): void {.importc: "QLineEdit_virtualbase_mouseReleaseEvent".}
proc fcQLineEdit_virtualbase_mouseDoubleClickEvent(self: pointer, param1: pointer): void {.importc: "QLineEdit_virtualbase_mouseDoubleClickEvent".}
proc fcQLineEdit_virtualbase_keyPressEvent(self: pointer, param1: pointer): void {.importc: "QLineEdit_virtualbase_keyPressEvent".}
proc fcQLineEdit_virtualbase_focusInEvent(self: pointer, param1: pointer): void {.importc: "QLineEdit_virtualbase_focusInEvent".}
proc fcQLineEdit_virtualbase_focusOutEvent(self: pointer, param1: pointer): void {.importc: "QLineEdit_virtualbase_focusOutEvent".}
proc fcQLineEdit_virtualbase_paintEvent(self: pointer, param1: pointer): void {.importc: "QLineEdit_virtualbase_paintEvent".}
proc fcQLineEdit_virtualbase_dragEnterEvent(self: pointer, param1: pointer): void {.importc: "QLineEdit_virtualbase_dragEnterEvent".}
proc fcQLineEdit_virtualbase_dragMoveEvent(self: pointer, e: pointer): void {.importc: "QLineEdit_virtualbase_dragMoveEvent".}
proc fcQLineEdit_virtualbase_dragLeaveEvent(self: pointer, e: pointer): void {.importc: "QLineEdit_virtualbase_dragLeaveEvent".}
proc fcQLineEdit_virtualbase_dropEvent(self: pointer, param1: pointer): void {.importc: "QLineEdit_virtualbase_dropEvent".}
proc fcQLineEdit_virtualbase_changeEvent(self: pointer, param1: pointer): void {.importc: "QLineEdit_virtualbase_changeEvent".}
proc fcQLineEdit_virtualbase_contextMenuEvent(self: pointer, param1: pointer): void {.importc: "QLineEdit_virtualbase_contextMenuEvent".}
proc fcQLineEdit_virtualbase_inputMethodEvent(self: pointer, param1: pointer): void {.importc: "QLineEdit_virtualbase_inputMethodEvent".}
proc fcQLineEdit_virtualbase_inputMethodQuery(self: pointer, param1: cint): pointer {.importc: "QLineEdit_virtualbase_inputMethodQuery".}
proc fcQLineEdit_virtualbase_event(self: pointer, param1: pointer): bool {.importc: "QLineEdit_virtualbase_event".}
proc fcQLineEdit_virtualbase_devType(self: pointer): cint {.importc: "QLineEdit_virtualbase_devType".}
proc fcQLineEdit_virtualbase_setVisible(self: pointer, visible: bool): void {.importc: "QLineEdit_virtualbase_setVisible".}
proc fcQLineEdit_virtualbase_heightForWidth(self: pointer, param1: cint): cint {.importc: "QLineEdit_virtualbase_heightForWidth".}
proc fcQLineEdit_virtualbase_hasHeightForWidth(self: pointer): bool {.importc: "QLineEdit_virtualbase_hasHeightForWidth".}
proc fcQLineEdit_virtualbase_paintEngine(self: pointer): pointer {.importc: "QLineEdit_virtualbase_paintEngine".}
proc fcQLineEdit_virtualbase_wheelEvent(self: pointer, event: pointer): void {.importc: "QLineEdit_virtualbase_wheelEvent".}
proc fcQLineEdit_virtualbase_keyReleaseEvent(self: pointer, event: pointer): void {.importc: "QLineEdit_virtualbase_keyReleaseEvent".}
proc fcQLineEdit_virtualbase_enterEvent(self: pointer, event: pointer): void {.importc: "QLineEdit_virtualbase_enterEvent".}
proc fcQLineEdit_virtualbase_leaveEvent(self: pointer, event: pointer): void {.importc: "QLineEdit_virtualbase_leaveEvent".}
proc fcQLineEdit_virtualbase_moveEvent(self: pointer, event: pointer): void {.importc: "QLineEdit_virtualbase_moveEvent".}
proc fcQLineEdit_virtualbase_resizeEvent(self: pointer, event: pointer): void {.importc: "QLineEdit_virtualbase_resizeEvent".}
proc fcQLineEdit_virtualbase_closeEvent(self: pointer, event: pointer): void {.importc: "QLineEdit_virtualbase_closeEvent".}
proc fcQLineEdit_virtualbase_tabletEvent(self: pointer, event: pointer): void {.importc: "QLineEdit_virtualbase_tabletEvent".}
proc fcQLineEdit_virtualbase_actionEvent(self: pointer, event: pointer): void {.importc: "QLineEdit_virtualbase_actionEvent".}
proc fcQLineEdit_virtualbase_showEvent(self: pointer, event: pointer): void {.importc: "QLineEdit_virtualbase_showEvent".}
proc fcQLineEdit_virtualbase_hideEvent(self: pointer, event: pointer): void {.importc: "QLineEdit_virtualbase_hideEvent".}
proc fcQLineEdit_virtualbase_nativeEvent(self: pointer, eventType: struct_miqt_string, message: pointer, resultVal: ptr clong): bool {.importc: "QLineEdit_virtualbase_nativeEvent".}
proc fcQLineEdit_virtualbase_metric(self: pointer, param1: cint): cint {.importc: "QLineEdit_virtualbase_metric".}
proc fcQLineEdit_virtualbase_initPainter(self: pointer, painter: pointer): void {.importc: "QLineEdit_virtualbase_initPainter".}
proc fcQLineEdit_virtualbase_redirected(self: pointer, offset: pointer): pointer {.importc: "QLineEdit_virtualbase_redirected".}
proc fcQLineEdit_virtualbase_sharedPainter(self: pointer): pointer {.importc: "QLineEdit_virtualbase_sharedPainter".}
proc fcQLineEdit_virtualbase_focusNextPrevChild(self: pointer, next: bool): bool {.importc: "QLineEdit_virtualbase_focusNextPrevChild".}
proc fcQLineEdit_virtualbase_eventFilter(self: pointer, watched: pointer, event: pointer): bool {.importc: "QLineEdit_virtualbase_eventFilter".}
proc fcQLineEdit_virtualbase_timerEvent(self: pointer, event: pointer): void {.importc: "QLineEdit_virtualbase_timerEvent".}
proc fcQLineEdit_virtualbase_childEvent(self: pointer, event: pointer): void {.importc: "QLineEdit_virtualbase_childEvent".}
proc fcQLineEdit_virtualbase_customEvent(self: pointer, event: pointer): void {.importc: "QLineEdit_virtualbase_customEvent".}
proc fcQLineEdit_virtualbase_connectNotify(self: pointer, signal: pointer): void {.importc: "QLineEdit_virtualbase_connectNotify".}
proc fcQLineEdit_virtualbase_disconnectNotify(self: pointer, signal: pointer): void {.importc: "QLineEdit_virtualbase_disconnectNotify".}
proc fcQLineEdit_protectedbase_initStyleOption(self: pointer, option: pointer): void {.importc: "QLineEdit_protectedbase_initStyleOption".}
proc fcQLineEdit_protectedbase_cursorRect(self: pointer): pointer {.importc: "QLineEdit_protectedbase_cursorRect".}
proc fcQLineEdit_protectedbase_updateMicroFocus(self: pointer): void {.importc: "QLineEdit_protectedbase_updateMicroFocus".}
proc fcQLineEdit_protectedbase_create(self: pointer): void {.importc: "QLineEdit_protectedbase_create".}
proc fcQLineEdit_protectedbase_destroy(self: pointer): void {.importc: "QLineEdit_protectedbase_destroy".}
proc fcQLineEdit_protectedbase_focusNextChild(self: pointer): bool {.importc: "QLineEdit_protectedbase_focusNextChild".}
proc fcQLineEdit_protectedbase_focusPreviousChild(self: pointer): bool {.importc: "QLineEdit_protectedbase_focusPreviousChild".}
proc fcQLineEdit_protectedbase_sender(self: pointer): pointer {.importc: "QLineEdit_protectedbase_sender".}
proc fcQLineEdit_protectedbase_senderSignalIndex(self: pointer): cint {.importc: "QLineEdit_protectedbase_senderSignalIndex".}
proc fcQLineEdit_protectedbase_receivers(self: pointer, signal: cstring): cint {.importc: "QLineEdit_protectedbase_receivers".}
proc fcQLineEdit_protectedbase_isSignalConnected(self: pointer, signal: pointer): bool {.importc: "QLineEdit_protectedbase_isSignalConnected".}
proc fcQLineEdit_new(vtbl, vdata: pointer, parent: pointer): ptr cQLineEdit {.importc: "QLineEdit_new".}
proc fcQLineEdit_new2(vtbl, vdata: pointer): ptr cQLineEdit {.importc: "QLineEdit_new2".}
proc fcQLineEdit_new3(vtbl, vdata: pointer, param1: struct_miqt_string): ptr cQLineEdit {.importc: "QLineEdit_new3".}
proc fcQLineEdit_new4(vtbl, vdata: pointer, param1: struct_miqt_string, parent: pointer): ptr cQLineEdit {.importc: "QLineEdit_new4".}
proc fcQLineEdit_staticMetaObject(): pointer {.importc: "QLineEdit_staticMetaObject".}

proc metaObject*(self: gen_qlineedit_types.QLineEdit): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQLineEdit_metaObject(self.h), owned: false)

proc metacast*(self: gen_qlineedit_types.QLineEdit, param1: cstring): pointer =
  fcQLineEdit_metacast(self.h, param1)

proc metacall*(self: gen_qlineedit_types.QLineEdit, param1: cint, param2: cint, param3: pointer): cint =
  fcQLineEdit_metacall(self.h, cint(param1), param2, param3)

proc tr*(_: type gen_qlineedit_types.QLineEdit, s: cstring): string =
  let v_ms = fcQLineEdit_tr(s)
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

proc trUtf8*(_: type gen_qlineedit_types.QLineEdit, s: cstring): string =
  let v_ms = fcQLineEdit_trUtf8(s)
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

proc text*(self: gen_qlineedit_types.QLineEdit): string =
  let v_ms = fcQLineEdit_text(self.h)
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

proc displayText*(self: gen_qlineedit_types.QLineEdit): string =
  let v_ms = fcQLineEdit_displayText(self.h)
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

proc placeholderText*(self: gen_qlineedit_types.QLineEdit): string =
  let v_ms = fcQLineEdit_placeholderText(self.h)
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

proc setPlaceholderText*(self: gen_qlineedit_types.QLineEdit, placeholderText: openArray[char]): void =
  fcQLineEdit_setPlaceholderText(self.h, struct_miqt_string(data: if len(placeholderText) > 0: addr placeholderText[0] else: nil, len: csize_t(len(placeholderText))))

proc maxLength*(self: gen_qlineedit_types.QLineEdit): cint =
  fcQLineEdit_maxLength(self.h)

proc setMaxLength*(self: gen_qlineedit_types.QLineEdit, maxLength: cint): void =
  fcQLineEdit_setMaxLength(self.h, maxLength)

proc setFrame*(self: gen_qlineedit_types.QLineEdit, frame: bool): void =
  fcQLineEdit_setFrame(self.h, frame)

proc hasFrame*(self: gen_qlineedit_types.QLineEdit): bool =
  fcQLineEdit_hasFrame(self.h)

proc setClearButtonEnabled*(self: gen_qlineedit_types.QLineEdit, enable: bool): void =
  fcQLineEdit_setClearButtonEnabled(self.h, enable)

proc isClearButtonEnabled*(self: gen_qlineedit_types.QLineEdit): bool =
  fcQLineEdit_isClearButtonEnabled(self.h)

proc echoMode*(self: gen_qlineedit_types.QLineEdit): cint =
  cint(fcQLineEdit_echoMode(self.h))

proc setEchoMode*(self: gen_qlineedit_types.QLineEdit, echoMode: cint): void =
  fcQLineEdit_setEchoMode(self.h, cint(echoMode))

proc isReadOnly*(self: gen_qlineedit_types.QLineEdit): bool =
  fcQLineEdit_isReadOnly(self.h)

proc setReadOnly*(self: gen_qlineedit_types.QLineEdit, readOnly: bool): void =
  fcQLineEdit_setReadOnly(self.h, readOnly)

proc setValidator*(self: gen_qlineedit_types.QLineEdit, validator: gen_qvalidator_types.QValidator): void =
  fcQLineEdit_setValidator(self.h, validator.h)

proc validator*(self: gen_qlineedit_types.QLineEdit): gen_qvalidator_types.QValidator =
  gen_qvalidator_types.QValidator(h: fcQLineEdit_validator(self.h), owned: false)

proc setCompleter*(self: gen_qlineedit_types.QLineEdit, completer: gen_qcompleter_types.QCompleter): void =
  fcQLineEdit_setCompleter(self.h, completer.h)

proc completer*(self: gen_qlineedit_types.QLineEdit): gen_qcompleter_types.QCompleter =
  gen_qcompleter_types.QCompleter(h: fcQLineEdit_completer(self.h), owned: false)

proc sizeHint*(self: gen_qlineedit_types.QLineEdit): gen_qsize_types.QSize =
  gen_qsize_types.QSize(h: fcQLineEdit_sizeHint(self.h), owned: true)

proc minimumSizeHint*(self: gen_qlineedit_types.QLineEdit): gen_qsize_types.QSize =
  gen_qsize_types.QSize(h: fcQLineEdit_minimumSizeHint(self.h), owned: true)

proc cursorPosition*(self: gen_qlineedit_types.QLineEdit): cint =
  fcQLineEdit_cursorPosition(self.h)

proc setCursorPosition*(self: gen_qlineedit_types.QLineEdit, cursorPosition: cint): void =
  fcQLineEdit_setCursorPosition(self.h, cursorPosition)

proc cursorPositionAt*(self: gen_qlineedit_types.QLineEdit, pos: gen_qpoint_types.QPoint): cint =
  fcQLineEdit_cursorPositionAt(self.h, pos.h)

proc setAlignment*(self: gen_qlineedit_types.QLineEdit, flag: cint): void =
  fcQLineEdit_setAlignment(self.h, cint(flag))

proc alignment*(self: gen_qlineedit_types.QLineEdit): cint =
  cint(fcQLineEdit_alignment(self.h))

proc cursorForward*(self: gen_qlineedit_types.QLineEdit, mark: bool): void =
  fcQLineEdit_cursorForward(self.h, mark)

proc cursorBackward*(self: gen_qlineedit_types.QLineEdit, mark: bool): void =
  fcQLineEdit_cursorBackward(self.h, mark)

proc cursorWordForward*(self: gen_qlineedit_types.QLineEdit, mark: bool): void =
  fcQLineEdit_cursorWordForward(self.h, mark)

proc cursorWordBackward*(self: gen_qlineedit_types.QLineEdit, mark: bool): void =
  fcQLineEdit_cursorWordBackward(self.h, mark)

proc backspace*(self: gen_qlineedit_types.QLineEdit): void =
  fcQLineEdit_backspace(self.h)

proc del*(self: gen_qlineedit_types.QLineEdit): void =
  fcQLineEdit_del(self.h)

proc home*(self: gen_qlineedit_types.QLineEdit, mark: bool): void =
  fcQLineEdit_home(self.h, mark)

proc endX*(self: gen_qlineedit_types.QLineEdit, mark: bool): void =
  fcQLineEdit_endX(self.h, mark)

proc isModified*(self: gen_qlineedit_types.QLineEdit): bool =
  fcQLineEdit_isModified(self.h)

proc setModified*(self: gen_qlineedit_types.QLineEdit, modified: bool): void =
  fcQLineEdit_setModified(self.h, modified)

proc setSelection*(self: gen_qlineedit_types.QLineEdit, param1: cint, param2: cint): void =
  fcQLineEdit_setSelection(self.h, param1, param2)

proc hasSelectedText*(self: gen_qlineedit_types.QLineEdit): bool =
  fcQLineEdit_hasSelectedText(self.h)

proc selectedText*(self: gen_qlineedit_types.QLineEdit): string =
  let v_ms = fcQLineEdit_selectedText(self.h)
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

proc selectionStart*(self: gen_qlineedit_types.QLineEdit): cint =
  fcQLineEdit_selectionStart(self.h)

proc selectionEnd*(self: gen_qlineedit_types.QLineEdit): cint =
  fcQLineEdit_selectionEnd(self.h)

proc selectionLength*(self: gen_qlineedit_types.QLineEdit): cint =
  fcQLineEdit_selectionLength(self.h)

proc isUndoAvailable*(self: gen_qlineedit_types.QLineEdit): bool =
  fcQLineEdit_isUndoAvailable(self.h)

proc isRedoAvailable*(self: gen_qlineedit_types.QLineEdit): bool =
  fcQLineEdit_isRedoAvailable(self.h)

proc setDragEnabled*(self: gen_qlineedit_types.QLineEdit, b: bool): void =
  fcQLineEdit_setDragEnabled(self.h, b)

proc dragEnabled*(self: gen_qlineedit_types.QLineEdit): bool =
  fcQLineEdit_dragEnabled(self.h)

proc setCursorMoveStyle*(self: gen_qlineedit_types.QLineEdit, style: cint): void =
  fcQLineEdit_setCursorMoveStyle(self.h, cint(style))

proc cursorMoveStyle*(self: gen_qlineedit_types.QLineEdit): cint =
  cint(fcQLineEdit_cursorMoveStyle(self.h))

proc inputMask*(self: gen_qlineedit_types.QLineEdit): string =
  let v_ms = fcQLineEdit_inputMask(self.h)
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

proc setInputMask*(self: gen_qlineedit_types.QLineEdit, inputMask: openArray[char]): void =
  fcQLineEdit_setInputMask(self.h, struct_miqt_string(data: if len(inputMask) > 0: addr inputMask[0] else: nil, len: csize_t(len(inputMask))))

proc hasAcceptableInput*(self: gen_qlineedit_types.QLineEdit): bool =
  fcQLineEdit_hasAcceptableInput(self.h)

proc setTextMargins*(self: gen_qlineedit_types.QLineEdit, left: cint, top: cint, right: cint, bottom: cint): void =
  fcQLineEdit_setTextMargins(self.h, left, top, right, bottom)

proc setTextMargins*(self: gen_qlineedit_types.QLineEdit, margins: gen_qmargins_types.QMargins): void =
  fcQLineEdit_setTextMarginsWithMargins(self.h, margins.h)

proc getTextMargins*(self: gen_qlineedit_types.QLineEdit, left: ptr cint, top: ptr cint, right: ptr cint, bottom: ptr cint): void =
  fcQLineEdit_getTextMargins(self.h, left, top, right, bottom)

proc textMargins*(self: gen_qlineedit_types.QLineEdit): gen_qmargins_types.QMargins =
  gen_qmargins_types.QMargins(h: fcQLineEdit_textMargins(self.h), owned: true)

proc addAction*(self: gen_qlineedit_types.QLineEdit, action: gen_qaction_types.QAction, position: cint): void =
  fcQLineEdit_addAction(self.h, action.h, cint(position))

proc addAction*(self: gen_qlineedit_types.QLineEdit, icon: gen_qicon_types.QIcon, position: cint): gen_qaction_types.QAction =
  gen_qaction_types.QAction(h: fcQLineEdit_addAction2(self.h, icon.h, cint(position)), owned: false)

proc setText*(self: gen_qlineedit_types.QLineEdit, text: openArray[char]): void =
  fcQLineEdit_setText(self.h, struct_miqt_string(data: if len(text) > 0: addr text[0] else: nil, len: csize_t(len(text))))

proc clear*(self: gen_qlineedit_types.QLineEdit): void =
  fcQLineEdit_clear(self.h)

proc selectAll*(self: gen_qlineedit_types.QLineEdit): void =
  fcQLineEdit_selectAll(self.h)

proc undo*(self: gen_qlineedit_types.QLineEdit): void =
  fcQLineEdit_undo(self.h)

proc redo*(self: gen_qlineedit_types.QLineEdit): void =
  fcQLineEdit_redo(self.h)

proc cut*(self: gen_qlineedit_types.QLineEdit): void =
  fcQLineEdit_cut(self.h)

proc copy*(self: gen_qlineedit_types.QLineEdit): void =
  fcQLineEdit_copy(self.h)

proc paste*(self: gen_qlineedit_types.QLineEdit): void =
  fcQLineEdit_paste(self.h)

proc deselect*(self: gen_qlineedit_types.QLineEdit): void =
  fcQLineEdit_deselect(self.h)

proc insert*(self: gen_qlineedit_types.QLineEdit, param1: openArray[char]): void =
  fcQLineEdit_insert(self.h, struct_miqt_string(data: if len(param1) > 0: addr param1[0] else: nil, len: csize_t(len(param1))))

proc createStandardContextMenu*(self: gen_qlineedit_types.QLineEdit): gen_qmenu_types.QMenu =
  gen_qmenu_types.QMenu(h: fcQLineEdit_createStandardContextMenu(self.h), owned: false)

proc textChanged*(self: gen_qlineedit_types.QLineEdit, param1: openArray[char]): void =
  fcQLineEdit_textChanged(self.h, struct_miqt_string(data: if len(param1) > 0: addr param1[0] else: nil, len: csize_t(len(param1))))

type QLineEdittextChangedSlot* = proc(param1: openArray[char])
proc fcQLineEdit_slot_callback_textChanged(slot: int, param1: struct_miqt_string) {.cdecl.} =
  let nimfunc = cast[ptr QLineEdittextChangedSlot](cast[pointer](slot))
  let vparam1_ms = param1
  let vparam1x_ret = string.fromBytes(vparam1_ms)
  c_free(vparam1_ms.data)
  let slotval1 = vparam1x_ret

  nimfunc[](slotval1)

proc fcQLineEdit_slot_callback_textChanged_release(slot: int) {.cdecl.} =
  let nimfunc = cast[ref QLineEdittextChangedSlot](cast[pointer](slot))
  GC_unref(nimfunc)

proc onTextChanged*(self: gen_qlineedit_types.QLineEdit, slot: QLineEdittextChangedSlot) =
  var tmp = new QLineEdittextChangedSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQLineEdit_connect_textChanged(self.h, cast[int](addr tmp[]), fcQLineEdit_slot_callback_textChanged, fcQLineEdit_slot_callback_textChanged_release)

proc textEdited*(self: gen_qlineedit_types.QLineEdit, param1: openArray[char]): void =
  fcQLineEdit_textEdited(self.h, struct_miqt_string(data: if len(param1) > 0: addr param1[0] else: nil, len: csize_t(len(param1))))

type QLineEdittextEditedSlot* = proc(param1: openArray[char])
proc fcQLineEdit_slot_callback_textEdited(slot: int, param1: struct_miqt_string) {.cdecl.} =
  let nimfunc = cast[ptr QLineEdittextEditedSlot](cast[pointer](slot))
  let vparam1_ms = param1
  let vparam1x_ret = string.fromBytes(vparam1_ms)
  c_free(vparam1_ms.data)
  let slotval1 = vparam1x_ret

  nimfunc[](slotval1)

proc fcQLineEdit_slot_callback_textEdited_release(slot: int) {.cdecl.} =
  let nimfunc = cast[ref QLineEdittextEditedSlot](cast[pointer](slot))
  GC_unref(nimfunc)

proc onTextEdited*(self: gen_qlineedit_types.QLineEdit, slot: QLineEdittextEditedSlot) =
  var tmp = new QLineEdittextEditedSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQLineEdit_connect_textEdited(self.h, cast[int](addr tmp[]), fcQLineEdit_slot_callback_textEdited, fcQLineEdit_slot_callback_textEdited_release)

proc cursorPositionChanged*(self: gen_qlineedit_types.QLineEdit, param1: cint, param2: cint): void =
  fcQLineEdit_cursorPositionChanged(self.h, param1, param2)

type QLineEditcursorPositionChangedSlot* = proc(param1: cint, param2: cint)
proc fcQLineEdit_slot_callback_cursorPositionChanged(slot: int, param1: cint, param2: cint) {.cdecl.} =
  let nimfunc = cast[ptr QLineEditcursorPositionChangedSlot](cast[pointer](slot))
  let slotval1 = param1

  let slotval2 = param2

  nimfunc[](slotval1, slotval2)

proc fcQLineEdit_slot_callback_cursorPositionChanged_release(slot: int) {.cdecl.} =
  let nimfunc = cast[ref QLineEditcursorPositionChangedSlot](cast[pointer](slot))
  GC_unref(nimfunc)

proc onCursorPositionChanged*(self: gen_qlineedit_types.QLineEdit, slot: QLineEditcursorPositionChangedSlot) =
  var tmp = new QLineEditcursorPositionChangedSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQLineEdit_connect_cursorPositionChanged(self.h, cast[int](addr tmp[]), fcQLineEdit_slot_callback_cursorPositionChanged, fcQLineEdit_slot_callback_cursorPositionChanged_release)

proc returnPressed*(self: gen_qlineedit_types.QLineEdit): void =
  fcQLineEdit_returnPressed(self.h)

type QLineEditreturnPressedSlot* = proc()
proc fcQLineEdit_slot_callback_returnPressed(slot: int) {.cdecl.} =
  let nimfunc = cast[ptr QLineEditreturnPressedSlot](cast[pointer](slot))
  nimfunc[]()

proc fcQLineEdit_slot_callback_returnPressed_release(slot: int) {.cdecl.} =
  let nimfunc = cast[ref QLineEditreturnPressedSlot](cast[pointer](slot))
  GC_unref(nimfunc)

proc onReturnPressed*(self: gen_qlineedit_types.QLineEdit, slot: QLineEditreturnPressedSlot) =
  var tmp = new QLineEditreturnPressedSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQLineEdit_connect_returnPressed(self.h, cast[int](addr tmp[]), fcQLineEdit_slot_callback_returnPressed, fcQLineEdit_slot_callback_returnPressed_release)

proc editingFinished*(self: gen_qlineedit_types.QLineEdit): void =
  fcQLineEdit_editingFinished(self.h)

type QLineEditeditingFinishedSlot* = proc()
proc fcQLineEdit_slot_callback_editingFinished(slot: int) {.cdecl.} =
  let nimfunc = cast[ptr QLineEditeditingFinishedSlot](cast[pointer](slot))
  nimfunc[]()

proc fcQLineEdit_slot_callback_editingFinished_release(slot: int) {.cdecl.} =
  let nimfunc = cast[ref QLineEditeditingFinishedSlot](cast[pointer](slot))
  GC_unref(nimfunc)

proc onEditingFinished*(self: gen_qlineedit_types.QLineEdit, slot: QLineEditeditingFinishedSlot) =
  var tmp = new QLineEditeditingFinishedSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQLineEdit_connect_editingFinished(self.h, cast[int](addr tmp[]), fcQLineEdit_slot_callback_editingFinished, fcQLineEdit_slot_callback_editingFinished_release)

proc selectionChanged*(self: gen_qlineedit_types.QLineEdit): void =
  fcQLineEdit_selectionChanged(self.h)

type QLineEditselectionChangedSlot* = proc()
proc fcQLineEdit_slot_callback_selectionChanged(slot: int) {.cdecl.} =
  let nimfunc = cast[ptr QLineEditselectionChangedSlot](cast[pointer](slot))
  nimfunc[]()

proc fcQLineEdit_slot_callback_selectionChanged_release(slot: int) {.cdecl.} =
  let nimfunc = cast[ref QLineEditselectionChangedSlot](cast[pointer](slot))
  GC_unref(nimfunc)

proc onSelectionChanged*(self: gen_qlineedit_types.QLineEdit, slot: QLineEditselectionChangedSlot) =
  var tmp = new QLineEditselectionChangedSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQLineEdit_connect_selectionChanged(self.h, cast[int](addr tmp[]), fcQLineEdit_slot_callback_selectionChanged, fcQLineEdit_slot_callback_selectionChanged_release)

proc inputRejected*(self: gen_qlineedit_types.QLineEdit): void =
  fcQLineEdit_inputRejected(self.h)

type QLineEditinputRejectedSlot* = proc()
proc fcQLineEdit_slot_callback_inputRejected(slot: int) {.cdecl.} =
  let nimfunc = cast[ptr QLineEditinputRejectedSlot](cast[pointer](slot))
  nimfunc[]()

proc fcQLineEdit_slot_callback_inputRejected_release(slot: int) {.cdecl.} =
  let nimfunc = cast[ref QLineEditinputRejectedSlot](cast[pointer](slot))
  GC_unref(nimfunc)

proc onInputRejected*(self: gen_qlineedit_types.QLineEdit, slot: QLineEditinputRejectedSlot) =
  var tmp = new QLineEditinputRejectedSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQLineEdit_connect_inputRejected(self.h, cast[int](addr tmp[]), fcQLineEdit_slot_callback_inputRejected, fcQLineEdit_slot_callback_inputRejected_release)

proc inputMethodQuery*(self: gen_qlineedit_types.QLineEdit, param1: cint): gen_qvariant_types.QVariant =
  gen_qvariant_types.QVariant(h: fcQLineEdit_inputMethodQuery(self.h, cint(param1)), owned: true)

proc inputMethodQuery*(self: gen_qlineedit_types.QLineEdit, property: cint, argument: gen_qvariant_types.QVariant): gen_qvariant_types.QVariant =
  gen_qvariant_types.QVariant(h: fcQLineEdit_inputMethodQuery2(self.h, cint(property), argument.h), owned: true)

proc event*(self: gen_qlineedit_types.QLineEdit, param1: gen_qcoreevent_types.QEvent): bool =
  fcQLineEdit_event(self.h, param1.h)

proc tr*(_: type gen_qlineedit_types.QLineEdit, s: cstring, c: cstring): string =
  let v_ms = fcQLineEdit_tr2(s, c)
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

proc tr*(_: type gen_qlineedit_types.QLineEdit, s: cstring, c: cstring, n: cint): string =
  let v_ms = fcQLineEdit_tr3(s, c, n)
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

proc trUtf8*(_: type gen_qlineedit_types.QLineEdit, s: cstring, c: cstring): string =
  let v_ms = fcQLineEdit_trUtf82(s, c)
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

proc trUtf8*(_: type gen_qlineedit_types.QLineEdit, s: cstring, c: cstring, n: cint): string =
  let v_ms = fcQLineEdit_trUtf83(s, c, n)
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

proc cursorForward*(self: gen_qlineedit_types.QLineEdit, mark: bool, steps: cint): void =
  fcQLineEdit_cursorForward2(self.h, mark, steps)

proc cursorBackward*(self: gen_qlineedit_types.QLineEdit, mark: bool, steps: cint): void =
  fcQLineEdit_cursorBackward2(self.h, mark, steps)

type QLineEditmetaObjectProc* = proc(self: QLineEdit): gen_qobjectdefs_types.QMetaObject {.raises: [], gcsafe.}
type QLineEditmetacastProc* = proc(self: QLineEdit, param1: cstring): pointer {.raises: [], gcsafe.}
type QLineEditmetacallProc* = proc(self: QLineEdit, param1: cint, param2: cint, param3: pointer): cint {.raises: [], gcsafe.}
type QLineEditsizeHintProc* = proc(self: QLineEdit): gen_qsize_types.QSize {.raises: [], gcsafe.}
type QLineEditminimumSizeHintProc* = proc(self: QLineEdit): gen_qsize_types.QSize {.raises: [], gcsafe.}
type QLineEditmousePressEventProc* = proc(self: QLineEdit, param1: gen_qevent_types.QMouseEvent): void {.raises: [], gcsafe.}
type QLineEditmouseMoveEventProc* = proc(self: QLineEdit, param1: gen_qevent_types.QMouseEvent): void {.raises: [], gcsafe.}
type QLineEditmouseReleaseEventProc* = proc(self: QLineEdit, param1: gen_qevent_types.QMouseEvent): void {.raises: [], gcsafe.}
type QLineEditmouseDoubleClickEventProc* = proc(self: QLineEdit, param1: gen_qevent_types.QMouseEvent): void {.raises: [], gcsafe.}
type QLineEditkeyPressEventProc* = proc(self: QLineEdit, param1: gen_qevent_types.QKeyEvent): void {.raises: [], gcsafe.}
type QLineEditfocusInEventProc* = proc(self: QLineEdit, param1: gen_qevent_types.QFocusEvent): void {.raises: [], gcsafe.}
type QLineEditfocusOutEventProc* = proc(self: QLineEdit, param1: gen_qevent_types.QFocusEvent): void {.raises: [], gcsafe.}
type QLineEditpaintEventProc* = proc(self: QLineEdit, param1: gen_qevent_types.QPaintEvent): void {.raises: [], gcsafe.}
type QLineEditdragEnterEventProc* = proc(self: QLineEdit, param1: gen_qevent_types.QDragEnterEvent): void {.raises: [], gcsafe.}
type QLineEditdragMoveEventProc* = proc(self: QLineEdit, e: gen_qevent_types.QDragMoveEvent): void {.raises: [], gcsafe.}
type QLineEditdragLeaveEventProc* = proc(self: QLineEdit, e: gen_qevent_types.QDragLeaveEvent): void {.raises: [], gcsafe.}
type QLineEditdropEventProc* = proc(self: QLineEdit, param1: gen_qevent_types.QDropEvent): void {.raises: [], gcsafe.}
type QLineEditchangeEventProc* = proc(self: QLineEdit, param1: gen_qcoreevent_types.QEvent): void {.raises: [], gcsafe.}
type QLineEditcontextMenuEventProc* = proc(self: QLineEdit, param1: gen_qevent_types.QContextMenuEvent): void {.raises: [], gcsafe.}
type QLineEditinputMethodEventProc* = proc(self: QLineEdit, param1: gen_qevent_types.QInputMethodEvent): void {.raises: [], gcsafe.}
type QLineEditinputMethodQueryProc* = proc(self: QLineEdit, param1: cint): gen_qvariant_types.QVariant {.raises: [], gcsafe.}
type QLineEditeventProc* = proc(self: QLineEdit, param1: gen_qcoreevent_types.QEvent): bool {.raises: [], gcsafe.}
type QLineEditdevTypeProc* = proc(self: QLineEdit): cint {.raises: [], gcsafe.}
type QLineEditsetVisibleProc* = proc(self: QLineEdit, visible: bool): void {.raises: [], gcsafe.}
type QLineEditheightForWidthProc* = proc(self: QLineEdit, param1: cint): cint {.raises: [], gcsafe.}
type QLineEdithasHeightForWidthProc* = proc(self: QLineEdit): bool {.raises: [], gcsafe.}
type QLineEditpaintEngineProc* = proc(self: QLineEdit): gen_qpaintengine_types.QPaintEngine {.raises: [], gcsafe.}
type QLineEditwheelEventProc* = proc(self: QLineEdit, event: gen_qevent_types.QWheelEvent): void {.raises: [], gcsafe.}
type QLineEditkeyReleaseEventProc* = proc(self: QLineEdit, event: gen_qevent_types.QKeyEvent): void {.raises: [], gcsafe.}
type QLineEditenterEventProc* = proc(self: QLineEdit, event: gen_qcoreevent_types.QEvent): void {.raises: [], gcsafe.}
type QLineEditleaveEventProc* = proc(self: QLineEdit, event: gen_qcoreevent_types.QEvent): void {.raises: [], gcsafe.}
type QLineEditmoveEventProc* = proc(self: QLineEdit, event: gen_qevent_types.QMoveEvent): void {.raises: [], gcsafe.}
type QLineEditresizeEventProc* = proc(self: QLineEdit, event: gen_qevent_types.QResizeEvent): void {.raises: [], gcsafe.}
type QLineEditcloseEventProc* = proc(self: QLineEdit, event: gen_qevent_types.QCloseEvent): void {.raises: [], gcsafe.}
type QLineEdittabletEventProc* = proc(self: QLineEdit, event: gen_qevent_types.QTabletEvent): void {.raises: [], gcsafe.}
type QLineEditactionEventProc* = proc(self: QLineEdit, event: gen_qevent_types.QActionEvent): void {.raises: [], gcsafe.}
type QLineEditshowEventProc* = proc(self: QLineEdit, event: gen_qevent_types.QShowEvent): void {.raises: [], gcsafe.}
type QLineEdithideEventProc* = proc(self: QLineEdit, event: gen_qevent_types.QHideEvent): void {.raises: [], gcsafe.}
type QLineEditnativeEventProc* = proc(self: QLineEdit, eventType: openArray[byte], message: pointer, resultVal: ptr clong): bool {.raises: [], gcsafe.}
type QLineEditmetricProc* = proc(self: QLineEdit, param1: cint): cint {.raises: [], gcsafe.}
type QLineEditinitPainterProc* = proc(self: QLineEdit, painter: gen_qpainter_types.QPainter): void {.raises: [], gcsafe.}
type QLineEditredirectedProc* = proc(self: QLineEdit, offset: gen_qpoint_types.QPoint): gen_qpaintdevice_types.QPaintDevice {.raises: [], gcsafe.}
type QLineEditsharedPainterProc* = proc(self: QLineEdit): gen_qpainter_types.QPainter {.raises: [], gcsafe.}
type QLineEditfocusNextPrevChildProc* = proc(self: QLineEdit, next: bool): bool {.raises: [], gcsafe.}
type QLineEditeventFilterProc* = proc(self: QLineEdit, watched: gen_qobject_types.QObject, event: gen_qcoreevent_types.QEvent): bool {.raises: [], gcsafe.}
type QLineEdittimerEventProc* = proc(self: QLineEdit, event: gen_qcoreevent_types.QTimerEvent): void {.raises: [], gcsafe.}
type QLineEditchildEventProc* = proc(self: QLineEdit, event: gen_qcoreevent_types.QChildEvent): void {.raises: [], gcsafe.}
type QLineEditcustomEventProc* = proc(self: QLineEdit, event: gen_qcoreevent_types.QEvent): void {.raises: [], gcsafe.}
type QLineEditconnectNotifyProc* = proc(self: QLineEdit, signal: gen_qmetaobject_types.QMetaMethod): void {.raises: [], gcsafe.}
type QLineEditdisconnectNotifyProc* = proc(self: QLineEdit, signal: gen_qmetaobject_types.QMetaMethod): void {.raises: [], gcsafe.}

type QLineEditVTable* {.inheritable, pure.} = object
  vtbl: cQLineEditVTable
  metaObject*: QLineEditmetaObjectProc
  metacast*: QLineEditmetacastProc
  metacall*: QLineEditmetacallProc
  sizeHint*: QLineEditsizeHintProc
  minimumSizeHint*: QLineEditminimumSizeHintProc
  mousePressEvent*: QLineEditmousePressEventProc
  mouseMoveEvent*: QLineEditmouseMoveEventProc
  mouseReleaseEvent*: QLineEditmouseReleaseEventProc
  mouseDoubleClickEvent*: QLineEditmouseDoubleClickEventProc
  keyPressEvent*: QLineEditkeyPressEventProc
  focusInEvent*: QLineEditfocusInEventProc
  focusOutEvent*: QLineEditfocusOutEventProc
  paintEvent*: QLineEditpaintEventProc
  dragEnterEvent*: QLineEditdragEnterEventProc
  dragMoveEvent*: QLineEditdragMoveEventProc
  dragLeaveEvent*: QLineEditdragLeaveEventProc
  dropEvent*: QLineEditdropEventProc
  changeEvent*: QLineEditchangeEventProc
  contextMenuEvent*: QLineEditcontextMenuEventProc
  inputMethodEvent*: QLineEditinputMethodEventProc
  inputMethodQuery*: QLineEditinputMethodQueryProc
  event*: QLineEditeventProc
  devType*: QLineEditdevTypeProc
  setVisible*: QLineEditsetVisibleProc
  heightForWidth*: QLineEditheightForWidthProc
  hasHeightForWidth*: QLineEdithasHeightForWidthProc
  paintEngine*: QLineEditpaintEngineProc
  wheelEvent*: QLineEditwheelEventProc
  keyReleaseEvent*: QLineEditkeyReleaseEventProc
  enterEvent*: QLineEditenterEventProc
  leaveEvent*: QLineEditleaveEventProc
  moveEvent*: QLineEditmoveEventProc
  resizeEvent*: QLineEditresizeEventProc
  closeEvent*: QLineEditcloseEventProc
  tabletEvent*: QLineEdittabletEventProc
  actionEvent*: QLineEditactionEventProc
  showEvent*: QLineEditshowEventProc
  hideEvent*: QLineEdithideEventProc
  nativeEvent*: QLineEditnativeEventProc
  metric*: QLineEditmetricProc
  initPainter*: QLineEditinitPainterProc
  redirected*: QLineEditredirectedProc
  sharedPainter*: QLineEditsharedPainterProc
  focusNextPrevChild*: QLineEditfocusNextPrevChildProc
  eventFilter*: QLineEditeventFilterProc
  timerEvent*: QLineEdittimerEventProc
  childEvent*: QLineEditchildEventProc
  customEvent*: QLineEditcustomEventProc
  connectNotify*: QLineEditconnectNotifyProc
  disconnectNotify*: QLineEditdisconnectNotifyProc

proc QLineEditmetaObject*(self: gen_qlineedit_types.QLineEdit): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQLineEdit_virtualbase_metaObject(self.h), owned: false)

proc QLineEditmetacast*(self: gen_qlineedit_types.QLineEdit, param1: cstring): pointer =
  fcQLineEdit_virtualbase_metacast(self.h, param1)

proc QLineEditmetacall*(self: gen_qlineedit_types.QLineEdit, param1: cint, param2: cint, param3: pointer): cint =
  fcQLineEdit_virtualbase_metacall(self.h, cint(param1), param2, param3)

proc QLineEditsizeHint*(self: gen_qlineedit_types.QLineEdit): gen_qsize_types.QSize =
  gen_qsize_types.QSize(h: fcQLineEdit_virtualbase_sizeHint(self.h), owned: true)

proc QLineEditminimumSizeHint*(self: gen_qlineedit_types.QLineEdit): gen_qsize_types.QSize =
  gen_qsize_types.QSize(h: fcQLineEdit_virtualbase_minimumSizeHint(self.h), owned: true)

proc QLineEditmousePressEvent*(self: gen_qlineedit_types.QLineEdit, param1: gen_qevent_types.QMouseEvent): void =
  fcQLineEdit_virtualbase_mousePressEvent(self.h, param1.h)

proc QLineEditmouseMoveEvent*(self: gen_qlineedit_types.QLineEdit, param1: gen_qevent_types.QMouseEvent): void =
  fcQLineEdit_virtualbase_mouseMoveEvent(self.h, param1.h)

proc QLineEditmouseReleaseEvent*(self: gen_qlineedit_types.QLineEdit, param1: gen_qevent_types.QMouseEvent): void =
  fcQLineEdit_virtualbase_mouseReleaseEvent(self.h, param1.h)

proc QLineEditmouseDoubleClickEvent*(self: gen_qlineedit_types.QLineEdit, param1: gen_qevent_types.QMouseEvent): void =
  fcQLineEdit_virtualbase_mouseDoubleClickEvent(self.h, param1.h)

proc QLineEditkeyPressEvent*(self: gen_qlineedit_types.QLineEdit, param1: gen_qevent_types.QKeyEvent): void =
  fcQLineEdit_virtualbase_keyPressEvent(self.h, param1.h)

proc QLineEditfocusInEvent*(self: gen_qlineedit_types.QLineEdit, param1: gen_qevent_types.QFocusEvent): void =
  fcQLineEdit_virtualbase_focusInEvent(self.h, param1.h)

proc QLineEditfocusOutEvent*(self: gen_qlineedit_types.QLineEdit, param1: gen_qevent_types.QFocusEvent): void =
  fcQLineEdit_virtualbase_focusOutEvent(self.h, param1.h)

proc QLineEditpaintEvent*(self: gen_qlineedit_types.QLineEdit, param1: gen_qevent_types.QPaintEvent): void =
  fcQLineEdit_virtualbase_paintEvent(self.h, param1.h)

proc QLineEditdragEnterEvent*(self: gen_qlineedit_types.QLineEdit, param1: gen_qevent_types.QDragEnterEvent): void =
  fcQLineEdit_virtualbase_dragEnterEvent(self.h, param1.h)

proc QLineEditdragMoveEvent*(self: gen_qlineedit_types.QLineEdit, e: gen_qevent_types.QDragMoveEvent): void =
  fcQLineEdit_virtualbase_dragMoveEvent(self.h, e.h)

proc QLineEditdragLeaveEvent*(self: gen_qlineedit_types.QLineEdit, e: gen_qevent_types.QDragLeaveEvent): void =
  fcQLineEdit_virtualbase_dragLeaveEvent(self.h, e.h)

proc QLineEditdropEvent*(self: gen_qlineedit_types.QLineEdit, param1: gen_qevent_types.QDropEvent): void =
  fcQLineEdit_virtualbase_dropEvent(self.h, param1.h)

proc QLineEditchangeEvent*(self: gen_qlineedit_types.QLineEdit, param1: gen_qcoreevent_types.QEvent): void =
  fcQLineEdit_virtualbase_changeEvent(self.h, param1.h)

proc QLineEditcontextMenuEvent*(self: gen_qlineedit_types.QLineEdit, param1: gen_qevent_types.QContextMenuEvent): void =
  fcQLineEdit_virtualbase_contextMenuEvent(self.h, param1.h)

proc QLineEditinputMethodEvent*(self: gen_qlineedit_types.QLineEdit, param1: gen_qevent_types.QInputMethodEvent): void =
  fcQLineEdit_virtualbase_inputMethodEvent(self.h, param1.h)

proc QLineEditinputMethodQuery*(self: gen_qlineedit_types.QLineEdit, param1: cint): gen_qvariant_types.QVariant =
  gen_qvariant_types.QVariant(h: fcQLineEdit_virtualbase_inputMethodQuery(self.h, cint(param1)), owned: true)

proc QLineEditevent*(self: gen_qlineedit_types.QLineEdit, param1: gen_qcoreevent_types.QEvent): bool =
  fcQLineEdit_virtualbase_event(self.h, param1.h)

proc QLineEditdevType*(self: gen_qlineedit_types.QLineEdit): cint =
  fcQLineEdit_virtualbase_devType(self.h)

proc QLineEditsetVisible*(self: gen_qlineedit_types.QLineEdit, visible: bool): void =
  fcQLineEdit_virtualbase_setVisible(self.h, visible)

proc QLineEditheightForWidth*(self: gen_qlineedit_types.QLineEdit, param1: cint): cint =
  fcQLineEdit_virtualbase_heightForWidth(self.h, param1)

proc QLineEdithasHeightForWidth*(self: gen_qlineedit_types.QLineEdit): bool =
  fcQLineEdit_virtualbase_hasHeightForWidth(self.h)

proc QLineEditpaintEngine*(self: gen_qlineedit_types.QLineEdit): gen_qpaintengine_types.QPaintEngine =
  gen_qpaintengine_types.QPaintEngine(h: fcQLineEdit_virtualbase_paintEngine(self.h), owned: false)

proc QLineEditwheelEvent*(self: gen_qlineedit_types.QLineEdit, event: gen_qevent_types.QWheelEvent): void =
  fcQLineEdit_virtualbase_wheelEvent(self.h, event.h)

proc QLineEditkeyReleaseEvent*(self: gen_qlineedit_types.QLineEdit, event: gen_qevent_types.QKeyEvent): void =
  fcQLineEdit_virtualbase_keyReleaseEvent(self.h, event.h)

proc QLineEditenterEvent*(self: gen_qlineedit_types.QLineEdit, event: gen_qcoreevent_types.QEvent): void =
  fcQLineEdit_virtualbase_enterEvent(self.h, event.h)

proc QLineEditleaveEvent*(self: gen_qlineedit_types.QLineEdit, event: gen_qcoreevent_types.QEvent): void =
  fcQLineEdit_virtualbase_leaveEvent(self.h, event.h)

proc QLineEditmoveEvent*(self: gen_qlineedit_types.QLineEdit, event: gen_qevent_types.QMoveEvent): void =
  fcQLineEdit_virtualbase_moveEvent(self.h, event.h)

proc QLineEditresizeEvent*(self: gen_qlineedit_types.QLineEdit, event: gen_qevent_types.QResizeEvent): void =
  fcQLineEdit_virtualbase_resizeEvent(self.h, event.h)

proc QLineEditcloseEvent*(self: gen_qlineedit_types.QLineEdit, event: gen_qevent_types.QCloseEvent): void =
  fcQLineEdit_virtualbase_closeEvent(self.h, event.h)

proc QLineEdittabletEvent*(self: gen_qlineedit_types.QLineEdit, event: gen_qevent_types.QTabletEvent): void =
  fcQLineEdit_virtualbase_tabletEvent(self.h, event.h)

proc QLineEditactionEvent*(self: gen_qlineedit_types.QLineEdit, event: gen_qevent_types.QActionEvent): void =
  fcQLineEdit_virtualbase_actionEvent(self.h, event.h)

proc QLineEditshowEvent*(self: gen_qlineedit_types.QLineEdit, event: gen_qevent_types.QShowEvent): void =
  fcQLineEdit_virtualbase_showEvent(self.h, event.h)

proc QLineEdithideEvent*(self: gen_qlineedit_types.QLineEdit, event: gen_qevent_types.QHideEvent): void =
  fcQLineEdit_virtualbase_hideEvent(self.h, event.h)

proc QLineEditnativeEvent*(self: gen_qlineedit_types.QLineEdit, eventType: openArray[byte], message: pointer, resultVal: ptr clong): bool =
  fcQLineEdit_virtualbase_nativeEvent(self.h, struct_miqt_string(data: cast[cstring](if len(eventType) == 0: nil else: unsafeAddr eventType[0]), len: csize_t(len(eventType))), message, resultVal)

proc QLineEditmetric*(self: gen_qlineedit_types.QLineEdit, param1: cint): cint =
  fcQLineEdit_virtualbase_metric(self.h, cint(param1))

proc QLineEditinitPainter*(self: gen_qlineedit_types.QLineEdit, painter: gen_qpainter_types.QPainter): void =
  fcQLineEdit_virtualbase_initPainter(self.h, painter.h)

proc QLineEditredirected*(self: gen_qlineedit_types.QLineEdit, offset: gen_qpoint_types.QPoint): gen_qpaintdevice_types.QPaintDevice =
  gen_qpaintdevice_types.QPaintDevice(h: fcQLineEdit_virtualbase_redirected(self.h, offset.h), owned: false)

proc QLineEditsharedPainter*(self: gen_qlineedit_types.QLineEdit): gen_qpainter_types.QPainter =
  gen_qpainter_types.QPainter(h: fcQLineEdit_virtualbase_sharedPainter(self.h), owned: false)

proc QLineEditfocusNextPrevChild*(self: gen_qlineedit_types.QLineEdit, next: bool): bool =
  fcQLineEdit_virtualbase_focusNextPrevChild(self.h, next)

proc QLineEditeventFilter*(self: gen_qlineedit_types.QLineEdit, watched: gen_qobject_types.QObject, event: gen_qcoreevent_types.QEvent): bool =
  fcQLineEdit_virtualbase_eventFilter(self.h, watched.h, event.h)

proc QLineEdittimerEvent*(self: gen_qlineedit_types.QLineEdit, event: gen_qcoreevent_types.QTimerEvent): void =
  fcQLineEdit_virtualbase_timerEvent(self.h, event.h)

proc QLineEditchildEvent*(self: gen_qlineedit_types.QLineEdit, event: gen_qcoreevent_types.QChildEvent): void =
  fcQLineEdit_virtualbase_childEvent(self.h, event.h)

proc QLineEditcustomEvent*(self: gen_qlineedit_types.QLineEdit, event: gen_qcoreevent_types.QEvent): void =
  fcQLineEdit_virtualbase_customEvent(self.h, event.h)

proc QLineEditconnectNotify*(self: gen_qlineedit_types.QLineEdit, signal: gen_qmetaobject_types.QMetaMethod): void =
  fcQLineEdit_virtualbase_connectNotify(self.h, signal.h)

proc QLineEditdisconnectNotify*(self: gen_qlineedit_types.QLineEdit, signal: gen_qmetaobject_types.QMetaMethod): void =
  fcQLineEdit_virtualbase_disconnectNotify(self.h, signal.h)


proc fcQLineEdit_vtable_callback_metaObject(self: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QLineEditVTable](fcQLineEdit_vdata(self))
  let self = QLineEdit(h: self)
  var virtualReturn = vtbl[].metaObject(self)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc fcQLineEdit_vtable_callback_metacast(self: pointer, param1: cstring): pointer {.cdecl.} =
  let vtbl = cast[ptr QLineEditVTable](fcQLineEdit_vdata(self))
  let self = QLineEdit(h: self)
  let slotval1 = (param1)
  var virtualReturn = vtbl[].metacast(self, slotval1)
  virtualReturn

proc fcQLineEdit_vtable_callback_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.cdecl.} =
  let vtbl = cast[ptr QLineEditVTable](fcQLineEdit_vdata(self))
  let self = QLineEdit(h: self)
  let slotval1 = cint(param1)
  let slotval2 = param2
  let slotval3 = param3
  var virtualReturn = vtbl[].metacall(self, slotval1, slotval2, slotval3)
  virtualReturn

proc fcQLineEdit_vtable_callback_sizeHint(self: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QLineEditVTable](fcQLineEdit_vdata(self))
  let self = QLineEdit(h: self)
  var virtualReturn = vtbl[].sizeHint(self)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc fcQLineEdit_vtable_callback_minimumSizeHint(self: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QLineEditVTable](fcQLineEdit_vdata(self))
  let self = QLineEdit(h: self)
  var virtualReturn = vtbl[].minimumSizeHint(self)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc fcQLineEdit_vtable_callback_mousePressEvent(self: pointer, param1: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QLineEditVTable](fcQLineEdit_vdata(self))
  let self = QLineEdit(h: self)
  let slotval1 = gen_qevent_types.QMouseEvent(h: param1, owned: false)
  vtbl[].mousePressEvent(self, slotval1)

proc fcQLineEdit_vtable_callback_mouseMoveEvent(self: pointer, param1: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QLineEditVTable](fcQLineEdit_vdata(self))
  let self = QLineEdit(h: self)
  let slotval1 = gen_qevent_types.QMouseEvent(h: param1, owned: false)
  vtbl[].mouseMoveEvent(self, slotval1)

proc fcQLineEdit_vtable_callback_mouseReleaseEvent(self: pointer, param1: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QLineEditVTable](fcQLineEdit_vdata(self))
  let self = QLineEdit(h: self)
  let slotval1 = gen_qevent_types.QMouseEvent(h: param1, owned: false)
  vtbl[].mouseReleaseEvent(self, slotval1)

proc fcQLineEdit_vtable_callback_mouseDoubleClickEvent(self: pointer, param1: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QLineEditVTable](fcQLineEdit_vdata(self))
  let self = QLineEdit(h: self)
  let slotval1 = gen_qevent_types.QMouseEvent(h: param1, owned: false)
  vtbl[].mouseDoubleClickEvent(self, slotval1)

proc fcQLineEdit_vtable_callback_keyPressEvent(self: pointer, param1: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QLineEditVTable](fcQLineEdit_vdata(self))
  let self = QLineEdit(h: self)
  let slotval1 = gen_qevent_types.QKeyEvent(h: param1, owned: false)
  vtbl[].keyPressEvent(self, slotval1)

proc fcQLineEdit_vtable_callback_focusInEvent(self: pointer, param1: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QLineEditVTable](fcQLineEdit_vdata(self))
  let self = QLineEdit(h: self)
  let slotval1 = gen_qevent_types.QFocusEvent(h: param1, owned: false)
  vtbl[].focusInEvent(self, slotval1)

proc fcQLineEdit_vtable_callback_focusOutEvent(self: pointer, param1: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QLineEditVTable](fcQLineEdit_vdata(self))
  let self = QLineEdit(h: self)
  let slotval1 = gen_qevent_types.QFocusEvent(h: param1, owned: false)
  vtbl[].focusOutEvent(self, slotval1)

proc fcQLineEdit_vtable_callback_paintEvent(self: pointer, param1: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QLineEditVTable](fcQLineEdit_vdata(self))
  let self = QLineEdit(h: self)
  let slotval1 = gen_qevent_types.QPaintEvent(h: param1, owned: false)
  vtbl[].paintEvent(self, slotval1)

proc fcQLineEdit_vtable_callback_dragEnterEvent(self: pointer, param1: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QLineEditVTable](fcQLineEdit_vdata(self))
  let self = QLineEdit(h: self)
  let slotval1 = gen_qevent_types.QDragEnterEvent(h: param1, owned: false)
  vtbl[].dragEnterEvent(self, slotval1)

proc fcQLineEdit_vtable_callback_dragMoveEvent(self: pointer, e: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QLineEditVTable](fcQLineEdit_vdata(self))
  let self = QLineEdit(h: self)
  let slotval1 = gen_qevent_types.QDragMoveEvent(h: e, owned: false)
  vtbl[].dragMoveEvent(self, slotval1)

proc fcQLineEdit_vtable_callback_dragLeaveEvent(self: pointer, e: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QLineEditVTable](fcQLineEdit_vdata(self))
  let self = QLineEdit(h: self)
  let slotval1 = gen_qevent_types.QDragLeaveEvent(h: e, owned: false)
  vtbl[].dragLeaveEvent(self, slotval1)

proc fcQLineEdit_vtable_callback_dropEvent(self: pointer, param1: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QLineEditVTable](fcQLineEdit_vdata(self))
  let self = QLineEdit(h: self)
  let slotval1 = gen_qevent_types.QDropEvent(h: param1, owned: false)
  vtbl[].dropEvent(self, slotval1)

proc fcQLineEdit_vtable_callback_changeEvent(self: pointer, param1: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QLineEditVTable](fcQLineEdit_vdata(self))
  let self = QLineEdit(h: self)
  let slotval1 = gen_qcoreevent_types.QEvent(h: param1, owned: false)
  vtbl[].changeEvent(self, slotval1)

proc fcQLineEdit_vtable_callback_contextMenuEvent(self: pointer, param1: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QLineEditVTable](fcQLineEdit_vdata(self))
  let self = QLineEdit(h: self)
  let slotval1 = gen_qevent_types.QContextMenuEvent(h: param1, owned: false)
  vtbl[].contextMenuEvent(self, slotval1)

proc fcQLineEdit_vtable_callback_inputMethodEvent(self: pointer, param1: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QLineEditVTable](fcQLineEdit_vdata(self))
  let self = QLineEdit(h: self)
  let slotval1 = gen_qevent_types.QInputMethodEvent(h: param1, owned: false)
  vtbl[].inputMethodEvent(self, slotval1)

proc fcQLineEdit_vtable_callback_inputMethodQuery(self: pointer, param1: cint): pointer {.cdecl.} =
  let vtbl = cast[ptr QLineEditVTable](fcQLineEdit_vdata(self))
  let self = QLineEdit(h: self)
  let slotval1 = cint(param1)
  var virtualReturn = vtbl[].inputMethodQuery(self, slotval1)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc fcQLineEdit_vtable_callback_event(self: pointer, param1: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QLineEditVTable](fcQLineEdit_vdata(self))
  let self = QLineEdit(h: self)
  let slotval1 = gen_qcoreevent_types.QEvent(h: param1, owned: false)
  var virtualReturn = vtbl[].event(self, slotval1)
  virtualReturn

proc fcQLineEdit_vtable_callback_devType(self: pointer): cint {.cdecl.} =
  let vtbl = cast[ptr QLineEditVTable](fcQLineEdit_vdata(self))
  let self = QLineEdit(h: self)
  var virtualReturn = vtbl[].devType(self)
  virtualReturn

proc fcQLineEdit_vtable_callback_setVisible(self: pointer, visible: bool): void {.cdecl.} =
  let vtbl = cast[ptr QLineEditVTable](fcQLineEdit_vdata(self))
  let self = QLineEdit(h: self)
  let slotval1 = visible
  vtbl[].setVisible(self, slotval1)

proc fcQLineEdit_vtable_callback_heightForWidth(self: pointer, param1: cint): cint {.cdecl.} =
  let vtbl = cast[ptr QLineEditVTable](fcQLineEdit_vdata(self))
  let self = QLineEdit(h: self)
  let slotval1 = param1
  var virtualReturn = vtbl[].heightForWidth(self, slotval1)
  virtualReturn

proc fcQLineEdit_vtable_callback_hasHeightForWidth(self: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QLineEditVTable](fcQLineEdit_vdata(self))
  let self = QLineEdit(h: self)
  var virtualReturn = vtbl[].hasHeightForWidth(self)
  virtualReturn

proc fcQLineEdit_vtable_callback_paintEngine(self: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QLineEditVTable](fcQLineEdit_vdata(self))
  let self = QLineEdit(h: self)
  var virtualReturn = vtbl[].paintEngine(self)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc fcQLineEdit_vtable_callback_wheelEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QLineEditVTable](fcQLineEdit_vdata(self))
  let self = QLineEdit(h: self)
  let slotval1 = gen_qevent_types.QWheelEvent(h: event, owned: false)
  vtbl[].wheelEvent(self, slotval1)

proc fcQLineEdit_vtable_callback_keyReleaseEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QLineEditVTable](fcQLineEdit_vdata(self))
  let self = QLineEdit(h: self)
  let slotval1 = gen_qevent_types.QKeyEvent(h: event, owned: false)
  vtbl[].keyReleaseEvent(self, slotval1)

proc fcQLineEdit_vtable_callback_enterEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QLineEditVTable](fcQLineEdit_vdata(self))
  let self = QLineEdit(h: self)
  let slotval1 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  vtbl[].enterEvent(self, slotval1)

proc fcQLineEdit_vtable_callback_leaveEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QLineEditVTable](fcQLineEdit_vdata(self))
  let self = QLineEdit(h: self)
  let slotval1 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  vtbl[].leaveEvent(self, slotval1)

proc fcQLineEdit_vtable_callback_moveEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QLineEditVTable](fcQLineEdit_vdata(self))
  let self = QLineEdit(h: self)
  let slotval1 = gen_qevent_types.QMoveEvent(h: event, owned: false)
  vtbl[].moveEvent(self, slotval1)

proc fcQLineEdit_vtable_callback_resizeEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QLineEditVTable](fcQLineEdit_vdata(self))
  let self = QLineEdit(h: self)
  let slotval1 = gen_qevent_types.QResizeEvent(h: event, owned: false)
  vtbl[].resizeEvent(self, slotval1)

proc fcQLineEdit_vtable_callback_closeEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QLineEditVTable](fcQLineEdit_vdata(self))
  let self = QLineEdit(h: self)
  let slotval1 = gen_qevent_types.QCloseEvent(h: event, owned: false)
  vtbl[].closeEvent(self, slotval1)

proc fcQLineEdit_vtable_callback_tabletEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QLineEditVTable](fcQLineEdit_vdata(self))
  let self = QLineEdit(h: self)
  let slotval1 = gen_qevent_types.QTabletEvent(h: event, owned: false)
  vtbl[].tabletEvent(self, slotval1)

proc fcQLineEdit_vtable_callback_actionEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QLineEditVTable](fcQLineEdit_vdata(self))
  let self = QLineEdit(h: self)
  let slotval1 = gen_qevent_types.QActionEvent(h: event, owned: false)
  vtbl[].actionEvent(self, slotval1)

proc fcQLineEdit_vtable_callback_showEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QLineEditVTable](fcQLineEdit_vdata(self))
  let self = QLineEdit(h: self)
  let slotval1 = gen_qevent_types.QShowEvent(h: event, owned: false)
  vtbl[].showEvent(self, slotval1)

proc fcQLineEdit_vtable_callback_hideEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QLineEditVTable](fcQLineEdit_vdata(self))
  let self = QLineEdit(h: self)
  let slotval1 = gen_qevent_types.QHideEvent(h: event, owned: false)
  vtbl[].hideEvent(self, slotval1)

proc fcQLineEdit_vtable_callback_nativeEvent(self: pointer, eventType: struct_miqt_string, message: pointer, resultVal: ptr clong): bool {.cdecl.} =
  let vtbl = cast[ptr QLineEditVTable](fcQLineEdit_vdata(self))
  let self = QLineEdit(h: self)
  var veventType_bytearray = eventType
  var veventTypex_ret = @(toOpenArray(cast[ptr UncheckedArray[byte]](veventType_bytearray.data), 0, int(veventType_bytearray.len)-1))
  c_free(veventType_bytearray.data)
  let slotval1 = veventTypex_ret
  let slotval2 = message
  let slotval3 = resultVal
  var virtualReturn = vtbl[].nativeEvent(self, slotval1, slotval2, slotval3)
  virtualReturn

proc fcQLineEdit_vtable_callback_metric(self: pointer, param1: cint): cint {.cdecl.} =
  let vtbl = cast[ptr QLineEditVTable](fcQLineEdit_vdata(self))
  let self = QLineEdit(h: self)
  let slotval1 = cint(param1)
  var virtualReturn = vtbl[].metric(self, slotval1)
  virtualReturn

proc fcQLineEdit_vtable_callback_initPainter(self: pointer, painter: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QLineEditVTable](fcQLineEdit_vdata(self))
  let self = QLineEdit(h: self)
  let slotval1 = gen_qpainter_types.QPainter(h: painter, owned: false)
  vtbl[].initPainter(self, slotval1)

proc fcQLineEdit_vtable_callback_redirected(self: pointer, offset: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QLineEditVTable](fcQLineEdit_vdata(self))
  let self = QLineEdit(h: self)
  let slotval1 = gen_qpoint_types.QPoint(h: offset, owned: false)
  var virtualReturn = vtbl[].redirected(self, slotval1)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc fcQLineEdit_vtable_callback_sharedPainter(self: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QLineEditVTable](fcQLineEdit_vdata(self))
  let self = QLineEdit(h: self)
  var virtualReturn = vtbl[].sharedPainter(self)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc fcQLineEdit_vtable_callback_focusNextPrevChild(self: pointer, next: bool): bool {.cdecl.} =
  let vtbl = cast[ptr QLineEditVTable](fcQLineEdit_vdata(self))
  let self = QLineEdit(h: self)
  let slotval1 = next
  var virtualReturn = vtbl[].focusNextPrevChild(self, slotval1)
  virtualReturn

proc fcQLineEdit_vtable_callback_eventFilter(self: pointer, watched: pointer, event: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QLineEditVTable](fcQLineEdit_vdata(self))
  let self = QLineEdit(h: self)
  let slotval1 = gen_qobject_types.QObject(h: watched, owned: false)
  let slotval2 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  var virtualReturn = vtbl[].eventFilter(self, slotval1, slotval2)
  virtualReturn

proc fcQLineEdit_vtable_callback_timerEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QLineEditVTable](fcQLineEdit_vdata(self))
  let self = QLineEdit(h: self)
  let slotval1 = gen_qcoreevent_types.QTimerEvent(h: event, owned: false)
  vtbl[].timerEvent(self, slotval1)

proc fcQLineEdit_vtable_callback_childEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QLineEditVTable](fcQLineEdit_vdata(self))
  let self = QLineEdit(h: self)
  let slotval1 = gen_qcoreevent_types.QChildEvent(h: event, owned: false)
  vtbl[].childEvent(self, slotval1)

proc fcQLineEdit_vtable_callback_customEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QLineEditVTable](fcQLineEdit_vdata(self))
  let self = QLineEdit(h: self)
  let slotval1 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  vtbl[].customEvent(self, slotval1)

proc fcQLineEdit_vtable_callback_connectNotify(self: pointer, signal: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QLineEditVTable](fcQLineEdit_vdata(self))
  let self = QLineEdit(h: self)
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal, owned: false)
  vtbl[].connectNotify(self, slotval1)

proc fcQLineEdit_vtable_callback_disconnectNotify(self: pointer, signal: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QLineEditVTable](fcQLineEdit_vdata(self))
  let self = QLineEdit(h: self)
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal, owned: false)
  vtbl[].disconnectNotify(self, slotval1)

type VirtualQLineEdit* {.inheritable.} = ref object of QLineEdit
  vtbl*: cQLineEditVTable

method metaObject*(self: VirtualQLineEdit): gen_qobjectdefs_types.QMetaObject {.base.} =
  QLineEditmetaObject(self[])
method metacast*(self: VirtualQLineEdit, param1: cstring): pointer {.base.} =
  QLineEditmetacast(self[], param1)
method metacall*(self: VirtualQLineEdit, param1: cint, param2: cint, param3: pointer): cint {.base.} =
  QLineEditmetacall(self[], param1, param2, param3)
method sizeHint*(self: VirtualQLineEdit): gen_qsize_types.QSize {.base.} =
  QLineEditsizeHint(self[])
method minimumSizeHint*(self: VirtualQLineEdit): gen_qsize_types.QSize {.base.} =
  QLineEditminimumSizeHint(self[])
method mousePressEvent*(self: VirtualQLineEdit, param1: gen_qevent_types.QMouseEvent): void {.base.} =
  QLineEditmousePressEvent(self[], param1)
method mouseMoveEvent*(self: VirtualQLineEdit, param1: gen_qevent_types.QMouseEvent): void {.base.} =
  QLineEditmouseMoveEvent(self[], param1)
method mouseReleaseEvent*(self: VirtualQLineEdit, param1: gen_qevent_types.QMouseEvent): void {.base.} =
  QLineEditmouseReleaseEvent(self[], param1)
method mouseDoubleClickEvent*(self: VirtualQLineEdit, param1: gen_qevent_types.QMouseEvent): void {.base.} =
  QLineEditmouseDoubleClickEvent(self[], param1)
method keyPressEvent*(self: VirtualQLineEdit, param1: gen_qevent_types.QKeyEvent): void {.base.} =
  QLineEditkeyPressEvent(self[], param1)
method focusInEvent*(self: VirtualQLineEdit, param1: gen_qevent_types.QFocusEvent): void {.base.} =
  QLineEditfocusInEvent(self[], param1)
method focusOutEvent*(self: VirtualQLineEdit, param1: gen_qevent_types.QFocusEvent): void {.base.} =
  QLineEditfocusOutEvent(self[], param1)
method paintEvent*(self: VirtualQLineEdit, param1: gen_qevent_types.QPaintEvent): void {.base.} =
  QLineEditpaintEvent(self[], param1)
method dragEnterEvent*(self: VirtualQLineEdit, param1: gen_qevent_types.QDragEnterEvent): void {.base.} =
  QLineEditdragEnterEvent(self[], param1)
method dragMoveEvent*(self: VirtualQLineEdit, e: gen_qevent_types.QDragMoveEvent): void {.base.} =
  QLineEditdragMoveEvent(self[], e)
method dragLeaveEvent*(self: VirtualQLineEdit, e: gen_qevent_types.QDragLeaveEvent): void {.base.} =
  QLineEditdragLeaveEvent(self[], e)
method dropEvent*(self: VirtualQLineEdit, param1: gen_qevent_types.QDropEvent): void {.base.} =
  QLineEditdropEvent(self[], param1)
method changeEvent*(self: VirtualQLineEdit, param1: gen_qcoreevent_types.QEvent): void {.base.} =
  QLineEditchangeEvent(self[], param1)
method contextMenuEvent*(self: VirtualQLineEdit, param1: gen_qevent_types.QContextMenuEvent): void {.base.} =
  QLineEditcontextMenuEvent(self[], param1)
method inputMethodEvent*(self: VirtualQLineEdit, param1: gen_qevent_types.QInputMethodEvent): void {.base.} =
  QLineEditinputMethodEvent(self[], param1)
method inputMethodQuery*(self: VirtualQLineEdit, param1: cint): gen_qvariant_types.QVariant {.base.} =
  QLineEditinputMethodQuery(self[], param1)
method event*(self: VirtualQLineEdit, param1: gen_qcoreevent_types.QEvent): bool {.base.} =
  QLineEditevent(self[], param1)
method devType*(self: VirtualQLineEdit): cint {.base.} =
  QLineEditdevType(self[])
method setVisible*(self: VirtualQLineEdit, visible: bool): void {.base.} =
  QLineEditsetVisible(self[], visible)
method heightForWidth*(self: VirtualQLineEdit, param1: cint): cint {.base.} =
  QLineEditheightForWidth(self[], param1)
method hasHeightForWidth*(self: VirtualQLineEdit): bool {.base.} =
  QLineEdithasHeightForWidth(self[])
method paintEngine*(self: VirtualQLineEdit): gen_qpaintengine_types.QPaintEngine {.base.} =
  QLineEditpaintEngine(self[])
method wheelEvent*(self: VirtualQLineEdit, event: gen_qevent_types.QWheelEvent): void {.base.} =
  QLineEditwheelEvent(self[], event)
method keyReleaseEvent*(self: VirtualQLineEdit, event: gen_qevent_types.QKeyEvent): void {.base.} =
  QLineEditkeyReleaseEvent(self[], event)
method enterEvent*(self: VirtualQLineEdit, event: gen_qcoreevent_types.QEvent): void {.base.} =
  QLineEditenterEvent(self[], event)
method leaveEvent*(self: VirtualQLineEdit, event: gen_qcoreevent_types.QEvent): void {.base.} =
  QLineEditleaveEvent(self[], event)
method moveEvent*(self: VirtualQLineEdit, event: gen_qevent_types.QMoveEvent): void {.base.} =
  QLineEditmoveEvent(self[], event)
method resizeEvent*(self: VirtualQLineEdit, event: gen_qevent_types.QResizeEvent): void {.base.} =
  QLineEditresizeEvent(self[], event)
method closeEvent*(self: VirtualQLineEdit, event: gen_qevent_types.QCloseEvent): void {.base.} =
  QLineEditcloseEvent(self[], event)
method tabletEvent*(self: VirtualQLineEdit, event: gen_qevent_types.QTabletEvent): void {.base.} =
  QLineEdittabletEvent(self[], event)
method actionEvent*(self: VirtualQLineEdit, event: gen_qevent_types.QActionEvent): void {.base.} =
  QLineEditactionEvent(self[], event)
method showEvent*(self: VirtualQLineEdit, event: gen_qevent_types.QShowEvent): void {.base.} =
  QLineEditshowEvent(self[], event)
method hideEvent*(self: VirtualQLineEdit, event: gen_qevent_types.QHideEvent): void {.base.} =
  QLineEdithideEvent(self[], event)
method nativeEvent*(self: VirtualQLineEdit, eventType: openArray[byte], message: pointer, resultVal: ptr clong): bool {.base.} =
  QLineEditnativeEvent(self[], eventType, message, resultVal)
method metric*(self: VirtualQLineEdit, param1: cint): cint {.base.} =
  QLineEditmetric(self[], param1)
method initPainter*(self: VirtualQLineEdit, painter: gen_qpainter_types.QPainter): void {.base.} =
  QLineEditinitPainter(self[], painter)
method redirected*(self: VirtualQLineEdit, offset: gen_qpoint_types.QPoint): gen_qpaintdevice_types.QPaintDevice {.base.} =
  QLineEditredirected(self[], offset)
method sharedPainter*(self: VirtualQLineEdit): gen_qpainter_types.QPainter {.base.} =
  QLineEditsharedPainter(self[])
method focusNextPrevChild*(self: VirtualQLineEdit, next: bool): bool {.base.} =
  QLineEditfocusNextPrevChild(self[], next)
method eventFilter*(self: VirtualQLineEdit, watched: gen_qobject_types.QObject, event: gen_qcoreevent_types.QEvent): bool {.base.} =
  QLineEditeventFilter(self[], watched, event)
method timerEvent*(self: VirtualQLineEdit, event: gen_qcoreevent_types.QTimerEvent): void {.base.} =
  QLineEdittimerEvent(self[], event)
method childEvent*(self: VirtualQLineEdit, event: gen_qcoreevent_types.QChildEvent): void {.base.} =
  QLineEditchildEvent(self[], event)
method customEvent*(self: VirtualQLineEdit, event: gen_qcoreevent_types.QEvent): void {.base.} =
  QLineEditcustomEvent(self[], event)
method connectNotify*(self: VirtualQLineEdit, signal: gen_qmetaobject_types.QMetaMethod): void {.base.} =
  QLineEditconnectNotify(self[], signal)
method disconnectNotify*(self: VirtualQLineEdit, signal: gen_qmetaobject_types.QMetaMethod): void {.base.} =
  QLineEditdisconnectNotify(self[], signal)

proc fcQLineEdit_method_callback_metaObject(self: pointer): pointer {.cdecl.} =
  let inst = cast[VirtualQLineEdit](fcQLineEdit_vdata(self))
  var virtualReturn = inst.metaObject()
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc fcQLineEdit_method_callback_metacast(self: pointer, param1: cstring): pointer {.cdecl.} =
  let inst = cast[VirtualQLineEdit](fcQLineEdit_vdata(self))
  let slotval1 = (param1)
  var virtualReturn = inst.metacast(slotval1)
  virtualReturn

proc fcQLineEdit_method_callback_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.cdecl.} =
  let inst = cast[VirtualQLineEdit](fcQLineEdit_vdata(self))
  let slotval1 = cint(param1)
  let slotval2 = param2
  let slotval3 = param3
  var virtualReturn = inst.metacall(slotval1, slotval2, slotval3)
  virtualReturn

proc fcQLineEdit_method_callback_sizeHint(self: pointer): pointer {.cdecl.} =
  let inst = cast[VirtualQLineEdit](fcQLineEdit_vdata(self))
  var virtualReturn = inst.sizeHint()
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc fcQLineEdit_method_callback_minimumSizeHint(self: pointer): pointer {.cdecl.} =
  let inst = cast[VirtualQLineEdit](fcQLineEdit_vdata(self))
  var virtualReturn = inst.minimumSizeHint()
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc fcQLineEdit_method_callback_mousePressEvent(self: pointer, param1: pointer): void {.cdecl.} =
  let inst = cast[VirtualQLineEdit](fcQLineEdit_vdata(self))
  let slotval1 = gen_qevent_types.QMouseEvent(h: param1, owned: false)
  inst.mousePressEvent(slotval1)

proc fcQLineEdit_method_callback_mouseMoveEvent(self: pointer, param1: pointer): void {.cdecl.} =
  let inst = cast[VirtualQLineEdit](fcQLineEdit_vdata(self))
  let slotval1 = gen_qevent_types.QMouseEvent(h: param1, owned: false)
  inst.mouseMoveEvent(slotval1)

proc fcQLineEdit_method_callback_mouseReleaseEvent(self: pointer, param1: pointer): void {.cdecl.} =
  let inst = cast[VirtualQLineEdit](fcQLineEdit_vdata(self))
  let slotval1 = gen_qevent_types.QMouseEvent(h: param1, owned: false)
  inst.mouseReleaseEvent(slotval1)

proc fcQLineEdit_method_callback_mouseDoubleClickEvent(self: pointer, param1: pointer): void {.cdecl.} =
  let inst = cast[VirtualQLineEdit](fcQLineEdit_vdata(self))
  let slotval1 = gen_qevent_types.QMouseEvent(h: param1, owned: false)
  inst.mouseDoubleClickEvent(slotval1)

proc fcQLineEdit_method_callback_keyPressEvent(self: pointer, param1: pointer): void {.cdecl.} =
  let inst = cast[VirtualQLineEdit](fcQLineEdit_vdata(self))
  let slotval1 = gen_qevent_types.QKeyEvent(h: param1, owned: false)
  inst.keyPressEvent(slotval1)

proc fcQLineEdit_method_callback_focusInEvent(self: pointer, param1: pointer): void {.cdecl.} =
  let inst = cast[VirtualQLineEdit](fcQLineEdit_vdata(self))
  let slotval1 = gen_qevent_types.QFocusEvent(h: param1, owned: false)
  inst.focusInEvent(slotval1)

proc fcQLineEdit_method_callback_focusOutEvent(self: pointer, param1: pointer): void {.cdecl.} =
  let inst = cast[VirtualQLineEdit](fcQLineEdit_vdata(self))
  let slotval1 = gen_qevent_types.QFocusEvent(h: param1, owned: false)
  inst.focusOutEvent(slotval1)

proc fcQLineEdit_method_callback_paintEvent(self: pointer, param1: pointer): void {.cdecl.} =
  let inst = cast[VirtualQLineEdit](fcQLineEdit_vdata(self))
  let slotval1 = gen_qevent_types.QPaintEvent(h: param1, owned: false)
  inst.paintEvent(slotval1)

proc fcQLineEdit_method_callback_dragEnterEvent(self: pointer, param1: pointer): void {.cdecl.} =
  let inst = cast[VirtualQLineEdit](fcQLineEdit_vdata(self))
  let slotval1 = gen_qevent_types.QDragEnterEvent(h: param1, owned: false)
  inst.dragEnterEvent(slotval1)

proc fcQLineEdit_method_callback_dragMoveEvent(self: pointer, e: pointer): void {.cdecl.} =
  let inst = cast[VirtualQLineEdit](fcQLineEdit_vdata(self))
  let slotval1 = gen_qevent_types.QDragMoveEvent(h: e, owned: false)
  inst.dragMoveEvent(slotval1)

proc fcQLineEdit_method_callback_dragLeaveEvent(self: pointer, e: pointer): void {.cdecl.} =
  let inst = cast[VirtualQLineEdit](fcQLineEdit_vdata(self))
  let slotval1 = gen_qevent_types.QDragLeaveEvent(h: e, owned: false)
  inst.dragLeaveEvent(slotval1)

proc fcQLineEdit_method_callback_dropEvent(self: pointer, param1: pointer): void {.cdecl.} =
  let inst = cast[VirtualQLineEdit](fcQLineEdit_vdata(self))
  let slotval1 = gen_qevent_types.QDropEvent(h: param1, owned: false)
  inst.dropEvent(slotval1)

proc fcQLineEdit_method_callback_changeEvent(self: pointer, param1: pointer): void {.cdecl.} =
  let inst = cast[VirtualQLineEdit](fcQLineEdit_vdata(self))
  let slotval1 = gen_qcoreevent_types.QEvent(h: param1, owned: false)
  inst.changeEvent(slotval1)

proc fcQLineEdit_method_callback_contextMenuEvent(self: pointer, param1: pointer): void {.cdecl.} =
  let inst = cast[VirtualQLineEdit](fcQLineEdit_vdata(self))
  let slotval1 = gen_qevent_types.QContextMenuEvent(h: param1, owned: false)
  inst.contextMenuEvent(slotval1)

proc fcQLineEdit_method_callback_inputMethodEvent(self: pointer, param1: pointer): void {.cdecl.} =
  let inst = cast[VirtualQLineEdit](fcQLineEdit_vdata(self))
  let slotval1 = gen_qevent_types.QInputMethodEvent(h: param1, owned: false)
  inst.inputMethodEvent(slotval1)

proc fcQLineEdit_method_callback_inputMethodQuery(self: pointer, param1: cint): pointer {.cdecl.} =
  let inst = cast[VirtualQLineEdit](fcQLineEdit_vdata(self))
  let slotval1 = cint(param1)
  var virtualReturn = inst.inputMethodQuery(slotval1)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc fcQLineEdit_method_callback_event(self: pointer, param1: pointer): bool {.cdecl.} =
  let inst = cast[VirtualQLineEdit](fcQLineEdit_vdata(self))
  let slotval1 = gen_qcoreevent_types.QEvent(h: param1, owned: false)
  var virtualReturn = inst.event(slotval1)
  virtualReturn

proc fcQLineEdit_method_callback_devType(self: pointer): cint {.cdecl.} =
  let inst = cast[VirtualQLineEdit](fcQLineEdit_vdata(self))
  var virtualReturn = inst.devType()
  virtualReturn

proc fcQLineEdit_method_callback_setVisible(self: pointer, visible: bool): void {.cdecl.} =
  let inst = cast[VirtualQLineEdit](fcQLineEdit_vdata(self))
  let slotval1 = visible
  inst.setVisible(slotval1)

proc fcQLineEdit_method_callback_heightForWidth(self: pointer, param1: cint): cint {.cdecl.} =
  let inst = cast[VirtualQLineEdit](fcQLineEdit_vdata(self))
  let slotval1 = param1
  var virtualReturn = inst.heightForWidth(slotval1)
  virtualReturn

proc fcQLineEdit_method_callback_hasHeightForWidth(self: pointer): bool {.cdecl.} =
  let inst = cast[VirtualQLineEdit](fcQLineEdit_vdata(self))
  var virtualReturn = inst.hasHeightForWidth()
  virtualReturn

proc fcQLineEdit_method_callback_paintEngine(self: pointer): pointer {.cdecl.} =
  let inst = cast[VirtualQLineEdit](fcQLineEdit_vdata(self))
  var virtualReturn = inst.paintEngine()
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc fcQLineEdit_method_callback_wheelEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQLineEdit](fcQLineEdit_vdata(self))
  let slotval1 = gen_qevent_types.QWheelEvent(h: event, owned: false)
  inst.wheelEvent(slotval1)

proc fcQLineEdit_method_callback_keyReleaseEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQLineEdit](fcQLineEdit_vdata(self))
  let slotval1 = gen_qevent_types.QKeyEvent(h: event, owned: false)
  inst.keyReleaseEvent(slotval1)

proc fcQLineEdit_method_callback_enterEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQLineEdit](fcQLineEdit_vdata(self))
  let slotval1 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  inst.enterEvent(slotval1)

proc fcQLineEdit_method_callback_leaveEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQLineEdit](fcQLineEdit_vdata(self))
  let slotval1 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  inst.leaveEvent(slotval1)

proc fcQLineEdit_method_callback_moveEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQLineEdit](fcQLineEdit_vdata(self))
  let slotval1 = gen_qevent_types.QMoveEvent(h: event, owned: false)
  inst.moveEvent(slotval1)

proc fcQLineEdit_method_callback_resizeEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQLineEdit](fcQLineEdit_vdata(self))
  let slotval1 = gen_qevent_types.QResizeEvent(h: event, owned: false)
  inst.resizeEvent(slotval1)

proc fcQLineEdit_method_callback_closeEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQLineEdit](fcQLineEdit_vdata(self))
  let slotval1 = gen_qevent_types.QCloseEvent(h: event, owned: false)
  inst.closeEvent(slotval1)

proc fcQLineEdit_method_callback_tabletEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQLineEdit](fcQLineEdit_vdata(self))
  let slotval1 = gen_qevent_types.QTabletEvent(h: event, owned: false)
  inst.tabletEvent(slotval1)

proc fcQLineEdit_method_callback_actionEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQLineEdit](fcQLineEdit_vdata(self))
  let slotval1 = gen_qevent_types.QActionEvent(h: event, owned: false)
  inst.actionEvent(slotval1)

proc fcQLineEdit_method_callback_showEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQLineEdit](fcQLineEdit_vdata(self))
  let slotval1 = gen_qevent_types.QShowEvent(h: event, owned: false)
  inst.showEvent(slotval1)

proc fcQLineEdit_method_callback_hideEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQLineEdit](fcQLineEdit_vdata(self))
  let slotval1 = gen_qevent_types.QHideEvent(h: event, owned: false)
  inst.hideEvent(slotval1)

proc fcQLineEdit_method_callback_nativeEvent(self: pointer, eventType: struct_miqt_string, message: pointer, resultVal: ptr clong): bool {.cdecl.} =
  let inst = cast[VirtualQLineEdit](fcQLineEdit_vdata(self))
  var veventType_bytearray = eventType
  var veventTypex_ret = @(toOpenArray(cast[ptr UncheckedArray[byte]](veventType_bytearray.data), 0, int(veventType_bytearray.len)-1))
  c_free(veventType_bytearray.data)
  let slotval1 = veventTypex_ret
  let slotval2 = message
  let slotval3 = resultVal
  var virtualReturn = inst.nativeEvent(slotval1, slotval2, slotval3)
  virtualReturn

proc fcQLineEdit_method_callback_metric(self: pointer, param1: cint): cint {.cdecl.} =
  let inst = cast[VirtualQLineEdit](fcQLineEdit_vdata(self))
  let slotval1 = cint(param1)
  var virtualReturn = inst.metric(slotval1)
  virtualReturn

proc fcQLineEdit_method_callback_initPainter(self: pointer, painter: pointer): void {.cdecl.} =
  let inst = cast[VirtualQLineEdit](fcQLineEdit_vdata(self))
  let slotval1 = gen_qpainter_types.QPainter(h: painter, owned: false)
  inst.initPainter(slotval1)

proc fcQLineEdit_method_callback_redirected(self: pointer, offset: pointer): pointer {.cdecl.} =
  let inst = cast[VirtualQLineEdit](fcQLineEdit_vdata(self))
  let slotval1 = gen_qpoint_types.QPoint(h: offset, owned: false)
  var virtualReturn = inst.redirected(slotval1)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc fcQLineEdit_method_callback_sharedPainter(self: pointer): pointer {.cdecl.} =
  let inst = cast[VirtualQLineEdit](fcQLineEdit_vdata(self))
  var virtualReturn = inst.sharedPainter()
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc fcQLineEdit_method_callback_focusNextPrevChild(self: pointer, next: bool): bool {.cdecl.} =
  let inst = cast[VirtualQLineEdit](fcQLineEdit_vdata(self))
  let slotval1 = next
  var virtualReturn = inst.focusNextPrevChild(slotval1)
  virtualReturn

proc fcQLineEdit_method_callback_eventFilter(self: pointer, watched: pointer, event: pointer): bool {.cdecl.} =
  let inst = cast[VirtualQLineEdit](fcQLineEdit_vdata(self))
  let slotval1 = gen_qobject_types.QObject(h: watched, owned: false)
  let slotval2 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  var virtualReturn = inst.eventFilter(slotval1, slotval2)
  virtualReturn

proc fcQLineEdit_method_callback_timerEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQLineEdit](fcQLineEdit_vdata(self))
  let slotval1 = gen_qcoreevent_types.QTimerEvent(h: event, owned: false)
  inst.timerEvent(slotval1)

proc fcQLineEdit_method_callback_childEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQLineEdit](fcQLineEdit_vdata(self))
  let slotval1 = gen_qcoreevent_types.QChildEvent(h: event, owned: false)
  inst.childEvent(slotval1)

proc fcQLineEdit_method_callback_customEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQLineEdit](fcQLineEdit_vdata(self))
  let slotval1 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  inst.customEvent(slotval1)

proc fcQLineEdit_method_callback_connectNotify(self: pointer, signal: pointer): void {.cdecl.} =
  let inst = cast[VirtualQLineEdit](fcQLineEdit_vdata(self))
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal, owned: false)
  inst.connectNotify(slotval1)

proc fcQLineEdit_method_callback_disconnectNotify(self: pointer, signal: pointer): void {.cdecl.} =
  let inst = cast[VirtualQLineEdit](fcQLineEdit_vdata(self))
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal, owned: false)
  inst.disconnectNotify(slotval1)


proc initStyleOption*(self: gen_qlineedit_types.QLineEdit, option: gen_qstyleoption_types.QStyleOptionFrame): void =
  fcQLineEdit_protectedbase_initStyleOption(self.h, option.h)

proc cursorRect*(self: gen_qlineedit_types.QLineEdit): gen_qrect_types.QRect =
  gen_qrect_types.QRect(h: fcQLineEdit_protectedbase_cursorRect(self.h), owned: true)

proc updateMicroFocus*(self: gen_qlineedit_types.QLineEdit): void =
  fcQLineEdit_protectedbase_updateMicroFocus(self.h)

proc createX*(self: gen_qlineedit_types.QLineEdit): void =
  fcQLineEdit_protectedbase_create(self.h)

proc destroy*(self: gen_qlineedit_types.QLineEdit): void =
  fcQLineEdit_protectedbase_destroy(self.h)

proc focusNextChild*(self: gen_qlineedit_types.QLineEdit): bool =
  fcQLineEdit_protectedbase_focusNextChild(self.h)

proc focusPreviousChild*(self: gen_qlineedit_types.QLineEdit): bool =
  fcQLineEdit_protectedbase_focusPreviousChild(self.h)

proc sender*(self: gen_qlineedit_types.QLineEdit): gen_qobject_types.QObject =
  gen_qobject_types.QObject(h: fcQLineEdit_protectedbase_sender(self.h), owned: false)

proc senderSignalIndex*(self: gen_qlineedit_types.QLineEdit): cint =
  fcQLineEdit_protectedbase_senderSignalIndex(self.h)

proc receivers*(self: gen_qlineedit_types.QLineEdit, signal: cstring): cint =
  fcQLineEdit_protectedbase_receivers(self.h, signal)

proc isSignalConnected*(self: gen_qlineedit_types.QLineEdit, signal: gen_qmetaobject_types.QMetaMethod): bool =
  fcQLineEdit_protectedbase_isSignalConnected(self.h, signal.h)

proc create*(T: type gen_qlineedit_types.QLineEdit,
    parent: gen_qwidget_types.QWidget,
    vtbl: ref QLineEditVTable = nil): gen_qlineedit_types.QLineEdit =
  let vtbl = if vtbl == nil: new QLineEditVTable else: vtbl
  GC_ref(vtbl)
  vtbl[].vtbl.destructor = proc(self: pointer) {.cdecl.} =
    let vtbl = cast[ref QLineEditVTable](fcQLineEdit_vdata(self))
    GC_unref(vtbl)
  if not isNil(vtbl[].metaObject):
    vtbl[].vtbl.metaObject = fcQLineEdit_vtable_callback_metaObject
  if not isNil(vtbl[].metacast):
    vtbl[].vtbl.metacast = fcQLineEdit_vtable_callback_metacast
  if not isNil(vtbl[].metacall):
    vtbl[].vtbl.metacall = fcQLineEdit_vtable_callback_metacall
  if not isNil(vtbl[].sizeHint):
    vtbl[].vtbl.sizeHint = fcQLineEdit_vtable_callback_sizeHint
  if not isNil(vtbl[].minimumSizeHint):
    vtbl[].vtbl.minimumSizeHint = fcQLineEdit_vtable_callback_minimumSizeHint
  if not isNil(vtbl[].mousePressEvent):
    vtbl[].vtbl.mousePressEvent = fcQLineEdit_vtable_callback_mousePressEvent
  if not isNil(vtbl[].mouseMoveEvent):
    vtbl[].vtbl.mouseMoveEvent = fcQLineEdit_vtable_callback_mouseMoveEvent
  if not isNil(vtbl[].mouseReleaseEvent):
    vtbl[].vtbl.mouseReleaseEvent = fcQLineEdit_vtable_callback_mouseReleaseEvent
  if not isNil(vtbl[].mouseDoubleClickEvent):
    vtbl[].vtbl.mouseDoubleClickEvent = fcQLineEdit_vtable_callback_mouseDoubleClickEvent
  if not isNil(vtbl[].keyPressEvent):
    vtbl[].vtbl.keyPressEvent = fcQLineEdit_vtable_callback_keyPressEvent
  if not isNil(vtbl[].focusInEvent):
    vtbl[].vtbl.focusInEvent = fcQLineEdit_vtable_callback_focusInEvent
  if not isNil(vtbl[].focusOutEvent):
    vtbl[].vtbl.focusOutEvent = fcQLineEdit_vtable_callback_focusOutEvent
  if not isNil(vtbl[].paintEvent):
    vtbl[].vtbl.paintEvent = fcQLineEdit_vtable_callback_paintEvent
  if not isNil(vtbl[].dragEnterEvent):
    vtbl[].vtbl.dragEnterEvent = fcQLineEdit_vtable_callback_dragEnterEvent
  if not isNil(vtbl[].dragMoveEvent):
    vtbl[].vtbl.dragMoveEvent = fcQLineEdit_vtable_callback_dragMoveEvent
  if not isNil(vtbl[].dragLeaveEvent):
    vtbl[].vtbl.dragLeaveEvent = fcQLineEdit_vtable_callback_dragLeaveEvent
  if not isNil(vtbl[].dropEvent):
    vtbl[].vtbl.dropEvent = fcQLineEdit_vtable_callback_dropEvent
  if not isNil(vtbl[].changeEvent):
    vtbl[].vtbl.changeEvent = fcQLineEdit_vtable_callback_changeEvent
  if not isNil(vtbl[].contextMenuEvent):
    vtbl[].vtbl.contextMenuEvent = fcQLineEdit_vtable_callback_contextMenuEvent
  if not isNil(vtbl[].inputMethodEvent):
    vtbl[].vtbl.inputMethodEvent = fcQLineEdit_vtable_callback_inputMethodEvent
  if not isNil(vtbl[].inputMethodQuery):
    vtbl[].vtbl.inputMethodQuery = fcQLineEdit_vtable_callback_inputMethodQuery
  if not isNil(vtbl[].event):
    vtbl[].vtbl.event = fcQLineEdit_vtable_callback_event
  if not isNil(vtbl[].devType):
    vtbl[].vtbl.devType = fcQLineEdit_vtable_callback_devType
  if not isNil(vtbl[].setVisible):
    vtbl[].vtbl.setVisible = fcQLineEdit_vtable_callback_setVisible
  if not isNil(vtbl[].heightForWidth):
    vtbl[].vtbl.heightForWidth = fcQLineEdit_vtable_callback_heightForWidth
  if not isNil(vtbl[].hasHeightForWidth):
    vtbl[].vtbl.hasHeightForWidth = fcQLineEdit_vtable_callback_hasHeightForWidth
  if not isNil(vtbl[].paintEngine):
    vtbl[].vtbl.paintEngine = fcQLineEdit_vtable_callback_paintEngine
  if not isNil(vtbl[].wheelEvent):
    vtbl[].vtbl.wheelEvent = fcQLineEdit_vtable_callback_wheelEvent
  if not isNil(vtbl[].keyReleaseEvent):
    vtbl[].vtbl.keyReleaseEvent = fcQLineEdit_vtable_callback_keyReleaseEvent
  if not isNil(vtbl[].enterEvent):
    vtbl[].vtbl.enterEvent = fcQLineEdit_vtable_callback_enterEvent
  if not isNil(vtbl[].leaveEvent):
    vtbl[].vtbl.leaveEvent = fcQLineEdit_vtable_callback_leaveEvent
  if not isNil(vtbl[].moveEvent):
    vtbl[].vtbl.moveEvent = fcQLineEdit_vtable_callback_moveEvent
  if not isNil(vtbl[].resizeEvent):
    vtbl[].vtbl.resizeEvent = fcQLineEdit_vtable_callback_resizeEvent
  if not isNil(vtbl[].closeEvent):
    vtbl[].vtbl.closeEvent = fcQLineEdit_vtable_callback_closeEvent
  if not isNil(vtbl[].tabletEvent):
    vtbl[].vtbl.tabletEvent = fcQLineEdit_vtable_callback_tabletEvent
  if not isNil(vtbl[].actionEvent):
    vtbl[].vtbl.actionEvent = fcQLineEdit_vtable_callback_actionEvent
  if not isNil(vtbl[].showEvent):
    vtbl[].vtbl.showEvent = fcQLineEdit_vtable_callback_showEvent
  if not isNil(vtbl[].hideEvent):
    vtbl[].vtbl.hideEvent = fcQLineEdit_vtable_callback_hideEvent
  if not isNil(vtbl[].nativeEvent):
    vtbl[].vtbl.nativeEvent = fcQLineEdit_vtable_callback_nativeEvent
  if not isNil(vtbl[].metric):
    vtbl[].vtbl.metric = fcQLineEdit_vtable_callback_metric
  if not isNil(vtbl[].initPainter):
    vtbl[].vtbl.initPainter = fcQLineEdit_vtable_callback_initPainter
  if not isNil(vtbl[].redirected):
    vtbl[].vtbl.redirected = fcQLineEdit_vtable_callback_redirected
  if not isNil(vtbl[].sharedPainter):
    vtbl[].vtbl.sharedPainter = fcQLineEdit_vtable_callback_sharedPainter
  if not isNil(vtbl[].focusNextPrevChild):
    vtbl[].vtbl.focusNextPrevChild = fcQLineEdit_vtable_callback_focusNextPrevChild
  if not isNil(vtbl[].eventFilter):
    vtbl[].vtbl.eventFilter = fcQLineEdit_vtable_callback_eventFilter
  if not isNil(vtbl[].timerEvent):
    vtbl[].vtbl.timerEvent = fcQLineEdit_vtable_callback_timerEvent
  if not isNil(vtbl[].childEvent):
    vtbl[].vtbl.childEvent = fcQLineEdit_vtable_callback_childEvent
  if not isNil(vtbl[].customEvent):
    vtbl[].vtbl.customEvent = fcQLineEdit_vtable_callback_customEvent
  if not isNil(vtbl[].connectNotify):
    vtbl[].vtbl.connectNotify = fcQLineEdit_vtable_callback_connectNotify
  if not isNil(vtbl[].disconnectNotify):
    vtbl[].vtbl.disconnectNotify = fcQLineEdit_vtable_callback_disconnectNotify
  gen_qlineedit_types.QLineEdit(h: fcQLineEdit_new(addr(vtbl[].vtbl), addr(vtbl[]), parent.h), owned: true)

proc create*(T: type gen_qlineedit_types.QLineEdit,
    vtbl: ref QLineEditVTable = nil): gen_qlineedit_types.QLineEdit =
  let vtbl = if vtbl == nil: new QLineEditVTable else: vtbl
  GC_ref(vtbl)
  vtbl[].vtbl.destructor = proc(self: pointer) {.cdecl.} =
    let vtbl = cast[ref QLineEditVTable](fcQLineEdit_vdata(self))
    GC_unref(vtbl)
  if not isNil(vtbl[].metaObject):
    vtbl[].vtbl.metaObject = fcQLineEdit_vtable_callback_metaObject
  if not isNil(vtbl[].metacast):
    vtbl[].vtbl.metacast = fcQLineEdit_vtable_callback_metacast
  if not isNil(vtbl[].metacall):
    vtbl[].vtbl.metacall = fcQLineEdit_vtable_callback_metacall
  if not isNil(vtbl[].sizeHint):
    vtbl[].vtbl.sizeHint = fcQLineEdit_vtable_callback_sizeHint
  if not isNil(vtbl[].minimumSizeHint):
    vtbl[].vtbl.minimumSizeHint = fcQLineEdit_vtable_callback_minimumSizeHint
  if not isNil(vtbl[].mousePressEvent):
    vtbl[].vtbl.mousePressEvent = fcQLineEdit_vtable_callback_mousePressEvent
  if not isNil(vtbl[].mouseMoveEvent):
    vtbl[].vtbl.mouseMoveEvent = fcQLineEdit_vtable_callback_mouseMoveEvent
  if not isNil(vtbl[].mouseReleaseEvent):
    vtbl[].vtbl.mouseReleaseEvent = fcQLineEdit_vtable_callback_mouseReleaseEvent
  if not isNil(vtbl[].mouseDoubleClickEvent):
    vtbl[].vtbl.mouseDoubleClickEvent = fcQLineEdit_vtable_callback_mouseDoubleClickEvent
  if not isNil(vtbl[].keyPressEvent):
    vtbl[].vtbl.keyPressEvent = fcQLineEdit_vtable_callback_keyPressEvent
  if not isNil(vtbl[].focusInEvent):
    vtbl[].vtbl.focusInEvent = fcQLineEdit_vtable_callback_focusInEvent
  if not isNil(vtbl[].focusOutEvent):
    vtbl[].vtbl.focusOutEvent = fcQLineEdit_vtable_callback_focusOutEvent
  if not isNil(vtbl[].paintEvent):
    vtbl[].vtbl.paintEvent = fcQLineEdit_vtable_callback_paintEvent
  if not isNil(vtbl[].dragEnterEvent):
    vtbl[].vtbl.dragEnterEvent = fcQLineEdit_vtable_callback_dragEnterEvent
  if not isNil(vtbl[].dragMoveEvent):
    vtbl[].vtbl.dragMoveEvent = fcQLineEdit_vtable_callback_dragMoveEvent
  if not isNil(vtbl[].dragLeaveEvent):
    vtbl[].vtbl.dragLeaveEvent = fcQLineEdit_vtable_callback_dragLeaveEvent
  if not isNil(vtbl[].dropEvent):
    vtbl[].vtbl.dropEvent = fcQLineEdit_vtable_callback_dropEvent
  if not isNil(vtbl[].changeEvent):
    vtbl[].vtbl.changeEvent = fcQLineEdit_vtable_callback_changeEvent
  if not isNil(vtbl[].contextMenuEvent):
    vtbl[].vtbl.contextMenuEvent = fcQLineEdit_vtable_callback_contextMenuEvent
  if not isNil(vtbl[].inputMethodEvent):
    vtbl[].vtbl.inputMethodEvent = fcQLineEdit_vtable_callback_inputMethodEvent
  if not isNil(vtbl[].inputMethodQuery):
    vtbl[].vtbl.inputMethodQuery = fcQLineEdit_vtable_callback_inputMethodQuery
  if not isNil(vtbl[].event):
    vtbl[].vtbl.event = fcQLineEdit_vtable_callback_event
  if not isNil(vtbl[].devType):
    vtbl[].vtbl.devType = fcQLineEdit_vtable_callback_devType
  if not isNil(vtbl[].setVisible):
    vtbl[].vtbl.setVisible = fcQLineEdit_vtable_callback_setVisible
  if not isNil(vtbl[].heightForWidth):
    vtbl[].vtbl.heightForWidth = fcQLineEdit_vtable_callback_heightForWidth
  if not isNil(vtbl[].hasHeightForWidth):
    vtbl[].vtbl.hasHeightForWidth = fcQLineEdit_vtable_callback_hasHeightForWidth
  if not isNil(vtbl[].paintEngine):
    vtbl[].vtbl.paintEngine = fcQLineEdit_vtable_callback_paintEngine
  if not isNil(vtbl[].wheelEvent):
    vtbl[].vtbl.wheelEvent = fcQLineEdit_vtable_callback_wheelEvent
  if not isNil(vtbl[].keyReleaseEvent):
    vtbl[].vtbl.keyReleaseEvent = fcQLineEdit_vtable_callback_keyReleaseEvent
  if not isNil(vtbl[].enterEvent):
    vtbl[].vtbl.enterEvent = fcQLineEdit_vtable_callback_enterEvent
  if not isNil(vtbl[].leaveEvent):
    vtbl[].vtbl.leaveEvent = fcQLineEdit_vtable_callback_leaveEvent
  if not isNil(vtbl[].moveEvent):
    vtbl[].vtbl.moveEvent = fcQLineEdit_vtable_callback_moveEvent
  if not isNil(vtbl[].resizeEvent):
    vtbl[].vtbl.resizeEvent = fcQLineEdit_vtable_callback_resizeEvent
  if not isNil(vtbl[].closeEvent):
    vtbl[].vtbl.closeEvent = fcQLineEdit_vtable_callback_closeEvent
  if not isNil(vtbl[].tabletEvent):
    vtbl[].vtbl.tabletEvent = fcQLineEdit_vtable_callback_tabletEvent
  if not isNil(vtbl[].actionEvent):
    vtbl[].vtbl.actionEvent = fcQLineEdit_vtable_callback_actionEvent
  if not isNil(vtbl[].showEvent):
    vtbl[].vtbl.showEvent = fcQLineEdit_vtable_callback_showEvent
  if not isNil(vtbl[].hideEvent):
    vtbl[].vtbl.hideEvent = fcQLineEdit_vtable_callback_hideEvent
  if not isNil(vtbl[].nativeEvent):
    vtbl[].vtbl.nativeEvent = fcQLineEdit_vtable_callback_nativeEvent
  if not isNil(vtbl[].metric):
    vtbl[].vtbl.metric = fcQLineEdit_vtable_callback_metric
  if not isNil(vtbl[].initPainter):
    vtbl[].vtbl.initPainter = fcQLineEdit_vtable_callback_initPainter
  if not isNil(vtbl[].redirected):
    vtbl[].vtbl.redirected = fcQLineEdit_vtable_callback_redirected
  if not isNil(vtbl[].sharedPainter):
    vtbl[].vtbl.sharedPainter = fcQLineEdit_vtable_callback_sharedPainter
  if not isNil(vtbl[].focusNextPrevChild):
    vtbl[].vtbl.focusNextPrevChild = fcQLineEdit_vtable_callback_focusNextPrevChild
  if not isNil(vtbl[].eventFilter):
    vtbl[].vtbl.eventFilter = fcQLineEdit_vtable_callback_eventFilter
  if not isNil(vtbl[].timerEvent):
    vtbl[].vtbl.timerEvent = fcQLineEdit_vtable_callback_timerEvent
  if not isNil(vtbl[].childEvent):
    vtbl[].vtbl.childEvent = fcQLineEdit_vtable_callback_childEvent
  if not isNil(vtbl[].customEvent):
    vtbl[].vtbl.customEvent = fcQLineEdit_vtable_callback_customEvent
  if not isNil(vtbl[].connectNotify):
    vtbl[].vtbl.connectNotify = fcQLineEdit_vtable_callback_connectNotify
  if not isNil(vtbl[].disconnectNotify):
    vtbl[].vtbl.disconnectNotify = fcQLineEdit_vtable_callback_disconnectNotify
  gen_qlineedit_types.QLineEdit(h: fcQLineEdit_new2(addr(vtbl[].vtbl), addr(vtbl[])), owned: true)

proc create*(T: type gen_qlineedit_types.QLineEdit,
    param1: openArray[char],
    vtbl: ref QLineEditVTable = nil): gen_qlineedit_types.QLineEdit =
  let vtbl = if vtbl == nil: new QLineEditVTable else: vtbl
  GC_ref(vtbl)
  vtbl[].vtbl.destructor = proc(self: pointer) {.cdecl.} =
    let vtbl = cast[ref QLineEditVTable](fcQLineEdit_vdata(self))
    GC_unref(vtbl)
  if not isNil(vtbl[].metaObject):
    vtbl[].vtbl.metaObject = fcQLineEdit_vtable_callback_metaObject
  if not isNil(vtbl[].metacast):
    vtbl[].vtbl.metacast = fcQLineEdit_vtable_callback_metacast
  if not isNil(vtbl[].metacall):
    vtbl[].vtbl.metacall = fcQLineEdit_vtable_callback_metacall
  if not isNil(vtbl[].sizeHint):
    vtbl[].vtbl.sizeHint = fcQLineEdit_vtable_callback_sizeHint
  if not isNil(vtbl[].minimumSizeHint):
    vtbl[].vtbl.minimumSizeHint = fcQLineEdit_vtable_callback_minimumSizeHint
  if not isNil(vtbl[].mousePressEvent):
    vtbl[].vtbl.mousePressEvent = fcQLineEdit_vtable_callback_mousePressEvent
  if not isNil(vtbl[].mouseMoveEvent):
    vtbl[].vtbl.mouseMoveEvent = fcQLineEdit_vtable_callback_mouseMoveEvent
  if not isNil(vtbl[].mouseReleaseEvent):
    vtbl[].vtbl.mouseReleaseEvent = fcQLineEdit_vtable_callback_mouseReleaseEvent
  if not isNil(vtbl[].mouseDoubleClickEvent):
    vtbl[].vtbl.mouseDoubleClickEvent = fcQLineEdit_vtable_callback_mouseDoubleClickEvent
  if not isNil(vtbl[].keyPressEvent):
    vtbl[].vtbl.keyPressEvent = fcQLineEdit_vtable_callback_keyPressEvent
  if not isNil(vtbl[].focusInEvent):
    vtbl[].vtbl.focusInEvent = fcQLineEdit_vtable_callback_focusInEvent
  if not isNil(vtbl[].focusOutEvent):
    vtbl[].vtbl.focusOutEvent = fcQLineEdit_vtable_callback_focusOutEvent
  if not isNil(vtbl[].paintEvent):
    vtbl[].vtbl.paintEvent = fcQLineEdit_vtable_callback_paintEvent
  if not isNil(vtbl[].dragEnterEvent):
    vtbl[].vtbl.dragEnterEvent = fcQLineEdit_vtable_callback_dragEnterEvent
  if not isNil(vtbl[].dragMoveEvent):
    vtbl[].vtbl.dragMoveEvent = fcQLineEdit_vtable_callback_dragMoveEvent
  if not isNil(vtbl[].dragLeaveEvent):
    vtbl[].vtbl.dragLeaveEvent = fcQLineEdit_vtable_callback_dragLeaveEvent
  if not isNil(vtbl[].dropEvent):
    vtbl[].vtbl.dropEvent = fcQLineEdit_vtable_callback_dropEvent
  if not isNil(vtbl[].changeEvent):
    vtbl[].vtbl.changeEvent = fcQLineEdit_vtable_callback_changeEvent
  if not isNil(vtbl[].contextMenuEvent):
    vtbl[].vtbl.contextMenuEvent = fcQLineEdit_vtable_callback_contextMenuEvent
  if not isNil(vtbl[].inputMethodEvent):
    vtbl[].vtbl.inputMethodEvent = fcQLineEdit_vtable_callback_inputMethodEvent
  if not isNil(vtbl[].inputMethodQuery):
    vtbl[].vtbl.inputMethodQuery = fcQLineEdit_vtable_callback_inputMethodQuery
  if not isNil(vtbl[].event):
    vtbl[].vtbl.event = fcQLineEdit_vtable_callback_event
  if not isNil(vtbl[].devType):
    vtbl[].vtbl.devType = fcQLineEdit_vtable_callback_devType
  if not isNil(vtbl[].setVisible):
    vtbl[].vtbl.setVisible = fcQLineEdit_vtable_callback_setVisible
  if not isNil(vtbl[].heightForWidth):
    vtbl[].vtbl.heightForWidth = fcQLineEdit_vtable_callback_heightForWidth
  if not isNil(vtbl[].hasHeightForWidth):
    vtbl[].vtbl.hasHeightForWidth = fcQLineEdit_vtable_callback_hasHeightForWidth
  if not isNil(vtbl[].paintEngine):
    vtbl[].vtbl.paintEngine = fcQLineEdit_vtable_callback_paintEngine
  if not isNil(vtbl[].wheelEvent):
    vtbl[].vtbl.wheelEvent = fcQLineEdit_vtable_callback_wheelEvent
  if not isNil(vtbl[].keyReleaseEvent):
    vtbl[].vtbl.keyReleaseEvent = fcQLineEdit_vtable_callback_keyReleaseEvent
  if not isNil(vtbl[].enterEvent):
    vtbl[].vtbl.enterEvent = fcQLineEdit_vtable_callback_enterEvent
  if not isNil(vtbl[].leaveEvent):
    vtbl[].vtbl.leaveEvent = fcQLineEdit_vtable_callback_leaveEvent
  if not isNil(vtbl[].moveEvent):
    vtbl[].vtbl.moveEvent = fcQLineEdit_vtable_callback_moveEvent
  if not isNil(vtbl[].resizeEvent):
    vtbl[].vtbl.resizeEvent = fcQLineEdit_vtable_callback_resizeEvent
  if not isNil(vtbl[].closeEvent):
    vtbl[].vtbl.closeEvent = fcQLineEdit_vtable_callback_closeEvent
  if not isNil(vtbl[].tabletEvent):
    vtbl[].vtbl.tabletEvent = fcQLineEdit_vtable_callback_tabletEvent
  if not isNil(vtbl[].actionEvent):
    vtbl[].vtbl.actionEvent = fcQLineEdit_vtable_callback_actionEvent
  if not isNil(vtbl[].showEvent):
    vtbl[].vtbl.showEvent = fcQLineEdit_vtable_callback_showEvent
  if not isNil(vtbl[].hideEvent):
    vtbl[].vtbl.hideEvent = fcQLineEdit_vtable_callback_hideEvent
  if not isNil(vtbl[].nativeEvent):
    vtbl[].vtbl.nativeEvent = fcQLineEdit_vtable_callback_nativeEvent
  if not isNil(vtbl[].metric):
    vtbl[].vtbl.metric = fcQLineEdit_vtable_callback_metric
  if not isNil(vtbl[].initPainter):
    vtbl[].vtbl.initPainter = fcQLineEdit_vtable_callback_initPainter
  if not isNil(vtbl[].redirected):
    vtbl[].vtbl.redirected = fcQLineEdit_vtable_callback_redirected
  if not isNil(vtbl[].sharedPainter):
    vtbl[].vtbl.sharedPainter = fcQLineEdit_vtable_callback_sharedPainter
  if not isNil(vtbl[].focusNextPrevChild):
    vtbl[].vtbl.focusNextPrevChild = fcQLineEdit_vtable_callback_focusNextPrevChild
  if not isNil(vtbl[].eventFilter):
    vtbl[].vtbl.eventFilter = fcQLineEdit_vtable_callback_eventFilter
  if not isNil(vtbl[].timerEvent):
    vtbl[].vtbl.timerEvent = fcQLineEdit_vtable_callback_timerEvent
  if not isNil(vtbl[].childEvent):
    vtbl[].vtbl.childEvent = fcQLineEdit_vtable_callback_childEvent
  if not isNil(vtbl[].customEvent):
    vtbl[].vtbl.customEvent = fcQLineEdit_vtable_callback_customEvent
  if not isNil(vtbl[].connectNotify):
    vtbl[].vtbl.connectNotify = fcQLineEdit_vtable_callback_connectNotify
  if not isNil(vtbl[].disconnectNotify):
    vtbl[].vtbl.disconnectNotify = fcQLineEdit_vtable_callback_disconnectNotify
  gen_qlineedit_types.QLineEdit(h: fcQLineEdit_new3(addr(vtbl[].vtbl), addr(vtbl[]), struct_miqt_string(data: if len(param1) > 0: addr param1[0] else: nil, len: csize_t(len(param1)))), owned: true)

proc create*(T: type gen_qlineedit_types.QLineEdit,
    param1: openArray[char], parent: gen_qwidget_types.QWidget,
    vtbl: ref QLineEditVTable = nil): gen_qlineedit_types.QLineEdit =
  let vtbl = if vtbl == nil: new QLineEditVTable else: vtbl
  GC_ref(vtbl)
  vtbl[].vtbl.destructor = proc(self: pointer) {.cdecl.} =
    let vtbl = cast[ref QLineEditVTable](fcQLineEdit_vdata(self))
    GC_unref(vtbl)
  if not isNil(vtbl[].metaObject):
    vtbl[].vtbl.metaObject = fcQLineEdit_vtable_callback_metaObject
  if not isNil(vtbl[].metacast):
    vtbl[].vtbl.metacast = fcQLineEdit_vtable_callback_metacast
  if not isNil(vtbl[].metacall):
    vtbl[].vtbl.metacall = fcQLineEdit_vtable_callback_metacall
  if not isNil(vtbl[].sizeHint):
    vtbl[].vtbl.sizeHint = fcQLineEdit_vtable_callback_sizeHint
  if not isNil(vtbl[].minimumSizeHint):
    vtbl[].vtbl.minimumSizeHint = fcQLineEdit_vtable_callback_minimumSizeHint
  if not isNil(vtbl[].mousePressEvent):
    vtbl[].vtbl.mousePressEvent = fcQLineEdit_vtable_callback_mousePressEvent
  if not isNil(vtbl[].mouseMoveEvent):
    vtbl[].vtbl.mouseMoveEvent = fcQLineEdit_vtable_callback_mouseMoveEvent
  if not isNil(vtbl[].mouseReleaseEvent):
    vtbl[].vtbl.mouseReleaseEvent = fcQLineEdit_vtable_callback_mouseReleaseEvent
  if not isNil(vtbl[].mouseDoubleClickEvent):
    vtbl[].vtbl.mouseDoubleClickEvent = fcQLineEdit_vtable_callback_mouseDoubleClickEvent
  if not isNil(vtbl[].keyPressEvent):
    vtbl[].vtbl.keyPressEvent = fcQLineEdit_vtable_callback_keyPressEvent
  if not isNil(vtbl[].focusInEvent):
    vtbl[].vtbl.focusInEvent = fcQLineEdit_vtable_callback_focusInEvent
  if not isNil(vtbl[].focusOutEvent):
    vtbl[].vtbl.focusOutEvent = fcQLineEdit_vtable_callback_focusOutEvent
  if not isNil(vtbl[].paintEvent):
    vtbl[].vtbl.paintEvent = fcQLineEdit_vtable_callback_paintEvent
  if not isNil(vtbl[].dragEnterEvent):
    vtbl[].vtbl.dragEnterEvent = fcQLineEdit_vtable_callback_dragEnterEvent
  if not isNil(vtbl[].dragMoveEvent):
    vtbl[].vtbl.dragMoveEvent = fcQLineEdit_vtable_callback_dragMoveEvent
  if not isNil(vtbl[].dragLeaveEvent):
    vtbl[].vtbl.dragLeaveEvent = fcQLineEdit_vtable_callback_dragLeaveEvent
  if not isNil(vtbl[].dropEvent):
    vtbl[].vtbl.dropEvent = fcQLineEdit_vtable_callback_dropEvent
  if not isNil(vtbl[].changeEvent):
    vtbl[].vtbl.changeEvent = fcQLineEdit_vtable_callback_changeEvent
  if not isNil(vtbl[].contextMenuEvent):
    vtbl[].vtbl.contextMenuEvent = fcQLineEdit_vtable_callback_contextMenuEvent
  if not isNil(vtbl[].inputMethodEvent):
    vtbl[].vtbl.inputMethodEvent = fcQLineEdit_vtable_callback_inputMethodEvent
  if not isNil(vtbl[].inputMethodQuery):
    vtbl[].vtbl.inputMethodQuery = fcQLineEdit_vtable_callback_inputMethodQuery
  if not isNil(vtbl[].event):
    vtbl[].vtbl.event = fcQLineEdit_vtable_callback_event
  if not isNil(vtbl[].devType):
    vtbl[].vtbl.devType = fcQLineEdit_vtable_callback_devType
  if not isNil(vtbl[].setVisible):
    vtbl[].vtbl.setVisible = fcQLineEdit_vtable_callback_setVisible
  if not isNil(vtbl[].heightForWidth):
    vtbl[].vtbl.heightForWidth = fcQLineEdit_vtable_callback_heightForWidth
  if not isNil(vtbl[].hasHeightForWidth):
    vtbl[].vtbl.hasHeightForWidth = fcQLineEdit_vtable_callback_hasHeightForWidth
  if not isNil(vtbl[].paintEngine):
    vtbl[].vtbl.paintEngine = fcQLineEdit_vtable_callback_paintEngine
  if not isNil(vtbl[].wheelEvent):
    vtbl[].vtbl.wheelEvent = fcQLineEdit_vtable_callback_wheelEvent
  if not isNil(vtbl[].keyReleaseEvent):
    vtbl[].vtbl.keyReleaseEvent = fcQLineEdit_vtable_callback_keyReleaseEvent
  if not isNil(vtbl[].enterEvent):
    vtbl[].vtbl.enterEvent = fcQLineEdit_vtable_callback_enterEvent
  if not isNil(vtbl[].leaveEvent):
    vtbl[].vtbl.leaveEvent = fcQLineEdit_vtable_callback_leaveEvent
  if not isNil(vtbl[].moveEvent):
    vtbl[].vtbl.moveEvent = fcQLineEdit_vtable_callback_moveEvent
  if not isNil(vtbl[].resizeEvent):
    vtbl[].vtbl.resizeEvent = fcQLineEdit_vtable_callback_resizeEvent
  if not isNil(vtbl[].closeEvent):
    vtbl[].vtbl.closeEvent = fcQLineEdit_vtable_callback_closeEvent
  if not isNil(vtbl[].tabletEvent):
    vtbl[].vtbl.tabletEvent = fcQLineEdit_vtable_callback_tabletEvent
  if not isNil(vtbl[].actionEvent):
    vtbl[].vtbl.actionEvent = fcQLineEdit_vtable_callback_actionEvent
  if not isNil(vtbl[].showEvent):
    vtbl[].vtbl.showEvent = fcQLineEdit_vtable_callback_showEvent
  if not isNil(vtbl[].hideEvent):
    vtbl[].vtbl.hideEvent = fcQLineEdit_vtable_callback_hideEvent
  if not isNil(vtbl[].nativeEvent):
    vtbl[].vtbl.nativeEvent = fcQLineEdit_vtable_callback_nativeEvent
  if not isNil(vtbl[].metric):
    vtbl[].vtbl.metric = fcQLineEdit_vtable_callback_metric
  if not isNil(vtbl[].initPainter):
    vtbl[].vtbl.initPainter = fcQLineEdit_vtable_callback_initPainter
  if not isNil(vtbl[].redirected):
    vtbl[].vtbl.redirected = fcQLineEdit_vtable_callback_redirected
  if not isNil(vtbl[].sharedPainter):
    vtbl[].vtbl.sharedPainter = fcQLineEdit_vtable_callback_sharedPainter
  if not isNil(vtbl[].focusNextPrevChild):
    vtbl[].vtbl.focusNextPrevChild = fcQLineEdit_vtable_callback_focusNextPrevChild
  if not isNil(vtbl[].eventFilter):
    vtbl[].vtbl.eventFilter = fcQLineEdit_vtable_callback_eventFilter
  if not isNil(vtbl[].timerEvent):
    vtbl[].vtbl.timerEvent = fcQLineEdit_vtable_callback_timerEvent
  if not isNil(vtbl[].childEvent):
    vtbl[].vtbl.childEvent = fcQLineEdit_vtable_callback_childEvent
  if not isNil(vtbl[].customEvent):
    vtbl[].vtbl.customEvent = fcQLineEdit_vtable_callback_customEvent
  if not isNil(vtbl[].connectNotify):
    vtbl[].vtbl.connectNotify = fcQLineEdit_vtable_callback_connectNotify
  if not isNil(vtbl[].disconnectNotify):
    vtbl[].vtbl.disconnectNotify = fcQLineEdit_vtable_callback_disconnectNotify
  gen_qlineedit_types.QLineEdit(h: fcQLineEdit_new4(addr(vtbl[].vtbl), addr(vtbl[]), struct_miqt_string(data: if len(param1) > 0: addr param1[0] else: nil, len: csize_t(len(param1))), parent.h), owned: true)

const cQLineEdit_mvtbl = cQLineEditVTable(
  destructor: proc(self: pointer) {.cdecl.} =
    let inst = cast[ptr typeof(VirtualQLineEdit()[])](self.fcQLineEdit_vtbl())
    inst[].h = nil
    inst[].owned = false,

  metaObject: fcQLineEdit_method_callback_metaObject,
  metacast: fcQLineEdit_method_callback_metacast,
  metacall: fcQLineEdit_method_callback_metacall,
  sizeHint: fcQLineEdit_method_callback_sizeHint,
  minimumSizeHint: fcQLineEdit_method_callback_minimumSizeHint,
  mousePressEvent: fcQLineEdit_method_callback_mousePressEvent,
  mouseMoveEvent: fcQLineEdit_method_callback_mouseMoveEvent,
  mouseReleaseEvent: fcQLineEdit_method_callback_mouseReleaseEvent,
  mouseDoubleClickEvent: fcQLineEdit_method_callback_mouseDoubleClickEvent,
  keyPressEvent: fcQLineEdit_method_callback_keyPressEvent,
  focusInEvent: fcQLineEdit_method_callback_focusInEvent,
  focusOutEvent: fcQLineEdit_method_callback_focusOutEvent,
  paintEvent: fcQLineEdit_method_callback_paintEvent,
  dragEnterEvent: fcQLineEdit_method_callback_dragEnterEvent,
  dragMoveEvent: fcQLineEdit_method_callback_dragMoveEvent,
  dragLeaveEvent: fcQLineEdit_method_callback_dragLeaveEvent,
  dropEvent: fcQLineEdit_method_callback_dropEvent,
  changeEvent: fcQLineEdit_method_callback_changeEvent,
  contextMenuEvent: fcQLineEdit_method_callback_contextMenuEvent,
  inputMethodEvent: fcQLineEdit_method_callback_inputMethodEvent,
  inputMethodQuery: fcQLineEdit_method_callback_inputMethodQuery,
  event: fcQLineEdit_method_callback_event,
  devType: fcQLineEdit_method_callback_devType,
  setVisible: fcQLineEdit_method_callback_setVisible,
  heightForWidth: fcQLineEdit_method_callback_heightForWidth,
  hasHeightForWidth: fcQLineEdit_method_callback_hasHeightForWidth,
  paintEngine: fcQLineEdit_method_callback_paintEngine,
  wheelEvent: fcQLineEdit_method_callback_wheelEvent,
  keyReleaseEvent: fcQLineEdit_method_callback_keyReleaseEvent,
  enterEvent: fcQLineEdit_method_callback_enterEvent,
  leaveEvent: fcQLineEdit_method_callback_leaveEvent,
  moveEvent: fcQLineEdit_method_callback_moveEvent,
  resizeEvent: fcQLineEdit_method_callback_resizeEvent,
  closeEvent: fcQLineEdit_method_callback_closeEvent,
  tabletEvent: fcQLineEdit_method_callback_tabletEvent,
  actionEvent: fcQLineEdit_method_callback_actionEvent,
  showEvent: fcQLineEdit_method_callback_showEvent,
  hideEvent: fcQLineEdit_method_callback_hideEvent,
  nativeEvent: fcQLineEdit_method_callback_nativeEvent,
  metric: fcQLineEdit_method_callback_metric,
  initPainter: fcQLineEdit_method_callback_initPainter,
  redirected: fcQLineEdit_method_callback_redirected,
  sharedPainter: fcQLineEdit_method_callback_sharedPainter,
  focusNextPrevChild: fcQLineEdit_method_callback_focusNextPrevChild,
  eventFilter: fcQLineEdit_method_callback_eventFilter,
  timerEvent: fcQLineEdit_method_callback_timerEvent,
  childEvent: fcQLineEdit_method_callback_childEvent,
  customEvent: fcQLineEdit_method_callback_customEvent,
  connectNotify: fcQLineEdit_method_callback_connectNotify,
  disconnectNotify: fcQLineEdit_method_callback_disconnectNotify,
)
proc create*(T: type gen_qlineedit_types.QLineEdit,
    parent: gen_qwidget_types.QWidget,
    inst: VirtualQLineEdit) =
  if inst[].h != nil: delete(move(inst[]))
  inst[].h = fcQLineEdit_new(addr(cQLineEdit_mvtbl), addr(inst[]), parent.h)
  inst[].owned = true

proc create*(T: type gen_qlineedit_types.QLineEdit,
    inst: VirtualQLineEdit) =
  if inst[].h != nil: delete(move(inst[]))
  inst[].h = fcQLineEdit_new2(addr(cQLineEdit_mvtbl), addr(inst[]))
  inst[].owned = true

proc create*(T: type gen_qlineedit_types.QLineEdit,
    param1: openArray[char],
    inst: VirtualQLineEdit) =
  if inst[].h != nil: delete(move(inst[]))
  inst[].h = fcQLineEdit_new3(addr(cQLineEdit_mvtbl), addr(inst[]), struct_miqt_string(data: if len(param1) > 0: addr param1[0] else: nil, len: csize_t(len(param1))))
  inst[].owned = true

proc create*(T: type gen_qlineedit_types.QLineEdit,
    param1: openArray[char], parent: gen_qwidget_types.QWidget,
    inst: VirtualQLineEdit) =
  if inst[].h != nil: delete(move(inst[]))
  inst[].h = fcQLineEdit_new4(addr(cQLineEdit_mvtbl), addr(inst[]), struct_miqt_string(data: if len(param1) > 0: addr param1[0] else: nil, len: csize_t(len(param1))), parent.h)
  inst[].owned = true

proc staticMetaObject*(_: type gen_qlineedit_types.QLineEdit): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQLineEdit_staticMetaObject())
