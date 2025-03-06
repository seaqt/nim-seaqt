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
{.compile("gen_qspinbox.cpp", cflags).}


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
  gen_qwidget_types

type cQSpinBox*{.exportc: "QSpinBox", incompleteStruct.} = object
type cQDoubleSpinBox*{.exportc: "QDoubleSpinBox", incompleteStruct.} = object

proc fcQSpinBox_metaObject(self: pointer, ): pointer {.importc: "QSpinBox_metaObject".}
proc fcQSpinBox_metacast(self: pointer, param1: cstring): pointer {.importc: "QSpinBox_metacast".}
proc fcQSpinBox_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.importc: "QSpinBox_metacall".}
proc fcQSpinBox_tr(s: cstring): struct_miqt_string {.importc: "QSpinBox_tr".}
proc fcQSpinBox_trUtf8(s: cstring): struct_miqt_string {.importc: "QSpinBox_trUtf8".}
proc fcQSpinBox_value(self: pointer, ): cint {.importc: "QSpinBox_value".}
proc fcQSpinBox_prefix(self: pointer, ): struct_miqt_string {.importc: "QSpinBox_prefix".}
proc fcQSpinBox_setPrefix(self: pointer, prefix: struct_miqt_string): void {.importc: "QSpinBox_setPrefix".}
proc fcQSpinBox_suffix(self: pointer, ): struct_miqt_string {.importc: "QSpinBox_suffix".}
proc fcQSpinBox_setSuffix(self: pointer, suffix: struct_miqt_string): void {.importc: "QSpinBox_setSuffix".}
proc fcQSpinBox_cleanText(self: pointer, ): struct_miqt_string {.importc: "QSpinBox_cleanText".}
proc fcQSpinBox_singleStep(self: pointer, ): cint {.importc: "QSpinBox_singleStep".}
proc fcQSpinBox_setSingleStep(self: pointer, val: cint): void {.importc: "QSpinBox_setSingleStep".}
proc fcQSpinBox_minimum(self: pointer, ): cint {.importc: "QSpinBox_minimum".}
proc fcQSpinBox_setMinimum(self: pointer, min: cint): void {.importc: "QSpinBox_setMinimum".}
proc fcQSpinBox_maximum(self: pointer, ): cint {.importc: "QSpinBox_maximum".}
proc fcQSpinBox_setMaximum(self: pointer, max: cint): void {.importc: "QSpinBox_setMaximum".}
proc fcQSpinBox_setRange(self: pointer, min: cint, max: cint): void {.importc: "QSpinBox_setRange".}
proc fcQSpinBox_stepType(self: pointer, ): cint {.importc: "QSpinBox_stepType".}
proc fcQSpinBox_setStepType(self: pointer, stepType: cint): void {.importc: "QSpinBox_setStepType".}
proc fcQSpinBox_displayIntegerBase(self: pointer, ): cint {.importc: "QSpinBox_displayIntegerBase".}
proc fcQSpinBox_setDisplayIntegerBase(self: pointer, base: cint): void {.importc: "QSpinBox_setDisplayIntegerBase".}
proc fcQSpinBox_setValue(self: pointer, val: cint): void {.importc: "QSpinBox_setValue".}
proc fcQSpinBox_valueChanged(self: pointer, param1: cint): void {.importc: "QSpinBox_valueChanged".}
proc fcQSpinBox_connect_valueChanged(self: pointer, slot: int) {.importc: "QSpinBox_connect_valueChanged".}
proc fcQSpinBox_textChanged(self: pointer, param1: struct_miqt_string): void {.importc: "QSpinBox_textChanged".}
proc fcQSpinBox_connect_textChanged(self: pointer, slot: int) {.importc: "QSpinBox_connect_textChanged".}
proc fcQSpinBox_valueChangedWithQString(self: pointer, param1: struct_miqt_string): void {.importc: "QSpinBox_valueChangedWithQString".}
proc fcQSpinBox_connect_valueChangedWithQString(self: pointer, slot: int) {.importc: "QSpinBox_connect_valueChangedWithQString".}
proc fcQSpinBox_tr2(s: cstring, c: cstring): struct_miqt_string {.importc: "QSpinBox_tr2".}
proc fcQSpinBox_tr3(s: cstring, c: cstring, n: cint): struct_miqt_string {.importc: "QSpinBox_tr3".}
proc fcQSpinBox_trUtf82(s: cstring, c: cstring): struct_miqt_string {.importc: "QSpinBox_trUtf82".}
proc fcQSpinBox_trUtf83(s: cstring, c: cstring, n: cint): struct_miqt_string {.importc: "QSpinBox_trUtf83".}
type cQSpinBoxVTable = object
  destructor*: proc(vtbl: ptr cQSpinBoxVTable, self: ptr cQSpinBox) {.cdecl, raises:[], gcsafe.}
  metaObject*: proc(vtbl, self: pointer, ): pointer {.cdecl, raises: [], gcsafe.}
  metacast*: proc(vtbl, self: pointer, param1: cstring): pointer {.cdecl, raises: [], gcsafe.}
  metacall*: proc(vtbl, self: pointer, param1: cint, param2: cint, param3: pointer): cint {.cdecl, raises: [], gcsafe.}
  event*: proc(vtbl, self: pointer, event: pointer): bool {.cdecl, raises: [], gcsafe.}
  validate*: proc(vtbl, self: pointer, input: struct_miqt_string, pos: ptr cint): cint {.cdecl, raises: [], gcsafe.}
  valueFromText*: proc(vtbl, self: pointer, text: struct_miqt_string): cint {.cdecl, raises: [], gcsafe.}
  textFromValue*: proc(vtbl, self: pointer, val: cint): struct_miqt_string {.cdecl, raises: [], gcsafe.}
  fixup*: proc(vtbl, self: pointer, str: struct_miqt_string): void {.cdecl, raises: [], gcsafe.}
  sizeHint*: proc(vtbl, self: pointer, ): pointer {.cdecl, raises: [], gcsafe.}
  minimumSizeHint*: proc(vtbl, self: pointer, ): pointer {.cdecl, raises: [], gcsafe.}
  inputMethodQuery*: proc(vtbl, self: pointer, param1: cint): pointer {.cdecl, raises: [], gcsafe.}
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
proc fcQSpinBox_virtualbase_metaObject(self: pointer, ): pointer {.importc: "QSpinBox_virtualbase_metaObject".}
proc fcQSpinBox_virtualbase_metacast(self: pointer, param1: cstring): pointer {.importc: "QSpinBox_virtualbase_metacast".}
proc fcQSpinBox_virtualbase_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.importc: "QSpinBox_virtualbase_metacall".}
proc fcQSpinBox_virtualbase_event(self: pointer, event: pointer): bool {.importc: "QSpinBox_virtualbase_event".}
proc fcQSpinBox_virtualbase_validate(self: pointer, input: struct_miqt_string, pos: ptr cint): cint {.importc: "QSpinBox_virtualbase_validate".}
proc fcQSpinBox_virtualbase_valueFromText(self: pointer, text: struct_miqt_string): cint {.importc: "QSpinBox_virtualbase_valueFromText".}
proc fcQSpinBox_virtualbase_textFromValue(self: pointer, val: cint): struct_miqt_string {.importc: "QSpinBox_virtualbase_textFromValue".}
proc fcQSpinBox_virtualbase_fixup(self: pointer, str: struct_miqt_string): void {.importc: "QSpinBox_virtualbase_fixup".}
proc fcQSpinBox_virtualbase_sizeHint(self: pointer, ): pointer {.importc: "QSpinBox_virtualbase_sizeHint".}
proc fcQSpinBox_virtualbase_minimumSizeHint(self: pointer, ): pointer {.importc: "QSpinBox_virtualbase_minimumSizeHint".}
proc fcQSpinBox_virtualbase_inputMethodQuery(self: pointer, param1: cint): pointer {.importc: "QSpinBox_virtualbase_inputMethodQuery".}
proc fcQSpinBox_virtualbase_stepBy(self: pointer, steps: cint): void {.importc: "QSpinBox_virtualbase_stepBy".}
proc fcQSpinBox_virtualbase_clear(self: pointer, ): void {.importc: "QSpinBox_virtualbase_clear".}
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
proc fcQSpinBox_virtualbase_stepEnabled(self: pointer, ): cint {.importc: "QSpinBox_virtualbase_stepEnabled".}
proc fcQSpinBox_virtualbase_devType(self: pointer, ): cint {.importc: "QSpinBox_virtualbase_devType".}
proc fcQSpinBox_virtualbase_setVisible(self: pointer, visible: bool): void {.importc: "QSpinBox_virtualbase_setVisible".}
proc fcQSpinBox_virtualbase_heightForWidth(self: pointer, param1: cint): cint {.importc: "QSpinBox_virtualbase_heightForWidth".}
proc fcQSpinBox_virtualbase_hasHeightForWidth(self: pointer, ): bool {.importc: "QSpinBox_virtualbase_hasHeightForWidth".}
proc fcQSpinBox_virtualbase_paintEngine(self: pointer, ): pointer {.importc: "QSpinBox_virtualbase_paintEngine".}
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
proc fcQSpinBox_virtualbase_sharedPainter(self: pointer, ): pointer {.importc: "QSpinBox_virtualbase_sharedPainter".}
proc fcQSpinBox_virtualbase_inputMethodEvent(self: pointer, param1: pointer): void {.importc: "QSpinBox_virtualbase_inputMethodEvent".}
proc fcQSpinBox_virtualbase_focusNextPrevChild(self: pointer, next: bool): bool {.importc: "QSpinBox_virtualbase_focusNextPrevChild".}
proc fcQSpinBox_virtualbase_eventFilter(self: pointer, watched: pointer, event: pointer): bool {.importc: "QSpinBox_virtualbase_eventFilter".}
proc fcQSpinBox_virtualbase_childEvent(self: pointer, event: pointer): void {.importc: "QSpinBox_virtualbase_childEvent".}
proc fcQSpinBox_virtualbase_customEvent(self: pointer, event: pointer): void {.importc: "QSpinBox_virtualbase_customEvent".}
proc fcQSpinBox_virtualbase_connectNotify(self: pointer, signal: pointer): void {.importc: "QSpinBox_virtualbase_connectNotify".}
proc fcQSpinBox_virtualbase_disconnectNotify(self: pointer, signal: pointer): void {.importc: "QSpinBox_virtualbase_disconnectNotify".}
proc fcQSpinBox_new(vtbl: pointer, parent: pointer): ptr cQSpinBox {.importc: "QSpinBox_new".}
proc fcQSpinBox_new2(vtbl: pointer, ): ptr cQSpinBox {.importc: "QSpinBox_new2".}
proc fcQSpinBox_staticMetaObject(): pointer {.importc: "QSpinBox_staticMetaObject".}
proc fcQSpinBox_delete(self: pointer) {.importc: "QSpinBox_delete".}
proc fcQDoubleSpinBox_metaObject(self: pointer, ): pointer {.importc: "QDoubleSpinBox_metaObject".}
proc fcQDoubleSpinBox_metacast(self: pointer, param1: cstring): pointer {.importc: "QDoubleSpinBox_metacast".}
proc fcQDoubleSpinBox_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.importc: "QDoubleSpinBox_metacall".}
proc fcQDoubleSpinBox_tr(s: cstring): struct_miqt_string {.importc: "QDoubleSpinBox_tr".}
proc fcQDoubleSpinBox_trUtf8(s: cstring): struct_miqt_string {.importc: "QDoubleSpinBox_trUtf8".}
proc fcQDoubleSpinBox_value(self: pointer, ): float64 {.importc: "QDoubleSpinBox_value".}
proc fcQDoubleSpinBox_prefix(self: pointer, ): struct_miqt_string {.importc: "QDoubleSpinBox_prefix".}
proc fcQDoubleSpinBox_setPrefix(self: pointer, prefix: struct_miqt_string): void {.importc: "QDoubleSpinBox_setPrefix".}
proc fcQDoubleSpinBox_suffix(self: pointer, ): struct_miqt_string {.importc: "QDoubleSpinBox_suffix".}
proc fcQDoubleSpinBox_setSuffix(self: pointer, suffix: struct_miqt_string): void {.importc: "QDoubleSpinBox_setSuffix".}
proc fcQDoubleSpinBox_cleanText(self: pointer, ): struct_miqt_string {.importc: "QDoubleSpinBox_cleanText".}
proc fcQDoubleSpinBox_singleStep(self: pointer, ): float64 {.importc: "QDoubleSpinBox_singleStep".}
proc fcQDoubleSpinBox_setSingleStep(self: pointer, val: float64): void {.importc: "QDoubleSpinBox_setSingleStep".}
proc fcQDoubleSpinBox_minimum(self: pointer, ): float64 {.importc: "QDoubleSpinBox_minimum".}
proc fcQDoubleSpinBox_setMinimum(self: pointer, min: float64): void {.importc: "QDoubleSpinBox_setMinimum".}
proc fcQDoubleSpinBox_maximum(self: pointer, ): float64 {.importc: "QDoubleSpinBox_maximum".}
proc fcQDoubleSpinBox_setMaximum(self: pointer, max: float64): void {.importc: "QDoubleSpinBox_setMaximum".}
proc fcQDoubleSpinBox_setRange(self: pointer, min: float64, max: float64): void {.importc: "QDoubleSpinBox_setRange".}
proc fcQDoubleSpinBox_stepType(self: pointer, ): cint {.importc: "QDoubleSpinBox_stepType".}
proc fcQDoubleSpinBox_setStepType(self: pointer, stepType: cint): void {.importc: "QDoubleSpinBox_setStepType".}
proc fcQDoubleSpinBox_decimals(self: pointer, ): cint {.importc: "QDoubleSpinBox_decimals".}
proc fcQDoubleSpinBox_setDecimals(self: pointer, prec: cint): void {.importc: "QDoubleSpinBox_setDecimals".}
proc fcQDoubleSpinBox_validate(self: pointer, input: struct_miqt_string, pos: ptr cint): cint {.importc: "QDoubleSpinBox_validate".}
proc fcQDoubleSpinBox_valueFromText(self: pointer, text: struct_miqt_string): float64 {.importc: "QDoubleSpinBox_valueFromText".}
proc fcQDoubleSpinBox_textFromValue(self: pointer, val: float64): struct_miqt_string {.importc: "QDoubleSpinBox_textFromValue".}
proc fcQDoubleSpinBox_fixup(self: pointer, str: struct_miqt_string): void {.importc: "QDoubleSpinBox_fixup".}
proc fcQDoubleSpinBox_setValue(self: pointer, val: float64): void {.importc: "QDoubleSpinBox_setValue".}
proc fcQDoubleSpinBox_valueChanged(self: pointer, param1: float64): void {.importc: "QDoubleSpinBox_valueChanged".}
proc fcQDoubleSpinBox_connect_valueChanged(self: pointer, slot: int) {.importc: "QDoubleSpinBox_connect_valueChanged".}
proc fcQDoubleSpinBox_textChanged(self: pointer, param1: struct_miqt_string): void {.importc: "QDoubleSpinBox_textChanged".}
proc fcQDoubleSpinBox_connect_textChanged(self: pointer, slot: int) {.importc: "QDoubleSpinBox_connect_textChanged".}
proc fcQDoubleSpinBox_valueChangedWithQString(self: pointer, param1: struct_miqt_string): void {.importc: "QDoubleSpinBox_valueChangedWithQString".}
proc fcQDoubleSpinBox_connect_valueChangedWithQString(self: pointer, slot: int) {.importc: "QDoubleSpinBox_connect_valueChangedWithQString".}
proc fcQDoubleSpinBox_tr2(s: cstring, c: cstring): struct_miqt_string {.importc: "QDoubleSpinBox_tr2".}
proc fcQDoubleSpinBox_tr3(s: cstring, c: cstring, n: cint): struct_miqt_string {.importc: "QDoubleSpinBox_tr3".}
proc fcQDoubleSpinBox_trUtf82(s: cstring, c: cstring): struct_miqt_string {.importc: "QDoubleSpinBox_trUtf82".}
proc fcQDoubleSpinBox_trUtf83(s: cstring, c: cstring, n: cint): struct_miqt_string {.importc: "QDoubleSpinBox_trUtf83".}
type cQDoubleSpinBoxVTable = object
  destructor*: proc(vtbl: ptr cQDoubleSpinBoxVTable, self: ptr cQDoubleSpinBox) {.cdecl, raises:[], gcsafe.}
  metaObject*: proc(vtbl, self: pointer, ): pointer {.cdecl, raises: [], gcsafe.}
  metacast*: proc(vtbl, self: pointer, param1: cstring): pointer {.cdecl, raises: [], gcsafe.}
  metacall*: proc(vtbl, self: pointer, param1: cint, param2: cint, param3: pointer): cint {.cdecl, raises: [], gcsafe.}
  validate*: proc(vtbl, self: pointer, input: struct_miqt_string, pos: ptr cint): cint {.cdecl, raises: [], gcsafe.}
  valueFromText*: proc(vtbl, self: pointer, text: struct_miqt_string): float64 {.cdecl, raises: [], gcsafe.}
  textFromValue*: proc(vtbl, self: pointer, val: float64): struct_miqt_string {.cdecl, raises: [], gcsafe.}
  fixup*: proc(vtbl, self: pointer, str: struct_miqt_string): void {.cdecl, raises: [], gcsafe.}
  sizeHint*: proc(vtbl, self: pointer, ): pointer {.cdecl, raises: [], gcsafe.}
  minimumSizeHint*: proc(vtbl, self: pointer, ): pointer {.cdecl, raises: [], gcsafe.}
  event*: proc(vtbl, self: pointer, event: pointer): bool {.cdecl, raises: [], gcsafe.}
  inputMethodQuery*: proc(vtbl, self: pointer, param1: cint): pointer {.cdecl, raises: [], gcsafe.}
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
proc fcQDoubleSpinBox_virtualbase_metaObject(self: pointer, ): pointer {.importc: "QDoubleSpinBox_virtualbase_metaObject".}
proc fcQDoubleSpinBox_virtualbase_metacast(self: pointer, param1: cstring): pointer {.importc: "QDoubleSpinBox_virtualbase_metacast".}
proc fcQDoubleSpinBox_virtualbase_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.importc: "QDoubleSpinBox_virtualbase_metacall".}
proc fcQDoubleSpinBox_virtualbase_validate(self: pointer, input: struct_miqt_string, pos: ptr cint): cint {.importc: "QDoubleSpinBox_virtualbase_validate".}
proc fcQDoubleSpinBox_virtualbase_valueFromText(self: pointer, text: struct_miqt_string): float64 {.importc: "QDoubleSpinBox_virtualbase_valueFromText".}
proc fcQDoubleSpinBox_virtualbase_textFromValue(self: pointer, val: float64): struct_miqt_string {.importc: "QDoubleSpinBox_virtualbase_textFromValue".}
proc fcQDoubleSpinBox_virtualbase_fixup(self: pointer, str: struct_miqt_string): void {.importc: "QDoubleSpinBox_virtualbase_fixup".}
proc fcQDoubleSpinBox_virtualbase_sizeHint(self: pointer, ): pointer {.importc: "QDoubleSpinBox_virtualbase_sizeHint".}
proc fcQDoubleSpinBox_virtualbase_minimumSizeHint(self: pointer, ): pointer {.importc: "QDoubleSpinBox_virtualbase_minimumSizeHint".}
proc fcQDoubleSpinBox_virtualbase_event(self: pointer, event: pointer): bool {.importc: "QDoubleSpinBox_virtualbase_event".}
proc fcQDoubleSpinBox_virtualbase_inputMethodQuery(self: pointer, param1: cint): pointer {.importc: "QDoubleSpinBox_virtualbase_inputMethodQuery".}
proc fcQDoubleSpinBox_virtualbase_stepBy(self: pointer, steps: cint): void {.importc: "QDoubleSpinBox_virtualbase_stepBy".}
proc fcQDoubleSpinBox_virtualbase_clear(self: pointer, ): void {.importc: "QDoubleSpinBox_virtualbase_clear".}
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
proc fcQDoubleSpinBox_virtualbase_stepEnabled(self: pointer, ): cint {.importc: "QDoubleSpinBox_virtualbase_stepEnabled".}
proc fcQDoubleSpinBox_virtualbase_devType(self: pointer, ): cint {.importc: "QDoubleSpinBox_virtualbase_devType".}
proc fcQDoubleSpinBox_virtualbase_setVisible(self: pointer, visible: bool): void {.importc: "QDoubleSpinBox_virtualbase_setVisible".}
proc fcQDoubleSpinBox_virtualbase_heightForWidth(self: pointer, param1: cint): cint {.importc: "QDoubleSpinBox_virtualbase_heightForWidth".}
proc fcQDoubleSpinBox_virtualbase_hasHeightForWidth(self: pointer, ): bool {.importc: "QDoubleSpinBox_virtualbase_hasHeightForWidth".}
proc fcQDoubleSpinBox_virtualbase_paintEngine(self: pointer, ): pointer {.importc: "QDoubleSpinBox_virtualbase_paintEngine".}
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
proc fcQDoubleSpinBox_virtualbase_sharedPainter(self: pointer, ): pointer {.importc: "QDoubleSpinBox_virtualbase_sharedPainter".}
proc fcQDoubleSpinBox_virtualbase_inputMethodEvent(self: pointer, param1: pointer): void {.importc: "QDoubleSpinBox_virtualbase_inputMethodEvent".}
proc fcQDoubleSpinBox_virtualbase_focusNextPrevChild(self: pointer, next: bool): bool {.importc: "QDoubleSpinBox_virtualbase_focusNextPrevChild".}
proc fcQDoubleSpinBox_virtualbase_eventFilter(self: pointer, watched: pointer, event: pointer): bool {.importc: "QDoubleSpinBox_virtualbase_eventFilter".}
proc fcQDoubleSpinBox_virtualbase_childEvent(self: pointer, event: pointer): void {.importc: "QDoubleSpinBox_virtualbase_childEvent".}
proc fcQDoubleSpinBox_virtualbase_customEvent(self: pointer, event: pointer): void {.importc: "QDoubleSpinBox_virtualbase_customEvent".}
proc fcQDoubleSpinBox_virtualbase_connectNotify(self: pointer, signal: pointer): void {.importc: "QDoubleSpinBox_virtualbase_connectNotify".}
proc fcQDoubleSpinBox_virtualbase_disconnectNotify(self: pointer, signal: pointer): void {.importc: "QDoubleSpinBox_virtualbase_disconnectNotify".}
proc fcQDoubleSpinBox_new(vtbl: pointer, parent: pointer): ptr cQDoubleSpinBox {.importc: "QDoubleSpinBox_new".}
proc fcQDoubleSpinBox_new2(vtbl: pointer, ): ptr cQDoubleSpinBox {.importc: "QDoubleSpinBox_new2".}
proc fcQDoubleSpinBox_staticMetaObject(): pointer {.importc: "QDoubleSpinBox_staticMetaObject".}
proc fcQDoubleSpinBox_delete(self: pointer) {.importc: "QDoubleSpinBox_delete".}

