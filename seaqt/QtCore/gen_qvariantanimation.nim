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
{.compile("gen_qvariantanimation.cpp", cflags).}


import ./gen_qvariantanimation_types
export gen_qvariantanimation_types

import
  ./gen_qabstractanimation,
  ./gen_qcoreevent_types,
  ./gen_qeasingcurve_types,
  ./gen_qmetaobject_types,
  ./gen_qobject_types,
  ./gen_qobjectdefs_types,
  ./gen_qvariant_types
export
  gen_qabstractanimation,
  gen_qcoreevent_types,
  gen_qeasingcurve_types,
  gen_qmetaobject_types,
  gen_qobject_types,
  gen_qobjectdefs_types,
  gen_qvariant_types

type cQVariantAnimation*{.exportc: "QVariantAnimation", incompleteStruct.} = object

proc fcQVariantAnimation_metaObject(self: pointer, ): pointer {.importc: "QVariantAnimation_metaObject".}
proc fcQVariantAnimation_metacast(self: pointer, param1: cstring): pointer {.importc: "QVariantAnimation_metacast".}
proc fcQVariantAnimation_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.importc: "QVariantAnimation_metacall".}
proc fcQVariantAnimation_tr(s: cstring): struct_miqt_string {.importc: "QVariantAnimation_tr".}
proc fcQVariantAnimation_trUtf8(s: cstring): struct_miqt_string {.importc: "QVariantAnimation_trUtf8".}
proc fcQVariantAnimation_startValue(self: pointer, ): pointer {.importc: "QVariantAnimation_startValue".}
proc fcQVariantAnimation_setStartValue(self: pointer, value: pointer): void {.importc: "QVariantAnimation_setStartValue".}
proc fcQVariantAnimation_endValue(self: pointer, ): pointer {.importc: "QVariantAnimation_endValue".}
proc fcQVariantAnimation_setEndValue(self: pointer, value: pointer): void {.importc: "QVariantAnimation_setEndValue".}
proc fcQVariantAnimation_keyValueAt(self: pointer, step: float64): pointer {.importc: "QVariantAnimation_keyValueAt".}
proc fcQVariantAnimation_setKeyValueAt(self: pointer, step: float64, value: pointer): void {.importc: "QVariantAnimation_setKeyValueAt".}
proc fcQVariantAnimation_keyValues(self: pointer, ): struct_miqt_array {.importc: "QVariantAnimation_keyValues".}
proc fcQVariantAnimation_setKeyValues(self: pointer, values: struct_miqt_array): void {.importc: "QVariantAnimation_setKeyValues".}
proc fcQVariantAnimation_currentValue(self: pointer, ): pointer {.importc: "QVariantAnimation_currentValue".}
proc fcQVariantAnimation_duration(self: pointer, ): cint {.importc: "QVariantAnimation_duration".}
proc fcQVariantAnimation_setDuration(self: pointer, msecs: cint): void {.importc: "QVariantAnimation_setDuration".}
proc fcQVariantAnimation_easingCurve(self: pointer, ): pointer {.importc: "QVariantAnimation_easingCurve".}
proc fcQVariantAnimation_setEasingCurve(self: pointer, easing: pointer): void {.importc: "QVariantAnimation_setEasingCurve".}
proc fcQVariantAnimation_valueChanged(self: pointer, value: pointer): void {.importc: "QVariantAnimation_valueChanged".}
proc fcQVariantAnimation_connect_valueChanged(self: pointer, slot: int, callback: proc (slot: int, value: pointer) {.cdecl.}, release: proc(slot: int) {.cdecl.}) {.importc: "QVariantAnimation_connect_valueChanged".}
proc fcQVariantAnimation_tr2(s: cstring, c: cstring): struct_miqt_string {.importc: "QVariantAnimation_tr2".}
proc fcQVariantAnimation_tr3(s: cstring, c: cstring, n: cint): struct_miqt_string {.importc: "QVariantAnimation_tr3".}
proc fcQVariantAnimation_trUtf82(s: cstring, c: cstring): struct_miqt_string {.importc: "QVariantAnimation_trUtf82".}
proc fcQVariantAnimation_trUtf83(s: cstring, c: cstring, n: cint): struct_miqt_string {.importc: "QVariantAnimation_trUtf83".}
type cQVariantAnimationVTable = object
  destructor*: proc(vtbl: ptr cQVariantAnimationVTable, self: ptr cQVariantAnimation) {.cdecl, raises:[], gcsafe.}
  metaObject*: proc(vtbl, self: pointer, ): pointer {.cdecl, raises: [], gcsafe.}
  metacast*: proc(vtbl, self: pointer, param1: cstring): pointer {.cdecl, raises: [], gcsafe.}
  metacall*: proc(vtbl, self: pointer, param1: cint, param2: cint, param3: pointer): cint {.cdecl, raises: [], gcsafe.}
  duration*: proc(vtbl, self: pointer, ): cint {.cdecl, raises: [], gcsafe.}
  event*: proc(vtbl, self: pointer, event: pointer): bool {.cdecl, raises: [], gcsafe.}
  updateCurrentTime*: proc(vtbl, self: pointer, param1: cint): void {.cdecl, raises: [], gcsafe.}
  updateState*: proc(vtbl, self: pointer, newState: cint, oldState: cint): void {.cdecl, raises: [], gcsafe.}
  updateCurrentValue*: proc(vtbl, self: pointer, value: pointer): void {.cdecl, raises: [], gcsafe.}
  interpolated*: proc(vtbl, self: pointer, fromVal: pointer, to: pointer, progress: float64): pointer {.cdecl, raises: [], gcsafe.}
  updateDirection*: proc(vtbl, self: pointer, direction: cint): void {.cdecl, raises: [], gcsafe.}
  eventFilter*: proc(vtbl, self: pointer, watched: pointer, event: pointer): bool {.cdecl, raises: [], gcsafe.}
  timerEvent*: proc(vtbl, self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  childEvent*: proc(vtbl, self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  customEvent*: proc(vtbl, self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  connectNotify*: proc(vtbl, self: pointer, signal: pointer): void {.cdecl, raises: [], gcsafe.}
  disconnectNotify*: proc(vtbl, self: pointer, signal: pointer): void {.cdecl, raises: [], gcsafe.}
proc fcQVariantAnimation_virtualbase_metaObject(self: pointer, ): pointer {.importc: "QVariantAnimation_virtualbase_metaObject".}
proc fcQVariantAnimation_virtualbase_metacast(self: pointer, param1: cstring): pointer {.importc: "QVariantAnimation_virtualbase_metacast".}
proc fcQVariantAnimation_virtualbase_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.importc: "QVariantAnimation_virtualbase_metacall".}
proc fcQVariantAnimation_virtualbase_duration(self: pointer, ): cint {.importc: "QVariantAnimation_virtualbase_duration".}
proc fcQVariantAnimation_virtualbase_event(self: pointer, event: pointer): bool {.importc: "QVariantAnimation_virtualbase_event".}
proc fcQVariantAnimation_virtualbase_updateCurrentTime(self: pointer, param1: cint): void {.importc: "QVariantAnimation_virtualbase_updateCurrentTime".}
proc fcQVariantAnimation_virtualbase_updateState(self: pointer, newState: cint, oldState: cint): void {.importc: "QVariantAnimation_virtualbase_updateState".}
proc fcQVariantAnimation_virtualbase_updateCurrentValue(self: pointer, value: pointer): void {.importc: "QVariantAnimation_virtualbase_updateCurrentValue".}
proc fcQVariantAnimation_virtualbase_interpolated(self: pointer, fromVal: pointer, to: pointer, progress: float64): pointer {.importc: "QVariantAnimation_virtualbase_interpolated".}
proc fcQVariantAnimation_virtualbase_updateDirection(self: pointer, direction: cint): void {.importc: "QVariantAnimation_virtualbase_updateDirection".}
proc fcQVariantAnimation_virtualbase_eventFilter(self: pointer, watched: pointer, event: pointer): bool {.importc: "QVariantAnimation_virtualbase_eventFilter".}
proc fcQVariantAnimation_virtualbase_timerEvent(self: pointer, event: pointer): void {.importc: "QVariantAnimation_virtualbase_timerEvent".}
proc fcQVariantAnimation_virtualbase_childEvent(self: pointer, event: pointer): void {.importc: "QVariantAnimation_virtualbase_childEvent".}
proc fcQVariantAnimation_virtualbase_customEvent(self: pointer, event: pointer): void {.importc: "QVariantAnimation_virtualbase_customEvent".}
proc fcQVariantAnimation_virtualbase_connectNotify(self: pointer, signal: pointer): void {.importc: "QVariantAnimation_virtualbase_connectNotify".}
proc fcQVariantAnimation_virtualbase_disconnectNotify(self: pointer, signal: pointer): void {.importc: "QVariantAnimation_virtualbase_disconnectNotify".}
proc fcQVariantAnimation_protectedbase_sender(self: pointer, ): pointer {.importc: "QVariantAnimation_protectedbase_sender".}
proc fcQVariantAnimation_protectedbase_senderSignalIndex(self: pointer, ): cint {.importc: "QVariantAnimation_protectedbase_senderSignalIndex".}
proc fcQVariantAnimation_protectedbase_receivers(self: pointer, signal: cstring): cint {.importc: "QVariantAnimation_protectedbase_receivers".}
proc fcQVariantAnimation_protectedbase_isSignalConnected(self: pointer, signal: pointer): bool {.importc: "QVariantAnimation_protectedbase_isSignalConnected".}
proc fcQVariantAnimation_new(vtbl: pointer, ): ptr cQVariantAnimation {.importc: "QVariantAnimation_new".}
proc fcQVariantAnimation_new2(vtbl: pointer, parent: pointer): ptr cQVariantAnimation {.importc: "QVariantAnimation_new2".}
proc fcQVariantAnimation_staticMetaObject(): pointer {.importc: "QVariantAnimation_staticMetaObject".}
proc fcQVariantAnimation_delete(self: pointer) {.importc: "QVariantAnimation_delete".}

proc metaObject*(self: gen_qvariantanimation_types.QVariantAnimation, ): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQVariantAnimation_metaObject(self.h))

proc metacast*(self: gen_qvariantanimation_types.QVariantAnimation, param1: cstring): pointer =
  fcQVariantAnimation_metacast(self.h, param1)

proc metacall*(self: gen_qvariantanimation_types.QVariantAnimation, param1: cint, param2: cint, param3: pointer): cint =
  fcQVariantAnimation_metacall(self.h, cint(param1), param2, param3)

proc tr*(_: type gen_qvariantanimation_types.QVariantAnimation, s: cstring): string =
  let v_ms = fcQVariantAnimation_tr(s)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc trUtf8*(_: type gen_qvariantanimation_types.QVariantAnimation, s: cstring): string =
  let v_ms = fcQVariantAnimation_trUtf8(s)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc startValue*(self: gen_qvariantanimation_types.QVariantAnimation, ): gen_qvariant_types.QVariant =
  gen_qvariant_types.QVariant(h: fcQVariantAnimation_startValue(self.h))

proc setStartValue*(self: gen_qvariantanimation_types.QVariantAnimation, value: gen_qvariant_types.QVariant): void =
  fcQVariantAnimation_setStartValue(self.h, value.h)

proc endValue*(self: gen_qvariantanimation_types.QVariantAnimation, ): gen_qvariant_types.QVariant =
  gen_qvariant_types.QVariant(h: fcQVariantAnimation_endValue(self.h))

proc setEndValue*(self: gen_qvariantanimation_types.QVariantAnimation, value: gen_qvariant_types.QVariant): void =
  fcQVariantAnimation_setEndValue(self.h, value.h)

proc keyValueAt*(self: gen_qvariantanimation_types.QVariantAnimation, step: float64): gen_qvariant_types.QVariant =
  gen_qvariant_types.QVariant(h: fcQVariantAnimation_keyValueAt(self.h, step))

proc setKeyValueAt*(self: gen_qvariantanimation_types.QVariantAnimation, step: float64, value: gen_qvariant_types.QVariant): void =
  fcQVariantAnimation_setKeyValueAt(self.h, step, value.h)

proc keyValues*(self: gen_qvariantanimation_types.QVariantAnimation, ): seq[tuple[first: float64, second: gen_qvariant_types.QVariant]] =
  var v_ma = fcQVariantAnimation_keyValues(self.h)
  var vx_ret = newSeq[tuple[first: float64, second: gen_qvariant_types.QVariant]](int(v_ma.len))
  let v_outCast = cast[ptr UncheckedArray[struct_miqt_map]](v_ma.data)
  for i in 0 ..< v_ma.len:
    var vx_vv_mm = v_outCast[i]
    var vx_vv_First_CArray = cast[ptr UncheckedArray[float64]](vx_vv_mm.keys)
    var vx_vv_Second_CArray = cast[ptr UncheckedArray[pointer]](vx_vv_mm.values)
    var vx_vv_entry_First = vx_vv_First_CArray[0]

    var vx_vv_entry_Second = gen_qvariant_types.QVariant(h: vx_vv_Second_CArray[0])

    vx_ret[i] = (first: vx_vv_entry_First , second: vx_vv_entry_Second )
  vx_ret

proc setKeyValues*(self: gen_qvariantanimation_types.QVariantAnimation, values: seq[tuple[first: float64, second: gen_qvariant_types.QVariant]]): void =
  var values_CArray = newSeq[struct_miqt_map](len(values))
  for i in 0..<len(values):
    var values_i_CArray_First: float64
    var values_i_CArray_Second: pointer
    values_i_CArray_First = values[i].first
    values_i_CArray_Second = values[i].second.h
    values_CArray[i] = struct_miqt_map(len: 1,keys: addr(values_i_CArray_First),values: addr(values_i_CArray_Second),)

  fcQVariantAnimation_setKeyValues(self.h, struct_miqt_array(len: csize_t(len(values)), data: if len(values) == 0: nil else: addr(values_CArray[0])))

proc currentValue*(self: gen_qvariantanimation_types.QVariantAnimation, ): gen_qvariant_types.QVariant =
  gen_qvariant_types.QVariant(h: fcQVariantAnimation_currentValue(self.h))

proc duration*(self: gen_qvariantanimation_types.QVariantAnimation, ): cint =
  fcQVariantAnimation_duration(self.h)

proc setDuration*(self: gen_qvariantanimation_types.QVariantAnimation, msecs: cint): void =
  fcQVariantAnimation_setDuration(self.h, msecs)

proc easingCurve*(self: gen_qvariantanimation_types.QVariantAnimation, ): gen_qeasingcurve_types.QEasingCurve =
  gen_qeasingcurve_types.QEasingCurve(h: fcQVariantAnimation_easingCurve(self.h))

proc setEasingCurve*(self: gen_qvariantanimation_types.QVariantAnimation, easing: gen_qeasingcurve_types.QEasingCurve): void =
  fcQVariantAnimation_setEasingCurve(self.h, easing.h)

proc valueChanged*(self: gen_qvariantanimation_types.QVariantAnimation, value: gen_qvariant_types.QVariant): void =
  fcQVariantAnimation_valueChanged(self.h, value.h)

type QVariantAnimationvalueChangedSlot* = proc(value: gen_qvariant_types.QVariant)
proc miqt_exec_callback_cQVariantAnimation_valueChanged(slot: int, value: pointer) {.cdecl.} =
  let nimfunc = cast[ptr QVariantAnimationvalueChangedSlot](cast[pointer](slot))
  let slotval1 = gen_qvariant_types.QVariant(h: value)

  nimfunc[](slotval1)

proc miqt_exec_callback_cQVariantAnimation_valueChanged_release(slot: int) {.cdecl.} =
  let nimfunc = cast[ref QVariantAnimationvalueChangedSlot](cast[pointer](slot))
  GC_unref(nimfunc)

proc onvalueChanged*(self: gen_qvariantanimation_types.QVariantAnimation, slot: QVariantAnimationvalueChangedSlot) =
  var tmp = new QVariantAnimationvalueChangedSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQVariantAnimation_connect_valueChanged(self.h, cast[int](addr tmp[]), miqt_exec_callback_cQVariantAnimation_valueChanged, miqt_exec_callback_cQVariantAnimation_valueChanged_release)

proc tr*(_: type gen_qvariantanimation_types.QVariantAnimation, s: cstring, c: cstring): string =
  let v_ms = fcQVariantAnimation_tr2(s, c)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc tr*(_: type gen_qvariantanimation_types.QVariantAnimation, s: cstring, c: cstring, n: cint): string =
  let v_ms = fcQVariantAnimation_tr3(s, c, n)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc trUtf8*(_: type gen_qvariantanimation_types.QVariantAnimation, s: cstring, c: cstring): string =
  let v_ms = fcQVariantAnimation_trUtf82(s, c)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc trUtf8*(_: type gen_qvariantanimation_types.QVariantAnimation, s: cstring, c: cstring, n: cint): string =
  let v_ms = fcQVariantAnimation_trUtf83(s, c, n)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

type QVariantAnimationmetaObjectProc* = proc(self: QVariantAnimation): gen_qobjectdefs_types.QMetaObject {.raises: [], gcsafe.}
type QVariantAnimationmetacastProc* = proc(self: QVariantAnimation, param1: cstring): pointer {.raises: [], gcsafe.}
type QVariantAnimationmetacallProc* = proc(self: QVariantAnimation, param1: cint, param2: cint, param3: pointer): cint {.raises: [], gcsafe.}
type QVariantAnimationdurationProc* = proc(self: QVariantAnimation): cint {.raises: [], gcsafe.}
type QVariantAnimationeventProc* = proc(self: QVariantAnimation, event: gen_qcoreevent_types.QEvent): bool {.raises: [], gcsafe.}
type QVariantAnimationupdateCurrentTimeProc* = proc(self: QVariantAnimation, param1: cint): void {.raises: [], gcsafe.}
type QVariantAnimationupdateStateProc* = proc(self: QVariantAnimation, newState: cint, oldState: cint): void {.raises: [], gcsafe.}
type QVariantAnimationupdateCurrentValueProc* = proc(self: QVariantAnimation, value: gen_qvariant_types.QVariant): void {.raises: [], gcsafe.}
type QVariantAnimationinterpolatedProc* = proc(self: QVariantAnimation, fromVal: gen_qvariant_types.QVariant, to: gen_qvariant_types.QVariant, progress: float64): gen_qvariant_types.QVariant {.raises: [], gcsafe.}
type QVariantAnimationupdateDirectionProc* = proc(self: QVariantAnimation, direction: cint): void {.raises: [], gcsafe.}
type QVariantAnimationeventFilterProc* = proc(self: QVariantAnimation, watched: gen_qobject_types.QObject, event: gen_qcoreevent_types.QEvent): bool {.raises: [], gcsafe.}
type QVariantAnimationtimerEventProc* = proc(self: QVariantAnimation, event: gen_qcoreevent_types.QTimerEvent): void {.raises: [], gcsafe.}
type QVariantAnimationchildEventProc* = proc(self: QVariantAnimation, event: gen_qcoreevent_types.QChildEvent): void {.raises: [], gcsafe.}
type QVariantAnimationcustomEventProc* = proc(self: QVariantAnimation, event: gen_qcoreevent_types.QEvent): void {.raises: [], gcsafe.}
type QVariantAnimationconnectNotifyProc* = proc(self: QVariantAnimation, signal: gen_qmetaobject_types.QMetaMethod): void {.raises: [], gcsafe.}
type QVariantAnimationdisconnectNotifyProc* = proc(self: QVariantAnimation, signal: gen_qmetaobject_types.QMetaMethod): void {.raises: [], gcsafe.}
type QVariantAnimationVTable* = object
  vtbl: cQVariantAnimationVTable
  metaObject*: QVariantAnimationmetaObjectProc
  metacast*: QVariantAnimationmetacastProc
  metacall*: QVariantAnimationmetacallProc
  duration*: QVariantAnimationdurationProc
  event*: QVariantAnimationeventProc
  updateCurrentTime*: QVariantAnimationupdateCurrentTimeProc
  updateState*: QVariantAnimationupdateStateProc
  updateCurrentValue*: QVariantAnimationupdateCurrentValueProc
  interpolated*: QVariantAnimationinterpolatedProc
  updateDirection*: QVariantAnimationupdateDirectionProc
  eventFilter*: QVariantAnimationeventFilterProc
  timerEvent*: QVariantAnimationtimerEventProc
  childEvent*: QVariantAnimationchildEventProc
  customEvent*: QVariantAnimationcustomEventProc
  connectNotify*: QVariantAnimationconnectNotifyProc
  disconnectNotify*: QVariantAnimationdisconnectNotifyProc
proc QVariantAnimationmetaObject*(self: gen_qvariantanimation_types.QVariantAnimation, ): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQVariantAnimation_virtualbase_metaObject(self.h))

