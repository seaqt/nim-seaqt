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


{.compile("gen_qpauseanimation.cpp", QtCoreCFlags).}


import ./gen_qpauseanimation_types
export gen_qpauseanimation_types

import
  ./gen_qabstractanimation,
  ./gen_qcoreevent_types,
  ./gen_qmetaobject_types,
  ./gen_qobject_types,
  ./gen_qobjectdefs_types
export
  gen_qabstractanimation,
  gen_qcoreevent_types,
  gen_qmetaobject_types,
  gen_qobject_types,
  gen_qobjectdefs_types

type cQPauseAnimation*{.exportc: "QPauseAnimation", incompleteStruct.} = object

proc fcQPauseAnimation_metaObject(self: pointer): pointer {.importc: "QPauseAnimation_metaObject".}
proc fcQPauseAnimation_metacast(self: pointer, param1: cstring): pointer {.importc: "QPauseAnimation_metacast".}
proc fcQPauseAnimation_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.importc: "QPauseAnimation_metacall".}
proc fcQPauseAnimation_tr(s: cstring): struct_miqt_string {.importc: "QPauseAnimation_tr".}
proc fcQPauseAnimation_trUtf8(s: cstring): struct_miqt_string {.importc: "QPauseAnimation_trUtf8".}
proc fcQPauseAnimation_duration(self: pointer): cint {.importc: "QPauseAnimation_duration".}
proc fcQPauseAnimation_setDuration(self: pointer, msecs: cint): void {.importc: "QPauseAnimation_setDuration".}
proc fcQPauseAnimation_tr2(s: cstring, c: cstring): struct_miqt_string {.importc: "QPauseAnimation_tr2".}
proc fcQPauseAnimation_tr3(s: cstring, c: cstring, n: cint): struct_miqt_string {.importc: "QPauseAnimation_tr3".}
proc fcQPauseAnimation_trUtf82(s: cstring, c: cstring): struct_miqt_string {.importc: "QPauseAnimation_trUtf82".}
proc fcQPauseAnimation_trUtf83(s: cstring, c: cstring, n: cint): struct_miqt_string {.importc: "QPauseAnimation_trUtf83".}
proc fcQPauseAnimation_vtbl(self: pointer): pointer {.importc: "QPauseAnimation_vtbl".}
proc fcQPauseAnimation_vdata(self: pointer): pointer {.importc: "QPauseAnimation_vdata".}
type cQPauseAnimationVTable {.pure.} = object
  destructor*: proc(self: pointer) {.cdecl, raises:[], gcsafe.}
  metaObject*: proc(self: pointer): pointer {.cdecl, raises: [], gcsafe.}
  metacast*: proc(self: pointer, param1: cstring): pointer {.cdecl, raises: [], gcsafe.}
  metacall*: proc(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.cdecl, raises: [], gcsafe.}
  duration*: proc(self: pointer): cint {.cdecl, raises: [], gcsafe.}
  event*: proc(self: pointer, e: pointer): bool {.cdecl, raises: [], gcsafe.}
  updateCurrentTime*: proc(self: pointer, param1: cint): void {.cdecl, raises: [], gcsafe.}
  updateState*: proc(self: pointer, newState: cint, oldState: cint): void {.cdecl, raises: [], gcsafe.}
  updateDirection*: proc(self: pointer, direction: cint): void {.cdecl, raises: [], gcsafe.}
  eventFilter*: proc(self: pointer, watched: pointer, event: pointer): bool {.cdecl, raises: [], gcsafe.}
  timerEvent*: proc(self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  childEvent*: proc(self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  customEvent*: proc(self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  connectNotify*: proc(self: pointer, signal: pointer): void {.cdecl, raises: [], gcsafe.}
  disconnectNotify*: proc(self: pointer, signal: pointer): void {.cdecl, raises: [], gcsafe.}
proc fcQPauseAnimation_virtualbase_metaObject(self: pointer): pointer {.importc: "QPauseAnimation_virtualbase_metaObject".}
proc fcQPauseAnimation_virtualbase_metacast(self: pointer, param1: cstring): pointer {.importc: "QPauseAnimation_virtualbase_metacast".}
proc fcQPauseAnimation_virtualbase_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.importc: "QPauseAnimation_virtualbase_metacall".}
proc fcQPauseAnimation_virtualbase_duration(self: pointer): cint {.importc: "QPauseAnimation_virtualbase_duration".}
proc fcQPauseAnimation_virtualbase_event(self: pointer, e: pointer): bool {.importc: "QPauseAnimation_virtualbase_event".}
proc fcQPauseAnimation_virtualbase_updateCurrentTime(self: pointer, param1: cint): void {.importc: "QPauseAnimation_virtualbase_updateCurrentTime".}
proc fcQPauseAnimation_virtualbase_updateState(self: pointer, newState: cint, oldState: cint): void {.importc: "QPauseAnimation_virtualbase_updateState".}
proc fcQPauseAnimation_virtualbase_updateDirection(self: pointer, direction: cint): void {.importc: "QPauseAnimation_virtualbase_updateDirection".}
proc fcQPauseAnimation_virtualbase_eventFilter(self: pointer, watched: pointer, event: pointer): bool {.importc: "QPauseAnimation_virtualbase_eventFilter".}
proc fcQPauseAnimation_virtualbase_timerEvent(self: pointer, event: pointer): void {.importc: "QPauseAnimation_virtualbase_timerEvent".}
proc fcQPauseAnimation_virtualbase_childEvent(self: pointer, event: pointer): void {.importc: "QPauseAnimation_virtualbase_childEvent".}
proc fcQPauseAnimation_virtualbase_customEvent(self: pointer, event: pointer): void {.importc: "QPauseAnimation_virtualbase_customEvent".}
proc fcQPauseAnimation_virtualbase_connectNotify(self: pointer, signal: pointer): void {.importc: "QPauseAnimation_virtualbase_connectNotify".}
proc fcQPauseAnimation_virtualbase_disconnectNotify(self: pointer, signal: pointer): void {.importc: "QPauseAnimation_virtualbase_disconnectNotify".}
proc fcQPauseAnimation_protectedbase_sender(self: pointer): pointer {.importc: "QPauseAnimation_protectedbase_sender".}
proc fcQPauseAnimation_protectedbase_senderSignalIndex(self: pointer): cint {.importc: "QPauseAnimation_protectedbase_senderSignalIndex".}
proc fcQPauseAnimation_protectedbase_receivers(self: pointer, signal: cstring): cint {.importc: "QPauseAnimation_protectedbase_receivers".}
proc fcQPauseAnimation_protectedbase_isSignalConnected(self: pointer, signal: pointer): bool {.importc: "QPauseAnimation_protectedbase_isSignalConnected".}
proc fcQPauseAnimation_new(vtbl, vdata: pointer): ptr cQPauseAnimation {.importc: "QPauseAnimation_new".}
proc fcQPauseAnimation_new2(vtbl, vdata: pointer, msecs: cint): ptr cQPauseAnimation {.importc: "QPauseAnimation_new2".}
proc fcQPauseAnimation_new3(vtbl, vdata: pointer, parent: pointer): ptr cQPauseAnimation {.importc: "QPauseAnimation_new3".}
proc fcQPauseAnimation_new4(vtbl, vdata: pointer, msecs: cint, parent: pointer): ptr cQPauseAnimation {.importc: "QPauseAnimation_new4".}
proc fcQPauseAnimation_staticMetaObject(): pointer {.importc: "QPauseAnimation_staticMetaObject".}

proc metaObject*(self: gen_qpauseanimation_types.QPauseAnimation): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQPauseAnimation_metaObject(self.h), owned: false)

proc metacast*(self: gen_qpauseanimation_types.QPauseAnimation, param1: cstring): pointer =
  fcQPauseAnimation_metacast(self.h, param1)

proc metacall*(self: gen_qpauseanimation_types.QPauseAnimation, param1: cint, param2: cint, param3: pointer): cint =
  fcQPauseAnimation_metacall(self.h, cint(param1), param2, param3)

proc tr*(_: type gen_qpauseanimation_types.QPauseAnimation, s: cstring): string =
  let v_ms = fcQPauseAnimation_tr(s)
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

proc trUtf8*(_: type gen_qpauseanimation_types.QPauseAnimation, s: cstring): string =
  let v_ms = fcQPauseAnimation_trUtf8(s)
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

proc duration*(self: gen_qpauseanimation_types.QPauseAnimation): cint =
  fcQPauseAnimation_duration(self.h)

proc setDuration*(self: gen_qpauseanimation_types.QPauseAnimation, msecs: cint): void =
  fcQPauseAnimation_setDuration(self.h, msecs)

proc tr*(_: type gen_qpauseanimation_types.QPauseAnimation, s: cstring, c: cstring): string =
  let v_ms = fcQPauseAnimation_tr2(s, c)
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

proc tr*(_: type gen_qpauseanimation_types.QPauseAnimation, s: cstring, c: cstring, n: cint): string =
  let v_ms = fcQPauseAnimation_tr3(s, c, n)
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

proc trUtf8*(_: type gen_qpauseanimation_types.QPauseAnimation, s: cstring, c: cstring): string =
  let v_ms = fcQPauseAnimation_trUtf82(s, c)
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

proc trUtf8*(_: type gen_qpauseanimation_types.QPauseAnimation, s: cstring, c: cstring, n: cint): string =
  let v_ms = fcQPauseAnimation_trUtf83(s, c, n)
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

type QPauseAnimationmetaObjectProc* = proc(self: QPauseAnimation): gen_qobjectdefs_types.QMetaObject {.raises: [], gcsafe.}
type QPauseAnimationmetacastProc* = proc(self: QPauseAnimation, param1: cstring): pointer {.raises: [], gcsafe.}
type QPauseAnimationmetacallProc* = proc(self: QPauseAnimation, param1: cint, param2: cint, param3: pointer): cint {.raises: [], gcsafe.}
type QPauseAnimationdurationProc* = proc(self: QPauseAnimation): cint {.raises: [], gcsafe.}
type QPauseAnimationeventProc* = proc(self: QPauseAnimation, e: gen_qcoreevent_types.QEvent): bool {.raises: [], gcsafe.}
type QPauseAnimationupdateCurrentTimeProc* = proc(self: QPauseAnimation, param1: cint): void {.raises: [], gcsafe.}
type QPauseAnimationupdateStateProc* = proc(self: QPauseAnimation, newState: cint, oldState: cint): void {.raises: [], gcsafe.}
type QPauseAnimationupdateDirectionProc* = proc(self: QPauseAnimation, direction: cint): void {.raises: [], gcsafe.}
type QPauseAnimationeventFilterProc* = proc(self: QPauseAnimation, watched: gen_qobject_types.QObject, event: gen_qcoreevent_types.QEvent): bool {.raises: [], gcsafe.}
type QPauseAnimationtimerEventProc* = proc(self: QPauseAnimation, event: gen_qcoreevent_types.QTimerEvent): void {.raises: [], gcsafe.}
type QPauseAnimationchildEventProc* = proc(self: QPauseAnimation, event: gen_qcoreevent_types.QChildEvent): void {.raises: [], gcsafe.}
type QPauseAnimationcustomEventProc* = proc(self: QPauseAnimation, event: gen_qcoreevent_types.QEvent): void {.raises: [], gcsafe.}
type QPauseAnimationconnectNotifyProc* = proc(self: QPauseAnimation, signal: gen_qmetaobject_types.QMetaMethod): void {.raises: [], gcsafe.}
type QPauseAnimationdisconnectNotifyProc* = proc(self: QPauseAnimation, signal: gen_qmetaobject_types.QMetaMethod): void {.raises: [], gcsafe.}
type QPauseAnimationVTable* {.inheritable, pure.} = object
  vtbl: cQPauseAnimationVTable
  metaObject*: QPauseAnimationmetaObjectProc
  metacast*: QPauseAnimationmetacastProc
  metacall*: QPauseAnimationmetacallProc
  duration*: QPauseAnimationdurationProc
  event*: QPauseAnimationeventProc
  updateCurrentTime*: QPauseAnimationupdateCurrentTimeProc
  updateState*: QPauseAnimationupdateStateProc
  updateDirection*: QPauseAnimationupdateDirectionProc
  eventFilter*: QPauseAnimationeventFilterProc
  timerEvent*: QPauseAnimationtimerEventProc
  childEvent*: QPauseAnimationchildEventProc
  customEvent*: QPauseAnimationcustomEventProc
  connectNotify*: QPauseAnimationconnectNotifyProc
  disconnectNotify*: QPauseAnimationdisconnectNotifyProc
proc QPauseAnimationmetaObject*(self: gen_qpauseanimation_types.QPauseAnimation): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQPauseAnimation_virtualbase_metaObject(self.h), owned: false)

