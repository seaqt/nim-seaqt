import ./Qt5WebKit_libs

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

const cflags = gorge("pkg-config --cflags Qt5WebKit")  & " -fPIC"
{.compile("gen_qwebhistoryinterface.cpp", cflags).}


import ./gen_qwebhistoryinterface_types
export gen_qwebhistoryinterface_types

import
  ../QtCore/gen_qcoreevent_types,
  ../QtCore/gen_qmetaobject_types,
  ../QtCore/gen_qobject,
  ../QtCore/gen_qobjectdefs_types
export
  gen_qcoreevent_types,
  gen_qmetaobject_types,
  gen_qobject,
  gen_qobjectdefs_types

type cQWebHistoryInterface*{.exportc: "QWebHistoryInterface", incompleteStruct.} = object

proc fcQWebHistoryInterface_metaObject(self: pointer, ): pointer {.importc: "QWebHistoryInterface_metaObject".}
proc fcQWebHistoryInterface_metacast(self: pointer, param1: cstring): pointer {.importc: "QWebHistoryInterface_metacast".}
proc fcQWebHistoryInterface_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.importc: "QWebHistoryInterface_metacall".}
proc fcQWebHistoryInterface_tr(s: cstring): struct_miqt_string {.importc: "QWebHistoryInterface_tr".}
proc fcQWebHistoryInterface_trUtf8(s: cstring): struct_miqt_string {.importc: "QWebHistoryInterface_trUtf8".}
proc fcQWebHistoryInterface_setDefaultInterface(defaultInterface: pointer): void {.importc: "QWebHistoryInterface_setDefaultInterface".}
proc fcQWebHistoryInterface_defaultInterface(): pointer {.importc: "QWebHistoryInterface_defaultInterface".}
proc fcQWebHistoryInterface_historyContains(self: pointer, url: struct_miqt_string): bool {.importc: "QWebHistoryInterface_historyContains".}
proc fcQWebHistoryInterface_addHistoryEntry(self: pointer, url: struct_miqt_string): void {.importc: "QWebHistoryInterface_addHistoryEntry".}
proc fcQWebHistoryInterface_tr2(s: cstring, c: cstring): struct_miqt_string {.importc: "QWebHistoryInterface_tr2".}
proc fcQWebHistoryInterface_tr3(s: cstring, c: cstring, n: cint): struct_miqt_string {.importc: "QWebHistoryInterface_tr3".}
proc fcQWebHistoryInterface_trUtf82(s: cstring, c: cstring): struct_miqt_string {.importc: "QWebHistoryInterface_trUtf82".}
proc fcQWebHistoryInterface_trUtf83(s: cstring, c: cstring, n: cint): struct_miqt_string {.importc: "QWebHistoryInterface_trUtf83".}
type cQWebHistoryInterfaceVTable = object
  destructor*: proc(vtbl: ptr cQWebHistoryInterfaceVTable, self: ptr cQWebHistoryInterface) {.cdecl, raises:[], gcsafe.}
  metaObject*: proc(vtbl, self: pointer, ): pointer {.cdecl, raises: [], gcsafe.}
  metacast*: proc(vtbl, self: pointer, param1: cstring): pointer {.cdecl, raises: [], gcsafe.}
  metacall*: proc(vtbl, self: pointer, param1: cint, param2: cint, param3: pointer): cint {.cdecl, raises: [], gcsafe.}
  historyContains*: proc(vtbl, self: pointer, url: struct_miqt_string): bool {.cdecl, raises: [], gcsafe.}
  addHistoryEntry*: proc(vtbl, self: pointer, url: struct_miqt_string): void {.cdecl, raises: [], gcsafe.}
  event*: proc(vtbl, self: pointer, event: pointer): bool {.cdecl, raises: [], gcsafe.}
  eventFilter*: proc(vtbl, self: pointer, watched: pointer, event: pointer): bool {.cdecl, raises: [], gcsafe.}
  timerEvent*: proc(vtbl, self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  childEvent*: proc(vtbl, self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  customEvent*: proc(vtbl, self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  connectNotify*: proc(vtbl, self: pointer, signal: pointer): void {.cdecl, raises: [], gcsafe.}
  disconnectNotify*: proc(vtbl, self: pointer, signal: pointer): void {.cdecl, raises: [], gcsafe.}
proc fcQWebHistoryInterface_virtualbase_metaObject(self: pointer, ): pointer {.importc: "QWebHistoryInterface_virtualbase_metaObject".}
proc fcQWebHistoryInterface_virtualbase_metacast(self: pointer, param1: cstring): pointer {.importc: "QWebHistoryInterface_virtualbase_metacast".}
proc fcQWebHistoryInterface_virtualbase_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.importc: "QWebHistoryInterface_virtualbase_metacall".}
proc fcQWebHistoryInterface_virtualbase_event(self: pointer, event: pointer): bool {.importc: "QWebHistoryInterface_virtualbase_event".}
proc fcQWebHistoryInterface_virtualbase_eventFilter(self: pointer, watched: pointer, event: pointer): bool {.importc: "QWebHistoryInterface_virtualbase_eventFilter".}
proc fcQWebHistoryInterface_virtualbase_timerEvent(self: pointer, event: pointer): void {.importc: "QWebHistoryInterface_virtualbase_timerEvent".}
proc fcQWebHistoryInterface_virtualbase_childEvent(self: pointer, event: pointer): void {.importc: "QWebHistoryInterface_virtualbase_childEvent".}
proc fcQWebHistoryInterface_virtualbase_customEvent(self: pointer, event: pointer): void {.importc: "QWebHistoryInterface_virtualbase_customEvent".}
proc fcQWebHistoryInterface_virtualbase_connectNotify(self: pointer, signal: pointer): void {.importc: "QWebHistoryInterface_virtualbase_connectNotify".}
proc fcQWebHistoryInterface_virtualbase_disconnectNotify(self: pointer, signal: pointer): void {.importc: "QWebHistoryInterface_virtualbase_disconnectNotify".}
proc fcQWebHistoryInterface_new(vtbl: pointer, ): ptr cQWebHistoryInterface {.importc: "QWebHistoryInterface_new".}
proc fcQWebHistoryInterface_new2(vtbl: pointer, parent: pointer): ptr cQWebHistoryInterface {.importc: "QWebHistoryInterface_new2".}
proc fcQWebHistoryInterface_staticMetaObject(): pointer {.importc: "QWebHistoryInterface_staticMetaObject".}
proc fcQWebHistoryInterface_delete(self: pointer) {.importc: "QWebHistoryInterface_delete".}

proc metaObject*(self: gen_qwebhistoryinterface_types.QWebHistoryInterface, ): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQWebHistoryInterface_metaObject(self.h))

proc metacast*(self: gen_qwebhistoryinterface_types.QWebHistoryInterface, param1: cstring): pointer =
  fcQWebHistoryInterface_metacast(self.h, param1)

proc metacall*(self: gen_qwebhistoryinterface_types.QWebHistoryInterface, param1: cint, param2: cint, param3: pointer): cint =
  fcQWebHistoryInterface_metacall(self.h, cint(param1), param2, param3)

proc tr*(_: type gen_qwebhistoryinterface_types.QWebHistoryInterface, s: cstring): string =
  let v_ms = fcQWebHistoryInterface_tr(s)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc trUtf8*(_: type gen_qwebhistoryinterface_types.QWebHistoryInterface, s: cstring): string =
  let v_ms = fcQWebHistoryInterface_trUtf8(s)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc setDefaultInterface*(_: type gen_qwebhistoryinterface_types.QWebHistoryInterface, defaultInterface: gen_qwebhistoryinterface_types.QWebHistoryInterface): void =
  fcQWebHistoryInterface_setDefaultInterface(defaultInterface.h)

proc defaultInterface*(_: type gen_qwebhistoryinterface_types.QWebHistoryInterface, ): gen_qwebhistoryinterface_types.QWebHistoryInterface =
  gen_qwebhistoryinterface_types.QWebHistoryInterface(h: fcQWebHistoryInterface_defaultInterface())

proc historyContains*(self: gen_qwebhistoryinterface_types.QWebHistoryInterface, url: string): bool =
  fcQWebHistoryInterface_historyContains(self.h, struct_miqt_string(data: url, len: csize_t(len(url))))

proc addHistoryEntry*(self: gen_qwebhistoryinterface_types.QWebHistoryInterface, url: string): void =
  fcQWebHistoryInterface_addHistoryEntry(self.h, struct_miqt_string(data: url, len: csize_t(len(url))))

proc tr*(_: type gen_qwebhistoryinterface_types.QWebHistoryInterface, s: cstring, c: cstring): string =
  let v_ms = fcQWebHistoryInterface_tr2(s, c)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc tr*(_: type gen_qwebhistoryinterface_types.QWebHistoryInterface, s: cstring, c: cstring, n: cint): string =
  let v_ms = fcQWebHistoryInterface_tr3(s, c, n)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc trUtf8*(_: type gen_qwebhistoryinterface_types.QWebHistoryInterface, s: cstring, c: cstring): string =
  let v_ms = fcQWebHistoryInterface_trUtf82(s, c)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc trUtf8*(_: type gen_qwebhistoryinterface_types.QWebHistoryInterface, s: cstring, c: cstring, n: cint): string =
  let v_ms = fcQWebHistoryInterface_trUtf83(s, c, n)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

type QWebHistoryInterfacemetaObjectProc* = proc(self: QWebHistoryInterface): gen_qobjectdefs_types.QMetaObject {.raises: [], gcsafe.}
type QWebHistoryInterfacemetacastProc* = proc(self: QWebHistoryInterface, param1: cstring): pointer {.raises: [], gcsafe.}
type QWebHistoryInterfacemetacallProc* = proc(self: QWebHistoryInterface, param1: cint, param2: cint, param3: pointer): cint {.raises: [], gcsafe.}
type QWebHistoryInterfacehistoryContainsProc* = proc(self: QWebHistoryInterface, url: string): bool {.raises: [], gcsafe.}
type QWebHistoryInterfaceaddHistoryEntryProc* = proc(self: QWebHistoryInterface, url: string): void {.raises: [], gcsafe.}
type QWebHistoryInterfaceeventProc* = proc(self: QWebHistoryInterface, event: gen_qcoreevent_types.QEvent): bool {.raises: [], gcsafe.}
type QWebHistoryInterfaceeventFilterProc* = proc(self: QWebHistoryInterface, watched: gen_qobject_types.QObject, event: gen_qcoreevent_types.QEvent): bool {.raises: [], gcsafe.}
type QWebHistoryInterfacetimerEventProc* = proc(self: QWebHistoryInterface, event: gen_qcoreevent_types.QTimerEvent): void {.raises: [], gcsafe.}
type QWebHistoryInterfacechildEventProc* = proc(self: QWebHistoryInterface, event: gen_qcoreevent_types.QChildEvent): void {.raises: [], gcsafe.}
type QWebHistoryInterfacecustomEventProc* = proc(self: QWebHistoryInterface, event: gen_qcoreevent_types.QEvent): void {.raises: [], gcsafe.}
type QWebHistoryInterfaceconnectNotifyProc* = proc(self: QWebHistoryInterface, signal: gen_qmetaobject_types.QMetaMethod): void {.raises: [], gcsafe.}
type QWebHistoryInterfacedisconnectNotifyProc* = proc(self: QWebHistoryInterface, signal: gen_qmetaobject_types.QMetaMethod): void {.raises: [], gcsafe.}
type QWebHistoryInterfaceVTable* = object
  vtbl: cQWebHistoryInterfaceVTable
  metaObject*: QWebHistoryInterfacemetaObjectProc
  metacast*: QWebHistoryInterfacemetacastProc
  metacall*: QWebHistoryInterfacemetacallProc
  historyContains*: QWebHistoryInterfacehistoryContainsProc
  addHistoryEntry*: QWebHistoryInterfaceaddHistoryEntryProc
  event*: QWebHistoryInterfaceeventProc
  eventFilter*: QWebHistoryInterfaceeventFilterProc
  timerEvent*: QWebHistoryInterfacetimerEventProc
  childEvent*: QWebHistoryInterfacechildEventProc
  customEvent*: QWebHistoryInterfacecustomEventProc
  connectNotify*: QWebHistoryInterfaceconnectNotifyProc
  disconnectNotify*: QWebHistoryInterfacedisconnectNotifyProc
proc QWebHistoryInterfacemetaObject*(self: gen_qwebhistoryinterface_types.QWebHistoryInterface, ): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQWebHistoryInterface_virtualbase_metaObject(self.h))

