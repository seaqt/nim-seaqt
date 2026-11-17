import ./qtdesigner_pkg

{.push raises: [].}

from system/ansi_c import c_free, c_malloc

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


{.compile("gen_default_extensionfactory.cpp", QtDesignerCFlags).}


import ./gen_default_extensionfactory_types
export gen_default_extensionfactory_types

import
  ../QtCore/gen_qcoreevent_types,
  ../QtCore/gen_qmetaobject_types,
  ../QtCore/gen_qobject,
  ../QtCore/gen_qobjectdefs_types,
  ./gen_qextensionmanager_types
export
  gen_qcoreevent_types,
  gen_qmetaobject_types,
  gen_qobject,
  gen_qobjectdefs_types,
  gen_qextensionmanager_types

type cQExtensionFactory*{.exportc: "QExtensionFactory", incompleteStruct.} = object

proc fcQExtensionFactory_metaObject(self: pointer): pointer {.importc: "QExtensionFactory_metaObject".}
proc fcQExtensionFactory_metacast(self: pointer, param1: cstring): pointer {.importc: "QExtensionFactory_metacast".}
proc fcQExtensionFactory_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.importc: "QExtensionFactory_metacall".}
proc fcQExtensionFactory_trS(s: cstring): struct_seaqt_string {.importc: "QExtensionFactory_tr_s".}
proc fcQExtensionFactory_extension(self: pointer, objectVal: pointer, iid: struct_seaqt_string): pointer {.importc: "QExtensionFactory_extension".}
proc fcQExtensionFactory_extensionManager(self: pointer): pointer {.importc: "QExtensionFactory_extensionManager".}
proc fcQExtensionFactory_trSC(s: cstring, c: cstring): struct_seaqt_string {.importc: "QExtensionFactory_tr_s_c".}
proc fcQExtensionFactory_trSCN(s: cstring, c: cstring, n: cint): struct_seaqt_string {.importc: "QExtensionFactory_tr_s_c_n".}
proc fcQExtensionFactory_vdata(self: pointer): ptr pointer {.importc: "QExtensionFactory_vdata".}
proc fvdata_cQExtensionFactory(self: pointer): pointer {.importc: "vdata_QExtensionFactory".}

