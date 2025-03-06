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
{.compile("gen_qhistorystate.cpp", cflags).}


type QHistoryStateHistoryTypeEnum* = distinct cint
template ShallowHistory*(_: type QHistoryStateHistoryTypeEnum): untyped = 0
template DeepHistory*(_: type QHistoryStateHistoryTypeEnum): untyped = 1


import ./gen_qhistorystate_types
export gen_qhistorystate_types

import
  ./gen_qabstractstate,
  ./gen_qabstracttransition_types,
  ./gen_qcoreevent_types,
  ./gen_qmetaobject_types,
  ./gen_qobject_types,
  ./gen_qobjectdefs_types,
  ./gen_qstate_types
export
  gen_qabstractstate,
  gen_qabstracttransition_types,
  gen_qcoreevent_types,
  gen_qmetaobject_types,
  gen_qobject_types,
  gen_qobjectdefs_types,
  gen_qstate_types

type cQHistoryState*{.exportc: "QHistoryState", incompleteStruct.} = object

proc fcQHistoryState_new(): ptr cQHistoryState {.importc: "QHistoryState_new".}
proc fcQHistoryState_new2(typeVal: cint): ptr cQHistoryState {.importc: "QHistoryState_new2".}
proc fcQHistoryState_new3(parent: pointer): ptr cQHistoryState {.importc: "QHistoryState_new3".}
proc fcQHistoryState_new4(typeVal: cint, parent: pointer): ptr cQHistoryState {.importc: "QHistoryState_new4".}
proc fcQHistoryState_metaObject(self: pointer, ): pointer {.importc: "QHistoryState_metaObject".}
proc fcQHistoryState_metacast(self: pointer, param1: cstring): pointer {.importc: "QHistoryState_metacast".}
proc fcQHistoryState_tr(s: cstring): struct_miqt_string {.importc: "QHistoryState_tr".}
proc fcQHistoryState_trUtf8(s: cstring): struct_miqt_string {.importc: "QHistoryState_trUtf8".}
proc fcQHistoryState_defaultTransition(self: pointer, ): pointer {.importc: "QHistoryState_defaultTransition".}
proc fcQHistoryState_setDefaultTransition(self: pointer, transition: pointer): void {.importc: "QHistoryState_setDefaultTransition".}
proc fcQHistoryState_defaultState(self: pointer, ): pointer {.importc: "QHistoryState_defaultState".}
proc fcQHistoryState_setDefaultState(self: pointer, state: pointer): void {.importc: "QHistoryState_setDefaultState".}
proc fcQHistoryState_historyType(self: pointer, ): cint {.importc: "QHistoryState_historyType".}
proc fcQHistoryState_setHistoryType(self: pointer, typeVal: cint): void {.importc: "QHistoryState_setHistoryType".}
proc fcQHistoryState_tr2(s: cstring, c: cstring): struct_miqt_string {.importc: "QHistoryState_tr2".}
proc fcQHistoryState_tr3(s: cstring, c: cstring, n: cint): struct_miqt_string {.importc: "QHistoryState_tr3".}
proc fcQHistoryState_trUtf82(s: cstring, c: cstring): struct_miqt_string {.importc: "QHistoryState_trUtf82".}
proc fcQHistoryState_trUtf83(s: cstring, c: cstring, n: cint): struct_miqt_string {.importc: "QHistoryState_trUtf83".}
proc fQHistoryState_virtualbase_onEntry(self: pointer, event: pointer): void{.importc: "QHistoryState_virtualbase_onEntry".}
proc fcQHistoryState_override_virtual_onEntry(self: pointer, slot: int) {.importc: "QHistoryState_override_virtual_onEntry".}
proc fQHistoryState_virtualbase_onExit(self: pointer, event: pointer): void{.importc: "QHistoryState_virtualbase_onExit".}
proc fcQHistoryState_override_virtual_onExit(self: pointer, slot: int) {.importc: "QHistoryState_override_virtual_onExit".}
proc fQHistoryState_virtualbase_event(self: pointer, e: pointer): bool{.importc: "QHistoryState_virtualbase_event".}
proc fcQHistoryState_override_virtual_event(self: pointer, slot: int) {.importc: "QHistoryState_override_virtual_event".}
proc fQHistoryState_virtualbase_eventFilter(self: pointer, watched: pointer, event: pointer): bool{.importc: "QHistoryState_virtualbase_eventFilter".}
proc fcQHistoryState_override_virtual_eventFilter(self: pointer, slot: int) {.importc: "QHistoryState_override_virtual_eventFilter".}
proc fQHistoryState_virtualbase_timerEvent(self: pointer, event: pointer): void{.importc: "QHistoryState_virtualbase_timerEvent".}
proc fcQHistoryState_override_virtual_timerEvent(self: pointer, slot: int) {.importc: "QHistoryState_override_virtual_timerEvent".}
proc fQHistoryState_virtualbase_childEvent(self: pointer, event: pointer): void{.importc: "QHistoryState_virtualbase_childEvent".}
proc fcQHistoryState_override_virtual_childEvent(self: pointer, slot: int) {.importc: "QHistoryState_override_virtual_childEvent".}
proc fQHistoryState_virtualbase_customEvent(self: pointer, event: pointer): void{.importc: "QHistoryState_virtualbase_customEvent".}
proc fcQHistoryState_override_virtual_customEvent(self: pointer, slot: int) {.importc: "QHistoryState_override_virtual_customEvent".}
proc fQHistoryState_virtualbase_connectNotify(self: pointer, signal: pointer): void{.importc: "QHistoryState_virtualbase_connectNotify".}
proc fcQHistoryState_override_virtual_connectNotify(self: pointer, slot: int) {.importc: "QHistoryState_override_virtual_connectNotify".}
proc fQHistoryState_virtualbase_disconnectNotify(self: pointer, signal: pointer): void{.importc: "QHistoryState_virtualbase_disconnectNotify".}
proc fcQHistoryState_override_virtual_disconnectNotify(self: pointer, slot: int) {.importc: "QHistoryState_override_virtual_disconnectNotify".}
proc fcQHistoryState_delete(self: pointer) {.importc: "QHistoryState_delete".}