proc cQPauseAnimation_vtable_callback_metaObject(self: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QPauseAnimationVTable](fcQPauseAnimation_vdata(self))
  let self = QPauseAnimation(h: self)
  var virtualReturn = vtbl[].metaObject(self)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc QPauseAnimationmetacast*(self: gen_qpauseanimation_types.QPauseAnimation, param1: cstring): pointer =
  fcQPauseAnimation_virtualbase_metacast(self.h, param1)

proc cQPauseAnimation_vtable_callback_metacast(self: pointer, param1: cstring): pointer {.cdecl.} =
  let vtbl = cast[ptr QPauseAnimationVTable](fcQPauseAnimation_vdata(self))
  let self = QPauseAnimation(h: self)
  let slotval1 = (param1)
  var virtualReturn = vtbl[].metacast(self, slotval1)
  virtualReturn

proc QPauseAnimationmetacall*(self: gen_qpauseanimation_types.QPauseAnimation, param1: cint, param2: cint, param3: pointer): cint =
  fcQPauseAnimation_virtualbase_metacall(self.h, cint(param1), param2, param3)

proc cQPauseAnimation_vtable_callback_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.cdecl.} =
  let vtbl = cast[ptr QPauseAnimationVTable](fcQPauseAnimation_vdata(self))
  let self = QPauseAnimation(h: self)
  let slotval1 = cint(param1)
  let slotval2 = param2
  let slotval3 = param3
  var virtualReturn = vtbl[].metacall(self, slotval1, slotval2, slotval3)
  virtualReturn

