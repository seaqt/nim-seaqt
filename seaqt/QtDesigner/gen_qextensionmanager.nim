import ./qtdesigner_pkg

{.push raises: [].}

from system/ansi_c import c_free

type
  struct_seaqt_string {.used.} = object
    len: csize_t
    data: pointer

  struct_seaqt_array {.used.} = object
    len: csize_t
    data: pointer

  struct_seaqt_map {.used.} = object
    len: csize_t
    keys: pointer
    values: pointer

  miqt_uintptr_t {.importc: "uintptr_t", header: "stdint.h", used.} = uint
  miqt_intptr_t {.importc: "intptr_t", header: "stdint.h", used.} = int

func fromBytes(T: type string, v: struct_seaqt_string): string {.used.} =
  if v.len > 0:
    let len = cast[int](v.len)
    result = newStringUninit(len)
    when nimvm:
      let d = cast[ptr UncheckedArray[char]](v.data)
      for i in 0..<len:
        result[i] = d[i]
    else:
      copyMem(addr result[0], v.data, len)


{.compile("gen_qextensionmanager.cpp", QtDesignerCFlags).}


import ./gen_qextensionmanager_types
export gen_qextensionmanager_types

import
  ../QtCore/gen_qcoreevent_types,
  ../QtCore/gen_qmetaobject_types,
  ../QtCore/gen_qobject,
  ../QtCore/gen_qobjectdefs_types,
  ./gen_extension_types
export
  gen_qcoreevent_types,
  gen_qmetaobject_types,
  gen_qobject,
  gen_qobjectdefs_types,
  gen_extension_types

type cQExtensionManager*{.exportc: "QExtensionManager", incompleteStruct.} = object

proc fcQExtensionManager_metaObject(self: pointer): pointer {.importc: "QExtensionManager_metaObject".}
proc fcQExtensionManager_metacast(self: pointer, param1: cstring): pointer {.importc: "QExtensionManager_metacast".}
proc fcQExtensionManager_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.importc: "QExtensionManager_metacall".}
proc fcQExtensionManager_tr(s: cstring): struct_seaqt_string {.importc: "QExtensionManager_tr".}
proc fcQExtensionManager_registerExtensions(self: pointer, factory: pointer, iid: struct_seaqt_string): void {.importc: "QExtensionManager_registerExtensions".}
proc fcQExtensionManager_unregisterExtensions(self: pointer, factory: pointer, iid: struct_seaqt_string): void {.importc: "QExtensionManager_unregisterExtensions".}
proc fcQExtensionManager_extension(self: pointer, objectVal: pointer, iid: struct_seaqt_string): pointer {.importc: "QExtensionManager_extension".}
proc fcQExtensionManager_tr2(s: cstring, c: cstring): struct_seaqt_string {.importc: "QExtensionManager_tr2".}
proc fcQExtensionManager_tr3(s: cstring, c: cstring, n: cint): struct_seaqt_string {.importc: "QExtensionManager_tr3".}
proc fcQExtensionManager_vdata(self: pointer): ptr pointer {.importc: "QExtensionManager_vdata".}
proc fvdata_cQExtensionManager(self: pointer): pointer {.importc: "vdata_QExtensionManager".}

