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
{.compile("gen_qsequentialanimationgroup.cpp", cflags).}


import ./gen_qsequentialanimationgroup_types
export gen_qsequentialanimationgroup_types

import
  ./gen_qabstractanimation_types,
  ./gen_qanimationgroup,
  ./gen_qcoreevent_types,
  ./gen_qmetaobject_types,
  ./gen_qobject_types,
  ./gen_qobjectdefs_types,
  ./gen_qpauseanimation_types
export
  gen_qabstractanimation_types,
  gen_qanimationgroup,
  gen_qcoreevent_types,
  gen_qmetaobject_types,
  gen_qobject_types,
  gen_qobjectdefs_types,
  gen_qpauseanimation_types

type cQSequentialAnimationGroup*{.exportc: "QSequentialAnimationGroup", incompleteStruct.} = object

proc fcQSequentialAnimationGroup_new(): ptr cQSequentialAnimationGroup {.importc: "QSequentialAnimationGroup_new".}
proc fcQSequentialAnimationGroup_new2(parent: pointer): ptr cQSequentialAnimationGroup {.importc: "QSequentialAnimationGroup_new2".}
proc fcQSequentialAnimationGroup_metaObject(self: pointer, ): pointer {.importc: "QSequentialAnimationGroup_metaObject".}
proc fcQSequentialAnimationGroup_metacast(self: pointer, param1: cstring): pointer {.importc: "QSequentialAnimationGroup_metacast".}
proc fcQSequentialAnimationGroup_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.importc: "QSequentialAnimationGroup_metacall".}
proc fcQSequentialAnimationGroup_tr(s: cstring): struct_miqt_string {.importc: "QSequentialAnimationGroup_tr".}
proc fcQSequentialAnimationGroup_trUtf8(s: cstring): struct_miqt_string {.importc: "QSequentialAnimationGroup_trUtf8".}
proc fcQSequentialAnimationGroup_addPause(self: pointer, msecs: cint): pointer {.importc: "QSequentialAnimationGroup_addPause".}
proc fcQSequentialAnimationGroup_insertPause(self: pointer, index: cint, msecs: cint): pointer {.importc: "QSequentialAnimationGroup_insertPause".}
proc fcQSequentialAnimationGroup_currentAnimation(self: pointer, ): pointer {.importc: "QSequentialAnimationGroup_currentAnimation".}
proc fcQSequentialAnimationGroup_duration(self: pointer, ): cint {.importc: "QSequentialAnimationGroup_duration".}
proc fcQSequentialAnimationGroup_currentAnimationChanged(self: pointer, current: pointer): void {.importc: "QSequentialAnimationGroup_currentAnimationChanged".}
proc fcQSequentialAnimationGroup_connect_currentAnimationChanged(self: pointer, slot: int) {.importc: "QSequentialAnimationGroup_connect_currentAnimationChanged".}
proc fcQSequentialAnimationGroup_tr2(s: cstring, c: cstring): struct_miqt_string {.importc: "QSequentialAnimationGroup_tr2".}
proc fcQSequentialAnimationGroup_tr3(s: cstring, c: cstring, n: cint): struct_miqt_string {.importc: "QSequentialAnimationGroup_tr3".}
proc fcQSequentialAnimationGroup_trUtf82(s: cstring, c: cstring): struct_miqt_string {.importc: "QSequentialAnimationGroup_trUtf82".}
proc fcQSequentialAnimationGroup_trUtf83(s: cstring, c: cstring, n: cint): struct_miqt_string {.importc: "QSequentialAnimationGroup_trUtf83".}
proc fQSequentialAnimationGroup_virtualbase_metaObject(self: pointer, ): pointer{.importc: "QSequentialAnimationGroup_virtualbase_metaObject".}
proc fcQSequentialAnimationGroup_override_virtual_metaObject(self: pointer, slot: int) {.importc: "QSequentialAnimationGroup_override_virtual_metaObject".}
proc fQSequentialAnimationGroup_virtualbase_metacast(self: pointer, param1: cstring): pointer{.importc: "QSequentialAnimationGroup_virtualbase_metacast".}
proc fcQSequentialAnimationGroup_override_virtual_metacast(self: pointer, slot: int) {.importc: "QSequentialAnimationGroup_override_virtual_metacast".}
proc fQSequentialAnimationGroup_virtualbase_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint{.importc: "QSequentialAnimationGroup_virtualbase_metacall".}
proc fcQSequentialAnimationGroup_override_virtual_metacall(self: pointer, slot: int) {.importc: "QSequentialAnimationGroup_override_virtual_metacall".}
proc fQSequentialAnimationGroup_virtualbase_duration(self: pointer, ): cint{.importc: "QSequentialAnimationGroup_virtualbase_duration".}
proc fcQSequentialAnimationGroup_override_virtual_duration(self: pointer, slot: int) {.importc: "QSequentialAnimationGroup_override_virtual_duration".}
proc fQSequentialAnimationGroup_virtualbase_event(self: pointer, event: pointer): bool{.importc: "QSequentialAnimationGroup_virtualbase_event".}
proc fcQSequentialAnimationGroup_override_virtual_event(self: pointer, slot: int) {.importc: "QSequentialAnimationGroup_override_virtual_event".}
proc fQSequentialAnimationGroup_virtualbase_updateCurrentTime(self: pointer, param1: cint): void{.importc: "QSequentialAnimationGroup_virtualbase_updateCurrentTime".}
proc fcQSequentialAnimationGroup_override_virtual_updateCurrentTime(self: pointer, slot: int) {.importc: "QSequentialAnimationGroup_override_virtual_updateCurrentTime".}
proc fQSequentialAnimationGroup_virtualbase_updateState(self: pointer, newState: cint, oldState: cint): void{.importc: "QSequentialAnimationGroup_virtualbase_updateState".}
proc fcQSequentialAnimationGroup_override_virtual_updateState(self: pointer, slot: int) {.importc: "QSequentialAnimationGroup_override_virtual_updateState".}
proc fQSequentialAnimationGroup_virtualbase_updateDirection(self: pointer, direction: cint): void{.importc: "QSequentialAnimationGroup_virtualbase_updateDirection".}
proc fcQSequentialAnimationGroup_override_virtual_updateDirection(self: pointer, slot: int) {.importc: "QSequentialAnimationGroup_override_virtual_updateDirection".}
proc fQSequentialAnimationGroup_virtualbase_eventFilter(self: pointer, watched: pointer, event: pointer): bool{.importc: "QSequentialAnimationGroup_virtualbase_eventFilter".}
proc fcQSequentialAnimationGroup_override_virtual_eventFilter(self: pointer, slot: int) {.importc: "QSequentialAnimationGroup_override_virtual_eventFilter".}
proc fQSequentialAnimationGroup_virtualbase_timerEvent(self: pointer, event: pointer): void{.importc: "QSequentialAnimationGroup_virtualbase_timerEvent".}
proc fcQSequentialAnimationGroup_override_virtual_timerEvent(self: pointer, slot: int) {.importc: "QSequentialAnimationGroup_override_virtual_timerEvent".}
proc fQSequentialAnimationGroup_virtualbase_childEvent(self: pointer, event: pointer): void{.importc: "QSequentialAnimationGroup_virtualbase_childEvent".}
proc fcQSequentialAnimationGroup_override_virtual_childEvent(self: pointer, slot: int) {.importc: "QSequentialAnimationGroup_override_virtual_childEvent".}
proc fQSequentialAnimationGroup_virtualbase_customEvent(self: pointer, event: pointer): void{.importc: "QSequentialAnimationGroup_virtualbase_customEvent".}
proc fcQSequentialAnimationGroup_override_virtual_customEvent(self: pointer, slot: int) {.importc: "QSequentialAnimationGroup_override_virtual_customEvent".}
proc fQSequentialAnimationGroup_virtualbase_connectNotify(self: pointer, signal: pointer): void{.importc: "QSequentialAnimationGroup_virtualbase_connectNotify".}
proc fcQSequentialAnimationGroup_override_virtual_connectNotify(self: pointer, slot: int) {.importc: "QSequentialAnimationGroup_override_virtual_connectNotify".}
proc fQSequentialAnimationGroup_virtualbase_disconnectNotify(self: pointer, signal: pointer): void{.importc: "QSequentialAnimationGroup_virtualbase_disconnectNotify".}
proc fcQSequentialAnimationGroup_override_virtual_disconnectNotify(self: pointer, slot: int) {.importc: "QSequentialAnimationGroup_override_virtual_disconnectNotify".}
proc fcQSequentialAnimationGroup_staticMetaObject(): pointer {.importc: "QSequentialAnimationGroup_staticMetaObject".}
proc fcQSequentialAnimationGroup_delete(self: pointer) {.importc: "QSequentialAnimationGroup_delete".}


