import ./qtcore_pkg

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

import std/strutils
const privateDir = block:
  var flag = ""
  for path in QtCoreCFlags.split(" "):
    if "QtCore" in path:
      flag = " " & path & "/" & QtCoreBuildVersion & " " & path & "/" & QtCoreBuildVersion & "/QtCore"
      break
  flag

{.compile("../libseaqt/libseaqt.cpp", QtCoreCFlags & privateDir).}

type QObject_connectSlot* = proc(args: pointer) {.gcsafe, raises: [].}

proc miqt_exec_callback_QObject(slot: int, args: pointer) {.exportc.} =
  let slot = cast[ptr QObject_connectSlot](slot)
  slot[](args)

proc miqt_exec_callback_QObject_release(slot: int) {.exportc.} =
  let slot = cast[ref QObject_connectSlot](slot)
  GC_unref(slot)

proc QObject_connectRawSlot*(
  sender: pointer,
  signal: cstring,
  receiver: pointer,
  slot: int,
  release: pointer,
  typeX: cint,
  senderMetaObject: pointer,
): pointer {.importc.}


type QObjectDataEnumEnum* = distinct cint
template CheckForParentChildLoopsWarnDepth*(_: type QObjectDataEnumEnum): untyped = 4096


import ./gen_qobject_types
export gen_qobject_types

import
  ./gen_qcoreevent_types,
  ./gen_qmetaobject_types,
  ./gen_qobjectdefs_types,
  ./gen_qthread_types,
  ./gen_qvariant_types
export
  gen_qcoreevent_types,
  gen_qmetaobject_types,
  gen_qobjectdefs_types,
  gen_qthread_types,
  gen_qvariant_types

type cQObjectData*{.exportc: "QObjectData", incompleteStruct.} = object
type cQObject*{.exportc: "QObject", incompleteStruct.} = object
type cQObjectUserData*{.exportc: "QObjectUserData", incompleteStruct.} = object
type cQSignalBlocker*{.exportc: "QSignalBlocker", incompleteStruct.} = object

proc fcQObjectData_dynamicMetaObject(self: pointer): pointer {.importc: "QObjectData_dynamicMetaObject".}
proc fcQObject_metaObject(self: pointer): pointer {.importc: "QObject_metaObject".}
proc fcQObject_metacast(self: pointer, param1: cstring): pointer {.importc: "QObject_metacast".}
proc fcQObject_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.importc: "QObject_metacall".}
proc fcQObject_tr(s: cstring): struct_miqt_string {.importc: "QObject_tr".}
proc fcQObject_trUtf8(s: cstring): struct_miqt_string {.importc: "QObject_trUtf8".}
proc fcQObject_event(self: pointer, event: pointer): bool {.importc: "QObject_event".}
proc fcQObject_eventFilter(self: pointer, watched: pointer, event: pointer): bool {.importc: "QObject_eventFilter".}
proc fcQObject_objectName(self: pointer): struct_miqt_string {.importc: "QObject_objectName".}
proc fcQObject_setObjectName(self: pointer, name: struct_miqt_string): void {.importc: "QObject_setObjectName".}
proc fcQObject_isWidgetType(self: pointer): bool {.importc: "QObject_isWidgetType".}
proc fcQObject_isWindowType(self: pointer): bool {.importc: "QObject_isWindowType".}
proc fcQObject_signalsBlocked(self: pointer): bool {.importc: "QObject_signalsBlocked".}
proc fcQObject_blockSignals(self: pointer, b: bool): bool {.importc: "QObject_blockSignals".}
proc fcQObject_thread(self: pointer): pointer {.importc: "QObject_thread".}
proc fcQObject_moveToThread(self: pointer, thread: pointer): void {.importc: "QObject_moveToThread".}
proc fcQObject_startTimer(self: pointer, interval: cint): cint {.importc: "QObject_startTimer".}
proc fcQObject_killTimer(self: pointer, id: cint): void {.importc: "QObject_killTimer".}
proc fcQObject_children(self: pointer): struct_miqt_array {.importc: "QObject_children".}
proc fcQObject_setParent(self: pointer, parent: pointer): void {.importc: "QObject_setParent".}
proc fcQObject_installEventFilter(self: pointer, filterObj: pointer): void {.importc: "QObject_installEventFilter".}
proc fcQObject_removeEventFilter(self: pointer, obj: pointer): void {.importc: "QObject_removeEventFilter".}
proc fcQObject_connect(sender: pointer, signal: pointer, receiver: pointer, methodVal: pointer): pointer {.importc: "QObject_connect".}
proc fcQObject_connect2(self: pointer, sender: pointer, signal: cstring, member: cstring): pointer {.importc: "QObject_connect2".}
proc fcQObject_disconnect(sender: pointer, signal: pointer, receiver: pointer, member: pointer): bool {.importc: "QObject_disconnect".}
proc fcQObject_disconnectWithQMetaObjectConnection(param1: pointer): bool {.importc: "QObject_disconnectWithQMetaObjectConnection".}
proc fcQObject_dumpObjectTree(self: pointer): void {.importc: "QObject_dumpObjectTree".}
proc fcQObject_dumpObjectInfo(self: pointer): void {.importc: "QObject_dumpObjectInfo".}
proc fcQObject_dumpObjectTree2(self: pointer): void {.importc: "QObject_dumpObjectTree2".}
proc fcQObject_dumpObjectInfo2(self: pointer): void {.importc: "QObject_dumpObjectInfo2".}
proc fcQObject_setProperty(self: pointer, name: cstring, value: pointer): bool {.importc: "QObject_setProperty".}
proc fcQObject_property(self: pointer, name: cstring): pointer {.importc: "QObject_property".}
proc fcQObject_dynamicPropertyNames(self: pointer): struct_miqt_array {.importc: "QObject_dynamicPropertyNames".}
proc fcQObject_registerUserData(): cuint {.importc: "QObject_registerUserData".}
proc fcQObject_setUserData(self: pointer, id: cuint, data: pointer): void {.importc: "QObject_setUserData".}
proc fcQObject_userData(self: pointer, id: cuint): pointer {.importc: "QObject_userData".}
proc fcQObject_destroyed(self: pointer): void {.importc: "QObject_destroyed".}
proc fcQObject_connect_destroyed(self: pointer, slot: int, callback: proc (slot: int) {.cdecl.}, release: proc(slot: int) {.cdecl.}) {.importc: "QObject_connect_destroyed".}
proc fcQObject_parent(self: pointer): pointer {.importc: "QObject_parent".}
proc fcQObject_inherits(self: pointer, classname: cstring): bool {.importc: "QObject_inherits".}
proc fcQObject_tr2(s: cstring, c: cstring): struct_miqt_string {.importc: "QObject_tr2".}
proc fcQObject_tr3(s: cstring, c: cstring, n: cint): struct_miqt_string {.importc: "QObject_tr3".}
proc fcQObject_trUtf82(s: cstring, c: cstring): struct_miqt_string {.importc: "QObject_trUtf82".}
proc fcQObject_trUtf83(s: cstring, c: cstring, n: cint): struct_miqt_string {.importc: "QObject_trUtf83".}
proc fcQObject_startTimer2(self: pointer, interval: cint, timerType: cint): cint {.importc: "QObject_startTimer2".}
proc fcQObject_connect5(sender: pointer, signal: pointer, receiver: pointer, methodVal: pointer, typeVal: cint): pointer {.importc: "QObject_connect5".}
proc fcQObject_connect4(self: pointer, sender: pointer, signal: cstring, member: cstring, typeVal: cint): pointer {.importc: "QObject_connect4".}
proc fcQObject_destroyed1(self: pointer, param1: pointer): void {.importc: "QObject_destroyed1".}
proc fcQObject_connect_destroyed1(self: pointer, slot: int, callback: proc (slot: int, param1: pointer) {.cdecl.}, release: proc(slot: int) {.cdecl.}) {.importc: "QObject_connect_destroyed1".}
proc fcQObject_vtbl(self: pointer): pointer {.importc: "QObject_vtbl".}
proc fcQObject_vdata(self: pointer): pointer {.importc: "QObject_vdata".}