proc QPauseAnimationduration*(self: gen_qpauseanimation_types.QPauseAnimation): cint =
  fcQPauseAnimation_virtualbase_duration(self.h)

proc cQPauseAnimation_vtable_callback_duration(self: pointer): cint {.cdecl.} =
  let vtbl = cast[ptr QPauseAnimationVTable](fcQPauseAnimation_vdata(self))
  let self = QPauseAnimation(h: self)
  var virtualReturn = vtbl[].duration(self)
  virtualReturn

proc QPauseAnimationevent*(self: gen_qpauseanimation_types.QPauseAnimation, e: gen_qcoreevent_types.QEvent): bool =
  fcQPauseAnimation_virtualbase_event(self.h, e.h)

proc cQPauseAnimation_vtable_callback_event(self: pointer, e: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QPauseAnimationVTable](fcQPauseAnimation_vdata(self))
  let self = QPauseAnimation(h: self)
  let slotval1 = gen_qcoreevent_types.QEvent(h: e, owned: false)
  var virtualReturn = vtbl[].event(self, slotval1)
  virtualReturn

proc QPauseAnimationupdateCurrentTime*(self: gen_qpauseanimation_types.QPauseAnimation, param1: cint): void =
  fcQPauseAnimation_virtualbase_updateCurrentTime(self.h, param1)

