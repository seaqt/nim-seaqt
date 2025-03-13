import ./Qt6Core_libs

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

const cflags = gorge("pkg-config --cflags Qt6Core") & " -fPIC"
{.compile("gen_qfileselector.cpp", cflags).}


import ./gen_qfileselector_types
export gen_qfileselector_types

import
  ./gen_qcoreevent_types,
  ./gen_qmetaobject_types,
  ./gen_qobject,
  ./gen_qobjectdefs_types,
  ./gen_qurl_types
export
  gen_qcoreevent_types,
  gen_qmetaobject_types,
  gen_qobject,
  gen_qobjectdefs_types,
  gen_qurl_types

type cQFileSelector*{.exportc: "QFileSelector", incompleteStruct.} = object

proc fcQFileSelector_metaObject(self: pointer): pointer {.importc: "QFileSelector_metaObject".}
proc fcQFileSelector_metacast(self: pointer, param1: cstring): pointer {.importc: "QFileSelector_metacast".}
proc fcQFileSelector_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.importc: "QFileSelector_metacall".}
proc fcQFileSelector_tr(s: cstring): struct_miqt_string {.importc: "QFileSelector_tr".}
proc fcQFileSelector_select(self: pointer, filePath: struct_miqt_string): struct_miqt_string {.importc: "QFileSelector_select".}
proc fcQFileSelector_selectWithFilePath(self: pointer, filePath: pointer): pointer {.importc: "QFileSelector_selectWithFilePath".}
proc fcQFileSelector_extraSelectors(self: pointer): struct_miqt_array {.importc: "QFileSelector_extraSelectors".}
proc fcQFileSelector_setExtraSelectors(self: pointer, list: struct_miqt_array): void {.importc: "QFileSelector_setExtraSelectors".}
proc fcQFileSelector_allSelectors(self: pointer): struct_miqt_array {.importc: "QFileSelector_allSelectors".}
proc fcQFileSelector_tr2(s: cstring, c: cstring): struct_miqt_string {.importc: "QFileSelector_tr2".}
proc fcQFileSelector_tr3(s: cstring, c: cstring, n: cint): struct_miqt_string {.importc: "QFileSelector_tr3".}
proc fcQFileSelector_vtbl(self: pointer): pointer {.importc: "QFileSelector_vtbl".}
proc fcQFileSelector_vdata(self: pointer): pointer {.importc: "QFileSelector_vdata".}
type cQFileSelectorVTable {.pure.} = object
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
proc fcQFileSelector_virtualbase_metaObject(self: pointer): pointer {.importc: "QFileSelector_virtualbase_metaObject".}
proc fcQFileSelector_virtualbase_metacast(self: pointer, param1: cstring): pointer {.importc: "QFileSelector_virtualbase_metacast".}
proc fcQFileSelector_virtualbase_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.importc: "QFileSelector_virtualbase_metacall".}
proc fcQFileSelector_virtualbase_event(self: pointer, event: pointer): bool {.importc: "QFileSelector_virtualbase_event".}
proc fcQFileSelector_virtualbase_eventFilter(self: pointer, watched: pointer, event: pointer): bool {.importc: "QFileSelector_virtualbase_eventFilter".}
proc fcQFileSelector_virtualbase_timerEvent(self: pointer, event: pointer): void {.importc: "QFileSelector_virtualbase_timerEvent".}
proc fcQFileSelector_virtualbase_childEvent(self: pointer, event: pointer): void {.importc: "QFileSelector_virtualbase_childEvent".}
proc fcQFileSelector_virtualbase_customEvent(self: pointer, event: pointer): void {.importc: "QFileSelector_virtualbase_customEvent".}
proc fcQFileSelector_virtualbase_connectNotify(self: pointer, signal: pointer): void {.importc: "QFileSelector_virtualbase_connectNotify".}
proc fcQFileSelector_virtualbase_disconnectNotify(self: pointer, signal: pointer): void {.importc: "QFileSelector_virtualbase_disconnectNotify".}
proc fcQFileSelector_protectedbase_sender(self: pointer): pointer {.importc: "QFileSelector_protectedbase_sender".}
proc fcQFileSelector_protectedbase_senderSignalIndex(self: pointer): cint {.importc: "QFileSelector_protectedbase_senderSignalIndex".}
proc fcQFileSelector_protectedbase_receivers(self: pointer, signal: cstring): cint {.importc: "QFileSelector_protectedbase_receivers".}
proc fcQFileSelector_protectedbase_isSignalConnected(self: pointer, signal: pointer): bool {.importc: "QFileSelector_protectedbase_isSignalConnected".}
proc fcQFileSelector_new(vtbl, vdata: pointer): ptr cQFileSelector {.importc: "QFileSelector_new".}
proc fcQFileSelector_new2(vtbl, vdata: pointer, parent: pointer): ptr cQFileSelector {.importc: "QFileSelector_new2".}
proc fcQFileSelector_staticMetaObject(): pointer {.importc: "QFileSelector_staticMetaObject".}