proc miqt_exec_callback_cQWebHistoryInterface_metaObject(vtbl: pointer, self: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QWebHistoryInterfaceVTable](vtbl)
  let self = QWebHistoryInterface(h: self)
  var virtualReturn = vtbl[].metaObject(self)
  virtualReturn.h

proc QWebHistoryInterfacemetacast*(self: gen_qwebhistoryinterface_types.QWebHistoryInterface, param1: cstring): pointer =
  fcQWebHistoryInterface_virtualbase_metacast(self.h, param1)

proc miqt_exec_callback_cQWebHistoryInterface_metacast(vtbl: pointer, self: pointer, param1: cstring): pointer {.cdecl.} =
  let vtbl = cast[ptr QWebHistoryInterfaceVTable](vtbl)
  let self = QWebHistoryInterface(h: self)
  let slotval1 = (param1)
  var virtualReturn = vtbl[].metacast(self, slotval1)
  virtualReturn

proc QWebHistoryInterfacemetacall*(self: gen_qwebhistoryinterface_types.QWebHistoryInterface, param1: cint, param2: cint, param3: pointer): cint =
  fcQWebHistoryInterface_virtualbase_metacall(self.h, cint(param1), param2, param3)

proc miqt_exec_callback_cQWebHistoryInterface_metacall(vtbl: pointer, self: pointer, param1: cint, param2: cint, param3: pointer): cint {.cdecl.} =
  let vtbl = cast[ptr QWebHistoryInterfaceVTable](vtbl)
  let self = QWebHistoryInterface(h: self)
  let slotval1 = cint(param1)
  let slotval2 = param2
  let slotval3 = param3
  var virtualReturn = vtbl[].metacall(self, slotval1, slotval2, slotval3)
  virtualReturn

