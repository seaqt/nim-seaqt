import ./qtsql_pkg

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


{.compile("gen_qsqltablemodel.cpp", QtSqlCFlags).}


type QSqlTableModelEditStrategyEnum* = distinct cint
template OnFieldChange*(_: type QSqlTableModelEditStrategyEnum): untyped = 0
template OnRowChange*(_: type QSqlTableModelEditStrategyEnum): untyped = 1
template OnManualSubmit*(_: type QSqlTableModelEditStrategyEnum): untyped = 2


import ./gen_qsqltablemodel_types
export gen_qsqltablemodel_types

import
  ../QtCore/gen_qabstractitemmodel_types,
  ../QtCore/gen_qcoreevent_types,
  ../QtCore/gen_qdatastream_types,
  ../QtCore/gen_qmetaobject_types,
  ../QtCore/gen_qmimedata_types,
  ../QtCore/gen_qobject_types,
  ../QtCore/gen_qobjectdefs_types,
  ../QtCore/gen_qsize_types,
  ../QtCore/gen_qvariant_types,
  ./gen_qsqldatabase_types,
  ./gen_qsqlerror_types,
  ./gen_qsqlindex_types,
  ./gen_qsqlquery_types,
  ./gen_qsqlquerymodel,
  ./gen_qsqlrecord_types,
  std/tables
export
  gen_qabstractitemmodel_types,
  gen_qcoreevent_types,
  gen_qdatastream_types,
  gen_qmetaobject_types,
  gen_qmimedata_types,
  gen_qobject_types,
  gen_qobjectdefs_types,
  gen_qsize_types,
  gen_qvariant_types,
  gen_qsqldatabase_types,
  gen_qsqlerror_types,
  gen_qsqlindex_types,
  gen_qsqlquery_types,
  gen_qsqlquerymodel,
  gen_qsqlrecord_types

type cQSqlTableModel*{.exportc: "QSqlTableModel", incompleteStruct.} = object

proc fcQSqlTableModel_metaObject(self: pointer): pointer {.importc: "QSqlTableModel_metaObject".}
proc fcQSqlTableModel_metacast(self: pointer, param1: cstring): pointer {.importc: "QSqlTableModel_metacast".}
proc fcQSqlTableModel_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.importc: "QSqlTableModel_metacall".}
proc fcQSqlTableModel_tr(s: cstring): struct_seaqt_string {.importc: "QSqlTableModel_tr".}
proc fcQSqlTableModel_setTable(self: pointer, tableName: struct_seaqt_string): void {.importc: "QSqlTableModel_setTable".}
proc fcQSqlTableModel_tableName(self: pointer): struct_seaqt_string {.importc: "QSqlTableModel_tableName".}
proc fcQSqlTableModel_flags(self: pointer, index: pointer): cint {.importc: "QSqlTableModel_flags".}
proc fcQSqlTableModel_record(self: pointer): pointer {.importc: "QSqlTableModel_record".}
proc fcQSqlTableModel_recordWithRow(self: pointer, row: cint): pointer {.importc: "QSqlTableModel_recordWithRow".}
proc fcQSqlTableModel_data(self: pointer, idx: pointer, role: cint): pointer {.importc: "QSqlTableModel_data".}
proc fcQSqlTableModel_setData(self: pointer, index: pointer, value: pointer, role: cint): bool {.importc: "QSqlTableModel_setData".}
proc fcQSqlTableModel_clearItemData(self: pointer, index: pointer): bool {.importc: "QSqlTableModel_clearItemData".}
proc fcQSqlTableModel_headerData(self: pointer, section: cint, orientation: cint, role: cint): pointer {.importc: "QSqlTableModel_headerData".}
proc fcQSqlTableModel_isDirty(self: pointer): bool {.importc: "QSqlTableModel_isDirty".}
proc fcQSqlTableModel_isDirtyWithIndex(self: pointer, index: pointer): bool {.importc: "QSqlTableModel_isDirtyWithIndex".}
proc fcQSqlTableModel_clear(self: pointer): void {.importc: "QSqlTableModel_clear".}
proc fcQSqlTableModel_setEditStrategy(self: pointer, strategy: cint): void {.importc: "QSqlTableModel_setEditStrategy".}
proc fcQSqlTableModel_editStrategy(self: pointer): cint {.importc: "QSqlTableModel_editStrategy".}
proc fcQSqlTableModel_primaryKey(self: pointer): pointer {.importc: "QSqlTableModel_primaryKey".}
proc fcQSqlTableModel_database(self: pointer): pointer {.importc: "QSqlTableModel_database".}
proc fcQSqlTableModel_fieldIndex(self: pointer, fieldName: struct_seaqt_string): cint {.importc: "QSqlTableModel_fieldIndex".}
proc fcQSqlTableModel_sort(self: pointer, column: cint, order: cint): void {.importc: "QSqlTableModel_sort".}
proc fcQSqlTableModel_setSort(self: pointer, column: cint, order: cint): void {.importc: "QSqlTableModel_setSort".}
proc fcQSqlTableModel_filter(self: pointer): struct_seaqt_string {.importc: "QSqlTableModel_filter".}
proc fcQSqlTableModel_setFilter(self: pointer, filter: struct_seaqt_string): void {.importc: "QSqlTableModel_setFilter".}
proc fcQSqlTableModel_rowCount(self: pointer, parent: pointer): cint {.importc: "QSqlTableModel_rowCount".}
proc fcQSqlTableModel_removeColumns(self: pointer, column: cint, count: cint, parent: pointer): bool {.importc: "QSqlTableModel_removeColumns".}
proc fcQSqlTableModel_removeRows(self: pointer, row: cint, count: cint, parent: pointer): bool {.importc: "QSqlTableModel_removeRows".}
proc fcQSqlTableModel_insertRows(self: pointer, row: cint, count: cint, parent: pointer): bool {.importc: "QSqlTableModel_insertRows".}
proc fcQSqlTableModel_insertRecord(self: pointer, row: cint, record: pointer): bool {.importc: "QSqlTableModel_insertRecord".}
proc fcQSqlTableModel_setRecord(self: pointer, row: cint, record: pointer): bool {.importc: "QSqlTableModel_setRecord".}
proc fcQSqlTableModel_revertRow(self: pointer, row: cint): void {.importc: "QSqlTableModel_revertRow".}
proc fcQSqlTableModel_select(self: pointer): bool {.importc: "QSqlTableModel_select".}
proc fcQSqlTableModel_selectRow(self: pointer, row: cint): bool {.importc: "QSqlTableModel_selectRow".}
proc fcQSqlTableModel_submit(self: pointer): bool {.importc: "QSqlTableModel_submit".}
proc fcQSqlTableModel_revert(self: pointer): void {.importc: "QSqlTableModel_revert".}
proc fcQSqlTableModel_submitAll(self: pointer): bool {.importc: "QSqlTableModel_submitAll".}
proc fcQSqlTableModel_revertAll(self: pointer): void {.importc: "QSqlTableModel_revertAll".}
proc fcQSqlTableModel_primeInsert(self: pointer, row: cint, record: pointer): void {.importc: "QSqlTableModel_primeInsert".}
proc fcQSqlTableModel_connect_primeInsert(self: pointer, slot: int, callback: proc (slot: int, row: cint, record: pointer) {.cdecl.}, release: proc(slot: int) {.cdecl.}) {.importc: "QSqlTableModel_connect_primeInsert".}
proc fcQSqlTableModel_beforeInsert(self: pointer, record: pointer): void {.importc: "QSqlTableModel_beforeInsert".}
proc fcQSqlTableModel_connect_beforeInsert(self: pointer, slot: int, callback: proc (slot: int, record: pointer) {.cdecl.}, release: proc(slot: int) {.cdecl.}) {.importc: "QSqlTableModel_connect_beforeInsert".}
proc fcQSqlTableModel_beforeUpdate(self: pointer, row: cint, record: pointer): void {.importc: "QSqlTableModel_beforeUpdate".}
proc fcQSqlTableModel_connect_beforeUpdate(self: pointer, slot: int, callback: proc (slot: int, row: cint, record: pointer) {.cdecl.}, release: proc(slot: int) {.cdecl.}) {.importc: "QSqlTableModel_connect_beforeUpdate".}
proc fcQSqlTableModel_beforeDelete(self: pointer, row: cint): void {.importc: "QSqlTableModel_beforeDelete".}
proc fcQSqlTableModel_connect_beforeDelete(self: pointer, slot: int, callback: proc (slot: int, row: cint) {.cdecl.}, release: proc(slot: int) {.cdecl.}) {.importc: "QSqlTableModel_connect_beforeDelete".}
proc fcQSqlTableModel_tr2(s: cstring, c: cstring): struct_seaqt_string {.importc: "QSqlTableModel_tr2".}
proc fcQSqlTableModel_tr3(s: cstring, c: cstring, n: cint): struct_seaqt_string {.importc: "QSqlTableModel_tr3".}
proc fcQSqlTableModel_vdata(self: pointer): ptr pointer {.importc: "QSqlTableModel_vdata".}
proc fvdata_cQSqlTableModel(self: pointer): pointer {.importc: "vdata_QSqlTableModel".}

