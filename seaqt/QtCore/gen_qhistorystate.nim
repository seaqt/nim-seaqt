import ./qtcore_pkg

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


{.compile("gen_qhistorystate.cpp", QtCoreCFlags).}


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

proc fcQHistoryState_metaObject(self: pointer): pointer {.importc: "QHistoryState_metaObject".}
proc fcQHistoryState_metacast(self: pointer, param1: cstring): pointer {.importc: "QHistoryState_metacast".}
proc fcQHistoryState_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.importc: "QHistoryState_metacall".}
proc fcQHistoryState_tr(s: cstring): struct_miqt_string {.importc: "QHistoryState_tr".}
proc fcQHistoryState_trUtf8(s: cstring): struct_miqt_string {.importc: "QHistoryState_trUtf8".}
proc fcQHistoryState_defaultTransition(self: pointer): pointer {.importc: "QHistoryState_defaultTransition".}
proc fcQHistoryState_setDefaultTransition(self: pointer, transition: pointer): void {.importc: "QHistoryState_setDefaultTransition".}
proc fcQHistoryState_defaultState(self: pointer): pointer {.importc: "QHistoryState_defaultState".}
proc fcQHistoryState_setDefaultState(self: pointer, state: pointer): void {.importc: "QHistoryState_setDefaultState".}
proc fcQHistoryState_historyType(self: pointer): cint {.importc: "QHistoryState_historyType".}
proc fcQHistoryState_setHistoryType(self: pointer, typeVal: cint): void {.importc: "QHistoryState_setHistoryType".}
proc fcQHistoryState_tr2(s: cstring, c: cstring): struct_miqt_string {.importc: "QHistoryState_tr2".}
proc fcQHistoryState_tr3(s: cstring, c: cstring, n: cint): struct_miqt_string {.importc: "QHistoryState_tr3".}
proc fcQHistoryState_trUtf82(s: cstring, c: cstring): struct_miqt_string {.importc: "QHistoryState_trUtf82".}
proc fcQHistoryState_trUtf83(s: cstring, c: cstring, n: cint): struct_miqt_string {.importc: "QHistoryState_trUtf83".}
proc fcQHistoryState_vtbl(self: pointer): pointer {.importc: "QHistoryState_vtbl".}
proc fcQHistoryState_vdata(self: pointer): pointer {.importc: "QHistoryState_vdata".}

