import ./Qt5Widgets_libs

{.push raises: [].}

from system/ansi_c import c_free, c_malloc

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

const cflags = gorge("pkg-config --cflags Qt5Widgets") & " -fPIC"
{.compile("gen_qabstractspinbox.cpp", cflags).}


type QAbstractSpinBoxStepEnabledFlagEnum* = distinct cint
template StepNone*(_: type QAbstractSpinBoxStepEnabledFlagEnum): untyped = 0
template StepUpEnabled*(_: type QAbstractSpinBoxStepEnabledFlagEnum): untyped = 1
template StepDownEnabled*(_: type QAbstractSpinBoxStepEnabledFlagEnum): untyped = 2


type QAbstractSpinBoxButtonSymbolsEnum* = distinct cint
template UpDownArrows*(_: type QAbstractSpinBoxButtonSymbolsEnum): untyped = 0
template PlusMinus*(_: type QAbstractSpinBoxButtonSymbolsEnum): untyped = 1
template NoButtons*(_: type QAbstractSpinBoxButtonSymbolsEnum): untyped = 2


type QAbstractSpinBoxCorrectionModeEnum* = distinct cint
template CorrectToPreviousValue*(_: type QAbstractSpinBoxCorrectionModeEnum): untyped = 0
template CorrectToNearestValue*(_: type QAbstractSpinBoxCorrectionModeEnum): untyped = 1


type QAbstractSpinBoxStepTypeEnum* = distinct cint
template DefaultStepType*(_: type QAbstractSpinBoxStepTypeEnum): untyped = 0
template AdaptiveDecimalStepType*(_: type QAbstractSpinBoxStepTypeEnum): untyped = 1


import ./gen_qabstractspinbox_types
export gen_qabstractspinbox_types

import
  ../QtCore/gen_qcoreevent_types,
  ../QtCore/gen_qmetaobject_types,
  ../QtCore/gen_qobject_types,
  ../QtCore/gen_qobjectdefs_types,
  ../QtCore/gen_qpoint_types,
  ../QtCore/gen_qsize_types,
  ../QtCore/gen_qvariant_types,
  ../QtGui/gen_qevent_types,
  ../QtGui/gen_qpaintdevice_types,
  ../QtGui/gen_qpaintengine_types,
  ../QtGui/gen_qpainter_types,
  ./gen_qlineedit_types,
  ./gen_qstyleoption_types,
  ./gen_qwidget
export
  gen_qcoreevent_types,
  gen_qmetaobject_types,
  gen_qobject_types,
  gen_qobjectdefs_types,
  gen_qpoint_types,
  gen_qsize_types,
  gen_qvariant_types,
  gen_qevent_types,
  gen_qpaintdevice_types,
  gen_qpaintengine_types,
  gen_qpainter_types,
  gen_qlineedit_types,
  gen_qstyleoption_types,
  gen_qwidget

type cQAbstractSpinBox*{.exportc: "QAbstractSpinBox", incompleteStruct.} = object

