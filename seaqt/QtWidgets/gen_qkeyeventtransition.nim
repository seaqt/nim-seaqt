import ./Qt5Widgets_libs

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

const cflags = gorge("pkg-config --cflags Qt5Widgets") & " -fPIC"
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

proc fcQKeyEventTransition_metaObject(self: pointer): pointer {.importc: "QKeyEventTransition_metaObject".}
proc fcQKeyEventTransition_metacast(self: pointer, param1: cstring): pointer {.importc: "QKeyEventTransition_metacast".}
proc fcQKeyEventTransition_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.importc: "QKeyEventTransition_metacall".}
proc fcQKeyEventTransition_tr(s: cstring): struct_miqt_string {.importc: "QKeyEventTransition_tr".}
proc fcQKeyEventTransition_trUtf8(s: cstring): struct_miqt_string {.importc: "QKeyEventTransition_trUtf8".}
proc fcQKeyEventTransition_key(self: pointer): cint {.importc: "QKeyEventTransition_key".}
proc fcQKeyEventTransition_setKey(self: pointer, key: cint): void {.importc: "QKeyEventTransition_setKey".}
proc fcQKeyEventTransition_modifierMask(self: pointer): cint {.importc: "QKeyEventTransition_modifierMask".}
proc fcQKeyEventTransition_setModifierMask(self: pointer, modifiers: cint): void {.importc: "QKeyEventTransition_setModifierMask".}
proc fcQKeyEventTransition_tr2(s: cstring, c: cstring): struct_miqt_string {.importc: "QKeyEventTransition_tr2".}
proc fcQKeyEventTransition_tr3(s: cstring, c: cstring, n: cint): struct_miqt_string {.importc: "QKeyEventTransition_tr3".}
proc fcQKeyEventTransition_trUtf82(s: cstring, c: cstring): struct_miqt_string {.importc: "QKeyEventTransition_trUtf82".}
proc fcQKeyEventTransition_trUtf83(s: cstring, c: cstring, n: cint): struct_miqt_string {.importc: "QKeyEventTransition_trUtf83".}
proc fcQKeyEventTransition_vtbl(self: pointer): pointer {.importc: "QKeyEventTransition_vtbl".}
proc fcQKeyEventTransition_vdata(self: pointer): pointer {.importc: "QKeyEventTransition_vdata".}
type cQKeyEventTransitionVTable {.pure.} = object
  destructor*: proc(self: pointer) {.cdecl, raises:[], gcsafe.}
  metaObject*: proc(self: pointer): pointer {.cdecl, raises: [], gcsafe.}
  metacast*: proc(self: pointer, param1: cstring): pointer {.cdecl, raises: [], gcsafe.}
  metacall*: proc(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.cdecl, raises: [], gcsafe.}
  onTransition*: proc(self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  eventTest*: proc(self: pointer, event: pointer): bool {.cdecl, raises: [], gcsafe.}
  event*: proc(self: pointer, e: pointer): bool {.cdecl, raises: [], gcsafe.}
  eventFilter*: proc(self: pointer, watched: pointer, event: pointer): bool {.cdecl, raises: [], gcsafe.}
  timerEvent*: proc(self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  childEvent*: proc(self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  customEvent*: proc(self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  connectNotify*: proc(self: pointer, signal: pointer): void {.cdecl, raises: [], gcsafe.}
  disconnectNotify*: proc(self: pointer, signal: pointer): void {.cdecl, raises: [], gcsafe.}
proc fcQKeyEventTransition_virtualbase_metaObject(self: pointer): pointer {.importc: "QKeyEventTransition_virtualbase_metaObject".}
proc fcQKeyEventTransition_virtualbase_metacast(self: pointer, param1: cstring): pointer {.importc: "QKeyEventTransition_virtualbase_metacast".}
proc fcQKeyEventTransition_virtualbase_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.importc: "QKeyEventTransition_virtualbase_metacall".}
proc fcQKeyEventTransition_virtualbase_onTransition(self: pointer, event: pointer): void {.importc: "QKeyEventTransition_virtualbase_onTransition".}
proc fcQKeyEventTransition_virtualbase_eventTest(self: pointer, event: pointer): bool {.importc: "QKeyEventTransition_virtualbase_eventTest".}
proc fcQKeyEventTransition_virtualbase_event(self: pointer, e: pointer): bool {.importc: "QKeyEventTransition_virtualbase_event".}
proc fcQKeyEventTransition_virtualbase_eventFilter(self: pointer, watched: pointer, event: pointer): bool {.importc: "QKeyEventTransition_virtualbase_eventFilter".}
proc fcQKeyEventTransition_virtualbase_timerEvent(self: pointer, event: pointer): void {.importc: "QKeyEventTransition_virtualbase_timerEvent".}
proc fcQKeyEventTransition_virtualbase_childEvent(self: pointer, event: pointer): void {.importc: "QKeyEventTransition_virtualbase_childEvent".}
proc fcQKeyEventTransition_virtualbase_customEvent(self: pointer, event: pointer): void {.importc: "QKeyEventTransition_virtualbase_customEvent".}
proc fcQKeyEventTransition_virtualbase_connectNotify(self: pointer, signal: pointer): void {.importc: "QKeyEventTransition_virtualbase_connectNotify".}
proc fcQKeyEventTransition_virtualbase_disconnectNotify(self: pointer, signal: pointer): void {.importc: "QKeyEventTransition_virtualbase_disconnectNotify".}
proc fcQKeyEventTransition_protectedbase_sender(self: pointer): pointer {.importc: "QKeyEventTransition_protectedbase_sender".}
proc fcQKeyEventTransition_protectedbase_senderSignalIndex(self: pointer): cint {.importc: "QKeyEventTransition_protectedbase_senderSignalIndex".}
proc fcQKeyEventTransition_protectedbase_receivers(self: pointer, signal: cstring): cint {.importc: "QKeyEventTransition_protectedbase_receivers".}
proc fcQKeyEventTransition_protectedbase_isSignalConnected(self: pointer, signal: pointer): bool {.importc: "QKeyEventTransition_protectedbase_isSignalConnected".}
proc fcQKeyEventTransition_new(vtbl, vdata: pointer): ptr cQKeyEventTransition {.importc: "QKeyEventTransition_new".}
proc fcQKeyEventTransition_new2(vtbl, vdata: pointer, objectVal: pointer, typeVal: cint, key: cint): ptr cQKeyEventTransition {.importc: "QKeyEventTransition_new2".}
proc fcQKeyEventTransition_new3(vtbl, vdata: pointer, sourceState: pointer): ptr cQKeyEventTransition {.importc: "QKeyEventTransition_new3".}
proc fcQKeyEventTransition_new4(vtbl, vdata: pointer, objectVal: pointer, typeVal: cint, key: cint, sourceState: pointer): ptr cQKeyEventTransition {.importc: "QKeyEventTransition_new4".}
proc fcQKeyEventTransition_staticMetaObject(): pointer {.importc: "QKeyEventTransition_staticMetaObject".}

proc metaObject*(self: gen_qkeyeventtransition_types.QKeyEventTransition): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQKeyEventTransition_metaObject(self.h), owned: false)

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

proc key*(self: gen_qkeyeventtransition_types.QKeyEventTransition): cint =
  fcQKeyEventTransition_key(self.h)

proc setKey*(self: gen_qkeyeventtransition_types.QKeyEventTransition, key: cint): void =
  fcQKeyEventTransition_setKey(self.h, key)

proc modifierMask*(self: gen_qkeyeventtransition_types.QKeyEventTransition): cint =
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

type QKeyEventTransitionmetaObjectProc* = proc(self: QKeyEventTransition): gen_qobjectdefs_types.QMetaObject {.raises: [], gcsafe.}
type QKeyEventTransitionmetacastProc* = proc(self: QKeyEventTransition, param1: cstring): pointer {.raises: [], gcsafe.}
type QKeyEventTransitionmetacallProc* = proc(self: QKeyEventTransition, param1: cint, param2: cint, param3: pointer): cint {.raises: [], gcsafe.}
type QKeyEventTransitiononTransitionProc* = proc(self: QKeyEventTransition, event: gen_qcoreevent_types.QEvent): void {.raises: [], gcsafe.}
type QKeyEventTransitioneventTestProc* = proc(self: QKeyEventTransition, event: gen_qcoreevent_types.QEvent): bool {.raises: [], gcsafe.}
type QKeyEventTransitioneventProc* = proc(self: QKeyEventTransition, e: gen_qcoreevent_types.QEvent): bool {.raises: [], gcsafe.}
type QKeyEventTransitioneventFilterProc* = proc(self: QKeyEventTransition, watched: gen_qobject_types.QObject, event: gen_qcoreevent_types.QEvent): bool {.raises: [], gcsafe.}
type QKeyEventTransitiontimerEventProc* = proc(self: QKeyEventTransition, event: gen_qcoreevent_types.QTimerEvent): void {.raises: [], gcsafe.}
type QKeyEventTransitionchildEventProc* = proc(self: QKeyEventTransition, event: gen_qcoreevent_types.QChildEvent): void {.raises: [], gcsafe.}
type QKeyEventTransitioncustomEventProc* = proc(self: QKeyEventTransition, event: gen_qcoreevent_types.QEvent): void {.raises: [], gcsafe.}
type QKeyEventTransitionconnectNotifyProc* = proc(self: QKeyEventTransition, signal: gen_qmetaobject_types.QMetaMethod): void {.raises: [], gcsafe.}
type QKeyEventTransitiondisconnectNotifyProc* = proc(self: QKeyEventTransition, signal: gen_qmetaobject_types.QMetaMethod): void {.raises: [], gcsafe.}
type QKeyEventTransitionVTable* {.inheritable, pure.} = object
  vtbl: cQKeyEventTransitionVTable
  metaObject*: QKeyEventTransitionmetaObjectProc
  metacast*: QKeyEventTransitionmetacastProc
  metacall*: QKeyEventTransitionmetacallProc
  onTransition*: QKeyEventTransitiononTransitionProc
  eventTest*: QKeyEventTransitioneventTestProc
  event*: QKeyEventTransitioneventProc
  eventFilter*: QKeyEventTransitioneventFilterProc
  timerEvent*: QKeyEventTransitiontimerEventProc
  childEvent*: QKeyEventTransitionchildEventProc
  customEvent*: QKeyEventTransitioncustomEventProc
  connectNotify*: QKeyEventTransitionconnectNotifyProc
  disconnectNotify*: QKeyEventTransitiondisconnectNotifyProc
proc QKeyEventTransitionmetaObject*(self: gen_qkeyeventtransition_types.QKeyEventTransition): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQKeyEventTransition_virtualbase_metaObject(self.h), owned: false)

proc cQKeyEventTransition_vtable_callback_metaObject(self: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QKeyEventTransitionVTable](fcQKeyEventTransition_vdata(self))
  let self = QKeyEventTransition(h: self)
  var virtualReturn = vtbl[].metaObject(self)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc QKeyEventTransitionmetacast*(self: gen_qkeyeventtransition_types.QKeyEventTransition, param1: cstring): pointer =
  fcQKeyEventTransition_virtualbase_metacast(self.h, param1)

proc cQKeyEventTransition_vtable_callback_metacast(self: pointer, param1: cstring): pointer {.cdecl.} =
  let vtbl = cast[ptr QKeyEventTransitionVTable](fcQKeyEventTransition_vdata(self))
  let self = QKeyEventTransition(h: self)
  let slotval1 = (param1)
  var virtualReturn = vtbl[].metacast(self, slotval1)
  virtualReturn

proc QKeyEventTransitionmetacall*(self: gen_qkeyeventtransition_types.QKeyEventTransition, param1: cint, param2: cint, param3: pointer): cint =
  fcQKeyEventTransition_virtualbase_metacall(self.h, cint(param1), param2, param3)

proc cQKeyEventTransition_vtable_callback_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.cdecl.} =
  let vtbl = cast[ptr QKeyEventTransitionVTable](fcQKeyEventTransition_vdata(self))
  let self = QKeyEventTransition(h: self)
  let slotval1 = cint(param1)
  let slotval2 = param2
  let slotval3 = param3
  var virtualReturn = vtbl[].metacall(self, slotval1, slotval2, slotval3)
  virtualReturn

