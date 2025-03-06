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
{.compile("gen_qlineedit.cpp", cflags).}


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

proc fcQLineEdit_metaObject(self: pointer, ): pointer {.importc: "QLineEdit_metaObject".}
proc fcQLineEdit_metacast(self: pointer, param1: cstring): pointer {.importc: "QLineEdit_metacast".}
proc fcQLineEdit_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.importc: "QLineEdit_metacall".}
proc fcQLineEdit_tr(s: cstring): struct_miqt_string {.importc: "QLineEdit_tr".}
proc fcQLineEdit_trUtf8(s: cstring): struct_miqt_string {.importc: "QLineEdit_trUtf8".}
proc fcQLineEdit_text(self: pointer, ): struct_miqt_string {.importc: "QLineEdit_text".}
proc fcQLineEdit_displayText(self: pointer, ): struct_miqt_string {.importc: "QLineEdit_displayText".}
proc fcQLineEdit_placeholderText(self: pointer, ): struct_miqt_string {.importc: "QLineEdit_placeholderText".}
proc fcQLineEdit_setPlaceholderText(self: pointer, placeholderText: struct_miqt_string): void {.importc: "QLineEdit_setPlaceholderText".}
proc fcQLineEdit_maxLength(self: pointer, ): cint {.importc: "QLineEdit_maxLength".}
proc fcQLineEdit_setMaxLength(self: pointer, maxLength: cint): void {.importc: "QLineEdit_setMaxLength".}
proc fcQLineEdit_setFrame(self: pointer, frame: bool): void {.importc: "QLineEdit_setFrame".}
proc fcQLineEdit_hasFrame(self: pointer, ): bool {.importc: "QLineEdit_hasFrame".}
proc fcQLineEdit_setClearButtonEnabled(self: pointer, enable: bool): void {.importc: "QLineEdit_setClearButtonEnabled".}
proc fcQLineEdit_isClearButtonEnabled(self: pointer, ): bool {.importc: "QLineEdit_isClearButtonEnabled".}
proc fcQLineEdit_echoMode(self: pointer, ): cint {.importc: "QLineEdit_echoMode".}
proc fcQLineEdit_setEchoMode(self: pointer, echoMode: cint): void {.importc: "QLineEdit_setEchoMode".}
proc fcQLineEdit_isReadOnly(self: pointer, ): bool {.importc: "QLineEdit_isReadOnly".}
proc fcQLineEdit_setReadOnly(self: pointer, readOnly: bool): void {.importc: "QLineEdit_setReadOnly".}
proc fcQLineEdit_setValidator(self: pointer, validator: pointer): void {.importc: "QLineEdit_setValidator".}
proc fcQLineEdit_validator(self: pointer, ): pointer {.importc: "QLineEdit_validator".}
proc fcQLineEdit_setCompleter(self: pointer, completer: pointer): void {.importc: "QLineEdit_setCompleter".}
proc fcQLineEdit_completer(self: pointer, ): pointer {.importc: "QLineEdit_completer".}
proc fcQLineEdit_sizeHint(self: pointer, ): pointer {.importc: "QLineEdit_sizeHint".}
proc fcQLineEdit_minimumSizeHint(self: pointer, ): pointer {.importc: "QLineEdit_minimumSizeHint".}
proc fcQLineEdit_cursorPosition(self: pointer, ): cint {.importc: "QLineEdit_cursorPosition".}
proc fcQLineEdit_setCursorPosition(self: pointer, cursorPosition: cint): void {.importc: "QLineEdit_setCursorPosition".}
proc fcQLineEdit_cursorPositionAt(self: pointer, pos: pointer): cint {.importc: "QLineEdit_cursorPositionAt".}
proc fcQLineEdit_setAlignment(self: pointer, flag: cint): void {.importc: "QLineEdit_setAlignment".}
proc fcQLineEdit_alignment(self: pointer, ): cint {.importc: "QLineEdit_alignment".}
proc fcQLineEdit_cursorForward(self: pointer, mark: bool): void {.importc: "QLineEdit_cursorForward".}
proc fcQLineEdit_cursorBackward(self: pointer, mark: bool): void {.importc: "QLineEdit_cursorBackward".}
proc fcQLineEdit_cursorWordForward(self: pointer, mark: bool): void {.importc: "QLineEdit_cursorWordForward".}
proc fcQLineEdit_cursorWordBackward(self: pointer, mark: bool): void {.importc: "QLineEdit_cursorWordBackward".}
proc fcQLineEdit_backspace(self: pointer, ): void {.importc: "QLineEdit_backspace".}
proc fcQLineEdit_del(self: pointer, ): void {.importc: "QLineEdit_del".}
proc fcQLineEdit_home(self: pointer, mark: bool): void {.importc: "QLineEdit_home".}
proc fcQLineEdit_endX(self: pointer, mark: bool): void {.importc: "QLineEdit_end".}
proc fcQLineEdit_isModified(self: pointer, ): bool {.importc: "QLineEdit_isModified".}
proc fcQLineEdit_setModified(self: pointer, modified: bool): void {.importc: "QLineEdit_setModified".}
proc fcQLineEdit_setSelection(self: pointer, param1: cint, param2: cint): void {.importc: "QLineEdit_setSelection".}
proc fcQLineEdit_hasSelectedText(self: pointer, ): bool {.importc: "QLineEdit_hasSelectedText".}
proc fcQLineEdit_selectedText(self: pointer, ): struct_miqt_string {.importc: "QLineEdit_selectedText".}
proc fcQLineEdit_selectionStart(self: pointer, ): cint {.importc: "QLineEdit_selectionStart".}
proc fcQLineEdit_selectionEnd(self: pointer, ): cint {.importc: "QLineEdit_selectionEnd".}
proc fcQLineEdit_selectionLength(self: pointer, ): cint {.importc: "QLineEdit_selectionLength".}
proc fcQLineEdit_isUndoAvailable(self: pointer, ): bool {.importc: "QLineEdit_isUndoAvailable".}
proc fcQLineEdit_isRedoAvailable(self: pointer, ): bool {.importc: "QLineEdit_isRedoAvailable".}
proc fcQLineEdit_setDragEnabled(self: pointer, b: bool): void {.importc: "QLineEdit_setDragEnabled".}
proc fcQLineEdit_dragEnabled(self: pointer, ): bool {.importc: "QLineEdit_dragEnabled".}
proc fcQLineEdit_setCursorMoveStyle(self: pointer, style: cint): void {.importc: "QLineEdit_setCursorMoveStyle".}
proc fcQLineEdit_cursorMoveStyle(self: pointer, ): cint {.importc: "QLineEdit_cursorMoveStyle".}
proc fcQLineEdit_inputMask(self: pointer, ): struct_miqt_string {.importc: "QLineEdit_inputMask".}
proc fcQLineEdit_setInputMask(self: pointer, inputMask: struct_miqt_string): void {.importc: "QLineEdit_setInputMask".}
proc fcQLineEdit_hasAcceptableInput(self: pointer, ): bool {.importc: "QLineEdit_hasAcceptableInput".}
proc fcQLineEdit_setTextMargins(self: pointer, left: cint, top: cint, right: cint, bottom: cint): void {.importc: "QLineEdit_setTextMargins".}
proc fcQLineEdit_setTextMarginsWithMargins(self: pointer, margins: pointer): void {.importc: "QLineEdit_setTextMarginsWithMargins".}
proc fcQLineEdit_getTextMargins(self: pointer, left: ptr cint, top: ptr cint, right: ptr cint, bottom: ptr cint): void {.importc: "QLineEdit_getTextMargins".}
proc fcQLineEdit_textMargins(self: pointer, ): pointer {.importc: "QLineEdit_textMargins".}
proc fcQLineEdit_addAction(self: pointer, action: pointer, position: cint): void {.importc: "QLineEdit_addAction".}
proc fcQLineEdit_addAction2(self: pointer, icon: pointer, position: cint): pointer {.importc: "QLineEdit_addAction2".}
proc fcQLineEdit_setText(self: pointer, text: struct_miqt_string): void {.importc: "QLineEdit_setText".}
proc fcQLineEdit_clear(self: pointer, ): void {.importc: "QLineEdit_clear".}
proc fcQLineEdit_selectAll(self: pointer, ): void {.importc: "QLineEdit_selectAll".}
proc fcQLineEdit_undo(self: pointer, ): void {.importc: "QLineEdit_undo".}
proc fcQLineEdit_redo(self: pointer, ): void {.importc: "QLineEdit_redo".}
proc fcQLineEdit_cut(self: pointer, ): void {.importc: "QLineEdit_cut".}
proc fcQLineEdit_copy(self: pointer, ): void {.importc: "QLineEdit_copy".}
proc fcQLineEdit_paste(self: pointer, ): void {.importc: "QLineEdit_paste".}
proc fcQLineEdit_deselect(self: pointer, ): void {.importc: "QLineEdit_deselect".}
proc fcQLineEdit_insert(self: pointer, param1: struct_miqt_string): void {.importc: "QLineEdit_insert".}
proc fcQLineEdit_createStandardContextMenu(self: pointer, ): pointer {.importc: "QLineEdit_createStandardContextMenu".}
proc fcQLineEdit_textChanged(self: pointer, param1: struct_miqt_string): void {.importc: "QLineEdit_textChanged".}
proc fcQLineEdit_connect_textChanged(self: pointer, slot: int, callback: proc (slot: int, param1: struct_miqt_string) {.cdecl.}, release: proc(slot: int) {.cdecl.}) {.importc: "QLineEdit_connect_textChanged".}
proc fcQLineEdit_textEdited(self: pointer, param1: struct_miqt_string): void {.importc: "QLineEdit_textEdited".}
proc fcQLineEdit_connect_textEdited(self: pointer, slot: int, callback: proc (slot: int, param1: struct_miqt_string) {.cdecl.}, release: proc(slot: int) {.cdecl.}) {.importc: "QLineEdit_connect_textEdited".}
proc fcQLineEdit_cursorPositionChanged(self: pointer, param1: cint, param2: cint): void {.importc: "QLineEdit_cursorPositionChanged".}
proc fcQLineEdit_connect_cursorPositionChanged(self: pointer, slot: int, callback: proc (slot: int, param1: cint, param2: cint) {.cdecl.}, release: proc(slot: int) {.cdecl.}) {.importc: "QLineEdit_connect_cursorPositionChanged".}
proc fcQLineEdit_returnPressed(self: pointer, ): void {.importc: "QLineEdit_returnPressed".}
proc fcQLineEdit_connect_returnPressed(self: pointer, slot: int, callback: proc (slot: int) {.cdecl.}, release: proc(slot: int) {.cdecl.}) {.importc: "QLineEdit_connect_returnPressed".}
proc fcQLineEdit_editingFinished(self: pointer, ): void {.importc: "QLineEdit_editingFinished".}
proc fcQLineEdit_connect_editingFinished(self: pointer, slot: int, callback: proc (slot: int) {.cdecl.}, release: proc(slot: int) {.cdecl.}) {.importc: "QLineEdit_connect_editingFinished".}
proc fcQLineEdit_selectionChanged(self: pointer, ): void {.importc: "QLineEdit_selectionChanged".}
proc fcQLineEdit_connect_selectionChanged(self: pointer, slot: int, callback: proc (slot: int) {.cdecl.}, release: proc(slot: int) {.cdecl.}) {.importc: "QLineEdit_connect_selectionChanged".}
proc fcQLineEdit_inputRejected(self: pointer, ): void {.importc: "QLineEdit_inputRejected".}
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
type cQLineEditVTable = object
  destructor*: proc(vtbl: ptr cQLineEditVTable, self: ptr cQLineEdit) {.cdecl, raises:[], gcsafe.}
  metaObject*: proc(vtbl, self: pointer, ): pointer {.cdecl, raises: [], gcsafe.}
  metacast*: proc(vtbl, self: pointer, param1: cstring): pointer {.cdecl, raises: [], gcsafe.}
  metacall*: proc(vtbl, self: pointer, param1: cint, param2: cint, param3: pointer): cint {.cdecl, raises: [], gcsafe.}
  sizeHint*: proc(vtbl, self: pointer, ): pointer {.cdecl, raises: [], gcsafe.}
  minimumSizeHint*: proc(vtbl, self: pointer, ): pointer {.cdecl, raises: [], gcsafe.}
  mousePressEvent*: proc(vtbl, self: pointer, param1: pointer): void {.cdecl, raises: [], gcsafe.}
  mouseMoveEvent*: proc(vtbl, self: pointer, param1: pointer): void {.cdecl, raises: [], gcsafe.}
  mouseReleaseEvent*: proc(vtbl, self: pointer, param1: pointer): void {.cdecl, raises: [], gcsafe.}
  mouseDoubleClickEvent*: proc(vtbl, self: pointer, param1: pointer): void {.cdecl, raises: [], gcsafe.}
  keyPressEvent*: proc(vtbl, self: pointer, param1: pointer): void {.cdecl, raises: [], gcsafe.}
  focusInEvent*: proc(vtbl, self: pointer, param1: pointer): void {.cdecl, raises: [], gcsafe.}
  focusOutEvent*: proc(vtbl, self: pointer, param1: pointer): void {.cdecl, raises: [], gcsafe.}
  paintEvent*: proc(vtbl, self: pointer, param1: pointer): void {.cdecl, raises: [], gcsafe.}
  dragEnterEvent*: proc(vtbl, self: pointer, param1: pointer): void {.cdecl, raises: [], gcsafe.}
  dragMoveEvent*: proc(vtbl, self: pointer, e: pointer): void {.cdecl, raises: [], gcsafe.}
  dragLeaveEvent*: proc(vtbl, self: pointer, e: pointer): void {.cdecl, raises: [], gcsafe.}
  dropEvent*: proc(vtbl, self: pointer, param1: pointer): void {.cdecl, raises: [], gcsafe.}
  changeEvent*: proc(vtbl, self: pointer, param1: pointer): void {.cdecl, raises: [], gcsafe.}
  contextMenuEvent*: proc(vtbl, self: pointer, param1: pointer): void {.cdecl, raises: [], gcsafe.}
  inputMethodEvent*: proc(vtbl, self: pointer, param1: pointer): void {.cdecl, raises: [], gcsafe.}
  inputMethodQuery*: proc(vtbl, self: pointer, param1: cint): pointer {.cdecl, raises: [], gcsafe.}
  event*: proc(vtbl, self: pointer, param1: pointer): bool {.cdecl, raises: [], gcsafe.}
  devType*: proc(vtbl, self: pointer, ): cint {.cdecl, raises: [], gcsafe.}
  setVisible*: proc(vtbl, self: pointer, visible: bool): void {.cdecl, raises: [], gcsafe.}
  heightForWidth*: proc(vtbl, self: pointer, param1: cint): cint {.cdecl, raises: [], gcsafe.}
  hasHeightForWidth*: proc(vtbl, self: pointer, ): bool {.cdecl, raises: [], gcsafe.}
  paintEngine*: proc(vtbl, self: pointer, ): pointer {.cdecl, raises: [], gcsafe.}
  wheelEvent*: proc(vtbl, self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  keyReleaseEvent*: proc(vtbl, self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  enterEvent*: proc(vtbl, self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  leaveEvent*: proc(vtbl, self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  moveEvent*: proc(vtbl, self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  resizeEvent*: proc(vtbl, self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  closeEvent*: proc(vtbl, self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  tabletEvent*: proc(vtbl, self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  actionEvent*: proc(vtbl, self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  showEvent*: proc(vtbl, self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  hideEvent*: proc(vtbl, self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  nativeEvent*: proc(vtbl, self: pointer, eventType: struct_miqt_string, message: pointer, resultVal: ptr clong): bool {.cdecl, raises: [], gcsafe.}
  metric*: proc(vtbl, self: pointer, param1: cint): cint {.cdecl, raises: [], gcsafe.}
  initPainter*: proc(vtbl, self: pointer, painter: pointer): void {.cdecl, raises: [], gcsafe.}
  redirected*: proc(vtbl, self: pointer, offset: pointer): pointer {.cdecl, raises: [], gcsafe.}
  sharedPainter*: proc(vtbl, self: pointer, ): pointer {.cdecl, raises: [], gcsafe.}
  focusNextPrevChild*: proc(vtbl, self: pointer, next: bool): bool {.cdecl, raises: [], gcsafe.}
  eventFilter*: proc(vtbl, self: pointer, watched: pointer, event: pointer): bool {.cdecl, raises: [], gcsafe.}
  timerEvent*: proc(vtbl, self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  childEvent*: proc(vtbl, self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  customEvent*: proc(vtbl, self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  connectNotify*: proc(vtbl, self: pointer, signal: pointer): void {.cdecl, raises: [], gcsafe.}
  disconnectNotify*: proc(vtbl, self: pointer, signal: pointer): void {.cdecl, raises: [], gcsafe.}
proc fcQLineEdit_virtualbase_metaObject(self: pointer, ): pointer {.importc: "QLineEdit_virtualbase_metaObject".}
proc fcQLineEdit_virtualbase_metacast(self: pointer, param1: cstring): pointer {.importc: "QLineEdit_virtualbase_metacast".}
proc fcQLineEdit_virtualbase_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.importc: "QLineEdit_virtualbase_metacall".}
proc fcQLineEdit_virtualbase_sizeHint(self: pointer, ): pointer {.importc: "QLineEdit_virtualbase_sizeHint".}
proc fcQLineEdit_virtualbase_minimumSizeHint(self: pointer, ): pointer {.importc: "QLineEdit_virtualbase_minimumSizeHint".}
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
proc fcQLineEdit_virtualbase_devType(self: pointer, ): cint {.importc: "QLineEdit_virtualbase_devType".}
proc fcQLineEdit_virtualbase_setVisible(self: pointer, visible: bool): void {.importc: "QLineEdit_virtualbase_setVisible".}
proc fcQLineEdit_virtualbase_heightForWidth(self: pointer, param1: cint): cint {.importc: "QLineEdit_virtualbase_heightForWidth".}
proc fcQLineEdit_virtualbase_hasHeightForWidth(self: pointer, ): bool {.importc: "QLineEdit_virtualbase_hasHeightForWidth".}
proc fcQLineEdit_virtualbase_paintEngine(self: pointer, ): pointer {.importc: "QLineEdit_virtualbase_paintEngine".}
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
proc fcQLineEdit_virtualbase_sharedPainter(self: pointer, ): pointer {.importc: "QLineEdit_virtualbase_sharedPainter".}
proc fcQLineEdit_virtualbase_focusNextPrevChild(self: pointer, next: bool): bool {.importc: "QLineEdit_virtualbase_focusNextPrevChild".}
proc fcQLineEdit_virtualbase_eventFilter(self: pointer, watched: pointer, event: pointer): bool {.importc: "QLineEdit_virtualbase_eventFilter".}
proc fcQLineEdit_virtualbase_timerEvent(self: pointer, event: pointer): void {.importc: "QLineEdit_virtualbase_timerEvent".}
proc fcQLineEdit_virtualbase_childEvent(self: pointer, event: pointer): void {.importc: "QLineEdit_virtualbase_childEvent".}
proc fcQLineEdit_virtualbase_customEvent(self: pointer, event: pointer): void {.importc: "QLineEdit_virtualbase_customEvent".}
proc fcQLineEdit_virtualbase_connectNotify(self: pointer, signal: pointer): void {.importc: "QLineEdit_virtualbase_connectNotify".}
proc fcQLineEdit_virtualbase_disconnectNotify(self: pointer, signal: pointer): void {.importc: "QLineEdit_virtualbase_disconnectNotify".}
proc fcQLineEdit_protectedbase_initStyleOption(self: pointer, option: pointer): void {.importc: "QLineEdit_protectedbase_initStyleOption".}
proc fcQLineEdit_protectedbase_cursorRect(self: pointer, ): pointer {.importc: "QLineEdit_protectedbase_cursorRect".}
proc fcQLineEdit_protectedbase_updateMicroFocus(self: pointer, ): void {.importc: "QLineEdit_protectedbase_updateMicroFocus".}
proc fcQLineEdit_protectedbase_create(self: pointer, ): void {.importc: "QLineEdit_protectedbase_create".}
proc fcQLineEdit_protectedbase_destroy(self: pointer, ): void {.importc: "QLineEdit_protectedbase_destroy".}
proc fcQLineEdit_protectedbase_focusNextChild(self: pointer, ): bool {.importc: "QLineEdit_protectedbase_focusNextChild".}
proc fcQLineEdit_protectedbase_focusPreviousChild(self: pointer, ): bool {.importc: "QLineEdit_protectedbase_focusPreviousChild".}
proc fcQLineEdit_protectedbase_sender(self: pointer, ): pointer {.importc: "QLineEdit_protectedbase_sender".}
proc fcQLineEdit_protectedbase_senderSignalIndex(self: pointer, ): cint {.importc: "QLineEdit_protectedbase_senderSignalIndex".}
proc fcQLineEdit_protectedbase_receivers(self: pointer, signal: cstring): cint {.importc: "QLineEdit_protectedbase_receivers".}
proc fcQLineEdit_protectedbase_isSignalConnected(self: pointer, signal: pointer): bool {.importc: "QLineEdit_protectedbase_isSignalConnected".}
proc fcQLineEdit_new(vtbl: pointer, parent: pointer): ptr cQLineEdit {.importc: "QLineEdit_new".}
proc fcQLineEdit_new2(vtbl: pointer, ): ptr cQLineEdit {.importc: "QLineEdit_new2".}
proc fcQLineEdit_new3(vtbl: pointer, param1: struct_miqt_string): ptr cQLineEdit {.importc: "QLineEdit_new3".}
proc fcQLineEdit_new4(vtbl: pointer, param1: struct_miqt_string, parent: pointer): ptr cQLineEdit {.importc: "QLineEdit_new4".}
proc fcQLineEdit_staticMetaObject(): pointer {.importc: "QLineEdit_staticMetaObject".}
proc fcQLineEdit_delete(self: pointer) {.importc: "QLineEdit_delete".}

proc metaObject*(self: gen_qlineedit_types.QLineEdit, ): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQLineEdit_metaObject(self.h))

proc metacast*(self: gen_qlineedit_types.QLineEdit, param1: cstring): pointer =
  fcQLineEdit_metacast(self.h, param1)

proc metacall*(self: gen_qlineedit_types.QLineEdit, param1: cint, param2: cint, param3: pointer): cint =
  fcQLineEdit_metacall(self.h, cint(param1), param2, param3)

proc tr*(_: type gen_qlineedit_types.QLineEdit, s: cstring): string =
  let v_ms = fcQLineEdit_tr(s)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc trUtf8*(_: type gen_qlineedit_types.QLineEdit, s: cstring): string =
  let v_ms = fcQLineEdit_trUtf8(s)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc text*(self: gen_qlineedit_types.QLineEdit, ): string =
  let v_ms = fcQLineEdit_text(self.h)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc displayText*(self: gen_qlineedit_types.QLineEdit, ): string =
  let v_ms = fcQLineEdit_displayText(self.h)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc placeholderText*(self: gen_qlineedit_types.QLineEdit, ): string =
  let v_ms = fcQLineEdit_placeholderText(self.h)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc setPlaceholderText*(self: gen_qlineedit_types.QLineEdit, placeholderText: string): void =
  fcQLineEdit_setPlaceholderText(self.h, struct_miqt_string(data: placeholderText, len: csize_t(len(placeholderText))))

proc maxLength*(self: gen_qlineedit_types.QLineEdit, ): cint =
  fcQLineEdit_maxLength(self.h)

proc setMaxLength*(self: gen_qlineedit_types.QLineEdit, maxLength: cint): void =
  fcQLineEdit_setMaxLength(self.h, maxLength)

proc setFrame*(self: gen_qlineedit_types.QLineEdit, frame: bool): void =
  fcQLineEdit_setFrame(self.h, frame)

proc hasFrame*(self: gen_qlineedit_types.QLineEdit, ): bool =
  fcQLineEdit_hasFrame(self.h)

proc setClearButtonEnabled*(self: gen_qlineedit_types.QLineEdit, enable: bool): void =
  fcQLineEdit_setClearButtonEnabled(self.h, enable)

proc isClearButtonEnabled*(self: gen_qlineedit_types.QLineEdit, ): bool =
  fcQLineEdit_isClearButtonEnabled(self.h)

proc echoMode*(self: gen_qlineedit_types.QLineEdit, ): cint =
  cint(fcQLineEdit_echoMode(self.h))

proc setEchoMode*(self: gen_qlineedit_types.QLineEdit, echoMode: cint): void =
  fcQLineEdit_setEchoMode(self.h, cint(echoMode))

proc isReadOnly*(self: gen_qlineedit_types.QLineEdit, ): bool =
  fcQLineEdit_isReadOnly(self.h)

proc setReadOnly*(self: gen_qlineedit_types.QLineEdit, readOnly: bool): void =
  fcQLineEdit_setReadOnly(self.h, readOnly)

proc setValidator*(self: gen_qlineedit_types.QLineEdit, validator: gen_qvalidator_types.QValidator): void =
  fcQLineEdit_setValidator(self.h, validator.h)

proc validator*(self: gen_qlineedit_types.QLineEdit, ): gen_qvalidator_types.QValidator =
  gen_qvalidator_types.QValidator(h: fcQLineEdit_validator(self.h))

proc setCompleter*(self: gen_qlineedit_types.QLineEdit, completer: gen_qcompleter_types.QCompleter): void =
  fcQLineEdit_setCompleter(self.h, completer.h)

proc completer*(self: gen_qlineedit_types.QLineEdit, ): gen_qcompleter_types.QCompleter =
  gen_qcompleter_types.QCompleter(h: fcQLineEdit_completer(self.h))

proc sizeHint*(self: gen_qlineedit_types.QLineEdit, ): gen_qsize_types.QSize =
  gen_qsize_types.QSize(h: fcQLineEdit_sizeHint(self.h))

proc minimumSizeHint*(self: gen_qlineedit_types.QLineEdit, ): gen_qsize_types.QSize =
  gen_qsize_types.QSize(h: fcQLineEdit_minimumSizeHint(self.h))

proc cursorPosition*(self: gen_qlineedit_types.QLineEdit, ): cint =
  fcQLineEdit_cursorPosition(self.h)

proc setCursorPosition*(self: gen_qlineedit_types.QLineEdit, cursorPosition: cint): void =
  fcQLineEdit_setCursorPosition(self.h, cursorPosition)

proc cursorPositionAt*(self: gen_qlineedit_types.QLineEdit, pos: gen_qpoint_types.QPoint): cint =
  fcQLineEdit_cursorPositionAt(self.h, pos.h)

proc setAlignment*(self: gen_qlineedit_types.QLineEdit, flag: cint): void =
  fcQLineEdit_setAlignment(self.h, cint(flag))

proc alignment*(self: gen_qlineedit_types.QLineEdit, ): cint =
  cint(fcQLineEdit_alignment(self.h))

proc cursorForward*(self: gen_qlineedit_types.QLineEdit, mark: bool): void =
  fcQLineEdit_cursorForward(self.h, mark)

proc cursorBackward*(self: gen_qlineedit_types.QLineEdit, mark: bool): void =
  fcQLineEdit_cursorBackward(self.h, mark)

proc cursorWordForward*(self: gen_qlineedit_types.QLineEdit, mark: bool): void =
  fcQLineEdit_cursorWordForward(self.h, mark)

proc cursorWordBackward*(self: gen_qlineedit_types.QLineEdit, mark: bool): void =
  fcQLineEdit_cursorWordBackward(self.h, mark)

proc backspace*(self: gen_qlineedit_types.QLineEdit, ): void =
  fcQLineEdit_backspace(self.h)

proc del*(self: gen_qlineedit_types.QLineEdit, ): void =
  fcQLineEdit_del(self.h)

proc home*(self: gen_qlineedit_types.QLineEdit, mark: bool): void =
  fcQLineEdit_home(self.h, mark)

proc endX*(self: gen_qlineedit_types.QLineEdit, mark: bool): void =
  fcQLineEdit_endX(self.h, mark)

proc isModified*(self: gen_qlineedit_types.QLineEdit, ): bool =
  fcQLineEdit_isModified(self.h)

proc setModified*(self: gen_qlineedit_types.QLineEdit, modified: bool): void =
  fcQLineEdit_setModified(self.h, modified)

proc setSelection*(self: gen_qlineedit_types.QLineEdit, param1: cint, param2: cint): void =
  fcQLineEdit_setSelection(self.h, param1, param2)

proc hasSelectedText*(self: gen_qlineedit_types.QLineEdit, ): bool =
  fcQLineEdit_hasSelectedText(self.h)

proc selectedText*(self: gen_qlineedit_types.QLineEdit, ): string =
  let v_ms = fcQLineEdit_selectedText(self.h)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc selectionStart*(self: gen_qlineedit_types.QLineEdit, ): cint =
  fcQLineEdit_selectionStart(self.h)

proc selectionEnd*(self: gen_qlineedit_types.QLineEdit, ): cint =
  fcQLineEdit_selectionEnd(self.h)

proc selectionLength*(self: gen_qlineedit_types.QLineEdit, ): cint =
  fcQLineEdit_selectionLength(self.h)

proc isUndoAvailable*(self: gen_qlineedit_types.QLineEdit, ): bool =
  fcQLineEdit_isUndoAvailable(self.h)

proc isRedoAvailable*(self: gen_qlineedit_types.QLineEdit, ): bool =
  fcQLineEdit_isRedoAvailable(self.h)

proc setDragEnabled*(self: gen_qlineedit_types.QLineEdit, b: bool): void =
  fcQLineEdit_setDragEnabled(self.h, b)

proc dragEnabled*(self: gen_qlineedit_types.QLineEdit, ): bool =
  fcQLineEdit_dragEnabled(self.h)

proc setCursorMoveStyle*(self: gen_qlineedit_types.QLineEdit, style: cint): void =
  fcQLineEdit_setCursorMoveStyle(self.h, cint(style))

proc cursorMoveStyle*(self: gen_qlineedit_types.QLineEdit, ): cint =
  cint(fcQLineEdit_cursorMoveStyle(self.h))

proc inputMask*(self: gen_qlineedit_types.QLineEdit, ): string =
  let v_ms = fcQLineEdit_inputMask(self.h)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc setInputMask*(self: gen_qlineedit_types.QLineEdit, inputMask: string): void =
  fcQLineEdit_setInputMask(self.h, struct_miqt_string(data: inputMask, len: csize_t(len(inputMask))))

proc hasAcceptableInput*(self: gen_qlineedit_types.QLineEdit, ): bool =
  fcQLineEdit_hasAcceptableInput(self.h)

proc setTextMargins*(self: gen_qlineedit_types.QLineEdit, left: cint, top: cint, right: cint, bottom: cint): void =
  fcQLineEdit_setTextMargins(self.h, left, top, right, bottom)

proc setTextMargins*(self: gen_qlineedit_types.QLineEdit, margins: gen_qmargins_types.QMargins): void =
  fcQLineEdit_setTextMarginsWithMargins(self.h, margins.h)

proc getTextMargins*(self: gen_qlineedit_types.QLineEdit, left: ptr cint, top: ptr cint, right: ptr cint, bottom: ptr cint): void =
  fcQLineEdit_getTextMargins(self.h, left, top, right, bottom)

proc textMargins*(self: gen_qlineedit_types.QLineEdit, ): gen_qmargins_types.QMargins =
  gen_qmargins_types.QMargins(h: fcQLineEdit_textMargins(self.h))

proc addAction*(self: gen_qlineedit_types.QLineEdit, action: gen_qaction_types.QAction, position: cint): void =
  fcQLineEdit_addAction(self.h, action.h, cint(position))

proc addAction*(self: gen_qlineedit_types.QLineEdit, icon: gen_qicon_types.QIcon, position: cint): gen_qaction_types.QAction =
  gen_qaction_types.QAction(h: fcQLineEdit_addAction2(self.h, icon.h, cint(position)))

proc setText*(self: gen_qlineedit_types.QLineEdit, text: string): void =
  fcQLineEdit_setText(self.h, struct_miqt_string(data: text, len: csize_t(len(text))))

proc clear*(self: gen_qlineedit_types.QLineEdit, ): void =
  fcQLineEdit_clear(self.h)

proc selectAll*(self: gen_qlineedit_types.QLineEdit, ): void =
  fcQLineEdit_selectAll(self.h)

proc undo*(self: gen_qlineedit_types.QLineEdit, ): void =
  fcQLineEdit_undo(self.h)

proc redo*(self: gen_qlineedit_types.QLineEdit, ): void =
  fcQLineEdit_redo(self.h)

proc cut*(self: gen_qlineedit_types.QLineEdit, ): void =
  fcQLineEdit_cut(self.h)

proc copy*(self: gen_qlineedit_types.QLineEdit, ): void =
  fcQLineEdit_copy(self.h)

proc paste*(self: gen_qlineedit_types.QLineEdit, ): void =
  fcQLineEdit_paste(self.h)

proc deselect*(self: gen_qlineedit_types.QLineEdit, ): void =
  fcQLineEdit_deselect(self.h)

proc insert*(self: gen_qlineedit_types.QLineEdit, param1: string): void =
  fcQLineEdit_insert(self.h, struct_miqt_string(data: param1, len: csize_t(len(param1))))

proc createStandardContextMenu*(self: gen_qlineedit_types.QLineEdit, ): gen_qmenu_types.QMenu =
  gen_qmenu_types.QMenu(h: fcQLineEdit_createStandardContextMenu(self.h))

proc textChanged*(self: gen_qlineedit_types.QLineEdit, param1: string): void =
  fcQLineEdit_textChanged(self.h, struct_miqt_string(data: param1, len: csize_t(len(param1))))

type QLineEdittextChangedSlot* = proc(param1: string)
proc miqt_exec_callback_cQLineEdit_textChanged(slot: int, param1: struct_miqt_string) {.cdecl.} =
  let nimfunc = cast[ptr QLineEdittextChangedSlot](cast[pointer](slot))
  let vparam1_ms = param1
  let vparam1x_ret = string.fromBytes(toOpenArrayByte(vparam1_ms.data, 0, int(vparam1_ms.len)-1))
  c_free(vparam1_ms.data)
  let slotval1 = vparam1x_ret

  nimfunc[](slotval1)

proc miqt_exec_callback_cQLineEdit_textChanged_release(slot: int) {.cdecl.} =
  let nimfunc = cast[ref QLineEdittextChangedSlot](cast[pointer](slot))
  GC_unref(nimfunc)

proc ontextChanged*(self: gen_qlineedit_types.QLineEdit, slot: QLineEdittextChangedSlot) =
  var tmp = new QLineEdittextChangedSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQLineEdit_connect_textChanged(self.h, cast[int](addr tmp[]), miqt_exec_callback_cQLineEdit_textChanged, miqt_exec_callback_cQLineEdit_textChanged_release)

proc textEdited*(self: gen_qlineedit_types.QLineEdit, param1: string): void =
  fcQLineEdit_textEdited(self.h, struct_miqt_string(data: param1, len: csize_t(len(param1))))

type QLineEdittextEditedSlot* = proc(param1: string)
proc miqt_exec_callback_cQLineEdit_textEdited(slot: int, param1: struct_miqt_string) {.cdecl.} =
  let nimfunc = cast[ptr QLineEdittextEditedSlot](cast[pointer](slot))
  let vparam1_ms = param1
  let vparam1x_ret = string.fromBytes(toOpenArrayByte(vparam1_ms.data, 0, int(vparam1_ms.len)-1))
  c_free(vparam1_ms.data)
  let slotval1 = vparam1x_ret

  nimfunc[](slotval1)

proc miqt_exec_callback_cQLineEdit_textEdited_release(slot: int) {.cdecl.} =
  let nimfunc = cast[ref QLineEdittextEditedSlot](cast[pointer](slot))
  GC_unref(nimfunc)

proc ontextEdited*(self: gen_qlineedit_types.QLineEdit, slot: QLineEdittextEditedSlot) =
  var tmp = new QLineEdittextEditedSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQLineEdit_connect_textEdited(self.h, cast[int](addr tmp[]), miqt_exec_callback_cQLineEdit_textEdited, miqt_exec_callback_cQLineEdit_textEdited_release)

proc cursorPositionChanged*(self: gen_qlineedit_types.QLineEdit, param1: cint, param2: cint): void =
  fcQLineEdit_cursorPositionChanged(self.h, param1, param2)

type QLineEditcursorPositionChangedSlot* = proc(param1: cint, param2: cint)
proc miqt_exec_callback_cQLineEdit_cursorPositionChanged(slot: int, param1: cint, param2: cint) {.cdecl.} =
  let nimfunc = cast[ptr QLineEditcursorPositionChangedSlot](cast[pointer](slot))
  let slotval1 = param1

  let slotval2 = param2

  nimfunc[](slotval1, slotval2)

proc miqt_exec_callback_cQLineEdit_cursorPositionChanged_release(slot: int) {.cdecl.} =
  let nimfunc = cast[ref QLineEditcursorPositionChangedSlot](cast[pointer](slot))
  GC_unref(nimfunc)

proc oncursorPositionChanged*(self: gen_qlineedit_types.QLineEdit, slot: QLineEditcursorPositionChangedSlot) =
  var tmp = new QLineEditcursorPositionChangedSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQLineEdit_connect_cursorPositionChanged(self.h, cast[int](addr tmp[]), miqt_exec_callback_cQLineEdit_cursorPositionChanged, miqt_exec_callback_cQLineEdit_cursorPositionChanged_release)

proc returnPressed*(self: gen_qlineedit_types.QLineEdit, ): void =
  fcQLineEdit_returnPressed(self.h)

type QLineEditreturnPressedSlot* = proc()
proc miqt_exec_callback_cQLineEdit_returnPressed(slot: int) {.cdecl.} =
  let nimfunc = cast[ptr QLineEditreturnPressedSlot](cast[pointer](slot))
  nimfunc[]()

proc miqt_exec_callback_cQLineEdit_returnPressed_release(slot: int) {.cdecl.} =
  let nimfunc = cast[ref QLineEditreturnPressedSlot](cast[pointer](slot))
  GC_unref(nimfunc)

proc onreturnPressed*(self: gen_qlineedit_types.QLineEdit, slot: QLineEditreturnPressedSlot) =
  var tmp = new QLineEditreturnPressedSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQLineEdit_connect_returnPressed(self.h, cast[int](addr tmp[]), miqt_exec_callback_cQLineEdit_returnPressed, miqt_exec_callback_cQLineEdit_returnPressed_release)

proc editingFinished*(self: gen_qlineedit_types.QLineEdit, ): void =
  fcQLineEdit_editingFinished(self.h)

type QLineEditeditingFinishedSlot* = proc()
proc miqt_exec_callback_cQLineEdit_editingFinished(slot: int) {.cdecl.} =
  let nimfunc = cast[ptr QLineEditeditingFinishedSlot](cast[pointer](slot))
  nimfunc[]()

proc miqt_exec_callback_cQLineEdit_editingFinished_release(slot: int) {.cdecl.} =
  let nimfunc = cast[ref QLineEditeditingFinishedSlot](cast[pointer](slot))
  GC_unref(nimfunc)

proc oneditingFinished*(self: gen_qlineedit_types.QLineEdit, slot: QLineEditeditingFinishedSlot) =
  var tmp = new QLineEditeditingFinishedSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQLineEdit_connect_editingFinished(self.h, cast[int](addr tmp[]), miqt_exec_callback_cQLineEdit_editingFinished, miqt_exec_callback_cQLineEdit_editingFinished_release)

proc selectionChanged*(self: gen_qlineedit_types.QLineEdit, ): void =
  fcQLineEdit_selectionChanged(self.h)

type QLineEditselectionChangedSlot* = proc()
proc miqt_exec_callback_cQLineEdit_selectionChanged(slot: int) {.cdecl.} =
  let nimfunc = cast[ptr QLineEditselectionChangedSlot](cast[pointer](slot))
  nimfunc[]()

proc miqt_exec_callback_cQLineEdit_selectionChanged_release(slot: int) {.cdecl.} =
  let nimfunc = cast[ref QLineEditselectionChangedSlot](cast[pointer](slot))
  GC_unref(nimfunc)

proc onselectionChanged*(self: gen_qlineedit_types.QLineEdit, slot: QLineEditselectionChangedSlot) =
  var tmp = new QLineEditselectionChangedSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQLineEdit_connect_selectionChanged(self.h, cast[int](addr tmp[]), miqt_exec_callback_cQLineEdit_selectionChanged, miqt_exec_callback_cQLineEdit_selectionChanged_release)

proc inputRejected*(self: gen_qlineedit_types.QLineEdit, ): void =
  fcQLineEdit_inputRejected(self.h)

type QLineEditinputRejectedSlot* = proc()
proc miqt_exec_callback_cQLineEdit_inputRejected(slot: int) {.cdecl.} =
  let nimfunc = cast[ptr QLineEditinputRejectedSlot](cast[pointer](slot))
  nimfunc[]()

proc miqt_exec_callback_cQLineEdit_inputRejected_release(slot: int) {.cdecl.} =
  let nimfunc = cast[ref QLineEditinputRejectedSlot](cast[pointer](slot))
  GC_unref(nimfunc)

proc oninputRejected*(self: gen_qlineedit_types.QLineEdit, slot: QLineEditinputRejectedSlot) =
  var tmp = new QLineEditinputRejectedSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQLineEdit_connect_inputRejected(self.h, cast[int](addr tmp[]), miqt_exec_callback_cQLineEdit_inputRejected, miqt_exec_callback_cQLineEdit_inputRejected_release)

proc inputMethodQuery*(self: gen_qlineedit_types.QLineEdit, param1: cint): gen_qvariant_types.QVariant =
  gen_qvariant_types.QVariant(h: fcQLineEdit_inputMethodQuery(self.h, cint(param1)))

proc inputMethodQuery*(self: gen_qlineedit_types.QLineEdit, property: cint, argument: gen_qvariant_types.QVariant): gen_qvariant_types.QVariant =
  gen_qvariant_types.QVariant(h: fcQLineEdit_inputMethodQuery2(self.h, cint(property), argument.h))

proc event*(self: gen_qlineedit_types.QLineEdit, param1: gen_qcoreevent_types.QEvent): bool =
  fcQLineEdit_event(self.h, param1.h)

proc tr*(_: type gen_qlineedit_types.QLineEdit, s: cstring, c: cstring): string =
  let v_ms = fcQLineEdit_tr2(s, c)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc tr*(_: type gen_qlineedit_types.QLineEdit, s: cstring, c: cstring, n: cint): string =
  let v_ms = fcQLineEdit_tr3(s, c, n)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc trUtf8*(_: type gen_qlineedit_types.QLineEdit, s: cstring, c: cstring): string =
  let v_ms = fcQLineEdit_trUtf82(s, c)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc trUtf8*(_: type gen_qlineedit_types.QLineEdit, s: cstring, c: cstring, n: cint): string =
  let v_ms = fcQLineEdit_trUtf83(s, c, n)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
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
type QLineEditnativeEventProc* = proc(self: QLineEdit, eventType: seq[byte], message: pointer, resultVal: ptr clong): bool {.raises: [], gcsafe.}
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
type QLineEditVTable* = object
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
proc QLineEditmetaObject*(self: gen_qlineedit_types.QLineEdit, ): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQLineEdit_virtualbase_metaObject(self.h))

proc miqt_exec_callback_cQLineEdit_metaObject(vtbl: pointer, self: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QLineEditVTable](vtbl)
  let self = QLineEdit(h: self)
  var virtualReturn = vtbl[].metaObject(self)
  virtualReturn.h

proc QLineEditmetacast*(self: gen_qlineedit_types.QLineEdit, param1: cstring): pointer =
  fcQLineEdit_virtualbase_metacast(self.h, param1)

proc miqt_exec_callback_cQLineEdit_metacast(vtbl: pointer, self: pointer, param1: cstring): pointer {.cdecl.} =
  let vtbl = cast[ptr QLineEditVTable](vtbl)
  let self = QLineEdit(h: self)
  let slotval1 = (param1)
  var virtualReturn = vtbl[].metacast(self, slotval1)
  virtualReturn

proc QLineEditmetacall*(self: gen_qlineedit_types.QLineEdit, param1: cint, param2: cint, param3: pointer): cint =
  fcQLineEdit_virtualbase_metacall(self.h, cint(param1), param2, param3)

proc miqt_exec_callback_cQLineEdit_metacall(vtbl: pointer, self: pointer, param1: cint, param2: cint, param3: pointer): cint {.cdecl.} =
  let vtbl = cast[ptr QLineEditVTable](vtbl)
  let self = QLineEdit(h: self)
  let slotval1 = cint(param1)
  let slotval2 = param2
  let slotval3 = param3
  var virtualReturn = vtbl[].metacall(self, slotval1, slotval2, slotval3)
  virtualReturn

proc QLineEditsizeHint*(self: gen_qlineedit_types.QLineEdit, ): gen_qsize_types.QSize =
  gen_qsize_types.QSize(h: fcQLineEdit_virtualbase_sizeHint(self.h))

proc miqt_exec_callback_cQLineEdit_sizeHint(vtbl: pointer, self: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QLineEditVTable](vtbl)
  let self = QLineEdit(h: self)
  var virtualReturn = vtbl[].sizeHint(self)
  virtualReturn.h

proc QLineEditminimumSizeHint*(self: gen_qlineedit_types.QLineEdit, ): gen_qsize_types.QSize =
  gen_qsize_types.QSize(h: fcQLineEdit_virtualbase_minimumSizeHint(self.h))

proc miqt_exec_callback_cQLineEdit_minimumSizeHint(vtbl: pointer, self: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QLineEditVTable](vtbl)
  let self = QLineEdit(h: self)
  var virtualReturn = vtbl[].minimumSizeHint(self)
  virtualReturn.h

proc QLineEditmousePressEvent*(self: gen_qlineedit_types.QLineEdit, param1: gen_qevent_types.QMouseEvent): void =
  fcQLineEdit_virtualbase_mousePressEvent(self.h, param1.h)

proc miqt_exec_callback_cQLineEdit_mousePressEvent(vtbl: pointer, self: pointer, param1: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QLineEditVTable](vtbl)
  let self = QLineEdit(h: self)
  let slotval1 = gen_qevent_types.QMouseEvent(h: param1)
  vtbl[].mousePressEvent(self, slotval1)

proc QLineEditmouseMoveEvent*(self: gen_qlineedit_types.QLineEdit, param1: gen_qevent_types.QMouseEvent): void =
  fcQLineEdit_virtualbase_mouseMoveEvent(self.h, param1.h)

proc miqt_exec_callback_cQLineEdit_mouseMoveEvent(vtbl: pointer, self: pointer, param1: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QLineEditVTable](vtbl)
  let self = QLineEdit(h: self)
  let slotval1 = gen_qevent_types.QMouseEvent(h: param1)
  vtbl[].mouseMoveEvent(self, slotval1)

proc QLineEditmouseReleaseEvent*(self: gen_qlineedit_types.QLineEdit, param1: gen_qevent_types.QMouseEvent): void =
  fcQLineEdit_virtualbase_mouseReleaseEvent(self.h, param1.h)

proc miqt_exec_callback_cQLineEdit_mouseReleaseEvent(vtbl: pointer, self: pointer, param1: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QLineEditVTable](vtbl)
  let self = QLineEdit(h: self)
  let slotval1 = gen_qevent_types.QMouseEvent(h: param1)
  vtbl[].mouseReleaseEvent(self, slotval1)

proc QLineEditmouseDoubleClickEvent*(self: gen_qlineedit_types.QLineEdit, param1: gen_qevent_types.QMouseEvent): void =
  fcQLineEdit_virtualbase_mouseDoubleClickEvent(self.h, param1.h)

proc miqt_exec_callback_cQLineEdit_mouseDoubleClickEvent(vtbl: pointer, self: pointer, param1: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QLineEditVTable](vtbl)
  let self = QLineEdit(h: self)
  let slotval1 = gen_qevent_types.QMouseEvent(h: param1)
  vtbl[].mouseDoubleClickEvent(self, slotval1)

proc QLineEditkeyPressEvent*(self: gen_qlineedit_types.QLineEdit, param1: gen_qevent_types.QKeyEvent): void =
  fcQLineEdit_virtualbase_keyPressEvent(self.h, param1.h)

proc miqt_exec_callback_cQLineEdit_keyPressEvent(vtbl: pointer, self: pointer, param1: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QLineEditVTable](vtbl)
  let self = QLineEdit(h: self)
  let slotval1 = gen_qevent_types.QKeyEvent(h: param1)
  vtbl[].keyPressEvent(self, slotval1)

proc QLineEditfocusInEvent*(self: gen_qlineedit_types.QLineEdit, param1: gen_qevent_types.QFocusEvent): void =
  fcQLineEdit_virtualbase_focusInEvent(self.h, param1.h)

proc miqt_exec_callback_cQLineEdit_focusInEvent(vtbl: pointer, self: pointer, param1: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QLineEditVTable](vtbl)
  let self = QLineEdit(h: self)
  let slotval1 = gen_qevent_types.QFocusEvent(h: param1)
  vtbl[].focusInEvent(self, slotval1)

proc QLineEditfocusOutEvent*(self: gen_qlineedit_types.QLineEdit, param1: gen_qevent_types.QFocusEvent): void =
  fcQLineEdit_virtualbase_focusOutEvent(self.h, param1.h)

proc miqt_exec_callback_cQLineEdit_focusOutEvent(vtbl: pointer, self: pointer, param1: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QLineEditVTable](vtbl)
  let self = QLineEdit(h: self)
  let slotval1 = gen_qevent_types.QFocusEvent(h: param1)
  vtbl[].focusOutEvent(self, slotval1)

proc QLineEditpaintEvent*(self: gen_qlineedit_types.QLineEdit, param1: gen_qevent_types.QPaintEvent): void =
  fcQLineEdit_virtualbase_paintEvent(self.h, param1.h)

proc miqt_exec_callback_cQLineEdit_paintEvent(vtbl: pointer, self: pointer, param1: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QLineEditVTable](vtbl)
  let self = QLineEdit(h: self)
  let slotval1 = gen_qevent_types.QPaintEvent(h: param1)
  vtbl[].paintEvent(self, slotval1)

proc QLineEditdragEnterEvent*(self: gen_qlineedit_types.QLineEdit, param1: gen_qevent_types.QDragEnterEvent): void =
  fcQLineEdit_virtualbase_dragEnterEvent(self.h, param1.h)

proc miqt_exec_callback_cQLineEdit_dragEnterEvent(vtbl: pointer, self: pointer, param1: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QLineEditVTable](vtbl)
  let self = QLineEdit(h: self)
  let slotval1 = gen_qevent_types.QDragEnterEvent(h: param1)
  vtbl[].dragEnterEvent(self, slotval1)

proc QLineEditdragMoveEvent*(self: gen_qlineedit_types.QLineEdit, e: gen_qevent_types.QDragMoveEvent): void =
  fcQLineEdit_virtualbase_dragMoveEvent(self.h, e.h)

proc miqt_exec_callback_cQLineEdit_dragMoveEvent(vtbl: pointer, self: pointer, e: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QLineEditVTable](vtbl)
  let self = QLineEdit(h: self)
  let slotval1 = gen_qevent_types.QDragMoveEvent(h: e)
  vtbl[].dragMoveEvent(self, slotval1)

proc QLineEditdragLeaveEvent*(self: gen_qlineedit_types.QLineEdit, e: gen_qevent_types.QDragLeaveEvent): void =
  fcQLineEdit_virtualbase_dragLeaveEvent(self.h, e.h)

proc miqt_exec_callback_cQLineEdit_dragLeaveEvent(vtbl: pointer, self: pointer, e: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QLineEditVTable](vtbl)
  let self = QLineEdit(h: self)
  let slotval1 = gen_qevent_types.QDragLeaveEvent(h: e)
  vtbl[].dragLeaveEvent(self, slotval1)

proc QLineEditdropEvent*(self: gen_qlineedit_types.QLineEdit, param1: gen_qevent_types.QDropEvent): void =
  fcQLineEdit_virtualbase_dropEvent(self.h, param1.h)

proc miqt_exec_callback_cQLineEdit_dropEvent(vtbl: pointer, self: pointer, param1: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QLineEditVTable](vtbl)
  let self = QLineEdit(h: self)
  let slotval1 = gen_qevent_types.QDropEvent(h: param1)
  vtbl[].dropEvent(self, slotval1)

proc QLineEditchangeEvent*(self: gen_qlineedit_types.QLineEdit, param1: gen_qcoreevent_types.QEvent): void =
  fcQLineEdit_virtualbase_changeEvent(self.h, param1.h)

proc miqt_exec_callback_cQLineEdit_changeEvent(vtbl: pointer, self: pointer, param1: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QLineEditVTable](vtbl)
  let self = QLineEdit(h: self)
  let slotval1 = gen_qcoreevent_types.QEvent(h: param1)
  vtbl[].changeEvent(self, slotval1)

proc QLineEditcontextMenuEvent*(self: gen_qlineedit_types.QLineEdit, param1: gen_qevent_types.QContextMenuEvent): void =
  fcQLineEdit_virtualbase_contextMenuEvent(self.h, param1.h)

proc miqt_exec_callback_cQLineEdit_contextMenuEvent(vtbl: pointer, self: pointer, param1: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QLineEditVTable](vtbl)
  let self = QLineEdit(h: self)
  let slotval1 = gen_qevent_types.QContextMenuEvent(h: param1)
  vtbl[].contextMenuEvent(self, slotval1)

proc QLineEditinputMethodEvent*(self: gen_qlineedit_types.QLineEdit, param1: gen_qevent_types.QInputMethodEvent): void =
  fcQLineEdit_virtualbase_inputMethodEvent(self.h, param1.h)

proc miqt_exec_callback_cQLineEdit_inputMethodEvent(vtbl: pointer, self: pointer, param1: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QLineEditVTable](vtbl)
  let self = QLineEdit(h: self)
  let slotval1 = gen_qevent_types.QInputMethodEvent(h: param1)
  vtbl[].inputMethodEvent(self, slotval1)

proc QLineEditinputMethodQuery*(self: gen_qlineedit_types.QLineEdit, param1: cint): gen_qvariant_types.QVariant =
  gen_qvariant_types.QVariant(h: fcQLineEdit_virtualbase_inputMethodQuery(self.h, cint(param1)))

proc miqt_exec_callback_cQLineEdit_inputMethodQuery(vtbl: pointer, self: pointer, param1: cint): pointer {.cdecl.} =
  let vtbl = cast[ptr QLineEditVTable](vtbl)
  let self = QLineEdit(h: self)
  let slotval1 = cint(param1)
  var virtualReturn = vtbl[].inputMethodQuery(self, slotval1)
  virtualReturn.h

proc QLineEditevent*(self: gen_qlineedit_types.QLineEdit, param1: gen_qcoreevent_types.QEvent): bool =
  fcQLineEdit_virtualbase_event(self.h, param1.h)

proc miqt_exec_callback_cQLineEdit_event(vtbl: pointer, self: pointer, param1: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QLineEditVTable](vtbl)
  let self = QLineEdit(h: self)
  let slotval1 = gen_qcoreevent_types.QEvent(h: param1)
  var virtualReturn = vtbl[].event(self, slotval1)
  virtualReturn

proc QLineEditdevType*(self: gen_qlineedit_types.QLineEdit, ): cint =
  fcQLineEdit_virtualbase_devType(self.h)

proc miqt_exec_callback_cQLineEdit_devType(vtbl: pointer, self: pointer): cint {.cdecl.} =
  let vtbl = cast[ptr QLineEditVTable](vtbl)
  let self = QLineEdit(h: self)
  var virtualReturn = vtbl[].devType(self)
  virtualReturn

proc QLineEditsetVisible*(self: gen_qlineedit_types.QLineEdit, visible: bool): void =
  fcQLineEdit_virtualbase_setVisible(self.h, visible)

proc miqt_exec_callback_cQLineEdit_setVisible(vtbl: pointer, self: pointer, visible: bool): void {.cdecl.} =
  let vtbl = cast[ptr QLineEditVTable](vtbl)
  let self = QLineEdit(h: self)
  let slotval1 = visible
  vtbl[].setVisible(self, slotval1)

proc QLineEditheightForWidth*(self: gen_qlineedit_types.QLineEdit, param1: cint): cint =
  fcQLineEdit_virtualbase_heightForWidth(self.h, param1)

proc miqt_exec_callback_cQLineEdit_heightForWidth(vtbl: pointer, self: pointer, param1: cint): cint {.cdecl.} =
  let vtbl = cast[ptr QLineEditVTable](vtbl)
  let self = QLineEdit(h: self)
  let slotval1 = param1
  var virtualReturn = vtbl[].heightForWidth(self, slotval1)
  virtualReturn

proc QLineEdithasHeightForWidth*(self: gen_qlineedit_types.QLineEdit, ): bool =
  fcQLineEdit_virtualbase_hasHeightForWidth(self.h)

proc miqt_exec_callback_cQLineEdit_hasHeightForWidth(vtbl: pointer, self: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QLineEditVTable](vtbl)
  let self = QLineEdit(h: self)
  var virtualReturn = vtbl[].hasHeightForWidth(self)
  virtualReturn

proc QLineEditpaintEngine*(self: gen_qlineedit_types.QLineEdit, ): gen_qpaintengine_types.QPaintEngine =
  gen_qpaintengine_types.QPaintEngine(h: fcQLineEdit_virtualbase_paintEngine(self.h))

proc miqt_exec_callback_cQLineEdit_paintEngine(vtbl: pointer, self: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QLineEditVTable](vtbl)
  let self = QLineEdit(h: self)
  var virtualReturn = vtbl[].paintEngine(self)
  virtualReturn.h

proc QLineEditwheelEvent*(self: gen_qlineedit_types.QLineEdit, event: gen_qevent_types.QWheelEvent): void =
  fcQLineEdit_virtualbase_wheelEvent(self.h, event.h)

proc miqt_exec_callback_cQLineEdit_wheelEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QLineEditVTable](vtbl)
  let self = QLineEdit(h: self)
  let slotval1 = gen_qevent_types.QWheelEvent(h: event)
  vtbl[].wheelEvent(self, slotval1)

proc QLineEditkeyReleaseEvent*(self: gen_qlineedit_types.QLineEdit, event: gen_qevent_types.QKeyEvent): void =
  fcQLineEdit_virtualbase_keyReleaseEvent(self.h, event.h)

proc miqt_exec_callback_cQLineEdit_keyReleaseEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QLineEditVTable](vtbl)
  let self = QLineEdit(h: self)
  let slotval1 = gen_qevent_types.QKeyEvent(h: event)
  vtbl[].keyReleaseEvent(self, slotval1)

proc QLineEditenterEvent*(self: gen_qlineedit_types.QLineEdit, event: gen_qcoreevent_types.QEvent): void =
  fcQLineEdit_virtualbase_enterEvent(self.h, event.h)

proc miqt_exec_callback_cQLineEdit_enterEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QLineEditVTable](vtbl)
  let self = QLineEdit(h: self)
  let slotval1 = gen_qcoreevent_types.QEvent(h: event)
  vtbl[].enterEvent(self, slotval1)

proc QLineEditleaveEvent*(self: gen_qlineedit_types.QLineEdit, event: gen_qcoreevent_types.QEvent): void =
  fcQLineEdit_virtualbase_leaveEvent(self.h, event.h)

proc miqt_exec_callback_cQLineEdit_leaveEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QLineEditVTable](vtbl)
  let self = QLineEdit(h: self)
  let slotval1 = gen_qcoreevent_types.QEvent(h: event)
  vtbl[].leaveEvent(self, slotval1)

proc QLineEditmoveEvent*(self: gen_qlineedit_types.QLineEdit, event: gen_qevent_types.QMoveEvent): void =
  fcQLineEdit_virtualbase_moveEvent(self.h, event.h)

proc miqt_exec_callback_cQLineEdit_moveEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QLineEditVTable](vtbl)
  let self = QLineEdit(h: self)
  let slotval1 = gen_qevent_types.QMoveEvent(h: event)
  vtbl[].moveEvent(self, slotval1)

proc QLineEditresizeEvent*(self: gen_qlineedit_types.QLineEdit, event: gen_qevent_types.QResizeEvent): void =
  fcQLineEdit_virtualbase_resizeEvent(self.h, event.h)

proc miqt_exec_callback_cQLineEdit_resizeEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QLineEditVTable](vtbl)
  let self = QLineEdit(h: self)
  let slotval1 = gen_qevent_types.QResizeEvent(h: event)
  vtbl[].resizeEvent(self, slotval1)

proc QLineEditcloseEvent*(self: gen_qlineedit_types.QLineEdit, event: gen_qevent_types.QCloseEvent): void =
  fcQLineEdit_virtualbase_closeEvent(self.h, event.h)

proc miqt_exec_callback_cQLineEdit_closeEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QLineEditVTable](vtbl)
  let self = QLineEdit(h: self)
  let slotval1 = gen_qevent_types.QCloseEvent(h: event)
  vtbl[].closeEvent(self, slotval1)

proc QLineEdittabletEvent*(self: gen_qlineedit_types.QLineEdit, event: gen_qevent_types.QTabletEvent): void =
  fcQLineEdit_virtualbase_tabletEvent(self.h, event.h)

proc miqt_exec_callback_cQLineEdit_tabletEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QLineEditVTable](vtbl)
  let self = QLineEdit(h: self)
  let slotval1 = gen_qevent_types.QTabletEvent(h: event)
  vtbl[].tabletEvent(self, slotval1)

proc QLineEditactionEvent*(self: gen_qlineedit_types.QLineEdit, event: gen_qevent_types.QActionEvent): void =
  fcQLineEdit_virtualbase_actionEvent(self.h, event.h)

proc miqt_exec_callback_cQLineEdit_actionEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QLineEditVTable](vtbl)
  let self = QLineEdit(h: self)
  let slotval1 = gen_qevent_types.QActionEvent(h: event)
  vtbl[].actionEvent(self, slotval1)

proc QLineEditshowEvent*(self: gen_qlineedit_types.QLineEdit, event: gen_qevent_types.QShowEvent): void =
  fcQLineEdit_virtualbase_showEvent(self.h, event.h)

proc miqt_exec_callback_cQLineEdit_showEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QLineEditVTable](vtbl)
  let self = QLineEdit(h: self)
  let slotval1 = gen_qevent_types.QShowEvent(h: event)
  vtbl[].showEvent(self, slotval1)

proc QLineEdithideEvent*(self: gen_qlineedit_types.QLineEdit, event: gen_qevent_types.QHideEvent): void =
  fcQLineEdit_virtualbase_hideEvent(self.h, event.h)

proc miqt_exec_callback_cQLineEdit_hideEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QLineEditVTable](vtbl)
  let self = QLineEdit(h: self)
  let slotval1 = gen_qevent_types.QHideEvent(h: event)
  vtbl[].hideEvent(self, slotval1)

