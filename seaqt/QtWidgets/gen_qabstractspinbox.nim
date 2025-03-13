import ./Qt5Widgets_libs

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

proc fcQAbstractSpinBox_metaObject(self: pointer): pointer {.importc: "QAbstractSpinBox_metaObject".}
proc fcQAbstractSpinBox_metacast(self: pointer, param1: cstring): pointer {.importc: "QAbstractSpinBox_metacast".}
proc fcQAbstractSpinBox_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.importc: "QAbstractSpinBox_metacall".}
proc fcQAbstractSpinBox_tr(s: cstring): struct_miqt_string {.importc: "QAbstractSpinBox_tr".}
proc fcQAbstractSpinBox_trUtf8(s: cstring): struct_miqt_string {.importc: "QAbstractSpinBox_trUtf8".}
proc fcQAbstractSpinBox_buttonSymbols(self: pointer): cint {.importc: "QAbstractSpinBox_buttonSymbols".}
proc fcQAbstractSpinBox_setButtonSymbols(self: pointer, bs: cint): void {.importc: "QAbstractSpinBox_setButtonSymbols".}
proc fcQAbstractSpinBox_setCorrectionMode(self: pointer, cm: cint): void {.importc: "QAbstractSpinBox_setCorrectionMode".}
proc fcQAbstractSpinBox_correctionMode(self: pointer): cint {.importc: "QAbstractSpinBox_correctionMode".}
proc fcQAbstractSpinBox_hasAcceptableInput(self: pointer): bool {.importc: "QAbstractSpinBox_hasAcceptableInput".}
proc fcQAbstractSpinBox_text(self: pointer): struct_miqt_string {.importc: "QAbstractSpinBox_text".}
proc fcQAbstractSpinBox_specialValueText(self: pointer): struct_miqt_string {.importc: "QAbstractSpinBox_specialValueText".}
proc fcQAbstractSpinBox_setSpecialValueText(self: pointer, txt: struct_miqt_string): void {.importc: "QAbstractSpinBox_setSpecialValueText".}
proc fcQAbstractSpinBox_wrapping(self: pointer): bool {.importc: "QAbstractSpinBox_wrapping".}
proc fcQAbstractSpinBox_setWrapping(self: pointer, w: bool): void {.importc: "QAbstractSpinBox_setWrapping".}
proc fcQAbstractSpinBox_setReadOnly(self: pointer, r: bool): void {.importc: "QAbstractSpinBox_setReadOnly".}
proc fcQAbstractSpinBox_isReadOnly(self: pointer): bool {.importc: "QAbstractSpinBox_isReadOnly".}
proc fcQAbstractSpinBox_setKeyboardTracking(self: pointer, kt: bool): void {.importc: "QAbstractSpinBox_setKeyboardTracking".}
proc fcQAbstractSpinBox_keyboardTracking(self: pointer): bool {.importc: "QAbstractSpinBox_keyboardTracking".}
proc fcQAbstractSpinBox_setAlignment(self: pointer, flag: cint): void {.importc: "QAbstractSpinBox_setAlignment".}
proc fcQAbstractSpinBox_alignment(self: pointer): cint {.importc: "QAbstractSpinBox_alignment".}
proc fcQAbstractSpinBox_setFrame(self: pointer, frame: bool): void {.importc: "QAbstractSpinBox_setFrame".}
proc fcQAbstractSpinBox_hasFrame(self: pointer): bool {.importc: "QAbstractSpinBox_hasFrame".}
proc fcQAbstractSpinBox_setAccelerated(self: pointer, on: bool): void {.importc: "QAbstractSpinBox_setAccelerated".}
proc fcQAbstractSpinBox_isAccelerated(self: pointer): bool {.importc: "QAbstractSpinBox_isAccelerated".}
proc fcQAbstractSpinBox_setGroupSeparatorShown(self: pointer, shown: bool): void {.importc: "QAbstractSpinBox_setGroupSeparatorShown".}
proc fcQAbstractSpinBox_isGroupSeparatorShown(self: pointer): bool {.importc: "QAbstractSpinBox_isGroupSeparatorShown".}
proc fcQAbstractSpinBox_sizeHint(self: pointer): pointer {.importc: "QAbstractSpinBox_sizeHint".}
proc fcQAbstractSpinBox_minimumSizeHint(self: pointer): pointer {.importc: "QAbstractSpinBox_minimumSizeHint".}
proc fcQAbstractSpinBox_interpretText(self: pointer): void {.importc: "QAbstractSpinBox_interpretText".}
proc fcQAbstractSpinBox_event(self: pointer, event: pointer): bool {.importc: "QAbstractSpinBox_event".}
proc fcQAbstractSpinBox_inputMethodQuery(self: pointer, param1: cint): pointer {.importc: "QAbstractSpinBox_inputMethodQuery".}
proc fcQAbstractSpinBox_validate(self: pointer, input: struct_miqt_string, pos: ptr cint): cint {.importc: "QAbstractSpinBox_validate".}
proc fcQAbstractSpinBox_fixup(self: pointer, input: struct_miqt_string): void {.importc: "QAbstractSpinBox_fixup".}
proc fcQAbstractSpinBox_stepBy(self: pointer, steps: cint): void {.importc: "QAbstractSpinBox_stepBy".}
proc fcQAbstractSpinBox_stepUp(self: pointer): void {.importc: "QAbstractSpinBox_stepUp".}
proc fcQAbstractSpinBox_stepDown(self: pointer): void {.importc: "QAbstractSpinBox_stepDown".}
proc fcQAbstractSpinBox_selectAll(self: pointer): void {.importc: "QAbstractSpinBox_selectAll".}
proc fcQAbstractSpinBox_clear(self: pointer): void {.importc: "QAbstractSpinBox_clear".}
proc fcQAbstractSpinBox_editingFinished(self: pointer): void {.importc: "QAbstractSpinBox_editingFinished".}
proc fcQAbstractSpinBox_connect_editingFinished(self: pointer, slot: int, callback: proc (slot: int) {.cdecl.}, release: proc(slot: int) {.cdecl.}) {.importc: "QAbstractSpinBox_connect_editingFinished".}
proc fcQAbstractSpinBox_tr2(s: cstring, c: cstring): struct_miqt_string {.importc: "QAbstractSpinBox_tr2".}
proc fcQAbstractSpinBox_tr3(s: cstring, c: cstring, n: cint): struct_miqt_string {.importc: "QAbstractSpinBox_tr3".}
proc fcQAbstractSpinBox_trUtf82(s: cstring, c: cstring): struct_miqt_string {.importc: "QAbstractSpinBox_trUtf82".}
proc fcQAbstractSpinBox_trUtf83(s: cstring, c: cstring, n: cint): struct_miqt_string {.importc: "QAbstractSpinBox_trUtf83".}
proc fcQAbstractSpinBox_vtbl(self: pointer): pointer {.importc: "QAbstractSpinBox_vtbl".}
proc fcQAbstractSpinBox_vdata(self: pointer): pointer {.importc: "QAbstractSpinBox_vdata".}
type cQAbstractSpinBoxVTable {.pure.} = object
  destructor*: proc(self: pointer) {.cdecl, raises:[], gcsafe.}
  metaObject*: proc(self: pointer): pointer {.cdecl, raises: [], gcsafe.}
  metacast*: proc(self: pointer, param1: cstring): pointer {.cdecl, raises: [], gcsafe.}
  metacall*: proc(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.cdecl, raises: [], gcsafe.}
  sizeHint*: proc(self: pointer): pointer {.cdecl, raises: [], gcsafe.}
  minimumSizeHint*: proc(self: pointer): pointer {.cdecl, raises: [], gcsafe.}
  event*: proc(self: pointer, event: pointer): bool {.cdecl, raises: [], gcsafe.}
  inputMethodQuery*: proc(self: pointer, param1: cint): pointer {.cdecl, raises: [], gcsafe.}
  validate*: proc(self: pointer, input: struct_miqt_string, pos: ptr cint): cint {.cdecl, raises: [], gcsafe.}
  fixup*: proc(self: pointer, input: struct_miqt_string): void {.cdecl, raises: [], gcsafe.}
  stepBy*: proc(self: pointer, steps: cint): void {.cdecl, raises: [], gcsafe.}
  clear*: proc(self: pointer): void {.cdecl, raises: [], gcsafe.}
  resizeEvent*: proc(self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  keyPressEvent*: proc(self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  keyReleaseEvent*: proc(self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  wheelEvent*: proc(self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  focusInEvent*: proc(self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  focusOutEvent*: proc(self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  contextMenuEvent*: proc(self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  changeEvent*: proc(self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  closeEvent*: proc(self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  hideEvent*: proc(self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  mousePressEvent*: proc(self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  mouseReleaseEvent*: proc(self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  mouseMoveEvent*: proc(self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  timerEvent*: proc(self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  paintEvent*: proc(self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  showEvent*: proc(self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  stepEnabled*: proc(self: pointer): cint {.cdecl, raises: [], gcsafe.}
  devType*: proc(self: pointer): cint {.cdecl, raises: [], gcsafe.}
  setVisible*: proc(self: pointer, visible: bool): void {.cdecl, raises: [], gcsafe.}
  heightForWidth*: proc(self: pointer, param1: cint): cint {.cdecl, raises: [], gcsafe.}
  hasHeightForWidth*: proc(self: pointer): bool {.cdecl, raises: [], gcsafe.}
  paintEngine*: proc(self: pointer): pointer {.cdecl, raises: [], gcsafe.}
  mouseDoubleClickEvent*: proc(self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  enterEvent*: proc(self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  leaveEvent*: proc(self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  moveEvent*: proc(self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  tabletEvent*: proc(self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  actionEvent*: proc(self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  dragEnterEvent*: proc(self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  dragMoveEvent*: proc(self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  dragLeaveEvent*: proc(self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  dropEvent*: proc(self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  nativeEvent*: proc(self: pointer, eventType: struct_miqt_string, message: pointer, resultVal: ptr clong): bool {.cdecl, raises: [], gcsafe.}
  metric*: proc(self: pointer, param1: cint): cint {.cdecl, raises: [], gcsafe.}
  initPainter*: proc(self: pointer, painter: pointer): void {.cdecl, raises: [], gcsafe.}
  redirected*: proc(self: pointer, offset: pointer): pointer {.cdecl, raises: [], gcsafe.}
  sharedPainter*: proc(self: pointer): pointer {.cdecl, raises: [], gcsafe.}
  inputMethodEvent*: proc(self: pointer, param1: pointer): void {.cdecl, raises: [], gcsafe.}
  focusNextPrevChild*: proc(self: pointer, next: bool): bool {.cdecl, raises: [], gcsafe.}
  eventFilter*: proc(self: pointer, watched: pointer, event: pointer): bool {.cdecl, raises: [], gcsafe.}
  childEvent*: proc(self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  customEvent*: proc(self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  connectNotify*: proc(self: pointer, signal: pointer): void {.cdecl, raises: [], gcsafe.}
  disconnectNotify*: proc(self: pointer, signal: pointer): void {.cdecl, raises: [], gcsafe.}
proc fcQAbstractSpinBox_virtualbase_metaObject(self: pointer): pointer {.importc: "QAbstractSpinBox_virtualbase_metaObject".}
proc fcQAbstractSpinBox_virtualbase_metacast(self: pointer, param1: cstring): pointer {.importc: "QAbstractSpinBox_virtualbase_metacast".}
proc fcQAbstractSpinBox_virtualbase_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.importc: "QAbstractSpinBox_virtualbase_metacall".}
proc fcQAbstractSpinBox_virtualbase_sizeHint(self: pointer): pointer {.importc: "QAbstractSpinBox_virtualbase_sizeHint".}
proc fcQAbstractSpinBox_virtualbase_minimumSizeHint(self: pointer): pointer {.importc: "QAbstractSpinBox_virtualbase_minimumSizeHint".}
proc fcQAbstractSpinBox_virtualbase_event(self: pointer, event: pointer): bool {.importc: "QAbstractSpinBox_virtualbase_event".}
proc fcQAbstractSpinBox_virtualbase_inputMethodQuery(self: pointer, param1: cint): pointer {.importc: "QAbstractSpinBox_virtualbase_inputMethodQuery".}
proc fcQAbstractSpinBox_virtualbase_validate(self: pointer, input: struct_miqt_string, pos: ptr cint): cint {.importc: "QAbstractSpinBox_virtualbase_validate".}
proc fcQAbstractSpinBox_virtualbase_fixup(self: pointer, input: struct_miqt_string): void {.importc: "QAbstractSpinBox_virtualbase_fixup".}
proc fcQAbstractSpinBox_virtualbase_stepBy(self: pointer, steps: cint): void {.importc: "QAbstractSpinBox_virtualbase_stepBy".}
proc fcQAbstractSpinBox_virtualbase_clear(self: pointer): void {.importc: "QAbstractSpinBox_virtualbase_clear".}
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
proc fcQAbstractSpinBox_virtualbase_stepEnabled(self: pointer): cint {.importc: "QAbstractSpinBox_virtualbase_stepEnabled".}
proc fcQAbstractSpinBox_virtualbase_devType(self: pointer): cint {.importc: "QAbstractSpinBox_virtualbase_devType".}
proc fcQAbstractSpinBox_virtualbase_setVisible(self: pointer, visible: bool): void {.importc: "QAbstractSpinBox_virtualbase_setVisible".}
proc fcQAbstractSpinBox_virtualbase_heightForWidth(self: pointer, param1: cint): cint {.importc: "QAbstractSpinBox_virtualbase_heightForWidth".}
proc fcQAbstractSpinBox_virtualbase_hasHeightForWidth(self: pointer): bool {.importc: "QAbstractSpinBox_virtualbase_hasHeightForWidth".}
proc fcQAbstractSpinBox_virtualbase_paintEngine(self: pointer): pointer {.importc: "QAbstractSpinBox_virtualbase_paintEngine".}
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
proc fcQAbstractSpinBox_virtualbase_sharedPainter(self: pointer): pointer {.importc: "QAbstractSpinBox_virtualbase_sharedPainter".}
proc fcQAbstractSpinBox_virtualbase_inputMethodEvent(self: pointer, param1: pointer): void {.importc: "QAbstractSpinBox_virtualbase_inputMethodEvent".}
proc fcQAbstractSpinBox_virtualbase_focusNextPrevChild(self: pointer, next: bool): bool {.importc: "QAbstractSpinBox_virtualbase_focusNextPrevChild".}
proc fcQAbstractSpinBox_virtualbase_eventFilter(self: pointer, watched: pointer, event: pointer): bool {.importc: "QAbstractSpinBox_virtualbase_eventFilter".}
proc fcQAbstractSpinBox_virtualbase_childEvent(self: pointer, event: pointer): void {.importc: "QAbstractSpinBox_virtualbase_childEvent".}
proc fcQAbstractSpinBox_virtualbase_customEvent(self: pointer, event: pointer): void {.importc: "QAbstractSpinBox_virtualbase_customEvent".}
proc fcQAbstractSpinBox_virtualbase_connectNotify(self: pointer, signal: pointer): void {.importc: "QAbstractSpinBox_virtualbase_connectNotify".}
proc fcQAbstractSpinBox_virtualbase_disconnectNotify(self: pointer, signal: pointer): void {.importc: "QAbstractSpinBox_virtualbase_disconnectNotify".}
proc fcQAbstractSpinBox_protectedbase_initStyleOption(self: pointer, option: pointer): void {.importc: "QAbstractSpinBox_protectedbase_initStyleOption".}
proc fcQAbstractSpinBox_protectedbase_lineEdit(self: pointer): pointer {.importc: "QAbstractSpinBox_protectedbase_lineEdit".}
proc fcQAbstractSpinBox_protectedbase_setLineEdit(self: pointer, edit: pointer): void {.importc: "QAbstractSpinBox_protectedbase_setLineEdit".}
proc fcQAbstractSpinBox_protectedbase_updateMicroFocus(self: pointer): void {.importc: "QAbstractSpinBox_protectedbase_updateMicroFocus".}
proc fcQAbstractSpinBox_protectedbase_create(self: pointer): void {.importc: "QAbstractSpinBox_protectedbase_create".}
proc fcQAbstractSpinBox_protectedbase_destroy(self: pointer): void {.importc: "QAbstractSpinBox_protectedbase_destroy".}
proc fcQAbstractSpinBox_protectedbase_focusNextChild(self: pointer): bool {.importc: "QAbstractSpinBox_protectedbase_focusNextChild".}
proc fcQAbstractSpinBox_protectedbase_focusPreviousChild(self: pointer): bool {.importc: "QAbstractSpinBox_protectedbase_focusPreviousChild".}
proc fcQAbstractSpinBox_protectedbase_sender(self: pointer): pointer {.importc: "QAbstractSpinBox_protectedbase_sender".}
proc fcQAbstractSpinBox_protectedbase_senderSignalIndex(self: pointer): cint {.importc: "QAbstractSpinBox_protectedbase_senderSignalIndex".}
proc fcQAbstractSpinBox_protectedbase_receivers(self: pointer, signal: cstring): cint {.importc: "QAbstractSpinBox_protectedbase_receivers".}
proc fcQAbstractSpinBox_protectedbase_isSignalConnected(self: pointer, signal: pointer): bool {.importc: "QAbstractSpinBox_protectedbase_isSignalConnected".}
proc fcQAbstractSpinBox_new(vtbl, vdata: pointer, parent: pointer): ptr cQAbstractSpinBox {.importc: "QAbstractSpinBox_new".}
proc fcQAbstractSpinBox_new2(vtbl, vdata: pointer): ptr cQAbstractSpinBox {.importc: "QAbstractSpinBox_new2".}
proc fcQAbstractSpinBox_staticMetaObject(): pointer {.importc: "QAbstractSpinBox_staticMetaObject".}

proc metaObject*(self: gen_qabstractspinbox_types.QAbstractSpinBox): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQAbstractSpinBox_metaObject(self.h), owned: false)

proc metacast*(self: gen_qabstractspinbox_types.QAbstractSpinBox, param1: cstring): pointer =
  fcQAbstractSpinBox_metacast(self.h, param1)

proc metacall*(self: gen_qabstractspinbox_types.QAbstractSpinBox, param1: cint, param2: cint, param3: pointer): cint =
  fcQAbstractSpinBox_metacall(self.h, cint(param1), param2, param3)

proc tr*(_: type gen_qabstractspinbox_types.QAbstractSpinBox, s: cstring): string =
  let v_ms = fcQAbstractSpinBox_tr(s)
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

proc trUtf8*(_: type gen_qabstractspinbox_types.QAbstractSpinBox, s: cstring): string =
  let v_ms = fcQAbstractSpinBox_trUtf8(s)
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

proc buttonSymbols*(self: gen_qabstractspinbox_types.QAbstractSpinBox): cint =
  cint(fcQAbstractSpinBox_buttonSymbols(self.h))

proc setButtonSymbols*(self: gen_qabstractspinbox_types.QAbstractSpinBox, bs: cint): void =
  fcQAbstractSpinBox_setButtonSymbols(self.h, cint(bs))

proc setCorrectionMode*(self: gen_qabstractspinbox_types.QAbstractSpinBox, cm: cint): void =
  fcQAbstractSpinBox_setCorrectionMode(self.h, cint(cm))

proc correctionMode*(self: gen_qabstractspinbox_types.QAbstractSpinBox): cint =
  cint(fcQAbstractSpinBox_correctionMode(self.h))

proc hasAcceptableInput*(self: gen_qabstractspinbox_types.QAbstractSpinBox): bool =
  fcQAbstractSpinBox_hasAcceptableInput(self.h)

proc text*(self: gen_qabstractspinbox_types.QAbstractSpinBox): string =
  let v_ms = fcQAbstractSpinBox_text(self.h)
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

proc specialValueText*(self: gen_qabstractspinbox_types.QAbstractSpinBox): string =
  let v_ms = fcQAbstractSpinBox_specialValueText(self.h)
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

proc setSpecialValueText*(self: gen_qabstractspinbox_types.QAbstractSpinBox, txt: openArray[char]): void =
  fcQAbstractSpinBox_setSpecialValueText(self.h, struct_miqt_string(data: if len(txt) > 0: addr txt[0] else: nil, len: csize_t(len(txt))))

proc wrapping*(self: gen_qabstractspinbox_types.QAbstractSpinBox): bool =
  fcQAbstractSpinBox_wrapping(self.h)

proc setWrapping*(self: gen_qabstractspinbox_types.QAbstractSpinBox, w: bool): void =
  fcQAbstractSpinBox_setWrapping(self.h, w)

proc setReadOnly*(self: gen_qabstractspinbox_types.QAbstractSpinBox, r: bool): void =
  fcQAbstractSpinBox_setReadOnly(self.h, r)

proc isReadOnly*(self: gen_qabstractspinbox_types.QAbstractSpinBox): bool =
  fcQAbstractSpinBox_isReadOnly(self.h)

proc setKeyboardTracking*(self: gen_qabstractspinbox_types.QAbstractSpinBox, kt: bool): void =
  fcQAbstractSpinBox_setKeyboardTracking(self.h, kt)

proc keyboardTracking*(self: gen_qabstractspinbox_types.QAbstractSpinBox): bool =
  fcQAbstractSpinBox_keyboardTracking(self.h)

proc setAlignment*(self: gen_qabstractspinbox_types.QAbstractSpinBox, flag: cint): void =
  fcQAbstractSpinBox_setAlignment(self.h, cint(flag))

proc alignment*(self: gen_qabstractspinbox_types.QAbstractSpinBox): cint =
  cint(fcQAbstractSpinBox_alignment(self.h))

proc setFrame*(self: gen_qabstractspinbox_types.QAbstractSpinBox, frame: bool): void =
  fcQAbstractSpinBox_setFrame(self.h, frame)

proc hasFrame*(self: gen_qabstractspinbox_types.QAbstractSpinBox): bool =
  fcQAbstractSpinBox_hasFrame(self.h)

proc setAccelerated*(self: gen_qabstractspinbox_types.QAbstractSpinBox, on: bool): void =
  fcQAbstractSpinBox_setAccelerated(self.h, on)

proc isAccelerated*(self: gen_qabstractspinbox_types.QAbstractSpinBox): bool =
  fcQAbstractSpinBox_isAccelerated(self.h)

proc setGroupSeparatorShown*(self: gen_qabstractspinbox_types.QAbstractSpinBox, shown: bool): void =
  fcQAbstractSpinBox_setGroupSeparatorShown(self.h, shown)

proc isGroupSeparatorShown*(self: gen_qabstractspinbox_types.QAbstractSpinBox): bool =
  fcQAbstractSpinBox_isGroupSeparatorShown(self.h)

proc sizeHint*(self: gen_qabstractspinbox_types.QAbstractSpinBox): gen_qsize_types.QSize =
  gen_qsize_types.QSize(h: fcQAbstractSpinBox_sizeHint(self.h), owned: true)

proc minimumSizeHint*(self: gen_qabstractspinbox_types.QAbstractSpinBox): gen_qsize_types.QSize =
  gen_qsize_types.QSize(h: fcQAbstractSpinBox_minimumSizeHint(self.h), owned: true)

proc interpretText*(self: gen_qabstractspinbox_types.QAbstractSpinBox): void =
  fcQAbstractSpinBox_interpretText(self.h)

proc event*(self: gen_qabstractspinbox_types.QAbstractSpinBox, event: gen_qcoreevent_types.QEvent): bool =
  fcQAbstractSpinBox_event(self.h, event.h)

proc inputMethodQuery*(self: gen_qabstractspinbox_types.QAbstractSpinBox, param1: cint): gen_qvariant_types.QVariant =
  gen_qvariant_types.QVariant(h: fcQAbstractSpinBox_inputMethodQuery(self.h, cint(param1)), owned: true)

proc validate*(self: gen_qabstractspinbox_types.QAbstractSpinBox, input: openArray[char], pos: ptr cint): cint =
  cint(fcQAbstractSpinBox_validate(self.h, struct_miqt_string(data: if len(input) > 0: addr input[0] else: nil, len: csize_t(len(input))), pos))

proc fixup*(self: gen_qabstractspinbox_types.QAbstractSpinBox, input: openArray[char]): void =
  fcQAbstractSpinBox_fixup(self.h, struct_miqt_string(data: if len(input) > 0: addr input[0] else: nil, len: csize_t(len(input))))

proc stepBy*(self: gen_qabstractspinbox_types.QAbstractSpinBox, steps: cint): void =
  fcQAbstractSpinBox_stepBy(self.h, steps)

proc stepUp*(self: gen_qabstractspinbox_types.QAbstractSpinBox): void =
  fcQAbstractSpinBox_stepUp(self.h)

proc stepDown*(self: gen_qabstractspinbox_types.QAbstractSpinBox): void =
  fcQAbstractSpinBox_stepDown(self.h)

proc selectAll*(self: gen_qabstractspinbox_types.QAbstractSpinBox): void =
  fcQAbstractSpinBox_selectAll(self.h)

proc clear*(self: gen_qabstractspinbox_types.QAbstractSpinBox): void =
  fcQAbstractSpinBox_clear(self.h)

proc editingFinished*(self: gen_qabstractspinbox_types.QAbstractSpinBox): void =
  fcQAbstractSpinBox_editingFinished(self.h)

type QAbstractSpinBoxeditingFinishedSlot* = proc()
proc cQAbstractSpinBox_slot_callback_editingFinished(slot: int) {.cdecl.} =
  let nimfunc = cast[ptr QAbstractSpinBoxeditingFinishedSlot](cast[pointer](slot))
  nimfunc[]()

proc cQAbstractSpinBox_slot_callback_editingFinished_release(slot: int) {.cdecl.} =
  let nimfunc = cast[ref QAbstractSpinBoxeditingFinishedSlot](cast[pointer](slot))
  GC_unref(nimfunc)

proc oneditingFinished*(self: gen_qabstractspinbox_types.QAbstractSpinBox, slot: QAbstractSpinBoxeditingFinishedSlot) =
  var tmp = new QAbstractSpinBoxeditingFinishedSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQAbstractSpinBox_connect_editingFinished(self.h, cast[int](addr tmp[]), cQAbstractSpinBox_slot_callback_editingFinished, cQAbstractSpinBox_slot_callback_editingFinished_release)

proc tr*(_: type gen_qabstractspinbox_types.QAbstractSpinBox, s: cstring, c: cstring): string =
  let v_ms = fcQAbstractSpinBox_tr2(s, c)
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

proc tr*(_: type gen_qabstractspinbox_types.QAbstractSpinBox, s: cstring, c: cstring, n: cint): string =
  let v_ms = fcQAbstractSpinBox_tr3(s, c, n)
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

proc trUtf8*(_: type gen_qabstractspinbox_types.QAbstractSpinBox, s: cstring, c: cstring): string =
  let v_ms = fcQAbstractSpinBox_trUtf82(s, c)
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

proc trUtf8*(_: type gen_qabstractspinbox_types.QAbstractSpinBox, s: cstring, c: cstring, n: cint): string =
  let v_ms = fcQAbstractSpinBox_trUtf83(s, c, n)
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

type QAbstractSpinBoxmetaObjectProc* = proc(self: QAbstractSpinBox): gen_qobjectdefs_types.QMetaObject {.raises: [], gcsafe.}
type QAbstractSpinBoxmetacastProc* = proc(self: QAbstractSpinBox, param1: cstring): pointer {.raises: [], gcsafe.}
type QAbstractSpinBoxmetacallProc* = proc(self: QAbstractSpinBox, param1: cint, param2: cint, param3: pointer): cint {.raises: [], gcsafe.}
type QAbstractSpinBoxsizeHintProc* = proc(self: QAbstractSpinBox): gen_qsize_types.QSize {.raises: [], gcsafe.}
type QAbstractSpinBoxminimumSizeHintProc* = proc(self: QAbstractSpinBox): gen_qsize_types.QSize {.raises: [], gcsafe.}
type QAbstractSpinBoxeventProc* = proc(self: QAbstractSpinBox, event: gen_qcoreevent_types.QEvent): bool {.raises: [], gcsafe.}
type QAbstractSpinBoxinputMethodQueryProc* = proc(self: QAbstractSpinBox, param1: cint): gen_qvariant_types.QVariant {.raises: [], gcsafe.}
type QAbstractSpinBoxvalidateProc* = proc(self: QAbstractSpinBox, input: openArray[char], pos: ptr cint): cint {.raises: [], gcsafe.}
type QAbstractSpinBoxfixupProc* = proc(self: QAbstractSpinBox, input: openArray[char]): void {.raises: [], gcsafe.}
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
type QAbstractSpinBoxnativeEventProc* = proc(self: QAbstractSpinBox, eventType: openArray[byte], message: pointer, resultVal: ptr clong): bool {.raises: [], gcsafe.}
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
proc QAbstractSpinBoxmetaObject*(self: gen_qabstractspinbox_types.QAbstractSpinBox): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQAbstractSpinBox_virtualbase_metaObject(self.h), owned: false)

proc cQAbstractSpinBox_vtable_callback_metaObject(self: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QAbstractSpinBoxVTable](fcQAbstractSpinBox_vdata(self))
  let self = QAbstractSpinBox(h: self)
  var virtualReturn = vtbl[].metaObject(self)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc QAbstractSpinBoxmetacast*(self: gen_qabstractspinbox_types.QAbstractSpinBox, param1: cstring): pointer =
  fcQAbstractSpinBox_virtualbase_metacast(self.h, param1)

proc cQAbstractSpinBox_vtable_callback_metacast(self: pointer, param1: cstring): pointer {.cdecl.} =
  let vtbl = cast[ptr QAbstractSpinBoxVTable](fcQAbstractSpinBox_vdata(self))
  let self = QAbstractSpinBox(h: self)
  let slotval1 = (param1)
  var virtualReturn = vtbl[].metacast(self, slotval1)
  virtualReturn

proc QAbstractSpinBoxmetacall*(self: gen_qabstractspinbox_types.QAbstractSpinBox, param1: cint, param2: cint, param3: pointer): cint =
  fcQAbstractSpinBox_virtualbase_metacall(self.h, cint(param1), param2, param3)

proc cQAbstractSpinBox_vtable_callback_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.cdecl.} =
  let vtbl = cast[ptr QAbstractSpinBoxVTable](fcQAbstractSpinBox_vdata(self))
  let self = QAbstractSpinBox(h: self)
  let slotval1 = cint(param1)
  let slotval2 = param2
  let slotval3 = param3
  var virtualReturn = vtbl[].metacall(self, slotval1, slotval2, slotval3)
  virtualReturn

proc QAbstractSpinBoxsizeHint*(self: gen_qabstractspinbox_types.QAbstractSpinBox): gen_qsize_types.QSize =
  gen_qsize_types.QSize(h: fcQAbstractSpinBox_virtualbase_sizeHint(self.h), owned: true)

proc cQAbstractSpinBox_vtable_callback_sizeHint(self: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QAbstractSpinBoxVTable](fcQAbstractSpinBox_vdata(self))
  let self = QAbstractSpinBox(h: self)
  var virtualReturn = vtbl[].sizeHint(self)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc QAbstractSpinBoxminimumSizeHint*(self: gen_qabstractspinbox_types.QAbstractSpinBox): gen_qsize_types.QSize =
  gen_qsize_types.QSize(h: fcQAbstractSpinBox_virtualbase_minimumSizeHint(self.h), owned: true)

proc cQAbstractSpinBox_vtable_callback_minimumSizeHint(self: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QAbstractSpinBoxVTable](fcQAbstractSpinBox_vdata(self))
  let self = QAbstractSpinBox(h: self)
  var virtualReturn = vtbl[].minimumSizeHint(self)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc QAbstractSpinBoxevent*(self: gen_qabstractspinbox_types.QAbstractSpinBox, event: gen_qcoreevent_types.QEvent): bool =
  fcQAbstractSpinBox_virtualbase_event(self.h, event.h)

proc cQAbstractSpinBox_vtable_callback_event(self: pointer, event: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QAbstractSpinBoxVTable](fcQAbstractSpinBox_vdata(self))
  let self = QAbstractSpinBox(h: self)
  let slotval1 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  var virtualReturn = vtbl[].event(self, slotval1)
  virtualReturn

proc QAbstractSpinBoxinputMethodQuery*(self: gen_qabstractspinbox_types.QAbstractSpinBox, param1: cint): gen_qvariant_types.QVariant =
  gen_qvariant_types.QVariant(h: fcQAbstractSpinBox_virtualbase_inputMethodQuery(self.h, cint(param1)), owned: true)

proc cQAbstractSpinBox_vtable_callback_inputMethodQuery(self: pointer, param1: cint): pointer {.cdecl.} =
  let vtbl = cast[ptr QAbstractSpinBoxVTable](fcQAbstractSpinBox_vdata(self))
  let self = QAbstractSpinBox(h: self)
  let slotval1 = cint(param1)
  var virtualReturn = vtbl[].inputMethodQuery(self, slotval1)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc QAbstractSpinBoxvalidate*(self: gen_qabstractspinbox_types.QAbstractSpinBox, input: openArray[char], pos: ptr cint): cint =
  cint(fcQAbstractSpinBox_virtualbase_validate(self.h, struct_miqt_string(data: if len(input) > 0: addr input[0] else: nil, len: csize_t(len(input))), pos))

proc cQAbstractSpinBox_vtable_callback_validate(self: pointer, input: struct_miqt_string, pos: ptr cint): cint {.cdecl.} =
  let vtbl = cast[ptr QAbstractSpinBoxVTable](fcQAbstractSpinBox_vdata(self))
  let self = QAbstractSpinBox(h: self)
  let vinput_ms = input
  let vinputx_ret = string.fromBytes(vinput_ms)
  c_free(vinput_ms.data)
  let slotval1 = vinputx_ret
  let slotval2 = pos
  var virtualReturn = vtbl[].validate(self, slotval1, slotval2)
  cint(virtualReturn)

proc QAbstractSpinBoxfixup*(self: gen_qabstractspinbox_types.QAbstractSpinBox, input: openArray[char]): void =
  fcQAbstractSpinBox_virtualbase_fixup(self.h, struct_miqt_string(data: if len(input) > 0: addr input[0] else: nil, len: csize_t(len(input))))

proc cQAbstractSpinBox_vtable_callback_fixup(self: pointer, input: struct_miqt_string): void {.cdecl.} =
  let vtbl = cast[ptr QAbstractSpinBoxVTable](fcQAbstractSpinBox_vdata(self))
  let self = QAbstractSpinBox(h: self)
  let vinput_ms = input
  let vinputx_ret = string.fromBytes(vinput_ms)
  c_free(vinput_ms.data)
  let slotval1 = vinputx_ret
  vtbl[].fixup(self, slotval1)

proc QAbstractSpinBoxstepBy*(self: gen_qabstractspinbox_types.QAbstractSpinBox, steps: cint): void =
  fcQAbstractSpinBox_virtualbase_stepBy(self.h, steps)

proc cQAbstractSpinBox_vtable_callback_stepBy(self: pointer, steps: cint): void {.cdecl.} =
  let vtbl = cast[ptr QAbstractSpinBoxVTable](fcQAbstractSpinBox_vdata(self))
  let self = QAbstractSpinBox(h: self)
  let slotval1 = steps
  vtbl[].stepBy(self, slotval1)

proc QAbstractSpinBoxclear*(self: gen_qabstractspinbox_types.QAbstractSpinBox): void =
  fcQAbstractSpinBox_virtualbase_clear(self.h)

proc cQAbstractSpinBox_vtable_callback_clear(self: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QAbstractSpinBoxVTable](fcQAbstractSpinBox_vdata(self))
  let self = QAbstractSpinBox(h: self)
  vtbl[].clear(self)

proc QAbstractSpinBoxresizeEvent*(self: gen_qabstractspinbox_types.QAbstractSpinBox, event: gen_qevent_types.QResizeEvent): void =
  fcQAbstractSpinBox_virtualbase_resizeEvent(self.h, event.h)

proc cQAbstractSpinBox_vtable_callback_resizeEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QAbstractSpinBoxVTable](fcQAbstractSpinBox_vdata(self))
  let self = QAbstractSpinBox(h: self)
  let slotval1 = gen_qevent_types.QResizeEvent(h: event, owned: false)
  vtbl[].resizeEvent(self, slotval1)

proc QAbstractSpinBoxkeyPressEvent*(self: gen_qabstractspinbox_types.QAbstractSpinBox, event: gen_qevent_types.QKeyEvent): void =
  fcQAbstractSpinBox_virtualbase_keyPressEvent(self.h, event.h)

proc cQAbstractSpinBox_vtable_callback_keyPressEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QAbstractSpinBoxVTable](fcQAbstractSpinBox_vdata(self))
  let self = QAbstractSpinBox(h: self)
  let slotval1 = gen_qevent_types.QKeyEvent(h: event, owned: false)
  vtbl[].keyPressEvent(self, slotval1)

proc QAbstractSpinBoxkeyReleaseEvent*(self: gen_qabstractspinbox_types.QAbstractSpinBox, event: gen_qevent_types.QKeyEvent): void =
  fcQAbstractSpinBox_virtualbase_keyReleaseEvent(self.h, event.h)

proc cQAbstractSpinBox_vtable_callback_keyReleaseEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QAbstractSpinBoxVTable](fcQAbstractSpinBox_vdata(self))
  let self = QAbstractSpinBox(h: self)
  let slotval1 = gen_qevent_types.QKeyEvent(h: event, owned: false)
  vtbl[].keyReleaseEvent(self, slotval1)

proc QAbstractSpinBoxwheelEvent*(self: gen_qabstractspinbox_types.QAbstractSpinBox, event: gen_qevent_types.QWheelEvent): void =
  fcQAbstractSpinBox_virtualbase_wheelEvent(self.h, event.h)

proc cQAbstractSpinBox_vtable_callback_wheelEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QAbstractSpinBoxVTable](fcQAbstractSpinBox_vdata(self))
  let self = QAbstractSpinBox(h: self)
  let slotval1 = gen_qevent_types.QWheelEvent(h: event, owned: false)
  vtbl[].wheelEvent(self, slotval1)

proc QAbstractSpinBoxfocusInEvent*(self: gen_qabstractspinbox_types.QAbstractSpinBox, event: gen_qevent_types.QFocusEvent): void =
  fcQAbstractSpinBox_virtualbase_focusInEvent(self.h, event.h)

proc cQAbstractSpinBox_vtable_callback_focusInEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QAbstractSpinBoxVTable](fcQAbstractSpinBox_vdata(self))
  let self = QAbstractSpinBox(h: self)
  let slotval1 = gen_qevent_types.QFocusEvent(h: event, owned: false)
  vtbl[].focusInEvent(self, slotval1)

proc QAbstractSpinBoxfocusOutEvent*(self: gen_qabstractspinbox_types.QAbstractSpinBox, event: gen_qevent_types.QFocusEvent): void =
  fcQAbstractSpinBox_virtualbase_focusOutEvent(self.h, event.h)

proc cQAbstractSpinBox_vtable_callback_focusOutEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QAbstractSpinBoxVTable](fcQAbstractSpinBox_vdata(self))
  let self = QAbstractSpinBox(h: self)
  let slotval1 = gen_qevent_types.QFocusEvent(h: event, owned: false)
  vtbl[].focusOutEvent(self, slotval1)

proc QAbstractSpinBoxcontextMenuEvent*(self: gen_qabstractspinbox_types.QAbstractSpinBox, event: gen_qevent_types.QContextMenuEvent): void =
  fcQAbstractSpinBox_virtualbase_contextMenuEvent(self.h, event.h)

proc cQAbstractSpinBox_vtable_callback_contextMenuEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QAbstractSpinBoxVTable](fcQAbstractSpinBox_vdata(self))
  let self = QAbstractSpinBox(h: self)
  let slotval1 = gen_qevent_types.QContextMenuEvent(h: event, owned: false)
  vtbl[].contextMenuEvent(self, slotval1)

proc QAbstractSpinBoxchangeEvent*(self: gen_qabstractspinbox_types.QAbstractSpinBox, event: gen_qcoreevent_types.QEvent): void =
  fcQAbstractSpinBox_virtualbase_changeEvent(self.h, event.h)

proc cQAbstractSpinBox_vtable_callback_changeEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QAbstractSpinBoxVTable](fcQAbstractSpinBox_vdata(self))
  let self = QAbstractSpinBox(h: self)
  let slotval1 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  vtbl[].changeEvent(self, slotval1)

proc QAbstractSpinBoxcloseEvent*(self: gen_qabstractspinbox_types.QAbstractSpinBox, event: gen_qevent_types.QCloseEvent): void =
  fcQAbstractSpinBox_virtualbase_closeEvent(self.h, event.h)

proc cQAbstractSpinBox_vtable_callback_closeEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QAbstractSpinBoxVTable](fcQAbstractSpinBox_vdata(self))
  let self = QAbstractSpinBox(h: self)
  let slotval1 = gen_qevent_types.QCloseEvent(h: event, owned: false)
  vtbl[].closeEvent(self, slotval1)

proc QAbstractSpinBoxhideEvent*(self: gen_qabstractspinbox_types.QAbstractSpinBox, event: gen_qevent_types.QHideEvent): void =
  fcQAbstractSpinBox_virtualbase_hideEvent(self.h, event.h)

proc cQAbstractSpinBox_vtable_callback_hideEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QAbstractSpinBoxVTable](fcQAbstractSpinBox_vdata(self))
  let self = QAbstractSpinBox(h: self)
  let slotval1 = gen_qevent_types.QHideEvent(h: event, owned: false)
  vtbl[].hideEvent(self, slotval1)

proc QAbstractSpinBoxmousePressEvent*(self: gen_qabstractspinbox_types.QAbstractSpinBox, event: gen_qevent_types.QMouseEvent): void =
  fcQAbstractSpinBox_virtualbase_mousePressEvent(self.h, event.h)

proc cQAbstractSpinBox_vtable_callback_mousePressEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QAbstractSpinBoxVTable](fcQAbstractSpinBox_vdata(self))
  let self = QAbstractSpinBox(h: self)
  let slotval1 = gen_qevent_types.QMouseEvent(h: event, owned: false)
  vtbl[].mousePressEvent(self, slotval1)

proc QAbstractSpinBoxmouseReleaseEvent*(self: gen_qabstractspinbox_types.QAbstractSpinBox, event: gen_qevent_types.QMouseEvent): void =
  fcQAbstractSpinBox_virtualbase_mouseReleaseEvent(self.h, event.h)

proc cQAbstractSpinBox_vtable_callback_mouseReleaseEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QAbstractSpinBoxVTable](fcQAbstractSpinBox_vdata(self))
  let self = QAbstractSpinBox(h: self)
  let slotval1 = gen_qevent_types.QMouseEvent(h: event, owned: false)
  vtbl[].mouseReleaseEvent(self, slotval1)

proc QAbstractSpinBoxmouseMoveEvent*(self: gen_qabstractspinbox_types.QAbstractSpinBox, event: gen_qevent_types.QMouseEvent): void =
  fcQAbstractSpinBox_virtualbase_mouseMoveEvent(self.h, event.h)

proc cQAbstractSpinBox_vtable_callback_mouseMoveEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QAbstractSpinBoxVTable](fcQAbstractSpinBox_vdata(self))
  let self = QAbstractSpinBox(h: self)
  let slotval1 = gen_qevent_types.QMouseEvent(h: event, owned: false)
  vtbl[].mouseMoveEvent(self, slotval1)

proc QAbstractSpinBoxtimerEvent*(self: gen_qabstractspinbox_types.QAbstractSpinBox, event: gen_qcoreevent_types.QTimerEvent): void =
  fcQAbstractSpinBox_virtualbase_timerEvent(self.h, event.h)

proc cQAbstractSpinBox_vtable_callback_timerEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QAbstractSpinBoxVTable](fcQAbstractSpinBox_vdata(self))
  let self = QAbstractSpinBox(h: self)
  let slotval1 = gen_qcoreevent_types.QTimerEvent(h: event, owned: false)
  vtbl[].timerEvent(self, slotval1)

proc QAbstractSpinBoxpaintEvent*(self: gen_qabstractspinbox_types.QAbstractSpinBox, event: gen_qevent_types.QPaintEvent): void =
  fcQAbstractSpinBox_virtualbase_paintEvent(self.h, event.h)

proc cQAbstractSpinBox_vtable_callback_paintEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QAbstractSpinBoxVTable](fcQAbstractSpinBox_vdata(self))
  let self = QAbstractSpinBox(h: self)
  let slotval1 = gen_qevent_types.QPaintEvent(h: event, owned: false)
  vtbl[].paintEvent(self, slotval1)

proc QAbstractSpinBoxshowEvent*(self: gen_qabstractspinbox_types.QAbstractSpinBox, event: gen_qevent_types.QShowEvent): void =
  fcQAbstractSpinBox_virtualbase_showEvent(self.h, event.h)

proc cQAbstractSpinBox_vtable_callback_showEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QAbstractSpinBoxVTable](fcQAbstractSpinBox_vdata(self))
  let self = QAbstractSpinBox(h: self)
  let slotval1 = gen_qevent_types.QShowEvent(h: event, owned: false)
  vtbl[].showEvent(self, slotval1)

proc QAbstractSpinBoxstepEnabled*(self: gen_qabstractspinbox_types.QAbstractSpinBox): cint =
  cint(fcQAbstractSpinBox_virtualbase_stepEnabled(self.h))

proc cQAbstractSpinBox_vtable_callback_stepEnabled(self: pointer): cint {.cdecl.} =
  let vtbl = cast[ptr QAbstractSpinBoxVTable](fcQAbstractSpinBox_vdata(self))
  let self = QAbstractSpinBox(h: self)
  var virtualReturn = vtbl[].stepEnabled(self)
  cint(virtualReturn)

proc QAbstractSpinBoxdevType*(self: gen_qabstractspinbox_types.QAbstractSpinBox): cint =
  fcQAbstractSpinBox_virtualbase_devType(self.h)

proc cQAbstractSpinBox_vtable_callback_devType(self: pointer): cint {.cdecl.} =
  let vtbl = cast[ptr QAbstractSpinBoxVTable](fcQAbstractSpinBox_vdata(self))
  let self = QAbstractSpinBox(h: self)
  var virtualReturn = vtbl[].devType(self)
  virtualReturn

proc QAbstractSpinBoxsetVisible*(self: gen_qabstractspinbox_types.QAbstractSpinBox, visible: bool): void =
  fcQAbstractSpinBox_virtualbase_setVisible(self.h, visible)

proc cQAbstractSpinBox_vtable_callback_setVisible(self: pointer, visible: bool): void {.cdecl.} =
  let vtbl = cast[ptr QAbstractSpinBoxVTable](fcQAbstractSpinBox_vdata(self))
  let self = QAbstractSpinBox(h: self)
  let slotval1 = visible
  vtbl[].setVisible(self, slotval1)

proc QAbstractSpinBoxheightForWidth*(self: gen_qabstractspinbox_types.QAbstractSpinBox, param1: cint): cint =
  fcQAbstractSpinBox_virtualbase_heightForWidth(self.h, param1)

proc cQAbstractSpinBox_vtable_callback_heightForWidth(self: pointer, param1: cint): cint {.cdecl.} =
  let vtbl = cast[ptr QAbstractSpinBoxVTable](fcQAbstractSpinBox_vdata(self))
  let self = QAbstractSpinBox(h: self)
  let slotval1 = param1
  var virtualReturn = vtbl[].heightForWidth(self, slotval1)
  virtualReturn

proc QAbstractSpinBoxhasHeightForWidth*(self: gen_qabstractspinbox_types.QAbstractSpinBox): bool =
  fcQAbstractSpinBox_virtualbase_hasHeightForWidth(self.h)

proc cQAbstractSpinBox_vtable_callback_hasHeightForWidth(self: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QAbstractSpinBoxVTable](fcQAbstractSpinBox_vdata(self))
  let self = QAbstractSpinBox(h: self)
  var virtualReturn = vtbl[].hasHeightForWidth(self)
  virtualReturn

proc QAbstractSpinBoxpaintEngine*(self: gen_qabstractspinbox_types.QAbstractSpinBox): gen_qpaintengine_types.QPaintEngine =
  gen_qpaintengine_types.QPaintEngine(h: fcQAbstractSpinBox_virtualbase_paintEngine(self.h), owned: false)

proc cQAbstractSpinBox_vtable_callback_paintEngine(self: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QAbstractSpinBoxVTable](fcQAbstractSpinBox_vdata(self))
  let self = QAbstractSpinBox(h: self)
  var virtualReturn = vtbl[].paintEngine(self)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc QAbstractSpinBoxmouseDoubleClickEvent*(self: gen_qabstractspinbox_types.QAbstractSpinBox, event: gen_qevent_types.QMouseEvent): void =
  fcQAbstractSpinBox_virtualbase_mouseDoubleClickEvent(self.h, event.h)

proc cQAbstractSpinBox_vtable_callback_mouseDoubleClickEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QAbstractSpinBoxVTable](fcQAbstractSpinBox_vdata(self))
  let self = QAbstractSpinBox(h: self)
  let slotval1 = gen_qevent_types.QMouseEvent(h: event, owned: false)
  vtbl[].mouseDoubleClickEvent(self, slotval1)

proc QAbstractSpinBoxenterEvent*(self: gen_qabstractspinbox_types.QAbstractSpinBox, event: gen_qcoreevent_types.QEvent): void =
  fcQAbstractSpinBox_virtualbase_enterEvent(self.h, event.h)

proc cQAbstractSpinBox_vtable_callback_enterEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QAbstractSpinBoxVTable](fcQAbstractSpinBox_vdata(self))
  let self = QAbstractSpinBox(h: self)
  let slotval1 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  vtbl[].enterEvent(self, slotval1)

proc QAbstractSpinBoxleaveEvent*(self: gen_qabstractspinbox_types.QAbstractSpinBox, event: gen_qcoreevent_types.QEvent): void =
  fcQAbstractSpinBox_virtualbase_leaveEvent(self.h, event.h)

proc cQAbstractSpinBox_vtable_callback_leaveEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QAbstractSpinBoxVTable](fcQAbstractSpinBox_vdata(self))
  let self = QAbstractSpinBox(h: self)
  let slotval1 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  vtbl[].leaveEvent(self, slotval1)

proc QAbstractSpinBoxmoveEvent*(self: gen_qabstractspinbox_types.QAbstractSpinBox, event: gen_qevent_types.QMoveEvent): void =
  fcQAbstractSpinBox_virtualbase_moveEvent(self.h, event.h)

proc cQAbstractSpinBox_vtable_callback_moveEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QAbstractSpinBoxVTable](fcQAbstractSpinBox_vdata(self))
  let self = QAbstractSpinBox(h: self)
  let slotval1 = gen_qevent_types.QMoveEvent(h: event, owned: false)
  vtbl[].moveEvent(self, slotval1)

proc QAbstractSpinBoxtabletEvent*(self: gen_qabstractspinbox_types.QAbstractSpinBox, event: gen_qevent_types.QTabletEvent): void =
  fcQAbstractSpinBox_virtualbase_tabletEvent(self.h, event.h)

proc cQAbstractSpinBox_vtable_callback_tabletEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QAbstractSpinBoxVTable](fcQAbstractSpinBox_vdata(self))
  let self = QAbstractSpinBox(h: self)
  let slotval1 = gen_qevent_types.QTabletEvent(h: event, owned: false)
  vtbl[].tabletEvent(self, slotval1)

proc QAbstractSpinBoxactionEvent*(self: gen_qabstractspinbox_types.QAbstractSpinBox, event: gen_qevent_types.QActionEvent): void =
  fcQAbstractSpinBox_virtualbase_actionEvent(self.h, event.h)

proc cQAbstractSpinBox_vtable_callback_actionEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QAbstractSpinBoxVTable](fcQAbstractSpinBox_vdata(self))
  let self = QAbstractSpinBox(h: self)
  let slotval1 = gen_qevent_types.QActionEvent(h: event, owned: false)
  vtbl[].actionEvent(self, slotval1)

proc QAbstractSpinBoxdragEnterEvent*(self: gen_qabstractspinbox_types.QAbstractSpinBox, event: gen_qevent_types.QDragEnterEvent): void =
  fcQAbstractSpinBox_virtualbase_dragEnterEvent(self.h, event.h)

proc cQAbstractSpinBox_vtable_callback_dragEnterEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QAbstractSpinBoxVTable](fcQAbstractSpinBox_vdata(self))
  let self = QAbstractSpinBox(h: self)
  let slotval1 = gen_qevent_types.QDragEnterEvent(h: event, owned: false)
  vtbl[].dragEnterEvent(self, slotval1)

proc QAbstractSpinBoxdragMoveEvent*(self: gen_qabstractspinbox_types.QAbstractSpinBox, event: gen_qevent_types.QDragMoveEvent): void =
  fcQAbstractSpinBox_virtualbase_dragMoveEvent(self.h, event.h)

proc cQAbstractSpinBox_vtable_callback_dragMoveEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QAbstractSpinBoxVTable](fcQAbstractSpinBox_vdata(self))
  let self = QAbstractSpinBox(h: self)
  let slotval1 = gen_qevent_types.QDragMoveEvent(h: event, owned: false)
  vtbl[].dragMoveEvent(self, slotval1)