type cQSqlTableModelVTable {.pure.} = object
  destructor*: proc(self: pointer) {.cdecl, raises:[], gcsafe.}
  metaObject*: proc(self: pointer): pointer {.cdecl, raises: [], gcsafe.}
  metacast*: proc(self: pointer, param1: cstring): pointer {.cdecl, raises: [], gcsafe.}
  metacall*: proc(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.cdecl, raises: [], gcsafe.}
  setTable*: proc(self: pointer, tableName: struct_seaqt_string): void {.cdecl, raises: [], gcsafe.}
  flags*: proc(self: pointer, index: pointer): cint {.cdecl, raises: [], gcsafe.}
  data*: proc(self: pointer, idx: pointer, role: cint): pointer {.cdecl, raises: [], gcsafe.}
  setData*: proc(self: pointer, index: pointer, value: pointer, role: cint): bool {.cdecl, raises: [], gcsafe.}
  clearItemData*: proc(self: pointer, index: pointer): bool {.cdecl, raises: [], gcsafe.}
  headerData*: proc(self: pointer, section: cint, orientation: cint, role: cint): pointer {.cdecl, raises: [], gcsafe.}
  clear*: proc(self: pointer): void {.cdecl, raises: [], gcsafe.}
  setEditStrategy*: proc(self: pointer, strategy: cint): void {.cdecl, raises: [], gcsafe.}
  sort*: proc(self: pointer, column: cint, order: cint): void {.cdecl, raises: [], gcsafe.}
  setSort*: proc(self: pointer, column: cint, order: cint): void {.cdecl, raises: [], gcsafe.}
  setFilter*: proc(self: pointer, filter: struct_seaqt_string): void {.cdecl, raises: [], gcsafe.}
  rowCount*: proc(self: pointer, parent: pointer): cint {.cdecl, raises: [], gcsafe.}
  removeColumns*: proc(self: pointer, column: cint, count: cint, parent: pointer): bool {.cdecl, raises: [], gcsafe.}
  removeRows*: proc(self: pointer, row: cint, count: cint, parent: pointer): bool {.cdecl, raises: [], gcsafe.}
  insertRows*: proc(self: pointer, row: cint, count: cint, parent: pointer): bool {.cdecl, raises: [], gcsafe.}
  revertRow*: proc(self: pointer, row: cint): void {.cdecl, raises: [], gcsafe.}
  select*: proc(self: pointer): bool {.cdecl, raises: [], gcsafe.}
  selectRow*: proc(self: pointer, row: cint): bool {.cdecl, raises: [], gcsafe.}
  submit*: proc(self: pointer): bool {.cdecl, raises: [], gcsafe.}
  revert*: proc(self: pointer): void {.cdecl, raises: [], gcsafe.}
  updateRowInTable*: proc(self: pointer, row: cint, values: pointer): bool {.cdecl, raises: [], gcsafe.}
  insertRowIntoTable*: proc(self: pointer, values: pointer): bool {.cdecl, raises: [], gcsafe.}
  deleteRowFromTable*: proc(self: pointer, row: cint): bool {.cdecl, raises: [], gcsafe.}
  orderByClause*: proc(self: pointer): struct_seaqt_string {.cdecl, raises: [], gcsafe.}
  selectStatement*: proc(self: pointer): struct_seaqt_string {.cdecl, raises: [], gcsafe.}
  indexInQuery*: proc(self: pointer, item: pointer): pointer {.cdecl, raises: [], gcsafe.}
  columnCount*: proc(self: pointer, parent: pointer): cint {.cdecl, raises: [], gcsafe.}
  setHeaderData*: proc(self: pointer, section: cint, orientation: cint, value: pointer, role: cint): bool {.cdecl, raises: [], gcsafe.}
  insertColumns*: proc(self: pointer, column: cint, count: cint, parent: pointer): bool {.cdecl, raises: [], gcsafe.}
  fetchMore*: proc(self: pointer, parent: pointer): void {.cdecl, raises: [], gcsafe.}
  canFetchMore*: proc(self: pointer, parent: pointer): bool {.cdecl, raises: [], gcsafe.}
  roleNames*: proc(self: pointer): struct_seaqt_map {.cdecl, raises: [], gcsafe.}
  queryChange*: proc(self: pointer): void {.cdecl, raises: [], gcsafe.}
  index*: proc(self: pointer, row: cint, column: cint, parent: pointer): pointer {.cdecl, raises: [], gcsafe.}
  sibling*: proc(self: pointer, row: cint, column: cint, idx: pointer): pointer {.cdecl, raises: [], gcsafe.}
  dropMimeData*: proc(self: pointer, data: pointer, action: cint, row: cint, column: cint, parent: pointer): bool {.cdecl, raises: [], gcsafe.}
  itemData*: proc(self: pointer, index: pointer): struct_seaqt_map {.cdecl, raises: [], gcsafe.}
  setItemData*: proc(self: pointer, index: pointer, roles: struct_seaqt_map): bool {.cdecl, raises: [], gcsafe.}
  mimeTypes*: proc(self: pointer): struct_seaqt_array {.cdecl, raises: [], gcsafe.}
  mimeData*: proc(self: pointer, indexes: struct_seaqt_array): pointer {.cdecl, raises: [], gcsafe.}
  canDropMimeData*: proc(self: pointer, data: pointer, action: cint, row: cint, column: cint, parent: pointer): bool {.cdecl, raises: [], gcsafe.}
  supportedDropActions*: proc(self: pointer): cint {.cdecl, raises: [], gcsafe.}
  supportedDragActions*: proc(self: pointer): cint {.cdecl, raises: [], gcsafe.}
  moveRows*: proc(self: pointer, sourceParent: pointer, sourceRow: cint, count: cint, destinationParent: pointer, destinationChild: cint): bool {.cdecl, raises: [], gcsafe.}
  moveColumns*: proc(self: pointer, sourceParent: pointer, sourceColumn: cint, count: cint, destinationParent: pointer, destinationChild: cint): bool {.cdecl, raises: [], gcsafe.}
  buddy*: proc(self: pointer, index: pointer): pointer {.cdecl, raises: [], gcsafe.}
  match*: proc(self: pointer, start: pointer, role: cint, value: pointer, hits: cint, flags: cint): struct_seaqt_array {.cdecl, raises: [], gcsafe.}
  span*: proc(self: pointer, index: pointer): pointer {.cdecl, raises: [], gcsafe.}
  multiData*: proc(self: pointer, index: pointer, roleDataSpan: pointer): void {.cdecl, raises: [], gcsafe.}
  resetInternalData*: proc(self: pointer): void {.cdecl, raises: [], gcsafe.}
  event*: proc(self: pointer, event: pointer): bool {.cdecl, raises: [], gcsafe.}
  eventFilter*: proc(self: pointer, watched: pointer, event: pointer): bool {.cdecl, raises: [], gcsafe.}
  timerEvent*: proc(self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  childEvent*: proc(self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  customEvent*: proc(self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  connectNotify*: proc(self: pointer, signal: pointer): void {.cdecl, raises: [], gcsafe.}
  disconnectNotify*: proc(self: pointer, signal: pointer): void {.cdecl, raises: [], gcsafe.}
proc fcQSqlTableModel_virtualbase_metaObject(self: pointer): pointer {.importc: "QSqlTableModel_virtualbase_metaObject".}
proc fcQSqlTableModel_virtualbase_metacast(self: pointer, param1: cstring): pointer {.importc: "QSqlTableModel_virtualbase_metacast".}
proc fcQSqlTableModel_virtualbase_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.importc: "QSqlTableModel_virtualbase_metacall".}
proc fcQSqlTableModel_virtualbase_setTable(self: pointer, tableName: struct_seaqt_string): void {.importc: "QSqlTableModel_virtualbase_setTable".}
proc fcQSqlTableModel_virtualbase_flags(self: pointer, index: pointer): cint {.importc: "QSqlTableModel_virtualbase_flags".}
proc fcQSqlTableModel_virtualbase_data(self: pointer, idx: pointer, role: cint): pointer {.importc: "QSqlTableModel_virtualbase_data".}
proc fcQSqlTableModel_virtualbase_setData(self: pointer, index: pointer, value: pointer, role: cint): bool {.importc: "QSqlTableModel_virtualbase_setData".}
proc fcQSqlTableModel_virtualbase_clearItemData(self: pointer, index: pointer): bool {.importc: "QSqlTableModel_virtualbase_clearItemData".}
proc fcQSqlTableModel_virtualbase_headerData(self: pointer, section: cint, orientation: cint, role: cint): pointer {.importc: "QSqlTableModel_virtualbase_headerData".}
proc fcQSqlTableModel_virtualbase_clear(self: pointer): void {.importc: "QSqlTableModel_virtualbase_clear".}
proc fcQSqlTableModel_virtualbase_setEditStrategy(self: pointer, strategy: cint): void {.importc: "QSqlTableModel_virtualbase_setEditStrategy".}
proc fcQSqlTableModel_virtualbase_sort(self: pointer, column: cint, order: cint): void {.importc: "QSqlTableModel_virtualbase_sort".}
proc fcQSqlTableModel_virtualbase_setSort(self: pointer, column: cint, order: cint): void {.importc: "QSqlTableModel_virtualbase_setSort".}
proc fcQSqlTableModel_virtualbase_setFilter(self: pointer, filter: struct_seaqt_string): void {.importc: "QSqlTableModel_virtualbase_setFilter".}
proc fcQSqlTableModel_virtualbase_rowCount(self: pointer, parent: pointer): cint {.importc: "QSqlTableModel_virtualbase_rowCount".}
proc fcQSqlTableModel_virtualbase_removeColumns(self: pointer, column: cint, count: cint, parent: pointer): bool {.importc: "QSqlTableModel_virtualbase_removeColumns".}
proc fcQSqlTableModel_virtualbase_removeRows(self: pointer, row: cint, count: cint, parent: pointer): bool {.importc: "QSqlTableModel_virtualbase_removeRows".}
proc fcQSqlTableModel_virtualbase_insertRows(self: pointer, row: cint, count: cint, parent: pointer): bool {.importc: "QSqlTableModel_virtualbase_insertRows".}
proc fcQSqlTableModel_virtualbase_revertRow(self: pointer, row: cint): void {.importc: "QSqlTableModel_virtualbase_revertRow".}
proc fcQSqlTableModel_virtualbase_select(self: pointer): bool {.importc: "QSqlTableModel_virtualbase_select".}
proc fcQSqlTableModel_virtualbase_selectRow(self: pointer, row: cint): bool {.importc: "QSqlTableModel_virtualbase_selectRow".}
proc fcQSqlTableModel_virtualbase_submit(self: pointer): bool {.importc: "QSqlTableModel_virtualbase_submit".}
proc fcQSqlTableModel_virtualbase_revert(self: pointer): void {.importc: "QSqlTableModel_virtualbase_revert".}
proc fcQSqlTableModel_virtualbase_updateRowInTable(self: pointer, row: cint, values: pointer): bool {.importc: "QSqlTableModel_virtualbase_updateRowInTable".}
proc fcQSqlTableModel_virtualbase_insertRowIntoTable(self: pointer, values: pointer): bool {.importc: "QSqlTableModel_virtualbase_insertRowIntoTable".}
proc fcQSqlTableModel_virtualbase_deleteRowFromTable(self: pointer, row: cint): bool {.importc: "QSqlTableModel_virtualbase_deleteRowFromTable".}
proc fcQSqlTableModel_virtualbase_orderByClause(self: pointer): struct_seaqt_string {.importc: "QSqlTableModel_virtualbase_orderByClause".}
proc fcQSqlTableModel_virtualbase_selectStatement(self: pointer): struct_seaqt_string {.importc: "QSqlTableModel_virtualbase_selectStatement".}
proc fcQSqlTableModel_virtualbase_indexInQuery(self: pointer, item: pointer): pointer {.importc: "QSqlTableModel_virtualbase_indexInQuery".}
proc fcQSqlTableModel_virtualbase_columnCount(self: pointer, parent: pointer): cint {.importc: "QSqlTableModel_virtualbase_columnCount".}
proc fcQSqlTableModel_virtualbase_setHeaderData(self: pointer, section: cint, orientation: cint, value: pointer, role: cint): bool {.importc: "QSqlTableModel_virtualbase_setHeaderData".}
proc fcQSqlTableModel_virtualbase_insertColumns(self: pointer, column: cint, count: cint, parent: pointer): bool {.importc: "QSqlTableModel_virtualbase_insertColumns".}
proc fcQSqlTableModel_virtualbase_fetchMore(self: pointer, parent: pointer): void {.importc: "QSqlTableModel_virtualbase_fetchMore".}
proc fcQSqlTableModel_virtualbase_canFetchMore(self: pointer, parent: pointer): bool {.importc: "QSqlTableModel_virtualbase_canFetchMore".}
proc fcQSqlTableModel_virtualbase_roleNames(self: pointer): struct_seaqt_map {.importc: "QSqlTableModel_virtualbase_roleNames".}
proc fcQSqlTableModel_virtualbase_queryChange(self: pointer): void {.importc: "QSqlTableModel_virtualbase_queryChange".}
proc fcQSqlTableModel_virtualbase_index(self: pointer, row: cint, column: cint, parent: pointer): pointer {.importc: "QSqlTableModel_virtualbase_index".}
proc fcQSqlTableModel_virtualbase_sibling(self: pointer, row: cint, column: cint, idx: pointer): pointer {.importc: "QSqlTableModel_virtualbase_sibling".}
proc fcQSqlTableModel_virtualbase_dropMimeData(self: pointer, data: pointer, action: cint, row: cint, column: cint, parent: pointer): bool {.importc: "QSqlTableModel_virtualbase_dropMimeData".}
proc fcQSqlTableModel_virtualbase_itemData(self: pointer, index: pointer): struct_seaqt_map {.importc: "QSqlTableModel_virtualbase_itemData".}
proc fcQSqlTableModel_virtualbase_setItemData(self: pointer, index: pointer, roles: struct_seaqt_map): bool {.importc: "QSqlTableModel_virtualbase_setItemData".}
proc fcQSqlTableModel_virtualbase_mimeTypes(self: pointer): struct_seaqt_array {.importc: "QSqlTableModel_virtualbase_mimeTypes".}
proc fcQSqlTableModel_virtualbase_mimeData(self: pointer, indexes: struct_seaqt_array): pointer {.importc: "QSqlTableModel_virtualbase_mimeData".}
proc fcQSqlTableModel_virtualbase_canDropMimeData(self: pointer, data: pointer, action: cint, row: cint, column: cint, parent: pointer): bool {.importc: "QSqlTableModel_virtualbase_canDropMimeData".}
proc fcQSqlTableModel_virtualbase_supportedDropActions(self: pointer): cint {.importc: "QSqlTableModel_virtualbase_supportedDropActions".}
proc fcQSqlTableModel_virtualbase_supportedDragActions(self: pointer): cint {.importc: "QSqlTableModel_virtualbase_supportedDragActions".}
proc fcQSqlTableModel_virtualbase_moveRows(self: pointer, sourceParent: pointer, sourceRow: cint, count: cint, destinationParent: pointer, destinationChild: cint): bool {.importc: "QSqlTableModel_virtualbase_moveRows".}
proc fcQSqlTableModel_virtualbase_moveColumns(self: pointer, sourceParent: pointer, sourceColumn: cint, count: cint, destinationParent: pointer, destinationChild: cint): bool {.importc: "QSqlTableModel_virtualbase_moveColumns".}
proc fcQSqlTableModel_virtualbase_buddy(self: pointer, index: pointer): pointer {.importc: "QSqlTableModel_virtualbase_buddy".}
proc fcQSqlTableModel_virtualbase_match(self: pointer, start: pointer, role: cint, value: pointer, hits: cint, flags: cint): struct_seaqt_array {.importc: "QSqlTableModel_virtualbase_match".}
proc fcQSqlTableModel_virtualbase_span(self: pointer, index: pointer): pointer {.importc: "QSqlTableModel_virtualbase_span".}
proc fcQSqlTableModel_virtualbase_multiData(self: pointer, index: pointer, roleDataSpan: pointer): void {.importc: "QSqlTableModel_virtualbase_multiData".}
proc fcQSqlTableModel_virtualbase_resetInternalData(self: pointer): void {.importc: "QSqlTableModel_virtualbase_resetInternalData".}
proc fcQSqlTableModel_virtualbase_event(self: pointer, event: pointer): bool {.importc: "QSqlTableModel_virtualbase_event".}
proc fcQSqlTableModel_virtualbase_eventFilter(self: pointer, watched: pointer, event: pointer): bool {.importc: "QSqlTableModel_virtualbase_eventFilter".}
proc fcQSqlTableModel_virtualbase_timerEvent(self: pointer, event: pointer): void {.importc: "QSqlTableModel_virtualbase_timerEvent".}
proc fcQSqlTableModel_virtualbase_childEvent(self: pointer, event: pointer): void {.importc: "QSqlTableModel_virtualbase_childEvent".}
proc fcQSqlTableModel_virtualbase_customEvent(self: pointer, event: pointer): void {.importc: "QSqlTableModel_virtualbase_customEvent".}
proc fcQSqlTableModel_virtualbase_connectNotify(self: pointer, signal: pointer): void {.importc: "QSqlTableModel_virtualbase_connectNotify".}
proc fcQSqlTableModel_virtualbase_disconnectNotify(self: pointer, signal: pointer): void {.importc: "QSqlTableModel_virtualbase_disconnectNotify".}
proc fcQSqlTableModel_protectedbase_setPrimaryKey(self: pointer, key: pointer): void {.importc: "QSqlTableModel_protectedbase_setPrimaryKey".}
proc fcQSqlTableModel_protectedbase_setQuery(self: pointer, query: pointer): void {.importc: "QSqlTableModel_protectedbase_setQuery".}
proc fcQSqlTableModel_protectedbase_primaryValues(self: pointer, row: cint): pointer {.importc: "QSqlTableModel_protectedbase_primaryValues".}
proc fcQSqlTableModel_protectedbase_beginInsertRows(self: pointer, parent: pointer, first: cint, last: cint): void {.importc: "QSqlTableModel_protectedbase_beginInsertRows".}
proc fcQSqlTableModel_protectedbase_endInsertRows(self: pointer): void {.importc: "QSqlTableModel_protectedbase_endInsertRows".}
proc fcQSqlTableModel_protectedbase_beginRemoveRows(self: pointer, parent: pointer, first: cint, last: cint): void {.importc: "QSqlTableModel_protectedbase_beginRemoveRows".}
proc fcQSqlTableModel_protectedbase_endRemoveRows(self: pointer): void {.importc: "QSqlTableModel_protectedbase_endRemoveRows".}
proc fcQSqlTableModel_protectedbase_beginInsertColumns(self: pointer, parent: pointer, first: cint, last: cint): void {.importc: "QSqlTableModel_protectedbase_beginInsertColumns".}
proc fcQSqlTableModel_protectedbase_endInsertColumns(self: pointer): void {.importc: "QSqlTableModel_protectedbase_endInsertColumns".}
proc fcQSqlTableModel_protectedbase_beginRemoveColumns(self: pointer, parent: pointer, first: cint, last: cint): void {.importc: "QSqlTableModel_protectedbase_beginRemoveColumns".}
proc fcQSqlTableModel_protectedbase_endRemoveColumns(self: pointer): void {.importc: "QSqlTableModel_protectedbase_endRemoveColumns".}
proc fcQSqlTableModel_protectedbase_beginResetModel(self: pointer): void {.importc: "QSqlTableModel_protectedbase_beginResetModel".}
proc fcQSqlTableModel_protectedbase_endResetModel(self: pointer): void {.importc: "QSqlTableModel_protectedbase_endResetModel".}
proc fcQSqlTableModel_protectedbase_setLastError(self: pointer, error: pointer): void {.importc: "QSqlTableModel_protectedbase_setLastError".}
proc fcQSqlTableModel_protectedbase_createIndex(self: pointer, row: cint, column: cint): pointer {.importc: "QSqlTableModel_protectedbase_createIndex".}
proc fcQSqlTableModel_protectedbase_encodeData(self: pointer, indexes: struct_seaqt_array, stream: pointer): void {.importc: "QSqlTableModel_protectedbase_encodeData".}
proc fcQSqlTableModel_protectedbase_decodeData(self: pointer, row: cint, column: cint, parent: pointer, stream: pointer): bool {.importc: "QSqlTableModel_protectedbase_decodeData".}
proc fcQSqlTableModel_protectedbase_beginMoveRows(self: pointer, sourceParent: pointer, sourceFirst: cint, sourceLast: cint, destinationParent: pointer, destinationRow: cint): bool {.importc: "QSqlTableModel_protectedbase_beginMoveRows".}
proc fcQSqlTableModel_protectedbase_endMoveRows(self: pointer): void {.importc: "QSqlTableModel_protectedbase_endMoveRows".}
proc fcQSqlTableModel_protectedbase_beginMoveColumns(self: pointer, sourceParent: pointer, sourceFirst: cint, sourceLast: cint, destinationParent: pointer, destinationColumn: cint): bool {.importc: "QSqlTableModel_protectedbase_beginMoveColumns".}
proc fcQSqlTableModel_protectedbase_endMoveColumns(self: pointer): void {.importc: "QSqlTableModel_protectedbase_endMoveColumns".}
proc fcQSqlTableModel_protectedbase_changePersistentIndex(self: pointer, fromVal: pointer, to: pointer): void {.importc: "QSqlTableModel_protectedbase_changePersistentIndex".}
proc fcQSqlTableModel_protectedbase_changePersistentIndexList(self: pointer, fromVal: struct_seaqt_array, to: struct_seaqt_array): void {.importc: "QSqlTableModel_protectedbase_changePersistentIndexList".}
proc fcQSqlTableModel_protectedbase_persistentIndexList(self: pointer): struct_seaqt_array {.importc: "QSqlTableModel_protectedbase_persistentIndexList".}
proc fcQSqlTableModel_protectedbase_sender(self: pointer): pointer {.importc: "QSqlTableModel_protectedbase_sender".}
proc fcQSqlTableModel_protectedbase_senderSignalIndex(self: pointer): cint {.importc: "QSqlTableModel_protectedbase_senderSignalIndex".}
proc fcQSqlTableModel_protectedbase_receivers(self: pointer, signal: cstring): cint {.importc: "QSqlTableModel_protectedbase_receivers".}
proc fcQSqlTableModel_protectedbase_isSignalConnected(self: pointer, signal: pointer): bool {.importc: "QSqlTableModel_protectedbase_isSignalConnected".}
proc fcQSqlTableModel_new(vtbl: pointer, vdata: csize_t): ptr cQSqlTableModel {.importc: "QSqlTableModel_new".}
proc fcQSqlTableModel_new2(vtbl: pointer, vdata: csize_t, parent: pointer): ptr cQSqlTableModel {.importc: "QSqlTableModel_new2".}
proc fcQSqlTableModel_new3(vtbl: pointer, vdata: csize_t, parent: pointer, db: pointer): ptr cQSqlTableModel {.importc: "QSqlTableModel_new3".}
proc fcQSqlTableModel_staticMetaObject(): pointer {.importc: "QSqlTableModel_staticMetaObject".}

proc metaObject*(self: gen_qsqltablemodel_types.QSqlTableModel): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQSqlTableModel_metaObject(self.h), owned: false)

proc metacast*(self: gen_qsqltablemodel_types.QSqlTableModel, param1: cstring): pointer =
  fcQSqlTableModel_metacast(self.h, param1)

proc metacall*(self: gen_qsqltablemodel_types.QSqlTableModel, param1: cint, param2: cint, param3: pointer): cint =
  fcQSqlTableModel_metacall(self.h, cint(param1), param2, param3)

proc tr*(_: type gen_qsqltablemodel_types.QSqlTableModel, s: cstring): string =
  let v_ms = fcQSqlTableModel_tr(s)
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

proc setTable*(self: gen_qsqltablemodel_types.QSqlTableModel, tableName: openArray[char]): void =
  fcQSqlTableModel_setTable(self.h, struct_seaqt_string(data: if len(tableName) > 0: addr tableName[0] else: nil, len: csize_t(len(tableName))))

proc tableName*(self: gen_qsqltablemodel_types.QSqlTableModel): string =
  let v_ms = fcQSqlTableModel_tableName(self.h)
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

proc flags*(self: gen_qsqltablemodel_types.QSqlTableModel, index: gen_qabstractitemmodel_types.QModelIndex): cint =
  cint(fcQSqlTableModel_flags(self.h, index.h))

proc record*(self: gen_qsqltablemodel_types.QSqlTableModel): gen_qsqlrecord_types.QSqlRecord =
  gen_qsqlrecord_types.QSqlRecord(h: fcQSqlTableModel_record(self.h), owned: true)

proc record*(self: gen_qsqltablemodel_types.QSqlTableModel, row: cint): gen_qsqlrecord_types.QSqlRecord =
  gen_qsqlrecord_types.QSqlRecord(h: fcQSqlTableModel_recordWithRow(self.h, row), owned: true)

proc data*(self: gen_qsqltablemodel_types.QSqlTableModel, idx: gen_qabstractitemmodel_types.QModelIndex, role: cint): gen_qvariant_types.QVariant =
  gen_qvariant_types.QVariant(h: fcQSqlTableModel_data(self.h, idx.h, role), owned: true)

proc setData*(self: gen_qsqltablemodel_types.QSqlTableModel, index: gen_qabstractitemmodel_types.QModelIndex, value: gen_qvariant_types.QVariant, role: cint): bool =
  fcQSqlTableModel_setData(self.h, index.h, value.h, role)

proc clearItemData*(self: gen_qsqltablemodel_types.QSqlTableModel, index: gen_qabstractitemmodel_types.QModelIndex): bool =
  fcQSqlTableModel_clearItemData(self.h, index.h)

proc headerData*(self: gen_qsqltablemodel_types.QSqlTableModel, section: cint, orientation: cint, role: cint): gen_qvariant_types.QVariant =
  gen_qvariant_types.QVariant(h: fcQSqlTableModel_headerData(self.h, section, cint(orientation), role), owned: true)

proc isDirty*(self: gen_qsqltablemodel_types.QSqlTableModel): bool =
  fcQSqlTableModel_isDirty(self.h)

proc isDirty*(self: gen_qsqltablemodel_types.QSqlTableModel, index: gen_qabstractitemmodel_types.QModelIndex): bool =
  fcQSqlTableModel_isDirtyWithIndex(self.h, index.h)

proc clear*(self: gen_qsqltablemodel_types.QSqlTableModel): void =
  fcQSqlTableModel_clear(self.h)

proc setEditStrategy*(self: gen_qsqltablemodel_types.QSqlTableModel, strategy: cint): void =
  fcQSqlTableModel_setEditStrategy(self.h, cint(strategy))

proc editStrategy*(self: gen_qsqltablemodel_types.QSqlTableModel): cint =
  cint(fcQSqlTableModel_editStrategy(self.h))

proc primaryKey*(self: gen_qsqltablemodel_types.QSqlTableModel): gen_qsqlindex_types.QSqlIndex =
  gen_qsqlindex_types.QSqlIndex(h: fcQSqlTableModel_primaryKey(self.h), owned: true)

proc database*(self: gen_qsqltablemodel_types.QSqlTableModel): gen_qsqldatabase_types.QSqlDatabase =
  gen_qsqldatabase_types.QSqlDatabase(h: fcQSqlTableModel_database(self.h), owned: true)

proc fieldIndex*(self: gen_qsqltablemodel_types.QSqlTableModel, fieldName: openArray[char]): cint =
  fcQSqlTableModel_fieldIndex(self.h, struct_seaqt_string(data: if len(fieldName) > 0: addr fieldName[0] else: nil, len: csize_t(len(fieldName))))

proc sort*(self: gen_qsqltablemodel_types.QSqlTableModel, column: cint, order: cint): void =
  fcQSqlTableModel_sort(self.h, column, cint(order))

proc setSort*(self: gen_qsqltablemodel_types.QSqlTableModel, column: cint, order: cint): void =
  fcQSqlTableModel_setSort(self.h, column, cint(order))

proc filter*(self: gen_qsqltablemodel_types.QSqlTableModel): string =
  let v_ms = fcQSqlTableModel_filter(self.h)
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

proc setFilter*(self: gen_qsqltablemodel_types.QSqlTableModel, filter: openArray[char]): void =
  fcQSqlTableModel_setFilter(self.h, struct_seaqt_string(data: if len(filter) > 0: addr filter[0] else: nil, len: csize_t(len(filter))))

proc rowCount*(self: gen_qsqltablemodel_types.QSqlTableModel, parent: gen_qabstractitemmodel_types.QModelIndex): cint =
  fcQSqlTableModel_rowCount(self.h, parent.h)

proc removeColumns*(self: gen_qsqltablemodel_types.QSqlTableModel, column: cint, count: cint, parent: gen_qabstractitemmodel_types.QModelIndex): bool =
  fcQSqlTableModel_removeColumns(self.h, column, count, parent.h)

proc removeRows*(self: gen_qsqltablemodel_types.QSqlTableModel, row: cint, count: cint, parent: gen_qabstractitemmodel_types.QModelIndex): bool =
  fcQSqlTableModel_removeRows(self.h, row, count, parent.h)

proc insertRows*(self: gen_qsqltablemodel_types.QSqlTableModel, row: cint, count: cint, parent: gen_qabstractitemmodel_types.QModelIndex): bool =
  fcQSqlTableModel_insertRows(self.h, row, count, parent.h)

proc insertRecord*(self: gen_qsqltablemodel_types.QSqlTableModel, row: cint, record: gen_qsqlrecord_types.QSqlRecord): bool =
  fcQSqlTableModel_insertRecord(self.h, row, record.h)

proc setRecord*(self: gen_qsqltablemodel_types.QSqlTableModel, row: cint, record: gen_qsqlrecord_types.QSqlRecord): bool =
  fcQSqlTableModel_setRecord(self.h, row, record.h)

proc revertRow*(self: gen_qsqltablemodel_types.QSqlTableModel, row: cint): void =
  fcQSqlTableModel_revertRow(self.h, row)

proc select*(self: gen_qsqltablemodel_types.QSqlTableModel): bool =
  fcQSqlTableModel_select(self.h)

proc selectRow*(self: gen_qsqltablemodel_types.QSqlTableModel, row: cint): bool =
  fcQSqlTableModel_selectRow(self.h, row)

proc submit*(self: gen_qsqltablemodel_types.QSqlTableModel): bool =
  fcQSqlTableModel_submit(self.h)

proc revert*(self: gen_qsqltablemodel_types.QSqlTableModel): void =
  fcQSqlTableModel_revert(self.h)

proc submitAll*(self: gen_qsqltablemodel_types.QSqlTableModel): bool =
  fcQSqlTableModel_submitAll(self.h)

proc revertAll*(self: gen_qsqltablemodel_types.QSqlTableModel): void =
  fcQSqlTableModel_revertAll(self.h)

proc primeInsert*(self: gen_qsqltablemodel_types.QSqlTableModel, row: cint, record: gen_qsqlrecord_types.QSqlRecord): void =
  fcQSqlTableModel_primeInsert(self.h, row, record.h)

type QSqlTableModelprimeInsertSlot* = proc(row: cint, record: gen_qsqlrecord_types.QSqlRecord)
proc fcQSqlTableModel_slot_callback_primeInsert(slot: int, row: cint, record: pointer) {.cdecl.} =
  let nimfunc = cast[ptr QSqlTableModelprimeInsertSlot](cast[pointer](slot))
  let slotval1 = row

  let slotval2 = gen_qsqlrecord_types.QSqlRecord(h: record, owned: false)

  nimfunc[](slotval1, slotval2)

proc fcQSqlTableModel_slot_callback_primeInsert_release(slot: int) {.cdecl.} =
  let nimfunc = cast[ref QSqlTableModelprimeInsertSlot](cast[pointer](slot))
  GC_unref(nimfunc)

proc onPrimeInsert*(self: gen_qsqltablemodel_types.QSqlTableModel, slot: QSqlTableModelprimeInsertSlot) =
  var tmp = new QSqlTableModelprimeInsertSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQSqlTableModel_connect_primeInsert(self.h, cast[int](addr tmp[]), fcQSqlTableModel_slot_callback_primeInsert, fcQSqlTableModel_slot_callback_primeInsert_release)

proc beforeInsert*(self: gen_qsqltablemodel_types.QSqlTableModel, record: gen_qsqlrecord_types.QSqlRecord): void =
  fcQSqlTableModel_beforeInsert(self.h, record.h)

type QSqlTableModelbeforeInsertSlot* = proc(record: gen_qsqlrecord_types.QSqlRecord)
proc fcQSqlTableModel_slot_callback_beforeInsert(slot: int, record: pointer) {.cdecl.} =
  let nimfunc = cast[ptr QSqlTableModelbeforeInsertSlot](cast[pointer](slot))
  let slotval1 = gen_qsqlrecord_types.QSqlRecord(h: record, owned: false)

  nimfunc[](slotval1)

proc fcQSqlTableModel_slot_callback_beforeInsert_release(slot: int) {.cdecl.} =
  let nimfunc = cast[ref QSqlTableModelbeforeInsertSlot](cast[pointer](slot))
  GC_unref(nimfunc)

proc onBeforeInsert*(self: gen_qsqltablemodel_types.QSqlTableModel, slot: QSqlTableModelbeforeInsertSlot) =
  var tmp = new QSqlTableModelbeforeInsertSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQSqlTableModel_connect_beforeInsert(self.h, cast[int](addr tmp[]), fcQSqlTableModel_slot_callback_beforeInsert, fcQSqlTableModel_slot_callback_beforeInsert_release)

proc beforeUpdate*(self: gen_qsqltablemodel_types.QSqlTableModel, row: cint, record: gen_qsqlrecord_types.QSqlRecord): void =
  fcQSqlTableModel_beforeUpdate(self.h, row, record.h)

type QSqlTableModelbeforeUpdateSlot* = proc(row: cint, record: gen_qsqlrecord_types.QSqlRecord)
proc fcQSqlTableModel_slot_callback_beforeUpdate(slot: int, row: cint, record: pointer) {.cdecl.} =
  let nimfunc = cast[ptr QSqlTableModelbeforeUpdateSlot](cast[pointer](slot))
  let slotval1 = row

  let slotval2 = gen_qsqlrecord_types.QSqlRecord(h: record, owned: false)

  nimfunc[](slotval1, slotval2)

proc fcQSqlTableModel_slot_callback_beforeUpdate_release(slot: int) {.cdecl.} =
  let nimfunc = cast[ref QSqlTableModelbeforeUpdateSlot](cast[pointer](slot))
  GC_unref(nimfunc)

proc onBeforeUpdate*(self: gen_qsqltablemodel_types.QSqlTableModel, slot: QSqlTableModelbeforeUpdateSlot) =
  var tmp = new QSqlTableModelbeforeUpdateSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQSqlTableModel_connect_beforeUpdate(self.h, cast[int](addr tmp[]), fcQSqlTableModel_slot_callback_beforeUpdate, fcQSqlTableModel_slot_callback_beforeUpdate_release)

proc beforeDelete*(self: gen_qsqltablemodel_types.QSqlTableModel, row: cint): void =
  fcQSqlTableModel_beforeDelete(self.h, row)

type QSqlTableModelbeforeDeleteSlot* = proc(row: cint)
proc fcQSqlTableModel_slot_callback_beforeDelete(slot: int, row: cint) {.cdecl.} =
  let nimfunc = cast[ptr QSqlTableModelbeforeDeleteSlot](cast[pointer](slot))
  let slotval1 = row

  nimfunc[](slotval1)

proc fcQSqlTableModel_slot_callback_beforeDelete_release(slot: int) {.cdecl.} =
  let nimfunc = cast[ref QSqlTableModelbeforeDeleteSlot](cast[pointer](slot))
  GC_unref(nimfunc)

proc onBeforeDelete*(self: gen_qsqltablemodel_types.QSqlTableModel, slot: QSqlTableModelbeforeDeleteSlot) =
  var tmp = new QSqlTableModelbeforeDeleteSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQSqlTableModel_connect_beforeDelete(self.h, cast[int](addr tmp[]), fcQSqlTableModel_slot_callback_beforeDelete, fcQSqlTableModel_slot_callback_beforeDelete_release)

proc tr*(_: type gen_qsqltablemodel_types.QSqlTableModel, s: cstring, c: cstring): string =
  let v_ms = fcQSqlTableModel_tr2(s, c)
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

proc tr*(_: type gen_qsqltablemodel_types.QSqlTableModel, s: cstring, c: cstring, n: cint): string =
  let v_ms = fcQSqlTableModel_tr3(s, c, n)
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

type QSqlTableModelmetaObjectProc* = proc(self: QSqlTableModel): gen_qobjectdefs_types.QMetaObject {.raises: [], gcsafe.}
type QSqlTableModelmetacastProc* = proc(self: QSqlTableModel, param1: cstring): pointer {.raises: [], gcsafe.}
type QSqlTableModelmetacallProc* = proc(self: QSqlTableModel, param1: cint, param2: cint, param3: pointer): cint {.raises: [], gcsafe.}
type QSqlTableModelsetTableProc* = proc(self: QSqlTableModel, tableName: openArray[char]): void {.raises: [], gcsafe.}
type QSqlTableModelflagsProc* = proc(self: QSqlTableModel, index: gen_qabstractitemmodel_types.QModelIndex): cint {.raises: [], gcsafe.}
type QSqlTableModeldataProc* = proc(self: QSqlTableModel, idx: gen_qabstractitemmodel_types.QModelIndex, role: cint): gen_qvariant_types.QVariant {.raises: [], gcsafe.}
type QSqlTableModelsetDataProc* = proc(self: QSqlTableModel, index: gen_qabstractitemmodel_types.QModelIndex, value: gen_qvariant_types.QVariant, role: cint): bool {.raises: [], gcsafe.}
type QSqlTableModelclearItemDataProc* = proc(self: QSqlTableModel, index: gen_qabstractitemmodel_types.QModelIndex): bool {.raises: [], gcsafe.}
type QSqlTableModelheaderDataProc* = proc(self: QSqlTableModel, section: cint, orientation: cint, role: cint): gen_qvariant_types.QVariant {.raises: [], gcsafe.}
type QSqlTableModelclearProc* = proc(self: QSqlTableModel): void {.raises: [], gcsafe.}
type QSqlTableModelsetEditStrategyProc* = proc(self: QSqlTableModel, strategy: cint): void {.raises: [], gcsafe.}
type QSqlTableModelsortProc* = proc(self: QSqlTableModel, column: cint, order: cint): void {.raises: [], gcsafe.}
type QSqlTableModelsetSortProc* = proc(self: QSqlTableModel, column: cint, order: cint): void {.raises: [], gcsafe.}
type QSqlTableModelsetFilterProc* = proc(self: QSqlTableModel, filter: openArray[char]): void {.raises: [], gcsafe.}
type QSqlTableModelrowCountProc* = proc(self: QSqlTableModel, parent: gen_qabstractitemmodel_types.QModelIndex): cint {.raises: [], gcsafe.}
type QSqlTableModelremoveColumnsProc* = proc(self: QSqlTableModel, column: cint, count: cint, parent: gen_qabstractitemmodel_types.QModelIndex): bool {.raises: [], gcsafe.}
type QSqlTableModelremoveRowsProc* = proc(self: QSqlTableModel, row: cint, count: cint, parent: gen_qabstractitemmodel_types.QModelIndex): bool {.raises: [], gcsafe.}
type QSqlTableModelinsertRowsProc* = proc(self: QSqlTableModel, row: cint, count: cint, parent: gen_qabstractitemmodel_types.QModelIndex): bool {.raises: [], gcsafe.}
type QSqlTableModelrevertRowProc* = proc(self: QSqlTableModel, row: cint): void {.raises: [], gcsafe.}
type QSqlTableModelselectProc* = proc(self: QSqlTableModel): bool {.raises: [], gcsafe.}
type QSqlTableModelselectRowProc* = proc(self: QSqlTableModel, row: cint): bool {.raises: [], gcsafe.}
type QSqlTableModelsubmitProc* = proc(self: QSqlTableModel): bool {.raises: [], gcsafe.}
type QSqlTableModelrevertProc* = proc(self: QSqlTableModel): void {.raises: [], gcsafe.}
type QSqlTableModelupdateRowInTableProc* = proc(self: QSqlTableModel, row: cint, values: gen_qsqlrecord_types.QSqlRecord): bool {.raises: [], gcsafe.}
type QSqlTableModelinsertRowIntoTableProc* = proc(self: QSqlTableModel, values: gen_qsqlrecord_types.QSqlRecord): bool {.raises: [], gcsafe.}
type QSqlTableModeldeleteRowFromTableProc* = proc(self: QSqlTableModel, row: cint): bool {.raises: [], gcsafe.}
type QSqlTableModelorderByClauseProc* = proc(self: QSqlTableModel): string {.raises: [], gcsafe.}
type QSqlTableModelselectStatementProc* = proc(self: QSqlTableModel): string {.raises: [], gcsafe.}
type QSqlTableModelindexInQueryProc* = proc(self: QSqlTableModel, item: gen_qabstractitemmodel_types.QModelIndex): gen_qabstractitemmodel_types.QModelIndex {.raises: [], gcsafe.}
type QSqlTableModelcolumnCountProc* = proc(self: QSqlTableModel, parent: gen_qabstractitemmodel_types.QModelIndex): cint {.raises: [], gcsafe.}
type QSqlTableModelsetHeaderDataProc* = proc(self: QSqlTableModel, section: cint, orientation: cint, value: gen_qvariant_types.QVariant, role: cint): bool {.raises: [], gcsafe.}
type QSqlTableModelinsertColumnsProc* = proc(self: QSqlTableModel, column: cint, count: cint, parent: gen_qabstractitemmodel_types.QModelIndex): bool {.raises: [], gcsafe.}
type QSqlTableModelfetchMoreProc* = proc(self: QSqlTableModel, parent: gen_qabstractitemmodel_types.QModelIndex): void {.raises: [], gcsafe.}
type QSqlTableModelcanFetchMoreProc* = proc(self: QSqlTableModel, parent: gen_qabstractitemmodel_types.QModelIndex): bool {.raises: [], gcsafe.}
type QSqlTableModelroleNamesProc* = proc(self: QSqlTableModel): Table[cint,seq[byte]] {.raises: [], gcsafe.}
type QSqlTableModelqueryChangeProc* = proc(self: QSqlTableModel): void {.raises: [], gcsafe.}
type QSqlTableModelindexProc* = proc(self: QSqlTableModel, row: cint, column: cint, parent: gen_qabstractitemmodel_types.QModelIndex): gen_qabstractitemmodel_types.QModelIndex {.raises: [], gcsafe.}
type QSqlTableModelsiblingProc* = proc(self: QSqlTableModel, row: cint, column: cint, idx: gen_qabstractitemmodel_types.QModelIndex): gen_qabstractitemmodel_types.QModelIndex {.raises: [], gcsafe.}
type QSqlTableModeldropMimeDataProc* = proc(self: QSqlTableModel, data: gen_qmimedata_types.QMimeData, action: cint, row: cint, column: cint, parent: gen_qabstractitemmodel_types.QModelIndex): bool {.raises: [], gcsafe.}
type QSqlTableModelitemDataProc* = proc(self: QSqlTableModel, index: gen_qabstractitemmodel_types.QModelIndex): Table[cint,gen_qvariant_types.QVariant] {.raises: [], gcsafe.}
type QSqlTableModelsetItemDataProc* = proc(self: QSqlTableModel, index: gen_qabstractitemmodel_types.QModelIndex, roles: Table[cint,gen_qvariant_types.QVariant]): bool {.raises: [], gcsafe.}
type QSqlTableModelmimeTypesProc* = proc(self: QSqlTableModel): seq[string] {.raises: [], gcsafe.}
type QSqlTableModelmimeDataProc* = proc(self: QSqlTableModel, indexes: openArray[gen_qabstractitemmodel_types.QModelIndex]): gen_qmimedata_types.QMimeData {.raises: [], gcsafe.}
type QSqlTableModelcanDropMimeDataProc* = proc(self: QSqlTableModel, data: gen_qmimedata_types.QMimeData, action: cint, row: cint, column: cint, parent: gen_qabstractitemmodel_types.QModelIndex): bool {.raises: [], gcsafe.}
type QSqlTableModelsupportedDropActionsProc* = proc(self: QSqlTableModel): cint {.raises: [], gcsafe.}
type QSqlTableModelsupportedDragActionsProc* = proc(self: QSqlTableModel): cint {.raises: [], gcsafe.}
type QSqlTableModelmoveRowsProc* = proc(self: QSqlTableModel, sourceParent: gen_qabstractitemmodel_types.QModelIndex, sourceRow: cint, count: cint, destinationParent: gen_qabstractitemmodel_types.QModelIndex, destinationChild: cint): bool {.raises: [], gcsafe.}
type QSqlTableModelmoveColumnsProc* = proc(self: QSqlTableModel, sourceParent: gen_qabstractitemmodel_types.QModelIndex, sourceColumn: cint, count: cint, destinationParent: gen_qabstractitemmodel_types.QModelIndex, destinationChild: cint): bool {.raises: [], gcsafe.}
type QSqlTableModelbuddyProc* = proc(self: QSqlTableModel, index: gen_qabstractitemmodel_types.QModelIndex): gen_qabstractitemmodel_types.QModelIndex {.raises: [], gcsafe.}
type QSqlTableModelmatchProc* = proc(self: QSqlTableModel, start: gen_qabstractitemmodel_types.QModelIndex, role: cint, value: gen_qvariant_types.QVariant, hits: cint, flags: cint): seq[gen_qabstractitemmodel_types.QModelIndex] {.raises: [], gcsafe.}
type QSqlTableModelspanProc* = proc(self: QSqlTableModel, index: gen_qabstractitemmodel_types.QModelIndex): gen_qsize_types.QSize {.raises: [], gcsafe.}
type QSqlTableModelmultiDataProc* = proc(self: QSqlTableModel, index: gen_qabstractitemmodel_types.QModelIndex, roleDataSpan: gen_qabstractitemmodel_types.QModelRoleDataSpan): void {.raises: [], gcsafe.}
type QSqlTableModelresetInternalDataProc* = proc(self: QSqlTableModel): void {.raises: [], gcsafe.}
type QSqlTableModeleventProc* = proc(self: QSqlTableModel, event: gen_qcoreevent_types.QEvent): bool {.raises: [], gcsafe.}
type QSqlTableModeleventFilterProc* = proc(self: QSqlTableModel, watched: gen_qobject_types.QObject, event: gen_qcoreevent_types.QEvent): bool {.raises: [], gcsafe.}
type QSqlTableModeltimerEventProc* = proc(self: QSqlTableModel, event: gen_qcoreevent_types.QTimerEvent): void {.raises: [], gcsafe.}
type QSqlTableModelchildEventProc* = proc(self: QSqlTableModel, event: gen_qcoreevent_types.QChildEvent): void {.raises: [], gcsafe.}
type QSqlTableModelcustomEventProc* = proc(self: QSqlTableModel, event: gen_qcoreevent_types.QEvent): void {.raises: [], gcsafe.}
type QSqlTableModelconnectNotifyProc* = proc(self: QSqlTableModel, signal: gen_qmetaobject_types.QMetaMethod): void {.raises: [], gcsafe.}
type QSqlTableModeldisconnectNotifyProc* = proc(self: QSqlTableModel, signal: gen_qmetaobject_types.QMetaMethod): void {.raises: [], gcsafe.}

type QSqlTableModelVTable* {.inheritable, pure.} = object
  vtbl: cQSqlTableModelVTable
  metaObject*: QSqlTableModelmetaObjectProc
  metacast*: QSqlTableModelmetacastProc
  metacall*: QSqlTableModelmetacallProc
  setTable*: QSqlTableModelsetTableProc
  flags*: QSqlTableModelflagsProc
  data*: QSqlTableModeldataProc
  setData*: QSqlTableModelsetDataProc
  clearItemData*: QSqlTableModelclearItemDataProc
  headerData*: QSqlTableModelheaderDataProc
  clear*: QSqlTableModelclearProc
  setEditStrategy*: QSqlTableModelsetEditStrategyProc
  sort*: QSqlTableModelsortProc
  setSort*: QSqlTableModelsetSortProc
  setFilter*: QSqlTableModelsetFilterProc
  rowCount*: QSqlTableModelrowCountProc
  removeColumns*: QSqlTableModelremoveColumnsProc
  removeRows*: QSqlTableModelremoveRowsProc
  insertRows*: QSqlTableModelinsertRowsProc
  revertRow*: QSqlTableModelrevertRowProc
  select*: QSqlTableModelselectProc
  selectRow*: QSqlTableModelselectRowProc
  submit*: QSqlTableModelsubmitProc
  revert*: QSqlTableModelrevertProc
  updateRowInTable*: QSqlTableModelupdateRowInTableProc
  insertRowIntoTable*: QSqlTableModelinsertRowIntoTableProc
  deleteRowFromTable*: QSqlTableModeldeleteRowFromTableProc
  orderByClause*: QSqlTableModelorderByClauseProc
  selectStatement*: QSqlTableModelselectStatementProc
  indexInQuery*: QSqlTableModelindexInQueryProc
  columnCount*: QSqlTableModelcolumnCountProc
  setHeaderData*: QSqlTableModelsetHeaderDataProc
  insertColumns*: QSqlTableModelinsertColumnsProc
  fetchMore*: QSqlTableModelfetchMoreProc
  canFetchMore*: QSqlTableModelcanFetchMoreProc
  roleNames*: QSqlTableModelroleNamesProc
  queryChange*: QSqlTableModelqueryChangeProc
  index*: QSqlTableModelindexProc
  sibling*: QSqlTableModelsiblingProc
  dropMimeData*: QSqlTableModeldropMimeDataProc
  itemData*: QSqlTableModelitemDataProc
  setItemData*: QSqlTableModelsetItemDataProc
  mimeTypes*: QSqlTableModelmimeTypesProc
  mimeData*: QSqlTableModelmimeDataProc
  canDropMimeData*: QSqlTableModelcanDropMimeDataProc
  supportedDropActions*: QSqlTableModelsupportedDropActionsProc
  supportedDragActions*: QSqlTableModelsupportedDragActionsProc
  moveRows*: QSqlTableModelmoveRowsProc
  moveColumns*: QSqlTableModelmoveColumnsProc
  buddy*: QSqlTableModelbuddyProc
  match*: QSqlTableModelmatchProc
  span*: QSqlTableModelspanProc
  multiData*: QSqlTableModelmultiDataProc
  resetInternalData*: QSqlTableModelresetInternalDataProc
  event*: QSqlTableModeleventProc
  eventFilter*: QSqlTableModeleventFilterProc
  timerEvent*: QSqlTableModeltimerEventProc
  childEvent*: QSqlTableModelchildEventProc
  customEvent*: QSqlTableModelcustomEventProc
  connectNotify*: QSqlTableModelconnectNotifyProc
  disconnectNotify*: QSqlTableModeldisconnectNotifyProc

proc QSqlTableModelmetaObject*(self: gen_qsqltablemodel_types.QSqlTableModel): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQSqlTableModel_virtualbase_metaObject(self.h), owned: false)