proc QLineEditnativeEvent*(self: gen_qlineedit_types.QLineEdit, eventType: seq[byte], message: pointer, resultVal: ptr clong): bool =
  fcQLineEdit_virtualbase_nativeEvent(self.h, struct_miqt_string(data: cast[cstring](if len(eventType) == 0: nil else: unsafeAddr eventType[0]), len: csize_t(len(eventType))), message, resultVal)

proc miqt_exec_callback_cQLineEdit_nativeEvent(vtbl: pointer, self: pointer, eventType: struct_miqt_string, message: pointer, resultVal: ptr clong): bool {.cdecl.} =
  let vtbl = cast[ptr QLineEditVTable](vtbl)
  let self = QLineEdit(h: self)
  var veventType_bytearray = eventType
  var veventTypex_ret = @(toOpenArrayByte(veventType_bytearray.data, 0, int(veventType_bytearray.len)-1))
  c_free(veventType_bytearray.data)
  let slotval1 = veventTypex_ret
  let slotval2 = message
  let slotval3 = resultVal
  var virtualReturn = vtbl[].nativeEvent(self, slotval1, slotval2, slotval3)
  virtualReturn

proc QLineEditmetric*(self: gen_qlineedit_types.QLineEdit, param1: cint): cint =
  fcQLineEdit_virtualbase_metric(self.h, cint(param1))