type cQExtensionManagerVTable {.pure.} = object
  destructor*: proc(self: pointer) {.cdecl, raises:[], gcsafe.}
  metaObject*: proc(self: pointer): pointer {.cdecl, raises: [], gcsafe.}
  metacast*: proc(self: pointer, param1: cstring): pointer {.cdecl, raises: [], gcsafe.}
  metacall*: proc(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.cdecl, raises: [], gcsafe.}
  registerExtensions*: proc(self: pointer, factory: pointer, iid: struct_seaqt_string): void {.cdecl, raises: [], gcsafe.}
  unregisterExtensions*: proc(self: pointer, factory: pointer, iid: struct_seaqt_string): void {.cdecl, raises: [], gcsafe.}
  extension*: proc(self: pointer, objectVal: pointer, iid: struct_seaqt_string): pointer {.cdecl, raises: [], gcsafe.}
  event*: proc(self: pointer, event: pointer): bool {.cdecl, raises: [], gcsafe.}
  eventFilter*: proc(self: pointer, watched: pointer, event: pointer): bool {.cdecl, raises: [], gcsafe.}
  timerEvent*: proc(self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  childEvent*: proc(self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  customEvent*: proc(self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  connectNotify*: proc(self: pointer, signal: pointer): void {.cdecl, raises: [], gcsafe.}
  disconnectNotify*: proc(self: pointer, signal: pointer): void {.cdecl, raises: [], gcsafe.}
proc fcQExtensionManager_virtualbase_metaObject(self: pointer): pointer {.importc: "QExtensionManager_virtualbase_metaObject".}
proc fcQExtensionManager_virtualbase_metacast(self: pointer, param1: cstring): pointer {.importc: "QExtensionManager_virtualbase_metacast".}
proc fcQExtensionManager_virtualbase_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.importc: "QExtensionManager_virtualbase_metacall".}
proc fcQExtensionManager_virtualbase_registerExtensions(self: pointer, factory: pointer, iid: struct_seaqt_string): void {.importc: "QExtensionManager_virtualbase_registerExtensions".}
proc fcQExtensionManager_virtualbase_unregisterExtensions(self: pointer, factory: pointer, iid: struct_seaqt_string): void {.importc: "QExtensionManager_virtualbase_unregisterExtensions".}
proc fcQExtensionManager_virtualbase_extension(self: pointer, objectVal: pointer, iid: struct_seaqt_string): pointer {.importc: "QExtensionManager_virtualbase_extension".}
proc fcQExtensionManager_virtualbase_event(self: pointer, event: pointer): bool {.importc: "QExtensionManager_virtualbase_event".}
proc fcQExtensionManager_virtualbase_eventFilter(self: pointer, watched: pointer, event: pointer): bool {.importc: "QExtensionManager_virtualbase_eventFilter".}
proc fcQExtensionManager_virtualbase_timerEvent(self: pointer, event: pointer): void {.importc: "QExtensionManager_virtualbase_timerEvent".}
proc fcQExtensionManager_virtualbase_childEvent(self: pointer, event: pointer): void {.importc: "QExtensionManager_virtualbase_childEvent".}
proc fcQExtensionManager_virtualbase_customEvent(self: pointer, event: pointer): void {.importc: "QExtensionManager_virtualbase_customEvent".}
proc fcQExtensionManager_virtualbase_connectNotify(self: pointer, signal: pointer): void {.importc: "QExtensionManager_virtualbase_connectNotify".}
proc fcQExtensionManager_virtualbase_disconnectNotify(self: pointer, signal: pointer): void {.importc: "QExtensionManager_virtualbase_disconnectNotify".}
proc fcQExtensionManager_protectedbase_sender(self: pointer): pointer {.importc: "QExtensionManager_protectedbase_sender".}
proc fcQExtensionManager_protectedbase_senderSignalIndex(self: pointer): cint {.importc: "QExtensionManager_protectedbase_senderSignalIndex".}
proc fcQExtensionManager_protectedbase_receivers(self: pointer, signal: cstring): cint {.importc: "QExtensionManager_protectedbase_receivers".}
proc fcQExtensionManager_protectedbase_isSignalConnected(self: pointer, signal: pointer): bool {.importc: "QExtensionManager_protectedbase_isSignalConnected".}
proc fcQExtensionManager_new(vtbl: pointer, vdata: csize_t): ptr cQExtensionManager {.importc: "QExtensionManager_new".}
proc fcQExtensionManager_new2(vtbl: pointer, vdata: csize_t, parent: pointer): ptr cQExtensionManager {.importc: "QExtensionManager_new2".}
proc fcQExtensionManager_staticMetaObject(): pointer {.importc: "QExtensionManager_staticMetaObject".}
proc fcQExtensionManager_delete(self: pointer) {.importc: "QExtensionManager_delete".}

proc metaObject*(self: gen_qextensionmanager_types.QExtensionManager): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQExtensionManager_metaObject(self.h))

proc metacast*(self: gen_qextensionmanager_types.QExtensionManager, param1: cstring): pointer =
  fcQExtensionManager_metacast(self.h, param1)

proc metacall*(self: gen_qextensionmanager_types.QExtensionManager, param1: cint, param2: cint, param3: pointer): cint =
  fcQExtensionManager_metacall(self.h, cint(param1), param2, param3)

proc tr*(_: type gen_qextensionmanager_types.QExtensionManager, s: cstring): string =
  let v_ms = fcQExtensionManager_tr(s)
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

proc registerExtensions*(self: gen_qextensionmanager_types.QExtensionManager, factory: gen_extension_types.QAbstractExtensionFactory, iid: openArray[char]): void =
  fcQExtensionManager_registerExtensions(self.h, factory.h, struct_seaqt_string(data: if len(iid) > 0: addr iid[0] else: nil, len: csize_t(len(iid))))

proc unregisterExtensions*(self: gen_qextensionmanager_types.QExtensionManager, factory: gen_extension_types.QAbstractExtensionFactory, iid: openArray[char]): void =
  fcQExtensionManager_unregisterExtensions(self.h, factory.h, struct_seaqt_string(data: if len(iid) > 0: addr iid[0] else: nil, len: csize_t(len(iid))))

proc extension*(self: gen_qextensionmanager_types.QExtensionManager, objectVal: gen_qobject_types.QObject, iid: openArray[char]): gen_qobject_types.QObject =
  gen_qobject_types.QObject(h: fcQExtensionManager_extension(self.h, objectVal.h, struct_seaqt_string(data: if len(iid) > 0: addr iid[0] else: nil, len: csize_t(len(iid)))))

proc tr*(_: type gen_qextensionmanager_types.QExtensionManager, s: cstring, c: cstring): string =
  let v_ms = fcQExtensionManager_tr2(s, c)
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

proc tr*(_: type gen_qextensionmanager_types.QExtensionManager, s: cstring, c: cstring, n: cint): string =
  let v_ms = fcQExtensionManager_tr3(s, c, n)
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

type QExtensionManagermetaObjectProc* = proc(self: QExtensionManager): gen_qobjectdefs_types.QMetaObject {.raises: [], gcsafe.}
type QExtensionManagermetacastProc* = proc(self: QExtensionManager, param1: cstring): pointer {.raises: [], gcsafe.}
type QExtensionManagermetacallProc* = proc(self: QExtensionManager, param1: cint, param2: cint, param3: pointer): cint {.raises: [], gcsafe.}
type QExtensionManagerregisterExtensionsProc* = proc(self: QExtensionManager, factory: gen_extension_types.QAbstractExtensionFactory, iid: openArray[char]): void {.raises: [], gcsafe.}
type QExtensionManagerunregisterExtensionsProc* = proc(self: QExtensionManager, factory: gen_extension_types.QAbstractExtensionFactory, iid: openArray[char]): void {.raises: [], gcsafe.}
type QExtensionManagerextensionProc* = proc(self: QExtensionManager, objectVal: gen_qobject_types.QObject, iid: openArray[char]): gen_qobject_types.QObject {.raises: [], gcsafe.}
type QExtensionManagereventProc* = proc(self: QExtensionManager, event: gen_qcoreevent_types.QEvent): bool {.raises: [], gcsafe.}
type QExtensionManagereventFilterProc* = proc(self: QExtensionManager, watched: gen_qobject_types.QObject, event: gen_qcoreevent_types.QEvent): bool {.raises: [], gcsafe.}
type QExtensionManagertimerEventProc* = proc(self: QExtensionManager, event: gen_qcoreevent_types.QTimerEvent): void {.raises: [], gcsafe.}
type QExtensionManagerchildEventProc* = proc(self: QExtensionManager, event: gen_qcoreevent_types.QChildEvent): void {.raises: [], gcsafe.}
type QExtensionManagercustomEventProc* = proc(self: QExtensionManager, event: gen_qcoreevent_types.QEvent): void {.raises: [], gcsafe.}
type QExtensionManagerconnectNotifyProc* = proc(self: QExtensionManager, signal: gen_qmetaobject_types.QMetaMethod): void {.raises: [], gcsafe.}
type QExtensionManagerdisconnectNotifyProc* = proc(self: QExtensionManager, signal: gen_qmetaobject_types.QMetaMethod): void {.raises: [], gcsafe.}
type QExtensionManagerVTable* = object
  vtbl: cQExtensionManagerVTable
  metaObject*: QExtensionManagermetaObjectProc
  metacast*: QExtensionManagermetacastProc
  metacall*: QExtensionManagermetacallProc
  registerExtensions*: QExtensionManagerregisterExtensionsProc
  unregisterExtensions*: QExtensionManagerunregisterExtensionsProc
  extension*: QExtensionManagerextensionProc
  event*: QExtensionManagereventProc
  eventFilter*: QExtensionManagereventFilterProc
  timerEvent*: QExtensionManagertimerEventProc
  childEvent*: QExtensionManagerchildEventProc
  customEvent*: QExtensionManagercustomEventProc
  connectNotify*: QExtensionManagerconnectNotifyProc
  disconnectNotify*: QExtensionManagerdisconnectNotifyProc

proc QExtensionManagermetaObject*(self: gen_qextensionmanager_types.QExtensionManager): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQExtensionManager_virtualbase_metaObject(self.h))

