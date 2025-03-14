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


{.compile("gen_qabstracttransition.cpp", QtCoreCFlags).}


type QAbstractTransitionTransitionTypeEnum* = distinct cint
template ExternalTransition*(_: type QAbstractTransitionTransitionTypeEnum): untyped = 0
template InternalTransition*(_: type QAbstractTransitionTransitionTypeEnum): untyped = 1


import ./gen_qabstracttransition_types
export gen_qabstracttransition_types

import
  ./gen_qabstractanimation_types,
  ./gen_qabstractstate_types,
  ./gen_qcoreevent_types,
  ./gen_qmetaobject_types,
  ./gen_qobject,
  ./gen_qobjectdefs_types,
  ./gen_qstate_types,
  ./gen_qstatemachine_types
export
  gen_qabstractanimation_types,
  gen_qabstractstate_types,
  gen_qcoreevent_types,
  gen_qmetaobject_types,
  gen_qobject,
  gen_qobjectdefs_types,
  gen_qstate_types,
  gen_qstatemachine_types

type cQAbstractTransition*{.exportc: "QAbstractTransition", incompleteStruct.} = object

proc fcQAbstractTransition_metaObject(self: pointer): pointer {.importc: "QAbstractTransition_metaObject".}
proc fcQAbstractTransition_metacast(self: pointer, param1: cstring): pointer {.importc: "QAbstractTransition_metacast".}
proc fcQAbstractTransition_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.importc: "QAbstractTransition_metacall".}
proc fcQAbstractTransition_tr(s: cstring): struct_miqt_string {.importc: "QAbstractTransition_tr".}
proc fcQAbstractTransition_trUtf8(s: cstring): struct_miqt_string {.importc: "QAbstractTransition_trUtf8".}
proc fcQAbstractTransition_sourceState(self: pointer): pointer {.importc: "QAbstractTransition_sourceState".}
proc fcQAbstractTransition_targetState(self: pointer): pointer {.importc: "QAbstractTransition_targetState".}
proc fcQAbstractTransition_setTargetState(self: pointer, target: pointer): void {.importc: "QAbstractTransition_setTargetState".}
proc fcQAbstractTransition_targetStates(self: pointer): struct_miqt_array {.importc: "QAbstractTransition_targetStates".}
proc fcQAbstractTransition_setTargetStates(self: pointer, targets: struct_miqt_array): void {.importc: "QAbstractTransition_setTargetStates".}
proc fcQAbstractTransition_transitionType(self: pointer): cint {.importc: "QAbstractTransition_transitionType".}
proc fcQAbstractTransition_setTransitionType(self: pointer, typeVal: cint): void {.importc: "QAbstractTransition_setTransitionType".}
proc fcQAbstractTransition_machine(self: pointer): pointer {.importc: "QAbstractTransition_machine".}
proc fcQAbstractTransition_addAnimation(self: pointer, animation: pointer): void {.importc: "QAbstractTransition_addAnimation".}
proc fcQAbstractTransition_removeAnimation(self: pointer, animation: pointer): void {.importc: "QAbstractTransition_removeAnimation".}
proc fcQAbstractTransition_animations(self: pointer): struct_miqt_array {.importc: "QAbstractTransition_animations".}
proc fcQAbstractTransition_tr2(s: cstring, c: cstring): struct_miqt_string {.importc: "QAbstractTransition_tr2".}
proc fcQAbstractTransition_tr3(s: cstring, c: cstring, n: cint): struct_miqt_string {.importc: "QAbstractTransition_tr3".}
proc fcQAbstractTransition_trUtf82(s: cstring, c: cstring): struct_miqt_string {.importc: "QAbstractTransition_trUtf82".}
proc fcQAbstractTransition_trUtf83(s: cstring, c: cstring, n: cint): struct_miqt_string {.importc: "QAbstractTransition_trUtf83".}
proc fcQAbstractTransition_vtbl(self: pointer): pointer {.importc: "QAbstractTransition_vtbl".}
proc fcQAbstractTransition_vdata(self: pointer): pointer {.importc: "QAbstractTransition_vdata".}
type cQAbstractTransitionVTable {.pure.} = object
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
proc fcQAbstractTransition_virtualbase_metaObject(self: pointer): pointer {.importc: "QAbstractTransition_virtualbase_metaObject".}
proc fcQAbstractTransition_virtualbase_metacast(self: pointer, param1: cstring): pointer {.importc: "QAbstractTransition_virtualbase_metacast".}
proc fcQAbstractTransition_virtualbase_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.importc: "QAbstractTransition_virtualbase_metacall".}
proc fcQAbstractTransition_virtualbase_event(self: pointer, e: pointer): bool {.importc: "QAbstractTransition_virtualbase_event".}
proc fcQAbstractTransition_virtualbase_eventFilter(self: pointer, watched: pointer, event: pointer): bool {.importc: "QAbstractTransition_virtualbase_eventFilter".}
proc fcQAbstractTransition_virtualbase_timerEvent(self: pointer, event: pointer): void {.importc: "QAbstractTransition_virtualbase_timerEvent".}
proc fcQAbstractTransition_virtualbase_childEvent(self: pointer, event: pointer): void {.importc: "QAbstractTransition_virtualbase_childEvent".}
proc fcQAbstractTransition_virtualbase_customEvent(self: pointer, event: pointer): void {.importc: "QAbstractTransition_virtualbase_customEvent".}
proc fcQAbstractTransition_virtualbase_connectNotify(self: pointer, signal: pointer): void {.importc: "QAbstractTransition_virtualbase_connectNotify".}
proc fcQAbstractTransition_virtualbase_disconnectNotify(self: pointer, signal: pointer): void {.importc: "QAbstractTransition_virtualbase_disconnectNotify".}
proc fcQAbstractTransition_protectedbase_sender(self: pointer): pointer {.importc: "QAbstractTransition_protectedbase_sender".}
proc fcQAbstractTransition_protectedbase_senderSignalIndex(self: pointer): cint {.importc: "QAbstractTransition_protectedbase_senderSignalIndex".}
proc fcQAbstractTransition_protectedbase_receivers(self: pointer, signal: cstring): cint {.importc: "QAbstractTransition_protectedbase_receivers".}
proc fcQAbstractTransition_protectedbase_isSignalConnected(self: pointer, signal: pointer): bool {.importc: "QAbstractTransition_protectedbase_isSignalConnected".}
proc fcQAbstractTransition_new(vtbl, vdata: pointer): ptr cQAbstractTransition {.importc: "QAbstractTransition_new".}
proc fcQAbstractTransition_new2(vtbl, vdata: pointer, sourceState: pointer): ptr cQAbstractTransition {.importc: "QAbstractTransition_new2".}
proc fcQAbstractTransition_staticMetaObject(): pointer {.importc: "QAbstractTransition_staticMetaObject".}

