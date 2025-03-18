import ./qtqml_pkg

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


{.compile("gen_qqmlfileselector.cpp", QtQmlCFlags).}


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

proc fcQQmlFileSelector_metaObject(self: pointer): pointer {.importc: "QQmlFileSelector_metaObject".}
proc fcQQmlFileSelector_metacast(self: pointer, param1: cstring): pointer {.importc: "QQmlFileSelector_metacast".}
proc fcQQmlFileSelector_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.importc: "QQmlFileSelector_metacall".}
proc fcQQmlFileSelector_tr(s: cstring): struct_miqt_string {.importc: "QQmlFileSelector_tr".}
proc fcQQmlFileSelector_selector(self: pointer): pointer {.importc: "QQmlFileSelector_selector".}
proc fcQQmlFileSelector_setSelector(self: pointer, selector: pointer): void {.importc: "QQmlFileSelector_setSelector".}
proc fcQQmlFileSelector_setExtraSelectors(self: pointer, strings: struct_miqt_array): void {.importc: "QQmlFileSelector_setExtraSelectors".}
proc fcQQmlFileSelector_get(param1: pointer): pointer {.importc: "QQmlFileSelector_get".}
proc fcQQmlFileSelector_tr2(s: cstring, c: cstring): struct_miqt_string {.importc: "QQmlFileSelector_tr2".}
proc fcQQmlFileSelector_tr3(s: cstring, c: cstring, n: cint): struct_miqt_string {.importc: "QQmlFileSelector_tr3".}
proc fcQQmlFileSelector_vtbl(self: pointer): pointer {.importc: "QQmlFileSelector_vtbl".}
proc fcQQmlFileSelector_vdata(self: pointer): pointer {.importc: "QQmlFileSelector_vdata".}

type cQQmlFileSelectorVTable {.pure.} = object
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
proc fcQQmlFileSelector_virtualbase_metaObject(self: pointer): pointer {.importc: "QQmlFileSelector_virtualbase_metaObject".}
proc fcQQmlFileSelector_virtualbase_metacast(self: pointer, param1: cstring): pointer {.importc: "QQmlFileSelector_virtualbase_metacast".}
proc fcQQmlFileSelector_virtualbase_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.importc: "QQmlFileSelector_virtualbase_metacall".}
proc fcQQmlFileSelector_virtualbase_event(self: pointer, event: pointer): bool {.importc: "QQmlFileSelector_virtualbase_event".}
proc fcQQmlFileSelector_virtualbase_eventFilter(self: pointer, watched: pointer, event: pointer): bool {.importc: "QQmlFileSelector_virtualbase_eventFilter".}
proc fcQQmlFileSelector_virtualbase_timerEvent(self: pointer, event: pointer): void {.importc: "QQmlFileSelector_virtualbase_timerEvent".}
proc fcQQmlFileSelector_virtualbase_childEvent(self: pointer, event: pointer): void {.importc: "QQmlFileSelector_virtualbase_childEvent".}
proc fcQQmlFileSelector_virtualbase_customEvent(self: pointer, event: pointer): void {.importc: "QQmlFileSelector_virtualbase_customEvent".}
proc fcQQmlFileSelector_virtualbase_connectNotify(self: pointer, signal: pointer): void {.importc: "QQmlFileSelector_virtualbase_connectNotify".}
proc fcQQmlFileSelector_virtualbase_disconnectNotify(self: pointer, signal: pointer): void {.importc: "QQmlFileSelector_virtualbase_disconnectNotify".}
proc fcQQmlFileSelector_protectedbase_sender(self: pointer): pointer {.importc: "QQmlFileSelector_protectedbase_sender".}
proc fcQQmlFileSelector_protectedbase_senderSignalIndex(self: pointer): cint {.importc: "QQmlFileSelector_protectedbase_senderSignalIndex".}
proc fcQQmlFileSelector_protectedbase_receivers(self: pointer, signal: cstring): cint {.importc: "QQmlFileSelector_protectedbase_receivers".}
proc fcQQmlFileSelector_protectedbase_isSignalConnected(self: pointer, signal: pointer): bool {.importc: "QQmlFileSelector_protectedbase_isSignalConnected".}
proc fcQQmlFileSelector_new(vtbl, vdata: pointer, engine: pointer): ptr cQQmlFileSelector {.importc: "QQmlFileSelector_new".}
proc fcQQmlFileSelector_new2(vtbl, vdata: pointer, engine: pointer, parent: pointer): ptr cQQmlFileSelector {.importc: "QQmlFileSelector_new2".}
proc fcQQmlFileSelector_staticMetaObject(): pointer {.importc: "QQmlFileSelector_staticMetaObject".}

