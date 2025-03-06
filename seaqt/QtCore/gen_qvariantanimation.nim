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

proc fcQVariantAnimation_new(): ptr cQVariantAnimation {.importc: "QVariantAnimation_new".}
proc fcQVariantAnimation_new2(parent: pointer): ptr cQVariantAnimation {.importc: "QVariantAnimation_new2".}
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
proc fcQVariantAnimation_connect_valueChanged(self: pointer, slot: int) {.importc: "QVariantAnimation_connect_valueChanged".}
proc fcQVariantAnimation_tr2(s: cstring, c: cstring): struct_miqt_string {.importc: "QVariantAnimation_tr2".}
proc fcQVariantAnimation_tr3(s: cstring, c: cstring, n: cint): struct_miqt_string {.importc: "QVariantAnimation_tr3".}
proc fcQVariantAnimation_trUtf82(s: cstring, c: cstring): struct_miqt_string {.importc: "QVariantAnimation_trUtf82".}
proc fcQVariantAnimation_trUtf83(s: cstring, c: cstring, n: cint): struct_miqt_string {.importc: "QVariantAnimation_trUtf83".}
proc fQVariantAnimation_virtualbase_metaObject(self: pointer, ): pointer{.importc: "QVariantAnimation_virtualbase_metaObject".}
proc fcQVariantAnimation_override_virtual_metaObject(self: pointer, slot: int) {.importc: "QVariantAnimation_override_virtual_metaObject".}
proc fQVariantAnimation_virtualbase_metacast(self: pointer, param1: cstring): pointer{.importc: "QVariantAnimation_virtualbase_metacast".}
proc fcQVariantAnimation_override_virtual_metacast(self: pointer, slot: int) {.importc: "QVariantAnimation_override_virtual_metacast".}
proc fQVariantAnimation_virtualbase_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint{.importc: "QVariantAnimation_virtualbase_metacall".}
proc fcQVariantAnimation_override_virtual_metacall(self: pointer, slot: int) {.importc: "QVariantAnimation_override_virtual_metacall".}
proc fQVariantAnimation_virtualbase_duration(self: pointer, ): cint{.importc: "QVariantAnimation_virtualbase_duration".}
proc fcQVariantAnimation_override_virtual_duration(self: pointer, slot: int) {.importc: "QVariantAnimation_override_virtual_duration".}
proc fQVariantAnimation_virtualbase_event(self: pointer, event: pointer): bool{.importc: "QVariantAnimation_virtualbase_event".}
proc fcQVariantAnimation_override_virtual_event(self: pointer, slot: int) {.importc: "QVariantAnimation_override_virtual_event".}
proc fQVariantAnimation_virtualbase_updateCurrentTime(self: pointer, param1: cint): void{.importc: "QVariantAnimation_virtualbase_updateCurrentTime".}
proc fcQVariantAnimation_override_virtual_updateCurrentTime(self: pointer, slot: int) {.importc: "QVariantAnimation_override_virtual_updateCurrentTime".}
proc fQVariantAnimation_virtualbase_updateState(self: pointer, newState: cint, oldState: cint): void{.importc: "QVariantAnimation_virtualbase_updateState".}
proc fcQVariantAnimation_override_virtual_updateState(self: pointer, slot: int) {.importc: "QVariantAnimation_override_virtual_updateState".}
proc fQVariantAnimation_virtualbase_updateCurrentValue(self: pointer, value: pointer): void{.importc: "QVariantAnimation_virtualbase_updateCurrentValue".}
proc fcQVariantAnimation_override_virtual_updateCurrentValue(self: pointer, slot: int) {.importc: "QVariantAnimation_override_virtual_updateCurrentValue".}
proc fQVariantAnimation_virtualbase_interpolated(self: pointer, fromVal: pointer, to: pointer, progress: float64): pointer{.importc: "QVariantAnimation_virtualbase_interpolated".}
proc fcQVariantAnimation_override_virtual_interpolated(self: pointer, slot: int) {.importc: "QVariantAnimation_override_virtual_interpolated".}
proc fQVariantAnimation_virtualbase_updateDirection(self: pointer, direction: cint): void{.importc: "QVariantAnimation_virtualbase_updateDirection".}
proc fcQVariantAnimation_override_virtual_updateDirection(self: pointer, slot: int) {.importc: "QVariantAnimation_override_virtual_updateDirection".}
proc fQVariantAnimation_virtualbase_eventFilter(self: pointer, watched: pointer, event: pointer): bool{.importc: "QVariantAnimation_virtualbase_eventFilter".}
proc fcQVariantAnimation_override_virtual_eventFilter(self: pointer, slot: int) {.importc: "QVariantAnimation_override_virtual_eventFilter".}
proc fQVariantAnimation_virtualbase_timerEvent(self: pointer, event: pointer): void{.importc: "QVariantAnimation_virtualbase_timerEvent".}
proc fcQVariantAnimation_override_virtual_timerEvent(self: pointer, slot: int) {.importc: "QVariantAnimation_override_virtual_timerEvent".}
proc fQVariantAnimation_virtualbase_childEvent(self: pointer, event: pointer): void{.importc: "QVariantAnimation_virtualbase_childEvent".}
proc fcQVariantAnimation_override_virtual_childEvent(self: pointer, slot: int) {.importc: "QVariantAnimation_override_virtual_childEvent".}
proc fQVariantAnimation_virtualbase_customEvent(self: pointer, event: pointer): void{.importc: "QVariantAnimation_virtualbase_customEvent".}
proc fcQVariantAnimation_override_virtual_customEvent(self: pointer, slot: int) {.importc: "QVariantAnimation_override_virtual_customEvent".}
proc fQVariantAnimation_virtualbase_connectNotify(self: pointer, signal: pointer): void{.importc: "QVariantAnimation_virtualbase_connectNotify".}
proc fcQVariantAnimation_override_virtual_connectNotify(self: pointer, slot: int) {.importc: "QVariantAnimation_override_virtual_connectNotify".}
proc fQVariantAnimation_virtualbase_disconnectNotify(self: pointer, signal: pointer): void{.importc: "QVariantAnimation_virtualbase_disconnectNotify".}
proc fcQVariantAnimation_override_virtual_disconnectNotify(self: pointer, slot: int) {.importc: "QVariantAnimation_override_virtual_disconnectNotify".}
proc fcQVariantAnimation_staticMetaObject(): pointer {.importc: "QVariantAnimation_staticMetaObject".}
proc fcQVariantAnimation_delete(self: pointer) {.importc: "QVariantAnimation_delete".}


