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
{.compile("gen_qshortcut.cpp", cflags).}


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

proc fcQShortcut_metaObject(self: pointer, ): pointer {.importc: "QShortcut_metaObject".}
proc fcQShortcut_metacast(self: pointer, param1: cstring): pointer {.importc: "QShortcut_metacast".}
proc fcQShortcut_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.importc: "QShortcut_metacall".}
proc fcQShortcut_tr(s: cstring): struct_miqt_string {.importc: "QShortcut_tr".}
proc fcQShortcut_setKey(self: pointer, key: pointer): void {.importc: "QShortcut_setKey".}
proc fcQShortcut_key(self: pointer, ): pointer {.importc: "QShortcut_key".}
proc fcQShortcut_setKeys(self: pointer, key: cint): void {.importc: "QShortcut_setKeys".}
proc fcQShortcut_setKeysWithKeys(self: pointer, keys: struct_miqt_array): void {.importc: "QShortcut_setKeysWithKeys".}
proc fcQShortcut_keys(self: pointer, ): struct_miqt_array {.importc: "QShortcut_keys".}
proc fcQShortcut_setEnabled(self: pointer, enable: bool): void {.importc: "QShortcut_setEnabled".}
proc fcQShortcut_isEnabled(self: pointer, ): bool {.importc: "QShortcut_isEnabled".}
proc fcQShortcut_setContext(self: pointer, context: cint): void {.importc: "QShortcut_setContext".}
proc fcQShortcut_context(self: pointer, ): cint {.importc: "QShortcut_context".}
proc fcQShortcut_setAutoRepeat(self: pointer, on: bool): void {.importc: "QShortcut_setAutoRepeat".}
proc fcQShortcut_autoRepeat(self: pointer, ): bool {.importc: "QShortcut_autoRepeat".}
proc fcQShortcut_id(self: pointer, ): cint {.importc: "QShortcut_id".}
proc fcQShortcut_setWhatsThis(self: pointer, text: struct_miqt_string): void {.importc: "QShortcut_setWhatsThis".}
proc fcQShortcut_whatsThis(self: pointer, ): struct_miqt_string {.importc: "QShortcut_whatsThis".}
proc fcQShortcut_activated(self: pointer, ): void {.importc: "QShortcut_activated".}
proc fcQShortcut_connect_activated(self: pointer, slot: int) {.importc: "QShortcut_connect_activated".}
proc fcQShortcut_activatedAmbiguously(self: pointer, ): void {.importc: "QShortcut_activatedAmbiguously".}
proc fcQShortcut_connect_activatedAmbiguously(self: pointer, slot: int) {.importc: "QShortcut_connect_activatedAmbiguously".}
proc fcQShortcut_tr2(s: cstring, c: cstring): struct_miqt_string {.importc: "QShortcut_tr2".}
proc fcQShortcut_tr3(s: cstring, c: cstring, n: cint): struct_miqt_string {.importc: "QShortcut_tr3".}
type cQShortcutVTable = object
  destructor*: proc(vtbl: ptr cQShortcutVTable, self: ptr cQShortcut) {.cdecl, raises:[], gcsafe.}
  metaObject*: proc(vtbl, self: pointer, ): pointer {.cdecl, raises: [], gcsafe.}
  metacast*: proc(vtbl, self: pointer, param1: cstring): pointer {.cdecl, raises: [], gcsafe.}
  metacall*: proc(vtbl, self: pointer, param1: cint, param2: cint, param3: pointer): cint {.cdecl, raises: [], gcsafe.}
  event*: proc(vtbl, self: pointer, e: pointer): bool {.cdecl, raises: [], gcsafe.}
  eventFilter*: proc(vtbl, self: pointer, watched: pointer, event: pointer): bool {.cdecl, raises: [], gcsafe.}
  timerEvent*: proc(vtbl, self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  childEvent*: proc(vtbl, self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  customEvent*: proc(vtbl, self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  connectNotify*: proc(vtbl, self: pointer, signal: pointer): void {.cdecl, raises: [], gcsafe.}
  disconnectNotify*: proc(vtbl, self: pointer, signal: pointer): void {.cdecl, raises: [], gcsafe.}
proc fcQShortcut_virtualbase_metaObject(self: pointer, ): pointer {.importc: "QShortcut_virtualbase_metaObject".}
proc fcQShortcut_virtualbase_metacast(self: pointer, param1: cstring): pointer {.importc: "QShortcut_virtualbase_metacast".}
proc fcQShortcut_virtualbase_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.importc: "QShortcut_virtualbase_metacall".}
proc fcQShortcut_virtualbase_event(self: pointer, e: pointer): bool {.importc: "QShortcut_virtualbase_event".}
proc fcQShortcut_virtualbase_eventFilter(self: pointer, watched: pointer, event: pointer): bool {.importc: "QShortcut_virtualbase_eventFilter".}
proc fcQShortcut_virtualbase_timerEvent(self: pointer, event: pointer): void {.importc: "QShortcut_virtualbase_timerEvent".}
proc fcQShortcut_virtualbase_childEvent(self: pointer, event: pointer): void {.importc: "QShortcut_virtualbase_childEvent".}
proc fcQShortcut_virtualbase_customEvent(self: pointer, event: pointer): void {.importc: "QShortcut_virtualbase_customEvent".}
proc fcQShortcut_virtualbase_connectNotify(self: pointer, signal: pointer): void {.importc: "QShortcut_virtualbase_connectNotify".}
proc fcQShortcut_virtualbase_disconnectNotify(self: pointer, signal: pointer): void {.importc: "QShortcut_virtualbase_disconnectNotify".}
proc fcQShortcut_new(vtbl: pointer, parent: pointer): ptr cQShortcut {.importc: "QShortcut_new".}
proc fcQShortcut_new2(vtbl: pointer, key: pointer, parent: pointer): ptr cQShortcut {.importc: "QShortcut_new2".}
proc fcQShortcut_new3(vtbl: pointer, key: cint, parent: pointer): ptr cQShortcut {.importc: "QShortcut_new3".}
proc fcQShortcut_new4(vtbl: pointer, key: pointer, parent: pointer, member: cstring): ptr cQShortcut {.importc: "QShortcut_new4".}
proc fcQShortcut_new5(vtbl: pointer, key: pointer, parent: pointer, member: cstring, ambiguousMember: cstring): ptr cQShortcut {.importc: "QShortcut_new5".}
proc fcQShortcut_new6(vtbl: pointer, key: pointer, parent: pointer, member: cstring, ambiguousMember: cstring, context: cint): ptr cQShortcut {.importc: "QShortcut_new6".}
proc fcQShortcut_new7(vtbl: pointer, key: cint, parent: pointer, member: cstring): ptr cQShortcut {.importc: "QShortcut_new7".}
proc fcQShortcut_new8(vtbl: pointer, key: cint, parent: pointer, member: cstring, ambiguousMember: cstring): ptr cQShortcut {.importc: "QShortcut_new8".}
proc fcQShortcut_new9(vtbl: pointer, key: cint, parent: pointer, member: cstring, ambiguousMember: cstring, context: cint): ptr cQShortcut {.importc: "QShortcut_new9".}
proc fcQShortcut_staticMetaObject(): pointer {.importc: "QShortcut_staticMetaObject".}
proc fcQShortcut_delete(self: pointer) {.importc: "QShortcut_delete".}

proc metaObject*(self: gen_qshortcut_types.QShortcut, ): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQShortcut_metaObject(self.h))

proc metacast*(self: gen_qshortcut_types.QShortcut, param1: cstring): pointer =
  fcQShortcut_metacast(self.h, param1)

proc metacall*(self: gen_qshortcut_types.QShortcut, param1: cint, param2: cint, param3: pointer): cint =
  fcQShortcut_metacall(self.h, cint(param1), param2, param3)

proc tr*(_: type gen_qshortcut_types.QShortcut, s: cstring): string =
  let v_ms = fcQShortcut_tr(s)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc setKey*(self: gen_qshortcut_types.QShortcut, key: gen_qkeysequence_types.QKeySequence): void =
  fcQShortcut_setKey(self.h, key.h)

proc key*(self: gen_qshortcut_types.QShortcut, ): gen_qkeysequence_types.QKeySequence =
  gen_qkeysequence_types.QKeySequence(h: fcQShortcut_key(self.h))

proc setKeys*(self: gen_qshortcut_types.QShortcut, key: cint): void =
  fcQShortcut_setKeys(self.h, cint(key))

proc setKeys*(self: gen_qshortcut_types.QShortcut, keys: seq[gen_qkeysequence_types.QKeySequence]): void =
  var keys_CArray = newSeq[pointer](len(keys))
  for i in 0..<len(keys):
    keys_CArray[i] = keys[i].h

  fcQShortcut_setKeysWithKeys(self.h, struct_miqt_array(len: csize_t(len(keys)), data: if len(keys) == 0: nil else: addr(keys_CArray[0])))

proc keys*(self: gen_qshortcut_types.QShortcut, ): seq[gen_qkeysequence_types.QKeySequence] =
  var v_ma = fcQShortcut_keys(self.h)
  var vx_ret = newSeq[gen_qkeysequence_types.QKeySequence](int(v_ma.len))
  let v_outCast = cast[ptr UncheckedArray[pointer]](v_ma.data)
  for i in 0 ..< v_ma.len:
    vx_ret[i] = gen_qkeysequence_types.QKeySequence(h: v_outCast[i])
  vx_ret

proc setEnabled*(self: gen_qshortcut_types.QShortcut, enable: bool): void =
  fcQShortcut_setEnabled(self.h, enable)

proc isEnabled*(self: gen_qshortcut_types.QShortcut, ): bool =
  fcQShortcut_isEnabled(self.h)

proc setContext*(self: gen_qshortcut_types.QShortcut, context: cint): void =
  fcQShortcut_setContext(self.h, cint(context))

proc context*(self: gen_qshortcut_types.QShortcut, ): cint =
  cint(fcQShortcut_context(self.h))

proc setAutoRepeat*(self: gen_qshortcut_types.QShortcut, on: bool): void =
  fcQShortcut_setAutoRepeat(self.h, on)

proc autoRepeat*(self: gen_qshortcut_types.QShortcut, ): bool =
  fcQShortcut_autoRepeat(self.h)

proc id*(self: gen_qshortcut_types.QShortcut, ): cint =
  fcQShortcut_id(self.h)

proc setWhatsThis*(self: gen_qshortcut_types.QShortcut, text: string): void =
  fcQShortcut_setWhatsThis(self.h, struct_miqt_string(data: text, len: csize_t(len(text))))

proc whatsThis*(self: gen_qshortcut_types.QShortcut, ): string =
  let v_ms = fcQShortcut_whatsThis(self.h)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc activated*(self: gen_qshortcut_types.QShortcut, ): void =
  fcQShortcut_activated(self.h)

type QShortcutactivatedSlot* = proc()
proc miqt_exec_callback_cQShortcut_activated(slot: int) {.exportc: "miqt_exec_callback_QShortcut_activated".} =
  let nimfunc = cast[ptr QShortcutactivatedSlot](cast[pointer](slot))
  nimfunc[]()

proc onactivated*(self: gen_qshortcut_types.QShortcut, slot: QShortcutactivatedSlot) =
  var tmp = new QShortcutactivatedSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQShortcut_connect_activated(self.h, cast[int](addr tmp[]))

proc activatedAmbiguously*(self: gen_qshortcut_types.QShortcut, ): void =
  fcQShortcut_activatedAmbiguously(self.h)

type QShortcutactivatedAmbiguouslySlot* = proc()
proc miqt_exec_callback_cQShortcut_activatedAmbiguously(slot: int) {.exportc: "miqt_exec_callback_QShortcut_activatedAmbiguously".} =
  let nimfunc = cast[ptr QShortcutactivatedAmbiguouslySlot](cast[pointer](slot))
  nimfunc[]()

proc onactivatedAmbiguously*(self: gen_qshortcut_types.QShortcut, slot: QShortcutactivatedAmbiguouslySlot) =
  var tmp = new QShortcutactivatedAmbiguouslySlot
  tmp[] = slot
  GC_ref(tmp)
  fcQShortcut_connect_activatedAmbiguously(self.h, cast[int](addr tmp[]))

proc tr*(_: type gen_qshortcut_types.QShortcut, s: cstring, c: cstring): string =
  let v_ms = fcQShortcut_tr2(s, c)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc tr*(_: type gen_qshortcut_types.QShortcut, s: cstring, c: cstring, n: cint): string =
  let v_ms = fcQShortcut_tr3(s, c, n)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
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
type QShortcutVTable* = object
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
proc QShortcutmetaObject*(self: gen_qshortcut_types.QShortcut, ): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQShortcut_virtualbase_metaObject(self.h))