proc miqt_exec_callback_cQLineEdit_metric(vtbl: pointer, self: pointer, param1: cint): cint {.cdecl.} =
  let vtbl = cast[ptr QLineEditVTable](vtbl)
  let self = QLineEdit(h: self)
  let slotval1 = cint(param1)
  var virtualReturn = vtbl[].metric(self, slotval1)
  virtualReturn

proc QLineEditinitPainter*(self: gen_qlineedit_types.QLineEdit, painter: gen_qpainter_types.QPainter): void =
  fcQLineEdit_virtualbase_initPainter(self.h, painter.h)

proc miqt_exec_callback_cQLineEdit_initPainter(vtbl: pointer, self: pointer, painter: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QLineEditVTable](vtbl)
  let self = QLineEdit(h: self)
  let slotval1 = gen_qpainter_types.QPainter(h: painter)
  vtbl[].initPainter(self, slotval1)

proc QLineEditredirected*(self: gen_qlineedit_types.QLineEdit, offset: gen_qpoint_types.QPoint): gen_qpaintdevice_types.QPaintDevice =
  gen_qpaintdevice_types.QPaintDevice(h: fcQLineEdit_virtualbase_redirected(self.h, offset.h))

proc miqt_exec_callback_cQLineEdit_redirected(vtbl: pointer, self: pointer, offset: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QLineEditVTable](vtbl)
  let self = QLineEdit(h: self)
  let slotval1 = gen_qpoint_types.QPoint(h: offset)
  var virtualReturn = vtbl[].redirected(self, slotval1)
  virtualReturn.h

