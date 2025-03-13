import ./Qt5WebKit_libs

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

const cflags = gorge("pkg-config --cflags Qt5WebKit") & " -fPIC"
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

proc fcQWebHistoryInterface_metaObject(self: pointer): pointer {.importc: "QWebHistoryInterface_metaObject".}
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
proc fcQWebHistoryInterface_vtbl(self: pointer): pointer {.importc: "QWebHistoryInterface_vtbl".}
proc fcQWebHistoryInterface_vdata(self: pointer): pointer {.importc: "QWebHistoryInterface_vdata".}
type cQWebHistoryInterfaceVTable {.pure.} = object
  destructor*: proc(self: pointer) {.cdecl, raises:[], gcsafe.}
  metaObject*: proc(self: pointer): pointer {.cdecl, raises: [], gcsafe.}
  metacast*: proc(self: pointer, param1: cstring): pointer {.cdecl, raises: [], gcsafe.}
  metacall*: proc(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.cdecl, raises: [], gcsafe.}
  historyContains*: proc(self: pointer, url: struct_miqt_string): bool {.cdecl, raises: [], gcsafe.}
  addHistoryEntry*: proc(self: pointer, url: struct_miqt_string): void {.cdecl, raises: [], gcsafe.}
  event*: proc(self: pointer, event: pointer): bool {.cdecl, raises: [], gcsafe.}
  eventFilter*: proc(self: pointer, watched: pointer, event: pointer): bool {.cdecl, raises: [], gcsafe.}
  timerEvent*: proc(self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  childEvent*: proc(self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  customEvent*: proc(self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  connectNotify*: proc(self: pointer, signal: pointer): void {.cdecl, raises: [], gcsafe.}
  disconnectNotify*: proc(self: pointer, signal: pointer): void {.cdecl, raises: [], gcsafe.}
proc fcQWebHistoryInterface_virtualbase_metaObject(self: pointer): pointer {.importc: "QWebHistoryInterface_virtualbase_metaObject".}
proc fcQWebHistoryInterface_virtualbase_metacast(self: pointer, param1: cstring): pointer {.importc: "QWebHistoryInterface_virtualbase_metacast".}
proc fcQWebHistoryInterface_virtualbase_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.importc: "QWebHistoryInterface_virtualbase_metacall".}
proc fcQWebHistoryInterface_virtualbase_event(self: pointer, event: pointer): bool {.importc: "QWebHistoryInterface_virtualbase_event".}
proc fcQWebHistoryInterface_virtualbase_eventFilter(self: pointer, watched: pointer, event: pointer): bool {.importc: "QWebHistoryInterface_virtualbase_eventFilter".}
proc fcQWebHistoryInterface_virtualbase_timerEvent(self: pointer, event: pointer): void {.importc: "QWebHistoryInterface_virtualbase_timerEvent".}
proc fcQWebHistoryInterface_virtualbase_childEvent(self: pointer, event: pointer): void {.importc: "QWebHistoryInterface_virtualbase_childEvent".}
proc fcQWebHistoryInterface_virtualbase_customEvent(self: pointer, event: pointer): void {.importc: "QWebHistoryInterface_virtualbase_customEvent".}
proc fcQWebHistoryInterface_virtualbase_connectNotify(self: pointer, signal: pointer): void {.importc: "QWebHistoryInterface_virtualbase_connectNotify".}
proc fcQWebHistoryInterface_virtualbase_disconnectNotify(self: pointer, signal: pointer): void {.importc: "QWebHistoryInterface_virtualbase_disconnectNotify".}
proc fcQWebHistoryInterface_protectedbase_sender(self: pointer): pointer {.importc: "QWebHistoryInterface_protectedbase_sender".}
proc fcQWebHistoryInterface_protectedbase_senderSignalIndex(self: pointer): cint {.importc: "QWebHistoryInterface_protectedbase_senderSignalIndex".}
proc fcQWebHistoryInterface_protectedbase_receivers(self: pointer, signal: cstring): cint {.importc: "QWebHistoryInterface_protectedbase_receivers".}
proc fcQWebHistoryInterface_protectedbase_isSignalConnected(self: pointer, signal: pointer): bool {.importc: "QWebHistoryInterface_protectedbase_isSignalConnected".}
proc fcQWebHistoryInterface_new(vtbl, vdata: pointer): ptr cQWebHistoryInterface {.importc: "QWebHistoryInterface_new".}
proc fcQWebHistoryInterface_new2(vtbl, vdata: pointer, parent: pointer): ptr cQWebHistoryInterface {.importc: "QWebHistoryInterface_new2".}
proc fcQWebHistoryInterface_staticMetaObject(): pointer {.importc: "QWebHistoryInterface_staticMetaObject".}

proc metaObject*(self: gen_qwebhistoryinterface_types.QWebHistoryInterface): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQWebHistoryInterface_metaObject(self.h), owned: false)

proc metacast*(self: gen_qwebhistoryinterface_types.QWebHistoryInterface, param1: cstring): pointer =
  fcQWebHistoryInterface_metacast(self.h, param1)

proc metacall*(self: gen_qwebhistoryinterface_types.QWebHistoryInterface, param1: cint, param2: cint, param3: pointer): cint =
  fcQWebHistoryInterface_metacall(self.h, cint(param1), param2, param3)

proc tr*(_: type gen_qwebhistoryinterface_types.QWebHistoryInterface, s: cstring): string =
  let v_ms = fcQWebHistoryInterface_tr(s)
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

proc trUtf8*(_: type gen_qwebhistoryinterface_types.QWebHistoryInterface, s: cstring): string =
  let v_ms = fcQWebHistoryInterface_trUtf8(s)
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

proc setDefaultInterface*(_: type gen_qwebhistoryinterface_types.QWebHistoryInterface, defaultInterface: gen_qwebhistoryinterface_types.QWebHistoryInterface): void =
  fcQWebHistoryInterface_setDefaultInterface(defaultInterface.h)

proc defaultInterface*(_: type gen_qwebhistoryinterface_types.QWebHistoryInterface): gen_qwebhistoryinterface_types.QWebHistoryInterface =
  gen_qwebhistoryinterface_types.QWebHistoryInterface(h: fcQWebHistoryInterface_defaultInterface(), owned: false)

proc historyContains*(self: gen_qwebhistoryinterface_types.QWebHistoryInterface, url: openArray[char]): bool =
  fcQWebHistoryInterface_historyContains(self.h, struct_miqt_string(data: if len(url) > 0: addr url[0] else: nil, len: csize_t(len(url))))

proc addHistoryEntry*(self: gen_qwebhistoryinterface_types.QWebHistoryInterface, url: openArray[char]): void =
  fcQWebHistoryInterface_addHistoryEntry(self.h, struct_miqt_string(data: if len(url) > 0: addr url[0] else: nil, len: csize_t(len(url))))

proc tr*(_: type gen_qwebhistoryinterface_types.QWebHistoryInterface, s: cstring, c: cstring): string =
  let v_ms = fcQWebHistoryInterface_tr2(s, c)
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

proc tr*(_: type gen_qwebhistoryinterface_types.QWebHistoryInterface, s: cstring, c: cstring, n: cint): string =
  let v_ms = fcQWebHistoryInterface_tr3(s, c, n)
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

proc trUtf8*(_: type gen_qwebhistoryinterface_types.QWebHistoryInterface, s: cstring, c: cstring): string =
  let v_ms = fcQWebHistoryInterface_trUtf82(s, c)
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

proc trUtf8*(_: type gen_qwebhistoryinterface_types.QWebHistoryInterface, s: cstring, c: cstring, n: cint): string =
  let v_ms = fcQWebHistoryInterface_trUtf83(s, c, n)
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

type QWebHistoryInterfacemetaObjectProc* = proc(self: QWebHistoryInterface): gen_qobjectdefs_types.QMetaObject {.raises: [], gcsafe.}
type QWebHistoryInterfacemetacastProc* = proc(self: QWebHistoryInterface, param1: cstring): pointer {.raises: [], gcsafe.}
type QWebHistoryInterfacemetacallProc* = proc(self: QWebHistoryInterface, param1: cint, param2: cint, param3: pointer): cint {.raises: [], gcsafe.}
type QWebHistoryInterfacehistoryContainsProc* = proc(self: QWebHistoryInterface, url: openArray[char]): bool {.raises: [], gcsafe.}
type QWebHistoryInterfaceaddHistoryEntryProc* = proc(self: QWebHistoryInterface, url: openArray[char]): void {.raises: [], gcsafe.}
type QWebHistoryInterfaceeventProc* = proc(self: QWebHistoryInterface, event: gen_qcoreevent_types.QEvent): bool {.raises: [], gcsafe.}
type QWebHistoryInterfaceeventFilterProc* = proc(self: QWebHistoryInterface, watched: gen_qobject_types.QObject, event: gen_qcoreevent_types.QEvent): bool {.raises: [], gcsafe.}
type QWebHistoryInterfacetimerEventProc* = proc(self: QWebHistoryInterface, event: gen_qcoreevent_types.QTimerEvent): void {.raises: [], gcsafe.}
type QWebHistoryInterfacechildEventProc* = proc(self: QWebHistoryInterface, event: gen_qcoreevent_types.QChildEvent): void {.raises: [], gcsafe.}
type QWebHistoryInterfacecustomEventProc* = proc(self: QWebHistoryInterface, event: gen_qcoreevent_types.QEvent): void {.raises: [], gcsafe.}
type QWebHistoryInterfaceconnectNotifyProc* = proc(self: QWebHistoryInterface, signal: gen_qmetaobject_types.QMetaMethod): void {.raises: [], gcsafe.}
type QWebHistoryInterfacedisconnectNotifyProc* = proc(self: QWebHistoryInterface, signal: gen_qmetaobject_types.QMetaMethod): void {.raises: [], gcsafe.}
type QWebHistoryInterfaceVTable* {.inheritable, pure.} = object
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
proc QWebHistoryInterfacemetaObject*(self: gen_qwebhistoryinterface_types.QWebHistoryInterface): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQWebHistoryInterface_virtualbase_metaObject(self.h), owned: false)