proc fcQAbstractSpinBox_metaObject(self: pointer, ): pointer {.importc: "QAbstractSpinBox_metaObject".}
proc fcQAbstractSpinBox_metacast(self: pointer, param1: cstring): pointer {.importc: "QAbstractSpinBox_metacast".}
proc fcQAbstractSpinBox_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.importc: "QAbstractSpinBox_metacall".}
proc fcQAbstractSpinBox_tr(s: cstring): struct_miqt_string {.importc: "QAbstractSpinBox_tr".}
proc fcQAbstractSpinBox_trUtf8(s: cstring): struct_miqt_string {.importc: "QAbstractSpinBox_trUtf8".}
proc fcQAbstractSpinBox_buttonSymbols(self: pointer, ): cint {.importc: "QAbstractSpinBox_buttonSymbols".}
proc fcQAbstractSpinBox_setButtonSymbols(self: pointer, bs: cint): void {.importc: "QAbstractSpinBox_setButtonSymbols".}
proc fcQAbstractSpinBox_setCorrectionMode(self: pointer, cm: cint): void {.importc: "QAbstractSpinBox_setCorrectionMode".}
proc fcQAbstractSpinBox_correctionMode(self: pointer, ): cint {.importc: "QAbstractSpinBox_correctionMode".}
proc fcQAbstractSpinBox_hasAcceptableInput(self: pointer, ): bool {.importc: "QAbstractSpinBox_hasAcceptableInput".}
proc fcQAbstractSpinBox_text(self: pointer, ): struct_miqt_string {.importc: "QAbstractSpinBox_text".}
proc fcQAbstractSpinBox_specialValueText(self: pointer, ): struct_miqt_string {.importc: "QAbstractSpinBox_specialValueText".}
proc fcQAbstractSpinBox_setSpecialValueText(self: pointer, txt: struct_miqt_string): void {.importc: "QAbstractSpinBox_setSpecialValueText".}
proc fcQAbstractSpinBox_wrapping(self: pointer, ): bool {.importc: "QAbstractSpinBox_wrapping".}
proc fcQAbstractSpinBox_setWrapping(self: pointer, w: bool): void {.importc: "QAbstractSpinBox_setWrapping".}
proc fcQAbstractSpinBox_setReadOnly(self: pointer, r: bool): void {.importc: "QAbstractSpinBox_setReadOnly".}
proc fcQAbstractSpinBox_isReadOnly(self: pointer, ): bool {.importc: "QAbstractSpinBox_isReadOnly".}
proc fcQAbstractSpinBox_setKeyboardTracking(self: pointer, kt: bool): void {.importc: "QAbstractSpinBox_setKeyboardTracking".}
proc fcQAbstractSpinBox_keyboardTracking(self: pointer, ): bool {.importc: "QAbstractSpinBox_keyboardTracking".}
proc fcQAbstractSpinBox_setAlignment(self: pointer, flag: cint): void {.importc: "QAbstractSpinBox_setAlignment".}
proc fcQAbstractSpinBox_alignment(self: pointer, ): cint {.importc: "QAbstractSpinBox_alignment".}
proc fcQAbstractSpinBox_setFrame(self: pointer, frame: bool): void {.importc: "QAbstractSpinBox_setFrame".}
proc fcQAbstractSpinBox_hasFrame(self: pointer, ): bool {.importc: "QAbstractSpinBox_hasFrame".}
proc fcQAbstractSpinBox_setAccelerated(self: pointer, on: bool): void {.importc: "QAbstractSpinBox_setAccelerated".}
proc fcQAbstractSpinBox_isAccelerated(self: pointer, ): bool {.importc: "QAbstractSpinBox_isAccelerated".}
proc fcQAbstractSpinBox_setGroupSeparatorShown(self: pointer, shown: bool): void {.importc: "QAbstractSpinBox_setGroupSeparatorShown".}
proc fcQAbstractSpinBox_isGroupSeparatorShown(self: pointer, ): bool {.importc: "QAbstractSpinBox_isGroupSeparatorShown".}
proc fcQAbstractSpinBox_sizeHint(self: pointer, ): pointer {.importc: "QAbstractSpinBox_sizeHint".}
proc fcQAbstractSpinBox_minimumSizeHint(self: pointer, ): pointer {.importc: "QAbstractSpinBox_minimumSizeHint".}
proc fcQAbstractSpinBox_interpretText(self: pointer, ): void {.importc: "QAbstractSpinBox_interpretText".}
proc fcQAbstractSpinBox_event(self: pointer, event: pointer): bool {.importc: "QAbstractSpinBox_event".}
proc fcQAbstractSpinBox_inputMethodQuery(self: pointer, param1: cint): pointer {.importc: "QAbstractSpinBox_inputMethodQuery".}
proc fcQAbstractSpinBox_validate(self: pointer, input: struct_miqt_string, pos: ptr cint): cint {.importc: "QAbstractSpinBox_validate".}
proc fcQAbstractSpinBox_fixup(self: pointer, input: struct_miqt_string): void {.importc: "QAbstractSpinBox_fixup".}
proc fcQAbstractSpinBox_stepBy(self: pointer, steps: cint): void {.importc: "QAbstractSpinBox_stepBy".}
proc fcQAbstractSpinBox_stepUp(self: pointer, ): void {.importc: "QAbstractSpinBox_stepUp".}
proc fcQAbstractSpinBox_stepDown(self: pointer, ): void {.importc: "QAbstractSpinBox_stepDown".}
proc fcQAbstractSpinBox_selectAll(self: pointer, ): void {.importc: "QAbstractSpinBox_selectAll".}
proc fcQAbstractSpinBox_clear(self: pointer, ): void {.importc: "QAbstractSpinBox_clear".}
proc fcQAbstractSpinBox_editingFinished(self: pointer, ): void {.importc: "QAbstractSpinBox_editingFinished".}
proc fcQAbstractSpinBox_connect_editingFinished(self: pointer, slot: int, callback: proc (slot: int) {.cdecl.}, release: proc(slot: int) {.cdecl.}) {.importc: "QAbstractSpinBox_connect_editingFinished".}
proc fcQAbstractSpinBox_tr2(s: cstring, c: cstring): struct_miqt_string {.importc: "QAbstractSpinBox_tr2".}
proc fcQAbstractSpinBox_tr3(s: cstring, c: cstring, n: cint): struct_miqt_string {.importc: "QAbstractSpinBox_tr3".}
proc fcQAbstractSpinBox_trUtf82(s: cstring, c: cstring): struct_miqt_string {.importc: "QAbstractSpinBox_trUtf82".}
proc fcQAbstractSpinBox_trUtf83(s: cstring, c: cstring, n: cint): struct_miqt_string {.importc: "QAbstractSpinBox_trUtf83".}
type cQAbstractSpinBoxVTable {.pure.} = object
  destructor*: proc(vtbl: ptr cQAbstractSpinBoxVTable, self: ptr cQAbstractSpinBox) {.cdecl, raises:[], gcsafe.}
  metaObject*: proc(vtbl, self: pointer, ): pointer {.cdecl, raises: [], gcsafe.}
  metacast*: proc(vtbl, self: pointer, param1: cstring): pointer {.cdecl, raises: [], gcsafe.}
  metacall*: proc(vtbl, self: pointer, param1: cint, param2: cint, param3: pointer): cint {.cdecl, raises: [], gcsafe.}
  sizeHint*: proc(vtbl, self: pointer, ): pointer {.cdecl, raises: [], gcsafe.}
  minimumSizeHint*: proc(vtbl, self: pointer, ): pointer {.cdecl, raises: [], gcsafe.}
  event*: proc(vtbl, self: pointer, event: pointer): bool {.cdecl, raises: [], gcsafe.}
  inputMethodQuery*: proc(vtbl, self: pointer, param1: cint): pointer {.cdecl, raises: [], gcsafe.}
  validate*: proc(vtbl, self: pointer, input: struct_miqt_string, pos: ptr cint): cint {.cdecl, raises: [], gcsafe.}
  fixup*: proc(vtbl, self: pointer, input: struct_miqt_string): void {.cdecl, raises: [], gcsafe.}
  stepBy*: proc(vtbl, self: pointer, steps: cint): void {.cdecl, raises: [], gcsafe.}
  clear*: proc(vtbl, self: pointer, ): void {.cdecl, raises: [], gcsafe.}
  resizeEvent*: proc(vtbl, self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  keyPressEvent*: proc(vtbl, self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  keyReleaseEvent*: proc(vtbl, self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  wheelEvent*: proc(vtbl, self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  focusInEvent*: proc(vtbl, self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  focusOutEvent*: proc(vtbl, self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  contextMenuEvent*: proc(vtbl, self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  changeEvent*: proc(vtbl, self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  closeEvent*: proc(vtbl, self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  hideEvent*: proc(vtbl, self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  mousePressEvent*: proc(vtbl, self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  mouseReleaseEvent*: proc(vtbl, self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  mouseMoveEvent*: proc(vtbl, self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  timerEvent*: proc(vtbl, self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  paintEvent*: proc(vtbl, self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  showEvent*: proc(vtbl, self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  stepEnabled*: proc(vtbl, self: pointer, ): cint {.cdecl, raises: [], gcsafe.}
  devType*: proc(vtbl, self: pointer, ): cint {.cdecl, raises: [], gcsafe.}
  setVisible*: proc(vtbl, self: pointer, visible: bool): void {.cdecl, raises: [], gcsafe.}
  heightForWidth*: proc(vtbl, self: pointer, param1: cint): cint {.cdecl, raises: [], gcsafe.}
  hasHeightForWidth*: proc(vtbl, self: pointer, ): bool {.cdecl, raises: [], gcsafe.}
  paintEngine*: proc(vtbl, self: pointer, ): pointer {.cdecl, raises: [], gcsafe.}
  mouseDoubleClickEvent*: proc(vtbl, self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  enterEvent*: proc(vtbl, self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  leaveEvent*: proc(vtbl, self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  moveEvent*: proc(vtbl, self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  tabletEvent*: proc(vtbl, self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  actionEvent*: proc(vtbl, self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  dragEnterEvent*: proc(vtbl, self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  dragMoveEvent*: proc(vtbl, self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  dragLeaveEvent*: proc(vtbl, self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  dropEvent*: proc(vtbl, self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  nativeEvent*: proc(vtbl, self: pointer, eventType: struct_miqt_string, message: pointer, resultVal: ptr clong): bool {.cdecl, raises: [], gcsafe.}
  metric*: proc(vtbl, self: pointer, param1: cint): cint {.cdecl, raises: [], gcsafe.}
  initPainter*: proc(vtbl, self: pointer, painter: pointer): void {.cdecl, raises: [], gcsafe.}
  redirected*: proc(vtbl, self: pointer, offset: pointer): pointer {.cdecl, raises: [], gcsafe.}
  sharedPainter*: proc(vtbl, self: pointer, ): pointer {.cdecl, raises: [], gcsafe.}
  inputMethodEvent*: proc(vtbl, self: pointer, param1: pointer): void {.cdecl, raises: [], gcsafe.}
  focusNextPrevChild*: proc(vtbl, self: pointer, next: bool): bool {.cdecl, raises: [], gcsafe.}
  eventFilter*: proc(vtbl, self: pointer, watched: pointer, event: pointer): bool {.cdecl, raises: [], gcsafe.}
  childEvent*: proc(vtbl, self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  customEvent*: proc(vtbl, self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  connectNotify*: proc(vtbl, self: pointer, signal: pointer): void {.cdecl, raises: [], gcsafe.}
  disconnectNotify*: proc(vtbl, self: pointer, signal: pointer): void {.cdecl, raises: [], gcsafe.}
proc fcQAbstractSpinBox_virtualbase_metaObject(self: pointer, ): pointer {.importc: "QAbstractSpinBox_virtualbase_metaObject".}
proc fcQAbstractSpinBox_virtualbase_metacast(self: pointer, param1: cstring): pointer {.importc: "QAbstractSpinBox_virtualbase_metacast".}
proc fcQAbstractSpinBox_virtualbase_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.importc: "QAbstractSpinBox_virtualbase_metacall".}
proc fcQAbstractSpinBox_virtualbase_sizeHint(self: pointer, ): pointer {.importc: "QAbstractSpinBox_virtualbase_sizeHint".}
proc fcQAbstractSpinBox_virtualbase_minimumSizeHint(self: pointer, ): pointer {.importc: "QAbstractSpinBox_virtualbase_minimumSizeHint".}
proc fcQAbstractSpinBox_virtualbase_event(self: pointer, event: pointer): bool {.importc: "QAbstractSpinBox_virtualbase_event".}
proc fcQAbstractSpinBox_virtualbase_inputMethodQuery(self: pointer, param1: cint): pointer {.importc: "QAbstractSpinBox_virtualbase_inputMethodQuery".}
proc fcQAbstractSpinBox_virtualbase_validate(self: pointer, input: struct_miqt_string, pos: ptr cint): cint {.importc: "QAbstractSpinBox_virtualbase_validate".}
proc fcQAbstractSpinBox_virtualbase_fixup(self: pointer, input: struct_miqt_string): void {.importc: "QAbstractSpinBox_virtualbase_fixup".}
proc fcQAbstractSpinBox_virtualbase_stepBy(self: pointer, steps: cint): void {.importc: "QAbstractSpinBox_virtualbase_stepBy".}
proc fcQAbstractSpinBox_virtualbase_clear(self: pointer, ): void {.importc: "QAbstractSpinBox_virtualbase_clear".}
proc fcQAbstractSpinBox_virtualbase_resizeEvent(self: pointer, event: pointer): void {.importc: "QAbstractSpinBox_virtualbase_resizeEvent".}
proc fcQAbstractSpinBox_virtualbase_keyPressEvent(self: pointer, event: pointer): void {.importc: "QAbstractSpinBox_virtualbase_keyPressEvent".}
proc fcQAbstractSpinBox_virtualbase_keyReleaseEvent(self: pointer, event: pointer): void {.importc: "QAbstractSpinBox_virtualbase_keyReleaseEvent".}
proc fcQAbstractSpinBox_virtualbase_wheelEvent(self: pointer, event: pointer): void {.importc: "QAbstractSpinBox_virtualbase_wheelEvent".}
proc fcQAbstractSpinBox_virtualbase_focusInEvent(self: pointer, event: pointer): void {.importc: "QAbstractSpinBox_virtualbase_focusInEvent".}
proc fcQAbstractSpinBox_virtualbase_focusOutEvent(self: pointer, event: pointer): void {.importc: "QAbstractSpinBox_virtualbase_focusOutEvent".}
proc fcQAbstractSpinBox_virtualbase_contextMenuEvent(self: pointer, event: pointer): void {.importc: "QAbstractSpinBox_virtualbase_contextMenuEvent".}
proc fcQAbstractSpinBox_virtualbase_changeEvent(self: pointer, event: pointer): void {.importc: "QAbstractSpinBox_virtualbase_changeEvent".}
proc fcQAbstractSpinBox_virtualbase_closeEvent(self: pointer, event: pointer): void {.importc: "QAbstractSpinBox_virtualbase_closeEvent".}
proc fcQAbstractSpinBox_virtualbase_hideEvent(self: pointer, event: pointer): void {.importc: "QAbstractSpinBox_virtualbase_hideEvent".}
proc fcQAbstractSpinBox_virtualbase_mousePressEvent(self: pointer, event: pointer): void {.importc: "QAbstractSpinBox_virtualbase_mousePressEvent".}
proc fcQAbstractSpinBox_virtualbase_mouseReleaseEvent(self: pointer, event: pointer): void {.importc: "QAbstractSpinBox_virtualbase_mouseReleaseEvent".}
proc fcQAbstractSpinBox_virtualbase_mouseMoveEvent(self: pointer, event: pointer): void {.importc: "QAbstractSpinBox_virtualbase_mouseMoveEvent".}
proc fcQAbstractSpinBox_virtualbase_timerEvent(self: pointer, event: pointer): void {.importc: "QAbstractSpinBox_virtualbase_timerEvent".}
proc fcQAbstractSpinBox_virtualbase_paintEvent(self: pointer, event: pointer): void {.importc: "QAbstractSpinBox_virtualbase_paintEvent".}
proc fcQAbstractSpinBox_virtualbase_showEvent(self: pointer, event: pointer): void {.importc: "QAbstractSpinBox_virtualbase_showEvent".}
proc fcQAbstractSpinBox_virtualbase_stepEnabled(self: pointer, ): cint {.importc: "QAbstractSpinBox_virtualbase_stepEnabled".}
proc fcQAbstractSpinBox_virtualbase_devType(self: pointer, ): cint {.importc: "QAbstractSpinBox_virtualbase_devType".}
proc fcQAbstractSpinBox_virtualbase_setVisible(self: pointer, visible: bool): void {.importc: "QAbstractSpinBox_virtualbase_setVisible".}
proc fcQAbstractSpinBox_virtualbase_heightForWidth(self: pointer, param1: cint): cint {.importc: "QAbstractSpinBox_virtualbase_heightForWidth".}
proc fcQAbstractSpinBox_virtualbase_hasHeightForWidth(self: pointer, ): bool {.importc: "QAbstractSpinBox_virtualbase_hasHeightForWidth".}
proc fcQAbstractSpinBox_virtualbase_paintEngine(self: pointer, ): pointer {.importc: "QAbstractSpinBox_virtualbase_paintEngine".}
proc fcQAbstractSpinBox_virtualbase_mouseDoubleClickEvent(self: pointer, event: pointer): void {.importc: "QAbstractSpinBox_virtualbase_mouseDoubleClickEvent".}
proc fcQAbstractSpinBox_virtualbase_enterEvent(self: pointer, event: pointer): void {.importc: "QAbstractSpinBox_virtualbase_enterEvent".}
proc fcQAbstractSpinBox_virtualbase_leaveEvent(self: pointer, event: pointer): void {.importc: "QAbstractSpinBox_virtualbase_leaveEvent".}
proc fcQAbstractSpinBox_virtualbase_moveEvent(self: pointer, event: pointer): void {.importc: "QAbstractSpinBox_virtualbase_moveEvent".}
proc fcQAbstractSpinBox_virtualbase_tabletEvent(self: pointer, event: pointer): void {.importc: "QAbstractSpinBox_virtualbase_tabletEvent".}
proc fcQAbstractSpinBox_virtualbase_actionEvent(self: pointer, event: pointer): void {.importc: "QAbstractSpinBox_virtualbase_actionEvent".}
proc fcQAbstractSpinBox_virtualbase_dragEnterEvent(self: pointer, event: pointer): void {.importc: "QAbstractSpinBox_virtualbase_dragEnterEvent".}
proc fcQAbstractSpinBox_virtualbase_dragMoveEvent(self: pointer, event: pointer): void {.importc: "QAbstractSpinBox_virtualbase_dragMoveEvent".}
proc fcQAbstractSpinBox_virtualbase_dragLeaveEvent(self: pointer, event: pointer): void {.importc: "QAbstractSpinBox_virtualbase_dragLeaveEvent".}
proc fcQAbstractSpinBox_virtualbase_dropEvent(self: pointer, event: pointer): void {.importc: "QAbstractSpinBox_virtualbase_dropEvent".}
proc fcQAbstractSpinBox_virtualbase_nativeEvent(self: pointer, eventType: struct_miqt_string, message: pointer, resultVal: ptr clong): bool {.importc: "QAbstractSpinBox_virtualbase_nativeEvent".}
proc fcQAbstractSpinBox_virtualbase_metric(self: pointer, param1: cint): cint {.importc: "QAbstractSpinBox_virtualbase_metric".}
proc fcQAbstractSpinBox_virtualbase_initPainter(self: pointer, painter: pointer): void {.importc: "QAbstractSpinBox_virtualbase_initPainter".}
proc fcQAbstractSpinBox_virtualbase_redirected(self: pointer, offset: pointer): pointer {.importc: "QAbstractSpinBox_virtualbase_redirected".}
proc fcQAbstractSpinBox_virtualbase_sharedPainter(self: pointer, ): pointer {.importc: "QAbstractSpinBox_virtualbase_sharedPainter".}
proc fcQAbstractSpinBox_virtualbase_inputMethodEvent(self: pointer, param1: pointer): void {.importc: "QAbstractSpinBox_virtualbase_inputMethodEvent".}
proc fcQAbstractSpinBox_virtualbase_focusNextPrevChild(self: pointer, next: bool): bool {.importc: "QAbstractSpinBox_virtualbase_focusNextPrevChild".}
proc fcQAbstractSpinBox_virtualbase_eventFilter(self: pointer, watched: pointer, event: pointer): bool {.importc: "QAbstractSpinBox_virtualbase_eventFilter".}
proc fcQAbstractSpinBox_virtualbase_childEvent(self: pointer, event: pointer): void {.importc: "QAbstractSpinBox_virtualbase_childEvent".}
proc fcQAbstractSpinBox_virtualbase_customEvent(self: pointer, event: pointer): void {.importc: "QAbstractSpinBox_virtualbase_customEvent".}
proc fcQAbstractSpinBox_virtualbase_connectNotify(self: pointer, signal: pointer): void {.importc: "QAbstractSpinBox_virtualbase_connectNotify".}
proc fcQAbstractSpinBox_virtualbase_disconnectNotify(self: pointer, signal: pointer): void {.importc: "QAbstractSpinBox_virtualbase_disconnectNotify".}
proc fcQAbstractSpinBox_protectedbase_initStyleOption(self: pointer, option: pointer): void {.importc: "QAbstractSpinBox_protectedbase_initStyleOption".}
proc fcQAbstractSpinBox_protectedbase_lineEdit(self: pointer, ): pointer {.importc: "QAbstractSpinBox_protectedbase_lineEdit".}
proc fcQAbstractSpinBox_protectedbase_setLineEdit(self: pointer, edit: pointer): void {.importc: "QAbstractSpinBox_protectedbase_setLineEdit".}
proc fcQAbstractSpinBox_protectedbase_updateMicroFocus(self: pointer, ): void {.importc: "QAbstractSpinBox_protectedbase_updateMicroFocus".}
proc fcQAbstractSpinBox_protectedbase_create(self: pointer, ): void {.importc: "QAbstractSpinBox_protectedbase_create".}
proc fcQAbstractSpinBox_protectedbase_destroy(self: pointer, ): void {.importc: "QAbstractSpinBox_protectedbase_destroy".}
proc fcQAbstractSpinBox_protectedbase_focusNextChild(self: pointer, ): bool {.importc: "QAbstractSpinBox_protectedbase_focusNextChild".}
proc fcQAbstractSpinBox_protectedbase_focusPreviousChild(self: pointer, ): bool {.importc: "QAbstractSpinBox_protectedbase_focusPreviousChild".}
proc fcQAbstractSpinBox_protectedbase_sender(self: pointer, ): pointer {.importc: "QAbstractSpinBox_protectedbase_sender".}
proc fcQAbstractSpinBox_protectedbase_senderSignalIndex(self: pointer, ): cint {.importc: "QAbstractSpinBox_protectedbase_senderSignalIndex".}
proc fcQAbstractSpinBox_protectedbase_receivers(self: pointer, signal: cstring): cint {.importc: "QAbstractSpinBox_protectedbase_receivers".}
proc fcQAbstractSpinBox_protectedbase_isSignalConnected(self: pointer, signal: pointer): bool {.importc: "QAbstractSpinBox_protectedbase_isSignalConnected".}
proc fcQAbstractSpinBox_new(vtbl: pointer, parent: pointer): ptr cQAbstractSpinBox {.importc: "QAbstractSpinBox_new".}
proc fcQAbstractSpinBox_new2(vtbl: pointer, ): ptr cQAbstractSpinBox {.importc: "QAbstractSpinBox_new2".}
proc fcQAbstractSpinBox_staticMetaObject(): pointer {.importc: "QAbstractSpinBox_staticMetaObject".}

proc metaObject*(self: gen_qabstractspinbox_types.QAbstractSpinBox, ): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQAbstractSpinBox_metaObject(self.h), owned: false)

proc metacast*(self: gen_qabstractspinbox_types.QAbstractSpinBox, param1: cstring): pointer =
  fcQAbstractSpinBox_metacast(self.h, param1)

proc metacall*(self: gen_qabstractspinbox_types.QAbstractSpinBox, param1: cint, param2: cint, param3: pointer): cint =
  fcQAbstractSpinBox_metacall(self.h, cint(param1), param2, param3)

proc tr*(_: type gen_qabstractspinbox_types.QAbstractSpinBox, s: cstring): string =
  let v_ms = fcQAbstractSpinBox_tr(s)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc trUtf8*(_: type gen_qabstractspinbox_types.QAbstractSpinBox, s: cstring): string =
  let v_ms = fcQAbstractSpinBox_trUtf8(s)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc buttonSymbols*(self: gen_qabstractspinbox_types.QAbstractSpinBox, ): cint =
  cint(fcQAbstractSpinBox_buttonSymbols(self.h))

proc setButtonSymbols*(self: gen_qabstractspinbox_types.QAbstractSpinBox, bs: cint): void =
  fcQAbstractSpinBox_setButtonSymbols(self.h, cint(bs))

proc setCorrectionMode*(self: gen_qabstractspinbox_types.QAbstractSpinBox, cm: cint): void =
  fcQAbstractSpinBox_setCorrectionMode(self.h, cint(cm))

proc correctionMode*(self: gen_qabstractspinbox_types.QAbstractSpinBox, ): cint =
  cint(fcQAbstractSpinBox_correctionMode(self.h))

proc hasAcceptableInput*(self: gen_qabstractspinbox_types.QAbstractSpinBox, ): bool =
  fcQAbstractSpinBox_hasAcceptableInput(self.h)

proc text*(self: gen_qabstractspinbox_types.QAbstractSpinBox, ): string =
  let v_ms = fcQAbstractSpinBox_text(self.h)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc specialValueText*(self: gen_qabstractspinbox_types.QAbstractSpinBox, ): string =
  let v_ms = fcQAbstractSpinBox_specialValueText(self.h)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc setSpecialValueText*(self: gen_qabstractspinbox_types.QAbstractSpinBox, txt: string): void =
  fcQAbstractSpinBox_setSpecialValueText(self.h, struct_miqt_string(data: txt, len: csize_t(len(txt))))

proc wrapping*(self: gen_qabstractspinbox_types.QAbstractSpinBox, ): bool =
  fcQAbstractSpinBox_wrapping(self.h)

proc setWrapping*(self: gen_qabstractspinbox_types.QAbstractSpinBox, w: bool): void =
  fcQAbstractSpinBox_setWrapping(self.h, w)

proc setReadOnly*(self: gen_qabstractspinbox_types.QAbstractSpinBox, r: bool): void =
  fcQAbstractSpinBox_setReadOnly(self.h, r)

proc isReadOnly*(self: gen_qabstractspinbox_types.QAbstractSpinBox, ): bool =
  fcQAbstractSpinBox_isReadOnly(self.h)

proc setKeyboardTracking*(self: gen_qabstractspinbox_types.QAbstractSpinBox, kt: bool): void =
  fcQAbstractSpinBox_setKeyboardTracking(self.h, kt)

proc keyboardTracking*(self: gen_qabstractspinbox_types.QAbstractSpinBox, ): bool =
  fcQAbstractSpinBox_keyboardTracking(self.h)

proc setAlignment*(self: gen_qabstractspinbox_types.QAbstractSpinBox, flag: cint): void =
  fcQAbstractSpinBox_setAlignment(self.h, cint(flag))

proc alignment*(self: gen_qabstractspinbox_types.QAbstractSpinBox, ): cint =
  cint(fcQAbstractSpinBox_alignment(self.h))

proc setFrame*(self: gen_qabstractspinbox_types.QAbstractSpinBox, frame: bool): void =
  fcQAbstractSpinBox_setFrame(self.h, frame)

proc hasFrame*(self: gen_qabstractspinbox_types.QAbstractSpinBox, ): bool =
  fcQAbstractSpinBox_hasFrame(self.h)

proc setAccelerated*(self: gen_qabstractspinbox_types.QAbstractSpinBox, on: bool): void =
  fcQAbstractSpinBox_setAccelerated(self.h, on)

proc isAccelerated*(self: gen_qabstractspinbox_types.QAbstractSpinBox, ): bool =
  fcQAbstractSpinBox_isAccelerated(self.h)

proc setGroupSeparatorShown*(self: gen_qabstractspinbox_types.QAbstractSpinBox, shown: bool): void =
  fcQAbstractSpinBox_setGroupSeparatorShown(self.h, shown)

proc isGroupSeparatorShown*(self: gen_qabstractspinbox_types.QAbstractSpinBox, ): bool =
  fcQAbstractSpinBox_isGroupSeparatorShown(self.h)

proc sizeHint*(self: gen_qabstractspinbox_types.QAbstractSpinBox, ): gen_qsize_types.QSize =
  gen_qsize_types.QSize(h: fcQAbstractSpinBox_sizeHint(self.h), owned: true)

proc minimumSizeHint*(self: gen_qabstractspinbox_types.QAbstractSpinBox, ): gen_qsize_types.QSize =
  gen_qsize_types.QSize(h: fcQAbstractSpinBox_minimumSizeHint(self.h), owned: true)

proc interpretText*(self: gen_qabstractspinbox_types.QAbstractSpinBox, ): void =
  fcQAbstractSpinBox_interpretText(self.h)

proc event*(self: gen_qabstractspinbox_types.QAbstractSpinBox, event: gen_qcoreevent_types.QEvent): bool =
  fcQAbstractSpinBox_event(self.h, event.h)

proc inputMethodQuery*(self: gen_qabstractspinbox_types.QAbstractSpinBox, param1: cint): gen_qvariant_types.QVariant =
  gen_qvariant_types.QVariant(h: fcQAbstractSpinBox_inputMethodQuery(self.h, cint(param1)), owned: true)

proc validate*(self: gen_qabstractspinbox_types.QAbstractSpinBox, input: string, pos: ptr cint): cint =
  cint(fcQAbstractSpinBox_validate(self.h, struct_miqt_string(data: input, len: csize_t(len(input))), pos))

proc fixup*(self: gen_qabstractspinbox_types.QAbstractSpinBox, input: string): void =
  fcQAbstractSpinBox_fixup(self.h, struct_miqt_string(data: input, len: csize_t(len(input))))

proc stepBy*(self: gen_qabstractspinbox_types.QAbstractSpinBox, steps: cint): void =
  fcQAbstractSpinBox_stepBy(self.h, steps)

proc stepUp*(self: gen_qabstractspinbox_types.QAbstractSpinBox, ): void =
  fcQAbstractSpinBox_stepUp(self.h)

proc stepDown*(self: gen_qabstractspinbox_types.QAbstractSpinBox, ): void =
  fcQAbstractSpinBox_stepDown(self.h)

proc selectAll*(self: gen_qabstractspinbox_types.QAbstractSpinBox, ): void =
  fcQAbstractSpinBox_selectAll(self.h)

proc clear*(self: gen_qabstractspinbox_types.QAbstractSpinBox, ): void =
  fcQAbstractSpinBox_clear(self.h)

proc editingFinished*(self: gen_qabstractspinbox_types.QAbstractSpinBox, ): void =
  fcQAbstractSpinBox_editingFinished(self.h)

type QAbstractSpinBoxeditingFinishedSlot* = proc()
proc miqt_exec_callback_cQAbstractSpinBox_editingFinished(slot: int) {.cdecl.} =
  let nimfunc = cast[ptr QAbstractSpinBoxeditingFinishedSlot](cast[pointer](slot))
  nimfunc[]()

proc miqt_exec_callback_cQAbstractSpinBox_editingFinished_release(slot: int) {.cdecl.} =
  let nimfunc = cast[ref QAbstractSpinBoxeditingFinishedSlot](cast[pointer](slot))
  GC_unref(nimfunc)

proc oneditingFinished*(self: gen_qabstractspinbox_types.QAbstractSpinBox, slot: QAbstractSpinBoxeditingFinishedSlot) =
  var tmp = new QAbstractSpinBoxeditingFinishedSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQAbstractSpinBox_connect_editingFinished(self.h, cast[int](addr tmp[]), miqt_exec_callback_cQAbstractSpinBox_editingFinished, miqt_exec_callback_cQAbstractSpinBox_editingFinished_release)

proc tr*(_: type gen_qabstractspinbox_types.QAbstractSpinBox, s: cstring, c: cstring): string =
  let v_ms = fcQAbstractSpinBox_tr2(s, c)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc tr*(_: type gen_qabstractspinbox_types.QAbstractSpinBox, s: cstring, c: cstring, n: cint): string =
  let v_ms = fcQAbstractSpinBox_tr3(s, c, n)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc trUtf8*(_: type gen_qabstractspinbox_types.QAbstractSpinBox, s: cstring, c: cstring): string =
  let v_ms = fcQAbstractSpinBox_trUtf82(s, c)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc trUtf8*(_: type gen_qabstractspinbox_types.QAbstractSpinBox, s: cstring, c: cstring, n: cint): string =
  let v_ms = fcQAbstractSpinBox_trUtf83(s, c, n)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

type QAbstractSpinBoxmetaObjectProc* = proc(self: QAbstractSpinBox): gen_qobjectdefs_types.QMetaObject {.raises: [], gcsafe.}
type QAbstractSpinBoxmetacastProc* = proc(self: QAbstractSpinBox, param1: cstring): pointer {.raises: [], gcsafe.}
type QAbstractSpinBoxmetacallProc* = proc(self: QAbstractSpinBox, param1: cint, param2: cint, param3: pointer): cint {.raises: [], gcsafe.}
type QAbstractSpinBoxsizeHintProc* = proc(self: QAbstractSpinBox): gen_qsize_types.QSize {.raises: [], gcsafe.}
type QAbstractSpinBoxminimumSizeHintProc* = proc(self: QAbstractSpinBox): gen_qsize_types.QSize {.raises: [], gcsafe.}
type QAbstractSpinBoxeventProc* = proc(self: QAbstractSpinBox, event: gen_qcoreevent_types.QEvent): bool {.raises: [], gcsafe.}
type QAbstractSpinBoxinputMethodQueryProc* = proc(self: QAbstractSpinBox, param1: cint): gen_qvariant_types.QVariant {.raises: [], gcsafe.}
type QAbstractSpinBoxvalidateProc* = proc(self: QAbstractSpinBox, input: string, pos: ptr cint): cint {.raises: [], gcsafe.}
type QAbstractSpinBoxfixupProc* = proc(self: QAbstractSpinBox, input: string): void {.raises: [], gcsafe.}
type QAbstractSpinBoxstepByProc* = proc(self: QAbstractSpinBox, steps: cint): void {.raises: [], gcsafe.}
type QAbstractSpinBoxclearProc* = proc(self: QAbstractSpinBox): void {.raises: [], gcsafe.}
type QAbstractSpinBoxresizeEventProc* = proc(self: QAbstractSpinBox, event: gen_qevent_types.QResizeEvent): void {.raises: [], gcsafe.}
type QAbstractSpinBoxkeyPressEventProc* = proc(self: QAbstractSpinBox, event: gen_qevent_types.QKeyEvent): void {.raises: [], gcsafe.}
type QAbstractSpinBoxkeyReleaseEventProc* = proc(self: QAbstractSpinBox, event: gen_qevent_types.QKeyEvent): void {.raises: [], gcsafe.}
type QAbstractSpinBoxwheelEventProc* = proc(self: QAbstractSpinBox, event: gen_qevent_types.QWheelEvent): void {.raises: [], gcsafe.}
type QAbstractSpinBoxfocusInEventProc* = proc(self: QAbstractSpinBox, event: gen_qevent_types.QFocusEvent): void {.raises: [], gcsafe.}
type QAbstractSpinBoxfocusOutEventProc* = proc(self: QAbstractSpinBox, event: gen_qevent_types.QFocusEvent): void {.raises: [], gcsafe.}
type QAbstractSpinBoxcontextMenuEventProc* = proc(self: QAbstractSpinBox, event: gen_qevent_types.QContextMenuEvent): void {.raises: [], gcsafe.}
type QAbstractSpinBoxchangeEventProc* = proc(self: QAbstractSpinBox, event: gen_qcoreevent_types.QEvent): void {.raises: [], gcsafe.}
type QAbstractSpinBoxcloseEventProc* = proc(self: QAbstractSpinBox, event: gen_qevent_types.QCloseEvent): void {.raises: [], gcsafe.}
type QAbstractSpinBoxhideEventProc* = proc(self: QAbstractSpinBox, event: gen_qevent_types.QHideEvent): void {.raises: [], gcsafe.}
type QAbstractSpinBoxmousePressEventProc* = proc(self: QAbstractSpinBox, event: gen_qevent_types.QMouseEvent): void {.raises: [], gcsafe.}
type QAbstractSpinBoxmouseReleaseEventProc* = proc(self: QAbstractSpinBox, event: gen_qevent_types.QMouseEvent): void {.raises: [], gcsafe.}
type QAbstractSpinBoxmouseMoveEventProc* = proc(self: QAbstractSpinBox, event: gen_qevent_types.QMouseEvent): void {.raises: [], gcsafe.}
type QAbstractSpinBoxtimerEventProc* = proc(self: QAbstractSpinBox, event: gen_qcoreevent_types.QTimerEvent): void {.raises: [], gcsafe.}
type QAbstractSpinBoxpaintEventProc* = proc(self: QAbstractSpinBox, event: gen_qevent_types.QPaintEvent): void {.raises: [], gcsafe.}
type QAbstractSpinBoxshowEventProc* = proc(self: QAbstractSpinBox, event: gen_qevent_types.QShowEvent): void {.raises: [], gcsafe.}
type QAbstractSpinBoxstepEnabledProc* = proc(self: QAbstractSpinBox): cint {.raises: [], gcsafe.}
type QAbstractSpinBoxdevTypeProc* = proc(self: QAbstractSpinBox): cint {.raises: [], gcsafe.}
type QAbstractSpinBoxsetVisibleProc* = proc(self: QAbstractSpinBox, visible: bool): void {.raises: [], gcsafe.}
type QAbstractSpinBoxheightForWidthProc* = proc(self: QAbstractSpinBox, param1: cint): cint {.raises: [], gcsafe.}
type QAbstractSpinBoxhasHeightForWidthProc* = proc(self: QAbstractSpinBox): bool {.raises: [], gcsafe.}
type QAbstractSpinBoxpaintEngineProc* = proc(self: QAbstractSpinBox): gen_qpaintengine_types.QPaintEngine {.raises: [], gcsafe.}
type QAbstractSpinBoxmouseDoubleClickEventProc* = proc(self: QAbstractSpinBox, event: gen_qevent_types.QMouseEvent): void {.raises: [], gcsafe.}
type QAbstractSpinBoxenterEventProc* = proc(self: QAbstractSpinBox, event: gen_qcoreevent_types.QEvent): void {.raises: [], gcsafe.}
type QAbstractSpinBoxleaveEventProc* = proc(self: QAbstractSpinBox, event: gen_qcoreevent_types.QEvent): void {.raises: [], gcsafe.}
type QAbstractSpinBoxmoveEventProc* = proc(self: QAbstractSpinBox, event: gen_qevent_types.QMoveEvent): void {.raises: [], gcsafe.}
type QAbstractSpinBoxtabletEventProc* = proc(self: QAbstractSpinBox, event: gen_qevent_types.QTabletEvent): void {.raises: [], gcsafe.}
type QAbstractSpinBoxactionEventProc* = proc(self: QAbstractSpinBox, event: gen_qevent_types.QActionEvent): void {.raises: [], gcsafe.}
type QAbstractSpinBoxdragEnterEventProc* = proc(self: QAbstractSpinBox, event: gen_qevent_types.QDragEnterEvent): void {.raises: [], gcsafe.}
type QAbstractSpinBoxdragMoveEventProc* = proc(self: QAbstractSpinBox, event: gen_qevent_types.QDragMoveEvent): void {.raises: [], gcsafe.}
type QAbstractSpinBoxdragLeaveEventProc* = proc(self: QAbstractSpinBox, event: gen_qevent_types.QDragLeaveEvent): void {.raises: [], gcsafe.}
type QAbstractSpinBoxdropEventProc* = proc(self: QAbstractSpinBox, event: gen_qevent_types.QDropEvent): void {.raises: [], gcsafe.}
type QAbstractSpinBoxnativeEventProc* = proc(self: QAbstractSpinBox, eventType: seq[byte], message: pointer, resultVal: ptr clong): bool {.raises: [], gcsafe.}
type QAbstractSpinBoxmetricProc* = proc(self: QAbstractSpinBox, param1: cint): cint {.raises: [], gcsafe.}
type QAbstractSpinBoxinitPainterProc* = proc(self: QAbstractSpinBox, painter: gen_qpainter_types.QPainter): void {.raises: [], gcsafe.}
type QAbstractSpinBoxredirectedProc* = proc(self: QAbstractSpinBox, offset: gen_qpoint_types.QPoint): gen_qpaintdevice_types.QPaintDevice {.raises: [], gcsafe.}
type QAbstractSpinBoxsharedPainterProc* = proc(self: QAbstractSpinBox): gen_qpainter_types.QPainter {.raises: [], gcsafe.}
type QAbstractSpinBoxinputMethodEventProc* = proc(self: QAbstractSpinBox, param1: gen_qevent_types.QInputMethodEvent): void {.raises: [], gcsafe.}
type QAbstractSpinBoxfocusNextPrevChildProc* = proc(self: QAbstractSpinBox, next: bool): bool {.raises: [], gcsafe.}
type QAbstractSpinBoxeventFilterProc* = proc(self: QAbstractSpinBox, watched: gen_qobject_types.QObject, event: gen_qcoreevent_types.QEvent): bool {.raises: [], gcsafe.}
type QAbstractSpinBoxchildEventProc* = proc(self: QAbstractSpinBox, event: gen_qcoreevent_types.QChildEvent): void {.raises: [], gcsafe.}
type QAbstractSpinBoxcustomEventProc* = proc(self: QAbstractSpinBox, event: gen_qcoreevent_types.QEvent): void {.raises: [], gcsafe.}
type QAbstractSpinBoxconnectNotifyProc* = proc(self: QAbstractSpinBox, signal: gen_qmetaobject_types.QMetaMethod): void {.raises: [], gcsafe.}
type QAbstractSpinBoxdisconnectNotifyProc* = proc(self: QAbstractSpinBox, signal: gen_qmetaobject_types.QMetaMethod): void {.raises: [], gcsafe.}
type QAbstractSpinBoxVTable* {.inheritable, pure.} = object
  vtbl: cQAbstractSpinBoxVTable
  metaObject*: QAbstractSpinBoxmetaObjectProc
  metacast*: QAbstractSpinBoxmetacastProc
  metacall*: QAbstractSpinBoxmetacallProc
  sizeHint*: QAbstractSpinBoxsizeHintProc
  minimumSizeHint*: QAbstractSpinBoxminimumSizeHintProc
  event*: QAbstractSpinBoxeventProc
  inputMethodQuery*: QAbstractSpinBoxinputMethodQueryProc
  validate*: QAbstractSpinBoxvalidateProc
  fixup*: QAbstractSpinBoxfixupProc
  stepBy*: QAbstractSpinBoxstepByProc
  clear*: QAbstractSpinBoxclearProc
  resizeEvent*: QAbstractSpinBoxresizeEventProc
  keyPressEvent*: QAbstractSpinBoxkeyPressEventProc
  keyReleaseEvent*: QAbstractSpinBoxkeyReleaseEventProc
  wheelEvent*: QAbstractSpinBoxwheelEventProc
  focusInEvent*: QAbstractSpinBoxfocusInEventProc
  focusOutEvent*: QAbstractSpinBoxfocusOutEventProc
  contextMenuEvent*: QAbstractSpinBoxcontextMenuEventProc
  changeEvent*: QAbstractSpinBoxchangeEventProc
  closeEvent*: QAbstractSpinBoxcloseEventProc
  hideEvent*: QAbstractSpinBoxhideEventProc
  mousePressEvent*: QAbstractSpinBoxmousePressEventProc
  mouseReleaseEvent*: QAbstractSpinBoxmouseReleaseEventProc
  mouseMoveEvent*: QAbstractSpinBoxmouseMoveEventProc
  timerEvent*: QAbstractSpinBoxtimerEventProc
  paintEvent*: QAbstractSpinBoxpaintEventProc
  showEvent*: QAbstractSpinBoxshowEventProc
  stepEnabled*: QAbstractSpinBoxstepEnabledProc
  devType*: QAbstractSpinBoxdevTypeProc
  setVisible*: QAbstractSpinBoxsetVisibleProc
  heightForWidth*: QAbstractSpinBoxheightForWidthProc
  hasHeightForWidth*: QAbstractSpinBoxhasHeightForWidthProc
  paintEngine*: QAbstractSpinBoxpaintEngineProc
  mouseDoubleClickEvent*: QAbstractSpinBoxmouseDoubleClickEventProc
  enterEvent*: QAbstractSpinBoxenterEventProc
  leaveEvent*: QAbstractSpinBoxleaveEventProc
  moveEvent*: QAbstractSpinBoxmoveEventProc
  tabletEvent*: QAbstractSpinBoxtabletEventProc
  actionEvent*: QAbstractSpinBoxactionEventProc
  dragEnterEvent*: QAbstractSpinBoxdragEnterEventProc
  dragMoveEvent*: QAbstractSpinBoxdragMoveEventProc
  dragLeaveEvent*: QAbstractSpinBoxdragLeaveEventProc
  dropEvent*: QAbstractSpinBoxdropEventProc
  nativeEvent*: QAbstractSpinBoxnativeEventProc
  metric*: QAbstractSpinBoxmetricProc
  initPainter*: QAbstractSpinBoxinitPainterProc
  redirected*: QAbstractSpinBoxredirectedProc
  sharedPainter*: QAbstractSpinBoxsharedPainterProc
  inputMethodEvent*: QAbstractSpinBoxinputMethodEventProc
  focusNextPrevChild*: QAbstractSpinBoxfocusNextPrevChildProc
  eventFilter*: QAbstractSpinBoxeventFilterProc
  childEvent*: QAbstractSpinBoxchildEventProc
  customEvent*: QAbstractSpinBoxcustomEventProc
  connectNotify*: QAbstractSpinBoxconnectNotifyProc
  disconnectNotify*: QAbstractSpinBoxdisconnectNotifyProc
proc QAbstractSpinBoxmetaObject*(self: gen_qabstractspinbox_types.QAbstractSpinBox, ): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQAbstractSpinBox_virtualbase_metaObject(self.h), owned: false)

proc miqt_exec_callback_cQAbstractSpinBox_metaObject(vtbl: pointer, self: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QAbstractSpinBoxVTable](vtbl)
  let self = QAbstractSpinBox(h: self)
  var virtualReturn = vtbl[].metaObject(self)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc QAbstractSpinBoxmetacast*(self: gen_qabstractspinbox_types.QAbstractSpinBox, param1: cstring): pointer =
  fcQAbstractSpinBox_virtualbase_metacast(self.h, param1)

proc miqt_exec_callback_cQAbstractSpinBox_metacast(vtbl: pointer, self: pointer, param1: cstring): pointer {.cdecl.} =
  let vtbl = cast[ptr QAbstractSpinBoxVTable](vtbl)
  let self = QAbstractSpinBox(h: self)
  let slotval1 = (param1)
  var virtualReturn = vtbl[].metacast(self, slotval1)
  virtualReturn

proc QAbstractSpinBoxmetacall*(self: gen_qabstractspinbox_types.QAbstractSpinBox, param1: cint, param2: cint, param3: pointer): cint =
  fcQAbstractSpinBox_virtualbase_metacall(self.h, cint(param1), param2, param3)

proc miqt_exec_callback_cQAbstractSpinBox_metacall(vtbl: pointer, self: pointer, param1: cint, param2: cint, param3: pointer): cint {.cdecl.} =
  let vtbl = cast[ptr QAbstractSpinBoxVTable](vtbl)
  let self = QAbstractSpinBox(h: self)
  let slotval1 = cint(param1)
  let slotval2 = param2
  let slotval3 = param3
  var virtualReturn = vtbl[].metacall(self, slotval1, slotval2, slotval3)
  virtualReturn

proc QAbstractSpinBoxsizeHint*(self: gen_qabstractspinbox_types.QAbstractSpinBox, ): gen_qsize_types.QSize =
  gen_qsize_types.QSize(h: fcQAbstractSpinBox_virtualbase_sizeHint(self.h), owned: true)

proc miqt_exec_callback_cQAbstractSpinBox_sizeHint(vtbl: pointer, self: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QAbstractSpinBoxVTable](vtbl)
  let self = QAbstractSpinBox(h: self)
  var virtualReturn = vtbl[].sizeHint(self)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc QAbstractSpinBoxminimumSizeHint*(self: gen_qabstractspinbox_types.QAbstractSpinBox, ): gen_qsize_types.QSize =
  gen_qsize_types.QSize(h: fcQAbstractSpinBox_virtualbase_minimumSizeHint(self.h), owned: true)

proc miqt_exec_callback_cQAbstractSpinBox_minimumSizeHint(vtbl: pointer, self: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QAbstractSpinBoxVTable](vtbl)
  let self = QAbstractSpinBox(h: self)
  var virtualReturn = vtbl[].minimumSizeHint(self)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc QAbstractSpinBoxevent*(self: gen_qabstractspinbox_types.QAbstractSpinBox, event: gen_qcoreevent_types.QEvent): bool =
  fcQAbstractSpinBox_virtualbase_event(self.h, event.h)

proc miqt_exec_callback_cQAbstractSpinBox_event(vtbl: pointer, self: pointer, event: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QAbstractSpinBoxVTable](vtbl)
  let self = QAbstractSpinBox(h: self)
  let slotval1 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  var virtualReturn = vtbl[].event(self, slotval1)
  virtualReturn

proc QAbstractSpinBoxinputMethodQuery*(self: gen_qabstractspinbox_types.QAbstractSpinBox, param1: cint): gen_qvariant_types.QVariant =
  gen_qvariant_types.QVariant(h: fcQAbstractSpinBox_virtualbase_inputMethodQuery(self.h, cint(param1)), owned: true)

proc miqt_exec_callback_cQAbstractSpinBox_inputMethodQuery(vtbl: pointer, self: pointer, param1: cint): pointer {.cdecl.} =
  let vtbl = cast[ptr QAbstractSpinBoxVTable](vtbl)
  let self = QAbstractSpinBox(h: self)
  let slotval1 = cint(param1)
  var virtualReturn = vtbl[].inputMethodQuery(self, slotval1)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc QAbstractSpinBoxvalidate*(self: gen_qabstractspinbox_types.QAbstractSpinBox, input: string, pos: ptr cint): cint =
  cint(fcQAbstractSpinBox_virtualbase_validate(self.h, struct_miqt_string(data: input, len: csize_t(len(input))), pos))

proc miqt_exec_callback_cQAbstractSpinBox_validate(vtbl: pointer, self: pointer, input: struct_miqt_string, pos: ptr cint): cint {.cdecl.} =
  let vtbl = cast[ptr QAbstractSpinBoxVTable](vtbl)
  let self = QAbstractSpinBox(h: self)
  let vinput_ms = input
  let vinputx_ret = string.fromBytes(toOpenArrayByte(vinput_ms.data, 0, int(vinput_ms.len)-1))
  c_free(vinput_ms.data)
  let slotval1 = vinputx_ret
  let slotval2 = pos
  var virtualReturn = vtbl[].validate(self, slotval1, slotval2)
  cint(virtualReturn)

proc QAbstractSpinBoxfixup*(self: gen_qabstractspinbox_types.QAbstractSpinBox, input: string): void =
  fcQAbstractSpinBox_virtualbase_fixup(self.h, struct_miqt_string(data: input, len: csize_t(len(input))))

proc miqt_exec_callback_cQAbstractSpinBox_fixup(vtbl: pointer, self: pointer, input: struct_miqt_string): void {.cdecl.} =
  let vtbl = cast[ptr QAbstractSpinBoxVTable](vtbl)
  let self = QAbstractSpinBox(h: self)
  let vinput_ms = input
  let vinputx_ret = string.fromBytes(toOpenArrayByte(vinput_ms.data, 0, int(vinput_ms.len)-1))
  c_free(vinput_ms.data)
  let slotval1 = vinputx_ret
  vtbl[].fixup(self, slotval1)

proc QAbstractSpinBoxstepBy*(self: gen_qabstractspinbox_types.QAbstractSpinBox, steps: cint): void =
  fcQAbstractSpinBox_virtualbase_stepBy(self.h, steps)

proc miqt_exec_callback_cQAbstractSpinBox_stepBy(vtbl: pointer, self: pointer, steps: cint): void {.cdecl.} =
  let vtbl = cast[ptr QAbstractSpinBoxVTable](vtbl)
  let self = QAbstractSpinBox(h: self)
  let slotval1 = steps
  vtbl[].stepBy(self, slotval1)

proc QAbstractSpinBoxclear*(self: gen_qabstractspinbox_types.QAbstractSpinBox, ): void =
  fcQAbstractSpinBox_virtualbase_clear(self.h)

proc miqt_exec_callback_cQAbstractSpinBox_clear(vtbl: pointer, self: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QAbstractSpinBoxVTable](vtbl)
  let self = QAbstractSpinBox(h: self)
  vtbl[].clear(self)

proc QAbstractSpinBoxresizeEvent*(self: gen_qabstractspinbox_types.QAbstractSpinBox, event: gen_qevent_types.QResizeEvent): void =
  fcQAbstractSpinBox_virtualbase_resizeEvent(self.h, event.h)

proc miqt_exec_callback_cQAbstractSpinBox_resizeEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QAbstractSpinBoxVTable](vtbl)
  let self = QAbstractSpinBox(h: self)
  let slotval1 = gen_qevent_types.QResizeEvent(h: event, owned: false)
  vtbl[].resizeEvent(self, slotval1)

proc QAbstractSpinBoxkeyPressEvent*(self: gen_qabstractspinbox_types.QAbstractSpinBox, event: gen_qevent_types.QKeyEvent): void =
  fcQAbstractSpinBox_virtualbase_keyPressEvent(self.h, event.h)

proc miqt_exec_callback_cQAbstractSpinBox_keyPressEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QAbstractSpinBoxVTable](vtbl)
  let self = QAbstractSpinBox(h: self)
  let slotval1 = gen_qevent_types.QKeyEvent(h: event, owned: false)
  vtbl[].keyPressEvent(self, slotval1)

proc QAbstractSpinBoxkeyReleaseEvent*(self: gen_qabstractspinbox_types.QAbstractSpinBox, event: gen_qevent_types.QKeyEvent): void =
  fcQAbstractSpinBox_virtualbase_keyReleaseEvent(self.h, event.h)

proc miqt_exec_callback_cQAbstractSpinBox_keyReleaseEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QAbstractSpinBoxVTable](vtbl)
  let self = QAbstractSpinBox(h: self)
  let slotval1 = gen_qevent_types.QKeyEvent(h: event, owned: false)
  vtbl[].keyReleaseEvent(self, slotval1)

proc QAbstractSpinBoxwheelEvent*(self: gen_qabstractspinbox_types.QAbstractSpinBox, event: gen_qevent_types.QWheelEvent): void =
  fcQAbstractSpinBox_virtualbase_wheelEvent(self.h, event.h)

proc miqt_exec_callback_cQAbstractSpinBox_wheelEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QAbstractSpinBoxVTable](vtbl)
  let self = QAbstractSpinBox(h: self)
  let slotval1 = gen_qevent_types.QWheelEvent(h: event, owned: false)
  vtbl[].wheelEvent(self, slotval1)

proc QAbstractSpinBoxfocusInEvent*(self: gen_qabstractspinbox_types.QAbstractSpinBox, event: gen_qevent_types.QFocusEvent): void =
  fcQAbstractSpinBox_virtualbase_focusInEvent(self.h, event.h)

proc miqt_exec_callback_cQAbstractSpinBox_focusInEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QAbstractSpinBoxVTable](vtbl)
  let self = QAbstractSpinBox(h: self)
  let slotval1 = gen_qevent_types.QFocusEvent(h: event, owned: false)
  vtbl[].focusInEvent(self, slotval1)

proc QAbstractSpinBoxfocusOutEvent*(self: gen_qabstractspinbox_types.QAbstractSpinBox, event: gen_qevent_types.QFocusEvent): void =
  fcQAbstractSpinBox_virtualbase_focusOutEvent(self.h, event.h)

proc miqt_exec_callback_cQAbstractSpinBox_focusOutEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QAbstractSpinBoxVTable](vtbl)
  let self = QAbstractSpinBox(h: self)
  let slotval1 = gen_qevent_types.QFocusEvent(h: event, owned: false)
  vtbl[].focusOutEvent(self, slotval1)

proc QAbstractSpinBoxcontextMenuEvent*(self: gen_qabstractspinbox_types.QAbstractSpinBox, event: gen_qevent_types.QContextMenuEvent): void =
  fcQAbstractSpinBox_virtualbase_contextMenuEvent(self.h, event.h)

proc miqt_exec_callback_cQAbstractSpinBox_contextMenuEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QAbstractSpinBoxVTable](vtbl)
  let self = QAbstractSpinBox(h: self)
  let slotval1 = gen_qevent_types.QContextMenuEvent(h: event, owned: false)
  vtbl[].contextMenuEvent(self, slotval1)

proc QAbstractSpinBoxchangeEvent*(self: gen_qabstractspinbox_types.QAbstractSpinBox, event: gen_qcoreevent_types.QEvent): void =
  fcQAbstractSpinBox_virtualbase_changeEvent(self.h, event.h)

proc miqt_exec_callback_cQAbstractSpinBox_changeEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QAbstractSpinBoxVTable](vtbl)
  let self = QAbstractSpinBox(h: self)
  let slotval1 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  vtbl[].changeEvent(self, slotval1)

proc QAbstractSpinBoxcloseEvent*(self: gen_qabstractspinbox_types.QAbstractSpinBox, event: gen_qevent_types.QCloseEvent): void =
  fcQAbstractSpinBox_virtualbase_closeEvent(self.h, event.h)

proc miqt_exec_callback_cQAbstractSpinBox_closeEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QAbstractSpinBoxVTable](vtbl)
  let self = QAbstractSpinBox(h: self)
  let slotval1 = gen_qevent_types.QCloseEvent(h: event, owned: false)
  vtbl[].closeEvent(self, slotval1)

proc QAbstractSpinBoxhideEvent*(self: gen_qabstractspinbox_types.QAbstractSpinBox, event: gen_qevent_types.QHideEvent): void =
  fcQAbstractSpinBox_virtualbase_hideEvent(self.h, event.h)

proc miqt_exec_callback_cQAbstractSpinBox_hideEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QAbstractSpinBoxVTable](vtbl)
  let self = QAbstractSpinBox(h: self)
  let slotval1 = gen_qevent_types.QHideEvent(h: event, owned: false)
  vtbl[].hideEvent(self, slotval1)

proc QAbstractSpinBoxmousePressEvent*(self: gen_qabstractspinbox_types.QAbstractSpinBox, event: gen_qevent_types.QMouseEvent): void =
  fcQAbstractSpinBox_virtualbase_mousePressEvent(self.h, event.h)

proc miqt_exec_callback_cQAbstractSpinBox_mousePressEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QAbstractSpinBoxVTable](vtbl)
  let self = QAbstractSpinBox(h: self)
  let slotval1 = gen_qevent_types.QMouseEvent(h: event, owned: false)
  vtbl[].mousePressEvent(self, slotval1)

proc QAbstractSpinBoxmouseReleaseEvent*(self: gen_qabstractspinbox_types.QAbstractSpinBox, event: gen_qevent_types.QMouseEvent): void =
  fcQAbstractSpinBox_virtualbase_mouseReleaseEvent(self.h, event.h)

proc miqt_exec_callback_cQAbstractSpinBox_mouseReleaseEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QAbstractSpinBoxVTable](vtbl)
  let self = QAbstractSpinBox(h: self)
  let slotval1 = gen_qevent_types.QMouseEvent(h: event, owned: false)
  vtbl[].mouseReleaseEvent(self, slotval1)

proc QAbstractSpinBoxmouseMoveEvent*(self: gen_qabstractspinbox_types.QAbstractSpinBox, event: gen_qevent_types.QMouseEvent): void =
  fcQAbstractSpinBox_virtualbase_mouseMoveEvent(self.h, event.h)

proc miqt_exec_callback_cQAbstractSpinBox_mouseMoveEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QAbstractSpinBoxVTable](vtbl)
  let self = QAbstractSpinBox(h: self)
  let slotval1 = gen_qevent_types.QMouseEvent(h: event, owned: false)
  vtbl[].mouseMoveEvent(self, slotval1)

proc QAbstractSpinBoxtimerEvent*(self: gen_qabstractspinbox_types.QAbstractSpinBox, event: gen_qcoreevent_types.QTimerEvent): void =
  fcQAbstractSpinBox_virtualbase_timerEvent(self.h, event.h)

proc miqt_exec_callback_cQAbstractSpinBox_timerEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QAbstractSpinBoxVTable](vtbl)
  let self = QAbstractSpinBox(h: self)
  let slotval1 = gen_qcoreevent_types.QTimerEvent(h: event, owned: false)
  vtbl[].timerEvent(self, slotval1)

proc QAbstractSpinBoxpaintEvent*(self: gen_qabstractspinbox_types.QAbstractSpinBox, event: gen_qevent_types.QPaintEvent): void =
  fcQAbstractSpinBox_virtualbase_paintEvent(self.h, event.h)

proc miqt_exec_callback_cQAbstractSpinBox_paintEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QAbstractSpinBoxVTable](vtbl)
  let self = QAbstractSpinBox(h: self)
  let slotval1 = gen_qevent_types.QPaintEvent(h: event, owned: false)
  vtbl[].paintEvent(self, slotval1)

proc QAbstractSpinBoxshowEvent*(self: gen_qabstractspinbox_types.QAbstractSpinBox, event: gen_qevent_types.QShowEvent): void =
  fcQAbstractSpinBox_virtualbase_showEvent(self.h, event.h)

proc miqt_exec_callback_cQAbstractSpinBox_showEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QAbstractSpinBoxVTable](vtbl)
  let self = QAbstractSpinBox(h: self)
  let slotval1 = gen_qevent_types.QShowEvent(h: event, owned: false)
  vtbl[].showEvent(self, slotval1)

proc QAbstractSpinBoxstepEnabled*(self: gen_qabstractspinbox_types.QAbstractSpinBox, ): cint =
  cint(fcQAbstractSpinBox_virtualbase_stepEnabled(self.h))

proc miqt_exec_callback_cQAbstractSpinBox_stepEnabled(vtbl: pointer, self: pointer): cint {.cdecl.} =
  let vtbl = cast[ptr QAbstractSpinBoxVTable](vtbl)
  let self = QAbstractSpinBox(h: self)
  var virtualReturn = vtbl[].stepEnabled(self)
  cint(virtualReturn)

proc QAbstractSpinBoxdevType*(self: gen_qabstractspinbox_types.QAbstractSpinBox, ): cint =
  fcQAbstractSpinBox_virtualbase_devType(self.h)

proc miqt_exec_callback_cQAbstractSpinBox_devType(vtbl: pointer, self: pointer): cint {.cdecl.} =
  let vtbl = cast[ptr QAbstractSpinBoxVTable](vtbl)
  let self = QAbstractSpinBox(h: self)
  var virtualReturn = vtbl[].devType(self)
  virtualReturn

proc QAbstractSpinBoxsetVisible*(self: gen_qabstractspinbox_types.QAbstractSpinBox, visible: bool): void =
  fcQAbstractSpinBox_virtualbase_setVisible(self.h, visible)

proc miqt_exec_callback_cQAbstractSpinBox_setVisible(vtbl: pointer, self: pointer, visible: bool): void {.cdecl.} =
  let vtbl = cast[ptr QAbstractSpinBoxVTable](vtbl)
  let self = QAbstractSpinBox(h: self)
  let slotval1 = visible
  vtbl[].setVisible(self, slotval1)

proc QAbstractSpinBoxheightForWidth*(self: gen_qabstractspinbox_types.QAbstractSpinBox, param1: cint): cint =
  fcQAbstractSpinBox_virtualbase_heightForWidth(self.h, param1)

proc miqt_exec_callback_cQAbstractSpinBox_heightForWidth(vtbl: pointer, self: pointer, param1: cint): cint {.cdecl.} =
  let vtbl = cast[ptr QAbstractSpinBoxVTable](vtbl)
  let self = QAbstractSpinBox(h: self)
  let slotval1 = param1
  var virtualReturn = vtbl[].heightForWidth(self, slotval1)
  virtualReturn

proc QAbstractSpinBoxhasHeightForWidth*(self: gen_qabstractspinbox_types.QAbstractSpinBox, ): bool =
  fcQAbstractSpinBox_virtualbase_hasHeightForWidth(self.h)

proc miqt_exec_callback_cQAbstractSpinBox_hasHeightForWidth(vtbl: pointer, self: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QAbstractSpinBoxVTable](vtbl)
  let self = QAbstractSpinBox(h: self)
  var virtualReturn = vtbl[].hasHeightForWidth(self)
  virtualReturn

proc QAbstractSpinBoxpaintEngine*(self: gen_qabstractspinbox_types.QAbstractSpinBox, ): gen_qpaintengine_types.QPaintEngine =
  gen_qpaintengine_types.QPaintEngine(h: fcQAbstractSpinBox_virtualbase_paintEngine(self.h), owned: false)

proc miqt_exec_callback_cQAbstractSpinBox_paintEngine(vtbl: pointer, self: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QAbstractSpinBoxVTable](vtbl)
  let self = QAbstractSpinBox(h: self)
  var virtualReturn = vtbl[].paintEngine(self)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc QAbstractSpinBoxmouseDoubleClickEvent*(self: gen_qabstractspinbox_types.QAbstractSpinBox, event: gen_qevent_types.QMouseEvent): void =
  fcQAbstractSpinBox_virtualbase_mouseDoubleClickEvent(self.h, event.h)

proc miqt_exec_callback_cQAbstractSpinBox_mouseDoubleClickEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QAbstractSpinBoxVTable](vtbl)
  let self = QAbstractSpinBox(h: self)
  let slotval1 = gen_qevent_types.QMouseEvent(h: event, owned: false)
  vtbl[].mouseDoubleClickEvent(self, slotval1)

proc QAbstractSpinBoxenterEvent*(self: gen_qabstractspinbox_types.QAbstractSpinBox, event: gen_qcoreevent_types.QEvent): void =
  fcQAbstractSpinBox_virtualbase_enterEvent(self.h, event.h)

proc miqt_exec_callback_cQAbstractSpinBox_enterEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QAbstractSpinBoxVTable](vtbl)
  let self = QAbstractSpinBox(h: self)
  let slotval1 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  vtbl[].enterEvent(self, slotval1)

proc QAbstractSpinBoxleaveEvent*(self: gen_qabstractspinbox_types.QAbstractSpinBox, event: gen_qcoreevent_types.QEvent): void =
  fcQAbstractSpinBox_virtualbase_leaveEvent(self.h, event.h)

proc miqt_exec_callback_cQAbstractSpinBox_leaveEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QAbstractSpinBoxVTable](vtbl)
  let self = QAbstractSpinBox(h: self)
  let slotval1 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  vtbl[].leaveEvent(self, slotval1)

proc QAbstractSpinBoxmoveEvent*(self: gen_qabstractspinbox_types.QAbstractSpinBox, event: gen_qevent_types.QMoveEvent): void =
  fcQAbstractSpinBox_virtualbase_moveEvent(self.h, event.h)

proc miqt_exec_callback_cQAbstractSpinBox_moveEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QAbstractSpinBoxVTable](vtbl)
  let self = QAbstractSpinBox(h: self)
  let slotval1 = gen_qevent_types.QMoveEvent(h: event, owned: false)
  vtbl[].moveEvent(self, slotval1)

proc QAbstractSpinBoxtabletEvent*(self: gen_qabstractspinbox_types.QAbstractSpinBox, event: gen_qevent_types.QTabletEvent): void =
  fcQAbstractSpinBox_virtualbase_tabletEvent(self.h, event.h)

proc miqt_exec_callback_cQAbstractSpinBox_tabletEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QAbstractSpinBoxVTable](vtbl)
  let self = QAbstractSpinBox(h: self)
  let slotval1 = gen_qevent_types.QTabletEvent(h: event, owned: false)
  vtbl[].tabletEvent(self, slotval1)

proc QAbstractSpinBoxactionEvent*(self: gen_qabstractspinbox_types.QAbstractSpinBox, event: gen_qevent_types.QActionEvent): void =
  fcQAbstractSpinBox_virtualbase_actionEvent(self.h, event.h)

proc miqt_exec_callback_cQAbstractSpinBox_actionEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QAbstractSpinBoxVTable](vtbl)
  let self = QAbstractSpinBox(h: self)
  let slotval1 = gen_qevent_types.QActionEvent(h: event, owned: false)
  vtbl[].actionEvent(self, slotval1)

proc QAbstractSpinBoxdragEnterEvent*(self: gen_qabstractspinbox_types.QAbstractSpinBox, event: gen_qevent_types.QDragEnterEvent): void =
  fcQAbstractSpinBox_virtualbase_dragEnterEvent(self.h, event.h)

proc miqt_exec_callback_cQAbstractSpinBox_dragEnterEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QAbstractSpinBoxVTable](vtbl)
  let self = QAbstractSpinBox(h: self)
  let slotval1 = gen_qevent_types.QDragEnterEvent(h: event, owned: false)
  vtbl[].dragEnterEvent(self, slotval1)

proc QAbstractSpinBoxdragMoveEvent*(self: gen_qabstractspinbox_types.QAbstractSpinBox, event: gen_qevent_types.QDragMoveEvent): void =
  fcQAbstractSpinBox_virtualbase_dragMoveEvent(self.h, event.h)

proc miqt_exec_callback_cQAbstractSpinBox_dragMoveEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QAbstractSpinBoxVTable](vtbl)
  let self = QAbstractSpinBox(h: self)
  let slotval1 = gen_qevent_types.QDragMoveEvent(h: event, owned: false)
  vtbl[].dragMoveEvent(self, slotval1)

proc QAbstractSpinBoxdragLeaveEvent*(self: gen_qabstractspinbox_types.QAbstractSpinBox, event: gen_qevent_types.QDragLeaveEvent): void =
  fcQAbstractSpinBox_virtualbase_dragLeaveEvent(self.h, event.h)

proc miqt_exec_callback_cQAbstractSpinBox_dragLeaveEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QAbstractSpinBoxVTable](vtbl)
  let self = QAbstractSpinBox(h: self)
  let slotval1 = gen_qevent_types.QDragLeaveEvent(h: event, owned: false)
  vtbl[].dragLeaveEvent(self, slotval1)