func init*(T: type gen_qsequentialanimationgroup_types.QSequentialAnimationGroup, h: ptr cQSequentialAnimationGroup): gen_qsequentialanimationgroup_types.QSequentialAnimationGroup =
  T(h: h)
proc create*(T: type gen_qsequentialanimationgroup_types.QSequentialAnimationGroup, ): gen_qsequentialanimationgroup_types.QSequentialAnimationGroup =
  gen_qsequentialanimationgroup_types.QSequentialAnimationGroup.init(fcQSequentialAnimationGroup_new())

proc create*(T: type gen_qsequentialanimationgroup_types.QSequentialAnimationGroup, parent: gen_qobject_types.QObject): gen_qsequentialanimationgroup_types.QSequentialAnimationGroup =
  gen_qsequentialanimationgroup_types.QSequentialAnimationGroup.init(fcQSequentialAnimationGroup_new2(parent.h))

proc metaObject*(self: gen_qsequentialanimationgroup_types.QSequentialAnimationGroup, ): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQSequentialAnimationGroup_metaObject(self.h))

proc metacast*(self: gen_qsequentialanimationgroup_types.QSequentialAnimationGroup, param1: cstring): pointer =
  fcQSequentialAnimationGroup_metacast(self.h, param1)

proc metacall*(self: gen_qsequentialanimationgroup_types.QSequentialAnimationGroup, param1: cint, param2: cint, param3: pointer): cint =
  fcQSequentialAnimationGroup_metacall(self.h, cint(param1), param2, param3)

