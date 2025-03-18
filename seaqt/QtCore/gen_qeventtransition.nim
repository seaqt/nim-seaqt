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


{.compile("gen_qeventtransition.cpp", QtCoreCFlags).}


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

proc fcQEventTransition_metaObject(self: pointer): pointer {.importc: "QEventTransition_metaObject".}
proc fcQEventTransition_metacast(self: pointer, param1: cstring): pointer {.importc: "QEventTransition_metacast".}
proc fcQEventTransition_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.importc: "QEventTransition_metacall".}
proc fcQEventTransition_tr(s: cstring): struct_miqt_string {.importc: "QEventTransition_tr".}
proc fcQEventTransition_trUtf8(s: cstring): struct_miqt_string {.importc: "QEventTransition_trUtf8".}
proc fcQEventTransition_eventSource(self: pointer): pointer {.importc: "QEventTransition_eventSource".}
proc fcQEventTransition_setEventSource(self: pointer, objectVal: pointer): void {.importc: "QEventTransition_setEventSource".}
proc fcQEventTransition_eventType(self: pointer): cint {.importc: "QEventTransition_eventType".}
proc fcQEventTransition_setEventType(self: pointer, typeVal: cint): void {.importc: "QEventTransition_setEventType".}
proc fcQEventTransition_tr2(s: cstring, c: cstring): struct_miqt_string {.importc: "QEventTransition_tr2".}
proc fcQEventTransition_tr3(s: cstring, c: cstring, n: cint): struct_miqt_string {.importc: "QEventTransition_tr3".}
proc fcQEventTransition_trUtf82(s: cstring, c: cstring): struct_miqt_string {.importc: "QEventTransition_trUtf82".}
proc fcQEventTransition_trUtf83(s: cstring, c: cstring, n: cint): struct_miqt_string {.importc: "QEventTransition_trUtf83".}
proc fcQEventTransition_vtbl(self: pointer): pointer {.importc: "QEventTransition_vtbl".}
proc fcQEventTransition_vdata(self: pointer): pointer {.importc: "QEventTransition_vdata".}

