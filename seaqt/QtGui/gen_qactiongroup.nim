import ./Qt6Gui_libs

{.push raises: [].}

from system/ansi_c import c_free, c_malloc

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

const cflags = gorge("pkg-config --cflags Qt6Gui") & " -fPIC"
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

proc fcQActionGroup_metaObject(self: pointer): pointer {.importc: "QActionGroup_metaObject".}
proc fcQActionGroup_metacast(self: pointer, param1: cstring): pointer {.importc: "QActionGroup_metacast".}
proc fcQActionGroup_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.importc: "QActionGroup_metacall".}
proc fcQActionGroup_tr(s: cstring): struct_miqt_string {.importc: "QActionGroup_tr".}
proc fcQActionGroup_addAction(self: pointer, a: pointer): pointer {.importc: "QActionGroup_addAction".}
proc fcQActionGroup_addActionWithText(self: pointer, text: struct_miqt_string): pointer {.importc: "QActionGroup_addActionWithText".}
proc fcQActionGroup_addAction2(self: pointer, icon: pointer, text: struct_miqt_string): pointer {.importc: "QActionGroup_addAction2".}
proc fcQActionGroup_removeAction(self: pointer, a: pointer): void {.importc: "QActionGroup_removeAction".}
proc fcQActionGroup_actions(self: pointer): struct_miqt_array {.importc: "QActionGroup_actions".}
proc fcQActionGroup_checkedAction(self: pointer): pointer {.importc: "QActionGroup_checkedAction".}
proc fcQActionGroup_isExclusive(self: pointer): bool {.importc: "QActionGroup_isExclusive".}
proc fcQActionGroup_isEnabled(self: pointer): bool {.importc: "QActionGroup_isEnabled".}
proc fcQActionGroup_isVisible(self: pointer): bool {.importc: "QActionGroup_isVisible".}
proc fcQActionGroup_exclusionPolicy(self: pointer): cint {.importc: "QActionGroup_exclusionPolicy".}
proc fcQActionGroup_setEnabled(self: pointer, enabled: bool): void {.importc: "QActionGroup_setEnabled".}
proc fcQActionGroup_setDisabled(self: pointer, b: bool): void {.importc: "QActionGroup_setDisabled".}
proc fcQActionGroup_setVisible(self: pointer, visible: bool): void {.importc: "QActionGroup_setVisible".}
proc fcQActionGroup_setExclusive(self: pointer, exclusive: bool): void {.importc: "QActionGroup_setExclusive".}
proc fcQActionGroup_setExclusionPolicy(self: pointer, policy: cint): void {.importc: "QActionGroup_setExclusionPolicy".}
proc fcQActionGroup_triggered(self: pointer, param1: pointer): void {.importc: "QActionGroup_triggered".}
proc fcQActionGroup_connect_triggered(self: pointer, slot: int, callback: proc (slot: int, param1: pointer) {.cdecl.}, release: proc(slot: int) {.cdecl.}) {.importc: "QActionGroup_connect_triggered".}
proc fcQActionGroup_hovered(self: pointer, param1: pointer): void {.importc: "QActionGroup_hovered".}
proc fcQActionGroup_connect_hovered(self: pointer, slot: int, callback: proc (slot: int, param1: pointer) {.cdecl.}, release: proc(slot: int) {.cdecl.}) {.importc: "QActionGroup_connect_hovered".}
proc fcQActionGroup_tr2(s: cstring, c: cstring): struct_miqt_string {.importc: "QActionGroup_tr2".}
proc fcQActionGroup_tr3(s: cstring, c: cstring, n: cint): struct_miqt_string {.importc: "QActionGroup_tr3".}
proc fcQActionGroup_vtbl(self: pointer): pointer {.importc: "QActionGroup_vtbl".}
proc fcQActionGroup_vdata(self: pointer): pointer {.importc: "QActionGroup_vdata".}
type cQActionGroupVTable {.pure.} = object
  destructor*: proc(self: pointer) {.cdecl, raises:[], gcsafe.}
  metaObject*: proc(self: pointer): pointer {.cdecl, raises: [], gcsafe.}
  metacast*: proc(self: pointer, param1: cstring): pointer {.cdecl, raises: [], gcsafe.}
  metacall*: proc(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.cdecl, raises: [], gcsafe.}
  event*: proc(self: pointer, event: pointer): bool {.cdecl, raises: [], gcsafe.}
  eventFilter*: proc(self: pointer, watched: pointer, event: pointer): bool {.cdecl, raises: [], gcsafe.}
  timerEvent*: proc(self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  childEvent*: proc(self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  customEvent*: proc(self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  connectNotify*: proc(self: pointer, signal: pointer): void {.cdecl, raises: [], gcsafe.}
  disconnectNotify*: proc(self: pointer, signal: pointer): void {.cdecl, raises: [], gcsafe.}
proc fcQActionGroup_virtualbase_metaObject(self: pointer): pointer {.importc: "QActionGroup_virtualbase_metaObject".}
proc fcQActionGroup_virtualbase_metacast(self: pointer, param1: cstring): pointer {.importc: "QActionGroup_virtualbase_metacast".}
proc fcQActionGroup_virtualbase_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.importc: "QActionGroup_virtualbase_metacall".}
proc fcQActionGroup_virtualbase_event(self: pointer, event: pointer): bool {.importc: "QActionGroup_virtualbase_event".}
proc fcQActionGroup_virtualbase_eventFilter(self: pointer, watched: pointer, event: pointer): bool {.importc: "QActionGroup_virtualbase_eventFilter".}
proc fcQActionGroup_virtualbase_timerEvent(self: pointer, event: pointer): void {.importc: "QActionGroup_virtualbase_timerEvent".}
proc fcQActionGroup_virtualbase_childEvent(self: pointer, event: pointer): void {.importc: "QActionGroup_virtualbase_childEvent".}
proc fcQActionGroup_virtualbase_customEvent(self: pointer, event: pointer): void {.importc: "QActionGroup_virtualbase_customEvent".}
proc fcQActionGroup_virtualbase_connectNotify(self: pointer, signal: pointer): void {.importc: "QActionGroup_virtualbase_connectNotify".}
proc fcQActionGroup_virtualbase_disconnectNotify(self: pointer, signal: pointer): void {.importc: "QActionGroup_virtualbase_disconnectNotify".}
proc fcQActionGroup_protectedbase_sender(self: pointer): pointer {.importc: "QActionGroup_protectedbase_sender".}
proc fcQActionGroup_protectedbase_senderSignalIndex(self: pointer): cint {.importc: "QActionGroup_protectedbase_senderSignalIndex".}
proc fcQActionGroup_protectedbase_receivers(self: pointer, signal: cstring): cint {.importc: "QActionGroup_protectedbase_receivers".}
proc fcQActionGroup_protectedbase_isSignalConnected(self: pointer, signal: pointer): bool {.importc: "QActionGroup_protectedbase_isSignalConnected".}
proc fcQActionGroup_new(vtbl, vdata: pointer, parent: pointer): ptr cQActionGroup {.importc: "QActionGroup_new".}
proc fcQActionGroup_staticMetaObject(): pointer {.importc: "QActionGroup_staticMetaObject".}

proc metaObject*(self: gen_qactiongroup_types.QActionGroup): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQActionGroup_metaObject(self.h), owned: false)

proc metacast*(self: gen_qactiongroup_types.QActionGroup, param1: cstring): pointer =
  fcQActionGroup_metacast(self.h, param1)

proc metacall*(self: gen_qactiongroup_types.QActionGroup, param1: cint, param2: cint, param3: pointer): cint =
  fcQActionGroup_metacall(self.h, cint(param1), param2, param3)

proc tr*(_: type gen_qactiongroup_types.QActionGroup, s: cstring): string =
  let v_ms = fcQActionGroup_tr(s)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc addAction*(self: gen_qactiongroup_types.QActionGroup, a: gen_qaction_types.QAction): gen_qaction_types.QAction =
  gen_qaction_types.QAction(h: fcQActionGroup_addAction(self.h, a.h), owned: false)

proc addAction*(self: gen_qactiongroup_types.QActionGroup, text: string): gen_qaction_types.QAction =
  gen_qaction_types.QAction(h: fcQActionGroup_addActionWithText(self.h, struct_miqt_string(data: text, len: csize_t(len(text)))), owned: false)

proc addAction*(self: gen_qactiongroup_types.QActionGroup, icon: gen_qicon_types.QIcon, text: string): gen_qaction_types.QAction =
  gen_qaction_types.QAction(h: fcQActionGroup_addAction2(self.h, icon.h, struct_miqt_string(data: text, len: csize_t(len(text)))), owned: false)

proc removeAction*(self: gen_qactiongroup_types.QActionGroup, a: gen_qaction_types.QAction): void =
  fcQActionGroup_removeAction(self.h, a.h)

proc actions*(self: gen_qactiongroup_types.QActionGroup): seq[gen_qaction_types.QAction] =
  var v_ma = fcQActionGroup_actions(self.h)
  var vx_ret = newSeq[gen_qaction_types.QAction](int(v_ma.len))
  let v_outCast = cast[ptr UncheckedArray[pointer]](v_ma.data)
  for i in 0 ..< v_ma.len:
    vx_ret[i] = gen_qaction_types.QAction(h: v_outCast[i], owned: false)
  c_free(v_ma.data)
  vx_ret

proc checkedAction*(self: gen_qactiongroup_types.QActionGroup): gen_qaction_types.QAction =
  gen_qaction_types.QAction(h: fcQActionGroup_checkedAction(self.h), owned: false)

proc isExclusive*(self: gen_qactiongroup_types.QActionGroup): bool =
  fcQActionGroup_isExclusive(self.h)

proc isEnabled*(self: gen_qactiongroup_types.QActionGroup): bool =
  fcQActionGroup_isEnabled(self.h)

proc isVisible*(self: gen_qactiongroup_types.QActionGroup): bool =
  fcQActionGroup_isVisible(self.h)

proc exclusionPolicy*(self: gen_qactiongroup_types.QActionGroup): cint =
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
proc cQActionGroup_slot_callback_triggered(slot: int, param1: pointer) {.cdecl.} =
  let nimfunc = cast[ptr QActionGrouptriggeredSlot](cast[pointer](slot))
  let slotval1 = gen_qaction_types.QAction(h: param1, owned: false)

  nimfunc[](slotval1)

proc cQActionGroup_slot_callback_triggered_release(slot: int) {.cdecl.} =
  let nimfunc = cast[ref QActionGrouptriggeredSlot](cast[pointer](slot))
  GC_unref(nimfunc)

proc ontriggered*(self: gen_qactiongroup_types.QActionGroup, slot: QActionGrouptriggeredSlot) =
  var tmp = new QActionGrouptriggeredSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQActionGroup_connect_triggered(self.h, cast[int](addr tmp[]), cQActionGroup_slot_callback_triggered, cQActionGroup_slot_callback_triggered_release)

proc hovered*(self: gen_qactiongroup_types.QActionGroup, param1: gen_qaction_types.QAction): void =
  fcQActionGroup_hovered(self.h, param1.h)

type QActionGrouphoveredSlot* = proc(param1: gen_qaction_types.QAction)
proc cQActionGroup_slot_callback_hovered(slot: int, param1: pointer) {.cdecl.} =
  let nimfunc = cast[ptr QActionGrouphoveredSlot](cast[pointer](slot))
  let slotval1 = gen_qaction_types.QAction(h: param1, owned: false)

  nimfunc[](slotval1)

proc cQActionGroup_slot_callback_hovered_release(slot: int) {.cdecl.} =
  let nimfunc = cast[ref QActionGrouphoveredSlot](cast[pointer](slot))
  GC_unref(nimfunc)

proc onhovered*(self: gen_qactiongroup_types.QActionGroup, slot: QActionGrouphoveredSlot) =
  var tmp = new QActionGrouphoveredSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQActionGroup_connect_hovered(self.h, cast[int](addr tmp[]), cQActionGroup_slot_callback_hovered, cQActionGroup_slot_callback_hovered_release)

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

type QActionGroupmetaObjectProc* = proc(self: QActionGroup): gen_qobjectdefs_types.QMetaObject {.raises: [], gcsafe.}
type QActionGroupmetacastProc* = proc(self: QActionGroup, param1: cstring): pointer {.raises: [], gcsafe.}
type QActionGroupmetacallProc* = proc(self: QActionGroup, param1: cint, param2: cint, param3: pointer): cint {.raises: [], gcsafe.}
type QActionGroupeventProc* = proc(self: QActionGroup, event: gen_qcoreevent_types.QEvent): bool {.raises: [], gcsafe.}
type QActionGroupeventFilterProc* = proc(self: QActionGroup, watched: gen_qobject_types.QObject, event: gen_qcoreevent_types.QEvent): bool {.raises: [], gcsafe.}
type QActionGrouptimerEventProc* = proc(self: QActionGroup, event: gen_qcoreevent_types.QTimerEvent): void {.raises: [], gcsafe.}
type QActionGroupchildEventProc* = proc(self: QActionGroup, event: gen_qcoreevent_types.QChildEvent): void {.raises: [], gcsafe.}
type QActionGroupcustomEventProc* = proc(self: QActionGroup, event: gen_qcoreevent_types.QEvent): void {.raises: [], gcsafe.}
type QActionGroupconnectNotifyProc* = proc(self: QActionGroup, signal: gen_qmetaobject_types.QMetaMethod): void {.raises: [], gcsafe.}
type QActionGroupdisconnectNotifyProc* = proc(self: QActionGroup, signal: gen_qmetaobject_types.QMetaMethod): void {.raises: [], gcsafe.}
type QActionGroupVTable* {.inheritable, pure.} = object
  vtbl: cQActionGroupVTable
  metaObject*: QActionGroupmetaObjectProc
  metacast*: QActionGroupmetacastProc
  metacall*: QActionGroupmetacallProc
  event*: QActionGroupeventProc
  eventFilter*: QActionGroupeventFilterProc
  timerEvent*: QActionGrouptimerEventProc
  childEvent*: QActionGroupchildEventProc
  customEvent*: QActionGroupcustomEventProc
  connectNotify*: QActionGroupconnectNotifyProc
  disconnectNotify*: QActionGroupdisconnectNotifyProc
proc QActionGroupmetaObject*(self: gen_qactiongroup_types.QActionGroup): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQActionGroup_virtualbase_metaObject(self.h), owned: false)

