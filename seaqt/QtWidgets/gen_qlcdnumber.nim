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


{.compile("gen_qlcdnumber.cpp", QtWidgetsCFlags).}


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

proc fcQLCDNumber_metaObject(self: pointer): pointer {.importc: "QLCDNumber_metaObject".}
proc fcQLCDNumber_metacast(self: pointer, param1: cstring): pointer {.importc: "QLCDNumber_metacast".}
proc fcQLCDNumber_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.importc: "QLCDNumber_metacall".}
proc fcQLCDNumber_tr(s: cstring): struct_miqt_string {.importc: "QLCDNumber_tr".}
proc fcQLCDNumber_smallDecimalPoint(self: pointer): bool {.importc: "QLCDNumber_smallDecimalPoint".}
proc fcQLCDNumber_digitCount(self: pointer): cint {.importc: "QLCDNumber_digitCount".}
proc fcQLCDNumber_setDigitCount(self: pointer, nDigits: cint): void {.importc: "QLCDNumber_setDigitCount".}
proc fcQLCDNumber_checkOverflow(self: pointer, num: float64): bool {.importc: "QLCDNumber_checkOverflow".}
proc fcQLCDNumber_checkOverflowWithNum(self: pointer, num: cint): bool {.importc: "QLCDNumber_checkOverflowWithNum".}
proc fcQLCDNumber_mode(self: pointer): cint {.importc: "QLCDNumber_mode".}
proc fcQLCDNumber_setMode(self: pointer, mode: cint): void {.importc: "QLCDNumber_setMode".}
proc fcQLCDNumber_segmentStyle(self: pointer): cint {.importc: "QLCDNumber_segmentStyle".}
proc fcQLCDNumber_setSegmentStyle(self: pointer, segmentStyle: cint): void {.importc: "QLCDNumber_setSegmentStyle".}
proc fcQLCDNumber_value(self: pointer): float64 {.importc: "QLCDNumber_value".}
proc fcQLCDNumber_intValue(self: pointer): cint {.importc: "QLCDNumber_intValue".}
proc fcQLCDNumber_sizeHint(self: pointer): pointer {.importc: "QLCDNumber_sizeHint".}
proc fcQLCDNumber_display(self: pointer, str: struct_miqt_string): void {.importc: "QLCDNumber_display".}
proc fcQLCDNumber_displayWithNum(self: pointer, num: cint): void {.importc: "QLCDNumber_displayWithNum".}
proc fcQLCDNumber_display2(self: pointer, num: float64): void {.importc: "QLCDNumber_display2".}
proc fcQLCDNumber_setHexMode(self: pointer): void {.importc: "QLCDNumber_setHexMode".}
proc fcQLCDNumber_setDecMode(self: pointer): void {.importc: "QLCDNumber_setDecMode".}
proc fcQLCDNumber_setOctMode(self: pointer): void {.importc: "QLCDNumber_setOctMode".}
proc fcQLCDNumber_setBinMode(self: pointer): void {.importc: "QLCDNumber_setBinMode".}
proc fcQLCDNumber_setSmallDecimalPoint(self: pointer, smallDecimalPoint: bool): void {.importc: "QLCDNumber_setSmallDecimalPoint".}
proc fcQLCDNumber_overflow(self: pointer): void {.importc: "QLCDNumber_overflow".}
proc fcQLCDNumber_connect_overflow(self: pointer, slot: int, callback: proc (slot: int) {.cdecl.}, release: proc(slot: int) {.cdecl.}) {.importc: "QLCDNumber_connect_overflow".}
proc fcQLCDNumber_tr2(s: cstring, c: cstring): struct_miqt_string {.importc: "QLCDNumber_tr2".}
proc fcQLCDNumber_tr3(s: cstring, c: cstring, n: cint): struct_miqt_string {.importc: "QLCDNumber_tr3".}
proc fcQLCDNumber_vtbl(self: pointer): pointer {.importc: "QLCDNumber_vtbl".}
proc fcQLCDNumber_vdata(self: pointer): pointer {.importc: "QLCDNumber_vdata".}

