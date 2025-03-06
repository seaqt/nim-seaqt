import ./Qt6Qml_libs

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

const cflags = gorge("pkg-config --cflags Qt6Qml")  & " -fPIC"
{.compile("gen_qqmlfileselector.cpp", cflags).}


import ./gen_qqmlfileselector_types
export gen_qqmlfileselector_types

import
  ../QtCore/gen_qcoreevent_types,
  ../QtCore/gen_qfileselector_types,
  ../QtCore/gen_qmetaobject_types,
  ../QtCore/gen_qobject,
  ../QtCore/gen_qobjectdefs_types,
  ./gen_qqmlengine_types
export
  gen_qcoreevent_types,
  gen_qfileselector_types,
  gen_qmetaobject_types,
  gen_qobject,
  gen_qobjectdefs_types,
  gen_qqmlengine_types

type cQQmlFileSelector*{.exportc: "QQmlFileSelector", incompleteStruct.} = object

proc fcQQmlFileSelector_metaObject(self: pointer, ): pointer {.importc: "QQmlFileSelector_metaObject".}
proc fcQQmlFileSelector_metacast(self: pointer, param1: cstring): pointer {.importc: "QQmlFileSelector_metacast".}
proc fcQQmlFileSelector_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.importc: "QQmlFileSelector_metacall".}
proc fcQQmlFileSelector_tr(s: cstring): struct_miqt_string {.importc: "QQmlFileSelector_tr".}
proc fcQQmlFileSelector_selector(self: pointer, ): pointer {.importc: "QQmlFileSelector_selector".}
proc fcQQmlFileSelector_setSelector(self: pointer, selector: pointer): void {.importc: "QQmlFileSelector_setSelector".}
proc fcQQmlFileSelector_setExtraSelectors(self: pointer, strings: struct_miqt_array): void {.importc: "QQmlFileSelector_setExtraSelectors".}
proc fcQQmlFileSelector_get(param1: pointer): pointer {.importc: "QQmlFileSelector_get".}
proc fcQQmlFileSelector_tr2(s: cstring, c: cstring): struct_miqt_string {.importc: "QQmlFileSelector_tr2".}
proc fcQQmlFileSelector_tr3(s: cstring, c: cstring, n: cint): struct_miqt_string {.importc: "QQmlFileSelector_tr3".}
type cQQmlFileSelectorVTable = object
  destructor*: proc(vtbl: ptr cQQmlFileSelectorVTable, self: ptr cQQmlFileSelector) {.cdecl, raises:[], gcsafe.}
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
proc fcQQmlFileSelector_virtualbase_metaObject(self: pointer, ): pointer {.importc: "QQmlFileSelector_virtualbase_metaObject".}
proc fcQQmlFileSelector_virtualbase_metacast(self: pointer, param1: cstring): pointer {.importc: "QQmlFileSelector_virtualbase_metacast".}
proc fcQQmlFileSelector_virtualbase_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.importc: "QQmlFileSelector_virtualbase_metacall".}
proc fcQQmlFileSelector_virtualbase_event(self: pointer, event: pointer): bool {.importc: "QQmlFileSelector_virtualbase_event".}
proc fcQQmlFileSelector_virtualbase_eventFilter(self: pointer, watched: pointer, event: pointer): bool {.importc: "QQmlFileSelector_virtualbase_eventFilter".}
proc fcQQmlFileSelector_virtualbase_timerEvent(self: pointer, event: pointer): void {.importc: "QQmlFileSelector_virtualbase_timerEvent".}
proc fcQQmlFileSelector_virtualbase_childEvent(self: pointer, event: pointer): void {.importc: "QQmlFileSelector_virtualbase_childEvent".}
proc fcQQmlFileSelector_virtualbase_customEvent(self: pointer, event: pointer): void {.importc: "QQmlFileSelector_virtualbase_customEvent".}
proc fcQQmlFileSelector_virtualbase_connectNotify(self: pointer, signal: pointer): void {.importc: "QQmlFileSelector_virtualbase_connectNotify".}
proc fcQQmlFileSelector_virtualbase_disconnectNotify(self: pointer, signal: pointer): void {.importc: "QQmlFileSelector_virtualbase_disconnectNotify".}
proc fcQQmlFileSelector_protectedbase_sender(self: pointer, ): pointer {.importc: "QQmlFileSelector_protectedbase_sender".}
proc fcQQmlFileSelector_protectedbase_senderSignalIndex(self: pointer, ): cint {.importc: "QQmlFileSelector_protectedbase_senderSignalIndex".}
proc fcQQmlFileSelector_protectedbase_receivers(self: pointer, signal: cstring): cint {.importc: "QQmlFileSelector_protectedbase_receivers".}
proc fcQQmlFileSelector_protectedbase_isSignalConnected(self: pointer, signal: pointer): bool {.importc: "QQmlFileSelector_protectedbase_isSignalConnected".}
proc fcQQmlFileSelector_new(vtbl: pointer, engine: pointer): ptr cQQmlFileSelector {.importc: "QQmlFileSelector_new".}
proc fcQQmlFileSelector_new2(vtbl: pointer, engine: pointer, parent: pointer): ptr cQQmlFileSelector {.importc: "QQmlFileSelector_new2".}
proc fcQQmlFileSelector_staticMetaObject(): pointer {.importc: "QQmlFileSelector_staticMetaObject".}
proc fcQQmlFileSelector_delete(self: pointer) {.importc: "QQmlFileSelector_delete".}

