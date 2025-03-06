import ./Qt5Gui_libs

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

const cflags = gorge("pkg-config --cflags Qt5Gui")  & " -fPIC"
{.compile("gen_qtextlist.cpp", cflags).}


import ./gen_qtextlist_types
export gen_qtextlist_types

import
  ../QtCore/gen_qcoreevent_types,
  ../QtCore/gen_qmetaobject_types,
  ../QtCore/gen_qobject_types,
  ../QtCore/gen_qobjectdefs_types,
  ./gen_qtextdocument_types,
  ./gen_qtextformat_types,
  ./gen_qtextobject
export
  gen_qcoreevent_types,
  gen_qmetaobject_types,
  gen_qobject_types,
  gen_qobjectdefs_types,
  gen_qtextdocument_types,
  gen_qtextformat_types,
  gen_qtextobject

type cQTextList*{.exportc: "QTextList", incompleteStruct.} = object

proc fcQTextList_metaObject(self: pointer, ): pointer {.importc: "QTextList_metaObject".}
proc fcQTextList_metacast(self: pointer, param1: cstring): pointer {.importc: "QTextList_metacast".}
proc fcQTextList_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.importc: "QTextList_metacall".}
proc fcQTextList_tr(s: cstring): struct_miqt_string {.importc: "QTextList_tr".}
proc fcQTextList_trUtf8(s: cstring): struct_miqt_string {.importc: "QTextList_trUtf8".}
proc fcQTextList_count(self: pointer, ): cint {.importc: "QTextList_count".}
proc fcQTextList_isEmpty(self: pointer, ): bool {.importc: "QTextList_isEmpty".}
proc fcQTextList_item(self: pointer, i: cint): pointer {.importc: "QTextList_item".}
proc fcQTextList_itemNumber(self: pointer, param1: pointer): cint {.importc: "QTextList_itemNumber".}
proc fcQTextList_itemText(self: pointer, param1: pointer): struct_miqt_string {.importc: "QTextList_itemText".}
proc fcQTextList_removeItem(self: pointer, i: cint): void {.importc: "QTextList_removeItem".}
proc fcQTextList_remove(self: pointer, param1: pointer): void {.importc: "QTextList_remove".}
proc fcQTextList_add(self: pointer, blockVal: pointer): void {.importc: "QTextList_add".}
proc fcQTextList_setFormat(self: pointer, format: pointer): void {.importc: "QTextList_setFormat".}
proc fcQTextList_format(self: pointer, ): pointer {.importc: "QTextList_format".}
proc fcQTextList_tr2(s: cstring, c: cstring): struct_miqt_string {.importc: "QTextList_tr2".}
proc fcQTextList_tr3(s: cstring, c: cstring, n: cint): struct_miqt_string {.importc: "QTextList_tr3".}
proc fcQTextList_trUtf82(s: cstring, c: cstring): struct_miqt_string {.importc: "QTextList_trUtf82".}
proc fcQTextList_trUtf83(s: cstring, c: cstring, n: cint): struct_miqt_string {.importc: "QTextList_trUtf83".}
type cQTextListVTable = object
  destructor*: proc(vtbl: ptr cQTextListVTable, self: ptr cQTextList) {.cdecl, raises:[], gcsafe.}
  metaObject*: proc(vtbl, self: pointer, ): pointer {.cdecl, raises: [], gcsafe.}
  metacast*: proc(vtbl, self: pointer, param1: cstring): pointer {.cdecl, raises: [], gcsafe.}
  metacall*: proc(vtbl, self: pointer, param1: cint, param2: cint, param3: pointer): cint {.cdecl, raises: [], gcsafe.}
  blockInserted*: proc(vtbl, self: pointer, blockVal: pointer): void {.cdecl, raises: [], gcsafe.}
  blockRemoved*: proc(vtbl, self: pointer, blockVal: pointer): void {.cdecl, raises: [], gcsafe.}
  blockFormatChanged*: proc(vtbl, self: pointer, blockVal: pointer): void {.cdecl, raises: [], gcsafe.}
  event*: proc(vtbl, self: pointer, event: pointer): bool {.cdecl, raises: [], gcsafe.}
  eventFilter*: proc(vtbl, self: pointer, watched: pointer, event: pointer): bool {.cdecl, raises: [], gcsafe.}
  timerEvent*: proc(vtbl, self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  childEvent*: proc(vtbl, self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  customEvent*: proc(vtbl, self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  connectNotify*: proc(vtbl, self: pointer, signal: pointer): void {.cdecl, raises: [], gcsafe.}
  disconnectNotify*: proc(vtbl, self: pointer, signal: pointer): void {.cdecl, raises: [], gcsafe.}
proc fcQTextList_virtualbase_metaObject(self: pointer, ): pointer {.importc: "QTextList_virtualbase_metaObject".}
proc fcQTextList_virtualbase_metacast(self: pointer, param1: cstring): pointer {.importc: "QTextList_virtualbase_metacast".}
proc fcQTextList_virtualbase_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.importc: "QTextList_virtualbase_metacall".}
proc fcQTextList_virtualbase_blockInserted(self: pointer, blockVal: pointer): void {.importc: "QTextList_virtualbase_blockInserted".}
proc fcQTextList_virtualbase_blockRemoved(self: pointer, blockVal: pointer): void {.importc: "QTextList_virtualbase_blockRemoved".}
proc fcQTextList_virtualbase_blockFormatChanged(self: pointer, blockVal: pointer): void {.importc: "QTextList_virtualbase_blockFormatChanged".}
proc fcQTextList_virtualbase_event(self: pointer, event: pointer): bool {.importc: "QTextList_virtualbase_event".}
proc fcQTextList_virtualbase_eventFilter(self: pointer, watched: pointer, event: pointer): bool {.importc: "QTextList_virtualbase_eventFilter".}
proc fcQTextList_virtualbase_timerEvent(self: pointer, event: pointer): void {.importc: "QTextList_virtualbase_timerEvent".}
proc fcQTextList_virtualbase_childEvent(self: pointer, event: pointer): void {.importc: "QTextList_virtualbase_childEvent".}
proc fcQTextList_virtualbase_customEvent(self: pointer, event: pointer): void {.importc: "QTextList_virtualbase_customEvent".}
proc fcQTextList_virtualbase_connectNotify(self: pointer, signal: pointer): void {.importc: "QTextList_virtualbase_connectNotify".}
proc fcQTextList_virtualbase_disconnectNotify(self: pointer, signal: pointer): void {.importc: "QTextList_virtualbase_disconnectNotify".}
proc fcQTextList_protectedbase_blockList(self: pointer, ): struct_miqt_array {.importc: "QTextList_protectedbase_blockList".}
proc fcQTextList_protectedbase_sender(self: pointer, ): pointer {.importc: "QTextList_protectedbase_sender".}
proc fcQTextList_protectedbase_senderSignalIndex(self: pointer, ): cint {.importc: "QTextList_protectedbase_senderSignalIndex".}
proc fcQTextList_protectedbase_receivers(self: pointer, signal: cstring): cint {.importc: "QTextList_protectedbase_receivers".}
proc fcQTextList_protectedbase_isSignalConnected(self: pointer, signal: pointer): bool {.importc: "QTextList_protectedbase_isSignalConnected".}
proc fcQTextList_new(vtbl: pointer, doc: pointer): ptr cQTextList {.importc: "QTextList_new".}
proc fcQTextList_staticMetaObject(): pointer {.importc: "QTextList_staticMetaObject".}
proc fcQTextList_delete(self: pointer) {.importc: "QTextList_delete".}

proc metaObject*(self: gen_qtextlist_types.QTextList, ): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQTextList_metaObject(self.h))

proc metacast*(self: gen_qtextlist_types.QTextList, param1: cstring): pointer =
  fcQTextList_metacast(self.h, param1)

proc metacall*(self: gen_qtextlist_types.QTextList, param1: cint, param2: cint, param3: pointer): cint =
  fcQTextList_metacall(self.h, cint(param1), param2, param3)

proc tr*(_: type gen_qtextlist_types.QTextList, s: cstring): string =
  let v_ms = fcQTextList_tr(s)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc trUtf8*(_: type gen_qtextlist_types.QTextList, s: cstring): string =
  let v_ms = fcQTextList_trUtf8(s)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc count*(self: gen_qtextlist_types.QTextList, ): cint =
  fcQTextList_count(self.h)

proc isEmpty*(self: gen_qtextlist_types.QTextList, ): bool =
  fcQTextList_isEmpty(self.h)

proc item*(self: gen_qtextlist_types.QTextList, i: cint): gen_qtextobject_types.QTextBlock =
  gen_qtextobject_types.QTextBlock(h: fcQTextList_item(self.h, i))

proc itemNumber*(self: gen_qtextlist_types.QTextList, param1: gen_qtextobject_types.QTextBlock): cint =
  fcQTextList_itemNumber(self.h, param1.h)

proc itemText*(self: gen_qtextlist_types.QTextList, param1: gen_qtextobject_types.QTextBlock): string =
  let v_ms = fcQTextList_itemText(self.h, param1.h)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc removeItem*(self: gen_qtextlist_types.QTextList, i: cint): void =
  fcQTextList_removeItem(self.h, i)

proc remove*(self: gen_qtextlist_types.QTextList, param1: gen_qtextobject_types.QTextBlock): void =
  fcQTextList_remove(self.h, param1.h)

proc add*(self: gen_qtextlist_types.QTextList, blockVal: gen_qtextobject_types.QTextBlock): void =
  fcQTextList_add(self.h, blockVal.h)

proc setFormat*(self: gen_qtextlist_types.QTextList, format: gen_qtextformat_types.QTextListFormat): void =
  fcQTextList_setFormat(self.h, format.h)

proc format*(self: gen_qtextlist_types.QTextList, ): gen_qtextformat_types.QTextListFormat =
  gen_qtextformat_types.QTextListFormat(h: fcQTextList_format(self.h))

proc tr*(_: type gen_qtextlist_types.QTextList, s: cstring, c: cstring): string =
  let v_ms = fcQTextList_tr2(s, c)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc tr*(_: type gen_qtextlist_types.QTextList, s: cstring, c: cstring, n: cint): string =
  let v_ms = fcQTextList_tr3(s, c, n)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc trUtf8*(_: type gen_qtextlist_types.QTextList, s: cstring, c: cstring): string =
  let v_ms = fcQTextList_trUtf82(s, c)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc trUtf8*(_: type gen_qtextlist_types.QTextList, s: cstring, c: cstring, n: cint): string =
  let v_ms = fcQTextList_trUtf83(s, c, n)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

type QTextListmetaObjectProc* = proc(self: QTextList): gen_qobjectdefs_types.QMetaObject {.raises: [], gcsafe.}
type QTextListmetacastProc* = proc(self: QTextList, param1: cstring): pointer {.raises: [], gcsafe.}
type QTextListmetacallProc* = proc(self: QTextList, param1: cint, param2: cint, param3: pointer): cint {.raises: [], gcsafe.}
type QTextListblockInsertedProc* = proc(self: QTextList, blockVal: gen_qtextobject_types.QTextBlock): void {.raises: [], gcsafe.}
type QTextListblockRemovedProc* = proc(self: QTextList, blockVal: gen_qtextobject_types.QTextBlock): void {.raises: [], gcsafe.}
type QTextListblockFormatChangedProc* = proc(self: QTextList, blockVal: gen_qtextobject_types.QTextBlock): void {.raises: [], gcsafe.}
type QTextListeventProc* = proc(self: QTextList, event: gen_qcoreevent_types.QEvent): bool {.raises: [], gcsafe.}
type QTextListeventFilterProc* = proc(self: QTextList, watched: gen_qobject_types.QObject, event: gen_qcoreevent_types.QEvent): bool {.raises: [], gcsafe.}
type QTextListtimerEventProc* = proc(self: QTextList, event: gen_qcoreevent_types.QTimerEvent): void {.raises: [], gcsafe.}
type QTextListchildEventProc* = proc(self: QTextList, event: gen_qcoreevent_types.QChildEvent): void {.raises: [], gcsafe.}
type QTextListcustomEventProc* = proc(self: QTextList, event: gen_qcoreevent_types.QEvent): void {.raises: [], gcsafe.}
type QTextListconnectNotifyProc* = proc(self: QTextList, signal: gen_qmetaobject_types.QMetaMethod): void {.raises: [], gcsafe.}
type QTextListdisconnectNotifyProc* = proc(self: QTextList, signal: gen_qmetaobject_types.QMetaMethod): void {.raises: [], gcsafe.}
type QTextListVTable* = object
  vtbl: cQTextListVTable
  metaObject*: QTextListmetaObjectProc
  metacast*: QTextListmetacastProc
  metacall*: QTextListmetacallProc
  blockInserted*: QTextListblockInsertedProc
  blockRemoved*: QTextListblockRemovedProc
  blockFormatChanged*: QTextListblockFormatChangedProc
  event*: QTextListeventProc
  eventFilter*: QTextListeventFilterProc
  timerEvent*: QTextListtimerEventProc
  childEvent*: QTextListchildEventProc
  customEvent*: QTextListcustomEventProc
  connectNotify*: QTextListconnectNotifyProc
  disconnectNotify*: QTextListdisconnectNotifyProc
proc QTextListmetaObject*(self: gen_qtextlist_types.QTextList, ): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQTextList_virtualbase_metaObject(self.h))

