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


{.compile("gen_qmouseeventtransition.cpp", QtWidgetsCFlags).}


import ./gen_qmouseeventtransition_types
export gen_qmouseeventtransition_types

import
  ../QtCore/gen_qcoreevent_types,
  ../QtCore/gen_qeventtransition,
  ../QtCore/gen_qmetaobject_types,
  ../QtCore/gen_qobject_types,
  ../QtCore/gen_qobjectdefs_types,
  ../QtCore/gen_qstate_types,
  ../QtGui/gen_qpainterpath_types
export
  gen_qcoreevent_types,
  gen_qeventtransition,
  gen_qmetaobject_types,
  gen_qobject_types,
  gen_qobjectdefs_types,
  gen_qstate_types,
  gen_qpainterpath_types

type cQMouseEventTransition*{.exportc: "QMouseEventTransition", incompleteStruct.} = object

proc fcQMouseEventTransition_metaObject(self: pointer): pointer {.importc: "QMouseEventTransition_metaObject".}
proc fcQMouseEventTransition_metacast(self: pointer, param1: cstring): pointer {.importc: "QMouseEventTransition_metacast".}
proc fcQMouseEventTransition_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.importc: "QMouseEventTransition_metacall".}
proc fcQMouseEventTransition_tr(s: cstring): struct_miqt_string {.importc: "QMouseEventTransition_tr".}
proc fcQMouseEventTransition_trUtf8(s: cstring): struct_miqt_string {.importc: "QMouseEventTransition_trUtf8".}
proc fcQMouseEventTransition_button(self: pointer): cint {.importc: "QMouseEventTransition_button".}
proc fcQMouseEventTransition_setButton(self: pointer, button: cint): void {.importc: "QMouseEventTransition_setButton".}
proc fcQMouseEventTransition_modifierMask(self: pointer): cint {.importc: "QMouseEventTransition_modifierMask".}
proc fcQMouseEventTransition_setModifierMask(self: pointer, modifiers: cint): void {.importc: "QMouseEventTransition_setModifierMask".}
proc fcQMouseEventTransition_hitTestPath(self: pointer): pointer {.importc: "QMouseEventTransition_hitTestPath".}
proc fcQMouseEventTransition_setHitTestPath(self: pointer, path: pointer): void {.importc: "QMouseEventTransition_setHitTestPath".}
proc fcQMouseEventTransition_tr2(s: cstring, c: cstring): struct_miqt_string {.importc: "QMouseEventTransition_tr2".}
proc fcQMouseEventTransition_tr3(s: cstring, c: cstring, n: cint): struct_miqt_string {.importc: "QMouseEventTransition_tr3".}
proc fcQMouseEventTransition_trUtf82(s: cstring, c: cstring): struct_miqt_string {.importc: "QMouseEventTransition_trUtf82".}
proc fcQMouseEventTransition_trUtf83(s: cstring, c: cstring, n: cint): struct_miqt_string {.importc: "QMouseEventTransition_trUtf83".}
proc fcQMouseEventTransition_vtbl(self: pointer): pointer {.importc: "QMouseEventTransition_vtbl".}
proc fcQMouseEventTransition_vdata(self: pointer): pointer {.importc: "QMouseEventTransition_vdata".}
type cQMouseEventTransitionVTable {.pure.} = object
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
proc fcQMouseEventTransition_virtualbase_metaObject(self: pointer): pointer {.importc: "QMouseEventTransition_virtualbase_metaObject".}
proc fcQMouseEventTransition_virtualbase_metacast(self: pointer, param1: cstring): pointer {.importc: "QMouseEventTransition_virtualbase_metacast".}
proc fcQMouseEventTransition_virtualbase_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.importc: "QMouseEventTransition_virtualbase_metacall".}
proc fcQMouseEventTransition_virtualbase_onTransition(self: pointer, event: pointer): void {.importc: "QMouseEventTransition_virtualbase_onTransition".}
proc fcQMouseEventTransition_virtualbase_eventTest(self: pointer, event: pointer): bool {.importc: "QMouseEventTransition_virtualbase_eventTest".}
proc fcQMouseEventTransition_virtualbase_event(self: pointer, e: pointer): bool {.importc: "QMouseEventTransition_virtualbase_event".}
proc fcQMouseEventTransition_virtualbase_eventFilter(self: pointer, watched: pointer, event: pointer): bool {.importc: "QMouseEventTransition_virtualbase_eventFilter".}
proc fcQMouseEventTransition_virtualbase_timerEvent(self: pointer, event: pointer): void {.importc: "QMouseEventTransition_virtualbase_timerEvent".}
proc fcQMouseEventTransition_virtualbase_childEvent(self: pointer, event: pointer): void {.importc: "QMouseEventTransition_virtualbase_childEvent".}
proc fcQMouseEventTransition_virtualbase_customEvent(self: pointer, event: pointer): void {.importc: "QMouseEventTransition_virtualbase_customEvent".}
proc fcQMouseEventTransition_virtualbase_connectNotify(self: pointer, signal: pointer): void {.importc: "QMouseEventTransition_virtualbase_connectNotify".}
proc fcQMouseEventTransition_virtualbase_disconnectNotify(self: pointer, signal: pointer): void {.importc: "QMouseEventTransition_virtualbase_disconnectNotify".}
proc fcQMouseEventTransition_protectedbase_sender(self: pointer): pointer {.importc: "QMouseEventTransition_protectedbase_sender".}
proc fcQMouseEventTransition_protectedbase_senderSignalIndex(self: pointer): cint {.importc: "QMouseEventTransition_protectedbase_senderSignalIndex".}
proc fcQMouseEventTransition_protectedbase_receivers(self: pointer, signal: cstring): cint {.importc: "QMouseEventTransition_protectedbase_receivers".}
proc fcQMouseEventTransition_protectedbase_isSignalConnected(self: pointer, signal: pointer): bool {.importc: "QMouseEventTransition_protectedbase_isSignalConnected".}
proc fcQMouseEventTransition_new(vtbl, vdata: pointer): ptr cQMouseEventTransition {.importc: "QMouseEventTransition_new".}
proc fcQMouseEventTransition_new2(vtbl, vdata: pointer, objectVal: pointer, typeVal: cint, button: cint): ptr cQMouseEventTransition {.importc: "QMouseEventTransition_new2".}
proc fcQMouseEventTransition_new3(vtbl, vdata: pointer, sourceState: pointer): ptr cQMouseEventTransition {.importc: "QMouseEventTransition_new3".}
proc fcQMouseEventTransition_new4(vtbl, vdata: pointer, objectVal: pointer, typeVal: cint, button: cint, sourceState: pointer): ptr cQMouseEventTransition {.importc: "QMouseEventTransition_new4".}
proc fcQMouseEventTransition_staticMetaObject(): pointer {.importc: "QMouseEventTransition_staticMetaObject".}

