import ./qtgui_pkg

{.push raises: [].}

from system/ansi_c import c_free, c_malloc

type
  struct_miqt_string {.used.} = object
    len: csize_t
    data: pointer

  struct_miqt_array {.used.} = object
    len: csize_t
    data: pointer

  struct_miqt_map {.used.} = object
    len: csize_t
    keys: pointer
    values: pointer

  miqt_uintptr_t {.importc: "uintptr_t", header: "stdint.h", used.} = uint
  miqt_intptr_t {.importc: "intptr_t", header: "stdint.h", used.} = int

func fromBytes(T: type string, v: struct_miqt_string): string {.used.} =
  if v.len > 0:
    let len = cast[int](v.len)
    result = newString(len)
    when nimvm:
      let d = cast[ptr UncheckedArray[char]](v.data)
      for i in 0..<len:
        result[i] = d[i]
    else:
      copyMem(addr result[0], v.data, len)


{.compile("gen_qshortcut.cpp", QtGuiCFlags).}


import ./gen_qshortcut_types
export gen_qshortcut_types

import
  ../QtCore/gen_qcoreevent_types,
  ../QtCore/gen_qmetaobject_types,
  ../QtCore/gen_qobject,
  ../QtCore/gen_qobjectdefs_types,
  ./gen_qkeysequence_types
export
  gen_qcoreevent_types,
  gen_qmetaobject_types,
  gen_qobject,
  gen_qobjectdefs_types,
  gen_qkeysequence_types

type cQShortcut*{.exportc: "QShortcut", incompleteStruct.} = object