type cQExtensionFactoryVTable {.pure.} = object
  destructor*: proc(self: pointer) {.cdecl, raises:[], gcsafe.}
  metaObject*: proc(self: pointer): pointer {.cdecl, raises: [], gcsafe.}
  metacast*: proc(self: pointer, param1: cstring): pointer {.cdecl, raises: [], gcsafe.}
  metacall*: proc(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.cdecl, raises: [], gcsafe.}
  extension*: proc(self: pointer, objectVal: pointer, iid: struct_seaqt_string): pointer {.cdecl, raises: [], gcsafe.}
  createExtension*: proc(self: pointer, objectVal: pointer, iid: struct_seaqt_string, parent: pointer): pointer {.cdecl, raises: [], gcsafe.}
  event*: proc(self: pointer, event: pointer): bool {.cdecl, raises: [], gcsafe.}
  eventFilter*: proc(self: pointer, watched: pointer, event: pointer): bool {.cdecl, raises: [], gcsafe.}
  timerEvent*: proc(self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  childEvent*: proc(self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  customEvent*: proc(self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  connectNotify*: proc(self: pointer, signal: pointer): void {.cdecl, raises: [], gcsafe.}
  disconnectNotify*: proc(self: pointer, signal: pointer): void {.cdecl, raises: [], gcsafe.}
proc fcQExtensionFactory_virtualbase_metaObject(self: pointer): pointer {.importc: "QExtensionFactory_virtualbase_metaObject".}
proc fcQExtensionFactory_virtualbase_metacast(self: pointer, param1: cstring): pointer {.importc: "QExtensionFactory_virtualbase_metacast".}
proc fcQExtensionFactory_virtualbase_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.importc: "QExtensionFactory_virtualbase_metacall".}
proc fcQExtensionFactory_virtualbase_extension(self: pointer, objectVal: pointer, iid: struct_seaqt_string): pointer {.importc: "QExtensionFactory_virtualbase_extension".}
proc fcQExtensionFactory_virtualbase_createExtension(self: pointer, objectVal: pointer, iid: struct_seaqt_string, parent: pointer): pointer {.importc: "QExtensionFactory_virtualbase_createExtension".}
proc fcQExtensionFactory_virtualbase_event(self: pointer, event: pointer): bool {.importc: "QExtensionFactory_virtualbase_event".}
proc fcQExtensionFactory_virtualbase_eventFilter(self: pointer, watched: pointer, event: pointer): bool {.importc: "QExtensionFactory_virtualbase_eventFilter".}
proc fcQExtensionFactory_virtualbase_timerEvent(self: pointer, event: pointer): void {.importc: "QExtensionFactory_virtualbase_timerEvent".}
proc fcQExtensionFactory_virtualbase_childEvent(self: pointer, event: pointer): void {.importc: "QExtensionFactory_virtualbase_childEvent".}
proc fcQExtensionFactory_virtualbase_customEvent(self: pointer, event: pointer): void {.importc: "QExtensionFactory_virtualbase_customEvent".}
proc fcQExtensionFactory_virtualbase_connectNotify(self: pointer, signal: pointer): void {.importc: "QExtensionFactory_virtualbase_connectNotify".}
proc fcQExtensionFactory_virtualbase_disconnectNotify(self: pointer, signal: pointer): void {.importc: "QExtensionFactory_virtualbase_disconnectNotify".}
proc fcQExtensionFactory_protectedbase_sender(self: pointer): pointer {.importc: "QExtensionFactory_protectedbase_sender".}
proc fcQExtensionFactory_protectedbase_senderSignalIndex(self: pointer): cint {.importc: "QExtensionFactory_protectedbase_senderSignalIndex".}
proc fcQExtensionFactory_protectedbase_receivers(self: pointer, signal: cstring): cint {.importc: "QExtensionFactory_protectedbase_receivers".}
proc fcQExtensionFactory_protectedbase_isSignalConnected(self: pointer, signal: pointer): bool {.importc: "QExtensionFactory_protectedbase_isSignalConnected".}
proc fcQExtensionFactory_new(vtbl: pointer, vdata: csize_t): ptr cQExtensionFactory {.importc: "QExtensionFactory_new".}
proc fcQExtensionFactory_new2(vtbl: pointer, vdata: csize_t, parent: pointer): ptr cQExtensionFactory {.importc: "QExtensionFactory_new_parent".}
proc fcQExtensionFactory_staticMetaObject(): pointer {.importc: "QExtensionFactory_staticMetaObject".}

proc metaObject*(self: gen_default_extensionfactory_types.QExtensionFactory): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQExtensionFactory_metaObject(self.h), owned: false)

proc metacast*(self: gen_default_extensionfactory_types.QExtensionFactory, param1: cstring): pointer =
  fcQExtensionFactory_metacast(self.h, param1)

proc metacall*(self: gen_default_extensionfactory_types.QExtensionFactory, param1: cint, param2: cint, param3: pointer): cint =
  fcQExtensionFactory_metacall(self.h, cint(param1), param2, param3)

proc tr*(_: type gen_default_extensionfactory_types.QExtensionFactory, s: cstring): string =
  let v_ms = fcQExtensionFactory_trS(s)
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

proc extension*(self: gen_default_extensionfactory_types.QExtensionFactory, objectVal: gen_qobject_types.QObject, iid: openArray[char]): gen_qobject_types.QObject =
  gen_qobject_types.QObject(h: fcQExtensionFactory_extension(self.h, objectVal.h, struct_seaqt_string(data: if len(iid) > 0: addr iid[0] else: nil, len: csize_t(len(iid)))), owned: false)

proc extensionManager*(self: gen_default_extensionfactory_types.QExtensionFactory): gen_qextensionmanager_types.QExtensionManager =
  gen_qextensionmanager_types.QExtensionManager(h: fcQExtensionFactory_extensionManager(self.h), owned: false)

proc tr*(_: type gen_default_extensionfactory_types.QExtensionFactory, s: cstring, c: cstring): string =
  let v_ms = fcQExtensionFactory_trSC(s, c)
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

proc tr*(_: type gen_default_extensionfactory_types.QExtensionFactory, s: cstring, c: cstring, n: cint): string =
  let v_ms = fcQExtensionFactory_trSCN(s, c, n)
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

type QExtensionFactorymetaObjectProc* = proc(self: QExtensionFactory): gen_qobjectdefs_types.QMetaObject {.raises: [], gcsafe.}
type QExtensionFactorymetacastProc* = proc(self: QExtensionFactory, param1: cstring): pointer {.raises: [], gcsafe.}
type QExtensionFactorymetacallProc* = proc(self: QExtensionFactory, param1: cint, param2: cint, param3: pointer): cint {.raises: [], gcsafe.}
type QExtensionFactoryextensionProc* = proc(self: QExtensionFactory, objectVal: gen_qobject_types.QObject, iid: openArray[char]): gen_qobject_types.QObject {.raises: [], gcsafe.}
type QExtensionFactorycreateExtensionProc* = proc(self: QExtensionFactory, objectVal: gen_qobject_types.QObject, iid: openArray[char], parent: gen_qobject_types.QObject): gen_qobject_types.QObject {.raises: [], gcsafe.}
type QExtensionFactoryeventProc* = proc(self: QExtensionFactory, event: gen_qcoreevent_types.QEvent): bool {.raises: [], gcsafe.}
type QExtensionFactoryeventFilterProc* = proc(self: QExtensionFactory, watched: gen_qobject_types.QObject, event: gen_qcoreevent_types.QEvent): bool {.raises: [], gcsafe.}
type QExtensionFactorytimerEventProc* = proc(self: QExtensionFactory, event: gen_qcoreevent_types.QTimerEvent): void {.raises: [], gcsafe.}
type QExtensionFactorychildEventProc* = proc(self: QExtensionFactory, event: gen_qcoreevent_types.QChildEvent): void {.raises: [], gcsafe.}
type QExtensionFactorycustomEventProc* = proc(self: QExtensionFactory, event: gen_qcoreevent_types.QEvent): void {.raises: [], gcsafe.}
type QExtensionFactoryconnectNotifyProc* = proc(self: QExtensionFactory, signal: gen_qmetaobject_types.QMetaMethod): void {.raises: [], gcsafe.}
type QExtensionFactorydisconnectNotifyProc* = proc(self: QExtensionFactory, signal: gen_qmetaobject_types.QMetaMethod): void {.raises: [], gcsafe.}

type QExtensionFactoryVTable* {.inheritable, pure.} = object
  vtbl: cQExtensionFactoryVTable
  metaObject*: QExtensionFactorymetaObjectProc
  metacast*: QExtensionFactorymetacastProc
  metacall*: QExtensionFactorymetacallProc
  extension*: QExtensionFactoryextensionProc
  createExtension*: QExtensionFactorycreateExtensionProc
  event*: QExtensionFactoryeventProc
  eventFilter*: QExtensionFactoryeventFilterProc
  timerEvent*: QExtensionFactorytimerEventProc
  childEvent*: QExtensionFactorychildEventProc
  customEvent*: QExtensionFactorycustomEventProc
  connectNotify*: QExtensionFactoryconnectNotifyProc
  disconnectNotify*: QExtensionFactorydisconnectNotifyProc

proc QExtensionFactorymetaObject*(self: gen_default_extensionfactory_types.QExtensionFactory): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQExtensionFactory_virtualbase_metaObject(self.h), owned: false)

