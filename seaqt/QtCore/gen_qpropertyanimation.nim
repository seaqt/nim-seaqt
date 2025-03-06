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

const cflags = gorge("pkg-config --cflags Qt5Core")  & " -fPIC"
{.compile("gen_qpropertyanimation.cpp", cflags).}


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

proc fcQPropertyAnimation_metaObject(self: pointer, ): pointer {.importc: "QPropertyAnimation_metaObject".}
proc fcQPropertyAnimation_metacast(self: pointer, param1: cstring): pointer {.importc: "QPropertyAnimation_metacast".}
proc fcQPropertyAnimation_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.importc: "QPropertyAnimation_metacall".}
proc fcQPropertyAnimation_tr(s: cstring): struct_miqt_string {.importc: "QPropertyAnimation_tr".}
proc fcQPropertyAnimation_trUtf8(s: cstring): struct_miqt_string {.importc: "QPropertyAnimation_trUtf8".}
proc fcQPropertyAnimation_targetObject(self: pointer, ): pointer {.importc: "QPropertyAnimation_targetObject".}
proc fcQPropertyAnimation_setTargetObject(self: pointer, target: pointer): void {.importc: "QPropertyAnimation_setTargetObject".}
proc fcQPropertyAnimation_propertyName(self: pointer, ): struct_miqt_string {.importc: "QPropertyAnimation_propertyName".}
proc fcQPropertyAnimation_setPropertyName(self: pointer, propertyName: struct_miqt_string): void {.importc: "QPropertyAnimation_setPropertyName".}
proc fcQPropertyAnimation_tr2(s: cstring, c: cstring): struct_miqt_string {.importc: "QPropertyAnimation_tr2".}
proc fcQPropertyAnimation_tr3(s: cstring, c: cstring, n: cint): struct_miqt_string {.importc: "QPropertyAnimation_tr3".}
proc fcQPropertyAnimation_trUtf82(s: cstring, c: cstring): struct_miqt_string {.importc: "QPropertyAnimation_trUtf82".}
proc fcQPropertyAnimation_trUtf83(s: cstring, c: cstring, n: cint): struct_miqt_string {.importc: "QPropertyAnimation_trUtf83".}
type cQPropertyAnimationVTable = object
  destructor*: proc(vtbl: ptr cQPropertyAnimationVTable, self: ptr cQPropertyAnimation) {.cdecl, raises:[], gcsafe.}
  metaObject*: proc(vtbl, self: pointer, ): pointer {.cdecl, raises: [], gcsafe.}
  metacast*: proc(vtbl, self: pointer, param1: cstring): pointer {.cdecl, raises: [], gcsafe.}
  metacall*: proc(vtbl, self: pointer, param1: cint, param2: cint, param3: pointer): cint {.cdecl, raises: [], gcsafe.}
  event*: proc(vtbl, self: pointer, event: pointer): bool {.cdecl, raises: [], gcsafe.}
  updateCurrentValue*: proc(vtbl, self: pointer, value: pointer): void {.cdecl, raises: [], gcsafe.}
  updateState*: proc(vtbl, self: pointer, newState: cint, oldState: cint): void {.cdecl, raises: [], gcsafe.}
  duration*: proc(vtbl, self: pointer, ): cint {.cdecl, raises: [], gcsafe.}
  updateCurrentTime*: proc(vtbl, self: pointer, param1: cint): void {.cdecl, raises: [], gcsafe.}
  interpolated*: proc(vtbl, self: pointer, fromVal: pointer, to: pointer, progress: float64): pointer {.cdecl, raises: [], gcsafe.}
  updateDirection*: proc(vtbl, self: pointer, direction: cint): void {.cdecl, raises: [], gcsafe.}
  eventFilter*: proc(vtbl, self: pointer, watched: pointer, event: pointer): bool {.cdecl, raises: [], gcsafe.}
  timerEvent*: proc(vtbl, self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  childEvent*: proc(vtbl, self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  customEvent*: proc(vtbl, self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  connectNotify*: proc(vtbl, self: pointer, signal: pointer): void {.cdecl, raises: [], gcsafe.}
  disconnectNotify*: proc(vtbl, self: pointer, signal: pointer): void {.cdecl, raises: [], gcsafe.}
proc fcQPropertyAnimation_virtualbase_metaObject(self: pointer, ): pointer {.importc: "QPropertyAnimation_virtualbase_metaObject".}
proc fcQPropertyAnimation_virtualbase_metacast(self: pointer, param1: cstring): pointer {.importc: "QPropertyAnimation_virtualbase_metacast".}
proc fcQPropertyAnimation_virtualbase_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.importc: "QPropertyAnimation_virtualbase_metacall".}
proc fcQPropertyAnimation_virtualbase_event(self: pointer, event: pointer): bool {.importc: "QPropertyAnimation_virtualbase_event".}
proc fcQPropertyAnimation_virtualbase_updateCurrentValue(self: pointer, value: pointer): void {.importc: "QPropertyAnimation_virtualbase_updateCurrentValue".}
proc fcQPropertyAnimation_virtualbase_updateState(self: pointer, newState: cint, oldState: cint): void {.importc: "QPropertyAnimation_virtualbase_updateState".}
proc fcQPropertyAnimation_virtualbase_duration(self: pointer, ): cint {.importc: "QPropertyAnimation_virtualbase_duration".}
proc fcQPropertyAnimation_virtualbase_updateCurrentTime(self: pointer, param1: cint): void {.importc: "QPropertyAnimation_virtualbase_updateCurrentTime".}
proc fcQPropertyAnimation_virtualbase_interpolated(self: pointer, fromVal: pointer, to: pointer, progress: float64): pointer {.importc: "QPropertyAnimation_virtualbase_interpolated".}
proc fcQPropertyAnimation_virtualbase_updateDirection(self: pointer, direction: cint): void {.importc: "QPropertyAnimation_virtualbase_updateDirection".}
proc fcQPropertyAnimation_virtualbase_eventFilter(self: pointer, watched: pointer, event: pointer): bool {.importc: "QPropertyAnimation_virtualbase_eventFilter".}
proc fcQPropertyAnimation_virtualbase_timerEvent(self: pointer, event: pointer): void {.importc: "QPropertyAnimation_virtualbase_timerEvent".}
proc fcQPropertyAnimation_virtualbase_childEvent(self: pointer, event: pointer): void {.importc: "QPropertyAnimation_virtualbase_childEvent".}
proc fcQPropertyAnimation_virtualbase_customEvent(self: pointer, event: pointer): void {.importc: "QPropertyAnimation_virtualbase_customEvent".}
proc fcQPropertyAnimation_virtualbase_connectNotify(self: pointer, signal: pointer): void {.importc: "QPropertyAnimation_virtualbase_connectNotify".}
proc fcQPropertyAnimation_virtualbase_disconnectNotify(self: pointer, signal: pointer): void {.importc: "QPropertyAnimation_virtualbase_disconnectNotify".}
proc fcQPropertyAnimation_protectedbase_sender(self: pointer, ): pointer {.importc: "QPropertyAnimation_protectedbase_sender".}
proc fcQPropertyAnimation_protectedbase_senderSignalIndex(self: pointer, ): cint {.importc: "QPropertyAnimation_protectedbase_senderSignalIndex".}
proc fcQPropertyAnimation_protectedbase_receivers(self: pointer, signal: cstring): cint {.importc: "QPropertyAnimation_protectedbase_receivers".}
proc fcQPropertyAnimation_protectedbase_isSignalConnected(self: pointer, signal: pointer): bool {.importc: "QPropertyAnimation_protectedbase_isSignalConnected".}
proc fcQPropertyAnimation_new(vtbl: pointer, ): ptr cQPropertyAnimation {.importc: "QPropertyAnimation_new".}
proc fcQPropertyAnimation_new2(vtbl: pointer, target: pointer, propertyName: struct_miqt_string): ptr cQPropertyAnimation {.importc: "QPropertyAnimation_new2".}
proc fcQPropertyAnimation_new3(vtbl: pointer, parent: pointer): ptr cQPropertyAnimation {.importc: "QPropertyAnimation_new3".}
proc fcQPropertyAnimation_new4(vtbl: pointer, target: pointer, propertyName: struct_miqt_string, parent: pointer): ptr cQPropertyAnimation {.importc: "QPropertyAnimation_new4".}
proc fcQPropertyAnimation_staticMetaObject(): pointer {.importc: "QPropertyAnimation_staticMetaObject".}
proc fcQPropertyAnimation_delete(self: pointer) {.importc: "QPropertyAnimation_delete".}

proc metaObject*(self: gen_qpropertyanimation_types.QPropertyAnimation, ): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQPropertyAnimation_metaObject(self.h))

proc metacast*(self: gen_qpropertyanimation_types.QPropertyAnimation, param1: cstring): pointer =
  fcQPropertyAnimation_metacast(self.h, param1)

proc metacall*(self: gen_qpropertyanimation_types.QPropertyAnimation, param1: cint, param2: cint, param3: pointer): cint =
  fcQPropertyAnimation_metacall(self.h, cint(param1), param2, param3)

proc tr*(_: type gen_qpropertyanimation_types.QPropertyAnimation, s: cstring): string =
  let v_ms = fcQPropertyAnimation_tr(s)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc trUtf8*(_: type gen_qpropertyanimation_types.QPropertyAnimation, s: cstring): string =
  let v_ms = fcQPropertyAnimation_trUtf8(s)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc targetObject*(self: gen_qpropertyanimation_types.QPropertyAnimation, ): gen_qobject_types.QObject =
  gen_qobject_types.QObject(h: fcQPropertyAnimation_targetObject(self.h))

proc setTargetObject*(self: gen_qpropertyanimation_types.QPropertyAnimation, target: gen_qobject_types.QObject): void =
  fcQPropertyAnimation_setTargetObject(self.h, target.h)

proc propertyName*(self: gen_qpropertyanimation_types.QPropertyAnimation, ): seq[byte] =
  var v_bytearray = fcQPropertyAnimation_propertyName(self.h)
  var vx_ret = @(toOpenArrayByte(v_bytearray.data, 0, int(v_bytearray.len)-1))
  c_free(v_bytearray.data)
  vx_ret

proc setPropertyName*(self: gen_qpropertyanimation_types.QPropertyAnimation, propertyName: seq[byte]): void =
  fcQPropertyAnimation_setPropertyName(self.h, struct_miqt_string(data: cast[cstring](if len(propertyName) == 0: nil else: unsafeAddr propertyName[0]), len: csize_t(len(propertyName))))

proc tr*(_: type gen_qpropertyanimation_types.QPropertyAnimation, s: cstring, c: cstring): string =
  let v_ms = fcQPropertyAnimation_tr2(s, c)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc tr*(_: type gen_qpropertyanimation_types.QPropertyAnimation, s: cstring, c: cstring, n: cint): string =
  let v_ms = fcQPropertyAnimation_tr3(s, c, n)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc trUtf8*(_: type gen_qpropertyanimation_types.QPropertyAnimation, s: cstring, c: cstring): string =
  let v_ms = fcQPropertyAnimation_trUtf82(s, c)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc trUtf8*(_: type gen_qpropertyanimation_types.QPropertyAnimation, s: cstring, c: cstring, n: cint): string =
  let v_ms = fcQPropertyAnimation_trUtf83(s, c, n)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
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
type QPropertyAnimationVTable* = object
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
proc QPropertyAnimationmetaObject*(self: gen_qpropertyanimation_types.QPropertyAnimation, ): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQPropertyAnimation_virtualbase_metaObject(self.h))

