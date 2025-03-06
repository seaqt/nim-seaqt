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
{.compile("gen_qsignaltransition.cpp", cflags).}


import ./gen_qsignaltransition_types
export gen_qsignaltransition_types

import
  ./gen_qabstracttransition,
  ./gen_qcoreevent_types,
  ./gen_qmetaobject_types,
  ./gen_qobject_types,
  ./gen_qobjectdefs_types,
  ./gen_qstate_types
export
  gen_qabstracttransition,
  gen_qcoreevent_types,
  gen_qmetaobject_types,
  gen_qobject_types,
  gen_qobjectdefs_types,
  gen_qstate_types

type cQSignalTransition*{.exportc: "QSignalTransition", incompleteStruct.} = object

proc fcQSignalTransition_new(): ptr cQSignalTransition {.importc: "QSignalTransition_new".}
proc fcQSignalTransition_new2(sender: pointer, signal: cstring): ptr cQSignalTransition {.importc: "QSignalTransition_new2".}
proc fcQSignalTransition_new3(sourceState: pointer): ptr cQSignalTransition {.importc: "QSignalTransition_new3".}
proc fcQSignalTransition_new4(sender: pointer, signal: cstring, sourceState: pointer): ptr cQSignalTransition {.importc: "QSignalTransition_new4".}
proc fcQSignalTransition_metaObject(self: pointer, ): pointer {.importc: "QSignalTransition_metaObject".}
proc fcQSignalTransition_metacast(self: pointer, param1: cstring): pointer {.importc: "QSignalTransition_metacast".}
proc fcQSignalTransition_tr(s: cstring): struct_miqt_string {.importc: "QSignalTransition_tr".}
proc fcQSignalTransition_trUtf8(s: cstring): struct_miqt_string {.importc: "QSignalTransition_trUtf8".}
proc fcQSignalTransition_senderObject(self: pointer, ): pointer {.importc: "QSignalTransition_senderObject".}
proc fcQSignalTransition_setSenderObject(self: pointer, sender: pointer): void {.importc: "QSignalTransition_setSenderObject".}
proc fcQSignalTransition_signal(self: pointer, ): struct_miqt_string {.importc: "QSignalTransition_signal".}
proc fcQSignalTransition_setSignal(self: pointer, signal: struct_miqt_string): void {.importc: "QSignalTransition_setSignal".}
proc fcQSignalTransition_tr2(s: cstring, c: cstring): struct_miqt_string {.importc: "QSignalTransition_tr2".}
proc fcQSignalTransition_tr3(s: cstring, c: cstring, n: cint): struct_miqt_string {.importc: "QSignalTransition_tr3".}
proc fcQSignalTransition_trUtf82(s: cstring, c: cstring): struct_miqt_string {.importc: "QSignalTransition_trUtf82".}
proc fcQSignalTransition_trUtf83(s: cstring, c: cstring, n: cint): struct_miqt_string {.importc: "QSignalTransition_trUtf83".}
proc fQSignalTransition_virtualbase_eventTest(self: pointer, event: pointer): bool{.importc: "QSignalTransition_virtualbase_eventTest".}
proc fcQSignalTransition_override_virtual_eventTest(self: pointer, slot: int) {.importc: "QSignalTransition_override_virtual_eventTest".}
proc fQSignalTransition_virtualbase_onTransition(self: pointer, event: pointer): void{.importc: "QSignalTransition_virtualbase_onTransition".}
proc fcQSignalTransition_override_virtual_onTransition(self: pointer, slot: int) {.importc: "QSignalTransition_override_virtual_onTransition".}
proc fQSignalTransition_virtualbase_event(self: pointer, e: pointer): bool{.importc: "QSignalTransition_virtualbase_event".}
proc fcQSignalTransition_override_virtual_event(self: pointer, slot: int) {.importc: "QSignalTransition_override_virtual_event".}
proc fQSignalTransition_virtualbase_eventFilter(self: pointer, watched: pointer, event: pointer): bool{.importc: "QSignalTransition_virtualbase_eventFilter".}
proc fcQSignalTransition_override_virtual_eventFilter(self: pointer, slot: int) {.importc: "QSignalTransition_override_virtual_eventFilter".}
proc fQSignalTransition_virtualbase_timerEvent(self: pointer, event: pointer): void{.importc: "QSignalTransition_virtualbase_timerEvent".}
proc fcQSignalTransition_override_virtual_timerEvent(self: pointer, slot: int) {.importc: "QSignalTransition_override_virtual_timerEvent".}
proc fQSignalTransition_virtualbase_childEvent(self: pointer, event: pointer): void{.importc: "QSignalTransition_virtualbase_childEvent".}
proc fcQSignalTransition_override_virtual_childEvent(self: pointer, slot: int) {.importc: "QSignalTransition_override_virtual_childEvent".}
proc fQSignalTransition_virtualbase_customEvent(self: pointer, event: pointer): void{.importc: "QSignalTransition_virtualbase_customEvent".}
proc fcQSignalTransition_override_virtual_customEvent(self: pointer, slot: int) {.importc: "QSignalTransition_override_virtual_customEvent".}
proc fQSignalTransition_virtualbase_connectNotify(self: pointer, signal: pointer): void{.importc: "QSignalTransition_virtualbase_connectNotify".}
proc fcQSignalTransition_override_virtual_connectNotify(self: pointer, slot: int) {.importc: "QSignalTransition_override_virtual_connectNotify".}
proc fQSignalTransition_virtualbase_disconnectNotify(self: pointer, signal: pointer): void{.importc: "QSignalTransition_virtualbase_disconnectNotify".}
proc fcQSignalTransition_override_virtual_disconnectNotify(self: pointer, slot: int) {.importc: "QSignalTransition_override_virtual_disconnectNotify".}
proc fcQSignalTransition_delete(self: pointer) {.importc: "QSignalTransition_delete".}