proc QAbstractSpinBoxdropEvent*(self: gen_qabstractspinbox_types.QAbstractSpinBox, event: gen_qevent_types.QDropEvent): void =
  fcQAbstractSpinBox_virtualbase_dropEvent(self.h, event.h)

proc miqt_exec_callback_cQAbstractSpinBox_dropEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QAbstractSpinBoxVTable](vtbl)
  let self = QAbstractSpinBox(h: self)
  let slotval1 = gen_qevent_types.QDropEvent(h: event, owned: false)
  vtbl[].dropEvent(self, slotval1)

proc QAbstractSpinBoxnativeEvent*(self: gen_qabstractspinbox_types.QAbstractSpinBox, eventType: seq[byte], message: pointer, resultVal: ptr clong): bool =
  fcQAbstractSpinBox_virtualbase_nativeEvent(self.h, struct_miqt_string(data: cast[cstring](if len(eventType) == 0: nil else: unsafeAddr eventType[0]), len: csize_t(len(eventType))), message, resultVal)

proc miqt_exec_callback_cQAbstractSpinBox_nativeEvent(vtbl: pointer, self: pointer, eventType: struct_miqt_string, message: pointer, resultVal: ptr clong): bool {.cdecl.} =
  let vtbl = cast[ptr QAbstractSpinBoxVTable](vtbl)
  let self = QAbstractSpinBox(h: self)
  var veventType_bytearray = eventType
  var veventTypex_ret = @(toOpenArrayByte(veventType_bytearray.data, 0, int(veventType_bytearray.len)-1))
  c_free(veventType_bytearray.data)
  let slotval1 = veventTypex_ret
  let slotval2 = message
  let slotval3 = resultVal
  var virtualReturn = vtbl[].nativeEvent(self, slotval1, slotval2, slotval3)
  virtualReturn