proc QSqlTableModelmetacast*(self: gen_qsqltablemodel_types.QSqlTableModel, param1: cstring): pointer =
  fcQSqlTableModel_virtualbase_metacast(self.h, param1)

proc QSqlTableModelmetacall*(self: gen_qsqltablemodel_types.QSqlTableModel, param1: cint, param2: cint, param3: pointer): cint =
  fcQSqlTableModel_virtualbase_metacall(self.h, cint(param1), param2, param3)

proc QSqlTableModelsetTable*(self: gen_qsqltablemodel_types.QSqlTableModel, tableName: openArray[char]): void =
  fcQSqlTableModel_virtualbase_setTable(self.h, struct_seaqt_string(data: if len(tableName) > 0: addr tableName[0] else: nil, len: csize_t(len(tableName))))

proc QSqlTableModelflags*(self: gen_qsqltablemodel_types.QSqlTableModel, index: gen_qabstractitemmodel_types.QModelIndex): cint =
  cint(fcQSqlTableModel_virtualbase_flags(self.h, index.h))

proc QSqlTableModeldata*(self: gen_qsqltablemodel_types.QSqlTableModel, idx: gen_qabstractitemmodel_types.QModelIndex, role: cint): gen_qvariant_types.QVariant =
  gen_qvariant_types.QVariant(h: fcQSqlTableModel_virtualbase_data(self.h, idx.h, role), owned: true)

proc QSqlTableModelsetData*(self: gen_qsqltablemodel_types.QSqlTableModel, index: gen_qabstractitemmodel_types.QModelIndex, value: gen_qvariant_types.QVariant, role: cint): bool =
  fcQSqlTableModel_virtualbase_setData(self.h, index.h, value.h, role)

proc QSqlTableModelclearItemData*(self: gen_qsqltablemodel_types.QSqlTableModel, index: gen_qabstractitemmodel_types.QModelIndex): bool =
  fcQSqlTableModel_virtualbase_clearItemData(self.h, index.h)

proc QSqlTableModelheaderData*(self: gen_qsqltablemodel_types.QSqlTableModel, section: cint, orientation: cint, role: cint): gen_qvariant_types.QVariant =
  gen_qvariant_types.QVariant(h: fcQSqlTableModel_virtualbase_headerData(self.h, section, cint(orientation), role), owned: true)

proc QSqlTableModelclear*(self: gen_qsqltablemodel_types.QSqlTableModel): void =
  fcQSqlTableModel_virtualbase_clear(self.h)

proc QSqlTableModelsetEditStrategy*(self: gen_qsqltablemodel_types.QSqlTableModel, strategy: cint): void =
  fcQSqlTableModel_virtualbase_setEditStrategy(self.h, cint(strategy))

proc QSqlTableModelsort*(self: gen_qsqltablemodel_types.QSqlTableModel, column: cint, order: cint): void =
  fcQSqlTableModel_virtualbase_sort(self.h, column, cint(order))

proc QSqlTableModelsetSort*(self: gen_qsqltablemodel_types.QSqlTableModel, column: cint, order: cint): void =
  fcQSqlTableModel_virtualbase_setSort(self.h, column, cint(order))

proc QSqlTableModelsetFilter*(self: gen_qsqltablemodel_types.QSqlTableModel, filter: openArray[char]): void =
  fcQSqlTableModel_virtualbase_setFilter(self.h, struct_seaqt_string(data: if len(filter) > 0: addr filter[0] else: nil, len: csize_t(len(filter))))

proc QSqlTableModelrowCount*(self: gen_qsqltablemodel_types.QSqlTableModel, parent: gen_qabstractitemmodel_types.QModelIndex): cint =
  fcQSqlTableModel_virtualbase_rowCount(self.h, parent.h)

proc QSqlTableModelremoveColumns*(self: gen_qsqltablemodel_types.QSqlTableModel, column: cint, count: cint, parent: gen_qabstractitemmodel_types.QModelIndex): bool =
  fcQSqlTableModel_virtualbase_removeColumns(self.h, column, count, parent.h)

proc QSqlTableModelremoveRows*(self: gen_qsqltablemodel_types.QSqlTableModel, row: cint, count: cint, parent: gen_qabstractitemmodel_types.QModelIndex): bool =
  fcQSqlTableModel_virtualbase_removeRows(self.h, row, count, parent.h)

proc QSqlTableModelinsertRows*(self: gen_qsqltablemodel_types.QSqlTableModel, row: cint, count: cint, parent: gen_qabstractitemmodel_types.QModelIndex): bool =
  fcQSqlTableModel_virtualbase_insertRows(self.h, row, count, parent.h)

proc QSqlTableModelrevertRow*(self: gen_qsqltablemodel_types.QSqlTableModel, row: cint): void =
  fcQSqlTableModel_virtualbase_revertRow(self.h, row)

proc QSqlTableModelselect*(self: gen_qsqltablemodel_types.QSqlTableModel): bool =
  fcQSqlTableModel_virtualbase_select(self.h)

proc QSqlTableModelselectRow*(self: gen_qsqltablemodel_types.QSqlTableModel, row: cint): bool =
  fcQSqlTableModel_virtualbase_selectRow(self.h, row)

proc QSqlTableModelsubmit*(self: gen_qsqltablemodel_types.QSqlTableModel): bool =
  fcQSqlTableModel_virtualbase_submit(self.h)

proc QSqlTableModelrevert*(self: gen_qsqltablemodel_types.QSqlTableModel): void =
  fcQSqlTableModel_virtualbase_revert(self.h)

proc QSqlTableModelupdateRowInTable*(self: gen_qsqltablemodel_types.QSqlTableModel, row: cint, values: gen_qsqlrecord_types.QSqlRecord): bool =
  fcQSqlTableModel_virtualbase_updateRowInTable(self.h, row, values.h)

proc QSqlTableModelinsertRowIntoTable*(self: gen_qsqltablemodel_types.QSqlTableModel, values: gen_qsqlrecord_types.QSqlRecord): bool =
  fcQSqlTableModel_virtualbase_insertRowIntoTable(self.h, values.h)

proc QSqlTableModeldeleteRowFromTable*(self: gen_qsqltablemodel_types.QSqlTableModel, row: cint): bool =
  fcQSqlTableModel_virtualbase_deleteRowFromTable(self.h, row)

proc QSqlTableModelorderByClause*(self: gen_qsqltablemodel_types.QSqlTableModel): string =
  let v_ms = fcQSqlTableModel_virtualbase_orderByClause(self.h)
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

proc QSqlTableModelselectStatement*(self: gen_qsqltablemodel_types.QSqlTableModel): string =
  let v_ms = fcQSqlTableModel_virtualbase_selectStatement(self.h)
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

proc QSqlTableModelindexInQuery*(self: gen_qsqltablemodel_types.QSqlTableModel, item: gen_qabstractitemmodel_types.QModelIndex): gen_qabstractitemmodel_types.QModelIndex =
  gen_qabstractitemmodel_types.QModelIndex(h: fcQSqlTableModel_virtualbase_indexInQuery(self.h, item.h), owned: true)

proc QSqlTableModelcolumnCount*(self: gen_qsqltablemodel_types.QSqlTableModel, parent: gen_qabstractitemmodel_types.QModelIndex): cint =
  fcQSqlTableModel_virtualbase_columnCount(self.h, parent.h)

proc QSqlTableModelsetHeaderData*(self: gen_qsqltablemodel_types.QSqlTableModel, section: cint, orientation: cint, value: gen_qvariant_types.QVariant, role: cint): bool =
  fcQSqlTableModel_virtualbase_setHeaderData(self.h, section, cint(orientation), value.h, role)

proc QSqlTableModelinsertColumns*(self: gen_qsqltablemodel_types.QSqlTableModel, column: cint, count: cint, parent: gen_qabstractitemmodel_types.QModelIndex): bool =
  fcQSqlTableModel_virtualbase_insertColumns(self.h, column, count, parent.h)

proc QSqlTableModelfetchMore*(self: gen_qsqltablemodel_types.QSqlTableModel, parent: gen_qabstractitemmodel_types.QModelIndex): void =
  fcQSqlTableModel_virtualbase_fetchMore(self.h, parent.h)

proc QSqlTableModelcanFetchMore*(self: gen_qsqltablemodel_types.QSqlTableModel, parent: gen_qabstractitemmodel_types.QModelIndex): bool =
  fcQSqlTableModel_virtualbase_canFetchMore(self.h, parent.h)

proc QSqlTableModelroleNames*(self: gen_qsqltablemodel_types.QSqlTableModel): Table[cint,seq[byte]] =
  var v_mm = fcQSqlTableModel_virtualbase_roleNames(self.h)
  var vx_ret: Table[cint, seq[byte]]
  var v_Keys = cast[ptr UncheckedArray[cint]](v_mm.keys)
  var v_Values = cast[ptr UncheckedArray[struct_seaqt_string]](v_mm.values)
  for i in 0..<v_mm.len:
    var v_entry_Key = v_Keys[i]

    var vx_hashval_bytearray = v_Values[i]
    var vx_hashvalx_ret = @(toOpenArray(cast[ptr UncheckedArray[byte]](vx_hashval_bytearray.data), 0, int(vx_hashval_bytearray.len)-1))
    c_free(vx_hashval_bytearray.data)
    var v_entry_Value = vx_hashvalx_ret

    vx_ret[v_entry_Key] = v_entry_Value
  c_free(v_mm.keys)
  c_free(v_mm.values)
  vx_ret

proc QSqlTableModelqueryChange*(self: gen_qsqltablemodel_types.QSqlTableModel): void =
  fcQSqlTableModel_virtualbase_queryChange(self.h)

proc QSqlTableModelindex*(self: gen_qsqltablemodel_types.QSqlTableModel, row: cint, column: cint, parent: gen_qabstractitemmodel_types.QModelIndex): gen_qabstractitemmodel_types.QModelIndex =
  gen_qabstractitemmodel_types.QModelIndex(h: fcQSqlTableModel_virtualbase_index(self.h, row, column, parent.h), owned: true)

proc QSqlTableModelsibling*(self: gen_qsqltablemodel_types.QSqlTableModel, row: cint, column: cint, idx: gen_qabstractitemmodel_types.QModelIndex): gen_qabstractitemmodel_types.QModelIndex =
  gen_qabstractitemmodel_types.QModelIndex(h: fcQSqlTableModel_virtualbase_sibling(self.h, row, column, idx.h), owned: true)

proc QSqlTableModeldropMimeData*(self: gen_qsqltablemodel_types.QSqlTableModel, data: gen_qmimedata_types.QMimeData, action: cint, row: cint, column: cint, parent: gen_qabstractitemmodel_types.QModelIndex): bool =
  fcQSqlTableModel_virtualbase_dropMimeData(self.h, data.h, cint(action), row, column, parent.h)

proc QSqlTableModelitemData*(self: gen_qsqltablemodel_types.QSqlTableModel, index: gen_qabstractitemmodel_types.QModelIndex): Table[cint,gen_qvariant_types.QVariant] =
  var v_mm = fcQSqlTableModel_virtualbase_itemData(self.h, index.h)
  var vx_ret: Table[cint, gen_qvariant_types.QVariant]
  var v_Keys = cast[ptr UncheckedArray[cint]](v_mm.keys)
  var v_Values = cast[ptr UncheckedArray[pointer]](v_mm.values)
  for i in 0..<v_mm.len:
    var v_entry_Key = v_Keys[i]

    var v_entry_Value = gen_qvariant_types.QVariant(h: v_Values[i], owned: true)

    vx_ret[v_entry_Key] = v_entry_Value
  c_free(v_mm.keys)
  c_free(v_mm.values)
  vx_ret

proc QSqlTableModelsetItemData*(self: gen_qsqltablemodel_types.QSqlTableModel, index: gen_qabstractitemmodel_types.QModelIndex, roles: Table[cint,gen_qvariant_types.QVariant]): bool =
  var roles_Keys_CArray = newSeq[cint](len(roles))
  var roles_Values_CArray = newSeq[pointer](len(roles))
  var roles_ctr = 0
  for roles_k in roles.keys():
    roles_Keys_CArray[roles_ctr] = roles_k
    roles_ctr += 1
  roles_ctr = 0
  for roles_v in roles.values():
    roles_Values_CArray[roles_ctr] = roles_v.h
    roles_ctr += 1

  fcQSqlTableModel_virtualbase_setItemData(self.h, index.h, struct_seaqt_map(len: csize_t(len(roles)),keys: if len(roles) == 0: nil else: addr(roles_Keys_CArray[0]), values: if len(roles) == 0: nil else: addr(roles_Values_CArray[0]),))

