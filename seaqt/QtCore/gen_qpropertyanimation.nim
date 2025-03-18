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


{.compile("gen_qpropertyanimation.cpp", QtCoreCFlags).}


import ./gen_qpropertyanimation_types
export gen_qpropertyanimation_types

import
  ./gen_qcoreevent_types,
  ./gen_qmetaobject_types,
  ./gen_qobject_types,
  ./gen_qobjectdefs_types,
  ./gen_qvariant_types,
  ./gen_qvariantanimation
export
  gen_qcoreevent_types,
  gen_qmetaobject_types,
  gen_qobject_types,
  gen_qobjectdefs_types,
  gen_qvariant_types,
  gen_qvariantanimation

type cQPropertyAnimation*{.exportc: "QPropertyAnimation", incompleteStruct.} = object

proc fcQPropertyAnimation_metaObject(self: pointer): pointer {.importc: "QPropertyAnimation_metaObject".}
proc fcQPropertyAnimation_metacast(self: pointer, param1: cstring): pointer {.importc: "QPropertyAnimation_metacast".}
proc fcQPropertyAnimation_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.importc: "QPropertyAnimation_metacall".}
proc fcQPropertyAnimation_tr(s: cstring): struct_miqt_string {.importc: "QPropertyAnimation_tr".}
proc fcQPropertyAnimation_targetObject(self: pointer): pointer {.importc: "QPropertyAnimation_targetObject".}
proc fcQPropertyAnimation_setTargetObject(self: pointer, target: pointer): void {.importc: "QPropertyAnimation_setTargetObject".}
proc fcQPropertyAnimation_propertyName(self: pointer): struct_miqt_string {.importc: "QPropertyAnimation_propertyName".}
proc fcQPropertyAnimation_setPropertyName(self: pointer, propertyName: struct_miqt_string): void {.importc: "QPropertyAnimation_setPropertyName".}
proc fcQPropertyAnimation_tr2(s: cstring, c: cstring): struct_miqt_string {.importc: "QPropertyAnimation_tr2".}
proc fcQPropertyAnimation_tr3(s: cstring, c: cstring, n: cint): struct_miqt_string {.importc: "QPropertyAnimation_tr3".}
proc fcQPropertyAnimation_vtbl(self: pointer): pointer {.importc: "QPropertyAnimation_vtbl".}
proc fcQPropertyAnimation_vdata(self: pointer): pointer {.importc: "QPropertyAnimation_vdata".}

