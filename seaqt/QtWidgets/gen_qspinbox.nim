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


{.compile("gen_qspinbox.cpp", QtWidgetsCFlags).}


import ./gen_qspinbox_types
export gen_qspinbox_types

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
  ./gen_qabstractspinbox,
  ./gen_qlineedit_types,
  ./gen_qstyleoption_types,
  ./gen_qwidget_types
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
  gen_qabstractspinbox,
  gen_qlineedit_types,
  gen_qstyleoption_types,
  gen_qwidget_types

type cQSpinBox*{.exportc: "QSpinBox", incompleteStruct.} = object
type cQDoubleSpinBox*{.exportc: "QDoubleSpinBox", incompleteStruct.} = object

proc fcQSpinBox_metaObject(self: pointer): pointer {.importc: "QSpinBox_metaObject".}
proc fcQSpinBox_metacast(self: pointer, param1: cstring): pointer {.importc: "QSpinBox_metacast".}
proc fcQSpinBox_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.importc: "QSpinBox_metacall".}
proc fcQSpinBox_tr(s: cstring): struct_miqt_string {.importc: "QSpinBox_tr".}
proc fcQSpinBox_trUtf8(s: cstring): struct_miqt_string {.importc: "QSpinBox_trUtf8".}
proc fcQSpinBox_value(self: pointer): cint {.importc: "QSpinBox_value".}
proc fcQSpinBox_prefix(self: pointer): struct_miqt_string {.importc: "QSpinBox_prefix".}
proc fcQSpinBox_setPrefix(self: pointer, prefix: struct_miqt_string): void {.importc: "QSpinBox_setPrefix".}
proc fcQSpinBox_suffix(self: pointer): struct_miqt_string {.importc: "QSpinBox_suffix".}
proc fcQSpinBox_setSuffix(self: pointer, suffix: struct_miqt_string): void {.importc: "QSpinBox_setSuffix".}
proc fcQSpinBox_cleanText(self: pointer): struct_miqt_string {.importc: "QSpinBox_cleanText".}
proc fcQSpinBox_singleStep(self: pointer): cint {.importc: "QSpinBox_singleStep".}
proc fcQSpinBox_setSingleStep(self: pointer, val: cint): void {.importc: "QSpinBox_setSingleStep".}
proc fcQSpinBox_minimum(self: pointer): cint {.importc: "QSpinBox_minimum".}
proc fcQSpinBox_setMinimum(self: pointer, min: cint): void {.importc: "QSpinBox_setMinimum".}
proc fcQSpinBox_maximum(self: pointer): cint {.importc: "QSpinBox_maximum".}
proc fcQSpinBox_setMaximum(self: pointer, max: cint): void {.importc: "QSpinBox_setMaximum".}
proc fcQSpinBox_setRange(self: pointer, min: cint, max: cint): void {.importc: "QSpinBox_setRange".}
proc fcQSpinBox_stepType(self: pointer): cint {.importc: "QSpinBox_stepType".}
proc fcQSpinBox_setStepType(self: pointer, stepType: cint): void {.importc: "QSpinBox_setStepType".}
proc fcQSpinBox_displayIntegerBase(self: pointer): cint {.importc: "QSpinBox_displayIntegerBase".}
proc fcQSpinBox_setDisplayIntegerBase(self: pointer, base: cint): void {.importc: "QSpinBox_setDisplayIntegerBase".}
proc fcQSpinBox_setValue(self: pointer, val: cint): void {.importc: "QSpinBox_setValue".}
proc fcQSpinBox_valueChanged(self: pointer, param1: cint): void {.importc: "QSpinBox_valueChanged".}
proc fcQSpinBox_connect_valueChanged(self: pointer, slot: int, callback: proc (slot: int, param1: cint) {.cdecl.}, release: proc(slot: int) {.cdecl.}) {.importc: "QSpinBox_connect_valueChanged".}
proc fcQSpinBox_textChanged(self: pointer, param1: struct_miqt_string): void {.importc: "QSpinBox_textChanged".}
proc fcQSpinBox_connect_textChanged(self: pointer, slot: int, callback: proc (slot: int, param1: struct_miqt_string) {.cdecl.}, release: proc(slot: int) {.cdecl.}) {.importc: "QSpinBox_connect_textChanged".}
proc fcQSpinBox_valueChangedWithQString(self: pointer, param1: struct_miqt_string): void {.importc: "QSpinBox_valueChangedWithQString".}
proc fcQSpinBox_connect_valueChangedWithQString(self: pointer, slot: int, callback: proc (slot: int, param1: struct_miqt_string) {.cdecl.}, release: proc(slot: int) {.cdecl.}) {.importc: "QSpinBox_connect_valueChangedWithQString".}
proc fcQSpinBox_tr2(s: cstring, c: cstring): struct_miqt_string {.importc: "QSpinBox_tr2".}
proc fcQSpinBox_tr3(s: cstring, c: cstring, n: cint): struct_miqt_string {.importc: "QSpinBox_tr3".}
proc fcQSpinBox_trUtf82(s: cstring, c: cstring): struct_miqt_string {.importc: "QSpinBox_trUtf82".}
proc fcQSpinBox_trUtf83(s: cstring, c: cstring, n: cint): struct_miqt_string {.importc: "QSpinBox_trUtf83".}
proc fcQSpinBox_vtbl(self: pointer): pointer {.importc: "QSpinBox_vtbl".}
proc fcQSpinBox_vdata(self: pointer): pointer {.importc: "QSpinBox_vdata".}

type cQSpinBoxVTable {.pure.} = object
  destructor*: proc(self: pointer) {.cdecl, raises:[], gcsafe.}
  metaObject*: proc(self: pointer): pointer {.cdecl, raises: [], gcsafe.}
  metacast*: proc(self: pointer, param1: cstring): pointer {.cdecl, raises: [], gcsafe.}
  metacall*: proc(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.cdecl, raises: [], gcsafe.}
  event*: proc(self: pointer, event: pointer): bool {.cdecl, raises: [], gcsafe.}
  validate*: proc(self: pointer, input: struct_miqt_string, pos: ptr cint): cint {.cdecl, raises: [], gcsafe.}
  valueFromText*: proc(self: pointer, text: struct_miqt_string): cint {.cdecl, raises: [], gcsafe.}
  textFromValue*: proc(self: pointer, val: cint): struct_miqt_string {.cdecl, raises: [], gcsafe.}
  fixup*: proc(self: pointer, str: struct_miqt_string): void {.cdecl, raises: [], gcsafe.}
  sizeHint*: proc(self: pointer): pointer {.cdecl, raises: [], gcsafe.}
  minimumSizeHint*: proc(self: pointer): pointer {.cdecl, raises: [], gcsafe.}
  inputMethodQuery*: proc(self: pointer, param1: cint): pointer {.cdecl, raises: [], gcsafe.}
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
proc fcQSpinBox_virtualbase_metaObject(self: pointer): pointer {.importc: "QSpinBox_virtualbase_metaObject".}
proc fcQSpinBox_virtualbase_metacast(self: pointer, param1: cstring): pointer {.importc: "QSpinBox_virtualbase_metacast".}
proc fcQSpinBox_virtualbase_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.importc: "QSpinBox_virtualbase_metacall".}
proc fcQSpinBox_virtualbase_event(self: pointer, event: pointer): bool {.importc: "QSpinBox_virtualbase_event".}
proc fcQSpinBox_virtualbase_validate(self: pointer, input: struct_miqt_string, pos: ptr cint): cint {.importc: "QSpinBox_virtualbase_validate".}
proc fcQSpinBox_virtualbase_valueFromText(self: pointer, text: struct_miqt_string): cint {.importc: "QSpinBox_virtualbase_valueFromText".}
proc fcQSpinBox_virtualbase_textFromValue(self: pointer, val: cint): struct_miqt_string {.importc: "QSpinBox_virtualbase_textFromValue".}
proc fcQSpinBox_virtualbase_fixup(self: pointer, str: struct_miqt_string): void {.importc: "QSpinBox_virtualbase_fixup".}
proc fcQSpinBox_virtualbase_sizeHint(self: pointer): pointer {.importc: "QSpinBox_virtualbase_sizeHint".}
proc fcQSpinBox_virtualbase_minimumSizeHint(self: pointer): pointer {.importc: "QSpinBox_virtualbase_minimumSizeHint".}
proc fcQSpinBox_virtualbase_inputMethodQuery(self: pointer, param1: cint): pointer {.importc: "QSpinBox_virtualbase_inputMethodQuery".}
proc fcQSpinBox_virtualbase_stepBy(self: pointer, steps: cint): void {.importc: "QSpinBox_virtualbase_stepBy".}
proc fcQSpinBox_virtualbase_clear(self: pointer): void {.importc: "QSpinBox_virtualbase_clear".}
proc fcQSpinBox_virtualbase_resizeEvent(self: pointer, event: pointer): void {.importc: "QSpinBox_virtualbase_resizeEvent".}
proc fcQSpinBox_virtualbase_keyPressEvent(self: pointer, event: pointer): void {.importc: "QSpinBox_virtualbase_keyPressEvent".}
proc fcQSpinBox_virtualbase_keyReleaseEvent(self: pointer, event: pointer): void {.importc: "QSpinBox_virtualbase_keyReleaseEvent".}
proc fcQSpinBox_virtualbase_wheelEvent(self: pointer, event: pointer): void {.importc: "QSpinBox_virtualbase_wheelEvent".}
proc fcQSpinBox_virtualbase_focusInEvent(self: pointer, event: pointer): void {.importc: "QSpinBox_virtualbase_focusInEvent".}
proc fcQSpinBox_virtualbase_focusOutEvent(self: pointer, event: pointer): void {.importc: "QSpinBox_virtualbase_focusOutEvent".}
proc fcQSpinBox_virtualbase_contextMenuEvent(self: pointer, event: pointer): void {.importc: "QSpinBox_virtualbase_contextMenuEvent".}
proc fcQSpinBox_virtualbase_changeEvent(self: pointer, event: pointer): void {.importc: "QSpinBox_virtualbase_changeEvent".}
proc fcQSpinBox_virtualbase_closeEvent(self: pointer, event: pointer): void {.importc: "QSpinBox_virtualbase_closeEvent".}
proc fcQSpinBox_virtualbase_hideEvent(self: pointer, event: pointer): void {.importc: "QSpinBox_virtualbase_hideEvent".}
proc fcQSpinBox_virtualbase_mousePressEvent(self: pointer, event: pointer): void {.importc: "QSpinBox_virtualbase_mousePressEvent".}
proc fcQSpinBox_virtualbase_mouseReleaseEvent(self: pointer, event: pointer): void {.importc: "QSpinBox_virtualbase_mouseReleaseEvent".}
proc fcQSpinBox_virtualbase_mouseMoveEvent(self: pointer, event: pointer): void {.importc: "QSpinBox_virtualbase_mouseMoveEvent".}
proc fcQSpinBox_virtualbase_timerEvent(self: pointer, event: pointer): void {.importc: "QSpinBox_virtualbase_timerEvent".}
proc fcQSpinBox_virtualbase_paintEvent(self: pointer, event: pointer): void {.importc: "QSpinBox_virtualbase_paintEvent".}
proc fcQSpinBox_virtualbase_showEvent(self: pointer, event: pointer): void {.importc: "QSpinBox_virtualbase_showEvent".}
proc fcQSpinBox_virtualbase_stepEnabled(self: pointer): cint {.importc: "QSpinBox_virtualbase_stepEnabled".}
proc fcQSpinBox_virtualbase_devType(self: pointer): cint {.importc: "QSpinBox_virtualbase_devType".}
proc fcQSpinBox_virtualbase_setVisible(self: pointer, visible: bool): void {.importc: "QSpinBox_virtualbase_setVisible".}
proc fcQSpinBox_virtualbase_heightForWidth(self: pointer, param1: cint): cint {.importc: "QSpinBox_virtualbase_heightForWidth".}
proc fcQSpinBox_virtualbase_hasHeightForWidth(self: pointer): bool {.importc: "QSpinBox_virtualbase_hasHeightForWidth".}
proc fcQSpinBox_virtualbase_paintEngine(self: pointer): pointer {.importc: "QSpinBox_virtualbase_paintEngine".}
proc fcQSpinBox_virtualbase_mouseDoubleClickEvent(self: pointer, event: pointer): void {.importc: "QSpinBox_virtualbase_mouseDoubleClickEvent".}
proc fcQSpinBox_virtualbase_enterEvent(self: pointer, event: pointer): void {.importc: "QSpinBox_virtualbase_enterEvent".}
proc fcQSpinBox_virtualbase_leaveEvent(self: pointer, event: pointer): void {.importc: "QSpinBox_virtualbase_leaveEvent".}
proc fcQSpinBox_virtualbase_moveEvent(self: pointer, event: pointer): void {.importc: "QSpinBox_virtualbase_moveEvent".}
proc fcQSpinBox_virtualbase_tabletEvent(self: pointer, event: pointer): void {.importc: "QSpinBox_virtualbase_tabletEvent".}
proc fcQSpinBox_virtualbase_actionEvent(self: pointer, event: pointer): void {.importc: "QSpinBox_virtualbase_actionEvent".}
proc fcQSpinBox_virtualbase_dragEnterEvent(self: pointer, event: pointer): void {.importc: "QSpinBox_virtualbase_dragEnterEvent".}
proc fcQSpinBox_virtualbase_dragMoveEvent(self: pointer, event: pointer): void {.importc: "QSpinBox_virtualbase_dragMoveEvent".}
proc fcQSpinBox_virtualbase_dragLeaveEvent(self: pointer, event: pointer): void {.importc: "QSpinBox_virtualbase_dragLeaveEvent".}
proc fcQSpinBox_virtualbase_dropEvent(self: pointer, event: pointer): void {.importc: "QSpinBox_virtualbase_dropEvent".}
proc fcQSpinBox_virtualbase_nativeEvent(self: pointer, eventType: struct_miqt_string, message: pointer, resultVal: ptr clong): bool {.importc: "QSpinBox_virtualbase_nativeEvent".}
proc fcQSpinBox_virtualbase_metric(self: pointer, param1: cint): cint {.importc: "QSpinBox_virtualbase_metric".}
proc fcQSpinBox_virtualbase_initPainter(self: pointer, painter: pointer): void {.importc: "QSpinBox_virtualbase_initPainter".}
proc fcQSpinBox_virtualbase_redirected(self: pointer, offset: pointer): pointer {.importc: "QSpinBox_virtualbase_redirected".}
proc fcQSpinBox_virtualbase_sharedPainter(self: pointer): pointer {.importc: "QSpinBox_virtualbase_sharedPainter".}
proc fcQSpinBox_virtualbase_inputMethodEvent(self: pointer, param1: pointer): void {.importc: "QSpinBox_virtualbase_inputMethodEvent".}
proc fcQSpinBox_virtualbase_focusNextPrevChild(self: pointer, next: bool): bool {.importc: "QSpinBox_virtualbase_focusNextPrevChild".}
proc fcQSpinBox_virtualbase_eventFilter(self: pointer, watched: pointer, event: pointer): bool {.importc: "QSpinBox_virtualbase_eventFilter".}
proc fcQSpinBox_virtualbase_childEvent(self: pointer, event: pointer): void {.importc: "QSpinBox_virtualbase_childEvent".}
proc fcQSpinBox_virtualbase_customEvent(self: pointer, event: pointer): void {.importc: "QSpinBox_virtualbase_customEvent".}
proc fcQSpinBox_virtualbase_connectNotify(self: pointer, signal: pointer): void {.importc: "QSpinBox_virtualbase_connectNotify".}
proc fcQSpinBox_virtualbase_disconnectNotify(self: pointer, signal: pointer): void {.importc: "QSpinBox_virtualbase_disconnectNotify".}
proc fcQSpinBox_protectedbase_initStyleOption(self: pointer, option: pointer): void {.importc: "QSpinBox_protectedbase_initStyleOption".}
proc fcQSpinBox_protectedbase_lineEdit(self: pointer): pointer {.importc: "QSpinBox_protectedbase_lineEdit".}
proc fcQSpinBox_protectedbase_setLineEdit(self: pointer, edit: pointer): void {.importc: "QSpinBox_protectedbase_setLineEdit".}
proc fcQSpinBox_protectedbase_updateMicroFocus(self: pointer): void {.importc: "QSpinBox_protectedbase_updateMicroFocus".}
proc fcQSpinBox_protectedbase_create(self: pointer): void {.importc: "QSpinBox_protectedbase_create".}
proc fcQSpinBox_protectedbase_destroy(self: pointer): void {.importc: "QSpinBox_protectedbase_destroy".}
proc fcQSpinBox_protectedbase_focusNextChild(self: pointer): bool {.importc: "QSpinBox_protectedbase_focusNextChild".}
proc fcQSpinBox_protectedbase_focusPreviousChild(self: pointer): bool {.importc: "QSpinBox_protectedbase_focusPreviousChild".}
proc fcQSpinBox_protectedbase_sender(self: pointer): pointer {.importc: "QSpinBox_protectedbase_sender".}
proc fcQSpinBox_protectedbase_senderSignalIndex(self: pointer): cint {.importc: "QSpinBox_protectedbase_senderSignalIndex".}
proc fcQSpinBox_protectedbase_receivers(self: pointer, signal: cstring): cint {.importc: "QSpinBox_protectedbase_receivers".}
proc fcQSpinBox_protectedbase_isSignalConnected(self: pointer, signal: pointer): bool {.importc: "QSpinBox_protectedbase_isSignalConnected".}
proc fcQSpinBox_new(vtbl, vdata: pointer, parent: pointer): ptr cQSpinBox {.importc: "QSpinBox_new".}
proc fcQSpinBox_new2(vtbl, vdata: pointer): ptr cQSpinBox {.importc: "QSpinBox_new2".}
proc fcQSpinBox_staticMetaObject(): pointer {.importc: "QSpinBox_staticMetaObject".}
proc fcQDoubleSpinBox_metaObject(self: pointer): pointer {.importc: "QDoubleSpinBox_metaObject".}
proc fcQDoubleSpinBox_metacast(self: pointer, param1: cstring): pointer {.importc: "QDoubleSpinBox_metacast".}
proc fcQDoubleSpinBox_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.importc: "QDoubleSpinBox_metacall".}
proc fcQDoubleSpinBox_tr(s: cstring): struct_miqt_string {.importc: "QDoubleSpinBox_tr".}
proc fcQDoubleSpinBox_trUtf8(s: cstring): struct_miqt_string {.importc: "QDoubleSpinBox_trUtf8".}
proc fcQDoubleSpinBox_value(self: pointer): float64 {.importc: "QDoubleSpinBox_value".}
proc fcQDoubleSpinBox_prefix(self: pointer): struct_miqt_string {.importc: "QDoubleSpinBox_prefix".}
proc fcQDoubleSpinBox_setPrefix(self: pointer, prefix: struct_miqt_string): void {.importc: "QDoubleSpinBox_setPrefix".}
proc fcQDoubleSpinBox_suffix(self: pointer): struct_miqt_string {.importc: "QDoubleSpinBox_suffix".}
proc fcQDoubleSpinBox_setSuffix(self: pointer, suffix: struct_miqt_string): void {.importc: "QDoubleSpinBox_setSuffix".}
proc fcQDoubleSpinBox_cleanText(self: pointer): struct_miqt_string {.importc: "QDoubleSpinBox_cleanText".}
proc fcQDoubleSpinBox_singleStep(self: pointer): float64 {.importc: "QDoubleSpinBox_singleStep".}
proc fcQDoubleSpinBox_setSingleStep(self: pointer, val: float64): void {.importc: "QDoubleSpinBox_setSingleStep".}
proc fcQDoubleSpinBox_minimum(self: pointer): float64 {.importc: "QDoubleSpinBox_minimum".}
proc fcQDoubleSpinBox_setMinimum(self: pointer, min: float64): void {.importc: "QDoubleSpinBox_setMinimum".}
proc fcQDoubleSpinBox_maximum(self: pointer): float64 {.importc: "QDoubleSpinBox_maximum".}
proc fcQDoubleSpinBox_setMaximum(self: pointer, max: float64): void {.importc: "QDoubleSpinBox_setMaximum".}
proc fcQDoubleSpinBox_setRange(self: pointer, min: float64, max: float64): void {.importc: "QDoubleSpinBox_setRange".}
proc fcQDoubleSpinBox_stepType(self: pointer): cint {.importc: "QDoubleSpinBox_stepType".}
proc fcQDoubleSpinBox_setStepType(self: pointer, stepType: cint): void {.importc: "QDoubleSpinBox_setStepType".}
proc fcQDoubleSpinBox_decimals(self: pointer): cint {.importc: "QDoubleSpinBox_decimals".}
proc fcQDoubleSpinBox_setDecimals(self: pointer, prec: cint): void {.importc: "QDoubleSpinBox_setDecimals".}
proc fcQDoubleSpinBox_validate(self: pointer, input: struct_miqt_string, pos: ptr cint): cint {.importc: "QDoubleSpinBox_validate".}
proc fcQDoubleSpinBox_valueFromText(self: pointer, text: struct_miqt_string): float64 {.importc: "QDoubleSpinBox_valueFromText".}
proc fcQDoubleSpinBox_textFromValue(self: pointer, val: float64): struct_miqt_string {.importc: "QDoubleSpinBox_textFromValue".}
proc fcQDoubleSpinBox_fixup(self: pointer, str: struct_miqt_string): void {.importc: "QDoubleSpinBox_fixup".}
proc fcQDoubleSpinBox_setValue(self: pointer, val: float64): void {.importc: "QDoubleSpinBox_setValue".}
proc fcQDoubleSpinBox_valueChanged(self: pointer, param1: float64): void {.importc: "QDoubleSpinBox_valueChanged".}
proc fcQDoubleSpinBox_connect_valueChanged(self: pointer, slot: int, callback: proc (slot: int, param1: float64) {.cdecl.}, release: proc(slot: int) {.cdecl.}) {.importc: "QDoubleSpinBox_connect_valueChanged".}
proc fcQDoubleSpinBox_textChanged(self: pointer, param1: struct_miqt_string): void {.importc: "QDoubleSpinBox_textChanged".}
proc fcQDoubleSpinBox_connect_textChanged(self: pointer, slot: int, callback: proc (slot: int, param1: struct_miqt_string) {.cdecl.}, release: proc(slot: int) {.cdecl.}) {.importc: "QDoubleSpinBox_connect_textChanged".}
proc fcQDoubleSpinBox_valueChangedWithQString(self: pointer, param1: struct_miqt_string): void {.importc: "QDoubleSpinBox_valueChangedWithQString".}
proc fcQDoubleSpinBox_connect_valueChangedWithQString(self: pointer, slot: int, callback: proc (slot: int, param1: struct_miqt_string) {.cdecl.}, release: proc(slot: int) {.cdecl.}) {.importc: "QDoubleSpinBox_connect_valueChangedWithQString".}
proc fcQDoubleSpinBox_tr2(s: cstring, c: cstring): struct_miqt_string {.importc: "QDoubleSpinBox_tr2".}
proc fcQDoubleSpinBox_tr3(s: cstring, c: cstring, n: cint): struct_miqt_string {.importc: "QDoubleSpinBox_tr3".}
proc fcQDoubleSpinBox_trUtf82(s: cstring, c: cstring): struct_miqt_string {.importc: "QDoubleSpinBox_trUtf82".}
proc fcQDoubleSpinBox_trUtf83(s: cstring, c: cstring, n: cint): struct_miqt_string {.importc: "QDoubleSpinBox_trUtf83".}
proc fcQDoubleSpinBox_vtbl(self: pointer): pointer {.importc: "QDoubleSpinBox_vtbl".}
proc fcQDoubleSpinBox_vdata(self: pointer): pointer {.importc: "QDoubleSpinBox_vdata".}

type cQDoubleSpinBoxVTable {.pure.} = object
  destructor*: proc(self: pointer) {.cdecl, raises:[], gcsafe.}
  metaObject*: proc(self: pointer): pointer {.cdecl, raises: [], gcsafe.}
  metacast*: proc(self: pointer, param1: cstring): pointer {.cdecl, raises: [], gcsafe.}
  metacall*: proc(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.cdecl, raises: [], gcsafe.}
  validate*: proc(self: pointer, input: struct_miqt_string, pos: ptr cint): cint {.cdecl, raises: [], gcsafe.}
  valueFromText*: proc(self: pointer, text: struct_miqt_string): float64 {.cdecl, raises: [], gcsafe.}
  textFromValue*: proc(self: pointer, val: float64): struct_miqt_string {.cdecl, raises: [], gcsafe.}
  fixup*: proc(self: pointer, str: struct_miqt_string): void {.cdecl, raises: [], gcsafe.}
  sizeHint*: proc(self: pointer): pointer {.cdecl, raises: [], gcsafe.}
  minimumSizeHint*: proc(self: pointer): pointer {.cdecl, raises: [], gcsafe.}
  event*: proc(self: pointer, event: pointer): bool {.cdecl, raises: [], gcsafe.}
  inputMethodQuery*: proc(self: pointer, param1: cint): pointer {.cdecl, raises: [], gcsafe.}
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
proc fcQDoubleSpinBox_virtualbase_metaObject(self: pointer): pointer {.importc: "QDoubleSpinBox_virtualbase_metaObject".}
proc fcQDoubleSpinBox_virtualbase_metacast(self: pointer, param1: cstring): pointer {.importc: "QDoubleSpinBox_virtualbase_metacast".}
proc fcQDoubleSpinBox_virtualbase_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.importc: "QDoubleSpinBox_virtualbase_metacall".}
proc fcQDoubleSpinBox_virtualbase_validate(self: pointer, input: struct_miqt_string, pos: ptr cint): cint {.importc: "QDoubleSpinBox_virtualbase_validate".}
proc fcQDoubleSpinBox_virtualbase_valueFromText(self: pointer, text: struct_miqt_string): float64 {.importc: "QDoubleSpinBox_virtualbase_valueFromText".}
proc fcQDoubleSpinBox_virtualbase_textFromValue(self: pointer, val: float64): struct_miqt_string {.importc: "QDoubleSpinBox_virtualbase_textFromValue".}
proc fcQDoubleSpinBox_virtualbase_fixup(self: pointer, str: struct_miqt_string): void {.importc: "QDoubleSpinBox_virtualbase_fixup".}
proc fcQDoubleSpinBox_virtualbase_sizeHint(self: pointer): pointer {.importc: "QDoubleSpinBox_virtualbase_sizeHint".}
proc fcQDoubleSpinBox_virtualbase_minimumSizeHint(self: pointer): pointer {.importc: "QDoubleSpinBox_virtualbase_minimumSizeHint".}
proc fcQDoubleSpinBox_virtualbase_event(self: pointer, event: pointer): bool {.importc: "QDoubleSpinBox_virtualbase_event".}
proc fcQDoubleSpinBox_virtualbase_inputMethodQuery(self: pointer, param1: cint): pointer {.importc: "QDoubleSpinBox_virtualbase_inputMethodQuery".}
proc fcQDoubleSpinBox_virtualbase_stepBy(self: pointer, steps: cint): void {.importc: "QDoubleSpinBox_virtualbase_stepBy".}
proc fcQDoubleSpinBox_virtualbase_clear(self: pointer): void {.importc: "QDoubleSpinBox_virtualbase_clear".}
proc fcQDoubleSpinBox_virtualbase_resizeEvent(self: pointer, event: pointer): void {.importc: "QDoubleSpinBox_virtualbase_resizeEvent".}
proc fcQDoubleSpinBox_virtualbase_keyPressEvent(self: pointer, event: pointer): void {.importc: "QDoubleSpinBox_virtualbase_keyPressEvent".}
proc fcQDoubleSpinBox_virtualbase_keyReleaseEvent(self: pointer, event: pointer): void {.importc: "QDoubleSpinBox_virtualbase_keyReleaseEvent".}
proc fcQDoubleSpinBox_virtualbase_wheelEvent(self: pointer, event: pointer): void {.importc: "QDoubleSpinBox_virtualbase_wheelEvent".}
proc fcQDoubleSpinBox_virtualbase_focusInEvent(self: pointer, event: pointer): void {.importc: "QDoubleSpinBox_virtualbase_focusInEvent".}
proc fcQDoubleSpinBox_virtualbase_focusOutEvent(self: pointer, event: pointer): void {.importc: "QDoubleSpinBox_virtualbase_focusOutEvent".}
proc fcQDoubleSpinBox_virtualbase_contextMenuEvent(self: pointer, event: pointer): void {.importc: "QDoubleSpinBox_virtualbase_contextMenuEvent".}
proc fcQDoubleSpinBox_virtualbase_changeEvent(self: pointer, event: pointer): void {.importc: "QDoubleSpinBox_virtualbase_changeEvent".}
proc fcQDoubleSpinBox_virtualbase_closeEvent(self: pointer, event: pointer): void {.importc: "QDoubleSpinBox_virtualbase_closeEvent".}
proc fcQDoubleSpinBox_virtualbase_hideEvent(self: pointer, event: pointer): void {.importc: "QDoubleSpinBox_virtualbase_hideEvent".}
proc fcQDoubleSpinBox_virtualbase_mousePressEvent(self: pointer, event: pointer): void {.importc: "QDoubleSpinBox_virtualbase_mousePressEvent".}
proc fcQDoubleSpinBox_virtualbase_mouseReleaseEvent(self: pointer, event: pointer): void {.importc: "QDoubleSpinBox_virtualbase_mouseReleaseEvent".}
proc fcQDoubleSpinBox_virtualbase_mouseMoveEvent(self: pointer, event: pointer): void {.importc: "QDoubleSpinBox_virtualbase_mouseMoveEvent".}
proc fcQDoubleSpinBox_virtualbase_timerEvent(self: pointer, event: pointer): void {.importc: "QDoubleSpinBox_virtualbase_timerEvent".}
proc fcQDoubleSpinBox_virtualbase_paintEvent(self: pointer, event: pointer): void {.importc: "QDoubleSpinBox_virtualbase_paintEvent".}
proc fcQDoubleSpinBox_virtualbase_showEvent(self: pointer, event: pointer): void {.importc: "QDoubleSpinBox_virtualbase_showEvent".}
proc fcQDoubleSpinBox_virtualbase_stepEnabled(self: pointer): cint {.importc: "QDoubleSpinBox_virtualbase_stepEnabled".}
proc fcQDoubleSpinBox_virtualbase_devType(self: pointer): cint {.importc: "QDoubleSpinBox_virtualbase_devType".}
proc fcQDoubleSpinBox_virtualbase_setVisible(self: pointer, visible: bool): void {.importc: "QDoubleSpinBox_virtualbase_setVisible".}
proc fcQDoubleSpinBox_virtualbase_heightForWidth(self: pointer, param1: cint): cint {.importc: "QDoubleSpinBox_virtualbase_heightForWidth".}
proc fcQDoubleSpinBox_virtualbase_hasHeightForWidth(self: pointer): bool {.importc: "QDoubleSpinBox_virtualbase_hasHeightForWidth".}
proc fcQDoubleSpinBox_virtualbase_paintEngine(self: pointer): pointer {.importc: "QDoubleSpinBox_virtualbase_paintEngine".}
proc fcQDoubleSpinBox_virtualbase_mouseDoubleClickEvent(self: pointer, event: pointer): void {.importc: "QDoubleSpinBox_virtualbase_mouseDoubleClickEvent".}
proc fcQDoubleSpinBox_virtualbase_enterEvent(self: pointer, event: pointer): void {.importc: "QDoubleSpinBox_virtualbase_enterEvent".}
proc fcQDoubleSpinBox_virtualbase_leaveEvent(self: pointer, event: pointer): void {.importc: "QDoubleSpinBox_virtualbase_leaveEvent".}
proc fcQDoubleSpinBox_virtualbase_moveEvent(self: pointer, event: pointer): void {.importc: "QDoubleSpinBox_virtualbase_moveEvent".}
proc fcQDoubleSpinBox_virtualbase_tabletEvent(self: pointer, event: pointer): void {.importc: "QDoubleSpinBox_virtualbase_tabletEvent".}
proc fcQDoubleSpinBox_virtualbase_actionEvent(self: pointer, event: pointer): void {.importc: "QDoubleSpinBox_virtualbase_actionEvent".}
proc fcQDoubleSpinBox_virtualbase_dragEnterEvent(self: pointer, event: pointer): void {.importc: "QDoubleSpinBox_virtualbase_dragEnterEvent".}
proc fcQDoubleSpinBox_virtualbase_dragMoveEvent(self: pointer, event: pointer): void {.importc: "QDoubleSpinBox_virtualbase_dragMoveEvent".}
proc fcQDoubleSpinBox_virtualbase_dragLeaveEvent(self: pointer, event: pointer): void {.importc: "QDoubleSpinBox_virtualbase_dragLeaveEvent".}
proc fcQDoubleSpinBox_virtualbase_dropEvent(self: pointer, event: pointer): void {.importc: "QDoubleSpinBox_virtualbase_dropEvent".}
proc fcQDoubleSpinBox_virtualbase_nativeEvent(self: pointer, eventType: struct_miqt_string, message: pointer, resultVal: ptr clong): bool {.importc: "QDoubleSpinBox_virtualbase_nativeEvent".}
proc fcQDoubleSpinBox_virtualbase_metric(self: pointer, param1: cint): cint {.importc: "QDoubleSpinBox_virtualbase_metric".}
proc fcQDoubleSpinBox_virtualbase_initPainter(self: pointer, painter: pointer): void {.importc: "QDoubleSpinBox_virtualbase_initPainter".}
proc fcQDoubleSpinBox_virtualbase_redirected(self: pointer, offset: pointer): pointer {.importc: "QDoubleSpinBox_virtualbase_redirected".}
proc fcQDoubleSpinBox_virtualbase_sharedPainter(self: pointer): pointer {.importc: "QDoubleSpinBox_virtualbase_sharedPainter".}
proc fcQDoubleSpinBox_virtualbase_inputMethodEvent(self: pointer, param1: pointer): void {.importc: "QDoubleSpinBox_virtualbase_inputMethodEvent".}
proc fcQDoubleSpinBox_virtualbase_focusNextPrevChild(self: pointer, next: bool): bool {.importc: "QDoubleSpinBox_virtualbase_focusNextPrevChild".}
proc fcQDoubleSpinBox_virtualbase_eventFilter(self: pointer, watched: pointer, event: pointer): bool {.importc: "QDoubleSpinBox_virtualbase_eventFilter".}
proc fcQDoubleSpinBox_virtualbase_childEvent(self: pointer, event: pointer): void {.importc: "QDoubleSpinBox_virtualbase_childEvent".}
proc fcQDoubleSpinBox_virtualbase_customEvent(self: pointer, event: pointer): void {.importc: "QDoubleSpinBox_virtualbase_customEvent".}
proc fcQDoubleSpinBox_virtualbase_connectNotify(self: pointer, signal: pointer): void {.importc: "QDoubleSpinBox_virtualbase_connectNotify".}
proc fcQDoubleSpinBox_virtualbase_disconnectNotify(self: pointer, signal: pointer): void {.importc: "QDoubleSpinBox_virtualbase_disconnectNotify".}
proc fcQDoubleSpinBox_protectedbase_initStyleOption(self: pointer, option: pointer): void {.importc: "QDoubleSpinBox_protectedbase_initStyleOption".}
proc fcQDoubleSpinBox_protectedbase_lineEdit(self: pointer): pointer {.importc: "QDoubleSpinBox_protectedbase_lineEdit".}
proc fcQDoubleSpinBox_protectedbase_setLineEdit(self: pointer, edit: pointer): void {.importc: "QDoubleSpinBox_protectedbase_setLineEdit".}
proc fcQDoubleSpinBox_protectedbase_updateMicroFocus(self: pointer): void {.importc: "QDoubleSpinBox_protectedbase_updateMicroFocus".}
proc fcQDoubleSpinBox_protectedbase_create(self: pointer): void {.importc: "QDoubleSpinBox_protectedbase_create".}
proc fcQDoubleSpinBox_protectedbase_destroy(self: pointer): void {.importc: "QDoubleSpinBox_protectedbase_destroy".}
proc fcQDoubleSpinBox_protectedbase_focusNextChild(self: pointer): bool {.importc: "QDoubleSpinBox_protectedbase_focusNextChild".}
proc fcQDoubleSpinBox_protectedbase_focusPreviousChild(self: pointer): bool {.importc: "QDoubleSpinBox_protectedbase_focusPreviousChild".}
proc fcQDoubleSpinBox_protectedbase_sender(self: pointer): pointer {.importc: "QDoubleSpinBox_protectedbase_sender".}
proc fcQDoubleSpinBox_protectedbase_senderSignalIndex(self: pointer): cint {.importc: "QDoubleSpinBox_protectedbase_senderSignalIndex".}
proc fcQDoubleSpinBox_protectedbase_receivers(self: pointer, signal: cstring): cint {.importc: "QDoubleSpinBox_protectedbase_receivers".}
proc fcQDoubleSpinBox_protectedbase_isSignalConnected(self: pointer, signal: pointer): bool {.importc: "QDoubleSpinBox_protectedbase_isSignalConnected".}
proc fcQDoubleSpinBox_new(vtbl, vdata: pointer, parent: pointer): ptr cQDoubleSpinBox {.importc: "QDoubleSpinBox_new".}
proc fcQDoubleSpinBox_new2(vtbl, vdata: pointer): ptr cQDoubleSpinBox {.importc: "QDoubleSpinBox_new2".}
proc fcQDoubleSpinBox_staticMetaObject(): pointer {.importc: "QDoubleSpinBox_staticMetaObject".}

