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
  ../QtCore/gen_qsize_types,
  ../QtCore/gen_qvariant_types,
  ../QtGui/gen_qaction_types,
  ../QtGui/gen_qevent_types,
  ../QtGui/gen_qicon_types,
  ../QtGui/gen_qpaintdevice_types,
  ../QtGui/gen_qpaintengine_types,
  ../QtGui/gen_qpainter_types,
  ../QtGui/gen_qvalidator_types,
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
  gen_qsize_types,
  gen_qvariant_types,
  gen_qaction_types,
  gen_qevent_types,
  gen_qicon_types,
  gen_qpaintdevice_types,
  gen_qpaintengine_types,
  gen_qpainter_types,
  gen_qvalidator_types,
  gen_qcompleter_types,
  gen_qmenu_types,
  gen_qstyleoption_types,
  gen_qwidget

type cQLineEdit*{.exportc: "QLineEdit", incompleteStruct.} = object

proc fcQLineEdit_new(parent: pointer): ptr cQLineEdit {.importc: "QLineEdit_new".}
proc fcQLineEdit_new2(): ptr cQLineEdit {.importc: "QLineEdit_new2".}
proc fcQLineEdit_new3(param1: struct_miqt_string): ptr cQLineEdit {.importc: "QLineEdit_new3".}
proc fcQLineEdit_new4(param1: struct_miqt_string, parent: pointer): ptr cQLineEdit {.importc: "QLineEdit_new4".}
proc fcQLineEdit_metaObject(self: pointer, ): pointer {.importc: "QLineEdit_metaObject".}
proc fcQLineEdit_metacast(self: pointer, param1: cstring): pointer {.importc: "QLineEdit_metacast".}
proc fcQLineEdit_tr(s: cstring): struct_miqt_string {.importc: "QLineEdit_tr".}
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
proc fcQLineEdit_connect_textChanged(self: pointer, slot: int) {.importc: "QLineEdit_connect_textChanged".}
proc fcQLineEdit_textEdited(self: pointer, param1: struct_miqt_string): void {.importc: "QLineEdit_textEdited".}
proc fcQLineEdit_connect_textEdited(self: pointer, slot: int) {.importc: "QLineEdit_connect_textEdited".}
proc fcQLineEdit_cursorPositionChanged(self: pointer, param1: cint, param2: cint): void {.importc: "QLineEdit_cursorPositionChanged".}
proc fcQLineEdit_connect_cursorPositionChanged(self: pointer, slot: int) {.importc: "QLineEdit_connect_cursorPositionChanged".}
proc fcQLineEdit_returnPressed(self: pointer, ): void {.importc: "QLineEdit_returnPressed".}
proc fcQLineEdit_connect_returnPressed(self: pointer, slot: int) {.importc: "QLineEdit_connect_returnPressed".}
proc fcQLineEdit_editingFinished(self: pointer, ): void {.importc: "QLineEdit_editingFinished".}
proc fcQLineEdit_connect_editingFinished(self: pointer, slot: int) {.importc: "QLineEdit_connect_editingFinished".}
proc fcQLineEdit_selectionChanged(self: pointer, ): void {.importc: "QLineEdit_selectionChanged".}
proc fcQLineEdit_connect_selectionChanged(self: pointer, slot: int) {.importc: "QLineEdit_connect_selectionChanged".}
proc fcQLineEdit_inputRejected(self: pointer, ): void {.importc: "QLineEdit_inputRejected".}
proc fcQLineEdit_connect_inputRejected(self: pointer, slot: int) {.importc: "QLineEdit_connect_inputRejected".}
proc fcQLineEdit_inputMethodQuery(self: pointer, param1: cint): pointer {.importc: "QLineEdit_inputMethodQuery".}
proc fcQLineEdit_inputMethodQuery2(self: pointer, property: cint, argument: pointer): pointer {.importc: "QLineEdit_inputMethodQuery2".}
proc fcQLineEdit_timerEvent(self: pointer, param1: pointer): void {.importc: "QLineEdit_timerEvent".}
proc fcQLineEdit_event(self: pointer, param1: pointer): bool {.importc: "QLineEdit_event".}
proc fcQLineEdit_tr2(s: cstring, c: cstring): struct_miqt_string {.importc: "QLineEdit_tr2".}
proc fcQLineEdit_tr3(s: cstring, c: cstring, n: cint): struct_miqt_string {.importc: "QLineEdit_tr3".}
proc fcQLineEdit_cursorForward2(self: pointer, mark: bool, steps: cint): void {.importc: "QLineEdit_cursorForward2".}
proc fcQLineEdit_cursorBackward2(self: pointer, mark: bool, steps: cint): void {.importc: "QLineEdit_cursorBackward2".}
proc fQLineEdit_virtualbase_sizeHint(self: pointer, ): pointer{.importc: "QLineEdit_virtualbase_sizeHint".}
proc fcQLineEdit_override_virtual_sizeHint(self: pointer, slot: int) {.importc: "QLineEdit_override_virtual_sizeHint".}
proc fQLineEdit_virtualbase_minimumSizeHint(self: pointer, ): pointer{.importc: "QLineEdit_virtualbase_minimumSizeHint".}
proc fcQLineEdit_override_virtual_minimumSizeHint(self: pointer, slot: int) {.importc: "QLineEdit_override_virtual_minimumSizeHint".}
proc fQLineEdit_virtualbase_mousePressEvent(self: pointer, param1: pointer): void{.importc: "QLineEdit_virtualbase_mousePressEvent".}
proc fcQLineEdit_override_virtual_mousePressEvent(self: pointer, slot: int) {.importc: "QLineEdit_override_virtual_mousePressEvent".}
proc fQLineEdit_virtualbase_mouseMoveEvent(self: pointer, param1: pointer): void{.importc: "QLineEdit_virtualbase_mouseMoveEvent".}
proc fcQLineEdit_override_virtual_mouseMoveEvent(self: pointer, slot: int) {.importc: "QLineEdit_override_virtual_mouseMoveEvent".}
proc fQLineEdit_virtualbase_mouseReleaseEvent(self: pointer, param1: pointer): void{.importc: "QLineEdit_virtualbase_mouseReleaseEvent".}
proc fcQLineEdit_override_virtual_mouseReleaseEvent(self: pointer, slot: int) {.importc: "QLineEdit_override_virtual_mouseReleaseEvent".}
proc fQLineEdit_virtualbase_mouseDoubleClickEvent(self: pointer, param1: pointer): void{.importc: "QLineEdit_virtualbase_mouseDoubleClickEvent".}
proc fcQLineEdit_override_virtual_mouseDoubleClickEvent(self: pointer, slot: int) {.importc: "QLineEdit_override_virtual_mouseDoubleClickEvent".}
proc fQLineEdit_virtualbase_keyPressEvent(self: pointer, param1: pointer): void{.importc: "QLineEdit_virtualbase_keyPressEvent".}
proc fcQLineEdit_override_virtual_keyPressEvent(self: pointer, slot: int) {.importc: "QLineEdit_override_virtual_keyPressEvent".}
proc fQLineEdit_virtualbase_keyReleaseEvent(self: pointer, param1: pointer): void{.importc: "QLineEdit_virtualbase_keyReleaseEvent".}
proc fcQLineEdit_override_virtual_keyReleaseEvent(self: pointer, slot: int) {.importc: "QLineEdit_override_virtual_keyReleaseEvent".}
proc fQLineEdit_virtualbase_focusInEvent(self: pointer, param1: pointer): void{.importc: "QLineEdit_virtualbase_focusInEvent".}
proc fcQLineEdit_override_virtual_focusInEvent(self: pointer, slot: int) {.importc: "QLineEdit_override_virtual_focusInEvent".}
proc fQLineEdit_virtualbase_focusOutEvent(self: pointer, param1: pointer): void{.importc: "QLineEdit_virtualbase_focusOutEvent".}
proc fcQLineEdit_override_virtual_focusOutEvent(self: pointer, slot: int) {.importc: "QLineEdit_override_virtual_focusOutEvent".}
proc fQLineEdit_virtualbase_paintEvent(self: pointer, param1: pointer): void{.importc: "QLineEdit_virtualbase_paintEvent".}
proc fcQLineEdit_override_virtual_paintEvent(self: pointer, slot: int) {.importc: "QLineEdit_override_virtual_paintEvent".}
proc fQLineEdit_virtualbase_dragEnterEvent(self: pointer, param1: pointer): void{.importc: "QLineEdit_virtualbase_dragEnterEvent".}
proc fcQLineEdit_override_virtual_dragEnterEvent(self: pointer, slot: int) {.importc: "QLineEdit_override_virtual_dragEnterEvent".}
proc fQLineEdit_virtualbase_dragMoveEvent(self: pointer, e: pointer): void{.importc: "QLineEdit_virtualbase_dragMoveEvent".}
proc fcQLineEdit_override_virtual_dragMoveEvent(self: pointer, slot: int) {.importc: "QLineEdit_override_virtual_dragMoveEvent".}
proc fQLineEdit_virtualbase_dragLeaveEvent(self: pointer, e: pointer): void{.importc: "QLineEdit_virtualbase_dragLeaveEvent".}
proc fcQLineEdit_override_virtual_dragLeaveEvent(self: pointer, slot: int) {.importc: "QLineEdit_override_virtual_dragLeaveEvent".}
proc fQLineEdit_virtualbase_dropEvent(self: pointer, param1: pointer): void{.importc: "QLineEdit_virtualbase_dropEvent".}
proc fcQLineEdit_override_virtual_dropEvent(self: pointer, slot: int) {.importc: "QLineEdit_override_virtual_dropEvent".}
proc fQLineEdit_virtualbase_changeEvent(self: pointer, param1: pointer): void{.importc: "QLineEdit_virtualbase_changeEvent".}
proc fcQLineEdit_override_virtual_changeEvent(self: pointer, slot: int) {.importc: "QLineEdit_override_virtual_changeEvent".}
proc fQLineEdit_virtualbase_contextMenuEvent(self: pointer, param1: pointer): void{.importc: "QLineEdit_virtualbase_contextMenuEvent".}
proc fcQLineEdit_override_virtual_contextMenuEvent(self: pointer, slot: int) {.importc: "QLineEdit_override_virtual_contextMenuEvent".}
proc fQLineEdit_virtualbase_inputMethodEvent(self: pointer, param1: pointer): void{.importc: "QLineEdit_virtualbase_inputMethodEvent".}
proc fcQLineEdit_override_virtual_inputMethodEvent(self: pointer, slot: int) {.importc: "QLineEdit_override_virtual_inputMethodEvent".}
proc fQLineEdit_virtualbase_initStyleOption(self: pointer, option: pointer): void{.importc: "QLineEdit_virtualbase_initStyleOption".}
proc fcQLineEdit_override_virtual_initStyleOption(self: pointer, slot: int) {.importc: "QLineEdit_override_virtual_initStyleOption".}
proc fQLineEdit_virtualbase_inputMethodQuery(self: pointer, param1: cint): pointer{.importc: "QLineEdit_virtualbase_inputMethodQuery".}
proc fcQLineEdit_override_virtual_inputMethodQuery(self: pointer, slot: int) {.importc: "QLineEdit_override_virtual_inputMethodQuery".}
proc fQLineEdit_virtualbase_timerEvent(self: pointer, param1: pointer): void{.importc: "QLineEdit_virtualbase_timerEvent".}
proc fcQLineEdit_override_virtual_timerEvent(self: pointer, slot: int) {.importc: "QLineEdit_override_virtual_timerEvent".}
proc fQLineEdit_virtualbase_event(self: pointer, param1: pointer): bool{.importc: "QLineEdit_virtualbase_event".}
proc fcQLineEdit_override_virtual_event(self: pointer, slot: int) {.importc: "QLineEdit_override_virtual_event".}
proc fQLineEdit_virtualbase_devType(self: pointer, ): cint{.importc: "QLineEdit_virtualbase_devType".}
proc fcQLineEdit_override_virtual_devType(self: pointer, slot: int) {.importc: "QLineEdit_override_virtual_devType".}
proc fQLineEdit_virtualbase_setVisible(self: pointer, visible: bool): void{.importc: "QLineEdit_virtualbase_setVisible".}
proc fcQLineEdit_override_virtual_setVisible(self: pointer, slot: int) {.importc: "QLineEdit_override_virtual_setVisible".}
proc fQLineEdit_virtualbase_heightForWidth(self: pointer, param1: cint): cint{.importc: "QLineEdit_virtualbase_heightForWidth".}
proc fcQLineEdit_override_virtual_heightForWidth(self: pointer, slot: int) {.importc: "QLineEdit_override_virtual_heightForWidth".}
proc fQLineEdit_virtualbase_hasHeightForWidth(self: pointer, ): bool{.importc: "QLineEdit_virtualbase_hasHeightForWidth".}
proc fcQLineEdit_override_virtual_hasHeightForWidth(self: pointer, slot: int) {.importc: "QLineEdit_override_virtual_hasHeightForWidth".}
proc fQLineEdit_virtualbase_paintEngine(self: pointer, ): pointer{.importc: "QLineEdit_virtualbase_paintEngine".}
proc fcQLineEdit_override_virtual_paintEngine(self: pointer, slot: int) {.importc: "QLineEdit_override_virtual_paintEngine".}
proc fQLineEdit_virtualbase_wheelEvent(self: pointer, event: pointer): void{.importc: "QLineEdit_virtualbase_wheelEvent".}
proc fcQLineEdit_override_virtual_wheelEvent(self: pointer, slot: int) {.importc: "QLineEdit_override_virtual_wheelEvent".}
proc fQLineEdit_virtualbase_enterEvent(self: pointer, event: pointer): void{.importc: "QLineEdit_virtualbase_enterEvent".}
proc fcQLineEdit_override_virtual_enterEvent(self: pointer, slot: int) {.importc: "QLineEdit_override_virtual_enterEvent".}
proc fQLineEdit_virtualbase_leaveEvent(self: pointer, event: pointer): void{.importc: "QLineEdit_virtualbase_leaveEvent".}
proc fcQLineEdit_override_virtual_leaveEvent(self: pointer, slot: int) {.importc: "QLineEdit_override_virtual_leaveEvent".}
proc fQLineEdit_virtualbase_moveEvent(self: pointer, event: pointer): void{.importc: "QLineEdit_virtualbase_moveEvent".}
proc fcQLineEdit_override_virtual_moveEvent(self: pointer, slot: int) {.importc: "QLineEdit_override_virtual_moveEvent".}
proc fQLineEdit_virtualbase_resizeEvent(self: pointer, event: pointer): void{.importc: "QLineEdit_virtualbase_resizeEvent".}
proc fcQLineEdit_override_virtual_resizeEvent(self: pointer, slot: int) {.importc: "QLineEdit_override_virtual_resizeEvent".}
proc fQLineEdit_virtualbase_closeEvent(self: pointer, event: pointer): void{.importc: "QLineEdit_virtualbase_closeEvent".}
proc fcQLineEdit_override_virtual_closeEvent(self: pointer, slot: int) {.importc: "QLineEdit_override_virtual_closeEvent".}
proc fQLineEdit_virtualbase_tabletEvent(self: pointer, event: pointer): void{.importc: "QLineEdit_virtualbase_tabletEvent".}
proc fcQLineEdit_override_virtual_tabletEvent(self: pointer, slot: int) {.importc: "QLineEdit_override_virtual_tabletEvent".}
proc fQLineEdit_virtualbase_actionEvent(self: pointer, event: pointer): void{.importc: "QLineEdit_virtualbase_actionEvent".}
proc fcQLineEdit_override_virtual_actionEvent(self: pointer, slot: int) {.importc: "QLineEdit_override_virtual_actionEvent".}
proc fQLineEdit_virtualbase_showEvent(self: pointer, event: pointer): void{.importc: "QLineEdit_virtualbase_showEvent".}
proc fcQLineEdit_override_virtual_showEvent(self: pointer, slot: int) {.importc: "QLineEdit_override_virtual_showEvent".}
proc fQLineEdit_virtualbase_hideEvent(self: pointer, event: pointer): void{.importc: "QLineEdit_virtualbase_hideEvent".}
proc fcQLineEdit_override_virtual_hideEvent(self: pointer, slot: int) {.importc: "QLineEdit_override_virtual_hideEvent".}
proc fQLineEdit_virtualbase_nativeEvent(self: pointer, eventType: struct_miqt_string, message: pointer, resultVal: ptr uint): bool{.importc: "QLineEdit_virtualbase_nativeEvent".}
proc fcQLineEdit_override_virtual_nativeEvent(self: pointer, slot: int) {.importc: "QLineEdit_override_virtual_nativeEvent".}
proc fQLineEdit_virtualbase_metric(self: pointer, param1: cint): cint{.importc: "QLineEdit_virtualbase_metric".}
proc fcQLineEdit_override_virtual_metric(self: pointer, slot: int) {.importc: "QLineEdit_override_virtual_metric".}
proc fQLineEdit_virtualbase_initPainter(self: pointer, painter: pointer): void{.importc: "QLineEdit_virtualbase_initPainter".}
proc fcQLineEdit_override_virtual_initPainter(self: pointer, slot: int) {.importc: "QLineEdit_override_virtual_initPainter".}
proc fQLineEdit_virtualbase_redirected(self: pointer, offset: pointer): pointer{.importc: "QLineEdit_virtualbase_redirected".}
proc fcQLineEdit_override_virtual_redirected(self: pointer, slot: int) {.importc: "QLineEdit_override_virtual_redirected".}
proc fQLineEdit_virtualbase_sharedPainter(self: pointer, ): pointer{.importc: "QLineEdit_virtualbase_sharedPainter".}
proc fcQLineEdit_override_virtual_sharedPainter(self: pointer, slot: int) {.importc: "QLineEdit_override_virtual_sharedPainter".}
proc fQLineEdit_virtualbase_focusNextPrevChild(self: pointer, next: bool): bool{.importc: "QLineEdit_virtualbase_focusNextPrevChild".}
proc fcQLineEdit_override_virtual_focusNextPrevChild(self: pointer, slot: int) {.importc: "QLineEdit_override_virtual_focusNextPrevChild".}
proc fQLineEdit_virtualbase_eventFilter(self: pointer, watched: pointer, event: pointer): bool{.importc: "QLineEdit_virtualbase_eventFilter".}
proc fcQLineEdit_override_virtual_eventFilter(self: pointer, slot: int) {.importc: "QLineEdit_override_virtual_eventFilter".}
proc fQLineEdit_virtualbase_childEvent(self: pointer, event: pointer): void{.importc: "QLineEdit_virtualbase_childEvent".}
proc fcQLineEdit_override_virtual_childEvent(self: pointer, slot: int) {.importc: "QLineEdit_override_virtual_childEvent".}
proc fQLineEdit_virtualbase_customEvent(self: pointer, event: pointer): void{.importc: "QLineEdit_virtualbase_customEvent".}
proc fcQLineEdit_override_virtual_customEvent(self: pointer, slot: int) {.importc: "QLineEdit_override_virtual_customEvent".}
proc fQLineEdit_virtualbase_connectNotify(self: pointer, signal: pointer): void{.importc: "QLineEdit_virtualbase_connectNotify".}
proc fcQLineEdit_override_virtual_connectNotify(self: pointer, slot: int) {.importc: "QLineEdit_override_virtual_connectNotify".}
proc fQLineEdit_virtualbase_disconnectNotify(self: pointer, signal: pointer): void{.importc: "QLineEdit_virtualbase_disconnectNotify".}
proc fcQLineEdit_override_virtual_disconnectNotify(self: pointer, slot: int) {.importc: "QLineEdit_override_virtual_disconnectNotify".}
proc fcQLineEdit_delete(self: pointer) {.importc: "QLineEdit_delete".}


