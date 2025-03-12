import ./Qt5Core_libs

{.push raises: [].}

from system/ansi_c import c_free, c_malloc

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

const cflags = gorge("pkg-config --cflags Qt5Core") & " -fPIC"
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

proc fcQFinalState_metaObject(self: pointer): pointer {.importc: "QFinalState_metaObject".}
proc fcQFinalState_metacast(self: pointer, param1: cstring): pointer {.importc: "QFinalState_metacast".}
proc fcQFinalState_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.importc: "QFinalState_metacall".}
proc fcQFinalState_tr(s: cstring): struct_miqt_string {.importc: "QFinalState_tr".}
proc fcQFinalState_trUtf8(s: cstring): struct_miqt_string {.importc: "QFinalState_trUtf8".}
proc fcQFinalState_tr2(s: cstring, c: cstring): struct_miqt_string {.importc: "QFinalState_tr2".}
proc fcQFinalState_tr3(s: cstring, c: cstring, n: cint): struct_miqt_string {.importc: "QFinalState_tr3".}
proc fcQFinalState_trUtf82(s: cstring, c: cstring): struct_miqt_string {.importc: "QFinalState_trUtf82".}
proc fcQFinalState_trUtf83(s: cstring, c: cstring, n: cint): struct_miqt_string {.importc: "QFinalState_trUtf83".}
proc fcQFinalState_vtbl(self: pointer): pointer {.importc: "QFinalState_vtbl".}
proc fcQFinalState_vdata(self: pointer): pointer {.importc: "QFinalState_vdata".}
type cQFinalStateVTable {.pure.} = object
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
proc fcQFinalState_virtualbase_metaObject(self: pointer): pointer {.importc: "QFinalState_virtualbase_metaObject".}
proc fcQFinalState_virtualbase_metacast(self: pointer, param1: cstring): pointer {.importc: "QFinalState_virtualbase_metacast".}
proc fcQFinalState_virtualbase_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.importc: "QFinalState_virtualbase_metacall".}
proc fcQFinalState_virtualbase_onEntry(self: pointer, event: pointer): void {.importc: "QFinalState_virtualbase_onEntry".}
proc fcQFinalState_virtualbase_onExit(self: pointer, event: pointer): void {.importc: "QFinalState_virtualbase_onExit".}
proc fcQFinalState_virtualbase_event(self: pointer, e: pointer): bool {.importc: "QFinalState_virtualbase_event".}
proc fcQFinalState_virtualbase_eventFilter(self: pointer, watched: pointer, event: pointer): bool {.importc: "QFinalState_virtualbase_eventFilter".}
proc fcQFinalState_virtualbase_timerEvent(self: pointer, event: pointer): void {.importc: "QFinalState_virtualbase_timerEvent".}
proc fcQFinalState_virtualbase_childEvent(self: pointer, event: pointer): void {.importc: "QFinalState_virtualbase_childEvent".}
proc fcQFinalState_virtualbase_customEvent(self: pointer, event: pointer): void {.importc: "QFinalState_virtualbase_customEvent".}
proc fcQFinalState_virtualbase_connectNotify(self: pointer, signal: pointer): void {.importc: "QFinalState_virtualbase_connectNotify".}
proc fcQFinalState_virtualbase_disconnectNotify(self: pointer, signal: pointer): void {.importc: "QFinalState_virtualbase_disconnectNotify".}
proc fcQFinalState_protectedbase_sender(self: pointer): pointer {.importc: "QFinalState_protectedbase_sender".}
proc fcQFinalState_protectedbase_senderSignalIndex(self: pointer): cint {.importc: "QFinalState_protectedbase_senderSignalIndex".}
proc fcQFinalState_protectedbase_receivers(self: pointer, signal: cstring): cint {.importc: "QFinalState_protectedbase_receivers".}
proc fcQFinalState_protectedbase_isSignalConnected(self: pointer, signal: pointer): bool {.importc: "QFinalState_protectedbase_isSignalConnected".}
proc fcQFinalState_new(vtbl, vdata: pointer): ptr cQFinalState {.importc: "QFinalState_new".}
proc fcQFinalState_new2(vtbl, vdata: pointer, parent: pointer): ptr cQFinalState {.importc: "QFinalState_new2".}
proc fcQFinalState_staticMetaObject(): pointer {.importc: "QFinalState_staticMetaObject".}