proc QExtensionManagermetacast*(self: gen_qextensionmanager_types.QExtensionManager, param1: cstring): pointer =
  fcQExtensionManager_virtualbase_metacast(self.h, param1)

proc QExtensionManagermetacall*(self: gen_qextensionmanager_types.QExtensionManager, param1: cint, param2: cint, param3: pointer): cint =
  fcQExtensionManager_virtualbase_metacall(self.h, cint(param1), param2, param3)

proc QExtensionManagerregisterExtensions*(self: gen_qextensionmanager_types.QExtensionManager, factory: gen_extension_types.QAbstractExtensionFactory, iid: openArray[char]): void =
  fcQExtensionManager_virtualbase_registerExtensions(self.h, factory.h, struct_seaqt_string(data: if len(iid) > 0: addr iid[0] else: nil, len: csize_t(len(iid))))

proc QExtensionManagerunregisterExtensions*(self: gen_qextensionmanager_types.QExtensionManager, factory: gen_extension_types.QAbstractExtensionFactory, iid: openArray[char]): void =
  fcQExtensionManager_virtualbase_unregisterExtensions(self.h, factory.h, struct_seaqt_string(data: if len(iid) > 0: addr iid[0] else: nil, len: csize_t(len(iid))))

proc QExtensionManagerextension*(self: gen_qextensionmanager_types.QExtensionManager, objectVal: gen_qobject_types.QObject, iid: openArray[char]): gen_qobject_types.QObject =
  gen_qobject_types.QObject(h: fcQExtensionManager_virtualbase_extension(self.h, objectVal.h, struct_seaqt_string(data: if len(iid) > 0: addr iid[0] else: nil, len: csize_t(len(iid)))))