proc QExtensionFactorymetacast*(self: gen_default_extensionfactory_types.QExtensionFactory, param1: cstring): pointer =
  fcQExtensionFactory_virtualbase_metacast(self.h, param1)

proc QExtensionFactorymetacall*(self: gen_default_extensionfactory_types.QExtensionFactory, param1: cint, param2: cint, param3: pointer): cint =
  fcQExtensionFactory_virtualbase_metacall(self.h, cint(param1), param2, param3)

proc QExtensionFactoryextension*(self: gen_default_extensionfactory_types.QExtensionFactory, objectVal: gen_qobject_types.QObject, iid: openArray[char]): gen_qobject_types.QObject =
  gen_qobject_types.QObject(h: fcQExtensionFactory_virtualbase_extension(self.h, objectVal.h, struct_seaqt_string(data: if len(iid) > 0: addr iid[0] else: nil, len: csize_t(len(iid)))), owned: false)

proc QExtensionFactorycreateExtension*(self: gen_default_extensionfactory_types.QExtensionFactory, objectVal: gen_qobject_types.QObject, iid: openArray[char], parent: gen_qobject_types.QObject): gen_qobject_types.QObject =
  gen_qobject_types.QObject(h: fcQExtensionFactory_virtualbase_createExtension(self.h, objectVal.h, struct_seaqt_string(data: if len(iid) > 0: addr iid[0] else: nil, len: csize_t(len(iid))), parent.h), owned: false)