proc fcQShortcut_metaObject(self: pointer): pointer {.importc: "QShortcut_metaObject".}
proc fcQShortcut_metacast(self: pointer, param1: cstring): pointer {.importc: "QShortcut_metacast".}
proc fcQShortcut_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.importc: "QShortcut_metacall".}
proc fcQShortcut_tr(s: cstring): struct_miqt_string {.importc: "QShortcut_tr".}
proc fcQShortcut_setKey(self: pointer, key: pointer): void {.importc: "QShortcut_setKey".}
proc fcQShortcut_key(self: pointer): pointer {.importc: "QShortcut_key".}
proc fcQShortcut_setKeys(self: pointer, key: cint): void {.importc: "QShortcut_setKeys".}
proc fcQShortcut_setKeysWithKeys(self: pointer, keys: struct_miqt_array): void {.importc: "QShortcut_setKeysWithKeys".}
proc fcQShortcut_keys(self: pointer): struct_miqt_array {.importc: "QShortcut_keys".}
proc fcQShortcut_setEnabled(self: pointer, enable: bool): void {.importc: "QShortcut_setEnabled".}
proc fcQShortcut_isEnabled(self: pointer): bool {.importc: "QShortcut_isEnabled".}
proc fcQShortcut_setContext(self: pointer, context: cint): void {.importc: "QShortcut_setContext".}
proc fcQShortcut_context(self: pointer): cint {.importc: "QShortcut_context".}
proc fcQShortcut_setAutoRepeat(self: pointer, on: bool): void {.importc: "QShortcut_setAutoRepeat".}
proc fcQShortcut_autoRepeat(self: pointer): bool {.importc: "QShortcut_autoRepeat".}
proc fcQShortcut_id(self: pointer): cint {.importc: "QShortcut_id".}
proc fcQShortcut_setWhatsThis(self: pointer, text: struct_miqt_string): void {.importc: "QShortcut_setWhatsThis".}
proc fcQShortcut_whatsThis(self: pointer): struct_miqt_string {.importc: "QShortcut_whatsThis".}
proc fcQShortcut_activated(self: pointer): void {.importc: "QShortcut_activated".}
proc fcQShortcut_connect_activated(self: pointer, slot: int, callback: proc (slot: int) {.cdecl.}, release: proc(slot: int) {.cdecl.}) {.importc: "QShortcut_connect_activated".}
proc fcQShortcut_activatedAmbiguously(self: pointer): void {.importc: "QShortcut_activatedAmbiguously".}
proc fcQShortcut_connect_activatedAmbiguously(self: pointer, slot: int, callback: proc (slot: int) {.cdecl.}, release: proc(slot: int) {.cdecl.}) {.importc: "QShortcut_connect_activatedAmbiguously".}
proc fcQShortcut_tr2(s: cstring, c: cstring): struct_miqt_string {.importc: "QShortcut_tr2".}
proc fcQShortcut_tr3(s: cstring, c: cstring, n: cint): struct_miqt_string {.importc: "QShortcut_tr3".}
proc fcQShortcut_vtbl(self: pointer): pointer {.importc: "QShortcut_vtbl".}
proc fcQShortcut_vdata(self: pointer): pointer {.importc: "QShortcut_vdata".}
type cQShortcutVTable {.pure.} = object
  destructor*: proc(self: pointer) {.cdecl, raises:[], gcsafe.}
  metaObject*: proc(self: pointer): pointer {.cdecl, raises: [], gcsafe.}
  metacast*: proc(self: pointer, param1: cstring): pointer {.cdecl, raises: [], gcsafe.}
  metacall*: proc(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.cdecl, raises: [], gcsafe.}
  event*: proc(self: pointer, e: pointer): bool {.cdecl, raises: [], gcsafe.}
  eventFilter*: proc(self: pointer, watched: pointer, event: pointer): bool {.cdecl, raises: [], gcsafe.}
  timerEvent*: proc(self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  childEvent*: proc(self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  customEvent*: proc(self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  connectNotify*: proc(self: pointer, signal: pointer): void {.cdecl, raises: [], gcsafe.}
  disconnectNotify*: proc(self: pointer, signal: pointer): void {.cdecl, raises: [], gcsafe.}
proc fcQShortcut_virtualbase_metaObject(self: pointer): pointer {.importc: "QShortcut_virtualbase_metaObject".}
proc fcQShortcut_virtualbase_metacast(self: pointer, param1: cstring): pointer {.importc: "QShortcut_virtualbase_metacast".}
proc fcQShortcut_virtualbase_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.importc: "QShortcut_virtualbase_metacall".}
proc fcQShortcut_virtualbase_event(self: pointer, e: pointer): bool {.importc: "QShortcut_virtualbase_event".}
proc fcQShortcut_virtualbase_eventFilter(self: pointer, watched: pointer, event: pointer): bool {.importc: "QShortcut_virtualbase_eventFilter".}
proc fcQShortcut_virtualbase_timerEvent(self: pointer, event: pointer): void {.importc: "QShortcut_virtualbase_timerEvent".}
proc fcQShortcut_virtualbase_childEvent(self: pointer, event: pointer): void {.importc: "QShortcut_virtualbase_childEvent".}
proc fcQShortcut_virtualbase_customEvent(self: pointer, event: pointer): void {.importc: "QShortcut_virtualbase_customEvent".}
proc fcQShortcut_virtualbase_connectNotify(self: pointer, signal: pointer): void {.importc: "QShortcut_virtualbase_connectNotify".}
proc fcQShortcut_virtualbase_disconnectNotify(self: pointer, signal: pointer): void {.importc: "QShortcut_virtualbase_disconnectNotify".}
proc fcQShortcut_protectedbase_sender(self: pointer): pointer {.importc: "QShortcut_protectedbase_sender".}
proc fcQShortcut_protectedbase_senderSignalIndex(self: pointer): cint {.importc: "QShortcut_protectedbase_senderSignalIndex".}
proc fcQShortcut_protectedbase_receivers(self: pointer, signal: cstring): cint {.importc: "QShortcut_protectedbase_receivers".}
proc fcQShortcut_protectedbase_isSignalConnected(self: pointer, signal: pointer): bool {.importc: "QShortcut_protectedbase_isSignalConnected".}
proc fcQShortcut_new(vtbl, vdata: pointer, parent: pointer): ptr cQShortcut {.importc: "QShortcut_new".}
proc fcQShortcut_new2(vtbl, vdata: pointer, key: pointer, parent: pointer): ptr cQShortcut {.importc: "QShortcut_new2".}
proc fcQShortcut_new3(vtbl, vdata: pointer, key: cint, parent: pointer): ptr cQShortcut {.importc: "QShortcut_new3".}
proc fcQShortcut_new4(vtbl, vdata: pointer, key: pointer, parent: pointer, member: cstring): ptr cQShortcut {.importc: "QShortcut_new4".}
proc fcQShortcut_new5(vtbl, vdata: pointer, key: pointer, parent: pointer, member: cstring, ambiguousMember: cstring): ptr cQShortcut {.importc: "QShortcut_new5".}
proc fcQShortcut_new6(vtbl, vdata: pointer, key: pointer, parent: pointer, member: cstring, ambiguousMember: cstring, context: cint): ptr cQShortcut {.importc: "QShortcut_new6".}
proc fcQShortcut_new7(vtbl, vdata: pointer, key: cint, parent: pointer, member: cstring): ptr cQShortcut {.importc: "QShortcut_new7".}
proc fcQShortcut_new8(vtbl, vdata: pointer, key: cint, parent: pointer, member: cstring, ambiguousMember: cstring): ptr cQShortcut {.importc: "QShortcut_new8".}
proc fcQShortcut_new9(vtbl, vdata: pointer, key: cint, parent: pointer, member: cstring, ambiguousMember: cstring, context: cint): ptr cQShortcut {.importc: "QShortcut_new9".}
proc fcQShortcut_staticMetaObject(): pointer {.importc: "QShortcut_staticMetaObject".}

proc metaObject*(self: gen_qshortcut_types.QShortcut): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQShortcut_metaObject(self.h), owned: false)

proc metacast*(self: gen_qshortcut_types.QShortcut, param1: cstring): pointer =
  fcQShortcut_metacast(self.h, param1)

proc metacall*(self: gen_qshortcut_types.QShortcut, param1: cint, param2: cint, param3: pointer): cint =
  fcQShortcut_metacall(self.h, cint(param1), param2, param3)

proc tr*(_: type gen_qshortcut_types.QShortcut, s: cstring): string =
  let v_ms = fcQShortcut_tr(s)
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

proc setKey*(self: gen_qshortcut_types.QShortcut, key: gen_qkeysequence_types.QKeySequence): void =
  fcQShortcut_setKey(self.h, key.h)

proc key*(self: gen_qshortcut_types.QShortcut): gen_qkeysequence_types.QKeySequence =
  gen_qkeysequence_types.QKeySequence(h: fcQShortcut_key(self.h), owned: true)

proc setKeys*(self: gen_qshortcut_types.QShortcut, key: cint): void =
  fcQShortcut_setKeys(self.h, cint(key))

proc setKeys*(self: gen_qshortcut_types.QShortcut, keys: openArray[gen_qkeysequence_types.QKeySequence]): void =
  var keys_CArray = newSeq[pointer](len(keys))
  for i in 0..<len(keys):
    keys_CArray[i] = keys[i].h

  fcQShortcut_setKeysWithKeys(self.h, struct_miqt_array(len: csize_t(len(keys)), data: if len(keys) == 0: nil else: addr(keys_CArray[0])))

proc keys*(self: gen_qshortcut_types.QShortcut): seq[gen_qkeysequence_types.QKeySequence] =
  var v_ma = fcQShortcut_keys(self.h)
  var vx_ret = newSeq[gen_qkeysequence_types.QKeySequence](int(v_ma.len))
  let v_outCast = cast[ptr UncheckedArray[pointer]](v_ma.data)
  for i in 0 ..< v_ma.len:
    vx_ret[i] = gen_qkeysequence_types.QKeySequence(h: v_outCast[i], owned: true)
  c_free(v_ma.data)
  vx_ret

proc setEnabled*(self: gen_qshortcut_types.QShortcut, enable: bool): void =
  fcQShortcut_setEnabled(self.h, enable)

proc isEnabled*(self: gen_qshortcut_types.QShortcut): bool =
  fcQShortcut_isEnabled(self.h)

proc setContext*(self: gen_qshortcut_types.QShortcut, context: cint): void =
  fcQShortcut_setContext(self.h, cint(context))

proc context*(self: gen_qshortcut_types.QShortcut): cint =
  cint(fcQShortcut_context(self.h))

proc setAutoRepeat*(self: gen_qshortcut_types.QShortcut, on: bool): void =
  fcQShortcut_setAutoRepeat(self.h, on)

proc autoRepeat*(self: gen_qshortcut_types.QShortcut): bool =
  fcQShortcut_autoRepeat(self.h)

proc id*(self: gen_qshortcut_types.QShortcut): cint =
  fcQShortcut_id(self.h)

proc setWhatsThis*(self: gen_qshortcut_types.QShortcut, text: openArray[char]): void =
  fcQShortcut_setWhatsThis(self.h, struct_miqt_string(data: if len(text) > 0: addr text[0] else: nil, len: csize_t(len(text))))

proc whatsThis*(self: gen_qshortcut_types.QShortcut): string =
  let v_ms = fcQShortcut_whatsThis(self.h)
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

proc activated*(self: gen_qshortcut_types.QShortcut): void =
  fcQShortcut_activated(self.h)

type QShortcutactivatedSlot* = proc()
proc cQShortcut_slot_callback_activated(slot: int) {.cdecl.} =
  let nimfunc = cast[ptr QShortcutactivatedSlot](cast[pointer](slot))
  nimfunc[]()

proc cQShortcut_slot_callback_activated_release(slot: int) {.cdecl.} =
  let nimfunc = cast[ref QShortcutactivatedSlot](cast[pointer](slot))
  GC_unref(nimfunc)

proc onactivated*(self: gen_qshortcut_types.QShortcut, slot: QShortcutactivatedSlot) =
  var tmp = new QShortcutactivatedSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQShortcut_connect_activated(self.h, cast[int](addr tmp[]), cQShortcut_slot_callback_activated, cQShortcut_slot_callback_activated_release)

proc activatedAmbiguously*(self: gen_qshortcut_types.QShortcut): void =
  fcQShortcut_activatedAmbiguously(self.h)

type QShortcutactivatedAmbiguouslySlot* = proc()
proc cQShortcut_slot_callback_activatedAmbiguously(slot: int) {.cdecl.} =
  let nimfunc = cast[ptr QShortcutactivatedAmbiguouslySlot](cast[pointer](slot))
  nimfunc[]()

proc cQShortcut_slot_callback_activatedAmbiguously_release(slot: int) {.cdecl.} =
  let nimfunc = cast[ref QShortcutactivatedAmbiguouslySlot](cast[pointer](slot))
  GC_unref(nimfunc)

proc onactivatedAmbiguously*(self: gen_qshortcut_types.QShortcut, slot: QShortcutactivatedAmbiguouslySlot) =
  var tmp = new QShortcutactivatedAmbiguouslySlot
  tmp[] = slot
  GC_ref(tmp)
  fcQShortcut_connect_activatedAmbiguously(self.h, cast[int](addr tmp[]), cQShortcut_slot_callback_activatedAmbiguously, cQShortcut_slot_callback_activatedAmbiguously_release)

proc tr*(_: type gen_qshortcut_types.QShortcut, s: cstring, c: cstring): string =
  let v_ms = fcQShortcut_tr2(s, c)
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

proc tr*(_: type gen_qshortcut_types.QShortcut, s: cstring, c: cstring, n: cint): string =
  let v_ms = fcQShortcut_tr3(s, c, n)
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

type QShortcutmetaObjectProc* = proc(self: QShortcut): gen_qobjectdefs_types.QMetaObject {.raises: [], gcsafe.}
type QShortcutmetacastProc* = proc(self: QShortcut, param1: cstring): pointer {.raises: [], gcsafe.}
type QShortcutmetacallProc* = proc(self: QShortcut, param1: cint, param2: cint, param3: pointer): cint {.raises: [], gcsafe.}
type QShortcuteventProc* = proc(self: QShortcut, e: gen_qcoreevent_types.QEvent): bool {.raises: [], gcsafe.}
type QShortcuteventFilterProc* = proc(self: QShortcut, watched: gen_qobject_types.QObject, event: gen_qcoreevent_types.QEvent): bool {.raises: [], gcsafe.}
type QShortcuttimerEventProc* = proc(self: QShortcut, event: gen_qcoreevent_types.QTimerEvent): void {.raises: [], gcsafe.}
type QShortcutchildEventProc* = proc(self: QShortcut, event: gen_qcoreevent_types.QChildEvent): void {.raises: [], gcsafe.}
type QShortcutcustomEventProc* = proc(self: QShortcut, event: gen_qcoreevent_types.QEvent): void {.raises: [], gcsafe.}
type QShortcutconnectNotifyProc* = proc(self: QShortcut, signal: gen_qmetaobject_types.QMetaMethod): void {.raises: [], gcsafe.}
type QShortcutdisconnectNotifyProc* = proc(self: QShortcut, signal: gen_qmetaobject_types.QMetaMethod): void {.raises: [], gcsafe.}
type QShortcutVTable* {.inheritable, pure.} = object
  vtbl: cQShortcutVTable
  metaObject*: QShortcutmetaObjectProc
  metacast*: QShortcutmetacastProc
  metacall*: QShortcutmetacallProc
  event*: QShortcuteventProc
  eventFilter*: QShortcuteventFilterProc
  timerEvent*: QShortcuttimerEventProc
  childEvent*: QShortcutchildEventProc
  customEvent*: QShortcutcustomEventProc
  connectNotify*: QShortcutconnectNotifyProc
  disconnectNotify*: QShortcutdisconnectNotifyProc
proc QShortcutmetaObject*(self: gen_qshortcut_types.QShortcut): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQShortcut_virtualbase_metaObject(self.h), owned: false)

