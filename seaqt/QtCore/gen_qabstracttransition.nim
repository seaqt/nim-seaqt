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
{.compile("gen_qabstracttransition.cpp", cflags).}


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

proc fcQAbstractTransition_new(): ptr cQAbstractTransition {.importc: "QAbstractTransition_new".}
proc fcQAbstractTransition_new2(sourceState: pointer): ptr cQAbstractTransition {.importc: "QAbstractTransition_new2".}
proc fcQAbstractTransition_metaObject(self: pointer, ): pointer {.importc: "QAbstractTransition_metaObject".}
proc fcQAbstractTransition_metacast(self: pointer, param1: cstring): pointer {.importc: "QAbstractTransition_metacast".}
proc fcQAbstractTransition_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.importc: "QAbstractTransition_metacall".}
proc fcQAbstractTransition_tr(s: cstring): struct_miqt_string {.importc: "QAbstractTransition_tr".}
proc fcQAbstractTransition_trUtf8(s: cstring): struct_miqt_string {.importc: "QAbstractTransition_trUtf8".}
proc fcQAbstractTransition_sourceState(self: pointer, ): pointer {.importc: "QAbstractTransition_sourceState".}
proc fcQAbstractTransition_targetState(self: pointer, ): pointer {.importc: "QAbstractTransition_targetState".}
proc fcQAbstractTransition_setTargetState(self: pointer, target: pointer): void {.importc: "QAbstractTransition_setTargetState".}
proc fcQAbstractTransition_targetStates(self: pointer, ): struct_miqt_array {.importc: "QAbstractTransition_targetStates".}
proc fcQAbstractTransition_setTargetStates(self: pointer, targets: struct_miqt_array): void {.importc: "QAbstractTransition_setTargetStates".}
proc fcQAbstractTransition_transitionType(self: pointer, ): cint {.importc: "QAbstractTransition_transitionType".}
proc fcQAbstractTransition_setTransitionType(self: pointer, typeVal: cint): void {.importc: "QAbstractTransition_setTransitionType".}
proc fcQAbstractTransition_machine(self: pointer, ): pointer {.importc: "QAbstractTransition_machine".}
proc fcQAbstractTransition_addAnimation(self: pointer, animation: pointer): void {.importc: "QAbstractTransition_addAnimation".}
proc fcQAbstractTransition_removeAnimation(self: pointer, animation: pointer): void {.importc: "QAbstractTransition_removeAnimation".}
proc fcQAbstractTransition_animations(self: pointer, ): struct_miqt_array {.importc: "QAbstractTransition_animations".}
proc fcQAbstractTransition_tr2(s: cstring, c: cstring): struct_miqt_string {.importc: "QAbstractTransition_tr2".}
proc fcQAbstractTransition_tr3(s: cstring, c: cstring, n: cint): struct_miqt_string {.importc: "QAbstractTransition_tr3".}
proc fcQAbstractTransition_trUtf82(s: cstring, c: cstring): struct_miqt_string {.importc: "QAbstractTransition_trUtf82".}
proc fcQAbstractTransition_trUtf83(s: cstring, c: cstring, n: cint): struct_miqt_string {.importc: "QAbstractTransition_trUtf83".}
proc fQAbstractTransition_virtualbase_metaObject(self: pointer, ): pointer{.importc: "QAbstractTransition_virtualbase_metaObject".}
proc fcQAbstractTransition_override_virtual_metaObject(self: pointer, slot: int) {.importc: "QAbstractTransition_override_virtual_metaObject".}
proc fQAbstractTransition_virtualbase_metacast(self: pointer, param1: cstring): pointer{.importc: "QAbstractTransition_virtualbase_metacast".}
proc fcQAbstractTransition_override_virtual_metacast(self: pointer, slot: int) {.importc: "QAbstractTransition_override_virtual_metacast".}
proc fQAbstractTransition_virtualbase_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint{.importc: "QAbstractTransition_virtualbase_metacall".}
proc fcQAbstractTransition_override_virtual_metacall(self: pointer, slot: int) {.importc: "QAbstractTransition_override_virtual_metacall".}
proc fcQAbstractTransition_override_virtual_eventTest(self: pointer, slot: int) {.importc: "QAbstractTransition_override_virtual_eventTest".}
proc fcQAbstractTransition_override_virtual_onTransition(self: pointer, slot: int) {.importc: "QAbstractTransition_override_virtual_onTransition".}
proc fQAbstractTransition_virtualbase_event(self: pointer, e: pointer): bool{.importc: "QAbstractTransition_virtualbase_event".}
proc fcQAbstractTransition_override_virtual_event(self: pointer, slot: int) {.importc: "QAbstractTransition_override_virtual_event".}
proc fQAbstractTransition_virtualbase_eventFilter(self: pointer, watched: pointer, event: pointer): bool{.importc: "QAbstractTransition_virtualbase_eventFilter".}
proc fcQAbstractTransition_override_virtual_eventFilter(self: pointer, slot: int) {.importc: "QAbstractTransition_override_virtual_eventFilter".}
proc fQAbstractTransition_virtualbase_timerEvent(self: pointer, event: pointer): void{.importc: "QAbstractTransition_virtualbase_timerEvent".}
proc fcQAbstractTransition_override_virtual_timerEvent(self: pointer, slot: int) {.importc: "QAbstractTransition_override_virtual_timerEvent".}
proc fQAbstractTransition_virtualbase_childEvent(self: pointer, event: pointer): void{.importc: "QAbstractTransition_virtualbase_childEvent".}
proc fcQAbstractTransition_override_virtual_childEvent(self: pointer, slot: int) {.importc: "QAbstractTransition_override_virtual_childEvent".}
proc fQAbstractTransition_virtualbase_customEvent(self: pointer, event: pointer): void{.importc: "QAbstractTransition_virtualbase_customEvent".}
proc fcQAbstractTransition_override_virtual_customEvent(self: pointer, slot: int) {.importc: "QAbstractTransition_override_virtual_customEvent".}
proc fQAbstractTransition_virtualbase_connectNotify(self: pointer, signal: pointer): void{.importc: "QAbstractTransition_virtualbase_connectNotify".}
proc fcQAbstractTransition_override_virtual_connectNotify(self: pointer, slot: int) {.importc: "QAbstractTransition_override_virtual_connectNotify".}
proc fQAbstractTransition_virtualbase_disconnectNotify(self: pointer, signal: pointer): void{.importc: "QAbstractTransition_virtualbase_disconnectNotify".}
proc fcQAbstractTransition_override_virtual_disconnectNotify(self: pointer, slot: int) {.importc: "QAbstractTransition_override_virtual_disconnectNotify".}
proc fcQAbstractTransition_staticMetaObject(): pointer {.importc: "QAbstractTransition_staticMetaObject".}
proc fcQAbstractTransition_delete(self: pointer) {.importc: "QAbstractTransition_delete".}


