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
{.compile("gen_qanimationgroup.cpp", cflags).}


import ./gen_qanimationgroup_types
export gen_qanimationgroup_types

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

type cQAnimationGroup*{.exportc: "QAnimationGroup", incompleteStruct.} = object

proc fcQAnimationGroup_new(): ptr cQAnimationGroup {.importc: "QAnimationGroup_new".}
proc fcQAnimationGroup_new2(parent: pointer): ptr cQAnimationGroup {.importc: "QAnimationGroup_new2".}
proc fcQAnimationGroup_metaObject(self: pointer, ): pointer {.importc: "QAnimationGroup_metaObject".}
proc fcQAnimationGroup_metacast(self: pointer, param1: cstring): pointer {.importc: "QAnimationGroup_metacast".}
proc fcQAnimationGroup_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.importc: "QAnimationGroup_metacall".}
proc fcQAnimationGroup_tr(s: cstring): struct_miqt_string {.importc: "QAnimationGroup_tr".}
proc fcQAnimationGroup_animationAt(self: pointer, index: cint): pointer {.importc: "QAnimationGroup_animationAt".}
proc fcQAnimationGroup_animationCount(self: pointer, ): cint {.importc: "QAnimationGroup_animationCount".}
proc fcQAnimationGroup_indexOfAnimation(self: pointer, animation: pointer): cint {.importc: "QAnimationGroup_indexOfAnimation".}
proc fcQAnimationGroup_addAnimation(self: pointer, animation: pointer): void {.importc: "QAnimationGroup_addAnimation".}
proc fcQAnimationGroup_insertAnimation(self: pointer, index: cint, animation: pointer): void {.importc: "QAnimationGroup_insertAnimation".}
proc fcQAnimationGroup_removeAnimation(self: pointer, animation: pointer): void {.importc: "QAnimationGroup_removeAnimation".}
proc fcQAnimationGroup_takeAnimation(self: pointer, index: cint): pointer {.importc: "QAnimationGroup_takeAnimation".}
proc fcQAnimationGroup_clear(self: pointer, ): void {.importc: "QAnimationGroup_clear".}
proc fcQAnimationGroup_tr2(s: cstring, c: cstring): struct_miqt_string {.importc: "QAnimationGroup_tr2".}
proc fcQAnimationGroup_tr3(s: cstring, c: cstring, n: cint): struct_miqt_string {.importc: "QAnimationGroup_tr3".}
proc fQAnimationGroup_virtualbase_metaObject(self: pointer, ): pointer{.importc: "QAnimationGroup_virtualbase_metaObject".}
proc fcQAnimationGroup_override_virtual_metaObject(self: pointer, slot: int) {.importc: "QAnimationGroup_override_virtual_metaObject".}
proc fQAnimationGroup_virtualbase_metacast(self: pointer, param1: cstring): pointer{.importc: "QAnimationGroup_virtualbase_metacast".}
proc fcQAnimationGroup_override_virtual_metacast(self: pointer, slot: int) {.importc: "QAnimationGroup_override_virtual_metacast".}
proc fQAnimationGroup_virtualbase_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint{.importc: "QAnimationGroup_virtualbase_metacall".}
proc fcQAnimationGroup_override_virtual_metacall(self: pointer, slot: int) {.importc: "QAnimationGroup_override_virtual_metacall".}
proc fQAnimationGroup_virtualbase_event(self: pointer, event: pointer): bool{.importc: "QAnimationGroup_virtualbase_event".}
proc fcQAnimationGroup_override_virtual_event(self: pointer, slot: int) {.importc: "QAnimationGroup_override_virtual_event".}
proc fcQAnimationGroup_override_virtual_duration(self: pointer, slot: int) {.importc: "QAnimationGroup_override_virtual_duration".}
proc fcQAnimationGroup_override_virtual_updateCurrentTime(self: pointer, slot: int) {.importc: "QAnimationGroup_override_virtual_updateCurrentTime".}
proc fQAnimationGroup_virtualbase_updateState(self: pointer, newState: cint, oldState: cint): void{.importc: "QAnimationGroup_virtualbase_updateState".}
proc fcQAnimationGroup_override_virtual_updateState(self: pointer, slot: int) {.importc: "QAnimationGroup_override_virtual_updateState".}
proc fQAnimationGroup_virtualbase_updateDirection(self: pointer, direction: cint): void{.importc: "QAnimationGroup_virtualbase_updateDirection".}
proc fcQAnimationGroup_override_virtual_updateDirection(self: pointer, slot: int) {.importc: "QAnimationGroup_override_virtual_updateDirection".}
proc fQAnimationGroup_virtualbase_eventFilter(self: pointer, watched: pointer, event: pointer): bool{.importc: "QAnimationGroup_virtualbase_eventFilter".}
proc fcQAnimationGroup_override_virtual_eventFilter(self: pointer, slot: int) {.importc: "QAnimationGroup_override_virtual_eventFilter".}
proc fQAnimationGroup_virtualbase_timerEvent(self: pointer, event: pointer): void{.importc: "QAnimationGroup_virtualbase_timerEvent".}
proc fcQAnimationGroup_override_virtual_timerEvent(self: pointer, slot: int) {.importc: "QAnimationGroup_override_virtual_timerEvent".}
proc fQAnimationGroup_virtualbase_childEvent(self: pointer, event: pointer): void{.importc: "QAnimationGroup_virtualbase_childEvent".}
proc fcQAnimationGroup_override_virtual_childEvent(self: pointer, slot: int) {.importc: "QAnimationGroup_override_virtual_childEvent".}
proc fQAnimationGroup_virtualbase_customEvent(self: pointer, event: pointer): void{.importc: "QAnimationGroup_virtualbase_customEvent".}
proc fcQAnimationGroup_override_virtual_customEvent(self: pointer, slot: int) {.importc: "QAnimationGroup_override_virtual_customEvent".}
proc fQAnimationGroup_virtualbase_connectNotify(self: pointer, signal: pointer): void{.importc: "QAnimationGroup_virtualbase_connectNotify".}
proc fcQAnimationGroup_override_virtual_connectNotify(self: pointer, slot: int) {.importc: "QAnimationGroup_override_virtual_connectNotify".}
proc fQAnimationGroup_virtualbase_disconnectNotify(self: pointer, signal: pointer): void{.importc: "QAnimationGroup_virtualbase_disconnectNotify".}
proc fcQAnimationGroup_override_virtual_disconnectNotify(self: pointer, slot: int) {.importc: "QAnimationGroup_override_virtual_disconnectNotify".}
proc fcQAnimationGroup_staticMetaObject(): pointer {.importc: "QAnimationGroup_staticMetaObject".}
proc fcQAnimationGroup_delete(self: pointer) {.importc: "QAnimationGroup_delete".}


