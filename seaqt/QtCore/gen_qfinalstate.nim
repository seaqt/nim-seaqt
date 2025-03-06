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
{.compile("gen_qfinalstate.cpp", cflags).}


import ./gen_qfinalstate_types
export gen_qfinalstate_types

import
  ./gen_qabstractstate,
  ./gen_qcoreevent_types,
  ./gen_qmetaobject_types,
  ./gen_qobject_types,
  ./gen_qobjectdefs_types,
  ./gen_qstate_types
export
  gen_qabstractstate,
  gen_qcoreevent_types,
  gen_qmetaobject_types,
  gen_qobject_types,
  gen_qobjectdefs_types,
  gen_qstate_types

type cQFinalState*{.exportc: "QFinalState", incompleteStruct.} = object

proc fcQFinalState_new(): ptr cQFinalState {.importc: "QFinalState_new".}
proc fcQFinalState_new2(parent: pointer): ptr cQFinalState {.importc: "QFinalState_new2".}
proc fcQFinalState_metaObject(self: pointer, ): pointer {.importc: "QFinalState_metaObject".}
proc fcQFinalState_metacast(self: pointer, param1: cstring): pointer {.importc: "QFinalState_metacast".}
proc fcQFinalState_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.importc: "QFinalState_metacall".}
proc fcQFinalState_tr(s: cstring): struct_miqt_string {.importc: "QFinalState_tr".}
proc fcQFinalState_trUtf8(s: cstring): struct_miqt_string {.importc: "QFinalState_trUtf8".}
proc fcQFinalState_tr2(s: cstring, c: cstring): struct_miqt_string {.importc: "QFinalState_tr2".}
proc fcQFinalState_tr3(s: cstring, c: cstring, n: cint): struct_miqt_string {.importc: "QFinalState_tr3".}
proc fcQFinalState_trUtf82(s: cstring, c: cstring): struct_miqt_string {.importc: "QFinalState_trUtf82".}
proc fcQFinalState_trUtf83(s: cstring, c: cstring, n: cint): struct_miqt_string {.importc: "QFinalState_trUtf83".}
proc fQFinalState_virtualbase_metaObject(self: pointer, ): pointer{.importc: "QFinalState_virtualbase_metaObject".}
proc fcQFinalState_override_virtual_metaObject(self: pointer, slot: int) {.importc: "QFinalState_override_virtual_metaObject".}
proc fQFinalState_virtualbase_metacast(self: pointer, param1: cstring): pointer{.importc: "QFinalState_virtualbase_metacast".}
proc fcQFinalState_override_virtual_metacast(self: pointer, slot: int) {.importc: "QFinalState_override_virtual_metacast".}
proc fQFinalState_virtualbase_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint{.importc: "QFinalState_virtualbase_metacall".}
proc fcQFinalState_override_virtual_metacall(self: pointer, slot: int) {.importc: "QFinalState_override_virtual_metacall".}
proc fQFinalState_virtualbase_onEntry(self: pointer, event: pointer): void{.importc: "QFinalState_virtualbase_onEntry".}
proc fcQFinalState_override_virtual_onEntry(self: pointer, slot: int) {.importc: "QFinalState_override_virtual_onEntry".}
proc fQFinalState_virtualbase_onExit(self: pointer, event: pointer): void{.importc: "QFinalState_virtualbase_onExit".}
proc fcQFinalState_override_virtual_onExit(self: pointer, slot: int) {.importc: "QFinalState_override_virtual_onExit".}
proc fQFinalState_virtualbase_event(self: pointer, e: pointer): bool{.importc: "QFinalState_virtualbase_event".}
proc fcQFinalState_override_virtual_event(self: pointer, slot: int) {.importc: "QFinalState_override_virtual_event".}
proc fQFinalState_virtualbase_eventFilter(self: pointer, watched: pointer, event: pointer): bool{.importc: "QFinalState_virtualbase_eventFilter".}
proc fcQFinalState_override_virtual_eventFilter(self: pointer, slot: int) {.importc: "QFinalState_override_virtual_eventFilter".}
proc fQFinalState_virtualbase_timerEvent(self: pointer, event: pointer): void{.importc: "QFinalState_virtualbase_timerEvent".}
proc fcQFinalState_override_virtual_timerEvent(self: pointer, slot: int) {.importc: "QFinalState_override_virtual_timerEvent".}
proc fQFinalState_virtualbase_childEvent(self: pointer, event: pointer): void{.importc: "QFinalState_virtualbase_childEvent".}
proc fcQFinalState_override_virtual_childEvent(self: pointer, slot: int) {.importc: "QFinalState_override_virtual_childEvent".}
proc fQFinalState_virtualbase_customEvent(self: pointer, event: pointer): void{.importc: "QFinalState_virtualbase_customEvent".}
proc fcQFinalState_override_virtual_customEvent(self: pointer, slot: int) {.importc: "QFinalState_override_virtual_customEvent".}
proc fQFinalState_virtualbase_connectNotify(self: pointer, signal: pointer): void{.importc: "QFinalState_virtualbase_connectNotify".}
proc fcQFinalState_override_virtual_connectNotify(self: pointer, slot: int) {.importc: "QFinalState_override_virtual_connectNotify".}
proc fQFinalState_virtualbase_disconnectNotify(self: pointer, signal: pointer): void{.importc: "QFinalState_virtualbase_disconnectNotify".}
proc fcQFinalState_override_virtual_disconnectNotify(self: pointer, slot: int) {.importc: "QFinalState_override_virtual_disconnectNotify".}
proc fcQFinalState_staticMetaObject(): pointer {.importc: "QFinalState_staticMetaObject".}
proc fcQFinalState_delete(self: pointer) {.importc: "QFinalState_delete".}