proc metaObject*(self: gen_qfileselector_types.QFileSelector): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQFileSelector_metaObject(self.h), owned: false)

proc metacast*(self: gen_qfileselector_types.QFileSelector, param1: cstring): pointer =
  fcQFileSelector_metacast(self.h, param1)

proc metacall*(self: gen_qfileselector_types.QFileSelector, param1: cint, param2: cint, param3: pointer): cint =
  fcQFileSelector_metacall(self.h, cint(param1), param2, param3)

proc tr*(_: type gen_qfileselector_types.QFileSelector, s: cstring): string =
  let v_ms = fcQFileSelector_tr(s)
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

proc select*(self: gen_qfileselector_types.QFileSelector, filePath: openArray[char]): string =
  let v_ms = fcQFileSelector_select(self.h, struct_miqt_string(data: if len(filePath) > 0: addr filePath[0] else: nil, len: csize_t(len(filePath))))
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

proc select*(self: gen_qfileselector_types.QFileSelector, filePath: gen_qurl_types.QUrl): gen_qurl_types.QUrl =
  gen_qurl_types.QUrl(h: fcQFileSelector_selectWithFilePath(self.h, filePath.h), owned: true)

proc extraSelectors*(self: gen_qfileselector_types.QFileSelector): seq[string] =
  var v_ma = fcQFileSelector_extraSelectors(self.h)
  var vx_ret = newSeq[string](int(v_ma.len))
  let v_outCast = cast[ptr UncheckedArray[struct_miqt_string]](v_ma.data)
  for i in 0 ..< v_ma.len:
    let vx_lv_ms = v_outCast[i]
    let vx_lvx_ret = string.fromBytes(vx_lv_ms)
    c_free(vx_lv_ms.data)
    vx_ret[i] = vx_lvx_ret
  c_free(v_ma.data)
  vx_ret

proc setExtraSelectors*(self: gen_qfileselector_types.QFileSelector, list: openArray[string]): void =
  var list_CArray = newSeq[struct_miqt_string](len(list))
  for i in 0..<len(list):
    list_CArray[i] = struct_miqt_string(data: if len(list[i]) > 0: addr list[i][0] else: nil, len: csize_t(len(list[i])))

  fcQFileSelector_setExtraSelectors(self.h, struct_miqt_array(len: csize_t(len(list)), data: if len(list) == 0: nil else: addr(list_CArray[0])))

proc allSelectors*(self: gen_qfileselector_types.QFileSelector): seq[string] =
  var v_ma = fcQFileSelector_allSelectors(self.h)
  var vx_ret = newSeq[string](int(v_ma.len))
  let v_outCast = cast[ptr UncheckedArray[struct_miqt_string]](v_ma.data)
  for i in 0 ..< v_ma.len:
    let vx_lv_ms = v_outCast[i]
    let vx_lvx_ret = string.fromBytes(vx_lv_ms)
    c_free(vx_lv_ms.data)
    vx_ret[i] = vx_lvx_ret
  c_free(v_ma.data)
  vx_ret