proc QKeyEventTransitiononTransition*(self: gen_qkeyeventtransition_types.QKeyEventTransition, event: gen_qcoreevent_types.QEvent): void =
  fcQKeyEventTransition_virtualbase_onTransition(self.h, event.h)

proc cQKeyEventTransition_vtable_callback_onTransition(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QKeyEventTransitionVTable](fcQKeyEventTransition_vdata(self))
  let self = QKeyEventTransition(h: self)
  let slotval1 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  vtbl[].onTransition(self, slotval1)

proc QKeyEventTransitioneventTest*(self: gen_qkeyeventtransition_types.QKeyEventTransition, event: gen_qcoreevent_types.QEvent): bool =
  fcQKeyEventTransition_virtualbase_eventTest(self.h, event.h)

proc cQKeyEventTransition_vtable_callback_eventTest(self: pointer, event: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QKeyEventTransitionVTable](fcQKeyEventTransition_vdata(self))
  let self = QKeyEventTransition(h: self)
  let slotval1 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  var virtualReturn = vtbl[].eventTest(self, slotval1)
  virtualReturn

proc QKeyEventTransitionevent*(self: gen_qkeyeventtransition_types.QKeyEventTransition, e: gen_qcoreevent_types.QEvent): bool =
  fcQKeyEventTransition_virtualbase_event(self.h, e.h)

