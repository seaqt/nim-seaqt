import ./qtgui_pkg

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


{.compile("gen_qtextlist.cpp", QtGuiCFlags).}


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

proc fcQTextList_metaObject(self: pointer): pointer {.importc: "QTextList_metaObject".}
proc fcQTextList_metacast(self: pointer, param1: cstring): pointer {.importc: "QTextList_metacast".}
proc fcQTextList_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.importc: "QTextList_metacall".}
proc fcQTextList_tr(s: cstring): struct_miqt_string {.importc: "QTextList_tr".}
proc fcQTextList_count(self: pointer): cint {.importc: "QTextList_count".}
proc fcQTextList_item(self: pointer, i: cint): pointer {.importc: "QTextList_item".}
proc fcQTextList_itemNumber(self: pointer, param1: pointer): cint {.importc: "QTextList_itemNumber".}
proc fcQTextList_itemText(self: pointer, param1: pointer): struct_miqt_string {.importc: "QTextList_itemText".}
proc fcQTextList_removeItem(self: pointer, i: cint): void {.importc: "QTextList_removeItem".}
proc fcQTextList_remove(self: pointer, param1: pointer): void {.importc: "QTextList_remove".}
proc fcQTextList_add(self: pointer, blockVal: pointer): void {.importc: "QTextList_add".}
proc fcQTextList_setFormat(self: pointer, format: pointer): void {.importc: "QTextList_setFormat".}
proc fcQTextList_format(self: pointer): pointer {.importc: "QTextList_format".}
proc fcQTextList_tr2(s: cstring, c: cstring): struct_miqt_string {.importc: "QTextList_tr2".}
proc fcQTextList_tr3(s: cstring, c: cstring, n: cint): struct_miqt_string {.importc: "QTextList_tr3".}
proc fcQTextList_vtbl(self: pointer): pointer {.importc: "QTextList_vtbl".}
proc fcQTextList_vdata(self: pointer): pointer {.importc: "QTextList_vdata".}
type cQTextListVTable {.pure.} = object
  destructor*: proc(self: pointer) {.cdecl, raises:[], gcsafe.}
  metaObject*: proc(self: pointer): pointer {.cdecl, raises: [], gcsafe.}
  metacast*: proc(self: pointer, param1: cstring): pointer {.cdecl, raises: [], gcsafe.}
  metacall*: proc(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.cdecl, raises: [], gcsafe.}
  blockInserted*: proc(self: pointer, blockVal: pointer): void {.cdecl, raises: [], gcsafe.}
  blockRemoved*: proc(self: pointer, blockVal: pointer): void {.cdecl, raises: [], gcsafe.}
  blockFormatChanged*: proc(self: pointer, blockVal: pointer): void {.cdecl, raises: [], gcsafe.}
  event*: proc(self: pointer, event: pointer): bool {.cdecl, raises: [], gcsafe.}
  eventFilter*: proc(self: pointer, watched: pointer, event: pointer): bool {.cdecl, raises: [], gcsafe.}
  timerEvent*: proc(self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  childEvent*: proc(self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  customEvent*: proc(self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  connectNotify*: proc(self: pointer, signal: pointer): void {.cdecl, raises: [], gcsafe.}
  disconnectNotify*: proc(self: pointer, signal: pointer): void {.cdecl, raises: [], gcsafe.}
proc fcQTextList_virtualbase_metaObject(self: pointer): pointer {.importc: "QTextList_virtualbase_metaObject".}
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
proc fcQTextList_protectedbase_blockList(self: pointer): struct_miqt_array {.importc: "QTextList_protectedbase_blockList".}
proc fcQTextList_protectedbase_sender(self: pointer): pointer {.importc: "QTextList_protectedbase_sender".}
proc fcQTextList_protectedbase_senderSignalIndex(self: pointer): cint {.importc: "QTextList_protectedbase_senderSignalIndex".}
proc fcQTextList_protectedbase_receivers(self: pointer, signal: cstring): cint {.importc: "QTextList_protectedbase_receivers".}
proc fcQTextList_protectedbase_isSignalConnected(self: pointer, signal: pointer): bool {.importc: "QTextList_protectedbase_isSignalConnected".}
proc fcQTextList_new(vtbl, vdata: pointer, doc: pointer): ptr cQTextList {.importc: "QTextList_new".}
proc fcQTextList_staticMetaObject(): pointer {.importc: "QTextList_staticMetaObject".}

proc metaObject*(self: gen_qtextlist_types.QTextList): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQTextList_metaObject(self.h), owned: false)

proc metacast*(self: gen_qtextlist_types.QTextList, param1: cstring): pointer =
  fcQTextList_metacast(self.h, param1)

proc metacall*(self: gen_qtextlist_types.QTextList, param1: cint, param2: cint, param3: pointer): cint =
  fcQTextList_metacall(self.h, cint(param1), param2, param3)

proc tr*(_: type gen_qtextlist_types.QTextList, s: cstring): string =
  let v_ms = fcQTextList_tr(s)
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

proc count*(self: gen_qtextlist_types.QTextList): cint =
  fcQTextList_count(self.h)

proc item*(self: gen_qtextlist_types.QTextList, i: cint): gen_qtextobject_types.QTextBlock =
  gen_qtextobject_types.QTextBlock(h: fcQTextList_item(self.h, i), owned: true)

proc itemNumber*(self: gen_qtextlist_types.QTextList, param1: gen_qtextobject_types.QTextBlock): cint =
  fcQTextList_itemNumber(self.h, param1.h)

proc itemText*(self: gen_qtextlist_types.QTextList, param1: gen_qtextobject_types.QTextBlock): string =
  let v_ms = fcQTextList_itemText(self.h, param1.h)
  let vx_ret = string.fromBytes(v_ms)
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

proc format*(self: gen_qtextlist_types.QTextList): gen_qtextformat_types.QTextListFormat =
  gen_qtextformat_types.QTextListFormat(h: fcQTextList_format(self.h), owned: true)

proc tr*(_: type gen_qtextlist_types.QTextList, s: cstring, c: cstring): string =
  let v_ms = fcQTextList_tr2(s, c)
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

proc tr*(_: type gen_qtextlist_types.QTextList, s: cstring, c: cstring, n: cint): string =
  let v_ms = fcQTextList_tr3(s, c, n)
  let vx_ret = string.fromBytes(v_ms)
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
type QTextListVTable* {.inheritable, pure.} = object
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
proc QTextListmetaObject*(self: gen_qtextlist_types.QTextList): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQTextList_virtualbase_metaObject(self.h), owned: false)

proc cQTextList_vtable_callback_metaObject(self: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QTextListVTable](fcQTextList_vdata(self))
  let self = QTextList(h: self)
  var virtualReturn = vtbl[].metaObject(self)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc QTextListmetacast*(self: gen_qtextlist_types.QTextList, param1: cstring): pointer =
  fcQTextList_virtualbase_metacast(self.h, param1)

proc cQTextList_vtable_callback_metacast(self: pointer, param1: cstring): pointer {.cdecl.} =
  let vtbl = cast[ptr QTextListVTable](fcQTextList_vdata(self))
  let self = QTextList(h: self)
  let slotval1 = (param1)
  var virtualReturn = vtbl[].metacast(self, slotval1)
  virtualReturn

proc QTextListmetacall*(self: gen_qtextlist_types.QTextList, param1: cint, param2: cint, param3: pointer): cint =
  fcQTextList_virtualbase_metacall(self.h, cint(param1), param2, param3)

proc cQTextList_vtable_callback_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.cdecl.} =
  let vtbl = cast[ptr QTextListVTable](fcQTextList_vdata(self))
  let self = QTextList(h: self)
  let slotval1 = cint(param1)
  let slotval2 = param2
  let slotval3 = param3
  var virtualReturn = vtbl[].metacall(self, slotval1, slotval2, slotval3)
  virtualReturn