proc miqt_exec_callback_cQWebHistoryInterface_historyContains(vtbl: pointer, self: pointer, url: struct_miqt_string): bool {.cdecl.} =
  let vtbl = cast[ptr QWebHistoryInterfaceVTable](vtbl)
  let self = QWebHistoryInterface(h: self)
  let vurl_ms = url
  let vurlx_ret = string.fromBytes(toOpenArrayByte(vurl_ms.data, 0, int(vurl_ms.len)-1))
  c_free(vurl_ms.data)
  let slotval1 = vurlx_ret
  var virtualReturn = vtbl[].historyContains(self, slotval1)
  virtualReturn

proc miqt_exec_callback_cQWebHistoryInterface_addHistoryEntry(vtbl: pointer, self: pointer, url: struct_miqt_string): void {.cdecl.} =
  let vtbl = cast[ptr QWebHistoryInterfaceVTable](vtbl)
  let self = QWebHistoryInterface(h: self)
  let vurl_ms = url
  let vurlx_ret = string.fromBytes(toOpenArrayByte(vurl_ms.data, 0, int(vurl_ms.len)-1))
  c_free(vurl_ms.data)
  let slotval1 = vurlx_ret
  vtbl[].addHistoryEntry(self, slotval1)

proc QWebHistoryInterfaceevent*(self: gen_qwebhistoryinterface_types.QWebHistoryInterface, event: gen_qcoreevent_types.QEvent): bool =
  fcQWebHistoryInterface_virtualbase_event(self.h, event.h)

