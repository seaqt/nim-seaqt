import ./Qt6Core_libs

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

const cflags = gorge("pkg-config --cflags Qt6Core")  & " -fPIC"
{.compile("gen_qtimer.cpp", cflags).}


import ./gen_qtimer_types
export gen_qtimer_types

import
  ./gen_qcoreevent_types,
  ./gen_qmetaobject_types,
  ./gen_qobject,
  ./gen_qobjectdefs_types
export
  gen_qcoreevent_types,
  gen_qmetaobject_types,
  gen_qobject,
  gen_qobjectdefs_types

type cQTimer*{.exportc: "QTimer", incompleteStruct.} = object

proc fcQTimer_new(): ptr cQTimer {.importc: "QTimer_new".}
proc fcQTimer_new2(parent: pointer): ptr cQTimer {.importc: "QTimer_new2".}
proc fcQTimer_metaObject(self: pointer, ): pointer {.importc: "QTimer_metaObject".}
proc fcQTimer_metacast(self: pointer, param1: cstring): pointer {.importc: "QTimer_metacast".}
proc fcQTimer_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.importc: "QTimer_metacall".}
proc fcQTimer_tr(s: cstring): struct_miqt_string {.importc: "QTimer_tr".}
proc fcQTimer_isActive(self: pointer, ): bool {.importc: "QTimer_isActive".}
proc fcQTimer_timerId(self: pointer, ): cint {.importc: "QTimer_timerId".}
proc fcQTimer_setInterval(self: pointer, msec: cint): void {.importc: "QTimer_setInterval".}
proc fcQTimer_interval(self: pointer, ): cint {.importc: "QTimer_interval".}
proc fcQTimer_remainingTime(self: pointer, ): cint {.importc: "QTimer_remainingTime".}
proc fcQTimer_setTimerType(self: pointer, atype: cint): void {.importc: "QTimer_setTimerType".}
proc fcQTimer_timerType(self: pointer, ): cint {.importc: "QTimer_timerType".}
proc fcQTimer_setSingleShot(self: pointer, singleShot: bool): void {.importc: "QTimer_setSingleShot".}
proc fcQTimer_isSingleShot(self: pointer, ): bool {.importc: "QTimer_isSingleShot".}
proc fcQTimer_start(self: pointer, msec: cint): void {.importc: "QTimer_start".}
proc fcQTimer_start2(self: pointer, ): void {.importc: "QTimer_start2".}
proc fcQTimer_stop(self: pointer, ): void {.importc: "QTimer_stop".}
proc fcQTimer_tr2(s: cstring, c: cstring): struct_miqt_string {.importc: "QTimer_tr2".}
proc fcQTimer_tr3(s: cstring, c: cstring, n: cint): struct_miqt_string {.importc: "QTimer_tr3".}
proc fQTimer_virtualbase_metaObject(self: pointer, ): pointer{.importc: "QTimer_virtualbase_metaObject".}
proc fcQTimer_override_virtual_metaObject(self: pointer, slot: int) {.importc: "QTimer_override_virtual_metaObject".}
proc fQTimer_virtualbase_metacast(self: pointer, param1: cstring): pointer{.importc: "QTimer_virtualbase_metacast".}
proc fcQTimer_override_virtual_metacast(self: pointer, slot: int) {.importc: "QTimer_override_virtual_metacast".}
proc fQTimer_virtualbase_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint{.importc: "QTimer_virtualbase_metacall".}
proc fcQTimer_override_virtual_metacall(self: pointer, slot: int) {.importc: "QTimer_override_virtual_metacall".}
proc fQTimer_virtualbase_timerEvent(self: pointer, param1: pointer): void{.importc: "QTimer_virtualbase_timerEvent".}
proc fcQTimer_override_virtual_timerEvent(self: pointer, slot: int) {.importc: "QTimer_override_virtual_timerEvent".}
proc fQTimer_virtualbase_event(self: pointer, event: pointer): bool{.importc: "QTimer_virtualbase_event".}
proc fcQTimer_override_virtual_event(self: pointer, slot: int) {.importc: "QTimer_override_virtual_event".}
proc fQTimer_virtualbase_eventFilter(self: pointer, watched: pointer, event: pointer): bool{.importc: "QTimer_virtualbase_eventFilter".}
proc fcQTimer_override_virtual_eventFilter(self: pointer, slot: int) {.importc: "QTimer_override_virtual_eventFilter".}
proc fQTimer_virtualbase_childEvent(self: pointer, event: pointer): void{.importc: "QTimer_virtualbase_childEvent".}
proc fcQTimer_override_virtual_childEvent(self: pointer, slot: int) {.importc: "QTimer_override_virtual_childEvent".}
proc fQTimer_virtualbase_customEvent(self: pointer, event: pointer): void{.importc: "QTimer_virtualbase_customEvent".}
proc fcQTimer_override_virtual_customEvent(self: pointer, slot: int) {.importc: "QTimer_override_virtual_customEvent".}
proc fQTimer_virtualbase_connectNotify(self: pointer, signal: pointer): void{.importc: "QTimer_virtualbase_connectNotify".}
proc fcQTimer_override_virtual_connectNotify(self: pointer, slot: int) {.importc: "QTimer_override_virtual_connectNotify".}
proc fQTimer_virtualbase_disconnectNotify(self: pointer, signal: pointer): void{.importc: "QTimer_virtualbase_disconnectNotify".}
proc fcQTimer_override_virtual_disconnectNotify(self: pointer, slot: int) {.importc: "QTimer_override_virtual_disconnectNotify".}
proc fcQTimer_staticMetaObject(): pointer {.importc: "QTimer_staticMetaObject".}
proc fcQTimer_delete(self: pointer) {.importc: "QTimer_delete".}


