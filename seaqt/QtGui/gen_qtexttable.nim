import ./Qt5Gui_libs

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

const cflags = gorge("pkg-config --cflags Qt5Gui")  & " -fPIC"
{.compile("gen_qtexttable.cpp", cflags).}


import ./gen_qtexttable_types
export gen_qtexttable_types

import
  ../QtCore/gen_qcoreevent_types,
  ../QtCore/gen_qmetaobject_types,
  ../QtCore/gen_qobject_types,
  ../QtCore/gen_qobjectdefs_types,
  ./gen_qtextcursor_types,
  ./gen_qtextdocument_types,
  ./gen_qtextformat_types,
  ./gen_qtextobject
export
  gen_qcoreevent_types,
  gen_qmetaobject_types,
  gen_qobject_types,
  gen_qobjectdefs_types,
  gen_qtextcursor_types,
  gen_qtextdocument_types,
  gen_qtextformat_types,
  gen_qtextobject

type cQTextTableCell*{.exportc: "QTextTableCell", incompleteStruct.} = object
type cQTextTable*{.exportc: "QTextTable", incompleteStruct.} = object

proc fcQTextTableCell_new(): ptr cQTextTableCell {.importc: "QTextTableCell_new".}
proc fcQTextTableCell_new2(o: pointer): ptr cQTextTableCell {.importc: "QTextTableCell_new2".}
proc fcQTextTableCell_operatorAssign(self: pointer, o: pointer): void {.importc: "QTextTableCell_operatorAssign".}
proc fcQTextTableCell_setFormat(self: pointer, format: pointer): void {.importc: "QTextTableCell_setFormat".}
proc fcQTextTableCell_format(self: pointer, ): pointer {.importc: "QTextTableCell_format".}
proc fcQTextTableCell_row(self: pointer, ): cint {.importc: "QTextTableCell_row".}
proc fcQTextTableCell_column(self: pointer, ): cint {.importc: "QTextTableCell_column".}
proc fcQTextTableCell_rowSpan(self: pointer, ): cint {.importc: "QTextTableCell_rowSpan".}
proc fcQTextTableCell_columnSpan(self: pointer, ): cint {.importc: "QTextTableCell_columnSpan".}
proc fcQTextTableCell_isValid(self: pointer, ): bool {.importc: "QTextTableCell_isValid".}
proc fcQTextTableCell_firstCursorPosition(self: pointer, ): pointer {.importc: "QTextTableCell_firstCursorPosition".}
proc fcQTextTableCell_lastCursorPosition(self: pointer, ): pointer {.importc: "QTextTableCell_lastCursorPosition".}
proc fcQTextTableCell_firstPosition(self: pointer, ): cint {.importc: "QTextTableCell_firstPosition".}
proc fcQTextTableCell_lastPosition(self: pointer, ): cint {.importc: "QTextTableCell_lastPosition".}
proc fcQTextTableCell_operatorEqual(self: pointer, other: pointer): bool {.importc: "QTextTableCell_operatorEqual".}
proc fcQTextTableCell_operatorNotEqual(self: pointer, other: pointer): bool {.importc: "QTextTableCell_operatorNotEqual".}
proc fcQTextTableCell_begin(self: pointer, ): pointer {.importc: "QTextTableCell_begin".}
proc fcQTextTableCell_endX(self: pointer, ): pointer {.importc: "QTextTableCell_end".}
proc fcQTextTableCell_tableCellFormatIndex(self: pointer, ): cint {.importc: "QTextTableCell_tableCellFormatIndex".}
proc fcQTextTableCell_delete(self: pointer) {.importc: "QTextTableCell_delete".}
proc fcQTextTable_new(doc: pointer): ptr cQTextTable {.importc: "QTextTable_new".}
proc fcQTextTable_metaObject(self: pointer, ): pointer {.importc: "QTextTable_metaObject".}
proc fcQTextTable_metacast(self: pointer, param1: cstring): pointer {.importc: "QTextTable_metacast".}
proc fcQTextTable_tr(s: cstring): struct_miqt_string {.importc: "QTextTable_tr".}
proc fcQTextTable_trUtf8(s: cstring): struct_miqt_string {.importc: "QTextTable_trUtf8".}
proc fcQTextTable_resize(self: pointer, rows: cint, cols: cint): void {.importc: "QTextTable_resize".}
proc fcQTextTable_insertRows(self: pointer, pos: cint, num: cint): void {.importc: "QTextTable_insertRows".}
proc fcQTextTable_insertColumns(self: pointer, pos: cint, num: cint): void {.importc: "QTextTable_insertColumns".}
proc fcQTextTable_appendRows(self: pointer, count: cint): void {.importc: "QTextTable_appendRows".}
proc fcQTextTable_appendColumns(self: pointer, count: cint): void {.importc: "QTextTable_appendColumns".}
proc fcQTextTable_removeRows(self: pointer, pos: cint, num: cint): void {.importc: "QTextTable_removeRows".}
proc fcQTextTable_removeColumns(self: pointer, pos: cint, num: cint): void {.importc: "QTextTable_removeColumns".}
proc fcQTextTable_mergeCells(self: pointer, row: cint, col: cint, numRows: cint, numCols: cint): void {.importc: "QTextTable_mergeCells".}
proc fcQTextTable_mergeCellsWithCursor(self: pointer, cursor: pointer): void {.importc: "QTextTable_mergeCellsWithCursor".}
proc fcQTextTable_splitCell(self: pointer, row: cint, col: cint, numRows: cint, numCols: cint): void {.importc: "QTextTable_splitCell".}
proc fcQTextTable_rows(self: pointer, ): cint {.importc: "QTextTable_rows".}
proc fcQTextTable_columns(self: pointer, ): cint {.importc: "QTextTable_columns".}
proc fcQTextTable_cellAt(self: pointer, row: cint, col: cint): pointer {.importc: "QTextTable_cellAt".}
proc fcQTextTable_cellAtWithPosition(self: pointer, position: cint): pointer {.importc: "QTextTable_cellAtWithPosition".}
proc fcQTextTable_cellAtWithQTextCursor(self: pointer, c: pointer): pointer {.importc: "QTextTable_cellAtWithQTextCursor".}
proc fcQTextTable_rowStart(self: pointer, c: pointer): pointer {.importc: "QTextTable_rowStart".}
proc fcQTextTable_rowEnd(self: pointer, c: pointer): pointer {.importc: "QTextTable_rowEnd".}
proc fcQTextTable_setFormat(self: pointer, format: pointer): void {.importc: "QTextTable_setFormat".}
proc fcQTextTable_format(self: pointer, ): pointer {.importc: "QTextTable_format".}
proc fcQTextTable_tr2(s: cstring, c: cstring): struct_miqt_string {.importc: "QTextTable_tr2".}
proc fcQTextTable_tr3(s: cstring, c: cstring, n: cint): struct_miqt_string {.importc: "QTextTable_tr3".}
proc fcQTextTable_trUtf82(s: cstring, c: cstring): struct_miqt_string {.importc: "QTextTable_trUtf82".}
proc fcQTextTable_trUtf83(s: cstring, c: cstring, n: cint): struct_miqt_string {.importc: "QTextTable_trUtf83".}
proc fQTextTable_virtualbase_event(self: pointer, event: pointer): bool{.importc: "QTextTable_virtualbase_event".}
proc fcQTextTable_override_virtual_event(self: pointer, slot: int) {.importc: "QTextTable_override_virtual_event".}
proc fQTextTable_virtualbase_eventFilter(self: pointer, watched: pointer, event: pointer): bool{.importc: "QTextTable_virtualbase_eventFilter".}
proc fcQTextTable_override_virtual_eventFilter(self: pointer, slot: int) {.importc: "QTextTable_override_virtual_eventFilter".}
proc fQTextTable_virtualbase_timerEvent(self: pointer, event: pointer): void{.importc: "QTextTable_virtualbase_timerEvent".}
proc fcQTextTable_override_virtual_timerEvent(self: pointer, slot: int) {.importc: "QTextTable_override_virtual_timerEvent".}
proc fQTextTable_virtualbase_childEvent(self: pointer, event: pointer): void{.importc: "QTextTable_virtualbase_childEvent".}
proc fcQTextTable_override_virtual_childEvent(self: pointer, slot: int) {.importc: "QTextTable_override_virtual_childEvent".}
proc fQTextTable_virtualbase_customEvent(self: pointer, event: pointer): void{.importc: "QTextTable_virtualbase_customEvent".}
proc fcQTextTable_override_virtual_customEvent(self: pointer, slot: int) {.importc: "QTextTable_override_virtual_customEvent".}
proc fQTextTable_virtualbase_connectNotify(self: pointer, signal: pointer): void{.importc: "QTextTable_virtualbase_connectNotify".}
proc fcQTextTable_override_virtual_connectNotify(self: pointer, slot: int) {.importc: "QTextTable_override_virtual_connectNotify".}
proc fQTextTable_virtualbase_disconnectNotify(self: pointer, signal: pointer): void{.importc: "QTextTable_virtualbase_disconnectNotify".}
proc fcQTextTable_override_virtual_disconnectNotify(self: pointer, slot: int) {.importc: "QTextTable_override_virtual_disconnectNotify".}
proc fcQTextTable_delete(self: pointer) {.importc: "QTextTable_delete".}


