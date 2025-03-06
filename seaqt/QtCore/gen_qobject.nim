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
{.compile("gen_qobject.cpp", cflags).}

const qtversion = gorge("pkg-config --modversion Qt6Core")
import std/strutils
const privateDir = block:
  var flag = ""
  for path in cflags.split(" "):
    if "QtCore" in path:
      flag = " " & path & "/" & qtversion & " " & path & "/" & qtversion & "/QtCore"
      break
  flag

{.compile("../libseaqt/libseaqt.cpp", cflags & privateDir).}


type QObjectDataEnumEnum* = distinct cint
template CheckForParentChildLoopsWarnDepth*(_: type QObjectDataEnumEnum): untyped = 4096


import ./gen_qobject_types
export gen_qobject_types

import
  ./gen_qanystringview_types,
  ./gen_qbindingstorage_types,
  ./gen_qcoreevent_types,
  ./gen_qmetaobject_types,
  ./gen_qobjectdefs_types,
  ./gen_qthread_types,
  ./gen_qvariant_types
export
  gen_qanystringview_types,
  gen_qbindingstorage_types,
  gen_qcoreevent_types,
  gen_qmetaobject_types,
  gen_qobjectdefs_types,
  gen_qthread_types,
  gen_qvariant_types

type cQObjectData*{.exportc: "QObjectData", incompleteStruct.} = object
type cQObject*{.exportc: "QObject", incompleteStruct.} = object
type cQSignalBlocker*{.exportc: "QSignalBlocker", incompleteStruct.} = object