proc miqt_exec_callback_cQPropertyAnimation_metaObject(vtbl: pointer, self: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QPropertyAnimationVTable](vtbl)
  let self = QPropertyAnimation(h: self)
  var virtualReturn = vtbl[].metaObject(self)
  virtualReturn.h

proc QPropertyAnimationmetacast*(self: gen_qpropertyanimation_types.QPropertyAnimation, param1: cstring): pointer =
  fcQPropertyAnimation_virtualbase_metacast(self.h, param1)

proc miqt_exec_callback_cQPropertyAnimation_metacast(vtbl: pointer, self: pointer, param1: cstring): pointer {.cdecl.} =
  let vtbl = cast[ptr QPropertyAnimationVTable](vtbl)
  let self = QPropertyAnimation(h: self)
  let slotval1 = (param1)
  var virtualReturn = vtbl[].metacast(self, slotval1)
  virtualReturn

proc QPropertyAnimationmetacall*(self: gen_qpropertyanimation_types.QPropertyAnimation, param1: cint, param2: cint, param3: pointer): cint =
  fcQPropertyAnimation_virtualbase_metacall(self.h, cint(param1), param2, param3)

proc miqt_exec_callback_cQPropertyAnimation_metacall(vtbl: pointer, self: pointer, param1: cint, param2: cint, param3: pointer): cint {.cdecl.} =
  let vtbl = cast[ptr QPropertyAnimationVTable](vtbl)
  let self = QPropertyAnimation(h: self)
  let slotval1 = cint(param1)
  let slotval2 = param2
  let slotval3 = param3
  var virtualReturn = vtbl[].metacall(self, slotval1, slotval2, slotval3)
  virtualReturn