proc cQActionGroup_vtable_callback_metaObject(self: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QActionGroupVTable](fcQActionGroup_vdata(self))
  let self = QActionGroup(h: self)
  var virtualReturn = vtbl[].metaObject(self)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc QActionGroupmetacast*(self: gen_qactiongroup_types.QActionGroup, param1: cstring): pointer =
  fcQActionGroup_virtualbase_metacast(self.h, param1)

proc cQActionGroup_vtable_callback_metacast(self: pointer, param1: cstring): pointer {.cdecl.} =
  let vtbl = cast[ptr QActionGroupVTable](fcQActionGroup_vdata(self))
  let self = QActionGroup(h: self)
  let slotval1 = (param1)
  var virtualReturn = vtbl[].metacast(self, slotval1)
  virtualReturn

proc QActionGroupmetacall*(self: gen_qactiongroup_types.QActionGroup, param1: cint, param2: cint, param3: pointer): cint =
  fcQActionGroup_virtualbase_metacall(self.h, cint(param1), param2, param3)

proc cQActionGroup_vtable_callback_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.cdecl.} =
  let vtbl = cast[ptr QActionGroupVTable](fcQActionGroup_vdata(self))
  let self = QActionGroup(h: self)
  let slotval1 = cint(param1)
  let slotval2 = param2
  let slotval3 = param3
  var virtualReturn = vtbl[].metacall(self, slotval1, slotval2, slotval3)
  virtualReturn