proc QTextListblockInserted*(self: gen_qtextlist_types.QTextList, blockVal: gen_qtextobject_types.QTextBlock): void =
  fcQTextList_virtualbase_blockInserted(self.h, blockVal.h)

proc cQTextList_vtable_callback_blockInserted(self: pointer, blockVal: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QTextListVTable](fcQTextList_vdata(self))
  let self = QTextList(h: self)
  let slotval1 = gen_qtextobject_types.QTextBlock(h: blockVal, owned: false)
  vtbl[].blockInserted(self, slotval1)

proc QTextListblockRemoved*(self: gen_qtextlist_types.QTextList, blockVal: gen_qtextobject_types.QTextBlock): void =
  fcQTextList_virtualbase_blockRemoved(self.h, blockVal.h)

proc cQTextList_vtable_callback_blockRemoved(self: pointer, blockVal: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QTextListVTable](fcQTextList_vdata(self))
  let self = QTextList(h: self)
  let slotval1 = gen_qtextobject_types.QTextBlock(h: blockVal, owned: false)
  vtbl[].blockRemoved(self, slotval1)

proc QTextListblockFormatChanged*(self: gen_qtextlist_types.QTextList, blockVal: gen_qtextobject_types.QTextBlock): void =
  fcQTextList_virtualbase_blockFormatChanged(self.h, blockVal.h)