proc cQShortcut_vtable_callback_metaObject(self: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QShortcutVTable](fcQShortcut_vdata(self))
  let self = QShortcut(h: self)
  var virtualReturn = vtbl[].metaObject(self)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc QShortcutmetacast*(self: gen_qshortcut_types.QShortcut, param1: cstring): pointer =
  fcQShortcut_virtualbase_metacast(self.h, param1)

proc cQShortcut_vtable_callback_metacast(self: pointer, param1: cstring): pointer {.cdecl.} =
  let vtbl = cast[ptr QShortcutVTable](fcQShortcut_vdata(self))
  let self = QShortcut(h: self)
  let slotval1 = (param1)
  var virtualReturn = vtbl[].metacast(self, slotval1)
  virtualReturn

proc QShortcutmetacall*(self: gen_qshortcut_types.QShortcut, param1: cint, param2: cint, param3: pointer): cint =
  fcQShortcut_virtualbase_metacall(self.h, cint(param1), param2, param3)

proc cQShortcut_vtable_callback_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.cdecl.} =
  let vtbl = cast[ptr QShortcutVTable](fcQShortcut_vdata(self))
  let self = QShortcut(h: self)
  let slotval1 = cint(param1)
  let slotval2 = param2
  let slotval3 = param3
  var virtualReturn = vtbl[].metacall(self, slotval1, slotval2, slotval3)
  virtualReturn

proc QShortcutevent*(self: gen_qshortcut_types.QShortcut, e: gen_qcoreevent_types.QEvent): bool =
  fcQShortcut_virtualbase_event(self.h, e.h)

proc cQShortcut_vtable_callback_event(self: pointer, e: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QShortcutVTable](fcQShortcut_vdata(self))
  let self = QShortcut(h: self)
  let slotval1 = gen_qcoreevent_types.QEvent(h: e, owned: false)
  var virtualReturn = vtbl[].event(self, slotval1)
  virtualReturn