proc QAbstractSpinBoxmetric*(self: gen_qabstractspinbox_types.QAbstractSpinBox, param1: cint): cint =
  fcQAbstractSpinBox_virtualbase_metric(self.h, cint(param1))

proc miqt_exec_callback_cQAbstractSpinBox_metric(vtbl: pointer, self: pointer, param1: cint): cint {.cdecl.} =
  let vtbl = cast[ptr QAbstractSpinBoxVTable](vtbl)
  let self = QAbstractSpinBox(h: self)
  let slotval1 = cint(param1)
  var virtualReturn = vtbl[].metric(self, slotval1)
  virtualReturn

proc QAbstractSpinBoxinitPainter*(self: gen_qabstractspinbox_types.QAbstractSpinBox, painter: gen_qpainter_types.QPainter): void =
  fcQAbstractSpinBox_virtualbase_initPainter(self.h, painter.h)

proc miqt_exec_callback_cQAbstractSpinBox_initPainter(vtbl: pointer, self: pointer, painter: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QAbstractSpinBoxVTable](vtbl)
  let self = QAbstractSpinBox(h: self)
  let slotval1 = gen_qpainter_types.QPainter(h: painter, owned: false)
  vtbl[].initPainter(self, slotval1)

proc QAbstractSpinBoxredirected*(self: gen_qabstractspinbox_types.QAbstractSpinBox, offset: gen_qpoint_types.QPoint): gen_qpaintdevice_types.QPaintDevice =
  gen_qpaintdevice_types.QPaintDevice(h: fcQAbstractSpinBox_virtualbase_redirected(self.h, offset.h), owned: false)