func init*(T: type gen_qabstracttransition_types.QAbstractTransition, h: ptr cQAbstractTransition): gen_qabstracttransition_types.QAbstractTransition =
  T(h: h)
proc create*(T: type gen_qabstracttransition_types.QAbstractTransition, ): gen_qabstracttransition_types.QAbstractTransition =
  gen_qabstracttransition_types.QAbstractTransition.init(fcQAbstractTransition_new())

proc create*(T: type gen_qabstracttransition_types.QAbstractTransition, sourceState: gen_qstate_types.QState): gen_qabstracttransition_types.QAbstractTransition =
  gen_qabstracttransition_types.QAbstractTransition.init(fcQAbstractTransition_new2(sourceState.h))

proc metaObject*(self: gen_qabstracttransition_types.QAbstractTransition, ): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQAbstractTransition_metaObject(self.h))

proc metacast*(self: gen_qabstracttransition_types.QAbstractTransition, param1: cstring): pointer =
  fcQAbstractTransition_metacast(self.h, param1)

proc metacall*(self: gen_qabstracttransition_types.QAbstractTransition, param1: cint, param2: cint, param3: pointer): cint =
  fcQAbstractTransition_metacall(self.h, cint(param1), param2, param3)

proc tr*(_: type gen_qabstracttransition_types.QAbstractTransition, s: cstring): string =
  let v_ms = fcQAbstractTransition_tr(s)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc trUtf8*(_: type gen_qabstracttransition_types.QAbstractTransition, s: cstring): string =
  let v_ms = fcQAbstractTransition_trUtf8(s)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc sourceState*(self: gen_qabstracttransition_types.QAbstractTransition, ): gen_qstate_types.QState =
  gen_qstate_types.QState(h: fcQAbstractTransition_sourceState(self.h))