type cQEventTransitionVTable {.pure.} = object
  destructor*: proc(self: pointer) {.cdecl, raises:[], gcsafe.}
  metaObject*: proc(self: pointer): pointer {.cdecl, raises: [], gcsafe.}
  metacast*: proc(self: pointer, param1: cstring): pointer {.cdecl, raises: [], gcsafe.}
  metacall*: proc(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.cdecl, raises: [], gcsafe.}
  eventTest*: proc(self: pointer, event: pointer): bool {.cdecl, raises: [], gcsafe.}
  onTransition*: proc(self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  event*: proc(self: pointer, e: pointer): bool {.cdecl, raises: [], gcsafe.}
  eventFilter*: proc(self: pointer, watched: pointer, event: pointer): bool {.cdecl, raises: [], gcsafe.}
  timerEvent*: proc(self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  childEvent*: proc(self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  customEvent*: proc(self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  connectNotify*: proc(self: pointer, signal: pointer): void {.cdecl, raises: [], gcsafe.}
  disconnectNotify*: proc(self: pointer, signal: pointer): void {.cdecl, raises: [], gcsafe.}
proc fcQEventTransition_virtualbase_metaObject(self: pointer): pointer {.importc: "QEventTransition_virtualbase_metaObject".}
proc fcQEventTransition_virtualbase_metacast(self: pointer, param1: cstring): pointer {.importc: "QEventTransition_virtualbase_metacast".}
proc fcQEventTransition_virtualbase_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.importc: "QEventTransition_virtualbase_metacall".}
proc fcQEventTransition_virtualbase_eventTest(self: pointer, event: pointer): bool {.importc: "QEventTransition_virtualbase_eventTest".}
proc fcQEventTransition_virtualbase_onTransition(self: pointer, event: pointer): void {.importc: "QEventTransition_virtualbase_onTransition".}
proc fcQEventTransition_virtualbase_event(self: pointer, e: pointer): bool {.importc: "QEventTransition_virtualbase_event".}
proc fcQEventTransition_virtualbase_eventFilter(self: pointer, watched: pointer, event: pointer): bool {.importc: "QEventTransition_virtualbase_eventFilter".}
proc fcQEventTransition_virtualbase_timerEvent(self: pointer, event: pointer): void {.importc: "QEventTransition_virtualbase_timerEvent".}
proc fcQEventTransition_virtualbase_childEvent(self: pointer, event: pointer): void {.importc: "QEventTransition_virtualbase_childEvent".}
proc fcQEventTransition_virtualbase_customEvent(self: pointer, event: pointer): void {.importc: "QEventTransition_virtualbase_customEvent".}
proc fcQEventTransition_virtualbase_connectNotify(self: pointer, signal: pointer): void {.importc: "QEventTransition_virtualbase_connectNotify".}
proc fcQEventTransition_virtualbase_disconnectNotify(self: pointer, signal: pointer): void {.importc: "QEventTransition_virtualbase_disconnectNotify".}
proc fcQEventTransition_protectedbase_sender(self: pointer): pointer {.importc: "QEventTransition_protectedbase_sender".}
proc fcQEventTransition_protectedbase_senderSignalIndex(self: pointer): cint {.importc: "QEventTransition_protectedbase_senderSignalIndex".}
proc fcQEventTransition_protectedbase_receivers(self: pointer, signal: cstring): cint {.importc: "QEventTransition_protectedbase_receivers".}
proc fcQEventTransition_protectedbase_isSignalConnected(self: pointer, signal: pointer): bool {.importc: "QEventTransition_protectedbase_isSignalConnected".}
proc fcQEventTransition_new(vtbl, vdata: pointer): ptr cQEventTransition {.importc: "QEventTransition_new".}
proc fcQEventTransition_new2(vtbl, vdata: pointer, objectVal: pointer, typeVal: cint): ptr cQEventTransition {.importc: "QEventTransition_new2".}
proc fcQEventTransition_new3(vtbl, vdata: pointer, sourceState: pointer): ptr cQEventTransition {.importc: "QEventTransition_new3".}
proc fcQEventTransition_new4(vtbl, vdata: pointer, objectVal: pointer, typeVal: cint, sourceState: pointer): ptr cQEventTransition {.importc: "QEventTransition_new4".}
proc fcQEventTransition_staticMetaObject(): pointer {.importc: "QEventTransition_staticMetaObject".}

proc metaObject*(self: gen_qeventtransition_types.QEventTransition): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQEventTransition_metaObject(self.h), owned: false)

proc metacast*(self: gen_qeventtransition_types.QEventTransition, param1: cstring): pointer =
  fcQEventTransition_metacast(self.h, param1)

proc metacall*(self: gen_qeventtransition_types.QEventTransition, param1: cint, param2: cint, param3: pointer): cint =
  fcQEventTransition_metacall(self.h, cint(param1), param2, param3)

proc tr*(_: type gen_qeventtransition_types.QEventTransition, s: cstring): string =
  let v_ms = fcQEventTransition_tr(s)
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

proc trUtf8*(_: type gen_qeventtransition_types.QEventTransition, s: cstring): string =
  let v_ms = fcQEventTransition_trUtf8(s)
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

proc eventSource*(self: gen_qeventtransition_types.QEventTransition): gen_qobject_types.QObject =
  gen_qobject_types.QObject(h: fcQEventTransition_eventSource(self.h), owned: false)

proc setEventSource*(self: gen_qeventtransition_types.QEventTransition, objectVal: gen_qobject_types.QObject): void =
  fcQEventTransition_setEventSource(self.h, objectVal.h)

proc eventType*(self: gen_qeventtransition_types.QEventTransition): cint =
  cint(fcQEventTransition_eventType(self.h))

proc setEventType*(self: gen_qeventtransition_types.QEventTransition, typeVal: cint): void =
  fcQEventTransition_setEventType(self.h, cint(typeVal))

proc tr*(_: type gen_qeventtransition_types.QEventTransition, s: cstring, c: cstring): string =
  let v_ms = fcQEventTransition_tr2(s, c)
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

proc tr*(_: type gen_qeventtransition_types.QEventTransition, s: cstring, c: cstring, n: cint): string =
  let v_ms = fcQEventTransition_tr3(s, c, n)
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

proc trUtf8*(_: type gen_qeventtransition_types.QEventTransition, s: cstring, c: cstring): string =
  let v_ms = fcQEventTransition_trUtf82(s, c)
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

proc trUtf8*(_: type gen_qeventtransition_types.QEventTransition, s: cstring, c: cstring, n: cint): string =
  let v_ms = fcQEventTransition_trUtf83(s, c, n)
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

type QEventTransitionmetaObjectProc* = proc(self: QEventTransition): gen_qobjectdefs_types.QMetaObject {.raises: [], gcsafe.}
type QEventTransitionmetacastProc* = proc(self: QEventTransition, param1: cstring): pointer {.raises: [], gcsafe.}
type QEventTransitionmetacallProc* = proc(self: QEventTransition, param1: cint, param2: cint, param3: pointer): cint {.raises: [], gcsafe.}
type QEventTransitioneventTestProc* = proc(self: QEventTransition, event: gen_qcoreevent_types.QEvent): bool {.raises: [], gcsafe.}
type QEventTransitiononTransitionProc* = proc(self: QEventTransition, event: gen_qcoreevent_types.QEvent): void {.raises: [], gcsafe.}
type QEventTransitioneventProc* = proc(self: QEventTransition, e: gen_qcoreevent_types.QEvent): bool {.raises: [], gcsafe.}
type QEventTransitioneventFilterProc* = proc(self: QEventTransition, watched: gen_qobject_types.QObject, event: gen_qcoreevent_types.QEvent): bool {.raises: [], gcsafe.}
type QEventTransitiontimerEventProc* = proc(self: QEventTransition, event: gen_qcoreevent_types.QTimerEvent): void {.raises: [], gcsafe.}
type QEventTransitionchildEventProc* = proc(self: QEventTransition, event: gen_qcoreevent_types.QChildEvent): void {.raises: [], gcsafe.}
type QEventTransitioncustomEventProc* = proc(self: QEventTransition, event: gen_qcoreevent_types.QEvent): void {.raises: [], gcsafe.}
type QEventTransitionconnectNotifyProc* = proc(self: QEventTransition, signal: gen_qmetaobject_types.QMetaMethod): void {.raises: [], gcsafe.}
type QEventTransitiondisconnectNotifyProc* = proc(self: QEventTransition, signal: gen_qmetaobject_types.QMetaMethod): void {.raises: [], gcsafe.}

type QEventTransitionVTable* {.inheritable, pure.} = object
  vtbl: cQEventTransitionVTable
  metaObject*: QEventTransitionmetaObjectProc
  metacast*: QEventTransitionmetacastProc
  metacall*: QEventTransitionmetacallProc
  eventTest*: QEventTransitioneventTestProc
  onTransition*: QEventTransitiononTransitionProc
  event*: QEventTransitioneventProc
  eventFilter*: QEventTransitioneventFilterProc
  timerEvent*: QEventTransitiontimerEventProc
  childEvent*: QEventTransitionchildEventProc
  customEvent*: QEventTransitioncustomEventProc
  connectNotify*: QEventTransitionconnectNotifyProc
  disconnectNotify*: QEventTransitiondisconnectNotifyProc

proc QEventTransitionmetaObject*(self: gen_qeventtransition_types.QEventTransition): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQEventTransition_virtualbase_metaObject(self.h), owned: false)

proc QEventTransitionmetacast*(self: gen_qeventtransition_types.QEventTransition, param1: cstring): pointer =
  fcQEventTransition_virtualbase_metacast(self.h, param1)

proc QEventTransitionmetacall*(self: gen_qeventtransition_types.QEventTransition, param1: cint, param2: cint, param3: pointer): cint =
  fcQEventTransition_virtualbase_metacall(self.h, cint(param1), param2, param3)

proc QEventTransitioneventTest*(self: gen_qeventtransition_types.QEventTransition, event: gen_qcoreevent_types.QEvent): bool =
  fcQEventTransition_virtualbase_eventTest(self.h, event.h)

proc QEventTransitiononTransition*(self: gen_qeventtransition_types.QEventTransition, event: gen_qcoreevent_types.QEvent): void =
  fcQEventTransition_virtualbase_onTransition(self.h, event.h)

proc QEventTransitionevent*(self: gen_qeventtransition_types.QEventTransition, e: gen_qcoreevent_types.QEvent): bool =
  fcQEventTransition_virtualbase_event(self.h, e.h)

proc QEventTransitioneventFilter*(self: gen_qeventtransition_types.QEventTransition, watched: gen_qobject_types.QObject, event: gen_qcoreevent_types.QEvent): bool =
  fcQEventTransition_virtualbase_eventFilter(self.h, watched.h, event.h)

proc QEventTransitiontimerEvent*(self: gen_qeventtransition_types.QEventTransition, event: gen_qcoreevent_types.QTimerEvent): void =
  fcQEventTransition_virtualbase_timerEvent(self.h, event.h)

proc QEventTransitionchildEvent*(self: gen_qeventtransition_types.QEventTransition, event: gen_qcoreevent_types.QChildEvent): void =
  fcQEventTransition_virtualbase_childEvent(self.h, event.h)

proc QEventTransitioncustomEvent*(self: gen_qeventtransition_types.QEventTransition, event: gen_qcoreevent_types.QEvent): void =
  fcQEventTransition_virtualbase_customEvent(self.h, event.h)

proc QEventTransitionconnectNotify*(self: gen_qeventtransition_types.QEventTransition, signal: gen_qmetaobject_types.QMetaMethod): void =
  fcQEventTransition_virtualbase_connectNotify(self.h, signal.h)

proc QEventTransitiondisconnectNotify*(self: gen_qeventtransition_types.QEventTransition, signal: gen_qmetaobject_types.QMetaMethod): void =
  fcQEventTransition_virtualbase_disconnectNotify(self.h, signal.h)


proc fcQEventTransition_vtable_callback_metaObject(self: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QEventTransitionVTable](fcQEventTransition_vdata(self))
  let self = QEventTransition(h: self)
  var virtualReturn = vtbl[].metaObject(self)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc fcQEventTransition_vtable_callback_metacast(self: pointer, param1: cstring): pointer {.cdecl.} =
  let vtbl = cast[ptr QEventTransitionVTable](fcQEventTransition_vdata(self))
  let self = QEventTransition(h: self)
  let slotval1 = (param1)
  var virtualReturn = vtbl[].metacast(self, slotval1)
  virtualReturn

proc fcQEventTransition_vtable_callback_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.cdecl.} =
  let vtbl = cast[ptr QEventTransitionVTable](fcQEventTransition_vdata(self))
  let self = QEventTransition(h: self)
  let slotval1 = cint(param1)
  let slotval2 = param2
  let slotval3 = param3
  var virtualReturn = vtbl[].metacall(self, slotval1, slotval2, slotval3)
  virtualReturn

