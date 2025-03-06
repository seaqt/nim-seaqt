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
{.compile("gen_qpauseanimation.cpp", cflags).}


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

proc fcQPauseAnimation_new(): ptr cQPauseAnimation {.importc: "QPauseAnimation_new".}
proc fcQPauseAnimation_new2(msecs: cint): ptr cQPauseAnimation {.importc: "QPauseAnimation_new2".}
proc fcQPauseAnimation_new3(parent: pointer): ptr cQPauseAnimation {.importc: "QPauseAnimation_new3".}
proc fcQPauseAnimation_new4(msecs: cint, parent: pointer): ptr cQPauseAnimation {.importc: "QPauseAnimation_new4".}
proc fcQPauseAnimation_metaObject(self: pointer, ): pointer {.importc: "QPauseAnimation_metaObject".}
proc fcQPauseAnimation_metacast(self: pointer, param1: cstring): pointer {.importc: "QPauseAnimation_metacast".}
proc fcQPauseAnimation_tr(s: cstring): struct_miqt_string {.importc: "QPauseAnimation_tr".}
proc fcQPauseAnimation_trUtf8(s: cstring): struct_miqt_string {.importc: "QPauseAnimation_trUtf8".}
proc fcQPauseAnimation_duration(self: pointer, ): cint {.importc: "QPauseAnimation_duration".}
proc fcQPauseAnimation_setDuration(self: pointer, msecs: cint): void {.importc: "QPauseAnimation_setDuration".}
proc fcQPauseAnimation_tr2(s: cstring, c: cstring): struct_miqt_string {.importc: "QPauseAnimation_tr2".}
proc fcQPauseAnimation_tr3(s: cstring, c: cstring, n: cint): struct_miqt_string {.importc: "QPauseAnimation_tr3".}
proc fcQPauseAnimation_trUtf82(s: cstring, c: cstring): struct_miqt_string {.importc: "QPauseAnimation_trUtf82".}
proc fcQPauseAnimation_trUtf83(s: cstring, c: cstring, n: cint): struct_miqt_string {.importc: "QPauseAnimation_trUtf83".}
proc fQPauseAnimation_virtualbase_duration(self: pointer, ): cint{.importc: "QPauseAnimation_virtualbase_duration".}
proc fcQPauseAnimation_override_virtual_duration(self: pointer, slot: int) {.importc: "QPauseAnimation_override_virtual_duration".}
proc fQPauseAnimation_virtualbase_event(self: pointer, e: pointer): bool{.importc: "QPauseAnimation_virtualbase_event".}
proc fcQPauseAnimation_override_virtual_event(self: pointer, slot: int) {.importc: "QPauseAnimation_override_virtual_event".}
proc fQPauseAnimation_virtualbase_updateCurrentTime(self: pointer, param1: cint): void{.importc: "QPauseAnimation_virtualbase_updateCurrentTime".}
proc fcQPauseAnimation_override_virtual_updateCurrentTime(self: pointer, slot: int) {.importc: "QPauseAnimation_override_virtual_updateCurrentTime".}
proc fQPauseAnimation_virtualbase_updateState(self: pointer, newState: cint, oldState: cint): void{.importc: "QPauseAnimation_virtualbase_updateState".}
proc fcQPauseAnimation_override_virtual_updateState(self: pointer, slot: int) {.importc: "QPauseAnimation_override_virtual_updateState".}
proc fQPauseAnimation_virtualbase_updateDirection(self: pointer, direction: cint): void{.importc: "QPauseAnimation_virtualbase_updateDirection".}
proc fcQPauseAnimation_override_virtual_updateDirection(self: pointer, slot: int) {.importc: "QPauseAnimation_override_virtual_updateDirection".}
proc fQPauseAnimation_virtualbase_eventFilter(self: pointer, watched: pointer, event: pointer): bool{.importc: "QPauseAnimation_virtualbase_eventFilter".}
proc fcQPauseAnimation_override_virtual_eventFilter(self: pointer, slot: int) {.importc: "QPauseAnimation_override_virtual_eventFilter".}
proc fQPauseAnimation_virtualbase_timerEvent(self: pointer, event: pointer): void{.importc: "QPauseAnimation_virtualbase_timerEvent".}
proc fcQPauseAnimation_override_virtual_timerEvent(self: pointer, slot: int) {.importc: "QPauseAnimation_override_virtual_timerEvent".}
proc fQPauseAnimation_virtualbase_childEvent(self: pointer, event: pointer): void{.importc: "QPauseAnimation_virtualbase_childEvent".}
proc fcQPauseAnimation_override_virtual_childEvent(self: pointer, slot: int) {.importc: "QPauseAnimation_override_virtual_childEvent".}
proc fQPauseAnimation_virtualbase_customEvent(self: pointer, event: pointer): void{.importc: "QPauseAnimation_virtualbase_customEvent".}
proc fcQPauseAnimation_override_virtual_customEvent(self: pointer, slot: int) {.importc: "QPauseAnimation_override_virtual_customEvent".}
proc fQPauseAnimation_virtualbase_connectNotify(self: pointer, signal: pointer): void{.importc: "QPauseAnimation_virtualbase_connectNotify".}
proc fcQPauseAnimation_override_virtual_connectNotify(self: pointer, slot: int) {.importc: "QPauseAnimation_override_virtual_connectNotify".}
proc fQPauseAnimation_virtualbase_disconnectNotify(self: pointer, signal: pointer): void{.importc: "QPauseAnimation_virtualbase_disconnectNotify".}
proc fcQPauseAnimation_override_virtual_disconnectNotify(self: pointer, slot: int) {.importc: "QPauseAnimation_override_virtual_disconnectNotify".}
proc fcQPauseAnimation_delete(self: pointer) {.importc: "QPauseAnimation_delete".}