proc cQWebHistoryInterface_vtable_callback_metaObject(self: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QWebHistoryInterfaceVTable](fcQWebHistoryInterface_vdata(self))
  let self = QWebHistoryInterface(h: self)
  var virtualReturn = vtbl[].metaObject(self)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc QWebHistoryInterfacemetacast*(self: gen_qwebhistoryinterface_types.QWebHistoryInterface, param1: cstring): pointer =
  fcQWebHistoryInterface_virtualbase_metacast(self.h, param1)

proc cQWebHistoryInterface_vtable_callback_metacast(self: pointer, param1: cstring): pointer {.cdecl.} =
  let vtbl = cast[ptr QWebHistoryInterfaceVTable](fcQWebHistoryInterface_vdata(self))
  let self = QWebHistoryInterface(h: self)
  let slotval1 = (param1)
  var virtualReturn = vtbl[].metacast(self, slotval1)
  virtualReturn

proc QWebHistoryInterfacemetacall*(self: gen_qwebhistoryinterface_types.QWebHistoryInterface, param1: cint, param2: cint, param3: pointer): cint =
  fcQWebHistoryInterface_virtualbase_metacall(self.h, cint(param1), param2, param3)

proc cQWebHistoryInterface_vtable_callback_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.cdecl.} =
  let vtbl = cast[ptr QWebHistoryInterfaceVTable](fcQWebHistoryInterface_vdata(self))
  let self = QWebHistoryInterface(h: self)
  let slotval1 = cint(param1)
  let slotval2 = param2
  let slotval3 = param3
  var virtualReturn = vtbl[].metacall(self, slotval1, slotval2, slotval3)
  virtualReturn