proc fcQEventTransition_vtable_callback_eventTest(self: pointer, event: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QEventTransitionVTable](fcQEventTransition_vdata(self))
  let self = QEventTransition(h: self)
  let slotval1 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  var virtualReturn = vtbl[].eventTest(self, slotval1)
  virtualReturn

proc fcQEventTransition_vtable_callback_onTransition(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QEventTransitionVTable](fcQEventTransition_vdata(self))
  let self = QEventTransition(h: self)
  let slotval1 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  vtbl[].onTransition(self, slotval1)

proc fcQEventTransition_vtable_callback_event(self: pointer, e: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QEventTransitionVTable](fcQEventTransition_vdata(self))
  let self = QEventTransition(h: self)
  let slotval1 = gen_qcoreevent_types.QEvent(h: e, owned: false)
  var virtualReturn = vtbl[].event(self, slotval1)
  virtualReturn

proc fcQEventTransition_vtable_callback_eventFilter(self: pointer, watched: pointer, event: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QEventTransitionVTable](fcQEventTransition_vdata(self))
  let self = QEventTransition(h: self)
  let slotval1 = gen_qobject_types.QObject(h: watched, owned: false)
  let slotval2 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  var virtualReturn = vtbl[].eventFilter(self, slotval1, slotval2)
  virtualReturn

