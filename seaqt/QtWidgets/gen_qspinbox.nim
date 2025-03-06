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
  gen_qstyleoption_types,
  gen_qwidget_types

type cQSpinBox*{.exportc: "QSpinBox", incompleteStruct.} = object
type cQDoubleSpinBox*{.exportc: "QDoubleSpinBox", incompleteStruct.} = object

proc fcQSpinBox_new(parent: pointer): ptr cQSpinBox {.importc: "QSpinBox_new".}
proc fcQSpinBox_new2(): ptr cQSpinBox {.importc: "QSpinBox_new2".}
proc fcQSpinBox_metaObject(self: pointer, ): pointer {.importc: "QSpinBox_metaObject".}
proc fcQSpinBox_metacast(self: pointer, param1: cstring): pointer {.importc: "QSpinBox_metacast".}
proc fcQSpinBox_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.importc: "QSpinBox_metacall".}
proc fcQSpinBox_tr(s: cstring): struct_miqt_string {.importc: "QSpinBox_tr".}
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
proc fcQSpinBox_tr2(s: cstring, c: cstring): struct_miqt_string {.importc: "QSpinBox_tr2".}
proc fcQSpinBox_tr3(s: cstring, c: cstring, n: cint): struct_miqt_string {.importc: "QSpinBox_tr3".}
proc fQSpinBox_virtualbase_metaObject(self: pointer, ): pointer{.importc: "QSpinBox_virtualbase_metaObject".}
proc fcQSpinBox_override_virtual_metaObject(self: pointer, slot: int) {.importc: "QSpinBox_override_virtual_metaObject".}
proc fQSpinBox_virtualbase_metacast(self: pointer, param1: cstring): pointer{.importc: "QSpinBox_virtualbase_metacast".}
proc fcQSpinBox_override_virtual_metacast(self: pointer, slot: int) {.importc: "QSpinBox_override_virtual_metacast".}
proc fQSpinBox_virtualbase_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint{.importc: "QSpinBox_virtualbase_metacall".}
proc fcQSpinBox_override_virtual_metacall(self: pointer, slot: int) {.importc: "QSpinBox_override_virtual_metacall".}
proc fQSpinBox_virtualbase_event(self: pointer, event: pointer): bool{.importc: "QSpinBox_virtualbase_event".}
proc fcQSpinBox_override_virtual_event(self: pointer, slot: int) {.importc: "QSpinBox_override_virtual_event".}
proc fQSpinBox_virtualbase_validate(self: pointer, input: struct_miqt_string, pos: ptr cint): cint{.importc: "QSpinBox_virtualbase_validate".}
proc fcQSpinBox_override_virtual_validate(self: pointer, slot: int) {.importc: "QSpinBox_override_virtual_validate".}
proc fQSpinBox_virtualbase_valueFromText(self: pointer, text: struct_miqt_string): cint{.importc: "QSpinBox_virtualbase_valueFromText".}
proc fcQSpinBox_override_virtual_valueFromText(self: pointer, slot: int) {.importc: "QSpinBox_override_virtual_valueFromText".}
proc fQSpinBox_virtualbase_textFromValue(self: pointer, val: cint): struct_miqt_string{.importc: "QSpinBox_virtualbase_textFromValue".}
proc fcQSpinBox_override_virtual_textFromValue(self: pointer, slot: int) {.importc: "QSpinBox_override_virtual_textFromValue".}
proc fQSpinBox_virtualbase_fixup(self: pointer, str: struct_miqt_string): void{.importc: "QSpinBox_virtualbase_fixup".}
proc fcQSpinBox_override_virtual_fixup(self: pointer, slot: int) {.importc: "QSpinBox_override_virtual_fixup".}
proc fQSpinBox_virtualbase_sizeHint(self: pointer, ): pointer{.importc: "QSpinBox_virtualbase_sizeHint".}
proc fcQSpinBox_override_virtual_sizeHint(self: pointer, slot: int) {.importc: "QSpinBox_override_virtual_sizeHint".}
proc fQSpinBox_virtualbase_minimumSizeHint(self: pointer, ): pointer{.importc: "QSpinBox_virtualbase_minimumSizeHint".}
proc fcQSpinBox_override_virtual_minimumSizeHint(self: pointer, slot: int) {.importc: "QSpinBox_override_virtual_minimumSizeHint".}
proc fQSpinBox_virtualbase_inputMethodQuery(self: pointer, param1: cint): pointer{.importc: "QSpinBox_virtualbase_inputMethodQuery".}
proc fcQSpinBox_override_virtual_inputMethodQuery(self: pointer, slot: int) {.importc: "QSpinBox_override_virtual_inputMethodQuery".}
proc fQSpinBox_virtualbase_stepBy(self: pointer, steps: cint): void{.importc: "QSpinBox_virtualbase_stepBy".}
proc fcQSpinBox_override_virtual_stepBy(self: pointer, slot: int) {.importc: "QSpinBox_override_virtual_stepBy".}
proc fQSpinBox_virtualbase_clear(self: pointer, ): void{.importc: "QSpinBox_virtualbase_clear".}
proc fcQSpinBox_override_virtual_clear(self: pointer, slot: int) {.importc: "QSpinBox_override_virtual_clear".}
proc fQSpinBox_virtualbase_resizeEvent(self: pointer, event: pointer): void{.importc: "QSpinBox_virtualbase_resizeEvent".}
proc fcQSpinBox_override_virtual_resizeEvent(self: pointer, slot: int) {.importc: "QSpinBox_override_virtual_resizeEvent".}
proc fQSpinBox_virtualbase_keyPressEvent(self: pointer, event: pointer): void{.importc: "QSpinBox_virtualbase_keyPressEvent".}
proc fcQSpinBox_override_virtual_keyPressEvent(self: pointer, slot: int) {.importc: "QSpinBox_override_virtual_keyPressEvent".}
proc fQSpinBox_virtualbase_keyReleaseEvent(self: pointer, event: pointer): void{.importc: "QSpinBox_virtualbase_keyReleaseEvent".}
proc fcQSpinBox_override_virtual_keyReleaseEvent(self: pointer, slot: int) {.importc: "QSpinBox_override_virtual_keyReleaseEvent".}
proc fQSpinBox_virtualbase_wheelEvent(self: pointer, event: pointer): void{.importc: "QSpinBox_virtualbase_wheelEvent".}
proc fcQSpinBox_override_virtual_wheelEvent(self: pointer, slot: int) {.importc: "QSpinBox_override_virtual_wheelEvent".}
proc fQSpinBox_virtualbase_focusInEvent(self: pointer, event: pointer): void{.importc: "QSpinBox_virtualbase_focusInEvent".}
proc fcQSpinBox_override_virtual_focusInEvent(self: pointer, slot: int) {.importc: "QSpinBox_override_virtual_focusInEvent".}
proc fQSpinBox_virtualbase_focusOutEvent(self: pointer, event: pointer): void{.importc: "QSpinBox_virtualbase_focusOutEvent".}
proc fcQSpinBox_override_virtual_focusOutEvent(self: pointer, slot: int) {.importc: "QSpinBox_override_virtual_focusOutEvent".}
proc fQSpinBox_virtualbase_contextMenuEvent(self: pointer, event: pointer): void{.importc: "QSpinBox_virtualbase_contextMenuEvent".}
proc fcQSpinBox_override_virtual_contextMenuEvent(self: pointer, slot: int) {.importc: "QSpinBox_override_virtual_contextMenuEvent".}
proc fQSpinBox_virtualbase_changeEvent(self: pointer, event: pointer): void{.importc: "QSpinBox_virtualbase_changeEvent".}
proc fcQSpinBox_override_virtual_changeEvent(self: pointer, slot: int) {.importc: "QSpinBox_override_virtual_changeEvent".}
proc fQSpinBox_virtualbase_closeEvent(self: pointer, event: pointer): void{.importc: "QSpinBox_virtualbase_closeEvent".}
proc fcQSpinBox_override_virtual_closeEvent(self: pointer, slot: int) {.importc: "QSpinBox_override_virtual_closeEvent".}
proc fQSpinBox_virtualbase_hideEvent(self: pointer, event: pointer): void{.importc: "QSpinBox_virtualbase_hideEvent".}
proc fcQSpinBox_override_virtual_hideEvent(self: pointer, slot: int) {.importc: "QSpinBox_override_virtual_hideEvent".}
proc fQSpinBox_virtualbase_mousePressEvent(self: pointer, event: pointer): void{.importc: "QSpinBox_virtualbase_mousePressEvent".}
proc fcQSpinBox_override_virtual_mousePressEvent(self: pointer, slot: int) {.importc: "QSpinBox_override_virtual_mousePressEvent".}
proc fQSpinBox_virtualbase_mouseReleaseEvent(self: pointer, event: pointer): void{.importc: "QSpinBox_virtualbase_mouseReleaseEvent".}
proc fcQSpinBox_override_virtual_mouseReleaseEvent(self: pointer, slot: int) {.importc: "QSpinBox_override_virtual_mouseReleaseEvent".}
proc fQSpinBox_virtualbase_mouseMoveEvent(self: pointer, event: pointer): void{.importc: "QSpinBox_virtualbase_mouseMoveEvent".}
proc fcQSpinBox_override_virtual_mouseMoveEvent(self: pointer, slot: int) {.importc: "QSpinBox_override_virtual_mouseMoveEvent".}
proc fQSpinBox_virtualbase_timerEvent(self: pointer, event: pointer): void{.importc: "QSpinBox_virtualbase_timerEvent".}
proc fcQSpinBox_override_virtual_timerEvent(self: pointer, slot: int) {.importc: "QSpinBox_override_virtual_timerEvent".}
proc fQSpinBox_virtualbase_paintEvent(self: pointer, event: pointer): void{.importc: "QSpinBox_virtualbase_paintEvent".}
proc fcQSpinBox_override_virtual_paintEvent(self: pointer, slot: int) {.importc: "QSpinBox_override_virtual_paintEvent".}
proc fQSpinBox_virtualbase_showEvent(self: pointer, event: pointer): void{.importc: "QSpinBox_virtualbase_showEvent".}
proc fcQSpinBox_override_virtual_showEvent(self: pointer, slot: int) {.importc: "QSpinBox_override_virtual_showEvent".}
proc fQSpinBox_virtualbase_initStyleOption(self: pointer, option: pointer): void{.importc: "QSpinBox_virtualbase_initStyleOption".}
proc fcQSpinBox_override_virtual_initStyleOption(self: pointer, slot: int) {.importc: "QSpinBox_override_virtual_initStyleOption".}
proc fQSpinBox_virtualbase_stepEnabled(self: pointer, ): cint{.importc: "QSpinBox_virtualbase_stepEnabled".}
proc fcQSpinBox_override_virtual_stepEnabled(self: pointer, slot: int) {.importc: "QSpinBox_override_virtual_stepEnabled".}
proc fQSpinBox_virtualbase_devType(self: pointer, ): cint{.importc: "QSpinBox_virtualbase_devType".}
proc fcQSpinBox_override_virtual_devType(self: pointer, slot: int) {.importc: "QSpinBox_override_virtual_devType".}
proc fQSpinBox_virtualbase_setVisible(self: pointer, visible: bool): void{.importc: "QSpinBox_virtualbase_setVisible".}
proc fcQSpinBox_override_virtual_setVisible(self: pointer, slot: int) {.importc: "QSpinBox_override_virtual_setVisible".}
proc fQSpinBox_virtualbase_heightForWidth(self: pointer, param1: cint): cint{.importc: "QSpinBox_virtualbase_heightForWidth".}
proc fcQSpinBox_override_virtual_heightForWidth(self: pointer, slot: int) {.importc: "QSpinBox_override_virtual_heightForWidth".}
proc fQSpinBox_virtualbase_hasHeightForWidth(self: pointer, ): bool{.importc: "QSpinBox_virtualbase_hasHeightForWidth".}
proc fcQSpinBox_override_virtual_hasHeightForWidth(self: pointer, slot: int) {.importc: "QSpinBox_override_virtual_hasHeightForWidth".}
proc fQSpinBox_virtualbase_paintEngine(self: pointer, ): pointer{.importc: "QSpinBox_virtualbase_paintEngine".}
proc fcQSpinBox_override_virtual_paintEngine(self: pointer, slot: int) {.importc: "QSpinBox_override_virtual_paintEngine".}
proc fQSpinBox_virtualbase_mouseDoubleClickEvent(self: pointer, event: pointer): void{.importc: "QSpinBox_virtualbase_mouseDoubleClickEvent".}
proc fcQSpinBox_override_virtual_mouseDoubleClickEvent(self: pointer, slot: int) {.importc: "QSpinBox_override_virtual_mouseDoubleClickEvent".}
proc fQSpinBox_virtualbase_enterEvent(self: pointer, event: pointer): void{.importc: "QSpinBox_virtualbase_enterEvent".}
proc fcQSpinBox_override_virtual_enterEvent(self: pointer, slot: int) {.importc: "QSpinBox_override_virtual_enterEvent".}
proc fQSpinBox_virtualbase_leaveEvent(self: pointer, event: pointer): void{.importc: "QSpinBox_virtualbase_leaveEvent".}
proc fcQSpinBox_override_virtual_leaveEvent(self: pointer, slot: int) {.importc: "QSpinBox_override_virtual_leaveEvent".}
proc fQSpinBox_virtualbase_moveEvent(self: pointer, event: pointer): void{.importc: "QSpinBox_virtualbase_moveEvent".}
proc fcQSpinBox_override_virtual_moveEvent(self: pointer, slot: int) {.importc: "QSpinBox_override_virtual_moveEvent".}
proc fQSpinBox_virtualbase_tabletEvent(self: pointer, event: pointer): void{.importc: "QSpinBox_virtualbase_tabletEvent".}
proc fcQSpinBox_override_virtual_tabletEvent(self: pointer, slot: int) {.importc: "QSpinBox_override_virtual_tabletEvent".}
proc fQSpinBox_virtualbase_actionEvent(self: pointer, event: pointer): void{.importc: "QSpinBox_virtualbase_actionEvent".}
proc fcQSpinBox_override_virtual_actionEvent(self: pointer, slot: int) {.importc: "QSpinBox_override_virtual_actionEvent".}
proc fQSpinBox_virtualbase_dragEnterEvent(self: pointer, event: pointer): void{.importc: "QSpinBox_virtualbase_dragEnterEvent".}
proc fcQSpinBox_override_virtual_dragEnterEvent(self: pointer, slot: int) {.importc: "QSpinBox_override_virtual_dragEnterEvent".}
proc fQSpinBox_virtualbase_dragMoveEvent(self: pointer, event: pointer): void{.importc: "QSpinBox_virtualbase_dragMoveEvent".}
proc fcQSpinBox_override_virtual_dragMoveEvent(self: pointer, slot: int) {.importc: "QSpinBox_override_virtual_dragMoveEvent".}
proc fQSpinBox_virtualbase_dragLeaveEvent(self: pointer, event: pointer): void{.importc: "QSpinBox_virtualbase_dragLeaveEvent".}
proc fcQSpinBox_override_virtual_dragLeaveEvent(self: pointer, slot: int) {.importc: "QSpinBox_override_virtual_dragLeaveEvent".}
proc fQSpinBox_virtualbase_dropEvent(self: pointer, event: pointer): void{.importc: "QSpinBox_virtualbase_dropEvent".}
proc fcQSpinBox_override_virtual_dropEvent(self: pointer, slot: int) {.importc: "QSpinBox_override_virtual_dropEvent".}
proc fQSpinBox_virtualbase_nativeEvent(self: pointer, eventType: struct_miqt_string, message: pointer, resultVal: ptr uint): bool{.importc: "QSpinBox_virtualbase_nativeEvent".}
proc fcQSpinBox_override_virtual_nativeEvent(self: pointer, slot: int) {.importc: "QSpinBox_override_virtual_nativeEvent".}
proc fQSpinBox_virtualbase_metric(self: pointer, param1: cint): cint{.importc: "QSpinBox_virtualbase_metric".}
proc fcQSpinBox_override_virtual_metric(self: pointer, slot: int) {.importc: "QSpinBox_override_virtual_metric".}
proc fQSpinBox_virtualbase_initPainter(self: pointer, painter: pointer): void{.importc: "QSpinBox_virtualbase_initPainter".}
proc fcQSpinBox_override_virtual_initPainter(self: pointer, slot: int) {.importc: "QSpinBox_override_virtual_initPainter".}
proc fQSpinBox_virtualbase_redirected(self: pointer, offset: pointer): pointer{.importc: "QSpinBox_virtualbase_redirected".}
proc fcQSpinBox_override_virtual_redirected(self: pointer, slot: int) {.importc: "QSpinBox_override_virtual_redirected".}
proc fQSpinBox_virtualbase_sharedPainter(self: pointer, ): pointer{.importc: "QSpinBox_virtualbase_sharedPainter".}
proc fcQSpinBox_override_virtual_sharedPainter(self: pointer, slot: int) {.importc: "QSpinBox_override_virtual_sharedPainter".}
proc fQSpinBox_virtualbase_inputMethodEvent(self: pointer, param1: pointer): void{.importc: "QSpinBox_virtualbase_inputMethodEvent".}
proc fcQSpinBox_override_virtual_inputMethodEvent(self: pointer, slot: int) {.importc: "QSpinBox_override_virtual_inputMethodEvent".}
proc fQSpinBox_virtualbase_focusNextPrevChild(self: pointer, next: bool): bool{.importc: "QSpinBox_virtualbase_focusNextPrevChild".}
proc fcQSpinBox_override_virtual_focusNextPrevChild(self: pointer, slot: int) {.importc: "QSpinBox_override_virtual_focusNextPrevChild".}
proc fQSpinBox_virtualbase_eventFilter(self: pointer, watched: pointer, event: pointer): bool{.importc: "QSpinBox_virtualbase_eventFilter".}
proc fcQSpinBox_override_virtual_eventFilter(self: pointer, slot: int) {.importc: "QSpinBox_override_virtual_eventFilter".}
proc fQSpinBox_virtualbase_childEvent(self: pointer, event: pointer): void{.importc: "QSpinBox_virtualbase_childEvent".}
proc fcQSpinBox_override_virtual_childEvent(self: pointer, slot: int) {.importc: "QSpinBox_override_virtual_childEvent".}
proc fQSpinBox_virtualbase_customEvent(self: pointer, event: pointer): void{.importc: "QSpinBox_virtualbase_customEvent".}
proc fcQSpinBox_override_virtual_customEvent(self: pointer, slot: int) {.importc: "QSpinBox_override_virtual_customEvent".}
proc fQSpinBox_virtualbase_connectNotify(self: pointer, signal: pointer): void{.importc: "QSpinBox_virtualbase_connectNotify".}
proc fcQSpinBox_override_virtual_connectNotify(self: pointer, slot: int) {.importc: "QSpinBox_override_virtual_connectNotify".}
proc fQSpinBox_virtualbase_disconnectNotify(self: pointer, signal: pointer): void{.importc: "QSpinBox_virtualbase_disconnectNotify".}
proc fcQSpinBox_override_virtual_disconnectNotify(self: pointer, slot: int) {.importc: "QSpinBox_override_virtual_disconnectNotify".}
proc fcQSpinBox_staticMetaObject(): pointer {.importc: "QSpinBox_staticMetaObject".}
proc fcQSpinBox_delete(self: pointer) {.importc: "QSpinBox_delete".}
proc fcQDoubleSpinBox_new(parent: pointer): ptr cQDoubleSpinBox {.importc: "QDoubleSpinBox_new".}
proc fcQDoubleSpinBox_new2(): ptr cQDoubleSpinBox {.importc: "QDoubleSpinBox_new2".}
proc fcQDoubleSpinBox_metaObject(self: pointer, ): pointer {.importc: "QDoubleSpinBox_metaObject".}
proc fcQDoubleSpinBox_metacast(self: pointer, param1: cstring): pointer {.importc: "QDoubleSpinBox_metacast".}
proc fcQDoubleSpinBox_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.importc: "QDoubleSpinBox_metacall".}
proc fcQDoubleSpinBox_tr(s: cstring): struct_miqt_string {.importc: "QDoubleSpinBox_tr".}
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
proc fcQDoubleSpinBox_tr2(s: cstring, c: cstring): struct_miqt_string {.importc: "QDoubleSpinBox_tr2".}
proc fcQDoubleSpinBox_tr3(s: cstring, c: cstring, n: cint): struct_miqt_string {.importc: "QDoubleSpinBox_tr3".}
proc fQDoubleSpinBox_virtualbase_metaObject(self: pointer, ): pointer{.importc: "QDoubleSpinBox_virtualbase_metaObject".}
proc fcQDoubleSpinBox_override_virtual_metaObject(self: pointer, slot: int) {.importc: "QDoubleSpinBox_override_virtual_metaObject".}
proc fQDoubleSpinBox_virtualbase_metacast(self: pointer, param1: cstring): pointer{.importc: "QDoubleSpinBox_virtualbase_metacast".}
proc fcQDoubleSpinBox_override_virtual_metacast(self: pointer, slot: int) {.importc: "QDoubleSpinBox_override_virtual_metacast".}
proc fQDoubleSpinBox_virtualbase_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint{.importc: "QDoubleSpinBox_virtualbase_metacall".}
proc fcQDoubleSpinBox_override_virtual_metacall(self: pointer, slot: int) {.importc: "QDoubleSpinBox_override_virtual_metacall".}
proc fQDoubleSpinBox_virtualbase_validate(self: pointer, input: struct_miqt_string, pos: ptr cint): cint{.importc: "QDoubleSpinBox_virtualbase_validate".}
proc fcQDoubleSpinBox_override_virtual_validate(self: pointer, slot: int) {.importc: "QDoubleSpinBox_override_virtual_validate".}
proc fQDoubleSpinBox_virtualbase_valueFromText(self: pointer, text: struct_miqt_string): float64{.importc: "QDoubleSpinBox_virtualbase_valueFromText".}
proc fcQDoubleSpinBox_override_virtual_valueFromText(self: pointer, slot: int) {.importc: "QDoubleSpinBox_override_virtual_valueFromText".}
proc fQDoubleSpinBox_virtualbase_textFromValue(self: pointer, val: float64): struct_miqt_string{.importc: "QDoubleSpinBox_virtualbase_textFromValue".}
proc fcQDoubleSpinBox_override_virtual_textFromValue(self: pointer, slot: int) {.importc: "QDoubleSpinBox_override_virtual_textFromValue".}
proc fQDoubleSpinBox_virtualbase_fixup(self: pointer, str: struct_miqt_string): void{.importc: "QDoubleSpinBox_virtualbase_fixup".}
proc fcQDoubleSpinBox_override_virtual_fixup(self: pointer, slot: int) {.importc: "QDoubleSpinBox_override_virtual_fixup".}
proc fQDoubleSpinBox_virtualbase_sizeHint(self: pointer, ): pointer{.importc: "QDoubleSpinBox_virtualbase_sizeHint".}
proc fcQDoubleSpinBox_override_virtual_sizeHint(self: pointer, slot: int) {.importc: "QDoubleSpinBox_override_virtual_sizeHint".}
proc fQDoubleSpinBox_virtualbase_minimumSizeHint(self: pointer, ): pointer{.importc: "QDoubleSpinBox_virtualbase_minimumSizeHint".}
proc fcQDoubleSpinBox_override_virtual_minimumSizeHint(self: pointer, slot: int) {.importc: "QDoubleSpinBox_override_virtual_minimumSizeHint".}
proc fQDoubleSpinBox_virtualbase_event(self: pointer, event: pointer): bool{.importc: "QDoubleSpinBox_virtualbase_event".}
proc fcQDoubleSpinBox_override_virtual_event(self: pointer, slot: int) {.importc: "QDoubleSpinBox_override_virtual_event".}
proc fQDoubleSpinBox_virtualbase_inputMethodQuery(self: pointer, param1: cint): pointer{.importc: "QDoubleSpinBox_virtualbase_inputMethodQuery".}
proc fcQDoubleSpinBox_override_virtual_inputMethodQuery(self: pointer, slot: int) {.importc: "QDoubleSpinBox_override_virtual_inputMethodQuery".}
proc fQDoubleSpinBox_virtualbase_stepBy(self: pointer, steps: cint): void{.importc: "QDoubleSpinBox_virtualbase_stepBy".}
proc fcQDoubleSpinBox_override_virtual_stepBy(self: pointer, slot: int) {.importc: "QDoubleSpinBox_override_virtual_stepBy".}
proc fQDoubleSpinBox_virtualbase_clear(self: pointer, ): void{.importc: "QDoubleSpinBox_virtualbase_clear".}
proc fcQDoubleSpinBox_override_virtual_clear(self: pointer, slot: int) {.importc: "QDoubleSpinBox_override_virtual_clear".}
proc fQDoubleSpinBox_virtualbase_resizeEvent(self: pointer, event: pointer): void{.importc: "QDoubleSpinBox_virtualbase_resizeEvent".}
proc fcQDoubleSpinBox_override_virtual_resizeEvent(self: pointer, slot: int) {.importc: "QDoubleSpinBox_override_virtual_resizeEvent".}
proc fQDoubleSpinBox_virtualbase_keyPressEvent(self: pointer, event: pointer): void{.importc: "QDoubleSpinBox_virtualbase_keyPressEvent".}
proc fcQDoubleSpinBox_override_virtual_keyPressEvent(self: pointer, slot: int) {.importc: "QDoubleSpinBox_override_virtual_keyPressEvent".}
proc fQDoubleSpinBox_virtualbase_keyReleaseEvent(self: pointer, event: pointer): void{.importc: "QDoubleSpinBox_virtualbase_keyReleaseEvent".}
proc fcQDoubleSpinBox_override_virtual_keyReleaseEvent(self: pointer, slot: int) {.importc: "QDoubleSpinBox_override_virtual_keyReleaseEvent".}
proc fQDoubleSpinBox_virtualbase_wheelEvent(self: pointer, event: pointer): void{.importc: "QDoubleSpinBox_virtualbase_wheelEvent".}
proc fcQDoubleSpinBox_override_virtual_wheelEvent(self: pointer, slot: int) {.importc: "QDoubleSpinBox_override_virtual_wheelEvent".}
proc fQDoubleSpinBox_virtualbase_focusInEvent(self: pointer, event: pointer): void{.importc: "QDoubleSpinBox_virtualbase_focusInEvent".}
proc fcQDoubleSpinBox_override_virtual_focusInEvent(self: pointer, slot: int) {.importc: "QDoubleSpinBox_override_virtual_focusInEvent".}
proc fQDoubleSpinBox_virtualbase_focusOutEvent(self: pointer, event: pointer): void{.importc: "QDoubleSpinBox_virtualbase_focusOutEvent".}
proc fcQDoubleSpinBox_override_virtual_focusOutEvent(self: pointer, slot: int) {.importc: "QDoubleSpinBox_override_virtual_focusOutEvent".}
proc fQDoubleSpinBox_virtualbase_contextMenuEvent(self: pointer, event: pointer): void{.importc: "QDoubleSpinBox_virtualbase_contextMenuEvent".}
proc fcQDoubleSpinBox_override_virtual_contextMenuEvent(self: pointer, slot: int) {.importc: "QDoubleSpinBox_override_virtual_contextMenuEvent".}
proc fQDoubleSpinBox_virtualbase_changeEvent(self: pointer, event: pointer): void{.importc: "QDoubleSpinBox_virtualbase_changeEvent".}
proc fcQDoubleSpinBox_override_virtual_changeEvent(self: pointer, slot: int) {.importc: "QDoubleSpinBox_override_virtual_changeEvent".}
proc fQDoubleSpinBox_virtualbase_closeEvent(self: pointer, event: pointer): void{.importc: "QDoubleSpinBox_virtualbase_closeEvent".}
proc fcQDoubleSpinBox_override_virtual_closeEvent(self: pointer, slot: int) {.importc: "QDoubleSpinBox_override_virtual_closeEvent".}
proc fQDoubleSpinBox_virtualbase_hideEvent(self: pointer, event: pointer): void{.importc: "QDoubleSpinBox_virtualbase_hideEvent".}
proc fcQDoubleSpinBox_override_virtual_hideEvent(self: pointer, slot: int) {.importc: "QDoubleSpinBox_override_virtual_hideEvent".}
proc fQDoubleSpinBox_virtualbase_mousePressEvent(self: pointer, event: pointer): void{.importc: "QDoubleSpinBox_virtualbase_mousePressEvent".}
proc fcQDoubleSpinBox_override_virtual_mousePressEvent(self: pointer, slot: int) {.importc: "QDoubleSpinBox_override_virtual_mousePressEvent".}
proc fQDoubleSpinBox_virtualbase_mouseReleaseEvent(self: pointer, event: pointer): void{.importc: "QDoubleSpinBox_virtualbase_mouseReleaseEvent".}
proc fcQDoubleSpinBox_override_virtual_mouseReleaseEvent(self: pointer, slot: int) {.importc: "QDoubleSpinBox_override_virtual_mouseReleaseEvent".}
proc fQDoubleSpinBox_virtualbase_mouseMoveEvent(self: pointer, event: pointer): void{.importc: "QDoubleSpinBox_virtualbase_mouseMoveEvent".}
proc fcQDoubleSpinBox_override_virtual_mouseMoveEvent(self: pointer, slot: int) {.importc: "QDoubleSpinBox_override_virtual_mouseMoveEvent".}
proc fQDoubleSpinBox_virtualbase_timerEvent(self: pointer, event: pointer): void{.importc: "QDoubleSpinBox_virtualbase_timerEvent".}
proc fcQDoubleSpinBox_override_virtual_timerEvent(self: pointer, slot: int) {.importc: "QDoubleSpinBox_override_virtual_timerEvent".}
proc fQDoubleSpinBox_virtualbase_paintEvent(self: pointer, event: pointer): void{.importc: "QDoubleSpinBox_virtualbase_paintEvent".}
proc fcQDoubleSpinBox_override_virtual_paintEvent(self: pointer, slot: int) {.importc: "QDoubleSpinBox_override_virtual_paintEvent".}
proc fQDoubleSpinBox_virtualbase_showEvent(self: pointer, event: pointer): void{.importc: "QDoubleSpinBox_virtualbase_showEvent".}
proc fcQDoubleSpinBox_override_virtual_showEvent(self: pointer, slot: int) {.importc: "QDoubleSpinBox_override_virtual_showEvent".}
proc fQDoubleSpinBox_virtualbase_initStyleOption(self: pointer, option: pointer): void{.importc: "QDoubleSpinBox_virtualbase_initStyleOption".}
proc fcQDoubleSpinBox_override_virtual_initStyleOption(self: pointer, slot: int) {.importc: "QDoubleSpinBox_override_virtual_initStyleOption".}
proc fQDoubleSpinBox_virtualbase_stepEnabled(self: pointer, ): cint{.importc: "QDoubleSpinBox_virtualbase_stepEnabled".}
proc fcQDoubleSpinBox_override_virtual_stepEnabled(self: pointer, slot: int) {.importc: "QDoubleSpinBox_override_virtual_stepEnabled".}
proc fQDoubleSpinBox_virtualbase_devType(self: pointer, ): cint{.importc: "QDoubleSpinBox_virtualbase_devType".}
proc fcQDoubleSpinBox_override_virtual_devType(self: pointer, slot: int) {.importc: "QDoubleSpinBox_override_virtual_devType".}
proc fQDoubleSpinBox_virtualbase_setVisible(self: pointer, visible: bool): void{.importc: "QDoubleSpinBox_virtualbase_setVisible".}
proc fcQDoubleSpinBox_override_virtual_setVisible(self: pointer, slot: int) {.importc: "QDoubleSpinBox_override_virtual_setVisible".}
proc fQDoubleSpinBox_virtualbase_heightForWidth(self: pointer, param1: cint): cint{.importc: "QDoubleSpinBox_virtualbase_heightForWidth".}
proc fcQDoubleSpinBox_override_virtual_heightForWidth(self: pointer, slot: int) {.importc: "QDoubleSpinBox_override_virtual_heightForWidth".}
proc fQDoubleSpinBox_virtualbase_hasHeightForWidth(self: pointer, ): bool{.importc: "QDoubleSpinBox_virtualbase_hasHeightForWidth".}
proc fcQDoubleSpinBox_override_virtual_hasHeightForWidth(self: pointer, slot: int) {.importc: "QDoubleSpinBox_override_virtual_hasHeightForWidth".}
proc fQDoubleSpinBox_virtualbase_paintEngine(self: pointer, ): pointer{.importc: "QDoubleSpinBox_virtualbase_paintEngine".}
proc fcQDoubleSpinBox_override_virtual_paintEngine(self: pointer, slot: int) {.importc: "QDoubleSpinBox_override_virtual_paintEngine".}
proc fQDoubleSpinBox_virtualbase_mouseDoubleClickEvent(self: pointer, event: pointer): void{.importc: "QDoubleSpinBox_virtualbase_mouseDoubleClickEvent".}
proc fcQDoubleSpinBox_override_virtual_mouseDoubleClickEvent(self: pointer, slot: int) {.importc: "QDoubleSpinBox_override_virtual_mouseDoubleClickEvent".}
proc fQDoubleSpinBox_virtualbase_enterEvent(self: pointer, event: pointer): void{.importc: "QDoubleSpinBox_virtualbase_enterEvent".}
proc fcQDoubleSpinBox_override_virtual_enterEvent(self: pointer, slot: int) {.importc: "QDoubleSpinBox_override_virtual_enterEvent".}
proc fQDoubleSpinBox_virtualbase_leaveEvent(self: pointer, event: pointer): void{.importc: "QDoubleSpinBox_virtualbase_leaveEvent".}
proc fcQDoubleSpinBox_override_virtual_leaveEvent(self: pointer, slot: int) {.importc: "QDoubleSpinBox_override_virtual_leaveEvent".}
proc fQDoubleSpinBox_virtualbase_moveEvent(self: pointer, event: pointer): void{.importc: "QDoubleSpinBox_virtualbase_moveEvent".}
proc fcQDoubleSpinBox_override_virtual_moveEvent(self: pointer, slot: int) {.importc: "QDoubleSpinBox_override_virtual_moveEvent".}
proc fQDoubleSpinBox_virtualbase_tabletEvent(self: pointer, event: pointer): void{.importc: "QDoubleSpinBox_virtualbase_tabletEvent".}
proc fcQDoubleSpinBox_override_virtual_tabletEvent(self: pointer, slot: int) {.importc: "QDoubleSpinBox_override_virtual_tabletEvent".}
proc fQDoubleSpinBox_virtualbase_actionEvent(self: pointer, event: pointer): void{.importc: "QDoubleSpinBox_virtualbase_actionEvent".}
proc fcQDoubleSpinBox_override_virtual_actionEvent(self: pointer, slot: int) {.importc: "QDoubleSpinBox_override_virtual_actionEvent".}
proc fQDoubleSpinBox_virtualbase_dragEnterEvent(self: pointer, event: pointer): void{.importc: "QDoubleSpinBox_virtualbase_dragEnterEvent".}
proc fcQDoubleSpinBox_override_virtual_dragEnterEvent(self: pointer, slot: int) {.importc: "QDoubleSpinBox_override_virtual_dragEnterEvent".}
proc fQDoubleSpinBox_virtualbase_dragMoveEvent(self: pointer, event: pointer): void{.importc: "QDoubleSpinBox_virtualbase_dragMoveEvent".}
proc fcQDoubleSpinBox_override_virtual_dragMoveEvent(self: pointer, slot: int) {.importc: "QDoubleSpinBox_override_virtual_dragMoveEvent".}
proc fQDoubleSpinBox_virtualbase_dragLeaveEvent(self: pointer, event: pointer): void{.importc: "QDoubleSpinBox_virtualbase_dragLeaveEvent".}
proc fcQDoubleSpinBox_override_virtual_dragLeaveEvent(self: pointer, slot: int) {.importc: "QDoubleSpinBox_override_virtual_dragLeaveEvent".}
proc fQDoubleSpinBox_virtualbase_dropEvent(self: pointer, event: pointer): void{.importc: "QDoubleSpinBox_virtualbase_dropEvent".}
proc fcQDoubleSpinBox_override_virtual_dropEvent(self: pointer, slot: int) {.importc: "QDoubleSpinBox_override_virtual_dropEvent".}
proc fQDoubleSpinBox_virtualbase_nativeEvent(self: pointer, eventType: struct_miqt_string, message: pointer, resultVal: ptr uint): bool{.importc: "QDoubleSpinBox_virtualbase_nativeEvent".}
proc fcQDoubleSpinBox_override_virtual_nativeEvent(self: pointer, slot: int) {.importc: "QDoubleSpinBox_override_virtual_nativeEvent".}
proc fQDoubleSpinBox_virtualbase_metric(self: pointer, param1: cint): cint{.importc: "QDoubleSpinBox_virtualbase_metric".}
proc fcQDoubleSpinBox_override_virtual_metric(self: pointer, slot: int) {.importc: "QDoubleSpinBox_override_virtual_metric".}
proc fQDoubleSpinBox_virtualbase_initPainter(self: pointer, painter: pointer): void{.importc: "QDoubleSpinBox_virtualbase_initPainter".}
proc fcQDoubleSpinBox_override_virtual_initPainter(self: pointer, slot: int) {.importc: "QDoubleSpinBox_override_virtual_initPainter".}
proc fQDoubleSpinBox_virtualbase_redirected(self: pointer, offset: pointer): pointer{.importc: "QDoubleSpinBox_virtualbase_redirected".}
proc fcQDoubleSpinBox_override_virtual_redirected(self: pointer, slot: int) {.importc: "QDoubleSpinBox_override_virtual_redirected".}
proc fQDoubleSpinBox_virtualbase_sharedPainter(self: pointer, ): pointer{.importc: "QDoubleSpinBox_virtualbase_sharedPainter".}
proc fcQDoubleSpinBox_override_virtual_sharedPainter(self: pointer, slot: int) {.importc: "QDoubleSpinBox_override_virtual_sharedPainter".}
proc fQDoubleSpinBox_virtualbase_inputMethodEvent(self: pointer, param1: pointer): void{.importc: "QDoubleSpinBox_virtualbase_inputMethodEvent".}
proc fcQDoubleSpinBox_override_virtual_inputMethodEvent(self: pointer, slot: int) {.importc: "QDoubleSpinBox_override_virtual_inputMethodEvent".}
proc fQDoubleSpinBox_virtualbase_focusNextPrevChild(self: pointer, next: bool): bool{.importc: "QDoubleSpinBox_virtualbase_focusNextPrevChild".}
proc fcQDoubleSpinBox_override_virtual_focusNextPrevChild(self: pointer, slot: int) {.importc: "QDoubleSpinBox_override_virtual_focusNextPrevChild".}
proc fQDoubleSpinBox_virtualbase_eventFilter(self: pointer, watched: pointer, event: pointer): bool{.importc: "QDoubleSpinBox_virtualbase_eventFilter".}
proc fcQDoubleSpinBox_override_virtual_eventFilter(self: pointer, slot: int) {.importc: "QDoubleSpinBox_override_virtual_eventFilter".}
proc fQDoubleSpinBox_virtualbase_childEvent(self: pointer, event: pointer): void{.importc: "QDoubleSpinBox_virtualbase_childEvent".}
proc fcQDoubleSpinBox_override_virtual_childEvent(self: pointer, slot: int) {.importc: "QDoubleSpinBox_override_virtual_childEvent".}
proc fQDoubleSpinBox_virtualbase_customEvent(self: pointer, event: pointer): void{.importc: "QDoubleSpinBox_virtualbase_customEvent".}
proc fcQDoubleSpinBox_override_virtual_customEvent(self: pointer, slot: int) {.importc: "QDoubleSpinBox_override_virtual_customEvent".}
proc fQDoubleSpinBox_virtualbase_connectNotify(self: pointer, signal: pointer): void{.importc: "QDoubleSpinBox_virtualbase_connectNotify".}
proc fcQDoubleSpinBox_override_virtual_connectNotify(self: pointer, slot: int) {.importc: "QDoubleSpinBox_override_virtual_connectNotify".}
proc fQDoubleSpinBox_virtualbase_disconnectNotify(self: pointer, signal: pointer): void{.importc: "QDoubleSpinBox_virtualbase_disconnectNotify".}
proc fcQDoubleSpinBox_override_virtual_disconnectNotify(self: pointer, slot: int) {.importc: "QDoubleSpinBox_override_virtual_disconnectNotify".}
proc fcQDoubleSpinBox_staticMetaObject(): pointer {.importc: "QDoubleSpinBox_staticMetaObject".}
proc fcQDoubleSpinBox_delete(self: pointer) {.importc: "QDoubleSpinBox_delete".}