proc miqt_exec_callback_cQWebHistoryInterface_event(vtbl: pointer, self: pointer, event: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QWebHistoryInterfaceVTable](vtbl)
  let self = QWebHistoryInterface(h: self)
  let slotval1 = gen_qcoreevent_types.QEvent(h: event)
  var virtualReturn = vtbl[].event(self, slotval1)
  virtualReturn

proc QWebHistoryInterfaceeventFilter*(self: gen_qwebhistoryinterface_types.QWebHistoryInterface, watched: gen_qobject_types.QObject, event: gen_qcoreevent_types.QEvent): bool =
  fcQWebHistoryInterface_virtualbase_eventFilter(self.h, watched.h, event.h)

proc miqt_exec_callback_cQWebHistoryInterface_eventFilter(vtbl: pointer, self: pointer, watched: pointer, event: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QWebHistoryInterfaceVTable](vtbl)
  let self = QWebHistoryInterface(h: self)
  let slotval1 = gen_qobject_types.QObject(h: watched)
  let slotval2 = gen_qcoreevent_types.QEvent(h: event)
  var virtualReturn = vtbl[].eventFilter(self, slotval1, slotval2)
  virtualReturn

proc QWebHistoryInterfacetimerEvent*(self: gen_qwebhistoryinterface_types.QWebHistoryInterface, event: gen_qcoreevent_types.QTimerEvent): void =
  fcQWebHistoryInterface_virtualbase_timerEvent(self.h, event.h)