proc miqt_exec_callback_cQTextList_metaObject(vtbl: pointer, self: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QTextListVTable](vtbl)
  let self = QTextList(h: self)
  var virtualReturn = vtbl[].metaObject(self)
  virtualReturn.h

proc QTextListmetacast*(self: gen_qtextlist_types.QTextList, param1: cstring): pointer =
  fcQTextList_virtualbase_metacast(self.h, param1)

proc miqt_exec_callback_cQTextList_metacast(vtbl: pointer, self: pointer, param1: cstring): pointer {.cdecl.} =
  let vtbl = cast[ptr QTextListVTable](vtbl)
  let self = QTextList(h: self)
  let slotval1 = (param1)
  var virtualReturn = vtbl[].metacast(self, slotval1)
  virtualReturn

proc QTextListmetacall*(self: gen_qtextlist_types.QTextList, param1: cint, param2: cint, param3: pointer): cint =
  fcQTextList_virtualbase_metacall(self.h, cint(param1), param2, param3)

proc miqt_exec_callback_cQTextList_metacall(vtbl: pointer, self: pointer, param1: cint, param2: cint, param3: pointer): cint {.cdecl.} =
  let vtbl = cast[ptr QTextListVTable](vtbl)
  let self = QTextList(h: self)
  let slotval1 = cint(param1)
  let slotval2 = param2
  let slotval3 = param3
  var virtualReturn = vtbl[].metacall(self, slotval1, slotval2, slotval3)
  virtualReturn