type cQPropertyAnimationVTable {.pure.} = object
  destructor*: proc(self: pointer) {.cdecl, raises:[], gcsafe.}
  metaObject*: proc(self: pointer): pointer {.cdecl, raises: [], gcsafe.}
  metacast*: proc(self: pointer, param1: cstring): pointer {.cdecl, raises: [], gcsafe.}
  metacall*: proc(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.cdecl, raises: [], gcsafe.}
  event*: proc(self: pointer, event: pointer): bool {.cdecl, raises: [], gcsafe.}
  updateCurrentValue*: proc(self: pointer, value: pointer): void {.cdecl, raises: [], gcsafe.}
  updateState*: proc(self: pointer, newState: cint, oldState: cint): void {.cdecl, raises: [], gcsafe.}
  duration*: proc(self: pointer): cint {.cdecl, raises: [], gcsafe.}
  updateCurrentTime*: proc(self: pointer, param1: cint): void {.cdecl, raises: [], gcsafe.}
  interpolated*: proc(self: pointer, fromVal: pointer, to: pointer, progress: float64): pointer {.cdecl, raises: [], gcsafe.}
  updateDirection*: proc(self: pointer, direction: cint): void {.cdecl, raises: [], gcsafe.}
  eventFilter*: proc(self: pointer, watched: pointer, event: pointer): bool {.cdecl, raises: [], gcsafe.}
  timerEvent*: proc(self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  childEvent*: proc(self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  customEvent*: proc(self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  connectNotify*: proc(self: pointer, signal: pointer): void {.cdecl, raises: [], gcsafe.}
  disconnectNotify*: proc(self: pointer, signal: pointer): void {.cdecl, raises: [], gcsafe.}
proc fcQPropertyAnimation_virtualbase_metaObject(self: pointer): pointer {.importc: "QPropertyAnimation_virtualbase_metaObject".}
proc fcQPropertyAnimation_virtualbase_metacast(self: pointer, param1: cstring): pointer {.importc: "QPropertyAnimation_virtualbase_metacast".}
proc fcQPropertyAnimation_virtualbase_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.importc: "QPropertyAnimation_virtualbase_metacall".}
proc fcQPropertyAnimation_virtualbase_event(self: pointer, event: pointer): bool {.importc: "QPropertyAnimation_virtualbase_event".}
proc fcQPropertyAnimation_virtualbase_updateCurrentValue(self: pointer, value: pointer): void {.importc: "QPropertyAnimation_virtualbase_updateCurrentValue".}
proc fcQPropertyAnimation_virtualbase_updateState(self: pointer, newState: cint, oldState: cint): void {.importc: "QPropertyAnimation_virtualbase_updateState".}
proc fcQPropertyAnimation_virtualbase_duration(self: pointer): cint {.importc: "QPropertyAnimation_virtualbase_duration".}
proc fcQPropertyAnimation_virtualbase_updateCurrentTime(self: pointer, param1: cint): void {.importc: "QPropertyAnimation_virtualbase_updateCurrentTime".}
proc fcQPropertyAnimation_virtualbase_interpolated(self: pointer, fromVal: pointer, to: pointer, progress: float64): pointer {.importc: "QPropertyAnimation_virtualbase_interpolated".}
proc fcQPropertyAnimation_virtualbase_updateDirection(self: pointer, direction: cint): void {.importc: "QPropertyAnimation_virtualbase_updateDirection".}
proc fcQPropertyAnimation_virtualbase_eventFilter(self: pointer, watched: pointer, event: pointer): bool {.importc: "QPropertyAnimation_virtualbase_eventFilter".}
proc fcQPropertyAnimation_virtualbase_timerEvent(self: pointer, event: pointer): void {.importc: "QPropertyAnimation_virtualbase_timerEvent".}
proc fcQPropertyAnimation_virtualbase_childEvent(self: pointer, event: pointer): void {.importc: "QPropertyAnimation_virtualbase_childEvent".}
proc fcQPropertyAnimation_virtualbase_customEvent(self: pointer, event: pointer): void {.importc: "QPropertyAnimation_virtualbase_customEvent".}
proc fcQPropertyAnimation_virtualbase_connectNotify(self: pointer, signal: pointer): void {.importc: "QPropertyAnimation_virtualbase_connectNotify".}
proc fcQPropertyAnimation_virtualbase_disconnectNotify(self: pointer, signal: pointer): void {.importc: "QPropertyAnimation_virtualbase_disconnectNotify".}
proc fcQPropertyAnimation_protectedbase_sender(self: pointer): pointer {.importc: "QPropertyAnimation_protectedbase_sender".}
proc fcQPropertyAnimation_protectedbase_senderSignalIndex(self: pointer): cint {.importc: "QPropertyAnimation_protectedbase_senderSignalIndex".}
proc fcQPropertyAnimation_protectedbase_receivers(self: pointer, signal: cstring): cint {.importc: "QPropertyAnimation_protectedbase_receivers".}
proc fcQPropertyAnimation_protectedbase_isSignalConnected(self: pointer, signal: pointer): bool {.importc: "QPropertyAnimation_protectedbase_isSignalConnected".}
proc fcQPropertyAnimation_new(vtbl, vdata: pointer): ptr cQPropertyAnimation {.importc: "QPropertyAnimation_new".}
proc fcQPropertyAnimation_new2(vtbl, vdata: pointer, target: pointer, propertyName: struct_miqt_string): ptr cQPropertyAnimation {.importc: "QPropertyAnimation_new2".}
proc fcQPropertyAnimation_new3(vtbl, vdata: pointer, parent: pointer): ptr cQPropertyAnimation {.importc: "QPropertyAnimation_new3".}
proc fcQPropertyAnimation_new4(vtbl, vdata: pointer, target: pointer, propertyName: struct_miqt_string, parent: pointer): ptr cQPropertyAnimation {.importc: "QPropertyAnimation_new4".}
proc fcQPropertyAnimation_staticMetaObject(): pointer {.importc: "QPropertyAnimation_staticMetaObject".}

proc metaObject*(self: gen_qpropertyanimation_types.QPropertyAnimation): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQPropertyAnimation_metaObject(self.h), owned: false)

proc metacast*(self: gen_qpropertyanimation_types.QPropertyAnimation, param1: cstring): pointer =
  fcQPropertyAnimation_metacast(self.h, param1)

proc metacall*(self: gen_qpropertyanimation_types.QPropertyAnimation, param1: cint, param2: cint, param3: pointer): cint =
  fcQPropertyAnimation_metacall(self.h, cint(param1), param2, param3)

proc tr*(_: type gen_qpropertyanimation_types.QPropertyAnimation, s: cstring): string =
  let v_ms = fcQPropertyAnimation_tr(s)
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

proc targetObject*(self: gen_qpropertyanimation_types.QPropertyAnimation): gen_qobject_types.QObject =
  gen_qobject_types.QObject(h: fcQPropertyAnimation_targetObject(self.h), owned: false)

proc setTargetObject*(self: gen_qpropertyanimation_types.QPropertyAnimation, target: gen_qobject_types.QObject): void =
  fcQPropertyAnimation_setTargetObject(self.h, target.h)

proc propertyName*(self: gen_qpropertyanimation_types.QPropertyAnimation): seq[byte] =
  var v_bytearray = fcQPropertyAnimation_propertyName(self.h)
  var vx_ret = @(toOpenArray(cast[ptr UncheckedArray[byte]](v_bytearray.data), 0, int(v_bytearray.len)-1))
  c_free(v_bytearray.data)
  vx_ret

proc setPropertyName*(self: gen_qpropertyanimation_types.QPropertyAnimation, propertyName: openArray[byte]): void =
  fcQPropertyAnimation_setPropertyName(self.h, struct_miqt_string(data: cast[cstring](if len(propertyName) == 0: nil else: unsafeAddr propertyName[0]), len: csize_t(len(propertyName))))

proc tr*(_: type gen_qpropertyanimation_types.QPropertyAnimation, s: cstring, c: cstring): string =
  let v_ms = fcQPropertyAnimation_tr2(s, c)
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

proc tr*(_: type gen_qpropertyanimation_types.QPropertyAnimation, s: cstring, c: cstring, n: cint): string =
  let v_ms = fcQPropertyAnimation_tr3(s, c, n)
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

type QPropertyAnimationmetaObjectProc* = proc(self: QPropertyAnimation): gen_qobjectdefs_types.QMetaObject {.raises: [], gcsafe.}
type QPropertyAnimationmetacastProc* = proc(self: QPropertyAnimation, param1: cstring): pointer {.raises: [], gcsafe.}
type QPropertyAnimationmetacallProc* = proc(self: QPropertyAnimation, param1: cint, param2: cint, param3: pointer): cint {.raises: [], gcsafe.}
type QPropertyAnimationeventProc* = proc(self: QPropertyAnimation, event: gen_qcoreevent_types.QEvent): bool {.raises: [], gcsafe.}
type QPropertyAnimationupdateCurrentValueProc* = proc(self: QPropertyAnimation, value: gen_qvariant_types.QVariant): void {.raises: [], gcsafe.}
type QPropertyAnimationupdateStateProc* = proc(self: QPropertyAnimation, newState: cint, oldState: cint): void {.raises: [], gcsafe.}
type QPropertyAnimationdurationProc* = proc(self: QPropertyAnimation): cint {.raises: [], gcsafe.}
type QPropertyAnimationupdateCurrentTimeProc* = proc(self: QPropertyAnimation, param1: cint): void {.raises: [], gcsafe.}
type QPropertyAnimationinterpolatedProc* = proc(self: QPropertyAnimation, fromVal: gen_qvariant_types.QVariant, to: gen_qvariant_types.QVariant, progress: float64): gen_qvariant_types.QVariant {.raises: [], gcsafe.}
type QPropertyAnimationupdateDirectionProc* = proc(self: QPropertyAnimation, direction: cint): void {.raises: [], gcsafe.}
type QPropertyAnimationeventFilterProc* = proc(self: QPropertyAnimation, watched: gen_qobject_types.QObject, event: gen_qcoreevent_types.QEvent): bool {.raises: [], gcsafe.}
type QPropertyAnimationtimerEventProc* = proc(self: QPropertyAnimation, event: gen_qcoreevent_types.QTimerEvent): void {.raises: [], gcsafe.}
type QPropertyAnimationchildEventProc* = proc(self: QPropertyAnimation, event: gen_qcoreevent_types.QChildEvent): void {.raises: [], gcsafe.}
type QPropertyAnimationcustomEventProc* = proc(self: QPropertyAnimation, event: gen_qcoreevent_types.QEvent): void {.raises: [], gcsafe.}
type QPropertyAnimationconnectNotifyProc* = proc(self: QPropertyAnimation, signal: gen_qmetaobject_types.QMetaMethod): void {.raises: [], gcsafe.}
type QPropertyAnimationdisconnectNotifyProc* = proc(self: QPropertyAnimation, signal: gen_qmetaobject_types.QMetaMethod): void {.raises: [], gcsafe.}

type QPropertyAnimationVTable* {.inheritable, pure.} = object
  vtbl: cQPropertyAnimationVTable
  metaObject*: QPropertyAnimationmetaObjectProc
  metacast*: QPropertyAnimationmetacastProc
  metacall*: QPropertyAnimationmetacallProc
  event*: QPropertyAnimationeventProc
  updateCurrentValue*: QPropertyAnimationupdateCurrentValueProc
  updateState*: QPropertyAnimationupdateStateProc
  duration*: QPropertyAnimationdurationProc
  updateCurrentTime*: QPropertyAnimationupdateCurrentTimeProc
  interpolated*: QPropertyAnimationinterpolatedProc
  updateDirection*: QPropertyAnimationupdateDirectionProc
  eventFilter*: QPropertyAnimationeventFilterProc
  timerEvent*: QPropertyAnimationtimerEventProc
  childEvent*: QPropertyAnimationchildEventProc
  customEvent*: QPropertyAnimationcustomEventProc
  connectNotify*: QPropertyAnimationconnectNotifyProc
  disconnectNotify*: QPropertyAnimationdisconnectNotifyProc

proc QPropertyAnimationmetaObject*(self: gen_qpropertyanimation_types.QPropertyAnimation): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQPropertyAnimation_virtualbase_metaObject(self.h), owned: false)