proc miqt_exec_callback_cQVariantAnimation_metaObject(vtbl: pointer, self: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QVariantAnimationVTable](vtbl)
  let self = QVariantAnimation(h: self)
  var virtualReturn = vtbl[].metaObject(self)
  virtualReturn.h

proc QVariantAnimationmetacast*(self: gen_qvariantanimation_types.QVariantAnimation, param1: cstring): pointer =
  fcQVariantAnimation_virtualbase_metacast(self.h, param1)

proc miqt_exec_callback_cQVariantAnimation_metacast(vtbl: pointer, self: pointer, param1: cstring): pointer {.cdecl.} =
  let vtbl = cast[ptr QVariantAnimationVTable](vtbl)
  let self = QVariantAnimation(h: self)
  let slotval1 = (param1)
  var virtualReturn = vtbl[].metacast(self, slotval1)
  virtualReturn

proc QVariantAnimationmetacall*(self: gen_qvariantanimation_types.QVariantAnimation, param1: cint, param2: cint, param3: pointer): cint =
  fcQVariantAnimation_virtualbase_metacall(self.h, cint(param1), param2, param3)

proc miqt_exec_callback_cQVariantAnimation_metacall(vtbl: pointer, self: pointer, param1: cint, param2: cint, param3: pointer): cint {.cdecl.} =
  let vtbl = cast[ptr QVariantAnimationVTable](vtbl)
  let self = QVariantAnimation(h: self)
  let slotval1 = cint(param1)
  let slotval2 = param2
  let slotval3 = param3
  var virtualReturn = vtbl[].metacall(self, slotval1, slotval2, slotval3)
  virtualReturn