func init*(T: type gen_qtimer_types.QTimer, h: ptr cQTimer): gen_qtimer_types.QTimer =
  T(h: h)
proc create*(T: type gen_qtimer_types.QTimer, ): gen_qtimer_types.QTimer =
  gen_qtimer_types.QTimer.init(fcQTimer_new())

proc create*(T: type gen_qtimer_types.QTimer, parent: gen_qobject_types.QObject): gen_qtimer_types.QTimer =
  gen_qtimer_types.QTimer.init(fcQTimer_new2(parent.h))

proc metaObject*(self: gen_qtimer_types.QTimer, ): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQTimer_metaObject(self.h))

proc metacast*(self: gen_qtimer_types.QTimer, param1: cstring): pointer =
  fcQTimer_metacast(self.h, param1)

proc metacall*(self: gen_qtimer_types.QTimer, param1: cint, param2: cint, param3: pointer): cint =
  fcQTimer_metacall(self.h, cint(param1), param2, param3)

proc tr*(_: type gen_qtimer_types.QTimer, s: cstring): string =
  let v_ms = fcQTimer_tr(s)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc isActive*(self: gen_qtimer_types.QTimer, ): bool =
  fcQTimer_isActive(self.h)

proc timerId*(self: gen_qtimer_types.QTimer, ): cint =
  fcQTimer_timerId(self.h)

proc setInterval*(self: gen_qtimer_types.QTimer, msec: cint): void =
  fcQTimer_setInterval(self.h, msec)

proc interval*(self: gen_qtimer_types.QTimer, ): cint =
  fcQTimer_interval(self.h)

proc remainingTime*(self: gen_qtimer_types.QTimer, ): cint =
  fcQTimer_remainingTime(self.h)

proc setTimerType*(self: gen_qtimer_types.QTimer, atype: cint): void =
  fcQTimer_setTimerType(self.h, cint(atype))

proc timerType*(self: gen_qtimer_types.QTimer, ): cint =
  cint(fcQTimer_timerType(self.h))

proc setSingleShot*(self: gen_qtimer_types.QTimer, singleShot: bool): void =
  fcQTimer_setSingleShot(self.h, singleShot)

proc isSingleShot*(self: gen_qtimer_types.QTimer, ): bool =
  fcQTimer_isSingleShot(self.h)

proc start*(self: gen_qtimer_types.QTimer, msec: cint): void =
  fcQTimer_start(self.h, msec)

proc start*(self: gen_qtimer_types.QTimer, ): void =
  fcQTimer_start2(self.h)

proc stop*(self: gen_qtimer_types.QTimer, ): void =
  fcQTimer_stop(self.h)

proc tr*(_: type gen_qtimer_types.QTimer, s: cstring, c: cstring): string =
  let v_ms = fcQTimer_tr2(s, c)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc tr*(_: type gen_qtimer_types.QTimer, s: cstring, c: cstring, n: cint): string =
  let v_ms = fcQTimer_tr3(s, c, n)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc QTimermetaObject*(self: gen_qtimer_types.QTimer, ): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fQTimer_virtualbase_metaObject(self.h))

