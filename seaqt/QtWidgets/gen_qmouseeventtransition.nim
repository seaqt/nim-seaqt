import ./Qt5Widgets_libs

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

const cflags = gorge("pkg-config --cflags Qt5Widgets")  & " -fPIC"
{.compile("gen_qmouseeventtransition.cpp", cflags).}


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

proc fcQMouseEventTransition_new(): ptr cQMouseEventTransition {.importc: "QMouseEventTransition_new".}
proc fcQMouseEventTransition_new2(objectVal: pointer, typeVal: cint, button: cint): ptr cQMouseEventTransition {.importc: "QMouseEventTransition_new2".}
proc fcQMouseEventTransition_new3(sourceState: pointer): ptr cQMouseEventTransition {.importc: "QMouseEventTransition_new3".}
proc fcQMouseEventTransition_new4(objectVal: pointer, typeVal: cint, button: cint, sourceState: pointer): ptr cQMouseEventTransition {.importc: "QMouseEventTransition_new4".}
proc fcQMouseEventTransition_metaObject(self: pointer, ): pointer {.importc: "QMouseEventTransition_metaObject".}
proc fcQMouseEventTransition_metacast(self: pointer, param1: cstring): pointer {.importc: "QMouseEventTransition_metacast".}
proc fcQMouseEventTransition_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.importc: "QMouseEventTransition_metacall".}
proc fcQMouseEventTransition_tr(s: cstring): struct_miqt_string {.importc: "QMouseEventTransition_tr".}
proc fcQMouseEventTransition_trUtf8(s: cstring): struct_miqt_string {.importc: "QMouseEventTransition_trUtf8".}
proc fcQMouseEventTransition_button(self: pointer, ): cint {.importc: "QMouseEventTransition_button".}
proc fcQMouseEventTransition_setButton(self: pointer, button: cint): void {.importc: "QMouseEventTransition_setButton".}
proc fcQMouseEventTransition_modifierMask(self: pointer, ): cint {.importc: "QMouseEventTransition_modifierMask".}
proc fcQMouseEventTransition_setModifierMask(self: pointer, modifiers: cint): void {.importc: "QMouseEventTransition_setModifierMask".}
proc fcQMouseEventTransition_hitTestPath(self: pointer, ): pointer {.importc: "QMouseEventTransition_hitTestPath".}
proc fcQMouseEventTransition_setHitTestPath(self: pointer, path: pointer): void {.importc: "QMouseEventTransition_setHitTestPath".}
proc fcQMouseEventTransition_tr2(s: cstring, c: cstring): struct_miqt_string {.importc: "QMouseEventTransition_tr2".}
proc fcQMouseEventTransition_tr3(s: cstring, c: cstring, n: cint): struct_miqt_string {.importc: "QMouseEventTransition_tr3".}
proc fcQMouseEventTransition_trUtf82(s: cstring, c: cstring): struct_miqt_string {.importc: "QMouseEventTransition_trUtf82".}
proc fcQMouseEventTransition_trUtf83(s: cstring, c: cstring, n: cint): struct_miqt_string {.importc: "QMouseEventTransition_trUtf83".}
proc fQMouseEventTransition_virtualbase_metaObject(self: pointer, ): pointer{.importc: "QMouseEventTransition_virtualbase_metaObject".}
proc fcQMouseEventTransition_override_virtual_metaObject(self: pointer, slot: int) {.importc: "QMouseEventTransition_override_virtual_metaObject".}
proc fQMouseEventTransition_virtualbase_metacast(self: pointer, param1: cstring): pointer{.importc: "QMouseEventTransition_virtualbase_metacast".}
proc fcQMouseEventTransition_override_virtual_metacast(self: pointer, slot: int) {.importc: "QMouseEventTransition_override_virtual_metacast".}
proc fQMouseEventTransition_virtualbase_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint{.importc: "QMouseEventTransition_virtualbase_metacall".}
proc fcQMouseEventTransition_override_virtual_metacall(self: pointer, slot: int) {.importc: "QMouseEventTransition_override_virtual_metacall".}
proc fQMouseEventTransition_virtualbase_onTransition(self: pointer, event: pointer): void{.importc: "QMouseEventTransition_virtualbase_onTransition".}
proc fcQMouseEventTransition_override_virtual_onTransition(self: pointer, slot: int) {.importc: "QMouseEventTransition_override_virtual_onTransition".}
proc fQMouseEventTransition_virtualbase_eventTest(self: pointer, event: pointer): bool{.importc: "QMouseEventTransition_virtualbase_eventTest".}
proc fcQMouseEventTransition_override_virtual_eventTest(self: pointer, slot: int) {.importc: "QMouseEventTransition_override_virtual_eventTest".}
proc fQMouseEventTransition_virtualbase_event(self: pointer, e: pointer): bool{.importc: "QMouseEventTransition_virtualbase_event".}
proc fcQMouseEventTransition_override_virtual_event(self: pointer, slot: int) {.importc: "QMouseEventTransition_override_virtual_event".}
proc fQMouseEventTransition_virtualbase_eventFilter(self: pointer, watched: pointer, event: pointer): bool{.importc: "QMouseEventTransition_virtualbase_eventFilter".}
proc fcQMouseEventTransition_override_virtual_eventFilter(self: pointer, slot: int) {.importc: "QMouseEventTransition_override_virtual_eventFilter".}
proc fQMouseEventTransition_virtualbase_timerEvent(self: pointer, event: pointer): void{.importc: "QMouseEventTransition_virtualbase_timerEvent".}
proc fcQMouseEventTransition_override_virtual_timerEvent(self: pointer, slot: int) {.importc: "QMouseEventTransition_override_virtual_timerEvent".}
proc fQMouseEventTransition_virtualbase_childEvent(self: pointer, event: pointer): void{.importc: "QMouseEventTransition_virtualbase_childEvent".}
proc fcQMouseEventTransition_override_virtual_childEvent(self: pointer, slot: int) {.importc: "QMouseEventTransition_override_virtual_childEvent".}
proc fQMouseEventTransition_virtualbase_customEvent(self: pointer, event: pointer): void{.importc: "QMouseEventTransition_virtualbase_customEvent".}
proc fcQMouseEventTransition_override_virtual_customEvent(self: pointer, slot: int) {.importc: "QMouseEventTransition_override_virtual_customEvent".}
proc fQMouseEventTransition_virtualbase_connectNotify(self: pointer, signal: pointer): void{.importc: "QMouseEventTransition_virtualbase_connectNotify".}
proc fcQMouseEventTransition_override_virtual_connectNotify(self: pointer, slot: int) {.importc: "QMouseEventTransition_override_virtual_connectNotify".}
proc fQMouseEventTransition_virtualbase_disconnectNotify(self: pointer, signal: pointer): void{.importc: "QMouseEventTransition_virtualbase_disconnectNotify".}
proc fcQMouseEventTransition_override_virtual_disconnectNotify(self: pointer, slot: int) {.importc: "QMouseEventTransition_override_virtual_disconnectNotify".}
proc fcQMouseEventTransition_staticMetaObject(): pointer {.importc: "QMouseEventTransition_staticMetaObject".}
proc fcQMouseEventTransition_delete(self: pointer) {.importc: "QMouseEventTransition_delete".}


