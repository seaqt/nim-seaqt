import ./Qt5Core_libs

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

const cflags = gorge("pkg-config --cflags Qt5Core")  & " -fPIC"
{.compile("gen_qeventtransition.cpp", cflags).}


import ./gen_qeventtransition_types
export gen_qeventtransition_types

import
  ./gen_qabstracttransition,
  ./gen_qcoreevent_types,
  ./gen_qmetaobject_types,
  ./gen_qobject_types,
  ./gen_qobjectdefs_types,
  ./gen_qstate_types
export
  gen_qabstracttransition,
  gen_qcoreevent_types,
  gen_qmetaobject_types,
  gen_qobject_types,
  gen_qobjectdefs_types,
  gen_qstate_types

type cQEventTransition*{.exportc: "QEventTransition", incompleteStruct.} = object

proc fcQEventTransition_new(): ptr cQEventTransition {.importc: "QEventTransition_new".}
proc fcQEventTransition_new2(objectVal: pointer, typeVal: cint): ptr cQEventTransition {.importc: "QEventTransition_new2".}
proc fcQEventTransition_new3(sourceState: pointer): ptr cQEventTransition {.importc: "QEventTransition_new3".}
proc fcQEventTransition_new4(objectVal: pointer, typeVal: cint, sourceState: pointer): ptr cQEventTransition {.importc: "QEventTransition_new4".}
proc fcQEventTransition_metaObject(self: pointer, ): pointer {.importc: "QEventTransition_metaObject".}
proc fcQEventTransition_metacast(self: pointer, param1: cstring): pointer {.importc: "QEventTransition_metacast".}
proc fcQEventTransition_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.importc: "QEventTransition_metacall".}
proc fcQEventTransition_tr(s: cstring): struct_miqt_string {.importc: "QEventTransition_tr".}
proc fcQEventTransition_trUtf8(s: cstring): struct_miqt_string {.importc: "QEventTransition_trUtf8".}
proc fcQEventTransition_eventSource(self: pointer, ): pointer {.importc: "QEventTransition_eventSource".}
proc fcQEventTransition_setEventSource(self: pointer, objectVal: pointer): void {.importc: "QEventTransition_setEventSource".}
proc fcQEventTransition_eventType(self: pointer, ): cint {.importc: "QEventTransition_eventType".}
proc fcQEventTransition_setEventType(self: pointer, typeVal: cint): void {.importc: "QEventTransition_setEventType".}
proc fcQEventTransition_tr2(s: cstring, c: cstring): struct_miqt_string {.importc: "QEventTransition_tr2".}
proc fcQEventTransition_tr3(s: cstring, c: cstring, n: cint): struct_miqt_string {.importc: "QEventTransition_tr3".}
proc fcQEventTransition_trUtf82(s: cstring, c: cstring): struct_miqt_string {.importc: "QEventTransition_trUtf82".}
proc fcQEventTransition_trUtf83(s: cstring, c: cstring, n: cint): struct_miqt_string {.importc: "QEventTransition_trUtf83".}
proc fQEventTransition_virtualbase_metaObject(self: pointer, ): pointer{.importc: "QEventTransition_virtualbase_metaObject".}
proc fcQEventTransition_override_virtual_metaObject(self: pointer, slot: int) {.importc: "QEventTransition_override_virtual_metaObject".}
proc fQEventTransition_virtualbase_metacast(self: pointer, param1: cstring): pointer{.importc: "QEventTransition_virtualbase_metacast".}
proc fcQEventTransition_override_virtual_metacast(self: pointer, slot: int) {.importc: "QEventTransition_override_virtual_metacast".}
proc fQEventTransition_virtualbase_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint{.importc: "QEventTransition_virtualbase_metacall".}
proc fcQEventTransition_override_virtual_metacall(self: pointer, slot: int) {.importc: "QEventTransition_override_virtual_metacall".}
proc fQEventTransition_virtualbase_eventTest(self: pointer, event: pointer): bool{.importc: "QEventTransition_virtualbase_eventTest".}
proc fcQEventTransition_override_virtual_eventTest(self: pointer, slot: int) {.importc: "QEventTransition_override_virtual_eventTest".}
proc fQEventTransition_virtualbase_onTransition(self: pointer, event: pointer): void{.importc: "QEventTransition_virtualbase_onTransition".}
proc fcQEventTransition_override_virtual_onTransition(self: pointer, slot: int) {.importc: "QEventTransition_override_virtual_onTransition".}
proc fQEventTransition_virtualbase_event(self: pointer, e: pointer): bool{.importc: "QEventTransition_virtualbase_event".}
proc fcQEventTransition_override_virtual_event(self: pointer, slot: int) {.importc: "QEventTransition_override_virtual_event".}
proc fQEventTransition_virtualbase_eventFilter(self: pointer, watched: pointer, event: pointer): bool{.importc: "QEventTransition_virtualbase_eventFilter".}
proc fcQEventTransition_override_virtual_eventFilter(self: pointer, slot: int) {.importc: "QEventTransition_override_virtual_eventFilter".}
proc fQEventTransition_virtualbase_timerEvent(self: pointer, event: pointer): void{.importc: "QEventTransition_virtualbase_timerEvent".}
proc fcQEventTransition_override_virtual_timerEvent(self: pointer, slot: int) {.importc: "QEventTransition_override_virtual_timerEvent".}
proc fQEventTransition_virtualbase_childEvent(self: pointer, event: pointer): void{.importc: "QEventTransition_virtualbase_childEvent".}
proc fcQEventTransition_override_virtual_childEvent(self: pointer, slot: int) {.importc: "QEventTransition_override_virtual_childEvent".}
proc fQEventTransition_virtualbase_customEvent(self: pointer, event: pointer): void{.importc: "QEventTransition_virtualbase_customEvent".}
proc fcQEventTransition_override_virtual_customEvent(self: pointer, slot: int) {.importc: "QEventTransition_override_virtual_customEvent".}
proc fQEventTransition_virtualbase_connectNotify(self: pointer, signal: pointer): void{.importc: "QEventTransition_virtualbase_connectNotify".}
proc fcQEventTransition_override_virtual_connectNotify(self: pointer, slot: int) {.importc: "QEventTransition_override_virtual_connectNotify".}
proc fQEventTransition_virtualbase_disconnectNotify(self: pointer, signal: pointer): void{.importc: "QEventTransition_virtualbase_disconnectNotify".}
proc fcQEventTransition_override_virtual_disconnectNotify(self: pointer, slot: int) {.importc: "QEventTransition_override_virtual_disconnectNotify".}
proc fcQEventTransition_staticMetaObject(): pointer {.importc: "QEventTransition_staticMetaObject".}
proc fcQEventTransition_delete(self: pointer) {.importc: "QEventTransition_delete".}


