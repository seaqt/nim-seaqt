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

proc fcQTextTableCell_operatorAssign(self: pointer, o: pointer): void {.importc: "QTextTableCell_operatorAssign".}
proc fcQTextTableCell_setFormat(self: pointer, format: pointer): void {.importc: "QTextTableCell_setFormat".}
proc fcQTextTableCell_format(self: pointer): pointer {.importc: "QTextTableCell_format".}
proc fcQTextTableCell_row(self: pointer): cint {.importc: "QTextTableCell_row".}
proc fcQTextTableCell_column(self: pointer): cint {.importc: "QTextTableCell_column".}
proc fcQTextTableCell_rowSpan(self: pointer): cint {.importc: "QTextTableCell_rowSpan".}
proc fcQTextTableCell_columnSpan(self: pointer): cint {.importc: "QTextTableCell_columnSpan".}
proc fcQTextTableCell_isValid(self: pointer): bool {.importc: "QTextTableCell_isValid".}
proc fcQTextTableCell_firstCursorPosition(self: pointer): pointer {.importc: "QTextTableCell_firstCursorPosition".}
proc fcQTextTableCell_lastCursorPosition(self: pointer): pointer {.importc: "QTextTableCell_lastCursorPosition".}
proc fcQTextTableCell_firstPosition(self: pointer): cint {.importc: "QTextTableCell_firstPosition".}
proc fcQTextTableCell_lastPosition(self: pointer): cint {.importc: "QTextTableCell_lastPosition".}
proc fcQTextTableCell_operatorEqual(self: pointer, other: pointer): bool {.importc: "QTextTableCell_operatorEqual".}
proc fcQTextTableCell_operatorNotEqual(self: pointer, other: pointer): bool {.importc: "QTextTableCell_operatorNotEqual".}
proc fcQTextTableCell_begin(self: pointer): pointer {.importc: "QTextTableCell_begin".}
proc fcQTextTableCell_endX(self: pointer): pointer {.importc: "QTextTableCell_end".}
proc fcQTextTableCell_tableCellFormatIndex(self: pointer): cint {.importc: "QTextTableCell_tableCellFormatIndex".}
proc fcQTextTableCell_new(): ptr cQTextTableCell {.importc: "QTextTableCell_new".}
proc fcQTextTableCell_new2(o: pointer): ptr cQTextTableCell {.importc: "QTextTableCell_new2".}
proc fcQTextTable_metaObject(self: pointer): pointer {.importc: "QTextTable_metaObject".}
proc fcQTextTable_metacast(self: pointer, param1: cstring): pointer {.importc: "QTextTable_metacast".}
proc fcQTextTable_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.importc: "QTextTable_metacall".}
proc fcQTextTable_tr(s: cstring): struct_miqt_string {.importc: "QTextTable_tr".}
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
proc fcQTextTable_rows(self: pointer): cint {.importc: "QTextTable_rows".}
proc fcQTextTable_columns(self: pointer): cint {.importc: "QTextTable_columns".}
proc fcQTextTable_cellAt(self: pointer, row: cint, col: cint): pointer {.importc: "QTextTable_cellAt".}
proc fcQTextTable_cellAtWithPosition(self: pointer, position: cint): pointer {.importc: "QTextTable_cellAtWithPosition".}
proc fcQTextTable_cellAtWithQTextCursor(self: pointer, c: pointer): pointer {.importc: "QTextTable_cellAtWithQTextCursor".}
proc fcQTextTable_rowStart(self: pointer, c: pointer): pointer {.importc: "QTextTable_rowStart".}
proc fcQTextTable_rowEnd(self: pointer, c: pointer): pointer {.importc: "QTextTable_rowEnd".}
proc fcQTextTable_setFormat(self: pointer, format: pointer): void {.importc: "QTextTable_setFormat".}
proc fcQTextTable_format(self: pointer): pointer {.importc: "QTextTable_format".}
proc fcQTextTable_tr2(s: cstring, c: cstring): struct_miqt_string {.importc: "QTextTable_tr2".}
proc fcQTextTable_tr3(s: cstring, c: cstring, n: cint): struct_miqt_string {.importc: "QTextTable_tr3".}
proc fcQTextTable_vtbl(self: pointer): pointer {.importc: "QTextTable_vtbl".}
proc fcQTextTable_vdata(self: pointer): pointer {.importc: "QTextTable_vdata".}