proc QExtensionManagerevent*(self: gen_qextensionmanager_types.QExtensionManager, event: gen_qcoreevent_types.QEvent): bool =
  fcQExtensionManager_virtualbase_event(self.h, event.h)

proc QExtensionManagereventFilter*(self: gen_qextensionmanager_types.QExtensionManager, watched: gen_qobject_types.QObject, event: gen_qcoreevent_types.QEvent): bool =
  fcQExtensionManager_virtualbase_eventFilter(self.h, watched.h, event.h)

proc QExtensionManagertimerEvent*(self: gen_qextensionmanager_types.QExtensionManager, event: gen_qcoreevent_types.QTimerEvent): void =
  fcQExtensionManager_virtualbase_timerEvent(self.h, event.h)

proc QExtensionManagerchildEvent*(self: gen_qextensionmanager_types.QExtensionManager, event: gen_qcoreevent_types.QChildEvent): void =
  fcQExtensionManager_virtualbase_childEvent(self.h, event.h)

proc QExtensionManagercustomEvent*(self: gen_qextensionmanager_types.QExtensionManager, event: gen_qcoreevent_types.QEvent): void =
  fcQExtensionManager_virtualbase_customEvent(self.h, event.h)

proc QExtensionManagerconnectNotify*(self: gen_qextensionmanager_types.QExtensionManager, signal: gen_qmetaobject_types.QMetaMethod): void =
  fcQExtensionManager_virtualbase_connectNotify(self.h, signal.h)

proc QExtensionManagerdisconnectNotify*(self: gen_qextensionmanager_types.QExtensionManager, signal: gen_qmetaobject_types.QMetaMethod): void =
  fcQExtensionManager_virtualbase_disconnectNotify(self.h, signal.h)


proc fcQExtensionManager_vtable_callback_metaObject(self: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QExtensionManagerVTable](fcQExtensionManager_vdata(self)[])
  let self = QExtensionManager(h: self)
  var virtualReturn = vtbl[].metaObject(self)
  virtualReturn.h

proc fcQExtensionManager_vtable_callback_metacast(self: pointer, param1: cstring): pointer {.cdecl.} =
  let vtbl = cast[ptr QExtensionManagerVTable](fcQExtensionManager_vdata(self)[])
  let self = QExtensionManager(h: self)
  let slotval1 = (param1)
  var virtualReturn = vtbl[].metacast(self, slotval1)
  virtualReturn

proc fcQExtensionManager_vtable_callback_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.cdecl.} =
  let vtbl = cast[ptr QExtensionManagerVTable](fcQExtensionManager_vdata(self)[])
  let self = QExtensionManager(h: self)
  let slotval1 = cint(param1)
  let slotval2 = param2
  let slotval3 = param3
  var virtualReturn = vtbl[].metacall(self, slotval1, slotval2, slotval3)
  virtualReturn

proc fcQExtensionManager_vtable_callback_registerExtensions(self: pointer, factory: pointer, iid: struct_seaqt_string): void {.cdecl.} =
  let vtbl = cast[ptr QExtensionManagerVTable](fcQExtensionManager_vdata(self)[])
  let self = QExtensionManager(h: self)
  let slotval1 = gen_extension_types.QAbstractExtensionFactory(h: factory)
  let viid_ms = iid
  let viidx_ret = string.fromBytes(viid_ms)
  c_free(viid_ms.data)
  let slotval2 = viidx_ret
  vtbl[].registerExtensions(self, slotval1, slotval2)

proc fcQExtensionManager_vtable_callback_unregisterExtensions(self: pointer, factory: pointer, iid: struct_seaqt_string): void {.cdecl.} =
  let vtbl = cast[ptr QExtensionManagerVTable](fcQExtensionManager_vdata(self)[])
  let self = QExtensionManager(h: self)
  let slotval1 = gen_extension_types.QAbstractExtensionFactory(h: factory)
  let viid_ms = iid
  let viidx_ret = string.fromBytes(viid_ms)
  c_free(viid_ms.data)
  let slotval2 = viidx_ret
  vtbl[].unregisterExtensions(self, slotval1, slotval2)