proc metaObject*(self: gen_qspinbox_types.QSpinBox, ): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQSpinBox_metaObject(self.h))

proc metacast*(self: gen_qspinbox_types.QSpinBox, param1: cstring): pointer =
  fcQSpinBox_metacast(self.h, param1)

proc metacall*(self: gen_qspinbox_types.QSpinBox, param1: cint, param2: cint, param3: pointer): cint =
  fcQSpinBox_metacall(self.h, cint(param1), param2, param3)

proc tr*(_: type gen_qspinbox_types.QSpinBox, s: cstring): string =
  let v_ms = fcQSpinBox_tr(s)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc trUtf8*(_: type gen_qspinbox_types.QSpinBox, s: cstring): string =
  let v_ms = fcQSpinBox_trUtf8(s)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc value*(self: gen_qspinbox_types.QSpinBox, ): cint =
  fcQSpinBox_value(self.h)

proc prefix*(self: gen_qspinbox_types.QSpinBox, ): string =
  let v_ms = fcQSpinBox_prefix(self.h)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc setPrefix*(self: gen_qspinbox_types.QSpinBox, prefix: string): void =
  fcQSpinBox_setPrefix(self.h, struct_miqt_string(data: prefix, len: csize_t(len(prefix))))

proc suffix*(self: gen_qspinbox_types.QSpinBox, ): string =
  let v_ms = fcQSpinBox_suffix(self.h)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc setSuffix*(self: gen_qspinbox_types.QSpinBox, suffix: string): void =
  fcQSpinBox_setSuffix(self.h, struct_miqt_string(data: suffix, len: csize_t(len(suffix))))

proc cleanText*(self: gen_qspinbox_types.QSpinBox, ): string =
  let v_ms = fcQSpinBox_cleanText(self.h)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc singleStep*(self: gen_qspinbox_types.QSpinBox, ): cint =
  fcQSpinBox_singleStep(self.h)

proc setSingleStep*(self: gen_qspinbox_types.QSpinBox, val: cint): void =
  fcQSpinBox_setSingleStep(self.h, val)

proc minimum*(self: gen_qspinbox_types.QSpinBox, ): cint =
  fcQSpinBox_minimum(self.h)

proc setMinimum*(self: gen_qspinbox_types.QSpinBox, min: cint): void =
  fcQSpinBox_setMinimum(self.h, min)

proc maximum*(self: gen_qspinbox_types.QSpinBox, ): cint =
  fcQSpinBox_maximum(self.h)

proc setMaximum*(self: gen_qspinbox_types.QSpinBox, max: cint): void =
  fcQSpinBox_setMaximum(self.h, max)

proc setRange*(self: gen_qspinbox_types.QSpinBox, min: cint, max: cint): void =
  fcQSpinBox_setRange(self.h, min, max)

proc stepType*(self: gen_qspinbox_types.QSpinBox, ): cint =
  cint(fcQSpinBox_stepType(self.h))

proc setStepType*(self: gen_qspinbox_types.QSpinBox, stepType: cint): void =
  fcQSpinBox_setStepType(self.h, cint(stepType))

proc displayIntegerBase*(self: gen_qspinbox_types.QSpinBox, ): cint =
  fcQSpinBox_displayIntegerBase(self.h)

proc setDisplayIntegerBase*(self: gen_qspinbox_types.QSpinBox, base: cint): void =
  fcQSpinBox_setDisplayIntegerBase(self.h, base)

proc setValue*(self: gen_qspinbox_types.QSpinBox, val: cint): void =
  fcQSpinBox_setValue(self.h, val)

proc valueChanged*(self: gen_qspinbox_types.QSpinBox, param1: cint): void =
  fcQSpinBox_valueChanged(self.h, param1)

type QSpinBoxvalueChangedSlot* = proc(param1: cint)
proc miqt_exec_callback_cQSpinBox_valueChanged(slot: int, param1: cint) {.exportc: "miqt_exec_callback_QSpinBox_valueChanged".} =
  let nimfunc = cast[ptr QSpinBoxvalueChangedSlot](cast[pointer](slot))
  let slotval1 = param1

  nimfunc[](slotval1)

proc onvalueChanged*(self: gen_qspinbox_types.QSpinBox, slot: QSpinBoxvalueChangedSlot) =
  var tmp = new QSpinBoxvalueChangedSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQSpinBox_connect_valueChanged(self.h, cast[int](addr tmp[]))

proc textChanged*(self: gen_qspinbox_types.QSpinBox, param1: string): void =
  fcQSpinBox_textChanged(self.h, struct_miqt_string(data: param1, len: csize_t(len(param1))))

type QSpinBoxtextChangedSlot* = proc(param1: string)
proc miqt_exec_callback_cQSpinBox_textChanged(slot: int, param1: struct_miqt_string) {.exportc: "miqt_exec_callback_QSpinBox_textChanged".} =
  let nimfunc = cast[ptr QSpinBoxtextChangedSlot](cast[pointer](slot))
  let vparam1_ms = param1
  let vparam1x_ret = string.fromBytes(toOpenArrayByte(vparam1_ms.data, 0, int(vparam1_ms.len)-1))
  c_free(vparam1_ms.data)
  let slotval1 = vparam1x_ret

  nimfunc[](slotval1)

proc ontextChanged*(self: gen_qspinbox_types.QSpinBox, slot: QSpinBoxtextChangedSlot) =
  var tmp = new QSpinBoxtextChangedSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQSpinBox_connect_textChanged(self.h, cast[int](addr tmp[]))

proc valueChanged*(self: gen_qspinbox_types.QSpinBox, param1: string): void =
  fcQSpinBox_valueChangedWithQString(self.h, struct_miqt_string(data: param1, len: csize_t(len(param1))))

type QSpinBoxvalueChangedWithQStringSlot* = proc(param1: string)
proc miqt_exec_callback_cQSpinBox_valueChangedWithQString(slot: int, param1: struct_miqt_string) {.exportc: "miqt_exec_callback_QSpinBox_valueChangedWithQString".} =
  let nimfunc = cast[ptr QSpinBoxvalueChangedWithQStringSlot](cast[pointer](slot))
  let vparam1_ms = param1
  let vparam1x_ret = string.fromBytes(toOpenArrayByte(vparam1_ms.data, 0, int(vparam1_ms.len)-1))
  c_free(vparam1_ms.data)
  let slotval1 = vparam1x_ret

  nimfunc[](slotval1)

proc onvalueChanged*(self: gen_qspinbox_types.QSpinBox, slot: QSpinBoxvalueChangedWithQStringSlot) =
  var tmp = new QSpinBoxvalueChangedWithQStringSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQSpinBox_connect_valueChangedWithQString(self.h, cast[int](addr tmp[]))

proc tr*(_: type gen_qspinbox_types.QSpinBox, s: cstring, c: cstring): string =
  let v_ms = fcQSpinBox_tr2(s, c)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc tr*(_: type gen_qspinbox_types.QSpinBox, s: cstring, c: cstring, n: cint): string =
  let v_ms = fcQSpinBox_tr3(s, c, n)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc trUtf8*(_: type gen_qspinbox_types.QSpinBox, s: cstring, c: cstring): string =
  let v_ms = fcQSpinBox_trUtf82(s, c)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc trUtf8*(_: type gen_qspinbox_types.QSpinBox, s: cstring, c: cstring, n: cint): string =
  let v_ms = fcQSpinBox_trUtf83(s, c, n)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

type QSpinBoxmetaObjectProc* = proc(self: QSpinBox): gen_qobjectdefs_types.QMetaObject {.raises: [], gcsafe.}
type QSpinBoxmetacastProc* = proc(self: QSpinBox, param1: cstring): pointer {.raises: [], gcsafe.}
type QSpinBoxmetacallProc* = proc(self: QSpinBox, param1: cint, param2: cint, param3: pointer): cint {.raises: [], gcsafe.}
type QSpinBoxeventProc* = proc(self: QSpinBox, event: gen_qcoreevent_types.QEvent): bool {.raises: [], gcsafe.}
type QSpinBoxvalidateProc* = proc(self: QSpinBox, input: string, pos: ptr cint): cint {.raises: [], gcsafe.}
type QSpinBoxvalueFromTextProc* = proc(self: QSpinBox, text: string): cint {.raises: [], gcsafe.}
type QSpinBoxtextFromValueProc* = proc(self: QSpinBox, val: cint): string {.raises: [], gcsafe.}
type QSpinBoxfixupProc* = proc(self: QSpinBox, str: string): void {.raises: [], gcsafe.}
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
type QSpinBoxnativeEventProc* = proc(self: QSpinBox, eventType: seq[byte], message: pointer, resultVal: ptr clong): bool {.raises: [], gcsafe.}
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
type QSpinBoxVTable* = object
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
proc QSpinBoxmetaObject*(self: gen_qspinbox_types.QSpinBox, ): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQSpinBox_virtualbase_metaObject(self.h))

proc miqt_exec_callback_cQSpinBox_metaObject(vtbl: pointer, self: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QSpinBoxVTable](vtbl)
  let self = QSpinBox(h: self)
  var virtualReturn = vtbl[].metaObject(self)
  virtualReturn.h

proc QSpinBoxmetacast*(self: gen_qspinbox_types.QSpinBox, param1: cstring): pointer =
  fcQSpinBox_virtualbase_metacast(self.h, param1)

proc miqt_exec_callback_cQSpinBox_metacast(vtbl: pointer, self: pointer, param1: cstring): pointer {.cdecl.} =
  let vtbl = cast[ptr QSpinBoxVTable](vtbl)
  let self = QSpinBox(h: self)
  let slotval1 = (param1)
  var virtualReturn = vtbl[].metacast(self, slotval1)
  virtualReturn

proc QSpinBoxmetacall*(self: gen_qspinbox_types.QSpinBox, param1: cint, param2: cint, param3: pointer): cint =
  fcQSpinBox_virtualbase_metacall(self.h, cint(param1), param2, param3)

proc miqt_exec_callback_cQSpinBox_metacall(vtbl: pointer, self: pointer, param1: cint, param2: cint, param3: pointer): cint {.cdecl.} =
  let vtbl = cast[ptr QSpinBoxVTable](vtbl)
  let self = QSpinBox(h: self)
  let slotval1 = cint(param1)
  let slotval2 = param2
  let slotval3 = param3
  var virtualReturn = vtbl[].metacall(self, slotval1, slotval2, slotval3)
  virtualReturn

proc QSpinBoxevent*(self: gen_qspinbox_types.QSpinBox, event: gen_qcoreevent_types.QEvent): bool =
  fcQSpinBox_virtualbase_event(self.h, event.h)

proc miqt_exec_callback_cQSpinBox_event(vtbl: pointer, self: pointer, event: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QSpinBoxVTable](vtbl)
  let self = QSpinBox(h: self)
  let slotval1 = gen_qcoreevent_types.QEvent(h: event)
  var virtualReturn = vtbl[].event(self, slotval1)
  virtualReturn

proc QSpinBoxvalidate*(self: gen_qspinbox_types.QSpinBox, input: string, pos: ptr cint): cint =
  cint(fcQSpinBox_virtualbase_validate(self.h, struct_miqt_string(data: input, len: csize_t(len(input))), pos))

proc miqt_exec_callback_cQSpinBox_validate(vtbl: pointer, self: pointer, input: struct_miqt_string, pos: ptr cint): cint {.cdecl.} =
  let vtbl = cast[ptr QSpinBoxVTable](vtbl)
  let self = QSpinBox(h: self)
  let vinput_ms = input
  let vinputx_ret = string.fromBytes(toOpenArrayByte(vinput_ms.data, 0, int(vinput_ms.len)-1))
  c_free(vinput_ms.data)
  let slotval1 = vinputx_ret
  let slotval2 = pos
  var virtualReturn = vtbl[].validate(self, slotval1, slotval2)
  cint(virtualReturn)

proc QSpinBoxvalueFromText*(self: gen_qspinbox_types.QSpinBox, text: string): cint =
  fcQSpinBox_virtualbase_valueFromText(self.h, struct_miqt_string(data: text, len: csize_t(len(text))))

proc miqt_exec_callback_cQSpinBox_valueFromText(vtbl: pointer, self: pointer, text: struct_miqt_string): cint {.cdecl.} =
  let vtbl = cast[ptr QSpinBoxVTable](vtbl)
  let self = QSpinBox(h: self)
  let vtext_ms = text
  let vtextx_ret = string.fromBytes(toOpenArrayByte(vtext_ms.data, 0, int(vtext_ms.len)-1))
  c_free(vtext_ms.data)
  let slotval1 = vtextx_ret
  var virtualReturn = vtbl[].valueFromText(self, slotval1)
  virtualReturn

proc QSpinBoxtextFromValue*(self: gen_qspinbox_types.QSpinBox, val: cint): string =
  let v_ms = fcQSpinBox_virtualbase_textFromValue(self.h, val)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc miqt_exec_callback_cQSpinBox_textFromValue(vtbl: pointer, self: pointer, val: cint): struct_miqt_string {.cdecl.} =
  let vtbl = cast[ptr QSpinBoxVTable](vtbl)
  let self = QSpinBox(h: self)
  let slotval1 = val
  var virtualReturn = vtbl[].textFromValue(self, slotval1)
  struct_miqt_string(data: virtualReturn, len: csize_t(len(virtualReturn)))

proc QSpinBoxfixup*(self: gen_qspinbox_types.QSpinBox, str: string): void =
  fcQSpinBox_virtualbase_fixup(self.h, struct_miqt_string(data: str, len: csize_t(len(str))))