proc QShortcuteventFilter*(self: gen_qshortcut_types.QShortcut, watched: gen_qobject_types.QObject, event: gen_qcoreevent_types.QEvent): bool =
  fcQShortcut_virtualbase_eventFilter(self.h, watched.h, event.h)

proc cQShortcut_vtable_callback_eventFilter(self: pointer, watched: pointer, event: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QShortcutVTable](fcQShortcut_vdata(self))
  let self = QShortcut(h: self)
  let slotval1 = gen_qobject_types.QObject(h: watched, owned: false)
  let slotval2 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  var virtualReturn = vtbl[].eventFilter(self, slotval1, slotval2)
  virtualReturn

proc QShortcuttimerEvent*(self: gen_qshortcut_types.QShortcut, event: gen_qcoreevent_types.QTimerEvent): void =
  fcQShortcut_virtualbase_timerEvent(self.h, event.h)

proc cQShortcut_vtable_callback_timerEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QShortcutVTable](fcQShortcut_vdata(self))
  let self = QShortcut(h: self)
  let slotval1 = gen_qcoreevent_types.QTimerEvent(h: event, owned: false)
  vtbl[].timerEvent(self, slotval1)

proc QShortcutchildEvent*(self: gen_qshortcut_types.QShortcut, event: gen_qcoreevent_types.QChildEvent): void =
  fcQShortcut_virtualbase_childEvent(self.h, event.h)

proc cQShortcut_vtable_callback_childEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QShortcutVTable](fcQShortcut_vdata(self))
  let self = QShortcut(h: self)
  let slotval1 = gen_qcoreevent_types.QChildEvent(h: event, owned: false)
  vtbl[].childEvent(self, slotval1)

proc QShortcutcustomEvent*(self: gen_qshortcut_types.QShortcut, event: gen_qcoreevent_types.QEvent): void =
  fcQShortcut_virtualbase_customEvent(self.h, event.h)

proc cQShortcut_vtable_callback_customEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QShortcutVTable](fcQShortcut_vdata(self))
  let self = QShortcut(h: self)
  let slotval1 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  vtbl[].customEvent(self, slotval1)

proc QShortcutconnectNotify*(self: gen_qshortcut_types.QShortcut, signal: gen_qmetaobject_types.QMetaMethod): void =
  fcQShortcut_virtualbase_connectNotify(self.h, signal.h)

proc cQShortcut_vtable_callback_connectNotify(self: pointer, signal: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QShortcutVTable](fcQShortcut_vdata(self))
  let self = QShortcut(h: self)
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal, owned: false)
  vtbl[].connectNotify(self, slotval1)

proc QShortcutdisconnectNotify*(self: gen_qshortcut_types.QShortcut, signal: gen_qmetaobject_types.QMetaMethod): void =
  fcQShortcut_virtualbase_disconnectNotify(self.h, signal.h)

proc cQShortcut_vtable_callback_disconnectNotify(self: pointer, signal: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QShortcutVTable](fcQShortcut_vdata(self))
  let self = QShortcut(h: self)
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal, owned: false)
  vtbl[].disconnectNotify(self, slotval1)

type VirtualQShortcut* {.inheritable.} = ref object of QShortcut
  vtbl*: cQShortcutVTable
method metaObject*(self: VirtualQShortcut): gen_qobjectdefs_types.QMetaObject {.base.} =
  QShortcutmetaObject(self[])
proc cQShortcut_method_callback_metaObject(self: pointer): pointer {.cdecl.} =
  let inst = cast[VirtualQShortcut](fcQShortcut_vdata(self))
  var virtualReturn = inst.metaObject()
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

method metacast*(self: VirtualQShortcut, param1: cstring): pointer {.base.} =
  QShortcutmetacast(self[], param1)
proc cQShortcut_method_callback_metacast(self: pointer, param1: cstring): pointer {.cdecl.} =
  let inst = cast[VirtualQShortcut](fcQShortcut_vdata(self))
  let slotval1 = (param1)
  var virtualReturn = inst.metacast(slotval1)
  virtualReturn

method metacall*(self: VirtualQShortcut, param1: cint, param2: cint, param3: pointer): cint {.base.} =
  QShortcutmetacall(self[], param1, param2, param3)
proc cQShortcut_method_callback_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.cdecl.} =
  let inst = cast[VirtualQShortcut](fcQShortcut_vdata(self))
  let slotval1 = cint(param1)
  let slotval2 = param2
  let slotval3 = param3
  var virtualReturn = inst.metacall(slotval1, slotval2, slotval3)
  virtualReturn

method event*(self: VirtualQShortcut, e: gen_qcoreevent_types.QEvent): bool {.base.} =
  QShortcutevent(self[], e)
proc cQShortcut_method_callback_event(self: pointer, e: pointer): bool {.cdecl.} =
  let inst = cast[VirtualQShortcut](fcQShortcut_vdata(self))
  let slotval1 = gen_qcoreevent_types.QEvent(h: e, owned: false)
  var virtualReturn = inst.event(slotval1)
  virtualReturn

method eventFilter*(self: VirtualQShortcut, watched: gen_qobject_types.QObject, event: gen_qcoreevent_types.QEvent): bool {.base.} =
  QShortcuteventFilter(self[], watched, event)
proc cQShortcut_method_callback_eventFilter(self: pointer, watched: pointer, event: pointer): bool {.cdecl.} =
  let inst = cast[VirtualQShortcut](fcQShortcut_vdata(self))
  let slotval1 = gen_qobject_types.QObject(h: watched, owned: false)
  let slotval2 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  var virtualReturn = inst.eventFilter(slotval1, slotval2)
  virtualReturn

method timerEvent*(self: VirtualQShortcut, event: gen_qcoreevent_types.QTimerEvent): void {.base.} =
  QShortcuttimerEvent(self[], event)
proc cQShortcut_method_callback_timerEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQShortcut](fcQShortcut_vdata(self))
  let slotval1 = gen_qcoreevent_types.QTimerEvent(h: event, owned: false)
  inst.timerEvent(slotval1)

method childEvent*(self: VirtualQShortcut, event: gen_qcoreevent_types.QChildEvent): void {.base.} =
  QShortcutchildEvent(self[], event)
proc cQShortcut_method_callback_childEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQShortcut](fcQShortcut_vdata(self))
  let slotval1 = gen_qcoreevent_types.QChildEvent(h: event, owned: false)
  inst.childEvent(slotval1)