proc QTextListblockInserted*(self: gen_qtextlist_types.QTextList, blockVal: gen_qtextobject_types.QTextBlock): void =
  fcQTextList_virtualbase_blockInserted(self.h, blockVal.h)

proc miqt_exec_callback_cQTextList_blockInserted(vtbl: pointer, self: pointer, blockVal: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QTextListVTable](vtbl)
  let self = QTextList(h: self)
  let slotval1 = gen_qtextobject_types.QTextBlock(h: blockVal)
  vtbl[].blockInserted(self, slotval1)

proc QTextListblockRemoved*(self: gen_qtextlist_types.QTextList, blockVal: gen_qtextobject_types.QTextBlock): void =
  fcQTextList_virtualbase_blockRemoved(self.h, blockVal.h)

proc miqt_exec_callback_cQTextList_blockRemoved(vtbl: pointer, self: pointer, blockVal: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QTextListVTable](vtbl)
  let self = QTextList(h: self)
  let slotval1 = gen_qtextobject_types.QTextBlock(h: blockVal)
  vtbl[].blockRemoved(self, slotval1)

proc QTextListblockFormatChanged*(self: gen_qtextlist_types.QTextList, blockVal: gen_qtextobject_types.QTextBlock): void =
  fcQTextList_virtualbase_blockFormatChanged(self.h, blockVal.h)