proc cQTextList_vtable_callback_blockFormatChanged(self: pointer, blockVal: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QTextListVTable](fcQTextList_vdata(self))
  let self = QTextList(h: self)
  let slotval1 = gen_qtextobject_types.QTextBlock(h: blockVal, owned: false)
  vtbl[].blockFormatChanged(self, slotval1)

proc QTextListevent*(self: gen_qtextlist_types.QTextList, event: gen_qcoreevent_types.QEvent): bool =
  fcQTextList_virtualbase_event(self.h, event.h)

proc cQTextList_vtable_callback_event(self: pointer, event: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QTextListVTable](fcQTextList_vdata(self))
  let self = QTextList(h: self)
  let slotval1 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  var virtualReturn = vtbl[].event(self, slotval1)
  virtualReturn

proc QTextListeventFilter*(self: gen_qtextlist_types.QTextList, watched: gen_qobject_types.QObject, event: gen_qcoreevent_types.QEvent): bool =
  fcQTextList_virtualbase_eventFilter(self.h, watched.h, event.h)

proc cQTextList_vtable_callback_eventFilter(self: pointer, watched: pointer, event: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QTextListVTable](fcQTextList_vdata(self))
  let self = QTextList(h: self)
  let slotval1 = gen_qobject_types.QObject(h: watched, owned: false)
  let slotval2 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  var virtualReturn = vtbl[].eventFilter(self, slotval1, slotval2)
  virtualReturn

proc QTextListtimerEvent*(self: gen_qtextlist_types.QTextList, event: gen_qcoreevent_types.QTimerEvent): void =
  fcQTextList_virtualbase_timerEvent(self.h, event.h)

proc cQTextList_vtable_callback_timerEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QTextListVTable](fcQTextList_vdata(self))
  let self = QTextList(h: self)
  let slotval1 = gen_qcoreevent_types.QTimerEvent(h: event, owned: false)
  vtbl[].timerEvent(self, slotval1)

proc QTextListchildEvent*(self: gen_qtextlist_types.QTextList, event: gen_qcoreevent_types.QChildEvent): void =
  fcQTextList_virtualbase_childEvent(self.h, event.h)

proc cQTextList_vtable_callback_childEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QTextListVTable](fcQTextList_vdata(self))
  let self = QTextList(h: self)
  let slotval1 = gen_qcoreevent_types.QChildEvent(h: event, owned: false)
  vtbl[].childEvent(self, slotval1)