type cQHistoryStateVTable {.pure.} = object
  destructor*: proc(self: pointer) {.cdecl, raises:[], gcsafe.}
  metaObject*: proc(self: pointer): pointer {.cdecl, raises: [], gcsafe.}
  metacast*: proc(self: pointer, param1: cstring): pointer {.cdecl, raises: [], gcsafe.}
  metacall*: proc(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.cdecl, raises: [], gcsafe.}
  onEntry*: proc(self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  onExit*: proc(self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  event*: proc(self: pointer, e: pointer): bool {.cdecl, raises: [], gcsafe.}
  eventFilter*: proc(self: pointer, watched: pointer, event: pointer): bool {.cdecl, raises: [], gcsafe.}
  timerEvent*: proc(self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  childEvent*: proc(self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  customEvent*: proc(self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  connectNotify*: proc(self: pointer, signal: pointer): void {.cdecl, raises: [], gcsafe.}
  disconnectNotify*: proc(self: pointer, signal: pointer): void {.cdecl, raises: [], gcsafe.}
proc fcQHistoryState_virtualbase_metaObject(self: pointer): pointer {.importc: "QHistoryState_virtualbase_metaObject".}
proc fcQHistoryState_virtualbase_metacast(self: pointer, param1: cstring): pointer {.importc: "QHistoryState_virtualbase_metacast".}
proc fcQHistoryState_virtualbase_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.importc: "QHistoryState_virtualbase_metacall".}
proc fcQHistoryState_virtualbase_onEntry(self: pointer, event: pointer): void {.importc: "QHistoryState_virtualbase_onEntry".}
proc fcQHistoryState_virtualbase_onExit(self: pointer, event: pointer): void {.importc: "QHistoryState_virtualbase_onExit".}
proc fcQHistoryState_virtualbase_event(self: pointer, e: pointer): bool {.importc: "QHistoryState_virtualbase_event".}
proc fcQHistoryState_virtualbase_eventFilter(self: pointer, watched: pointer, event: pointer): bool {.importc: "QHistoryState_virtualbase_eventFilter".}
proc fcQHistoryState_virtualbase_timerEvent(self: pointer, event: pointer): void {.importc: "QHistoryState_virtualbase_timerEvent".}
proc fcQHistoryState_virtualbase_childEvent(self: pointer, event: pointer): void {.importc: "QHistoryState_virtualbase_childEvent".}
proc fcQHistoryState_virtualbase_customEvent(self: pointer, event: pointer): void {.importc: "QHistoryState_virtualbase_customEvent".}
proc fcQHistoryState_virtualbase_connectNotify(self: pointer, signal: pointer): void {.importc: "QHistoryState_virtualbase_connectNotify".}
proc fcQHistoryState_virtualbase_disconnectNotify(self: pointer, signal: pointer): void {.importc: "QHistoryState_virtualbase_disconnectNotify".}
proc fcQHistoryState_protectedbase_sender(self: pointer): pointer {.importc: "QHistoryState_protectedbase_sender".}
proc fcQHistoryState_protectedbase_senderSignalIndex(self: pointer): cint {.importc: "QHistoryState_protectedbase_senderSignalIndex".}
proc fcQHistoryState_protectedbase_receivers(self: pointer, signal: cstring): cint {.importc: "QHistoryState_protectedbase_receivers".}
proc fcQHistoryState_protectedbase_isSignalConnected(self: pointer, signal: pointer): bool {.importc: "QHistoryState_protectedbase_isSignalConnected".}
proc fcQHistoryState_new(vtbl, vdata: pointer): ptr cQHistoryState {.importc: "QHistoryState_new".}
proc fcQHistoryState_new2(vtbl, vdata: pointer, typeVal: cint): ptr cQHistoryState {.importc: "QHistoryState_new2".}
proc fcQHistoryState_new3(vtbl, vdata: pointer, parent: pointer): ptr cQHistoryState {.importc: "QHistoryState_new3".}
proc fcQHistoryState_new4(vtbl, vdata: pointer, typeVal: cint, parent: pointer): ptr cQHistoryState {.importc: "QHistoryState_new4".}
proc fcQHistoryState_staticMetaObject(): pointer {.importc: "QHistoryState_staticMetaObject".}

proc metaObject*(self: gen_qhistorystate_types.QHistoryState): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQHistoryState_metaObject(self.h), owned: false)

proc metacast*(self: gen_qhistorystate_types.QHistoryState, param1: cstring): pointer =
  fcQHistoryState_metacast(self.h, param1)

proc metacall*(self: gen_qhistorystate_types.QHistoryState, param1: cint, param2: cint, param3: pointer): cint =
  fcQHistoryState_metacall(self.h, cint(param1), param2, param3)

proc tr*(_: type gen_qhistorystate_types.QHistoryState, s: cstring): string =
  let v_ms = fcQHistoryState_tr(s)
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

proc trUtf8*(_: type gen_qhistorystate_types.QHistoryState, s: cstring): string =
  let v_ms = fcQHistoryState_trUtf8(s)
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

proc defaultTransition*(self: gen_qhistorystate_types.QHistoryState): gen_qabstracttransition_types.QAbstractTransition =
  gen_qabstracttransition_types.QAbstractTransition(h: fcQHistoryState_defaultTransition(self.h), owned: false)

proc setDefaultTransition*(self: gen_qhistorystate_types.QHistoryState, transition: gen_qabstracttransition_types.QAbstractTransition): void =
  fcQHistoryState_setDefaultTransition(self.h, transition.h)

proc defaultState*(self: gen_qhistorystate_types.QHistoryState): gen_qabstractstate_types.QAbstractState =
  gen_qabstractstate_types.QAbstractState(h: fcQHistoryState_defaultState(self.h), owned: false)

proc setDefaultState*(self: gen_qhistorystate_types.QHistoryState, state: gen_qabstractstate_types.QAbstractState): void =
  fcQHistoryState_setDefaultState(self.h, state.h)

proc historyType*(self: gen_qhistorystate_types.QHistoryState): cint =
  cint(fcQHistoryState_historyType(self.h))

proc setHistoryType*(self: gen_qhistorystate_types.QHistoryState, typeVal: cint): void =
  fcQHistoryState_setHistoryType(self.h, cint(typeVal))

proc tr*(_: type gen_qhistorystate_types.QHistoryState, s: cstring, c: cstring): string =
  let v_ms = fcQHistoryState_tr2(s, c)
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

proc tr*(_: type gen_qhistorystate_types.QHistoryState, s: cstring, c: cstring, n: cint): string =
  let v_ms = fcQHistoryState_tr3(s, c, n)
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

proc trUtf8*(_: type gen_qhistorystate_types.QHistoryState, s: cstring, c: cstring): string =
  let v_ms = fcQHistoryState_trUtf82(s, c)
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

proc trUtf8*(_: type gen_qhistorystate_types.QHistoryState, s: cstring, c: cstring, n: cint): string =
  let v_ms = fcQHistoryState_trUtf83(s, c, n)
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

type QHistoryStatemetaObjectProc* = proc(self: QHistoryState): gen_qobjectdefs_types.QMetaObject {.raises: [], gcsafe.}
type QHistoryStatemetacastProc* = proc(self: QHistoryState, param1: cstring): pointer {.raises: [], gcsafe.}
type QHistoryStatemetacallProc* = proc(self: QHistoryState, param1: cint, param2: cint, param3: pointer): cint {.raises: [], gcsafe.}
type QHistoryStateonEntryProc* = proc(self: QHistoryState, event: gen_qcoreevent_types.QEvent): void {.raises: [], gcsafe.}
type QHistoryStateonExitProc* = proc(self: QHistoryState, event: gen_qcoreevent_types.QEvent): void {.raises: [], gcsafe.}
type QHistoryStateeventProc* = proc(self: QHistoryState, e: gen_qcoreevent_types.QEvent): bool {.raises: [], gcsafe.}
type QHistoryStateeventFilterProc* = proc(self: QHistoryState, watched: gen_qobject_types.QObject, event: gen_qcoreevent_types.QEvent): bool {.raises: [], gcsafe.}
type QHistoryStatetimerEventProc* = proc(self: QHistoryState, event: gen_qcoreevent_types.QTimerEvent): void {.raises: [], gcsafe.}
type QHistoryStatechildEventProc* = proc(self: QHistoryState, event: gen_qcoreevent_types.QChildEvent): void {.raises: [], gcsafe.}
type QHistoryStatecustomEventProc* = proc(self: QHistoryState, event: gen_qcoreevent_types.QEvent): void {.raises: [], gcsafe.}
type QHistoryStateconnectNotifyProc* = proc(self: QHistoryState, signal: gen_qmetaobject_types.QMetaMethod): void {.raises: [], gcsafe.}
type QHistoryStatedisconnectNotifyProc* = proc(self: QHistoryState, signal: gen_qmetaobject_types.QMetaMethod): void {.raises: [], gcsafe.}

type QHistoryStateVTable* {.inheritable, pure.} = object
  vtbl: cQHistoryStateVTable
  metaObject*: QHistoryStatemetaObjectProc
  metacast*: QHistoryStatemetacastProc
  metacall*: QHistoryStatemetacallProc
  onEntry*: QHistoryStateonEntryProc
  onExit*: QHistoryStateonExitProc
  event*: QHistoryStateeventProc
  eventFilter*: QHistoryStateeventFilterProc
  timerEvent*: QHistoryStatetimerEventProc
  childEvent*: QHistoryStatechildEventProc
  customEvent*: QHistoryStatecustomEventProc
  connectNotify*: QHistoryStateconnectNotifyProc
  disconnectNotify*: QHistoryStatedisconnectNotifyProc

proc QHistoryStatemetaObject*(self: gen_qhistorystate_types.QHistoryState): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQHistoryState_virtualbase_metaObject(self.h), owned: false)

proc QHistoryStatemetacast*(self: gen_qhistorystate_types.QHistoryState, param1: cstring): pointer =
  fcQHistoryState_virtualbase_metacast(self.h, param1)

proc QHistoryStatemetacall*(self: gen_qhistorystate_types.QHistoryState, param1: cint, param2: cint, param3: pointer): cint =
  fcQHistoryState_virtualbase_metacall(self.h, cint(param1), param2, param3)

proc QHistoryStateonEntry*(self: gen_qhistorystate_types.QHistoryState, event: gen_qcoreevent_types.QEvent): void =
  fcQHistoryState_virtualbase_onEntry(self.h, event.h)

proc QHistoryStateonExit*(self: gen_qhistorystate_types.QHistoryState, event: gen_qcoreevent_types.QEvent): void =
  fcQHistoryState_virtualbase_onExit(self.h, event.h)

proc QHistoryStateevent*(self: gen_qhistorystate_types.QHistoryState, e: gen_qcoreevent_types.QEvent): bool =
  fcQHistoryState_virtualbase_event(self.h, e.h)

proc QHistoryStateeventFilter*(self: gen_qhistorystate_types.QHistoryState, watched: gen_qobject_types.QObject, event: gen_qcoreevent_types.QEvent): bool =
  fcQHistoryState_virtualbase_eventFilter(self.h, watched.h, event.h)

proc QHistoryStatetimerEvent*(self: gen_qhistorystate_types.QHistoryState, event: gen_qcoreevent_types.QTimerEvent): void =
  fcQHistoryState_virtualbase_timerEvent(self.h, event.h)

proc QHistoryStatechildEvent*(self: gen_qhistorystate_types.QHistoryState, event: gen_qcoreevent_types.QChildEvent): void =
  fcQHistoryState_virtualbase_childEvent(self.h, event.h)

proc QHistoryStatecustomEvent*(self: gen_qhistorystate_types.QHistoryState, event: gen_qcoreevent_types.QEvent): void =
  fcQHistoryState_virtualbase_customEvent(self.h, event.h)

proc QHistoryStateconnectNotify*(self: gen_qhistorystate_types.QHistoryState, signal: gen_qmetaobject_types.QMetaMethod): void =
  fcQHistoryState_virtualbase_connectNotify(self.h, signal.h)

proc QHistoryStatedisconnectNotify*(self: gen_qhistorystate_types.QHistoryState, signal: gen_qmetaobject_types.QMetaMethod): void =
  fcQHistoryState_virtualbase_disconnectNotify(self.h, signal.h)


proc fcQHistoryState_vtable_callback_metaObject(self: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QHistoryStateVTable](fcQHistoryState_vdata(self))
  let self = QHistoryState(h: self)
  var virtualReturn = vtbl[].metaObject(self)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc fcQHistoryState_vtable_callback_metacast(self: pointer, param1: cstring): pointer {.cdecl.} =
  let vtbl = cast[ptr QHistoryStateVTable](fcQHistoryState_vdata(self))
  let self = QHistoryState(h: self)
  let slotval1 = (param1)
  var virtualReturn = vtbl[].metacast(self, slotval1)
  virtualReturn

proc fcQHistoryState_vtable_callback_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.cdecl.} =
  let vtbl = cast[ptr QHistoryStateVTable](fcQHistoryState_vdata(self))
  let self = QHistoryState(h: self)
  let slotval1 = cint(param1)
  let slotval2 = param2
  let slotval3 = param3
  var virtualReturn = vtbl[].metacall(self, slotval1, slotval2, slotval3)
  virtualReturn

proc fcQHistoryState_vtable_callback_onEntry(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QHistoryStateVTable](fcQHistoryState_vdata(self))
  let self = QHistoryState(h: self)
  let slotval1 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  vtbl[].onEntry(self, slotval1)

proc fcQHistoryState_vtable_callback_onExit(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QHistoryStateVTable](fcQHistoryState_vdata(self))
  let self = QHistoryState(h: self)
  let slotval1 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  vtbl[].onExit(self, slotval1)

proc fcQHistoryState_vtable_callback_event(self: pointer, e: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QHistoryStateVTable](fcQHistoryState_vdata(self))
  let self = QHistoryState(h: self)
  let slotval1 = gen_qcoreevent_types.QEvent(h: e, owned: false)
  var virtualReturn = vtbl[].event(self, slotval1)
  virtualReturn

proc fcQHistoryState_vtable_callback_eventFilter(self: pointer, watched: pointer, event: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QHistoryStateVTable](fcQHistoryState_vdata(self))
  let self = QHistoryState(h: self)
  let slotval1 = gen_qobject_types.QObject(h: watched, owned: false)
  let slotval2 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  var virtualReturn = vtbl[].eventFilter(self, slotval1, slotval2)
  virtualReturn

proc fcQHistoryState_vtable_callback_timerEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QHistoryStateVTable](fcQHistoryState_vdata(self))
  let self = QHistoryState(h: self)
  let slotval1 = gen_qcoreevent_types.QTimerEvent(h: event, owned: false)
  vtbl[].timerEvent(self, slotval1)