func init*(T: type gen_qsignaltransition_types.QSignalTransition, h: ptr cQSignalTransition): gen_qsignaltransition_types.QSignalTransition =
  T(h: h)
proc create*(T: type gen_qsignaltransition_types.QSignalTransition, ): gen_qsignaltransition_types.QSignalTransition =
  gen_qsignaltransition_types.QSignalTransition.init(fcQSignalTransition_new())

proc create*(T: type gen_qsignaltransition_types.QSignalTransition, sender: gen_qobject_types.QObject, signal: cstring): gen_qsignaltransition_types.QSignalTransition =
  gen_qsignaltransition_types.QSignalTransition.init(fcQSignalTransition_new2(sender.h, signal))

proc create*(T: type gen_qsignaltransition_types.QSignalTransition, sourceState: gen_qstate_types.QState): gen_qsignaltransition_types.QSignalTransition =
  gen_qsignaltransition_types.QSignalTransition.init(fcQSignalTransition_new3(sourceState.h))

proc create*(T: type gen_qsignaltransition_types.QSignalTransition, sender: gen_qobject_types.QObject, signal: cstring, sourceState: gen_qstate_types.QState): gen_qsignaltransition_types.QSignalTransition =
  gen_qsignaltransition_types.QSignalTransition.init(fcQSignalTransition_new4(sender.h, signal, sourceState.h))

proc metaObject*(self: gen_qsignaltransition_types.QSignalTransition, ): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQSignalTransition_metaObject(self.h))

proc metacast*(self: gen_qsignaltransition_types.QSignalTransition, param1: cstring): pointer =
  fcQSignalTransition_metacast(self.h, param1)

proc tr*(_: type gen_qsignaltransition_types.QSignalTransition, s: cstring): string =
  let v_ms = fcQSignalTransition_tr(s)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc trUtf8*(_: type gen_qsignaltransition_types.QSignalTransition, s: cstring): string =
  let v_ms = fcQSignalTransition_trUtf8(s)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc senderObject*(self: gen_qsignaltransition_types.QSignalTransition, ): gen_qobject_types.QObject =
  gen_qobject_types.QObject(h: fcQSignalTransition_senderObject(self.h))

proc setSenderObject*(self: gen_qsignaltransition_types.QSignalTransition, sender: gen_qobject_types.QObject): void =
  fcQSignalTransition_setSenderObject(self.h, sender.h)

proc signal*(self: gen_qsignaltransition_types.QSignalTransition, ): seq[byte] =
  var v_bytearray = fcQSignalTransition_signal(self.h)
  var vx_ret = @(toOpenArrayByte(v_bytearray.data, 0, int(v_bytearray.len)-1))
  c_free(v_bytearray.data)
  vx_ret

proc setSignal*(self: gen_qsignaltransition_types.QSignalTransition, signal: seq[byte]): void =
  fcQSignalTransition_setSignal(self.h, struct_miqt_string(data: cast[cstring](if len(signal) == 0: nil else: unsafeAddr signal[0]), len: csize_t(len(signal))))

proc tr*(_: type gen_qsignaltransition_types.QSignalTransition, s: cstring, c: cstring): string =
  let v_ms = fcQSignalTransition_tr2(s, c)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc tr*(_: type gen_qsignaltransition_types.QSignalTransition, s: cstring, c: cstring, n: cint): string =
  let v_ms = fcQSignalTransition_tr3(s, c, n)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc trUtf8*(_: type gen_qsignaltransition_types.QSignalTransition, s: cstring, c: cstring): string =
  let v_ms = fcQSignalTransition_trUtf82(s, c)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc trUtf8*(_: type gen_qsignaltransition_types.QSignalTransition, s: cstring, c: cstring, n: cint): string =
  let v_ms = fcQSignalTransition_trUtf83(s, c, n)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc QSignalTransitioneventTest*(self: gen_qsignaltransition_types.QSignalTransition, event: gen_qcoreevent_types.QEvent): bool =
  fQSignalTransition_virtualbase_eventTest(self.h, event.h)