func init*(T: type gen_qanimationgroup_types.QAnimationGroup, h: ptr cQAnimationGroup): gen_qanimationgroup_types.QAnimationGroup =
  T(h: h)
proc create*(T: type gen_qanimationgroup_types.QAnimationGroup, ): gen_qanimationgroup_types.QAnimationGroup =
  gen_qanimationgroup_types.QAnimationGroup.init(fcQAnimationGroup_new())

proc create*(T: type gen_qanimationgroup_types.QAnimationGroup, parent: gen_qobject_types.QObject): gen_qanimationgroup_types.QAnimationGroup =
  gen_qanimationgroup_types.QAnimationGroup.init(fcQAnimationGroup_new2(parent.h))

proc metaObject*(self: gen_qanimationgroup_types.QAnimationGroup, ): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQAnimationGroup_metaObject(self.h))

proc metacast*(self: gen_qanimationgroup_types.QAnimationGroup, param1: cstring): pointer =
  fcQAnimationGroup_metacast(self.h, param1)

proc metacall*(self: gen_qanimationgroup_types.QAnimationGroup, param1: cint, param2: cint, param3: pointer): cint =
  fcQAnimationGroup_metacall(self.h, cint(param1), param2, param3)

proc tr*(_: type gen_qanimationgroup_types.QAnimationGroup, s: cstring): string =
  let v_ms = fcQAnimationGroup_tr(s)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc animationAt*(self: gen_qanimationgroup_types.QAnimationGroup, index: cint): gen_qabstractanimation_types.QAbstractAnimation =
  gen_qabstractanimation_types.QAbstractAnimation(h: fcQAnimationGroup_animationAt(self.h, index))

