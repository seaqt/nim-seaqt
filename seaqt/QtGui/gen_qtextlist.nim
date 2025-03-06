import ./Qt6Gui_libs

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

const cflags = gorge("pkg-config --cflags Qt6Gui")  & " -fPIC"
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

proc fcQTextList_new(doc: pointer): ptr cQTextList {.importc: "QTextList_new".}
proc fcQTextList_metaObject(self: pointer, ): pointer {.importc: "QTextList_metaObject".}
proc fcQTextList_metacast(self: pointer, param1: cstring): pointer {.importc: "QTextList_metacast".}
proc fcQTextList_tr(s: cstring): struct_miqt_string {.importc: "QTextList_tr".}
proc fcQTextList_count(self: pointer, ): cint {.importc: "QTextList_count".}
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
proc fQTextList_virtualbase_blockInserted(self: pointer, blockVal: pointer): void{.importc: "QTextList_virtualbase_blockInserted".}
proc fcQTextList_override_virtual_blockInserted(self: pointer, slot: int) {.importc: "QTextList_override_virtual_blockInserted".}
proc fQTextList_virtualbase_blockRemoved(self: pointer, blockVal: pointer): void{.importc: "QTextList_virtualbase_blockRemoved".}
proc fcQTextList_override_virtual_blockRemoved(self: pointer, slot: int) {.importc: "QTextList_override_virtual_blockRemoved".}
proc fQTextList_virtualbase_blockFormatChanged(self: pointer, blockVal: pointer): void{.importc: "QTextList_virtualbase_blockFormatChanged".}
proc fcQTextList_override_virtual_blockFormatChanged(self: pointer, slot: int) {.importc: "QTextList_override_virtual_blockFormatChanged".}
proc fQTextList_virtualbase_event(self: pointer, event: pointer): bool{.importc: "QTextList_virtualbase_event".}
proc fcQTextList_override_virtual_event(self: pointer, slot: int) {.importc: "QTextList_override_virtual_event".}
proc fQTextList_virtualbase_eventFilter(self: pointer, watched: pointer, event: pointer): bool{.importc: "QTextList_virtualbase_eventFilter".}
proc fcQTextList_override_virtual_eventFilter(self: pointer, slot: int) {.importc: "QTextList_override_virtual_eventFilter".}
proc fQTextList_virtualbase_timerEvent(self: pointer, event: pointer): void{.importc: "QTextList_virtualbase_timerEvent".}
proc fcQTextList_override_virtual_timerEvent(self: pointer, slot: int) {.importc: "QTextList_override_virtual_timerEvent".}
proc fQTextList_virtualbase_childEvent(self: pointer, event: pointer): void{.importc: "QTextList_virtualbase_childEvent".}
proc fcQTextList_override_virtual_childEvent(self: pointer, slot: int) {.importc: "QTextList_override_virtual_childEvent".}
proc fQTextList_virtualbase_customEvent(self: pointer, event: pointer): void{.importc: "QTextList_virtualbase_customEvent".}
proc fcQTextList_override_virtual_customEvent(self: pointer, slot: int) {.importc: "QTextList_override_virtual_customEvent".}
proc fQTextList_virtualbase_connectNotify(self: pointer, signal: pointer): void{.importc: "QTextList_virtualbase_connectNotify".}
proc fcQTextList_override_virtual_connectNotify(self: pointer, slot: int) {.importc: "QTextList_override_virtual_connectNotify".}
proc fQTextList_virtualbase_disconnectNotify(self: pointer, signal: pointer): void{.importc: "QTextList_virtualbase_disconnectNotify".}
proc fcQTextList_override_virtual_disconnectNotify(self: pointer, slot: int) {.importc: "QTextList_override_virtual_disconnectNotify".}
proc fcQTextList_delete(self: pointer) {.importc: "QTextList_delete".}


func init*(T: type gen_qtextlist_types.QTextList, h: ptr cQTextList): gen_qtextlist_types.QTextList =
  T(h: h)
proc create*(T: type gen_qtextlist_types.QTextList, doc: gen_qtextdocument_types.QTextDocument): gen_qtextlist_types.QTextList =
  gen_qtextlist_types.QTextList.init(fcQTextList_new(doc.h))

proc metaObject*(self: gen_qtextlist_types.QTextList, ): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQTextList_metaObject(self.h))

proc metacast*(self: gen_qtextlist_types.QTextList, param1: cstring): pointer =
  fcQTextList_metacast(self.h, param1)

proc tr*(_: type gen_qtextlist_types.QTextList, s: cstring): string =
  let v_ms = fcQTextList_tr(s)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc count*(self: gen_qtextlist_types.QTextList, ): cint =
  fcQTextList_count(self.h)

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