func init*(T: type gen_qlineedit_types.QLineEdit, h: ptr cQLineEdit): gen_qlineedit_types.QLineEdit =
  T(h: h)
proc create*(T: type gen_qlineedit_types.QLineEdit, parent: gen_qwidget_types.QWidget): gen_qlineedit_types.QLineEdit =
  gen_qlineedit_types.QLineEdit.init(fcQLineEdit_new(parent.h))

proc create*(T: type gen_qlineedit_types.QLineEdit, ): gen_qlineedit_types.QLineEdit =
  gen_qlineedit_types.QLineEdit.init(fcQLineEdit_new2())

proc create*(T: type gen_qlineedit_types.QLineEdit, param1: string): gen_qlineedit_types.QLineEdit =
  gen_qlineedit_types.QLineEdit.init(fcQLineEdit_new3(struct_miqt_string(data: param1, len: csize_t(len(param1)))))

proc create*(T: type gen_qlineedit_types.QLineEdit, param1: string, parent: gen_qwidget_types.QWidget): gen_qlineedit_types.QLineEdit =
  gen_qlineedit_types.QLineEdit.init(fcQLineEdit_new4(struct_miqt_string(data: param1, len: csize_t(len(param1))), parent.h))

proc metaObject*(self: gen_qlineedit_types.QLineEdit, ): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQLineEdit_metaObject(self.h))

