import ./Qt5Quick_libs

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

const cflags = gorge("pkg-config --cflags Qt5Quick")  & " -fPIC"
{.compile("gen_qquicktextdocument.cpp", cflags).}


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

proc fcQQuickTextDocument_metaObject(self: pointer, ): pointer {.importc: "QQuickTextDocument_metaObject".}
proc fcQQuickTextDocument_metacast(self: pointer, param1: cstring): pointer {.importc: "QQuickTextDocument_metacast".}
proc fcQQuickTextDocument_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.importc: "QQuickTextDocument_metacall".}
proc fcQQuickTextDocument_tr(s: cstring): struct_miqt_string {.importc: "QQuickTextDocument_tr".}
proc fcQQuickTextDocument_trUtf8(s: cstring): struct_miqt_string {.importc: "QQuickTextDocument_trUtf8".}
proc fcQQuickTextDocument_textDocument(self: pointer, ): pointer {.importc: "QQuickTextDocument_textDocument".}
proc fcQQuickTextDocument_tr2(s: cstring, c: cstring): struct_miqt_string {.importc: "QQuickTextDocument_tr2".}
proc fcQQuickTextDocument_tr3(s: cstring, c: cstring, n: cint): struct_miqt_string {.importc: "QQuickTextDocument_tr3".}
proc fcQQuickTextDocument_trUtf82(s: cstring, c: cstring): struct_miqt_string {.importc: "QQuickTextDocument_trUtf82".}
proc fcQQuickTextDocument_trUtf83(s: cstring, c: cstring, n: cint): struct_miqt_string {.importc: "QQuickTextDocument_trUtf83".}
type cQQuickTextDocumentVTable = object
  destructor*: proc(vtbl: ptr cQQuickTextDocumentVTable, self: ptr cQQuickTextDocument) {.cdecl, raises:[], gcsafe.}
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
proc fcQQuickTextDocument_virtualbase_metaObject(self: pointer, ): pointer {.importc: "QQuickTextDocument_virtualbase_metaObject".}
proc fcQQuickTextDocument_virtualbase_metacast(self: pointer, param1: cstring): pointer {.importc: "QQuickTextDocument_virtualbase_metacast".}
proc fcQQuickTextDocument_virtualbase_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.importc: "QQuickTextDocument_virtualbase_metacall".}
proc fcQQuickTextDocument_virtualbase_event(self: pointer, event: pointer): bool {.importc: "QQuickTextDocument_virtualbase_event".}
proc fcQQuickTextDocument_virtualbase_eventFilter(self: pointer, watched: pointer, event: pointer): bool {.importc: "QQuickTextDocument_virtualbase_eventFilter".}
proc fcQQuickTextDocument_virtualbase_timerEvent(self: pointer, event: pointer): void {.importc: "QQuickTextDocument_virtualbase_timerEvent".}
proc fcQQuickTextDocument_virtualbase_childEvent(self: pointer, event: pointer): void {.importc: "QQuickTextDocument_virtualbase_childEvent".}
proc fcQQuickTextDocument_virtualbase_customEvent(self: pointer, event: pointer): void {.importc: "QQuickTextDocument_virtualbase_customEvent".}
proc fcQQuickTextDocument_virtualbase_connectNotify(self: pointer, signal: pointer): void {.importc: "QQuickTextDocument_virtualbase_connectNotify".}
proc fcQQuickTextDocument_virtualbase_disconnectNotify(self: pointer, signal: pointer): void {.importc: "QQuickTextDocument_virtualbase_disconnectNotify".}
proc fcQQuickTextDocument_protectedbase_sender(self: pointer, ): pointer {.importc: "QQuickTextDocument_protectedbase_sender".}
proc fcQQuickTextDocument_protectedbase_senderSignalIndex(self: pointer, ): cint {.importc: "QQuickTextDocument_protectedbase_senderSignalIndex".}
proc fcQQuickTextDocument_protectedbase_receivers(self: pointer, signal: cstring): cint {.importc: "QQuickTextDocument_protectedbase_receivers".}
proc fcQQuickTextDocument_protectedbase_isSignalConnected(self: pointer, signal: pointer): bool {.importc: "QQuickTextDocument_protectedbase_isSignalConnected".}
proc fcQQuickTextDocument_new(vtbl: pointer, parent: pointer): ptr cQQuickTextDocument {.importc: "QQuickTextDocument_new".}
proc fcQQuickTextDocument_staticMetaObject(): pointer {.importc: "QQuickTextDocument_staticMetaObject".}
proc fcQQuickTextDocument_delete(self: pointer) {.importc: "QQuickTextDocument_delete".}

proc metaObject*(self: gen_qquicktextdocument_types.QQuickTextDocument, ): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQQuickTextDocument_metaObject(self.h))

proc metacast*(self: gen_qquicktextdocument_types.QQuickTextDocument, param1: cstring): pointer =
  fcQQuickTextDocument_metacast(self.h, param1)

proc metacall*(self: gen_qquicktextdocument_types.QQuickTextDocument, param1: cint, param2: cint, param3: pointer): cint =
  fcQQuickTextDocument_metacall(self.h, cint(param1), param2, param3)