proc miqt_exec_callback_cQTextList_blockFormatChanged(vtbl: pointer, self: pointer, blockVal: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QTextListVTable](vtbl)
  let self = QTextList(h: self)
  let slotval1 = gen_qtextobject_types.QTextBlock(h: blockVal)
  vtbl[].blockFormatChanged(self, slotval1)

proc QTextListevent*(self: gen_qtextlist_types.QTextList, event: gen_qcoreevent_types.QEvent): bool =
  fcQTextList_virtualbase_event(self.h, event.h)

proc miqt_exec_callback_cQTextList_event(vtbl: pointer, self: pointer, event: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QTextListVTable](vtbl)
  let self = QTextList(h: self)
  let slotval1 = gen_qcoreevent_types.QEvent(h: event)
  var virtualReturn = vtbl[].event(self, slotval1)
  virtualReturn

proc QTextListeventFilter*(self: gen_qtextlist_types.QTextList, watched: gen_qobject_types.QObject, event: gen_qcoreevent_types.QEvent): bool =
  fcQTextList_virtualbase_eventFilter(self.h, watched.h, event.h)

proc miqt_exec_callback_cQTextList_eventFilter(vtbl: pointer, self: pointer, watched: pointer, event: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QTextListVTable](vtbl)
  let self = QTextList(h: self)
  let slotval1 = gen_qobject_types.QObject(h: watched)
  let slotval2 = gen_qcoreevent_types.QEvent(h: event)
  var virtualReturn = vtbl[].eventFilter(self, slotval1, slotval2)
  virtualReturn