proc QTextListblockInserted*(self: gen_qtextlist_types.QTextList, blockVal: gen_qtextobject_types.QTextBlock): void =
  fQTextList_virtualbase_blockInserted(self.h, blockVal.h)

type QTextListblockInsertedProc* = proc(blockVal: gen_qtextobject_types.QTextBlock): void
proc onblockInserted*(self: gen_qtextlist_types.QTextList, slot: QTextListblockInsertedProc) =
  # TODO check subclass
  var tmp = new QTextListblockInsertedProc
  tmp[] = slot
  GC_ref(tmp)
  fcQTextList_override_virtual_blockInserted(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QTextList_blockInserted(self: ptr cQTextList, slot: int, blockVal: pointer): void {.exportc: "miqt_exec_callback_QTextList_blockInserted ".} =
  var nimfunc = cast[ptr QTextListblockInsertedProc](cast[pointer](slot))
  let slotval1 = gen_qtextobject_types.QTextBlock(h: blockVal)


  nimfunc[](slotval1)
proc QTextListblockRemoved*(self: gen_qtextlist_types.QTextList, blockVal: gen_qtextobject_types.QTextBlock): void =
  fQTextList_virtualbase_blockRemoved(self.h, blockVal.h)

type QTextListblockRemovedProc* = proc(blockVal: gen_qtextobject_types.QTextBlock): void
proc onblockRemoved*(self: gen_qtextlist_types.QTextList, slot: QTextListblockRemovedProc) =
  # TODO check subclass
  var tmp = new QTextListblockRemovedProc
  tmp[] = slot
  GC_ref(tmp)
  fcQTextList_override_virtual_blockRemoved(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QTextList_blockRemoved(self: ptr cQTextList, slot: int, blockVal: pointer): void {.exportc: "miqt_exec_callback_QTextList_blockRemoved ".} =
  var nimfunc = cast[ptr QTextListblockRemovedProc](cast[pointer](slot))
  let slotval1 = gen_qtextobject_types.QTextBlock(h: blockVal)


  nimfunc[](slotval1)
proc QTextListblockFormatChanged*(self: gen_qtextlist_types.QTextList, blockVal: gen_qtextobject_types.QTextBlock): void =
  fQTextList_virtualbase_blockFormatChanged(self.h, blockVal.h)

type QTextListblockFormatChangedProc* = proc(blockVal: gen_qtextobject_types.QTextBlock): void
proc onblockFormatChanged*(self: gen_qtextlist_types.QTextList, slot: QTextListblockFormatChangedProc) =
  # TODO check subclass
  var tmp = new QTextListblockFormatChangedProc
  tmp[] = slot
  GC_ref(tmp)
  fcQTextList_override_virtual_blockFormatChanged(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QTextList_blockFormatChanged(self: ptr cQTextList, slot: int, blockVal: pointer): void {.exportc: "miqt_exec_callback_QTextList_blockFormatChanged ".} =
  var nimfunc = cast[ptr QTextListblockFormatChangedProc](cast[pointer](slot))
  let slotval1 = gen_qtextobject_types.QTextBlock(h: blockVal)


  nimfunc[](slotval1)
proc QTextListevent*(self: gen_qtextlist_types.QTextList, event: gen_qcoreevent_types.QEvent): bool =
  fQTextList_virtualbase_event(self.h, event.h)

type QTextListeventProc* = proc(event: gen_qcoreevent_types.QEvent): bool
proc onevent*(self: gen_qtextlist_types.QTextList, slot: QTextListeventProc) =
  # TODO check subclass
  var tmp = new QTextListeventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQTextList_override_virtual_event(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QTextList_event(self: ptr cQTextList, slot: int, event: pointer): bool {.exportc: "miqt_exec_callback_QTextList_event ".} =
  var nimfunc = cast[ptr QTextListeventProc](cast[pointer](slot))
  let slotval1 = gen_qcoreevent_types.QEvent(h: event)


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn
proc QTextListeventFilter*(self: gen_qtextlist_types.QTextList, watched: gen_qobject_types.QObject, event: gen_qcoreevent_types.QEvent): bool =
  fQTextList_virtualbase_eventFilter(self.h, watched.h, event.h)

type QTextListeventFilterProc* = proc(watched: gen_qobject_types.QObject, event: gen_qcoreevent_types.QEvent): bool
proc oneventFilter*(self: gen_qtextlist_types.QTextList, slot: QTextListeventFilterProc) =
  # TODO check subclass
  var tmp = new QTextListeventFilterProc
  tmp[] = slot
  GC_ref(tmp)
  fcQTextList_override_virtual_eventFilter(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QTextList_eventFilter(self: ptr cQTextList, slot: int, watched: pointer, event: pointer): bool {.exportc: "miqt_exec_callback_QTextList_eventFilter ".} =
  var nimfunc = cast[ptr QTextListeventFilterProc](cast[pointer](slot))
  let slotval1 = gen_qobject_types.QObject(h: watched)

  let slotval2 = gen_qcoreevent_types.QEvent(h: event)


  let virtualReturn = nimfunc[](slotval1, slotval2 )

  virtualReturn
proc QTextListtimerEvent*(self: gen_qtextlist_types.QTextList, event: gen_qcoreevent_types.QTimerEvent): void =
  fQTextList_virtualbase_timerEvent(self.h, event.h)

type QTextListtimerEventProc* = proc(event: gen_qcoreevent_types.QTimerEvent): void
proc ontimerEvent*(self: gen_qtextlist_types.QTextList, slot: QTextListtimerEventProc) =
  # TODO check subclass
  var tmp = new QTextListtimerEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQTextList_override_virtual_timerEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QTextList_timerEvent(self: ptr cQTextList, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QTextList_timerEvent ".} =
  var nimfunc = cast[ptr QTextListtimerEventProc](cast[pointer](slot))
  let slotval1 = gen_qcoreevent_types.QTimerEvent(h: event)


  nimfunc[](slotval1)
proc QTextListchildEvent*(self: gen_qtextlist_types.QTextList, event: gen_qcoreevent_types.QChildEvent): void =
  fQTextList_virtualbase_childEvent(self.h, event.h)

type QTextListchildEventProc* = proc(event: gen_qcoreevent_types.QChildEvent): void
proc onchildEvent*(self: gen_qtextlist_types.QTextList, slot: QTextListchildEventProc) =
  # TODO check subclass
  var tmp = new QTextListchildEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQTextList_override_virtual_childEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QTextList_childEvent(self: ptr cQTextList, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QTextList_childEvent ".} =
  var nimfunc = cast[ptr QTextListchildEventProc](cast[pointer](slot))
  let slotval1 = gen_qcoreevent_types.QChildEvent(h: event)


  nimfunc[](slotval1)
proc QTextListcustomEvent*(self: gen_qtextlist_types.QTextList, event: gen_qcoreevent_types.QEvent): void =
  fQTextList_virtualbase_customEvent(self.h, event.h)

type QTextListcustomEventProc* = proc(event: gen_qcoreevent_types.QEvent): void
proc oncustomEvent*(self: gen_qtextlist_types.QTextList, slot: QTextListcustomEventProc) =
  # TODO check subclass
  var tmp = new QTextListcustomEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQTextList_override_virtual_customEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QTextList_customEvent(self: ptr cQTextList, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QTextList_customEvent ".} =
  var nimfunc = cast[ptr QTextListcustomEventProc](cast[pointer](slot))
  let slotval1 = gen_qcoreevent_types.QEvent(h: event)


  nimfunc[](slotval1)
proc QTextListconnectNotify*(self: gen_qtextlist_types.QTextList, signal: gen_qmetaobject_types.QMetaMethod): void =
  fQTextList_virtualbase_connectNotify(self.h, signal.h)

type QTextListconnectNotifyProc* = proc(signal: gen_qmetaobject_types.QMetaMethod): void
proc onconnectNotify*(self: gen_qtextlist_types.QTextList, slot: QTextListconnectNotifyProc) =
  # TODO check subclass
  var tmp = new QTextListconnectNotifyProc
  tmp[] = slot
  GC_ref(tmp)
  fcQTextList_override_virtual_connectNotify(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QTextList_connectNotify(self: ptr cQTextList, slot: int, signal: pointer): void {.exportc: "miqt_exec_callback_QTextList_connectNotify ".} =
  var nimfunc = cast[ptr QTextListconnectNotifyProc](cast[pointer](slot))
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal)


  nimfunc[](slotval1)
proc QTextListdisconnectNotify*(self: gen_qtextlist_types.QTextList, signal: gen_qmetaobject_types.QMetaMethod): void =
  fQTextList_virtualbase_disconnectNotify(self.h, signal.h)

type QTextListdisconnectNotifyProc* = proc(signal: gen_qmetaobject_types.QMetaMethod): void
proc ondisconnectNotify*(self: gen_qtextlist_types.QTextList, slot: QTextListdisconnectNotifyProc) =
  # TODO check subclass
  var tmp = new QTextListdisconnectNotifyProc
  tmp[] = slot
  GC_ref(tmp)
  fcQTextList_override_virtual_disconnectNotify(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QTextList_disconnectNotify(self: ptr cQTextList, slot: int, signal: pointer): void {.exportc: "miqt_exec_callback_QTextList_disconnectNotify ".} =
  var nimfunc = cast[ptr QTextListdisconnectNotifyProc](cast[pointer](slot))
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal)


  nimfunc[](slotval1)
proc delete*(self: gen_qtextlist_types.QTextList) =
  fcQTextList_delete(self.h)