method customEvent*(self: VirtualQShortcut, event: gen_qcoreevent_types.QEvent): void {.base.} =
  QShortcutcustomEvent(self[], event)
proc cQShortcut_method_callback_customEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQShortcut](fcQShortcut_vdata(self))
  let slotval1 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  inst.customEvent(slotval1)

method connectNotify*(self: VirtualQShortcut, signal: gen_qmetaobject_types.QMetaMethod): void {.base.} =
  QShortcutconnectNotify(self[], signal)
proc cQShortcut_method_callback_connectNotify(self: pointer, signal: pointer): void {.cdecl.} =
  let inst = cast[VirtualQShortcut](fcQShortcut_vdata(self))
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal, owned: false)
  inst.connectNotify(slotval1)

method disconnectNotify*(self: VirtualQShortcut, signal: gen_qmetaobject_types.QMetaMethod): void {.base.} =
  QShortcutdisconnectNotify(self[], signal)
proc cQShortcut_method_callback_disconnectNotify(self: pointer, signal: pointer): void {.cdecl.} =
  let inst = cast[VirtualQShortcut](fcQShortcut_vdata(self))
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal, owned: false)
  inst.disconnectNotify(slotval1)

proc sender*(self: gen_qshortcut_types.QShortcut): gen_qobject_types.QObject =
  gen_qobject_types.QObject(h: fcQShortcut_protectedbase_sender(self.h), owned: false)

proc senderSignalIndex*(self: gen_qshortcut_types.QShortcut): cint =
  fcQShortcut_protectedbase_senderSignalIndex(self.h)

proc receivers*(self: gen_qshortcut_types.QShortcut, signal: cstring): cint =
  fcQShortcut_protectedbase_receivers(self.h, signal)

proc isSignalConnected*(self: gen_qshortcut_types.QShortcut, signal: gen_qmetaobject_types.QMetaMethod): bool =
  fcQShortcut_protectedbase_isSignalConnected(self.h, signal.h)

proc create*(T: type gen_qshortcut_types.QShortcut,
    parent: gen_qobject_types.QObject,
    vtbl: ref QShortcutVTable = nil): gen_qshortcut_types.QShortcut =
  let vtbl = if vtbl == nil: new QShortcutVTable else: vtbl
  GC_ref(vtbl)
  vtbl[].vtbl.destructor = proc(self: pointer) {.cdecl.} =
    let vtbl = cast[ref QShortcutVTable](fcQShortcut_vdata(self))
    GC_unref(vtbl)
  if not isNil(vtbl[].metaObject):
    vtbl[].vtbl.metaObject = cQShortcut_vtable_callback_metaObject
  if not isNil(vtbl[].metacast):
    vtbl[].vtbl.metacast = cQShortcut_vtable_callback_metacast
  if not isNil(vtbl[].metacall):
    vtbl[].vtbl.metacall = cQShortcut_vtable_callback_metacall
  if not isNil(vtbl[].event):
    vtbl[].vtbl.event = cQShortcut_vtable_callback_event
  if not isNil(vtbl[].eventFilter):
    vtbl[].vtbl.eventFilter = cQShortcut_vtable_callback_eventFilter
  if not isNil(vtbl[].timerEvent):
    vtbl[].vtbl.timerEvent = cQShortcut_vtable_callback_timerEvent
  if not isNil(vtbl[].childEvent):
    vtbl[].vtbl.childEvent = cQShortcut_vtable_callback_childEvent
  if not isNil(vtbl[].customEvent):
    vtbl[].vtbl.customEvent = cQShortcut_vtable_callback_customEvent
  if not isNil(vtbl[].connectNotify):
    vtbl[].vtbl.connectNotify = cQShortcut_vtable_callback_connectNotify
  if not isNil(vtbl[].disconnectNotify):
    vtbl[].vtbl.disconnectNotify = cQShortcut_vtable_callback_disconnectNotify
  gen_qshortcut_types.QShortcut(h: fcQShortcut_new(addr(vtbl[].vtbl), addr(vtbl[]), parent.h), owned: true)

proc create*(T: type gen_qshortcut_types.QShortcut,
    key: gen_qkeysequence_types.QKeySequence, parent: gen_qobject_types.QObject,
    vtbl: ref QShortcutVTable = nil): gen_qshortcut_types.QShortcut =
  let vtbl = if vtbl == nil: new QShortcutVTable else: vtbl
  GC_ref(vtbl)
  vtbl[].vtbl.destructor = proc(self: pointer) {.cdecl.} =
    let vtbl = cast[ref QShortcutVTable](fcQShortcut_vdata(self))
    GC_unref(vtbl)
  if not isNil(vtbl[].metaObject):
    vtbl[].vtbl.metaObject = cQShortcut_vtable_callback_metaObject
  if not isNil(vtbl[].metacast):
    vtbl[].vtbl.metacast = cQShortcut_vtable_callback_metacast
  if not isNil(vtbl[].metacall):
    vtbl[].vtbl.metacall = cQShortcut_vtable_callback_metacall
  if not isNil(vtbl[].event):
    vtbl[].vtbl.event = cQShortcut_vtable_callback_event
  if not isNil(vtbl[].eventFilter):
    vtbl[].vtbl.eventFilter = cQShortcut_vtable_callback_eventFilter
  if not isNil(vtbl[].timerEvent):
    vtbl[].vtbl.timerEvent = cQShortcut_vtable_callback_timerEvent
  if not isNil(vtbl[].childEvent):
    vtbl[].vtbl.childEvent = cQShortcut_vtable_callback_childEvent
  if not isNil(vtbl[].customEvent):
    vtbl[].vtbl.customEvent = cQShortcut_vtable_callback_customEvent
  if not isNil(vtbl[].connectNotify):
    vtbl[].vtbl.connectNotify = cQShortcut_vtable_callback_connectNotify
  if not isNil(vtbl[].disconnectNotify):
    vtbl[].vtbl.disconnectNotify = cQShortcut_vtable_callback_disconnectNotify
  gen_qshortcut_types.QShortcut(h: fcQShortcut_new2(addr(vtbl[].vtbl), addr(vtbl[]), key.h, parent.h), owned: true)