proc QSqlTableModelmimeTypes*(self: gen_qsqltablemodel_types.QSqlTableModel): seq[string] =
  var v_ma = fcQSqlTableModel_virtualbase_mimeTypes(self.h)
  var vx_ret = newSeq[string](int(v_ma.len))
  let v_outCast = cast[ptr UncheckedArray[struct_seaqt_string]](v_ma.data)
  for i in 0 ..< v_ma.len:
    let vx_lv_ms = v_outCast[i]
    let vx_lvx_ret = string.fromBytes(vx_lv_ms)
    c_free(vx_lv_ms.data)
    vx_ret[i] = vx_lvx_ret
  c_free(v_ma.data)
  vx_ret

proc QSqlTableModelmimeData*(self: gen_qsqltablemodel_types.QSqlTableModel, indexes: openArray[gen_qabstractitemmodel_types.QModelIndex]): gen_qmimedata_types.QMimeData =
  var indexes_CArray = newSeq[pointer](len(indexes))
  for i in 0..<len(indexes):
    indexes_CArray[i] = indexes[i].h

  gen_qmimedata_types.QMimeData(h: fcQSqlTableModel_virtualbase_mimeData(self.h, struct_seaqt_array(len: csize_t(len(indexes)), data: if len(indexes) == 0: nil else: addr(indexes_CArray[0]))), owned: false)

proc QSqlTableModelcanDropMimeData*(self: gen_qsqltablemodel_types.QSqlTableModel, data: gen_qmimedata_types.QMimeData, action: cint, row: cint, column: cint, parent: gen_qabstractitemmodel_types.QModelIndex): bool =
  fcQSqlTableModel_virtualbase_canDropMimeData(self.h, data.h, cint(action), row, column, parent.h)

proc QSqlTableModelsupportedDropActions*(self: gen_qsqltablemodel_types.QSqlTableModel): cint =
  cint(fcQSqlTableModel_virtualbase_supportedDropActions(self.h))

proc QSqlTableModelsupportedDragActions*(self: gen_qsqltablemodel_types.QSqlTableModel): cint =
  cint(fcQSqlTableModel_virtualbase_supportedDragActions(self.h))

proc QSqlTableModelmoveRows*(self: gen_qsqltablemodel_types.QSqlTableModel, sourceParent: gen_qabstractitemmodel_types.QModelIndex, sourceRow: cint, count: cint, destinationParent: gen_qabstractitemmodel_types.QModelIndex, destinationChild: cint): bool =
  fcQSqlTableModel_virtualbase_moveRows(self.h, sourceParent.h, sourceRow, count, destinationParent.h, destinationChild)

proc QSqlTableModelmoveColumns*(self: gen_qsqltablemodel_types.QSqlTableModel, sourceParent: gen_qabstractitemmodel_types.QModelIndex, sourceColumn: cint, count: cint, destinationParent: gen_qabstractitemmodel_types.QModelIndex, destinationChild: cint): bool =
  fcQSqlTableModel_virtualbase_moveColumns(self.h, sourceParent.h, sourceColumn, count, destinationParent.h, destinationChild)

proc QSqlTableModelbuddy*(self: gen_qsqltablemodel_types.QSqlTableModel, index: gen_qabstractitemmodel_types.QModelIndex): gen_qabstractitemmodel_types.QModelIndex =
  gen_qabstractitemmodel_types.QModelIndex(h: fcQSqlTableModel_virtualbase_buddy(self.h, index.h), owned: true)

proc QSqlTableModelmatch*(self: gen_qsqltablemodel_types.QSqlTableModel, start: gen_qabstractitemmodel_types.QModelIndex, role: cint, value: gen_qvariant_types.QVariant, hits: cint, flags: cint): seq[gen_qabstractitemmodel_types.QModelIndex] =
  var v_ma = fcQSqlTableModel_virtualbase_match(self.h, start.h, role, value.h, hits, cint(flags))
  var vx_ret = newSeq[gen_qabstractitemmodel_types.QModelIndex](int(v_ma.len))
  let v_outCast = cast[ptr UncheckedArray[pointer]](v_ma.data)
  for i in 0 ..< v_ma.len:
    vx_ret[i] = gen_qabstractitemmodel_types.QModelIndex(h: v_outCast[i], owned: true)
  c_free(v_ma.data)
  vx_ret

proc QSqlTableModelspan*(self: gen_qsqltablemodel_types.QSqlTableModel, index: gen_qabstractitemmodel_types.QModelIndex): gen_qsize_types.QSize =
  gen_qsize_types.QSize(h: fcQSqlTableModel_virtualbase_span(self.h, index.h), owned: true)

proc QSqlTableModelmultiData*(self: gen_qsqltablemodel_types.QSqlTableModel, index: gen_qabstractitemmodel_types.QModelIndex, roleDataSpan: gen_qabstractitemmodel_types.QModelRoleDataSpan): void =
  fcQSqlTableModel_virtualbase_multiData(self.h, index.h, roleDataSpan.h)

proc QSqlTableModelresetInternalData*(self: gen_qsqltablemodel_types.QSqlTableModel): void =
  fcQSqlTableModel_virtualbase_resetInternalData(self.h)

proc QSqlTableModelevent*(self: gen_qsqltablemodel_types.QSqlTableModel, event: gen_qcoreevent_types.QEvent): bool =
  fcQSqlTableModel_virtualbase_event(self.h, event.h)

proc QSqlTableModeleventFilter*(self: gen_qsqltablemodel_types.QSqlTableModel, watched: gen_qobject_types.QObject, event: gen_qcoreevent_types.QEvent): bool =
  fcQSqlTableModel_virtualbase_eventFilter(self.h, watched.h, event.h)

proc QSqlTableModeltimerEvent*(self: gen_qsqltablemodel_types.QSqlTableModel, event: gen_qcoreevent_types.QTimerEvent): void =
  fcQSqlTableModel_virtualbase_timerEvent(self.h, event.h)

proc QSqlTableModelchildEvent*(self: gen_qsqltablemodel_types.QSqlTableModel, event: gen_qcoreevent_types.QChildEvent): void =
  fcQSqlTableModel_virtualbase_childEvent(self.h, event.h)

proc QSqlTableModelcustomEvent*(self: gen_qsqltablemodel_types.QSqlTableModel, event: gen_qcoreevent_types.QEvent): void =
  fcQSqlTableModel_virtualbase_customEvent(self.h, event.h)

proc QSqlTableModelconnectNotify*(self: gen_qsqltablemodel_types.QSqlTableModel, signal: gen_qmetaobject_types.QMetaMethod): void =
  fcQSqlTableModel_virtualbase_connectNotify(self.h, signal.h)

proc QSqlTableModeldisconnectNotify*(self: gen_qsqltablemodel_types.QSqlTableModel, signal: gen_qmetaobject_types.QMetaMethod): void =
  fcQSqlTableModel_virtualbase_disconnectNotify(self.h, signal.h)


proc fcQSqlTableModel_vtable_callback_metaObject(self: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QSqlTableModelVTable](fcQSqlTableModel_vdata(self)[])
  let self = QSqlTableModel(h: self)
  var virtualReturn = vtbl[].metaObject(self)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc fcQSqlTableModel_vtable_callback_metacast(self: pointer, param1: cstring): pointer {.cdecl.} =
  let vtbl = cast[ptr QSqlTableModelVTable](fcQSqlTableModel_vdata(self)[])
  let self = QSqlTableModel(h: self)
  let slotval1 = (param1)
  var virtualReturn = vtbl[].metacast(self, slotval1)
  virtualReturn

proc fcQSqlTableModel_vtable_callback_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.cdecl.} =
  let vtbl = cast[ptr QSqlTableModelVTable](fcQSqlTableModel_vdata(self)[])
  let self = QSqlTableModel(h: self)
  let slotval1 = cint(param1)
  let slotval2 = param2
  let slotval3 = param3
  var virtualReturn = vtbl[].metacall(self, slotval1, slotval2, slotval3)
  virtualReturn

proc fcQSqlTableModel_vtable_callback_setTable(self: pointer, tableName: struct_seaqt_string): void {.cdecl.} =
  let vtbl = cast[ptr QSqlTableModelVTable](fcQSqlTableModel_vdata(self)[])
  let self = QSqlTableModel(h: self)
  let vtableName_ms = tableName
  let vtableNamex_ret = string.fromBytes(vtableName_ms)
  c_free(vtableName_ms.data)
  let slotval1 = vtableNamex_ret
  vtbl[].setTable(self, slotval1)

proc fcQSqlTableModel_vtable_callback_flags(self: pointer, index: pointer): cint {.cdecl.} =
  let vtbl = cast[ptr QSqlTableModelVTable](fcQSqlTableModel_vdata(self)[])
  let self = QSqlTableModel(h: self)
  let slotval1 = gen_qabstractitemmodel_types.QModelIndex(h: index, owned: false)
  var virtualReturn = vtbl[].flags(self, slotval1)
  cint(virtualReturn)

proc fcQSqlTableModel_vtable_callback_data(self: pointer, idx: pointer, role: cint): pointer {.cdecl.} =
  let vtbl = cast[ptr QSqlTableModelVTable](fcQSqlTableModel_vdata(self)[])
  let self = QSqlTableModel(h: self)
  let slotval1 = gen_qabstractitemmodel_types.QModelIndex(h: idx, owned: false)
  let slotval2 = role
  var virtualReturn = vtbl[].data(self, slotval1, slotval2)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc fcQSqlTableModel_vtable_callback_setData(self: pointer, index: pointer, value: pointer, role: cint): bool {.cdecl.} =
  let vtbl = cast[ptr QSqlTableModelVTable](fcQSqlTableModel_vdata(self)[])
  let self = QSqlTableModel(h: self)
  let slotval1 = gen_qabstractitemmodel_types.QModelIndex(h: index, owned: false)
  let slotval2 = gen_qvariant_types.QVariant(h: value, owned: false)
  let slotval3 = role
  var virtualReturn = vtbl[].setData(self, slotval1, slotval2, slotval3)
  virtualReturn

proc fcQSqlTableModel_vtable_callback_clearItemData(self: pointer, index: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QSqlTableModelVTable](fcQSqlTableModel_vdata(self)[])
  let self = QSqlTableModel(h: self)
  let slotval1 = gen_qabstractitemmodel_types.QModelIndex(h: index, owned: false)
  var virtualReturn = vtbl[].clearItemData(self, slotval1)
  virtualReturn

proc fcQSqlTableModel_vtable_callback_headerData(self: pointer, section: cint, orientation: cint, role: cint): pointer {.cdecl.} =
  let vtbl = cast[ptr QSqlTableModelVTable](fcQSqlTableModel_vdata(self)[])
  let self = QSqlTableModel(h: self)
  let slotval1 = section
  let slotval2 = cint(orientation)
  let slotval3 = role
  var virtualReturn = vtbl[].headerData(self, slotval1, slotval2, slotval3)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc fcQSqlTableModel_vtable_callback_clear(self: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QSqlTableModelVTable](fcQSqlTableModel_vdata(self)[])
  let self = QSqlTableModel(h: self)
  vtbl[].clear(self)

proc fcQSqlTableModel_vtable_callback_setEditStrategy(self: pointer, strategy: cint): void {.cdecl.} =
  let vtbl = cast[ptr QSqlTableModelVTable](fcQSqlTableModel_vdata(self)[])
  let self = QSqlTableModel(h: self)
  let slotval1 = cint(strategy)
  vtbl[].setEditStrategy(self, slotval1)

proc fcQSqlTableModel_vtable_callback_sort(self: pointer, column: cint, order: cint): void {.cdecl.} =
  let vtbl = cast[ptr QSqlTableModelVTable](fcQSqlTableModel_vdata(self)[])
  let self = QSqlTableModel(h: self)
  let slotval1 = column
  let slotval2 = cint(order)
  vtbl[].sort(self, slotval1, slotval2)

proc fcQSqlTableModel_vtable_callback_setSort(self: pointer, column: cint, order: cint): void {.cdecl.} =
  let vtbl = cast[ptr QSqlTableModelVTable](fcQSqlTableModel_vdata(self)[])
  let self = QSqlTableModel(h: self)
  let slotval1 = column
  let slotval2 = cint(order)
  vtbl[].setSort(self, slotval1, slotval2)

proc fcQSqlTableModel_vtable_callback_setFilter(self: pointer, filter: struct_seaqt_string): void {.cdecl.} =
  let vtbl = cast[ptr QSqlTableModelVTable](fcQSqlTableModel_vdata(self)[])
  let self = QSqlTableModel(h: self)
  let vfilter_ms = filter
  let vfilterx_ret = string.fromBytes(vfilter_ms)
  c_free(vfilter_ms.data)
  let slotval1 = vfilterx_ret
  vtbl[].setFilter(self, slotval1)

proc fcQSqlTableModel_vtable_callback_rowCount(self: pointer, parent: pointer): cint {.cdecl.} =
  let vtbl = cast[ptr QSqlTableModelVTable](fcQSqlTableModel_vdata(self)[])
  let self = QSqlTableModel(h: self)
  let slotval1 = gen_qabstractitemmodel_types.QModelIndex(h: parent, owned: false)
  var virtualReturn = vtbl[].rowCount(self, slotval1)
  virtualReturn

proc fcQSqlTableModel_vtable_callback_removeColumns(self: pointer, column: cint, count: cint, parent: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QSqlTableModelVTable](fcQSqlTableModel_vdata(self)[])
  let self = QSqlTableModel(h: self)
  let slotval1 = column
  let slotval2 = count
  let slotval3 = gen_qabstractitemmodel_types.QModelIndex(h: parent, owned: false)
  var virtualReturn = vtbl[].removeColumns(self, slotval1, slotval2, slotval3)
  virtualReturn

proc fcQSqlTableModel_vtable_callback_removeRows(self: pointer, row: cint, count: cint, parent: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QSqlTableModelVTable](fcQSqlTableModel_vdata(self)[])
  let self = QSqlTableModel(h: self)
  let slotval1 = row
  let slotval2 = count
  let slotval3 = gen_qabstractitemmodel_types.QModelIndex(h: parent, owned: false)
  var virtualReturn = vtbl[].removeRows(self, slotval1, slotval2, slotval3)
  virtualReturn

proc fcQSqlTableModel_vtable_callback_insertRows(self: pointer, row: cint, count: cint, parent: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QSqlTableModelVTable](fcQSqlTableModel_vdata(self)[])
  let self = QSqlTableModel(h: self)
  let slotval1 = row
  let slotval2 = count
  let slotval3 = gen_qabstractitemmodel_types.QModelIndex(h: parent, owned: false)
  var virtualReturn = vtbl[].insertRows(self, slotval1, slotval2, slotval3)
  virtualReturn

proc fcQSqlTableModel_vtable_callback_revertRow(self: pointer, row: cint): void {.cdecl.} =
  let vtbl = cast[ptr QSqlTableModelVTable](fcQSqlTableModel_vdata(self)[])
  let self = QSqlTableModel(h: self)
  let slotval1 = row
  vtbl[].revertRow(self, slotval1)

proc fcQSqlTableModel_vtable_callback_select(self: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QSqlTableModelVTable](fcQSqlTableModel_vdata(self)[])
  let self = QSqlTableModel(h: self)
  var virtualReturn = vtbl[].select(self)
  virtualReturn

proc fcQSqlTableModel_vtable_callback_selectRow(self: pointer, row: cint): bool {.cdecl.} =
  let vtbl = cast[ptr QSqlTableModelVTable](fcQSqlTableModel_vdata(self)[])
  let self = QSqlTableModel(h: self)
  let slotval1 = row
  var virtualReturn = vtbl[].selectRow(self, slotval1)
  virtualReturn

proc fcQSqlTableModel_vtable_callback_submit(self: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QSqlTableModelVTable](fcQSqlTableModel_vdata(self)[])
  let self = QSqlTableModel(h: self)
  var virtualReturn = vtbl[].submit(self)
  virtualReturn

proc fcQSqlTableModel_vtable_callback_revert(self: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QSqlTableModelVTable](fcQSqlTableModel_vdata(self)[])
  let self = QSqlTableModel(h: self)
  vtbl[].revert(self)

proc fcQSqlTableModel_vtable_callback_updateRowInTable(self: pointer, row: cint, values: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QSqlTableModelVTable](fcQSqlTableModel_vdata(self)[])
  let self = QSqlTableModel(h: self)
  let slotval1 = row
  let slotval2 = gen_qsqlrecord_types.QSqlRecord(h: values, owned: false)
  var virtualReturn = vtbl[].updateRowInTable(self, slotval1, slotval2)
  virtualReturn

proc fcQSqlTableModel_vtable_callback_insertRowIntoTable(self: pointer, values: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QSqlTableModelVTable](fcQSqlTableModel_vdata(self)[])
  let self = QSqlTableModel(h: self)
  let slotval1 = gen_qsqlrecord_types.QSqlRecord(h: values, owned: false)
  var virtualReturn = vtbl[].insertRowIntoTable(self, slotval1)
  virtualReturn

proc fcQSqlTableModel_vtable_callback_deleteRowFromTable(self: pointer, row: cint): bool {.cdecl.} =
  let vtbl = cast[ptr QSqlTableModelVTable](fcQSqlTableModel_vdata(self)[])
  let self = QSqlTableModel(h: self)
  let slotval1 = row
  var virtualReturn = vtbl[].deleteRowFromTable(self, slotval1)
  virtualReturn

proc fcQSqlTableModel_vtable_callback_orderByClause(self: pointer): struct_seaqt_string {.cdecl.} =
  let vtbl = cast[ptr QSqlTableModelVTable](fcQSqlTableModel_vdata(self)[])
  let self = QSqlTableModel(h: self)
  var virtualReturn = vtbl[].orderByClause(self)
  var virtualReturn_copy = if len(virtualReturn) > 0: c_malloc(csize_t(len(virtualReturn))) else: nil
  if len(virtualReturn) > 0: copyMem(virtualReturn_copy, addr virtualReturn[0], csize_t(len(virtualReturn)))
  struct_seaqt_string(data: virtualReturn_copy, len: csize_t(len(virtualReturn)))

proc fcQSqlTableModel_vtable_callback_selectStatement(self: pointer): struct_seaqt_string {.cdecl.} =
  let vtbl = cast[ptr QSqlTableModelVTable](fcQSqlTableModel_vdata(self)[])
  let self = QSqlTableModel(h: self)
  var virtualReturn = vtbl[].selectStatement(self)
  var virtualReturn_copy = if len(virtualReturn) > 0: c_malloc(csize_t(len(virtualReturn))) else: nil
  if len(virtualReturn) > 0: copyMem(virtualReturn_copy, addr virtualReturn[0], csize_t(len(virtualReturn)))
  struct_seaqt_string(data: virtualReturn_copy, len: csize_t(len(virtualReturn)))

proc fcQSqlTableModel_vtable_callback_indexInQuery(self: pointer, item: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QSqlTableModelVTable](fcQSqlTableModel_vdata(self)[])
  let self = QSqlTableModel(h: self)
  let slotval1 = gen_qabstractitemmodel_types.QModelIndex(h: item, owned: false)
  var virtualReturn = vtbl[].indexInQuery(self, slotval1)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc fcQSqlTableModel_vtable_callback_columnCount(self: pointer, parent: pointer): cint {.cdecl.} =
  let vtbl = cast[ptr QSqlTableModelVTable](fcQSqlTableModel_vdata(self)[])
  let self = QSqlTableModel(h: self)
  let slotval1 = gen_qabstractitemmodel_types.QModelIndex(h: parent, owned: false)
  var virtualReturn = vtbl[].columnCount(self, slotval1)
  virtualReturn

proc fcQSqlTableModel_vtable_callback_setHeaderData(self: pointer, section: cint, orientation: cint, value: pointer, role: cint): bool {.cdecl.} =
  let vtbl = cast[ptr QSqlTableModelVTable](fcQSqlTableModel_vdata(self)[])
  let self = QSqlTableModel(h: self)
  let slotval1 = section
  let slotval2 = cint(orientation)
  let slotval3 = gen_qvariant_types.QVariant(h: value, owned: false)
  let slotval4 = role
  var virtualReturn = vtbl[].setHeaderData(self, slotval1, slotval2, slotval3, slotval4)
  virtualReturn

proc fcQSqlTableModel_vtable_callback_insertColumns(self: pointer, column: cint, count: cint, parent: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QSqlTableModelVTable](fcQSqlTableModel_vdata(self)[])
  let self = QSqlTableModel(h: self)
  let slotval1 = column
  let slotval2 = count
  let slotval3 = gen_qabstractitemmodel_types.QModelIndex(h: parent, owned: false)
  var virtualReturn = vtbl[].insertColumns(self, slotval1, slotval2, slotval3)
  virtualReturn

proc fcQSqlTableModel_vtable_callback_fetchMore(self: pointer, parent: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QSqlTableModelVTable](fcQSqlTableModel_vdata(self)[])
  let self = QSqlTableModel(h: self)
  let slotval1 = gen_qabstractitemmodel_types.QModelIndex(h: parent, owned: false)
  vtbl[].fetchMore(self, slotval1)

proc fcQSqlTableModel_vtable_callback_canFetchMore(self: pointer, parent: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QSqlTableModelVTable](fcQSqlTableModel_vdata(self)[])
  let self = QSqlTableModel(h: self)
  let slotval1 = gen_qabstractitemmodel_types.QModelIndex(h: parent, owned: false)
  var virtualReturn = vtbl[].canFetchMore(self, slotval1)
  virtualReturn

proc fcQSqlTableModel_vtable_callback_roleNames(self: pointer): struct_seaqt_map {.cdecl.} =
  let vtbl = cast[ptr QSqlTableModelVTable](fcQSqlTableModel_vdata(self)[])
  let self = QSqlTableModel(h: self)
  var virtualReturn = vtbl[].roleNames(self)
  var virtualReturn_Keys_CArray = cast[ptr UncheckedArray[cint]](if len(virtualReturn) > 0: c_malloc(csize_t(sizeof(cint) * len(virtualReturn))) else: nil)
  var virtualReturn_Values_CArray = cast[ptr UncheckedArray[struct_seaqt_string]](if len(virtualReturn) > 0: c_malloc(csize_t(sizeof(struct_seaqt_string) * len(virtualReturn))) else: nil)
  var virtualReturn_ctr = 0
  for virtualReturn_k in virtualReturn.keys():
    virtualReturn_Keys_CArray[virtualReturn_ctr] = virtualReturn_k
    virtualReturn_ctr += 1
  virtualReturn_ctr = 0
  for virtualReturn_v in virtualReturn.mvalues():
    var virtualReturn_v_copy = if len(virtualReturn_v) > 0: c_malloc(csize_t(len(virtualReturn_v))) else: nil
    if len(virtualReturn_v) > 0: copyMem(virtualReturn_v_copy, addr virtualReturn_v[0], csize_t(len(virtualReturn_v)))
    virtualReturn_Values_CArray[virtualReturn_ctr] = struct_seaqt_string(data: virtualReturn_v_copy, len: csize_t(len(virtualReturn_v)))
    virtualReturn_ctr += 1

  struct_seaqt_map(len: csize_t(len(virtualReturn)),keys: if len(virtualReturn) == 0: nil else: addr(virtualReturn_Keys_CArray[0]), values: if len(virtualReturn) == 0: nil else: addr(virtualReturn_Values_CArray[0]),)

proc fcQSqlTableModel_vtable_callback_queryChange(self: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QSqlTableModelVTable](fcQSqlTableModel_vdata(self)[])
  let self = QSqlTableModel(h: self)
  vtbl[].queryChange(self)

proc fcQSqlTableModel_vtable_callback_index(self: pointer, row: cint, column: cint, parent: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QSqlTableModelVTable](fcQSqlTableModel_vdata(self)[])
  let self = QSqlTableModel(h: self)
  let slotval1 = row
  let slotval2 = column
  let slotval3 = gen_qabstractitemmodel_types.QModelIndex(h: parent, owned: false)
  var virtualReturn = vtbl[].index(self, slotval1, slotval2, slotval3)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc fcQSqlTableModel_vtable_callback_sibling(self: pointer, row: cint, column: cint, idx: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QSqlTableModelVTable](fcQSqlTableModel_vdata(self)[])
  let self = QSqlTableModel(h: self)
  let slotval1 = row
  let slotval2 = column
  let slotval3 = gen_qabstractitemmodel_types.QModelIndex(h: idx, owned: false)
  var virtualReturn = vtbl[].sibling(self, slotval1, slotval2, slotval3)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc fcQSqlTableModel_vtable_callback_dropMimeData(self: pointer, data: pointer, action: cint, row: cint, column: cint, parent: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QSqlTableModelVTable](fcQSqlTableModel_vdata(self)[])
  let self = QSqlTableModel(h: self)
  let slotval1 = gen_qmimedata_types.QMimeData(h: data, owned: false)
  let slotval2 = cint(action)
  let slotval3 = row
  let slotval4 = column
  let slotval5 = gen_qabstractitemmodel_types.QModelIndex(h: parent, owned: false)
  var virtualReturn = vtbl[].dropMimeData(self, slotval1, slotval2, slotval3, slotval4, slotval5)
  virtualReturn