proc miqt_exec_callback_cQShortcut_metaObject(vtbl: pointer, self: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QShortcutVTable](vtbl)
  let self = QShortcut(h: self)
  var virtualReturn = vtbl[].metaObject(self)
  virtualReturn.h

proc QShortcutmetacast*(self: gen_qshortcut_types.QShortcut, param1: cstring): pointer =
  fcQShortcut_virtualbase_metacast(self.h, param1)

proc miqt_exec_callback_cQShortcut_metacast(vtbl: pointer, self: pointer, param1: cstring): pointer {.cdecl.} =
  let vtbl = cast[ptr QShortcutVTable](vtbl)
  let self = QShortcut(h: self)
  let slotval1 = (param1)
  var virtualReturn = vtbl[].metacast(self, slotval1)
  virtualReturn

proc QShortcutmetacall*(self: gen_qshortcut_types.QShortcut, param1: cint, param2: cint, param3: pointer): cint =
  fcQShortcut_virtualbase_metacall(self.h, cint(param1), param2, param3)

proc miqt_exec_callback_cQShortcut_metacall(vtbl: pointer, self: pointer, param1: cint, param2: cint, param3: pointer): cint {.cdecl.} =
  let vtbl = cast[ptr QShortcutVTable](vtbl)
  let self = QShortcut(h: self)
  let slotval1 = cint(param1)
  let slotval2 = param2
  let slotval3 = param3
  var virtualReturn = vtbl[].metacall(self, slotval1, slotval2, slotval3)
  virtualReturn