proc QExtensionFactoryevent*(self: gen_default_extensionfactory_types.QExtensionFactory, event: gen_qcoreevent_types.QEvent): bool =
  fcQExtensionFactory_virtualbase_event(self.h, event.h)

proc QExtensionFactoryeventFilter*(self: gen_default_extensionfactory_types.QExtensionFactory, watched: gen_qobject_types.QObject, event: gen_qcoreevent_types.QEvent): bool =
  fcQExtensionFactory_virtualbase_eventFilter(self.h, watched.h, event.h)

proc QExtensionFactorytimerEvent*(self: gen_default_extensionfactory_types.QExtensionFactory, event: gen_qcoreevent_types.QTimerEvent): void =
  fcQExtensionFactory_virtualbase_timerEvent(self.h, event.h)

proc QExtensionFactorychildEvent*(self: gen_default_extensionfactory_types.QExtensionFactory, event: gen_qcoreevent_types.QChildEvent): void =
  fcQExtensionFactory_virtualbase_childEvent(self.h, event.h)

proc QExtensionFactorycustomEvent*(self: gen_default_extensionfactory_types.QExtensionFactory, event: gen_qcoreevent_types.QEvent): void =
  fcQExtensionFactory_virtualbase_customEvent(self.h, event.h)

proc QExtensionFactoryconnectNotify*(self: gen_default_extensionfactory_types.QExtensionFactory, signal: gen_qmetaobject_types.QMetaMethod): void =
  fcQExtensionFactory_virtualbase_connectNotify(self.h, signal.h)

proc QExtensionFactorydisconnectNotify*(self: gen_default_extensionfactory_types.QExtensionFactory, signal: gen_qmetaobject_types.QMetaMethod): void =
  fcQExtensionFactory_virtualbase_disconnectNotify(self.h, signal.h)


proc fcQExtensionFactory_vtable_callback_metaObject(self: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QExtensionFactoryVTable](fcQExtensionFactory_vdata(self)[])
  let self = QExtensionFactory(h: self)
  var virtualReturn = vtbl[].metaObject(self)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc fcQExtensionFactory_vtable_callback_metacast(self: pointer, param1: cstring): pointer {.cdecl.} =
  let vtbl = cast[ptr QExtensionFactoryVTable](fcQExtensionFactory_vdata(self)[])
  let self = QExtensionFactory(h: self)
  let slotval1 = (param1)
  var virtualReturn = vtbl[].metacast(self, slotval1)
  virtualReturn

proc fcQExtensionFactory_vtable_callback_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.cdecl.} =
  let vtbl = cast[ptr QExtensionFactoryVTable](fcQExtensionFactory_vdata(self)[])
  let self = QExtensionFactory(h: self)
  let slotval1 = cint(param1)
  let slotval2 = param2
  let slotval3 = param3
  var virtualReturn = vtbl[].metacall(self, slotval1, slotval2, slotval3)
  virtualReturn

proc fcQExtensionFactory_vtable_callback_extension(self: pointer, objectVal: pointer, iid: struct_seaqt_string): pointer {.cdecl.} =
  let vtbl = cast[ptr QExtensionFactoryVTable](fcQExtensionFactory_vdata(self)[])
  let self = QExtensionFactory(h: self)
  let slotval1 = gen_qobject_types.QObject(h: objectVal, owned: false)
  let viid_ms = iid
  let viidx_ret = string.fromBytes(viid_ms)
  c_free(viid_ms.data)
  let slotval2 = viidx_ret
  var virtualReturn = vtbl[].extension(self, slotval1, slotval2)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc fcQExtensionFactory_vtable_callback_createExtension(self: pointer, objectVal: pointer, iid: struct_seaqt_string, parent: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QExtensionFactoryVTable](fcQExtensionFactory_vdata(self)[])
  let self = QExtensionFactory(h: self)
  let slotval1 = gen_qobject_types.QObject(h: objectVal, owned: false)
  let viid_ms = iid
  let viidx_ret = string.fromBytes(viid_ms)
  c_free(viid_ms.data)
  let slotval2 = viidx_ret
  let slotval3 = gen_qobject_types.QObject(h: parent, owned: false)
  var virtualReturn = vtbl[].createExtension(self, slotval1, slotval2, slotval3)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc fcQExtensionFactory_vtable_callback_event(self: pointer, event: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QExtensionFactoryVTable](fcQExtensionFactory_vdata(self)[])
  let self = QExtensionFactory(h: self)
  let slotval1 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  var virtualReturn = vtbl[].event(self, slotval1)
  virtualReturn