type cQTextTableVTable {.pure.} = object
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
proc fcQTextTable_virtualbase_metaObject(self: pointer): pointer {.importc: "QTextTable_virtualbase_metaObject".}
proc fcQTextTable_virtualbase_metacast(self: pointer, param1: cstring): pointer {.importc: "QTextTable_virtualbase_metacast".}
proc fcQTextTable_virtualbase_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.importc: "QTextTable_virtualbase_metacall".}
proc fcQTextTable_virtualbase_event(self: pointer, event: pointer): bool {.importc: "QTextTable_virtualbase_event".}
proc fcQTextTable_virtualbase_eventFilter(self: pointer, watched: pointer, event: pointer): bool {.importc: "QTextTable_virtualbase_eventFilter".}
proc fcQTextTable_virtualbase_timerEvent(self: pointer, event: pointer): void {.importc: "QTextTable_virtualbase_timerEvent".}
proc fcQTextTable_virtualbase_childEvent(self: pointer, event: pointer): void {.importc: "QTextTable_virtualbase_childEvent".}
proc fcQTextTable_virtualbase_customEvent(self: pointer, event: pointer): void {.importc: "QTextTable_virtualbase_customEvent".}
proc fcQTextTable_virtualbase_connectNotify(self: pointer, signal: pointer): void {.importc: "QTextTable_virtualbase_connectNotify".}
proc fcQTextTable_virtualbase_disconnectNotify(self: pointer, signal: pointer): void {.importc: "QTextTable_virtualbase_disconnectNotify".}
proc fcQTextTable_protectedbase_sender(self: pointer): pointer {.importc: "QTextTable_protectedbase_sender".}
proc fcQTextTable_protectedbase_senderSignalIndex(self: pointer): cint {.importc: "QTextTable_protectedbase_senderSignalIndex".}
proc fcQTextTable_protectedbase_receivers(self: pointer, signal: cstring): cint {.importc: "QTextTable_protectedbase_receivers".}
proc fcQTextTable_protectedbase_isSignalConnected(self: pointer, signal: pointer): bool {.importc: "QTextTable_protectedbase_isSignalConnected".}
proc fcQTextTable_new(vtbl, vdata: pointer, doc: pointer): ptr cQTextTable {.importc: "QTextTable_new".}
proc fcQTextTable_staticMetaObject(): pointer {.importc: "QTextTable_staticMetaObject".}

proc operatorAssign*(self: gen_qtexttable_types.QTextTableCell, o: gen_qtexttable_types.QTextTableCell): void =
  fcQTextTableCell_operatorAssign(self.h, o.h)

proc setFormat*(self: gen_qtexttable_types.QTextTableCell, format: gen_qtextformat_types.QTextCharFormat): void =
  fcQTextTableCell_setFormat(self.h, format.h)

proc format*(self: gen_qtexttable_types.QTextTableCell): gen_qtextformat_types.QTextCharFormat =
  gen_qtextformat_types.QTextCharFormat(h: fcQTextTableCell_format(self.h), owned: true)

proc row*(self: gen_qtexttable_types.QTextTableCell): cint =
  fcQTextTableCell_row(self.h)

proc column*(self: gen_qtexttable_types.QTextTableCell): cint =
  fcQTextTableCell_column(self.h)

proc rowSpan*(self: gen_qtexttable_types.QTextTableCell): cint =
  fcQTextTableCell_rowSpan(self.h)

proc columnSpan*(self: gen_qtexttable_types.QTextTableCell): cint =
  fcQTextTableCell_columnSpan(self.h)

proc isValid*(self: gen_qtexttable_types.QTextTableCell): bool =
  fcQTextTableCell_isValid(self.h)

proc firstCursorPosition*(self: gen_qtexttable_types.QTextTableCell): gen_qtextcursor_types.QTextCursor =
  gen_qtextcursor_types.QTextCursor(h: fcQTextTableCell_firstCursorPosition(self.h), owned: true)

proc lastCursorPosition*(self: gen_qtexttable_types.QTextTableCell): gen_qtextcursor_types.QTextCursor =
  gen_qtextcursor_types.QTextCursor(h: fcQTextTableCell_lastCursorPosition(self.h), owned: true)