proc QVariantAnimationduration*(self: gen_qvariantanimation_types.QVariantAnimation, ): cint =
  fcQVariantAnimation_virtualbase_duration(self.h)

proc miqt_exec_callback_cQVariantAnimation_duration(vtbl: pointer, self: pointer): cint {.cdecl.} =
  let vtbl = cast[ptr QVariantAnimationVTable](vtbl)
  let self = QVariantAnimation(h: self)
  var virtualReturn = vtbl[].duration(self)
  virtualReturn

proc QVariantAnimationevent*(self: gen_qvariantanimation_types.QVariantAnimation, event: gen_qcoreevent_types.QEvent): bool =
  fcQVariantAnimation_virtualbase_event(self.h, event.h)

proc miqt_exec_callback_cQVariantAnimation_event(vtbl: pointer, self: pointer, event: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QVariantAnimationVTable](vtbl)
  let self = QVariantAnimation(h: self)
  let slotval1 = gen_qcoreevent_types.QEvent(h: event)
  var virtualReturn = vtbl[].event(self, slotval1)
  virtualReturn

proc QVariantAnimationupdateCurrentTime*(self: gen_qvariantanimation_types.QVariantAnimation, param1: cint): void =
  fcQVariantAnimation_virtualbase_updateCurrentTime(self.h, param1)