proc cQPauseAnimation_vtable_callback_updateCurrentTime(self: pointer, param1: cint): void {.cdecl.} =
  let vtbl = cast[ptr QPauseAnimationVTable](fcQPauseAnimation_vdata(self))
  let self = QPauseAnimation(h: self)
  let slotval1 = param1
  vtbl[].updateCurrentTime(self, slotval1)

proc QPauseAnimationupdateState*(self: gen_qpauseanimation_types.QPauseAnimation, newState: cint, oldState: cint): void =
  fcQPauseAnimation_virtualbase_updateState(self.h, cint(newState), cint(oldState))

proc cQPauseAnimation_vtable_callback_updateState(self: pointer, newState: cint, oldState: cint): void {.cdecl.} =
  let vtbl = cast[ptr QPauseAnimationVTable](fcQPauseAnimation_vdata(self))
  let self = QPauseAnimation(h: self)
  let slotval1 = cint(newState)
  let slotval2 = cint(oldState)
  vtbl[].updateState(self, slotval1, slotval2)

proc QPauseAnimationupdateDirection*(self: gen_qpauseanimation_types.QPauseAnimation, direction: cint): void =
  fcQPauseAnimation_virtualbase_updateDirection(self.h, cint(direction))

proc cQPauseAnimation_vtable_callback_updateDirection(self: pointer, direction: cint): void {.cdecl.} =
  let vtbl = cast[ptr QPauseAnimationVTable](fcQPauseAnimation_vdata(self))
  let self = QPauseAnimation(h: self)
  let slotval1 = cint(direction)
  vtbl[].updateDirection(self, slotval1)

proc QPauseAnimationeventFilter*(self: gen_qpauseanimation_types.QPauseAnimation, watched: gen_qobject_types.QObject, event: gen_qcoreevent_types.QEvent): bool =
  fcQPauseAnimation_virtualbase_eventFilter(self.h, watched.h, event.h)

proc cQPauseAnimation_vtable_callback_eventFilter(self: pointer, watched: pointer, event: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QPauseAnimationVTable](fcQPauseAnimation_vdata(self))
  let self = QPauseAnimation(h: self)
  let slotval1 = gen_qobject_types.QObject(h: watched, owned: false)
  let slotval2 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  var virtualReturn = vtbl[].eventFilter(self, slotval1, slotval2)
  virtualReturn

proc QPauseAnimationtimerEvent*(self: gen_qpauseanimation_types.QPauseAnimation, event: gen_qcoreevent_types.QTimerEvent): void =
  fcQPauseAnimation_virtualbase_timerEvent(self.h, event.h)

proc cQPauseAnimation_vtable_callback_timerEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QPauseAnimationVTable](fcQPauseAnimation_vdata(self))
  let self = QPauseAnimation(h: self)
  let slotval1 = gen_qcoreevent_types.QTimerEvent(h: event, owned: false)
  vtbl[].timerEvent(self, slotval1)

proc QPauseAnimationchildEvent*(self: gen_qpauseanimation_types.QPauseAnimation, event: gen_qcoreevent_types.QChildEvent): void =
  fcQPauseAnimation_virtualbase_childEvent(self.h, event.h)

proc cQPauseAnimation_vtable_callback_childEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QPauseAnimationVTable](fcQPauseAnimation_vdata(self))
  let self = QPauseAnimation(h: self)
  let slotval1 = gen_qcoreevent_types.QChildEvent(h: event, owned: false)
  vtbl[].childEvent(self, slotval1)

proc QPauseAnimationcustomEvent*(self: gen_qpauseanimation_types.QPauseAnimation, event: gen_qcoreevent_types.QEvent): void =
  fcQPauseAnimation_virtualbase_customEvent(self.h, event.h)

proc cQPauseAnimation_vtable_callback_customEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QPauseAnimationVTable](fcQPauseAnimation_vdata(self))
  let self = QPauseAnimation(h: self)
  let slotval1 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  vtbl[].customEvent(self, slotval1)

proc QPauseAnimationconnectNotify*(self: gen_qpauseanimation_types.QPauseAnimation, signal: gen_qmetaobject_types.QMetaMethod): void =
  fcQPauseAnimation_virtualbase_connectNotify(self.h, signal.h)

proc cQPauseAnimation_vtable_callback_connectNotify(self: pointer, signal: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QPauseAnimationVTable](fcQPauseAnimation_vdata(self))
  let self = QPauseAnimation(h: self)
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal, owned: false)
  vtbl[].connectNotify(self, slotval1)

proc QPauseAnimationdisconnectNotify*(self: gen_qpauseanimation_types.QPauseAnimation, signal: gen_qmetaobject_types.QMetaMethod): void =
  fcQPauseAnimation_virtualbase_disconnectNotify(self.h, signal.h)

proc cQPauseAnimation_vtable_callback_disconnectNotify(self: pointer, signal: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QPauseAnimationVTable](fcQPauseAnimation_vdata(self))
  let self = QPauseAnimation(h: self)
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal, owned: false)
  vtbl[].disconnectNotify(self, slotval1)

type VirtualQPauseAnimation* {.inheritable.} = ref object of QPauseAnimation
  vtbl*: cQPauseAnimationVTable
method metaObject*(self: VirtualQPauseAnimation): gen_qobjectdefs_types.QMetaObject {.base.} =
  QPauseAnimationmetaObject(self[])
