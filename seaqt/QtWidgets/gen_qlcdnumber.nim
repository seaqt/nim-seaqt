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
{.compile("gen_qlcdnumber.cpp", cflags).}


type QLCDNumberModeEnum* = distinct cint
template Hex*(_: type QLCDNumberModeEnum): untyped = 0
template Dec*(_: type QLCDNumberModeEnum): untyped = 1
template Oct*(_: type QLCDNumberModeEnum): untyped = 2
template Bin*(_: type QLCDNumberModeEnum): untyped = 3


type QLCDNumberSegmentStyleEnum* = distinct cint
template Outline*(_: type QLCDNumberSegmentStyleEnum): untyped = 0
template Filled*(_: type QLCDNumberSegmentStyleEnum): untyped = 1
template Flat*(_: type QLCDNumberSegmentStyleEnum): untyped = 2


import ./gen_qlcdnumber_types
export gen_qlcdnumber_types

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
  ./gen_qframe,
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
  gen_qframe,
  gen_qstyleoption_types,
  gen_qwidget_types

type cQLCDNumber*{.exportc: "QLCDNumber", incompleteStruct.} = object

proc fcQLCDNumber_new(parent: pointer): ptr cQLCDNumber {.importc: "QLCDNumber_new".}
proc fcQLCDNumber_new2(): ptr cQLCDNumber {.importc: "QLCDNumber_new2".}
proc fcQLCDNumber_new3(numDigits: cuint): ptr cQLCDNumber {.importc: "QLCDNumber_new3".}
proc fcQLCDNumber_new4(numDigits: cuint, parent: pointer): ptr cQLCDNumber {.importc: "QLCDNumber_new4".}
proc fcQLCDNumber_metaObject(self: pointer, ): pointer {.importc: "QLCDNumber_metaObject".}
proc fcQLCDNumber_metacast(self: pointer, param1: cstring): pointer {.importc: "QLCDNumber_metacast".}
proc fcQLCDNumber_tr(s: cstring): struct_miqt_string {.importc: "QLCDNumber_tr".}
proc fcQLCDNumber_smallDecimalPoint(self: pointer, ): bool {.importc: "QLCDNumber_smallDecimalPoint".}
proc fcQLCDNumber_digitCount(self: pointer, ): cint {.importc: "QLCDNumber_digitCount".}
proc fcQLCDNumber_setDigitCount(self: pointer, nDigits: cint): void {.importc: "QLCDNumber_setDigitCount".}
proc fcQLCDNumber_checkOverflow(self: pointer, num: float64): bool {.importc: "QLCDNumber_checkOverflow".}
proc fcQLCDNumber_checkOverflowWithNum(self: pointer, num: cint): bool {.importc: "QLCDNumber_checkOverflowWithNum".}
proc fcQLCDNumber_mode(self: pointer, ): cint {.importc: "QLCDNumber_mode".}
proc fcQLCDNumber_setMode(self: pointer, mode: cint): void {.importc: "QLCDNumber_setMode".}
proc fcQLCDNumber_segmentStyle(self: pointer, ): cint {.importc: "QLCDNumber_segmentStyle".}
proc fcQLCDNumber_setSegmentStyle(self: pointer, segmentStyle: cint): void {.importc: "QLCDNumber_setSegmentStyle".}
proc fcQLCDNumber_value(self: pointer, ): float64 {.importc: "QLCDNumber_value".}
proc fcQLCDNumber_intValue(self: pointer, ): cint {.importc: "QLCDNumber_intValue".}
proc fcQLCDNumber_sizeHint(self: pointer, ): pointer {.importc: "QLCDNumber_sizeHint".}
proc fcQLCDNumber_display(self: pointer, str: struct_miqt_string): void {.importc: "QLCDNumber_display".}
proc fcQLCDNumber_displayWithNum(self: pointer, num: cint): void {.importc: "QLCDNumber_displayWithNum".}
proc fcQLCDNumber_display2(self: pointer, num: float64): void {.importc: "QLCDNumber_display2".}
proc fcQLCDNumber_setHexMode(self: pointer, ): void {.importc: "QLCDNumber_setHexMode".}
proc fcQLCDNumber_setDecMode(self: pointer, ): void {.importc: "QLCDNumber_setDecMode".}
proc fcQLCDNumber_setOctMode(self: pointer, ): void {.importc: "QLCDNumber_setOctMode".}
proc fcQLCDNumber_setBinMode(self: pointer, ): void {.importc: "QLCDNumber_setBinMode".}
proc fcQLCDNumber_setSmallDecimalPoint(self: pointer, smallDecimalPoint: bool): void {.importc: "QLCDNumber_setSmallDecimalPoint".}
proc fcQLCDNumber_overflow(self: pointer, ): void {.importc: "QLCDNumber_overflow".}
proc fcQLCDNumber_connect_overflow(self: pointer, slot: int) {.importc: "QLCDNumber_connect_overflow".}
proc fcQLCDNumber_tr2(s: cstring, c: cstring): struct_miqt_string {.importc: "QLCDNumber_tr2".}
proc fcQLCDNumber_tr3(s: cstring, c: cstring, n: cint): struct_miqt_string {.importc: "QLCDNumber_tr3".}
proc fQLCDNumber_virtualbase_sizeHint(self: pointer, ): pointer{.importc: "QLCDNumber_virtualbase_sizeHint".}
proc fcQLCDNumber_override_virtual_sizeHint(self: pointer, slot: int) {.importc: "QLCDNumber_override_virtual_sizeHint".}
proc fQLCDNumber_virtualbase_event(self: pointer, e: pointer): bool{.importc: "QLCDNumber_virtualbase_event".}
proc fcQLCDNumber_override_virtual_event(self: pointer, slot: int) {.importc: "QLCDNumber_override_virtual_event".}
proc fQLCDNumber_virtualbase_paintEvent(self: pointer, param1: pointer): void{.importc: "QLCDNumber_virtualbase_paintEvent".}
proc fcQLCDNumber_override_virtual_paintEvent(self: pointer, slot: int) {.importc: "QLCDNumber_override_virtual_paintEvent".}
proc fQLCDNumber_virtualbase_changeEvent(self: pointer, param1: pointer): void{.importc: "QLCDNumber_virtualbase_changeEvent".}
proc fcQLCDNumber_override_virtual_changeEvent(self: pointer, slot: int) {.importc: "QLCDNumber_override_virtual_changeEvent".}
proc fQLCDNumber_virtualbase_initStyleOption(self: pointer, option: pointer): void{.importc: "QLCDNumber_virtualbase_initStyleOption".}
proc fcQLCDNumber_override_virtual_initStyleOption(self: pointer, slot: int) {.importc: "QLCDNumber_override_virtual_initStyleOption".}
proc fQLCDNumber_virtualbase_devType(self: pointer, ): cint{.importc: "QLCDNumber_virtualbase_devType".}
proc fcQLCDNumber_override_virtual_devType(self: pointer, slot: int) {.importc: "QLCDNumber_override_virtual_devType".}
proc fQLCDNumber_virtualbase_setVisible(self: pointer, visible: bool): void{.importc: "QLCDNumber_virtualbase_setVisible".}
proc fcQLCDNumber_override_virtual_setVisible(self: pointer, slot: int) {.importc: "QLCDNumber_override_virtual_setVisible".}
proc fQLCDNumber_virtualbase_minimumSizeHint(self: pointer, ): pointer{.importc: "QLCDNumber_virtualbase_minimumSizeHint".}
proc fcQLCDNumber_override_virtual_minimumSizeHint(self: pointer, slot: int) {.importc: "QLCDNumber_override_virtual_minimumSizeHint".}
proc fQLCDNumber_virtualbase_heightForWidth(self: pointer, param1: cint): cint{.importc: "QLCDNumber_virtualbase_heightForWidth".}
proc fcQLCDNumber_override_virtual_heightForWidth(self: pointer, slot: int) {.importc: "QLCDNumber_override_virtual_heightForWidth".}
proc fQLCDNumber_virtualbase_hasHeightForWidth(self: pointer, ): bool{.importc: "QLCDNumber_virtualbase_hasHeightForWidth".}
proc fcQLCDNumber_override_virtual_hasHeightForWidth(self: pointer, slot: int) {.importc: "QLCDNumber_override_virtual_hasHeightForWidth".}
proc fQLCDNumber_virtualbase_paintEngine(self: pointer, ): pointer{.importc: "QLCDNumber_virtualbase_paintEngine".}
proc fcQLCDNumber_override_virtual_paintEngine(self: pointer, slot: int) {.importc: "QLCDNumber_override_virtual_paintEngine".}
proc fQLCDNumber_virtualbase_mousePressEvent(self: pointer, event: pointer): void{.importc: "QLCDNumber_virtualbase_mousePressEvent".}
proc fcQLCDNumber_override_virtual_mousePressEvent(self: pointer, slot: int) {.importc: "QLCDNumber_override_virtual_mousePressEvent".}
proc fQLCDNumber_virtualbase_mouseReleaseEvent(self: pointer, event: pointer): void{.importc: "QLCDNumber_virtualbase_mouseReleaseEvent".}
proc fcQLCDNumber_override_virtual_mouseReleaseEvent(self: pointer, slot: int) {.importc: "QLCDNumber_override_virtual_mouseReleaseEvent".}
proc fQLCDNumber_virtualbase_mouseDoubleClickEvent(self: pointer, event: pointer): void{.importc: "QLCDNumber_virtualbase_mouseDoubleClickEvent".}
proc fcQLCDNumber_override_virtual_mouseDoubleClickEvent(self: pointer, slot: int) {.importc: "QLCDNumber_override_virtual_mouseDoubleClickEvent".}
proc fQLCDNumber_virtualbase_mouseMoveEvent(self: pointer, event: pointer): void{.importc: "QLCDNumber_virtualbase_mouseMoveEvent".}
proc fcQLCDNumber_override_virtual_mouseMoveEvent(self: pointer, slot: int) {.importc: "QLCDNumber_override_virtual_mouseMoveEvent".}
proc fQLCDNumber_virtualbase_wheelEvent(self: pointer, event: pointer): void{.importc: "QLCDNumber_virtualbase_wheelEvent".}
proc fcQLCDNumber_override_virtual_wheelEvent(self: pointer, slot: int) {.importc: "QLCDNumber_override_virtual_wheelEvent".}
proc fQLCDNumber_virtualbase_keyPressEvent(self: pointer, event: pointer): void{.importc: "QLCDNumber_virtualbase_keyPressEvent".}
proc fcQLCDNumber_override_virtual_keyPressEvent(self: pointer, slot: int) {.importc: "QLCDNumber_override_virtual_keyPressEvent".}
proc fQLCDNumber_virtualbase_keyReleaseEvent(self: pointer, event: pointer): void{.importc: "QLCDNumber_virtualbase_keyReleaseEvent".}
proc fcQLCDNumber_override_virtual_keyReleaseEvent(self: pointer, slot: int) {.importc: "QLCDNumber_override_virtual_keyReleaseEvent".}
proc fQLCDNumber_virtualbase_focusInEvent(self: pointer, event: pointer): void{.importc: "QLCDNumber_virtualbase_focusInEvent".}
proc fcQLCDNumber_override_virtual_focusInEvent(self: pointer, slot: int) {.importc: "QLCDNumber_override_virtual_focusInEvent".}
proc fQLCDNumber_virtualbase_focusOutEvent(self: pointer, event: pointer): void{.importc: "QLCDNumber_virtualbase_focusOutEvent".}
proc fcQLCDNumber_override_virtual_focusOutEvent(self: pointer, slot: int) {.importc: "QLCDNumber_override_virtual_focusOutEvent".}
proc fQLCDNumber_virtualbase_enterEvent(self: pointer, event: pointer): void{.importc: "QLCDNumber_virtualbase_enterEvent".}
proc fcQLCDNumber_override_virtual_enterEvent(self: pointer, slot: int) {.importc: "QLCDNumber_override_virtual_enterEvent".}
proc fQLCDNumber_virtualbase_leaveEvent(self: pointer, event: pointer): void{.importc: "QLCDNumber_virtualbase_leaveEvent".}
proc fcQLCDNumber_override_virtual_leaveEvent(self: pointer, slot: int) {.importc: "QLCDNumber_override_virtual_leaveEvent".}
proc fQLCDNumber_virtualbase_moveEvent(self: pointer, event: pointer): void{.importc: "QLCDNumber_virtualbase_moveEvent".}
proc fcQLCDNumber_override_virtual_moveEvent(self: pointer, slot: int) {.importc: "QLCDNumber_override_virtual_moveEvent".}
proc fQLCDNumber_virtualbase_resizeEvent(self: pointer, event: pointer): void{.importc: "QLCDNumber_virtualbase_resizeEvent".}
proc fcQLCDNumber_override_virtual_resizeEvent(self: pointer, slot: int) {.importc: "QLCDNumber_override_virtual_resizeEvent".}
proc fQLCDNumber_virtualbase_closeEvent(self: pointer, event: pointer): void{.importc: "QLCDNumber_virtualbase_closeEvent".}
proc fcQLCDNumber_override_virtual_closeEvent(self: pointer, slot: int) {.importc: "QLCDNumber_override_virtual_closeEvent".}
proc fQLCDNumber_virtualbase_contextMenuEvent(self: pointer, event: pointer): void{.importc: "QLCDNumber_virtualbase_contextMenuEvent".}
proc fcQLCDNumber_override_virtual_contextMenuEvent(self: pointer, slot: int) {.importc: "QLCDNumber_override_virtual_contextMenuEvent".}
proc fQLCDNumber_virtualbase_tabletEvent(self: pointer, event: pointer): void{.importc: "QLCDNumber_virtualbase_tabletEvent".}
proc fcQLCDNumber_override_virtual_tabletEvent(self: pointer, slot: int) {.importc: "QLCDNumber_override_virtual_tabletEvent".}
proc fQLCDNumber_virtualbase_actionEvent(self: pointer, event: pointer): void{.importc: "QLCDNumber_virtualbase_actionEvent".}
proc fcQLCDNumber_override_virtual_actionEvent(self: pointer, slot: int) {.importc: "QLCDNumber_override_virtual_actionEvent".}
proc fQLCDNumber_virtualbase_dragEnterEvent(self: pointer, event: pointer): void{.importc: "QLCDNumber_virtualbase_dragEnterEvent".}
proc fcQLCDNumber_override_virtual_dragEnterEvent(self: pointer, slot: int) {.importc: "QLCDNumber_override_virtual_dragEnterEvent".}
proc fQLCDNumber_virtualbase_dragMoveEvent(self: pointer, event: pointer): void{.importc: "QLCDNumber_virtualbase_dragMoveEvent".}
proc fcQLCDNumber_override_virtual_dragMoveEvent(self: pointer, slot: int) {.importc: "QLCDNumber_override_virtual_dragMoveEvent".}
proc fQLCDNumber_virtualbase_dragLeaveEvent(self: pointer, event: pointer): void{.importc: "QLCDNumber_virtualbase_dragLeaveEvent".}
proc fcQLCDNumber_override_virtual_dragLeaveEvent(self: pointer, slot: int) {.importc: "QLCDNumber_override_virtual_dragLeaveEvent".}
proc fQLCDNumber_virtualbase_dropEvent(self: pointer, event: pointer): void{.importc: "QLCDNumber_virtualbase_dropEvent".}
proc fcQLCDNumber_override_virtual_dropEvent(self: pointer, slot: int) {.importc: "QLCDNumber_override_virtual_dropEvent".}
proc fQLCDNumber_virtualbase_showEvent(self: pointer, event: pointer): void{.importc: "QLCDNumber_virtualbase_showEvent".}
proc fcQLCDNumber_override_virtual_showEvent(self: pointer, slot: int) {.importc: "QLCDNumber_override_virtual_showEvent".}
proc fQLCDNumber_virtualbase_hideEvent(self: pointer, event: pointer): void{.importc: "QLCDNumber_virtualbase_hideEvent".}
proc fcQLCDNumber_override_virtual_hideEvent(self: pointer, slot: int) {.importc: "QLCDNumber_override_virtual_hideEvent".}
proc fQLCDNumber_virtualbase_nativeEvent(self: pointer, eventType: struct_miqt_string, message: pointer, resultVal: ptr uint): bool{.importc: "QLCDNumber_virtualbase_nativeEvent".}
proc fcQLCDNumber_override_virtual_nativeEvent(self: pointer, slot: int) {.importc: "QLCDNumber_override_virtual_nativeEvent".}
proc fQLCDNumber_virtualbase_metric(self: pointer, param1: cint): cint{.importc: "QLCDNumber_virtualbase_metric".}
proc fcQLCDNumber_override_virtual_metric(self: pointer, slot: int) {.importc: "QLCDNumber_override_virtual_metric".}
proc fQLCDNumber_virtualbase_initPainter(self: pointer, painter: pointer): void{.importc: "QLCDNumber_virtualbase_initPainter".}
proc fcQLCDNumber_override_virtual_initPainter(self: pointer, slot: int) {.importc: "QLCDNumber_override_virtual_initPainter".}
proc fQLCDNumber_virtualbase_redirected(self: pointer, offset: pointer): pointer{.importc: "QLCDNumber_virtualbase_redirected".}
proc fcQLCDNumber_override_virtual_redirected(self: pointer, slot: int) {.importc: "QLCDNumber_override_virtual_redirected".}
proc fQLCDNumber_virtualbase_sharedPainter(self: pointer, ): pointer{.importc: "QLCDNumber_virtualbase_sharedPainter".}
proc fcQLCDNumber_override_virtual_sharedPainter(self: pointer, slot: int) {.importc: "QLCDNumber_override_virtual_sharedPainter".}
proc fQLCDNumber_virtualbase_inputMethodEvent(self: pointer, param1: pointer): void{.importc: "QLCDNumber_virtualbase_inputMethodEvent".}
proc fcQLCDNumber_override_virtual_inputMethodEvent(self: pointer, slot: int) {.importc: "QLCDNumber_override_virtual_inputMethodEvent".}
proc fQLCDNumber_virtualbase_inputMethodQuery(self: pointer, param1: cint): pointer{.importc: "QLCDNumber_virtualbase_inputMethodQuery".}
proc fcQLCDNumber_override_virtual_inputMethodQuery(self: pointer, slot: int) {.importc: "QLCDNumber_override_virtual_inputMethodQuery".}
proc fQLCDNumber_virtualbase_focusNextPrevChild(self: pointer, next: bool): bool{.importc: "QLCDNumber_virtualbase_focusNextPrevChild".}
proc fcQLCDNumber_override_virtual_focusNextPrevChild(self: pointer, slot: int) {.importc: "QLCDNumber_override_virtual_focusNextPrevChild".}
proc fQLCDNumber_virtualbase_eventFilter(self: pointer, watched: pointer, event: pointer): bool{.importc: "QLCDNumber_virtualbase_eventFilter".}
proc fcQLCDNumber_override_virtual_eventFilter(self: pointer, slot: int) {.importc: "QLCDNumber_override_virtual_eventFilter".}
proc fQLCDNumber_virtualbase_timerEvent(self: pointer, event: pointer): void{.importc: "QLCDNumber_virtualbase_timerEvent".}
proc fcQLCDNumber_override_virtual_timerEvent(self: pointer, slot: int) {.importc: "QLCDNumber_override_virtual_timerEvent".}
proc fQLCDNumber_virtualbase_childEvent(self: pointer, event: pointer): void{.importc: "QLCDNumber_virtualbase_childEvent".}
proc fcQLCDNumber_override_virtual_childEvent(self: pointer, slot: int) {.importc: "QLCDNumber_override_virtual_childEvent".}
proc fQLCDNumber_virtualbase_customEvent(self: pointer, event: pointer): void{.importc: "QLCDNumber_virtualbase_customEvent".}
proc fcQLCDNumber_override_virtual_customEvent(self: pointer, slot: int) {.importc: "QLCDNumber_override_virtual_customEvent".}
proc fQLCDNumber_virtualbase_connectNotify(self: pointer, signal: pointer): void{.importc: "QLCDNumber_virtualbase_connectNotify".}
proc fcQLCDNumber_override_virtual_connectNotify(self: pointer, slot: int) {.importc: "QLCDNumber_override_virtual_connectNotify".}
proc fQLCDNumber_virtualbase_disconnectNotify(self: pointer, signal: pointer): void{.importc: "QLCDNumber_virtualbase_disconnectNotify".}
proc fcQLCDNumber_override_virtual_disconnectNotify(self: pointer, slot: int) {.importc: "QLCDNumber_override_virtual_disconnectNotify".}
proc fcQLCDNumber_delete(self: pointer) {.importc: "QLCDNumber_delete".}