func init*(T: type gen_qtexttable_types.QTextTableCell, h: ptr cQTextTableCell): gen_qtexttable_types.QTextTableCell =
  T(h: h)
proc create*(T: type gen_qtexttable_types.QTextTableCell, ): gen_qtexttable_types.QTextTableCell =
  gen_qtexttable_types.QTextTableCell.init(fcQTextTableCell_new())

proc create*(T: type gen_qtexttable_types.QTextTableCell, o: gen_qtexttable_types.QTextTableCell): gen_qtexttable_types.QTextTableCell =
  gen_qtexttable_types.QTextTableCell.init(fcQTextTableCell_new2(o.h))

proc operatorAssign*(self: gen_qtexttable_types.QTextTableCell, o: gen_qtexttable_types.QTextTableCell): void =
  fcQTextTableCell_operatorAssign(self.h, o.h)

proc setFormat*(self: gen_qtexttable_types.QTextTableCell, format: gen_qtextformat_types.QTextCharFormat): void =
  fcQTextTableCell_setFormat(self.h, format.h)

proc format*(self: gen_qtexttable_types.QTextTableCell, ): gen_qtextformat_types.QTextCharFormat =
  gen_qtextformat_types.QTextCharFormat(h: fcQTextTableCell_format(self.h))

proc row*(self: gen_qtexttable_types.QTextTableCell, ): cint =
  fcQTextTableCell_row(self.h)