proc firstPosition*(self: gen_qtexttable_types.QTextTableCell): cint =
  fcQTextTableCell_firstPosition(self.h)

proc lastPosition*(self: gen_qtexttable_types.QTextTableCell): cint =
  fcQTextTableCell_lastPosition(self.h)

proc operatorEqual*(self: gen_qtexttable_types.QTextTableCell, other: gen_qtexttable_types.QTextTableCell): bool =
  fcQTextTableCell_operatorEqual(self.h, other.h)

proc operatorNotEqual*(self: gen_qtexttable_types.QTextTableCell, other: gen_qtexttable_types.QTextTableCell): bool =
  fcQTextTableCell_operatorNotEqual(self.h, other.h)

proc begin*(self: gen_qtexttable_types.QTextTableCell): gen_qtextobject_types.QTextFrameiterator =
  gen_qtextobject_types.QTextFrameiterator(h: fcQTextTableCell_begin(self.h), owned: true)

proc endX*(self: gen_qtexttable_types.QTextTableCell): gen_qtextobject_types.QTextFrameiterator =
  gen_qtextobject_types.QTextFrameiterator(h: fcQTextTableCell_endX(self.h), owned: true)

proc tableCellFormatIndex*(self: gen_qtexttable_types.QTextTableCell): cint =
  fcQTextTableCell_tableCellFormatIndex(self.h)

proc create*(T: type gen_qtexttable_types.QTextTableCell): gen_qtexttable_types.QTextTableCell =
  gen_qtexttable_types.QTextTableCell(h: fcQTextTableCell_new(), owned: true)

proc create*(T: type gen_qtexttable_types.QTextTableCell,
    o: gen_qtexttable_types.QTextTableCell): gen_qtexttable_types.QTextTableCell =
  gen_qtexttable_types.QTextTableCell(h: fcQTextTableCell_new2(o.h), owned: true)

proc metaObject*(self: gen_qtexttable_types.QTextTable): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQTextTable_metaObject(self.h), owned: false)

proc metacast*(self: gen_qtexttable_types.QTextTable, param1: cstring): pointer =
  fcQTextTable_metacast(self.h, param1)

proc metacall*(self: gen_qtexttable_types.QTextTable, param1: cint, param2: cint, param3: pointer): cint =
  fcQTextTable_metacall(self.h, cint(param1), param2, param3)

proc tr*(_: type gen_qtexttable_types.QTextTable, s: cstring): string =
  let v_ms = fcQTextTable_tr(s)
  let vx_ret = string.fromBytes(v_ms)
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

proc rows*(self: gen_qtexttable_types.QTextTable): cint =
  fcQTextTable_rows(self.h)

proc columns*(self: gen_qtexttable_types.QTextTable): cint =
  fcQTextTable_columns(self.h)

proc cellAt*(self: gen_qtexttable_types.QTextTable, row: cint, col: cint): gen_qtexttable_types.QTextTableCell =
  gen_qtexttable_types.QTextTableCell(h: fcQTextTable_cellAt(self.h, row, col), owned: true)

proc cellAt*(self: gen_qtexttable_types.QTextTable, position: cint): gen_qtexttable_types.QTextTableCell =
  gen_qtexttable_types.QTextTableCell(h: fcQTextTable_cellAtWithPosition(self.h, position), owned: true)

proc cellAt*(self: gen_qtexttable_types.QTextTable, c: gen_qtextcursor_types.QTextCursor): gen_qtexttable_types.QTextTableCell =
  gen_qtexttable_types.QTextTableCell(h: fcQTextTable_cellAtWithQTextCursor(self.h, c.h), owned: true)

proc rowStart*(self: gen_qtexttable_types.QTextTable, c: gen_qtextcursor_types.QTextCursor): gen_qtextcursor_types.QTextCursor =
  gen_qtextcursor_types.QTextCursor(h: fcQTextTable_rowStart(self.h, c.h), owned: true)

proc rowEnd*(self: gen_qtexttable_types.QTextTable, c: gen_qtextcursor_types.QTextCursor): gen_qtextcursor_types.QTextCursor =
  gen_qtextcursor_types.QTextCursor(h: fcQTextTable_rowEnd(self.h, c.h), owned: true)