proc fcQObjectData_dynamicMetaObject(self: pointer, ): pointer {.importc: "QObjectData_dynamicMetaObject".}
proc fcQObjectData_delete(self: pointer) {.importc: "QObjectData_delete".}
proc fcQObject_metaObject(self: pointer, ): pointer {.importc: "QObject_metaObject".}
proc fcQObject_metacast(self: pointer, param1: cstring): pointer {.importc: "QObject_metacast".}
proc fcQObject_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.importc: "QObject_metacall".}
proc fcQObject_tr(s: cstring): struct_miqt_string {.importc: "QObject_tr".}
proc fcQObject_event(self: pointer, event: pointer): bool {.importc: "QObject_event".}
proc fcQObject_eventFilter(self: pointer, watched: pointer, event: pointer): bool {.importc: "QObject_eventFilter".}
proc fcQObject_objectName(self: pointer, ): struct_miqt_string {.importc: "QObject_objectName".}
proc fcQObject_setObjectName(self: pointer, name: pointer): void {.importc: "QObject_setObjectName".}
proc fcQObject_isWidgetType(self: pointer, ): bool {.importc: "QObject_isWidgetType".}
proc fcQObject_isWindowType(self: pointer, ): bool {.importc: "QObject_isWindowType".}
proc fcQObject_isQuickItemType(self: pointer, ): bool {.importc: "QObject_isQuickItemType".}
proc fcQObject_signalsBlocked(self: pointer, ): bool {.importc: "QObject_signalsBlocked".}
proc fcQObject_blockSignals(self: pointer, b: bool): bool {.importc: "QObject_blockSignals".}
proc fcQObject_thread(self: pointer, ): pointer {.importc: "QObject_thread".}
proc fcQObject_moveToThread(self: pointer, thread: pointer): void {.importc: "QObject_moveToThread".}
proc fcQObject_startTimer(self: pointer, interval: cint): cint {.importc: "QObject_startTimer".}
proc fcQObject_killTimer(self: pointer, id: cint): void {.importc: "QObject_killTimer".}
proc fcQObject_children(self: pointer, ): struct_miqt_array {.importc: "QObject_children".}
proc fcQObject_setParent(self: pointer, parent: pointer): void {.importc: "QObject_setParent".}
proc fcQObject_installEventFilter(self: pointer, filterObj: pointer): void {.importc: "QObject_installEventFilter".}
proc fcQObject_removeEventFilter(self: pointer, obj: pointer): void {.importc: "QObject_removeEventFilter".}
proc fcQObject_connect(sender: pointer, signal: pointer, receiver: pointer, methodVal: pointer): pointer {.importc: "QObject_connect".}
proc fcQObject_connect2(self: pointer, sender: pointer, signal: cstring, member: cstring): pointer {.importc: "QObject_connect2".}
proc fcQObject_disconnect(sender: pointer, signal: pointer, receiver: pointer, member: pointer): bool {.importc: "QObject_disconnect".}
proc fcQObject_disconnectWithQMetaObjectConnection(param1: pointer): bool {.importc: "QObject_disconnectWithQMetaObjectConnection".}
proc fcQObject_dumpObjectTree(self: pointer, ): void {.importc: "QObject_dumpObjectTree".}
proc fcQObject_dumpObjectInfo(self: pointer, ): void {.importc: "QObject_dumpObjectInfo".}
proc fcQObject_setProperty(self: pointer, name: cstring, value: pointer): bool {.importc: "QObject_setProperty".}
proc fcQObject_property(self: pointer, name: cstring): pointer {.importc: "QObject_property".}
proc fcQObject_dynamicPropertyNames(self: pointer, ): struct_miqt_array {.importc: "QObject_dynamicPropertyNames".}
proc fcQObject_bindingStorage(self: pointer, ): pointer {.importc: "QObject_bindingStorage".}
proc fcQObject_bindingStorage2(self: pointer, ): pointer {.importc: "QObject_bindingStorage2".}
proc fcQObject_destroyed(self: pointer, ): void {.importc: "QObject_destroyed".}
proc fcQObject_connect_destroyed(self: pointer, slot: int) {.importc: "QObject_connect_destroyed".}
proc fcQObject_parent(self: pointer, ): pointer {.importc: "QObject_parent".}
proc fcQObject_inherits(self: pointer, classname: cstring): bool {.importc: "QObject_inherits".}
proc fcQObject_deleteLater(self: pointer, ): void {.importc: "QObject_deleteLater".}
proc fcQObject_tr2(s: cstring, c: cstring): struct_miqt_string {.importc: "QObject_tr2".}
proc fcQObject_tr3(s: cstring, c: cstring, n: cint): struct_miqt_string {.importc: "QObject_tr3".}
proc fcQObject_startTimer2(self: pointer, interval: cint, timerType: cint): cint {.importc: "QObject_startTimer2".}
proc fcQObject_connect5(sender: pointer, signal: pointer, receiver: pointer, methodVal: pointer, typeVal: cint): pointer {.importc: "QObject_connect5".}
proc fcQObject_connect4(self: pointer, sender: pointer, signal: cstring, member: cstring, typeVal: cint): pointer {.importc: "QObject_connect4".}
proc fcQObject_destroyed1(self: pointer, param1: pointer): void {.importc: "QObject_destroyed1".}
proc fcQObject_connect_destroyed1(self: pointer, slot: int) {.importc: "QObject_connect_destroyed1".}
type cQObjectVTable = object
  destructor*: proc(vtbl: ptr cQObjectVTable, self: ptr cQObject) {.cdecl, raises:[], gcsafe.}
  metaObject*: proc(vtbl, self: pointer, ): pointer {.cdecl, raises: [], gcsafe.}
  metacast*: proc(vtbl, self: pointer, param1: cstring): pointer {.cdecl, raises: [], gcsafe.}
  metacall*: proc(vtbl, self: pointer, param1: cint, param2: cint, param3: pointer): cint {.cdecl, raises: [], gcsafe.}
  event*: proc(vtbl, self: pointer, event: pointer): bool {.cdecl, raises: [], gcsafe.}
  eventFilter*: proc(vtbl, self: pointer, watched: pointer, event: pointer): bool {.cdecl, raises: [], gcsafe.}
  timerEvent*: proc(vtbl, self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  childEvent*: proc(vtbl, self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  customEvent*: proc(vtbl, self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  connectNotify*: proc(vtbl, self: pointer, signal: pointer): void {.cdecl, raises: [], gcsafe.}
  disconnectNotify*: proc(vtbl, self: pointer, signal: pointer): void {.cdecl, raises: [], gcsafe.}
proc fcQObject_virtualbase_metaObject(self: pointer, ): pointer {.importc: "QObject_virtualbase_metaObject".}
proc fcQObject_virtualbase_metacast(self: pointer, param1: cstring): pointer {.importc: "QObject_virtualbase_metacast".}
proc fcQObject_virtualbase_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.importc: "QObject_virtualbase_metacall".}
proc fcQObject_virtualbase_event(self: pointer, event: pointer): bool {.importc: "QObject_virtualbase_event".}
proc fcQObject_virtualbase_eventFilter(self: pointer, watched: pointer, event: pointer): bool {.importc: "QObject_virtualbase_eventFilter".}
proc fcQObject_virtualbase_timerEvent(self: pointer, event: pointer): void {.importc: "QObject_virtualbase_timerEvent".}
proc fcQObject_virtualbase_childEvent(self: pointer, event: pointer): void {.importc: "QObject_virtualbase_childEvent".}
proc fcQObject_virtualbase_customEvent(self: pointer, event: pointer): void {.importc: "QObject_virtualbase_customEvent".}
proc fcQObject_virtualbase_connectNotify(self: pointer, signal: pointer): void {.importc: "QObject_virtualbase_connectNotify".}
proc fcQObject_virtualbase_disconnectNotify(self: pointer, signal: pointer): void {.importc: "QObject_virtualbase_disconnectNotify".}
proc fcQObject_new(vtbl: pointer, ): ptr cQObject {.importc: "QObject_new".}
proc fcQObject_new2(vtbl: pointer, parent: pointer): ptr cQObject {.importc: "QObject_new2".}
proc fcQObject_staticMetaObject(): pointer {.importc: "QObject_staticMetaObject".}
proc fcQObject_delete(self: pointer) {.importc: "QObject_delete".}
proc fcQSignalBlocker_reblock(self: pointer, ): void {.importc: "QSignalBlocker_reblock".}
proc fcQSignalBlocker_unblock(self: pointer, ): void {.importc: "QSignalBlocker_unblock".}
proc fcQSignalBlocker_new(o: pointer): ptr cQSignalBlocker {.importc: "QSignalBlocker_new".}
proc fcQSignalBlocker_new2(o: pointer): ptr cQSignalBlocker {.importc: "QSignalBlocker_new2".}
proc fcQSignalBlocker_delete(self: pointer) {.importc: "QSignalBlocker_delete".}

proc dynamicMetaObject*(self: gen_qobject_types.QObjectData, ): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQObjectData_dynamicMetaObject(self.h))

proc delete*(self: gen_qobject_types.QObjectData) =
  fcQObjectData_delete(self.h)
proc metaObject*(self: gen_qobject_types.QObject, ): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQObject_metaObject(self.h))