proc QLineEditsharedPainter*(self: gen_qlineedit_types.QLineEdit, ): gen_qpainter_types.QPainter =
  gen_qpainter_types.QPainter(h: fcQLineEdit_virtualbase_sharedPainter(self.h))

proc miqt_exec_callback_cQLineEdit_sharedPainter(vtbl: pointer, self: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QLineEditVTable](vtbl)
  let self = QLineEdit(h: self)
  var virtualReturn = vtbl[].sharedPainter(self)
  virtualReturn.h

proc QLineEditfocusNextPrevChild*(self: gen_qlineedit_types.QLineEdit, next: bool): bool =
  fcQLineEdit_virtualbase_focusNextPrevChild(self.h, next)

proc miqt_exec_callback_cQLineEdit_focusNextPrevChild(vtbl: pointer, self: pointer, next: bool): bool {.cdecl.} =
  let vtbl = cast[ptr QLineEditVTable](vtbl)
  let self = QLineEdit(h: self)
  let slotval1 = next
  var virtualReturn = vtbl[].focusNextPrevChild(self, slotval1)
  virtualReturn

proc QLineEditeventFilter*(self: gen_qlineedit_types.QLineEdit, watched: gen_qobject_types.QObject, event: gen_qcoreevent_types.QEvent): bool =
  fcQLineEdit_virtualbase_eventFilter(self.h, watched.h, event.h)