proc fcQEventTransition_vtable_callback_timerEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QEventTransitionVTable](fcQEventTransition_vdata(self))
  let self = QEventTransition(h: self)
  let slotval1 = gen_qcoreevent_types.QTimerEvent(h: event, owned: false)
  vtbl[].timerEvent(self, slotval1)

proc fcQEventTransition_vtable_callback_childEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QEventTransitionVTable](fcQEventTransition_vdata(self))
  let self = QEventTransition(h: self)
  let slotval1 = gen_qcoreevent_types.QChildEvent(h: event, owned: false)
  vtbl[].childEvent(self, slotval1)

proc fcQEventTransition_vtable_callback_customEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QEventTransitionVTable](fcQEventTransition_vdata(self))
  let self = QEventTransition(h: self)
  let slotval1 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  vtbl[].customEvent(self, slotval1)

proc fcQEventTransition_vtable_callback_connectNotify(self: pointer, signal: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QEventTransitionVTable](fcQEventTransition_vdata(self))
  let self = QEventTransition(h: self)
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal, owned: false)
  vtbl[].connectNotify(self, slotval1)

proc fcQEventTransition_vtable_callback_disconnectNotify(self: pointer, signal: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QEventTransitionVTable](fcQEventTransition_vdata(self))
  let self = QEventTransition(h: self)
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal, owned: false)
  vtbl[].disconnectNotify(self, slotval1)

type VirtualQEventTransition* {.inheritable.} = ref object of QEventTransition
  vtbl*: cQEventTransitionVTable

method metaObject*(self: VirtualQEventTransition): gen_qobjectdefs_types.QMetaObject {.base.} =
  QEventTransitionmetaObject(self[])
method metacast*(self: VirtualQEventTransition, param1: cstring): pointer {.base.} =
  QEventTransitionmetacast(self[], param1)
method metacall*(self: VirtualQEventTransition, param1: cint, param2: cint, param3: pointer): cint {.base.} =
  QEventTransitionmetacall(self[], param1, param2, param3)