proc miqt_exec_callback_cQAbstractSpinBox_redirected(vtbl: pointer, self: pointer, offset: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QAbstractSpinBoxVTable](vtbl)
  let self = QAbstractSpinBox(h: self)
  let slotval1 = gen_qpoint_types.QPoint(h: offset, owned: false)
  var virtualReturn = vtbl[].redirected(self, slotval1)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc QAbstractSpinBoxsharedPainter*(self: gen_qabstractspinbox_types.QAbstractSpinBox, ): gen_qpainter_types.QPainter =
  gen_qpainter_types.QPainter(h: fcQAbstractSpinBox_virtualbase_sharedPainter(self.h), owned: false)

proc miqt_exec_callback_cQAbstractSpinBox_sharedPainter(vtbl: pointer, self: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QAbstractSpinBoxVTable](vtbl)
  let self = QAbstractSpinBox(h: self)
  var virtualReturn = vtbl[].sharedPainter(self)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc QAbstractSpinBoxinputMethodEvent*(self: gen_qabstractspinbox_types.QAbstractSpinBox, param1: gen_qevent_types.QInputMethodEvent): void =
  fcQAbstractSpinBox_virtualbase_inputMethodEvent(self.h, param1.h)

proc miqt_exec_callback_cQAbstractSpinBox_inputMethodEvent(vtbl: pointer, self: pointer, param1: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QAbstractSpinBoxVTable](vtbl)
  let self = QAbstractSpinBox(h: self)
  let slotval1 = gen_qevent_types.QInputMethodEvent(h: param1, owned: false)
  vtbl[].inputMethodEvent(self, slotval1)

proc QAbstractSpinBoxfocusNextPrevChild*(self: gen_qabstractspinbox_types.QAbstractSpinBox, next: bool): bool =
  fcQAbstractSpinBox_virtualbase_focusNextPrevChild(self.h, next)

proc miqt_exec_callback_cQAbstractSpinBox_focusNextPrevChild(vtbl: pointer, self: pointer, next: bool): bool {.cdecl.} =
  let vtbl = cast[ptr QAbstractSpinBoxVTable](vtbl)
  let self = QAbstractSpinBox(h: self)
  let slotval1 = next
  var virtualReturn = vtbl[].focusNextPrevChild(self, slotval1)
  virtualReturn

proc QAbstractSpinBoxeventFilter*(self: gen_qabstractspinbox_types.QAbstractSpinBox, watched: gen_qobject_types.QObject, event: gen_qcoreevent_types.QEvent): bool =
  fcQAbstractSpinBox_virtualbase_eventFilter(self.h, watched.h, event.h)

proc miqt_exec_callback_cQAbstractSpinBox_eventFilter(vtbl: pointer, self: pointer, watched: pointer, event: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QAbstractSpinBoxVTable](vtbl)
  let self = QAbstractSpinBox(h: self)
  let slotval1 = gen_qobject_types.QObject(h: watched, owned: false)
  let slotval2 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  var virtualReturn = vtbl[].eventFilter(self, slotval1, slotval2)
  virtualReturn

proc QAbstractSpinBoxchildEvent*(self: gen_qabstractspinbox_types.QAbstractSpinBox, event: gen_qcoreevent_types.QChildEvent): void =
  fcQAbstractSpinBox_virtualbase_childEvent(self.h, event.h)

proc miqt_exec_callback_cQAbstractSpinBox_childEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QAbstractSpinBoxVTable](vtbl)
  let self = QAbstractSpinBox(h: self)
  let slotval1 = gen_qcoreevent_types.QChildEvent(h: event, owned: false)
  vtbl[].childEvent(self, slotval1)

proc QAbstractSpinBoxcustomEvent*(self: gen_qabstractspinbox_types.QAbstractSpinBox, event: gen_qcoreevent_types.QEvent): void =
  fcQAbstractSpinBox_virtualbase_customEvent(self.h, event.h)

proc miqt_exec_callback_cQAbstractSpinBox_customEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QAbstractSpinBoxVTable](vtbl)
  let self = QAbstractSpinBox(h: self)
  let slotval1 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  vtbl[].customEvent(self, slotval1)

proc QAbstractSpinBoxconnectNotify*(self: gen_qabstractspinbox_types.QAbstractSpinBox, signal: gen_qmetaobject_types.QMetaMethod): void =
  fcQAbstractSpinBox_virtualbase_connectNotify(self.h, signal.h)

proc miqt_exec_callback_cQAbstractSpinBox_connectNotify(vtbl: pointer, self: pointer, signal: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QAbstractSpinBoxVTable](vtbl)
  let self = QAbstractSpinBox(h: self)
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal, owned: false)
  vtbl[].connectNotify(self, slotval1)

proc QAbstractSpinBoxdisconnectNotify*(self: gen_qabstractspinbox_types.QAbstractSpinBox, signal: gen_qmetaobject_types.QMetaMethod): void =
  fcQAbstractSpinBox_virtualbase_disconnectNotify(self.h, signal.h)

proc miqt_exec_callback_cQAbstractSpinBox_disconnectNotify(vtbl: pointer, self: pointer, signal: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QAbstractSpinBoxVTable](vtbl)
  let self = QAbstractSpinBox(h: self)
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal, owned: false)
  vtbl[].disconnectNotify(self, slotval1)

type VirtualQAbstractSpinBox* {.inheritable.} = ref object of QAbstractSpinBox
  vtbl*: cQAbstractSpinBoxVTable
method metaObject*(self: VirtualQAbstractSpinBox, ): gen_qobjectdefs_types.QMetaObject {.base.} =
  QAbstractSpinBoxmetaObject(self[])
proc miqt_exec_method_cQAbstractSpinBox_metaObject(vtbl: pointer, inst: pointer): pointer {.cdecl.} =
  let vtbl = cast[VirtualQAbstractSpinBox](cast[uint](vtbl) - uint(offsetOf(VirtualQAbstractSpinBox, vtbl)))
  var virtualReturn = vtbl.metaObject()
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

method metacast*(self: VirtualQAbstractSpinBox, param1: cstring): pointer {.base.} =
  QAbstractSpinBoxmetacast(self[], param1)
proc miqt_exec_method_cQAbstractSpinBox_metacast(vtbl: pointer, inst: pointer, param1: cstring): pointer {.cdecl.} =
  let vtbl = cast[VirtualQAbstractSpinBox](cast[uint](vtbl) - uint(offsetOf(VirtualQAbstractSpinBox, vtbl)))
  let slotval1 = (param1)
  var virtualReturn = vtbl.metacast(slotval1)
  virtualReturn

method metacall*(self: VirtualQAbstractSpinBox, param1: cint, param2: cint, param3: pointer): cint {.base.} =
  QAbstractSpinBoxmetacall(self[], param1, param2, param3)
proc miqt_exec_method_cQAbstractSpinBox_metacall(vtbl: pointer, inst: pointer, param1: cint, param2: cint, param3: pointer): cint {.cdecl.} =
  let vtbl = cast[VirtualQAbstractSpinBox](cast[uint](vtbl) - uint(offsetOf(VirtualQAbstractSpinBox, vtbl)))
  let slotval1 = cint(param1)
  let slotval2 = param2
  let slotval3 = param3
  var virtualReturn = vtbl.metacall(slotval1, slotval2, slotval3)
  virtualReturn

method sizeHint*(self: VirtualQAbstractSpinBox, ): gen_qsize_types.QSize {.base.} =
  QAbstractSpinBoxsizeHint(self[])
proc miqt_exec_method_cQAbstractSpinBox_sizeHint(vtbl: pointer, inst: pointer): pointer {.cdecl.} =
  let vtbl = cast[VirtualQAbstractSpinBox](cast[uint](vtbl) - uint(offsetOf(VirtualQAbstractSpinBox, vtbl)))
  var virtualReturn = vtbl.sizeHint()
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

method minimumSizeHint*(self: VirtualQAbstractSpinBox, ): gen_qsize_types.QSize {.base.} =
  QAbstractSpinBoxminimumSizeHint(self[])
proc miqt_exec_method_cQAbstractSpinBox_minimumSizeHint(vtbl: pointer, inst: pointer): pointer {.cdecl.} =
  let vtbl = cast[VirtualQAbstractSpinBox](cast[uint](vtbl) - uint(offsetOf(VirtualQAbstractSpinBox, vtbl)))
  var virtualReturn = vtbl.minimumSizeHint()
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

method event*(self: VirtualQAbstractSpinBox, event: gen_qcoreevent_types.QEvent): bool {.base.} =
  QAbstractSpinBoxevent(self[], event)
proc miqt_exec_method_cQAbstractSpinBox_event(vtbl: pointer, inst: pointer, event: pointer): bool {.cdecl.} =
  let vtbl = cast[VirtualQAbstractSpinBox](cast[uint](vtbl) - uint(offsetOf(VirtualQAbstractSpinBox, vtbl)))
  let slotval1 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  var virtualReturn = vtbl.event(slotval1)
  virtualReturn

method inputMethodQuery*(self: VirtualQAbstractSpinBox, param1: cint): gen_qvariant_types.QVariant {.base.} =
  QAbstractSpinBoxinputMethodQuery(self[], param1)
proc miqt_exec_method_cQAbstractSpinBox_inputMethodQuery(vtbl: pointer, inst: pointer, param1: cint): pointer {.cdecl.} =
  let vtbl = cast[VirtualQAbstractSpinBox](cast[uint](vtbl) - uint(offsetOf(VirtualQAbstractSpinBox, vtbl)))
  let slotval1 = cint(param1)
  var virtualReturn = vtbl.inputMethodQuery(slotval1)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

method validate*(self: VirtualQAbstractSpinBox, input: string, pos: ptr cint): cint {.base.} =
  QAbstractSpinBoxvalidate(self[], input, pos)
proc miqt_exec_method_cQAbstractSpinBox_validate(vtbl: pointer, inst: pointer, input: struct_miqt_string, pos: ptr cint): cint {.cdecl.} =
  let vtbl = cast[VirtualQAbstractSpinBox](cast[uint](vtbl) - uint(offsetOf(VirtualQAbstractSpinBox, vtbl)))
  let vinput_ms = input
  let vinputx_ret = string.fromBytes(toOpenArrayByte(vinput_ms.data, 0, int(vinput_ms.len)-1))
  c_free(vinput_ms.data)
  let slotval1 = vinputx_ret
  let slotval2 = pos
  var virtualReturn = vtbl.validate(slotval1, slotval2)
  cint(virtualReturn)

method fixup*(self: VirtualQAbstractSpinBox, input: string): void {.base.} =
  QAbstractSpinBoxfixup(self[], input)
proc miqt_exec_method_cQAbstractSpinBox_fixup(vtbl: pointer, inst: pointer, input: struct_miqt_string): void {.cdecl.} =
  let vtbl = cast[VirtualQAbstractSpinBox](cast[uint](vtbl) - uint(offsetOf(VirtualQAbstractSpinBox, vtbl)))
  let vinput_ms = input
  let vinputx_ret = string.fromBytes(toOpenArrayByte(vinput_ms.data, 0, int(vinput_ms.len)-1))
  c_free(vinput_ms.data)
  let slotval1 = vinputx_ret
  vtbl.fixup(slotval1)

method stepBy*(self: VirtualQAbstractSpinBox, steps: cint): void {.base.} =
  QAbstractSpinBoxstepBy(self[], steps)
proc miqt_exec_method_cQAbstractSpinBox_stepBy(vtbl: pointer, inst: pointer, steps: cint): void {.cdecl.} =
  let vtbl = cast[VirtualQAbstractSpinBox](cast[uint](vtbl) - uint(offsetOf(VirtualQAbstractSpinBox, vtbl)))
  let slotval1 = steps
  vtbl.stepBy(slotval1)

method clear*(self: VirtualQAbstractSpinBox, ): void {.base.} =
  QAbstractSpinBoxclear(self[])
proc miqt_exec_method_cQAbstractSpinBox_clear(vtbl: pointer, inst: pointer): void {.cdecl.} =
  let vtbl = cast[VirtualQAbstractSpinBox](cast[uint](vtbl) - uint(offsetOf(VirtualQAbstractSpinBox, vtbl)))
  vtbl.clear()

method resizeEvent*(self: VirtualQAbstractSpinBox, event: gen_qevent_types.QResizeEvent): void {.base.} =
  QAbstractSpinBoxresizeEvent(self[], event)