proc metaObject*(self: gen_qfinalstate_types.QFinalState): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQFinalState_metaObject(self.h), owned: false)

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

type QFinalStatemetaObjectProc* = proc(self: QFinalState): gen_qobjectdefs_types.QMetaObject {.raises: [], gcsafe.}
type QFinalStatemetacastProc* = proc(self: QFinalState, param1: cstring): pointer {.raises: [], gcsafe.}
type QFinalStatemetacallProc* = proc(self: QFinalState, param1: cint, param2: cint, param3: pointer): cint {.raises: [], gcsafe.}
type QFinalStateonEntryProc* = proc(self: QFinalState, event: gen_qcoreevent_types.QEvent): void {.raises: [], gcsafe.}
type QFinalStateonExitProc* = proc(self: QFinalState, event: gen_qcoreevent_types.QEvent): void {.raises: [], gcsafe.}
type QFinalStateeventProc* = proc(self: QFinalState, e: gen_qcoreevent_types.QEvent): bool {.raises: [], gcsafe.}
type QFinalStateeventFilterProc* = proc(self: QFinalState, watched: gen_qobject_types.QObject, event: gen_qcoreevent_types.QEvent): bool {.raises: [], gcsafe.}
type QFinalStatetimerEventProc* = proc(self: QFinalState, event: gen_qcoreevent_types.QTimerEvent): void {.raises: [], gcsafe.}
type QFinalStatechildEventProc* = proc(self: QFinalState, event: gen_qcoreevent_types.QChildEvent): void {.raises: [], gcsafe.}
type QFinalStatecustomEventProc* = proc(self: QFinalState, event: gen_qcoreevent_types.QEvent): void {.raises: [], gcsafe.}
type QFinalStateconnectNotifyProc* = proc(self: QFinalState, signal: gen_qmetaobject_types.QMetaMethod): void {.raises: [], gcsafe.}
type QFinalStatedisconnectNotifyProc* = proc(self: QFinalState, signal: gen_qmetaobject_types.QMetaMethod): void {.raises: [], gcsafe.}
type QFinalStateVTable* {.inheritable, pure.} = object
  vtbl: cQFinalStateVTable
  metaObject*: QFinalStatemetaObjectProc
  metacast*: QFinalStatemetacastProc
  metacall*: QFinalStatemetacallProc
  onEntry*: QFinalStateonEntryProc
  onExit*: QFinalStateonExitProc
  event*: QFinalStateeventProc
  eventFilter*: QFinalStateeventFilterProc
  timerEvent*: QFinalStatetimerEventProc
  childEvent*: QFinalStatechildEventProc
  customEvent*: QFinalStatecustomEventProc
  connectNotify*: QFinalStateconnectNotifyProc
  disconnectNotify*: QFinalStatedisconnectNotifyProc
proc QFinalStatemetaObject*(self: gen_qfinalstate_types.QFinalState): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQFinalState_virtualbase_metaObject(self.h), owned: false)

proc cQFinalState_vtable_callback_metaObject(self: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QFinalStateVTable](fcQFinalState_vdata(self))
  let self = QFinalState(h: self)
  var virtualReturn = vtbl[].metaObject(self)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc QFinalStatemetacast*(self: gen_qfinalstate_types.QFinalState, param1: cstring): pointer =
  fcQFinalState_virtualbase_metacast(self.h, param1)

proc cQFinalState_vtable_callback_metacast(self: pointer, param1: cstring): pointer {.cdecl.} =
  let vtbl = cast[ptr QFinalStateVTable](fcQFinalState_vdata(self))
  let self = QFinalState(h: self)
  let slotval1 = (param1)
  var virtualReturn = vtbl[].metacast(self, slotval1)
  virtualReturn

proc QFinalStatemetacall*(self: gen_qfinalstate_types.QFinalState, param1: cint, param2: cint, param3: pointer): cint =
  fcQFinalState_virtualbase_metacall(self.h, cint(param1), param2, param3)

proc cQFinalState_vtable_callback_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.cdecl.} =
  let vtbl = cast[ptr QFinalStateVTable](fcQFinalState_vdata(self))
  let self = QFinalState(h: self)
  let slotval1 = cint(param1)
  let slotval2 = param2
  let slotval3 = param3
  var virtualReturn = vtbl[].metacall(self, slotval1, slotval2, slotval3)
  virtualReturn