proc fcQSqlTableModel_vtable_callback_itemData(self: pointer, index: pointer): struct_seaqt_map {.cdecl.} =
  let vtbl = cast[ptr QSqlTableModelVTable](fcQSqlTableModel_vdata(self)[])
  let self = QSqlTableModel(h: self)
  let slotval1 = gen_qabstractitemmodel_types.QModelIndex(h: index, owned: false)
  var virtualReturn = vtbl[].itemData(self, slotval1)
  var virtualReturn_Keys_CArray = cast[ptr UncheckedArray[cint]](if len(virtualReturn) > 0: c_malloc(csize_t(sizeof(cint) * len(virtualReturn))) else: nil)
  var virtualReturn_Values_CArray = cast[ptr UncheckedArray[pointer]](if len(virtualReturn) > 0: c_malloc(csize_t(sizeof(pointer) * len(virtualReturn))) else: nil)
  var virtualReturn_ctr = 0
  for virtualReturn_k in virtualReturn.keys():
    virtualReturn_Keys_CArray[virtualReturn_ctr] = virtualReturn_k
    virtualReturn_ctr += 1
  virtualReturn_ctr = 0
  for virtualReturn_v in virtualReturn.mvalues():
    virtualReturn_v.owned = false # TODO move?
    let virtualReturn_v_h = virtualReturn_v.h
    virtualReturn_v.h = nil
    virtualReturn_Values_CArray[virtualReturn_ctr] = virtualReturn_v_h
    virtualReturn_ctr += 1

  struct_seaqt_map(len: csize_t(len(virtualReturn)),keys: if len(virtualReturn) == 0: nil else: addr(virtualReturn_Keys_CArray[0]), values: if len(virtualReturn) == 0: nil else: addr(virtualReturn_Values_CArray[0]),)

proc fcQSqlTableModel_vtable_callback_setItemData(self: pointer, index: pointer, roles: struct_seaqt_map): bool {.cdecl.} =
  let vtbl = cast[ptr QSqlTableModelVTable](fcQSqlTableModel_vdata(self)[])
  let self = QSqlTableModel(h: self)
  let slotval1 = gen_qabstractitemmodel_types.QModelIndex(h: index, owned: false)
  var vroles_mm = roles
  var vrolesx_ret: Table[cint, gen_qvariant_types.QVariant]
  var vroles_Keys = cast[ptr UncheckedArray[cint]](vroles_mm.keys)
  var vroles_Values = cast[ptr UncheckedArray[pointer]](vroles_mm.values)
  for i in 0..<vroles_mm.len:
    var vroles_entry_Key = vroles_Keys[i]

    var vroles_entry_Value = gen_qvariant_types.QVariant(h: vroles_Values[i], owned: true)

    vrolesx_ret[vroles_entry_Key] = vroles_entry_Value
  c_free(vroles_mm.keys)
  c_free(vroles_mm.values)
  let slotval2 = vrolesx_ret
  var virtualReturn = vtbl[].setItemData(self, slotval1, slotval2)
  virtualReturn

proc fcQSqlTableModel_vtable_callback_mimeTypes(self: pointer): struct_seaqt_array {.cdecl.} =
  let vtbl = cast[ptr QSqlTableModelVTable](fcQSqlTableModel_vdata(self)[])
  let self = QSqlTableModel(h: self)
  var virtualReturn = vtbl[].mimeTypes(self)
  var virtualReturn_CArray = cast[ptr UncheckedArray[struct_seaqt_string]](if len(virtualReturn) > 0: c_malloc(c_sizet(sizeof(struct_seaqt_string) * len(virtualReturn))) else: nil)
  for i in 0..<len(virtualReturn):
    var virtualReturn_i_copy = if len(virtualReturn[i]) > 0: c_malloc(csize_t(len(virtualReturn[i]))) else: nil
    if len(virtualReturn[i]) > 0: copyMem(virtualReturn_i_copy, addr virtualReturn[i][0], csize_t(len(virtualReturn[i])))
    virtualReturn_CArray[i] = struct_seaqt_string(data: virtualReturn_i_copy, len: csize_t(len(virtualReturn[i])))

  struct_seaqt_array(len: csize_t(len(virtualReturn)), data: if len(virtualReturn) == 0: nil else: addr(virtualReturn_CArray[0]))

proc fcQSqlTableModel_vtable_callback_mimeData(self: pointer, indexes: struct_seaqt_array): pointer {.cdecl.} =
  let vtbl = cast[ptr QSqlTableModelVTable](fcQSqlTableModel_vdata(self)[])
  let self = QSqlTableModel(h: self)
  var vindexes_ma = indexes
  var vindexesx_ret = newSeq[gen_qabstractitemmodel_types.QModelIndex](int(vindexes_ma.len))
  let vindexes_outCast = cast[ptr UncheckedArray[pointer]](vindexes_ma.data)
  for i in 0 ..< vindexes_ma.len:
    vindexesx_ret[i] = gen_qabstractitemmodel_types.QModelIndex(h: vindexes_outCast[i], owned: true)
  c_free(vindexes_ma.data)
  let slotval1 = vindexesx_ret
  var virtualReturn = vtbl[].mimeData(self, slotval1)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc fcQSqlTableModel_vtable_callback_canDropMimeData(self: pointer, data: pointer, action: cint, row: cint, column: cint, parent: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QSqlTableModelVTable](fcQSqlTableModel_vdata(self)[])
  let self = QSqlTableModel(h: self)
  let slotval1 = gen_qmimedata_types.QMimeData(h: data, owned: false)
  let slotval2 = cint(action)
  let slotval3 = row
  let slotval4 = column
  let slotval5 = gen_qabstractitemmodel_types.QModelIndex(h: parent, owned: false)
  var virtualReturn = vtbl[].canDropMimeData(self, slotval1, slotval2, slotval3, slotval4, slotval5)
  virtualReturn

proc fcQSqlTableModel_vtable_callback_supportedDropActions(self: pointer): cint {.cdecl.} =
  let vtbl = cast[ptr QSqlTableModelVTable](fcQSqlTableModel_vdata(self)[])
  let self = QSqlTableModel(h: self)
  var virtualReturn = vtbl[].supportedDropActions(self)
  cint(virtualReturn)

proc fcQSqlTableModel_vtable_callback_supportedDragActions(self: pointer): cint {.cdecl.} =
  let vtbl = cast[ptr QSqlTableModelVTable](fcQSqlTableModel_vdata(self)[])
  let self = QSqlTableModel(h: self)
  var virtualReturn = vtbl[].supportedDragActions(self)
  cint(virtualReturn)

proc fcQSqlTableModel_vtable_callback_moveRows(self: pointer, sourceParent: pointer, sourceRow: cint, count: cint, destinationParent: pointer, destinationChild: cint): bool {.cdecl.} =
  let vtbl = cast[ptr QSqlTableModelVTable](fcQSqlTableModel_vdata(self)[])
  let self = QSqlTableModel(h: self)
  let slotval1 = gen_qabstractitemmodel_types.QModelIndex(h: sourceParent, owned: false)
  let slotval2 = sourceRow
  let slotval3 = count
  let slotval4 = gen_qabstractitemmodel_types.QModelIndex(h: destinationParent, owned: false)
  let slotval5 = destinationChild
  var virtualReturn = vtbl[].moveRows(self, slotval1, slotval2, slotval3, slotval4, slotval5)
  virtualReturn

proc fcQSqlTableModel_vtable_callback_moveColumns(self: pointer, sourceParent: pointer, sourceColumn: cint, count: cint, destinationParent: pointer, destinationChild: cint): bool {.cdecl.} =
  let vtbl = cast[ptr QSqlTableModelVTable](fcQSqlTableModel_vdata(self)[])
  let self = QSqlTableModel(h: self)
  let slotval1 = gen_qabstractitemmodel_types.QModelIndex(h: sourceParent, owned: false)
  let slotval2 = sourceColumn
  let slotval3 = count
  let slotval4 = gen_qabstractitemmodel_types.QModelIndex(h: destinationParent, owned: false)
  let slotval5 = destinationChild
  var virtualReturn = vtbl[].moveColumns(self, slotval1, slotval2, slotval3, slotval4, slotval5)
  virtualReturn

proc fcQSqlTableModel_vtable_callback_buddy(self: pointer, index: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QSqlTableModelVTable](fcQSqlTableModel_vdata(self)[])
  let self = QSqlTableModel(h: self)
  let slotval1 = gen_qabstractitemmodel_types.QModelIndex(h: index, owned: false)
  var virtualReturn = vtbl[].buddy(self, slotval1)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc fcQSqlTableModel_vtable_callback_match(self: pointer, start: pointer, role: cint, value: pointer, hits: cint, flags: cint): struct_seaqt_array {.cdecl.} =
  let vtbl = cast[ptr QSqlTableModelVTable](fcQSqlTableModel_vdata(self)[])
  let self = QSqlTableModel(h: self)
  let slotval1 = gen_qabstractitemmodel_types.QModelIndex(h: start, owned: false)
  let slotval2 = role
  let slotval3 = gen_qvariant_types.QVariant(h: value, owned: false)
  let slotval4 = hits
  let slotval5 = cint(flags)
  var virtualReturn = vtbl[].match(self, slotval1, slotval2, slotval3, slotval4, slotval5)
  var virtualReturn_CArray = cast[ptr UncheckedArray[pointer]](if len(virtualReturn) > 0: c_malloc(c_sizet(sizeof(pointer) * len(virtualReturn))) else: nil)
  for i in 0..<len(virtualReturn):
    virtualReturn[i].owned = false # TODO move?
    let virtualReturn_i_h = virtualReturn[i].h
    virtualReturn[i].h = nil
    virtualReturn_CArray[i] = virtualReturn_i_h

  struct_seaqt_array(len: csize_t(len(virtualReturn)), data: if len(virtualReturn) == 0: nil else: addr(virtualReturn_CArray[0]))

proc fcQSqlTableModel_vtable_callback_span(self: pointer, index: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QSqlTableModelVTable](fcQSqlTableModel_vdata(self)[])
  let self = QSqlTableModel(h: self)
  let slotval1 = gen_qabstractitemmodel_types.QModelIndex(h: index, owned: false)
  var virtualReturn = vtbl[].span(self, slotval1)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc fcQSqlTableModel_vtable_callback_multiData(self: pointer, index: pointer, roleDataSpan: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QSqlTableModelVTable](fcQSqlTableModel_vdata(self)[])
  let self = QSqlTableModel(h: self)
  let slotval1 = gen_qabstractitemmodel_types.QModelIndex(h: index, owned: false)
  let slotval2 = gen_qabstractitemmodel_types.QModelRoleDataSpan(h: roleDataSpan, owned: true)
  vtbl[].multiData(self, slotval1, slotval2)

proc fcQSqlTableModel_vtable_callback_resetInternalData(self: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QSqlTableModelVTable](fcQSqlTableModel_vdata(self)[])
  let self = QSqlTableModel(h: self)
  vtbl[].resetInternalData(self)

proc fcQSqlTableModel_vtable_callback_event(self: pointer, event: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QSqlTableModelVTable](fcQSqlTableModel_vdata(self)[])
  let self = QSqlTableModel(h: self)
  let slotval1 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  var virtualReturn = vtbl[].event(self, slotval1)
  virtualReturn

proc fcQSqlTableModel_vtable_callback_eventFilter(self: pointer, watched: pointer, event: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QSqlTableModelVTable](fcQSqlTableModel_vdata(self)[])
  let self = QSqlTableModel(h: self)
  let slotval1 = gen_qobject_types.QObject(h: watched, owned: false)
  let slotval2 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  var virtualReturn = vtbl[].eventFilter(self, slotval1, slotval2)
  virtualReturn

proc fcQSqlTableModel_vtable_callback_timerEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QSqlTableModelVTable](fcQSqlTableModel_vdata(self)[])
  let self = QSqlTableModel(h: self)
  let slotval1 = gen_qcoreevent_types.QTimerEvent(h: event, owned: false)
  vtbl[].timerEvent(self, slotval1)

proc fcQSqlTableModel_vtable_callback_childEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QSqlTableModelVTable](fcQSqlTableModel_vdata(self)[])
  let self = QSqlTableModel(h: self)
  let slotval1 = gen_qcoreevent_types.QChildEvent(h: event, owned: false)
  vtbl[].childEvent(self, slotval1)

proc fcQSqlTableModel_vtable_callback_customEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QSqlTableModelVTable](fcQSqlTableModel_vdata(self)[])
  let self = QSqlTableModel(h: self)
  let slotval1 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  vtbl[].customEvent(self, slotval1)

proc fcQSqlTableModel_vtable_callback_connectNotify(self: pointer, signal: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QSqlTableModelVTable](fcQSqlTableModel_vdata(self)[])
  let self = QSqlTableModel(h: self)
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal, owned: false)
  vtbl[].connectNotify(self, slotval1)

proc fcQSqlTableModel_vtable_callback_disconnectNotify(self: pointer, signal: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QSqlTableModelVTable](fcQSqlTableModel_vdata(self)[])
  let self = QSqlTableModel(h: self)
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal, owned: false)
  vtbl[].disconnectNotify(self, slotval1)

type VirtualQSqlTableModel* {.inheritable.} = ref object of QSqlTableModel
  vtbl*: cQSqlTableModelVTable

method metaObject*(self: VirtualQSqlTableModel): gen_qobjectdefs_types.QMetaObject {.base.} =
  QSqlTableModelmetaObject(self[])
method metacast*(self: VirtualQSqlTableModel, param1: cstring): pointer {.base.} =
  QSqlTableModelmetacast(self[], param1)
method metacall*(self: VirtualQSqlTableModel, param1: cint, param2: cint, param3: pointer): cint {.base.} =
  QSqlTableModelmetacall(self[], param1, param2, param3)
method setTable*(self: VirtualQSqlTableModel, tableName: openArray[char]): void {.base.} =
  QSqlTableModelsetTable(self[], tableName)
method flags*(self: VirtualQSqlTableModel, index: gen_qabstractitemmodel_types.QModelIndex): cint {.base.} =
  QSqlTableModelflags(self[], index)
method data*(self: VirtualQSqlTableModel, idx: gen_qabstractitemmodel_types.QModelIndex, role: cint): gen_qvariant_types.QVariant {.base.} =
  QSqlTableModeldata(self[], idx, role)
method setData*(self: VirtualQSqlTableModel, index: gen_qabstractitemmodel_types.QModelIndex, value: gen_qvariant_types.QVariant, role: cint): bool {.base.} =
  QSqlTableModelsetData(self[], index, value, role)
method clearItemData*(self: VirtualQSqlTableModel, index: gen_qabstractitemmodel_types.QModelIndex): bool {.base.} =
  QSqlTableModelclearItemData(self[], index)
method headerData*(self: VirtualQSqlTableModel, section: cint, orientation: cint, role: cint): gen_qvariant_types.QVariant {.base.} =
  QSqlTableModelheaderData(self[], section, orientation, role)
method clear*(self: VirtualQSqlTableModel): void {.base.} =
  QSqlTableModelclear(self[])
method setEditStrategy*(self: VirtualQSqlTableModel, strategy: cint): void {.base.} =
  QSqlTableModelsetEditStrategy(self[], strategy)
method sort*(self: VirtualQSqlTableModel, column: cint, order: cint): void {.base.} =
  QSqlTableModelsort(self[], column, order)
method setSort*(self: VirtualQSqlTableModel, column: cint, order: cint): void {.base.} =
  QSqlTableModelsetSort(self[], column, order)
method setFilter*(self: VirtualQSqlTableModel, filter: openArray[char]): void {.base.} =
  QSqlTableModelsetFilter(self[], filter)
method rowCount*(self: VirtualQSqlTableModel, parent: gen_qabstractitemmodel_types.QModelIndex): cint {.base.} =
  QSqlTableModelrowCount(self[], parent)
method removeColumns*(self: VirtualQSqlTableModel, column: cint, count: cint, parent: gen_qabstractitemmodel_types.QModelIndex): bool {.base.} =
  QSqlTableModelremoveColumns(self[], column, count, parent)
method removeRows*(self: VirtualQSqlTableModel, row: cint, count: cint, parent: gen_qabstractitemmodel_types.QModelIndex): bool {.base.} =
  QSqlTableModelremoveRows(self[], row, count, parent)
method insertRows*(self: VirtualQSqlTableModel, row: cint, count: cint, parent: gen_qabstractitemmodel_types.QModelIndex): bool {.base.} =
  QSqlTableModelinsertRows(self[], row, count, parent)
method revertRow*(self: VirtualQSqlTableModel, row: cint): void {.base.} =
  QSqlTableModelrevertRow(self[], row)
method select*(self: VirtualQSqlTableModel): bool {.base.} =
  QSqlTableModelselect(self[])
method selectRow*(self: VirtualQSqlTableModel, row: cint): bool {.base.} =
  QSqlTableModelselectRow(self[], row)
method submit*(self: VirtualQSqlTableModel): bool {.base.} =
  QSqlTableModelsubmit(self[])
method revert*(self: VirtualQSqlTableModel): void {.base.} =
  QSqlTableModelrevert(self[])
method updateRowInTable*(self: VirtualQSqlTableModel, row: cint, values: gen_qsqlrecord_types.QSqlRecord): bool {.base.} =
  QSqlTableModelupdateRowInTable(self[], row, values)
method insertRowIntoTable*(self: VirtualQSqlTableModel, values: gen_qsqlrecord_types.QSqlRecord): bool {.base.} =
  QSqlTableModelinsertRowIntoTable(self[], values)
method deleteRowFromTable*(self: VirtualQSqlTableModel, row: cint): bool {.base.} =
  QSqlTableModeldeleteRowFromTable(self[], row)
method orderByClause*(self: VirtualQSqlTableModel): string {.base.} =
  QSqlTableModelorderByClause(self[])
method selectStatement*(self: VirtualQSqlTableModel): string {.base.} =
  QSqlTableModelselectStatement(self[])
method indexInQuery*(self: VirtualQSqlTableModel, item: gen_qabstractitemmodel_types.QModelIndex): gen_qabstractitemmodel_types.QModelIndex {.base.} =
  QSqlTableModelindexInQuery(self[], item)
method columnCount*(self: VirtualQSqlTableModel, parent: gen_qabstractitemmodel_types.QModelIndex): cint {.base.} =
  QSqlTableModelcolumnCount(self[], parent)
method setHeaderData*(self: VirtualQSqlTableModel, section: cint, orientation: cint, value: gen_qvariant_types.QVariant, role: cint): bool {.base.} =
  QSqlTableModelsetHeaderData(self[], section, orientation, value, role)
method insertColumns*(self: VirtualQSqlTableModel, column: cint, count: cint, parent: gen_qabstractitemmodel_types.QModelIndex): bool {.base.} =
  QSqlTableModelinsertColumns(self[], column, count, parent)
method fetchMore*(self: VirtualQSqlTableModel, parent: gen_qabstractitemmodel_types.QModelIndex): void {.base.} =
  QSqlTableModelfetchMore(self[], parent)
method canFetchMore*(self: VirtualQSqlTableModel, parent: gen_qabstractitemmodel_types.QModelIndex): bool {.base.} =
  QSqlTableModelcanFetchMore(self[], parent)
method roleNames*(self: VirtualQSqlTableModel): Table[cint,seq[byte]] {.base.} =
  QSqlTableModelroleNames(self[])
method queryChange*(self: VirtualQSqlTableModel): void {.base.} =
  QSqlTableModelqueryChange(self[])
method index*(self: VirtualQSqlTableModel, row: cint, column: cint, parent: gen_qabstractitemmodel_types.QModelIndex): gen_qabstractitemmodel_types.QModelIndex {.base.} =
  QSqlTableModelindex(self[], row, column, parent)
method sibling*(self: VirtualQSqlTableModel, row: cint, column: cint, idx: gen_qabstractitemmodel_types.QModelIndex): gen_qabstractitemmodel_types.QModelIndex {.base.} =
  QSqlTableModelsibling(self[], row, column, idx)
method dropMimeData*(self: VirtualQSqlTableModel, data: gen_qmimedata_types.QMimeData, action: cint, row: cint, column: cint, parent: gen_qabstractitemmodel_types.QModelIndex): bool {.base.} =
  QSqlTableModeldropMimeData(self[], data, action, row, column, parent)
method itemData*(self: VirtualQSqlTableModel, index: gen_qabstractitemmodel_types.QModelIndex): Table[cint,gen_qvariant_types.QVariant] {.base.} =
  QSqlTableModelitemData(self[], index)
method setItemData*(self: VirtualQSqlTableModel, index: gen_qabstractitemmodel_types.QModelIndex, roles: Table[cint,gen_qvariant_types.QVariant]): bool {.base.} =
  QSqlTableModelsetItemData(self[], index, roles)
method mimeTypes*(self: VirtualQSqlTableModel): seq[string] {.base.} =
  QSqlTableModelmimeTypes(self[])
method mimeData*(self: VirtualQSqlTableModel, indexes: openArray[gen_qabstractitemmodel_types.QModelIndex]): gen_qmimedata_types.QMimeData {.base.} =
  QSqlTableModelmimeData(self[], indexes)
method canDropMimeData*(self: VirtualQSqlTableModel, data: gen_qmimedata_types.QMimeData, action: cint, row: cint, column: cint, parent: gen_qabstractitemmodel_types.QModelIndex): bool {.base.} =
  QSqlTableModelcanDropMimeData(self[], data, action, row, column, parent)
method supportedDropActions*(self: VirtualQSqlTableModel): cint {.base.} =
  QSqlTableModelsupportedDropActions(self[])
method supportedDragActions*(self: VirtualQSqlTableModel): cint {.base.} =
  QSqlTableModelsupportedDragActions(self[])
method moveRows*(self: VirtualQSqlTableModel, sourceParent: gen_qabstractitemmodel_types.QModelIndex, sourceRow: cint, count: cint, destinationParent: gen_qabstractitemmodel_types.QModelIndex, destinationChild: cint): bool {.base.} =
  QSqlTableModelmoveRows(self[], sourceParent, sourceRow, count, destinationParent, destinationChild)
method moveColumns*(self: VirtualQSqlTableModel, sourceParent: gen_qabstractitemmodel_types.QModelIndex, sourceColumn: cint, count: cint, destinationParent: gen_qabstractitemmodel_types.QModelIndex, destinationChild: cint): bool {.base.} =
  QSqlTableModelmoveColumns(self[], sourceParent, sourceColumn, count, destinationParent, destinationChild)
method buddy*(self: VirtualQSqlTableModel, index: gen_qabstractitemmodel_types.QModelIndex): gen_qabstractitemmodel_types.QModelIndex {.base.} =
  QSqlTableModelbuddy(self[], index)
method match*(self: VirtualQSqlTableModel, start: gen_qabstractitemmodel_types.QModelIndex, role: cint, value: gen_qvariant_types.QVariant, hits: cint, flags: cint): seq[gen_qabstractitemmodel_types.QModelIndex] {.base.} =
  QSqlTableModelmatch(self[], start, role, value, hits, flags)
method span*(self: VirtualQSqlTableModel, index: gen_qabstractitemmodel_types.QModelIndex): gen_qsize_types.QSize {.base.} =
  QSqlTableModelspan(self[], index)
method multiData*(self: VirtualQSqlTableModel, index: gen_qabstractitemmodel_types.QModelIndex, roleDataSpan: gen_qabstractitemmodel_types.QModelRoleDataSpan): void {.base.} =
  QSqlTableModelmultiData(self[], index, roleDataSpan)
method resetInternalData*(self: VirtualQSqlTableModel): void {.base.} =
  QSqlTableModelresetInternalData(self[])
method event*(self: VirtualQSqlTableModel, event: gen_qcoreevent_types.QEvent): bool {.base.} =
  QSqlTableModelevent(self[], event)