func init*(T: type gen_qpauseanimation_types.QPauseAnimation, h: ptr cQPauseAnimation): gen_qpauseanimation_types.QPauseAnimation =
  T(h: h)
proc create*(T: type gen_qpauseanimation_types.QPauseAnimation, ): gen_qpauseanimation_types.QPauseAnimation =
  gen_qpauseanimation_types.QPauseAnimation.init(fcQPauseAnimation_new())

proc create*(T: type gen_qpauseanimation_types.QPauseAnimation, msecs: cint): gen_qpauseanimation_types.QPauseAnimation =
  gen_qpauseanimation_types.QPauseAnimation.init(fcQPauseAnimation_new2(msecs))

proc create*(T: type gen_qpauseanimation_types.QPauseAnimation, parent: gen_qobject_types.QObject): gen_qpauseanimation_types.QPauseAnimation =
  gen_qpauseanimation_types.QPauseAnimation.init(fcQPauseAnimation_new3(parent.h))

proc create*(T: type gen_qpauseanimation_types.QPauseAnimation, msecs: cint, parent: gen_qobject_types.QObject): gen_qpauseanimation_types.QPauseAnimation =
  gen_qpauseanimation_types.QPauseAnimation.init(fcQPauseAnimation_new4(msecs, parent.h))

proc metaObject*(self: gen_qpauseanimation_types.QPauseAnimation, ): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQPauseAnimation_metaObject(self.h))

proc metacast*(self: gen_qpauseanimation_types.QPauseAnimation, param1: cstring): pointer =
  fcQPauseAnimation_metacast(self.h, param1)

proc tr*(_: type gen_qpauseanimation_types.QPauseAnimation, s: cstring): string =
  let v_ms = fcQPauseAnimation_tr(s)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc trUtf8*(_: type gen_qpauseanimation_types.QPauseAnimation, s: cstring): string =
  let v_ms = fcQPauseAnimation_trUtf8(s)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc duration*(self: gen_qpauseanimation_types.QPauseAnimation, ): cint =
  fcQPauseAnimation_duration(self.h)

proc setDuration*(self: gen_qpauseanimation_types.QPauseAnimation, msecs: cint): void =
  fcQPauseAnimation_setDuration(self.h, msecs)