proc miqt_exec_callback_cQVariantAnimation_updateCurrentTime(vtbl: pointer, self: pointer, param1: cint): void {.cdecl.} =
  let vtbl = cast[ptr QVariantAnimationVTable](vtbl)
  let self = QVariantAnimation(h: self)
  let slotval1 = param1
  vtbl[].updateCurrentTime(self, slotval1)

proc QVariantAnimationupdateState*(self: gen_qvariantanimation_types.QVariantAnimation, newState: cint, oldState: cint): void =
  fcQVariantAnimation_virtualbase_updateState(self.h, cint(newState), cint(oldState))

proc miqt_exec_callback_cQVariantAnimation_updateState(vtbl: pointer, self: pointer, newState: cint, oldState: cint): void {.cdecl.} =
  let vtbl = cast[ptr QVariantAnimationVTable](vtbl)
  let self = QVariantAnimation(h: self)
  let slotval1 = cint(newState)
  let slotval2 = cint(oldState)
  vtbl[].updateState(self, slotval1, slotval2)

proc QVariantAnimationupdateCurrentValue*(self: gen_qvariantanimation_types.QVariantAnimation, value: gen_qvariant_types.QVariant): void =
  fcQVariantAnimation_virtualbase_updateCurrentValue(self.h, value.h)