proc QPropertyAnimationmetacast*(self: gen_qpropertyanimation_types.QPropertyAnimation, param1: cstring): pointer =
  fcQPropertyAnimation_virtualbase_metacast(self.h, param1)

proc QPropertyAnimationmetacall*(self: gen_qpropertyanimation_types.QPropertyAnimation, param1: cint, param2: cint, param3: pointer): cint =
  fcQPropertyAnimation_virtualbase_metacall(self.h, cint(param1), param2, param3)

proc QPropertyAnimationevent*(self: gen_qpropertyanimation_types.QPropertyAnimation, event: gen_qcoreevent_types.QEvent): bool =
  fcQPropertyAnimation_virtualbase_event(self.h, event.h)

proc QPropertyAnimationupdateCurrentValue*(self: gen_qpropertyanimation_types.QPropertyAnimation, value: gen_qvariant_types.QVariant): void =
  fcQPropertyAnimation_virtualbase_updateCurrentValue(self.h, value.h)

proc QPropertyAnimationupdateState*(self: gen_qpropertyanimation_types.QPropertyAnimation, newState: cint, oldState: cint): void =
  fcQPropertyAnimation_virtualbase_updateState(self.h, cint(newState), cint(oldState))

proc QPropertyAnimationduration*(self: gen_qpropertyanimation_types.QPropertyAnimation): cint =
  fcQPropertyAnimation_virtualbase_duration(self.h)

proc QPropertyAnimationupdateCurrentTime*(self: gen_qpropertyanimation_types.QPropertyAnimation, param1: cint): void =
  fcQPropertyAnimation_virtualbase_updateCurrentTime(self.h, param1)

proc QPropertyAnimationinterpolated*(self: gen_qpropertyanimation_types.QPropertyAnimation, fromVal: gen_qvariant_types.QVariant, to: gen_qvariant_types.QVariant, progress: float64): gen_qvariant_types.QVariant =
  gen_qvariant_types.QVariant(h: fcQPropertyAnimation_virtualbase_interpolated(self.h, fromVal.h, to.h, progress), owned: true)

proc QPropertyAnimationupdateDirection*(self: gen_qpropertyanimation_types.QPropertyAnimation, direction: cint): void =
  fcQPropertyAnimation_virtualbase_updateDirection(self.h, cint(direction))

proc QPropertyAnimationeventFilter*(self: gen_qpropertyanimation_types.QPropertyAnimation, watched: gen_qobject_types.QObject, event: gen_qcoreevent_types.QEvent): bool =
  fcQPropertyAnimation_virtualbase_eventFilter(self.h, watched.h, event.h)

proc QPropertyAnimationtimerEvent*(self: gen_qpropertyanimation_types.QPropertyAnimation, event: gen_qcoreevent_types.QTimerEvent): void =
  fcQPropertyAnimation_virtualbase_timerEvent(self.h, event.h)

proc QPropertyAnimationchildEvent*(self: gen_qpropertyanimation_types.QPropertyAnimation, event: gen_qcoreevent_types.QChildEvent): void =
  fcQPropertyAnimation_virtualbase_childEvent(self.h, event.h)

proc QPropertyAnimationcustomEvent*(self: gen_qpropertyanimation_types.QPropertyAnimation, event: gen_qcoreevent_types.QEvent): void =
  fcQPropertyAnimation_virtualbase_customEvent(self.h, event.h)

proc QPropertyAnimationconnectNotify*(self: gen_qpropertyanimation_types.QPropertyAnimation, signal: gen_qmetaobject_types.QMetaMethod): void =
  fcQPropertyAnimation_virtualbase_connectNotify(self.h, signal.h)

proc QPropertyAnimationdisconnectNotify*(self: gen_qpropertyanimation_types.QPropertyAnimation, signal: gen_qmetaobject_types.QMetaMethod): void =
  fcQPropertyAnimation_virtualbase_disconnectNotify(self.h, signal.h)