type QSignalTransitioneventTestProc* = proc(event: gen_qcoreevent_types.QEvent): bool
proc oneventTest*(self: gen_qsignaltransition_types.QSignalTransition, slot: QSignalTransitioneventTestProc) =
  # TODO check subclass
  var tmp = new QSignalTransitioneventTestProc
  tmp[] = slot
  GC_ref(tmp)
  fcQSignalTransition_override_virtual_eventTest(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QSignalTransition_eventTest(self: ptr cQSignalTransition, slot: int, event: pointer): bool {.exportc: "miqt_exec_callback_QSignalTransition_eventTest ".} =
  var nimfunc = cast[ptr QSignalTransitioneventTestProc](cast[pointer](slot))
  let slotval1 = gen_qcoreevent_types.QEvent(h: event)


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn
proc QSignalTransitiononTransition*(self: gen_qsignaltransition_types.QSignalTransition, event: gen_qcoreevent_types.QEvent): void =
  fQSignalTransition_virtualbase_onTransition(self.h, event.h)

type QSignalTransitiononTransitionProc* = proc(event: gen_qcoreevent_types.QEvent): void
proc ononTransition*(self: gen_qsignaltransition_types.QSignalTransition, slot: QSignalTransitiononTransitionProc) =
  # TODO check subclass
  var tmp = new QSignalTransitiononTransitionProc
  tmp[] = slot
  GC_ref(tmp)
  fcQSignalTransition_override_virtual_onTransition(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QSignalTransition_onTransition(self: ptr cQSignalTransition, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QSignalTransition_onTransition ".} =
  var nimfunc = cast[ptr QSignalTransitiononTransitionProc](cast[pointer](slot))
  let slotval1 = gen_qcoreevent_types.QEvent(h: event)


  nimfunc[](slotval1)
proc QSignalTransitionevent*(self: gen_qsignaltransition_types.QSignalTransition, e: gen_qcoreevent_types.QEvent): bool =
  fQSignalTransition_virtualbase_event(self.h, e.h)

type QSignalTransitioneventProc* = proc(e: gen_qcoreevent_types.QEvent): bool
proc onevent*(self: gen_qsignaltransition_types.QSignalTransition, slot: QSignalTransitioneventProc) =
  # TODO check subclass
  var tmp = new QSignalTransitioneventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQSignalTransition_override_virtual_event(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QSignalTransition_event(self: ptr cQSignalTransition, slot: int, e: pointer): bool {.exportc: "miqt_exec_callback_QSignalTransition_event ".} =
  var nimfunc = cast[ptr QSignalTransitioneventProc](cast[pointer](slot))
  let slotval1 = gen_qcoreevent_types.QEvent(h: e)


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn
proc QSignalTransitioneventFilter*(self: gen_qsignaltransition_types.QSignalTransition, watched: gen_qobject_types.QObject, event: gen_qcoreevent_types.QEvent): bool =
  fQSignalTransition_virtualbase_eventFilter(self.h, watched.h, event.h)

type QSignalTransitioneventFilterProc* = proc(watched: gen_qobject_types.QObject, event: gen_qcoreevent_types.QEvent): bool
proc oneventFilter*(self: gen_qsignaltransition_types.QSignalTransition, slot: QSignalTransitioneventFilterProc) =
  # TODO check subclass
  var tmp = new QSignalTransitioneventFilterProc
  tmp[] = slot
  GC_ref(tmp)
  fcQSignalTransition_override_virtual_eventFilter(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QSignalTransition_eventFilter(self: ptr cQSignalTransition, slot: int, watched: pointer, event: pointer): bool {.exportc: "miqt_exec_callback_QSignalTransition_eventFilter ".} =
  var nimfunc = cast[ptr QSignalTransitioneventFilterProc](cast[pointer](slot))
  let slotval1 = gen_qobject_types.QObject(h: watched)

  let slotval2 = gen_qcoreevent_types.QEvent(h: event)


  let virtualReturn = nimfunc[](slotval1, slotval2 )

  virtualReturn
proc QSignalTransitiontimerEvent*(self: gen_qsignaltransition_types.QSignalTransition, event: gen_qcoreevent_types.QTimerEvent): void =
  fQSignalTransition_virtualbase_timerEvent(self.h, event.h)

type QSignalTransitiontimerEventProc* = proc(event: gen_qcoreevent_types.QTimerEvent): void
proc ontimerEvent*(self: gen_qsignaltransition_types.QSignalTransition, slot: QSignalTransitiontimerEventProc) =
  # TODO check subclass
  var tmp = new QSignalTransitiontimerEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQSignalTransition_override_virtual_timerEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QSignalTransition_timerEvent(self: ptr cQSignalTransition, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QSignalTransition_timerEvent ".} =
  var nimfunc = cast[ptr QSignalTransitiontimerEventProc](cast[pointer](slot))
  let slotval1 = gen_qcoreevent_types.QTimerEvent(h: event)


  nimfunc[](slotval1)
proc QSignalTransitionchildEvent*(self: gen_qsignaltransition_types.QSignalTransition, event: gen_qcoreevent_types.QChildEvent): void =
  fQSignalTransition_virtualbase_childEvent(self.h, event.h)

type QSignalTransitionchildEventProc* = proc(event: gen_qcoreevent_types.QChildEvent): void
proc onchildEvent*(self: gen_qsignaltransition_types.QSignalTransition, slot: QSignalTransitionchildEventProc) =
  # TODO check subclass
  var tmp = new QSignalTransitionchildEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQSignalTransition_override_virtual_childEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QSignalTransition_childEvent(self: ptr cQSignalTransition, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QSignalTransition_childEvent ".} =
  var nimfunc = cast[ptr QSignalTransitionchildEventProc](cast[pointer](slot))
  let slotval1 = gen_qcoreevent_types.QChildEvent(h: event)


  nimfunc[](slotval1)
proc QSignalTransitioncustomEvent*(self: gen_qsignaltransition_types.QSignalTransition, event: gen_qcoreevent_types.QEvent): void =
  fQSignalTransition_virtualbase_customEvent(self.h, event.h)

type QSignalTransitioncustomEventProc* = proc(event: gen_qcoreevent_types.QEvent): void
proc oncustomEvent*(self: gen_qsignaltransition_types.QSignalTransition, slot: QSignalTransitioncustomEventProc) =
  # TODO check subclass
  var tmp = new QSignalTransitioncustomEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQSignalTransition_override_virtual_customEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QSignalTransition_customEvent(self: ptr cQSignalTransition, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QSignalTransition_customEvent ".} =
  var nimfunc = cast[ptr QSignalTransitioncustomEventProc](cast[pointer](slot))
  let slotval1 = gen_qcoreevent_types.QEvent(h: event)


  nimfunc[](slotval1)
proc QSignalTransitionconnectNotify*(self: gen_qsignaltransition_types.QSignalTransition, signal: gen_qmetaobject_types.QMetaMethod): void =
  fQSignalTransition_virtualbase_connectNotify(self.h, signal.h)

type QSignalTransitionconnectNotifyProc* = proc(signal: gen_qmetaobject_types.QMetaMethod): void
proc onconnectNotify*(self: gen_qsignaltransition_types.QSignalTransition, slot: QSignalTransitionconnectNotifyProc) =
  # TODO check subclass
  var tmp = new QSignalTransitionconnectNotifyProc
  tmp[] = slot
  GC_ref(tmp)
  fcQSignalTransition_override_virtual_connectNotify(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QSignalTransition_connectNotify(self: ptr cQSignalTransition, slot: int, signal: pointer): void {.exportc: "miqt_exec_callback_QSignalTransition_connectNotify ".} =
  var nimfunc = cast[ptr QSignalTransitionconnectNotifyProc](cast[pointer](slot))
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal)


  nimfunc[](slotval1)
proc QSignalTransitiondisconnectNotify*(self: gen_qsignaltransition_types.QSignalTransition, signal: gen_qmetaobject_types.QMetaMethod): void =
  fQSignalTransition_virtualbase_disconnectNotify(self.h, signal.h)

type QSignalTransitiondisconnectNotifyProc* = proc(signal: gen_qmetaobject_types.QMetaMethod): void
proc ondisconnectNotify*(self: gen_qsignaltransition_types.QSignalTransition, slot: QSignalTransitiondisconnectNotifyProc) =
  # TODO check subclass
  var tmp = new QSignalTransitiondisconnectNotifyProc
  tmp[] = slot
  GC_ref(tmp)
  fcQSignalTransition_override_virtual_disconnectNotify(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QSignalTransition_disconnectNotify(self: ptr cQSignalTransition, slot: int, signal: pointer): void {.exportc: "miqt_exec_callback_QSignalTransition_disconnectNotify ".} =
  var nimfunc = cast[ptr QSignalTransitiondisconnectNotifyProc](cast[pointer](slot))
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal)


  nimfunc[](slotval1)
proc delete*(self: gen_qsignaltransition_types.QSignalTransition) =
  fcQSignalTransition_delete(self.h)
