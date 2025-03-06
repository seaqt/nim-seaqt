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

proc fcQLCDNumber_metaObject(self: pointer, ): pointer {.importc: "QLCDNumber_metaObject".}
proc fcQLCDNumber_metacast(self: pointer, param1: cstring): pointer {.importc: "QLCDNumber_metacast".}
proc fcQLCDNumber_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.importc: "QLCDNumber_metacall".}
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
type cQLCDNumberVTable = object
  destructor*: proc(vtbl: ptr cQLCDNumberVTable, self: ptr cQLCDNumber) {.cdecl, raises:[], gcsafe.}
  metaObject*: proc(vtbl, self: pointer, ): pointer {.cdecl, raises: [], gcsafe.}
  metacast*: proc(vtbl, self: pointer, param1: cstring): pointer {.cdecl, raises: [], gcsafe.}
  metacall*: proc(vtbl, self: pointer, param1: cint, param2: cint, param3: pointer): cint {.cdecl, raises: [], gcsafe.}
  sizeHint*: proc(vtbl, self: pointer, ): pointer {.cdecl, raises: [], gcsafe.}
  event*: proc(vtbl, self: pointer, e: pointer): bool {.cdecl, raises: [], gcsafe.}
  paintEvent*: proc(vtbl, self: pointer, param1: pointer): void {.cdecl, raises: [], gcsafe.}
  changeEvent*: proc(vtbl, self: pointer, param1: pointer): void {.cdecl, raises: [], gcsafe.}
  initStyleOption*: proc(vtbl, self: pointer, option: pointer): void {.cdecl, raises: [], gcsafe.}
  devType*: proc(vtbl, self: pointer, ): cint {.cdecl, raises: [], gcsafe.}
  setVisible*: proc(vtbl, self: pointer, visible: bool): void {.cdecl, raises: [], gcsafe.}
  minimumSizeHint*: proc(vtbl, self: pointer, ): pointer {.cdecl, raises: [], gcsafe.}
  heightForWidth*: proc(vtbl, self: pointer, param1: cint): cint {.cdecl, raises: [], gcsafe.}
  hasHeightForWidth*: proc(vtbl, self: pointer, ): bool {.cdecl, raises: [], gcsafe.}
  paintEngine*: proc(vtbl, self: pointer, ): pointer {.cdecl, raises: [], gcsafe.}
  mousePressEvent*: proc(vtbl, self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  mouseReleaseEvent*: proc(vtbl, self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  mouseDoubleClickEvent*: proc(vtbl, self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  mouseMoveEvent*: proc(vtbl, self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  wheelEvent*: proc(vtbl, self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  keyPressEvent*: proc(vtbl, self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  keyReleaseEvent*: proc(vtbl, self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  focusInEvent*: proc(vtbl, self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  focusOutEvent*: proc(vtbl, self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  enterEvent*: proc(vtbl, self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  leaveEvent*: proc(vtbl, self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  moveEvent*: proc(vtbl, self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  resizeEvent*: proc(vtbl, self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  closeEvent*: proc(vtbl, self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  contextMenuEvent*: proc(vtbl, self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  tabletEvent*: proc(vtbl, self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  actionEvent*: proc(vtbl, self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  dragEnterEvent*: proc(vtbl, self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  dragMoveEvent*: proc(vtbl, self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  dragLeaveEvent*: proc(vtbl, self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  dropEvent*: proc(vtbl, self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  showEvent*: proc(vtbl, self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  hideEvent*: proc(vtbl, self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  nativeEvent*: proc(vtbl, self: pointer, eventType: struct_miqt_string, message: pointer, resultVal: ptr uint): bool {.cdecl, raises: [], gcsafe.}
  metric*: proc(vtbl, self: pointer, param1: cint): cint {.cdecl, raises: [], gcsafe.}
  initPainter*: proc(vtbl, self: pointer, painter: pointer): void {.cdecl, raises: [], gcsafe.}
  redirected*: proc(vtbl, self: pointer, offset: pointer): pointer {.cdecl, raises: [], gcsafe.}
  sharedPainter*: proc(vtbl, self: pointer, ): pointer {.cdecl, raises: [], gcsafe.}
  inputMethodEvent*: proc(vtbl, self: pointer, param1: pointer): void {.cdecl, raises: [], gcsafe.}
  inputMethodQuery*: proc(vtbl, self: pointer, param1: cint): pointer {.cdecl, raises: [], gcsafe.}
  focusNextPrevChild*: proc(vtbl, self: pointer, next: bool): bool {.cdecl, raises: [], gcsafe.}
  eventFilter*: proc(vtbl, self: pointer, watched: pointer, event: pointer): bool {.cdecl, raises: [], gcsafe.}
  timerEvent*: proc(vtbl, self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  childEvent*: proc(vtbl, self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  customEvent*: proc(vtbl, self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  connectNotify*: proc(vtbl, self: pointer, signal: pointer): void {.cdecl, raises: [], gcsafe.}
  disconnectNotify*: proc(vtbl, self: pointer, signal: pointer): void {.cdecl, raises: [], gcsafe.}
proc fcQLCDNumber_virtualbase_metaObject(self: pointer, ): pointer {.importc: "QLCDNumber_virtualbase_metaObject".}
proc fcQLCDNumber_virtualbase_metacast(self: pointer, param1: cstring): pointer {.importc: "QLCDNumber_virtualbase_metacast".}
proc fcQLCDNumber_virtualbase_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.importc: "QLCDNumber_virtualbase_metacall".}
proc fcQLCDNumber_virtualbase_sizeHint(self: pointer, ): pointer {.importc: "QLCDNumber_virtualbase_sizeHint".}
proc fcQLCDNumber_virtualbase_event(self: pointer, e: pointer): bool {.importc: "QLCDNumber_virtualbase_event".}
proc fcQLCDNumber_virtualbase_paintEvent(self: pointer, param1: pointer): void {.importc: "QLCDNumber_virtualbase_paintEvent".}
proc fcQLCDNumber_virtualbase_changeEvent(self: pointer, param1: pointer): void {.importc: "QLCDNumber_virtualbase_changeEvent".}
proc fcQLCDNumber_virtualbase_initStyleOption(self: pointer, option: pointer): void {.importc: "QLCDNumber_virtualbase_initStyleOption".}
proc fcQLCDNumber_virtualbase_devType(self: pointer, ): cint {.importc: "QLCDNumber_virtualbase_devType".}
proc fcQLCDNumber_virtualbase_setVisible(self: pointer, visible: bool): void {.importc: "QLCDNumber_virtualbase_setVisible".}
proc fcQLCDNumber_virtualbase_minimumSizeHint(self: pointer, ): pointer {.importc: "QLCDNumber_virtualbase_minimumSizeHint".}
proc fcQLCDNumber_virtualbase_heightForWidth(self: pointer, param1: cint): cint {.importc: "QLCDNumber_virtualbase_heightForWidth".}
proc fcQLCDNumber_virtualbase_hasHeightForWidth(self: pointer, ): bool {.importc: "QLCDNumber_virtualbase_hasHeightForWidth".}
proc fcQLCDNumber_virtualbase_paintEngine(self: pointer, ): pointer {.importc: "QLCDNumber_virtualbase_paintEngine".}
proc fcQLCDNumber_virtualbase_mousePressEvent(self: pointer, event: pointer): void {.importc: "QLCDNumber_virtualbase_mousePressEvent".}
proc fcQLCDNumber_virtualbase_mouseReleaseEvent(self: pointer, event: pointer): void {.importc: "QLCDNumber_virtualbase_mouseReleaseEvent".}
proc fcQLCDNumber_virtualbase_mouseDoubleClickEvent(self: pointer, event: pointer): void {.importc: "QLCDNumber_virtualbase_mouseDoubleClickEvent".}
proc fcQLCDNumber_virtualbase_mouseMoveEvent(self: pointer, event: pointer): void {.importc: "QLCDNumber_virtualbase_mouseMoveEvent".}
proc fcQLCDNumber_virtualbase_wheelEvent(self: pointer, event: pointer): void {.importc: "QLCDNumber_virtualbase_wheelEvent".}
proc fcQLCDNumber_virtualbase_keyPressEvent(self: pointer, event: pointer): void {.importc: "QLCDNumber_virtualbase_keyPressEvent".}
proc fcQLCDNumber_virtualbase_keyReleaseEvent(self: pointer, event: pointer): void {.importc: "QLCDNumber_virtualbase_keyReleaseEvent".}
proc fcQLCDNumber_virtualbase_focusInEvent(self: pointer, event: pointer): void {.importc: "QLCDNumber_virtualbase_focusInEvent".}
proc fcQLCDNumber_virtualbase_focusOutEvent(self: pointer, event: pointer): void {.importc: "QLCDNumber_virtualbase_focusOutEvent".}
proc fcQLCDNumber_virtualbase_enterEvent(self: pointer, event: pointer): void {.importc: "QLCDNumber_virtualbase_enterEvent".}
proc fcQLCDNumber_virtualbase_leaveEvent(self: pointer, event: pointer): void {.importc: "QLCDNumber_virtualbase_leaveEvent".}
proc fcQLCDNumber_virtualbase_moveEvent(self: pointer, event: pointer): void {.importc: "QLCDNumber_virtualbase_moveEvent".}
proc fcQLCDNumber_virtualbase_resizeEvent(self: pointer, event: pointer): void {.importc: "QLCDNumber_virtualbase_resizeEvent".}
proc fcQLCDNumber_virtualbase_closeEvent(self: pointer, event: pointer): void {.importc: "QLCDNumber_virtualbase_closeEvent".}
proc fcQLCDNumber_virtualbase_contextMenuEvent(self: pointer, event: pointer): void {.importc: "QLCDNumber_virtualbase_contextMenuEvent".}
proc fcQLCDNumber_virtualbase_tabletEvent(self: pointer, event: pointer): void {.importc: "QLCDNumber_virtualbase_tabletEvent".}
proc fcQLCDNumber_virtualbase_actionEvent(self: pointer, event: pointer): void {.importc: "QLCDNumber_virtualbase_actionEvent".}
proc fcQLCDNumber_virtualbase_dragEnterEvent(self: pointer, event: pointer): void {.importc: "QLCDNumber_virtualbase_dragEnterEvent".}
proc fcQLCDNumber_virtualbase_dragMoveEvent(self: pointer, event: pointer): void {.importc: "QLCDNumber_virtualbase_dragMoveEvent".}
proc fcQLCDNumber_virtualbase_dragLeaveEvent(self: pointer, event: pointer): void {.importc: "QLCDNumber_virtualbase_dragLeaveEvent".}
proc fcQLCDNumber_virtualbase_dropEvent(self: pointer, event: pointer): void {.importc: "QLCDNumber_virtualbase_dropEvent".}
proc fcQLCDNumber_virtualbase_showEvent(self: pointer, event: pointer): void {.importc: "QLCDNumber_virtualbase_showEvent".}
proc fcQLCDNumber_virtualbase_hideEvent(self: pointer, event: pointer): void {.importc: "QLCDNumber_virtualbase_hideEvent".}
proc fcQLCDNumber_virtualbase_nativeEvent(self: pointer, eventType: struct_miqt_string, message: pointer, resultVal: ptr uint): bool {.importc: "QLCDNumber_virtualbase_nativeEvent".}
proc fcQLCDNumber_virtualbase_metric(self: pointer, param1: cint): cint {.importc: "QLCDNumber_virtualbase_metric".}
proc fcQLCDNumber_virtualbase_initPainter(self: pointer, painter: pointer): void {.importc: "QLCDNumber_virtualbase_initPainter".}
proc fcQLCDNumber_virtualbase_redirected(self: pointer, offset: pointer): pointer {.importc: "QLCDNumber_virtualbase_redirected".}
proc fcQLCDNumber_virtualbase_sharedPainter(self: pointer, ): pointer {.importc: "QLCDNumber_virtualbase_sharedPainter".}
proc fcQLCDNumber_virtualbase_inputMethodEvent(self: pointer, param1: pointer): void {.importc: "QLCDNumber_virtualbase_inputMethodEvent".}
proc fcQLCDNumber_virtualbase_inputMethodQuery(self: pointer, param1: cint): pointer {.importc: "QLCDNumber_virtualbase_inputMethodQuery".}
proc fcQLCDNumber_virtualbase_focusNextPrevChild(self: pointer, next: bool): bool {.importc: "QLCDNumber_virtualbase_focusNextPrevChild".}
proc fcQLCDNumber_virtualbase_eventFilter(self: pointer, watched: pointer, event: pointer): bool {.importc: "QLCDNumber_virtualbase_eventFilter".}
proc fcQLCDNumber_virtualbase_timerEvent(self: pointer, event: pointer): void {.importc: "QLCDNumber_virtualbase_timerEvent".}
proc fcQLCDNumber_virtualbase_childEvent(self: pointer, event: pointer): void {.importc: "QLCDNumber_virtualbase_childEvent".}
proc fcQLCDNumber_virtualbase_customEvent(self: pointer, event: pointer): void {.importc: "QLCDNumber_virtualbase_customEvent".}
proc fcQLCDNumber_virtualbase_connectNotify(self: pointer, signal: pointer): void {.importc: "QLCDNumber_virtualbase_connectNotify".}
proc fcQLCDNumber_virtualbase_disconnectNotify(self: pointer, signal: pointer): void {.importc: "QLCDNumber_virtualbase_disconnectNotify".}
proc fcQLCDNumber_new(vtbl: pointer, parent: pointer): ptr cQLCDNumber {.importc: "QLCDNumber_new".}
proc fcQLCDNumber_new2(vtbl: pointer, ): ptr cQLCDNumber {.importc: "QLCDNumber_new2".}
proc fcQLCDNumber_new3(vtbl: pointer, numDigits: cuint): ptr cQLCDNumber {.importc: "QLCDNumber_new3".}
proc fcQLCDNumber_new4(vtbl: pointer, numDigits: cuint, parent: pointer): ptr cQLCDNumber {.importc: "QLCDNumber_new4".}
proc fcQLCDNumber_staticMetaObject(): pointer {.importc: "QLCDNumber_staticMetaObject".}
proc fcQLCDNumber_delete(self: pointer) {.importc: "QLCDNumber_delete".}

proc metaObject*(self: gen_qlcdnumber_types.QLCDNumber, ): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQLCDNumber_metaObject(self.h))

proc metacast*(self: gen_qlcdnumber_types.QLCDNumber, param1: cstring): pointer =
  fcQLCDNumber_metacast(self.h, param1)

proc metacall*(self: gen_qlcdnumber_types.QLCDNumber, param1: cint, param2: cint, param3: pointer): cint =
  fcQLCDNumber_metacall(self.h, cint(param1), param2, param3)

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
proc miqt_exec_callback_cQLCDNumber_overflow(slot: int) {.exportc: "miqt_exec_callback_QLCDNumber_overflow".} =
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

type QLCDNumbermetaObjectProc* = proc(self: QLCDNumber): gen_qobjectdefs_types.QMetaObject {.raises: [], gcsafe.}
type QLCDNumbermetacastProc* = proc(self: QLCDNumber, param1: cstring): pointer {.raises: [], gcsafe.}
type QLCDNumbermetacallProc* = proc(self: QLCDNumber, param1: cint, param2: cint, param3: pointer): cint {.raises: [], gcsafe.}
type QLCDNumbersizeHintProc* = proc(self: QLCDNumber): gen_qsize_types.QSize {.raises: [], gcsafe.}
type QLCDNumbereventProc* = proc(self: QLCDNumber, e: gen_qcoreevent_types.QEvent): bool {.raises: [], gcsafe.}
type QLCDNumberpaintEventProc* = proc(self: QLCDNumber, param1: gen_qevent_types.QPaintEvent): void {.raises: [], gcsafe.}
type QLCDNumberchangeEventProc* = proc(self: QLCDNumber, param1: gen_qcoreevent_types.QEvent): void {.raises: [], gcsafe.}
type QLCDNumberinitStyleOptionProc* = proc(self: QLCDNumber, option: gen_qstyleoption_types.QStyleOptionFrame): void {.raises: [], gcsafe.}
type QLCDNumberdevTypeProc* = proc(self: QLCDNumber): cint {.raises: [], gcsafe.}
type QLCDNumbersetVisibleProc* = proc(self: QLCDNumber, visible: bool): void {.raises: [], gcsafe.}
type QLCDNumberminimumSizeHintProc* = proc(self: QLCDNumber): gen_qsize_types.QSize {.raises: [], gcsafe.}
type QLCDNumberheightForWidthProc* = proc(self: QLCDNumber, param1: cint): cint {.raises: [], gcsafe.}
type QLCDNumberhasHeightForWidthProc* = proc(self: QLCDNumber): bool {.raises: [], gcsafe.}
type QLCDNumberpaintEngineProc* = proc(self: QLCDNumber): gen_qpaintengine_types.QPaintEngine {.raises: [], gcsafe.}
type QLCDNumbermousePressEventProc* = proc(self: QLCDNumber, event: gen_qevent_types.QMouseEvent): void {.raises: [], gcsafe.}
type QLCDNumbermouseReleaseEventProc* = proc(self: QLCDNumber, event: gen_qevent_types.QMouseEvent): void {.raises: [], gcsafe.}
type QLCDNumbermouseDoubleClickEventProc* = proc(self: QLCDNumber, event: gen_qevent_types.QMouseEvent): void {.raises: [], gcsafe.}
type QLCDNumbermouseMoveEventProc* = proc(self: QLCDNumber, event: gen_qevent_types.QMouseEvent): void {.raises: [], gcsafe.}
type QLCDNumberwheelEventProc* = proc(self: QLCDNumber, event: gen_qevent_types.QWheelEvent): void {.raises: [], gcsafe.}
type QLCDNumberkeyPressEventProc* = proc(self: QLCDNumber, event: gen_qevent_types.QKeyEvent): void {.raises: [], gcsafe.}
type QLCDNumberkeyReleaseEventProc* = proc(self: QLCDNumber, event: gen_qevent_types.QKeyEvent): void {.raises: [], gcsafe.}
type QLCDNumberfocusInEventProc* = proc(self: QLCDNumber, event: gen_qevent_types.QFocusEvent): void {.raises: [], gcsafe.}
type QLCDNumberfocusOutEventProc* = proc(self: QLCDNumber, event: gen_qevent_types.QFocusEvent): void {.raises: [], gcsafe.}
type QLCDNumberenterEventProc* = proc(self: QLCDNumber, event: gen_qevent_types.QEnterEvent): void {.raises: [], gcsafe.}
type QLCDNumberleaveEventProc* = proc(self: QLCDNumber, event: gen_qcoreevent_types.QEvent): void {.raises: [], gcsafe.}
type QLCDNumbermoveEventProc* = proc(self: QLCDNumber, event: gen_qevent_types.QMoveEvent): void {.raises: [], gcsafe.}
type QLCDNumberresizeEventProc* = proc(self: QLCDNumber, event: gen_qevent_types.QResizeEvent): void {.raises: [], gcsafe.}
type QLCDNumbercloseEventProc* = proc(self: QLCDNumber, event: gen_qevent_types.QCloseEvent): void {.raises: [], gcsafe.}
type QLCDNumbercontextMenuEventProc* = proc(self: QLCDNumber, event: gen_qevent_types.QContextMenuEvent): void {.raises: [], gcsafe.}
type QLCDNumbertabletEventProc* = proc(self: QLCDNumber, event: gen_qevent_types.QTabletEvent): void {.raises: [], gcsafe.}
type QLCDNumberactionEventProc* = proc(self: QLCDNumber, event: gen_qevent_types.QActionEvent): void {.raises: [], gcsafe.}
type QLCDNumberdragEnterEventProc* = proc(self: QLCDNumber, event: gen_qevent_types.QDragEnterEvent): void {.raises: [], gcsafe.}
type QLCDNumberdragMoveEventProc* = proc(self: QLCDNumber, event: gen_qevent_types.QDragMoveEvent): void {.raises: [], gcsafe.}
type QLCDNumberdragLeaveEventProc* = proc(self: QLCDNumber, event: gen_qevent_types.QDragLeaveEvent): void {.raises: [], gcsafe.}
type QLCDNumberdropEventProc* = proc(self: QLCDNumber, event: gen_qevent_types.QDropEvent): void {.raises: [], gcsafe.}
type QLCDNumbershowEventProc* = proc(self: QLCDNumber, event: gen_qevent_types.QShowEvent): void {.raises: [], gcsafe.}
type QLCDNumberhideEventProc* = proc(self: QLCDNumber, event: gen_qevent_types.QHideEvent): void {.raises: [], gcsafe.}
type QLCDNumbernativeEventProc* = proc(self: QLCDNumber, eventType: seq[byte], message: pointer, resultVal: ptr uint): bool {.raises: [], gcsafe.}
type QLCDNumbermetricProc* = proc(self: QLCDNumber, param1: cint): cint {.raises: [], gcsafe.}
type QLCDNumberinitPainterProc* = proc(self: QLCDNumber, painter: gen_qpainter_types.QPainter): void {.raises: [], gcsafe.}
type QLCDNumberredirectedProc* = proc(self: QLCDNumber, offset: gen_qpoint_types.QPoint): gen_qpaintdevice_types.QPaintDevice {.raises: [], gcsafe.}
type QLCDNumbersharedPainterProc* = proc(self: QLCDNumber): gen_qpainter_types.QPainter {.raises: [], gcsafe.}
type QLCDNumberinputMethodEventProc* = proc(self: QLCDNumber, param1: gen_qevent_types.QInputMethodEvent): void {.raises: [], gcsafe.}
type QLCDNumberinputMethodQueryProc* = proc(self: QLCDNumber, param1: cint): gen_qvariant_types.QVariant {.raises: [], gcsafe.}
type QLCDNumberfocusNextPrevChildProc* = proc(self: QLCDNumber, next: bool): bool {.raises: [], gcsafe.}
type QLCDNumbereventFilterProc* = proc(self: QLCDNumber, watched: gen_qobject_types.QObject, event: gen_qcoreevent_types.QEvent): bool {.raises: [], gcsafe.}
type QLCDNumbertimerEventProc* = proc(self: QLCDNumber, event: gen_qcoreevent_types.QTimerEvent): void {.raises: [], gcsafe.}
type QLCDNumberchildEventProc* = proc(self: QLCDNumber, event: gen_qcoreevent_types.QChildEvent): void {.raises: [], gcsafe.}
type QLCDNumbercustomEventProc* = proc(self: QLCDNumber, event: gen_qcoreevent_types.QEvent): void {.raises: [], gcsafe.}
type QLCDNumberconnectNotifyProc* = proc(self: QLCDNumber, signal: gen_qmetaobject_types.QMetaMethod): void {.raises: [], gcsafe.}
type QLCDNumberdisconnectNotifyProc* = proc(self: QLCDNumber, signal: gen_qmetaobject_types.QMetaMethod): void {.raises: [], gcsafe.}
type QLCDNumberVTable* = object
  vtbl: cQLCDNumberVTable
  metaObject*: QLCDNumbermetaObjectProc
  metacast*: QLCDNumbermetacastProc
  metacall*: QLCDNumbermetacallProc
  sizeHint*: QLCDNumbersizeHintProc
  event*: QLCDNumbereventProc
  paintEvent*: QLCDNumberpaintEventProc
  changeEvent*: QLCDNumberchangeEventProc
  initStyleOption*: QLCDNumberinitStyleOptionProc
  devType*: QLCDNumberdevTypeProc
  setVisible*: QLCDNumbersetVisibleProc
  minimumSizeHint*: QLCDNumberminimumSizeHintProc
  heightForWidth*: QLCDNumberheightForWidthProc
  hasHeightForWidth*: QLCDNumberhasHeightForWidthProc
  paintEngine*: QLCDNumberpaintEngineProc
  mousePressEvent*: QLCDNumbermousePressEventProc
  mouseReleaseEvent*: QLCDNumbermouseReleaseEventProc
  mouseDoubleClickEvent*: QLCDNumbermouseDoubleClickEventProc
  mouseMoveEvent*: QLCDNumbermouseMoveEventProc
  wheelEvent*: QLCDNumberwheelEventProc
  keyPressEvent*: QLCDNumberkeyPressEventProc
  keyReleaseEvent*: QLCDNumberkeyReleaseEventProc
  focusInEvent*: QLCDNumberfocusInEventProc
  focusOutEvent*: QLCDNumberfocusOutEventProc
  enterEvent*: QLCDNumberenterEventProc
  leaveEvent*: QLCDNumberleaveEventProc
  moveEvent*: QLCDNumbermoveEventProc
  resizeEvent*: QLCDNumberresizeEventProc
  closeEvent*: QLCDNumbercloseEventProc
  contextMenuEvent*: QLCDNumbercontextMenuEventProc
  tabletEvent*: QLCDNumbertabletEventProc
  actionEvent*: QLCDNumberactionEventProc
  dragEnterEvent*: QLCDNumberdragEnterEventProc
  dragMoveEvent*: QLCDNumberdragMoveEventProc
  dragLeaveEvent*: QLCDNumberdragLeaveEventProc
  dropEvent*: QLCDNumberdropEventProc
  showEvent*: QLCDNumbershowEventProc
  hideEvent*: QLCDNumberhideEventProc
  nativeEvent*: QLCDNumbernativeEventProc
  metric*: QLCDNumbermetricProc
  initPainter*: QLCDNumberinitPainterProc
  redirected*: QLCDNumberredirectedProc
  sharedPainter*: QLCDNumbersharedPainterProc
  inputMethodEvent*: QLCDNumberinputMethodEventProc
  inputMethodQuery*: QLCDNumberinputMethodQueryProc
  focusNextPrevChild*: QLCDNumberfocusNextPrevChildProc
  eventFilter*: QLCDNumbereventFilterProc
  timerEvent*: QLCDNumbertimerEventProc
  childEvent*: QLCDNumberchildEventProc
  customEvent*: QLCDNumbercustomEventProc
  connectNotify*: QLCDNumberconnectNotifyProc
  disconnectNotify*: QLCDNumberdisconnectNotifyProc
proc QLCDNumbermetaObject*(self: gen_qlcdnumber_types.QLCDNumber, ): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQLCDNumber_virtualbase_metaObject(self.h))

proc miqt_exec_callback_cQLCDNumber_metaObject(vtbl: pointer, self: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QLCDNumberVTable](vtbl)
  let self = QLCDNumber(h: self)
  var virtualReturn = vtbl[].metaObject(self)
  virtualReturn.h

proc QLCDNumbermetacast*(self: gen_qlcdnumber_types.QLCDNumber, param1: cstring): pointer =
  fcQLCDNumber_virtualbase_metacast(self.h, param1)

proc miqt_exec_callback_cQLCDNumber_metacast(vtbl: pointer, self: pointer, param1: cstring): pointer {.cdecl.} =
  let vtbl = cast[ptr QLCDNumberVTable](vtbl)
  let self = QLCDNumber(h: self)
  let slotval1 = (param1)
  var virtualReturn = vtbl[].metacast(self, slotval1)
  virtualReturn

proc QLCDNumbermetacall*(self: gen_qlcdnumber_types.QLCDNumber, param1: cint, param2: cint, param3: pointer): cint =
  fcQLCDNumber_virtualbase_metacall(self.h, cint(param1), param2, param3)

proc miqt_exec_callback_cQLCDNumber_metacall(vtbl: pointer, self: pointer, param1: cint, param2: cint, param3: pointer): cint {.cdecl.} =
  let vtbl = cast[ptr QLCDNumberVTable](vtbl)
  let self = QLCDNumber(h: self)
  let slotval1 = cint(param1)
  let slotval2 = param2
  let slotval3 = param3
  var virtualReturn = vtbl[].metacall(self, slotval1, slotval2, slotval3)
  virtualReturn

proc QLCDNumbersizeHint*(self: gen_qlcdnumber_types.QLCDNumber, ): gen_qsize_types.QSize =
  gen_qsize_types.QSize(h: fcQLCDNumber_virtualbase_sizeHint(self.h))

proc miqt_exec_callback_cQLCDNumber_sizeHint(vtbl: pointer, self: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QLCDNumberVTable](vtbl)
  let self = QLCDNumber(h: self)
  var virtualReturn = vtbl[].sizeHint(self)
  virtualReturn.h

proc QLCDNumberevent*(self: gen_qlcdnumber_types.QLCDNumber, e: gen_qcoreevent_types.QEvent): bool =
  fcQLCDNumber_virtualbase_event(self.h, e.h)

proc miqt_exec_callback_cQLCDNumber_event(vtbl: pointer, self: pointer, e: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QLCDNumberVTable](vtbl)
  let self = QLCDNumber(h: self)
  let slotval1 = gen_qcoreevent_types.QEvent(h: e)
  var virtualReturn = vtbl[].event(self, slotval1)
  virtualReturn

proc QLCDNumberpaintEvent*(self: gen_qlcdnumber_types.QLCDNumber, param1: gen_qevent_types.QPaintEvent): void =
  fcQLCDNumber_virtualbase_paintEvent(self.h, param1.h)

proc miqt_exec_callback_cQLCDNumber_paintEvent(vtbl: pointer, self: pointer, param1: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QLCDNumberVTable](vtbl)
  let self = QLCDNumber(h: self)
  let slotval1 = gen_qevent_types.QPaintEvent(h: param1)
  vtbl[].paintEvent(self, slotval1)

proc QLCDNumberchangeEvent*(self: gen_qlcdnumber_types.QLCDNumber, param1: gen_qcoreevent_types.QEvent): void =
  fcQLCDNumber_virtualbase_changeEvent(self.h, param1.h)

proc miqt_exec_callback_cQLCDNumber_changeEvent(vtbl: pointer, self: pointer, param1: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QLCDNumberVTable](vtbl)
  let self = QLCDNumber(h: self)
  let slotval1 = gen_qcoreevent_types.QEvent(h: param1)
  vtbl[].changeEvent(self, slotval1)

proc QLCDNumberinitStyleOption*(self: gen_qlcdnumber_types.QLCDNumber, option: gen_qstyleoption_types.QStyleOptionFrame): void =
  fcQLCDNumber_virtualbase_initStyleOption(self.h, option.h)

proc miqt_exec_callback_cQLCDNumber_initStyleOption(vtbl: pointer, self: pointer, option: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QLCDNumberVTable](vtbl)
  let self = QLCDNumber(h: self)
  let slotval1 = gen_qstyleoption_types.QStyleOptionFrame(h: option)
  vtbl[].initStyleOption(self, slotval1)

proc QLCDNumberdevType*(self: gen_qlcdnumber_types.QLCDNumber, ): cint =
  fcQLCDNumber_virtualbase_devType(self.h)

proc miqt_exec_callback_cQLCDNumber_devType(vtbl: pointer, self: pointer): cint {.cdecl.} =
  let vtbl = cast[ptr QLCDNumberVTable](vtbl)
  let self = QLCDNumber(h: self)
  var virtualReturn = vtbl[].devType(self)
  virtualReturn

proc QLCDNumbersetVisible*(self: gen_qlcdnumber_types.QLCDNumber, visible: bool): void =
  fcQLCDNumber_virtualbase_setVisible(self.h, visible)

proc miqt_exec_callback_cQLCDNumber_setVisible(vtbl: pointer, self: pointer, visible: bool): void {.cdecl.} =
  let vtbl = cast[ptr QLCDNumberVTable](vtbl)
  let self = QLCDNumber(h: self)
  let slotval1 = visible
  vtbl[].setVisible(self, slotval1)

proc QLCDNumberminimumSizeHint*(self: gen_qlcdnumber_types.QLCDNumber, ): gen_qsize_types.QSize =
  gen_qsize_types.QSize(h: fcQLCDNumber_virtualbase_minimumSizeHint(self.h))

proc miqt_exec_callback_cQLCDNumber_minimumSizeHint(vtbl: pointer, self: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QLCDNumberVTable](vtbl)
  let self = QLCDNumber(h: self)
  var virtualReturn = vtbl[].minimumSizeHint(self)
  virtualReturn.h

proc QLCDNumberheightForWidth*(self: gen_qlcdnumber_types.QLCDNumber, param1: cint): cint =
  fcQLCDNumber_virtualbase_heightForWidth(self.h, param1)

proc miqt_exec_callback_cQLCDNumber_heightForWidth(vtbl: pointer, self: pointer, param1: cint): cint {.cdecl.} =
  let vtbl = cast[ptr QLCDNumberVTable](vtbl)
  let self = QLCDNumber(h: self)
  let slotval1 = param1
  var virtualReturn = vtbl[].heightForWidth(self, slotval1)
  virtualReturn

proc QLCDNumberhasHeightForWidth*(self: gen_qlcdnumber_types.QLCDNumber, ): bool =
  fcQLCDNumber_virtualbase_hasHeightForWidth(self.h)

proc miqt_exec_callback_cQLCDNumber_hasHeightForWidth(vtbl: pointer, self: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QLCDNumberVTable](vtbl)
  let self = QLCDNumber(h: self)
  var virtualReturn = vtbl[].hasHeightForWidth(self)
  virtualReturn

proc QLCDNumberpaintEngine*(self: gen_qlcdnumber_types.QLCDNumber, ): gen_qpaintengine_types.QPaintEngine =
  gen_qpaintengine_types.QPaintEngine(h: fcQLCDNumber_virtualbase_paintEngine(self.h))

proc miqt_exec_callback_cQLCDNumber_paintEngine(vtbl: pointer, self: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QLCDNumberVTable](vtbl)
  let self = QLCDNumber(h: self)
  var virtualReturn = vtbl[].paintEngine(self)
  virtualReturn.h

proc QLCDNumbermousePressEvent*(self: gen_qlcdnumber_types.QLCDNumber, event: gen_qevent_types.QMouseEvent): void =
  fcQLCDNumber_virtualbase_mousePressEvent(self.h, event.h)

proc miqt_exec_callback_cQLCDNumber_mousePressEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QLCDNumberVTable](vtbl)
  let self = QLCDNumber(h: self)
  let slotval1 = gen_qevent_types.QMouseEvent(h: event)
  vtbl[].mousePressEvent(self, slotval1)

proc QLCDNumbermouseReleaseEvent*(self: gen_qlcdnumber_types.QLCDNumber, event: gen_qevent_types.QMouseEvent): void =
  fcQLCDNumber_virtualbase_mouseReleaseEvent(self.h, event.h)

proc miqt_exec_callback_cQLCDNumber_mouseReleaseEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QLCDNumberVTable](vtbl)
  let self = QLCDNumber(h: self)
  let slotval1 = gen_qevent_types.QMouseEvent(h: event)
  vtbl[].mouseReleaseEvent(self, slotval1)

proc QLCDNumbermouseDoubleClickEvent*(self: gen_qlcdnumber_types.QLCDNumber, event: gen_qevent_types.QMouseEvent): void =
  fcQLCDNumber_virtualbase_mouseDoubleClickEvent(self.h, event.h)

proc miqt_exec_callback_cQLCDNumber_mouseDoubleClickEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QLCDNumberVTable](vtbl)
  let self = QLCDNumber(h: self)
  let slotval1 = gen_qevent_types.QMouseEvent(h: event)
  vtbl[].mouseDoubleClickEvent(self, slotval1)

proc QLCDNumbermouseMoveEvent*(self: gen_qlcdnumber_types.QLCDNumber, event: gen_qevent_types.QMouseEvent): void =
  fcQLCDNumber_virtualbase_mouseMoveEvent(self.h, event.h)

proc miqt_exec_callback_cQLCDNumber_mouseMoveEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QLCDNumberVTable](vtbl)
  let self = QLCDNumber(h: self)
  let slotval1 = gen_qevent_types.QMouseEvent(h: event)
  vtbl[].mouseMoveEvent(self, slotval1)

proc QLCDNumberwheelEvent*(self: gen_qlcdnumber_types.QLCDNumber, event: gen_qevent_types.QWheelEvent): void =
  fcQLCDNumber_virtualbase_wheelEvent(self.h, event.h)

proc miqt_exec_callback_cQLCDNumber_wheelEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QLCDNumberVTable](vtbl)
  let self = QLCDNumber(h: self)
  let slotval1 = gen_qevent_types.QWheelEvent(h: event)
  vtbl[].wheelEvent(self, slotval1)

proc QLCDNumberkeyPressEvent*(self: gen_qlcdnumber_types.QLCDNumber, event: gen_qevent_types.QKeyEvent): void =
  fcQLCDNumber_virtualbase_keyPressEvent(self.h, event.h)

proc miqt_exec_callback_cQLCDNumber_keyPressEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QLCDNumberVTable](vtbl)
  let self = QLCDNumber(h: self)
  let slotval1 = gen_qevent_types.QKeyEvent(h: event)
  vtbl[].keyPressEvent(self, slotval1)

proc QLCDNumberkeyReleaseEvent*(self: gen_qlcdnumber_types.QLCDNumber, event: gen_qevent_types.QKeyEvent): void =
  fcQLCDNumber_virtualbase_keyReleaseEvent(self.h, event.h)

proc miqt_exec_callback_cQLCDNumber_keyReleaseEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QLCDNumberVTable](vtbl)
  let self = QLCDNumber(h: self)
  let slotval1 = gen_qevent_types.QKeyEvent(h: event)
  vtbl[].keyReleaseEvent(self, slotval1)

proc QLCDNumberfocusInEvent*(self: gen_qlcdnumber_types.QLCDNumber, event: gen_qevent_types.QFocusEvent): void =
  fcQLCDNumber_virtualbase_focusInEvent(self.h, event.h)

proc miqt_exec_callback_cQLCDNumber_focusInEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QLCDNumberVTable](vtbl)
  let self = QLCDNumber(h: self)
  let slotval1 = gen_qevent_types.QFocusEvent(h: event)
  vtbl[].focusInEvent(self, slotval1)

proc QLCDNumberfocusOutEvent*(self: gen_qlcdnumber_types.QLCDNumber, event: gen_qevent_types.QFocusEvent): void =
  fcQLCDNumber_virtualbase_focusOutEvent(self.h, event.h)

proc miqt_exec_callback_cQLCDNumber_focusOutEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QLCDNumberVTable](vtbl)
  let self = QLCDNumber(h: self)
  let slotval1 = gen_qevent_types.QFocusEvent(h: event)
  vtbl[].focusOutEvent(self, slotval1)

proc QLCDNumberenterEvent*(self: gen_qlcdnumber_types.QLCDNumber, event: gen_qevent_types.QEnterEvent): void =
  fcQLCDNumber_virtualbase_enterEvent(self.h, event.h)

proc miqt_exec_callback_cQLCDNumber_enterEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QLCDNumberVTable](vtbl)
  let self = QLCDNumber(h: self)
  let slotval1 = gen_qevent_types.QEnterEvent(h: event)
  vtbl[].enterEvent(self, slotval1)

proc QLCDNumberleaveEvent*(self: gen_qlcdnumber_types.QLCDNumber, event: gen_qcoreevent_types.QEvent): void =
  fcQLCDNumber_virtualbase_leaveEvent(self.h, event.h)

proc miqt_exec_callback_cQLCDNumber_leaveEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QLCDNumberVTable](vtbl)
  let self = QLCDNumber(h: self)
  let slotval1 = gen_qcoreevent_types.QEvent(h: event)
  vtbl[].leaveEvent(self, slotval1)

proc QLCDNumbermoveEvent*(self: gen_qlcdnumber_types.QLCDNumber, event: gen_qevent_types.QMoveEvent): void =
  fcQLCDNumber_virtualbase_moveEvent(self.h, event.h)

proc miqt_exec_callback_cQLCDNumber_moveEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QLCDNumberVTable](vtbl)
  let self = QLCDNumber(h: self)
  let slotval1 = gen_qevent_types.QMoveEvent(h: event)
  vtbl[].moveEvent(self, slotval1)

proc QLCDNumberresizeEvent*(self: gen_qlcdnumber_types.QLCDNumber, event: gen_qevent_types.QResizeEvent): void =
  fcQLCDNumber_virtualbase_resizeEvent(self.h, event.h)

proc miqt_exec_callback_cQLCDNumber_resizeEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QLCDNumberVTable](vtbl)
  let self = QLCDNumber(h: self)
  let slotval1 = gen_qevent_types.QResizeEvent(h: event)
  vtbl[].resizeEvent(self, slotval1)

proc QLCDNumbercloseEvent*(self: gen_qlcdnumber_types.QLCDNumber, event: gen_qevent_types.QCloseEvent): void =
  fcQLCDNumber_virtualbase_closeEvent(self.h, event.h)

proc miqt_exec_callback_cQLCDNumber_closeEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QLCDNumberVTable](vtbl)
  let self = QLCDNumber(h: self)
  let slotval1 = gen_qevent_types.QCloseEvent(h: event)
  vtbl[].closeEvent(self, slotval1)

proc QLCDNumbercontextMenuEvent*(self: gen_qlcdnumber_types.QLCDNumber, event: gen_qevent_types.QContextMenuEvent): void =
  fcQLCDNumber_virtualbase_contextMenuEvent(self.h, event.h)

proc miqt_exec_callback_cQLCDNumber_contextMenuEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QLCDNumberVTable](vtbl)
  let self = QLCDNumber(h: self)
  let slotval1 = gen_qevent_types.QContextMenuEvent(h: event)
  vtbl[].contextMenuEvent(self, slotval1)

proc QLCDNumbertabletEvent*(self: gen_qlcdnumber_types.QLCDNumber, event: gen_qevent_types.QTabletEvent): void =
  fcQLCDNumber_virtualbase_tabletEvent(self.h, event.h)

proc miqt_exec_callback_cQLCDNumber_tabletEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QLCDNumberVTable](vtbl)
  let self = QLCDNumber(h: self)
  let slotval1 = gen_qevent_types.QTabletEvent(h: event)
  vtbl[].tabletEvent(self, slotval1)

proc QLCDNumberactionEvent*(self: gen_qlcdnumber_types.QLCDNumber, event: gen_qevent_types.QActionEvent): void =
  fcQLCDNumber_virtualbase_actionEvent(self.h, event.h)

proc miqt_exec_callback_cQLCDNumber_actionEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QLCDNumberVTable](vtbl)
  let self = QLCDNumber(h: self)
  let slotval1 = gen_qevent_types.QActionEvent(h: event)
  vtbl[].actionEvent(self, slotval1)

proc QLCDNumberdragEnterEvent*(self: gen_qlcdnumber_types.QLCDNumber, event: gen_qevent_types.QDragEnterEvent): void =
  fcQLCDNumber_virtualbase_dragEnterEvent(self.h, event.h)

proc miqt_exec_callback_cQLCDNumber_dragEnterEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QLCDNumberVTable](vtbl)
  let self = QLCDNumber(h: self)
  let slotval1 = gen_qevent_types.QDragEnterEvent(h: event)
  vtbl[].dragEnterEvent(self, slotval1)

proc QLCDNumberdragMoveEvent*(self: gen_qlcdnumber_types.QLCDNumber, event: gen_qevent_types.QDragMoveEvent): void =
  fcQLCDNumber_virtualbase_dragMoveEvent(self.h, event.h)

proc miqt_exec_callback_cQLCDNumber_dragMoveEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QLCDNumberVTable](vtbl)
  let self = QLCDNumber(h: self)
  let slotval1 = gen_qevent_types.QDragMoveEvent(h: event)
  vtbl[].dragMoveEvent(self, slotval1)

proc QLCDNumberdragLeaveEvent*(self: gen_qlcdnumber_types.QLCDNumber, event: gen_qevent_types.QDragLeaveEvent): void =
  fcQLCDNumber_virtualbase_dragLeaveEvent(self.h, event.h)

proc miqt_exec_callback_cQLCDNumber_dragLeaveEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QLCDNumberVTable](vtbl)
  let self = QLCDNumber(h: self)
  let slotval1 = gen_qevent_types.QDragLeaveEvent(h: event)
  vtbl[].dragLeaveEvent(self, slotval1)

proc QLCDNumberdropEvent*(self: gen_qlcdnumber_types.QLCDNumber, event: gen_qevent_types.QDropEvent): void =
  fcQLCDNumber_virtualbase_dropEvent(self.h, event.h)

proc miqt_exec_callback_cQLCDNumber_dropEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QLCDNumberVTable](vtbl)
  let self = QLCDNumber(h: self)
  let slotval1 = gen_qevent_types.QDropEvent(h: event)
  vtbl[].dropEvent(self, slotval1)

proc QLCDNumbershowEvent*(self: gen_qlcdnumber_types.QLCDNumber, event: gen_qevent_types.QShowEvent): void =
  fcQLCDNumber_virtualbase_showEvent(self.h, event.h)

proc miqt_exec_callback_cQLCDNumber_showEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QLCDNumberVTable](vtbl)
  let self = QLCDNumber(h: self)
  let slotval1 = gen_qevent_types.QShowEvent(h: event)
  vtbl[].showEvent(self, slotval1)

proc QLCDNumberhideEvent*(self: gen_qlcdnumber_types.QLCDNumber, event: gen_qevent_types.QHideEvent): void =
  fcQLCDNumber_virtualbase_hideEvent(self.h, event.h)

proc miqt_exec_callback_cQLCDNumber_hideEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QLCDNumberVTable](vtbl)
  let self = QLCDNumber(h: self)
  let slotval1 = gen_qevent_types.QHideEvent(h: event)
  vtbl[].hideEvent(self, slotval1)