proc tr*(_: type gen_qfileselector_types.QFileSelector, s: cstring, c: cstring): string =
  let v_ms = fcQFileSelector_tr2(s, c)
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

proc tr*(_: type gen_qfileselector_types.QFileSelector, s: cstring, c: cstring, n: cint): string =
  let v_ms = fcQFileSelector_tr3(s, c, n)
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

type QFileSelectormetaObjectProc* = proc(self: QFileSelector): gen_qobjectdefs_types.QMetaObject {.raises: [], gcsafe.}
type QFileSelectormetacastProc* = proc(self: QFileSelector, param1: cstring): pointer {.raises: [], gcsafe.}
type QFileSelectormetacallProc* = proc(self: QFileSelector, param1: cint, param2: cint, param3: pointer): cint {.raises: [], gcsafe.}
type QFileSelectoreventProc* = proc(self: QFileSelector, event: gen_qcoreevent_types.QEvent): bool {.raises: [], gcsafe.}
type QFileSelectoreventFilterProc* = proc(self: QFileSelector, watched: gen_qobject_types.QObject, event: gen_qcoreevent_types.QEvent): bool {.raises: [], gcsafe.}
type QFileSelectortimerEventProc* = proc(self: QFileSelector, event: gen_qcoreevent_types.QTimerEvent): void {.raises: [], gcsafe.}
type QFileSelectorchildEventProc* = proc(self: QFileSelector, event: gen_qcoreevent_types.QChildEvent): void {.raises: [], gcsafe.}
type QFileSelectorcustomEventProc* = proc(self: QFileSelector, event: gen_qcoreevent_types.QEvent): void {.raises: [], gcsafe.}
type QFileSelectorconnectNotifyProc* = proc(self: QFileSelector, signal: gen_qmetaobject_types.QMetaMethod): void {.raises: [], gcsafe.}
type QFileSelectordisconnectNotifyProc* = proc(self: QFileSelector, signal: gen_qmetaobject_types.QMetaMethod): void {.raises: [], gcsafe.}
type QFileSelectorVTable* {.inheritable, pure.} = object
  vtbl: cQFileSelectorVTable
  metaObject*: QFileSelectormetaObjectProc
  metacast*: QFileSelectormetacastProc
  metacall*: QFileSelectormetacallProc
  event*: QFileSelectoreventProc
  eventFilter*: QFileSelectoreventFilterProc
  timerEvent*: QFileSelectortimerEventProc
  childEvent*: QFileSelectorchildEventProc
  customEvent*: QFileSelectorcustomEventProc
  connectNotify*: QFileSelectorconnectNotifyProc
  disconnectNotify*: QFileSelectordisconnectNotifyProc
proc QFileSelectormetaObject*(self: gen_qfileselector_types.QFileSelector): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQFileSelector_virtualbase_metaObject(self.h), owned: false)

proc cQFileSelector_vtable_callback_metaObject(self: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QFileSelectorVTable](fcQFileSelector_vdata(self))
  let self = QFileSelector(h: self)
  var virtualReturn = vtbl[].metaObject(self)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc QFileSelectormetacast*(self: gen_qfileselector_types.QFileSelector, param1: cstring): pointer =
  fcQFileSelector_virtualbase_metacast(self.h, param1)

proc cQFileSelector_vtable_callback_metacast(self: pointer, param1: cstring): pointer {.cdecl.} =
  let vtbl = cast[ptr QFileSelectorVTable](fcQFileSelector_vdata(self))
  let self = QFileSelector(h: self)
  let slotval1 = (param1)
  var virtualReturn = vtbl[].metacast(self, slotval1)
  virtualReturn