proc metaObject*(self: gen_qqmlfileselector_types.QQmlFileSelector, ): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQQmlFileSelector_metaObject(self.h))

proc metacast*(self: gen_qqmlfileselector_types.QQmlFileSelector, param1: cstring): pointer =
  fcQQmlFileSelector_metacast(self.h, param1)

proc metacall*(self: gen_qqmlfileselector_types.QQmlFileSelector, param1: cint, param2: cint, param3: pointer): cint =
  fcQQmlFileSelector_metacall(self.h, cint(param1), param2, param3)

proc tr*(_: type gen_qqmlfileselector_types.QQmlFileSelector, s: cstring): string =
  let v_ms = fcQQmlFileSelector_tr(s)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc selector*(self: gen_qqmlfileselector_types.QQmlFileSelector, ): gen_qfileselector_types.QFileSelector =
  gen_qfileselector_types.QFileSelector(h: fcQQmlFileSelector_selector(self.h))

proc setSelector*(self: gen_qqmlfileselector_types.QQmlFileSelector, selector: gen_qfileselector_types.QFileSelector): void =
  fcQQmlFileSelector_setSelector(self.h, selector.h)

proc setExtraSelectors*(self: gen_qqmlfileselector_types.QQmlFileSelector, strings: seq[string]): void =
  var strings_CArray = newSeq[struct_miqt_string](len(strings))
  for i in 0..<len(strings):
    strings_CArray[i] = struct_miqt_string(data: strings[i], len: csize_t(len(strings[i])))

  fcQQmlFileSelector_setExtraSelectors(self.h, struct_miqt_array(len: csize_t(len(strings)), data: if len(strings) == 0: nil else: addr(strings_CArray[0])))

proc get*(_: type gen_qqmlfileselector_types.QQmlFileSelector, param1: gen_qqmlengine_types.QQmlEngine): gen_qqmlfileselector_types.QQmlFileSelector =
  gen_qqmlfileselector_types.QQmlFileSelector(h: fcQQmlFileSelector_get(param1.h))

proc tr*(_: type gen_qqmlfileselector_types.QQmlFileSelector, s: cstring, c: cstring): string =
  let v_ms = fcQQmlFileSelector_tr2(s, c)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc tr*(_: type gen_qqmlfileselector_types.QQmlFileSelector, s: cstring, c: cstring, n: cint): string =
  let v_ms = fcQQmlFileSelector_tr3(s, c, n)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