func init*(T: type gen_qmouseeventtransition_types.QMouseEventTransition, h: ptr cQMouseEventTransition): gen_qmouseeventtransition_types.QMouseEventTransition =
  T(h: h)
proc create*(T: type gen_qmouseeventtransition_types.QMouseEventTransition, ): gen_qmouseeventtransition_types.QMouseEventTransition =
  gen_qmouseeventtransition_types.QMouseEventTransition.init(fcQMouseEventTransition_new())

proc create*(T: type gen_qmouseeventtransition_types.QMouseEventTransition, objectVal: gen_qobject_types.QObject, typeVal: cint, button: cint): gen_qmouseeventtransition_types.QMouseEventTransition =
  gen_qmouseeventtransition_types.QMouseEventTransition.init(fcQMouseEventTransition_new2(objectVal.h, cint(typeVal), cint(button)))

proc create*(T: type gen_qmouseeventtransition_types.QMouseEventTransition, sourceState: gen_qstate_types.QState): gen_qmouseeventtransition_types.QMouseEventTransition =
  gen_qmouseeventtransition_types.QMouseEventTransition.init(fcQMouseEventTransition_new3(sourceState.h))

proc create*(T: type gen_qmouseeventtransition_types.QMouseEventTransition, objectVal: gen_qobject_types.QObject, typeVal: cint, button: cint, sourceState: gen_qstate_types.QState): gen_qmouseeventtransition_types.QMouseEventTransition =
  gen_qmouseeventtransition_types.QMouseEventTransition.init(fcQMouseEventTransition_new4(objectVal.h, cint(typeVal), cint(button), sourceState.h))