proc metaObject*(self: gen_qspinbox_types.QSpinBox): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQSpinBox_metaObject(self.h), owned: false)

proc metacast*(self: gen_qspinbox_types.QSpinBox, param1: cstring): pointer =
  fcQSpinBox_metacast(self.h, param1)

proc metacall*(self: gen_qspinbox_types.QSpinBox, param1: cint, param2: cint, param3: pointer): cint =
  fcQSpinBox_metacall(self.h, cint(param1), param2, param3)

proc tr*(_: type gen_qspinbox_types.QSpinBox, s: cstring): string =
  let v_ms = fcQSpinBox_tr(s)
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

proc trUtf8*(_: type gen_qspinbox_types.QSpinBox, s: cstring): string =
  let v_ms = fcQSpinBox_trUtf8(s)
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

proc value*(self: gen_qspinbox_types.QSpinBox): cint =
  fcQSpinBox_value(self.h)

proc prefix*(self: gen_qspinbox_types.QSpinBox): string =
  let v_ms = fcQSpinBox_prefix(self.h)
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

proc setPrefix*(self: gen_qspinbox_types.QSpinBox, prefix: openArray[char]): void =
  fcQSpinBox_setPrefix(self.h, struct_miqt_string(data: if len(prefix) > 0: addr prefix[0] else: nil, len: csize_t(len(prefix))))

proc suffix*(self: gen_qspinbox_types.QSpinBox): string =
  let v_ms = fcQSpinBox_suffix(self.h)
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

proc setSuffix*(self: gen_qspinbox_types.QSpinBox, suffix: openArray[char]): void =
  fcQSpinBox_setSuffix(self.h, struct_miqt_string(data: if len(suffix) > 0: addr suffix[0] else: nil, len: csize_t(len(suffix))))

proc cleanText*(self: gen_qspinbox_types.QSpinBox): string =
  let v_ms = fcQSpinBox_cleanText(self.h)
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

proc singleStep*(self: gen_qspinbox_types.QSpinBox): cint =
  fcQSpinBox_singleStep(self.h)

proc setSingleStep*(self: gen_qspinbox_types.QSpinBox, val: cint): void =
  fcQSpinBox_setSingleStep(self.h, val)

proc minimum*(self: gen_qspinbox_types.QSpinBox): cint =
  fcQSpinBox_minimum(self.h)

proc setMinimum*(self: gen_qspinbox_types.QSpinBox, min: cint): void =
  fcQSpinBox_setMinimum(self.h, min)

proc maximum*(self: gen_qspinbox_types.QSpinBox): cint =
  fcQSpinBox_maximum(self.h)

proc setMaximum*(self: gen_qspinbox_types.QSpinBox, max: cint): void =
  fcQSpinBox_setMaximum(self.h, max)

proc setRange*(self: gen_qspinbox_types.QSpinBox, min: cint, max: cint): void =
  fcQSpinBox_setRange(self.h, min, max)

proc stepType*(self: gen_qspinbox_types.QSpinBox): cint =
  cint(fcQSpinBox_stepType(self.h))

proc setStepType*(self: gen_qspinbox_types.QSpinBox, stepType: cint): void =
  fcQSpinBox_setStepType(self.h, cint(stepType))

proc displayIntegerBase*(self: gen_qspinbox_types.QSpinBox): cint =
  fcQSpinBox_displayIntegerBase(self.h)

proc setDisplayIntegerBase*(self: gen_qspinbox_types.QSpinBox, base: cint): void =
  fcQSpinBox_setDisplayIntegerBase(self.h, base)

proc setValue*(self: gen_qspinbox_types.QSpinBox, val: cint): void =
  fcQSpinBox_setValue(self.h, val)

proc valueChanged*(self: gen_qspinbox_types.QSpinBox, param1: cint): void =
  fcQSpinBox_valueChanged(self.h, param1)

type QSpinBoxvalueChangedSlot* = proc(param1: cint)
proc fcQSpinBox_slot_callback_valueChanged(slot: int, param1: cint) {.cdecl.} =
  let nimfunc = cast[ptr QSpinBoxvalueChangedSlot](cast[pointer](slot))
  let slotval1 = param1

  nimfunc[](slotval1)

proc fcQSpinBox_slot_callback_valueChanged_release(slot: int) {.cdecl.} =
  let nimfunc = cast[ref QSpinBoxvalueChangedSlot](cast[pointer](slot))
  GC_unref(nimfunc)

proc onValueChanged*(self: gen_qspinbox_types.QSpinBox, slot: QSpinBoxvalueChangedSlot) =
  var tmp = new QSpinBoxvalueChangedSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQSpinBox_connect_valueChanged(self.h, cast[int](addr tmp[]), fcQSpinBox_slot_callback_valueChanged, fcQSpinBox_slot_callback_valueChanged_release)

proc textChanged*(self: gen_qspinbox_types.QSpinBox, param1: openArray[char]): void =
  fcQSpinBox_textChanged(self.h, struct_miqt_string(data: if len(param1) > 0: addr param1[0] else: nil, len: csize_t(len(param1))))

type QSpinBoxtextChangedSlot* = proc(param1: openArray[char])
proc fcQSpinBox_slot_callback_textChanged(slot: int, param1: struct_miqt_string) {.cdecl.} =
  let nimfunc = cast[ptr QSpinBoxtextChangedSlot](cast[pointer](slot))
  let vparam1_ms = param1
  let vparam1x_ret = string.fromBytes(vparam1_ms)
  c_free(vparam1_ms.data)
  let slotval1 = vparam1x_ret

  nimfunc[](slotval1)

proc fcQSpinBox_slot_callback_textChanged_release(slot: int) {.cdecl.} =
  let nimfunc = cast[ref QSpinBoxtextChangedSlot](cast[pointer](slot))
  GC_unref(nimfunc)

proc onTextChanged*(self: gen_qspinbox_types.QSpinBox, slot: QSpinBoxtextChangedSlot) =
  var tmp = new QSpinBoxtextChangedSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQSpinBox_connect_textChanged(self.h, cast[int](addr tmp[]), fcQSpinBox_slot_callback_textChanged, fcQSpinBox_slot_callback_textChanged_release)

proc valueChanged*(self: gen_qspinbox_types.QSpinBox, param1: openArray[char]): void =
  fcQSpinBox_valueChangedWithQString(self.h, struct_miqt_string(data: if len(param1) > 0: addr param1[0] else: nil, len: csize_t(len(param1))))

type QSpinBoxvalueChangedWithQStringSlot* = proc(param1: openArray[char])
proc fcQSpinBox_slot_callback_valueChangedWithQString(slot: int, param1: struct_miqt_string) {.cdecl.} =
  let nimfunc = cast[ptr QSpinBoxvalueChangedWithQStringSlot](cast[pointer](slot))
  let vparam1_ms = param1
  let vparam1x_ret = string.fromBytes(vparam1_ms)
  c_free(vparam1_ms.data)
  let slotval1 = vparam1x_ret

  nimfunc[](slotval1)

proc fcQSpinBox_slot_callback_valueChangedWithQString_release(slot: int) {.cdecl.} =
  let nimfunc = cast[ref QSpinBoxvalueChangedWithQStringSlot](cast[pointer](slot))
  GC_unref(nimfunc)

proc onValueChanged*(self: gen_qspinbox_types.QSpinBox, slot: QSpinBoxvalueChangedWithQStringSlot) =
  var tmp = new QSpinBoxvalueChangedWithQStringSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQSpinBox_connect_valueChangedWithQString(self.h, cast[int](addr tmp[]), fcQSpinBox_slot_callback_valueChangedWithQString, fcQSpinBox_slot_callback_valueChangedWithQString_release)

proc tr*(_: type gen_qspinbox_types.QSpinBox, s: cstring, c: cstring): string =
  let v_ms = fcQSpinBox_tr2(s, c)
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

proc tr*(_: type gen_qspinbox_types.QSpinBox, s: cstring, c: cstring, n: cint): string =
  let v_ms = fcQSpinBox_tr3(s, c, n)
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

proc trUtf8*(_: type gen_qspinbox_types.QSpinBox, s: cstring, c: cstring): string =
  let v_ms = fcQSpinBox_trUtf82(s, c)
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

proc trUtf8*(_: type gen_qspinbox_types.QSpinBox, s: cstring, c: cstring, n: cint): string =
  let v_ms = fcQSpinBox_trUtf83(s, c, n)
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

type QSpinBoxmetaObjectProc* = proc(self: QSpinBox): gen_qobjectdefs_types.QMetaObject {.raises: [], gcsafe.}
type QSpinBoxmetacastProc* = proc(self: QSpinBox, param1: cstring): pointer {.raises: [], gcsafe.}
type QSpinBoxmetacallProc* = proc(self: QSpinBox, param1: cint, param2: cint, param3: pointer): cint {.raises: [], gcsafe.}
type QSpinBoxeventProc* = proc(self: QSpinBox, event: gen_qcoreevent_types.QEvent): bool {.raises: [], gcsafe.}
type QSpinBoxvalidateProc* = proc(self: QSpinBox, input: openArray[char], pos: ptr cint): cint {.raises: [], gcsafe.}
type QSpinBoxvalueFromTextProc* = proc(self: QSpinBox, text: openArray[char]): cint {.raises: [], gcsafe.}
type QSpinBoxtextFromValueProc* = proc(self: QSpinBox, val: cint): string {.raises: [], gcsafe.}
type QSpinBoxfixupProc* = proc(self: QSpinBox, str: openArray[char]): void {.raises: [], gcsafe.}
type QSpinBoxsizeHintProc* = proc(self: QSpinBox): gen_qsize_types.QSize {.raises: [], gcsafe.}
type QSpinBoxminimumSizeHintProc* = proc(self: QSpinBox): gen_qsize_types.QSize {.raises: [], gcsafe.}
type QSpinBoxinputMethodQueryProc* = proc(self: QSpinBox, param1: cint): gen_qvariant_types.QVariant {.raises: [], gcsafe.}
type QSpinBoxstepByProc* = proc(self: QSpinBox, steps: cint): void {.raises: [], gcsafe.}
type QSpinBoxclearProc* = proc(self: QSpinBox): void {.raises: [], gcsafe.}
type QSpinBoxresizeEventProc* = proc(self: QSpinBox, event: gen_qevent_types.QResizeEvent): void {.raises: [], gcsafe.}
type QSpinBoxkeyPressEventProc* = proc(self: QSpinBox, event: gen_qevent_types.QKeyEvent): void {.raises: [], gcsafe.}
type QSpinBoxkeyReleaseEventProc* = proc(self: QSpinBox, event: gen_qevent_types.QKeyEvent): void {.raises: [], gcsafe.}
type QSpinBoxwheelEventProc* = proc(self: QSpinBox, event: gen_qevent_types.QWheelEvent): void {.raises: [], gcsafe.}
type QSpinBoxfocusInEventProc* = proc(self: QSpinBox, event: gen_qevent_types.QFocusEvent): void {.raises: [], gcsafe.}
type QSpinBoxfocusOutEventProc* = proc(self: QSpinBox, event: gen_qevent_types.QFocusEvent): void {.raises: [], gcsafe.}
type QSpinBoxcontextMenuEventProc* = proc(self: QSpinBox, event: gen_qevent_types.QContextMenuEvent): void {.raises: [], gcsafe.}
type QSpinBoxchangeEventProc* = proc(self: QSpinBox, event: gen_qcoreevent_types.QEvent): void {.raises: [], gcsafe.}
type QSpinBoxcloseEventProc* = proc(self: QSpinBox, event: gen_qevent_types.QCloseEvent): void {.raises: [], gcsafe.}
type QSpinBoxhideEventProc* = proc(self: QSpinBox, event: gen_qevent_types.QHideEvent): void {.raises: [], gcsafe.}
type QSpinBoxmousePressEventProc* = proc(self: QSpinBox, event: gen_qevent_types.QMouseEvent): void {.raises: [], gcsafe.}
type QSpinBoxmouseReleaseEventProc* = proc(self: QSpinBox, event: gen_qevent_types.QMouseEvent): void {.raises: [], gcsafe.}
type QSpinBoxmouseMoveEventProc* = proc(self: QSpinBox, event: gen_qevent_types.QMouseEvent): void {.raises: [], gcsafe.}
type QSpinBoxtimerEventProc* = proc(self: QSpinBox, event: gen_qcoreevent_types.QTimerEvent): void {.raises: [], gcsafe.}
type QSpinBoxpaintEventProc* = proc(self: QSpinBox, event: gen_qevent_types.QPaintEvent): void {.raises: [], gcsafe.}
type QSpinBoxshowEventProc* = proc(self: QSpinBox, event: gen_qevent_types.QShowEvent): void {.raises: [], gcsafe.}
type QSpinBoxstepEnabledProc* = proc(self: QSpinBox): cint {.raises: [], gcsafe.}
type QSpinBoxdevTypeProc* = proc(self: QSpinBox): cint {.raises: [], gcsafe.}
type QSpinBoxsetVisibleProc* = proc(self: QSpinBox, visible: bool): void {.raises: [], gcsafe.}
type QSpinBoxheightForWidthProc* = proc(self: QSpinBox, param1: cint): cint {.raises: [], gcsafe.}
type QSpinBoxhasHeightForWidthProc* = proc(self: QSpinBox): bool {.raises: [], gcsafe.}
type QSpinBoxpaintEngineProc* = proc(self: QSpinBox): gen_qpaintengine_types.QPaintEngine {.raises: [], gcsafe.}
type QSpinBoxmouseDoubleClickEventProc* = proc(self: QSpinBox, event: gen_qevent_types.QMouseEvent): void {.raises: [], gcsafe.}
type QSpinBoxenterEventProc* = proc(self: QSpinBox, event: gen_qcoreevent_types.QEvent): void {.raises: [], gcsafe.}
type QSpinBoxleaveEventProc* = proc(self: QSpinBox, event: gen_qcoreevent_types.QEvent): void {.raises: [], gcsafe.}
type QSpinBoxmoveEventProc* = proc(self: QSpinBox, event: gen_qevent_types.QMoveEvent): void {.raises: [], gcsafe.}
type QSpinBoxtabletEventProc* = proc(self: QSpinBox, event: gen_qevent_types.QTabletEvent): void {.raises: [], gcsafe.}
type QSpinBoxactionEventProc* = proc(self: QSpinBox, event: gen_qevent_types.QActionEvent): void {.raises: [], gcsafe.}
type QSpinBoxdragEnterEventProc* = proc(self: QSpinBox, event: gen_qevent_types.QDragEnterEvent): void {.raises: [], gcsafe.}
type QSpinBoxdragMoveEventProc* = proc(self: QSpinBox, event: gen_qevent_types.QDragMoveEvent): void {.raises: [], gcsafe.}
type QSpinBoxdragLeaveEventProc* = proc(self: QSpinBox, event: gen_qevent_types.QDragLeaveEvent): void {.raises: [], gcsafe.}
type QSpinBoxdropEventProc* = proc(self: QSpinBox, event: gen_qevent_types.QDropEvent): void {.raises: [], gcsafe.}
type QSpinBoxnativeEventProc* = proc(self: QSpinBox, eventType: openArray[byte], message: pointer, resultVal: ptr clong): bool {.raises: [], gcsafe.}
type QSpinBoxmetricProc* = proc(self: QSpinBox, param1: cint): cint {.raises: [], gcsafe.}
type QSpinBoxinitPainterProc* = proc(self: QSpinBox, painter: gen_qpainter_types.QPainter): void {.raises: [], gcsafe.}
type QSpinBoxredirectedProc* = proc(self: QSpinBox, offset: gen_qpoint_types.QPoint): gen_qpaintdevice_types.QPaintDevice {.raises: [], gcsafe.}
type QSpinBoxsharedPainterProc* = proc(self: QSpinBox): gen_qpainter_types.QPainter {.raises: [], gcsafe.}
type QSpinBoxinputMethodEventProc* = proc(self: QSpinBox, param1: gen_qevent_types.QInputMethodEvent): void {.raises: [], gcsafe.}
type QSpinBoxfocusNextPrevChildProc* = proc(self: QSpinBox, next: bool): bool {.raises: [], gcsafe.}
type QSpinBoxeventFilterProc* = proc(self: QSpinBox, watched: gen_qobject_types.QObject, event: gen_qcoreevent_types.QEvent): bool {.raises: [], gcsafe.}
type QSpinBoxchildEventProc* = proc(self: QSpinBox, event: gen_qcoreevent_types.QChildEvent): void {.raises: [], gcsafe.}
type QSpinBoxcustomEventProc* = proc(self: QSpinBox, event: gen_qcoreevent_types.QEvent): void {.raises: [], gcsafe.}
type QSpinBoxconnectNotifyProc* = proc(self: QSpinBox, signal: gen_qmetaobject_types.QMetaMethod): void {.raises: [], gcsafe.}
type QSpinBoxdisconnectNotifyProc* = proc(self: QSpinBox, signal: gen_qmetaobject_types.QMetaMethod): void {.raises: [], gcsafe.}

type QSpinBoxVTable* {.inheritable, pure.} = object
  vtbl: cQSpinBoxVTable
  metaObject*: QSpinBoxmetaObjectProc
  metacast*: QSpinBoxmetacastProc
  metacall*: QSpinBoxmetacallProc
  event*: QSpinBoxeventProc
  validate*: QSpinBoxvalidateProc
  valueFromText*: QSpinBoxvalueFromTextProc
  textFromValue*: QSpinBoxtextFromValueProc
  fixup*: QSpinBoxfixupProc
  sizeHint*: QSpinBoxsizeHintProc
  minimumSizeHint*: QSpinBoxminimumSizeHintProc
  inputMethodQuery*: QSpinBoxinputMethodQueryProc
  stepBy*: QSpinBoxstepByProc
  clear*: QSpinBoxclearProc
  resizeEvent*: QSpinBoxresizeEventProc
  keyPressEvent*: QSpinBoxkeyPressEventProc
  keyReleaseEvent*: QSpinBoxkeyReleaseEventProc
  wheelEvent*: QSpinBoxwheelEventProc
  focusInEvent*: QSpinBoxfocusInEventProc
  focusOutEvent*: QSpinBoxfocusOutEventProc
  contextMenuEvent*: QSpinBoxcontextMenuEventProc
  changeEvent*: QSpinBoxchangeEventProc
  closeEvent*: QSpinBoxcloseEventProc
  hideEvent*: QSpinBoxhideEventProc
  mousePressEvent*: QSpinBoxmousePressEventProc
  mouseReleaseEvent*: QSpinBoxmouseReleaseEventProc
  mouseMoveEvent*: QSpinBoxmouseMoveEventProc
  timerEvent*: QSpinBoxtimerEventProc
  paintEvent*: QSpinBoxpaintEventProc
  showEvent*: QSpinBoxshowEventProc
  stepEnabled*: QSpinBoxstepEnabledProc
  devType*: QSpinBoxdevTypeProc
  setVisible*: QSpinBoxsetVisibleProc
  heightForWidth*: QSpinBoxheightForWidthProc
  hasHeightForWidth*: QSpinBoxhasHeightForWidthProc
  paintEngine*: QSpinBoxpaintEngineProc
  mouseDoubleClickEvent*: QSpinBoxmouseDoubleClickEventProc
  enterEvent*: QSpinBoxenterEventProc
  leaveEvent*: QSpinBoxleaveEventProc
  moveEvent*: QSpinBoxmoveEventProc
  tabletEvent*: QSpinBoxtabletEventProc
  actionEvent*: QSpinBoxactionEventProc
  dragEnterEvent*: QSpinBoxdragEnterEventProc
  dragMoveEvent*: QSpinBoxdragMoveEventProc
  dragLeaveEvent*: QSpinBoxdragLeaveEventProc
  dropEvent*: QSpinBoxdropEventProc
  nativeEvent*: QSpinBoxnativeEventProc
  metric*: QSpinBoxmetricProc
  initPainter*: QSpinBoxinitPainterProc
  redirected*: QSpinBoxredirectedProc
  sharedPainter*: QSpinBoxsharedPainterProc
  inputMethodEvent*: QSpinBoxinputMethodEventProc
  focusNextPrevChild*: QSpinBoxfocusNextPrevChildProc
  eventFilter*: QSpinBoxeventFilterProc
  childEvent*: QSpinBoxchildEventProc
  customEvent*: QSpinBoxcustomEventProc
  connectNotify*: QSpinBoxconnectNotifyProc
  disconnectNotify*: QSpinBoxdisconnectNotifyProc

proc QSpinBoxmetaObject*(self: gen_qspinbox_types.QSpinBox): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQSpinBox_virtualbase_metaObject(self.h), owned: false)

proc QSpinBoxmetacast*(self: gen_qspinbox_types.QSpinBox, param1: cstring): pointer =
  fcQSpinBox_virtualbase_metacast(self.h, param1)

proc QSpinBoxmetacall*(self: gen_qspinbox_types.QSpinBox, param1: cint, param2: cint, param3: pointer): cint =
  fcQSpinBox_virtualbase_metacall(self.h, cint(param1), param2, param3)

proc QSpinBoxevent*(self: gen_qspinbox_types.QSpinBox, event: gen_qcoreevent_types.QEvent): bool =
  fcQSpinBox_virtualbase_event(self.h, event.h)

proc QSpinBoxvalidate*(self: gen_qspinbox_types.QSpinBox, input: openArray[char], pos: ptr cint): cint =
  cint(fcQSpinBox_virtualbase_validate(self.h, struct_miqt_string(data: if len(input) > 0: addr input[0] else: nil, len: csize_t(len(input))), pos))

proc QSpinBoxvalueFromText*(self: gen_qspinbox_types.QSpinBox, text: openArray[char]): cint =
  fcQSpinBox_virtualbase_valueFromText(self.h, struct_miqt_string(data: if len(text) > 0: addr text[0] else: nil, len: csize_t(len(text))))

proc QSpinBoxtextFromValue*(self: gen_qspinbox_types.QSpinBox, val: cint): string =
  let v_ms = fcQSpinBox_virtualbase_textFromValue(self.h, val)
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

proc QSpinBoxfixup*(self: gen_qspinbox_types.QSpinBox, str: openArray[char]): void =
  fcQSpinBox_virtualbase_fixup(self.h, struct_miqt_string(data: if len(str) > 0: addr str[0] else: nil, len: csize_t(len(str))))

proc QSpinBoxsizeHint*(self: gen_qspinbox_types.QSpinBox): gen_qsize_types.QSize =
  gen_qsize_types.QSize(h: fcQSpinBox_virtualbase_sizeHint(self.h), owned: true)

proc QSpinBoxminimumSizeHint*(self: gen_qspinbox_types.QSpinBox): gen_qsize_types.QSize =
  gen_qsize_types.QSize(h: fcQSpinBox_virtualbase_minimumSizeHint(self.h), owned: true)

proc QSpinBoxinputMethodQuery*(self: gen_qspinbox_types.QSpinBox, param1: cint): gen_qvariant_types.QVariant =
  gen_qvariant_types.QVariant(h: fcQSpinBox_virtualbase_inputMethodQuery(self.h, cint(param1)), owned: true)

proc QSpinBoxstepBy*(self: gen_qspinbox_types.QSpinBox, steps: cint): void =
  fcQSpinBox_virtualbase_stepBy(self.h, steps)

proc QSpinBoxclear*(self: gen_qspinbox_types.QSpinBox): void =
  fcQSpinBox_virtualbase_clear(self.h)

proc QSpinBoxresizeEvent*(self: gen_qspinbox_types.QSpinBox, event: gen_qevent_types.QResizeEvent): void =
  fcQSpinBox_virtualbase_resizeEvent(self.h, event.h)

proc QSpinBoxkeyPressEvent*(self: gen_qspinbox_types.QSpinBox, event: gen_qevent_types.QKeyEvent): void =
  fcQSpinBox_virtualbase_keyPressEvent(self.h, event.h)

proc QSpinBoxkeyReleaseEvent*(self: gen_qspinbox_types.QSpinBox, event: gen_qevent_types.QKeyEvent): void =
  fcQSpinBox_virtualbase_keyReleaseEvent(self.h, event.h)

proc QSpinBoxwheelEvent*(self: gen_qspinbox_types.QSpinBox, event: gen_qevent_types.QWheelEvent): void =
  fcQSpinBox_virtualbase_wheelEvent(self.h, event.h)

proc QSpinBoxfocusInEvent*(self: gen_qspinbox_types.QSpinBox, event: gen_qevent_types.QFocusEvent): void =
  fcQSpinBox_virtualbase_focusInEvent(self.h, event.h)

proc QSpinBoxfocusOutEvent*(self: gen_qspinbox_types.QSpinBox, event: gen_qevent_types.QFocusEvent): void =
  fcQSpinBox_virtualbase_focusOutEvent(self.h, event.h)

proc QSpinBoxcontextMenuEvent*(self: gen_qspinbox_types.QSpinBox, event: gen_qevent_types.QContextMenuEvent): void =
  fcQSpinBox_virtualbase_contextMenuEvent(self.h, event.h)

proc QSpinBoxchangeEvent*(self: gen_qspinbox_types.QSpinBox, event: gen_qcoreevent_types.QEvent): void =
  fcQSpinBox_virtualbase_changeEvent(self.h, event.h)

proc QSpinBoxcloseEvent*(self: gen_qspinbox_types.QSpinBox, event: gen_qevent_types.QCloseEvent): void =
  fcQSpinBox_virtualbase_closeEvent(self.h, event.h)

proc QSpinBoxhideEvent*(self: gen_qspinbox_types.QSpinBox, event: gen_qevent_types.QHideEvent): void =
  fcQSpinBox_virtualbase_hideEvent(self.h, event.h)

proc QSpinBoxmousePressEvent*(self: gen_qspinbox_types.QSpinBox, event: gen_qevent_types.QMouseEvent): void =
  fcQSpinBox_virtualbase_mousePressEvent(self.h, event.h)

proc QSpinBoxmouseReleaseEvent*(self: gen_qspinbox_types.QSpinBox, event: gen_qevent_types.QMouseEvent): void =
  fcQSpinBox_virtualbase_mouseReleaseEvent(self.h, event.h)

proc QSpinBoxmouseMoveEvent*(self: gen_qspinbox_types.QSpinBox, event: gen_qevent_types.QMouseEvent): void =
  fcQSpinBox_virtualbase_mouseMoveEvent(self.h, event.h)

proc QSpinBoxtimerEvent*(self: gen_qspinbox_types.QSpinBox, event: gen_qcoreevent_types.QTimerEvent): void =
  fcQSpinBox_virtualbase_timerEvent(self.h, event.h)