proc QTextListcustomEvent*(self: gen_qtextlist_types.QTextList, event: gen_qcoreevent_types.QEvent): void =
  fcQTextList_virtualbase_customEvent(self.h, event.h)

proc cQTextList_vtable_callback_customEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QTextListVTable](fcQTextList_vdata(self))
  let self = QTextList(h: self)
  let slotval1 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  vtbl[].customEvent(self, slotval1)

proc QTextListconnectNotify*(self: gen_qtextlist_types.QTextList, signal: gen_qmetaobject_types.QMetaMethod): void =
  fcQTextList_virtualbase_connectNotify(self.h, signal.h)

proc cQTextList_vtable_callback_connectNotify(self: pointer, signal: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QTextListVTable](fcQTextList_vdata(self))
  let self = QTextList(h: self)
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal, owned: false)
  vtbl[].connectNotify(self, slotval1)

proc QTextListdisconnectNotify*(self: gen_qtextlist_types.QTextList, signal: gen_qmetaobject_types.QMetaMethod): void =
  fcQTextList_virtualbase_disconnectNotify(self.h, signal.h)

proc cQTextList_vtable_callback_disconnectNotify(self: pointer, signal: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QTextListVTable](fcQTextList_vdata(self))
  let self = QTextList(h: self)
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal, owned: false)
  vtbl[].disconnectNotify(self, slotval1)

type VirtualQTextList* {.inheritable.} = ref object of QTextList
  vtbl*: cQTextListVTable
method metaObject*(self: VirtualQTextList): gen_qobjectdefs_types.QMetaObject {.base.} =
  QTextListmetaObject(self[])
proc cQTextList_method_callback_metaObject(self: pointer): pointer {.cdecl.} =
  let inst = cast[VirtualQTextList](fcQTextList_vdata(self))
  var virtualReturn = inst.metaObject()
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

method metacast*(self: VirtualQTextList, param1: cstring): pointer {.base.} =
  QTextListmetacast(self[], param1)
proc cQTextList_method_callback_metacast(self: pointer, param1: cstring): pointer {.cdecl.} =
  let inst = cast[VirtualQTextList](fcQTextList_vdata(self))
  let slotval1 = (param1)
  var virtualReturn = inst.metacast(slotval1)
  virtualReturn

method metacall*(self: VirtualQTextList, param1: cint, param2: cint, param3: pointer): cint {.base.} =
  QTextListmetacall(self[], param1, param2, param3)
proc cQTextList_method_callback_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.cdecl.} =
  let inst = cast[VirtualQTextList](fcQTextList_vdata(self))
  let slotval1 = cint(param1)
  let slotval2 = param2
  let slotval3 = param3
  var virtualReturn = inst.metacall(slotval1, slotval2, slotval3)
  virtualReturn

method blockInserted*(self: VirtualQTextList, blockVal: gen_qtextobject_types.QTextBlock): void {.base.} =
  QTextListblockInserted(self[], blockVal)
proc cQTextList_method_callback_blockInserted(self: pointer, blockVal: pointer): void {.cdecl.} =
  let inst = cast[VirtualQTextList](fcQTextList_vdata(self))
  let slotval1 = gen_qtextobject_types.QTextBlock(h: blockVal, owned: false)
  inst.blockInserted(slotval1)

method blockRemoved*(self: VirtualQTextList, blockVal: gen_qtextobject_types.QTextBlock): void {.base.} =
  QTextListblockRemoved(self[], blockVal)
proc cQTextList_method_callback_blockRemoved(self: pointer, blockVal: pointer): void {.cdecl.} =
  let inst = cast[VirtualQTextList](fcQTextList_vdata(self))
  let slotval1 = gen_qtextobject_types.QTextBlock(h: blockVal, owned: false)
  inst.blockRemoved(slotval1)

method blockFormatChanged*(self: VirtualQTextList, blockVal: gen_qtextobject_types.QTextBlock): void {.base.} =
  QTextListblockFormatChanged(self[], blockVal)