proc cQWebHistoryInterface_vtable_callback_historyContains(self: pointer, url: struct_miqt_string): bool {.cdecl.} =
  let vtbl = cast[ptr QWebHistoryInterfaceVTable](fcQWebHistoryInterface_vdata(self))
  let self = QWebHistoryInterface(h: self)
  let vurl_ms = url
  let vurlx_ret = string.fromBytes(vurl_ms)
  c_free(vurl_ms.data)
  let slotval1 = vurlx_ret
  var virtualReturn = vtbl[].historyContains(self, slotval1)
  virtualReturn

proc cQWebHistoryInterface_vtable_callback_addHistoryEntry(self: pointer, url: struct_miqt_string): void {.cdecl.} =
  let vtbl = cast[ptr QWebHistoryInterfaceVTable](fcQWebHistoryInterface_vdata(self))
  let self = QWebHistoryInterface(h: self)
  let vurl_ms = url
  let vurlx_ret = string.fromBytes(vurl_ms)
  c_free(vurl_ms.data)
  let slotval1 = vurlx_ret
  vtbl[].addHistoryEntry(self, slotval1)

proc QWebHistoryInterfaceevent*(self: gen_qwebhistoryinterface_types.QWebHistoryInterface, event: gen_qcoreevent_types.QEvent): bool =
  fcQWebHistoryInterface_virtualbase_event(self.h, event.h)