proc miqt_exec_callback_cQSpinBox_fixup(vtbl: pointer, self: pointer, str: struct_miqt_string): void {.cdecl.} =
  let vtbl = cast[ptr QSpinBoxVTable](vtbl)
  let self = QSpinBox(h: self)
  let vstr_ms = str
  let vstrx_ret = string.fromBytes(toOpenArrayByte(vstr_ms.data, 0, int(vstr_ms.len)-1))
  c_free(vstr_ms.data)
  let slotval1 = vstrx_ret
  vtbl[].fixup(self, slotval1)

proc QSpinBoxsizeHint*(self: gen_qspinbox_types.QSpinBox, ): gen_qsize_types.QSize =
  gen_qsize_types.QSize(h: fcQSpinBox_virtualbase_sizeHint(self.h))

proc miqt_exec_callback_cQSpinBox_sizeHint(vtbl: pointer, self: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QSpinBoxVTable](vtbl)
  let self = QSpinBox(h: self)
  var virtualReturn = vtbl[].sizeHint(self)
  virtualReturn.h

proc QSpinBoxminimumSizeHint*(self: gen_qspinbox_types.QSpinBox, ): gen_qsize_types.QSize =
  gen_qsize_types.QSize(h: fcQSpinBox_virtualbase_minimumSizeHint(self.h))

proc miqt_exec_callback_cQSpinBox_minimumSizeHint(vtbl: pointer, self: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QSpinBoxVTable](vtbl)
  let self = QSpinBox(h: self)
  var virtualReturn = vtbl[].minimumSizeHint(self)
  virtualReturn.h

proc QSpinBoxinputMethodQuery*(self: gen_qspinbox_types.QSpinBox, param1: cint): gen_qvariant_types.QVariant =
  gen_qvariant_types.QVariant(h: fcQSpinBox_virtualbase_inputMethodQuery(self.h, cint(param1)))

proc miqt_exec_callback_cQSpinBox_inputMethodQuery(vtbl: pointer, self: pointer, param1: cint): pointer {.cdecl.} =
  let vtbl = cast[ptr QSpinBoxVTable](vtbl)
  let self = QSpinBox(h: self)
  let slotval1 = cint(param1)
  var virtualReturn = vtbl[].inputMethodQuery(self, slotval1)
  virtualReturn.h

proc QSpinBoxstepBy*(self: gen_qspinbox_types.QSpinBox, steps: cint): void =
  fcQSpinBox_virtualbase_stepBy(self.h, steps)

proc miqt_exec_callback_cQSpinBox_stepBy(vtbl: pointer, self: pointer, steps: cint): void {.cdecl.} =
  let vtbl = cast[ptr QSpinBoxVTable](vtbl)
  let self = QSpinBox(h: self)
  let slotval1 = steps
  vtbl[].stepBy(self, slotval1)

proc QSpinBoxclear*(self: gen_qspinbox_types.QSpinBox, ): void =
  fcQSpinBox_virtualbase_clear(self.h)

proc miqt_exec_callback_cQSpinBox_clear(vtbl: pointer, self: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QSpinBoxVTable](vtbl)
  let self = QSpinBox(h: self)
  vtbl[].clear(self)

proc QSpinBoxresizeEvent*(self: gen_qspinbox_types.QSpinBox, event: gen_qevent_types.QResizeEvent): void =
  fcQSpinBox_virtualbase_resizeEvent(self.h, event.h)

proc miqt_exec_callback_cQSpinBox_resizeEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QSpinBoxVTable](vtbl)
  let self = QSpinBox(h: self)
  let slotval1 = gen_qevent_types.QResizeEvent(h: event)
  vtbl[].resizeEvent(self, slotval1)

proc QSpinBoxkeyPressEvent*(self: gen_qspinbox_types.QSpinBox, event: gen_qevent_types.QKeyEvent): void =
  fcQSpinBox_virtualbase_keyPressEvent(self.h, event.h)

proc miqt_exec_callback_cQSpinBox_keyPressEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QSpinBoxVTable](vtbl)
  let self = QSpinBox(h: self)
  let slotval1 = gen_qevent_types.QKeyEvent(h: event)
  vtbl[].keyPressEvent(self, slotval1)

proc QSpinBoxkeyReleaseEvent*(self: gen_qspinbox_types.QSpinBox, event: gen_qevent_types.QKeyEvent): void =
  fcQSpinBox_virtualbase_keyReleaseEvent(self.h, event.h)

proc miqt_exec_callback_cQSpinBox_keyReleaseEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QSpinBoxVTable](vtbl)
  let self = QSpinBox(h: self)
  let slotval1 = gen_qevent_types.QKeyEvent(h: event)
  vtbl[].keyReleaseEvent(self, slotval1)

proc QSpinBoxwheelEvent*(self: gen_qspinbox_types.QSpinBox, event: gen_qevent_types.QWheelEvent): void =
  fcQSpinBox_virtualbase_wheelEvent(self.h, event.h)

proc miqt_exec_callback_cQSpinBox_wheelEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QSpinBoxVTable](vtbl)
  let self = QSpinBox(h: self)
  let slotval1 = gen_qevent_types.QWheelEvent(h: event)
  vtbl[].wheelEvent(self, slotval1)

proc QSpinBoxfocusInEvent*(self: gen_qspinbox_types.QSpinBox, event: gen_qevent_types.QFocusEvent): void =
  fcQSpinBox_virtualbase_focusInEvent(self.h, event.h)

proc miqt_exec_callback_cQSpinBox_focusInEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QSpinBoxVTable](vtbl)
  let self = QSpinBox(h: self)
  let slotval1 = gen_qevent_types.QFocusEvent(h: event)
  vtbl[].focusInEvent(self, slotval1)

proc QSpinBoxfocusOutEvent*(self: gen_qspinbox_types.QSpinBox, event: gen_qevent_types.QFocusEvent): void =
  fcQSpinBox_virtualbase_focusOutEvent(self.h, event.h)

proc miqt_exec_callback_cQSpinBox_focusOutEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QSpinBoxVTable](vtbl)
  let self = QSpinBox(h: self)
  let slotval1 = gen_qevent_types.QFocusEvent(h: event)
  vtbl[].focusOutEvent(self, slotval1)

proc QSpinBoxcontextMenuEvent*(self: gen_qspinbox_types.QSpinBox, event: gen_qevent_types.QContextMenuEvent): void =
  fcQSpinBox_virtualbase_contextMenuEvent(self.h, event.h)

proc miqt_exec_callback_cQSpinBox_contextMenuEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QSpinBoxVTable](vtbl)
  let self = QSpinBox(h: self)
  let slotval1 = gen_qevent_types.QContextMenuEvent(h: event)
  vtbl[].contextMenuEvent(self, slotval1)

proc QSpinBoxchangeEvent*(self: gen_qspinbox_types.QSpinBox, event: gen_qcoreevent_types.QEvent): void =
  fcQSpinBox_virtualbase_changeEvent(self.h, event.h)

proc miqt_exec_callback_cQSpinBox_changeEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QSpinBoxVTable](vtbl)
  let self = QSpinBox(h: self)
  let slotval1 = gen_qcoreevent_types.QEvent(h: event)
  vtbl[].changeEvent(self, slotval1)

proc QSpinBoxcloseEvent*(self: gen_qspinbox_types.QSpinBox, event: gen_qevent_types.QCloseEvent): void =
  fcQSpinBox_virtualbase_closeEvent(self.h, event.h)

proc miqt_exec_callback_cQSpinBox_closeEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QSpinBoxVTable](vtbl)
  let self = QSpinBox(h: self)
  let slotval1 = gen_qevent_types.QCloseEvent(h: event)
  vtbl[].closeEvent(self, slotval1)

proc QSpinBoxhideEvent*(self: gen_qspinbox_types.QSpinBox, event: gen_qevent_types.QHideEvent): void =
  fcQSpinBox_virtualbase_hideEvent(self.h, event.h)

proc miqt_exec_callback_cQSpinBox_hideEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QSpinBoxVTable](vtbl)
  let self = QSpinBox(h: self)
  let slotval1 = gen_qevent_types.QHideEvent(h: event)
  vtbl[].hideEvent(self, slotval1)

proc QSpinBoxmousePressEvent*(self: gen_qspinbox_types.QSpinBox, event: gen_qevent_types.QMouseEvent): void =
  fcQSpinBox_virtualbase_mousePressEvent(self.h, event.h)

proc miqt_exec_callback_cQSpinBox_mousePressEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QSpinBoxVTable](vtbl)
  let self = QSpinBox(h: self)
  let slotval1 = gen_qevent_types.QMouseEvent(h: event)
  vtbl[].mousePressEvent(self, slotval1)

proc QSpinBoxmouseReleaseEvent*(self: gen_qspinbox_types.QSpinBox, event: gen_qevent_types.QMouseEvent): void =
  fcQSpinBox_virtualbase_mouseReleaseEvent(self.h, event.h)

proc miqt_exec_callback_cQSpinBox_mouseReleaseEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QSpinBoxVTable](vtbl)
  let self = QSpinBox(h: self)
  let slotval1 = gen_qevent_types.QMouseEvent(h: event)
  vtbl[].mouseReleaseEvent(self, slotval1)

proc QSpinBoxmouseMoveEvent*(self: gen_qspinbox_types.QSpinBox, event: gen_qevent_types.QMouseEvent): void =
  fcQSpinBox_virtualbase_mouseMoveEvent(self.h, event.h)

proc miqt_exec_callback_cQSpinBox_mouseMoveEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QSpinBoxVTable](vtbl)
  let self = QSpinBox(h: self)
  let slotval1 = gen_qevent_types.QMouseEvent(h: event)
  vtbl[].mouseMoveEvent(self, slotval1)

proc QSpinBoxtimerEvent*(self: gen_qspinbox_types.QSpinBox, event: gen_qcoreevent_types.QTimerEvent): void =
  fcQSpinBox_virtualbase_timerEvent(self.h, event.h)

proc miqt_exec_callback_cQSpinBox_timerEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QSpinBoxVTable](vtbl)
  let self = QSpinBox(h: self)
  let slotval1 = gen_qcoreevent_types.QTimerEvent(h: event)
  vtbl[].timerEvent(self, slotval1)

proc QSpinBoxpaintEvent*(self: gen_qspinbox_types.QSpinBox, event: gen_qevent_types.QPaintEvent): void =
  fcQSpinBox_virtualbase_paintEvent(self.h, event.h)

proc miqt_exec_callback_cQSpinBox_paintEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QSpinBoxVTable](vtbl)
  let self = QSpinBox(h: self)
  let slotval1 = gen_qevent_types.QPaintEvent(h: event)
  vtbl[].paintEvent(self, slotval1)

proc QSpinBoxshowEvent*(self: gen_qspinbox_types.QSpinBox, event: gen_qevent_types.QShowEvent): void =
  fcQSpinBox_virtualbase_showEvent(self.h, event.h)

proc miqt_exec_callback_cQSpinBox_showEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QSpinBoxVTable](vtbl)
  let self = QSpinBox(h: self)
  let slotval1 = gen_qevent_types.QShowEvent(h: event)
  vtbl[].showEvent(self, slotval1)

proc QSpinBoxstepEnabled*(self: gen_qspinbox_types.QSpinBox, ): cint =
  cint(fcQSpinBox_virtualbase_stepEnabled(self.h))

proc miqt_exec_callback_cQSpinBox_stepEnabled(vtbl: pointer, self: pointer): cint {.cdecl.} =
  let vtbl = cast[ptr QSpinBoxVTable](vtbl)
  let self = QSpinBox(h: self)
  var virtualReturn = vtbl[].stepEnabled(self)
  cint(virtualReturn)

proc QSpinBoxdevType*(self: gen_qspinbox_types.QSpinBox, ): cint =
  fcQSpinBox_virtualbase_devType(self.h)

proc miqt_exec_callback_cQSpinBox_devType(vtbl: pointer, self: pointer): cint {.cdecl.} =
  let vtbl = cast[ptr QSpinBoxVTable](vtbl)
  let self = QSpinBox(h: self)
  var virtualReturn = vtbl[].devType(self)
  virtualReturn

proc QSpinBoxsetVisible*(self: gen_qspinbox_types.QSpinBox, visible: bool): void =
  fcQSpinBox_virtualbase_setVisible(self.h, visible)

proc miqt_exec_callback_cQSpinBox_setVisible(vtbl: pointer, self: pointer, visible: bool): void {.cdecl.} =
  let vtbl = cast[ptr QSpinBoxVTable](vtbl)
  let self = QSpinBox(h: self)
  let slotval1 = visible
  vtbl[].setVisible(self, slotval1)

proc QSpinBoxheightForWidth*(self: gen_qspinbox_types.QSpinBox, param1: cint): cint =
  fcQSpinBox_virtualbase_heightForWidth(self.h, param1)

proc miqt_exec_callback_cQSpinBox_heightForWidth(vtbl: pointer, self: pointer, param1: cint): cint {.cdecl.} =
  let vtbl = cast[ptr QSpinBoxVTable](vtbl)
  let self = QSpinBox(h: self)
  let slotval1 = param1
  var virtualReturn = vtbl[].heightForWidth(self, slotval1)
  virtualReturn

proc QSpinBoxhasHeightForWidth*(self: gen_qspinbox_types.QSpinBox, ): bool =
  fcQSpinBox_virtualbase_hasHeightForWidth(self.h)

proc miqt_exec_callback_cQSpinBox_hasHeightForWidth(vtbl: pointer, self: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QSpinBoxVTable](vtbl)
  let self = QSpinBox(h: self)
  var virtualReturn = vtbl[].hasHeightForWidth(self)
  virtualReturn

proc QSpinBoxpaintEngine*(self: gen_qspinbox_types.QSpinBox, ): gen_qpaintengine_types.QPaintEngine =
  gen_qpaintengine_types.QPaintEngine(h: fcQSpinBox_virtualbase_paintEngine(self.h))

proc miqt_exec_callback_cQSpinBox_paintEngine(vtbl: pointer, self: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QSpinBoxVTable](vtbl)
  let self = QSpinBox(h: self)
  var virtualReturn = vtbl[].paintEngine(self)
  virtualReturn.h

proc QSpinBoxmouseDoubleClickEvent*(self: gen_qspinbox_types.QSpinBox, event: gen_qevent_types.QMouseEvent): void =
  fcQSpinBox_virtualbase_mouseDoubleClickEvent(self.h, event.h)

proc miqt_exec_callback_cQSpinBox_mouseDoubleClickEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QSpinBoxVTable](vtbl)
  let self = QSpinBox(h: self)
  let slotval1 = gen_qevent_types.QMouseEvent(h: event)
  vtbl[].mouseDoubleClickEvent(self, slotval1)

proc QSpinBoxenterEvent*(self: gen_qspinbox_types.QSpinBox, event: gen_qcoreevent_types.QEvent): void =
  fcQSpinBox_virtualbase_enterEvent(self.h, event.h)

proc miqt_exec_callback_cQSpinBox_enterEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QSpinBoxVTable](vtbl)
  let self = QSpinBox(h: self)
  let slotval1 = gen_qcoreevent_types.QEvent(h: event)
  vtbl[].enterEvent(self, slotval1)

proc QSpinBoxleaveEvent*(self: gen_qspinbox_types.QSpinBox, event: gen_qcoreevent_types.QEvent): void =
  fcQSpinBox_virtualbase_leaveEvent(self.h, event.h)

proc miqt_exec_callback_cQSpinBox_leaveEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QSpinBoxVTable](vtbl)
  let self = QSpinBox(h: self)
  let slotval1 = gen_qcoreevent_types.QEvent(h: event)
  vtbl[].leaveEvent(self, slotval1)

proc QSpinBoxmoveEvent*(self: gen_qspinbox_types.QSpinBox, event: gen_qevent_types.QMoveEvent): void =
  fcQSpinBox_virtualbase_moveEvent(self.h, event.h)

proc miqt_exec_callback_cQSpinBox_moveEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QSpinBoxVTable](vtbl)
  let self = QSpinBox(h: self)
  let slotval1 = gen_qevent_types.QMoveEvent(h: event)
  vtbl[].moveEvent(self, slotval1)

proc QSpinBoxtabletEvent*(self: gen_qspinbox_types.QSpinBox, event: gen_qevent_types.QTabletEvent): void =
  fcQSpinBox_virtualbase_tabletEvent(self.h, event.h)

proc miqt_exec_callback_cQSpinBox_tabletEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QSpinBoxVTable](vtbl)
  let self = QSpinBox(h: self)
  let slotval1 = gen_qevent_types.QTabletEvent(h: event)
  vtbl[].tabletEvent(self, slotval1)

proc QSpinBoxactionEvent*(self: gen_qspinbox_types.QSpinBox, event: gen_qevent_types.QActionEvent): void =
  fcQSpinBox_virtualbase_actionEvent(self.h, event.h)

proc miqt_exec_callback_cQSpinBox_actionEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QSpinBoxVTable](vtbl)
  let self = QSpinBox(h: self)
  let slotval1 = gen_qevent_types.QActionEvent(h: event)
  vtbl[].actionEvent(self, slotval1)

proc QSpinBoxdragEnterEvent*(self: gen_qspinbox_types.QSpinBox, event: gen_qevent_types.QDragEnterEvent): void =
  fcQSpinBox_virtualbase_dragEnterEvent(self.h, event.h)

proc miqt_exec_callback_cQSpinBox_dragEnterEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QSpinBoxVTable](vtbl)
  let self = QSpinBox(h: self)
  let slotval1 = gen_qevent_types.QDragEnterEvent(h: event)
  vtbl[].dragEnterEvent(self, slotval1)

proc QSpinBoxdragMoveEvent*(self: gen_qspinbox_types.QSpinBox, event: gen_qevent_types.QDragMoveEvent): void =
  fcQSpinBox_virtualbase_dragMoveEvent(self.h, event.h)

proc miqt_exec_callback_cQSpinBox_dragMoveEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QSpinBoxVTable](vtbl)
  let self = QSpinBox(h: self)
  let slotval1 = gen_qevent_types.QDragMoveEvent(h: event)
  vtbl[].dragMoveEvent(self, slotval1)

proc QSpinBoxdragLeaveEvent*(self: gen_qspinbox_types.QSpinBox, event: gen_qevent_types.QDragLeaveEvent): void =
  fcQSpinBox_virtualbase_dragLeaveEvent(self.h, event.h)

proc miqt_exec_callback_cQSpinBox_dragLeaveEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QSpinBoxVTable](vtbl)
  let self = QSpinBox(h: self)
  let slotval1 = gen_qevent_types.QDragLeaveEvent(h: event)
  vtbl[].dragLeaveEvent(self, slotval1)