proc miqt_exec_callback_cQVariantAnimation_updateCurrentValue(vtbl: pointer, self: pointer, value: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QVariantAnimationVTable](vtbl)
  let self = QVariantAnimation(h: self)
  let slotval1 = gen_qvariant_types.QVariant(h: value)
  vtbl[].updateCurrentValue(self, slotval1)

proc QVariantAnimationinterpolated*(self: gen_qvariantanimation_types.QVariantAnimation, fromVal: gen_qvariant_types.QVariant, to: gen_qvariant_types.QVariant, progress: float64): gen_qvariant_types.QVariant =
  gen_qvariant_types.QVariant(h: fcQVariantAnimation_virtualbase_interpolated(self.h, fromVal.h, to.h, progress))

proc miqt_exec_callback_cQVariantAnimation_interpolated(vtbl: pointer, self: pointer, fromVal: pointer, to: pointer, progress: float64): pointer {.cdecl.} =
  let vtbl = cast[ptr QVariantAnimationVTable](vtbl)
  let self = QVariantAnimation(h: self)
  let slotval1 = gen_qvariant_types.QVariant(h: fromVal)
  let slotval2 = gen_qvariant_types.QVariant(h: to)
  let slotval3 = progress
  var virtualReturn = vtbl[].interpolated(self, slotval1, slotval2, slotval3)
  virtualReturn.h