proc create*(T: type gen_qshortcut_types.QShortcut,
    key: cint, parent: gen_qobject_types.QObject,
    vtbl: ref QShortcutVTable = nil): gen_qshortcut_types.QShortcut =
  let vtbl = if vtbl == nil: new QShortcutVTable else: vtbl
  GC_ref(vtbl)
  vtbl[].vtbl.destructor = proc(self: pointer) {.cdecl.} =
    let vtbl = cast[ref QShortcutVTable](fcQShortcut_vdata(self))
    GC_unref(vtbl)
  if not isNil(vtbl[].metaObject):
    vtbl[].vtbl.metaObject = cQShortcut_vtable_callback_metaObject
  if not isNil(vtbl[].metacast):
    vtbl[].vtbl.metacast = cQShortcut_vtable_callback_metacast
  if not isNil(vtbl[].metacall):
    vtbl[].vtbl.metacall = cQShortcut_vtable_callback_metacall
  if not isNil(vtbl[].event):
    vtbl[].vtbl.event = cQShortcut_vtable_callback_event
  if not isNil(vtbl[].eventFilter):
    vtbl[].vtbl.eventFilter = cQShortcut_vtable_callback_eventFilter
  if not isNil(vtbl[].timerEvent):
    vtbl[].vtbl.timerEvent = cQShortcut_vtable_callback_timerEvent
  if not isNil(vtbl[].childEvent):
    vtbl[].vtbl.childEvent = cQShortcut_vtable_callback_childEvent
  if not isNil(vtbl[].customEvent):
    vtbl[].vtbl.customEvent = cQShortcut_vtable_callback_customEvent
  if not isNil(vtbl[].connectNotify):
    vtbl[].vtbl.connectNotify = cQShortcut_vtable_callback_connectNotify
  if not isNil(vtbl[].disconnectNotify):
    vtbl[].vtbl.disconnectNotify = cQShortcut_vtable_callback_disconnectNotify
  gen_qshortcut_types.QShortcut(h: fcQShortcut_new3(addr(vtbl[].vtbl), addr(vtbl[]), cint(key), parent.h), owned: true)

proc create*(T: type gen_qshortcut_types.QShortcut,
    key: gen_qkeysequence_types.QKeySequence, parent: gen_qobject_types.QObject, member: cstring,
    vtbl: ref QShortcutVTable = nil): gen_qshortcut_types.QShortcut =
  let vtbl = if vtbl == nil: new QShortcutVTable else: vtbl
  GC_ref(vtbl)
  vtbl[].vtbl.destructor = proc(self: pointer) {.cdecl.} =
    let vtbl = cast[ref QShortcutVTable](fcQShortcut_vdata(self))
    GC_unref(vtbl)
  if not isNil(vtbl[].metaObject):
    vtbl[].vtbl.metaObject = cQShortcut_vtable_callback_metaObject
  if not isNil(vtbl[].metacast):
    vtbl[].vtbl.metacast = cQShortcut_vtable_callback_metacast
  if not isNil(vtbl[].metacall):
    vtbl[].vtbl.metacall = cQShortcut_vtable_callback_metacall
  if not isNil(vtbl[].event):
    vtbl[].vtbl.event = cQShortcut_vtable_callback_event
  if not isNil(vtbl[].eventFilter):
    vtbl[].vtbl.eventFilter = cQShortcut_vtable_callback_eventFilter
  if not isNil(vtbl[].timerEvent):
    vtbl[].vtbl.timerEvent = cQShortcut_vtable_callback_timerEvent
  if not isNil(vtbl[].childEvent):
    vtbl[].vtbl.childEvent = cQShortcut_vtable_callback_childEvent
  if not isNil(vtbl[].customEvent):
    vtbl[].vtbl.customEvent = cQShortcut_vtable_callback_customEvent
  if not isNil(vtbl[].connectNotify):
    vtbl[].vtbl.connectNotify = cQShortcut_vtable_callback_connectNotify
  if not isNil(vtbl[].disconnectNotify):
    vtbl[].vtbl.disconnectNotify = cQShortcut_vtable_callback_disconnectNotify
  gen_qshortcut_types.QShortcut(h: fcQShortcut_new4(addr(vtbl[].vtbl), addr(vtbl[]), key.h, parent.h, member), owned: true)

proc create*(T: type gen_qshortcut_types.QShortcut,
    key: gen_qkeysequence_types.QKeySequence, parent: gen_qobject_types.QObject, member: cstring, ambiguousMember: cstring,
    vtbl: ref QShortcutVTable = nil): gen_qshortcut_types.QShortcut =
  let vtbl = if vtbl == nil: new QShortcutVTable else: vtbl
  GC_ref(vtbl)
  vtbl[].vtbl.destructor = proc(self: pointer) {.cdecl.} =
    let vtbl = cast[ref QShortcutVTable](fcQShortcut_vdata(self))
    GC_unref(vtbl)
  if not isNil(vtbl[].metaObject):
    vtbl[].vtbl.metaObject = cQShortcut_vtable_callback_metaObject
  if not isNil(vtbl[].metacast):
    vtbl[].vtbl.metacast = cQShortcut_vtable_callback_metacast
  if not isNil(vtbl[].metacall):
    vtbl[].vtbl.metacall = cQShortcut_vtable_callback_metacall
  if not isNil(vtbl[].event):
    vtbl[].vtbl.event = cQShortcut_vtable_callback_event
  if not isNil(vtbl[].eventFilter):
    vtbl[].vtbl.eventFilter = cQShortcut_vtable_callback_eventFilter
  if not isNil(vtbl[].timerEvent):
    vtbl[].vtbl.timerEvent = cQShortcut_vtable_callback_timerEvent
  if not isNil(vtbl[].childEvent):
    vtbl[].vtbl.childEvent = cQShortcut_vtable_callback_childEvent
  if not isNil(vtbl[].customEvent):
    vtbl[].vtbl.customEvent = cQShortcut_vtable_callback_customEvent
  if not isNil(vtbl[].connectNotify):
    vtbl[].vtbl.connectNotify = cQShortcut_vtable_callback_connectNotify
  if not isNil(vtbl[].disconnectNotify):
    vtbl[].vtbl.disconnectNotify = cQShortcut_vtable_callback_disconnectNotify
  gen_qshortcut_types.QShortcut(h: fcQShortcut_new5(addr(vtbl[].vtbl), addr(vtbl[]), key.h, parent.h, member, ambiguousMember), owned: true)