proc metaObject*(self: gen_qabstracttransition_types.QAbstractTransition): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQAbstractTransition_metaObject(self.h), owned: false)

proc metacast*(self: gen_qabstracttransition_types.QAbstractTransition, param1: cstring): pointer =
  fcQAbstractTransition_metacast(self.h, param1)

proc metacall*(self: gen_qabstracttransition_types.QAbstractTransition, param1: cint, param2: cint, param3: pointer): cint =
  fcQAbstractTransition_metacall(self.h, cint(param1), param2, param3)

proc tr*(_: type gen_qabstracttransition_types.QAbstractTransition, s: cstring): string =
  let v_ms = fcQAbstractTransition_tr(s)
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

proc trUtf8*(_: type gen_qabstracttransition_types.QAbstractTransition, s: cstring): string =
  let v_ms = fcQAbstractTransition_trUtf8(s)
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

proc sourceState*(self: gen_qabstracttransition_types.QAbstractTransition): gen_qstate_types.QState =
  gen_qstate_types.QState(h: fcQAbstractTransition_sourceState(self.h), owned: false)

proc targetState*(self: gen_qabstracttransition_types.QAbstractTransition): gen_qabstractstate_types.QAbstractState =
  gen_qabstractstate_types.QAbstractState(h: fcQAbstractTransition_targetState(self.h), owned: false)

proc setTargetState*(self: gen_qabstracttransition_types.QAbstractTransition, target: gen_qabstractstate_types.QAbstractState): void =
  fcQAbstractTransition_setTargetState(self.h, target.h)

proc targetStates*(self: gen_qabstracttransition_types.QAbstractTransition): seq[gen_qabstractstate_types.QAbstractState] =
  var v_ma = fcQAbstractTransition_targetStates(self.h)
  var vx_ret = newSeq[gen_qabstractstate_types.QAbstractState](int(v_ma.len))
  let v_outCast = cast[ptr UncheckedArray[pointer]](v_ma.data)
  for i in 0 ..< v_ma.len:
    vx_ret[i] = gen_qabstractstate_types.QAbstractState(h: v_outCast[i], owned: false)
  c_free(v_ma.data)
  vx_ret