type cQLCDNumberVTable {.pure.} = object
  destructor*: proc(self: pointer) {.cdecl, raises:[], gcsafe.}
  metaObject*: proc(self: pointer): pointer {.cdecl, raises: [], gcsafe.}
  metacast*: proc(self: pointer, param1: cstring): pointer {.cdecl, raises: [], gcsafe.}
  metacall*: proc(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.cdecl, raises: [], gcsafe.}
  sizeHint*: proc(self: pointer): pointer {.cdecl, raises: [], gcsafe.}
  event*: proc(self: pointer, e: pointer): bool {.cdecl, raises: [], gcsafe.}
  paintEvent*: proc(self: pointer, param1: pointer): void {.cdecl, raises: [], gcsafe.}
  changeEvent*: proc(self: pointer, param1: pointer): void {.cdecl, raises: [], gcsafe.}
  initStyleOption*: proc(self: pointer, option: pointer): void {.cdecl, raises: [], gcsafe.}
  devType*: proc(self: pointer): cint {.cdecl, raises: [], gcsafe.}
  setVisible*: proc(self: pointer, visible: bool): void {.cdecl, raises: [], gcsafe.}
  minimumSizeHint*: proc(self: pointer): pointer {.cdecl, raises: [], gcsafe.}
  heightForWidth*: proc(self: pointer, param1: cint): cint {.cdecl, raises: [], gcsafe.}
  hasHeightForWidth*: proc(self: pointer): bool {.cdecl, raises: [], gcsafe.}
  paintEngine*: proc(self: pointer): pointer {.cdecl, raises: [], gcsafe.}
  mousePressEvent*: proc(self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  mouseReleaseEvent*: proc(self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  mouseDoubleClickEvent*: proc(self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  mouseMoveEvent*: proc(self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  wheelEvent*: proc(self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  keyPressEvent*: proc(self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  keyReleaseEvent*: proc(self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  focusInEvent*: proc(self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  focusOutEvent*: proc(self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  enterEvent*: proc(self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  leaveEvent*: proc(self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  moveEvent*: proc(self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  resizeEvent*: proc(self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  closeEvent*: proc(self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  contextMenuEvent*: proc(self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  tabletEvent*: proc(self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  actionEvent*: proc(self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  dragEnterEvent*: proc(self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  dragMoveEvent*: proc(self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  dragLeaveEvent*: proc(self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  dropEvent*: proc(self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  showEvent*: proc(self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  hideEvent*: proc(self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  nativeEvent*: proc(self: pointer, eventType: struct_miqt_string, message: pointer, resultVal: ptr uint): bool {.cdecl, raises: [], gcsafe.}
  metric*: proc(self: pointer, param1: cint): cint {.cdecl, raises: [], gcsafe.}
  initPainter*: proc(self: pointer, painter: pointer): void {.cdecl, raises: [], gcsafe.}
  redirected*: proc(self: pointer, offset: pointer): pointer {.cdecl, raises: [], gcsafe.}
  sharedPainter*: proc(self: pointer): pointer {.cdecl, raises: [], gcsafe.}
  inputMethodEvent*: proc(self: pointer, param1: pointer): void {.cdecl, raises: [], gcsafe.}
  inputMethodQuery*: proc(self: pointer, param1: cint): pointer {.cdecl, raises: [], gcsafe.}
  focusNextPrevChild*: proc(self: pointer, next: bool): bool {.cdecl, raises: [], gcsafe.}
  eventFilter*: proc(self: pointer, watched: pointer, event: pointer): bool {.cdecl, raises: [], gcsafe.}
  timerEvent*: proc(self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  childEvent*: proc(self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  customEvent*: proc(self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  connectNotify*: proc(self: pointer, signal: pointer): void {.cdecl, raises: [], gcsafe.}
  disconnectNotify*: proc(self: pointer, signal: pointer): void {.cdecl, raises: [], gcsafe.}
proc fcQLCDNumber_virtualbase_metaObject(self: pointer): pointer {.importc: "QLCDNumber_virtualbase_metaObject".}
proc fcQLCDNumber_virtualbase_metacast(self: pointer, param1: cstring): pointer {.importc: "QLCDNumber_virtualbase_metacast".}
proc fcQLCDNumber_virtualbase_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.importc: "QLCDNumber_virtualbase_metacall".}
proc fcQLCDNumber_virtualbase_sizeHint(self: pointer): pointer {.importc: "QLCDNumber_virtualbase_sizeHint".}
proc fcQLCDNumber_virtualbase_event(self: pointer, e: pointer): bool {.importc: "QLCDNumber_virtualbase_event".}
proc fcQLCDNumber_virtualbase_paintEvent(self: pointer, param1: pointer): void {.importc: "QLCDNumber_virtualbase_paintEvent".}
proc fcQLCDNumber_virtualbase_changeEvent(self: pointer, param1: pointer): void {.importc: "QLCDNumber_virtualbase_changeEvent".}
proc fcQLCDNumber_virtualbase_initStyleOption(self: pointer, option: pointer): void {.importc: "QLCDNumber_virtualbase_initStyleOption".}
proc fcQLCDNumber_virtualbase_devType(self: pointer): cint {.importc: "QLCDNumber_virtualbase_devType".}
proc fcQLCDNumber_virtualbase_setVisible(self: pointer, visible: bool): void {.importc: "QLCDNumber_virtualbase_setVisible".}
proc fcQLCDNumber_virtualbase_minimumSizeHint(self: pointer): pointer {.importc: "QLCDNumber_virtualbase_minimumSizeHint".}
proc fcQLCDNumber_virtualbase_heightForWidth(self: pointer, param1: cint): cint {.importc: "QLCDNumber_virtualbase_heightForWidth".}
proc fcQLCDNumber_virtualbase_hasHeightForWidth(self: pointer): bool {.importc: "QLCDNumber_virtualbase_hasHeightForWidth".}
proc fcQLCDNumber_virtualbase_paintEngine(self: pointer): pointer {.importc: "QLCDNumber_virtualbase_paintEngine".}
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
proc fcQLCDNumber_virtualbase_sharedPainter(self: pointer): pointer {.importc: "QLCDNumber_virtualbase_sharedPainter".}
proc fcQLCDNumber_virtualbase_inputMethodEvent(self: pointer, param1: pointer): void {.importc: "QLCDNumber_virtualbase_inputMethodEvent".}
proc fcQLCDNumber_virtualbase_inputMethodQuery(self: pointer, param1: cint): pointer {.importc: "QLCDNumber_virtualbase_inputMethodQuery".}
proc fcQLCDNumber_virtualbase_focusNextPrevChild(self: pointer, next: bool): bool {.importc: "QLCDNumber_virtualbase_focusNextPrevChild".}
proc fcQLCDNumber_virtualbase_eventFilter(self: pointer, watched: pointer, event: pointer): bool {.importc: "QLCDNumber_virtualbase_eventFilter".}
proc fcQLCDNumber_virtualbase_timerEvent(self: pointer, event: pointer): void {.importc: "QLCDNumber_virtualbase_timerEvent".}
proc fcQLCDNumber_virtualbase_childEvent(self: pointer, event: pointer): void {.importc: "QLCDNumber_virtualbase_childEvent".}
proc fcQLCDNumber_virtualbase_customEvent(self: pointer, event: pointer): void {.importc: "QLCDNumber_virtualbase_customEvent".}
proc fcQLCDNumber_virtualbase_connectNotify(self: pointer, signal: pointer): void {.importc: "QLCDNumber_virtualbase_connectNotify".}
proc fcQLCDNumber_virtualbase_disconnectNotify(self: pointer, signal: pointer): void {.importc: "QLCDNumber_virtualbase_disconnectNotify".}
proc fcQLCDNumber_protectedbase_drawFrame(self: pointer, param1: pointer): void {.importc: "QLCDNumber_protectedbase_drawFrame".}
proc fcQLCDNumber_protectedbase_updateMicroFocus(self: pointer): void {.importc: "QLCDNumber_protectedbase_updateMicroFocus".}
proc fcQLCDNumber_protectedbase_create(self: pointer): void {.importc: "QLCDNumber_protectedbase_create".}
proc fcQLCDNumber_protectedbase_destroy(self: pointer): void {.importc: "QLCDNumber_protectedbase_destroy".}
proc fcQLCDNumber_protectedbase_focusNextChild(self: pointer): bool {.importc: "QLCDNumber_protectedbase_focusNextChild".}
proc fcQLCDNumber_protectedbase_focusPreviousChild(self: pointer): bool {.importc: "QLCDNumber_protectedbase_focusPreviousChild".}
proc fcQLCDNumber_protectedbase_sender(self: pointer): pointer {.importc: "QLCDNumber_protectedbase_sender".}
proc fcQLCDNumber_protectedbase_senderSignalIndex(self: pointer): cint {.importc: "QLCDNumber_protectedbase_senderSignalIndex".}
proc fcQLCDNumber_protectedbase_receivers(self: pointer, signal: cstring): cint {.importc: "QLCDNumber_protectedbase_receivers".}
proc fcQLCDNumber_protectedbase_isSignalConnected(self: pointer, signal: pointer): bool {.importc: "QLCDNumber_protectedbase_isSignalConnected".}
proc fcQLCDNumber_new(vtbl, vdata: pointer, parent: pointer): ptr cQLCDNumber {.importc: "QLCDNumber_new".}
proc fcQLCDNumber_new2(vtbl, vdata: pointer): ptr cQLCDNumber {.importc: "QLCDNumber_new2".}
proc fcQLCDNumber_new3(vtbl, vdata: pointer, numDigits: cuint): ptr cQLCDNumber {.importc: "QLCDNumber_new3".}
proc fcQLCDNumber_new4(vtbl, vdata: pointer, numDigits: cuint, parent: pointer): ptr cQLCDNumber {.importc: "QLCDNumber_new4".}
proc fcQLCDNumber_staticMetaObject(): pointer {.importc: "QLCDNumber_staticMetaObject".}

proc metaObject*(self: gen_qlcdnumber_types.QLCDNumber): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQLCDNumber_metaObject(self.h), owned: false)

proc metacast*(self: gen_qlcdnumber_types.QLCDNumber, param1: cstring): pointer =
  fcQLCDNumber_metacast(self.h, param1)

proc metacall*(self: gen_qlcdnumber_types.QLCDNumber, param1: cint, param2: cint, param3: pointer): cint =
  fcQLCDNumber_metacall(self.h, cint(param1), param2, param3)

proc tr*(_: type gen_qlcdnumber_types.QLCDNumber, s: cstring): string =
  let v_ms = fcQLCDNumber_tr(s)
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

proc smallDecimalPoint*(self: gen_qlcdnumber_types.QLCDNumber): bool =
  fcQLCDNumber_smallDecimalPoint(self.h)

proc digitCount*(self: gen_qlcdnumber_types.QLCDNumber): cint =
  fcQLCDNumber_digitCount(self.h)

proc setDigitCount*(self: gen_qlcdnumber_types.QLCDNumber, nDigits: cint): void =
  fcQLCDNumber_setDigitCount(self.h, nDigits)

proc checkOverflow*(self: gen_qlcdnumber_types.QLCDNumber, num: float64): bool =
  fcQLCDNumber_checkOverflow(self.h, num)

proc checkOverflow*(self: gen_qlcdnumber_types.QLCDNumber, num: cint): bool =
  fcQLCDNumber_checkOverflowWithNum(self.h, num)

proc mode*(self: gen_qlcdnumber_types.QLCDNumber): cint =
  cint(fcQLCDNumber_mode(self.h))

proc setMode*(self: gen_qlcdnumber_types.QLCDNumber, mode: cint): void =
  fcQLCDNumber_setMode(self.h, cint(mode))

proc segmentStyle*(self: gen_qlcdnumber_types.QLCDNumber): cint =
  cint(fcQLCDNumber_segmentStyle(self.h))

proc setSegmentStyle*(self: gen_qlcdnumber_types.QLCDNumber, segmentStyle: cint): void =
  fcQLCDNumber_setSegmentStyle(self.h, cint(segmentStyle))

proc value*(self: gen_qlcdnumber_types.QLCDNumber): float64 =
  fcQLCDNumber_value(self.h)

proc intValue*(self: gen_qlcdnumber_types.QLCDNumber): cint =
  fcQLCDNumber_intValue(self.h)

proc sizeHint*(self: gen_qlcdnumber_types.QLCDNumber): gen_qsize_types.QSize =
  gen_qsize_types.QSize(h: fcQLCDNumber_sizeHint(self.h), owned: true)

proc display*(self: gen_qlcdnumber_types.QLCDNumber, str: openArray[char]): void =
  fcQLCDNumber_display(self.h, struct_miqt_string(data: if len(str) > 0: addr str[0] else: nil, len: csize_t(len(str))))

proc display*(self: gen_qlcdnumber_types.QLCDNumber, num: cint): void =
  fcQLCDNumber_displayWithNum(self.h, num)

proc display*(self: gen_qlcdnumber_types.QLCDNumber, num: float64): void =
  fcQLCDNumber_display2(self.h, num)

proc setHexMode*(self: gen_qlcdnumber_types.QLCDNumber): void =
  fcQLCDNumber_setHexMode(self.h)

proc setDecMode*(self: gen_qlcdnumber_types.QLCDNumber): void =
  fcQLCDNumber_setDecMode(self.h)

proc setOctMode*(self: gen_qlcdnumber_types.QLCDNumber): void =
  fcQLCDNumber_setOctMode(self.h)

proc setBinMode*(self: gen_qlcdnumber_types.QLCDNumber): void =
  fcQLCDNumber_setBinMode(self.h)

proc setSmallDecimalPoint*(self: gen_qlcdnumber_types.QLCDNumber, smallDecimalPoint: bool): void =
  fcQLCDNumber_setSmallDecimalPoint(self.h, smallDecimalPoint)

proc overflow*(self: gen_qlcdnumber_types.QLCDNumber): void =
  fcQLCDNumber_overflow(self.h)

type QLCDNumberoverflowSlot* = proc()
proc fcQLCDNumber_slot_callback_overflow(slot: int) {.cdecl.} =
  let nimfunc = cast[ptr QLCDNumberoverflowSlot](cast[pointer](slot))
  nimfunc[]()

proc fcQLCDNumber_slot_callback_overflow_release(slot: int) {.cdecl.} =
  let nimfunc = cast[ref QLCDNumberoverflowSlot](cast[pointer](slot))
  GC_unref(nimfunc)

proc onOverflow*(self: gen_qlcdnumber_types.QLCDNumber, slot: QLCDNumberoverflowSlot) =
  var tmp = new QLCDNumberoverflowSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQLCDNumber_connect_overflow(self.h, cast[int](addr tmp[]), fcQLCDNumber_slot_callback_overflow, fcQLCDNumber_slot_callback_overflow_release)

proc tr*(_: type gen_qlcdnumber_types.QLCDNumber, s: cstring, c: cstring): string =
  let v_ms = fcQLCDNumber_tr2(s, c)
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

proc tr*(_: type gen_qlcdnumber_types.QLCDNumber, s: cstring, c: cstring, n: cint): string =
  let v_ms = fcQLCDNumber_tr3(s, c, n)
  let vx_ret = string.fromBytes(v_ms)
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
type QLCDNumbernativeEventProc* = proc(self: QLCDNumber, eventType: openArray[byte], message: pointer, resultVal: ptr uint): bool {.raises: [], gcsafe.}
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

type QLCDNumberVTable* {.inheritable, pure.} = object
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

proc QLCDNumbermetaObject*(self: gen_qlcdnumber_types.QLCDNumber): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQLCDNumber_virtualbase_metaObject(self.h), owned: false)

proc QLCDNumbermetacast*(self: gen_qlcdnumber_types.QLCDNumber, param1: cstring): pointer =
  fcQLCDNumber_virtualbase_metacast(self.h, param1)

proc QLCDNumbermetacall*(self: gen_qlcdnumber_types.QLCDNumber, param1: cint, param2: cint, param3: pointer): cint =
  fcQLCDNumber_virtualbase_metacall(self.h, cint(param1), param2, param3)

proc QLCDNumbersizeHint*(self: gen_qlcdnumber_types.QLCDNumber): gen_qsize_types.QSize =
  gen_qsize_types.QSize(h: fcQLCDNumber_virtualbase_sizeHint(self.h), owned: true)

proc QLCDNumberevent*(self: gen_qlcdnumber_types.QLCDNumber, e: gen_qcoreevent_types.QEvent): bool =
  fcQLCDNumber_virtualbase_event(self.h, e.h)

proc QLCDNumberpaintEvent*(self: gen_qlcdnumber_types.QLCDNumber, param1: gen_qevent_types.QPaintEvent): void =
  fcQLCDNumber_virtualbase_paintEvent(self.h, param1.h)

proc QLCDNumberchangeEvent*(self: gen_qlcdnumber_types.QLCDNumber, param1: gen_qcoreevent_types.QEvent): void =
  fcQLCDNumber_virtualbase_changeEvent(self.h, param1.h)

proc QLCDNumberinitStyleOption*(self: gen_qlcdnumber_types.QLCDNumber, option: gen_qstyleoption_types.QStyleOptionFrame): void =
  fcQLCDNumber_virtualbase_initStyleOption(self.h, option.h)

proc QLCDNumberdevType*(self: gen_qlcdnumber_types.QLCDNumber): cint =
  fcQLCDNumber_virtualbase_devType(self.h)

proc QLCDNumbersetVisible*(self: gen_qlcdnumber_types.QLCDNumber, visible: bool): void =
  fcQLCDNumber_virtualbase_setVisible(self.h, visible)

proc QLCDNumberminimumSizeHint*(self: gen_qlcdnumber_types.QLCDNumber): gen_qsize_types.QSize =
  gen_qsize_types.QSize(h: fcQLCDNumber_virtualbase_minimumSizeHint(self.h), owned: true)

proc QLCDNumberheightForWidth*(self: gen_qlcdnumber_types.QLCDNumber, param1: cint): cint =
  fcQLCDNumber_virtualbase_heightForWidth(self.h, param1)

proc QLCDNumberhasHeightForWidth*(self: gen_qlcdnumber_types.QLCDNumber): bool =
  fcQLCDNumber_virtualbase_hasHeightForWidth(self.h)

proc QLCDNumberpaintEngine*(self: gen_qlcdnumber_types.QLCDNumber): gen_qpaintengine_types.QPaintEngine =
  gen_qpaintengine_types.QPaintEngine(h: fcQLCDNumber_virtualbase_paintEngine(self.h), owned: false)

proc QLCDNumbermousePressEvent*(self: gen_qlcdnumber_types.QLCDNumber, event: gen_qevent_types.QMouseEvent): void =
  fcQLCDNumber_virtualbase_mousePressEvent(self.h, event.h)

proc QLCDNumbermouseReleaseEvent*(self: gen_qlcdnumber_types.QLCDNumber, event: gen_qevent_types.QMouseEvent): void =
  fcQLCDNumber_virtualbase_mouseReleaseEvent(self.h, event.h)

proc QLCDNumbermouseDoubleClickEvent*(self: gen_qlcdnumber_types.QLCDNumber, event: gen_qevent_types.QMouseEvent): void =
  fcQLCDNumber_virtualbase_mouseDoubleClickEvent(self.h, event.h)

proc QLCDNumbermouseMoveEvent*(self: gen_qlcdnumber_types.QLCDNumber, event: gen_qevent_types.QMouseEvent): void =
  fcQLCDNumber_virtualbase_mouseMoveEvent(self.h, event.h)

proc QLCDNumberwheelEvent*(self: gen_qlcdnumber_types.QLCDNumber, event: gen_qevent_types.QWheelEvent): void =
  fcQLCDNumber_virtualbase_wheelEvent(self.h, event.h)

proc QLCDNumberkeyPressEvent*(self: gen_qlcdnumber_types.QLCDNumber, event: gen_qevent_types.QKeyEvent): void =
  fcQLCDNumber_virtualbase_keyPressEvent(self.h, event.h)

proc QLCDNumberkeyReleaseEvent*(self: gen_qlcdnumber_types.QLCDNumber, event: gen_qevent_types.QKeyEvent): void =
  fcQLCDNumber_virtualbase_keyReleaseEvent(self.h, event.h)

proc QLCDNumberfocusInEvent*(self: gen_qlcdnumber_types.QLCDNumber, event: gen_qevent_types.QFocusEvent): void =
  fcQLCDNumber_virtualbase_focusInEvent(self.h, event.h)

proc QLCDNumberfocusOutEvent*(self: gen_qlcdnumber_types.QLCDNumber, event: gen_qevent_types.QFocusEvent): void =
  fcQLCDNumber_virtualbase_focusOutEvent(self.h, event.h)

proc QLCDNumberenterEvent*(self: gen_qlcdnumber_types.QLCDNumber, event: gen_qevent_types.QEnterEvent): void =
  fcQLCDNumber_virtualbase_enterEvent(self.h, event.h)

proc QLCDNumberleaveEvent*(self: gen_qlcdnumber_types.QLCDNumber, event: gen_qcoreevent_types.QEvent): void =
  fcQLCDNumber_virtualbase_leaveEvent(self.h, event.h)

proc QLCDNumbermoveEvent*(self: gen_qlcdnumber_types.QLCDNumber, event: gen_qevent_types.QMoveEvent): void =
  fcQLCDNumber_virtualbase_moveEvent(self.h, event.h)

proc QLCDNumberresizeEvent*(self: gen_qlcdnumber_types.QLCDNumber, event: gen_qevent_types.QResizeEvent): void =
  fcQLCDNumber_virtualbase_resizeEvent(self.h, event.h)

proc QLCDNumbercloseEvent*(self: gen_qlcdnumber_types.QLCDNumber, event: gen_qevent_types.QCloseEvent): void =
  fcQLCDNumber_virtualbase_closeEvent(self.h, event.h)

proc QLCDNumbercontextMenuEvent*(self: gen_qlcdnumber_types.QLCDNumber, event: gen_qevent_types.QContextMenuEvent): void =
  fcQLCDNumber_virtualbase_contextMenuEvent(self.h, event.h)

proc QLCDNumbertabletEvent*(self: gen_qlcdnumber_types.QLCDNumber, event: gen_qevent_types.QTabletEvent): void =
  fcQLCDNumber_virtualbase_tabletEvent(self.h, event.h)

proc QLCDNumberactionEvent*(self: gen_qlcdnumber_types.QLCDNumber, event: gen_qevent_types.QActionEvent): void =
  fcQLCDNumber_virtualbase_actionEvent(self.h, event.h)

proc QLCDNumberdragEnterEvent*(self: gen_qlcdnumber_types.QLCDNumber, event: gen_qevent_types.QDragEnterEvent): void =
  fcQLCDNumber_virtualbase_dragEnterEvent(self.h, event.h)

proc QLCDNumberdragMoveEvent*(self: gen_qlcdnumber_types.QLCDNumber, event: gen_qevent_types.QDragMoveEvent): void =
  fcQLCDNumber_virtualbase_dragMoveEvent(self.h, event.h)

proc QLCDNumberdragLeaveEvent*(self: gen_qlcdnumber_types.QLCDNumber, event: gen_qevent_types.QDragLeaveEvent): void =
  fcQLCDNumber_virtualbase_dragLeaveEvent(self.h, event.h)

proc QLCDNumberdropEvent*(self: gen_qlcdnumber_types.QLCDNumber, event: gen_qevent_types.QDropEvent): void =
  fcQLCDNumber_virtualbase_dropEvent(self.h, event.h)

proc QLCDNumbershowEvent*(self: gen_qlcdnumber_types.QLCDNumber, event: gen_qevent_types.QShowEvent): void =
  fcQLCDNumber_virtualbase_showEvent(self.h, event.h)

proc QLCDNumberhideEvent*(self: gen_qlcdnumber_types.QLCDNumber, event: gen_qevent_types.QHideEvent): void =
  fcQLCDNumber_virtualbase_hideEvent(self.h, event.h)

proc QLCDNumbernativeEvent*(self: gen_qlcdnumber_types.QLCDNumber, eventType: openArray[byte], message: pointer, resultVal: ptr uint): bool =
  fcQLCDNumber_virtualbase_nativeEvent(self.h, struct_miqt_string(data: cast[cstring](if len(eventType) == 0: nil else: unsafeAddr eventType[0]), len: csize_t(len(eventType))), message, resultVal)

proc QLCDNumbermetric*(self: gen_qlcdnumber_types.QLCDNumber, param1: cint): cint =
  fcQLCDNumber_virtualbase_metric(self.h, cint(param1))

proc QLCDNumberinitPainter*(self: gen_qlcdnumber_types.QLCDNumber, painter: gen_qpainter_types.QPainter): void =
  fcQLCDNumber_virtualbase_initPainter(self.h, painter.h)

proc QLCDNumberredirected*(self: gen_qlcdnumber_types.QLCDNumber, offset: gen_qpoint_types.QPoint): gen_qpaintdevice_types.QPaintDevice =
  gen_qpaintdevice_types.QPaintDevice(h: fcQLCDNumber_virtualbase_redirected(self.h, offset.h), owned: false)

proc QLCDNumbersharedPainter*(self: gen_qlcdnumber_types.QLCDNumber): gen_qpainter_types.QPainter =
  gen_qpainter_types.QPainter(h: fcQLCDNumber_virtualbase_sharedPainter(self.h), owned: false)

proc QLCDNumberinputMethodEvent*(self: gen_qlcdnumber_types.QLCDNumber, param1: gen_qevent_types.QInputMethodEvent): void =
  fcQLCDNumber_virtualbase_inputMethodEvent(self.h, param1.h)

proc QLCDNumberinputMethodQuery*(self: gen_qlcdnumber_types.QLCDNumber, param1: cint): gen_qvariant_types.QVariant =
  gen_qvariant_types.QVariant(h: fcQLCDNumber_virtualbase_inputMethodQuery(self.h, cint(param1)), owned: true)

proc QLCDNumberfocusNextPrevChild*(self: gen_qlcdnumber_types.QLCDNumber, next: bool): bool =
  fcQLCDNumber_virtualbase_focusNextPrevChild(self.h, next)

proc QLCDNumbereventFilter*(self: gen_qlcdnumber_types.QLCDNumber, watched: gen_qobject_types.QObject, event: gen_qcoreevent_types.QEvent): bool =
  fcQLCDNumber_virtualbase_eventFilter(self.h, watched.h, event.h)

proc QLCDNumbertimerEvent*(self: gen_qlcdnumber_types.QLCDNumber, event: gen_qcoreevent_types.QTimerEvent): void =
  fcQLCDNumber_virtualbase_timerEvent(self.h, event.h)

proc QLCDNumberchildEvent*(self: gen_qlcdnumber_types.QLCDNumber, event: gen_qcoreevent_types.QChildEvent): void =
  fcQLCDNumber_virtualbase_childEvent(self.h, event.h)

proc QLCDNumbercustomEvent*(self: gen_qlcdnumber_types.QLCDNumber, event: gen_qcoreevent_types.QEvent): void =
  fcQLCDNumber_virtualbase_customEvent(self.h, event.h)

proc QLCDNumberconnectNotify*(self: gen_qlcdnumber_types.QLCDNumber, signal: gen_qmetaobject_types.QMetaMethod): void =
  fcQLCDNumber_virtualbase_connectNotify(self.h, signal.h)

proc QLCDNumberdisconnectNotify*(self: gen_qlcdnumber_types.QLCDNumber, signal: gen_qmetaobject_types.QMetaMethod): void =
  fcQLCDNumber_virtualbase_disconnectNotify(self.h, signal.h)


proc fcQLCDNumber_vtable_callback_metaObject(self: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QLCDNumberVTable](fcQLCDNumber_vdata(self))
  let self = QLCDNumber(h: self)
  var virtualReturn = vtbl[].metaObject(self)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc fcQLCDNumber_vtable_callback_metacast(self: pointer, param1: cstring): pointer {.cdecl.} =
  let vtbl = cast[ptr QLCDNumberVTable](fcQLCDNumber_vdata(self))
  let self = QLCDNumber(h: self)
  let slotval1 = (param1)
  var virtualReturn = vtbl[].metacast(self, slotval1)
  virtualReturn

proc fcQLCDNumber_vtable_callback_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.cdecl.} =
  let vtbl = cast[ptr QLCDNumberVTable](fcQLCDNumber_vdata(self))
  let self = QLCDNumber(h: self)
  let slotval1 = cint(param1)
  let slotval2 = param2
  let slotval3 = param3
  var virtualReturn = vtbl[].metacall(self, slotval1, slotval2, slotval3)
  virtualReturn

proc fcQLCDNumber_vtable_callback_sizeHint(self: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QLCDNumberVTable](fcQLCDNumber_vdata(self))
  let self = QLCDNumber(h: self)
  var virtualReturn = vtbl[].sizeHint(self)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc fcQLCDNumber_vtable_callback_event(self: pointer, e: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QLCDNumberVTable](fcQLCDNumber_vdata(self))
  let self = QLCDNumber(h: self)
  let slotval1 = gen_qcoreevent_types.QEvent(h: e, owned: false)
  var virtualReturn = vtbl[].event(self, slotval1)
  virtualReturn

proc fcQLCDNumber_vtable_callback_paintEvent(self: pointer, param1: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QLCDNumberVTable](fcQLCDNumber_vdata(self))
  let self = QLCDNumber(h: self)
  let slotval1 = gen_qevent_types.QPaintEvent(h: param1, owned: false)
  vtbl[].paintEvent(self, slotval1)

proc fcQLCDNumber_vtable_callback_changeEvent(self: pointer, param1: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QLCDNumberVTable](fcQLCDNumber_vdata(self))
  let self = QLCDNumber(h: self)
  let slotval1 = gen_qcoreevent_types.QEvent(h: param1, owned: false)
  vtbl[].changeEvent(self, slotval1)

proc fcQLCDNumber_vtable_callback_initStyleOption(self: pointer, option: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QLCDNumberVTable](fcQLCDNumber_vdata(self))
  let self = QLCDNumber(h: self)
  let slotval1 = gen_qstyleoption_types.QStyleOptionFrame(h: option, owned: false)
  vtbl[].initStyleOption(self, slotval1)

proc fcQLCDNumber_vtable_callback_devType(self: pointer): cint {.cdecl.} =
  let vtbl = cast[ptr QLCDNumberVTable](fcQLCDNumber_vdata(self))
  let self = QLCDNumber(h: self)
  var virtualReturn = vtbl[].devType(self)
  virtualReturn

proc fcQLCDNumber_vtable_callback_setVisible(self: pointer, visible: bool): void {.cdecl.} =
  let vtbl = cast[ptr QLCDNumberVTable](fcQLCDNumber_vdata(self))
  let self = QLCDNumber(h: self)
  let slotval1 = visible
  vtbl[].setVisible(self, slotval1)

proc fcQLCDNumber_vtable_callback_minimumSizeHint(self: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QLCDNumberVTable](fcQLCDNumber_vdata(self))
  let self = QLCDNumber(h: self)
  var virtualReturn = vtbl[].minimumSizeHint(self)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc fcQLCDNumber_vtable_callback_heightForWidth(self: pointer, param1: cint): cint {.cdecl.} =
  let vtbl = cast[ptr QLCDNumberVTable](fcQLCDNumber_vdata(self))
  let self = QLCDNumber(h: self)
  let slotval1 = param1
  var virtualReturn = vtbl[].heightForWidth(self, slotval1)
  virtualReturn

proc fcQLCDNumber_vtable_callback_hasHeightForWidth(self: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QLCDNumberVTable](fcQLCDNumber_vdata(self))
  let self = QLCDNumber(h: self)
  var virtualReturn = vtbl[].hasHeightForWidth(self)
  virtualReturn

proc fcQLCDNumber_vtable_callback_paintEngine(self: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QLCDNumberVTable](fcQLCDNumber_vdata(self))
  let self = QLCDNumber(h: self)
  var virtualReturn = vtbl[].paintEngine(self)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc fcQLCDNumber_vtable_callback_mousePressEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QLCDNumberVTable](fcQLCDNumber_vdata(self))
  let self = QLCDNumber(h: self)
  let slotval1 = gen_qevent_types.QMouseEvent(h: event, owned: false)
  vtbl[].mousePressEvent(self, slotval1)

proc fcQLCDNumber_vtable_callback_mouseReleaseEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QLCDNumberVTable](fcQLCDNumber_vdata(self))
  let self = QLCDNumber(h: self)
  let slotval1 = gen_qevent_types.QMouseEvent(h: event, owned: false)
  vtbl[].mouseReleaseEvent(self, slotval1)

proc fcQLCDNumber_vtable_callback_mouseDoubleClickEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QLCDNumberVTable](fcQLCDNumber_vdata(self))
  let self = QLCDNumber(h: self)
  let slotval1 = gen_qevent_types.QMouseEvent(h: event, owned: false)
  vtbl[].mouseDoubleClickEvent(self, slotval1)

proc fcQLCDNumber_vtable_callback_mouseMoveEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QLCDNumberVTable](fcQLCDNumber_vdata(self))
  let self = QLCDNumber(h: self)
  let slotval1 = gen_qevent_types.QMouseEvent(h: event, owned: false)
  vtbl[].mouseMoveEvent(self, slotval1)

proc fcQLCDNumber_vtable_callback_wheelEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QLCDNumberVTable](fcQLCDNumber_vdata(self))
  let self = QLCDNumber(h: self)
  let slotval1 = gen_qevent_types.QWheelEvent(h: event, owned: false)
  vtbl[].wheelEvent(self, slotval1)

proc fcQLCDNumber_vtable_callback_keyPressEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QLCDNumberVTable](fcQLCDNumber_vdata(self))
  let self = QLCDNumber(h: self)
  let slotval1 = gen_qevent_types.QKeyEvent(h: event, owned: false)
  vtbl[].keyPressEvent(self, slotval1)

proc fcQLCDNumber_vtable_callback_keyReleaseEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QLCDNumberVTable](fcQLCDNumber_vdata(self))
  let self = QLCDNumber(h: self)
  let slotval1 = gen_qevent_types.QKeyEvent(h: event, owned: false)
  vtbl[].keyReleaseEvent(self, slotval1)

proc fcQLCDNumber_vtable_callback_focusInEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QLCDNumberVTable](fcQLCDNumber_vdata(self))
  let self = QLCDNumber(h: self)
  let slotval1 = gen_qevent_types.QFocusEvent(h: event, owned: false)
  vtbl[].focusInEvent(self, slotval1)

proc fcQLCDNumber_vtable_callback_focusOutEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QLCDNumberVTable](fcQLCDNumber_vdata(self))
  let self = QLCDNumber(h: self)
  let slotval1 = gen_qevent_types.QFocusEvent(h: event, owned: false)
  vtbl[].focusOutEvent(self, slotval1)

proc fcQLCDNumber_vtable_callback_enterEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QLCDNumberVTable](fcQLCDNumber_vdata(self))
  let self = QLCDNumber(h: self)
  let slotval1 = gen_qevent_types.QEnterEvent(h: event, owned: false)
  vtbl[].enterEvent(self, slotval1)

proc fcQLCDNumber_vtable_callback_leaveEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QLCDNumberVTable](fcQLCDNumber_vdata(self))
  let self = QLCDNumber(h: self)
  let slotval1 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  vtbl[].leaveEvent(self, slotval1)

proc fcQLCDNumber_vtable_callback_moveEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QLCDNumberVTable](fcQLCDNumber_vdata(self))
  let self = QLCDNumber(h: self)
  let slotval1 = gen_qevent_types.QMoveEvent(h: event, owned: false)
  vtbl[].moveEvent(self, slotval1)

proc fcQLCDNumber_vtable_callback_resizeEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QLCDNumberVTable](fcQLCDNumber_vdata(self))
  let self = QLCDNumber(h: self)
  let slotval1 = gen_qevent_types.QResizeEvent(h: event, owned: false)
  vtbl[].resizeEvent(self, slotval1)

proc fcQLCDNumber_vtable_callback_closeEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QLCDNumberVTable](fcQLCDNumber_vdata(self))
  let self = QLCDNumber(h: self)
  let slotval1 = gen_qevent_types.QCloseEvent(h: event, owned: false)
  vtbl[].closeEvent(self, slotval1)

proc fcQLCDNumber_vtable_callback_contextMenuEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QLCDNumberVTable](fcQLCDNumber_vdata(self))
  let self = QLCDNumber(h: self)
  let slotval1 = gen_qevent_types.QContextMenuEvent(h: event, owned: false)
  vtbl[].contextMenuEvent(self, slotval1)

proc fcQLCDNumber_vtable_callback_tabletEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QLCDNumberVTable](fcQLCDNumber_vdata(self))
  let self = QLCDNumber(h: self)
  let slotval1 = gen_qevent_types.QTabletEvent(h: event, owned: false)
  vtbl[].tabletEvent(self, slotval1)

proc fcQLCDNumber_vtable_callback_actionEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QLCDNumberVTable](fcQLCDNumber_vdata(self))
  let self = QLCDNumber(h: self)
  let slotval1 = gen_qevent_types.QActionEvent(h: event, owned: false)
  vtbl[].actionEvent(self, slotval1)

proc fcQLCDNumber_vtable_callback_dragEnterEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QLCDNumberVTable](fcQLCDNumber_vdata(self))
  let self = QLCDNumber(h: self)
  let slotval1 = gen_qevent_types.QDragEnterEvent(h: event, owned: false)
  vtbl[].dragEnterEvent(self, slotval1)

proc fcQLCDNumber_vtable_callback_dragMoveEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QLCDNumberVTable](fcQLCDNumber_vdata(self))
  let self = QLCDNumber(h: self)
  let slotval1 = gen_qevent_types.QDragMoveEvent(h: event, owned: false)
  vtbl[].dragMoveEvent(self, slotval1)

proc fcQLCDNumber_vtable_callback_dragLeaveEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QLCDNumberVTable](fcQLCDNumber_vdata(self))
  let self = QLCDNumber(h: self)
  let slotval1 = gen_qevent_types.QDragLeaveEvent(h: event, owned: false)
  vtbl[].dragLeaveEvent(self, slotval1)

proc fcQLCDNumber_vtable_callback_dropEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QLCDNumberVTable](fcQLCDNumber_vdata(self))
  let self = QLCDNumber(h: self)
  let slotval1 = gen_qevent_types.QDropEvent(h: event, owned: false)
  vtbl[].dropEvent(self, slotval1)

proc fcQLCDNumber_vtable_callback_showEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QLCDNumberVTable](fcQLCDNumber_vdata(self))
  let self = QLCDNumber(h: self)
  let slotval1 = gen_qevent_types.QShowEvent(h: event, owned: false)
  vtbl[].showEvent(self, slotval1)