proc QPropertyAnimationevent*(self: gen_qpropertyanimation_types.QPropertyAnimation, event: gen_qcoreevent_types.QEvent): bool =
  fcQPropertyAnimation_virtualbase_event(self.h, event.h)

proc miqt_exec_callback_cQPropertyAnimation_event(vtbl: pointer, self: pointer, event: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QPropertyAnimationVTable](vtbl)
  let self = QPropertyAnimation(h: self)
  let slotval1 = gen_qcoreevent_types.QEvent(h: event)
  var virtualReturn = vtbl[].event(self, slotval1)
  virtualReturn

proc QPropertyAnimationupdateCurrentValue*(self: gen_qpropertyanimation_types.QPropertyAnimation, value: gen_qvariant_types.QVariant): void =
  fcQPropertyAnimation_virtualbase_updateCurrentValue(self.h, value.h)

proc miqt_exec_callback_cQPropertyAnimation_updateCurrentValue(vtbl: pointer, self: pointer, value: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QPropertyAnimationVTable](vtbl)
  let self = QPropertyAnimation(h: self)
  let slotval1 = gen_qvariant_types.QVariant(h: value)
  vtbl[].updateCurrentValue(self, slotval1)

proc QPropertyAnimationupdateState*(self: gen_qpropertyanimation_types.QPropertyAnimation, newState: cint, oldState: cint): void =
  fcQPropertyAnimation_virtualbase_updateState(self.h, cint(newState), cint(oldState))