func init*(T: type gen_qvariantanimation_types.QVariantAnimation, h: ptr cQVariantAnimation): gen_qvariantanimation_types.QVariantAnimation =
  T(h: h)
proc create*(T: type gen_qvariantanimation_types.QVariantAnimation, ): gen_qvariantanimation_types.QVariantAnimation =
  gen_qvariantanimation_types.QVariantAnimation.init(fcQVariantAnimation_new())

proc create*(T: type gen_qvariantanimation_types.QVariantAnimation, parent: gen_qobject_types.QObject): gen_qvariantanimation_types.QVariantAnimation =
  gen_qvariantanimation_types.QVariantAnimation.init(fcQVariantAnimation_new2(parent.h))

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
proc miqt_exec_callback_QVariantAnimation_valueChanged(slot: int, value: pointer) {.exportc.} =
  let nimfunc = cast[ptr QVariantAnimationvalueChangedSlot](cast[pointer](slot))
  let slotval1 = gen_qvariant_types.QVariant(h: value)

  nimfunc[](slotval1)

proc onvalueChanged*(self: gen_qvariantanimation_types.QVariantAnimation, slot: QVariantAnimationvalueChangedSlot) =
  var tmp = new QVariantAnimationvalueChangedSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQVariantAnimation_connect_valueChanged(self.h, cast[int](addr tmp[]))

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

proc QVariantAnimationmetaObject*(self: gen_qvariantanimation_types.QVariantAnimation, ): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fQVariantAnimation_virtualbase_metaObject(self.h))

