import ./Qt6Gui_libs

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

const cflags = gorge("pkg-config --cflags Qt6Gui")  & " -fPIC"
{.compile("gen_qactiongroup.cpp", cflags).}


type QActionGroupExclusionPolicyEnum* = distinct cint
template None*(_: type QActionGroupExclusionPolicyEnum): untyped = 0
template Exclusive*(_: type QActionGroupExclusionPolicyEnum): untyped = 1
template ExclusiveOptional*(_: type QActionGroupExclusionPolicyEnum): untyped = 2


import ./gen_qactiongroup_types
export gen_qactiongroup_types

import
  ../QtCore/gen_qcoreevent_types,
  ../QtCore/gen_qmetaobject_types,
  ../QtCore/gen_qobject,
  ../QtCore/gen_qobjectdefs_types,
  ./gen_qaction_types,
  ./gen_qicon_types
export
  gen_qcoreevent_types,
  gen_qmetaobject_types,
  gen_qobject,
  gen_qobjectdefs_types,
  gen_qaction_types,
  gen_qicon_types

type cQActionGroup*{.exportc: "QActionGroup", incompleteStruct.} = object

proc fcQActionGroup_new(parent: pointer): ptr cQActionGroup {.importc: "QActionGroup_new".}
proc fcQActionGroup_metaObject(self: pointer, ): pointer {.importc: "QActionGroup_metaObject".}
proc fcQActionGroup_metacast(self: pointer, param1: cstring): pointer {.importc: "QActionGroup_metacast".}
proc fcQActionGroup_tr(s: cstring): struct_miqt_string {.importc: "QActionGroup_tr".}
proc fcQActionGroup_addAction(self: pointer, a: pointer): pointer {.importc: "QActionGroup_addAction".}
proc fcQActionGroup_addActionWithText(self: pointer, text: struct_miqt_string): pointer {.importc: "QActionGroup_addActionWithText".}
proc fcQActionGroup_addAction2(self: pointer, icon: pointer, text: struct_miqt_string): pointer {.importc: "QActionGroup_addAction2".}
proc fcQActionGroup_removeAction(self: pointer, a: pointer): void {.importc: "QActionGroup_removeAction".}
proc fcQActionGroup_actions(self: pointer, ): struct_miqt_array {.importc: "QActionGroup_actions".}
proc fcQActionGroup_checkedAction(self: pointer, ): pointer {.importc: "QActionGroup_checkedAction".}
proc fcQActionGroup_isExclusive(self: pointer, ): bool {.importc: "QActionGroup_isExclusive".}
proc fcQActionGroup_isEnabled(self: pointer, ): bool {.importc: "QActionGroup_isEnabled".}
proc fcQActionGroup_isVisible(self: pointer, ): bool {.importc: "QActionGroup_isVisible".}
proc fcQActionGroup_exclusionPolicy(self: pointer, ): cint {.importc: "QActionGroup_exclusionPolicy".}
proc fcQActionGroup_setEnabled(self: pointer, enabled: bool): void {.importc: "QActionGroup_setEnabled".}
proc fcQActionGroup_setDisabled(self: pointer, b: bool): void {.importc: "QActionGroup_setDisabled".}
proc fcQActionGroup_setVisible(self: pointer, visible: bool): void {.importc: "QActionGroup_setVisible".}
proc fcQActionGroup_setExclusive(self: pointer, exclusive: bool): void {.importc: "QActionGroup_setExclusive".}
proc fcQActionGroup_setExclusionPolicy(self: pointer, policy: cint): void {.importc: "QActionGroup_setExclusionPolicy".}
proc fcQActionGroup_triggered(self: pointer, param1: pointer): void {.importc: "QActionGroup_triggered".}
proc fcQActionGroup_connect_triggered(self: pointer, slot: int) {.importc: "QActionGroup_connect_triggered".}
proc fcQActionGroup_hovered(self: pointer, param1: pointer): void {.importc: "QActionGroup_hovered".}
proc fcQActionGroup_connect_hovered(self: pointer, slot: int) {.importc: "QActionGroup_connect_hovered".}
proc fcQActionGroup_tr2(s: cstring, c: cstring): struct_miqt_string {.importc: "QActionGroup_tr2".}
proc fcQActionGroup_tr3(s: cstring, c: cstring, n: cint): struct_miqt_string {.importc: "QActionGroup_tr3".}
proc fQActionGroup_virtualbase_event(self: pointer, event: pointer): bool{.importc: "QActionGroup_virtualbase_event".}
proc fcQActionGroup_override_virtual_event(self: pointer, slot: int) {.importc: "QActionGroup_override_virtual_event".}
proc fQActionGroup_virtualbase_eventFilter(self: pointer, watched: pointer, event: pointer): bool{.importc: "QActionGroup_virtualbase_eventFilter".}
proc fcQActionGroup_override_virtual_eventFilter(self: pointer, slot: int) {.importc: "QActionGroup_override_virtual_eventFilter".}
proc fQActionGroup_virtualbase_timerEvent(self: pointer, event: pointer): void{.importc: "QActionGroup_virtualbase_timerEvent".}
proc fcQActionGroup_override_virtual_timerEvent(self: pointer, slot: int) {.importc: "QActionGroup_override_virtual_timerEvent".}
proc fQActionGroup_virtualbase_childEvent(self: pointer, event: pointer): void{.importc: "QActionGroup_virtualbase_childEvent".}
proc fcQActionGroup_override_virtual_childEvent(self: pointer, slot: int) {.importc: "QActionGroup_override_virtual_childEvent".}
proc fQActionGroup_virtualbase_customEvent(self: pointer, event: pointer): void{.importc: "QActionGroup_virtualbase_customEvent".}
proc fcQActionGroup_override_virtual_customEvent(self: pointer, slot: int) {.importc: "QActionGroup_override_virtual_customEvent".}
proc fQActionGroup_virtualbase_connectNotify(self: pointer, signal: pointer): void{.importc: "QActionGroup_virtualbase_connectNotify".}
proc fcQActionGroup_override_virtual_connectNotify(self: pointer, slot: int) {.importc: "QActionGroup_override_virtual_connectNotify".}
proc fQActionGroup_virtualbase_disconnectNotify(self: pointer, signal: pointer): void{.importc: "QActionGroup_virtualbase_disconnectNotify".}
proc fcQActionGroup_override_virtual_disconnectNotify(self: pointer, slot: int) {.importc: "QActionGroup_override_virtual_disconnectNotify".}
proc fcQActionGroup_delete(self: pointer) {.importc: "QActionGroup_delete".}