proc fcQExtensionFactory_vtable_callback_eventFilter(self: pointer, watched: pointer, event: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QExtensionFactoryVTable](fcQExtensionFactory_vdata(self)[])
  let self = QExtensionFactory(h: self)
  let slotval1 = gen_qobject_types.QObject(h: watched, owned: false)
  let slotval2 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  var virtualReturn = vtbl[].eventFilter(self, slotval1, slotval2)
  virtualReturn

proc fcQExtensionFactory_vtable_callback_timerEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QExtensionFactoryVTable](fcQExtensionFactory_vdata(self)[])
  let self = QExtensionFactory(h: self)
  let slotval1 = gen_qcoreevent_types.QTimerEvent(h: event, owned: false)
  vtbl[].timerEvent(self, slotval1)

proc fcQExtensionFactory_vtable_callback_childEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QExtensionFactoryVTable](fcQExtensionFactory_vdata(self)[])
  let self = QExtensionFactory(h: self)
  let slotval1 = gen_qcoreevent_types.QChildEvent(h: event, owned: false)
  vtbl[].childEvent(self, slotval1)

proc fcQExtensionFactory_vtable_callback_customEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QExtensionFactoryVTable](fcQExtensionFactory_vdata(self)[])
  let self = QExtensionFactory(h: self)
  let slotval1 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  vtbl[].customEvent(self, slotval1)

proc fcQExtensionFactory_vtable_callback_connectNotify(self: pointer, signal: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QExtensionFactoryVTable](fcQExtensionFactory_vdata(self)[])
  let self = QExtensionFactory(h: self)
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal, owned: false)
  vtbl[].connectNotify(self, slotval1)

proc fcQExtensionFactory_vtable_callback_disconnectNotify(self: pointer, signal: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QExtensionFactoryVTable](fcQExtensionFactory_vdata(self)[])
  let self = QExtensionFactory(h: self)
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal, owned: false)
  vtbl[].disconnectNotify(self, slotval1)

type VirtualQExtensionFactory* {.inheritable.} = ref object of QExtensionFactory
  vtbl*: cQExtensionFactoryVTable

method metaObject*(self: VirtualQExtensionFactory): gen_qobjectdefs_types.QMetaObject {.base.} =
  QExtensionFactorymetaObject(self[])
method metacast*(self: VirtualQExtensionFactory, param1: cstring): pointer {.base.} =
  QExtensionFactorymetacast(self[], param1)
method metacall*(self: VirtualQExtensionFactory, param1: cint, param2: cint, param3: pointer): cint {.base.} =
  QExtensionFactorymetacall(self[], param1, param2, param3)
method extension*(self: VirtualQExtensionFactory, objectVal: gen_qobject_types.QObject, iid: openArray[char]): gen_qobject_types.QObject {.base.} =
  QExtensionFactoryextension(self[], objectVal, iid)
method createExtension*(self: VirtualQExtensionFactory, objectVal: gen_qobject_types.QObject, iid: openArray[char], parent: gen_qobject_types.QObject): gen_qobject_types.QObject {.base.} =
  QExtensionFactorycreateExtension(self[], objectVal, iid, parent)
method event*(self: VirtualQExtensionFactory, event: gen_qcoreevent_types.QEvent): bool {.base.} =
  QExtensionFactoryevent(self[], event)
method eventFilter*(self: VirtualQExtensionFactory, watched: gen_qobject_types.QObject, event: gen_qcoreevent_types.QEvent): bool {.base.} =
  QExtensionFactoryeventFilter(self[], watched, event)
method timerEvent*(self: VirtualQExtensionFactory, event: gen_qcoreevent_types.QTimerEvent): void {.base.} =
  QExtensionFactorytimerEvent(self[], event)
method childEvent*(self: VirtualQExtensionFactory, event: gen_qcoreevent_types.QChildEvent): void {.base.} =
  QExtensionFactorychildEvent(self[], event)
method customEvent*(self: VirtualQExtensionFactory, event: gen_qcoreevent_types.QEvent): void {.base.} =
  QExtensionFactorycustomEvent(self[], event)