proc fcQPropertyAnimation_vtable_callback_metaObject(self: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QPropertyAnimationVTable](fcQPropertyAnimation_vdata(self))
  let self = QPropertyAnimation(h: self)
  var virtualReturn = vtbl[].metaObject(self)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc fcQPropertyAnimation_vtable_callback_metacast(self: pointer, param1: cstring): pointer {.cdecl.} =
  let vtbl = cast[ptr QPropertyAnimationVTable](fcQPropertyAnimation_vdata(self))
  let self = QPropertyAnimation(h: self)
  let slotval1 = (param1)
  var virtualReturn = vtbl[].metacast(self, slotval1)
  virtualReturn

proc fcQPropertyAnimation_vtable_callback_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.cdecl.} =
  let vtbl = cast[ptr QPropertyAnimationVTable](fcQPropertyAnimation_vdata(self))
  let self = QPropertyAnimation(h: self)
  let slotval1 = cint(param1)
  let slotval2 = param2
  let slotval3 = param3
  var virtualReturn = vtbl[].metacall(self, slotval1, slotval2, slotval3)
  virtualReturn

proc fcQPropertyAnimation_vtable_callback_event(self: pointer, event: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QPropertyAnimationVTable](fcQPropertyAnimation_vdata(self))
  let self = QPropertyAnimation(h: self)
  let slotval1 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  var virtualReturn = vtbl[].event(self, slotval1)
  virtualReturn

proc fcQPropertyAnimation_vtable_callback_updateCurrentValue(self: pointer, value: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QPropertyAnimationVTable](fcQPropertyAnimation_vdata(self))
  let self = QPropertyAnimation(h: self)
  let slotval1 = gen_qvariant_types.QVariant(h: value, owned: false)
  vtbl[].updateCurrentValue(self, slotval1)

proc fcQPropertyAnimation_vtable_callback_updateState(self: pointer, newState: cint, oldState: cint): void {.cdecl.} =
  let vtbl = cast[ptr QPropertyAnimationVTable](fcQPropertyAnimation_vdata(self))
  let self = QPropertyAnimation(h: self)
  let slotval1 = cint(newState)
  let slotval2 = cint(oldState)
  vtbl[].updateState(self, slotval1, slotval2)

proc fcQPropertyAnimation_vtable_callback_duration(self: pointer): cint {.cdecl.} =
  let vtbl = cast[ptr QPropertyAnimationVTable](fcQPropertyAnimation_vdata(self))
  let self = QPropertyAnimation(h: self)
  var virtualReturn = vtbl[].duration(self)
  virtualReturn

proc fcQPropertyAnimation_vtable_callback_updateCurrentTime(self: pointer, param1: cint): void {.cdecl.} =
  let vtbl = cast[ptr QPropertyAnimationVTable](fcQPropertyAnimation_vdata(self))
  let self = QPropertyAnimation(h: self)
  let slotval1 = param1
  vtbl[].updateCurrentTime(self, slotval1)

proc fcQPropertyAnimation_vtable_callback_interpolated(self: pointer, fromVal: pointer, to: pointer, progress: float64): pointer {.cdecl.} =
  let vtbl = cast[ptr QPropertyAnimationVTable](fcQPropertyAnimation_vdata(self))
  let self = QPropertyAnimation(h: self)
  let slotval1 = gen_qvariant_types.QVariant(h: fromVal, owned: false)
  let slotval2 = gen_qvariant_types.QVariant(h: to, owned: false)
  let slotval3 = progress
  var virtualReturn = vtbl[].interpolated(self, slotval1, slotval2, slotval3)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc fcQPropertyAnimation_vtable_callback_updateDirection(self: pointer, direction: cint): void {.cdecl.} =
  let vtbl = cast[ptr QPropertyAnimationVTable](fcQPropertyAnimation_vdata(self))
  let self = QPropertyAnimation(h: self)
  let slotval1 = cint(direction)
  vtbl[].updateDirection(self, slotval1)

proc fcQPropertyAnimation_vtable_callback_eventFilter(self: pointer, watched: pointer, event: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QPropertyAnimationVTable](fcQPropertyAnimation_vdata(self))
  let self = QPropertyAnimation(h: self)
  let slotval1 = gen_qobject_types.QObject(h: watched, owned: false)
  let slotval2 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  var virtualReturn = vtbl[].eventFilter(self, slotval1, slotval2)
  virtualReturn

proc fcQPropertyAnimation_vtable_callback_timerEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QPropertyAnimationVTable](fcQPropertyAnimation_vdata(self))
  let self = QPropertyAnimation(h: self)
  let slotval1 = gen_qcoreevent_types.QTimerEvent(h: event, owned: false)
  vtbl[].timerEvent(self, slotval1)

proc fcQPropertyAnimation_vtable_callback_childEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QPropertyAnimationVTable](fcQPropertyAnimation_vdata(self))
  let self = QPropertyAnimation(h: self)
  let slotval1 = gen_qcoreevent_types.QChildEvent(h: event, owned: false)
  vtbl[].childEvent(self, slotval1)

proc fcQPropertyAnimation_vtable_callback_customEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QPropertyAnimationVTable](fcQPropertyAnimation_vdata(self))
  let self = QPropertyAnimation(h: self)
  let slotval1 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  vtbl[].customEvent(self, slotval1)

proc fcQPropertyAnimation_vtable_callback_connectNotify(self: pointer, signal: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QPropertyAnimationVTable](fcQPropertyAnimation_vdata(self))
  let self = QPropertyAnimation(h: self)
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal, owned: false)
  vtbl[].connectNotify(self, slotval1)

proc fcQPropertyAnimation_vtable_callback_disconnectNotify(self: pointer, signal: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QPropertyAnimationVTable](fcQPropertyAnimation_vdata(self))
  let self = QPropertyAnimation(h: self)
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal, owned: false)
  vtbl[].disconnectNotify(self, slotval1)

type VirtualQPropertyAnimation* {.inheritable.} = ref object of QPropertyAnimation
  vtbl*: cQPropertyAnimationVTable

method metaObject*(self: VirtualQPropertyAnimation): gen_qobjectdefs_types.QMetaObject {.base.} =
  QPropertyAnimationmetaObject(self[])
method metacast*(self: VirtualQPropertyAnimation, param1: cstring): pointer {.base.} =
  QPropertyAnimationmetacast(self[], param1)
method metacall*(self: VirtualQPropertyAnimation, param1: cint, param2: cint, param3: pointer): cint {.base.} =
  QPropertyAnimationmetacall(self[], param1, param2, param3)