func init*(T: type gen_qlcdnumber_types.QLCDNumber, h: ptr cQLCDNumber): gen_qlcdnumber_types.QLCDNumber =
  T(h: h)
proc create*(T: type gen_qlcdnumber_types.QLCDNumber, parent: gen_qwidget_types.QWidget): gen_qlcdnumber_types.QLCDNumber =
  gen_qlcdnumber_types.QLCDNumber.init(fcQLCDNumber_new(parent.h))

proc create*(T: type gen_qlcdnumber_types.QLCDNumber, ): gen_qlcdnumber_types.QLCDNumber =
  gen_qlcdnumber_types.QLCDNumber.init(fcQLCDNumber_new2())

proc create*(T: type gen_qlcdnumber_types.QLCDNumber, numDigits: cuint): gen_qlcdnumber_types.QLCDNumber =
  gen_qlcdnumber_types.QLCDNumber.init(fcQLCDNumber_new3(numDigits))

proc create*(T: type gen_qlcdnumber_types.QLCDNumber, numDigits: cuint, parent: gen_qwidget_types.QWidget): gen_qlcdnumber_types.QLCDNumber =
  gen_qlcdnumber_types.QLCDNumber.init(fcQLCDNumber_new4(numDigits, parent.h))

proc metaObject*(self: gen_qlcdnumber_types.QLCDNumber, ): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQLCDNumber_metaObject(self.h))