func init*(T: type gen_qeventtransition_types.QEventTransition, h: ptr cQEventTransition): gen_qeventtransition_types.QEventTransition =
  T(h: h)
proc create*(T: type gen_qeventtransition_types.QEventTransition, ): gen_qeventtransition_types.QEventTransition =
  gen_qeventtransition_types.QEventTransition.init(fcQEventTransition_new())

proc create*(T: type gen_qeventtransition_types.QEventTransition, objectVal: gen_qobject_types.QObject, typeVal: cint): gen_qeventtransition_types.QEventTransition =
  gen_qeventtransition_types.QEventTransition.init(fcQEventTransition_new2(objectVal.h, cint(typeVal)))

proc create*(T: type gen_qeventtransition_types.QEventTransition, sourceState: gen_qstate_types.QState): gen_qeventtransition_types.QEventTransition =
  gen_qeventtransition_types.QEventTransition.init(fcQEventTransition_new3(sourceState.h))

proc create*(T: type gen_qeventtransition_types.QEventTransition, objectVal: gen_qobject_types.QObject, typeVal: cint, sourceState: gen_qstate_types.QState): gen_qeventtransition_types.QEventTransition =
  gen_qeventtransition_types.QEventTransition.init(fcQEventTransition_new4(objectVal.h, cint(typeVal), sourceState.h))

proc metaObject*(self: gen_qeventtransition_types.QEventTransition, ): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQEventTransition_metaObject(self.h))

proc metacast*(self: gen_qeventtransition_types.QEventTransition, param1: cstring): pointer =
  fcQEventTransition_metacast(self.h, param1)

proc metacall*(self: gen_qeventtransition_types.QEventTransition, param1: cint, param2: cint, param3: pointer): cint =
  fcQEventTransition_metacall(self.h, cint(param1), param2, param3)

proc tr*(_: type gen_qeventtransition_types.QEventTransition, s: cstring): string =
  let v_ms = fcQEventTransition_tr(s)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc trUtf8*(_: type gen_qeventtransition_types.QEventTransition, s: cstring): string =
  let v_ms = fcQEventTransition_trUtf8(s)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc eventSource*(self: gen_qeventtransition_types.QEventTransition, ): gen_qobject_types.QObject =
  gen_qobject_types.QObject(h: fcQEventTransition_eventSource(self.h))