proc QFinalStateonEntry*(self: gen_qfinalstate_types.QFinalState, event: gen_qcoreevent_types.QEvent): void =
  fcQFinalState_virtualbase_onEntry(self.h, event.h)

proc cQFinalState_vtable_callback_onEntry(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QFinalStateVTable](fcQFinalState_vdata(self))
  let self = QFinalState(h: self)
  let slotval1 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  vtbl[].onEntry(self, slotval1)

proc QFinalStateonExit*(self: gen_qfinalstate_types.QFinalState, event: gen_qcoreevent_types.QEvent): void =
  fcQFinalState_virtualbase_onExit(self.h, event.h)

proc cQFinalState_vtable_callback_onExit(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QFinalStateVTable](fcQFinalState_vdata(self))
  let self = QFinalState(h: self)
  let slotval1 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  vtbl[].onExit(self, slotval1)

proc QFinalStateevent*(self: gen_qfinalstate_types.QFinalState, e: gen_qcoreevent_types.QEvent): bool =
  fcQFinalState_virtualbase_event(self.h, e.h)

proc cQFinalState_vtable_callback_event(self: pointer, e: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QFinalStateVTable](fcQFinalState_vdata(self))
  let self = QFinalState(h: self)
  let slotval1 = gen_qcoreevent_types.QEvent(h: e, owned: false)
  var virtualReturn = vtbl[].event(self, slotval1)
  virtualReturn

proc QFinalStateeventFilter*(self: gen_qfinalstate_types.QFinalState, watched: gen_qobject_types.QObject, event: gen_qcoreevent_types.QEvent): bool =
  fcQFinalState_virtualbase_eventFilter(self.h, watched.h, event.h)

proc cQFinalState_vtable_callback_eventFilter(self: pointer, watched: pointer, event: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QFinalStateVTable](fcQFinalState_vdata(self))
  let self = QFinalState(h: self)
  let slotval1 = gen_qobject_types.QObject(h: watched, owned: false)
  let slotval2 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  var virtualReturn = vtbl[].eventFilter(self, slotval1, slotval2)
  virtualReturn

proc QFinalStatetimerEvent*(self: gen_qfinalstate_types.QFinalState, event: gen_qcoreevent_types.QTimerEvent): void =
  fcQFinalState_virtualbase_timerEvent(self.h, event.h)

proc cQFinalState_vtable_callback_timerEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QFinalStateVTable](fcQFinalState_vdata(self))
  let self = QFinalState(h: self)
  let slotval1 = gen_qcoreevent_types.QTimerEvent(h: event, owned: false)
  vtbl[].timerEvent(self, slotval1)

proc QFinalStatechildEvent*(self: gen_qfinalstate_types.QFinalState, event: gen_qcoreevent_types.QChildEvent): void =
  fcQFinalState_virtualbase_childEvent(self.h, event.h)

proc cQFinalState_vtable_callback_childEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QFinalStateVTable](fcQFinalState_vdata(self))
  let self = QFinalState(h: self)
  let slotval1 = gen_qcoreevent_types.QChildEvent(h: event, owned: false)
  vtbl[].childEvent(self, slotval1)

proc QFinalStatecustomEvent*(self: gen_qfinalstate_types.QFinalState, event: gen_qcoreevent_types.QEvent): void =
  fcQFinalState_virtualbase_customEvent(self.h, event.h)

proc cQFinalState_vtable_callback_customEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QFinalStateVTable](fcQFinalState_vdata(self))
  let self = QFinalState(h: self)
  let slotval1 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  vtbl[].customEvent(self, slotval1)

proc QFinalStateconnectNotify*(self: gen_qfinalstate_types.QFinalState, signal: gen_qmetaobject_types.QMetaMethod): void =
  fcQFinalState_virtualbase_connectNotify(self.h, signal.h)

proc cQFinalState_vtable_callback_connectNotify(self: pointer, signal: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QFinalStateVTable](fcQFinalState_vdata(self))
  let self = QFinalState(h: self)
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal, owned: false)
  vtbl[].connectNotify(self, slotval1)