method event*(self: VirtualQPropertyAnimation, event: gen_qcoreevent_types.QEvent): bool {.base.} =
  QPropertyAnimationevent(self[], event)
method updateCurrentValue*(self: VirtualQPropertyAnimation, value: gen_qvariant_types.QVariant): void {.base.} =
  QPropertyAnimationupdateCurrentValue(self[], value)
method updateState*(self: VirtualQPropertyAnimation, newState: cint, oldState: cint): void {.base.} =
  QPropertyAnimationupdateState(self[], newState, oldState)
method duration*(self: VirtualQPropertyAnimation): cint {.base.} =
  QPropertyAnimationduration(self[])
method updateCurrentTime*(self: VirtualQPropertyAnimation, param1: cint): void {.base.} =
  QPropertyAnimationupdateCurrentTime(self[], param1)
method interpolated*(self: VirtualQPropertyAnimation, fromVal: gen_qvariant_types.QVariant, to: gen_qvariant_types.QVariant, progress: float64): gen_qvariant_types.QVariant {.base.} =
  QPropertyAnimationinterpolated(self[], fromVal, to, progress)
method updateDirection*(self: VirtualQPropertyAnimation, direction: cint): void {.base.} =
  QPropertyAnimationupdateDirection(self[], direction)
method eventFilter*(self: VirtualQPropertyAnimation, watched: gen_qobject_types.QObject, event: gen_qcoreevent_types.QEvent): bool {.base.} =
  QPropertyAnimationeventFilter(self[], watched, event)
method timerEvent*(self: VirtualQPropertyAnimation, event: gen_qcoreevent_types.QTimerEvent): void {.base.} =
  QPropertyAnimationtimerEvent(self[], event)
method childEvent*(self: VirtualQPropertyAnimation, event: gen_qcoreevent_types.QChildEvent): void {.base.} =
  QPropertyAnimationchildEvent(self[], event)
method customEvent*(self: VirtualQPropertyAnimation, event: gen_qcoreevent_types.QEvent): void {.base.} =
  QPropertyAnimationcustomEvent(self[], event)
method connectNotify*(self: VirtualQPropertyAnimation, signal: gen_qmetaobject_types.QMetaMethod): void {.base.} =
  QPropertyAnimationconnectNotify(self[], signal)
method disconnectNotify*(self: VirtualQPropertyAnimation, signal: gen_qmetaobject_types.QMetaMethod): void {.base.} =
  QPropertyAnimationdisconnectNotify(self[], signal)

proc fcQPropertyAnimation_method_callback_metaObject(self: pointer): pointer {.cdecl.} =
  let inst = cast[VirtualQPropertyAnimation](fcQPropertyAnimation_vdata(self))
  var virtualReturn = inst.metaObject()
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc fcQPropertyAnimation_method_callback_metacast(self: pointer, param1: cstring): pointer {.cdecl.} =
  let inst = cast[VirtualQPropertyAnimation](fcQPropertyAnimation_vdata(self))
  let slotval1 = (param1)
  var virtualReturn = inst.metacast(slotval1)
  virtualReturn

proc fcQPropertyAnimation_method_callback_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.cdecl.} =
  let inst = cast[VirtualQPropertyAnimation](fcQPropertyAnimation_vdata(self))
  let slotval1 = cint(param1)
  let slotval2 = param2
  let slotval3 = param3
  var virtualReturn = inst.metacall(slotval1, slotval2, slotval3)
  virtualReturn

proc fcQPropertyAnimation_method_callback_event(self: pointer, event: pointer): bool {.cdecl.} =
  let inst = cast[VirtualQPropertyAnimation](fcQPropertyAnimation_vdata(self))
  let slotval1 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  var virtualReturn = inst.event(slotval1)
  virtualReturn

proc fcQPropertyAnimation_method_callback_updateCurrentValue(self: pointer, value: pointer): void {.cdecl.} =
  let inst = cast[VirtualQPropertyAnimation](fcQPropertyAnimation_vdata(self))
  let slotval1 = gen_qvariant_types.QVariant(h: value, owned: false)
  inst.updateCurrentValue(slotval1)

proc fcQPropertyAnimation_method_callback_updateState(self: pointer, newState: cint, oldState: cint): void {.cdecl.} =
  let inst = cast[VirtualQPropertyAnimation](fcQPropertyAnimation_vdata(self))
  let slotval1 = cint(newState)
  let slotval2 = cint(oldState)
  inst.updateState(slotval1, slotval2)

proc fcQPropertyAnimation_method_callback_duration(self: pointer): cint {.cdecl.} =
  let inst = cast[VirtualQPropertyAnimation](fcQPropertyAnimation_vdata(self))
  var virtualReturn = inst.duration()
  virtualReturn

proc fcQPropertyAnimation_method_callback_updateCurrentTime(self: pointer, param1: cint): void {.cdecl.} =
  let inst = cast[VirtualQPropertyAnimation](fcQPropertyAnimation_vdata(self))
  let slotval1 = param1
  inst.updateCurrentTime(slotval1)

proc fcQPropertyAnimation_method_callback_interpolated(self: pointer, fromVal: pointer, to: pointer, progress: float64): pointer {.cdecl.} =
  let inst = cast[VirtualQPropertyAnimation](fcQPropertyAnimation_vdata(self))
  let slotval1 = gen_qvariant_types.QVariant(h: fromVal, owned: false)
  let slotval2 = gen_qvariant_types.QVariant(h: to, owned: false)
  let slotval3 = progress
  var virtualReturn = inst.interpolated(slotval1, slotval2, slotval3)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc fcQPropertyAnimation_method_callback_updateDirection(self: pointer, direction: cint): void {.cdecl.} =
  let inst = cast[VirtualQPropertyAnimation](fcQPropertyAnimation_vdata(self))
  let slotval1 = cint(direction)
  inst.updateDirection(slotval1)

proc fcQPropertyAnimation_method_callback_eventFilter(self: pointer, watched: pointer, event: pointer): bool {.cdecl.} =
  let inst = cast[VirtualQPropertyAnimation](fcQPropertyAnimation_vdata(self))
  let slotval1 = gen_qobject_types.QObject(h: watched, owned: false)
  let slotval2 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  var virtualReturn = inst.eventFilter(slotval1, slotval2)
  virtualReturn