type QTimermetaObjectProc* = proc(): gen_qobjectdefs_types.QMetaObject
proc onmetaObject*(self: gen_qtimer_types.QTimer, slot: QTimermetaObjectProc) =
  # TODO check subclass
  var tmp = new QTimermetaObjectProc
  tmp[] = slot
  GC_ref(tmp)
  fcQTimer_override_virtual_metaObject(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QTimer_metaObject(self: ptr cQTimer, slot: int): pointer {.exportc: "miqt_exec_callback_QTimer_metaObject ".} =
  var nimfunc = cast[ptr QTimermetaObjectProc](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )

  virtualReturn.h
proc QTimermetacast*(self: gen_qtimer_types.QTimer, param1: cstring): pointer =
  fQTimer_virtualbase_metacast(self.h, param1)

type QTimermetacastProc* = proc(param1: cstring): pointer
proc onmetacast*(self: gen_qtimer_types.QTimer, slot: QTimermetacastProc) =
  # TODO check subclass
  var tmp = new QTimermetacastProc
  tmp[] = slot
  GC_ref(tmp)
  fcQTimer_override_virtual_metacast(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QTimer_metacast(self: ptr cQTimer, slot: int, param1: cstring): pointer {.exportc: "miqt_exec_callback_QTimer_metacast ".} =
  var nimfunc = cast[ptr QTimermetacastProc](cast[pointer](slot))
  let slotval1 = (param1)


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn
proc QTimermetacall*(self: gen_qtimer_types.QTimer, param1: cint, param2: cint, param3: pointer): cint =
  fQTimer_virtualbase_metacall(self.h, cint(param1), param2, param3)

type QTimermetacallProc* = proc(param1: cint, param2: cint, param3: pointer): cint
proc onmetacall*(self: gen_qtimer_types.QTimer, slot: QTimermetacallProc) =
  # TODO check subclass
  var tmp = new QTimermetacallProc
  tmp[] = slot
  GC_ref(tmp)
  fcQTimer_override_virtual_metacall(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QTimer_metacall(self: ptr cQTimer, slot: int, param1: cint, param2: cint, param3: pointer): cint {.exportc: "miqt_exec_callback_QTimer_metacall ".} =
  var nimfunc = cast[ptr QTimermetacallProc](cast[pointer](slot))
  let slotval1 = cint(param1)

  let slotval2 = param2

  let slotval3 = param3


  let virtualReturn = nimfunc[](slotval1, slotval2, slotval3 )

  virtualReturn
proc QTimertimerEvent*(self: gen_qtimer_types.QTimer, param1: gen_qcoreevent_types.QTimerEvent): void =
  fQTimer_virtualbase_timerEvent(self.h, param1.h)

type QTimertimerEventProc* = proc(param1: gen_qcoreevent_types.QTimerEvent): void
proc ontimerEvent*(self: gen_qtimer_types.QTimer, slot: QTimertimerEventProc) =
  # TODO check subclass
  var tmp = new QTimertimerEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQTimer_override_virtual_timerEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QTimer_timerEvent(self: ptr cQTimer, slot: int, param1: pointer): void {.exportc: "miqt_exec_callback_QTimer_timerEvent ".} =
  var nimfunc = cast[ptr QTimertimerEventProc](cast[pointer](slot))
  let slotval1 = gen_qcoreevent_types.QTimerEvent(h: param1)


  nimfunc[](slotval1)
proc QTimerevent*(self: gen_qtimer_types.QTimer, event: gen_qcoreevent_types.QEvent): bool =
  fQTimer_virtualbase_event(self.h, event.h)

type QTimereventProc* = proc(event: gen_qcoreevent_types.QEvent): bool
proc onevent*(self: gen_qtimer_types.QTimer, slot: QTimereventProc) =
  # TODO check subclass
  var tmp = new QTimereventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQTimer_override_virtual_event(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QTimer_event(self: ptr cQTimer, slot: int, event: pointer): bool {.exportc: "miqt_exec_callback_QTimer_event ".} =
  var nimfunc = cast[ptr QTimereventProc](cast[pointer](slot))
  let slotval1 = gen_qcoreevent_types.QEvent(h: event)


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn
proc QTimereventFilter*(self: gen_qtimer_types.QTimer, watched: gen_qobject_types.QObject, event: gen_qcoreevent_types.QEvent): bool =
  fQTimer_virtualbase_eventFilter(self.h, watched.h, event.h)

type QTimereventFilterProc* = proc(watched: gen_qobject_types.QObject, event: gen_qcoreevent_types.QEvent): bool
proc oneventFilter*(self: gen_qtimer_types.QTimer, slot: QTimereventFilterProc) =
  # TODO check subclass
  var tmp = new QTimereventFilterProc
  tmp[] = slot
  GC_ref(tmp)
  fcQTimer_override_virtual_eventFilter(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QTimer_eventFilter(self: ptr cQTimer, slot: int, watched: pointer, event: pointer): bool {.exportc: "miqt_exec_callback_QTimer_eventFilter ".} =
  var nimfunc = cast[ptr QTimereventFilterProc](cast[pointer](slot))
  let slotval1 = gen_qobject_types.QObject(h: watched)

  let slotval2 = gen_qcoreevent_types.QEvent(h: event)


  let virtualReturn = nimfunc[](slotval1, slotval2 )

  virtualReturn
proc QTimerchildEvent*(self: gen_qtimer_types.QTimer, event: gen_qcoreevent_types.QChildEvent): void =
  fQTimer_virtualbase_childEvent(self.h, event.h)

type QTimerchildEventProc* = proc(event: gen_qcoreevent_types.QChildEvent): void
proc onchildEvent*(self: gen_qtimer_types.QTimer, slot: QTimerchildEventProc) =
  # TODO check subclass
  var tmp = new QTimerchildEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQTimer_override_virtual_childEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QTimer_childEvent(self: ptr cQTimer, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QTimer_childEvent ".} =
  var nimfunc = cast[ptr QTimerchildEventProc](cast[pointer](slot))
  let slotval1 = gen_qcoreevent_types.QChildEvent(h: event)


  nimfunc[](slotval1)
proc QTimercustomEvent*(self: gen_qtimer_types.QTimer, event: gen_qcoreevent_types.QEvent): void =
  fQTimer_virtualbase_customEvent(self.h, event.h)

type QTimercustomEventProc* = proc(event: gen_qcoreevent_types.QEvent): void
proc oncustomEvent*(self: gen_qtimer_types.QTimer, slot: QTimercustomEventProc) =
  # TODO check subclass
  var tmp = new QTimercustomEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQTimer_override_virtual_customEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QTimer_customEvent(self: ptr cQTimer, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QTimer_customEvent ".} =
  var nimfunc = cast[ptr QTimercustomEventProc](cast[pointer](slot))
  let slotval1 = gen_qcoreevent_types.QEvent(h: event)


  nimfunc[](slotval1)
proc QTimerconnectNotify*(self: gen_qtimer_types.QTimer, signal: gen_qmetaobject_types.QMetaMethod): void =
  fQTimer_virtualbase_connectNotify(self.h, signal.h)

type QTimerconnectNotifyProc* = proc(signal: gen_qmetaobject_types.QMetaMethod): void
proc onconnectNotify*(self: gen_qtimer_types.QTimer, slot: QTimerconnectNotifyProc) =
  # TODO check subclass
  var tmp = new QTimerconnectNotifyProc
  tmp[] = slot
  GC_ref(tmp)
  fcQTimer_override_virtual_connectNotify(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QTimer_connectNotify(self: ptr cQTimer, slot: int, signal: pointer): void {.exportc: "miqt_exec_callback_QTimer_connectNotify ".} =
  var nimfunc = cast[ptr QTimerconnectNotifyProc](cast[pointer](slot))
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal)


  nimfunc[](slotval1)
proc QTimerdisconnectNotify*(self: gen_qtimer_types.QTimer, signal: gen_qmetaobject_types.QMetaMethod): void =
  fQTimer_virtualbase_disconnectNotify(self.h, signal.h)

type QTimerdisconnectNotifyProc* = proc(signal: gen_qmetaobject_types.QMetaMethod): void
proc ondisconnectNotify*(self: gen_qtimer_types.QTimer, slot: QTimerdisconnectNotifyProc) =
  # TODO check subclass
  var tmp = new QTimerdisconnectNotifyProc
  tmp[] = slot
  GC_ref(tmp)
  fcQTimer_override_virtual_disconnectNotify(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QTimer_disconnectNotify(self: ptr cQTimer, slot: int, signal: pointer): void {.exportc: "miqt_exec_callback_QTimer_disconnectNotify ".} =
  var nimfunc = cast[ptr QTimerdisconnectNotifyProc](cast[pointer](slot))
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal)


  nimfunc[](slotval1)
proc staticMetaObject*(_: type gen_qtimer_types.QTimer): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQTimer_staticMetaObject())
proc delete*(self: gen_qtimer_types.QTimer) =
  fcQTimer_delete(self.h)