proc QSpinBoxpaintEvent*(self: gen_qspinbox_types.QSpinBox, event: gen_qevent_types.QPaintEvent): void =
  fcQSpinBox_virtualbase_paintEvent(self.h, event.h)

proc QSpinBoxshowEvent*(self: gen_qspinbox_types.QSpinBox, event: gen_qevent_types.QShowEvent): void =
  fcQSpinBox_virtualbase_showEvent(self.h, event.h)

proc QSpinBoxstepEnabled*(self: gen_qspinbox_types.QSpinBox): cint =
  cint(fcQSpinBox_virtualbase_stepEnabled(self.h))

proc QSpinBoxdevType*(self: gen_qspinbox_types.QSpinBox): cint =
  fcQSpinBox_virtualbase_devType(self.h)

proc QSpinBoxsetVisible*(self: gen_qspinbox_types.QSpinBox, visible: bool): void =
  fcQSpinBox_virtualbase_setVisible(self.h, visible)

proc QSpinBoxheightForWidth*(self: gen_qspinbox_types.QSpinBox, param1: cint): cint =
  fcQSpinBox_virtualbase_heightForWidth(self.h, param1)

proc QSpinBoxhasHeightForWidth*(self: gen_qspinbox_types.QSpinBox): bool =
  fcQSpinBox_virtualbase_hasHeightForWidth(self.h)

proc QSpinBoxpaintEngine*(self: gen_qspinbox_types.QSpinBox): gen_qpaintengine_types.QPaintEngine =
  gen_qpaintengine_types.QPaintEngine(h: fcQSpinBox_virtualbase_paintEngine(self.h), owned: false)

proc QSpinBoxmouseDoubleClickEvent*(self: gen_qspinbox_types.QSpinBox, event: gen_qevent_types.QMouseEvent): void =
  fcQSpinBox_virtualbase_mouseDoubleClickEvent(self.h, event.h)

proc QSpinBoxenterEvent*(self: gen_qspinbox_types.QSpinBox, event: gen_qcoreevent_types.QEvent): void =
  fcQSpinBox_virtualbase_enterEvent(self.h, event.h)

proc QSpinBoxleaveEvent*(self: gen_qspinbox_types.QSpinBox, event: gen_qcoreevent_types.QEvent): void =
  fcQSpinBox_virtualbase_leaveEvent(self.h, event.h)

proc QSpinBoxmoveEvent*(self: gen_qspinbox_types.QSpinBox, event: gen_qevent_types.QMoveEvent): void =
  fcQSpinBox_virtualbase_moveEvent(self.h, event.h)

proc QSpinBoxtabletEvent*(self: gen_qspinbox_types.QSpinBox, event: gen_qevent_types.QTabletEvent): void =
  fcQSpinBox_virtualbase_tabletEvent(self.h, event.h)

proc QSpinBoxactionEvent*(self: gen_qspinbox_types.QSpinBox, event: gen_qevent_types.QActionEvent): void =
  fcQSpinBox_virtualbase_actionEvent(self.h, event.h)

proc QSpinBoxdragEnterEvent*(self: gen_qspinbox_types.QSpinBox, event: gen_qevent_types.QDragEnterEvent): void =
  fcQSpinBox_virtualbase_dragEnterEvent(self.h, event.h)

proc QSpinBoxdragMoveEvent*(self: gen_qspinbox_types.QSpinBox, event: gen_qevent_types.QDragMoveEvent): void =
  fcQSpinBox_virtualbase_dragMoveEvent(self.h, event.h)

proc QSpinBoxdragLeaveEvent*(self: gen_qspinbox_types.QSpinBox, event: gen_qevent_types.QDragLeaveEvent): void =
  fcQSpinBox_virtualbase_dragLeaveEvent(self.h, event.h)

proc QSpinBoxdropEvent*(self: gen_qspinbox_types.QSpinBox, event: gen_qevent_types.QDropEvent): void =
  fcQSpinBox_virtualbase_dropEvent(self.h, event.h)

proc QSpinBoxnativeEvent*(self: gen_qspinbox_types.QSpinBox, eventType: openArray[byte], message: pointer, resultVal: ptr clong): bool =
  fcQSpinBox_virtualbase_nativeEvent(self.h, struct_miqt_string(data: cast[cstring](if len(eventType) == 0: nil else: unsafeAddr eventType[0]), len: csize_t(len(eventType))), message, resultVal)

proc QSpinBoxmetric*(self: gen_qspinbox_types.QSpinBox, param1: cint): cint =
  fcQSpinBox_virtualbase_metric(self.h, cint(param1))

proc QSpinBoxinitPainter*(self: gen_qspinbox_types.QSpinBox, painter: gen_qpainter_types.QPainter): void =
  fcQSpinBox_virtualbase_initPainter(self.h, painter.h)

proc QSpinBoxredirected*(self: gen_qspinbox_types.QSpinBox, offset: gen_qpoint_types.QPoint): gen_qpaintdevice_types.QPaintDevice =
  gen_qpaintdevice_types.QPaintDevice(h: fcQSpinBox_virtualbase_redirected(self.h, offset.h), owned: false)

proc QSpinBoxsharedPainter*(self: gen_qspinbox_types.QSpinBox): gen_qpainter_types.QPainter =
  gen_qpainter_types.QPainter(h: fcQSpinBox_virtualbase_sharedPainter(self.h), owned: false)

proc QSpinBoxinputMethodEvent*(self: gen_qspinbox_types.QSpinBox, param1: gen_qevent_types.QInputMethodEvent): void =
  fcQSpinBox_virtualbase_inputMethodEvent(self.h, param1.h)

proc QSpinBoxfocusNextPrevChild*(self: gen_qspinbox_types.QSpinBox, next: bool): bool =
  fcQSpinBox_virtualbase_focusNextPrevChild(self.h, next)

proc QSpinBoxeventFilter*(self: gen_qspinbox_types.QSpinBox, watched: gen_qobject_types.QObject, event: gen_qcoreevent_types.QEvent): bool =
  fcQSpinBox_virtualbase_eventFilter(self.h, watched.h, event.h)

proc QSpinBoxchildEvent*(self: gen_qspinbox_types.QSpinBox, event: gen_qcoreevent_types.QChildEvent): void =
  fcQSpinBox_virtualbase_childEvent(self.h, event.h)

proc QSpinBoxcustomEvent*(self: gen_qspinbox_types.QSpinBox, event: gen_qcoreevent_types.QEvent): void =
  fcQSpinBox_virtualbase_customEvent(self.h, event.h)

proc QSpinBoxconnectNotify*(self: gen_qspinbox_types.QSpinBox, signal: gen_qmetaobject_types.QMetaMethod): void =
  fcQSpinBox_virtualbase_connectNotify(self.h, signal.h)

proc QSpinBoxdisconnectNotify*(self: gen_qspinbox_types.QSpinBox, signal: gen_qmetaobject_types.QMetaMethod): void =
  fcQSpinBox_virtualbase_disconnectNotify(self.h, signal.h)


proc fcQSpinBox_vtable_callback_metaObject(self: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QSpinBoxVTable](fcQSpinBox_vdata(self))
  let self = QSpinBox(h: self)
  var virtualReturn = vtbl[].metaObject(self)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc fcQSpinBox_vtable_callback_metacast(self: pointer, param1: cstring): pointer {.cdecl.} =
  let vtbl = cast[ptr QSpinBoxVTable](fcQSpinBox_vdata(self))
  let self = QSpinBox(h: self)
  let slotval1 = (param1)
  var virtualReturn = vtbl[].metacast(self, slotval1)
  virtualReturn

proc fcQSpinBox_vtable_callback_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.cdecl.} =
  let vtbl = cast[ptr QSpinBoxVTable](fcQSpinBox_vdata(self))
  let self = QSpinBox(h: self)
  let slotval1 = cint(param1)
  let slotval2 = param2
  let slotval3 = param3
  var virtualReturn = vtbl[].metacall(self, slotval1, slotval2, slotval3)
  virtualReturn

proc fcQSpinBox_vtable_callback_event(self: pointer, event: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QSpinBoxVTable](fcQSpinBox_vdata(self))
  let self = QSpinBox(h: self)
  let slotval1 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  var virtualReturn = vtbl[].event(self, slotval1)
  virtualReturn

proc fcQSpinBox_vtable_callback_validate(self: pointer, input: struct_miqt_string, pos: ptr cint): cint {.cdecl.} =
  let vtbl = cast[ptr QSpinBoxVTable](fcQSpinBox_vdata(self))
  let self = QSpinBox(h: self)
  let vinput_ms = input
  let vinputx_ret = string.fromBytes(vinput_ms)
  c_free(vinput_ms.data)
  let slotval1 = vinputx_ret
  let slotval2 = pos
  var virtualReturn = vtbl[].validate(self, slotval1, slotval2)
  cint(virtualReturn)

proc fcQSpinBox_vtable_callback_valueFromText(self: pointer, text: struct_miqt_string): cint {.cdecl.} =
  let vtbl = cast[ptr QSpinBoxVTable](fcQSpinBox_vdata(self))
  let self = QSpinBox(h: self)
  let vtext_ms = text
  let vtextx_ret = string.fromBytes(vtext_ms)
  c_free(vtext_ms.data)
  let slotval1 = vtextx_ret
  var virtualReturn = vtbl[].valueFromText(self, slotval1)
  virtualReturn

proc fcQSpinBox_vtable_callback_textFromValue(self: pointer, val: cint): struct_miqt_string {.cdecl.} =
  let vtbl = cast[ptr QSpinBoxVTable](fcQSpinBox_vdata(self))
  let self = QSpinBox(h: self)
  let slotval1 = val
  var virtualReturn = vtbl[].textFromValue(self, slotval1)
  var virtualReturn_copy = cast[cstring](if len(virtualReturn) > 0: c_malloc(csize_t(len(virtualReturn))) else: nil)
  if len(virtualReturn) > 0: copyMem(cast[pointer](virtualReturn_copy), addr virtualReturn[0], csize_t(len(virtualReturn)))
  struct_miqt_string(data: virtualReturn_copy, len: csize_t(len(virtualReturn)))

proc fcQSpinBox_vtable_callback_fixup(self: pointer, str: struct_miqt_string): void {.cdecl.} =
  let vtbl = cast[ptr QSpinBoxVTable](fcQSpinBox_vdata(self))
  let self = QSpinBox(h: self)
  let vstr_ms = str
  let vstrx_ret = string.fromBytes(vstr_ms)
  c_free(vstr_ms.data)
  let slotval1 = vstrx_ret
  vtbl[].fixup(self, slotval1)

proc fcQSpinBox_vtable_callback_sizeHint(self: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QSpinBoxVTable](fcQSpinBox_vdata(self))
  let self = QSpinBox(h: self)
  var virtualReturn = vtbl[].sizeHint(self)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc fcQSpinBox_vtable_callback_minimumSizeHint(self: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QSpinBoxVTable](fcQSpinBox_vdata(self))
  let self = QSpinBox(h: self)
  var virtualReturn = vtbl[].minimumSizeHint(self)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc fcQSpinBox_vtable_callback_inputMethodQuery(self: pointer, param1: cint): pointer {.cdecl.} =
  let vtbl = cast[ptr QSpinBoxVTable](fcQSpinBox_vdata(self))
  let self = QSpinBox(h: self)
  let slotval1 = cint(param1)
  var virtualReturn = vtbl[].inputMethodQuery(self, slotval1)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc fcQSpinBox_vtable_callback_stepBy(self: pointer, steps: cint): void {.cdecl.} =
  let vtbl = cast[ptr QSpinBoxVTable](fcQSpinBox_vdata(self))
  let self = QSpinBox(h: self)
  let slotval1 = steps
  vtbl[].stepBy(self, slotval1)

proc fcQSpinBox_vtable_callback_clear(self: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QSpinBoxVTable](fcQSpinBox_vdata(self))
  let self = QSpinBox(h: self)
  vtbl[].clear(self)

proc fcQSpinBox_vtable_callback_resizeEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QSpinBoxVTable](fcQSpinBox_vdata(self))
  let self = QSpinBox(h: self)
  let slotval1 = gen_qevent_types.QResizeEvent(h: event, owned: false)
  vtbl[].resizeEvent(self, slotval1)

proc fcQSpinBox_vtable_callback_keyPressEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QSpinBoxVTable](fcQSpinBox_vdata(self))
  let self = QSpinBox(h: self)
  let slotval1 = gen_qevent_types.QKeyEvent(h: event, owned: false)
  vtbl[].keyPressEvent(self, slotval1)

proc fcQSpinBox_vtable_callback_keyReleaseEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QSpinBoxVTable](fcQSpinBox_vdata(self))
  let self = QSpinBox(h: self)
  let slotval1 = gen_qevent_types.QKeyEvent(h: event, owned: false)
  vtbl[].keyReleaseEvent(self, slotval1)

proc fcQSpinBox_vtable_callback_wheelEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QSpinBoxVTable](fcQSpinBox_vdata(self))
  let self = QSpinBox(h: self)
  let slotval1 = gen_qevent_types.QWheelEvent(h: event, owned: false)
  vtbl[].wheelEvent(self, slotval1)

proc fcQSpinBox_vtable_callback_focusInEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QSpinBoxVTable](fcQSpinBox_vdata(self))
  let self = QSpinBox(h: self)
  let slotval1 = gen_qevent_types.QFocusEvent(h: event, owned: false)
  vtbl[].focusInEvent(self, slotval1)

proc fcQSpinBox_vtable_callback_focusOutEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QSpinBoxVTable](fcQSpinBox_vdata(self))
  let self = QSpinBox(h: self)
  let slotval1 = gen_qevent_types.QFocusEvent(h: event, owned: false)
  vtbl[].focusOutEvent(self, slotval1)

proc fcQSpinBox_vtable_callback_contextMenuEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QSpinBoxVTable](fcQSpinBox_vdata(self))
  let self = QSpinBox(h: self)
  let slotval1 = gen_qevent_types.QContextMenuEvent(h: event, owned: false)
  vtbl[].contextMenuEvent(self, slotval1)

proc fcQSpinBox_vtable_callback_changeEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QSpinBoxVTable](fcQSpinBox_vdata(self))
  let self = QSpinBox(h: self)
  let slotval1 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  vtbl[].changeEvent(self, slotval1)

proc fcQSpinBox_vtable_callback_closeEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QSpinBoxVTable](fcQSpinBox_vdata(self))
  let self = QSpinBox(h: self)
  let slotval1 = gen_qevent_types.QCloseEvent(h: event, owned: false)
  vtbl[].closeEvent(self, slotval1)

proc fcQSpinBox_vtable_callback_hideEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QSpinBoxVTable](fcQSpinBox_vdata(self))
  let self = QSpinBox(h: self)
  let slotval1 = gen_qevent_types.QHideEvent(h: event, owned: false)
  vtbl[].hideEvent(self, slotval1)

proc fcQSpinBox_vtable_callback_mousePressEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QSpinBoxVTable](fcQSpinBox_vdata(self))
  let self = QSpinBox(h: self)
  let slotval1 = gen_qevent_types.QMouseEvent(h: event, owned: false)
  vtbl[].mousePressEvent(self, slotval1)

proc fcQSpinBox_vtable_callback_mouseReleaseEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QSpinBoxVTable](fcQSpinBox_vdata(self))
  let self = QSpinBox(h: self)
  let slotval1 = gen_qevent_types.QMouseEvent(h: event, owned: false)
  vtbl[].mouseReleaseEvent(self, slotval1)

proc fcQSpinBox_vtable_callback_mouseMoveEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QSpinBoxVTable](fcQSpinBox_vdata(self))
  let self = QSpinBox(h: self)
  let slotval1 = gen_qevent_types.QMouseEvent(h: event, owned: false)
  vtbl[].mouseMoveEvent(self, slotval1)

proc fcQSpinBox_vtable_callback_timerEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QSpinBoxVTable](fcQSpinBox_vdata(self))
  let self = QSpinBox(h: self)
  let slotval1 = gen_qcoreevent_types.QTimerEvent(h: event, owned: false)
  vtbl[].timerEvent(self, slotval1)

proc fcQSpinBox_vtable_callback_paintEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QSpinBoxVTable](fcQSpinBox_vdata(self))
  let self = QSpinBox(h: self)
  let slotval1 = gen_qevent_types.QPaintEvent(h: event, owned: false)
  vtbl[].paintEvent(self, slotval1)

proc fcQSpinBox_vtable_callback_showEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QSpinBoxVTable](fcQSpinBox_vdata(self))
  let self = QSpinBox(h: self)
  let slotval1 = gen_qevent_types.QShowEvent(h: event, owned: false)
  vtbl[].showEvent(self, slotval1)

proc fcQSpinBox_vtable_callback_stepEnabled(self: pointer): cint {.cdecl.} =
  let vtbl = cast[ptr QSpinBoxVTable](fcQSpinBox_vdata(self))
  let self = QSpinBox(h: self)
  var virtualReturn = vtbl[].stepEnabled(self)
  cint(virtualReturn)

proc fcQSpinBox_vtable_callback_devType(self: pointer): cint {.cdecl.} =
  let vtbl = cast[ptr QSpinBoxVTable](fcQSpinBox_vdata(self))
  let self = QSpinBox(h: self)
  var virtualReturn = vtbl[].devType(self)
  virtualReturn

proc fcQSpinBox_vtable_callback_setVisible(self: pointer, visible: bool): void {.cdecl.} =
  let vtbl = cast[ptr QSpinBoxVTable](fcQSpinBox_vdata(self))
  let self = QSpinBox(h: self)
  let slotval1 = visible
  vtbl[].setVisible(self, slotval1)

proc fcQSpinBox_vtable_callback_heightForWidth(self: pointer, param1: cint): cint {.cdecl.} =
  let vtbl = cast[ptr QSpinBoxVTable](fcQSpinBox_vdata(self))
  let self = QSpinBox(h: self)
  let slotval1 = param1
  var virtualReturn = vtbl[].heightForWidth(self, slotval1)
  virtualReturn

proc fcQSpinBox_vtable_callback_hasHeightForWidth(self: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QSpinBoxVTable](fcQSpinBox_vdata(self))
  let self = QSpinBox(h: self)
  var virtualReturn = vtbl[].hasHeightForWidth(self)
  virtualReturn

proc fcQSpinBox_vtable_callback_paintEngine(self: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QSpinBoxVTable](fcQSpinBox_vdata(self))
  let self = QSpinBox(h: self)
  var virtualReturn = vtbl[].paintEngine(self)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc fcQSpinBox_vtable_callback_mouseDoubleClickEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QSpinBoxVTable](fcQSpinBox_vdata(self))
  let self = QSpinBox(h: self)
  let slotval1 = gen_qevent_types.QMouseEvent(h: event, owned: false)
  vtbl[].mouseDoubleClickEvent(self, slotval1)

proc fcQSpinBox_vtable_callback_enterEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QSpinBoxVTable](fcQSpinBox_vdata(self))
  let self = QSpinBox(h: self)
  let slotval1 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  vtbl[].enterEvent(self, slotval1)

proc fcQSpinBox_vtable_callback_leaveEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QSpinBoxVTable](fcQSpinBox_vdata(self))
  let self = QSpinBox(h: self)
  let slotval1 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  vtbl[].leaveEvent(self, slotval1)

proc fcQSpinBox_vtable_callback_moveEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QSpinBoxVTable](fcQSpinBox_vdata(self))
  let self = QSpinBox(h: self)
  let slotval1 = gen_qevent_types.QMoveEvent(h: event, owned: false)
  vtbl[].moveEvent(self, slotval1)

proc fcQSpinBox_vtable_callback_tabletEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QSpinBoxVTable](fcQSpinBox_vdata(self))
  let self = QSpinBox(h: self)
  let slotval1 = gen_qevent_types.QTabletEvent(h: event, owned: false)
  vtbl[].tabletEvent(self, slotval1)

proc fcQSpinBox_vtable_callback_actionEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QSpinBoxVTable](fcQSpinBox_vdata(self))
  let self = QSpinBox(h: self)
  let slotval1 = gen_qevent_types.QActionEvent(h: event, owned: false)
  vtbl[].actionEvent(self, slotval1)

proc fcQSpinBox_vtable_callback_dragEnterEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QSpinBoxVTable](fcQSpinBox_vdata(self))
  let self = QSpinBox(h: self)
  let slotval1 = gen_qevent_types.QDragEnterEvent(h: event, owned: false)
  vtbl[].dragEnterEvent(self, slotval1)

proc fcQSpinBox_vtable_callback_dragMoveEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QSpinBoxVTable](fcQSpinBox_vdata(self))
  let self = QSpinBox(h: self)
  let slotval1 = gen_qevent_types.QDragMoveEvent(h: event, owned: false)
  vtbl[].dragMoveEvent(self, slotval1)

proc fcQSpinBox_vtable_callback_dragLeaveEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QSpinBoxVTable](fcQSpinBox_vdata(self))
  let self = QSpinBox(h: self)
  let slotval1 = gen_qevent_types.QDragLeaveEvent(h: event, owned: false)
  vtbl[].dragLeaveEvent(self, slotval1)

proc fcQSpinBox_vtable_callback_dropEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QSpinBoxVTable](fcQSpinBox_vdata(self))
  let self = QSpinBox(h: self)
  let slotval1 = gen_qevent_types.QDropEvent(h: event, owned: false)
  vtbl[].dropEvent(self, slotval1)

proc fcQSpinBox_vtable_callback_nativeEvent(self: pointer, eventType: struct_miqt_string, message: pointer, resultVal: ptr clong): bool {.cdecl.} =
  let vtbl = cast[ptr QSpinBoxVTable](fcQSpinBox_vdata(self))
  let self = QSpinBox(h: self)
  var veventType_bytearray = eventType
  var veventTypex_ret = @(toOpenArray(cast[ptr UncheckedArray[byte]](veventType_bytearray.data), 0, int(veventType_bytearray.len)-1))
  c_free(veventType_bytearray.data)
  let slotval1 = veventTypex_ret
  let slotval2 = message
  let slotval3 = resultVal
  var virtualReturn = vtbl[].nativeEvent(self, slotval1, slotval2, slotval3)
  virtualReturn

proc fcQSpinBox_vtable_callback_metric(self: pointer, param1: cint): cint {.cdecl.} =
  let vtbl = cast[ptr QSpinBoxVTable](fcQSpinBox_vdata(self))
  let self = QSpinBox(h: self)
  let slotval1 = cint(param1)
  var virtualReturn = vtbl[].metric(self, slotval1)
  virtualReturn

proc fcQSpinBox_vtable_callback_initPainter(self: pointer, painter: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QSpinBoxVTable](fcQSpinBox_vdata(self))
  let self = QSpinBox(h: self)
  let slotval1 = gen_qpainter_types.QPainter(h: painter, owned: false)
  vtbl[].initPainter(self, slotval1)

proc fcQSpinBox_vtable_callback_redirected(self: pointer, offset: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QSpinBoxVTable](fcQSpinBox_vdata(self))
  let self = QSpinBox(h: self)
  let slotval1 = gen_qpoint_types.QPoint(h: offset, owned: false)
  var virtualReturn = vtbl[].redirected(self, slotval1)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc fcQSpinBox_vtable_callback_sharedPainter(self: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QSpinBoxVTable](fcQSpinBox_vdata(self))
  let self = QSpinBox(h: self)
  var virtualReturn = vtbl[].sharedPainter(self)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc fcQSpinBox_vtable_callback_inputMethodEvent(self: pointer, param1: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QSpinBoxVTable](fcQSpinBox_vdata(self))
  let self = QSpinBox(h: self)
  let slotval1 = gen_qevent_types.QInputMethodEvent(h: param1, owned: false)
  vtbl[].inputMethodEvent(self, slotval1)

proc fcQSpinBox_vtable_callback_focusNextPrevChild(self: pointer, next: bool): bool {.cdecl.} =
  let vtbl = cast[ptr QSpinBoxVTable](fcQSpinBox_vdata(self))
  let self = QSpinBox(h: self)
  let slotval1 = next
  var virtualReturn = vtbl[].focusNextPrevChild(self, slotval1)
  virtualReturn

proc fcQSpinBox_vtable_callback_eventFilter(self: pointer, watched: pointer, event: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QSpinBoxVTable](fcQSpinBox_vdata(self))
  let self = QSpinBox(h: self)
  let slotval1 = gen_qobject_types.QObject(h: watched, owned: false)
  let slotval2 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  var virtualReturn = vtbl[].eventFilter(self, slotval1, slotval2)
  virtualReturn

proc fcQSpinBox_vtable_callback_childEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QSpinBoxVTable](fcQSpinBox_vdata(self))
  let self = QSpinBox(h: self)
  let slotval1 = gen_qcoreevent_types.QChildEvent(h: event, owned: false)
  vtbl[].childEvent(self, slotval1)

proc fcQSpinBox_vtable_callback_customEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QSpinBoxVTable](fcQSpinBox_vdata(self))
  let self = QSpinBox(h: self)
  let slotval1 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  vtbl[].customEvent(self, slotval1)

proc fcQSpinBox_vtable_callback_connectNotify(self: pointer, signal: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QSpinBoxVTable](fcQSpinBox_vdata(self))
  let self = QSpinBox(h: self)
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal, owned: false)
  vtbl[].connectNotify(self, slotval1)

proc fcQSpinBox_vtable_callback_disconnectNotify(self: pointer, signal: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QSpinBoxVTable](fcQSpinBox_vdata(self))
  let self = QSpinBox(h: self)
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal, owned: false)
  vtbl[].disconnectNotify(self, slotval1)

type VirtualQSpinBox* {.inheritable.} = ref object of QSpinBox
  vtbl*: cQSpinBoxVTable

method metaObject*(self: VirtualQSpinBox): gen_qobjectdefs_types.QMetaObject {.base.} =
  QSpinBoxmetaObject(self[])
method metacast*(self: VirtualQSpinBox, param1: cstring): pointer {.base.} =
  QSpinBoxmetacast(self[], param1)
method metacall*(self: VirtualQSpinBox, param1: cint, param2: cint, param3: pointer): cint {.base.} =
  QSpinBoxmetacall(self[], param1, param2, param3)
method event*(self: VirtualQSpinBox, event: gen_qcoreevent_types.QEvent): bool {.base.} =
  QSpinBoxevent(self[], event)
method validate*(self: VirtualQSpinBox, input: openArray[char], pos: ptr cint): cint {.base.} =
  QSpinBoxvalidate(self[], input, pos)
method valueFromText*(self: VirtualQSpinBox, text: openArray[char]): cint {.base.} =
  QSpinBoxvalueFromText(self[], text)
method textFromValue*(self: VirtualQSpinBox, val: cint): string {.base.} =
  QSpinBoxtextFromValue(self[], val)
method fixup*(self: VirtualQSpinBox, str: openArray[char]): void {.base.} =
  QSpinBoxfixup(self[], str)
method sizeHint*(self: VirtualQSpinBox): gen_qsize_types.QSize {.base.} =
  QSpinBoxsizeHint(self[])
method minimumSizeHint*(self: VirtualQSpinBox): gen_qsize_types.QSize {.base.} =
  QSpinBoxminimumSizeHint(self[])
method inputMethodQuery*(self: VirtualQSpinBox, param1: cint): gen_qvariant_types.QVariant {.base.} =
  QSpinBoxinputMethodQuery(self[], param1)
method stepBy*(self: VirtualQSpinBox, steps: cint): void {.base.} =
  QSpinBoxstepBy(self[], steps)
method clear*(self: VirtualQSpinBox): void {.base.} =
  QSpinBoxclear(self[])
method resizeEvent*(self: VirtualQSpinBox, event: gen_qevent_types.QResizeEvent): void {.base.} =
  QSpinBoxresizeEvent(self[], event)
method keyPressEvent*(self: VirtualQSpinBox, event: gen_qevent_types.QKeyEvent): void {.base.} =
  QSpinBoxkeyPressEvent(self[], event)
method keyReleaseEvent*(self: VirtualQSpinBox, event: gen_qevent_types.QKeyEvent): void {.base.} =
  QSpinBoxkeyReleaseEvent(self[], event)
method wheelEvent*(self: VirtualQSpinBox, event: gen_qevent_types.QWheelEvent): void {.base.} =
  QSpinBoxwheelEvent(self[], event)
method focusInEvent*(self: VirtualQSpinBox, event: gen_qevent_types.QFocusEvent): void {.base.} =
  QSpinBoxfocusInEvent(self[], event)
method focusOutEvent*(self: VirtualQSpinBox, event: gen_qevent_types.QFocusEvent): void {.base.} =
  QSpinBoxfocusOutEvent(self[], event)
method contextMenuEvent*(self: VirtualQSpinBox, event: gen_qevent_types.QContextMenuEvent): void {.base.} =
  QSpinBoxcontextMenuEvent(self[], event)
method changeEvent*(self: VirtualQSpinBox, event: gen_qcoreevent_types.QEvent): void {.base.} =
  QSpinBoxchangeEvent(self[], event)
method closeEvent*(self: VirtualQSpinBox, event: gen_qevent_types.QCloseEvent): void {.base.} =
  QSpinBoxcloseEvent(self[], event)
method hideEvent*(self: VirtualQSpinBox, event: gen_qevent_types.QHideEvent): void {.base.} =
  QSpinBoxhideEvent(self[], event)
method mousePressEvent*(self: VirtualQSpinBox, event: gen_qevent_types.QMouseEvent): void {.base.} =
  QSpinBoxmousePressEvent(self[], event)
method mouseReleaseEvent*(self: VirtualQSpinBox, event: gen_qevent_types.QMouseEvent): void {.base.} =
  QSpinBoxmouseReleaseEvent(self[], event)
method mouseMoveEvent*(self: VirtualQSpinBox, event: gen_qevent_types.QMouseEvent): void {.base.} =
  QSpinBoxmouseMoveEvent(self[], event)
method timerEvent*(self: VirtualQSpinBox, event: gen_qcoreevent_types.QTimerEvent): void {.base.} =
  QSpinBoxtimerEvent(self[], event)
method paintEvent*(self: VirtualQSpinBox, event: gen_qevent_types.QPaintEvent): void {.base.} =
  QSpinBoxpaintEvent(self[], event)
method showEvent*(self: VirtualQSpinBox, event: gen_qevent_types.QShowEvent): void {.base.} =
  QSpinBoxshowEvent(self[], event)
method stepEnabled*(self: VirtualQSpinBox): cint {.base.} =
  QSpinBoxstepEnabled(self[])
method devType*(self: VirtualQSpinBox): cint {.base.} =
  QSpinBoxdevType(self[])
method setVisible*(self: VirtualQSpinBox, visible: bool): void {.base.} =
  QSpinBoxsetVisible(self[], visible)
method heightForWidth*(self: VirtualQSpinBox, param1: cint): cint {.base.} =
  QSpinBoxheightForWidth(self[], param1)
method hasHeightForWidth*(self: VirtualQSpinBox): bool {.base.} =
  QSpinBoxhasHeightForWidth(self[])
method paintEngine*(self: VirtualQSpinBox): gen_qpaintengine_types.QPaintEngine {.base.} =
  QSpinBoxpaintEngine(self[])
method mouseDoubleClickEvent*(self: VirtualQSpinBox, event: gen_qevent_types.QMouseEvent): void {.base.} =
  QSpinBoxmouseDoubleClickEvent(self[], event)
method enterEvent*(self: VirtualQSpinBox, event: gen_qcoreevent_types.QEvent): void {.base.} =
  QSpinBoxenterEvent(self[], event)
method leaveEvent*(self: VirtualQSpinBox, event: gen_qcoreevent_types.QEvent): void {.base.} =
  QSpinBoxleaveEvent(self[], event)
method moveEvent*(self: VirtualQSpinBox, event: gen_qevent_types.QMoveEvent): void {.base.} =
  QSpinBoxmoveEvent(self[], event)
method tabletEvent*(self: VirtualQSpinBox, event: gen_qevent_types.QTabletEvent): void {.base.} =
  QSpinBoxtabletEvent(self[], event)
