import ./qtquick_pkg

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


{.compile("gen_qquicktextdocument.cpp", QtQuickCFlags).}


import ./gen_qquicktextdocument_types
export gen_qquicktextdocument_types

import
  ../QtCore/gen_qcoreevent_types,
  ../QtCore/gen_qmetaobject_types,
  ../QtCore/gen_qobject,
  ../QtCore/gen_qobjectdefs_types,
  ../QtGui/gen_qtextdocument_types,
  ./gen_qquickitem_types
export
  gen_qcoreevent_types,
  gen_qmetaobject_types,
  gen_qobject,
  gen_qobjectdefs_types,
  gen_qtextdocument_types,
  gen_qquickitem_types

type cQQuickTextDocument*{.exportc: "QQuickTextDocument", incompleteStruct.} = object

proc fcQQuickTextDocument_metaObject(self: pointer): pointer {.importc: "QQuickTextDocument_metaObject".}
proc fcQQuickTextDocument_metacast(self: pointer, param1: cstring): pointer {.importc: "QQuickTextDocument_metacast".}
proc fcQQuickTextDocument_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.importc: "QQuickTextDocument_metacall".}
proc fcQQuickTextDocument_tr(s: cstring): struct_miqt_string {.importc: "QQuickTextDocument_tr".}
proc fcQQuickTextDocument_trUtf8(s: cstring): struct_miqt_string {.importc: "QQuickTextDocument_trUtf8".}
proc fcQQuickTextDocument_textDocument(self: pointer): pointer {.importc: "QQuickTextDocument_textDocument".}
proc fcQQuickTextDocument_tr2(s: cstring, c: cstring): struct_miqt_string {.importc: "QQuickTextDocument_tr2".}
proc fcQQuickTextDocument_tr3(s: cstring, c: cstring, n: cint): struct_miqt_string {.importc: "QQuickTextDocument_tr3".}
proc fcQQuickTextDocument_trUtf82(s: cstring, c: cstring): struct_miqt_string {.importc: "QQuickTextDocument_trUtf82".}
proc fcQQuickTextDocument_trUtf83(s: cstring, c: cstring, n: cint): struct_miqt_string {.importc: "QQuickTextDocument_trUtf83".}
proc fcQQuickTextDocument_vtbl(self: pointer): pointer {.importc: "QQuickTextDocument_vtbl".}
proc fcQQuickTextDocument_vdata(self: pointer): pointer {.importc: "QQuickTextDocument_vdata".}
type cQQuickTextDocumentVTable {.pure.} = object
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
proc fcQQuickTextDocument_virtualbase_metaObject(self: pointer): pointer {.importc: "QQuickTextDocument_virtualbase_metaObject".}
proc fcQQuickTextDocument_virtualbase_metacast(self: pointer, param1: cstring): pointer {.importc: "QQuickTextDocument_virtualbase_metacast".}
proc fcQQuickTextDocument_virtualbase_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.importc: "QQuickTextDocument_virtualbase_metacall".}
proc fcQQuickTextDocument_virtualbase_event(self: pointer, event: pointer): bool {.importc: "QQuickTextDocument_virtualbase_event".}
proc fcQQuickTextDocument_virtualbase_eventFilter(self: pointer, watched: pointer, event: pointer): bool {.importc: "QQuickTextDocument_virtualbase_eventFilter".}
proc fcQQuickTextDocument_virtualbase_timerEvent(self: pointer, event: pointer): void {.importc: "QQuickTextDocument_virtualbase_timerEvent".}
proc fcQQuickTextDocument_virtualbase_childEvent(self: pointer, event: pointer): void {.importc: "QQuickTextDocument_virtualbase_childEvent".}
proc fcQQuickTextDocument_virtualbase_customEvent(self: pointer, event: pointer): void {.importc: "QQuickTextDocument_virtualbase_customEvent".}
proc fcQQuickTextDocument_virtualbase_connectNotify(self: pointer, signal: pointer): void {.importc: "QQuickTextDocument_virtualbase_connectNotify".}
proc fcQQuickTextDocument_virtualbase_disconnectNotify(self: pointer, signal: pointer): void {.importc: "QQuickTextDocument_virtualbase_disconnectNotify".}
proc fcQQuickTextDocument_protectedbase_sender(self: pointer): pointer {.importc: "QQuickTextDocument_protectedbase_sender".}
proc fcQQuickTextDocument_protectedbase_senderSignalIndex(self: pointer): cint {.importc: "QQuickTextDocument_protectedbase_senderSignalIndex".}
proc fcQQuickTextDocument_protectedbase_receivers(self: pointer, signal: cstring): cint {.importc: "QQuickTextDocument_protectedbase_receivers".}
proc fcQQuickTextDocument_protectedbase_isSignalConnected(self: pointer, signal: pointer): bool {.importc: "QQuickTextDocument_protectedbase_isSignalConnected".}
proc fcQQuickTextDocument_new(vtbl, vdata: pointer, parent: pointer): ptr cQQuickTextDocument {.importc: "QQuickTextDocument_new".}
proc fcQQuickTextDocument_staticMetaObject(): pointer {.importc: "QQuickTextDocument_staticMetaObject".}