proc targetState*(self: gen_qabstracttransition_types.QAbstractTransition, ): gen_qabstractstate_types.QAbstractState =
  gen_qabstractstate_types.QAbstractState(h: fcQAbstractTransition_targetState(self.h))

proc setTargetState*(self: gen_qabstracttransition_types.QAbstractTransition, target: gen_qabstractstate_types.QAbstractState): void =
  fcQAbstractTransition_setTargetState(self.h, target.h)

proc targetStates*(self: gen_qabstracttransition_types.QAbstractTransition, ): seq[gen_qabstractstate_types.QAbstractState] =
  var v_ma = fcQAbstractTransition_targetStates(self.h)
  var vx_ret = newSeq[gen_qabstractstate_types.QAbstractState](int(v_ma.len))
  let v_outCast = cast[ptr UncheckedArray[pointer]](v_ma.data)
  for i in 0 ..< v_ma.len:
    vx_ret[i] = gen_qabstractstate_types.QAbstractState(h: v_outCast[i])
  vx_ret

proc setTargetStates*(self: gen_qabstracttransition_types.QAbstractTransition, targets: seq[gen_qabstractstate_types.QAbstractState]): void =
  var targets_CArray = newSeq[pointer](len(targets))
  for i in 0..<len(targets):
    targets_CArray[i] = targets[i].h

  fcQAbstractTransition_setTargetStates(self.h, struct_miqt_array(len: csize_t(len(targets)), data: if len(targets) == 0: nil else: addr(targets_CArray[0])))

proc transitionType*(self: gen_qabstracttransition_types.QAbstractTransition, ): cint =
  cint(fcQAbstractTransition_transitionType(self.h))

proc setTransitionType*(self: gen_qabstracttransition_types.QAbstractTransition, typeVal: cint): void =
  fcQAbstractTransition_setTransitionType(self.h, cint(typeVal))

proc machine*(self: gen_qabstracttransition_types.QAbstractTransition, ): gen_qstatemachine_types.QStateMachine =
  gen_qstatemachine_types.QStateMachine(h: fcQAbstractTransition_machine(self.h))

proc addAnimation*(self: gen_qabstracttransition_types.QAbstractTransition, animation: gen_qabstractanimation_types.QAbstractAnimation): void =
  fcQAbstractTransition_addAnimation(self.h, animation.h)

proc removeAnimation*(self: gen_qabstracttransition_types.QAbstractTransition, animation: gen_qabstractanimation_types.QAbstractAnimation): void =
  fcQAbstractTransition_removeAnimation(self.h, animation.h)

proc animations*(self: gen_qabstracttransition_types.QAbstractTransition, ): seq[gen_qabstractanimation_types.QAbstractAnimation] =
  var v_ma = fcQAbstractTransition_animations(self.h)
  var vx_ret = newSeq[gen_qabstractanimation_types.QAbstractAnimation](int(v_ma.len))
  let v_outCast = cast[ptr UncheckedArray[pointer]](v_ma.data)
  for i in 0 ..< v_ma.len:
    vx_ret[i] = gen_qabstractanimation_types.QAbstractAnimation(h: v_outCast[i])
  vx_ret

proc tr*(_: type gen_qabstracttransition_types.QAbstractTransition, s: cstring, c: cstring): string =
  let v_ms = fcQAbstractTransition_tr2(s, c)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc tr*(_: type gen_qabstracttransition_types.QAbstractTransition, s: cstring, c: cstring, n: cint): string =
  let v_ms = fcQAbstractTransition_tr3(s, c, n)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc trUtf8*(_: type gen_qabstracttransition_types.QAbstractTransition, s: cstring, c: cstring): string =
  let v_ms = fcQAbstractTransition_trUtf82(s, c)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc trUtf8*(_: type gen_qabstracttransition_types.QAbstractTransition, s: cstring, c: cstring, n: cint): string =
  let v_ms = fcQAbstractTransition_trUtf83(s, c, n)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc QAbstractTransitionmetaObject*(self: gen_qabstracttransition_types.QAbstractTransition, ): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fQAbstractTransition_virtualbase_metaObject(self.h))