method connectNotify*(self: VirtualQExtensionFactory, signal: gen_qmetaobject_types.QMetaMethod): void {.base.} =
  QExtensionFactoryconnectNotify(self[], signal)
method disconnectNotify*(self: VirtualQExtensionFactory, signal: gen_qmetaobject_types.QMetaMethod): void {.base.} =
  QExtensionFactorydisconnectNotify(self[], signal)

proc fcQExtensionFactory_method_callback_metaObject(self: pointer): pointer {.cdecl.} =
  let inst = cast[VirtualQExtensionFactory](fcQExtensionFactory_vdata(self)[])
  var virtualReturn = inst.metaObject()
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc fcQExtensionFactory_method_callback_metacast(self: pointer, param1: cstring): pointer {.cdecl.} =
  let inst = cast[VirtualQExtensionFactory](fcQExtensionFactory_vdata(self)[])
  let slotval1 = (param1)
  var virtualReturn = inst.metacast(slotval1)
  virtualReturn

proc fcQExtensionFactory_method_callback_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.cdecl.} =
  let inst = cast[VirtualQExtensionFactory](fcQExtensionFactory_vdata(self)[])
  let slotval1 = cint(param1)
  let slotval2 = param2
  let slotval3 = param3
  var virtualReturn = inst.metacall(slotval1, slotval2, slotval3)
  virtualReturn

proc fcQExtensionFactory_method_callback_extension(self: pointer, objectVal: pointer, iid: struct_seaqt_string): pointer {.cdecl.} =
  let inst = cast[VirtualQExtensionFactory](fcQExtensionFactory_vdata(self)[])
  let slotval1 = gen_qobject_types.QObject(h: objectVal, owned: false)
  let viid_ms = iid
  let viidx_ret = string.fromBytes(viid_ms)
  c_free(viid_ms.data)
  let slotval2 = viidx_ret
  var virtualReturn = inst.extension(slotval1, slotval2)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc fcQExtensionFactory_method_callback_createExtension(self: pointer, objectVal: pointer, iid: struct_seaqt_string, parent: pointer): pointer {.cdecl.} =
  let inst = cast[VirtualQExtensionFactory](fcQExtensionFactory_vdata(self)[])
  let slotval1 = gen_qobject_types.QObject(h: objectVal, owned: false)
  let viid_ms = iid
  let viidx_ret = string.fromBytes(viid_ms)
  c_free(viid_ms.data)
  let slotval2 = viidx_ret
  let slotval3 = gen_qobject_types.QObject(h: parent, owned: false)
  var virtualReturn = inst.createExtension(slotval1, slotval2, slotval3)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc fcQExtensionFactory_method_callback_event(self: pointer, event: pointer): bool {.cdecl.} =
  let inst = cast[VirtualQExtensionFactory](fcQExtensionFactory_vdata(self)[])
  let slotval1 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  var virtualReturn = inst.event(slotval1)
  virtualReturn

proc fcQExtensionFactory_method_callback_eventFilter(self: pointer, watched: pointer, event: pointer): bool {.cdecl.} =
  let inst = cast[VirtualQExtensionFactory](fcQExtensionFactory_vdata(self)[])
  let slotval1 = gen_qobject_types.QObject(h: watched, owned: false)
  let slotval2 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  var virtualReturn = inst.eventFilter(slotval1, slotval2)
  virtualReturn

proc fcQExtensionFactory_method_callback_timerEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQExtensionFactory](fcQExtensionFactory_vdata(self)[])
  let slotval1 = gen_qcoreevent_types.QTimerEvent(h: event, owned: false)
  inst.timerEvent(slotval1)

proc fcQExtensionFactory_method_callback_childEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQExtensionFactory](fcQExtensionFactory_vdata(self)[])
  let slotval1 = gen_qcoreevent_types.QChildEvent(h: event, owned: false)
  inst.childEvent(slotval1)

proc fcQExtensionFactory_method_callback_customEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQExtensionFactory](fcQExtensionFactory_vdata(self)[])
  let slotval1 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  inst.customEvent(slotval1)

proc fcQExtensionFactory_method_callback_connectNotify(self: pointer, signal: pointer): void {.cdecl.} =
  let inst = cast[VirtualQExtensionFactory](fcQExtensionFactory_vdata(self)[])
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal, owned: false)
  inst.connectNotify(slotval1)