proc QFinalStatedisconnectNotify*(self: gen_qfinalstate_types.QFinalState, signal: gen_qmetaobject_types.QMetaMethod): void =
  fcQFinalState_virtualbase_disconnectNotify(self.h, signal.h)

proc cQFinalState_vtable_callback_disconnectNotify(self: pointer, signal: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QFinalStateVTable](fcQFinalState_vdata(self))
  let self = QFinalState(h: self)
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal, owned: false)
  vtbl[].disconnectNotify(self, slotval1)

type VirtualQFinalState* {.inheritable.} = ref object of QFinalState
  vtbl*: cQFinalStateVTable
method metaObject*(self: VirtualQFinalState): gen_qobjectdefs_types.QMetaObject {.base.} =
  QFinalStatemetaObject(self[])
proc cQFinalState_method_callback_metaObject(self: pointer): pointer {.cdecl.} =
  let inst = cast[VirtualQFinalState](fcQFinalState_vdata(self))
  var virtualReturn = inst.metaObject()
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

method metacast*(self: VirtualQFinalState, param1: cstring): pointer {.base.} =
  QFinalStatemetacast(self[], param1)
proc cQFinalState_method_callback_metacast(self: pointer, param1: cstring): pointer {.cdecl.} =
  let inst = cast[VirtualQFinalState](fcQFinalState_vdata(self))
  let slotval1 = (param1)
  var virtualReturn = inst.metacast(slotval1)
  virtualReturn

method metacall*(self: VirtualQFinalState, param1: cint, param2: cint, param3: pointer): cint {.base.} =
  QFinalStatemetacall(self[], param1, param2, param3)
proc cQFinalState_method_callback_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.cdecl.} =
  let inst = cast[VirtualQFinalState](fcQFinalState_vdata(self))
  let slotval1 = cint(param1)
  let slotval2 = param2
  let slotval3 = param3
  var virtualReturn = inst.metacall(slotval1, slotval2, slotval3)
  virtualReturn

method onEntry*(self: VirtualQFinalState, event: gen_qcoreevent_types.QEvent): void {.base.} =
  QFinalStateonEntry(self[], event)
proc cQFinalState_method_callback_onEntry(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQFinalState](fcQFinalState_vdata(self))
  let slotval1 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  inst.onEntry(slotval1)

method onExit*(self: VirtualQFinalState, event: gen_qcoreevent_types.QEvent): void {.base.} =
  QFinalStateonExit(self[], event)
proc cQFinalState_method_callback_onExit(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQFinalState](fcQFinalState_vdata(self))
  let slotval1 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  inst.onExit(slotval1)

method event*(self: VirtualQFinalState, e: gen_qcoreevent_types.QEvent): bool {.base.} =
  QFinalStateevent(self[], e)
proc cQFinalState_method_callback_event(self: pointer, e: pointer): bool {.cdecl.} =
  let inst = cast[VirtualQFinalState](fcQFinalState_vdata(self))
  let slotval1 = gen_qcoreevent_types.QEvent(h: e, owned: false)
  var virtualReturn = inst.event(slotval1)
  virtualReturn

method eventFilter*(self: VirtualQFinalState, watched: gen_qobject_types.QObject, event: gen_qcoreevent_types.QEvent): bool {.base.} =
  QFinalStateeventFilter(self[], watched, event)
proc cQFinalState_method_callback_eventFilter(self: pointer, watched: pointer, event: pointer): bool {.cdecl.} =
  let inst = cast[VirtualQFinalState](fcQFinalState_vdata(self))
  let slotval1 = gen_qobject_types.QObject(h: watched, owned: false)
  let slotval2 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  var virtualReturn = inst.eventFilter(slotval1, slotval2)
  virtualReturn

method timerEvent*(self: VirtualQFinalState, event: gen_qcoreevent_types.QTimerEvent): void {.base.} =
  QFinalStatetimerEvent(self[], event)
proc cQFinalState_method_callback_timerEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQFinalState](fcQFinalState_vdata(self))
  let slotval1 = gen_qcoreevent_types.QTimerEvent(h: event, owned: false)
  inst.timerEvent(slotval1)

method childEvent*(self: VirtualQFinalState, event: gen_qcoreevent_types.QChildEvent): void {.base.} =
  QFinalStatechildEvent(self[], event)