type cQObjectVTable {.pure.} = object
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
proc fcQObject_virtualbase_metaObject(self: pointer): pointer {.importc: "QObject_virtualbase_metaObject".}
proc fcQObject_virtualbase_metacast(self: pointer, param1: cstring): pointer {.importc: "QObject_virtualbase_metacast".}
proc fcQObject_virtualbase_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.importc: "QObject_virtualbase_metacall".}
proc fcQObject_virtualbase_event(self: pointer, event: pointer): bool {.importc: "QObject_virtualbase_event".}
proc fcQObject_virtualbase_eventFilter(self: pointer, watched: pointer, event: pointer): bool {.importc: "QObject_virtualbase_eventFilter".}
proc fcQObject_virtualbase_timerEvent(self: pointer, event: pointer): void {.importc: "QObject_virtualbase_timerEvent".}
proc fcQObject_virtualbase_childEvent(self: pointer, event: pointer): void {.importc: "QObject_virtualbase_childEvent".}
proc fcQObject_virtualbase_customEvent(self: pointer, event: pointer): void {.importc: "QObject_virtualbase_customEvent".}
proc fcQObject_virtualbase_connectNotify(self: pointer, signal: pointer): void {.importc: "QObject_virtualbase_connectNotify".}
proc fcQObject_virtualbase_disconnectNotify(self: pointer, signal: pointer): void {.importc: "QObject_virtualbase_disconnectNotify".}
proc fcQObject_protectedbase_sender(self: pointer): pointer {.importc: "QObject_protectedbase_sender".}
proc fcQObject_protectedbase_senderSignalIndex(self: pointer): cint {.importc: "QObject_protectedbase_senderSignalIndex".}
proc fcQObject_protectedbase_receivers(self: pointer, signal: cstring): cint {.importc: "QObject_protectedbase_receivers".}
proc fcQObject_protectedbase_isSignalConnected(self: pointer, signal: pointer): bool {.importc: "QObject_protectedbase_isSignalConnected".}
proc fcQObject_new(vtbl, vdata: pointer): ptr cQObject {.importc: "QObject_new".}
proc fcQObject_new2(vtbl, vdata: pointer, parent: pointer): ptr cQObject {.importc: "QObject_new2".}
proc fcQObject_staticMetaObject(): pointer {.importc: "QObject_staticMetaObject".}
proc fcQObjectUserData_new(): ptr cQObjectUserData {.importc: "QObjectUserData_new".}
proc fcQSignalBlocker_reblock(self: pointer): void {.importc: "QSignalBlocker_reblock".}
proc fcQSignalBlocker_unblock(self: pointer): void {.importc: "QSignalBlocker_unblock".}
proc fcQSignalBlocker_new(o: pointer): ptr cQSignalBlocker {.importc: "QSignalBlocker_new".}
proc fcQSignalBlocker_new2(o: pointer): ptr cQSignalBlocker {.importc: "QSignalBlocker_new2".}