proc cQKeyEventTransition_vtable_callback_event(self: pointer, e: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QKeyEventTransitionVTable](fcQKeyEventTransition_vdata(self))
  let self = QKeyEventTransition(h: self)
  let slotval1 = gen_qcoreevent_types.QEvent(h: e, owned: false)
  var virtualReturn = vtbl[].event(self, slotval1)
  virtualReturn

proc QKeyEventTransitioneventFilter*(self: gen_qkeyeventtransition_types.QKeyEventTransition, watched: gen_qobject_types.QObject, event: gen_qcoreevent_types.QEvent): bool =
  fcQKeyEventTransition_virtualbase_eventFilter(self.h, watched.h, event.h)

proc cQKeyEventTransition_vtable_callback_eventFilter(self: pointer, watched: pointer, event: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QKeyEventTransitionVTable](fcQKeyEventTransition_vdata(self))
  let self = QKeyEventTransition(h: self)
  let slotval1 = gen_qobject_types.QObject(h: watched, owned: false)
  let slotval2 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  var virtualReturn = vtbl[].eventFilter(self, slotval1, slotval2)
  virtualReturn

proc QKeyEventTransitiontimerEvent*(self: gen_qkeyeventtransition_types.QKeyEventTransition, event: gen_qcoreevent_types.QTimerEvent): void =
  fcQKeyEventTransition_virtualbase_timerEvent(self.h, event.h)