proc miqt_exec_callback_cQPropertyAnimation_updateState(vtbl: pointer, self: pointer, newState: cint, oldState: cint): void {.cdecl.} =
  let vtbl = cast[ptr QPropertyAnimationVTable](vtbl)
  let self = QPropertyAnimation(h: self)
  let slotval1 = cint(newState)
  let slotval2 = cint(oldState)
  vtbl[].updateState(self, slotval1, slotval2)

proc QPropertyAnimationduration*(self: gen_qpropertyanimation_types.QPropertyAnimation, ): cint =
  fcQPropertyAnimation_virtualbase_duration(self.h)

proc miqt_exec_callback_cQPropertyAnimation_duration(vtbl: pointer, self: pointer): cint {.cdecl.} =
  let vtbl = cast[ptr QPropertyAnimationVTable](vtbl)
  let self = QPropertyAnimation(h: self)
  var virtualReturn = vtbl[].duration(self)
  virtualReturn

proc QPropertyAnimationupdateCurrentTime*(self: gen_qpropertyanimation_types.QPropertyAnimation, param1: cint): void =
  fcQPropertyAnimation_virtualbase_updateCurrentTime(self.h, param1)

proc miqt_exec_callback_cQPropertyAnimation_updateCurrentTime(vtbl: pointer, self: pointer, param1: cint): void {.cdecl.} =
  let vtbl = cast[ptr QPropertyAnimationVTable](vtbl)
  let self = QPropertyAnimation(h: self)
  let slotval1 = param1
  vtbl[].updateCurrentTime(self, slotval1)

proc QPropertyAnimationinterpolated*(self: gen_qpropertyanimation_types.QPropertyAnimation, fromVal: gen_qvariant_types.QVariant, to: gen_qvariant_types.QVariant, progress: float64): gen_qvariant_types.QVariant =
  gen_qvariant_types.QVariant(h: fcQPropertyAnimation_virtualbase_interpolated(self.h, fromVal.h, to.h, progress))

proc miqt_exec_callback_cQPropertyAnimation_interpolated(vtbl: pointer, self: pointer, fromVal: pointer, to: pointer, progress: float64): pointer {.cdecl.} =
  let vtbl = cast[ptr QPropertyAnimationVTable](vtbl)
  let self = QPropertyAnimation(h: self)
  let slotval1 = gen_qvariant_types.QVariant(h: fromVal)
  let slotval2 = gen_qvariant_types.QVariant(h: to)
  let slotval3 = progress
  var virtualReturn = vtbl[].interpolated(self, slotval1, slotval2, slotval3)
  virtualReturn.h

proc QPropertyAnimationupdateDirection*(self: gen_qpropertyanimation_types.QPropertyAnimation, direction: cint): void =
  fcQPropertyAnimation_virtualbase_updateDirection(self.h, cint(direction))

proc miqt_exec_callback_cQPropertyAnimation_updateDirection(vtbl: pointer, self: pointer, direction: cint): void {.cdecl.} =
  let vtbl = cast[ptr QPropertyAnimationVTable](vtbl)
  let self = QPropertyAnimation(h: self)
  let slotval1 = cint(direction)
  vtbl[].updateDirection(self, slotval1)