proc setEventSource*(self: gen_qeventtransition_types.QEventTransition, objectVal: gen_qobject_types.QObject): void =
  fcQEventTransition_setEventSource(self.h, objectVal.h)

proc eventType*(self: gen_qeventtransition_types.QEventTransition, ): cint =
  cint(fcQEventTransition_eventType(self.h))

proc setEventType*(self: gen_qeventtransition_types.QEventTransition, typeVal: cint): void =
  fcQEventTransition_setEventType(self.h, cint(typeVal))

proc tr*(_: type gen_qeventtransition_types.QEventTransition, s: cstring, c: cstring): string =
  let v_ms = fcQEventTransition_tr2(s, c)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc tr*(_: type gen_qeventtransition_types.QEventTransition, s: cstring, c: cstring, n: cint): string =
  let v_ms = fcQEventTransition_tr3(s, c, n)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc trUtf8*(_: type gen_qeventtransition_types.QEventTransition, s: cstring, c: cstring): string =
  let v_ms = fcQEventTransition_trUtf82(s, c)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc trUtf8*(_: type gen_qeventtransition_types.QEventTransition, s: cstring, c: cstring, n: cint): string =
  let v_ms = fcQEventTransition_trUtf83(s, c, n)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc QEventTransitionmetaObject*(self: gen_qeventtransition_types.QEventTransition, ): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fQEventTransition_virtualbase_metaObject(self.h))