proc QAbstractSpinBoxdragLeaveEvent*(self: gen_qabstractspinbox_types.QAbstractSpinBox, event: gen_qevent_types.QDragLeaveEvent): void =
  fcQAbstractSpinBox_virtualbase_dragLeaveEvent(self.h, event.h)

proc cQAbstractSpinBox_vtable_callback_dragLeaveEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QAbstractSpinBoxVTable](fcQAbstractSpinBox_vdata(self))
  let self = QAbstractSpinBox(h: self)
  let slotval1 = gen_qevent_types.QDragLeaveEvent(h: event, owned: false)
  vtbl[].dragLeaveEvent(self, slotval1)

proc QAbstractSpinBoxdropEvent*(self: gen_qabstractspinbox_types.QAbstractSpinBox, event: gen_qevent_types.QDropEvent): void =
  fcQAbstractSpinBox_virtualbase_dropEvent(self.h, event.h)

proc cQAbstractSpinBox_vtable_callback_dropEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QAbstractSpinBoxVTable](fcQAbstractSpinBox_vdata(self))
  let self = QAbstractSpinBox(h: self)
  let slotval1 = gen_qevent_types.QDropEvent(h: event, owned: false)
  vtbl[].dropEvent(self, slotval1)

proc QAbstractSpinBoxnativeEvent*(self: gen_qabstractspinbox_types.QAbstractSpinBox, eventType: openArray[byte], message: pointer, resultVal: ptr clong): bool =
  fcQAbstractSpinBox_virtualbase_nativeEvent(self.h, struct_miqt_string(data: cast[cstring](if len(eventType) == 0: nil else: unsafeAddr eventType[0]), len: csize_t(len(eventType))), message, resultVal)