proc cQKeyEventTransition_vtable_callback_timerEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QKeyEventTransitionVTable](fcQKeyEventTransition_vdata(self))
  let self = QKeyEventTransition(h: self)
  let slotval1 = gen_qcoreevent_types.QTimerEvent(h: event, owned: false)
  vtbl[].timerEvent(self, slotval1)

proc QKeyEventTransitionchildEvent*(self: gen_qkeyeventtransition_types.QKeyEventTransition, event: gen_qcoreevent_types.QChildEvent): void =
  fcQKeyEventTransition_virtualbase_childEvent(self.h, event.h)

proc cQKeyEventTransition_vtable_callback_childEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QKeyEventTransitionVTable](fcQKeyEventTransition_vdata(self))
  let self = QKeyEventTransition(h: self)
  let slotval1 = gen_qcoreevent_types.QChildEvent(h: event, owned: false)
  vtbl[].childEvent(self, slotval1)

proc QKeyEventTransitioncustomEvent*(self: gen_qkeyeventtransition_types.QKeyEventTransition, event: gen_qcoreevent_types.QEvent): void =
  fcQKeyEventTransition_virtualbase_customEvent(self.h, event.h)

proc cQKeyEventTransition_vtable_callback_customEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QKeyEventTransitionVTable](fcQKeyEventTransition_vdata(self))
  let self = QKeyEventTransition(h: self)
  let slotval1 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  vtbl[].customEvent(self, slotval1)

proc QKeyEventTransitionconnectNotify*(self: gen_qkeyeventtransition_types.QKeyEventTransition, signal: gen_qmetaobject_types.QMetaMethod): void =
  fcQKeyEventTransition_virtualbase_connectNotify(self.h, signal.h)

proc cQKeyEventTransition_vtable_callback_connectNotify(self: pointer, signal: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QKeyEventTransitionVTable](fcQKeyEventTransition_vdata(self))
  let self = QKeyEventTransition(h: self)
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal, owned: false)
  vtbl[].connectNotify(self, slotval1)

proc QKeyEventTransitiondisconnectNotify*(self: gen_qkeyeventtransition_types.QKeyEventTransition, signal: gen_qmetaobject_types.QMetaMethod): void =
  fcQKeyEventTransition_virtualbase_disconnectNotify(self.h, signal.h)

proc cQKeyEventTransition_vtable_callback_disconnectNotify(self: pointer, signal: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QKeyEventTransitionVTable](fcQKeyEventTransition_vdata(self))
  let self = QKeyEventTransition(h: self)
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal, owned: false)
  vtbl[].disconnectNotify(self, slotval1)

type VirtualQKeyEventTransition* {.inheritable.} = ref object of QKeyEventTransition
  vtbl*: cQKeyEventTransitionVTable
method metaObject*(self: VirtualQKeyEventTransition): gen_qobjectdefs_types.QMetaObject {.base.} =
  QKeyEventTransitionmetaObject(self[])
proc cQKeyEventTransition_method_callback_metaObject(self: pointer): pointer {.cdecl.} =
  let inst = cast[VirtualQKeyEventTransition](fcQKeyEventTransition_vdata(self))
  var virtualReturn = inst.metaObject()
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

method metacast*(self: VirtualQKeyEventTransition, param1: cstring): pointer {.base.} =
  QKeyEventTransitionmetacast(self[], param1)
proc cQKeyEventTransition_method_callback_metacast(self: pointer, param1: cstring): pointer {.cdecl.} =
  let inst = cast[VirtualQKeyEventTransition](fcQKeyEventTransition_vdata(self))
  let slotval1 = (param1)
  var virtualReturn = inst.metacast(slotval1)
  virtualReturn

method metacall*(self: VirtualQKeyEventTransition, param1: cint, param2: cint, param3: pointer): cint {.base.} =
  QKeyEventTransitionmetacall(self[], param1, param2, param3)