proc fcQExtensionFactory_method_callback_disconnectNotify(self: pointer, signal: pointer): void {.cdecl.} =
  let inst = cast[VirtualQExtensionFactory](fcQExtensionFactory_vdata(self)[])
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal, owned: false)
  inst.disconnectNotify(slotval1)


proc sender*(self: gen_default_extensionfactory_types.QExtensionFactory): gen_qobject_types.QObject =
  gen_qobject_types.QObject(h: fcQExtensionFactory_protectedbase_sender(self.h), owned: false)

proc senderSignalIndex*(self: gen_default_extensionfactory_types.QExtensionFactory): cint =
  fcQExtensionFactory_protectedbase_senderSignalIndex(self.h)

proc receivers*(self: gen_default_extensionfactory_types.QExtensionFactory, signal: cstring): cint =
  fcQExtensionFactory_protectedbase_receivers(self.h, signal)

proc isSignalConnected*(self: gen_default_extensionfactory_types.QExtensionFactory, signal: gen_qmetaobject_types.QMetaMethod): bool =
  fcQExtensionFactory_protectedbase_isSignalConnected(self.h, signal.h)

proc create*(T: type gen_default_extensionfactory_types.QExtensionFactory,
    vtbl: ref QExtensionFactoryVTable = nil): gen_default_extensionfactory_types.QExtensionFactory =
  let vtbl = if vtbl == nil: new QExtensionFactoryVTable else: vtbl
  GC_ref(vtbl)
  vtbl[].vtbl.destructor = proc(self: pointer) {.cdecl.} =
    let vtbl = cast[ref QExtensionFactoryVTable](fcQExtensionFactory_vdata(self)[])
    GC_unref(vtbl)
  if not isNil(vtbl[].metaObject):
    vtbl[].vtbl.metaObject = fcQExtensionFactory_vtable_callback_metaObject
  if not isNil(vtbl[].metacast):
    vtbl[].vtbl.metacast = fcQExtensionFactory_vtable_callback_metacast
  if not isNil(vtbl[].metacall):
    vtbl[].vtbl.metacall = fcQExtensionFactory_vtable_callback_metacall
  if not isNil(vtbl[].extension):
    vtbl[].vtbl.extension = fcQExtensionFactory_vtable_callback_extension
  if not isNil(vtbl[].createExtension):
    vtbl[].vtbl.createExtension = fcQExtensionFactory_vtable_callback_createExtension
  if not isNil(vtbl[].event):
    vtbl[].vtbl.event = fcQExtensionFactory_vtable_callback_event
  if not isNil(vtbl[].eventFilter):
    vtbl[].vtbl.eventFilter = fcQExtensionFactory_vtable_callback_eventFilter
  if not isNil(vtbl[].timerEvent):
    vtbl[].vtbl.timerEvent = fcQExtensionFactory_vtable_callback_timerEvent
  if not isNil(vtbl[].childEvent):
    vtbl[].vtbl.childEvent = fcQExtensionFactory_vtable_callback_childEvent
  if not isNil(vtbl[].customEvent):
    vtbl[].vtbl.customEvent = fcQExtensionFactory_vtable_callback_customEvent
  if not isNil(vtbl[].connectNotify):
    vtbl[].vtbl.connectNotify = fcQExtensionFactory_vtable_callback_connectNotify
  if not isNil(vtbl[].disconnectNotify):
    vtbl[].vtbl.disconnectNotify = fcQExtensionFactory_vtable_callback_disconnectNotify
  let tmp = gen_default_extensionfactory_types.QExtensionFactory(h: fcQExtensionFactory_new(addr(vtbl[].vtbl), csize_t(sizeof(pointer))), owned: true)
  fcQExtensionFactory_vdata(tmp.h)[] = addr(vtbl[])
  tmp