func init*(T: type gen_qhistorystate_types.QHistoryState, h: ptr cQHistoryState): gen_qhistorystate_types.QHistoryState =
  T(h: h)
proc create*(T: type gen_qhistorystate_types.QHistoryState, ): gen_qhistorystate_types.QHistoryState =
  gen_qhistorystate_types.QHistoryState.init(fcQHistoryState_new())

proc create*(T: type gen_qhistorystate_types.QHistoryState, typeVal: cint): gen_qhistorystate_types.QHistoryState =
  gen_qhistorystate_types.QHistoryState.init(fcQHistoryState_new2(cint(typeVal)))

proc create*(T: type gen_qhistorystate_types.QHistoryState, parent: gen_qstate_types.QState): gen_qhistorystate_types.QHistoryState =
  gen_qhistorystate_types.QHistoryState.init(fcQHistoryState_new3(parent.h))

proc create*(T: type gen_qhistorystate_types.QHistoryState, typeVal: cint, parent: gen_qstate_types.QState): gen_qhistorystate_types.QHistoryState =
  gen_qhistorystate_types.QHistoryState.init(fcQHistoryState_new4(cint(typeVal), parent.h))

proc metaObject*(self: gen_qhistorystate_types.QHistoryState, ): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQHistoryState_metaObject(self.h))

proc metacast*(self: gen_qhistorystate_types.QHistoryState, param1: cstring): pointer =
  fcQHistoryState_metacast(self.h, param1)

proc tr*(_: type gen_qhistorystate_types.QHistoryState, s: cstring): string =
  let v_ms = fcQHistoryState_tr(s)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc trUtf8*(_: type gen_qhistorystate_types.QHistoryState, s: cstring): string =
  let v_ms = fcQHistoryState_trUtf8(s)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc defaultTransition*(self: gen_qhistorystate_types.QHistoryState, ): gen_qabstracttransition_types.QAbstractTransition =
  gen_qabstracttransition_types.QAbstractTransition(h: fcQHistoryState_defaultTransition(self.h))

proc setDefaultTransition*(self: gen_qhistorystate_types.QHistoryState, transition: gen_qabstracttransition_types.QAbstractTransition): void =
  fcQHistoryState_setDefaultTransition(self.h, transition.h)

proc defaultState*(self: gen_qhistorystate_types.QHistoryState, ): gen_qabstractstate_types.QAbstractState =
  gen_qabstractstate_types.QAbstractState(h: fcQHistoryState_defaultState(self.h))

proc setDefaultState*(self: gen_qhistorystate_types.QHistoryState, state: gen_qabstractstate_types.QAbstractState): void =
  fcQHistoryState_setDefaultState(self.h, state.h)

proc historyType*(self: gen_qhistorystate_types.QHistoryState, ): cint =
  cint(fcQHistoryState_historyType(self.h))

proc setHistoryType*(self: gen_qhistorystate_types.QHistoryState, typeVal: cint): void =
  fcQHistoryState_setHistoryType(self.h, cint(typeVal))

