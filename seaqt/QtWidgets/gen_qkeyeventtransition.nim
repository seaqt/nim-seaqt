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
{.compile("gen_qkeyeventtransition.cpp", cflags).}


import ./gen_qkeyeventtransition_types
export gen_qkeyeventtransition_types

import
  ../QtCore/gen_qcoreevent_types,
  ../QtCore/gen_qeventtransition,
  ../QtCore/gen_qmetaobject_types,
  ../QtCore/gen_qobject_types,
  ../QtCore/gen_qobjectdefs_types,
  ../QtCore/gen_qstate_types
export
  gen_qcoreevent_types,
  gen_qeventtransition,
  gen_qmetaobject_types,
  gen_qobject_types,
  gen_qobjectdefs_types,
  gen_qstate_types

type cQKeyEventTransition*{.exportc: "QKeyEventTransition", incompleteStruct.} = object

proc fcQKeyEventTransition_new(): ptr cQKeyEventTransition {.importc: "QKeyEventTransition_new".}
proc fcQKeyEventTransition_new2(objectVal: pointer, typeVal: cint, key: cint): ptr cQKeyEventTransition {.importc: "QKeyEventTransition_new2".}
proc fcQKeyEventTransition_new3(sourceState: pointer): ptr cQKeyEventTransition {.importc: "QKeyEventTransition_new3".}
proc fcQKeyEventTransition_new4(objectVal: pointer, typeVal: cint, key: cint, sourceState: pointer): ptr cQKeyEventTransition {.importc: "QKeyEventTransition_new4".}
proc fcQKeyEventTransition_metaObject(self: pointer, ): pointer {.importc: "QKeyEventTransition_metaObject".}
proc fcQKeyEventTransition_metacast(self: pointer, param1: cstring): pointer {.importc: "QKeyEventTransition_metacast".}
proc fcQKeyEventTransition_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.importc: "QKeyEventTransition_metacall".}
proc fcQKeyEventTransition_tr(s: cstring): struct_miqt_string {.importc: "QKeyEventTransition_tr".}
proc fcQKeyEventTransition_trUtf8(s: cstring): struct_miqt_string {.importc: "QKeyEventTransition_trUtf8".}
proc fcQKeyEventTransition_key(self: pointer, ): cint {.importc: "QKeyEventTransition_key".}
proc fcQKeyEventTransition_setKey(self: pointer, key: cint): void {.importc: "QKeyEventTransition_setKey".}
proc fcQKeyEventTransition_modifierMask(self: pointer, ): cint {.importc: "QKeyEventTransition_modifierMask".}
proc fcQKeyEventTransition_setModifierMask(self: pointer, modifiers: cint): void {.importc: "QKeyEventTransition_setModifierMask".}
proc fcQKeyEventTransition_tr2(s: cstring, c: cstring): struct_miqt_string {.importc: "QKeyEventTransition_tr2".}
proc fcQKeyEventTransition_tr3(s: cstring, c: cstring, n: cint): struct_miqt_string {.importc: "QKeyEventTransition_tr3".}
proc fcQKeyEventTransition_trUtf82(s: cstring, c: cstring): struct_miqt_string {.importc: "QKeyEventTransition_trUtf82".}
proc fcQKeyEventTransition_trUtf83(s: cstring, c: cstring, n: cint): struct_miqt_string {.importc: "QKeyEventTransition_trUtf83".}
proc fQKeyEventTransition_virtualbase_metaObject(self: pointer, ): pointer{.importc: "QKeyEventTransition_virtualbase_metaObject".}
proc fcQKeyEventTransition_override_virtual_metaObject(self: pointer, slot: int) {.importc: "QKeyEventTransition_override_virtual_metaObject".}
proc fQKeyEventTransition_virtualbase_metacast(self: pointer, param1: cstring): pointer{.importc: "QKeyEventTransition_virtualbase_metacast".}
proc fcQKeyEventTransition_override_virtual_metacast(self: pointer, slot: int) {.importc: "QKeyEventTransition_override_virtual_metacast".}
proc fQKeyEventTransition_virtualbase_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint{.importc: "QKeyEventTransition_virtualbase_metacall".}
proc fcQKeyEventTransition_override_virtual_metacall(self: pointer, slot: int) {.importc: "QKeyEventTransition_override_virtual_metacall".}
proc fQKeyEventTransition_virtualbase_onTransition(self: pointer, event: pointer): void{.importc: "QKeyEventTransition_virtualbase_onTransition".}
proc fcQKeyEventTransition_override_virtual_onTransition(self: pointer, slot: int) {.importc: "QKeyEventTransition_override_virtual_onTransition".}
proc fQKeyEventTransition_virtualbase_eventTest(self: pointer, event: pointer): bool{.importc: "QKeyEventTransition_virtualbase_eventTest".}
proc fcQKeyEventTransition_override_virtual_eventTest(self: pointer, slot: int) {.importc: "QKeyEventTransition_override_virtual_eventTest".}
proc fQKeyEventTransition_virtualbase_event(self: pointer, e: pointer): bool{.importc: "QKeyEventTransition_virtualbase_event".}
proc fcQKeyEventTransition_override_virtual_event(self: pointer, slot: int) {.importc: "QKeyEventTransition_override_virtual_event".}
proc fQKeyEventTransition_virtualbase_eventFilter(self: pointer, watched: pointer, event: pointer): bool{.importc: "QKeyEventTransition_virtualbase_eventFilter".}
proc fcQKeyEventTransition_override_virtual_eventFilter(self: pointer, slot: int) {.importc: "QKeyEventTransition_override_virtual_eventFilter".}
proc fQKeyEventTransition_virtualbase_timerEvent(self: pointer, event: pointer): void{.importc: "QKeyEventTransition_virtualbase_timerEvent".}
proc fcQKeyEventTransition_override_virtual_timerEvent(self: pointer, slot: int) {.importc: "QKeyEventTransition_override_virtual_timerEvent".}
proc fQKeyEventTransition_virtualbase_childEvent(self: pointer, event: pointer): void{.importc: "QKeyEventTransition_virtualbase_childEvent".}
proc fcQKeyEventTransition_override_virtual_childEvent(self: pointer, slot: int) {.importc: "QKeyEventTransition_override_virtual_childEvent".}
proc fQKeyEventTransition_virtualbase_customEvent(self: pointer, event: pointer): void{.importc: "QKeyEventTransition_virtualbase_customEvent".}
proc fcQKeyEventTransition_override_virtual_customEvent(self: pointer, slot: int) {.importc: "QKeyEventTransition_override_virtual_customEvent".}
proc fQKeyEventTransition_virtualbase_connectNotify(self: pointer, signal: pointer): void{.importc: "QKeyEventTransition_virtualbase_connectNotify".}
proc fcQKeyEventTransition_override_virtual_connectNotify(self: pointer, slot: int) {.importc: "QKeyEventTransition_override_virtual_connectNotify".}
proc fQKeyEventTransition_virtualbase_disconnectNotify(self: pointer, signal: pointer): void{.importc: "QKeyEventTransition_virtualbase_disconnectNotify".}
proc fcQKeyEventTransition_override_virtual_disconnectNotify(self: pointer, slot: int) {.importc: "QKeyEventTransition_override_virtual_disconnectNotify".}
proc fcQKeyEventTransition_staticMetaObject(): pointer {.importc: "QKeyEventTransition_staticMetaObject".}
proc fcQKeyEventTransition_delete(self: pointer) {.importc: "QKeyEventTransition_delete".}