proc fcQExtensionManager_vtable_callback_extension(self: pointer, objectVal: pointer, iid: struct_seaqt_string): pointer {.cdecl.} =
  let vtbl = cast[ptr QExtensionManagerVTable](fcQExtensionManager_vdata(self)[])
  let self = QExtensionManager(h: self)
  let slotval1 = gen_qobject_types.QObject(h: objectVal)
  let viid_ms = iid
  let viidx_ret = string.fromBytes(viid_ms)
  c_free(viid_ms.data)
  let slotval2 = viidx_ret
  var virtualReturn = vtbl[].extension(self, slotval1, slotval2)
  virtualReturn.h

proc fcQExtensionManager_vtable_callback_event(self: pointer, event: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QExtensionManagerVTable](fcQExtensionManager_vdata(self)[])
  let self = QExtensionManager(h: self)
  let slotval1 = gen_qcoreevent_types.QEvent(h: event)
  var virtualReturn = vtbl[].event(self, slotval1)
  virtualReturn

proc fcQExtensionManager_vtable_callback_eventFilter(self: pointer, watched: pointer, event: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QExtensionManagerVTable](fcQExtensionManager_vdata(self)[])
  let self = QExtensionManager(h: self)
  let slotval1 = gen_qobject_types.QObject(h: watched)
  let slotval2 = gen_qcoreevent_types.QEvent(h: event)
  var virtualReturn = vtbl[].eventFilter(self, slotval1, slotval2)
  virtualReturn

proc fcQExtensionManager_vtable_callback_timerEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QExtensionManagerVTable](fcQExtensionManager_vdata(self)[])
  let self = QExtensionManager(h: self)
  let slotval1 = gen_qcoreevent_types.QTimerEvent(h: event)
  vtbl[].timerEvent(self, slotval1)

proc fcQExtensionManager_vtable_callback_childEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QExtensionManagerVTable](fcQExtensionManager_vdata(self)[])
  let self = QExtensionManager(h: self)
  let slotval1 = gen_qcoreevent_types.QChildEvent(h: event)
  vtbl[].childEvent(self, slotval1)

proc fcQExtensionManager_vtable_callback_customEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QExtensionManagerVTable](fcQExtensionManager_vdata(self)[])
  let self = QExtensionManager(h: self)
  let slotval1 = gen_qcoreevent_types.QEvent(h: event)
  vtbl[].customEvent(self, slotval1)

proc fcQExtensionManager_vtable_callback_connectNotify(self: pointer, signal: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QExtensionManagerVTable](fcQExtensionManager_vdata(self)[])
  let self = QExtensionManager(h: self)
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal)
  vtbl[].connectNotify(self, slotval1)

proc fcQExtensionManager_vtable_callback_disconnectNotify(self: pointer, signal: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QExtensionManagerVTable](fcQExtensionManager_vdata(self)[])
  let self = QExtensionManager(h: self)
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal)
  vtbl[].disconnectNotify(self, slotval1)

type VirtualQExtensionManager* {.inheritable.} = ref object of QExtensionManager
  vtbl*: cQExtensionManagerVTable

method metaObject*(self: VirtualQExtensionManager): gen_qobjectdefs_types.QMetaObject {.base.} =
  QExtensionManagermetaObject(self[])
method metacast*(self: VirtualQExtensionManager, param1: cstring): pointer {.base.} =
  QExtensionManagermetacast(self[], param1)
method metacall*(self: VirtualQExtensionManager, param1: cint, param2: cint, param3: pointer): cint {.base.} =
  QExtensionManagermetacall(self[], param1, param2, param3)
method registerExtensions*(self: VirtualQExtensionManager, factory: gen_extension_types.QAbstractExtensionFactory, iid: openArray[char]): void {.base.} =
  QExtensionManagerregisterExtensions(self[], factory, iid)
method unregisterExtensions*(self: VirtualQExtensionManager, factory: gen_extension_types.QAbstractExtensionFactory, iid: openArray[char]): void {.base.} =
  QExtensionManagerunregisterExtensions(self[], factory, iid)
method extension*(self: VirtualQExtensionManager, objectVal: gen_qobject_types.QObject, iid: openArray[char]): gen_qobject_types.QObject {.base.} =
  QExtensionManagerextension(self[], objectVal, iid)
method event*(self: VirtualQExtensionManager, event: gen_qcoreevent_types.QEvent): bool {.base.} =
  QExtensionManagerevent(self[], event)
method eventFilter*(self: VirtualQExtensionManager, watched: gen_qobject_types.QObject, event: gen_qcoreevent_types.QEvent): bool {.base.} =
  QExtensionManagereventFilter(self[], watched, event)