proc metacast*(self: gen_qobject_types.QObject, param1: cstring): pointer =
  fcQObject_metacast(self.h, param1)

proc metacall*(self: gen_qobject_types.QObject, param1: cint, param2: cint, param3: pointer): cint =
  fcQObject_metacall(self.h, cint(param1), param2, param3)

proc tr*(_: type gen_qobject_types.QObject, s: cstring): string =
  let v_ms = fcQObject_tr(s)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc event*(self: gen_qobject_types.QObject, event: gen_qcoreevent_types.QEvent): bool =
  fcQObject_event(self.h, event.h)

proc eventFilter*(self: gen_qobject_types.QObject, watched: gen_qobject_types.QObject, event: gen_qcoreevent_types.QEvent): bool =
  fcQObject_eventFilter(self.h, watched.h, event.h)

proc objectName*(self: gen_qobject_types.QObject, ): string =
  let v_ms = fcQObject_objectName(self.h)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc setObjectName*(self: gen_qobject_types.QObject, name: gen_qanystringview_types.QAnyStringView): void =
  fcQObject_setObjectName(self.h, name.h)

proc isWidgetType*(self: gen_qobject_types.QObject, ): bool =
  fcQObject_isWidgetType(self.h)

proc isWindowType*(self: gen_qobject_types.QObject, ): bool =
  fcQObject_isWindowType(self.h)