proc QLCDNumbernativeEvent*(self: gen_qlcdnumber_types.QLCDNumber, eventType: seq[byte], message: pointer, resultVal: ptr uint): bool =
  fcQLCDNumber_virtualbase_nativeEvent(self.h, struct_miqt_string(data: cast[cstring](if len(eventType) == 0: nil else: unsafeAddr eventType[0]), len: csize_t(len(eventType))), message, resultVal)

proc miqt_exec_callback_cQLCDNumber_nativeEvent(vtbl: pointer, self: pointer, eventType: struct_miqt_string, message: pointer, resultVal: ptr uint): bool {.cdecl.} =
  let vtbl = cast[ptr QLCDNumberVTable](vtbl)
  let self = QLCDNumber(h: self)
  var veventType_bytearray = eventType
  var veventTypex_ret = @(toOpenArrayByte(veventType_bytearray.data, 0, int(veventType_bytearray.len)-1))
  c_free(veventType_bytearray.data)
  let slotval1 = veventTypex_ret
  let slotval2 = message
  let slotval3 = resultVal
  var virtualReturn = vtbl[].nativeEvent(self, slotval1, slotval2, slotval3)
  virtualReturn

proc QLCDNumbermetric*(self: gen_qlcdnumber_types.QLCDNumber, param1: cint): cint =
  fcQLCDNumber_virtualbase_metric(self.h, cint(param1))