proc cQTextList_method_callback_blockFormatChanged(self: pointer, blockVal: pointer): void {.cdecl.} =
  let inst = cast[VirtualQTextList](fcQTextList_vdata(self))
  let slotval1 = gen_qtextobject_types.QTextBlock(h: blockVal, owned: false)
  inst.blockFormatChanged(slotval1)

method event*(self: VirtualQTextList, event: gen_qcoreevent_types.QEvent): bool {.base.} =
  QTextListevent(self[], event)
proc cQTextList_method_callback_event(self: pointer, event: pointer): bool {.cdecl.} =
  let inst = cast[VirtualQTextList](fcQTextList_vdata(self))
  let slotval1 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  var virtualReturn = inst.event(slotval1)
  virtualReturn

method eventFilter*(self: VirtualQTextList, watched: gen_qobject_types.QObject, event: gen_qcoreevent_types.QEvent): bool {.base.} =
  QTextListeventFilter(self[], watched, event)
proc cQTextList_method_callback_eventFilter(self: pointer, watched: pointer, event: pointer): bool {.cdecl.} =
  let inst = cast[VirtualQTextList](fcQTextList_vdata(self))
  let slotval1 = gen_qobject_types.QObject(h: watched, owned: false)
  let slotval2 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  var virtualReturn = inst.eventFilter(slotval1, slotval2)
  virtualReturn

method timerEvent*(self: VirtualQTextList, event: gen_qcoreevent_types.QTimerEvent): void {.base.} =
  QTextListtimerEvent(self[], event)
proc cQTextList_method_callback_timerEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQTextList](fcQTextList_vdata(self))
  let slotval1 = gen_qcoreevent_types.QTimerEvent(h: event, owned: false)
  inst.timerEvent(slotval1)

method childEvent*(self: VirtualQTextList, event: gen_qcoreevent_types.QChildEvent): void {.base.} =
  QTextListchildEvent(self[], event)
proc cQTextList_method_callback_childEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQTextList](fcQTextList_vdata(self))
  let slotval1 = gen_qcoreevent_types.QChildEvent(h: event, owned: false)
  inst.childEvent(slotval1)

method customEvent*(self: VirtualQTextList, event: gen_qcoreevent_types.QEvent): void {.base.} =
  QTextListcustomEvent(self[], event)
proc cQTextList_method_callback_customEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQTextList](fcQTextList_vdata(self))
  let slotval1 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  inst.customEvent(slotval1)

method connectNotify*(self: VirtualQTextList, signal: gen_qmetaobject_types.QMetaMethod): void {.base.} =
  QTextListconnectNotify(self[], signal)
proc cQTextList_method_callback_connectNotify(self: pointer, signal: pointer): void {.cdecl.} =
  let inst = cast[VirtualQTextList](fcQTextList_vdata(self))
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal, owned: false)
  inst.connectNotify(slotval1)

method disconnectNotify*(self: VirtualQTextList, signal: gen_qmetaobject_types.QMetaMethod): void {.base.} =
  QTextListdisconnectNotify(self[], signal)
proc cQTextList_method_callback_disconnectNotify(self: pointer, signal: pointer): void {.cdecl.} =
  let inst = cast[VirtualQTextList](fcQTextList_vdata(self))
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal, owned: false)
  inst.disconnectNotify(slotval1)

proc blockList*(self: gen_qtextlist_types.QTextList): seq[gen_qtextobject_types.QTextBlock] =
  var v_ma = fcQTextList_protectedbase_blockList(self.h)
  var vx_ret = newSeq[gen_qtextobject_types.QTextBlock](int(v_ma.len))
  let v_outCast = cast[ptr UncheckedArray[pointer]](v_ma.data)
  for i in 0 ..< v_ma.len:
    vx_ret[i] = gen_qtextobject_types.QTextBlock(h: v_outCast[i], owned: true)
  c_free(v_ma.data)
  vx_ret