proc tr*(_: type gen_qpauseanimation_types.QPauseAnimation, s: cstring, c: cstring): string =
  let v_ms = fcQPauseAnimation_tr2(s, c)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc tr*(_: type gen_qpauseanimation_types.QPauseAnimation, s: cstring, c: cstring, n: cint): string =
  let v_ms = fcQPauseAnimation_tr3(s, c, n)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc trUtf8*(_: type gen_qpauseanimation_types.QPauseAnimation, s: cstring, c: cstring): string =
  let v_ms = fcQPauseAnimation_trUtf82(s, c)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc trUtf8*(_: type gen_qpauseanimation_types.QPauseAnimation, s: cstring, c: cstring, n: cint): string =
  let v_ms = fcQPauseAnimation_trUtf83(s, c, n)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc QPauseAnimationduration*(self: gen_qpauseanimation_types.QPauseAnimation, ): cint =
  fQPauseAnimation_virtualbase_duration(self.h)

type QPauseAnimationdurationProc* = proc(): cint
proc onduration*(self: gen_qpauseanimation_types.QPauseAnimation, slot: QPauseAnimationdurationProc) =
  # TODO check subclass
  var tmp = new QPauseAnimationdurationProc
  tmp[] = slot
  GC_ref(tmp)
  fcQPauseAnimation_override_virtual_duration(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QPauseAnimation_duration(self: ptr cQPauseAnimation, slot: int): cint {.exportc: "miqt_exec_callback_QPauseAnimation_duration ".} =
  var nimfunc = cast[ptr QPauseAnimationdurationProc](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )

  virtualReturn
proc QPauseAnimationevent*(self: gen_qpauseanimation_types.QPauseAnimation, e: gen_qcoreevent_types.QEvent): bool =
  fQPauseAnimation_virtualbase_event(self.h, e.h)

type QPauseAnimationeventProc* = proc(e: gen_qcoreevent_types.QEvent): bool
proc onevent*(self: gen_qpauseanimation_types.QPauseAnimation, slot: QPauseAnimationeventProc) =
  # TODO check subclass
  var tmp = new QPauseAnimationeventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQPauseAnimation_override_virtual_event(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QPauseAnimation_event(self: ptr cQPauseAnimation, slot: int, e: pointer): bool {.exportc: "miqt_exec_callback_QPauseAnimation_event ".} =
  var nimfunc = cast[ptr QPauseAnimationeventProc](cast[pointer](slot))
  let slotval1 = gen_qcoreevent_types.QEvent(h: e)


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn
proc QPauseAnimationupdateCurrentTime*(self: gen_qpauseanimation_types.QPauseAnimation, param1: cint): void =
  fQPauseAnimation_virtualbase_updateCurrentTime(self.h, param1)

type QPauseAnimationupdateCurrentTimeProc* = proc(param1: cint): void
proc onupdateCurrentTime*(self: gen_qpauseanimation_types.QPauseAnimation, slot: QPauseAnimationupdateCurrentTimeProc) =
  # TODO check subclass
  var tmp = new QPauseAnimationupdateCurrentTimeProc
  tmp[] = slot
  GC_ref(tmp)
  fcQPauseAnimation_override_virtual_updateCurrentTime(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QPauseAnimation_updateCurrentTime(self: ptr cQPauseAnimation, slot: int, param1: cint): void {.exportc: "miqt_exec_callback_QPauseAnimation_updateCurrentTime ".} =
  var nimfunc = cast[ptr QPauseAnimationupdateCurrentTimeProc](cast[pointer](slot))
  let slotval1 = param1


  nimfunc[](slotval1)
proc QPauseAnimationupdateState*(self: gen_qpauseanimation_types.QPauseAnimation, newState: cint, oldState: cint): void =
  fQPauseAnimation_virtualbase_updateState(self.h, cint(newState), cint(oldState))

type QPauseAnimationupdateStateProc* = proc(newState: cint, oldState: cint): void
proc onupdateState*(self: gen_qpauseanimation_types.QPauseAnimation, slot: QPauseAnimationupdateStateProc) =
  # TODO check subclass
  var tmp = new QPauseAnimationupdateStateProc
  tmp[] = slot
  GC_ref(tmp)
  fcQPauseAnimation_override_virtual_updateState(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QPauseAnimation_updateState(self: ptr cQPauseAnimation, slot: int, newState: cint, oldState: cint): void {.exportc: "miqt_exec_callback_QPauseAnimation_updateState ".} =
  var nimfunc = cast[ptr QPauseAnimationupdateStateProc](cast[pointer](slot))
  let slotval1 = cint(newState)

  let slotval2 = cint(oldState)


  nimfunc[](slotval1, slotval2)
proc QPauseAnimationupdateDirection*(self: gen_qpauseanimation_types.QPauseAnimation, direction: cint): void =
  fQPauseAnimation_virtualbase_updateDirection(self.h, cint(direction))

type QPauseAnimationupdateDirectionProc* = proc(direction: cint): void
proc onupdateDirection*(self: gen_qpauseanimation_types.QPauseAnimation, slot: QPauseAnimationupdateDirectionProc) =
  # TODO check subclass
  var tmp = new QPauseAnimationupdateDirectionProc
  tmp[] = slot
  GC_ref(tmp)
  fcQPauseAnimation_override_virtual_updateDirection(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QPauseAnimation_updateDirection(self: ptr cQPauseAnimation, slot: int, direction: cint): void {.exportc: "miqt_exec_callback_QPauseAnimation_updateDirection ".} =
  var nimfunc = cast[ptr QPauseAnimationupdateDirectionProc](cast[pointer](slot))
  let slotval1 = cint(direction)


  nimfunc[](slotval1)
proc QPauseAnimationeventFilter*(self: gen_qpauseanimation_types.QPauseAnimation, watched: gen_qobject_types.QObject, event: gen_qcoreevent_types.QEvent): bool =
  fQPauseAnimation_virtualbase_eventFilter(self.h, watched.h, event.h)

type QPauseAnimationeventFilterProc* = proc(watched: gen_qobject_types.QObject, event: gen_qcoreevent_types.QEvent): bool
proc oneventFilter*(self: gen_qpauseanimation_types.QPauseAnimation, slot: QPauseAnimationeventFilterProc) =
  # TODO check subclass
  var tmp = new QPauseAnimationeventFilterProc
  tmp[] = slot
  GC_ref(tmp)
  fcQPauseAnimation_override_virtual_eventFilter(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QPauseAnimation_eventFilter(self: ptr cQPauseAnimation, slot: int, watched: pointer, event: pointer): bool {.exportc: "miqt_exec_callback_QPauseAnimation_eventFilter ".} =
  var nimfunc = cast[ptr QPauseAnimationeventFilterProc](cast[pointer](slot))
  let slotval1 = gen_qobject_types.QObject(h: watched)

  let slotval2 = gen_qcoreevent_types.QEvent(h: event)


  let virtualReturn = nimfunc[](slotval1, slotval2 )

  virtualReturn
proc QPauseAnimationtimerEvent*(self: gen_qpauseanimation_types.QPauseAnimation, event: gen_qcoreevent_types.QTimerEvent): void =
  fQPauseAnimation_virtualbase_timerEvent(self.h, event.h)

type QPauseAnimationtimerEventProc* = proc(event: gen_qcoreevent_types.QTimerEvent): void
proc ontimerEvent*(self: gen_qpauseanimation_types.QPauseAnimation, slot: QPauseAnimationtimerEventProc) =
  # TODO check subclass
  var tmp = new QPauseAnimationtimerEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQPauseAnimation_override_virtual_timerEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QPauseAnimation_timerEvent(self: ptr cQPauseAnimation, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QPauseAnimation_timerEvent ".} =
  var nimfunc = cast[ptr QPauseAnimationtimerEventProc](cast[pointer](slot))
  let slotval1 = gen_qcoreevent_types.QTimerEvent(h: event)


  nimfunc[](slotval1)
proc QPauseAnimationchildEvent*(self: gen_qpauseanimation_types.QPauseAnimation, event: gen_qcoreevent_types.QChildEvent): void =
  fQPauseAnimation_virtualbase_childEvent(self.h, event.h)

type QPauseAnimationchildEventProc* = proc(event: gen_qcoreevent_types.QChildEvent): void
proc onchildEvent*(self: gen_qpauseanimation_types.QPauseAnimation, slot: QPauseAnimationchildEventProc) =
  # TODO check subclass
  var tmp = new QPauseAnimationchildEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQPauseAnimation_override_virtual_childEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QPauseAnimation_childEvent(self: ptr cQPauseAnimation, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QPauseAnimation_childEvent ".} =
  var nimfunc = cast[ptr QPauseAnimationchildEventProc](cast[pointer](slot))
  let slotval1 = gen_qcoreevent_types.QChildEvent(h: event)


  nimfunc[](slotval1)
proc QPauseAnimationcustomEvent*(self: gen_qpauseanimation_types.QPauseAnimation, event: gen_qcoreevent_types.QEvent): void =
  fQPauseAnimation_virtualbase_customEvent(self.h, event.h)

type QPauseAnimationcustomEventProc* = proc(event: gen_qcoreevent_types.QEvent): void
proc oncustomEvent*(self: gen_qpauseanimation_types.QPauseAnimation, slot: QPauseAnimationcustomEventProc) =
  # TODO check subclass
  var tmp = new QPauseAnimationcustomEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQPauseAnimation_override_virtual_customEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QPauseAnimation_customEvent(self: ptr cQPauseAnimation, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QPauseAnimation_customEvent ".} =
  var nimfunc = cast[ptr QPauseAnimationcustomEventProc](cast[pointer](slot))
  let slotval1 = gen_qcoreevent_types.QEvent(h: event)


  nimfunc[](slotval1)
proc QPauseAnimationconnectNotify*(self: gen_qpauseanimation_types.QPauseAnimation, signal: gen_qmetaobject_types.QMetaMethod): void =
  fQPauseAnimation_virtualbase_connectNotify(self.h, signal.h)

type QPauseAnimationconnectNotifyProc* = proc(signal: gen_qmetaobject_types.QMetaMethod): void
proc onconnectNotify*(self: gen_qpauseanimation_types.QPauseAnimation, slot: QPauseAnimationconnectNotifyProc) =
  # TODO check subclass
  var tmp = new QPauseAnimationconnectNotifyProc
  tmp[] = slot
  GC_ref(tmp)
  fcQPauseAnimation_override_virtual_connectNotify(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QPauseAnimation_connectNotify(self: ptr cQPauseAnimation, slot: int, signal: pointer): void {.exportc: "miqt_exec_callback_QPauseAnimation_connectNotify ".} =
  var nimfunc = cast[ptr QPauseAnimationconnectNotifyProc](cast[pointer](slot))
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal)


  nimfunc[](slotval1)
proc QPauseAnimationdisconnectNotify*(self: gen_qpauseanimation_types.QPauseAnimation, signal: gen_qmetaobject_types.QMetaMethod): void =
  fQPauseAnimation_virtualbase_disconnectNotify(self.h, signal.h)

type QPauseAnimationdisconnectNotifyProc* = proc(signal: gen_qmetaobject_types.QMetaMethod): void
proc ondisconnectNotify*(self: gen_qpauseanimation_types.QPauseAnimation, slot: QPauseAnimationdisconnectNotifyProc) =
  # TODO check subclass
  var tmp = new QPauseAnimationdisconnectNotifyProc
  tmp[] = slot
  GC_ref(tmp)
  fcQPauseAnimation_override_virtual_disconnectNotify(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QPauseAnimation_disconnectNotify(self: ptr cQPauseAnimation, slot: int, signal: pointer): void {.exportc: "miqt_exec_callback_QPauseAnimation_disconnectNotify ".} =
  var nimfunc = cast[ptr QPauseAnimationdisconnectNotifyProc](cast[pointer](slot))
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal)


  nimfunc[](slotval1)
proc delete*(self: gen_qpauseanimation_types.QPauseAnimation) =
  fcQPauseAnimation_delete(self.h)