proc QActionGroupevent*(self: gen_qactiongroup_types.QActionGroup, event: gen_qcoreevent_types.QEvent): bool =
  fcQActionGroup_virtualbase_event(self.h, event.h)

proc cQActionGroup_vtable_callback_event(self: pointer, event: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QActionGroupVTable](fcQActionGroup_vdata(self))
  let self = QActionGroup(h: self)
  let slotval1 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  var virtualReturn = vtbl[].event(self, slotval1)
  virtualReturn

proc QActionGroupeventFilter*(self: gen_qactiongroup_types.QActionGroup, watched: gen_qobject_types.QObject, event: gen_qcoreevent_types.QEvent): bool =
  fcQActionGroup_virtualbase_eventFilter(self.h, watched.h, event.h)

proc cQActionGroup_vtable_callback_eventFilter(self: pointer, watched: pointer, event: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QActionGroupVTable](fcQActionGroup_vdata(self))
  let self = QActionGroup(h: self)
  let slotval1 = gen_qobject_types.QObject(h: watched, owned: false)
  let slotval2 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  var virtualReturn = vtbl[].eventFilter(self, slotval1, slotval2)
  virtualReturn

proc QActionGrouptimerEvent*(self: gen_qactiongroup_types.QActionGroup, event: gen_qcoreevent_types.QTimerEvent): void =
  fcQActionGroup_virtualbase_timerEvent(self.h, event.h)