proc setFormat*(self: gen_qtexttable_types.QTextTable, format: gen_qtextformat_types.QTextTableFormat): void =
  fcQTextTable_setFormat(self.h, format.h)

proc format*(self: gen_qtexttable_types.QTextTable): gen_qtextformat_types.QTextTableFormat =
  gen_qtextformat_types.QTextTableFormat(h: fcQTextTable_format(self.h), owned: true)

proc tr*(_: type gen_qtexttable_types.QTextTable, s: cstring, c: cstring): string =
  let v_ms = fcQTextTable_tr2(s, c)
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

proc tr*(_: type gen_qtexttable_types.QTextTable, s: cstring, c: cstring, n: cint): string =
  let v_ms = fcQTextTable_tr3(s, c, n)
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

type QTextTablemetaObjectProc* = proc(self: QTextTable): gen_qobjectdefs_types.QMetaObject {.raises: [], gcsafe.}
type QTextTablemetacastProc* = proc(self: QTextTable, param1: cstring): pointer {.raises: [], gcsafe.}
type QTextTablemetacallProc* = proc(self: QTextTable, param1: cint, param2: cint, param3: pointer): cint {.raises: [], gcsafe.}
type QTextTableeventProc* = proc(self: QTextTable, event: gen_qcoreevent_types.QEvent): bool {.raises: [], gcsafe.}
type QTextTableeventFilterProc* = proc(self: QTextTable, watched: gen_qobject_types.QObject, event: gen_qcoreevent_types.QEvent): bool {.raises: [], gcsafe.}
type QTextTabletimerEventProc* = proc(self: QTextTable, event: gen_qcoreevent_types.QTimerEvent): void {.raises: [], gcsafe.}
type QTextTablechildEventProc* = proc(self: QTextTable, event: gen_qcoreevent_types.QChildEvent): void {.raises: [], gcsafe.}
type QTextTablecustomEventProc* = proc(self: QTextTable, event: gen_qcoreevent_types.QEvent): void {.raises: [], gcsafe.}
type QTextTableconnectNotifyProc* = proc(self: QTextTable, signal: gen_qmetaobject_types.QMetaMethod): void {.raises: [], gcsafe.}
type QTextTabledisconnectNotifyProc* = proc(self: QTextTable, signal: gen_qmetaobject_types.QMetaMethod): void {.raises: [], gcsafe.}

type QTextTableVTable* {.inheritable, pure.} = object
  vtbl: cQTextTableVTable
  metaObject*: QTextTablemetaObjectProc
  metacast*: QTextTablemetacastProc
  metacall*: QTextTablemetacallProc
  event*: QTextTableeventProc
  eventFilter*: QTextTableeventFilterProc
  timerEvent*: QTextTabletimerEventProc
  childEvent*: QTextTablechildEventProc
  customEvent*: QTextTablecustomEventProc
  connectNotify*: QTextTableconnectNotifyProc
  disconnectNotify*: QTextTabledisconnectNotifyProc

proc QTextTablemetaObject*(self: gen_qtexttable_types.QTextTable): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQTextTable_virtualbase_metaObject(self.h), owned: false)

proc QTextTablemetacast*(self: gen_qtexttable_types.QTextTable, param1: cstring): pointer =
  fcQTextTable_virtualbase_metacast(self.h, param1)

proc QTextTablemetacall*(self: gen_qtexttable_types.QTextTable, param1: cint, param2: cint, param3: pointer): cint =
  fcQTextTable_virtualbase_metacall(self.h, cint(param1), param2, param3)

proc QTextTableevent*(self: gen_qtexttable_types.QTextTable, event: gen_qcoreevent_types.QEvent): bool =
  fcQTextTable_virtualbase_event(self.h, event.h)

proc QTextTableeventFilter*(self: gen_qtexttable_types.QTextTable, watched: gen_qobject_types.QObject, event: gen_qcoreevent_types.QEvent): bool =
  fcQTextTable_virtualbase_eventFilter(self.h, watched.h, event.h)

proc QTextTabletimerEvent*(self: gen_qtexttable_types.QTextTable, event: gen_qcoreevent_types.QTimerEvent): void =
  fcQTextTable_virtualbase_timerEvent(self.h, event.h)