proc QFileSelectormetacall*(self: gen_qfileselector_types.QFileSelector, param1: cint, param2: cint, param3: pointer): cint =
  fcQFileSelector_virtualbase_metacall(self.h, cint(param1), param2, param3)

proc cQFileSelector_vtable_callback_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.cdecl.} =
  let vtbl = cast[ptr QFileSelectorVTable](fcQFileSelector_vdata(self))
  let self = QFileSelector(h: self)
  let slotval1 = cint(param1)
  let slotval2 = param2
  let slotval3 = param3
  var virtualReturn = vtbl[].metacall(self, slotval1, slotval2, slotval3)
  virtualReturn

proc QFileSelectorevent*(self: gen_qfileselector_types.QFileSelector, event: gen_qcoreevent_types.QEvent): bool =
  fcQFileSelector_virtualbase_event(self.h, event.h)

proc cQFileSelector_vtable_callback_event(self: pointer, event: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QFileSelectorVTable](fcQFileSelector_vdata(self))
  let self = QFileSelector(h: self)
  let slotval1 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  var virtualReturn = vtbl[].event(self, slotval1)
  virtualReturn

proc QFileSelectoreventFilter*(self: gen_qfileselector_types.QFileSelector, watched: gen_qobject_types.QObject, event: gen_qcoreevent_types.QEvent): bool =
  fcQFileSelector_virtualbase_eventFilter(self.h, watched.h, event.h)

proc cQFileSelector_vtable_callback_eventFilter(self: pointer, watched: pointer, event: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QFileSelectorVTable](fcQFileSelector_vdata(self))
  let self = QFileSelector(h: self)
  let slotval1 = gen_qobject_types.QObject(h: watched, owned: false)
  let slotval2 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  var virtualReturn = vtbl[].eventFilter(self, slotval1, slotval2)
  virtualReturn

proc QFileSelectortimerEvent*(self: gen_qfileselector_types.QFileSelector, event: gen_qcoreevent_types.QTimerEvent): void =
  fcQFileSelector_virtualbase_timerEvent(self.h, event.h)

proc cQFileSelector_vtable_callback_timerEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QFileSelectorVTable](fcQFileSelector_vdata(self))
  let self = QFileSelector(h: self)
  let slotval1 = gen_qcoreevent_types.QTimerEvent(h: event, owned: false)
  vtbl[].timerEvent(self, slotval1)

proc QFileSelectorchildEvent*(self: gen_qfileselector_types.QFileSelector, event: gen_qcoreevent_types.QChildEvent): void =
  fcQFileSelector_virtualbase_childEvent(self.h, event.h)

proc cQFileSelector_vtable_callback_childEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QFileSelectorVTable](fcQFileSelector_vdata(self))
  let self = QFileSelector(h: self)
  let slotval1 = gen_qcoreevent_types.QChildEvent(h: event, owned: false)
  vtbl[].childEvent(self, slotval1)

proc QFileSelectorcustomEvent*(self: gen_qfileselector_types.QFileSelector, event: gen_qcoreevent_types.QEvent): void =
  fcQFileSelector_virtualbase_customEvent(self.h, event.h)

proc cQFileSelector_vtable_callback_customEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QFileSelectorVTable](fcQFileSelector_vdata(self))
  let self = QFileSelector(h: self)
  let slotval1 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  vtbl[].customEvent(self, slotval1)

proc QFileSelectorconnectNotify*(self: gen_qfileselector_types.QFileSelector, signal: gen_qmetaobject_types.QMetaMethod): void =
  fcQFileSelector_virtualbase_connectNotify(self.h, signal.h)

proc cQFileSelector_vtable_callback_connectNotify(self: pointer, signal: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QFileSelectorVTable](fcQFileSelector_vdata(self))
  let self = QFileSelector(h: self)
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal, owned: false)
  vtbl[].connectNotify(self, slotval1)

proc QFileSelectordisconnectNotify*(self: gen_qfileselector_types.QFileSelector, signal: gen_qmetaobject_types.QMetaMethod): void =
  fcQFileSelector_virtualbase_disconnectNotify(self.h, signal.h)