proc column*(self: gen_qtexttable_types.QTextTableCell, ): cint =
  fcQTextTableCell_column(self.h)

proc rowSpan*(self: gen_qtexttable_types.QTextTableCell, ): cint =
  fcQTextTableCell_rowSpan(self.h)

proc columnSpan*(self: gen_qtexttable_types.QTextTableCell, ): cint =
  fcQTextTableCell_columnSpan(self.h)

proc isValid*(self: gen_qtexttable_types.QTextTableCell, ): bool =
  fcQTextTableCell_isValid(self.h)

proc firstCursorPosition*(self: gen_qtexttable_types.QTextTableCell, ): gen_qtextcursor_types.QTextCursor =
  gen_qtextcursor_types.QTextCursor(h: fcQTextTableCell_firstCursorPosition(self.h))

proc lastCursorPosition*(self: gen_qtexttable_types.QTextTableCell, ): gen_qtextcursor_types.QTextCursor =
  gen_qtextcursor_types.QTextCursor(h: fcQTextTableCell_lastCursorPosition(self.h))

proc firstPosition*(self: gen_qtexttable_types.QTextTableCell, ): cint =
  fcQTextTableCell_firstPosition(self.h)

proc lastPosition*(self: gen_qtexttable_types.QTextTableCell, ): cint =
  fcQTextTableCell_lastPosition(self.h)

proc operatorEqual*(self: gen_qtexttable_types.QTextTableCell, other: gen_qtexttable_types.QTextTableCell): bool =
  fcQTextTableCell_operatorEqual(self.h, other.h)

proc operatorNotEqual*(self: gen_qtexttable_types.QTextTableCell, other: gen_qtexttable_types.QTextTableCell): bool =
  fcQTextTableCell_operatorNotEqual(self.h, other.h)

proc begin*(self: gen_qtexttable_types.QTextTableCell, ): gen_qtextobject_types.QTextFrameiterator =
  gen_qtextobject_types.QTextFrameiterator(h: fcQTextTableCell_begin(self.h))