method actionEvent*(self: VirtualQSpinBox, event: gen_qevent_types.QActionEvent): void {.base.} =
  QSpinBoxactionEvent(self[], event)
method dragEnterEvent*(self: VirtualQSpinBox, event: gen_qevent_types.QDragEnterEvent): void {.base.} =
  QSpinBoxdragEnterEvent(self[], event)
method dragMoveEvent*(self: VirtualQSpinBox, event: gen_qevent_types.QDragMoveEvent): void {.base.} =
  QSpinBoxdragMoveEvent(self[], event)
method dragLeaveEvent*(self: VirtualQSpinBox, event: gen_qevent_types.QDragLeaveEvent): void {.base.} =
  QSpinBoxdragLeaveEvent(self[], event)
method dropEvent*(self: VirtualQSpinBox, event: gen_qevent_types.QDropEvent): void {.base.} =
  QSpinBoxdropEvent(self[], event)
method nativeEvent*(self: VirtualQSpinBox, eventType: openArray[byte], message: pointer, resultVal: ptr clong): bool {.base.} =
  QSpinBoxnativeEvent(self[], eventType, message, resultVal)
method metric*(self: VirtualQSpinBox, param1: cint): cint {.base.} =
  QSpinBoxmetric(self[], param1)
method initPainter*(self: VirtualQSpinBox, painter: gen_qpainter_types.QPainter): void {.base.} =
  QSpinBoxinitPainter(self[], painter)
method redirected*(self: VirtualQSpinBox, offset: gen_qpoint_types.QPoint): gen_qpaintdevice_types.QPaintDevice {.base.} =
  QSpinBoxredirected(self[], offset)
method sharedPainter*(self: VirtualQSpinBox): gen_qpainter_types.QPainter {.base.} =
  QSpinBoxsharedPainter(self[])
method inputMethodEvent*(self: VirtualQSpinBox, param1: gen_qevent_types.QInputMethodEvent): void {.base.} =
  QSpinBoxinputMethodEvent(self[], param1)
method focusNextPrevChild*(self: VirtualQSpinBox, next: bool): bool {.base.} =
  QSpinBoxfocusNextPrevChild(self[], next)
method eventFilter*(self: VirtualQSpinBox, watched: gen_qobject_types.QObject, event: gen_qcoreevent_types.QEvent): bool {.base.} =
  QSpinBoxeventFilter(self[], watched, event)
method childEvent*(self: VirtualQSpinBox, event: gen_qcoreevent_types.QChildEvent): void {.base.} =
  QSpinBoxchildEvent(self[], event)
method customEvent*(self: VirtualQSpinBox, event: gen_qcoreevent_types.QEvent): void {.base.} =
  QSpinBoxcustomEvent(self[], event)
method connectNotify*(self: VirtualQSpinBox, signal: gen_qmetaobject_types.QMetaMethod): void {.base.} =
  QSpinBoxconnectNotify(self[], signal)
method disconnectNotify*(self: VirtualQSpinBox, signal: gen_qmetaobject_types.QMetaMethod): void {.base.} =
  QSpinBoxdisconnectNotify(self[], signal)

proc fcQSpinBox_method_callback_metaObject(self: pointer): pointer {.cdecl.} =
  let inst = cast[VirtualQSpinBox](fcQSpinBox_vdata(self))
  var virtualReturn = inst.metaObject()
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc fcQSpinBox_method_callback_metacast(self: pointer, param1: cstring): pointer {.cdecl.} =
  let inst = cast[VirtualQSpinBox](fcQSpinBox_vdata(self))
  let slotval1 = (param1)
  var virtualReturn = inst.metacast(slotval1)
  virtualReturn

proc fcQSpinBox_method_callback_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.cdecl.} =
  let inst = cast[VirtualQSpinBox](fcQSpinBox_vdata(self))
  let slotval1 = cint(param1)
  let slotval2 = param2
  let slotval3 = param3
  var virtualReturn = inst.metacall(slotval1, slotval2, slotval3)
  virtualReturn

proc fcQSpinBox_method_callback_event(self: pointer, event: pointer): bool {.cdecl.} =
  let inst = cast[VirtualQSpinBox](fcQSpinBox_vdata(self))
  let slotval1 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  var virtualReturn = inst.event(slotval1)
  virtualReturn

proc fcQSpinBox_method_callback_validate(self: pointer, input: struct_miqt_string, pos: ptr cint): cint {.cdecl.} =
  let inst = cast[VirtualQSpinBox](fcQSpinBox_vdata(self))
  let vinput_ms = input
  let vinputx_ret = string.fromBytes(vinput_ms)
  c_free(vinput_ms.data)
  let slotval1 = vinputx_ret
  let slotval2 = pos
  var virtualReturn = inst.validate(slotval1, slotval2)
  cint(virtualReturn)

proc fcQSpinBox_method_callback_valueFromText(self: pointer, text: struct_miqt_string): cint {.cdecl.} =
  let inst = cast[VirtualQSpinBox](fcQSpinBox_vdata(self))
  let vtext_ms = text
  let vtextx_ret = string.fromBytes(vtext_ms)
  c_free(vtext_ms.data)
  let slotval1 = vtextx_ret
  var virtualReturn = inst.valueFromText(slotval1)
  virtualReturn

proc fcQSpinBox_method_callback_textFromValue(self: pointer, val: cint): struct_miqt_string {.cdecl.} =
  let inst = cast[VirtualQSpinBox](fcQSpinBox_vdata(self))
  let slotval1 = val
  var virtualReturn = inst.textFromValue(slotval1)
  var virtualReturn_copy = cast[cstring](if len(virtualReturn) > 0: c_malloc(csize_t(len(virtualReturn))) else: nil)
  if len(virtualReturn) > 0: copyMem(cast[pointer](virtualReturn_copy), addr virtualReturn[0], csize_t(len(virtualReturn)))
  struct_miqt_string(data: virtualReturn_copy, len: csize_t(len(virtualReturn)))

proc fcQSpinBox_method_callback_fixup(self: pointer, str: struct_miqt_string): void {.cdecl.} =
  let inst = cast[VirtualQSpinBox](fcQSpinBox_vdata(self))
  let vstr_ms = str
  let vstrx_ret = string.fromBytes(vstr_ms)
  c_free(vstr_ms.data)
  let slotval1 = vstrx_ret
  inst.fixup(slotval1)

proc fcQSpinBox_method_callback_sizeHint(self: pointer): pointer {.cdecl.} =
  let inst = cast[VirtualQSpinBox](fcQSpinBox_vdata(self))
  var virtualReturn = inst.sizeHint()
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc fcQSpinBox_method_callback_minimumSizeHint(self: pointer): pointer {.cdecl.} =
  let inst = cast[VirtualQSpinBox](fcQSpinBox_vdata(self))
  var virtualReturn = inst.minimumSizeHint()
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc fcQSpinBox_method_callback_inputMethodQuery(self: pointer, param1: cint): pointer {.cdecl.} =
  let inst = cast[VirtualQSpinBox](fcQSpinBox_vdata(self))
  let slotval1 = cint(param1)
  var virtualReturn = inst.inputMethodQuery(slotval1)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc fcQSpinBox_method_callback_stepBy(self: pointer, steps: cint): void {.cdecl.} =
  let inst = cast[VirtualQSpinBox](fcQSpinBox_vdata(self))
  let slotval1 = steps
  inst.stepBy(slotval1)

proc fcQSpinBox_method_callback_clear(self: pointer): void {.cdecl.} =
  let inst = cast[VirtualQSpinBox](fcQSpinBox_vdata(self))
  inst.clear()

proc fcQSpinBox_method_callback_resizeEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQSpinBox](fcQSpinBox_vdata(self))
  let slotval1 = gen_qevent_types.QResizeEvent(h: event, owned: false)
  inst.resizeEvent(slotval1)

proc fcQSpinBox_method_callback_keyPressEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQSpinBox](fcQSpinBox_vdata(self))
  let slotval1 = gen_qevent_types.QKeyEvent(h: event, owned: false)
  inst.keyPressEvent(slotval1)

proc fcQSpinBox_method_callback_keyReleaseEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQSpinBox](fcQSpinBox_vdata(self))
  let slotval1 = gen_qevent_types.QKeyEvent(h: event, owned: false)
  inst.keyReleaseEvent(slotval1)

proc fcQSpinBox_method_callback_wheelEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQSpinBox](fcQSpinBox_vdata(self))
  let slotval1 = gen_qevent_types.QWheelEvent(h: event, owned: false)
  inst.wheelEvent(slotval1)

proc fcQSpinBox_method_callback_focusInEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQSpinBox](fcQSpinBox_vdata(self))
  let slotval1 = gen_qevent_types.QFocusEvent(h: event, owned: false)
  inst.focusInEvent(slotval1)

proc fcQSpinBox_method_callback_focusOutEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQSpinBox](fcQSpinBox_vdata(self))
  let slotval1 = gen_qevent_types.QFocusEvent(h: event, owned: false)
  inst.focusOutEvent(slotval1)

proc fcQSpinBox_method_callback_contextMenuEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQSpinBox](fcQSpinBox_vdata(self))
  let slotval1 = gen_qevent_types.QContextMenuEvent(h: event, owned: false)
  inst.contextMenuEvent(slotval1)

proc fcQSpinBox_method_callback_changeEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQSpinBox](fcQSpinBox_vdata(self))
  let slotval1 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  inst.changeEvent(slotval1)

proc fcQSpinBox_method_callback_closeEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQSpinBox](fcQSpinBox_vdata(self))
  let slotval1 = gen_qevent_types.QCloseEvent(h: event, owned: false)
  inst.closeEvent(slotval1)

proc fcQSpinBox_method_callback_hideEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQSpinBox](fcQSpinBox_vdata(self))
  let slotval1 = gen_qevent_types.QHideEvent(h: event, owned: false)
  inst.hideEvent(slotval1)

proc fcQSpinBox_method_callback_mousePressEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQSpinBox](fcQSpinBox_vdata(self))
  let slotval1 = gen_qevent_types.QMouseEvent(h: event, owned: false)
  inst.mousePressEvent(slotval1)

proc fcQSpinBox_method_callback_mouseReleaseEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQSpinBox](fcQSpinBox_vdata(self))
  let slotval1 = gen_qevent_types.QMouseEvent(h: event, owned: false)
  inst.mouseReleaseEvent(slotval1)

proc fcQSpinBox_method_callback_mouseMoveEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQSpinBox](fcQSpinBox_vdata(self))
  let slotval1 = gen_qevent_types.QMouseEvent(h: event, owned: false)
  inst.mouseMoveEvent(slotval1)

proc fcQSpinBox_method_callback_timerEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQSpinBox](fcQSpinBox_vdata(self))
  let slotval1 = gen_qcoreevent_types.QTimerEvent(h: event, owned: false)
  inst.timerEvent(slotval1)

proc fcQSpinBox_method_callback_paintEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQSpinBox](fcQSpinBox_vdata(self))
  let slotval1 = gen_qevent_types.QPaintEvent(h: event, owned: false)
  inst.paintEvent(slotval1)

proc fcQSpinBox_method_callback_showEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQSpinBox](fcQSpinBox_vdata(self))
  let slotval1 = gen_qevent_types.QShowEvent(h: event, owned: false)
  inst.showEvent(slotval1)

proc fcQSpinBox_method_callback_stepEnabled(self: pointer): cint {.cdecl.} =
  let inst = cast[VirtualQSpinBox](fcQSpinBox_vdata(self))
  var virtualReturn = inst.stepEnabled()
  cint(virtualReturn)

proc fcQSpinBox_method_callback_devType(self: pointer): cint {.cdecl.} =
  let inst = cast[VirtualQSpinBox](fcQSpinBox_vdata(self))
  var virtualReturn = inst.devType()
  virtualReturn

proc fcQSpinBox_method_callback_setVisible(self: pointer, visible: bool): void {.cdecl.} =
  let inst = cast[VirtualQSpinBox](fcQSpinBox_vdata(self))
  let slotval1 = visible
  inst.setVisible(slotval1)

proc fcQSpinBox_method_callback_heightForWidth(self: pointer, param1: cint): cint {.cdecl.} =
  let inst = cast[VirtualQSpinBox](fcQSpinBox_vdata(self))
  let slotval1 = param1
  var virtualReturn = inst.heightForWidth(slotval1)
  virtualReturn

proc fcQSpinBox_method_callback_hasHeightForWidth(self: pointer): bool {.cdecl.} =
  let inst = cast[VirtualQSpinBox](fcQSpinBox_vdata(self))
  var virtualReturn = inst.hasHeightForWidth()
  virtualReturn

proc fcQSpinBox_method_callback_paintEngine(self: pointer): pointer {.cdecl.} =
  let inst = cast[VirtualQSpinBox](fcQSpinBox_vdata(self))
  var virtualReturn = inst.paintEngine()
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc fcQSpinBox_method_callback_mouseDoubleClickEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQSpinBox](fcQSpinBox_vdata(self))
  let slotval1 = gen_qevent_types.QMouseEvent(h: event, owned: false)
  inst.mouseDoubleClickEvent(slotval1)

proc fcQSpinBox_method_callback_enterEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQSpinBox](fcQSpinBox_vdata(self))
  let slotval1 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  inst.enterEvent(slotval1)

proc fcQSpinBox_method_callback_leaveEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQSpinBox](fcQSpinBox_vdata(self))
  let slotval1 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  inst.leaveEvent(slotval1)

proc fcQSpinBox_method_callback_moveEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQSpinBox](fcQSpinBox_vdata(self))
  let slotval1 = gen_qevent_types.QMoveEvent(h: event, owned: false)
  inst.moveEvent(slotval1)

proc fcQSpinBox_method_callback_tabletEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQSpinBox](fcQSpinBox_vdata(self))
  let slotval1 = gen_qevent_types.QTabletEvent(h: event, owned: false)
  inst.tabletEvent(slotval1)

proc fcQSpinBox_method_callback_actionEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQSpinBox](fcQSpinBox_vdata(self))
  let slotval1 = gen_qevent_types.QActionEvent(h: event, owned: false)
  inst.actionEvent(slotval1)

proc fcQSpinBox_method_callback_dragEnterEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQSpinBox](fcQSpinBox_vdata(self))
  let slotval1 = gen_qevent_types.QDragEnterEvent(h: event, owned: false)
  inst.dragEnterEvent(slotval1)

proc fcQSpinBox_method_callback_dragMoveEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQSpinBox](fcQSpinBox_vdata(self))
  let slotval1 = gen_qevent_types.QDragMoveEvent(h: event, owned: false)
  inst.dragMoveEvent(slotval1)

proc fcQSpinBox_method_callback_dragLeaveEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQSpinBox](fcQSpinBox_vdata(self))
  let slotval1 = gen_qevent_types.QDragLeaveEvent(h: event, owned: false)
  inst.dragLeaveEvent(slotval1)

proc fcQSpinBox_method_callback_dropEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQSpinBox](fcQSpinBox_vdata(self))
  let slotval1 = gen_qevent_types.QDropEvent(h: event, owned: false)
  inst.dropEvent(slotval1)

proc fcQSpinBox_method_callback_nativeEvent(self: pointer, eventType: struct_miqt_string, message: pointer, resultVal: ptr clong): bool {.cdecl.} =
  let inst = cast[VirtualQSpinBox](fcQSpinBox_vdata(self))
  var veventType_bytearray = eventType
  var veventTypex_ret = @(toOpenArray(cast[ptr UncheckedArray[byte]](veventType_bytearray.data), 0, int(veventType_bytearray.len)-1))
  c_free(veventType_bytearray.data)
  let slotval1 = veventTypex_ret
  let slotval2 = message
  let slotval3 = resultVal
  var virtualReturn = inst.nativeEvent(slotval1, slotval2, slotval3)
  virtualReturn

proc fcQSpinBox_method_callback_metric(self: pointer, param1: cint): cint {.cdecl.} =
  let inst = cast[VirtualQSpinBox](fcQSpinBox_vdata(self))
  let slotval1 = cint(param1)
  var virtualReturn = inst.metric(slotval1)
  virtualReturn

proc fcQSpinBox_method_callback_initPainter(self: pointer, painter: pointer): void {.cdecl.} =
  let inst = cast[VirtualQSpinBox](fcQSpinBox_vdata(self))
  let slotval1 = gen_qpainter_types.QPainter(h: painter, owned: false)
  inst.initPainter(slotval1)

proc fcQSpinBox_method_callback_redirected(self: pointer, offset: pointer): pointer {.cdecl.} =
  let inst = cast[VirtualQSpinBox](fcQSpinBox_vdata(self))
  let slotval1 = gen_qpoint_types.QPoint(h: offset, owned: false)
  var virtualReturn = inst.redirected(slotval1)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc fcQSpinBox_method_callback_sharedPainter(self: pointer): pointer {.cdecl.} =
  let inst = cast[VirtualQSpinBox](fcQSpinBox_vdata(self))
  var virtualReturn = inst.sharedPainter()
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc fcQSpinBox_method_callback_inputMethodEvent(self: pointer, param1: pointer): void {.cdecl.} =
  let inst = cast[VirtualQSpinBox](fcQSpinBox_vdata(self))
  let slotval1 = gen_qevent_types.QInputMethodEvent(h: param1, owned: false)
  inst.inputMethodEvent(slotval1)

proc fcQSpinBox_method_callback_focusNextPrevChild(self: pointer, next: bool): bool {.cdecl.} =
  let inst = cast[VirtualQSpinBox](fcQSpinBox_vdata(self))
  let slotval1 = next
  var virtualReturn = inst.focusNextPrevChild(slotval1)
  virtualReturn

proc fcQSpinBox_method_callback_eventFilter(self: pointer, watched: pointer, event: pointer): bool {.cdecl.} =
  let inst = cast[VirtualQSpinBox](fcQSpinBox_vdata(self))
  let slotval1 = gen_qobject_types.QObject(h: watched, owned: false)
  let slotval2 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  var virtualReturn = inst.eventFilter(slotval1, slotval2)
  virtualReturn

proc fcQSpinBox_method_callback_childEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQSpinBox](fcQSpinBox_vdata(self))
  let slotval1 = gen_qcoreevent_types.QChildEvent(h: event, owned: false)
  inst.childEvent(slotval1)

proc fcQSpinBox_method_callback_customEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQSpinBox](fcQSpinBox_vdata(self))
  let slotval1 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  inst.customEvent(slotval1)

proc fcQSpinBox_method_callback_connectNotify(self: pointer, signal: pointer): void {.cdecl.} =
  let inst = cast[VirtualQSpinBox](fcQSpinBox_vdata(self))
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal, owned: false)
  inst.connectNotify(slotval1)

proc fcQSpinBox_method_callback_disconnectNotify(self: pointer, signal: pointer): void {.cdecl.} =
  let inst = cast[VirtualQSpinBox](fcQSpinBox_vdata(self))
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal, owned: false)
  inst.disconnectNotify(slotval1)


proc initStyleOption*(self: gen_qspinbox_types.QSpinBox, option: gen_qstyleoption_types.QStyleOptionSpinBox): void =
  fcQSpinBox_protectedbase_initStyleOption(self.h, option.h)

proc lineEdit*(self: gen_qspinbox_types.QSpinBox): gen_qlineedit_types.QLineEdit =
  gen_qlineedit_types.QLineEdit(h: fcQSpinBox_protectedbase_lineEdit(self.h), owned: false)

proc setLineEdit*(self: gen_qspinbox_types.QSpinBox, edit: gen_qlineedit_types.QLineEdit): void =
  fcQSpinBox_protectedbase_setLineEdit(self.h, edit.h)

proc updateMicroFocus*(self: gen_qspinbox_types.QSpinBox): void =
  fcQSpinBox_protectedbase_updateMicroFocus(self.h)

proc createX*(self: gen_qspinbox_types.QSpinBox): void =
  fcQSpinBox_protectedbase_create(self.h)

proc destroy*(self: gen_qspinbox_types.QSpinBox): void =
  fcQSpinBox_protectedbase_destroy(self.h)

proc focusNextChild*(self: gen_qspinbox_types.QSpinBox): bool =
  fcQSpinBox_protectedbase_focusNextChild(self.h)

proc focusPreviousChild*(self: gen_qspinbox_types.QSpinBox): bool =
  fcQSpinBox_protectedbase_focusPreviousChild(self.h)

proc sender*(self: gen_qspinbox_types.QSpinBox): gen_qobject_types.QObject =
  gen_qobject_types.QObject(h: fcQSpinBox_protectedbase_sender(self.h), owned: false)

proc senderSignalIndex*(self: gen_qspinbox_types.QSpinBox): cint =
  fcQSpinBox_protectedbase_senderSignalIndex(self.h)

proc receivers*(self: gen_qspinbox_types.QSpinBox, signal: cstring): cint =
  fcQSpinBox_protectedbase_receivers(self.h, signal)

proc isSignalConnected*(self: gen_qspinbox_types.QSpinBox, signal: gen_qmetaobject_types.QMetaMethod): bool =
  fcQSpinBox_protectedbase_isSignalConnected(self.h, signal.h)

proc create*(T: type gen_qspinbox_types.QSpinBox,
    parent: gen_qwidget_types.QWidget,
    vtbl: ref QSpinBoxVTable = nil): gen_qspinbox_types.QSpinBox =
  let vtbl = if vtbl == nil: new QSpinBoxVTable else: vtbl
  GC_ref(vtbl)
  vtbl[].vtbl.destructor = proc(self: pointer) {.cdecl.} =
    let vtbl = cast[ref QSpinBoxVTable](fcQSpinBox_vdata(self))
    GC_unref(vtbl)
  if not isNil(vtbl[].metaObject):
    vtbl[].vtbl.metaObject = fcQSpinBox_vtable_callback_metaObject
  if not isNil(vtbl[].metacast):
    vtbl[].vtbl.metacast = fcQSpinBox_vtable_callback_metacast
  if not isNil(vtbl[].metacall):
    vtbl[].vtbl.metacall = fcQSpinBox_vtable_callback_metacall
  if not isNil(vtbl[].event):
    vtbl[].vtbl.event = fcQSpinBox_vtable_callback_event
  if not isNil(vtbl[].validate):
    vtbl[].vtbl.validate = fcQSpinBox_vtable_callback_validate
  if not isNil(vtbl[].valueFromText):
    vtbl[].vtbl.valueFromText = fcQSpinBox_vtable_callback_valueFromText
  if not isNil(vtbl[].textFromValue):
    vtbl[].vtbl.textFromValue = fcQSpinBox_vtable_callback_textFromValue
  if not isNil(vtbl[].fixup):
    vtbl[].vtbl.fixup = fcQSpinBox_vtable_callback_fixup
  if not isNil(vtbl[].sizeHint):
    vtbl[].vtbl.sizeHint = fcQSpinBox_vtable_callback_sizeHint
  if not isNil(vtbl[].minimumSizeHint):
    vtbl[].vtbl.minimumSizeHint = fcQSpinBox_vtable_callback_minimumSizeHint
  if not isNil(vtbl[].inputMethodQuery):
    vtbl[].vtbl.inputMethodQuery = fcQSpinBox_vtable_callback_inputMethodQuery
  if not isNil(vtbl[].stepBy):
    vtbl[].vtbl.stepBy = fcQSpinBox_vtable_callback_stepBy
  if not isNil(vtbl[].clear):
    vtbl[].vtbl.clear = fcQSpinBox_vtable_callback_clear
  if not isNil(vtbl[].resizeEvent):
    vtbl[].vtbl.resizeEvent = fcQSpinBox_vtable_callback_resizeEvent
  if not isNil(vtbl[].keyPressEvent):
    vtbl[].vtbl.keyPressEvent = fcQSpinBox_vtable_callback_keyPressEvent
  if not isNil(vtbl[].keyReleaseEvent):
    vtbl[].vtbl.keyReleaseEvent = fcQSpinBox_vtable_callback_keyReleaseEvent
  if not isNil(vtbl[].wheelEvent):
    vtbl[].vtbl.wheelEvent = fcQSpinBox_vtable_callback_wheelEvent
  if not isNil(vtbl[].focusInEvent):
    vtbl[].vtbl.focusInEvent = fcQSpinBox_vtable_callback_focusInEvent
  if not isNil(vtbl[].focusOutEvent):
    vtbl[].vtbl.focusOutEvent = fcQSpinBox_vtable_callback_focusOutEvent
  if not isNil(vtbl[].contextMenuEvent):
    vtbl[].vtbl.contextMenuEvent = fcQSpinBox_vtable_callback_contextMenuEvent
  if not isNil(vtbl[].changeEvent):
    vtbl[].vtbl.changeEvent = fcQSpinBox_vtable_callback_changeEvent
  if not isNil(vtbl[].closeEvent):
    vtbl[].vtbl.closeEvent = fcQSpinBox_vtable_callback_closeEvent
  if not isNil(vtbl[].hideEvent):
    vtbl[].vtbl.hideEvent = fcQSpinBox_vtable_callback_hideEvent
  if not isNil(vtbl[].mousePressEvent):
    vtbl[].vtbl.mousePressEvent = fcQSpinBox_vtable_callback_mousePressEvent
  if not isNil(vtbl[].mouseReleaseEvent):
    vtbl[].vtbl.mouseReleaseEvent = fcQSpinBox_vtable_callback_mouseReleaseEvent
  if not isNil(vtbl[].mouseMoveEvent):
    vtbl[].vtbl.mouseMoveEvent = fcQSpinBox_vtable_callback_mouseMoveEvent
  if not isNil(vtbl[].timerEvent):
    vtbl[].vtbl.timerEvent = fcQSpinBox_vtable_callback_timerEvent
  if not isNil(vtbl[].paintEvent):
    vtbl[].vtbl.paintEvent = fcQSpinBox_vtable_callback_paintEvent
  if not isNil(vtbl[].showEvent):
    vtbl[].vtbl.showEvent = fcQSpinBox_vtable_callback_showEvent
  if not isNil(vtbl[].stepEnabled):
    vtbl[].vtbl.stepEnabled = fcQSpinBox_vtable_callback_stepEnabled
  if not isNil(vtbl[].devType):
    vtbl[].vtbl.devType = fcQSpinBox_vtable_callback_devType
  if not isNil(vtbl[].setVisible):
    vtbl[].vtbl.setVisible = fcQSpinBox_vtable_callback_setVisible
  if not isNil(vtbl[].heightForWidth):
    vtbl[].vtbl.heightForWidth = fcQSpinBox_vtable_callback_heightForWidth
  if not isNil(vtbl[].hasHeightForWidth):
    vtbl[].vtbl.hasHeightForWidth = fcQSpinBox_vtable_callback_hasHeightForWidth
  if not isNil(vtbl[].paintEngine):
    vtbl[].vtbl.paintEngine = fcQSpinBox_vtable_callback_paintEngine
  if not isNil(vtbl[].mouseDoubleClickEvent):
    vtbl[].vtbl.mouseDoubleClickEvent = fcQSpinBox_vtable_callback_mouseDoubleClickEvent
  if not isNil(vtbl[].enterEvent):
    vtbl[].vtbl.enterEvent = fcQSpinBox_vtable_callback_enterEvent
  if not isNil(vtbl[].leaveEvent):
    vtbl[].vtbl.leaveEvent = fcQSpinBox_vtable_callback_leaveEvent
  if not isNil(vtbl[].moveEvent):
    vtbl[].vtbl.moveEvent = fcQSpinBox_vtable_callback_moveEvent
  if not isNil(vtbl[].tabletEvent):
    vtbl[].vtbl.tabletEvent = fcQSpinBox_vtable_callback_tabletEvent
  if not isNil(vtbl[].actionEvent):
    vtbl[].vtbl.actionEvent = fcQSpinBox_vtable_callback_actionEvent
  if not isNil(vtbl[].dragEnterEvent):
    vtbl[].vtbl.dragEnterEvent = fcQSpinBox_vtable_callback_dragEnterEvent
  if not isNil(vtbl[].dragMoveEvent):
    vtbl[].vtbl.dragMoveEvent = fcQSpinBox_vtable_callback_dragMoveEvent
  if not isNil(vtbl[].dragLeaveEvent):
    vtbl[].vtbl.dragLeaveEvent = fcQSpinBox_vtable_callback_dragLeaveEvent
  if not isNil(vtbl[].dropEvent):
    vtbl[].vtbl.dropEvent = fcQSpinBox_vtable_callback_dropEvent
  if not isNil(vtbl[].nativeEvent):
    vtbl[].vtbl.nativeEvent = fcQSpinBox_vtable_callback_nativeEvent
  if not isNil(vtbl[].metric):
    vtbl[].vtbl.metric = fcQSpinBox_vtable_callback_metric
  if not isNil(vtbl[].initPainter):
    vtbl[].vtbl.initPainter = fcQSpinBox_vtable_callback_initPainter
  if not isNil(vtbl[].redirected):
    vtbl[].vtbl.redirected = fcQSpinBox_vtable_callback_redirected
  if not isNil(vtbl[].sharedPainter):
    vtbl[].vtbl.sharedPainter = fcQSpinBox_vtable_callback_sharedPainter
  if not isNil(vtbl[].inputMethodEvent):
    vtbl[].vtbl.inputMethodEvent = fcQSpinBox_vtable_callback_inputMethodEvent
  if not isNil(vtbl[].focusNextPrevChild):
    vtbl[].vtbl.focusNextPrevChild = fcQSpinBox_vtable_callback_focusNextPrevChild
  if not isNil(vtbl[].eventFilter):
    vtbl[].vtbl.eventFilter = fcQSpinBox_vtable_callback_eventFilter
  if not isNil(vtbl[].childEvent):
    vtbl[].vtbl.childEvent = fcQSpinBox_vtable_callback_childEvent
  if not isNil(vtbl[].customEvent):
    vtbl[].vtbl.customEvent = fcQSpinBox_vtable_callback_customEvent
  if not isNil(vtbl[].connectNotify):
    vtbl[].vtbl.connectNotify = fcQSpinBox_vtable_callback_connectNotify
  if not isNil(vtbl[].disconnectNotify):
    vtbl[].vtbl.disconnectNotify = fcQSpinBox_vtable_callback_disconnectNotify
  gen_qspinbox_types.QSpinBox(h: fcQSpinBox_new(addr(vtbl[].vtbl), addr(vtbl[]), parent.h), owned: true)

