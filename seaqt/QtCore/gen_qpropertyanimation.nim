import ./Qt6Core_libs

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

const cflags = gorge("pkg-config --cflags Qt6Core")  & " -fPIC"
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

proc fcQPropertyAnimation_new(): ptr cQPropertyAnimation {.importc: "QPropertyAnimation_new".}
proc fcQPropertyAnimation_new2(target: pointer, propertyName: struct_miqt_string): ptr cQPropertyAnimation {.importc: "QPropertyAnimation_new2".}
proc fcQPropertyAnimation_new3(parent: pointer): ptr cQPropertyAnimation {.importc: "QPropertyAnimation_new3".}
proc fcQPropertyAnimation_new4(target: pointer, propertyName: struct_miqt_string, parent: pointer): ptr cQPropertyAnimation {.importc: "QPropertyAnimation_new4".}
proc fcQPropertyAnimation_metaObject(self: pointer, ): pointer {.importc: "QPropertyAnimation_metaObject".}
proc fcQPropertyAnimation_metacast(self: pointer, param1: cstring): pointer {.importc: "QPropertyAnimation_metacast".}
proc fcQPropertyAnimation_tr(s: cstring): struct_miqt_string {.importc: "QPropertyAnimation_tr".}
proc fcQPropertyAnimation_targetObject(self: pointer, ): pointer {.importc: "QPropertyAnimation_targetObject".}
proc fcQPropertyAnimation_setTargetObject(self: pointer, target: pointer): void {.importc: "QPropertyAnimation_setTargetObject".}
proc fcQPropertyAnimation_propertyName(self: pointer, ): struct_miqt_string {.importc: "QPropertyAnimation_propertyName".}
proc fcQPropertyAnimation_setPropertyName(self: pointer, propertyName: struct_miqt_string): void {.importc: "QPropertyAnimation_setPropertyName".}
proc fcQPropertyAnimation_tr2(s: cstring, c: cstring): struct_miqt_string {.importc: "QPropertyAnimation_tr2".}
proc fcQPropertyAnimation_tr3(s: cstring, c: cstring, n: cint): struct_miqt_string {.importc: "QPropertyAnimation_tr3".}
proc fQPropertyAnimation_virtualbase_event(self: pointer, event: pointer): bool{.importc: "QPropertyAnimation_virtualbase_event".}
proc fcQPropertyAnimation_override_virtual_event(self: pointer, slot: int) {.importc: "QPropertyAnimation_override_virtual_event".}
proc fQPropertyAnimation_virtualbase_updateCurrentValue(self: pointer, value: pointer): void{.importc: "QPropertyAnimation_virtualbase_updateCurrentValue".}
proc fcQPropertyAnimation_override_virtual_updateCurrentValue(self: pointer, slot: int) {.importc: "QPropertyAnimation_override_virtual_updateCurrentValue".}
proc fQPropertyAnimation_virtualbase_updateState(self: pointer, newState: cint, oldState: cint): void{.importc: "QPropertyAnimation_virtualbase_updateState".}
proc fcQPropertyAnimation_override_virtual_updateState(self: pointer, slot: int) {.importc: "QPropertyAnimation_override_virtual_updateState".}
proc fQPropertyAnimation_virtualbase_duration(self: pointer, ): cint{.importc: "QPropertyAnimation_virtualbase_duration".}
proc fcQPropertyAnimation_override_virtual_duration(self: pointer, slot: int) {.importc: "QPropertyAnimation_override_virtual_duration".}
proc fQPropertyAnimation_virtualbase_updateCurrentTime(self: pointer, param1: cint): void{.importc: "QPropertyAnimation_virtualbase_updateCurrentTime".}
proc fcQPropertyAnimation_override_virtual_updateCurrentTime(self: pointer, slot: int) {.importc: "QPropertyAnimation_override_virtual_updateCurrentTime".}
proc fQPropertyAnimation_virtualbase_interpolated(self: pointer, fromVal: pointer, to: pointer, progress: float64): pointer{.importc: "QPropertyAnimation_virtualbase_interpolated".}
proc fcQPropertyAnimation_override_virtual_interpolated(self: pointer, slot: int) {.importc: "QPropertyAnimation_override_virtual_interpolated".}
proc fQPropertyAnimation_virtualbase_updateDirection(self: pointer, direction: cint): void{.importc: "QPropertyAnimation_virtualbase_updateDirection".}
proc fcQPropertyAnimation_override_virtual_updateDirection(self: pointer, slot: int) {.importc: "QPropertyAnimation_override_virtual_updateDirection".}
proc fQPropertyAnimation_virtualbase_eventFilter(self: pointer, watched: pointer, event: pointer): bool{.importc: "QPropertyAnimation_virtualbase_eventFilter".}
proc fcQPropertyAnimation_override_virtual_eventFilter(self: pointer, slot: int) {.importc: "QPropertyAnimation_override_virtual_eventFilter".}
proc fQPropertyAnimation_virtualbase_timerEvent(self: pointer, event: pointer): void{.importc: "QPropertyAnimation_virtualbase_timerEvent".}
proc fcQPropertyAnimation_override_virtual_timerEvent(self: pointer, slot: int) {.importc: "QPropertyAnimation_override_virtual_timerEvent".}
proc fQPropertyAnimation_virtualbase_childEvent(self: pointer, event: pointer): void{.importc: "QPropertyAnimation_virtualbase_childEvent".}
proc fcQPropertyAnimation_override_virtual_childEvent(self: pointer, slot: int) {.importc: "QPropertyAnimation_override_virtual_childEvent".}
proc fQPropertyAnimation_virtualbase_customEvent(self: pointer, event: pointer): void{.importc: "QPropertyAnimation_virtualbase_customEvent".}
proc fcQPropertyAnimation_override_virtual_customEvent(self: pointer, slot: int) {.importc: "QPropertyAnimation_override_virtual_customEvent".}
proc fQPropertyAnimation_virtualbase_connectNotify(self: pointer, signal: pointer): void{.importc: "QPropertyAnimation_virtualbase_connectNotify".}
proc fcQPropertyAnimation_override_virtual_connectNotify(self: pointer, slot: int) {.importc: "QPropertyAnimation_override_virtual_connectNotify".}
proc fQPropertyAnimation_virtualbase_disconnectNotify(self: pointer, signal: pointer): void{.importc: "QPropertyAnimation_virtualbase_disconnectNotify".}
proc fcQPropertyAnimation_override_virtual_disconnectNotify(self: pointer, slot: int) {.importc: "QPropertyAnimation_override_virtual_disconnectNotify".}
proc fcQPropertyAnimation_delete(self: pointer) {.importc: "QPropertyAnimation_delete".}