proc miqt_exec_callback_cQLineEdit_eventFilter(vtbl: pointer, self: pointer, watched: pointer, event: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QLineEditVTable](vtbl)
  let self = QLineEdit(h: self)
  let slotval1 = gen_qobject_types.QObject(h: watched)
  let slotval2 = gen_qcoreevent_types.QEvent(h: event)
  var virtualReturn = vtbl[].eventFilter(self, slotval1, slotval2)
  virtualReturn

proc QLineEdittimerEvent*(self: gen_qlineedit_types.QLineEdit, event: gen_qcoreevent_types.QTimerEvent): void =
  fcQLineEdit_virtualbase_timerEvent(self.h, event.h)

proc miqt_exec_callback_cQLineEdit_timerEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QLineEditVTable](vtbl)
  let self = QLineEdit(h: self)
  let slotval1 = gen_qcoreevent_types.QTimerEvent(h: event)
  vtbl[].timerEvent(self, slotval1)

proc QLineEditchildEvent*(self: gen_qlineedit_types.QLineEdit, event: gen_qcoreevent_types.QChildEvent): void =
  fcQLineEdit_virtualbase_childEvent(self.h, event.h)

proc miqt_exec_callback_cQLineEdit_childEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QLineEditVTable](vtbl)
  let self = QLineEdit(h: self)
  let slotval1 = gen_qcoreevent_types.QChildEvent(h: event)
  vtbl[].childEvent(self, slotval1)