proc QPropertyAnimationeventFilter*(self: gen_qpropertyanimation_types.QPropertyAnimation, watched: gen_qobject_types.QObject, event: gen_qcoreevent_types.QEvent): bool =
  fcQPropertyAnimation_virtualbase_eventFilter(self.h, watched.h, event.h)

proc miqt_exec_callback_cQPropertyAnimation_eventFilter(vtbl: pointer, self: pointer, watched: pointer, event: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QPropertyAnimationVTable](vtbl)
  let self = QPropertyAnimation(h: self)
  let slotval1 = gen_qobject_types.QObject(h: watched)
  let slotval2 = gen_qcoreevent_types.QEvent(h: event)
  var virtualReturn = vtbl[].eventFilter(self, slotval1, slotval2)
  virtualReturn

proc QPropertyAnimationtimerEvent*(self: gen_qpropertyanimation_types.QPropertyAnimation, event: gen_qcoreevent_types.QTimerEvent): void =
  fcQPropertyAnimation_virtualbase_timerEvent(self.h, event.h)

proc miqt_exec_callback_cQPropertyAnimation_timerEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QPropertyAnimationVTable](vtbl)
  let self = QPropertyAnimation(h: self)
  let slotval1 = gen_qcoreevent_types.QTimerEvent(h: event)
  vtbl[].timerEvent(self, slotval1)

proc QPropertyAnimationchildEvent*(self: gen_qpropertyanimation_types.QPropertyAnimation, event: gen_qcoreevent_types.QChildEvent): void =
  fcQPropertyAnimation_virtualbase_childEvent(self.h, event.h)

proc miqt_exec_callback_cQPropertyAnimation_childEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QPropertyAnimationVTable](vtbl)
  let self = QPropertyAnimation(h: self)
  let slotval1 = gen_qcoreevent_types.QChildEvent(h: event)
  vtbl[].childEvent(self, slotval1)

proc QPropertyAnimationcustomEvent*(self: gen_qpropertyanimation_types.QPropertyAnimation, event: gen_qcoreevent_types.QEvent): void =
  fcQPropertyAnimation_virtualbase_customEvent(self.h, event.h)

proc miqt_exec_callback_cQPropertyAnimation_customEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QPropertyAnimationVTable](vtbl)
  let self = QPropertyAnimation(h: self)
  let slotval1 = gen_qcoreevent_types.QEvent(h: event)
  vtbl[].customEvent(self, slotval1)

proc QPropertyAnimationconnectNotify*(self: gen_qpropertyanimation_types.QPropertyAnimation, signal: gen_qmetaobject_types.QMetaMethod): void =
  fcQPropertyAnimation_virtualbase_connectNotify(self.h, signal.h)

proc miqt_exec_callback_cQPropertyAnimation_connectNotify(vtbl: pointer, self: pointer, signal: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QPropertyAnimationVTable](vtbl)
  let self = QPropertyAnimation(h: self)
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal)
  vtbl[].connectNotify(self, slotval1)

proc QPropertyAnimationdisconnectNotify*(self: gen_qpropertyanimation_types.QPropertyAnimation, signal: gen_qmetaobject_types.QMetaMethod): void =
  fcQPropertyAnimation_virtualbase_disconnectNotify(self.h, signal.h)

proc miqt_exec_callback_cQPropertyAnimation_disconnectNotify(vtbl: pointer, self: pointer, signal: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QPropertyAnimationVTable](vtbl)
  let self = QPropertyAnimation(h: self)
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal)
  vtbl[].disconnectNotify(self, slotval1)

proc sender*(self: gen_qpropertyanimation_types.QPropertyAnimation, ): gen_qobject_types.QObject =
  gen_qobject_types.QObject(h: fcQPropertyAnimation_protectedbase_sender(self.h))

proc senderSignalIndex*(self: gen_qpropertyanimation_types.QPropertyAnimation, ): cint =
  fcQPropertyAnimation_protectedbase_senderSignalIndex(self.h)

proc receivers*(self: gen_qpropertyanimation_types.QPropertyAnimation, signal: cstring): cint =
  fcQPropertyAnimation_protectedbase_receivers(self.h, signal)

proc isSignalConnected*(self: gen_qpropertyanimation_types.QPropertyAnimation, signal: gen_qmetaobject_types.QMetaMethod): bool =
  fcQPropertyAnimation_protectedbase_isSignalConnected(self.h, signal.h)