proc QSpinBoxdropEvent*(self: gen_qspinbox_types.QSpinBox, event: gen_qevent_types.QDropEvent): void =
  fcQSpinBox_virtualbase_dropEvent(self.h, event.h)

proc miqt_exec_callback_cQSpinBox_dropEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QSpinBoxVTable](vtbl)
  let self = QSpinBox(h: self)
  let slotval1 = gen_qevent_types.QDropEvent(h: event)
  vtbl[].dropEvent(self, slotval1)

proc QSpinBoxnativeEvent*(self: gen_qspinbox_types.QSpinBox, eventType: seq[byte], message: pointer, resultVal: ptr clong): bool =
  fcQSpinBox_virtualbase_nativeEvent(self.h, struct_miqt_string(data: cast[cstring](if len(eventType) == 0: nil else: unsafeAddr eventType[0]), len: csize_t(len(eventType))), message, resultVal)

proc miqt_exec_callback_cQSpinBox_nativeEvent(vtbl: pointer, self: pointer, eventType: struct_miqt_string, message: pointer, resultVal: ptr clong): bool {.cdecl.} =
  let vtbl = cast[ptr QSpinBoxVTable](vtbl)
  let self = QSpinBox(h: self)
  var veventType_bytearray = eventType
  var veventTypex_ret = @(toOpenArrayByte(veventType_bytearray.data, 0, int(veventType_bytearray.len)-1))
  c_free(veventType_bytearray.data)
  let slotval1 = veventTypex_ret
  let slotval2 = message
  let slotval3 = resultVal
  var virtualReturn = vtbl[].nativeEvent(self, slotval1, slotval2, slotval3)
  virtualReturn

proc QSpinBoxmetric*(self: gen_qspinbox_types.QSpinBox, param1: cint): cint =
  fcQSpinBox_virtualbase_metric(self.h, cint(param1))

proc miqt_exec_callback_cQSpinBox_metric(vtbl: pointer, self: pointer, param1: cint): cint {.cdecl.} =
  let vtbl = cast[ptr QSpinBoxVTable](vtbl)
  let self = QSpinBox(h: self)
  let slotval1 = cint(param1)
  var virtualReturn = vtbl[].metric(self, slotval1)
  virtualReturn

proc QSpinBoxinitPainter*(self: gen_qspinbox_types.QSpinBox, painter: gen_qpainter_types.QPainter): void =
  fcQSpinBox_virtualbase_initPainter(self.h, painter.h)

proc miqt_exec_callback_cQSpinBox_initPainter(vtbl: pointer, self: pointer, painter: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QSpinBoxVTable](vtbl)
  let self = QSpinBox(h: self)
  let slotval1 = gen_qpainter_types.QPainter(h: painter)
  vtbl[].initPainter(self, slotval1)

proc QSpinBoxredirected*(self: gen_qspinbox_types.QSpinBox, offset: gen_qpoint_types.QPoint): gen_qpaintdevice_types.QPaintDevice =
  gen_qpaintdevice_types.QPaintDevice(h: fcQSpinBox_virtualbase_redirected(self.h, offset.h))

proc miqt_exec_callback_cQSpinBox_redirected(vtbl: pointer, self: pointer, offset: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QSpinBoxVTable](vtbl)
  let self = QSpinBox(h: self)
  let slotval1 = gen_qpoint_types.QPoint(h: offset)
  var virtualReturn = vtbl[].redirected(self, slotval1)
  virtualReturn.h

proc QSpinBoxsharedPainter*(self: gen_qspinbox_types.QSpinBox, ): gen_qpainter_types.QPainter =
  gen_qpainter_types.QPainter(h: fcQSpinBox_virtualbase_sharedPainter(self.h))

proc miqt_exec_callback_cQSpinBox_sharedPainter(vtbl: pointer, self: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QSpinBoxVTable](vtbl)
  let self = QSpinBox(h: self)
  var virtualReturn = vtbl[].sharedPainter(self)
  virtualReturn.h

proc QSpinBoxinputMethodEvent*(self: gen_qspinbox_types.QSpinBox, param1: gen_qevent_types.QInputMethodEvent): void =
  fcQSpinBox_virtualbase_inputMethodEvent(self.h, param1.h)

proc miqt_exec_callback_cQSpinBox_inputMethodEvent(vtbl: pointer, self: pointer, param1: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QSpinBoxVTable](vtbl)
  let self = QSpinBox(h: self)
  let slotval1 = gen_qevent_types.QInputMethodEvent(h: param1)
  vtbl[].inputMethodEvent(self, slotval1)

proc QSpinBoxfocusNextPrevChild*(self: gen_qspinbox_types.QSpinBox, next: bool): bool =
  fcQSpinBox_virtualbase_focusNextPrevChild(self.h, next)

proc miqt_exec_callback_cQSpinBox_focusNextPrevChild(vtbl: pointer, self: pointer, next: bool): bool {.cdecl.} =
  let vtbl = cast[ptr QSpinBoxVTable](vtbl)
  let self = QSpinBox(h: self)
  let slotval1 = next
  var virtualReturn = vtbl[].focusNextPrevChild(self, slotval1)
  virtualReturn

proc QSpinBoxeventFilter*(self: gen_qspinbox_types.QSpinBox, watched: gen_qobject_types.QObject, event: gen_qcoreevent_types.QEvent): bool =
  fcQSpinBox_virtualbase_eventFilter(self.h, watched.h, event.h)

proc miqt_exec_callback_cQSpinBox_eventFilter(vtbl: pointer, self: pointer, watched: pointer, event: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QSpinBoxVTable](vtbl)
  let self = QSpinBox(h: self)
  let slotval1 = gen_qobject_types.QObject(h: watched)
  let slotval2 = gen_qcoreevent_types.QEvent(h: event)
  var virtualReturn = vtbl[].eventFilter(self, slotval1, slotval2)
  virtualReturn

proc QSpinBoxchildEvent*(self: gen_qspinbox_types.QSpinBox, event: gen_qcoreevent_types.QChildEvent): void =
  fcQSpinBox_virtualbase_childEvent(self.h, event.h)

proc miqt_exec_callback_cQSpinBox_childEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QSpinBoxVTable](vtbl)
  let self = QSpinBox(h: self)
  let slotval1 = gen_qcoreevent_types.QChildEvent(h: event)
  vtbl[].childEvent(self, slotval1)

proc QSpinBoxcustomEvent*(self: gen_qspinbox_types.QSpinBox, event: gen_qcoreevent_types.QEvent): void =
  fcQSpinBox_virtualbase_customEvent(self.h, event.h)

proc miqt_exec_callback_cQSpinBox_customEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QSpinBoxVTable](vtbl)
  let self = QSpinBox(h: self)
  let slotval1 = gen_qcoreevent_types.QEvent(h: event)
  vtbl[].customEvent(self, slotval1)

proc QSpinBoxconnectNotify*(self: gen_qspinbox_types.QSpinBox, signal: gen_qmetaobject_types.QMetaMethod): void =
  fcQSpinBox_virtualbase_connectNotify(self.h, signal.h)

proc miqt_exec_callback_cQSpinBox_connectNotify(vtbl: pointer, self: pointer, signal: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QSpinBoxVTable](vtbl)
  let self = QSpinBox(h: self)
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal)
  vtbl[].connectNotify(self, slotval1)

proc QSpinBoxdisconnectNotify*(self: gen_qspinbox_types.QSpinBox, signal: gen_qmetaobject_types.QMetaMethod): void =
  fcQSpinBox_virtualbase_disconnectNotify(self.h, signal.h)

proc miqt_exec_callback_cQSpinBox_disconnectNotify(vtbl: pointer, self: pointer, signal: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QSpinBoxVTable](vtbl)
  let self = QSpinBox(h: self)
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal)
  vtbl[].disconnectNotify(self, slotval1)

proc create*(T: type gen_qspinbox_types.QSpinBox,
    parent: gen_qwidget_types.QWidget,
    vtbl: ref QSpinBoxVTable = nil): gen_qspinbox_types.QSpinBox =
  let vtbl = if vtbl == nil: new QSpinBoxVTable else: vtbl
  GC_ref(vtbl)
  vtbl.vtbl.destructor = proc(vtbl: ptr cQSpinBoxVTable, _: ptr cQSpinBox) {.cdecl.} =
    let vtbl = cast[ref QSpinBoxVTable](vtbl)
    GC_unref(vtbl)
  if not isNil(vtbl.metaObject):
    vtbl[].vtbl.metaObject = miqt_exec_callback_cQSpinBox_metaObject
  if not isNil(vtbl.metacast):
    vtbl[].vtbl.metacast = miqt_exec_callback_cQSpinBox_metacast
  if not isNil(vtbl.metacall):
    vtbl[].vtbl.metacall = miqt_exec_callback_cQSpinBox_metacall
  if not isNil(vtbl.event):
    vtbl[].vtbl.event = miqt_exec_callback_cQSpinBox_event
  if not isNil(vtbl.validate):
    vtbl[].vtbl.validate = miqt_exec_callback_cQSpinBox_validate
  if not isNil(vtbl.valueFromText):
    vtbl[].vtbl.valueFromText = miqt_exec_callback_cQSpinBox_valueFromText
  if not isNil(vtbl.textFromValue):
    vtbl[].vtbl.textFromValue = miqt_exec_callback_cQSpinBox_textFromValue
  if not isNil(vtbl.fixup):
    vtbl[].vtbl.fixup = miqt_exec_callback_cQSpinBox_fixup
  if not isNil(vtbl.sizeHint):
    vtbl[].vtbl.sizeHint = miqt_exec_callback_cQSpinBox_sizeHint
  if not isNil(vtbl.minimumSizeHint):
    vtbl[].vtbl.minimumSizeHint = miqt_exec_callback_cQSpinBox_minimumSizeHint
  if not isNil(vtbl.inputMethodQuery):
    vtbl[].vtbl.inputMethodQuery = miqt_exec_callback_cQSpinBox_inputMethodQuery
  if not isNil(vtbl.stepBy):
    vtbl[].vtbl.stepBy = miqt_exec_callback_cQSpinBox_stepBy
  if not isNil(vtbl.clear):
    vtbl[].vtbl.clear = miqt_exec_callback_cQSpinBox_clear
  if not isNil(vtbl.resizeEvent):
    vtbl[].vtbl.resizeEvent = miqt_exec_callback_cQSpinBox_resizeEvent
  if not isNil(vtbl.keyPressEvent):
    vtbl[].vtbl.keyPressEvent = miqt_exec_callback_cQSpinBox_keyPressEvent
  if not isNil(vtbl.keyReleaseEvent):
    vtbl[].vtbl.keyReleaseEvent = miqt_exec_callback_cQSpinBox_keyReleaseEvent
  if not isNil(vtbl.wheelEvent):
    vtbl[].vtbl.wheelEvent = miqt_exec_callback_cQSpinBox_wheelEvent
  if not isNil(vtbl.focusInEvent):
    vtbl[].vtbl.focusInEvent = miqt_exec_callback_cQSpinBox_focusInEvent
  if not isNil(vtbl.focusOutEvent):
    vtbl[].vtbl.focusOutEvent = miqt_exec_callback_cQSpinBox_focusOutEvent
  if not isNil(vtbl.contextMenuEvent):
    vtbl[].vtbl.contextMenuEvent = miqt_exec_callback_cQSpinBox_contextMenuEvent
  if not isNil(vtbl.changeEvent):
    vtbl[].vtbl.changeEvent = miqt_exec_callback_cQSpinBox_changeEvent
  if not isNil(vtbl.closeEvent):
    vtbl[].vtbl.closeEvent = miqt_exec_callback_cQSpinBox_closeEvent
  if not isNil(vtbl.hideEvent):
    vtbl[].vtbl.hideEvent = miqt_exec_callback_cQSpinBox_hideEvent
  if not isNil(vtbl.mousePressEvent):
    vtbl[].vtbl.mousePressEvent = miqt_exec_callback_cQSpinBox_mousePressEvent
  if not isNil(vtbl.mouseReleaseEvent):
    vtbl[].vtbl.mouseReleaseEvent = miqt_exec_callback_cQSpinBox_mouseReleaseEvent
  if not isNil(vtbl.mouseMoveEvent):
    vtbl[].vtbl.mouseMoveEvent = miqt_exec_callback_cQSpinBox_mouseMoveEvent
  if not isNil(vtbl.timerEvent):
    vtbl[].vtbl.timerEvent = miqt_exec_callback_cQSpinBox_timerEvent
  if not isNil(vtbl.paintEvent):
    vtbl[].vtbl.paintEvent = miqt_exec_callback_cQSpinBox_paintEvent
  if not isNil(vtbl.showEvent):
    vtbl[].vtbl.showEvent = miqt_exec_callback_cQSpinBox_showEvent
  if not isNil(vtbl.stepEnabled):
    vtbl[].vtbl.stepEnabled = miqt_exec_callback_cQSpinBox_stepEnabled
  if not isNil(vtbl.devType):
    vtbl[].vtbl.devType = miqt_exec_callback_cQSpinBox_devType
  if not isNil(vtbl.setVisible):
    vtbl[].vtbl.setVisible = miqt_exec_callback_cQSpinBox_setVisible
  if not isNil(vtbl.heightForWidth):
    vtbl[].vtbl.heightForWidth = miqt_exec_callback_cQSpinBox_heightForWidth
  if not isNil(vtbl.hasHeightForWidth):
    vtbl[].vtbl.hasHeightForWidth = miqt_exec_callback_cQSpinBox_hasHeightForWidth
  if not isNil(vtbl.paintEngine):
    vtbl[].vtbl.paintEngine = miqt_exec_callback_cQSpinBox_paintEngine
  if not isNil(vtbl.mouseDoubleClickEvent):
    vtbl[].vtbl.mouseDoubleClickEvent = miqt_exec_callback_cQSpinBox_mouseDoubleClickEvent
  if not isNil(vtbl.enterEvent):
    vtbl[].vtbl.enterEvent = miqt_exec_callback_cQSpinBox_enterEvent
  if not isNil(vtbl.leaveEvent):
    vtbl[].vtbl.leaveEvent = miqt_exec_callback_cQSpinBox_leaveEvent
  if not isNil(vtbl.moveEvent):
    vtbl[].vtbl.moveEvent = miqt_exec_callback_cQSpinBox_moveEvent
  if not isNil(vtbl.tabletEvent):
    vtbl[].vtbl.tabletEvent = miqt_exec_callback_cQSpinBox_tabletEvent
  if not isNil(vtbl.actionEvent):
    vtbl[].vtbl.actionEvent = miqt_exec_callback_cQSpinBox_actionEvent
  if not isNil(vtbl.dragEnterEvent):
    vtbl[].vtbl.dragEnterEvent = miqt_exec_callback_cQSpinBox_dragEnterEvent
  if not isNil(vtbl.dragMoveEvent):
    vtbl[].vtbl.dragMoveEvent = miqt_exec_callback_cQSpinBox_dragMoveEvent
  if not isNil(vtbl.dragLeaveEvent):
    vtbl[].vtbl.dragLeaveEvent = miqt_exec_callback_cQSpinBox_dragLeaveEvent
  if not isNil(vtbl.dropEvent):
    vtbl[].vtbl.dropEvent = miqt_exec_callback_cQSpinBox_dropEvent
  if not isNil(vtbl.nativeEvent):
    vtbl[].vtbl.nativeEvent = miqt_exec_callback_cQSpinBox_nativeEvent
  if not isNil(vtbl.metric):
    vtbl[].vtbl.metric = miqt_exec_callback_cQSpinBox_metric
  if not isNil(vtbl.initPainter):
    vtbl[].vtbl.initPainter = miqt_exec_callback_cQSpinBox_initPainter
  if not isNil(vtbl.redirected):
    vtbl[].vtbl.redirected = miqt_exec_callback_cQSpinBox_redirected
  if not isNil(vtbl.sharedPainter):
    vtbl[].vtbl.sharedPainter = miqt_exec_callback_cQSpinBox_sharedPainter
  if not isNil(vtbl.inputMethodEvent):
    vtbl[].vtbl.inputMethodEvent = miqt_exec_callback_cQSpinBox_inputMethodEvent
  if not isNil(vtbl.focusNextPrevChild):
    vtbl[].vtbl.focusNextPrevChild = miqt_exec_callback_cQSpinBox_focusNextPrevChild
  if not isNil(vtbl.eventFilter):
    vtbl[].vtbl.eventFilter = miqt_exec_callback_cQSpinBox_eventFilter
  if not isNil(vtbl.childEvent):
    vtbl[].vtbl.childEvent = miqt_exec_callback_cQSpinBox_childEvent
  if not isNil(vtbl.customEvent):
    vtbl[].vtbl.customEvent = miqt_exec_callback_cQSpinBox_customEvent
  if not isNil(vtbl.connectNotify):
    vtbl[].vtbl.connectNotify = miqt_exec_callback_cQSpinBox_connectNotify
  if not isNil(vtbl.disconnectNotify):
    vtbl[].vtbl.disconnectNotify = miqt_exec_callback_cQSpinBox_disconnectNotify
  gen_qspinbox_types.QSpinBox(h: fcQSpinBox_new(addr(vtbl[]), parent.h))