method eventFilter*(self: VirtualQSqlTableModel, watched: gen_qobject_types.QObject, event: gen_qcoreevent_types.QEvent): bool {.base.} =
  QSqlTableModeleventFilter(self[], watched, event)
method timerEvent*(self: VirtualQSqlTableModel, event: gen_qcoreevent_types.QTimerEvent): void {.base.} =
  QSqlTableModeltimerEvent(self[], event)
method childEvent*(self: VirtualQSqlTableModel, event: gen_qcoreevent_types.QChildEvent): void {.base.} =
  QSqlTableModelchildEvent(self[], event)
method customEvent*(self: VirtualQSqlTableModel, event: gen_qcoreevent_types.QEvent): void {.base.} =
  QSqlTableModelcustomEvent(self[], event)
method connectNotify*(self: VirtualQSqlTableModel, signal: gen_qmetaobject_types.QMetaMethod): void {.base.} =
  QSqlTableModelconnectNotify(self[], signal)
method disconnectNotify*(self: VirtualQSqlTableModel, signal: gen_qmetaobject_types.QMetaMethod): void {.base.} =
  QSqlTableModeldisconnectNotify(self[], signal)

proc fcQSqlTableModel_method_callback_metaObject(self: pointer): pointer {.cdecl.} =
  let inst = cast[VirtualQSqlTableModel](fcQSqlTableModel_vdata(self)[])
  var virtualReturn = inst.metaObject()
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc fcQSqlTableModel_method_callback_metacast(self: pointer, param1: cstring): pointer {.cdecl.} =
  let inst = cast[VirtualQSqlTableModel](fcQSqlTableModel_vdata(self)[])
  let slotval1 = (param1)
  var virtualReturn = inst.metacast(slotval1)
  virtualReturn

proc fcQSqlTableModel_method_callback_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.cdecl.} =
  let inst = cast[VirtualQSqlTableModel](fcQSqlTableModel_vdata(self)[])
  let slotval1 = cint(param1)
  let slotval2 = param2
  let slotval3 = param3
  var virtualReturn = inst.metacall(slotval1, slotval2, slotval3)
  virtualReturn

proc fcQSqlTableModel_method_callback_setTable(self: pointer, tableName: struct_seaqt_string): void {.cdecl.} =
  let inst = cast[VirtualQSqlTableModel](fcQSqlTableModel_vdata(self)[])
  let vtableName_ms = tableName
  let vtableNamex_ret = string.fromBytes(vtableName_ms)
  c_free(vtableName_ms.data)
  let slotval1 = vtableNamex_ret
  inst.setTable(slotval1)

proc fcQSqlTableModel_method_callback_flags(self: pointer, index: pointer): cint {.cdecl.} =
  let inst = cast[VirtualQSqlTableModel](fcQSqlTableModel_vdata(self)[])
  let slotval1 = gen_qabstractitemmodel_types.QModelIndex(h: index, owned: false)
  var virtualReturn = inst.flags(slotval1)
  cint(virtualReturn)

proc fcQSqlTableModel_method_callback_data(self: pointer, idx: pointer, role: cint): pointer {.cdecl.} =
  let inst = cast[VirtualQSqlTableModel](fcQSqlTableModel_vdata(self)[])
  let slotval1 = gen_qabstractitemmodel_types.QModelIndex(h: idx, owned: false)
  let slotval2 = role
  var virtualReturn = inst.data(slotval1, slotval2)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc fcQSqlTableModel_method_callback_setData(self: pointer, index: pointer, value: pointer, role: cint): bool {.cdecl.} =
  let inst = cast[VirtualQSqlTableModel](fcQSqlTableModel_vdata(self)[])
  let slotval1 = gen_qabstractitemmodel_types.QModelIndex(h: index, owned: false)
  let slotval2 = gen_qvariant_types.QVariant(h: value, owned: false)
  let slotval3 = role
  var virtualReturn = inst.setData(slotval1, slotval2, slotval3)
  virtualReturn

proc fcQSqlTableModel_method_callback_clearItemData(self: pointer, index: pointer): bool {.cdecl.} =
  let inst = cast[VirtualQSqlTableModel](fcQSqlTableModel_vdata(self)[])
  let slotval1 = gen_qabstractitemmodel_types.QModelIndex(h: index, owned: false)
  var virtualReturn = inst.clearItemData(slotval1)
  virtualReturn

proc fcQSqlTableModel_method_callback_headerData(self: pointer, section: cint, orientation: cint, role: cint): pointer {.cdecl.} =
  let inst = cast[VirtualQSqlTableModel](fcQSqlTableModel_vdata(self)[])
  let slotval1 = section
  let slotval2 = cint(orientation)
  let slotval3 = role
  var virtualReturn = inst.headerData(slotval1, slotval2, slotval3)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc fcQSqlTableModel_method_callback_clear(self: pointer): void {.cdecl.} =
  let inst = cast[VirtualQSqlTableModel](fcQSqlTableModel_vdata(self)[])
  inst.clear()

proc fcQSqlTableModel_method_callback_setEditStrategy(self: pointer, strategy: cint): void {.cdecl.} =
  let inst = cast[VirtualQSqlTableModel](fcQSqlTableModel_vdata(self)[])
  let slotval1 = cint(strategy)
  inst.setEditStrategy(slotval1)

proc fcQSqlTableModel_method_callback_sort(self: pointer, column: cint, order: cint): void {.cdecl.} =
  let inst = cast[VirtualQSqlTableModel](fcQSqlTableModel_vdata(self)[])
  let slotval1 = column
  let slotval2 = cint(order)
  inst.sort(slotval1, slotval2)

proc fcQSqlTableModel_method_callback_setSort(self: pointer, column: cint, order: cint): void {.cdecl.} =
  let inst = cast[VirtualQSqlTableModel](fcQSqlTableModel_vdata(self)[])
  let slotval1 = column
  let slotval2 = cint(order)
  inst.setSort(slotval1, slotval2)

proc fcQSqlTableModel_method_callback_setFilter(self: pointer, filter: struct_seaqt_string): void {.cdecl.} =
  let inst = cast[VirtualQSqlTableModel](fcQSqlTableModel_vdata(self)[])
  let vfilter_ms = filter
  let vfilterx_ret = string.fromBytes(vfilter_ms)
  c_free(vfilter_ms.data)
  let slotval1 = vfilterx_ret
  inst.setFilter(slotval1)

proc fcQSqlTableModel_method_callback_rowCount(self: pointer, parent: pointer): cint {.cdecl.} =
  let inst = cast[VirtualQSqlTableModel](fcQSqlTableModel_vdata(self)[])
  let slotval1 = gen_qabstractitemmodel_types.QModelIndex(h: parent, owned: false)
  var virtualReturn = inst.rowCount(slotval1)
  virtualReturn

proc fcQSqlTableModel_method_callback_removeColumns(self: pointer, column: cint, count: cint, parent: pointer): bool {.cdecl.} =
  let inst = cast[VirtualQSqlTableModel](fcQSqlTableModel_vdata(self)[])
  let slotval1 = column
  let slotval2 = count
  let slotval3 = gen_qabstractitemmodel_types.QModelIndex(h: parent, owned: false)
  var virtualReturn = inst.removeColumns(slotval1, slotval2, slotval3)
  virtualReturn

proc fcQSqlTableModel_method_callback_removeRows(self: pointer, row: cint, count: cint, parent: pointer): bool {.cdecl.} =
  let inst = cast[VirtualQSqlTableModel](fcQSqlTableModel_vdata(self)[])
  let slotval1 = row
  let slotval2 = count
  let slotval3 = gen_qabstractitemmodel_types.QModelIndex(h: parent, owned: false)
  var virtualReturn = inst.removeRows(slotval1, slotval2, slotval3)
  virtualReturn

proc fcQSqlTableModel_method_callback_insertRows(self: pointer, row: cint, count: cint, parent: pointer): bool {.cdecl.} =
  let inst = cast[VirtualQSqlTableModel](fcQSqlTableModel_vdata(self)[])
  let slotval1 = row
  let slotval2 = count
  let slotval3 = gen_qabstractitemmodel_types.QModelIndex(h: parent, owned: false)
  var virtualReturn = inst.insertRows(slotval1, slotval2, slotval3)
  virtualReturn

proc fcQSqlTableModel_method_callback_revertRow(self: pointer, row: cint): void {.cdecl.} =
  let inst = cast[VirtualQSqlTableModel](fcQSqlTableModel_vdata(self)[])
  let slotval1 = row
  inst.revertRow(slotval1)

proc fcQSqlTableModel_method_callback_select(self: pointer): bool {.cdecl.} =
  let inst = cast[VirtualQSqlTableModel](fcQSqlTableModel_vdata(self)[])
  var virtualReturn = inst.select()
  virtualReturn

proc fcQSqlTableModel_method_callback_selectRow(self: pointer, row: cint): bool {.cdecl.} =
  let inst = cast[VirtualQSqlTableModel](fcQSqlTableModel_vdata(self)[])
  let slotval1 = row
  var virtualReturn = inst.selectRow(slotval1)
  virtualReturn

proc fcQSqlTableModel_method_callback_submit(self: pointer): bool {.cdecl.} =
  let inst = cast[VirtualQSqlTableModel](fcQSqlTableModel_vdata(self)[])
  var virtualReturn = inst.submit()
  virtualReturn

proc fcQSqlTableModel_method_callback_revert(self: pointer): void {.cdecl.} =
  let inst = cast[VirtualQSqlTableModel](fcQSqlTableModel_vdata(self)[])
  inst.revert()

proc fcQSqlTableModel_method_callback_updateRowInTable(self: pointer, row: cint, values: pointer): bool {.cdecl.} =
  let inst = cast[VirtualQSqlTableModel](fcQSqlTableModel_vdata(self)[])
  let slotval1 = row
  let slotval2 = gen_qsqlrecord_types.QSqlRecord(h: values, owned: false)
  var virtualReturn = inst.updateRowInTable(slotval1, slotval2)
  virtualReturn

proc fcQSqlTableModel_method_callback_insertRowIntoTable(self: pointer, values: pointer): bool {.cdecl.} =
  let inst = cast[VirtualQSqlTableModel](fcQSqlTableModel_vdata(self)[])
  let slotval1 = gen_qsqlrecord_types.QSqlRecord(h: values, owned: false)
  var virtualReturn = inst.insertRowIntoTable(slotval1)
  virtualReturn

proc fcQSqlTableModel_method_callback_deleteRowFromTable(self: pointer, row: cint): bool {.cdecl.} =
  let inst = cast[VirtualQSqlTableModel](fcQSqlTableModel_vdata(self)[])
  let slotval1 = row
  var virtualReturn = inst.deleteRowFromTable(slotval1)
  virtualReturn

proc fcQSqlTableModel_method_callback_orderByClause(self: pointer): struct_seaqt_string {.cdecl.} =
  let inst = cast[VirtualQSqlTableModel](fcQSqlTableModel_vdata(self)[])
  var virtualReturn = inst.orderByClause()
  var virtualReturn_copy = if len(virtualReturn) > 0: c_malloc(csize_t(len(virtualReturn))) else: nil
  if len(virtualReturn) > 0: copyMem(virtualReturn_copy, addr virtualReturn[0], csize_t(len(virtualReturn)))
  struct_seaqt_string(data: virtualReturn_copy, len: csize_t(len(virtualReturn)))

proc fcQSqlTableModel_method_callback_selectStatement(self: pointer): struct_seaqt_string {.cdecl.} =
  let inst = cast[VirtualQSqlTableModel](fcQSqlTableModel_vdata(self)[])
  var virtualReturn = inst.selectStatement()
  var virtualReturn_copy = if len(virtualReturn) > 0: c_malloc(csize_t(len(virtualReturn))) else: nil
  if len(virtualReturn) > 0: copyMem(virtualReturn_copy, addr virtualReturn[0], csize_t(len(virtualReturn)))
  struct_seaqt_string(data: virtualReturn_copy, len: csize_t(len(virtualReturn)))

proc fcQSqlTableModel_method_callback_indexInQuery(self: pointer, item: pointer): pointer {.cdecl.} =
  let inst = cast[VirtualQSqlTableModel](fcQSqlTableModel_vdata(self)[])
  let slotval1 = gen_qabstractitemmodel_types.QModelIndex(h: item, owned: false)
  var virtualReturn = inst.indexInQuery(slotval1)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc fcQSqlTableModel_method_callback_columnCount(self: pointer, parent: pointer): cint {.cdecl.} =
  let inst = cast[VirtualQSqlTableModel](fcQSqlTableModel_vdata(self)[])
  let slotval1 = gen_qabstractitemmodel_types.QModelIndex(h: parent, owned: false)
  var virtualReturn = inst.columnCount(slotval1)
  virtualReturn

proc fcQSqlTableModel_method_callback_setHeaderData(self: pointer, section: cint, orientation: cint, value: pointer, role: cint): bool {.cdecl.} =
  let inst = cast[VirtualQSqlTableModel](fcQSqlTableModel_vdata(self)[])
  let slotval1 = section
  let slotval2 = cint(orientation)
  let slotval3 = gen_qvariant_types.QVariant(h: value, owned: false)
  let slotval4 = role
  var virtualReturn = inst.setHeaderData(slotval1, slotval2, slotval3, slotval4)
  virtualReturn

proc fcQSqlTableModel_method_callback_insertColumns(self: pointer, column: cint, count: cint, parent: pointer): bool {.cdecl.} =
  let inst = cast[VirtualQSqlTableModel](fcQSqlTableModel_vdata(self)[])
  let slotval1 = column
  let slotval2 = count
  let slotval3 = gen_qabstractitemmodel_types.QModelIndex(h: parent, owned: false)
  var virtualReturn = inst.insertColumns(slotval1, slotval2, slotval3)
  virtualReturn

proc fcQSqlTableModel_method_callback_fetchMore(self: pointer, parent: pointer): void {.cdecl.} =
  let inst = cast[VirtualQSqlTableModel](fcQSqlTableModel_vdata(self)[])
  let slotval1 = gen_qabstractitemmodel_types.QModelIndex(h: parent, owned: false)
  inst.fetchMore(slotval1)

proc fcQSqlTableModel_method_callback_canFetchMore(self: pointer, parent: pointer): bool {.cdecl.} =
  let inst = cast[VirtualQSqlTableModel](fcQSqlTableModel_vdata(self)[])
  let slotval1 = gen_qabstractitemmodel_types.QModelIndex(h: parent, owned: false)
  var virtualReturn = inst.canFetchMore(slotval1)
  virtualReturn

proc fcQSqlTableModel_method_callback_roleNames(self: pointer): struct_seaqt_map {.cdecl.} =
  let inst = cast[VirtualQSqlTableModel](fcQSqlTableModel_vdata(self)[])
  var virtualReturn = inst.roleNames()
  var virtualReturn_Keys_CArray = cast[ptr UncheckedArray[cint]](if len(virtualReturn) > 0: c_malloc(csize_t(sizeof(cint) * len(virtualReturn))) else: nil)
  var virtualReturn_Values_CArray = cast[ptr UncheckedArray[struct_seaqt_string]](if len(virtualReturn) > 0: c_malloc(csize_t(sizeof(struct_seaqt_string) * len(virtualReturn))) else: nil)
  var virtualReturn_ctr = 0
  for virtualReturn_k in virtualReturn.keys():
    virtualReturn_Keys_CArray[virtualReturn_ctr] = virtualReturn_k
    virtualReturn_ctr += 1
  virtualReturn_ctr = 0
  for virtualReturn_v in virtualReturn.mvalues():
    var virtualReturn_v_copy = if len(virtualReturn_v) > 0: c_malloc(csize_t(len(virtualReturn_v))) else: nil
    if len(virtualReturn_v) > 0: copyMem(virtualReturn_v_copy, addr virtualReturn_v[0], csize_t(len(virtualReturn_v)))
    virtualReturn_Values_CArray[virtualReturn_ctr] = struct_seaqt_string(data: virtualReturn_v_copy, len: csize_t(len(virtualReturn_v)))
    virtualReturn_ctr += 1

  struct_seaqt_map(len: csize_t(len(virtualReturn)),keys: if len(virtualReturn) == 0: nil else: addr(virtualReturn_Keys_CArray[0]), values: if len(virtualReturn) == 0: nil else: addr(virtualReturn_Values_CArray[0]),)

proc fcQSqlTableModel_method_callback_queryChange(self: pointer): void {.cdecl.} =
  let inst = cast[VirtualQSqlTableModel](fcQSqlTableModel_vdata(self)[])
  inst.queryChange()

proc fcQSqlTableModel_method_callback_index(self: pointer, row: cint, column: cint, parent: pointer): pointer {.cdecl.} =
  let inst = cast[VirtualQSqlTableModel](fcQSqlTableModel_vdata(self)[])
  let slotval1 = row
  let slotval2 = column
  let slotval3 = gen_qabstractitemmodel_types.QModelIndex(h: parent, owned: false)
  var virtualReturn = inst.index(slotval1, slotval2, slotval3)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc fcQSqlTableModel_method_callback_sibling(self: pointer, row: cint, column: cint, idx: pointer): pointer {.cdecl.} =
  let inst = cast[VirtualQSqlTableModel](fcQSqlTableModel_vdata(self)[])
  let slotval1 = row
  let slotval2 = column
  let slotval3 = gen_qabstractitemmodel_types.QModelIndex(h: idx, owned: false)
  var virtualReturn = inst.sibling(slotval1, slotval2, slotval3)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc fcQSqlTableModel_method_callback_dropMimeData(self: pointer, data: pointer, action: cint, row: cint, column: cint, parent: pointer): bool {.cdecl.} =
  let inst = cast[VirtualQSqlTableModel](fcQSqlTableModel_vdata(self)[])
  let slotval1 = gen_qmimedata_types.QMimeData(h: data, owned: false)
  let slotval2 = cint(action)
  let slotval3 = row
  let slotval4 = column
  let slotval5 = gen_qabstractitemmodel_types.QModelIndex(h: parent, owned: false)
  var virtualReturn = inst.dropMimeData(slotval1, slotval2, slotval3, slotval4, slotval5)
  virtualReturn

proc fcQSqlTableModel_method_callback_itemData(self: pointer, index: pointer): struct_seaqt_map {.cdecl.} =
  let inst = cast[VirtualQSqlTableModel](fcQSqlTableModel_vdata(self)[])
  let slotval1 = gen_qabstractitemmodel_types.QModelIndex(h: index, owned: false)
  var virtualReturn = inst.itemData(slotval1)
  var virtualReturn_Keys_CArray = cast[ptr UncheckedArray[cint]](if len(virtualReturn) > 0: c_malloc(csize_t(sizeof(cint) * len(virtualReturn))) else: nil)
  var virtualReturn_Values_CArray = cast[ptr UncheckedArray[pointer]](if len(virtualReturn) > 0: c_malloc(csize_t(sizeof(pointer) * len(virtualReturn))) else: nil)
  var virtualReturn_ctr = 0
  for virtualReturn_k in virtualReturn.keys():
    virtualReturn_Keys_CArray[virtualReturn_ctr] = virtualReturn_k
    virtualReturn_ctr += 1
  virtualReturn_ctr = 0
  for virtualReturn_v in virtualReturn.mvalues():
    virtualReturn_v.owned = false # TODO move?
    let virtualReturn_v_h = virtualReturn_v.h
    virtualReturn_v.h = nil
    virtualReturn_Values_CArray[virtualReturn_ctr] = virtualReturn_v_h
    virtualReturn_ctr += 1

  struct_seaqt_map(len: csize_t(len(virtualReturn)),keys: if len(virtualReturn) == 0: nil else: addr(virtualReturn_Keys_CArray[0]), values: if len(virtualReturn) == 0: nil else: addr(virtualReturn_Values_CArray[0]),)

proc fcQSqlTableModel_method_callback_setItemData(self: pointer, index: pointer, roles: struct_seaqt_map): bool {.cdecl.} =
  let inst = cast[VirtualQSqlTableModel](fcQSqlTableModel_vdata(self)[])
  let slotval1 = gen_qabstractitemmodel_types.QModelIndex(h: index, owned: false)
  var vroles_mm = roles
  var vrolesx_ret: Table[cint, gen_qvariant_types.QVariant]
  var vroles_Keys = cast[ptr UncheckedArray[cint]](vroles_mm.keys)
  var vroles_Values = cast[ptr UncheckedArray[pointer]](vroles_mm.values)
  for i in 0..<vroles_mm.len:
    var vroles_entry_Key = vroles_Keys[i]

    var vroles_entry_Value = gen_qvariant_types.QVariant(h: vroles_Values[i], owned: true)

    vrolesx_ret[vroles_entry_Key] = vroles_entry_Value
  c_free(vroles_mm.keys)
  c_free(vroles_mm.values)
  let slotval2 = vrolesx_ret
  var virtualReturn = inst.setItemData(slotval1, slotval2)
  virtualReturn

proc fcQSqlTableModel_method_callback_mimeTypes(self: pointer): struct_seaqt_array {.cdecl.} =
  let inst = cast[VirtualQSqlTableModel](fcQSqlTableModel_vdata(self)[])
  var virtualReturn = inst.mimeTypes()
  var virtualReturn_CArray = cast[ptr UncheckedArray[struct_seaqt_string]](if len(virtualReturn) > 0: c_malloc(c_sizet(sizeof(struct_seaqt_string) * len(virtualReturn))) else: nil)
  for i in 0..<len(virtualReturn):
    var virtualReturn_i_copy = if len(virtualReturn[i]) > 0: c_malloc(csize_t(len(virtualReturn[i]))) else: nil
    if len(virtualReturn[i]) > 0: copyMem(virtualReturn_i_copy, addr virtualReturn[i][0], csize_t(len(virtualReturn[i])))
    virtualReturn_CArray[i] = struct_seaqt_string(data: virtualReturn_i_copy, len: csize_t(len(virtualReturn[i])))

  struct_seaqt_array(len: csize_t(len(virtualReturn)), data: if len(virtualReturn) == 0: nil else: addr(virtualReturn_CArray[0]))

proc fcQSqlTableModel_method_callback_mimeData(self: pointer, indexes: struct_seaqt_array): pointer {.cdecl.} =
  let inst = cast[VirtualQSqlTableModel](fcQSqlTableModel_vdata(self)[])
  var vindexes_ma = indexes
  var vindexesx_ret = newSeq[gen_qabstractitemmodel_types.QModelIndex](int(vindexes_ma.len))
  let vindexes_outCast = cast[ptr UncheckedArray[pointer]](vindexes_ma.data)
  for i in 0 ..< vindexes_ma.len:
    vindexesx_ret[i] = gen_qabstractitemmodel_types.QModelIndex(h: vindexes_outCast[i], owned: true)
  c_free(vindexes_ma.data)
  let slotval1 = vindexesx_ret
  var virtualReturn = inst.mimeData(slotval1)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc fcQSqlTableModel_method_callback_canDropMimeData(self: pointer, data: pointer, action: cint, row: cint, column: cint, parent: pointer): bool {.cdecl.} =
  let inst = cast[VirtualQSqlTableModel](fcQSqlTableModel_vdata(self)[])
  let slotval1 = gen_qmimedata_types.QMimeData(h: data, owned: false)
  let slotval2 = cint(action)
  let slotval3 = row
  let slotval4 = column
  let slotval5 = gen_qabstractitemmodel_types.QModelIndex(h: parent, owned: false)
  var virtualReturn = inst.canDropMimeData(slotval1, slotval2, slotval3, slotval4, slotval5)
  virtualReturn

proc fcQSqlTableModel_method_callback_supportedDropActions(self: pointer): cint {.cdecl.} =
  let inst = cast[VirtualQSqlTableModel](fcQSqlTableModel_vdata(self)[])
  var virtualReturn = inst.supportedDropActions()
  cint(virtualReturn)

proc fcQSqlTableModel_method_callback_supportedDragActions(self: pointer): cint {.cdecl.} =
  let inst = cast[VirtualQSqlTableModel](fcQSqlTableModel_vdata(self)[])
  var virtualReturn = inst.supportedDragActions()
  cint(virtualReturn)

proc fcQSqlTableModel_method_callback_moveRows(self: pointer, sourceParent: pointer, sourceRow: cint, count: cint, destinationParent: pointer, destinationChild: cint): bool {.cdecl.} =
  let inst = cast[VirtualQSqlTableModel](fcQSqlTableModel_vdata(self)[])
  let slotval1 = gen_qabstractitemmodel_types.QModelIndex(h: sourceParent, owned: false)
  let slotval2 = sourceRow
  let slotval3 = count
  let slotval4 = gen_qabstractitemmodel_types.QModelIndex(h: destinationParent, owned: false)
  let slotval5 = destinationChild
  var virtualReturn = inst.moveRows(slotval1, slotval2, slotval3, slotval4, slotval5)
  virtualReturn