proc QTextTablechildEvent*(self: gen_qtexttable_types.QTextTable, event: gen_qcoreevent_types.QChildEvent): void =
  fcQTextTable_virtualbase_childEvent(self.h, event.h)

proc QTextTablecustomEvent*(self: gen_qtexttable_types.QTextTable, event: gen_qcoreevent_types.QEvent): void =
  fcQTextTable_virtualbase_customEvent(self.h, event.h)

proc QTextTableconnectNotify*(self: gen_qtexttable_types.QTextTable, signal: gen_qmetaobject_types.QMetaMethod): void =
  fcQTextTable_virtualbase_connectNotify(self.h, signal.h)

proc QTextTabledisconnectNotify*(self: gen_qtexttable_types.QTextTable, signal: gen_qmetaobject_types.QMetaMethod): void =
  fcQTextTable_virtualbase_disconnectNotify(self.h, signal.h)


proc fcQTextTable_vtable_callback_metaObject(self: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QTextTableVTable](fcQTextTable_vdata(self))
  let self = QTextTable(h: self)
  var virtualReturn = vtbl[].metaObject(self)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc fcQTextTable_vtable_callback_metacast(self: pointer, param1: cstring): pointer {.cdecl.} =
  let vtbl = cast[ptr QTextTableVTable](fcQTextTable_vdata(self))
  let self = QTextTable(h: self)
  let slotval1 = (param1)
  var virtualReturn = vtbl[].metacast(self, slotval1)
  virtualReturn

proc fcQTextTable_vtable_callback_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.cdecl.} =
  let vtbl = cast[ptr QTextTableVTable](fcQTextTable_vdata(self))
  let self = QTextTable(h: self)
  let slotval1 = cint(param1)
  let slotval2 = param2
  let slotval3 = param3
  var virtualReturn = vtbl[].metacall(self, slotval1, slotval2, slotval3)
  virtualReturn

proc fcQTextTable_vtable_callback_event(self: pointer, event: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QTextTableVTable](fcQTextTable_vdata(self))
  let self = QTextTable(h: self)
  let slotval1 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  var virtualReturn = vtbl[].event(self, slotval1)
  virtualReturn

proc fcQTextTable_vtable_callback_eventFilter(self: pointer, watched: pointer, event: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QTextTableVTable](fcQTextTable_vdata(self))
  let self = QTextTable(h: self)
  let slotval1 = gen_qobject_types.QObject(h: watched, owned: false)
  let slotval2 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  var virtualReturn = vtbl[].eventFilter(self, slotval1, slotval2)
  virtualReturn

proc fcQTextTable_vtable_callback_timerEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QTextTableVTable](fcQTextTable_vdata(self))
  let self = QTextTable(h: self)
  let slotval1 = gen_qcoreevent_types.QTimerEvent(h: event, owned: false)
  vtbl[].timerEvent(self, slotval1)

proc fcQTextTable_vtable_callback_childEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QTextTableVTable](fcQTextTable_vdata(self))
  let self = QTextTable(h: self)
  let slotval1 = gen_qcoreevent_types.QChildEvent(h: event, owned: false)
  vtbl[].childEvent(self, slotval1)

proc fcQTextTable_vtable_callback_customEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QTextTableVTable](fcQTextTable_vdata(self))
  let self = QTextTable(h: self)
  let slotval1 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  vtbl[].customEvent(self, slotval1)

proc fcQTextTable_vtable_callback_connectNotify(self: pointer, signal: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QTextTableVTable](fcQTextTable_vdata(self))
  let self = QTextTable(h: self)
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal, owned: false)
  vtbl[].connectNotify(self, slotval1)

proc fcQTextTable_vtable_callback_disconnectNotify(self: pointer, signal: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QTextTableVTable](fcQTextTable_vdata(self))
  let self = QTextTable(h: self)
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal, owned: false)
  vtbl[].disconnectNotify(self, slotval1)

type VirtualQTextTable* {.inheritable.} = ref object of QTextTable
  vtbl*: cQTextTableVTable

method metaObject*(self: VirtualQTextTable): gen_qobjectdefs_types.QMetaObject {.base.} =
  QTextTablemetaObject(self[])