proc metaObject*(self: gen_qqmlfileselector_types.QQmlFileSelector): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQQmlFileSelector_metaObject(self.h), owned: false)

proc metacast*(self: gen_qqmlfileselector_types.QQmlFileSelector, param1: cstring): pointer =
  fcQQmlFileSelector_metacast(self.h, param1)

proc metacall*(self: gen_qqmlfileselector_types.QQmlFileSelector, param1: cint, param2: cint, param3: pointer): cint =
  fcQQmlFileSelector_metacall(self.h, cint(param1), param2, param3)

proc tr*(_: type gen_qqmlfileselector_types.QQmlFileSelector, s: cstring): string =
  let v_ms = fcQQmlFileSelector_tr(s)
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

proc selector*(self: gen_qqmlfileselector_types.QQmlFileSelector): gen_qfileselector_types.QFileSelector =
  gen_qfileselector_types.QFileSelector(h: fcQQmlFileSelector_selector(self.h), owned: false)

proc setSelector*(self: gen_qqmlfileselector_types.QQmlFileSelector, selector: gen_qfileselector_types.QFileSelector): void =
  fcQQmlFileSelector_setSelector(self.h, selector.h)

proc setExtraSelectors*(self: gen_qqmlfileselector_types.QQmlFileSelector, strings: openArray[string]): void =
  var strings_CArray = newSeq[struct_miqt_string](len(strings))
  for i in 0..<len(strings):
    strings_CArray[i] = struct_miqt_string(data: if len(strings[i]) > 0: addr strings[i][0] else: nil, len: csize_t(len(strings[i])))

  fcQQmlFileSelector_setExtraSelectors(self.h, struct_miqt_array(len: csize_t(len(strings)), data: if len(strings) == 0: nil else: addr(strings_CArray[0])))

proc get*(_: type gen_qqmlfileselector_types.QQmlFileSelector, param1: gen_qqmlengine_types.QQmlEngine): gen_qqmlfileselector_types.QQmlFileSelector =
  gen_qqmlfileselector_types.QQmlFileSelector(h: fcQQmlFileSelector_get(param1.h), owned: false)

proc tr*(_: type gen_qqmlfileselector_types.QQmlFileSelector, s: cstring, c: cstring): string =
  let v_ms = fcQQmlFileSelector_tr2(s, c)
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

proc tr*(_: type gen_qqmlfileselector_types.QQmlFileSelector, s: cstring, c: cstring, n: cint): string =
  let v_ms = fcQQmlFileSelector_tr3(s, c, n)
  let vx_ret = string.fromBytes(v_ms)
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

type QQmlFileSelectorVTable* {.inheritable, pure.} = object
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

proc QQmlFileSelectormetaObject*(self: gen_qqmlfileselector_types.QQmlFileSelector): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQQmlFileSelector_virtualbase_metaObject(self.h), owned: false)

proc QQmlFileSelectormetacast*(self: gen_qqmlfileselector_types.QQmlFileSelector, param1: cstring): pointer =
  fcQQmlFileSelector_virtualbase_metacast(self.h, param1)

proc QQmlFileSelectormetacall*(self: gen_qqmlfileselector_types.QQmlFileSelector, param1: cint, param2: cint, param3: pointer): cint =
  fcQQmlFileSelector_virtualbase_metacall(self.h, cint(param1), param2, param3)

proc QQmlFileSelectorevent*(self: gen_qqmlfileselector_types.QQmlFileSelector, event: gen_qcoreevent_types.QEvent): bool =
  fcQQmlFileSelector_virtualbase_event(self.h, event.h)