proc fcQLCDNumber_vtable_callback_hideEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QLCDNumberVTable](fcQLCDNumber_vdata(self))
  let self = QLCDNumber(h: self)
  let slotval1 = gen_qevent_types.QHideEvent(h: event, owned: false)
  vtbl[].hideEvent(self, slotval1)

proc fcQLCDNumber_vtable_callback_nativeEvent(self: pointer, eventType: struct_miqt_string, message: pointer, resultVal: ptr uint): bool {.cdecl.} =
  let vtbl = cast[ptr QLCDNumberVTable](fcQLCDNumber_vdata(self))
  let self = QLCDNumber(h: self)
  var veventType_bytearray = eventType
  var veventTypex_ret = @(toOpenArray(cast[ptr UncheckedArray[byte]](veventType_bytearray.data), 0, int(veventType_bytearray.len)-1))
  c_free(veventType_bytearray.data)
  let slotval1 = veventTypex_ret
  let slotval2 = message
  let slotval3 = resultVal
  var virtualReturn = vtbl[].nativeEvent(self, slotval1, slotval2, slotval3)
  virtualReturn

proc fcQLCDNumber_vtable_callback_metric(self: pointer, param1: cint): cint {.cdecl.} =
  let vtbl = cast[ptr QLCDNumberVTable](fcQLCDNumber_vdata(self))
  let self = QLCDNumber(h: self)
  let slotval1 = cint(param1)
  var virtualReturn = vtbl[].metric(self, slotval1)
  virtualReturn