proc metacast*(self: gen_qlcdnumber_types.QLCDNumber, param1: cstring): pointer =
  fcQLCDNumber_metacast(self.h, param1)

proc tr*(_: type gen_qlcdnumber_types.QLCDNumber, s: cstring): string =
  let v_ms = fcQLCDNumber_tr(s)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc smallDecimalPoint*(self: gen_qlcdnumber_types.QLCDNumber, ): bool =
  fcQLCDNumber_smallDecimalPoint(self.h)

proc digitCount*(self: gen_qlcdnumber_types.QLCDNumber, ): cint =
  fcQLCDNumber_digitCount(self.h)

proc setDigitCount*(self: gen_qlcdnumber_types.QLCDNumber, nDigits: cint): void =
  fcQLCDNumber_setDigitCount(self.h, nDigits)

proc checkOverflow*(self: gen_qlcdnumber_types.QLCDNumber, num: float64): bool =
  fcQLCDNumber_checkOverflow(self.h, num)

proc checkOverflow*(self: gen_qlcdnumber_types.QLCDNumber, num: cint): bool =
  fcQLCDNumber_checkOverflowWithNum(self.h, num)

proc mode*(self: gen_qlcdnumber_types.QLCDNumber, ): cint =
  cint(fcQLCDNumber_mode(self.h))

proc setMode*(self: gen_qlcdnumber_types.QLCDNumber, mode: cint): void =
  fcQLCDNumber_setMode(self.h, cint(mode))

proc segmentStyle*(self: gen_qlcdnumber_types.QLCDNumber, ): cint =
  cint(fcQLCDNumber_segmentStyle(self.h))

proc setSegmentStyle*(self: gen_qlcdnumber_types.QLCDNumber, segmentStyle: cint): void =
  fcQLCDNumber_setSegmentStyle(self.h, cint(segmentStyle))

proc value*(self: gen_qlcdnumber_types.QLCDNumber, ): float64 =
  fcQLCDNumber_value(self.h)

proc intValue*(self: gen_qlcdnumber_types.QLCDNumber, ): cint =
  fcQLCDNumber_intValue(self.h)

proc sizeHint*(self: gen_qlcdnumber_types.QLCDNumber, ): gen_qsize_types.QSize =
  gen_qsize_types.QSize(h: fcQLCDNumber_sizeHint(self.h))

proc display*(self: gen_qlcdnumber_types.QLCDNumber, str: string): void =
  fcQLCDNumber_display(self.h, struct_miqt_string(data: str, len: csize_t(len(str))))

proc display*(self: gen_qlcdnumber_types.QLCDNumber, num: cint): void =
  fcQLCDNumber_displayWithNum(self.h, num)

proc display*(self: gen_qlcdnumber_types.QLCDNumber, num: float64): void =
  fcQLCDNumber_display2(self.h, num)

proc setHexMode*(self: gen_qlcdnumber_types.QLCDNumber, ): void =
  fcQLCDNumber_setHexMode(self.h)

proc setDecMode*(self: gen_qlcdnumber_types.QLCDNumber, ): void =
  fcQLCDNumber_setDecMode(self.h)

proc setOctMode*(self: gen_qlcdnumber_types.QLCDNumber, ): void =
  fcQLCDNumber_setOctMode(self.h)

proc setBinMode*(self: gen_qlcdnumber_types.QLCDNumber, ): void =
  fcQLCDNumber_setBinMode(self.h)

proc setSmallDecimalPoint*(self: gen_qlcdnumber_types.QLCDNumber, smallDecimalPoint: bool): void =
  fcQLCDNumber_setSmallDecimalPoint(self.h, smallDecimalPoint)

proc overflow*(self: gen_qlcdnumber_types.QLCDNumber, ): void =
  fcQLCDNumber_overflow(self.h)

type QLCDNumberoverflowSlot* = proc()
proc miqt_exec_callback_QLCDNumber_overflow(slot: int) {.exportc.} =
  let nimfunc = cast[ptr QLCDNumberoverflowSlot](cast[pointer](slot))
  nimfunc[]()

proc onoverflow*(self: gen_qlcdnumber_types.QLCDNumber, slot: QLCDNumberoverflowSlot) =
  var tmp = new QLCDNumberoverflowSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQLCDNumber_connect_overflow(self.h, cast[int](addr tmp[]))

proc tr*(_: type gen_qlcdnumber_types.QLCDNumber, s: cstring, c: cstring): string =
  let v_ms = fcQLCDNumber_tr2(s, c)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc tr*(_: type gen_qlcdnumber_types.QLCDNumber, s: cstring, c: cstring, n: cint): string =
  let v_ms = fcQLCDNumber_tr3(s, c, n)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc QLCDNumbersizeHint*(self: gen_qlcdnumber_types.QLCDNumber, ): gen_qsize_types.QSize =
  gen_qsize_types.QSize(h: fQLCDNumber_virtualbase_sizeHint(self.h))