proc sender*(self: gen_qtextlist_types.QTextList): gen_qobject_types.QObject =
  gen_qobject_types.QObject(h: fcQTextList_protectedbase_sender(self.h), owned: false)

proc senderSignalIndex*(self: gen_qtextlist_types.QTextList): cint =
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
  vtbl[].vtbl.destructor = proc(self: pointer) {.cdecl.} =
    let vtbl = cast[ref QTextListVTable](fcQTextList_vdata(self))
    GC_unref(vtbl)
  if not isNil(vtbl[].metaObject):
    vtbl[].vtbl.metaObject = cQTextList_vtable_callback_metaObject
  if not isNil(vtbl[].metacast):
    vtbl[].vtbl.metacast = cQTextList_vtable_callback_metacast
  if not isNil(vtbl[].metacall):
    vtbl[].vtbl.metacall = cQTextList_vtable_callback_metacall
  if not isNil(vtbl[].blockInserted):
    vtbl[].vtbl.blockInserted = cQTextList_vtable_callback_blockInserted
  if not isNil(vtbl[].blockRemoved):
    vtbl[].vtbl.blockRemoved = cQTextList_vtable_callback_blockRemoved
  if not isNil(vtbl[].blockFormatChanged):
    vtbl[].vtbl.blockFormatChanged = cQTextList_vtable_callback_blockFormatChanged
  if not isNil(vtbl[].event):
    vtbl[].vtbl.event = cQTextList_vtable_callback_event
  if not isNil(vtbl[].eventFilter):
    vtbl[].vtbl.eventFilter = cQTextList_vtable_callback_eventFilter
  if not isNil(vtbl[].timerEvent):
    vtbl[].vtbl.timerEvent = cQTextList_vtable_callback_timerEvent
  if not isNil(vtbl[].childEvent):
    vtbl[].vtbl.childEvent = cQTextList_vtable_callback_childEvent
  if not isNil(vtbl[].customEvent):
    vtbl[].vtbl.customEvent = cQTextList_vtable_callback_customEvent
  if not isNil(vtbl[].connectNotify):
    vtbl[].vtbl.connectNotify = cQTextList_vtable_callback_connectNotify
  if not isNil(vtbl[].disconnectNotify):
    vtbl[].vtbl.disconnectNotify = cQTextList_vtable_callback_disconnectNotify
  gen_qtextlist_types.QTextList(h: fcQTextList_new(addr(vtbl[].vtbl), addr(vtbl[]), doc.h), owned: true)

const cQTextList_mvtbl = cQTextListVTable(
  destructor: proc(self: pointer) {.cdecl.} =
    let inst = cast[ptr typeof(VirtualQTextList()[])](self.fcQTextList_vtbl())
    inst[].h = nil
    inst[].owned = false,
  metaObject: cQTextList_method_callback_metaObject,
  metacast: cQTextList_method_callback_metacast,
  metacall: cQTextList_method_callback_metacall,
  blockInserted: cQTextList_method_callback_blockInserted,
  blockRemoved: cQTextList_method_callback_blockRemoved,
  blockFormatChanged: cQTextList_method_callback_blockFormatChanged,
  event: cQTextList_method_callback_event,
  eventFilter: cQTextList_method_callback_eventFilter,
  timerEvent: cQTextList_method_callback_timerEvent,
  childEvent: cQTextList_method_callback_childEvent,
  customEvent: cQTextList_method_callback_customEvent,
  connectNotify: cQTextList_method_callback_connectNotify,
  disconnectNotify: cQTextList_method_callback_disconnectNotify,
)
proc create*(T: type gen_qtextlist_types.QTextList,
    doc: gen_qtextdocument_types.QTextDocument,
    inst: VirtualQTextList) =
  if inst[].h != nil: delete(move(inst[]))
  inst[].h = fcQTextList_new(addr(cQTextList_mvtbl), addr(inst[]), doc.h)
  inst[].owned = true

proc staticMetaObject*(_: type gen_qtextlist_types.QTextList): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQTextList_staticMetaObject())