proc create*(T: type gen_qpropertyanimation_types.QPropertyAnimation,
    vtbl: ref QPropertyAnimationVTable = nil): gen_qpropertyanimation_types.QPropertyAnimation =
  let vtbl = if vtbl == nil: new QPropertyAnimationVTable else: vtbl
  GC_ref(vtbl)
  vtbl.vtbl.destructor = proc(vtbl: ptr cQPropertyAnimationVTable, _: ptr cQPropertyAnimation) {.cdecl.} =
    let vtbl = cast[ref QPropertyAnimationVTable](vtbl)
    GC_unref(vtbl)
  if not isNil(vtbl.metaObject):
    vtbl[].vtbl.metaObject = miqt_exec_callback_cQPropertyAnimation_metaObject
  if not isNil(vtbl.metacast):
    vtbl[].vtbl.metacast = miqt_exec_callback_cQPropertyAnimation_metacast
  if not isNil(vtbl.metacall):
    vtbl[].vtbl.metacall = miqt_exec_callback_cQPropertyAnimation_metacall
  if not isNil(vtbl.event):
    vtbl[].vtbl.event = miqt_exec_callback_cQPropertyAnimation_event
  if not isNil(vtbl.updateCurrentValue):
    vtbl[].vtbl.updateCurrentValue = miqt_exec_callback_cQPropertyAnimation_updateCurrentValue
  if not isNil(vtbl.updateState):
    vtbl[].vtbl.updateState = miqt_exec_callback_cQPropertyAnimation_updateState
  if not isNil(vtbl.duration):
    vtbl[].vtbl.duration = miqt_exec_callback_cQPropertyAnimation_duration
  if not isNil(vtbl.updateCurrentTime):
    vtbl[].vtbl.updateCurrentTime = miqt_exec_callback_cQPropertyAnimation_updateCurrentTime
  if not isNil(vtbl.interpolated):
    vtbl[].vtbl.interpolated = miqt_exec_callback_cQPropertyAnimation_interpolated
  if not isNil(vtbl.updateDirection):
    vtbl[].vtbl.updateDirection = miqt_exec_callback_cQPropertyAnimation_updateDirection
  if not isNil(vtbl.eventFilter):
    vtbl[].vtbl.eventFilter = miqt_exec_callback_cQPropertyAnimation_eventFilter
  if not isNil(vtbl.timerEvent):
    vtbl[].vtbl.timerEvent = miqt_exec_callback_cQPropertyAnimation_timerEvent
  if not isNil(vtbl.childEvent):
    vtbl[].vtbl.childEvent = miqt_exec_callback_cQPropertyAnimation_childEvent
  if not isNil(vtbl.customEvent):
    vtbl[].vtbl.customEvent = miqt_exec_callback_cQPropertyAnimation_customEvent
  if not isNil(vtbl.connectNotify):
    vtbl[].vtbl.connectNotify = miqt_exec_callback_cQPropertyAnimation_connectNotify
  if not isNil(vtbl.disconnectNotify):
    vtbl[].vtbl.disconnectNotify = miqt_exec_callback_cQPropertyAnimation_disconnectNotify
  gen_qpropertyanimation_types.QPropertyAnimation(h: fcQPropertyAnimation_new(addr(vtbl[]), ))