proc create*(T: type gen_qspinbox_types.QSpinBox,
    vtbl: ref QSpinBoxVTable = nil): gen_qspinbox_types.QSpinBox =
  let vtbl = if vtbl == nil: new QSpinBoxVTable else: vtbl
  GC_ref(vtbl)
  vtbl[].vtbl.destructor = proc(self: pointer) {.cdecl.} =
    let vtbl = cast[ref QSpinBoxVTable](fcQSpinBox_vdata(self))
    GC_unref(vtbl)
  if not isNil(vtbl[].metaObject):
    vtbl[].vtbl.metaObject = fcQSpinBox_vtable_callback_metaObject
  if not isNil(vtbl[].metacast):
    vtbl[].vtbl.metacast = fcQSpinBox_vtable_callback_metacast
  if not isNil(vtbl[].metacall):
    vtbl[].vtbl.metacall = fcQSpinBox_vtable_callback_metacall
  if not isNil(vtbl[].event):
    vtbl[].vtbl.event = fcQSpinBox_vtable_callback_event
  if not isNil(vtbl[].validate):
    vtbl[].vtbl.validate = fcQSpinBox_vtable_callback_validate
  if not isNil(vtbl[].valueFromText):
    vtbl[].vtbl.valueFromText = fcQSpinBox_vtable_callback_valueFromText
  if not isNil(vtbl[].textFromValue):
    vtbl[].vtbl.textFromValue = fcQSpinBox_vtable_callback_textFromValue
  if not isNil(vtbl[].fixup):
    vtbl[].vtbl.fixup = fcQSpinBox_vtable_callback_fixup
  if not isNil(vtbl[].sizeHint):
    vtbl[].vtbl.sizeHint = fcQSpinBox_vtable_callback_sizeHint
  if not isNil(vtbl[].minimumSizeHint):
    vtbl[].vtbl.minimumSizeHint = fcQSpinBox_vtable_callback_minimumSizeHint
  if not isNil(vtbl[].inputMethodQuery):
    vtbl[].vtbl.inputMethodQuery = fcQSpinBox_vtable_callback_inputMethodQuery
  if not isNil(vtbl[].stepBy):
    vtbl[].vtbl.stepBy = fcQSpinBox_vtable_callback_stepBy
  if not isNil(vtbl[].clear):
    vtbl[].vtbl.clear = fcQSpinBox_vtable_callback_clear
  if not isNil(vtbl[].resizeEvent):
    vtbl[].vtbl.resizeEvent = fcQSpinBox_vtable_callback_resizeEvent
  if not isNil(vtbl[].keyPressEvent):
    vtbl[].vtbl.keyPressEvent = fcQSpinBox_vtable_callback_keyPressEvent
  if not isNil(vtbl[].keyReleaseEvent):
    vtbl[].vtbl.keyReleaseEvent = fcQSpinBox_vtable_callback_keyReleaseEvent
  if not isNil(vtbl[].wheelEvent):
    vtbl[].vtbl.wheelEvent = fcQSpinBox_vtable_callback_wheelEvent
  if not isNil(vtbl[].focusInEvent):
    vtbl[].vtbl.focusInEvent = fcQSpinBox_vtable_callback_focusInEvent
  if not isNil(vtbl[].focusOutEvent):
    vtbl[].vtbl.focusOutEvent = fcQSpinBox_vtable_callback_focusOutEvent
  if not isNil(vtbl[].contextMenuEvent):
    vtbl[].vtbl.contextMenuEvent = fcQSpinBox_vtable_callback_contextMenuEvent
  if not isNil(vtbl[].changeEvent):
    vtbl[].vtbl.changeEvent = fcQSpinBox_vtable_callback_changeEvent
  if not isNil(vtbl[].closeEvent):
    vtbl[].vtbl.closeEvent = fcQSpinBox_vtable_callback_closeEvent
  if not isNil(vtbl[].hideEvent):
    vtbl[].vtbl.hideEvent = fcQSpinBox_vtable_callback_hideEvent
  if not isNil(vtbl[].mousePressEvent):
    vtbl[].vtbl.mousePressEvent = fcQSpinBox_vtable_callback_mousePressEvent
  if not isNil(vtbl[].mouseReleaseEvent):
    vtbl[].vtbl.mouseReleaseEvent = fcQSpinBox_vtable_callback_mouseReleaseEvent
  if not isNil(vtbl[].mouseMoveEvent):
    vtbl[].vtbl.mouseMoveEvent = fcQSpinBox_vtable_callback_mouseMoveEvent
  if not isNil(vtbl[].timerEvent):
    vtbl[].vtbl.timerEvent = fcQSpinBox_vtable_callback_timerEvent
  if not isNil(vtbl[].paintEvent):
    vtbl[].vtbl.paintEvent = fcQSpinBox_vtable_callback_paintEvent
  if not isNil(vtbl[].showEvent):
    vtbl[].vtbl.showEvent = fcQSpinBox_vtable_callback_showEvent
  if not isNil(vtbl[].stepEnabled):
    vtbl[].vtbl.stepEnabled = fcQSpinBox_vtable_callback_stepEnabled
  if not isNil(vtbl[].devType):
    vtbl[].vtbl.devType = fcQSpinBox_vtable_callback_devType
  if not isNil(vtbl[].setVisible):
    vtbl[].vtbl.setVisible = fcQSpinBox_vtable_callback_setVisible
  if not isNil(vtbl[].heightForWidth):
    vtbl[].vtbl.heightForWidth = fcQSpinBox_vtable_callback_heightForWidth
  if not isNil(vtbl[].hasHeightForWidth):
    vtbl[].vtbl.hasHeightForWidth = fcQSpinBox_vtable_callback_hasHeightForWidth
  if not isNil(vtbl[].paintEngine):
    vtbl[].vtbl.paintEngine = fcQSpinBox_vtable_callback_paintEngine
  if not isNil(vtbl[].mouseDoubleClickEvent):
    vtbl[].vtbl.mouseDoubleClickEvent = fcQSpinBox_vtable_callback_mouseDoubleClickEvent
  if not isNil(vtbl[].enterEvent):
    vtbl[].vtbl.enterEvent = fcQSpinBox_vtable_callback_enterEvent
  if not isNil(vtbl[].leaveEvent):
    vtbl[].vtbl.leaveEvent = fcQSpinBox_vtable_callback_leaveEvent
  if not isNil(vtbl[].moveEvent):
    vtbl[].vtbl.moveEvent = fcQSpinBox_vtable_callback_moveEvent
  if not isNil(vtbl[].tabletEvent):
    vtbl[].vtbl.tabletEvent = fcQSpinBox_vtable_callback_tabletEvent
  if not isNil(vtbl[].actionEvent):
    vtbl[].vtbl.actionEvent = fcQSpinBox_vtable_callback_actionEvent
  if not isNil(vtbl[].dragEnterEvent):
    vtbl[].vtbl.dragEnterEvent = fcQSpinBox_vtable_callback_dragEnterEvent
  if not isNil(vtbl[].dragMoveEvent):
    vtbl[].vtbl.dragMoveEvent = fcQSpinBox_vtable_callback_dragMoveEvent
  if not isNil(vtbl[].dragLeaveEvent):
    vtbl[].vtbl.dragLeaveEvent = fcQSpinBox_vtable_callback_dragLeaveEvent
  if not isNil(vtbl[].dropEvent):
    vtbl[].vtbl.dropEvent = fcQSpinBox_vtable_callback_dropEvent
  if not isNil(vtbl[].nativeEvent):
    vtbl[].vtbl.nativeEvent = fcQSpinBox_vtable_callback_nativeEvent
  if not isNil(vtbl[].metric):
    vtbl[].vtbl.metric = fcQSpinBox_vtable_callback_metric
  if not isNil(vtbl[].initPainter):
    vtbl[].vtbl.initPainter = fcQSpinBox_vtable_callback_initPainter
  if not isNil(vtbl[].redirected):
    vtbl[].vtbl.redirected = fcQSpinBox_vtable_callback_redirected
  if not isNil(vtbl[].sharedPainter):
    vtbl[].vtbl.sharedPainter = fcQSpinBox_vtable_callback_sharedPainter
  if not isNil(vtbl[].inputMethodEvent):
    vtbl[].vtbl.inputMethodEvent = fcQSpinBox_vtable_callback_inputMethodEvent
  if not isNil(vtbl[].focusNextPrevChild):
    vtbl[].vtbl.focusNextPrevChild = fcQSpinBox_vtable_callback_focusNextPrevChild
  if not isNil(vtbl[].eventFilter):
    vtbl[].vtbl.eventFilter = fcQSpinBox_vtable_callback_eventFilter
  if not isNil(vtbl[].childEvent):
    vtbl[].vtbl.childEvent = fcQSpinBox_vtable_callback_childEvent
  if not isNil(vtbl[].customEvent):
    vtbl[].vtbl.customEvent = fcQSpinBox_vtable_callback_customEvent
  if not isNil(vtbl[].connectNotify):
    vtbl[].vtbl.connectNotify = fcQSpinBox_vtable_callback_connectNotify
  if not isNil(vtbl[].disconnectNotify):
    vtbl[].vtbl.disconnectNotify = fcQSpinBox_vtable_callback_disconnectNotify
  gen_qspinbox_types.QSpinBox(h: fcQSpinBox_new2(addr(vtbl[].vtbl), addr(vtbl[])), owned: true)

const cQSpinBox_mvtbl = cQSpinBoxVTable(
  destructor: proc(self: pointer) {.cdecl.} =
    let inst = cast[ptr typeof(VirtualQSpinBox()[])](self.fcQSpinBox_vtbl())
    inst[].h = nil
    inst[].owned = false,

  metaObject: fcQSpinBox_method_callback_metaObject,
  metacast: fcQSpinBox_method_callback_metacast,
  metacall: fcQSpinBox_method_callback_metacall,
  event: fcQSpinBox_method_callback_event,
  validate: fcQSpinBox_method_callback_validate,
  valueFromText: fcQSpinBox_method_callback_valueFromText,
  textFromValue: fcQSpinBox_method_callback_textFromValue,
  fixup: fcQSpinBox_method_callback_fixup,
  sizeHint: fcQSpinBox_method_callback_sizeHint,
  minimumSizeHint: fcQSpinBox_method_callback_minimumSizeHint,
  inputMethodQuery: fcQSpinBox_method_callback_inputMethodQuery,
  stepBy: fcQSpinBox_method_callback_stepBy,
  clear: fcQSpinBox_method_callback_clear,
  resizeEvent: fcQSpinBox_method_callback_resizeEvent,
  keyPressEvent: fcQSpinBox_method_callback_keyPressEvent,
  keyReleaseEvent: fcQSpinBox_method_callback_keyReleaseEvent,
  wheelEvent: fcQSpinBox_method_callback_wheelEvent,
  focusInEvent: fcQSpinBox_method_callback_focusInEvent,
  focusOutEvent: fcQSpinBox_method_callback_focusOutEvent,
  contextMenuEvent: fcQSpinBox_method_callback_contextMenuEvent,
  changeEvent: fcQSpinBox_method_callback_changeEvent,
  closeEvent: fcQSpinBox_method_callback_closeEvent,
  hideEvent: fcQSpinBox_method_callback_hideEvent,
  mousePressEvent: fcQSpinBox_method_callback_mousePressEvent,
  mouseReleaseEvent: fcQSpinBox_method_callback_mouseReleaseEvent,
  mouseMoveEvent: fcQSpinBox_method_callback_mouseMoveEvent,
  timerEvent: fcQSpinBox_method_callback_timerEvent,
  paintEvent: fcQSpinBox_method_callback_paintEvent,
  showEvent: fcQSpinBox_method_callback_showEvent,
  stepEnabled: fcQSpinBox_method_callback_stepEnabled,
  devType: fcQSpinBox_method_callback_devType,
  setVisible: fcQSpinBox_method_callback_setVisible,
  heightForWidth: fcQSpinBox_method_callback_heightForWidth,
  hasHeightForWidth: fcQSpinBox_method_callback_hasHeightForWidth,
  paintEngine: fcQSpinBox_method_callback_paintEngine,
  mouseDoubleClickEvent: fcQSpinBox_method_callback_mouseDoubleClickEvent,
  enterEvent: fcQSpinBox_method_callback_enterEvent,
  leaveEvent: fcQSpinBox_method_callback_leaveEvent,
  moveEvent: fcQSpinBox_method_callback_moveEvent,
  tabletEvent: fcQSpinBox_method_callback_tabletEvent,
  actionEvent: fcQSpinBox_method_callback_actionEvent,
  dragEnterEvent: fcQSpinBox_method_callback_dragEnterEvent,
  dragMoveEvent: fcQSpinBox_method_callback_dragMoveEvent,
  dragLeaveEvent: fcQSpinBox_method_callback_dragLeaveEvent,
  dropEvent: fcQSpinBox_method_callback_dropEvent,
  nativeEvent: fcQSpinBox_method_callback_nativeEvent,
  metric: fcQSpinBox_method_callback_metric,
  initPainter: fcQSpinBox_method_callback_initPainter,
  redirected: fcQSpinBox_method_callback_redirected,
  sharedPainter: fcQSpinBox_method_callback_sharedPainter,
  inputMethodEvent: fcQSpinBox_method_callback_inputMethodEvent,
  focusNextPrevChild: fcQSpinBox_method_callback_focusNextPrevChild,
  eventFilter: fcQSpinBox_method_callback_eventFilter,
  childEvent: fcQSpinBox_method_callback_childEvent,
  customEvent: fcQSpinBox_method_callback_customEvent,
  connectNotify: fcQSpinBox_method_callback_connectNotify,
  disconnectNotify: fcQSpinBox_method_callback_disconnectNotify,
)
proc create*(T: type gen_qspinbox_types.QSpinBox,
    parent: gen_qwidget_types.QWidget,
    inst: VirtualQSpinBox) =
  if inst[].h != nil: delete(move(inst[]))
  inst[].h = fcQSpinBox_new(addr(cQSpinBox_mvtbl), addr(inst[]), parent.h)
  inst[].owned = true

proc create*(T: type gen_qspinbox_types.QSpinBox,
    inst: VirtualQSpinBox) =
  if inst[].h != nil: delete(move(inst[]))
  inst[].h = fcQSpinBox_new2(addr(cQSpinBox_mvtbl), addr(inst[]))
  inst[].owned = true

proc staticMetaObject*(_: type gen_qspinbox_types.QSpinBox): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQSpinBox_staticMetaObject())
proc metaObject*(self: gen_qspinbox_types.QDoubleSpinBox): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQDoubleSpinBox_metaObject(self.h), owned: false)

proc metacast*(self: gen_qspinbox_types.QDoubleSpinBox, param1: cstring): pointer =
  fcQDoubleSpinBox_metacast(self.h, param1)

proc metacall*(self: gen_qspinbox_types.QDoubleSpinBox, param1: cint, param2: cint, param3: pointer): cint =
  fcQDoubleSpinBox_metacall(self.h, cint(param1), param2, param3)

proc tr*(_: type gen_qspinbox_types.QDoubleSpinBox, s: cstring): string =
  let v_ms = fcQDoubleSpinBox_tr(s)
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

proc trUtf8*(_: type gen_qspinbox_types.QDoubleSpinBox, s: cstring): string =
  let v_ms = fcQDoubleSpinBox_trUtf8(s)
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

proc value*(self: gen_qspinbox_types.QDoubleSpinBox): float64 =
  fcQDoubleSpinBox_value(self.h)

proc prefix*(self: gen_qspinbox_types.QDoubleSpinBox): string =
  let v_ms = fcQDoubleSpinBox_prefix(self.h)
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

proc setPrefix*(self: gen_qspinbox_types.QDoubleSpinBox, prefix: openArray[char]): void =
  fcQDoubleSpinBox_setPrefix(self.h, struct_miqt_string(data: if len(prefix) > 0: addr prefix[0] else: nil, len: csize_t(len(prefix))))

proc suffix*(self: gen_qspinbox_types.QDoubleSpinBox): string =
  let v_ms = fcQDoubleSpinBox_suffix(self.h)
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

proc setSuffix*(self: gen_qspinbox_types.QDoubleSpinBox, suffix: openArray[char]): void =
  fcQDoubleSpinBox_setSuffix(self.h, struct_miqt_string(data: if len(suffix) > 0: addr suffix[0] else: nil, len: csize_t(len(suffix))))

proc cleanText*(self: gen_qspinbox_types.QDoubleSpinBox): string =
  let v_ms = fcQDoubleSpinBox_cleanText(self.h)
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

proc singleStep*(self: gen_qspinbox_types.QDoubleSpinBox): float64 =
  fcQDoubleSpinBox_singleStep(self.h)

proc setSingleStep*(self: gen_qspinbox_types.QDoubleSpinBox, val: float64): void =
  fcQDoubleSpinBox_setSingleStep(self.h, val)

proc minimum*(self: gen_qspinbox_types.QDoubleSpinBox): float64 =
  fcQDoubleSpinBox_minimum(self.h)

proc setMinimum*(self: gen_qspinbox_types.QDoubleSpinBox, min: float64): void =
  fcQDoubleSpinBox_setMinimum(self.h, min)

proc maximum*(self: gen_qspinbox_types.QDoubleSpinBox): float64 =
  fcQDoubleSpinBox_maximum(self.h)

proc setMaximum*(self: gen_qspinbox_types.QDoubleSpinBox, max: float64): void =
  fcQDoubleSpinBox_setMaximum(self.h, max)

proc setRange*(self: gen_qspinbox_types.QDoubleSpinBox, min: float64, max: float64): void =
  fcQDoubleSpinBox_setRange(self.h, min, max)

proc stepType*(self: gen_qspinbox_types.QDoubleSpinBox): cint =
  cint(fcQDoubleSpinBox_stepType(self.h))

proc setStepType*(self: gen_qspinbox_types.QDoubleSpinBox, stepType: cint): void =
  fcQDoubleSpinBox_setStepType(self.h, cint(stepType))

proc decimals*(self: gen_qspinbox_types.QDoubleSpinBox): cint =
  fcQDoubleSpinBox_decimals(self.h)

proc setDecimals*(self: gen_qspinbox_types.QDoubleSpinBox, prec: cint): void =
  fcQDoubleSpinBox_setDecimals(self.h, prec)

proc validate*(self: gen_qspinbox_types.QDoubleSpinBox, input: openArray[char], pos: ptr cint): cint =
  cint(fcQDoubleSpinBox_validate(self.h, struct_miqt_string(data: if len(input) > 0: addr input[0] else: nil, len: csize_t(len(input))), pos))

proc valueFromText*(self: gen_qspinbox_types.QDoubleSpinBox, text: openArray[char]): float64 =
  fcQDoubleSpinBox_valueFromText(self.h, struct_miqt_string(data: if len(text) > 0: addr text[0] else: nil, len: csize_t(len(text))))

proc textFromValue*(self: gen_qspinbox_types.QDoubleSpinBox, val: float64): string =
  let v_ms = fcQDoubleSpinBox_textFromValue(self.h, val)
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

proc fixup*(self: gen_qspinbox_types.QDoubleSpinBox, str: openArray[char]): void =
  fcQDoubleSpinBox_fixup(self.h, struct_miqt_string(data: if len(str) > 0: addr str[0] else: nil, len: csize_t(len(str))))

proc setValue*(self: gen_qspinbox_types.QDoubleSpinBox, val: float64): void =
  fcQDoubleSpinBox_setValue(self.h, val)

proc valueChanged*(self: gen_qspinbox_types.QDoubleSpinBox, param1: float64): void =
  fcQDoubleSpinBox_valueChanged(self.h, param1)

type QDoubleSpinBoxvalueChangedSlot* = proc(param1: float64)
proc fcQDoubleSpinBox_slot_callback_valueChanged(slot: int, param1: float64) {.cdecl.} =
  let nimfunc = cast[ptr QDoubleSpinBoxvalueChangedSlot](cast[pointer](slot))
  let slotval1 = param1

  nimfunc[](slotval1)

proc fcQDoubleSpinBox_slot_callback_valueChanged_release(slot: int) {.cdecl.} =
  let nimfunc = cast[ref QDoubleSpinBoxvalueChangedSlot](cast[pointer](slot))
  GC_unref(nimfunc)

proc onValueChanged*(self: gen_qspinbox_types.QDoubleSpinBox, slot: QDoubleSpinBoxvalueChangedSlot) =
  var tmp = new QDoubleSpinBoxvalueChangedSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQDoubleSpinBox_connect_valueChanged(self.h, cast[int](addr tmp[]), fcQDoubleSpinBox_slot_callback_valueChanged, fcQDoubleSpinBox_slot_callback_valueChanged_release)

proc textChanged*(self: gen_qspinbox_types.QDoubleSpinBox, param1: openArray[char]): void =
  fcQDoubleSpinBox_textChanged(self.h, struct_miqt_string(data: if len(param1) > 0: addr param1[0] else: nil, len: csize_t(len(param1))))

type QDoubleSpinBoxtextChangedSlot* = proc(param1: openArray[char])
proc fcQDoubleSpinBox_slot_callback_textChanged(slot: int, param1: struct_miqt_string) {.cdecl.} =
  let nimfunc = cast[ptr QDoubleSpinBoxtextChangedSlot](cast[pointer](slot))
  let vparam1_ms = param1
  let vparam1x_ret = string.fromBytes(vparam1_ms)
  c_free(vparam1_ms.data)
  let slotval1 = vparam1x_ret

  nimfunc[](slotval1)

proc fcQDoubleSpinBox_slot_callback_textChanged_release(slot: int) {.cdecl.} =
  let nimfunc = cast[ref QDoubleSpinBoxtextChangedSlot](cast[pointer](slot))
  GC_unref(nimfunc)

proc onTextChanged*(self: gen_qspinbox_types.QDoubleSpinBox, slot: QDoubleSpinBoxtextChangedSlot) =
  var tmp = new QDoubleSpinBoxtextChangedSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQDoubleSpinBox_connect_textChanged(self.h, cast[int](addr tmp[]), fcQDoubleSpinBox_slot_callback_textChanged, fcQDoubleSpinBox_slot_callback_textChanged_release)

proc valueChanged*(self: gen_qspinbox_types.QDoubleSpinBox, param1: openArray[char]): void =
  fcQDoubleSpinBox_valueChangedWithQString(self.h, struct_miqt_string(data: if len(param1) > 0: addr param1[0] else: nil, len: csize_t(len(param1))))

type QDoubleSpinBoxvalueChangedWithQStringSlot* = proc(param1: openArray[char])
proc fcQDoubleSpinBox_slot_callback_valueChangedWithQString(slot: int, param1: struct_miqt_string) {.cdecl.} =
  let nimfunc = cast[ptr QDoubleSpinBoxvalueChangedWithQStringSlot](cast[pointer](slot))
  let vparam1_ms = param1
  let vparam1x_ret = string.fromBytes(vparam1_ms)
  c_free(vparam1_ms.data)
  let slotval1 = vparam1x_ret

  nimfunc[](slotval1)

proc fcQDoubleSpinBox_slot_callback_valueChangedWithQString_release(slot: int) {.cdecl.} =
  let nimfunc = cast[ref QDoubleSpinBoxvalueChangedWithQStringSlot](cast[pointer](slot))
  GC_unref(nimfunc)

proc onValueChanged*(self: gen_qspinbox_types.QDoubleSpinBox, slot: QDoubleSpinBoxvalueChangedWithQStringSlot) =
  var tmp = new QDoubleSpinBoxvalueChangedWithQStringSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQDoubleSpinBox_connect_valueChangedWithQString(self.h, cast[int](addr tmp[]), fcQDoubleSpinBox_slot_callback_valueChangedWithQString, fcQDoubleSpinBox_slot_callback_valueChangedWithQString_release)

proc tr*(_: type gen_qspinbox_types.QDoubleSpinBox, s: cstring, c: cstring): string =
  let v_ms = fcQDoubleSpinBox_tr2(s, c)
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

proc tr*(_: type gen_qspinbox_types.QDoubleSpinBox, s: cstring, c: cstring, n: cint): string =
  let v_ms = fcQDoubleSpinBox_tr3(s, c, n)
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

proc trUtf8*(_: type gen_qspinbox_types.QDoubleSpinBox, s: cstring, c: cstring): string =
  let v_ms = fcQDoubleSpinBox_trUtf82(s, c)
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

proc trUtf8*(_: type gen_qspinbox_types.QDoubleSpinBox, s: cstring, c: cstring, n: cint): string =
  let v_ms = fcQDoubleSpinBox_trUtf83(s, c, n)
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

type QDoubleSpinBoxmetaObjectProc* = proc(self: QDoubleSpinBox): gen_qobjectdefs_types.QMetaObject {.raises: [], gcsafe.}
type QDoubleSpinBoxmetacastProc* = proc(self: QDoubleSpinBox, param1: cstring): pointer {.raises: [], gcsafe.}
type QDoubleSpinBoxmetacallProc* = proc(self: QDoubleSpinBox, param1: cint, param2: cint, param3: pointer): cint {.raises: [], gcsafe.}
type QDoubleSpinBoxvalidateProc* = proc(self: QDoubleSpinBox, input: openArray[char], pos: ptr cint): cint {.raises: [], gcsafe.}
type QDoubleSpinBoxvalueFromTextProc* = proc(self: QDoubleSpinBox, text: openArray[char]): float64 {.raises: [], gcsafe.}
type QDoubleSpinBoxtextFromValueProc* = proc(self: QDoubleSpinBox, val: float64): string {.raises: [], gcsafe.}
type QDoubleSpinBoxfixupProc* = proc(self: QDoubleSpinBox, str: openArray[char]): void {.raises: [], gcsafe.}
type QDoubleSpinBoxsizeHintProc* = proc(self: QDoubleSpinBox): gen_qsize_types.QSize {.raises: [], gcsafe.}
type QDoubleSpinBoxminimumSizeHintProc* = proc(self: QDoubleSpinBox): gen_qsize_types.QSize {.raises: [], gcsafe.}
type QDoubleSpinBoxeventProc* = proc(self: QDoubleSpinBox, event: gen_qcoreevent_types.QEvent): bool {.raises: [], gcsafe.}
type QDoubleSpinBoxinputMethodQueryProc* = proc(self: QDoubleSpinBox, param1: cint): gen_qvariant_types.QVariant {.raises: [], gcsafe.}
type QDoubleSpinBoxstepByProc* = proc(self: QDoubleSpinBox, steps: cint): void {.raises: [], gcsafe.}
type QDoubleSpinBoxclearProc* = proc(self: QDoubleSpinBox): void {.raises: [], gcsafe.}
type QDoubleSpinBoxresizeEventProc* = proc(self: QDoubleSpinBox, event: gen_qevent_types.QResizeEvent): void {.raises: [], gcsafe.}
type QDoubleSpinBoxkeyPressEventProc* = proc(self: QDoubleSpinBox, event: gen_qevent_types.QKeyEvent): void {.raises: [], gcsafe.}
type QDoubleSpinBoxkeyReleaseEventProc* = proc(self: QDoubleSpinBox, event: gen_qevent_types.QKeyEvent): void {.raises: [], gcsafe.}
type QDoubleSpinBoxwheelEventProc* = proc(self: QDoubleSpinBox, event: gen_qevent_types.QWheelEvent): void {.raises: [], gcsafe.}
type QDoubleSpinBoxfocusInEventProc* = proc(self: QDoubleSpinBox, event: gen_qevent_types.QFocusEvent): void {.raises: [], gcsafe.}
type QDoubleSpinBoxfocusOutEventProc* = proc(self: QDoubleSpinBox, event: gen_qevent_types.QFocusEvent): void {.raises: [], gcsafe.}
type QDoubleSpinBoxcontextMenuEventProc* = proc(self: QDoubleSpinBox, event: gen_qevent_types.QContextMenuEvent): void {.raises: [], gcsafe.}
type QDoubleSpinBoxchangeEventProc* = proc(self: QDoubleSpinBox, event: gen_qcoreevent_types.QEvent): void {.raises: [], gcsafe.}
type QDoubleSpinBoxcloseEventProc* = proc(self: QDoubleSpinBox, event: gen_qevent_types.QCloseEvent): void {.raises: [], gcsafe.}
type QDoubleSpinBoxhideEventProc* = proc(self: QDoubleSpinBox, event: gen_qevent_types.QHideEvent): void {.raises: [], gcsafe.}
type QDoubleSpinBoxmousePressEventProc* = proc(self: QDoubleSpinBox, event: gen_qevent_types.QMouseEvent): void {.raises: [], gcsafe.}
type QDoubleSpinBoxmouseReleaseEventProc* = proc(self: QDoubleSpinBox, event: gen_qevent_types.QMouseEvent): void {.raises: [], gcsafe.}
type QDoubleSpinBoxmouseMoveEventProc* = proc(self: QDoubleSpinBox, event: gen_qevent_types.QMouseEvent): void {.raises: [], gcsafe.}
type QDoubleSpinBoxtimerEventProc* = proc(self: QDoubleSpinBox, event: gen_qcoreevent_types.QTimerEvent): void {.raises: [], gcsafe.}
type QDoubleSpinBoxpaintEventProc* = proc(self: QDoubleSpinBox, event: gen_qevent_types.QPaintEvent): void {.raises: [], gcsafe.}
type QDoubleSpinBoxshowEventProc* = proc(self: QDoubleSpinBox, event: gen_qevent_types.QShowEvent): void {.raises: [], gcsafe.}
type QDoubleSpinBoxstepEnabledProc* = proc(self: QDoubleSpinBox): cint {.raises: [], gcsafe.}
type QDoubleSpinBoxdevTypeProc* = proc(self: QDoubleSpinBox): cint {.raises: [], gcsafe.}
type QDoubleSpinBoxsetVisibleProc* = proc(self: QDoubleSpinBox, visible: bool): void {.raises: [], gcsafe.}
type QDoubleSpinBoxheightForWidthProc* = proc(self: QDoubleSpinBox, param1: cint): cint {.raises: [], gcsafe.}
type QDoubleSpinBoxhasHeightForWidthProc* = proc(self: QDoubleSpinBox): bool {.raises: [], gcsafe.}
type QDoubleSpinBoxpaintEngineProc* = proc(self: QDoubleSpinBox): gen_qpaintengine_types.QPaintEngine {.raises: [], gcsafe.}
type QDoubleSpinBoxmouseDoubleClickEventProc* = proc(self: QDoubleSpinBox, event: gen_qevent_types.QMouseEvent): void {.raises: [], gcsafe.}
type QDoubleSpinBoxenterEventProc* = proc(self: QDoubleSpinBox, event: gen_qcoreevent_types.QEvent): void {.raises: [], gcsafe.}
type QDoubleSpinBoxleaveEventProc* = proc(self: QDoubleSpinBox, event: gen_qcoreevent_types.QEvent): void {.raises: [], gcsafe.}
type QDoubleSpinBoxmoveEventProc* = proc(self: QDoubleSpinBox, event: gen_qevent_types.QMoveEvent): void {.raises: [], gcsafe.}
type QDoubleSpinBoxtabletEventProc* = proc(self: QDoubleSpinBox, event: gen_qevent_types.QTabletEvent): void {.raises: [], gcsafe.}
type QDoubleSpinBoxactionEventProc* = proc(self: QDoubleSpinBox, event: gen_qevent_types.QActionEvent): void {.raises: [], gcsafe.}
type QDoubleSpinBoxdragEnterEventProc* = proc(self: QDoubleSpinBox, event: gen_qevent_types.QDragEnterEvent): void {.raises: [], gcsafe.}
type QDoubleSpinBoxdragMoveEventProc* = proc(self: QDoubleSpinBox, event: gen_qevent_types.QDragMoveEvent): void {.raises: [], gcsafe.}
type QDoubleSpinBoxdragLeaveEventProc* = proc(self: QDoubleSpinBox, event: gen_qevent_types.QDragLeaveEvent): void {.raises: [], gcsafe.}
type QDoubleSpinBoxdropEventProc* = proc(self: QDoubleSpinBox, event: gen_qevent_types.QDropEvent): void {.raises: [], gcsafe.}
type QDoubleSpinBoxnativeEventProc* = proc(self: QDoubleSpinBox, eventType: openArray[byte], message: pointer, resultVal: ptr clong): bool {.raises: [], gcsafe.}
type QDoubleSpinBoxmetricProc* = proc(self: QDoubleSpinBox, param1: cint): cint {.raises: [], gcsafe.}
type QDoubleSpinBoxinitPainterProc* = proc(self: QDoubleSpinBox, painter: gen_qpainter_types.QPainter): void {.raises: [], gcsafe.}
type QDoubleSpinBoxredirectedProc* = proc(self: QDoubleSpinBox, offset: gen_qpoint_types.QPoint): gen_qpaintdevice_types.QPaintDevice {.raises: [], gcsafe.}
type QDoubleSpinBoxsharedPainterProc* = proc(self: QDoubleSpinBox): gen_qpainter_types.QPainter {.raises: [], gcsafe.}
type QDoubleSpinBoxinputMethodEventProc* = proc(self: QDoubleSpinBox, param1: gen_qevent_types.QInputMethodEvent): void {.raises: [], gcsafe.}
type QDoubleSpinBoxfocusNextPrevChildProc* = proc(self: QDoubleSpinBox, next: bool): bool {.raises: [], gcsafe.}
type QDoubleSpinBoxeventFilterProc* = proc(self: QDoubleSpinBox, watched: gen_qobject_types.QObject, event: gen_qcoreevent_types.QEvent): bool {.raises: [], gcsafe.}
type QDoubleSpinBoxchildEventProc* = proc(self: QDoubleSpinBox, event: gen_qcoreevent_types.QChildEvent): void {.raises: [], gcsafe.}
type QDoubleSpinBoxcustomEventProc* = proc(self: QDoubleSpinBox, event: gen_qcoreevent_types.QEvent): void {.raises: [], gcsafe.}
type QDoubleSpinBoxconnectNotifyProc* = proc(self: QDoubleSpinBox, signal: gen_qmetaobject_types.QMetaMethod): void {.raises: [], gcsafe.}
type QDoubleSpinBoxdisconnectNotifyProc* = proc(self: QDoubleSpinBox, signal: gen_qmetaobject_types.QMetaMethod): void {.raises: [], gcsafe.}