proc metacast*(self: gen_qlineedit_types.QLineEdit, param1: cstring): pointer =
  fcQLineEdit_metacast(self.h, param1)

proc tr*(_: type gen_qlineedit_types.QLineEdit, s: cstring): string =
  let v_ms = fcQLineEdit_tr(s)
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
proc miqt_exec_callback_QLineEdit_textChanged(slot: int, param1: struct_miqt_string) {.exportc.} =
  let nimfunc = cast[ptr QLineEdittextChangedSlot](cast[pointer](slot))
  let vparam1_ms = param1
  let vparam1x_ret = string.fromBytes(toOpenArrayByte(vparam1_ms.data, 0, int(vparam1_ms.len)-1))
  c_free(vparam1_ms.data)
  let slotval1 = vparam1x_ret

  nimfunc[](slotval1)

proc ontextChanged*(self: gen_qlineedit_types.QLineEdit, slot: QLineEdittextChangedSlot) =
  var tmp = new QLineEdittextChangedSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQLineEdit_connect_textChanged(self.h, cast[int](addr tmp[]))

proc textEdited*(self: gen_qlineedit_types.QLineEdit, param1: string): void =
  fcQLineEdit_textEdited(self.h, struct_miqt_string(data: param1, len: csize_t(len(param1))))

type QLineEdittextEditedSlot* = proc(param1: string)
proc miqt_exec_callback_QLineEdit_textEdited(slot: int, param1: struct_miqt_string) {.exportc.} =
  let nimfunc = cast[ptr QLineEdittextEditedSlot](cast[pointer](slot))
  let vparam1_ms = param1
  let vparam1x_ret = string.fromBytes(toOpenArrayByte(vparam1_ms.data, 0, int(vparam1_ms.len)-1))
  c_free(vparam1_ms.data)
  let slotval1 = vparam1x_ret

  nimfunc[](slotval1)

proc ontextEdited*(self: gen_qlineedit_types.QLineEdit, slot: QLineEdittextEditedSlot) =
  var tmp = new QLineEdittextEditedSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQLineEdit_connect_textEdited(self.h, cast[int](addr tmp[]))

proc cursorPositionChanged*(self: gen_qlineedit_types.QLineEdit, param1: cint, param2: cint): void =
  fcQLineEdit_cursorPositionChanged(self.h, param1, param2)

type QLineEditcursorPositionChangedSlot* = proc(param1: cint, param2: cint)
proc miqt_exec_callback_QLineEdit_cursorPositionChanged(slot: int, param1: cint, param2: cint) {.exportc.} =
  let nimfunc = cast[ptr QLineEditcursorPositionChangedSlot](cast[pointer](slot))
  let slotval1 = param1

  let slotval2 = param2

  nimfunc[](slotval1, slotval2)

proc oncursorPositionChanged*(self: gen_qlineedit_types.QLineEdit, slot: QLineEditcursorPositionChangedSlot) =
  var tmp = new QLineEditcursorPositionChangedSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQLineEdit_connect_cursorPositionChanged(self.h, cast[int](addr tmp[]))

proc returnPressed*(self: gen_qlineedit_types.QLineEdit, ): void =
  fcQLineEdit_returnPressed(self.h)

type QLineEditreturnPressedSlot* = proc()
proc miqt_exec_callback_QLineEdit_returnPressed(slot: int) {.exportc.} =
  let nimfunc = cast[ptr QLineEditreturnPressedSlot](cast[pointer](slot))
  nimfunc[]()

proc onreturnPressed*(self: gen_qlineedit_types.QLineEdit, slot: QLineEditreturnPressedSlot) =
  var tmp = new QLineEditreturnPressedSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQLineEdit_connect_returnPressed(self.h, cast[int](addr tmp[]))

proc editingFinished*(self: gen_qlineedit_types.QLineEdit, ): void =
  fcQLineEdit_editingFinished(self.h)

type QLineEditeditingFinishedSlot* = proc()
proc miqt_exec_callback_QLineEdit_editingFinished(slot: int) {.exportc.} =
  let nimfunc = cast[ptr QLineEditeditingFinishedSlot](cast[pointer](slot))
  nimfunc[]()

proc oneditingFinished*(self: gen_qlineedit_types.QLineEdit, slot: QLineEditeditingFinishedSlot) =
  var tmp = new QLineEditeditingFinishedSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQLineEdit_connect_editingFinished(self.h, cast[int](addr tmp[]))

proc selectionChanged*(self: gen_qlineedit_types.QLineEdit, ): void =
  fcQLineEdit_selectionChanged(self.h)

type QLineEditselectionChangedSlot* = proc()
proc miqt_exec_callback_QLineEdit_selectionChanged(slot: int) {.exportc.} =
  let nimfunc = cast[ptr QLineEditselectionChangedSlot](cast[pointer](slot))
  nimfunc[]()

proc onselectionChanged*(self: gen_qlineedit_types.QLineEdit, slot: QLineEditselectionChangedSlot) =
  var tmp = new QLineEditselectionChangedSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQLineEdit_connect_selectionChanged(self.h, cast[int](addr tmp[]))

proc inputRejected*(self: gen_qlineedit_types.QLineEdit, ): void =
  fcQLineEdit_inputRejected(self.h)

type QLineEditinputRejectedSlot* = proc()
proc miqt_exec_callback_QLineEdit_inputRejected(slot: int) {.exportc.} =
  let nimfunc = cast[ptr QLineEditinputRejectedSlot](cast[pointer](slot))
  nimfunc[]()

proc oninputRejected*(self: gen_qlineedit_types.QLineEdit, slot: QLineEditinputRejectedSlot) =
  var tmp = new QLineEditinputRejectedSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQLineEdit_connect_inputRejected(self.h, cast[int](addr tmp[]))