proc cQFileSelector_vtable_callback_disconnectNotify(self: pointer, signal: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QFileSelectorVTable](fcQFileSelector_vdata(self))
  let self = QFileSelector(h: self)
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal, owned: false)
  vtbl[].disconnectNotify(self, slotval1)

type VirtualQFileSelector* {.inheritable.} = ref object of QFileSelector
  vtbl*: cQFileSelectorVTable
method metaObject*(self: VirtualQFileSelector): gen_qobjectdefs_types.QMetaObject {.base.} =
  QFileSelectormetaObject(self[])
proc cQFileSelector_method_callback_metaObject(self: pointer): pointer {.cdecl.} =
  let inst = cast[VirtualQFileSelector](fcQFileSelector_vdata(self))
  var virtualReturn = inst.metaObject()
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

method metacast*(self: VirtualQFileSelector, param1: cstring): pointer {.base.} =
  QFileSelectormetacast(self[], param1)
proc cQFileSelector_method_callback_metacast(self: pointer, param1: cstring): pointer {.cdecl.} =
  let inst = cast[VirtualQFileSelector](fcQFileSelector_vdata(self))
  let slotval1 = (param1)
  var virtualReturn = inst.metacast(slotval1)
  virtualReturn

method metacall*(self: VirtualQFileSelector, param1: cint, param2: cint, param3: pointer): cint {.base.} =
  QFileSelectormetacall(self[], param1, param2, param3)
proc cQFileSelector_method_callback_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.cdecl.} =
  let inst = cast[VirtualQFileSelector](fcQFileSelector_vdata(self))
  let slotval1 = cint(param1)
  let slotval2 = param2
  let slotval3 = param3
  var virtualReturn = inst.metacall(slotval1, slotval2, slotval3)
  virtualReturn

method event*(self: VirtualQFileSelector, event: gen_qcoreevent_types.QEvent): bool {.base.} =
  QFileSelectorevent(self[], event)
proc cQFileSelector_method_callback_event(self: pointer, event: pointer): bool {.cdecl.} =
  let inst = cast[VirtualQFileSelector](fcQFileSelector_vdata(self))
  let slotval1 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  var virtualReturn = inst.event(slotval1)
  virtualReturn

method eventFilter*(self: VirtualQFileSelector, watched: gen_qobject_types.QObject, event: gen_qcoreevent_types.QEvent): bool {.base.} =
  QFileSelectoreventFilter(self[], watched, event)
proc cQFileSelector_method_callback_eventFilter(self: pointer, watched: pointer, event: pointer): bool {.cdecl.} =
  let inst = cast[VirtualQFileSelector](fcQFileSelector_vdata(self))
  let slotval1 = gen_qobject_types.QObject(h: watched, owned: false)
  let slotval2 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  var virtualReturn = inst.eventFilter(slotval1, slotval2)
  virtualReturn

method timerEvent*(self: VirtualQFileSelector, event: gen_qcoreevent_types.QTimerEvent): void {.base.} =
  QFileSelectortimerEvent(self[], event)
proc cQFileSelector_method_callback_timerEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQFileSelector](fcQFileSelector_vdata(self))
  let slotval1 = gen_qcoreevent_types.QTimerEvent(h: event, owned: false)
  inst.timerEvent(slotval1)

method childEvent*(self: VirtualQFileSelector, event: gen_qcoreevent_types.QChildEvent): void {.base.} =
  QFileSelectorchildEvent(self[], event)
proc cQFileSelector_method_callback_childEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQFileSelector](fcQFileSelector_vdata(self))
  let slotval1 = gen_qcoreevent_types.QChildEvent(h: event, owned: false)
  inst.childEvent(slotval1)

method customEvent*(self: VirtualQFileSelector, event: gen_qcoreevent_types.QEvent): void {.base.} =
  QFileSelectorcustomEvent(self[], event)