proc isQuickItemType*(self: gen_qobject_types.QObject, ): bool =
  fcQObject_isQuickItemType(self.h)

proc signalsBlocked*(self: gen_qobject_types.QObject, ): bool =
  fcQObject_signalsBlocked(self.h)

proc blockSignals*(self: gen_qobject_types.QObject, b: bool): bool =
  fcQObject_blockSignals(self.h, b)

proc thread*(self: gen_qobject_types.QObject, ): gen_qthread_types.QThread =
  gen_qthread_types.QThread(h: fcQObject_thread(self.h))

proc moveToThread*(self: gen_qobject_types.QObject, thread: gen_qthread_types.QThread): void =
  fcQObject_moveToThread(self.h, thread.h)

proc startTimer*(self: gen_qobject_types.QObject, interval: cint): cint =
  fcQObject_startTimer(self.h, interval)

proc killTimer*(self: gen_qobject_types.QObject, id: cint): void =
  fcQObject_killTimer(self.h, id)

proc children*(self: gen_qobject_types.QObject, ): seq[gen_qobject_types.QObject] =
  var v_ma = fcQObject_children(self.h)
  var vx_ret = newSeq[gen_qobject_types.QObject](int(v_ma.len))
  let v_outCast = cast[ptr UncheckedArray[pointer]](v_ma.data)
  for i in 0 ..< v_ma.len:
    vx_ret[i] = gen_qobject_types.QObject(h: v_outCast[i])
  vx_ret

proc setParent*(self: gen_qobject_types.QObject, parent: gen_qobject_types.QObject): void =
  fcQObject_setParent(self.h, parent.h)

proc installEventFilter*(self: gen_qobject_types.QObject, filterObj: gen_qobject_types.QObject): void =
  fcQObject_installEventFilter(self.h, filterObj.h)

proc removeEventFilter*(self: gen_qobject_types.QObject, obj: gen_qobject_types.QObject): void =
  fcQObject_removeEventFilter(self.h, obj.h)

proc connect*(_: type gen_qobject_types.QObject, sender: gen_qobject_types.QObject, signal: gen_qmetaobject_types.QMetaMethod, receiver: gen_qobject_types.QObject, methodVal: gen_qmetaobject_types.QMetaMethod): gen_qobjectdefs_types.QMetaObjectConnection =
  gen_qobjectdefs_types.QMetaObjectConnection(h: fcQObject_connect(sender.h, signal.h, receiver.h, methodVal.h))

proc connect*(self: gen_qobject_types.QObject, sender: gen_qobject_types.QObject, signal: cstring, member: cstring): gen_qobjectdefs_types.QMetaObjectConnection =
  gen_qobjectdefs_types.QMetaObjectConnection(h: fcQObject_connect2(self.h, sender.h, signal, member))

proc disconnect*(_: type gen_qobject_types.QObject, sender: gen_qobject_types.QObject, signal: gen_qmetaobject_types.QMetaMethod, receiver: gen_qobject_types.QObject, member: gen_qmetaobject_types.QMetaMethod): bool =
  fcQObject_disconnect(sender.h, signal.h, receiver.h, member.h)