proc metaObject*(self: gen_qquicktextdocument_types.QQuickTextDocument): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQQuickTextDocument_metaObject(self.h), owned: false)

proc metacast*(self: gen_qquicktextdocument_types.QQuickTextDocument, param1: cstring): pointer =
  fcQQuickTextDocument_metacast(self.h, param1)

proc metacall*(self: gen_qquicktextdocument_types.QQuickTextDocument, param1: cint, param2: cint, param3: pointer): cint =
  fcQQuickTextDocument_metacall(self.h, cint(param1), param2, param3)

proc tr*(_: type gen_qquicktextdocument_types.QQuickTextDocument, s: cstring): string =
  let v_ms = fcQQuickTextDocument_tr(s)
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

proc trUtf8*(_: type gen_qquicktextdocument_types.QQuickTextDocument, s: cstring): string =
  let v_ms = fcQQuickTextDocument_trUtf8(s)
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

proc textDocument*(self: gen_qquicktextdocument_types.QQuickTextDocument): gen_qtextdocument_types.QTextDocument =
  gen_qtextdocument_types.QTextDocument(h: fcQQuickTextDocument_textDocument(self.h), owned: false)

proc tr*(_: type gen_qquicktextdocument_types.QQuickTextDocument, s: cstring, c: cstring): string =
  let v_ms = fcQQuickTextDocument_tr2(s, c)
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

proc tr*(_: type gen_qquicktextdocument_types.QQuickTextDocument, s: cstring, c: cstring, n: cint): string =
  let v_ms = fcQQuickTextDocument_tr3(s, c, n)
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

proc trUtf8*(_: type gen_qquicktextdocument_types.QQuickTextDocument, s: cstring, c: cstring): string =
  let v_ms = fcQQuickTextDocument_trUtf82(s, c)
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

proc trUtf8*(_: type gen_qquicktextdocument_types.QQuickTextDocument, s: cstring, c: cstring, n: cint): string =
  let v_ms = fcQQuickTextDocument_trUtf83(s, c, n)
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

type QQuickTextDocumentmetaObjectProc* = proc(self: QQuickTextDocument): gen_qobjectdefs_types.QMetaObject {.raises: [], gcsafe.}
type QQuickTextDocumentmetacastProc* = proc(self: QQuickTextDocument, param1: cstring): pointer {.raises: [], gcsafe.}
type QQuickTextDocumentmetacallProc* = proc(self: QQuickTextDocument, param1: cint, param2: cint, param3: pointer): cint {.raises: [], gcsafe.}
type QQuickTextDocumenteventProc* = proc(self: QQuickTextDocument, event: gen_qcoreevent_types.QEvent): bool {.raises: [], gcsafe.}
type QQuickTextDocumenteventFilterProc* = proc(self: QQuickTextDocument, watched: gen_qobject_types.QObject, event: gen_qcoreevent_types.QEvent): bool {.raises: [], gcsafe.}
type QQuickTextDocumenttimerEventProc* = proc(self: QQuickTextDocument, event: gen_qcoreevent_types.QTimerEvent): void {.raises: [], gcsafe.}
type QQuickTextDocumentchildEventProc* = proc(self: QQuickTextDocument, event: gen_qcoreevent_types.QChildEvent): void {.raises: [], gcsafe.}
type QQuickTextDocumentcustomEventProc* = proc(self: QQuickTextDocument, event: gen_qcoreevent_types.QEvent): void {.raises: [], gcsafe.}
type QQuickTextDocumentconnectNotifyProc* = proc(self: QQuickTextDocument, signal: gen_qmetaobject_types.QMetaMethod): void {.raises: [], gcsafe.}
type QQuickTextDocumentdisconnectNotifyProc* = proc(self: QQuickTextDocument, signal: gen_qmetaobject_types.QMetaMethod): void {.raises: [], gcsafe.}
type QQuickTextDocumentVTable* {.inheritable, pure.} = object
  vtbl: cQQuickTextDocumentVTable
  metaObject*: QQuickTextDocumentmetaObjectProc
  metacast*: QQuickTextDocumentmetacastProc
  metacall*: QQuickTextDocumentmetacallProc
  event*: QQuickTextDocumenteventProc
  eventFilter*: QQuickTextDocumenteventFilterProc
  timerEvent*: QQuickTextDocumenttimerEventProc
  childEvent*: QQuickTextDocumentchildEventProc
  customEvent*: QQuickTextDocumentcustomEventProc
  connectNotify*: QQuickTextDocumentconnectNotifyProc
  disconnectNotify*: QQuickTextDocumentdisconnectNotifyProc