proc setTargetStates*(self: gen_qabstracttransition_types.QAbstractTransition, targets: openArray[gen_qabstractstate_types.QAbstractState]): void =
  var targets_CArray = newSeq[pointer](len(targets))
  for i in 0..<len(targets):
    targets_CArray[i] = targets[i].h

  fcQAbstractTransition_setTargetStates(self.h, struct_miqt_array(len: csize_t(len(targets)), data: if len(targets) == 0: nil else: addr(targets_CArray[0])))

proc transitionType*(self: gen_qabstracttransition_types.QAbstractTransition): cint =
  cint(fcQAbstractTransition_transitionType(self.h))

proc setTransitionType*(self: gen_qabstracttransition_types.QAbstractTransition, typeVal: cint): void =
  fcQAbstractTransition_setTransitionType(self.h, cint(typeVal))

proc machine*(self: gen_qabstracttransition_types.QAbstractTransition): gen_qstatemachine_types.QStateMachine =
  gen_qstatemachine_types.QStateMachine(h: fcQAbstractTransition_machine(self.h), owned: false)

proc addAnimation*(self: gen_qabstracttransition_types.QAbstractTransition, animation: gen_qabstractanimation_types.QAbstractAnimation): void =
  fcQAbstractTransition_addAnimation(self.h, animation.h)

proc removeAnimation*(self: gen_qabstracttransition_types.QAbstractTransition, animation: gen_qabstractanimation_types.QAbstractAnimation): void =
  fcQAbstractTransition_removeAnimation(self.h, animation.h)

proc animations*(self: gen_qabstracttransition_types.QAbstractTransition): seq[gen_qabstractanimation_types.QAbstractAnimation] =
  var v_ma = fcQAbstractTransition_animations(self.h)
  var vx_ret = newSeq[gen_qabstractanimation_types.QAbstractAnimation](int(v_ma.len))
  let v_outCast = cast[ptr UncheckedArray[pointer]](v_ma.data)
  for i in 0 ..< v_ma.len:
    vx_ret[i] = gen_qabstractanimation_types.QAbstractAnimation(h: v_outCast[i], owned: false)
  c_free(v_ma.data)
  vx_ret

proc tr*(_: type gen_qabstracttransition_types.QAbstractTransition, s: cstring, c: cstring): string =
  let v_ms = fcQAbstractTransition_tr2(s, c)
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

proc tr*(_: type gen_qabstracttransition_types.QAbstractTransition, s: cstring, c: cstring, n: cint): string =
  let v_ms = fcQAbstractTransition_tr3(s, c, n)
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

proc trUtf8*(_: type gen_qabstracttransition_types.QAbstractTransition, s: cstring, c: cstring): string =
  let v_ms = fcQAbstractTransition_trUtf82(s, c)
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

proc trUtf8*(_: type gen_qabstracttransition_types.QAbstractTransition, s: cstring, c: cstring, n: cint): string =
  let v_ms = fcQAbstractTransition_trUtf83(s, c, n)
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