proc metaObject*(self: gen_qmouseeventtransition_types.QMouseEventTransition): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQMouseEventTransition_metaObject(self.h), owned: false)

proc metacast*(self: gen_qmouseeventtransition_types.QMouseEventTransition, param1: cstring): pointer =
  fcQMouseEventTransition_metacast(self.h, param1)

proc metacall*(self: gen_qmouseeventtransition_types.QMouseEventTransition, param1: cint, param2: cint, param3: pointer): cint =
  fcQMouseEventTransition_metacall(self.h, cint(param1), param2, param3)

proc tr*(_: type gen_qmouseeventtransition_types.QMouseEventTransition, s: cstring): string =
  let v_ms = fcQMouseEventTransition_tr(s)
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

proc trUtf8*(_: type gen_qmouseeventtransition_types.QMouseEventTransition, s: cstring): string =
  let v_ms = fcQMouseEventTransition_trUtf8(s)
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

proc button*(self: gen_qmouseeventtransition_types.QMouseEventTransition): cint =
  cint(fcQMouseEventTransition_button(self.h))

proc setButton*(self: gen_qmouseeventtransition_types.QMouseEventTransition, button: cint): void =
  fcQMouseEventTransition_setButton(self.h, cint(button))

proc modifierMask*(self: gen_qmouseeventtransition_types.QMouseEventTransition): cint =
  cint(fcQMouseEventTransition_modifierMask(self.h))

proc setModifierMask*(self: gen_qmouseeventtransition_types.QMouseEventTransition, modifiers: cint): void =
  fcQMouseEventTransition_setModifierMask(self.h, cint(modifiers))

proc hitTestPath*(self: gen_qmouseeventtransition_types.QMouseEventTransition): gen_qpainterpath_types.QPainterPath =
  gen_qpainterpath_types.QPainterPath(h: fcQMouseEventTransition_hitTestPath(self.h), owned: true)

proc setHitTestPath*(self: gen_qmouseeventtransition_types.QMouseEventTransition, path: gen_qpainterpath_types.QPainterPath): void =
  fcQMouseEventTransition_setHitTestPath(self.h, path.h)

proc tr*(_: type gen_qmouseeventtransition_types.QMouseEventTransition, s: cstring, c: cstring): string =
  let v_ms = fcQMouseEventTransition_tr2(s, c)
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

proc tr*(_: type gen_qmouseeventtransition_types.QMouseEventTransition, s: cstring, c: cstring, n: cint): string =
  let v_ms = fcQMouseEventTransition_tr3(s, c, n)
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

proc trUtf8*(_: type gen_qmouseeventtransition_types.QMouseEventTransition, s: cstring, c: cstring): string =
  let v_ms = fcQMouseEventTransition_trUtf82(s, c)
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

proc trUtf8*(_: type gen_qmouseeventtransition_types.QMouseEventTransition, s: cstring, c: cstring, n: cint): string =
  let v_ms = fcQMouseEventTransition_trUtf83(s, c, n)
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