proc cQWebHistoryInterface_vtable_callback_event(self: pointer, event: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QWebHistoryInterfaceVTable](fcQWebHistoryInterface_vdata(self))
  let self = QWebHistoryInterface(h: self)
  let slotval1 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  var virtualReturn = vtbl[].event(self, slotval1)
  virtualReturn

proc QWebHistoryInterfaceeventFilter*(self: gen_qwebhistoryinterface_types.QWebHistoryInterface, watched: gen_qobject_types.QObject, event: gen_qcoreevent_types.QEvent): bool =
  fcQWebHistoryInterface_virtualbase_eventFilter(self.h, watched.h, event.h)

proc cQWebHistoryInterface_vtable_callback_eventFilter(self: pointer, watched: pointer, event: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QWebHistoryInterfaceVTable](fcQWebHistoryInterface_vdata(self))
  let self = QWebHistoryInterface(h: self)
  let slotval1 = gen_qobject_types.QObject(h: watched, owned: false)
  let slotval2 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  var virtualReturn = vtbl[].eventFilter(self, slotval1, slotval2)
  virtualReturn

proc QWebHistoryInterfacetimerEvent*(self: gen_qwebhistoryinterface_types.QWebHistoryInterface, event: gen_qcoreevent_types.QTimerEvent): void =
  fcQWebHistoryInterface_virtualbase_timerEvent(self.h, event.h)

proc cQWebHistoryInterface_vtable_callback_timerEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QWebHistoryInterfaceVTable](fcQWebHistoryInterface_vdata(self))
  let self = QWebHistoryInterface(h: self)
  let slotval1 = gen_qcoreevent_types.QTimerEvent(h: event, owned: false)
  vtbl[].timerEvent(self, slotval1)

proc QWebHistoryInterfacechildEvent*(self: gen_qwebhistoryinterface_types.QWebHistoryInterface, event: gen_qcoreevent_types.QChildEvent): void =
  fcQWebHistoryInterface_virtualbase_childEvent(self.h, event.h)

proc cQWebHistoryInterface_vtable_callback_childEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QWebHistoryInterfaceVTable](fcQWebHistoryInterface_vdata(self))
  let self = QWebHistoryInterface(h: self)
  let slotval1 = gen_qcoreevent_types.QChildEvent(h: event, owned: false)
  vtbl[].childEvent(self, slotval1)

proc QWebHistoryInterfacecustomEvent*(self: gen_qwebhistoryinterface_types.QWebHistoryInterface, event: gen_qcoreevent_types.QEvent): void =
  fcQWebHistoryInterface_virtualbase_customEvent(self.h, event.h)

proc cQWebHistoryInterface_vtable_callback_customEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QWebHistoryInterfaceVTable](fcQWebHistoryInterface_vdata(self))
  let self = QWebHistoryInterface(h: self)
  let slotval1 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  vtbl[].customEvent(self, slotval1)