type QAbstractTransitionmetaObjectProc* = proc(self: QAbstractTransition): gen_qobjectdefs_types.QMetaObject {.raises: [], gcsafe.}
type QAbstractTransitionmetacastProc* = proc(self: QAbstractTransition, param1: cstring): pointer {.raises: [], gcsafe.}
type QAbstractTransitionmetacallProc* = proc(self: QAbstractTransition, param1: cint, param2: cint, param3: pointer): cint {.raises: [], gcsafe.}
type QAbstractTransitioneventTestProc* = proc(self: QAbstractTransition, event: gen_qcoreevent_types.QEvent): bool {.raises: [], gcsafe.}
type QAbstractTransitiononTransitionProc* = proc(self: QAbstractTransition, event: gen_qcoreevent_types.QEvent): void {.raises: [], gcsafe.}
type QAbstractTransitioneventProc* = proc(self: QAbstractTransition, e: gen_qcoreevent_types.QEvent): bool {.raises: [], gcsafe.}
type QAbstractTransitioneventFilterProc* = proc(self: QAbstractTransition, watched: gen_qobject_types.QObject, event: gen_qcoreevent_types.QEvent): bool {.raises: [], gcsafe.}
type QAbstractTransitiontimerEventProc* = proc(self: QAbstractTransition, event: gen_qcoreevent_types.QTimerEvent): void {.raises: [], gcsafe.}
type QAbstractTransitionchildEventProc* = proc(self: QAbstractTransition, event: gen_qcoreevent_types.QChildEvent): void {.raises: [], gcsafe.}
type QAbstractTransitioncustomEventProc* = proc(self: QAbstractTransition, event: gen_qcoreevent_types.QEvent): void {.raises: [], gcsafe.}
type QAbstractTransitionconnectNotifyProc* = proc(self: QAbstractTransition, signal: gen_qmetaobject_types.QMetaMethod): void {.raises: [], gcsafe.}
type QAbstractTransitiondisconnectNotifyProc* = proc(self: QAbstractTransition, signal: gen_qmetaobject_types.QMetaMethod): void {.raises: [], gcsafe.}
type QAbstractTransitionVTable* {.inheritable, pure.} = object
  vtbl: cQAbstractTransitionVTable
  metaObject*: QAbstractTransitionmetaObjectProc
  metacast*: QAbstractTransitionmetacastProc
  metacall*: QAbstractTransitionmetacallProc
  eventTest*: QAbstractTransitioneventTestProc
  onTransition*: QAbstractTransitiononTransitionProc
  event*: QAbstractTransitioneventProc
  eventFilter*: QAbstractTransitioneventFilterProc
  timerEvent*: QAbstractTransitiontimerEventProc
  childEvent*: QAbstractTransitionchildEventProc
  customEvent*: QAbstractTransitioncustomEventProc
  connectNotify*: QAbstractTransitionconnectNotifyProc
  disconnectNotify*: QAbstractTransitiondisconnectNotifyProc
proc QAbstractTransitionmetaObject*(self: gen_qabstracttransition_types.QAbstractTransition): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQAbstractTransition_virtualbase_metaObject(self.h), owned: false)

proc cQAbstractTransition_vtable_callback_metaObject(self: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QAbstractTransitionVTable](fcQAbstractTransition_vdata(self))
  let self = QAbstractTransition(h: self)
  var virtualReturn = vtbl[].metaObject(self)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc QAbstractTransitionmetacast*(self: gen_qabstracttransition_types.QAbstractTransition, param1: cstring): pointer =
  fcQAbstractTransition_virtualbase_metacast(self.h, param1)

proc cQAbstractTransition_vtable_callback_metacast(self: pointer, param1: cstring): pointer {.cdecl.} =
  let vtbl = cast[ptr QAbstractTransitionVTable](fcQAbstractTransition_vdata(self))
  let self = QAbstractTransition(h: self)
  let slotval1 = (param1)
  var virtualReturn = vtbl[].metacast(self, slotval1)
  virtualReturn

proc QAbstractTransitionmetacall*(self: gen_qabstracttransition_types.QAbstractTransition, param1: cint, param2: cint, param3: pointer): cint =
  fcQAbstractTransition_virtualbase_metacall(self.h, cint(param1), param2, param3)

proc cQAbstractTransition_vtable_callback_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.cdecl.} =
  let vtbl = cast[ptr QAbstractTransitionVTable](fcQAbstractTransition_vdata(self))
  let self = QAbstractTransition(h: self)
  let slotval1 = cint(param1)
  let slotval2 = param2
  let slotval3 = param3
  var virtualReturn = vtbl[].metacall(self, slotval1, slotval2, slotval3)
  virtualReturn

proc cQAbstractTransition_vtable_callback_eventTest(self: pointer, event: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QAbstractTransitionVTable](fcQAbstractTransition_vdata(self))
  let self = QAbstractTransition(h: self)
  let slotval1 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  var virtualReturn = vtbl[].eventTest(self, slotval1)
  virtualReturn

proc cQAbstractTransition_vtable_callback_onTransition(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QAbstractTransitionVTable](fcQAbstractTransition_vdata(self))
  let self = QAbstractTransition(h: self)
  let slotval1 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  vtbl[].onTransition(self, slotval1)

proc QAbstractTransitionevent*(self: gen_qabstracttransition_types.QAbstractTransition, e: gen_qcoreevent_types.QEvent): bool =
  fcQAbstractTransition_virtualbase_event(self.h, e.h)