method eventTest*(self: VirtualQEventTransition, event: gen_qcoreevent_types.QEvent): bool {.base.} =
  QEventTransitioneventTest(self[], event)
method onTransition*(self: VirtualQEventTransition, event: gen_qcoreevent_types.QEvent): void {.base.} =
  QEventTransitiononTransition(self[], event)
method event*(self: VirtualQEventTransition, e: gen_qcoreevent_types.QEvent): bool {.base.} =
  QEventTransitionevent(self[], e)
method eventFilter*(self: VirtualQEventTransition, watched: gen_qobject_types.QObject, event: gen_qcoreevent_types.QEvent): bool {.base.} =
  QEventTransitioneventFilter(self[], watched, event)
method timerEvent*(self: VirtualQEventTransition, event: gen_qcoreevent_types.QTimerEvent): void {.base.} =
  QEventTransitiontimerEvent(self[], event)
method childEvent*(self: VirtualQEventTransition, event: gen_qcoreevent_types.QChildEvent): void {.base.} =
  QEventTransitionchildEvent(self[], event)
method customEvent*(self: VirtualQEventTransition, event: gen_qcoreevent_types.QEvent): void {.base.} =
  QEventTransitioncustomEvent(self[], event)
method connectNotify*(self: VirtualQEventTransition, signal: gen_qmetaobject_types.QMetaMethod): void {.base.} =
  QEventTransitionconnectNotify(self[], signal)
method disconnectNotify*(self: VirtualQEventTransition, signal: gen_qmetaobject_types.QMetaMethod): void {.base.} =
  QEventTransitiondisconnectNotify(self[], signal)

proc fcQEventTransition_method_callback_metaObject(self: pointer): pointer {.cdecl.} =
  let inst = cast[VirtualQEventTransition](fcQEventTransition_vdata(self))
  var virtualReturn = inst.metaObject()
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc fcQEventTransition_method_callback_metacast(self: pointer, param1: cstring): pointer {.cdecl.} =
  let inst = cast[VirtualQEventTransition](fcQEventTransition_vdata(self))
  let slotval1 = (param1)
  var virtualReturn = inst.metacast(slotval1)
  virtualReturn

proc fcQEventTransition_method_callback_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.cdecl.} =
  let inst = cast[VirtualQEventTransition](fcQEventTransition_vdata(self))
  let slotval1 = cint(param1)
  let slotval2 = param2
  let slotval3 = param3
  var virtualReturn = inst.metacall(slotval1, slotval2, slotval3)
  virtualReturn

proc fcQEventTransition_method_callback_eventTest(self: pointer, event: pointer): bool {.cdecl.} =
  let inst = cast[VirtualQEventTransition](fcQEventTransition_vdata(self))
  let slotval1 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  var virtualReturn = inst.eventTest(slotval1)
  virtualReturn

proc fcQEventTransition_method_callback_onTransition(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQEventTransition](fcQEventTransition_vdata(self))
  let slotval1 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  inst.onTransition(slotval1)

proc fcQEventTransition_method_callback_event(self: pointer, e: pointer): bool {.cdecl.} =
  let inst = cast[VirtualQEventTransition](fcQEventTransition_vdata(self))
  let slotval1 = gen_qcoreevent_types.QEvent(h: e, owned: false)
  var virtualReturn = inst.event(slotval1)
  virtualReturn

proc fcQEventTransition_method_callback_eventFilter(self: pointer, watched: pointer, event: pointer): bool {.cdecl.} =
  let inst = cast[VirtualQEventTransition](fcQEventTransition_vdata(self))
  let slotval1 = gen_qobject_types.QObject(h: watched, owned: false)
  let slotval2 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  var virtualReturn = inst.eventFilter(slotval1, slotval2)
  virtualReturn

proc fcQEventTransition_method_callback_timerEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQEventTransition](fcQEventTransition_vdata(self))
  let slotval1 = gen_qcoreevent_types.QTimerEvent(h: event, owned: false)
  inst.timerEvent(slotval1)

proc fcQEventTransition_method_callback_childEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQEventTransition](fcQEventTransition_vdata(self))
  let slotval1 = gen_qcoreevent_types.QChildEvent(h: event, owned: false)
  inst.childEvent(slotval1)

proc fcQEventTransition_method_callback_customEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQEventTransition](fcQEventTransition_vdata(self))
  let slotval1 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  inst.customEvent(slotval1)

proc fcQEventTransition_method_callback_connectNotify(self: pointer, signal: pointer): void {.cdecl.} =
  let inst = cast[VirtualQEventTransition](fcQEventTransition_vdata(self))
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal, owned: false)
  inst.connectNotify(slotval1)