proc QShortcutevent*(self: gen_qshortcut_types.QShortcut, e: gen_qcoreevent_types.QEvent): bool =
  fcQShortcut_virtualbase_event(self.h, e.h)

proc miqt_exec_callback_cQShortcut_event(vtbl: pointer, self: pointer, e: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QShortcutVTable](vtbl)
  let self = QShortcut(h: self)
  let slotval1 = gen_qcoreevent_types.QEvent(h: e)
  var virtualReturn = vtbl[].event(self, slotval1)
  virtualReturn

proc QShortcuteventFilter*(self: gen_qshortcut_types.QShortcut, watched: gen_qobject_types.QObject, event: gen_qcoreevent_types.QEvent): bool =
  fcQShortcut_virtualbase_eventFilter(self.h, watched.h, event.h)

proc miqt_exec_callback_cQShortcut_eventFilter(vtbl: pointer, self: pointer, watched: pointer, event: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QShortcutVTable](vtbl)
  let self = QShortcut(h: self)
  let slotval1 = gen_qobject_types.QObject(h: watched)
  let slotval2 = gen_qcoreevent_types.QEvent(h: event)
  var virtualReturn = vtbl[].eventFilter(self, slotval1, slotval2)
  virtualReturn

proc QShortcuttimerEvent*(self: gen_qshortcut_types.QShortcut, event: gen_qcoreevent_types.QTimerEvent): void =
  fcQShortcut_virtualbase_timerEvent(self.h, event.h)