proc metaObject*(self: gen_qmouseeventtransition_types.QMouseEventTransition, ): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQMouseEventTransition_metaObject(self.h))

proc metacast*(self: gen_qmouseeventtransition_types.QMouseEventTransition, param1: cstring): pointer =
  fcQMouseEventTransition_metacast(self.h, param1)

proc metacall*(self: gen_qmouseeventtransition_types.QMouseEventTransition, param1: cint, param2: cint, param3: pointer): cint =
  fcQMouseEventTransition_metacall(self.h, cint(param1), param2, param3)

proc tr*(_: type gen_qmouseeventtransition_types.QMouseEventTransition, s: cstring): string =
  let v_ms = fcQMouseEventTransition_tr(s)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc trUtf8*(_: type gen_qmouseeventtransition_types.QMouseEventTransition, s: cstring): string =
  let v_ms = fcQMouseEventTransition_trUtf8(s)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc button*(self: gen_qmouseeventtransition_types.QMouseEventTransition, ): cint =
  cint(fcQMouseEventTransition_button(self.h))

proc setButton*(self: gen_qmouseeventtransition_types.QMouseEventTransition, button: cint): void =
  fcQMouseEventTransition_setButton(self.h, cint(button))

proc modifierMask*(self: gen_qmouseeventtransition_types.QMouseEventTransition, ): cint =
  cint(fcQMouseEventTransition_modifierMask(self.h))

proc setModifierMask*(self: gen_qmouseeventtransition_types.QMouseEventTransition, modifiers: cint): void =
  fcQMouseEventTransition_setModifierMask(self.h, cint(modifiers))

proc hitTestPath*(self: gen_qmouseeventtransition_types.QMouseEventTransition, ): gen_qpainterpath_types.QPainterPath =
  gen_qpainterpath_types.QPainterPath(h: fcQMouseEventTransition_hitTestPath(self.h))

proc setHitTestPath*(self: gen_qmouseeventtransition_types.QMouseEventTransition, path: gen_qpainterpath_types.QPainterPath): void =
  fcQMouseEventTransition_setHitTestPath(self.h, path.h)

proc tr*(_: type gen_qmouseeventtransition_types.QMouseEventTransition, s: cstring, c: cstring): string =
  let v_ms = fcQMouseEventTransition_tr2(s, c)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc tr*(_: type gen_qmouseeventtransition_types.QMouseEventTransition, s: cstring, c: cstring, n: cint): string =
  let v_ms = fcQMouseEventTransition_tr3(s, c, n)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc trUtf8*(_: type gen_qmouseeventtransition_types.QMouseEventTransition, s: cstring, c: cstring): string =
  let v_ms = fcQMouseEventTransition_trUtf82(s, c)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc trUtf8*(_: type gen_qmouseeventtransition_types.QMouseEventTransition, s: cstring, c: cstring, n: cint): string =
  let v_ms = fcQMouseEventTransition_trUtf83(s, c, n)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc QMouseEventTransitionmetaObject*(self: gen_qmouseeventtransition_types.QMouseEventTransition, ): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fQMouseEventTransition_virtualbase_metaObject(self.h))