proc fcQHistoryState_vtable_callback_childEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QHistoryStateVTable](fcQHistoryState_vdata(self))
  let self = QHistoryState(h: self)
  let slotval1 = gen_qcoreevent_types.QChildEvent(h: event, owned: false)
  vtbl[].childEvent(self, slotval1)

proc fcQHistoryState_vtable_callback_customEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QHistoryStateVTable](fcQHistoryState_vdata(self))
  let self = QHistoryState(h: self)
  let slotval1 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  vtbl[].customEvent(self, slotval1)

proc fcQHistoryState_vtable_callback_connectNotify(self: pointer, signal: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QHistoryStateVTable](fcQHistoryState_vdata(self))
  let self = QHistoryState(h: self)
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal, owned: false)
  vtbl[].connectNotify(self, slotval1)

proc fcQHistoryState_vtable_callback_disconnectNotify(self: pointer, signal: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QHistoryStateVTable](fcQHistoryState_vdata(self))
  let self = QHistoryState(h: self)
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal, owned: false)
  vtbl[].disconnectNotify(self, slotval1)

type VirtualQHistoryState* {.inheritable.} = ref object of QHistoryState
  vtbl*: cQHistoryStateVTable

method metaObject*(self: VirtualQHistoryState): gen_qobjectdefs_types.QMetaObject {.base.} =
  QHistoryStatemetaObject(self[])