func init*(T: type gen_qactiongroup_types.QActionGroup, h: ptr cQActionGroup): gen_qactiongroup_types.QActionGroup =
  T(h: h)
proc create*(T: type gen_qactiongroup_types.QActionGroup, parent: gen_qobject_types.QObject): gen_qactiongroup_types.QActionGroup =
  gen_qactiongroup_types.QActionGroup.init(fcQActionGroup_new(parent.h))

proc metaObject*(self: gen_qactiongroup_types.QActionGroup, ): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQActionGroup_metaObject(self.h))

proc metacast*(self: gen_qactiongroup_types.QActionGroup, param1: cstring): pointer =
  fcQActionGroup_metacast(self.h, param1)

proc tr*(_: type gen_qactiongroup_types.QActionGroup, s: cstring): string =
  let v_ms = fcQActionGroup_tr(s)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc addAction*(self: gen_qactiongroup_types.QActionGroup, a: gen_qaction_types.QAction): gen_qaction_types.QAction =
  gen_qaction_types.QAction(h: fcQActionGroup_addAction(self.h, a.h))

proc addAction*(self: gen_qactiongroup_types.QActionGroup, text: string): gen_qaction_types.QAction =
  gen_qaction_types.QAction(h: fcQActionGroup_addActionWithText(self.h, struct_miqt_string(data: text, len: csize_t(len(text)))))