proc disconnect*(_: type gen_qobject_types.QObject, param1: gen_qobjectdefs_types.QMetaObjectConnection): bool =
  fcQObject_disconnectWithQMetaObjectConnection(param1.h)

proc dumpObjectTree*(self: gen_qobject_types.QObject, ): void =
  fcQObject_dumpObjectTree(self.h)

proc dumpObjectInfo*(self: gen_qobject_types.QObject, ): void =
  fcQObject_dumpObjectInfo(self.h)

proc setProperty*(self: gen_qobject_types.QObject, name: cstring, value: gen_qvariant_types.QVariant): bool =
  fcQObject_setProperty(self.h, name, value.h)

proc property*(self: gen_qobject_types.QObject, name: cstring): gen_qvariant_types.QVariant =
  gen_qvariant_types.QVariant(h: fcQObject_property(self.h, name))

proc dynamicPropertyNames*(self: gen_qobject_types.QObject, ): seq[seq[byte]] =
  var v_ma = fcQObject_dynamicPropertyNames(self.h)
  var vx_ret = newSeq[seq[byte]](int(v_ma.len))
  let v_outCast = cast[ptr UncheckedArray[struct_miqt_string]](v_ma.data)
  for i in 0 ..< v_ma.len:
    var vx_lv_bytearray = v_outCast[i]
    var vx_lvx_ret = @(toOpenArrayByte(vx_lv_bytearray.data, 0, int(vx_lv_bytearray.len)-1))
    c_free(vx_lv_bytearray.data)
    vx_ret[i] = vx_lvx_ret
  vx_ret

proc bindingStorage*(self: gen_qobject_types.QObject, ): gen_qbindingstorage_types.QBindingStorage =
  gen_qbindingstorage_types.QBindingStorage(h: fcQObject_bindingStorage(self.h))

proc bindingStorage2*(self: gen_qobject_types.QObject, ): gen_qbindingstorage_types.QBindingStorage =
  gen_qbindingstorage_types.QBindingStorage(h: fcQObject_bindingStorage2(self.h))

proc destroyed*(self: gen_qobject_types.QObject, ): void =
  fcQObject_destroyed(self.h)

type QObjectdestroyedSlot* = proc()
proc miqt_exec_callback_cQObject_destroyed(slot: int) {.exportc: "miqt_exec_callback_QObject_destroyed".} =
  let nimfunc = cast[ptr QObjectdestroyedSlot](cast[pointer](slot))
  nimfunc[]()

proc ondestroyed*(self: gen_qobject_types.QObject, slot: QObjectdestroyedSlot) =
  var tmp = new QObjectdestroyedSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQObject_connect_destroyed(self.h, cast[int](addr tmp[]))

proc parent*(self: gen_qobject_types.QObject, ): gen_qobject_types.QObject =
  gen_qobject_types.QObject(h: fcQObject_parent(self.h))

proc inherits*(self: gen_qobject_types.QObject, classname: cstring): bool =
  fcQObject_inherits(self.h, classname)

proc deleteLater*(self: gen_qobject_types.QObject, ): void =
  fcQObject_deleteLater(self.h)

proc tr*(_: type gen_qobject_types.QObject, s: cstring, c: cstring): string =
  let v_ms = fcQObject_tr2(s, c)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc tr*(_: type gen_qobject_types.QObject, s: cstring, c: cstring, n: cint): string =
  let v_ms = fcQObject_tr3(s, c, n)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc startTimer*(self: gen_qobject_types.QObject, interval: cint, timerType: cint): cint =
  fcQObject_startTimer2(self.h, interval, cint(timerType))

proc connect*(_: type gen_qobject_types.QObject, sender: gen_qobject_types.QObject, signal: gen_qmetaobject_types.QMetaMethod, receiver: gen_qobject_types.QObject, methodVal: gen_qmetaobject_types.QMetaMethod, typeVal: cint): gen_qobjectdefs_types.QMetaObjectConnection =
  gen_qobjectdefs_types.QMetaObjectConnection(h: fcQObject_connect5(sender.h, signal.h, receiver.h, methodVal.h, cint(typeVal)))