proc QQmlFileSelectoreventFilter*(self: gen_qqmlfileselector_types.QQmlFileSelector, watched: gen_qobject_types.QObject, event: gen_qcoreevent_types.QEvent): bool =
  fcQQmlFileSelector_virtualbase_eventFilter(self.h, watched.h, event.h)

proc QQmlFileSelectortimerEvent*(self: gen_qqmlfileselector_types.QQmlFileSelector, event: gen_qcoreevent_types.QTimerEvent): void =
  fcQQmlFileSelector_virtualbase_timerEvent(self.h, event.h)

proc QQmlFileSelectorchildEvent*(self: gen_qqmlfileselector_types.QQmlFileSelector, event: gen_qcoreevent_types.QChildEvent): void =
  fcQQmlFileSelector_virtualbase_childEvent(self.h, event.h)

proc QQmlFileSelectorcustomEvent*(self: gen_qqmlfileselector_types.QQmlFileSelector, event: gen_qcoreevent_types.QEvent): void =
  fcQQmlFileSelector_virtualbase_customEvent(self.h, event.h)

proc QQmlFileSelectorconnectNotify*(self: gen_qqmlfileselector_types.QQmlFileSelector, signal: gen_qmetaobject_types.QMetaMethod): void =
  fcQQmlFileSelector_virtualbase_connectNotify(self.h, signal.h)

proc QQmlFileSelectordisconnectNotify*(self: gen_qqmlfileselector_types.QQmlFileSelector, signal: gen_qmetaobject_types.QMetaMethod): void =
  fcQQmlFileSelector_virtualbase_disconnectNotify(self.h, signal.h)


proc fcQQmlFileSelector_vtable_callback_metaObject(self: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QQmlFileSelectorVTable](fcQQmlFileSelector_vdata(self))
  let self = QQmlFileSelector(h: self)
  var virtualReturn = vtbl[].metaObject(self)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc fcQQmlFileSelector_vtable_callback_metacast(self: pointer, param1: cstring): pointer {.cdecl.} =
  let vtbl = cast[ptr QQmlFileSelectorVTable](fcQQmlFileSelector_vdata(self))
  let self = QQmlFileSelector(h: self)
  let slotval1 = (param1)
  var virtualReturn = vtbl[].metacast(self, slotval1)
  virtualReturn

proc fcQQmlFileSelector_vtable_callback_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.cdecl.} =
  let vtbl = cast[ptr QQmlFileSelectorVTable](fcQQmlFileSelector_vdata(self))
  let self = QQmlFileSelector(h: self)
  let slotval1 = cint(param1)
  let slotval2 = param2
  let slotval3 = param3
  var virtualReturn = vtbl[].metacall(self, slotval1, slotval2, slotval3)
  virtualReturn

proc fcQQmlFileSelector_vtable_callback_event(self: pointer, event: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QQmlFileSelectorVTable](fcQQmlFileSelector_vdata(self))
  let self = QQmlFileSelector(h: self)
  let slotval1 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  var virtualReturn = vtbl[].event(self, slotval1)
  virtualReturn

proc fcQQmlFileSelector_vtable_callback_eventFilter(self: pointer, watched: pointer, event: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QQmlFileSelectorVTable](fcQQmlFileSelector_vdata(self))
  let self = QQmlFileSelector(h: self)
  let slotval1 = gen_qobject_types.QObject(h: watched, owned: false)
  let slotval2 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  var virtualReturn = vtbl[].eventFilter(self, slotval1, slotval2)
  virtualReturn

proc fcQQmlFileSelector_vtable_callback_timerEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QQmlFileSelectorVTable](fcQQmlFileSelector_vdata(self))
  let self = QQmlFileSelector(h: self)
  let slotval1 = gen_qcoreevent_types.QTimerEvent(h: event, owned: false)
  vtbl[].timerEvent(self, slotval1)

proc fcQQmlFileSelector_vtable_callback_childEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QQmlFileSelectorVTable](fcQQmlFileSelector_vdata(self))
  let self = QQmlFileSelector(h: self)
  let slotval1 = gen_qcoreevent_types.QChildEvent(h: event, owned: false)
  vtbl[].childEvent(self, slotval1)

proc fcQQmlFileSelector_vtable_callback_customEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QQmlFileSelectorVTable](fcQQmlFileSelector_vdata(self))
  let self = QQmlFileSelector(h: self)
  let slotval1 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  vtbl[].customEvent(self, slotval1)