proc cQPauseAnimation_method_callback_metaObject(self: pointer): pointer {.cdecl.} =
  let inst = cast[VirtualQPauseAnimation](fcQPauseAnimation_vdata(self))
  var virtualReturn = inst.metaObject()
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

method metacast*(self: VirtualQPauseAnimation, param1: cstring): pointer {.base.} =
  QPauseAnimationmetacast(self[], param1)
proc cQPauseAnimation_method_callback_metacast(self: pointer, param1: cstring): pointer {.cdecl.} =
  let inst = cast[VirtualQPauseAnimation](fcQPauseAnimation_vdata(self))
  let slotval1 = (param1)
  var virtualReturn = inst.metacast(slotval1)
  virtualReturn

method metacall*(self: VirtualQPauseAnimation, param1: cint, param2: cint, param3: pointer): cint {.base.} =
  QPauseAnimationmetacall(self[], param1, param2, param3)
proc cQPauseAnimation_method_callback_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.cdecl.} =
  let inst = cast[VirtualQPauseAnimation](fcQPauseAnimation_vdata(self))
  let slotval1 = cint(param1)
  let slotval2 = param2
  let slotval3 = param3
  var virtualReturn = inst.metacall(slotval1, slotval2, slotval3)
  virtualReturn

method duration*(self: VirtualQPauseAnimation): cint {.base.} =
  QPauseAnimationduration(self[])
proc cQPauseAnimation_method_callback_duration(self: pointer): cint {.cdecl.} =
  let inst = cast[VirtualQPauseAnimation](fcQPauseAnimation_vdata(self))
  var virtualReturn = inst.duration()
  virtualReturn

method event*(self: VirtualQPauseAnimation, e: gen_qcoreevent_types.QEvent): bool {.base.} =
  QPauseAnimationevent(self[], e)
proc cQPauseAnimation_method_callback_event(self: pointer, e: pointer): bool {.cdecl.} =
  let inst = cast[VirtualQPauseAnimation](fcQPauseAnimation_vdata(self))
  let slotval1 = gen_qcoreevent_types.QEvent(h: e, owned: false)
  var virtualReturn = inst.event(slotval1)
  virtualReturn

method updateCurrentTime*(self: VirtualQPauseAnimation, param1: cint): void {.base.} =
  QPauseAnimationupdateCurrentTime(self[], param1)
proc cQPauseAnimation_method_callback_updateCurrentTime(self: pointer, param1: cint): void {.cdecl.} =
  let inst = cast[VirtualQPauseAnimation](fcQPauseAnimation_vdata(self))
  let slotval1 = param1
  inst.updateCurrentTime(slotval1)

method updateState*(self: VirtualQPauseAnimation, newState: cint, oldState: cint): void {.base.} =
  QPauseAnimationupdateState(self[], newState, oldState)
proc cQPauseAnimation_method_callback_updateState(self: pointer, newState: cint, oldState: cint): void {.cdecl.} =
  let inst = cast[VirtualQPauseAnimation](fcQPauseAnimation_vdata(self))
  let slotval1 = cint(newState)
  let slotval2 = cint(oldState)
  inst.updateState(slotval1, slotval2)

method updateDirection*(self: VirtualQPauseAnimation, direction: cint): void {.base.} =
  QPauseAnimationupdateDirection(self[], direction)
proc cQPauseAnimation_method_callback_updateDirection(self: pointer, direction: cint): void {.cdecl.} =
  let inst = cast[VirtualQPauseAnimation](fcQPauseAnimation_vdata(self))
  let slotval1 = cint(direction)
  inst.updateDirection(slotval1)

method eventFilter*(self: VirtualQPauseAnimation, watched: gen_qobject_types.QObject, event: gen_qcoreevent_types.QEvent): bool {.base.} =
  QPauseAnimationeventFilter(self[], watched, event)
proc cQPauseAnimation_method_callback_eventFilter(self: pointer, watched: pointer, event: pointer): bool {.cdecl.} =
  let inst = cast[VirtualQPauseAnimation](fcQPauseAnimation_vdata(self))
  let slotval1 = gen_qobject_types.QObject(h: watched, owned: false)
  let slotval2 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  var virtualReturn = inst.eventFilter(slotval1, slotval2)
  virtualReturn

method timerEvent*(self: VirtualQPauseAnimation, event: gen_qcoreevent_types.QTimerEvent): void {.base.} =
  QPauseAnimationtimerEvent(self[], event)
proc cQPauseAnimation_method_callback_timerEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQPauseAnimation](fcQPauseAnimation_vdata(self))
  let slotval1 = gen_qcoreevent_types.QTimerEvent(h: event, owned: false)
  inst.timerEvent(slotval1)

method childEvent*(self: VirtualQPauseAnimation, event: gen_qcoreevent_types.QChildEvent): void {.base.} =
  QPauseAnimationchildEvent(self[], event)
proc cQPauseAnimation_method_callback_childEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQPauseAnimation](fcQPauseAnimation_vdata(self))
  let slotval1 = gen_qcoreevent_types.QChildEvent(h: event, owned: false)
  inst.childEvent(slotval1)

method customEvent*(self: VirtualQPauseAnimation, event: gen_qcoreevent_types.QEvent): void {.base.} =
  QPauseAnimationcustomEvent(self[], event)
proc cQPauseAnimation_method_callback_customEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQPauseAnimation](fcQPauseAnimation_vdata(self))
  let slotval1 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  inst.customEvent(slotval1)