proc QWebHistoryInterfaceconnectNotify*(self: gen_qwebhistoryinterface_types.QWebHistoryInterface, signal: gen_qmetaobject_types.QMetaMethod): void =
  fcQWebHistoryInterface_virtualbase_connectNotify(self.h, signal.h)

proc cQWebHistoryInterface_vtable_callback_connectNotify(self: pointer, signal: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QWebHistoryInterfaceVTable](fcQWebHistoryInterface_vdata(self))
  let self = QWebHistoryInterface(h: self)
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal, owned: false)
  vtbl[].connectNotify(self, slotval1)

proc QWebHistoryInterfacedisconnectNotify*(self: gen_qwebhistoryinterface_types.QWebHistoryInterface, signal: gen_qmetaobject_types.QMetaMethod): void =
  fcQWebHistoryInterface_virtualbase_disconnectNotify(self.h, signal.h)

proc cQWebHistoryInterface_vtable_callback_disconnectNotify(self: pointer, signal: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QWebHistoryInterfaceVTable](fcQWebHistoryInterface_vdata(self))
  let self = QWebHistoryInterface(h: self)
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal, owned: false)
  vtbl[].disconnectNotify(self, slotval1)

type VirtualQWebHistoryInterface* {.inheritable.} = ref object of QWebHistoryInterface
  vtbl*: cQWebHistoryInterfaceVTable
method metaObject*(self: VirtualQWebHistoryInterface): gen_qobjectdefs_types.QMetaObject {.base.} =
  QWebHistoryInterfacemetaObject(self[])
proc cQWebHistoryInterface_method_callback_metaObject(self: pointer): pointer {.cdecl.} =
  let inst = cast[VirtualQWebHistoryInterface](fcQWebHistoryInterface_vdata(self))
  var virtualReturn = inst.metaObject()
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

method metacast*(self: VirtualQWebHistoryInterface, param1: cstring): pointer {.base.} =
  QWebHistoryInterfacemetacast(self[], param1)
proc cQWebHistoryInterface_method_callback_metacast(self: pointer, param1: cstring): pointer {.cdecl.} =
  let inst = cast[VirtualQWebHistoryInterface](fcQWebHistoryInterface_vdata(self))
  let slotval1 = (param1)
  var virtualReturn = inst.metacast(slotval1)
  virtualReturn

method metacall*(self: VirtualQWebHistoryInterface, param1: cint, param2: cint, param3: pointer): cint {.base.} =
  QWebHistoryInterfacemetacall(self[], param1, param2, param3)
proc cQWebHistoryInterface_method_callback_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.cdecl.} =
  let inst = cast[VirtualQWebHistoryInterface](fcQWebHistoryInterface_vdata(self))
  let slotval1 = cint(param1)
  let slotval2 = param2
  let slotval3 = param3
  var virtualReturn = inst.metacall(slotval1, slotval2, slotval3)
  virtualReturn

method historyContains*(self: VirtualQWebHistoryInterface, url: openArray[char]): bool {.base.} =
  raiseAssert("missing implementation of QWebHistoryInterface_virtualbase_historyContains")
proc cQWebHistoryInterface_method_callback_historyContains(self: pointer, url: struct_miqt_string): bool {.cdecl.} =
  let inst = cast[VirtualQWebHistoryInterface](fcQWebHistoryInterface_vdata(self))
  let vurl_ms = url
  let vurlx_ret = string.fromBytes(vurl_ms)
  c_free(vurl_ms.data)
  let slotval1 = vurlx_ret
  var virtualReturn = inst.historyContains(slotval1)
  virtualReturn

method addHistoryEntry*(self: VirtualQWebHistoryInterface, url: openArray[char]): void {.base.} =
  raiseAssert("missing implementation of QWebHistoryInterface_virtualbase_addHistoryEntry")
proc cQWebHistoryInterface_method_callback_addHistoryEntry(self: pointer, url: struct_miqt_string): void {.cdecl.} =
  let inst = cast[VirtualQWebHistoryInterface](fcQWebHistoryInterface_vdata(self))
  let vurl_ms = url
  let vurlx_ret = string.fromBytes(vurl_ms)
  c_free(vurl_ms.data)
  let slotval1 = vurlx_ret
  inst.addHistoryEntry(slotval1)