type QDoubleSpinBoxVTable* {.inheritable, pure.} = object
  vtbl: cQDoubleSpinBoxVTable
  metaObject*: QDoubleSpinBoxmetaObjectProc
  metacast*: QDoubleSpinBoxmetacastProc
  metacall*: QDoubleSpinBoxmetacallProc
  validate*: QDoubleSpinBoxvalidateProc
  valueFromText*: QDoubleSpinBoxvalueFromTextProc
  textFromValue*: QDoubleSpinBoxtextFromValueProc
  fixup*: QDoubleSpinBoxfixupProc
  sizeHint*: QDoubleSpinBoxsizeHintProc
  minimumSizeHint*: QDoubleSpinBoxminimumSizeHintProc
  event*: QDoubleSpinBoxeventProc
  inputMethodQuery*: QDoubleSpinBoxinputMethodQueryProc
  stepBy*: QDoubleSpinBoxstepByProc
  clear*: QDoubleSpinBoxclearProc
  resizeEvent*: QDoubleSpinBoxresizeEventProc
  keyPressEvent*: QDoubleSpinBoxkeyPressEventProc
  keyReleaseEvent*: QDoubleSpinBoxkeyReleaseEventProc
  wheelEvent*: QDoubleSpinBoxwheelEventProc
  focusInEvent*: QDoubleSpinBoxfocusInEventProc
  focusOutEvent*: QDoubleSpinBoxfocusOutEventProc
  contextMenuEvent*: QDoubleSpinBoxcontextMenuEventProc
  changeEvent*: QDoubleSpinBoxchangeEventProc
  closeEvent*: QDoubleSpinBoxcloseEventProc
  hideEvent*: QDoubleSpinBoxhideEventProc
  mousePressEvent*: QDoubleSpinBoxmousePressEventProc
  mouseReleaseEvent*: QDoubleSpinBoxmouseReleaseEventProc
  mouseMoveEvent*: QDoubleSpinBoxmouseMoveEventProc
  timerEvent*: QDoubleSpinBoxtimerEventProc
  paintEvent*: QDoubleSpinBoxpaintEventProc
  showEvent*: QDoubleSpinBoxshowEventProc
  stepEnabled*: QDoubleSpinBoxstepEnabledProc
  devType*: QDoubleSpinBoxdevTypeProc
  setVisible*: QDoubleSpinBoxsetVisibleProc
  heightForWidth*: QDoubleSpinBoxheightForWidthProc
  hasHeightForWidth*: QDoubleSpinBoxhasHeightForWidthProc
  paintEngine*: QDoubleSpinBoxpaintEngineProc
  mouseDoubleClickEvent*: QDoubleSpinBoxmouseDoubleClickEventProc
  enterEvent*: QDoubleSpinBoxenterEventProc
  leaveEvent*: QDoubleSpinBoxleaveEventProc
  moveEvent*: QDoubleSpinBoxmoveEventProc
  tabletEvent*: QDoubleSpinBoxtabletEventProc
  actionEvent*: QDoubleSpinBoxactionEventProc
  dragEnterEvent*: QDoubleSpinBoxdragEnterEventProc
  dragMoveEvent*: QDoubleSpinBoxdragMoveEventProc
  dragLeaveEvent*: QDoubleSpinBoxdragLeaveEventProc
  dropEvent*: QDoubleSpinBoxdropEventProc
  nativeEvent*: QDoubleSpinBoxnativeEventProc
  metric*: QDoubleSpinBoxmetricProc
  initPainter*: QDoubleSpinBoxinitPainterProc
  redirected*: QDoubleSpinBoxredirectedProc
  sharedPainter*: QDoubleSpinBoxsharedPainterProc
  inputMethodEvent*: QDoubleSpinBoxinputMethodEventProc
  focusNextPrevChild*: QDoubleSpinBoxfocusNextPrevChildProc
  eventFilter*: QDoubleSpinBoxeventFilterProc
  childEvent*: QDoubleSpinBoxchildEventProc
  customEvent*: QDoubleSpinBoxcustomEventProc
  connectNotify*: QDoubleSpinBoxconnectNotifyProc
  disconnectNotify*: QDoubleSpinBoxdisconnectNotifyProc

proc QDoubleSpinBoxmetaObject*(self: gen_qspinbox_types.QDoubleSpinBox): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQDoubleSpinBox_virtualbase_metaObject(self.h), owned: false)

proc QDoubleSpinBoxmetacast*(self: gen_qspinbox_types.QDoubleSpinBox, param1: cstring): pointer =
  fcQDoubleSpinBox_virtualbase_metacast(self.h, param1)

proc QDoubleSpinBoxmetacall*(self: gen_qspinbox_types.QDoubleSpinBox, param1: cint, param2: cint, param3: pointer): cint =
  fcQDoubleSpinBox_virtualbase_metacall(self.h, cint(param1), param2, param3)

proc QDoubleSpinBoxvalidate*(self: gen_qspinbox_types.QDoubleSpinBox, input: openArray[char], pos: ptr cint): cint =
  cint(fcQDoubleSpinBox_virtualbase_validate(self.h, struct_miqt_string(data: if len(input) > 0: addr input[0] else: nil, len: csize_t(len(input))), pos))

proc QDoubleSpinBoxvalueFromText*(self: gen_qspinbox_types.QDoubleSpinBox, text: openArray[char]): float64 =
  fcQDoubleSpinBox_virtualbase_valueFromText(self.h, struct_miqt_string(data: if len(text) > 0: addr text[0] else: nil, len: csize_t(len(text))))

proc QDoubleSpinBoxtextFromValue*(self: gen_qspinbox_types.QDoubleSpinBox, val: float64): string =
  let v_ms = fcQDoubleSpinBox_virtualbase_textFromValue(self.h, val)
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

proc QDoubleSpinBoxfixup*(self: gen_qspinbox_types.QDoubleSpinBox, str: openArray[char]): void =
  fcQDoubleSpinBox_virtualbase_fixup(self.h, struct_miqt_string(data: if len(str) > 0: addr str[0] else: nil, len: csize_t(len(str))))

proc QDoubleSpinBoxsizeHint*(self: gen_qspinbox_types.QDoubleSpinBox): gen_qsize_types.QSize =
  gen_qsize_types.QSize(h: fcQDoubleSpinBox_virtualbase_sizeHint(self.h), owned: true)

proc QDoubleSpinBoxminimumSizeHint*(self: gen_qspinbox_types.QDoubleSpinBox): gen_qsize_types.QSize =
  gen_qsize_types.QSize(h: fcQDoubleSpinBox_virtualbase_minimumSizeHint(self.h), owned: true)

proc QDoubleSpinBoxevent*(self: gen_qspinbox_types.QDoubleSpinBox, event: gen_qcoreevent_types.QEvent): bool =
  fcQDoubleSpinBox_virtualbase_event(self.h, event.h)

proc QDoubleSpinBoxinputMethodQuery*(self: gen_qspinbox_types.QDoubleSpinBox, param1: cint): gen_qvariant_types.QVariant =
  gen_qvariant_types.QVariant(h: fcQDoubleSpinBox_virtualbase_inputMethodQuery(self.h, cint(param1)), owned: true)

proc QDoubleSpinBoxstepBy*(self: gen_qspinbox_types.QDoubleSpinBox, steps: cint): void =
  fcQDoubleSpinBox_virtualbase_stepBy(self.h, steps)

proc QDoubleSpinBoxclear*(self: gen_qspinbox_types.QDoubleSpinBox): void =
  fcQDoubleSpinBox_virtualbase_clear(self.h)

proc QDoubleSpinBoxresizeEvent*(self: gen_qspinbox_types.QDoubleSpinBox, event: gen_qevent_types.QResizeEvent): void =
  fcQDoubleSpinBox_virtualbase_resizeEvent(self.h, event.h)

proc QDoubleSpinBoxkeyPressEvent*(self: gen_qspinbox_types.QDoubleSpinBox, event: gen_qevent_types.QKeyEvent): void =
  fcQDoubleSpinBox_virtualbase_keyPressEvent(self.h, event.h)

proc QDoubleSpinBoxkeyReleaseEvent*(self: gen_qspinbox_types.QDoubleSpinBox, event: gen_qevent_types.QKeyEvent): void =
  fcQDoubleSpinBox_virtualbase_keyReleaseEvent(self.h, event.h)

proc QDoubleSpinBoxwheelEvent*(self: gen_qspinbox_types.QDoubleSpinBox, event: gen_qevent_types.QWheelEvent): void =
  fcQDoubleSpinBox_virtualbase_wheelEvent(self.h, event.h)

proc QDoubleSpinBoxfocusInEvent*(self: gen_qspinbox_types.QDoubleSpinBox, event: gen_qevent_types.QFocusEvent): void =
  fcQDoubleSpinBox_virtualbase_focusInEvent(self.h, event.h)

proc QDoubleSpinBoxfocusOutEvent*(self: gen_qspinbox_types.QDoubleSpinBox, event: gen_qevent_types.QFocusEvent): void =
  fcQDoubleSpinBox_virtualbase_focusOutEvent(self.h, event.h)

proc QDoubleSpinBoxcontextMenuEvent*(self: gen_qspinbox_types.QDoubleSpinBox, event: gen_qevent_types.QContextMenuEvent): void =
  fcQDoubleSpinBox_virtualbase_contextMenuEvent(self.h, event.h)

proc QDoubleSpinBoxchangeEvent*(self: gen_qspinbox_types.QDoubleSpinBox, event: gen_qcoreevent_types.QEvent): void =
  fcQDoubleSpinBox_virtualbase_changeEvent(self.h, event.h)

proc QDoubleSpinBoxcloseEvent*(self: gen_qspinbox_types.QDoubleSpinBox, event: gen_qevent_types.QCloseEvent): void =
  fcQDoubleSpinBox_virtualbase_closeEvent(self.h, event.h)

proc QDoubleSpinBoxhideEvent*(self: gen_qspinbox_types.QDoubleSpinBox, event: gen_qevent_types.QHideEvent): void =
  fcQDoubleSpinBox_virtualbase_hideEvent(self.h, event.h)

proc QDoubleSpinBoxmousePressEvent*(self: gen_qspinbox_types.QDoubleSpinBox, event: gen_qevent_types.QMouseEvent): void =
  fcQDoubleSpinBox_virtualbase_mousePressEvent(self.h, event.h)

proc QDoubleSpinBoxmouseReleaseEvent*(self: gen_qspinbox_types.QDoubleSpinBox, event: gen_qevent_types.QMouseEvent): void =
  fcQDoubleSpinBox_virtualbase_mouseReleaseEvent(self.h, event.h)

proc QDoubleSpinBoxmouseMoveEvent*(self: gen_qspinbox_types.QDoubleSpinBox, event: gen_qevent_types.QMouseEvent): void =
  fcQDoubleSpinBox_virtualbase_mouseMoveEvent(self.h, event.h)

proc QDoubleSpinBoxtimerEvent*(self: gen_qspinbox_types.QDoubleSpinBox, event: gen_qcoreevent_types.QTimerEvent): void =
  fcQDoubleSpinBox_virtualbase_timerEvent(self.h, event.h)

proc QDoubleSpinBoxpaintEvent*(self: gen_qspinbox_types.QDoubleSpinBox, event: gen_qevent_types.QPaintEvent): void =
  fcQDoubleSpinBox_virtualbase_paintEvent(self.h, event.h)

proc QDoubleSpinBoxshowEvent*(self: gen_qspinbox_types.QDoubleSpinBox, event: gen_qevent_types.QShowEvent): void =
  fcQDoubleSpinBox_virtualbase_showEvent(self.h, event.h)

proc QDoubleSpinBoxstepEnabled*(self: gen_qspinbox_types.QDoubleSpinBox): cint =
  cint(fcQDoubleSpinBox_virtualbase_stepEnabled(self.h))

proc QDoubleSpinBoxdevType*(self: gen_qspinbox_types.QDoubleSpinBox): cint =
  fcQDoubleSpinBox_virtualbase_devType(self.h)

proc QDoubleSpinBoxsetVisible*(self: gen_qspinbox_types.QDoubleSpinBox, visible: bool): void =
  fcQDoubleSpinBox_virtualbase_setVisible(self.h, visible)

proc QDoubleSpinBoxheightForWidth*(self: gen_qspinbox_types.QDoubleSpinBox, param1: cint): cint =
  fcQDoubleSpinBox_virtualbase_heightForWidth(self.h, param1)

proc QDoubleSpinBoxhasHeightForWidth*(self: gen_qspinbox_types.QDoubleSpinBox): bool =
  fcQDoubleSpinBox_virtualbase_hasHeightForWidth(self.h)

proc QDoubleSpinBoxpaintEngine*(self: gen_qspinbox_types.QDoubleSpinBox): gen_qpaintengine_types.QPaintEngine =
  gen_qpaintengine_types.QPaintEngine(h: fcQDoubleSpinBox_virtualbase_paintEngine(self.h), owned: false)

proc QDoubleSpinBoxmouseDoubleClickEvent*(self: gen_qspinbox_types.QDoubleSpinBox, event: gen_qevent_types.QMouseEvent): void =
  fcQDoubleSpinBox_virtualbase_mouseDoubleClickEvent(self.h, event.h)

proc QDoubleSpinBoxenterEvent*(self: gen_qspinbox_types.QDoubleSpinBox, event: gen_qcoreevent_types.QEvent): void =
  fcQDoubleSpinBox_virtualbase_enterEvent(self.h, event.h)

proc QDoubleSpinBoxleaveEvent*(self: gen_qspinbox_types.QDoubleSpinBox, event: gen_qcoreevent_types.QEvent): void =
  fcQDoubleSpinBox_virtualbase_leaveEvent(self.h, event.h)

proc QDoubleSpinBoxmoveEvent*(self: gen_qspinbox_types.QDoubleSpinBox, event: gen_qevent_types.QMoveEvent): void =
  fcQDoubleSpinBox_virtualbase_moveEvent(self.h, event.h)

proc QDoubleSpinBoxtabletEvent*(self: gen_qspinbox_types.QDoubleSpinBox, event: gen_qevent_types.QTabletEvent): void =
  fcQDoubleSpinBox_virtualbase_tabletEvent(self.h, event.h)

proc QDoubleSpinBoxactionEvent*(self: gen_qspinbox_types.QDoubleSpinBox, event: gen_qevent_types.QActionEvent): void =
  fcQDoubleSpinBox_virtualbase_actionEvent(self.h, event.h)

proc QDoubleSpinBoxdragEnterEvent*(self: gen_qspinbox_types.QDoubleSpinBox, event: gen_qevent_types.QDragEnterEvent): void =
  fcQDoubleSpinBox_virtualbase_dragEnterEvent(self.h, event.h)

proc QDoubleSpinBoxdragMoveEvent*(self: gen_qspinbox_types.QDoubleSpinBox, event: gen_qevent_types.QDragMoveEvent): void =
  fcQDoubleSpinBox_virtualbase_dragMoveEvent(self.h, event.h)

proc QDoubleSpinBoxdragLeaveEvent*(self: gen_qspinbox_types.QDoubleSpinBox, event: gen_qevent_types.QDragLeaveEvent): void =
  fcQDoubleSpinBox_virtualbase_dragLeaveEvent(self.h, event.h)

proc QDoubleSpinBoxdropEvent*(self: gen_qspinbox_types.QDoubleSpinBox, event: gen_qevent_types.QDropEvent): void =
  fcQDoubleSpinBox_virtualbase_dropEvent(self.h, event.h)

proc QDoubleSpinBoxnativeEvent*(self: gen_qspinbox_types.QDoubleSpinBox, eventType: openArray[byte], message: pointer, resultVal: ptr clong): bool =
  fcQDoubleSpinBox_virtualbase_nativeEvent(self.h, struct_miqt_string(data: cast[cstring](if len(eventType) == 0: nil else: unsafeAddr eventType[0]), len: csize_t(len(eventType))), message, resultVal)

proc QDoubleSpinBoxmetric*(self: gen_qspinbox_types.QDoubleSpinBox, param1: cint): cint =
  fcQDoubleSpinBox_virtualbase_metric(self.h, cint(param1))

proc QDoubleSpinBoxinitPainter*(self: gen_qspinbox_types.QDoubleSpinBox, painter: gen_qpainter_types.QPainter): void =
  fcQDoubleSpinBox_virtualbase_initPainter(self.h, painter.h)

proc QDoubleSpinBoxredirected*(self: gen_qspinbox_types.QDoubleSpinBox, offset: gen_qpoint_types.QPoint): gen_qpaintdevice_types.QPaintDevice =
  gen_qpaintdevice_types.QPaintDevice(h: fcQDoubleSpinBox_virtualbase_redirected(self.h, offset.h), owned: false)

proc QDoubleSpinBoxsharedPainter*(self: gen_qspinbox_types.QDoubleSpinBox): gen_qpainter_types.QPainter =
  gen_qpainter_types.QPainter(h: fcQDoubleSpinBox_virtualbase_sharedPainter(self.h), owned: false)

proc QDoubleSpinBoxinputMethodEvent*(self: gen_qspinbox_types.QDoubleSpinBox, param1: gen_qevent_types.QInputMethodEvent): void =
  fcQDoubleSpinBox_virtualbase_inputMethodEvent(self.h, param1.h)

proc QDoubleSpinBoxfocusNextPrevChild*(self: gen_qspinbox_types.QDoubleSpinBox, next: bool): bool =
  fcQDoubleSpinBox_virtualbase_focusNextPrevChild(self.h, next)

proc QDoubleSpinBoxeventFilter*(self: gen_qspinbox_types.QDoubleSpinBox, watched: gen_qobject_types.QObject, event: gen_qcoreevent_types.QEvent): bool =
  fcQDoubleSpinBox_virtualbase_eventFilter(self.h, watched.h, event.h)

proc QDoubleSpinBoxchildEvent*(self: gen_qspinbox_types.QDoubleSpinBox, event: gen_qcoreevent_types.QChildEvent): void =
  fcQDoubleSpinBox_virtualbase_childEvent(self.h, event.h)

proc QDoubleSpinBoxcustomEvent*(self: gen_qspinbox_types.QDoubleSpinBox, event: gen_qcoreevent_types.QEvent): void =
  fcQDoubleSpinBox_virtualbase_customEvent(self.h, event.h)

proc QDoubleSpinBoxconnectNotify*(self: gen_qspinbox_types.QDoubleSpinBox, signal: gen_qmetaobject_types.QMetaMethod): void =
  fcQDoubleSpinBox_virtualbase_connectNotify(self.h, signal.h)

proc QDoubleSpinBoxdisconnectNotify*(self: gen_qspinbox_types.QDoubleSpinBox, signal: gen_qmetaobject_types.QMetaMethod): void =
  fcQDoubleSpinBox_virtualbase_disconnectNotify(self.h, signal.h)


proc fcQDoubleSpinBox_vtable_callback_metaObject(self: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QDoubleSpinBoxVTable](fcQDoubleSpinBox_vdata(self))
  let self = QDoubleSpinBox(h: self)
  var virtualReturn = vtbl[].metaObject(self)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc fcQDoubleSpinBox_vtable_callback_metacast(self: pointer, param1: cstring): pointer {.cdecl.} =
  let vtbl = cast[ptr QDoubleSpinBoxVTable](fcQDoubleSpinBox_vdata(self))
  let self = QDoubleSpinBox(h: self)
  let slotval1 = (param1)
  var virtualReturn = vtbl[].metacast(self, slotval1)
  virtualReturn

proc fcQDoubleSpinBox_vtable_callback_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.cdecl.} =
  let vtbl = cast[ptr QDoubleSpinBoxVTable](fcQDoubleSpinBox_vdata(self))
  let self = QDoubleSpinBox(h: self)
  let slotval1 = cint(param1)
  let slotval2 = param2
  let slotval3 = param3
  var virtualReturn = vtbl[].metacall(self, slotval1, slotval2, slotval3)
  virtualReturn

proc fcQDoubleSpinBox_vtable_callback_validate(self: pointer, input: struct_miqt_string, pos: ptr cint): cint {.cdecl.} =
  let vtbl = cast[ptr QDoubleSpinBoxVTable](fcQDoubleSpinBox_vdata(self))
  let self = QDoubleSpinBox(h: self)
  let vinput_ms = input
  let vinputx_ret = string.fromBytes(vinput_ms)
  c_free(vinput_ms.data)
  let slotval1 = vinputx_ret
  let slotval2 = pos
  var virtualReturn = vtbl[].validate(self, slotval1, slotval2)
  cint(virtualReturn)

proc fcQDoubleSpinBox_vtable_callback_valueFromText(self: pointer, text: struct_miqt_string): float64 {.cdecl.} =
  let vtbl = cast[ptr QDoubleSpinBoxVTable](fcQDoubleSpinBox_vdata(self))
  let self = QDoubleSpinBox(h: self)
  let vtext_ms = text
  let vtextx_ret = string.fromBytes(vtext_ms)
  c_free(vtext_ms.data)
  let slotval1 = vtextx_ret
  var virtualReturn = vtbl[].valueFromText(self, slotval1)
  virtualReturn

proc fcQDoubleSpinBox_vtable_callback_textFromValue(self: pointer, val: float64): struct_miqt_string {.cdecl.} =
  let vtbl = cast[ptr QDoubleSpinBoxVTable](fcQDoubleSpinBox_vdata(self))
  let self = QDoubleSpinBox(h: self)
  let slotval1 = val
  var virtualReturn = vtbl[].textFromValue(self, slotval1)
  var virtualReturn_copy = cast[cstring](if len(virtualReturn) > 0: c_malloc(csize_t(len(virtualReturn))) else: nil)
  if len(virtualReturn) > 0: copyMem(cast[pointer](virtualReturn_copy), addr virtualReturn[0], csize_t(len(virtualReturn)))
  struct_miqt_string(data: virtualReturn_copy, len: csize_t(len(virtualReturn)))

proc fcQDoubleSpinBox_vtable_callback_fixup(self: pointer, str: struct_miqt_string): void {.cdecl.} =
  let vtbl = cast[ptr QDoubleSpinBoxVTable](fcQDoubleSpinBox_vdata(self))
  let self = QDoubleSpinBox(h: self)
  let vstr_ms = str
  let vstrx_ret = string.fromBytes(vstr_ms)
  c_free(vstr_ms.data)
  let slotval1 = vstrx_ret
  vtbl[].fixup(self, slotval1)

proc fcQDoubleSpinBox_vtable_callback_sizeHint(self: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QDoubleSpinBoxVTable](fcQDoubleSpinBox_vdata(self))
  let self = QDoubleSpinBox(h: self)
  var virtualReturn = vtbl[].sizeHint(self)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc fcQDoubleSpinBox_vtable_callback_minimumSizeHint(self: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QDoubleSpinBoxVTable](fcQDoubleSpinBox_vdata(self))
  let self = QDoubleSpinBox(h: self)
  var virtualReturn = vtbl[].minimumSizeHint(self)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc fcQDoubleSpinBox_vtable_callback_event(self: pointer, event: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QDoubleSpinBoxVTable](fcQDoubleSpinBox_vdata(self))
  let self = QDoubleSpinBox(h: self)
  let slotval1 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  var virtualReturn = vtbl[].event(self, slotval1)
  virtualReturn

proc fcQDoubleSpinBox_vtable_callback_inputMethodQuery(self: pointer, param1: cint): pointer {.cdecl.} =
  let vtbl = cast[ptr QDoubleSpinBoxVTable](fcQDoubleSpinBox_vdata(self))
  let self = QDoubleSpinBox(h: self)
  let slotval1 = cint(param1)
  var virtualReturn = vtbl[].inputMethodQuery(self, slotval1)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc fcQDoubleSpinBox_vtable_callback_stepBy(self: pointer, steps: cint): void {.cdecl.} =
  let vtbl = cast[ptr QDoubleSpinBoxVTable](fcQDoubleSpinBox_vdata(self))
  let self = QDoubleSpinBox(h: self)
  let slotval1 = steps
  vtbl[].stepBy(self, slotval1)

proc fcQDoubleSpinBox_vtable_callback_clear(self: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QDoubleSpinBoxVTable](fcQDoubleSpinBox_vdata(self))
  let self = QDoubleSpinBox(h: self)
  vtbl[].clear(self)

proc fcQDoubleSpinBox_vtable_callback_resizeEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QDoubleSpinBoxVTable](fcQDoubleSpinBox_vdata(self))
  let self = QDoubleSpinBox(h: self)
  let slotval1 = gen_qevent_types.QResizeEvent(h: event, owned: false)
  vtbl[].resizeEvent(self, slotval1)

proc fcQDoubleSpinBox_vtable_callback_keyPressEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QDoubleSpinBoxVTable](fcQDoubleSpinBox_vdata(self))
  let self = QDoubleSpinBox(h: self)
  let slotval1 = gen_qevent_types.QKeyEvent(h: event, owned: false)
  vtbl[].keyPressEvent(self, slotval1)

proc fcQDoubleSpinBox_vtable_callback_keyReleaseEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QDoubleSpinBoxVTable](fcQDoubleSpinBox_vdata(self))
  let self = QDoubleSpinBox(h: self)
  let slotval1 = gen_qevent_types.QKeyEvent(h: event, owned: false)
  vtbl[].keyReleaseEvent(self, slotval1)

proc fcQDoubleSpinBox_vtable_callback_wheelEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QDoubleSpinBoxVTable](fcQDoubleSpinBox_vdata(self))
  let self = QDoubleSpinBox(h: self)
  let slotval1 = gen_qevent_types.QWheelEvent(h: event, owned: false)
  vtbl[].wheelEvent(self, slotval1)

proc fcQDoubleSpinBox_vtable_callback_focusInEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QDoubleSpinBoxVTable](fcQDoubleSpinBox_vdata(self))
  let self = QDoubleSpinBox(h: self)
  let slotval1 = gen_qevent_types.QFocusEvent(h: event, owned: false)
  vtbl[].focusInEvent(self, slotval1)

proc fcQDoubleSpinBox_vtable_callback_focusOutEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QDoubleSpinBoxVTable](fcQDoubleSpinBox_vdata(self))
  let self = QDoubleSpinBox(h: self)
  let slotval1 = gen_qevent_types.QFocusEvent(h: event, owned: false)
  vtbl[].focusOutEvent(self, slotval1)

proc fcQDoubleSpinBox_vtable_callback_contextMenuEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QDoubleSpinBoxVTable](fcQDoubleSpinBox_vdata(self))
  let self = QDoubleSpinBox(h: self)
  let slotval1 = gen_qevent_types.QContextMenuEvent(h: event, owned: false)
  vtbl[].contextMenuEvent(self, slotval1)

proc fcQDoubleSpinBox_vtable_callback_changeEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QDoubleSpinBoxVTable](fcQDoubleSpinBox_vdata(self))
  let self = QDoubleSpinBox(h: self)
  let slotval1 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  vtbl[].changeEvent(self, slotval1)

proc fcQDoubleSpinBox_vtable_callback_closeEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QDoubleSpinBoxVTable](fcQDoubleSpinBox_vdata(self))
  let self = QDoubleSpinBox(h: self)
  let slotval1 = gen_qevent_types.QCloseEvent(h: event, owned: false)
  vtbl[].closeEvent(self, slotval1)

proc fcQDoubleSpinBox_vtable_callback_hideEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QDoubleSpinBoxVTable](fcQDoubleSpinBox_vdata(self))
  let self = QDoubleSpinBox(h: self)
  let slotval1 = gen_qevent_types.QHideEvent(h: event, owned: false)
  vtbl[].hideEvent(self, slotval1)

proc fcQDoubleSpinBox_vtable_callback_mousePressEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QDoubleSpinBoxVTable](fcQDoubleSpinBox_vdata(self))
  let self = QDoubleSpinBox(h: self)
  let slotval1 = gen_qevent_types.QMouseEvent(h: event, owned: false)
  vtbl[].mousePressEvent(self, slotval1)

proc fcQDoubleSpinBox_vtable_callback_mouseReleaseEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QDoubleSpinBoxVTable](fcQDoubleSpinBox_vdata(self))
  let self = QDoubleSpinBox(h: self)
  let slotval1 = gen_qevent_types.QMouseEvent(h: event, owned: false)
  vtbl[].mouseReleaseEvent(self, slotval1)

proc fcQDoubleSpinBox_vtable_callback_mouseMoveEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QDoubleSpinBoxVTable](fcQDoubleSpinBox_vdata(self))
  let self = QDoubleSpinBox(h: self)
  let slotval1 = gen_qevent_types.QMouseEvent(h: event, owned: false)
  vtbl[].mouseMoveEvent(self, slotval1)

proc fcQDoubleSpinBox_vtable_callback_timerEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QDoubleSpinBoxVTable](fcQDoubleSpinBox_vdata(self))
  let self = QDoubleSpinBox(h: self)
  let slotval1 = gen_qcoreevent_types.QTimerEvent(h: event, owned: false)
  vtbl[].timerEvent(self, slotval1)

proc fcQDoubleSpinBox_vtable_callback_paintEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QDoubleSpinBoxVTable](fcQDoubleSpinBox_vdata(self))
  let self = QDoubleSpinBox(h: self)
  let slotval1 = gen_qevent_types.QPaintEvent(h: event, owned: false)
  vtbl[].paintEvent(self, slotval1)

proc fcQDoubleSpinBox_vtable_callback_showEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QDoubleSpinBoxVTable](fcQDoubleSpinBox_vdata(self))
  let self = QDoubleSpinBox(h: self)
  let slotval1 = gen_qevent_types.QShowEvent(h: event, owned: false)
  vtbl[].showEvent(self, slotval1)

proc fcQDoubleSpinBox_vtable_callback_stepEnabled(self: pointer): cint {.cdecl.} =
  let vtbl = cast[ptr QDoubleSpinBoxVTable](fcQDoubleSpinBox_vdata(self))
  let self = QDoubleSpinBox(h: self)
  var virtualReturn = vtbl[].stepEnabled(self)
  cint(virtualReturn)

proc fcQDoubleSpinBox_vtable_callback_devType(self: pointer): cint {.cdecl.} =
  let vtbl = cast[ptr QDoubleSpinBoxVTable](fcQDoubleSpinBox_vdata(self))
  let self = QDoubleSpinBox(h: self)
  var virtualReturn = vtbl[].devType(self)
  virtualReturn

proc fcQDoubleSpinBox_vtable_callback_setVisible(self: pointer, visible: bool): void {.cdecl.} =
  let vtbl = cast[ptr QDoubleSpinBoxVTable](fcQDoubleSpinBox_vdata(self))
  let self = QDoubleSpinBox(h: self)
  let slotval1 = visible
  vtbl[].setVisible(self, slotval1)

proc fcQDoubleSpinBox_vtable_callback_heightForWidth(self: pointer, param1: cint): cint {.cdecl.} =
  let vtbl = cast[ptr QDoubleSpinBoxVTable](fcQDoubleSpinBox_vdata(self))
  let self = QDoubleSpinBox(h: self)
  let slotval1 = param1
  var virtualReturn = vtbl[].heightForWidth(self, slotval1)
  virtualReturn

proc fcQDoubleSpinBox_vtable_callback_hasHeightForWidth(self: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QDoubleSpinBoxVTable](fcQDoubleSpinBox_vdata(self))
  let self = QDoubleSpinBox(h: self)
  var virtualReturn = vtbl[].hasHeightForWidth(self)
  virtualReturn