proc miqt_exec_callback_cQShortcut_timerEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QShortcutVTable](vtbl)
  let self = QShortcut(h: self)
  let slotval1 = gen_qcoreevent_types.QTimerEvent(h: event)
  vtbl[].timerEvent(self, slotval1)

proc QShortcutchildEvent*(self: gen_qshortcut_types.QShortcut, event: gen_qcoreevent_types.QChildEvent): void =
  fcQShortcut_virtualbase_childEvent(self.h, event.h)

proc miqt_exec_callback_cQShortcut_childEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QShortcutVTable](vtbl)
  let self = QShortcut(h: self)
  let slotval1 = gen_qcoreevent_types.QChildEvent(h: event)
  vtbl[].childEvent(self, slotval1)

proc QShortcutcustomEvent*(self: gen_qshortcut_types.QShortcut, event: gen_qcoreevent_types.QEvent): void =
  fcQShortcut_virtualbase_customEvent(self.h, event.h)

proc miqt_exec_callback_cQShortcut_customEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QShortcutVTable](vtbl)
  let self = QShortcut(h: self)
  let slotval1 = gen_qcoreevent_types.QEvent(h: event)
  vtbl[].customEvent(self, slotval1)

proc QShortcutconnectNotify*(self: gen_qshortcut_types.QShortcut, signal: gen_qmetaobject_types.QMetaMethod): void =
  fcQShortcut_virtualbase_connectNotify(self.h, signal.h)

proc miqt_exec_callback_cQShortcut_connectNotify(vtbl: pointer, self: pointer, signal: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QShortcutVTable](vtbl)
  let self = QShortcut(h: self)
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal)
  vtbl[].connectNotify(self, slotval1)

proc QShortcutdisconnectNotify*(self: gen_qshortcut_types.QShortcut, signal: gen_qmetaobject_types.QMetaMethod): void =
  fcQShortcut_virtualbase_disconnectNotify(self.h, signal.h)

proc miqt_exec_callback_cQShortcut_disconnectNotify(vtbl: pointer, self: pointer, signal: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QShortcutVTable](vtbl)
  let self = QShortcut(h: self)
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal)
  vtbl[].disconnectNotify(self, slotval1)