proc cQAbstractTransition_vtable_callback_event(self: pointer, e: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QAbstractTransitionVTable](fcQAbstractTransition_vdata(self))
  let self = QAbstractTransition(h: self)
  let slotval1 = gen_qcoreevent_types.QEvent(h: e, owned: false)
  var virtualReturn = vtbl[].event(self, slotval1)
  virtualReturn

proc QAbstractTransitioneventFilter*(self: gen_qabstracttransition_types.QAbstractTransition, watched: gen_qobject_types.QObject, event: gen_qcoreevent_types.QEvent): bool =
  fcQAbstractTransition_virtualbase_eventFilter(self.h, watched.h, event.h)

proc cQAbstractTransition_vtable_callback_eventFilter(self: pointer, watched: pointer, event: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QAbstractTransitionVTable](fcQAbstractTransition_vdata(self))
  let self = QAbstractTransition(h: self)
  let slotval1 = gen_qobject_types.QObject(h: watched, owned: false)
  let slotval2 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  var virtualReturn = vtbl[].eventFilter(self, slotval1, slotval2)
  virtualReturn

proc QAbstractTransitiontimerEvent*(self: gen_qabstracttransition_types.QAbstractTransition, event: gen_qcoreevent_types.QTimerEvent): void =
  fcQAbstractTransition_virtualbase_timerEvent(self.h, event.h)

proc cQAbstractTransition_vtable_callback_timerEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QAbstractTransitionVTable](fcQAbstractTransition_vdata(self))
  let self = QAbstractTransition(h: self)
  let slotval1 = gen_qcoreevent_types.QTimerEvent(h: event, owned: false)
  vtbl[].timerEvent(self, slotval1)

proc QAbstractTransitionchildEvent*(self: gen_qabstracttransition_types.QAbstractTransition, event: gen_qcoreevent_types.QChildEvent): void =
  fcQAbstractTransition_virtualbase_childEvent(self.h, event.h)

proc cQAbstractTransition_vtable_callback_childEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QAbstractTransitionVTable](fcQAbstractTransition_vdata(self))
  let self = QAbstractTransition(h: self)
  let slotval1 = gen_qcoreevent_types.QChildEvent(h: event, owned: false)
  vtbl[].childEvent(self, slotval1)

proc QAbstractTransitioncustomEvent*(self: gen_qabstracttransition_types.QAbstractTransition, event: gen_qcoreevent_types.QEvent): void =
  fcQAbstractTransition_virtualbase_customEvent(self.h, event.h)

proc cQAbstractTransition_vtable_callback_customEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QAbstractTransitionVTable](fcQAbstractTransition_vdata(self))
  let self = QAbstractTransition(h: self)
  let slotval1 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  vtbl[].customEvent(self, slotval1)

proc QAbstractTransitionconnectNotify*(self: gen_qabstracttransition_types.QAbstractTransition, signal: gen_qmetaobject_types.QMetaMethod): void =
  fcQAbstractTransition_virtualbase_connectNotify(self.h, signal.h)

proc cQAbstractTransition_vtable_callback_connectNotify(self: pointer, signal: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QAbstractTransitionVTable](fcQAbstractTransition_vdata(self))
  let self = QAbstractTransition(h: self)
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal, owned: false)
  vtbl[].connectNotify(self, slotval1)

proc QAbstractTransitiondisconnectNotify*(self: gen_qabstracttransition_types.QAbstractTransition, signal: gen_qmetaobject_types.QMetaMethod): void =
  fcQAbstractTransition_virtualbase_disconnectNotify(self.h, signal.h)

proc cQAbstractTransition_vtable_callback_disconnectNotify(self: pointer, signal: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QAbstractTransitionVTable](fcQAbstractTransition_vdata(self))
  let self = QAbstractTransition(h: self)
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal, owned: false)
  vtbl[].disconnectNotify(self, slotval1)

type VirtualQAbstractTransition* {.inheritable.} = ref object of QAbstractTransition
  vtbl*: cQAbstractTransitionVTable
method metaObject*(self: VirtualQAbstractTransition): gen_qobjectdefs_types.QMetaObject {.base.} =
  QAbstractTransitionmetaObject(self[])
proc cQAbstractTransition_method_callback_metaObject(self: pointer): pointer {.cdecl.} =
  let inst = cast[VirtualQAbstractTransition](fcQAbstractTransition_vdata(self))
  var virtualReturn = inst.metaObject()
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