proc create*(T: type gen_qpropertyanimation_types.QPropertyAnimation,
    target: gen_qobject_types.QObject, propertyName: seq[byte],
    vtbl: ref QPropertyAnimationVTable = nil): gen_qpropertyanimation_types.QPropertyAnimation =
  let vtbl = if vtbl == nil: new QPropertyAnimationVTable else: vtbl
  GC_ref(vtbl)
  vtbl.vtbl.destructor = proc(vtbl: ptr cQPropertyAnimationVTable, _: ptr cQPropertyAnimation) {.cdecl.} =
    let vtbl = cast[ref QPropertyAnimationVTable](vtbl)
    GC_unref(vtbl)
  if not isNil(vtbl.metaObject):
    vtbl[].vtbl.metaObject = miqt_exec_callback_cQPropertyAnimation_metaObject
  if not isNil(vtbl.metacast):
    vtbl[].vtbl.metacast = miqt_exec_callback_cQPropertyAnimation_metacast
  if not isNil(vtbl.metacall):
    vtbl[].vtbl.metacall = miqt_exec_callback_cQPropertyAnimation_metacall
  if not isNil(vtbl.event):
    vtbl[].vtbl.event = miqt_exec_callback_cQPropertyAnimation_event
  if not isNil(vtbl.updateCurrentValue):
    vtbl[].vtbl.updateCurrentValue = miqt_exec_callback_cQPropertyAnimation_updateCurrentValue
  if not isNil(vtbl.updateState):
    vtbl[].vtbl.updateState = miqt_exec_callback_cQPropertyAnimation_updateState
  if not isNil(vtbl.duration):
    vtbl[].vtbl.duration = miqt_exec_callback_cQPropertyAnimation_duration
  if not isNil(vtbl.updateCurrentTime):
    vtbl[].vtbl.updateCurrentTime = miqt_exec_callback_cQPropertyAnimation_updateCurrentTime
  if not isNil(vtbl.interpolated):
    vtbl[].vtbl.interpolated = miqt_exec_callback_cQPropertyAnimation_interpolated
  if not isNil(vtbl.updateDirection):
    vtbl[].vtbl.updateDirection = miqt_exec_callback_cQPropertyAnimation_updateDirection
  if not isNil(vtbl.eventFilter):
    vtbl[].vtbl.eventFilter = miqt_exec_callback_cQPropertyAnimation_eventFilter
  if not isNil(vtbl.timerEvent):
    vtbl[].vtbl.timerEvent = miqt_exec_callback_cQPropertyAnimation_timerEvent
  if not isNil(vtbl.childEvent):
    vtbl[].vtbl.childEvent = miqt_exec_callback_cQPropertyAnimation_childEvent
  if not isNil(vtbl.customEvent):
    vtbl[].vtbl.customEvent = miqt_exec_callback_cQPropertyAnimation_customEvent
  if not isNil(vtbl.connectNotify):
    vtbl[].vtbl.connectNotify = miqt_exec_callback_cQPropertyAnimation_connectNotify
  if not isNil(vtbl.disconnectNotify):
    vtbl[].vtbl.disconnectNotify = miqt_exec_callback_cQPropertyAnimation_disconnectNotify
  gen_qpropertyanimation_types.QPropertyAnimation(h: fcQPropertyAnimation_new2(addr(vtbl[]), target.h, struct_miqt_string(data: cast[cstring](if len(propertyName) == 0: nil else: unsafeAddr propertyName[0]), len: csize_t(len(propertyName)))))

proc create*(T: type gen_qpropertyanimation_types.QPropertyAnimation,
    parent: gen_qobject_types.QObject,
    vtbl: ref QPropertyAnimationVTable = nil): gen_qpropertyanimation_types.QPropertyAnimation =
  let vtbl = if vtbl == nil: new QPropertyAnimationVTable else: vtbl
  GC_ref(vtbl)
  vtbl.vtbl.destructor = proc(vtbl: ptr cQPropertyAnimationVTable, _: ptr cQPropertyAnimation) {.cdecl.} =
    let vtbl = cast[ref QPropertyAnimationVTable](vtbl)
    GC_unref(vtbl)
  if not isNil(vtbl.metaObject):
    vtbl[].vtbl.metaObject = miqt_exec_callback_cQPropertyAnimation_metaObject
  if not isNil(vtbl.metacast):
    vtbl[].vtbl.metacast = miqt_exec_callback_cQPropertyAnimation_metacast
  if not isNil(vtbl.metacall):
    vtbl[].vtbl.metacall = miqt_exec_callback_cQPropertyAnimation_metacall
  if not isNil(vtbl.event):
    vtbl[].vtbl.event = miqt_exec_callback_cQPropertyAnimation_event
  if not isNil(vtbl.updateCurrentValue):
    vtbl[].vtbl.updateCurrentValue = miqt_exec_callback_cQPropertyAnimation_updateCurrentValue
  if not isNil(vtbl.updateState):
    vtbl[].vtbl.updateState = miqt_exec_callback_cQPropertyAnimation_updateState
  if not isNil(vtbl.duration):
    vtbl[].vtbl.duration = miqt_exec_callback_cQPropertyAnimation_duration
  if not isNil(vtbl.updateCurrentTime):
    vtbl[].vtbl.updateCurrentTime = miqt_exec_callback_cQPropertyAnimation_updateCurrentTime
  if not isNil(vtbl.interpolated):
    vtbl[].vtbl.interpolated = miqt_exec_callback_cQPropertyAnimation_interpolated
  if not isNil(vtbl.updateDirection):
    vtbl[].vtbl.updateDirection = miqt_exec_callback_cQPropertyAnimation_updateDirection
  if not isNil(vtbl.eventFilter):
    vtbl[].vtbl.eventFilter = miqt_exec_callback_cQPropertyAnimation_eventFilter
  if not isNil(vtbl.timerEvent):
    vtbl[].vtbl.timerEvent = miqt_exec_callback_cQPropertyAnimation_timerEvent
  if not isNil(vtbl.childEvent):
    vtbl[].vtbl.childEvent = miqt_exec_callback_cQPropertyAnimation_childEvent
  if not isNil(vtbl.customEvent):
    vtbl[].vtbl.customEvent = miqt_exec_callback_cQPropertyAnimation_customEvent
  if not isNil(vtbl.connectNotify):
    vtbl[].vtbl.connectNotify = miqt_exec_callback_cQPropertyAnimation_connectNotify
  if not isNil(vtbl.disconnectNotify):
    vtbl[].vtbl.disconnectNotify = miqt_exec_callback_cQPropertyAnimation_disconnectNotify
  gen_qpropertyanimation_types.QPropertyAnimation(h: fcQPropertyAnimation_new3(addr(vtbl[]), parent.h))