type QMouseEventTransitionmetaObjectProc* = proc(self: QMouseEventTransition): gen_qobjectdefs_types.QMetaObject {.raises: [], gcsafe.}
type QMouseEventTransitionmetacastProc* = proc(self: QMouseEventTransition, param1: cstring): pointer {.raises: [], gcsafe.}
type QMouseEventTransitionmetacallProc* = proc(self: QMouseEventTransition, param1: cint, param2: cint, param3: pointer): cint {.raises: [], gcsafe.}
type QMouseEventTransitiononTransitionProc* = proc(self: QMouseEventTransition, event: gen_qcoreevent_types.QEvent): void {.raises: [], gcsafe.}
type QMouseEventTransitioneventTestProc* = proc(self: QMouseEventTransition, event: gen_qcoreevent_types.QEvent): bool {.raises: [], gcsafe.}
type QMouseEventTransitioneventProc* = proc(self: QMouseEventTransition, e: gen_qcoreevent_types.QEvent): bool {.raises: [], gcsafe.}
type QMouseEventTransitioneventFilterProc* = proc(self: QMouseEventTransition, watched: gen_qobject_types.QObject, event: gen_qcoreevent_types.QEvent): bool {.raises: [], gcsafe.}
type QMouseEventTransitiontimerEventProc* = proc(self: QMouseEventTransition, event: gen_qcoreevent_types.QTimerEvent): void {.raises: [], gcsafe.}
type QMouseEventTransitionchildEventProc* = proc(self: QMouseEventTransition, event: gen_qcoreevent_types.QChildEvent): void {.raises: [], gcsafe.}
type QMouseEventTransitioncustomEventProc* = proc(self: QMouseEventTransition, event: gen_qcoreevent_types.QEvent): void {.raises: [], gcsafe.}
type QMouseEventTransitionconnectNotifyProc* = proc(self: QMouseEventTransition, signal: gen_qmetaobject_types.QMetaMethod): void {.raises: [], gcsafe.}
type QMouseEventTransitiondisconnectNotifyProc* = proc(self: QMouseEventTransition, signal: gen_qmetaobject_types.QMetaMethod): void {.raises: [], gcsafe.}
type QMouseEventTransitionVTable* {.inheritable, pure.} = object
  vtbl: cQMouseEventTransitionVTable
  metaObject*: QMouseEventTransitionmetaObjectProc
  metacast*: QMouseEventTransitionmetacastProc
  metacall*: QMouseEventTransitionmetacallProc
  onTransition*: QMouseEventTransitiononTransitionProc
  eventTest*: QMouseEventTransitioneventTestProc
  event*: QMouseEventTransitioneventProc
  eventFilter*: QMouseEventTransitioneventFilterProc
  timerEvent*: QMouseEventTransitiontimerEventProc
  childEvent*: QMouseEventTransitionchildEventProc
  customEvent*: QMouseEventTransitioncustomEventProc
  connectNotify*: QMouseEventTransitionconnectNotifyProc
  disconnectNotify*: QMouseEventTransitiondisconnectNotifyProc
proc QMouseEventTransitionmetaObject*(self: gen_qmouseeventtransition_types.QMouseEventTransition): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQMouseEventTransition_virtualbase_metaObject(self.h), owned: false)

proc cQMouseEventTransition_vtable_callback_metaObject(self: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QMouseEventTransitionVTable](fcQMouseEventTransition_vdata(self))
  let self = QMouseEventTransition(h: self)
  var virtualReturn = vtbl[].metaObject(self)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc QMouseEventTransitionmetacast*(self: gen_qmouseeventtransition_types.QMouseEventTransition, param1: cstring): pointer =
  fcQMouseEventTransition_virtualbase_metacast(self.h, param1)

proc cQMouseEventTransition_vtable_callback_metacast(self: pointer, param1: cstring): pointer {.cdecl.} =
  let vtbl = cast[ptr QMouseEventTransitionVTable](fcQMouseEventTransition_vdata(self))
  let self = QMouseEventTransition(h: self)
  let slotval1 = (param1)
  var virtualReturn = vtbl[].metacast(self, slotval1)
  virtualReturn

proc QMouseEventTransitionmetacall*(self: gen_qmouseeventtransition_types.QMouseEventTransition, param1: cint, param2: cint, param3: pointer): cint =
  fcQMouseEventTransition_virtualbase_metacall(self.h, cint(param1), param2, param3)

proc cQMouseEventTransition_vtable_callback_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.cdecl.} =
  let vtbl = cast[ptr QMouseEventTransitionVTable](fcQMouseEventTransition_vdata(self))
  let self = QMouseEventTransition(h: self)
  let slotval1 = cint(param1)
  let slotval2 = param2
  let slotval3 = param3
  var virtualReturn = vtbl[].metacall(self, slotval1, slotval2, slotval3)
  virtualReturn

proc QMouseEventTransitiononTransition*(self: gen_qmouseeventtransition_types.QMouseEventTransition, event: gen_qcoreevent_types.QEvent): void =
  fcQMouseEventTransition_virtualbase_onTransition(self.h, event.h)

proc cQMouseEventTransition_vtable_callback_onTransition(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QMouseEventTransitionVTable](fcQMouseEventTransition_vdata(self))
  let self = QMouseEventTransition(h: self)
  let slotval1 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  vtbl[].onTransition(self, slotval1)