type QQmlFileSelectormetaObjectProc* = proc(self: QQmlFileSelector): gen_qobjectdefs_types.QMetaObject {.raises: [], gcsafe.}
type QQmlFileSelectormetacastProc* = proc(self: QQmlFileSelector, param1: cstring): pointer {.raises: [], gcsafe.}
type QQmlFileSelectormetacallProc* = proc(self: QQmlFileSelector, param1: cint, param2: cint, param3: pointer): cint {.raises: [], gcsafe.}
type QQmlFileSelectoreventProc* = proc(self: QQmlFileSelector, event: gen_qcoreevent_types.QEvent): bool {.raises: [], gcsafe.}
type QQmlFileSelectoreventFilterProc* = proc(self: QQmlFileSelector, watched: gen_qobject_types.QObject, event: gen_qcoreevent_types.QEvent): bool {.raises: [], gcsafe.}
type QQmlFileSelectortimerEventProc* = proc(self: QQmlFileSelector, event: gen_qcoreevent_types.QTimerEvent): void {.raises: [], gcsafe.}
type QQmlFileSelectorchildEventProc* = proc(self: QQmlFileSelector, event: gen_qcoreevent_types.QChildEvent): void {.raises: [], gcsafe.}
type QQmlFileSelectorcustomEventProc* = proc(self: QQmlFileSelector, event: gen_qcoreevent_types.QEvent): void {.raises: [], gcsafe.}
type QQmlFileSelectorconnectNotifyProc* = proc(self: QQmlFileSelector, signal: gen_qmetaobject_types.QMetaMethod): void {.raises: [], gcsafe.}
type QQmlFileSelectordisconnectNotifyProc* = proc(self: QQmlFileSelector, signal: gen_qmetaobject_types.QMetaMethod): void {.raises: [], gcsafe.}
type QQmlFileSelectorVTable* = object
  vtbl: cQQmlFileSelectorVTable
  metaObject*: QQmlFileSelectormetaObjectProc
  metacast*: QQmlFileSelectormetacastProc
  metacall*: QQmlFileSelectormetacallProc
  event*: QQmlFileSelectoreventProc
  eventFilter*: QQmlFileSelectoreventFilterProc
  timerEvent*: QQmlFileSelectortimerEventProc
  childEvent*: QQmlFileSelectorchildEventProc
  customEvent*: QQmlFileSelectorcustomEventProc
  connectNotify*: QQmlFileSelectorconnectNotifyProc
  disconnectNotify*: QQmlFileSelectordisconnectNotifyProc
proc QQmlFileSelectormetaObject*(self: gen_qqmlfileselector_types.QQmlFileSelector, ): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQQmlFileSelector_virtualbase_metaObject(self.h))

proc miqt_exec_callback_cQQmlFileSelector_metaObject(vtbl: pointer, self: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QQmlFileSelectorVTable](vtbl)
  let self = QQmlFileSelector(h: self)
  var virtualReturn = vtbl[].metaObject(self)
  virtualReturn.h

proc QQmlFileSelectormetacast*(self: gen_qqmlfileselector_types.QQmlFileSelector, param1: cstring): pointer =
  fcQQmlFileSelector_virtualbase_metacast(self.h, param1)

proc miqt_exec_callback_cQQmlFileSelector_metacast(vtbl: pointer, self: pointer, param1: cstring): pointer {.cdecl.} =
  let vtbl = cast[ptr QQmlFileSelectorVTable](vtbl)
  let self = QQmlFileSelector(h: self)
  let slotval1 = (param1)
  var virtualReturn = vtbl[].metacast(self, slotval1)
  virtualReturn

proc QQmlFileSelectormetacall*(self: gen_qqmlfileselector_types.QQmlFileSelector, param1: cint, param2: cint, param3: pointer): cint =
  fcQQmlFileSelector_virtualbase_metacall(self.h, cint(param1), param2, param3)

proc miqt_exec_callback_cQQmlFileSelector_metacall(vtbl: pointer, self: pointer, param1: cint, param2: cint, param3: pointer): cint {.cdecl.} =
  let vtbl = cast[ptr QQmlFileSelectorVTable](vtbl)
  let self = QQmlFileSelector(h: self)
  let slotval1 = cint(param1)
  let slotval2 = param2
  let slotval3 = param3
  var virtualReturn = vtbl[].metacall(self, slotval1, slotval2, slotval3)
  virtualReturn

proc QQmlFileSelectorevent*(self: gen_qqmlfileselector_types.QQmlFileSelector, event: gen_qcoreevent_types.QEvent): bool =
  fcQQmlFileSelector_virtualbase_event(self.h, event.h)

proc miqt_exec_callback_cQQmlFileSelector_event(vtbl: pointer, self: pointer, event: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QQmlFileSelectorVTable](vtbl)
  let self = QQmlFileSelector(h: self)
  let slotval1 = gen_qcoreevent_types.QEvent(h: event)
  var virtualReturn = vtbl[].event(self, slotval1)
  virtualReturn

proc QQmlFileSelectoreventFilter*(self: gen_qqmlfileselector_types.QQmlFileSelector, watched: gen_qobject_types.QObject, event: gen_qcoreevent_types.QEvent): bool =
  fcQQmlFileSelector_virtualbase_eventFilter(self.h, watched.h, event.h)