proc dynamicMetaObject*(self: gen_qobject_types.QObjectData): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQObjectData_dynamicMetaObject(self.h), owned: false)

proc metaObject*(self: gen_qobject_types.QObject): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQObject_metaObject(self.h), owned: false)

proc metacast*(self: gen_qobject_types.QObject, param1: cstring): pointer =
  fcQObject_metacast(self.h, param1)

proc metacall*(self: gen_qobject_types.QObject, param1: cint, param2: cint, param3: pointer): cint =
  fcQObject_metacall(self.h, cint(param1), param2, param3)

proc tr*(_: type gen_qobject_types.QObject, s: cstring): string =
  let v_ms = fcQObject_tr(s)
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

proc trUtf8*(_: type gen_qobject_types.QObject, s: cstring): string =
  let v_ms = fcQObject_trUtf8(s)
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

proc event*(self: gen_qobject_types.QObject, event: gen_qcoreevent_types.QEvent): bool =
  fcQObject_event(self.h, event.h)

proc eventFilter*(self: gen_qobject_types.QObject, watched: gen_qobject_types.QObject, event: gen_qcoreevent_types.QEvent): bool =
  fcQObject_eventFilter(self.h, watched.h, event.h)

proc objectName*(self: gen_qobject_types.QObject): string =
  let v_ms = fcQObject_objectName(self.h)
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

proc setObjectName*(self: gen_qobject_types.QObject, name: openArray[char]): void =
  fcQObject_setObjectName(self.h, struct_miqt_string(data: if len(name) > 0: addr name[0] else: nil, len: csize_t(len(name))))

proc isWidgetType*(self: gen_qobject_types.QObject): bool =
  fcQObject_isWidgetType(self.h)

proc isWindowType*(self: gen_qobject_types.QObject): bool =
  fcQObject_isWindowType(self.h)

proc signalsBlocked*(self: gen_qobject_types.QObject): bool =
  fcQObject_signalsBlocked(self.h)

proc blockSignals*(self: gen_qobject_types.QObject, b: bool): bool =
  fcQObject_blockSignals(self.h, b)

proc thread*(self: gen_qobject_types.QObject): gen_qthread_types.QThread =
  gen_qthread_types.QThread(h: fcQObject_thread(self.h), owned: false)

proc moveToThread*(self: gen_qobject_types.QObject, thread: gen_qthread_types.QThread): void =
  fcQObject_moveToThread(self.h, thread.h)

proc startTimer*(self: gen_qobject_types.QObject, interval: cint): cint =
  fcQObject_startTimer(self.h, interval)

proc killTimer*(self: gen_qobject_types.QObject, id: cint): void =
  fcQObject_killTimer(self.h, id)

proc children*(self: gen_qobject_types.QObject): seq[gen_qobject_types.QObject] =
  var v_ma = fcQObject_children(self.h)
  var vx_ret = newSeq[gen_qobject_types.QObject](int(v_ma.len))
  let v_outCast = cast[ptr UncheckedArray[pointer]](v_ma.data)
  for i in 0 ..< v_ma.len:
    vx_ret[i] = gen_qobject_types.QObject(h: v_outCast[i], owned: false)
  c_free(v_ma.data)
  vx_ret

proc setParent*(self: gen_qobject_types.QObject, parent: gen_qobject_types.QObject): void =
  fcQObject_setParent(self.h, parent.h)

proc installEventFilter*(self: gen_qobject_types.QObject, filterObj: gen_qobject_types.QObject): void =
  fcQObject_installEventFilter(self.h, filterObj.h)

proc removeEventFilter*(self: gen_qobject_types.QObject, obj: gen_qobject_types.QObject): void =
  fcQObject_removeEventFilter(self.h, obj.h)

proc connect*(_: type gen_qobject_types.QObject, sender: gen_qobject_types.QObject, signal: gen_qmetaobject_types.QMetaMethod, receiver: gen_qobject_types.QObject, methodVal: gen_qmetaobject_types.QMetaMethod): gen_qobjectdefs_types.QMetaObjectConnection =
  gen_qobjectdefs_types.QMetaObjectConnection(h: fcQObject_connect(sender.h, signal.h, receiver.h, methodVal.h), owned: true)