proc fcQPropertyAnimation_method_callback_timerEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQPropertyAnimation](fcQPropertyAnimation_vdata(self))
  let slotval1 = gen_qcoreevent_types.QTimerEvent(h: event, owned: false)
  inst.timerEvent(slotval1)

proc fcQPropertyAnimation_method_callback_childEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQPropertyAnimation](fcQPropertyAnimation_vdata(self))
  let slotval1 = gen_qcoreevent_types.QChildEvent(h: event, owned: false)
  inst.childEvent(slotval1)

proc fcQPropertyAnimation_method_callback_customEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQPropertyAnimation](fcQPropertyAnimation_vdata(self))
  let slotval1 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  inst.customEvent(slotval1)

proc fcQPropertyAnimation_method_callback_connectNotify(self: pointer, signal: pointer): void {.cdecl.} =
  let inst = cast[VirtualQPropertyAnimation](fcQPropertyAnimation_vdata(self))
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal, owned: false)
  inst.connectNotify(slotval1)

proc fcQPropertyAnimation_method_callback_disconnectNotify(self: pointer, signal: pointer): void {.cdecl.} =
  let inst = cast[VirtualQPropertyAnimation](fcQPropertyAnimation_vdata(self))
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal, owned: false)
  inst.disconnectNotify(slotval1)


proc sender*(self: gen_qpropertyanimation_types.QPropertyAnimation): gen_qobject_types.QObject =
  gen_qobject_types.QObject(h: fcQPropertyAnimation_protectedbase_sender(self.h), owned: false)

proc senderSignalIndex*(self: gen_qpropertyanimation_types.QPropertyAnimation): cint =
  fcQPropertyAnimation_protectedbase_senderSignalIndex(self.h)

proc receivers*(self: gen_qpropertyanimation_types.QPropertyAnimation, signal: cstring): cint =
  fcQPropertyAnimation_protectedbase_receivers(self.h, signal)

proc isSignalConnected*(self: gen_qpropertyanimation_types.QPropertyAnimation, signal: gen_qmetaobject_types.QMetaMethod): bool =
  fcQPropertyAnimation_protectedbase_isSignalConnected(self.h, signal.h)

proc create*(T: type gen_qpropertyanimation_types.QPropertyAnimation,
    vtbl: ref QPropertyAnimationVTable = nil): gen_qpropertyanimation_types.QPropertyAnimation =
  let vtbl = if vtbl == nil: new QPropertyAnimationVTable else: vtbl
  GC_ref(vtbl)
  vtbl[].vtbl.destructor = proc(self: pointer) {.cdecl.} =
    let vtbl = cast[ref QPropertyAnimationVTable](fcQPropertyAnimation_vdata(self))
    GC_unref(vtbl)
  if not isNil(vtbl[].metaObject):
    vtbl[].vtbl.metaObject = fcQPropertyAnimation_vtable_callback_metaObject
  if not isNil(vtbl[].metacast):
    vtbl[].vtbl.metacast = fcQPropertyAnimation_vtable_callback_metacast
  if not isNil(vtbl[].metacall):
    vtbl[].vtbl.metacall = fcQPropertyAnimation_vtable_callback_metacall
  if not isNil(vtbl[].event):
    vtbl[].vtbl.event = fcQPropertyAnimation_vtable_callback_event
  if not isNil(vtbl[].updateCurrentValue):
    vtbl[].vtbl.updateCurrentValue = fcQPropertyAnimation_vtable_callback_updateCurrentValue
  if not isNil(vtbl[].updateState):
    vtbl[].vtbl.updateState = fcQPropertyAnimation_vtable_callback_updateState
  if not isNil(vtbl[].duration):
    vtbl[].vtbl.duration = fcQPropertyAnimation_vtable_callback_duration
  if not isNil(vtbl[].updateCurrentTime):
    vtbl[].vtbl.updateCurrentTime = fcQPropertyAnimation_vtable_callback_updateCurrentTime
  if not isNil(vtbl[].interpolated):
    vtbl[].vtbl.interpolated = fcQPropertyAnimation_vtable_callback_interpolated
  if not isNil(vtbl[].updateDirection):
    vtbl[].vtbl.updateDirection = fcQPropertyAnimation_vtable_callback_updateDirection
  if not isNil(vtbl[].eventFilter):
    vtbl[].vtbl.eventFilter = fcQPropertyAnimation_vtable_callback_eventFilter
  if not isNil(vtbl[].timerEvent):
    vtbl[].vtbl.timerEvent = fcQPropertyAnimation_vtable_callback_timerEvent
  if not isNil(vtbl[].childEvent):
    vtbl[].vtbl.childEvent = fcQPropertyAnimation_vtable_callback_childEvent
  if not isNil(vtbl[].customEvent):
    vtbl[].vtbl.customEvent = fcQPropertyAnimation_vtable_callback_customEvent
  if not isNil(vtbl[].connectNotify):
    vtbl[].vtbl.connectNotify = fcQPropertyAnimation_vtable_callback_connectNotify
  if not isNil(vtbl[].disconnectNotify):
    vtbl[].vtbl.disconnectNotify = fcQPropertyAnimation_vtable_callback_disconnectNotify
  gen_qpropertyanimation_types.QPropertyAnimation(h: fcQPropertyAnimation_new(addr(vtbl[].vtbl), addr(vtbl[])), owned: true)