proc miqt_exec_callback_cQQmlFileSelector_eventFilter(vtbl: pointer, self: pointer, watched: pointer, event: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QQmlFileSelectorVTable](vtbl)
  let self = QQmlFileSelector(h: self)
  let slotval1 = gen_qobject_types.QObject(h: watched)
  let slotval2 = gen_qcoreevent_types.QEvent(h: event)
  var virtualReturn = vtbl[].eventFilter(self, slotval1, slotval2)
  virtualReturn

proc QQmlFileSelectortimerEvent*(self: gen_qqmlfileselector_types.QQmlFileSelector, event: gen_qcoreevent_types.QTimerEvent): void =
  fcQQmlFileSelector_virtualbase_timerEvent(self.h, event.h)

proc miqt_exec_callback_cQQmlFileSelector_timerEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QQmlFileSelectorVTable](vtbl)
  let self = QQmlFileSelector(h: self)
  let slotval1 = gen_qcoreevent_types.QTimerEvent(h: event)
  vtbl[].timerEvent(self, slotval1)

proc QQmlFileSelectorchildEvent*(self: gen_qqmlfileselector_types.QQmlFileSelector, event: gen_qcoreevent_types.QChildEvent): void =
  fcQQmlFileSelector_virtualbase_childEvent(self.h, event.h)

proc miqt_exec_callback_cQQmlFileSelector_childEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QQmlFileSelectorVTable](vtbl)
  let self = QQmlFileSelector(h: self)
  let slotval1 = gen_qcoreevent_types.QChildEvent(h: event)
  vtbl[].childEvent(self, slotval1)

proc QQmlFileSelectorcustomEvent*(self: gen_qqmlfileselector_types.QQmlFileSelector, event: gen_qcoreevent_types.QEvent): void =
  fcQQmlFileSelector_virtualbase_customEvent(self.h, event.h)

proc miqt_exec_callback_cQQmlFileSelector_customEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QQmlFileSelectorVTable](vtbl)
  let self = QQmlFileSelector(h: self)
  let slotval1 = gen_qcoreevent_types.QEvent(h: event)
  vtbl[].customEvent(self, slotval1)

proc QQmlFileSelectorconnectNotify*(self: gen_qqmlfileselector_types.QQmlFileSelector, signal: gen_qmetaobject_types.QMetaMethod): void =
  fcQQmlFileSelector_virtualbase_connectNotify(self.h, signal.h)

proc miqt_exec_callback_cQQmlFileSelector_connectNotify(vtbl: pointer, self: pointer, signal: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QQmlFileSelectorVTable](vtbl)
  let self = QQmlFileSelector(h: self)
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal)
  vtbl[].connectNotify(self, slotval1)

proc QQmlFileSelectordisconnectNotify*(self: gen_qqmlfileselector_types.QQmlFileSelector, signal: gen_qmetaobject_types.QMetaMethod): void =
  fcQQmlFileSelector_virtualbase_disconnectNotify(self.h, signal.h)

proc miqt_exec_callback_cQQmlFileSelector_disconnectNotify(vtbl: pointer, self: pointer, signal: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QQmlFileSelectorVTable](vtbl)
  let self = QQmlFileSelector(h: self)
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal)
  vtbl[].disconnectNotify(self, slotval1)

proc sender*(self: gen_qqmlfileselector_types.QQmlFileSelector, ): gen_qobject_types.QObject =
  gen_qobject_types.QObject(h: fcQQmlFileSelector_protectedbase_sender(self.h))

proc senderSignalIndex*(self: gen_qqmlfileselector_types.QQmlFileSelector, ): cint =
  fcQQmlFileSelector_protectedbase_senderSignalIndex(self.h)

proc receivers*(self: gen_qqmlfileselector_types.QQmlFileSelector, signal: cstring): cint =
  fcQQmlFileSelector_protectedbase_receivers(self.h, signal)

proc isSignalConnected*(self: gen_qqmlfileselector_types.QQmlFileSelector, signal: gen_qmetaobject_types.QMetaMethod): bool =
  fcQQmlFileSelector_protectedbase_isSignalConnected(self.h, signal.h)