proc fcQLCDNumber_vtable_callback_initPainter(self: pointer, painter: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QLCDNumberVTable](fcQLCDNumber_vdata(self))
  let self = QLCDNumber(h: self)
  let slotval1 = gen_qpainter_types.QPainter(h: painter, owned: false)
  vtbl[].initPainter(self, slotval1)

proc fcQLCDNumber_vtable_callback_redirected(self: pointer, offset: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QLCDNumberVTable](fcQLCDNumber_vdata(self))
  let self = QLCDNumber(h: self)
  let slotval1 = gen_qpoint_types.QPoint(h: offset, owned: false)
  var virtualReturn = vtbl[].redirected(self, slotval1)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc fcQLCDNumber_vtable_callback_sharedPainter(self: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QLCDNumberVTable](fcQLCDNumber_vdata(self))
  let self = QLCDNumber(h: self)
  var virtualReturn = vtbl[].sharedPainter(self)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc fcQLCDNumber_vtable_callback_inputMethodEvent(self: pointer, param1: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QLCDNumberVTable](fcQLCDNumber_vdata(self))
  let self = QLCDNumber(h: self)
  let slotval1 = gen_qevent_types.QInputMethodEvent(h: param1, owned: false)
  vtbl[].inputMethodEvent(self, slotval1)

proc fcQLCDNumber_vtable_callback_inputMethodQuery(self: pointer, param1: cint): pointer {.cdecl.} =
  let vtbl = cast[ptr QLCDNumberVTable](fcQLCDNumber_vdata(self))
  let self = QLCDNumber(h: self)
  let slotval1 = cint(param1)
  var virtualReturn = vtbl[].inputMethodQuery(self, slotval1)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc fcQLCDNumber_vtable_callback_focusNextPrevChild(self: pointer, next: bool): bool {.cdecl.} =
  let vtbl = cast[ptr QLCDNumberVTable](fcQLCDNumber_vdata(self))
  let self = QLCDNumber(h: self)
  let slotval1 = next
  var virtualReturn = vtbl[].focusNextPrevChild(self, slotval1)
  virtualReturn

proc fcQLCDNumber_vtable_callback_eventFilter(self: pointer, watched: pointer, event: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QLCDNumberVTable](fcQLCDNumber_vdata(self))
  let self = QLCDNumber(h: self)
  let slotval1 = gen_qobject_types.QObject(h: watched, owned: false)
  let slotval2 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  var virtualReturn = vtbl[].eventFilter(self, slotval1, slotval2)
  virtualReturn

proc fcQLCDNumber_vtable_callback_timerEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QLCDNumberVTable](fcQLCDNumber_vdata(self))
  let self = QLCDNumber(h: self)
  let slotval1 = gen_qcoreevent_types.QTimerEvent(h: event, owned: false)
  vtbl[].timerEvent(self, slotval1)

proc fcQLCDNumber_vtable_callback_childEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QLCDNumberVTable](fcQLCDNumber_vdata(self))
  let self = QLCDNumber(h: self)
  let slotval1 = gen_qcoreevent_types.QChildEvent(h: event, owned: false)
  vtbl[].childEvent(self, slotval1)

proc fcQLCDNumber_vtable_callback_customEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QLCDNumberVTable](fcQLCDNumber_vdata(self))
  let self = QLCDNumber(h: self)
  let slotval1 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  vtbl[].customEvent(self, slotval1)

proc fcQLCDNumber_vtable_callback_connectNotify(self: pointer, signal: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QLCDNumberVTable](fcQLCDNumber_vdata(self))
  let self = QLCDNumber(h: self)
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal, owned: false)
  vtbl[].connectNotify(self, slotval1)

proc fcQLCDNumber_vtable_callback_disconnectNotify(self: pointer, signal: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QLCDNumberVTable](fcQLCDNumber_vdata(self))
  let self = QLCDNumber(h: self)
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal, owned: false)
  vtbl[].disconnectNotify(self, slotval1)

type VirtualQLCDNumber* {.inheritable.} = ref object of QLCDNumber
  vtbl*: cQLCDNumberVTable

method metaObject*(self: VirtualQLCDNumber): gen_qobjectdefs_types.QMetaObject {.base.} =
  QLCDNumbermetaObject(self[])
method metacast*(self: VirtualQLCDNumber, param1: cstring): pointer {.base.} =
  QLCDNumbermetacast(self[], param1)
method metacall*(self: VirtualQLCDNumber, param1: cint, param2: cint, param3: pointer): cint {.base.} =
  QLCDNumbermetacall(self[], param1, param2, param3)
method sizeHint*(self: VirtualQLCDNumber): gen_qsize_types.QSize {.base.} =
  QLCDNumbersizeHint(self[])
method event*(self: VirtualQLCDNumber, e: gen_qcoreevent_types.QEvent): bool {.base.} =
  QLCDNumberevent(self[], e)
method paintEvent*(self: VirtualQLCDNumber, param1: gen_qevent_types.QPaintEvent): void {.base.} =
  QLCDNumberpaintEvent(self[], param1)
method changeEvent*(self: VirtualQLCDNumber, param1: gen_qcoreevent_types.QEvent): void {.base.} =
  QLCDNumberchangeEvent(self[], param1)
method initStyleOption*(self: VirtualQLCDNumber, option: gen_qstyleoption_types.QStyleOptionFrame): void {.base.} =
  QLCDNumberinitStyleOption(self[], option)
method devType*(self: VirtualQLCDNumber): cint {.base.} =
  QLCDNumberdevType(self[])
method setVisible*(self: VirtualQLCDNumber, visible: bool): void {.base.} =
  QLCDNumbersetVisible(self[], visible)
method minimumSizeHint*(self: VirtualQLCDNumber): gen_qsize_types.QSize {.base.} =
  QLCDNumberminimumSizeHint(self[])
method heightForWidth*(self: VirtualQLCDNumber, param1: cint): cint {.base.} =
  QLCDNumberheightForWidth(self[], param1)
method hasHeightForWidth*(self: VirtualQLCDNumber): bool {.base.} =
  QLCDNumberhasHeightForWidth(self[])
method paintEngine*(self: VirtualQLCDNumber): gen_qpaintengine_types.QPaintEngine {.base.} =
  QLCDNumberpaintEngine(self[])
method mousePressEvent*(self: VirtualQLCDNumber, event: gen_qevent_types.QMouseEvent): void {.base.} =
  QLCDNumbermousePressEvent(self[], event)
method mouseReleaseEvent*(self: VirtualQLCDNumber, event: gen_qevent_types.QMouseEvent): void {.base.} =
  QLCDNumbermouseReleaseEvent(self[], event)
method mouseDoubleClickEvent*(self: VirtualQLCDNumber, event: gen_qevent_types.QMouseEvent): void {.base.} =
  QLCDNumbermouseDoubleClickEvent(self[], event)
method mouseMoveEvent*(self: VirtualQLCDNumber, event: gen_qevent_types.QMouseEvent): void {.base.} =
  QLCDNumbermouseMoveEvent(self[], event)
method wheelEvent*(self: VirtualQLCDNumber, event: gen_qevent_types.QWheelEvent): void {.base.} =
  QLCDNumberwheelEvent(self[], event)
method keyPressEvent*(self: VirtualQLCDNumber, event: gen_qevent_types.QKeyEvent): void {.base.} =
  QLCDNumberkeyPressEvent(self[], event)
method keyReleaseEvent*(self: VirtualQLCDNumber, event: gen_qevent_types.QKeyEvent): void {.base.} =
  QLCDNumberkeyReleaseEvent(self[], event)
method focusInEvent*(self: VirtualQLCDNumber, event: gen_qevent_types.QFocusEvent): void {.base.} =
  QLCDNumberfocusInEvent(self[], event)
method focusOutEvent*(self: VirtualQLCDNumber, event: gen_qevent_types.QFocusEvent): void {.base.} =
  QLCDNumberfocusOutEvent(self[], event)
method enterEvent*(self: VirtualQLCDNumber, event: gen_qevent_types.QEnterEvent): void {.base.} =
  QLCDNumberenterEvent(self[], event)
method leaveEvent*(self: VirtualQLCDNumber, event: gen_qcoreevent_types.QEvent): void {.base.} =
  QLCDNumberleaveEvent(self[], event)
method moveEvent*(self: VirtualQLCDNumber, event: gen_qevent_types.QMoveEvent): void {.base.} =
  QLCDNumbermoveEvent(self[], event)
method resizeEvent*(self: VirtualQLCDNumber, event: gen_qevent_types.QResizeEvent): void {.base.} =
  QLCDNumberresizeEvent(self[], event)
method closeEvent*(self: VirtualQLCDNumber, event: gen_qevent_types.QCloseEvent): void {.base.} =
  QLCDNumbercloseEvent(self[], event)
method contextMenuEvent*(self: VirtualQLCDNumber, event: gen_qevent_types.QContextMenuEvent): void {.base.} =
  QLCDNumbercontextMenuEvent(self[], event)
method tabletEvent*(self: VirtualQLCDNumber, event: gen_qevent_types.QTabletEvent): void {.base.} =
  QLCDNumbertabletEvent(self[], event)
method actionEvent*(self: VirtualQLCDNumber, event: gen_qevent_types.QActionEvent): void {.base.} =
  QLCDNumberactionEvent(self[], event)
method dragEnterEvent*(self: VirtualQLCDNumber, event: gen_qevent_types.QDragEnterEvent): void {.base.} =
  QLCDNumberdragEnterEvent(self[], event)
method dragMoveEvent*(self: VirtualQLCDNumber, event: gen_qevent_types.QDragMoveEvent): void {.base.} =
  QLCDNumberdragMoveEvent(self[], event)
method dragLeaveEvent*(self: VirtualQLCDNumber, event: gen_qevent_types.QDragLeaveEvent): void {.base.} =
  QLCDNumberdragLeaveEvent(self[], event)
method dropEvent*(self: VirtualQLCDNumber, event: gen_qevent_types.QDropEvent): void {.base.} =
  QLCDNumberdropEvent(self[], event)
method showEvent*(self: VirtualQLCDNumber, event: gen_qevent_types.QShowEvent): void {.base.} =
  QLCDNumbershowEvent(self[], event)
method hideEvent*(self: VirtualQLCDNumber, event: gen_qevent_types.QHideEvent): void {.base.} =
  QLCDNumberhideEvent(self[], event)
method nativeEvent*(self: VirtualQLCDNumber, eventType: openArray[byte], message: pointer, resultVal: ptr uint): bool {.base.} =
  QLCDNumbernativeEvent(self[], eventType, message, resultVal)
method metric*(self: VirtualQLCDNumber, param1: cint): cint {.base.} =
  QLCDNumbermetric(self[], param1)
method initPainter*(self: VirtualQLCDNumber, painter: gen_qpainter_types.QPainter): void {.base.} =
  QLCDNumberinitPainter(self[], painter)
method redirected*(self: VirtualQLCDNumber, offset: gen_qpoint_types.QPoint): gen_qpaintdevice_types.QPaintDevice {.base.} =
  QLCDNumberredirected(self[], offset)
method sharedPainter*(self: VirtualQLCDNumber): gen_qpainter_types.QPainter {.base.} =
  QLCDNumbersharedPainter(self[])
method inputMethodEvent*(self: VirtualQLCDNumber, param1: gen_qevent_types.QInputMethodEvent): void {.base.} =
  QLCDNumberinputMethodEvent(self[], param1)
method inputMethodQuery*(self: VirtualQLCDNumber, param1: cint): gen_qvariant_types.QVariant {.base.} =
  QLCDNumberinputMethodQuery(self[], param1)
method focusNextPrevChild*(self: VirtualQLCDNumber, next: bool): bool {.base.} =
  QLCDNumberfocusNextPrevChild(self[], next)
method eventFilter*(self: VirtualQLCDNumber, watched: gen_qobject_types.QObject, event: gen_qcoreevent_types.QEvent): bool {.base.} =
  QLCDNumbereventFilter(self[], watched, event)
method timerEvent*(self: VirtualQLCDNumber, event: gen_qcoreevent_types.QTimerEvent): void {.base.} =
  QLCDNumbertimerEvent(self[], event)
method childEvent*(self: VirtualQLCDNumber, event: gen_qcoreevent_types.QChildEvent): void {.base.} =
  QLCDNumberchildEvent(self[], event)
method customEvent*(self: VirtualQLCDNumber, event: gen_qcoreevent_types.QEvent): void {.base.} =
  QLCDNumbercustomEvent(self[], event)