proc tr*(_: type gen_qsequentialanimationgroup_types.QSequentialAnimationGroup, s: cstring): string =
  let v_ms = fcQSequentialAnimationGroup_tr(s)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc trUtf8*(_: type gen_qsequentialanimationgroup_types.QSequentialAnimationGroup, s: cstring): string =
  let v_ms = fcQSequentialAnimationGroup_trUtf8(s)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc addPause*(self: gen_qsequentialanimationgroup_types.QSequentialAnimationGroup, msecs: cint): gen_qpauseanimation_types.QPauseAnimation =
  gen_qpauseanimation_types.QPauseAnimation(h: fcQSequentialAnimationGroup_addPause(self.h, msecs))

proc insertPause*(self: gen_qsequentialanimationgroup_types.QSequentialAnimationGroup, index: cint, msecs: cint): gen_qpauseanimation_types.QPauseAnimation =
  gen_qpauseanimation_types.QPauseAnimation(h: fcQSequentialAnimationGroup_insertPause(self.h, index, msecs))

proc currentAnimation*(self: gen_qsequentialanimationgroup_types.QSequentialAnimationGroup, ): gen_qabstractanimation_types.QAbstractAnimation =
  gen_qabstractanimation_types.QAbstractAnimation(h: fcQSequentialAnimationGroup_currentAnimation(self.h))

proc duration*(self: gen_qsequentialanimationgroup_types.QSequentialAnimationGroup, ): cint =
  fcQSequentialAnimationGroup_duration(self.h)

proc currentAnimationChanged*(self: gen_qsequentialanimationgroup_types.QSequentialAnimationGroup, current: gen_qabstractanimation_types.QAbstractAnimation): void =
  fcQSequentialAnimationGroup_currentAnimationChanged(self.h, current.h)

type QSequentialAnimationGroupcurrentAnimationChangedSlot* = proc(current: gen_qabstractanimation_types.QAbstractAnimation)
proc miqt_exec_callback_QSequentialAnimationGroup_currentAnimationChanged(slot: int, current: pointer) {.exportc.} =
  let nimfunc = cast[ptr QSequentialAnimationGroupcurrentAnimationChangedSlot](cast[pointer](slot))
  let slotval1 = gen_qabstractanimation_types.QAbstractAnimation(h: current)

  nimfunc[](slotval1)

proc oncurrentAnimationChanged*(self: gen_qsequentialanimationgroup_types.QSequentialAnimationGroup, slot: QSequentialAnimationGroupcurrentAnimationChangedSlot) =
  var tmp = new QSequentialAnimationGroupcurrentAnimationChangedSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQSequentialAnimationGroup_connect_currentAnimationChanged(self.h, cast[int](addr tmp[]))