proc cQFileSelector_method_callback_customEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQFileSelector](fcQFileSelector_vdata(self))
  let slotval1 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  inst.customEvent(slotval1)

method connectNotify*(self: VirtualQFileSelector, signal: gen_qmetaobject_types.QMetaMethod): void {.base.} =
  QFileSelectorconnectNotify(self[], signal)
proc cQFileSelector_method_callback_connectNotify(self: pointer, signal: pointer): void {.cdecl.} =
  let inst = cast[VirtualQFileSelector](fcQFileSelector_vdata(self))
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal, owned: false)
  inst.connectNotify(slotval1)

method disconnectNotify*(self: VirtualQFileSelector, signal: gen_qmetaobject_types.QMetaMethod): void {.base.} =
  QFileSelectordisconnectNotify(self[], signal)
proc cQFileSelector_method_callback_disconnectNotify(self: pointer, signal: pointer): void {.cdecl.} =
  let inst = cast[VirtualQFileSelector](fcQFileSelector_vdata(self))
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal, owned: false)
  inst.disconnectNotify(slotval1)

proc sender*(self: gen_qfileselector_types.QFileSelector): gen_qobject_types.QObject =
  gen_qobject_types.QObject(h: fcQFileSelector_protectedbase_sender(self.h), owned: false)

proc senderSignalIndex*(self: gen_qfileselector_types.QFileSelector): cint =
  fcQFileSelector_protectedbase_senderSignalIndex(self.h)

proc receivers*(self: gen_qfileselector_types.QFileSelector, signal: cstring): cint =
  fcQFileSelector_protectedbase_receivers(self.h, signal)

proc isSignalConnected*(self: gen_qfileselector_types.QFileSelector, signal: gen_qmetaobject_types.QMetaMethod): bool =
  fcQFileSelector_protectedbase_isSignalConnected(self.h, signal.h)

proc create*(T: type gen_qfileselector_types.QFileSelector,
    vtbl: ref QFileSelectorVTable = nil): gen_qfileselector_types.QFileSelector =
  let vtbl = if vtbl == nil: new QFileSelectorVTable else: vtbl
  GC_ref(vtbl)
  vtbl[].vtbl.destructor = proc(self: pointer) {.cdecl.} =
    let vtbl = cast[ref QFileSelectorVTable](fcQFileSelector_vdata(self))
    GC_unref(vtbl)
  if not isNil(vtbl[].metaObject):
    vtbl[].vtbl.metaObject = cQFileSelector_vtable_callback_metaObject
  if not isNil(vtbl[].metacast):
    vtbl[].vtbl.metacast = cQFileSelector_vtable_callback_metacast
  if not isNil(vtbl[].metacall):
    vtbl[].vtbl.metacall = cQFileSelector_vtable_callback_metacall
  if not isNil(vtbl[].event):
    vtbl[].vtbl.event = cQFileSelector_vtable_callback_event
  if not isNil(vtbl[].eventFilter):
    vtbl[].vtbl.eventFilter = cQFileSelector_vtable_callback_eventFilter
  if not isNil(vtbl[].timerEvent):
    vtbl[].vtbl.timerEvent = cQFileSelector_vtable_callback_timerEvent
  if not isNil(vtbl[].childEvent):
    vtbl[].vtbl.childEvent = cQFileSelector_vtable_callback_childEvent
  if not isNil(vtbl[].customEvent):
    vtbl[].vtbl.customEvent = cQFileSelector_vtable_callback_customEvent
  if not isNil(vtbl[].connectNotify):
    vtbl[].vtbl.connectNotify = cQFileSelector_vtable_callback_connectNotify
  if not isNil(vtbl[].disconnectNotify):
    vtbl[].vtbl.disconnectNotify = cQFileSelector_vtable_callback_disconnectNotify
  gen_qfileselector_types.QFileSelector(h: fcQFileSelector_new(addr(vtbl[].vtbl), addr(vtbl[])), owned: true)