func init*(T: type gen_qfinalstate_types.QFinalState, h: ptr cQFinalState): gen_qfinalstate_types.QFinalState =
  T(h: h)
proc create*(T: type gen_qfinalstate_types.QFinalState, ): gen_qfinalstate_types.QFinalState =
  gen_qfinalstate_types.QFinalState.init(fcQFinalState_new())

proc create*(T: type gen_qfinalstate_types.QFinalState, parent: gen_qstate_types.QState): gen_qfinalstate_types.QFinalState =
  gen_qfinalstate_types.QFinalState.init(fcQFinalState_new2(parent.h))

proc metaObject*(self: gen_qfinalstate_types.QFinalState, ): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQFinalState_metaObject(self.h))

proc metacast*(self: gen_qfinalstate_types.QFinalState, param1: cstring): pointer =
  fcQFinalState_metacast(self.h, param1)

proc metacall*(self: gen_qfinalstate_types.QFinalState, param1: cint, param2: cint, param3: pointer): cint =
  fcQFinalState_metacall(self.h, cint(param1), param2, param3)

proc tr*(_: type gen_qfinalstate_types.QFinalState, s: cstring): string =
  let v_ms = fcQFinalState_tr(s)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc trUtf8*(_: type gen_qfinalstate_types.QFinalState, s: cstring): string =
  let v_ms = fcQFinalState_trUtf8(s)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc tr*(_: type gen_qfinalstate_types.QFinalState, s: cstring, c: cstring): string =
  let v_ms = fcQFinalState_tr2(s, c)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc tr*(_: type gen_qfinalstate_types.QFinalState, s: cstring, c: cstring, n: cint): string =
  let v_ms = fcQFinalState_tr3(s, c, n)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc trUtf8*(_: type gen_qfinalstate_types.QFinalState, s: cstring, c: cstring): string =
  let v_ms = fcQFinalState_trUtf82(s, c)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc trUtf8*(_: type gen_qfinalstate_types.QFinalState, s: cstring, c: cstring, n: cint): string =
  let v_ms = fcQFinalState_trUtf83(s, c, n)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc QFinalStatemetaObject*(self: gen_qfinalstate_types.QFinalState, ): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fQFinalState_virtualbase_metaObject(self.h))