proc create*(T: type gen_qpropertyanimation_types.QPropertyAnimation,
    target: gen_qobject_types.QObject, propertyName: seq[byte], parent: gen_qobject_types.QObject,
    vtbl: ref QPropertyAnimationVTable = nil): gen_qpropertyanimation_types.QPropertyAnimation =
  let vtbl = if vtbl == nil: new QPropertyAnimationVTable else: vtbl
  GC_ref(vtbl)
  vtbl.vtbl.destructor = proc(vtbl: ptr cQPropertyAnimationVTable, _: ptr cQPropertyAnimation) {.cdecl.} =
    let vtbl = cast[ref QPropertyAnimationVTable](vtbl)
    GC_unref(vtbl)
  if not isNil(vtbl.metaObject):
    vtbl[].vtbl.metaObject = miqt_exec_callback_cQPropertyAnimation_metaObject
  if not isNil(vtbl.metacast):
    vtbl[].vtbl.metacast = miqt_exec_callback_cQPropertyAnimation_metacast
  if not isNil(vtbl.metacall):
    vtbl[].vtbl.metacall = miqt_exec_callback_cQPropertyAnimation_metacall
  if not isNil(vtbl.event):
    vtbl[].vtbl.event = miqt_exec_callback_cQPropertyAnimation_event
  if not isNil(vtbl.updateCurrentValue):
    vtbl[].vtbl.updateCurrentValue = miqt_exec_callback_cQPropertyAnimation_updateCurrentValue
  if not isNil(vtbl.updateState):
    vtbl[].vtbl.updateState = miqt_exec_callback_cQPropertyAnimation_updateState
  if not isNil(vtbl.duration):
    vtbl[].vtbl.duration = miqt_exec_callback_cQPropertyAnimation_duration
  if not isNil(vtbl.updateCurrentTime):
    vtbl[].vtbl.updateCurrentTime = miqt_exec_callback_cQPropertyAnimation_updateCurrentTime
  if not isNil(vtbl.interpolated):
    vtbl[].vtbl.interpolated = miqt_exec_callback_cQPropertyAnimation_interpolated
  if not isNil(vtbl.updateDirection):
    vtbl[].vtbl.updateDirection = miqt_exec_callback_cQPropertyAnimation_updateDirection
  if not isNil(vtbl.eventFilter):
    vtbl[].vtbl.eventFilter = miqt_exec_callback_cQPropertyAnimation_eventFilter
  if not isNil(vtbl.timerEvent):
    vtbl[].vtbl.timerEvent = miqt_exec_callback_cQPropertyAnimation_timerEvent
  if not isNil(vtbl.childEvent):
    vtbl[].vtbl.childEvent = miqt_exec_callback_cQPropertyAnimation_childEvent
  if not isNil(vtbl.customEvent):
    vtbl[].vtbl.customEvent = miqt_exec_callback_cQPropertyAnimation_customEvent
  if not isNil(vtbl.connectNotify):
    vtbl[].vtbl.connectNotify = miqt_exec_callback_cQPropertyAnimation_connectNotify
  if not isNil(vtbl.disconnectNotify):
    vtbl[].vtbl.disconnectNotify = miqt_exec_callback_cQPropertyAnimation_disconnectNotify
  gen_qpropertyanimation_types.QPropertyAnimation(h: fcQPropertyAnimation_new4(addr(vtbl[]), target.h, struct_miqt_string(data: cast[cstring](if len(propertyName) == 0: nil else: unsafeAddr propertyName[0]), len: csize_t(len(propertyName))), parent.h))

proc staticMetaObject*(_: type gen_qpropertyanimation_types.QPropertyAnimation): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQPropertyAnimation_staticMetaObject())
proc delete*(self: gen_qpropertyanimation_types.QPropertyAnimation) =
  fcQPropertyAnimation_delete(self.h)