proc miqt_exec_callback_cQLCDNumber_metric(vtbl: pointer, self: pointer, param1: cint): cint {.cdecl.} =
  let vtbl = cast[ptr QLCDNumberVTable](vtbl)
  let self = QLCDNumber(h: self)
  let slotval1 = cint(param1)
  var virtualReturn = vtbl[].metric(self, slotval1)
  virtualReturn

proc QLCDNumberinitPainter*(self: gen_qlcdnumber_types.QLCDNumber, painter: gen_qpainter_types.QPainter): void =
  fcQLCDNumber_virtualbase_initPainter(self.h, painter.h)

proc miqt_exec_callback_cQLCDNumber_initPainter(vtbl: pointer, self: pointer, painter: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QLCDNumberVTable](vtbl)
  let self = QLCDNumber(h: self)
  let slotval1 = gen_qpainter_types.QPainter(h: painter)
  vtbl[].initPainter(self, slotval1)

proc QLCDNumberredirected*(self: gen_qlcdnumber_types.QLCDNumber, offset: gen_qpoint_types.QPoint): gen_qpaintdevice_types.QPaintDevice =
  gen_qpaintdevice_types.QPaintDevice(h: fcQLCDNumber_virtualbase_redirected(self.h, offset.h))

proc miqt_exec_callback_cQLCDNumber_redirected(vtbl: pointer, self: pointer, offset: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QLCDNumberVTable](vtbl)
  let self = QLCDNumber(h: self)
  let slotval1 = gen_qpoint_types.QPoint(h: offset)
  var virtualReturn = vtbl[].redirected(self, slotval1)
  virtualReturn.h