proc create*(T: type gen_qpropertyanimation_types.QPropertyAnimation,
    target: gen_qobject_types.QObject, propertyName: openArray[byte],
    vtbl: ref QPropertyAnimationVTable = nil): gen_qpropertyanimation_types.QPropertyAnimation =
  let vtbl = if vtbl == nil: new QPropertyAnimationVTable else: vtbl
  GC_ref(vtbl)
  vtbl[].vtbl.destructor = proc(self: pointer) {.cdecl.} =
    let vtbl = cast[ref QPropertyAnimationVTable](fcQPropertyAnimation_vdata(self))
    GC_unref(vtbl)
  if not isNil(vtbl[].metaObject):
    vtbl[].vtbl.metaObject = fcQPropertyAnimation_vtable_callback_metaObject
  if not isNil(vtbl[].metacast):
    vtbl[].vtbl.metacast = fcQPropertyAnimation_vtable_callback_metacast
  if not isNil(vtbl[].metacall):
    vtbl[].vtbl.metacall = fcQPropertyAnimation_vtable_callback_metacall
  if not isNil(vtbl[].event):
    vtbl[].vtbl.event = fcQPropertyAnimation_vtable_callback_event
  if not isNil(vtbl[].updateCurrentValue):
    vtbl[].vtbl.updateCurrentValue = fcQPropertyAnimation_vtable_callback_updateCurrentValue
  if not isNil(vtbl[].updateState):
    vtbl[].vtbl.updateState = fcQPropertyAnimation_vtable_callback_updateState
  if not isNil(vtbl[].duration):
    vtbl[].vtbl.duration = fcQPropertyAnimation_vtable_callback_duration
  if not isNil(vtbl[].updateCurrentTime):
    vtbl[].vtbl.updateCurrentTime = fcQPropertyAnimation_vtable_callback_updateCurrentTime
  if not isNil(vtbl[].interpolated):
    vtbl[].vtbl.interpolated = fcQPropertyAnimation_vtable_callback_interpolated
  if not isNil(vtbl[].updateDirection):
    vtbl[].vtbl.updateDirection = fcQPropertyAnimation_vtable_callback_updateDirection
  if not isNil(vtbl[].eventFilter):
    vtbl[].vtbl.eventFilter = fcQPropertyAnimation_vtable_callback_eventFilter
  if not isNil(vtbl[].timerEvent):
    vtbl[].vtbl.timerEvent = fcQPropertyAnimation_vtable_callback_timerEvent
  if not isNil(vtbl[].childEvent):
    vtbl[].vtbl.childEvent = fcQPropertyAnimation_vtable_callback_childEvent
  if not isNil(vtbl[].customEvent):
    vtbl[].vtbl.customEvent = fcQPropertyAnimation_vtable_callback_customEvent
  if not isNil(vtbl[].connectNotify):
    vtbl[].vtbl.connectNotify = fcQPropertyAnimation_vtable_callback_connectNotify
  if not isNil(vtbl[].disconnectNotify):
    vtbl[].vtbl.disconnectNotify = fcQPropertyAnimation_vtable_callback_disconnectNotify
  gen_qpropertyanimation_types.QPropertyAnimation(h: fcQPropertyAnimation_new2(addr(vtbl[].vtbl), addr(vtbl[]), target.h, struct_miqt_string(data: cast[cstring](if len(propertyName) == 0: nil else: unsafeAddr propertyName[0]), len: csize_t(len(propertyName)))), owned: true)

proc create*(T: type gen_qpropertyanimation_types.QPropertyAnimation,
    parent: gen_qobject_types.QObject,
    vtbl: ref QPropertyAnimationVTable = nil): gen_qpropertyanimation_types.QPropertyAnimation =
  let vtbl = if vtbl == nil: new QPropertyAnimationVTable else: vtbl
  GC_ref(vtbl)
  vtbl[].vtbl.destructor = proc(self: pointer) {.cdecl.} =
    let vtbl = cast[ref QPropertyAnimationVTable](fcQPropertyAnimation_vdata(self))
    GC_unref(vtbl)
  if not isNil(vtbl[].metaObject):
    vtbl[].vtbl.metaObject = fcQPropertyAnimation_vtable_callback_metaObject
  if not isNil(vtbl[].metacast):
    vtbl[].vtbl.metacast = fcQPropertyAnimation_vtable_callback_metacast
  if not isNil(vtbl[].metacall):
    vtbl[].vtbl.metacall = fcQPropertyAnimation_vtable_callback_metacall
  if not isNil(vtbl[].event):
    vtbl[].vtbl.event = fcQPropertyAnimation_vtable_callback_event
  if not isNil(vtbl[].updateCurrentValue):
    vtbl[].vtbl.updateCurrentValue = fcQPropertyAnimation_vtable_callback_updateCurrentValue
  if not isNil(vtbl[].updateState):
    vtbl[].vtbl.updateState = fcQPropertyAnimation_vtable_callback_updateState
  if not isNil(vtbl[].duration):
    vtbl[].vtbl.duration = fcQPropertyAnimation_vtable_callback_duration
  if not isNil(vtbl[].updateCurrentTime):
    vtbl[].vtbl.updateCurrentTime = fcQPropertyAnimation_vtable_callback_updateCurrentTime
  if not isNil(vtbl[].interpolated):
    vtbl[].vtbl.interpolated = fcQPropertyAnimation_vtable_callback_interpolated
  if not isNil(vtbl[].updateDirection):
    vtbl[].vtbl.updateDirection = fcQPropertyAnimation_vtable_callback_updateDirection
  if not isNil(vtbl[].eventFilter):
    vtbl[].vtbl.eventFilter = fcQPropertyAnimation_vtable_callback_eventFilter
  if not isNil(vtbl[].timerEvent):
    vtbl[].vtbl.timerEvent = fcQPropertyAnimation_vtable_callback_timerEvent
  if not isNil(vtbl[].childEvent):
    vtbl[].vtbl.childEvent = fcQPropertyAnimation_vtable_callback_childEvent
  if not isNil(vtbl[].customEvent):
    vtbl[].vtbl.customEvent = fcQPropertyAnimation_vtable_callback_customEvent
  if not isNil(vtbl[].connectNotify):
    vtbl[].vtbl.connectNotify = fcQPropertyAnimation_vtable_callback_connectNotify
  if not isNil(vtbl[].disconnectNotify):
    vtbl[].vtbl.disconnectNotify = fcQPropertyAnimation_vtable_callback_disconnectNotify
  gen_qpropertyanimation_types.QPropertyAnimation(h: fcQPropertyAnimation_new3(addr(vtbl[].vtbl), addr(vtbl[]), parent.h), owned: true)