func init*(T: type gen_qpropertyanimation_types.QPropertyAnimation, h: ptr cQPropertyAnimation): gen_qpropertyanimation_types.QPropertyAnimation =
  T(h: h)
proc create*(T: type gen_qpropertyanimation_types.QPropertyAnimation, ): gen_qpropertyanimation_types.QPropertyAnimation =
  gen_qpropertyanimation_types.QPropertyAnimation.init(fcQPropertyAnimation_new())

proc create*(T: type gen_qpropertyanimation_types.QPropertyAnimation, target: gen_qobject_types.QObject, propertyName: seq[byte]): gen_qpropertyanimation_types.QPropertyAnimation =
  gen_qpropertyanimation_types.QPropertyAnimation.init(fcQPropertyAnimation_new2(target.h, struct_miqt_string(data: cast[cstring](if len(propertyName) == 0: nil else: unsafeAddr propertyName[0]), len: csize_t(len(propertyName)))))

proc create*(T: type gen_qpropertyanimation_types.QPropertyAnimation, parent: gen_qobject_types.QObject): gen_qpropertyanimation_types.QPropertyAnimation =
  gen_qpropertyanimation_types.QPropertyAnimation.init(fcQPropertyAnimation_new3(parent.h))

proc create*(T: type gen_qpropertyanimation_types.QPropertyAnimation, target: gen_qobject_types.QObject, propertyName: seq[byte], parent: gen_qobject_types.QObject): gen_qpropertyanimation_types.QPropertyAnimation =
  gen_qpropertyanimation_types.QPropertyAnimation.init(fcQPropertyAnimation_new4(target.h, struct_miqt_string(data: cast[cstring](if len(propertyName) == 0: nil else: unsafeAddr propertyName[0]), len: csize_t(len(propertyName))), parent.h))