proc endX*(self: gen_qtexttable_types.QTextTableCell, ): gen_qtextobject_types.QTextFrameiterator =
  gen_qtextobject_types.QTextFrameiterator(h: fcQTextTableCell_endX(self.h))

proc tableCellFormatIndex*(self: gen_qtexttable_types.QTextTableCell, ): cint =
  fcQTextTableCell_tableCellFormatIndex(self.h)

proc delete*(self: gen_qtexttable_types.QTextTableCell) =
  fcQTextTableCell_delete(self.h)

func init*(T: type gen_qtexttable_types.QTextTable, h: ptr cQTextTable): gen_qtexttable_types.QTextTable =
  T(h: h)
proc create*(T: type gen_qtexttable_types.QTextTable, doc: gen_qtextdocument_types.QTextDocument): gen_qtexttable_types.QTextTable =
  gen_qtexttable_types.QTextTable.init(fcQTextTable_new(doc.h))

proc metaObject*(self: gen_qtexttable_types.QTextTable, ): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQTextTable_metaObject(self.h))

proc metacast*(self: gen_qtexttable_types.QTextTable, param1: cstring): pointer =
  fcQTextTable_metacast(self.h, param1)

proc tr*(_: type gen_qtexttable_types.QTextTable, s: cstring): string =
  let v_ms = fcQTextTable_tr(s)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc trUtf8*(_: type gen_qtexttable_types.QTextTable, s: cstring): string =
  let v_ms = fcQTextTable_trUtf8(s)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc resize*(self: gen_qtexttable_types.QTextTable, rows: cint, cols: cint): void =
  fcQTextTable_resize(self.h, rows, cols)

proc insertRows*(self: gen_qtexttable_types.QTextTable, pos: cint, num: cint): void =
  fcQTextTable_insertRows(self.h, pos, num)

proc insertColumns*(self: gen_qtexttable_types.QTextTable, pos: cint, num: cint): void =
  fcQTextTable_insertColumns(self.h, pos, num)

proc appendRows*(self: gen_qtexttable_types.QTextTable, count: cint): void =
  fcQTextTable_appendRows(self.h, count)

proc appendColumns*(self: gen_qtexttable_types.QTextTable, count: cint): void =
  fcQTextTable_appendColumns(self.h, count)

proc removeRows*(self: gen_qtexttable_types.QTextTable, pos: cint, num: cint): void =
  fcQTextTable_removeRows(self.h, pos, num)

proc removeColumns*(self: gen_qtexttable_types.QTextTable, pos: cint, num: cint): void =
  fcQTextTable_removeColumns(self.h, pos, num)

proc mergeCells*(self: gen_qtexttable_types.QTextTable, row: cint, col: cint, numRows: cint, numCols: cint): void =
  fcQTextTable_mergeCells(self.h, row, col, numRows, numCols)

proc mergeCells*(self: gen_qtexttable_types.QTextTable, cursor: gen_qtextcursor_types.QTextCursor): void =
  fcQTextTable_mergeCellsWithCursor(self.h, cursor.h)

proc splitCell*(self: gen_qtexttable_types.QTextTable, row: cint, col: cint, numRows: cint, numCols: cint): void =
  fcQTextTable_splitCell(self.h, row, col, numRows, numCols)

proc rows*(self: gen_qtexttable_types.QTextTable, ): cint =
  fcQTextTable_rows(self.h)

proc columns*(self: gen_qtexttable_types.QTextTable, ): cint =
  fcQTextTable_columns(self.h)

proc cellAt*(self: gen_qtexttable_types.QTextTable, row: cint, col: cint): gen_qtexttable_types.QTextTableCell =
  gen_qtexttable_types.QTextTableCell(h: fcQTextTable_cellAt(self.h, row, col))

proc cellAt*(self: gen_qtexttable_types.QTextTable, position: cint): gen_qtexttable_types.QTextTableCell =
  gen_qtexttable_types.QTextTableCell(h: fcQTextTable_cellAtWithPosition(self.h, position))

proc cellAt*(self: gen_qtexttable_types.QTextTable, c: gen_qtextcursor_types.QTextCursor): gen_qtexttable_types.QTextTableCell =
  gen_qtexttable_types.QTextTableCell(h: fcQTextTable_cellAtWithQTextCursor(self.h, c.h))