proc connect*(self: gen_qobject_types.QObject, sender: gen_qobject_types.QObject, signal: cstring, member: cstring): gen_qobjectdefs_types.QMetaObjectConnection =
  gen_qobjectdefs_types.QMetaObjectConnection(h: fcQObject_connect2(self.h, sender.h, signal, member), owned: true)

proc disconnect*(_: type gen_qobject_types.QObject, sender: gen_qobject_types.QObject, signal: gen_qmetaobject_types.QMetaMethod, receiver: gen_qobject_types.QObject, member: gen_qmetaobject_types.QMetaMethod): bool =
  fcQObject_disconnect(sender.h, signal.h, receiver.h, member.h)

proc disconnect*(_: type gen_qobject_types.QObject, param1: gen_qobjectdefs_types.QMetaObjectConnection): bool =
  fcQObject_disconnectWithQMetaObjectConnection(param1.h)

proc dumpObjectTree*(self: gen_qobject_types.QObject): void =
  fcQObject_dumpObjectTree(self.h)

proc dumpObjectInfo*(self: gen_qobject_types.QObject): void =
  fcQObject_dumpObjectInfo(self.h)

proc dumpObjectTree2*(self: gen_qobject_types.QObject): void =
  fcQObject_dumpObjectTree2(self.h)

proc dumpObjectInfo2*(self: gen_qobject_types.QObject): void =
  fcQObject_dumpObjectInfo2(self.h)

proc setProperty*(self: gen_qobject_types.QObject, name: cstring, value: gen_qvariant_types.QVariant): bool =
  fcQObject_setProperty(self.h, name, value.h)

proc property*(self: gen_qobject_types.QObject, name: cstring): gen_qvariant_types.QVariant =
  gen_qvariant_types.QVariant(h: fcQObject_property(self.h, name), owned: true)

proc dynamicPropertyNames*(self: gen_qobject_types.QObject): seq[seq[byte]] =
  var v_ma = fcQObject_dynamicPropertyNames(self.h)
  var vx_ret = newSeq[seq[byte]](int(v_ma.len))
  let v_outCast = cast[ptr UncheckedArray[struct_miqt_string]](v_ma.data)
  for i in 0 ..< v_ma.len:
    var vx_lv_bytearray = v_outCast[i]
    var vx_lvx_ret = @(toOpenArray(cast[ptr UncheckedArray[byte]](vx_lv_bytearray.data), 0, int(vx_lv_bytearray.len)-1))
    c_free(vx_lv_bytearray.data)
    vx_ret[i] = vx_lvx_ret
  c_free(v_ma.data)
  vx_ret

proc registerUserData*(_: type gen_qobject_types.QObject): cuint =
  fcQObject_registerUserData()

proc setUserData*(self: gen_qobject_types.QObject, id: cuint, data: gen_qobject_types.QObjectUserData): void =
  fcQObject_setUserData(self.h, id, data.h)

proc userData*(self: gen_qobject_types.QObject, id: cuint): gen_qobject_types.QObjectUserData =
  gen_qobject_types.QObjectUserData(h: fcQObject_userData(self.h, id), owned: false)

proc destroyed*(self: gen_qobject_types.QObject): void =
  fcQObject_destroyed(self.h)

type QObjectdestroyedSlot* = proc()
proc fcQObject_slot_callback_destroyed(slot: int) {.cdecl.} =
  let nimfunc = cast[ptr QObjectdestroyedSlot](cast[pointer](slot))
  nimfunc[]()

proc fcQObject_slot_callback_destroyed_release(slot: int) {.cdecl.} =
  let nimfunc = cast[ref QObjectdestroyedSlot](cast[pointer](slot))
  GC_unref(nimfunc)

proc onDestroyed*(self: gen_qobject_types.QObject, slot: QObjectdestroyedSlot) =
  var tmp = new QObjectdestroyedSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQObject_connect_destroyed(self.h, cast[int](addr tmp[]), fcQObject_slot_callback_destroyed, fcQObject_slot_callback_destroyed_release)

proc parent*(self: gen_qobject_types.QObject): gen_qobject_types.QObject =
  gen_qobject_types.QObject(h: fcQObject_parent(self.h), owned: false)

proc inherits*(self: gen_qobject_types.QObject, classname: cstring): bool =
  fcQObject_inherits(self.h, classname)

proc tr*(_: type gen_qobject_types.QObject, s: cstring, c: cstring): string =
  let v_ms = fcQObject_tr2(s, c)
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

proc tr*(_: type gen_qobject_types.QObject, s: cstring, c: cstring, n: cint): string =
  let v_ms = fcQObject_tr3(s, c, n)
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

proc trUtf8*(_: type gen_qobject_types.QObject, s: cstring, c: cstring): string =
  let v_ms = fcQObject_trUtf82(s, c)
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

proc trUtf8*(_: type gen_qobject_types.QObject, s: cstring, c: cstring, n: cint): string =
  let v_ms = fcQObject_trUtf83(s, c, n)
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

proc startTimer*(self: gen_qobject_types.QObject, interval: cint, timerType: cint): cint =
  fcQObject_startTimer2(self.h, interval, cint(timerType))