proc tr*(_: type gen_qhistorystate_types.QHistoryState, s: cstring, c: cstring): string =
  let v_ms = fcQHistoryState_tr2(s, c)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc tr*(_: type gen_qhistorystate_types.QHistoryState, s: cstring, c: cstring, n: cint): string =
  let v_ms = fcQHistoryState_tr3(s, c, n)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc trUtf8*(_: type gen_qhistorystate_types.QHistoryState, s: cstring, c: cstring): string =
  let v_ms = fcQHistoryState_trUtf82(s, c)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc trUtf8*(_: type gen_qhistorystate_types.QHistoryState, s: cstring, c: cstring, n: cint): string =
  let v_ms = fcQHistoryState_trUtf83(s, c, n)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc QHistoryStateonEntry*(self: gen_qhistorystate_types.QHistoryState, event: gen_qcoreevent_types.QEvent): void =
  fQHistoryState_virtualbase_onEntry(self.h, event.h)

type QHistoryStateonEntryProc* = proc(event: gen_qcoreevent_types.QEvent): void
proc ononEntry*(self: gen_qhistorystate_types.QHistoryState, slot: QHistoryStateonEntryProc) =
  # TODO check subclass
  var tmp = new QHistoryStateonEntryProc
  tmp[] = slot
  GC_ref(tmp)
  fcQHistoryState_override_virtual_onEntry(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QHistoryState_onEntry(self: ptr cQHistoryState, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QHistoryState_onEntry ".} =
  var nimfunc = cast[ptr QHistoryStateonEntryProc](cast[pointer](slot))
  let slotval1 = gen_qcoreevent_types.QEvent(h: event)


  nimfunc[](slotval1)
proc QHistoryStateonExit*(self: gen_qhistorystate_types.QHistoryState, event: gen_qcoreevent_types.QEvent): void =
  fQHistoryState_virtualbase_onExit(self.h, event.h)

type QHistoryStateonExitProc* = proc(event: gen_qcoreevent_types.QEvent): void
proc ononExit*(self: gen_qhistorystate_types.QHistoryState, slot: QHistoryStateonExitProc) =
  # TODO check subclass
  var tmp = new QHistoryStateonExitProc
  tmp[] = slot
  GC_ref(tmp)
  fcQHistoryState_override_virtual_onExit(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QHistoryState_onExit(self: ptr cQHistoryState, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QHistoryState_onExit ".} =
  var nimfunc = cast[ptr QHistoryStateonExitProc](cast[pointer](slot))
  let slotval1 = gen_qcoreevent_types.QEvent(h: event)


  nimfunc[](slotval1)
proc QHistoryStateevent*(self: gen_qhistorystate_types.QHistoryState, e: gen_qcoreevent_types.QEvent): bool =
  fQHistoryState_virtualbase_event(self.h, e.h)

type QHistoryStateeventProc* = proc(e: gen_qcoreevent_types.QEvent): bool
proc onevent*(self: gen_qhistorystate_types.QHistoryState, slot: QHistoryStateeventProc) =
  # TODO check subclass
  var tmp = new QHistoryStateeventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQHistoryState_override_virtual_event(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QHistoryState_event(self: ptr cQHistoryState, slot: int, e: pointer): bool {.exportc: "miqt_exec_callback_QHistoryState_event ".} =
  var nimfunc = cast[ptr QHistoryStateeventProc](cast[pointer](slot))
  let slotval1 = gen_qcoreevent_types.QEvent(h: e)


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn
proc QHistoryStateeventFilter*(self: gen_qhistorystate_types.QHistoryState, watched: gen_qobject_types.QObject, event: gen_qcoreevent_types.QEvent): bool =
  fQHistoryState_virtualbase_eventFilter(self.h, watched.h, event.h)

type QHistoryStateeventFilterProc* = proc(watched: gen_qobject_types.QObject, event: gen_qcoreevent_types.QEvent): bool
proc oneventFilter*(self: gen_qhistorystate_types.QHistoryState, slot: QHistoryStateeventFilterProc) =
  # TODO check subclass
  var tmp = new QHistoryStateeventFilterProc
  tmp[] = slot
  GC_ref(tmp)
  fcQHistoryState_override_virtual_eventFilter(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QHistoryState_eventFilter(self: ptr cQHistoryState, slot: int, watched: pointer, event: pointer): bool {.exportc: "miqt_exec_callback_QHistoryState_eventFilter ".} =
  var nimfunc = cast[ptr QHistoryStateeventFilterProc](cast[pointer](slot))
  let slotval1 = gen_qobject_types.QObject(h: watched)

  let slotval2 = gen_qcoreevent_types.QEvent(h: event)


  let virtualReturn = nimfunc[](slotval1, slotval2 )

  virtualReturn
proc QHistoryStatetimerEvent*(self: gen_qhistorystate_types.QHistoryState, event: gen_qcoreevent_types.QTimerEvent): void =
  fQHistoryState_virtualbase_timerEvent(self.h, event.h)

type QHistoryStatetimerEventProc* = proc(event: gen_qcoreevent_types.QTimerEvent): void
proc ontimerEvent*(self: gen_qhistorystate_types.QHistoryState, slot: QHistoryStatetimerEventProc) =
  # TODO check subclass
  var tmp = new QHistoryStatetimerEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQHistoryState_override_virtual_timerEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QHistoryState_timerEvent(self: ptr cQHistoryState, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QHistoryState_timerEvent ".} =
  var nimfunc = cast[ptr QHistoryStatetimerEventProc](cast[pointer](slot))
  let slotval1 = gen_qcoreevent_types.QTimerEvent(h: event)


  nimfunc[](slotval1)
proc QHistoryStatechildEvent*(self: gen_qhistorystate_types.QHistoryState, event: gen_qcoreevent_types.QChildEvent): void =
  fQHistoryState_virtualbase_childEvent(self.h, event.h)

type QHistoryStatechildEventProc* = proc(event: gen_qcoreevent_types.QChildEvent): void
proc onchildEvent*(self: gen_qhistorystate_types.QHistoryState, slot: QHistoryStatechildEventProc) =
  # TODO check subclass
  var tmp = new QHistoryStatechildEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQHistoryState_override_virtual_childEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QHistoryState_childEvent(self: ptr cQHistoryState, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QHistoryState_childEvent ".} =
  var nimfunc = cast[ptr QHistoryStatechildEventProc](cast[pointer](slot))
  let slotval1 = gen_qcoreevent_types.QChildEvent(h: event)


  nimfunc[](slotval1)
proc QHistoryStatecustomEvent*(self: gen_qhistorystate_types.QHistoryState, event: gen_qcoreevent_types.QEvent): void =
  fQHistoryState_virtualbase_customEvent(self.h, event.h)

type QHistoryStatecustomEventProc* = proc(event: gen_qcoreevent_types.QEvent): void
proc oncustomEvent*(self: gen_qhistorystate_types.QHistoryState, slot: QHistoryStatecustomEventProc) =
  # TODO check subclass
  var tmp = new QHistoryStatecustomEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQHistoryState_override_virtual_customEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QHistoryState_customEvent(self: ptr cQHistoryState, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QHistoryState_customEvent ".} =
  var nimfunc = cast[ptr QHistoryStatecustomEventProc](cast[pointer](slot))
  let slotval1 = gen_qcoreevent_types.QEvent(h: event)


  nimfunc[](slotval1)
proc QHistoryStateconnectNotify*(self: gen_qhistorystate_types.QHistoryState, signal: gen_qmetaobject_types.QMetaMethod): void =
  fQHistoryState_virtualbase_connectNotify(self.h, signal.h)

type QHistoryStateconnectNotifyProc* = proc(signal: gen_qmetaobject_types.QMetaMethod): void
proc onconnectNotify*(self: gen_qhistorystate_types.QHistoryState, slot: QHistoryStateconnectNotifyProc) =
  # TODO check subclass
  var tmp = new QHistoryStateconnectNotifyProc
  tmp[] = slot
  GC_ref(tmp)
  fcQHistoryState_override_virtual_connectNotify(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QHistoryState_connectNotify(self: ptr cQHistoryState, slot: int, signal: pointer): void {.exportc: "miqt_exec_callback_QHistoryState_connectNotify ".} =
  var nimfunc = cast[ptr QHistoryStateconnectNotifyProc](cast[pointer](slot))
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal)


  nimfunc[](slotval1)
proc QHistoryStatedisconnectNotify*(self: gen_qhistorystate_types.QHistoryState, signal: gen_qmetaobject_types.QMetaMethod): void =
  fQHistoryState_virtualbase_disconnectNotify(self.h, signal.h)

type QHistoryStatedisconnectNotifyProc* = proc(signal: gen_qmetaobject_types.QMetaMethod): void
proc ondisconnectNotify*(self: gen_qhistorystate_types.QHistoryState, slot: QHistoryStatedisconnectNotifyProc) =
  # TODO check subclass
  var tmp = new QHistoryStatedisconnectNotifyProc
  tmp[] = slot
  GC_ref(tmp)
  fcQHistoryState_override_virtual_disconnectNotify(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QHistoryState_disconnectNotify(self: ptr cQHistoryState, slot: int, signal: pointer): void {.exportc: "miqt_exec_callback_QHistoryState_disconnectNotify ".} =
  var nimfunc = cast[ptr QHistoryStatedisconnectNotifyProc](cast[pointer](slot))
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal)


  nimfunc[](slotval1)
proc delete*(self: gen_qhistorystate_types.QHistoryState) =
  fcQHistoryState_delete(self.h)