method connectNotify*(self: VirtualQLCDNumber, signal: gen_qmetaobject_types.QMetaMethod): void {.base.} =
  QLCDNumberconnectNotify(self[], signal)
method disconnectNotify*(self: VirtualQLCDNumber, signal: gen_qmetaobject_types.QMetaMethod): void {.base.} =
  QLCDNumberdisconnectNotify(self[], signal)

proc fcQLCDNumber_method_callback_metaObject(self: pointer): pointer {.cdecl.} =
  let inst = cast[VirtualQLCDNumber](fcQLCDNumber_vdata(self))
  var virtualReturn = inst.metaObject()
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc fcQLCDNumber_method_callback_metacast(self: pointer, param1: cstring): pointer {.cdecl.} =
  let inst = cast[VirtualQLCDNumber](fcQLCDNumber_vdata(self))
  let slotval1 = (param1)
  var virtualReturn = inst.metacast(slotval1)
  virtualReturn

proc fcQLCDNumber_method_callback_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.cdecl.} =
  let inst = cast[VirtualQLCDNumber](fcQLCDNumber_vdata(self))
  let slotval1 = cint(param1)
  let slotval2 = param2
  let slotval3 = param3
  var virtualReturn = inst.metacall(slotval1, slotval2, slotval3)
  virtualReturn

proc fcQLCDNumber_method_callback_sizeHint(self: pointer): pointer {.cdecl.} =
  let inst = cast[VirtualQLCDNumber](fcQLCDNumber_vdata(self))
  var virtualReturn = inst.sizeHint()
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc fcQLCDNumber_method_callback_event(self: pointer, e: pointer): bool {.cdecl.} =
  let inst = cast[VirtualQLCDNumber](fcQLCDNumber_vdata(self))
  let slotval1 = gen_qcoreevent_types.QEvent(h: e, owned: false)
  var virtualReturn = inst.event(slotval1)
  virtualReturn

proc fcQLCDNumber_method_callback_paintEvent(self: pointer, param1: pointer): void {.cdecl.} =
  let inst = cast[VirtualQLCDNumber](fcQLCDNumber_vdata(self))
  let slotval1 = gen_qevent_types.QPaintEvent(h: param1, owned: false)
  inst.paintEvent(slotval1)

proc fcQLCDNumber_method_callback_changeEvent(self: pointer, param1: pointer): void {.cdecl.} =
  let inst = cast[VirtualQLCDNumber](fcQLCDNumber_vdata(self))
  let slotval1 = gen_qcoreevent_types.QEvent(h: param1, owned: false)
  inst.changeEvent(slotval1)

proc fcQLCDNumber_method_callback_initStyleOption(self: pointer, option: pointer): void {.cdecl.} =
  let inst = cast[VirtualQLCDNumber](fcQLCDNumber_vdata(self))
  let slotval1 = gen_qstyleoption_types.QStyleOptionFrame(h: option, owned: false)
  inst.initStyleOption(slotval1)

proc fcQLCDNumber_method_callback_devType(self: pointer): cint {.cdecl.} =
  let inst = cast[VirtualQLCDNumber](fcQLCDNumber_vdata(self))
  var virtualReturn = inst.devType()
  virtualReturn

proc fcQLCDNumber_method_callback_setVisible(self: pointer, visible: bool): void {.cdecl.} =
  let inst = cast[VirtualQLCDNumber](fcQLCDNumber_vdata(self))
  let slotval1 = visible
  inst.setVisible(slotval1)

proc fcQLCDNumber_method_callback_minimumSizeHint(self: pointer): pointer {.cdecl.} =
  let inst = cast[VirtualQLCDNumber](fcQLCDNumber_vdata(self))
  var virtualReturn = inst.minimumSizeHint()
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc fcQLCDNumber_method_callback_heightForWidth(self: pointer, param1: cint): cint {.cdecl.} =
  let inst = cast[VirtualQLCDNumber](fcQLCDNumber_vdata(self))
  let slotval1 = param1
  var virtualReturn = inst.heightForWidth(slotval1)
  virtualReturn

proc fcQLCDNumber_method_callback_hasHeightForWidth(self: pointer): bool {.cdecl.} =
  let inst = cast[VirtualQLCDNumber](fcQLCDNumber_vdata(self))
  var virtualReturn = inst.hasHeightForWidth()
  virtualReturn

proc fcQLCDNumber_method_callback_paintEngine(self: pointer): pointer {.cdecl.} =
  let inst = cast[VirtualQLCDNumber](fcQLCDNumber_vdata(self))
  var virtualReturn = inst.paintEngine()
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc fcQLCDNumber_method_callback_mousePressEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQLCDNumber](fcQLCDNumber_vdata(self))
  let slotval1 = gen_qevent_types.QMouseEvent(h: event, owned: false)
  inst.mousePressEvent(slotval1)

proc fcQLCDNumber_method_callback_mouseReleaseEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQLCDNumber](fcQLCDNumber_vdata(self))
  let slotval1 = gen_qevent_types.QMouseEvent(h: event, owned: false)
  inst.mouseReleaseEvent(slotval1)

proc fcQLCDNumber_method_callback_mouseDoubleClickEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQLCDNumber](fcQLCDNumber_vdata(self))
  let slotval1 = gen_qevent_types.QMouseEvent(h: event, owned: false)
  inst.mouseDoubleClickEvent(slotval1)

proc fcQLCDNumber_method_callback_mouseMoveEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQLCDNumber](fcQLCDNumber_vdata(self))
  let slotval1 = gen_qevent_types.QMouseEvent(h: event, owned: false)
  inst.mouseMoveEvent(slotval1)

proc fcQLCDNumber_method_callback_wheelEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQLCDNumber](fcQLCDNumber_vdata(self))
  let slotval1 = gen_qevent_types.QWheelEvent(h: event, owned: false)
  inst.wheelEvent(slotval1)

proc fcQLCDNumber_method_callback_keyPressEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQLCDNumber](fcQLCDNumber_vdata(self))
  let slotval1 = gen_qevent_types.QKeyEvent(h: event, owned: false)
  inst.keyPressEvent(slotval1)

proc fcQLCDNumber_method_callback_keyReleaseEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQLCDNumber](fcQLCDNumber_vdata(self))
  let slotval1 = gen_qevent_types.QKeyEvent(h: event, owned: false)
  inst.keyReleaseEvent(slotval1)

proc fcQLCDNumber_method_callback_focusInEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQLCDNumber](fcQLCDNumber_vdata(self))
  let slotval1 = gen_qevent_types.QFocusEvent(h: event, owned: false)
  inst.focusInEvent(slotval1)

proc fcQLCDNumber_method_callback_focusOutEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQLCDNumber](fcQLCDNumber_vdata(self))
  let slotval1 = gen_qevent_types.QFocusEvent(h: event, owned: false)
  inst.focusOutEvent(slotval1)

proc fcQLCDNumber_method_callback_enterEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQLCDNumber](fcQLCDNumber_vdata(self))
  let slotval1 = gen_qevent_types.QEnterEvent(h: event, owned: false)
  inst.enterEvent(slotval1)

proc fcQLCDNumber_method_callback_leaveEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQLCDNumber](fcQLCDNumber_vdata(self))
  let slotval1 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  inst.leaveEvent(slotval1)

proc fcQLCDNumber_method_callback_moveEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQLCDNumber](fcQLCDNumber_vdata(self))
  let slotval1 = gen_qevent_types.QMoveEvent(h: event, owned: false)
  inst.moveEvent(slotval1)

proc fcQLCDNumber_method_callback_resizeEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQLCDNumber](fcQLCDNumber_vdata(self))
  let slotval1 = gen_qevent_types.QResizeEvent(h: event, owned: false)
  inst.resizeEvent(slotval1)

proc fcQLCDNumber_method_callback_closeEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQLCDNumber](fcQLCDNumber_vdata(self))
  let slotval1 = gen_qevent_types.QCloseEvent(h: event, owned: false)
  inst.closeEvent(slotval1)

proc fcQLCDNumber_method_callback_contextMenuEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQLCDNumber](fcQLCDNumber_vdata(self))
  let slotval1 = gen_qevent_types.QContextMenuEvent(h: event, owned: false)
  inst.contextMenuEvent(slotval1)

proc fcQLCDNumber_method_callback_tabletEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQLCDNumber](fcQLCDNumber_vdata(self))
  let slotval1 = gen_qevent_types.QTabletEvent(h: event, owned: false)
  inst.tabletEvent(slotval1)

proc fcQLCDNumber_method_callback_actionEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQLCDNumber](fcQLCDNumber_vdata(self))
  let slotval1 = gen_qevent_types.QActionEvent(h: event, owned: false)
  inst.actionEvent(slotval1)

proc fcQLCDNumber_method_callback_dragEnterEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQLCDNumber](fcQLCDNumber_vdata(self))
  let slotval1 = gen_qevent_types.QDragEnterEvent(h: event, owned: false)
  inst.dragEnterEvent(slotval1)

proc fcQLCDNumber_method_callback_dragMoveEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQLCDNumber](fcQLCDNumber_vdata(self))
  let slotval1 = gen_qevent_types.QDragMoveEvent(h: event, owned: false)
  inst.dragMoveEvent(slotval1)

proc fcQLCDNumber_method_callback_dragLeaveEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQLCDNumber](fcQLCDNumber_vdata(self))
  let slotval1 = gen_qevent_types.QDragLeaveEvent(h: event, owned: false)
  inst.dragLeaveEvent(slotval1)

proc fcQLCDNumber_method_callback_dropEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQLCDNumber](fcQLCDNumber_vdata(self))
  let slotval1 = gen_qevent_types.QDropEvent(h: event, owned: false)
  inst.dropEvent(slotval1)

proc fcQLCDNumber_method_callback_showEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQLCDNumber](fcQLCDNumber_vdata(self))
  let slotval1 = gen_qevent_types.QShowEvent(h: event, owned: false)
  inst.showEvent(slotval1)

proc fcQLCDNumber_method_callback_hideEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQLCDNumber](fcQLCDNumber_vdata(self))
  let slotval1 = gen_qevent_types.QHideEvent(h: event, owned: false)
  inst.hideEvent(slotval1)

proc fcQLCDNumber_method_callback_nativeEvent(self: pointer, eventType: struct_miqt_string, message: pointer, resultVal: ptr uint): bool {.cdecl.} =
  let inst = cast[VirtualQLCDNumber](fcQLCDNumber_vdata(self))
  var veventType_bytearray = eventType
  var veventTypex_ret = @(toOpenArray(cast[ptr UncheckedArray[byte]](veventType_bytearray.data), 0, int(veventType_bytearray.len)-1))
  c_free(veventType_bytearray.data)
  let slotval1 = veventTypex_ret
  let slotval2 = message
  let slotval3 = resultVal
  var virtualReturn = inst.nativeEvent(slotval1, slotval2, slotval3)
  virtualReturn

proc fcQLCDNumber_method_callback_metric(self: pointer, param1: cint): cint {.cdecl.} =
  let inst = cast[VirtualQLCDNumber](fcQLCDNumber_vdata(self))
  let slotval1 = cint(param1)
  var virtualReturn = inst.metric(slotval1)
  virtualReturn

proc fcQLCDNumber_method_callback_initPainter(self: pointer, painter: pointer): void {.cdecl.} =
  let inst = cast[VirtualQLCDNumber](fcQLCDNumber_vdata(self))
  let slotval1 = gen_qpainter_types.QPainter(h: painter, owned: false)
  inst.initPainter(slotval1)

proc fcQLCDNumber_method_callback_redirected(self: pointer, offset: pointer): pointer {.cdecl.} =
  let inst = cast[VirtualQLCDNumber](fcQLCDNumber_vdata(self))
  let slotval1 = gen_qpoint_types.QPoint(h: offset, owned: false)
  var virtualReturn = inst.redirected(slotval1)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc fcQLCDNumber_method_callback_sharedPainter(self: pointer): pointer {.cdecl.} =
  let inst = cast[VirtualQLCDNumber](fcQLCDNumber_vdata(self))
  var virtualReturn = inst.sharedPainter()
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc fcQLCDNumber_method_callback_inputMethodEvent(self: pointer, param1: pointer): void {.cdecl.} =
  let inst = cast[VirtualQLCDNumber](fcQLCDNumber_vdata(self))
  let slotval1 = gen_qevent_types.QInputMethodEvent(h: param1, owned: false)
  inst.inputMethodEvent(slotval1)

proc fcQLCDNumber_method_callback_inputMethodQuery(self: pointer, param1: cint): pointer {.cdecl.} =
  let inst = cast[VirtualQLCDNumber](fcQLCDNumber_vdata(self))
  let slotval1 = cint(param1)
  var virtualReturn = inst.inputMethodQuery(slotval1)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc fcQLCDNumber_method_callback_focusNextPrevChild(self: pointer, next: bool): bool {.cdecl.} =
  let inst = cast[VirtualQLCDNumber](fcQLCDNumber_vdata(self))
  let slotval1 = next
  var virtualReturn = inst.focusNextPrevChild(slotval1)
  virtualReturn

proc fcQLCDNumber_method_callback_eventFilter(self: pointer, watched: pointer, event: pointer): bool {.cdecl.} =
  let inst = cast[VirtualQLCDNumber](fcQLCDNumber_vdata(self))
  let slotval1 = gen_qobject_types.QObject(h: watched, owned: false)
  let slotval2 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  var virtualReturn = inst.eventFilter(slotval1, slotval2)
  virtualReturn

proc fcQLCDNumber_method_callback_timerEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQLCDNumber](fcQLCDNumber_vdata(self))
  let slotval1 = gen_qcoreevent_types.QTimerEvent(h: event, owned: false)
  inst.timerEvent(slotval1)

proc fcQLCDNumber_method_callback_childEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQLCDNumber](fcQLCDNumber_vdata(self))
  let slotval1 = gen_qcoreevent_types.QChildEvent(h: event, owned: false)
  inst.childEvent(slotval1)

proc fcQLCDNumber_method_callback_customEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQLCDNumber](fcQLCDNumber_vdata(self))
  let slotval1 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  inst.customEvent(slotval1)

proc fcQLCDNumber_method_callback_connectNotify(self: pointer, signal: pointer): void {.cdecl.} =
  let inst = cast[VirtualQLCDNumber](fcQLCDNumber_vdata(self))
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal, owned: false)
  inst.connectNotify(slotval1)