proc QLCDNumbersharedPainter*(self: gen_qlcdnumber_types.QLCDNumber, ): gen_qpainter_types.QPainter =
  gen_qpainter_types.QPainter(h: fcQLCDNumber_virtualbase_sharedPainter(self.h))

proc miqt_exec_callback_cQLCDNumber_sharedPainter(vtbl: pointer, self: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QLCDNumberVTable](vtbl)
  let self = QLCDNumber(h: self)
  var virtualReturn = vtbl[].sharedPainter(self)
  virtualReturn.h

proc QLCDNumberinputMethodEvent*(self: gen_qlcdnumber_types.QLCDNumber, param1: gen_qevent_types.QInputMethodEvent): void =
  fcQLCDNumber_virtualbase_inputMethodEvent(self.h, param1.h)

proc miqt_exec_callback_cQLCDNumber_inputMethodEvent(vtbl: pointer, self: pointer, param1: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QLCDNumberVTable](vtbl)
  let self = QLCDNumber(h: self)
  let slotval1 = gen_qevent_types.QInputMethodEvent(h: param1)
  vtbl[].inputMethodEvent(self, slotval1)

proc QLCDNumberinputMethodQuery*(self: gen_qlcdnumber_types.QLCDNumber, param1: cint): gen_qvariant_types.QVariant =
  gen_qvariant_types.QVariant(h: fcQLCDNumber_virtualbase_inputMethodQuery(self.h, cint(param1)))