method metacast*(self: VirtualQTextTable, param1: cstring): pointer {.base.} =
  QTextTablemetacast(self[], param1)
method metacall*(self: VirtualQTextTable, param1: cint, param2: cint, param3: pointer): cint {.base.} =
  QTextTablemetacall(self[], param1, param2, param3)
method event*(self: VirtualQTextTable, event: gen_qcoreevent_types.QEvent): bool {.base.} =
  QTextTableevent(self[], event)
method eventFilter*(self: VirtualQTextTable, watched: gen_qobject_types.QObject, event: gen_qcoreevent_types.QEvent): bool {.base.} =
  QTextTableeventFilter(self[], watched, event)
method timerEvent*(self: VirtualQTextTable, event: gen_qcoreevent_types.QTimerEvent): void {.base.} =
  QTextTabletimerEvent(self[], event)
method childEvent*(self: VirtualQTextTable, event: gen_qcoreevent_types.QChildEvent): void {.base.} =
  QTextTablechildEvent(self[], event)
method customEvent*(self: VirtualQTextTable, event: gen_qcoreevent_types.QEvent): void {.base.} =
  QTextTablecustomEvent(self[], event)
method connectNotify*(self: VirtualQTextTable, signal: gen_qmetaobject_types.QMetaMethod): void {.base.} =
  QTextTableconnectNotify(self[], signal)
method disconnectNotify*(self: VirtualQTextTable, signal: gen_qmetaobject_types.QMetaMethod): void {.base.} =
  QTextTabledisconnectNotify(self[], signal)

proc fcQTextTable_method_callback_metaObject(self: pointer): pointer {.cdecl.} =
  let inst = cast[VirtualQTextTable](fcQTextTable_vdata(self))
  var virtualReturn = inst.metaObject()
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc fcQTextTable_method_callback_metacast(self: pointer, param1: cstring): pointer {.cdecl.} =
  let inst = cast[VirtualQTextTable](fcQTextTable_vdata(self))
  let slotval1 = (param1)
  var virtualReturn = inst.metacast(slotval1)
  virtualReturn

proc fcQTextTable_method_callback_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.cdecl.} =
  let inst = cast[VirtualQTextTable](fcQTextTable_vdata(self))
  let slotval1 = cint(param1)
  let slotval2 = param2
  let slotval3 = param3
  var virtualReturn = inst.metacall(slotval1, slotval2, slotval3)
  virtualReturn

proc fcQTextTable_method_callback_event(self: pointer, event: pointer): bool {.cdecl.} =
  let inst = cast[VirtualQTextTable](fcQTextTable_vdata(self))
  let slotval1 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  var virtualReturn = inst.event(slotval1)
  virtualReturn

proc fcQTextTable_method_callback_eventFilter(self: pointer, watched: pointer, event: pointer): bool {.cdecl.} =
  let inst = cast[VirtualQTextTable](fcQTextTable_vdata(self))
  let slotval1 = gen_qobject_types.QObject(h: watched, owned: false)
  let slotval2 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  var virtualReturn = inst.eventFilter(slotval1, slotval2)
  virtualReturn

proc fcQTextTable_method_callback_timerEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQTextTable](fcQTextTable_vdata(self))
  let slotval1 = gen_qcoreevent_types.QTimerEvent(h: event, owned: false)
  inst.timerEvent(slotval1)

proc fcQTextTable_method_callback_childEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQTextTable](fcQTextTable_vdata(self))
  let slotval1 = gen_qcoreevent_types.QChildEvent(h: event, owned: false)
  inst.childEvent(slotval1)

proc fcQTextTable_method_callback_customEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQTextTable](fcQTextTable_vdata(self))
  let slotval1 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  inst.customEvent(slotval1)

proc fcQTextTable_method_callback_connectNotify(self: pointer, signal: pointer): void {.cdecl.} =
  let inst = cast[VirtualQTextTable](fcQTextTable_vdata(self))
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal, owned: false)
  inst.connectNotify(slotval1)

proc fcQTextTable_method_callback_disconnectNotify(self: pointer, signal: pointer): void {.cdecl.} =
  let inst = cast[VirtualQTextTable](fcQTextTable_vdata(self))
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal, owned: false)
  inst.disconnectNotify(slotval1)