proc cQActionGroup_vtable_callback_timerEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QActionGroupVTable](fcQActionGroup_vdata(self))
  let self = QActionGroup(h: self)
  let slotval1 = gen_qcoreevent_types.QTimerEvent(h: event, owned: false)
  vtbl[].timerEvent(self, slotval1)

proc QActionGroupchildEvent*(self: gen_qactiongroup_types.QActionGroup, event: gen_qcoreevent_types.QChildEvent): void =
  fcQActionGroup_virtualbase_childEvent(self.h, event.h)

proc cQActionGroup_vtable_callback_childEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QActionGroupVTable](fcQActionGroup_vdata(self))
  let self = QActionGroup(h: self)
  let slotval1 = gen_qcoreevent_types.QChildEvent(h: event, owned: false)
  vtbl[].childEvent(self, slotval1)

proc QActionGroupcustomEvent*(self: gen_qactiongroup_types.QActionGroup, event: gen_qcoreevent_types.QEvent): void =
  fcQActionGroup_virtualbase_customEvent(self.h, event.h)

proc cQActionGroup_vtable_callback_customEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QActionGroupVTable](fcQActionGroup_vdata(self))
  let self = QActionGroup(h: self)
  let slotval1 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  vtbl[].customEvent(self, slotval1)

proc QActionGroupconnectNotify*(self: gen_qactiongroup_types.QActionGroup, signal: gen_qmetaobject_types.QMetaMethod): void =
  fcQActionGroup_virtualbase_connectNotify(self.h, signal.h)