func init*(T: type gen_qspinbox_types.QSpinBox, h: ptr cQSpinBox): gen_qspinbox_types.QSpinBox =
  T(h: h)
proc create*(T: type gen_qspinbox_types.QSpinBox, parent: gen_qwidget_types.QWidget): gen_qspinbox_types.QSpinBox =
  gen_qspinbox_types.QSpinBox.init(fcQSpinBox_new(parent.h))

proc create*(T: type gen_qspinbox_types.QSpinBox, ): gen_qspinbox_types.QSpinBox =
  gen_qspinbox_types.QSpinBox.init(fcQSpinBox_new2())

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
proc miqt_exec_callback_QSpinBox_valueChanged(slot: int, param1: cint) {.exportc.} =
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
proc miqt_exec_callback_QSpinBox_textChanged(slot: int, param1: struct_miqt_string) {.exportc.} =
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

proc QSpinBoxmetaObject*(self: gen_qspinbox_types.QSpinBox, ): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fQSpinBox_virtualbase_metaObject(self.h))

type QSpinBoxmetaObjectProc* = proc(): gen_qobjectdefs_types.QMetaObject
proc onmetaObject*(self: gen_qspinbox_types.QSpinBox, slot: QSpinBoxmetaObjectProc) =
  # TODO check subclass
  var tmp = new QSpinBoxmetaObjectProc
  tmp[] = slot
  GC_ref(tmp)
  fcQSpinBox_override_virtual_metaObject(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QSpinBox_metaObject(self: ptr cQSpinBox, slot: int): pointer {.exportc: "miqt_exec_callback_QSpinBox_metaObject ".} =
  var nimfunc = cast[ptr QSpinBoxmetaObjectProc](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )

  virtualReturn.h
proc QSpinBoxmetacast*(self: gen_qspinbox_types.QSpinBox, param1: cstring): pointer =
  fQSpinBox_virtualbase_metacast(self.h, param1)

type QSpinBoxmetacastProc* = proc(param1: cstring): pointer
proc onmetacast*(self: gen_qspinbox_types.QSpinBox, slot: QSpinBoxmetacastProc) =
  # TODO check subclass
  var tmp = new QSpinBoxmetacastProc
  tmp[] = slot
  GC_ref(tmp)
  fcQSpinBox_override_virtual_metacast(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QSpinBox_metacast(self: ptr cQSpinBox, slot: int, param1: cstring): pointer {.exportc: "miqt_exec_callback_QSpinBox_metacast ".} =
  var nimfunc = cast[ptr QSpinBoxmetacastProc](cast[pointer](slot))
  let slotval1 = (param1)


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn
proc QSpinBoxmetacall*(self: gen_qspinbox_types.QSpinBox, param1: cint, param2: cint, param3: pointer): cint =
  fQSpinBox_virtualbase_metacall(self.h, cint(param1), param2, param3)

type QSpinBoxmetacallProc* = proc(param1: cint, param2: cint, param3: pointer): cint
proc onmetacall*(self: gen_qspinbox_types.QSpinBox, slot: QSpinBoxmetacallProc) =
  # TODO check subclass
  var tmp = new QSpinBoxmetacallProc
  tmp[] = slot
  GC_ref(tmp)
  fcQSpinBox_override_virtual_metacall(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QSpinBox_metacall(self: ptr cQSpinBox, slot: int, param1: cint, param2: cint, param3: pointer): cint {.exportc: "miqt_exec_callback_QSpinBox_metacall ".} =
  var nimfunc = cast[ptr QSpinBoxmetacallProc](cast[pointer](slot))
  let slotval1 = cint(param1)

  let slotval2 = param2

  let slotval3 = param3


  let virtualReturn = nimfunc[](slotval1, slotval2, slotval3 )

  virtualReturn
proc QSpinBoxevent*(self: gen_qspinbox_types.QSpinBox, event: gen_qcoreevent_types.QEvent): bool =
  fQSpinBox_virtualbase_event(self.h, event.h)

type QSpinBoxeventProc* = proc(event: gen_qcoreevent_types.QEvent): bool
proc onevent*(self: gen_qspinbox_types.QSpinBox, slot: QSpinBoxeventProc) =
  # TODO check subclass
  var tmp = new QSpinBoxeventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQSpinBox_override_virtual_event(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QSpinBox_event(self: ptr cQSpinBox, slot: int, event: pointer): bool {.exportc: "miqt_exec_callback_QSpinBox_event ".} =
  var nimfunc = cast[ptr QSpinBoxeventProc](cast[pointer](slot))
  let slotval1 = gen_qcoreevent_types.QEvent(h: event)


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn
proc QSpinBoxvalidate*(self: gen_qspinbox_types.QSpinBox, input: string, pos: ptr cint): cint =
  cint(fQSpinBox_virtualbase_validate(self.h, struct_miqt_string(data: input, len: csize_t(len(input))), pos))

type QSpinBoxvalidateProc* = proc(input: string, pos: ptr cint): cint
proc onvalidate*(self: gen_qspinbox_types.QSpinBox, slot: QSpinBoxvalidateProc) =
  # TODO check subclass
  var tmp = new QSpinBoxvalidateProc
  tmp[] = slot
  GC_ref(tmp)
  fcQSpinBox_override_virtual_validate(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QSpinBox_validate(self: ptr cQSpinBox, slot: int, input: struct_miqt_string, pos: ptr cint): cint {.exportc: "miqt_exec_callback_QSpinBox_validate ".} =
  var nimfunc = cast[ptr QSpinBoxvalidateProc](cast[pointer](slot))
  let vinput_ms = input
  let vinputx_ret = string.fromBytes(toOpenArrayByte(vinput_ms.data, 0, int(vinput_ms.len)-1))
  c_free(vinput_ms.data)
  let slotval1 = vinputx_ret

  let slotval2 = pos


  let virtualReturn = nimfunc[](slotval1, slotval2 )

  cint(virtualReturn)
proc QSpinBoxvalueFromText*(self: gen_qspinbox_types.QSpinBox, text: string): cint =
  fQSpinBox_virtualbase_valueFromText(self.h, struct_miqt_string(data: text, len: csize_t(len(text))))

type QSpinBoxvalueFromTextProc* = proc(text: string): cint
proc onvalueFromText*(self: gen_qspinbox_types.QSpinBox, slot: QSpinBoxvalueFromTextProc) =
  # TODO check subclass
  var tmp = new QSpinBoxvalueFromTextProc
  tmp[] = slot
  GC_ref(tmp)
  fcQSpinBox_override_virtual_valueFromText(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QSpinBox_valueFromText(self: ptr cQSpinBox, slot: int, text: struct_miqt_string): cint {.exportc: "miqt_exec_callback_QSpinBox_valueFromText ".} =
  var nimfunc = cast[ptr QSpinBoxvalueFromTextProc](cast[pointer](slot))
  let vtext_ms = text
  let vtextx_ret = string.fromBytes(toOpenArrayByte(vtext_ms.data, 0, int(vtext_ms.len)-1))
  c_free(vtext_ms.data)
  let slotval1 = vtextx_ret


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn
proc QSpinBoxtextFromValue*(self: gen_qspinbox_types.QSpinBox, val: cint): string =
  let v_ms = fQSpinBox_virtualbase_textFromValue(self.h, val)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

type QSpinBoxtextFromValueProc* = proc(val: cint): string
proc ontextFromValue*(self: gen_qspinbox_types.QSpinBox, slot: QSpinBoxtextFromValueProc) =
  # TODO check subclass
  var tmp = new QSpinBoxtextFromValueProc
  tmp[] = slot
  GC_ref(tmp)
  fcQSpinBox_override_virtual_textFromValue(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QSpinBox_textFromValue(self: ptr cQSpinBox, slot: int, val: cint): struct_miqt_string {.exportc: "miqt_exec_callback_QSpinBox_textFromValue ".} =
  var nimfunc = cast[ptr QSpinBoxtextFromValueProc](cast[pointer](slot))
  let slotval1 = val


  let virtualReturn = nimfunc[](slotval1 )

  struct_miqt_string(data: virtualReturn, len: csize_t(len(virtualReturn)))
proc QSpinBoxfixup*(self: gen_qspinbox_types.QSpinBox, str: string): void =
  fQSpinBox_virtualbase_fixup(self.h, struct_miqt_string(data: str, len: csize_t(len(str))))

type QSpinBoxfixupProc* = proc(str: string): void
proc onfixup*(self: gen_qspinbox_types.QSpinBox, slot: QSpinBoxfixupProc) =
  # TODO check subclass
  var tmp = new QSpinBoxfixupProc
  tmp[] = slot
  GC_ref(tmp)
  fcQSpinBox_override_virtual_fixup(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QSpinBox_fixup(self: ptr cQSpinBox, slot: int, str: struct_miqt_string): void {.exportc: "miqt_exec_callback_QSpinBox_fixup ".} =
  var nimfunc = cast[ptr QSpinBoxfixupProc](cast[pointer](slot))
  let vstr_ms = str
  let vstrx_ret = string.fromBytes(toOpenArrayByte(vstr_ms.data, 0, int(vstr_ms.len)-1))
  c_free(vstr_ms.data)
  let slotval1 = vstrx_ret


  nimfunc[](slotval1)
proc QSpinBoxsizeHint*(self: gen_qspinbox_types.QSpinBox, ): gen_qsize_types.QSize =
  gen_qsize_types.QSize(h: fQSpinBox_virtualbase_sizeHint(self.h))

type QSpinBoxsizeHintProc* = proc(): gen_qsize_types.QSize
proc onsizeHint*(self: gen_qspinbox_types.QSpinBox, slot: QSpinBoxsizeHintProc) =
  # TODO check subclass
  var tmp = new QSpinBoxsizeHintProc
  tmp[] = slot
  GC_ref(tmp)
  fcQSpinBox_override_virtual_sizeHint(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QSpinBox_sizeHint(self: ptr cQSpinBox, slot: int): pointer {.exportc: "miqt_exec_callback_QSpinBox_sizeHint ".} =
  var nimfunc = cast[ptr QSpinBoxsizeHintProc](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )

  virtualReturn.h
proc QSpinBoxminimumSizeHint*(self: gen_qspinbox_types.QSpinBox, ): gen_qsize_types.QSize =
  gen_qsize_types.QSize(h: fQSpinBox_virtualbase_minimumSizeHint(self.h))

type QSpinBoxminimumSizeHintProc* = proc(): gen_qsize_types.QSize
proc onminimumSizeHint*(self: gen_qspinbox_types.QSpinBox, slot: QSpinBoxminimumSizeHintProc) =
  # TODO check subclass
  var tmp = new QSpinBoxminimumSizeHintProc
  tmp[] = slot
  GC_ref(tmp)
  fcQSpinBox_override_virtual_minimumSizeHint(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QSpinBox_minimumSizeHint(self: ptr cQSpinBox, slot: int): pointer {.exportc: "miqt_exec_callback_QSpinBox_minimumSizeHint ".} =
  var nimfunc = cast[ptr QSpinBoxminimumSizeHintProc](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )

  virtualReturn.h
proc QSpinBoxinputMethodQuery*(self: gen_qspinbox_types.QSpinBox, param1: cint): gen_qvariant_types.QVariant =
  gen_qvariant_types.QVariant(h: fQSpinBox_virtualbase_inputMethodQuery(self.h, cint(param1)))

type QSpinBoxinputMethodQueryProc* = proc(param1: cint): gen_qvariant_types.QVariant
proc oninputMethodQuery*(self: gen_qspinbox_types.QSpinBox, slot: QSpinBoxinputMethodQueryProc) =
  # TODO check subclass
  var tmp = new QSpinBoxinputMethodQueryProc
  tmp[] = slot
  GC_ref(tmp)
  fcQSpinBox_override_virtual_inputMethodQuery(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QSpinBox_inputMethodQuery(self: ptr cQSpinBox, slot: int, param1: cint): pointer {.exportc: "miqt_exec_callback_QSpinBox_inputMethodQuery ".} =
  var nimfunc = cast[ptr QSpinBoxinputMethodQueryProc](cast[pointer](slot))
  let slotval1 = cint(param1)


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn.h
proc QSpinBoxstepBy*(self: gen_qspinbox_types.QSpinBox, steps: cint): void =
  fQSpinBox_virtualbase_stepBy(self.h, steps)

type QSpinBoxstepByProc* = proc(steps: cint): void
proc onstepBy*(self: gen_qspinbox_types.QSpinBox, slot: QSpinBoxstepByProc) =
  # TODO check subclass
  var tmp = new QSpinBoxstepByProc
  tmp[] = slot
  GC_ref(tmp)
  fcQSpinBox_override_virtual_stepBy(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QSpinBox_stepBy(self: ptr cQSpinBox, slot: int, steps: cint): void {.exportc: "miqt_exec_callback_QSpinBox_stepBy ".} =
  var nimfunc = cast[ptr QSpinBoxstepByProc](cast[pointer](slot))
  let slotval1 = steps


  nimfunc[](slotval1)
proc QSpinBoxclear*(self: gen_qspinbox_types.QSpinBox, ): void =
  fQSpinBox_virtualbase_clear(self.h)

type QSpinBoxclearProc* = proc(): void
proc onclear*(self: gen_qspinbox_types.QSpinBox, slot: QSpinBoxclearProc) =
  # TODO check subclass
  var tmp = new QSpinBoxclearProc
  tmp[] = slot
  GC_ref(tmp)
  fcQSpinBox_override_virtual_clear(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QSpinBox_clear(self: ptr cQSpinBox, slot: int): void {.exportc: "miqt_exec_callback_QSpinBox_clear ".} =
  var nimfunc = cast[ptr QSpinBoxclearProc](cast[pointer](slot))

  nimfunc[]()
proc QSpinBoxresizeEvent*(self: gen_qspinbox_types.QSpinBox, event: gen_qevent_types.QResizeEvent): void =
  fQSpinBox_virtualbase_resizeEvent(self.h, event.h)

type QSpinBoxresizeEventProc* = proc(event: gen_qevent_types.QResizeEvent): void
proc onresizeEvent*(self: gen_qspinbox_types.QSpinBox, slot: QSpinBoxresizeEventProc) =
  # TODO check subclass
  var tmp = new QSpinBoxresizeEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQSpinBox_override_virtual_resizeEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QSpinBox_resizeEvent(self: ptr cQSpinBox, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QSpinBox_resizeEvent ".} =
  var nimfunc = cast[ptr QSpinBoxresizeEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QResizeEvent(h: event)


  nimfunc[](slotval1)
proc QSpinBoxkeyPressEvent*(self: gen_qspinbox_types.QSpinBox, event: gen_qevent_types.QKeyEvent): void =
  fQSpinBox_virtualbase_keyPressEvent(self.h, event.h)

type QSpinBoxkeyPressEventProc* = proc(event: gen_qevent_types.QKeyEvent): void
proc onkeyPressEvent*(self: gen_qspinbox_types.QSpinBox, slot: QSpinBoxkeyPressEventProc) =
  # TODO check subclass
  var tmp = new QSpinBoxkeyPressEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQSpinBox_override_virtual_keyPressEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QSpinBox_keyPressEvent(self: ptr cQSpinBox, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QSpinBox_keyPressEvent ".} =
  var nimfunc = cast[ptr QSpinBoxkeyPressEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QKeyEvent(h: event)


  nimfunc[](slotval1)
proc QSpinBoxkeyReleaseEvent*(self: gen_qspinbox_types.QSpinBox, event: gen_qevent_types.QKeyEvent): void =
  fQSpinBox_virtualbase_keyReleaseEvent(self.h, event.h)

type QSpinBoxkeyReleaseEventProc* = proc(event: gen_qevent_types.QKeyEvent): void
proc onkeyReleaseEvent*(self: gen_qspinbox_types.QSpinBox, slot: QSpinBoxkeyReleaseEventProc) =
  # TODO check subclass
  var tmp = new QSpinBoxkeyReleaseEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQSpinBox_override_virtual_keyReleaseEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QSpinBox_keyReleaseEvent(self: ptr cQSpinBox, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QSpinBox_keyReleaseEvent ".} =
  var nimfunc = cast[ptr QSpinBoxkeyReleaseEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QKeyEvent(h: event)


  nimfunc[](slotval1)
proc QSpinBoxwheelEvent*(self: gen_qspinbox_types.QSpinBox, event: gen_qevent_types.QWheelEvent): void =
  fQSpinBox_virtualbase_wheelEvent(self.h, event.h)

type QSpinBoxwheelEventProc* = proc(event: gen_qevent_types.QWheelEvent): void
proc onwheelEvent*(self: gen_qspinbox_types.QSpinBox, slot: QSpinBoxwheelEventProc) =
  # TODO check subclass
  var tmp = new QSpinBoxwheelEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQSpinBox_override_virtual_wheelEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QSpinBox_wheelEvent(self: ptr cQSpinBox, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QSpinBox_wheelEvent ".} =
  var nimfunc = cast[ptr QSpinBoxwheelEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QWheelEvent(h: event)


  nimfunc[](slotval1)
proc QSpinBoxfocusInEvent*(self: gen_qspinbox_types.QSpinBox, event: gen_qevent_types.QFocusEvent): void =
  fQSpinBox_virtualbase_focusInEvent(self.h, event.h)

type QSpinBoxfocusInEventProc* = proc(event: gen_qevent_types.QFocusEvent): void
proc onfocusInEvent*(self: gen_qspinbox_types.QSpinBox, slot: QSpinBoxfocusInEventProc) =
  # TODO check subclass
  var tmp = new QSpinBoxfocusInEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQSpinBox_override_virtual_focusInEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QSpinBox_focusInEvent(self: ptr cQSpinBox, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QSpinBox_focusInEvent ".} =
  var nimfunc = cast[ptr QSpinBoxfocusInEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QFocusEvent(h: event)


  nimfunc[](slotval1)
proc QSpinBoxfocusOutEvent*(self: gen_qspinbox_types.QSpinBox, event: gen_qevent_types.QFocusEvent): void =
  fQSpinBox_virtualbase_focusOutEvent(self.h, event.h)

type QSpinBoxfocusOutEventProc* = proc(event: gen_qevent_types.QFocusEvent): void
proc onfocusOutEvent*(self: gen_qspinbox_types.QSpinBox, slot: QSpinBoxfocusOutEventProc) =
  # TODO check subclass
  var tmp = new QSpinBoxfocusOutEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQSpinBox_override_virtual_focusOutEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QSpinBox_focusOutEvent(self: ptr cQSpinBox, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QSpinBox_focusOutEvent ".} =
  var nimfunc = cast[ptr QSpinBoxfocusOutEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QFocusEvent(h: event)


  nimfunc[](slotval1)
proc QSpinBoxcontextMenuEvent*(self: gen_qspinbox_types.QSpinBox, event: gen_qevent_types.QContextMenuEvent): void =
  fQSpinBox_virtualbase_contextMenuEvent(self.h, event.h)

type QSpinBoxcontextMenuEventProc* = proc(event: gen_qevent_types.QContextMenuEvent): void
proc oncontextMenuEvent*(self: gen_qspinbox_types.QSpinBox, slot: QSpinBoxcontextMenuEventProc) =
  # TODO check subclass
  var tmp = new QSpinBoxcontextMenuEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQSpinBox_override_virtual_contextMenuEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QSpinBox_contextMenuEvent(self: ptr cQSpinBox, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QSpinBox_contextMenuEvent ".} =
  var nimfunc = cast[ptr QSpinBoxcontextMenuEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QContextMenuEvent(h: event)


  nimfunc[](slotval1)
proc QSpinBoxchangeEvent*(self: gen_qspinbox_types.QSpinBox, event: gen_qcoreevent_types.QEvent): void =
  fQSpinBox_virtualbase_changeEvent(self.h, event.h)

type QSpinBoxchangeEventProc* = proc(event: gen_qcoreevent_types.QEvent): void
proc onchangeEvent*(self: gen_qspinbox_types.QSpinBox, slot: QSpinBoxchangeEventProc) =
  # TODO check subclass
  var tmp = new QSpinBoxchangeEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQSpinBox_override_virtual_changeEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QSpinBox_changeEvent(self: ptr cQSpinBox, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QSpinBox_changeEvent ".} =
  var nimfunc = cast[ptr QSpinBoxchangeEventProc](cast[pointer](slot))
  let slotval1 = gen_qcoreevent_types.QEvent(h: event)


  nimfunc[](slotval1)
proc QSpinBoxcloseEvent*(self: gen_qspinbox_types.QSpinBox, event: gen_qevent_types.QCloseEvent): void =
  fQSpinBox_virtualbase_closeEvent(self.h, event.h)

type QSpinBoxcloseEventProc* = proc(event: gen_qevent_types.QCloseEvent): void
proc oncloseEvent*(self: gen_qspinbox_types.QSpinBox, slot: QSpinBoxcloseEventProc) =
  # TODO check subclass
  var tmp = new QSpinBoxcloseEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQSpinBox_override_virtual_closeEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QSpinBox_closeEvent(self: ptr cQSpinBox, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QSpinBox_closeEvent ".} =
  var nimfunc = cast[ptr QSpinBoxcloseEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QCloseEvent(h: event)


  nimfunc[](slotval1)
proc QSpinBoxhideEvent*(self: gen_qspinbox_types.QSpinBox, event: gen_qevent_types.QHideEvent): void =
  fQSpinBox_virtualbase_hideEvent(self.h, event.h)

type QSpinBoxhideEventProc* = proc(event: gen_qevent_types.QHideEvent): void
proc onhideEvent*(self: gen_qspinbox_types.QSpinBox, slot: QSpinBoxhideEventProc) =
  # TODO check subclass
  var tmp = new QSpinBoxhideEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQSpinBox_override_virtual_hideEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QSpinBox_hideEvent(self: ptr cQSpinBox, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QSpinBox_hideEvent ".} =
  var nimfunc = cast[ptr QSpinBoxhideEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QHideEvent(h: event)


  nimfunc[](slotval1)
proc QSpinBoxmousePressEvent*(self: gen_qspinbox_types.QSpinBox, event: gen_qevent_types.QMouseEvent): void =
  fQSpinBox_virtualbase_mousePressEvent(self.h, event.h)

type QSpinBoxmousePressEventProc* = proc(event: gen_qevent_types.QMouseEvent): void
proc onmousePressEvent*(self: gen_qspinbox_types.QSpinBox, slot: QSpinBoxmousePressEventProc) =
  # TODO check subclass
  var tmp = new QSpinBoxmousePressEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQSpinBox_override_virtual_mousePressEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QSpinBox_mousePressEvent(self: ptr cQSpinBox, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QSpinBox_mousePressEvent ".} =
  var nimfunc = cast[ptr QSpinBoxmousePressEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QMouseEvent(h: event)


  nimfunc[](slotval1)
proc QSpinBoxmouseReleaseEvent*(self: gen_qspinbox_types.QSpinBox, event: gen_qevent_types.QMouseEvent): void =
  fQSpinBox_virtualbase_mouseReleaseEvent(self.h, event.h)

type QSpinBoxmouseReleaseEventProc* = proc(event: gen_qevent_types.QMouseEvent): void
proc onmouseReleaseEvent*(self: gen_qspinbox_types.QSpinBox, slot: QSpinBoxmouseReleaseEventProc) =
  # TODO check subclass
  var tmp = new QSpinBoxmouseReleaseEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQSpinBox_override_virtual_mouseReleaseEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QSpinBox_mouseReleaseEvent(self: ptr cQSpinBox, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QSpinBox_mouseReleaseEvent ".} =
  var nimfunc = cast[ptr QSpinBoxmouseReleaseEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QMouseEvent(h: event)


  nimfunc[](slotval1)
proc QSpinBoxmouseMoveEvent*(self: gen_qspinbox_types.QSpinBox, event: gen_qevent_types.QMouseEvent): void =
  fQSpinBox_virtualbase_mouseMoveEvent(self.h, event.h)

type QSpinBoxmouseMoveEventProc* = proc(event: gen_qevent_types.QMouseEvent): void
proc onmouseMoveEvent*(self: gen_qspinbox_types.QSpinBox, slot: QSpinBoxmouseMoveEventProc) =
  # TODO check subclass
  var tmp = new QSpinBoxmouseMoveEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQSpinBox_override_virtual_mouseMoveEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QSpinBox_mouseMoveEvent(self: ptr cQSpinBox, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QSpinBox_mouseMoveEvent ".} =
  var nimfunc = cast[ptr QSpinBoxmouseMoveEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QMouseEvent(h: event)


  nimfunc[](slotval1)
proc QSpinBoxtimerEvent*(self: gen_qspinbox_types.QSpinBox, event: gen_qcoreevent_types.QTimerEvent): void =
  fQSpinBox_virtualbase_timerEvent(self.h, event.h)

type QSpinBoxtimerEventProc* = proc(event: gen_qcoreevent_types.QTimerEvent): void
proc ontimerEvent*(self: gen_qspinbox_types.QSpinBox, slot: QSpinBoxtimerEventProc) =
  # TODO check subclass
  var tmp = new QSpinBoxtimerEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQSpinBox_override_virtual_timerEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QSpinBox_timerEvent(self: ptr cQSpinBox, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QSpinBox_timerEvent ".} =
  var nimfunc = cast[ptr QSpinBoxtimerEventProc](cast[pointer](slot))
  let slotval1 = gen_qcoreevent_types.QTimerEvent(h: event)


  nimfunc[](slotval1)
proc QSpinBoxpaintEvent*(self: gen_qspinbox_types.QSpinBox, event: gen_qevent_types.QPaintEvent): void =
  fQSpinBox_virtualbase_paintEvent(self.h, event.h)

type QSpinBoxpaintEventProc* = proc(event: gen_qevent_types.QPaintEvent): void
proc onpaintEvent*(self: gen_qspinbox_types.QSpinBox, slot: QSpinBoxpaintEventProc) =
  # TODO check subclass
  var tmp = new QSpinBoxpaintEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQSpinBox_override_virtual_paintEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QSpinBox_paintEvent(self: ptr cQSpinBox, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QSpinBox_paintEvent ".} =
  var nimfunc = cast[ptr QSpinBoxpaintEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QPaintEvent(h: event)


  nimfunc[](slotval1)
proc QSpinBoxshowEvent*(self: gen_qspinbox_types.QSpinBox, event: gen_qevent_types.QShowEvent): void =
  fQSpinBox_virtualbase_showEvent(self.h, event.h)

type QSpinBoxshowEventProc* = proc(event: gen_qevent_types.QShowEvent): void
proc onshowEvent*(self: gen_qspinbox_types.QSpinBox, slot: QSpinBoxshowEventProc) =
  # TODO check subclass
  var tmp = new QSpinBoxshowEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQSpinBox_override_virtual_showEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QSpinBox_showEvent(self: ptr cQSpinBox, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QSpinBox_showEvent ".} =
  var nimfunc = cast[ptr QSpinBoxshowEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QShowEvent(h: event)


  nimfunc[](slotval1)
proc QSpinBoxinitStyleOption*(self: gen_qspinbox_types.QSpinBox, option: gen_qstyleoption_types.QStyleOptionSpinBox): void =
  fQSpinBox_virtualbase_initStyleOption(self.h, option.h)

type QSpinBoxinitStyleOptionProc* = proc(option: gen_qstyleoption_types.QStyleOptionSpinBox): void
proc oninitStyleOption*(self: gen_qspinbox_types.QSpinBox, slot: QSpinBoxinitStyleOptionProc) =
  # TODO check subclass
  var tmp = new QSpinBoxinitStyleOptionProc
  tmp[] = slot
  GC_ref(tmp)
  fcQSpinBox_override_virtual_initStyleOption(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QSpinBox_initStyleOption(self: ptr cQSpinBox, slot: int, option: pointer): void {.exportc: "miqt_exec_callback_QSpinBox_initStyleOption ".} =
  var nimfunc = cast[ptr QSpinBoxinitStyleOptionProc](cast[pointer](slot))
  let slotval1 = gen_qstyleoption_types.QStyleOptionSpinBox(h: option)


  nimfunc[](slotval1)
proc QSpinBoxstepEnabled*(self: gen_qspinbox_types.QSpinBox, ): cint =
  cint(fQSpinBox_virtualbase_stepEnabled(self.h))

type QSpinBoxstepEnabledProc* = proc(): cint
proc onstepEnabled*(self: gen_qspinbox_types.QSpinBox, slot: QSpinBoxstepEnabledProc) =
  # TODO check subclass
  var tmp = new QSpinBoxstepEnabledProc
  tmp[] = slot
  GC_ref(tmp)
  fcQSpinBox_override_virtual_stepEnabled(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QSpinBox_stepEnabled(self: ptr cQSpinBox, slot: int): cint {.exportc: "miqt_exec_callback_QSpinBox_stepEnabled ".} =
  var nimfunc = cast[ptr QSpinBoxstepEnabledProc](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )

  cint(virtualReturn)
proc QSpinBoxdevType*(self: gen_qspinbox_types.QSpinBox, ): cint =
  fQSpinBox_virtualbase_devType(self.h)

type QSpinBoxdevTypeProc* = proc(): cint
proc ondevType*(self: gen_qspinbox_types.QSpinBox, slot: QSpinBoxdevTypeProc) =
  # TODO check subclass
  var tmp = new QSpinBoxdevTypeProc
  tmp[] = slot
  GC_ref(tmp)
  fcQSpinBox_override_virtual_devType(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QSpinBox_devType(self: ptr cQSpinBox, slot: int): cint {.exportc: "miqt_exec_callback_QSpinBox_devType ".} =
  var nimfunc = cast[ptr QSpinBoxdevTypeProc](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )

  virtualReturn
proc QSpinBoxsetVisible*(self: gen_qspinbox_types.QSpinBox, visible: bool): void =
  fQSpinBox_virtualbase_setVisible(self.h, visible)

type QSpinBoxsetVisibleProc* = proc(visible: bool): void
proc onsetVisible*(self: gen_qspinbox_types.QSpinBox, slot: QSpinBoxsetVisibleProc) =
  # TODO check subclass
  var tmp = new QSpinBoxsetVisibleProc
  tmp[] = slot
  GC_ref(tmp)
  fcQSpinBox_override_virtual_setVisible(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QSpinBox_setVisible(self: ptr cQSpinBox, slot: int, visible: bool): void {.exportc: "miqt_exec_callback_QSpinBox_setVisible ".} =
  var nimfunc = cast[ptr QSpinBoxsetVisibleProc](cast[pointer](slot))
  let slotval1 = visible


  nimfunc[](slotval1)
proc QSpinBoxheightForWidth*(self: gen_qspinbox_types.QSpinBox, param1: cint): cint =
  fQSpinBox_virtualbase_heightForWidth(self.h, param1)

type QSpinBoxheightForWidthProc* = proc(param1: cint): cint
proc onheightForWidth*(self: gen_qspinbox_types.QSpinBox, slot: QSpinBoxheightForWidthProc) =
  # TODO check subclass
  var tmp = new QSpinBoxheightForWidthProc
  tmp[] = slot
  GC_ref(tmp)
  fcQSpinBox_override_virtual_heightForWidth(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QSpinBox_heightForWidth(self: ptr cQSpinBox, slot: int, param1: cint): cint {.exportc: "miqt_exec_callback_QSpinBox_heightForWidth ".} =
  var nimfunc = cast[ptr QSpinBoxheightForWidthProc](cast[pointer](slot))
  let slotval1 = param1


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn
proc QSpinBoxhasHeightForWidth*(self: gen_qspinbox_types.QSpinBox, ): bool =
  fQSpinBox_virtualbase_hasHeightForWidth(self.h)

type QSpinBoxhasHeightForWidthProc* = proc(): bool
proc onhasHeightForWidth*(self: gen_qspinbox_types.QSpinBox, slot: QSpinBoxhasHeightForWidthProc) =
  # TODO check subclass
  var tmp = new QSpinBoxhasHeightForWidthProc
  tmp[] = slot
  GC_ref(tmp)
  fcQSpinBox_override_virtual_hasHeightForWidth(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QSpinBox_hasHeightForWidth(self: ptr cQSpinBox, slot: int): bool {.exportc: "miqt_exec_callback_QSpinBox_hasHeightForWidth ".} =
  var nimfunc = cast[ptr QSpinBoxhasHeightForWidthProc](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )

  virtualReturn
proc QSpinBoxpaintEngine*(self: gen_qspinbox_types.QSpinBox, ): gen_qpaintengine_types.QPaintEngine =
  gen_qpaintengine_types.QPaintEngine(h: fQSpinBox_virtualbase_paintEngine(self.h))

type QSpinBoxpaintEngineProc* = proc(): gen_qpaintengine_types.QPaintEngine
proc onpaintEngine*(self: gen_qspinbox_types.QSpinBox, slot: QSpinBoxpaintEngineProc) =
  # TODO check subclass
  var tmp = new QSpinBoxpaintEngineProc
  tmp[] = slot
  GC_ref(tmp)
  fcQSpinBox_override_virtual_paintEngine(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QSpinBox_paintEngine(self: ptr cQSpinBox, slot: int): pointer {.exportc: "miqt_exec_callback_QSpinBox_paintEngine ".} =
  var nimfunc = cast[ptr QSpinBoxpaintEngineProc](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )

  virtualReturn.h
proc QSpinBoxmouseDoubleClickEvent*(self: gen_qspinbox_types.QSpinBox, event: gen_qevent_types.QMouseEvent): void =
  fQSpinBox_virtualbase_mouseDoubleClickEvent(self.h, event.h)

type QSpinBoxmouseDoubleClickEventProc* = proc(event: gen_qevent_types.QMouseEvent): void
proc onmouseDoubleClickEvent*(self: gen_qspinbox_types.QSpinBox, slot: QSpinBoxmouseDoubleClickEventProc) =
  # TODO check subclass
  var tmp = new QSpinBoxmouseDoubleClickEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQSpinBox_override_virtual_mouseDoubleClickEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QSpinBox_mouseDoubleClickEvent(self: ptr cQSpinBox, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QSpinBox_mouseDoubleClickEvent ".} =
  var nimfunc = cast[ptr QSpinBoxmouseDoubleClickEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QMouseEvent(h: event)


  nimfunc[](slotval1)
proc QSpinBoxenterEvent*(self: gen_qspinbox_types.QSpinBox, event: gen_qevent_types.QEnterEvent): void =
  fQSpinBox_virtualbase_enterEvent(self.h, event.h)

type QSpinBoxenterEventProc* = proc(event: gen_qevent_types.QEnterEvent): void
proc onenterEvent*(self: gen_qspinbox_types.QSpinBox, slot: QSpinBoxenterEventProc) =
  # TODO check subclass
  var tmp = new QSpinBoxenterEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQSpinBox_override_virtual_enterEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QSpinBox_enterEvent(self: ptr cQSpinBox, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QSpinBox_enterEvent ".} =
  var nimfunc = cast[ptr QSpinBoxenterEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QEnterEvent(h: event)


  nimfunc[](slotval1)
proc QSpinBoxleaveEvent*(self: gen_qspinbox_types.QSpinBox, event: gen_qcoreevent_types.QEvent): void =
  fQSpinBox_virtualbase_leaveEvent(self.h, event.h)

type QSpinBoxleaveEventProc* = proc(event: gen_qcoreevent_types.QEvent): void
proc onleaveEvent*(self: gen_qspinbox_types.QSpinBox, slot: QSpinBoxleaveEventProc) =
  # TODO check subclass
  var tmp = new QSpinBoxleaveEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQSpinBox_override_virtual_leaveEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QSpinBox_leaveEvent(self: ptr cQSpinBox, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QSpinBox_leaveEvent ".} =
  var nimfunc = cast[ptr QSpinBoxleaveEventProc](cast[pointer](slot))
  let slotval1 = gen_qcoreevent_types.QEvent(h: event)


  nimfunc[](slotval1)
proc QSpinBoxmoveEvent*(self: gen_qspinbox_types.QSpinBox, event: gen_qevent_types.QMoveEvent): void =
  fQSpinBox_virtualbase_moveEvent(self.h, event.h)

type QSpinBoxmoveEventProc* = proc(event: gen_qevent_types.QMoveEvent): void
proc onmoveEvent*(self: gen_qspinbox_types.QSpinBox, slot: QSpinBoxmoveEventProc) =
  # TODO check subclass
  var tmp = new QSpinBoxmoveEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQSpinBox_override_virtual_moveEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QSpinBox_moveEvent(self: ptr cQSpinBox, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QSpinBox_moveEvent ".} =
  var nimfunc = cast[ptr QSpinBoxmoveEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QMoveEvent(h: event)


  nimfunc[](slotval1)
proc QSpinBoxtabletEvent*(self: gen_qspinbox_types.QSpinBox, event: gen_qevent_types.QTabletEvent): void =
  fQSpinBox_virtualbase_tabletEvent(self.h, event.h)

type QSpinBoxtabletEventProc* = proc(event: gen_qevent_types.QTabletEvent): void
proc ontabletEvent*(self: gen_qspinbox_types.QSpinBox, slot: QSpinBoxtabletEventProc) =
  # TODO check subclass
  var tmp = new QSpinBoxtabletEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQSpinBox_override_virtual_tabletEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QSpinBox_tabletEvent(self: ptr cQSpinBox, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QSpinBox_tabletEvent ".} =
  var nimfunc = cast[ptr QSpinBoxtabletEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QTabletEvent(h: event)


  nimfunc[](slotval1)
proc QSpinBoxactionEvent*(self: gen_qspinbox_types.QSpinBox, event: gen_qevent_types.QActionEvent): void =
  fQSpinBox_virtualbase_actionEvent(self.h, event.h)

type QSpinBoxactionEventProc* = proc(event: gen_qevent_types.QActionEvent): void
proc onactionEvent*(self: gen_qspinbox_types.QSpinBox, slot: QSpinBoxactionEventProc) =
  # TODO check subclass
  var tmp = new QSpinBoxactionEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQSpinBox_override_virtual_actionEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QSpinBox_actionEvent(self: ptr cQSpinBox, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QSpinBox_actionEvent ".} =
  var nimfunc = cast[ptr QSpinBoxactionEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QActionEvent(h: event)


  nimfunc[](slotval1)
proc QSpinBoxdragEnterEvent*(self: gen_qspinbox_types.QSpinBox, event: gen_qevent_types.QDragEnterEvent): void =
  fQSpinBox_virtualbase_dragEnterEvent(self.h, event.h)

type QSpinBoxdragEnterEventProc* = proc(event: gen_qevent_types.QDragEnterEvent): void
proc ondragEnterEvent*(self: gen_qspinbox_types.QSpinBox, slot: QSpinBoxdragEnterEventProc) =
  # TODO check subclass
  var tmp = new QSpinBoxdragEnterEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQSpinBox_override_virtual_dragEnterEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QSpinBox_dragEnterEvent(self: ptr cQSpinBox, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QSpinBox_dragEnterEvent ".} =
  var nimfunc = cast[ptr QSpinBoxdragEnterEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QDragEnterEvent(h: event)


  nimfunc[](slotval1)
proc QSpinBoxdragMoveEvent*(self: gen_qspinbox_types.QSpinBox, event: gen_qevent_types.QDragMoveEvent): void =
  fQSpinBox_virtualbase_dragMoveEvent(self.h, event.h)

type QSpinBoxdragMoveEventProc* = proc(event: gen_qevent_types.QDragMoveEvent): void
proc ondragMoveEvent*(self: gen_qspinbox_types.QSpinBox, slot: QSpinBoxdragMoveEventProc) =
  # TODO check subclass
  var tmp = new QSpinBoxdragMoveEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQSpinBox_override_virtual_dragMoveEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QSpinBox_dragMoveEvent(self: ptr cQSpinBox, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QSpinBox_dragMoveEvent ".} =
  var nimfunc = cast[ptr QSpinBoxdragMoveEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QDragMoveEvent(h: event)


  nimfunc[](slotval1)
proc QSpinBoxdragLeaveEvent*(self: gen_qspinbox_types.QSpinBox, event: gen_qevent_types.QDragLeaveEvent): void =
  fQSpinBox_virtualbase_dragLeaveEvent(self.h, event.h)

type QSpinBoxdragLeaveEventProc* = proc(event: gen_qevent_types.QDragLeaveEvent): void
proc ondragLeaveEvent*(self: gen_qspinbox_types.QSpinBox, slot: QSpinBoxdragLeaveEventProc) =
  # TODO check subclass
  var tmp = new QSpinBoxdragLeaveEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQSpinBox_override_virtual_dragLeaveEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QSpinBox_dragLeaveEvent(self: ptr cQSpinBox, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QSpinBox_dragLeaveEvent ".} =
  var nimfunc = cast[ptr QSpinBoxdragLeaveEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QDragLeaveEvent(h: event)


  nimfunc[](slotval1)
proc QSpinBoxdropEvent*(self: gen_qspinbox_types.QSpinBox, event: gen_qevent_types.QDropEvent): void =
  fQSpinBox_virtualbase_dropEvent(self.h, event.h)

type QSpinBoxdropEventProc* = proc(event: gen_qevent_types.QDropEvent): void
proc ondropEvent*(self: gen_qspinbox_types.QSpinBox, slot: QSpinBoxdropEventProc) =
  # TODO check subclass
  var tmp = new QSpinBoxdropEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQSpinBox_override_virtual_dropEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QSpinBox_dropEvent(self: ptr cQSpinBox, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QSpinBox_dropEvent ".} =
  var nimfunc = cast[ptr QSpinBoxdropEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QDropEvent(h: event)


  nimfunc[](slotval1)
proc QSpinBoxnativeEvent*(self: gen_qspinbox_types.QSpinBox, eventType: seq[byte], message: pointer, resultVal: ptr uint): bool =
  fQSpinBox_virtualbase_nativeEvent(self.h, struct_miqt_string(data: cast[cstring](if len(eventType) == 0: nil else: unsafeAddr eventType[0]), len: csize_t(len(eventType))), message, resultVal)

type QSpinBoxnativeEventProc* = proc(eventType: seq[byte], message: pointer, resultVal: ptr uint): bool
proc onnativeEvent*(self: gen_qspinbox_types.QSpinBox, slot: QSpinBoxnativeEventProc) =
  # TODO check subclass
  var tmp = new QSpinBoxnativeEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQSpinBox_override_virtual_nativeEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QSpinBox_nativeEvent(self: ptr cQSpinBox, slot: int, eventType: struct_miqt_string, message: pointer, resultVal: ptr uint): bool {.exportc: "miqt_exec_callback_QSpinBox_nativeEvent ".} =
  var nimfunc = cast[ptr QSpinBoxnativeEventProc](cast[pointer](slot))
  var veventType_bytearray = eventType
  var veventTypex_ret = @(toOpenArrayByte(veventType_bytearray.data, 0, int(veventType_bytearray.len)-1))
  c_free(veventType_bytearray.data)
  let slotval1 = veventTypex_ret

  let slotval2 = message

  let slotval3 = resultVal


  let virtualReturn = nimfunc[](slotval1, slotval2, slotval3 )

  virtualReturn
proc QSpinBoxmetric*(self: gen_qspinbox_types.QSpinBox, param1: cint): cint =
  fQSpinBox_virtualbase_metric(self.h, cint(param1))

type QSpinBoxmetricProc* = proc(param1: cint): cint
proc onmetric*(self: gen_qspinbox_types.QSpinBox, slot: QSpinBoxmetricProc) =
  # TODO check subclass
  var tmp = new QSpinBoxmetricProc
  tmp[] = slot
  GC_ref(tmp)
  fcQSpinBox_override_virtual_metric(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QSpinBox_metric(self: ptr cQSpinBox, slot: int, param1: cint): cint {.exportc: "miqt_exec_callback_QSpinBox_metric ".} =
  var nimfunc = cast[ptr QSpinBoxmetricProc](cast[pointer](slot))
  let slotval1 = cint(param1)


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn
proc QSpinBoxinitPainter*(self: gen_qspinbox_types.QSpinBox, painter: gen_qpainter_types.QPainter): void =
  fQSpinBox_virtualbase_initPainter(self.h, painter.h)

type QSpinBoxinitPainterProc* = proc(painter: gen_qpainter_types.QPainter): void
proc oninitPainter*(self: gen_qspinbox_types.QSpinBox, slot: QSpinBoxinitPainterProc) =
  # TODO check subclass
  var tmp = new QSpinBoxinitPainterProc
  tmp[] = slot
  GC_ref(tmp)
  fcQSpinBox_override_virtual_initPainter(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QSpinBox_initPainter(self: ptr cQSpinBox, slot: int, painter: pointer): void {.exportc: "miqt_exec_callback_QSpinBox_initPainter ".} =
  var nimfunc = cast[ptr QSpinBoxinitPainterProc](cast[pointer](slot))
  let slotval1 = gen_qpainter_types.QPainter(h: painter)


  nimfunc[](slotval1)
proc QSpinBoxredirected*(self: gen_qspinbox_types.QSpinBox, offset: gen_qpoint_types.QPoint): gen_qpaintdevice_types.QPaintDevice =
  gen_qpaintdevice_types.QPaintDevice(h: fQSpinBox_virtualbase_redirected(self.h, offset.h))

type QSpinBoxredirectedProc* = proc(offset: gen_qpoint_types.QPoint): gen_qpaintdevice_types.QPaintDevice
proc onredirected*(self: gen_qspinbox_types.QSpinBox, slot: QSpinBoxredirectedProc) =
  # TODO check subclass
  var tmp = new QSpinBoxredirectedProc
  tmp[] = slot
  GC_ref(tmp)
  fcQSpinBox_override_virtual_redirected(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QSpinBox_redirected(self: ptr cQSpinBox, slot: int, offset: pointer): pointer {.exportc: "miqt_exec_callback_QSpinBox_redirected ".} =
  var nimfunc = cast[ptr QSpinBoxredirectedProc](cast[pointer](slot))
  let slotval1 = gen_qpoint_types.QPoint(h: offset)


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn.h
proc QSpinBoxsharedPainter*(self: gen_qspinbox_types.QSpinBox, ): gen_qpainter_types.QPainter =
  gen_qpainter_types.QPainter(h: fQSpinBox_virtualbase_sharedPainter(self.h))

type QSpinBoxsharedPainterProc* = proc(): gen_qpainter_types.QPainter
proc onsharedPainter*(self: gen_qspinbox_types.QSpinBox, slot: QSpinBoxsharedPainterProc) =
  # TODO check subclass
  var tmp = new QSpinBoxsharedPainterProc
  tmp[] = slot
  GC_ref(tmp)
  fcQSpinBox_override_virtual_sharedPainter(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QSpinBox_sharedPainter(self: ptr cQSpinBox, slot: int): pointer {.exportc: "miqt_exec_callback_QSpinBox_sharedPainter ".} =
  var nimfunc = cast[ptr QSpinBoxsharedPainterProc](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )

  virtualReturn.h
proc QSpinBoxinputMethodEvent*(self: gen_qspinbox_types.QSpinBox, param1: gen_qevent_types.QInputMethodEvent): void =
  fQSpinBox_virtualbase_inputMethodEvent(self.h, param1.h)

type QSpinBoxinputMethodEventProc* = proc(param1: gen_qevent_types.QInputMethodEvent): void
proc oninputMethodEvent*(self: gen_qspinbox_types.QSpinBox, slot: QSpinBoxinputMethodEventProc) =
  # TODO check subclass
  var tmp = new QSpinBoxinputMethodEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQSpinBox_override_virtual_inputMethodEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QSpinBox_inputMethodEvent(self: ptr cQSpinBox, slot: int, param1: pointer): void {.exportc: "miqt_exec_callback_QSpinBox_inputMethodEvent ".} =
  var nimfunc = cast[ptr QSpinBoxinputMethodEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QInputMethodEvent(h: param1)


  nimfunc[](slotval1)
proc QSpinBoxfocusNextPrevChild*(self: gen_qspinbox_types.QSpinBox, next: bool): bool =
  fQSpinBox_virtualbase_focusNextPrevChild(self.h, next)

type QSpinBoxfocusNextPrevChildProc* = proc(next: bool): bool
proc onfocusNextPrevChild*(self: gen_qspinbox_types.QSpinBox, slot: QSpinBoxfocusNextPrevChildProc) =
  # TODO check subclass
  var tmp = new QSpinBoxfocusNextPrevChildProc
  tmp[] = slot
  GC_ref(tmp)
  fcQSpinBox_override_virtual_focusNextPrevChild(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QSpinBox_focusNextPrevChild(self: ptr cQSpinBox, slot: int, next: bool): bool {.exportc: "miqt_exec_callback_QSpinBox_focusNextPrevChild ".} =
  var nimfunc = cast[ptr QSpinBoxfocusNextPrevChildProc](cast[pointer](slot))
  let slotval1 = next


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn
proc QSpinBoxeventFilter*(self: gen_qspinbox_types.QSpinBox, watched: gen_qobject_types.QObject, event: gen_qcoreevent_types.QEvent): bool =
  fQSpinBox_virtualbase_eventFilter(self.h, watched.h, event.h)

type QSpinBoxeventFilterProc* = proc(watched: gen_qobject_types.QObject, event: gen_qcoreevent_types.QEvent): bool
proc oneventFilter*(self: gen_qspinbox_types.QSpinBox, slot: QSpinBoxeventFilterProc) =
  # TODO check subclass
  var tmp = new QSpinBoxeventFilterProc
  tmp[] = slot
  GC_ref(tmp)
  fcQSpinBox_override_virtual_eventFilter(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QSpinBox_eventFilter(self: ptr cQSpinBox, slot: int, watched: pointer, event: pointer): bool {.exportc: "miqt_exec_callback_QSpinBox_eventFilter ".} =
  var nimfunc = cast[ptr QSpinBoxeventFilterProc](cast[pointer](slot))
  let slotval1 = gen_qobject_types.QObject(h: watched)

  let slotval2 = gen_qcoreevent_types.QEvent(h: event)


  let virtualReturn = nimfunc[](slotval1, slotval2 )

  virtualReturn
proc QSpinBoxchildEvent*(self: gen_qspinbox_types.QSpinBox, event: gen_qcoreevent_types.QChildEvent): void =
  fQSpinBox_virtualbase_childEvent(self.h, event.h)

type QSpinBoxchildEventProc* = proc(event: gen_qcoreevent_types.QChildEvent): void
proc onchildEvent*(self: gen_qspinbox_types.QSpinBox, slot: QSpinBoxchildEventProc) =
  # TODO check subclass
  var tmp = new QSpinBoxchildEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQSpinBox_override_virtual_childEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QSpinBox_childEvent(self: ptr cQSpinBox, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QSpinBox_childEvent ".} =
  var nimfunc = cast[ptr QSpinBoxchildEventProc](cast[pointer](slot))
  let slotval1 = gen_qcoreevent_types.QChildEvent(h: event)


  nimfunc[](slotval1)
proc QSpinBoxcustomEvent*(self: gen_qspinbox_types.QSpinBox, event: gen_qcoreevent_types.QEvent): void =
  fQSpinBox_virtualbase_customEvent(self.h, event.h)

type QSpinBoxcustomEventProc* = proc(event: gen_qcoreevent_types.QEvent): void
proc oncustomEvent*(self: gen_qspinbox_types.QSpinBox, slot: QSpinBoxcustomEventProc) =
  # TODO check subclass
  var tmp = new QSpinBoxcustomEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQSpinBox_override_virtual_customEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QSpinBox_customEvent(self: ptr cQSpinBox, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QSpinBox_customEvent ".} =
  var nimfunc = cast[ptr QSpinBoxcustomEventProc](cast[pointer](slot))
  let slotval1 = gen_qcoreevent_types.QEvent(h: event)


  nimfunc[](slotval1)
proc QSpinBoxconnectNotify*(self: gen_qspinbox_types.QSpinBox, signal: gen_qmetaobject_types.QMetaMethod): void =
  fQSpinBox_virtualbase_connectNotify(self.h, signal.h)

type QSpinBoxconnectNotifyProc* = proc(signal: gen_qmetaobject_types.QMetaMethod): void
proc onconnectNotify*(self: gen_qspinbox_types.QSpinBox, slot: QSpinBoxconnectNotifyProc) =
  # TODO check subclass
  var tmp = new QSpinBoxconnectNotifyProc
  tmp[] = slot
  GC_ref(tmp)
  fcQSpinBox_override_virtual_connectNotify(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QSpinBox_connectNotify(self: ptr cQSpinBox, slot: int, signal: pointer): void {.exportc: "miqt_exec_callback_QSpinBox_connectNotify ".} =
  var nimfunc = cast[ptr QSpinBoxconnectNotifyProc](cast[pointer](slot))
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal)


  nimfunc[](slotval1)
proc QSpinBoxdisconnectNotify*(self: gen_qspinbox_types.QSpinBox, signal: gen_qmetaobject_types.QMetaMethod): void =
  fQSpinBox_virtualbase_disconnectNotify(self.h, signal.h)

type QSpinBoxdisconnectNotifyProc* = proc(signal: gen_qmetaobject_types.QMetaMethod): void
proc ondisconnectNotify*(self: gen_qspinbox_types.QSpinBox, slot: QSpinBoxdisconnectNotifyProc) =
  # TODO check subclass
  var tmp = new QSpinBoxdisconnectNotifyProc
  tmp[] = slot
  GC_ref(tmp)
  fcQSpinBox_override_virtual_disconnectNotify(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QSpinBox_disconnectNotify(self: ptr cQSpinBox, slot: int, signal: pointer): void {.exportc: "miqt_exec_callback_QSpinBox_disconnectNotify ".} =
  var nimfunc = cast[ptr QSpinBoxdisconnectNotifyProc](cast[pointer](slot))
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal)


  nimfunc[](slotval1)
proc staticMetaObject*(_: type gen_qspinbox_types.QSpinBox): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQSpinBox_staticMetaObject())
proc delete*(self: gen_qspinbox_types.QSpinBox) =
  fcQSpinBox_delete(self.h)

func init*(T: type gen_qspinbox_types.QDoubleSpinBox, h: ptr cQDoubleSpinBox): gen_qspinbox_types.QDoubleSpinBox =
  T(h: h)
proc create*(T: type gen_qspinbox_types.QDoubleSpinBox, parent: gen_qwidget_types.QWidget): gen_qspinbox_types.QDoubleSpinBox =
  gen_qspinbox_types.QDoubleSpinBox.init(fcQDoubleSpinBox_new(parent.h))

proc create*(T: type gen_qspinbox_types.QDoubleSpinBox, ): gen_qspinbox_types.QDoubleSpinBox =
  gen_qspinbox_types.QDoubleSpinBox.init(fcQDoubleSpinBox_new2())

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
proc miqt_exec_callback_QDoubleSpinBox_valueChanged(slot: int, param1: float64) {.exportc.} =
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
proc miqt_exec_callback_QDoubleSpinBox_textChanged(slot: int, param1: struct_miqt_string) {.exportc.} =
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

proc QDoubleSpinBoxmetaObject*(self: gen_qspinbox_types.QDoubleSpinBox, ): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fQDoubleSpinBox_virtualbase_metaObject(self.h))

type QDoubleSpinBoxmetaObjectProc* = proc(): gen_qobjectdefs_types.QMetaObject
proc onmetaObject*(self: gen_qspinbox_types.QDoubleSpinBox, slot: QDoubleSpinBoxmetaObjectProc) =
  # TODO check subclass
  var tmp = new QDoubleSpinBoxmetaObjectProc
  tmp[] = slot
  GC_ref(tmp)
  fcQDoubleSpinBox_override_virtual_metaObject(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QDoubleSpinBox_metaObject(self: ptr cQDoubleSpinBox, slot: int): pointer {.exportc: "miqt_exec_callback_QDoubleSpinBox_metaObject ".} =
  var nimfunc = cast[ptr QDoubleSpinBoxmetaObjectProc](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )

  virtualReturn.h
proc QDoubleSpinBoxmetacast*(self: gen_qspinbox_types.QDoubleSpinBox, param1: cstring): pointer =
  fQDoubleSpinBox_virtualbase_metacast(self.h, param1)

type QDoubleSpinBoxmetacastProc* = proc(param1: cstring): pointer
proc onmetacast*(self: gen_qspinbox_types.QDoubleSpinBox, slot: QDoubleSpinBoxmetacastProc) =
  # TODO check subclass
  var tmp = new QDoubleSpinBoxmetacastProc
  tmp[] = slot
  GC_ref(tmp)
  fcQDoubleSpinBox_override_virtual_metacast(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QDoubleSpinBox_metacast(self: ptr cQDoubleSpinBox, slot: int, param1: cstring): pointer {.exportc: "miqt_exec_callback_QDoubleSpinBox_metacast ".} =
  var nimfunc = cast[ptr QDoubleSpinBoxmetacastProc](cast[pointer](slot))
  let slotval1 = (param1)


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn
proc QDoubleSpinBoxmetacall*(self: gen_qspinbox_types.QDoubleSpinBox, param1: cint, param2: cint, param3: pointer): cint =
  fQDoubleSpinBox_virtualbase_metacall(self.h, cint(param1), param2, param3)

type QDoubleSpinBoxmetacallProc* = proc(param1: cint, param2: cint, param3: pointer): cint
proc onmetacall*(self: gen_qspinbox_types.QDoubleSpinBox, slot: QDoubleSpinBoxmetacallProc) =
  # TODO check subclass
  var tmp = new QDoubleSpinBoxmetacallProc
  tmp[] = slot
  GC_ref(tmp)
  fcQDoubleSpinBox_override_virtual_metacall(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QDoubleSpinBox_metacall(self: ptr cQDoubleSpinBox, slot: int, param1: cint, param2: cint, param3: pointer): cint {.exportc: "miqt_exec_callback_QDoubleSpinBox_metacall ".} =
  var nimfunc = cast[ptr QDoubleSpinBoxmetacallProc](cast[pointer](slot))
  let slotval1 = cint(param1)

  let slotval2 = param2

  let slotval3 = param3


  let virtualReturn = nimfunc[](slotval1, slotval2, slotval3 )

  virtualReturn
proc QDoubleSpinBoxvalidate*(self: gen_qspinbox_types.QDoubleSpinBox, input: string, pos: ptr cint): cint =
  cint(fQDoubleSpinBox_virtualbase_validate(self.h, struct_miqt_string(data: input, len: csize_t(len(input))), pos))

type QDoubleSpinBoxvalidateProc* = proc(input: string, pos: ptr cint): cint
proc onvalidate*(self: gen_qspinbox_types.QDoubleSpinBox, slot: QDoubleSpinBoxvalidateProc) =
  # TODO check subclass
  var tmp = new QDoubleSpinBoxvalidateProc
  tmp[] = slot
  GC_ref(tmp)
  fcQDoubleSpinBox_override_virtual_validate(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QDoubleSpinBox_validate(self: ptr cQDoubleSpinBox, slot: int, input: struct_miqt_string, pos: ptr cint): cint {.exportc: "miqt_exec_callback_QDoubleSpinBox_validate ".} =
  var nimfunc = cast[ptr QDoubleSpinBoxvalidateProc](cast[pointer](slot))
  let vinput_ms = input
  let vinputx_ret = string.fromBytes(toOpenArrayByte(vinput_ms.data, 0, int(vinput_ms.len)-1))
  c_free(vinput_ms.data)
  let slotval1 = vinputx_ret

  let slotval2 = pos


  let virtualReturn = nimfunc[](slotval1, slotval2 )

  cint(virtualReturn)
proc QDoubleSpinBoxvalueFromText*(self: gen_qspinbox_types.QDoubleSpinBox, text: string): float64 =
  fQDoubleSpinBox_virtualbase_valueFromText(self.h, struct_miqt_string(data: text, len: csize_t(len(text))))

type QDoubleSpinBoxvalueFromTextProc* = proc(text: string): float64
proc onvalueFromText*(self: gen_qspinbox_types.QDoubleSpinBox, slot: QDoubleSpinBoxvalueFromTextProc) =
  # TODO check subclass
  var tmp = new QDoubleSpinBoxvalueFromTextProc
  tmp[] = slot
  GC_ref(tmp)
  fcQDoubleSpinBox_override_virtual_valueFromText(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QDoubleSpinBox_valueFromText(self: ptr cQDoubleSpinBox, slot: int, text: struct_miqt_string): float64 {.exportc: "miqt_exec_callback_QDoubleSpinBox_valueFromText ".} =
  var nimfunc = cast[ptr QDoubleSpinBoxvalueFromTextProc](cast[pointer](slot))
  let vtext_ms = text
  let vtextx_ret = string.fromBytes(toOpenArrayByte(vtext_ms.data, 0, int(vtext_ms.len)-1))
  c_free(vtext_ms.data)
  let slotval1 = vtextx_ret


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn
proc QDoubleSpinBoxtextFromValue*(self: gen_qspinbox_types.QDoubleSpinBox, val: float64): string =
  let v_ms = fQDoubleSpinBox_virtualbase_textFromValue(self.h, val)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

type QDoubleSpinBoxtextFromValueProc* = proc(val: float64): string
proc ontextFromValue*(self: gen_qspinbox_types.QDoubleSpinBox, slot: QDoubleSpinBoxtextFromValueProc) =
  # TODO check subclass
  var tmp = new QDoubleSpinBoxtextFromValueProc
  tmp[] = slot
  GC_ref(tmp)
  fcQDoubleSpinBox_override_virtual_textFromValue(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QDoubleSpinBox_textFromValue(self: ptr cQDoubleSpinBox, slot: int, val: float64): struct_miqt_string {.exportc: "miqt_exec_callback_QDoubleSpinBox_textFromValue ".} =
  var nimfunc = cast[ptr QDoubleSpinBoxtextFromValueProc](cast[pointer](slot))
  let slotval1 = val


  let virtualReturn = nimfunc[](slotval1 )

  struct_miqt_string(data: virtualReturn, len: csize_t(len(virtualReturn)))
proc QDoubleSpinBoxfixup*(self: gen_qspinbox_types.QDoubleSpinBox, str: string): void =
  fQDoubleSpinBox_virtualbase_fixup(self.h, struct_miqt_string(data: str, len: csize_t(len(str))))

type QDoubleSpinBoxfixupProc* = proc(str: string): void
proc onfixup*(self: gen_qspinbox_types.QDoubleSpinBox, slot: QDoubleSpinBoxfixupProc) =
  # TODO check subclass
  var tmp = new QDoubleSpinBoxfixupProc
  tmp[] = slot
  GC_ref(tmp)
  fcQDoubleSpinBox_override_virtual_fixup(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QDoubleSpinBox_fixup(self: ptr cQDoubleSpinBox, slot: int, str: struct_miqt_string): void {.exportc: "miqt_exec_callback_QDoubleSpinBox_fixup ".} =
  var nimfunc = cast[ptr QDoubleSpinBoxfixupProc](cast[pointer](slot))
  let vstr_ms = str
  let vstrx_ret = string.fromBytes(toOpenArrayByte(vstr_ms.data, 0, int(vstr_ms.len)-1))
  c_free(vstr_ms.data)
  let slotval1 = vstrx_ret


  nimfunc[](slotval1)
proc QDoubleSpinBoxsizeHint*(self: gen_qspinbox_types.QDoubleSpinBox, ): gen_qsize_types.QSize =
  gen_qsize_types.QSize(h: fQDoubleSpinBox_virtualbase_sizeHint(self.h))

type QDoubleSpinBoxsizeHintProc* = proc(): gen_qsize_types.QSize
proc onsizeHint*(self: gen_qspinbox_types.QDoubleSpinBox, slot: QDoubleSpinBoxsizeHintProc) =
  # TODO check subclass
  var tmp = new QDoubleSpinBoxsizeHintProc
  tmp[] = slot
  GC_ref(tmp)
  fcQDoubleSpinBox_override_virtual_sizeHint(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QDoubleSpinBox_sizeHint(self: ptr cQDoubleSpinBox, slot: int): pointer {.exportc: "miqt_exec_callback_QDoubleSpinBox_sizeHint ".} =
  var nimfunc = cast[ptr QDoubleSpinBoxsizeHintProc](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )

  virtualReturn.h
proc QDoubleSpinBoxminimumSizeHint*(self: gen_qspinbox_types.QDoubleSpinBox, ): gen_qsize_types.QSize =
  gen_qsize_types.QSize(h: fQDoubleSpinBox_virtualbase_minimumSizeHint(self.h))

type QDoubleSpinBoxminimumSizeHintProc* = proc(): gen_qsize_types.QSize
proc onminimumSizeHint*(self: gen_qspinbox_types.QDoubleSpinBox, slot: QDoubleSpinBoxminimumSizeHintProc) =
  # TODO check subclass
  var tmp = new QDoubleSpinBoxminimumSizeHintProc
  tmp[] = slot
  GC_ref(tmp)
  fcQDoubleSpinBox_override_virtual_minimumSizeHint(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QDoubleSpinBox_minimumSizeHint(self: ptr cQDoubleSpinBox, slot: int): pointer {.exportc: "miqt_exec_callback_QDoubleSpinBox_minimumSizeHint ".} =
  var nimfunc = cast[ptr QDoubleSpinBoxminimumSizeHintProc](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )

  virtualReturn.h
proc QDoubleSpinBoxevent*(self: gen_qspinbox_types.QDoubleSpinBox, event: gen_qcoreevent_types.QEvent): bool =
  fQDoubleSpinBox_virtualbase_event(self.h, event.h)

type QDoubleSpinBoxeventProc* = proc(event: gen_qcoreevent_types.QEvent): bool
proc onevent*(self: gen_qspinbox_types.QDoubleSpinBox, slot: QDoubleSpinBoxeventProc) =
  # TODO check subclass
  var tmp = new QDoubleSpinBoxeventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQDoubleSpinBox_override_virtual_event(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QDoubleSpinBox_event(self: ptr cQDoubleSpinBox, slot: int, event: pointer): bool {.exportc: "miqt_exec_callback_QDoubleSpinBox_event ".} =
  var nimfunc = cast[ptr QDoubleSpinBoxeventProc](cast[pointer](slot))
  let slotval1 = gen_qcoreevent_types.QEvent(h: event)


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn
proc QDoubleSpinBoxinputMethodQuery*(self: gen_qspinbox_types.QDoubleSpinBox, param1: cint): gen_qvariant_types.QVariant =
  gen_qvariant_types.QVariant(h: fQDoubleSpinBox_virtualbase_inputMethodQuery(self.h, cint(param1)))

type QDoubleSpinBoxinputMethodQueryProc* = proc(param1: cint): gen_qvariant_types.QVariant
proc oninputMethodQuery*(self: gen_qspinbox_types.QDoubleSpinBox, slot: QDoubleSpinBoxinputMethodQueryProc) =
  # TODO check subclass
  var tmp = new QDoubleSpinBoxinputMethodQueryProc
  tmp[] = slot
  GC_ref(tmp)
  fcQDoubleSpinBox_override_virtual_inputMethodQuery(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QDoubleSpinBox_inputMethodQuery(self: ptr cQDoubleSpinBox, slot: int, param1: cint): pointer {.exportc: "miqt_exec_callback_QDoubleSpinBox_inputMethodQuery ".} =
  var nimfunc = cast[ptr QDoubleSpinBoxinputMethodQueryProc](cast[pointer](slot))
  let slotval1 = cint(param1)


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn.h
proc QDoubleSpinBoxstepBy*(self: gen_qspinbox_types.QDoubleSpinBox, steps: cint): void =
  fQDoubleSpinBox_virtualbase_stepBy(self.h, steps)

type QDoubleSpinBoxstepByProc* = proc(steps: cint): void
proc onstepBy*(self: gen_qspinbox_types.QDoubleSpinBox, slot: QDoubleSpinBoxstepByProc) =
  # TODO check subclass
  var tmp = new QDoubleSpinBoxstepByProc
  tmp[] = slot
  GC_ref(tmp)
  fcQDoubleSpinBox_override_virtual_stepBy(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QDoubleSpinBox_stepBy(self: ptr cQDoubleSpinBox, slot: int, steps: cint): void {.exportc: "miqt_exec_callback_QDoubleSpinBox_stepBy ".} =
  var nimfunc = cast[ptr QDoubleSpinBoxstepByProc](cast[pointer](slot))
  let slotval1 = steps


  nimfunc[](slotval1)
proc QDoubleSpinBoxclear*(self: gen_qspinbox_types.QDoubleSpinBox, ): void =
  fQDoubleSpinBox_virtualbase_clear(self.h)

type QDoubleSpinBoxclearProc* = proc(): void
proc onclear*(self: gen_qspinbox_types.QDoubleSpinBox, slot: QDoubleSpinBoxclearProc) =
  # TODO check subclass
  var tmp = new QDoubleSpinBoxclearProc
  tmp[] = slot
  GC_ref(tmp)
  fcQDoubleSpinBox_override_virtual_clear(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QDoubleSpinBox_clear(self: ptr cQDoubleSpinBox, slot: int): void {.exportc: "miqt_exec_callback_QDoubleSpinBox_clear ".} =
  var nimfunc = cast[ptr QDoubleSpinBoxclearProc](cast[pointer](slot))

  nimfunc[]()
proc QDoubleSpinBoxresizeEvent*(self: gen_qspinbox_types.QDoubleSpinBox, event: gen_qevent_types.QResizeEvent): void =
  fQDoubleSpinBox_virtualbase_resizeEvent(self.h, event.h)

type QDoubleSpinBoxresizeEventProc* = proc(event: gen_qevent_types.QResizeEvent): void
proc onresizeEvent*(self: gen_qspinbox_types.QDoubleSpinBox, slot: QDoubleSpinBoxresizeEventProc) =
  # TODO check subclass
  var tmp = new QDoubleSpinBoxresizeEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQDoubleSpinBox_override_virtual_resizeEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QDoubleSpinBox_resizeEvent(self: ptr cQDoubleSpinBox, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QDoubleSpinBox_resizeEvent ".} =
  var nimfunc = cast[ptr QDoubleSpinBoxresizeEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QResizeEvent(h: event)


  nimfunc[](slotval1)
proc QDoubleSpinBoxkeyPressEvent*(self: gen_qspinbox_types.QDoubleSpinBox, event: gen_qevent_types.QKeyEvent): void =
  fQDoubleSpinBox_virtualbase_keyPressEvent(self.h, event.h)

type QDoubleSpinBoxkeyPressEventProc* = proc(event: gen_qevent_types.QKeyEvent): void
proc onkeyPressEvent*(self: gen_qspinbox_types.QDoubleSpinBox, slot: QDoubleSpinBoxkeyPressEventProc) =
  # TODO check subclass
  var tmp = new QDoubleSpinBoxkeyPressEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQDoubleSpinBox_override_virtual_keyPressEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QDoubleSpinBox_keyPressEvent(self: ptr cQDoubleSpinBox, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QDoubleSpinBox_keyPressEvent ".} =
  var nimfunc = cast[ptr QDoubleSpinBoxkeyPressEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QKeyEvent(h: event)


  nimfunc[](slotval1)
proc QDoubleSpinBoxkeyReleaseEvent*(self: gen_qspinbox_types.QDoubleSpinBox, event: gen_qevent_types.QKeyEvent): void =
  fQDoubleSpinBox_virtualbase_keyReleaseEvent(self.h, event.h)

type QDoubleSpinBoxkeyReleaseEventProc* = proc(event: gen_qevent_types.QKeyEvent): void
proc onkeyReleaseEvent*(self: gen_qspinbox_types.QDoubleSpinBox, slot: QDoubleSpinBoxkeyReleaseEventProc) =
  # TODO check subclass
  var tmp = new QDoubleSpinBoxkeyReleaseEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQDoubleSpinBox_override_virtual_keyReleaseEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QDoubleSpinBox_keyReleaseEvent(self: ptr cQDoubleSpinBox, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QDoubleSpinBox_keyReleaseEvent ".} =
  var nimfunc = cast[ptr QDoubleSpinBoxkeyReleaseEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QKeyEvent(h: event)


  nimfunc[](slotval1)
proc QDoubleSpinBoxwheelEvent*(self: gen_qspinbox_types.QDoubleSpinBox, event: gen_qevent_types.QWheelEvent): void =
  fQDoubleSpinBox_virtualbase_wheelEvent(self.h, event.h)

type QDoubleSpinBoxwheelEventProc* = proc(event: gen_qevent_types.QWheelEvent): void
proc onwheelEvent*(self: gen_qspinbox_types.QDoubleSpinBox, slot: QDoubleSpinBoxwheelEventProc) =
  # TODO check subclass
  var tmp = new QDoubleSpinBoxwheelEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQDoubleSpinBox_override_virtual_wheelEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QDoubleSpinBox_wheelEvent(self: ptr cQDoubleSpinBox, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QDoubleSpinBox_wheelEvent ".} =
  var nimfunc = cast[ptr QDoubleSpinBoxwheelEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QWheelEvent(h: event)


  nimfunc[](slotval1)
proc QDoubleSpinBoxfocusInEvent*(self: gen_qspinbox_types.QDoubleSpinBox, event: gen_qevent_types.QFocusEvent): void =
  fQDoubleSpinBox_virtualbase_focusInEvent(self.h, event.h)

type QDoubleSpinBoxfocusInEventProc* = proc(event: gen_qevent_types.QFocusEvent): void
proc onfocusInEvent*(self: gen_qspinbox_types.QDoubleSpinBox, slot: QDoubleSpinBoxfocusInEventProc) =
  # TODO check subclass
  var tmp = new QDoubleSpinBoxfocusInEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQDoubleSpinBox_override_virtual_focusInEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QDoubleSpinBox_focusInEvent(self: ptr cQDoubleSpinBox, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QDoubleSpinBox_focusInEvent ".} =
  var nimfunc = cast[ptr QDoubleSpinBoxfocusInEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QFocusEvent(h: event)


  nimfunc[](slotval1)
proc QDoubleSpinBoxfocusOutEvent*(self: gen_qspinbox_types.QDoubleSpinBox, event: gen_qevent_types.QFocusEvent): void =
  fQDoubleSpinBox_virtualbase_focusOutEvent(self.h, event.h)

type QDoubleSpinBoxfocusOutEventProc* = proc(event: gen_qevent_types.QFocusEvent): void
proc onfocusOutEvent*(self: gen_qspinbox_types.QDoubleSpinBox, slot: QDoubleSpinBoxfocusOutEventProc) =
  # TODO check subclass
  var tmp = new QDoubleSpinBoxfocusOutEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQDoubleSpinBox_override_virtual_focusOutEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QDoubleSpinBox_focusOutEvent(self: ptr cQDoubleSpinBox, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QDoubleSpinBox_focusOutEvent ".} =
  var nimfunc = cast[ptr QDoubleSpinBoxfocusOutEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QFocusEvent(h: event)


  nimfunc[](slotval1)
proc QDoubleSpinBoxcontextMenuEvent*(self: gen_qspinbox_types.QDoubleSpinBox, event: gen_qevent_types.QContextMenuEvent): void =
  fQDoubleSpinBox_virtualbase_contextMenuEvent(self.h, event.h)

type QDoubleSpinBoxcontextMenuEventProc* = proc(event: gen_qevent_types.QContextMenuEvent): void
proc oncontextMenuEvent*(self: gen_qspinbox_types.QDoubleSpinBox, slot: QDoubleSpinBoxcontextMenuEventProc) =
  # TODO check subclass
  var tmp = new QDoubleSpinBoxcontextMenuEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQDoubleSpinBox_override_virtual_contextMenuEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QDoubleSpinBox_contextMenuEvent(self: ptr cQDoubleSpinBox, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QDoubleSpinBox_contextMenuEvent ".} =
  var nimfunc = cast[ptr QDoubleSpinBoxcontextMenuEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QContextMenuEvent(h: event)


  nimfunc[](slotval1)
proc QDoubleSpinBoxchangeEvent*(self: gen_qspinbox_types.QDoubleSpinBox, event: gen_qcoreevent_types.QEvent): void =
  fQDoubleSpinBox_virtualbase_changeEvent(self.h, event.h)

type QDoubleSpinBoxchangeEventProc* = proc(event: gen_qcoreevent_types.QEvent): void
proc onchangeEvent*(self: gen_qspinbox_types.QDoubleSpinBox, slot: QDoubleSpinBoxchangeEventProc) =
  # TODO check subclass
  var tmp = new QDoubleSpinBoxchangeEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQDoubleSpinBox_override_virtual_changeEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QDoubleSpinBox_changeEvent(self: ptr cQDoubleSpinBox, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QDoubleSpinBox_changeEvent ".} =
  var nimfunc = cast[ptr QDoubleSpinBoxchangeEventProc](cast[pointer](slot))
  let slotval1 = gen_qcoreevent_types.QEvent(h: event)


  nimfunc[](slotval1)
proc QDoubleSpinBoxcloseEvent*(self: gen_qspinbox_types.QDoubleSpinBox, event: gen_qevent_types.QCloseEvent): void =
  fQDoubleSpinBox_virtualbase_closeEvent(self.h, event.h)

type QDoubleSpinBoxcloseEventProc* = proc(event: gen_qevent_types.QCloseEvent): void
proc oncloseEvent*(self: gen_qspinbox_types.QDoubleSpinBox, slot: QDoubleSpinBoxcloseEventProc) =
  # TODO check subclass
  var tmp = new QDoubleSpinBoxcloseEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQDoubleSpinBox_override_virtual_closeEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QDoubleSpinBox_closeEvent(self: ptr cQDoubleSpinBox, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QDoubleSpinBox_closeEvent ".} =
  var nimfunc = cast[ptr QDoubleSpinBoxcloseEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QCloseEvent(h: event)


  nimfunc[](slotval1)
proc QDoubleSpinBoxhideEvent*(self: gen_qspinbox_types.QDoubleSpinBox, event: gen_qevent_types.QHideEvent): void =
  fQDoubleSpinBox_virtualbase_hideEvent(self.h, event.h)

type QDoubleSpinBoxhideEventProc* = proc(event: gen_qevent_types.QHideEvent): void
proc onhideEvent*(self: gen_qspinbox_types.QDoubleSpinBox, slot: QDoubleSpinBoxhideEventProc) =
  # TODO check subclass
  var tmp = new QDoubleSpinBoxhideEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQDoubleSpinBox_override_virtual_hideEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QDoubleSpinBox_hideEvent(self: ptr cQDoubleSpinBox, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QDoubleSpinBox_hideEvent ".} =
  var nimfunc = cast[ptr QDoubleSpinBoxhideEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QHideEvent(h: event)


  nimfunc[](slotval1)
proc QDoubleSpinBoxmousePressEvent*(self: gen_qspinbox_types.QDoubleSpinBox, event: gen_qevent_types.QMouseEvent): void =
  fQDoubleSpinBox_virtualbase_mousePressEvent(self.h, event.h)

type QDoubleSpinBoxmousePressEventProc* = proc(event: gen_qevent_types.QMouseEvent): void
proc onmousePressEvent*(self: gen_qspinbox_types.QDoubleSpinBox, slot: QDoubleSpinBoxmousePressEventProc) =
  # TODO check subclass
  var tmp = new QDoubleSpinBoxmousePressEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQDoubleSpinBox_override_virtual_mousePressEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QDoubleSpinBox_mousePressEvent(self: ptr cQDoubleSpinBox, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QDoubleSpinBox_mousePressEvent ".} =
  var nimfunc = cast[ptr QDoubleSpinBoxmousePressEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QMouseEvent(h: event)


  nimfunc[](slotval1)
proc QDoubleSpinBoxmouseReleaseEvent*(self: gen_qspinbox_types.QDoubleSpinBox, event: gen_qevent_types.QMouseEvent): void =
  fQDoubleSpinBox_virtualbase_mouseReleaseEvent(self.h, event.h)

type QDoubleSpinBoxmouseReleaseEventProc* = proc(event: gen_qevent_types.QMouseEvent): void
proc onmouseReleaseEvent*(self: gen_qspinbox_types.QDoubleSpinBox, slot: QDoubleSpinBoxmouseReleaseEventProc) =
  # TODO check subclass
  var tmp = new QDoubleSpinBoxmouseReleaseEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQDoubleSpinBox_override_virtual_mouseReleaseEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QDoubleSpinBox_mouseReleaseEvent(self: ptr cQDoubleSpinBox, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QDoubleSpinBox_mouseReleaseEvent ".} =
  var nimfunc = cast[ptr QDoubleSpinBoxmouseReleaseEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QMouseEvent(h: event)


  nimfunc[](slotval1)
proc QDoubleSpinBoxmouseMoveEvent*(self: gen_qspinbox_types.QDoubleSpinBox, event: gen_qevent_types.QMouseEvent): void =
  fQDoubleSpinBox_virtualbase_mouseMoveEvent(self.h, event.h)

type QDoubleSpinBoxmouseMoveEventProc* = proc(event: gen_qevent_types.QMouseEvent): void
proc onmouseMoveEvent*(self: gen_qspinbox_types.QDoubleSpinBox, slot: QDoubleSpinBoxmouseMoveEventProc) =
  # TODO check subclass
  var tmp = new QDoubleSpinBoxmouseMoveEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQDoubleSpinBox_override_virtual_mouseMoveEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QDoubleSpinBox_mouseMoveEvent(self: ptr cQDoubleSpinBox, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QDoubleSpinBox_mouseMoveEvent ".} =
  var nimfunc = cast[ptr QDoubleSpinBoxmouseMoveEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QMouseEvent(h: event)


  nimfunc[](slotval1)
proc QDoubleSpinBoxtimerEvent*(self: gen_qspinbox_types.QDoubleSpinBox, event: gen_qcoreevent_types.QTimerEvent): void =
  fQDoubleSpinBox_virtualbase_timerEvent(self.h, event.h)

type QDoubleSpinBoxtimerEventProc* = proc(event: gen_qcoreevent_types.QTimerEvent): void
proc ontimerEvent*(self: gen_qspinbox_types.QDoubleSpinBox, slot: QDoubleSpinBoxtimerEventProc) =
  # TODO check subclass
  var tmp = new QDoubleSpinBoxtimerEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQDoubleSpinBox_override_virtual_timerEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QDoubleSpinBox_timerEvent(self: ptr cQDoubleSpinBox, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QDoubleSpinBox_timerEvent ".} =
  var nimfunc = cast[ptr QDoubleSpinBoxtimerEventProc](cast[pointer](slot))
  let slotval1 = gen_qcoreevent_types.QTimerEvent(h: event)


  nimfunc[](slotval1)
proc QDoubleSpinBoxpaintEvent*(self: gen_qspinbox_types.QDoubleSpinBox, event: gen_qevent_types.QPaintEvent): void =
  fQDoubleSpinBox_virtualbase_paintEvent(self.h, event.h)

type QDoubleSpinBoxpaintEventProc* = proc(event: gen_qevent_types.QPaintEvent): void
proc onpaintEvent*(self: gen_qspinbox_types.QDoubleSpinBox, slot: QDoubleSpinBoxpaintEventProc) =
  # TODO check subclass
  var tmp = new QDoubleSpinBoxpaintEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQDoubleSpinBox_override_virtual_paintEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QDoubleSpinBox_paintEvent(self: ptr cQDoubleSpinBox, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QDoubleSpinBox_paintEvent ".} =
  var nimfunc = cast[ptr QDoubleSpinBoxpaintEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QPaintEvent(h: event)


  nimfunc[](slotval1)
proc QDoubleSpinBoxshowEvent*(self: gen_qspinbox_types.QDoubleSpinBox, event: gen_qevent_types.QShowEvent): void =
  fQDoubleSpinBox_virtualbase_showEvent(self.h, event.h)

type QDoubleSpinBoxshowEventProc* = proc(event: gen_qevent_types.QShowEvent): void
proc onshowEvent*(self: gen_qspinbox_types.QDoubleSpinBox, slot: QDoubleSpinBoxshowEventProc) =
  # TODO check subclass
  var tmp = new QDoubleSpinBoxshowEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQDoubleSpinBox_override_virtual_showEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QDoubleSpinBox_showEvent(self: ptr cQDoubleSpinBox, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QDoubleSpinBox_showEvent ".} =
  var nimfunc = cast[ptr QDoubleSpinBoxshowEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QShowEvent(h: event)


  nimfunc[](slotval1)
proc QDoubleSpinBoxinitStyleOption*(self: gen_qspinbox_types.QDoubleSpinBox, option: gen_qstyleoption_types.QStyleOptionSpinBox): void =
  fQDoubleSpinBox_virtualbase_initStyleOption(self.h, option.h)

type QDoubleSpinBoxinitStyleOptionProc* = proc(option: gen_qstyleoption_types.QStyleOptionSpinBox): void
proc oninitStyleOption*(self: gen_qspinbox_types.QDoubleSpinBox, slot: QDoubleSpinBoxinitStyleOptionProc) =
  # TODO check subclass
  var tmp = new QDoubleSpinBoxinitStyleOptionProc
  tmp[] = slot
  GC_ref(tmp)
  fcQDoubleSpinBox_override_virtual_initStyleOption(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QDoubleSpinBox_initStyleOption(self: ptr cQDoubleSpinBox, slot: int, option: pointer): void {.exportc: "miqt_exec_callback_QDoubleSpinBox_initStyleOption ".} =
  var nimfunc = cast[ptr QDoubleSpinBoxinitStyleOptionProc](cast[pointer](slot))
  let slotval1 = gen_qstyleoption_types.QStyleOptionSpinBox(h: option)


  nimfunc[](slotval1)
proc QDoubleSpinBoxstepEnabled*(self: gen_qspinbox_types.QDoubleSpinBox, ): cint =
  cint(fQDoubleSpinBox_virtualbase_stepEnabled(self.h))

type QDoubleSpinBoxstepEnabledProc* = proc(): cint
proc onstepEnabled*(self: gen_qspinbox_types.QDoubleSpinBox, slot: QDoubleSpinBoxstepEnabledProc) =
  # TODO check subclass
  var tmp = new QDoubleSpinBoxstepEnabledProc
  tmp[] = slot
  GC_ref(tmp)
  fcQDoubleSpinBox_override_virtual_stepEnabled(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QDoubleSpinBox_stepEnabled(self: ptr cQDoubleSpinBox, slot: int): cint {.exportc: "miqt_exec_callback_QDoubleSpinBox_stepEnabled ".} =
  var nimfunc = cast[ptr QDoubleSpinBoxstepEnabledProc](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )

  cint(virtualReturn)
proc QDoubleSpinBoxdevType*(self: gen_qspinbox_types.QDoubleSpinBox, ): cint =
  fQDoubleSpinBox_virtualbase_devType(self.h)

type QDoubleSpinBoxdevTypeProc* = proc(): cint
proc ondevType*(self: gen_qspinbox_types.QDoubleSpinBox, slot: QDoubleSpinBoxdevTypeProc) =
  # TODO check subclass
  var tmp = new QDoubleSpinBoxdevTypeProc
  tmp[] = slot
  GC_ref(tmp)
  fcQDoubleSpinBox_override_virtual_devType(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QDoubleSpinBox_devType(self: ptr cQDoubleSpinBox, slot: int): cint {.exportc: "miqt_exec_callback_QDoubleSpinBox_devType ".} =
  var nimfunc = cast[ptr QDoubleSpinBoxdevTypeProc](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )

  virtualReturn
proc QDoubleSpinBoxsetVisible*(self: gen_qspinbox_types.QDoubleSpinBox, visible: bool): void =
  fQDoubleSpinBox_virtualbase_setVisible(self.h, visible)

type QDoubleSpinBoxsetVisibleProc* = proc(visible: bool): void
proc onsetVisible*(self: gen_qspinbox_types.QDoubleSpinBox, slot: QDoubleSpinBoxsetVisibleProc) =
  # TODO check subclass
  var tmp = new QDoubleSpinBoxsetVisibleProc
  tmp[] = slot
  GC_ref(tmp)
  fcQDoubleSpinBox_override_virtual_setVisible(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QDoubleSpinBox_setVisible(self: ptr cQDoubleSpinBox, slot: int, visible: bool): void {.exportc: "miqt_exec_callback_QDoubleSpinBox_setVisible ".} =
  var nimfunc = cast[ptr QDoubleSpinBoxsetVisibleProc](cast[pointer](slot))
  let slotval1 = visible


  nimfunc[](slotval1)
proc QDoubleSpinBoxheightForWidth*(self: gen_qspinbox_types.QDoubleSpinBox, param1: cint): cint =
  fQDoubleSpinBox_virtualbase_heightForWidth(self.h, param1)

type QDoubleSpinBoxheightForWidthProc* = proc(param1: cint): cint
proc onheightForWidth*(self: gen_qspinbox_types.QDoubleSpinBox, slot: QDoubleSpinBoxheightForWidthProc) =
  # TODO check subclass
  var tmp = new QDoubleSpinBoxheightForWidthProc
  tmp[] = slot
  GC_ref(tmp)
  fcQDoubleSpinBox_override_virtual_heightForWidth(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QDoubleSpinBox_heightForWidth(self: ptr cQDoubleSpinBox, slot: int, param1: cint): cint {.exportc: "miqt_exec_callback_QDoubleSpinBox_heightForWidth ".} =
  var nimfunc = cast[ptr QDoubleSpinBoxheightForWidthProc](cast[pointer](slot))
  let slotval1 = param1


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn
proc QDoubleSpinBoxhasHeightForWidth*(self: gen_qspinbox_types.QDoubleSpinBox, ): bool =
  fQDoubleSpinBox_virtualbase_hasHeightForWidth(self.h)

type QDoubleSpinBoxhasHeightForWidthProc* = proc(): bool
proc onhasHeightForWidth*(self: gen_qspinbox_types.QDoubleSpinBox, slot: QDoubleSpinBoxhasHeightForWidthProc) =
  # TODO check subclass
  var tmp = new QDoubleSpinBoxhasHeightForWidthProc
  tmp[] = slot
  GC_ref(tmp)
  fcQDoubleSpinBox_override_virtual_hasHeightForWidth(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QDoubleSpinBox_hasHeightForWidth(self: ptr cQDoubleSpinBox, slot: int): bool {.exportc: "miqt_exec_callback_QDoubleSpinBox_hasHeightForWidth ".} =
  var nimfunc = cast[ptr QDoubleSpinBoxhasHeightForWidthProc](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )

  virtualReturn
proc QDoubleSpinBoxpaintEngine*(self: gen_qspinbox_types.QDoubleSpinBox, ): gen_qpaintengine_types.QPaintEngine =
  gen_qpaintengine_types.QPaintEngine(h: fQDoubleSpinBox_virtualbase_paintEngine(self.h))

type QDoubleSpinBoxpaintEngineProc* = proc(): gen_qpaintengine_types.QPaintEngine
proc onpaintEngine*(self: gen_qspinbox_types.QDoubleSpinBox, slot: QDoubleSpinBoxpaintEngineProc) =
  # TODO check subclass
  var tmp = new QDoubleSpinBoxpaintEngineProc
  tmp[] = slot
  GC_ref(tmp)
  fcQDoubleSpinBox_override_virtual_paintEngine(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QDoubleSpinBox_paintEngine(self: ptr cQDoubleSpinBox, slot: int): pointer {.exportc: "miqt_exec_callback_QDoubleSpinBox_paintEngine ".} =
  var nimfunc = cast[ptr QDoubleSpinBoxpaintEngineProc](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )

  virtualReturn.h
proc QDoubleSpinBoxmouseDoubleClickEvent*(self: gen_qspinbox_types.QDoubleSpinBox, event: gen_qevent_types.QMouseEvent): void =
  fQDoubleSpinBox_virtualbase_mouseDoubleClickEvent(self.h, event.h)

type QDoubleSpinBoxmouseDoubleClickEventProc* = proc(event: gen_qevent_types.QMouseEvent): void
proc onmouseDoubleClickEvent*(self: gen_qspinbox_types.QDoubleSpinBox, slot: QDoubleSpinBoxmouseDoubleClickEventProc) =
  # TODO check subclass
  var tmp = new QDoubleSpinBoxmouseDoubleClickEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQDoubleSpinBox_override_virtual_mouseDoubleClickEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QDoubleSpinBox_mouseDoubleClickEvent(self: ptr cQDoubleSpinBox, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QDoubleSpinBox_mouseDoubleClickEvent ".} =
  var nimfunc = cast[ptr QDoubleSpinBoxmouseDoubleClickEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QMouseEvent(h: event)


  nimfunc[](slotval1)
proc QDoubleSpinBoxenterEvent*(self: gen_qspinbox_types.QDoubleSpinBox, event: gen_qevent_types.QEnterEvent): void =
  fQDoubleSpinBox_virtualbase_enterEvent(self.h, event.h)

type QDoubleSpinBoxenterEventProc* = proc(event: gen_qevent_types.QEnterEvent): void
proc onenterEvent*(self: gen_qspinbox_types.QDoubleSpinBox, slot: QDoubleSpinBoxenterEventProc) =
  # TODO check subclass
  var tmp = new QDoubleSpinBoxenterEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQDoubleSpinBox_override_virtual_enterEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QDoubleSpinBox_enterEvent(self: ptr cQDoubleSpinBox, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QDoubleSpinBox_enterEvent ".} =
  var nimfunc = cast[ptr QDoubleSpinBoxenterEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QEnterEvent(h: event)


  nimfunc[](slotval1)
proc QDoubleSpinBoxleaveEvent*(self: gen_qspinbox_types.QDoubleSpinBox, event: gen_qcoreevent_types.QEvent): void =
  fQDoubleSpinBox_virtualbase_leaveEvent(self.h, event.h)

type QDoubleSpinBoxleaveEventProc* = proc(event: gen_qcoreevent_types.QEvent): void
proc onleaveEvent*(self: gen_qspinbox_types.QDoubleSpinBox, slot: QDoubleSpinBoxleaveEventProc) =
  # TODO check subclass
  var tmp = new QDoubleSpinBoxleaveEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQDoubleSpinBox_override_virtual_leaveEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QDoubleSpinBox_leaveEvent(self: ptr cQDoubleSpinBox, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QDoubleSpinBox_leaveEvent ".} =
  var nimfunc = cast[ptr QDoubleSpinBoxleaveEventProc](cast[pointer](slot))
  let slotval1 = gen_qcoreevent_types.QEvent(h: event)


  nimfunc[](slotval1)
proc QDoubleSpinBoxmoveEvent*(self: gen_qspinbox_types.QDoubleSpinBox, event: gen_qevent_types.QMoveEvent): void =
  fQDoubleSpinBox_virtualbase_moveEvent(self.h, event.h)

type QDoubleSpinBoxmoveEventProc* = proc(event: gen_qevent_types.QMoveEvent): void
proc onmoveEvent*(self: gen_qspinbox_types.QDoubleSpinBox, slot: QDoubleSpinBoxmoveEventProc) =
  # TODO check subclass
  var tmp = new QDoubleSpinBoxmoveEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQDoubleSpinBox_override_virtual_moveEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QDoubleSpinBox_moveEvent(self: ptr cQDoubleSpinBox, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QDoubleSpinBox_moveEvent ".} =
  var nimfunc = cast[ptr QDoubleSpinBoxmoveEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QMoveEvent(h: event)


  nimfunc[](slotval1)
proc QDoubleSpinBoxtabletEvent*(self: gen_qspinbox_types.QDoubleSpinBox, event: gen_qevent_types.QTabletEvent): void =
  fQDoubleSpinBox_virtualbase_tabletEvent(self.h, event.h)

type QDoubleSpinBoxtabletEventProc* = proc(event: gen_qevent_types.QTabletEvent): void
proc ontabletEvent*(self: gen_qspinbox_types.QDoubleSpinBox, slot: QDoubleSpinBoxtabletEventProc) =
  # TODO check subclass
  var tmp = new QDoubleSpinBoxtabletEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQDoubleSpinBox_override_virtual_tabletEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QDoubleSpinBox_tabletEvent(self: ptr cQDoubleSpinBox, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QDoubleSpinBox_tabletEvent ".} =
  var nimfunc = cast[ptr QDoubleSpinBoxtabletEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QTabletEvent(h: event)


  nimfunc[](slotval1)
proc QDoubleSpinBoxactionEvent*(self: gen_qspinbox_types.QDoubleSpinBox, event: gen_qevent_types.QActionEvent): void =
  fQDoubleSpinBox_virtualbase_actionEvent(self.h, event.h)

type QDoubleSpinBoxactionEventProc* = proc(event: gen_qevent_types.QActionEvent): void
proc onactionEvent*(self: gen_qspinbox_types.QDoubleSpinBox, slot: QDoubleSpinBoxactionEventProc) =
  # TODO check subclass
  var tmp = new QDoubleSpinBoxactionEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQDoubleSpinBox_override_virtual_actionEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QDoubleSpinBox_actionEvent(self: ptr cQDoubleSpinBox, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QDoubleSpinBox_actionEvent ".} =
  var nimfunc = cast[ptr QDoubleSpinBoxactionEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QActionEvent(h: event)


  nimfunc[](slotval1)
proc QDoubleSpinBoxdragEnterEvent*(self: gen_qspinbox_types.QDoubleSpinBox, event: gen_qevent_types.QDragEnterEvent): void =
  fQDoubleSpinBox_virtualbase_dragEnterEvent(self.h, event.h)

type QDoubleSpinBoxdragEnterEventProc* = proc(event: gen_qevent_types.QDragEnterEvent): void
proc ondragEnterEvent*(self: gen_qspinbox_types.QDoubleSpinBox, slot: QDoubleSpinBoxdragEnterEventProc) =
  # TODO check subclass
  var tmp = new QDoubleSpinBoxdragEnterEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQDoubleSpinBox_override_virtual_dragEnterEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QDoubleSpinBox_dragEnterEvent(self: ptr cQDoubleSpinBox, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QDoubleSpinBox_dragEnterEvent ".} =
  var nimfunc = cast[ptr QDoubleSpinBoxdragEnterEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QDragEnterEvent(h: event)


  nimfunc[](slotval1)
proc QDoubleSpinBoxdragMoveEvent*(self: gen_qspinbox_types.QDoubleSpinBox, event: gen_qevent_types.QDragMoveEvent): void =
  fQDoubleSpinBox_virtualbase_dragMoveEvent(self.h, event.h)

type QDoubleSpinBoxdragMoveEventProc* = proc(event: gen_qevent_types.QDragMoveEvent): void
proc ondragMoveEvent*(self: gen_qspinbox_types.QDoubleSpinBox, slot: QDoubleSpinBoxdragMoveEventProc) =
  # TODO check subclass
  var tmp = new QDoubleSpinBoxdragMoveEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQDoubleSpinBox_override_virtual_dragMoveEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QDoubleSpinBox_dragMoveEvent(self: ptr cQDoubleSpinBox, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QDoubleSpinBox_dragMoveEvent ".} =
  var nimfunc = cast[ptr QDoubleSpinBoxdragMoveEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QDragMoveEvent(h: event)


  nimfunc[](slotval1)
proc QDoubleSpinBoxdragLeaveEvent*(self: gen_qspinbox_types.QDoubleSpinBox, event: gen_qevent_types.QDragLeaveEvent): void =
  fQDoubleSpinBox_virtualbase_dragLeaveEvent(self.h, event.h)

type QDoubleSpinBoxdragLeaveEventProc* = proc(event: gen_qevent_types.QDragLeaveEvent): void
proc ondragLeaveEvent*(self: gen_qspinbox_types.QDoubleSpinBox, slot: QDoubleSpinBoxdragLeaveEventProc) =
  # TODO check subclass
  var tmp = new QDoubleSpinBoxdragLeaveEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQDoubleSpinBox_override_virtual_dragLeaveEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QDoubleSpinBox_dragLeaveEvent(self: ptr cQDoubleSpinBox, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QDoubleSpinBox_dragLeaveEvent ".} =
  var nimfunc = cast[ptr QDoubleSpinBoxdragLeaveEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QDragLeaveEvent(h: event)


  nimfunc[](slotval1)
proc QDoubleSpinBoxdropEvent*(self: gen_qspinbox_types.QDoubleSpinBox, event: gen_qevent_types.QDropEvent): void =
  fQDoubleSpinBox_virtualbase_dropEvent(self.h, event.h)

type QDoubleSpinBoxdropEventProc* = proc(event: gen_qevent_types.QDropEvent): void
proc ondropEvent*(self: gen_qspinbox_types.QDoubleSpinBox, slot: QDoubleSpinBoxdropEventProc) =
  # TODO check subclass
  var tmp = new QDoubleSpinBoxdropEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQDoubleSpinBox_override_virtual_dropEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QDoubleSpinBox_dropEvent(self: ptr cQDoubleSpinBox, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QDoubleSpinBox_dropEvent ".} =
  var nimfunc = cast[ptr QDoubleSpinBoxdropEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QDropEvent(h: event)


  nimfunc[](slotval1)
proc QDoubleSpinBoxnativeEvent*(self: gen_qspinbox_types.QDoubleSpinBox, eventType: seq[byte], message: pointer, resultVal: ptr uint): bool =
  fQDoubleSpinBox_virtualbase_nativeEvent(self.h, struct_miqt_string(data: cast[cstring](if len(eventType) == 0: nil else: unsafeAddr eventType[0]), len: csize_t(len(eventType))), message, resultVal)

type QDoubleSpinBoxnativeEventProc* = proc(eventType: seq[byte], message: pointer, resultVal: ptr uint): bool
proc onnativeEvent*(self: gen_qspinbox_types.QDoubleSpinBox, slot: QDoubleSpinBoxnativeEventProc) =
  # TODO check subclass
  var tmp = new QDoubleSpinBoxnativeEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQDoubleSpinBox_override_virtual_nativeEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QDoubleSpinBox_nativeEvent(self: ptr cQDoubleSpinBox, slot: int, eventType: struct_miqt_string, message: pointer, resultVal: ptr uint): bool {.exportc: "miqt_exec_callback_QDoubleSpinBox_nativeEvent ".} =
  var nimfunc = cast[ptr QDoubleSpinBoxnativeEventProc](cast[pointer](slot))
  var veventType_bytearray = eventType
  var veventTypex_ret = @(toOpenArrayByte(veventType_bytearray.data, 0, int(veventType_bytearray.len)-1))
  c_free(veventType_bytearray.data)
  let slotval1 = veventTypex_ret

  let slotval2 = message

  let slotval3 = resultVal


  let virtualReturn = nimfunc[](slotval1, slotval2, slotval3 )

  virtualReturn
proc QDoubleSpinBoxmetric*(self: gen_qspinbox_types.QDoubleSpinBox, param1: cint): cint =
  fQDoubleSpinBox_virtualbase_metric(self.h, cint(param1))

type QDoubleSpinBoxmetricProc* = proc(param1: cint): cint
proc onmetric*(self: gen_qspinbox_types.QDoubleSpinBox, slot: QDoubleSpinBoxmetricProc) =
  # TODO check subclass
  var tmp = new QDoubleSpinBoxmetricProc
  tmp[] = slot
  GC_ref(tmp)
  fcQDoubleSpinBox_override_virtual_metric(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QDoubleSpinBox_metric(self: ptr cQDoubleSpinBox, slot: int, param1: cint): cint {.exportc: "miqt_exec_callback_QDoubleSpinBox_metric ".} =
  var nimfunc = cast[ptr QDoubleSpinBoxmetricProc](cast[pointer](slot))
  let slotval1 = cint(param1)


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn
proc QDoubleSpinBoxinitPainter*(self: gen_qspinbox_types.QDoubleSpinBox, painter: gen_qpainter_types.QPainter): void =
  fQDoubleSpinBox_virtualbase_initPainter(self.h, painter.h)

type QDoubleSpinBoxinitPainterProc* = proc(painter: gen_qpainter_types.QPainter): void
proc oninitPainter*(self: gen_qspinbox_types.QDoubleSpinBox, slot: QDoubleSpinBoxinitPainterProc) =
  # TODO check subclass
  var tmp = new QDoubleSpinBoxinitPainterProc
  tmp[] = slot
  GC_ref(tmp)
  fcQDoubleSpinBox_override_virtual_initPainter(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QDoubleSpinBox_initPainter(self: ptr cQDoubleSpinBox, slot: int, painter: pointer): void {.exportc: "miqt_exec_callback_QDoubleSpinBox_initPainter ".} =
  var nimfunc = cast[ptr QDoubleSpinBoxinitPainterProc](cast[pointer](slot))
  let slotval1 = gen_qpainter_types.QPainter(h: painter)


  nimfunc[](slotval1)
proc QDoubleSpinBoxredirected*(self: gen_qspinbox_types.QDoubleSpinBox, offset: gen_qpoint_types.QPoint): gen_qpaintdevice_types.QPaintDevice =
  gen_qpaintdevice_types.QPaintDevice(h: fQDoubleSpinBox_virtualbase_redirected(self.h, offset.h))

type QDoubleSpinBoxredirectedProc* = proc(offset: gen_qpoint_types.QPoint): gen_qpaintdevice_types.QPaintDevice
proc onredirected*(self: gen_qspinbox_types.QDoubleSpinBox, slot: QDoubleSpinBoxredirectedProc) =
  # TODO check subclass
  var tmp = new QDoubleSpinBoxredirectedProc
  tmp[] = slot
  GC_ref(tmp)
  fcQDoubleSpinBox_override_virtual_redirected(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QDoubleSpinBox_redirected(self: ptr cQDoubleSpinBox, slot: int, offset: pointer): pointer {.exportc: "miqt_exec_callback_QDoubleSpinBox_redirected ".} =
  var nimfunc = cast[ptr QDoubleSpinBoxredirectedProc](cast[pointer](slot))
  let slotval1 = gen_qpoint_types.QPoint(h: offset)


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn.h
proc QDoubleSpinBoxsharedPainter*(self: gen_qspinbox_types.QDoubleSpinBox, ): gen_qpainter_types.QPainter =
  gen_qpainter_types.QPainter(h: fQDoubleSpinBox_virtualbase_sharedPainter(self.h))

type QDoubleSpinBoxsharedPainterProc* = proc(): gen_qpainter_types.QPainter
proc onsharedPainter*(self: gen_qspinbox_types.QDoubleSpinBox, slot: QDoubleSpinBoxsharedPainterProc) =
  # TODO check subclass
  var tmp = new QDoubleSpinBoxsharedPainterProc
  tmp[] = slot
  GC_ref(tmp)
  fcQDoubleSpinBox_override_virtual_sharedPainter(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QDoubleSpinBox_sharedPainter(self: ptr cQDoubleSpinBox, slot: int): pointer {.exportc: "miqt_exec_callback_QDoubleSpinBox_sharedPainter ".} =
  var nimfunc = cast[ptr QDoubleSpinBoxsharedPainterProc](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )

  virtualReturn.h
proc QDoubleSpinBoxinputMethodEvent*(self: gen_qspinbox_types.QDoubleSpinBox, param1: gen_qevent_types.QInputMethodEvent): void =
  fQDoubleSpinBox_virtualbase_inputMethodEvent(self.h, param1.h)

type QDoubleSpinBoxinputMethodEventProc* = proc(param1: gen_qevent_types.QInputMethodEvent): void
proc oninputMethodEvent*(self: gen_qspinbox_types.QDoubleSpinBox, slot: QDoubleSpinBoxinputMethodEventProc) =
  # TODO check subclass
  var tmp = new QDoubleSpinBoxinputMethodEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQDoubleSpinBox_override_virtual_inputMethodEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QDoubleSpinBox_inputMethodEvent(self: ptr cQDoubleSpinBox, slot: int, param1: pointer): void {.exportc: "miqt_exec_callback_QDoubleSpinBox_inputMethodEvent ".} =
  var nimfunc = cast[ptr QDoubleSpinBoxinputMethodEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QInputMethodEvent(h: param1)


  nimfunc[](slotval1)
proc QDoubleSpinBoxfocusNextPrevChild*(self: gen_qspinbox_types.QDoubleSpinBox, next: bool): bool =
  fQDoubleSpinBox_virtualbase_focusNextPrevChild(self.h, next)

type QDoubleSpinBoxfocusNextPrevChildProc* = proc(next: bool): bool
proc onfocusNextPrevChild*(self: gen_qspinbox_types.QDoubleSpinBox, slot: QDoubleSpinBoxfocusNextPrevChildProc) =
  # TODO check subclass
  var tmp = new QDoubleSpinBoxfocusNextPrevChildProc
  tmp[] = slot
  GC_ref(tmp)
  fcQDoubleSpinBox_override_virtual_focusNextPrevChild(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QDoubleSpinBox_focusNextPrevChild(self: ptr cQDoubleSpinBox, slot: int, next: bool): bool {.exportc: "miqt_exec_callback_QDoubleSpinBox_focusNextPrevChild ".} =
  var nimfunc = cast[ptr QDoubleSpinBoxfocusNextPrevChildProc](cast[pointer](slot))
  let slotval1 = next


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn
proc QDoubleSpinBoxeventFilter*(self: gen_qspinbox_types.QDoubleSpinBox, watched: gen_qobject_types.QObject, event: gen_qcoreevent_types.QEvent): bool =
  fQDoubleSpinBox_virtualbase_eventFilter(self.h, watched.h, event.h)

type QDoubleSpinBoxeventFilterProc* = proc(watched: gen_qobject_types.QObject, event: gen_qcoreevent_types.QEvent): bool
proc oneventFilter*(self: gen_qspinbox_types.QDoubleSpinBox, slot: QDoubleSpinBoxeventFilterProc) =
  # TODO check subclass
  var tmp = new QDoubleSpinBoxeventFilterProc
  tmp[] = slot
  GC_ref(tmp)
  fcQDoubleSpinBox_override_virtual_eventFilter(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QDoubleSpinBox_eventFilter(self: ptr cQDoubleSpinBox, slot: int, watched: pointer, event: pointer): bool {.exportc: "miqt_exec_callback_QDoubleSpinBox_eventFilter ".} =
  var nimfunc = cast[ptr QDoubleSpinBoxeventFilterProc](cast[pointer](slot))
  let slotval1 = gen_qobject_types.QObject(h: watched)

  let slotval2 = gen_qcoreevent_types.QEvent(h: event)


  let virtualReturn = nimfunc[](slotval1, slotval2 )

  virtualReturn
proc QDoubleSpinBoxchildEvent*(self: gen_qspinbox_types.QDoubleSpinBox, event: gen_qcoreevent_types.QChildEvent): void =
  fQDoubleSpinBox_virtualbase_childEvent(self.h, event.h)

type QDoubleSpinBoxchildEventProc* = proc(event: gen_qcoreevent_types.QChildEvent): void
proc onchildEvent*(self: gen_qspinbox_types.QDoubleSpinBox, slot: QDoubleSpinBoxchildEventProc) =
  # TODO check subclass
  var tmp = new QDoubleSpinBoxchildEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQDoubleSpinBox_override_virtual_childEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QDoubleSpinBox_childEvent(self: ptr cQDoubleSpinBox, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QDoubleSpinBox_childEvent ".} =
  var nimfunc = cast[ptr QDoubleSpinBoxchildEventProc](cast[pointer](slot))
  let slotval1 = gen_qcoreevent_types.QChildEvent(h: event)


  nimfunc[](slotval1)
proc QDoubleSpinBoxcustomEvent*(self: gen_qspinbox_types.QDoubleSpinBox, event: gen_qcoreevent_types.QEvent): void =
  fQDoubleSpinBox_virtualbase_customEvent(self.h, event.h)

type QDoubleSpinBoxcustomEventProc* = proc(event: gen_qcoreevent_types.QEvent): void
proc oncustomEvent*(self: gen_qspinbox_types.QDoubleSpinBox, slot: QDoubleSpinBoxcustomEventProc) =
  # TODO check subclass
  var tmp = new QDoubleSpinBoxcustomEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQDoubleSpinBox_override_virtual_customEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QDoubleSpinBox_customEvent(self: ptr cQDoubleSpinBox, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QDoubleSpinBox_customEvent ".} =
  var nimfunc = cast[ptr QDoubleSpinBoxcustomEventProc](cast[pointer](slot))
  let slotval1 = gen_qcoreevent_types.QEvent(h: event)


  nimfunc[](slotval1)
proc QDoubleSpinBoxconnectNotify*(self: gen_qspinbox_types.QDoubleSpinBox, signal: gen_qmetaobject_types.QMetaMethod): void =
  fQDoubleSpinBox_virtualbase_connectNotify(self.h, signal.h)

type QDoubleSpinBoxconnectNotifyProc* = proc(signal: gen_qmetaobject_types.QMetaMethod): void
proc onconnectNotify*(self: gen_qspinbox_types.QDoubleSpinBox, slot: QDoubleSpinBoxconnectNotifyProc) =
  # TODO check subclass
  var tmp = new QDoubleSpinBoxconnectNotifyProc
  tmp[] = slot
  GC_ref(tmp)
  fcQDoubleSpinBox_override_virtual_connectNotify(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QDoubleSpinBox_connectNotify(self: ptr cQDoubleSpinBox, slot: int, signal: pointer): void {.exportc: "miqt_exec_callback_QDoubleSpinBox_connectNotify ".} =
  var nimfunc = cast[ptr QDoubleSpinBoxconnectNotifyProc](cast[pointer](slot))
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal)


  nimfunc[](slotval1)
proc QDoubleSpinBoxdisconnectNotify*(self: gen_qspinbox_types.QDoubleSpinBox, signal: gen_qmetaobject_types.QMetaMethod): void =
  fQDoubleSpinBox_virtualbase_disconnectNotify(self.h, signal.h)

type QDoubleSpinBoxdisconnectNotifyProc* = proc(signal: gen_qmetaobject_types.QMetaMethod): void
proc ondisconnectNotify*(self: gen_qspinbox_types.QDoubleSpinBox, slot: QDoubleSpinBoxdisconnectNotifyProc) =
  # TODO check subclass
  var tmp = new QDoubleSpinBoxdisconnectNotifyProc
  tmp[] = slot
  GC_ref(tmp)
  fcQDoubleSpinBox_override_virtual_disconnectNotify(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QDoubleSpinBox_disconnectNotify(self: ptr cQDoubleSpinBox, slot: int, signal: pointer): void {.exportc: "miqt_exec_callback_QDoubleSpinBox_disconnectNotify ".} =
  var nimfunc = cast[ptr QDoubleSpinBoxdisconnectNotifyProc](cast[pointer](slot))
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal)


  nimfunc[](slotval1)
proc staticMetaObject*(_: type gen_qspinbox_types.QDoubleSpinBox): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQDoubleSpinBox_staticMetaObject())
proc delete*(self: gen_qspinbox_types.QDoubleSpinBox) =
  fcQDoubleSpinBox_delete(self.h)