proc connect*(_: type gen_qobject_types.QObject, sender: gen_qobject_types.QObject, signal: gen_qmetaobject_types.QMetaMethod, receiver: gen_qobject_types.QObject, methodVal: gen_qmetaobject_types.QMetaMethod, typeVal: cint): gen_qobjectdefs_types.QMetaObjectConnection =
  gen_qobjectdefs_types.QMetaObjectConnection(h: fcQObject_connect5(sender.h, signal.h, receiver.h, methodVal.h, cint(typeVal)), owned: true)

proc connect*(self: gen_qobject_types.QObject, sender: gen_qobject_types.QObject, signal: cstring, member: cstring, typeVal: cint): gen_qobjectdefs_types.QMetaObjectConnection =
  gen_qobjectdefs_types.QMetaObjectConnection(h: fcQObject_connect4(self.h, sender.h, signal, member, cint(typeVal)), owned: true)

proc destroyed*(self: gen_qobject_types.QObject, param1: gen_qobject_types.QObject): void =
  fcQObject_destroyed1(self.h, param1.h)

type QObjectdestroyed1Slot* = proc(param1: gen_qobject_types.QObject)
proc fcQObject_slot_callback_destroyed1(slot: int, param1: pointer) {.cdecl.} =
  let nimfunc = cast[ptr QObjectdestroyed1Slot](cast[pointer](slot))
  let slotval1 = gen_qobject_types.QObject(h: param1, owned: false)

  nimfunc[](slotval1)

proc fcQObject_slot_callback_destroyed1_release(slot: int) {.cdecl.} =
  let nimfunc = cast[ref QObjectdestroyed1Slot](cast[pointer](slot))
  GC_unref(nimfunc)

proc onDestroyed*(self: gen_qobject_types.QObject, slot: QObjectdestroyed1Slot) =
  var tmp = new QObjectdestroyed1Slot
  tmp[] = slot
  GC_ref(tmp)
  fcQObject_connect_destroyed1(self.h, cast[int](addr tmp[]), fcQObject_slot_callback_destroyed1, fcQObject_slot_callback_destroyed1_release)

type QObjectmetaObjectProc* = proc(self: QObject): gen_qobjectdefs_types.QMetaObject {.raises: [], gcsafe.}
type QObjectmetacastProc* = proc(self: QObject, param1: cstring): pointer {.raises: [], gcsafe.}
type QObjectmetacallProc* = proc(self: QObject, param1: cint, param2: cint, param3: pointer): cint {.raises: [], gcsafe.}
type QObjecteventProc* = proc(self: QObject, event: gen_qcoreevent_types.QEvent): bool {.raises: [], gcsafe.}
type QObjecteventFilterProc* = proc(self: QObject, watched: gen_qobject_types.QObject, event: gen_qcoreevent_types.QEvent): bool {.raises: [], gcsafe.}
type QObjecttimerEventProc* = proc(self: QObject, event: gen_qcoreevent_types.QTimerEvent): void {.raises: [], gcsafe.}
type QObjectchildEventProc* = proc(self: QObject, event: gen_qcoreevent_types.QChildEvent): void {.raises: [], gcsafe.}
type QObjectcustomEventProc* = proc(self: QObject, event: gen_qcoreevent_types.QEvent): void {.raises: [], gcsafe.}
type QObjectconnectNotifyProc* = proc(self: QObject, signal: gen_qmetaobject_types.QMetaMethod): void {.raises: [], gcsafe.}
type QObjectdisconnectNotifyProc* = proc(self: QObject, signal: gen_qmetaobject_types.QMetaMethod): void {.raises: [], gcsafe.}

type QObjectVTable* {.inheritable, pure.} = object
  vtbl: cQObjectVTable
  metaObject*: QObjectmetaObjectProc
  metacast*: QObjectmetacastProc
  metacall*: QObjectmetacallProc
  event*: QObjecteventProc
  eventFilter*: QObjecteventFilterProc
  timerEvent*: QObjecttimerEventProc
  childEvent*: QObjectchildEventProc
  customEvent*: QObjectcustomEventProc
  connectNotify*: QObjectconnectNotifyProc
  disconnectNotify*: QObjectdisconnectNotifyProc

proc QObjectmetaObject*(self: gen_qobject_types.QObject): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQObject_virtualbase_metaObject(self.h), owned: false)

proc QObjectmetacast*(self: gen_qobject_types.QObject, param1: cstring): pointer =
  fcQObject_virtualbase_metacast(self.h, param1)

proc QObjectmetacall*(self: gen_qobject_types.QObject, param1: cint, param2: cint, param3: pointer): cint =
  fcQObject_virtualbase_metacall(self.h, cint(param1), param2, param3)

proc QObjectevent*(self: gen_qobject_types.QObject, event: gen_qcoreevent_types.QEvent): bool =
  fcQObject_virtualbase_event(self.h, event.h)

proc QObjecteventFilter*(self: gen_qobject_types.QObject, watched: gen_qobject_types.QObject, event: gen_qcoreevent_types.QEvent): bool =
  fcQObject_virtualbase_eventFilter(self.h, watched.h, event.h)