method metacast*(self: VirtualQHistoryState, param1: cstring): pointer {.base.} =
  QHistoryStatemetacast(self[], param1)
method metacall*(self: VirtualQHistoryState, param1: cint, param2: cint, param3: pointer): cint {.base.} =
  QHistoryStatemetacall(self[], param1, param2, param3)
method onEntry*(self: VirtualQHistoryState, event: gen_qcoreevent_types.QEvent): void {.base.} =
  QHistoryStateonEntry(self[], event)
method onExit*(self: VirtualQHistoryState, event: gen_qcoreevent_types.QEvent): void {.base.} =
  QHistoryStateonExit(self[], event)
method event*(self: VirtualQHistoryState, e: gen_qcoreevent_types.QEvent): bool {.base.} =
  QHistoryStateevent(self[], e)
method eventFilter*(self: VirtualQHistoryState, watched: gen_qobject_types.QObject, event: gen_qcoreevent_types.QEvent): bool {.base.} =
  QHistoryStateeventFilter(self[], watched, event)
method timerEvent*(self: VirtualQHistoryState, event: gen_qcoreevent_types.QTimerEvent): void {.base.} =
  QHistoryStatetimerEvent(self[], event)
method childEvent*(self: VirtualQHistoryState, event: gen_qcoreevent_types.QChildEvent): void {.base.} =
  QHistoryStatechildEvent(self[], event)