proc fcQDoubleSpinBox_vtable_callback_paintEngine(self: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QDoubleSpinBoxVTable](fcQDoubleSpinBox_vdata(self))
  let self = QDoubleSpinBox(h: self)
  var virtualReturn = vtbl[].paintEngine(self)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc fcQDoubleSpinBox_vtable_callback_mouseDoubleClickEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QDoubleSpinBoxVTable](fcQDoubleSpinBox_vdata(self))
  let self = QDoubleSpinBox(h: self)
  let slotval1 = gen_qevent_types.QMouseEvent(h: event, owned: false)
  vtbl[].mouseDoubleClickEvent(self, slotval1)

proc fcQDoubleSpinBox_vtable_callback_enterEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QDoubleSpinBoxVTable](fcQDoubleSpinBox_vdata(self))
  let self = QDoubleSpinBox(h: self)
  let slotval1 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  vtbl[].enterEvent(self, slotval1)

proc fcQDoubleSpinBox_vtable_callback_leaveEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QDoubleSpinBoxVTable](fcQDoubleSpinBox_vdata(self))
  let self = QDoubleSpinBox(h: self)
  let slotval1 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  vtbl[].leaveEvent(self, slotval1)

proc fcQDoubleSpinBox_vtable_callback_moveEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QDoubleSpinBoxVTable](fcQDoubleSpinBox_vdata(self))
  let self = QDoubleSpinBox(h: self)
  let slotval1 = gen_qevent_types.QMoveEvent(h: event, owned: false)
  vtbl[].moveEvent(self, slotval1)

proc fcQDoubleSpinBox_vtable_callback_tabletEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QDoubleSpinBoxVTable](fcQDoubleSpinBox_vdata(self))
  let self = QDoubleSpinBox(h: self)
  let slotval1 = gen_qevent_types.QTabletEvent(h: event, owned: false)
  vtbl[].tabletEvent(self, slotval1)

proc fcQDoubleSpinBox_vtable_callback_actionEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QDoubleSpinBoxVTable](fcQDoubleSpinBox_vdata(self))
  let self = QDoubleSpinBox(h: self)
  let slotval1 = gen_qevent_types.QActionEvent(h: event, owned: false)
  vtbl[].actionEvent(self, slotval1)

proc fcQDoubleSpinBox_vtable_callback_dragEnterEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QDoubleSpinBoxVTable](fcQDoubleSpinBox_vdata(self))
  let self = QDoubleSpinBox(h: self)
  let slotval1 = gen_qevent_types.QDragEnterEvent(h: event, owned: false)
  vtbl[].dragEnterEvent(self, slotval1)

proc fcQDoubleSpinBox_vtable_callback_dragMoveEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QDoubleSpinBoxVTable](fcQDoubleSpinBox_vdata(self))
  let self = QDoubleSpinBox(h: self)
  let slotval1 = gen_qevent_types.QDragMoveEvent(h: event, owned: false)
  vtbl[].dragMoveEvent(self, slotval1)

proc fcQDoubleSpinBox_vtable_callback_dragLeaveEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QDoubleSpinBoxVTable](fcQDoubleSpinBox_vdata(self))
  let self = QDoubleSpinBox(h: self)
  let slotval1 = gen_qevent_types.QDragLeaveEvent(h: event, owned: false)
  vtbl[].dragLeaveEvent(self, slotval1)

proc fcQDoubleSpinBox_vtable_callback_dropEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QDoubleSpinBoxVTable](fcQDoubleSpinBox_vdata(self))
  let self = QDoubleSpinBox(h: self)
  let slotval1 = gen_qevent_types.QDropEvent(h: event, owned: false)
  vtbl[].dropEvent(self, slotval1)

proc fcQDoubleSpinBox_vtable_callback_nativeEvent(self: pointer, eventType: struct_miqt_string, message: pointer, resultVal: ptr clong): bool {.cdecl.} =
  let vtbl = cast[ptr QDoubleSpinBoxVTable](fcQDoubleSpinBox_vdata(self))
  let self = QDoubleSpinBox(h: self)
  var veventType_bytearray = eventType
  var veventTypex_ret = @(toOpenArray(cast[ptr UncheckedArray[byte]](veventType_bytearray.data), 0, int(veventType_bytearray.len)-1))
  c_free(veventType_bytearray.data)
  let slotval1 = veventTypex_ret
  let slotval2 = message
  let slotval3 = resultVal
  var virtualReturn = vtbl[].nativeEvent(self, slotval1, slotval2, slotval3)
  virtualReturn

proc fcQDoubleSpinBox_vtable_callback_metric(self: pointer, param1: cint): cint {.cdecl.} =
  let vtbl = cast[ptr QDoubleSpinBoxVTable](fcQDoubleSpinBox_vdata(self))
  let self = QDoubleSpinBox(h: self)
  let slotval1 = cint(param1)
  var virtualReturn = vtbl[].metric(self, slotval1)
  virtualReturn

proc fcQDoubleSpinBox_vtable_callback_initPainter(self: pointer, painter: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QDoubleSpinBoxVTable](fcQDoubleSpinBox_vdata(self))
  let self = QDoubleSpinBox(h: self)
  let slotval1 = gen_qpainter_types.QPainter(h: painter, owned: false)
  vtbl[].initPainter(self, slotval1)

proc fcQDoubleSpinBox_vtable_callback_redirected(self: pointer, offset: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QDoubleSpinBoxVTable](fcQDoubleSpinBox_vdata(self))
  let self = QDoubleSpinBox(h: self)
  let slotval1 = gen_qpoint_types.QPoint(h: offset, owned: false)
  var virtualReturn = vtbl[].redirected(self, slotval1)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc fcQDoubleSpinBox_vtable_callback_sharedPainter(self: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QDoubleSpinBoxVTable](fcQDoubleSpinBox_vdata(self))
  let self = QDoubleSpinBox(h: self)
  var virtualReturn = vtbl[].sharedPainter(self)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc fcQDoubleSpinBox_vtable_callback_inputMethodEvent(self: pointer, param1: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QDoubleSpinBoxVTable](fcQDoubleSpinBox_vdata(self))
  let self = QDoubleSpinBox(h: self)
  let slotval1 = gen_qevent_types.QInputMethodEvent(h: param1, owned: false)
  vtbl[].inputMethodEvent(self, slotval1)

proc fcQDoubleSpinBox_vtable_callback_focusNextPrevChild(self: pointer, next: bool): bool {.cdecl.} =
  let vtbl = cast[ptr QDoubleSpinBoxVTable](fcQDoubleSpinBox_vdata(self))
  let self = QDoubleSpinBox(h: self)
  let slotval1 = next
  var virtualReturn = vtbl[].focusNextPrevChild(self, slotval1)
  virtualReturn

proc fcQDoubleSpinBox_vtable_callback_eventFilter(self: pointer, watched: pointer, event: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QDoubleSpinBoxVTable](fcQDoubleSpinBox_vdata(self))
  let self = QDoubleSpinBox(h: self)
  let slotval1 = gen_qobject_types.QObject(h: watched, owned: false)
  let slotval2 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  var virtualReturn = vtbl[].eventFilter(self, slotval1, slotval2)
  virtualReturn

proc fcQDoubleSpinBox_vtable_callback_childEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QDoubleSpinBoxVTable](fcQDoubleSpinBox_vdata(self))
  let self = QDoubleSpinBox(h: self)
  let slotval1 = gen_qcoreevent_types.QChildEvent(h: event, owned: false)
  vtbl[].childEvent(self, slotval1)

proc fcQDoubleSpinBox_vtable_callback_customEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QDoubleSpinBoxVTable](fcQDoubleSpinBox_vdata(self))
  let self = QDoubleSpinBox(h: self)
  let slotval1 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  vtbl[].customEvent(self, slotval1)

proc fcQDoubleSpinBox_vtable_callback_connectNotify(self: pointer, signal: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QDoubleSpinBoxVTable](fcQDoubleSpinBox_vdata(self))
  let self = QDoubleSpinBox(h: self)
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal, owned: false)
  vtbl[].connectNotify(self, slotval1)

proc fcQDoubleSpinBox_vtable_callback_disconnectNotify(self: pointer, signal: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QDoubleSpinBoxVTable](fcQDoubleSpinBox_vdata(self))
  let self = QDoubleSpinBox(h: self)
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal, owned: false)
  vtbl[].disconnectNotify(self, slotval1)

type VirtualQDoubleSpinBox* {.inheritable.} = ref object of QDoubleSpinBox
  vtbl*: cQDoubleSpinBoxVTable

method metaObject*(self: VirtualQDoubleSpinBox): gen_qobjectdefs_types.QMetaObject {.base.} =
  QDoubleSpinBoxmetaObject(self[])
method metacast*(self: VirtualQDoubleSpinBox, param1: cstring): pointer {.base.} =
  QDoubleSpinBoxmetacast(self[], param1)
method metacall*(self: VirtualQDoubleSpinBox, param1: cint, param2: cint, param3: pointer): cint {.base.} =
  QDoubleSpinBoxmetacall(self[], param1, param2, param3)
method validate*(self: VirtualQDoubleSpinBox, input: openArray[char], pos: ptr cint): cint {.base.} =
  QDoubleSpinBoxvalidate(self[], input, pos)
method valueFromText*(self: VirtualQDoubleSpinBox, text: openArray[char]): float64 {.base.} =
  QDoubleSpinBoxvalueFromText(self[], text)
method textFromValue*(self: VirtualQDoubleSpinBox, val: float64): string {.base.} =
  QDoubleSpinBoxtextFromValue(self[], val)
method fixup*(self: VirtualQDoubleSpinBox, str: openArray[char]): void {.base.} =
  QDoubleSpinBoxfixup(self[], str)
method sizeHint*(self: VirtualQDoubleSpinBox): gen_qsize_types.QSize {.base.} =
  QDoubleSpinBoxsizeHint(self[])
method minimumSizeHint*(self: VirtualQDoubleSpinBox): gen_qsize_types.QSize {.base.} =
  QDoubleSpinBoxminimumSizeHint(self[])
method event*(self: VirtualQDoubleSpinBox, event: gen_qcoreevent_types.QEvent): bool {.base.} =
  QDoubleSpinBoxevent(self[], event)
method inputMethodQuery*(self: VirtualQDoubleSpinBox, param1: cint): gen_qvariant_types.QVariant {.base.} =
  QDoubleSpinBoxinputMethodQuery(self[], param1)
method stepBy*(self: VirtualQDoubleSpinBox, steps: cint): void {.base.} =
  QDoubleSpinBoxstepBy(self[], steps)
method clear*(self: VirtualQDoubleSpinBox): void {.base.} =
  QDoubleSpinBoxclear(self[])
method resizeEvent*(self: VirtualQDoubleSpinBox, event: gen_qevent_types.QResizeEvent): void {.base.} =
  QDoubleSpinBoxresizeEvent(self[], event)
method keyPressEvent*(self: VirtualQDoubleSpinBox, event: gen_qevent_types.QKeyEvent): void {.base.} =
  QDoubleSpinBoxkeyPressEvent(self[], event)
method keyReleaseEvent*(self: VirtualQDoubleSpinBox, event: gen_qevent_types.QKeyEvent): void {.base.} =
  QDoubleSpinBoxkeyReleaseEvent(self[], event)
method wheelEvent*(self: VirtualQDoubleSpinBox, event: gen_qevent_types.QWheelEvent): void {.base.} =
  QDoubleSpinBoxwheelEvent(self[], event)
method focusInEvent*(self: VirtualQDoubleSpinBox, event: gen_qevent_types.QFocusEvent): void {.base.} =
  QDoubleSpinBoxfocusInEvent(self[], event)
method focusOutEvent*(self: VirtualQDoubleSpinBox, event: gen_qevent_types.QFocusEvent): void {.base.} =
  QDoubleSpinBoxfocusOutEvent(self[], event)
method contextMenuEvent*(self: VirtualQDoubleSpinBox, event: gen_qevent_types.QContextMenuEvent): void {.base.} =
  QDoubleSpinBoxcontextMenuEvent(self[], event)
method changeEvent*(self: VirtualQDoubleSpinBox, event: gen_qcoreevent_types.QEvent): void {.base.} =
  QDoubleSpinBoxchangeEvent(self[], event)
method closeEvent*(self: VirtualQDoubleSpinBox, event: gen_qevent_types.QCloseEvent): void {.base.} =
  QDoubleSpinBoxcloseEvent(self[], event)
method hideEvent*(self: VirtualQDoubleSpinBox, event: gen_qevent_types.QHideEvent): void {.base.} =
  QDoubleSpinBoxhideEvent(self[], event)
method mousePressEvent*(self: VirtualQDoubleSpinBox, event: gen_qevent_types.QMouseEvent): void {.base.} =
  QDoubleSpinBoxmousePressEvent(self[], event)
method mouseReleaseEvent*(self: VirtualQDoubleSpinBox, event: gen_qevent_types.QMouseEvent): void {.base.} =
  QDoubleSpinBoxmouseReleaseEvent(self[], event)
method mouseMoveEvent*(self: VirtualQDoubleSpinBox, event: gen_qevent_types.QMouseEvent): void {.base.} =
  QDoubleSpinBoxmouseMoveEvent(self[], event)
method timerEvent*(self: VirtualQDoubleSpinBox, event: gen_qcoreevent_types.QTimerEvent): void {.base.} =
  QDoubleSpinBoxtimerEvent(self[], event)
method paintEvent*(self: VirtualQDoubleSpinBox, event: gen_qevent_types.QPaintEvent): void {.base.} =
  QDoubleSpinBoxpaintEvent(self[], event)
method showEvent*(self: VirtualQDoubleSpinBox, event: gen_qevent_types.QShowEvent): void {.base.} =
  QDoubleSpinBoxshowEvent(self[], event)
method stepEnabled*(self: VirtualQDoubleSpinBox): cint {.base.} =
  QDoubleSpinBoxstepEnabled(self[])
method devType*(self: VirtualQDoubleSpinBox): cint {.base.} =
  QDoubleSpinBoxdevType(self[])
method setVisible*(self: VirtualQDoubleSpinBox, visible: bool): void {.base.} =
  QDoubleSpinBoxsetVisible(self[], visible)
method heightForWidth*(self: VirtualQDoubleSpinBox, param1: cint): cint {.base.} =
  QDoubleSpinBoxheightForWidth(self[], param1)
method hasHeightForWidth*(self: VirtualQDoubleSpinBox): bool {.base.} =
  QDoubleSpinBoxhasHeightForWidth(self[])
method paintEngine*(self: VirtualQDoubleSpinBox): gen_qpaintengine_types.QPaintEngine {.base.} =
  QDoubleSpinBoxpaintEngine(self[])
method mouseDoubleClickEvent*(self: VirtualQDoubleSpinBox, event: gen_qevent_types.QMouseEvent): void {.base.} =
  QDoubleSpinBoxmouseDoubleClickEvent(self[], event)
method enterEvent*(self: VirtualQDoubleSpinBox, event: gen_qcoreevent_types.QEvent): void {.base.} =
  QDoubleSpinBoxenterEvent(self[], event)
method leaveEvent*(self: VirtualQDoubleSpinBox, event: gen_qcoreevent_types.QEvent): void {.base.} =
  QDoubleSpinBoxleaveEvent(self[], event)
method moveEvent*(self: VirtualQDoubleSpinBox, event: gen_qevent_types.QMoveEvent): void {.base.} =
  QDoubleSpinBoxmoveEvent(self[], event)
method tabletEvent*(self: VirtualQDoubleSpinBox, event: gen_qevent_types.QTabletEvent): void {.base.} =
  QDoubleSpinBoxtabletEvent(self[], event)
method actionEvent*(self: VirtualQDoubleSpinBox, event: gen_qevent_types.QActionEvent): void {.base.} =
  QDoubleSpinBoxactionEvent(self[], event)
method dragEnterEvent*(self: VirtualQDoubleSpinBox, event: gen_qevent_types.QDragEnterEvent): void {.base.} =
  QDoubleSpinBoxdragEnterEvent(self[], event)
method dragMoveEvent*(self: VirtualQDoubleSpinBox, event: gen_qevent_types.QDragMoveEvent): void {.base.} =
  QDoubleSpinBoxdragMoveEvent(self[], event)
method dragLeaveEvent*(self: VirtualQDoubleSpinBox, event: gen_qevent_types.QDragLeaveEvent): void {.base.} =
  QDoubleSpinBoxdragLeaveEvent(self[], event)
method dropEvent*(self: VirtualQDoubleSpinBox, event: gen_qevent_types.QDropEvent): void {.base.} =
  QDoubleSpinBoxdropEvent(self[], event)
method nativeEvent*(self: VirtualQDoubleSpinBox, eventType: openArray[byte], message: pointer, resultVal: ptr clong): bool {.base.} =
  QDoubleSpinBoxnativeEvent(self[], eventType, message, resultVal)
method metric*(self: VirtualQDoubleSpinBox, param1: cint): cint {.base.} =
  QDoubleSpinBoxmetric(self[], param1)
method initPainter*(self: VirtualQDoubleSpinBox, painter: gen_qpainter_types.QPainter): void {.base.} =
  QDoubleSpinBoxinitPainter(self[], painter)
method redirected*(self: VirtualQDoubleSpinBox, offset: gen_qpoint_types.QPoint): gen_qpaintdevice_types.QPaintDevice {.base.} =
  QDoubleSpinBoxredirected(self[], offset)
method sharedPainter*(self: VirtualQDoubleSpinBox): gen_qpainter_types.QPainter {.base.} =
  QDoubleSpinBoxsharedPainter(self[])
method inputMethodEvent*(self: VirtualQDoubleSpinBox, param1: gen_qevent_types.QInputMethodEvent): void {.base.} =
  QDoubleSpinBoxinputMethodEvent(self[], param1)
method focusNextPrevChild*(self: VirtualQDoubleSpinBox, next: bool): bool {.base.} =
  QDoubleSpinBoxfocusNextPrevChild(self[], next)
method eventFilter*(self: VirtualQDoubleSpinBox, watched: gen_qobject_types.QObject, event: gen_qcoreevent_types.QEvent): bool {.base.} =
  QDoubleSpinBoxeventFilter(self[], watched, event)
method childEvent*(self: VirtualQDoubleSpinBox, event: gen_qcoreevent_types.QChildEvent): void {.base.} =
  QDoubleSpinBoxchildEvent(self[], event)
method customEvent*(self: VirtualQDoubleSpinBox, event: gen_qcoreevent_types.QEvent): void {.base.} =
  QDoubleSpinBoxcustomEvent(self[], event)
method connectNotify*(self: VirtualQDoubleSpinBox, signal: gen_qmetaobject_types.QMetaMethod): void {.base.} =
  QDoubleSpinBoxconnectNotify(self[], signal)
method disconnectNotify*(self: VirtualQDoubleSpinBox, signal: gen_qmetaobject_types.QMetaMethod): void {.base.} =
  QDoubleSpinBoxdisconnectNotify(self[], signal)

proc fcQDoubleSpinBox_method_callback_metaObject(self: pointer): pointer {.cdecl.} =
  let inst = cast[VirtualQDoubleSpinBox](fcQDoubleSpinBox_vdata(self))
  var virtualReturn = inst.metaObject()
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc fcQDoubleSpinBox_method_callback_metacast(self: pointer, param1: cstring): pointer {.cdecl.} =
  let inst = cast[VirtualQDoubleSpinBox](fcQDoubleSpinBox_vdata(self))
  let slotval1 = (param1)
  var virtualReturn = inst.metacast(slotval1)
  virtualReturn

proc fcQDoubleSpinBox_method_callback_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.cdecl.} =
  let inst = cast[VirtualQDoubleSpinBox](fcQDoubleSpinBox_vdata(self))
  let slotval1 = cint(param1)
  let slotval2 = param2
  let slotval3 = param3
  var virtualReturn = inst.metacall(slotval1, slotval2, slotval3)
  virtualReturn

proc fcQDoubleSpinBox_method_callback_validate(self: pointer, input: struct_miqt_string, pos: ptr cint): cint {.cdecl.} =
  let inst = cast[VirtualQDoubleSpinBox](fcQDoubleSpinBox_vdata(self))
  let vinput_ms = input
  let vinputx_ret = string.fromBytes(vinput_ms)
  c_free(vinput_ms.data)
  let slotval1 = vinputx_ret
  let slotval2 = pos
  var virtualReturn = inst.validate(slotval1, slotval2)
  cint(virtualReturn)

proc fcQDoubleSpinBox_method_callback_valueFromText(self: pointer, text: struct_miqt_string): float64 {.cdecl.} =
  let inst = cast[VirtualQDoubleSpinBox](fcQDoubleSpinBox_vdata(self))
  let vtext_ms = text
  let vtextx_ret = string.fromBytes(vtext_ms)
  c_free(vtext_ms.data)
  let slotval1 = vtextx_ret
  var virtualReturn = inst.valueFromText(slotval1)
  virtualReturn

proc fcQDoubleSpinBox_method_callback_textFromValue(self: pointer, val: float64): struct_miqt_string {.cdecl.} =
  let inst = cast[VirtualQDoubleSpinBox](fcQDoubleSpinBox_vdata(self))
  let slotval1 = val
  var virtualReturn = inst.textFromValue(slotval1)
  var virtualReturn_copy = cast[cstring](if len(virtualReturn) > 0: c_malloc(csize_t(len(virtualReturn))) else: nil)
  if len(virtualReturn) > 0: copyMem(cast[pointer](virtualReturn_copy), addr virtualReturn[0], csize_t(len(virtualReturn)))
  struct_miqt_string(data: virtualReturn_copy, len: csize_t(len(virtualReturn)))

proc fcQDoubleSpinBox_method_callback_fixup(self: pointer, str: struct_miqt_string): void {.cdecl.} =
  let inst = cast[VirtualQDoubleSpinBox](fcQDoubleSpinBox_vdata(self))
  let vstr_ms = str
  let vstrx_ret = string.fromBytes(vstr_ms)
  c_free(vstr_ms.data)
  let slotval1 = vstrx_ret
  inst.fixup(slotval1)

proc fcQDoubleSpinBox_method_callback_sizeHint(self: pointer): pointer {.cdecl.} =
  let inst = cast[VirtualQDoubleSpinBox](fcQDoubleSpinBox_vdata(self))
  var virtualReturn = inst.sizeHint()
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc fcQDoubleSpinBox_method_callback_minimumSizeHint(self: pointer): pointer {.cdecl.} =
  let inst = cast[VirtualQDoubleSpinBox](fcQDoubleSpinBox_vdata(self))
  var virtualReturn = inst.minimumSizeHint()
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc fcQDoubleSpinBox_method_callback_event(self: pointer, event: pointer): bool {.cdecl.} =
  let inst = cast[VirtualQDoubleSpinBox](fcQDoubleSpinBox_vdata(self))
  let slotval1 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  var virtualReturn = inst.event(slotval1)
  virtualReturn

proc fcQDoubleSpinBox_method_callback_inputMethodQuery(self: pointer, param1: cint): pointer {.cdecl.} =
  let inst = cast[VirtualQDoubleSpinBox](fcQDoubleSpinBox_vdata(self))
  let slotval1 = cint(param1)
  var virtualReturn = inst.inputMethodQuery(slotval1)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc fcQDoubleSpinBox_method_callback_stepBy(self: pointer, steps: cint): void {.cdecl.} =
  let inst = cast[VirtualQDoubleSpinBox](fcQDoubleSpinBox_vdata(self))
  let slotval1 = steps
  inst.stepBy(slotval1)

proc fcQDoubleSpinBox_method_callback_clear(self: pointer): void {.cdecl.} =
  let inst = cast[VirtualQDoubleSpinBox](fcQDoubleSpinBox_vdata(self))
  inst.clear()

proc fcQDoubleSpinBox_method_callback_resizeEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQDoubleSpinBox](fcQDoubleSpinBox_vdata(self))
  let slotval1 = gen_qevent_types.QResizeEvent(h: event, owned: false)
  inst.resizeEvent(slotval1)

proc fcQDoubleSpinBox_method_callback_keyPressEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQDoubleSpinBox](fcQDoubleSpinBox_vdata(self))
  let slotval1 = gen_qevent_types.QKeyEvent(h: event, owned: false)
  inst.keyPressEvent(slotval1)

proc fcQDoubleSpinBox_method_callback_keyReleaseEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQDoubleSpinBox](fcQDoubleSpinBox_vdata(self))
  let slotval1 = gen_qevent_types.QKeyEvent(h: event, owned: false)
  inst.keyReleaseEvent(slotval1)

proc fcQDoubleSpinBox_method_callback_wheelEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQDoubleSpinBox](fcQDoubleSpinBox_vdata(self))
  let slotval1 = gen_qevent_types.QWheelEvent(h: event, owned: false)
  inst.wheelEvent(slotval1)

proc fcQDoubleSpinBox_method_callback_focusInEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQDoubleSpinBox](fcQDoubleSpinBox_vdata(self))
  let slotval1 = gen_qevent_types.QFocusEvent(h: event, owned: false)
  inst.focusInEvent(slotval1)

proc fcQDoubleSpinBox_method_callback_focusOutEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQDoubleSpinBox](fcQDoubleSpinBox_vdata(self))
  let slotval1 = gen_qevent_types.QFocusEvent(h: event, owned: false)
  inst.focusOutEvent(slotval1)

proc fcQDoubleSpinBox_method_callback_contextMenuEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQDoubleSpinBox](fcQDoubleSpinBox_vdata(self))
  let slotval1 = gen_qevent_types.QContextMenuEvent(h: event, owned: false)
  inst.contextMenuEvent(slotval1)

proc fcQDoubleSpinBox_method_callback_changeEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQDoubleSpinBox](fcQDoubleSpinBox_vdata(self))
  let slotval1 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  inst.changeEvent(slotval1)

proc fcQDoubleSpinBox_method_callback_closeEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQDoubleSpinBox](fcQDoubleSpinBox_vdata(self))
  let slotval1 = gen_qevent_types.QCloseEvent(h: event, owned: false)
  inst.closeEvent(slotval1)

proc fcQDoubleSpinBox_method_callback_hideEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQDoubleSpinBox](fcQDoubleSpinBox_vdata(self))
  let slotval1 = gen_qevent_types.QHideEvent(h: event, owned: false)
  inst.hideEvent(slotval1)

proc fcQDoubleSpinBox_method_callback_mousePressEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQDoubleSpinBox](fcQDoubleSpinBox_vdata(self))
  let slotval1 = gen_qevent_types.QMouseEvent(h: event, owned: false)
  inst.mousePressEvent(slotval1)

proc fcQDoubleSpinBox_method_callback_mouseReleaseEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQDoubleSpinBox](fcQDoubleSpinBox_vdata(self))
  let slotval1 = gen_qevent_types.QMouseEvent(h: event, owned: false)
  inst.mouseReleaseEvent(slotval1)

proc fcQDoubleSpinBox_method_callback_mouseMoveEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQDoubleSpinBox](fcQDoubleSpinBox_vdata(self))
  let slotval1 = gen_qevent_types.QMouseEvent(h: event, owned: false)
  inst.mouseMoveEvent(slotval1)

proc fcQDoubleSpinBox_method_callback_timerEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQDoubleSpinBox](fcQDoubleSpinBox_vdata(self))
  let slotval1 = gen_qcoreevent_types.QTimerEvent(h: event, owned: false)
  inst.timerEvent(slotval1)

proc fcQDoubleSpinBox_method_callback_paintEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQDoubleSpinBox](fcQDoubleSpinBox_vdata(self))
  let slotval1 = gen_qevent_types.QPaintEvent(h: event, owned: false)
  inst.paintEvent(slotval1)

proc fcQDoubleSpinBox_method_callback_showEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQDoubleSpinBox](fcQDoubleSpinBox_vdata(self))
  let slotval1 = gen_qevent_types.QShowEvent(h: event, owned: false)
  inst.showEvent(slotval1)

proc fcQDoubleSpinBox_method_callback_stepEnabled(self: pointer): cint {.cdecl.} =
  let inst = cast[VirtualQDoubleSpinBox](fcQDoubleSpinBox_vdata(self))
  var virtualReturn = inst.stepEnabled()
  cint(virtualReturn)

proc fcQDoubleSpinBox_method_callback_devType(self: pointer): cint {.cdecl.} =
  let inst = cast[VirtualQDoubleSpinBox](fcQDoubleSpinBox_vdata(self))
  var virtualReturn = inst.devType()
  virtualReturn

proc fcQDoubleSpinBox_method_callback_setVisible(self: pointer, visible: bool): void {.cdecl.} =
  let inst = cast[VirtualQDoubleSpinBox](fcQDoubleSpinBox_vdata(self))
  let slotval1 = visible
  inst.setVisible(slotval1)

proc fcQDoubleSpinBox_method_callback_heightForWidth(self: pointer, param1: cint): cint {.cdecl.} =
  let inst = cast[VirtualQDoubleSpinBox](fcQDoubleSpinBox_vdata(self))
  let slotval1 = param1
  var virtualReturn = inst.heightForWidth(slotval1)
  virtualReturn

proc fcQDoubleSpinBox_method_callback_hasHeightForWidth(self: pointer): bool {.cdecl.} =
  let inst = cast[VirtualQDoubleSpinBox](fcQDoubleSpinBox_vdata(self))
  var virtualReturn = inst.hasHeightForWidth()
  virtualReturn

proc fcQDoubleSpinBox_method_callback_paintEngine(self: pointer): pointer {.cdecl.} =
  let inst = cast[VirtualQDoubleSpinBox](fcQDoubleSpinBox_vdata(self))
  var virtualReturn = inst.paintEngine()
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc fcQDoubleSpinBox_method_callback_mouseDoubleClickEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQDoubleSpinBox](fcQDoubleSpinBox_vdata(self))
  let slotval1 = gen_qevent_types.QMouseEvent(h: event, owned: false)
  inst.mouseDoubleClickEvent(slotval1)

proc fcQDoubleSpinBox_method_callback_enterEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQDoubleSpinBox](fcQDoubleSpinBox_vdata(self))
  let slotval1 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  inst.enterEvent(slotval1)

proc fcQDoubleSpinBox_method_callback_leaveEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQDoubleSpinBox](fcQDoubleSpinBox_vdata(self))
  let slotval1 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  inst.leaveEvent(slotval1)

proc fcQDoubleSpinBox_method_callback_moveEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQDoubleSpinBox](fcQDoubleSpinBox_vdata(self))
  let slotval1 = gen_qevent_types.QMoveEvent(h: event, owned: false)
  inst.moveEvent(slotval1)

proc fcQDoubleSpinBox_method_callback_tabletEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQDoubleSpinBox](fcQDoubleSpinBox_vdata(self))
  let slotval1 = gen_qevent_types.QTabletEvent(h: event, owned: false)
  inst.tabletEvent(slotval1)

proc fcQDoubleSpinBox_method_callback_actionEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQDoubleSpinBox](fcQDoubleSpinBox_vdata(self))
  let slotval1 = gen_qevent_types.QActionEvent(h: event, owned: false)
  inst.actionEvent(slotval1)

proc fcQDoubleSpinBox_method_callback_dragEnterEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQDoubleSpinBox](fcQDoubleSpinBox_vdata(self))
  let slotval1 = gen_qevent_types.QDragEnterEvent(h: event, owned: false)
  inst.dragEnterEvent(slotval1)

proc fcQDoubleSpinBox_method_callback_dragMoveEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQDoubleSpinBox](fcQDoubleSpinBox_vdata(self))
  let slotval1 = gen_qevent_types.QDragMoveEvent(h: event, owned: false)
  inst.dragMoveEvent(slotval1)

proc fcQDoubleSpinBox_method_callback_dragLeaveEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQDoubleSpinBox](fcQDoubleSpinBox_vdata(self))
  let slotval1 = gen_qevent_types.QDragLeaveEvent(h: event, owned: false)
  inst.dragLeaveEvent(slotval1)

proc fcQDoubleSpinBox_method_callback_dropEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQDoubleSpinBox](fcQDoubleSpinBox_vdata(self))
  let slotval1 = gen_qevent_types.QDropEvent(h: event, owned: false)
  inst.dropEvent(slotval1)