method timerEvent*(self: VirtualQExtensionManager, event: gen_qcoreevent_types.QTimerEvent): void {.base.} =
  QExtensionManagertimerEvent(self[], event)
method childEvent*(self: VirtualQExtensionManager, event: gen_qcoreevent_types.QChildEvent): void {.base.} =
  QExtensionManagerchildEvent(self[], event)
method customEvent*(self: VirtualQExtensionManager, event: gen_qcoreevent_types.QEvent): void {.base.} =
  QExtensionManagercustomEvent(self[], event)
method connectNotify*(self: VirtualQExtensionManager, signal: gen_qmetaobject_types.QMetaMethod): void {.base.} =
  QExtensionManagerconnectNotify(self[], signal)
method disconnectNotify*(self: VirtualQExtensionManager, signal: gen_qmetaobject_types.QMetaMethod): void {.base.} =
  QExtensionManagerdisconnectNotify(self[], signal)

proc fcQExtensionManager_method_callback_metaObject(self: pointer): pointer {.cdecl.} =
  let inst = cast[VirtualQExtensionManager](fcQExtensionManager_vdata(self)[])
  var virtualReturn = inst.metaObject()
  virtualReturn.h

proc fcQExtensionManager_method_callback_metacast(self: pointer, param1: cstring): pointer {.cdecl.} =
  let inst = cast[VirtualQExtensionManager](fcQExtensionManager_vdata(self)[])
  let slotval1 = (param1)
  var virtualReturn = inst.metacast(slotval1)
  virtualReturn

proc fcQExtensionManager_method_callback_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.cdecl.} =
  let inst = cast[VirtualQExtensionManager](fcQExtensionManager_vdata(self)[])
  let slotval1 = cint(param1)
  let slotval2 = param2
  let slotval3 = param3
  var virtualReturn = inst.metacall(slotval1, slotval2, slotval3)
  virtualReturn

proc fcQExtensionManager_method_callback_registerExtensions(self: pointer, factory: pointer, iid: struct_seaqt_string): void {.cdecl.} =
  let inst = cast[VirtualQExtensionManager](fcQExtensionManager_vdata(self)[])
  let slotval1 = gen_extension_types.QAbstractExtensionFactory(h: factory)
  let viid_ms = iid
  let viidx_ret = string.fromBytes(viid_ms)
  c_free(viid_ms.data)
  let slotval2 = viidx_ret
  inst.registerExtensions(slotval1, slotval2)

proc fcQExtensionManager_method_callback_unregisterExtensions(self: pointer, factory: pointer, iid: struct_seaqt_string): void {.cdecl.} =
  let inst = cast[VirtualQExtensionManager](fcQExtensionManager_vdata(self)[])
  let slotval1 = gen_extension_types.QAbstractExtensionFactory(h: factory)
  let viid_ms = iid
  let viidx_ret = string.fromBytes(viid_ms)
  c_free(viid_ms.data)
  let slotval2 = viidx_ret
  inst.unregisterExtensions(slotval1, slotval2)

proc fcQExtensionManager_method_callback_extension(self: pointer, objectVal: pointer, iid: struct_seaqt_string): pointer {.cdecl.} =
  let inst = cast[VirtualQExtensionManager](fcQExtensionManager_vdata(self)[])
  let slotval1 = gen_qobject_types.QObject(h: objectVal)
  let viid_ms = iid
  let viidx_ret = string.fromBytes(viid_ms)
  c_free(viid_ms.data)
  let slotval2 = viidx_ret
  var virtualReturn = inst.extension(slotval1, slotval2)
  virtualReturn.h

proc fcQExtensionManager_method_callback_event(self: pointer, event: pointer): bool {.cdecl.} =
  let inst = cast[VirtualQExtensionManager](fcQExtensionManager_vdata(self)[])
  let slotval1 = gen_qcoreevent_types.QEvent(h: event)
  var virtualReturn = inst.event(slotval1)
  virtualReturn

proc fcQExtensionManager_method_callback_eventFilter(self: pointer, watched: pointer, event: pointer): bool {.cdecl.} =
  let inst = cast[VirtualQExtensionManager](fcQExtensionManager_vdata(self)[])
  let slotval1 = gen_qobject_types.QObject(h: watched)
  let slotval2 = gen_qcoreevent_types.QEvent(h: event)
  var virtualReturn = inst.eventFilter(slotval1, slotval2)
  virtualReturn

proc fcQExtensionManager_method_callback_timerEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQExtensionManager](fcQExtensionManager_vdata(self)[])
  let slotval1 = gen_qcoreevent_types.QTimerEvent(h: event)
  inst.timerEvent(slotval1)

proc fcQExtensionManager_method_callback_childEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQExtensionManager](fcQExtensionManager_vdata(self)[])
  let slotval1 = gen_qcoreevent_types.QChildEvent(h: event)
  inst.childEvent(slotval1)