method metacast*(self: VirtualQAbstractTransition, param1: cstring): pointer {.base.} =
  QAbstractTransitionmetacast(self[], param1)
proc cQAbstractTransition_method_callback_metacast(self: pointer, param1: cstring): pointer {.cdecl.} =
  let inst = cast[VirtualQAbstractTransition](fcQAbstractTransition_vdata(self))
  let slotval1 = (param1)
  var virtualReturn = inst.metacast(slotval1)
  virtualReturn

method metacall*(self: VirtualQAbstractTransition, param1: cint, param2: cint, param3: pointer): cint {.base.} =
  QAbstractTransitionmetacall(self[], param1, param2, param3)
proc cQAbstractTransition_method_callback_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.cdecl.} =
  let inst = cast[VirtualQAbstractTransition](fcQAbstractTransition_vdata(self))
  let slotval1 = cint(param1)
  let slotval2 = param2
  let slotval3 = param3
  var virtualReturn = inst.metacall(slotval1, slotval2, slotval3)
  virtualReturn

method eventTest*(self: VirtualQAbstractTransition, event: gen_qcoreevent_types.QEvent): bool {.base.} =
  raiseAssert("missing implementation of QAbstractTransition_virtualbase_eventTest")
proc cQAbstractTransition_method_callback_eventTest(self: pointer, event: pointer): bool {.cdecl.} =
  let inst = cast[VirtualQAbstractTransition](fcQAbstractTransition_vdata(self))
  let slotval1 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  var virtualReturn = inst.eventTest(slotval1)
  virtualReturn

method onTransition*(self: VirtualQAbstractTransition, event: gen_qcoreevent_types.QEvent): void {.base.} =
  raiseAssert("missing implementation of QAbstractTransition_virtualbase_onTransition")
proc cQAbstractTransition_method_callback_onTransition(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQAbstractTransition](fcQAbstractTransition_vdata(self))
  let slotval1 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  inst.onTransition(slotval1)

method event*(self: VirtualQAbstractTransition, e: gen_qcoreevent_types.QEvent): bool {.base.} =
  QAbstractTransitionevent(self[], e)
proc cQAbstractTransition_method_callback_event(self: pointer, e: pointer): bool {.cdecl.} =
  let inst = cast[VirtualQAbstractTransition](fcQAbstractTransition_vdata(self))
  let slotval1 = gen_qcoreevent_types.QEvent(h: e, owned: false)
  var virtualReturn = inst.event(slotval1)
  virtualReturn

method eventFilter*(self: VirtualQAbstractTransition, watched: gen_qobject_types.QObject, event: gen_qcoreevent_types.QEvent): bool {.base.} =
  QAbstractTransitioneventFilter(self[], watched, event)
proc cQAbstractTransition_method_callback_eventFilter(self: pointer, watched: pointer, event: pointer): bool {.cdecl.} =
  let inst = cast[VirtualQAbstractTransition](fcQAbstractTransition_vdata(self))
  let slotval1 = gen_qobject_types.QObject(h: watched, owned: false)
  let slotval2 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  var virtualReturn = inst.eventFilter(slotval1, slotval2)
  virtualReturn

method timerEvent*(self: VirtualQAbstractTransition, event: gen_qcoreevent_types.QTimerEvent): void {.base.} =
  QAbstractTransitiontimerEvent(self[], event)
proc cQAbstractTransition_method_callback_timerEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQAbstractTransition](fcQAbstractTransition_vdata(self))
  let slotval1 = gen_qcoreevent_types.QTimerEvent(h: event, owned: false)
  inst.timerEvent(slotval1)

method childEvent*(self: VirtualQAbstractTransition, event: gen_qcoreevent_types.QChildEvent): void {.base.} =
  QAbstractTransitionchildEvent(self[], event)
proc cQAbstractTransition_method_callback_childEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQAbstractTransition](fcQAbstractTransition_vdata(self))
  let slotval1 = gen_qcoreevent_types.QChildEvent(h: event, owned: false)
  inst.childEvent(slotval1)

method customEvent*(self: VirtualQAbstractTransition, event: gen_qcoreevent_types.QEvent): void {.base.} =
  QAbstractTransitioncustomEvent(self[], event)
proc cQAbstractTransition_method_callback_customEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQAbstractTransition](fcQAbstractTransition_vdata(self))
  let slotval1 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  inst.customEvent(slotval1)