proc tr*(_: type gen_qquicktextdocument_types.QQuickTextDocument, s: cstring): string =
  let v_ms = fcQQuickTextDocument_tr(s)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc trUtf8*(_: type gen_qquicktextdocument_types.QQuickTextDocument, s: cstring): string =
  let v_ms = fcQQuickTextDocument_trUtf8(s)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc textDocument*(self: gen_qquicktextdocument_types.QQuickTextDocument, ): gen_qtextdocument_types.QTextDocument =
  gen_qtextdocument_types.QTextDocument(h: fcQQuickTextDocument_textDocument(self.h))

proc tr*(_: type gen_qquicktextdocument_types.QQuickTextDocument, s: cstring, c: cstring): string =
  let v_ms = fcQQuickTextDocument_tr2(s, c)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc tr*(_: type gen_qquicktextdocument_types.QQuickTextDocument, s: cstring, c: cstring, n: cint): string =
  let v_ms = fcQQuickTextDocument_tr3(s, c, n)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc trUtf8*(_: type gen_qquicktextdocument_types.QQuickTextDocument, s: cstring, c: cstring): string =
  let v_ms = fcQQuickTextDocument_trUtf82(s, c)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc trUtf8*(_: type gen_qquicktextdocument_types.QQuickTextDocument, s: cstring, c: cstring, n: cint): string =
  let v_ms = fcQQuickTextDocument_trUtf83(s, c, n)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
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
type QQuickTextDocumentVTable* = object
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
proc QQuickTextDocumentmetaObject*(self: gen_qquicktextdocument_types.QQuickTextDocument, ): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQQuickTextDocument_virtualbase_metaObject(self.h))

proc miqt_exec_callback_cQQuickTextDocument_metaObject(vtbl: pointer, self: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QQuickTextDocumentVTable](vtbl)
  let self = QQuickTextDocument(h: self)
  var virtualReturn = vtbl[].metaObject(self)
  virtualReturn.h

proc QQuickTextDocumentmetacast*(self: gen_qquicktextdocument_types.QQuickTextDocument, param1: cstring): pointer =
  fcQQuickTextDocument_virtualbase_metacast(self.h, param1)

proc miqt_exec_callback_cQQuickTextDocument_metacast(vtbl: pointer, self: pointer, param1: cstring): pointer {.cdecl.} =
  let vtbl = cast[ptr QQuickTextDocumentVTable](vtbl)
  let self = QQuickTextDocument(h: self)
  let slotval1 = (param1)
  var virtualReturn = vtbl[].metacast(self, slotval1)
  virtualReturn

proc QQuickTextDocumentmetacall*(self: gen_qquicktextdocument_types.QQuickTextDocument, param1: cint, param2: cint, param3: pointer): cint =
  fcQQuickTextDocument_virtualbase_metacall(self.h, cint(param1), param2, param3)

proc miqt_exec_callback_cQQuickTextDocument_metacall(vtbl: pointer, self: pointer, param1: cint, param2: cint, param3: pointer): cint {.cdecl.} =
  let vtbl = cast[ptr QQuickTextDocumentVTable](vtbl)
  let self = QQuickTextDocument(h: self)
  let slotval1 = cint(param1)
  let slotval2 = param2
  let slotval3 = param3
  var virtualReturn = vtbl[].metacall(self, slotval1, slotval2, slotval3)
  virtualReturn

proc QQuickTextDocumentevent*(self: gen_qquicktextdocument_types.QQuickTextDocument, event: gen_qcoreevent_types.QEvent): bool =
  fcQQuickTextDocument_virtualbase_event(self.h, event.h)

proc miqt_exec_callback_cQQuickTextDocument_event(vtbl: pointer, self: pointer, event: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QQuickTextDocumentVTable](vtbl)
  let self = QQuickTextDocument(h: self)
  let slotval1 = gen_qcoreevent_types.QEvent(h: event)
  var virtualReturn = vtbl[].event(self, slotval1)
  virtualReturn

proc QQuickTextDocumenteventFilter*(self: gen_qquicktextdocument_types.QQuickTextDocument, watched: gen_qobject_types.QObject, event: gen_qcoreevent_types.QEvent): bool =
  fcQQuickTextDocument_virtualbase_eventFilter(self.h, watched.h, event.h)

proc miqt_exec_callback_cQQuickTextDocument_eventFilter(vtbl: pointer, self: pointer, watched: pointer, event: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QQuickTextDocumentVTable](vtbl)
  let self = QQuickTextDocument(h: self)
  let slotval1 = gen_qobject_types.QObject(h: watched)
  let slotval2 = gen_qcoreevent_types.QEvent(h: event)
  var virtualReturn = vtbl[].eventFilter(self, slotval1, slotval2)
  virtualReturn

proc QQuickTextDocumenttimerEvent*(self: gen_qquicktextdocument_types.QQuickTextDocument, event: gen_qcoreevent_types.QTimerEvent): void =
  fcQQuickTextDocument_virtualbase_timerEvent(self.h, event.h)