func init*(T: type gen_qkeyeventtransition_types.QKeyEventTransition, h: ptr cQKeyEventTransition): gen_qkeyeventtransition_types.QKeyEventTransition =
  T(h: h)
proc create*(T: type gen_qkeyeventtransition_types.QKeyEventTransition, ): gen_qkeyeventtransition_types.QKeyEventTransition =
  gen_qkeyeventtransition_types.QKeyEventTransition.init(fcQKeyEventTransition_new())

proc create*(T: type gen_qkeyeventtransition_types.QKeyEventTransition, objectVal: gen_qobject_types.QObject, typeVal: cint, key: cint): gen_qkeyeventtransition_types.QKeyEventTransition =
  gen_qkeyeventtransition_types.QKeyEventTransition.init(fcQKeyEventTransition_new2(objectVal.h, cint(typeVal), key))

proc create*(T: type gen_qkeyeventtransition_types.QKeyEventTransition, sourceState: gen_qstate_types.QState): gen_qkeyeventtransition_types.QKeyEventTransition =
  gen_qkeyeventtransition_types.QKeyEventTransition.init(fcQKeyEventTransition_new3(sourceState.h))

proc create*(T: type gen_qkeyeventtransition_types.QKeyEventTransition, objectVal: gen_qobject_types.QObject, typeVal: cint, key: cint, sourceState: gen_qstate_types.QState): gen_qkeyeventtransition_types.QKeyEventTransition =
  gen_qkeyeventtransition_types.QKeyEventTransition.init(fcQKeyEventTransition_new4(objectVal.h, cint(typeVal), key, sourceState.h))