proc fcQEventTransition_method_callback_disconnectNotify(self: pointer, signal: pointer): void {.cdecl.} =
  let inst = cast[VirtualQEventTransition](fcQEventTransition_vdata(self))
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal, owned: false)
  inst.disconnectNotify(slotval1)


proc sender*(self: gen_qeventtransition_types.QEventTransition): gen_qobject_types.QObject =
  gen_qobject_types.QObject(h: fcQEventTransition_protectedbase_sender(self.h), owned: false)

proc senderSignalIndex*(self: gen_qeventtransition_types.QEventTransition): cint =
  fcQEventTransition_protectedbase_senderSignalIndex(self.h)

proc receivers*(self: gen_qeventtransition_types.QEventTransition, signal: cstring): cint =
  fcQEventTransition_protectedbase_receivers(self.h, signal)

proc isSignalConnected*(self: gen_qeventtransition_types.QEventTransition, signal: gen_qmetaobject_types.QMetaMethod): bool =
  fcQEventTransition_protectedbase_isSignalConnected(self.h, signal.h)

proc create*(T: type gen_qeventtransition_types.QEventTransition,
    vtbl: ref QEventTransitionVTable = nil): gen_qeventtransition_types.QEventTransition =
  let vtbl = if vtbl == nil: new QEventTransitionVTable else: vtbl
  GC_ref(vtbl)
  vtbl[].vtbl.destructor = proc(self: pointer) {.cdecl.} =
    let vtbl = cast[ref QEventTransitionVTable](fcQEventTransition_vdata(self))
    GC_unref(vtbl)
  if not isNil(vtbl[].metaObject):
    vtbl[].vtbl.metaObject = fcQEventTransition_vtable_callback_metaObject
  if not isNil(vtbl[].metacast):
    vtbl[].vtbl.metacast = fcQEventTransition_vtable_callback_metacast
  if not isNil(vtbl[].metacall):
    vtbl[].vtbl.metacall = fcQEventTransition_vtable_callback_metacall
  if not isNil(vtbl[].eventTest):
    vtbl[].vtbl.eventTest = fcQEventTransition_vtable_callback_eventTest
  if not isNil(vtbl[].onTransition):
    vtbl[].vtbl.onTransition = fcQEventTransition_vtable_callback_onTransition
  if not isNil(vtbl[].event):
    vtbl[].vtbl.event = fcQEventTransition_vtable_callback_event
  if not isNil(vtbl[].eventFilter):
    vtbl[].vtbl.eventFilter = fcQEventTransition_vtable_callback_eventFilter
  if not isNil(vtbl[].timerEvent):
    vtbl[].vtbl.timerEvent = fcQEventTransition_vtable_callback_timerEvent
  if not isNil(vtbl[].childEvent):
    vtbl[].vtbl.childEvent = fcQEventTransition_vtable_callback_childEvent
  if not isNil(vtbl[].customEvent):
    vtbl[].vtbl.customEvent = fcQEventTransition_vtable_callback_customEvent
  if not isNil(vtbl[].connectNotify):
    vtbl[].vtbl.connectNotify = fcQEventTransition_vtable_callback_connectNotify
  if not isNil(vtbl[].disconnectNotify):
    vtbl[].vtbl.disconnectNotify = fcQEventTransition_vtable_callback_disconnectNotify
  gen_qeventtransition_types.QEventTransition(h: fcQEventTransition_new(addr(vtbl[].vtbl), addr(vtbl[])), owned: true)