proc create*(T: type gen_qqmlfileselector_types.QQmlFileSelector,
    engine: gen_qqmlengine_types.QQmlEngine,
    vtbl: ref QQmlFileSelectorVTable = nil): gen_qqmlfileselector_types.QQmlFileSelector =
  let vtbl = if vtbl == nil: new QQmlFileSelectorVTable else: vtbl
  GC_ref(vtbl)
  vtbl.vtbl.destructor = proc(vtbl: ptr cQQmlFileSelectorVTable, _: ptr cQQmlFileSelector) {.cdecl.} =
    let vtbl = cast[ref QQmlFileSelectorVTable](vtbl)
    GC_unref(vtbl)
  if not isNil(vtbl.metaObject):
    vtbl[].vtbl.metaObject = miqt_exec_callback_cQQmlFileSelector_metaObject
  if not isNil(vtbl.metacast):
    vtbl[].vtbl.metacast = miqt_exec_callback_cQQmlFileSelector_metacast
  if not isNil(vtbl.metacall):
    vtbl[].vtbl.metacall = miqt_exec_callback_cQQmlFileSelector_metacall
  if not isNil(vtbl.event):
    vtbl[].vtbl.event = miqt_exec_callback_cQQmlFileSelector_event
  if not isNil(vtbl.eventFilter):
    vtbl[].vtbl.eventFilter = miqt_exec_callback_cQQmlFileSelector_eventFilter
  if not isNil(vtbl.timerEvent):
    vtbl[].vtbl.timerEvent = miqt_exec_callback_cQQmlFileSelector_timerEvent
  if not isNil(vtbl.childEvent):
    vtbl[].vtbl.childEvent = miqt_exec_callback_cQQmlFileSelector_childEvent
  if not isNil(vtbl.customEvent):
    vtbl[].vtbl.customEvent = miqt_exec_callback_cQQmlFileSelector_customEvent
  if not isNil(vtbl.connectNotify):
    vtbl[].vtbl.connectNotify = miqt_exec_callback_cQQmlFileSelector_connectNotify
  if not isNil(vtbl.disconnectNotify):
    vtbl[].vtbl.disconnectNotify = miqt_exec_callback_cQQmlFileSelector_disconnectNotify
  gen_qqmlfileselector_types.QQmlFileSelector(h: fcQQmlFileSelector_new(addr(vtbl[]), engine.h))

proc create*(T: type gen_qqmlfileselector_types.QQmlFileSelector,
    engine: gen_qqmlengine_types.QQmlEngine, parent: gen_qobject_types.QObject,
    vtbl: ref QQmlFileSelectorVTable = nil): gen_qqmlfileselector_types.QQmlFileSelector =
  let vtbl = if vtbl == nil: new QQmlFileSelectorVTable else: vtbl
  GC_ref(vtbl)
  vtbl.vtbl.destructor = proc(vtbl: ptr cQQmlFileSelectorVTable, _: ptr cQQmlFileSelector) {.cdecl.} =
    let vtbl = cast[ref QQmlFileSelectorVTable](vtbl)
    GC_unref(vtbl)
  if not isNil(vtbl.metaObject):
    vtbl[].vtbl.metaObject = miqt_exec_callback_cQQmlFileSelector_metaObject
  if not isNil(vtbl.metacast):
    vtbl[].vtbl.metacast = miqt_exec_callback_cQQmlFileSelector_metacast
  if not isNil(vtbl.metacall):
    vtbl[].vtbl.metacall = miqt_exec_callback_cQQmlFileSelector_metacall
  if not isNil(vtbl.event):
    vtbl[].vtbl.event = miqt_exec_callback_cQQmlFileSelector_event
  if not isNil(vtbl.eventFilter):
    vtbl[].vtbl.eventFilter = miqt_exec_callback_cQQmlFileSelector_eventFilter
  if not isNil(vtbl.timerEvent):
    vtbl[].vtbl.timerEvent = miqt_exec_callback_cQQmlFileSelector_timerEvent
  if not isNil(vtbl.childEvent):
    vtbl[].vtbl.childEvent = miqt_exec_callback_cQQmlFileSelector_childEvent
  if not isNil(vtbl.customEvent):
    vtbl[].vtbl.customEvent = miqt_exec_callback_cQQmlFileSelector_customEvent
  if not isNil(vtbl.connectNotify):
    vtbl[].vtbl.connectNotify = miqt_exec_callback_cQQmlFileSelector_connectNotify
  if not isNil(vtbl.disconnectNotify):
    vtbl[].vtbl.disconnectNotify = miqt_exec_callback_cQQmlFileSelector_disconnectNotify
  gen_qqmlfileselector_types.QQmlFileSelector(h: fcQQmlFileSelector_new2(addr(vtbl[]), engine.h, parent.h))

proc staticMetaObject*(_: type gen_qqmlfileselector_types.QQmlFileSelector): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQQmlFileSelector_staticMetaObject())
proc delete*(self: gen_qqmlfileselector_types.QQmlFileSelector) =
  fcQQmlFileSelector_delete(self.h)