proc miqt_exec_callback_cQLCDNumber_inputMethodQuery(vtbl: pointer, self: pointer, param1: cint): pointer {.cdecl.} =
  let vtbl = cast[ptr QLCDNumberVTable](vtbl)
  let self = QLCDNumber(h: self)
  let slotval1 = cint(param1)
  var virtualReturn = vtbl[].inputMethodQuery(self, slotval1)
  virtualReturn.h

proc QLCDNumberfocusNextPrevChild*(self: gen_qlcdnumber_types.QLCDNumber, next: bool): bool =
  fcQLCDNumber_virtualbase_focusNextPrevChild(self.h, next)

proc miqt_exec_callback_cQLCDNumber_focusNextPrevChild(vtbl: pointer, self: pointer, next: bool): bool {.cdecl.} =
  let vtbl = cast[ptr QLCDNumberVTable](vtbl)
  let self = QLCDNumber(h: self)
  let slotval1 = next
  var virtualReturn = vtbl[].focusNextPrevChild(self, slotval1)
  virtualReturn

proc QLCDNumbereventFilter*(self: gen_qlcdnumber_types.QLCDNumber, watched: gen_qobject_types.QObject, event: gen_qcoreevent_types.QEvent): bool =
  fcQLCDNumber_virtualbase_eventFilter(self.h, watched.h, event.h)

proc miqt_exec_callback_cQLCDNumber_eventFilter(vtbl: pointer, self: pointer, watched: pointer, event: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QLCDNumberVTable](vtbl)
  let self = QLCDNumber(h: self)
  let slotval1 = gen_qobject_types.QObject(h: watched)
  let slotval2 = gen_qcoreevent_types.QEvent(h: event)
  var virtualReturn = vtbl[].eventFilter(self, slotval1, slotval2)
  virtualReturn

proc QLCDNumbertimerEvent*(self: gen_qlcdnumber_types.QLCDNumber, event: gen_qcoreevent_types.QTimerEvent): void =
  fcQLCDNumber_virtualbase_timerEvent(self.h, event.h)

proc miqt_exec_callback_cQLCDNumber_timerEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QLCDNumberVTable](vtbl)
  let self = QLCDNumber(h: self)
  let slotval1 = gen_qcoreevent_types.QTimerEvent(h: event)
  vtbl[].timerEvent(self, slotval1)

proc QLCDNumberchildEvent*(self: gen_qlcdnumber_types.QLCDNumber, event: gen_qcoreevent_types.QChildEvent): void =
  fcQLCDNumber_virtualbase_childEvent(self.h, event.h)

proc miqt_exec_callback_cQLCDNumber_childEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QLCDNumberVTable](vtbl)
  let self = QLCDNumber(h: self)
  let slotval1 = gen_qcoreevent_types.QChildEvent(h: event)
  vtbl[].childEvent(self, slotval1)

proc QLCDNumbercustomEvent*(self: gen_qlcdnumber_types.QLCDNumber, event: gen_qcoreevent_types.QEvent): void =
  fcQLCDNumber_virtualbase_customEvent(self.h, event.h)

proc miqt_exec_callback_cQLCDNumber_customEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QLCDNumberVTable](vtbl)
  let self = QLCDNumber(h: self)
  let slotval1 = gen_qcoreevent_types.QEvent(h: event)
  vtbl[].customEvent(self, slotval1)

proc QLCDNumberconnectNotify*(self: gen_qlcdnumber_types.QLCDNumber, signal: gen_qmetaobject_types.QMetaMethod): void =
  fcQLCDNumber_virtualbase_connectNotify(self.h, signal.h)

proc miqt_exec_callback_cQLCDNumber_connectNotify(vtbl: pointer, self: pointer, signal: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QLCDNumberVTable](vtbl)
  let self = QLCDNumber(h: self)
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal)
  vtbl[].connectNotify(self, slotval1)

proc QLCDNumberdisconnectNotify*(self: gen_qlcdnumber_types.QLCDNumber, signal: gen_qmetaobject_types.QMetaMethod): void =
  fcQLCDNumber_virtualbase_disconnectNotify(self.h, signal.h)

proc miqt_exec_callback_cQLCDNumber_disconnectNotify(vtbl: pointer, self: pointer, signal: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QLCDNumberVTable](vtbl)
  let self = QLCDNumber(h: self)
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal)
  vtbl[].disconnectNotify(self, slotval1)