proc QLineEditcustomEvent*(self: gen_qlineedit_types.QLineEdit, event: gen_qcoreevent_types.QEvent): void =
  fcQLineEdit_virtualbase_customEvent(self.h, event.h)

proc miqt_exec_callback_cQLineEdit_customEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QLineEditVTable](vtbl)
  let self = QLineEdit(h: self)
  let slotval1 = gen_qcoreevent_types.QEvent(h: event)
  vtbl[].customEvent(self, slotval1)

proc QLineEditconnectNotify*(self: gen_qlineedit_types.QLineEdit, signal: gen_qmetaobject_types.QMetaMethod): void =
  fcQLineEdit_virtualbase_connectNotify(self.h, signal.h)

proc miqt_exec_callback_cQLineEdit_connectNotify(vtbl: pointer, self: pointer, signal: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QLineEditVTable](vtbl)
  let self = QLineEdit(h: self)
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal)
  vtbl[].connectNotify(self, slotval1)

proc QLineEditdisconnectNotify*(self: gen_qlineedit_types.QLineEdit, signal: gen_qmetaobject_types.QMetaMethod): void =
  fcQLineEdit_virtualbase_disconnectNotify(self.h, signal.h)

proc miqt_exec_callback_cQLineEdit_disconnectNotify(vtbl: pointer, self: pointer, signal: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QLineEditVTable](vtbl)
  let self = QLineEdit(h: self)
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal)
  vtbl[].disconnectNotify(self, slotval1)

proc initStyleOption*(self: gen_qlineedit_types.QLineEdit, option: gen_qstyleoption_types.QStyleOptionFrame): void =
  fcQLineEdit_protectedbase_initStyleOption(self.h, option.h)

proc cursorRect*(self: gen_qlineedit_types.QLineEdit, ): gen_qrect_types.QRect =
  gen_qrect_types.QRect(h: fcQLineEdit_protectedbase_cursorRect(self.h))

proc updateMicroFocus*(self: gen_qlineedit_types.QLineEdit, ): void =
  fcQLineEdit_protectedbase_updateMicroFocus(self.h)

proc create*(self: gen_qlineedit_types.QLineEdit, ): void =
  fcQLineEdit_protectedbase_create(self.h)

proc destroy*(self: gen_qlineedit_types.QLineEdit, ): void =
  fcQLineEdit_protectedbase_destroy(self.h)

proc focusNextChild*(self: gen_qlineedit_types.QLineEdit, ): bool =
  fcQLineEdit_protectedbase_focusNextChild(self.h)

proc focusPreviousChild*(self: gen_qlineedit_types.QLineEdit, ): bool =
  fcQLineEdit_protectedbase_focusPreviousChild(self.h)

proc sender*(self: gen_qlineedit_types.QLineEdit, ): gen_qobject_types.QObject =
  gen_qobject_types.QObject(h: fcQLineEdit_protectedbase_sender(self.h))

proc senderSignalIndex*(self: gen_qlineedit_types.QLineEdit, ): cint =
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
  vtbl.vtbl.destructor = proc(vtbl: ptr cQLineEditVTable, _: ptr cQLineEdit) {.cdecl.} =
    let vtbl = cast[ref QLineEditVTable](vtbl)
    GC_unref(vtbl)
  if not isNil(vtbl.metaObject):
    vtbl[].vtbl.metaObject = miqt_exec_callback_cQLineEdit_metaObject
  if not isNil(vtbl.metacast):
    vtbl[].vtbl.metacast = miqt_exec_callback_cQLineEdit_metacast
  if not isNil(vtbl.metacall):
    vtbl[].vtbl.metacall = miqt_exec_callback_cQLineEdit_metacall
  if not isNil(vtbl.sizeHint):
    vtbl[].vtbl.sizeHint = miqt_exec_callback_cQLineEdit_sizeHint
  if not isNil(vtbl.minimumSizeHint):
    vtbl[].vtbl.minimumSizeHint = miqt_exec_callback_cQLineEdit_minimumSizeHint
  if not isNil(vtbl.mousePressEvent):
    vtbl[].vtbl.mousePressEvent = miqt_exec_callback_cQLineEdit_mousePressEvent
  if not isNil(vtbl.mouseMoveEvent):
    vtbl[].vtbl.mouseMoveEvent = miqt_exec_callback_cQLineEdit_mouseMoveEvent
  if not isNil(vtbl.mouseReleaseEvent):
    vtbl[].vtbl.mouseReleaseEvent = miqt_exec_callback_cQLineEdit_mouseReleaseEvent
  if not isNil(vtbl.mouseDoubleClickEvent):
    vtbl[].vtbl.mouseDoubleClickEvent = miqt_exec_callback_cQLineEdit_mouseDoubleClickEvent
  if not isNil(vtbl.keyPressEvent):
    vtbl[].vtbl.keyPressEvent = miqt_exec_callback_cQLineEdit_keyPressEvent
  if not isNil(vtbl.focusInEvent):
    vtbl[].vtbl.focusInEvent = miqt_exec_callback_cQLineEdit_focusInEvent
  if not isNil(vtbl.focusOutEvent):
    vtbl[].vtbl.focusOutEvent = miqt_exec_callback_cQLineEdit_focusOutEvent
  if not isNil(vtbl.paintEvent):
    vtbl[].vtbl.paintEvent = miqt_exec_callback_cQLineEdit_paintEvent
  if not isNil(vtbl.dragEnterEvent):
    vtbl[].vtbl.dragEnterEvent = miqt_exec_callback_cQLineEdit_dragEnterEvent
  if not isNil(vtbl.dragMoveEvent):
    vtbl[].vtbl.dragMoveEvent = miqt_exec_callback_cQLineEdit_dragMoveEvent
  if not isNil(vtbl.dragLeaveEvent):
    vtbl[].vtbl.dragLeaveEvent = miqt_exec_callback_cQLineEdit_dragLeaveEvent
  if not isNil(vtbl.dropEvent):
    vtbl[].vtbl.dropEvent = miqt_exec_callback_cQLineEdit_dropEvent
  if not isNil(vtbl.changeEvent):
    vtbl[].vtbl.changeEvent = miqt_exec_callback_cQLineEdit_changeEvent
  if not isNil(vtbl.contextMenuEvent):
    vtbl[].vtbl.contextMenuEvent = miqt_exec_callback_cQLineEdit_contextMenuEvent
  if not isNil(vtbl.inputMethodEvent):
    vtbl[].vtbl.inputMethodEvent = miqt_exec_callback_cQLineEdit_inputMethodEvent
  if not isNil(vtbl.inputMethodQuery):
    vtbl[].vtbl.inputMethodQuery = miqt_exec_callback_cQLineEdit_inputMethodQuery
  if not isNil(vtbl.event):
    vtbl[].vtbl.event = miqt_exec_callback_cQLineEdit_event
  if not isNil(vtbl.devType):
    vtbl[].vtbl.devType = miqt_exec_callback_cQLineEdit_devType
  if not isNil(vtbl.setVisible):
    vtbl[].vtbl.setVisible = miqt_exec_callback_cQLineEdit_setVisible
  if not isNil(vtbl.heightForWidth):
    vtbl[].vtbl.heightForWidth = miqt_exec_callback_cQLineEdit_heightForWidth
  if not isNil(vtbl.hasHeightForWidth):
    vtbl[].vtbl.hasHeightForWidth = miqt_exec_callback_cQLineEdit_hasHeightForWidth
  if not isNil(vtbl.paintEngine):
    vtbl[].vtbl.paintEngine = miqt_exec_callback_cQLineEdit_paintEngine
  if not isNil(vtbl.wheelEvent):
    vtbl[].vtbl.wheelEvent = miqt_exec_callback_cQLineEdit_wheelEvent
  if not isNil(vtbl.keyReleaseEvent):
    vtbl[].vtbl.keyReleaseEvent = miqt_exec_callback_cQLineEdit_keyReleaseEvent
  if not isNil(vtbl.enterEvent):
    vtbl[].vtbl.enterEvent = miqt_exec_callback_cQLineEdit_enterEvent
  if not isNil(vtbl.leaveEvent):
    vtbl[].vtbl.leaveEvent = miqt_exec_callback_cQLineEdit_leaveEvent
  if not isNil(vtbl.moveEvent):
    vtbl[].vtbl.moveEvent = miqt_exec_callback_cQLineEdit_moveEvent
  if not isNil(vtbl.resizeEvent):
    vtbl[].vtbl.resizeEvent = miqt_exec_callback_cQLineEdit_resizeEvent
  if not isNil(vtbl.closeEvent):
    vtbl[].vtbl.closeEvent = miqt_exec_callback_cQLineEdit_closeEvent
  if not isNil(vtbl.tabletEvent):
    vtbl[].vtbl.tabletEvent = miqt_exec_callback_cQLineEdit_tabletEvent
  if not isNil(vtbl.actionEvent):
    vtbl[].vtbl.actionEvent = miqt_exec_callback_cQLineEdit_actionEvent
  if not isNil(vtbl.showEvent):
    vtbl[].vtbl.showEvent = miqt_exec_callback_cQLineEdit_showEvent
  if not isNil(vtbl.hideEvent):
    vtbl[].vtbl.hideEvent = miqt_exec_callback_cQLineEdit_hideEvent
  if not isNil(vtbl.nativeEvent):
    vtbl[].vtbl.nativeEvent = miqt_exec_callback_cQLineEdit_nativeEvent
  if not isNil(vtbl.metric):
    vtbl[].vtbl.metric = miqt_exec_callback_cQLineEdit_metric
  if not isNil(vtbl.initPainter):
    vtbl[].vtbl.initPainter = miqt_exec_callback_cQLineEdit_initPainter
  if not isNil(vtbl.redirected):
    vtbl[].vtbl.redirected = miqt_exec_callback_cQLineEdit_redirected
  if not isNil(vtbl.sharedPainter):
    vtbl[].vtbl.sharedPainter = miqt_exec_callback_cQLineEdit_sharedPainter
  if not isNil(vtbl.focusNextPrevChild):
    vtbl[].vtbl.focusNextPrevChild = miqt_exec_callback_cQLineEdit_focusNextPrevChild
  if not isNil(vtbl.eventFilter):
    vtbl[].vtbl.eventFilter = miqt_exec_callback_cQLineEdit_eventFilter
  if not isNil(vtbl.timerEvent):
    vtbl[].vtbl.timerEvent = miqt_exec_callback_cQLineEdit_timerEvent
  if not isNil(vtbl.childEvent):
    vtbl[].vtbl.childEvent = miqt_exec_callback_cQLineEdit_childEvent
  if not isNil(vtbl.customEvent):
    vtbl[].vtbl.customEvent = miqt_exec_callback_cQLineEdit_customEvent
  if not isNil(vtbl.connectNotify):
    vtbl[].vtbl.connectNotify = miqt_exec_callback_cQLineEdit_connectNotify
  if not isNil(vtbl.disconnectNotify):
    vtbl[].vtbl.disconnectNotify = miqt_exec_callback_cQLineEdit_disconnectNotify
  gen_qlineedit_types.QLineEdit(h: fcQLineEdit_new(addr(vtbl[]), parent.h))