proc create*(T: type gen_qeventtransition_types.QEventTransition,
    objectVal: gen_qobject_types.QObject, typeVal: cint,
    vtbl: ref QEventTransitionVTable = nil): gen_qeventtransition_types.QEventTransition =
  let vtbl = if vtbl == nil: new QEventTransitionVTable else: vtbl
  GC_ref(vtbl)
  vtbl[].vtbl.destructor = proc(self: pointer) {.cdecl.} =
    let vtbl = cast[ref QEventTransitionVTable](fcQEventTransition_vdata(self))
    GC_unref(vtbl)
  if not isNil(vtbl[].metaObject):
    vtbl[].vtbl.metaObject = fcQEventTransition_vtable_callback_metaObject
  if not isNil(vtbl[].metacast):
    vtbl[].vtbl.metacast = fcQEventTransition_vtable_callback_metacast
  if not isNil(vtbl[].metacall):
    vtbl[].vtbl.metacall = fcQEventTransition_vtable_callback_metacall
  if not isNil(vtbl[].eventTest):
    vtbl[].vtbl.eventTest = fcQEventTransition_vtable_callback_eventTest
  if not isNil(vtbl[].onTransition):
    vtbl[].vtbl.onTransition = fcQEventTransition_vtable_callback_onTransition
  if not isNil(vtbl[].event):
    vtbl[].vtbl.event = fcQEventTransition_vtable_callback_event
  if not isNil(vtbl[].eventFilter):
    vtbl[].vtbl.eventFilter = fcQEventTransition_vtable_callback_eventFilter
  if not isNil(vtbl[].timerEvent):
    vtbl[].vtbl.timerEvent = fcQEventTransition_vtable_callback_timerEvent
  if not isNil(vtbl[].childEvent):
    vtbl[].vtbl.childEvent = fcQEventTransition_vtable_callback_childEvent
  if not isNil(vtbl[].customEvent):
    vtbl[].vtbl.customEvent = fcQEventTransition_vtable_callback_customEvent
  if not isNil(vtbl[].connectNotify):
    vtbl[].vtbl.connectNotify = fcQEventTransition_vtable_callback_connectNotify
  if not isNil(vtbl[].disconnectNotify):
    vtbl[].vtbl.disconnectNotify = fcQEventTransition_vtable_callback_disconnectNotify
  gen_qeventtransition_types.QEventTransition(h: fcQEventTransition_new2(addr(vtbl[].vtbl), addr(vtbl[]), objectVal.h, cint(typeVal)), owned: true)

proc create*(T: type gen_qeventtransition_types.QEventTransition,
    sourceState: gen_qstate_types.QState,
    vtbl: ref QEventTransitionVTable = nil): gen_qeventtransition_types.QEventTransition =
  let vtbl = if vtbl == nil: new QEventTransitionVTable else: vtbl
  GC_ref(vtbl)
  vtbl[].vtbl.destructor = proc(self: pointer) {.cdecl.} =
    let vtbl = cast[ref QEventTransitionVTable](fcQEventTransition_vdata(self))
    GC_unref(vtbl)
  if not isNil(vtbl[].metaObject):
    vtbl[].vtbl.metaObject = fcQEventTransition_vtable_callback_metaObject
  if not isNil(vtbl[].metacast):
    vtbl[].vtbl.metacast = fcQEventTransition_vtable_callback_metacast
  if not isNil(vtbl[].metacall):
    vtbl[].vtbl.metacall = fcQEventTransition_vtable_callback_metacall
  if not isNil(vtbl[].eventTest):
    vtbl[].vtbl.eventTest = fcQEventTransition_vtable_callback_eventTest
  if not isNil(vtbl[].onTransition):
    vtbl[].vtbl.onTransition = fcQEventTransition_vtable_callback_onTransition
  if not isNil(vtbl[].event):
    vtbl[].vtbl.event = fcQEventTransition_vtable_callback_event
  if not isNil(vtbl[].eventFilter):
    vtbl[].vtbl.eventFilter = fcQEventTransition_vtable_callback_eventFilter
  if not isNil(vtbl[].timerEvent):
    vtbl[].vtbl.timerEvent = fcQEventTransition_vtable_callback_timerEvent
  if not isNil(vtbl[].childEvent):
    vtbl[].vtbl.childEvent = fcQEventTransition_vtable_callback_childEvent
  if not isNil(vtbl[].customEvent):
    vtbl[].vtbl.customEvent = fcQEventTransition_vtable_callback_customEvent
  if not isNil(vtbl[].connectNotify):
    vtbl[].vtbl.connectNotify = fcQEventTransition_vtable_callback_connectNotify
  if not isNil(vtbl[].disconnectNotify):
    vtbl[].vtbl.disconnectNotify = fcQEventTransition_vtable_callback_disconnectNotify
  gen_qeventtransition_types.QEventTransition(h: fcQEventTransition_new3(addr(vtbl[].vtbl), addr(vtbl[]), sourceState.h), owned: true)