proc fcQExtensionManager_method_callback_customEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQExtensionManager](fcQExtensionManager_vdata(self)[])
  let slotval1 = gen_qcoreevent_types.QEvent(h: event)
  inst.customEvent(slotval1)

proc fcQExtensionManager_method_callback_connectNotify(self: pointer, signal: pointer): void {.cdecl.} =
  let inst = cast[VirtualQExtensionManager](fcQExtensionManager_vdata(self)[])
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal)
  inst.connectNotify(slotval1)

proc fcQExtensionManager_method_callback_disconnectNotify(self: pointer, signal: pointer): void {.cdecl.} =
  let inst = cast[VirtualQExtensionManager](fcQExtensionManager_vdata(self)[])
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal)
  inst.disconnectNotify(slotval1)


proc sender*(self: gen_qextensionmanager_types.QExtensionManager): gen_qobject_types.QObject =
  gen_qobject_types.QObject(h: fcQExtensionManager_protectedbase_sender(self.h))

proc senderSignalIndex*(self: gen_qextensionmanager_types.QExtensionManager): cint =
  fcQExtensionManager_protectedbase_senderSignalIndex(self.h)

proc receivers*(self: gen_qextensionmanager_types.QExtensionManager, signal: cstring): cint =
  fcQExtensionManager_protectedbase_receivers(self.h, signal)

proc isSignalConnected*(self: gen_qextensionmanager_types.QExtensionManager, signal: gen_qmetaobject_types.QMetaMethod): bool =
  fcQExtensionManager_protectedbase_isSignalConnected(self.h, signal.h)

proc create*(T: type gen_qextensionmanager_types.QExtensionManager,
    vtbl: ref QExtensionManagerVTable = nil): gen_qextensionmanager_types.QExtensionManager =
  let vtbl = if vtbl == nil: new QExtensionManagerVTable else: vtbl
  GC_ref(vtbl)
  vtbl[].vtbl.destructor = proc(self: pointer) {.cdecl.} =
    let vtbl = cast[ref QExtensionManagerVTable](fcQExtensionManager_vdata(self)[])
    GC_unref(vtbl)
  if not isNil(vtbl[].metaObject):
    vtbl[].vtbl.metaObject = fcQExtensionManager_vtable_callback_metaObject
  if not isNil(vtbl[].metacast):
    vtbl[].vtbl.metacast = fcQExtensionManager_vtable_callback_metacast
  if not isNil(vtbl[].metacall):
    vtbl[].vtbl.metacall = fcQExtensionManager_vtable_callback_metacall
  if not isNil(vtbl[].registerExtensions):
    vtbl[].vtbl.registerExtensions = fcQExtensionManager_vtable_callback_registerExtensions
  if not isNil(vtbl[].unregisterExtensions):
    vtbl[].vtbl.unregisterExtensions = fcQExtensionManager_vtable_callback_unregisterExtensions
  if not isNil(vtbl[].extension):
    vtbl[].vtbl.extension = fcQExtensionManager_vtable_callback_extension
  if not isNil(vtbl[].event):
    vtbl[].vtbl.event = fcQExtensionManager_vtable_callback_event
  if not isNil(vtbl[].eventFilter):
    vtbl[].vtbl.eventFilter = fcQExtensionManager_vtable_callback_eventFilter
  if not isNil(vtbl[].timerEvent):
    vtbl[].vtbl.timerEvent = fcQExtensionManager_vtable_callback_timerEvent
  if not isNil(vtbl[].childEvent):
    vtbl[].vtbl.childEvent = fcQExtensionManager_vtable_callback_childEvent
  if not isNil(vtbl[].customEvent):
    vtbl[].vtbl.customEvent = fcQExtensionManager_vtable_callback_customEvent
  if not isNil(vtbl[].connectNotify):
    vtbl[].vtbl.connectNotify = fcQExtensionManager_vtable_callback_connectNotify
  if not isNil(vtbl[].disconnectNotify):
    vtbl[].vtbl.disconnectNotify = fcQExtensionManager_vtable_callback_disconnectNotify
  let tmp = gen_qextensionmanager_types.QExtensionManager(h: fcQExtensionManager_new(addr(vtbl[].vtbl), csize_t(sizeof(pointer))))
  fcQExtensionManager_vdata(tmp.h)[] = addr(vtbl[])
  tmp