proc create*(T: type gen_qshortcut_types.QShortcut,
    key: gen_qkeysequence_types.QKeySequence, parent: gen_qobject_types.QObject, member: cstring, ambiguousMember: cstring, context: cint,
    vtbl: ref QShortcutVTable = nil): gen_qshortcut_types.QShortcut =
  let vtbl = if vtbl == nil: new QShortcutVTable else: vtbl
  GC_ref(vtbl)
  vtbl[].vtbl.destructor = proc(self: pointer) {.cdecl.} =
    let vtbl = cast[ref QShortcutVTable](fcQShortcut_vdata(self))
    GC_unref(vtbl)
  if not isNil(vtbl[].metaObject):
    vtbl[].vtbl.metaObject = cQShortcut_vtable_callback_metaObject
  if not isNil(vtbl[].metacast):
    vtbl[].vtbl.metacast = cQShortcut_vtable_callback_metacast
  if not isNil(vtbl[].metacall):
    vtbl[].vtbl.metacall = cQShortcut_vtable_callback_metacall
  if not isNil(vtbl[].event):
    vtbl[].vtbl.event = cQShortcut_vtable_callback_event
  if not isNil(vtbl[].eventFilter):
    vtbl[].vtbl.eventFilter = cQShortcut_vtable_callback_eventFilter
  if not isNil(vtbl[].timerEvent):
    vtbl[].vtbl.timerEvent = cQShortcut_vtable_callback_timerEvent
  if not isNil(vtbl[].childEvent):
    vtbl[].vtbl.childEvent = cQShortcut_vtable_callback_childEvent
  if not isNil(vtbl[].customEvent):
    vtbl[].vtbl.customEvent = cQShortcut_vtable_callback_customEvent
  if not isNil(vtbl[].connectNotify):
    vtbl[].vtbl.connectNotify = cQShortcut_vtable_callback_connectNotify
  if not isNil(vtbl[].disconnectNotify):
    vtbl[].vtbl.disconnectNotify = cQShortcut_vtable_callback_disconnectNotify
  gen_qshortcut_types.QShortcut(h: fcQShortcut_new6(addr(vtbl[].vtbl), addr(vtbl[]), key.h, parent.h, member, ambiguousMember, cint(context)), owned: true)

proc create*(T: type gen_qshortcut_types.QShortcut,
    key: cint, parent: gen_qobject_types.QObject, member: cstring,
    vtbl: ref QShortcutVTable = nil): gen_qshortcut_types.QShortcut =
  let vtbl = if vtbl == nil: new QShortcutVTable else: vtbl
  GC_ref(vtbl)
  vtbl[].vtbl.destructor = proc(self: pointer) {.cdecl.} =
    let vtbl = cast[ref QShortcutVTable](fcQShortcut_vdata(self))
    GC_unref(vtbl)
  if not isNil(vtbl[].metaObject):
    vtbl[].vtbl.metaObject = cQShortcut_vtable_callback_metaObject
  if not isNil(vtbl[].metacast):
    vtbl[].vtbl.metacast = cQShortcut_vtable_callback_metacast
  if not isNil(vtbl[].metacall):
    vtbl[].vtbl.metacall = cQShortcut_vtable_callback_metacall
  if not isNil(vtbl[].event):
    vtbl[].vtbl.event = cQShortcut_vtable_callback_event
  if not isNil(vtbl[].eventFilter):
    vtbl[].vtbl.eventFilter = cQShortcut_vtable_callback_eventFilter
  if not isNil(vtbl[].timerEvent):
    vtbl[].vtbl.timerEvent = cQShortcut_vtable_callback_timerEvent
  if not isNil(vtbl[].childEvent):
    vtbl[].vtbl.childEvent = cQShortcut_vtable_callback_childEvent
  if not isNil(vtbl[].customEvent):
    vtbl[].vtbl.customEvent = cQShortcut_vtable_callback_customEvent
  if not isNil(vtbl[].connectNotify):
    vtbl[].vtbl.connectNotify = cQShortcut_vtable_callback_connectNotify
  if not isNil(vtbl[].disconnectNotify):
    vtbl[].vtbl.disconnectNotify = cQShortcut_vtable_callback_disconnectNotify
  gen_qshortcut_types.QShortcut(h: fcQShortcut_new7(addr(vtbl[].vtbl), addr(vtbl[]), cint(key), parent.h, member), owned: true)

proc create*(T: type gen_qshortcut_types.QShortcut,
    key: cint, parent: gen_qobject_types.QObject, member: cstring, ambiguousMember: cstring,
    vtbl: ref QShortcutVTable = nil): gen_qshortcut_types.QShortcut =
  let vtbl = if vtbl == nil: new QShortcutVTable else: vtbl
  GC_ref(vtbl)
  vtbl[].vtbl.destructor = proc(self: pointer) {.cdecl.} =
    let vtbl = cast[ref QShortcutVTable](fcQShortcut_vdata(self))
    GC_unref(vtbl)
  if not isNil(vtbl[].metaObject):
    vtbl[].vtbl.metaObject = cQShortcut_vtable_callback_metaObject
  if not isNil(vtbl[].metacast):
    vtbl[].vtbl.metacast = cQShortcut_vtable_callback_metacast
  if not isNil(vtbl[].metacall):
    vtbl[].vtbl.metacall = cQShortcut_vtable_callback_metacall
  if not isNil(vtbl[].event):
    vtbl[].vtbl.event = cQShortcut_vtable_callback_event
  if not isNil(vtbl[].eventFilter):
    vtbl[].vtbl.eventFilter = cQShortcut_vtable_callback_eventFilter
  if not isNil(vtbl[].timerEvent):
    vtbl[].vtbl.timerEvent = cQShortcut_vtable_callback_timerEvent
  if not isNil(vtbl[].childEvent):
    vtbl[].vtbl.childEvent = cQShortcut_vtable_callback_childEvent
  if not isNil(vtbl[].customEvent):
    vtbl[].vtbl.customEvent = cQShortcut_vtable_callback_customEvent
  if not isNil(vtbl[].connectNotify):
    vtbl[].vtbl.connectNotify = cQShortcut_vtable_callback_connectNotify
  if not isNil(vtbl[].disconnectNotify):
    vtbl[].vtbl.disconnectNotify = cQShortcut_vtable_callback_disconnectNotify
  gen_qshortcut_types.QShortcut(h: fcQShortcut_new8(addr(vtbl[].vtbl), addr(vtbl[]), cint(key), parent.h, member, ambiguousMember), owned: true)