proc create*(T: type gen_qspinbox_types.QSpinBox,
    vtbl: ref QSpinBoxVTable = nil): gen_qspinbox_types.QSpinBox =
  let vtbl = if vtbl == nil: new QSpinBoxVTable else: vtbl
  GC_ref(vtbl)
  vtbl.vtbl.destructor = proc(vtbl: ptr cQSpinBoxVTable, _: ptr cQSpinBox) {.cdecl.} =
    let vtbl = cast[ref QSpinBoxVTable](vtbl)
    GC_unref(vtbl)
  if not isNil(vtbl.metaObject):
    vtbl[].vtbl.metaObject = miqt_exec_callback_cQSpinBox_metaObject
  if not isNil(vtbl.metacast):
    vtbl[].vtbl.metacast = miqt_exec_callback_cQSpinBox_metacast
  if not isNil(vtbl.metacall):
    vtbl[].vtbl.metacall = miqt_exec_callback_cQSpinBox_metacall
  if not isNil(vtbl.event):
    vtbl[].vtbl.event = miqt_exec_callback_cQSpinBox_event
  if not isNil(vtbl.validate):
    vtbl[].vtbl.validate = miqt_exec_callback_cQSpinBox_validate
  if not isNil(vtbl.valueFromText):
    vtbl[].vtbl.valueFromText = miqt_exec_callback_cQSpinBox_valueFromText
  if not isNil(vtbl.textFromValue):
    vtbl[].vtbl.textFromValue = miqt_exec_callback_cQSpinBox_textFromValue
  if not isNil(vtbl.fixup):
    vtbl[].vtbl.fixup = miqt_exec_callback_cQSpinBox_fixup
  if not isNil(vtbl.sizeHint):
    vtbl[].vtbl.sizeHint = miqt_exec_callback_cQSpinBox_sizeHint
  if not isNil(vtbl.minimumSizeHint):
    vtbl[].vtbl.minimumSizeHint = miqt_exec_callback_cQSpinBox_minimumSizeHint
  if not isNil(vtbl.inputMethodQuery):
    vtbl[].vtbl.inputMethodQuery = miqt_exec_callback_cQSpinBox_inputMethodQuery
  if not isNil(vtbl.stepBy):
    vtbl[].vtbl.stepBy = miqt_exec_callback_cQSpinBox_stepBy
  if not isNil(vtbl.clear):
    vtbl[].vtbl.clear = miqt_exec_callback_cQSpinBox_clear
  if not isNil(vtbl.resizeEvent):
    vtbl[].vtbl.resizeEvent = miqt_exec_callback_cQSpinBox_resizeEvent
  if not isNil(vtbl.keyPressEvent):
    vtbl[].vtbl.keyPressEvent = miqt_exec_callback_cQSpinBox_keyPressEvent
  if not isNil(vtbl.keyReleaseEvent):
    vtbl[].vtbl.keyReleaseEvent = miqt_exec_callback_cQSpinBox_keyReleaseEvent
  if not isNil(vtbl.wheelEvent):
    vtbl[].vtbl.wheelEvent = miqt_exec_callback_cQSpinBox_wheelEvent
  if not isNil(vtbl.focusInEvent):
    vtbl[].vtbl.focusInEvent = miqt_exec_callback_cQSpinBox_focusInEvent
  if not isNil(vtbl.focusOutEvent):
    vtbl[].vtbl.focusOutEvent = miqt_exec_callback_cQSpinBox_focusOutEvent
  if not isNil(vtbl.contextMenuEvent):
    vtbl[].vtbl.contextMenuEvent = miqt_exec_callback_cQSpinBox_contextMenuEvent
  if not isNil(vtbl.changeEvent):
    vtbl[].vtbl.changeEvent = miqt_exec_callback_cQSpinBox_changeEvent
  if not isNil(vtbl.closeEvent):
    vtbl[].vtbl.closeEvent = miqt_exec_callback_cQSpinBox_closeEvent
  if not isNil(vtbl.hideEvent):
    vtbl[].vtbl.hideEvent = miqt_exec_callback_cQSpinBox_hideEvent
  if not isNil(vtbl.mousePressEvent):
    vtbl[].vtbl.mousePressEvent = miqt_exec_callback_cQSpinBox_mousePressEvent
  if not isNil(vtbl.mouseReleaseEvent):
    vtbl[].vtbl.mouseReleaseEvent = miqt_exec_callback_cQSpinBox_mouseReleaseEvent
  if not isNil(vtbl.mouseMoveEvent):
    vtbl[].vtbl.mouseMoveEvent = miqt_exec_callback_cQSpinBox_mouseMoveEvent
  if not isNil(vtbl.timerEvent):
    vtbl[].vtbl.timerEvent = miqt_exec_callback_cQSpinBox_timerEvent
  if not isNil(vtbl.paintEvent):
    vtbl[].vtbl.paintEvent = miqt_exec_callback_cQSpinBox_paintEvent
  if not isNil(vtbl.showEvent):
    vtbl[].vtbl.showEvent = miqt_exec_callback_cQSpinBox_showEvent
  if not isNil(vtbl.stepEnabled):
    vtbl[].vtbl.stepEnabled = miqt_exec_callback_cQSpinBox_stepEnabled
  if not isNil(vtbl.devType):
    vtbl[].vtbl.devType = miqt_exec_callback_cQSpinBox_devType
  if not isNil(vtbl.setVisible):
    vtbl[].vtbl.setVisible = miqt_exec_callback_cQSpinBox_setVisible
  if not isNil(vtbl.heightForWidth):
    vtbl[].vtbl.heightForWidth = miqt_exec_callback_cQSpinBox_heightForWidth
  if not isNil(vtbl.hasHeightForWidth):
    vtbl[].vtbl.hasHeightForWidth = miqt_exec_callback_cQSpinBox_hasHeightForWidth
  if not isNil(vtbl.paintEngine):
    vtbl[].vtbl.paintEngine = miqt_exec_callback_cQSpinBox_paintEngine
  if not isNil(vtbl.mouseDoubleClickEvent):
    vtbl[].vtbl.mouseDoubleClickEvent = miqt_exec_callback_cQSpinBox_mouseDoubleClickEvent
  if not isNil(vtbl.enterEvent):
    vtbl[].vtbl.enterEvent = miqt_exec_callback_cQSpinBox_enterEvent
  if not isNil(vtbl.leaveEvent):
    vtbl[].vtbl.leaveEvent = miqt_exec_callback_cQSpinBox_leaveEvent
  if not isNil(vtbl.moveEvent):
    vtbl[].vtbl.moveEvent = miqt_exec_callback_cQSpinBox_moveEvent
  if not isNil(vtbl.tabletEvent):
    vtbl[].vtbl.tabletEvent = miqt_exec_callback_cQSpinBox_tabletEvent
  if not isNil(vtbl.actionEvent):
    vtbl[].vtbl.actionEvent = miqt_exec_callback_cQSpinBox_actionEvent
  if not isNil(vtbl.dragEnterEvent):
    vtbl[].vtbl.dragEnterEvent = miqt_exec_callback_cQSpinBox_dragEnterEvent
  if not isNil(vtbl.dragMoveEvent):
    vtbl[].vtbl.dragMoveEvent = miqt_exec_callback_cQSpinBox_dragMoveEvent
  if not isNil(vtbl.dragLeaveEvent):
    vtbl[].vtbl.dragLeaveEvent = miqt_exec_callback_cQSpinBox_dragLeaveEvent
  if not isNil(vtbl.dropEvent):
    vtbl[].vtbl.dropEvent = miqt_exec_callback_cQSpinBox_dropEvent
  if not isNil(vtbl.nativeEvent):
    vtbl[].vtbl.nativeEvent = miqt_exec_callback_cQSpinBox_nativeEvent
  if not isNil(vtbl.metric):
    vtbl[].vtbl.metric = miqt_exec_callback_cQSpinBox_metric
  if not isNil(vtbl.initPainter):
    vtbl[].vtbl.initPainter = miqt_exec_callback_cQSpinBox_initPainter
  if not isNil(vtbl.redirected):
    vtbl[].vtbl.redirected = miqt_exec_callback_cQSpinBox_redirected
  if not isNil(vtbl.sharedPainter):
    vtbl[].vtbl.sharedPainter = miqt_exec_callback_cQSpinBox_sharedPainter
  if not isNil(vtbl.inputMethodEvent):
    vtbl[].vtbl.inputMethodEvent = miqt_exec_callback_cQSpinBox_inputMethodEvent
  if not isNil(vtbl.focusNextPrevChild):
    vtbl[].vtbl.focusNextPrevChild = miqt_exec_callback_cQSpinBox_focusNextPrevChild
  if not isNil(vtbl.eventFilter):
    vtbl[].vtbl.eventFilter = miqt_exec_callback_cQSpinBox_eventFilter
  if not isNil(vtbl.childEvent):
    vtbl[].vtbl.childEvent = miqt_exec_callback_cQSpinBox_childEvent
  if not isNil(vtbl.customEvent):
    vtbl[].vtbl.customEvent = miqt_exec_callback_cQSpinBox_customEvent
  if not isNil(vtbl.connectNotify):
    vtbl[].vtbl.connectNotify = miqt_exec_callback_cQSpinBox_connectNotify
  if not isNil(vtbl.disconnectNotify):
    vtbl[].vtbl.disconnectNotify = miqt_exec_callback_cQSpinBox_disconnectNotify
  gen_qspinbox_types.QSpinBox(h: fcQSpinBox_new2(addr(vtbl[]), ))

proc staticMetaObject*(_: type gen_qspinbox_types.QSpinBox): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQSpinBox_staticMetaObject())
proc delete*(self: gen_qspinbox_types.QSpinBox) =
  fcQSpinBox_delete(self.h)
proc metaObject*(self: gen_qspinbox_types.QDoubleSpinBox, ): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQDoubleSpinBox_metaObject(self.h))

proc metacast*(self: gen_qspinbox_types.QDoubleSpinBox, param1: cstring): pointer =
  fcQDoubleSpinBox_metacast(self.h, param1)

proc metacall*(self: gen_qspinbox_types.QDoubleSpinBox, param1: cint, param2: cint, param3: pointer): cint =
  fcQDoubleSpinBox_metacall(self.h, cint(param1), param2, param3)

proc tr*(_: type gen_qspinbox_types.QDoubleSpinBox, s: cstring): string =
  let v_ms = fcQDoubleSpinBox_tr(s)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc trUtf8*(_: type gen_qspinbox_types.QDoubleSpinBox, s: cstring): string =
  let v_ms = fcQDoubleSpinBox_trUtf8(s)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc value*(self: gen_qspinbox_types.QDoubleSpinBox, ): float64 =
  fcQDoubleSpinBox_value(self.h)

proc prefix*(self: gen_qspinbox_types.QDoubleSpinBox, ): string =
  let v_ms = fcQDoubleSpinBox_prefix(self.h)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc setPrefix*(self: gen_qspinbox_types.QDoubleSpinBox, prefix: string): void =
  fcQDoubleSpinBox_setPrefix(self.h, struct_miqt_string(data: prefix, len: csize_t(len(prefix))))

proc suffix*(self: gen_qspinbox_types.QDoubleSpinBox, ): string =
  let v_ms = fcQDoubleSpinBox_suffix(self.h)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc setSuffix*(self: gen_qspinbox_types.QDoubleSpinBox, suffix: string): void =
  fcQDoubleSpinBox_setSuffix(self.h, struct_miqt_string(data: suffix, len: csize_t(len(suffix))))

proc cleanText*(self: gen_qspinbox_types.QDoubleSpinBox, ): string =
  let v_ms = fcQDoubleSpinBox_cleanText(self.h)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc singleStep*(self: gen_qspinbox_types.QDoubleSpinBox, ): float64 =
  fcQDoubleSpinBox_singleStep(self.h)

proc setSingleStep*(self: gen_qspinbox_types.QDoubleSpinBox, val: float64): void =
  fcQDoubleSpinBox_setSingleStep(self.h, val)

proc minimum*(self: gen_qspinbox_types.QDoubleSpinBox, ): float64 =
  fcQDoubleSpinBox_minimum(self.h)

proc setMinimum*(self: gen_qspinbox_types.QDoubleSpinBox, min: float64): void =
  fcQDoubleSpinBox_setMinimum(self.h, min)

proc maximum*(self: gen_qspinbox_types.QDoubleSpinBox, ): float64 =
  fcQDoubleSpinBox_maximum(self.h)

proc setMaximum*(self: gen_qspinbox_types.QDoubleSpinBox, max: float64): void =
  fcQDoubleSpinBox_setMaximum(self.h, max)

proc setRange*(self: gen_qspinbox_types.QDoubleSpinBox, min: float64, max: float64): void =
  fcQDoubleSpinBox_setRange(self.h, min, max)

proc stepType*(self: gen_qspinbox_types.QDoubleSpinBox, ): cint =
  cint(fcQDoubleSpinBox_stepType(self.h))

proc setStepType*(self: gen_qspinbox_types.QDoubleSpinBox, stepType: cint): void =
  fcQDoubleSpinBox_setStepType(self.h, cint(stepType))

proc decimals*(self: gen_qspinbox_types.QDoubleSpinBox, ): cint =
  fcQDoubleSpinBox_decimals(self.h)

proc setDecimals*(self: gen_qspinbox_types.QDoubleSpinBox, prec: cint): void =
  fcQDoubleSpinBox_setDecimals(self.h, prec)

proc validate*(self: gen_qspinbox_types.QDoubleSpinBox, input: string, pos: ptr cint): cint =
  cint(fcQDoubleSpinBox_validate(self.h, struct_miqt_string(data: input, len: csize_t(len(input))), pos))

proc valueFromText*(self: gen_qspinbox_types.QDoubleSpinBox, text: string): float64 =
  fcQDoubleSpinBox_valueFromText(self.h, struct_miqt_string(data: text, len: csize_t(len(text))))

proc textFromValue*(self: gen_qspinbox_types.QDoubleSpinBox, val: float64): string =
  let v_ms = fcQDoubleSpinBox_textFromValue(self.h, val)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc fixup*(self: gen_qspinbox_types.QDoubleSpinBox, str: string): void =
  fcQDoubleSpinBox_fixup(self.h, struct_miqt_string(data: str, len: csize_t(len(str))))

proc setValue*(self: gen_qspinbox_types.QDoubleSpinBox, val: float64): void =
  fcQDoubleSpinBox_setValue(self.h, val)

proc valueChanged*(self: gen_qspinbox_types.QDoubleSpinBox, param1: float64): void =
  fcQDoubleSpinBox_valueChanged(self.h, param1)

type QDoubleSpinBoxvalueChangedSlot* = proc(param1: float64)
proc miqt_exec_callback_cQDoubleSpinBox_valueChanged(slot: int, param1: float64) {.exportc: "miqt_exec_callback_QDoubleSpinBox_valueChanged".} =
  let nimfunc = cast[ptr QDoubleSpinBoxvalueChangedSlot](cast[pointer](slot))
  let slotval1 = param1

  nimfunc[](slotval1)

proc onvalueChanged*(self: gen_qspinbox_types.QDoubleSpinBox, slot: QDoubleSpinBoxvalueChangedSlot) =
  var tmp = new QDoubleSpinBoxvalueChangedSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQDoubleSpinBox_connect_valueChanged(self.h, cast[int](addr tmp[]))

proc textChanged*(self: gen_qspinbox_types.QDoubleSpinBox, param1: string): void =
  fcQDoubleSpinBox_textChanged(self.h, struct_miqt_string(data: param1, len: csize_t(len(param1))))

type QDoubleSpinBoxtextChangedSlot* = proc(param1: string)
proc miqt_exec_callback_cQDoubleSpinBox_textChanged(slot: int, param1: struct_miqt_string) {.exportc: "miqt_exec_callback_QDoubleSpinBox_textChanged".} =
  let nimfunc = cast[ptr QDoubleSpinBoxtextChangedSlot](cast[pointer](slot))
  let vparam1_ms = param1
  let vparam1x_ret = string.fromBytes(toOpenArrayByte(vparam1_ms.data, 0, int(vparam1_ms.len)-1))
  c_free(vparam1_ms.data)
  let slotval1 = vparam1x_ret

  nimfunc[](slotval1)

proc ontextChanged*(self: gen_qspinbox_types.QDoubleSpinBox, slot: QDoubleSpinBoxtextChangedSlot) =
  var tmp = new QDoubleSpinBoxtextChangedSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQDoubleSpinBox_connect_textChanged(self.h, cast[int](addr tmp[]))

proc valueChanged*(self: gen_qspinbox_types.QDoubleSpinBox, param1: string): void =
  fcQDoubleSpinBox_valueChangedWithQString(self.h, struct_miqt_string(data: param1, len: csize_t(len(param1))))

type QDoubleSpinBoxvalueChangedWithQStringSlot* = proc(param1: string)
proc miqt_exec_callback_cQDoubleSpinBox_valueChangedWithQString(slot: int, param1: struct_miqt_string) {.exportc: "miqt_exec_callback_QDoubleSpinBox_valueChangedWithQString".} =
  let nimfunc = cast[ptr QDoubleSpinBoxvalueChangedWithQStringSlot](cast[pointer](slot))
  let vparam1_ms = param1
  let vparam1x_ret = string.fromBytes(toOpenArrayByte(vparam1_ms.data, 0, int(vparam1_ms.len)-1))
  c_free(vparam1_ms.data)
  let slotval1 = vparam1x_ret

  nimfunc[](slotval1)

proc onvalueChanged*(self: gen_qspinbox_types.QDoubleSpinBox, slot: QDoubleSpinBoxvalueChangedWithQStringSlot) =
  var tmp = new QDoubleSpinBoxvalueChangedWithQStringSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQDoubleSpinBox_connect_valueChangedWithQString(self.h, cast[int](addr tmp[]))

proc tr*(_: type gen_qspinbox_types.QDoubleSpinBox, s: cstring, c: cstring): string =
  let v_ms = fcQDoubleSpinBox_tr2(s, c)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc tr*(_: type gen_qspinbox_types.QDoubleSpinBox, s: cstring, c: cstring, n: cint): string =
  let v_ms = fcQDoubleSpinBox_tr3(s, c, n)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc trUtf8*(_: type gen_qspinbox_types.QDoubleSpinBox, s: cstring, c: cstring): string =
  let v_ms = fcQDoubleSpinBox_trUtf82(s, c)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc trUtf8*(_: type gen_qspinbox_types.QDoubleSpinBox, s: cstring, c: cstring, n: cint): string =
  let v_ms = fcQDoubleSpinBox_trUtf83(s, c, n)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

type QDoubleSpinBoxmetaObjectProc* = proc(self: QDoubleSpinBox): gen_qobjectdefs_types.QMetaObject {.raises: [], gcsafe.}
type QDoubleSpinBoxmetacastProc* = proc(self: QDoubleSpinBox, param1: cstring): pointer {.raises: [], gcsafe.}
type QDoubleSpinBoxmetacallProc* = proc(self: QDoubleSpinBox, param1: cint, param2: cint, param3: pointer): cint {.raises: [], gcsafe.}
type QDoubleSpinBoxvalidateProc* = proc(self: QDoubleSpinBox, input: string, pos: ptr cint): cint {.raises: [], gcsafe.}
type QDoubleSpinBoxvalueFromTextProc* = proc(self: QDoubleSpinBox, text: string): float64 {.raises: [], gcsafe.}
type QDoubleSpinBoxtextFromValueProc* = proc(self: QDoubleSpinBox, val: float64): string {.raises: [], gcsafe.}
type QDoubleSpinBoxfixupProc* = proc(self: QDoubleSpinBox, str: string): void {.raises: [], gcsafe.}
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
type QDoubleSpinBoxnativeEventProc* = proc(self: QDoubleSpinBox, eventType: seq[byte], message: pointer, resultVal: ptr clong): bool {.raises: [], gcsafe.}
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
type QDoubleSpinBoxVTable* = object
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
proc QDoubleSpinBoxmetaObject*(self: gen_qspinbox_types.QDoubleSpinBox, ): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQDoubleSpinBox_virtualbase_metaObject(self.h))