proc metaObject*(self: gen_qkeyeventtransition_types.QKeyEventTransition, ): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQKeyEventTransition_metaObject(self.h))

proc metacast*(self: gen_qkeyeventtransition_types.QKeyEventTransition, param1: cstring): pointer =
  fcQKeyEventTransition_metacast(self.h, param1)

proc metacall*(self: gen_qkeyeventtransition_types.QKeyEventTransition, param1: cint, param2: cint, param3: pointer): cint =
  fcQKeyEventTransition_metacall(self.h, cint(param1), param2, param3)

proc tr*(_: type gen_qkeyeventtransition_types.QKeyEventTransition, s: cstring): string =
  let v_ms = fcQKeyEventTransition_tr(s)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc trUtf8*(_: type gen_qkeyeventtransition_types.QKeyEventTransition, s: cstring): string =
  let v_ms = fcQKeyEventTransition_trUtf8(s)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc key*(self: gen_qkeyeventtransition_types.QKeyEventTransition, ): cint =
  fcQKeyEventTransition_key(self.h)

proc setKey*(self: gen_qkeyeventtransition_types.QKeyEventTransition, key: cint): void =
  fcQKeyEventTransition_setKey(self.h, key)

proc modifierMask*(self: gen_qkeyeventtransition_types.QKeyEventTransition, ): cint =
  cint(fcQKeyEventTransition_modifierMask(self.h))

proc setModifierMask*(self: gen_qkeyeventtransition_types.QKeyEventTransition, modifiers: cint): void =
  fcQKeyEventTransition_setModifierMask(self.h, cint(modifiers))

proc tr*(_: type gen_qkeyeventtransition_types.QKeyEventTransition, s: cstring, c: cstring): string =
  let v_ms = fcQKeyEventTransition_tr2(s, c)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc tr*(_: type gen_qkeyeventtransition_types.QKeyEventTransition, s: cstring, c: cstring, n: cint): string =
  let v_ms = fcQKeyEventTransition_tr3(s, c, n)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc trUtf8*(_: type gen_qkeyeventtransition_types.QKeyEventTransition, s: cstring, c: cstring): string =
  let v_ms = fcQKeyEventTransition_trUtf82(s, c)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc trUtf8*(_: type gen_qkeyeventtransition_types.QKeyEventTransition, s: cstring, c: cstring, n: cint): string =
  let v_ms = fcQKeyEventTransition_trUtf83(s, c, n)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc QKeyEventTransitionmetaObject*(self: gen_qkeyeventtransition_types.QKeyEventTransition, ): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fQKeyEventTransition_virtualbase_metaObject(self.h))