type QLCDNumbersizeHintProc* = proc(): gen_qsize_types.QSize
proc onsizeHint*(self: gen_qlcdnumber_types.QLCDNumber, slot: QLCDNumbersizeHintProc) =
  # TODO check subclass
  var tmp = new QLCDNumbersizeHintProc
  tmp[] = slot
  GC_ref(tmp)
  fcQLCDNumber_override_virtual_sizeHint(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QLCDNumber_sizeHint(self: ptr cQLCDNumber, slot: int): pointer {.exportc: "miqt_exec_callback_QLCDNumber_sizeHint ".} =
  var nimfunc = cast[ptr QLCDNumbersizeHintProc](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )

  virtualReturn.h
proc QLCDNumberevent*(self: gen_qlcdnumber_types.QLCDNumber, e: gen_qcoreevent_types.QEvent): bool =
  fQLCDNumber_virtualbase_event(self.h, e.h)

type QLCDNumbereventProc* = proc(e: gen_qcoreevent_types.QEvent): bool
proc onevent*(self: gen_qlcdnumber_types.QLCDNumber, slot: QLCDNumbereventProc) =
  # TODO check subclass
  var tmp = new QLCDNumbereventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQLCDNumber_override_virtual_event(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QLCDNumber_event(self: ptr cQLCDNumber, slot: int, e: pointer): bool {.exportc: "miqt_exec_callback_QLCDNumber_event ".} =
  var nimfunc = cast[ptr QLCDNumbereventProc](cast[pointer](slot))
  let slotval1 = gen_qcoreevent_types.QEvent(h: e)


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn
proc QLCDNumberpaintEvent*(self: gen_qlcdnumber_types.QLCDNumber, param1: gen_qevent_types.QPaintEvent): void =
  fQLCDNumber_virtualbase_paintEvent(self.h, param1.h)

type QLCDNumberpaintEventProc* = proc(param1: gen_qevent_types.QPaintEvent): void
proc onpaintEvent*(self: gen_qlcdnumber_types.QLCDNumber, slot: QLCDNumberpaintEventProc) =
  # TODO check subclass
  var tmp = new QLCDNumberpaintEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQLCDNumber_override_virtual_paintEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QLCDNumber_paintEvent(self: ptr cQLCDNumber, slot: int, param1: pointer): void {.exportc: "miqt_exec_callback_QLCDNumber_paintEvent ".} =
  var nimfunc = cast[ptr QLCDNumberpaintEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QPaintEvent(h: param1)


  nimfunc[](slotval1)
proc QLCDNumberchangeEvent*(self: gen_qlcdnumber_types.QLCDNumber, param1: gen_qcoreevent_types.QEvent): void =
  fQLCDNumber_virtualbase_changeEvent(self.h, param1.h)

type QLCDNumberchangeEventProc* = proc(param1: gen_qcoreevent_types.QEvent): void
proc onchangeEvent*(self: gen_qlcdnumber_types.QLCDNumber, slot: QLCDNumberchangeEventProc) =
  # TODO check subclass
  var tmp = new QLCDNumberchangeEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQLCDNumber_override_virtual_changeEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QLCDNumber_changeEvent(self: ptr cQLCDNumber, slot: int, param1: pointer): void {.exportc: "miqt_exec_callback_QLCDNumber_changeEvent ".} =
  var nimfunc = cast[ptr QLCDNumberchangeEventProc](cast[pointer](slot))
  let slotval1 = gen_qcoreevent_types.QEvent(h: param1)


  nimfunc[](slotval1)
proc QLCDNumberinitStyleOption*(self: gen_qlcdnumber_types.QLCDNumber, option: gen_qstyleoption_types.QStyleOptionFrame): void =
  fQLCDNumber_virtualbase_initStyleOption(self.h, option.h)

type QLCDNumberinitStyleOptionProc* = proc(option: gen_qstyleoption_types.QStyleOptionFrame): void
proc oninitStyleOption*(self: gen_qlcdnumber_types.QLCDNumber, slot: QLCDNumberinitStyleOptionProc) =
  # TODO check subclass
  var tmp = new QLCDNumberinitStyleOptionProc
  tmp[] = slot
  GC_ref(tmp)
  fcQLCDNumber_override_virtual_initStyleOption(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QLCDNumber_initStyleOption(self: ptr cQLCDNumber, slot: int, option: pointer): void {.exportc: "miqt_exec_callback_QLCDNumber_initStyleOption ".} =
  var nimfunc = cast[ptr QLCDNumberinitStyleOptionProc](cast[pointer](slot))
  let slotval1 = gen_qstyleoption_types.QStyleOptionFrame(h: option)


  nimfunc[](slotval1)
proc QLCDNumberdevType*(self: gen_qlcdnumber_types.QLCDNumber, ): cint =
  fQLCDNumber_virtualbase_devType(self.h)

type QLCDNumberdevTypeProc* = proc(): cint
proc ondevType*(self: gen_qlcdnumber_types.QLCDNumber, slot: QLCDNumberdevTypeProc) =
  # TODO check subclass
  var tmp = new QLCDNumberdevTypeProc
  tmp[] = slot
  GC_ref(tmp)
  fcQLCDNumber_override_virtual_devType(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QLCDNumber_devType(self: ptr cQLCDNumber, slot: int): cint {.exportc: "miqt_exec_callback_QLCDNumber_devType ".} =
  var nimfunc = cast[ptr QLCDNumberdevTypeProc](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )

  virtualReturn
proc QLCDNumbersetVisible*(self: gen_qlcdnumber_types.QLCDNumber, visible: bool): void =
  fQLCDNumber_virtualbase_setVisible(self.h, visible)

type QLCDNumbersetVisibleProc* = proc(visible: bool): void
proc onsetVisible*(self: gen_qlcdnumber_types.QLCDNumber, slot: QLCDNumbersetVisibleProc) =
  # TODO check subclass
  var tmp = new QLCDNumbersetVisibleProc
  tmp[] = slot
  GC_ref(tmp)
  fcQLCDNumber_override_virtual_setVisible(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QLCDNumber_setVisible(self: ptr cQLCDNumber, slot: int, visible: bool): void {.exportc: "miqt_exec_callback_QLCDNumber_setVisible ".} =
  var nimfunc = cast[ptr QLCDNumbersetVisibleProc](cast[pointer](slot))
  let slotval1 = visible


  nimfunc[](slotval1)
proc QLCDNumberminimumSizeHint*(self: gen_qlcdnumber_types.QLCDNumber, ): gen_qsize_types.QSize =
  gen_qsize_types.QSize(h: fQLCDNumber_virtualbase_minimumSizeHint(self.h))

type QLCDNumberminimumSizeHintProc* = proc(): gen_qsize_types.QSize
proc onminimumSizeHint*(self: gen_qlcdnumber_types.QLCDNumber, slot: QLCDNumberminimumSizeHintProc) =
  # TODO check subclass
  var tmp = new QLCDNumberminimumSizeHintProc
  tmp[] = slot
  GC_ref(tmp)
  fcQLCDNumber_override_virtual_minimumSizeHint(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QLCDNumber_minimumSizeHint(self: ptr cQLCDNumber, slot: int): pointer {.exportc: "miqt_exec_callback_QLCDNumber_minimumSizeHint ".} =
  var nimfunc = cast[ptr QLCDNumberminimumSizeHintProc](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )

  virtualReturn.h
proc QLCDNumberheightForWidth*(self: gen_qlcdnumber_types.QLCDNumber, param1: cint): cint =
  fQLCDNumber_virtualbase_heightForWidth(self.h, param1)

type QLCDNumberheightForWidthProc* = proc(param1: cint): cint
proc onheightForWidth*(self: gen_qlcdnumber_types.QLCDNumber, slot: QLCDNumberheightForWidthProc) =
  # TODO check subclass
  var tmp = new QLCDNumberheightForWidthProc
  tmp[] = slot
  GC_ref(tmp)
  fcQLCDNumber_override_virtual_heightForWidth(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QLCDNumber_heightForWidth(self: ptr cQLCDNumber, slot: int, param1: cint): cint {.exportc: "miqt_exec_callback_QLCDNumber_heightForWidth ".} =
  var nimfunc = cast[ptr QLCDNumberheightForWidthProc](cast[pointer](slot))
  let slotval1 = param1


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn
proc QLCDNumberhasHeightForWidth*(self: gen_qlcdnumber_types.QLCDNumber, ): bool =
  fQLCDNumber_virtualbase_hasHeightForWidth(self.h)

type QLCDNumberhasHeightForWidthProc* = proc(): bool
proc onhasHeightForWidth*(self: gen_qlcdnumber_types.QLCDNumber, slot: QLCDNumberhasHeightForWidthProc) =
  # TODO check subclass
  var tmp = new QLCDNumberhasHeightForWidthProc
  tmp[] = slot
  GC_ref(tmp)
  fcQLCDNumber_override_virtual_hasHeightForWidth(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QLCDNumber_hasHeightForWidth(self: ptr cQLCDNumber, slot: int): bool {.exportc: "miqt_exec_callback_QLCDNumber_hasHeightForWidth ".} =
  var nimfunc = cast[ptr QLCDNumberhasHeightForWidthProc](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )

  virtualReturn
proc QLCDNumberpaintEngine*(self: gen_qlcdnumber_types.QLCDNumber, ): gen_qpaintengine_types.QPaintEngine =
  gen_qpaintengine_types.QPaintEngine(h: fQLCDNumber_virtualbase_paintEngine(self.h))

type QLCDNumberpaintEngineProc* = proc(): gen_qpaintengine_types.QPaintEngine
proc onpaintEngine*(self: gen_qlcdnumber_types.QLCDNumber, slot: QLCDNumberpaintEngineProc) =
  # TODO check subclass
  var tmp = new QLCDNumberpaintEngineProc
  tmp[] = slot
  GC_ref(tmp)
  fcQLCDNumber_override_virtual_paintEngine(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QLCDNumber_paintEngine(self: ptr cQLCDNumber, slot: int): pointer {.exportc: "miqt_exec_callback_QLCDNumber_paintEngine ".} =
  var nimfunc = cast[ptr QLCDNumberpaintEngineProc](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )

  virtualReturn.h
proc QLCDNumbermousePressEvent*(self: gen_qlcdnumber_types.QLCDNumber, event: gen_qevent_types.QMouseEvent): void =
  fQLCDNumber_virtualbase_mousePressEvent(self.h, event.h)

type QLCDNumbermousePressEventProc* = proc(event: gen_qevent_types.QMouseEvent): void
proc onmousePressEvent*(self: gen_qlcdnumber_types.QLCDNumber, slot: QLCDNumbermousePressEventProc) =
  # TODO check subclass
  var tmp = new QLCDNumbermousePressEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQLCDNumber_override_virtual_mousePressEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QLCDNumber_mousePressEvent(self: ptr cQLCDNumber, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QLCDNumber_mousePressEvent ".} =
  var nimfunc = cast[ptr QLCDNumbermousePressEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QMouseEvent(h: event)


  nimfunc[](slotval1)
proc QLCDNumbermouseReleaseEvent*(self: gen_qlcdnumber_types.QLCDNumber, event: gen_qevent_types.QMouseEvent): void =
  fQLCDNumber_virtualbase_mouseReleaseEvent(self.h, event.h)

type QLCDNumbermouseReleaseEventProc* = proc(event: gen_qevent_types.QMouseEvent): void
proc onmouseReleaseEvent*(self: gen_qlcdnumber_types.QLCDNumber, slot: QLCDNumbermouseReleaseEventProc) =
  # TODO check subclass
  var tmp = new QLCDNumbermouseReleaseEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQLCDNumber_override_virtual_mouseReleaseEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QLCDNumber_mouseReleaseEvent(self: ptr cQLCDNumber, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QLCDNumber_mouseReleaseEvent ".} =
  var nimfunc = cast[ptr QLCDNumbermouseReleaseEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QMouseEvent(h: event)


  nimfunc[](slotval1)
proc QLCDNumbermouseDoubleClickEvent*(self: gen_qlcdnumber_types.QLCDNumber, event: gen_qevent_types.QMouseEvent): void =
  fQLCDNumber_virtualbase_mouseDoubleClickEvent(self.h, event.h)

type QLCDNumbermouseDoubleClickEventProc* = proc(event: gen_qevent_types.QMouseEvent): void
proc onmouseDoubleClickEvent*(self: gen_qlcdnumber_types.QLCDNumber, slot: QLCDNumbermouseDoubleClickEventProc) =
  # TODO check subclass
  var tmp = new QLCDNumbermouseDoubleClickEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQLCDNumber_override_virtual_mouseDoubleClickEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QLCDNumber_mouseDoubleClickEvent(self: ptr cQLCDNumber, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QLCDNumber_mouseDoubleClickEvent ".} =
  var nimfunc = cast[ptr QLCDNumbermouseDoubleClickEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QMouseEvent(h: event)


  nimfunc[](slotval1)
proc QLCDNumbermouseMoveEvent*(self: gen_qlcdnumber_types.QLCDNumber, event: gen_qevent_types.QMouseEvent): void =
  fQLCDNumber_virtualbase_mouseMoveEvent(self.h, event.h)

type QLCDNumbermouseMoveEventProc* = proc(event: gen_qevent_types.QMouseEvent): void
proc onmouseMoveEvent*(self: gen_qlcdnumber_types.QLCDNumber, slot: QLCDNumbermouseMoveEventProc) =
  # TODO check subclass
  var tmp = new QLCDNumbermouseMoveEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQLCDNumber_override_virtual_mouseMoveEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QLCDNumber_mouseMoveEvent(self: ptr cQLCDNumber, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QLCDNumber_mouseMoveEvent ".} =
  var nimfunc = cast[ptr QLCDNumbermouseMoveEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QMouseEvent(h: event)


  nimfunc[](slotval1)
proc QLCDNumberwheelEvent*(self: gen_qlcdnumber_types.QLCDNumber, event: gen_qevent_types.QWheelEvent): void =
  fQLCDNumber_virtualbase_wheelEvent(self.h, event.h)

type QLCDNumberwheelEventProc* = proc(event: gen_qevent_types.QWheelEvent): void
proc onwheelEvent*(self: gen_qlcdnumber_types.QLCDNumber, slot: QLCDNumberwheelEventProc) =
  # TODO check subclass
  var tmp = new QLCDNumberwheelEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQLCDNumber_override_virtual_wheelEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QLCDNumber_wheelEvent(self: ptr cQLCDNumber, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QLCDNumber_wheelEvent ".} =
  var nimfunc = cast[ptr QLCDNumberwheelEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QWheelEvent(h: event)


  nimfunc[](slotval1)
proc QLCDNumberkeyPressEvent*(self: gen_qlcdnumber_types.QLCDNumber, event: gen_qevent_types.QKeyEvent): void =
  fQLCDNumber_virtualbase_keyPressEvent(self.h, event.h)

type QLCDNumberkeyPressEventProc* = proc(event: gen_qevent_types.QKeyEvent): void
proc onkeyPressEvent*(self: gen_qlcdnumber_types.QLCDNumber, slot: QLCDNumberkeyPressEventProc) =
  # TODO check subclass
  var tmp = new QLCDNumberkeyPressEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQLCDNumber_override_virtual_keyPressEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QLCDNumber_keyPressEvent(self: ptr cQLCDNumber, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QLCDNumber_keyPressEvent ".} =
  var nimfunc = cast[ptr QLCDNumberkeyPressEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QKeyEvent(h: event)


  nimfunc[](slotval1)
proc QLCDNumberkeyReleaseEvent*(self: gen_qlcdnumber_types.QLCDNumber, event: gen_qevent_types.QKeyEvent): void =
  fQLCDNumber_virtualbase_keyReleaseEvent(self.h, event.h)

type QLCDNumberkeyReleaseEventProc* = proc(event: gen_qevent_types.QKeyEvent): void
proc onkeyReleaseEvent*(self: gen_qlcdnumber_types.QLCDNumber, slot: QLCDNumberkeyReleaseEventProc) =
  # TODO check subclass
  var tmp = new QLCDNumberkeyReleaseEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQLCDNumber_override_virtual_keyReleaseEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QLCDNumber_keyReleaseEvent(self: ptr cQLCDNumber, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QLCDNumber_keyReleaseEvent ".} =
  var nimfunc = cast[ptr QLCDNumberkeyReleaseEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QKeyEvent(h: event)


  nimfunc[](slotval1)
proc QLCDNumberfocusInEvent*(self: gen_qlcdnumber_types.QLCDNumber, event: gen_qevent_types.QFocusEvent): void =
  fQLCDNumber_virtualbase_focusInEvent(self.h, event.h)

type QLCDNumberfocusInEventProc* = proc(event: gen_qevent_types.QFocusEvent): void
proc onfocusInEvent*(self: gen_qlcdnumber_types.QLCDNumber, slot: QLCDNumberfocusInEventProc) =
  # TODO check subclass
  var tmp = new QLCDNumberfocusInEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQLCDNumber_override_virtual_focusInEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QLCDNumber_focusInEvent(self: ptr cQLCDNumber, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QLCDNumber_focusInEvent ".} =
  var nimfunc = cast[ptr QLCDNumberfocusInEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QFocusEvent(h: event)


  nimfunc[](slotval1)
proc QLCDNumberfocusOutEvent*(self: gen_qlcdnumber_types.QLCDNumber, event: gen_qevent_types.QFocusEvent): void =
  fQLCDNumber_virtualbase_focusOutEvent(self.h, event.h)

type QLCDNumberfocusOutEventProc* = proc(event: gen_qevent_types.QFocusEvent): void
proc onfocusOutEvent*(self: gen_qlcdnumber_types.QLCDNumber, slot: QLCDNumberfocusOutEventProc) =
  # TODO check subclass
  var tmp = new QLCDNumberfocusOutEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQLCDNumber_override_virtual_focusOutEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QLCDNumber_focusOutEvent(self: ptr cQLCDNumber, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QLCDNumber_focusOutEvent ".} =
  var nimfunc = cast[ptr QLCDNumberfocusOutEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QFocusEvent(h: event)


  nimfunc[](slotval1)
proc QLCDNumberenterEvent*(self: gen_qlcdnumber_types.QLCDNumber, event: gen_qevent_types.QEnterEvent): void =
  fQLCDNumber_virtualbase_enterEvent(self.h, event.h)

type QLCDNumberenterEventProc* = proc(event: gen_qevent_types.QEnterEvent): void
proc onenterEvent*(self: gen_qlcdnumber_types.QLCDNumber, slot: QLCDNumberenterEventProc) =
  # TODO check subclass
  var tmp = new QLCDNumberenterEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQLCDNumber_override_virtual_enterEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QLCDNumber_enterEvent(self: ptr cQLCDNumber, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QLCDNumber_enterEvent ".} =
  var nimfunc = cast[ptr QLCDNumberenterEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QEnterEvent(h: event)


  nimfunc[](slotval1)
proc QLCDNumberleaveEvent*(self: gen_qlcdnumber_types.QLCDNumber, event: gen_qcoreevent_types.QEvent): void =
  fQLCDNumber_virtualbase_leaveEvent(self.h, event.h)

type QLCDNumberleaveEventProc* = proc(event: gen_qcoreevent_types.QEvent): void
proc onleaveEvent*(self: gen_qlcdnumber_types.QLCDNumber, slot: QLCDNumberleaveEventProc) =
  # TODO check subclass
  var tmp = new QLCDNumberleaveEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQLCDNumber_override_virtual_leaveEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QLCDNumber_leaveEvent(self: ptr cQLCDNumber, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QLCDNumber_leaveEvent ".} =
  var nimfunc = cast[ptr QLCDNumberleaveEventProc](cast[pointer](slot))
  let slotval1 = gen_qcoreevent_types.QEvent(h: event)


  nimfunc[](slotval1)
proc QLCDNumbermoveEvent*(self: gen_qlcdnumber_types.QLCDNumber, event: gen_qevent_types.QMoveEvent): void =
  fQLCDNumber_virtualbase_moveEvent(self.h, event.h)

type QLCDNumbermoveEventProc* = proc(event: gen_qevent_types.QMoveEvent): void
proc onmoveEvent*(self: gen_qlcdnumber_types.QLCDNumber, slot: QLCDNumbermoveEventProc) =
  # TODO check subclass
  var tmp = new QLCDNumbermoveEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQLCDNumber_override_virtual_moveEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QLCDNumber_moveEvent(self: ptr cQLCDNumber, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QLCDNumber_moveEvent ".} =
  var nimfunc = cast[ptr QLCDNumbermoveEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QMoveEvent(h: event)


  nimfunc[](slotval1)
proc QLCDNumberresizeEvent*(self: gen_qlcdnumber_types.QLCDNumber, event: gen_qevent_types.QResizeEvent): void =
  fQLCDNumber_virtualbase_resizeEvent(self.h, event.h)

type QLCDNumberresizeEventProc* = proc(event: gen_qevent_types.QResizeEvent): void
proc onresizeEvent*(self: gen_qlcdnumber_types.QLCDNumber, slot: QLCDNumberresizeEventProc) =
  # TODO check subclass
  var tmp = new QLCDNumberresizeEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQLCDNumber_override_virtual_resizeEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QLCDNumber_resizeEvent(self: ptr cQLCDNumber, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QLCDNumber_resizeEvent ".} =
  var nimfunc = cast[ptr QLCDNumberresizeEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QResizeEvent(h: event)


  nimfunc[](slotval1)
proc QLCDNumbercloseEvent*(self: gen_qlcdnumber_types.QLCDNumber, event: gen_qevent_types.QCloseEvent): void =
  fQLCDNumber_virtualbase_closeEvent(self.h, event.h)

type QLCDNumbercloseEventProc* = proc(event: gen_qevent_types.QCloseEvent): void
proc oncloseEvent*(self: gen_qlcdnumber_types.QLCDNumber, slot: QLCDNumbercloseEventProc) =
  # TODO check subclass
  var tmp = new QLCDNumbercloseEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQLCDNumber_override_virtual_closeEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QLCDNumber_closeEvent(self: ptr cQLCDNumber, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QLCDNumber_closeEvent ".} =
  var nimfunc = cast[ptr QLCDNumbercloseEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QCloseEvent(h: event)


  nimfunc[](slotval1)
proc QLCDNumbercontextMenuEvent*(self: gen_qlcdnumber_types.QLCDNumber, event: gen_qevent_types.QContextMenuEvent): void =
  fQLCDNumber_virtualbase_contextMenuEvent(self.h, event.h)

type QLCDNumbercontextMenuEventProc* = proc(event: gen_qevent_types.QContextMenuEvent): void
proc oncontextMenuEvent*(self: gen_qlcdnumber_types.QLCDNumber, slot: QLCDNumbercontextMenuEventProc) =
  # TODO check subclass
  var tmp = new QLCDNumbercontextMenuEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQLCDNumber_override_virtual_contextMenuEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QLCDNumber_contextMenuEvent(self: ptr cQLCDNumber, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QLCDNumber_contextMenuEvent ".} =
  var nimfunc = cast[ptr QLCDNumbercontextMenuEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QContextMenuEvent(h: event)


  nimfunc[](slotval1)
proc QLCDNumbertabletEvent*(self: gen_qlcdnumber_types.QLCDNumber, event: gen_qevent_types.QTabletEvent): void =
  fQLCDNumber_virtualbase_tabletEvent(self.h, event.h)

type QLCDNumbertabletEventProc* = proc(event: gen_qevent_types.QTabletEvent): void
proc ontabletEvent*(self: gen_qlcdnumber_types.QLCDNumber, slot: QLCDNumbertabletEventProc) =
  # TODO check subclass
  var tmp = new QLCDNumbertabletEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQLCDNumber_override_virtual_tabletEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QLCDNumber_tabletEvent(self: ptr cQLCDNumber, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QLCDNumber_tabletEvent ".} =
  var nimfunc = cast[ptr QLCDNumbertabletEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QTabletEvent(h: event)


  nimfunc[](slotval1)
proc QLCDNumberactionEvent*(self: gen_qlcdnumber_types.QLCDNumber, event: gen_qevent_types.QActionEvent): void =
  fQLCDNumber_virtualbase_actionEvent(self.h, event.h)

type QLCDNumberactionEventProc* = proc(event: gen_qevent_types.QActionEvent): void
proc onactionEvent*(self: gen_qlcdnumber_types.QLCDNumber, slot: QLCDNumberactionEventProc) =
  # TODO check subclass
  var tmp = new QLCDNumberactionEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQLCDNumber_override_virtual_actionEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QLCDNumber_actionEvent(self: ptr cQLCDNumber, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QLCDNumber_actionEvent ".} =
  var nimfunc = cast[ptr QLCDNumberactionEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QActionEvent(h: event)


  nimfunc[](slotval1)
proc QLCDNumberdragEnterEvent*(self: gen_qlcdnumber_types.QLCDNumber, event: gen_qevent_types.QDragEnterEvent): void =
  fQLCDNumber_virtualbase_dragEnterEvent(self.h, event.h)

type QLCDNumberdragEnterEventProc* = proc(event: gen_qevent_types.QDragEnterEvent): void
proc ondragEnterEvent*(self: gen_qlcdnumber_types.QLCDNumber, slot: QLCDNumberdragEnterEventProc) =
  # TODO check subclass
  var tmp = new QLCDNumberdragEnterEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQLCDNumber_override_virtual_dragEnterEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QLCDNumber_dragEnterEvent(self: ptr cQLCDNumber, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QLCDNumber_dragEnterEvent ".} =
  var nimfunc = cast[ptr QLCDNumberdragEnterEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QDragEnterEvent(h: event)


  nimfunc[](slotval1)
proc QLCDNumberdragMoveEvent*(self: gen_qlcdnumber_types.QLCDNumber, event: gen_qevent_types.QDragMoveEvent): void =
  fQLCDNumber_virtualbase_dragMoveEvent(self.h, event.h)

type QLCDNumberdragMoveEventProc* = proc(event: gen_qevent_types.QDragMoveEvent): void
proc ondragMoveEvent*(self: gen_qlcdnumber_types.QLCDNumber, slot: QLCDNumberdragMoveEventProc) =
  # TODO check subclass
  var tmp = new QLCDNumberdragMoveEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQLCDNumber_override_virtual_dragMoveEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QLCDNumber_dragMoveEvent(self: ptr cQLCDNumber, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QLCDNumber_dragMoveEvent ".} =
  var nimfunc = cast[ptr QLCDNumberdragMoveEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QDragMoveEvent(h: event)


  nimfunc[](slotval1)
proc QLCDNumberdragLeaveEvent*(self: gen_qlcdnumber_types.QLCDNumber, event: gen_qevent_types.QDragLeaveEvent): void =
  fQLCDNumber_virtualbase_dragLeaveEvent(self.h, event.h)

type QLCDNumberdragLeaveEventProc* = proc(event: gen_qevent_types.QDragLeaveEvent): void
proc ondragLeaveEvent*(self: gen_qlcdnumber_types.QLCDNumber, slot: QLCDNumberdragLeaveEventProc) =
  # TODO check subclass
  var tmp = new QLCDNumberdragLeaveEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQLCDNumber_override_virtual_dragLeaveEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QLCDNumber_dragLeaveEvent(self: ptr cQLCDNumber, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QLCDNumber_dragLeaveEvent ".} =
  var nimfunc = cast[ptr QLCDNumberdragLeaveEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QDragLeaveEvent(h: event)


  nimfunc[](slotval1)
proc QLCDNumberdropEvent*(self: gen_qlcdnumber_types.QLCDNumber, event: gen_qevent_types.QDropEvent): void =
  fQLCDNumber_virtualbase_dropEvent(self.h, event.h)

type QLCDNumberdropEventProc* = proc(event: gen_qevent_types.QDropEvent): void
proc ondropEvent*(self: gen_qlcdnumber_types.QLCDNumber, slot: QLCDNumberdropEventProc) =
  # TODO check subclass
  var tmp = new QLCDNumberdropEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQLCDNumber_override_virtual_dropEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QLCDNumber_dropEvent(self: ptr cQLCDNumber, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QLCDNumber_dropEvent ".} =
  var nimfunc = cast[ptr QLCDNumberdropEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QDropEvent(h: event)


  nimfunc[](slotval1)
proc QLCDNumbershowEvent*(self: gen_qlcdnumber_types.QLCDNumber, event: gen_qevent_types.QShowEvent): void =
  fQLCDNumber_virtualbase_showEvent(self.h, event.h)

type QLCDNumbershowEventProc* = proc(event: gen_qevent_types.QShowEvent): void
proc onshowEvent*(self: gen_qlcdnumber_types.QLCDNumber, slot: QLCDNumbershowEventProc) =
  # TODO check subclass
  var tmp = new QLCDNumbershowEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQLCDNumber_override_virtual_showEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QLCDNumber_showEvent(self: ptr cQLCDNumber, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QLCDNumber_showEvent ".} =
  var nimfunc = cast[ptr QLCDNumbershowEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QShowEvent(h: event)


  nimfunc[](slotval1)
proc QLCDNumberhideEvent*(self: gen_qlcdnumber_types.QLCDNumber, event: gen_qevent_types.QHideEvent): void =
  fQLCDNumber_virtualbase_hideEvent(self.h, event.h)

type QLCDNumberhideEventProc* = proc(event: gen_qevent_types.QHideEvent): void
proc onhideEvent*(self: gen_qlcdnumber_types.QLCDNumber, slot: QLCDNumberhideEventProc) =
  # TODO check subclass
  var tmp = new QLCDNumberhideEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQLCDNumber_override_virtual_hideEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QLCDNumber_hideEvent(self: ptr cQLCDNumber, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QLCDNumber_hideEvent ".} =
  var nimfunc = cast[ptr QLCDNumberhideEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QHideEvent(h: event)


  nimfunc[](slotval1)
proc QLCDNumbernativeEvent*(self: gen_qlcdnumber_types.QLCDNumber, eventType: seq[byte], message: pointer, resultVal: ptr uint): bool =
  fQLCDNumber_virtualbase_nativeEvent(self.h, struct_miqt_string(data: cast[cstring](if len(eventType) == 0: nil else: unsafeAddr eventType[0]), len: csize_t(len(eventType))), message, resultVal)

type QLCDNumbernativeEventProc* = proc(eventType: seq[byte], message: pointer, resultVal: ptr uint): bool
proc onnativeEvent*(self: gen_qlcdnumber_types.QLCDNumber, slot: QLCDNumbernativeEventProc) =
  # TODO check subclass
  var tmp = new QLCDNumbernativeEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQLCDNumber_override_virtual_nativeEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QLCDNumber_nativeEvent(self: ptr cQLCDNumber, slot: int, eventType: struct_miqt_string, message: pointer, resultVal: ptr uint): bool {.exportc: "miqt_exec_callback_QLCDNumber_nativeEvent ".} =
  var nimfunc = cast[ptr QLCDNumbernativeEventProc](cast[pointer](slot))
  var veventType_bytearray = eventType
  var veventTypex_ret = @(toOpenArrayByte(veventType_bytearray.data, 0, int(veventType_bytearray.len)-1))
  c_free(veventType_bytearray.data)
  let slotval1 = veventTypex_ret

  let slotval2 = message

  let slotval3 = resultVal


  let virtualReturn = nimfunc[](slotval1, slotval2, slotval3 )

  virtualReturn
proc QLCDNumbermetric*(self: gen_qlcdnumber_types.QLCDNumber, param1: cint): cint =
  fQLCDNumber_virtualbase_metric(self.h, cint(param1))

type QLCDNumbermetricProc* = proc(param1: cint): cint
proc onmetric*(self: gen_qlcdnumber_types.QLCDNumber, slot: QLCDNumbermetricProc) =
  # TODO check subclass
  var tmp = new QLCDNumbermetricProc
  tmp[] = slot
  GC_ref(tmp)
  fcQLCDNumber_override_virtual_metric(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QLCDNumber_metric(self: ptr cQLCDNumber, slot: int, param1: cint): cint {.exportc: "miqt_exec_callback_QLCDNumber_metric ".} =
  var nimfunc = cast[ptr QLCDNumbermetricProc](cast[pointer](slot))
  let slotval1 = cint(param1)


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn
proc QLCDNumberinitPainter*(self: gen_qlcdnumber_types.QLCDNumber, painter: gen_qpainter_types.QPainter): void =
  fQLCDNumber_virtualbase_initPainter(self.h, painter.h)

type QLCDNumberinitPainterProc* = proc(painter: gen_qpainter_types.QPainter): void
proc oninitPainter*(self: gen_qlcdnumber_types.QLCDNumber, slot: QLCDNumberinitPainterProc) =
  # TODO check subclass
  var tmp = new QLCDNumberinitPainterProc
  tmp[] = slot
  GC_ref(tmp)
  fcQLCDNumber_override_virtual_initPainter(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QLCDNumber_initPainter(self: ptr cQLCDNumber, slot: int, painter: pointer): void {.exportc: "miqt_exec_callback_QLCDNumber_initPainter ".} =
  var nimfunc = cast[ptr QLCDNumberinitPainterProc](cast[pointer](slot))
  let slotval1 = gen_qpainter_types.QPainter(h: painter)


  nimfunc[](slotval1)
proc QLCDNumberredirected*(self: gen_qlcdnumber_types.QLCDNumber, offset: gen_qpoint_types.QPoint): gen_qpaintdevice_types.QPaintDevice =
  gen_qpaintdevice_types.QPaintDevice(h: fQLCDNumber_virtualbase_redirected(self.h, offset.h))

type QLCDNumberredirectedProc* = proc(offset: gen_qpoint_types.QPoint): gen_qpaintdevice_types.QPaintDevice
proc onredirected*(self: gen_qlcdnumber_types.QLCDNumber, slot: QLCDNumberredirectedProc) =
  # TODO check subclass
  var tmp = new QLCDNumberredirectedProc
  tmp[] = slot
  GC_ref(tmp)
  fcQLCDNumber_override_virtual_redirected(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QLCDNumber_redirected(self: ptr cQLCDNumber, slot: int, offset: pointer): pointer {.exportc: "miqt_exec_callback_QLCDNumber_redirected ".} =
  var nimfunc = cast[ptr QLCDNumberredirectedProc](cast[pointer](slot))
  let slotval1 = gen_qpoint_types.QPoint(h: offset)


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn.h
proc QLCDNumbersharedPainter*(self: gen_qlcdnumber_types.QLCDNumber, ): gen_qpainter_types.QPainter =
  gen_qpainter_types.QPainter(h: fQLCDNumber_virtualbase_sharedPainter(self.h))

type QLCDNumbersharedPainterProc* = proc(): gen_qpainter_types.QPainter
proc onsharedPainter*(self: gen_qlcdnumber_types.QLCDNumber, slot: QLCDNumbersharedPainterProc) =
  # TODO check subclass
  var tmp = new QLCDNumbersharedPainterProc
  tmp[] = slot
  GC_ref(tmp)
  fcQLCDNumber_override_virtual_sharedPainter(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QLCDNumber_sharedPainter(self: ptr cQLCDNumber, slot: int): pointer {.exportc: "miqt_exec_callback_QLCDNumber_sharedPainter ".} =
  var nimfunc = cast[ptr QLCDNumbersharedPainterProc](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )

  virtualReturn.h
proc QLCDNumberinputMethodEvent*(self: gen_qlcdnumber_types.QLCDNumber, param1: gen_qevent_types.QInputMethodEvent): void =
  fQLCDNumber_virtualbase_inputMethodEvent(self.h, param1.h)

type QLCDNumberinputMethodEventProc* = proc(param1: gen_qevent_types.QInputMethodEvent): void
proc oninputMethodEvent*(self: gen_qlcdnumber_types.QLCDNumber, slot: QLCDNumberinputMethodEventProc) =
  # TODO check subclass
  var tmp = new QLCDNumberinputMethodEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQLCDNumber_override_virtual_inputMethodEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QLCDNumber_inputMethodEvent(self: ptr cQLCDNumber, slot: int, param1: pointer): void {.exportc: "miqt_exec_callback_QLCDNumber_inputMethodEvent ".} =
  var nimfunc = cast[ptr QLCDNumberinputMethodEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QInputMethodEvent(h: param1)


  nimfunc[](slotval1)
proc QLCDNumberinputMethodQuery*(self: gen_qlcdnumber_types.QLCDNumber, param1: cint): gen_qvariant_types.QVariant =
  gen_qvariant_types.QVariant(h: fQLCDNumber_virtualbase_inputMethodQuery(self.h, cint(param1)))

type QLCDNumberinputMethodQueryProc* = proc(param1: cint): gen_qvariant_types.QVariant
proc oninputMethodQuery*(self: gen_qlcdnumber_types.QLCDNumber, slot: QLCDNumberinputMethodQueryProc) =
  # TODO check subclass
  var tmp = new QLCDNumberinputMethodQueryProc
  tmp[] = slot
  GC_ref(tmp)
  fcQLCDNumber_override_virtual_inputMethodQuery(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QLCDNumber_inputMethodQuery(self: ptr cQLCDNumber, slot: int, param1: cint): pointer {.exportc: "miqt_exec_callback_QLCDNumber_inputMethodQuery ".} =
  var nimfunc = cast[ptr QLCDNumberinputMethodQueryProc](cast[pointer](slot))
  let slotval1 = cint(param1)


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn.h
proc QLCDNumberfocusNextPrevChild*(self: gen_qlcdnumber_types.QLCDNumber, next: bool): bool =
  fQLCDNumber_virtualbase_focusNextPrevChild(self.h, next)

type QLCDNumberfocusNextPrevChildProc* = proc(next: bool): bool
proc onfocusNextPrevChild*(self: gen_qlcdnumber_types.QLCDNumber, slot: QLCDNumberfocusNextPrevChildProc) =
  # TODO check subclass
  var tmp = new QLCDNumberfocusNextPrevChildProc
  tmp[] = slot
  GC_ref(tmp)
  fcQLCDNumber_override_virtual_focusNextPrevChild(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QLCDNumber_focusNextPrevChild(self: ptr cQLCDNumber, slot: int, next: bool): bool {.exportc: "miqt_exec_callback_QLCDNumber_focusNextPrevChild ".} =
  var nimfunc = cast[ptr QLCDNumberfocusNextPrevChildProc](cast[pointer](slot))
  let slotval1 = next


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn
proc QLCDNumbereventFilter*(self: gen_qlcdnumber_types.QLCDNumber, watched: gen_qobject_types.QObject, event: gen_qcoreevent_types.QEvent): bool =
  fQLCDNumber_virtualbase_eventFilter(self.h, watched.h, event.h)

type QLCDNumbereventFilterProc* = proc(watched: gen_qobject_types.QObject, event: gen_qcoreevent_types.QEvent): bool
proc oneventFilter*(self: gen_qlcdnumber_types.QLCDNumber, slot: QLCDNumbereventFilterProc) =
  # TODO check subclass
  var tmp = new QLCDNumbereventFilterProc
  tmp[] = slot
  GC_ref(tmp)
  fcQLCDNumber_override_virtual_eventFilter(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QLCDNumber_eventFilter(self: ptr cQLCDNumber, slot: int, watched: pointer, event: pointer): bool {.exportc: "miqt_exec_callback_QLCDNumber_eventFilter ".} =
  var nimfunc = cast[ptr QLCDNumbereventFilterProc](cast[pointer](slot))
  let slotval1 = gen_qobject_types.QObject(h: watched)

  let slotval2 = gen_qcoreevent_types.QEvent(h: event)


  let virtualReturn = nimfunc[](slotval1, slotval2 )

  virtualReturn
proc QLCDNumbertimerEvent*(self: gen_qlcdnumber_types.QLCDNumber, event: gen_qcoreevent_types.QTimerEvent): void =
  fQLCDNumber_virtualbase_timerEvent(self.h, event.h)

type QLCDNumbertimerEventProc* = proc(event: gen_qcoreevent_types.QTimerEvent): void
proc ontimerEvent*(self: gen_qlcdnumber_types.QLCDNumber, slot: QLCDNumbertimerEventProc) =
  # TODO check subclass
  var tmp = new QLCDNumbertimerEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQLCDNumber_override_virtual_timerEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QLCDNumber_timerEvent(self: ptr cQLCDNumber, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QLCDNumber_timerEvent ".} =
  var nimfunc = cast[ptr QLCDNumbertimerEventProc](cast[pointer](slot))
  let slotval1 = gen_qcoreevent_types.QTimerEvent(h: event)


  nimfunc[](slotval1)
proc QLCDNumberchildEvent*(self: gen_qlcdnumber_types.QLCDNumber, event: gen_qcoreevent_types.QChildEvent): void =
  fQLCDNumber_virtualbase_childEvent(self.h, event.h)

type QLCDNumberchildEventProc* = proc(event: gen_qcoreevent_types.QChildEvent): void
proc onchildEvent*(self: gen_qlcdnumber_types.QLCDNumber, slot: QLCDNumberchildEventProc) =
  # TODO check subclass
  var tmp = new QLCDNumberchildEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQLCDNumber_override_virtual_childEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QLCDNumber_childEvent(self: ptr cQLCDNumber, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QLCDNumber_childEvent ".} =
  var nimfunc = cast[ptr QLCDNumberchildEventProc](cast[pointer](slot))
  let slotval1 = gen_qcoreevent_types.QChildEvent(h: event)


  nimfunc[](slotval1)
proc QLCDNumbercustomEvent*(self: gen_qlcdnumber_types.QLCDNumber, event: gen_qcoreevent_types.QEvent): void =
  fQLCDNumber_virtualbase_customEvent(self.h, event.h)

type QLCDNumbercustomEventProc* = proc(event: gen_qcoreevent_types.QEvent): void
proc oncustomEvent*(self: gen_qlcdnumber_types.QLCDNumber, slot: QLCDNumbercustomEventProc) =
  # TODO check subclass
  var tmp = new QLCDNumbercustomEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQLCDNumber_override_virtual_customEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QLCDNumber_customEvent(self: ptr cQLCDNumber, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QLCDNumber_customEvent ".} =
  var nimfunc = cast[ptr QLCDNumbercustomEventProc](cast[pointer](slot))
  let slotval1 = gen_qcoreevent_types.QEvent(h: event)


  nimfunc[](slotval1)
proc QLCDNumberconnectNotify*(self: gen_qlcdnumber_types.QLCDNumber, signal: gen_qmetaobject_types.QMetaMethod): void =
  fQLCDNumber_virtualbase_connectNotify(self.h, signal.h)

type QLCDNumberconnectNotifyProc* = proc(signal: gen_qmetaobject_types.QMetaMethod): void
proc onconnectNotify*(self: gen_qlcdnumber_types.QLCDNumber, slot: QLCDNumberconnectNotifyProc) =
  # TODO check subclass
  var tmp = new QLCDNumberconnectNotifyProc
  tmp[] = slot
  GC_ref(tmp)
  fcQLCDNumber_override_virtual_connectNotify(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QLCDNumber_connectNotify(self: ptr cQLCDNumber, slot: int, signal: pointer): void {.exportc: "miqt_exec_callback_QLCDNumber_connectNotify ".} =
  var nimfunc = cast[ptr QLCDNumberconnectNotifyProc](cast[pointer](slot))
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal)


  nimfunc[](slotval1)
proc QLCDNumberdisconnectNotify*(self: gen_qlcdnumber_types.QLCDNumber, signal: gen_qmetaobject_types.QMetaMethod): void =
  fQLCDNumber_virtualbase_disconnectNotify(self.h, signal.h)

type QLCDNumberdisconnectNotifyProc* = proc(signal: gen_qmetaobject_types.QMetaMethod): void
proc ondisconnectNotify*(self: gen_qlcdnumber_types.QLCDNumber, slot: QLCDNumberdisconnectNotifyProc) =
  # TODO check subclass
  var tmp = new QLCDNumberdisconnectNotifyProc
  tmp[] = slot
  GC_ref(tmp)
  fcQLCDNumber_override_virtual_disconnectNotify(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QLCDNumber_disconnectNotify(self: ptr cQLCDNumber, slot: int, signal: pointer): void {.exportc: "miqt_exec_callback_QLCDNumber_disconnectNotify ".} =
  var nimfunc = cast[ptr QLCDNumberdisconnectNotifyProc](cast[pointer](slot))
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal)


  nimfunc[](slotval1)
proc delete*(self: gen_qlcdnumber_types.QLCDNumber) =
  fcQLCDNumber_delete(self.h)
