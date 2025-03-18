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


{.compile("gen_qscroller.cpp", QtWidgetsCFlags).}


type QScrollerStateEnum* = distinct cint
template Inactive*(_: type QScrollerStateEnum): untyped = 0
template Pressed*(_: type QScrollerStateEnum): untyped = 1
template Dragging*(_: type QScrollerStateEnum): untyped = 2
template Scrolling*(_: type QScrollerStateEnum): untyped = 3


type QScrollerScrollerGestureTypeEnum* = distinct cint
template TouchGesture*(_: type QScrollerScrollerGestureTypeEnum): untyped = 0
template LeftMouseButtonGesture*(_: type QScrollerScrollerGestureTypeEnum): untyped = 1
template RightMouseButtonGesture*(_: type QScrollerScrollerGestureTypeEnum): untyped = 2
template MiddleMouseButtonGesture*(_: type QScrollerScrollerGestureTypeEnum): untyped = 3


type QScrollerInputEnum* = distinct cint
template InputPress*(_: type QScrollerInputEnum): untyped = 1
template InputMove*(_: type QScrollerInputEnum): untyped = 2
template InputRelease*(_: type QScrollerInputEnum): untyped = 3


import ./gen_qscroller_types
export gen_qscroller_types

import
  ../QtCore/gen_qmetaobject_types,
  ../QtCore/gen_qobject,
  ../QtCore/gen_qobjectdefs_types,
  ../QtCore/gen_qpoint_types,
  ../QtCore/gen_qrect_types,
  ./gen_qscrollerproperties_types
export
  gen_qmetaobject_types,
  gen_qobject,
  gen_qobjectdefs_types,
  gen_qpoint_types,
  gen_qrect_types,
  gen_qscrollerproperties_types

type cQScroller*{.exportc: "QScroller", incompleteStruct.} = object