proc fcQSqlTableModel_method_callback_moveColumns(self: pointer, sourceParent: pointer, sourceColumn: cint, count: cint, destinationParent: pointer, destinationChild: cint): bool {.cdecl.} =
  let inst = cast[VirtualQSqlTableModel](fcQSqlTableModel_vdata(self)[])
  let slotval1 = gen_qabstractitemmodel_types.QModelIndex(h: sourceParent, owned: false)
  let slotval2 = sourceColumn
  let slotval3 = count
  let slotval4 = gen_qabstractitemmodel_types.QModelIndex(h: destinationParent, owned: false)
  let slotval5 = destinationChild
  var virtualReturn = inst.moveColumns(slotval1, slotval2, slotval3, slotval4, slotval5)
  virtualReturn

proc fcQSqlTableModel_method_callback_buddy(self: pointer, index: pointer): pointer {.cdecl.} =
  let inst = cast[VirtualQSqlTableModel](fcQSqlTableModel_vdata(self)[])
  let slotval1 = gen_qabstractitemmodel_types.QModelIndex(h: index, owned: false)
  var virtualReturn = inst.buddy(slotval1)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc fcQSqlTableModel_method_callback_match(self: pointer, start: pointer, role: cint, value: pointer, hits: cint, flags: cint): struct_seaqt_array {.cdecl.} =
  let inst = cast[VirtualQSqlTableModel](fcQSqlTableModel_vdata(self)[])
  let slotval1 = gen_qabstractitemmodel_types.QModelIndex(h: start, owned: false)
  let slotval2 = role
  let slotval3 = gen_qvariant_types.QVariant(h: value, owned: false)
  let slotval4 = hits
  let slotval5 = cint(flags)
  var virtualReturn = inst.match(slotval1, slotval2, slotval3, slotval4, slotval5)
  var virtualReturn_CArray = cast[ptr UncheckedArray[pointer]](if len(virtualReturn) > 0: c_malloc(c_sizet(sizeof(pointer) * len(virtualReturn))) else: nil)
  for i in 0..<len(virtualReturn):
    virtualReturn[i].owned = false # TODO move?
    let virtualReturn_i_h = virtualReturn[i].h
    virtualReturn[i].h = nil
    virtualReturn_CArray[i] = virtualReturn_i_h

  struct_seaqt_array(len: csize_t(len(virtualReturn)), data: if len(virtualReturn) == 0: nil else: addr(virtualReturn_CArray[0]))

proc fcQSqlTableModel_method_callback_span(self: pointer, index: pointer): pointer {.cdecl.} =
  let inst = cast[VirtualQSqlTableModel](fcQSqlTableModel_vdata(self)[])
  let slotval1 = gen_qabstractitemmodel_types.QModelIndex(h: index, owned: false)
  var virtualReturn = inst.span(slotval1)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc fcQSqlTableModel_method_callback_multiData(self: pointer, index: pointer, roleDataSpan: pointer): void {.cdecl.} =
  let inst = cast[VirtualQSqlTableModel](fcQSqlTableModel_vdata(self)[])
  let slotval1 = gen_qabstractitemmodel_types.QModelIndex(h: index, owned: false)
  let slotval2 = gen_qabstractitemmodel_types.QModelRoleDataSpan(h: roleDataSpan, owned: true)
  inst.multiData(slotval1, slotval2)

proc fcQSqlTableModel_method_callback_resetInternalData(self: pointer): void {.cdecl.} =
  let inst = cast[VirtualQSqlTableModel](fcQSqlTableModel_vdata(self)[])
  inst.resetInternalData()

proc fcQSqlTableModel_method_callback_event(self: pointer, event: pointer): bool {.cdecl.} =
  let inst = cast[VirtualQSqlTableModel](fcQSqlTableModel_vdata(self)[])
  let slotval1 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  var virtualReturn = inst.event(slotval1)
  virtualReturn

proc fcQSqlTableModel_method_callback_eventFilter(self: pointer, watched: pointer, event: pointer): bool {.cdecl.} =
  let inst = cast[VirtualQSqlTableModel](fcQSqlTableModel_vdata(self)[])
  let slotval1 = gen_qobject_types.QObject(h: watched, owned: false)
  let slotval2 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  var virtualReturn = inst.eventFilter(slotval1, slotval2)
  virtualReturn

proc fcQSqlTableModel_method_callback_timerEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQSqlTableModel](fcQSqlTableModel_vdata(self)[])
  let slotval1 = gen_qcoreevent_types.QTimerEvent(h: event, owned: false)
  inst.timerEvent(slotval1)

proc fcQSqlTableModel_method_callback_childEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQSqlTableModel](fcQSqlTableModel_vdata(self)[])
  let slotval1 = gen_qcoreevent_types.QChildEvent(h: event, owned: false)
  inst.childEvent(slotval1)

proc fcQSqlTableModel_method_callback_customEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQSqlTableModel](fcQSqlTableModel_vdata(self)[])
  let slotval1 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  inst.customEvent(slotval1)

proc fcQSqlTableModel_method_callback_connectNotify(self: pointer, signal: pointer): void {.cdecl.} =
  let inst = cast[VirtualQSqlTableModel](fcQSqlTableModel_vdata(self)[])
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal, owned: false)
  inst.connectNotify(slotval1)

proc fcQSqlTableModel_method_callback_disconnectNotify(self: pointer, signal: pointer): void {.cdecl.} =
  let inst = cast[VirtualQSqlTableModel](fcQSqlTableModel_vdata(self)[])
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal, owned: false)
  inst.disconnectNotify(slotval1)


proc setPrimaryKey*(self: gen_qsqltablemodel_types.QSqlTableModel, key: gen_qsqlindex_types.QSqlIndex): void =
  fcQSqlTableModel_protectedbase_setPrimaryKey(self.h, key.h)

proc setQuery*(self: gen_qsqltablemodel_types.QSqlTableModel, query: gen_qsqlquery_types.QSqlQuery): void =
  fcQSqlTableModel_protectedbase_setQuery(self.h, query.h)

proc primaryValues*(self: gen_qsqltablemodel_types.QSqlTableModel, row: cint): gen_qsqlrecord_types.QSqlRecord =
  gen_qsqlrecord_types.QSqlRecord(h: fcQSqlTableModel_protectedbase_primaryValues(self.h, row), owned: true)

proc beginInsertRows*(self: gen_qsqltablemodel_types.QSqlTableModel, parent: gen_qabstractitemmodel_types.QModelIndex, first: cint, last: cint): void =
  fcQSqlTableModel_protectedbase_beginInsertRows(self.h, parent.h, first, last)

proc endInsertRows*(self: gen_qsqltablemodel_types.QSqlTableModel): void =
  fcQSqlTableModel_protectedbase_endInsertRows(self.h)

proc beginRemoveRows*(self: gen_qsqltablemodel_types.QSqlTableModel, parent: gen_qabstractitemmodel_types.QModelIndex, first: cint, last: cint): void =
  fcQSqlTableModel_protectedbase_beginRemoveRows(self.h, parent.h, first, last)

proc endRemoveRows*(self: gen_qsqltablemodel_types.QSqlTableModel): void =
  fcQSqlTableModel_protectedbase_endRemoveRows(self.h)

proc beginInsertColumns*(self: gen_qsqltablemodel_types.QSqlTableModel, parent: gen_qabstractitemmodel_types.QModelIndex, first: cint, last: cint): void =
  fcQSqlTableModel_protectedbase_beginInsertColumns(self.h, parent.h, first, last)

proc endInsertColumns*(self: gen_qsqltablemodel_types.QSqlTableModel): void =
  fcQSqlTableModel_protectedbase_endInsertColumns(self.h)

proc beginRemoveColumns*(self: gen_qsqltablemodel_types.QSqlTableModel, parent: gen_qabstractitemmodel_types.QModelIndex, first: cint, last: cint): void =
  fcQSqlTableModel_protectedbase_beginRemoveColumns(self.h, parent.h, first, last)

proc endRemoveColumns*(self: gen_qsqltablemodel_types.QSqlTableModel): void =
  fcQSqlTableModel_protectedbase_endRemoveColumns(self.h)

proc beginResetModel*(self: gen_qsqltablemodel_types.QSqlTableModel): void =
  fcQSqlTableModel_protectedbase_beginResetModel(self.h)

proc endResetModel*(self: gen_qsqltablemodel_types.QSqlTableModel): void =
  fcQSqlTableModel_protectedbase_endResetModel(self.h)

proc setLastError*(self: gen_qsqltablemodel_types.QSqlTableModel, error: gen_qsqlerror_types.QSqlError): void =
  fcQSqlTableModel_protectedbase_setLastError(self.h, error.h)

proc createIndex*(self: gen_qsqltablemodel_types.QSqlTableModel, row: cint, column: cint): gen_qabstractitemmodel_types.QModelIndex =
  gen_qabstractitemmodel_types.QModelIndex(h: fcQSqlTableModel_protectedbase_createIndex(self.h, row, column), owned: true)

proc encodeData*(self: gen_qsqltablemodel_types.QSqlTableModel, indexes: openArray[gen_qabstractitemmodel_types.QModelIndex], stream: gen_qdatastream_types.QDataStream): void =
  var indexes_CArray = newSeq[pointer](len(indexes))
  for i in 0..<len(indexes):
    indexes_CArray[i] = indexes[i].h

  fcQSqlTableModel_protectedbase_encodeData(self.h, struct_seaqt_array(len: csize_t(len(indexes)), data: if len(indexes) == 0: nil else: addr(indexes_CArray[0])), stream.h)

proc decodeData*(self: gen_qsqltablemodel_types.QSqlTableModel, row: cint, column: cint, parent: gen_qabstractitemmodel_types.QModelIndex, stream: gen_qdatastream_types.QDataStream): bool =
  fcQSqlTableModel_protectedbase_decodeData(self.h, row, column, parent.h, stream.h)

proc beginMoveRows*(self: gen_qsqltablemodel_types.QSqlTableModel, sourceParent: gen_qabstractitemmodel_types.QModelIndex, sourceFirst: cint, sourceLast: cint, destinationParent: gen_qabstractitemmodel_types.QModelIndex, destinationRow: cint): bool =
  fcQSqlTableModel_protectedbase_beginMoveRows(self.h, sourceParent.h, sourceFirst, sourceLast, destinationParent.h, destinationRow)

proc endMoveRows*(self: gen_qsqltablemodel_types.QSqlTableModel): void =
  fcQSqlTableModel_protectedbase_endMoveRows(self.h)

proc beginMoveColumns*(self: gen_qsqltablemodel_types.QSqlTableModel, sourceParent: gen_qabstractitemmodel_types.QModelIndex, sourceFirst: cint, sourceLast: cint, destinationParent: gen_qabstractitemmodel_types.QModelIndex, destinationColumn: cint): bool =
  fcQSqlTableModel_protectedbase_beginMoveColumns(self.h, sourceParent.h, sourceFirst, sourceLast, destinationParent.h, destinationColumn)

proc endMoveColumns*(self: gen_qsqltablemodel_types.QSqlTableModel): void =
  fcQSqlTableModel_protectedbase_endMoveColumns(self.h)

proc changePersistentIndex*(self: gen_qsqltablemodel_types.QSqlTableModel, fromVal: gen_qabstractitemmodel_types.QModelIndex, to: gen_qabstractitemmodel_types.QModelIndex): void =
  fcQSqlTableModel_protectedbase_changePersistentIndex(self.h, fromVal.h, to.h)

proc changePersistentIndexList*(self: gen_qsqltablemodel_types.QSqlTableModel, fromVal: openArray[gen_qabstractitemmodel_types.QModelIndex], to: openArray[gen_qabstractitemmodel_types.QModelIndex]): void =
  var fromVal_CArray = newSeq[pointer](len(fromVal))
  for i in 0..<len(fromVal):
    fromVal_CArray[i] = fromVal[i].h

  var to_CArray = newSeq[pointer](len(to))
  for i in 0..<len(to):
    to_CArray[i] = to[i].h

  fcQSqlTableModel_protectedbase_changePersistentIndexList(self.h, struct_seaqt_array(len: csize_t(len(fromVal)), data: if len(fromVal) == 0: nil else: addr(fromVal_CArray[0])), struct_seaqt_array(len: csize_t(len(to)), data: if len(to) == 0: nil else: addr(to_CArray[0])))

proc persistentIndexList*(self: gen_qsqltablemodel_types.QSqlTableModel): seq[gen_qabstractitemmodel_types.QModelIndex] =
  var v_ma = fcQSqlTableModel_protectedbase_persistentIndexList(self.h)
  var vx_ret = newSeq[gen_qabstractitemmodel_types.QModelIndex](int(v_ma.len))
  let v_outCast = cast[ptr UncheckedArray[pointer]](v_ma.data)
  for i in 0 ..< v_ma.len:
    vx_ret[i] = gen_qabstractitemmodel_types.QModelIndex(h: v_outCast[i], owned: true)
  c_free(v_ma.data)
  vx_ret

proc sender*(self: gen_qsqltablemodel_types.QSqlTableModel): gen_qobject_types.QObject =
  gen_qobject_types.QObject(h: fcQSqlTableModel_protectedbase_sender(self.h), owned: false)

proc senderSignalIndex*(self: gen_qsqltablemodel_types.QSqlTableModel): cint =
  fcQSqlTableModel_protectedbase_senderSignalIndex(self.h)

proc receivers*(self: gen_qsqltablemodel_types.QSqlTableModel, signal: cstring): cint =
  fcQSqlTableModel_protectedbase_receivers(self.h, signal)

proc isSignalConnected*(self: gen_qsqltablemodel_types.QSqlTableModel, signal: gen_qmetaobject_types.QMetaMethod): bool =
  fcQSqlTableModel_protectedbase_isSignalConnected(self.h, signal.h)

proc create*(T: type gen_qsqltablemodel_types.QSqlTableModel,
    vtbl: ref QSqlTableModelVTable = nil): gen_qsqltablemodel_types.QSqlTableModel =
  let vtbl = if vtbl == nil: new QSqlTableModelVTable else: vtbl
  GC_ref(vtbl)
  vtbl[].vtbl.destructor = proc(self: pointer) {.cdecl.} =
    let vtbl = cast[ref QSqlTableModelVTable](fcQSqlTableModel_vdata(self)[])
    GC_unref(vtbl)
  if not isNil(vtbl[].metaObject):
    vtbl[].vtbl.metaObject = fcQSqlTableModel_vtable_callback_metaObject
  if not isNil(vtbl[].metacast):
    vtbl[].vtbl.metacast = fcQSqlTableModel_vtable_callback_metacast
  if not isNil(vtbl[].metacall):
    vtbl[].vtbl.metacall = fcQSqlTableModel_vtable_callback_metacall
  if not isNil(vtbl[].setTable):
    vtbl[].vtbl.setTable = fcQSqlTableModel_vtable_callback_setTable
  if not isNil(vtbl[].flags):
    vtbl[].vtbl.flags = fcQSqlTableModel_vtable_callback_flags
  if not isNil(vtbl[].data):
    vtbl[].vtbl.data = fcQSqlTableModel_vtable_callback_data
  if not isNil(vtbl[].setData):
    vtbl[].vtbl.setData = fcQSqlTableModel_vtable_callback_setData
  if not isNil(vtbl[].clearItemData):
    vtbl[].vtbl.clearItemData = fcQSqlTableModel_vtable_callback_clearItemData
  if not isNil(vtbl[].headerData):
    vtbl[].vtbl.headerData = fcQSqlTableModel_vtable_callback_headerData
  if not isNil(vtbl[].clear):
    vtbl[].vtbl.clear = fcQSqlTableModel_vtable_callback_clear
  if not isNil(vtbl[].setEditStrategy):
    vtbl[].vtbl.setEditStrategy = fcQSqlTableModel_vtable_callback_setEditStrategy
  if not isNil(vtbl[].sort):
    vtbl[].vtbl.sort = fcQSqlTableModel_vtable_callback_sort
  if not isNil(vtbl[].setSort):
    vtbl[].vtbl.setSort = fcQSqlTableModel_vtable_callback_setSort
  if not isNil(vtbl[].setFilter):
    vtbl[].vtbl.setFilter = fcQSqlTableModel_vtable_callback_setFilter
  if not isNil(vtbl[].rowCount):
    vtbl[].vtbl.rowCount = fcQSqlTableModel_vtable_callback_rowCount
  if not isNil(vtbl[].removeColumns):
    vtbl[].vtbl.removeColumns = fcQSqlTableModel_vtable_callback_removeColumns
  if not isNil(vtbl[].removeRows):
    vtbl[].vtbl.removeRows = fcQSqlTableModel_vtable_callback_removeRows
  if not isNil(vtbl[].insertRows):
    vtbl[].vtbl.insertRows = fcQSqlTableModel_vtable_callback_insertRows
  if not isNil(vtbl[].revertRow):
    vtbl[].vtbl.revertRow = fcQSqlTableModel_vtable_callback_revertRow
  if not isNil(vtbl[].select):
    vtbl[].vtbl.select = fcQSqlTableModel_vtable_callback_select
  if not isNil(vtbl[].selectRow):
    vtbl[].vtbl.selectRow = fcQSqlTableModel_vtable_callback_selectRow
  if not isNil(vtbl[].submit):
    vtbl[].vtbl.submit = fcQSqlTableModel_vtable_callback_submit
  if not isNil(vtbl[].revert):
    vtbl[].vtbl.revert = fcQSqlTableModel_vtable_callback_revert
  if not isNil(vtbl[].updateRowInTable):
    vtbl[].vtbl.updateRowInTable = fcQSqlTableModel_vtable_callback_updateRowInTable
  if not isNil(vtbl[].insertRowIntoTable):
    vtbl[].vtbl.insertRowIntoTable = fcQSqlTableModel_vtable_callback_insertRowIntoTable
  if not isNil(vtbl[].deleteRowFromTable):
    vtbl[].vtbl.deleteRowFromTable = fcQSqlTableModel_vtable_callback_deleteRowFromTable
  if not isNil(vtbl[].orderByClause):
    vtbl[].vtbl.orderByClause = fcQSqlTableModel_vtable_callback_orderByClause
  if not isNil(vtbl[].selectStatement):
    vtbl[].vtbl.selectStatement = fcQSqlTableModel_vtable_callback_selectStatement
  if not isNil(vtbl[].indexInQuery):
    vtbl[].vtbl.indexInQuery = fcQSqlTableModel_vtable_callback_indexInQuery
  if not isNil(vtbl[].columnCount):
    vtbl[].vtbl.columnCount = fcQSqlTableModel_vtable_callback_columnCount
  if not isNil(vtbl[].setHeaderData):
    vtbl[].vtbl.setHeaderData = fcQSqlTableModel_vtable_callback_setHeaderData
  if not isNil(vtbl[].insertColumns):
    vtbl[].vtbl.insertColumns = fcQSqlTableModel_vtable_callback_insertColumns
  if not isNil(vtbl[].fetchMore):
    vtbl[].vtbl.fetchMore = fcQSqlTableModel_vtable_callback_fetchMore
  if not isNil(vtbl[].canFetchMore):
    vtbl[].vtbl.canFetchMore = fcQSqlTableModel_vtable_callback_canFetchMore
  if not isNil(vtbl[].roleNames):
    vtbl[].vtbl.roleNames = fcQSqlTableModel_vtable_callback_roleNames
  if not isNil(vtbl[].queryChange):
    vtbl[].vtbl.queryChange = fcQSqlTableModel_vtable_callback_queryChange
  if not isNil(vtbl[].index):
    vtbl[].vtbl.index = fcQSqlTableModel_vtable_callback_index
  if not isNil(vtbl[].sibling):
    vtbl[].vtbl.sibling = fcQSqlTableModel_vtable_callback_sibling
  if not isNil(vtbl[].dropMimeData):
    vtbl[].vtbl.dropMimeData = fcQSqlTableModel_vtable_callback_dropMimeData
  if not isNil(vtbl[].itemData):
    vtbl[].vtbl.itemData = fcQSqlTableModel_vtable_callback_itemData
  if not isNil(vtbl[].setItemData):
    vtbl[].vtbl.setItemData = fcQSqlTableModel_vtable_callback_setItemData
  if not isNil(vtbl[].mimeTypes):
    vtbl[].vtbl.mimeTypes = fcQSqlTableModel_vtable_callback_mimeTypes
  if not isNil(vtbl[].mimeData):
    vtbl[].vtbl.mimeData = fcQSqlTableModel_vtable_callback_mimeData
  if not isNil(vtbl[].canDropMimeData):
    vtbl[].vtbl.canDropMimeData = fcQSqlTableModel_vtable_callback_canDropMimeData
  if not isNil(vtbl[].supportedDropActions):
    vtbl[].vtbl.supportedDropActions = fcQSqlTableModel_vtable_callback_supportedDropActions
  if not isNil(vtbl[].supportedDragActions):
    vtbl[].vtbl.supportedDragActions = fcQSqlTableModel_vtable_callback_supportedDragActions
  if not isNil(vtbl[].moveRows):
    vtbl[].vtbl.moveRows = fcQSqlTableModel_vtable_callback_moveRows
  if not isNil(vtbl[].moveColumns):
    vtbl[].vtbl.moveColumns = fcQSqlTableModel_vtable_callback_moveColumns
  if not isNil(vtbl[].buddy):
    vtbl[].vtbl.buddy = fcQSqlTableModel_vtable_callback_buddy
  if not isNil(vtbl[].match):
    vtbl[].vtbl.match = fcQSqlTableModel_vtable_callback_match
  if not isNil(vtbl[].span):
    vtbl[].vtbl.span = fcQSqlTableModel_vtable_callback_span
  if not isNil(vtbl[].multiData):
    vtbl[].vtbl.multiData = fcQSqlTableModel_vtable_callback_multiData
  if not isNil(vtbl[].resetInternalData):
    vtbl[].vtbl.resetInternalData = fcQSqlTableModel_vtable_callback_resetInternalData
  if not isNil(vtbl[].event):
    vtbl[].vtbl.event = fcQSqlTableModel_vtable_callback_event
  if not isNil(vtbl[].eventFilter):
    vtbl[].vtbl.eventFilter = fcQSqlTableModel_vtable_callback_eventFilter
  if not isNil(vtbl[].timerEvent):
    vtbl[].vtbl.timerEvent = fcQSqlTableModel_vtable_callback_timerEvent
  if not isNil(vtbl[].childEvent):
    vtbl[].vtbl.childEvent = fcQSqlTableModel_vtable_callback_childEvent
  if not isNil(vtbl[].customEvent):
    vtbl[].vtbl.customEvent = fcQSqlTableModel_vtable_callback_customEvent
  if not isNil(vtbl[].connectNotify):
    vtbl[].vtbl.connectNotify = fcQSqlTableModel_vtable_callback_connectNotify
  if not isNil(vtbl[].disconnectNotify):
    vtbl[].vtbl.disconnectNotify = fcQSqlTableModel_vtable_callback_disconnectNotify
  let tmp = gen_qsqltablemodel_types.QSqlTableModel(h: fcQSqlTableModel_new(addr(vtbl[].vtbl), csize_t(sizeof(pointer))), owned: true)
  fcQSqlTableModel_vdata(tmp.h)[] = addr(vtbl[])
  tmp