proc cQActionGroup_vtable_callback_connectNotify(self: pointer, signal: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QActionGroupVTable](fcQActionGroup_vdata(self))
  let self = QActionGroup(h: self)
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal, owned: false)
  vtbl[].connectNotify(self, slotval1)

proc QActionGroupdisconnectNotify*(self: gen_qactiongroup_types.QActionGroup, signal: gen_qmetaobject_types.QMetaMethod): void =
  fcQActionGroup_virtualbase_disconnectNotify(self.h, signal.h)

proc cQActionGroup_vtable_callback_disconnectNotify(self: pointer, signal: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QActionGroupVTable](fcQActionGroup_vdata(self))
  let self = QActionGroup(h: self)
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal, owned: false)
  vtbl[].disconnectNotify(self, slotval1)

type VirtualQActionGroup* {.inheritable.} = ref object of QActionGroup
  vtbl*: cQActionGroupVTable
method metaObject*(self: VirtualQActionGroup): gen_qobjectdefs_types.QMetaObject {.base.} =
  QActionGroupmetaObject(self[])
proc cQActionGroup_method_callback_metaObject(self: pointer): pointer {.cdecl.} =
  let inst = cast[VirtualQActionGroup](fcQActionGroup_vdata(self))
  var virtualReturn = inst.metaObject()
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

method metacast*(self: VirtualQActionGroup, param1: cstring): pointer {.base.} =
  QActionGroupmetacast(self[], param1)