proc QQuickTextDocumentmetaObject*(self: gen_qquicktextdocument_types.QQuickTextDocument): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQQuickTextDocument_virtualbase_metaObject(self.h), owned: false)

proc cQQuickTextDocument_vtable_callback_metaObject(self: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QQuickTextDocumentVTable](fcQQuickTextDocument_vdata(self))
  let self = QQuickTextDocument(h: self)
  var virtualReturn = vtbl[].metaObject(self)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc QQuickTextDocumentmetacast*(self: gen_qquicktextdocument_types.QQuickTextDocument, param1: cstring): pointer =
  fcQQuickTextDocument_virtualbase_metacast(self.h, param1)

proc cQQuickTextDocument_vtable_callback_metacast(self: pointer, param1: cstring): pointer {.cdecl.} =
  let vtbl = cast[ptr QQuickTextDocumentVTable](fcQQuickTextDocument_vdata(self))
  let self = QQuickTextDocument(h: self)
  let slotval1 = (param1)
  var virtualReturn = vtbl[].metacast(self, slotval1)
  virtualReturn

proc QQuickTextDocumentmetacall*(self: gen_qquicktextdocument_types.QQuickTextDocument, param1: cint, param2: cint, param3: pointer): cint =
  fcQQuickTextDocument_virtualbase_metacall(self.h, cint(param1), param2, param3)

proc cQQuickTextDocument_vtable_callback_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.cdecl.} =
  let vtbl = cast[ptr QQuickTextDocumentVTable](fcQQuickTextDocument_vdata(self))
  let self = QQuickTextDocument(h: self)
  let slotval1 = cint(param1)
  let slotval2 = param2
  let slotval3 = param3
  var virtualReturn = vtbl[].metacall(self, slotval1, slotval2, slotval3)
  virtualReturn

proc QQuickTextDocumentevent*(self: gen_qquicktextdocument_types.QQuickTextDocument, event: gen_qcoreevent_types.QEvent): bool =
  fcQQuickTextDocument_virtualbase_event(self.h, event.h)

proc cQQuickTextDocument_vtable_callback_event(self: pointer, event: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QQuickTextDocumentVTable](fcQQuickTextDocument_vdata(self))
  let self = QQuickTextDocument(h: self)
  let slotval1 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  var virtualReturn = vtbl[].event(self, slotval1)
  virtualReturn

proc QQuickTextDocumenteventFilter*(self: gen_qquicktextdocument_types.QQuickTextDocument, watched: gen_qobject_types.QObject, event: gen_qcoreevent_types.QEvent): bool =
  fcQQuickTextDocument_virtualbase_eventFilter(self.h, watched.h, event.h)

proc cQQuickTextDocument_vtable_callback_eventFilter(self: pointer, watched: pointer, event: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QQuickTextDocumentVTable](fcQQuickTextDocument_vdata(self))
  let self = QQuickTextDocument(h: self)
  let slotval1 = gen_qobject_types.QObject(h: watched, owned: false)
  let slotval2 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  var virtualReturn = vtbl[].eventFilter(self, slotval1, slotval2)
  virtualReturn