proc inputMethodQuery*(self: gen_qlineedit_types.QLineEdit, param1: cint): gen_qvariant_types.QVariant =
  gen_qvariant_types.QVariant(h: fcQLineEdit_inputMethodQuery(self.h, cint(param1)))

proc inputMethodQuery*(self: gen_qlineedit_types.QLineEdit, property: cint, argument: gen_qvariant_types.QVariant): gen_qvariant_types.QVariant =
  gen_qvariant_types.QVariant(h: fcQLineEdit_inputMethodQuery2(self.h, cint(property), argument.h))

proc timerEvent*(self: gen_qlineedit_types.QLineEdit, param1: gen_qcoreevent_types.QTimerEvent): void =
  fcQLineEdit_timerEvent(self.h, param1.h)

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

proc cursorForward*(self: gen_qlineedit_types.QLineEdit, mark: bool, steps: cint): void =
  fcQLineEdit_cursorForward2(self.h, mark, steps)

proc cursorBackward*(self: gen_qlineedit_types.QLineEdit, mark: bool, steps: cint): void =
  fcQLineEdit_cursorBackward2(self.h, mark, steps)

proc QLineEditsizeHint*(self: gen_qlineedit_types.QLineEdit, ): gen_qsize_types.QSize =
  gen_qsize_types.QSize(h: fQLineEdit_virtualbase_sizeHint(self.h))