proc animationCount*(self: gen_qanimationgroup_types.QAnimationGroup, ): cint =
  fcQAnimationGroup_animationCount(self.h)

proc indexOfAnimation*(self: gen_qanimationgroup_types.QAnimationGroup, animation: gen_qabstractanimation_types.QAbstractAnimation): cint =
  fcQAnimationGroup_indexOfAnimation(self.h, animation.h)

proc addAnimation*(self: gen_qanimationgroup_types.QAnimationGroup, animation: gen_qabstractanimation_types.QAbstractAnimation): void =
  fcQAnimationGroup_addAnimation(self.h, animation.h)

proc insertAnimation*(self: gen_qanimationgroup_types.QAnimationGroup, index: cint, animation: gen_qabstractanimation_types.QAbstractAnimation): void =
  fcQAnimationGroup_insertAnimation(self.h, index, animation.h)

proc removeAnimation*(self: gen_qanimationgroup_types.QAnimationGroup, animation: gen_qabstractanimation_types.QAbstractAnimation): void =
  fcQAnimationGroup_removeAnimation(self.h, animation.h)

proc takeAnimation*(self: gen_qanimationgroup_types.QAnimationGroup, index: cint): gen_qabstractanimation_types.QAbstractAnimation =
  gen_qabstractanimation_types.QAbstractAnimation(h: fcQAnimationGroup_takeAnimation(self.h, index))

proc clear*(self: gen_qanimationgroup_types.QAnimationGroup, ): void =
  fcQAnimationGroup_clear(self.h)

proc tr*(_: type gen_qanimationgroup_types.QAnimationGroup, s: cstring, c: cstring): string =
  let v_ms = fcQAnimationGroup_tr2(s, c)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc tr*(_: type gen_qanimationgroup_types.QAnimationGroup, s: cstring, c: cstring, n: cint): string =
  let v_ms = fcQAnimationGroup_tr3(s, c, n)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc QAnimationGroupmetaObject*(self: gen_qanimationgroup_types.QAnimationGroup, ): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fQAnimationGroup_virtualbase_metaObject(self.h))