method event*(self: VirtualQWebHistoryInterface, event: gen_qcoreevent_types.QEvent): bool {.base.} =
  QWebHistoryInterfaceevent(self[], event)
proc cQWebHistoryInterface_method_callback_event(self: pointer, event: pointer): bool {.cdecl.} =
  let inst = cast[VirtualQWebHistoryInterface](fcQWebHistoryInterface_vdata(self))
  let slotval1 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  var virtualReturn = inst.event(slotval1)
  virtualReturn

method eventFilter*(self: VirtualQWebHistoryInterface, watched: gen_qobject_types.QObject, event: gen_qcoreevent_types.QEvent): bool {.base.} =
  QWebHistoryInterfaceeventFilter(self[], watched, event)
proc cQWebHistoryInterface_method_callback_eventFilter(self: pointer, watched: pointer, event: pointer): bool {.cdecl.} =
  let inst = cast[VirtualQWebHistoryInterface](fcQWebHistoryInterface_vdata(self))
  let slotval1 = gen_qobject_types.QObject(h: watched, owned: false)
  let slotval2 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  var virtualReturn = inst.eventFilter(slotval1, slotval2)
  virtualReturn

method timerEvent*(self: VirtualQWebHistoryInterface, event: gen_qcoreevent_types.QTimerEvent): void {.base.} =
  QWebHistoryInterfacetimerEvent(self[], event)
proc cQWebHistoryInterface_method_callback_timerEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQWebHistoryInterface](fcQWebHistoryInterface_vdata(self))
  let slotval1 = gen_qcoreevent_types.QTimerEvent(h: event, owned: false)
  inst.timerEvent(slotval1)

method childEvent*(self: VirtualQWebHistoryInterface, event: gen_qcoreevent_types.QChildEvent): void {.base.} =
  QWebHistoryInterfacechildEvent(self[], event)
proc cQWebHistoryInterface_method_callback_childEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQWebHistoryInterface](fcQWebHistoryInterface_vdata(self))
  let slotval1 = gen_qcoreevent_types.QChildEvent(h: event, owned: false)
  inst.childEvent(slotval1)

method customEvent*(self: VirtualQWebHistoryInterface, event: gen_qcoreevent_types.QEvent): void {.base.} =
  QWebHistoryInterfacecustomEvent(self[], event)
proc cQWebHistoryInterface_method_callback_customEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQWebHistoryInterface](fcQWebHistoryInterface_vdata(self))
  let slotval1 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  inst.customEvent(slotval1)

method connectNotify*(self: VirtualQWebHistoryInterface, signal: gen_qmetaobject_types.QMetaMethod): void {.base.} =
  QWebHistoryInterfaceconnectNotify(self[], signal)
proc cQWebHistoryInterface_method_callback_connectNotify(self: pointer, signal: pointer): void {.cdecl.} =
  let inst = cast[VirtualQWebHistoryInterface](fcQWebHistoryInterface_vdata(self))
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal, owned: false)
  inst.connectNotify(slotval1)

method disconnectNotify*(self: VirtualQWebHistoryInterface, signal: gen_qmetaobject_types.QMetaMethod): void {.base.} =
  QWebHistoryInterfacedisconnectNotify(self[], signal)
proc cQWebHistoryInterface_method_callback_disconnectNotify(self: pointer, signal: pointer): void {.cdecl.} =
  let inst = cast[VirtualQWebHistoryInterface](fcQWebHistoryInterface_vdata(self))
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal, owned: false)
  inst.disconnectNotify(slotval1)

proc sender*(self: gen_qwebhistoryinterface_types.QWebHistoryInterface): gen_qobject_types.QObject =
  gen_qobject_types.QObject(h: fcQWebHistoryInterface_protectedbase_sender(self.h), owned: false)