proc QMouseEventTransitioneventTest*(self: gen_qmouseeventtransition_types.QMouseEventTransition, event: gen_qcoreevent_types.QEvent): bool =
  fcQMouseEventTransition_virtualbase_eventTest(self.h, event.h)

proc cQMouseEventTransition_vtable_callback_eventTest(self: pointer, event: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QMouseEventTransitionVTable](fcQMouseEventTransition_vdata(self))
  let self = QMouseEventTransition(h: self)
  let slotval1 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  var virtualReturn = vtbl[].eventTest(self, slotval1)
  virtualReturn

proc QMouseEventTransitionevent*(self: gen_qmouseeventtransition_types.QMouseEventTransition, e: gen_qcoreevent_types.QEvent): bool =
  fcQMouseEventTransition_virtualbase_event(self.h, e.h)

proc cQMouseEventTransition_vtable_callback_event(self: pointer, e: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QMouseEventTransitionVTable](fcQMouseEventTransition_vdata(self))
  let self = QMouseEventTransition(h: self)
  let slotval1 = gen_qcoreevent_types.QEvent(h: e, owned: false)
  var virtualReturn = vtbl[].event(self, slotval1)
  virtualReturn

proc QMouseEventTransitioneventFilter*(self: gen_qmouseeventtransition_types.QMouseEventTransition, watched: gen_qobject_types.QObject, event: gen_qcoreevent_types.QEvent): bool =
  fcQMouseEventTransition_virtualbase_eventFilter(self.h, watched.h, event.h)

proc cQMouseEventTransition_vtable_callback_eventFilter(self: pointer, watched: pointer, event: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QMouseEventTransitionVTable](fcQMouseEventTransition_vdata(self))
  let self = QMouseEventTransition(h: self)
  let slotval1 = gen_qobject_types.QObject(h: watched, owned: false)
  let slotval2 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  var virtualReturn = vtbl[].eventFilter(self, slotval1, slotval2)
  virtualReturn

proc QMouseEventTransitiontimerEvent*(self: gen_qmouseeventtransition_types.QMouseEventTransition, event: gen_qcoreevent_types.QTimerEvent): void =
  fcQMouseEventTransition_virtualbase_timerEvent(self.h, event.h)

proc cQMouseEventTransition_vtable_callback_timerEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QMouseEventTransitionVTable](fcQMouseEventTransition_vdata(self))
  let self = QMouseEventTransition(h: self)
  let slotval1 = gen_qcoreevent_types.QTimerEvent(h: event, owned: false)
  vtbl[].timerEvent(self, slotval1)

proc QMouseEventTransitionchildEvent*(self: gen_qmouseeventtransition_types.QMouseEventTransition, event: gen_qcoreevent_types.QChildEvent): void =
  fcQMouseEventTransition_virtualbase_childEvent(self.h, event.h)

proc cQMouseEventTransition_vtable_callback_childEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QMouseEventTransitionVTable](fcQMouseEventTransition_vdata(self))
  let self = QMouseEventTransition(h: self)
  let slotval1 = gen_qcoreevent_types.QChildEvent(h: event, owned: false)
  vtbl[].childEvent(self, slotval1)

proc QMouseEventTransitioncustomEvent*(self: gen_qmouseeventtransition_types.QMouseEventTransition, event: gen_qcoreevent_types.QEvent): void =
  fcQMouseEventTransition_virtualbase_customEvent(self.h, event.h)

proc cQMouseEventTransition_vtable_callback_customEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QMouseEventTransitionVTable](fcQMouseEventTransition_vdata(self))
  let self = QMouseEventTransition(h: self)
  let slotval1 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  vtbl[].customEvent(self, slotval1)

proc QMouseEventTransitionconnectNotify*(self: gen_qmouseeventtransition_types.QMouseEventTransition, signal: gen_qmetaobject_types.QMetaMethod): void =
  fcQMouseEventTransition_virtualbase_connectNotify(self.h, signal.h)

proc cQMouseEventTransition_vtable_callback_connectNotify(self: pointer, signal: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QMouseEventTransitionVTable](fcQMouseEventTransition_vdata(self))
  let self = QMouseEventTransition(h: self)
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal, owned: false)
  vtbl[].connectNotify(self, slotval1)

proc QMouseEventTransitiondisconnectNotify*(self: gen_qmouseeventtransition_types.QMouseEventTransition, signal: gen_qmetaobject_types.QMetaMethod): void =
  fcQMouseEventTransition_virtualbase_disconnectNotify(self.h, signal.h)

proc cQMouseEventTransition_vtable_callback_disconnectNotify(self: pointer, signal: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QMouseEventTransitionVTable](fcQMouseEventTransition_vdata(self))
  let self = QMouseEventTransition(h: self)
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal, owned: false)
  vtbl[].disconnectNotify(self, slotval1)

type VirtualQMouseEventTransition* {.inheritable.} = ref object of QMouseEventTransition
  vtbl*: cQMouseEventTransitionVTable