proc connect*(self: gen_qobject_types.QObject, sender: gen_qobject_types.QObject, signal: cstring, member: cstring, typeVal: cint): gen_qobjectdefs_types.QMetaObjectConnection =
  gen_qobjectdefs_types.QMetaObjectConnection(h: fcQObject_connect4(self.h, sender.h, signal, member, cint(typeVal)))

proc destroyed*(self: gen_qobject_types.QObject, param1: gen_qobject_types.QObject): void =
  fcQObject_destroyed1(self.h, param1.h)

type QObjectdestroyed1Slot* = proc(param1: gen_qobject_types.QObject)
proc miqt_exec_callback_cQObject_destroyed1(slot: int, param1: pointer) {.exportc: "miqt_exec_callback_QObject_destroyed1".} =
  let nimfunc = cast[ptr QObjectdestroyed1Slot](cast[pointer](slot))
  let slotval1 = gen_qobject_types.QObject(h: param1)

  nimfunc[](slotval1)

proc ondestroyed*(self: gen_qobject_types.QObject, slot: QObjectdestroyed1Slot) =
  var tmp = new QObjectdestroyed1Slot
  tmp[] = slot
  GC_ref(tmp)
  fcQObject_connect_destroyed1(self.h, cast[int](addr tmp[]))

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
type QObjectVTable* = object
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
proc QObjectmetaObject*(self: gen_qobject_types.QObject, ): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQObject_virtualbase_metaObject(self.h))

proc miqt_exec_callback_cQObject_metaObject(vtbl: pointer, self: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QObjectVTable](vtbl)
  let self = QObject(h: self)
  var virtualReturn = vtbl[].metaObject(self)
  virtualReturn.h

proc QObjectmetacast*(self: gen_qobject_types.QObject, param1: cstring): pointer =
  fcQObject_virtualbase_metacast(self.h, param1)

proc miqt_exec_callback_cQObject_metacast(vtbl: pointer, self: pointer, param1: cstring): pointer {.cdecl.} =
  let vtbl = cast[ptr QObjectVTable](vtbl)
  let self = QObject(h: self)
  let slotval1 = (param1)
  var virtualReturn = vtbl[].metacast(self, slotval1)
  virtualReturn

proc QObjectmetacall*(self: gen_qobject_types.QObject, param1: cint, param2: cint, param3: pointer): cint =
  fcQObject_virtualbase_metacall(self.h, cint(param1), param2, param3)

proc miqt_exec_callback_cQObject_metacall(vtbl: pointer, self: pointer, param1: cint, param2: cint, param3: pointer): cint {.cdecl.} =
  let vtbl = cast[ptr QObjectVTable](vtbl)
  let self = QObject(h: self)
  let slotval1 = cint(param1)
  let slotval2 = param2
  let slotval3 = param3
  var virtualReturn = vtbl[].metacall(self, slotval1, slotval2, slotval3)
  virtualReturn

proc QObjectevent*(self: gen_qobject_types.QObject, event: gen_qcoreevent_types.QEvent): bool =
  fcQObject_virtualbase_event(self.h, event.h)

proc miqt_exec_callback_cQObject_event(vtbl: pointer, self: pointer, event: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QObjectVTable](vtbl)
  let self = QObject(h: self)
  let slotval1 = gen_qcoreevent_types.QEvent(h: event)
  var virtualReturn = vtbl[].event(self, slotval1)
  virtualReturn

proc QObjecteventFilter*(self: gen_qobject_types.QObject, watched: gen_qobject_types.QObject, event: gen_qcoreevent_types.QEvent): bool =
  fcQObject_virtualbase_eventFilter(self.h, watched.h, event.h)