proc QVariantAnimationupdateDirection*(self: gen_qvariantanimation_types.QVariantAnimation, direction: cint): void =
  fcQVariantAnimation_virtualbase_updateDirection(self.h, cint(direction))

proc miqt_exec_callback_cQVariantAnimation_updateDirection(vtbl: pointer, self: pointer, direction: cint): void {.cdecl.} =
  let vtbl = cast[ptr QVariantAnimationVTable](vtbl)
  let self = QVariantAnimation(h: self)
  let slotval1 = cint(direction)
  vtbl[].updateDirection(self, slotval1)

proc QVariantAnimationeventFilter*(self: gen_qvariantanimation_types.QVariantAnimation, watched: gen_qobject_types.QObject, event: gen_qcoreevent_types.QEvent): bool =
  fcQVariantAnimation_virtualbase_eventFilter(self.h, watched.h, event.h)

proc miqt_exec_callback_cQVariantAnimation_eventFilter(vtbl: pointer, self: pointer, watched: pointer, event: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QVariantAnimationVTable](vtbl)
  let self = QVariantAnimation(h: self)
  let slotval1 = gen_qobject_types.QObject(h: watched)
  let slotval2 = gen_qcoreevent_types.QEvent(h: event)
  var virtualReturn = vtbl[].eventFilter(self, slotval1, slotval2)
  virtualReturn

proc QVariantAnimationtimerEvent*(self: gen_qvariantanimation_types.QVariantAnimation, event: gen_qcoreevent_types.QTimerEvent): void =
  fcQVariantAnimation_virtualbase_timerEvent(self.h, event.h)

proc miqt_exec_callback_cQVariantAnimation_timerEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QVariantAnimationVTable](vtbl)
  let self = QVariantAnimation(h: self)
  let slotval1 = gen_qcoreevent_types.QTimerEvent(h: event)
  vtbl[].timerEvent(self, slotval1)