proc metaObject*(self: gen_qpropertyanimation_types.QPropertyAnimation, ): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQPropertyAnimation_metaObject(self.h))

proc metacast*(self: gen_qpropertyanimation_types.QPropertyAnimation, param1: cstring): pointer =
  fcQPropertyAnimation_metacast(self.h, param1)

proc tr*(_: type gen_qpropertyanimation_types.QPropertyAnimation, s: cstring): string =
  let v_ms = fcQPropertyAnimation_tr(s)
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

proc QPropertyAnimationevent*(self: gen_qpropertyanimation_types.QPropertyAnimation, event: gen_qcoreevent_types.QEvent): bool =
  fQPropertyAnimation_virtualbase_event(self.h, event.h)

type QPropertyAnimationeventProc* = proc(event: gen_qcoreevent_types.QEvent): bool
proc onevent*(self: gen_qpropertyanimation_types.QPropertyAnimation, slot: QPropertyAnimationeventProc) =
  # TODO check subclass
  var tmp = new QPropertyAnimationeventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQPropertyAnimation_override_virtual_event(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QPropertyAnimation_event(self: ptr cQPropertyAnimation, slot: int, event: pointer): bool {.exportc: "miqt_exec_callback_QPropertyAnimation_event ".} =
  var nimfunc = cast[ptr QPropertyAnimationeventProc](cast[pointer](slot))
  let slotval1 = gen_qcoreevent_types.QEvent(h: event)


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn
proc QPropertyAnimationupdateCurrentValue*(self: gen_qpropertyanimation_types.QPropertyAnimation, value: gen_qvariant_types.QVariant): void =
  fQPropertyAnimation_virtualbase_updateCurrentValue(self.h, value.h)

type QPropertyAnimationupdateCurrentValueProc* = proc(value: gen_qvariant_types.QVariant): void
proc onupdateCurrentValue*(self: gen_qpropertyanimation_types.QPropertyAnimation, slot: QPropertyAnimationupdateCurrentValueProc) =
  # TODO check subclass
  var tmp = new QPropertyAnimationupdateCurrentValueProc
  tmp[] = slot
  GC_ref(tmp)
  fcQPropertyAnimation_override_virtual_updateCurrentValue(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QPropertyAnimation_updateCurrentValue(self: ptr cQPropertyAnimation, slot: int, value: pointer): void {.exportc: "miqt_exec_callback_QPropertyAnimation_updateCurrentValue ".} =
  var nimfunc = cast[ptr QPropertyAnimationupdateCurrentValueProc](cast[pointer](slot))
  let slotval1 = gen_qvariant_types.QVariant(h: value)


  nimfunc[](slotval1)
proc QPropertyAnimationupdateState*(self: gen_qpropertyanimation_types.QPropertyAnimation, newState: cint, oldState: cint): void =
  fQPropertyAnimation_virtualbase_updateState(self.h, cint(newState), cint(oldState))

type QPropertyAnimationupdateStateProc* = proc(newState: cint, oldState: cint): void
proc onupdateState*(self: gen_qpropertyanimation_types.QPropertyAnimation, slot: QPropertyAnimationupdateStateProc) =
  # TODO check subclass
  var tmp = new QPropertyAnimationupdateStateProc
  tmp[] = slot
  GC_ref(tmp)
  fcQPropertyAnimation_override_virtual_updateState(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QPropertyAnimation_updateState(self: ptr cQPropertyAnimation, slot: int, newState: cint, oldState: cint): void {.exportc: "miqt_exec_callback_QPropertyAnimation_updateState ".} =
  var nimfunc = cast[ptr QPropertyAnimationupdateStateProc](cast[pointer](slot))
  let slotval1 = cint(newState)

  let slotval2 = cint(oldState)


  nimfunc[](slotval1, slotval2)
proc QPropertyAnimationduration*(self: gen_qpropertyanimation_types.QPropertyAnimation, ): cint =
  fQPropertyAnimation_virtualbase_duration(self.h)

type QPropertyAnimationdurationProc* = proc(): cint
proc onduration*(self: gen_qpropertyanimation_types.QPropertyAnimation, slot: QPropertyAnimationdurationProc) =
  # TODO check subclass
  var tmp = new QPropertyAnimationdurationProc
  tmp[] = slot
  GC_ref(tmp)
  fcQPropertyAnimation_override_virtual_duration(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QPropertyAnimation_duration(self: ptr cQPropertyAnimation, slot: int): cint {.exportc: "miqt_exec_callback_QPropertyAnimation_duration ".} =
  var nimfunc = cast[ptr QPropertyAnimationdurationProc](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )

  virtualReturn
proc QPropertyAnimationupdateCurrentTime*(self: gen_qpropertyanimation_types.QPropertyAnimation, param1: cint): void =
  fQPropertyAnimation_virtualbase_updateCurrentTime(self.h, param1)

type QPropertyAnimationupdateCurrentTimeProc* = proc(param1: cint): void
proc onupdateCurrentTime*(self: gen_qpropertyanimation_types.QPropertyAnimation, slot: QPropertyAnimationupdateCurrentTimeProc) =
  # TODO check subclass
  var tmp = new QPropertyAnimationupdateCurrentTimeProc
  tmp[] = slot
  GC_ref(tmp)
  fcQPropertyAnimation_override_virtual_updateCurrentTime(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QPropertyAnimation_updateCurrentTime(self: ptr cQPropertyAnimation, slot: int, param1: cint): void {.exportc: "miqt_exec_callback_QPropertyAnimation_updateCurrentTime ".} =
  var nimfunc = cast[ptr QPropertyAnimationupdateCurrentTimeProc](cast[pointer](slot))
  let slotval1 = param1


  nimfunc[](slotval1)
proc QPropertyAnimationinterpolated*(self: gen_qpropertyanimation_types.QPropertyAnimation, fromVal: gen_qvariant_types.QVariant, to: gen_qvariant_types.QVariant, progress: float64): gen_qvariant_types.QVariant =
  gen_qvariant_types.QVariant(h: fQPropertyAnimation_virtualbase_interpolated(self.h, fromVal.h, to.h, progress))

type QPropertyAnimationinterpolatedProc* = proc(fromVal: gen_qvariant_types.QVariant, to: gen_qvariant_types.QVariant, progress: float64): gen_qvariant_types.QVariant
proc oninterpolated*(self: gen_qpropertyanimation_types.QPropertyAnimation, slot: QPropertyAnimationinterpolatedProc) =
  # TODO check subclass
  var tmp = new QPropertyAnimationinterpolatedProc
  tmp[] = slot
  GC_ref(tmp)
  fcQPropertyAnimation_override_virtual_interpolated(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QPropertyAnimation_interpolated(self: ptr cQPropertyAnimation, slot: int, fromVal: pointer, to: pointer, progress: float64): pointer {.exportc: "miqt_exec_callback_QPropertyAnimation_interpolated ".} =
  var nimfunc = cast[ptr QPropertyAnimationinterpolatedProc](cast[pointer](slot))
  let slotval1 = gen_qvariant_types.QVariant(h: fromVal)

  let slotval2 = gen_qvariant_types.QVariant(h: to)

  let slotval3 = progress


  let virtualReturn = nimfunc[](slotval1, slotval2, slotval3 )

  virtualReturn.h
proc QPropertyAnimationupdateDirection*(self: gen_qpropertyanimation_types.QPropertyAnimation, direction: cint): void =
  fQPropertyAnimation_virtualbase_updateDirection(self.h, cint(direction))

type QPropertyAnimationupdateDirectionProc* = proc(direction: cint): void
proc onupdateDirection*(self: gen_qpropertyanimation_types.QPropertyAnimation, slot: QPropertyAnimationupdateDirectionProc) =
  # TODO check subclass
  var tmp = new QPropertyAnimationupdateDirectionProc
  tmp[] = slot
  GC_ref(tmp)
  fcQPropertyAnimation_override_virtual_updateDirection(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QPropertyAnimation_updateDirection(self: ptr cQPropertyAnimation, slot: int, direction: cint): void {.exportc: "miqt_exec_callback_QPropertyAnimation_updateDirection ".} =
  var nimfunc = cast[ptr QPropertyAnimationupdateDirectionProc](cast[pointer](slot))
  let slotval1 = cint(direction)


  nimfunc[](slotval1)
proc QPropertyAnimationeventFilter*(self: gen_qpropertyanimation_types.QPropertyAnimation, watched: gen_qobject_types.QObject, event: gen_qcoreevent_types.QEvent): bool =
  fQPropertyAnimation_virtualbase_eventFilter(self.h, watched.h, event.h)

type QPropertyAnimationeventFilterProc* = proc(watched: gen_qobject_types.QObject, event: gen_qcoreevent_types.QEvent): bool
proc oneventFilter*(self: gen_qpropertyanimation_types.QPropertyAnimation, slot: QPropertyAnimationeventFilterProc) =
  # TODO check subclass
  var tmp = new QPropertyAnimationeventFilterProc
  tmp[] = slot
  GC_ref(tmp)
  fcQPropertyAnimation_override_virtual_eventFilter(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QPropertyAnimation_eventFilter(self: ptr cQPropertyAnimation, slot: int, watched: pointer, event: pointer): bool {.exportc: "miqt_exec_callback_QPropertyAnimation_eventFilter ".} =
  var nimfunc = cast[ptr QPropertyAnimationeventFilterProc](cast[pointer](slot))
  let slotval1 = gen_qobject_types.QObject(h: watched)

  let slotval2 = gen_qcoreevent_types.QEvent(h: event)


  let virtualReturn = nimfunc[](slotval1, slotval2 )

  virtualReturn
proc QPropertyAnimationtimerEvent*(self: gen_qpropertyanimation_types.QPropertyAnimation, event: gen_qcoreevent_types.QTimerEvent): void =
  fQPropertyAnimation_virtualbase_timerEvent(self.h, event.h)

type QPropertyAnimationtimerEventProc* = proc(event: gen_qcoreevent_types.QTimerEvent): void
proc ontimerEvent*(self: gen_qpropertyanimation_types.QPropertyAnimation, slot: QPropertyAnimationtimerEventProc) =
  # TODO check subclass
  var tmp = new QPropertyAnimationtimerEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQPropertyAnimation_override_virtual_timerEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QPropertyAnimation_timerEvent(self: ptr cQPropertyAnimation, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QPropertyAnimation_timerEvent ".} =
  var nimfunc = cast[ptr QPropertyAnimationtimerEventProc](cast[pointer](slot))
  let slotval1 = gen_qcoreevent_types.QTimerEvent(h: event)


  nimfunc[](slotval1)
proc QPropertyAnimationchildEvent*(self: gen_qpropertyanimation_types.QPropertyAnimation, event: gen_qcoreevent_types.QChildEvent): void =
  fQPropertyAnimation_virtualbase_childEvent(self.h, event.h)

type QPropertyAnimationchildEventProc* = proc(event: gen_qcoreevent_types.QChildEvent): void
proc onchildEvent*(self: gen_qpropertyanimation_types.QPropertyAnimation, slot: QPropertyAnimationchildEventProc) =
  # TODO check subclass
  var tmp = new QPropertyAnimationchildEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQPropertyAnimation_override_virtual_childEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QPropertyAnimation_childEvent(self: ptr cQPropertyAnimation, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QPropertyAnimation_childEvent ".} =
  var nimfunc = cast[ptr QPropertyAnimationchildEventProc](cast[pointer](slot))
  let slotval1 = gen_qcoreevent_types.QChildEvent(h: event)


  nimfunc[](slotval1)
proc QPropertyAnimationcustomEvent*(self: gen_qpropertyanimation_types.QPropertyAnimation, event: gen_qcoreevent_types.QEvent): void =
  fQPropertyAnimation_virtualbase_customEvent(self.h, event.h)

type QPropertyAnimationcustomEventProc* = proc(event: gen_qcoreevent_types.QEvent): void
proc oncustomEvent*(self: gen_qpropertyanimation_types.QPropertyAnimation, slot: QPropertyAnimationcustomEventProc) =
  # TODO check subclass
  var tmp = new QPropertyAnimationcustomEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQPropertyAnimation_override_virtual_customEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QPropertyAnimation_customEvent(self: ptr cQPropertyAnimation, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QPropertyAnimation_customEvent ".} =
  var nimfunc = cast[ptr QPropertyAnimationcustomEventProc](cast[pointer](slot))
  let slotval1 = gen_qcoreevent_types.QEvent(h: event)


  nimfunc[](slotval1)
proc QPropertyAnimationconnectNotify*(self: gen_qpropertyanimation_types.QPropertyAnimation, signal: gen_qmetaobject_types.QMetaMethod): void =
  fQPropertyAnimation_virtualbase_connectNotify(self.h, signal.h)

type QPropertyAnimationconnectNotifyProc* = proc(signal: gen_qmetaobject_types.QMetaMethod): void
proc onconnectNotify*(self: gen_qpropertyanimation_types.QPropertyAnimation, slot: QPropertyAnimationconnectNotifyProc) =
  # TODO check subclass
  var tmp = new QPropertyAnimationconnectNotifyProc
  tmp[] = slot
  GC_ref(tmp)
  fcQPropertyAnimation_override_virtual_connectNotify(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QPropertyAnimation_connectNotify(self: ptr cQPropertyAnimation, slot: int, signal: pointer): void {.exportc: "miqt_exec_callback_QPropertyAnimation_connectNotify ".} =
  var nimfunc = cast[ptr QPropertyAnimationconnectNotifyProc](cast[pointer](slot))
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal)


  nimfunc[](slotval1)
proc QPropertyAnimationdisconnectNotify*(self: gen_qpropertyanimation_types.QPropertyAnimation, signal: gen_qmetaobject_types.QMetaMethod): void =
  fQPropertyAnimation_virtualbase_disconnectNotify(self.h, signal.h)

type QPropertyAnimationdisconnectNotifyProc* = proc(signal: gen_qmetaobject_types.QMetaMethod): void
proc ondisconnectNotify*(self: gen_qpropertyanimation_types.QPropertyAnimation, slot: QPropertyAnimationdisconnectNotifyProc) =
  # TODO check subclass
  var tmp = new QPropertyAnimationdisconnectNotifyProc
  tmp[] = slot
  GC_ref(tmp)
  fcQPropertyAnimation_override_virtual_disconnectNotify(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QPropertyAnimation_disconnectNotify(self: ptr cQPropertyAnimation, slot: int, signal: pointer): void {.exportc: "miqt_exec_callback_QPropertyAnimation_disconnectNotify ".} =
  var nimfunc = cast[ptr QPropertyAnimationdisconnectNotifyProc](cast[pointer](slot))
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal)


  nimfunc[](slotval1)
proc delete*(self: gen_qpropertyanimation_types.QPropertyAnimation) =
  fcQPropertyAnimation_delete(self.h)