proc fcQScroller_metaObject(self: pointer): pointer {.importc: "QScroller_metaObject".}
proc fcQScroller_metacast(self: pointer, param1: cstring): pointer {.importc: "QScroller_metacast".}
proc fcQScroller_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.importc: "QScroller_metacall".}
proc fcQScroller_tr(s: cstring): struct_miqt_string {.importc: "QScroller_tr".}
proc fcQScroller_trUtf8(s: cstring): struct_miqt_string {.importc: "QScroller_trUtf8".}
proc fcQScroller_hasScroller(target: pointer): bool {.importc: "QScroller_hasScroller".}
proc fcQScroller_scroller(target: pointer): pointer {.importc: "QScroller_scroller".}
proc fcQScroller_scrollerWithTarget(target: pointer): pointer {.importc: "QScroller_scrollerWithTarget".}
proc fcQScroller_grabGesture(target: pointer): cint {.importc: "QScroller_grabGesture".}
proc fcQScroller_grabbedGesture(target: pointer): cint {.importc: "QScroller_grabbedGesture".}
proc fcQScroller_ungrabGesture(target: pointer): void {.importc: "QScroller_ungrabGesture".}
proc fcQScroller_activeScrollers(): struct_miqt_array {.importc: "QScroller_activeScrollers".}
proc fcQScroller_target(self: pointer): pointer {.importc: "QScroller_target".}
proc fcQScroller_state(self: pointer): cint {.importc: "QScroller_state".}
proc fcQScroller_handleInput(self: pointer, input: cint, position: pointer): bool {.importc: "QScroller_handleInput".}
proc fcQScroller_stop(self: pointer): void {.importc: "QScroller_stop".}
proc fcQScroller_velocity(self: pointer): pointer {.importc: "QScroller_velocity".}
proc fcQScroller_finalPosition(self: pointer): pointer {.importc: "QScroller_finalPosition".}
proc fcQScroller_pixelPerMeter(self: pointer): pointer {.importc: "QScroller_pixelPerMeter".}
proc fcQScroller_scrollerProperties(self: pointer): pointer {.importc: "QScroller_scrollerProperties".}
proc fcQScroller_setSnapPositionsX(self: pointer, positions: struct_miqt_array): void {.importc: "QScroller_setSnapPositionsX".}
proc fcQScroller_setSnapPositionsX2(self: pointer, first: float64, interval: float64): void {.importc: "QScroller_setSnapPositionsX2".}
proc fcQScroller_setSnapPositionsY(self: pointer, positions: struct_miqt_array): void {.importc: "QScroller_setSnapPositionsY".}
proc fcQScroller_setSnapPositionsY2(self: pointer, first: float64, interval: float64): void {.importc: "QScroller_setSnapPositionsY2".}
proc fcQScroller_setScrollerProperties(self: pointer, prop: pointer): void {.importc: "QScroller_setScrollerProperties".}
proc fcQScroller_scrollTo(self: pointer, pos: pointer): void {.importc: "QScroller_scrollTo".}
proc fcQScroller_scrollTo2(self: pointer, pos: pointer, scrollTime: cint): void {.importc: "QScroller_scrollTo2".}
proc fcQScroller_ensureVisible(self: pointer, rect: pointer, xmargin: float64, ymargin: float64): void {.importc: "QScroller_ensureVisible".}
proc fcQScroller_ensureVisible2(self: pointer, rect: pointer, xmargin: float64, ymargin: float64, scrollTime: cint): void {.importc: "QScroller_ensureVisible2".}
proc fcQScroller_resendPrepareEvent(self: pointer): void {.importc: "QScroller_resendPrepareEvent".}
proc fcQScroller_stateChanged(self: pointer, newstate: cint): void {.importc: "QScroller_stateChanged".}
proc fcQScroller_connect_stateChanged(self: pointer, slot: int, callback: proc (slot: int, newstate: cint) {.cdecl.}, release: proc(slot: int) {.cdecl.}) {.importc: "QScroller_connect_stateChanged".}
proc fcQScroller_scrollerPropertiesChanged(self: pointer, param1: pointer): void {.importc: "QScroller_scrollerPropertiesChanged".}
proc fcQScroller_connect_scrollerPropertiesChanged(self: pointer, slot: int, callback: proc (slot: int, param1: pointer) {.cdecl.}, release: proc(slot: int) {.cdecl.}) {.importc: "QScroller_connect_scrollerPropertiesChanged".}
proc fcQScroller_tr2(s: cstring, c: cstring): struct_miqt_string {.importc: "QScroller_tr2".}
proc fcQScroller_tr3(s: cstring, c: cstring, n: cint): struct_miqt_string {.importc: "QScroller_tr3".}
proc fcQScroller_trUtf82(s: cstring, c: cstring): struct_miqt_string {.importc: "QScroller_trUtf82".}
proc fcQScroller_trUtf83(s: cstring, c: cstring, n: cint): struct_miqt_string {.importc: "QScroller_trUtf83".}
proc fcQScroller_grabGesture2(target: pointer, gestureType: cint): cint {.importc: "QScroller_grabGesture2".}
proc fcQScroller_handleInput3(self: pointer, input: cint, position: pointer, timestamp: clonglong): bool {.importc: "QScroller_handleInput3".}
proc fcQScroller_protectedbase_sender(self: pointer): pointer {.importc: "QScroller_protectedbase_sender".}
proc fcQScroller_protectedbase_senderSignalIndex(self: pointer): cint {.importc: "QScroller_protectedbase_senderSignalIndex".}
proc fcQScroller_protectedbase_receivers(self: pointer, signal: cstring): cint {.importc: "QScroller_protectedbase_receivers".}
proc fcQScroller_protectedbase_isSignalConnected(self: pointer, signal: pointer): bool {.importc: "QScroller_protectedbase_isSignalConnected".}
proc fcQScroller_staticMetaObject(): pointer {.importc: "QScroller_staticMetaObject".}

proc metaObject*(self: gen_qscroller_types.QScroller): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQScroller_metaObject(self.h), owned: false)

proc metacast*(self: gen_qscroller_types.QScroller, param1: cstring): pointer =
  fcQScroller_metacast(self.h, param1)

proc metacall*(self: gen_qscroller_types.QScroller, param1: cint, param2: cint, param3: pointer): cint =
  fcQScroller_metacall(self.h, cint(param1), param2, param3)

proc tr*(_: type gen_qscroller_types.QScroller, s: cstring): string =
  let v_ms = fcQScroller_tr(s)
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

proc trUtf8*(_: type gen_qscroller_types.QScroller, s: cstring): string =
  let v_ms = fcQScroller_trUtf8(s)
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

proc hasScroller*(_: type gen_qscroller_types.QScroller, target: gen_qobject_types.QObject): bool =
  fcQScroller_hasScroller(target.h)

proc scroller*(_: type gen_qscroller_types.QScroller, target: gen_qobject_types.QObject): gen_qscroller_types.QScroller =
  gen_qscroller_types.QScroller(h: fcQScroller_scroller(target.h), owned: false)

proc scroller2*(_: type gen_qscroller_types.QScroller, target: gen_qobject_types.QObject): gen_qscroller_types.QScroller =
  gen_qscroller_types.QScroller(h: fcQScroller_scrollerWithTarget(target.h), owned: false)

proc grabGesture*(_: type gen_qscroller_types.QScroller, target: gen_qobject_types.QObject): cint =
  cint(fcQScroller_grabGesture(target.h))