proc fcQQmlFileSelector_vtable_callback_connectNotify(self: pointer, signal: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QQmlFileSelectorVTable](fcQQmlFileSelector_vdata(self))
  let self = QQmlFileSelector(h: self)
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal, owned: false)
  vtbl[].connectNotify(self, slotval1)

proc fcQQmlFileSelector_vtable_callback_disconnectNotify(self: pointer, signal: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QQmlFileSelectorVTable](fcQQmlFileSelector_vdata(self))
  let self = QQmlFileSelector(h: self)
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal, owned: false)
  vtbl[].disconnectNotify(self, slotval1)

type VirtualQQmlFileSelector* {.inheritable.} = ref object of QQmlFileSelector
  vtbl*: cQQmlFileSelectorVTable

method metaObject*(self: VirtualQQmlFileSelector): gen_qobjectdefs_types.QMetaObject {.base.} =
  QQmlFileSelectormetaObject(self[])
method metacast*(self: VirtualQQmlFileSelector, param1: cstring): pointer {.base.} =
  QQmlFileSelectormetacast(self[], param1)
method metacall*(self: VirtualQQmlFileSelector, param1: cint, param2: cint, param3: pointer): cint {.base.} =
  QQmlFileSelectormetacall(self[], param1, param2, param3)
method event*(self: VirtualQQmlFileSelector, event: gen_qcoreevent_types.QEvent): bool {.base.} =
  QQmlFileSelectorevent(self[], event)
method eventFilter*(self: VirtualQQmlFileSelector, watched: gen_qobject_types.QObject, event: gen_qcoreevent_types.QEvent): bool {.base.} =
  QQmlFileSelectoreventFilter(self[], watched, event)
method timerEvent*(self: VirtualQQmlFileSelector, event: gen_qcoreevent_types.QTimerEvent): void {.base.} =
  QQmlFileSelectortimerEvent(self[], event)
method childEvent*(self: VirtualQQmlFileSelector, event: gen_qcoreevent_types.QChildEvent): void {.base.} =
  QQmlFileSelectorchildEvent(self[], event)
method customEvent*(self: VirtualQQmlFileSelector, event: gen_qcoreevent_types.QEvent): void {.base.} =
  QQmlFileSelectorcustomEvent(self[], event)
method connectNotify*(self: VirtualQQmlFileSelector, signal: gen_qmetaobject_types.QMetaMethod): void {.base.} =
  QQmlFileSelectorconnectNotify(self[], signal)
method disconnectNotify*(self: VirtualQQmlFileSelector, signal: gen_qmetaobject_types.QMetaMethod): void {.base.} =
  QQmlFileSelectordisconnectNotify(self[], signal)

proc fcQQmlFileSelector_method_callback_metaObject(self: pointer): pointer {.cdecl.} =
  let inst = cast[VirtualQQmlFileSelector](fcQQmlFileSelector_vdata(self))
  var virtualReturn = inst.metaObject()
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc fcQQmlFileSelector_method_callback_metacast(self: pointer, param1: cstring): pointer {.cdecl.} =
  let inst = cast[VirtualQQmlFileSelector](fcQQmlFileSelector_vdata(self))
  let slotval1 = (param1)
  var virtualReturn = inst.metacast(slotval1)
  virtualReturn

proc fcQQmlFileSelector_method_callback_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.cdecl.} =
  let inst = cast[VirtualQQmlFileSelector](fcQQmlFileSelector_vdata(self))
  let slotval1 = cint(param1)
  let slotval2 = param2
  let slotval3 = param3
  var virtualReturn = inst.metacall(slotval1, slotval2, slotval3)
  virtualReturn

proc fcQQmlFileSelector_method_callback_event(self: pointer, event: pointer): bool {.cdecl.} =
  let inst = cast[VirtualQQmlFileSelector](fcQQmlFileSelector_vdata(self))
  let slotval1 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  var virtualReturn = inst.event(slotval1)
  virtualReturn