proc QVariantAnimationchildEvent*(self: gen_qvariantanimation_types.QVariantAnimation, event: gen_qcoreevent_types.QChildEvent): void =
  fcQVariantAnimation_virtualbase_childEvent(self.h, event.h)

proc miqt_exec_callback_cQVariantAnimation_childEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QVariantAnimationVTable](vtbl)
  let self = QVariantAnimation(h: self)
  let slotval1 = gen_qcoreevent_types.QChildEvent(h: event)
  vtbl[].childEvent(self, slotval1)

proc QVariantAnimationcustomEvent*(self: gen_qvariantanimation_types.QVariantAnimation, event: gen_qcoreevent_types.QEvent): void =
  fcQVariantAnimation_virtualbase_customEvent(self.h, event.h)

proc miqt_exec_callback_cQVariantAnimation_customEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QVariantAnimationVTable](vtbl)
  let self = QVariantAnimation(h: self)
  let slotval1 = gen_qcoreevent_types.QEvent(h: event)
  vtbl[].customEvent(self, slotval1)

proc QVariantAnimationconnectNotify*(self: gen_qvariantanimation_types.QVariantAnimation, signal: gen_qmetaobject_types.QMetaMethod): void =
  fcQVariantAnimation_virtualbase_connectNotify(self.h, signal.h)

proc miqt_exec_callback_cQVariantAnimation_connectNotify(vtbl: pointer, self: pointer, signal: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QVariantAnimationVTable](vtbl)
  let self = QVariantAnimation(h: self)
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal)
  vtbl[].connectNotify(self, slotval1)

proc QVariantAnimationdisconnectNotify*(self: gen_qvariantanimation_types.QVariantAnimation, signal: gen_qmetaobject_types.QMetaMethod): void =
  fcQVariantAnimation_virtualbase_disconnectNotify(self.h, signal.h)

proc miqt_exec_callback_cQVariantAnimation_disconnectNotify(vtbl: pointer, self: pointer, signal: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QVariantAnimationVTable](vtbl)
  let self = QVariantAnimation(h: self)
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal)
  vtbl[].disconnectNotify(self, slotval1)

proc sender*(self: gen_qvariantanimation_types.QVariantAnimation, ): gen_qobject_types.QObject =
  gen_qobject_types.QObject(h: fcQVariantAnimation_protectedbase_sender(self.h))

proc senderSignalIndex*(self: gen_qvariantanimation_types.QVariantAnimation, ): cint =
  fcQVariantAnimation_protectedbase_senderSignalIndex(self.h)

proc receivers*(self: gen_qvariantanimation_types.QVariantAnimation, signal: cstring): cint =
  fcQVariantAnimation_protectedbase_receivers(self.h, signal)

proc isSignalConnected*(self: gen_qvariantanimation_types.QVariantAnimation, signal: gen_qmetaobject_types.QMetaMethod): bool =
  fcQVariantAnimation_protectedbase_isSignalConnected(self.h, signal.h)

proc create*(T: type gen_qvariantanimation_types.QVariantAnimation,
    vtbl: ref QVariantAnimationVTable = nil): gen_qvariantanimation_types.QVariantAnimation =
  let vtbl = if vtbl == nil: new QVariantAnimationVTable else: vtbl
  GC_ref(vtbl)
  vtbl.vtbl.destructor = proc(vtbl: ptr cQVariantAnimationVTable, _: ptr cQVariantAnimation) {.cdecl.} =
    let vtbl = cast[ref QVariantAnimationVTable](vtbl)
    GC_unref(vtbl)
  if not isNil(vtbl.metaObject):
    vtbl[].vtbl.metaObject = miqt_exec_callback_cQVariantAnimation_metaObject
  if not isNil(vtbl.metacast):
    vtbl[].vtbl.metacast = miqt_exec_callback_cQVariantAnimation_metacast
  if not isNil(vtbl.metacall):
    vtbl[].vtbl.metacall = miqt_exec_callback_cQVariantAnimation_metacall
  if not isNil(vtbl.duration):
    vtbl[].vtbl.duration = miqt_exec_callback_cQVariantAnimation_duration
  if not isNil(vtbl.event):
    vtbl[].vtbl.event = miqt_exec_callback_cQVariantAnimation_event
  if not isNil(vtbl.updateCurrentTime):
    vtbl[].vtbl.updateCurrentTime = miqt_exec_callback_cQVariantAnimation_updateCurrentTime
  if not isNil(vtbl.updateState):
    vtbl[].vtbl.updateState = miqt_exec_callback_cQVariantAnimation_updateState
  if not isNil(vtbl.updateCurrentValue):
    vtbl[].vtbl.updateCurrentValue = miqt_exec_callback_cQVariantAnimation_updateCurrentValue
  if not isNil(vtbl.interpolated):
    vtbl[].vtbl.interpolated = miqt_exec_callback_cQVariantAnimation_interpolated
  if not isNil(vtbl.updateDirection):
    vtbl[].vtbl.updateDirection = miqt_exec_callback_cQVariantAnimation_updateDirection
  if not isNil(vtbl.eventFilter):
    vtbl[].vtbl.eventFilter = miqt_exec_callback_cQVariantAnimation_eventFilter
  if not isNil(vtbl.timerEvent):
    vtbl[].vtbl.timerEvent = miqt_exec_callback_cQVariantAnimation_timerEvent
  if not isNil(vtbl.childEvent):
    vtbl[].vtbl.childEvent = miqt_exec_callback_cQVariantAnimation_childEvent
  if not isNil(vtbl.customEvent):
    vtbl[].vtbl.customEvent = miqt_exec_callback_cQVariantAnimation_customEvent
  if not isNil(vtbl.connectNotify):
    vtbl[].vtbl.connectNotify = miqt_exec_callback_cQVariantAnimation_connectNotify
  if not isNil(vtbl.disconnectNotify):
    vtbl[].vtbl.disconnectNotify = miqt_exec_callback_cQVariantAnimation_disconnectNotify
  gen_qvariantanimation_types.QVariantAnimation(h: fcQVariantAnimation_new(addr(vtbl[]), ))