proc create*(T: type gen_qshortcut_types.QShortcut,
    parent: gen_qobject_types.QObject,
    vtbl: ref QShortcutVTable = nil): gen_qshortcut_types.QShortcut =
  let vtbl = if vtbl == nil: new QShortcutVTable else: vtbl
  GC_ref(vtbl)
  vtbl.vtbl.destructor = proc(vtbl: ptr cQShortcutVTable, _: ptr cQShortcut) {.cdecl.} =
    let vtbl = cast[ref QShortcutVTable](vtbl)
    GC_unref(vtbl)
  if not isNil(vtbl.metaObject):
    vtbl[].vtbl.metaObject = miqt_exec_callback_cQShortcut_metaObject
  if not isNil(vtbl.metacast):
    vtbl[].vtbl.metacast = miqt_exec_callback_cQShortcut_metacast
  if not isNil(vtbl.metacall):
    vtbl[].vtbl.metacall = miqt_exec_callback_cQShortcut_metacall
  if not isNil(vtbl.event):
    vtbl[].vtbl.event = miqt_exec_callback_cQShortcut_event
  if not isNil(vtbl.eventFilter):
    vtbl[].vtbl.eventFilter = miqt_exec_callback_cQShortcut_eventFilter
  if not isNil(vtbl.timerEvent):
    vtbl[].vtbl.timerEvent = miqt_exec_callback_cQShortcut_timerEvent
  if not isNil(vtbl.childEvent):
    vtbl[].vtbl.childEvent = miqt_exec_callback_cQShortcut_childEvent
  if not isNil(vtbl.customEvent):
    vtbl[].vtbl.customEvent = miqt_exec_callback_cQShortcut_customEvent
  if not isNil(vtbl.connectNotify):
    vtbl[].vtbl.connectNotify = miqt_exec_callback_cQShortcut_connectNotify
  if not isNil(vtbl.disconnectNotify):
    vtbl[].vtbl.disconnectNotify = miqt_exec_callback_cQShortcut_disconnectNotify
  gen_qshortcut_types.QShortcut(h: fcQShortcut_new(addr(vtbl[]), parent.h))

proc create*(T: type gen_qshortcut_types.QShortcut,
    key: gen_qkeysequence_types.QKeySequence, parent: gen_qobject_types.QObject,
    vtbl: ref QShortcutVTable = nil): gen_qshortcut_types.QShortcut =
  let vtbl = if vtbl == nil: new QShortcutVTable else: vtbl
  GC_ref(vtbl)
  vtbl.vtbl.destructor = proc(vtbl: ptr cQShortcutVTable, _: ptr cQShortcut) {.cdecl.} =
    let vtbl = cast[ref QShortcutVTable](vtbl)
    GC_unref(vtbl)
  if not isNil(vtbl.metaObject):
    vtbl[].vtbl.metaObject = miqt_exec_callback_cQShortcut_metaObject
  if not isNil(vtbl.metacast):
    vtbl[].vtbl.metacast = miqt_exec_callback_cQShortcut_metacast
  if not isNil(vtbl.metacall):
    vtbl[].vtbl.metacall = miqt_exec_callback_cQShortcut_metacall
  if not isNil(vtbl.event):
    vtbl[].vtbl.event = miqt_exec_callback_cQShortcut_event
  if not isNil(vtbl.eventFilter):
    vtbl[].vtbl.eventFilter = miqt_exec_callback_cQShortcut_eventFilter
  if not isNil(vtbl.timerEvent):
    vtbl[].vtbl.timerEvent = miqt_exec_callback_cQShortcut_timerEvent
  if not isNil(vtbl.childEvent):
    vtbl[].vtbl.childEvent = miqt_exec_callback_cQShortcut_childEvent
  if not isNil(vtbl.customEvent):
    vtbl[].vtbl.customEvent = miqt_exec_callback_cQShortcut_customEvent
  if not isNil(vtbl.connectNotify):
    vtbl[].vtbl.connectNotify = miqt_exec_callback_cQShortcut_connectNotify
  if not isNil(vtbl.disconnectNotify):
    vtbl[].vtbl.disconnectNotify = miqt_exec_callback_cQShortcut_disconnectNotify
  gen_qshortcut_types.QShortcut(h: fcQShortcut_new2(addr(vtbl[]), key.h, parent.h))

proc create*(T: type gen_qshortcut_types.QShortcut,
    key: cint, parent: gen_qobject_types.QObject,
    vtbl: ref QShortcutVTable = nil): gen_qshortcut_types.QShortcut =
  let vtbl = if vtbl == nil: new QShortcutVTable else: vtbl
  GC_ref(vtbl)
  vtbl.vtbl.destructor = proc(vtbl: ptr cQShortcutVTable, _: ptr cQShortcut) {.cdecl.} =
    let vtbl = cast[ref QShortcutVTable](vtbl)
    GC_unref(vtbl)
  if not isNil(vtbl.metaObject):
    vtbl[].vtbl.metaObject = miqt_exec_callback_cQShortcut_metaObject
  if not isNil(vtbl.metacast):
    vtbl[].vtbl.metacast = miqt_exec_callback_cQShortcut_metacast
  if not isNil(vtbl.metacall):
    vtbl[].vtbl.metacall = miqt_exec_callback_cQShortcut_metacall
  if not isNil(vtbl.event):
    vtbl[].vtbl.event = miqt_exec_callback_cQShortcut_event
  if not isNil(vtbl.eventFilter):
    vtbl[].vtbl.eventFilter = miqt_exec_callback_cQShortcut_eventFilter
  if not isNil(vtbl.timerEvent):
    vtbl[].vtbl.timerEvent = miqt_exec_callback_cQShortcut_timerEvent
  if not isNil(vtbl.childEvent):
    vtbl[].vtbl.childEvent = miqt_exec_callback_cQShortcut_childEvent
  if not isNil(vtbl.customEvent):
    vtbl[].vtbl.customEvent = miqt_exec_callback_cQShortcut_customEvent
  if not isNil(vtbl.connectNotify):
    vtbl[].vtbl.connectNotify = miqt_exec_callback_cQShortcut_connectNotify
  if not isNil(vtbl.disconnectNotify):
    vtbl[].vtbl.disconnectNotify = miqt_exec_callback_cQShortcut_disconnectNotify
  gen_qshortcut_types.QShortcut(h: fcQShortcut_new3(addr(vtbl[]), cint(key), parent.h))