proc miqt_exec_callback_cQWebHistoryInterface_timerEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QWebHistoryInterfaceVTable](vtbl)
  let self = QWebHistoryInterface(h: self)
  let slotval1 = gen_qcoreevent_types.QTimerEvent(h: event)
  vtbl[].timerEvent(self, slotval1)

proc QWebHistoryInterfacechildEvent*(self: gen_qwebhistoryinterface_types.QWebHistoryInterface, event: gen_qcoreevent_types.QChildEvent): void =
  fcQWebHistoryInterface_virtualbase_childEvent(self.h, event.h)

proc miqt_exec_callback_cQWebHistoryInterface_childEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QWebHistoryInterfaceVTable](vtbl)
  let self = QWebHistoryInterface(h: self)
  let slotval1 = gen_qcoreevent_types.QChildEvent(h: event)
  vtbl[].childEvent(self, slotval1)

proc QWebHistoryInterfacecustomEvent*(self: gen_qwebhistoryinterface_types.QWebHistoryInterface, event: gen_qcoreevent_types.QEvent): void =
  fcQWebHistoryInterface_virtualbase_customEvent(self.h, event.h)

proc miqt_exec_callback_cQWebHistoryInterface_customEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QWebHistoryInterfaceVTable](vtbl)
  let self = QWebHistoryInterface(h: self)
  let slotval1 = gen_qcoreevent_types.QEvent(h: event)
  vtbl[].customEvent(self, slotval1)

proc QWebHistoryInterfaceconnectNotify*(self: gen_qwebhistoryinterface_types.QWebHistoryInterface, signal: gen_qmetaobject_types.QMetaMethod): void =
  fcQWebHistoryInterface_virtualbase_connectNotify(self.h, signal.h)

proc miqt_exec_callback_cQWebHistoryInterface_connectNotify(vtbl: pointer, self: pointer, signal: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QWebHistoryInterfaceVTable](vtbl)
  let self = QWebHistoryInterface(h: self)
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal)
  vtbl[].connectNotify(self, slotval1)

proc QWebHistoryInterfacedisconnectNotify*(self: gen_qwebhistoryinterface_types.QWebHistoryInterface, signal: gen_qmetaobject_types.QMetaMethod): void =
  fcQWebHistoryInterface_virtualbase_disconnectNotify(self.h, signal.h)

proc miqt_exec_callback_cQWebHistoryInterface_disconnectNotify(vtbl: pointer, self: pointer, signal: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QWebHistoryInterfaceVTable](vtbl)
  let self = QWebHistoryInterface(h: self)
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal)
  vtbl[].disconnectNotify(self, slotval1)

proc create*(T: type gen_qwebhistoryinterface_types.QWebHistoryInterface,
    vtbl: ref QWebHistoryInterfaceVTable = nil): gen_qwebhistoryinterface_types.QWebHistoryInterface =
  let vtbl = if vtbl == nil: new QWebHistoryInterfaceVTable else: vtbl
  GC_ref(vtbl)
  vtbl.vtbl.destructor = proc(vtbl: ptr cQWebHistoryInterfaceVTable, _: ptr cQWebHistoryInterface) {.cdecl.} =
    let vtbl = cast[ref QWebHistoryInterfaceVTable](vtbl)
    GC_unref(vtbl)
  if not isNil(vtbl.metaObject):
    vtbl[].vtbl.metaObject = miqt_exec_callback_cQWebHistoryInterface_metaObject
  if not isNil(vtbl.metacast):
    vtbl[].vtbl.metacast = miqt_exec_callback_cQWebHistoryInterface_metacast
  if not isNil(vtbl.metacall):
    vtbl[].vtbl.metacall = miqt_exec_callback_cQWebHistoryInterface_metacall
  if not isNil(vtbl.historyContains):
    vtbl[].vtbl.historyContains = miqt_exec_callback_cQWebHistoryInterface_historyContains
  if not isNil(vtbl.addHistoryEntry):
    vtbl[].vtbl.addHistoryEntry = miqt_exec_callback_cQWebHistoryInterface_addHistoryEntry
  if not isNil(vtbl.event):
    vtbl[].vtbl.event = miqt_exec_callback_cQWebHistoryInterface_event
  if not isNil(vtbl.eventFilter):
    vtbl[].vtbl.eventFilter = miqt_exec_callback_cQWebHistoryInterface_eventFilter
  if not isNil(vtbl.timerEvent):
    vtbl[].vtbl.timerEvent = miqt_exec_callback_cQWebHistoryInterface_timerEvent
  if not isNil(vtbl.childEvent):
    vtbl[].vtbl.childEvent = miqt_exec_callback_cQWebHistoryInterface_childEvent
  if not isNil(vtbl.customEvent):
    vtbl[].vtbl.customEvent = miqt_exec_callback_cQWebHistoryInterface_customEvent
  if not isNil(vtbl.connectNotify):
    vtbl[].vtbl.connectNotify = miqt_exec_callback_cQWebHistoryInterface_connectNotify
  if not isNil(vtbl.disconnectNotify):
    vtbl[].vtbl.disconnectNotify = miqt_exec_callback_cQWebHistoryInterface_disconnectNotify
  gen_qwebhistoryinterface_types.QWebHistoryInterface(h: fcQWebHistoryInterface_new(addr(vtbl[]), ))