proc miqt_exec_method_cQAbstractSpinBox_resizeEvent(vtbl: pointer, inst: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[VirtualQAbstractSpinBox](cast[uint](vtbl) - uint(offsetOf(VirtualQAbstractSpinBox, vtbl)))
  let slotval1 = gen_qevent_types.QResizeEvent(h: event, owned: false)
  vtbl.resizeEvent(slotval1)

method keyPressEvent*(self: VirtualQAbstractSpinBox, event: gen_qevent_types.QKeyEvent): void {.base.} =
  QAbstractSpinBoxkeyPressEvent(self[], event)
proc miqt_exec_method_cQAbstractSpinBox_keyPressEvent(vtbl: pointer, inst: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[VirtualQAbstractSpinBox](cast[uint](vtbl) - uint(offsetOf(VirtualQAbstractSpinBox, vtbl)))
  let slotval1 = gen_qevent_types.QKeyEvent(h: event, owned: false)
  vtbl.keyPressEvent(slotval1)

method keyReleaseEvent*(self: VirtualQAbstractSpinBox, event: gen_qevent_types.QKeyEvent): void {.base.} =
  QAbstractSpinBoxkeyReleaseEvent(self[], event)
proc miqt_exec_method_cQAbstractSpinBox_keyReleaseEvent(vtbl: pointer, inst: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[VirtualQAbstractSpinBox](cast[uint](vtbl) - uint(offsetOf(VirtualQAbstractSpinBox, vtbl)))
  let slotval1 = gen_qevent_types.QKeyEvent(h: event, owned: false)
  vtbl.keyReleaseEvent(slotval1)

method wheelEvent*(self: VirtualQAbstractSpinBox, event: gen_qevent_types.QWheelEvent): void {.base.} =
  QAbstractSpinBoxwheelEvent(self[], event)
proc miqt_exec_method_cQAbstractSpinBox_wheelEvent(vtbl: pointer, inst: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[VirtualQAbstractSpinBox](cast[uint](vtbl) - uint(offsetOf(VirtualQAbstractSpinBox, vtbl)))
  let slotval1 = gen_qevent_types.QWheelEvent(h: event, owned: false)
  vtbl.wheelEvent(slotval1)

method focusInEvent*(self: VirtualQAbstractSpinBox, event: gen_qevent_types.QFocusEvent): void {.base.} =
  QAbstractSpinBoxfocusInEvent(self[], event)
proc miqt_exec_method_cQAbstractSpinBox_focusInEvent(vtbl: pointer, inst: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[VirtualQAbstractSpinBox](cast[uint](vtbl) - uint(offsetOf(VirtualQAbstractSpinBox, vtbl)))
  let slotval1 = gen_qevent_types.QFocusEvent(h: event, owned: false)
  vtbl.focusInEvent(slotval1)

method focusOutEvent*(self: VirtualQAbstractSpinBox, event: gen_qevent_types.QFocusEvent): void {.base.} =
  QAbstractSpinBoxfocusOutEvent(self[], event)
proc miqt_exec_method_cQAbstractSpinBox_focusOutEvent(vtbl: pointer, inst: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[VirtualQAbstractSpinBox](cast[uint](vtbl) - uint(offsetOf(VirtualQAbstractSpinBox, vtbl)))
  let slotval1 = gen_qevent_types.QFocusEvent(h: event, owned: false)
  vtbl.focusOutEvent(slotval1)

method contextMenuEvent*(self: VirtualQAbstractSpinBox, event: gen_qevent_types.QContextMenuEvent): void {.base.} =
  QAbstractSpinBoxcontextMenuEvent(self[], event)
proc miqt_exec_method_cQAbstractSpinBox_contextMenuEvent(vtbl: pointer, inst: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[VirtualQAbstractSpinBox](cast[uint](vtbl) - uint(offsetOf(VirtualQAbstractSpinBox, vtbl)))
  let slotval1 = gen_qevent_types.QContextMenuEvent(h: event, owned: false)
  vtbl.contextMenuEvent(slotval1)

method changeEvent*(self: VirtualQAbstractSpinBox, event: gen_qcoreevent_types.QEvent): void {.base.} =
  QAbstractSpinBoxchangeEvent(self[], event)
proc miqt_exec_method_cQAbstractSpinBox_changeEvent(vtbl: pointer, inst: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[VirtualQAbstractSpinBox](cast[uint](vtbl) - uint(offsetOf(VirtualQAbstractSpinBox, vtbl)))
  let slotval1 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  vtbl.changeEvent(slotval1)

method closeEvent*(self: VirtualQAbstractSpinBox, event: gen_qevent_types.QCloseEvent): void {.base.} =
  QAbstractSpinBoxcloseEvent(self[], event)
proc miqt_exec_method_cQAbstractSpinBox_closeEvent(vtbl: pointer, inst: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[VirtualQAbstractSpinBox](cast[uint](vtbl) - uint(offsetOf(VirtualQAbstractSpinBox, vtbl)))
  let slotval1 = gen_qevent_types.QCloseEvent(h: event, owned: false)
  vtbl.closeEvent(slotval1)

method hideEvent*(self: VirtualQAbstractSpinBox, event: gen_qevent_types.QHideEvent): void {.base.} =
  QAbstractSpinBoxhideEvent(self[], event)
proc miqt_exec_method_cQAbstractSpinBox_hideEvent(vtbl: pointer, inst: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[VirtualQAbstractSpinBox](cast[uint](vtbl) - uint(offsetOf(VirtualQAbstractSpinBox, vtbl)))
  let slotval1 = gen_qevent_types.QHideEvent(h: event, owned: false)
  vtbl.hideEvent(slotval1)

method mousePressEvent*(self: VirtualQAbstractSpinBox, event: gen_qevent_types.QMouseEvent): void {.base.} =
  QAbstractSpinBoxmousePressEvent(self[], event)
proc miqt_exec_method_cQAbstractSpinBox_mousePressEvent(vtbl: pointer, inst: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[VirtualQAbstractSpinBox](cast[uint](vtbl) - uint(offsetOf(VirtualQAbstractSpinBox, vtbl)))
  let slotval1 = gen_qevent_types.QMouseEvent(h: event, owned: false)
  vtbl.mousePressEvent(slotval1)

method mouseReleaseEvent*(self: VirtualQAbstractSpinBox, event: gen_qevent_types.QMouseEvent): void {.base.} =
  QAbstractSpinBoxmouseReleaseEvent(self[], event)
proc miqt_exec_method_cQAbstractSpinBox_mouseReleaseEvent(vtbl: pointer, inst: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[VirtualQAbstractSpinBox](cast[uint](vtbl) - uint(offsetOf(VirtualQAbstractSpinBox, vtbl)))
  let slotval1 = gen_qevent_types.QMouseEvent(h: event, owned: false)
  vtbl.mouseReleaseEvent(slotval1)

method mouseMoveEvent*(self: VirtualQAbstractSpinBox, event: gen_qevent_types.QMouseEvent): void {.base.} =
  QAbstractSpinBoxmouseMoveEvent(self[], event)
proc miqt_exec_method_cQAbstractSpinBox_mouseMoveEvent(vtbl: pointer, inst: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[VirtualQAbstractSpinBox](cast[uint](vtbl) - uint(offsetOf(VirtualQAbstractSpinBox, vtbl)))
  let slotval1 = gen_qevent_types.QMouseEvent(h: event, owned: false)
  vtbl.mouseMoveEvent(slotval1)

method timerEvent*(self: VirtualQAbstractSpinBox, event: gen_qcoreevent_types.QTimerEvent): void {.base.} =
  QAbstractSpinBoxtimerEvent(self[], event)
proc miqt_exec_method_cQAbstractSpinBox_timerEvent(vtbl: pointer, inst: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[VirtualQAbstractSpinBox](cast[uint](vtbl) - uint(offsetOf(VirtualQAbstractSpinBox, vtbl)))
  let slotval1 = gen_qcoreevent_types.QTimerEvent(h: event, owned: false)
  vtbl.timerEvent(slotval1)

method paintEvent*(self: VirtualQAbstractSpinBox, event: gen_qevent_types.QPaintEvent): void {.base.} =
  QAbstractSpinBoxpaintEvent(self[], event)
proc miqt_exec_method_cQAbstractSpinBox_paintEvent(vtbl: pointer, inst: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[VirtualQAbstractSpinBox](cast[uint](vtbl) - uint(offsetOf(VirtualQAbstractSpinBox, vtbl)))
  let slotval1 = gen_qevent_types.QPaintEvent(h: event, owned: false)
  vtbl.paintEvent(slotval1)

method showEvent*(self: VirtualQAbstractSpinBox, event: gen_qevent_types.QShowEvent): void {.base.} =
  QAbstractSpinBoxshowEvent(self[], event)
proc miqt_exec_method_cQAbstractSpinBox_showEvent(vtbl: pointer, inst: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[VirtualQAbstractSpinBox](cast[uint](vtbl) - uint(offsetOf(VirtualQAbstractSpinBox, vtbl)))
  let slotval1 = gen_qevent_types.QShowEvent(h: event, owned: false)
  vtbl.showEvent(slotval1)

method stepEnabled*(self: VirtualQAbstractSpinBox, ): cint {.base.} =
  QAbstractSpinBoxstepEnabled(self[])
proc miqt_exec_method_cQAbstractSpinBox_stepEnabled(vtbl: pointer, inst: pointer): cint {.cdecl.} =
  let vtbl = cast[VirtualQAbstractSpinBox](cast[uint](vtbl) - uint(offsetOf(VirtualQAbstractSpinBox, vtbl)))
  var virtualReturn = vtbl.stepEnabled()
  cint(virtualReturn)

method devType*(self: VirtualQAbstractSpinBox, ): cint {.base.} =
  QAbstractSpinBoxdevType(self[])
proc miqt_exec_method_cQAbstractSpinBox_devType(vtbl: pointer, inst: pointer): cint {.cdecl.} =
  let vtbl = cast[VirtualQAbstractSpinBox](cast[uint](vtbl) - uint(offsetOf(VirtualQAbstractSpinBox, vtbl)))
  var virtualReturn = vtbl.devType()
  virtualReturn

method setVisible*(self: VirtualQAbstractSpinBox, visible: bool): void {.base.} =
  QAbstractSpinBoxsetVisible(self[], visible)
proc miqt_exec_method_cQAbstractSpinBox_setVisible(vtbl: pointer, inst: pointer, visible: bool): void {.cdecl.} =
  let vtbl = cast[VirtualQAbstractSpinBox](cast[uint](vtbl) - uint(offsetOf(VirtualQAbstractSpinBox, vtbl)))
  let slotval1 = visible
  vtbl.setVisible(slotval1)

method heightForWidth*(self: VirtualQAbstractSpinBox, param1: cint): cint {.base.} =
  QAbstractSpinBoxheightForWidth(self[], param1)
proc miqt_exec_method_cQAbstractSpinBox_heightForWidth(vtbl: pointer, inst: pointer, param1: cint): cint {.cdecl.} =
  let vtbl = cast[VirtualQAbstractSpinBox](cast[uint](vtbl) - uint(offsetOf(VirtualQAbstractSpinBox, vtbl)))
  let slotval1 = param1
  var virtualReturn = vtbl.heightForWidth(slotval1)
  virtualReturn

method hasHeightForWidth*(self: VirtualQAbstractSpinBox, ): bool {.base.} =
  QAbstractSpinBoxhasHeightForWidth(self[])
proc miqt_exec_method_cQAbstractSpinBox_hasHeightForWidth(vtbl: pointer, inst: pointer): bool {.cdecl.} =
  let vtbl = cast[VirtualQAbstractSpinBox](cast[uint](vtbl) - uint(offsetOf(VirtualQAbstractSpinBox, vtbl)))
  var virtualReturn = vtbl.hasHeightForWidth()
  virtualReturn

method paintEngine*(self: VirtualQAbstractSpinBox, ): gen_qpaintengine_types.QPaintEngine {.base.} =
  QAbstractSpinBoxpaintEngine(self[])
proc miqt_exec_method_cQAbstractSpinBox_paintEngine(vtbl: pointer, inst: pointer): pointer {.cdecl.} =
  let vtbl = cast[VirtualQAbstractSpinBox](cast[uint](vtbl) - uint(offsetOf(VirtualQAbstractSpinBox, vtbl)))
  var virtualReturn = vtbl.paintEngine()
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

method mouseDoubleClickEvent*(self: VirtualQAbstractSpinBox, event: gen_qevent_types.QMouseEvent): void {.base.} =
  QAbstractSpinBoxmouseDoubleClickEvent(self[], event)
proc miqt_exec_method_cQAbstractSpinBox_mouseDoubleClickEvent(vtbl: pointer, inst: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[VirtualQAbstractSpinBox](cast[uint](vtbl) - uint(offsetOf(VirtualQAbstractSpinBox, vtbl)))
  let slotval1 = gen_qevent_types.QMouseEvent(h: event, owned: false)
  vtbl.mouseDoubleClickEvent(slotval1)

method enterEvent*(self: VirtualQAbstractSpinBox, event: gen_qcoreevent_types.QEvent): void {.base.} =
  QAbstractSpinBoxenterEvent(self[], event)
proc miqt_exec_method_cQAbstractSpinBox_enterEvent(vtbl: pointer, inst: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[VirtualQAbstractSpinBox](cast[uint](vtbl) - uint(offsetOf(VirtualQAbstractSpinBox, vtbl)))
  let slotval1 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  vtbl.enterEvent(slotval1)

method leaveEvent*(self: VirtualQAbstractSpinBox, event: gen_qcoreevent_types.QEvent): void {.base.} =
  QAbstractSpinBoxleaveEvent(self[], event)
proc miqt_exec_method_cQAbstractSpinBox_leaveEvent(vtbl: pointer, inst: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[VirtualQAbstractSpinBox](cast[uint](vtbl) - uint(offsetOf(VirtualQAbstractSpinBox, vtbl)))
  let slotval1 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  vtbl.leaveEvent(slotval1)

method moveEvent*(self: VirtualQAbstractSpinBox, event: gen_qevent_types.QMoveEvent): void {.base.} =
  QAbstractSpinBoxmoveEvent(self[], event)
proc miqt_exec_method_cQAbstractSpinBox_moveEvent(vtbl: pointer, inst: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[VirtualQAbstractSpinBox](cast[uint](vtbl) - uint(offsetOf(VirtualQAbstractSpinBox, vtbl)))
  let slotval1 = gen_qevent_types.QMoveEvent(h: event, owned: false)
  vtbl.moveEvent(slotval1)

method tabletEvent*(self: VirtualQAbstractSpinBox, event: gen_qevent_types.QTabletEvent): void {.base.} =
  QAbstractSpinBoxtabletEvent(self[], event)
proc miqt_exec_method_cQAbstractSpinBox_tabletEvent(vtbl: pointer, inst: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[VirtualQAbstractSpinBox](cast[uint](vtbl) - uint(offsetOf(VirtualQAbstractSpinBox, vtbl)))
  let slotval1 = gen_qevent_types.QTabletEvent(h: event, owned: false)
  vtbl.tabletEvent(slotval1)

method actionEvent*(self: VirtualQAbstractSpinBox, event: gen_qevent_types.QActionEvent): void {.base.} =
  QAbstractSpinBoxactionEvent(self[], event)
proc miqt_exec_method_cQAbstractSpinBox_actionEvent(vtbl: pointer, inst: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[VirtualQAbstractSpinBox](cast[uint](vtbl) - uint(offsetOf(VirtualQAbstractSpinBox, vtbl)))
  let slotval1 = gen_qevent_types.QActionEvent(h: event, owned: false)
  vtbl.actionEvent(slotval1)

method dragEnterEvent*(self: VirtualQAbstractSpinBox, event: gen_qevent_types.QDragEnterEvent): void {.base.} =
  QAbstractSpinBoxdragEnterEvent(self[], event)
proc miqt_exec_method_cQAbstractSpinBox_dragEnterEvent(vtbl: pointer, inst: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[VirtualQAbstractSpinBox](cast[uint](vtbl) - uint(offsetOf(VirtualQAbstractSpinBox, vtbl)))
  let slotval1 = gen_qevent_types.QDragEnterEvent(h: event, owned: false)
  vtbl.dragEnterEvent(slotval1)

method dragMoveEvent*(self: VirtualQAbstractSpinBox, event: gen_qevent_types.QDragMoveEvent): void {.base.} =
  QAbstractSpinBoxdragMoveEvent(self[], event)
proc miqt_exec_method_cQAbstractSpinBox_dragMoveEvent(vtbl: pointer, inst: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[VirtualQAbstractSpinBox](cast[uint](vtbl) - uint(offsetOf(VirtualQAbstractSpinBox, vtbl)))
  let slotval1 = gen_qevent_types.QDragMoveEvent(h: event, owned: false)
  vtbl.dragMoveEvent(slotval1)

method dragLeaveEvent*(self: VirtualQAbstractSpinBox, event: gen_qevent_types.QDragLeaveEvent): void {.base.} =
  QAbstractSpinBoxdragLeaveEvent(self[], event)
proc miqt_exec_method_cQAbstractSpinBox_dragLeaveEvent(vtbl: pointer, inst: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[VirtualQAbstractSpinBox](cast[uint](vtbl) - uint(offsetOf(VirtualQAbstractSpinBox, vtbl)))
  let slotval1 = gen_qevent_types.QDragLeaveEvent(h: event, owned: false)
  vtbl.dragLeaveEvent(slotval1)

method dropEvent*(self: VirtualQAbstractSpinBox, event: gen_qevent_types.QDropEvent): void {.base.} =
  QAbstractSpinBoxdropEvent(self[], event)
proc miqt_exec_method_cQAbstractSpinBox_dropEvent(vtbl: pointer, inst: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[VirtualQAbstractSpinBox](cast[uint](vtbl) - uint(offsetOf(VirtualQAbstractSpinBox, vtbl)))
  let slotval1 = gen_qevent_types.QDropEvent(h: event, owned: false)
  vtbl.dropEvent(slotval1)

method nativeEvent*(self: VirtualQAbstractSpinBox, eventType: seq[byte], message: pointer, resultVal: ptr clong): bool {.base.} =
  QAbstractSpinBoxnativeEvent(self[], eventType, message, resultVal)
proc miqt_exec_method_cQAbstractSpinBox_nativeEvent(vtbl: pointer, inst: pointer, eventType: struct_miqt_string, message: pointer, resultVal: ptr clong): bool {.cdecl.} =
  let vtbl = cast[VirtualQAbstractSpinBox](cast[uint](vtbl) - uint(offsetOf(VirtualQAbstractSpinBox, vtbl)))
  var veventType_bytearray = eventType
  var veventTypex_ret = @(toOpenArrayByte(veventType_bytearray.data, 0, int(veventType_bytearray.len)-1))
  c_free(veventType_bytearray.data)
  let slotval1 = veventTypex_ret
  let slotval2 = message
  let slotval3 = resultVal
  var virtualReturn = vtbl.nativeEvent(slotval1, slotval2, slotval3)
  virtualReturn

method metric*(self: VirtualQAbstractSpinBox, param1: cint): cint {.base.} =
  QAbstractSpinBoxmetric(self[], param1)
proc miqt_exec_method_cQAbstractSpinBox_metric(vtbl: pointer, inst: pointer, param1: cint): cint {.cdecl.} =
  let vtbl = cast[VirtualQAbstractSpinBox](cast[uint](vtbl) - uint(offsetOf(VirtualQAbstractSpinBox, vtbl)))
  let slotval1 = cint(param1)
  var virtualReturn = vtbl.metric(slotval1)
  virtualReturn

method initPainter*(self: VirtualQAbstractSpinBox, painter: gen_qpainter_types.QPainter): void {.base.} =
  QAbstractSpinBoxinitPainter(self[], painter)
proc miqt_exec_method_cQAbstractSpinBox_initPainter(vtbl: pointer, inst: pointer, painter: pointer): void {.cdecl.} =
  let vtbl = cast[VirtualQAbstractSpinBox](cast[uint](vtbl) - uint(offsetOf(VirtualQAbstractSpinBox, vtbl)))
  let slotval1 = gen_qpainter_types.QPainter(h: painter, owned: false)
  vtbl.initPainter(slotval1)

method redirected*(self: VirtualQAbstractSpinBox, offset: gen_qpoint_types.QPoint): gen_qpaintdevice_types.QPaintDevice {.base.} =
  QAbstractSpinBoxredirected(self[], offset)
proc miqt_exec_method_cQAbstractSpinBox_redirected(vtbl: pointer, inst: pointer, offset: pointer): pointer {.cdecl.} =
  let vtbl = cast[VirtualQAbstractSpinBox](cast[uint](vtbl) - uint(offsetOf(VirtualQAbstractSpinBox, vtbl)))
  let slotval1 = gen_qpoint_types.QPoint(h: offset, owned: false)
  var virtualReturn = vtbl.redirected(slotval1)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

method sharedPainter*(self: VirtualQAbstractSpinBox, ): gen_qpainter_types.QPainter {.base.} =
  QAbstractSpinBoxsharedPainter(self[])
proc miqt_exec_method_cQAbstractSpinBox_sharedPainter(vtbl: pointer, inst: pointer): pointer {.cdecl.} =
  let vtbl = cast[VirtualQAbstractSpinBox](cast[uint](vtbl) - uint(offsetOf(VirtualQAbstractSpinBox, vtbl)))
  var virtualReturn = vtbl.sharedPainter()
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

method inputMethodEvent*(self: VirtualQAbstractSpinBox, param1: gen_qevent_types.QInputMethodEvent): void {.base.} =
  QAbstractSpinBoxinputMethodEvent(self[], param1)
proc miqt_exec_method_cQAbstractSpinBox_inputMethodEvent(vtbl: pointer, inst: pointer, param1: pointer): void {.cdecl.} =
  let vtbl = cast[VirtualQAbstractSpinBox](cast[uint](vtbl) - uint(offsetOf(VirtualQAbstractSpinBox, vtbl)))
  let slotval1 = gen_qevent_types.QInputMethodEvent(h: param1, owned: false)
  vtbl.inputMethodEvent(slotval1)

method focusNextPrevChild*(self: VirtualQAbstractSpinBox, next: bool): bool {.base.} =
  QAbstractSpinBoxfocusNextPrevChild(self[], next)
proc miqt_exec_method_cQAbstractSpinBox_focusNextPrevChild(vtbl: pointer, inst: pointer, next: bool): bool {.cdecl.} =
  let vtbl = cast[VirtualQAbstractSpinBox](cast[uint](vtbl) - uint(offsetOf(VirtualQAbstractSpinBox, vtbl)))
  let slotval1 = next
  var virtualReturn = vtbl.focusNextPrevChild(slotval1)
  virtualReturn

method eventFilter*(self: VirtualQAbstractSpinBox, watched: gen_qobject_types.QObject, event: gen_qcoreevent_types.QEvent): bool {.base.} =
  QAbstractSpinBoxeventFilter(self[], watched, event)
proc miqt_exec_method_cQAbstractSpinBox_eventFilter(vtbl: pointer, inst: pointer, watched: pointer, event: pointer): bool {.cdecl.} =
  let vtbl = cast[VirtualQAbstractSpinBox](cast[uint](vtbl) - uint(offsetOf(VirtualQAbstractSpinBox, vtbl)))
  let slotval1 = gen_qobject_types.QObject(h: watched, owned: false)
  let slotval2 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  var virtualReturn = vtbl.eventFilter(slotval1, slotval2)
  virtualReturn

method childEvent*(self: VirtualQAbstractSpinBox, event: gen_qcoreevent_types.QChildEvent): void {.base.} =
  QAbstractSpinBoxchildEvent(self[], event)
proc miqt_exec_method_cQAbstractSpinBox_childEvent(vtbl: pointer, inst: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[VirtualQAbstractSpinBox](cast[uint](vtbl) - uint(offsetOf(VirtualQAbstractSpinBox, vtbl)))
  let slotval1 = gen_qcoreevent_types.QChildEvent(h: event, owned: false)
  vtbl.childEvent(slotval1)

method customEvent*(self: VirtualQAbstractSpinBox, event: gen_qcoreevent_types.QEvent): void {.base.} =
  QAbstractSpinBoxcustomEvent(self[], event)
proc miqt_exec_method_cQAbstractSpinBox_customEvent(vtbl: pointer, inst: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[VirtualQAbstractSpinBox](cast[uint](vtbl) - uint(offsetOf(VirtualQAbstractSpinBox, vtbl)))
  let slotval1 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  vtbl.customEvent(slotval1)

method connectNotify*(self: VirtualQAbstractSpinBox, signal: gen_qmetaobject_types.QMetaMethod): void {.base.} =
  QAbstractSpinBoxconnectNotify(self[], signal)
proc miqt_exec_method_cQAbstractSpinBox_connectNotify(vtbl: pointer, inst: pointer, signal: pointer): void {.cdecl.} =
  let vtbl = cast[VirtualQAbstractSpinBox](cast[uint](vtbl) - uint(offsetOf(VirtualQAbstractSpinBox, vtbl)))
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal, owned: false)
  vtbl.connectNotify(slotval1)

method disconnectNotify*(self: VirtualQAbstractSpinBox, signal: gen_qmetaobject_types.QMetaMethod): void {.base.} =
  QAbstractSpinBoxdisconnectNotify(self[], signal)
proc miqt_exec_method_cQAbstractSpinBox_disconnectNotify(vtbl: pointer, inst: pointer, signal: pointer): void {.cdecl.} =
  let vtbl = cast[VirtualQAbstractSpinBox](cast[uint](vtbl) - uint(offsetOf(VirtualQAbstractSpinBox, vtbl)))
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal, owned: false)
  vtbl.disconnectNotify(slotval1)

proc initStyleOption*(self: gen_qabstractspinbox_types.QAbstractSpinBox, option: gen_qstyleoption_types.QStyleOptionSpinBox): void =
  fcQAbstractSpinBox_protectedbase_initStyleOption(self.h, option.h)

proc lineEdit*(self: gen_qabstractspinbox_types.QAbstractSpinBox, ): gen_qlineedit_types.QLineEdit =
  gen_qlineedit_types.QLineEdit(h: fcQAbstractSpinBox_protectedbase_lineEdit(self.h), owned: false)

proc setLineEdit*(self: gen_qabstractspinbox_types.QAbstractSpinBox, edit: gen_qlineedit_types.QLineEdit): void =
  fcQAbstractSpinBox_protectedbase_setLineEdit(self.h, edit.h)

proc updateMicroFocus*(self: gen_qabstractspinbox_types.QAbstractSpinBox, ): void =
  fcQAbstractSpinBox_protectedbase_updateMicroFocus(self.h)

proc create*(self: gen_qabstractspinbox_types.QAbstractSpinBox, ): void =
  fcQAbstractSpinBox_protectedbase_create(self.h)

proc destroy*(self: gen_qabstractspinbox_types.QAbstractSpinBox, ): void =
  fcQAbstractSpinBox_protectedbase_destroy(self.h)

proc focusNextChild*(self: gen_qabstractspinbox_types.QAbstractSpinBox, ): bool =
  fcQAbstractSpinBox_protectedbase_focusNextChild(self.h)

proc focusPreviousChild*(self: gen_qabstractspinbox_types.QAbstractSpinBox, ): bool =
  fcQAbstractSpinBox_protectedbase_focusPreviousChild(self.h)

proc sender*(self: gen_qabstractspinbox_types.QAbstractSpinBox, ): gen_qobject_types.QObject =
  gen_qobject_types.QObject(h: fcQAbstractSpinBox_protectedbase_sender(self.h), owned: false)

proc senderSignalIndex*(self: gen_qabstractspinbox_types.QAbstractSpinBox, ): cint =
  fcQAbstractSpinBox_protectedbase_senderSignalIndex(self.h)

proc receivers*(self: gen_qabstractspinbox_types.QAbstractSpinBox, signal: cstring): cint =
  fcQAbstractSpinBox_protectedbase_receivers(self.h, signal)

proc isSignalConnected*(self: gen_qabstractspinbox_types.QAbstractSpinBox, signal: gen_qmetaobject_types.QMetaMethod): bool =
  fcQAbstractSpinBox_protectedbase_isSignalConnected(self.h, signal.h)

proc create*(T: type gen_qabstractspinbox_types.QAbstractSpinBox,
    parent: gen_qwidget_types.QWidget,
    vtbl: ref QAbstractSpinBoxVTable = nil): gen_qabstractspinbox_types.QAbstractSpinBox =
  let vtbl = if vtbl == nil: new QAbstractSpinBoxVTable else: vtbl
  GC_ref(vtbl)
  vtbl[].vtbl.destructor = proc(vtbl: ptr cQAbstractSpinBoxVTable, _: ptr cQAbstractSpinBox) {.cdecl.} =
    let vtbl = cast[ref QAbstractSpinBoxVTable](vtbl)
    GC_unref(vtbl)
  if not isNil(vtbl[].metaObject):
    vtbl[].vtbl.metaObject = miqt_exec_callback_cQAbstractSpinBox_metaObject
  if not isNil(vtbl[].metacast):
    vtbl[].vtbl.metacast = miqt_exec_callback_cQAbstractSpinBox_metacast
  if not isNil(vtbl[].metacall):
    vtbl[].vtbl.metacall = miqt_exec_callback_cQAbstractSpinBox_metacall
  if not isNil(vtbl[].sizeHint):
    vtbl[].vtbl.sizeHint = miqt_exec_callback_cQAbstractSpinBox_sizeHint
  if not isNil(vtbl[].minimumSizeHint):
    vtbl[].vtbl.minimumSizeHint = miqt_exec_callback_cQAbstractSpinBox_minimumSizeHint
  if not isNil(vtbl[].event):
    vtbl[].vtbl.event = miqt_exec_callback_cQAbstractSpinBox_event
  if not isNil(vtbl[].inputMethodQuery):
    vtbl[].vtbl.inputMethodQuery = miqt_exec_callback_cQAbstractSpinBox_inputMethodQuery
  if not isNil(vtbl[].validate):
    vtbl[].vtbl.validate = miqt_exec_callback_cQAbstractSpinBox_validate
  if not isNil(vtbl[].fixup):
    vtbl[].vtbl.fixup = miqt_exec_callback_cQAbstractSpinBox_fixup
  if not isNil(vtbl[].stepBy):
    vtbl[].vtbl.stepBy = miqt_exec_callback_cQAbstractSpinBox_stepBy
  if not isNil(vtbl[].clear):
    vtbl[].vtbl.clear = miqt_exec_callback_cQAbstractSpinBox_clear
  if not isNil(vtbl[].resizeEvent):
    vtbl[].vtbl.resizeEvent = miqt_exec_callback_cQAbstractSpinBox_resizeEvent
  if not isNil(vtbl[].keyPressEvent):
    vtbl[].vtbl.keyPressEvent = miqt_exec_callback_cQAbstractSpinBox_keyPressEvent
  if not isNil(vtbl[].keyReleaseEvent):
    vtbl[].vtbl.keyReleaseEvent = miqt_exec_callback_cQAbstractSpinBox_keyReleaseEvent
  if not isNil(vtbl[].wheelEvent):
    vtbl[].vtbl.wheelEvent = miqt_exec_callback_cQAbstractSpinBox_wheelEvent
  if not isNil(vtbl[].focusInEvent):
    vtbl[].vtbl.focusInEvent = miqt_exec_callback_cQAbstractSpinBox_focusInEvent
  if not isNil(vtbl[].focusOutEvent):
    vtbl[].vtbl.focusOutEvent = miqt_exec_callback_cQAbstractSpinBox_focusOutEvent
  if not isNil(vtbl[].contextMenuEvent):
    vtbl[].vtbl.contextMenuEvent = miqt_exec_callback_cQAbstractSpinBox_contextMenuEvent
  if not isNil(vtbl[].changeEvent):
    vtbl[].vtbl.changeEvent = miqt_exec_callback_cQAbstractSpinBox_changeEvent
  if not isNil(vtbl[].closeEvent):
    vtbl[].vtbl.closeEvent = miqt_exec_callback_cQAbstractSpinBox_closeEvent
  if not isNil(vtbl[].hideEvent):
    vtbl[].vtbl.hideEvent = miqt_exec_callback_cQAbstractSpinBox_hideEvent
  if not isNil(vtbl[].mousePressEvent):
    vtbl[].vtbl.mousePressEvent = miqt_exec_callback_cQAbstractSpinBox_mousePressEvent
  if not isNil(vtbl[].mouseReleaseEvent):
    vtbl[].vtbl.mouseReleaseEvent = miqt_exec_callback_cQAbstractSpinBox_mouseReleaseEvent
  if not isNil(vtbl[].mouseMoveEvent):
    vtbl[].vtbl.mouseMoveEvent = miqt_exec_callback_cQAbstractSpinBox_mouseMoveEvent
  if not isNil(vtbl[].timerEvent):
    vtbl[].vtbl.timerEvent = miqt_exec_callback_cQAbstractSpinBox_timerEvent
  if not isNil(vtbl[].paintEvent):
    vtbl[].vtbl.paintEvent = miqt_exec_callback_cQAbstractSpinBox_paintEvent
  if not isNil(vtbl[].showEvent):
    vtbl[].vtbl.showEvent = miqt_exec_callback_cQAbstractSpinBox_showEvent
  if not isNil(vtbl[].stepEnabled):
    vtbl[].vtbl.stepEnabled = miqt_exec_callback_cQAbstractSpinBox_stepEnabled
  if not isNil(vtbl[].devType):
    vtbl[].vtbl.devType = miqt_exec_callback_cQAbstractSpinBox_devType
  if not isNil(vtbl[].setVisible):
    vtbl[].vtbl.setVisible = miqt_exec_callback_cQAbstractSpinBox_setVisible
  if not isNil(vtbl[].heightForWidth):
    vtbl[].vtbl.heightForWidth = miqt_exec_callback_cQAbstractSpinBox_heightForWidth
  if not isNil(vtbl[].hasHeightForWidth):
    vtbl[].vtbl.hasHeightForWidth = miqt_exec_callback_cQAbstractSpinBox_hasHeightForWidth
  if not isNil(vtbl[].paintEngine):
    vtbl[].vtbl.paintEngine = miqt_exec_callback_cQAbstractSpinBox_paintEngine
  if not isNil(vtbl[].mouseDoubleClickEvent):
    vtbl[].vtbl.mouseDoubleClickEvent = miqt_exec_callback_cQAbstractSpinBox_mouseDoubleClickEvent
  if not isNil(vtbl[].enterEvent):
    vtbl[].vtbl.enterEvent = miqt_exec_callback_cQAbstractSpinBox_enterEvent
  if not isNil(vtbl[].leaveEvent):
    vtbl[].vtbl.leaveEvent = miqt_exec_callback_cQAbstractSpinBox_leaveEvent
  if not isNil(vtbl[].moveEvent):
    vtbl[].vtbl.moveEvent = miqt_exec_callback_cQAbstractSpinBox_moveEvent
  if not isNil(vtbl[].tabletEvent):
    vtbl[].vtbl.tabletEvent = miqt_exec_callback_cQAbstractSpinBox_tabletEvent
  if not isNil(vtbl[].actionEvent):
    vtbl[].vtbl.actionEvent = miqt_exec_callback_cQAbstractSpinBox_actionEvent
  if not isNil(vtbl[].dragEnterEvent):
    vtbl[].vtbl.dragEnterEvent = miqt_exec_callback_cQAbstractSpinBox_dragEnterEvent
  if not isNil(vtbl[].dragMoveEvent):
    vtbl[].vtbl.dragMoveEvent = miqt_exec_callback_cQAbstractSpinBox_dragMoveEvent
  if not isNil(vtbl[].dragLeaveEvent):
    vtbl[].vtbl.dragLeaveEvent = miqt_exec_callback_cQAbstractSpinBox_dragLeaveEvent
  if not isNil(vtbl[].dropEvent):
    vtbl[].vtbl.dropEvent = miqt_exec_callback_cQAbstractSpinBox_dropEvent
  if not isNil(vtbl[].nativeEvent):
    vtbl[].vtbl.nativeEvent = miqt_exec_callback_cQAbstractSpinBox_nativeEvent
  if not isNil(vtbl[].metric):
    vtbl[].vtbl.metric = miqt_exec_callback_cQAbstractSpinBox_metric
  if not isNil(vtbl[].initPainter):
    vtbl[].vtbl.initPainter = miqt_exec_callback_cQAbstractSpinBox_initPainter
  if not isNil(vtbl[].redirected):
    vtbl[].vtbl.redirected = miqt_exec_callback_cQAbstractSpinBox_redirected
  if not isNil(vtbl[].sharedPainter):
    vtbl[].vtbl.sharedPainter = miqt_exec_callback_cQAbstractSpinBox_sharedPainter
  if not isNil(vtbl[].inputMethodEvent):
    vtbl[].vtbl.inputMethodEvent = miqt_exec_callback_cQAbstractSpinBox_inputMethodEvent
  if not isNil(vtbl[].focusNextPrevChild):
    vtbl[].vtbl.focusNextPrevChild = miqt_exec_callback_cQAbstractSpinBox_focusNextPrevChild
  if not isNil(vtbl[].eventFilter):
    vtbl[].vtbl.eventFilter = miqt_exec_callback_cQAbstractSpinBox_eventFilter
  if not isNil(vtbl[].childEvent):
    vtbl[].vtbl.childEvent = miqt_exec_callback_cQAbstractSpinBox_childEvent
  if not isNil(vtbl[].customEvent):
    vtbl[].vtbl.customEvent = miqt_exec_callback_cQAbstractSpinBox_customEvent
  if not isNil(vtbl[].connectNotify):
    vtbl[].vtbl.connectNotify = miqt_exec_callback_cQAbstractSpinBox_connectNotify
  if not isNil(vtbl[].disconnectNotify):
    vtbl[].vtbl.disconnectNotify = miqt_exec_callback_cQAbstractSpinBox_disconnectNotify
  gen_qabstractspinbox_types.QAbstractSpinBox(h: fcQAbstractSpinBox_new(addr(vtbl[].vtbl), parent.h), owned: true)

proc create*(T: type gen_qabstractspinbox_types.QAbstractSpinBox,
    vtbl: ref QAbstractSpinBoxVTable = nil): gen_qabstractspinbox_types.QAbstractSpinBox =
  let vtbl = if vtbl == nil: new QAbstractSpinBoxVTable else: vtbl
  GC_ref(vtbl)
  vtbl[].vtbl.destructor = proc(vtbl: ptr cQAbstractSpinBoxVTable, _: ptr cQAbstractSpinBox) {.cdecl.} =
    let vtbl = cast[ref QAbstractSpinBoxVTable](vtbl)
    GC_unref(vtbl)
  if not isNil(vtbl[].metaObject):
    vtbl[].vtbl.metaObject = miqt_exec_callback_cQAbstractSpinBox_metaObject
  if not isNil(vtbl[].metacast):
    vtbl[].vtbl.metacast = miqt_exec_callback_cQAbstractSpinBox_metacast
  if not isNil(vtbl[].metacall):
    vtbl[].vtbl.metacall = miqt_exec_callback_cQAbstractSpinBox_metacall
  if not isNil(vtbl[].sizeHint):
    vtbl[].vtbl.sizeHint = miqt_exec_callback_cQAbstractSpinBox_sizeHint
  if not isNil(vtbl[].minimumSizeHint):
    vtbl[].vtbl.minimumSizeHint = miqt_exec_callback_cQAbstractSpinBox_minimumSizeHint
  if not isNil(vtbl[].event):
    vtbl[].vtbl.event = miqt_exec_callback_cQAbstractSpinBox_event
  if not isNil(vtbl[].inputMethodQuery):
    vtbl[].vtbl.inputMethodQuery = miqt_exec_callback_cQAbstractSpinBox_inputMethodQuery
  if not isNil(vtbl[].validate):
    vtbl[].vtbl.validate = miqt_exec_callback_cQAbstractSpinBox_validate
  if not isNil(vtbl[].fixup):
    vtbl[].vtbl.fixup = miqt_exec_callback_cQAbstractSpinBox_fixup
  if not isNil(vtbl[].stepBy):
    vtbl[].vtbl.stepBy = miqt_exec_callback_cQAbstractSpinBox_stepBy
  if not isNil(vtbl[].clear):
    vtbl[].vtbl.clear = miqt_exec_callback_cQAbstractSpinBox_clear
  if not isNil(vtbl[].resizeEvent):
    vtbl[].vtbl.resizeEvent = miqt_exec_callback_cQAbstractSpinBox_resizeEvent
  if not isNil(vtbl[].keyPressEvent):
    vtbl[].vtbl.keyPressEvent = miqt_exec_callback_cQAbstractSpinBox_keyPressEvent
  if not isNil(vtbl[].keyReleaseEvent):
    vtbl[].vtbl.keyReleaseEvent = miqt_exec_callback_cQAbstractSpinBox_keyReleaseEvent
  if not isNil(vtbl[].wheelEvent):
    vtbl[].vtbl.wheelEvent = miqt_exec_callback_cQAbstractSpinBox_wheelEvent
  if not isNil(vtbl[].focusInEvent):
    vtbl[].vtbl.focusInEvent = miqt_exec_callback_cQAbstractSpinBox_focusInEvent
  if not isNil(vtbl[].focusOutEvent):
    vtbl[].vtbl.focusOutEvent = miqt_exec_callback_cQAbstractSpinBox_focusOutEvent
  if not isNil(vtbl[].contextMenuEvent):
    vtbl[].vtbl.contextMenuEvent = miqt_exec_callback_cQAbstractSpinBox_contextMenuEvent
  if not isNil(vtbl[].changeEvent):
    vtbl[].vtbl.changeEvent = miqt_exec_callback_cQAbstractSpinBox_changeEvent
  if not isNil(vtbl[].closeEvent):
    vtbl[].vtbl.closeEvent = miqt_exec_callback_cQAbstractSpinBox_closeEvent
  if not isNil(vtbl[].hideEvent):
    vtbl[].vtbl.hideEvent = miqt_exec_callback_cQAbstractSpinBox_hideEvent
  if not isNil(vtbl[].mousePressEvent):
    vtbl[].vtbl.mousePressEvent = miqt_exec_callback_cQAbstractSpinBox_mousePressEvent
  if not isNil(vtbl[].mouseReleaseEvent):
    vtbl[].vtbl.mouseReleaseEvent = miqt_exec_callback_cQAbstractSpinBox_mouseReleaseEvent
  if not isNil(vtbl[].mouseMoveEvent):
    vtbl[].vtbl.mouseMoveEvent = miqt_exec_callback_cQAbstractSpinBox_mouseMoveEvent
  if not isNil(vtbl[].timerEvent):
    vtbl[].vtbl.timerEvent = miqt_exec_callback_cQAbstractSpinBox_timerEvent
  if not isNil(vtbl[].paintEvent):
    vtbl[].vtbl.paintEvent = miqt_exec_callback_cQAbstractSpinBox_paintEvent
  if not isNil(vtbl[].showEvent):
    vtbl[].vtbl.showEvent = miqt_exec_callback_cQAbstractSpinBox_showEvent
  if not isNil(vtbl[].stepEnabled):
    vtbl[].vtbl.stepEnabled = miqt_exec_callback_cQAbstractSpinBox_stepEnabled
  if not isNil(vtbl[].devType):
    vtbl[].vtbl.devType = miqt_exec_callback_cQAbstractSpinBox_devType
  if not isNil(vtbl[].setVisible):
    vtbl[].vtbl.setVisible = miqt_exec_callback_cQAbstractSpinBox_setVisible
  if not isNil(vtbl[].heightForWidth):
    vtbl[].vtbl.heightForWidth = miqt_exec_callback_cQAbstractSpinBox_heightForWidth
  if not isNil(vtbl[].hasHeightForWidth):
    vtbl[].vtbl.hasHeightForWidth = miqt_exec_callback_cQAbstractSpinBox_hasHeightForWidth
  if not isNil(vtbl[].paintEngine):
    vtbl[].vtbl.paintEngine = miqt_exec_callback_cQAbstractSpinBox_paintEngine
  if not isNil(vtbl[].mouseDoubleClickEvent):
    vtbl[].vtbl.mouseDoubleClickEvent = miqt_exec_callback_cQAbstractSpinBox_mouseDoubleClickEvent
  if not isNil(vtbl[].enterEvent):
    vtbl[].vtbl.enterEvent = miqt_exec_callback_cQAbstractSpinBox_enterEvent
  if not isNil(vtbl[].leaveEvent):
    vtbl[].vtbl.leaveEvent = miqt_exec_callback_cQAbstractSpinBox_leaveEvent
  if not isNil(vtbl[].moveEvent):
    vtbl[].vtbl.moveEvent = miqt_exec_callback_cQAbstractSpinBox_moveEvent
  if not isNil(vtbl[].tabletEvent):
    vtbl[].vtbl.tabletEvent = miqt_exec_callback_cQAbstractSpinBox_tabletEvent
  if not isNil(vtbl[].actionEvent):
    vtbl[].vtbl.actionEvent = miqt_exec_callback_cQAbstractSpinBox_actionEvent
  if not isNil(vtbl[].dragEnterEvent):
    vtbl[].vtbl.dragEnterEvent = miqt_exec_callback_cQAbstractSpinBox_dragEnterEvent
  if not isNil(vtbl[].dragMoveEvent):
    vtbl[].vtbl.dragMoveEvent = miqt_exec_callback_cQAbstractSpinBox_dragMoveEvent
  if not isNil(vtbl[].dragLeaveEvent):
    vtbl[].vtbl.dragLeaveEvent = miqt_exec_callback_cQAbstractSpinBox_dragLeaveEvent
  if not isNil(vtbl[].dropEvent):
    vtbl[].vtbl.dropEvent = miqt_exec_callback_cQAbstractSpinBox_dropEvent
  if not isNil(vtbl[].nativeEvent):
    vtbl[].vtbl.nativeEvent = miqt_exec_callback_cQAbstractSpinBox_nativeEvent
  if not isNil(vtbl[].metric):
    vtbl[].vtbl.metric = miqt_exec_callback_cQAbstractSpinBox_metric
  if not isNil(vtbl[].initPainter):
    vtbl[].vtbl.initPainter = miqt_exec_callback_cQAbstractSpinBox_initPainter
  if not isNil(vtbl[].redirected):
    vtbl[].vtbl.redirected = miqt_exec_callback_cQAbstractSpinBox_redirected
  if not isNil(vtbl[].sharedPainter):
    vtbl[].vtbl.sharedPainter = miqt_exec_callback_cQAbstractSpinBox_sharedPainter
  if not isNil(vtbl[].inputMethodEvent):
    vtbl[].vtbl.inputMethodEvent = miqt_exec_callback_cQAbstractSpinBox_inputMethodEvent
  if not isNil(vtbl[].focusNextPrevChild):
    vtbl[].vtbl.focusNextPrevChild = miqt_exec_callback_cQAbstractSpinBox_focusNextPrevChild
  if not isNil(vtbl[].eventFilter):
    vtbl[].vtbl.eventFilter = miqt_exec_callback_cQAbstractSpinBox_eventFilter
  if not isNil(vtbl[].childEvent):
    vtbl[].vtbl.childEvent = miqt_exec_callback_cQAbstractSpinBox_childEvent
  if not isNil(vtbl[].customEvent):
    vtbl[].vtbl.customEvent = miqt_exec_callback_cQAbstractSpinBox_customEvent
  if not isNil(vtbl[].connectNotify):
    vtbl[].vtbl.connectNotify = miqt_exec_callback_cQAbstractSpinBox_connectNotify
  if not isNil(vtbl[].disconnectNotify):
    vtbl[].vtbl.disconnectNotify = miqt_exec_callback_cQAbstractSpinBox_disconnectNotify
  gen_qabstractspinbox_types.QAbstractSpinBox(h: fcQAbstractSpinBox_new2(addr(vtbl[].vtbl), ), owned: true)

proc create*(T: type gen_qabstractspinbox_types.QAbstractSpinBox,
    parent: gen_qwidget_types.QWidget,
    vtbl: VirtualQAbstractSpinBox) =

  vtbl[].vtbl.destructor = proc(vtbl: ptr cQAbstractSpinBoxVTable, _: ptr cQAbstractSpinBox) {.cdecl.} =
    let vtbl = cast[ptr typeof(VirtualQAbstractSpinBox()[])](cast[uint](vtbl) - uint(offsetOf(VirtualQAbstractSpinBox, vtbl)))
    vtbl[].h = nil
    vtbl[].owned = false
  vtbl[].vtbl.metaObject = miqt_exec_method_cQAbstractSpinBox_metaObject
  vtbl[].vtbl.metacast = miqt_exec_method_cQAbstractSpinBox_metacast
  vtbl[].vtbl.metacall = miqt_exec_method_cQAbstractSpinBox_metacall
  vtbl[].vtbl.sizeHint = miqt_exec_method_cQAbstractSpinBox_sizeHint
  vtbl[].vtbl.minimumSizeHint = miqt_exec_method_cQAbstractSpinBox_minimumSizeHint
  vtbl[].vtbl.event = miqt_exec_method_cQAbstractSpinBox_event
  vtbl[].vtbl.inputMethodQuery = miqt_exec_method_cQAbstractSpinBox_inputMethodQuery
  vtbl[].vtbl.validate = miqt_exec_method_cQAbstractSpinBox_validate
  vtbl[].vtbl.fixup = miqt_exec_method_cQAbstractSpinBox_fixup
  vtbl[].vtbl.stepBy = miqt_exec_method_cQAbstractSpinBox_stepBy
  vtbl[].vtbl.clear = miqt_exec_method_cQAbstractSpinBox_clear
  vtbl[].vtbl.resizeEvent = miqt_exec_method_cQAbstractSpinBox_resizeEvent
  vtbl[].vtbl.keyPressEvent = miqt_exec_method_cQAbstractSpinBox_keyPressEvent
  vtbl[].vtbl.keyReleaseEvent = miqt_exec_method_cQAbstractSpinBox_keyReleaseEvent
  vtbl[].vtbl.wheelEvent = miqt_exec_method_cQAbstractSpinBox_wheelEvent
  vtbl[].vtbl.focusInEvent = miqt_exec_method_cQAbstractSpinBox_focusInEvent
  vtbl[].vtbl.focusOutEvent = miqt_exec_method_cQAbstractSpinBox_focusOutEvent
  vtbl[].vtbl.contextMenuEvent = miqt_exec_method_cQAbstractSpinBox_contextMenuEvent
  vtbl[].vtbl.changeEvent = miqt_exec_method_cQAbstractSpinBox_changeEvent
  vtbl[].vtbl.closeEvent = miqt_exec_method_cQAbstractSpinBox_closeEvent
  vtbl[].vtbl.hideEvent = miqt_exec_method_cQAbstractSpinBox_hideEvent
  vtbl[].vtbl.mousePressEvent = miqt_exec_method_cQAbstractSpinBox_mousePressEvent
  vtbl[].vtbl.mouseReleaseEvent = miqt_exec_method_cQAbstractSpinBox_mouseReleaseEvent
  vtbl[].vtbl.mouseMoveEvent = miqt_exec_method_cQAbstractSpinBox_mouseMoveEvent
  vtbl[].vtbl.timerEvent = miqt_exec_method_cQAbstractSpinBox_timerEvent
  vtbl[].vtbl.paintEvent = miqt_exec_method_cQAbstractSpinBox_paintEvent
  vtbl[].vtbl.showEvent = miqt_exec_method_cQAbstractSpinBox_showEvent
  vtbl[].vtbl.stepEnabled = miqt_exec_method_cQAbstractSpinBox_stepEnabled
  vtbl[].vtbl.devType = miqt_exec_method_cQAbstractSpinBox_devType
  vtbl[].vtbl.setVisible = miqt_exec_method_cQAbstractSpinBox_setVisible
  vtbl[].vtbl.heightForWidth = miqt_exec_method_cQAbstractSpinBox_heightForWidth
  vtbl[].vtbl.hasHeightForWidth = miqt_exec_method_cQAbstractSpinBox_hasHeightForWidth
  vtbl[].vtbl.paintEngine = miqt_exec_method_cQAbstractSpinBox_paintEngine
  vtbl[].vtbl.mouseDoubleClickEvent = miqt_exec_method_cQAbstractSpinBox_mouseDoubleClickEvent
  vtbl[].vtbl.enterEvent = miqt_exec_method_cQAbstractSpinBox_enterEvent
  vtbl[].vtbl.leaveEvent = miqt_exec_method_cQAbstractSpinBox_leaveEvent
  vtbl[].vtbl.moveEvent = miqt_exec_method_cQAbstractSpinBox_moveEvent
  vtbl[].vtbl.tabletEvent = miqt_exec_method_cQAbstractSpinBox_tabletEvent
  vtbl[].vtbl.actionEvent = miqt_exec_method_cQAbstractSpinBox_actionEvent
  vtbl[].vtbl.dragEnterEvent = miqt_exec_method_cQAbstractSpinBox_dragEnterEvent
  vtbl[].vtbl.dragMoveEvent = miqt_exec_method_cQAbstractSpinBox_dragMoveEvent
  vtbl[].vtbl.dragLeaveEvent = miqt_exec_method_cQAbstractSpinBox_dragLeaveEvent
  vtbl[].vtbl.dropEvent = miqt_exec_method_cQAbstractSpinBox_dropEvent
  vtbl[].vtbl.nativeEvent = miqt_exec_method_cQAbstractSpinBox_nativeEvent
  vtbl[].vtbl.metric = miqt_exec_method_cQAbstractSpinBox_metric
  vtbl[].vtbl.initPainter = miqt_exec_method_cQAbstractSpinBox_initPainter
  vtbl[].vtbl.redirected = miqt_exec_method_cQAbstractSpinBox_redirected
  vtbl[].vtbl.sharedPainter = miqt_exec_method_cQAbstractSpinBox_sharedPainter
  vtbl[].vtbl.inputMethodEvent = miqt_exec_method_cQAbstractSpinBox_inputMethodEvent
  vtbl[].vtbl.focusNextPrevChild = miqt_exec_method_cQAbstractSpinBox_focusNextPrevChild
  vtbl[].vtbl.eventFilter = miqt_exec_method_cQAbstractSpinBox_eventFilter
  vtbl[].vtbl.childEvent = miqt_exec_method_cQAbstractSpinBox_childEvent
  vtbl[].vtbl.customEvent = miqt_exec_method_cQAbstractSpinBox_customEvent
  vtbl[].vtbl.connectNotify = miqt_exec_method_cQAbstractSpinBox_connectNotify
  vtbl[].vtbl.disconnectNotify = miqt_exec_method_cQAbstractSpinBox_disconnectNotify
  if vtbl[].h != nil: delete(move(vtbl[]))
  vtbl[].h = fcQAbstractSpinBox_new(addr(vtbl[].vtbl), parent.h)
  vtbl[].owned = true

proc create*(T: type gen_qabstractspinbox_types.QAbstractSpinBox,
    vtbl: VirtualQAbstractSpinBox) =

  vtbl[].vtbl.destructor = proc(vtbl: ptr cQAbstractSpinBoxVTable, _: ptr cQAbstractSpinBox) {.cdecl.} =
    let vtbl = cast[ptr typeof(VirtualQAbstractSpinBox()[])](cast[uint](vtbl) - uint(offsetOf(VirtualQAbstractSpinBox, vtbl)))
    vtbl[].h = nil
    vtbl[].owned = false
  vtbl[].vtbl.metaObject = miqt_exec_method_cQAbstractSpinBox_metaObject
  vtbl[].vtbl.metacast = miqt_exec_method_cQAbstractSpinBox_metacast
  vtbl[].vtbl.metacall = miqt_exec_method_cQAbstractSpinBox_metacall
  vtbl[].vtbl.sizeHint = miqt_exec_method_cQAbstractSpinBox_sizeHint
  vtbl[].vtbl.minimumSizeHint = miqt_exec_method_cQAbstractSpinBox_minimumSizeHint
  vtbl[].vtbl.event = miqt_exec_method_cQAbstractSpinBox_event
  vtbl[].vtbl.inputMethodQuery = miqt_exec_method_cQAbstractSpinBox_inputMethodQuery
  vtbl[].vtbl.validate = miqt_exec_method_cQAbstractSpinBox_validate
  vtbl[].vtbl.fixup = miqt_exec_method_cQAbstractSpinBox_fixup
  vtbl[].vtbl.stepBy = miqt_exec_method_cQAbstractSpinBox_stepBy
  vtbl[].vtbl.clear = miqt_exec_method_cQAbstractSpinBox_clear
  vtbl[].vtbl.resizeEvent = miqt_exec_method_cQAbstractSpinBox_resizeEvent
  vtbl[].vtbl.keyPressEvent = miqt_exec_method_cQAbstractSpinBox_keyPressEvent
  vtbl[].vtbl.keyReleaseEvent = miqt_exec_method_cQAbstractSpinBox_keyReleaseEvent
  vtbl[].vtbl.wheelEvent = miqt_exec_method_cQAbstractSpinBox_wheelEvent
  vtbl[].vtbl.focusInEvent = miqt_exec_method_cQAbstractSpinBox_focusInEvent
  vtbl[].vtbl.focusOutEvent = miqt_exec_method_cQAbstractSpinBox_focusOutEvent
  vtbl[].vtbl.contextMenuEvent = miqt_exec_method_cQAbstractSpinBox_contextMenuEvent
  vtbl[].vtbl.changeEvent = miqt_exec_method_cQAbstractSpinBox_changeEvent
  vtbl[].vtbl.closeEvent = miqt_exec_method_cQAbstractSpinBox_closeEvent
  vtbl[].vtbl.hideEvent = miqt_exec_method_cQAbstractSpinBox_hideEvent
  vtbl[].vtbl.mousePressEvent = miqt_exec_method_cQAbstractSpinBox_mousePressEvent
  vtbl[].vtbl.mouseReleaseEvent = miqt_exec_method_cQAbstractSpinBox_mouseReleaseEvent
  vtbl[].vtbl.mouseMoveEvent = miqt_exec_method_cQAbstractSpinBox_mouseMoveEvent
  vtbl[].vtbl.timerEvent = miqt_exec_method_cQAbstractSpinBox_timerEvent
  vtbl[].vtbl.paintEvent = miqt_exec_method_cQAbstractSpinBox_paintEvent
  vtbl[].vtbl.showEvent = miqt_exec_method_cQAbstractSpinBox_showEvent
  vtbl[].vtbl.stepEnabled = miqt_exec_method_cQAbstractSpinBox_stepEnabled
  vtbl[].vtbl.devType = miqt_exec_method_cQAbstractSpinBox_devType
  vtbl[].vtbl.setVisible = miqt_exec_method_cQAbstractSpinBox_setVisible
  vtbl[].vtbl.heightForWidth = miqt_exec_method_cQAbstractSpinBox_heightForWidth
  vtbl[].vtbl.hasHeightForWidth = miqt_exec_method_cQAbstractSpinBox_hasHeightForWidth
  vtbl[].vtbl.paintEngine = miqt_exec_method_cQAbstractSpinBox_paintEngine
  vtbl[].vtbl.mouseDoubleClickEvent = miqt_exec_method_cQAbstractSpinBox_mouseDoubleClickEvent
  vtbl[].vtbl.enterEvent = miqt_exec_method_cQAbstractSpinBox_enterEvent
  vtbl[].vtbl.leaveEvent = miqt_exec_method_cQAbstractSpinBox_leaveEvent
  vtbl[].vtbl.moveEvent = miqt_exec_method_cQAbstractSpinBox_moveEvent
  vtbl[].vtbl.tabletEvent = miqt_exec_method_cQAbstractSpinBox_tabletEvent
  vtbl[].vtbl.actionEvent = miqt_exec_method_cQAbstractSpinBox_actionEvent
  vtbl[].vtbl.dragEnterEvent = miqt_exec_method_cQAbstractSpinBox_dragEnterEvent
  vtbl[].vtbl.dragMoveEvent = miqt_exec_method_cQAbstractSpinBox_dragMoveEvent
  vtbl[].vtbl.dragLeaveEvent = miqt_exec_method_cQAbstractSpinBox_dragLeaveEvent
  vtbl[].vtbl.dropEvent = miqt_exec_method_cQAbstractSpinBox_dropEvent
  vtbl[].vtbl.nativeEvent = miqt_exec_method_cQAbstractSpinBox_nativeEvent
  vtbl[].vtbl.metric = miqt_exec_method_cQAbstractSpinBox_metric
  vtbl[].vtbl.initPainter = miqt_exec_method_cQAbstractSpinBox_initPainter
  vtbl[].vtbl.redirected = miqt_exec_method_cQAbstractSpinBox_redirected
  vtbl[].vtbl.sharedPainter = miqt_exec_method_cQAbstractSpinBox_sharedPainter
  vtbl[].vtbl.inputMethodEvent = miqt_exec_method_cQAbstractSpinBox_inputMethodEvent
  vtbl[].vtbl.focusNextPrevChild = miqt_exec_method_cQAbstractSpinBox_focusNextPrevChild
  vtbl[].vtbl.eventFilter = miqt_exec_method_cQAbstractSpinBox_eventFilter
  vtbl[].vtbl.childEvent = miqt_exec_method_cQAbstractSpinBox_childEvent
  vtbl[].vtbl.customEvent = miqt_exec_method_cQAbstractSpinBox_customEvent
  vtbl[].vtbl.connectNotify = miqt_exec_method_cQAbstractSpinBox_connectNotify
  vtbl[].vtbl.disconnectNotify = miqt_exec_method_cQAbstractSpinBox_disconnectNotify
  if vtbl[].h != nil: delete(move(vtbl[]))
  vtbl[].h = fcQAbstractSpinBox_new2(addr(vtbl[].vtbl), )
  vtbl[].owned = true

proc staticMetaObject*(_: type gen_qabstractspinbox_types.QAbstractSpinBox): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQAbstractSpinBox_staticMetaObject())