method connectNotify*(self: VirtualQPauseAnimation, signal: gen_qmetaobject_types.QMetaMethod): void {.base.} =
  QPauseAnimationconnectNotify(self[], signal)
proc cQPauseAnimation_method_callback_connectNotify(self: pointer, signal: pointer): void {.cdecl.} =
  let inst = cast[VirtualQPauseAnimation](fcQPauseAnimation_vdata(self))
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal, owned: false)
  inst.connectNotify(slotval1)

method disconnectNotify*(self: VirtualQPauseAnimation, signal: gen_qmetaobject_types.QMetaMethod): void {.base.} =
  QPauseAnimationdisconnectNotify(self[], signal)
proc cQPauseAnimation_method_callback_disconnectNotify(self: pointer, signal: pointer): void {.cdecl.} =
  let inst = cast[VirtualQPauseAnimation](fcQPauseAnimation_vdata(self))
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal, owned: false)
  inst.disconnectNotify(slotval1)

proc sender*(self: gen_qpauseanimation_types.QPauseAnimation): gen_qobject_types.QObject =
  gen_qobject_types.QObject(h: fcQPauseAnimation_protectedbase_sender(self.h), owned: false)

proc senderSignalIndex*(self: gen_qpauseanimation_types.QPauseAnimation): cint =
  fcQPauseAnimation_protectedbase_senderSignalIndex(self.h)

proc receivers*(self: gen_qpauseanimation_types.QPauseAnimation, signal: cstring): cint =
  fcQPauseAnimation_protectedbase_receivers(self.h, signal)

proc isSignalConnected*(self: gen_qpauseanimation_types.QPauseAnimation, signal: gen_qmetaobject_types.QMetaMethod): bool =
  fcQPauseAnimation_protectedbase_isSignalConnected(self.h, signal.h)

proc create*(T: type gen_qpauseanimation_types.QPauseAnimation,
    vtbl: ref QPauseAnimationVTable = nil): gen_qpauseanimation_types.QPauseAnimation =
  let vtbl = if vtbl == nil: new QPauseAnimationVTable else: vtbl
  GC_ref(vtbl)
  vtbl[].vtbl.destructor = proc(self: pointer) {.cdecl.} =
    let vtbl = cast[ref QPauseAnimationVTable](fcQPauseAnimation_vdata(self))
    GC_unref(vtbl)
  if not isNil(vtbl[].metaObject):
    vtbl[].vtbl.metaObject = cQPauseAnimation_vtable_callback_metaObject
  if not isNil(vtbl[].metacast):
    vtbl[].vtbl.metacast = cQPauseAnimation_vtable_callback_metacast
  if not isNil(vtbl[].metacall):
    vtbl[].vtbl.metacall = cQPauseAnimation_vtable_callback_metacall
  if not isNil(vtbl[].duration):
    vtbl[].vtbl.duration = cQPauseAnimation_vtable_callback_duration
  if not isNil(vtbl[].event):
    vtbl[].vtbl.event = cQPauseAnimation_vtable_callback_event
  if not isNil(vtbl[].updateCurrentTime):
    vtbl[].vtbl.updateCurrentTime = cQPauseAnimation_vtable_callback_updateCurrentTime
  if not isNil(vtbl[].updateState):
    vtbl[].vtbl.updateState = cQPauseAnimation_vtable_callback_updateState
  if not isNil(vtbl[].updateDirection):
    vtbl[].vtbl.updateDirection = cQPauseAnimation_vtable_callback_updateDirection
  if not isNil(vtbl[].eventFilter):
    vtbl[].vtbl.eventFilter = cQPauseAnimation_vtable_callback_eventFilter
  if not isNil(vtbl[].timerEvent):
    vtbl[].vtbl.timerEvent = cQPauseAnimation_vtable_callback_timerEvent
  if not isNil(vtbl[].childEvent):
    vtbl[].vtbl.childEvent = cQPauseAnimation_vtable_callback_childEvent
  if not isNil(vtbl[].customEvent):
    vtbl[].vtbl.customEvent = cQPauseAnimation_vtable_callback_customEvent
  if not isNil(vtbl[].connectNotify):
    vtbl[].vtbl.connectNotify = cQPauseAnimation_vtable_callback_connectNotify
  if not isNil(vtbl[].disconnectNotify):
    vtbl[].vtbl.disconnectNotify = cQPauseAnimation_vtable_callback_disconnectNotify
  gen_qpauseanimation_types.QPauseAnimation(h: fcQPauseAnimation_new(addr(vtbl[].vtbl), addr(vtbl[])), owned: true)