proc QTextListtimerEvent*(self: gen_qtextlist_types.QTextList, event: gen_qcoreevent_types.QTimerEvent): void =
  fcQTextList_virtualbase_timerEvent(self.h, event.h)

proc miqt_exec_callback_cQTextList_timerEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QTextListVTable](vtbl)
  let self = QTextList(h: self)
  let slotval1 = gen_qcoreevent_types.QTimerEvent(h: event)
  vtbl[].timerEvent(self, slotval1)

proc QTextListchildEvent*(self: gen_qtextlist_types.QTextList, event: gen_qcoreevent_types.QChildEvent): void =
  fcQTextList_virtualbase_childEvent(self.h, event.h)

proc miqt_exec_callback_cQTextList_childEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QTextListVTable](vtbl)
  let self = QTextList(h: self)
  let slotval1 = gen_qcoreevent_types.QChildEvent(h: event)
  vtbl[].childEvent(self, slotval1)

proc QTextListcustomEvent*(self: gen_qtextlist_types.QTextList, event: gen_qcoreevent_types.QEvent): void =
  fcQTextList_virtualbase_customEvent(self.h, event.h)

proc miqt_exec_callback_cQTextList_customEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QTextListVTable](vtbl)
  let self = QTextList(h: self)
  let slotval1 = gen_qcoreevent_types.QEvent(h: event)
  vtbl[].customEvent(self, slotval1)

proc QTextListconnectNotify*(self: gen_qtextlist_types.QTextList, signal: gen_qmetaobject_types.QMetaMethod): void =
  fcQTextList_virtualbase_connectNotify(self.h, signal.h)

proc miqt_exec_callback_cQTextList_connectNotify(vtbl: pointer, self: pointer, signal: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QTextListVTable](vtbl)
  let self = QTextList(h: self)
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal)
  vtbl[].connectNotify(self, slotval1)

proc QTextListdisconnectNotify*(self: gen_qtextlist_types.QTextList, signal: gen_qmetaobject_types.QMetaMethod): void =
  fcQTextList_virtualbase_disconnectNotify(self.h, signal.h)

proc miqt_exec_callback_cQTextList_disconnectNotify(vtbl: pointer, self: pointer, signal: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QTextListVTable](vtbl)
  let self = QTextList(h: self)
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal)
  vtbl[].disconnectNotify(self, slotval1)