proc miqt_exec_callback_cQDoubleSpinBox_metaObject(vtbl: pointer, self: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QDoubleSpinBoxVTable](vtbl)
  let self = QDoubleSpinBox(h: self)
  var virtualReturn = vtbl[].metaObject(self)
  virtualReturn.h

proc QDoubleSpinBoxmetacast*(self: gen_qspinbox_types.QDoubleSpinBox, param1: cstring): pointer =
  fcQDoubleSpinBox_virtualbase_metacast(self.h, param1)

proc miqt_exec_callback_cQDoubleSpinBox_metacast(vtbl: pointer, self: pointer, param1: cstring): pointer {.cdecl.} =
  let vtbl = cast[ptr QDoubleSpinBoxVTable](vtbl)
  let self = QDoubleSpinBox(h: self)
  let slotval1 = (param1)
  var virtualReturn = vtbl[].metacast(self, slotval1)
  virtualReturn

proc QDoubleSpinBoxmetacall*(self: gen_qspinbox_types.QDoubleSpinBox, param1: cint, param2: cint, param3: pointer): cint =
  fcQDoubleSpinBox_virtualbase_metacall(self.h, cint(param1), param2, param3)

proc miqt_exec_callback_cQDoubleSpinBox_metacall(vtbl: pointer, self: pointer, param1: cint, param2: cint, param3: pointer): cint {.cdecl.} =
  let vtbl = cast[ptr QDoubleSpinBoxVTable](vtbl)
  let self = QDoubleSpinBox(h: self)
  let slotval1 = cint(param1)
  let slotval2 = param2
  let slotval3 = param3
  var virtualReturn = vtbl[].metacall(self, slotval1, slotval2, slotval3)
  virtualReturn

proc QDoubleSpinBoxvalidate*(self: gen_qspinbox_types.QDoubleSpinBox, input: string, pos: ptr cint): cint =
  cint(fcQDoubleSpinBox_virtualbase_validate(self.h, struct_miqt_string(data: input, len: csize_t(len(input))), pos))

proc miqt_exec_callback_cQDoubleSpinBox_validate(vtbl: pointer, self: pointer, input: struct_miqt_string, pos: ptr cint): cint {.cdecl.} =
  let vtbl = cast[ptr QDoubleSpinBoxVTable](vtbl)
  let self = QDoubleSpinBox(h: self)
  let vinput_ms = input
  let vinputx_ret = string.fromBytes(toOpenArrayByte(vinput_ms.data, 0, int(vinput_ms.len)-1))
  c_free(vinput_ms.data)
  let slotval1 = vinputx_ret
  let slotval2 = pos
  var virtualReturn = vtbl[].validate(self, slotval1, slotval2)
  cint(virtualReturn)

proc QDoubleSpinBoxvalueFromText*(self: gen_qspinbox_types.QDoubleSpinBox, text: string): float64 =
  fcQDoubleSpinBox_virtualbase_valueFromText(self.h, struct_miqt_string(data: text, len: csize_t(len(text))))

proc miqt_exec_callback_cQDoubleSpinBox_valueFromText(vtbl: pointer, self: pointer, text: struct_miqt_string): float64 {.cdecl.} =
  let vtbl = cast[ptr QDoubleSpinBoxVTable](vtbl)
  let self = QDoubleSpinBox(h: self)
  let vtext_ms = text
  let vtextx_ret = string.fromBytes(toOpenArrayByte(vtext_ms.data, 0, int(vtext_ms.len)-1))
  c_free(vtext_ms.data)
  let slotval1 = vtextx_ret
  var virtualReturn = vtbl[].valueFromText(self, slotval1)
  virtualReturn

proc QDoubleSpinBoxtextFromValue*(self: gen_qspinbox_types.QDoubleSpinBox, val: float64): string =
  let v_ms = fcQDoubleSpinBox_virtualbase_textFromValue(self.h, val)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc miqt_exec_callback_cQDoubleSpinBox_textFromValue(vtbl: pointer, self: pointer, val: float64): struct_miqt_string {.cdecl.} =
  let vtbl = cast[ptr QDoubleSpinBoxVTable](vtbl)
  let self = QDoubleSpinBox(h: self)
  let slotval1 = val
  var virtualReturn = vtbl[].textFromValue(self, slotval1)
  struct_miqt_string(data: virtualReturn, len: csize_t(len(virtualReturn)))

proc QDoubleSpinBoxfixup*(self: gen_qspinbox_types.QDoubleSpinBox, str: string): void =
  fcQDoubleSpinBox_virtualbase_fixup(self.h, struct_miqt_string(data: str, len: csize_t(len(str))))

proc miqt_exec_callback_cQDoubleSpinBox_fixup(vtbl: pointer, self: pointer, str: struct_miqt_string): void {.cdecl.} =
  let vtbl = cast[ptr QDoubleSpinBoxVTable](vtbl)
  let self = QDoubleSpinBox(h: self)
  let vstr_ms = str
  let vstrx_ret = string.fromBytes(toOpenArrayByte(vstr_ms.data, 0, int(vstr_ms.len)-1))
  c_free(vstr_ms.data)
  let slotval1 = vstrx_ret
  vtbl[].fixup(self, slotval1)

proc QDoubleSpinBoxsizeHint*(self: gen_qspinbox_types.QDoubleSpinBox, ): gen_qsize_types.QSize =
  gen_qsize_types.QSize(h: fcQDoubleSpinBox_virtualbase_sizeHint(self.h))

proc miqt_exec_callback_cQDoubleSpinBox_sizeHint(vtbl: pointer, self: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QDoubleSpinBoxVTable](vtbl)
  let self = QDoubleSpinBox(h: self)
  var virtualReturn = vtbl[].sizeHint(self)
  virtualReturn.h

proc QDoubleSpinBoxminimumSizeHint*(self: gen_qspinbox_types.QDoubleSpinBox, ): gen_qsize_types.QSize =
  gen_qsize_types.QSize(h: fcQDoubleSpinBox_virtualbase_minimumSizeHint(self.h))

proc miqt_exec_callback_cQDoubleSpinBox_minimumSizeHint(vtbl: pointer, self: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QDoubleSpinBoxVTable](vtbl)
  let self = QDoubleSpinBox(h: self)
  var virtualReturn = vtbl[].minimumSizeHint(self)
  virtualReturn.h

proc QDoubleSpinBoxevent*(self: gen_qspinbox_types.QDoubleSpinBox, event: gen_qcoreevent_types.QEvent): bool =
  fcQDoubleSpinBox_virtualbase_event(self.h, event.h)

proc miqt_exec_callback_cQDoubleSpinBox_event(vtbl: pointer, self: pointer, event: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QDoubleSpinBoxVTable](vtbl)
  let self = QDoubleSpinBox(h: self)
  let slotval1 = gen_qcoreevent_types.QEvent(h: event)
  var virtualReturn = vtbl[].event(self, slotval1)
  virtualReturn

proc QDoubleSpinBoxinputMethodQuery*(self: gen_qspinbox_types.QDoubleSpinBox, param1: cint): gen_qvariant_types.QVariant =
  gen_qvariant_types.QVariant(h: fcQDoubleSpinBox_virtualbase_inputMethodQuery(self.h, cint(param1)))

proc miqt_exec_callback_cQDoubleSpinBox_inputMethodQuery(vtbl: pointer, self: pointer, param1: cint): pointer {.cdecl.} =
  let vtbl = cast[ptr QDoubleSpinBoxVTable](vtbl)
  let self = QDoubleSpinBox(h: self)
  let slotval1 = cint(param1)
  var virtualReturn = vtbl[].inputMethodQuery(self, slotval1)
  virtualReturn.h

proc QDoubleSpinBoxstepBy*(self: gen_qspinbox_types.QDoubleSpinBox, steps: cint): void =
  fcQDoubleSpinBox_virtualbase_stepBy(self.h, steps)

proc miqt_exec_callback_cQDoubleSpinBox_stepBy(vtbl: pointer, self: pointer, steps: cint): void {.cdecl.} =
  let vtbl = cast[ptr QDoubleSpinBoxVTable](vtbl)
  let self = QDoubleSpinBox(h: self)
  let slotval1 = steps
  vtbl[].stepBy(self, slotval1)

proc QDoubleSpinBoxclear*(self: gen_qspinbox_types.QDoubleSpinBox, ): void =
  fcQDoubleSpinBox_virtualbase_clear(self.h)

proc miqt_exec_callback_cQDoubleSpinBox_clear(vtbl: pointer, self: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QDoubleSpinBoxVTable](vtbl)
  let self = QDoubleSpinBox(h: self)
  vtbl[].clear(self)

proc QDoubleSpinBoxresizeEvent*(self: gen_qspinbox_types.QDoubleSpinBox, event: gen_qevent_types.QResizeEvent): void =
  fcQDoubleSpinBox_virtualbase_resizeEvent(self.h, event.h)

proc miqt_exec_callback_cQDoubleSpinBox_resizeEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QDoubleSpinBoxVTable](vtbl)
  let self = QDoubleSpinBox(h: self)
  let slotval1 = gen_qevent_types.QResizeEvent(h: event)
  vtbl[].resizeEvent(self, slotval1)

proc QDoubleSpinBoxkeyPressEvent*(self: gen_qspinbox_types.QDoubleSpinBox, event: gen_qevent_types.QKeyEvent): void =
  fcQDoubleSpinBox_virtualbase_keyPressEvent(self.h, event.h)

proc miqt_exec_callback_cQDoubleSpinBox_keyPressEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QDoubleSpinBoxVTable](vtbl)
  let self = QDoubleSpinBox(h: self)
  let slotval1 = gen_qevent_types.QKeyEvent(h: event)
  vtbl[].keyPressEvent(self, slotval1)

proc QDoubleSpinBoxkeyReleaseEvent*(self: gen_qspinbox_types.QDoubleSpinBox, event: gen_qevent_types.QKeyEvent): void =
  fcQDoubleSpinBox_virtualbase_keyReleaseEvent(self.h, event.h)

proc miqt_exec_callback_cQDoubleSpinBox_keyReleaseEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QDoubleSpinBoxVTable](vtbl)
  let self = QDoubleSpinBox(h: self)
  let slotval1 = gen_qevent_types.QKeyEvent(h: event)
  vtbl[].keyReleaseEvent(self, slotval1)

proc QDoubleSpinBoxwheelEvent*(self: gen_qspinbox_types.QDoubleSpinBox, event: gen_qevent_types.QWheelEvent): void =
  fcQDoubleSpinBox_virtualbase_wheelEvent(self.h, event.h)

proc miqt_exec_callback_cQDoubleSpinBox_wheelEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QDoubleSpinBoxVTable](vtbl)
  let self = QDoubleSpinBox(h: self)
  let slotval1 = gen_qevent_types.QWheelEvent(h: event)
  vtbl[].wheelEvent(self, slotval1)

proc QDoubleSpinBoxfocusInEvent*(self: gen_qspinbox_types.QDoubleSpinBox, event: gen_qevent_types.QFocusEvent): void =
  fcQDoubleSpinBox_virtualbase_focusInEvent(self.h, event.h)

proc miqt_exec_callback_cQDoubleSpinBox_focusInEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QDoubleSpinBoxVTable](vtbl)
  let self = QDoubleSpinBox(h: self)
  let slotval1 = gen_qevent_types.QFocusEvent(h: event)
  vtbl[].focusInEvent(self, slotval1)

proc QDoubleSpinBoxfocusOutEvent*(self: gen_qspinbox_types.QDoubleSpinBox, event: gen_qevent_types.QFocusEvent): void =
  fcQDoubleSpinBox_virtualbase_focusOutEvent(self.h, event.h)

proc miqt_exec_callback_cQDoubleSpinBox_focusOutEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QDoubleSpinBoxVTable](vtbl)
  let self = QDoubleSpinBox(h: self)
  let slotval1 = gen_qevent_types.QFocusEvent(h: event)
  vtbl[].focusOutEvent(self, slotval1)

proc QDoubleSpinBoxcontextMenuEvent*(self: gen_qspinbox_types.QDoubleSpinBox, event: gen_qevent_types.QContextMenuEvent): void =
  fcQDoubleSpinBox_virtualbase_contextMenuEvent(self.h, event.h)

proc miqt_exec_callback_cQDoubleSpinBox_contextMenuEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QDoubleSpinBoxVTable](vtbl)
  let self = QDoubleSpinBox(h: self)
  let slotval1 = gen_qevent_types.QContextMenuEvent(h: event)
  vtbl[].contextMenuEvent(self, slotval1)

proc QDoubleSpinBoxchangeEvent*(self: gen_qspinbox_types.QDoubleSpinBox, event: gen_qcoreevent_types.QEvent): void =
  fcQDoubleSpinBox_virtualbase_changeEvent(self.h, event.h)

proc miqt_exec_callback_cQDoubleSpinBox_changeEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QDoubleSpinBoxVTable](vtbl)
  let self = QDoubleSpinBox(h: self)
  let slotval1 = gen_qcoreevent_types.QEvent(h: event)
  vtbl[].changeEvent(self, slotval1)

proc QDoubleSpinBoxcloseEvent*(self: gen_qspinbox_types.QDoubleSpinBox, event: gen_qevent_types.QCloseEvent): void =
  fcQDoubleSpinBox_virtualbase_closeEvent(self.h, event.h)

proc miqt_exec_callback_cQDoubleSpinBox_closeEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QDoubleSpinBoxVTable](vtbl)
  let self = QDoubleSpinBox(h: self)
  let slotval1 = gen_qevent_types.QCloseEvent(h: event)
  vtbl[].closeEvent(self, slotval1)

proc QDoubleSpinBoxhideEvent*(self: gen_qspinbox_types.QDoubleSpinBox, event: gen_qevent_types.QHideEvent): void =
  fcQDoubleSpinBox_virtualbase_hideEvent(self.h, event.h)

proc miqt_exec_callback_cQDoubleSpinBox_hideEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QDoubleSpinBoxVTable](vtbl)
  let self = QDoubleSpinBox(h: self)
  let slotval1 = gen_qevent_types.QHideEvent(h: event)
  vtbl[].hideEvent(self, slotval1)

proc QDoubleSpinBoxmousePressEvent*(self: gen_qspinbox_types.QDoubleSpinBox, event: gen_qevent_types.QMouseEvent): void =
  fcQDoubleSpinBox_virtualbase_mousePressEvent(self.h, event.h)

proc miqt_exec_callback_cQDoubleSpinBox_mousePressEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QDoubleSpinBoxVTable](vtbl)
  let self = QDoubleSpinBox(h: self)
  let slotval1 = gen_qevent_types.QMouseEvent(h: event)
  vtbl[].mousePressEvent(self, slotval1)

proc QDoubleSpinBoxmouseReleaseEvent*(self: gen_qspinbox_types.QDoubleSpinBox, event: gen_qevent_types.QMouseEvent): void =
  fcQDoubleSpinBox_virtualbase_mouseReleaseEvent(self.h, event.h)

proc miqt_exec_callback_cQDoubleSpinBox_mouseReleaseEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QDoubleSpinBoxVTable](vtbl)
  let self = QDoubleSpinBox(h: self)
  let slotval1 = gen_qevent_types.QMouseEvent(h: event)
  vtbl[].mouseReleaseEvent(self, slotval1)

proc QDoubleSpinBoxmouseMoveEvent*(self: gen_qspinbox_types.QDoubleSpinBox, event: gen_qevent_types.QMouseEvent): void =
  fcQDoubleSpinBox_virtualbase_mouseMoveEvent(self.h, event.h)

proc miqt_exec_callback_cQDoubleSpinBox_mouseMoveEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QDoubleSpinBoxVTable](vtbl)
  let self = QDoubleSpinBox(h: self)
  let slotval1 = gen_qevent_types.QMouseEvent(h: event)
  vtbl[].mouseMoveEvent(self, slotval1)

proc QDoubleSpinBoxtimerEvent*(self: gen_qspinbox_types.QDoubleSpinBox, event: gen_qcoreevent_types.QTimerEvent): void =
  fcQDoubleSpinBox_virtualbase_timerEvent(self.h, event.h)

proc miqt_exec_callback_cQDoubleSpinBox_timerEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QDoubleSpinBoxVTable](vtbl)
  let self = QDoubleSpinBox(h: self)
  let slotval1 = gen_qcoreevent_types.QTimerEvent(h: event)
  vtbl[].timerEvent(self, slotval1)

proc QDoubleSpinBoxpaintEvent*(self: gen_qspinbox_types.QDoubleSpinBox, event: gen_qevent_types.QPaintEvent): void =
  fcQDoubleSpinBox_virtualbase_paintEvent(self.h, event.h)

proc miqt_exec_callback_cQDoubleSpinBox_paintEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QDoubleSpinBoxVTable](vtbl)
  let self = QDoubleSpinBox(h: self)
  let slotval1 = gen_qevent_types.QPaintEvent(h: event)
  vtbl[].paintEvent(self, slotval1)

proc QDoubleSpinBoxshowEvent*(self: gen_qspinbox_types.QDoubleSpinBox, event: gen_qevent_types.QShowEvent): void =
  fcQDoubleSpinBox_virtualbase_showEvent(self.h, event.h)

proc miqt_exec_callback_cQDoubleSpinBox_showEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QDoubleSpinBoxVTable](vtbl)
  let self = QDoubleSpinBox(h: self)
  let slotval1 = gen_qevent_types.QShowEvent(h: event)
  vtbl[].showEvent(self, slotval1)

proc QDoubleSpinBoxstepEnabled*(self: gen_qspinbox_types.QDoubleSpinBox, ): cint =
  cint(fcQDoubleSpinBox_virtualbase_stepEnabled(self.h))

proc miqt_exec_callback_cQDoubleSpinBox_stepEnabled(vtbl: pointer, self: pointer): cint {.cdecl.} =
  let vtbl = cast[ptr QDoubleSpinBoxVTable](vtbl)
  let self = QDoubleSpinBox(h: self)
  var virtualReturn = vtbl[].stepEnabled(self)
  cint(virtualReturn)