type QEventTransitionmetaObjectProc* = proc(): gen_qobjectdefs_types.QMetaObject
proc onmetaObject*(self: gen_qeventtransition_types.QEventTransition, slot: QEventTransitionmetaObjectProc) =
  # TODO check subclass
  var tmp = new QEventTransitionmetaObjectProc
  tmp[] = slot
  GC_ref(tmp)
  fcQEventTransition_override_virtual_metaObject(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QEventTransition_metaObject(self: ptr cQEventTransition, slot: int): pointer {.exportc: "miqt_exec_callback_QEventTransition_metaObject ".} =
  var nimfunc = cast[ptr QEventTransitionmetaObjectProc](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )

  virtualReturn.h
proc QEventTransitionmetacast*(self: gen_qeventtransition_types.QEventTransition, param1: cstring): pointer =
  fQEventTransition_virtualbase_metacast(self.h, param1)

type QEventTransitionmetacastProc* = proc(param1: cstring): pointer
proc onmetacast*(self: gen_qeventtransition_types.QEventTransition, slot: QEventTransitionmetacastProc) =
  # TODO check subclass
  var tmp = new QEventTransitionmetacastProc
  tmp[] = slot
  GC_ref(tmp)
  fcQEventTransition_override_virtual_metacast(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QEventTransition_metacast(self: ptr cQEventTransition, slot: int, param1: cstring): pointer {.exportc: "miqt_exec_callback_QEventTransition_metacast ".} =
  var nimfunc = cast[ptr QEventTransitionmetacastProc](cast[pointer](slot))
  let slotval1 = (param1)


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn
proc QEventTransitionmetacall*(self: gen_qeventtransition_types.QEventTransition, param1: cint, param2: cint, param3: pointer): cint =
  fQEventTransition_virtualbase_metacall(self.h, cint(param1), param2, param3)

type QEventTransitionmetacallProc* = proc(param1: cint, param2: cint, param3: pointer): cint
proc onmetacall*(self: gen_qeventtransition_types.QEventTransition, slot: QEventTransitionmetacallProc) =
  # TODO check subclass
  var tmp = new QEventTransitionmetacallProc
  tmp[] = slot
  GC_ref(tmp)
  fcQEventTransition_override_virtual_metacall(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QEventTransition_metacall(self: ptr cQEventTransition, slot: int, param1: cint, param2: cint, param3: pointer): cint {.exportc: "miqt_exec_callback_QEventTransition_metacall ".} =
  var nimfunc = cast[ptr QEventTransitionmetacallProc](cast[pointer](slot))
  let slotval1 = cint(param1)

  let slotval2 = param2

  let slotval3 = param3


  let virtualReturn = nimfunc[](slotval1, slotval2, slotval3 )

  virtualReturn
proc QEventTransitioneventTest*(self: gen_qeventtransition_types.QEventTransition, event: gen_qcoreevent_types.QEvent): bool =
  fQEventTransition_virtualbase_eventTest(self.h, event.h)

type QEventTransitioneventTestProc* = proc(event: gen_qcoreevent_types.QEvent): bool
proc oneventTest*(self: gen_qeventtransition_types.QEventTransition, slot: QEventTransitioneventTestProc) =
  # TODO check subclass
  var tmp = new QEventTransitioneventTestProc
  tmp[] = slot
  GC_ref(tmp)
  fcQEventTransition_override_virtual_eventTest(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QEventTransition_eventTest(self: ptr cQEventTransition, slot: int, event: pointer): bool {.exportc: "miqt_exec_callback_QEventTransition_eventTest ".} =
  var nimfunc = cast[ptr QEventTransitioneventTestProc](cast[pointer](slot))
  let slotval1 = gen_qcoreevent_types.QEvent(h: event)


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn
proc QEventTransitiononTransition*(self: gen_qeventtransition_types.QEventTransition, event: gen_qcoreevent_types.QEvent): void =
  fQEventTransition_virtualbase_onTransition(self.h, event.h)

type QEventTransitiononTransitionProc* = proc(event: gen_qcoreevent_types.QEvent): void
proc ononTransition*(self: gen_qeventtransition_types.QEventTransition, slot: QEventTransitiononTransitionProc) =
  # TODO check subclass
  var tmp = new QEventTransitiononTransitionProc
  tmp[] = slot
  GC_ref(tmp)
  fcQEventTransition_override_virtual_onTransition(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QEventTransition_onTransition(self: ptr cQEventTransition, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QEventTransition_onTransition ".} =
  var nimfunc = cast[ptr QEventTransitiononTransitionProc](cast[pointer](slot))
  let slotval1 = gen_qcoreevent_types.QEvent(h: event)


  nimfunc[](slotval1)
proc QEventTransitionevent*(self: gen_qeventtransition_types.QEventTransition, e: gen_qcoreevent_types.QEvent): bool =
  fQEventTransition_virtualbase_event(self.h, e.h)

type QEventTransitioneventProc* = proc(e: gen_qcoreevent_types.QEvent): bool
proc onevent*(self: gen_qeventtransition_types.QEventTransition, slot: QEventTransitioneventProc) =
  # TODO check subclass
  var tmp = new QEventTransitioneventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQEventTransition_override_virtual_event(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QEventTransition_event(self: ptr cQEventTransition, slot: int, e: pointer): bool {.exportc: "miqt_exec_callback_QEventTransition_event ".} =
  var nimfunc = cast[ptr QEventTransitioneventProc](cast[pointer](slot))
  let slotval1 = gen_qcoreevent_types.QEvent(h: e)


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn
proc QEventTransitioneventFilter*(self: gen_qeventtransition_types.QEventTransition, watched: gen_qobject_types.QObject, event: gen_qcoreevent_types.QEvent): bool =
  fQEventTransition_virtualbase_eventFilter(self.h, watched.h, event.h)

type QEventTransitioneventFilterProc* = proc(watched: gen_qobject_types.QObject, event: gen_qcoreevent_types.QEvent): bool
proc oneventFilter*(self: gen_qeventtransition_types.QEventTransition, slot: QEventTransitioneventFilterProc) =
  # TODO check subclass
  var tmp = new QEventTransitioneventFilterProc
  tmp[] = slot
  GC_ref(tmp)
  fcQEventTransition_override_virtual_eventFilter(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QEventTransition_eventFilter(self: ptr cQEventTransition, slot: int, watched: pointer, event: pointer): bool {.exportc: "miqt_exec_callback_QEventTransition_eventFilter ".} =
  var nimfunc = cast[ptr QEventTransitioneventFilterProc](cast[pointer](slot))
  let slotval1 = gen_qobject_types.QObject(h: watched)

  let slotval2 = gen_qcoreevent_types.QEvent(h: event)


  let virtualReturn = nimfunc[](slotval1, slotval2 )

  virtualReturn
proc QEventTransitiontimerEvent*(self: gen_qeventtransition_types.QEventTransition, event: gen_qcoreevent_types.QTimerEvent): void =
  fQEventTransition_virtualbase_timerEvent(self.h, event.h)

type QEventTransitiontimerEventProc* = proc(event: gen_qcoreevent_types.QTimerEvent): void
proc ontimerEvent*(self: gen_qeventtransition_types.QEventTransition, slot: QEventTransitiontimerEventProc) =
  # TODO check subclass
  var tmp = new QEventTransitiontimerEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQEventTransition_override_virtual_timerEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QEventTransition_timerEvent(self: ptr cQEventTransition, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QEventTransition_timerEvent ".} =
  var nimfunc = cast[ptr QEventTransitiontimerEventProc](cast[pointer](slot))
  let slotval1 = gen_qcoreevent_types.QTimerEvent(h: event)


  nimfunc[](slotval1)
proc QEventTransitionchildEvent*(self: gen_qeventtransition_types.QEventTransition, event: gen_qcoreevent_types.QChildEvent): void =
  fQEventTransition_virtualbase_childEvent(self.h, event.h)

type QEventTransitionchildEventProc* = proc(event: gen_qcoreevent_types.QChildEvent): void
proc onchildEvent*(self: gen_qeventtransition_types.QEventTransition, slot: QEventTransitionchildEventProc) =
  # TODO check subclass
  var tmp = new QEventTransitionchildEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQEventTransition_override_virtual_childEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QEventTransition_childEvent(self: ptr cQEventTransition, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QEventTransition_childEvent ".} =
  var nimfunc = cast[ptr QEventTransitionchildEventProc](cast[pointer](slot))
  let slotval1 = gen_qcoreevent_types.QChildEvent(h: event)


  nimfunc[](slotval1)
proc QEventTransitioncustomEvent*(self: gen_qeventtransition_types.QEventTransition, event: gen_qcoreevent_types.QEvent): void =
  fQEventTransition_virtualbase_customEvent(self.h, event.h)

type QEventTransitioncustomEventProc* = proc(event: gen_qcoreevent_types.QEvent): void
proc oncustomEvent*(self: gen_qeventtransition_types.QEventTransition, slot: QEventTransitioncustomEventProc) =
  # TODO check subclass
  var tmp = new QEventTransitioncustomEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQEventTransition_override_virtual_customEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QEventTransition_customEvent(self: ptr cQEventTransition, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QEventTransition_customEvent ".} =
  var nimfunc = cast[ptr QEventTransitioncustomEventProc](cast[pointer](slot))
  let slotval1 = gen_qcoreevent_types.QEvent(h: event)


  nimfunc[](slotval1)
proc QEventTransitionconnectNotify*(self: gen_qeventtransition_types.QEventTransition, signal: gen_qmetaobject_types.QMetaMethod): void =
  fQEventTransition_virtualbase_connectNotify(self.h, signal.h)

type QEventTransitionconnectNotifyProc* = proc(signal: gen_qmetaobject_types.QMetaMethod): void
proc onconnectNotify*(self: gen_qeventtransition_types.QEventTransition, slot: QEventTransitionconnectNotifyProc) =
  # TODO check subclass
  var tmp = new QEventTransitionconnectNotifyProc
  tmp[] = slot
  GC_ref(tmp)
  fcQEventTransition_override_virtual_connectNotify(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QEventTransition_connectNotify(self: ptr cQEventTransition, slot: int, signal: pointer): void {.exportc: "miqt_exec_callback_QEventTransition_connectNotify ".} =
  var nimfunc = cast[ptr QEventTransitionconnectNotifyProc](cast[pointer](slot))
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal)


  nimfunc[](slotval1)
proc QEventTransitiondisconnectNotify*(self: gen_qeventtransition_types.QEventTransition, signal: gen_qmetaobject_types.QMetaMethod): void =
  fQEventTransition_virtualbase_disconnectNotify(self.h, signal.h)

type QEventTransitiondisconnectNotifyProc* = proc(signal: gen_qmetaobject_types.QMetaMethod): void
proc ondisconnectNotify*(self: gen_qeventtransition_types.QEventTransition, slot: QEventTransitiondisconnectNotifyProc) =
  # TODO check subclass
  var tmp = new QEventTransitiondisconnectNotifyProc
  tmp[] = slot
  GC_ref(tmp)
  fcQEventTransition_override_virtual_disconnectNotify(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QEventTransition_disconnectNotify(self: ptr cQEventTransition, slot: int, signal: pointer): void {.exportc: "miqt_exec_callback_QEventTransition_disconnectNotify ".} =
  var nimfunc = cast[ptr QEventTransitiondisconnectNotifyProc](cast[pointer](slot))
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal)


  nimfunc[](slotval1)
proc staticMetaObject*(_: type gen_qeventtransition_types.QEventTransition): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQEventTransition_staticMetaObject())
proc delete*(self: gen_qeventtransition_types.QEventTransition) =
  fcQEventTransition_delete(self.h)