proc QQuickTextDocumenttimerEvent*(self: gen_qquicktextdocument_types.QQuickTextDocument, event: gen_qcoreevent_types.QTimerEvent): void =
  fcQQuickTextDocument_virtualbase_timerEvent(self.h, event.h)

proc cQQuickTextDocument_vtable_callback_timerEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QQuickTextDocumentVTable](fcQQuickTextDocument_vdata(self))
  let self = QQuickTextDocument(h: self)
  let slotval1 = gen_qcoreevent_types.QTimerEvent(h: event, owned: false)
  vtbl[].timerEvent(self, slotval1)

proc QQuickTextDocumentchildEvent*(self: gen_qquicktextdocument_types.QQuickTextDocument, event: gen_qcoreevent_types.QChildEvent): void =
  fcQQuickTextDocument_virtualbase_childEvent(self.h, event.h)

proc cQQuickTextDocument_vtable_callback_childEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QQuickTextDocumentVTable](fcQQuickTextDocument_vdata(self))
  let self = QQuickTextDocument(h: self)
  let slotval1 = gen_qcoreevent_types.QChildEvent(h: event, owned: false)
  vtbl[].childEvent(self, slotval1)

proc QQuickTextDocumentcustomEvent*(self: gen_qquicktextdocument_types.QQuickTextDocument, event: gen_qcoreevent_types.QEvent): void =
  fcQQuickTextDocument_virtualbase_customEvent(self.h, event.h)

proc cQQuickTextDocument_vtable_callback_customEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QQuickTextDocumentVTable](fcQQuickTextDocument_vdata(self))
  let self = QQuickTextDocument(h: self)
  let slotval1 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  vtbl[].customEvent(self, slotval1)

proc QQuickTextDocumentconnectNotify*(self: gen_qquicktextdocument_types.QQuickTextDocument, signal: gen_qmetaobject_types.QMetaMethod): void =
  fcQQuickTextDocument_virtualbase_connectNotify(self.h, signal.h)

proc cQQuickTextDocument_vtable_callback_connectNotify(self: pointer, signal: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QQuickTextDocumentVTable](fcQQuickTextDocument_vdata(self))
  let self = QQuickTextDocument(h: self)
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal, owned: false)
  vtbl[].connectNotify(self, slotval1)

proc QQuickTextDocumentdisconnectNotify*(self: gen_qquicktextdocument_types.QQuickTextDocument, signal: gen_qmetaobject_types.QMetaMethod): void =
  fcQQuickTextDocument_virtualbase_disconnectNotify(self.h, signal.h)

proc cQQuickTextDocument_vtable_callback_disconnectNotify(self: pointer, signal: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QQuickTextDocumentVTable](fcQQuickTextDocument_vdata(self))
  let self = QQuickTextDocument(h: self)
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal, owned: false)
  vtbl[].disconnectNotify(self, slotval1)

type VirtualQQuickTextDocument* {.inheritable.} = ref object of QQuickTextDocument
  vtbl*: cQQuickTextDocumentVTable
method metaObject*(self: VirtualQQuickTextDocument): gen_qobjectdefs_types.QMetaObject {.base.} =
  QQuickTextDocumentmetaObject(self[])
proc cQQuickTextDocument_method_callback_metaObject(self: pointer): pointer {.cdecl.} =
  let inst = cast[VirtualQQuickTextDocument](fcQQuickTextDocument_vdata(self))
  var virtualReturn = inst.metaObject()
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

method metacast*(self: VirtualQQuickTextDocument, param1: cstring): pointer {.base.} =
  QQuickTextDocumentmetacast(self[], param1)
proc cQQuickTextDocument_method_callback_metacast(self: pointer, param1: cstring): pointer {.cdecl.} =
  let inst = cast[VirtualQQuickTextDocument](fcQQuickTextDocument_vdata(self))
  let slotval1 = (param1)
  var virtualReturn = inst.metacast(slotval1)
  virtualReturn

method metacall*(self: VirtualQQuickTextDocument, param1: cint, param2: cint, param3: pointer): cint {.base.} =
  QQuickTextDocumentmetacall(self[], param1, param2, param3)