proc grabbedGesture*(_: type gen_qscroller_types.QScroller, target: gen_qobject_types.QObject): cint =
  cint(fcQScroller_grabbedGesture(target.h))

proc ungrabGesture*(_: type gen_qscroller_types.QScroller, target: gen_qobject_types.QObject): void =
  fcQScroller_ungrabGesture(target.h)

proc activeScrollers*(_: type gen_qscroller_types.QScroller): seq[gen_qscroller_types.QScroller] =
  var v_ma = fcQScroller_activeScrollers()
  var vx_ret = newSeq[gen_qscroller_types.QScroller](int(v_ma.len))
  let v_outCast = cast[ptr UncheckedArray[pointer]](v_ma.data)
  for i in 0 ..< v_ma.len:
    vx_ret[i] = gen_qscroller_types.QScroller(h: v_outCast[i], owned: false)
  c_free(v_ma.data)
  vx_ret

proc target*(self: gen_qscroller_types.QScroller): gen_qobject_types.QObject =
  gen_qobject_types.QObject(h: fcQScroller_target(self.h), owned: false)

proc state*(self: gen_qscroller_types.QScroller): cint =
  cint(fcQScroller_state(self.h))

proc handleInput*(self: gen_qscroller_types.QScroller, input: cint, position: gen_qpoint_types.QPointF): bool =
  fcQScroller_handleInput(self.h, cint(input), position.h)

proc stop*(self: gen_qscroller_types.QScroller): void =
  fcQScroller_stop(self.h)

proc velocity*(self: gen_qscroller_types.QScroller): gen_qpoint_types.QPointF =
  gen_qpoint_types.QPointF(h: fcQScroller_velocity(self.h), owned: true)

proc finalPosition*(self: gen_qscroller_types.QScroller): gen_qpoint_types.QPointF =
  gen_qpoint_types.QPointF(h: fcQScroller_finalPosition(self.h), owned: true)

proc pixelPerMeter*(self: gen_qscroller_types.QScroller): gen_qpoint_types.QPointF =
  gen_qpoint_types.QPointF(h: fcQScroller_pixelPerMeter(self.h), owned: true)

proc scrollerProperties*(self: gen_qscroller_types.QScroller): gen_qscrollerproperties_types.QScrollerProperties =
  gen_qscrollerproperties_types.QScrollerProperties(h: fcQScroller_scrollerProperties(self.h), owned: true)

proc setSnapPositionsX*(self: gen_qscroller_types.QScroller, positions: openArray[float64]): void =
  var positions_CArray = newSeq[float64](len(positions))
  for i in 0..<len(positions):
    positions_CArray[i] = positions[i]

  fcQScroller_setSnapPositionsX(self.h, struct_miqt_array(len: csize_t(len(positions)), data: if len(positions) == 0: nil else: addr(positions_CArray[0])))

proc setSnapPositionsX*(self: gen_qscroller_types.QScroller, first: float64, interval: float64): void =
  fcQScroller_setSnapPositionsX2(self.h, first, interval)

proc setSnapPositionsY*(self: gen_qscroller_types.QScroller, positions: openArray[float64]): void =
  var positions_CArray = newSeq[float64](len(positions))
  for i in 0..<len(positions):
    positions_CArray[i] = positions[i]

  fcQScroller_setSnapPositionsY(self.h, struct_miqt_array(len: csize_t(len(positions)), data: if len(positions) == 0: nil else: addr(positions_CArray[0])))

proc setSnapPositionsY*(self: gen_qscroller_types.QScroller, first: float64, interval: float64): void =
  fcQScroller_setSnapPositionsY2(self.h, first, interval)

proc setScrollerProperties*(self: gen_qscroller_types.QScroller, prop: gen_qscrollerproperties_types.QScrollerProperties): void =
  fcQScroller_setScrollerProperties(self.h, prop.h)

proc scrollTo*(self: gen_qscroller_types.QScroller, pos: gen_qpoint_types.QPointF): void =
  fcQScroller_scrollTo(self.h, pos.h)

proc scrollTo*(self: gen_qscroller_types.QScroller, pos: gen_qpoint_types.QPointF, scrollTime: cint): void =
  fcQScroller_scrollTo2(self.h, pos.h, scrollTime)

proc ensureVisible*(self: gen_qscroller_types.QScroller, rect: gen_qrect_types.QRectF, xmargin: float64, ymargin: float64): void =
  fcQScroller_ensureVisible(self.h, rect.h, xmargin, ymargin)

proc ensureVisible*(self: gen_qscroller_types.QScroller, rect: gen_qrect_types.QRectF, xmargin: float64, ymargin: float64, scrollTime: cint): void =
  fcQScroller_ensureVisible2(self.h, rect.h, xmargin, ymargin, scrollTime)