proc fcQQmlFileSelector_method_callback_eventFilter(self: pointer, watched: pointer, event: pointer): bool {.cdecl.} =
  let inst = cast[VirtualQQmlFileSelector](fcQQmlFileSelector_vdata(self))
  let slotval1 = gen_qobject_types.QObject(h: watched, owned: false)
  let slotval2 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  var virtualReturn = inst.eventFilter(slotval1, slotval2)
  virtualReturn

proc fcQQmlFileSelector_method_callback_timerEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQQmlFileSelector](fcQQmlFileSelector_vdata(self))
  let slotval1 = gen_qcoreevent_types.QTimerEvent(h: event, owned: false)
  inst.timerEvent(slotval1)

proc fcQQmlFileSelector_method_callback_childEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQQmlFileSelector](fcQQmlFileSelector_vdata(self))
  let slotval1 = gen_qcoreevent_types.QChildEvent(h: event, owned: false)
  inst.childEvent(slotval1)

proc fcQQmlFileSelector_method_callback_customEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQQmlFileSelector](fcQQmlFileSelector_vdata(self))
  let slotval1 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  inst.customEvent(slotval1)

proc fcQQmlFileSelector_method_callback_connectNotify(self: pointer, signal: pointer): void {.cdecl.} =
  let inst = cast[VirtualQQmlFileSelector](fcQQmlFileSelector_vdata(self))
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal, owned: false)
  inst.connectNotify(slotval1)

proc fcQQmlFileSelector_method_callback_disconnectNotify(self: pointer, signal: pointer): void {.cdecl.} =
  let inst = cast[VirtualQQmlFileSelector](fcQQmlFileSelector_vdata(self))
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal, owned: false)
  inst.disconnectNotify(slotval1)


proc sender*(self: gen_qqmlfileselector_types.QQmlFileSelector): gen_qobject_types.QObject =
  gen_qobject_types.QObject(h: fcQQmlFileSelector_protectedbase_sender(self.h), owned: false)

proc senderSignalIndex*(self: gen_qqmlfileselector_types.QQmlFileSelector): cint =
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
  vtbl[].vtbl.destructor = proc(self: pointer) {.cdecl.} =
    let vtbl = cast[ref QQmlFileSelectorVTable](fcQQmlFileSelector_vdata(self))
    GC_unref(vtbl)
  if not isNil(vtbl[].metaObject):
    vtbl[].vtbl.metaObject = fcQQmlFileSelector_vtable_callback_metaObject
  if not isNil(vtbl[].metacast):
    vtbl[].vtbl.metacast = fcQQmlFileSelector_vtable_callback_metacast
  if not isNil(vtbl[].metacall):
    vtbl[].vtbl.metacall = fcQQmlFileSelector_vtable_callback_metacall
  if not isNil(vtbl[].event):
    vtbl[].vtbl.event = fcQQmlFileSelector_vtable_callback_event
  if not isNil(vtbl[].eventFilter):
    vtbl[].vtbl.eventFilter = fcQQmlFileSelector_vtable_callback_eventFilter
  if not isNil(vtbl[].timerEvent):
    vtbl[].vtbl.timerEvent = fcQQmlFileSelector_vtable_callback_timerEvent
  if not isNil(vtbl[].childEvent):
    vtbl[].vtbl.childEvent = fcQQmlFileSelector_vtable_callback_childEvent
  if not isNil(vtbl[].customEvent):
    vtbl[].vtbl.customEvent = fcQQmlFileSelector_vtable_callback_customEvent
  if not isNil(vtbl[].connectNotify):
    vtbl[].vtbl.connectNotify = fcQQmlFileSelector_vtable_callback_connectNotify
  if not isNil(vtbl[].disconnectNotify):
    vtbl[].vtbl.disconnectNotify = fcQQmlFileSelector_vtable_callback_disconnectNotify
  gen_qqmlfileselector_types.QQmlFileSelector(h: fcQQmlFileSelector_new(addr(vtbl[].vtbl), addr(vtbl[]), engine.h), owned: true)