proc create*(T: type gen_qlcdnumber_types.QLCDNumber,
    parent: gen_qwidget_types.QWidget,
    vtbl: ref QLCDNumberVTable = nil): gen_qlcdnumber_types.QLCDNumber =
  let vtbl = if vtbl == nil: new QLCDNumberVTable else: vtbl
  GC_ref(vtbl)
  vtbl.vtbl.destructor = proc(vtbl: ptr cQLCDNumberVTable, _: ptr cQLCDNumber) {.cdecl.} =
    let vtbl = cast[ref QLCDNumberVTable](vtbl)
    GC_unref(vtbl)
  if not isNil(vtbl.metaObject):
    vtbl[].vtbl.metaObject = miqt_exec_callback_cQLCDNumber_metaObject
  if not isNil(vtbl.metacast):
    vtbl[].vtbl.metacast = miqt_exec_callback_cQLCDNumber_metacast
  if not isNil(vtbl.metacall):
    vtbl[].vtbl.metacall = miqt_exec_callback_cQLCDNumber_metacall
  if not isNil(vtbl.sizeHint):
    vtbl[].vtbl.sizeHint = miqt_exec_callback_cQLCDNumber_sizeHint
  if not isNil(vtbl.event):
    vtbl[].vtbl.event = miqt_exec_callback_cQLCDNumber_event
  if not isNil(vtbl.paintEvent):
    vtbl[].vtbl.paintEvent = miqt_exec_callback_cQLCDNumber_paintEvent
  if not isNil(vtbl.changeEvent):
    vtbl[].vtbl.changeEvent = miqt_exec_callback_cQLCDNumber_changeEvent
  if not isNil(vtbl.initStyleOption):
    vtbl[].vtbl.initStyleOption = miqt_exec_callback_cQLCDNumber_initStyleOption
  if not isNil(vtbl.devType):
    vtbl[].vtbl.devType = miqt_exec_callback_cQLCDNumber_devType
  if not isNil(vtbl.setVisible):
    vtbl[].vtbl.setVisible = miqt_exec_callback_cQLCDNumber_setVisible
  if not isNil(vtbl.minimumSizeHint):
    vtbl[].vtbl.minimumSizeHint = miqt_exec_callback_cQLCDNumber_minimumSizeHint
  if not isNil(vtbl.heightForWidth):
    vtbl[].vtbl.heightForWidth = miqt_exec_callback_cQLCDNumber_heightForWidth
  if not isNil(vtbl.hasHeightForWidth):
    vtbl[].vtbl.hasHeightForWidth = miqt_exec_callback_cQLCDNumber_hasHeightForWidth
  if not isNil(vtbl.paintEngine):
    vtbl[].vtbl.paintEngine = miqt_exec_callback_cQLCDNumber_paintEngine
  if not isNil(vtbl.mousePressEvent):
    vtbl[].vtbl.mousePressEvent = miqt_exec_callback_cQLCDNumber_mousePressEvent
  if not isNil(vtbl.mouseReleaseEvent):
    vtbl[].vtbl.mouseReleaseEvent = miqt_exec_callback_cQLCDNumber_mouseReleaseEvent
  if not isNil(vtbl.mouseDoubleClickEvent):
    vtbl[].vtbl.mouseDoubleClickEvent = miqt_exec_callback_cQLCDNumber_mouseDoubleClickEvent
  if not isNil(vtbl.mouseMoveEvent):
    vtbl[].vtbl.mouseMoveEvent = miqt_exec_callback_cQLCDNumber_mouseMoveEvent
  if not isNil(vtbl.wheelEvent):
    vtbl[].vtbl.wheelEvent = miqt_exec_callback_cQLCDNumber_wheelEvent
  if not isNil(vtbl.keyPressEvent):
    vtbl[].vtbl.keyPressEvent = miqt_exec_callback_cQLCDNumber_keyPressEvent
  if not isNil(vtbl.keyReleaseEvent):
    vtbl[].vtbl.keyReleaseEvent = miqt_exec_callback_cQLCDNumber_keyReleaseEvent
  if not isNil(vtbl.focusInEvent):
    vtbl[].vtbl.focusInEvent = miqt_exec_callback_cQLCDNumber_focusInEvent
  if not isNil(vtbl.focusOutEvent):
    vtbl[].vtbl.focusOutEvent = miqt_exec_callback_cQLCDNumber_focusOutEvent
  if not isNil(vtbl.enterEvent):
    vtbl[].vtbl.enterEvent = miqt_exec_callback_cQLCDNumber_enterEvent
  if not isNil(vtbl.leaveEvent):
    vtbl[].vtbl.leaveEvent = miqt_exec_callback_cQLCDNumber_leaveEvent
  if not isNil(vtbl.moveEvent):
    vtbl[].vtbl.moveEvent = miqt_exec_callback_cQLCDNumber_moveEvent
  if not isNil(vtbl.resizeEvent):
    vtbl[].vtbl.resizeEvent = miqt_exec_callback_cQLCDNumber_resizeEvent
  if not isNil(vtbl.closeEvent):
    vtbl[].vtbl.closeEvent = miqt_exec_callback_cQLCDNumber_closeEvent
  if not isNil(vtbl.contextMenuEvent):
    vtbl[].vtbl.contextMenuEvent = miqt_exec_callback_cQLCDNumber_contextMenuEvent
  if not isNil(vtbl.tabletEvent):
    vtbl[].vtbl.tabletEvent = miqt_exec_callback_cQLCDNumber_tabletEvent
  if not isNil(vtbl.actionEvent):
    vtbl[].vtbl.actionEvent = miqt_exec_callback_cQLCDNumber_actionEvent
  if not isNil(vtbl.dragEnterEvent):
    vtbl[].vtbl.dragEnterEvent = miqt_exec_callback_cQLCDNumber_dragEnterEvent
  if not isNil(vtbl.dragMoveEvent):
    vtbl[].vtbl.dragMoveEvent = miqt_exec_callback_cQLCDNumber_dragMoveEvent
  if not isNil(vtbl.dragLeaveEvent):
    vtbl[].vtbl.dragLeaveEvent = miqt_exec_callback_cQLCDNumber_dragLeaveEvent
  if not isNil(vtbl.dropEvent):
    vtbl[].vtbl.dropEvent = miqt_exec_callback_cQLCDNumber_dropEvent
  if not isNil(vtbl.showEvent):
    vtbl[].vtbl.showEvent = miqt_exec_callback_cQLCDNumber_showEvent
  if not isNil(vtbl.hideEvent):
    vtbl[].vtbl.hideEvent = miqt_exec_callback_cQLCDNumber_hideEvent
  if not isNil(vtbl.nativeEvent):
    vtbl[].vtbl.nativeEvent = miqt_exec_callback_cQLCDNumber_nativeEvent
  if not isNil(vtbl.metric):
    vtbl[].vtbl.metric = miqt_exec_callback_cQLCDNumber_metric
  if not isNil(vtbl.initPainter):
    vtbl[].vtbl.initPainter = miqt_exec_callback_cQLCDNumber_initPainter
  if not isNil(vtbl.redirected):
    vtbl[].vtbl.redirected = miqt_exec_callback_cQLCDNumber_redirected
  if not isNil(vtbl.sharedPainter):
    vtbl[].vtbl.sharedPainter = miqt_exec_callback_cQLCDNumber_sharedPainter
  if not isNil(vtbl.inputMethodEvent):
    vtbl[].vtbl.inputMethodEvent = miqt_exec_callback_cQLCDNumber_inputMethodEvent
  if not isNil(vtbl.inputMethodQuery):
    vtbl[].vtbl.inputMethodQuery = miqt_exec_callback_cQLCDNumber_inputMethodQuery
  if not isNil(vtbl.focusNextPrevChild):
    vtbl[].vtbl.focusNextPrevChild = miqt_exec_callback_cQLCDNumber_focusNextPrevChild
  if not isNil(vtbl.eventFilter):
    vtbl[].vtbl.eventFilter = miqt_exec_callback_cQLCDNumber_eventFilter
  if not isNil(vtbl.timerEvent):
    vtbl[].vtbl.timerEvent = miqt_exec_callback_cQLCDNumber_timerEvent
  if not isNil(vtbl.childEvent):
    vtbl[].vtbl.childEvent = miqt_exec_callback_cQLCDNumber_childEvent
  if not isNil(vtbl.customEvent):
    vtbl[].vtbl.customEvent = miqt_exec_callback_cQLCDNumber_customEvent
  if not isNil(vtbl.connectNotify):
    vtbl[].vtbl.connectNotify = miqt_exec_callback_cQLCDNumber_connectNotify
  if not isNil(vtbl.disconnectNotify):
    vtbl[].vtbl.disconnectNotify = miqt_exec_callback_cQLCDNumber_disconnectNotify
  gen_qlcdnumber_types.QLCDNumber(h: fcQLCDNumber_new(addr(vtbl[]), parent.h))