proc senderSignalIndex*(self: gen_qwebhistoryinterface_types.QWebHistoryInterface): cint =
  fcQWebHistoryInterface_protectedbase_senderSignalIndex(self.h)

proc receivers*(self: gen_qwebhistoryinterface_types.QWebHistoryInterface, signal: cstring): cint =
  fcQWebHistoryInterface_protectedbase_receivers(self.h, signal)

proc isSignalConnected*(self: gen_qwebhistoryinterface_types.QWebHistoryInterface, signal: gen_qmetaobject_types.QMetaMethod): bool =
  fcQWebHistoryInterface_protectedbase_isSignalConnected(self.h, signal.h)

proc create*(T: type gen_qwebhistoryinterface_types.QWebHistoryInterface,
    vtbl: ref QWebHistoryInterfaceVTable = nil): gen_qwebhistoryinterface_types.QWebHistoryInterface =
  let vtbl = if vtbl == nil: new QWebHistoryInterfaceVTable else: vtbl
  GC_ref(vtbl)
  vtbl[].vtbl.destructor = proc(self: pointer) {.cdecl.} =
    let vtbl = cast[ref QWebHistoryInterfaceVTable](fcQWebHistoryInterface_vdata(self))
    GC_unref(vtbl)
  if not isNil(vtbl[].metaObject):
    vtbl[].vtbl.metaObject = cQWebHistoryInterface_vtable_callback_metaObject
  if not isNil(vtbl[].metacast):
    vtbl[].vtbl.metacast = cQWebHistoryInterface_vtable_callback_metacast
  if not isNil(vtbl[].metacall):
    vtbl[].vtbl.metacall = cQWebHistoryInterface_vtable_callback_metacall
  if not isNil(vtbl[].historyContains):
    vtbl[].vtbl.historyContains = cQWebHistoryInterface_vtable_callback_historyContains
  if not isNil(vtbl[].addHistoryEntry):
    vtbl[].vtbl.addHistoryEntry = cQWebHistoryInterface_vtable_callback_addHistoryEntry
  if not isNil(vtbl[].event):
    vtbl[].vtbl.event = cQWebHistoryInterface_vtable_callback_event
  if not isNil(vtbl[].eventFilter):
    vtbl[].vtbl.eventFilter = cQWebHistoryInterface_vtable_callback_eventFilter
  if not isNil(vtbl[].timerEvent):
    vtbl[].vtbl.timerEvent = cQWebHistoryInterface_vtable_callback_timerEvent
  if not isNil(vtbl[].childEvent):
    vtbl[].vtbl.childEvent = cQWebHistoryInterface_vtable_callback_childEvent
  if not isNil(vtbl[].customEvent):
    vtbl[].vtbl.customEvent = cQWebHistoryInterface_vtable_callback_customEvent
  if not isNil(vtbl[].connectNotify):
    vtbl[].vtbl.connectNotify = cQWebHistoryInterface_vtable_callback_connectNotify
  if not isNil(vtbl[].disconnectNotify):
    vtbl[].vtbl.disconnectNotify = cQWebHistoryInterface_vtable_callback_disconnectNotify
  gen_qwebhistoryinterface_types.QWebHistoryInterface(h: fcQWebHistoryInterface_new(addr(vtbl[].vtbl), addr(vtbl[])), owned: true)