method connectNotify*(self: VirtualQAbstractTransition, signal: gen_qmetaobject_types.QMetaMethod): void {.base.} =
  QAbstractTransitionconnectNotify(self[], signal)
proc cQAbstractTransition_method_callback_connectNotify(self: pointer, signal: pointer): void {.cdecl.} =
  let inst = cast[VirtualQAbstractTransition](fcQAbstractTransition_vdata(self))
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal, owned: false)
  inst.connectNotify(slotval1)

method disconnectNotify*(self: VirtualQAbstractTransition, signal: gen_qmetaobject_types.QMetaMethod): void {.base.} =
  QAbstractTransitiondisconnectNotify(self[], signal)
proc cQAbstractTransition_method_callback_disconnectNotify(self: pointer, signal: pointer): void {.cdecl.} =
  let inst = cast[VirtualQAbstractTransition](fcQAbstractTransition_vdata(self))
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal, owned: false)
  inst.disconnectNotify(slotval1)

proc sender*(self: gen_qabstracttransition_types.QAbstractTransition): gen_qobject_types.QObject =
  gen_qobject_types.QObject(h: fcQAbstractTransition_protectedbase_sender(self.h), owned: false)

proc senderSignalIndex*(self: gen_qabstracttransition_types.QAbstractTransition): cint =
  fcQAbstractTransition_protectedbase_senderSignalIndex(self.h)

proc receivers*(self: gen_qabstracttransition_types.QAbstractTransition, signal: cstring): cint =
  fcQAbstractTransition_protectedbase_receivers(self.h, signal)

proc isSignalConnected*(self: gen_qabstracttransition_types.QAbstractTransition, signal: gen_qmetaobject_types.QMetaMethod): bool =
  fcQAbstractTransition_protectedbase_isSignalConnected(self.h, signal.h)

proc create*(T: type gen_qabstracttransition_types.QAbstractTransition,
    vtbl: ref QAbstractTransitionVTable = nil): gen_qabstracttransition_types.QAbstractTransition =
  let vtbl = if vtbl == nil: new QAbstractTransitionVTable else: vtbl
  GC_ref(vtbl)
  vtbl[].vtbl.destructor = proc(self: pointer) {.cdecl.} =
    let vtbl = cast[ref QAbstractTransitionVTable](fcQAbstractTransition_vdata(self))
    GC_unref(vtbl)
  if not isNil(vtbl[].metaObject):
    vtbl[].vtbl.metaObject = cQAbstractTransition_vtable_callback_metaObject
  if not isNil(vtbl[].metacast):
    vtbl[].vtbl.metacast = cQAbstractTransition_vtable_callback_metacast
  if not isNil(vtbl[].metacall):
    vtbl[].vtbl.metacall = cQAbstractTransition_vtable_callback_metacall
  if not isNil(vtbl[].eventTest):
    vtbl[].vtbl.eventTest = cQAbstractTransition_vtable_callback_eventTest
  if not isNil(vtbl[].onTransition):
    vtbl[].vtbl.onTransition = cQAbstractTransition_vtable_callback_onTransition
  if not isNil(vtbl[].event):
    vtbl[].vtbl.event = cQAbstractTransition_vtable_callback_event
  if not isNil(vtbl[].eventFilter):
    vtbl[].vtbl.eventFilter = cQAbstractTransition_vtable_callback_eventFilter
  if not isNil(vtbl[].timerEvent):
    vtbl[].vtbl.timerEvent = cQAbstractTransition_vtable_callback_timerEvent
  if not isNil(vtbl[].childEvent):
    vtbl[].vtbl.childEvent = cQAbstractTransition_vtable_callback_childEvent
  if not isNil(vtbl[].customEvent):
    vtbl[].vtbl.customEvent = cQAbstractTransition_vtable_callback_customEvent
  if not isNil(vtbl[].connectNotify):
    vtbl[].vtbl.connectNotify = cQAbstractTransition_vtable_callback_connectNotify
  if not isNil(vtbl[].disconnectNotify):
    vtbl[].vtbl.disconnectNotify = cQAbstractTransition_vtable_callback_disconnectNotify
  gen_qabstracttransition_types.QAbstractTransition(h: fcQAbstractTransition_new(addr(vtbl[].vtbl), addr(vtbl[])), owned: true)