proc rowStart*(self: gen_qtexttable_types.QTextTable, c: gen_qtextcursor_types.QTextCursor): gen_qtextcursor_types.QTextCursor =
  gen_qtextcursor_types.QTextCursor(h: fcQTextTable_rowStart(self.h, c.h))

proc rowEnd*(self: gen_qtexttable_types.QTextTable, c: gen_qtextcursor_types.QTextCursor): gen_qtextcursor_types.QTextCursor =
  gen_qtextcursor_types.QTextCursor(h: fcQTextTable_rowEnd(self.h, c.h))

proc setFormat*(self: gen_qtexttable_types.QTextTable, format: gen_qtextformat_types.QTextTableFormat): void =
  fcQTextTable_setFormat(self.h, format.h)

proc format*(self: gen_qtexttable_types.QTextTable, ): gen_qtextformat_types.QTextTableFormat =
  gen_qtextformat_types.QTextTableFormat(h: fcQTextTable_format(self.h))

proc tr*(_: type gen_qtexttable_types.QTextTable, s: cstring, c: cstring): string =
  let v_ms = fcQTextTable_tr2(s, c)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc tr*(_: type gen_qtexttable_types.QTextTable, s: cstring, c: cstring, n: cint): string =
  let v_ms = fcQTextTable_tr3(s, c, n)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc trUtf8*(_: type gen_qtexttable_types.QTextTable, s: cstring, c: cstring): string =
  let v_ms = fcQTextTable_trUtf82(s, c)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc trUtf8*(_: type gen_qtexttable_types.QTextTable, s: cstring, c: cstring, n: cint): string =
  let v_ms = fcQTextTable_trUtf83(s, c, n)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc QTextTableevent*(self: gen_qtexttable_types.QTextTable, event: gen_qcoreevent_types.QEvent): bool =
  fQTextTable_virtualbase_event(self.h, event.h)