proc cQKeyEventTransition_method_callback_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.cdecl.} =
  let inst = cast[VirtualQKeyEventTransition](fcQKeyEventTransition_vdata(self))
  let slotval1 = cint(param1)
  let slotval2 = param2
  let slotval3 = param3
  var virtualReturn = inst.metacall(slotval1, slotval2, slotval3)
  virtualReturn

method onTransition*(self: VirtualQKeyEventTransition, event: gen_qcoreevent_types.QEvent): void {.base.} =
  QKeyEventTransitiononTransition(self[], event)
proc cQKeyEventTransition_method_callback_onTransition(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQKeyEventTransition](fcQKeyEventTransition_vdata(self))
  let slotval1 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  inst.onTransition(slotval1)

method eventTest*(self: VirtualQKeyEventTransition, event: gen_qcoreevent_types.QEvent): bool {.base.} =
  QKeyEventTransitioneventTest(self[], event)
proc cQKeyEventTransition_method_callback_eventTest(self: pointer, event: pointer): bool {.cdecl.} =
  let inst = cast[VirtualQKeyEventTransition](fcQKeyEventTransition_vdata(self))
  let slotval1 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  var virtualReturn = inst.eventTest(slotval1)
  virtualReturn

method event*(self: VirtualQKeyEventTransition, e: gen_qcoreevent_types.QEvent): bool {.base.} =
  QKeyEventTransitionevent(self[], e)
proc cQKeyEventTransition_method_callback_event(self: pointer, e: pointer): bool {.cdecl.} =
  let inst = cast[VirtualQKeyEventTransition](fcQKeyEventTransition_vdata(self))
  let slotval1 = gen_qcoreevent_types.QEvent(h: e, owned: false)
  var virtualReturn = inst.event(slotval1)
  virtualReturn

method eventFilter*(self: VirtualQKeyEventTransition, watched: gen_qobject_types.QObject, event: gen_qcoreevent_types.QEvent): bool {.base.} =
  QKeyEventTransitioneventFilter(self[], watched, event)
proc cQKeyEventTransition_method_callback_eventFilter(self: pointer, watched: pointer, event: pointer): bool {.cdecl.} =
  let inst = cast[VirtualQKeyEventTransition](fcQKeyEventTransition_vdata(self))
  let slotval1 = gen_qobject_types.QObject(h: watched, owned: false)
  let slotval2 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  var virtualReturn = inst.eventFilter(slotval1, slotval2)
  virtualReturn

method timerEvent*(self: VirtualQKeyEventTransition, event: gen_qcoreevent_types.QTimerEvent): void {.base.} =
  QKeyEventTransitiontimerEvent(self[], event)
proc cQKeyEventTransition_method_callback_timerEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQKeyEventTransition](fcQKeyEventTransition_vdata(self))
  let slotval1 = gen_qcoreevent_types.QTimerEvent(h: event, owned: false)
  inst.timerEvent(slotval1)

method childEvent*(self: VirtualQKeyEventTransition, event: gen_qcoreevent_types.QChildEvent): void {.base.} =
  QKeyEventTransitionchildEvent(self[], event)
proc cQKeyEventTransition_method_callback_childEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQKeyEventTransition](fcQKeyEventTransition_vdata(self))
  let slotval1 = gen_qcoreevent_types.QChildEvent(h: event, owned: false)
  inst.childEvent(slotval1)

method customEvent*(self: VirtualQKeyEventTransition, event: gen_qcoreevent_types.QEvent): void {.base.} =
  QKeyEventTransitioncustomEvent(self[], event)
proc cQKeyEventTransition_method_callback_customEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQKeyEventTransition](fcQKeyEventTransition_vdata(self))
  let slotval1 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  inst.customEvent(slotval1)

method connectNotify*(self: VirtualQKeyEventTransition, signal: gen_qmetaobject_types.QMetaMethod): void {.base.} =
  QKeyEventTransitionconnectNotify(self[], signal)
proc cQKeyEventTransition_method_callback_connectNotify(self: pointer, signal: pointer): void {.cdecl.} =
  let inst = cast[VirtualQKeyEventTransition](fcQKeyEventTransition_vdata(self))
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal, owned: false)
  inst.connectNotify(slotval1)

method disconnectNotify*(self: VirtualQKeyEventTransition, signal: gen_qmetaobject_types.QMetaMethod): void {.base.} =
  QKeyEventTransitiondisconnectNotify(self[], signal)
proc cQKeyEventTransition_method_callback_disconnectNotify(self: pointer, signal: pointer): void {.cdecl.} =
  let inst = cast[VirtualQKeyEventTransition](fcQKeyEventTransition_vdata(self))
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal, owned: false)
  inst.disconnectNotify(slotval1)

proc sender*(self: gen_qkeyeventtransition_types.QKeyEventTransition): gen_qobject_types.QObject =
  gen_qobject_types.QObject(h: fcQKeyEventTransition_protectedbase_sender(self.h), owned: false)