type QLineEditsizeHintProc* = proc(): gen_qsize_types.QSize
proc onsizeHint*(self: gen_qlineedit_types.QLineEdit, slot: QLineEditsizeHintProc) =
  # TODO check subclass
  var tmp = new QLineEditsizeHintProc
  tmp[] = slot
  GC_ref(tmp)
  fcQLineEdit_override_virtual_sizeHint(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QLineEdit_sizeHint(self: ptr cQLineEdit, slot: int): pointer {.exportc: "miqt_exec_callback_QLineEdit_sizeHint ".} =
  var nimfunc = cast[ptr QLineEditsizeHintProc](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )

  virtualReturn.h
proc QLineEditminimumSizeHint*(self: gen_qlineedit_types.QLineEdit, ): gen_qsize_types.QSize =
  gen_qsize_types.QSize(h: fQLineEdit_virtualbase_minimumSizeHint(self.h))

type QLineEditminimumSizeHintProc* = proc(): gen_qsize_types.QSize
proc onminimumSizeHint*(self: gen_qlineedit_types.QLineEdit, slot: QLineEditminimumSizeHintProc) =
  # TODO check subclass
  var tmp = new QLineEditminimumSizeHintProc
  tmp[] = slot
  GC_ref(tmp)
  fcQLineEdit_override_virtual_minimumSizeHint(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QLineEdit_minimumSizeHint(self: ptr cQLineEdit, slot: int): pointer {.exportc: "miqt_exec_callback_QLineEdit_minimumSizeHint ".} =
  var nimfunc = cast[ptr QLineEditminimumSizeHintProc](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )

  virtualReturn.h
proc QLineEditmousePressEvent*(self: gen_qlineedit_types.QLineEdit, param1: gen_qevent_types.QMouseEvent): void =
  fQLineEdit_virtualbase_mousePressEvent(self.h, param1.h)

type QLineEditmousePressEventProc* = proc(param1: gen_qevent_types.QMouseEvent): void
proc onmousePressEvent*(self: gen_qlineedit_types.QLineEdit, slot: QLineEditmousePressEventProc) =
  # TODO check subclass
  var tmp = new QLineEditmousePressEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQLineEdit_override_virtual_mousePressEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QLineEdit_mousePressEvent(self: ptr cQLineEdit, slot: int, param1: pointer): void {.exportc: "miqt_exec_callback_QLineEdit_mousePressEvent ".} =
  var nimfunc = cast[ptr QLineEditmousePressEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QMouseEvent(h: param1)


  nimfunc[](slotval1)
proc QLineEditmouseMoveEvent*(self: gen_qlineedit_types.QLineEdit, param1: gen_qevent_types.QMouseEvent): void =
  fQLineEdit_virtualbase_mouseMoveEvent(self.h, param1.h)

type QLineEditmouseMoveEventProc* = proc(param1: gen_qevent_types.QMouseEvent): void
proc onmouseMoveEvent*(self: gen_qlineedit_types.QLineEdit, slot: QLineEditmouseMoveEventProc) =
  # TODO check subclass
  var tmp = new QLineEditmouseMoveEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQLineEdit_override_virtual_mouseMoveEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QLineEdit_mouseMoveEvent(self: ptr cQLineEdit, slot: int, param1: pointer): void {.exportc: "miqt_exec_callback_QLineEdit_mouseMoveEvent ".} =
  var nimfunc = cast[ptr QLineEditmouseMoveEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QMouseEvent(h: param1)


  nimfunc[](slotval1)
proc QLineEditmouseReleaseEvent*(self: gen_qlineedit_types.QLineEdit, param1: gen_qevent_types.QMouseEvent): void =
  fQLineEdit_virtualbase_mouseReleaseEvent(self.h, param1.h)

type QLineEditmouseReleaseEventProc* = proc(param1: gen_qevent_types.QMouseEvent): void
proc onmouseReleaseEvent*(self: gen_qlineedit_types.QLineEdit, slot: QLineEditmouseReleaseEventProc) =
  # TODO check subclass
  var tmp = new QLineEditmouseReleaseEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQLineEdit_override_virtual_mouseReleaseEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QLineEdit_mouseReleaseEvent(self: ptr cQLineEdit, slot: int, param1: pointer): void {.exportc: "miqt_exec_callback_QLineEdit_mouseReleaseEvent ".} =
  var nimfunc = cast[ptr QLineEditmouseReleaseEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QMouseEvent(h: param1)


  nimfunc[](slotval1)
proc QLineEditmouseDoubleClickEvent*(self: gen_qlineedit_types.QLineEdit, param1: gen_qevent_types.QMouseEvent): void =
  fQLineEdit_virtualbase_mouseDoubleClickEvent(self.h, param1.h)

type QLineEditmouseDoubleClickEventProc* = proc(param1: gen_qevent_types.QMouseEvent): void
proc onmouseDoubleClickEvent*(self: gen_qlineedit_types.QLineEdit, slot: QLineEditmouseDoubleClickEventProc) =
  # TODO check subclass
  var tmp = new QLineEditmouseDoubleClickEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQLineEdit_override_virtual_mouseDoubleClickEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QLineEdit_mouseDoubleClickEvent(self: ptr cQLineEdit, slot: int, param1: pointer): void {.exportc: "miqt_exec_callback_QLineEdit_mouseDoubleClickEvent ".} =
  var nimfunc = cast[ptr QLineEditmouseDoubleClickEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QMouseEvent(h: param1)


  nimfunc[](slotval1)
proc QLineEditkeyPressEvent*(self: gen_qlineedit_types.QLineEdit, param1: gen_qevent_types.QKeyEvent): void =
  fQLineEdit_virtualbase_keyPressEvent(self.h, param1.h)

type QLineEditkeyPressEventProc* = proc(param1: gen_qevent_types.QKeyEvent): void
proc onkeyPressEvent*(self: gen_qlineedit_types.QLineEdit, slot: QLineEditkeyPressEventProc) =
  # TODO check subclass
  var tmp = new QLineEditkeyPressEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQLineEdit_override_virtual_keyPressEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QLineEdit_keyPressEvent(self: ptr cQLineEdit, slot: int, param1: pointer): void {.exportc: "miqt_exec_callback_QLineEdit_keyPressEvent ".} =
  var nimfunc = cast[ptr QLineEditkeyPressEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QKeyEvent(h: param1)


  nimfunc[](slotval1)
proc QLineEditkeyReleaseEvent*(self: gen_qlineedit_types.QLineEdit, param1: gen_qevent_types.QKeyEvent): void =
  fQLineEdit_virtualbase_keyReleaseEvent(self.h, param1.h)

type QLineEditkeyReleaseEventProc* = proc(param1: gen_qevent_types.QKeyEvent): void
proc onkeyReleaseEvent*(self: gen_qlineedit_types.QLineEdit, slot: QLineEditkeyReleaseEventProc) =
  # TODO check subclass
  var tmp = new QLineEditkeyReleaseEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQLineEdit_override_virtual_keyReleaseEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QLineEdit_keyReleaseEvent(self: ptr cQLineEdit, slot: int, param1: pointer): void {.exportc: "miqt_exec_callback_QLineEdit_keyReleaseEvent ".} =
  var nimfunc = cast[ptr QLineEditkeyReleaseEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QKeyEvent(h: param1)


  nimfunc[](slotval1)
proc QLineEditfocusInEvent*(self: gen_qlineedit_types.QLineEdit, param1: gen_qevent_types.QFocusEvent): void =
  fQLineEdit_virtualbase_focusInEvent(self.h, param1.h)

type QLineEditfocusInEventProc* = proc(param1: gen_qevent_types.QFocusEvent): void
proc onfocusInEvent*(self: gen_qlineedit_types.QLineEdit, slot: QLineEditfocusInEventProc) =
  # TODO check subclass
  var tmp = new QLineEditfocusInEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQLineEdit_override_virtual_focusInEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QLineEdit_focusInEvent(self: ptr cQLineEdit, slot: int, param1: pointer): void {.exportc: "miqt_exec_callback_QLineEdit_focusInEvent ".} =
  var nimfunc = cast[ptr QLineEditfocusInEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QFocusEvent(h: param1)


  nimfunc[](slotval1)
proc QLineEditfocusOutEvent*(self: gen_qlineedit_types.QLineEdit, param1: gen_qevent_types.QFocusEvent): void =
  fQLineEdit_virtualbase_focusOutEvent(self.h, param1.h)

type QLineEditfocusOutEventProc* = proc(param1: gen_qevent_types.QFocusEvent): void
proc onfocusOutEvent*(self: gen_qlineedit_types.QLineEdit, slot: QLineEditfocusOutEventProc) =
  # TODO check subclass
  var tmp = new QLineEditfocusOutEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQLineEdit_override_virtual_focusOutEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QLineEdit_focusOutEvent(self: ptr cQLineEdit, slot: int, param1: pointer): void {.exportc: "miqt_exec_callback_QLineEdit_focusOutEvent ".} =
  var nimfunc = cast[ptr QLineEditfocusOutEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QFocusEvent(h: param1)


  nimfunc[](slotval1)
proc QLineEditpaintEvent*(self: gen_qlineedit_types.QLineEdit, param1: gen_qevent_types.QPaintEvent): void =
  fQLineEdit_virtualbase_paintEvent(self.h, param1.h)

type QLineEditpaintEventProc* = proc(param1: gen_qevent_types.QPaintEvent): void
proc onpaintEvent*(self: gen_qlineedit_types.QLineEdit, slot: QLineEditpaintEventProc) =
  # TODO check subclass
  var tmp = new QLineEditpaintEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQLineEdit_override_virtual_paintEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QLineEdit_paintEvent(self: ptr cQLineEdit, slot: int, param1: pointer): void {.exportc: "miqt_exec_callback_QLineEdit_paintEvent ".} =
  var nimfunc = cast[ptr QLineEditpaintEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QPaintEvent(h: param1)


  nimfunc[](slotval1)
proc QLineEditdragEnterEvent*(self: gen_qlineedit_types.QLineEdit, param1: gen_qevent_types.QDragEnterEvent): void =
  fQLineEdit_virtualbase_dragEnterEvent(self.h, param1.h)

type QLineEditdragEnterEventProc* = proc(param1: gen_qevent_types.QDragEnterEvent): void
proc ondragEnterEvent*(self: gen_qlineedit_types.QLineEdit, slot: QLineEditdragEnterEventProc) =
  # TODO check subclass
  var tmp = new QLineEditdragEnterEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQLineEdit_override_virtual_dragEnterEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QLineEdit_dragEnterEvent(self: ptr cQLineEdit, slot: int, param1: pointer): void {.exportc: "miqt_exec_callback_QLineEdit_dragEnterEvent ".} =
  var nimfunc = cast[ptr QLineEditdragEnterEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QDragEnterEvent(h: param1)


  nimfunc[](slotval1)
proc QLineEditdragMoveEvent*(self: gen_qlineedit_types.QLineEdit, e: gen_qevent_types.QDragMoveEvent): void =
  fQLineEdit_virtualbase_dragMoveEvent(self.h, e.h)

type QLineEditdragMoveEventProc* = proc(e: gen_qevent_types.QDragMoveEvent): void
proc ondragMoveEvent*(self: gen_qlineedit_types.QLineEdit, slot: QLineEditdragMoveEventProc) =
  # TODO check subclass
  var tmp = new QLineEditdragMoveEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQLineEdit_override_virtual_dragMoveEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QLineEdit_dragMoveEvent(self: ptr cQLineEdit, slot: int, e: pointer): void {.exportc: "miqt_exec_callback_QLineEdit_dragMoveEvent ".} =
  var nimfunc = cast[ptr QLineEditdragMoveEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QDragMoveEvent(h: e)


  nimfunc[](slotval1)
proc QLineEditdragLeaveEvent*(self: gen_qlineedit_types.QLineEdit, e: gen_qevent_types.QDragLeaveEvent): void =
  fQLineEdit_virtualbase_dragLeaveEvent(self.h, e.h)

type QLineEditdragLeaveEventProc* = proc(e: gen_qevent_types.QDragLeaveEvent): void
proc ondragLeaveEvent*(self: gen_qlineedit_types.QLineEdit, slot: QLineEditdragLeaveEventProc) =
  # TODO check subclass
  var tmp = new QLineEditdragLeaveEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQLineEdit_override_virtual_dragLeaveEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QLineEdit_dragLeaveEvent(self: ptr cQLineEdit, slot: int, e: pointer): void {.exportc: "miqt_exec_callback_QLineEdit_dragLeaveEvent ".} =
  var nimfunc = cast[ptr QLineEditdragLeaveEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QDragLeaveEvent(h: e)


  nimfunc[](slotval1)
proc QLineEditdropEvent*(self: gen_qlineedit_types.QLineEdit, param1: gen_qevent_types.QDropEvent): void =
  fQLineEdit_virtualbase_dropEvent(self.h, param1.h)

type QLineEditdropEventProc* = proc(param1: gen_qevent_types.QDropEvent): void
proc ondropEvent*(self: gen_qlineedit_types.QLineEdit, slot: QLineEditdropEventProc) =
  # TODO check subclass
  var tmp = new QLineEditdropEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQLineEdit_override_virtual_dropEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QLineEdit_dropEvent(self: ptr cQLineEdit, slot: int, param1: pointer): void {.exportc: "miqt_exec_callback_QLineEdit_dropEvent ".} =
  var nimfunc = cast[ptr QLineEditdropEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QDropEvent(h: param1)


  nimfunc[](slotval1)
proc QLineEditchangeEvent*(self: gen_qlineedit_types.QLineEdit, param1: gen_qcoreevent_types.QEvent): void =
  fQLineEdit_virtualbase_changeEvent(self.h, param1.h)

type QLineEditchangeEventProc* = proc(param1: gen_qcoreevent_types.QEvent): void
proc onchangeEvent*(self: gen_qlineedit_types.QLineEdit, slot: QLineEditchangeEventProc) =
  # TODO check subclass
  var tmp = new QLineEditchangeEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQLineEdit_override_virtual_changeEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QLineEdit_changeEvent(self: ptr cQLineEdit, slot: int, param1: pointer): void {.exportc: "miqt_exec_callback_QLineEdit_changeEvent ".} =
  var nimfunc = cast[ptr QLineEditchangeEventProc](cast[pointer](slot))
  let slotval1 = gen_qcoreevent_types.QEvent(h: param1)


  nimfunc[](slotval1)
proc QLineEditcontextMenuEvent*(self: gen_qlineedit_types.QLineEdit, param1: gen_qevent_types.QContextMenuEvent): void =
  fQLineEdit_virtualbase_contextMenuEvent(self.h, param1.h)

type QLineEditcontextMenuEventProc* = proc(param1: gen_qevent_types.QContextMenuEvent): void
proc oncontextMenuEvent*(self: gen_qlineedit_types.QLineEdit, slot: QLineEditcontextMenuEventProc) =
  # TODO check subclass
  var tmp = new QLineEditcontextMenuEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQLineEdit_override_virtual_contextMenuEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QLineEdit_contextMenuEvent(self: ptr cQLineEdit, slot: int, param1: pointer): void {.exportc: "miqt_exec_callback_QLineEdit_contextMenuEvent ".} =
  var nimfunc = cast[ptr QLineEditcontextMenuEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QContextMenuEvent(h: param1)


  nimfunc[](slotval1)
proc QLineEditinputMethodEvent*(self: gen_qlineedit_types.QLineEdit, param1: gen_qevent_types.QInputMethodEvent): void =
  fQLineEdit_virtualbase_inputMethodEvent(self.h, param1.h)

type QLineEditinputMethodEventProc* = proc(param1: gen_qevent_types.QInputMethodEvent): void
proc oninputMethodEvent*(self: gen_qlineedit_types.QLineEdit, slot: QLineEditinputMethodEventProc) =
  # TODO check subclass
  var tmp = new QLineEditinputMethodEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQLineEdit_override_virtual_inputMethodEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QLineEdit_inputMethodEvent(self: ptr cQLineEdit, slot: int, param1: pointer): void {.exportc: "miqt_exec_callback_QLineEdit_inputMethodEvent ".} =
  var nimfunc = cast[ptr QLineEditinputMethodEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QInputMethodEvent(h: param1)


  nimfunc[](slotval1)
proc QLineEditinitStyleOption*(self: gen_qlineedit_types.QLineEdit, option: gen_qstyleoption_types.QStyleOptionFrame): void =
  fQLineEdit_virtualbase_initStyleOption(self.h, option.h)

type QLineEditinitStyleOptionProc* = proc(option: gen_qstyleoption_types.QStyleOptionFrame): void
proc oninitStyleOption*(self: gen_qlineedit_types.QLineEdit, slot: QLineEditinitStyleOptionProc) =
  # TODO check subclass
  var tmp = new QLineEditinitStyleOptionProc
  tmp[] = slot
  GC_ref(tmp)
  fcQLineEdit_override_virtual_initStyleOption(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QLineEdit_initStyleOption(self: ptr cQLineEdit, slot: int, option: pointer): void {.exportc: "miqt_exec_callback_QLineEdit_initStyleOption ".} =
  var nimfunc = cast[ptr QLineEditinitStyleOptionProc](cast[pointer](slot))
  let slotval1 = gen_qstyleoption_types.QStyleOptionFrame(h: option)


  nimfunc[](slotval1)
proc QLineEditinputMethodQuery*(self: gen_qlineedit_types.QLineEdit, param1: cint): gen_qvariant_types.QVariant =
  gen_qvariant_types.QVariant(h: fQLineEdit_virtualbase_inputMethodQuery(self.h, cint(param1)))

type QLineEditinputMethodQueryProc* = proc(param1: cint): gen_qvariant_types.QVariant
proc oninputMethodQuery*(self: gen_qlineedit_types.QLineEdit, slot: QLineEditinputMethodQueryProc) =
  # TODO check subclass
  var tmp = new QLineEditinputMethodQueryProc
  tmp[] = slot
  GC_ref(tmp)
  fcQLineEdit_override_virtual_inputMethodQuery(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QLineEdit_inputMethodQuery(self: ptr cQLineEdit, slot: int, param1: cint): pointer {.exportc: "miqt_exec_callback_QLineEdit_inputMethodQuery ".} =
  var nimfunc = cast[ptr QLineEditinputMethodQueryProc](cast[pointer](slot))
  let slotval1 = cint(param1)


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn.h
proc QLineEdittimerEvent*(self: gen_qlineedit_types.QLineEdit, param1: gen_qcoreevent_types.QTimerEvent): void =
  fQLineEdit_virtualbase_timerEvent(self.h, param1.h)

type QLineEdittimerEventProc* = proc(param1: gen_qcoreevent_types.QTimerEvent): void
proc ontimerEvent*(self: gen_qlineedit_types.QLineEdit, slot: QLineEdittimerEventProc) =
  # TODO check subclass
  var tmp = new QLineEdittimerEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQLineEdit_override_virtual_timerEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QLineEdit_timerEvent(self: ptr cQLineEdit, slot: int, param1: pointer): void {.exportc: "miqt_exec_callback_QLineEdit_timerEvent ".} =
  var nimfunc = cast[ptr QLineEdittimerEventProc](cast[pointer](slot))
  let slotval1 = gen_qcoreevent_types.QTimerEvent(h: param1)


  nimfunc[](slotval1)
proc QLineEditevent*(self: gen_qlineedit_types.QLineEdit, param1: gen_qcoreevent_types.QEvent): bool =
  fQLineEdit_virtualbase_event(self.h, param1.h)

type QLineEditeventProc* = proc(param1: gen_qcoreevent_types.QEvent): bool
proc onevent*(self: gen_qlineedit_types.QLineEdit, slot: QLineEditeventProc) =
  # TODO check subclass
  var tmp = new QLineEditeventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQLineEdit_override_virtual_event(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QLineEdit_event(self: ptr cQLineEdit, slot: int, param1: pointer): bool {.exportc: "miqt_exec_callback_QLineEdit_event ".} =
  var nimfunc = cast[ptr QLineEditeventProc](cast[pointer](slot))
  let slotval1 = gen_qcoreevent_types.QEvent(h: param1)


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn
proc QLineEditdevType*(self: gen_qlineedit_types.QLineEdit, ): cint =
  fQLineEdit_virtualbase_devType(self.h)

type QLineEditdevTypeProc* = proc(): cint
proc ondevType*(self: gen_qlineedit_types.QLineEdit, slot: QLineEditdevTypeProc) =
  # TODO check subclass
  var tmp = new QLineEditdevTypeProc
  tmp[] = slot
  GC_ref(tmp)
  fcQLineEdit_override_virtual_devType(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QLineEdit_devType(self: ptr cQLineEdit, slot: int): cint {.exportc: "miqt_exec_callback_QLineEdit_devType ".} =
  var nimfunc = cast[ptr QLineEditdevTypeProc](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )

  virtualReturn
proc QLineEditsetVisible*(self: gen_qlineedit_types.QLineEdit, visible: bool): void =
  fQLineEdit_virtualbase_setVisible(self.h, visible)

type QLineEditsetVisibleProc* = proc(visible: bool): void
proc onsetVisible*(self: gen_qlineedit_types.QLineEdit, slot: QLineEditsetVisibleProc) =
  # TODO check subclass
  var tmp = new QLineEditsetVisibleProc
  tmp[] = slot
  GC_ref(tmp)
  fcQLineEdit_override_virtual_setVisible(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QLineEdit_setVisible(self: ptr cQLineEdit, slot: int, visible: bool): void {.exportc: "miqt_exec_callback_QLineEdit_setVisible ".} =
  var nimfunc = cast[ptr QLineEditsetVisibleProc](cast[pointer](slot))
  let slotval1 = visible


  nimfunc[](slotval1)
proc QLineEditheightForWidth*(self: gen_qlineedit_types.QLineEdit, param1: cint): cint =
  fQLineEdit_virtualbase_heightForWidth(self.h, param1)

type QLineEditheightForWidthProc* = proc(param1: cint): cint
proc onheightForWidth*(self: gen_qlineedit_types.QLineEdit, slot: QLineEditheightForWidthProc) =
  # TODO check subclass
  var tmp = new QLineEditheightForWidthProc
  tmp[] = slot
  GC_ref(tmp)
  fcQLineEdit_override_virtual_heightForWidth(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QLineEdit_heightForWidth(self: ptr cQLineEdit, slot: int, param1: cint): cint {.exportc: "miqt_exec_callback_QLineEdit_heightForWidth ".} =
  var nimfunc = cast[ptr QLineEditheightForWidthProc](cast[pointer](slot))
  let slotval1 = param1


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn
proc QLineEdithasHeightForWidth*(self: gen_qlineedit_types.QLineEdit, ): bool =
  fQLineEdit_virtualbase_hasHeightForWidth(self.h)

type QLineEdithasHeightForWidthProc* = proc(): bool
proc onhasHeightForWidth*(self: gen_qlineedit_types.QLineEdit, slot: QLineEdithasHeightForWidthProc) =
  # TODO check subclass
  var tmp = new QLineEdithasHeightForWidthProc
  tmp[] = slot
  GC_ref(tmp)
  fcQLineEdit_override_virtual_hasHeightForWidth(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QLineEdit_hasHeightForWidth(self: ptr cQLineEdit, slot: int): bool {.exportc: "miqt_exec_callback_QLineEdit_hasHeightForWidth ".} =
  var nimfunc = cast[ptr QLineEdithasHeightForWidthProc](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )

  virtualReturn
proc QLineEditpaintEngine*(self: gen_qlineedit_types.QLineEdit, ): gen_qpaintengine_types.QPaintEngine =
  gen_qpaintengine_types.QPaintEngine(h: fQLineEdit_virtualbase_paintEngine(self.h))

type QLineEditpaintEngineProc* = proc(): gen_qpaintengine_types.QPaintEngine
proc onpaintEngine*(self: gen_qlineedit_types.QLineEdit, slot: QLineEditpaintEngineProc) =
  # TODO check subclass
  var tmp = new QLineEditpaintEngineProc
  tmp[] = slot
  GC_ref(tmp)
  fcQLineEdit_override_virtual_paintEngine(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QLineEdit_paintEngine(self: ptr cQLineEdit, slot: int): pointer {.exportc: "miqt_exec_callback_QLineEdit_paintEngine ".} =
  var nimfunc = cast[ptr QLineEditpaintEngineProc](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )

  virtualReturn.h
proc QLineEditwheelEvent*(self: gen_qlineedit_types.QLineEdit, event: gen_qevent_types.QWheelEvent): void =
  fQLineEdit_virtualbase_wheelEvent(self.h, event.h)

type QLineEditwheelEventProc* = proc(event: gen_qevent_types.QWheelEvent): void
proc onwheelEvent*(self: gen_qlineedit_types.QLineEdit, slot: QLineEditwheelEventProc) =
  # TODO check subclass
  var tmp = new QLineEditwheelEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQLineEdit_override_virtual_wheelEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QLineEdit_wheelEvent(self: ptr cQLineEdit, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QLineEdit_wheelEvent ".} =
  var nimfunc = cast[ptr QLineEditwheelEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QWheelEvent(h: event)


  nimfunc[](slotval1)
proc QLineEditenterEvent*(self: gen_qlineedit_types.QLineEdit, event: gen_qevent_types.QEnterEvent): void =
  fQLineEdit_virtualbase_enterEvent(self.h, event.h)

type QLineEditenterEventProc* = proc(event: gen_qevent_types.QEnterEvent): void
proc onenterEvent*(self: gen_qlineedit_types.QLineEdit, slot: QLineEditenterEventProc) =
  # TODO check subclass
  var tmp = new QLineEditenterEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQLineEdit_override_virtual_enterEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QLineEdit_enterEvent(self: ptr cQLineEdit, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QLineEdit_enterEvent ".} =
  var nimfunc = cast[ptr QLineEditenterEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QEnterEvent(h: event)


  nimfunc[](slotval1)
proc QLineEditleaveEvent*(self: gen_qlineedit_types.QLineEdit, event: gen_qcoreevent_types.QEvent): void =
  fQLineEdit_virtualbase_leaveEvent(self.h, event.h)

type QLineEditleaveEventProc* = proc(event: gen_qcoreevent_types.QEvent): void
proc onleaveEvent*(self: gen_qlineedit_types.QLineEdit, slot: QLineEditleaveEventProc) =
  # TODO check subclass
  var tmp = new QLineEditleaveEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQLineEdit_override_virtual_leaveEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QLineEdit_leaveEvent(self: ptr cQLineEdit, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QLineEdit_leaveEvent ".} =
  var nimfunc = cast[ptr QLineEditleaveEventProc](cast[pointer](slot))
  let slotval1 = gen_qcoreevent_types.QEvent(h: event)


  nimfunc[](slotval1)
proc QLineEditmoveEvent*(self: gen_qlineedit_types.QLineEdit, event: gen_qevent_types.QMoveEvent): void =
  fQLineEdit_virtualbase_moveEvent(self.h, event.h)

type QLineEditmoveEventProc* = proc(event: gen_qevent_types.QMoveEvent): void
proc onmoveEvent*(self: gen_qlineedit_types.QLineEdit, slot: QLineEditmoveEventProc) =
  # TODO check subclass
  var tmp = new QLineEditmoveEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQLineEdit_override_virtual_moveEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QLineEdit_moveEvent(self: ptr cQLineEdit, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QLineEdit_moveEvent ".} =
  var nimfunc = cast[ptr QLineEditmoveEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QMoveEvent(h: event)


  nimfunc[](slotval1)
proc QLineEditresizeEvent*(self: gen_qlineedit_types.QLineEdit, event: gen_qevent_types.QResizeEvent): void =
  fQLineEdit_virtualbase_resizeEvent(self.h, event.h)

type QLineEditresizeEventProc* = proc(event: gen_qevent_types.QResizeEvent): void
proc onresizeEvent*(self: gen_qlineedit_types.QLineEdit, slot: QLineEditresizeEventProc) =
  # TODO check subclass
  var tmp = new QLineEditresizeEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQLineEdit_override_virtual_resizeEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QLineEdit_resizeEvent(self: ptr cQLineEdit, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QLineEdit_resizeEvent ".} =
  var nimfunc = cast[ptr QLineEditresizeEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QResizeEvent(h: event)


  nimfunc[](slotval1)
proc QLineEditcloseEvent*(self: gen_qlineedit_types.QLineEdit, event: gen_qevent_types.QCloseEvent): void =
  fQLineEdit_virtualbase_closeEvent(self.h, event.h)

type QLineEditcloseEventProc* = proc(event: gen_qevent_types.QCloseEvent): void
proc oncloseEvent*(self: gen_qlineedit_types.QLineEdit, slot: QLineEditcloseEventProc) =
  # TODO check subclass
  var tmp = new QLineEditcloseEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQLineEdit_override_virtual_closeEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QLineEdit_closeEvent(self: ptr cQLineEdit, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QLineEdit_closeEvent ".} =
  var nimfunc = cast[ptr QLineEditcloseEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QCloseEvent(h: event)


  nimfunc[](slotval1)
proc QLineEdittabletEvent*(self: gen_qlineedit_types.QLineEdit, event: gen_qevent_types.QTabletEvent): void =
  fQLineEdit_virtualbase_tabletEvent(self.h, event.h)

type QLineEdittabletEventProc* = proc(event: gen_qevent_types.QTabletEvent): void
proc ontabletEvent*(self: gen_qlineedit_types.QLineEdit, slot: QLineEdittabletEventProc) =
  # TODO check subclass
  var tmp = new QLineEdittabletEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQLineEdit_override_virtual_tabletEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QLineEdit_tabletEvent(self: ptr cQLineEdit, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QLineEdit_tabletEvent ".} =
  var nimfunc = cast[ptr QLineEdittabletEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QTabletEvent(h: event)


  nimfunc[](slotval1)
proc QLineEditactionEvent*(self: gen_qlineedit_types.QLineEdit, event: gen_qevent_types.QActionEvent): void =
  fQLineEdit_virtualbase_actionEvent(self.h, event.h)

type QLineEditactionEventProc* = proc(event: gen_qevent_types.QActionEvent): void
proc onactionEvent*(self: gen_qlineedit_types.QLineEdit, slot: QLineEditactionEventProc) =
  # TODO check subclass
  var tmp = new QLineEditactionEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQLineEdit_override_virtual_actionEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QLineEdit_actionEvent(self: ptr cQLineEdit, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QLineEdit_actionEvent ".} =
  var nimfunc = cast[ptr QLineEditactionEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QActionEvent(h: event)


  nimfunc[](slotval1)
proc QLineEditshowEvent*(self: gen_qlineedit_types.QLineEdit, event: gen_qevent_types.QShowEvent): void =
  fQLineEdit_virtualbase_showEvent(self.h, event.h)

type QLineEditshowEventProc* = proc(event: gen_qevent_types.QShowEvent): void
proc onshowEvent*(self: gen_qlineedit_types.QLineEdit, slot: QLineEditshowEventProc) =
  # TODO check subclass
  var tmp = new QLineEditshowEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQLineEdit_override_virtual_showEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QLineEdit_showEvent(self: ptr cQLineEdit, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QLineEdit_showEvent ".} =
  var nimfunc = cast[ptr QLineEditshowEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QShowEvent(h: event)


  nimfunc[](slotval1)
proc QLineEdithideEvent*(self: gen_qlineedit_types.QLineEdit, event: gen_qevent_types.QHideEvent): void =
  fQLineEdit_virtualbase_hideEvent(self.h, event.h)

type QLineEdithideEventProc* = proc(event: gen_qevent_types.QHideEvent): void
proc onhideEvent*(self: gen_qlineedit_types.QLineEdit, slot: QLineEdithideEventProc) =
  # TODO check subclass
  var tmp = new QLineEdithideEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQLineEdit_override_virtual_hideEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QLineEdit_hideEvent(self: ptr cQLineEdit, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QLineEdit_hideEvent ".} =
  var nimfunc = cast[ptr QLineEdithideEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QHideEvent(h: event)


  nimfunc[](slotval1)
proc QLineEditnativeEvent*(self: gen_qlineedit_types.QLineEdit, eventType: seq[byte], message: pointer, resultVal: ptr uint): bool =
  fQLineEdit_virtualbase_nativeEvent(self.h, struct_miqt_string(data: cast[cstring](if len(eventType) == 0: nil else: unsafeAddr eventType[0]), len: csize_t(len(eventType))), message, resultVal)

type QLineEditnativeEventProc* = proc(eventType: seq[byte], message: pointer, resultVal: ptr uint): bool
proc onnativeEvent*(self: gen_qlineedit_types.QLineEdit, slot: QLineEditnativeEventProc) =
  # TODO check subclass
  var tmp = new QLineEditnativeEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQLineEdit_override_virtual_nativeEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QLineEdit_nativeEvent(self: ptr cQLineEdit, slot: int, eventType: struct_miqt_string, message: pointer, resultVal: ptr uint): bool {.exportc: "miqt_exec_callback_QLineEdit_nativeEvent ".} =
  var nimfunc = cast[ptr QLineEditnativeEventProc](cast[pointer](slot))
  var veventType_bytearray = eventType
  var veventTypex_ret = @(toOpenArrayByte(veventType_bytearray.data, 0, int(veventType_bytearray.len)-1))
  c_free(veventType_bytearray.data)
  let slotval1 = veventTypex_ret

  let slotval2 = message

  let slotval3 = resultVal


  let virtualReturn = nimfunc[](slotval1, slotval2, slotval3 )

  virtualReturn
proc QLineEditmetric*(self: gen_qlineedit_types.QLineEdit, param1: cint): cint =
  fQLineEdit_virtualbase_metric(self.h, cint(param1))

type QLineEditmetricProc* = proc(param1: cint): cint
proc onmetric*(self: gen_qlineedit_types.QLineEdit, slot: QLineEditmetricProc) =
  # TODO check subclass
  var tmp = new QLineEditmetricProc
  tmp[] = slot
  GC_ref(tmp)
  fcQLineEdit_override_virtual_metric(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QLineEdit_metric(self: ptr cQLineEdit, slot: int, param1: cint): cint {.exportc: "miqt_exec_callback_QLineEdit_metric ".} =
  var nimfunc = cast[ptr QLineEditmetricProc](cast[pointer](slot))
  let slotval1 = cint(param1)


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn
proc QLineEditinitPainter*(self: gen_qlineedit_types.QLineEdit, painter: gen_qpainter_types.QPainter): void =
  fQLineEdit_virtualbase_initPainter(self.h, painter.h)

type QLineEditinitPainterProc* = proc(painter: gen_qpainter_types.QPainter): void
proc oninitPainter*(self: gen_qlineedit_types.QLineEdit, slot: QLineEditinitPainterProc) =
  # TODO check subclass
  var tmp = new QLineEditinitPainterProc
  tmp[] = slot
  GC_ref(tmp)
  fcQLineEdit_override_virtual_initPainter(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QLineEdit_initPainter(self: ptr cQLineEdit, slot: int, painter: pointer): void {.exportc: "miqt_exec_callback_QLineEdit_initPainter ".} =
  var nimfunc = cast[ptr QLineEditinitPainterProc](cast[pointer](slot))
  let slotval1 = gen_qpainter_types.QPainter(h: painter)


  nimfunc[](slotval1)
proc QLineEditredirected*(self: gen_qlineedit_types.QLineEdit, offset: gen_qpoint_types.QPoint): gen_qpaintdevice_types.QPaintDevice =
  gen_qpaintdevice_types.QPaintDevice(h: fQLineEdit_virtualbase_redirected(self.h, offset.h))

type QLineEditredirectedProc* = proc(offset: gen_qpoint_types.QPoint): gen_qpaintdevice_types.QPaintDevice
proc onredirected*(self: gen_qlineedit_types.QLineEdit, slot: QLineEditredirectedProc) =
  # TODO check subclass
  var tmp = new QLineEditredirectedProc
  tmp[] = slot
  GC_ref(tmp)
  fcQLineEdit_override_virtual_redirected(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QLineEdit_redirected(self: ptr cQLineEdit, slot: int, offset: pointer): pointer {.exportc: "miqt_exec_callback_QLineEdit_redirected ".} =
  var nimfunc = cast[ptr QLineEditredirectedProc](cast[pointer](slot))
  let slotval1 = gen_qpoint_types.QPoint(h: offset)


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn.h
proc QLineEditsharedPainter*(self: gen_qlineedit_types.QLineEdit, ): gen_qpainter_types.QPainter =
  gen_qpainter_types.QPainter(h: fQLineEdit_virtualbase_sharedPainter(self.h))

type QLineEditsharedPainterProc* = proc(): gen_qpainter_types.QPainter
proc onsharedPainter*(self: gen_qlineedit_types.QLineEdit, slot: QLineEditsharedPainterProc) =
  # TODO check subclass
  var tmp = new QLineEditsharedPainterProc
  tmp[] = slot
  GC_ref(tmp)
  fcQLineEdit_override_virtual_sharedPainter(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QLineEdit_sharedPainter(self: ptr cQLineEdit, slot: int): pointer {.exportc: "miqt_exec_callback_QLineEdit_sharedPainter ".} =
  var nimfunc = cast[ptr QLineEditsharedPainterProc](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )

  virtualReturn.h
proc QLineEditfocusNextPrevChild*(self: gen_qlineedit_types.QLineEdit, next: bool): bool =
  fQLineEdit_virtualbase_focusNextPrevChild(self.h, next)

type QLineEditfocusNextPrevChildProc* = proc(next: bool): bool
proc onfocusNextPrevChild*(self: gen_qlineedit_types.QLineEdit, slot: QLineEditfocusNextPrevChildProc) =
  # TODO check subclass
  var tmp = new QLineEditfocusNextPrevChildProc
  tmp[] = slot
  GC_ref(tmp)
  fcQLineEdit_override_virtual_focusNextPrevChild(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QLineEdit_focusNextPrevChild(self: ptr cQLineEdit, slot: int, next: bool): bool {.exportc: "miqt_exec_callback_QLineEdit_focusNextPrevChild ".} =
  var nimfunc = cast[ptr QLineEditfocusNextPrevChildProc](cast[pointer](slot))
  let slotval1 = next


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn
proc QLineEditeventFilter*(self: gen_qlineedit_types.QLineEdit, watched: gen_qobject_types.QObject, event: gen_qcoreevent_types.QEvent): bool =
  fQLineEdit_virtualbase_eventFilter(self.h, watched.h, event.h)

type QLineEditeventFilterProc* = proc(watched: gen_qobject_types.QObject, event: gen_qcoreevent_types.QEvent): bool
proc oneventFilter*(self: gen_qlineedit_types.QLineEdit, slot: QLineEditeventFilterProc) =
  # TODO check subclass
  var tmp = new QLineEditeventFilterProc
  tmp[] = slot
  GC_ref(tmp)
  fcQLineEdit_override_virtual_eventFilter(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QLineEdit_eventFilter(self: ptr cQLineEdit, slot: int, watched: pointer, event: pointer): bool {.exportc: "miqt_exec_callback_QLineEdit_eventFilter ".} =
  var nimfunc = cast[ptr QLineEditeventFilterProc](cast[pointer](slot))
  let slotval1 = gen_qobject_types.QObject(h: watched)

  let slotval2 = gen_qcoreevent_types.QEvent(h: event)


  let virtualReturn = nimfunc[](slotval1, slotval2 )

  virtualReturn
proc QLineEditchildEvent*(self: gen_qlineedit_types.QLineEdit, event: gen_qcoreevent_types.QChildEvent): void =
  fQLineEdit_virtualbase_childEvent(self.h, event.h)

type QLineEditchildEventProc* = proc(event: gen_qcoreevent_types.QChildEvent): void
proc onchildEvent*(self: gen_qlineedit_types.QLineEdit, slot: QLineEditchildEventProc) =
  # TODO check subclass
  var tmp = new QLineEditchildEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQLineEdit_override_virtual_childEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QLineEdit_childEvent(self: ptr cQLineEdit, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QLineEdit_childEvent ".} =
  var nimfunc = cast[ptr QLineEditchildEventProc](cast[pointer](slot))
  let slotval1 = gen_qcoreevent_types.QChildEvent(h: event)


  nimfunc[](slotval1)
proc QLineEditcustomEvent*(self: gen_qlineedit_types.QLineEdit, event: gen_qcoreevent_types.QEvent): void =
  fQLineEdit_virtualbase_customEvent(self.h, event.h)

type QLineEditcustomEventProc* = proc(event: gen_qcoreevent_types.QEvent): void
proc oncustomEvent*(self: gen_qlineedit_types.QLineEdit, slot: QLineEditcustomEventProc) =
  # TODO check subclass
  var tmp = new QLineEditcustomEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQLineEdit_override_virtual_customEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QLineEdit_customEvent(self: ptr cQLineEdit, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QLineEdit_customEvent ".} =
  var nimfunc = cast[ptr QLineEditcustomEventProc](cast[pointer](slot))
  let slotval1 = gen_qcoreevent_types.QEvent(h: event)


  nimfunc[](slotval1)
proc QLineEditconnectNotify*(self: gen_qlineedit_types.QLineEdit, signal: gen_qmetaobject_types.QMetaMethod): void =
  fQLineEdit_virtualbase_connectNotify(self.h, signal.h)

type QLineEditconnectNotifyProc* = proc(signal: gen_qmetaobject_types.QMetaMethod): void
proc onconnectNotify*(self: gen_qlineedit_types.QLineEdit, slot: QLineEditconnectNotifyProc) =
  # TODO check subclass
  var tmp = new QLineEditconnectNotifyProc
  tmp[] = slot
  GC_ref(tmp)
  fcQLineEdit_override_virtual_connectNotify(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QLineEdit_connectNotify(self: ptr cQLineEdit, slot: int, signal: pointer): void {.exportc: "miqt_exec_callback_QLineEdit_connectNotify ".} =
  var nimfunc = cast[ptr QLineEditconnectNotifyProc](cast[pointer](slot))
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal)


  nimfunc[](slotval1)
proc QLineEditdisconnectNotify*(self: gen_qlineedit_types.QLineEdit, signal: gen_qmetaobject_types.QMetaMethod): void =
  fQLineEdit_virtualbase_disconnectNotify(self.h, signal.h)

type QLineEditdisconnectNotifyProc* = proc(signal: gen_qmetaobject_types.QMetaMethod): void
proc ondisconnectNotify*(self: gen_qlineedit_types.QLineEdit, slot: QLineEditdisconnectNotifyProc) =
  # TODO check subclass
  var tmp = new QLineEditdisconnectNotifyProc
  tmp[] = slot
  GC_ref(tmp)
  fcQLineEdit_override_virtual_disconnectNotify(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QLineEdit_disconnectNotify(self: ptr cQLineEdit, slot: int, signal: pointer): void {.exportc: "miqt_exec_callback_QLineEdit_disconnectNotify ".} =
  var nimfunc = cast[ptr QLineEditdisconnectNotifyProc](cast[pointer](slot))
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal)


  nimfunc[](slotval1)
proc delete*(self: gen_qlineedit_types.QLineEdit) =
  fcQLineEdit_delete(self.h)