proc blockList*(self: gen_qtextlist_types.QTextList, ): seq[gen_qtextobject_types.QTextBlock] =
  var v_ma = fcQTextList_protectedbase_blockList(self.h)
  var vx_ret = newSeq[gen_qtextobject_types.QTextBlock](int(v_ma.len))
  let v_outCast = cast[ptr UncheckedArray[pointer]](v_ma.data)
  for i in 0 ..< v_ma.len:
    vx_ret[i] = gen_qtextobject_types.QTextBlock(h: v_outCast[i])
  c_free(v_ma.data)
  vx_ret

proc sender*(self: gen_qtextlist_types.QTextList, ): gen_qobject_types.QObject =
  gen_qobject_types.QObject(h: fcQTextList_protectedbase_sender(self.h))

proc senderSignalIndex*(self: gen_qtextlist_types.QTextList, ): cint =
  fcQTextList_protectedbase_senderSignalIndex(self.h)

proc receivers*(self: gen_qtextlist_types.QTextList, signal: cstring): cint =
  fcQTextList_protectedbase_receivers(self.h, signal)

proc isSignalConnected*(self: gen_qtextlist_types.QTextList, signal: gen_qmetaobject_types.QMetaMethod): bool =
  fcQTextList_protectedbase_isSignalConnected(self.h, signal.h)

proc create*(T: type gen_qtextlist_types.QTextList,
    doc: gen_qtextdocument_types.QTextDocument,
    vtbl: ref QTextListVTable = nil): gen_qtextlist_types.QTextList =
  let vtbl = if vtbl == nil: new QTextListVTable else: vtbl
  GC_ref(vtbl)
  vtbl.vtbl.destructor = proc(vtbl: ptr cQTextListVTable, _: ptr cQTextList) {.cdecl.} =
    let vtbl = cast[ref QTextListVTable](vtbl)
    GC_unref(vtbl)
  if not isNil(vtbl.metaObject):
    vtbl[].vtbl.metaObject = miqt_exec_callback_cQTextList_metaObject
  if not isNil(vtbl.metacast):
    vtbl[].vtbl.metacast = miqt_exec_callback_cQTextList_metacast
  if not isNil(vtbl.metacall):
    vtbl[].vtbl.metacall = miqt_exec_callback_cQTextList_metacall
  if not isNil(vtbl.blockInserted):
    vtbl[].vtbl.blockInserted = miqt_exec_callback_cQTextList_blockInserted
  if not isNil(vtbl.blockRemoved):
    vtbl[].vtbl.blockRemoved = miqt_exec_callback_cQTextList_blockRemoved
  if not isNil(vtbl.blockFormatChanged):
    vtbl[].vtbl.blockFormatChanged = miqt_exec_callback_cQTextList_blockFormatChanged
  if not isNil(vtbl.event):
    vtbl[].vtbl.event = miqt_exec_callback_cQTextList_event
  if not isNil(vtbl.eventFilter):
    vtbl[].vtbl.eventFilter = miqt_exec_callback_cQTextList_eventFilter
  if not isNil(vtbl.timerEvent):
    vtbl[].vtbl.timerEvent = miqt_exec_callback_cQTextList_timerEvent
  if not isNil(vtbl.childEvent):
    vtbl[].vtbl.childEvent = miqt_exec_callback_cQTextList_childEvent
  if not isNil(vtbl.customEvent):
    vtbl[].vtbl.customEvent = miqt_exec_callback_cQTextList_customEvent
  if not isNil(vtbl.connectNotify):
    vtbl[].vtbl.connectNotify = miqt_exec_callback_cQTextList_connectNotify
  if not isNil(vtbl.disconnectNotify):
    vtbl[].vtbl.disconnectNotify = miqt_exec_callback_cQTextList_disconnectNotify
  gen_qtextlist_types.QTextList(h: fcQTextList_new(addr(vtbl[]), doc.h))

proc staticMetaObject*(_: type gen_qtextlist_types.QTextList): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQTextList_staticMetaObject())
proc delete*(self: gen_qtextlist_types.QTextList) =
  fcQTextList_delete(self.h)