proc cQAbstractSpinBox_vtable_callback_nativeEvent(self: pointer, eventType: struct_miqt_string, message: pointer, resultVal: ptr clong): bool {.cdecl.} =
  let vtbl = cast[ptr QAbstractSpinBoxVTable](fcQAbstractSpinBox_vdata(self))
  let self = QAbstractSpinBox(h: self)
  var veventType_bytearray = eventType
  var veventTypex_ret = @(toOpenArray(cast[ptr UncheckedArray[byte]](veventType_bytearray.data), 0, int(veventType_bytearray.len)-1))
  c_free(veventType_bytearray.data)
  let slotval1 = veventTypex_ret
  let slotval2 = message
  let slotval3 = resultVal
  var virtualReturn = vtbl[].nativeEvent(self, slotval1, slotval2, slotval3)
  virtualReturn

proc QAbstractSpinBoxmetric*(self: gen_qabstractspinbox_types.QAbstractSpinBox, param1: cint): cint =
  fcQAbstractSpinBox_virtualbase_metric(self.h, cint(param1))

proc cQAbstractSpinBox_vtable_callback_metric(self: pointer, param1: cint): cint {.cdecl.} =
  let vtbl = cast[ptr QAbstractSpinBoxVTable](fcQAbstractSpinBox_vdata(self))
  let self = QAbstractSpinBox(h: self)
  let slotval1 = cint(param1)
  var virtualReturn = vtbl[].metric(self, slotval1)
  virtualReturn