proc create*(T: type gen_qqmlfileselector_types.QQmlFileSelector,
    engine: gen_qqmlengine_types.QQmlEngine, parent: gen_qobject_types.QObject,
    vtbl: ref QQmlFileSelectorVTable = nil): gen_qqmlfileselector_types.QQmlFileSelector =
  let vtbl = if vtbl == nil: new QQmlFileSelectorVTable else: vtbl
  GC_ref(vtbl)
  vtbl[].vtbl.destructor = proc(self: pointer) {.cdecl.} =
    let vtbl = cast[ref QQmlFileSelectorVTable](fcQQmlFileSelector_vdata(self))
    GC_unref(vtbl)
  if not isNil(vtbl[].metaObject):
    vtbl[].vtbl.metaObject = fcQQmlFileSelector_vtable_callback_metaObject
  if not isNil(vtbl[].metacast):
    vtbl[].vtbl.metacast = fcQQmlFileSelector_vtable_callback_metacast
  if not isNil(vtbl[].metacall):
    vtbl[].vtbl.metacall = fcQQmlFileSelector_vtable_callback_metacall
  if not isNil(vtbl[].event):
    vtbl[].vtbl.event = fcQQmlFileSelector_vtable_callback_event
  if not isNil(vtbl[].eventFilter):
    vtbl[].vtbl.eventFilter = fcQQmlFileSelector_vtable_callback_eventFilter
  if not isNil(vtbl[].timerEvent):
    vtbl[].vtbl.timerEvent = fcQQmlFileSelector_vtable_callback_timerEvent
  if not isNil(vtbl[].childEvent):
    vtbl[].vtbl.childEvent = fcQQmlFileSelector_vtable_callback_childEvent
  if not isNil(vtbl[].customEvent):
    vtbl[].vtbl.customEvent = fcQQmlFileSelector_vtable_callback_customEvent
  if not isNil(vtbl[].connectNotify):
    vtbl[].vtbl.connectNotify = fcQQmlFileSelector_vtable_callback_connectNotify
  if not isNil(vtbl[].disconnectNotify):
    vtbl[].vtbl.disconnectNotify = fcQQmlFileSelector_vtable_callback_disconnectNotify
  gen_qqmlfileselector_types.QQmlFileSelector(h: fcQQmlFileSelector_new2(addr(vtbl[].vtbl), addr(vtbl[]), engine.h, parent.h), owned: true)

const cQQmlFileSelector_mvtbl = cQQmlFileSelectorVTable(
  destructor: proc(self: pointer) {.cdecl.} =
    let inst = cast[ptr typeof(VirtualQQmlFileSelector()[])](self.fcQQmlFileSelector_vdata())
    inst[].h = nil
    inst[].owned = false,

  metaObject: fcQQmlFileSelector_method_callback_metaObject,
  metacast: fcQQmlFileSelector_method_callback_metacast,
  metacall: fcQQmlFileSelector_method_callback_metacall,
  event: fcQQmlFileSelector_method_callback_event,
  eventFilter: fcQQmlFileSelector_method_callback_eventFilter,
  timerEvent: fcQQmlFileSelector_method_callback_timerEvent,
  childEvent: fcQQmlFileSelector_method_callback_childEvent,
  customEvent: fcQQmlFileSelector_method_callback_customEvent,
  connectNotify: fcQQmlFileSelector_method_callback_connectNotify,
  disconnectNotify: fcQQmlFileSelector_method_callback_disconnectNotify,
)
proc create*(T: type gen_qqmlfileselector_types.QQmlFileSelector,
    engine: gen_qqmlengine_types.QQmlEngine,
    inst: VirtualQQmlFileSelector) =
  if inst[].h != nil: delete(move(inst[]))
  inst[].h = fcQQmlFileSelector_new(addr(cQQmlFileSelector_mvtbl), addr(inst[]), engine.h)
  inst[].owned = true

proc create*(T: type gen_qqmlfileselector_types.QQmlFileSelector,
    engine: gen_qqmlengine_types.QQmlEngine, parent: gen_qobject_types.QObject,
    inst: VirtualQQmlFileSelector) =
  if inst[].h != nil: delete(move(inst[]))
  inst[].h = fcQQmlFileSelector_new2(addr(cQQmlFileSelector_mvtbl), addr(inst[]), engine.h, parent.h)
  inst[].owned = true

proc staticMetaObject*(_: type gen_qqmlfileselector_types.QQmlFileSelector): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQQmlFileSelector_staticMetaObject())