type QAbstractTransitionmetaObjectProc* = proc(): gen_qobjectdefs_types.QMetaObject
proc onmetaObject*(self: gen_qabstracttransition_types.QAbstractTransition, slot: QAbstractTransitionmetaObjectProc) =
  # TODO check subclass
  var tmp = new QAbstractTransitionmetaObjectProc
  tmp[] = slot
  GC_ref(tmp)
  fcQAbstractTransition_override_virtual_metaObject(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QAbstractTransition_metaObject(self: ptr cQAbstractTransition, slot: int): pointer {.exportc: "miqt_exec_callback_QAbstractTransition_metaObject ".} =
  var nimfunc = cast[ptr QAbstractTransitionmetaObjectProc](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )

  virtualReturn.h
proc QAbstractTransitionmetacast*(self: gen_qabstracttransition_types.QAbstractTransition, param1: cstring): pointer =
  fQAbstractTransition_virtualbase_metacast(self.h, param1)

type QAbstractTransitionmetacastProc* = proc(param1: cstring): pointer
proc onmetacast*(self: gen_qabstracttransition_types.QAbstractTransition, slot: QAbstractTransitionmetacastProc) =
  # TODO check subclass
  var tmp = new QAbstractTransitionmetacastProc
  tmp[] = slot
  GC_ref(tmp)
  fcQAbstractTransition_override_virtual_metacast(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QAbstractTransition_metacast(self: ptr cQAbstractTransition, slot: int, param1: cstring): pointer {.exportc: "miqt_exec_callback_QAbstractTransition_metacast ".} =
  var nimfunc = cast[ptr QAbstractTransitionmetacastProc](cast[pointer](slot))
  let slotval1 = (param1)


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn
proc QAbstractTransitionmetacall*(self: gen_qabstracttransition_types.QAbstractTransition, param1: cint, param2: cint, param3: pointer): cint =
  fQAbstractTransition_virtualbase_metacall(self.h, cint(param1), param2, param3)

type QAbstractTransitionmetacallProc* = proc(param1: cint, param2: cint, param3: pointer): cint
proc onmetacall*(self: gen_qabstracttransition_types.QAbstractTransition, slot: QAbstractTransitionmetacallProc) =
  # TODO check subclass
  var tmp = new QAbstractTransitionmetacallProc
  tmp[] = slot
  GC_ref(tmp)
  fcQAbstractTransition_override_virtual_metacall(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QAbstractTransition_metacall(self: ptr cQAbstractTransition, slot: int, param1: cint, param2: cint, param3: pointer): cint {.exportc: "miqt_exec_callback_QAbstractTransition_metacall ".} =
  var nimfunc = cast[ptr QAbstractTransitionmetacallProc](cast[pointer](slot))
  let slotval1 = cint(param1)

  let slotval2 = param2

  let slotval3 = param3


  let virtualReturn = nimfunc[](slotval1, slotval2, slotval3 )

  virtualReturn
type QAbstractTransitioneventTestProc* = proc(event: gen_qcoreevent_types.QEvent): bool
proc oneventTest*(self: gen_qabstracttransition_types.QAbstractTransition, slot: QAbstractTransitioneventTestProc) =
  # TODO check subclass
  var tmp = new QAbstractTransitioneventTestProc
  tmp[] = slot
  GC_ref(tmp)
  fcQAbstractTransition_override_virtual_eventTest(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QAbstractTransition_eventTest(self: ptr cQAbstractTransition, slot: int, event: pointer): bool {.exportc: "miqt_exec_callback_QAbstractTransition_eventTest ".} =
  var nimfunc = cast[ptr QAbstractTransitioneventTestProc](cast[pointer](slot))
  let slotval1 = gen_qcoreevent_types.QEvent(h: event)


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn
type QAbstractTransitiononTransitionProc* = proc(event: gen_qcoreevent_types.QEvent): void
proc ononTransition*(self: gen_qabstracttransition_types.QAbstractTransition, slot: QAbstractTransitiononTransitionProc) =
  # TODO check subclass
  var tmp = new QAbstractTransitiononTransitionProc
  tmp[] = slot
  GC_ref(tmp)
  fcQAbstractTransition_override_virtual_onTransition(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QAbstractTransition_onTransition(self: ptr cQAbstractTransition, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QAbstractTransition_onTransition ".} =
  var nimfunc = cast[ptr QAbstractTransitiononTransitionProc](cast[pointer](slot))
  let slotval1 = gen_qcoreevent_types.QEvent(h: event)


  nimfunc[](slotval1)
proc QAbstractTransitionevent*(self: gen_qabstracttransition_types.QAbstractTransition, e: gen_qcoreevent_types.QEvent): bool =
  fQAbstractTransition_virtualbase_event(self.h, e.h)

type QAbstractTransitioneventProc* = proc(e: gen_qcoreevent_types.QEvent): bool
proc onevent*(self: gen_qabstracttransition_types.QAbstractTransition, slot: QAbstractTransitioneventProc) =
  # TODO check subclass
  var tmp = new QAbstractTransitioneventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQAbstractTransition_override_virtual_event(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QAbstractTransition_event(self: ptr cQAbstractTransition, slot: int, e: pointer): bool {.exportc: "miqt_exec_callback_QAbstractTransition_event ".} =
  var nimfunc = cast[ptr QAbstractTransitioneventProc](cast[pointer](slot))
  let slotval1 = gen_qcoreevent_types.QEvent(h: e)


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn
proc QAbstractTransitioneventFilter*(self: gen_qabstracttransition_types.QAbstractTransition, watched: gen_qobject_types.QObject, event: gen_qcoreevent_types.QEvent): bool =
  fQAbstractTransition_virtualbase_eventFilter(self.h, watched.h, event.h)

type QAbstractTransitioneventFilterProc* = proc(watched: gen_qobject_types.QObject, event: gen_qcoreevent_types.QEvent): bool
proc oneventFilter*(self: gen_qabstracttransition_types.QAbstractTransition, slot: QAbstractTransitioneventFilterProc) =
  # TODO check subclass
  var tmp = new QAbstractTransitioneventFilterProc
  tmp[] = slot
  GC_ref(tmp)
  fcQAbstractTransition_override_virtual_eventFilter(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QAbstractTransition_eventFilter(self: ptr cQAbstractTransition, slot: int, watched: pointer, event: pointer): bool {.exportc: "miqt_exec_callback_QAbstractTransition_eventFilter ".} =
  var nimfunc = cast[ptr QAbstractTransitioneventFilterProc](cast[pointer](slot))
  let slotval1 = gen_qobject_types.QObject(h: watched)

  let slotval2 = gen_qcoreevent_types.QEvent(h: event)


  let virtualReturn = nimfunc[](slotval1, slotval2 )

  virtualReturn
proc QAbstractTransitiontimerEvent*(self: gen_qabstracttransition_types.QAbstractTransition, event: gen_qcoreevent_types.QTimerEvent): void =
  fQAbstractTransition_virtualbase_timerEvent(self.h, event.h)

type QAbstractTransitiontimerEventProc* = proc(event: gen_qcoreevent_types.QTimerEvent): void
proc ontimerEvent*(self: gen_qabstracttransition_types.QAbstractTransition, slot: QAbstractTransitiontimerEventProc) =
  # TODO check subclass
  var tmp = new QAbstractTransitiontimerEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQAbstractTransition_override_virtual_timerEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QAbstractTransition_timerEvent(self: ptr cQAbstractTransition, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QAbstractTransition_timerEvent ".} =
  var nimfunc = cast[ptr QAbstractTransitiontimerEventProc](cast[pointer](slot))
  let slotval1 = gen_qcoreevent_types.QTimerEvent(h: event)


  nimfunc[](slotval1)
proc QAbstractTransitionchildEvent*(self: gen_qabstracttransition_types.QAbstractTransition, event: gen_qcoreevent_types.QChildEvent): void =
  fQAbstractTransition_virtualbase_childEvent(self.h, event.h)

type QAbstractTransitionchildEventProc* = proc(event: gen_qcoreevent_types.QChildEvent): void
proc onchildEvent*(self: gen_qabstracttransition_types.QAbstractTransition, slot: QAbstractTransitionchildEventProc) =
  # TODO check subclass
  var tmp = new QAbstractTransitionchildEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQAbstractTransition_override_virtual_childEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QAbstractTransition_childEvent(self: ptr cQAbstractTransition, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QAbstractTransition_childEvent ".} =
  var nimfunc = cast[ptr QAbstractTransitionchildEventProc](cast[pointer](slot))
  let slotval1 = gen_qcoreevent_types.QChildEvent(h: event)


  nimfunc[](slotval1)
proc QAbstractTransitioncustomEvent*(self: gen_qabstracttransition_types.QAbstractTransition, event: gen_qcoreevent_types.QEvent): void =
  fQAbstractTransition_virtualbase_customEvent(self.h, event.h)

type QAbstractTransitioncustomEventProc* = proc(event: gen_qcoreevent_types.QEvent): void
proc oncustomEvent*(self: gen_qabstracttransition_types.QAbstractTransition, slot: QAbstractTransitioncustomEventProc) =
  # TODO check subclass
  var tmp = new QAbstractTransitioncustomEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQAbstractTransition_override_virtual_customEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QAbstractTransition_customEvent(self: ptr cQAbstractTransition, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QAbstractTransition_customEvent ".} =
  var nimfunc = cast[ptr QAbstractTransitioncustomEventProc](cast[pointer](slot))
  let slotval1 = gen_qcoreevent_types.QEvent(h: event)


  nimfunc[](slotval1)
proc QAbstractTransitionconnectNotify*(self: gen_qabstracttransition_types.QAbstractTransition, signal: gen_qmetaobject_types.QMetaMethod): void =
  fQAbstractTransition_virtualbase_connectNotify(self.h, signal.h)

type QAbstractTransitionconnectNotifyProc* = proc(signal: gen_qmetaobject_types.QMetaMethod): void
proc onconnectNotify*(self: gen_qabstracttransition_types.QAbstractTransition, slot: QAbstractTransitionconnectNotifyProc) =
  # TODO check subclass
  var tmp = new QAbstractTransitionconnectNotifyProc
  tmp[] = slot
  GC_ref(tmp)
  fcQAbstractTransition_override_virtual_connectNotify(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QAbstractTransition_connectNotify(self: ptr cQAbstractTransition, slot: int, signal: pointer): void {.exportc: "miqt_exec_callback_QAbstractTransition_connectNotify ".} =
  var nimfunc = cast[ptr QAbstractTransitionconnectNotifyProc](cast[pointer](slot))
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal)


  nimfunc[](slotval1)
proc QAbstractTransitiondisconnectNotify*(self: gen_qabstracttransition_types.QAbstractTransition, signal: gen_qmetaobject_types.QMetaMethod): void =
  fQAbstractTransition_virtualbase_disconnectNotify(self.h, signal.h)

type QAbstractTransitiondisconnectNotifyProc* = proc(signal: gen_qmetaobject_types.QMetaMethod): void
proc ondisconnectNotify*(self: gen_qabstracttransition_types.QAbstractTransition, slot: QAbstractTransitiondisconnectNotifyProc) =
  # TODO check subclass
  var tmp = new QAbstractTransitiondisconnectNotifyProc
  tmp[] = slot
  GC_ref(tmp)
  fcQAbstractTransition_override_virtual_disconnectNotify(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QAbstractTransition_disconnectNotify(self: ptr cQAbstractTransition, slot: int, signal: pointer): void {.exportc: "miqt_exec_callback_QAbstractTransition_disconnectNotify ".} =
  var nimfunc = cast[ptr QAbstractTransitiondisconnectNotifyProc](cast[pointer](slot))
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal)


  nimfunc[](slotval1)
proc staticMetaObject*(_: type gen_qabstracttransition_types.QAbstractTransition): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQAbstractTransition_staticMetaObject())
proc delete*(self: gen_qabstracttransition_types.QAbstractTransition) =
  fcQAbstractTransition_delete(self.h)