proc QAbstractSpinBoxinitPainter*(self: gen_qabstractspinbox_types.QAbstractSpinBox, painter: gen_qpainter_types.QPainter): void =
  fcQAbstractSpinBox_virtualbase_initPainter(self.h, painter.h)

proc cQAbstractSpinBox_vtable_callback_initPainter(self: pointer, painter: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QAbstractSpinBoxVTable](fcQAbstractSpinBox_vdata(self))
  let self = QAbstractSpinBox(h: self)
  let slotval1 = gen_qpainter_types.QPainter(h: painter, owned: false)
  vtbl[].initPainter(self, slotval1)

proc QAbstractSpinBoxredirected*(self: gen_qabstractspinbox_types.QAbstractSpinBox, offset: gen_qpoint_types.QPoint): gen_qpaintdevice_types.QPaintDevice =
  gen_qpaintdevice_types.QPaintDevice(h: fcQAbstractSpinBox_virtualbase_redirected(self.h, offset.h), owned: false)

proc cQAbstractSpinBox_vtable_callback_redirected(self: pointer, offset: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QAbstractSpinBoxVTable](fcQAbstractSpinBox_vdata(self))
  let self = QAbstractSpinBox(h: self)
  let slotval1 = gen_qpoint_types.QPoint(h: offset, owned: false)
  var virtualReturn = vtbl[].redirected(self, slotval1)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc QAbstractSpinBoxsharedPainter*(self: gen_qabstractspinbox_types.QAbstractSpinBox): gen_qpainter_types.QPainter =
  gen_qpainter_types.QPainter(h: fcQAbstractSpinBox_virtualbase_sharedPainter(self.h), owned: false)