proc cQFinalState_method_callback_childEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQFinalState](fcQFinalState_vdata(self))
  let slotval1 = gen_qcoreevent_types.QChildEvent(h: event, owned: false)
  inst.childEvent(slotval1)

method customEvent*(self: VirtualQFinalState, event: gen_qcoreevent_types.QEvent): void {.base.} =
  QFinalStatecustomEvent(self[], event)
proc cQFinalState_method_callback_customEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQFinalState](fcQFinalState_vdata(self))
  let slotval1 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  inst.customEvent(slotval1)

method connectNotify*(self: VirtualQFinalState, signal: gen_qmetaobject_types.QMetaMethod): void {.base.} =
  QFinalStateconnectNotify(self[], signal)
proc cQFinalState_method_callback_connectNotify(self: pointer, signal: pointer): void {.cdecl.} =
  let inst = cast[VirtualQFinalState](fcQFinalState_vdata(self))
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal, owned: false)
  inst.connectNotify(slotval1)

method disconnectNotify*(self: VirtualQFinalState, signal: gen_qmetaobject_types.QMetaMethod): void {.base.} =
  QFinalStatedisconnectNotify(self[], signal)
proc cQFinalState_method_callback_disconnectNotify(self: pointer, signal: pointer): void {.cdecl.} =
  let inst = cast[VirtualQFinalState](fcQFinalState_vdata(self))
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal, owned: false)
  inst.disconnectNotify(slotval1)

proc sender*(self: gen_qfinalstate_types.QFinalState): gen_qobject_types.QObject =
  gen_qobject_types.QObject(h: fcQFinalState_protectedbase_sender(self.h), owned: false)

proc senderSignalIndex*(self: gen_qfinalstate_types.QFinalState): cint =
  fcQFinalState_protectedbase_senderSignalIndex(self.h)

proc receivers*(self: gen_qfinalstate_types.QFinalState, signal: cstring): cint =
  fcQFinalState_protectedbase_receivers(self.h, signal)

proc isSignalConnected*(self: gen_qfinalstate_types.QFinalState, signal: gen_qmetaobject_types.QMetaMethod): bool =
  fcQFinalState_protectedbase_isSignalConnected(self.h, signal.h)

proc create*(T: type gen_qfinalstate_types.QFinalState,
    vtbl: ref QFinalStateVTable = nil): gen_qfinalstate_types.QFinalState =
  let vtbl = if vtbl == nil: new QFinalStateVTable else: vtbl
  GC_ref(vtbl)
  vtbl[].vtbl.destructor = proc(self: pointer) {.cdecl.} =
    let vtbl = cast[ref QFinalStateVTable](fcQFinalState_vdata(self))
    GC_unref(vtbl)
  if not isNil(vtbl[].metaObject):
    vtbl[].vtbl.metaObject = cQFinalState_vtable_callback_metaObject
  if not isNil(vtbl[].metacast):
    vtbl[].vtbl.metacast = cQFinalState_vtable_callback_metacast
  if not isNil(vtbl[].metacall):
    vtbl[].vtbl.metacall = cQFinalState_vtable_callback_metacall
  if not isNil(vtbl[].onEntry):
    vtbl[].vtbl.onEntry = cQFinalState_vtable_callback_onEntry
  if not isNil(vtbl[].onExit):
    vtbl[].vtbl.onExit = cQFinalState_vtable_callback_onExit
  if not isNil(vtbl[].event):
    vtbl[].vtbl.event = cQFinalState_vtable_callback_event
  if not isNil(vtbl[].eventFilter):
    vtbl[].vtbl.eventFilter = cQFinalState_vtable_callback_eventFilter
  if not isNil(vtbl[].timerEvent):
    vtbl[].vtbl.timerEvent = cQFinalState_vtable_callback_timerEvent
  if not isNil(vtbl[].childEvent):
    vtbl[].vtbl.childEvent = cQFinalState_vtable_callback_childEvent
  if not isNil(vtbl[].customEvent):
    vtbl[].vtbl.customEvent = cQFinalState_vtable_callback_customEvent
  if not isNil(vtbl[].connectNotify):
    vtbl[].vtbl.connectNotify = cQFinalState_vtable_callback_connectNotify
  if not isNil(vtbl[].disconnectNotify):
    vtbl[].vtbl.disconnectNotify = cQFinalState_vtable_callback_disconnectNotify
  gen_qfinalstate_types.QFinalState(h: fcQFinalState_new(addr(vtbl[].vtbl), addr(vtbl[])), owned: true)