method metaObject*(self: VirtualQMouseEventTransition): gen_qobjectdefs_types.QMetaObject {.base.} =
  QMouseEventTransitionmetaObject(self[])
proc cQMouseEventTransition_method_callback_metaObject(self: pointer): pointer {.cdecl.} =
  let inst = cast[VirtualQMouseEventTransition](fcQMouseEventTransition_vdata(self))
  var virtualReturn = inst.metaObject()
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

method metacast*(self: VirtualQMouseEventTransition, param1: cstring): pointer {.base.} =
  QMouseEventTransitionmetacast(self[], param1)
proc cQMouseEventTransition_method_callback_metacast(self: pointer, param1: cstring): pointer {.cdecl.} =
  let inst = cast[VirtualQMouseEventTransition](fcQMouseEventTransition_vdata(self))
  let slotval1 = (param1)
  var virtualReturn = inst.metacast(slotval1)
  virtualReturn

method metacall*(self: VirtualQMouseEventTransition, param1: cint, param2: cint, param3: pointer): cint {.base.} =
  QMouseEventTransitionmetacall(self[], param1, param2, param3)
proc cQMouseEventTransition_method_callback_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.cdecl.} =
  let inst = cast[VirtualQMouseEventTransition](fcQMouseEventTransition_vdata(self))
  let slotval1 = cint(param1)
  let slotval2 = param2
  let slotval3 = param3
  var virtualReturn = inst.metacall(slotval1, slotval2, slotval3)
  virtualReturn

method onTransition*(self: VirtualQMouseEventTransition, event: gen_qcoreevent_types.QEvent): void {.base.} =
  QMouseEventTransitiononTransition(self[], event)
proc cQMouseEventTransition_method_callback_onTransition(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQMouseEventTransition](fcQMouseEventTransition_vdata(self))
  let slotval1 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  inst.onTransition(slotval1)

method eventTest*(self: VirtualQMouseEventTransition, event: gen_qcoreevent_types.QEvent): bool {.base.} =
  QMouseEventTransitioneventTest(self[], event)
proc cQMouseEventTransition_method_callback_eventTest(self: pointer, event: pointer): bool {.cdecl.} =
  let inst = cast[VirtualQMouseEventTransition](fcQMouseEventTransition_vdata(self))
  let slotval1 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  var virtualReturn = inst.eventTest(slotval1)
  virtualReturn

method event*(self: VirtualQMouseEventTransition, e: gen_qcoreevent_types.QEvent): bool {.base.} =
  QMouseEventTransitionevent(self[], e)
proc cQMouseEventTransition_method_callback_event(self: pointer, e: pointer): bool {.cdecl.} =
  let inst = cast[VirtualQMouseEventTransition](fcQMouseEventTransition_vdata(self))
  let slotval1 = gen_qcoreevent_types.QEvent(h: e, owned: false)
  var virtualReturn = inst.event(slotval1)
  virtualReturn

method eventFilter*(self: VirtualQMouseEventTransition, watched: gen_qobject_types.QObject, event: gen_qcoreevent_types.QEvent): bool {.base.} =
  QMouseEventTransitioneventFilter(self[], watched, event)
proc cQMouseEventTransition_method_callback_eventFilter(self: pointer, watched: pointer, event: pointer): bool {.cdecl.} =
  let inst = cast[VirtualQMouseEventTransition](fcQMouseEventTransition_vdata(self))
  let slotval1 = gen_qobject_types.QObject(h: watched, owned: false)
  let slotval2 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  var virtualReturn = inst.eventFilter(slotval1, slotval2)
  virtualReturn

method timerEvent*(self: VirtualQMouseEventTransition, event: gen_qcoreevent_types.QTimerEvent): void {.base.} =
  QMouseEventTransitiontimerEvent(self[], event)
proc cQMouseEventTransition_method_callback_timerEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQMouseEventTransition](fcQMouseEventTransition_vdata(self))
  let slotval1 = gen_qcoreevent_types.QTimerEvent(h: event, owned: false)
  inst.timerEvent(slotval1)

method childEvent*(self: VirtualQMouseEventTransition, event: gen_qcoreevent_types.QChildEvent): void {.base.} =
  QMouseEventTransitionchildEvent(self[], event)
proc cQMouseEventTransition_method_callback_childEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQMouseEventTransition](fcQMouseEventTransition_vdata(self))
  let slotval1 = gen_qcoreevent_types.QChildEvent(h: event, owned: false)
  inst.childEvent(slotval1)

method customEvent*(self: VirtualQMouseEventTransition, event: gen_qcoreevent_types.QEvent): void {.base.} =
  QMouseEventTransitioncustomEvent(self[], event)
proc cQMouseEventTransition_method_callback_customEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQMouseEventTransition](fcQMouseEventTransition_vdata(self))
  let slotval1 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  inst.customEvent(slotval1)

method connectNotify*(self: VirtualQMouseEventTransition, signal: gen_qmetaobject_types.QMetaMethod): void {.base.} =
  QMouseEventTransitionconnectNotify(self[], signal)