proc create*(T: type gen_qshortcut_types.QShortcut,
    key: gen_qkeysequence_types.QKeySequence, parent: gen_qobject_types.QObject, member: cstring,
    vtbl: ref QShortcutVTable = nil): gen_qshortcut_types.QShortcut =
  let vtbl = if vtbl == nil: new QShortcutVTable else: vtbl
  GC_ref(vtbl)
  vtbl.vtbl.destructor = proc(vtbl: ptr cQShortcutVTable, _: ptr cQShortcut) {.cdecl.} =
    let vtbl = cast[ref QShortcutVTable](vtbl)
    GC_unref(vtbl)
  if not isNil(vtbl.metaObject):
    vtbl[].vtbl.metaObject = miqt_exec_callback_cQShortcut_metaObject
  if not isNil(vtbl.metacast):
    vtbl[].vtbl.metacast = miqt_exec_callback_cQShortcut_metacast
  if not isNil(vtbl.metacall):
    vtbl[].vtbl.metacall = miqt_exec_callback_cQShortcut_metacall
  if not isNil(vtbl.event):
    vtbl[].vtbl.event = miqt_exec_callback_cQShortcut_event
  if not isNil(vtbl.eventFilter):
    vtbl[].vtbl.eventFilter = miqt_exec_callback_cQShortcut_eventFilter
  if not isNil(vtbl.timerEvent):
    vtbl[].vtbl.timerEvent = miqt_exec_callback_cQShortcut_timerEvent
  if not isNil(vtbl.childEvent):
    vtbl[].vtbl.childEvent = miqt_exec_callback_cQShortcut_childEvent
  if not isNil(vtbl.customEvent):
    vtbl[].vtbl.customEvent = miqt_exec_callback_cQShortcut_customEvent
  if not isNil(vtbl.connectNotify):
    vtbl[].vtbl.connectNotify = miqt_exec_callback_cQShortcut_connectNotify
  if not isNil(vtbl.disconnectNotify):
    vtbl[].vtbl.disconnectNotify = miqt_exec_callback_cQShortcut_disconnectNotify
  gen_qshortcut_types.QShortcut(h: fcQShortcut_new4(addr(vtbl[]), key.h, parent.h, member))

proc create*(T: type gen_qshortcut_types.QShortcut,
    key: gen_qkeysequence_types.QKeySequence, parent: gen_qobject_types.QObject, member: cstring, ambiguousMember: cstring,
    vtbl: ref QShortcutVTable = nil): gen_qshortcut_types.QShortcut =
  let vtbl = if vtbl == nil: new QShortcutVTable else: vtbl
  GC_ref(vtbl)
  vtbl.vtbl.destructor = proc(vtbl: ptr cQShortcutVTable, _: ptr cQShortcut) {.cdecl.} =
    let vtbl = cast[ref QShortcutVTable](vtbl)
    GC_unref(vtbl)
  if not isNil(vtbl.metaObject):
    vtbl[].vtbl.metaObject = miqt_exec_callback_cQShortcut_metaObject
  if not isNil(vtbl.metacast):
    vtbl[].vtbl.metacast = miqt_exec_callback_cQShortcut_metacast
  if not isNil(vtbl.metacall):
    vtbl[].vtbl.metacall = miqt_exec_callback_cQShortcut_metacall
  if not isNil(vtbl.event):
    vtbl[].vtbl.event = miqt_exec_callback_cQShortcut_event
  if not isNil(vtbl.eventFilter):
    vtbl[].vtbl.eventFilter = miqt_exec_callback_cQShortcut_eventFilter
  if not isNil(vtbl.timerEvent):
    vtbl[].vtbl.timerEvent = miqt_exec_callback_cQShortcut_timerEvent
  if not isNil(vtbl.childEvent):
    vtbl[].vtbl.childEvent = miqt_exec_callback_cQShortcut_childEvent
  if not isNil(vtbl.customEvent):
    vtbl[].vtbl.customEvent = miqt_exec_callback_cQShortcut_customEvent
  if not isNil(vtbl.connectNotify):
    vtbl[].vtbl.connectNotify = miqt_exec_callback_cQShortcut_connectNotify
  if not isNil(vtbl.disconnectNotify):
    vtbl[].vtbl.disconnectNotify = miqt_exec_callback_cQShortcut_disconnectNotify
  gen_qshortcut_types.QShortcut(h: fcQShortcut_new5(addr(vtbl[]), key.h, parent.h, member, ambiguousMember))