proc fcQLCDNumber_method_callback_disconnectNotify(self: pointer, signal: pointer): void {.cdecl.} =
  let inst = cast[VirtualQLCDNumber](fcQLCDNumber_vdata(self))
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal, owned: false)
  inst.disconnectNotify(slotval1)


proc drawFrame*(self: gen_qlcdnumber_types.QLCDNumber, param1: gen_qpainter_types.QPainter): void =
  fcQLCDNumber_protectedbase_drawFrame(self.h, param1.h)

proc updateMicroFocus*(self: gen_qlcdnumber_types.QLCDNumber): void =
  fcQLCDNumber_protectedbase_updateMicroFocus(self.h)

proc createX*(self: gen_qlcdnumber_types.QLCDNumber): void =
  fcQLCDNumber_protectedbase_create(self.h)

proc destroy*(self: gen_qlcdnumber_types.QLCDNumber): void =
  fcQLCDNumber_protectedbase_destroy(self.h)

proc focusNextChild*(self: gen_qlcdnumber_types.QLCDNumber): bool =
  fcQLCDNumber_protectedbase_focusNextChild(self.h)

proc focusPreviousChild*(self: gen_qlcdnumber_types.QLCDNumber): bool =
  fcQLCDNumber_protectedbase_focusPreviousChild(self.h)

proc sender*(self: gen_qlcdnumber_types.QLCDNumber): gen_qobject_types.QObject =
  gen_qobject_types.QObject(h: fcQLCDNumber_protectedbase_sender(self.h), owned: false)

proc senderSignalIndex*(self: gen_qlcdnumber_types.QLCDNumber): cint =
  fcQLCDNumber_protectedbase_senderSignalIndex(self.h)

proc receivers*(self: gen_qlcdnumber_types.QLCDNumber, signal: cstring): cint =
  fcQLCDNumber_protectedbase_receivers(self.h, signal)

proc isSignalConnected*(self: gen_qlcdnumber_types.QLCDNumber, signal: gen_qmetaobject_types.QMetaMethod): bool =
  fcQLCDNumber_protectedbase_isSignalConnected(self.h, signal.h)

proc create*(T: type gen_qlcdnumber_types.QLCDNumber,
    parent: gen_qwidget_types.QWidget,
    vtbl: ref QLCDNumberVTable = nil): gen_qlcdnumber_types.QLCDNumber =
  let vtbl = if vtbl == nil: new QLCDNumberVTable else: vtbl
  GC_ref(vtbl)
  vtbl[].vtbl.destructor = proc(self: pointer) {.cdecl.} =
    let vtbl = cast[ref QLCDNumberVTable](fcQLCDNumber_vdata(self))
    GC_unref(vtbl)
  if not isNil(vtbl[].metaObject):
    vtbl[].vtbl.metaObject = fcQLCDNumber_vtable_callback_metaObject
  if not isNil(vtbl[].metacast):
    vtbl[].vtbl.metacast = fcQLCDNumber_vtable_callback_metacast
  if not isNil(vtbl[].metacall):
    vtbl[].vtbl.metacall = fcQLCDNumber_vtable_callback_metacall
  if not isNil(vtbl[].sizeHint):
    vtbl[].vtbl.sizeHint = fcQLCDNumber_vtable_callback_sizeHint
  if not isNil(vtbl[].event):
    vtbl[].vtbl.event = fcQLCDNumber_vtable_callback_event
  if not isNil(vtbl[].paintEvent):
    vtbl[].vtbl.paintEvent = fcQLCDNumber_vtable_callback_paintEvent
  if not isNil(vtbl[].changeEvent):
    vtbl[].vtbl.changeEvent = fcQLCDNumber_vtable_callback_changeEvent
  if not isNil(vtbl[].initStyleOption):
    vtbl[].vtbl.initStyleOption = fcQLCDNumber_vtable_callback_initStyleOption
  if not isNil(vtbl[].devType):
    vtbl[].vtbl.devType = fcQLCDNumber_vtable_callback_devType
  if not isNil(vtbl[].setVisible):
    vtbl[].vtbl.setVisible = fcQLCDNumber_vtable_callback_setVisible
  if not isNil(vtbl[].minimumSizeHint):
    vtbl[].vtbl.minimumSizeHint = fcQLCDNumber_vtable_callback_minimumSizeHint
  if not isNil(vtbl[].heightForWidth):
    vtbl[].vtbl.heightForWidth = fcQLCDNumber_vtable_callback_heightForWidth
  if not isNil(vtbl[].hasHeightForWidth):
    vtbl[].vtbl.hasHeightForWidth = fcQLCDNumber_vtable_callback_hasHeightForWidth
  if not isNil(vtbl[].paintEngine):
    vtbl[].vtbl.paintEngine = fcQLCDNumber_vtable_callback_paintEngine
  if not isNil(vtbl[].mousePressEvent):
    vtbl[].vtbl.mousePressEvent = fcQLCDNumber_vtable_callback_mousePressEvent
  if not isNil(vtbl[].mouseReleaseEvent):
    vtbl[].vtbl.mouseReleaseEvent = fcQLCDNumber_vtable_callback_mouseReleaseEvent
  if not isNil(vtbl[].mouseDoubleClickEvent):
    vtbl[].vtbl.mouseDoubleClickEvent = fcQLCDNumber_vtable_callback_mouseDoubleClickEvent
  if not isNil(vtbl[].mouseMoveEvent):
    vtbl[].vtbl.mouseMoveEvent = fcQLCDNumber_vtable_callback_mouseMoveEvent
  if not isNil(vtbl[].wheelEvent):
    vtbl[].vtbl.wheelEvent = fcQLCDNumber_vtable_callback_wheelEvent
  if not isNil(vtbl[].keyPressEvent):
    vtbl[].vtbl.keyPressEvent = fcQLCDNumber_vtable_callback_keyPressEvent
  if not isNil(vtbl[].keyReleaseEvent):
    vtbl[].vtbl.keyReleaseEvent = fcQLCDNumber_vtable_callback_keyReleaseEvent
  if not isNil(vtbl[].focusInEvent):
    vtbl[].vtbl.focusInEvent = fcQLCDNumber_vtable_callback_focusInEvent
  if not isNil(vtbl[].focusOutEvent):
    vtbl[].vtbl.focusOutEvent = fcQLCDNumber_vtable_callback_focusOutEvent
  if not isNil(vtbl[].enterEvent):
    vtbl[].vtbl.enterEvent = fcQLCDNumber_vtable_callback_enterEvent
  if not isNil(vtbl[].leaveEvent):
    vtbl[].vtbl.leaveEvent = fcQLCDNumber_vtable_callback_leaveEvent
  if not isNil(vtbl[].moveEvent):
    vtbl[].vtbl.moveEvent = fcQLCDNumber_vtable_callback_moveEvent
  if not isNil(vtbl[].resizeEvent):
    vtbl[].vtbl.resizeEvent = fcQLCDNumber_vtable_callback_resizeEvent
  if not isNil(vtbl[].closeEvent):
    vtbl[].vtbl.closeEvent = fcQLCDNumber_vtable_callback_closeEvent
  if not isNil(vtbl[].contextMenuEvent):
    vtbl[].vtbl.contextMenuEvent = fcQLCDNumber_vtable_callback_contextMenuEvent
  if not isNil(vtbl[].tabletEvent):
    vtbl[].vtbl.tabletEvent = fcQLCDNumber_vtable_callback_tabletEvent
  if not isNil(vtbl[].actionEvent):
    vtbl[].vtbl.actionEvent = fcQLCDNumber_vtable_callback_actionEvent
  if not isNil(vtbl[].dragEnterEvent):
    vtbl[].vtbl.dragEnterEvent = fcQLCDNumber_vtable_callback_dragEnterEvent
  if not isNil(vtbl[].dragMoveEvent):
    vtbl[].vtbl.dragMoveEvent = fcQLCDNumber_vtable_callback_dragMoveEvent
  if not isNil(vtbl[].dragLeaveEvent):
    vtbl[].vtbl.dragLeaveEvent = fcQLCDNumber_vtable_callback_dragLeaveEvent
  if not isNil(vtbl[].dropEvent):
    vtbl[].vtbl.dropEvent = fcQLCDNumber_vtable_callback_dropEvent
  if not isNil(vtbl[].showEvent):
    vtbl[].vtbl.showEvent = fcQLCDNumber_vtable_callback_showEvent
  if not isNil(vtbl[].hideEvent):
    vtbl[].vtbl.hideEvent = fcQLCDNumber_vtable_callback_hideEvent
  if not isNil(vtbl[].nativeEvent):
    vtbl[].vtbl.nativeEvent = fcQLCDNumber_vtable_callback_nativeEvent
  if not isNil(vtbl[].metric):
    vtbl[].vtbl.metric = fcQLCDNumber_vtable_callback_metric
  if not isNil(vtbl[].initPainter):
    vtbl[].vtbl.initPainter = fcQLCDNumber_vtable_callback_initPainter
  if not isNil(vtbl[].redirected):
    vtbl[].vtbl.redirected = fcQLCDNumber_vtable_callback_redirected
  if not isNil(vtbl[].sharedPainter):
    vtbl[].vtbl.sharedPainter = fcQLCDNumber_vtable_callback_sharedPainter
  if not isNil(vtbl[].inputMethodEvent):
    vtbl[].vtbl.inputMethodEvent = fcQLCDNumber_vtable_callback_inputMethodEvent
  if not isNil(vtbl[].inputMethodQuery):
    vtbl[].vtbl.inputMethodQuery = fcQLCDNumber_vtable_callback_inputMethodQuery
  if not isNil(vtbl[].focusNextPrevChild):
    vtbl[].vtbl.focusNextPrevChild = fcQLCDNumber_vtable_callback_focusNextPrevChild
  if not isNil(vtbl[].eventFilter):
    vtbl[].vtbl.eventFilter = fcQLCDNumber_vtable_callback_eventFilter
  if not isNil(vtbl[].timerEvent):
    vtbl[].vtbl.timerEvent = fcQLCDNumber_vtable_callback_timerEvent
  if not isNil(vtbl[].childEvent):
    vtbl[].vtbl.childEvent = fcQLCDNumber_vtable_callback_childEvent
  if not isNil(vtbl[].customEvent):
    vtbl[].vtbl.customEvent = fcQLCDNumber_vtable_callback_customEvent
  if not isNil(vtbl[].connectNotify):
    vtbl[].vtbl.connectNotify = fcQLCDNumber_vtable_callback_connectNotify
  if not isNil(vtbl[].disconnectNotify):
    vtbl[].vtbl.disconnectNotify = fcQLCDNumber_vtable_callback_disconnectNotify
  gen_qlcdnumber_types.QLCDNumber(h: fcQLCDNumber_new(addr(vtbl[].vtbl), addr(vtbl[]), parent.h), owned: true)