proc create*(T: type gen_qabstracttransition_types.QAbstractTransition,
    sourceState: gen_qstate_types.QState,
    vtbl: ref QAbstractTransitionVTable = nil): gen_qabstracttransition_types.QAbstractTransition =
  let vtbl = if vtbl == nil: new QAbstractTransitionVTable else: vtbl
  GC_ref(vtbl)
  vtbl[].vtbl.destructor = proc(self: pointer) {.cdecl.} =
    let vtbl = cast[ref QAbstractTransitionVTable](fcQAbstractTransition_vdata(self))
    GC_unref(vtbl)
  if not isNil(vtbl[].metaObject):
    vtbl[].vtbl.metaObject = cQAbstractTransition_vtable_callback_metaObject
  if not isNil(vtbl[].metacast):
    vtbl[].vtbl.metacast = cQAbstractTransition_vtable_callback_metacast
  if not isNil(vtbl[].metacall):
    vtbl[].vtbl.metacall = cQAbstractTransition_vtable_callback_metacall
  if not isNil(vtbl[].eventTest):
    vtbl[].vtbl.eventTest = cQAbstractTransition_vtable_callback_eventTest
  if not isNil(vtbl[].onTransition):
    vtbl[].vtbl.onTransition = cQAbstractTransition_vtable_callback_onTransition
  if not isNil(vtbl[].event):
    vtbl[].vtbl.event = cQAbstractTransition_vtable_callback_event
  if not isNil(vtbl[].eventFilter):
    vtbl[].vtbl.eventFilter = cQAbstractTransition_vtable_callback_eventFilter
  if not isNil(vtbl[].timerEvent):
    vtbl[].vtbl.timerEvent = cQAbstractTransition_vtable_callback_timerEvent
  if not isNil(vtbl[].childEvent):
    vtbl[].vtbl.childEvent = cQAbstractTransition_vtable_callback_childEvent
  if not isNil(vtbl[].customEvent):
    vtbl[].vtbl.customEvent = cQAbstractTransition_vtable_callback_customEvent
  if not isNil(vtbl[].connectNotify):
    vtbl[].vtbl.connectNotify = cQAbstractTransition_vtable_callback_connectNotify
  if not isNil(vtbl[].disconnectNotify):
    vtbl[].vtbl.disconnectNotify = cQAbstractTransition_vtable_callback_disconnectNotify
  gen_qabstracttransition_types.QAbstractTransition(h: fcQAbstractTransition_new2(addr(vtbl[].vtbl), addr(vtbl[]), sourceState.h), owned: true)

const cQAbstractTransition_mvtbl = cQAbstractTransitionVTable(
  destructor: proc(self: pointer) {.cdecl.} =
    let inst = cast[ptr typeof(VirtualQAbstractTransition()[])](self.fcQAbstractTransition_vtbl())
    inst[].h = nil
    inst[].owned = false,
  metaObject: cQAbstractTransition_method_callback_metaObject,
  metacast: cQAbstractTransition_method_callback_metacast,
  metacall: cQAbstractTransition_method_callback_metacall,
  eventTest: cQAbstractTransition_method_callback_eventTest,
  onTransition: cQAbstractTransition_method_callback_onTransition,
  event: cQAbstractTransition_method_callback_event,
  eventFilter: cQAbstractTransition_method_callback_eventFilter,
  timerEvent: cQAbstractTransition_method_callback_timerEvent,
  childEvent: cQAbstractTransition_method_callback_childEvent,
  customEvent: cQAbstractTransition_method_callback_customEvent,
  connectNotify: cQAbstractTransition_method_callback_connectNotify,
  disconnectNotify: cQAbstractTransition_method_callback_disconnectNotify,
)
proc create*(T: type gen_qabstracttransition_types.QAbstractTransition,
    inst: VirtualQAbstractTransition) =
  if inst[].h != nil: delete(move(inst[]))
  inst[].h = fcQAbstractTransition_new(addr(cQAbstractTransition_mvtbl), addr(inst[]))
  inst[].owned = true

proc create*(T: type gen_qabstracttransition_types.QAbstractTransition,
    sourceState: gen_qstate_types.QState,
    inst: VirtualQAbstractTransition) =
  if inst[].h != nil: delete(move(inst[]))
  inst[].h = fcQAbstractTransition_new2(addr(cQAbstractTransition_mvtbl), addr(inst[]), sourceState.h)
  inst[].owned = true

proc staticMetaObject*(_: type gen_qabstracttransition_types.QAbstractTransition): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQAbstractTransition_staticMetaObject())