type QTextTableeventProc* = proc(event: gen_qcoreevent_types.QEvent): bool
proc onevent*(self: gen_qtexttable_types.QTextTable, slot: QTextTableeventProc) =
  # TODO check subclass
  var tmp = new QTextTableeventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQTextTable_override_virtual_event(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QTextTable_event(self: ptr cQTextTable, slot: int, event: pointer): bool {.exportc: "miqt_exec_callback_QTextTable_event ".} =
  var nimfunc = cast[ptr QTextTableeventProc](cast[pointer](slot))
  let slotval1 = gen_qcoreevent_types.QEvent(h: event)


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn
proc QTextTableeventFilter*(self: gen_qtexttable_types.QTextTable, watched: gen_qobject_types.QObject, event: gen_qcoreevent_types.QEvent): bool =
  fQTextTable_virtualbase_eventFilter(self.h, watched.h, event.h)

type QTextTableeventFilterProc* = proc(watched: gen_qobject_types.QObject, event: gen_qcoreevent_types.QEvent): bool
proc oneventFilter*(self: gen_qtexttable_types.QTextTable, slot: QTextTableeventFilterProc) =
  # TODO check subclass
  var tmp = new QTextTableeventFilterProc
  tmp[] = slot
  GC_ref(tmp)
  fcQTextTable_override_virtual_eventFilter(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QTextTable_eventFilter(self: ptr cQTextTable, slot: int, watched: pointer, event: pointer): bool {.exportc: "miqt_exec_callback_QTextTable_eventFilter ".} =
  var nimfunc = cast[ptr QTextTableeventFilterProc](cast[pointer](slot))
  let slotval1 = gen_qobject_types.QObject(h: watched)

  let slotval2 = gen_qcoreevent_types.QEvent(h: event)


  let virtualReturn = nimfunc[](slotval1, slotval2 )

  virtualReturn
proc QTextTabletimerEvent*(self: gen_qtexttable_types.QTextTable, event: gen_qcoreevent_types.QTimerEvent): void =
  fQTextTable_virtualbase_timerEvent(self.h, event.h)

type QTextTabletimerEventProc* = proc(event: gen_qcoreevent_types.QTimerEvent): void
proc ontimerEvent*(self: gen_qtexttable_types.QTextTable, slot: QTextTabletimerEventProc) =
  # TODO check subclass
  var tmp = new QTextTabletimerEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQTextTable_override_virtual_timerEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QTextTable_timerEvent(self: ptr cQTextTable, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QTextTable_timerEvent ".} =
  var nimfunc = cast[ptr QTextTabletimerEventProc](cast[pointer](slot))
  let slotval1 = gen_qcoreevent_types.QTimerEvent(h: event)


  nimfunc[](slotval1)
proc QTextTablechildEvent*(self: gen_qtexttable_types.QTextTable, event: gen_qcoreevent_types.QChildEvent): void =
  fQTextTable_virtualbase_childEvent(self.h, event.h)

type QTextTablechildEventProc* = proc(event: gen_qcoreevent_types.QChildEvent): void
proc onchildEvent*(self: gen_qtexttable_types.QTextTable, slot: QTextTablechildEventProc) =
  # TODO check subclass
  var tmp = new QTextTablechildEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQTextTable_override_virtual_childEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QTextTable_childEvent(self: ptr cQTextTable, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QTextTable_childEvent ".} =
  var nimfunc = cast[ptr QTextTablechildEventProc](cast[pointer](slot))
  let slotval1 = gen_qcoreevent_types.QChildEvent(h: event)


  nimfunc[](slotval1)
proc QTextTablecustomEvent*(self: gen_qtexttable_types.QTextTable, event: gen_qcoreevent_types.QEvent): void =
  fQTextTable_virtualbase_customEvent(self.h, event.h)

type QTextTablecustomEventProc* = proc(event: gen_qcoreevent_types.QEvent): void
proc oncustomEvent*(self: gen_qtexttable_types.QTextTable, slot: QTextTablecustomEventProc) =
  # TODO check subclass
  var tmp = new QTextTablecustomEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQTextTable_override_virtual_customEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QTextTable_customEvent(self: ptr cQTextTable, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QTextTable_customEvent ".} =
  var nimfunc = cast[ptr QTextTablecustomEventProc](cast[pointer](slot))
  let slotval1 = gen_qcoreevent_types.QEvent(h: event)


  nimfunc[](slotval1)
proc QTextTableconnectNotify*(self: gen_qtexttable_types.QTextTable, signal: gen_qmetaobject_types.QMetaMethod): void =
  fQTextTable_virtualbase_connectNotify(self.h, signal.h)

type QTextTableconnectNotifyProc* = proc(signal: gen_qmetaobject_types.QMetaMethod): void
proc onconnectNotify*(self: gen_qtexttable_types.QTextTable, slot: QTextTableconnectNotifyProc) =
  # TODO check subclass
  var tmp = new QTextTableconnectNotifyProc
  tmp[] = slot
  GC_ref(tmp)
  fcQTextTable_override_virtual_connectNotify(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QTextTable_connectNotify(self: ptr cQTextTable, slot: int, signal: pointer): void {.exportc: "miqt_exec_callback_QTextTable_connectNotify ".} =
  var nimfunc = cast[ptr QTextTableconnectNotifyProc](cast[pointer](slot))
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal)


  nimfunc[](slotval1)
proc QTextTabledisconnectNotify*(self: gen_qtexttable_types.QTextTable, signal: gen_qmetaobject_types.QMetaMethod): void =
  fQTextTable_virtualbase_disconnectNotify(self.h, signal.h)

type QTextTabledisconnectNotifyProc* = proc(signal: gen_qmetaobject_types.QMetaMethod): void
proc ondisconnectNotify*(self: gen_qtexttable_types.QTextTable, slot: QTextTabledisconnectNotifyProc) =
  # TODO check subclass
  var tmp = new QTextTabledisconnectNotifyProc
  tmp[] = slot
  GC_ref(tmp)
  fcQTextTable_override_virtual_disconnectNotify(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QTextTable_disconnectNotify(self: ptr cQTextTable, slot: int, signal: pointer): void {.exportc: "miqt_exec_callback_QTextTable_disconnectNotify ".} =
  var nimfunc = cast[ptr QTextTabledisconnectNotifyProc](cast[pointer](slot))
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal)


  nimfunc[](slotval1)
proc delete*(self: gen_qtexttable_types.QTextTable) =
  fcQTextTable_delete(self.h)