proc create*(T: type gen_qeventtransition_types.QEventTransition,
    objectVal: gen_qobject_types.QObject, typeVal: cint, sourceState: gen_qstate_types.QState,
    vtbl: ref QEventTransitionVTable = nil): gen_qeventtransition_types.QEventTransition =
  let vtbl = if vtbl == nil: new QEventTransitionVTable else: vtbl
  GC_ref(vtbl)
  vtbl[].vtbl.destructor = proc(self: pointer) {.cdecl.} =
    let vtbl = cast[ref QEventTransitionVTable](fcQEventTransition_vdata(self))
    GC_unref(vtbl)
  if not isNil(vtbl[].metaObject):
    vtbl[].vtbl.metaObject = fcQEventTransition_vtable_callback_metaObject
  if not isNil(vtbl[].metacast):
    vtbl[].vtbl.metacast = fcQEventTransition_vtable_callback_metacast
  if not isNil(vtbl[].metacall):
    vtbl[].vtbl.metacall = fcQEventTransition_vtable_callback_metacall
  if not isNil(vtbl[].eventTest):
    vtbl[].vtbl.eventTest = fcQEventTransition_vtable_callback_eventTest
  if not isNil(vtbl[].onTransition):
    vtbl[].vtbl.onTransition = fcQEventTransition_vtable_callback_onTransition
  if not isNil(vtbl[].event):
    vtbl[].vtbl.event = fcQEventTransition_vtable_callback_event
  if not isNil(vtbl[].eventFilter):
    vtbl[].vtbl.eventFilter = fcQEventTransition_vtable_callback_eventFilter
  if not isNil(vtbl[].timerEvent):
    vtbl[].vtbl.timerEvent = fcQEventTransition_vtable_callback_timerEvent
  if not isNil(vtbl[].childEvent):
    vtbl[].vtbl.childEvent = fcQEventTransition_vtable_callback_childEvent
  if not isNil(vtbl[].customEvent):
    vtbl[].vtbl.customEvent = fcQEventTransition_vtable_callback_customEvent
  if not isNil(vtbl[].connectNotify):
    vtbl[].vtbl.connectNotify = fcQEventTransition_vtable_callback_connectNotify
  if not isNil(vtbl[].disconnectNotify):
    vtbl[].vtbl.disconnectNotify = fcQEventTransition_vtable_callback_disconnectNotify
  gen_qeventtransition_types.QEventTransition(h: fcQEventTransition_new4(addr(vtbl[].vtbl), addr(vtbl[]), objectVal.h, cint(typeVal), sourceState.h), owned: true)

const cQEventTransition_mvtbl = cQEventTransitionVTable(
  destructor: proc(self: pointer) {.cdecl.} =
    let inst = cast[ptr typeof(VirtualQEventTransition()[])](self.fcQEventTransition_vdata())
    inst[].h = nil
    inst[].owned = false,

  metaObject: fcQEventTransition_method_callback_metaObject,
  metacast: fcQEventTransition_method_callback_metacast,
  metacall: fcQEventTransition_method_callback_metacall,
  eventTest: fcQEventTransition_method_callback_eventTest,
  onTransition: fcQEventTransition_method_callback_onTransition,
  event: fcQEventTransition_method_callback_event,
  eventFilter: fcQEventTransition_method_callback_eventFilter,
  timerEvent: fcQEventTransition_method_callback_timerEvent,
  childEvent: fcQEventTransition_method_callback_childEvent,
  customEvent: fcQEventTransition_method_callback_customEvent,
  connectNotify: fcQEventTransition_method_callback_connectNotify,
  disconnectNotify: fcQEventTransition_method_callback_disconnectNotify,
)
proc create*(T: type gen_qeventtransition_types.QEventTransition,
    inst: VirtualQEventTransition) =
  if inst[].h != nil: delete(move(inst[]))
  inst[].h = fcQEventTransition_new(addr(cQEventTransition_mvtbl), addr(inst[]))
  inst[].owned = true

proc create*(T: type gen_qeventtransition_types.QEventTransition,
    objectVal: gen_qobject_types.QObject, typeVal: cint,
    inst: VirtualQEventTransition) =
  if inst[].h != nil: delete(move(inst[]))
  inst[].h = fcQEventTransition_new2(addr(cQEventTransition_mvtbl), addr(inst[]), objectVal.h, cint(typeVal))
  inst[].owned = true

proc create*(T: type gen_qeventtransition_types.QEventTransition,
    sourceState: gen_qstate_types.QState,
    inst: VirtualQEventTransition) =
  if inst[].h != nil: delete(move(inst[]))
  inst[].h = fcQEventTransition_new3(addr(cQEventTransition_mvtbl), addr(inst[]), sourceState.h)
  inst[].owned = true

proc create*(T: type gen_qeventtransition_types.QEventTransition,
    objectVal: gen_qobject_types.QObject, typeVal: cint, sourceState: gen_qstate_types.QState,
    inst: VirtualQEventTransition) =
  if inst[].h != nil: delete(move(inst[]))
  inst[].h = fcQEventTransition_new4(addr(cQEventTransition_mvtbl), addr(inst[]), objectVal.h, cint(typeVal), sourceState.h)
  inst[].owned = true

proc staticMetaObject*(_: type gen_qeventtransition_types.QEventTransition): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQEventTransition_staticMetaObject())