proc cQMouseEventTransition_method_callback_connectNotify(self: pointer, signal: pointer): void {.cdecl.} =
  let inst = cast[VirtualQMouseEventTransition](fcQMouseEventTransition_vdata(self))
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal, owned: false)
  inst.connectNotify(slotval1)

method disconnectNotify*(self: VirtualQMouseEventTransition, signal: gen_qmetaobject_types.QMetaMethod): void {.base.} =
  QMouseEventTransitiondisconnectNotify(self[], signal)
proc cQMouseEventTransition_method_callback_disconnectNotify(self: pointer, signal: pointer): void {.cdecl.} =
  let inst = cast[VirtualQMouseEventTransition](fcQMouseEventTransition_vdata(self))
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal, owned: false)
  inst.disconnectNotify(slotval1)

proc sender*(self: gen_qmouseeventtransition_types.QMouseEventTransition): gen_qobject_types.QObject =
  gen_qobject_types.QObject(h: fcQMouseEventTransition_protectedbase_sender(self.h), owned: false)

proc senderSignalIndex*(self: gen_qmouseeventtransition_types.QMouseEventTransition): cint =
  fcQMouseEventTransition_protectedbase_senderSignalIndex(self.h)

proc receivers*(self: gen_qmouseeventtransition_types.QMouseEventTransition, signal: cstring): cint =
  fcQMouseEventTransition_protectedbase_receivers(self.h, signal)

proc isSignalConnected*(self: gen_qmouseeventtransition_types.QMouseEventTransition, signal: gen_qmetaobject_types.QMetaMethod): bool =
  fcQMouseEventTransition_protectedbase_isSignalConnected(self.h, signal.h)

proc create*(T: type gen_qmouseeventtransition_types.QMouseEventTransition,
    vtbl: ref QMouseEventTransitionVTable = nil): gen_qmouseeventtransition_types.QMouseEventTransition =
  let vtbl = if vtbl == nil: new QMouseEventTransitionVTable else: vtbl
  GC_ref(vtbl)
  vtbl[].vtbl.destructor = proc(self: pointer) {.cdecl.} =
    let vtbl = cast[ref QMouseEventTransitionVTable](fcQMouseEventTransition_vdata(self))
    GC_unref(vtbl)
  if not isNil(vtbl[].metaObject):
    vtbl[].vtbl.metaObject = cQMouseEventTransition_vtable_callback_metaObject
  if not isNil(vtbl[].metacast):
    vtbl[].vtbl.metacast = cQMouseEventTransition_vtable_callback_metacast
  if not isNil(vtbl[].metacall):
    vtbl[].vtbl.metacall = cQMouseEventTransition_vtable_callback_metacall
  if not isNil(vtbl[].onTransition):
    vtbl[].vtbl.onTransition = cQMouseEventTransition_vtable_callback_onTransition
  if not isNil(vtbl[].eventTest):
    vtbl[].vtbl.eventTest = cQMouseEventTransition_vtable_callback_eventTest
  if not isNil(vtbl[].event):
    vtbl[].vtbl.event = cQMouseEventTransition_vtable_callback_event
  if not isNil(vtbl[].eventFilter):
    vtbl[].vtbl.eventFilter = cQMouseEventTransition_vtable_callback_eventFilter
  if not isNil(vtbl[].timerEvent):
    vtbl[].vtbl.timerEvent = cQMouseEventTransition_vtable_callback_timerEvent
  if not isNil(vtbl[].childEvent):
    vtbl[].vtbl.childEvent = cQMouseEventTransition_vtable_callback_childEvent
  if not isNil(vtbl[].customEvent):
    vtbl[].vtbl.customEvent = cQMouseEventTransition_vtable_callback_customEvent
  if not isNil(vtbl[].connectNotify):
    vtbl[].vtbl.connectNotify = cQMouseEventTransition_vtable_callback_connectNotify
  if not isNil(vtbl[].disconnectNotify):
    vtbl[].vtbl.disconnectNotify = cQMouseEventTransition_vtable_callback_disconnectNotify
  gen_qmouseeventtransition_types.QMouseEventTransition(h: fcQMouseEventTransition_new(addr(vtbl[].vtbl), addr(vtbl[])), owned: true)