method customEvent*(self: VirtualQHistoryState, event: gen_qcoreevent_types.QEvent): void {.base.} =
  QHistoryStatecustomEvent(self[], event)
method connectNotify*(self: VirtualQHistoryState, signal: gen_qmetaobject_types.QMetaMethod): void {.base.} =
  QHistoryStateconnectNotify(self[], signal)
method disconnectNotify*(self: VirtualQHistoryState, signal: gen_qmetaobject_types.QMetaMethod): void {.base.} =
  QHistoryStatedisconnectNotify(self[], signal)

proc fcQHistoryState_method_callback_metaObject(self: pointer): pointer {.cdecl.} =
  let inst = cast[VirtualQHistoryState](fcQHistoryState_vdata(self))
  var virtualReturn = inst.metaObject()
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc fcQHistoryState_method_callback_metacast(self: pointer, param1: cstring): pointer {.cdecl.} =
  let inst = cast[VirtualQHistoryState](fcQHistoryState_vdata(self))
  let slotval1 = (param1)
  var virtualReturn = inst.metacast(slotval1)
  virtualReturn

proc fcQHistoryState_method_callback_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.cdecl.} =
  let inst = cast[VirtualQHistoryState](fcQHistoryState_vdata(self))
  let slotval1 = cint(param1)
  let slotval2 = param2
  let slotval3 = param3
  var virtualReturn = inst.metacall(slotval1, slotval2, slotval3)
  virtualReturn

proc fcQHistoryState_method_callback_onEntry(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQHistoryState](fcQHistoryState_vdata(self))
  let slotval1 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  inst.onEntry(slotval1)

proc fcQHistoryState_method_callback_onExit(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQHistoryState](fcQHistoryState_vdata(self))
  let slotval1 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  inst.onExit(slotval1)

proc fcQHistoryState_method_callback_event(self: pointer, e: pointer): bool {.cdecl.} =
  let inst = cast[VirtualQHistoryState](fcQHistoryState_vdata(self))
  let slotval1 = gen_qcoreevent_types.QEvent(h: e, owned: false)
  var virtualReturn = inst.event(slotval1)
  virtualReturn

proc fcQHistoryState_method_callback_eventFilter(self: pointer, watched: pointer, event: pointer): bool {.cdecl.} =
  let inst = cast[VirtualQHistoryState](fcQHistoryState_vdata(self))
  let slotval1 = gen_qobject_types.QObject(h: watched, owned: false)
  let slotval2 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  var virtualReturn = inst.eventFilter(slotval1, slotval2)
  virtualReturn

proc fcQHistoryState_method_callback_timerEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQHistoryState](fcQHistoryState_vdata(self))
  let slotval1 = gen_qcoreevent_types.QTimerEvent(h: event, owned: false)
  inst.timerEvent(slotval1)

proc fcQHistoryState_method_callback_childEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQHistoryState](fcQHistoryState_vdata(self))
  let slotval1 = gen_qcoreevent_types.QChildEvent(h: event, owned: false)
  inst.childEvent(slotval1)