proc create*(T: type gen_qwebhistoryinterface_types.QWebHistoryInterface,
    parent: gen_qobject_types.QObject,
    vtbl: ref QWebHistoryInterfaceVTable = nil): gen_qwebhistoryinterface_types.QWebHistoryInterface =
  let vtbl = if vtbl == nil: new QWebHistoryInterfaceVTable else: vtbl
  GC_ref(vtbl)
  vtbl.vtbl.destructor = proc(vtbl: ptr cQWebHistoryInterfaceVTable, _: ptr cQWebHistoryInterface) {.cdecl.} =
    let vtbl = cast[ref QWebHistoryInterfaceVTable](vtbl)
    GC_unref(vtbl)
  if not isNil(vtbl.metaObject):
    vtbl[].vtbl.metaObject = miqt_exec_callback_cQWebHistoryInterface_metaObject
  if not isNil(vtbl.metacast):
    vtbl[].vtbl.metacast = miqt_exec_callback_cQWebHistoryInterface_metacast
  if not isNil(vtbl.metacall):
    vtbl[].vtbl.metacall = miqt_exec_callback_cQWebHistoryInterface_metacall
  if not isNil(vtbl.historyContains):
    vtbl[].vtbl.historyContains = miqt_exec_callback_cQWebHistoryInterface_historyContains
  if not isNil(vtbl.addHistoryEntry):
    vtbl[].vtbl.addHistoryEntry = miqt_exec_callback_cQWebHistoryInterface_addHistoryEntry
  if not isNil(vtbl.event):
    vtbl[].vtbl.event = miqt_exec_callback_cQWebHistoryInterface_event
  if not isNil(vtbl.eventFilter):
    vtbl[].vtbl.eventFilter = miqt_exec_callback_cQWebHistoryInterface_eventFilter
  if not isNil(vtbl.timerEvent):
    vtbl[].vtbl.timerEvent = miqt_exec_callback_cQWebHistoryInterface_timerEvent
  if not isNil(vtbl.childEvent):
    vtbl[].vtbl.childEvent = miqt_exec_callback_cQWebHistoryInterface_childEvent
  if not isNil(vtbl.customEvent):
    vtbl[].vtbl.customEvent = miqt_exec_callback_cQWebHistoryInterface_customEvent
  if not isNil(vtbl.connectNotify):
    vtbl[].vtbl.connectNotify = miqt_exec_callback_cQWebHistoryInterface_connectNotify
  if not isNil(vtbl.disconnectNotify):
    vtbl[].vtbl.disconnectNotify = miqt_exec_callback_cQWebHistoryInterface_disconnectNotify
  gen_qwebhistoryinterface_types.QWebHistoryInterface(h: fcQWebHistoryInterface_new2(addr(vtbl[]), parent.h))

proc staticMetaObject*(_: type gen_qwebhistoryinterface_types.QWebHistoryInterface): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQWebHistoryInterface_staticMetaObject())
proc delete*(self: gen_qwebhistoryinterface_types.QWebHistoryInterface) =
  fcQWebHistoryInterface_delete(self.h)