proc create*(T: type gen_default_extensionfactory_types.QExtensionFactory,
    parent: gen_qextensionmanager_types.QExtensionManager,
    vtbl: ref QExtensionFactoryVTable = nil): gen_default_extensionfactory_types.QExtensionFactory =
  let vtbl = if vtbl == nil: new QExtensionFactoryVTable else: vtbl
  GC_ref(vtbl)
  vtbl[].vtbl.destructor = proc(self: pointer) {.cdecl.} =
    let vtbl = cast[ref QExtensionFactoryVTable](fcQExtensionFactory_vdata(self)[])
    GC_unref(vtbl)
  if not isNil(vtbl[].metaObject):
    vtbl[].vtbl.metaObject = fcQExtensionFactory_vtable_callback_metaObject
  if not isNil(vtbl[].metacast):
    vtbl[].vtbl.metacast = fcQExtensionFactory_vtable_callback_metacast
  if not isNil(vtbl[].metacall):
    vtbl[].vtbl.metacall = fcQExtensionFactory_vtable_callback_metacall
  if not isNil(vtbl[].extension):
    vtbl[].vtbl.extension = fcQExtensionFactory_vtable_callback_extension
  if not isNil(vtbl[].createExtension):
    vtbl[].vtbl.createExtension = fcQExtensionFactory_vtable_callback_createExtension
  if not isNil(vtbl[].event):
    vtbl[].vtbl.event = fcQExtensionFactory_vtable_callback_event
  if not isNil(vtbl[].eventFilter):
    vtbl[].vtbl.eventFilter = fcQExtensionFactory_vtable_callback_eventFilter
  if not isNil(vtbl[].timerEvent):
    vtbl[].vtbl.timerEvent = fcQExtensionFactory_vtable_callback_timerEvent
  if not isNil(vtbl[].childEvent):
    vtbl[].vtbl.childEvent = fcQExtensionFactory_vtable_callback_childEvent
  if not isNil(vtbl[].customEvent):
    vtbl[].vtbl.customEvent = fcQExtensionFactory_vtable_callback_customEvent
  if not isNil(vtbl[].connectNotify):
    vtbl[].vtbl.connectNotify = fcQExtensionFactory_vtable_callback_connectNotify
  if not isNil(vtbl[].disconnectNotify):
    vtbl[].vtbl.disconnectNotify = fcQExtensionFactory_vtable_callback_disconnectNotify
  let tmp = gen_default_extensionfactory_types.QExtensionFactory(h: fcQExtensionFactory_new2(addr(vtbl[].vtbl), csize_t(sizeof(pointer)), parent.h), owned: true)
  fcQExtensionFactory_vdata(tmp.h)[] = addr(vtbl[])
  tmp
const cQExtensionFactory_mvtbl = cQExtensionFactoryVTable(
  destructor: proc(self: pointer) {.cdecl.} =
    let inst = cast[ptr typeof(VirtualQExtensionFactory()[])](self.fcQExtensionFactory_vdata()[])
    inst[].h = nil
    inst[].owned = false,

  metaObject: fcQExtensionFactory_method_callback_metaObject,
  metacast: fcQExtensionFactory_method_callback_metacast,
  metacall: fcQExtensionFactory_method_callback_metacall,
  extension: fcQExtensionFactory_method_callback_extension,
  createExtension: fcQExtensionFactory_method_callback_createExtension,
  event: fcQExtensionFactory_method_callback_event,
  eventFilter: fcQExtensionFactory_method_callback_eventFilter,
  timerEvent: fcQExtensionFactory_method_callback_timerEvent,
  childEvent: fcQExtensionFactory_method_callback_childEvent,
  customEvent: fcQExtensionFactory_method_callback_customEvent,
  connectNotify: fcQExtensionFactory_method_callback_connectNotify,
  disconnectNotify: fcQExtensionFactory_method_callback_disconnectNotify,
)
proc create*(T: type gen_default_extensionfactory_types.QExtensionFactory,
    inst: VirtualQExtensionFactory) =
  if inst[].h != nil: delete(move(inst[]))
  inst[].h = fcQExtensionFactory_new(addr(cQExtensionFactory_mvtbl), csize_t(sizeof(pointer)))
  fcQExtensionFactory_vdata(inst[].h)[] = addr inst[]
  inst[].owned = true

proc create*(T: type gen_default_extensionfactory_types.QExtensionFactory,
    parent: gen_qextensionmanager_types.QExtensionManager,
    inst: VirtualQExtensionFactory) =
  if inst[].h != nil: delete(move(inst[]))
  inst[].h = fcQExtensionFactory_new2(addr(cQExtensionFactory_mvtbl), csize_t(sizeof(pointer)), parent.h)
  fcQExtensionFactory_vdata(inst[].h)[] = addr inst[]
  inst[].owned = true

proc staticMetaObject*(_: type gen_default_extensionfactory_types.QExtensionFactory): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQExtensionFactory_staticMetaObject())