proc fcQHistoryState_method_callback_customEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQHistoryState](fcQHistoryState_vdata(self))
  let slotval1 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  inst.customEvent(slotval1)

proc fcQHistoryState_method_callback_connectNotify(self: pointer, signal: pointer): void {.cdecl.} =
  let inst = cast[VirtualQHistoryState](fcQHistoryState_vdata(self))
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal, owned: false)
  inst.connectNotify(slotval1)

proc fcQHistoryState_method_callback_disconnectNotify(self: pointer, signal: pointer): void {.cdecl.} =
  let inst = cast[VirtualQHistoryState](fcQHistoryState_vdata(self))
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal, owned: false)
  inst.disconnectNotify(slotval1)


proc sender*(self: gen_qhistorystate_types.QHistoryState): gen_qobject_types.QObject =
  gen_qobject_types.QObject(h: fcQHistoryState_protectedbase_sender(self.h), owned: false)

proc senderSignalIndex*(self: gen_qhistorystate_types.QHistoryState): cint =
  fcQHistoryState_protectedbase_senderSignalIndex(self.h)

proc receivers*(self: gen_qhistorystate_types.QHistoryState, signal: cstring): cint =
  fcQHistoryState_protectedbase_receivers(self.h, signal)

proc isSignalConnected*(self: gen_qhistorystate_types.QHistoryState, signal: gen_qmetaobject_types.QMetaMethod): bool =
  fcQHistoryState_protectedbase_isSignalConnected(self.h, signal.h)

proc create*(T: type gen_qhistorystate_types.QHistoryState,
    vtbl: ref QHistoryStateVTable = nil): gen_qhistorystate_types.QHistoryState =
  let vtbl = if vtbl == nil: new QHistoryStateVTable else: vtbl
  GC_ref(vtbl)
  vtbl[].vtbl.destructor = proc(self: pointer) {.cdecl.} =
    let vtbl = cast[ref QHistoryStateVTable](fcQHistoryState_vdata(self))
    GC_unref(vtbl)
  if not isNil(vtbl[].metaObject):
    vtbl[].vtbl.metaObject = fcQHistoryState_vtable_callback_metaObject
  if not isNil(vtbl[].metacast):
    vtbl[].vtbl.metacast = fcQHistoryState_vtable_callback_metacast
  if not isNil(vtbl[].metacall):
    vtbl[].vtbl.metacall = fcQHistoryState_vtable_callback_metacall
  if not isNil(vtbl[].onEntry):
    vtbl[].vtbl.onEntry = fcQHistoryState_vtable_callback_onEntry
  if not isNil(vtbl[].onExit):
    vtbl[].vtbl.onExit = fcQHistoryState_vtable_callback_onExit
  if not isNil(vtbl[].event):
    vtbl[].vtbl.event = fcQHistoryState_vtable_callback_event
  if not isNil(vtbl[].eventFilter):
    vtbl[].vtbl.eventFilter = fcQHistoryState_vtable_callback_eventFilter
  if not isNil(vtbl[].timerEvent):
    vtbl[].vtbl.timerEvent = fcQHistoryState_vtable_callback_timerEvent
  if not isNil(vtbl[].childEvent):
    vtbl[].vtbl.childEvent = fcQHistoryState_vtable_callback_childEvent
  if not isNil(vtbl[].customEvent):
    vtbl[].vtbl.customEvent = fcQHistoryState_vtable_callback_customEvent
  if not isNil(vtbl[].connectNotify):
    vtbl[].vtbl.connectNotify = fcQHistoryState_vtable_callback_connectNotify
  if not isNil(vtbl[].disconnectNotify):
    vtbl[].vtbl.disconnectNotify = fcQHistoryState_vtable_callback_disconnectNotify
  gen_qhistorystate_types.QHistoryState(h: fcQHistoryState_new(addr(vtbl[].vtbl), addr(vtbl[])), owned: true)