proc cQActionGroup_method_callback_metacast(self: pointer, param1: cstring): pointer {.cdecl.} =
  let inst = cast[VirtualQActionGroup](fcQActionGroup_vdata(self))
  let slotval1 = (param1)
  var virtualReturn = inst.metacast(slotval1)
  virtualReturn

method metacall*(self: VirtualQActionGroup, param1: cint, param2: cint, param3: pointer): cint {.base.} =
  QActionGroupmetacall(self[], param1, param2, param3)
proc cQActionGroup_method_callback_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.cdecl.} =
  let inst = cast[VirtualQActionGroup](fcQActionGroup_vdata(self))
  let slotval1 = cint(param1)
  let slotval2 = param2
  let slotval3 = param3
  var virtualReturn = inst.metacall(slotval1, slotval2, slotval3)
  virtualReturn

method event*(self: VirtualQActionGroup, event: gen_qcoreevent_types.QEvent): bool {.base.} =
  QActionGroupevent(self[], event)
proc cQActionGroup_method_callback_event(self: pointer, event: pointer): bool {.cdecl.} =
  let inst = cast[VirtualQActionGroup](fcQActionGroup_vdata(self))
  let slotval1 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  var virtualReturn = inst.event(slotval1)
  virtualReturn

method eventFilter*(self: VirtualQActionGroup, watched: gen_qobject_types.QObject, event: gen_qcoreevent_types.QEvent): bool {.base.} =
  QActionGroupeventFilter(self[], watched, event)
proc cQActionGroup_method_callback_eventFilter(self: pointer, watched: pointer, event: pointer): bool {.cdecl.} =
  let inst = cast[VirtualQActionGroup](fcQActionGroup_vdata(self))
  let slotval1 = gen_qobject_types.QObject(h: watched, owned: false)
  let slotval2 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  var virtualReturn = inst.eventFilter(slotval1, slotval2)
  virtualReturn

method timerEvent*(self: VirtualQActionGroup, event: gen_qcoreevent_types.QTimerEvent): void {.base.} =
  QActionGrouptimerEvent(self[], event)
proc cQActionGroup_method_callback_timerEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQActionGroup](fcQActionGroup_vdata(self))
  let slotval1 = gen_qcoreevent_types.QTimerEvent(h: event, owned: false)
  inst.timerEvent(slotval1)

method childEvent*(self: VirtualQActionGroup, event: gen_qcoreevent_types.QChildEvent): void {.base.} =
  QActionGroupchildEvent(self[], event)
proc cQActionGroup_method_callback_childEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQActionGroup](fcQActionGroup_vdata(self))
  let slotval1 = gen_qcoreevent_types.QChildEvent(h: event, owned: false)
  inst.childEvent(slotval1)

method customEvent*(self: VirtualQActionGroup, event: gen_qcoreevent_types.QEvent): void {.base.} =
  QActionGroupcustomEvent(self[], event)
proc cQActionGroup_method_callback_customEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQActionGroup](fcQActionGroup_vdata(self))
  let slotval1 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  inst.customEvent(slotval1)

method connectNotify*(self: VirtualQActionGroup, signal: gen_qmetaobject_types.QMetaMethod): void {.base.} =
  QActionGroupconnectNotify(self[], signal)
proc cQActionGroup_method_callback_connectNotify(self: pointer, signal: pointer): void {.cdecl.} =
  let inst = cast[VirtualQActionGroup](fcQActionGroup_vdata(self))
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal, owned: false)
  inst.connectNotify(slotval1)

method disconnectNotify*(self: VirtualQActionGroup, signal: gen_qmetaobject_types.QMetaMethod): void {.base.} =
  QActionGroupdisconnectNotify(self[], signal)
proc cQActionGroup_method_callback_disconnectNotify(self: pointer, signal: pointer): void {.cdecl.} =
  let inst = cast[VirtualQActionGroup](fcQActionGroup_vdata(self))
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal, owned: false)
  inst.disconnectNotify(slotval1)

proc sender*(self: gen_qactiongroup_types.QActionGroup): gen_qobject_types.QObject =
  gen_qobject_types.QObject(h: fcQActionGroup_protectedbase_sender(self.h), owned: false)