proc senderSignalIndex*(self: gen_qkeyeventtransition_types.QKeyEventTransition): cint =
  fcQKeyEventTransition_protectedbase_senderSignalIndex(self.h)

proc receivers*(self: gen_qkeyeventtransition_types.QKeyEventTransition, signal: cstring): cint =
  fcQKeyEventTransition_protectedbase_receivers(self.h, signal)

proc isSignalConnected*(self: gen_qkeyeventtransition_types.QKeyEventTransition, signal: gen_qmetaobject_types.QMetaMethod): bool =
  fcQKeyEventTransition_protectedbase_isSignalConnected(self.h, signal.h)

proc create*(T: type gen_qkeyeventtransition_types.QKeyEventTransition,
    vtbl: ref QKeyEventTransitionVTable = nil): gen_qkeyeventtransition_types.QKeyEventTransition =
  let vtbl = if vtbl == nil: new QKeyEventTransitionVTable else: vtbl
  GC_ref(vtbl)
  vtbl[].vtbl.destructor = proc(self: pointer) {.cdecl.} =
    let vtbl = cast[ref QKeyEventTransitionVTable](fcQKeyEventTransition_vdata(self))
    GC_unref(vtbl)
  if not isNil(vtbl[].metaObject):
    vtbl[].vtbl.metaObject = cQKeyEventTransition_vtable_callback_metaObject
  if not isNil(vtbl[].metacast):
    vtbl[].vtbl.metacast = cQKeyEventTransition_vtable_callback_metacast
  if not isNil(vtbl[].metacall):
    vtbl[].vtbl.metacall = cQKeyEventTransition_vtable_callback_metacall
  if not isNil(vtbl[].onTransition):
    vtbl[].vtbl.onTransition = cQKeyEventTransition_vtable_callback_onTransition
  if not isNil(vtbl[].eventTest):
    vtbl[].vtbl.eventTest = cQKeyEventTransition_vtable_callback_eventTest
  if not isNil(vtbl[].event):
    vtbl[].vtbl.event = cQKeyEventTransition_vtable_callback_event
  if not isNil(vtbl[].eventFilter):
    vtbl[].vtbl.eventFilter = cQKeyEventTransition_vtable_callback_eventFilter
  if not isNil(vtbl[].timerEvent):
    vtbl[].vtbl.timerEvent = cQKeyEventTransition_vtable_callback_timerEvent
  if not isNil(vtbl[].childEvent):
    vtbl[].vtbl.childEvent = cQKeyEventTransition_vtable_callback_childEvent
  if not isNil(vtbl[].customEvent):
    vtbl[].vtbl.customEvent = cQKeyEventTransition_vtable_callback_customEvent
  if not isNil(vtbl[].connectNotify):
    vtbl[].vtbl.connectNotify = cQKeyEventTransition_vtable_callback_connectNotify
  if not isNil(vtbl[].disconnectNotify):
    vtbl[].vtbl.disconnectNotify = cQKeyEventTransition_vtable_callback_disconnectNotify
  gen_qkeyeventtransition_types.QKeyEventTransition(h: fcQKeyEventTransition_new(addr(vtbl[].vtbl), addr(vtbl[])), owned: true)

proc create*(T: type gen_qkeyeventtransition_types.QKeyEventTransition,
    objectVal: gen_qobject_types.QObject, typeVal: cint, key: cint,
    vtbl: ref QKeyEventTransitionVTable = nil): gen_qkeyeventtransition_types.QKeyEventTransition =
  let vtbl = if vtbl == nil: new QKeyEventTransitionVTable else: vtbl
  GC_ref(vtbl)
  vtbl[].vtbl.destructor = proc(self: pointer) {.cdecl.} =
    let vtbl = cast[ref QKeyEventTransitionVTable](fcQKeyEventTransition_vdata(self))
    GC_unref(vtbl)
  if not isNil(vtbl[].metaObject):
    vtbl[].vtbl.metaObject = cQKeyEventTransition_vtable_callback_metaObject
  if not isNil(vtbl[].metacast):
    vtbl[].vtbl.metacast = cQKeyEventTransition_vtable_callback_metacast
  if not isNil(vtbl[].metacall):
    vtbl[].vtbl.metacall = cQKeyEventTransition_vtable_callback_metacall
  if not isNil(vtbl[].onTransition):
    vtbl[].vtbl.onTransition = cQKeyEventTransition_vtable_callback_onTransition
  if not isNil(vtbl[].eventTest):
    vtbl[].vtbl.eventTest = cQKeyEventTransition_vtable_callback_eventTest
  if not isNil(vtbl[].event):
    vtbl[].vtbl.event = cQKeyEventTransition_vtable_callback_event
  if not isNil(vtbl[].eventFilter):
    vtbl[].vtbl.eventFilter = cQKeyEventTransition_vtable_callback_eventFilter
  if not isNil(vtbl[].timerEvent):
    vtbl[].vtbl.timerEvent = cQKeyEventTransition_vtable_callback_timerEvent
  if not isNil(vtbl[].childEvent):
    vtbl[].vtbl.childEvent = cQKeyEventTransition_vtable_callback_childEvent
  if not isNil(vtbl[].customEvent):
    vtbl[].vtbl.customEvent = cQKeyEventTransition_vtable_callback_customEvent
  if not isNil(vtbl[].connectNotify):
    vtbl[].vtbl.connectNotify = cQKeyEventTransition_vtable_callback_connectNotify
  if not isNil(vtbl[].disconnectNotify):
    vtbl[].vtbl.disconnectNotify = cQKeyEventTransition_vtable_callback_disconnectNotify
  gen_qkeyeventtransition_types.QKeyEventTransition(h: fcQKeyEventTransition_new2(addr(vtbl[].vtbl), addr(vtbl[]), objectVal.h, cint(typeVal), key), owned: true)