proc cQQuickTextDocument_method_callback_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.cdecl.} =
  let inst = cast[VirtualQQuickTextDocument](fcQQuickTextDocument_vdata(self))
  let slotval1 = cint(param1)
  let slotval2 = param2
  let slotval3 = param3
  var virtualReturn = inst.metacall(slotval1, slotval2, slotval3)
  virtualReturn

method event*(self: VirtualQQuickTextDocument, event: gen_qcoreevent_types.QEvent): bool {.base.} =
  QQuickTextDocumentevent(self[], event)
proc cQQuickTextDocument_method_callback_event(self: pointer, event: pointer): bool {.cdecl.} =
  let inst = cast[VirtualQQuickTextDocument](fcQQuickTextDocument_vdata(self))
  let slotval1 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  var virtualReturn = inst.event(slotval1)
  virtualReturn

method eventFilter*(self: VirtualQQuickTextDocument, watched: gen_qobject_types.QObject, event: gen_qcoreevent_types.QEvent): bool {.base.} =
  QQuickTextDocumenteventFilter(self[], watched, event)
proc cQQuickTextDocument_method_callback_eventFilter(self: pointer, watched: pointer, event: pointer): bool {.cdecl.} =
  let inst = cast[VirtualQQuickTextDocument](fcQQuickTextDocument_vdata(self))
  let slotval1 = gen_qobject_types.QObject(h: watched, owned: false)
  let slotval2 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  var virtualReturn = inst.eventFilter(slotval1, slotval2)
  virtualReturn

method timerEvent*(self: VirtualQQuickTextDocument, event: gen_qcoreevent_types.QTimerEvent): void {.base.} =
  QQuickTextDocumenttimerEvent(self[], event)
proc cQQuickTextDocument_method_callback_timerEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQQuickTextDocument](fcQQuickTextDocument_vdata(self))
  let slotval1 = gen_qcoreevent_types.QTimerEvent(h: event, owned: false)
  inst.timerEvent(slotval1)

method childEvent*(self: VirtualQQuickTextDocument, event: gen_qcoreevent_types.QChildEvent): void {.base.} =
  QQuickTextDocumentchildEvent(self[], event)
proc cQQuickTextDocument_method_callback_childEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQQuickTextDocument](fcQQuickTextDocument_vdata(self))
  let slotval1 = gen_qcoreevent_types.QChildEvent(h: event, owned: false)
  inst.childEvent(slotval1)

method customEvent*(self: VirtualQQuickTextDocument, event: gen_qcoreevent_types.QEvent): void {.base.} =
  QQuickTextDocumentcustomEvent(self[], event)
proc cQQuickTextDocument_method_callback_customEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQQuickTextDocument](fcQQuickTextDocument_vdata(self))
  let slotval1 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  inst.customEvent(slotval1)

method connectNotify*(self: VirtualQQuickTextDocument, signal: gen_qmetaobject_types.QMetaMethod): void {.base.} =
  QQuickTextDocumentconnectNotify(self[], signal)
proc cQQuickTextDocument_method_callback_connectNotify(self: pointer, signal: pointer): void {.cdecl.} =
  let inst = cast[VirtualQQuickTextDocument](fcQQuickTextDocument_vdata(self))
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal, owned: false)
  inst.connectNotify(slotval1)

method disconnectNotify*(self: VirtualQQuickTextDocument, signal: gen_qmetaobject_types.QMetaMethod): void {.base.} =
  QQuickTextDocumentdisconnectNotify(self[], signal)
proc cQQuickTextDocument_method_callback_disconnectNotify(self: pointer, signal: pointer): void {.cdecl.} =
  let inst = cast[VirtualQQuickTextDocument](fcQQuickTextDocument_vdata(self))
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal, owned: false)
  inst.disconnectNotify(slotval1)

proc sender*(self: gen_qquicktextdocument_types.QQuickTextDocument): gen_qobject_types.QObject =
  gen_qobject_types.QObject(h: fcQQuickTextDocument_protectedbase_sender(self.h), owned: false)

proc senderSignalIndex*(self: gen_qquicktextdocument_types.QQuickTextDocument): cint =
  fcQQuickTextDocument_protectedbase_senderSignalIndex(self.h)