proc create*(T: type gen_qwebhistoryinterface_types.QWebHistoryInterface,
    parent: gen_qobject_types.QObject,
    vtbl: ref QWebHistoryInterfaceVTable = nil): gen_qwebhistoryinterface_types.QWebHistoryInterface =
  let vtbl = if vtbl == nil: new QWebHistoryInterfaceVTable else: vtbl
  GC_ref(vtbl)
  vtbl[].vtbl.destructor = proc(self: pointer) {.cdecl.} =
    let vtbl = cast[ref QWebHistoryInterfaceVTable](fcQWebHistoryInterface_vdata(self))
    GC_unref(vtbl)
  if not isNil(vtbl[].metaObject):
    vtbl[].vtbl.metaObject = cQWebHistoryInterface_vtable_callback_metaObject
  if not isNil(vtbl[].metacast):
    vtbl[].vtbl.metacast = cQWebHistoryInterface_vtable_callback_metacast
  if not isNil(vtbl[].metacall):
    vtbl[].vtbl.metacall = cQWebHistoryInterface_vtable_callback_metacall
  if not isNil(vtbl[].historyContains):
    vtbl[].vtbl.historyContains = cQWebHistoryInterface_vtable_callback_historyContains
  if not isNil(vtbl[].addHistoryEntry):
    vtbl[].vtbl.addHistoryEntry = cQWebHistoryInterface_vtable_callback_addHistoryEntry
  if not isNil(vtbl[].event):
    vtbl[].vtbl.event = cQWebHistoryInterface_vtable_callback_event
  if not isNil(vtbl[].eventFilter):
    vtbl[].vtbl.eventFilter = cQWebHistoryInterface_vtable_callback_eventFilter
  if not isNil(vtbl[].timerEvent):
    vtbl[].vtbl.timerEvent = cQWebHistoryInterface_vtable_callback_timerEvent
  if not isNil(vtbl[].childEvent):
    vtbl[].vtbl.childEvent = cQWebHistoryInterface_vtable_callback_childEvent
  if not isNil(vtbl[].customEvent):
    vtbl[].vtbl.customEvent = cQWebHistoryInterface_vtable_callback_customEvent
  if not isNil(vtbl[].connectNotify):
    vtbl[].vtbl.connectNotify = cQWebHistoryInterface_vtable_callback_connectNotify
  if not isNil(vtbl[].disconnectNotify):
    vtbl[].vtbl.disconnectNotify = cQWebHistoryInterface_vtable_callback_disconnectNotify
  gen_qwebhistoryinterface_types.QWebHistoryInterface(h: fcQWebHistoryInterface_new2(addr(vtbl[].vtbl), addr(vtbl[]), parent.h), owned: true)

const cQWebHistoryInterface_mvtbl = cQWebHistoryInterfaceVTable(
  destructor: proc(self: pointer) {.cdecl.} =
    let inst = cast[ptr typeof(VirtualQWebHistoryInterface()[])](self.fcQWebHistoryInterface_vtbl())
    inst[].h = nil
    inst[].owned = false,
  metaObject: cQWebHistoryInterface_method_callback_metaObject,
  metacast: cQWebHistoryInterface_method_callback_metacast,
  metacall: cQWebHistoryInterface_method_callback_metacall,
  historyContains: cQWebHistoryInterface_method_callback_historyContains,
  addHistoryEntry: cQWebHistoryInterface_method_callback_addHistoryEntry,
  event: cQWebHistoryInterface_method_callback_event,
  eventFilter: cQWebHistoryInterface_method_callback_eventFilter,
  timerEvent: cQWebHistoryInterface_method_callback_timerEvent,
  childEvent: cQWebHistoryInterface_method_callback_childEvent,
  customEvent: cQWebHistoryInterface_method_callback_customEvent,
  connectNotify: cQWebHistoryInterface_method_callback_connectNotify,
  disconnectNotify: cQWebHistoryInterface_method_callback_disconnectNotify,
)
proc create*(T: type gen_qwebhistoryinterface_types.QWebHistoryInterface,
    inst: VirtualQWebHistoryInterface) =
  if inst[].h != nil: delete(move(inst[]))
  inst[].h = fcQWebHistoryInterface_new(addr(cQWebHistoryInterface_mvtbl), addr(inst[]))
  inst[].owned = true

proc create*(T: type gen_qwebhistoryinterface_types.QWebHistoryInterface,
    parent: gen_qobject_types.QObject,
    inst: VirtualQWebHistoryInterface) =
  if inst[].h != nil: delete(move(inst[]))
  inst[].h = fcQWebHistoryInterface_new2(addr(cQWebHistoryInterface_mvtbl), addr(inst[]), parent.h)
  inst[].owned = true

proc staticMetaObject*(_: type gen_qwebhistoryinterface_types.QWebHistoryInterface): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQWebHistoryInterface_staticMetaObject())