proc cQAbstractSpinBox_vtable_callback_sharedPainter(self: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QAbstractSpinBoxVTable](fcQAbstractSpinBox_vdata(self))
  let self = QAbstractSpinBox(h: self)
  var virtualReturn = vtbl[].sharedPainter(self)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc QAbstractSpinBoxinputMethodEvent*(self: gen_qabstractspinbox_types.QAbstractSpinBox, param1: gen_qevent_types.QInputMethodEvent): void =
  fcQAbstractSpinBox_virtualbase_inputMethodEvent(self.h, param1.h)

proc cQAbstractSpinBox_vtable_callback_inputMethodEvent(self: pointer, param1: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QAbstractSpinBoxVTable](fcQAbstractSpinBox_vdata(self))
  let self = QAbstractSpinBox(h: self)
  let slotval1 = gen_qevent_types.QInputMethodEvent(h: param1, owned: false)
  vtbl[].inputMethodEvent(self, slotval1)

proc QAbstractSpinBoxfocusNextPrevChild*(self: gen_qabstractspinbox_types.QAbstractSpinBox, next: bool): bool =
  fcQAbstractSpinBox_virtualbase_focusNextPrevChild(self.h, next)

proc cQAbstractSpinBox_vtable_callback_focusNextPrevChild(self: pointer, next: bool): bool {.cdecl.} =
  let vtbl = cast[ptr QAbstractSpinBoxVTable](fcQAbstractSpinBox_vdata(self))
  let self = QAbstractSpinBox(h: self)
  let slotval1 = next
  var virtualReturn = vtbl[].focusNextPrevChild(self, slotval1)
  virtualReturn

proc QAbstractSpinBoxeventFilter*(self: gen_qabstractspinbox_types.QAbstractSpinBox, watched: gen_qobject_types.QObject, event: gen_qcoreevent_types.QEvent): bool =
  fcQAbstractSpinBox_virtualbase_eventFilter(self.h, watched.h, event.h)

proc cQAbstractSpinBox_vtable_callback_eventFilter(self: pointer, watched: pointer, event: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QAbstractSpinBoxVTable](fcQAbstractSpinBox_vdata(self))
  let self = QAbstractSpinBox(h: self)
  let slotval1 = gen_qobject_types.QObject(h: watched, owned: false)
  let slotval2 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  var virtualReturn = vtbl[].eventFilter(self, slotval1, slotval2)
  virtualReturn

proc QAbstractSpinBoxchildEvent*(self: gen_qabstractspinbox_types.QAbstractSpinBox, event: gen_qcoreevent_types.QChildEvent): void =
  fcQAbstractSpinBox_virtualbase_childEvent(self.h, event.h)

proc cQAbstractSpinBox_vtable_callback_childEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QAbstractSpinBoxVTable](fcQAbstractSpinBox_vdata(self))
  let self = QAbstractSpinBox(h: self)
  let slotval1 = gen_qcoreevent_types.QChildEvent(h: event, owned: false)
  vtbl[].childEvent(self, slotval1)

proc QAbstractSpinBoxcustomEvent*(self: gen_qabstractspinbox_types.QAbstractSpinBox, event: gen_qcoreevent_types.QEvent): void =
  fcQAbstractSpinBox_virtualbase_customEvent(self.h, event.h)

proc cQAbstractSpinBox_vtable_callback_customEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QAbstractSpinBoxVTable](fcQAbstractSpinBox_vdata(self))
  let self = QAbstractSpinBox(h: self)
  let slotval1 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  vtbl[].customEvent(self, slotval1)

proc QAbstractSpinBoxconnectNotify*(self: gen_qabstractspinbox_types.QAbstractSpinBox, signal: gen_qmetaobject_types.QMetaMethod): void =
  fcQAbstractSpinBox_virtualbase_connectNotify(self.h, signal.h)

proc cQAbstractSpinBox_vtable_callback_connectNotify(self: pointer, signal: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QAbstractSpinBoxVTable](fcQAbstractSpinBox_vdata(self))
  let self = QAbstractSpinBox(h: self)
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal, owned: false)
  vtbl[].connectNotify(self, slotval1)

proc QAbstractSpinBoxdisconnectNotify*(self: gen_qabstractspinbox_types.QAbstractSpinBox, signal: gen_qmetaobject_types.QMetaMethod): void =
  fcQAbstractSpinBox_virtualbase_disconnectNotify(self.h, signal.h)

proc cQAbstractSpinBox_vtable_callback_disconnectNotify(self: pointer, signal: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QAbstractSpinBoxVTable](fcQAbstractSpinBox_vdata(self))
  let self = QAbstractSpinBox(h: self)
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal, owned: false)
  vtbl[].disconnectNotify(self, slotval1)

type VirtualQAbstractSpinBox* {.inheritable.} = ref object of QAbstractSpinBox
  vtbl*: cQAbstractSpinBoxVTable
method metaObject*(self: VirtualQAbstractSpinBox): gen_qobjectdefs_types.QMetaObject {.base.} =
  QAbstractSpinBoxmetaObject(self[])
proc cQAbstractSpinBox_method_callback_metaObject(self: pointer): pointer {.cdecl.} =
  let inst = cast[VirtualQAbstractSpinBox](fcQAbstractSpinBox_vdata(self))
  var virtualReturn = inst.metaObject()
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

method metacast*(self: VirtualQAbstractSpinBox, param1: cstring): pointer {.base.} =
  QAbstractSpinBoxmetacast(self[], param1)
proc cQAbstractSpinBox_method_callback_metacast(self: pointer, param1: cstring): pointer {.cdecl.} =
  let inst = cast[VirtualQAbstractSpinBox](fcQAbstractSpinBox_vdata(self))
  let slotval1 = (param1)
  var virtualReturn = inst.metacast(slotval1)
  virtualReturn

method metacall*(self: VirtualQAbstractSpinBox, param1: cint, param2: cint, param3: pointer): cint {.base.} =
  QAbstractSpinBoxmetacall(self[], param1, param2, param3)
proc cQAbstractSpinBox_method_callback_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.cdecl.} =
  let inst = cast[VirtualQAbstractSpinBox](fcQAbstractSpinBox_vdata(self))
  let slotval1 = cint(param1)
  let slotval2 = param2
  let slotval3 = param3
  var virtualReturn = inst.metacall(slotval1, slotval2, slotval3)
  virtualReturn

method sizeHint*(self: VirtualQAbstractSpinBox): gen_qsize_types.QSize {.base.} =
  QAbstractSpinBoxsizeHint(self[])
proc cQAbstractSpinBox_method_callback_sizeHint(self: pointer): pointer {.cdecl.} =
  let inst = cast[VirtualQAbstractSpinBox](fcQAbstractSpinBox_vdata(self))
  var virtualReturn = inst.sizeHint()
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

method minimumSizeHint*(self: VirtualQAbstractSpinBox): gen_qsize_types.QSize {.base.} =
  QAbstractSpinBoxminimumSizeHint(self[])
proc cQAbstractSpinBox_method_callback_minimumSizeHint(self: pointer): pointer {.cdecl.} =
  let inst = cast[VirtualQAbstractSpinBox](fcQAbstractSpinBox_vdata(self))
  var virtualReturn = inst.minimumSizeHint()
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

method event*(self: VirtualQAbstractSpinBox, event: gen_qcoreevent_types.QEvent): bool {.base.} =
  QAbstractSpinBoxevent(self[], event)
proc cQAbstractSpinBox_method_callback_event(self: pointer, event: pointer): bool {.cdecl.} =
  let inst = cast[VirtualQAbstractSpinBox](fcQAbstractSpinBox_vdata(self))
  let slotval1 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  var virtualReturn = inst.event(slotval1)
  virtualReturn

method inputMethodQuery*(self: VirtualQAbstractSpinBox, param1: cint): gen_qvariant_types.QVariant {.base.} =
  QAbstractSpinBoxinputMethodQuery(self[], param1)
proc cQAbstractSpinBox_method_callback_inputMethodQuery(self: pointer, param1: cint): pointer {.cdecl.} =
  let inst = cast[VirtualQAbstractSpinBox](fcQAbstractSpinBox_vdata(self))
  let slotval1 = cint(param1)
  var virtualReturn = inst.inputMethodQuery(slotval1)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

method validate*(self: VirtualQAbstractSpinBox, input: openArray[char], pos: ptr cint): cint {.base.} =
  QAbstractSpinBoxvalidate(self[], input, pos)
proc cQAbstractSpinBox_method_callback_validate(self: pointer, input: struct_miqt_string, pos: ptr cint): cint {.cdecl.} =
  let inst = cast[VirtualQAbstractSpinBox](fcQAbstractSpinBox_vdata(self))
  let vinput_ms = input
  let vinputx_ret = string.fromBytes(vinput_ms)
  c_free(vinput_ms.data)
  let slotval1 = vinputx_ret
  let slotval2 = pos
  var virtualReturn = inst.validate(slotval1, slotval2)
  cint(virtualReturn)

method fixup*(self: VirtualQAbstractSpinBox, input: openArray[char]): void {.base.} =
  QAbstractSpinBoxfixup(self[], input)
proc cQAbstractSpinBox_method_callback_fixup(self: pointer, input: struct_miqt_string): void {.cdecl.} =
  let inst = cast[VirtualQAbstractSpinBox](fcQAbstractSpinBox_vdata(self))
  let vinput_ms = input
  let vinputx_ret = string.fromBytes(vinput_ms)
  c_free(vinput_ms.data)
  let slotval1 = vinputx_ret
  inst.fixup(slotval1)

method stepBy*(self: VirtualQAbstractSpinBox, steps: cint): void {.base.} =
  QAbstractSpinBoxstepBy(self[], steps)
proc cQAbstractSpinBox_method_callback_stepBy(self: pointer, steps: cint): void {.cdecl.} =
  let inst = cast[VirtualQAbstractSpinBox](fcQAbstractSpinBox_vdata(self))
  let slotval1 = steps
  inst.stepBy(slotval1)

method clear*(self: VirtualQAbstractSpinBox): void {.base.} =
  QAbstractSpinBoxclear(self[])
proc cQAbstractSpinBox_method_callback_clear(self: pointer): void {.cdecl.} =
  let inst = cast[VirtualQAbstractSpinBox](fcQAbstractSpinBox_vdata(self))
  inst.clear()

method resizeEvent*(self: VirtualQAbstractSpinBox, event: gen_qevent_types.QResizeEvent): void {.base.} =
  QAbstractSpinBoxresizeEvent(self[], event)
proc cQAbstractSpinBox_method_callback_resizeEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQAbstractSpinBox](fcQAbstractSpinBox_vdata(self))
  let slotval1 = gen_qevent_types.QResizeEvent(h: event, owned: false)
  inst.resizeEvent(slotval1)

method keyPressEvent*(self: VirtualQAbstractSpinBox, event: gen_qevent_types.QKeyEvent): void {.base.} =
  QAbstractSpinBoxkeyPressEvent(self[], event)
proc cQAbstractSpinBox_method_callback_keyPressEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQAbstractSpinBox](fcQAbstractSpinBox_vdata(self))
  let slotval1 = gen_qevent_types.QKeyEvent(h: event, owned: false)
  inst.keyPressEvent(slotval1)

method keyReleaseEvent*(self: VirtualQAbstractSpinBox, event: gen_qevent_types.QKeyEvent): void {.base.} =
  QAbstractSpinBoxkeyReleaseEvent(self[], event)
proc cQAbstractSpinBox_method_callback_keyReleaseEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQAbstractSpinBox](fcQAbstractSpinBox_vdata(self))
  let slotval1 = gen_qevent_types.QKeyEvent(h: event, owned: false)
  inst.keyReleaseEvent(slotval1)

method wheelEvent*(self: VirtualQAbstractSpinBox, event: gen_qevent_types.QWheelEvent): void {.base.} =
  QAbstractSpinBoxwheelEvent(self[], event)
proc cQAbstractSpinBox_method_callback_wheelEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQAbstractSpinBox](fcQAbstractSpinBox_vdata(self))
  let slotval1 = gen_qevent_types.QWheelEvent(h: event, owned: false)
  inst.wheelEvent(slotval1)

method focusInEvent*(self: VirtualQAbstractSpinBox, event: gen_qevent_types.QFocusEvent): void {.base.} =
  QAbstractSpinBoxfocusInEvent(self[], event)
proc cQAbstractSpinBox_method_callback_focusInEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQAbstractSpinBox](fcQAbstractSpinBox_vdata(self))
  let slotval1 = gen_qevent_types.QFocusEvent(h: event, owned: false)
  inst.focusInEvent(slotval1)

method focusOutEvent*(self: VirtualQAbstractSpinBox, event: gen_qevent_types.QFocusEvent): void {.base.} =
  QAbstractSpinBoxfocusOutEvent(self[], event)
proc cQAbstractSpinBox_method_callback_focusOutEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQAbstractSpinBox](fcQAbstractSpinBox_vdata(self))
  let slotval1 = gen_qevent_types.QFocusEvent(h: event, owned: false)
  inst.focusOutEvent(slotval1)

method contextMenuEvent*(self: VirtualQAbstractSpinBox, event: gen_qevent_types.QContextMenuEvent): void {.base.} =
  QAbstractSpinBoxcontextMenuEvent(self[], event)
proc cQAbstractSpinBox_method_callback_contextMenuEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQAbstractSpinBox](fcQAbstractSpinBox_vdata(self))
  let slotval1 = gen_qevent_types.QContextMenuEvent(h: event, owned: false)
  inst.contextMenuEvent(slotval1)

method changeEvent*(self: VirtualQAbstractSpinBox, event: gen_qcoreevent_types.QEvent): void {.base.} =
  QAbstractSpinBoxchangeEvent(self[], event)
proc cQAbstractSpinBox_method_callback_changeEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQAbstractSpinBox](fcQAbstractSpinBox_vdata(self))
  let slotval1 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  inst.changeEvent(slotval1)

method closeEvent*(self: VirtualQAbstractSpinBox, event: gen_qevent_types.QCloseEvent): void {.base.} =
  QAbstractSpinBoxcloseEvent(self[], event)