type QVariantAnimationmetaObjectProc* = proc(): gen_qobjectdefs_types.QMetaObject
proc onmetaObject*(self: gen_qvariantanimation_types.QVariantAnimation, slot: QVariantAnimationmetaObjectProc) =
  # TODO check subclass
  var tmp = new QVariantAnimationmetaObjectProc
  tmp[] = slot
  GC_ref(tmp)
  fcQVariantAnimation_override_virtual_metaObject(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QVariantAnimation_metaObject(self: ptr cQVariantAnimation, slot: int): pointer {.exportc: "miqt_exec_callback_QVariantAnimation_metaObject ".} =
  var nimfunc = cast[ptr QVariantAnimationmetaObjectProc](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )

  virtualReturn.h
proc QVariantAnimationmetacast*(self: gen_qvariantanimation_types.QVariantAnimation, param1: cstring): pointer =
  fQVariantAnimation_virtualbase_metacast(self.h, param1)

type QVariantAnimationmetacastProc* = proc(param1: cstring): pointer
proc onmetacast*(self: gen_qvariantanimation_types.QVariantAnimation, slot: QVariantAnimationmetacastProc) =
  # TODO check subclass
  var tmp = new QVariantAnimationmetacastProc
  tmp[] = slot
  GC_ref(tmp)
  fcQVariantAnimation_override_virtual_metacast(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QVariantAnimation_metacast(self: ptr cQVariantAnimation, slot: int, param1: cstring): pointer {.exportc: "miqt_exec_callback_QVariantAnimation_metacast ".} =
  var nimfunc = cast[ptr QVariantAnimationmetacastProc](cast[pointer](slot))
  let slotval1 = (param1)


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn
proc QVariantAnimationmetacall*(self: gen_qvariantanimation_types.QVariantAnimation, param1: cint, param2: cint, param3: pointer): cint =
  fQVariantAnimation_virtualbase_metacall(self.h, cint(param1), param2, param3)

type QVariantAnimationmetacallProc* = proc(param1: cint, param2: cint, param3: pointer): cint
proc onmetacall*(self: gen_qvariantanimation_types.QVariantAnimation, slot: QVariantAnimationmetacallProc) =
  # TODO check subclass
  var tmp = new QVariantAnimationmetacallProc
  tmp[] = slot
  GC_ref(tmp)
  fcQVariantAnimation_override_virtual_metacall(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QVariantAnimation_metacall(self: ptr cQVariantAnimation, slot: int, param1: cint, param2: cint, param3: pointer): cint {.exportc: "miqt_exec_callback_QVariantAnimation_metacall ".} =
  var nimfunc = cast[ptr QVariantAnimationmetacallProc](cast[pointer](slot))
  let slotval1 = cint(param1)

  let slotval2 = param2

  let slotval3 = param3


  let virtualReturn = nimfunc[](slotval1, slotval2, slotval3 )

  virtualReturn
proc QVariantAnimationduration*(self: gen_qvariantanimation_types.QVariantAnimation, ): cint =
  fQVariantAnimation_virtualbase_duration(self.h)

type QVariantAnimationdurationProc* = proc(): cint
proc onduration*(self: gen_qvariantanimation_types.QVariantAnimation, slot: QVariantAnimationdurationProc) =
  # TODO check subclass
  var tmp = new QVariantAnimationdurationProc
  tmp[] = slot
  GC_ref(tmp)
  fcQVariantAnimation_override_virtual_duration(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QVariantAnimation_duration(self: ptr cQVariantAnimation, slot: int): cint {.exportc: "miqt_exec_callback_QVariantAnimation_duration ".} =
  var nimfunc = cast[ptr QVariantAnimationdurationProc](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )

  virtualReturn
proc QVariantAnimationevent*(self: gen_qvariantanimation_types.QVariantAnimation, event: gen_qcoreevent_types.QEvent): bool =
  fQVariantAnimation_virtualbase_event(self.h, event.h)

type QVariantAnimationeventProc* = proc(event: gen_qcoreevent_types.QEvent): bool
proc onevent*(self: gen_qvariantanimation_types.QVariantAnimation, slot: QVariantAnimationeventProc) =
  # TODO check subclass
  var tmp = new QVariantAnimationeventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQVariantAnimation_override_virtual_event(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QVariantAnimation_event(self: ptr cQVariantAnimation, slot: int, event: pointer): bool {.exportc: "miqt_exec_callback_QVariantAnimation_event ".} =
  var nimfunc = cast[ptr QVariantAnimationeventProc](cast[pointer](slot))
  let slotval1 = gen_qcoreevent_types.QEvent(h: event)


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn
proc QVariantAnimationupdateCurrentTime*(self: gen_qvariantanimation_types.QVariantAnimation, param1: cint): void =
  fQVariantAnimation_virtualbase_updateCurrentTime(self.h, param1)

type QVariantAnimationupdateCurrentTimeProc* = proc(param1: cint): void
proc onupdateCurrentTime*(self: gen_qvariantanimation_types.QVariantAnimation, slot: QVariantAnimationupdateCurrentTimeProc) =
  # TODO check subclass
  var tmp = new QVariantAnimationupdateCurrentTimeProc
  tmp[] = slot
  GC_ref(tmp)
  fcQVariantAnimation_override_virtual_updateCurrentTime(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QVariantAnimation_updateCurrentTime(self: ptr cQVariantAnimation, slot: int, param1: cint): void {.exportc: "miqt_exec_callback_QVariantAnimation_updateCurrentTime ".} =
  var nimfunc = cast[ptr QVariantAnimationupdateCurrentTimeProc](cast[pointer](slot))
  let slotval1 = param1


  nimfunc[](slotval1)
proc QVariantAnimationupdateState*(self: gen_qvariantanimation_types.QVariantAnimation, newState: cint, oldState: cint): void =
  fQVariantAnimation_virtualbase_updateState(self.h, cint(newState), cint(oldState))

type QVariantAnimationupdateStateProc* = proc(newState: cint, oldState: cint): void
proc onupdateState*(self: gen_qvariantanimation_types.QVariantAnimation, slot: QVariantAnimationupdateStateProc) =
  # TODO check subclass
  var tmp = new QVariantAnimationupdateStateProc
  tmp[] = slot
  GC_ref(tmp)
  fcQVariantAnimation_override_virtual_updateState(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QVariantAnimation_updateState(self: ptr cQVariantAnimation, slot: int, newState: cint, oldState: cint): void {.exportc: "miqt_exec_callback_QVariantAnimation_updateState ".} =
  var nimfunc = cast[ptr QVariantAnimationupdateStateProc](cast[pointer](slot))
  let slotval1 = cint(newState)

  let slotval2 = cint(oldState)


  nimfunc[](slotval1, slotval2)
proc QVariantAnimationupdateCurrentValue*(self: gen_qvariantanimation_types.QVariantAnimation, value: gen_qvariant_types.QVariant): void =
  fQVariantAnimation_virtualbase_updateCurrentValue(self.h, value.h)

type QVariantAnimationupdateCurrentValueProc* = proc(value: gen_qvariant_types.QVariant): void
proc onupdateCurrentValue*(self: gen_qvariantanimation_types.QVariantAnimation, slot: QVariantAnimationupdateCurrentValueProc) =
  # TODO check subclass
  var tmp = new QVariantAnimationupdateCurrentValueProc
  tmp[] = slot
  GC_ref(tmp)
  fcQVariantAnimation_override_virtual_updateCurrentValue(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QVariantAnimation_updateCurrentValue(self: ptr cQVariantAnimation, slot: int, value: pointer): void {.exportc: "miqt_exec_callback_QVariantAnimation_updateCurrentValue ".} =
  var nimfunc = cast[ptr QVariantAnimationupdateCurrentValueProc](cast[pointer](slot))
  let slotval1 = gen_qvariant_types.QVariant(h: value)


  nimfunc[](slotval1)
proc QVariantAnimationinterpolated*(self: gen_qvariantanimation_types.QVariantAnimation, fromVal: gen_qvariant_types.QVariant, to: gen_qvariant_types.QVariant, progress: float64): gen_qvariant_types.QVariant =
  gen_qvariant_types.QVariant(h: fQVariantAnimation_virtualbase_interpolated(self.h, fromVal.h, to.h, progress))

type QVariantAnimationinterpolatedProc* = proc(fromVal: gen_qvariant_types.QVariant, to: gen_qvariant_types.QVariant, progress: float64): gen_qvariant_types.QVariant
proc oninterpolated*(self: gen_qvariantanimation_types.QVariantAnimation, slot: QVariantAnimationinterpolatedProc) =
  # TODO check subclass
  var tmp = new QVariantAnimationinterpolatedProc
  tmp[] = slot
  GC_ref(tmp)
  fcQVariantAnimation_override_virtual_interpolated(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QVariantAnimation_interpolated(self: ptr cQVariantAnimation, slot: int, fromVal: pointer, to: pointer, progress: float64): pointer {.exportc: "miqt_exec_callback_QVariantAnimation_interpolated ".} =
  var nimfunc = cast[ptr QVariantAnimationinterpolatedProc](cast[pointer](slot))
  let slotval1 = gen_qvariant_types.QVariant(h: fromVal)

  let slotval2 = gen_qvariant_types.QVariant(h: to)

  let slotval3 = progress


  let virtualReturn = nimfunc[](slotval1, slotval2, slotval3 )

  virtualReturn.h
proc QVariantAnimationupdateDirection*(self: gen_qvariantanimation_types.QVariantAnimation, direction: cint): void =
  fQVariantAnimation_virtualbase_updateDirection(self.h, cint(direction))

type QVariantAnimationupdateDirectionProc* = proc(direction: cint): void
proc onupdateDirection*(self: gen_qvariantanimation_types.QVariantAnimation, slot: QVariantAnimationupdateDirectionProc) =
  # TODO check subclass
  var tmp = new QVariantAnimationupdateDirectionProc
  tmp[] = slot
  GC_ref(tmp)
  fcQVariantAnimation_override_virtual_updateDirection(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QVariantAnimation_updateDirection(self: ptr cQVariantAnimation, slot: int, direction: cint): void {.exportc: "miqt_exec_callback_QVariantAnimation_updateDirection ".} =
  var nimfunc = cast[ptr QVariantAnimationupdateDirectionProc](cast[pointer](slot))
  let slotval1 = cint(direction)


  nimfunc[](slotval1)
proc QVariantAnimationeventFilter*(self: gen_qvariantanimation_types.QVariantAnimation, watched: gen_qobject_types.QObject, event: gen_qcoreevent_types.QEvent): bool =
  fQVariantAnimation_virtualbase_eventFilter(self.h, watched.h, event.h)

type QVariantAnimationeventFilterProc* = proc(watched: gen_qobject_types.QObject, event: gen_qcoreevent_types.QEvent): bool
proc oneventFilter*(self: gen_qvariantanimation_types.QVariantAnimation, slot: QVariantAnimationeventFilterProc) =
  # TODO check subclass
  var tmp = new QVariantAnimationeventFilterProc
  tmp[] = slot
  GC_ref(tmp)
  fcQVariantAnimation_override_virtual_eventFilter(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QVariantAnimation_eventFilter(self: ptr cQVariantAnimation, slot: int, watched: pointer, event: pointer): bool {.exportc: "miqt_exec_callback_QVariantAnimation_eventFilter ".} =
  var nimfunc = cast[ptr QVariantAnimationeventFilterProc](cast[pointer](slot))
  let slotval1 = gen_qobject_types.QObject(h: watched)

  let slotval2 = gen_qcoreevent_types.QEvent(h: event)


  let virtualReturn = nimfunc[](slotval1, slotval2 )

  virtualReturn
proc QVariantAnimationtimerEvent*(self: gen_qvariantanimation_types.QVariantAnimation, event: gen_qcoreevent_types.QTimerEvent): void =
  fQVariantAnimation_virtualbase_timerEvent(self.h, event.h)

type QVariantAnimationtimerEventProc* = proc(event: gen_qcoreevent_types.QTimerEvent): void
proc ontimerEvent*(self: gen_qvariantanimation_types.QVariantAnimation, slot: QVariantAnimationtimerEventProc) =
  # TODO check subclass
  var tmp = new QVariantAnimationtimerEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQVariantAnimation_override_virtual_timerEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QVariantAnimation_timerEvent(self: ptr cQVariantAnimation, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QVariantAnimation_timerEvent ".} =
  var nimfunc = cast[ptr QVariantAnimationtimerEventProc](cast[pointer](slot))
  let slotval1 = gen_qcoreevent_types.QTimerEvent(h: event)


  nimfunc[](slotval1)
proc QVariantAnimationchildEvent*(self: gen_qvariantanimation_types.QVariantAnimation, event: gen_qcoreevent_types.QChildEvent): void =
  fQVariantAnimation_virtualbase_childEvent(self.h, event.h)

type QVariantAnimationchildEventProc* = proc(event: gen_qcoreevent_types.QChildEvent): void
proc onchildEvent*(self: gen_qvariantanimation_types.QVariantAnimation, slot: QVariantAnimationchildEventProc) =
  # TODO check subclass
  var tmp = new QVariantAnimationchildEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQVariantAnimation_override_virtual_childEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QVariantAnimation_childEvent(self: ptr cQVariantAnimation, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QVariantAnimation_childEvent ".} =
  var nimfunc = cast[ptr QVariantAnimationchildEventProc](cast[pointer](slot))
  let slotval1 = gen_qcoreevent_types.QChildEvent(h: event)


  nimfunc[](slotval1)
proc QVariantAnimationcustomEvent*(self: gen_qvariantanimation_types.QVariantAnimation, event: gen_qcoreevent_types.QEvent): void =
  fQVariantAnimation_virtualbase_customEvent(self.h, event.h)

type QVariantAnimationcustomEventProc* = proc(event: gen_qcoreevent_types.QEvent): void
proc oncustomEvent*(self: gen_qvariantanimation_types.QVariantAnimation, slot: QVariantAnimationcustomEventProc) =
  # TODO check subclass
  var tmp = new QVariantAnimationcustomEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQVariantAnimation_override_virtual_customEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QVariantAnimation_customEvent(self: ptr cQVariantAnimation, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QVariantAnimation_customEvent ".} =
  var nimfunc = cast[ptr QVariantAnimationcustomEventProc](cast[pointer](slot))
  let slotval1 = gen_qcoreevent_types.QEvent(h: event)


  nimfunc[](slotval1)
proc QVariantAnimationconnectNotify*(self: gen_qvariantanimation_types.QVariantAnimation, signal: gen_qmetaobject_types.QMetaMethod): void =
  fQVariantAnimation_virtualbase_connectNotify(self.h, signal.h)

type QVariantAnimationconnectNotifyProc* = proc(signal: gen_qmetaobject_types.QMetaMethod): void
proc onconnectNotify*(self: gen_qvariantanimation_types.QVariantAnimation, slot: QVariantAnimationconnectNotifyProc) =
  # TODO check subclass
  var tmp = new QVariantAnimationconnectNotifyProc
  tmp[] = slot
  GC_ref(tmp)
  fcQVariantAnimation_override_virtual_connectNotify(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QVariantAnimation_connectNotify(self: ptr cQVariantAnimation, slot: int, signal: pointer): void {.exportc: "miqt_exec_callback_QVariantAnimation_connectNotify ".} =
  var nimfunc = cast[ptr QVariantAnimationconnectNotifyProc](cast[pointer](slot))
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal)


  nimfunc[](slotval1)
proc QVariantAnimationdisconnectNotify*(self: gen_qvariantanimation_types.QVariantAnimation, signal: gen_qmetaobject_types.QMetaMethod): void =
  fQVariantAnimation_virtualbase_disconnectNotify(self.h, signal.h)

type QVariantAnimationdisconnectNotifyProc* = proc(signal: gen_qmetaobject_types.QMetaMethod): void
proc ondisconnectNotify*(self: gen_qvariantanimation_types.QVariantAnimation, slot: QVariantAnimationdisconnectNotifyProc) =
  # TODO check subclass
  var tmp = new QVariantAnimationdisconnectNotifyProc
  tmp[] = slot
  GC_ref(tmp)
  fcQVariantAnimation_override_virtual_disconnectNotify(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QVariantAnimation_disconnectNotify(self: ptr cQVariantAnimation, slot: int, signal: pointer): void {.exportc: "miqt_exec_callback_QVariantAnimation_disconnectNotify ".} =
  var nimfunc = cast[ptr QVariantAnimationdisconnectNotifyProc](cast[pointer](slot))
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal)


  nimfunc[](slotval1)
proc staticMetaObject*(_: type gen_qvariantanimation_types.QVariantAnimation): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQVariantAnimation_staticMetaObject())
proc delete*(self: gen_qvariantanimation_types.QVariantAnimation) =
  fcQVariantAnimation_delete(self.h)