proc QObjecttimerEvent*(self: gen_qobject_types.QObject, event: gen_qcoreevent_types.QTimerEvent): void =
  fcQObject_virtualbase_timerEvent(self.h, event.h)

proc QObjectchildEvent*(self: gen_qobject_types.QObject, event: gen_qcoreevent_types.QChildEvent): void =
  fcQObject_virtualbase_childEvent(self.h, event.h)

proc QObjectcustomEvent*(self: gen_qobject_types.QObject, event: gen_qcoreevent_types.QEvent): void =
  fcQObject_virtualbase_customEvent(self.h, event.h)

proc QObjectconnectNotify*(self: gen_qobject_types.QObject, signal: gen_qmetaobject_types.QMetaMethod): void =
  fcQObject_virtualbase_connectNotify(self.h, signal.h)

proc QObjectdisconnectNotify*(self: gen_qobject_types.QObject, signal: gen_qmetaobject_types.QMetaMethod): void =
  fcQObject_virtualbase_disconnectNotify(self.h, signal.h)


proc fcQObject_vtable_callback_metaObject(self: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QObjectVTable](fcQObject_vdata(self))
  let self = QObject(h: self)
  var virtualReturn = vtbl[].metaObject(self)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc fcQObject_vtable_callback_metacast(self: pointer, param1: cstring): pointer {.cdecl.} =
  let vtbl = cast[ptr QObjectVTable](fcQObject_vdata(self))
  let self = QObject(h: self)
  let slotval1 = (param1)
  var virtualReturn = vtbl[].metacast(self, slotval1)
  virtualReturn

proc fcQObject_vtable_callback_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.cdecl.} =
  let vtbl = cast[ptr QObjectVTable](fcQObject_vdata(self))
  let self = QObject(h: self)
  let slotval1 = cint(param1)
  let slotval2 = param2
  let slotval3 = param3
  var virtualReturn = vtbl[].metacall(self, slotval1, slotval2, slotval3)
  virtualReturn

proc fcQObject_vtable_callback_event(self: pointer, event: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QObjectVTable](fcQObject_vdata(self))
  let self = QObject(h: self)
  let slotval1 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  var virtualReturn = vtbl[].event(self, slotval1)
  virtualReturn

proc fcQObject_vtable_callback_eventFilter(self: pointer, watched: pointer, event: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QObjectVTable](fcQObject_vdata(self))
  let self = QObject(h: self)
  let slotval1 = gen_qobject_types.QObject(h: watched, owned: false)
  let slotval2 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  var virtualReturn = vtbl[].eventFilter(self, slotval1, slotval2)
  virtualReturn

proc fcQObject_vtable_callback_timerEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QObjectVTable](fcQObject_vdata(self))
  let self = QObject(h: self)
  let slotval1 = gen_qcoreevent_types.QTimerEvent(h: event, owned: false)
  vtbl[].timerEvent(self, slotval1)

proc fcQObject_vtable_callback_childEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QObjectVTable](fcQObject_vdata(self))
  let self = QObject(h: self)
  let slotval1 = gen_qcoreevent_types.QChildEvent(h: event, owned: false)
  vtbl[].childEvent(self, slotval1)

proc fcQObject_vtable_callback_customEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QObjectVTable](fcQObject_vdata(self))
  let self = QObject(h: self)
  let slotval1 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  vtbl[].customEvent(self, slotval1)

proc fcQObject_vtable_callback_connectNotify(self: pointer, signal: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QObjectVTable](fcQObject_vdata(self))
  let self = QObject(h: self)
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal, owned: false)
  vtbl[].connectNotify(self, slotval1)

proc fcQObject_vtable_callback_disconnectNotify(self: pointer, signal: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QObjectVTable](fcQObject_vdata(self))
  let self = QObject(h: self)
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal, owned: false)
  vtbl[].disconnectNotify(self, slotval1)

type VirtualQObject* {.inheritable.} = ref object of QObject
  vtbl*: cQObjectVTable

method metaObject*(self: VirtualQObject): gen_qobjectdefs_types.QMetaObject {.base.} =
  QObjectmetaObject(self[])
method metacast*(self: VirtualQObject, param1: cstring): pointer {.base.} =
  QObjectmetacast(self[], param1)
method metacall*(self: VirtualQObject, param1: cint, param2: cint, param3: pointer): cint {.base.} =
  QObjectmetacall(self[], param1, param2, param3)
method event*(self: VirtualQObject, event: gen_qcoreevent_types.QEvent): bool {.base.} =
  QObjectevent(self[], event)
method eventFilter*(self: VirtualQObject, watched: gen_qobject_types.QObject, event: gen_qcoreevent_types.QEvent): bool {.base.} =
  QObjecteventFilter(self[], watched, event)
method timerEvent*(self: VirtualQObject, event: gen_qcoreevent_types.QTimerEvent): void {.base.} =
  QObjecttimerEvent(self[], event)
method childEvent*(self: VirtualQObject, event: gen_qcoreevent_types.QChildEvent): void {.base.} =
  QObjectchildEvent(self[], event)