proc addAction*(self: gen_qactiongroup_types.QActionGroup, icon: gen_qicon_types.QIcon, text: string): gen_qaction_types.QAction =
  gen_qaction_types.QAction(h: fcQActionGroup_addAction2(self.h, icon.h, struct_miqt_string(data: text, len: csize_t(len(text)))))

proc removeAction*(self: gen_qactiongroup_types.QActionGroup, a: gen_qaction_types.QAction): void =
  fcQActionGroup_removeAction(self.h, a.h)

proc actions*(self: gen_qactiongroup_types.QActionGroup, ): seq[gen_qaction_types.QAction] =
  var v_ma = fcQActionGroup_actions(self.h)
  var vx_ret = newSeq[gen_qaction_types.QAction](int(v_ma.len))
  let v_outCast = cast[ptr UncheckedArray[pointer]](v_ma.data)
  for i in 0 ..< v_ma.len:
    vx_ret[i] = gen_qaction_types.QAction(h: v_outCast[i])
  vx_ret

proc checkedAction*(self: gen_qactiongroup_types.QActionGroup, ): gen_qaction_types.QAction =
  gen_qaction_types.QAction(h: fcQActionGroup_checkedAction(self.h))

proc isExclusive*(self: gen_qactiongroup_types.QActionGroup, ): bool =
  fcQActionGroup_isExclusive(self.h)

proc isEnabled*(self: gen_qactiongroup_types.QActionGroup, ): bool =
  fcQActionGroup_isEnabled(self.h)

proc isVisible*(self: gen_qactiongroup_types.QActionGroup, ): bool =
  fcQActionGroup_isVisible(self.h)

proc exclusionPolicy*(self: gen_qactiongroup_types.QActionGroup, ): cint =
  cint(fcQActionGroup_exclusionPolicy(self.h))

proc setEnabled*(self: gen_qactiongroup_types.QActionGroup, enabled: bool): void =
  fcQActionGroup_setEnabled(self.h, enabled)

proc setDisabled*(self: gen_qactiongroup_types.QActionGroup, b: bool): void =
  fcQActionGroup_setDisabled(self.h, b)

proc setVisible*(self: gen_qactiongroup_types.QActionGroup, visible: bool): void =
  fcQActionGroup_setVisible(self.h, visible)

proc setExclusive*(self: gen_qactiongroup_types.QActionGroup, exclusive: bool): void =
  fcQActionGroup_setExclusive(self.h, exclusive)

proc setExclusionPolicy*(self: gen_qactiongroup_types.QActionGroup, policy: cint): void =
  fcQActionGroup_setExclusionPolicy(self.h, cint(policy))

proc triggered*(self: gen_qactiongroup_types.QActionGroup, param1: gen_qaction_types.QAction): void =
  fcQActionGroup_triggered(self.h, param1.h)

type QActionGrouptriggeredSlot* = proc(param1: gen_qaction_types.QAction)
proc miqt_exec_callback_QActionGroup_triggered(slot: int, param1: pointer) {.exportc.} =
  let nimfunc = cast[ptr QActionGrouptriggeredSlot](cast[pointer](slot))
  let slotval1 = gen_qaction_types.QAction(h: param1)

  nimfunc[](slotval1)

proc ontriggered*(self: gen_qactiongroup_types.QActionGroup, slot: QActionGrouptriggeredSlot) =
  var tmp = new QActionGrouptriggeredSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQActionGroup_connect_triggered(self.h, cast[int](addr tmp[]))

proc hovered*(self: gen_qactiongroup_types.QActionGroup, param1: gen_qaction_types.QAction): void =
  fcQActionGroup_hovered(self.h, param1.h)