proc create*(T: type gen_qpauseanimation_types.QPauseAnimation,
    msecs: cint,
    vtbl: ref QPauseAnimationVTable = nil): gen_qpauseanimation_types.QPauseAnimation =
  let vtbl = if vtbl == nil: new QPauseAnimationVTable else: vtbl
  GC_ref(vtbl)
  vtbl[].vtbl.destructor = proc(self: pointer) {.cdecl.} =
    let vtbl = cast[ref QPauseAnimationVTable](fcQPauseAnimation_vdata(self))
    GC_unref(vtbl)
  if not isNil(vtbl[].metaObject):
    vtbl[].vtbl.metaObject = cQPauseAnimation_vtable_callback_metaObject
  if not isNil(vtbl[].metacast):
    vtbl[].vtbl.metacast = cQPauseAnimation_vtable_callback_metacast
  if not isNil(vtbl[].metacall):
    vtbl[].vtbl.metacall = cQPauseAnimation_vtable_callback_metacall
  if not isNil(vtbl[].duration):
    vtbl[].vtbl.duration = cQPauseAnimation_vtable_callback_duration
  if not isNil(vtbl[].event):
    vtbl[].vtbl.event = cQPauseAnimation_vtable_callback_event
  if not isNil(vtbl[].updateCurrentTime):
    vtbl[].vtbl.updateCurrentTime = cQPauseAnimation_vtable_callback_updateCurrentTime
  if not isNil(vtbl[].updateState):
    vtbl[].vtbl.updateState = cQPauseAnimation_vtable_callback_updateState
  if not isNil(vtbl[].updateDirection):
    vtbl[].vtbl.updateDirection = cQPauseAnimation_vtable_callback_updateDirection
  if not isNil(vtbl[].eventFilter):
    vtbl[].vtbl.eventFilter = cQPauseAnimation_vtable_callback_eventFilter
  if not isNil(vtbl[].timerEvent):
    vtbl[].vtbl.timerEvent = cQPauseAnimation_vtable_callback_timerEvent
  if not isNil(vtbl[].childEvent):
    vtbl[].vtbl.childEvent = cQPauseAnimation_vtable_callback_childEvent
  if not isNil(vtbl[].customEvent):
    vtbl[].vtbl.customEvent = cQPauseAnimation_vtable_callback_customEvent
  if not isNil(vtbl[].connectNotify):
    vtbl[].vtbl.connectNotify = cQPauseAnimation_vtable_callback_connectNotify
  if not isNil(vtbl[].disconnectNotify):
    vtbl[].vtbl.disconnectNotify = cQPauseAnimation_vtable_callback_disconnectNotify
  gen_qpauseanimation_types.QPauseAnimation(h: fcQPauseAnimation_new2(addr(vtbl[].vtbl), addr(vtbl[]), msecs), owned: true)

proc create*(T: type gen_qpauseanimation_types.QPauseAnimation,
    parent: gen_qobject_types.QObject,
    vtbl: ref QPauseAnimationVTable = nil): gen_qpauseanimation_types.QPauseAnimation =
  let vtbl = if vtbl == nil: new QPauseAnimationVTable else: vtbl
  GC_ref(vtbl)
  vtbl[].vtbl.destructor = proc(self: pointer) {.cdecl.} =
    let vtbl = cast[ref QPauseAnimationVTable](fcQPauseAnimation_vdata(self))
    GC_unref(vtbl)
  if not isNil(vtbl[].metaObject):
    vtbl[].vtbl.metaObject = cQPauseAnimation_vtable_callback_metaObject
  if not isNil(vtbl[].metacast):
    vtbl[].vtbl.metacast = cQPauseAnimation_vtable_callback_metacast
  if not isNil(vtbl[].metacall):
    vtbl[].vtbl.metacall = cQPauseAnimation_vtable_callback_metacall
  if not isNil(vtbl[].duration):
    vtbl[].vtbl.duration = cQPauseAnimation_vtable_callback_duration
  if not isNil(vtbl[].event):
    vtbl[].vtbl.event = cQPauseAnimation_vtable_callback_event
  if not isNil(vtbl[].updateCurrentTime):
    vtbl[].vtbl.updateCurrentTime = cQPauseAnimation_vtable_callback_updateCurrentTime
  if not isNil(vtbl[].updateState):
    vtbl[].vtbl.updateState = cQPauseAnimation_vtable_callback_updateState
  if not isNil(vtbl[].updateDirection):
    vtbl[].vtbl.updateDirection = cQPauseAnimation_vtable_callback_updateDirection
  if not isNil(vtbl[].eventFilter):
    vtbl[].vtbl.eventFilter = cQPauseAnimation_vtable_callback_eventFilter
  if not isNil(vtbl[].timerEvent):
    vtbl[].vtbl.timerEvent = cQPauseAnimation_vtable_callback_timerEvent
  if not isNil(vtbl[].childEvent):
    vtbl[].vtbl.childEvent = cQPauseAnimation_vtable_callback_childEvent
  if not isNil(vtbl[].customEvent):
    vtbl[].vtbl.customEvent = cQPauseAnimation_vtable_callback_customEvent
  if not isNil(vtbl[].connectNotify):
    vtbl[].vtbl.connectNotify = cQPauseAnimation_vtable_callback_connectNotify
  if not isNil(vtbl[].disconnectNotify):
    vtbl[].vtbl.disconnectNotify = cQPauseAnimation_vtable_callback_disconnectNotify
  gen_qpauseanimation_types.QPauseAnimation(h: fcQPauseAnimation_new3(addr(vtbl[].vtbl), addr(vtbl[]), parent.h), owned: true)