proc cQAbstractSpinBox_method_callback_closeEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQAbstractSpinBox](fcQAbstractSpinBox_vdata(self))
  let slotval1 = gen_qevent_types.QCloseEvent(h: event, owned: false)
  inst.closeEvent(slotval1)

method hideEvent*(self: VirtualQAbstractSpinBox, event: gen_qevent_types.QHideEvent): void {.base.} =
  QAbstractSpinBoxhideEvent(self[], event)
proc cQAbstractSpinBox_method_callback_hideEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQAbstractSpinBox](fcQAbstractSpinBox_vdata(self))
  let slotval1 = gen_qevent_types.QHideEvent(h: event, owned: false)
  inst.hideEvent(slotval1)

method mousePressEvent*(self: VirtualQAbstractSpinBox, event: gen_qevent_types.QMouseEvent): void {.base.} =
  QAbstractSpinBoxmousePressEvent(self[], event)
proc cQAbstractSpinBox_method_callback_mousePressEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQAbstractSpinBox](fcQAbstractSpinBox_vdata(self))
  let slotval1 = gen_qevent_types.QMouseEvent(h: event, owned: false)
  inst.mousePressEvent(slotval1)

method mouseReleaseEvent*(self: VirtualQAbstractSpinBox, event: gen_qevent_types.QMouseEvent): void {.base.} =
  QAbstractSpinBoxmouseReleaseEvent(self[], event)
proc cQAbstractSpinBox_method_callback_mouseReleaseEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQAbstractSpinBox](fcQAbstractSpinBox_vdata(self))
  let slotval1 = gen_qevent_types.QMouseEvent(h: event, owned: false)
  inst.mouseReleaseEvent(slotval1)

method mouseMoveEvent*(self: VirtualQAbstractSpinBox, event: gen_qevent_types.QMouseEvent): void {.base.} =
  QAbstractSpinBoxmouseMoveEvent(self[], event)
proc cQAbstractSpinBox_method_callback_mouseMoveEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQAbstractSpinBox](fcQAbstractSpinBox_vdata(self))
  let slotval1 = gen_qevent_types.QMouseEvent(h: event, owned: false)
  inst.mouseMoveEvent(slotval1)

method timerEvent*(self: VirtualQAbstractSpinBox, event: gen_qcoreevent_types.QTimerEvent): void {.base.} =
  QAbstractSpinBoxtimerEvent(self[], event)
proc cQAbstractSpinBox_method_callback_timerEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQAbstractSpinBox](fcQAbstractSpinBox_vdata(self))
  let slotval1 = gen_qcoreevent_types.QTimerEvent(h: event, owned: false)
  inst.timerEvent(slotval1)

method paintEvent*(self: VirtualQAbstractSpinBox, event: gen_qevent_types.QPaintEvent): void {.base.} =
  QAbstractSpinBoxpaintEvent(self[], event)
proc cQAbstractSpinBox_method_callback_paintEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQAbstractSpinBox](fcQAbstractSpinBox_vdata(self))
  let slotval1 = gen_qevent_types.QPaintEvent(h: event, owned: false)
  inst.paintEvent(slotval1)

method showEvent*(self: VirtualQAbstractSpinBox, event: gen_qevent_types.QShowEvent): void {.base.} =
  QAbstractSpinBoxshowEvent(self[], event)
proc cQAbstractSpinBox_method_callback_showEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQAbstractSpinBox](fcQAbstractSpinBox_vdata(self))
  let slotval1 = gen_qevent_types.QShowEvent(h: event, owned: false)
  inst.showEvent(slotval1)

method stepEnabled*(self: VirtualQAbstractSpinBox): cint {.base.} =
  QAbstractSpinBoxstepEnabled(self[])
proc cQAbstractSpinBox_method_callback_stepEnabled(self: pointer): cint {.cdecl.} =
  let inst = cast[VirtualQAbstractSpinBox](fcQAbstractSpinBox_vdata(self))
  var virtualReturn = inst.stepEnabled()
  cint(virtualReturn)

method devType*(self: VirtualQAbstractSpinBox): cint {.base.} =
  QAbstractSpinBoxdevType(self[])
proc cQAbstractSpinBox_method_callback_devType(self: pointer): cint {.cdecl.} =
  let inst = cast[VirtualQAbstractSpinBox](fcQAbstractSpinBox_vdata(self))
  var virtualReturn = inst.devType()
  virtualReturn

method setVisible*(self: VirtualQAbstractSpinBox, visible: bool): void {.base.} =
  QAbstractSpinBoxsetVisible(self[], visible)
proc cQAbstractSpinBox_method_callback_setVisible(self: pointer, visible: bool): void {.cdecl.} =
  let inst = cast[VirtualQAbstractSpinBox](fcQAbstractSpinBox_vdata(self))
  let slotval1 = visible
  inst.setVisible(slotval1)

method heightForWidth*(self: VirtualQAbstractSpinBox, param1: cint): cint {.base.} =
  QAbstractSpinBoxheightForWidth(self[], param1)
proc cQAbstractSpinBox_method_callback_heightForWidth(self: pointer, param1: cint): cint {.cdecl.} =
  let inst = cast[VirtualQAbstractSpinBox](fcQAbstractSpinBox_vdata(self))
  let slotval1 = param1
  var virtualReturn = inst.heightForWidth(slotval1)
  virtualReturn

method hasHeightForWidth*(self: VirtualQAbstractSpinBox): bool {.base.} =
  QAbstractSpinBoxhasHeightForWidth(self[])
proc cQAbstractSpinBox_method_callback_hasHeightForWidth(self: pointer): bool {.cdecl.} =
  let inst = cast[VirtualQAbstractSpinBox](fcQAbstractSpinBox_vdata(self))
  var virtualReturn = inst.hasHeightForWidth()
  virtualReturn

method paintEngine*(self: VirtualQAbstractSpinBox): gen_qpaintengine_types.QPaintEngine {.base.} =
  QAbstractSpinBoxpaintEngine(self[])
proc cQAbstractSpinBox_method_callback_paintEngine(self: pointer): pointer {.cdecl.} =
  let inst = cast[VirtualQAbstractSpinBox](fcQAbstractSpinBox_vdata(self))
  var virtualReturn = inst.paintEngine()
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

method mouseDoubleClickEvent*(self: VirtualQAbstractSpinBox, event: gen_qevent_types.QMouseEvent): void {.base.} =
  QAbstractSpinBoxmouseDoubleClickEvent(self[], event)
proc cQAbstractSpinBox_method_callback_mouseDoubleClickEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQAbstractSpinBox](fcQAbstractSpinBox_vdata(self))
  let slotval1 = gen_qevent_types.QMouseEvent(h: event, owned: false)
  inst.mouseDoubleClickEvent(slotval1)

method enterEvent*(self: VirtualQAbstractSpinBox, event: gen_qcoreevent_types.QEvent): void {.base.} =
  QAbstractSpinBoxenterEvent(self[], event)
proc cQAbstractSpinBox_method_callback_enterEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQAbstractSpinBox](fcQAbstractSpinBox_vdata(self))
  let slotval1 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  inst.enterEvent(slotval1)

method leaveEvent*(self: VirtualQAbstractSpinBox, event: gen_qcoreevent_types.QEvent): void {.base.} =
  QAbstractSpinBoxleaveEvent(self[], event)
proc cQAbstractSpinBox_method_callback_leaveEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQAbstractSpinBox](fcQAbstractSpinBox_vdata(self))
  let slotval1 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  inst.leaveEvent(slotval1)

method moveEvent*(self: VirtualQAbstractSpinBox, event: gen_qevent_types.QMoveEvent): void {.base.} =
  QAbstractSpinBoxmoveEvent(self[], event)
proc cQAbstractSpinBox_method_callback_moveEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQAbstractSpinBox](fcQAbstractSpinBox_vdata(self))
  let slotval1 = gen_qevent_types.QMoveEvent(h: event, owned: false)
  inst.moveEvent(slotval1)

method tabletEvent*(self: VirtualQAbstractSpinBox, event: gen_qevent_types.QTabletEvent): void {.base.} =
  QAbstractSpinBoxtabletEvent(self[], event)
proc cQAbstractSpinBox_method_callback_tabletEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQAbstractSpinBox](fcQAbstractSpinBox_vdata(self))
  let slotval1 = gen_qevent_types.QTabletEvent(h: event, owned: false)
  inst.tabletEvent(slotval1)

method actionEvent*(self: VirtualQAbstractSpinBox, event: gen_qevent_types.QActionEvent): void {.base.} =
  QAbstractSpinBoxactionEvent(self[], event)
proc cQAbstractSpinBox_method_callback_actionEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQAbstractSpinBox](fcQAbstractSpinBox_vdata(self))
  let slotval1 = gen_qevent_types.QActionEvent(h: event, owned: false)
  inst.actionEvent(slotval1)

method dragEnterEvent*(self: VirtualQAbstractSpinBox, event: gen_qevent_types.QDragEnterEvent): void {.base.} =
  QAbstractSpinBoxdragEnterEvent(self[], event)
proc cQAbstractSpinBox_method_callback_dragEnterEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQAbstractSpinBox](fcQAbstractSpinBox_vdata(self))
  let slotval1 = gen_qevent_types.QDragEnterEvent(h: event, owned: false)
  inst.dragEnterEvent(slotval1)

method dragMoveEvent*(self: VirtualQAbstractSpinBox, event: gen_qevent_types.QDragMoveEvent): void {.base.} =
  QAbstractSpinBoxdragMoveEvent(self[], event)
proc cQAbstractSpinBox_method_callback_dragMoveEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQAbstractSpinBox](fcQAbstractSpinBox_vdata(self))
  let slotval1 = gen_qevent_types.QDragMoveEvent(h: event, owned: false)
  inst.dragMoveEvent(slotval1)

method dragLeaveEvent*(self: VirtualQAbstractSpinBox, event: gen_qevent_types.QDragLeaveEvent): void {.base.} =
  QAbstractSpinBoxdragLeaveEvent(self[], event)
proc cQAbstractSpinBox_method_callback_dragLeaveEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQAbstractSpinBox](fcQAbstractSpinBox_vdata(self))
  let slotval1 = gen_qevent_types.QDragLeaveEvent(h: event, owned: false)
  inst.dragLeaveEvent(slotval1)

method dropEvent*(self: VirtualQAbstractSpinBox, event: gen_qevent_types.QDropEvent): void {.base.} =
  QAbstractSpinBoxdropEvent(self[], event)
proc cQAbstractSpinBox_method_callback_dropEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQAbstractSpinBox](fcQAbstractSpinBox_vdata(self))
  let slotval1 = gen_qevent_types.QDropEvent(h: event, owned: false)
  inst.dropEvent(slotval1)

method nativeEvent*(self: VirtualQAbstractSpinBox, eventType: openArray[byte], message: pointer, resultVal: ptr clong): bool {.base.} =
  QAbstractSpinBoxnativeEvent(self[], eventType, message, resultVal)
proc cQAbstractSpinBox_method_callback_nativeEvent(self: pointer, eventType: struct_miqt_string, message: pointer, resultVal: ptr clong): bool {.cdecl.} =
  let inst = cast[VirtualQAbstractSpinBox](fcQAbstractSpinBox_vdata(self))
  var veventType_bytearray = eventType
  var veventTypex_ret = @(toOpenArray(cast[ptr UncheckedArray[byte]](veventType_bytearray.data), 0, int(veventType_bytearray.len)-1))
  c_free(veventType_bytearray.data)
  let slotval1 = veventTypex_ret
  let slotval2 = message
  let slotval3 = resultVal
  var virtualReturn = inst.nativeEvent(slotval1, slotval2, slotval3)
  virtualReturn

method metric*(self: VirtualQAbstractSpinBox, param1: cint): cint {.base.} =
  QAbstractSpinBoxmetric(self[], param1)
proc cQAbstractSpinBox_method_callback_metric(self: pointer, param1: cint): cint {.cdecl.} =
  let inst = cast[VirtualQAbstractSpinBox](fcQAbstractSpinBox_vdata(self))
  let slotval1 = cint(param1)
  var virtualReturn = inst.metric(slotval1)
  virtualReturn

method initPainter*(self: VirtualQAbstractSpinBox, painter: gen_qpainter_types.QPainter): void {.base.} =
  QAbstractSpinBoxinitPainter(self[], painter)
proc cQAbstractSpinBox_method_callback_initPainter(self: pointer, painter: pointer): void {.cdecl.} =
  let inst = cast[VirtualQAbstractSpinBox](fcQAbstractSpinBox_vdata(self))
  let slotval1 = gen_qpainter_types.QPainter(h: painter, owned: false)
  inst.initPainter(slotval1)

method redirected*(self: VirtualQAbstractSpinBox, offset: gen_qpoint_types.QPoint): gen_qpaintdevice_types.QPaintDevice {.base.} =
  QAbstractSpinBoxredirected(self[], offset)
proc cQAbstractSpinBox_method_callback_redirected(self: pointer, offset: pointer): pointer {.cdecl.} =
  let inst = cast[VirtualQAbstractSpinBox](fcQAbstractSpinBox_vdata(self))
  let slotval1 = gen_qpoint_types.QPoint(h: offset, owned: false)
  var virtualReturn = inst.redirected(slotval1)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

method sharedPainter*(self: VirtualQAbstractSpinBox): gen_qpainter_types.QPainter {.base.} =
  QAbstractSpinBoxsharedPainter(self[])
proc cQAbstractSpinBox_method_callback_sharedPainter(self: pointer): pointer {.cdecl.} =
  let inst = cast[VirtualQAbstractSpinBox](fcQAbstractSpinBox_vdata(self))
  var virtualReturn = inst.sharedPainter()
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

method inputMethodEvent*(self: VirtualQAbstractSpinBox, param1: gen_qevent_types.QInputMethodEvent): void {.base.} =
  QAbstractSpinBoxinputMethodEvent(self[], param1)
proc cQAbstractSpinBox_method_callback_inputMethodEvent(self: pointer, param1: pointer): void {.cdecl.} =
  let inst = cast[VirtualQAbstractSpinBox](fcQAbstractSpinBox_vdata(self))
  let slotval1 = gen_qevent_types.QInputMethodEvent(h: param1, owned: false)
  inst.inputMethodEvent(slotval1)

method focusNextPrevChild*(self: VirtualQAbstractSpinBox, next: bool): bool {.base.} =
  QAbstractSpinBoxfocusNextPrevChild(self[], next)