type QActionGrouphoveredSlot* = proc(param1: gen_qaction_types.QAction)
proc miqt_exec_callback_QActionGroup_hovered(slot: int, param1: pointer) {.exportc.} =
  let nimfunc = cast[ptr QActionGrouphoveredSlot](cast[pointer](slot))
  let slotval1 = gen_qaction_types.QAction(h: param1)

  nimfunc[](slotval1)

proc onhovered*(self: gen_qactiongroup_types.QActionGroup, slot: QActionGrouphoveredSlot) =
  var tmp = new QActionGrouphoveredSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQActionGroup_connect_hovered(self.h, cast[int](addr tmp[]))

proc tr*(_: type gen_qactiongroup_types.QActionGroup, s: cstring, c: cstring): string =
  let v_ms = fcQActionGroup_tr2(s, c)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc tr*(_: type gen_qactiongroup_types.QActionGroup, s: cstring, c: cstring, n: cint): string =
  let v_ms = fcQActionGroup_tr3(s, c, n)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc QActionGroupevent*(self: gen_qactiongroup_types.QActionGroup, event: gen_qcoreevent_types.QEvent): bool =
  fQActionGroup_virtualbase_event(self.h, event.h)

type QActionGroupeventProc* = proc(event: gen_qcoreevent_types.QEvent): bool
proc onevent*(self: gen_qactiongroup_types.QActionGroup, slot: QActionGroupeventProc) =
  # TODO check subclass
  var tmp = new QActionGroupeventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQActionGroup_override_virtual_event(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QActionGroup_event(self: ptr cQActionGroup, slot: int, event: pointer): bool {.exportc: "miqt_exec_callback_QActionGroup_event ".} =
  var nimfunc = cast[ptr QActionGroupeventProc](cast[pointer](slot))
  let slotval1 = gen_qcoreevent_types.QEvent(h: event)


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn
proc QActionGroupeventFilter*(self: gen_qactiongroup_types.QActionGroup, watched: gen_qobject_types.QObject, event: gen_qcoreevent_types.QEvent): bool =
  fQActionGroup_virtualbase_eventFilter(self.h, watched.h, event.h)

type QActionGroupeventFilterProc* = proc(watched: gen_qobject_types.QObject, event: gen_qcoreevent_types.QEvent): bool
proc oneventFilter*(self: gen_qactiongroup_types.QActionGroup, slot: QActionGroupeventFilterProc) =
  # TODO check subclass
  var tmp = new QActionGroupeventFilterProc
  tmp[] = slot
  GC_ref(tmp)
  fcQActionGroup_override_virtual_eventFilter(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QActionGroup_eventFilter(self: ptr cQActionGroup, slot: int, watched: pointer, event: pointer): bool {.exportc: "miqt_exec_callback_QActionGroup_eventFilter ".} =
  var nimfunc = cast[ptr QActionGroupeventFilterProc](cast[pointer](slot))
  let slotval1 = gen_qobject_types.QObject(h: watched)

  let slotval2 = gen_qcoreevent_types.QEvent(h: event)


  let virtualReturn = nimfunc[](slotval1, slotval2 )

  virtualReturn
proc QActionGrouptimerEvent*(self: gen_qactiongroup_types.QActionGroup, event: gen_qcoreevent_types.QTimerEvent): void =
  fQActionGroup_virtualbase_timerEvent(self.h, event.h)

type QActionGrouptimerEventProc* = proc(event: gen_qcoreevent_types.QTimerEvent): void
proc ontimerEvent*(self: gen_qactiongroup_types.QActionGroup, slot: QActionGrouptimerEventProc) =
  # TODO check subclass
  var tmp = new QActionGrouptimerEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQActionGroup_override_virtual_timerEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QActionGroup_timerEvent(self: ptr cQActionGroup, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QActionGroup_timerEvent ".} =
  var nimfunc = cast[ptr QActionGrouptimerEventProc](cast[pointer](slot))
  let slotval1 = gen_qcoreevent_types.QTimerEvent(h: event)


  nimfunc[](slotval1)
proc QActionGroupchildEvent*(self: gen_qactiongroup_types.QActionGroup, event: gen_qcoreevent_types.QChildEvent): void =
  fQActionGroup_virtualbase_childEvent(self.h, event.h)

type QActionGroupchildEventProc* = proc(event: gen_qcoreevent_types.QChildEvent): void
proc onchildEvent*(self: gen_qactiongroup_types.QActionGroup, slot: QActionGroupchildEventProc) =
  # TODO check subclass
  var tmp = new QActionGroupchildEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQActionGroup_override_virtual_childEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QActionGroup_childEvent(self: ptr cQActionGroup, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QActionGroup_childEvent ".} =
  var nimfunc = cast[ptr QActionGroupchildEventProc](cast[pointer](slot))
  let slotval1 = gen_qcoreevent_types.QChildEvent(h: event)


  nimfunc[](slotval1)
proc QActionGroupcustomEvent*(self: gen_qactiongroup_types.QActionGroup, event: gen_qcoreevent_types.QEvent): void =
  fQActionGroup_virtualbase_customEvent(self.h, event.h)

type QActionGroupcustomEventProc* = proc(event: gen_qcoreevent_types.QEvent): void
proc oncustomEvent*(self: gen_qactiongroup_types.QActionGroup, slot: QActionGroupcustomEventProc) =
  # TODO check subclass
  var tmp = new QActionGroupcustomEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQActionGroup_override_virtual_customEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QActionGroup_customEvent(self: ptr cQActionGroup, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QActionGroup_customEvent ".} =
  var nimfunc = cast[ptr QActionGroupcustomEventProc](cast[pointer](slot))
  let slotval1 = gen_qcoreevent_types.QEvent(h: event)


  nimfunc[](slotval1)
proc QActionGroupconnectNotify*(self: gen_qactiongroup_types.QActionGroup, signal: gen_qmetaobject_types.QMetaMethod): void =
  fQActionGroup_virtualbase_connectNotify(self.h, signal.h)

type QActionGroupconnectNotifyProc* = proc(signal: gen_qmetaobject_types.QMetaMethod): void
proc onconnectNotify*(self: gen_qactiongroup_types.QActionGroup, slot: QActionGroupconnectNotifyProc) =
  # TODO check subclass
  var tmp = new QActionGroupconnectNotifyProc
  tmp[] = slot
  GC_ref(tmp)
  fcQActionGroup_override_virtual_connectNotify(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QActionGroup_connectNotify(self: ptr cQActionGroup, slot: int, signal: pointer): void {.exportc: "miqt_exec_callback_QActionGroup_connectNotify ".} =
  var nimfunc = cast[ptr QActionGroupconnectNotifyProc](cast[pointer](slot))
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal)


  nimfunc[](slotval1)
proc QActionGroupdisconnectNotify*(self: gen_qactiongroup_types.QActionGroup, signal: gen_qmetaobject_types.QMetaMethod): void =
  fQActionGroup_virtualbase_disconnectNotify(self.h, signal.h)

type QActionGroupdisconnectNotifyProc* = proc(signal: gen_qmetaobject_types.QMetaMethod): void
proc ondisconnectNotify*(self: gen_qactiongroup_types.QActionGroup, slot: QActionGroupdisconnectNotifyProc) =
  # TODO check subclass
  var tmp = new QActionGroupdisconnectNotifyProc
  tmp[] = slot
  GC_ref(tmp)
  fcQActionGroup_override_virtual_disconnectNotify(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QActionGroup_disconnectNotify(self: ptr cQActionGroup, slot: int, signal: pointer): void {.exportc: "miqt_exec_callback_QActionGroup_disconnectNotify ".} =
  var nimfunc = cast[ptr QActionGroupdisconnectNotifyProc](cast[pointer](slot))
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal)


  nimfunc[](slotval1)
proc delete*(self: gen_qactiongroup_types.QActionGroup) =
  fcQActionGroup_delete(self.h)