proc receivers*(self: gen_qquicktextdocument_types.QQuickTextDocument, signal: cstring): cint =
  fcQQuickTextDocument_protectedbase_receivers(self.h, signal)

proc isSignalConnected*(self: gen_qquicktextdocument_types.QQuickTextDocument, signal: gen_qmetaobject_types.QMetaMethod): bool =
  fcQQuickTextDocument_protectedbase_isSignalConnected(self.h, signal.h)

proc create*(T: type gen_qquicktextdocument_types.QQuickTextDocument,
    parent: gen_qquickitem_types.QQuickItem,
    vtbl: ref QQuickTextDocumentVTable = nil): gen_qquicktextdocument_types.QQuickTextDocument =
  let vtbl = if vtbl == nil: new QQuickTextDocumentVTable else: vtbl
  GC_ref(vtbl)
  vtbl[].vtbl.destructor = proc(self: pointer) {.cdecl.} =
    let vtbl = cast[ref QQuickTextDocumentVTable](fcQQuickTextDocument_vdata(self))
    GC_unref(vtbl)
  if not isNil(vtbl[].metaObject):
    vtbl[].vtbl.metaObject = cQQuickTextDocument_vtable_callback_metaObject
  if not isNil(vtbl[].metacast):
    vtbl[].vtbl.metacast = cQQuickTextDocument_vtable_callback_metacast
  if not isNil(vtbl[].metacall):
    vtbl[].vtbl.metacall = cQQuickTextDocument_vtable_callback_metacall
  if not isNil(vtbl[].event):
    vtbl[].vtbl.event = cQQuickTextDocument_vtable_callback_event
  if not isNil(vtbl[].eventFilter):
    vtbl[].vtbl.eventFilter = cQQuickTextDocument_vtable_callback_eventFilter
  if not isNil(vtbl[].timerEvent):
    vtbl[].vtbl.timerEvent = cQQuickTextDocument_vtable_callback_timerEvent
  if not isNil(vtbl[].childEvent):
    vtbl[].vtbl.childEvent = cQQuickTextDocument_vtable_callback_childEvent
  if not isNil(vtbl[].customEvent):
    vtbl[].vtbl.customEvent = cQQuickTextDocument_vtable_callback_customEvent
  if not isNil(vtbl[].connectNotify):
    vtbl[].vtbl.connectNotify = cQQuickTextDocument_vtable_callback_connectNotify
  if not isNil(vtbl[].disconnectNotify):
    vtbl[].vtbl.disconnectNotify = cQQuickTextDocument_vtable_callback_disconnectNotify
  gen_qquicktextdocument_types.QQuickTextDocument(h: fcQQuickTextDocument_new(addr(vtbl[].vtbl), addr(vtbl[]), parent.h), owned: true)

const cQQuickTextDocument_mvtbl = cQQuickTextDocumentVTable(
  destructor: proc(self: pointer) {.cdecl.} =
    let inst = cast[ptr typeof(VirtualQQuickTextDocument()[])](self.fcQQuickTextDocument_vtbl())
    inst[].h = nil
    inst[].owned = false,
  metaObject: cQQuickTextDocument_method_callback_metaObject,
  metacast: cQQuickTextDocument_method_callback_metacast,
  metacall: cQQuickTextDocument_method_callback_metacall,
  event: cQQuickTextDocument_method_callback_event,
  eventFilter: cQQuickTextDocument_method_callback_eventFilter,
  timerEvent: cQQuickTextDocument_method_callback_timerEvent,
  childEvent: cQQuickTextDocument_method_callback_childEvent,
  customEvent: cQQuickTextDocument_method_callback_customEvent,
  connectNotify: cQQuickTextDocument_method_callback_connectNotify,
  disconnectNotify: cQQuickTextDocument_method_callback_disconnectNotify,
)
proc create*(T: type gen_qquicktextdocument_types.QQuickTextDocument,
    parent: gen_qquickitem_types.QQuickItem,
    inst: VirtualQQuickTextDocument) =
  if inst[].h != nil: delete(move(inst[]))
  inst[].h = fcQQuickTextDocument_new(addr(cQQuickTextDocument_mvtbl), addr(inst[]), parent.h)
  inst[].owned = true

proc staticMetaObject*(_: type gen_qquicktextdocument_types.QQuickTextDocument): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQQuickTextDocument_staticMetaObject())