proc create*(T: type gen_qpauseanimation_types.QPauseAnimation,
    msecs: cint, parent: gen_qobject_types.QObject,
    vtbl: ref QPauseAnimationVTable = nil): gen_qpauseanimation_types.QPauseAnimation =
  let vtbl = if vtbl == nil: new QPauseAnimationVTable else: vtbl
  GC_ref(vtbl)
  vtbl[].vtbl.destructor = proc(self: pointer) {.cdecl.} =
    let vtbl = cast[ref QPauseAnimationVTable](fcQPauseAnimation_vdata(self))
    GC_unref(vtbl)
  if not isNil(vtbl[].metaObject):
    vtbl[].vtbl.metaObject = cQPauseAnimation_vtable_callback_metaObject
  if not isNil(vtbl[].metacast):
    vtbl[].vtbl.metacast = cQPauseAnimation_vtable_callback_metacast
  if not isNil(vtbl[].metacall):
    vtbl[].vtbl.metacall = cQPauseAnimation_vtable_callback_metacall
  if not isNil(vtbl[].duration):
    vtbl[].vtbl.duration = cQPauseAnimation_vtable_callback_duration
  if not isNil(vtbl[].event):
    vtbl[].vtbl.event = cQPauseAnimation_vtable_callback_event
  if not isNil(vtbl[].updateCurrentTime):
    vtbl[].vtbl.updateCurrentTime = cQPauseAnimation_vtable_callback_updateCurrentTime
  if not isNil(vtbl[].updateState):
    vtbl[].vtbl.updateState = cQPauseAnimation_vtable_callback_updateState
  if not isNil(vtbl[].updateDirection):
    vtbl[].vtbl.updateDirection = cQPauseAnimation_vtable_callback_updateDirection
  if not isNil(vtbl[].eventFilter):
    vtbl[].vtbl.eventFilter = cQPauseAnimation_vtable_callback_eventFilter
  if not isNil(vtbl[].timerEvent):
    vtbl[].vtbl.timerEvent = cQPauseAnimation_vtable_callback_timerEvent
  if not isNil(vtbl[].childEvent):
    vtbl[].vtbl.childEvent = cQPauseAnimation_vtable_callback_childEvent
  if not isNil(vtbl[].customEvent):
    vtbl[].vtbl.customEvent = cQPauseAnimation_vtable_callback_customEvent
  if not isNil(vtbl[].connectNotify):
    vtbl[].vtbl.connectNotify = cQPauseAnimation_vtable_callback_connectNotify
  if not isNil(vtbl[].disconnectNotify):
    vtbl[].vtbl.disconnectNotify = cQPauseAnimation_vtable_callback_disconnectNotify
  gen_qpauseanimation_types.QPauseAnimation(h: fcQPauseAnimation_new4(addr(vtbl[].vtbl), addr(vtbl[]), msecs, parent.h), owned: true)

const cQPauseAnimation_mvtbl = cQPauseAnimationVTable(
  destructor: proc(self: pointer) {.cdecl.} =
    let inst = cast[ptr typeof(VirtualQPauseAnimation()[])](self.fcQPauseAnimation_vtbl())
    inst[].h = nil
    inst[].owned = false,
  metaObject: cQPauseAnimation_method_callback_metaObject,
  metacast: cQPauseAnimation_method_callback_metacast,
  metacall: cQPauseAnimation_method_callback_metacall,
  duration: cQPauseAnimation_method_callback_duration,
  event: cQPauseAnimation_method_callback_event,
  updateCurrentTime: cQPauseAnimation_method_callback_updateCurrentTime,
  updateState: cQPauseAnimation_method_callback_updateState,
  updateDirection: cQPauseAnimation_method_callback_updateDirection,
  eventFilter: cQPauseAnimation_method_callback_eventFilter,
  timerEvent: cQPauseAnimation_method_callback_timerEvent,
  childEvent: cQPauseAnimation_method_callback_childEvent,
  customEvent: cQPauseAnimation_method_callback_customEvent,
  connectNotify: cQPauseAnimation_method_callback_connectNotify,
  disconnectNotify: cQPauseAnimation_method_callback_disconnectNotify,
)
proc create*(T: type gen_qpauseanimation_types.QPauseAnimation,
    inst: VirtualQPauseAnimation) =
  if inst[].h != nil: delete(move(inst[]))
  inst[].h = fcQPauseAnimation_new(addr(cQPauseAnimation_mvtbl), addr(inst[]))
  inst[].owned = true

proc create*(T: type gen_qpauseanimation_types.QPauseAnimation,
    msecs: cint,
    inst: VirtualQPauseAnimation) =
  if inst[].h != nil: delete(move(inst[]))
  inst[].h = fcQPauseAnimation_new2(addr(cQPauseAnimation_mvtbl), addr(inst[]), msecs)
  inst[].owned = true

proc create*(T: type gen_qpauseanimation_types.QPauseAnimation,
    parent: gen_qobject_types.QObject,
    inst: VirtualQPauseAnimation) =
  if inst[].h != nil: delete(move(inst[]))
  inst[].h = fcQPauseAnimation_new3(addr(cQPauseAnimation_mvtbl), addr(inst[]), parent.h)
  inst[].owned = true

proc create*(T: type gen_qpauseanimation_types.QPauseAnimation,
    msecs: cint, parent: gen_qobject_types.QObject,
    inst: VirtualQPauseAnimation) =
  if inst[].h != nil: delete(move(inst[]))
  inst[].h = fcQPauseAnimation_new4(addr(cQPauseAnimation_mvtbl), addr(inst[]), msecs, parent.h)
  inst[].owned = true

proc staticMetaObject*(_: type gen_qpauseanimation_types.QPauseAnimation): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQPauseAnimation_staticMetaObject())