proc create*(T: type gen_qshortcut_types.QShortcut,
    key: gen_qkeysequence_types.QKeySequence, parent: gen_qobject_types.QObject, member: cstring, ambiguousMember: cstring, context: cint,
    vtbl: ref QShortcutVTable = nil): gen_qshortcut_types.QShortcut =
  let vtbl = if vtbl == nil: new QShortcutVTable else: vtbl
  GC_ref(vtbl)
  vtbl.vtbl.destructor = proc(vtbl: ptr cQShortcutVTable, _: ptr cQShortcut) {.cdecl.} =
    let vtbl = cast[ref QShortcutVTable](vtbl)
    GC_unref(vtbl)
  if not isNil(vtbl.metaObject):
    vtbl[].vtbl.metaObject = miqt_exec_callback_cQShortcut_metaObject
  if not isNil(vtbl.metacast):
    vtbl[].vtbl.metacast = miqt_exec_callback_cQShortcut_metacast
  if not isNil(vtbl.metacall):
    vtbl[].vtbl.metacall = miqt_exec_callback_cQShortcut_metacall
  if not isNil(vtbl.event):
    vtbl[].vtbl.event = miqt_exec_callback_cQShortcut_event
  if not isNil(vtbl.eventFilter):
    vtbl[].vtbl.eventFilter = miqt_exec_callback_cQShortcut_eventFilter
  if not isNil(vtbl.timerEvent):
    vtbl[].vtbl.timerEvent = miqt_exec_callback_cQShortcut_timerEvent
  if not isNil(vtbl.childEvent):
    vtbl[].vtbl.childEvent = miqt_exec_callback_cQShortcut_childEvent
  if not isNil(vtbl.customEvent):
    vtbl[].vtbl.customEvent = miqt_exec_callback_cQShortcut_customEvent
  if not isNil(vtbl.connectNotify):
    vtbl[].vtbl.connectNotify = miqt_exec_callback_cQShortcut_connectNotify
  if not isNil(vtbl.disconnectNotify):
    vtbl[].vtbl.disconnectNotify = miqt_exec_callback_cQShortcut_disconnectNotify
  gen_qshortcut_types.QShortcut(h: fcQShortcut_new6(addr(vtbl[]), key.h, parent.h, member, ambiguousMember, cint(context)))

proc create*(T: type gen_qshortcut_types.QShortcut,
    key: cint, parent: gen_qobject_types.QObject, member: cstring,
    vtbl: ref QShortcutVTable = nil): gen_qshortcut_types.QShortcut =
  let vtbl = if vtbl == nil: new QShortcutVTable else: vtbl
  GC_ref(vtbl)
  vtbl.vtbl.destructor = proc(vtbl: ptr cQShortcutVTable, _: ptr cQShortcut) {.cdecl.} =
    let vtbl = cast[ref QShortcutVTable](vtbl)
    GC_unref(vtbl)
  if not isNil(vtbl.metaObject):
    vtbl[].vtbl.metaObject = miqt_exec_callback_cQShortcut_metaObject
  if not isNil(vtbl.metacast):
    vtbl[].vtbl.metacast = miqt_exec_callback_cQShortcut_metacast
  if not isNil(vtbl.metacall):
    vtbl[].vtbl.metacall = miqt_exec_callback_cQShortcut_metacall
  if not isNil(vtbl.event):
    vtbl[].vtbl.event = miqt_exec_callback_cQShortcut_event
  if not isNil(vtbl.eventFilter):
    vtbl[].vtbl.eventFilter = miqt_exec_callback_cQShortcut_eventFilter
  if not isNil(vtbl.timerEvent):
    vtbl[].vtbl.timerEvent = miqt_exec_callback_cQShortcut_timerEvent
  if not isNil(vtbl.childEvent):
    vtbl[].vtbl.childEvent = miqt_exec_callback_cQShortcut_childEvent
  if not isNil(vtbl.customEvent):
    vtbl[].vtbl.customEvent = miqt_exec_callback_cQShortcut_customEvent
  if not isNil(vtbl.connectNotify):
    vtbl[].vtbl.connectNotify = miqt_exec_callback_cQShortcut_connectNotify
  if not isNil(vtbl.disconnectNotify):
    vtbl[].vtbl.disconnectNotify = miqt_exec_callback_cQShortcut_disconnectNotify
  gen_qshortcut_types.QShortcut(h: fcQShortcut_new7(addr(vtbl[]), cint(key), parent.h, member))