proc create*(T: type gen_qshortcut_types.QShortcut,
    key: cint, parent: gen_qobject_types.QObject, member: cstring, ambiguousMember: cstring, context: cint,
    vtbl: ref QShortcutVTable = nil): gen_qshortcut_types.QShortcut =
  let vtbl = if vtbl == nil: new QShortcutVTable else: vtbl
  GC_ref(vtbl)
  vtbl[].vtbl.destructor = proc(self: pointer) {.cdecl.} =
    let vtbl = cast[ref QShortcutVTable](fcQShortcut_vdata(self))
    GC_unref(vtbl)
  if not isNil(vtbl[].metaObject):
    vtbl[].vtbl.metaObject = cQShortcut_vtable_callback_metaObject
  if not isNil(vtbl[].metacast):
    vtbl[].vtbl.metacast = cQShortcut_vtable_callback_metacast
  if not isNil(vtbl[].metacall):
    vtbl[].vtbl.metacall = cQShortcut_vtable_callback_metacall
  if not isNil(vtbl[].event):
    vtbl[].vtbl.event = cQShortcut_vtable_callback_event
  if not isNil(vtbl[].eventFilter):
    vtbl[].vtbl.eventFilter = cQShortcut_vtable_callback_eventFilter
  if not isNil(vtbl[].timerEvent):
    vtbl[].vtbl.timerEvent = cQShortcut_vtable_callback_timerEvent
  if not isNil(vtbl[].childEvent):
    vtbl[].vtbl.childEvent = cQShortcut_vtable_callback_childEvent
  if not isNil(vtbl[].customEvent):
    vtbl[].vtbl.customEvent = cQShortcut_vtable_callback_customEvent
  if not isNil(vtbl[].connectNotify):
    vtbl[].vtbl.connectNotify = cQShortcut_vtable_callback_connectNotify
  if not isNil(vtbl[].disconnectNotify):
    vtbl[].vtbl.disconnectNotify = cQShortcut_vtable_callback_disconnectNotify
  gen_qshortcut_types.QShortcut(h: fcQShortcut_new9(addr(vtbl[].vtbl), addr(vtbl[]), cint(key), parent.h, member, ambiguousMember, cint(context)), owned: true)

const cQShortcut_mvtbl = cQShortcutVTable(
  destructor: proc(self: pointer) {.cdecl.} =
    let inst = cast[ptr typeof(VirtualQShortcut()[])](self.fcQShortcut_vtbl())
    inst[].h = nil
    inst[].owned = false,
  metaObject: cQShortcut_method_callback_metaObject,
  metacast: cQShortcut_method_callback_metacast,
  metacall: cQShortcut_method_callback_metacall,
  event: cQShortcut_method_callback_event,
  eventFilter: cQShortcut_method_callback_eventFilter,
  timerEvent: cQShortcut_method_callback_timerEvent,
  childEvent: cQShortcut_method_callback_childEvent,
  customEvent: cQShortcut_method_callback_customEvent,
  connectNotify: cQShortcut_method_callback_connectNotify,
  disconnectNotify: cQShortcut_method_callback_disconnectNotify,
)
proc create*(T: type gen_qshortcut_types.QShortcut,
    parent: gen_qobject_types.QObject,
    inst: VirtualQShortcut) =
  if inst[].h != nil: delete(move(inst[]))
  inst[].h = fcQShortcut_new(addr(cQShortcut_mvtbl), addr(inst[]), parent.h)
  inst[].owned = true

proc create*(T: type gen_qshortcut_types.QShortcut,
    key: gen_qkeysequence_types.QKeySequence, parent: gen_qobject_types.QObject,
    inst: VirtualQShortcut) =
  if inst[].h != nil: delete(move(inst[]))
  inst[].h = fcQShortcut_new2(addr(cQShortcut_mvtbl), addr(inst[]), key.h, parent.h)
  inst[].owned = true

proc create*(T: type gen_qshortcut_types.QShortcut,
    key: cint, parent: gen_qobject_types.QObject,
    inst: VirtualQShortcut) =
  if inst[].h != nil: delete(move(inst[]))
  inst[].h = fcQShortcut_new3(addr(cQShortcut_mvtbl), addr(inst[]), cint(key), parent.h)
  inst[].owned = true

proc create*(T: type gen_qshortcut_types.QShortcut,
    key: gen_qkeysequence_types.QKeySequence, parent: gen_qobject_types.QObject, member: cstring,
    inst: VirtualQShortcut) =
  if inst[].h != nil: delete(move(inst[]))
  inst[].h = fcQShortcut_new4(addr(cQShortcut_mvtbl), addr(inst[]), key.h, parent.h, member)
  inst[].owned = true

proc create*(T: type gen_qshortcut_types.QShortcut,
    key: gen_qkeysequence_types.QKeySequence, parent: gen_qobject_types.QObject, member: cstring, ambiguousMember: cstring,
    inst: VirtualQShortcut) =
  if inst[].h != nil: delete(move(inst[]))
  inst[].h = fcQShortcut_new5(addr(cQShortcut_mvtbl), addr(inst[]), key.h, parent.h, member, ambiguousMember)
  inst[].owned = true

proc create*(T: type gen_qshortcut_types.QShortcut,
    key: gen_qkeysequence_types.QKeySequence, parent: gen_qobject_types.QObject, member: cstring, ambiguousMember: cstring, context: cint,
    inst: VirtualQShortcut) =
  if inst[].h != nil: delete(move(inst[]))
  inst[].h = fcQShortcut_new6(addr(cQShortcut_mvtbl), addr(inst[]), key.h, parent.h, member, ambiguousMember, cint(context))
  inst[].owned = true

proc create*(T: type gen_qshortcut_types.QShortcut,
    key: cint, parent: gen_qobject_types.QObject, member: cstring,
    inst: VirtualQShortcut) =
  if inst[].h != nil: delete(move(inst[]))
  inst[].h = fcQShortcut_new7(addr(cQShortcut_mvtbl), addr(inst[]), cint(key), parent.h, member)
  inst[].owned = true

proc create*(T: type gen_qshortcut_types.QShortcut,
    key: cint, parent: gen_qobject_types.QObject, member: cstring, ambiguousMember: cstring,
    inst: VirtualQShortcut) =
  if inst[].h != nil: delete(move(inst[]))
  inst[].h = fcQShortcut_new8(addr(cQShortcut_mvtbl), addr(inst[]), cint(key), parent.h, member, ambiguousMember)
  inst[].owned = true

proc create*(T: type gen_qshortcut_types.QShortcut,
    key: cint, parent: gen_qobject_types.QObject, member: cstring, ambiguousMember: cstring, context: cint,
    inst: VirtualQShortcut) =
  if inst[].h != nil: delete(move(inst[]))
  inst[].h = fcQShortcut_new9(addr(cQShortcut_mvtbl), addr(inst[]), cint(key), parent.h, member, ambiguousMember, cint(context))
  inst[].owned = true

proc staticMetaObject*(_: type gen_qshortcut_types.QShortcut): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQShortcut_staticMetaObject())