proc create*(T: type gen_qpropertyanimation_types.QPropertyAnimation,
    target: gen_qobject_types.QObject, propertyName: openArray[byte], parent: gen_qobject_types.QObject,
    vtbl: ref QPropertyAnimationVTable = nil): gen_qpropertyanimation_types.QPropertyAnimation =
  let vtbl = if vtbl == nil: new QPropertyAnimationVTable else: vtbl
  GC_ref(vtbl)
  vtbl[].vtbl.destructor = proc(self: pointer) {.cdecl.} =
    let vtbl = cast[ref QPropertyAnimationVTable](fcQPropertyAnimation_vdata(self))
    GC_unref(vtbl)
  if not isNil(vtbl[].metaObject):
    vtbl[].vtbl.metaObject = fcQPropertyAnimation_vtable_callback_metaObject
  if not isNil(vtbl[].metacast):
    vtbl[].vtbl.metacast = fcQPropertyAnimation_vtable_callback_metacast
  if not isNil(vtbl[].metacall):
    vtbl[].vtbl.metacall = fcQPropertyAnimation_vtable_callback_metacall
  if not isNil(vtbl[].event):
    vtbl[].vtbl.event = fcQPropertyAnimation_vtable_callback_event
  if not isNil(vtbl[].updateCurrentValue):
    vtbl[].vtbl.updateCurrentValue = fcQPropertyAnimation_vtable_callback_updateCurrentValue
  if not isNil(vtbl[].updateState):
    vtbl[].vtbl.updateState = fcQPropertyAnimation_vtable_callback_updateState
  if not isNil(vtbl[].duration):
    vtbl[].vtbl.duration = fcQPropertyAnimation_vtable_callback_duration
  if not isNil(vtbl[].updateCurrentTime):
    vtbl[].vtbl.updateCurrentTime = fcQPropertyAnimation_vtable_callback_updateCurrentTime
  if not isNil(vtbl[].interpolated):
    vtbl[].vtbl.interpolated = fcQPropertyAnimation_vtable_callback_interpolated
  if not isNil(vtbl[].updateDirection):
    vtbl[].vtbl.updateDirection = fcQPropertyAnimation_vtable_callback_updateDirection
  if not isNil(vtbl[].eventFilter):
    vtbl[].vtbl.eventFilter = fcQPropertyAnimation_vtable_callback_eventFilter
  if not isNil(vtbl[].timerEvent):
    vtbl[].vtbl.timerEvent = fcQPropertyAnimation_vtable_callback_timerEvent
  if not isNil(vtbl[].childEvent):
    vtbl[].vtbl.childEvent = fcQPropertyAnimation_vtable_callback_childEvent
  if not isNil(vtbl[].customEvent):
    vtbl[].vtbl.customEvent = fcQPropertyAnimation_vtable_callback_customEvent
  if not isNil(vtbl[].connectNotify):
    vtbl[].vtbl.connectNotify = fcQPropertyAnimation_vtable_callback_connectNotify
  if not isNil(vtbl[].disconnectNotify):
    vtbl[].vtbl.disconnectNotify = fcQPropertyAnimation_vtable_callback_disconnectNotify
  gen_qpropertyanimation_types.QPropertyAnimation(h: fcQPropertyAnimation_new4(addr(vtbl[].vtbl), addr(vtbl[]), target.h, struct_miqt_string(data: cast[cstring](if len(propertyName) == 0: nil else: unsafeAddr propertyName[0]), len: csize_t(len(propertyName))), parent.h), owned: true)

const cQPropertyAnimation_mvtbl = cQPropertyAnimationVTable(
  destructor: proc(self: pointer) {.cdecl.} =
    let inst = cast[ptr typeof(VirtualQPropertyAnimation()[])](self.fcQPropertyAnimation_vdata())
    inst[].h = nil
    inst[].owned = false,

  metaObject: fcQPropertyAnimation_method_callback_metaObject,
  metacast: fcQPropertyAnimation_method_callback_metacast,
  metacall: fcQPropertyAnimation_method_callback_metacall,
  event: fcQPropertyAnimation_method_callback_event,
  updateCurrentValue: fcQPropertyAnimation_method_callback_updateCurrentValue,
  updateState: fcQPropertyAnimation_method_callback_updateState,
  duration: fcQPropertyAnimation_method_callback_duration,
  updateCurrentTime: fcQPropertyAnimation_method_callback_updateCurrentTime,
  interpolated: fcQPropertyAnimation_method_callback_interpolated,
  updateDirection: fcQPropertyAnimation_method_callback_updateDirection,
  eventFilter: fcQPropertyAnimation_method_callback_eventFilter,
  timerEvent: fcQPropertyAnimation_method_callback_timerEvent,
  childEvent: fcQPropertyAnimation_method_callback_childEvent,
  customEvent: fcQPropertyAnimation_method_callback_customEvent,
  connectNotify: fcQPropertyAnimation_method_callback_connectNotify,
  disconnectNotify: fcQPropertyAnimation_method_callback_disconnectNotify,
)
proc create*(T: type gen_qpropertyanimation_types.QPropertyAnimation,
    inst: VirtualQPropertyAnimation) =
  if inst[].h != nil: delete(move(inst[]))
  inst[].h = fcQPropertyAnimation_new(addr(cQPropertyAnimation_mvtbl), addr(inst[]))
  inst[].owned = true

proc create*(T: type gen_qpropertyanimation_types.QPropertyAnimation,
    target: gen_qobject_types.QObject, propertyName: openArray[byte],
    inst: VirtualQPropertyAnimation) =
  if inst[].h != nil: delete(move(inst[]))
  inst[].h = fcQPropertyAnimation_new2(addr(cQPropertyAnimation_mvtbl), addr(inst[]), target.h, struct_miqt_string(data: cast[cstring](if len(propertyName) == 0: nil else: unsafeAddr propertyName[0]), len: csize_t(len(propertyName))))
  inst[].owned = true

proc create*(T: type gen_qpropertyanimation_types.QPropertyAnimation,
    parent: gen_qobject_types.QObject,
    inst: VirtualQPropertyAnimation) =
  if inst[].h != nil: delete(move(inst[]))
  inst[].h = fcQPropertyAnimation_new3(addr(cQPropertyAnimation_mvtbl), addr(inst[]), parent.h)
  inst[].owned = true

proc create*(T: type gen_qpropertyanimation_types.QPropertyAnimation,
    target: gen_qobject_types.QObject, propertyName: openArray[byte], parent: gen_qobject_types.QObject,
    inst: VirtualQPropertyAnimation) =
  if inst[].h != nil: delete(move(inst[]))
  inst[].h = fcQPropertyAnimation_new4(addr(cQPropertyAnimation_mvtbl), addr(inst[]), target.h, struct_miqt_string(data: cast[cstring](if len(propertyName) == 0: nil else: unsafeAddr propertyName[0]), len: csize_t(len(propertyName))), parent.h)
  inst[].owned = true

proc staticMetaObject*(_: type gen_qpropertyanimation_types.QPropertyAnimation): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQPropertyAnimation_staticMetaObject())