proc create*(T: type gen_qmouseeventtransition_types.QMouseEventTransition,
    objectVal: gen_qobject_types.QObject, typeVal: cint, button: cint,
    vtbl: ref QMouseEventTransitionVTable = nil): gen_qmouseeventtransition_types.QMouseEventTransition =
  let vtbl = if vtbl == nil: new QMouseEventTransitionVTable else: vtbl
  GC_ref(vtbl)
  vtbl[].vtbl.destructor = proc(self: pointer) {.cdecl.} =
    let vtbl = cast[ref QMouseEventTransitionVTable](fcQMouseEventTransition_vdata(self))
    GC_unref(vtbl)
  if not isNil(vtbl[].metaObject):
    vtbl[].vtbl.metaObject = cQMouseEventTransition_vtable_callback_metaObject
  if not isNil(vtbl[].metacast):
    vtbl[].vtbl.metacast = cQMouseEventTransition_vtable_callback_metacast
  if not isNil(vtbl[].metacall):
    vtbl[].vtbl.metacall = cQMouseEventTransition_vtable_callback_metacall
  if not isNil(vtbl[].onTransition):
    vtbl[].vtbl.onTransition = cQMouseEventTransition_vtable_callback_onTransition
  if not isNil(vtbl[].eventTest):
    vtbl[].vtbl.eventTest = cQMouseEventTransition_vtable_callback_eventTest
  if not isNil(vtbl[].event):
    vtbl[].vtbl.event = cQMouseEventTransition_vtable_callback_event
  if not isNil(vtbl[].eventFilter):
    vtbl[].vtbl.eventFilter = cQMouseEventTransition_vtable_callback_eventFilter
  if not isNil(vtbl[].timerEvent):
    vtbl[].vtbl.timerEvent = cQMouseEventTransition_vtable_callback_timerEvent
  if not isNil(vtbl[].childEvent):
    vtbl[].vtbl.childEvent = cQMouseEventTransition_vtable_callback_childEvent
  if not isNil(vtbl[].customEvent):
    vtbl[].vtbl.customEvent = cQMouseEventTransition_vtable_callback_customEvent
  if not isNil(vtbl[].connectNotify):
    vtbl[].vtbl.connectNotify = cQMouseEventTransition_vtable_callback_connectNotify
  if not isNil(vtbl[].disconnectNotify):
    vtbl[].vtbl.disconnectNotify = cQMouseEventTransition_vtable_callback_disconnectNotify
  gen_qmouseeventtransition_types.QMouseEventTransition(h: fcQMouseEventTransition_new2(addr(vtbl[].vtbl), addr(vtbl[]), objectVal.h, cint(typeVal), cint(button)), owned: true)

proc create*(T: type gen_qmouseeventtransition_types.QMouseEventTransition,
    sourceState: gen_qstate_types.QState,
    vtbl: ref QMouseEventTransitionVTable = nil): gen_qmouseeventtransition_types.QMouseEventTransition =
  let vtbl = if vtbl == nil: new QMouseEventTransitionVTable else: vtbl
  GC_ref(vtbl)
  vtbl[].vtbl.destructor = proc(self: pointer) {.cdecl.} =
    let vtbl = cast[ref QMouseEventTransitionVTable](fcQMouseEventTransition_vdata(self))
    GC_unref(vtbl)
  if not isNil(vtbl[].metaObject):
    vtbl[].vtbl.metaObject = cQMouseEventTransition_vtable_callback_metaObject
  if not isNil(vtbl[].metacast):
    vtbl[].vtbl.metacast = cQMouseEventTransition_vtable_callback_metacast
  if not isNil(vtbl[].metacall):
    vtbl[].vtbl.metacall = cQMouseEventTransition_vtable_callback_metacall
  if not isNil(vtbl[].onTransition):
    vtbl[].vtbl.onTransition = cQMouseEventTransition_vtable_callback_onTransition
  if not isNil(vtbl[].eventTest):
    vtbl[].vtbl.eventTest = cQMouseEventTransition_vtable_callback_eventTest
  if not isNil(vtbl[].event):
    vtbl[].vtbl.event = cQMouseEventTransition_vtable_callback_event
  if not isNil(vtbl[].eventFilter):
    vtbl[].vtbl.eventFilter = cQMouseEventTransition_vtable_callback_eventFilter
  if not isNil(vtbl[].timerEvent):
    vtbl[].vtbl.timerEvent = cQMouseEventTransition_vtable_callback_timerEvent
  if not isNil(vtbl[].childEvent):
    vtbl[].vtbl.childEvent = cQMouseEventTransition_vtable_callback_childEvent
  if not isNil(vtbl[].customEvent):
    vtbl[].vtbl.customEvent = cQMouseEventTransition_vtable_callback_customEvent
  if not isNil(vtbl[].connectNotify):
    vtbl[].vtbl.connectNotify = cQMouseEventTransition_vtable_callback_connectNotify
  if not isNil(vtbl[].disconnectNotify):
    vtbl[].vtbl.disconnectNotify = cQMouseEventTransition_vtable_callback_disconnectNotify
  gen_qmouseeventtransition_types.QMouseEventTransition(h: fcQMouseEventTransition_new3(addr(vtbl[].vtbl), addr(vtbl[]), sourceState.h), owned: true)