type QMouseEventTransitionmetaObjectProc* = proc(): gen_qobjectdefs_types.QMetaObject
proc onmetaObject*(self: gen_qmouseeventtransition_types.QMouseEventTransition, slot: QMouseEventTransitionmetaObjectProc) =
  # TODO check subclass
  var tmp = new QMouseEventTransitionmetaObjectProc
  tmp[] = slot
  GC_ref(tmp)
  fcQMouseEventTransition_override_virtual_metaObject(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QMouseEventTransition_metaObject(self: ptr cQMouseEventTransition, slot: int): pointer {.exportc: "miqt_exec_callback_QMouseEventTransition_metaObject ".} =
  var nimfunc = cast[ptr QMouseEventTransitionmetaObjectProc](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )

  virtualReturn.h
proc QMouseEventTransitionmetacast*(self: gen_qmouseeventtransition_types.QMouseEventTransition, param1: cstring): pointer =
  fQMouseEventTransition_virtualbase_metacast(self.h, param1)

type QMouseEventTransitionmetacastProc* = proc(param1: cstring): pointer
proc onmetacast*(self: gen_qmouseeventtransition_types.QMouseEventTransition, slot: QMouseEventTransitionmetacastProc) =
  # TODO check subclass
  var tmp = new QMouseEventTransitionmetacastProc
  tmp[] = slot
  GC_ref(tmp)
  fcQMouseEventTransition_override_virtual_metacast(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QMouseEventTransition_metacast(self: ptr cQMouseEventTransition, slot: int, param1: cstring): pointer {.exportc: "miqt_exec_callback_QMouseEventTransition_metacast ".} =
  var nimfunc = cast[ptr QMouseEventTransitionmetacastProc](cast[pointer](slot))
  let slotval1 = (param1)


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn
proc QMouseEventTransitionmetacall*(self: gen_qmouseeventtransition_types.QMouseEventTransition, param1: cint, param2: cint, param3: pointer): cint =
  fQMouseEventTransition_virtualbase_metacall(self.h, cint(param1), param2, param3)

type QMouseEventTransitionmetacallProc* = proc(param1: cint, param2: cint, param3: pointer): cint
proc onmetacall*(self: gen_qmouseeventtransition_types.QMouseEventTransition, slot: QMouseEventTransitionmetacallProc) =
  # TODO check subclass
  var tmp = new QMouseEventTransitionmetacallProc
  tmp[] = slot
  GC_ref(tmp)
  fcQMouseEventTransition_override_virtual_metacall(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QMouseEventTransition_metacall(self: ptr cQMouseEventTransition, slot: int, param1: cint, param2: cint, param3: pointer): cint {.exportc: "miqt_exec_callback_QMouseEventTransition_metacall ".} =
  var nimfunc = cast[ptr QMouseEventTransitionmetacallProc](cast[pointer](slot))
  let slotval1 = cint(param1)

  let slotval2 = param2

  let slotval3 = param3


  let virtualReturn = nimfunc[](slotval1, slotval2, slotval3 )

  virtualReturn
proc QMouseEventTransitiononTransition*(self: gen_qmouseeventtransition_types.QMouseEventTransition, event: gen_qcoreevent_types.QEvent): void =
  fQMouseEventTransition_virtualbase_onTransition(self.h, event.h)

type QMouseEventTransitiononTransitionProc* = proc(event: gen_qcoreevent_types.QEvent): void
proc ononTransition*(self: gen_qmouseeventtransition_types.QMouseEventTransition, slot: QMouseEventTransitiononTransitionProc) =
  # TODO check subclass
  var tmp = new QMouseEventTransitiononTransitionProc
  tmp[] = slot
  GC_ref(tmp)
  fcQMouseEventTransition_override_virtual_onTransition(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QMouseEventTransition_onTransition(self: ptr cQMouseEventTransition, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QMouseEventTransition_onTransition ".} =
  var nimfunc = cast[ptr QMouseEventTransitiononTransitionProc](cast[pointer](slot))
  let slotval1 = gen_qcoreevent_types.QEvent(h: event)


  nimfunc[](slotval1)
proc QMouseEventTransitioneventTest*(self: gen_qmouseeventtransition_types.QMouseEventTransition, event: gen_qcoreevent_types.QEvent): bool =
  fQMouseEventTransition_virtualbase_eventTest(self.h, event.h)

type QMouseEventTransitioneventTestProc* = proc(event: gen_qcoreevent_types.QEvent): bool
proc oneventTest*(self: gen_qmouseeventtransition_types.QMouseEventTransition, slot: QMouseEventTransitioneventTestProc) =
  # TODO check subclass
  var tmp = new QMouseEventTransitioneventTestProc
  tmp[] = slot
  GC_ref(tmp)
  fcQMouseEventTransition_override_virtual_eventTest(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QMouseEventTransition_eventTest(self: ptr cQMouseEventTransition, slot: int, event: pointer): bool {.exportc: "miqt_exec_callback_QMouseEventTransition_eventTest ".} =
  var nimfunc = cast[ptr QMouseEventTransitioneventTestProc](cast[pointer](slot))
  let slotval1 = gen_qcoreevent_types.QEvent(h: event)


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn
proc QMouseEventTransitionevent*(self: gen_qmouseeventtransition_types.QMouseEventTransition, e: gen_qcoreevent_types.QEvent): bool =
  fQMouseEventTransition_virtualbase_event(self.h, e.h)

type QMouseEventTransitioneventProc* = proc(e: gen_qcoreevent_types.QEvent): bool
proc onevent*(self: gen_qmouseeventtransition_types.QMouseEventTransition, slot: QMouseEventTransitioneventProc) =
  # TODO check subclass
  var tmp = new QMouseEventTransitioneventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQMouseEventTransition_override_virtual_event(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QMouseEventTransition_event(self: ptr cQMouseEventTransition, slot: int, e: pointer): bool {.exportc: "miqt_exec_callback_QMouseEventTransition_event ".} =
  var nimfunc = cast[ptr QMouseEventTransitioneventProc](cast[pointer](slot))
  let slotval1 = gen_qcoreevent_types.QEvent(h: e)


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn
proc QMouseEventTransitioneventFilter*(self: gen_qmouseeventtransition_types.QMouseEventTransition, watched: gen_qobject_types.QObject, event: gen_qcoreevent_types.QEvent): bool =
  fQMouseEventTransition_virtualbase_eventFilter(self.h, watched.h, event.h)

type QMouseEventTransitioneventFilterProc* = proc(watched: gen_qobject_types.QObject, event: gen_qcoreevent_types.QEvent): bool
proc oneventFilter*(self: gen_qmouseeventtransition_types.QMouseEventTransition, slot: QMouseEventTransitioneventFilterProc) =
  # TODO check subclass
  var tmp = new QMouseEventTransitioneventFilterProc
  tmp[] = slot
  GC_ref(tmp)
  fcQMouseEventTransition_override_virtual_eventFilter(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QMouseEventTransition_eventFilter(self: ptr cQMouseEventTransition, slot: int, watched: pointer, event: pointer): bool {.exportc: "miqt_exec_callback_QMouseEventTransition_eventFilter ".} =
  var nimfunc = cast[ptr QMouseEventTransitioneventFilterProc](cast[pointer](slot))
  let slotval1 = gen_qobject_types.QObject(h: watched)

  let slotval2 = gen_qcoreevent_types.QEvent(h: event)


  let virtualReturn = nimfunc[](slotval1, slotval2 )

  virtualReturn
proc QMouseEventTransitiontimerEvent*(self: gen_qmouseeventtransition_types.QMouseEventTransition, event: gen_qcoreevent_types.QTimerEvent): void =
  fQMouseEventTransition_virtualbase_timerEvent(self.h, event.h)

type QMouseEventTransitiontimerEventProc* = proc(event: gen_qcoreevent_types.QTimerEvent): void
proc ontimerEvent*(self: gen_qmouseeventtransition_types.QMouseEventTransition, slot: QMouseEventTransitiontimerEventProc) =
  # TODO check subclass
  var tmp = new QMouseEventTransitiontimerEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQMouseEventTransition_override_virtual_timerEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QMouseEventTransition_timerEvent(self: ptr cQMouseEventTransition, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QMouseEventTransition_timerEvent ".} =
  var nimfunc = cast[ptr QMouseEventTransitiontimerEventProc](cast[pointer](slot))
  let slotval1 = gen_qcoreevent_types.QTimerEvent(h: event)


  nimfunc[](slotval1)
proc QMouseEventTransitionchildEvent*(self: gen_qmouseeventtransition_types.QMouseEventTransition, event: gen_qcoreevent_types.QChildEvent): void =
  fQMouseEventTransition_virtualbase_childEvent(self.h, event.h)

type QMouseEventTransitionchildEventProc* = proc(event: gen_qcoreevent_types.QChildEvent): void
proc onchildEvent*(self: gen_qmouseeventtransition_types.QMouseEventTransition, slot: QMouseEventTransitionchildEventProc) =
  # TODO check subclass
  var tmp = new QMouseEventTransitionchildEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQMouseEventTransition_override_virtual_childEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QMouseEventTransition_childEvent(self: ptr cQMouseEventTransition, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QMouseEventTransition_childEvent ".} =
  var nimfunc = cast[ptr QMouseEventTransitionchildEventProc](cast[pointer](slot))
  let slotval1 = gen_qcoreevent_types.QChildEvent(h: event)


  nimfunc[](slotval1)
proc QMouseEventTransitioncustomEvent*(self: gen_qmouseeventtransition_types.QMouseEventTransition, event: gen_qcoreevent_types.QEvent): void =
  fQMouseEventTransition_virtualbase_customEvent(self.h, event.h)

type QMouseEventTransitioncustomEventProc* = proc(event: gen_qcoreevent_types.QEvent): void
proc oncustomEvent*(self: gen_qmouseeventtransition_types.QMouseEventTransition, slot: QMouseEventTransitioncustomEventProc) =
  # TODO check subclass
  var tmp = new QMouseEventTransitioncustomEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQMouseEventTransition_override_virtual_customEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QMouseEventTransition_customEvent(self: ptr cQMouseEventTransition, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QMouseEventTransition_customEvent ".} =
  var nimfunc = cast[ptr QMouseEventTransitioncustomEventProc](cast[pointer](slot))
  let slotval1 = gen_qcoreevent_types.QEvent(h: event)


  nimfunc[](slotval1)
proc QMouseEventTransitionconnectNotify*(self: gen_qmouseeventtransition_types.QMouseEventTransition, signal: gen_qmetaobject_types.QMetaMethod): void =
  fQMouseEventTransition_virtualbase_connectNotify(self.h, signal.h)

type QMouseEventTransitionconnectNotifyProc* = proc(signal: gen_qmetaobject_types.QMetaMethod): void
proc onconnectNotify*(self: gen_qmouseeventtransition_types.QMouseEventTransition, slot: QMouseEventTransitionconnectNotifyProc) =
  # TODO check subclass
  var tmp = new QMouseEventTransitionconnectNotifyProc
  tmp[] = slot
  GC_ref(tmp)
  fcQMouseEventTransition_override_virtual_connectNotify(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QMouseEventTransition_connectNotify(self: ptr cQMouseEventTransition, slot: int, signal: pointer): void {.exportc: "miqt_exec_callback_QMouseEventTransition_connectNotify ".} =
  var nimfunc = cast[ptr QMouseEventTransitionconnectNotifyProc](cast[pointer](slot))
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal)


  nimfunc[](slotval1)
proc QMouseEventTransitiondisconnectNotify*(self: gen_qmouseeventtransition_types.QMouseEventTransition, signal: gen_qmetaobject_types.QMetaMethod): void =
  fQMouseEventTransition_virtualbase_disconnectNotify(self.h, signal.h)

type QMouseEventTransitiondisconnectNotifyProc* = proc(signal: gen_qmetaobject_types.QMetaMethod): void
proc ondisconnectNotify*(self: gen_qmouseeventtransition_types.QMouseEventTransition, slot: QMouseEventTransitiondisconnectNotifyProc) =
  # TODO check subclass
  var tmp = new QMouseEventTransitiondisconnectNotifyProc
  tmp[] = slot
  GC_ref(tmp)
  fcQMouseEventTransition_override_virtual_disconnectNotify(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QMouseEventTransition_disconnectNotify(self: ptr cQMouseEventTransition, slot: int, signal: pointer): void {.exportc: "miqt_exec_callback_QMouseEventTransition_disconnectNotify ".} =
  var nimfunc = cast[ptr QMouseEventTransitiondisconnectNotifyProc](cast[pointer](slot))
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal)


  nimfunc[](slotval1)
proc staticMetaObject*(_: type gen_qmouseeventtransition_types.QMouseEventTransition): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQMouseEventTransition_staticMetaObject())
proc delete*(self: gen_qmouseeventtransition_types.QMouseEventTransition) =
  fcQMouseEventTransition_delete(self.h)