type QKeyEventTransitionmetaObjectProc* = proc(): gen_qobjectdefs_types.QMetaObject
proc onmetaObject*(self: gen_qkeyeventtransition_types.QKeyEventTransition, slot: QKeyEventTransitionmetaObjectProc) =
  # TODO check subclass
  var tmp = new QKeyEventTransitionmetaObjectProc
  tmp[] = slot
  GC_ref(tmp)
  fcQKeyEventTransition_override_virtual_metaObject(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QKeyEventTransition_metaObject(self: ptr cQKeyEventTransition, slot: int): pointer {.exportc: "miqt_exec_callback_QKeyEventTransition_metaObject ".} =
  var nimfunc = cast[ptr QKeyEventTransitionmetaObjectProc](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )

  virtualReturn.h
proc QKeyEventTransitionmetacast*(self: gen_qkeyeventtransition_types.QKeyEventTransition, param1: cstring): pointer =
  fQKeyEventTransition_virtualbase_metacast(self.h, param1)

type QKeyEventTransitionmetacastProc* = proc(param1: cstring): pointer
proc onmetacast*(self: gen_qkeyeventtransition_types.QKeyEventTransition, slot: QKeyEventTransitionmetacastProc) =
  # TODO check subclass
  var tmp = new QKeyEventTransitionmetacastProc
  tmp[] = slot
  GC_ref(tmp)
  fcQKeyEventTransition_override_virtual_metacast(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QKeyEventTransition_metacast(self: ptr cQKeyEventTransition, slot: int, param1: cstring): pointer {.exportc: "miqt_exec_callback_QKeyEventTransition_metacast ".} =
  var nimfunc = cast[ptr QKeyEventTransitionmetacastProc](cast[pointer](slot))
  let slotval1 = (param1)


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn
proc QKeyEventTransitionmetacall*(self: gen_qkeyeventtransition_types.QKeyEventTransition, param1: cint, param2: cint, param3: pointer): cint =
  fQKeyEventTransition_virtualbase_metacall(self.h, cint(param1), param2, param3)

type QKeyEventTransitionmetacallProc* = proc(param1: cint, param2: cint, param3: pointer): cint
proc onmetacall*(self: gen_qkeyeventtransition_types.QKeyEventTransition, slot: QKeyEventTransitionmetacallProc) =
  # TODO check subclass
  var tmp = new QKeyEventTransitionmetacallProc
  tmp[] = slot
  GC_ref(tmp)
  fcQKeyEventTransition_override_virtual_metacall(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QKeyEventTransition_metacall(self: ptr cQKeyEventTransition, slot: int, param1: cint, param2: cint, param3: pointer): cint {.exportc: "miqt_exec_callback_QKeyEventTransition_metacall ".} =
  var nimfunc = cast[ptr QKeyEventTransitionmetacallProc](cast[pointer](slot))
  let slotval1 = cint(param1)

  let slotval2 = param2

  let slotval3 = param3


  let virtualReturn = nimfunc[](slotval1, slotval2, slotval3 )

  virtualReturn
proc QKeyEventTransitiononTransition*(self: gen_qkeyeventtransition_types.QKeyEventTransition, event: gen_qcoreevent_types.QEvent): void =
  fQKeyEventTransition_virtualbase_onTransition(self.h, event.h)

type QKeyEventTransitiononTransitionProc* = proc(event: gen_qcoreevent_types.QEvent): void
proc ononTransition*(self: gen_qkeyeventtransition_types.QKeyEventTransition, slot: QKeyEventTransitiononTransitionProc) =
  # TODO check subclass
  var tmp = new QKeyEventTransitiononTransitionProc
  tmp[] = slot
  GC_ref(tmp)
  fcQKeyEventTransition_override_virtual_onTransition(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QKeyEventTransition_onTransition(self: ptr cQKeyEventTransition, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QKeyEventTransition_onTransition ".} =
  var nimfunc = cast[ptr QKeyEventTransitiononTransitionProc](cast[pointer](slot))
  let slotval1 = gen_qcoreevent_types.QEvent(h: event)


  nimfunc[](slotval1)
proc QKeyEventTransitioneventTest*(self: gen_qkeyeventtransition_types.QKeyEventTransition, event: gen_qcoreevent_types.QEvent): bool =
  fQKeyEventTransition_virtualbase_eventTest(self.h, event.h)

type QKeyEventTransitioneventTestProc* = proc(event: gen_qcoreevent_types.QEvent): bool
proc oneventTest*(self: gen_qkeyeventtransition_types.QKeyEventTransition, slot: QKeyEventTransitioneventTestProc) =
  # TODO check subclass
  var tmp = new QKeyEventTransitioneventTestProc
  tmp[] = slot
  GC_ref(tmp)
  fcQKeyEventTransition_override_virtual_eventTest(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QKeyEventTransition_eventTest(self: ptr cQKeyEventTransition, slot: int, event: pointer): bool {.exportc: "miqt_exec_callback_QKeyEventTransition_eventTest ".} =
  var nimfunc = cast[ptr QKeyEventTransitioneventTestProc](cast[pointer](slot))
  let slotval1 = gen_qcoreevent_types.QEvent(h: event)


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn
proc QKeyEventTransitionevent*(self: gen_qkeyeventtransition_types.QKeyEventTransition, e: gen_qcoreevent_types.QEvent): bool =
  fQKeyEventTransition_virtualbase_event(self.h, e.h)

type QKeyEventTransitioneventProc* = proc(e: gen_qcoreevent_types.QEvent): bool
proc onevent*(self: gen_qkeyeventtransition_types.QKeyEventTransition, slot: QKeyEventTransitioneventProc) =
  # TODO check subclass
  var tmp = new QKeyEventTransitioneventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQKeyEventTransition_override_virtual_event(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QKeyEventTransition_event(self: ptr cQKeyEventTransition, slot: int, e: pointer): bool {.exportc: "miqt_exec_callback_QKeyEventTransition_event ".} =
  var nimfunc = cast[ptr QKeyEventTransitioneventProc](cast[pointer](slot))
  let slotval1 = gen_qcoreevent_types.QEvent(h: e)


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn
proc QKeyEventTransitioneventFilter*(self: gen_qkeyeventtransition_types.QKeyEventTransition, watched: gen_qobject_types.QObject, event: gen_qcoreevent_types.QEvent): bool =
  fQKeyEventTransition_virtualbase_eventFilter(self.h, watched.h, event.h)

type QKeyEventTransitioneventFilterProc* = proc(watched: gen_qobject_types.QObject, event: gen_qcoreevent_types.QEvent): bool
proc oneventFilter*(self: gen_qkeyeventtransition_types.QKeyEventTransition, slot: QKeyEventTransitioneventFilterProc) =
  # TODO check subclass
  var tmp = new QKeyEventTransitioneventFilterProc
  tmp[] = slot
  GC_ref(tmp)
  fcQKeyEventTransition_override_virtual_eventFilter(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QKeyEventTransition_eventFilter(self: ptr cQKeyEventTransition, slot: int, watched: pointer, event: pointer): bool {.exportc: "miqt_exec_callback_QKeyEventTransition_eventFilter ".} =
  var nimfunc = cast[ptr QKeyEventTransitioneventFilterProc](cast[pointer](slot))
  let slotval1 = gen_qobject_types.QObject(h: watched)

  let slotval2 = gen_qcoreevent_types.QEvent(h: event)


  let virtualReturn = nimfunc[](slotval1, slotval2 )

  virtualReturn
proc QKeyEventTransitiontimerEvent*(self: gen_qkeyeventtransition_types.QKeyEventTransition, event: gen_qcoreevent_types.QTimerEvent): void =
  fQKeyEventTransition_virtualbase_timerEvent(self.h, event.h)

type QKeyEventTransitiontimerEventProc* = proc(event: gen_qcoreevent_types.QTimerEvent): void
proc ontimerEvent*(self: gen_qkeyeventtransition_types.QKeyEventTransition, slot: QKeyEventTransitiontimerEventProc) =
  # TODO check subclass
  var tmp = new QKeyEventTransitiontimerEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQKeyEventTransition_override_virtual_timerEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QKeyEventTransition_timerEvent(self: ptr cQKeyEventTransition, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QKeyEventTransition_timerEvent ".} =
  var nimfunc = cast[ptr QKeyEventTransitiontimerEventProc](cast[pointer](slot))
  let slotval1 = gen_qcoreevent_types.QTimerEvent(h: event)


  nimfunc[](slotval1)
proc QKeyEventTransitionchildEvent*(self: gen_qkeyeventtransition_types.QKeyEventTransition, event: gen_qcoreevent_types.QChildEvent): void =
  fQKeyEventTransition_virtualbase_childEvent(self.h, event.h)

type QKeyEventTransitionchildEventProc* = proc(event: gen_qcoreevent_types.QChildEvent): void
proc onchildEvent*(self: gen_qkeyeventtransition_types.QKeyEventTransition, slot: QKeyEventTransitionchildEventProc) =
  # TODO check subclass
  var tmp = new QKeyEventTransitionchildEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQKeyEventTransition_override_virtual_childEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QKeyEventTransition_childEvent(self: ptr cQKeyEventTransition, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QKeyEventTransition_childEvent ".} =
  var nimfunc = cast[ptr QKeyEventTransitionchildEventProc](cast[pointer](slot))
  let slotval1 = gen_qcoreevent_types.QChildEvent(h: event)


  nimfunc[](slotval1)
proc QKeyEventTransitioncustomEvent*(self: gen_qkeyeventtransition_types.QKeyEventTransition, event: gen_qcoreevent_types.QEvent): void =
  fQKeyEventTransition_virtualbase_customEvent(self.h, event.h)

type QKeyEventTransitioncustomEventProc* = proc(event: gen_qcoreevent_types.QEvent): void
proc oncustomEvent*(self: gen_qkeyeventtransition_types.QKeyEventTransition, slot: QKeyEventTransitioncustomEventProc) =
  # TODO check subclass
  var tmp = new QKeyEventTransitioncustomEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQKeyEventTransition_override_virtual_customEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QKeyEventTransition_customEvent(self: ptr cQKeyEventTransition, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QKeyEventTransition_customEvent ".} =
  var nimfunc = cast[ptr QKeyEventTransitioncustomEventProc](cast[pointer](slot))
  let slotval1 = gen_qcoreevent_types.QEvent(h: event)


  nimfunc[](slotval1)
proc QKeyEventTransitionconnectNotify*(self: gen_qkeyeventtransition_types.QKeyEventTransition, signal: gen_qmetaobject_types.QMetaMethod): void =
  fQKeyEventTransition_virtualbase_connectNotify(self.h, signal.h)

type QKeyEventTransitionconnectNotifyProc* = proc(signal: gen_qmetaobject_types.QMetaMethod): void
proc onconnectNotify*(self: gen_qkeyeventtransition_types.QKeyEventTransition, slot: QKeyEventTransitionconnectNotifyProc) =
  # TODO check subclass
  var tmp = new QKeyEventTransitionconnectNotifyProc
  tmp[] = slot
  GC_ref(tmp)
  fcQKeyEventTransition_override_virtual_connectNotify(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QKeyEventTransition_connectNotify(self: ptr cQKeyEventTransition, slot: int, signal: pointer): void {.exportc: "miqt_exec_callback_QKeyEventTransition_connectNotify ".} =
  var nimfunc = cast[ptr QKeyEventTransitionconnectNotifyProc](cast[pointer](slot))
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal)


  nimfunc[](slotval1)
proc QKeyEventTransitiondisconnectNotify*(self: gen_qkeyeventtransition_types.QKeyEventTransition, signal: gen_qmetaobject_types.QMetaMethod): void =
  fQKeyEventTransition_virtualbase_disconnectNotify(self.h, signal.h)

type QKeyEventTransitiondisconnectNotifyProc* = proc(signal: gen_qmetaobject_types.QMetaMethod): void
proc ondisconnectNotify*(self: gen_qkeyeventtransition_types.QKeyEventTransition, slot: QKeyEventTransitiondisconnectNotifyProc) =
  # TODO check subclass
  var tmp = new QKeyEventTransitiondisconnectNotifyProc
  tmp[] = slot
  GC_ref(tmp)
  fcQKeyEventTransition_override_virtual_disconnectNotify(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QKeyEventTransition_disconnectNotify(self: ptr cQKeyEventTransition, slot: int, signal: pointer): void {.exportc: "miqt_exec_callback_QKeyEventTransition_disconnectNotify ".} =
  var nimfunc = cast[ptr QKeyEventTransitiondisconnectNotifyProc](cast[pointer](slot))
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal)


  nimfunc[](slotval1)
proc staticMetaObject*(_: type gen_qkeyeventtransition_types.QKeyEventTransition): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQKeyEventTransition_staticMetaObject())
proc delete*(self: gen_qkeyeventtransition_types.QKeyEventTransition) =
  fcQKeyEventTransition_delete(self.h)