proc QDoubleSpinBoxdevType*(self: gen_qspinbox_types.QDoubleSpinBox, ): cint =
  fcQDoubleSpinBox_virtualbase_devType(self.h)

proc miqt_exec_callback_cQDoubleSpinBox_devType(vtbl: pointer, self: pointer): cint {.cdecl.} =
  let vtbl = cast[ptr QDoubleSpinBoxVTable](vtbl)
  let self = QDoubleSpinBox(h: self)
  var virtualReturn = vtbl[].devType(self)
  virtualReturn

proc QDoubleSpinBoxsetVisible*(self: gen_qspinbox_types.QDoubleSpinBox, visible: bool): void =
  fcQDoubleSpinBox_virtualbase_setVisible(self.h, visible)

proc miqt_exec_callback_cQDoubleSpinBox_setVisible(vtbl: pointer, self: pointer, visible: bool): void {.cdecl.} =
  let vtbl = cast[ptr QDoubleSpinBoxVTable](vtbl)
  let self = QDoubleSpinBox(h: self)
  let slotval1 = visible
  vtbl[].setVisible(self, slotval1)

proc QDoubleSpinBoxheightForWidth*(self: gen_qspinbox_types.QDoubleSpinBox, param1: cint): cint =
  fcQDoubleSpinBox_virtualbase_heightForWidth(self.h, param1)

proc miqt_exec_callback_cQDoubleSpinBox_heightForWidth(vtbl: pointer, self: pointer, param1: cint): cint {.cdecl.} =
  let vtbl = cast[ptr QDoubleSpinBoxVTable](vtbl)
  let self = QDoubleSpinBox(h: self)
  let slotval1 = param1
  var virtualReturn = vtbl[].heightForWidth(self, slotval1)
  virtualReturn

proc QDoubleSpinBoxhasHeightForWidth*(self: gen_qspinbox_types.QDoubleSpinBox, ): bool =
  fcQDoubleSpinBox_virtualbase_hasHeightForWidth(self.h)

proc miqt_exec_callback_cQDoubleSpinBox_hasHeightForWidth(vtbl: pointer, self: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QDoubleSpinBoxVTable](vtbl)
  let self = QDoubleSpinBox(h: self)
  var virtualReturn = vtbl[].hasHeightForWidth(self)
  virtualReturn

proc QDoubleSpinBoxpaintEngine*(self: gen_qspinbox_types.QDoubleSpinBox, ): gen_qpaintengine_types.QPaintEngine =
  gen_qpaintengine_types.QPaintEngine(h: fcQDoubleSpinBox_virtualbase_paintEngine(self.h))

proc miqt_exec_callback_cQDoubleSpinBox_paintEngine(vtbl: pointer, self: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QDoubleSpinBoxVTable](vtbl)
  let self = QDoubleSpinBox(h: self)
  var virtualReturn = vtbl[].paintEngine(self)
  virtualReturn.h

proc QDoubleSpinBoxmouseDoubleClickEvent*(self: gen_qspinbox_types.QDoubleSpinBox, event: gen_qevent_types.QMouseEvent): void =
  fcQDoubleSpinBox_virtualbase_mouseDoubleClickEvent(self.h, event.h)

proc miqt_exec_callback_cQDoubleSpinBox_mouseDoubleClickEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QDoubleSpinBoxVTable](vtbl)
  let self = QDoubleSpinBox(h: self)
  let slotval1 = gen_qevent_types.QMouseEvent(h: event)
  vtbl[].mouseDoubleClickEvent(self, slotval1)

proc QDoubleSpinBoxenterEvent*(self: gen_qspinbox_types.QDoubleSpinBox, event: gen_qcoreevent_types.QEvent): void =
  fcQDoubleSpinBox_virtualbase_enterEvent(self.h, event.h)

proc miqt_exec_callback_cQDoubleSpinBox_enterEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QDoubleSpinBoxVTable](vtbl)
  let self = QDoubleSpinBox(h: self)
  let slotval1 = gen_qcoreevent_types.QEvent(h: event)
  vtbl[].enterEvent(self, slotval1)

proc QDoubleSpinBoxleaveEvent*(self: gen_qspinbox_types.QDoubleSpinBox, event: gen_qcoreevent_types.QEvent): void =
  fcQDoubleSpinBox_virtualbase_leaveEvent(self.h, event.h)

proc miqt_exec_callback_cQDoubleSpinBox_leaveEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QDoubleSpinBoxVTable](vtbl)
  let self = QDoubleSpinBox(h: self)
  let slotval1 = gen_qcoreevent_types.QEvent(h: event)
  vtbl[].leaveEvent(self, slotval1)

proc QDoubleSpinBoxmoveEvent*(self: gen_qspinbox_types.QDoubleSpinBox, event: gen_qevent_types.QMoveEvent): void =
  fcQDoubleSpinBox_virtualbase_moveEvent(self.h, event.h)

proc miqt_exec_callback_cQDoubleSpinBox_moveEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QDoubleSpinBoxVTable](vtbl)
  let self = QDoubleSpinBox(h: self)
  let slotval1 = gen_qevent_types.QMoveEvent(h: event)
  vtbl[].moveEvent(self, slotval1)

proc QDoubleSpinBoxtabletEvent*(self: gen_qspinbox_types.QDoubleSpinBox, event: gen_qevent_types.QTabletEvent): void =
  fcQDoubleSpinBox_virtualbase_tabletEvent(self.h, event.h)

proc miqt_exec_callback_cQDoubleSpinBox_tabletEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QDoubleSpinBoxVTable](vtbl)
  let self = QDoubleSpinBox(h: self)
  let slotval1 = gen_qevent_types.QTabletEvent(h: event)
  vtbl[].tabletEvent(self, slotval1)

proc QDoubleSpinBoxactionEvent*(self: gen_qspinbox_types.QDoubleSpinBox, event: gen_qevent_types.QActionEvent): void =
  fcQDoubleSpinBox_virtualbase_actionEvent(self.h, event.h)

proc miqt_exec_callback_cQDoubleSpinBox_actionEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QDoubleSpinBoxVTable](vtbl)
  let self = QDoubleSpinBox(h: self)
  let slotval1 = gen_qevent_types.QActionEvent(h: event)
  vtbl[].actionEvent(self, slotval1)

proc QDoubleSpinBoxdragEnterEvent*(self: gen_qspinbox_types.QDoubleSpinBox, event: gen_qevent_types.QDragEnterEvent): void =
  fcQDoubleSpinBox_virtualbase_dragEnterEvent(self.h, event.h)

proc miqt_exec_callback_cQDoubleSpinBox_dragEnterEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QDoubleSpinBoxVTable](vtbl)
  let self = QDoubleSpinBox(h: self)
  let slotval1 = gen_qevent_types.QDragEnterEvent(h: event)
  vtbl[].dragEnterEvent(self, slotval1)

proc QDoubleSpinBoxdragMoveEvent*(self: gen_qspinbox_types.QDoubleSpinBox, event: gen_qevent_types.QDragMoveEvent): void =
  fcQDoubleSpinBox_virtualbase_dragMoveEvent(self.h, event.h)

proc miqt_exec_callback_cQDoubleSpinBox_dragMoveEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QDoubleSpinBoxVTable](vtbl)
  let self = QDoubleSpinBox(h: self)
  let slotval1 = gen_qevent_types.QDragMoveEvent(h: event)
  vtbl[].dragMoveEvent(self, slotval1)

proc QDoubleSpinBoxdragLeaveEvent*(self: gen_qspinbox_types.QDoubleSpinBox, event: gen_qevent_types.QDragLeaveEvent): void =
  fcQDoubleSpinBox_virtualbase_dragLeaveEvent(self.h, event.h)

proc miqt_exec_callback_cQDoubleSpinBox_dragLeaveEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QDoubleSpinBoxVTable](vtbl)
  let self = QDoubleSpinBox(h: self)
  let slotval1 = gen_qevent_types.QDragLeaveEvent(h: event)
  vtbl[].dragLeaveEvent(self, slotval1)

proc QDoubleSpinBoxdropEvent*(self: gen_qspinbox_types.QDoubleSpinBox, event: gen_qevent_types.QDropEvent): void =
  fcQDoubleSpinBox_virtualbase_dropEvent(self.h, event.h)

proc miqt_exec_callback_cQDoubleSpinBox_dropEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QDoubleSpinBoxVTable](vtbl)
  let self = QDoubleSpinBox(h: self)
  let slotval1 = gen_qevent_types.QDropEvent(h: event)
  vtbl[].dropEvent(self, slotval1)

proc QDoubleSpinBoxnativeEvent*(self: gen_qspinbox_types.QDoubleSpinBox, eventType: seq[byte], message: pointer, resultVal: ptr clong): bool =
  fcQDoubleSpinBox_virtualbase_nativeEvent(self.h, struct_miqt_string(data: cast[cstring](if len(eventType) == 0: nil else: unsafeAddr eventType[0]), len: csize_t(len(eventType))), message, resultVal)

proc miqt_exec_callback_cQDoubleSpinBox_nativeEvent(vtbl: pointer, self: pointer, eventType: struct_miqt_string, message: pointer, resultVal: ptr clong): bool {.cdecl.} =
  let vtbl = cast[ptr QDoubleSpinBoxVTable](vtbl)
  let self = QDoubleSpinBox(h: self)
  var veventType_bytearray = eventType
  var veventTypex_ret = @(toOpenArrayByte(veventType_bytearray.data, 0, int(veventType_bytearray.len)-1))
  c_free(veventType_bytearray.data)
  let slotval1 = veventTypex_ret
  let slotval2 = message
  let slotval3 = resultVal
  var virtualReturn = vtbl[].nativeEvent(self, slotval1, slotval2, slotval3)
  virtualReturn

proc QDoubleSpinBoxmetric*(self: gen_qspinbox_types.QDoubleSpinBox, param1: cint): cint =
  fcQDoubleSpinBox_virtualbase_metric(self.h, cint(param1))

proc miqt_exec_callback_cQDoubleSpinBox_metric(vtbl: pointer, self: pointer, param1: cint): cint {.cdecl.} =
  let vtbl = cast[ptr QDoubleSpinBoxVTable](vtbl)
  let self = QDoubleSpinBox(h: self)
  let slotval1 = cint(param1)
  var virtualReturn = vtbl[].metric(self, slotval1)
  virtualReturn

proc QDoubleSpinBoxinitPainter*(self: gen_qspinbox_types.QDoubleSpinBox, painter: gen_qpainter_types.QPainter): void =
  fcQDoubleSpinBox_virtualbase_initPainter(self.h, painter.h)

proc miqt_exec_callback_cQDoubleSpinBox_initPainter(vtbl: pointer, self: pointer, painter: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QDoubleSpinBoxVTable](vtbl)
  let self = QDoubleSpinBox(h: self)
  let slotval1 = gen_qpainter_types.QPainter(h: painter)
  vtbl[].initPainter(self, slotval1)

proc QDoubleSpinBoxredirected*(self: gen_qspinbox_types.QDoubleSpinBox, offset: gen_qpoint_types.QPoint): gen_qpaintdevice_types.QPaintDevice =
  gen_qpaintdevice_types.QPaintDevice(h: fcQDoubleSpinBox_virtualbase_redirected(self.h, offset.h))

proc miqt_exec_callback_cQDoubleSpinBox_redirected(vtbl: pointer, self: pointer, offset: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QDoubleSpinBoxVTable](vtbl)
  let self = QDoubleSpinBox(h: self)
  let slotval1 = gen_qpoint_types.QPoint(h: offset)
  var virtualReturn = vtbl[].redirected(self, slotval1)
  virtualReturn.h

proc QDoubleSpinBoxsharedPainter*(self: gen_qspinbox_types.QDoubleSpinBox, ): gen_qpainter_types.QPainter =
  gen_qpainter_types.QPainter(h: fcQDoubleSpinBox_virtualbase_sharedPainter(self.h))

proc miqt_exec_callback_cQDoubleSpinBox_sharedPainter(vtbl: pointer, self: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QDoubleSpinBoxVTable](vtbl)
  let self = QDoubleSpinBox(h: self)
  var virtualReturn = vtbl[].sharedPainter(self)
  virtualReturn.h

proc QDoubleSpinBoxinputMethodEvent*(self: gen_qspinbox_types.QDoubleSpinBox, param1: gen_qevent_types.QInputMethodEvent): void =
  fcQDoubleSpinBox_virtualbase_inputMethodEvent(self.h, param1.h)

proc miqt_exec_callback_cQDoubleSpinBox_inputMethodEvent(vtbl: pointer, self: pointer, param1: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QDoubleSpinBoxVTable](vtbl)
  let self = QDoubleSpinBox(h: self)
  let slotval1 = gen_qevent_types.QInputMethodEvent(h: param1)
  vtbl[].inputMethodEvent(self, slotval1)

proc QDoubleSpinBoxfocusNextPrevChild*(self: gen_qspinbox_types.QDoubleSpinBox, next: bool): bool =
  fcQDoubleSpinBox_virtualbase_focusNextPrevChild(self.h, next)

proc miqt_exec_callback_cQDoubleSpinBox_focusNextPrevChild(vtbl: pointer, self: pointer, next: bool): bool {.cdecl.} =
  let vtbl = cast[ptr QDoubleSpinBoxVTable](vtbl)
  let self = QDoubleSpinBox(h: self)
  let slotval1 = next
  var virtualReturn = vtbl[].focusNextPrevChild(self, slotval1)
  virtualReturn

proc QDoubleSpinBoxeventFilter*(self: gen_qspinbox_types.QDoubleSpinBox, watched: gen_qobject_types.QObject, event: gen_qcoreevent_types.QEvent): bool =
  fcQDoubleSpinBox_virtualbase_eventFilter(self.h, watched.h, event.h)

proc miqt_exec_callback_cQDoubleSpinBox_eventFilter(vtbl: pointer, self: pointer, watched: pointer, event: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QDoubleSpinBoxVTable](vtbl)
  let self = QDoubleSpinBox(h: self)
  let slotval1 = gen_qobject_types.QObject(h: watched)
  let slotval2 = gen_qcoreevent_types.QEvent(h: event)
  var virtualReturn = vtbl[].eventFilter(self, slotval1, slotval2)
  virtualReturn

proc QDoubleSpinBoxchildEvent*(self: gen_qspinbox_types.QDoubleSpinBox, event: gen_qcoreevent_types.QChildEvent): void =
  fcQDoubleSpinBox_virtualbase_childEvent(self.h, event.h)

proc miqt_exec_callback_cQDoubleSpinBox_childEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QDoubleSpinBoxVTable](vtbl)
  let self = QDoubleSpinBox(h: self)
  let slotval1 = gen_qcoreevent_types.QChildEvent(h: event)
  vtbl[].childEvent(self, slotval1)

proc QDoubleSpinBoxcustomEvent*(self: gen_qspinbox_types.QDoubleSpinBox, event: gen_qcoreevent_types.QEvent): void =
  fcQDoubleSpinBox_virtualbase_customEvent(self.h, event.h)

proc miqt_exec_callback_cQDoubleSpinBox_customEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QDoubleSpinBoxVTable](vtbl)
  let self = QDoubleSpinBox(h: self)
  let slotval1 = gen_qcoreevent_types.QEvent(h: event)
  vtbl[].customEvent(self, slotval1)

proc QDoubleSpinBoxconnectNotify*(self: gen_qspinbox_types.QDoubleSpinBox, signal: gen_qmetaobject_types.QMetaMethod): void =
  fcQDoubleSpinBox_virtualbase_connectNotify(self.h, signal.h)

proc miqt_exec_callback_cQDoubleSpinBox_connectNotify(vtbl: pointer, self: pointer, signal: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QDoubleSpinBoxVTable](vtbl)
  let self = QDoubleSpinBox(h: self)
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal)
  vtbl[].connectNotify(self, slotval1)

proc QDoubleSpinBoxdisconnectNotify*(self: gen_qspinbox_types.QDoubleSpinBox, signal: gen_qmetaobject_types.QMetaMethod): void =
  fcQDoubleSpinBox_virtualbase_disconnectNotify(self.h, signal.h)

proc miqt_exec_callback_cQDoubleSpinBox_disconnectNotify(vtbl: pointer, self: pointer, signal: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QDoubleSpinBoxVTable](vtbl)
  let self = QDoubleSpinBox(h: self)
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal)
  vtbl[].disconnectNotify(self, slotval1)