method customEvent*(self: VirtualQObject, event: gen_qcoreevent_types.QEvent): void {.base.} =
  QObjectcustomEvent(self[], event)
method connectNotify*(self: VirtualQObject, signal: gen_qmetaobject_types.QMetaMethod): void {.base.} =
  QObjectconnectNotify(self[], signal)
method disconnectNotify*(self: VirtualQObject, signal: gen_qmetaobject_types.QMetaMethod): void {.base.} =
  QObjectdisconnectNotify(self[], signal)

proc fcQObject_method_callback_metaObject(self: pointer): pointer {.cdecl.} =
  let inst = cast[VirtualQObject](fcQObject_vdata(self))
  var virtualReturn = inst.metaObject()
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc fcQObject_method_callback_metacast(self: pointer, param1: cstring): pointer {.cdecl.} =
  let inst = cast[VirtualQObject](fcQObject_vdata(self))
  let slotval1 = (param1)
  var virtualReturn = inst.metacast(slotval1)
  virtualReturn

proc fcQObject_method_callback_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.cdecl.} =
  let inst = cast[VirtualQObject](fcQObject_vdata(self))
  let slotval1 = cint(param1)
  let slotval2 = param2
  let slotval3 = param3
  var virtualReturn = inst.metacall(slotval1, slotval2, slotval3)
  virtualReturn

proc fcQObject_method_callback_event(self: pointer, event: pointer): bool {.cdecl.} =
  let inst = cast[VirtualQObject](fcQObject_vdata(self))
  let slotval1 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  var virtualReturn = inst.event(slotval1)
  virtualReturn

proc fcQObject_method_callback_eventFilter(self: pointer, watched: pointer, event: pointer): bool {.cdecl.} =
  let inst = cast[VirtualQObject](fcQObject_vdata(self))
  let slotval1 = gen_qobject_types.QObject(h: watched, owned: false)
  let slotval2 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  var virtualReturn = inst.eventFilter(slotval1, slotval2)
  virtualReturn

proc fcQObject_method_callback_timerEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQObject](fcQObject_vdata(self))
  let slotval1 = gen_qcoreevent_types.QTimerEvent(h: event, owned: false)
  inst.timerEvent(slotval1)

proc fcQObject_method_callback_childEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQObject](fcQObject_vdata(self))
  let slotval1 = gen_qcoreevent_types.QChildEvent(h: event, owned: false)
  inst.childEvent(slotval1)

proc fcQObject_method_callback_customEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQObject](fcQObject_vdata(self))
  let slotval1 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  inst.customEvent(slotval1)

proc fcQObject_method_callback_connectNotify(self: pointer, signal: pointer): void {.cdecl.} =
  let inst = cast[VirtualQObject](fcQObject_vdata(self))
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal, owned: false)
  inst.connectNotify(slotval1)

proc fcQObject_method_callback_disconnectNotify(self: pointer, signal: pointer): void {.cdecl.} =
  let inst = cast[VirtualQObject](fcQObject_vdata(self))
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal, owned: false)
  inst.disconnectNotify(slotval1)


proc sender*(self: gen_qobject_types.QObject): gen_qobject_types.QObject =
  gen_qobject_types.QObject(h: fcQObject_protectedbase_sender(self.h), owned: false)

proc senderSignalIndex*(self: gen_qobject_types.QObject): cint =
  fcQObject_protectedbase_senderSignalIndex(self.h)

proc receivers*(self: gen_qobject_types.QObject, signal: cstring): cint =
  fcQObject_protectedbase_receivers(self.h, signal)

proc isSignalConnected*(self: gen_qobject_types.QObject, signal: gen_qmetaobject_types.QMetaMethod): bool =
  fcQObject_protectedbase_isSignalConnected(self.h, signal.h)

proc create*(T: type gen_qobject_types.QObject,
    vtbl: ref QObjectVTable = nil): gen_qobject_types.QObject =
  let vtbl = if vtbl == nil: new QObjectVTable else: vtbl
  GC_ref(vtbl)
  vtbl[].vtbl.destructor = proc(self: pointer) {.cdecl.} =
    let vtbl = cast[ref QObjectVTable](fcQObject_vdata(self))
    GC_unref(vtbl)
  if not isNil(vtbl[].metaObject):
    vtbl[].vtbl.metaObject = fcQObject_vtable_callback_metaObject
  if not isNil(vtbl[].metacast):
    vtbl[].vtbl.metacast = fcQObject_vtable_callback_metacast
  if not isNil(vtbl[].metacall):
    vtbl[].vtbl.metacall = fcQObject_vtable_callback_metacall
  if not isNil(vtbl[].event):
    vtbl[].vtbl.event = fcQObject_vtable_callback_event
  if not isNil(vtbl[].eventFilter):
    vtbl[].vtbl.eventFilter = fcQObject_vtable_callback_eventFilter
  if not isNil(vtbl[].timerEvent):
    vtbl[].vtbl.timerEvent = fcQObject_vtable_callback_timerEvent
  if not isNil(vtbl[].childEvent):
    vtbl[].vtbl.childEvent = fcQObject_vtable_callback_childEvent
  if not isNil(vtbl[].customEvent):
    vtbl[].vtbl.customEvent = fcQObject_vtable_callback_customEvent
  if not isNil(vtbl[].connectNotify):
    vtbl[].vtbl.connectNotify = fcQObject_vtable_callback_connectNotify
  if not isNil(vtbl[].disconnectNotify):
    vtbl[].vtbl.disconnectNotify = fcQObject_vtable_callback_disconnectNotify
  gen_qobject_types.QObject(h: fcQObject_new(addr(vtbl[].vtbl), addr(vtbl[])), owned: true)