proc create*(T: type gen_qhistorystate_types.QHistoryState,
    typeVal: cint,
    vtbl: ref QHistoryStateVTable = nil): gen_qhistorystate_types.QHistoryState =
  let vtbl = if vtbl == nil: new QHistoryStateVTable else: vtbl
  GC_ref(vtbl)
  vtbl[].vtbl.destructor = proc(self: pointer) {.cdecl.} =
    let vtbl = cast[ref QHistoryStateVTable](fcQHistoryState_vdata(self))
    GC_unref(vtbl)
  if not isNil(vtbl[].metaObject):
    vtbl[].vtbl.metaObject = fcQHistoryState_vtable_callback_metaObject
  if not isNil(vtbl[].metacast):
    vtbl[].vtbl.metacast = fcQHistoryState_vtable_callback_metacast
  if not isNil(vtbl[].metacall):
    vtbl[].vtbl.metacall = fcQHistoryState_vtable_callback_metacall
  if not isNil(vtbl[].onEntry):
    vtbl[].vtbl.onEntry = fcQHistoryState_vtable_callback_onEntry
  if not isNil(vtbl[].onExit):
    vtbl[].vtbl.onExit = fcQHistoryState_vtable_callback_onExit
  if not isNil(vtbl[].event):
    vtbl[].vtbl.event = fcQHistoryState_vtable_callback_event
  if not isNil(vtbl[].eventFilter):
    vtbl[].vtbl.eventFilter = fcQHistoryState_vtable_callback_eventFilter
  if not isNil(vtbl[].timerEvent):
    vtbl[].vtbl.timerEvent = fcQHistoryState_vtable_callback_timerEvent
  if not isNil(vtbl[].childEvent):
    vtbl[].vtbl.childEvent = fcQHistoryState_vtable_callback_childEvent
  if not isNil(vtbl[].customEvent):
    vtbl[].vtbl.customEvent = fcQHistoryState_vtable_callback_customEvent
  if not isNil(vtbl[].connectNotify):
    vtbl[].vtbl.connectNotify = fcQHistoryState_vtable_callback_connectNotify
  if not isNil(vtbl[].disconnectNotify):
    vtbl[].vtbl.disconnectNotify = fcQHistoryState_vtable_callback_disconnectNotify
  gen_qhistorystate_types.QHistoryState(h: fcQHistoryState_new2(addr(vtbl[].vtbl), addr(vtbl[]), cint(typeVal)), owned: true)

proc create*(T: type gen_qhistorystate_types.QHistoryState,
    parent: gen_qstate_types.QState,
    vtbl: ref QHistoryStateVTable = nil): gen_qhistorystate_types.QHistoryState =
  let vtbl = if vtbl == nil: new QHistoryStateVTable else: vtbl
  GC_ref(vtbl)
  vtbl[].vtbl.destructor = proc(self: pointer) {.cdecl.} =
    let vtbl = cast[ref QHistoryStateVTable](fcQHistoryState_vdata(self))
    GC_unref(vtbl)
  if not isNil(vtbl[].metaObject):
    vtbl[].vtbl.metaObject = fcQHistoryState_vtable_callback_metaObject
  if not isNil(vtbl[].metacast):
    vtbl[].vtbl.metacast = fcQHistoryState_vtable_callback_metacast
  if not isNil(vtbl[].metacall):
    vtbl[].vtbl.metacall = fcQHistoryState_vtable_callback_metacall
  if not isNil(vtbl[].onEntry):
    vtbl[].vtbl.onEntry = fcQHistoryState_vtable_callback_onEntry
  if not isNil(vtbl[].onExit):
    vtbl[].vtbl.onExit = fcQHistoryState_vtable_callback_onExit
  if not isNil(vtbl[].event):
    vtbl[].vtbl.event = fcQHistoryState_vtable_callback_event
  if not isNil(vtbl[].eventFilter):
    vtbl[].vtbl.eventFilter = fcQHistoryState_vtable_callback_eventFilter
  if not isNil(vtbl[].timerEvent):
    vtbl[].vtbl.timerEvent = fcQHistoryState_vtable_callback_timerEvent
  if not isNil(vtbl[].childEvent):
    vtbl[].vtbl.childEvent = fcQHistoryState_vtable_callback_childEvent
  if not isNil(vtbl[].customEvent):
    vtbl[].vtbl.customEvent = fcQHistoryState_vtable_callback_customEvent
  if not isNil(vtbl[].connectNotify):
    vtbl[].vtbl.connectNotify = fcQHistoryState_vtable_callback_connectNotify
  if not isNil(vtbl[].disconnectNotify):
    vtbl[].vtbl.disconnectNotify = fcQHistoryState_vtable_callback_disconnectNotify
  gen_qhistorystate_types.QHistoryState(h: fcQHistoryState_new3(addr(vtbl[].vtbl), addr(vtbl[]), parent.h), owned: true)