proc create*(T: type gen_qspinbox_types.QDoubleSpinBox,
    parent: gen_qwidget_types.QWidget,
    vtbl: ref QDoubleSpinBoxVTable = nil): gen_qspinbox_types.QDoubleSpinBox =
  let vtbl = if vtbl == nil: new QDoubleSpinBoxVTable else: vtbl
  GC_ref(vtbl)
  vtbl.vtbl.destructor = proc(vtbl: ptr cQDoubleSpinBoxVTable, _: ptr cQDoubleSpinBox) {.cdecl.} =
    let vtbl = cast[ref QDoubleSpinBoxVTable](vtbl)
    GC_unref(vtbl)
  if not isNil(vtbl.metaObject):
    vtbl[].vtbl.metaObject = miqt_exec_callback_cQDoubleSpinBox_metaObject
  if not isNil(vtbl.metacast):
    vtbl[].vtbl.metacast = miqt_exec_callback_cQDoubleSpinBox_metacast
  if not isNil(vtbl.metacall):
    vtbl[].vtbl.metacall = miqt_exec_callback_cQDoubleSpinBox_metacall
  if not isNil(vtbl.validate):
    vtbl[].vtbl.validate = miqt_exec_callback_cQDoubleSpinBox_validate
  if not isNil(vtbl.valueFromText):
    vtbl[].vtbl.valueFromText = miqt_exec_callback_cQDoubleSpinBox_valueFromText
  if not isNil(vtbl.textFromValue):
    vtbl[].vtbl.textFromValue = miqt_exec_callback_cQDoubleSpinBox_textFromValue
  if not isNil(vtbl.fixup):
    vtbl[].vtbl.fixup = miqt_exec_callback_cQDoubleSpinBox_fixup
  if not isNil(vtbl.sizeHint):
    vtbl[].vtbl.sizeHint = miqt_exec_callback_cQDoubleSpinBox_sizeHint
  if not isNil(vtbl.minimumSizeHint):
    vtbl[].vtbl.minimumSizeHint = miqt_exec_callback_cQDoubleSpinBox_minimumSizeHint
  if not isNil(vtbl.event):
    vtbl[].vtbl.event = miqt_exec_callback_cQDoubleSpinBox_event
  if not isNil(vtbl.inputMethodQuery):
    vtbl[].vtbl.inputMethodQuery = miqt_exec_callback_cQDoubleSpinBox_inputMethodQuery
  if not isNil(vtbl.stepBy):
    vtbl[].vtbl.stepBy = miqt_exec_callback_cQDoubleSpinBox_stepBy
  if not isNil(vtbl.clear):
    vtbl[].vtbl.clear = miqt_exec_callback_cQDoubleSpinBox_clear
  if not isNil(vtbl.resizeEvent):
    vtbl[].vtbl.resizeEvent = miqt_exec_callback_cQDoubleSpinBox_resizeEvent
  if not isNil(vtbl.keyPressEvent):
    vtbl[].vtbl.keyPressEvent = miqt_exec_callback_cQDoubleSpinBox_keyPressEvent
  if not isNil(vtbl.keyReleaseEvent):
    vtbl[].vtbl.keyReleaseEvent = miqt_exec_callback_cQDoubleSpinBox_keyReleaseEvent
  if not isNil(vtbl.wheelEvent):
    vtbl[].vtbl.wheelEvent = miqt_exec_callback_cQDoubleSpinBox_wheelEvent
  if not isNil(vtbl.focusInEvent):
    vtbl[].vtbl.focusInEvent = miqt_exec_callback_cQDoubleSpinBox_focusInEvent
  if not isNil(vtbl.focusOutEvent):
    vtbl[].vtbl.focusOutEvent = miqt_exec_callback_cQDoubleSpinBox_focusOutEvent
  if not isNil(vtbl.contextMenuEvent):
    vtbl[].vtbl.contextMenuEvent = miqt_exec_callback_cQDoubleSpinBox_contextMenuEvent
  if not isNil(vtbl.changeEvent):
    vtbl[].vtbl.changeEvent = miqt_exec_callback_cQDoubleSpinBox_changeEvent
  if not isNil(vtbl.closeEvent):
    vtbl[].vtbl.closeEvent = miqt_exec_callback_cQDoubleSpinBox_closeEvent
  if not isNil(vtbl.hideEvent):
    vtbl[].vtbl.hideEvent = miqt_exec_callback_cQDoubleSpinBox_hideEvent
  if not isNil(vtbl.mousePressEvent):
    vtbl[].vtbl.mousePressEvent = miqt_exec_callback_cQDoubleSpinBox_mousePressEvent
  if not isNil(vtbl.mouseReleaseEvent):
    vtbl[].vtbl.mouseReleaseEvent = miqt_exec_callback_cQDoubleSpinBox_mouseReleaseEvent
  if not isNil(vtbl.mouseMoveEvent):
    vtbl[].vtbl.mouseMoveEvent = miqt_exec_callback_cQDoubleSpinBox_mouseMoveEvent
  if not isNil(vtbl.timerEvent):
    vtbl[].vtbl.timerEvent = miqt_exec_callback_cQDoubleSpinBox_timerEvent
  if not isNil(vtbl.paintEvent):
    vtbl[].vtbl.paintEvent = miqt_exec_callback_cQDoubleSpinBox_paintEvent
  if not isNil(vtbl.showEvent):
    vtbl[].vtbl.showEvent = miqt_exec_callback_cQDoubleSpinBox_showEvent
  if not isNil(vtbl.stepEnabled):
    vtbl[].vtbl.stepEnabled = miqt_exec_callback_cQDoubleSpinBox_stepEnabled
  if not isNil(vtbl.devType):
    vtbl[].vtbl.devType = miqt_exec_callback_cQDoubleSpinBox_devType
  if not isNil(vtbl.setVisible):
    vtbl[].vtbl.setVisible = miqt_exec_callback_cQDoubleSpinBox_setVisible
  if not isNil(vtbl.heightForWidth):
    vtbl[].vtbl.heightForWidth = miqt_exec_callback_cQDoubleSpinBox_heightForWidth
  if not isNil(vtbl.hasHeightForWidth):
    vtbl[].vtbl.hasHeightForWidth = miqt_exec_callback_cQDoubleSpinBox_hasHeightForWidth
  if not isNil(vtbl.paintEngine):
    vtbl[].vtbl.paintEngine = miqt_exec_callback_cQDoubleSpinBox_paintEngine
  if not isNil(vtbl.mouseDoubleClickEvent):
    vtbl[].vtbl.mouseDoubleClickEvent = miqt_exec_callback_cQDoubleSpinBox_mouseDoubleClickEvent
  if not isNil(vtbl.enterEvent):
    vtbl[].vtbl.enterEvent = miqt_exec_callback_cQDoubleSpinBox_enterEvent
  if not isNil(vtbl.leaveEvent):
    vtbl[].vtbl.leaveEvent = miqt_exec_callback_cQDoubleSpinBox_leaveEvent
  if not isNil(vtbl.moveEvent):
    vtbl[].vtbl.moveEvent = miqt_exec_callback_cQDoubleSpinBox_moveEvent
  if not isNil(vtbl.tabletEvent):
    vtbl[].vtbl.tabletEvent = miqt_exec_callback_cQDoubleSpinBox_tabletEvent
  if not isNil(vtbl.actionEvent):
    vtbl[].vtbl.actionEvent = miqt_exec_callback_cQDoubleSpinBox_actionEvent
  if not isNil(vtbl.dragEnterEvent):
    vtbl[].vtbl.dragEnterEvent = miqt_exec_callback_cQDoubleSpinBox_dragEnterEvent
  if not isNil(vtbl.dragMoveEvent):
    vtbl[].vtbl.dragMoveEvent = miqt_exec_callback_cQDoubleSpinBox_dragMoveEvent
  if not isNil(vtbl.dragLeaveEvent):
    vtbl[].vtbl.dragLeaveEvent = miqt_exec_callback_cQDoubleSpinBox_dragLeaveEvent
  if not isNil(vtbl.dropEvent):
    vtbl[].vtbl.dropEvent = miqt_exec_callback_cQDoubleSpinBox_dropEvent
  if not isNil(vtbl.nativeEvent):
    vtbl[].vtbl.nativeEvent = miqt_exec_callback_cQDoubleSpinBox_nativeEvent
  if not isNil(vtbl.metric):
    vtbl[].vtbl.metric = miqt_exec_callback_cQDoubleSpinBox_metric
  if not isNil(vtbl.initPainter):
    vtbl[].vtbl.initPainter = miqt_exec_callback_cQDoubleSpinBox_initPainter
  if not isNil(vtbl.redirected):
    vtbl[].vtbl.redirected = miqt_exec_callback_cQDoubleSpinBox_redirected
  if not isNil(vtbl.sharedPainter):
    vtbl[].vtbl.sharedPainter = miqt_exec_callback_cQDoubleSpinBox_sharedPainter
  if not isNil(vtbl.inputMethodEvent):
    vtbl[].vtbl.inputMethodEvent = miqt_exec_callback_cQDoubleSpinBox_inputMethodEvent
  if not isNil(vtbl.focusNextPrevChild):
    vtbl[].vtbl.focusNextPrevChild = miqt_exec_callback_cQDoubleSpinBox_focusNextPrevChild
  if not isNil(vtbl.eventFilter):
    vtbl[].vtbl.eventFilter = miqt_exec_callback_cQDoubleSpinBox_eventFilter
  if not isNil(vtbl.childEvent):
    vtbl[].vtbl.childEvent = miqt_exec_callback_cQDoubleSpinBox_childEvent
  if not isNil(vtbl.customEvent):
    vtbl[].vtbl.customEvent = miqt_exec_callback_cQDoubleSpinBox_customEvent
  if not isNil(vtbl.connectNotify):
    vtbl[].vtbl.connectNotify = miqt_exec_callback_cQDoubleSpinBox_connectNotify
  if not isNil(vtbl.disconnectNotify):
    vtbl[].vtbl.disconnectNotify = miqt_exec_callback_cQDoubleSpinBox_disconnectNotify
  gen_qspinbox_types.QDoubleSpinBox(h: fcQDoubleSpinBox_new(addr(vtbl[]), parent.h))

proc create*(T: type gen_qspinbox_types.QDoubleSpinBox,
    vtbl: ref QDoubleSpinBoxVTable = nil): gen_qspinbox_types.QDoubleSpinBox =
  let vtbl = if vtbl == nil: new QDoubleSpinBoxVTable else: vtbl
  GC_ref(vtbl)
  vtbl.vtbl.destructor = proc(vtbl: ptr cQDoubleSpinBoxVTable, _: ptr cQDoubleSpinBox) {.cdecl.} =
    let vtbl = cast[ref QDoubleSpinBoxVTable](vtbl)
    GC_unref(vtbl)
  if not isNil(vtbl.metaObject):
    vtbl[].vtbl.metaObject = miqt_exec_callback_cQDoubleSpinBox_metaObject
  if not isNil(vtbl.metacast):
    vtbl[].vtbl.metacast = miqt_exec_callback_cQDoubleSpinBox_metacast
  if not isNil(vtbl.metacall):
    vtbl[].vtbl.metacall = miqt_exec_callback_cQDoubleSpinBox_metacall
  if not isNil(vtbl.validate):
    vtbl[].vtbl.validate = miqt_exec_callback_cQDoubleSpinBox_validate
  if not isNil(vtbl.valueFromText):
    vtbl[].vtbl.valueFromText = miqt_exec_callback_cQDoubleSpinBox_valueFromText
  if not isNil(vtbl.textFromValue):
    vtbl[].vtbl.textFromValue = miqt_exec_callback_cQDoubleSpinBox_textFromValue
  if not isNil(vtbl.fixup):
    vtbl[].vtbl.fixup = miqt_exec_callback_cQDoubleSpinBox_fixup
  if not isNil(vtbl.sizeHint):
    vtbl[].vtbl.sizeHint = miqt_exec_callback_cQDoubleSpinBox_sizeHint
  if not isNil(vtbl.minimumSizeHint):
    vtbl[].vtbl.minimumSizeHint = miqt_exec_callback_cQDoubleSpinBox_minimumSizeHint
  if not isNil(vtbl.event):
    vtbl[].vtbl.event = miqt_exec_callback_cQDoubleSpinBox_event
  if not isNil(vtbl.inputMethodQuery):
    vtbl[].vtbl.inputMethodQuery = miqt_exec_callback_cQDoubleSpinBox_inputMethodQuery
  if not isNil(vtbl.stepBy):
    vtbl[].vtbl.stepBy = miqt_exec_callback_cQDoubleSpinBox_stepBy
  if not isNil(vtbl.clear):
    vtbl[].vtbl.clear = miqt_exec_callback_cQDoubleSpinBox_clear
  if not isNil(vtbl.resizeEvent):
    vtbl[].vtbl.resizeEvent = miqt_exec_callback_cQDoubleSpinBox_resizeEvent
  if not isNil(vtbl.keyPressEvent):
    vtbl[].vtbl.keyPressEvent = miqt_exec_callback_cQDoubleSpinBox_keyPressEvent
  if not isNil(vtbl.keyReleaseEvent):
    vtbl[].vtbl.keyReleaseEvent = miqt_exec_callback_cQDoubleSpinBox_keyReleaseEvent
  if not isNil(vtbl.wheelEvent):
    vtbl[].vtbl.wheelEvent = miqt_exec_callback_cQDoubleSpinBox_wheelEvent
  if not isNil(vtbl.focusInEvent):
    vtbl[].vtbl.focusInEvent = miqt_exec_callback_cQDoubleSpinBox_focusInEvent
  if not isNil(vtbl.focusOutEvent):
    vtbl[].vtbl.focusOutEvent = miqt_exec_callback_cQDoubleSpinBox_focusOutEvent
  if not isNil(vtbl.contextMenuEvent):
    vtbl[].vtbl.contextMenuEvent = miqt_exec_callback_cQDoubleSpinBox_contextMenuEvent
  if not isNil(vtbl.changeEvent):
    vtbl[].vtbl.changeEvent = miqt_exec_callback_cQDoubleSpinBox_changeEvent
  if not isNil(vtbl.closeEvent):
    vtbl[].vtbl.closeEvent = miqt_exec_callback_cQDoubleSpinBox_closeEvent
  if not isNil(vtbl.hideEvent):
    vtbl[].vtbl.hideEvent = miqt_exec_callback_cQDoubleSpinBox_hideEvent
  if not isNil(vtbl.mousePressEvent):
    vtbl[].vtbl.mousePressEvent = miqt_exec_callback_cQDoubleSpinBox_mousePressEvent
  if not isNil(vtbl.mouseReleaseEvent):
    vtbl[].vtbl.mouseReleaseEvent = miqt_exec_callback_cQDoubleSpinBox_mouseReleaseEvent
  if not isNil(vtbl.mouseMoveEvent):
    vtbl[].vtbl.mouseMoveEvent = miqt_exec_callback_cQDoubleSpinBox_mouseMoveEvent
  if not isNil(vtbl.timerEvent):
    vtbl[].vtbl.timerEvent = miqt_exec_callback_cQDoubleSpinBox_timerEvent
  if not isNil(vtbl.paintEvent):
    vtbl[].vtbl.paintEvent = miqt_exec_callback_cQDoubleSpinBox_paintEvent
  if not isNil(vtbl.showEvent):
    vtbl[].vtbl.showEvent = miqt_exec_callback_cQDoubleSpinBox_showEvent
  if not isNil(vtbl.stepEnabled):
    vtbl[].vtbl.stepEnabled = miqt_exec_callback_cQDoubleSpinBox_stepEnabled
  if not isNil(vtbl.devType):
    vtbl[].vtbl.devType = miqt_exec_callback_cQDoubleSpinBox_devType
  if not isNil(vtbl.setVisible):
    vtbl[].vtbl.setVisible = miqt_exec_callback_cQDoubleSpinBox_setVisible
  if not isNil(vtbl.heightForWidth):
    vtbl[].vtbl.heightForWidth = miqt_exec_callback_cQDoubleSpinBox_heightForWidth
  if not isNil(vtbl.hasHeightForWidth):
    vtbl[].vtbl.hasHeightForWidth = miqt_exec_callback_cQDoubleSpinBox_hasHeightForWidth
  if not isNil(vtbl.paintEngine):
    vtbl[].vtbl.paintEngine = miqt_exec_callback_cQDoubleSpinBox_paintEngine
  if not isNil(vtbl.mouseDoubleClickEvent):
    vtbl[].vtbl.mouseDoubleClickEvent = miqt_exec_callback_cQDoubleSpinBox_mouseDoubleClickEvent
  if not isNil(vtbl.enterEvent):
    vtbl[].vtbl.enterEvent = miqt_exec_callback_cQDoubleSpinBox_enterEvent
  if not isNil(vtbl.leaveEvent):
    vtbl[].vtbl.leaveEvent = miqt_exec_callback_cQDoubleSpinBox_leaveEvent
  if not isNil(vtbl.moveEvent):
    vtbl[].vtbl.moveEvent = miqt_exec_callback_cQDoubleSpinBox_moveEvent
  if not isNil(vtbl.tabletEvent):
    vtbl[].vtbl.tabletEvent = miqt_exec_callback_cQDoubleSpinBox_tabletEvent
  if not isNil(vtbl.actionEvent):
    vtbl[].vtbl.actionEvent = miqt_exec_callback_cQDoubleSpinBox_actionEvent
  if not isNil(vtbl.dragEnterEvent):
    vtbl[].vtbl.dragEnterEvent = miqt_exec_callback_cQDoubleSpinBox_dragEnterEvent
  if not isNil(vtbl.dragMoveEvent):
    vtbl[].vtbl.dragMoveEvent = miqt_exec_callback_cQDoubleSpinBox_dragMoveEvent
  if not isNil(vtbl.dragLeaveEvent):
    vtbl[].vtbl.dragLeaveEvent = miqt_exec_callback_cQDoubleSpinBox_dragLeaveEvent
  if not isNil(vtbl.dropEvent):
    vtbl[].vtbl.dropEvent = miqt_exec_callback_cQDoubleSpinBox_dropEvent
  if not isNil(vtbl.nativeEvent):
    vtbl[].vtbl.nativeEvent = miqt_exec_callback_cQDoubleSpinBox_nativeEvent
  if not isNil(vtbl.metric):
    vtbl[].vtbl.metric = miqt_exec_callback_cQDoubleSpinBox_metric
  if not isNil(vtbl.initPainter):
    vtbl[].vtbl.initPainter = miqt_exec_callback_cQDoubleSpinBox_initPainter
  if not isNil(vtbl.redirected):
    vtbl[].vtbl.redirected = miqt_exec_callback_cQDoubleSpinBox_redirected
  if not isNil(vtbl.sharedPainter):
    vtbl[].vtbl.sharedPainter = miqt_exec_callback_cQDoubleSpinBox_sharedPainter
  if not isNil(vtbl.inputMethodEvent):
    vtbl[].vtbl.inputMethodEvent = miqt_exec_callback_cQDoubleSpinBox_inputMethodEvent
  if not isNil(vtbl.focusNextPrevChild):
    vtbl[].vtbl.focusNextPrevChild = miqt_exec_callback_cQDoubleSpinBox_focusNextPrevChild
  if not isNil(vtbl.eventFilter):
    vtbl[].vtbl.eventFilter = miqt_exec_callback_cQDoubleSpinBox_eventFilter
  if not isNil(vtbl.childEvent):
    vtbl[].vtbl.childEvent = miqt_exec_callback_cQDoubleSpinBox_childEvent
  if not isNil(vtbl.customEvent):
    vtbl[].vtbl.customEvent = miqt_exec_callback_cQDoubleSpinBox_customEvent
  if not isNil(vtbl.connectNotify):
    vtbl[].vtbl.connectNotify = miqt_exec_callback_cQDoubleSpinBox_connectNotify
  if not isNil(vtbl.disconnectNotify):
    vtbl[].vtbl.disconnectNotify = miqt_exec_callback_cQDoubleSpinBox_disconnectNotify
  gen_qspinbox_types.QDoubleSpinBox(h: fcQDoubleSpinBox_new2(addr(vtbl[]), ))

proc staticMetaObject*(_: type gen_qspinbox_types.QDoubleSpinBox): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQDoubleSpinBox_staticMetaObject())
proc delete*(self: gen_qspinbox_types.QDoubleSpinBox) =
  fcQDoubleSpinBox_delete(self.h)