proc miqt_exec_callback_cQObject_eventFilter(vtbl: pointer, self: pointer, watched: pointer, event: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QObjectVTable](vtbl)
  let self = QObject(h: self)
  let slotval1 = gen_qobject_types.QObject(h: watched)
  let slotval2 = gen_qcoreevent_types.QEvent(h: event)
  var virtualReturn = vtbl[].eventFilter(self, slotval1, slotval2)
  virtualReturn

proc QObjecttimerEvent*(self: gen_qobject_types.QObject, event: gen_qcoreevent_types.QTimerEvent): void =
  fcQObject_virtualbase_timerEvent(self.h, event.h)

proc miqt_exec_callback_cQObject_timerEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QObjectVTable](vtbl)
  let self = QObject(h: self)
  let slotval1 = gen_qcoreevent_types.QTimerEvent(h: event)
  vtbl[].timerEvent(self, slotval1)

proc QObjectchildEvent*(self: gen_qobject_types.QObject, event: gen_qcoreevent_types.QChildEvent): void =
  fcQObject_virtualbase_childEvent(self.h, event.h)

proc miqt_exec_callback_cQObject_childEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QObjectVTable](vtbl)
  let self = QObject(h: self)
  let slotval1 = gen_qcoreevent_types.QChildEvent(h: event)
  vtbl[].childEvent(self, slotval1)

proc QObjectcustomEvent*(self: gen_qobject_types.QObject, event: gen_qcoreevent_types.QEvent): void =
  fcQObject_virtualbase_customEvent(self.h, event.h)

proc miqt_exec_callback_cQObject_customEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QObjectVTable](vtbl)
  let self = QObject(h: self)
  let slotval1 = gen_qcoreevent_types.QEvent(h: event)
  vtbl[].customEvent(self, slotval1)

proc QObjectconnectNotify*(self: gen_qobject_types.QObject, signal: gen_qmetaobject_types.QMetaMethod): void =
  fcQObject_virtualbase_connectNotify(self.h, signal.h)

proc miqt_exec_callback_cQObject_connectNotify(vtbl: pointer, self: pointer, signal: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QObjectVTable](vtbl)
  let self = QObject(h: self)
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal)
  vtbl[].connectNotify(self, slotval1)

proc QObjectdisconnectNotify*(self: gen_qobject_types.QObject, signal: gen_qmetaobject_types.QMetaMethod): void =
  fcQObject_virtualbase_disconnectNotify(self.h, signal.h)

proc miqt_exec_callback_cQObject_disconnectNotify(vtbl: pointer, self: pointer, signal: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QObjectVTable](vtbl)
  let self = QObject(h: self)
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal)
  vtbl[].disconnectNotify(self, slotval1)

proc create*(T: type gen_qobject_types.QObject,
    vtbl: ref QObjectVTable = nil): gen_qobject_types.QObject =
  let vtbl = if vtbl == nil: new QObjectVTable else: vtbl
  GC_ref(vtbl)
  vtbl.vtbl.destructor = proc(vtbl: ptr cQObjectVTable, _: ptr cQObject) {.cdecl.} =
    let vtbl = cast[ref QObjectVTable](vtbl)
    GC_unref(vtbl)
  if not isNil(vtbl.metaObject):
    vtbl[].vtbl.metaObject = miqt_exec_callback_cQObject_metaObject
  if not isNil(vtbl.metacast):
    vtbl[].vtbl.metacast = miqt_exec_callback_cQObject_metacast
  if not isNil(vtbl.metacall):
    vtbl[].vtbl.metacall = miqt_exec_callback_cQObject_metacall
  if not isNil(vtbl.event):
    vtbl[].vtbl.event = miqt_exec_callback_cQObject_event
  if not isNil(vtbl.eventFilter):
    vtbl[].vtbl.eventFilter = miqt_exec_callback_cQObject_eventFilter
  if not isNil(vtbl.timerEvent):
    vtbl[].vtbl.timerEvent = miqt_exec_callback_cQObject_timerEvent
  if not isNil(vtbl.childEvent):
    vtbl[].vtbl.childEvent = miqt_exec_callback_cQObject_childEvent
  if not isNil(vtbl.customEvent):
    vtbl[].vtbl.customEvent = miqt_exec_callback_cQObject_customEvent
  if not isNil(vtbl.connectNotify):
    vtbl[].vtbl.connectNotify = miqt_exec_callback_cQObject_connectNotify
  if not isNil(vtbl.disconnectNotify):
    vtbl[].vtbl.disconnectNotify = miqt_exec_callback_cQObject_disconnectNotify
  gen_qobject_types.QObject(h: fcQObject_new(addr(vtbl[]), ))