proc create*(T: type gen_qlcdnumber_types.QLCDNumber,
    vtbl: ref QLCDNumberVTable = nil): gen_qlcdnumber_types.QLCDNumber =
  let vtbl = if vtbl == nil: new QLCDNumberVTable else: vtbl
  GC_ref(vtbl)
  vtbl.vtbl.destructor = proc(vtbl: ptr cQLCDNumberVTable, _: ptr cQLCDNumber) {.cdecl.} =
    let vtbl = cast[ref QLCDNumberVTable](vtbl)
    GC_unref(vtbl)
  if not isNil(vtbl.metaObject):
    vtbl[].vtbl.metaObject = miqt_exec_callback_cQLCDNumber_metaObject
  if not isNil(vtbl.metacast):
    vtbl[].vtbl.metacast = miqt_exec_callback_cQLCDNumber_metacast
  if not isNil(vtbl.metacall):
    vtbl[].vtbl.metacall = miqt_exec_callback_cQLCDNumber_metacall
  if not isNil(vtbl.sizeHint):
    vtbl[].vtbl.sizeHint = miqt_exec_callback_cQLCDNumber_sizeHint
  if not isNil(vtbl.event):
    vtbl[].vtbl.event = miqt_exec_callback_cQLCDNumber_event
  if not isNil(vtbl.paintEvent):
    vtbl[].vtbl.paintEvent = miqt_exec_callback_cQLCDNumber_paintEvent
  if not isNil(vtbl.changeEvent):
    vtbl[].vtbl.changeEvent = miqt_exec_callback_cQLCDNumber_changeEvent
  if not isNil(vtbl.initStyleOption):
    vtbl[].vtbl.initStyleOption = miqt_exec_callback_cQLCDNumber_initStyleOption
  if not isNil(vtbl.devType):
    vtbl[].vtbl.devType = miqt_exec_callback_cQLCDNumber_devType
  if not isNil(vtbl.setVisible):
    vtbl[].vtbl.setVisible = miqt_exec_callback_cQLCDNumber_setVisible
  if not isNil(vtbl.minimumSizeHint):
    vtbl[].vtbl.minimumSizeHint = miqt_exec_callback_cQLCDNumber_minimumSizeHint
  if not isNil(vtbl.heightForWidth):
    vtbl[].vtbl.heightForWidth = miqt_exec_callback_cQLCDNumber_heightForWidth
  if not isNil(vtbl.hasHeightForWidth):
    vtbl[].vtbl.hasHeightForWidth = miqt_exec_callback_cQLCDNumber_hasHeightForWidth
  if not isNil(vtbl.paintEngine):
    vtbl[].vtbl.paintEngine = miqt_exec_callback_cQLCDNumber_paintEngine
  if not isNil(vtbl.mousePressEvent):
    vtbl[].vtbl.mousePressEvent = miqt_exec_callback_cQLCDNumber_mousePressEvent
  if not isNil(vtbl.mouseReleaseEvent):
    vtbl[].vtbl.mouseReleaseEvent = miqt_exec_callback_cQLCDNumber_mouseReleaseEvent
  if not isNil(vtbl.mouseDoubleClickEvent):
    vtbl[].vtbl.mouseDoubleClickEvent = miqt_exec_callback_cQLCDNumber_mouseDoubleClickEvent
  if not isNil(vtbl.mouseMoveEvent):
    vtbl[].vtbl.mouseMoveEvent = miqt_exec_callback_cQLCDNumber_mouseMoveEvent
  if not isNil(vtbl.wheelEvent):
    vtbl[].vtbl.wheelEvent = miqt_exec_callback_cQLCDNumber_wheelEvent
  if not isNil(vtbl.keyPressEvent):
    vtbl[].vtbl.keyPressEvent = miqt_exec_callback_cQLCDNumber_keyPressEvent
  if not isNil(vtbl.keyReleaseEvent):
    vtbl[].vtbl.keyReleaseEvent = miqt_exec_callback_cQLCDNumber_keyReleaseEvent
  if not isNil(vtbl.focusInEvent):
    vtbl[].vtbl.focusInEvent = miqt_exec_callback_cQLCDNumber_focusInEvent
  if not isNil(vtbl.focusOutEvent):
    vtbl[].vtbl.focusOutEvent = miqt_exec_callback_cQLCDNumber_focusOutEvent
  if not isNil(vtbl.enterEvent):
    vtbl[].vtbl.enterEvent = miqt_exec_callback_cQLCDNumber_enterEvent
  if not isNil(vtbl.leaveEvent):
    vtbl[].vtbl.leaveEvent = miqt_exec_callback_cQLCDNumber_leaveEvent
  if not isNil(vtbl.moveEvent):
    vtbl[].vtbl.moveEvent = miqt_exec_callback_cQLCDNumber_moveEvent
  if not isNil(vtbl.resizeEvent):
    vtbl[].vtbl.resizeEvent = miqt_exec_callback_cQLCDNumber_resizeEvent
  if not isNil(vtbl.closeEvent):
    vtbl[].vtbl.closeEvent = miqt_exec_callback_cQLCDNumber_closeEvent
  if not isNil(vtbl.contextMenuEvent):
    vtbl[].vtbl.contextMenuEvent = miqt_exec_callback_cQLCDNumber_contextMenuEvent
  if not isNil(vtbl.tabletEvent):
    vtbl[].vtbl.tabletEvent = miqt_exec_callback_cQLCDNumber_tabletEvent
  if not isNil(vtbl.actionEvent):
    vtbl[].vtbl.actionEvent = miqt_exec_callback_cQLCDNumber_actionEvent
  if not isNil(vtbl.dragEnterEvent):
    vtbl[].vtbl.dragEnterEvent = miqt_exec_callback_cQLCDNumber_dragEnterEvent
  if not isNil(vtbl.dragMoveEvent):
    vtbl[].vtbl.dragMoveEvent = miqt_exec_callback_cQLCDNumber_dragMoveEvent
  if not isNil(vtbl.dragLeaveEvent):
    vtbl[].vtbl.dragLeaveEvent = miqt_exec_callback_cQLCDNumber_dragLeaveEvent
  if not isNil(vtbl.dropEvent):
    vtbl[].vtbl.dropEvent = miqt_exec_callback_cQLCDNumber_dropEvent
  if not isNil(vtbl.showEvent):
    vtbl[].vtbl.showEvent = miqt_exec_callback_cQLCDNumber_showEvent
  if not isNil(vtbl.hideEvent):
    vtbl[].vtbl.hideEvent = miqt_exec_callback_cQLCDNumber_hideEvent
  if not isNil(vtbl.nativeEvent):
    vtbl[].vtbl.nativeEvent = miqt_exec_callback_cQLCDNumber_nativeEvent
  if not isNil(vtbl.metric):
    vtbl[].vtbl.metric = miqt_exec_callback_cQLCDNumber_metric
  if not isNil(vtbl.initPainter):
    vtbl[].vtbl.initPainter = miqt_exec_callback_cQLCDNumber_initPainter
  if not isNil(vtbl.redirected):
    vtbl[].vtbl.redirected = miqt_exec_callback_cQLCDNumber_redirected
  if not isNil(vtbl.sharedPainter):
    vtbl[].vtbl.sharedPainter = miqt_exec_callback_cQLCDNumber_sharedPainter
  if not isNil(vtbl.inputMethodEvent):
    vtbl[].vtbl.inputMethodEvent = miqt_exec_callback_cQLCDNumber_inputMethodEvent
  if not isNil(vtbl.inputMethodQuery):
    vtbl[].vtbl.inputMethodQuery = miqt_exec_callback_cQLCDNumber_inputMethodQuery
  if not isNil(vtbl.focusNextPrevChild):
    vtbl[].vtbl.focusNextPrevChild = miqt_exec_callback_cQLCDNumber_focusNextPrevChild
  if not isNil(vtbl.eventFilter):
    vtbl[].vtbl.eventFilter = miqt_exec_callback_cQLCDNumber_eventFilter
  if not isNil(vtbl.timerEvent):
    vtbl[].vtbl.timerEvent = miqt_exec_callback_cQLCDNumber_timerEvent
  if not isNil(vtbl.childEvent):
    vtbl[].vtbl.childEvent = miqt_exec_callback_cQLCDNumber_childEvent
  if not isNil(vtbl.customEvent):
    vtbl[].vtbl.customEvent = miqt_exec_callback_cQLCDNumber_customEvent
  if not isNil(vtbl.connectNotify):
    vtbl[].vtbl.connectNotify = miqt_exec_callback_cQLCDNumber_connectNotify
  if not isNil(vtbl.disconnectNotify):
    vtbl[].vtbl.disconnectNotify = miqt_exec_callback_cQLCDNumber_disconnectNotify
  gen_qlcdnumber_types.QLCDNumber(h: fcQLCDNumber_new2(addr(vtbl[]), ))

proc create*(T: type gen_qlcdnumber_types.QLCDNumber,
    numDigits: cuint,
    vtbl: ref QLCDNumberVTable = nil): gen_qlcdnumber_types.QLCDNumber =
  let vtbl = if vtbl == nil: new QLCDNumberVTable else: vtbl
  GC_ref(vtbl)
  vtbl.vtbl.destructor = proc(vtbl: ptr cQLCDNumberVTable, _: ptr cQLCDNumber) {.cdecl.} =
    let vtbl = cast[ref QLCDNumberVTable](vtbl)
    GC_unref(vtbl)
  if not isNil(vtbl.metaObject):
    vtbl[].vtbl.metaObject = miqt_exec_callback_cQLCDNumber_metaObject
  if not isNil(vtbl.metacast):
    vtbl[].vtbl.metacast = miqt_exec_callback_cQLCDNumber_metacast
  if not isNil(vtbl.metacall):
    vtbl[].vtbl.metacall = miqt_exec_callback_cQLCDNumber_metacall
  if not isNil(vtbl.sizeHint):
    vtbl[].vtbl.sizeHint = miqt_exec_callback_cQLCDNumber_sizeHint
  if not isNil(vtbl.event):
    vtbl[].vtbl.event = miqt_exec_callback_cQLCDNumber_event
  if not isNil(vtbl.paintEvent):
    vtbl[].vtbl.paintEvent = miqt_exec_callback_cQLCDNumber_paintEvent
  if not isNil(vtbl.changeEvent):
    vtbl[].vtbl.changeEvent = miqt_exec_callback_cQLCDNumber_changeEvent
  if not isNil(vtbl.initStyleOption):
    vtbl[].vtbl.initStyleOption = miqt_exec_callback_cQLCDNumber_initStyleOption
  if not isNil(vtbl.devType):
    vtbl[].vtbl.devType = miqt_exec_callback_cQLCDNumber_devType
  if not isNil(vtbl.setVisible):
    vtbl[].vtbl.setVisible = miqt_exec_callback_cQLCDNumber_setVisible
  if not isNil(vtbl.minimumSizeHint):
    vtbl[].vtbl.minimumSizeHint = miqt_exec_callback_cQLCDNumber_minimumSizeHint
  if not isNil(vtbl.heightForWidth):
    vtbl[].vtbl.heightForWidth = miqt_exec_callback_cQLCDNumber_heightForWidth
  if not isNil(vtbl.hasHeightForWidth):
    vtbl[].vtbl.hasHeightForWidth = miqt_exec_callback_cQLCDNumber_hasHeightForWidth
  if not isNil(vtbl.paintEngine):
    vtbl[].vtbl.paintEngine = miqt_exec_callback_cQLCDNumber_paintEngine
  if not isNil(vtbl.mousePressEvent):
    vtbl[].vtbl.mousePressEvent = miqt_exec_callback_cQLCDNumber_mousePressEvent
  if not isNil(vtbl.mouseReleaseEvent):
    vtbl[].vtbl.mouseReleaseEvent = miqt_exec_callback_cQLCDNumber_mouseReleaseEvent
  if not isNil(vtbl.mouseDoubleClickEvent):
    vtbl[].vtbl.mouseDoubleClickEvent = miqt_exec_callback_cQLCDNumber_mouseDoubleClickEvent
  if not isNil(vtbl.mouseMoveEvent):
    vtbl[].vtbl.mouseMoveEvent = miqt_exec_callback_cQLCDNumber_mouseMoveEvent
  if not isNil(vtbl.wheelEvent):
    vtbl[].vtbl.wheelEvent = miqt_exec_callback_cQLCDNumber_wheelEvent
  if not isNil(vtbl.keyPressEvent):
    vtbl[].vtbl.keyPressEvent = miqt_exec_callback_cQLCDNumber_keyPressEvent
  if not isNil(vtbl.keyReleaseEvent):
    vtbl[].vtbl.keyReleaseEvent = miqt_exec_callback_cQLCDNumber_keyReleaseEvent
  if not isNil(vtbl.focusInEvent):
    vtbl[].vtbl.focusInEvent = miqt_exec_callback_cQLCDNumber_focusInEvent
  if not isNil(vtbl.focusOutEvent):
    vtbl[].vtbl.focusOutEvent = miqt_exec_callback_cQLCDNumber_focusOutEvent
  if not isNil(vtbl.enterEvent):
    vtbl[].vtbl.enterEvent = miqt_exec_callback_cQLCDNumber_enterEvent
  if not isNil(vtbl.leaveEvent):
    vtbl[].vtbl.leaveEvent = miqt_exec_callback_cQLCDNumber_leaveEvent
  if not isNil(vtbl.moveEvent):
    vtbl[].vtbl.moveEvent = miqt_exec_callback_cQLCDNumber_moveEvent
  if not isNil(vtbl.resizeEvent):
    vtbl[].vtbl.resizeEvent = miqt_exec_callback_cQLCDNumber_resizeEvent
  if not isNil(vtbl.closeEvent):
    vtbl[].vtbl.closeEvent = miqt_exec_callback_cQLCDNumber_closeEvent
  if not isNil(vtbl.contextMenuEvent):
    vtbl[].vtbl.contextMenuEvent = miqt_exec_callback_cQLCDNumber_contextMenuEvent
  if not isNil(vtbl.tabletEvent):
    vtbl[].vtbl.tabletEvent = miqt_exec_callback_cQLCDNumber_tabletEvent
  if not isNil(vtbl.actionEvent):
    vtbl[].vtbl.actionEvent = miqt_exec_callback_cQLCDNumber_actionEvent
  if not isNil(vtbl.dragEnterEvent):
    vtbl[].vtbl.dragEnterEvent = miqt_exec_callback_cQLCDNumber_dragEnterEvent
  if not isNil(vtbl.dragMoveEvent):
    vtbl[].vtbl.dragMoveEvent = miqt_exec_callback_cQLCDNumber_dragMoveEvent
  if not isNil(vtbl.dragLeaveEvent):
    vtbl[].vtbl.dragLeaveEvent = miqt_exec_callback_cQLCDNumber_dragLeaveEvent
  if not isNil(vtbl.dropEvent):
    vtbl[].vtbl.dropEvent = miqt_exec_callback_cQLCDNumber_dropEvent
  if not isNil(vtbl.showEvent):
    vtbl[].vtbl.showEvent = miqt_exec_callback_cQLCDNumber_showEvent
  if not isNil(vtbl.hideEvent):
    vtbl[].vtbl.hideEvent = miqt_exec_callback_cQLCDNumber_hideEvent
  if not isNil(vtbl.nativeEvent):
    vtbl[].vtbl.nativeEvent = miqt_exec_callback_cQLCDNumber_nativeEvent
  if not isNil(vtbl.metric):
    vtbl[].vtbl.metric = miqt_exec_callback_cQLCDNumber_metric
  if not isNil(vtbl.initPainter):
    vtbl[].vtbl.initPainter = miqt_exec_callback_cQLCDNumber_initPainter
  if not isNil(vtbl.redirected):
    vtbl[].vtbl.redirected = miqt_exec_callback_cQLCDNumber_redirected
  if not isNil(vtbl.sharedPainter):
    vtbl[].vtbl.sharedPainter = miqt_exec_callback_cQLCDNumber_sharedPainter
  if not isNil(vtbl.inputMethodEvent):
    vtbl[].vtbl.inputMethodEvent = miqt_exec_callback_cQLCDNumber_inputMethodEvent
  if not isNil(vtbl.inputMethodQuery):
    vtbl[].vtbl.inputMethodQuery = miqt_exec_callback_cQLCDNumber_inputMethodQuery
  if not isNil(vtbl.focusNextPrevChild):
    vtbl[].vtbl.focusNextPrevChild = miqt_exec_callback_cQLCDNumber_focusNextPrevChild
  if not isNil(vtbl.eventFilter):
    vtbl[].vtbl.eventFilter = miqt_exec_callback_cQLCDNumber_eventFilter
  if not isNil(vtbl.timerEvent):
    vtbl[].vtbl.timerEvent = miqt_exec_callback_cQLCDNumber_timerEvent
  if not isNil(vtbl.childEvent):
    vtbl[].vtbl.childEvent = miqt_exec_callback_cQLCDNumber_childEvent
  if not isNil(vtbl.customEvent):
    vtbl[].vtbl.customEvent = miqt_exec_callback_cQLCDNumber_customEvent
  if not isNil(vtbl.connectNotify):
    vtbl[].vtbl.connectNotify = miqt_exec_callback_cQLCDNumber_connectNotify
  if not isNil(vtbl.disconnectNotify):
    vtbl[].vtbl.disconnectNotify = miqt_exec_callback_cQLCDNumber_disconnectNotify
  gen_qlcdnumber_types.QLCDNumber(h: fcQLCDNumber_new3(addr(vtbl[]), numDigits))