type QAnimationGroupmetaObjectProc* = proc(): gen_qobjectdefs_types.QMetaObject
proc onmetaObject*(self: gen_qanimationgroup_types.QAnimationGroup, slot: QAnimationGroupmetaObjectProc) =
  # TODO check subclass
  var tmp = new QAnimationGroupmetaObjectProc
  tmp[] = slot
  GC_ref(tmp)
  fcQAnimationGroup_override_virtual_metaObject(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QAnimationGroup_metaObject(self: ptr cQAnimationGroup, slot: int): pointer {.exportc: "miqt_exec_callback_QAnimationGroup_metaObject ".} =
  var nimfunc = cast[ptr QAnimationGroupmetaObjectProc](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )

  virtualReturn.h
proc QAnimationGroupmetacast*(self: gen_qanimationgroup_types.QAnimationGroup, param1: cstring): pointer =
  fQAnimationGroup_virtualbase_metacast(self.h, param1)

type QAnimationGroupmetacastProc* = proc(param1: cstring): pointer
proc onmetacast*(self: gen_qanimationgroup_types.QAnimationGroup, slot: QAnimationGroupmetacastProc) =
  # TODO check subclass
  var tmp = new QAnimationGroupmetacastProc
  tmp[] = slot
  GC_ref(tmp)
  fcQAnimationGroup_override_virtual_metacast(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QAnimationGroup_metacast(self: ptr cQAnimationGroup, slot: int, param1: cstring): pointer {.exportc: "miqt_exec_callback_QAnimationGroup_metacast ".} =
  var nimfunc = cast[ptr QAnimationGroupmetacastProc](cast[pointer](slot))
  let slotval1 = (param1)


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn
proc QAnimationGroupmetacall*(self: gen_qanimationgroup_types.QAnimationGroup, param1: cint, param2: cint, param3: pointer): cint =
  fQAnimationGroup_virtualbase_metacall(self.h, cint(param1), param2, param3)

type QAnimationGroupmetacallProc* = proc(param1: cint, param2: cint, param3: pointer): cint
proc onmetacall*(self: gen_qanimationgroup_types.QAnimationGroup, slot: QAnimationGroupmetacallProc) =
  # TODO check subclass
  var tmp = new QAnimationGroupmetacallProc
  tmp[] = slot
  GC_ref(tmp)
  fcQAnimationGroup_override_virtual_metacall(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QAnimationGroup_metacall(self: ptr cQAnimationGroup, slot: int, param1: cint, param2: cint, param3: pointer): cint {.exportc: "miqt_exec_callback_QAnimationGroup_metacall ".} =
  var nimfunc = cast[ptr QAnimationGroupmetacallProc](cast[pointer](slot))
  let slotval1 = cint(param1)

  let slotval2 = param2

  let slotval3 = param3


  let virtualReturn = nimfunc[](slotval1, slotval2, slotval3 )

  virtualReturn
proc QAnimationGroupevent*(self: gen_qanimationgroup_types.QAnimationGroup, event: gen_qcoreevent_types.QEvent): bool =
  fQAnimationGroup_virtualbase_event(self.h, event.h)

type QAnimationGroupeventProc* = proc(event: gen_qcoreevent_types.QEvent): bool
proc onevent*(self: gen_qanimationgroup_types.QAnimationGroup, slot: QAnimationGroupeventProc) =
  # TODO check subclass
  var tmp = new QAnimationGroupeventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQAnimationGroup_override_virtual_event(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QAnimationGroup_event(self: ptr cQAnimationGroup, slot: int, event: pointer): bool {.exportc: "miqt_exec_callback_QAnimationGroup_event ".} =
  var nimfunc = cast[ptr QAnimationGroupeventProc](cast[pointer](slot))
  let slotval1 = gen_qcoreevent_types.QEvent(h: event)


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn
type QAnimationGroupdurationProc* = proc(): cint
proc onduration*(self: gen_qanimationgroup_types.QAnimationGroup, slot: QAnimationGroupdurationProc) =
  # TODO check subclass
  var tmp = new QAnimationGroupdurationProc
  tmp[] = slot
  GC_ref(tmp)
  fcQAnimationGroup_override_virtual_duration(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QAnimationGroup_duration(self: ptr cQAnimationGroup, slot: int): cint {.exportc: "miqt_exec_callback_QAnimationGroup_duration ".} =
  var nimfunc = cast[ptr QAnimationGroupdurationProc](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )

  virtualReturn
type QAnimationGroupupdateCurrentTimeProc* = proc(currentTime: cint): void
proc onupdateCurrentTime*(self: gen_qanimationgroup_types.QAnimationGroup, slot: QAnimationGroupupdateCurrentTimeProc) =
  # TODO check subclass
  var tmp = new QAnimationGroupupdateCurrentTimeProc
  tmp[] = slot
  GC_ref(tmp)
  fcQAnimationGroup_override_virtual_updateCurrentTime(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QAnimationGroup_updateCurrentTime(self: ptr cQAnimationGroup, slot: int, currentTime: cint): void {.exportc: "miqt_exec_callback_QAnimationGroup_updateCurrentTime ".} =
  var nimfunc = cast[ptr QAnimationGroupupdateCurrentTimeProc](cast[pointer](slot))
  let slotval1 = currentTime


  nimfunc[](slotval1)
proc QAnimationGroupupdateState*(self: gen_qanimationgroup_types.QAnimationGroup, newState: cint, oldState: cint): void =
  fQAnimationGroup_virtualbase_updateState(self.h, cint(newState), cint(oldState))

type QAnimationGroupupdateStateProc* = proc(newState: cint, oldState: cint): void
proc onupdateState*(self: gen_qanimationgroup_types.QAnimationGroup, slot: QAnimationGroupupdateStateProc) =
  # TODO check subclass
  var tmp = new QAnimationGroupupdateStateProc
  tmp[] = slot
  GC_ref(tmp)
  fcQAnimationGroup_override_virtual_updateState(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QAnimationGroup_updateState(self: ptr cQAnimationGroup, slot: int, newState: cint, oldState: cint): void {.exportc: "miqt_exec_callback_QAnimationGroup_updateState ".} =
  var nimfunc = cast[ptr QAnimationGroupupdateStateProc](cast[pointer](slot))
  let slotval1 = cint(newState)

  let slotval2 = cint(oldState)


  nimfunc[](slotval1, slotval2)
proc QAnimationGroupupdateDirection*(self: gen_qanimationgroup_types.QAnimationGroup, direction: cint): void =
  fQAnimationGroup_virtualbase_updateDirection(self.h, cint(direction))

type QAnimationGroupupdateDirectionProc* = proc(direction: cint): void
proc onupdateDirection*(self: gen_qanimationgroup_types.QAnimationGroup, slot: QAnimationGroupupdateDirectionProc) =
  # TODO check subclass
  var tmp = new QAnimationGroupupdateDirectionProc
  tmp[] = slot
  GC_ref(tmp)
  fcQAnimationGroup_override_virtual_updateDirection(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QAnimationGroup_updateDirection(self: ptr cQAnimationGroup, slot: int, direction: cint): void {.exportc: "miqt_exec_callback_QAnimationGroup_updateDirection ".} =
  var nimfunc = cast[ptr QAnimationGroupupdateDirectionProc](cast[pointer](slot))
  let slotval1 = cint(direction)


  nimfunc[](slotval1)
proc QAnimationGroupeventFilter*(self: gen_qanimationgroup_types.QAnimationGroup, watched: gen_qobject_types.QObject, event: gen_qcoreevent_types.QEvent): bool =
  fQAnimationGroup_virtualbase_eventFilter(self.h, watched.h, event.h)

type QAnimationGroupeventFilterProc* = proc(watched: gen_qobject_types.QObject, event: gen_qcoreevent_types.QEvent): bool
proc oneventFilter*(self: gen_qanimationgroup_types.QAnimationGroup, slot: QAnimationGroupeventFilterProc) =
  # TODO check subclass
  var tmp = new QAnimationGroupeventFilterProc
  tmp[] = slot
  GC_ref(tmp)
  fcQAnimationGroup_override_virtual_eventFilter(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QAnimationGroup_eventFilter(self: ptr cQAnimationGroup, slot: int, watched: pointer, event: pointer): bool {.exportc: "miqt_exec_callback_QAnimationGroup_eventFilter ".} =
  var nimfunc = cast[ptr QAnimationGroupeventFilterProc](cast[pointer](slot))
  let slotval1 = gen_qobject_types.QObject(h: watched)

  let slotval2 = gen_qcoreevent_types.QEvent(h: event)


  let virtualReturn = nimfunc[](slotval1, slotval2 )

  virtualReturn
proc QAnimationGrouptimerEvent*(self: gen_qanimationgroup_types.QAnimationGroup, event: gen_qcoreevent_types.QTimerEvent): void =
  fQAnimationGroup_virtualbase_timerEvent(self.h, event.h)

type QAnimationGrouptimerEventProc* = proc(event: gen_qcoreevent_types.QTimerEvent): void
proc ontimerEvent*(self: gen_qanimationgroup_types.QAnimationGroup, slot: QAnimationGrouptimerEventProc) =
  # TODO check subclass
  var tmp = new QAnimationGrouptimerEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQAnimationGroup_override_virtual_timerEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QAnimationGroup_timerEvent(self: ptr cQAnimationGroup, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QAnimationGroup_timerEvent ".} =
  var nimfunc = cast[ptr QAnimationGrouptimerEventProc](cast[pointer](slot))
  let slotval1 = gen_qcoreevent_types.QTimerEvent(h: event)


  nimfunc[](slotval1)
proc QAnimationGroupchildEvent*(self: gen_qanimationgroup_types.QAnimationGroup, event: gen_qcoreevent_types.QChildEvent): void =
  fQAnimationGroup_virtualbase_childEvent(self.h, event.h)

type QAnimationGroupchildEventProc* = proc(event: gen_qcoreevent_types.QChildEvent): void
proc onchildEvent*(self: gen_qanimationgroup_types.QAnimationGroup, slot: QAnimationGroupchildEventProc) =
  # TODO check subclass
  var tmp = new QAnimationGroupchildEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQAnimationGroup_override_virtual_childEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QAnimationGroup_childEvent(self: ptr cQAnimationGroup, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QAnimationGroup_childEvent ".} =
  var nimfunc = cast[ptr QAnimationGroupchildEventProc](cast[pointer](slot))
  let slotval1 = gen_qcoreevent_types.QChildEvent(h: event)


  nimfunc[](slotval1)
proc QAnimationGroupcustomEvent*(self: gen_qanimationgroup_types.QAnimationGroup, event: gen_qcoreevent_types.QEvent): void =
  fQAnimationGroup_virtualbase_customEvent(self.h, event.h)

type QAnimationGroupcustomEventProc* = proc(event: gen_qcoreevent_types.QEvent): void
proc oncustomEvent*(self: gen_qanimationgroup_types.QAnimationGroup, slot: QAnimationGroupcustomEventProc) =
  # TODO check subclass
  var tmp = new QAnimationGroupcustomEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQAnimationGroup_override_virtual_customEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QAnimationGroup_customEvent(self: ptr cQAnimationGroup, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QAnimationGroup_customEvent ".} =
  var nimfunc = cast[ptr QAnimationGroupcustomEventProc](cast[pointer](slot))
  let slotval1 = gen_qcoreevent_types.QEvent(h: event)


  nimfunc[](slotval1)
proc QAnimationGroupconnectNotify*(self: gen_qanimationgroup_types.QAnimationGroup, signal: gen_qmetaobject_types.QMetaMethod): void =
  fQAnimationGroup_virtualbase_connectNotify(self.h, signal.h)

type QAnimationGroupconnectNotifyProc* = proc(signal: gen_qmetaobject_types.QMetaMethod): void
proc onconnectNotify*(self: gen_qanimationgroup_types.QAnimationGroup, slot: QAnimationGroupconnectNotifyProc) =
  # TODO check subclass
  var tmp = new QAnimationGroupconnectNotifyProc
  tmp[] = slot
  GC_ref(tmp)
  fcQAnimationGroup_override_virtual_connectNotify(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QAnimationGroup_connectNotify(self: ptr cQAnimationGroup, slot: int, signal: pointer): void {.exportc: "miqt_exec_callback_QAnimationGroup_connectNotify ".} =
  var nimfunc = cast[ptr QAnimationGroupconnectNotifyProc](cast[pointer](slot))
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal)


  nimfunc[](slotval1)
proc QAnimationGroupdisconnectNotify*(self: gen_qanimationgroup_types.QAnimationGroup, signal: gen_qmetaobject_types.QMetaMethod): void =
  fQAnimationGroup_virtualbase_disconnectNotify(self.h, signal.h)

type QAnimationGroupdisconnectNotifyProc* = proc(signal: gen_qmetaobject_types.QMetaMethod): void
proc ondisconnectNotify*(self: gen_qanimationgroup_types.QAnimationGroup, slot: QAnimationGroupdisconnectNotifyProc) =
  # TODO check subclass
  var tmp = new QAnimationGroupdisconnectNotifyProc
  tmp[] = slot
  GC_ref(tmp)
  fcQAnimationGroup_override_virtual_disconnectNotify(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QAnimationGroup_disconnectNotify(self: ptr cQAnimationGroup, slot: int, signal: pointer): void {.exportc: "miqt_exec_callback_QAnimationGroup_disconnectNotify ".} =
  var nimfunc = cast[ptr QAnimationGroupdisconnectNotifyProc](cast[pointer](slot))
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal)


  nimfunc[](slotval1)
proc staticMetaObject*(_: type gen_qanimationgroup_types.QAnimationGroup): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQAnimationGroup_staticMetaObject())
proc delete*(self: gen_qanimationgroup_types.QAnimationGroup) =
  fcQAnimationGroup_delete(self.h)