proc senderSignalIndex*(self: gen_qactiongroup_types.QActionGroup): cint =
  fcQActionGroup_protectedbase_senderSignalIndex(self.h)

proc receivers*(self: gen_qactiongroup_types.QActionGroup, signal: cstring): cint =
  fcQActionGroup_protectedbase_receivers(self.h, signal)

proc isSignalConnected*(self: gen_qactiongroup_types.QActionGroup, signal: gen_qmetaobject_types.QMetaMethod): bool =
  fcQActionGroup_protectedbase_isSignalConnected(self.h, signal.h)

proc create*(T: type gen_qactiongroup_types.QActionGroup,
    parent: gen_qobject_types.QObject,
    vtbl: ref QActionGroupVTable = nil): gen_qactiongroup_types.QActionGroup =
  let vtbl = if vtbl == nil: new QActionGroupVTable else: vtbl
  GC_ref(vtbl)
  vtbl[].vtbl.destructor = proc(self: pointer) {.cdecl.} =
    let vtbl = cast[ref QActionGroupVTable](fcQActionGroup_vdata(self))
    GC_unref(vtbl)
  if not isNil(vtbl[].metaObject):
    vtbl[].vtbl.metaObject = cQActionGroup_vtable_callback_metaObject
  if not isNil(vtbl[].metacast):
    vtbl[].vtbl.metacast = cQActionGroup_vtable_callback_metacast
  if not isNil(vtbl[].metacall):
    vtbl[].vtbl.metacall = cQActionGroup_vtable_callback_metacall
  if not isNil(vtbl[].event):
    vtbl[].vtbl.event = cQActionGroup_vtable_callback_event
  if not isNil(vtbl[].eventFilter):
    vtbl[].vtbl.eventFilter = cQActionGroup_vtable_callback_eventFilter
  if not isNil(vtbl[].timerEvent):
    vtbl[].vtbl.timerEvent = cQActionGroup_vtable_callback_timerEvent
  if not isNil(vtbl[].childEvent):
    vtbl[].vtbl.childEvent = cQActionGroup_vtable_callback_childEvent
  if not isNil(vtbl[].customEvent):
    vtbl[].vtbl.customEvent = cQActionGroup_vtable_callback_customEvent
  if not isNil(vtbl[].connectNotify):
    vtbl[].vtbl.connectNotify = cQActionGroup_vtable_callback_connectNotify
  if not isNil(vtbl[].disconnectNotify):
    vtbl[].vtbl.disconnectNotify = cQActionGroup_vtable_callback_disconnectNotify
  gen_qactiongroup_types.QActionGroup(h: fcQActionGroup_new(addr(vtbl[].vtbl), addr(vtbl[]), parent.h), owned: true)

const cQActionGroup_mvtbl = cQActionGroupVTable(
  destructor: proc(self: pointer) {.cdecl.} =
    let inst = cast[ptr typeof(VirtualQActionGroup()[])](self.fcQActionGroup_vtbl())
    inst[].h = nil
    inst[].owned = false,
  metaObject: cQActionGroup_method_callback_metaObject,
  metacast: cQActionGroup_method_callback_metacast,
  metacall: cQActionGroup_method_callback_metacall,
  event: cQActionGroup_method_callback_event,
  eventFilter: cQActionGroup_method_callback_eventFilter,
  timerEvent: cQActionGroup_method_callback_timerEvent,
  childEvent: cQActionGroup_method_callback_childEvent,
  customEvent: cQActionGroup_method_callback_customEvent,
  connectNotify: cQActionGroup_method_callback_connectNotify,
  disconnectNotify: cQActionGroup_method_callback_disconnectNotify,
)
proc create*(T: type gen_qactiongroup_types.QActionGroup,
    parent: gen_qobject_types.QObject,
    inst: VirtualQActionGroup) =
  if inst[].h != nil: delete(move(inst[]))
  inst[].h = fcQActionGroup_new(addr(cQActionGroup_mvtbl), addr(inst[]), parent.h)
  inst[].owned = true

proc staticMetaObject*(_: type gen_qactiongroup_types.QActionGroup): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQActionGroup_staticMetaObject())