proc create*(T: type gen_qfinalstate_types.QFinalState,
    parent: gen_qstate_types.QState,
    vtbl: ref QFinalStateVTable = nil): gen_qfinalstate_types.QFinalState =
  let vtbl = if vtbl == nil: new QFinalStateVTable else: vtbl
  GC_ref(vtbl)
  vtbl[].vtbl.destructor = proc(self: pointer) {.cdecl.} =
    let vtbl = cast[ref QFinalStateVTable](fcQFinalState_vdata(self))
    GC_unref(vtbl)
  if not isNil(vtbl[].metaObject):
    vtbl[].vtbl.metaObject = cQFinalState_vtable_callback_metaObject
  if not isNil(vtbl[].metacast):
    vtbl[].vtbl.metacast = cQFinalState_vtable_callback_metacast
  if not isNil(vtbl[].metacall):
    vtbl[].vtbl.metacall = cQFinalState_vtable_callback_metacall
  if not isNil(vtbl[].onEntry):
    vtbl[].vtbl.onEntry = cQFinalState_vtable_callback_onEntry
  if not isNil(vtbl[].onExit):
    vtbl[].vtbl.onExit = cQFinalState_vtable_callback_onExit
  if not isNil(vtbl[].event):
    vtbl[].vtbl.event = cQFinalState_vtable_callback_event
  if not isNil(vtbl[].eventFilter):
    vtbl[].vtbl.eventFilter = cQFinalState_vtable_callback_eventFilter
  if not isNil(vtbl[].timerEvent):
    vtbl[].vtbl.timerEvent = cQFinalState_vtable_callback_timerEvent
  if not isNil(vtbl[].childEvent):
    vtbl[].vtbl.childEvent = cQFinalState_vtable_callback_childEvent
  if not isNil(vtbl[].customEvent):
    vtbl[].vtbl.customEvent = cQFinalState_vtable_callback_customEvent
  if not isNil(vtbl[].connectNotify):
    vtbl[].vtbl.connectNotify = cQFinalState_vtable_callback_connectNotify
  if not isNil(vtbl[].disconnectNotify):
    vtbl[].vtbl.disconnectNotify = cQFinalState_vtable_callback_disconnectNotify
  gen_qfinalstate_types.QFinalState(h: fcQFinalState_new2(addr(vtbl[].vtbl), addr(vtbl[]), parent.h), owned: true)

const cQFinalState_mvtbl = cQFinalStateVTable(
  destructor: proc(self: pointer) {.cdecl.} =
    let inst = cast[ptr typeof(VirtualQFinalState()[])](self.fcQFinalState_vtbl())
    inst[].h = nil
    inst[].owned = false,
  metaObject: cQFinalState_method_callback_metaObject,
  metacast: cQFinalState_method_callback_metacast,
  metacall: cQFinalState_method_callback_metacall,
  onEntry: cQFinalState_method_callback_onEntry,
  onExit: cQFinalState_method_callback_onExit,
  event: cQFinalState_method_callback_event,
  eventFilter: cQFinalState_method_callback_eventFilter,
  timerEvent: cQFinalState_method_callback_timerEvent,
  childEvent: cQFinalState_method_callback_childEvent,
  customEvent: cQFinalState_method_callback_customEvent,
  connectNotify: cQFinalState_method_callback_connectNotify,
  disconnectNotify: cQFinalState_method_callback_disconnectNotify,
)
proc create*(T: type gen_qfinalstate_types.QFinalState,
    inst: VirtualQFinalState) =
  if inst[].h != nil: delete(move(inst[]))
  inst[].h = fcQFinalState_new(addr(cQFinalState_mvtbl), addr(inst[]))
  inst[].owned = true

proc create*(T: type gen_qfinalstate_types.QFinalState,
    parent: gen_qstate_types.QState,
    inst: VirtualQFinalState) =
  if inst[].h != nil: delete(move(inst[]))
  inst[].h = fcQFinalState_new2(addr(cQFinalState_mvtbl), addr(inst[]), parent.h)
  inst[].owned = true

proc staticMetaObject*(_: type gen_qfinalstate_types.QFinalState): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQFinalState_staticMetaObject())