proc create*(T: type gen_qhistorystate_types.QHistoryState,
    typeVal: cint, parent: gen_qstate_types.QState,
    vtbl: ref QHistoryStateVTable = nil): gen_qhistorystate_types.QHistoryState =
  let vtbl = if vtbl == nil: new QHistoryStateVTable else: vtbl
  GC_ref(vtbl)
  vtbl[].vtbl.destructor = proc(self: pointer) {.cdecl.} =
    let vtbl = cast[ref QHistoryStateVTable](fcQHistoryState_vdata(self))
    GC_unref(vtbl)
  if not isNil(vtbl[].metaObject):
    vtbl[].vtbl.metaObject = fcQHistoryState_vtable_callback_metaObject
  if not isNil(vtbl[].metacast):
    vtbl[].vtbl.metacast = fcQHistoryState_vtable_callback_metacast
  if not isNil(vtbl[].metacall):
    vtbl[].vtbl.metacall = fcQHistoryState_vtable_callback_metacall
  if not isNil(vtbl[].onEntry):
    vtbl[].vtbl.onEntry = fcQHistoryState_vtable_callback_onEntry
  if not isNil(vtbl[].onExit):
    vtbl[].vtbl.onExit = fcQHistoryState_vtable_callback_onExit
  if not isNil(vtbl[].event):
    vtbl[].vtbl.event = fcQHistoryState_vtable_callback_event
  if not isNil(vtbl[].eventFilter):
    vtbl[].vtbl.eventFilter = fcQHistoryState_vtable_callback_eventFilter
  if not isNil(vtbl[].timerEvent):
    vtbl[].vtbl.timerEvent = fcQHistoryState_vtable_callback_timerEvent
  if not isNil(vtbl[].childEvent):
    vtbl[].vtbl.childEvent = fcQHistoryState_vtable_callback_childEvent
  if not isNil(vtbl[].customEvent):
    vtbl[].vtbl.customEvent = fcQHistoryState_vtable_callback_customEvent
  if not isNil(vtbl[].connectNotify):
    vtbl[].vtbl.connectNotify = fcQHistoryState_vtable_callback_connectNotify
  if not isNil(vtbl[].disconnectNotify):
    vtbl[].vtbl.disconnectNotify = fcQHistoryState_vtable_callback_disconnectNotify
  gen_qhistorystate_types.QHistoryState(h: fcQHistoryState_new4(addr(vtbl[].vtbl), addr(vtbl[]), cint(typeVal), parent.h), owned: true)

const cQHistoryState_mvtbl = cQHistoryStateVTable(
  destructor: proc(self: pointer) {.cdecl.} =
    let inst = cast[ptr typeof(VirtualQHistoryState()[])](self.fcQHistoryState_vdata())
    inst[].h = nil
    inst[].owned = false,

  metaObject: fcQHistoryState_method_callback_metaObject,
  metacast: fcQHistoryState_method_callback_metacast,
  metacall: fcQHistoryState_method_callback_metacall,
  onEntry: fcQHistoryState_method_callback_onEntry,
  onExit: fcQHistoryState_method_callback_onExit,
  event: fcQHistoryState_method_callback_event,
  eventFilter: fcQHistoryState_method_callback_eventFilter,
  timerEvent: fcQHistoryState_method_callback_timerEvent,
  childEvent: fcQHistoryState_method_callback_childEvent,
  customEvent: fcQHistoryState_method_callback_customEvent,
  connectNotify: fcQHistoryState_method_callback_connectNotify,
  disconnectNotify: fcQHistoryState_method_callback_disconnectNotify,
)
proc create*(T: type gen_qhistorystate_types.QHistoryState,
    inst: VirtualQHistoryState) =
  if inst[].h != nil: delete(move(inst[]))
  inst[].h = fcQHistoryState_new(addr(cQHistoryState_mvtbl), addr(inst[]))
  inst[].owned = true

proc create*(T: type gen_qhistorystate_types.QHistoryState,
    typeVal: cint,
    inst: VirtualQHistoryState) =
  if inst[].h != nil: delete(move(inst[]))
  inst[].h = fcQHistoryState_new2(addr(cQHistoryState_mvtbl), addr(inst[]), cint(typeVal))
  inst[].owned = true

proc create*(T: type gen_qhistorystate_types.QHistoryState,
    parent: gen_qstate_types.QState,
    inst: VirtualQHistoryState) =
  if inst[].h != nil: delete(move(inst[]))
  inst[].h = fcQHistoryState_new3(addr(cQHistoryState_mvtbl), addr(inst[]), parent.h)
  inst[].owned = true

proc create*(T: type gen_qhistorystate_types.QHistoryState,
    typeVal: cint, parent: gen_qstate_types.QState,
    inst: VirtualQHistoryState) =
  if inst[].h != nil: delete(move(inst[]))
  inst[].h = fcQHistoryState_new4(addr(cQHistoryState_mvtbl), addr(inst[]), cint(typeVal), parent.h)
  inst[].owned = true

proc staticMetaObject*(_: type gen_qhistorystate_types.QHistoryState): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQHistoryState_staticMetaObject())