proc cQAbstractSpinBox_method_callback_focusNextPrevChild(self: pointer, next: bool): bool {.cdecl.} =
  let inst = cast[VirtualQAbstractSpinBox](fcQAbstractSpinBox_vdata(self))
  let slotval1 = next
  var virtualReturn = inst.focusNextPrevChild(slotval1)
  virtualReturn

method eventFilter*(self: VirtualQAbstractSpinBox, watched: gen_qobject_types.QObject, event: gen_qcoreevent_types.QEvent): bool {.base.} =
  QAbstractSpinBoxeventFilter(self[], watched, event)
proc cQAbstractSpinBox_method_callback_eventFilter(self: pointer, watched: pointer, event: pointer): bool {.cdecl.} =
  let inst = cast[VirtualQAbstractSpinBox](fcQAbstractSpinBox_vdata(self))
  let slotval1 = gen_qobject_types.QObject(h: watched, owned: false)
  let slotval2 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  var virtualReturn = inst.eventFilter(slotval1, slotval2)
  virtualReturn

method childEvent*(self: VirtualQAbstractSpinBox, event: gen_qcoreevent_types.QChildEvent): void {.base.} =
  QAbstractSpinBoxchildEvent(self[], event)
proc cQAbstractSpinBox_method_callback_childEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQAbstractSpinBox](fcQAbstractSpinBox_vdata(self))
  let slotval1 = gen_qcoreevent_types.QChildEvent(h: event, owned: false)
  inst.childEvent(slotval1)

method customEvent*(self: VirtualQAbstractSpinBox, event: gen_qcoreevent_types.QEvent): void {.base.} =
  QAbstractSpinBoxcustomEvent(self[], event)
proc cQAbstractSpinBox_method_callback_customEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQAbstractSpinBox](fcQAbstractSpinBox_vdata(self))
  let slotval1 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  inst.customEvent(slotval1)

method connectNotify*(self: VirtualQAbstractSpinBox, signal: gen_qmetaobject_types.QMetaMethod): void {.base.} =
  QAbstractSpinBoxconnectNotify(self[], signal)
proc cQAbstractSpinBox_method_callback_connectNotify(self: pointer, signal: pointer): void {.cdecl.} =
  let inst = cast[VirtualQAbstractSpinBox](fcQAbstractSpinBox_vdata(self))
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal, owned: false)
  inst.connectNotify(slotval1)

method disconnectNotify*(self: VirtualQAbstractSpinBox, signal: gen_qmetaobject_types.QMetaMethod): void {.base.} =
  QAbstractSpinBoxdisconnectNotify(self[], signal)
proc cQAbstractSpinBox_method_callback_disconnectNotify(self: pointer, signal: pointer): void {.cdecl.} =
  let inst = cast[VirtualQAbstractSpinBox](fcQAbstractSpinBox_vdata(self))
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal, owned: false)
  inst.disconnectNotify(slotval1)

proc initStyleOption*(self: gen_qabstractspinbox_types.QAbstractSpinBox, option: gen_qstyleoption_types.QStyleOptionSpinBox): void =
  fcQAbstractSpinBox_protectedbase_initStyleOption(self.h, option.h)

proc lineEdit*(self: gen_qabstractspinbox_types.QAbstractSpinBox): gen_qlineedit_types.QLineEdit =
  gen_qlineedit_types.QLineEdit(h: fcQAbstractSpinBox_protectedbase_lineEdit(self.h), owned: false)

proc setLineEdit*(self: gen_qabstractspinbox_types.QAbstractSpinBox, edit: gen_qlineedit_types.QLineEdit): void =
  fcQAbstractSpinBox_protectedbase_setLineEdit(self.h, edit.h)

proc updateMicroFocus*(self: gen_qabstractspinbox_types.QAbstractSpinBox): void =
  fcQAbstractSpinBox_protectedbase_updateMicroFocus(self.h)

proc create*(self: gen_qabstractspinbox_types.QAbstractSpinBox): void =
  fcQAbstractSpinBox_protectedbase_create(self.h)

proc destroy*(self: gen_qabstractspinbox_types.QAbstractSpinBox): void =
  fcQAbstractSpinBox_protectedbase_destroy(self.h)

proc focusNextChild*(self: gen_qabstractspinbox_types.QAbstractSpinBox): bool =
  fcQAbstractSpinBox_protectedbase_focusNextChild(self.h)

proc focusPreviousChild*(self: gen_qabstractspinbox_types.QAbstractSpinBox): bool =
  fcQAbstractSpinBox_protectedbase_focusPreviousChild(self.h)

proc sender*(self: gen_qabstractspinbox_types.QAbstractSpinBox): gen_qobject_types.QObject =
  gen_qobject_types.QObject(h: fcQAbstractSpinBox_protectedbase_sender(self.h), owned: false)

proc senderSignalIndex*(self: gen_qabstractspinbox_types.QAbstractSpinBox): cint =
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
  vtbl[].vtbl.destructor = proc(self: pointer) {.cdecl.} =
    let vtbl = cast[ref QAbstractSpinBoxVTable](fcQAbstractSpinBox_vdata(self))
    GC_unref(vtbl)
  if not isNil(vtbl[].metaObject):
    vtbl[].vtbl.metaObject = cQAbstractSpinBox_vtable_callback_metaObject
  if not isNil(vtbl[].metacast):
    vtbl[].vtbl.metacast = cQAbstractSpinBox_vtable_callback_metacast
  if not isNil(vtbl[].metacall):
    vtbl[].vtbl.metacall = cQAbstractSpinBox_vtable_callback_metacall
  if not isNil(vtbl[].sizeHint):
    vtbl[].vtbl.sizeHint = cQAbstractSpinBox_vtable_callback_sizeHint
  if not isNil(vtbl[].minimumSizeHint):
    vtbl[].vtbl.minimumSizeHint = cQAbstractSpinBox_vtable_callback_minimumSizeHint
  if not isNil(vtbl[].event):
    vtbl[].vtbl.event = cQAbstractSpinBox_vtable_callback_event
  if not isNil(vtbl[].inputMethodQuery):
    vtbl[].vtbl.inputMethodQuery = cQAbstractSpinBox_vtable_callback_inputMethodQuery
  if not isNil(vtbl[].validate):
    vtbl[].vtbl.validate = cQAbstractSpinBox_vtable_callback_validate
  if not isNil(vtbl[].fixup):
    vtbl[].vtbl.fixup = cQAbstractSpinBox_vtable_callback_fixup
  if not isNil(vtbl[].stepBy):
    vtbl[].vtbl.stepBy = cQAbstractSpinBox_vtable_callback_stepBy
  if not isNil(vtbl[].clear):
    vtbl[].vtbl.clear = cQAbstractSpinBox_vtable_callback_clear
  if not isNil(vtbl[].resizeEvent):
    vtbl[].vtbl.resizeEvent = cQAbstractSpinBox_vtable_callback_resizeEvent
  if not isNil(vtbl[].keyPressEvent):
    vtbl[].vtbl.keyPressEvent = cQAbstractSpinBox_vtable_callback_keyPressEvent
  if not isNil(vtbl[].keyReleaseEvent):
    vtbl[].vtbl.keyReleaseEvent = cQAbstractSpinBox_vtable_callback_keyReleaseEvent
  if not isNil(vtbl[].wheelEvent):
    vtbl[].vtbl.wheelEvent = cQAbstractSpinBox_vtable_callback_wheelEvent
  if not isNil(vtbl[].focusInEvent):
    vtbl[].vtbl.focusInEvent = cQAbstractSpinBox_vtable_callback_focusInEvent
  if not isNil(vtbl[].focusOutEvent):
    vtbl[].vtbl.focusOutEvent = cQAbstractSpinBox_vtable_callback_focusOutEvent
  if not isNil(vtbl[].contextMenuEvent):
    vtbl[].vtbl.contextMenuEvent = cQAbstractSpinBox_vtable_callback_contextMenuEvent
  if not isNil(vtbl[].changeEvent):
    vtbl[].vtbl.changeEvent = cQAbstractSpinBox_vtable_callback_changeEvent
  if not isNil(vtbl[].closeEvent):
    vtbl[].vtbl.closeEvent = cQAbstractSpinBox_vtable_callback_closeEvent
  if not isNil(vtbl[].hideEvent):
    vtbl[].vtbl.hideEvent = cQAbstractSpinBox_vtable_callback_hideEvent
  if not isNil(vtbl[].mousePressEvent):
    vtbl[].vtbl.mousePressEvent = cQAbstractSpinBox_vtable_callback_mousePressEvent
  if not isNil(vtbl[].mouseReleaseEvent):
    vtbl[].vtbl.mouseReleaseEvent = cQAbstractSpinBox_vtable_callback_mouseReleaseEvent
  if not isNil(vtbl[].mouseMoveEvent):
    vtbl[].vtbl.mouseMoveEvent = cQAbstractSpinBox_vtable_callback_mouseMoveEvent
  if not isNil(vtbl[].timerEvent):
    vtbl[].vtbl.timerEvent = cQAbstractSpinBox_vtable_callback_timerEvent
  if not isNil(vtbl[].paintEvent):
    vtbl[].vtbl.paintEvent = cQAbstractSpinBox_vtable_callback_paintEvent
  if not isNil(vtbl[].showEvent):
    vtbl[].vtbl.showEvent = cQAbstractSpinBox_vtable_callback_showEvent
  if not isNil(vtbl[].stepEnabled):
    vtbl[].vtbl.stepEnabled = cQAbstractSpinBox_vtable_callback_stepEnabled
  if not isNil(vtbl[].devType):
    vtbl[].vtbl.devType = cQAbstractSpinBox_vtable_callback_devType
  if not isNil(vtbl[].setVisible):
    vtbl[].vtbl.setVisible = cQAbstractSpinBox_vtable_callback_setVisible
  if not isNil(vtbl[].heightForWidth):
    vtbl[].vtbl.heightForWidth = cQAbstractSpinBox_vtable_callback_heightForWidth
  if not isNil(vtbl[].hasHeightForWidth):
    vtbl[].vtbl.hasHeightForWidth = cQAbstractSpinBox_vtable_callback_hasHeightForWidth
  if not isNil(vtbl[].paintEngine):
    vtbl[].vtbl.paintEngine = cQAbstractSpinBox_vtable_callback_paintEngine
  if not isNil(vtbl[].mouseDoubleClickEvent):
    vtbl[].vtbl.mouseDoubleClickEvent = cQAbstractSpinBox_vtable_callback_mouseDoubleClickEvent
  if not isNil(vtbl[].enterEvent):
    vtbl[].vtbl.enterEvent = cQAbstractSpinBox_vtable_callback_enterEvent
  if not isNil(vtbl[].leaveEvent):
    vtbl[].vtbl.leaveEvent = cQAbstractSpinBox_vtable_callback_leaveEvent
  if not isNil(vtbl[].moveEvent):
    vtbl[].vtbl.moveEvent = cQAbstractSpinBox_vtable_callback_moveEvent
  if not isNil(vtbl[].tabletEvent):
    vtbl[].vtbl.tabletEvent = cQAbstractSpinBox_vtable_callback_tabletEvent
  if not isNil(vtbl[].actionEvent):
    vtbl[].vtbl.actionEvent = cQAbstractSpinBox_vtable_callback_actionEvent
  if not isNil(vtbl[].dragEnterEvent):
    vtbl[].vtbl.dragEnterEvent = cQAbstractSpinBox_vtable_callback_dragEnterEvent
  if not isNil(vtbl[].dragMoveEvent):
    vtbl[].vtbl.dragMoveEvent = cQAbstractSpinBox_vtable_callback_dragMoveEvent
  if not isNil(vtbl[].dragLeaveEvent):
    vtbl[].vtbl.dragLeaveEvent = cQAbstractSpinBox_vtable_callback_dragLeaveEvent
  if not isNil(vtbl[].dropEvent):
    vtbl[].vtbl.dropEvent = cQAbstractSpinBox_vtable_callback_dropEvent
  if not isNil(vtbl[].nativeEvent):
    vtbl[].vtbl.nativeEvent = cQAbstractSpinBox_vtable_callback_nativeEvent
  if not isNil(vtbl[].metric):
    vtbl[].vtbl.metric = cQAbstractSpinBox_vtable_callback_metric
  if not isNil(vtbl[].initPainter):
    vtbl[].vtbl.initPainter = cQAbstractSpinBox_vtable_callback_initPainter
  if not isNil(vtbl[].redirected):
    vtbl[].vtbl.redirected = cQAbstractSpinBox_vtable_callback_redirected
  if not isNil(vtbl[].sharedPainter):
    vtbl[].vtbl.sharedPainter = cQAbstractSpinBox_vtable_callback_sharedPainter
  if not isNil(vtbl[].inputMethodEvent):
    vtbl[].vtbl.inputMethodEvent = cQAbstractSpinBox_vtable_callback_inputMethodEvent
  if not isNil(vtbl[].focusNextPrevChild):
    vtbl[].vtbl.focusNextPrevChild = cQAbstractSpinBox_vtable_callback_focusNextPrevChild
  if not isNil(vtbl[].eventFilter):
    vtbl[].vtbl.eventFilter = cQAbstractSpinBox_vtable_callback_eventFilter
  if not isNil(vtbl[].childEvent):
    vtbl[].vtbl.childEvent = cQAbstractSpinBox_vtable_callback_childEvent
  if not isNil(vtbl[].customEvent):
    vtbl[].vtbl.customEvent = cQAbstractSpinBox_vtable_callback_customEvent
  if not isNil(vtbl[].connectNotify):
    vtbl[].vtbl.connectNotify = cQAbstractSpinBox_vtable_callback_connectNotify
  if not isNil(vtbl[].disconnectNotify):
    vtbl[].vtbl.disconnectNotify = cQAbstractSpinBox_vtable_callback_disconnectNotify
  gen_qabstractspinbox_types.QAbstractSpinBox(h: fcQAbstractSpinBox_new(addr(vtbl[].vtbl), addr(vtbl[]), parent.h), owned: true)