proc create*(T: type gen_qshortcut_types.QShortcut,
    key: cint, parent: gen_qobject_types.QObject, member: cstring, ambiguousMember: cstring,
    vtbl: ref QShortcutVTable = nil): gen_qshortcut_types.QShortcut =
  let vtbl = if vtbl == nil: new QShortcutVTable else: vtbl
  GC_ref(vtbl)
  vtbl.vtbl.destructor = proc(vtbl: ptr cQShortcutVTable, _: ptr cQShortcut) {.cdecl.} =
    let vtbl = cast[ref QShortcutVTable](vtbl)
    GC_unref(vtbl)
  if not isNil(vtbl.metaObject):
    vtbl[].vtbl.metaObject = miqt_exec_callback_cQShortcut_metaObject
  if not isNil(vtbl.metacast):
    vtbl[].vtbl.metacast = miqt_exec_callback_cQShortcut_metacast
  if not isNil(vtbl.metacall):
    vtbl[].vtbl.metacall = miqt_exec_callback_cQShortcut_metacall
  if not isNil(vtbl.event):
    vtbl[].vtbl.event = miqt_exec_callback_cQShortcut_event
  if not isNil(vtbl.eventFilter):
    vtbl[].vtbl.eventFilter = miqt_exec_callback_cQShortcut_eventFilter
  if not isNil(vtbl.timerEvent):
    vtbl[].vtbl.timerEvent = miqt_exec_callback_cQShortcut_timerEvent
  if not isNil(vtbl.childEvent):
    vtbl[].vtbl.childEvent = miqt_exec_callback_cQShortcut_childEvent
  if not isNil(vtbl.customEvent):
    vtbl[].vtbl.customEvent = miqt_exec_callback_cQShortcut_customEvent
  if not isNil(vtbl.connectNotify):
    vtbl[].vtbl.connectNotify = miqt_exec_callback_cQShortcut_connectNotify
  if not isNil(vtbl.disconnectNotify):
    vtbl[].vtbl.disconnectNotify = miqt_exec_callback_cQShortcut_disconnectNotify
  gen_qshortcut_types.QShortcut(h: fcQShortcut_new8(addr(vtbl[]), cint(key), parent.h, member, ambiguousMember))

proc create*(T: type gen_qshortcut_types.QShortcut,
    key: cint, parent: gen_qobject_types.QObject, member: cstring, ambiguousMember: cstring, context: cint,
    vtbl: ref QShortcutVTable = nil): gen_qshortcut_types.QShortcut =
  let vtbl = if vtbl == nil: new QShortcutVTable else: vtbl
  GC_ref(vtbl)
  vtbl.vtbl.destructor = proc(vtbl: ptr cQShortcutVTable, _: ptr cQShortcut) {.cdecl.} =
    let vtbl = cast[ref QShortcutVTable](vtbl)
    GC_unref(vtbl)
  if not isNil(vtbl.metaObject):
    vtbl[].vtbl.metaObject = miqt_exec_callback_cQShortcut_metaObject
  if not isNil(vtbl.metacast):
    vtbl[].vtbl.metacast = miqt_exec_callback_cQShortcut_metacast
  if not isNil(vtbl.metacall):
    vtbl[].vtbl.metacall = miqt_exec_callback_cQShortcut_metacall
  if not isNil(vtbl.event):
    vtbl[].vtbl.event = miqt_exec_callback_cQShortcut_event
  if not isNil(vtbl.eventFilter):
    vtbl[].vtbl.eventFilter = miqt_exec_callback_cQShortcut_eventFilter
  if not isNil(vtbl.timerEvent):
    vtbl[].vtbl.timerEvent = miqt_exec_callback_cQShortcut_timerEvent
  if not isNil(vtbl.childEvent):
    vtbl[].vtbl.childEvent = miqt_exec_callback_cQShortcut_childEvent
  if not isNil(vtbl.customEvent):
    vtbl[].vtbl.customEvent = miqt_exec_callback_cQShortcut_customEvent
  if not isNil(vtbl.connectNotify):
    vtbl[].vtbl.connectNotify = miqt_exec_callback_cQShortcut_connectNotify
  if not isNil(vtbl.disconnectNotify):
    vtbl[].vtbl.disconnectNotify = miqt_exec_callback_cQShortcut_disconnectNotify
  gen_qshortcut_types.QShortcut(h: fcQShortcut_new9(addr(vtbl[]), cint(key), parent.h, member, ambiguousMember, cint(context)))

proc staticMetaObject*(_: type gen_qshortcut_types.QShortcut): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQShortcut_staticMetaObject())
proc delete*(self: gen_qshortcut_types.QShortcut) =
  fcQShortcut_delete(self.h)