proc create*(T: type gen_qvariantanimation_types.QVariantAnimation,
    parent: gen_qobject_types.QObject,
    vtbl: ref QVariantAnimationVTable = nil): gen_qvariantanimation_types.QVariantAnimation =
  let vtbl = if vtbl == nil: new QVariantAnimationVTable else: vtbl
  GC_ref(vtbl)
  vtbl.vtbl.destructor = proc(vtbl: ptr cQVariantAnimationVTable, _: ptr cQVariantAnimation) {.cdecl.} =
    let vtbl = cast[ref QVariantAnimationVTable](vtbl)
    GC_unref(vtbl)
  if not isNil(vtbl.metaObject):
    vtbl[].vtbl.metaObject = miqt_exec_callback_cQVariantAnimation_metaObject
  if not isNil(vtbl.metacast):
    vtbl[].vtbl.metacast = miqt_exec_callback_cQVariantAnimation_metacast
  if not isNil(vtbl.metacall):
    vtbl[].vtbl.metacall = miqt_exec_callback_cQVariantAnimation_metacall
  if not isNil(vtbl.duration):
    vtbl[].vtbl.duration = miqt_exec_callback_cQVariantAnimation_duration
  if not isNil(vtbl.event):
    vtbl[].vtbl.event = miqt_exec_callback_cQVariantAnimation_event
  if not isNil(vtbl.updateCurrentTime):
    vtbl[].vtbl.updateCurrentTime = miqt_exec_callback_cQVariantAnimation_updateCurrentTime
  if not isNil(vtbl.updateState):
    vtbl[].vtbl.updateState = miqt_exec_callback_cQVariantAnimation_updateState
  if not isNil(vtbl.updateCurrentValue):
    vtbl[].vtbl.updateCurrentValue = miqt_exec_callback_cQVariantAnimation_updateCurrentValue
  if not isNil(vtbl.interpolated):
    vtbl[].vtbl.interpolated = miqt_exec_callback_cQVariantAnimation_interpolated
  if not isNil(vtbl.updateDirection):
    vtbl[].vtbl.updateDirection = miqt_exec_callback_cQVariantAnimation_updateDirection
  if not isNil(vtbl.eventFilter):
    vtbl[].vtbl.eventFilter = miqt_exec_callback_cQVariantAnimation_eventFilter
  if not isNil(vtbl.timerEvent):
    vtbl[].vtbl.timerEvent = miqt_exec_callback_cQVariantAnimation_timerEvent
  if not isNil(vtbl.childEvent):
    vtbl[].vtbl.childEvent = miqt_exec_callback_cQVariantAnimation_childEvent
  if not isNil(vtbl.customEvent):
    vtbl[].vtbl.customEvent = miqt_exec_callback_cQVariantAnimation_customEvent
  if not isNil(vtbl.connectNotify):
    vtbl[].vtbl.connectNotify = miqt_exec_callback_cQVariantAnimation_connectNotify
  if not isNil(vtbl.disconnectNotify):
    vtbl[].vtbl.disconnectNotify = miqt_exec_callback_cQVariantAnimation_disconnectNotify
  gen_qvariantanimation_types.QVariantAnimation(h: fcQVariantAnimation_new2(addr(vtbl[]), parent.h))

proc staticMetaObject*(_: type gen_qvariantanimation_types.QVariantAnimation): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQVariantAnimation_staticMetaObject())
proc delete*(self: gen_qvariantanimation_types.QVariantAnimation) =
  fcQVariantAnimation_delete(self.h)