proc create*(T: type gen_qabstractspinbox_types.QAbstractSpinBox,
    vtbl: ref QAbstractSpinBoxVTable = nil): gen_qabstractspinbox_types.QAbstractSpinBox =
  let vtbl = if vtbl == nil: new QAbstractSpinBoxVTable else: vtbl
  GC_ref(vtbl)
  vtbl[].vtbl.destructor = proc(self: pointer) {.cdecl.} =
    let vtbl = cast[ref QAbstractSpinBoxVTable](fcQAbstractSpinBox_vdata(self))
    GC_unref(vtbl)
  if not isNil(vtbl[].metaObject):
    vtbl[].vtbl.metaObject = cQAbstractSpinBox_vtable_callback_metaObject
  if not isNil(vtbl[].metacast):
    vtbl[].vtbl.metacast = cQAbstractSpinBox_vtable_callback_metacast
  if not isNil(vtbl[].metacall):
    vtbl[].vtbl.metacall = cQAbstractSpinBox_vtable_callback_metacall
  if not isNil(vtbl[].sizeHint):
    vtbl[].vtbl.sizeHint = cQAbstractSpinBox_vtable_callback_sizeHint
  if not isNil(vtbl[].minimumSizeHint):
    vtbl[].vtbl.minimumSizeHint = cQAbstractSpinBox_vtable_callback_minimumSizeHint
  if not isNil(vtbl[].event):
    vtbl[].vtbl.event = cQAbstractSpinBox_vtable_callback_event
  if not isNil(vtbl[].inputMethodQuery):
    vtbl[].vtbl.inputMethodQuery = cQAbstractSpinBox_vtable_callback_inputMethodQuery
  if not isNil(vtbl[].validate):
    vtbl[].vtbl.validate = cQAbstractSpinBox_vtable_callback_validate
  if not isNil(vtbl[].fixup):
    vtbl[].vtbl.fixup = cQAbstractSpinBox_vtable_callback_fixup
  if not isNil(vtbl[].stepBy):
    vtbl[].vtbl.stepBy = cQAbstractSpinBox_vtable_callback_stepBy
  if not isNil(vtbl[].clear):
    vtbl[].vtbl.clear = cQAbstractSpinBox_vtable_callback_clear
  if not isNil(vtbl[].resizeEvent):
    vtbl[].vtbl.resizeEvent = cQAbstractSpinBox_vtable_callback_resizeEvent
  if not isNil(vtbl[].keyPressEvent):
    vtbl[].vtbl.keyPressEvent = cQAbstractSpinBox_vtable_callback_keyPressEvent
  if not isNil(vtbl[].keyReleaseEvent):
    vtbl[].vtbl.keyReleaseEvent = cQAbstractSpinBox_vtable_callback_keyReleaseEvent
  if not isNil(vtbl[].wheelEvent):
    vtbl[].vtbl.wheelEvent = cQAbstractSpinBox_vtable_callback_wheelEvent
  if not isNil(vtbl[].focusInEvent):
    vtbl[].vtbl.focusInEvent = cQAbstractSpinBox_vtable_callback_focusInEvent
  if not isNil(vtbl[].focusOutEvent):
    vtbl[].vtbl.focusOutEvent = cQAbstractSpinBox_vtable_callback_focusOutEvent
  if not isNil(vtbl[].contextMenuEvent):
    vtbl[].vtbl.contextMenuEvent = cQAbstractSpinBox_vtable_callback_contextMenuEvent
  if not isNil(vtbl[].changeEvent):
    vtbl[].vtbl.changeEvent = cQAbstractSpinBox_vtable_callback_changeEvent
  if not isNil(vtbl[].closeEvent):
    vtbl[].vtbl.closeEvent = cQAbstractSpinBox_vtable_callback_closeEvent
  if not isNil(vtbl[].hideEvent):
    vtbl[].vtbl.hideEvent = cQAbstractSpinBox_vtable_callback_hideEvent
  if not isNil(vtbl[].mousePressEvent):
    vtbl[].vtbl.mousePressEvent = cQAbstractSpinBox_vtable_callback_mousePressEvent
  if not isNil(vtbl[].mouseReleaseEvent):
    vtbl[].vtbl.mouseReleaseEvent = cQAbstractSpinBox_vtable_callback_mouseReleaseEvent
  if not isNil(vtbl[].mouseMoveEvent):
    vtbl[].vtbl.mouseMoveEvent = cQAbstractSpinBox_vtable_callback_mouseMoveEvent
  if not isNil(vtbl[].timerEvent):
    vtbl[].vtbl.timerEvent = cQAbstractSpinBox_vtable_callback_timerEvent
  if not isNil(vtbl[].paintEvent):
    vtbl[].vtbl.paintEvent = cQAbstractSpinBox_vtable_callback_paintEvent
  if not isNil(vtbl[].showEvent):
    vtbl[].vtbl.showEvent = cQAbstractSpinBox_vtable_callback_showEvent
  if not isNil(vtbl[].stepEnabled):
    vtbl[].vtbl.stepEnabled = cQAbstractSpinBox_vtable_callback_stepEnabled
  if not isNil(vtbl[].devType):
    vtbl[].vtbl.devType = cQAbstractSpinBox_vtable_callback_devType
  if not isNil(vtbl[].setVisible):
    vtbl[].vtbl.setVisible = cQAbstractSpinBox_vtable_callback_setVisible
  if not isNil(vtbl[].heightForWidth):
    vtbl[].vtbl.heightForWidth = cQAbstractSpinBox_vtable_callback_heightForWidth
  if not isNil(vtbl[].hasHeightForWidth):
    vtbl[].vtbl.hasHeightForWidth = cQAbstractSpinBox_vtable_callback_hasHeightForWidth
  if not isNil(vtbl[].paintEngine):
    vtbl[].vtbl.paintEngine = cQAbstractSpinBox_vtable_callback_paintEngine
  if not isNil(vtbl[].mouseDoubleClickEvent):
    vtbl[].vtbl.mouseDoubleClickEvent = cQAbstractSpinBox_vtable_callback_mouseDoubleClickEvent
  if not isNil(vtbl[].enterEvent):
    vtbl[].vtbl.enterEvent = cQAbstractSpinBox_vtable_callback_enterEvent
  if not isNil(vtbl[].leaveEvent):
    vtbl[].vtbl.leaveEvent = cQAbstractSpinBox_vtable_callback_leaveEvent
  if not isNil(vtbl[].moveEvent):
    vtbl[].vtbl.moveEvent = cQAbstractSpinBox_vtable_callback_moveEvent
  if not isNil(vtbl[].tabletEvent):
    vtbl[].vtbl.tabletEvent = cQAbstractSpinBox_vtable_callback_tabletEvent
  if not isNil(vtbl[].actionEvent):
    vtbl[].vtbl.actionEvent = cQAbstractSpinBox_vtable_callback_actionEvent
  if not isNil(vtbl[].dragEnterEvent):
    vtbl[].vtbl.dragEnterEvent = cQAbstractSpinBox_vtable_callback_dragEnterEvent
  if not isNil(vtbl[].dragMoveEvent):
    vtbl[].vtbl.dragMoveEvent = cQAbstractSpinBox_vtable_callback_dragMoveEvent
  if not isNil(vtbl[].dragLeaveEvent):
    vtbl[].vtbl.dragLeaveEvent = cQAbstractSpinBox_vtable_callback_dragLeaveEvent
  if not isNil(vtbl[].dropEvent):
    vtbl[].vtbl.dropEvent = cQAbstractSpinBox_vtable_callback_dropEvent
  if not isNil(vtbl[].nativeEvent):
    vtbl[].vtbl.nativeEvent = cQAbstractSpinBox_vtable_callback_nativeEvent
  if not isNil(vtbl[].metric):
    vtbl[].vtbl.metric = cQAbstractSpinBox_vtable_callback_metric
  if not isNil(vtbl[].initPainter):
    vtbl[].vtbl.initPainter = cQAbstractSpinBox_vtable_callback_initPainter
  if not isNil(vtbl[].redirected):
    vtbl[].vtbl.redirected = cQAbstractSpinBox_vtable_callback_redirected
  if not isNil(vtbl[].sharedPainter):
    vtbl[].vtbl.sharedPainter = cQAbstractSpinBox_vtable_callback_sharedPainter
  if not isNil(vtbl[].inputMethodEvent):
    vtbl[].vtbl.inputMethodEvent = cQAbstractSpinBox_vtable_callback_inputMethodEvent
  if not isNil(vtbl[].focusNextPrevChild):
    vtbl[].vtbl.focusNextPrevChild = cQAbstractSpinBox_vtable_callback_focusNextPrevChild
  if not isNil(vtbl[].eventFilter):
    vtbl[].vtbl.eventFilter = cQAbstractSpinBox_vtable_callback_eventFilter
  if not isNil(vtbl[].childEvent):
    vtbl[].vtbl.childEvent = cQAbstractSpinBox_vtable_callback_childEvent
  if not isNil(vtbl[].customEvent):
    vtbl[].vtbl.customEvent = cQAbstractSpinBox_vtable_callback_customEvent
  if not isNil(vtbl[].connectNotify):
    vtbl[].vtbl.connectNotify = cQAbstractSpinBox_vtable_callback_connectNotify
  if not isNil(vtbl[].disconnectNotify):
    vtbl[].vtbl.disconnectNotify = cQAbstractSpinBox_vtable_callback_disconnectNotify
  gen_qabstractspinbox_types.QAbstractSpinBox(h: fcQAbstractSpinBox_new2(addr(vtbl[].vtbl), addr(vtbl[])), owned: true)

const cQAbstractSpinBox_mvtbl = cQAbstractSpinBoxVTable(
  destructor: proc(self: pointer) {.cdecl.} =
    let inst = cast[ptr typeof(VirtualQAbstractSpinBox()[])](self.fcQAbstractSpinBox_vtbl())
    inst[].h = nil
    inst[].owned = false,
  metaObject: cQAbstractSpinBox_method_callback_metaObject,
  metacast: cQAbstractSpinBox_method_callback_metacast,
  metacall: cQAbstractSpinBox_method_callback_metacall,
  sizeHint: cQAbstractSpinBox_method_callback_sizeHint,
  minimumSizeHint: cQAbstractSpinBox_method_callback_minimumSizeHint,
  event: cQAbstractSpinBox_method_callback_event,
  inputMethodQuery: cQAbstractSpinBox_method_callback_inputMethodQuery,
  validate: cQAbstractSpinBox_method_callback_validate,
  fixup: cQAbstractSpinBox_method_callback_fixup,
  stepBy: cQAbstractSpinBox_method_callback_stepBy,
  clear: cQAbstractSpinBox_method_callback_clear,
  resizeEvent: cQAbstractSpinBox_method_callback_resizeEvent,
  keyPressEvent: cQAbstractSpinBox_method_callback_keyPressEvent,
  keyReleaseEvent: cQAbstractSpinBox_method_callback_keyReleaseEvent,
  wheelEvent: cQAbstractSpinBox_method_callback_wheelEvent,
  focusInEvent: cQAbstractSpinBox_method_callback_focusInEvent,
  focusOutEvent: cQAbstractSpinBox_method_callback_focusOutEvent,
  contextMenuEvent: cQAbstractSpinBox_method_callback_contextMenuEvent,
  changeEvent: cQAbstractSpinBox_method_callback_changeEvent,
  closeEvent: cQAbstractSpinBox_method_callback_closeEvent,
  hideEvent: cQAbstractSpinBox_method_callback_hideEvent,
  mousePressEvent: cQAbstractSpinBox_method_callback_mousePressEvent,
  mouseReleaseEvent: cQAbstractSpinBox_method_callback_mouseReleaseEvent,
  mouseMoveEvent: cQAbstractSpinBox_method_callback_mouseMoveEvent,
  timerEvent: cQAbstractSpinBox_method_callback_timerEvent,
  paintEvent: cQAbstractSpinBox_method_callback_paintEvent,
  showEvent: cQAbstractSpinBox_method_callback_showEvent,
  stepEnabled: cQAbstractSpinBox_method_callback_stepEnabled,
  devType: cQAbstractSpinBox_method_callback_devType,
  setVisible: cQAbstractSpinBox_method_callback_setVisible,
  heightForWidth: cQAbstractSpinBox_method_callback_heightForWidth,
  hasHeightForWidth: cQAbstractSpinBox_method_callback_hasHeightForWidth,
  paintEngine: cQAbstractSpinBox_method_callback_paintEngine,
  mouseDoubleClickEvent: cQAbstractSpinBox_method_callback_mouseDoubleClickEvent,
  enterEvent: cQAbstractSpinBox_method_callback_enterEvent,
  leaveEvent: cQAbstractSpinBox_method_callback_leaveEvent,
  moveEvent: cQAbstractSpinBox_method_callback_moveEvent,
  tabletEvent: cQAbstractSpinBox_method_callback_tabletEvent,
  actionEvent: cQAbstractSpinBox_method_callback_actionEvent,
  dragEnterEvent: cQAbstractSpinBox_method_callback_dragEnterEvent,
  dragMoveEvent: cQAbstractSpinBox_method_callback_dragMoveEvent,
  dragLeaveEvent: cQAbstractSpinBox_method_callback_dragLeaveEvent,
  dropEvent: cQAbstractSpinBox_method_callback_dropEvent,
  nativeEvent: cQAbstractSpinBox_method_callback_nativeEvent,
  metric: cQAbstractSpinBox_method_callback_metric,
  initPainter: cQAbstractSpinBox_method_callback_initPainter,
  redirected: cQAbstractSpinBox_method_callback_redirected,
  sharedPainter: cQAbstractSpinBox_method_callback_sharedPainter,
  inputMethodEvent: cQAbstractSpinBox_method_callback_inputMethodEvent,
  focusNextPrevChild: cQAbstractSpinBox_method_callback_focusNextPrevChild,
  eventFilter: cQAbstractSpinBox_method_callback_eventFilter,
  childEvent: cQAbstractSpinBox_method_callback_childEvent,
  customEvent: cQAbstractSpinBox_method_callback_customEvent,
  connectNotify: cQAbstractSpinBox_method_callback_connectNotify,
  disconnectNotify: cQAbstractSpinBox_method_callback_disconnectNotify,
)
proc create*(T: type gen_qabstractspinbox_types.QAbstractSpinBox,
    parent: gen_qwidget_types.QWidget,
    inst: VirtualQAbstractSpinBox) =
  if inst[].h != nil: delete(move(inst[]))
  inst[].h = fcQAbstractSpinBox_new(addr(cQAbstractSpinBox_mvtbl), addr(inst[]), parent.h)
  inst[].owned = true

proc create*(T: type gen_qabstractspinbox_types.QAbstractSpinBox,
    inst: VirtualQAbstractSpinBox) =
  if inst[].h != nil: delete(move(inst[]))
  inst[].h = fcQAbstractSpinBox_new2(addr(cQAbstractSpinBox_mvtbl), addr(inst[]))
  inst[].owned = true

proc staticMetaObject*(_: type gen_qabstractspinbox_types.QAbstractSpinBox): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQAbstractSpinBox_staticMetaObject())