proc create*(T: type gen_qsqltablemodel_types.QSqlTableModel,
    parent: gen_qobject_types.QObject,
    vtbl: ref QSqlTableModelVTable = nil): gen_qsqltablemodel_types.QSqlTableModel =
  let vtbl = if vtbl == nil: new QSqlTableModelVTable else: vtbl
  GC_ref(vtbl)
  vtbl[].vtbl.destructor = proc(self: pointer) {.cdecl.} =
    let vtbl = cast[ref QSqlTableModelVTable](fcQSqlTableModel_vdata(self)[])
    GC_unref(vtbl)
  if not isNil(vtbl[].metaObject):
    vtbl[].vtbl.metaObject = fcQSqlTableModel_vtable_callback_metaObject
  if not isNil(vtbl[].metacast):
    vtbl[].vtbl.metacast = fcQSqlTableModel_vtable_callback_metacast
  if not isNil(vtbl[].metacall):
    vtbl[].vtbl.metacall = fcQSqlTableModel_vtable_callback_metacall
  if not isNil(vtbl[].setTable):
    vtbl[].vtbl.setTable = fcQSqlTableModel_vtable_callback_setTable
  if not isNil(vtbl[].flags):
    vtbl[].vtbl.flags = fcQSqlTableModel_vtable_callback_flags
  if not isNil(vtbl[].data):
    vtbl[].vtbl.data = fcQSqlTableModel_vtable_callback_data
  if not isNil(vtbl[].setData):
    vtbl[].vtbl.setData = fcQSqlTableModel_vtable_callback_setData
  if not isNil(vtbl[].clearItemData):
    vtbl[].vtbl.clearItemData = fcQSqlTableModel_vtable_callback_clearItemData
  if not isNil(vtbl[].headerData):
    vtbl[].vtbl.headerData = fcQSqlTableModel_vtable_callback_headerData
  if not isNil(vtbl[].clear):
    vtbl[].vtbl.clear = fcQSqlTableModel_vtable_callback_clear
  if not isNil(vtbl[].setEditStrategy):
    vtbl[].vtbl.setEditStrategy = fcQSqlTableModel_vtable_callback_setEditStrategy
  if not isNil(vtbl[].sort):
    vtbl[].vtbl.sort = fcQSqlTableModel_vtable_callback_sort
  if not isNil(vtbl[].setSort):
    vtbl[].vtbl.setSort = fcQSqlTableModel_vtable_callback_setSort
  if not isNil(vtbl[].setFilter):
    vtbl[].vtbl.setFilter = fcQSqlTableModel_vtable_callback_setFilter
  if not isNil(vtbl[].rowCount):
    vtbl[].vtbl.rowCount = fcQSqlTableModel_vtable_callback_rowCount
  if not isNil(vtbl[].removeColumns):
    vtbl[].vtbl.removeColumns = fcQSqlTableModel_vtable_callback_removeColumns
  if not isNil(vtbl[].removeRows):
    vtbl[].vtbl.removeRows = fcQSqlTableModel_vtable_callback_removeRows
  if not isNil(vtbl[].insertRows):
    vtbl[].vtbl.insertRows = fcQSqlTableModel_vtable_callback_insertRows
  if not isNil(vtbl[].revertRow):
    vtbl[].vtbl.revertRow = fcQSqlTableModel_vtable_callback_revertRow
  if not isNil(vtbl[].select):
    vtbl[].vtbl.select = fcQSqlTableModel_vtable_callback_select
  if not isNil(vtbl[].selectRow):
    vtbl[].vtbl.selectRow = fcQSqlTableModel_vtable_callback_selectRow
  if not isNil(vtbl[].submit):
    vtbl[].vtbl.submit = fcQSqlTableModel_vtable_callback_submit
  if not isNil(vtbl[].revert):
    vtbl[].vtbl.revert = fcQSqlTableModel_vtable_callback_revert
  if not isNil(vtbl[].updateRowInTable):
    vtbl[].vtbl.updateRowInTable = fcQSqlTableModel_vtable_callback_updateRowInTable
  if not isNil(vtbl[].insertRowIntoTable):
    vtbl[].vtbl.insertRowIntoTable = fcQSqlTableModel_vtable_callback_insertRowIntoTable
  if not isNil(vtbl[].deleteRowFromTable):
    vtbl[].vtbl.deleteRowFromTable = fcQSqlTableModel_vtable_callback_deleteRowFromTable
  if not isNil(vtbl[].orderByClause):
    vtbl[].vtbl.orderByClause = fcQSqlTableModel_vtable_callback_orderByClause
  if not isNil(vtbl[].selectStatement):
    vtbl[].vtbl.selectStatement = fcQSqlTableModel_vtable_callback_selectStatement
  if not isNil(vtbl[].indexInQuery):
    vtbl[].vtbl.indexInQuery = fcQSqlTableModel_vtable_callback_indexInQuery
  if not isNil(vtbl[].columnCount):
    vtbl[].vtbl.columnCount = fcQSqlTableModel_vtable_callback_columnCount
  if not isNil(vtbl[].setHeaderData):
    vtbl[].vtbl.setHeaderData = fcQSqlTableModel_vtable_callback_setHeaderData
  if not isNil(vtbl[].insertColumns):
    vtbl[].vtbl.insertColumns = fcQSqlTableModel_vtable_callback_insertColumns
  if not isNil(vtbl[].fetchMore):
    vtbl[].vtbl.fetchMore = fcQSqlTableModel_vtable_callback_fetchMore
  if not isNil(vtbl[].canFetchMore):
    vtbl[].vtbl.canFetchMore = fcQSqlTableModel_vtable_callback_canFetchMore
  if not isNil(vtbl[].roleNames):
    vtbl[].vtbl.roleNames = fcQSqlTableModel_vtable_callback_roleNames
  if not isNil(vtbl[].queryChange):
    vtbl[].vtbl.queryChange = fcQSqlTableModel_vtable_callback_queryChange
  if not isNil(vtbl[].index):
    vtbl[].vtbl.index = fcQSqlTableModel_vtable_callback_index
  if not isNil(vtbl[].sibling):
    vtbl[].vtbl.sibling = fcQSqlTableModel_vtable_callback_sibling
  if not isNil(vtbl[].dropMimeData):
    vtbl[].vtbl.dropMimeData = fcQSqlTableModel_vtable_callback_dropMimeData
  if not isNil(vtbl[].itemData):
    vtbl[].vtbl.itemData = fcQSqlTableModel_vtable_callback_itemData
  if not isNil(vtbl[].setItemData):
    vtbl[].vtbl.setItemData = fcQSqlTableModel_vtable_callback_setItemData
  if not isNil(vtbl[].mimeTypes):
    vtbl[].vtbl.mimeTypes = fcQSqlTableModel_vtable_callback_mimeTypes
  if not isNil(vtbl[].mimeData):
    vtbl[].vtbl.mimeData = fcQSqlTableModel_vtable_callback_mimeData
  if not isNil(vtbl[].canDropMimeData):
    vtbl[].vtbl.canDropMimeData = fcQSqlTableModel_vtable_callback_canDropMimeData
  if not isNil(vtbl[].supportedDropActions):
    vtbl[].vtbl.supportedDropActions = fcQSqlTableModel_vtable_callback_supportedDropActions
  if not isNil(vtbl[].supportedDragActions):
    vtbl[].vtbl.supportedDragActions = fcQSqlTableModel_vtable_callback_supportedDragActions
  if not isNil(vtbl[].moveRows):
    vtbl[].vtbl.moveRows = fcQSqlTableModel_vtable_callback_moveRows
  if not isNil(vtbl[].moveColumns):
    vtbl[].vtbl.moveColumns = fcQSqlTableModel_vtable_callback_moveColumns
  if not isNil(vtbl[].buddy):
    vtbl[].vtbl.buddy = fcQSqlTableModel_vtable_callback_buddy
  if not isNil(vtbl[].match):
    vtbl[].vtbl.match = fcQSqlTableModel_vtable_callback_match
  if not isNil(vtbl[].span):
    vtbl[].vtbl.span = fcQSqlTableModel_vtable_callback_span
  if not isNil(vtbl[].multiData):
    vtbl[].vtbl.multiData = fcQSqlTableModel_vtable_callback_multiData
  if not isNil(vtbl[].resetInternalData):
    vtbl[].vtbl.resetInternalData = fcQSqlTableModel_vtable_callback_resetInternalData
  if not isNil(vtbl[].event):
    vtbl[].vtbl.event = fcQSqlTableModel_vtable_callback_event
  if not isNil(vtbl[].eventFilter):
    vtbl[].vtbl.eventFilter = fcQSqlTableModel_vtable_callback_eventFilter
  if not isNil(vtbl[].timerEvent):
    vtbl[].vtbl.timerEvent = fcQSqlTableModel_vtable_callback_timerEvent
  if not isNil(vtbl[].childEvent):
    vtbl[].vtbl.childEvent = fcQSqlTableModel_vtable_callback_childEvent
  if not isNil(vtbl[].customEvent):
    vtbl[].vtbl.customEvent = fcQSqlTableModel_vtable_callback_customEvent
  if not isNil(vtbl[].connectNotify):
    vtbl[].vtbl.connectNotify = fcQSqlTableModel_vtable_callback_connectNotify
  if not isNil(vtbl[].disconnectNotify):
    vtbl[].vtbl.disconnectNotify = fcQSqlTableModel_vtable_callback_disconnectNotify
  let tmp = gen_qsqltablemodel_types.QSqlTableModel(h: fcQSqlTableModel_new2(addr(vtbl[].vtbl), csize_t(sizeof(pointer)), parent.h), owned: true)
  fcQSqlTableModel_vdata(tmp.h)[] = addr(vtbl[])
  tmp
proc create*(T: type gen_qsqltablemodel_types.QSqlTableModel,
    parent: gen_qobject_types.QObject, db: gen_qsqldatabase_types.QSqlDatabase,
    vtbl: ref QSqlTableModelVTable = nil): gen_qsqltablemodel_types.QSqlTableModel =
  let vtbl = if vtbl == nil: new QSqlTableModelVTable else: vtbl
  GC_ref(vtbl)
  vtbl[].vtbl.destructor = proc(self: pointer) {.cdecl.} =
    let vtbl = cast[ref QSqlTableModelVTable](fcQSqlTableModel_vdata(self)[])
    GC_unref(vtbl)
  if not isNil(vtbl[].metaObject):
    vtbl[].vtbl.metaObject = fcQSqlTableModel_vtable_callback_metaObject
  if not isNil(vtbl[].metacast):
    vtbl[].vtbl.metacast = fcQSqlTableModel_vtable_callback_metacast
  if not isNil(vtbl[].metacall):
    vtbl[].vtbl.metacall = fcQSqlTableModel_vtable_callback_metacall
  if not isNil(vtbl[].setTable):
    vtbl[].vtbl.setTable = fcQSqlTableModel_vtable_callback_setTable
  if not isNil(vtbl[].flags):
    vtbl[].vtbl.flags = fcQSqlTableModel_vtable_callback_flags
  if not isNil(vtbl[].data):
    vtbl[].vtbl.data = fcQSqlTableModel_vtable_callback_data
  if not isNil(vtbl[].setData):
    vtbl[].vtbl.setData = fcQSqlTableModel_vtable_callback_setData
  if not isNil(vtbl[].clearItemData):
    vtbl[].vtbl.clearItemData = fcQSqlTableModel_vtable_callback_clearItemData
  if not isNil(vtbl[].headerData):
    vtbl[].vtbl.headerData = fcQSqlTableModel_vtable_callback_headerData
  if not isNil(vtbl[].clear):
    vtbl[].vtbl.clear = fcQSqlTableModel_vtable_callback_clear
  if not isNil(vtbl[].setEditStrategy):
    vtbl[].vtbl.setEditStrategy = fcQSqlTableModel_vtable_callback_setEditStrategy
  if not isNil(vtbl[].sort):
    vtbl[].vtbl.sort = fcQSqlTableModel_vtable_callback_sort
  if not isNil(vtbl[].setSort):
    vtbl[].vtbl.setSort = fcQSqlTableModel_vtable_callback_setSort
  if not isNil(vtbl[].setFilter):
    vtbl[].vtbl.setFilter = fcQSqlTableModel_vtable_callback_setFilter
  if not isNil(vtbl[].rowCount):
    vtbl[].vtbl.rowCount = fcQSqlTableModel_vtable_callback_rowCount
  if not isNil(vtbl[].removeColumns):
    vtbl[].vtbl.removeColumns = fcQSqlTableModel_vtable_callback_removeColumns
  if not isNil(vtbl[].removeRows):
    vtbl[].vtbl.removeRows = fcQSqlTableModel_vtable_callback_removeRows
  if not isNil(vtbl[].insertRows):
    vtbl[].vtbl.insertRows = fcQSqlTableModel_vtable_callback_insertRows
  if not isNil(vtbl[].revertRow):
    vtbl[].vtbl.revertRow = fcQSqlTableModel_vtable_callback_revertRow
  if not isNil(vtbl[].select):
    vtbl[].vtbl.select = fcQSqlTableModel_vtable_callback_select
  if not isNil(vtbl[].selectRow):
    vtbl[].vtbl.selectRow = fcQSqlTableModel_vtable_callback_selectRow
  if not isNil(vtbl[].submit):
    vtbl[].vtbl.submit = fcQSqlTableModel_vtable_callback_submit
  if not isNil(vtbl[].revert):
    vtbl[].vtbl.revert = fcQSqlTableModel_vtable_callback_revert
  if not isNil(vtbl[].updateRowInTable):
    vtbl[].vtbl.updateRowInTable = fcQSqlTableModel_vtable_callback_updateRowInTable
  if not isNil(vtbl[].insertRowIntoTable):
    vtbl[].vtbl.insertRowIntoTable = fcQSqlTableModel_vtable_callback_insertRowIntoTable
  if not isNil(vtbl[].deleteRowFromTable):
    vtbl[].vtbl.deleteRowFromTable = fcQSqlTableModel_vtable_callback_deleteRowFromTable
  if not isNil(vtbl[].orderByClause):
    vtbl[].vtbl.orderByClause = fcQSqlTableModel_vtable_callback_orderByClause
  if not isNil(vtbl[].selectStatement):
    vtbl[].vtbl.selectStatement = fcQSqlTableModel_vtable_callback_selectStatement
  if not isNil(vtbl[].indexInQuery):
    vtbl[].vtbl.indexInQuery = fcQSqlTableModel_vtable_callback_indexInQuery
  if not isNil(vtbl[].columnCount):
    vtbl[].vtbl.columnCount = fcQSqlTableModel_vtable_callback_columnCount
  if not isNil(vtbl[].setHeaderData):
    vtbl[].vtbl.setHeaderData = fcQSqlTableModel_vtable_callback_setHeaderData
  if not isNil(vtbl[].insertColumns):
    vtbl[].vtbl.insertColumns = fcQSqlTableModel_vtable_callback_insertColumns
  if not isNil(vtbl[].fetchMore):
    vtbl[].vtbl.fetchMore = fcQSqlTableModel_vtable_callback_fetchMore
  if not isNil(vtbl[].canFetchMore):
    vtbl[].vtbl.canFetchMore = fcQSqlTableModel_vtable_callback_canFetchMore
  if not isNil(vtbl[].roleNames):
    vtbl[].vtbl.roleNames = fcQSqlTableModel_vtable_callback_roleNames
  if not isNil(vtbl[].queryChange):
    vtbl[].vtbl.queryChange = fcQSqlTableModel_vtable_callback_queryChange
  if not isNil(vtbl[].index):
    vtbl[].vtbl.index = fcQSqlTableModel_vtable_callback_index
  if not isNil(vtbl[].sibling):
    vtbl[].vtbl.sibling = fcQSqlTableModel_vtable_callback_sibling
  if not isNil(vtbl[].dropMimeData):
    vtbl[].vtbl.dropMimeData = fcQSqlTableModel_vtable_callback_dropMimeData
  if not isNil(vtbl[].itemData):
    vtbl[].vtbl.itemData = fcQSqlTableModel_vtable_callback_itemData
  if not isNil(vtbl[].setItemData):
    vtbl[].vtbl.setItemData = fcQSqlTableModel_vtable_callback_setItemData
  if not isNil(vtbl[].mimeTypes):
    vtbl[].vtbl.mimeTypes = fcQSqlTableModel_vtable_callback_mimeTypes
  if not isNil(vtbl[].mimeData):
    vtbl[].vtbl.mimeData = fcQSqlTableModel_vtable_callback_mimeData
  if not isNil(vtbl[].canDropMimeData):
    vtbl[].vtbl.canDropMimeData = fcQSqlTableModel_vtable_callback_canDropMimeData
  if not isNil(vtbl[].supportedDropActions):
    vtbl[].vtbl.supportedDropActions = fcQSqlTableModel_vtable_callback_supportedDropActions
  if not isNil(vtbl[].supportedDragActions):
    vtbl[].vtbl.supportedDragActions = fcQSqlTableModel_vtable_callback_supportedDragActions
  if not isNil(vtbl[].moveRows):
    vtbl[].vtbl.moveRows = fcQSqlTableModel_vtable_callback_moveRows
  if not isNil(vtbl[].moveColumns):
    vtbl[].vtbl.moveColumns = fcQSqlTableModel_vtable_callback_moveColumns
  if not isNil(vtbl[].buddy):
    vtbl[].vtbl.buddy = fcQSqlTableModel_vtable_callback_buddy
  if not isNil(vtbl[].match):
    vtbl[].vtbl.match = fcQSqlTableModel_vtable_callback_match
  if not isNil(vtbl[].span):
    vtbl[].vtbl.span = fcQSqlTableModel_vtable_callback_span
  if not isNil(vtbl[].multiData):
    vtbl[].vtbl.multiData = fcQSqlTableModel_vtable_callback_multiData
  if not isNil(vtbl[].resetInternalData):
    vtbl[].vtbl.resetInternalData = fcQSqlTableModel_vtable_callback_resetInternalData
  if not isNil(vtbl[].event):
    vtbl[].vtbl.event = fcQSqlTableModel_vtable_callback_event
  if not isNil(vtbl[].eventFilter):
    vtbl[].vtbl.eventFilter = fcQSqlTableModel_vtable_callback_eventFilter
  if not isNil(vtbl[].timerEvent):
    vtbl[].vtbl.timerEvent = fcQSqlTableModel_vtable_callback_timerEvent
  if not isNil(vtbl[].childEvent):
    vtbl[].vtbl.childEvent = fcQSqlTableModel_vtable_callback_childEvent
  if not isNil(vtbl[].customEvent):
    vtbl[].vtbl.customEvent = fcQSqlTableModel_vtable_callback_customEvent
  if not isNil(vtbl[].connectNotify):
    vtbl[].vtbl.connectNotify = fcQSqlTableModel_vtable_callback_connectNotify
  if not isNil(vtbl[].disconnectNotify):
    vtbl[].vtbl.disconnectNotify = fcQSqlTableModel_vtable_callback_disconnectNotify
  let tmp = gen_qsqltablemodel_types.QSqlTableModel(h: fcQSqlTableModel_new3(addr(vtbl[].vtbl), csize_t(sizeof(pointer)), parent.h, db.h), owned: true)
  fcQSqlTableModel_vdata(tmp.h)[] = addr(vtbl[])
  tmp
const cQSqlTableModel_mvtbl = cQSqlTableModelVTable(
  destructor: proc(self: pointer) {.cdecl.} =
    let inst = cast[ptr typeof(VirtualQSqlTableModel()[])](self.fcQSqlTableModel_vdata()[])
    inst[].h = nil
    inst[].owned = false,

  metaObject: fcQSqlTableModel_method_callback_metaObject,
  metacast: fcQSqlTableModel_method_callback_metacast,
  metacall: fcQSqlTableModel_method_callback_metacall,
  setTable: fcQSqlTableModel_method_callback_setTable,
  flags: fcQSqlTableModel_method_callback_flags,
  data: fcQSqlTableModel_method_callback_data,
  setData: fcQSqlTableModel_method_callback_setData,
  clearItemData: fcQSqlTableModel_method_callback_clearItemData,
  headerData: fcQSqlTableModel_method_callback_headerData,
  clear: fcQSqlTableModel_method_callback_clear,
  setEditStrategy: fcQSqlTableModel_method_callback_setEditStrategy,
  sort: fcQSqlTableModel_method_callback_sort,
  setSort: fcQSqlTableModel_method_callback_setSort,
  setFilter: fcQSqlTableModel_method_callback_setFilter,
  rowCount: fcQSqlTableModel_method_callback_rowCount,
  removeColumns: fcQSqlTableModel_method_callback_removeColumns,
  removeRows: fcQSqlTableModel_method_callback_removeRows,
  insertRows: fcQSqlTableModel_method_callback_insertRows,
  revertRow: fcQSqlTableModel_method_callback_revertRow,
  select: fcQSqlTableModel_method_callback_select,
  selectRow: fcQSqlTableModel_method_callback_selectRow,
  submit: fcQSqlTableModel_method_callback_submit,
  revert: fcQSqlTableModel_method_callback_revert,
  updateRowInTable: fcQSqlTableModel_method_callback_updateRowInTable,
  insertRowIntoTable: fcQSqlTableModel_method_callback_insertRowIntoTable,
  deleteRowFromTable: fcQSqlTableModel_method_callback_deleteRowFromTable,
  orderByClause: fcQSqlTableModel_method_callback_orderByClause,
  selectStatement: fcQSqlTableModel_method_callback_selectStatement,
  indexInQuery: fcQSqlTableModel_method_callback_indexInQuery,
  columnCount: fcQSqlTableModel_method_callback_columnCount,
  setHeaderData: fcQSqlTableModel_method_callback_setHeaderData,
  insertColumns: fcQSqlTableModel_method_callback_insertColumns,
  fetchMore: fcQSqlTableModel_method_callback_fetchMore,
  canFetchMore: fcQSqlTableModel_method_callback_canFetchMore,
  roleNames: fcQSqlTableModel_method_callback_roleNames,
  queryChange: fcQSqlTableModel_method_callback_queryChange,
  index: fcQSqlTableModel_method_callback_index,
  sibling: fcQSqlTableModel_method_callback_sibling,
  dropMimeData: fcQSqlTableModel_method_callback_dropMimeData,
  itemData: fcQSqlTableModel_method_callback_itemData,
  setItemData: fcQSqlTableModel_method_callback_setItemData,
  mimeTypes: fcQSqlTableModel_method_callback_mimeTypes,
  mimeData: fcQSqlTableModel_method_callback_mimeData,
  canDropMimeData: fcQSqlTableModel_method_callback_canDropMimeData,
  supportedDropActions: fcQSqlTableModel_method_callback_supportedDropActions,
  supportedDragActions: fcQSqlTableModel_method_callback_supportedDragActions,
  moveRows: fcQSqlTableModel_method_callback_moveRows,
  moveColumns: fcQSqlTableModel_method_callback_moveColumns,
  buddy: fcQSqlTableModel_method_callback_buddy,
  match: fcQSqlTableModel_method_callback_match,
  span: fcQSqlTableModel_method_callback_span,
  multiData: fcQSqlTableModel_method_callback_multiData,
  resetInternalData: fcQSqlTableModel_method_callback_resetInternalData,
  event: fcQSqlTableModel_method_callback_event,
  eventFilter: fcQSqlTableModel_method_callback_eventFilter,
  timerEvent: fcQSqlTableModel_method_callback_timerEvent,
  childEvent: fcQSqlTableModel_method_callback_childEvent,
  customEvent: fcQSqlTableModel_method_callback_customEvent,
  connectNotify: fcQSqlTableModel_method_callback_connectNotify,
  disconnectNotify: fcQSqlTableModel_method_callback_disconnectNotify,
)
proc create*(T: type gen_qsqltablemodel_types.QSqlTableModel,
    inst: VirtualQSqlTableModel) =
  if inst[].h != nil: delete(move(inst[]))
  inst[].h = fcQSqlTableModel_new(addr(cQSqlTableModel_mvtbl), csize_t(sizeof(pointer)))
  fcQSqlTableModel_vdata(inst[].h)[] = addr inst[]
  inst[].owned = true

proc create*(T: type gen_qsqltablemodel_types.QSqlTableModel,
    parent: gen_qobject_types.QObject,
    inst: VirtualQSqlTableModel) =
  if inst[].h != nil: delete(move(inst[]))
  inst[].h = fcQSqlTableModel_new2(addr(cQSqlTableModel_mvtbl), csize_t(sizeof(pointer)), parent.h)
  fcQSqlTableModel_vdata(inst[].h)[] = addr inst[]
  inst[].owned = true

proc create*(T: type gen_qsqltablemodel_types.QSqlTableModel,
    parent: gen_qobject_types.QObject, db: gen_qsqldatabase_types.QSqlDatabase,
    inst: VirtualQSqlTableModel) =
  if inst[].h != nil: delete(move(inst[]))
  inst[].h = fcQSqlTableModel_new3(addr(cQSqlTableModel_mvtbl), csize_t(sizeof(pointer)), parent.h, db.h)
  fcQSqlTableModel_vdata(inst[].h)[] = addr inst[]
  inst[].owned = true

proc staticMetaObject*(_: type gen_qsqltablemodel_types.QSqlTableModel): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQSqlTableModel_staticMetaObject())