proc miqt_exec_callback_cQQuickTextDocument_timerEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QQuickTextDocumentVTable](vtbl)
  let self = QQuickTextDocument(h: self)
  let slotval1 = gen_qcoreevent_types.QTimerEvent(h: event)
  vtbl[].timerEvent(self, slotval1)

proc QQuickTextDocumentchildEvent*(self: gen_qquicktextdocument_types.QQuickTextDocument, event: gen_qcoreevent_types.QChildEvent): void =
  fcQQuickTextDocument_virtualbase_childEvent(self.h, event.h)

proc miqt_exec_callback_cQQuickTextDocument_childEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QQuickTextDocumentVTable](vtbl)
  let self = QQuickTextDocument(h: self)
  let slotval1 = gen_qcoreevent_types.QChildEvent(h: event)
  vtbl[].childEvent(self, slotval1)

proc QQuickTextDocumentcustomEvent*(self: gen_qquicktextdocument_types.QQuickTextDocument, event: gen_qcoreevent_types.QEvent): void =
  fcQQuickTextDocument_virtualbase_customEvent(self.h, event.h)

proc miqt_exec_callback_cQQuickTextDocument_customEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QQuickTextDocumentVTable](vtbl)
  let self = QQuickTextDocument(h: self)
  let slotval1 = gen_qcoreevent_types.QEvent(h: event)
  vtbl[].customEvent(self, slotval1)

proc QQuickTextDocumentconnectNotify*(self: gen_qquicktextdocument_types.QQuickTextDocument, signal: gen_qmetaobject_types.QMetaMethod): void =
  fcQQuickTextDocument_virtualbase_connectNotify(self.h, signal.h)

proc miqt_exec_callback_cQQuickTextDocument_connectNotify(vtbl: pointer, self: pointer, signal: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QQuickTextDocumentVTable](vtbl)
  let self = QQuickTextDocument(h: self)
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal)
  vtbl[].connectNotify(self, slotval1)

proc QQuickTextDocumentdisconnectNotify*(self: gen_qquicktextdocument_types.QQuickTextDocument, signal: gen_qmetaobject_types.QMetaMethod): void =
  fcQQuickTextDocument_virtualbase_disconnectNotify(self.h, signal.h)

proc miqt_exec_callback_cQQuickTextDocument_disconnectNotify(vtbl: pointer, self: pointer, signal: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QQuickTextDocumentVTable](vtbl)
  let self = QQuickTextDocument(h: self)
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal)
  vtbl[].disconnectNotify(self, slotval1)

proc sender*(self: gen_qquicktextdocument_types.QQuickTextDocument, ): gen_qobject_types.QObject =
  gen_qobject_types.QObject(h: fcQQuickTextDocument_protectedbase_sender(self.h))

proc senderSignalIndex*(self: gen_qquicktextdocument_types.QQuickTextDocument, ): cint =
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
  vtbl.vtbl.destructor = proc(vtbl: ptr cQQuickTextDocumentVTable, _: ptr cQQuickTextDocument) {.cdecl.} =
    let vtbl = cast[ref QQuickTextDocumentVTable](vtbl)
    GC_unref(vtbl)
  if not isNil(vtbl.metaObject):
    vtbl[].vtbl.metaObject = miqt_exec_callback_cQQuickTextDocument_metaObject
  if not isNil(vtbl.metacast):
    vtbl[].vtbl.metacast = miqt_exec_callback_cQQuickTextDocument_metacast
  if not isNil(vtbl.metacall):
    vtbl[].vtbl.metacall = miqt_exec_callback_cQQuickTextDocument_metacall
  if not isNil(vtbl.event):
    vtbl[].vtbl.event = miqt_exec_callback_cQQuickTextDocument_event
  if not isNil(vtbl.eventFilter):
    vtbl[].vtbl.eventFilter = miqt_exec_callback_cQQuickTextDocument_eventFilter
  if not isNil(vtbl.timerEvent):
    vtbl[].vtbl.timerEvent = miqt_exec_callback_cQQuickTextDocument_timerEvent
  if not isNil(vtbl.childEvent):
    vtbl[].vtbl.childEvent = miqt_exec_callback_cQQuickTextDocument_childEvent
  if not isNil(vtbl.customEvent):
    vtbl[].vtbl.customEvent = miqt_exec_callback_cQQuickTextDocument_customEvent
  if not isNil(vtbl.connectNotify):
    vtbl[].vtbl.connectNotify = miqt_exec_callback_cQQuickTextDocument_connectNotify
  if not isNil(vtbl.disconnectNotify):
    vtbl[].vtbl.disconnectNotify = miqt_exec_callback_cQQuickTextDocument_disconnectNotify
  gen_qquicktextdocument_types.QQuickTextDocument(h: fcQQuickTextDocument_new(addr(vtbl[]), parent.h))

proc staticMetaObject*(_: type gen_qquicktextdocument_types.QQuickTextDocument): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQQuickTextDocument_staticMetaObject())
proc delete*(self: gen_qquicktextdocument_types.QQuickTextDocument) =
  fcQQuickTextDocument_delete(self.h)