proc create*(T: type gen_qobject_types.QObject,
    parent: gen_qobject_types.QObject,
    vtbl: ref QObjectVTable = nil): gen_qobject_types.QObject =
  let vtbl = if vtbl == nil: new QObjectVTable else: vtbl
  GC_ref(vtbl)
  vtbl.vtbl.destructor = proc(vtbl: ptr cQObjectVTable, _: ptr cQObject) {.cdecl.} =
    let vtbl = cast[ref QObjectVTable](vtbl)
    GC_unref(vtbl)
  if not isNil(vtbl.metaObject):
    vtbl[].vtbl.metaObject = miqt_exec_callback_cQObject_metaObject
  if not isNil(vtbl.metacast):
    vtbl[].vtbl.metacast = miqt_exec_callback_cQObject_metacast
  if not isNil(vtbl.metacall):
    vtbl[].vtbl.metacall = miqt_exec_callback_cQObject_metacall
  if not isNil(vtbl.event):
    vtbl[].vtbl.event = miqt_exec_callback_cQObject_event
  if not isNil(vtbl.eventFilter):
    vtbl[].vtbl.eventFilter = miqt_exec_callback_cQObject_eventFilter
  if not isNil(vtbl.timerEvent):
    vtbl[].vtbl.timerEvent = miqt_exec_callback_cQObject_timerEvent
  if not isNil(vtbl.childEvent):
    vtbl[].vtbl.childEvent = miqt_exec_callback_cQObject_childEvent
  if not isNil(vtbl.customEvent):
    vtbl[].vtbl.customEvent = miqt_exec_callback_cQObject_customEvent
  if not isNil(vtbl.connectNotify):
    vtbl[].vtbl.connectNotify = miqt_exec_callback_cQObject_connectNotify
  if not isNil(vtbl.disconnectNotify):
    vtbl[].vtbl.disconnectNotify = miqt_exec_callback_cQObject_disconnectNotify
  gen_qobject_types.QObject(h: fcQObject_new2(addr(vtbl[]), parent.h))

proc staticMetaObject*(_: type gen_qobject_types.QObject): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQObject_staticMetaObject())
proc delete*(self: gen_qobject_types.QObject) =
  fcQObject_delete(self.h)
proc reblock*(self: gen_qobject_types.QSignalBlocker, ): void =
  fcQSignalBlocker_reblock(self.h)

proc unblock*(self: gen_qobject_types.QSignalBlocker, ): void =
  fcQSignalBlocker_unblock(self.h)

proc create*(T: type gen_qobject_types.QSignalBlocker,
    o: gen_qobject_types.QObject): gen_qobject_types.QSignalBlocker =
  gen_qobject_types.QSignalBlocker(h: fcQSignalBlocker_new(o.h))

proc create2*(T: type gen_qobject_types.QSignalBlocker,
    o: gen_qobject_types.QObject): gen_qobject_types.QSignalBlocker =
  gen_qobject_types.QSignalBlocker(h: fcQSignalBlocker_new2(o.h))

proc delete*(self: gen_qobject_types.QSignalBlocker) =
  fcQSignalBlocker_delete(self.h)