proc create*(T: type gen_qkeyeventtransition_types.QKeyEventTransition,
    sourceState: gen_qstate_types.QState,
    vtbl: ref QKeyEventTransitionVTable = nil): gen_qkeyeventtransition_types.QKeyEventTransition =
  let vtbl = if vtbl == nil: new QKeyEventTransitionVTable else: vtbl
  GC_ref(vtbl)
  vtbl[].vtbl.destructor = proc(self: pointer) {.cdecl.} =
    let vtbl = cast[ref QKeyEventTransitionVTable](fcQKeyEventTransition_vdata(self))
    GC_unref(vtbl)
  if not isNil(vtbl[].metaObject):
    vtbl[].vtbl.metaObject = cQKeyEventTransition_vtable_callback_metaObject
  if not isNil(vtbl[].metacast):
    vtbl[].vtbl.metacast = cQKeyEventTransition_vtable_callback_metacast
  if not isNil(vtbl[].metacall):
    vtbl[].vtbl.metacall = cQKeyEventTransition_vtable_callback_metacall
  if not isNil(vtbl[].onTransition):
    vtbl[].vtbl.onTransition = cQKeyEventTransition_vtable_callback_onTransition
  if not isNil(vtbl[].eventTest):
    vtbl[].vtbl.eventTest = cQKeyEventTransition_vtable_callback_eventTest
  if not isNil(vtbl[].event):
    vtbl[].vtbl.event = cQKeyEventTransition_vtable_callback_event
  if not isNil(vtbl[].eventFilter):
    vtbl[].vtbl.eventFilter = cQKeyEventTransition_vtable_callback_eventFilter
  if not isNil(vtbl[].timerEvent):
    vtbl[].vtbl.timerEvent = cQKeyEventTransition_vtable_callback_timerEvent
  if not isNil(vtbl[].childEvent):
    vtbl[].vtbl.childEvent = cQKeyEventTransition_vtable_callback_childEvent
  if not isNil(vtbl[].customEvent):
    vtbl[].vtbl.customEvent = cQKeyEventTransition_vtable_callback_customEvent
  if not isNil(vtbl[].connectNotify):
    vtbl[].vtbl.connectNotify = cQKeyEventTransition_vtable_callback_connectNotify
  if not isNil(vtbl[].disconnectNotify):
    vtbl[].vtbl.disconnectNotify = cQKeyEventTransition_vtable_callback_disconnectNotify
  gen_qkeyeventtransition_types.QKeyEventTransition(h: fcQKeyEventTransition_new3(addr(vtbl[].vtbl), addr(vtbl[]), sourceState.h), owned: true)