proc create*(T: type gen_qextensionmanager_types.QExtensionManager,
    parent: gen_qobject_types.QObject,
    vtbl: ref QExtensionManagerVTable = nil): gen_qextensionmanager_types.QExtensionManager =
  let vtbl = if vtbl == nil: new QExtensionManagerVTable else: vtbl
  GC_ref(vtbl)
  vtbl[].vtbl.destructor = proc(self: pointer) {.cdecl.} =
    let vtbl = cast[ref QExtensionManagerVTable](fcQExtensionManager_vdata(self)[])
    GC_unref(vtbl)
  if not isNil(vtbl[].metaObject):
    vtbl[].vtbl.metaObject = fcQExtensionManager_vtable_callback_metaObject
  if not isNil(vtbl[].metacast):
    vtbl[].vtbl.metacast = fcQExtensionManager_vtable_callback_metacast
  if not isNil(vtbl[].metacall):
    vtbl[].vtbl.metacall = fcQExtensionManager_vtable_callback_metacall
  if not isNil(vtbl[].registerExtensions):
    vtbl[].vtbl.registerExtensions = fcQExtensionManager_vtable_callback_registerExtensions
  if not isNil(vtbl[].unregisterExtensions):
    vtbl[].vtbl.unregisterExtensions = fcQExtensionManager_vtable_callback_unregisterExtensions
  if not isNil(vtbl[].extension):
    vtbl[].vtbl.extension = fcQExtensionManager_vtable_callback_extension
  if not isNil(vtbl[].event):
    vtbl[].vtbl.event = fcQExtensionManager_vtable_callback_event
  if not isNil(vtbl[].eventFilter):
    vtbl[].vtbl.eventFilter = fcQExtensionManager_vtable_callback_eventFilter
  if not isNil(vtbl[].timerEvent):
    vtbl[].vtbl.timerEvent = fcQExtensionManager_vtable_callback_timerEvent
  if not isNil(vtbl[].childEvent):
    vtbl[].vtbl.childEvent = fcQExtensionManager_vtable_callback_childEvent
  if not isNil(vtbl[].customEvent):
    vtbl[].vtbl.customEvent = fcQExtensionManager_vtable_callback_customEvent
  if not isNil(vtbl[].connectNotify):
    vtbl[].vtbl.connectNotify = fcQExtensionManager_vtable_callback_connectNotify
  if not isNil(vtbl[].disconnectNotify):
    vtbl[].vtbl.disconnectNotify = fcQExtensionManager_vtable_callback_disconnectNotify
  let tmp = gen_qextensionmanager_types.QExtensionManager(h: fcQExtensionManager_new2(addr(vtbl[].vtbl), csize_t(sizeof(pointer)), parent.h))
  fcQExtensionManager_vdata(tmp.h)[] = addr(vtbl[])
  tmp
const cQExtensionManager_mvtbl = cQExtensionManagerVTable(
  destructor: proc(self: pointer) {.cdecl.} =
    let inst = cast[ptr typeof(VirtualQExtensionManager()[])](self.fcQExtensionManager_vdata()[])
    inst[].h = nil,

  metaObject: fcQExtensionManager_method_callback_metaObject,
  metacast: fcQExtensionManager_method_callback_metacast,
  metacall: fcQExtensionManager_method_callback_metacall,
  registerExtensions: fcQExtensionManager_method_callback_registerExtensions,
  unregisterExtensions: fcQExtensionManager_method_callback_unregisterExtensions,
  extension: fcQExtensionManager_method_callback_extension,
  event: fcQExtensionManager_method_callback_event,
  eventFilter: fcQExtensionManager_method_callback_eventFilter,
  timerEvent: fcQExtensionManager_method_callback_timerEvent,
  childEvent: fcQExtensionManager_method_callback_childEvent,
  customEvent: fcQExtensionManager_method_callback_customEvent,
  connectNotify: fcQExtensionManager_method_callback_connectNotify,
  disconnectNotify: fcQExtensionManager_method_callback_disconnectNotify,
)
proc create*(T: type gen_qextensionmanager_types.QExtensionManager,
    inst: VirtualQExtensionManager) =
  if inst[].h != nil: delete(move(inst[]))
  inst[].h = fcQExtensionManager_new(addr(cQExtensionManager_mvtbl), csize_t(sizeof(pointer)))
  fcQExtensionManager_vdata(inst[].h)[] = addr inst[]
  inst[].owned = true

proc create*(T: type gen_qextensionmanager_types.QExtensionManager,
    parent: gen_qobject_types.QObject,
    inst: VirtualQExtensionManager) =
  if inst[].h != nil: delete(move(inst[]))
  inst[].h = fcQExtensionManager_new2(addr(cQExtensionManager_mvtbl), csize_t(sizeof(pointer)), parent.h)
  fcQExtensionManager_vdata(inst[].h)[] = addr inst[]
  inst[].owned = true

proc staticMetaObject*(_: type gen_qextensionmanager_types.QExtensionManager): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQExtensionManager_staticMetaObject())
proc delete*(self: gen_qextensionmanager_types.QExtensionManager) =
  fcQExtensionManager_delete(self.h)