proc create*(T: type gen_qobject_types.QObject,
    parent: gen_qobject_types.QObject,
    vtbl: ref QObjectVTable = nil): gen_qobject_types.QObject =
  let vtbl = if vtbl == nil: new QObjectVTable else: vtbl
  GC_ref(vtbl)
  vtbl[].vtbl.destructor = proc(self: pointer) {.cdecl.} =
    let vtbl = cast[ref QObjectVTable](fcQObject_vdata(self))
    GC_unref(vtbl)
  if not isNil(vtbl[].metaObject):
    vtbl[].vtbl.metaObject = fcQObject_vtable_callback_metaObject
  if not isNil(vtbl[].metacast):
    vtbl[].vtbl.metacast = fcQObject_vtable_callback_metacast
  if not isNil(vtbl[].metacall):
    vtbl[].vtbl.metacall = fcQObject_vtable_callback_metacall
  if not isNil(vtbl[].event):
    vtbl[].vtbl.event = fcQObject_vtable_callback_event
  if not isNil(vtbl[].eventFilter):
    vtbl[].vtbl.eventFilter = fcQObject_vtable_callback_eventFilter
  if not isNil(vtbl[].timerEvent):
    vtbl[].vtbl.timerEvent = fcQObject_vtable_callback_timerEvent
  if not isNil(vtbl[].childEvent):
    vtbl[].vtbl.childEvent = fcQObject_vtable_callback_childEvent
  if not isNil(vtbl[].customEvent):
    vtbl[].vtbl.customEvent = fcQObject_vtable_callback_customEvent
  if not isNil(vtbl[].connectNotify):
    vtbl[].vtbl.connectNotify = fcQObject_vtable_callback_connectNotify
  if not isNil(vtbl[].disconnectNotify):
    vtbl[].vtbl.disconnectNotify = fcQObject_vtable_callback_disconnectNotify
  gen_qobject_types.QObject(h: fcQObject_new2(addr(vtbl[].vtbl), addr(vtbl[]), parent.h), owned: true)

const cQObject_mvtbl = cQObjectVTable(
  destructor: proc(self: pointer) {.cdecl.} =
    let inst = cast[ptr typeof(VirtualQObject()[])](self.fcQObject_vtbl())
    inst[].h = nil
    inst[].owned = false,

  metaObject: fcQObject_method_callback_metaObject,
  metacast: fcQObject_method_callback_metacast,
  metacall: fcQObject_method_callback_metacall,
  event: fcQObject_method_callback_event,
  eventFilter: fcQObject_method_callback_eventFilter,
  timerEvent: fcQObject_method_callback_timerEvent,
  childEvent: fcQObject_method_callback_childEvent,
  customEvent: fcQObject_method_callback_customEvent,
  connectNotify: fcQObject_method_callback_connectNotify,
  disconnectNotify: fcQObject_method_callback_disconnectNotify,
)
proc create*(T: type gen_qobject_types.QObject,
    inst: VirtualQObject) =
  if inst[].h != nil: delete(move(inst[]))
  inst[].h = fcQObject_new(addr(cQObject_mvtbl), addr(inst[]))
  inst[].owned = true

proc create*(T: type gen_qobject_types.QObject,
    parent: gen_qobject_types.QObject,
    inst: VirtualQObject) =
  if inst[].h != nil: delete(move(inst[]))
  inst[].h = fcQObject_new2(addr(cQObject_mvtbl), addr(inst[]), parent.h)
  inst[].owned = true

proc staticMetaObject*(_: type gen_qobject_types.QObject): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQObject_staticMetaObject())
proc create*(T: type gen_qobject_types.QObjectUserData): gen_qobject_types.QObjectUserData =
  gen_qobject_types.QObjectUserData(h: fcQObjectUserData_new(), owned: true)

proc reblock*(self: gen_qobject_types.QSignalBlocker): void =
  fcQSignalBlocker_reblock(self.h)

proc unblock*(self: gen_qobject_types.QSignalBlocker): void =
  fcQSignalBlocker_unblock(self.h)

proc create*(T: type gen_qobject_types.QSignalBlocker,
    o: gen_qobject_types.QObject): gen_qobject_types.QSignalBlocker =
  gen_qobject_types.QSignalBlocker(h: fcQSignalBlocker_new(o.h), owned: true)

proc create2*(T: type gen_qobject_types.QSignalBlocker,
    o: gen_qobject_types.QObject): gen_qobject_types.QSignalBlocker =
  gen_qobject_types.QSignalBlocker(h: fcQSignalBlocker_new2(o.h), owned: true)