proc tr*(_: type gen_qsequentialanimationgroup_types.QSequentialAnimationGroup, s: cstring, c: cstring): string =
  let v_ms = fcQSequentialAnimationGroup_tr2(s, c)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc tr*(_: type gen_qsequentialanimationgroup_types.QSequentialAnimationGroup, s: cstring, c: cstring, n: cint): string =
  let v_ms = fcQSequentialAnimationGroup_tr3(s, c, n)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc trUtf8*(_: type gen_qsequentialanimationgroup_types.QSequentialAnimationGroup, s: cstring, c: cstring): string =
  let v_ms = fcQSequentialAnimationGroup_trUtf82(s, c)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc trUtf8*(_: type gen_qsequentialanimationgroup_types.QSequentialAnimationGroup, s: cstring, c: cstring, n: cint): string =
  let v_ms = fcQSequentialAnimationGroup_trUtf83(s, c, n)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc QSequentialAnimationGroupmetaObject*(self: gen_qsequentialanimationgroup_types.QSequentialAnimationGroup, ): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fQSequentialAnimationGroup_virtualbase_metaObject(self.h))

type QSequentialAnimationGroupmetaObjectProc* = proc(): gen_qobjectdefs_types.QMetaObject
proc onmetaObject*(self: gen_qsequentialanimationgroup_types.QSequentialAnimationGroup, slot: QSequentialAnimationGroupmetaObjectProc) =
  # TODO check subclass
  var tmp = new QSequentialAnimationGroupmetaObjectProc
  tmp[] = slot
  GC_ref(tmp)
  fcQSequentialAnimationGroup_override_virtual_metaObject(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QSequentialAnimationGroup_metaObject(self: ptr cQSequentialAnimationGroup, slot: int): pointer {.exportc: "miqt_exec_callback_QSequentialAnimationGroup_metaObject ".} =
  var nimfunc = cast[ptr QSequentialAnimationGroupmetaObjectProc](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )

  virtualReturn.h
proc QSequentialAnimationGroupmetacast*(self: gen_qsequentialanimationgroup_types.QSequentialAnimationGroup, param1: cstring): pointer =
  fQSequentialAnimationGroup_virtualbase_metacast(self.h, param1)

type QSequentialAnimationGroupmetacastProc* = proc(param1: cstring): pointer
proc onmetacast*(self: gen_qsequentialanimationgroup_types.QSequentialAnimationGroup, slot: QSequentialAnimationGroupmetacastProc) =
  # TODO check subclass
  var tmp = new QSequentialAnimationGroupmetacastProc
  tmp[] = slot
  GC_ref(tmp)
  fcQSequentialAnimationGroup_override_virtual_metacast(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QSequentialAnimationGroup_metacast(self: ptr cQSequentialAnimationGroup, slot: int, param1: cstring): pointer {.exportc: "miqt_exec_callback_QSequentialAnimationGroup_metacast ".} =
  var nimfunc = cast[ptr QSequentialAnimationGroupmetacastProc](cast[pointer](slot))
  let slotval1 = (param1)


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn
proc QSequentialAnimationGroupmetacall*(self: gen_qsequentialanimationgroup_types.QSequentialAnimationGroup, param1: cint, param2: cint, param3: pointer): cint =
  fQSequentialAnimationGroup_virtualbase_metacall(self.h, cint(param1), param2, param3)

type QSequentialAnimationGroupmetacallProc* = proc(param1: cint, param2: cint, param3: pointer): cint
proc onmetacall*(self: gen_qsequentialanimationgroup_types.QSequentialAnimationGroup, slot: QSequentialAnimationGroupmetacallProc) =
  # TODO check subclass
  var tmp = new QSequentialAnimationGroupmetacallProc
  tmp[] = slot
  GC_ref(tmp)
  fcQSequentialAnimationGroup_override_virtual_metacall(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QSequentialAnimationGroup_metacall(self: ptr cQSequentialAnimationGroup, slot: int, param1: cint, param2: cint, param3: pointer): cint {.exportc: "miqt_exec_callback_QSequentialAnimationGroup_metacall ".} =
  var nimfunc = cast[ptr QSequentialAnimationGroupmetacallProc](cast[pointer](slot))
  let slotval1 = cint(param1)

  let slotval2 = param2

  let slotval3 = param3


  let virtualReturn = nimfunc[](slotval1, slotval2, slotval3 )

  virtualReturn
proc QSequentialAnimationGroupduration*(self: gen_qsequentialanimationgroup_types.QSequentialAnimationGroup, ): cint =
  fQSequentialAnimationGroup_virtualbase_duration(self.h)

type QSequentialAnimationGroupdurationProc* = proc(): cint
proc onduration*(self: gen_qsequentialanimationgroup_types.QSequentialAnimationGroup, slot: QSequentialAnimationGroupdurationProc) =
  # TODO check subclass
  var tmp = new QSequentialAnimationGroupdurationProc
  tmp[] = slot
  GC_ref(tmp)
  fcQSequentialAnimationGroup_override_virtual_duration(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QSequentialAnimationGroup_duration(self: ptr cQSequentialAnimationGroup, slot: int): cint {.exportc: "miqt_exec_callback_QSequentialAnimationGroup_duration ".} =
  var nimfunc = cast[ptr QSequentialAnimationGroupdurationProc](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )

  virtualReturn
proc QSequentialAnimationGroupevent*(self: gen_qsequentialanimationgroup_types.QSequentialAnimationGroup, event: gen_qcoreevent_types.QEvent): bool =
  fQSequentialAnimationGroup_virtualbase_event(self.h, event.h)

type QSequentialAnimationGroupeventProc* = proc(event: gen_qcoreevent_types.QEvent): bool
proc onevent*(self: gen_qsequentialanimationgroup_types.QSequentialAnimationGroup, slot: QSequentialAnimationGroupeventProc) =
  # TODO check subclass
  var tmp = new QSequentialAnimationGroupeventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQSequentialAnimationGroup_override_virtual_event(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QSequentialAnimationGroup_event(self: ptr cQSequentialAnimationGroup, slot: int, event: pointer): bool {.exportc: "miqt_exec_callback_QSequentialAnimationGroup_event ".} =
  var nimfunc = cast[ptr QSequentialAnimationGroupeventProc](cast[pointer](slot))
  let slotval1 = gen_qcoreevent_types.QEvent(h: event)


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn
proc QSequentialAnimationGroupupdateCurrentTime*(self: gen_qsequentialanimationgroup_types.QSequentialAnimationGroup, param1: cint): void =
  fQSequentialAnimationGroup_virtualbase_updateCurrentTime(self.h, param1)

type QSequentialAnimationGroupupdateCurrentTimeProc* = proc(param1: cint): void
proc onupdateCurrentTime*(self: gen_qsequentialanimationgroup_types.QSequentialAnimationGroup, slot: QSequentialAnimationGroupupdateCurrentTimeProc) =
  # TODO check subclass
  var tmp = new QSequentialAnimationGroupupdateCurrentTimeProc
  tmp[] = slot
  GC_ref(tmp)
  fcQSequentialAnimationGroup_override_virtual_updateCurrentTime(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QSequentialAnimationGroup_updateCurrentTime(self: ptr cQSequentialAnimationGroup, slot: int, param1: cint): void {.exportc: "miqt_exec_callback_QSequentialAnimationGroup_updateCurrentTime ".} =
  var nimfunc = cast[ptr QSequentialAnimationGroupupdateCurrentTimeProc](cast[pointer](slot))
  let slotval1 = param1


  nimfunc[](slotval1)
proc QSequentialAnimationGroupupdateState*(self: gen_qsequentialanimationgroup_types.QSequentialAnimationGroup, newState: cint, oldState: cint): void =
  fQSequentialAnimationGroup_virtualbase_updateState(self.h, cint(newState), cint(oldState))

type QSequentialAnimationGroupupdateStateProc* = proc(newState: cint, oldState: cint): void
proc onupdateState*(self: gen_qsequentialanimationgroup_types.QSequentialAnimationGroup, slot: QSequentialAnimationGroupupdateStateProc) =
  # TODO check subclass
  var tmp = new QSequentialAnimationGroupupdateStateProc
  tmp[] = slot
  GC_ref(tmp)
  fcQSequentialAnimationGroup_override_virtual_updateState(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QSequentialAnimationGroup_updateState(self: ptr cQSequentialAnimationGroup, slot: int, newState: cint, oldState: cint): void {.exportc: "miqt_exec_callback_QSequentialAnimationGroup_updateState ".} =
  var nimfunc = cast[ptr QSequentialAnimationGroupupdateStateProc](cast[pointer](slot))
  let slotval1 = cint(newState)

  let slotval2 = cint(oldState)


  nimfunc[](slotval1, slotval2)
proc QSequentialAnimationGroupupdateDirection*(self: gen_qsequentialanimationgroup_types.QSequentialAnimationGroup, direction: cint): void =
  fQSequentialAnimationGroup_virtualbase_updateDirection(self.h, cint(direction))

type QSequentialAnimationGroupupdateDirectionProc* = proc(direction: cint): void
proc onupdateDirection*(self: gen_qsequentialanimationgroup_types.QSequentialAnimationGroup, slot: QSequentialAnimationGroupupdateDirectionProc) =
  # TODO check subclass
  var tmp = new QSequentialAnimationGroupupdateDirectionProc
  tmp[] = slot
  GC_ref(tmp)
  fcQSequentialAnimationGroup_override_virtual_updateDirection(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QSequentialAnimationGroup_updateDirection(self: ptr cQSequentialAnimationGroup, slot: int, direction: cint): void {.exportc: "miqt_exec_callback_QSequentialAnimationGroup_updateDirection ".} =
  var nimfunc = cast[ptr QSequentialAnimationGroupupdateDirectionProc](cast[pointer](slot))
  let slotval1 = cint(direction)


  nimfunc[](slotval1)
proc QSequentialAnimationGroupeventFilter*(self: gen_qsequentialanimationgroup_types.QSequentialAnimationGroup, watched: gen_qobject_types.QObject, event: gen_qcoreevent_types.QEvent): bool =
  fQSequentialAnimationGroup_virtualbase_eventFilter(self.h, watched.h, event.h)

type QSequentialAnimationGroupeventFilterProc* = proc(watched: gen_qobject_types.QObject, event: gen_qcoreevent_types.QEvent): bool
proc oneventFilter*(self: gen_qsequentialanimationgroup_types.QSequentialAnimationGroup, slot: QSequentialAnimationGroupeventFilterProc) =
  # TODO check subclass
  var tmp = new QSequentialAnimationGroupeventFilterProc
  tmp[] = slot
  GC_ref(tmp)
  fcQSequentialAnimationGroup_override_virtual_eventFilter(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QSequentialAnimationGroup_eventFilter(self: ptr cQSequentialAnimationGroup, slot: int, watched: pointer, event: pointer): bool {.exportc: "miqt_exec_callback_QSequentialAnimationGroup_eventFilter ".} =
  var nimfunc = cast[ptr QSequentialAnimationGroupeventFilterProc](cast[pointer](slot))
  let slotval1 = gen_qobject_types.QObject(h: watched)

  let slotval2 = gen_qcoreevent_types.QEvent(h: event)


  let virtualReturn = nimfunc[](slotval1, slotval2 )

  virtualReturn
proc QSequentialAnimationGrouptimerEvent*(self: gen_qsequentialanimationgroup_types.QSequentialAnimationGroup, event: gen_qcoreevent_types.QTimerEvent): void =
  fQSequentialAnimationGroup_virtualbase_timerEvent(self.h, event.h)

type QSequentialAnimationGrouptimerEventProc* = proc(event: gen_qcoreevent_types.QTimerEvent): void
proc ontimerEvent*(self: gen_qsequentialanimationgroup_types.QSequentialAnimationGroup, slot: QSequentialAnimationGrouptimerEventProc) =
  # TODO check subclass
  var tmp = new QSequentialAnimationGrouptimerEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQSequentialAnimationGroup_override_virtual_timerEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QSequentialAnimationGroup_timerEvent(self: ptr cQSequentialAnimationGroup, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QSequentialAnimationGroup_timerEvent ".} =
  var nimfunc = cast[ptr QSequentialAnimationGrouptimerEventProc](cast[pointer](slot))
  let slotval1 = gen_qcoreevent_types.QTimerEvent(h: event)


  nimfunc[](slotval1)
proc QSequentialAnimationGroupchildEvent*(self: gen_qsequentialanimationgroup_types.QSequentialAnimationGroup, event: gen_qcoreevent_types.QChildEvent): void =
  fQSequentialAnimationGroup_virtualbase_childEvent(self.h, event.h)

type QSequentialAnimationGroupchildEventProc* = proc(event: gen_qcoreevent_types.QChildEvent): void
proc onchildEvent*(self: gen_qsequentialanimationgroup_types.QSequentialAnimationGroup, slot: QSequentialAnimationGroupchildEventProc) =
  # TODO check subclass
  var tmp = new QSequentialAnimationGroupchildEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQSequentialAnimationGroup_override_virtual_childEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QSequentialAnimationGroup_childEvent(self: ptr cQSequentialAnimationGroup, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QSequentialAnimationGroup_childEvent ".} =
  var nimfunc = cast[ptr QSequentialAnimationGroupchildEventProc](cast[pointer](slot))
  let slotval1 = gen_qcoreevent_types.QChildEvent(h: event)


  nimfunc[](slotval1)
proc QSequentialAnimationGroupcustomEvent*(self: gen_qsequentialanimationgroup_types.QSequentialAnimationGroup, event: gen_qcoreevent_types.QEvent): void =
  fQSequentialAnimationGroup_virtualbase_customEvent(self.h, event.h)

type QSequentialAnimationGroupcustomEventProc* = proc(event: gen_qcoreevent_types.QEvent): void
proc oncustomEvent*(self: gen_qsequentialanimationgroup_types.QSequentialAnimationGroup, slot: QSequentialAnimationGroupcustomEventProc) =
  # TODO check subclass
  var tmp = new QSequentialAnimationGroupcustomEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQSequentialAnimationGroup_override_virtual_customEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QSequentialAnimationGroup_customEvent(self: ptr cQSequentialAnimationGroup, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QSequentialAnimationGroup_customEvent ".} =
  var nimfunc = cast[ptr QSequentialAnimationGroupcustomEventProc](cast[pointer](slot))
  let slotval1 = gen_qcoreevent_types.QEvent(h: event)


  nimfunc[](slotval1)
proc QSequentialAnimationGroupconnectNotify*(self: gen_qsequentialanimationgroup_types.QSequentialAnimationGroup, signal: gen_qmetaobject_types.QMetaMethod): void =
  fQSequentialAnimationGroup_virtualbase_connectNotify(self.h, signal.h)

type QSequentialAnimationGroupconnectNotifyProc* = proc(signal: gen_qmetaobject_types.QMetaMethod): void
proc onconnectNotify*(self: gen_qsequentialanimationgroup_types.QSequentialAnimationGroup, slot: QSequentialAnimationGroupconnectNotifyProc) =
  # TODO check subclass
  var tmp = new QSequentialAnimationGroupconnectNotifyProc
  tmp[] = slot
  GC_ref(tmp)
  fcQSequentialAnimationGroup_override_virtual_connectNotify(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QSequentialAnimationGroup_connectNotify(self: ptr cQSequentialAnimationGroup, slot: int, signal: pointer): void {.exportc: "miqt_exec_callback_QSequentialAnimationGroup_connectNotify ".} =
  var nimfunc = cast[ptr QSequentialAnimationGroupconnectNotifyProc](cast[pointer](slot))
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal)


  nimfunc[](slotval1)
proc QSequentialAnimationGroupdisconnectNotify*(self: gen_qsequentialanimationgroup_types.QSequentialAnimationGroup, signal: gen_qmetaobject_types.QMetaMethod): void =
  fQSequentialAnimationGroup_virtualbase_disconnectNotify(self.h, signal.h)

type QSequentialAnimationGroupdisconnectNotifyProc* = proc(signal: gen_qmetaobject_types.QMetaMethod): void
proc ondisconnectNotify*(self: gen_qsequentialanimationgroup_types.QSequentialAnimationGroup, slot: QSequentialAnimationGroupdisconnectNotifyProc) =
  # TODO check subclass
  var tmp = new QSequentialAnimationGroupdisconnectNotifyProc
  tmp[] = slot
  GC_ref(tmp)
  fcQSequentialAnimationGroup_override_virtual_disconnectNotify(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QSequentialAnimationGroup_disconnectNotify(self: ptr cQSequentialAnimationGroup, slot: int, signal: pointer): void {.exportc: "miqt_exec_callback_QSequentialAnimationGroup_disconnectNotify ".} =
  var nimfunc = cast[ptr QSequentialAnimationGroupdisconnectNotifyProc](cast[pointer](slot))
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal)


  nimfunc[](slotval1)
proc staticMetaObject*(_: type gen_qsequentialanimationgroup_types.QSequentialAnimationGroup): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQSequentialAnimationGroup_staticMetaObject())
proc delete*(self: gen_qsequentialanimationgroup_types.QSequentialAnimationGroup) =
  fcQSequentialAnimationGroup_delete(self.h)