proc create*(T: type gen_qlcdnumber_types.QLCDNumber,
    vtbl: ref QLCDNumberVTable = nil): gen_qlcdnumber_types.QLCDNumber =
  let vtbl = if vtbl == nil: new QLCDNumberVTable else: vtbl
  GC_ref(vtbl)
  vtbl[].vtbl.destructor = proc(self: pointer) {.cdecl.} =
    let vtbl = cast[ref QLCDNumberVTable](fcQLCDNumber_vdata(self))
    GC_unref(vtbl)
  if not isNil(vtbl[].metaObject):
    vtbl[].vtbl.metaObject = fcQLCDNumber_vtable_callback_metaObject
  if not isNil(vtbl[].metacast):
    vtbl[].vtbl.metacast = fcQLCDNumber_vtable_callback_metacast
  if not isNil(vtbl[].metacall):
    vtbl[].vtbl.metacall = fcQLCDNumber_vtable_callback_metacall
  if not isNil(vtbl[].sizeHint):
    vtbl[].vtbl.sizeHint = fcQLCDNumber_vtable_callback_sizeHint
  if not isNil(vtbl[].event):
    vtbl[].vtbl.event = fcQLCDNumber_vtable_callback_event
  if not isNil(vtbl[].paintEvent):
    vtbl[].vtbl.paintEvent = fcQLCDNumber_vtable_callback_paintEvent
  if not isNil(vtbl[].changeEvent):
    vtbl[].vtbl.changeEvent = fcQLCDNumber_vtable_callback_changeEvent
  if not isNil(vtbl[].initStyleOption):
    vtbl[].vtbl.initStyleOption = fcQLCDNumber_vtable_callback_initStyleOption
  if not isNil(vtbl[].devType):
    vtbl[].vtbl.devType = fcQLCDNumber_vtable_callback_devType
  if not isNil(vtbl[].setVisible):
    vtbl[].vtbl.setVisible = fcQLCDNumber_vtable_callback_setVisible
  if not isNil(vtbl[].minimumSizeHint):
    vtbl[].vtbl.minimumSizeHint = fcQLCDNumber_vtable_callback_minimumSizeHint
  if not isNil(vtbl[].heightForWidth):
    vtbl[].vtbl.heightForWidth = fcQLCDNumber_vtable_callback_heightForWidth
  if not isNil(vtbl[].hasHeightForWidth):
    vtbl[].vtbl.hasHeightForWidth = fcQLCDNumber_vtable_callback_hasHeightForWidth
  if not isNil(vtbl[].paintEngine):
    vtbl[].vtbl.paintEngine = fcQLCDNumber_vtable_callback_paintEngine
  if not isNil(vtbl[].mousePressEvent):
    vtbl[].vtbl.mousePressEvent = fcQLCDNumber_vtable_callback_mousePressEvent
  if not isNil(vtbl[].mouseReleaseEvent):
    vtbl[].vtbl.mouseReleaseEvent = fcQLCDNumber_vtable_callback_mouseReleaseEvent
  if not isNil(vtbl[].mouseDoubleClickEvent):
    vtbl[].vtbl.mouseDoubleClickEvent = fcQLCDNumber_vtable_callback_mouseDoubleClickEvent
  if not isNil(vtbl[].mouseMoveEvent):
    vtbl[].vtbl.mouseMoveEvent = fcQLCDNumber_vtable_callback_mouseMoveEvent
  if not isNil(vtbl[].wheelEvent):
    vtbl[].vtbl.wheelEvent = fcQLCDNumber_vtable_callback_wheelEvent
  if not isNil(vtbl[].keyPressEvent):
    vtbl[].vtbl.keyPressEvent = fcQLCDNumber_vtable_callback_keyPressEvent
  if not isNil(vtbl[].keyReleaseEvent):
    vtbl[].vtbl.keyReleaseEvent = fcQLCDNumber_vtable_callback_keyReleaseEvent
  if not isNil(vtbl[].focusInEvent):
    vtbl[].vtbl.focusInEvent = fcQLCDNumber_vtable_callback_focusInEvent
  if not isNil(vtbl[].focusOutEvent):
    vtbl[].vtbl.focusOutEvent = fcQLCDNumber_vtable_callback_focusOutEvent
  if not isNil(vtbl[].enterEvent):
    vtbl[].vtbl.enterEvent = fcQLCDNumber_vtable_callback_enterEvent
  if not isNil(vtbl[].leaveEvent):
    vtbl[].vtbl.leaveEvent = fcQLCDNumber_vtable_callback_leaveEvent
  if not isNil(vtbl[].moveEvent):
    vtbl[].vtbl.moveEvent = fcQLCDNumber_vtable_callback_moveEvent
  if not isNil(vtbl[].resizeEvent):
    vtbl[].vtbl.resizeEvent = fcQLCDNumber_vtable_callback_resizeEvent
  if not isNil(vtbl[].closeEvent):
    vtbl[].vtbl.closeEvent = fcQLCDNumber_vtable_callback_closeEvent
  if not isNil(vtbl[].contextMenuEvent):
    vtbl[].vtbl.contextMenuEvent = fcQLCDNumber_vtable_callback_contextMenuEvent
  if not isNil(vtbl[].tabletEvent):
    vtbl[].vtbl.tabletEvent = fcQLCDNumber_vtable_callback_tabletEvent
  if not isNil(vtbl[].actionEvent):
    vtbl[].vtbl.actionEvent = fcQLCDNumber_vtable_callback_actionEvent
  if not isNil(vtbl[].dragEnterEvent):
    vtbl[].vtbl.dragEnterEvent = fcQLCDNumber_vtable_callback_dragEnterEvent
  if not isNil(vtbl[].dragMoveEvent):
    vtbl[].vtbl.dragMoveEvent = fcQLCDNumber_vtable_callback_dragMoveEvent
  if not isNil(vtbl[].dragLeaveEvent):
    vtbl[].vtbl.dragLeaveEvent = fcQLCDNumber_vtable_callback_dragLeaveEvent
  if not isNil(vtbl[].dropEvent):
    vtbl[].vtbl.dropEvent = fcQLCDNumber_vtable_callback_dropEvent
  if not isNil(vtbl[].showEvent):
    vtbl[].vtbl.showEvent = fcQLCDNumber_vtable_callback_showEvent
  if not isNil(vtbl[].hideEvent):
    vtbl[].vtbl.hideEvent = fcQLCDNumber_vtable_callback_hideEvent
  if not isNil(vtbl[].nativeEvent):
    vtbl[].vtbl.nativeEvent = fcQLCDNumber_vtable_callback_nativeEvent
  if not isNil(vtbl[].metric):
    vtbl[].vtbl.metric = fcQLCDNumber_vtable_callback_metric
  if not isNil(vtbl[].initPainter):
    vtbl[].vtbl.initPainter = fcQLCDNumber_vtable_callback_initPainter
  if not isNil(vtbl[].redirected):
    vtbl[].vtbl.redirected = fcQLCDNumber_vtable_callback_redirected
  if not isNil(vtbl[].sharedPainter):
    vtbl[].vtbl.sharedPainter = fcQLCDNumber_vtable_callback_sharedPainter
  if not isNil(vtbl[].inputMethodEvent):
    vtbl[].vtbl.inputMethodEvent = fcQLCDNumber_vtable_callback_inputMethodEvent
  if not isNil(vtbl[].inputMethodQuery):
    vtbl[].vtbl.inputMethodQuery = fcQLCDNumber_vtable_callback_inputMethodQuery
  if not isNil(vtbl[].focusNextPrevChild):
    vtbl[].vtbl.focusNextPrevChild = fcQLCDNumber_vtable_callback_focusNextPrevChild
  if not isNil(vtbl[].eventFilter):
    vtbl[].vtbl.eventFilter = fcQLCDNumber_vtable_callback_eventFilter
  if not isNil(vtbl[].timerEvent):
    vtbl[].vtbl.timerEvent = fcQLCDNumber_vtable_callback_timerEvent
  if not isNil(vtbl[].childEvent):
    vtbl[].vtbl.childEvent = fcQLCDNumber_vtable_callback_childEvent
  if not isNil(vtbl[].customEvent):
    vtbl[].vtbl.customEvent = fcQLCDNumber_vtable_callback_customEvent
  if not isNil(vtbl[].connectNotify):
    vtbl[].vtbl.connectNotify = fcQLCDNumber_vtable_callback_connectNotify
  if not isNil(vtbl[].disconnectNotify):
    vtbl[].vtbl.disconnectNotify = fcQLCDNumber_vtable_callback_disconnectNotify
  gen_qlcdnumber_types.QLCDNumber(h: fcQLCDNumber_new2(addr(vtbl[].vtbl), addr(vtbl[])), owned: true)

proc create*(T: type gen_qlcdnumber_types.QLCDNumber,
    numDigits: cuint,
    vtbl: ref QLCDNumberVTable = nil): gen_qlcdnumber_types.QLCDNumber =
  let vtbl = if vtbl == nil: new QLCDNumberVTable else: vtbl
  GC_ref(vtbl)
  vtbl[].vtbl.destructor = proc(self: pointer) {.cdecl.} =
    let vtbl = cast[ref QLCDNumberVTable](fcQLCDNumber_vdata(self))
    GC_unref(vtbl)
  if not isNil(vtbl[].metaObject):
    vtbl[].vtbl.metaObject = fcQLCDNumber_vtable_callback_metaObject
  if not isNil(vtbl[].metacast):
    vtbl[].vtbl.metacast = fcQLCDNumber_vtable_callback_metacast
  if not isNil(vtbl[].metacall):
    vtbl[].vtbl.metacall = fcQLCDNumber_vtable_callback_metacall
  if not isNil(vtbl[].sizeHint):
    vtbl[].vtbl.sizeHint = fcQLCDNumber_vtable_callback_sizeHint
  if not isNil(vtbl[].event):
    vtbl[].vtbl.event = fcQLCDNumber_vtable_callback_event
  if not isNil(vtbl[].paintEvent):
    vtbl[].vtbl.paintEvent = fcQLCDNumber_vtable_callback_paintEvent
  if not isNil(vtbl[].changeEvent):
    vtbl[].vtbl.changeEvent = fcQLCDNumber_vtable_callback_changeEvent
  if not isNil(vtbl[].initStyleOption):
    vtbl[].vtbl.initStyleOption = fcQLCDNumber_vtable_callback_initStyleOption
  if not isNil(vtbl[].devType):
    vtbl[].vtbl.devType = fcQLCDNumber_vtable_callback_devType
  if not isNil(vtbl[].setVisible):
    vtbl[].vtbl.setVisible = fcQLCDNumber_vtable_callback_setVisible
  if not isNil(vtbl[].minimumSizeHint):
    vtbl[].vtbl.minimumSizeHint = fcQLCDNumber_vtable_callback_minimumSizeHint
  if not isNil(vtbl[].heightForWidth):
    vtbl[].vtbl.heightForWidth = fcQLCDNumber_vtable_callback_heightForWidth
  if not isNil(vtbl[].hasHeightForWidth):
    vtbl[].vtbl.hasHeightForWidth = fcQLCDNumber_vtable_callback_hasHeightForWidth
  if not isNil(vtbl[].paintEngine):
    vtbl[].vtbl.paintEngine = fcQLCDNumber_vtable_callback_paintEngine
  if not isNil(vtbl[].mousePressEvent):
    vtbl[].vtbl.mousePressEvent = fcQLCDNumber_vtable_callback_mousePressEvent
  if not isNil(vtbl[].mouseReleaseEvent):
    vtbl[].vtbl.mouseReleaseEvent = fcQLCDNumber_vtable_callback_mouseReleaseEvent
  if not isNil(vtbl[].mouseDoubleClickEvent):
    vtbl[].vtbl.mouseDoubleClickEvent = fcQLCDNumber_vtable_callback_mouseDoubleClickEvent
  if not isNil(vtbl[].mouseMoveEvent):
    vtbl[].vtbl.mouseMoveEvent = fcQLCDNumber_vtable_callback_mouseMoveEvent
  if not isNil(vtbl[].wheelEvent):
    vtbl[].vtbl.wheelEvent = fcQLCDNumber_vtable_callback_wheelEvent
  if not isNil(vtbl[].keyPressEvent):
    vtbl[].vtbl.keyPressEvent = fcQLCDNumber_vtable_callback_keyPressEvent
  if not isNil(vtbl[].keyReleaseEvent):
    vtbl[].vtbl.keyReleaseEvent = fcQLCDNumber_vtable_callback_keyReleaseEvent
  if not isNil(vtbl[].focusInEvent):
    vtbl[].vtbl.focusInEvent = fcQLCDNumber_vtable_callback_focusInEvent
  if not isNil(vtbl[].focusOutEvent):
    vtbl[].vtbl.focusOutEvent = fcQLCDNumber_vtable_callback_focusOutEvent
  if not isNil(vtbl[].enterEvent):
    vtbl[].vtbl.enterEvent = fcQLCDNumber_vtable_callback_enterEvent
  if not isNil(vtbl[].leaveEvent):
    vtbl[].vtbl.leaveEvent = fcQLCDNumber_vtable_callback_leaveEvent
  if not isNil(vtbl[].moveEvent):
    vtbl[].vtbl.moveEvent = fcQLCDNumber_vtable_callback_moveEvent
  if not isNil(vtbl[].resizeEvent):
    vtbl[].vtbl.resizeEvent = fcQLCDNumber_vtable_callback_resizeEvent
  if not isNil(vtbl[].closeEvent):
    vtbl[].vtbl.closeEvent = fcQLCDNumber_vtable_callback_closeEvent
  if not isNil(vtbl[].contextMenuEvent):
    vtbl[].vtbl.contextMenuEvent = fcQLCDNumber_vtable_callback_contextMenuEvent
  if not isNil(vtbl[].tabletEvent):
    vtbl[].vtbl.tabletEvent = fcQLCDNumber_vtable_callback_tabletEvent
  if not isNil(vtbl[].actionEvent):
    vtbl[].vtbl.actionEvent = fcQLCDNumber_vtable_callback_actionEvent
  if not isNil(vtbl[].dragEnterEvent):
    vtbl[].vtbl.dragEnterEvent = fcQLCDNumber_vtable_callback_dragEnterEvent
  if not isNil(vtbl[].dragMoveEvent):
    vtbl[].vtbl.dragMoveEvent = fcQLCDNumber_vtable_callback_dragMoveEvent
  if not isNil(vtbl[].dragLeaveEvent):
    vtbl[].vtbl.dragLeaveEvent = fcQLCDNumber_vtable_callback_dragLeaveEvent
  if not isNil(vtbl[].dropEvent):
    vtbl[].vtbl.dropEvent = fcQLCDNumber_vtable_callback_dropEvent
  if not isNil(vtbl[].showEvent):
    vtbl[].vtbl.showEvent = fcQLCDNumber_vtable_callback_showEvent
  if not isNil(vtbl[].hideEvent):
    vtbl[].vtbl.hideEvent = fcQLCDNumber_vtable_callback_hideEvent
  if not isNil(vtbl[].nativeEvent):
    vtbl[].vtbl.nativeEvent = fcQLCDNumber_vtable_callback_nativeEvent
  if not isNil(vtbl[].metric):
    vtbl[].vtbl.metric = fcQLCDNumber_vtable_callback_metric
  if not isNil(vtbl[].initPainter):
    vtbl[].vtbl.initPainter = fcQLCDNumber_vtable_callback_initPainter
  if not isNil(vtbl[].redirected):
    vtbl[].vtbl.redirected = fcQLCDNumber_vtable_callback_redirected
  if not isNil(vtbl[].sharedPainter):
    vtbl[].vtbl.sharedPainter = fcQLCDNumber_vtable_callback_sharedPainter
  if not isNil(vtbl[].inputMethodEvent):
    vtbl[].vtbl.inputMethodEvent = fcQLCDNumber_vtable_callback_inputMethodEvent
  if not isNil(vtbl[].inputMethodQuery):
    vtbl[].vtbl.inputMethodQuery = fcQLCDNumber_vtable_callback_inputMethodQuery
  if not isNil(vtbl[].focusNextPrevChild):
    vtbl[].vtbl.focusNextPrevChild = fcQLCDNumber_vtable_callback_focusNextPrevChild
  if not isNil(vtbl[].eventFilter):
    vtbl[].vtbl.eventFilter = fcQLCDNumber_vtable_callback_eventFilter
  if not isNil(vtbl[].timerEvent):
    vtbl[].vtbl.timerEvent = fcQLCDNumber_vtable_callback_timerEvent
  if not isNil(vtbl[].childEvent):
    vtbl[].vtbl.childEvent = fcQLCDNumber_vtable_callback_childEvent
  if not isNil(vtbl[].customEvent):
    vtbl[].vtbl.customEvent = fcQLCDNumber_vtable_callback_customEvent
  if not isNil(vtbl[].connectNotify):
    vtbl[].vtbl.connectNotify = fcQLCDNumber_vtable_callback_connectNotify
  if not isNil(vtbl[].disconnectNotify):
    vtbl[].vtbl.disconnectNotify = fcQLCDNumber_vtable_callback_disconnectNotify
  gen_qlcdnumber_types.QLCDNumber(h: fcQLCDNumber_new3(addr(vtbl[].vtbl), addr(vtbl[]), numDigits), owned: true)