proc create*(T: type gen_qlineedit_types.QLineEdit,
    vtbl: ref QLineEditVTable = nil): gen_qlineedit_types.QLineEdit =
  let vtbl = if vtbl == nil: new QLineEditVTable else: vtbl
  GC_ref(vtbl)
  vtbl.vtbl.destructor = proc(vtbl: ptr cQLineEditVTable, _: ptr cQLineEdit) {.cdecl.} =
    let vtbl = cast[ref QLineEditVTable](vtbl)
    GC_unref(vtbl)
  if not isNil(vtbl.metaObject):
    vtbl[].vtbl.metaObject = miqt_exec_callback_cQLineEdit_metaObject
  if not isNil(vtbl.metacast):
    vtbl[].vtbl.metacast = miqt_exec_callback_cQLineEdit_metacast
  if not isNil(vtbl.metacall):
    vtbl[].vtbl.metacall = miqt_exec_callback_cQLineEdit_metacall
  if not isNil(vtbl.sizeHint):
    vtbl[].vtbl.sizeHint = miqt_exec_callback_cQLineEdit_sizeHint
  if not isNil(vtbl.minimumSizeHint):
    vtbl[].vtbl.minimumSizeHint = miqt_exec_callback_cQLineEdit_minimumSizeHint
  if not isNil(vtbl.mousePressEvent):
    vtbl[].vtbl.mousePressEvent = miqt_exec_callback_cQLineEdit_mousePressEvent
  if not isNil(vtbl.mouseMoveEvent):
    vtbl[].vtbl.mouseMoveEvent = miqt_exec_callback_cQLineEdit_mouseMoveEvent
  if not isNil(vtbl.mouseReleaseEvent):
    vtbl[].vtbl.mouseReleaseEvent = miqt_exec_callback_cQLineEdit_mouseReleaseEvent
  if not isNil(vtbl.mouseDoubleClickEvent):
    vtbl[].vtbl.mouseDoubleClickEvent = miqt_exec_callback_cQLineEdit_mouseDoubleClickEvent
  if not isNil(vtbl.keyPressEvent):
    vtbl[].vtbl.keyPressEvent = miqt_exec_callback_cQLineEdit_keyPressEvent
  if not isNil(vtbl.focusInEvent):
    vtbl[].vtbl.focusInEvent = miqt_exec_callback_cQLineEdit_focusInEvent
  if not isNil(vtbl.focusOutEvent):
    vtbl[].vtbl.focusOutEvent = miqt_exec_callback_cQLineEdit_focusOutEvent
  if not isNil(vtbl.paintEvent):
    vtbl[].vtbl.paintEvent = miqt_exec_callback_cQLineEdit_paintEvent
  if not isNil(vtbl.dragEnterEvent):
    vtbl[].vtbl.dragEnterEvent = miqt_exec_callback_cQLineEdit_dragEnterEvent
  if not isNil(vtbl.dragMoveEvent):
    vtbl[].vtbl.dragMoveEvent = miqt_exec_callback_cQLineEdit_dragMoveEvent
  if not isNil(vtbl.dragLeaveEvent):
    vtbl[].vtbl.dragLeaveEvent = miqt_exec_callback_cQLineEdit_dragLeaveEvent
  if not isNil(vtbl.dropEvent):
    vtbl[].vtbl.dropEvent = miqt_exec_callback_cQLineEdit_dropEvent
  if not isNil(vtbl.changeEvent):
    vtbl[].vtbl.changeEvent = miqt_exec_callback_cQLineEdit_changeEvent
  if not isNil(vtbl.contextMenuEvent):
    vtbl[].vtbl.contextMenuEvent = miqt_exec_callback_cQLineEdit_contextMenuEvent
  if not isNil(vtbl.inputMethodEvent):
    vtbl[].vtbl.inputMethodEvent = miqt_exec_callback_cQLineEdit_inputMethodEvent
  if not isNil(vtbl.inputMethodQuery):
    vtbl[].vtbl.inputMethodQuery = miqt_exec_callback_cQLineEdit_inputMethodQuery
  if not isNil(vtbl.event):
    vtbl[].vtbl.event = miqt_exec_callback_cQLineEdit_event
  if not isNil(vtbl.devType):
    vtbl[].vtbl.devType = miqt_exec_callback_cQLineEdit_devType
  if not isNil(vtbl.setVisible):
    vtbl[].vtbl.setVisible = miqt_exec_callback_cQLineEdit_setVisible
  if not isNil(vtbl.heightForWidth):
    vtbl[].vtbl.heightForWidth = miqt_exec_callback_cQLineEdit_heightForWidth
  if not isNil(vtbl.hasHeightForWidth):
    vtbl[].vtbl.hasHeightForWidth = miqt_exec_callback_cQLineEdit_hasHeightForWidth
  if not isNil(vtbl.paintEngine):
    vtbl[].vtbl.paintEngine = miqt_exec_callback_cQLineEdit_paintEngine
  if not isNil(vtbl.wheelEvent):
    vtbl[].vtbl.wheelEvent = miqt_exec_callback_cQLineEdit_wheelEvent
  if not isNil(vtbl.keyReleaseEvent):
    vtbl[].vtbl.keyReleaseEvent = miqt_exec_callback_cQLineEdit_keyReleaseEvent
  if not isNil(vtbl.enterEvent):
    vtbl[].vtbl.enterEvent = miqt_exec_callback_cQLineEdit_enterEvent
  if not isNil(vtbl.leaveEvent):
    vtbl[].vtbl.leaveEvent = miqt_exec_callback_cQLineEdit_leaveEvent
  if not isNil(vtbl.moveEvent):
    vtbl[].vtbl.moveEvent = miqt_exec_callback_cQLineEdit_moveEvent
  if not isNil(vtbl.resizeEvent):
    vtbl[].vtbl.resizeEvent = miqt_exec_callback_cQLineEdit_resizeEvent
  if not isNil(vtbl.closeEvent):
    vtbl[].vtbl.closeEvent = miqt_exec_callback_cQLineEdit_closeEvent
  if not isNil(vtbl.tabletEvent):
    vtbl[].vtbl.tabletEvent = miqt_exec_callback_cQLineEdit_tabletEvent
  if not isNil(vtbl.actionEvent):
    vtbl[].vtbl.actionEvent = miqt_exec_callback_cQLineEdit_actionEvent
  if not isNil(vtbl.showEvent):
    vtbl[].vtbl.showEvent = miqt_exec_callback_cQLineEdit_showEvent
  if not isNil(vtbl.hideEvent):
    vtbl[].vtbl.hideEvent = miqt_exec_callback_cQLineEdit_hideEvent
  if not isNil(vtbl.nativeEvent):
    vtbl[].vtbl.nativeEvent = miqt_exec_callback_cQLineEdit_nativeEvent
  if not isNil(vtbl.metric):
    vtbl[].vtbl.metric = miqt_exec_callback_cQLineEdit_metric
  if not isNil(vtbl.initPainter):
    vtbl[].vtbl.initPainter = miqt_exec_callback_cQLineEdit_initPainter
  if not isNil(vtbl.redirected):
    vtbl[].vtbl.redirected = miqt_exec_callback_cQLineEdit_redirected
  if not isNil(vtbl.sharedPainter):
    vtbl[].vtbl.sharedPainter = miqt_exec_callback_cQLineEdit_sharedPainter
  if not isNil(vtbl.focusNextPrevChild):
    vtbl[].vtbl.focusNextPrevChild = miqt_exec_callback_cQLineEdit_focusNextPrevChild
  if not isNil(vtbl.eventFilter):
    vtbl[].vtbl.eventFilter = miqt_exec_callback_cQLineEdit_eventFilter
  if not isNil(vtbl.timerEvent):
    vtbl[].vtbl.timerEvent = miqt_exec_callback_cQLineEdit_timerEvent
  if not isNil(vtbl.childEvent):
    vtbl[].vtbl.childEvent = miqt_exec_callback_cQLineEdit_childEvent
  if not isNil(vtbl.customEvent):
    vtbl[].vtbl.customEvent = miqt_exec_callback_cQLineEdit_customEvent
  if not isNil(vtbl.connectNotify):
    vtbl[].vtbl.connectNotify = miqt_exec_callback_cQLineEdit_connectNotify
  if not isNil(vtbl.disconnectNotify):
    vtbl[].vtbl.disconnectNotify = miqt_exec_callback_cQLineEdit_disconnectNotify
  gen_qlineedit_types.QLineEdit(h: fcQLineEdit_new2(addr(vtbl[]), ))