proc create*(T: type gen_qlcdnumber_types.QLCDNumber,
    numDigits: cuint, parent: gen_qwidget_types.QWidget,
    vtbl: ref QLCDNumberVTable = nil): gen_qlcdnumber_types.QLCDNumber =
  let vtbl = if vtbl == nil: new QLCDNumberVTable else: vtbl
  GC_ref(vtbl)
  vtbl.vtbl.destructor = proc(vtbl: ptr cQLCDNumberVTable, _: ptr cQLCDNumber) {.cdecl.} =
    let vtbl = cast[ref QLCDNumberVTable](vtbl)
    GC_unref(vtbl)
  if not isNil(vtbl.metaObject):
    vtbl[].vtbl.metaObject = miqt_exec_callback_cQLCDNumber_metaObject
  if not isNil(vtbl.metacast):
    vtbl[].vtbl.metacast = miqt_exec_callback_cQLCDNumber_metacast
  if not isNil(vtbl.metacall):
    vtbl[].vtbl.metacall = miqt_exec_callback_cQLCDNumber_metacall
  if not isNil(vtbl.sizeHint):
    vtbl[].vtbl.sizeHint = miqt_exec_callback_cQLCDNumber_sizeHint
  if not isNil(vtbl.event):
    vtbl[].vtbl.event = miqt_exec_callback_cQLCDNumber_event
  if not isNil(vtbl.paintEvent):
    vtbl[].vtbl.paintEvent = miqt_exec_callback_cQLCDNumber_paintEvent
  if not isNil(vtbl.changeEvent):
    vtbl[].vtbl.changeEvent = miqt_exec_callback_cQLCDNumber_changeEvent
  if not isNil(vtbl.initStyleOption):
    vtbl[].vtbl.initStyleOption = miqt_exec_callback_cQLCDNumber_initStyleOption
  if not isNil(vtbl.devType):
    vtbl[].vtbl.devType = miqt_exec_callback_cQLCDNumber_devType
  if not isNil(vtbl.setVisible):
    vtbl[].vtbl.setVisible = miqt_exec_callback_cQLCDNumber_setVisible
  if not isNil(vtbl.minimumSizeHint):
    vtbl[].vtbl.minimumSizeHint = miqt_exec_callback_cQLCDNumber_minimumSizeHint
  if not isNil(vtbl.heightForWidth):
    vtbl[].vtbl.heightForWidth = miqt_exec_callback_cQLCDNumber_heightForWidth
  if not isNil(vtbl.hasHeightForWidth):
    vtbl[].vtbl.hasHeightForWidth = miqt_exec_callback_cQLCDNumber_hasHeightForWidth
  if not isNil(vtbl.paintEngine):
    vtbl[].vtbl.paintEngine = miqt_exec_callback_cQLCDNumber_paintEngine
  if not isNil(vtbl.mousePressEvent):
    vtbl[].vtbl.mousePressEvent = miqt_exec_callback_cQLCDNumber_mousePressEvent
  if not isNil(vtbl.mouseReleaseEvent):
    vtbl[].vtbl.mouseReleaseEvent = miqt_exec_callback_cQLCDNumber_mouseReleaseEvent
  if not isNil(vtbl.mouseDoubleClickEvent):
    vtbl[].vtbl.mouseDoubleClickEvent = miqt_exec_callback_cQLCDNumber_mouseDoubleClickEvent
  if not isNil(vtbl.mouseMoveEvent):
    vtbl[].vtbl.mouseMoveEvent = miqt_exec_callback_cQLCDNumber_mouseMoveEvent
  if not isNil(vtbl.wheelEvent):
    vtbl[].vtbl.wheelEvent = miqt_exec_callback_cQLCDNumber_wheelEvent
  if not isNil(vtbl.keyPressEvent):
    vtbl[].vtbl.keyPressEvent = miqt_exec_callback_cQLCDNumber_keyPressEvent
  if not isNil(vtbl.keyReleaseEvent):
    vtbl[].vtbl.keyReleaseEvent = miqt_exec_callback_cQLCDNumber_keyReleaseEvent
  if not isNil(vtbl.focusInEvent):
    vtbl[].vtbl.focusInEvent = miqt_exec_callback_cQLCDNumber_focusInEvent
  if not isNil(vtbl.focusOutEvent):
    vtbl[].vtbl.focusOutEvent = miqt_exec_callback_cQLCDNumber_focusOutEvent
  if not isNil(vtbl.enterEvent):
    vtbl[].vtbl.enterEvent = miqt_exec_callback_cQLCDNumber_enterEvent
  if not isNil(vtbl.leaveEvent):
    vtbl[].vtbl.leaveEvent = miqt_exec_callback_cQLCDNumber_leaveEvent
  if not isNil(vtbl.moveEvent):
    vtbl[].vtbl.moveEvent = miqt_exec_callback_cQLCDNumber_moveEvent
  if not isNil(vtbl.resizeEvent):
    vtbl[].vtbl.resizeEvent = miqt_exec_callback_cQLCDNumber_resizeEvent
  if not isNil(vtbl.closeEvent):
    vtbl[].vtbl.closeEvent = miqt_exec_callback_cQLCDNumber_closeEvent
  if not isNil(vtbl.contextMenuEvent):
    vtbl[].vtbl.contextMenuEvent = miqt_exec_callback_cQLCDNumber_contextMenuEvent
  if not isNil(vtbl.tabletEvent):
    vtbl[].vtbl.tabletEvent = miqt_exec_callback_cQLCDNumber_tabletEvent
  if not isNil(vtbl.actionEvent):
    vtbl[].vtbl.actionEvent = miqt_exec_callback_cQLCDNumber_actionEvent
  if not isNil(vtbl.dragEnterEvent):
    vtbl[].vtbl.dragEnterEvent = miqt_exec_callback_cQLCDNumber_dragEnterEvent
  if not isNil(vtbl.dragMoveEvent):
    vtbl[].vtbl.dragMoveEvent = miqt_exec_callback_cQLCDNumber_dragMoveEvent
  if not isNil(vtbl.dragLeaveEvent):
    vtbl[].vtbl.dragLeaveEvent = miqt_exec_callback_cQLCDNumber_dragLeaveEvent
  if not isNil(vtbl.dropEvent):
    vtbl[].vtbl.dropEvent = miqt_exec_callback_cQLCDNumber_dropEvent
  if not isNil(vtbl.showEvent):
    vtbl[].vtbl.showEvent = miqt_exec_callback_cQLCDNumber_showEvent
  if not isNil(vtbl.hideEvent):
    vtbl[].vtbl.hideEvent = miqt_exec_callback_cQLCDNumber_hideEvent
  if not isNil(vtbl.nativeEvent):
    vtbl[].vtbl.nativeEvent = miqt_exec_callback_cQLCDNumber_nativeEvent
  if not isNil(vtbl.metric):
    vtbl[].vtbl.metric = miqt_exec_callback_cQLCDNumber_metric
  if not isNil(vtbl.initPainter):
    vtbl[].vtbl.initPainter = miqt_exec_callback_cQLCDNumber_initPainter
  if not isNil(vtbl.redirected):
    vtbl[].vtbl.redirected = miqt_exec_callback_cQLCDNumber_redirected
  if not isNil(vtbl.sharedPainter):
    vtbl[].vtbl.sharedPainter = miqt_exec_callback_cQLCDNumber_sharedPainter
  if not isNil(vtbl.inputMethodEvent):
    vtbl[].vtbl.inputMethodEvent = miqt_exec_callback_cQLCDNumber_inputMethodEvent
  if not isNil(vtbl.inputMethodQuery):
    vtbl[].vtbl.inputMethodQuery = miqt_exec_callback_cQLCDNumber_inputMethodQuery
  if not isNil(vtbl.focusNextPrevChild):
    vtbl[].vtbl.focusNextPrevChild = miqt_exec_callback_cQLCDNumber_focusNextPrevChild
  if not isNil(vtbl.eventFilter):
    vtbl[].vtbl.eventFilter = miqt_exec_callback_cQLCDNumber_eventFilter
  if not isNil(vtbl.timerEvent):
    vtbl[].vtbl.timerEvent = miqt_exec_callback_cQLCDNumber_timerEvent
  if not isNil(vtbl.childEvent):
    vtbl[].vtbl.childEvent = miqt_exec_callback_cQLCDNumber_childEvent
  if not isNil(vtbl.customEvent):
    vtbl[].vtbl.customEvent = miqt_exec_callback_cQLCDNumber_customEvent
  if not isNil(vtbl.connectNotify):
    vtbl[].vtbl.connectNotify = miqt_exec_callback_cQLCDNumber_connectNotify
  if not isNil(vtbl.disconnectNotify):
    vtbl[].vtbl.disconnectNotify = miqt_exec_callback_cQLCDNumber_disconnectNotify
  gen_qlcdnumber_types.QLCDNumber(h: fcQLCDNumber_new4(addr(vtbl[]), numDigits, parent.h))

proc staticMetaObject*(_: type gen_qlcdnumber_types.QLCDNumber): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQLCDNumber_staticMetaObject())
proc delete*(self: gen_qlcdnumber_types.QLCDNumber) =
  fcQLCDNumber_delete(self.h)