proc create*(T: type gen_qlcdnumber_types.QLCDNumber,
    numDigits: cuint, parent: gen_qwidget_types.QWidget,
    vtbl: ref QLCDNumberVTable = nil): gen_qlcdnumber_types.QLCDNumber =
  let vtbl = if vtbl == nil: new QLCDNumberVTable else: vtbl
  GC_ref(vtbl)
  vtbl[].vtbl.destructor = proc(self: pointer) {.cdecl.} =
    let vtbl = cast[ref QLCDNumberVTable](fcQLCDNumber_vdata(self))
    GC_unref(vtbl)
  if not isNil(vtbl[].metaObject):
    vtbl[].vtbl.metaObject = fcQLCDNumber_vtable_callback_metaObject
  if not isNil(vtbl[].metacast):
    vtbl[].vtbl.metacast = fcQLCDNumber_vtable_callback_metacast
  if not isNil(vtbl[].metacall):
    vtbl[].vtbl.metacall = fcQLCDNumber_vtable_callback_metacall
  if not isNil(vtbl[].sizeHint):
    vtbl[].vtbl.sizeHint = fcQLCDNumber_vtable_callback_sizeHint
  if not isNil(vtbl[].event):
    vtbl[].vtbl.event = fcQLCDNumber_vtable_callback_event
  if not isNil(vtbl[].paintEvent):
    vtbl[].vtbl.paintEvent = fcQLCDNumber_vtable_callback_paintEvent
  if not isNil(vtbl[].changeEvent):
    vtbl[].vtbl.changeEvent = fcQLCDNumber_vtable_callback_changeEvent
  if not isNil(vtbl[].initStyleOption):
    vtbl[].vtbl.initStyleOption = fcQLCDNumber_vtable_callback_initStyleOption
  if not isNil(vtbl[].devType):
    vtbl[].vtbl.devType = fcQLCDNumber_vtable_callback_devType
  if not isNil(vtbl[].setVisible):
    vtbl[].vtbl.setVisible = fcQLCDNumber_vtable_callback_setVisible
  if not isNil(vtbl[].minimumSizeHint):
    vtbl[].vtbl.minimumSizeHint = fcQLCDNumber_vtable_callback_minimumSizeHint
  if not isNil(vtbl[].heightForWidth):
    vtbl[].vtbl.heightForWidth = fcQLCDNumber_vtable_callback_heightForWidth
  if not isNil(vtbl[].hasHeightForWidth):
    vtbl[].vtbl.hasHeightForWidth = fcQLCDNumber_vtable_callback_hasHeightForWidth
  if not isNil(vtbl[].paintEngine):
    vtbl[].vtbl.paintEngine = fcQLCDNumber_vtable_callback_paintEngine
  if not isNil(vtbl[].mousePressEvent):
    vtbl[].vtbl.mousePressEvent = fcQLCDNumber_vtable_callback_mousePressEvent
  if not isNil(vtbl[].mouseReleaseEvent):
    vtbl[].vtbl.mouseReleaseEvent = fcQLCDNumber_vtable_callback_mouseReleaseEvent
  if not isNil(vtbl[].mouseDoubleClickEvent):
    vtbl[].vtbl.mouseDoubleClickEvent = fcQLCDNumber_vtable_callback_mouseDoubleClickEvent
  if not isNil(vtbl[].mouseMoveEvent):
    vtbl[].vtbl.mouseMoveEvent = fcQLCDNumber_vtable_callback_mouseMoveEvent
  if not isNil(vtbl[].wheelEvent):
    vtbl[].vtbl.wheelEvent = fcQLCDNumber_vtable_callback_wheelEvent
  if not isNil(vtbl[].keyPressEvent):
    vtbl[].vtbl.keyPressEvent = fcQLCDNumber_vtable_callback_keyPressEvent
  if not isNil(vtbl[].keyReleaseEvent):
    vtbl[].vtbl.keyReleaseEvent = fcQLCDNumber_vtable_callback_keyReleaseEvent
  if not isNil(vtbl[].focusInEvent):
    vtbl[].vtbl.focusInEvent = fcQLCDNumber_vtable_callback_focusInEvent
  if not isNil(vtbl[].focusOutEvent):
    vtbl[].vtbl.focusOutEvent = fcQLCDNumber_vtable_callback_focusOutEvent
  if not isNil(vtbl[].enterEvent):
    vtbl[].vtbl.enterEvent = fcQLCDNumber_vtable_callback_enterEvent
  if not isNil(vtbl[].leaveEvent):
    vtbl[].vtbl.leaveEvent = fcQLCDNumber_vtable_callback_leaveEvent
  if not isNil(vtbl[].moveEvent):
    vtbl[].vtbl.moveEvent = fcQLCDNumber_vtable_callback_moveEvent
  if not isNil(vtbl[].resizeEvent):
    vtbl[].vtbl.resizeEvent = fcQLCDNumber_vtable_callback_resizeEvent
  if not isNil(vtbl[].closeEvent):
    vtbl[].vtbl.closeEvent = fcQLCDNumber_vtable_callback_closeEvent
  if not isNil(vtbl[].contextMenuEvent):
    vtbl[].vtbl.contextMenuEvent = fcQLCDNumber_vtable_callback_contextMenuEvent
  if not isNil(vtbl[].tabletEvent):
    vtbl[].vtbl.tabletEvent = fcQLCDNumber_vtable_callback_tabletEvent
  if not isNil(vtbl[].actionEvent):
    vtbl[].vtbl.actionEvent = fcQLCDNumber_vtable_callback_actionEvent
  if not isNil(vtbl[].dragEnterEvent):
    vtbl[].vtbl.dragEnterEvent = fcQLCDNumber_vtable_callback_dragEnterEvent
  if not isNil(vtbl[].dragMoveEvent):
    vtbl[].vtbl.dragMoveEvent = fcQLCDNumber_vtable_callback_dragMoveEvent
  if not isNil(vtbl[].dragLeaveEvent):
    vtbl[].vtbl.dragLeaveEvent = fcQLCDNumber_vtable_callback_dragLeaveEvent
  if not isNil(vtbl[].dropEvent):
    vtbl[].vtbl.dropEvent = fcQLCDNumber_vtable_callback_dropEvent
  if not isNil(vtbl[].showEvent):
    vtbl[].vtbl.showEvent = fcQLCDNumber_vtable_callback_showEvent
  if not isNil(vtbl[].hideEvent):
    vtbl[].vtbl.hideEvent = fcQLCDNumber_vtable_callback_hideEvent
  if not isNil(vtbl[].nativeEvent):
    vtbl[].vtbl.nativeEvent = fcQLCDNumber_vtable_callback_nativeEvent
  if not isNil(vtbl[].metric):
    vtbl[].vtbl.metric = fcQLCDNumber_vtable_callback_metric
  if not isNil(vtbl[].initPainter):
    vtbl[].vtbl.initPainter = fcQLCDNumber_vtable_callback_initPainter
  if not isNil(vtbl[].redirected):
    vtbl[].vtbl.redirected = fcQLCDNumber_vtable_callback_redirected
  if not isNil(vtbl[].sharedPainter):
    vtbl[].vtbl.sharedPainter = fcQLCDNumber_vtable_callback_sharedPainter
  if not isNil(vtbl[].inputMethodEvent):
    vtbl[].vtbl.inputMethodEvent = fcQLCDNumber_vtable_callback_inputMethodEvent
  if not isNil(vtbl[].inputMethodQuery):
    vtbl[].vtbl.inputMethodQuery = fcQLCDNumber_vtable_callback_inputMethodQuery
  if not isNil(vtbl[].focusNextPrevChild):
    vtbl[].vtbl.focusNextPrevChild = fcQLCDNumber_vtable_callback_focusNextPrevChild
  if not isNil(vtbl[].eventFilter):
    vtbl[].vtbl.eventFilter = fcQLCDNumber_vtable_callback_eventFilter
  if not isNil(vtbl[].timerEvent):
    vtbl[].vtbl.timerEvent = fcQLCDNumber_vtable_callback_timerEvent
  if not isNil(vtbl[].childEvent):
    vtbl[].vtbl.childEvent = fcQLCDNumber_vtable_callback_childEvent
  if not isNil(vtbl[].customEvent):
    vtbl[].vtbl.customEvent = fcQLCDNumber_vtable_callback_customEvent
  if not isNil(vtbl[].connectNotify):
    vtbl[].vtbl.connectNotify = fcQLCDNumber_vtable_callback_connectNotify
  if not isNil(vtbl[].disconnectNotify):
    vtbl[].vtbl.disconnectNotify = fcQLCDNumber_vtable_callback_disconnectNotify
  gen_qlcdnumber_types.QLCDNumber(h: fcQLCDNumber_new4(addr(vtbl[].vtbl), addr(vtbl[]), numDigits, parent.h), owned: true)

const cQLCDNumber_mvtbl = cQLCDNumberVTable(
  destructor: proc(self: pointer) {.cdecl.} =
    let inst = cast[ptr typeof(VirtualQLCDNumber()[])](self.fcQLCDNumber_vtbl())
    inst[].h = nil
    inst[].owned = false,

  metaObject: fcQLCDNumber_method_callback_metaObject,
  metacast: fcQLCDNumber_method_callback_metacast,
  metacall: fcQLCDNumber_method_callback_metacall,
  sizeHint: fcQLCDNumber_method_callback_sizeHint,
  event: fcQLCDNumber_method_callback_event,
  paintEvent: fcQLCDNumber_method_callback_paintEvent,
  changeEvent: fcQLCDNumber_method_callback_changeEvent,
  initStyleOption: fcQLCDNumber_method_callback_initStyleOption,
  devType: fcQLCDNumber_method_callback_devType,
  setVisible: fcQLCDNumber_method_callback_setVisible,
  minimumSizeHint: fcQLCDNumber_method_callback_minimumSizeHint,
  heightForWidth: fcQLCDNumber_method_callback_heightForWidth,
  hasHeightForWidth: fcQLCDNumber_method_callback_hasHeightForWidth,
  paintEngine: fcQLCDNumber_method_callback_paintEngine,
  mousePressEvent: fcQLCDNumber_method_callback_mousePressEvent,
  mouseReleaseEvent: fcQLCDNumber_method_callback_mouseReleaseEvent,
  mouseDoubleClickEvent: fcQLCDNumber_method_callback_mouseDoubleClickEvent,
  mouseMoveEvent: fcQLCDNumber_method_callback_mouseMoveEvent,
  wheelEvent: fcQLCDNumber_method_callback_wheelEvent,
  keyPressEvent: fcQLCDNumber_method_callback_keyPressEvent,
  keyReleaseEvent: fcQLCDNumber_method_callback_keyReleaseEvent,
  focusInEvent: fcQLCDNumber_method_callback_focusInEvent,
  focusOutEvent: fcQLCDNumber_method_callback_focusOutEvent,
  enterEvent: fcQLCDNumber_method_callback_enterEvent,
  leaveEvent: fcQLCDNumber_method_callback_leaveEvent,
  moveEvent: fcQLCDNumber_method_callback_moveEvent,
  resizeEvent: fcQLCDNumber_method_callback_resizeEvent,
  closeEvent: fcQLCDNumber_method_callback_closeEvent,
  contextMenuEvent: fcQLCDNumber_method_callback_contextMenuEvent,
  tabletEvent: fcQLCDNumber_method_callback_tabletEvent,
  actionEvent: fcQLCDNumber_method_callback_actionEvent,
  dragEnterEvent: fcQLCDNumber_method_callback_dragEnterEvent,
  dragMoveEvent: fcQLCDNumber_method_callback_dragMoveEvent,
  dragLeaveEvent: fcQLCDNumber_method_callback_dragLeaveEvent,
  dropEvent: fcQLCDNumber_method_callback_dropEvent,
  showEvent: fcQLCDNumber_method_callback_showEvent,
  hideEvent: fcQLCDNumber_method_callback_hideEvent,
  nativeEvent: fcQLCDNumber_method_callback_nativeEvent,
  metric: fcQLCDNumber_method_callback_metric,
  initPainter: fcQLCDNumber_method_callback_initPainter,
  redirected: fcQLCDNumber_method_callback_redirected,
  sharedPainter: fcQLCDNumber_method_callback_sharedPainter,
  inputMethodEvent: fcQLCDNumber_method_callback_inputMethodEvent,
  inputMethodQuery: fcQLCDNumber_method_callback_inputMethodQuery,
  focusNextPrevChild: fcQLCDNumber_method_callback_focusNextPrevChild,
  eventFilter: fcQLCDNumber_method_callback_eventFilter,
  timerEvent: fcQLCDNumber_method_callback_timerEvent,
  childEvent: fcQLCDNumber_method_callback_childEvent,
  customEvent: fcQLCDNumber_method_callback_customEvent,
  connectNotify: fcQLCDNumber_method_callback_connectNotify,
  disconnectNotify: fcQLCDNumber_method_callback_disconnectNotify,
)
proc create*(T: type gen_qlcdnumber_types.QLCDNumber,
    parent: gen_qwidget_types.QWidget,
    inst: VirtualQLCDNumber) =
  if inst[].h != nil: delete(move(inst[]))
  inst[].h = fcQLCDNumber_new(addr(cQLCDNumber_mvtbl), addr(inst[]), parent.h)
  inst[].owned = true

proc create*(T: type gen_qlcdnumber_types.QLCDNumber,
    inst: VirtualQLCDNumber) =
  if inst[].h != nil: delete(move(inst[]))
  inst[].h = fcQLCDNumber_new2(addr(cQLCDNumber_mvtbl), addr(inst[]))
  inst[].owned = true

proc create*(T: type gen_qlcdnumber_types.QLCDNumber,
    numDigits: cuint,
    inst: VirtualQLCDNumber) =
  if inst[].h != nil: delete(move(inst[]))
  inst[].h = fcQLCDNumber_new3(addr(cQLCDNumber_mvtbl), addr(inst[]), numDigits)
  inst[].owned = true

proc create*(T: type gen_qlcdnumber_types.QLCDNumber,
    numDigits: cuint, parent: gen_qwidget_types.QWidget,
    inst: VirtualQLCDNumber) =
  if inst[].h != nil: delete(move(inst[]))
  inst[].h = fcQLCDNumber_new4(addr(cQLCDNumber_mvtbl), addr(inst[]), numDigits, parent.h)
  inst[].owned = true

proc staticMetaObject*(_: type gen_qlcdnumber_types.QLCDNumber): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQLCDNumber_staticMetaObject())