proc create*(T: type gen_qlineedit_types.QLineEdit,
    param1: string,
    vtbl: ref QLineEditVTable = nil): gen_qlineedit_types.QLineEdit =
  let vtbl = if vtbl == nil: new QLineEditVTable else: vtbl
  GC_ref(vtbl)
  vtbl.vtbl.destructor = proc(vtbl: ptr cQLineEditVTable, _: ptr cQLineEdit) {.cdecl.} =
    let vtbl = cast[ref QLineEditVTable](vtbl)
    GC_unref(vtbl)
  if not isNil(vtbl.metaObject):
    vtbl[].vtbl.metaObject = miqt_exec_callback_cQLineEdit_metaObject
  if not isNil(vtbl.metacast):
    vtbl[].vtbl.metacast = miqt_exec_callback_cQLineEdit_metacast
  if not isNil(vtbl.metacall):
    vtbl[].vtbl.metacall = miqt_exec_callback_cQLineEdit_metacall
  if not isNil(vtbl.sizeHint):
    vtbl[].vtbl.sizeHint = miqt_exec_callback_cQLineEdit_sizeHint
  if not isNil(vtbl.minimumSizeHint):
    vtbl[].vtbl.minimumSizeHint = miqt_exec_callback_cQLineEdit_minimumSizeHint
  if not isNil(vtbl.mousePressEvent):
    vtbl[].vtbl.mousePressEvent = miqt_exec_callback_cQLineEdit_mousePressEvent
  if not isNil(vtbl.mouseMoveEvent):
    vtbl[].vtbl.mouseMoveEvent = miqt_exec_callback_cQLineEdit_mouseMoveEvent
  if not isNil(vtbl.mouseReleaseEvent):
    vtbl[].vtbl.mouseReleaseEvent = miqt_exec_callback_cQLineEdit_mouseReleaseEvent
  if not isNil(vtbl.mouseDoubleClickEvent):
    vtbl[].vtbl.mouseDoubleClickEvent = miqt_exec_callback_cQLineEdit_mouseDoubleClickEvent
  if not isNil(vtbl.keyPressEvent):
    vtbl[].vtbl.keyPressEvent = miqt_exec_callback_cQLineEdit_keyPressEvent
  if not isNil(vtbl.focusInEvent):
    vtbl[].vtbl.focusInEvent = miqt_exec_callback_cQLineEdit_focusInEvent
  if not isNil(vtbl.focusOutEvent):
    vtbl[].vtbl.focusOutEvent = miqt_exec_callback_cQLineEdit_focusOutEvent
  if not isNil(vtbl.paintEvent):
    vtbl[].vtbl.paintEvent = miqt_exec_callback_cQLineEdit_paintEvent
  if not isNil(vtbl.dragEnterEvent):
    vtbl[].vtbl.dragEnterEvent = miqt_exec_callback_cQLineEdit_dragEnterEvent
  if not isNil(vtbl.dragMoveEvent):
    vtbl[].vtbl.dragMoveEvent = miqt_exec_callback_cQLineEdit_dragMoveEvent
  if not isNil(vtbl.dragLeaveEvent):
    vtbl[].vtbl.dragLeaveEvent = miqt_exec_callback_cQLineEdit_dragLeaveEvent
  if not isNil(vtbl.dropEvent):
    vtbl[].vtbl.dropEvent = miqt_exec_callback_cQLineEdit_dropEvent
  if not isNil(vtbl.changeEvent):
    vtbl[].vtbl.changeEvent = miqt_exec_callback_cQLineEdit_changeEvent
  if not isNil(vtbl.contextMenuEvent):
    vtbl[].vtbl.contextMenuEvent = miqt_exec_callback_cQLineEdit_contextMenuEvent
  if not isNil(vtbl.inputMethodEvent):
    vtbl[].vtbl.inputMethodEvent = miqt_exec_callback_cQLineEdit_inputMethodEvent
  if not isNil(vtbl.inputMethodQuery):
    vtbl[].vtbl.inputMethodQuery = miqt_exec_callback_cQLineEdit_inputMethodQuery
  if not isNil(vtbl.event):
    vtbl[].vtbl.event = miqt_exec_callback_cQLineEdit_event
  if not isNil(vtbl.devType):
    vtbl[].vtbl.devType = miqt_exec_callback_cQLineEdit_devType
  if not isNil(vtbl.setVisible):
    vtbl[].vtbl.setVisible = miqt_exec_callback_cQLineEdit_setVisible
  if not isNil(vtbl.heightForWidth):
    vtbl[].vtbl.heightForWidth = miqt_exec_callback_cQLineEdit_heightForWidth
  if not isNil(vtbl.hasHeightForWidth):
    vtbl[].vtbl.hasHeightForWidth = miqt_exec_callback_cQLineEdit_hasHeightForWidth
  if not isNil(vtbl.paintEngine):
    vtbl[].vtbl.paintEngine = miqt_exec_callback_cQLineEdit_paintEngine
  if not isNil(vtbl.wheelEvent):
    vtbl[].vtbl.wheelEvent = miqt_exec_callback_cQLineEdit_wheelEvent
  if not isNil(vtbl.keyReleaseEvent):
    vtbl[].vtbl.keyReleaseEvent = miqt_exec_callback_cQLineEdit_keyReleaseEvent
  if not isNil(vtbl.enterEvent):
    vtbl[].vtbl.enterEvent = miqt_exec_callback_cQLineEdit_enterEvent
  if not isNil(vtbl.leaveEvent):
    vtbl[].vtbl.leaveEvent = miqt_exec_callback_cQLineEdit_leaveEvent
  if not isNil(vtbl.moveEvent):
    vtbl[].vtbl.moveEvent = miqt_exec_callback_cQLineEdit_moveEvent
  if not isNil(vtbl.resizeEvent):
    vtbl[].vtbl.resizeEvent = miqt_exec_callback_cQLineEdit_resizeEvent
  if not isNil(vtbl.closeEvent):
    vtbl[].vtbl.closeEvent = miqt_exec_callback_cQLineEdit_closeEvent
  if not isNil(vtbl.tabletEvent):
    vtbl[].vtbl.tabletEvent = miqt_exec_callback_cQLineEdit_tabletEvent
  if not isNil(vtbl.actionEvent):
    vtbl[].vtbl.actionEvent = miqt_exec_callback_cQLineEdit_actionEvent
  if not isNil(vtbl.showEvent):
    vtbl[].vtbl.showEvent = miqt_exec_callback_cQLineEdit_showEvent
  if not isNil(vtbl.hideEvent):
    vtbl[].vtbl.hideEvent = miqt_exec_callback_cQLineEdit_hideEvent
  if not isNil(vtbl.nativeEvent):
    vtbl[].vtbl.nativeEvent = miqt_exec_callback_cQLineEdit_nativeEvent
  if not isNil(vtbl.metric):
    vtbl[].vtbl.metric = miqt_exec_callback_cQLineEdit_metric
  if not isNil(vtbl.initPainter):
    vtbl[].vtbl.initPainter = miqt_exec_callback_cQLineEdit_initPainter
  if not isNil(vtbl.redirected):
    vtbl[].vtbl.redirected = miqt_exec_callback_cQLineEdit_redirected
  if not isNil(vtbl.sharedPainter):
    vtbl[].vtbl.sharedPainter = miqt_exec_callback_cQLineEdit_sharedPainter
  if not isNil(vtbl.focusNextPrevChild):
    vtbl[].vtbl.focusNextPrevChild = miqt_exec_callback_cQLineEdit_focusNextPrevChild
  if not isNil(vtbl.eventFilter):
    vtbl[].vtbl.eventFilter = miqt_exec_callback_cQLineEdit_eventFilter
  if not isNil(vtbl.timerEvent):
    vtbl[].vtbl.timerEvent = miqt_exec_callback_cQLineEdit_timerEvent
  if not isNil(vtbl.childEvent):
    vtbl[].vtbl.childEvent = miqt_exec_callback_cQLineEdit_childEvent
  if not isNil(vtbl.customEvent):
    vtbl[].vtbl.customEvent = miqt_exec_callback_cQLineEdit_customEvent
  if not isNil(vtbl.connectNotify):
    vtbl[].vtbl.connectNotify = miqt_exec_callback_cQLineEdit_connectNotify
  if not isNil(vtbl.disconnectNotify):
    vtbl[].vtbl.disconnectNotify = miqt_exec_callback_cQLineEdit_disconnectNotify
  gen_qlineedit_types.QLineEdit(h: fcQLineEdit_new3(addr(vtbl[]), struct_miqt_string(data: param1, len: csize_t(len(param1)))))

proc create*(T: type gen_qlineedit_types.QLineEdit,
    param1: string, parent: gen_qwidget_types.QWidget,
    vtbl: ref QLineEditVTable = nil): gen_qlineedit_types.QLineEdit =
  let vtbl = if vtbl == nil: new QLineEditVTable else: vtbl
  GC_ref(vtbl)
  vtbl.vtbl.destructor = proc(vtbl: ptr cQLineEditVTable, _: ptr cQLineEdit) {.cdecl.} =
    let vtbl = cast[ref QLineEditVTable](vtbl)
    GC_unref(vtbl)
  if not isNil(vtbl.metaObject):
    vtbl[].vtbl.metaObject = miqt_exec_callback_cQLineEdit_metaObject
  if not isNil(vtbl.metacast):
    vtbl[].vtbl.metacast = miqt_exec_callback_cQLineEdit_metacast
  if not isNil(vtbl.metacall):
    vtbl[].vtbl.metacall = miqt_exec_callback_cQLineEdit_metacall
  if not isNil(vtbl.sizeHint):
    vtbl[].vtbl.sizeHint = miqt_exec_callback_cQLineEdit_sizeHint
  if not isNil(vtbl.minimumSizeHint):
    vtbl[].vtbl.minimumSizeHint = miqt_exec_callback_cQLineEdit_minimumSizeHint
  if not isNil(vtbl.mousePressEvent):
    vtbl[].vtbl.mousePressEvent = miqt_exec_callback_cQLineEdit_mousePressEvent
  if not isNil(vtbl.mouseMoveEvent):
    vtbl[].vtbl.mouseMoveEvent = miqt_exec_callback_cQLineEdit_mouseMoveEvent
  if not isNil(vtbl.mouseReleaseEvent):
    vtbl[].vtbl.mouseReleaseEvent = miqt_exec_callback_cQLineEdit_mouseReleaseEvent
  if not isNil(vtbl.mouseDoubleClickEvent):
    vtbl[].vtbl.mouseDoubleClickEvent = miqt_exec_callback_cQLineEdit_mouseDoubleClickEvent
  if not isNil(vtbl.keyPressEvent):
    vtbl[].vtbl.keyPressEvent = miqt_exec_callback_cQLineEdit_keyPressEvent
  if not isNil(vtbl.focusInEvent):
    vtbl[].vtbl.focusInEvent = miqt_exec_callback_cQLineEdit_focusInEvent
  if not isNil(vtbl.focusOutEvent):
    vtbl[].vtbl.focusOutEvent = miqt_exec_callback_cQLineEdit_focusOutEvent
  if not isNil(vtbl.paintEvent):
    vtbl[].vtbl.paintEvent = miqt_exec_callback_cQLineEdit_paintEvent
  if not isNil(vtbl.dragEnterEvent):
    vtbl[].vtbl.dragEnterEvent = miqt_exec_callback_cQLineEdit_dragEnterEvent
  if not isNil(vtbl.dragMoveEvent):
    vtbl[].vtbl.dragMoveEvent = miqt_exec_callback_cQLineEdit_dragMoveEvent
  if not isNil(vtbl.dragLeaveEvent):
    vtbl[].vtbl.dragLeaveEvent = miqt_exec_callback_cQLineEdit_dragLeaveEvent
  if not isNil(vtbl.dropEvent):
    vtbl[].vtbl.dropEvent = miqt_exec_callback_cQLineEdit_dropEvent
  if not isNil(vtbl.changeEvent):
    vtbl[].vtbl.changeEvent = miqt_exec_callback_cQLineEdit_changeEvent
  if not isNil(vtbl.contextMenuEvent):
    vtbl[].vtbl.contextMenuEvent = miqt_exec_callback_cQLineEdit_contextMenuEvent
  if not isNil(vtbl.inputMethodEvent):
    vtbl[].vtbl.inputMethodEvent = miqt_exec_callback_cQLineEdit_inputMethodEvent
  if not isNil(vtbl.inputMethodQuery):
    vtbl[].vtbl.inputMethodQuery = miqt_exec_callback_cQLineEdit_inputMethodQuery
  if not isNil(vtbl.event):
    vtbl[].vtbl.event = miqt_exec_callback_cQLineEdit_event
  if not isNil(vtbl.devType):
    vtbl[].vtbl.devType = miqt_exec_callback_cQLineEdit_devType
  if not isNil(vtbl.setVisible):
    vtbl[].vtbl.setVisible = miqt_exec_callback_cQLineEdit_setVisible
  if not isNil(vtbl.heightForWidth):
    vtbl[].vtbl.heightForWidth = miqt_exec_callback_cQLineEdit_heightForWidth
  if not isNil(vtbl.hasHeightForWidth):
    vtbl[].vtbl.hasHeightForWidth = miqt_exec_callback_cQLineEdit_hasHeightForWidth
  if not isNil(vtbl.paintEngine):
    vtbl[].vtbl.paintEngine = miqt_exec_callback_cQLineEdit_paintEngine
  if not isNil(vtbl.wheelEvent):
    vtbl[].vtbl.wheelEvent = miqt_exec_callback_cQLineEdit_wheelEvent
  if not isNil(vtbl.keyReleaseEvent):
    vtbl[].vtbl.keyReleaseEvent = miqt_exec_callback_cQLineEdit_keyReleaseEvent
  if not isNil(vtbl.enterEvent):
    vtbl[].vtbl.enterEvent = miqt_exec_callback_cQLineEdit_enterEvent
  if not isNil(vtbl.leaveEvent):
    vtbl[].vtbl.leaveEvent = miqt_exec_callback_cQLineEdit_leaveEvent
  if not isNil(vtbl.moveEvent):
    vtbl[].vtbl.moveEvent = miqt_exec_callback_cQLineEdit_moveEvent
  if not isNil(vtbl.resizeEvent):
    vtbl[].vtbl.resizeEvent = miqt_exec_callback_cQLineEdit_resizeEvent
  if not isNil(vtbl.closeEvent):
    vtbl[].vtbl.closeEvent = miqt_exec_callback_cQLineEdit_closeEvent
  if not isNil(vtbl.tabletEvent):
    vtbl[].vtbl.tabletEvent = miqt_exec_callback_cQLineEdit_tabletEvent
  if not isNil(vtbl.actionEvent):
    vtbl[].vtbl.actionEvent = miqt_exec_callback_cQLineEdit_actionEvent
  if not isNil(vtbl.showEvent):
    vtbl[].vtbl.showEvent = miqt_exec_callback_cQLineEdit_showEvent
  if not isNil(vtbl.hideEvent):
    vtbl[].vtbl.hideEvent = miqt_exec_callback_cQLineEdit_hideEvent
  if not isNil(vtbl.nativeEvent):
    vtbl[].vtbl.nativeEvent = miqt_exec_callback_cQLineEdit_nativeEvent
  if not isNil(vtbl.metric):
    vtbl[].vtbl.metric = miqt_exec_callback_cQLineEdit_metric
  if not isNil(vtbl.initPainter):
    vtbl[].vtbl.initPainter = miqt_exec_callback_cQLineEdit_initPainter
  if not isNil(vtbl.redirected):
    vtbl[].vtbl.redirected = miqt_exec_callback_cQLineEdit_redirected
  if not isNil(vtbl.sharedPainter):
    vtbl[].vtbl.sharedPainter = miqt_exec_callback_cQLineEdit_sharedPainter
  if not isNil(vtbl.focusNextPrevChild):
    vtbl[].vtbl.focusNextPrevChild = miqt_exec_callback_cQLineEdit_focusNextPrevChild
  if not isNil(vtbl.eventFilter):
    vtbl[].vtbl.eventFilter = miqt_exec_callback_cQLineEdit_eventFilter
  if not isNil(vtbl.timerEvent):
    vtbl[].vtbl.timerEvent = miqt_exec_callback_cQLineEdit_timerEvent
  if not isNil(vtbl.childEvent):
    vtbl[].vtbl.childEvent = miqt_exec_callback_cQLineEdit_childEvent
  if not isNil(vtbl.customEvent):
    vtbl[].vtbl.customEvent = miqt_exec_callback_cQLineEdit_customEvent
  if not isNil(vtbl.connectNotify):
    vtbl[].vtbl.connectNotify = miqt_exec_callback_cQLineEdit_connectNotify
  if not isNil(vtbl.disconnectNotify):
    vtbl[].vtbl.disconnectNotify = miqt_exec_callback_cQLineEdit_disconnectNotify
  gen_qlineedit_types.QLineEdit(h: fcQLineEdit_new4(addr(vtbl[]), struct_miqt_string(data: param1, len: csize_t(len(param1))), parent.h))

proc staticMetaObject*(_: type gen_qlineedit_types.QLineEdit): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQLineEdit_staticMetaObject())
proc delete*(self: gen_qlineedit_types.QLineEdit) =
  fcQLineEdit_delete(self.h)