type QFinalStatemetaObjectProc* = proc(): gen_qobjectdefs_types.QMetaObject
proc onmetaObject*(self: gen_qfinalstate_types.QFinalState, slot: QFinalStatemetaObjectProc) =
  # TODO check subclass
  var tmp = new QFinalStatemetaObjectProc
  tmp[] = slot
  GC_ref(tmp)
  fcQFinalState_override_virtual_metaObject(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QFinalState_metaObject(self: ptr cQFinalState, slot: int): pointer {.exportc: "miqt_exec_callback_QFinalState_metaObject ".} =
  var nimfunc = cast[ptr QFinalStatemetaObjectProc](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )

  virtualReturn.h
proc QFinalStatemetacast*(self: gen_qfinalstate_types.QFinalState, param1: cstring): pointer =
  fQFinalState_virtualbase_metacast(self.h, param1)

type QFinalStatemetacastProc* = proc(param1: cstring): pointer
proc onmetacast*(self: gen_qfinalstate_types.QFinalState, slot: QFinalStatemetacastProc) =
  # TODO check subclass
  var tmp = new QFinalStatemetacastProc
  tmp[] = slot
  GC_ref(tmp)
  fcQFinalState_override_virtual_metacast(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QFinalState_metacast(self: ptr cQFinalState, slot: int, param1: cstring): pointer {.exportc: "miqt_exec_callback_QFinalState_metacast ".} =
  var nimfunc = cast[ptr QFinalStatemetacastProc](cast[pointer](slot))
  let slotval1 = (param1)


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn
proc QFinalStatemetacall*(self: gen_qfinalstate_types.QFinalState, param1: cint, param2: cint, param3: pointer): cint =
  fQFinalState_virtualbase_metacall(self.h, cint(param1), param2, param3)

type QFinalStatemetacallProc* = proc(param1: cint, param2: cint, param3: pointer): cint
proc onmetacall*(self: gen_qfinalstate_types.QFinalState, slot: QFinalStatemetacallProc) =
  # TODO check subclass
  var tmp = new QFinalStatemetacallProc
  tmp[] = slot
  GC_ref(tmp)
  fcQFinalState_override_virtual_metacall(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QFinalState_metacall(self: ptr cQFinalState, slot: int, param1: cint, param2: cint, param3: pointer): cint {.exportc: "miqt_exec_callback_QFinalState_metacall ".} =
  var nimfunc = cast[ptr QFinalStatemetacallProc](cast[pointer](slot))
  let slotval1 = cint(param1)

  let slotval2 = param2

  let slotval3 = param3


  let virtualReturn = nimfunc[](slotval1, slotval2, slotval3 )

  virtualReturn
proc QFinalStateonEntry*(self: gen_qfinalstate_types.QFinalState, event: gen_qcoreevent_types.QEvent): void =
  fQFinalState_virtualbase_onEntry(self.h, event.h)

type QFinalStateonEntryProc* = proc(event: gen_qcoreevent_types.QEvent): void
proc ononEntry*(self: gen_qfinalstate_types.QFinalState, slot: QFinalStateonEntryProc) =
  # TODO check subclass
  var tmp = new QFinalStateonEntryProc
  tmp[] = slot
  GC_ref(tmp)
  fcQFinalState_override_virtual_onEntry(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QFinalState_onEntry(self: ptr cQFinalState, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QFinalState_onEntry ".} =
  var nimfunc = cast[ptr QFinalStateonEntryProc](cast[pointer](slot))
  let slotval1 = gen_qcoreevent_types.QEvent(h: event)


  nimfunc[](slotval1)
proc QFinalStateonExit*(self: gen_qfinalstate_types.QFinalState, event: gen_qcoreevent_types.QEvent): void =
  fQFinalState_virtualbase_onExit(self.h, event.h)

type QFinalStateonExitProc* = proc(event: gen_qcoreevent_types.QEvent): void
proc ononExit*(self: gen_qfinalstate_types.QFinalState, slot: QFinalStateonExitProc) =
  # TODO check subclass
  var tmp = new QFinalStateonExitProc
  tmp[] = slot
  GC_ref(tmp)
  fcQFinalState_override_virtual_onExit(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QFinalState_onExit(self: ptr cQFinalState, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QFinalState_onExit ".} =
  var nimfunc = cast[ptr QFinalStateonExitProc](cast[pointer](slot))
  let slotval1 = gen_qcoreevent_types.QEvent(h: event)


  nimfunc[](slotval1)
proc QFinalStateevent*(self: gen_qfinalstate_types.QFinalState, e: gen_qcoreevent_types.QEvent): bool =
  fQFinalState_virtualbase_event(self.h, e.h)

type QFinalStateeventProc* = proc(e: gen_qcoreevent_types.QEvent): bool
proc onevent*(self: gen_qfinalstate_types.QFinalState, slot: QFinalStateeventProc) =
  # TODO check subclass
  var tmp = new QFinalStateeventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQFinalState_override_virtual_event(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QFinalState_event(self: ptr cQFinalState, slot: int, e: pointer): bool {.exportc: "miqt_exec_callback_QFinalState_event ".} =
  var nimfunc = cast[ptr QFinalStateeventProc](cast[pointer](slot))
  let slotval1 = gen_qcoreevent_types.QEvent(h: e)


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn
proc QFinalStateeventFilter*(self: gen_qfinalstate_types.QFinalState, watched: gen_qobject_types.QObject, event: gen_qcoreevent_types.QEvent): bool =
  fQFinalState_virtualbase_eventFilter(self.h, watched.h, event.h)

type QFinalStateeventFilterProc* = proc(watched: gen_qobject_types.QObject, event: gen_qcoreevent_types.QEvent): bool
proc oneventFilter*(self: gen_qfinalstate_types.QFinalState, slot: QFinalStateeventFilterProc) =
  # TODO check subclass
  var tmp = new QFinalStateeventFilterProc
  tmp[] = slot
  GC_ref(tmp)
  fcQFinalState_override_virtual_eventFilter(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QFinalState_eventFilter(self: ptr cQFinalState, slot: int, watched: pointer, event: pointer): bool {.exportc: "miqt_exec_callback_QFinalState_eventFilter ".} =
  var nimfunc = cast[ptr QFinalStateeventFilterProc](cast[pointer](slot))
  let slotval1 = gen_qobject_types.QObject(h: watched)

  let slotval2 = gen_qcoreevent_types.QEvent(h: event)


  let virtualReturn = nimfunc[](slotval1, slotval2 )

  virtualReturn
proc QFinalStatetimerEvent*(self: gen_qfinalstate_types.QFinalState, event: gen_qcoreevent_types.QTimerEvent): void =
  fQFinalState_virtualbase_timerEvent(self.h, event.h)

type QFinalStatetimerEventProc* = proc(event: gen_qcoreevent_types.QTimerEvent): void
proc ontimerEvent*(self: gen_qfinalstate_types.QFinalState, slot: QFinalStatetimerEventProc) =
  # TODO check subclass
  var tmp = new QFinalStatetimerEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQFinalState_override_virtual_timerEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QFinalState_timerEvent(self: ptr cQFinalState, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QFinalState_timerEvent ".} =
  var nimfunc = cast[ptr QFinalStatetimerEventProc](cast[pointer](slot))
  let slotval1 = gen_qcoreevent_types.QTimerEvent(h: event)


  nimfunc[](slotval1)
proc QFinalStatechildEvent*(self: gen_qfinalstate_types.QFinalState, event: gen_qcoreevent_types.QChildEvent): void =
  fQFinalState_virtualbase_childEvent(self.h, event.h)

type QFinalStatechildEventProc* = proc(event: gen_qcoreevent_types.QChildEvent): void
proc onchildEvent*(self: gen_qfinalstate_types.QFinalState, slot: QFinalStatechildEventProc) =
  # TODO check subclass
  var tmp = new QFinalStatechildEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQFinalState_override_virtual_childEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QFinalState_childEvent(self: ptr cQFinalState, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QFinalState_childEvent ".} =
  var nimfunc = cast[ptr QFinalStatechildEventProc](cast[pointer](slot))
  let slotval1 = gen_qcoreevent_types.QChildEvent(h: event)


  nimfunc[](slotval1)
proc QFinalStatecustomEvent*(self: gen_qfinalstate_types.QFinalState, event: gen_qcoreevent_types.QEvent): void =
  fQFinalState_virtualbase_customEvent(self.h, event.h)

type QFinalStatecustomEventProc* = proc(event: gen_qcoreevent_types.QEvent): void
proc oncustomEvent*(self: gen_qfinalstate_types.QFinalState, slot: QFinalStatecustomEventProc) =
  # TODO check subclass
  var tmp = new QFinalStatecustomEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQFinalState_override_virtual_customEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QFinalState_customEvent(self: ptr cQFinalState, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QFinalState_customEvent ".} =
  var nimfunc = cast[ptr QFinalStatecustomEventProc](cast[pointer](slot))
  let slotval1 = gen_qcoreevent_types.QEvent(h: event)


  nimfunc[](slotval1)
proc QFinalStateconnectNotify*(self: gen_qfinalstate_types.QFinalState, signal: gen_qmetaobject_types.QMetaMethod): void =
  fQFinalState_virtualbase_connectNotify(self.h, signal.h)

type QFinalStateconnectNotifyProc* = proc(signal: gen_qmetaobject_types.QMetaMethod): void
proc onconnectNotify*(self: gen_qfinalstate_types.QFinalState, slot: QFinalStateconnectNotifyProc) =
  # TODO check subclass
  var tmp = new QFinalStateconnectNotifyProc
  tmp[] = slot
  GC_ref(tmp)
  fcQFinalState_override_virtual_connectNotify(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QFinalState_connectNotify(self: ptr cQFinalState, slot: int, signal: pointer): void {.exportc: "miqt_exec_callback_QFinalState_connectNotify ".} =
  var nimfunc = cast[ptr QFinalStateconnectNotifyProc](cast[pointer](slot))
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal)


  nimfunc[](slotval1)
proc QFinalStatedisconnectNotify*(self: gen_qfinalstate_types.QFinalState, signal: gen_qmetaobject_types.QMetaMethod): void =
  fQFinalState_virtualbase_disconnectNotify(self.h, signal.h)

type QFinalStatedisconnectNotifyProc* = proc(signal: gen_qmetaobject_types.QMetaMethod): void
proc ondisconnectNotify*(self: gen_qfinalstate_types.QFinalState, slot: QFinalStatedisconnectNotifyProc) =
  # TODO check subclass
  var tmp = new QFinalStatedisconnectNotifyProc
  tmp[] = slot
  GC_ref(tmp)
  fcQFinalState_override_virtual_disconnectNotify(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QFinalState_disconnectNotify(self: ptr cQFinalState, slot: int, signal: pointer): void {.exportc: "miqt_exec_callback_QFinalState_disconnectNotify ".} =
  var nimfunc = cast[ptr QFinalStatedisconnectNotifyProc](cast[pointer](slot))
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal)


  nimfunc[](slotval1)
proc staticMetaObject*(_: type gen_qfinalstate_types.QFinalState): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQFinalState_staticMetaObject())
proc delete*(self: gen_qfinalstate_types.QFinalState) =
  fcQFinalState_delete(self.h)