proc create*(T: type gen_qmouseeventtransition_types.QMouseEventTransition,
    objectVal: gen_qobject_types.QObject, typeVal: cint, button: cint, sourceState: gen_qstate_types.QState,
    vtbl: ref QMouseEventTransitionVTable = nil): gen_qmouseeventtransition_types.QMouseEventTransition =
  let vtbl = if vtbl == nil: new QMouseEventTransitionVTable else: vtbl
  GC_ref(vtbl)
  vtbl[].vtbl.destructor = proc(self: pointer) {.cdecl.} =
    let vtbl = cast[ref QMouseEventTransitionVTable](fcQMouseEventTransition_vdata(self))
    GC_unref(vtbl)
  if not isNil(vtbl[].metaObject):
    vtbl[].vtbl.metaObject = cQMouseEventTransition_vtable_callback_metaObject
  if not isNil(vtbl[].metacast):
    vtbl[].vtbl.metacast = cQMouseEventTransition_vtable_callback_metacast
  if not isNil(vtbl[].metacall):
    vtbl[].vtbl.metacall = cQMouseEventTransition_vtable_callback_metacall
  if not isNil(vtbl[].onTransition):
    vtbl[].vtbl.onTransition = cQMouseEventTransition_vtable_callback_onTransition
  if not isNil(vtbl[].eventTest):
    vtbl[].vtbl.eventTest = cQMouseEventTransition_vtable_callback_eventTest
  if not isNil(vtbl[].event):
    vtbl[].vtbl.event = cQMouseEventTransition_vtable_callback_event
  if not isNil(vtbl[].eventFilter):
    vtbl[].vtbl.eventFilter = cQMouseEventTransition_vtable_callback_eventFilter
  if not isNil(vtbl[].timerEvent):
    vtbl[].vtbl.timerEvent = cQMouseEventTransition_vtable_callback_timerEvent
  if not isNil(vtbl[].childEvent):
    vtbl[].vtbl.childEvent = cQMouseEventTransition_vtable_callback_childEvent
  if not isNil(vtbl[].customEvent):
    vtbl[].vtbl.customEvent = cQMouseEventTransition_vtable_callback_customEvent
  if not isNil(vtbl[].connectNotify):
    vtbl[].vtbl.connectNotify = cQMouseEventTransition_vtable_callback_connectNotify
  if not isNil(vtbl[].disconnectNotify):
    vtbl[].vtbl.disconnectNotify = cQMouseEventTransition_vtable_callback_disconnectNotify
  gen_qmouseeventtransition_types.QMouseEventTransition(h: fcQMouseEventTransition_new4(addr(vtbl[].vtbl), addr(vtbl[]), objectVal.h, cint(typeVal), cint(button), sourceState.h), owned: true)

const cQMouseEventTransition_mvtbl = cQMouseEventTransitionVTable(
  destructor: proc(self: pointer) {.cdecl.} =
    let inst = cast[ptr typeof(VirtualQMouseEventTransition()[])](self.fcQMouseEventTransition_vtbl())
    inst[].h = nil
    inst[].owned = false,
  metaObject: cQMouseEventTransition_method_callback_metaObject,
  metacast: cQMouseEventTransition_method_callback_metacast,
  metacall: cQMouseEventTransition_method_callback_metacall,
  onTransition: cQMouseEventTransition_method_callback_onTransition,
  eventTest: cQMouseEventTransition_method_callback_eventTest,
  event: cQMouseEventTransition_method_callback_event,
  eventFilter: cQMouseEventTransition_method_callback_eventFilter,
  timerEvent: cQMouseEventTransition_method_callback_timerEvent,
  childEvent: cQMouseEventTransition_method_callback_childEvent,
  customEvent: cQMouseEventTransition_method_callback_customEvent,
  connectNotify: cQMouseEventTransition_method_callback_connectNotify,
  disconnectNotify: cQMouseEventTransition_method_callback_disconnectNotify,
)
proc create*(T: type gen_qmouseeventtransition_types.QMouseEventTransition,
    inst: VirtualQMouseEventTransition) =
  if inst[].h != nil: delete(move(inst[]))
  inst[].h = fcQMouseEventTransition_new(addr(cQMouseEventTransition_mvtbl), addr(inst[]))
  inst[].owned = true

proc create*(T: type gen_qmouseeventtransition_types.QMouseEventTransition,
    objectVal: gen_qobject_types.QObject, typeVal: cint, button: cint,
    inst: VirtualQMouseEventTransition) =
  if inst[].h != nil: delete(move(inst[]))
  inst[].h = fcQMouseEventTransition_new2(addr(cQMouseEventTransition_mvtbl), addr(inst[]), objectVal.h, cint(typeVal), cint(button))
  inst[].owned = true

proc create*(T: type gen_qmouseeventtransition_types.QMouseEventTransition,
    sourceState: gen_qstate_types.QState,
    inst: VirtualQMouseEventTransition) =
  if inst[].h != nil: delete(move(inst[]))
  inst[].h = fcQMouseEventTransition_new3(addr(cQMouseEventTransition_mvtbl), addr(inst[]), sourceState.h)
  inst[].owned = true

proc create*(T: type gen_qmouseeventtransition_types.QMouseEventTransition,
    objectVal: gen_qobject_types.QObject, typeVal: cint, button: cint, sourceState: gen_qstate_types.QState,
    inst: VirtualQMouseEventTransition) =
  if inst[].h != nil: delete(move(inst[]))
  inst[].h = fcQMouseEventTransition_new4(addr(cQMouseEventTransition_mvtbl), addr(inst[]), objectVal.h, cint(typeVal), cint(button), sourceState.h)
  inst[].owned = true

proc staticMetaObject*(_: type gen_qmouseeventtransition_types.QMouseEventTransition): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQMouseEventTransition_staticMetaObject())