proc resendPrepareEvent*(self: gen_qscroller_types.QScroller): void =
  fcQScroller_resendPrepareEvent(self.h)

proc stateChanged*(self: gen_qscroller_types.QScroller, newstate: cint): void =
  fcQScroller_stateChanged(self.h, cint(newstate))

type QScrollerstateChangedSlot* = proc(newstate: cint)
proc fcQScroller_slot_callback_stateChanged(slot: int, newstate: cint) {.cdecl.} =
  let nimfunc = cast[ptr QScrollerstateChangedSlot](cast[pointer](slot))
  let slotval1 = cint(newstate)

  nimfunc[](slotval1)

proc fcQScroller_slot_callback_stateChanged_release(slot: int) {.cdecl.} =
  let nimfunc = cast[ref QScrollerstateChangedSlot](cast[pointer](slot))
  GC_unref(nimfunc)

proc onStateChanged*(self: gen_qscroller_types.QScroller, slot: QScrollerstateChangedSlot) =
  var tmp = new QScrollerstateChangedSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQScroller_connect_stateChanged(self.h, cast[int](addr tmp[]), fcQScroller_slot_callback_stateChanged, fcQScroller_slot_callback_stateChanged_release)

proc scrollerPropertiesChanged*(self: gen_qscroller_types.QScroller, param1: gen_qscrollerproperties_types.QScrollerProperties): void =
  fcQScroller_scrollerPropertiesChanged(self.h, param1.h)

type QScrollerscrollerPropertiesChangedSlot* = proc(param1: gen_qscrollerproperties_types.QScrollerProperties)
proc fcQScroller_slot_callback_scrollerPropertiesChanged(slot: int, param1: pointer) {.cdecl.} =
  let nimfunc = cast[ptr QScrollerscrollerPropertiesChangedSlot](cast[pointer](slot))
  let slotval1 = gen_qscrollerproperties_types.QScrollerProperties(h: param1, owned: false)

  nimfunc[](slotval1)

proc fcQScroller_slot_callback_scrollerPropertiesChanged_release(slot: int) {.cdecl.} =
  let nimfunc = cast[ref QScrollerscrollerPropertiesChangedSlot](cast[pointer](slot))
  GC_unref(nimfunc)

proc onScrollerPropertiesChanged*(self: gen_qscroller_types.QScroller, slot: QScrollerscrollerPropertiesChangedSlot) =
  var tmp = new QScrollerscrollerPropertiesChangedSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQScroller_connect_scrollerPropertiesChanged(self.h, cast[int](addr tmp[]), fcQScroller_slot_callback_scrollerPropertiesChanged, fcQScroller_slot_callback_scrollerPropertiesChanged_release)

proc tr*(_: type gen_qscroller_types.QScroller, s: cstring, c: cstring): string =
  let v_ms = fcQScroller_tr2(s, c)
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

proc tr*(_: type gen_qscroller_types.QScroller, s: cstring, c: cstring, n: cint): string =
  let v_ms = fcQScroller_tr3(s, c, n)
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

proc trUtf8*(_: type gen_qscroller_types.QScroller, s: cstring, c: cstring): string =
  let v_ms = fcQScroller_trUtf82(s, c)
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

proc trUtf8*(_: type gen_qscroller_types.QScroller, s: cstring, c: cstring, n: cint): string =
  let v_ms = fcQScroller_trUtf83(s, c, n)
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

proc grabGesture*(_: type gen_qscroller_types.QScroller, target: gen_qobject_types.QObject, gestureType: cint): cint =
  cint(fcQScroller_grabGesture2(target.h, cint(gestureType)))

proc handleInput*(self: gen_qscroller_types.QScroller, input: cint, position: gen_qpoint_types.QPointF, timestamp: clonglong): bool =
  fcQScroller_handleInput3(self.h, cint(input), position.h, timestamp)

proc sender*(self: gen_qscroller_types.QScroller): gen_qobject_types.QObject =
  gen_qobject_types.QObject(h: fcQScroller_protectedbase_sender(self.h), owned: false)

proc senderSignalIndex*(self: gen_qscroller_types.QScroller): cint =
  fcQScroller_protectedbase_senderSignalIndex(self.h)

proc receivers*(self: gen_qscroller_types.QScroller, signal: cstring): cint =
  fcQScroller_protectedbase_receivers(self.h, signal)

proc isSignalConnected*(self: gen_qscroller_types.QScroller, signal: gen_qmetaobject_types.QMetaMethod): bool =
  fcQScroller_protectedbase_isSignalConnected(self.h, signal.h)

proc staticMetaObject*(_: type gen_qscroller_types.QScroller): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQScroller_staticMetaObject())