proc sender*(self: gen_qtexttable_types.QTextTable): gen_qobject_types.QObject =
  gen_qobject_types.QObject(h: fcQTextTable_protectedbase_sender(self.h), owned: false)

proc senderSignalIndex*(self: gen_qtexttable_types.QTextTable): cint =
  fcQTextTable_protectedbase_senderSignalIndex(self.h)

proc receivers*(self: gen_qtexttable_types.QTextTable, signal: cstring): cint =
  fcQTextTable_protectedbase_receivers(self.h, signal)

proc isSignalConnected*(self: gen_qtexttable_types.QTextTable, signal: gen_qmetaobject_types.QMetaMethod): bool =
  fcQTextTable_protectedbase_isSignalConnected(self.h, signal.h)

proc create*(T: type gen_qtexttable_types.QTextTable,
    doc: gen_qtextdocument_types.QTextDocument,
    vtbl: ref QTextTableVTable = nil): gen_qtexttable_types.QTextTable =
  let vtbl = if vtbl == nil: new QTextTableVTable else: vtbl
  GC_ref(vtbl)
  vtbl[].vtbl.destructor = proc(self: pointer) {.cdecl.} =
    let vtbl = cast[ref QTextTableVTable](fcQTextTable_vdata(self))
    GC_unref(vtbl)
  if not isNil(vtbl[].metaObject):
    vtbl[].vtbl.metaObject = fcQTextTable_vtable_callback_metaObject
  if not isNil(vtbl[].metacast):
    vtbl[].vtbl.metacast = fcQTextTable_vtable_callback_metacast
  if not isNil(vtbl[].metacall):
    vtbl[].vtbl.metacall = fcQTextTable_vtable_callback_metacall
  if not isNil(vtbl[].event):
    vtbl[].vtbl.event = fcQTextTable_vtable_callback_event
  if not isNil(vtbl[].eventFilter):
    vtbl[].vtbl.eventFilter = fcQTextTable_vtable_callback_eventFilter
  if not isNil(vtbl[].timerEvent):
    vtbl[].vtbl.timerEvent = fcQTextTable_vtable_callback_timerEvent
  if not isNil(vtbl[].childEvent):
    vtbl[].vtbl.childEvent = fcQTextTable_vtable_callback_childEvent
  if not isNil(vtbl[].customEvent):
    vtbl[].vtbl.customEvent = fcQTextTable_vtable_callback_customEvent
  if not isNil(vtbl[].connectNotify):
    vtbl[].vtbl.connectNotify = fcQTextTable_vtable_callback_connectNotify
  if not isNil(vtbl[].disconnectNotify):
    vtbl[].vtbl.disconnectNotify = fcQTextTable_vtable_callback_disconnectNotify
  gen_qtexttable_types.QTextTable(h: fcQTextTable_new(addr(vtbl[].vtbl), addr(vtbl[]), doc.h), owned: true)

const cQTextTable_mvtbl = cQTextTableVTable(
  destructor: proc(self: pointer) {.cdecl.} =
    let inst = cast[ptr typeof(VirtualQTextTable()[])](self.fcQTextTable_vtbl())
    inst[].h = nil
    inst[].owned = false,

  metaObject: fcQTextTable_method_callback_metaObject,
  metacast: fcQTextTable_method_callback_metacast,
  metacall: fcQTextTable_method_callback_metacall,
  event: fcQTextTable_method_callback_event,
  eventFilter: fcQTextTable_method_callback_eventFilter,
  timerEvent: fcQTextTable_method_callback_timerEvent,
  childEvent: fcQTextTable_method_callback_childEvent,
  customEvent: fcQTextTable_method_callback_customEvent,
  connectNotify: fcQTextTable_method_callback_connectNotify,
  disconnectNotify: fcQTextTable_method_callback_disconnectNotify,
)
proc create*(T: type gen_qtexttable_types.QTextTable,
    doc: gen_qtextdocument_types.QTextDocument,
    inst: VirtualQTextTable) =
  if inst[].h != nil: delete(move(inst[]))
  inst[].h = fcQTextTable_new(addr(cQTextTable_mvtbl), addr(inst[]), doc.h)
  inst[].owned = true

proc staticMetaObject*(_: type gen_qtexttable_types.QTextTable): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQTextTable_staticMetaObject())