proc create*(T: type gen_qfileselector_types.QFileSelector,
    parent: gen_qobject_types.QObject,
    vtbl: ref QFileSelectorVTable = nil): gen_qfileselector_types.QFileSelector =
  let vtbl = if vtbl == nil: new QFileSelectorVTable else: vtbl
  GC_ref(vtbl)
  vtbl[].vtbl.destructor = proc(self: pointer) {.cdecl.} =
    let vtbl = cast[ref QFileSelectorVTable](fcQFileSelector_vdata(self))
    GC_unref(vtbl)
  if not isNil(vtbl[].metaObject):
    vtbl[].vtbl.metaObject = cQFileSelector_vtable_callback_metaObject
  if not isNil(vtbl[].metacast):
    vtbl[].vtbl.metacast = cQFileSelector_vtable_callback_metacast
  if not isNil(vtbl[].metacall):
    vtbl[].vtbl.metacall = cQFileSelector_vtable_callback_metacall
  if not isNil(vtbl[].event):
    vtbl[].vtbl.event = cQFileSelector_vtable_callback_event
  if not isNil(vtbl[].eventFilter):
    vtbl[].vtbl.eventFilter = cQFileSelector_vtable_callback_eventFilter
  if not isNil(vtbl[].timerEvent):
    vtbl[].vtbl.timerEvent = cQFileSelector_vtable_callback_timerEvent
  if not isNil(vtbl[].childEvent):
    vtbl[].vtbl.childEvent = cQFileSelector_vtable_callback_childEvent
  if not isNil(vtbl[].customEvent):
    vtbl[].vtbl.customEvent = cQFileSelector_vtable_callback_customEvent
  if not isNil(vtbl[].connectNotify):
    vtbl[].vtbl.connectNotify = cQFileSelector_vtable_callback_connectNotify
  if not isNil(vtbl[].disconnectNotify):
    vtbl[].vtbl.disconnectNotify = cQFileSelector_vtable_callback_disconnectNotify
  gen_qfileselector_types.QFileSelector(h: fcQFileSelector_new2(addr(vtbl[].vtbl), addr(vtbl[]), parent.h), owned: true)

const cQFileSelector_mvtbl = cQFileSelectorVTable(
  destructor: proc(self: pointer) {.cdecl.} =
    let inst = cast[ptr typeof(VirtualQFileSelector()[])](self.fcQFileSelector_vtbl())
    inst[].h = nil
    inst[].owned = false,
  metaObject: cQFileSelector_method_callback_metaObject,
  metacast: cQFileSelector_method_callback_metacast,
  metacall: cQFileSelector_method_callback_metacall,
  event: cQFileSelector_method_callback_event,
  eventFilter: cQFileSelector_method_callback_eventFilter,
  timerEvent: cQFileSelector_method_callback_timerEvent,
  childEvent: cQFileSelector_method_callback_childEvent,
  customEvent: cQFileSelector_method_callback_customEvent,
  connectNotify: cQFileSelector_method_callback_connectNotify,
  disconnectNotify: cQFileSelector_method_callback_disconnectNotify,
)
proc create*(T: type gen_qfileselector_types.QFileSelector,
    inst: VirtualQFileSelector) =
  if inst[].h != nil: delete(move(inst[]))
  inst[].h = fcQFileSelector_new(addr(cQFileSelector_mvtbl), addr(inst[]))
  inst[].owned = true

proc create*(T: type gen_qfileselector_types.QFileSelector,
    parent: gen_qobject_types.QObject,
    inst: VirtualQFileSelector) =
  if inst[].h != nil: delete(move(inst[]))
  inst[].h = fcQFileSelector_new2(addr(cQFileSelector_mvtbl), addr(inst[]), parent.h)
  inst[].owned = true

proc staticMetaObject*(_: type gen_qfileselector_types.QFileSelector): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQFileSelector_staticMetaObject())