proc fcQDoubleSpinBox_method_callback_nativeEvent(self: pointer, eventType: struct_miqt_string, message: pointer, resultVal: ptr clong): bool {.cdecl.} =
  let inst = cast[VirtualQDoubleSpinBox](fcQDoubleSpinBox_vdata(self))
  var veventType_bytearray = eventType
  var veventTypex_ret = @(toOpenArray(cast[ptr UncheckedArray[byte]](veventType_bytearray.data), 0, int(veventType_bytearray.len)-1))
  c_free(veventType_bytearray.data)
  let slotval1 = veventTypex_ret
  let slotval2 = message
  let slotval3 = resultVal
  var virtualReturn = inst.nativeEvent(slotval1, slotval2, slotval3)
  virtualReturn

proc fcQDoubleSpinBox_method_callback_metric(self: pointer, param1: cint): cint {.cdecl.} =
  let inst = cast[VirtualQDoubleSpinBox](fcQDoubleSpinBox_vdata(self))
  let slotval1 = cint(param1)
  var virtualReturn = inst.metric(slotval1)
  virtualReturn

proc fcQDoubleSpinBox_method_callback_initPainter(self: pointer, painter: pointer): void {.cdecl.} =
  let inst = cast[VirtualQDoubleSpinBox](fcQDoubleSpinBox_vdata(self))
  let slotval1 = gen_qpainter_types.QPainter(h: painter, owned: false)
  inst.initPainter(slotval1)

proc fcQDoubleSpinBox_method_callback_redirected(self: pointer, offset: pointer): pointer {.cdecl.} =
  let inst = cast[VirtualQDoubleSpinBox](fcQDoubleSpinBox_vdata(self))
  let slotval1 = gen_qpoint_types.QPoint(h: offset, owned: false)
  var virtualReturn = inst.redirected(slotval1)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc fcQDoubleSpinBox_method_callback_sharedPainter(self: pointer): pointer {.cdecl.} =
  let inst = cast[VirtualQDoubleSpinBox](fcQDoubleSpinBox_vdata(self))
  var virtualReturn = inst.sharedPainter()
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc fcQDoubleSpinBox_method_callback_inputMethodEvent(self: pointer, param1: pointer): void {.cdecl.} =
  let inst = cast[VirtualQDoubleSpinBox](fcQDoubleSpinBox_vdata(self))
  let slotval1 = gen_qevent_types.QInputMethodEvent(h: param1, owned: false)
  inst.inputMethodEvent(slotval1)

proc fcQDoubleSpinBox_method_callback_focusNextPrevChild(self: pointer, next: bool): bool {.cdecl.} =
  let inst = cast[VirtualQDoubleSpinBox](fcQDoubleSpinBox_vdata(self))
  let slotval1 = next
  var virtualReturn = inst.focusNextPrevChild(slotval1)
  virtualReturn

proc fcQDoubleSpinBox_method_callback_eventFilter(self: pointer, watched: pointer, event: pointer): bool {.cdecl.} =
  let inst = cast[VirtualQDoubleSpinBox](fcQDoubleSpinBox_vdata(self))
  let slotval1 = gen_qobject_types.QObject(h: watched, owned: false)
  let slotval2 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  var virtualReturn = inst.eventFilter(slotval1, slotval2)
  virtualReturn

proc fcQDoubleSpinBox_method_callback_childEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQDoubleSpinBox](fcQDoubleSpinBox_vdata(self))
  let slotval1 = gen_qcoreevent_types.QChildEvent(h: event, owned: false)
  inst.childEvent(slotval1)

proc fcQDoubleSpinBox_method_callback_customEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQDoubleSpinBox](fcQDoubleSpinBox_vdata(self))
  let slotval1 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  inst.customEvent(slotval1)

proc fcQDoubleSpinBox_method_callback_connectNotify(self: pointer, signal: pointer): void {.cdecl.} =
  let inst = cast[VirtualQDoubleSpinBox](fcQDoubleSpinBox_vdata(self))
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal, owned: false)
  inst.connectNotify(slotval1)

proc fcQDoubleSpinBox_method_callback_disconnectNotify(self: pointer, signal: pointer): void {.cdecl.} =
  let inst = cast[VirtualQDoubleSpinBox](fcQDoubleSpinBox_vdata(self))
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal, owned: false)
  inst.disconnectNotify(slotval1)


proc initStyleOption*(self: gen_qspinbox_types.QDoubleSpinBox, option: gen_qstyleoption_types.QStyleOptionSpinBox): void =
  fcQDoubleSpinBox_protectedbase_initStyleOption(self.h, option.h)

proc lineEdit*(self: gen_qspinbox_types.QDoubleSpinBox): gen_qlineedit_types.QLineEdit =
  gen_qlineedit_types.QLineEdit(h: fcQDoubleSpinBox_protectedbase_lineEdit(self.h), owned: false)

proc setLineEdit*(self: gen_qspinbox_types.QDoubleSpinBox, edit: gen_qlineedit_types.QLineEdit): void =
  fcQDoubleSpinBox_protectedbase_setLineEdit(self.h, edit.h)

proc updateMicroFocus*(self: gen_qspinbox_types.QDoubleSpinBox): void =
  fcQDoubleSpinBox_protectedbase_updateMicroFocus(self.h)

proc createX*(self: gen_qspinbox_types.QDoubleSpinBox): void =
  fcQDoubleSpinBox_protectedbase_create(self.h)

proc destroy*(self: gen_qspinbox_types.QDoubleSpinBox): void =
  fcQDoubleSpinBox_protectedbase_destroy(self.h)

proc focusNextChild*(self: gen_qspinbox_types.QDoubleSpinBox): bool =
  fcQDoubleSpinBox_protectedbase_focusNextChild(self.h)

proc focusPreviousChild*(self: gen_qspinbox_types.QDoubleSpinBox): bool =
  fcQDoubleSpinBox_protectedbase_focusPreviousChild(self.h)

proc sender*(self: gen_qspinbox_types.QDoubleSpinBox): gen_qobject_types.QObject =
  gen_qobject_types.QObject(h: fcQDoubleSpinBox_protectedbase_sender(self.h), owned: false)

proc senderSignalIndex*(self: gen_qspinbox_types.QDoubleSpinBox): cint =
  fcQDoubleSpinBox_protectedbase_senderSignalIndex(self.h)

proc receivers*(self: gen_qspinbox_types.QDoubleSpinBox, signal: cstring): cint =
  fcQDoubleSpinBox_protectedbase_receivers(self.h, signal)

proc isSignalConnected*(self: gen_qspinbox_types.QDoubleSpinBox, signal: gen_qmetaobject_types.QMetaMethod): bool =
  fcQDoubleSpinBox_protectedbase_isSignalConnected(self.h, signal.h)

proc create*(T: type gen_qspinbox_types.QDoubleSpinBox,
    parent: gen_qwidget_types.QWidget,
    vtbl: ref QDoubleSpinBoxVTable = nil): gen_qspinbox_types.QDoubleSpinBox =
  let vtbl = if vtbl == nil: new QDoubleSpinBoxVTable else: vtbl
  GC_ref(vtbl)
  vtbl[].vtbl.destructor = proc(self: pointer) {.cdecl.} =
    let vtbl = cast[ref QDoubleSpinBoxVTable](fcQDoubleSpinBox_vdata(self))
    GC_unref(vtbl)
  if not isNil(vtbl[].metaObject):
    vtbl[].vtbl.metaObject = fcQDoubleSpinBox_vtable_callback_metaObject
  if not isNil(vtbl[].metacast):
    vtbl[].vtbl.metacast = fcQDoubleSpinBox_vtable_callback_metacast
  if not isNil(vtbl[].metacall):
    vtbl[].vtbl.metacall = fcQDoubleSpinBox_vtable_callback_metacall
  if not isNil(vtbl[].validate):
    vtbl[].vtbl.validate = fcQDoubleSpinBox_vtable_callback_validate
  if not isNil(vtbl[].valueFromText):
    vtbl[].vtbl.valueFromText = fcQDoubleSpinBox_vtable_callback_valueFromText
  if not isNil(vtbl[].textFromValue):
    vtbl[].vtbl.textFromValue = fcQDoubleSpinBox_vtable_callback_textFromValue
  if not isNil(vtbl[].fixup):
    vtbl[].vtbl.fixup = fcQDoubleSpinBox_vtable_callback_fixup
  if not isNil(vtbl[].sizeHint):
    vtbl[].vtbl.sizeHint = fcQDoubleSpinBox_vtable_callback_sizeHint
  if not isNil(vtbl[].minimumSizeHint):
    vtbl[].vtbl.minimumSizeHint = fcQDoubleSpinBox_vtable_callback_minimumSizeHint
  if not isNil(vtbl[].event):
    vtbl[].vtbl.event = fcQDoubleSpinBox_vtable_callback_event
  if not isNil(vtbl[].inputMethodQuery):
    vtbl[].vtbl.inputMethodQuery = fcQDoubleSpinBox_vtable_callback_inputMethodQuery
  if not isNil(vtbl[].stepBy):
    vtbl[].vtbl.stepBy = fcQDoubleSpinBox_vtable_callback_stepBy
  if not isNil(vtbl[].clear):
    vtbl[].vtbl.clear = fcQDoubleSpinBox_vtable_callback_clear
  if not isNil(vtbl[].resizeEvent):
    vtbl[].vtbl.resizeEvent = fcQDoubleSpinBox_vtable_callback_resizeEvent
  if not isNil(vtbl[].keyPressEvent):
    vtbl[].vtbl.keyPressEvent = fcQDoubleSpinBox_vtable_callback_keyPressEvent
  if not isNil(vtbl[].keyReleaseEvent):
    vtbl[].vtbl.keyReleaseEvent = fcQDoubleSpinBox_vtable_callback_keyReleaseEvent
  if not isNil(vtbl[].wheelEvent):
    vtbl[].vtbl.wheelEvent = fcQDoubleSpinBox_vtable_callback_wheelEvent
  if not isNil(vtbl[].focusInEvent):
    vtbl[].vtbl.focusInEvent = fcQDoubleSpinBox_vtable_callback_focusInEvent
  if not isNil(vtbl[].focusOutEvent):
    vtbl[].vtbl.focusOutEvent = fcQDoubleSpinBox_vtable_callback_focusOutEvent
  if not isNil(vtbl[].contextMenuEvent):
    vtbl[].vtbl.contextMenuEvent = fcQDoubleSpinBox_vtable_callback_contextMenuEvent
  if not isNil(vtbl[].changeEvent):
    vtbl[].vtbl.changeEvent = fcQDoubleSpinBox_vtable_callback_changeEvent
  if not isNil(vtbl[].closeEvent):
    vtbl[].vtbl.closeEvent = fcQDoubleSpinBox_vtable_callback_closeEvent
  if not isNil(vtbl[].hideEvent):
    vtbl[].vtbl.hideEvent = fcQDoubleSpinBox_vtable_callback_hideEvent
  if not isNil(vtbl[].mousePressEvent):
    vtbl[].vtbl.mousePressEvent = fcQDoubleSpinBox_vtable_callback_mousePressEvent
  if not isNil(vtbl[].mouseReleaseEvent):
    vtbl[].vtbl.mouseReleaseEvent = fcQDoubleSpinBox_vtable_callback_mouseReleaseEvent
  if not isNil(vtbl[].mouseMoveEvent):
    vtbl[].vtbl.mouseMoveEvent = fcQDoubleSpinBox_vtable_callback_mouseMoveEvent
  if not isNil(vtbl[].timerEvent):
    vtbl[].vtbl.timerEvent = fcQDoubleSpinBox_vtable_callback_timerEvent
  if not isNil(vtbl[].paintEvent):
    vtbl[].vtbl.paintEvent = fcQDoubleSpinBox_vtable_callback_paintEvent
  if not isNil(vtbl[].showEvent):
    vtbl[].vtbl.showEvent = fcQDoubleSpinBox_vtable_callback_showEvent
  if not isNil(vtbl[].stepEnabled):
    vtbl[].vtbl.stepEnabled = fcQDoubleSpinBox_vtable_callback_stepEnabled
  if not isNil(vtbl[].devType):
    vtbl[].vtbl.devType = fcQDoubleSpinBox_vtable_callback_devType
  if not isNil(vtbl[].setVisible):
    vtbl[].vtbl.setVisible = fcQDoubleSpinBox_vtable_callback_setVisible
  if not isNil(vtbl[].heightForWidth):
    vtbl[].vtbl.heightForWidth = fcQDoubleSpinBox_vtable_callback_heightForWidth
  if not isNil(vtbl[].hasHeightForWidth):
    vtbl[].vtbl.hasHeightForWidth = fcQDoubleSpinBox_vtable_callback_hasHeightForWidth
  if not isNil(vtbl[].paintEngine):
    vtbl[].vtbl.paintEngine = fcQDoubleSpinBox_vtable_callback_paintEngine
  if not isNil(vtbl[].mouseDoubleClickEvent):
    vtbl[].vtbl.mouseDoubleClickEvent = fcQDoubleSpinBox_vtable_callback_mouseDoubleClickEvent
  if not isNil(vtbl[].enterEvent):
    vtbl[].vtbl.enterEvent = fcQDoubleSpinBox_vtable_callback_enterEvent
  if not isNil(vtbl[].leaveEvent):
    vtbl[].vtbl.leaveEvent = fcQDoubleSpinBox_vtable_callback_leaveEvent
  if not isNil(vtbl[].moveEvent):
    vtbl[].vtbl.moveEvent = fcQDoubleSpinBox_vtable_callback_moveEvent
  if not isNil(vtbl[].tabletEvent):
    vtbl[].vtbl.tabletEvent = fcQDoubleSpinBox_vtable_callback_tabletEvent
  if not isNil(vtbl[].actionEvent):
    vtbl[].vtbl.actionEvent = fcQDoubleSpinBox_vtable_callback_actionEvent
  if not isNil(vtbl[].dragEnterEvent):
    vtbl[].vtbl.dragEnterEvent = fcQDoubleSpinBox_vtable_callback_dragEnterEvent
  if not isNil(vtbl[].dragMoveEvent):
    vtbl[].vtbl.dragMoveEvent = fcQDoubleSpinBox_vtable_callback_dragMoveEvent
  if not isNil(vtbl[].dragLeaveEvent):
    vtbl[].vtbl.dragLeaveEvent = fcQDoubleSpinBox_vtable_callback_dragLeaveEvent
  if not isNil(vtbl[].dropEvent):
    vtbl[].vtbl.dropEvent = fcQDoubleSpinBox_vtable_callback_dropEvent
  if not isNil(vtbl[].nativeEvent):
    vtbl[].vtbl.nativeEvent = fcQDoubleSpinBox_vtable_callback_nativeEvent
  if not isNil(vtbl[].metric):
    vtbl[].vtbl.metric = fcQDoubleSpinBox_vtable_callback_metric
  if not isNil(vtbl[].initPainter):
    vtbl[].vtbl.initPainter = fcQDoubleSpinBox_vtable_callback_initPainter
  if not isNil(vtbl[].redirected):
    vtbl[].vtbl.redirected = fcQDoubleSpinBox_vtable_callback_redirected
  if not isNil(vtbl[].sharedPainter):
    vtbl[].vtbl.sharedPainter = fcQDoubleSpinBox_vtable_callback_sharedPainter
  if not isNil(vtbl[].inputMethodEvent):
    vtbl[].vtbl.inputMethodEvent = fcQDoubleSpinBox_vtable_callback_inputMethodEvent
  if not isNil(vtbl[].focusNextPrevChild):
    vtbl[].vtbl.focusNextPrevChild = fcQDoubleSpinBox_vtable_callback_focusNextPrevChild
  if not isNil(vtbl[].eventFilter):
    vtbl[].vtbl.eventFilter = fcQDoubleSpinBox_vtable_callback_eventFilter
  if not isNil(vtbl[].childEvent):
    vtbl[].vtbl.childEvent = fcQDoubleSpinBox_vtable_callback_childEvent
  if not isNil(vtbl[].customEvent):
    vtbl[].vtbl.customEvent = fcQDoubleSpinBox_vtable_callback_customEvent
  if not isNil(vtbl[].connectNotify):
    vtbl[].vtbl.connectNotify = fcQDoubleSpinBox_vtable_callback_connectNotify
  if not isNil(vtbl[].disconnectNotify):
    vtbl[].vtbl.disconnectNotify = fcQDoubleSpinBox_vtable_callback_disconnectNotify
  gen_qspinbox_types.QDoubleSpinBox(h: fcQDoubleSpinBox_new(addr(vtbl[].vtbl), addr(vtbl[]), parent.h), owned: true)

proc create*(T: type gen_qspinbox_types.QDoubleSpinBox,
    vtbl: ref QDoubleSpinBoxVTable = nil): gen_qspinbox_types.QDoubleSpinBox =
  let vtbl = if vtbl == nil: new QDoubleSpinBoxVTable else: vtbl
  GC_ref(vtbl)
  vtbl[].vtbl.destructor = proc(self: pointer) {.cdecl.} =
    let vtbl = cast[ref QDoubleSpinBoxVTable](fcQDoubleSpinBox_vdata(self))
    GC_unref(vtbl)
  if not isNil(vtbl[].metaObject):
    vtbl[].vtbl.metaObject = fcQDoubleSpinBox_vtable_callback_metaObject
  if not isNil(vtbl[].metacast):
    vtbl[].vtbl.metacast = fcQDoubleSpinBox_vtable_callback_metacast
  if not isNil(vtbl[].metacall):
    vtbl[].vtbl.metacall = fcQDoubleSpinBox_vtable_callback_metacall
  if not isNil(vtbl[].validate):
    vtbl[].vtbl.validate = fcQDoubleSpinBox_vtable_callback_validate
  if not isNil(vtbl[].valueFromText):
    vtbl[].vtbl.valueFromText = fcQDoubleSpinBox_vtable_callback_valueFromText
  if not isNil(vtbl[].textFromValue):
    vtbl[].vtbl.textFromValue = fcQDoubleSpinBox_vtable_callback_textFromValue
  if not isNil(vtbl[].fixup):
    vtbl[].vtbl.fixup = fcQDoubleSpinBox_vtable_callback_fixup
  if not isNil(vtbl[].sizeHint):
    vtbl[].vtbl.sizeHint = fcQDoubleSpinBox_vtable_callback_sizeHint
  if not isNil(vtbl[].minimumSizeHint):
    vtbl[].vtbl.minimumSizeHint = fcQDoubleSpinBox_vtable_callback_minimumSizeHint
  if not isNil(vtbl[].event):
    vtbl[].vtbl.event = fcQDoubleSpinBox_vtable_callback_event
  if not isNil(vtbl[].inputMethodQuery):
    vtbl[].vtbl.inputMethodQuery = fcQDoubleSpinBox_vtable_callback_inputMethodQuery
  if not isNil(vtbl[].stepBy):
    vtbl[].vtbl.stepBy = fcQDoubleSpinBox_vtable_callback_stepBy
  if not isNil(vtbl[].clear):
    vtbl[].vtbl.clear = fcQDoubleSpinBox_vtable_callback_clear
  if not isNil(vtbl[].resizeEvent):
    vtbl[].vtbl.resizeEvent = fcQDoubleSpinBox_vtable_callback_resizeEvent
  if not isNil(vtbl[].keyPressEvent):
    vtbl[].vtbl.keyPressEvent = fcQDoubleSpinBox_vtable_callback_keyPressEvent
  if not isNil(vtbl[].keyReleaseEvent):
    vtbl[].vtbl.keyReleaseEvent = fcQDoubleSpinBox_vtable_callback_keyReleaseEvent
  if not isNil(vtbl[].wheelEvent):
    vtbl[].vtbl.wheelEvent = fcQDoubleSpinBox_vtable_callback_wheelEvent
  if not isNil(vtbl[].focusInEvent):
    vtbl[].vtbl.focusInEvent = fcQDoubleSpinBox_vtable_callback_focusInEvent
  if not isNil(vtbl[].focusOutEvent):
    vtbl[].vtbl.focusOutEvent = fcQDoubleSpinBox_vtable_callback_focusOutEvent
  if not isNil(vtbl[].contextMenuEvent):
    vtbl[].vtbl.contextMenuEvent = fcQDoubleSpinBox_vtable_callback_contextMenuEvent
  if not isNil(vtbl[].changeEvent):
    vtbl[].vtbl.changeEvent = fcQDoubleSpinBox_vtable_callback_changeEvent
  if not isNil(vtbl[].closeEvent):
    vtbl[].vtbl.closeEvent = fcQDoubleSpinBox_vtable_callback_closeEvent
  if not isNil(vtbl[].hideEvent):
    vtbl[].vtbl.hideEvent = fcQDoubleSpinBox_vtable_callback_hideEvent
  if not isNil(vtbl[].mousePressEvent):
    vtbl[].vtbl.mousePressEvent = fcQDoubleSpinBox_vtable_callback_mousePressEvent
  if not isNil(vtbl[].mouseReleaseEvent):
    vtbl[].vtbl.mouseReleaseEvent = fcQDoubleSpinBox_vtable_callback_mouseReleaseEvent
  if not isNil(vtbl[].mouseMoveEvent):
    vtbl[].vtbl.mouseMoveEvent = fcQDoubleSpinBox_vtable_callback_mouseMoveEvent
  if not isNil(vtbl[].timerEvent):
    vtbl[].vtbl.timerEvent = fcQDoubleSpinBox_vtable_callback_timerEvent
  if not isNil(vtbl[].paintEvent):
    vtbl[].vtbl.paintEvent = fcQDoubleSpinBox_vtable_callback_paintEvent
  if not isNil(vtbl[].showEvent):
    vtbl[].vtbl.showEvent = fcQDoubleSpinBox_vtable_callback_showEvent
  if not isNil(vtbl[].stepEnabled):
    vtbl[].vtbl.stepEnabled = fcQDoubleSpinBox_vtable_callback_stepEnabled
  if not isNil(vtbl[].devType):
    vtbl[].vtbl.devType = fcQDoubleSpinBox_vtable_callback_devType
  if not isNil(vtbl[].setVisible):
    vtbl[].vtbl.setVisible = fcQDoubleSpinBox_vtable_callback_setVisible
  if not isNil(vtbl[].heightForWidth):
    vtbl[].vtbl.heightForWidth = fcQDoubleSpinBox_vtable_callback_heightForWidth
  if not isNil(vtbl[].hasHeightForWidth):
    vtbl[].vtbl.hasHeightForWidth = fcQDoubleSpinBox_vtable_callback_hasHeightForWidth
  if not isNil(vtbl[].paintEngine):
    vtbl[].vtbl.paintEngine = fcQDoubleSpinBox_vtable_callback_paintEngine
  if not isNil(vtbl[].mouseDoubleClickEvent):
    vtbl[].vtbl.mouseDoubleClickEvent = fcQDoubleSpinBox_vtable_callback_mouseDoubleClickEvent
  if not isNil(vtbl[].enterEvent):
    vtbl[].vtbl.enterEvent = fcQDoubleSpinBox_vtable_callback_enterEvent
  if not isNil(vtbl[].leaveEvent):
    vtbl[].vtbl.leaveEvent = fcQDoubleSpinBox_vtable_callback_leaveEvent
  if not isNil(vtbl[].moveEvent):
    vtbl[].vtbl.moveEvent = fcQDoubleSpinBox_vtable_callback_moveEvent
  if not isNil(vtbl[].tabletEvent):
    vtbl[].vtbl.tabletEvent = fcQDoubleSpinBox_vtable_callback_tabletEvent
  if not isNil(vtbl[].actionEvent):
    vtbl[].vtbl.actionEvent = fcQDoubleSpinBox_vtable_callback_actionEvent
  if not isNil(vtbl[].dragEnterEvent):
    vtbl[].vtbl.dragEnterEvent = fcQDoubleSpinBox_vtable_callback_dragEnterEvent
  if not isNil(vtbl[].dragMoveEvent):
    vtbl[].vtbl.dragMoveEvent = fcQDoubleSpinBox_vtable_callback_dragMoveEvent
  if not isNil(vtbl[].dragLeaveEvent):
    vtbl[].vtbl.dragLeaveEvent = fcQDoubleSpinBox_vtable_callback_dragLeaveEvent
  if not isNil(vtbl[].dropEvent):
    vtbl[].vtbl.dropEvent = fcQDoubleSpinBox_vtable_callback_dropEvent
  if not isNil(vtbl[].nativeEvent):
    vtbl[].vtbl.nativeEvent = fcQDoubleSpinBox_vtable_callback_nativeEvent
  if not isNil(vtbl[].metric):
    vtbl[].vtbl.metric = fcQDoubleSpinBox_vtable_callback_metric
  if not isNil(vtbl[].initPainter):
    vtbl[].vtbl.initPainter = fcQDoubleSpinBox_vtable_callback_initPainter
  if not isNil(vtbl[].redirected):
    vtbl[].vtbl.redirected = fcQDoubleSpinBox_vtable_callback_redirected
  if not isNil(vtbl[].sharedPainter):
    vtbl[].vtbl.sharedPainter = fcQDoubleSpinBox_vtable_callback_sharedPainter
  if not isNil(vtbl[].inputMethodEvent):
    vtbl[].vtbl.inputMethodEvent = fcQDoubleSpinBox_vtable_callback_inputMethodEvent
  if not isNil(vtbl[].focusNextPrevChild):
    vtbl[].vtbl.focusNextPrevChild = fcQDoubleSpinBox_vtable_callback_focusNextPrevChild
  if not isNil(vtbl[].eventFilter):
    vtbl[].vtbl.eventFilter = fcQDoubleSpinBox_vtable_callback_eventFilter
  if not isNil(vtbl[].childEvent):
    vtbl[].vtbl.childEvent = fcQDoubleSpinBox_vtable_callback_childEvent
  if not isNil(vtbl[].customEvent):
    vtbl[].vtbl.customEvent = fcQDoubleSpinBox_vtable_callback_customEvent
  if not isNil(vtbl[].connectNotify):
    vtbl[].vtbl.connectNotify = fcQDoubleSpinBox_vtable_callback_connectNotify
  if not isNil(vtbl[].disconnectNotify):
    vtbl[].vtbl.disconnectNotify = fcQDoubleSpinBox_vtable_callback_disconnectNotify
  gen_qspinbox_types.QDoubleSpinBox(h: fcQDoubleSpinBox_new2(addr(vtbl[].vtbl), addr(vtbl[])), owned: true)

const cQDoubleSpinBox_mvtbl = cQDoubleSpinBoxVTable(
  destructor: proc(self: pointer) {.cdecl.} =
    let inst = cast[ptr typeof(VirtualQDoubleSpinBox()[])](self.fcQDoubleSpinBox_vtbl())
    inst[].h = nil
    inst[].owned = false,

  metaObject: fcQDoubleSpinBox_method_callback_metaObject,
  metacast: fcQDoubleSpinBox_method_callback_metacast,
  metacall: fcQDoubleSpinBox_method_callback_metacall,
  validate: fcQDoubleSpinBox_method_callback_validate,
  valueFromText: fcQDoubleSpinBox_method_callback_valueFromText,
  textFromValue: fcQDoubleSpinBox_method_callback_textFromValue,
  fixup: fcQDoubleSpinBox_method_callback_fixup,
  sizeHint: fcQDoubleSpinBox_method_callback_sizeHint,
  minimumSizeHint: fcQDoubleSpinBox_method_callback_minimumSizeHint,
  event: fcQDoubleSpinBox_method_callback_event,
  inputMethodQuery: fcQDoubleSpinBox_method_callback_inputMethodQuery,
  stepBy: fcQDoubleSpinBox_method_callback_stepBy,
  clear: fcQDoubleSpinBox_method_callback_clear,
  resizeEvent: fcQDoubleSpinBox_method_callback_resizeEvent,
  keyPressEvent: fcQDoubleSpinBox_method_callback_keyPressEvent,
  keyReleaseEvent: fcQDoubleSpinBox_method_callback_keyReleaseEvent,
  wheelEvent: fcQDoubleSpinBox_method_callback_wheelEvent,
  focusInEvent: fcQDoubleSpinBox_method_callback_focusInEvent,
  focusOutEvent: fcQDoubleSpinBox_method_callback_focusOutEvent,
  contextMenuEvent: fcQDoubleSpinBox_method_callback_contextMenuEvent,
  changeEvent: fcQDoubleSpinBox_method_callback_changeEvent,
  closeEvent: fcQDoubleSpinBox_method_callback_closeEvent,
  hideEvent: fcQDoubleSpinBox_method_callback_hideEvent,
  mousePressEvent: fcQDoubleSpinBox_method_callback_mousePressEvent,
  mouseReleaseEvent: fcQDoubleSpinBox_method_callback_mouseReleaseEvent,
  mouseMoveEvent: fcQDoubleSpinBox_method_callback_mouseMoveEvent,
  timerEvent: fcQDoubleSpinBox_method_callback_timerEvent,
  paintEvent: fcQDoubleSpinBox_method_callback_paintEvent,
  showEvent: fcQDoubleSpinBox_method_callback_showEvent,
  stepEnabled: fcQDoubleSpinBox_method_callback_stepEnabled,
  devType: fcQDoubleSpinBox_method_callback_devType,
  setVisible: fcQDoubleSpinBox_method_callback_setVisible,
  heightForWidth: fcQDoubleSpinBox_method_callback_heightForWidth,
  hasHeightForWidth: fcQDoubleSpinBox_method_callback_hasHeightForWidth,
  paintEngine: fcQDoubleSpinBox_method_callback_paintEngine,
  mouseDoubleClickEvent: fcQDoubleSpinBox_method_callback_mouseDoubleClickEvent,
  enterEvent: fcQDoubleSpinBox_method_callback_enterEvent,
  leaveEvent: fcQDoubleSpinBox_method_callback_leaveEvent,
  moveEvent: fcQDoubleSpinBox_method_callback_moveEvent,
  tabletEvent: fcQDoubleSpinBox_method_callback_tabletEvent,
  actionEvent: fcQDoubleSpinBox_method_callback_actionEvent,
  dragEnterEvent: fcQDoubleSpinBox_method_callback_dragEnterEvent,
  dragMoveEvent: fcQDoubleSpinBox_method_callback_dragMoveEvent,
  dragLeaveEvent: fcQDoubleSpinBox_method_callback_dragLeaveEvent,
  dropEvent: fcQDoubleSpinBox_method_callback_dropEvent,
  nativeEvent: fcQDoubleSpinBox_method_callback_nativeEvent,
  metric: fcQDoubleSpinBox_method_callback_metric,
  initPainter: fcQDoubleSpinBox_method_callback_initPainter,
  redirected: fcQDoubleSpinBox_method_callback_redirected,
  sharedPainter: fcQDoubleSpinBox_method_callback_sharedPainter,
  inputMethodEvent: fcQDoubleSpinBox_method_callback_inputMethodEvent,
  focusNextPrevChild: fcQDoubleSpinBox_method_callback_focusNextPrevChild,
  eventFilter: fcQDoubleSpinBox_method_callback_eventFilter,
  childEvent: fcQDoubleSpinBox_method_callback_childEvent,
  customEvent: fcQDoubleSpinBox_method_callback_customEvent,
  connectNotify: fcQDoubleSpinBox_method_callback_connectNotify,
  disconnectNotify: fcQDoubleSpinBox_method_callback_disconnectNotify,
)
proc create*(T: type gen_qspinbox_types.QDoubleSpinBox,
    parent: gen_qwidget_types.QWidget,
    inst: VirtualQDoubleSpinBox) =
  if inst[].h != nil: delete(move(inst[]))
  inst[].h = fcQDoubleSpinBox_new(addr(cQDoubleSpinBox_mvtbl), addr(inst[]), parent.h)
  inst[].owned = true

proc create*(T: type gen_qspinbox_types.QDoubleSpinBox,
    inst: VirtualQDoubleSpinBox) =
  if inst[].h != nil: delete(move(inst[]))
  inst[].h = fcQDoubleSpinBox_new2(addr(cQDoubleSpinBox_mvtbl), addr(inst[]))
  inst[].owned = true

proc staticMetaObject*(_: type gen_qspinbox_types.QDoubleSpinBox): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQDoubleSpinBox_staticMetaObject())