proc create*(T: type gen_qkeyeventtransition_types.QKeyEventTransition,
    objectVal: gen_qobject_types.QObject, typeVal: cint, key: cint, sourceState: gen_qstate_types.QState,
    vtbl: ref QKeyEventTransitionVTable = nil): gen_qkeyeventtransition_types.QKeyEventTransition =
  let vtbl = if vtbl == nil: new QKeyEventTransitionVTable else: vtbl
  GC_ref(vtbl)
  vtbl[].vtbl.destructor = proc(self: pointer) {.cdecl.} =
    let vtbl = cast[ref QKeyEventTransitionVTable](fcQKeyEventTransition_vdata(self))
    GC_unref(vtbl)
  if not isNil(vtbl[].metaObject):
    vtbl[].vtbl.metaObject = cQKeyEventTransition_vtable_callback_metaObject
  if not isNil(vtbl[].metacast):
    vtbl[].vtbl.metacast = cQKeyEventTransition_vtable_callback_metacast
  if not isNil(vtbl[].metacall):
    vtbl[].vtbl.metacall = cQKeyEventTransition_vtable_callback_metacall
  if not isNil(vtbl[].onTransition):
    vtbl[].vtbl.onTransition = cQKeyEventTransition_vtable_callback_onTransition
  if not isNil(vtbl[].eventTest):
    vtbl[].vtbl.eventTest = cQKeyEventTransition_vtable_callback_eventTest
  if not isNil(vtbl[].event):
    vtbl[].vtbl.event = cQKeyEventTransition_vtable_callback_event
  if not isNil(vtbl[].eventFilter):
    vtbl[].vtbl.eventFilter = cQKeyEventTransition_vtable_callback_eventFilter
  if not isNil(vtbl[].timerEvent):
    vtbl[].vtbl.timerEvent = cQKeyEventTransition_vtable_callback_timerEvent
  if not isNil(vtbl[].childEvent):
    vtbl[].vtbl.childEvent = cQKeyEventTransition_vtable_callback_childEvent
  if not isNil(vtbl[].customEvent):
    vtbl[].vtbl.customEvent = cQKeyEventTransition_vtable_callback_customEvent
  if not isNil(vtbl[].connectNotify):
    vtbl[].vtbl.connectNotify = cQKeyEventTransition_vtable_callback_connectNotify
  if not isNil(vtbl[].disconnectNotify):
    vtbl[].vtbl.disconnectNotify = cQKeyEventTransition_vtable_callback_disconnectNotify
  gen_qkeyeventtransition_types.QKeyEventTransition(h: fcQKeyEventTransition_new4(addr(vtbl[].vtbl), addr(vtbl[]), objectVal.h, cint(typeVal), key, sourceState.h), owned: true)

const cQKeyEventTransition_mvtbl = cQKeyEventTransitionVTable(
  destructor: proc(self: pointer) {.cdecl.} =
    let inst = cast[ptr typeof(VirtualQKeyEventTransition()[])](self.fcQKeyEventTransition_vtbl())
    inst[].h = nil
    inst[].owned = false,
  metaObject: cQKeyEventTransition_method_callback_metaObject,
  metacast: cQKeyEventTransition_method_callback_metacast,
  metacall: cQKeyEventTransition_method_callback_metacall,
  onTransition: cQKeyEventTransition_method_callback_onTransition,
  eventTest: cQKeyEventTransition_method_callback_eventTest,
  event: cQKeyEventTransition_method_callback_event,
  eventFilter: cQKeyEventTransition_method_callback_eventFilter,
  timerEvent: cQKeyEventTransition_method_callback_timerEvent,
  childEvent: cQKeyEventTransition_method_callback_childEvent,
  customEvent: cQKeyEventTransition_method_callback_customEvent,
  connectNotify: cQKeyEventTransition_method_callback_connectNotify,
  disconnectNotify: cQKeyEventTransition_method_callback_disconnectNotify,
)
proc create*(T: type gen_qkeyeventtransition_types.QKeyEventTransition,
    inst: VirtualQKeyEventTransition) =
  if inst[].h != nil: delete(move(inst[]))
  inst[].h = fcQKeyEventTransition_new(addr(cQKeyEventTransition_mvtbl), addr(inst[]))
  inst[].owned = true

proc create*(T: type gen_qkeyeventtransition_types.QKeyEventTransition,
    objectVal: gen_qobject_types.QObject, typeVal: cint, key: cint,
    inst: VirtualQKeyEventTransition) =
  if inst[].h != nil: delete(move(inst[]))
  inst[].h = fcQKeyEventTransition_new2(addr(cQKeyEventTransition_mvtbl), addr(inst[]), objectVal.h, cint(typeVal), key)
  inst[].owned = true

proc create*(T: type gen_qkeyeventtransition_types.QKeyEventTransition,
    sourceState: gen_qstate_types.QState,
    inst: VirtualQKeyEventTransition) =
  if inst[].h != nil: delete(move(inst[]))
  inst[].h = fcQKeyEventTransition_new3(addr(cQKeyEventTransition_mvtbl), addr(inst[]), sourceState.h)
  inst[].owned = true

proc create*(T: type gen_qkeyeventtransition_types.QKeyEventTransition,
    objectVal: gen_qobject_types.QObject, typeVal: cint, key: cint, sourceState: gen_qstate_types.QState,
    inst: VirtualQKeyEventTransition) =
  if inst[].h != nil: delete(move(inst[]))
  inst[].h = fcQKeyEventTransition_new4(addr(cQKeyEventTransition_mvtbl), addr(inst[]), objectVal.h, cint(typeVal), key, sourceState.h)
  inst[].owned = true

proc staticMetaObject*(_: type gen_qkeyeventtransition_types.QKeyEventTransition): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQKeyEventTransition_staticMetaObject())
