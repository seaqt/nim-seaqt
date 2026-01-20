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


type QSqlRelationalTableModelJoinModeEnum* = distinct cint
template InnerJoin*(_: type QSqlRelationalTableModelJoinModeEnum): untyped = 0
template LeftJoin*(_: type QSqlRelationalTableModelJoinModeEnum): untyped = 1


import ./gen_qsqlrelationaltablemodel_types
export gen_qsqlrelationaltablemodel_types

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
  ./gen_qsqlrecord_types,
  ./gen_qsqltablemodel,
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
  gen_qsqlrecord_types,
  gen_qsqltablemodel

type cQSqlRelation*{.exportc: "QSqlRelation", incompleteStruct.} = object
type cQSqlRelationalTableModel*{.exportc: "QSqlRelationalTableModel", incompleteStruct.} = object

proc fcQSqlRelation_swap(self: pointer, other: pointer): void {.importc: "QSqlRelation_swap".}
proc fcQSqlRelation_tableName(self: pointer): struct_seaqt_string {.importc: "QSqlRelation_tableName".}
proc fcQSqlRelation_indexColumn(self: pointer): struct_seaqt_string {.importc: "QSqlRelation_indexColumn".}
proc fcQSqlRelation_displayColumn(self: pointer): struct_seaqt_string {.importc: "QSqlRelation_displayColumn".}
proc fcQSqlRelation_isValid(self: pointer): bool {.importc: "QSqlRelation_isValid".}
proc fcQSqlRelation_operatorAssign(self: pointer, param1: pointer): void {.importc: "QSqlRelation_operatorAssign".}
proc fcQSqlRelation_new(): ptr cQSqlRelation {.importc: "QSqlRelation_new".}
proc fcQSqlRelation_new2(aTableName: struct_seaqt_string, indexCol: struct_seaqt_string, displayCol: struct_seaqt_string): ptr cQSqlRelation {.importc: "QSqlRelation_new2".}
proc fcQSqlRelation_new3(param1: pointer): ptr cQSqlRelation {.importc: "QSqlRelation_new3".}
proc fcQSqlRelationalTableModel_metaObject(self: pointer): pointer {.importc: "QSqlRelationalTableModel_metaObject".}
proc fcQSqlRelationalTableModel_metacast(self: pointer, param1: cstring): pointer {.importc: "QSqlRelationalTableModel_metacast".}
proc fcQSqlRelationalTableModel_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.importc: "QSqlRelationalTableModel_metacall".}
proc fcQSqlRelationalTableModel_tr(s: cstring): struct_seaqt_string {.importc: "QSqlRelationalTableModel_tr".}
proc fcQSqlRelationalTableModel_trUtf8(s: cstring): struct_seaqt_string {.importc: "QSqlRelationalTableModel_trUtf8".}
proc fcQSqlRelationalTableModel_data(self: pointer, item: pointer, role: cint): pointer {.importc: "QSqlRelationalTableModel_data".}
proc fcQSqlRelationalTableModel_setData(self: pointer, item: pointer, value: pointer, role: cint): bool {.importc: "QSqlRelationalTableModel_setData".}
proc fcQSqlRelationalTableModel_removeColumns(self: pointer, column: cint, count: cint, parent: pointer): bool {.importc: "QSqlRelationalTableModel_removeColumns".}
proc fcQSqlRelationalTableModel_clear(self: pointer): void {.importc: "QSqlRelationalTableModel_clear".}
proc fcQSqlRelationalTableModel_select(self: pointer): bool {.importc: "QSqlRelationalTableModel_select".}
proc fcQSqlRelationalTableModel_setTable(self: pointer, tableName: struct_seaqt_string): void {.importc: "QSqlRelationalTableModel_setTable".}
proc fcQSqlRelationalTableModel_setRelation(self: pointer, column: cint, relation: pointer): void {.importc: "QSqlRelationalTableModel_setRelation".}
proc fcQSqlRelationalTableModel_relation(self: pointer, column: cint): pointer {.importc: "QSqlRelationalTableModel_relation".}
proc fcQSqlRelationalTableModel_relationModel(self: pointer, column: cint): pointer {.importc: "QSqlRelationalTableModel_relationModel".}
proc fcQSqlRelationalTableModel_setJoinMode(self: pointer, joinMode: cint): void {.importc: "QSqlRelationalTableModel_setJoinMode".}
proc fcQSqlRelationalTableModel_revertRow(self: pointer, row: cint): void {.importc: "QSqlRelationalTableModel_revertRow".}
proc fcQSqlRelationalTableModel_tr2(s: cstring, c: cstring): struct_seaqt_string {.importc: "QSqlRelationalTableModel_tr2".}
proc fcQSqlRelationalTableModel_tr3(s: cstring, c: cstring, n: cint): struct_seaqt_string {.importc: "QSqlRelationalTableModel_tr3".}
proc fcQSqlRelationalTableModel_trUtf82(s: cstring, c: cstring): struct_seaqt_string {.importc: "QSqlRelationalTableModel_trUtf82".}
proc fcQSqlRelationalTableModel_trUtf83(s: cstring, c: cstring, n: cint): struct_seaqt_string {.importc: "QSqlRelationalTableModel_trUtf83".}
proc fcQSqlRelationalTableModel_vdata(self: pointer): ptr pointer {.importc: "QSqlRelationalTableModel_vdata".}
proc fvdata_cQSqlRelationalTableModel(self: pointer): pointer {.importc: "vdata_QSqlRelationalTableModel".}

type cQSqlRelationalTableModelVTable {.pure.} = object
  destructor*: proc(self: pointer) {.cdecl, raises:[], gcsafe.}
  metaObject*: proc(self: pointer): pointer {.cdecl, raises: [], gcsafe.}
  metacast*: proc(self: pointer, param1: cstring): pointer {.cdecl, raises: [], gcsafe.}
  metacall*: proc(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.cdecl, raises: [], gcsafe.}
  data*: proc(self: pointer, item: pointer, role: cint): pointer {.cdecl, raises: [], gcsafe.}
  setData*: proc(self: pointer, item: pointer, value: pointer, role: cint): bool {.cdecl, raises: [], gcsafe.}
  removeColumns*: proc(self: pointer, column: cint, count: cint, parent: pointer): bool {.cdecl, raises: [], gcsafe.}
  clear*: proc(self: pointer): void {.cdecl, raises: [], gcsafe.}
  select*: proc(self: pointer): bool {.cdecl, raises: [], gcsafe.}
  setTable*: proc(self: pointer, tableName: struct_seaqt_string): void {.cdecl, raises: [], gcsafe.}
  setRelation*: proc(self: pointer, column: cint, relation: pointer): void {.cdecl, raises: [], gcsafe.}
  relationModel*: proc(self: pointer, column: cint): pointer {.cdecl, raises: [], gcsafe.}
  revertRow*: proc(self: pointer, row: cint): void {.cdecl, raises: [], gcsafe.}
  selectStatement*: proc(self: pointer): struct_seaqt_string {.cdecl, raises: [], gcsafe.}
  updateRowInTable*: proc(self: pointer, row: cint, values: pointer): bool {.cdecl, raises: [], gcsafe.}
  insertRowIntoTable*: proc(self: pointer, values: pointer): bool {.cdecl, raises: [], gcsafe.}
  orderByClause*: proc(self: pointer): struct_seaqt_string {.cdecl, raises: [], gcsafe.}
  flags*: proc(self: pointer, index: pointer): cint {.cdecl, raises: [], gcsafe.}
  headerData*: proc(self: pointer, section: cint, orientation: cint, role: cint): pointer {.cdecl, raises: [], gcsafe.}
  setEditStrategy*: proc(self: pointer, strategy: cint): void {.cdecl, raises: [], gcsafe.}
  sort*: proc(self: pointer, column: cint, order: cint): void {.cdecl, raises: [], gcsafe.}
  setSort*: proc(self: pointer, column: cint, order: cint): void {.cdecl, raises: [], gcsafe.}
  setFilter*: proc(self: pointer, filter: struct_seaqt_string): void {.cdecl, raises: [], gcsafe.}
  rowCount*: proc(self: pointer, parent: pointer): cint {.cdecl, raises: [], gcsafe.}
  removeRows*: proc(self: pointer, row: cint, count: cint, parent: pointer): bool {.cdecl, raises: [], gcsafe.}
  insertRows*: proc(self: pointer, row: cint, count: cint, parent: pointer): bool {.cdecl, raises: [], gcsafe.}
  selectRow*: proc(self: pointer, row: cint): bool {.cdecl, raises: [], gcsafe.}
  submit*: proc(self: pointer): bool {.cdecl, raises: [], gcsafe.}
  revert*: proc(self: pointer): void {.cdecl, raises: [], gcsafe.}
  deleteRowFromTable*: proc(self: pointer, row: cint): bool {.cdecl, raises: [], gcsafe.}
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
  event*: proc(self: pointer, event: pointer): bool {.cdecl, raises: [], gcsafe.}
  eventFilter*: proc(self: pointer, watched: pointer, event: pointer): bool {.cdecl, raises: [], gcsafe.}
  timerEvent*: proc(self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  childEvent*: proc(self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  customEvent*: proc(self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  connectNotify*: proc(self: pointer, signal: pointer): void {.cdecl, raises: [], gcsafe.}
  disconnectNotify*: proc(self: pointer, signal: pointer): void {.cdecl, raises: [], gcsafe.}
proc fcQSqlRelationalTableModel_virtualbase_metaObject(self: pointer): pointer {.importc: "QSqlRelationalTableModel_virtualbase_metaObject".}
proc fcQSqlRelationalTableModel_virtualbase_metacast(self: pointer, param1: cstring): pointer {.importc: "QSqlRelationalTableModel_virtualbase_metacast".}
proc fcQSqlRelationalTableModel_virtualbase_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.importc: "QSqlRelationalTableModel_virtualbase_metacall".}
proc fcQSqlRelationalTableModel_virtualbase_data(self: pointer, item: pointer, role: cint): pointer {.importc: "QSqlRelationalTableModel_virtualbase_data".}
proc fcQSqlRelationalTableModel_virtualbase_setData(self: pointer, item: pointer, value: pointer, role: cint): bool {.importc: "QSqlRelationalTableModel_virtualbase_setData".}
proc fcQSqlRelationalTableModel_virtualbase_removeColumns(self: pointer, column: cint, count: cint, parent: pointer): bool {.importc: "QSqlRelationalTableModel_virtualbase_removeColumns".}
proc fcQSqlRelationalTableModel_virtualbase_clear(self: pointer): void {.importc: "QSqlRelationalTableModel_virtualbase_clear".}
proc fcQSqlRelationalTableModel_virtualbase_select(self: pointer): bool {.importc: "QSqlRelationalTableModel_virtualbase_select".}
proc fcQSqlRelationalTableModel_virtualbase_setTable(self: pointer, tableName: struct_seaqt_string): void {.importc: "QSqlRelationalTableModel_virtualbase_setTable".}
proc fcQSqlRelationalTableModel_virtualbase_setRelation(self: pointer, column: cint, relation: pointer): void {.importc: "QSqlRelationalTableModel_virtualbase_setRelation".}
proc fcQSqlRelationalTableModel_virtualbase_relationModel(self: pointer, column: cint): pointer {.importc: "QSqlRelationalTableModel_virtualbase_relationModel".}
proc fcQSqlRelationalTableModel_virtualbase_revertRow(self: pointer, row: cint): void {.importc: "QSqlRelationalTableModel_virtualbase_revertRow".}
proc fcQSqlRelationalTableModel_virtualbase_selectStatement(self: pointer): struct_seaqt_string {.importc: "QSqlRelationalTableModel_virtualbase_selectStatement".}
proc fcQSqlRelationalTableModel_virtualbase_updateRowInTable(self: pointer, row: cint, values: pointer): bool {.importc: "QSqlRelationalTableModel_virtualbase_updateRowInTable".}
proc fcQSqlRelationalTableModel_virtualbase_insertRowIntoTable(self: pointer, values: pointer): bool {.importc: "QSqlRelationalTableModel_virtualbase_insertRowIntoTable".}
proc fcQSqlRelationalTableModel_virtualbase_orderByClause(self: pointer): struct_seaqt_string {.importc: "QSqlRelationalTableModel_virtualbase_orderByClause".}
proc fcQSqlRelationalTableModel_virtualbase_flags(self: pointer, index: pointer): cint {.importc: "QSqlRelationalTableModel_virtualbase_flags".}
proc fcQSqlRelationalTableModel_virtualbase_headerData(self: pointer, section: cint, orientation: cint, role: cint): pointer {.importc: "QSqlRelationalTableModel_virtualbase_headerData".}
proc fcQSqlRelationalTableModel_virtualbase_setEditStrategy(self: pointer, strategy: cint): void {.importc: "QSqlRelationalTableModel_virtualbase_setEditStrategy".}
proc fcQSqlRelationalTableModel_virtualbase_sort(self: pointer, column: cint, order: cint): void {.importc: "QSqlRelationalTableModel_virtualbase_sort".}
proc fcQSqlRelationalTableModel_virtualbase_setSort(self: pointer, column: cint, order: cint): void {.importc: "QSqlRelationalTableModel_virtualbase_setSort".}
proc fcQSqlRelationalTableModel_virtualbase_setFilter(self: pointer, filter: struct_seaqt_string): void {.importc: "QSqlRelationalTableModel_virtualbase_setFilter".}
proc fcQSqlRelationalTableModel_virtualbase_rowCount(self: pointer, parent: pointer): cint {.importc: "QSqlRelationalTableModel_virtualbase_rowCount".}
proc fcQSqlRelationalTableModel_virtualbase_removeRows(self: pointer, row: cint, count: cint, parent: pointer): bool {.importc: "QSqlRelationalTableModel_virtualbase_removeRows".}
proc fcQSqlRelationalTableModel_virtualbase_insertRows(self: pointer, row: cint, count: cint, parent: pointer): bool {.importc: "QSqlRelationalTableModel_virtualbase_insertRows".}
proc fcQSqlRelationalTableModel_virtualbase_selectRow(self: pointer, row: cint): bool {.importc: "QSqlRelationalTableModel_virtualbase_selectRow".}
proc fcQSqlRelationalTableModel_virtualbase_submit(self: pointer): bool {.importc: "QSqlRelationalTableModel_virtualbase_submit".}
proc fcQSqlRelationalTableModel_virtualbase_revert(self: pointer): void {.importc: "QSqlRelationalTableModel_virtualbase_revert".}
proc fcQSqlRelationalTableModel_virtualbase_deleteRowFromTable(self: pointer, row: cint): bool {.importc: "QSqlRelationalTableModel_virtualbase_deleteRowFromTable".}
proc fcQSqlRelationalTableModel_virtualbase_indexInQuery(self: pointer, item: pointer): pointer {.importc: "QSqlRelationalTableModel_virtualbase_indexInQuery".}
proc fcQSqlRelationalTableModel_virtualbase_columnCount(self: pointer, parent: pointer): cint {.importc: "QSqlRelationalTableModel_virtualbase_columnCount".}
proc fcQSqlRelationalTableModel_virtualbase_setHeaderData(self: pointer, section: cint, orientation: cint, value: pointer, role: cint): bool {.importc: "QSqlRelationalTableModel_virtualbase_setHeaderData".}
proc fcQSqlRelationalTableModel_virtualbase_insertColumns(self: pointer, column: cint, count: cint, parent: pointer): bool {.importc: "QSqlRelationalTableModel_virtualbase_insertColumns".}
proc fcQSqlRelationalTableModel_virtualbase_fetchMore(self: pointer, parent: pointer): void {.importc: "QSqlRelationalTableModel_virtualbase_fetchMore".}
proc fcQSqlRelationalTableModel_virtualbase_canFetchMore(self: pointer, parent: pointer): bool {.importc: "QSqlRelationalTableModel_virtualbase_canFetchMore".}
proc fcQSqlRelationalTableModel_virtualbase_roleNames(self: pointer): struct_seaqt_map {.importc: "QSqlRelationalTableModel_virtualbase_roleNames".}
proc fcQSqlRelationalTableModel_virtualbase_queryChange(self: pointer): void {.importc: "QSqlRelationalTableModel_virtualbase_queryChange".}
proc fcQSqlRelationalTableModel_virtualbase_index(self: pointer, row: cint, column: cint, parent: pointer): pointer {.importc: "QSqlRelationalTableModel_virtualbase_index".}
proc fcQSqlRelationalTableModel_virtualbase_sibling(self: pointer, row: cint, column: cint, idx: pointer): pointer {.importc: "QSqlRelationalTableModel_virtualbase_sibling".}
proc fcQSqlRelationalTableModel_virtualbase_dropMimeData(self: pointer, data: pointer, action: cint, row: cint, column: cint, parent: pointer): bool {.importc: "QSqlRelationalTableModel_virtualbase_dropMimeData".}
proc fcQSqlRelationalTableModel_virtualbase_itemData(self: pointer, index: pointer): struct_seaqt_map {.importc: "QSqlRelationalTableModel_virtualbase_itemData".}
proc fcQSqlRelationalTableModel_virtualbase_setItemData(self: pointer, index: pointer, roles: struct_seaqt_map): bool {.importc: "QSqlRelationalTableModel_virtualbase_setItemData".}
proc fcQSqlRelationalTableModel_virtualbase_mimeTypes(self: pointer): struct_seaqt_array {.importc: "QSqlRelationalTableModel_virtualbase_mimeTypes".}
proc fcQSqlRelationalTableModel_virtualbase_mimeData(self: pointer, indexes: struct_seaqt_array): pointer {.importc: "QSqlRelationalTableModel_virtualbase_mimeData".}
proc fcQSqlRelationalTableModel_virtualbase_canDropMimeData(self: pointer, data: pointer, action: cint, row: cint, column: cint, parent: pointer): bool {.importc: "QSqlRelationalTableModel_virtualbase_canDropMimeData".}
proc fcQSqlRelationalTableModel_virtualbase_supportedDropActions(self: pointer): cint {.importc: "QSqlRelationalTableModel_virtualbase_supportedDropActions".}
proc fcQSqlRelationalTableModel_virtualbase_supportedDragActions(self: pointer): cint {.importc: "QSqlRelationalTableModel_virtualbase_supportedDragActions".}
proc fcQSqlRelationalTableModel_virtualbase_moveRows(self: pointer, sourceParent: pointer, sourceRow: cint, count: cint, destinationParent: pointer, destinationChild: cint): bool {.importc: "QSqlRelationalTableModel_virtualbase_moveRows".}
proc fcQSqlRelationalTableModel_virtualbase_moveColumns(self: pointer, sourceParent: pointer, sourceColumn: cint, count: cint, destinationParent: pointer, destinationChild: cint): bool {.importc: "QSqlRelationalTableModel_virtualbase_moveColumns".}
proc fcQSqlRelationalTableModel_virtualbase_buddy(self: pointer, index: pointer): pointer {.importc: "QSqlRelationalTableModel_virtualbase_buddy".}
proc fcQSqlRelationalTableModel_virtualbase_match(self: pointer, start: pointer, role: cint, value: pointer, hits: cint, flags: cint): struct_seaqt_array {.importc: "QSqlRelationalTableModel_virtualbase_match".}
proc fcQSqlRelationalTableModel_virtualbase_span(self: pointer, index: pointer): pointer {.importc: "QSqlRelationalTableModel_virtualbase_span".}
proc fcQSqlRelationalTableModel_virtualbase_event(self: pointer, event: pointer): bool {.importc: "QSqlRelationalTableModel_virtualbase_event".}
proc fcQSqlRelationalTableModel_virtualbase_eventFilter(self: pointer, watched: pointer, event: pointer): bool {.importc: "QSqlRelationalTableModel_virtualbase_eventFilter".}
proc fcQSqlRelationalTableModel_virtualbase_timerEvent(self: pointer, event: pointer): void {.importc: "QSqlRelationalTableModel_virtualbase_timerEvent".}
proc fcQSqlRelationalTableModel_virtualbase_childEvent(self: pointer, event: pointer): void {.importc: "QSqlRelationalTableModel_virtualbase_childEvent".}
proc fcQSqlRelationalTableModel_virtualbase_customEvent(self: pointer, event: pointer): void {.importc: "QSqlRelationalTableModel_virtualbase_customEvent".}
proc fcQSqlRelationalTableModel_virtualbase_connectNotify(self: pointer, signal: pointer): void {.importc: "QSqlRelationalTableModel_virtualbase_connectNotify".}
proc fcQSqlRelationalTableModel_virtualbase_disconnectNotify(self: pointer, signal: pointer): void {.importc: "QSqlRelationalTableModel_virtualbase_disconnectNotify".}
proc fcQSqlRelationalTableModel_protectedbase_setPrimaryKey(self: pointer, key: pointer): void {.importc: "QSqlRelationalTableModel_protectedbase_setPrimaryKey".}
proc fcQSqlRelationalTableModel_protectedbase_setQuery(self: pointer, query: pointer): void {.importc: "QSqlRelationalTableModel_protectedbase_setQuery".}
proc fcQSqlRelationalTableModel_protectedbase_primaryValues(self: pointer, row: cint): pointer {.importc: "QSqlRelationalTableModel_protectedbase_primaryValues".}
proc fcQSqlRelationalTableModel_protectedbase_beginInsertRows(self: pointer, parent: pointer, first: cint, last: cint): void {.importc: "QSqlRelationalTableModel_protectedbase_beginInsertRows".}
proc fcQSqlRelationalTableModel_protectedbase_endInsertRows(self: pointer): void {.importc: "QSqlRelationalTableModel_protectedbase_endInsertRows".}
proc fcQSqlRelationalTableModel_protectedbase_beginRemoveRows(self: pointer, parent: pointer, first: cint, last: cint): void {.importc: "QSqlRelationalTableModel_protectedbase_beginRemoveRows".}
proc fcQSqlRelationalTableModel_protectedbase_endRemoveRows(self: pointer): void {.importc: "QSqlRelationalTableModel_protectedbase_endRemoveRows".}
proc fcQSqlRelationalTableModel_protectedbase_beginInsertColumns(self: pointer, parent: pointer, first: cint, last: cint): void {.importc: "QSqlRelationalTableModel_protectedbase_beginInsertColumns".}
proc fcQSqlRelationalTableModel_protectedbase_endInsertColumns(self: pointer): void {.importc: "QSqlRelationalTableModel_protectedbase_endInsertColumns".}
proc fcQSqlRelationalTableModel_protectedbase_beginRemoveColumns(self: pointer, parent: pointer, first: cint, last: cint): void {.importc: "QSqlRelationalTableModel_protectedbase_beginRemoveColumns".}
proc fcQSqlRelationalTableModel_protectedbase_endRemoveColumns(self: pointer): void {.importc: "QSqlRelationalTableModel_protectedbase_endRemoveColumns".}
proc fcQSqlRelationalTableModel_protectedbase_beginResetModel(self: pointer): void {.importc: "QSqlRelationalTableModel_protectedbase_beginResetModel".}
proc fcQSqlRelationalTableModel_protectedbase_endResetModel(self: pointer): void {.importc: "QSqlRelationalTableModel_protectedbase_endResetModel".}
proc fcQSqlRelationalTableModel_protectedbase_setLastError(self: pointer, error: pointer): void {.importc: "QSqlRelationalTableModel_protectedbase_setLastError".}
proc fcQSqlRelationalTableModel_protectedbase_resetInternalData(self: pointer): void {.importc: "QSqlRelationalTableModel_protectedbase_resetInternalData".}
proc fcQSqlRelationalTableModel_protectedbase_createIndex(self: pointer, row: cint, column: cint): pointer {.importc: "QSqlRelationalTableModel_protectedbase_createIndex".}
proc fcQSqlRelationalTableModel_protectedbase_encodeData(self: pointer, indexes: struct_seaqt_array, stream: pointer): void {.importc: "QSqlRelationalTableModel_protectedbase_encodeData".}
proc fcQSqlRelationalTableModel_protectedbase_decodeData(self: pointer, row: cint, column: cint, parent: pointer, stream: pointer): bool {.importc: "QSqlRelationalTableModel_protectedbase_decodeData".}
proc fcQSqlRelationalTableModel_protectedbase_beginMoveRows(self: pointer, sourceParent: pointer, sourceFirst: cint, sourceLast: cint, destinationParent: pointer, destinationRow: cint): bool {.importc: "QSqlRelationalTableModel_protectedbase_beginMoveRows".}
proc fcQSqlRelationalTableModel_protectedbase_endMoveRows(self: pointer): void {.importc: "QSqlRelationalTableModel_protectedbase_endMoveRows".}
proc fcQSqlRelationalTableModel_protectedbase_beginMoveColumns(self: pointer, sourceParent: pointer, sourceFirst: cint, sourceLast: cint, destinationParent: pointer, destinationColumn: cint): bool {.importc: "QSqlRelationalTableModel_protectedbase_beginMoveColumns".}
proc fcQSqlRelationalTableModel_protectedbase_endMoveColumns(self: pointer): void {.importc: "QSqlRelationalTableModel_protectedbase_endMoveColumns".}
proc fcQSqlRelationalTableModel_protectedbase_changePersistentIndex(self: pointer, fromVal: pointer, to: pointer): void {.importc: "QSqlRelationalTableModel_protectedbase_changePersistentIndex".}
proc fcQSqlRelationalTableModel_protectedbase_changePersistentIndexList(self: pointer, fromVal: struct_seaqt_array, to: struct_seaqt_array): void {.importc: "QSqlRelationalTableModel_protectedbase_changePersistentIndexList".}
proc fcQSqlRelationalTableModel_protectedbase_persistentIndexList(self: pointer): struct_seaqt_array {.importc: "QSqlRelationalTableModel_protectedbase_persistentIndexList".}
proc fcQSqlRelationalTableModel_protectedbase_sender(self: pointer): pointer {.importc: "QSqlRelationalTableModel_protectedbase_sender".}
proc fcQSqlRelationalTableModel_protectedbase_senderSignalIndex(self: pointer): cint {.importc: "QSqlRelationalTableModel_protectedbase_senderSignalIndex".}
proc fcQSqlRelationalTableModel_protectedbase_receivers(self: pointer, signal: cstring): cint {.importc: "QSqlRelationalTableModel_protectedbase_receivers".}
proc fcQSqlRelationalTableModel_protectedbase_isSignalConnected(self: pointer, signal: pointer): bool {.importc: "QSqlRelationalTableModel_protectedbase_isSignalConnected".}
proc fcQSqlRelationalTableModel_new(vtbl: pointer, vdata: csize_t): ptr cQSqlRelationalTableModel {.importc: "QSqlRelationalTableModel_new".}
proc fcQSqlRelationalTableModel_new2(vtbl: pointer, vdata: csize_t, parent: pointer): ptr cQSqlRelationalTableModel {.importc: "QSqlRelationalTableModel_new2".}
proc fcQSqlRelationalTableModel_new3(vtbl: pointer, vdata: csize_t, parent: pointer, db: pointer): ptr cQSqlRelationalTableModel {.importc: "QSqlRelationalTableModel_new3".}
proc fcQSqlRelationalTableModel_staticMetaObject(): pointer {.importc: "QSqlRelationalTableModel_staticMetaObject".}

proc swap*(self: gen_qsqlrelationaltablemodel_types.QSqlRelation, other: gen_qsqlrelationaltablemodel_types.QSqlRelation): void =
  fcQSqlRelation_swap(self.h, other.h)

proc tableName*(self: gen_qsqlrelationaltablemodel_types.QSqlRelation): string =
  let v_ms = fcQSqlRelation_tableName(self.h)
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

proc indexColumn*(self: gen_qsqlrelationaltablemodel_types.QSqlRelation): string =
  let v_ms = fcQSqlRelation_indexColumn(self.h)
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

proc displayColumn*(self: gen_qsqlrelationaltablemodel_types.QSqlRelation): string =
  let v_ms = fcQSqlRelation_displayColumn(self.h)
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

proc isValid*(self: gen_qsqlrelationaltablemodel_types.QSqlRelation): bool =
  fcQSqlRelation_isValid(self.h)

proc operatorAssign*(self: gen_qsqlrelationaltablemodel_types.QSqlRelation, param1: gen_qsqlrelationaltablemodel_types.QSqlRelation): void =
  fcQSqlRelation_operatorAssign(self.h, param1.h)

proc create*(T: type gen_qsqlrelationaltablemodel_types.QSqlRelation): gen_qsqlrelationaltablemodel_types.QSqlRelation =
  let tmp = gen_qsqlrelationaltablemodel_types.QSqlRelation(h: fcQSqlRelation_new(), owned: true)
  tmp
proc create*(T: type gen_qsqlrelationaltablemodel_types.QSqlRelation,
    aTableName: openArray[char], indexCol: openArray[char], displayCol: openArray[char]): gen_qsqlrelationaltablemodel_types.QSqlRelation =
  let tmp = gen_qsqlrelationaltablemodel_types.QSqlRelation(h: fcQSqlRelation_new2(struct_seaqt_string(data: if len(aTableName) > 0: addr aTableName[0] else: nil, len: csize_t(len(aTableName))), struct_seaqt_string(data: if len(indexCol) > 0: addr indexCol[0] else: nil, len: csize_t(len(indexCol))), struct_seaqt_string(data: if len(displayCol) > 0: addr displayCol[0] else: nil, len: csize_t(len(displayCol)))), owned: true)
  tmp
proc create*(T: type gen_qsqlrelationaltablemodel_types.QSqlRelation,
    param1: gen_qsqlrelationaltablemodel_types.QSqlRelation): gen_qsqlrelationaltablemodel_types.QSqlRelation =
  let tmp = gen_qsqlrelationaltablemodel_types.QSqlRelation(h: fcQSqlRelation_new3(param1.h), owned: true)
  tmp
proc metaObject*(self: gen_qsqlrelationaltablemodel_types.QSqlRelationalTableModel): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQSqlRelationalTableModel_metaObject(self.h), owned: false)

proc metacast*(self: gen_qsqlrelationaltablemodel_types.QSqlRelationalTableModel, param1: cstring): pointer =
  fcQSqlRelationalTableModel_metacast(self.h, param1)

proc metacall*(self: gen_qsqlrelationaltablemodel_types.QSqlRelationalTableModel, param1: cint, param2: cint, param3: pointer): cint =
  fcQSqlRelationalTableModel_metacall(self.h, cint(param1), param2, param3)

proc tr*(_: type gen_qsqlrelationaltablemodel_types.QSqlRelationalTableModel, s: cstring): string =
  let v_ms = fcQSqlRelationalTableModel_tr(s)
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

proc trUtf8*(_: type gen_qsqlrelationaltablemodel_types.QSqlRelationalTableModel, s: cstring): string =
  let v_ms = fcQSqlRelationalTableModel_trUtf8(s)
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

proc data*(self: gen_qsqlrelationaltablemodel_types.QSqlRelationalTableModel, item: gen_qabstractitemmodel_types.QModelIndex, role: cint): gen_qvariant_types.QVariant =
  gen_qvariant_types.QVariant(h: fcQSqlRelationalTableModel_data(self.h, item.h, role), owned: true)

proc setData*(self: gen_qsqlrelationaltablemodel_types.QSqlRelationalTableModel, item: gen_qabstractitemmodel_types.QModelIndex, value: gen_qvariant_types.QVariant, role: cint): bool =
  fcQSqlRelationalTableModel_setData(self.h, item.h, value.h, role)

proc removeColumns*(self: gen_qsqlrelationaltablemodel_types.QSqlRelationalTableModel, column: cint, count: cint, parent: gen_qabstractitemmodel_types.QModelIndex): bool =
  fcQSqlRelationalTableModel_removeColumns(self.h, column, count, parent.h)

proc clear*(self: gen_qsqlrelationaltablemodel_types.QSqlRelationalTableModel): void =
  fcQSqlRelationalTableModel_clear(self.h)

proc select*(self: gen_qsqlrelationaltablemodel_types.QSqlRelationalTableModel): bool =
  fcQSqlRelationalTableModel_select(self.h)

proc setTable*(self: gen_qsqlrelationaltablemodel_types.QSqlRelationalTableModel, tableName: openArray[char]): void =
  fcQSqlRelationalTableModel_setTable(self.h, struct_seaqt_string(data: if len(tableName) > 0: addr tableName[0] else: nil, len: csize_t(len(tableName))))

proc setRelation*(self: gen_qsqlrelationaltablemodel_types.QSqlRelationalTableModel, column: cint, relation: gen_qsqlrelationaltablemodel_types.QSqlRelation): void =
  fcQSqlRelationalTableModel_setRelation(self.h, column, relation.h)

proc relation*(self: gen_qsqlrelationaltablemodel_types.QSqlRelationalTableModel, column: cint): gen_qsqlrelationaltablemodel_types.QSqlRelation =
  gen_qsqlrelationaltablemodel_types.QSqlRelation(h: fcQSqlRelationalTableModel_relation(self.h, column), owned: true)

proc relationModel*(self: gen_qsqlrelationaltablemodel_types.QSqlRelationalTableModel, column: cint): gen_qsqltablemodel_types.QSqlTableModel =
  gen_qsqltablemodel_types.QSqlTableModel(h: fcQSqlRelationalTableModel_relationModel(self.h, column), owned: false)

proc setJoinMode*(self: gen_qsqlrelationaltablemodel_types.QSqlRelationalTableModel, joinMode: cint): void =
  fcQSqlRelationalTableModel_setJoinMode(self.h, cint(joinMode))

proc revertRow*(self: gen_qsqlrelationaltablemodel_types.QSqlRelationalTableModel, row: cint): void =
  fcQSqlRelationalTableModel_revertRow(self.h, row)

proc tr*(_: type gen_qsqlrelationaltablemodel_types.QSqlRelationalTableModel, s: cstring, c: cstring): string =
  let v_ms = fcQSqlRelationalTableModel_tr2(s, c)
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

proc tr*(_: type gen_qsqlrelationaltablemodel_types.QSqlRelationalTableModel, s: cstring, c: cstring, n: cint): string =
  let v_ms = fcQSqlRelationalTableModel_tr3(s, c, n)
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

proc trUtf8*(_: type gen_qsqlrelationaltablemodel_types.QSqlRelationalTableModel, s: cstring, c: cstring): string =
  let v_ms = fcQSqlRelationalTableModel_trUtf82(s, c)
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

proc trUtf8*(_: type gen_qsqlrelationaltablemodel_types.QSqlRelationalTableModel, s: cstring, c: cstring, n: cint): string =
  let v_ms = fcQSqlRelationalTableModel_trUtf83(s, c, n)
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

type QSqlRelationalTableModelmetaObjectProc* = proc(self: QSqlRelationalTableModel): gen_qobjectdefs_types.QMetaObject {.raises: [], gcsafe.}
type QSqlRelationalTableModelmetacastProc* = proc(self: QSqlRelationalTableModel, param1: cstring): pointer {.raises: [], gcsafe.}
type QSqlRelationalTableModelmetacallProc* = proc(self: QSqlRelationalTableModel, param1: cint, param2: cint, param3: pointer): cint {.raises: [], gcsafe.}
type QSqlRelationalTableModeldataProc* = proc(self: QSqlRelationalTableModel, item: gen_qabstractitemmodel_types.QModelIndex, role: cint): gen_qvariant_types.QVariant {.raises: [], gcsafe.}
type QSqlRelationalTableModelsetDataProc* = proc(self: QSqlRelationalTableModel, item: gen_qabstractitemmodel_types.QModelIndex, value: gen_qvariant_types.QVariant, role: cint): bool {.raises: [], gcsafe.}
type QSqlRelationalTableModelremoveColumnsProc* = proc(self: QSqlRelationalTableModel, column: cint, count: cint, parent: gen_qabstractitemmodel_types.QModelIndex): bool {.raises: [], gcsafe.}
type QSqlRelationalTableModelclearProc* = proc(self: QSqlRelationalTableModel): void {.raises: [], gcsafe.}
type QSqlRelationalTableModelselectProc* = proc(self: QSqlRelationalTableModel): bool {.raises: [], gcsafe.}
type QSqlRelationalTableModelsetTableProc* = proc(self: QSqlRelationalTableModel, tableName: openArray[char]): void {.raises: [], gcsafe.}
type QSqlRelationalTableModelsetRelationProc* = proc(self: QSqlRelationalTableModel, column: cint, relation: gen_qsqlrelationaltablemodel_types.QSqlRelation): void {.raises: [], gcsafe.}
type QSqlRelationalTableModelrelationModelProc* = proc(self: QSqlRelationalTableModel, column: cint): gen_qsqltablemodel_types.QSqlTableModel {.raises: [], gcsafe.}
type QSqlRelationalTableModelrevertRowProc* = proc(self: QSqlRelationalTableModel, row: cint): void {.raises: [], gcsafe.}
type QSqlRelationalTableModelselectStatementProc* = proc(self: QSqlRelationalTableModel): string {.raises: [], gcsafe.}
type QSqlRelationalTableModelupdateRowInTableProc* = proc(self: QSqlRelationalTableModel, row: cint, values: gen_qsqlrecord_types.QSqlRecord): bool {.raises: [], gcsafe.}
type QSqlRelationalTableModelinsertRowIntoTableProc* = proc(self: QSqlRelationalTableModel, values: gen_qsqlrecord_types.QSqlRecord): bool {.raises: [], gcsafe.}
type QSqlRelationalTableModelorderByClauseProc* = proc(self: QSqlRelationalTableModel): string {.raises: [], gcsafe.}
type QSqlRelationalTableModelflagsProc* = proc(self: QSqlRelationalTableModel, index: gen_qabstractitemmodel_types.QModelIndex): cint {.raises: [], gcsafe.}
type QSqlRelationalTableModelheaderDataProc* = proc(self: QSqlRelationalTableModel, section: cint, orientation: cint, role: cint): gen_qvariant_types.QVariant {.raises: [], gcsafe.}
type QSqlRelationalTableModelsetEditStrategyProc* = proc(self: QSqlRelationalTableModel, strategy: cint): void {.raises: [], gcsafe.}
type QSqlRelationalTableModelsortProc* = proc(self: QSqlRelationalTableModel, column: cint, order: cint): void {.raises: [], gcsafe.}
type QSqlRelationalTableModelsetSortProc* = proc(self: QSqlRelationalTableModel, column: cint, order: cint): void {.raises: [], gcsafe.}
type QSqlRelationalTableModelsetFilterProc* = proc(self: QSqlRelationalTableModel, filter: openArray[char]): void {.raises: [], gcsafe.}
type QSqlRelationalTableModelrowCountProc* = proc(self: QSqlRelationalTableModel, parent: gen_qabstractitemmodel_types.QModelIndex): cint {.raises: [], gcsafe.}
type QSqlRelationalTableModelremoveRowsProc* = proc(self: QSqlRelationalTableModel, row: cint, count: cint, parent: gen_qabstractitemmodel_types.QModelIndex): bool {.raises: [], gcsafe.}
type QSqlRelationalTableModelinsertRowsProc* = proc(self: QSqlRelationalTableModel, row: cint, count: cint, parent: gen_qabstractitemmodel_types.QModelIndex): bool {.raises: [], gcsafe.}
type QSqlRelationalTableModelselectRowProc* = proc(self: QSqlRelationalTableModel, row: cint): bool {.raises: [], gcsafe.}
type QSqlRelationalTableModelsubmitProc* = proc(self: QSqlRelationalTableModel): bool {.raises: [], gcsafe.}
type QSqlRelationalTableModelrevertProc* = proc(self: QSqlRelationalTableModel): void {.raises: [], gcsafe.}
type QSqlRelationalTableModeldeleteRowFromTableProc* = proc(self: QSqlRelationalTableModel, row: cint): bool {.raises: [], gcsafe.}
type QSqlRelationalTableModelindexInQueryProc* = proc(self: QSqlRelationalTableModel, item: gen_qabstractitemmodel_types.QModelIndex): gen_qabstractitemmodel_types.QModelIndex {.raises: [], gcsafe.}
type QSqlRelationalTableModelcolumnCountProc* = proc(self: QSqlRelationalTableModel, parent: gen_qabstractitemmodel_types.QModelIndex): cint {.raises: [], gcsafe.}
type QSqlRelationalTableModelsetHeaderDataProc* = proc(self: QSqlRelationalTableModel, section: cint, orientation: cint, value: gen_qvariant_types.QVariant, role: cint): bool {.raises: [], gcsafe.}
type QSqlRelationalTableModelinsertColumnsProc* = proc(self: QSqlRelationalTableModel, column: cint, count: cint, parent: gen_qabstractitemmodel_types.QModelIndex): bool {.raises: [], gcsafe.}
type QSqlRelationalTableModelfetchMoreProc* = proc(self: QSqlRelationalTableModel, parent: gen_qabstractitemmodel_types.QModelIndex): void {.raises: [], gcsafe.}
type QSqlRelationalTableModelcanFetchMoreProc* = proc(self: QSqlRelationalTableModel, parent: gen_qabstractitemmodel_types.QModelIndex): bool {.raises: [], gcsafe.}
type QSqlRelationalTableModelroleNamesProc* = proc(self: QSqlRelationalTableModel): Table[cint,seq[byte]] {.raises: [], gcsafe.}
type QSqlRelationalTableModelqueryChangeProc* = proc(self: QSqlRelationalTableModel): void {.raises: [], gcsafe.}
type QSqlRelationalTableModelindexProc* = proc(self: QSqlRelationalTableModel, row: cint, column: cint, parent: gen_qabstractitemmodel_types.QModelIndex): gen_qabstractitemmodel_types.QModelIndex {.raises: [], gcsafe.}
type QSqlRelationalTableModelsiblingProc* = proc(self: QSqlRelationalTableModel, row: cint, column: cint, idx: gen_qabstractitemmodel_types.QModelIndex): gen_qabstractitemmodel_types.QModelIndex {.raises: [], gcsafe.}
type QSqlRelationalTableModeldropMimeDataProc* = proc(self: QSqlRelationalTableModel, data: gen_qmimedata_types.QMimeData, action: cint, row: cint, column: cint, parent: gen_qabstractitemmodel_types.QModelIndex): bool {.raises: [], gcsafe.}
type QSqlRelationalTableModelitemDataProc* = proc(self: QSqlRelationalTableModel, index: gen_qabstractitemmodel_types.QModelIndex): Table[cint,gen_qvariant_types.QVariant] {.raises: [], gcsafe.}
type QSqlRelationalTableModelsetItemDataProc* = proc(self: QSqlRelationalTableModel, index: gen_qabstractitemmodel_types.QModelIndex, roles: Table[cint,gen_qvariant_types.QVariant]): bool {.raises: [], gcsafe.}
type QSqlRelationalTableModelmimeTypesProc* = proc(self: QSqlRelationalTableModel): seq[string] {.raises: [], gcsafe.}
type QSqlRelationalTableModelmimeDataProc* = proc(self: QSqlRelationalTableModel, indexes: openArray[gen_qabstractitemmodel_types.QModelIndex]): gen_qmimedata_types.QMimeData {.raises: [], gcsafe.}
type QSqlRelationalTableModelcanDropMimeDataProc* = proc(self: QSqlRelationalTableModel, data: gen_qmimedata_types.QMimeData, action: cint, row: cint, column: cint, parent: gen_qabstractitemmodel_types.QModelIndex): bool {.raises: [], gcsafe.}
type QSqlRelationalTableModelsupportedDropActionsProc* = proc(self: QSqlRelationalTableModel): cint {.raises: [], gcsafe.}
type QSqlRelationalTableModelsupportedDragActionsProc* = proc(self: QSqlRelationalTableModel): cint {.raises: [], gcsafe.}
type QSqlRelationalTableModelmoveRowsProc* = proc(self: QSqlRelationalTableModel, sourceParent: gen_qabstractitemmodel_types.QModelIndex, sourceRow: cint, count: cint, destinationParent: gen_qabstractitemmodel_types.QModelIndex, destinationChild: cint): bool {.raises: [], gcsafe.}
type QSqlRelationalTableModelmoveColumnsProc* = proc(self: QSqlRelationalTableModel, sourceParent: gen_qabstractitemmodel_types.QModelIndex, sourceColumn: cint, count: cint, destinationParent: gen_qabstractitemmodel_types.QModelIndex, destinationChild: cint): bool {.raises: [], gcsafe.}
type QSqlRelationalTableModelbuddyProc* = proc(self: QSqlRelationalTableModel, index: gen_qabstractitemmodel_types.QModelIndex): gen_qabstractitemmodel_types.QModelIndex {.raises: [], gcsafe.}
type QSqlRelationalTableModelmatchProc* = proc(self: QSqlRelationalTableModel, start: gen_qabstractitemmodel_types.QModelIndex, role: cint, value: gen_qvariant_types.QVariant, hits: cint, flags: cint): seq[gen_qabstractitemmodel_types.QModelIndex] {.raises: [], gcsafe.}
type QSqlRelationalTableModelspanProc* = proc(self: QSqlRelationalTableModel, index: gen_qabstractitemmodel_types.QModelIndex): gen_qsize_types.QSize {.raises: [], gcsafe.}
type QSqlRelationalTableModeleventProc* = proc(self: QSqlRelationalTableModel, event: gen_qcoreevent_types.QEvent): bool {.raises: [], gcsafe.}
type QSqlRelationalTableModeleventFilterProc* = proc(self: QSqlRelationalTableModel, watched: gen_qobject_types.QObject, event: gen_qcoreevent_types.QEvent): bool {.raises: [], gcsafe.}
type QSqlRelationalTableModeltimerEventProc* = proc(self: QSqlRelationalTableModel, event: gen_qcoreevent_types.QTimerEvent): void {.raises: [], gcsafe.}
type QSqlRelationalTableModelchildEventProc* = proc(self: QSqlRelationalTableModel, event: gen_qcoreevent_types.QChildEvent): void {.raises: [], gcsafe.}
type QSqlRelationalTableModelcustomEventProc* = proc(self: QSqlRelationalTableModel, event: gen_qcoreevent_types.QEvent): void {.raises: [], gcsafe.}
type QSqlRelationalTableModelconnectNotifyProc* = proc(self: QSqlRelationalTableModel, signal: gen_qmetaobject_types.QMetaMethod): void {.raises: [], gcsafe.}
type QSqlRelationalTableModeldisconnectNotifyProc* = proc(self: QSqlRelationalTableModel, signal: gen_qmetaobject_types.QMetaMethod): void {.raises: [], gcsafe.}

type QSqlRelationalTableModelVTable* {.inheritable, pure.} = object
  vtbl: cQSqlRelationalTableModelVTable
  metaObject*: QSqlRelationalTableModelmetaObjectProc
  metacast*: QSqlRelationalTableModelmetacastProc
  metacall*: QSqlRelationalTableModelmetacallProc
  data*: QSqlRelationalTableModeldataProc
  setData*: QSqlRelationalTableModelsetDataProc
  removeColumns*: QSqlRelationalTableModelremoveColumnsProc
  clear*: QSqlRelationalTableModelclearProc
  select*: QSqlRelationalTableModelselectProc
  setTable*: QSqlRelationalTableModelsetTableProc
  setRelation*: QSqlRelationalTableModelsetRelationProc
  relationModel*: QSqlRelationalTableModelrelationModelProc
  revertRow*: QSqlRelationalTableModelrevertRowProc
  selectStatement*: QSqlRelationalTableModelselectStatementProc
  updateRowInTable*: QSqlRelationalTableModelupdateRowInTableProc
  insertRowIntoTable*: QSqlRelationalTableModelinsertRowIntoTableProc
  orderByClause*: QSqlRelationalTableModelorderByClauseProc
  flags*: QSqlRelationalTableModelflagsProc
  headerData*: QSqlRelationalTableModelheaderDataProc
  setEditStrategy*: QSqlRelationalTableModelsetEditStrategyProc
  sort*: QSqlRelationalTableModelsortProc
  setSort*: QSqlRelationalTableModelsetSortProc
  setFilter*: QSqlRelationalTableModelsetFilterProc
  rowCount*: QSqlRelationalTableModelrowCountProc
  removeRows*: QSqlRelationalTableModelremoveRowsProc
  insertRows*: QSqlRelationalTableModelinsertRowsProc
  selectRow*: QSqlRelationalTableModelselectRowProc
  submit*: QSqlRelationalTableModelsubmitProc
  revert*: QSqlRelationalTableModelrevertProc
  deleteRowFromTable*: QSqlRelationalTableModeldeleteRowFromTableProc
  indexInQuery*: QSqlRelationalTableModelindexInQueryProc
  columnCount*: QSqlRelationalTableModelcolumnCountProc
  setHeaderData*: QSqlRelationalTableModelsetHeaderDataProc
  insertColumns*: QSqlRelationalTableModelinsertColumnsProc
  fetchMore*: QSqlRelationalTableModelfetchMoreProc
  canFetchMore*: QSqlRelationalTableModelcanFetchMoreProc
  roleNames*: QSqlRelationalTableModelroleNamesProc
  queryChange*: QSqlRelationalTableModelqueryChangeProc
  index*: QSqlRelationalTableModelindexProc
  sibling*: QSqlRelationalTableModelsiblingProc
  dropMimeData*: QSqlRelationalTableModeldropMimeDataProc
  itemData*: QSqlRelationalTableModelitemDataProc
  setItemData*: QSqlRelationalTableModelsetItemDataProc
  mimeTypes*: QSqlRelationalTableModelmimeTypesProc
  mimeData*: QSqlRelationalTableModelmimeDataProc
  canDropMimeData*: QSqlRelationalTableModelcanDropMimeDataProc
  supportedDropActions*: QSqlRelationalTableModelsupportedDropActionsProc
  supportedDragActions*: QSqlRelationalTableModelsupportedDragActionsProc
  moveRows*: QSqlRelationalTableModelmoveRowsProc
  moveColumns*: QSqlRelationalTableModelmoveColumnsProc
  buddy*: QSqlRelationalTableModelbuddyProc
  match*: QSqlRelationalTableModelmatchProc
  span*: QSqlRelationalTableModelspanProc
  event*: QSqlRelationalTableModeleventProc
  eventFilter*: QSqlRelationalTableModeleventFilterProc
  timerEvent*: QSqlRelationalTableModeltimerEventProc
  childEvent*: QSqlRelationalTableModelchildEventProc
  customEvent*: QSqlRelationalTableModelcustomEventProc
  connectNotify*: QSqlRelationalTableModelconnectNotifyProc
  disconnectNotify*: QSqlRelationalTableModeldisconnectNotifyProc

proc QSqlRelationalTableModelmetaObject*(self: gen_qsqlrelationaltablemodel_types.QSqlRelationalTableModel): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQSqlRelationalTableModel_virtualbase_metaObject(self.h), owned: false)

proc QSqlRelationalTableModelmetacast*(self: gen_qsqlrelationaltablemodel_types.QSqlRelationalTableModel, param1: cstring): pointer =
  fcQSqlRelationalTableModel_virtualbase_metacast(self.h, param1)

proc QSqlRelationalTableModelmetacall*(self: gen_qsqlrelationaltablemodel_types.QSqlRelationalTableModel, param1: cint, param2: cint, param3: pointer): cint =
  fcQSqlRelationalTableModel_virtualbase_metacall(self.h, cint(param1), param2, param3)

proc QSqlRelationalTableModeldata*(self: gen_qsqlrelationaltablemodel_types.QSqlRelationalTableModel, item: gen_qabstractitemmodel_types.QModelIndex, role: cint): gen_qvariant_types.QVariant =
  gen_qvariant_types.QVariant(h: fcQSqlRelationalTableModel_virtualbase_data(self.h, item.h, role), owned: true)

proc QSqlRelationalTableModelsetData*(self: gen_qsqlrelationaltablemodel_types.QSqlRelationalTableModel, item: gen_qabstractitemmodel_types.QModelIndex, value: gen_qvariant_types.QVariant, role: cint): bool =
  fcQSqlRelationalTableModel_virtualbase_setData(self.h, item.h, value.h, role)

proc QSqlRelationalTableModelremoveColumns*(self: gen_qsqlrelationaltablemodel_types.QSqlRelationalTableModel, column: cint, count: cint, parent: gen_qabstractitemmodel_types.QModelIndex): bool =
  fcQSqlRelationalTableModel_virtualbase_removeColumns(self.h, column, count, parent.h)

proc QSqlRelationalTableModelclear*(self: gen_qsqlrelationaltablemodel_types.QSqlRelationalTableModel): void =
  fcQSqlRelationalTableModel_virtualbase_clear(self.h)

proc QSqlRelationalTableModelselect*(self: gen_qsqlrelationaltablemodel_types.QSqlRelationalTableModel): bool =
  fcQSqlRelationalTableModel_virtualbase_select(self.h)

proc QSqlRelationalTableModelsetTable*(self: gen_qsqlrelationaltablemodel_types.QSqlRelationalTableModel, tableName: openArray[char]): void =
  fcQSqlRelationalTableModel_virtualbase_setTable(self.h, struct_seaqt_string(data: if len(tableName) > 0: addr tableName[0] else: nil, len: csize_t(len(tableName))))

proc QSqlRelationalTableModelsetRelation*(self: gen_qsqlrelationaltablemodel_types.QSqlRelationalTableModel, column: cint, relation: gen_qsqlrelationaltablemodel_types.QSqlRelation): void =
  fcQSqlRelationalTableModel_virtualbase_setRelation(self.h, column, relation.h)

proc QSqlRelationalTableModelrelationModel*(self: gen_qsqlrelationaltablemodel_types.QSqlRelationalTableModel, column: cint): gen_qsqltablemodel_types.QSqlTableModel =
  gen_qsqltablemodel_types.QSqlTableModel(h: fcQSqlRelationalTableModel_virtualbase_relationModel(self.h, column), owned: false)

proc QSqlRelationalTableModelrevertRow*(self: gen_qsqlrelationaltablemodel_types.QSqlRelationalTableModel, row: cint): void =
  fcQSqlRelationalTableModel_virtualbase_revertRow(self.h, row)

proc QSqlRelationalTableModelselectStatement*(self: gen_qsqlrelationaltablemodel_types.QSqlRelationalTableModel): string =
  let v_ms = fcQSqlRelationalTableModel_virtualbase_selectStatement(self.h)
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

proc QSqlRelationalTableModelupdateRowInTable*(self: gen_qsqlrelationaltablemodel_types.QSqlRelationalTableModel, row: cint, values: gen_qsqlrecord_types.QSqlRecord): bool =
  fcQSqlRelationalTableModel_virtualbase_updateRowInTable(self.h, row, values.h)

proc QSqlRelationalTableModelinsertRowIntoTable*(self: gen_qsqlrelationaltablemodel_types.QSqlRelationalTableModel, values: gen_qsqlrecord_types.QSqlRecord): bool =
  fcQSqlRelationalTableModel_virtualbase_insertRowIntoTable(self.h, values.h)

proc QSqlRelationalTableModelorderByClause*(self: gen_qsqlrelationaltablemodel_types.QSqlRelationalTableModel): string =
  let v_ms = fcQSqlRelationalTableModel_virtualbase_orderByClause(self.h)
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

proc QSqlRelationalTableModelflags*(self: gen_qsqlrelationaltablemodel_types.QSqlRelationalTableModel, index: gen_qabstractitemmodel_types.QModelIndex): cint =
  cint(fcQSqlRelationalTableModel_virtualbase_flags(self.h, index.h))

proc QSqlRelationalTableModelheaderData*(self: gen_qsqlrelationaltablemodel_types.QSqlRelationalTableModel, section: cint, orientation: cint, role: cint): gen_qvariant_types.QVariant =
  gen_qvariant_types.QVariant(h: fcQSqlRelationalTableModel_virtualbase_headerData(self.h, section, cint(orientation), role), owned: true)

proc QSqlRelationalTableModelsetEditStrategy*(self: gen_qsqlrelationaltablemodel_types.QSqlRelationalTableModel, strategy: cint): void =
  fcQSqlRelationalTableModel_virtualbase_setEditStrategy(self.h, cint(strategy))

proc QSqlRelationalTableModelsort*(self: gen_qsqlrelationaltablemodel_types.QSqlRelationalTableModel, column: cint, order: cint): void =
  fcQSqlRelationalTableModel_virtualbase_sort(self.h, column, cint(order))

proc QSqlRelationalTableModelsetSort*(self: gen_qsqlrelationaltablemodel_types.QSqlRelationalTableModel, column: cint, order: cint): void =
  fcQSqlRelationalTableModel_virtualbase_setSort(self.h, column, cint(order))

proc QSqlRelationalTableModelsetFilter*(self: gen_qsqlrelationaltablemodel_types.QSqlRelationalTableModel, filter: openArray[char]): void =
  fcQSqlRelationalTableModel_virtualbase_setFilter(self.h, struct_seaqt_string(data: if len(filter) > 0: addr filter[0] else: nil, len: csize_t(len(filter))))

proc QSqlRelationalTableModelrowCount*(self: gen_qsqlrelationaltablemodel_types.QSqlRelationalTableModel, parent: gen_qabstractitemmodel_types.QModelIndex): cint =
  fcQSqlRelationalTableModel_virtualbase_rowCount(self.h, parent.h)

proc QSqlRelationalTableModelremoveRows*(self: gen_qsqlrelationaltablemodel_types.QSqlRelationalTableModel, row: cint, count: cint, parent: gen_qabstractitemmodel_types.QModelIndex): bool =
  fcQSqlRelationalTableModel_virtualbase_removeRows(self.h, row, count, parent.h)

proc QSqlRelationalTableModelinsertRows*(self: gen_qsqlrelationaltablemodel_types.QSqlRelationalTableModel, row: cint, count: cint, parent: gen_qabstractitemmodel_types.QModelIndex): bool =
  fcQSqlRelationalTableModel_virtualbase_insertRows(self.h, row, count, parent.h)

proc QSqlRelationalTableModelselectRow*(self: gen_qsqlrelationaltablemodel_types.QSqlRelationalTableModel, row: cint): bool =
  fcQSqlRelationalTableModel_virtualbase_selectRow(self.h, row)

proc QSqlRelationalTableModelsubmit*(self: gen_qsqlrelationaltablemodel_types.QSqlRelationalTableModel): bool =
  fcQSqlRelationalTableModel_virtualbase_submit(self.h)

proc QSqlRelationalTableModelrevert*(self: gen_qsqlrelationaltablemodel_types.QSqlRelationalTableModel): void =
  fcQSqlRelationalTableModel_virtualbase_revert(self.h)

proc QSqlRelationalTableModeldeleteRowFromTable*(self: gen_qsqlrelationaltablemodel_types.QSqlRelationalTableModel, row: cint): bool =
  fcQSqlRelationalTableModel_virtualbase_deleteRowFromTable(self.h, row)

proc QSqlRelationalTableModelindexInQuery*(self: gen_qsqlrelationaltablemodel_types.QSqlRelationalTableModel, item: gen_qabstractitemmodel_types.QModelIndex): gen_qabstractitemmodel_types.QModelIndex =
  gen_qabstractitemmodel_types.QModelIndex(h: fcQSqlRelationalTableModel_virtualbase_indexInQuery(self.h, item.h), owned: true)

proc QSqlRelationalTableModelcolumnCount*(self: gen_qsqlrelationaltablemodel_types.QSqlRelationalTableModel, parent: gen_qabstractitemmodel_types.QModelIndex): cint =
  fcQSqlRelationalTableModel_virtualbase_columnCount(self.h, parent.h)

proc QSqlRelationalTableModelsetHeaderData*(self: gen_qsqlrelationaltablemodel_types.QSqlRelationalTableModel, section: cint, orientation: cint, value: gen_qvariant_types.QVariant, role: cint): bool =
  fcQSqlRelationalTableModel_virtualbase_setHeaderData(self.h, section, cint(orientation), value.h, role)

proc QSqlRelationalTableModelinsertColumns*(self: gen_qsqlrelationaltablemodel_types.QSqlRelationalTableModel, column: cint, count: cint, parent: gen_qabstractitemmodel_types.QModelIndex): bool =
  fcQSqlRelationalTableModel_virtualbase_insertColumns(self.h, column, count, parent.h)

proc QSqlRelationalTableModelfetchMore*(self: gen_qsqlrelationaltablemodel_types.QSqlRelationalTableModel, parent: gen_qabstractitemmodel_types.QModelIndex): void =
  fcQSqlRelationalTableModel_virtualbase_fetchMore(self.h, parent.h)

proc QSqlRelationalTableModelcanFetchMore*(self: gen_qsqlrelationaltablemodel_types.QSqlRelationalTableModel, parent: gen_qabstractitemmodel_types.QModelIndex): bool =
  fcQSqlRelationalTableModel_virtualbase_canFetchMore(self.h, parent.h)

proc QSqlRelationalTableModelroleNames*(self: gen_qsqlrelationaltablemodel_types.QSqlRelationalTableModel): Table[cint,seq[byte]] =
  var v_mm = fcQSqlRelationalTableModel_virtualbase_roleNames(self.h)
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

proc QSqlRelationalTableModelqueryChange*(self: gen_qsqlrelationaltablemodel_types.QSqlRelationalTableModel): void =
  fcQSqlRelationalTableModel_virtualbase_queryChange(self.h)

proc QSqlRelationalTableModelindex*(self: gen_qsqlrelationaltablemodel_types.QSqlRelationalTableModel, row: cint, column: cint, parent: gen_qabstractitemmodel_types.QModelIndex): gen_qabstractitemmodel_types.QModelIndex =
  gen_qabstractitemmodel_types.QModelIndex(h: fcQSqlRelationalTableModel_virtualbase_index(self.h, row, column, parent.h), owned: true)

proc QSqlRelationalTableModelsibling*(self: gen_qsqlrelationaltablemodel_types.QSqlRelationalTableModel, row: cint, column: cint, idx: gen_qabstractitemmodel_types.QModelIndex): gen_qabstractitemmodel_types.QModelIndex =
  gen_qabstractitemmodel_types.QModelIndex(h: fcQSqlRelationalTableModel_virtualbase_sibling(self.h, row, column, idx.h), owned: true)

proc QSqlRelationalTableModeldropMimeData*(self: gen_qsqlrelationaltablemodel_types.QSqlRelationalTableModel, data: gen_qmimedata_types.QMimeData, action: cint, row: cint, column: cint, parent: gen_qabstractitemmodel_types.QModelIndex): bool =
  fcQSqlRelationalTableModel_virtualbase_dropMimeData(self.h, data.h, cint(action), row, column, parent.h)

proc QSqlRelationalTableModelitemData*(self: gen_qsqlrelationaltablemodel_types.QSqlRelationalTableModel, index: gen_qabstractitemmodel_types.QModelIndex): Table[cint,gen_qvariant_types.QVariant] =
  var v_mm = fcQSqlRelationalTableModel_virtualbase_itemData(self.h, index.h)
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

proc QSqlRelationalTableModelsetItemData*(self: gen_qsqlrelationaltablemodel_types.QSqlRelationalTableModel, index: gen_qabstractitemmodel_types.QModelIndex, roles: Table[cint,gen_qvariant_types.QVariant]): bool =
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

  fcQSqlRelationalTableModel_virtualbase_setItemData(self.h, index.h, struct_seaqt_map(len: csize_t(len(roles)),keys: if len(roles) == 0: nil else: addr(roles_Keys_CArray[0]), values: if len(roles) == 0: nil else: addr(roles_Values_CArray[0]),))

proc QSqlRelationalTableModelmimeTypes*(self: gen_qsqlrelationaltablemodel_types.QSqlRelationalTableModel): seq[string] =
  var v_ma = fcQSqlRelationalTableModel_virtualbase_mimeTypes(self.h)
  var vx_ret = newSeq[string](int(v_ma.len))
  let v_outCast = cast[ptr UncheckedArray[struct_seaqt_string]](v_ma.data)
  for i in 0 ..< v_ma.len:
    let vx_lv_ms = v_outCast[i]
    let vx_lvx_ret = string.fromBytes(vx_lv_ms)
    c_free(vx_lv_ms.data)
    vx_ret[i] = vx_lvx_ret
  c_free(v_ma.data)
  vx_ret

proc QSqlRelationalTableModelmimeData*(self: gen_qsqlrelationaltablemodel_types.QSqlRelationalTableModel, indexes: openArray[gen_qabstractitemmodel_types.QModelIndex]): gen_qmimedata_types.QMimeData =
  var indexes_CArray = newSeq[pointer](len(indexes))
  for i in 0..<len(indexes):
    indexes_CArray[i] = indexes[i].h

  gen_qmimedata_types.QMimeData(h: fcQSqlRelationalTableModel_virtualbase_mimeData(self.h, struct_seaqt_array(len: csize_t(len(indexes)), data: if len(indexes) == 0: nil else: addr(indexes_CArray[0]))), owned: false)

proc QSqlRelationalTableModelcanDropMimeData*(self: gen_qsqlrelationaltablemodel_types.QSqlRelationalTableModel, data: gen_qmimedata_types.QMimeData, action: cint, row: cint, column: cint, parent: gen_qabstractitemmodel_types.QModelIndex): bool =
  fcQSqlRelationalTableModel_virtualbase_canDropMimeData(self.h, data.h, cint(action), row, column, parent.h)

proc QSqlRelationalTableModelsupportedDropActions*(self: gen_qsqlrelationaltablemodel_types.QSqlRelationalTableModel): cint =
  cint(fcQSqlRelationalTableModel_virtualbase_supportedDropActions(self.h))

proc QSqlRelationalTableModelsupportedDragActions*(self: gen_qsqlrelationaltablemodel_types.QSqlRelationalTableModel): cint =
  cint(fcQSqlRelationalTableModel_virtualbase_supportedDragActions(self.h))

proc QSqlRelationalTableModelmoveRows*(self: gen_qsqlrelationaltablemodel_types.QSqlRelationalTableModel, sourceParent: gen_qabstractitemmodel_types.QModelIndex, sourceRow: cint, count: cint, destinationParent: gen_qabstractitemmodel_types.QModelIndex, destinationChild: cint): bool =
  fcQSqlRelationalTableModel_virtualbase_moveRows(self.h, sourceParent.h, sourceRow, count, destinationParent.h, destinationChild)

proc QSqlRelationalTableModelmoveColumns*(self: gen_qsqlrelationaltablemodel_types.QSqlRelationalTableModel, sourceParent: gen_qabstractitemmodel_types.QModelIndex, sourceColumn: cint, count: cint, destinationParent: gen_qabstractitemmodel_types.QModelIndex, destinationChild: cint): bool =
  fcQSqlRelationalTableModel_virtualbase_moveColumns(self.h, sourceParent.h, sourceColumn, count, destinationParent.h, destinationChild)

proc QSqlRelationalTableModelbuddy*(self: gen_qsqlrelationaltablemodel_types.QSqlRelationalTableModel, index: gen_qabstractitemmodel_types.QModelIndex): gen_qabstractitemmodel_types.QModelIndex =
  gen_qabstractitemmodel_types.QModelIndex(h: fcQSqlRelationalTableModel_virtualbase_buddy(self.h, index.h), owned: true)

proc QSqlRelationalTableModelmatch*(self: gen_qsqlrelationaltablemodel_types.QSqlRelationalTableModel, start: gen_qabstractitemmodel_types.QModelIndex, role: cint, value: gen_qvariant_types.QVariant, hits: cint, flags: cint): seq[gen_qabstractitemmodel_types.QModelIndex] =
  var v_ma = fcQSqlRelationalTableModel_virtualbase_match(self.h, start.h, role, value.h, hits, cint(flags))
  var vx_ret = newSeq[gen_qabstractitemmodel_types.QModelIndex](int(v_ma.len))
  let v_outCast = cast[ptr UncheckedArray[pointer]](v_ma.data)
  for i in 0 ..< v_ma.len:
    vx_ret[i] = gen_qabstractitemmodel_types.QModelIndex(h: v_outCast[i], owned: true)
  c_free(v_ma.data)
  vx_ret

proc QSqlRelationalTableModelspan*(self: gen_qsqlrelationaltablemodel_types.QSqlRelationalTableModel, index: gen_qabstractitemmodel_types.QModelIndex): gen_qsize_types.QSize =
  gen_qsize_types.QSize(h: fcQSqlRelationalTableModel_virtualbase_span(self.h, index.h), owned: true)

proc QSqlRelationalTableModelevent*(self: gen_qsqlrelationaltablemodel_types.QSqlRelationalTableModel, event: gen_qcoreevent_types.QEvent): bool =
  fcQSqlRelationalTableModel_virtualbase_event(self.h, event.h)

proc QSqlRelationalTableModeleventFilter*(self: gen_qsqlrelationaltablemodel_types.QSqlRelationalTableModel, watched: gen_qobject_types.QObject, event: gen_qcoreevent_types.QEvent): bool =
  fcQSqlRelationalTableModel_virtualbase_eventFilter(self.h, watched.h, event.h)

proc QSqlRelationalTableModeltimerEvent*(self: gen_qsqlrelationaltablemodel_types.QSqlRelationalTableModel, event: gen_qcoreevent_types.QTimerEvent): void =
  fcQSqlRelationalTableModel_virtualbase_timerEvent(self.h, event.h)

proc QSqlRelationalTableModelchildEvent*(self: gen_qsqlrelationaltablemodel_types.QSqlRelationalTableModel, event: gen_qcoreevent_types.QChildEvent): void =
  fcQSqlRelationalTableModel_virtualbase_childEvent(self.h, event.h)

proc QSqlRelationalTableModelcustomEvent*(self: gen_qsqlrelationaltablemodel_types.QSqlRelationalTableModel, event: gen_qcoreevent_types.QEvent): void =
  fcQSqlRelationalTableModel_virtualbase_customEvent(self.h, event.h)

proc QSqlRelationalTableModelconnectNotify*(self: gen_qsqlrelationaltablemodel_types.QSqlRelationalTableModel, signal: gen_qmetaobject_types.QMetaMethod): void =
  fcQSqlRelationalTableModel_virtualbase_connectNotify(self.h, signal.h)

proc QSqlRelationalTableModeldisconnectNotify*(self: gen_qsqlrelationaltablemodel_types.QSqlRelationalTableModel, signal: gen_qmetaobject_types.QMetaMethod): void =
  fcQSqlRelationalTableModel_virtualbase_disconnectNotify(self.h, signal.h)


proc fcQSqlRelationalTableModel_vtable_callback_metaObject(self: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QSqlRelationalTableModelVTable](fcQSqlRelationalTableModel_vdata(self)[])
  let self = QSqlRelationalTableModel(h: self)
  var virtualReturn = vtbl[].metaObject(self)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc fcQSqlRelationalTableModel_vtable_callback_metacast(self: pointer, param1: cstring): pointer {.cdecl.} =
  let vtbl = cast[ptr QSqlRelationalTableModelVTable](fcQSqlRelationalTableModel_vdata(self)[])
  let self = QSqlRelationalTableModel(h: self)
  let slotval1 = (param1)
  var virtualReturn = vtbl[].metacast(self, slotval1)
  virtualReturn

proc fcQSqlRelationalTableModel_vtable_callback_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.cdecl.} =
  let vtbl = cast[ptr QSqlRelationalTableModelVTable](fcQSqlRelationalTableModel_vdata(self)[])
  let self = QSqlRelationalTableModel(h: self)
  let slotval1 = cint(param1)
  let slotval2 = param2
  let slotval3 = param3
  var virtualReturn = vtbl[].metacall(self, slotval1, slotval2, slotval3)
  virtualReturn

proc fcQSqlRelationalTableModel_vtable_callback_data(self: pointer, item: pointer, role: cint): pointer {.cdecl.} =
  let vtbl = cast[ptr QSqlRelationalTableModelVTable](fcQSqlRelationalTableModel_vdata(self)[])
  let self = QSqlRelationalTableModel(h: self)
  let slotval1 = gen_qabstractitemmodel_types.QModelIndex(h: item, owned: false)
  let slotval2 = role
  var virtualReturn = vtbl[].data(self, slotval1, slotval2)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc fcQSqlRelationalTableModel_vtable_callback_setData(self: pointer, item: pointer, value: pointer, role: cint): bool {.cdecl.} =
  let vtbl = cast[ptr QSqlRelationalTableModelVTable](fcQSqlRelationalTableModel_vdata(self)[])
  let self = QSqlRelationalTableModel(h: self)
  let slotval1 = gen_qabstractitemmodel_types.QModelIndex(h: item, owned: false)
  let slotval2 = gen_qvariant_types.QVariant(h: value, owned: false)
  let slotval3 = role
  var virtualReturn = vtbl[].setData(self, slotval1, slotval2, slotval3)
  virtualReturn

proc fcQSqlRelationalTableModel_vtable_callback_removeColumns(self: pointer, column: cint, count: cint, parent: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QSqlRelationalTableModelVTable](fcQSqlRelationalTableModel_vdata(self)[])
  let self = QSqlRelationalTableModel(h: self)
  let slotval1 = column
  let slotval2 = count
  let slotval3 = gen_qabstractitemmodel_types.QModelIndex(h: parent, owned: false)
  var virtualReturn = vtbl[].removeColumns(self, slotval1, slotval2, slotval3)
  virtualReturn

proc fcQSqlRelationalTableModel_vtable_callback_clear(self: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QSqlRelationalTableModelVTable](fcQSqlRelationalTableModel_vdata(self)[])
  let self = QSqlRelationalTableModel(h: self)
  vtbl[].clear(self)

proc fcQSqlRelationalTableModel_vtable_callback_select(self: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QSqlRelationalTableModelVTable](fcQSqlRelationalTableModel_vdata(self)[])
  let self = QSqlRelationalTableModel(h: self)
  var virtualReturn = vtbl[].select(self)
  virtualReturn

proc fcQSqlRelationalTableModel_vtable_callback_setTable(self: pointer, tableName: struct_seaqt_string): void {.cdecl.} =
  let vtbl = cast[ptr QSqlRelationalTableModelVTable](fcQSqlRelationalTableModel_vdata(self)[])
  let self = QSqlRelationalTableModel(h: self)
  let vtableName_ms = tableName
  let vtableNamex_ret = string.fromBytes(vtableName_ms)
  c_free(vtableName_ms.data)
  let slotval1 = vtableNamex_ret
  vtbl[].setTable(self, slotval1)

proc fcQSqlRelationalTableModel_vtable_callback_setRelation(self: pointer, column: cint, relation: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QSqlRelationalTableModelVTable](fcQSqlRelationalTableModel_vdata(self)[])
  let self = QSqlRelationalTableModel(h: self)
  let slotval1 = column
  let slotval2 = gen_qsqlrelationaltablemodel_types.QSqlRelation(h: relation, owned: false)
  vtbl[].setRelation(self, slotval1, slotval2)

proc fcQSqlRelationalTableModel_vtable_callback_relationModel(self: pointer, column: cint): pointer {.cdecl.} =
  let vtbl = cast[ptr QSqlRelationalTableModelVTable](fcQSqlRelationalTableModel_vdata(self)[])
  let self = QSqlRelationalTableModel(h: self)
  let slotval1 = column
  var virtualReturn = vtbl[].relationModel(self, slotval1)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc fcQSqlRelationalTableModel_vtable_callback_revertRow(self: pointer, row: cint): void {.cdecl.} =
  let vtbl = cast[ptr QSqlRelationalTableModelVTable](fcQSqlRelationalTableModel_vdata(self)[])
  let self = QSqlRelationalTableModel(h: self)
  let slotval1 = row
  vtbl[].revertRow(self, slotval1)

proc fcQSqlRelationalTableModel_vtable_callback_selectStatement(self: pointer): struct_seaqt_string {.cdecl.} =
  let vtbl = cast[ptr QSqlRelationalTableModelVTable](fcQSqlRelationalTableModel_vdata(self)[])
  let self = QSqlRelationalTableModel(h: self)
  var virtualReturn = vtbl[].selectStatement(self)
  var virtualReturn_copy = if len(virtualReturn) > 0: c_malloc(csize_t(len(virtualReturn))) else: nil
  if len(virtualReturn) > 0: copyMem(virtualReturn_copy, addr virtualReturn[0], csize_t(len(virtualReturn)))
  struct_seaqt_string(data: virtualReturn_copy, len: csize_t(len(virtualReturn)))

proc fcQSqlRelationalTableModel_vtable_callback_updateRowInTable(self: pointer, row: cint, values: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QSqlRelationalTableModelVTable](fcQSqlRelationalTableModel_vdata(self)[])
  let self = QSqlRelationalTableModel(h: self)
  let slotval1 = row
  let slotval2 = gen_qsqlrecord_types.QSqlRecord(h: values, owned: false)
  var virtualReturn = vtbl[].updateRowInTable(self, slotval1, slotval2)
  virtualReturn

proc fcQSqlRelationalTableModel_vtable_callback_insertRowIntoTable(self: pointer, values: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QSqlRelationalTableModelVTable](fcQSqlRelationalTableModel_vdata(self)[])
  let self = QSqlRelationalTableModel(h: self)
  let slotval1 = gen_qsqlrecord_types.QSqlRecord(h: values, owned: false)
  var virtualReturn = vtbl[].insertRowIntoTable(self, slotval1)
  virtualReturn

proc fcQSqlRelationalTableModel_vtable_callback_orderByClause(self: pointer): struct_seaqt_string {.cdecl.} =
  let vtbl = cast[ptr QSqlRelationalTableModelVTable](fcQSqlRelationalTableModel_vdata(self)[])
  let self = QSqlRelationalTableModel(h: self)
  var virtualReturn = vtbl[].orderByClause(self)
  var virtualReturn_copy = if len(virtualReturn) > 0: c_malloc(csize_t(len(virtualReturn))) else: nil
  if len(virtualReturn) > 0: copyMem(virtualReturn_copy, addr virtualReturn[0], csize_t(len(virtualReturn)))
  struct_seaqt_string(data: virtualReturn_copy, len: csize_t(len(virtualReturn)))

proc fcQSqlRelationalTableModel_vtable_callback_flags(self: pointer, index: pointer): cint {.cdecl.} =
  let vtbl = cast[ptr QSqlRelationalTableModelVTable](fcQSqlRelationalTableModel_vdata(self)[])
  let self = QSqlRelationalTableModel(h: self)
  let slotval1 = gen_qabstractitemmodel_types.QModelIndex(h: index, owned: false)
  var virtualReturn = vtbl[].flags(self, slotval1)
  cint(virtualReturn)

proc fcQSqlRelationalTableModel_vtable_callback_headerData(self: pointer, section: cint, orientation: cint, role: cint): pointer {.cdecl.} =
  let vtbl = cast[ptr QSqlRelationalTableModelVTable](fcQSqlRelationalTableModel_vdata(self)[])
  let self = QSqlRelationalTableModel(h: self)
  let slotval1 = section
  let slotval2 = cint(orientation)
  let slotval3 = role
  var virtualReturn = vtbl[].headerData(self, slotval1, slotval2, slotval3)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc fcQSqlRelationalTableModel_vtable_callback_setEditStrategy(self: pointer, strategy: cint): void {.cdecl.} =
  let vtbl = cast[ptr QSqlRelationalTableModelVTable](fcQSqlRelationalTableModel_vdata(self)[])
  let self = QSqlRelationalTableModel(h: self)
  let slotval1 = cint(strategy)
  vtbl[].setEditStrategy(self, slotval1)

proc fcQSqlRelationalTableModel_vtable_callback_sort(self: pointer, column: cint, order: cint): void {.cdecl.} =
  let vtbl = cast[ptr QSqlRelationalTableModelVTable](fcQSqlRelationalTableModel_vdata(self)[])
  let self = QSqlRelationalTableModel(h: self)
  let slotval1 = column
  let slotval2 = cint(order)
  vtbl[].sort(self, slotval1, slotval2)

proc fcQSqlRelationalTableModel_vtable_callback_setSort(self: pointer, column: cint, order: cint): void {.cdecl.} =
  let vtbl = cast[ptr QSqlRelationalTableModelVTable](fcQSqlRelationalTableModel_vdata(self)[])
  let self = QSqlRelationalTableModel(h: self)
  let slotval1 = column
  let slotval2 = cint(order)
  vtbl[].setSort(self, slotval1, slotval2)

proc fcQSqlRelationalTableModel_vtable_callback_setFilter(self: pointer, filter: struct_seaqt_string): void {.cdecl.} =
  let vtbl = cast[ptr QSqlRelationalTableModelVTable](fcQSqlRelationalTableModel_vdata(self)[])
  let self = QSqlRelationalTableModel(h: self)
  let vfilter_ms = filter
  let vfilterx_ret = string.fromBytes(vfilter_ms)
  c_free(vfilter_ms.data)
  let slotval1 = vfilterx_ret
  vtbl[].setFilter(self, slotval1)

proc fcQSqlRelationalTableModel_vtable_callback_rowCount(self: pointer, parent: pointer): cint {.cdecl.} =
  let vtbl = cast[ptr QSqlRelationalTableModelVTable](fcQSqlRelationalTableModel_vdata(self)[])
  let self = QSqlRelationalTableModel(h: self)
  let slotval1 = gen_qabstractitemmodel_types.QModelIndex(h: parent, owned: false)
  var virtualReturn = vtbl[].rowCount(self, slotval1)
  virtualReturn

proc fcQSqlRelationalTableModel_vtable_callback_removeRows(self: pointer, row: cint, count: cint, parent: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QSqlRelationalTableModelVTable](fcQSqlRelationalTableModel_vdata(self)[])
  let self = QSqlRelationalTableModel(h: self)
  let slotval1 = row
  let slotval2 = count
  let slotval3 = gen_qabstractitemmodel_types.QModelIndex(h: parent, owned: false)
  var virtualReturn = vtbl[].removeRows(self, slotval1, slotval2, slotval3)
  virtualReturn

proc fcQSqlRelationalTableModel_vtable_callback_insertRows(self: pointer, row: cint, count: cint, parent: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QSqlRelationalTableModelVTable](fcQSqlRelationalTableModel_vdata(self)[])
  let self = QSqlRelationalTableModel(h: self)
  let slotval1 = row
  let slotval2 = count
  let slotval3 = gen_qabstractitemmodel_types.QModelIndex(h: parent, owned: false)
  var virtualReturn = vtbl[].insertRows(self, slotval1, slotval2, slotval3)
  virtualReturn

proc fcQSqlRelationalTableModel_vtable_callback_selectRow(self: pointer, row: cint): bool {.cdecl.} =
  let vtbl = cast[ptr QSqlRelationalTableModelVTable](fcQSqlRelationalTableModel_vdata(self)[])
  let self = QSqlRelationalTableModel(h: self)
  let slotval1 = row
  var virtualReturn = vtbl[].selectRow(self, slotval1)
  virtualReturn

proc fcQSqlRelationalTableModel_vtable_callback_submit(self: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QSqlRelationalTableModelVTable](fcQSqlRelationalTableModel_vdata(self)[])
  let self = QSqlRelationalTableModel(h: self)
  var virtualReturn = vtbl[].submit(self)
  virtualReturn

proc fcQSqlRelationalTableModel_vtable_callback_revert(self: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QSqlRelationalTableModelVTable](fcQSqlRelationalTableModel_vdata(self)[])
  let self = QSqlRelationalTableModel(h: self)
  vtbl[].revert(self)

proc fcQSqlRelationalTableModel_vtable_callback_deleteRowFromTable(self: pointer, row: cint): bool {.cdecl.} =
  let vtbl = cast[ptr QSqlRelationalTableModelVTable](fcQSqlRelationalTableModel_vdata(self)[])
  let self = QSqlRelationalTableModel(h: self)
  let slotval1 = row
  var virtualReturn = vtbl[].deleteRowFromTable(self, slotval1)
  virtualReturn

proc fcQSqlRelationalTableModel_vtable_callback_indexInQuery(self: pointer, item: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QSqlRelationalTableModelVTable](fcQSqlRelationalTableModel_vdata(self)[])
  let self = QSqlRelationalTableModel(h: self)
  let slotval1 = gen_qabstractitemmodel_types.QModelIndex(h: item, owned: false)
  var virtualReturn = vtbl[].indexInQuery(self, slotval1)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc fcQSqlRelationalTableModel_vtable_callback_columnCount(self: pointer, parent: pointer): cint {.cdecl.} =
  let vtbl = cast[ptr QSqlRelationalTableModelVTable](fcQSqlRelationalTableModel_vdata(self)[])
  let self = QSqlRelationalTableModel(h: self)
  let slotval1 = gen_qabstractitemmodel_types.QModelIndex(h: parent, owned: false)
  var virtualReturn = vtbl[].columnCount(self, slotval1)
  virtualReturn

proc fcQSqlRelationalTableModel_vtable_callback_setHeaderData(self: pointer, section: cint, orientation: cint, value: pointer, role: cint): bool {.cdecl.} =
  let vtbl = cast[ptr QSqlRelationalTableModelVTable](fcQSqlRelationalTableModel_vdata(self)[])
  let self = QSqlRelationalTableModel(h: self)
  let slotval1 = section
  let slotval2 = cint(orientation)
  let slotval3 = gen_qvariant_types.QVariant(h: value, owned: false)
  let slotval4 = role
  var virtualReturn = vtbl[].setHeaderData(self, slotval1, slotval2, slotval3, slotval4)
  virtualReturn

proc fcQSqlRelationalTableModel_vtable_callback_insertColumns(self: pointer, column: cint, count: cint, parent: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QSqlRelationalTableModelVTable](fcQSqlRelationalTableModel_vdata(self)[])
  let self = QSqlRelationalTableModel(h: self)
  let slotval1 = column
  let slotval2 = count
  let slotval3 = gen_qabstractitemmodel_types.QModelIndex(h: parent, owned: false)
  var virtualReturn = vtbl[].insertColumns(self, slotval1, slotval2, slotval3)
  virtualReturn

proc fcQSqlRelationalTableModel_vtable_callback_fetchMore(self: pointer, parent: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QSqlRelationalTableModelVTable](fcQSqlRelationalTableModel_vdata(self)[])
  let self = QSqlRelationalTableModel(h: self)
  let slotval1 = gen_qabstractitemmodel_types.QModelIndex(h: parent, owned: false)
  vtbl[].fetchMore(self, slotval1)

proc fcQSqlRelationalTableModel_vtable_callback_canFetchMore(self: pointer, parent: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QSqlRelationalTableModelVTable](fcQSqlRelationalTableModel_vdata(self)[])
  let self = QSqlRelationalTableModel(h: self)
  let slotval1 = gen_qabstractitemmodel_types.QModelIndex(h: parent, owned: false)
  var virtualReturn = vtbl[].canFetchMore(self, slotval1)
  virtualReturn

proc fcQSqlRelationalTableModel_vtable_callback_roleNames(self: pointer): struct_seaqt_map {.cdecl.} =
  let vtbl = cast[ptr QSqlRelationalTableModelVTable](fcQSqlRelationalTableModel_vdata(self)[])
  let self = QSqlRelationalTableModel(h: self)
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

proc fcQSqlRelationalTableModel_vtable_callback_queryChange(self: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QSqlRelationalTableModelVTable](fcQSqlRelationalTableModel_vdata(self)[])
  let self = QSqlRelationalTableModel(h: self)
  vtbl[].queryChange(self)

proc fcQSqlRelationalTableModel_vtable_callback_index(self: pointer, row: cint, column: cint, parent: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QSqlRelationalTableModelVTable](fcQSqlRelationalTableModel_vdata(self)[])
  let self = QSqlRelationalTableModel(h: self)
  let slotval1 = row
  let slotval2 = column
  let slotval3 = gen_qabstractitemmodel_types.QModelIndex(h: parent, owned: false)
  var virtualReturn = vtbl[].index(self, slotval1, slotval2, slotval3)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc fcQSqlRelationalTableModel_vtable_callback_sibling(self: pointer, row: cint, column: cint, idx: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QSqlRelationalTableModelVTable](fcQSqlRelationalTableModel_vdata(self)[])
  let self = QSqlRelationalTableModel(h: self)
  let slotval1 = row
  let slotval2 = column
  let slotval3 = gen_qabstractitemmodel_types.QModelIndex(h: idx, owned: false)
  var virtualReturn = vtbl[].sibling(self, slotval1, slotval2, slotval3)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc fcQSqlRelationalTableModel_vtable_callback_dropMimeData(self: pointer, data: pointer, action: cint, row: cint, column: cint, parent: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QSqlRelationalTableModelVTable](fcQSqlRelationalTableModel_vdata(self)[])
  let self = QSqlRelationalTableModel(h: self)
  let slotval1 = gen_qmimedata_types.QMimeData(h: data, owned: false)
  let slotval2 = cint(action)
  let slotval3 = row
  let slotval4 = column
  let slotval5 = gen_qabstractitemmodel_types.QModelIndex(h: parent, owned: false)
  var virtualReturn = vtbl[].dropMimeData(self, slotval1, slotval2, slotval3, slotval4, slotval5)
  virtualReturn

proc fcQSqlRelationalTableModel_vtable_callback_itemData(self: pointer, index: pointer): struct_seaqt_map {.cdecl.} =
  let vtbl = cast[ptr QSqlRelationalTableModelVTable](fcQSqlRelationalTableModel_vdata(self)[])
  let self = QSqlRelationalTableModel(h: self)
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

proc fcQSqlRelationalTableModel_vtable_callback_setItemData(self: pointer, index: pointer, roles: struct_seaqt_map): bool {.cdecl.} =
  let vtbl = cast[ptr QSqlRelationalTableModelVTable](fcQSqlRelationalTableModel_vdata(self)[])
  let self = QSqlRelationalTableModel(h: self)
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

proc fcQSqlRelationalTableModel_vtable_callback_mimeTypes(self: pointer): struct_seaqt_array {.cdecl.} =
  let vtbl = cast[ptr QSqlRelationalTableModelVTable](fcQSqlRelationalTableModel_vdata(self)[])
  let self = QSqlRelationalTableModel(h: self)
  var virtualReturn = vtbl[].mimeTypes(self)
  var virtualReturn_CArray = cast[ptr UncheckedArray[struct_seaqt_string]](if len(virtualReturn) > 0: c_malloc(c_sizet(sizeof(struct_seaqt_string) * len(virtualReturn))) else: nil)
  for i in 0..<len(virtualReturn):
    var virtualReturn_i_copy = if len(virtualReturn[i]) > 0: c_malloc(csize_t(len(virtualReturn[i]))) else: nil
    if len(virtualReturn[i]) > 0: copyMem(virtualReturn_i_copy, addr virtualReturn[i][0], csize_t(len(virtualReturn[i])))
    virtualReturn_CArray[i] = struct_seaqt_string(data: virtualReturn_i_copy, len: csize_t(len(virtualReturn[i])))

  struct_seaqt_array(len: csize_t(len(virtualReturn)), data: if len(virtualReturn) == 0: nil else: addr(virtualReturn_CArray[0]))

proc fcQSqlRelationalTableModel_vtable_callback_mimeData(self: pointer, indexes: struct_seaqt_array): pointer {.cdecl.} =
  let vtbl = cast[ptr QSqlRelationalTableModelVTable](fcQSqlRelationalTableModel_vdata(self)[])
  let self = QSqlRelationalTableModel(h: self)
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

proc fcQSqlRelationalTableModel_vtable_callback_canDropMimeData(self: pointer, data: pointer, action: cint, row: cint, column: cint, parent: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QSqlRelationalTableModelVTable](fcQSqlRelationalTableModel_vdata(self)[])
  let self = QSqlRelationalTableModel(h: self)
  let slotval1 = gen_qmimedata_types.QMimeData(h: data, owned: false)
  let slotval2 = cint(action)
  let slotval3 = row
  let slotval4 = column
  let slotval5 = gen_qabstractitemmodel_types.QModelIndex(h: parent, owned: false)
  var virtualReturn = vtbl[].canDropMimeData(self, slotval1, slotval2, slotval3, slotval4, slotval5)
  virtualReturn

proc fcQSqlRelationalTableModel_vtable_callback_supportedDropActions(self: pointer): cint {.cdecl.} =
  let vtbl = cast[ptr QSqlRelationalTableModelVTable](fcQSqlRelationalTableModel_vdata(self)[])
  let self = QSqlRelationalTableModel(h: self)
  var virtualReturn = vtbl[].supportedDropActions(self)
  cint(virtualReturn)

proc fcQSqlRelationalTableModel_vtable_callback_supportedDragActions(self: pointer): cint {.cdecl.} =
  let vtbl = cast[ptr QSqlRelationalTableModelVTable](fcQSqlRelationalTableModel_vdata(self)[])
  let self = QSqlRelationalTableModel(h: self)
  var virtualReturn = vtbl[].supportedDragActions(self)
  cint(virtualReturn)

proc fcQSqlRelationalTableModel_vtable_callback_moveRows(self: pointer, sourceParent: pointer, sourceRow: cint, count: cint, destinationParent: pointer, destinationChild: cint): bool {.cdecl.} =
  let vtbl = cast[ptr QSqlRelationalTableModelVTable](fcQSqlRelationalTableModel_vdata(self)[])
  let self = QSqlRelationalTableModel(h: self)
  let slotval1 = gen_qabstractitemmodel_types.QModelIndex(h: sourceParent, owned: false)
  let slotval2 = sourceRow
  let slotval3 = count
  let slotval4 = gen_qabstractitemmodel_types.QModelIndex(h: destinationParent, owned: false)
  let slotval5 = destinationChild
  var virtualReturn = vtbl[].moveRows(self, slotval1, slotval2, slotval3, slotval4, slotval5)
  virtualReturn

proc fcQSqlRelationalTableModel_vtable_callback_moveColumns(self: pointer, sourceParent: pointer, sourceColumn: cint, count: cint, destinationParent: pointer, destinationChild: cint): bool {.cdecl.} =
  let vtbl = cast[ptr QSqlRelationalTableModelVTable](fcQSqlRelationalTableModel_vdata(self)[])
  let self = QSqlRelationalTableModel(h: self)
  let slotval1 = gen_qabstractitemmodel_types.QModelIndex(h: sourceParent, owned: false)
  let slotval2 = sourceColumn
  let slotval3 = count
  let slotval4 = gen_qabstractitemmodel_types.QModelIndex(h: destinationParent, owned: false)
  let slotval5 = destinationChild
  var virtualReturn = vtbl[].moveColumns(self, slotval1, slotval2, slotval3, slotval4, slotval5)
  virtualReturn

proc fcQSqlRelationalTableModel_vtable_callback_buddy(self: pointer, index: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QSqlRelationalTableModelVTable](fcQSqlRelationalTableModel_vdata(self)[])
  let self = QSqlRelationalTableModel(h: self)
  let slotval1 = gen_qabstractitemmodel_types.QModelIndex(h: index, owned: false)
  var virtualReturn = vtbl[].buddy(self, slotval1)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc fcQSqlRelationalTableModel_vtable_callback_match(self: pointer, start: pointer, role: cint, value: pointer, hits: cint, flags: cint): struct_seaqt_array {.cdecl.} =
  let vtbl = cast[ptr QSqlRelationalTableModelVTable](fcQSqlRelationalTableModel_vdata(self)[])
  let self = QSqlRelationalTableModel(h: self)
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

proc fcQSqlRelationalTableModel_vtable_callback_span(self: pointer, index: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QSqlRelationalTableModelVTable](fcQSqlRelationalTableModel_vdata(self)[])
  let self = QSqlRelationalTableModel(h: self)
  let slotval1 = gen_qabstractitemmodel_types.QModelIndex(h: index, owned: false)
  var virtualReturn = vtbl[].span(self, slotval1)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc fcQSqlRelationalTableModel_vtable_callback_event(self: pointer, event: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QSqlRelationalTableModelVTable](fcQSqlRelationalTableModel_vdata(self)[])
  let self = QSqlRelationalTableModel(h: self)
  let slotval1 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  var virtualReturn = vtbl[].event(self, slotval1)
  virtualReturn

proc fcQSqlRelationalTableModel_vtable_callback_eventFilter(self: pointer, watched: pointer, event: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QSqlRelationalTableModelVTable](fcQSqlRelationalTableModel_vdata(self)[])
  let self = QSqlRelationalTableModel(h: self)
  let slotval1 = gen_qobject_types.QObject(h: watched, owned: false)
  let slotval2 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  var virtualReturn = vtbl[].eventFilter(self, slotval1, slotval2)
  virtualReturn

proc fcQSqlRelationalTableModel_vtable_callback_timerEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QSqlRelationalTableModelVTable](fcQSqlRelationalTableModel_vdata(self)[])
  let self = QSqlRelationalTableModel(h: self)
  let slotval1 = gen_qcoreevent_types.QTimerEvent(h: event, owned: false)
  vtbl[].timerEvent(self, slotval1)

proc fcQSqlRelationalTableModel_vtable_callback_childEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QSqlRelationalTableModelVTable](fcQSqlRelationalTableModel_vdata(self)[])
  let self = QSqlRelationalTableModel(h: self)
  let slotval1 = gen_qcoreevent_types.QChildEvent(h: event, owned: false)
  vtbl[].childEvent(self, slotval1)

proc fcQSqlRelationalTableModel_vtable_callback_customEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QSqlRelationalTableModelVTable](fcQSqlRelationalTableModel_vdata(self)[])
  let self = QSqlRelationalTableModel(h: self)
  let slotval1 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  vtbl[].customEvent(self, slotval1)

proc fcQSqlRelationalTableModel_vtable_callback_connectNotify(self: pointer, signal: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QSqlRelationalTableModelVTable](fcQSqlRelationalTableModel_vdata(self)[])
  let self = QSqlRelationalTableModel(h: self)
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal, owned: false)
  vtbl[].connectNotify(self, slotval1)

proc fcQSqlRelationalTableModel_vtable_callback_disconnectNotify(self: pointer, signal: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QSqlRelationalTableModelVTable](fcQSqlRelationalTableModel_vdata(self)[])
  let self = QSqlRelationalTableModel(h: self)
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal, owned: false)
  vtbl[].disconnectNotify(self, slotval1)

type VirtualQSqlRelationalTableModel* {.inheritable.} = ref object of QSqlRelationalTableModel
  vtbl*: cQSqlRelationalTableModelVTable

method metaObject*(self: VirtualQSqlRelationalTableModel): gen_qobjectdefs_types.QMetaObject {.base.} =
  QSqlRelationalTableModelmetaObject(self[])
method metacast*(self: VirtualQSqlRelationalTableModel, param1: cstring): pointer {.base.} =
  QSqlRelationalTableModelmetacast(self[], param1)
method metacall*(self: VirtualQSqlRelationalTableModel, param1: cint, param2: cint, param3: pointer): cint {.base.} =
  QSqlRelationalTableModelmetacall(self[], param1, param2, param3)
method data*(self: VirtualQSqlRelationalTableModel, item: gen_qabstractitemmodel_types.QModelIndex, role: cint): gen_qvariant_types.QVariant {.base.} =
  QSqlRelationalTableModeldata(self[], item, role)
method setData*(self: VirtualQSqlRelationalTableModel, item: gen_qabstractitemmodel_types.QModelIndex, value: gen_qvariant_types.QVariant, role: cint): bool {.base.} =
  QSqlRelationalTableModelsetData(self[], item, value, role)
method removeColumns*(self: VirtualQSqlRelationalTableModel, column: cint, count: cint, parent: gen_qabstractitemmodel_types.QModelIndex): bool {.base.} =
  QSqlRelationalTableModelremoveColumns(self[], column, count, parent)
method clear*(self: VirtualQSqlRelationalTableModel): void {.base.} =
  QSqlRelationalTableModelclear(self[])
method select*(self: VirtualQSqlRelationalTableModel): bool {.base.} =
  QSqlRelationalTableModelselect(self[])
method setTable*(self: VirtualQSqlRelationalTableModel, tableName: openArray[char]): void {.base.} =
  QSqlRelationalTableModelsetTable(self[], tableName)
method setRelation*(self: VirtualQSqlRelationalTableModel, column: cint, relation: gen_qsqlrelationaltablemodel_types.QSqlRelation): void {.base.} =
  QSqlRelationalTableModelsetRelation(self[], column, relation)
method relationModel*(self: VirtualQSqlRelationalTableModel, column: cint): gen_qsqltablemodel_types.QSqlTableModel {.base.} =
  QSqlRelationalTableModelrelationModel(self[], column)
method revertRow*(self: VirtualQSqlRelationalTableModel, row: cint): void {.base.} =
  QSqlRelationalTableModelrevertRow(self[], row)
method selectStatement*(self: VirtualQSqlRelationalTableModel): string {.base.} =
  QSqlRelationalTableModelselectStatement(self[])
method updateRowInTable*(self: VirtualQSqlRelationalTableModel, row: cint, values: gen_qsqlrecord_types.QSqlRecord): bool {.base.} =
  QSqlRelationalTableModelupdateRowInTable(self[], row, values)
method insertRowIntoTable*(self: VirtualQSqlRelationalTableModel, values: gen_qsqlrecord_types.QSqlRecord): bool {.base.} =
  QSqlRelationalTableModelinsertRowIntoTable(self[], values)
method orderByClause*(self: VirtualQSqlRelationalTableModel): string {.base.} =
  QSqlRelationalTableModelorderByClause(self[])
method flags*(self: VirtualQSqlRelationalTableModel, index: gen_qabstractitemmodel_types.QModelIndex): cint {.base.} =
  QSqlRelationalTableModelflags(self[], index)
method headerData*(self: VirtualQSqlRelationalTableModel, section: cint, orientation: cint, role: cint): gen_qvariant_types.QVariant {.base.} =
  QSqlRelationalTableModelheaderData(self[], section, orientation, role)
method setEditStrategy*(self: VirtualQSqlRelationalTableModel, strategy: cint): void {.base.} =
  QSqlRelationalTableModelsetEditStrategy(self[], strategy)
method sort*(self: VirtualQSqlRelationalTableModel, column: cint, order: cint): void {.base.} =
  QSqlRelationalTableModelsort(self[], column, order)
method setSort*(self: VirtualQSqlRelationalTableModel, column: cint, order: cint): void {.base.} =
  QSqlRelationalTableModelsetSort(self[], column, order)
method setFilter*(self: VirtualQSqlRelationalTableModel, filter: openArray[char]): void {.base.} =
  QSqlRelationalTableModelsetFilter(self[], filter)
method rowCount*(self: VirtualQSqlRelationalTableModel, parent: gen_qabstractitemmodel_types.QModelIndex): cint {.base.} =
  QSqlRelationalTableModelrowCount(self[], parent)
method removeRows*(self: VirtualQSqlRelationalTableModel, row: cint, count: cint, parent: gen_qabstractitemmodel_types.QModelIndex): bool {.base.} =
  QSqlRelationalTableModelremoveRows(self[], row, count, parent)
method insertRows*(self: VirtualQSqlRelationalTableModel, row: cint, count: cint, parent: gen_qabstractitemmodel_types.QModelIndex): bool {.base.} =
  QSqlRelationalTableModelinsertRows(self[], row, count, parent)
method selectRow*(self: VirtualQSqlRelationalTableModel, row: cint): bool {.base.} =
  QSqlRelationalTableModelselectRow(self[], row)
method submit*(self: VirtualQSqlRelationalTableModel): bool {.base.} =
  QSqlRelationalTableModelsubmit(self[])
method revert*(self: VirtualQSqlRelationalTableModel): void {.base.} =
  QSqlRelationalTableModelrevert(self[])
method deleteRowFromTable*(self: VirtualQSqlRelationalTableModel, row: cint): bool {.base.} =
  QSqlRelationalTableModeldeleteRowFromTable(self[], row)
method indexInQuery*(self: VirtualQSqlRelationalTableModel, item: gen_qabstractitemmodel_types.QModelIndex): gen_qabstractitemmodel_types.QModelIndex {.base.} =
  QSqlRelationalTableModelindexInQuery(self[], item)
method columnCount*(self: VirtualQSqlRelationalTableModel, parent: gen_qabstractitemmodel_types.QModelIndex): cint {.base.} =
  QSqlRelationalTableModelcolumnCount(self[], parent)
method setHeaderData*(self: VirtualQSqlRelationalTableModel, section: cint, orientation: cint, value: gen_qvariant_types.QVariant, role: cint): bool {.base.} =
  QSqlRelationalTableModelsetHeaderData(self[], section, orientation, value, role)
method insertColumns*(self: VirtualQSqlRelationalTableModel, column: cint, count: cint, parent: gen_qabstractitemmodel_types.QModelIndex): bool {.base.} =
  QSqlRelationalTableModelinsertColumns(self[], column, count, parent)
method fetchMore*(self: VirtualQSqlRelationalTableModel, parent: gen_qabstractitemmodel_types.QModelIndex): void {.base.} =
  QSqlRelationalTableModelfetchMore(self[], parent)
method canFetchMore*(self: VirtualQSqlRelationalTableModel, parent: gen_qabstractitemmodel_types.QModelIndex): bool {.base.} =
  QSqlRelationalTableModelcanFetchMore(self[], parent)
method roleNames*(self: VirtualQSqlRelationalTableModel): Table[cint,seq[byte]] {.base.} =
  QSqlRelationalTableModelroleNames(self[])
method queryChange*(self: VirtualQSqlRelationalTableModel): void {.base.} =
  QSqlRelationalTableModelqueryChange(self[])
method index*(self: VirtualQSqlRelationalTableModel, row: cint, column: cint, parent: gen_qabstractitemmodel_types.QModelIndex): gen_qabstractitemmodel_types.QModelIndex {.base.} =
  QSqlRelationalTableModelindex(self[], row, column, parent)
method sibling*(self: VirtualQSqlRelationalTableModel, row: cint, column: cint, idx: gen_qabstractitemmodel_types.QModelIndex): gen_qabstractitemmodel_types.QModelIndex {.base.} =
  QSqlRelationalTableModelsibling(self[], row, column, idx)
method dropMimeData*(self: VirtualQSqlRelationalTableModel, data: gen_qmimedata_types.QMimeData, action: cint, row: cint, column: cint, parent: gen_qabstractitemmodel_types.QModelIndex): bool {.base.} =
  QSqlRelationalTableModeldropMimeData(self[], data, action, row, column, parent)
method itemData*(self: VirtualQSqlRelationalTableModel, index: gen_qabstractitemmodel_types.QModelIndex): Table[cint,gen_qvariant_types.QVariant] {.base.} =
  QSqlRelationalTableModelitemData(self[], index)
method setItemData*(self: VirtualQSqlRelationalTableModel, index: gen_qabstractitemmodel_types.QModelIndex, roles: Table[cint,gen_qvariant_types.QVariant]): bool {.base.} =
  QSqlRelationalTableModelsetItemData(self[], index, roles)
method mimeTypes*(self: VirtualQSqlRelationalTableModel): seq[string] {.base.} =
  QSqlRelationalTableModelmimeTypes(self[])
method mimeData*(self: VirtualQSqlRelationalTableModel, indexes: openArray[gen_qabstractitemmodel_types.QModelIndex]): gen_qmimedata_types.QMimeData {.base.} =
  QSqlRelationalTableModelmimeData(self[], indexes)
method canDropMimeData*(self: VirtualQSqlRelationalTableModel, data: gen_qmimedata_types.QMimeData, action: cint, row: cint, column: cint, parent: gen_qabstractitemmodel_types.QModelIndex): bool {.base.} =
  QSqlRelationalTableModelcanDropMimeData(self[], data, action, row, column, parent)
method supportedDropActions*(self: VirtualQSqlRelationalTableModel): cint {.base.} =
  QSqlRelationalTableModelsupportedDropActions(self[])
method supportedDragActions*(self: VirtualQSqlRelationalTableModel): cint {.base.} =
  QSqlRelationalTableModelsupportedDragActions(self[])
method moveRows*(self: VirtualQSqlRelationalTableModel, sourceParent: gen_qabstractitemmodel_types.QModelIndex, sourceRow: cint, count: cint, destinationParent: gen_qabstractitemmodel_types.QModelIndex, destinationChild: cint): bool {.base.} =
  QSqlRelationalTableModelmoveRows(self[], sourceParent, sourceRow, count, destinationParent, destinationChild)
method moveColumns*(self: VirtualQSqlRelationalTableModel, sourceParent: gen_qabstractitemmodel_types.QModelIndex, sourceColumn: cint, count: cint, destinationParent: gen_qabstractitemmodel_types.QModelIndex, destinationChild: cint): bool {.base.} =
  QSqlRelationalTableModelmoveColumns(self[], sourceParent, sourceColumn, count, destinationParent, destinationChild)
method buddy*(self: VirtualQSqlRelationalTableModel, index: gen_qabstractitemmodel_types.QModelIndex): gen_qabstractitemmodel_types.QModelIndex {.base.} =
  QSqlRelationalTableModelbuddy(self[], index)
method match*(self: VirtualQSqlRelationalTableModel, start: gen_qabstractitemmodel_types.QModelIndex, role: cint, value: gen_qvariant_types.QVariant, hits: cint, flags: cint): seq[gen_qabstractitemmodel_types.QModelIndex] {.base.} =
  QSqlRelationalTableModelmatch(self[], start, role, value, hits, flags)
method span*(self: VirtualQSqlRelationalTableModel, index: gen_qabstractitemmodel_types.QModelIndex): gen_qsize_types.QSize {.base.} =
  QSqlRelationalTableModelspan(self[], index)
method event*(self: VirtualQSqlRelationalTableModel, event: gen_qcoreevent_types.QEvent): bool {.base.} =
  QSqlRelationalTableModelevent(self[], event)
method eventFilter*(self: VirtualQSqlRelationalTableModel, watched: gen_qobject_types.QObject, event: gen_qcoreevent_types.QEvent): bool {.base.} =
  QSqlRelationalTableModeleventFilter(self[], watched, event)
method timerEvent*(self: VirtualQSqlRelationalTableModel, event: gen_qcoreevent_types.QTimerEvent): void {.base.} =
  QSqlRelationalTableModeltimerEvent(self[], event)
method childEvent*(self: VirtualQSqlRelationalTableModel, event: gen_qcoreevent_types.QChildEvent): void {.base.} =
  QSqlRelationalTableModelchildEvent(self[], event)
method customEvent*(self: VirtualQSqlRelationalTableModel, event: gen_qcoreevent_types.QEvent): void {.base.} =
  QSqlRelationalTableModelcustomEvent(self[], event)
method connectNotify*(self: VirtualQSqlRelationalTableModel, signal: gen_qmetaobject_types.QMetaMethod): void {.base.} =
  QSqlRelationalTableModelconnectNotify(self[], signal)
method disconnectNotify*(self: VirtualQSqlRelationalTableModel, signal: gen_qmetaobject_types.QMetaMethod): void {.base.} =
  QSqlRelationalTableModeldisconnectNotify(self[], signal)

proc fcQSqlRelationalTableModel_method_callback_metaObject(self: pointer): pointer {.cdecl.} =
  let inst = cast[VirtualQSqlRelationalTableModel](fcQSqlRelationalTableModel_vdata(self)[])
  var virtualReturn = inst.metaObject()
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc fcQSqlRelationalTableModel_method_callback_metacast(self: pointer, param1: cstring): pointer {.cdecl.} =
  let inst = cast[VirtualQSqlRelationalTableModel](fcQSqlRelationalTableModel_vdata(self)[])
  let slotval1 = (param1)
  var virtualReturn = inst.metacast(slotval1)
  virtualReturn

proc fcQSqlRelationalTableModel_method_callback_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.cdecl.} =
  let inst = cast[VirtualQSqlRelationalTableModel](fcQSqlRelationalTableModel_vdata(self)[])
  let slotval1 = cint(param1)
  let slotval2 = param2
  let slotval3 = param3
  var virtualReturn = inst.metacall(slotval1, slotval2, slotval3)
  virtualReturn

proc fcQSqlRelationalTableModel_method_callback_data(self: pointer, item: pointer, role: cint): pointer {.cdecl.} =
  let inst = cast[VirtualQSqlRelationalTableModel](fcQSqlRelationalTableModel_vdata(self)[])
  let slotval1 = gen_qabstractitemmodel_types.QModelIndex(h: item, owned: false)
  let slotval2 = role
  var virtualReturn = inst.data(slotval1, slotval2)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc fcQSqlRelationalTableModel_method_callback_setData(self: pointer, item: pointer, value: pointer, role: cint): bool {.cdecl.} =
  let inst = cast[VirtualQSqlRelationalTableModel](fcQSqlRelationalTableModel_vdata(self)[])
  let slotval1 = gen_qabstractitemmodel_types.QModelIndex(h: item, owned: false)
  let slotval2 = gen_qvariant_types.QVariant(h: value, owned: false)
  let slotval3 = role
  var virtualReturn = inst.setData(slotval1, slotval2, slotval3)
  virtualReturn

proc fcQSqlRelationalTableModel_method_callback_removeColumns(self: pointer, column: cint, count: cint, parent: pointer): bool {.cdecl.} =
  let inst = cast[VirtualQSqlRelationalTableModel](fcQSqlRelationalTableModel_vdata(self)[])
  let slotval1 = column
  let slotval2 = count
  let slotval3 = gen_qabstractitemmodel_types.QModelIndex(h: parent, owned: false)
  var virtualReturn = inst.removeColumns(slotval1, slotval2, slotval3)
  virtualReturn

proc fcQSqlRelationalTableModel_method_callback_clear(self: pointer): void {.cdecl.} =
  let inst = cast[VirtualQSqlRelationalTableModel](fcQSqlRelationalTableModel_vdata(self)[])
  inst.clear()

proc fcQSqlRelationalTableModel_method_callback_select(self: pointer): bool {.cdecl.} =
  let inst = cast[VirtualQSqlRelationalTableModel](fcQSqlRelationalTableModel_vdata(self)[])
  var virtualReturn = inst.select()
  virtualReturn

proc fcQSqlRelationalTableModel_method_callback_setTable(self: pointer, tableName: struct_seaqt_string): void {.cdecl.} =
  let inst = cast[VirtualQSqlRelationalTableModel](fcQSqlRelationalTableModel_vdata(self)[])
  let vtableName_ms = tableName
  let vtableNamex_ret = string.fromBytes(vtableName_ms)
  c_free(vtableName_ms.data)
  let slotval1 = vtableNamex_ret
  inst.setTable(slotval1)

proc fcQSqlRelationalTableModel_method_callback_setRelation(self: pointer, column: cint, relation: pointer): void {.cdecl.} =
  let inst = cast[VirtualQSqlRelationalTableModel](fcQSqlRelationalTableModel_vdata(self)[])
  let slotval1 = column
  let slotval2 = gen_qsqlrelationaltablemodel_types.QSqlRelation(h: relation, owned: false)
  inst.setRelation(slotval1, slotval2)

proc fcQSqlRelationalTableModel_method_callback_relationModel(self: pointer, column: cint): pointer {.cdecl.} =
  let inst = cast[VirtualQSqlRelationalTableModel](fcQSqlRelationalTableModel_vdata(self)[])
  let slotval1 = column
  var virtualReturn = inst.relationModel(slotval1)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc fcQSqlRelationalTableModel_method_callback_revertRow(self: pointer, row: cint): void {.cdecl.} =
  let inst = cast[VirtualQSqlRelationalTableModel](fcQSqlRelationalTableModel_vdata(self)[])
  let slotval1 = row
  inst.revertRow(slotval1)

proc fcQSqlRelationalTableModel_method_callback_selectStatement(self: pointer): struct_seaqt_string {.cdecl.} =
  let inst = cast[VirtualQSqlRelationalTableModel](fcQSqlRelationalTableModel_vdata(self)[])
  var virtualReturn = inst.selectStatement()
  var virtualReturn_copy = if len(virtualReturn) > 0: c_malloc(csize_t(len(virtualReturn))) else: nil
  if len(virtualReturn) > 0: copyMem(virtualReturn_copy, addr virtualReturn[0], csize_t(len(virtualReturn)))
  struct_seaqt_string(data: virtualReturn_copy, len: csize_t(len(virtualReturn)))

proc fcQSqlRelationalTableModel_method_callback_updateRowInTable(self: pointer, row: cint, values: pointer): bool {.cdecl.} =
  let inst = cast[VirtualQSqlRelationalTableModel](fcQSqlRelationalTableModel_vdata(self)[])
  let slotval1 = row
  let slotval2 = gen_qsqlrecord_types.QSqlRecord(h: values, owned: false)
  var virtualReturn = inst.updateRowInTable(slotval1, slotval2)
  virtualReturn

proc fcQSqlRelationalTableModel_method_callback_insertRowIntoTable(self: pointer, values: pointer): bool {.cdecl.} =
  let inst = cast[VirtualQSqlRelationalTableModel](fcQSqlRelationalTableModel_vdata(self)[])
  let slotval1 = gen_qsqlrecord_types.QSqlRecord(h: values, owned: false)
  var virtualReturn = inst.insertRowIntoTable(slotval1)
  virtualReturn

proc fcQSqlRelationalTableModel_method_callback_orderByClause(self: pointer): struct_seaqt_string {.cdecl.} =
  let inst = cast[VirtualQSqlRelationalTableModel](fcQSqlRelationalTableModel_vdata(self)[])
  var virtualReturn = inst.orderByClause()
  var virtualReturn_copy = if len(virtualReturn) > 0: c_malloc(csize_t(len(virtualReturn))) else: nil
  if len(virtualReturn) > 0: copyMem(virtualReturn_copy, addr virtualReturn[0], csize_t(len(virtualReturn)))
  struct_seaqt_string(data: virtualReturn_copy, len: csize_t(len(virtualReturn)))

proc fcQSqlRelationalTableModel_method_callback_flags(self: pointer, index: pointer): cint {.cdecl.} =
  let inst = cast[VirtualQSqlRelationalTableModel](fcQSqlRelationalTableModel_vdata(self)[])
  let slotval1 = gen_qabstractitemmodel_types.QModelIndex(h: index, owned: false)
  var virtualReturn = inst.flags(slotval1)
  cint(virtualReturn)

proc fcQSqlRelationalTableModel_method_callback_headerData(self: pointer, section: cint, orientation: cint, role: cint): pointer {.cdecl.} =
  let inst = cast[VirtualQSqlRelationalTableModel](fcQSqlRelationalTableModel_vdata(self)[])
  let slotval1 = section
  let slotval2 = cint(orientation)
  let slotval3 = role
  var virtualReturn = inst.headerData(slotval1, slotval2, slotval3)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc fcQSqlRelationalTableModel_method_callback_setEditStrategy(self: pointer, strategy: cint): void {.cdecl.} =
  let inst = cast[VirtualQSqlRelationalTableModel](fcQSqlRelationalTableModel_vdata(self)[])
  let slotval1 = cint(strategy)
  inst.setEditStrategy(slotval1)

proc fcQSqlRelationalTableModel_method_callback_sort(self: pointer, column: cint, order: cint): void {.cdecl.} =
  let inst = cast[VirtualQSqlRelationalTableModel](fcQSqlRelationalTableModel_vdata(self)[])
  let slotval1 = column
  let slotval2 = cint(order)
  inst.sort(slotval1, slotval2)

proc fcQSqlRelationalTableModel_method_callback_setSort(self: pointer, column: cint, order: cint): void {.cdecl.} =
  let inst = cast[VirtualQSqlRelationalTableModel](fcQSqlRelationalTableModel_vdata(self)[])
  let slotval1 = column
  let slotval2 = cint(order)
  inst.setSort(slotval1, slotval2)

proc fcQSqlRelationalTableModel_method_callback_setFilter(self: pointer, filter: struct_seaqt_string): void {.cdecl.} =
  let inst = cast[VirtualQSqlRelationalTableModel](fcQSqlRelationalTableModel_vdata(self)[])
  let vfilter_ms = filter
  let vfilterx_ret = string.fromBytes(vfilter_ms)
  c_free(vfilter_ms.data)
  let slotval1 = vfilterx_ret
  inst.setFilter(slotval1)

proc fcQSqlRelationalTableModel_method_callback_rowCount(self: pointer, parent: pointer): cint {.cdecl.} =
  let inst = cast[VirtualQSqlRelationalTableModel](fcQSqlRelationalTableModel_vdata(self)[])
  let slotval1 = gen_qabstractitemmodel_types.QModelIndex(h: parent, owned: false)
  var virtualReturn = inst.rowCount(slotval1)
  virtualReturn

proc fcQSqlRelationalTableModel_method_callback_removeRows(self: pointer, row: cint, count: cint, parent: pointer): bool {.cdecl.} =
  let inst = cast[VirtualQSqlRelationalTableModel](fcQSqlRelationalTableModel_vdata(self)[])
  let slotval1 = row
  let slotval2 = count
  let slotval3 = gen_qabstractitemmodel_types.QModelIndex(h: parent, owned: false)
  var virtualReturn = inst.removeRows(slotval1, slotval2, slotval3)
  virtualReturn

proc fcQSqlRelationalTableModel_method_callback_insertRows(self: pointer, row: cint, count: cint, parent: pointer): bool {.cdecl.} =
  let inst = cast[VirtualQSqlRelationalTableModel](fcQSqlRelationalTableModel_vdata(self)[])
  let slotval1 = row
  let slotval2 = count
  let slotval3 = gen_qabstractitemmodel_types.QModelIndex(h: parent, owned: false)
  var virtualReturn = inst.insertRows(slotval1, slotval2, slotval3)
  virtualReturn

proc fcQSqlRelationalTableModel_method_callback_selectRow(self: pointer, row: cint): bool {.cdecl.} =
  let inst = cast[VirtualQSqlRelationalTableModel](fcQSqlRelationalTableModel_vdata(self)[])
  let slotval1 = row
  var virtualReturn = inst.selectRow(slotval1)
  virtualReturn

proc fcQSqlRelationalTableModel_method_callback_submit(self: pointer): bool {.cdecl.} =
  let inst = cast[VirtualQSqlRelationalTableModel](fcQSqlRelationalTableModel_vdata(self)[])
  var virtualReturn = inst.submit()
  virtualReturn

proc fcQSqlRelationalTableModel_method_callback_revert(self: pointer): void {.cdecl.} =
  let inst = cast[VirtualQSqlRelationalTableModel](fcQSqlRelationalTableModel_vdata(self)[])
  inst.revert()

proc fcQSqlRelationalTableModel_method_callback_deleteRowFromTable(self: pointer, row: cint): bool {.cdecl.} =
  let inst = cast[VirtualQSqlRelationalTableModel](fcQSqlRelationalTableModel_vdata(self)[])
  let slotval1 = row
  var virtualReturn = inst.deleteRowFromTable(slotval1)
  virtualReturn

proc fcQSqlRelationalTableModel_method_callback_indexInQuery(self: pointer, item: pointer): pointer {.cdecl.} =
  let inst = cast[VirtualQSqlRelationalTableModel](fcQSqlRelationalTableModel_vdata(self)[])
  let slotval1 = gen_qabstractitemmodel_types.QModelIndex(h: item, owned: false)
  var virtualReturn = inst.indexInQuery(slotval1)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc fcQSqlRelationalTableModel_method_callback_columnCount(self: pointer, parent: pointer): cint {.cdecl.} =
  let inst = cast[VirtualQSqlRelationalTableModel](fcQSqlRelationalTableModel_vdata(self)[])
  let slotval1 = gen_qabstractitemmodel_types.QModelIndex(h: parent, owned: false)
  var virtualReturn = inst.columnCount(slotval1)
  virtualReturn

proc fcQSqlRelationalTableModel_method_callback_setHeaderData(self: pointer, section: cint, orientation: cint, value: pointer, role: cint): bool {.cdecl.} =
  let inst = cast[VirtualQSqlRelationalTableModel](fcQSqlRelationalTableModel_vdata(self)[])
  let slotval1 = section
  let slotval2 = cint(orientation)
  let slotval3 = gen_qvariant_types.QVariant(h: value, owned: false)
  let slotval4 = role
  var virtualReturn = inst.setHeaderData(slotval1, slotval2, slotval3, slotval4)
  virtualReturn

proc fcQSqlRelationalTableModel_method_callback_insertColumns(self: pointer, column: cint, count: cint, parent: pointer): bool {.cdecl.} =
  let inst = cast[VirtualQSqlRelationalTableModel](fcQSqlRelationalTableModel_vdata(self)[])
  let slotval1 = column
  let slotval2 = count
  let slotval3 = gen_qabstractitemmodel_types.QModelIndex(h: parent, owned: false)
  var virtualReturn = inst.insertColumns(slotval1, slotval2, slotval3)
  virtualReturn

proc fcQSqlRelationalTableModel_method_callback_fetchMore(self: pointer, parent: pointer): void {.cdecl.} =
  let inst = cast[VirtualQSqlRelationalTableModel](fcQSqlRelationalTableModel_vdata(self)[])
  let slotval1 = gen_qabstractitemmodel_types.QModelIndex(h: parent, owned: false)
  inst.fetchMore(slotval1)

proc fcQSqlRelationalTableModel_method_callback_canFetchMore(self: pointer, parent: pointer): bool {.cdecl.} =
  let inst = cast[VirtualQSqlRelationalTableModel](fcQSqlRelationalTableModel_vdata(self)[])
  let slotval1 = gen_qabstractitemmodel_types.QModelIndex(h: parent, owned: false)
  var virtualReturn = inst.canFetchMore(slotval1)
  virtualReturn

proc fcQSqlRelationalTableModel_method_callback_roleNames(self: pointer): struct_seaqt_map {.cdecl.} =
  let inst = cast[VirtualQSqlRelationalTableModel](fcQSqlRelationalTableModel_vdata(self)[])
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

proc fcQSqlRelationalTableModel_method_callback_queryChange(self: pointer): void {.cdecl.} =
  let inst = cast[VirtualQSqlRelationalTableModel](fcQSqlRelationalTableModel_vdata(self)[])
  inst.queryChange()

proc fcQSqlRelationalTableModel_method_callback_index(self: pointer, row: cint, column: cint, parent: pointer): pointer {.cdecl.} =
  let inst = cast[VirtualQSqlRelationalTableModel](fcQSqlRelationalTableModel_vdata(self)[])
  let slotval1 = row
  let slotval2 = column
  let slotval3 = gen_qabstractitemmodel_types.QModelIndex(h: parent, owned: false)
  var virtualReturn = inst.index(slotval1, slotval2, slotval3)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc fcQSqlRelationalTableModel_method_callback_sibling(self: pointer, row: cint, column: cint, idx: pointer): pointer {.cdecl.} =
  let inst = cast[VirtualQSqlRelationalTableModel](fcQSqlRelationalTableModel_vdata(self)[])
  let slotval1 = row
  let slotval2 = column
  let slotval3 = gen_qabstractitemmodel_types.QModelIndex(h: idx, owned: false)
  var virtualReturn = inst.sibling(slotval1, slotval2, slotval3)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc fcQSqlRelationalTableModel_method_callback_dropMimeData(self: pointer, data: pointer, action: cint, row: cint, column: cint, parent: pointer): bool {.cdecl.} =
  let inst = cast[VirtualQSqlRelationalTableModel](fcQSqlRelationalTableModel_vdata(self)[])
  let slotval1 = gen_qmimedata_types.QMimeData(h: data, owned: false)
  let slotval2 = cint(action)
  let slotval3 = row
  let slotval4 = column
  let slotval5 = gen_qabstractitemmodel_types.QModelIndex(h: parent, owned: false)
  var virtualReturn = inst.dropMimeData(slotval1, slotval2, slotval3, slotval4, slotval5)
  virtualReturn

proc fcQSqlRelationalTableModel_method_callback_itemData(self: pointer, index: pointer): struct_seaqt_map {.cdecl.} =
  let inst = cast[VirtualQSqlRelationalTableModel](fcQSqlRelationalTableModel_vdata(self)[])
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

proc fcQSqlRelationalTableModel_method_callback_setItemData(self: pointer, index: pointer, roles: struct_seaqt_map): bool {.cdecl.} =
  let inst = cast[VirtualQSqlRelationalTableModel](fcQSqlRelationalTableModel_vdata(self)[])
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

proc fcQSqlRelationalTableModel_method_callback_mimeTypes(self: pointer): struct_seaqt_array {.cdecl.} =
  let inst = cast[VirtualQSqlRelationalTableModel](fcQSqlRelationalTableModel_vdata(self)[])
  var virtualReturn = inst.mimeTypes()
  var virtualReturn_CArray = cast[ptr UncheckedArray[struct_seaqt_string]](if len(virtualReturn) > 0: c_malloc(c_sizet(sizeof(struct_seaqt_string) * len(virtualReturn))) else: nil)
  for i in 0..<len(virtualReturn):
    var virtualReturn_i_copy = if len(virtualReturn[i]) > 0: c_malloc(csize_t(len(virtualReturn[i]))) else: nil
    if len(virtualReturn[i]) > 0: copyMem(virtualReturn_i_copy, addr virtualReturn[i][0], csize_t(len(virtualReturn[i])))
    virtualReturn_CArray[i] = struct_seaqt_string(data: virtualReturn_i_copy, len: csize_t(len(virtualReturn[i])))

  struct_seaqt_array(len: csize_t(len(virtualReturn)), data: if len(virtualReturn) == 0: nil else: addr(virtualReturn_CArray[0]))

proc fcQSqlRelationalTableModel_method_callback_mimeData(self: pointer, indexes: struct_seaqt_array): pointer {.cdecl.} =
  let inst = cast[VirtualQSqlRelationalTableModel](fcQSqlRelationalTableModel_vdata(self)[])
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

proc fcQSqlRelationalTableModel_method_callback_canDropMimeData(self: pointer, data: pointer, action: cint, row: cint, column: cint, parent: pointer): bool {.cdecl.} =
  let inst = cast[VirtualQSqlRelationalTableModel](fcQSqlRelationalTableModel_vdata(self)[])
  let slotval1 = gen_qmimedata_types.QMimeData(h: data, owned: false)
  let slotval2 = cint(action)
  let slotval3 = row
  let slotval4 = column
  let slotval5 = gen_qabstractitemmodel_types.QModelIndex(h: parent, owned: false)
  var virtualReturn = inst.canDropMimeData(slotval1, slotval2, slotval3, slotval4, slotval5)
  virtualReturn

proc fcQSqlRelationalTableModel_method_callback_supportedDropActions(self: pointer): cint {.cdecl.} =
  let inst = cast[VirtualQSqlRelationalTableModel](fcQSqlRelationalTableModel_vdata(self)[])
  var virtualReturn = inst.supportedDropActions()
  cint(virtualReturn)

proc fcQSqlRelationalTableModel_method_callback_supportedDragActions(self: pointer): cint {.cdecl.} =
  let inst = cast[VirtualQSqlRelationalTableModel](fcQSqlRelationalTableModel_vdata(self)[])
  var virtualReturn = inst.supportedDragActions()
  cint(virtualReturn)

proc fcQSqlRelationalTableModel_method_callback_moveRows(self: pointer, sourceParent: pointer, sourceRow: cint, count: cint, destinationParent: pointer, destinationChild: cint): bool {.cdecl.} =
  let inst = cast[VirtualQSqlRelationalTableModel](fcQSqlRelationalTableModel_vdata(self)[])
  let slotval1 = gen_qabstractitemmodel_types.QModelIndex(h: sourceParent, owned: false)
  let slotval2 = sourceRow
  let slotval3 = count
  let slotval4 = gen_qabstractitemmodel_types.QModelIndex(h: destinationParent, owned: false)
  let slotval5 = destinationChild
  var virtualReturn = inst.moveRows(slotval1, slotval2, slotval3, slotval4, slotval5)
  virtualReturn

proc fcQSqlRelationalTableModel_method_callback_moveColumns(self: pointer, sourceParent: pointer, sourceColumn: cint, count: cint, destinationParent: pointer, destinationChild: cint): bool {.cdecl.} =
  let inst = cast[VirtualQSqlRelationalTableModel](fcQSqlRelationalTableModel_vdata(self)[])
  let slotval1 = gen_qabstractitemmodel_types.QModelIndex(h: sourceParent, owned: false)
  let slotval2 = sourceColumn
  let slotval3 = count
  let slotval4 = gen_qabstractitemmodel_types.QModelIndex(h: destinationParent, owned: false)
  let slotval5 = destinationChild
  var virtualReturn = inst.moveColumns(slotval1, slotval2, slotval3, slotval4, slotval5)
  virtualReturn

proc fcQSqlRelationalTableModel_method_callback_buddy(self: pointer, index: pointer): pointer {.cdecl.} =
  let inst = cast[VirtualQSqlRelationalTableModel](fcQSqlRelationalTableModel_vdata(self)[])
  let slotval1 = gen_qabstractitemmodel_types.QModelIndex(h: index, owned: false)
  var virtualReturn = inst.buddy(slotval1)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc fcQSqlRelationalTableModel_method_callback_match(self: pointer, start: pointer, role: cint, value: pointer, hits: cint, flags: cint): struct_seaqt_array {.cdecl.} =
  let inst = cast[VirtualQSqlRelationalTableModel](fcQSqlRelationalTableModel_vdata(self)[])
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

proc fcQSqlRelationalTableModel_method_callback_span(self: pointer, index: pointer): pointer {.cdecl.} =
  let inst = cast[VirtualQSqlRelationalTableModel](fcQSqlRelationalTableModel_vdata(self)[])
  let slotval1 = gen_qabstractitemmodel_types.QModelIndex(h: index, owned: false)
  var virtualReturn = inst.span(slotval1)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc fcQSqlRelationalTableModel_method_callback_event(self: pointer, event: pointer): bool {.cdecl.} =
  let inst = cast[VirtualQSqlRelationalTableModel](fcQSqlRelationalTableModel_vdata(self)[])
  let slotval1 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  var virtualReturn = inst.event(slotval1)
  virtualReturn

proc fcQSqlRelationalTableModel_method_callback_eventFilter(self: pointer, watched: pointer, event: pointer): bool {.cdecl.} =
  let inst = cast[VirtualQSqlRelationalTableModel](fcQSqlRelationalTableModel_vdata(self)[])
  let slotval1 = gen_qobject_types.QObject(h: watched, owned: false)
  let slotval2 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  var virtualReturn = inst.eventFilter(slotval1, slotval2)
  virtualReturn

proc fcQSqlRelationalTableModel_method_callback_timerEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQSqlRelationalTableModel](fcQSqlRelationalTableModel_vdata(self)[])
  let slotval1 = gen_qcoreevent_types.QTimerEvent(h: event, owned: false)
  inst.timerEvent(slotval1)

proc fcQSqlRelationalTableModel_method_callback_childEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQSqlRelationalTableModel](fcQSqlRelationalTableModel_vdata(self)[])
  let slotval1 = gen_qcoreevent_types.QChildEvent(h: event, owned: false)
  inst.childEvent(slotval1)

proc fcQSqlRelationalTableModel_method_callback_customEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQSqlRelationalTableModel](fcQSqlRelationalTableModel_vdata(self)[])
  let slotval1 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  inst.customEvent(slotval1)

proc fcQSqlRelationalTableModel_method_callback_connectNotify(self: pointer, signal: pointer): void {.cdecl.} =
  let inst = cast[VirtualQSqlRelationalTableModel](fcQSqlRelationalTableModel_vdata(self)[])
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal, owned: false)
  inst.connectNotify(slotval1)

proc fcQSqlRelationalTableModel_method_callback_disconnectNotify(self: pointer, signal: pointer): void {.cdecl.} =
  let inst = cast[VirtualQSqlRelationalTableModel](fcQSqlRelationalTableModel_vdata(self)[])
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal, owned: false)
  inst.disconnectNotify(slotval1)


proc setPrimaryKey*(self: gen_qsqlrelationaltablemodel_types.QSqlRelationalTableModel, key: gen_qsqlindex_types.QSqlIndex): void =
  fcQSqlRelationalTableModel_protectedbase_setPrimaryKey(self.h, key.h)

proc setQuery*(self: gen_qsqlrelationaltablemodel_types.QSqlRelationalTableModel, query: gen_qsqlquery_types.QSqlQuery): void =
  fcQSqlRelationalTableModel_protectedbase_setQuery(self.h, query.h)

proc primaryValues*(self: gen_qsqlrelationaltablemodel_types.QSqlRelationalTableModel, row: cint): gen_qsqlrecord_types.QSqlRecord =
  gen_qsqlrecord_types.QSqlRecord(h: fcQSqlRelationalTableModel_protectedbase_primaryValues(self.h, row), owned: true)

proc beginInsertRows*(self: gen_qsqlrelationaltablemodel_types.QSqlRelationalTableModel, parent: gen_qabstractitemmodel_types.QModelIndex, first: cint, last: cint): void =
  fcQSqlRelationalTableModel_protectedbase_beginInsertRows(self.h, parent.h, first, last)

proc endInsertRows*(self: gen_qsqlrelationaltablemodel_types.QSqlRelationalTableModel): void =
  fcQSqlRelationalTableModel_protectedbase_endInsertRows(self.h)

proc beginRemoveRows*(self: gen_qsqlrelationaltablemodel_types.QSqlRelationalTableModel, parent: gen_qabstractitemmodel_types.QModelIndex, first: cint, last: cint): void =
  fcQSqlRelationalTableModel_protectedbase_beginRemoveRows(self.h, parent.h, first, last)

proc endRemoveRows*(self: gen_qsqlrelationaltablemodel_types.QSqlRelationalTableModel): void =
  fcQSqlRelationalTableModel_protectedbase_endRemoveRows(self.h)

proc beginInsertColumns*(self: gen_qsqlrelationaltablemodel_types.QSqlRelationalTableModel, parent: gen_qabstractitemmodel_types.QModelIndex, first: cint, last: cint): void =
  fcQSqlRelationalTableModel_protectedbase_beginInsertColumns(self.h, parent.h, first, last)

proc endInsertColumns*(self: gen_qsqlrelationaltablemodel_types.QSqlRelationalTableModel): void =
  fcQSqlRelationalTableModel_protectedbase_endInsertColumns(self.h)

proc beginRemoveColumns*(self: gen_qsqlrelationaltablemodel_types.QSqlRelationalTableModel, parent: gen_qabstractitemmodel_types.QModelIndex, first: cint, last: cint): void =
  fcQSqlRelationalTableModel_protectedbase_beginRemoveColumns(self.h, parent.h, first, last)

proc endRemoveColumns*(self: gen_qsqlrelationaltablemodel_types.QSqlRelationalTableModel): void =
  fcQSqlRelationalTableModel_protectedbase_endRemoveColumns(self.h)

proc beginResetModel*(self: gen_qsqlrelationaltablemodel_types.QSqlRelationalTableModel): void =
  fcQSqlRelationalTableModel_protectedbase_beginResetModel(self.h)

proc endResetModel*(self: gen_qsqlrelationaltablemodel_types.QSqlRelationalTableModel): void =
  fcQSqlRelationalTableModel_protectedbase_endResetModel(self.h)

proc setLastError*(self: gen_qsqlrelationaltablemodel_types.QSqlRelationalTableModel, error: gen_qsqlerror_types.QSqlError): void =
  fcQSqlRelationalTableModel_protectedbase_setLastError(self.h, error.h)

proc resetInternalData*(self: gen_qsqlrelationaltablemodel_types.QSqlRelationalTableModel): void =
  fcQSqlRelationalTableModel_protectedbase_resetInternalData(self.h)

proc createIndex*(self: gen_qsqlrelationaltablemodel_types.QSqlRelationalTableModel, row: cint, column: cint): gen_qabstractitemmodel_types.QModelIndex =
  gen_qabstractitemmodel_types.QModelIndex(h: fcQSqlRelationalTableModel_protectedbase_createIndex(self.h, row, column), owned: true)

proc encodeData*(self: gen_qsqlrelationaltablemodel_types.QSqlRelationalTableModel, indexes: openArray[gen_qabstractitemmodel_types.QModelIndex], stream: gen_qdatastream_types.QDataStream): void =
  var indexes_CArray = newSeq[pointer](len(indexes))
  for i in 0..<len(indexes):
    indexes_CArray[i] = indexes[i].h

  fcQSqlRelationalTableModel_protectedbase_encodeData(self.h, struct_seaqt_array(len: csize_t(len(indexes)), data: if len(indexes) == 0: nil else: addr(indexes_CArray[0])), stream.h)

proc decodeData*(self: gen_qsqlrelationaltablemodel_types.QSqlRelationalTableModel, row: cint, column: cint, parent: gen_qabstractitemmodel_types.QModelIndex, stream: gen_qdatastream_types.QDataStream): bool =
  fcQSqlRelationalTableModel_protectedbase_decodeData(self.h, row, column, parent.h, stream.h)

proc beginMoveRows*(self: gen_qsqlrelationaltablemodel_types.QSqlRelationalTableModel, sourceParent: gen_qabstractitemmodel_types.QModelIndex, sourceFirst: cint, sourceLast: cint, destinationParent: gen_qabstractitemmodel_types.QModelIndex, destinationRow: cint): bool =
  fcQSqlRelationalTableModel_protectedbase_beginMoveRows(self.h, sourceParent.h, sourceFirst, sourceLast, destinationParent.h, destinationRow)

proc endMoveRows*(self: gen_qsqlrelationaltablemodel_types.QSqlRelationalTableModel): void =
  fcQSqlRelationalTableModel_protectedbase_endMoveRows(self.h)

proc beginMoveColumns*(self: gen_qsqlrelationaltablemodel_types.QSqlRelationalTableModel, sourceParent: gen_qabstractitemmodel_types.QModelIndex, sourceFirst: cint, sourceLast: cint, destinationParent: gen_qabstractitemmodel_types.QModelIndex, destinationColumn: cint): bool =
  fcQSqlRelationalTableModel_protectedbase_beginMoveColumns(self.h, sourceParent.h, sourceFirst, sourceLast, destinationParent.h, destinationColumn)

proc endMoveColumns*(self: gen_qsqlrelationaltablemodel_types.QSqlRelationalTableModel): void =
  fcQSqlRelationalTableModel_protectedbase_endMoveColumns(self.h)

proc changePersistentIndex*(self: gen_qsqlrelationaltablemodel_types.QSqlRelationalTableModel, fromVal: gen_qabstractitemmodel_types.QModelIndex, to: gen_qabstractitemmodel_types.QModelIndex): void =
  fcQSqlRelationalTableModel_protectedbase_changePersistentIndex(self.h, fromVal.h, to.h)

proc changePersistentIndexList*(self: gen_qsqlrelationaltablemodel_types.QSqlRelationalTableModel, fromVal: openArray[gen_qabstractitemmodel_types.QModelIndex], to: openArray[gen_qabstractitemmodel_types.QModelIndex]): void =
  var fromVal_CArray = newSeq[pointer](len(fromVal))
  for i in 0..<len(fromVal):
    fromVal_CArray[i] = fromVal[i].h

  var to_CArray = newSeq[pointer](len(to))
  for i in 0..<len(to):
    to_CArray[i] = to[i].h

  fcQSqlRelationalTableModel_protectedbase_changePersistentIndexList(self.h, struct_seaqt_array(len: csize_t(len(fromVal)), data: if len(fromVal) == 0: nil else: addr(fromVal_CArray[0])), struct_seaqt_array(len: csize_t(len(to)), data: if len(to) == 0: nil else: addr(to_CArray[0])))

proc persistentIndexList*(self: gen_qsqlrelationaltablemodel_types.QSqlRelationalTableModel): seq[gen_qabstractitemmodel_types.QModelIndex] =
  var v_ma = fcQSqlRelationalTableModel_protectedbase_persistentIndexList(self.h)
  var vx_ret = newSeq[gen_qabstractitemmodel_types.QModelIndex](int(v_ma.len))
  let v_outCast = cast[ptr UncheckedArray[pointer]](v_ma.data)
  for i in 0 ..< v_ma.len:
    vx_ret[i] = gen_qabstractitemmodel_types.QModelIndex(h: v_outCast[i], owned: true)
  c_free(v_ma.data)
  vx_ret

proc sender*(self: gen_qsqlrelationaltablemodel_types.QSqlRelationalTableModel): gen_qobject_types.QObject =
  gen_qobject_types.QObject(h: fcQSqlRelationalTableModel_protectedbase_sender(self.h), owned: false)

proc senderSignalIndex*(self: gen_qsqlrelationaltablemodel_types.QSqlRelationalTableModel): cint =
  fcQSqlRelationalTableModel_protectedbase_senderSignalIndex(self.h)

proc receivers*(self: gen_qsqlrelationaltablemodel_types.QSqlRelationalTableModel, signal: cstring): cint =
  fcQSqlRelationalTableModel_protectedbase_receivers(self.h, signal)

proc isSignalConnected*(self: gen_qsqlrelationaltablemodel_types.QSqlRelationalTableModel, signal: gen_qmetaobject_types.QMetaMethod): bool =
  fcQSqlRelationalTableModel_protectedbase_isSignalConnected(self.h, signal.h)

proc create*(T: type gen_qsqlrelationaltablemodel_types.QSqlRelationalTableModel,
    vtbl: ref QSqlRelationalTableModelVTable = nil): gen_qsqlrelationaltablemodel_types.QSqlRelationalTableModel =
  let vtbl = if vtbl == nil: new QSqlRelationalTableModelVTable else: vtbl
  GC_ref(vtbl)
  vtbl[].vtbl.destructor = proc(self: pointer) {.cdecl.} =
    let vtbl = cast[ref QSqlRelationalTableModelVTable](fcQSqlRelationalTableModel_vdata(self)[])
    GC_unref(vtbl)
  if not isNil(vtbl[].metaObject):
    vtbl[].vtbl.metaObject = fcQSqlRelationalTableModel_vtable_callback_metaObject
  if not isNil(vtbl[].metacast):
    vtbl[].vtbl.metacast = fcQSqlRelationalTableModel_vtable_callback_metacast
  if not isNil(vtbl[].metacall):
    vtbl[].vtbl.metacall = fcQSqlRelationalTableModel_vtable_callback_metacall
  if not isNil(vtbl[].data):
    vtbl[].vtbl.data = fcQSqlRelationalTableModel_vtable_callback_data
  if not isNil(vtbl[].setData):
    vtbl[].vtbl.setData = fcQSqlRelationalTableModel_vtable_callback_setData
  if not isNil(vtbl[].removeColumns):
    vtbl[].vtbl.removeColumns = fcQSqlRelationalTableModel_vtable_callback_removeColumns
  if not isNil(vtbl[].clear):
    vtbl[].vtbl.clear = fcQSqlRelationalTableModel_vtable_callback_clear
  if not isNil(vtbl[].select):
    vtbl[].vtbl.select = fcQSqlRelationalTableModel_vtable_callback_select
  if not isNil(vtbl[].setTable):
    vtbl[].vtbl.setTable = fcQSqlRelationalTableModel_vtable_callback_setTable
  if not isNil(vtbl[].setRelation):
    vtbl[].vtbl.setRelation = fcQSqlRelationalTableModel_vtable_callback_setRelation
  if not isNil(vtbl[].relationModel):
    vtbl[].vtbl.relationModel = fcQSqlRelationalTableModel_vtable_callback_relationModel
  if not isNil(vtbl[].revertRow):
    vtbl[].vtbl.revertRow = fcQSqlRelationalTableModel_vtable_callback_revertRow
  if not isNil(vtbl[].selectStatement):
    vtbl[].vtbl.selectStatement = fcQSqlRelationalTableModel_vtable_callback_selectStatement
  if not isNil(vtbl[].updateRowInTable):
    vtbl[].vtbl.updateRowInTable = fcQSqlRelationalTableModel_vtable_callback_updateRowInTable
  if not isNil(vtbl[].insertRowIntoTable):
    vtbl[].vtbl.insertRowIntoTable = fcQSqlRelationalTableModel_vtable_callback_insertRowIntoTable
  if not isNil(vtbl[].orderByClause):
    vtbl[].vtbl.orderByClause = fcQSqlRelationalTableModel_vtable_callback_orderByClause
  if not isNil(vtbl[].flags):
    vtbl[].vtbl.flags = fcQSqlRelationalTableModel_vtable_callback_flags
  if not isNil(vtbl[].headerData):
    vtbl[].vtbl.headerData = fcQSqlRelationalTableModel_vtable_callback_headerData
  if not isNil(vtbl[].setEditStrategy):
    vtbl[].vtbl.setEditStrategy = fcQSqlRelationalTableModel_vtable_callback_setEditStrategy
  if not isNil(vtbl[].sort):
    vtbl[].vtbl.sort = fcQSqlRelationalTableModel_vtable_callback_sort
  if not isNil(vtbl[].setSort):
    vtbl[].vtbl.setSort = fcQSqlRelationalTableModel_vtable_callback_setSort
  if not isNil(vtbl[].setFilter):
    vtbl[].vtbl.setFilter = fcQSqlRelationalTableModel_vtable_callback_setFilter
  if not isNil(vtbl[].rowCount):
    vtbl[].vtbl.rowCount = fcQSqlRelationalTableModel_vtable_callback_rowCount
  if not isNil(vtbl[].removeRows):
    vtbl[].vtbl.removeRows = fcQSqlRelationalTableModel_vtable_callback_removeRows
  if not isNil(vtbl[].insertRows):
    vtbl[].vtbl.insertRows = fcQSqlRelationalTableModel_vtable_callback_insertRows
  if not isNil(vtbl[].selectRow):
    vtbl[].vtbl.selectRow = fcQSqlRelationalTableModel_vtable_callback_selectRow
  if not isNil(vtbl[].submit):
    vtbl[].vtbl.submit = fcQSqlRelationalTableModel_vtable_callback_submit
  if not isNil(vtbl[].revert):
    vtbl[].vtbl.revert = fcQSqlRelationalTableModel_vtable_callback_revert
  if not isNil(vtbl[].deleteRowFromTable):
    vtbl[].vtbl.deleteRowFromTable = fcQSqlRelationalTableModel_vtable_callback_deleteRowFromTable
  if not isNil(vtbl[].indexInQuery):
    vtbl[].vtbl.indexInQuery = fcQSqlRelationalTableModel_vtable_callback_indexInQuery
  if not isNil(vtbl[].columnCount):
    vtbl[].vtbl.columnCount = fcQSqlRelationalTableModel_vtable_callback_columnCount
  if not isNil(vtbl[].setHeaderData):
    vtbl[].vtbl.setHeaderData = fcQSqlRelationalTableModel_vtable_callback_setHeaderData
  if not isNil(vtbl[].insertColumns):
    vtbl[].vtbl.insertColumns = fcQSqlRelationalTableModel_vtable_callback_insertColumns
  if not isNil(vtbl[].fetchMore):
    vtbl[].vtbl.fetchMore = fcQSqlRelationalTableModel_vtable_callback_fetchMore
  if not isNil(vtbl[].canFetchMore):
    vtbl[].vtbl.canFetchMore = fcQSqlRelationalTableModel_vtable_callback_canFetchMore
  if not isNil(vtbl[].roleNames):
    vtbl[].vtbl.roleNames = fcQSqlRelationalTableModel_vtable_callback_roleNames
  if not isNil(vtbl[].queryChange):
    vtbl[].vtbl.queryChange = fcQSqlRelationalTableModel_vtable_callback_queryChange
  if not isNil(vtbl[].index):
    vtbl[].vtbl.index = fcQSqlRelationalTableModel_vtable_callback_index
  if not isNil(vtbl[].sibling):
    vtbl[].vtbl.sibling = fcQSqlRelationalTableModel_vtable_callback_sibling
  if not isNil(vtbl[].dropMimeData):
    vtbl[].vtbl.dropMimeData = fcQSqlRelationalTableModel_vtable_callback_dropMimeData
  if not isNil(vtbl[].itemData):
    vtbl[].vtbl.itemData = fcQSqlRelationalTableModel_vtable_callback_itemData
  if not isNil(vtbl[].setItemData):
    vtbl[].vtbl.setItemData = fcQSqlRelationalTableModel_vtable_callback_setItemData
  if not isNil(vtbl[].mimeTypes):
    vtbl[].vtbl.mimeTypes = fcQSqlRelationalTableModel_vtable_callback_mimeTypes
  if not isNil(vtbl[].mimeData):
    vtbl[].vtbl.mimeData = fcQSqlRelationalTableModel_vtable_callback_mimeData
  if not isNil(vtbl[].canDropMimeData):
    vtbl[].vtbl.canDropMimeData = fcQSqlRelationalTableModel_vtable_callback_canDropMimeData
  if not isNil(vtbl[].supportedDropActions):
    vtbl[].vtbl.supportedDropActions = fcQSqlRelationalTableModel_vtable_callback_supportedDropActions
  if not isNil(vtbl[].supportedDragActions):
    vtbl[].vtbl.supportedDragActions = fcQSqlRelationalTableModel_vtable_callback_supportedDragActions
  if not isNil(vtbl[].moveRows):
    vtbl[].vtbl.moveRows = fcQSqlRelationalTableModel_vtable_callback_moveRows
  if not isNil(vtbl[].moveColumns):
    vtbl[].vtbl.moveColumns = fcQSqlRelationalTableModel_vtable_callback_moveColumns
  if not isNil(vtbl[].buddy):
    vtbl[].vtbl.buddy = fcQSqlRelationalTableModel_vtable_callback_buddy
  if not isNil(vtbl[].match):
    vtbl[].vtbl.match = fcQSqlRelationalTableModel_vtable_callback_match
  if not isNil(vtbl[].span):
    vtbl[].vtbl.span = fcQSqlRelationalTableModel_vtable_callback_span
  if not isNil(vtbl[].event):
    vtbl[].vtbl.event = fcQSqlRelationalTableModel_vtable_callback_event
  if not isNil(vtbl[].eventFilter):
    vtbl[].vtbl.eventFilter = fcQSqlRelationalTableModel_vtable_callback_eventFilter
  if not isNil(vtbl[].timerEvent):
    vtbl[].vtbl.timerEvent = fcQSqlRelationalTableModel_vtable_callback_timerEvent
  if not isNil(vtbl[].childEvent):
    vtbl[].vtbl.childEvent = fcQSqlRelationalTableModel_vtable_callback_childEvent
  if not isNil(vtbl[].customEvent):
    vtbl[].vtbl.customEvent = fcQSqlRelationalTableModel_vtable_callback_customEvent
  if not isNil(vtbl[].connectNotify):
    vtbl[].vtbl.connectNotify = fcQSqlRelationalTableModel_vtable_callback_connectNotify
  if not isNil(vtbl[].disconnectNotify):
    vtbl[].vtbl.disconnectNotify = fcQSqlRelationalTableModel_vtable_callback_disconnectNotify
  let tmp = gen_qsqlrelationaltablemodel_types.QSqlRelationalTableModel(h: fcQSqlRelationalTableModel_new(addr(vtbl[].vtbl), csize_t(sizeof(pointer))), owned: true)
  fcQSqlRelationalTableModel_vdata(tmp.h)[] = addr(vtbl[])
  tmp
proc create*(T: type gen_qsqlrelationaltablemodel_types.QSqlRelationalTableModel,
    parent: gen_qobject_types.QObject,
    vtbl: ref QSqlRelationalTableModelVTable = nil): gen_qsqlrelationaltablemodel_types.QSqlRelationalTableModel =
  let vtbl = if vtbl == nil: new QSqlRelationalTableModelVTable else: vtbl
  GC_ref(vtbl)
  vtbl[].vtbl.destructor = proc(self: pointer) {.cdecl.} =
    let vtbl = cast[ref QSqlRelationalTableModelVTable](fcQSqlRelationalTableModel_vdata(self)[])
    GC_unref(vtbl)
  if not isNil(vtbl[].metaObject):
    vtbl[].vtbl.metaObject = fcQSqlRelationalTableModel_vtable_callback_metaObject
  if not isNil(vtbl[].metacast):
    vtbl[].vtbl.metacast = fcQSqlRelationalTableModel_vtable_callback_metacast
  if not isNil(vtbl[].metacall):
    vtbl[].vtbl.metacall = fcQSqlRelationalTableModel_vtable_callback_metacall
  if not isNil(vtbl[].data):
    vtbl[].vtbl.data = fcQSqlRelationalTableModel_vtable_callback_data
  if not isNil(vtbl[].setData):
    vtbl[].vtbl.setData = fcQSqlRelationalTableModel_vtable_callback_setData
  if not isNil(vtbl[].removeColumns):
    vtbl[].vtbl.removeColumns = fcQSqlRelationalTableModel_vtable_callback_removeColumns
  if not isNil(vtbl[].clear):
    vtbl[].vtbl.clear = fcQSqlRelationalTableModel_vtable_callback_clear
  if not isNil(vtbl[].select):
    vtbl[].vtbl.select = fcQSqlRelationalTableModel_vtable_callback_select
  if not isNil(vtbl[].setTable):
    vtbl[].vtbl.setTable = fcQSqlRelationalTableModel_vtable_callback_setTable
  if not isNil(vtbl[].setRelation):
    vtbl[].vtbl.setRelation = fcQSqlRelationalTableModel_vtable_callback_setRelation
  if not isNil(vtbl[].relationModel):
    vtbl[].vtbl.relationModel = fcQSqlRelationalTableModel_vtable_callback_relationModel
  if not isNil(vtbl[].revertRow):
    vtbl[].vtbl.revertRow = fcQSqlRelationalTableModel_vtable_callback_revertRow
  if not isNil(vtbl[].selectStatement):
    vtbl[].vtbl.selectStatement = fcQSqlRelationalTableModel_vtable_callback_selectStatement
  if not isNil(vtbl[].updateRowInTable):
    vtbl[].vtbl.updateRowInTable = fcQSqlRelationalTableModel_vtable_callback_updateRowInTable
  if not isNil(vtbl[].insertRowIntoTable):
    vtbl[].vtbl.insertRowIntoTable = fcQSqlRelationalTableModel_vtable_callback_insertRowIntoTable
  if not isNil(vtbl[].orderByClause):
    vtbl[].vtbl.orderByClause = fcQSqlRelationalTableModel_vtable_callback_orderByClause
  if not isNil(vtbl[].flags):
    vtbl[].vtbl.flags = fcQSqlRelationalTableModel_vtable_callback_flags
  if not isNil(vtbl[].headerData):
    vtbl[].vtbl.headerData = fcQSqlRelationalTableModel_vtable_callback_headerData
  if not isNil(vtbl[].setEditStrategy):
    vtbl[].vtbl.setEditStrategy = fcQSqlRelationalTableModel_vtable_callback_setEditStrategy
  if not isNil(vtbl[].sort):
    vtbl[].vtbl.sort = fcQSqlRelationalTableModel_vtable_callback_sort
  if not isNil(vtbl[].setSort):
    vtbl[].vtbl.setSort = fcQSqlRelationalTableModel_vtable_callback_setSort
  if not isNil(vtbl[].setFilter):
    vtbl[].vtbl.setFilter = fcQSqlRelationalTableModel_vtable_callback_setFilter
  if not isNil(vtbl[].rowCount):
    vtbl[].vtbl.rowCount = fcQSqlRelationalTableModel_vtable_callback_rowCount
  if not isNil(vtbl[].removeRows):
    vtbl[].vtbl.removeRows = fcQSqlRelationalTableModel_vtable_callback_removeRows
  if not isNil(vtbl[].insertRows):
    vtbl[].vtbl.insertRows = fcQSqlRelationalTableModel_vtable_callback_insertRows
  if not isNil(vtbl[].selectRow):
    vtbl[].vtbl.selectRow = fcQSqlRelationalTableModel_vtable_callback_selectRow
  if not isNil(vtbl[].submit):
    vtbl[].vtbl.submit = fcQSqlRelationalTableModel_vtable_callback_submit
  if not isNil(vtbl[].revert):
    vtbl[].vtbl.revert = fcQSqlRelationalTableModel_vtable_callback_revert
  if not isNil(vtbl[].deleteRowFromTable):
    vtbl[].vtbl.deleteRowFromTable = fcQSqlRelationalTableModel_vtable_callback_deleteRowFromTable
  if not isNil(vtbl[].indexInQuery):
    vtbl[].vtbl.indexInQuery = fcQSqlRelationalTableModel_vtable_callback_indexInQuery
  if not isNil(vtbl[].columnCount):
    vtbl[].vtbl.columnCount = fcQSqlRelationalTableModel_vtable_callback_columnCount
  if not isNil(vtbl[].setHeaderData):
    vtbl[].vtbl.setHeaderData = fcQSqlRelationalTableModel_vtable_callback_setHeaderData
  if not isNil(vtbl[].insertColumns):
    vtbl[].vtbl.insertColumns = fcQSqlRelationalTableModel_vtable_callback_insertColumns
  if not isNil(vtbl[].fetchMore):
    vtbl[].vtbl.fetchMore = fcQSqlRelationalTableModel_vtable_callback_fetchMore
  if not isNil(vtbl[].canFetchMore):
    vtbl[].vtbl.canFetchMore = fcQSqlRelationalTableModel_vtable_callback_canFetchMore
  if not isNil(vtbl[].roleNames):
    vtbl[].vtbl.roleNames = fcQSqlRelationalTableModel_vtable_callback_roleNames
  if not isNil(vtbl[].queryChange):
    vtbl[].vtbl.queryChange = fcQSqlRelationalTableModel_vtable_callback_queryChange
  if not isNil(vtbl[].index):
    vtbl[].vtbl.index = fcQSqlRelationalTableModel_vtable_callback_index
  if not isNil(vtbl[].sibling):
    vtbl[].vtbl.sibling = fcQSqlRelationalTableModel_vtable_callback_sibling
  if not isNil(vtbl[].dropMimeData):
    vtbl[].vtbl.dropMimeData = fcQSqlRelationalTableModel_vtable_callback_dropMimeData
  if not isNil(vtbl[].itemData):
    vtbl[].vtbl.itemData = fcQSqlRelationalTableModel_vtable_callback_itemData
  if not isNil(vtbl[].setItemData):
    vtbl[].vtbl.setItemData = fcQSqlRelationalTableModel_vtable_callback_setItemData
  if not isNil(vtbl[].mimeTypes):
    vtbl[].vtbl.mimeTypes = fcQSqlRelationalTableModel_vtable_callback_mimeTypes
  if not isNil(vtbl[].mimeData):
    vtbl[].vtbl.mimeData = fcQSqlRelationalTableModel_vtable_callback_mimeData
  if not isNil(vtbl[].canDropMimeData):
    vtbl[].vtbl.canDropMimeData = fcQSqlRelationalTableModel_vtable_callback_canDropMimeData
  if not isNil(vtbl[].supportedDropActions):
    vtbl[].vtbl.supportedDropActions = fcQSqlRelationalTableModel_vtable_callback_supportedDropActions
  if not isNil(vtbl[].supportedDragActions):
    vtbl[].vtbl.supportedDragActions = fcQSqlRelationalTableModel_vtable_callback_supportedDragActions
  if not isNil(vtbl[].moveRows):
    vtbl[].vtbl.moveRows = fcQSqlRelationalTableModel_vtable_callback_moveRows
  if not isNil(vtbl[].moveColumns):
    vtbl[].vtbl.moveColumns = fcQSqlRelationalTableModel_vtable_callback_moveColumns
  if not isNil(vtbl[].buddy):
    vtbl[].vtbl.buddy = fcQSqlRelationalTableModel_vtable_callback_buddy
  if not isNil(vtbl[].match):
    vtbl[].vtbl.match = fcQSqlRelationalTableModel_vtable_callback_match
  if not isNil(vtbl[].span):
    vtbl[].vtbl.span = fcQSqlRelationalTableModel_vtable_callback_span
  if not isNil(vtbl[].event):
    vtbl[].vtbl.event = fcQSqlRelationalTableModel_vtable_callback_event
  if not isNil(vtbl[].eventFilter):
    vtbl[].vtbl.eventFilter = fcQSqlRelationalTableModel_vtable_callback_eventFilter
  if not isNil(vtbl[].timerEvent):
    vtbl[].vtbl.timerEvent = fcQSqlRelationalTableModel_vtable_callback_timerEvent
  if not isNil(vtbl[].childEvent):
    vtbl[].vtbl.childEvent = fcQSqlRelationalTableModel_vtable_callback_childEvent
  if not isNil(vtbl[].customEvent):
    vtbl[].vtbl.customEvent = fcQSqlRelationalTableModel_vtable_callback_customEvent
  if not isNil(vtbl[].connectNotify):
    vtbl[].vtbl.connectNotify = fcQSqlRelationalTableModel_vtable_callback_connectNotify
  if not isNil(vtbl[].disconnectNotify):
    vtbl[].vtbl.disconnectNotify = fcQSqlRelationalTableModel_vtable_callback_disconnectNotify
  let tmp = gen_qsqlrelationaltablemodel_types.QSqlRelationalTableModel(h: fcQSqlRelationalTableModel_new2(addr(vtbl[].vtbl), csize_t(sizeof(pointer)), parent.h), owned: true)
  fcQSqlRelationalTableModel_vdata(tmp.h)[] = addr(vtbl[])
  tmp
proc create*(T: type gen_qsqlrelationaltablemodel_types.QSqlRelationalTableModel,
    parent: gen_qobject_types.QObject, db: gen_qsqldatabase_types.QSqlDatabase,
    vtbl: ref QSqlRelationalTableModelVTable = nil): gen_qsqlrelationaltablemodel_types.QSqlRelationalTableModel =
  let vtbl = if vtbl == nil: new QSqlRelationalTableModelVTable else: vtbl
  GC_ref(vtbl)
  vtbl[].vtbl.destructor = proc(self: pointer) {.cdecl.} =
    let vtbl = cast[ref QSqlRelationalTableModelVTable](fcQSqlRelationalTableModel_vdata(self)[])
    GC_unref(vtbl)
  if not isNil(vtbl[].metaObject):
    vtbl[].vtbl.metaObject = fcQSqlRelationalTableModel_vtable_callback_metaObject
  if not isNil(vtbl[].metacast):
    vtbl[].vtbl.metacast = fcQSqlRelationalTableModel_vtable_callback_metacast
  if not isNil(vtbl[].metacall):
    vtbl[].vtbl.metacall = fcQSqlRelationalTableModel_vtable_callback_metacall
  if not isNil(vtbl[].data):
    vtbl[].vtbl.data = fcQSqlRelationalTableModel_vtable_callback_data
  if not isNil(vtbl[].setData):
    vtbl[].vtbl.setData = fcQSqlRelationalTableModel_vtable_callback_setData
  if not isNil(vtbl[].removeColumns):
    vtbl[].vtbl.removeColumns = fcQSqlRelationalTableModel_vtable_callback_removeColumns
  if not isNil(vtbl[].clear):
    vtbl[].vtbl.clear = fcQSqlRelationalTableModel_vtable_callback_clear
  if not isNil(vtbl[].select):
    vtbl[].vtbl.select = fcQSqlRelationalTableModel_vtable_callback_select
  if not isNil(vtbl[].setTable):
    vtbl[].vtbl.setTable = fcQSqlRelationalTableModel_vtable_callback_setTable
  if not isNil(vtbl[].setRelation):
    vtbl[].vtbl.setRelation = fcQSqlRelationalTableModel_vtable_callback_setRelation
  if not isNil(vtbl[].relationModel):
    vtbl[].vtbl.relationModel = fcQSqlRelationalTableModel_vtable_callback_relationModel
  if not isNil(vtbl[].revertRow):
    vtbl[].vtbl.revertRow = fcQSqlRelationalTableModel_vtable_callback_revertRow
  if not isNil(vtbl[].selectStatement):
    vtbl[].vtbl.selectStatement = fcQSqlRelationalTableModel_vtable_callback_selectStatement
  if not isNil(vtbl[].updateRowInTable):
    vtbl[].vtbl.updateRowInTable = fcQSqlRelationalTableModel_vtable_callback_updateRowInTable
  if not isNil(vtbl[].insertRowIntoTable):
    vtbl[].vtbl.insertRowIntoTable = fcQSqlRelationalTableModel_vtable_callback_insertRowIntoTable
  if not isNil(vtbl[].orderByClause):
    vtbl[].vtbl.orderByClause = fcQSqlRelationalTableModel_vtable_callback_orderByClause
  if not isNil(vtbl[].flags):
    vtbl[].vtbl.flags = fcQSqlRelationalTableModel_vtable_callback_flags
  if not isNil(vtbl[].headerData):
    vtbl[].vtbl.headerData = fcQSqlRelationalTableModel_vtable_callback_headerData
  if not isNil(vtbl[].setEditStrategy):
    vtbl[].vtbl.setEditStrategy = fcQSqlRelationalTableModel_vtable_callback_setEditStrategy
  if not isNil(vtbl[].sort):
    vtbl[].vtbl.sort = fcQSqlRelationalTableModel_vtable_callback_sort
  if not isNil(vtbl[].setSort):
    vtbl[].vtbl.setSort = fcQSqlRelationalTableModel_vtable_callback_setSort
  if not isNil(vtbl[].setFilter):
    vtbl[].vtbl.setFilter = fcQSqlRelationalTableModel_vtable_callback_setFilter
  if not isNil(vtbl[].rowCount):
    vtbl[].vtbl.rowCount = fcQSqlRelationalTableModel_vtable_callback_rowCount
  if not isNil(vtbl[].removeRows):
    vtbl[].vtbl.removeRows = fcQSqlRelationalTableModel_vtable_callback_removeRows
  if not isNil(vtbl[].insertRows):
    vtbl[].vtbl.insertRows = fcQSqlRelationalTableModel_vtable_callback_insertRows
  if not isNil(vtbl[].selectRow):
    vtbl[].vtbl.selectRow = fcQSqlRelationalTableModel_vtable_callback_selectRow
  if not isNil(vtbl[].submit):
    vtbl[].vtbl.submit = fcQSqlRelationalTableModel_vtable_callback_submit
  if not isNil(vtbl[].revert):
    vtbl[].vtbl.revert = fcQSqlRelationalTableModel_vtable_callback_revert
  if not isNil(vtbl[].deleteRowFromTable):
    vtbl[].vtbl.deleteRowFromTable = fcQSqlRelationalTableModel_vtable_callback_deleteRowFromTable
  if not isNil(vtbl[].indexInQuery):
    vtbl[].vtbl.indexInQuery = fcQSqlRelationalTableModel_vtable_callback_indexInQuery
  if not isNil(vtbl[].columnCount):
    vtbl[].vtbl.columnCount = fcQSqlRelationalTableModel_vtable_callback_columnCount
  if not isNil(vtbl[].setHeaderData):
    vtbl[].vtbl.setHeaderData = fcQSqlRelationalTableModel_vtable_callback_setHeaderData
  if not isNil(vtbl[].insertColumns):
    vtbl[].vtbl.insertColumns = fcQSqlRelationalTableModel_vtable_callback_insertColumns
  if not isNil(vtbl[].fetchMore):
    vtbl[].vtbl.fetchMore = fcQSqlRelationalTableModel_vtable_callback_fetchMore
  if not isNil(vtbl[].canFetchMore):
    vtbl[].vtbl.canFetchMore = fcQSqlRelationalTableModel_vtable_callback_canFetchMore
  if not isNil(vtbl[].roleNames):
    vtbl[].vtbl.roleNames = fcQSqlRelationalTableModel_vtable_callback_roleNames
  if not isNil(vtbl[].queryChange):
    vtbl[].vtbl.queryChange = fcQSqlRelationalTableModel_vtable_callback_queryChange
  if not isNil(vtbl[].index):
    vtbl[].vtbl.index = fcQSqlRelationalTableModel_vtable_callback_index
  if not isNil(vtbl[].sibling):
    vtbl[].vtbl.sibling = fcQSqlRelationalTableModel_vtable_callback_sibling
  if not isNil(vtbl[].dropMimeData):
    vtbl[].vtbl.dropMimeData = fcQSqlRelationalTableModel_vtable_callback_dropMimeData
  if not isNil(vtbl[].itemData):
    vtbl[].vtbl.itemData = fcQSqlRelationalTableModel_vtable_callback_itemData
  if not isNil(vtbl[].setItemData):
    vtbl[].vtbl.setItemData = fcQSqlRelationalTableModel_vtable_callback_setItemData
  if not isNil(vtbl[].mimeTypes):
    vtbl[].vtbl.mimeTypes = fcQSqlRelationalTableModel_vtable_callback_mimeTypes
  if not isNil(vtbl[].mimeData):
    vtbl[].vtbl.mimeData = fcQSqlRelationalTableModel_vtable_callback_mimeData
  if not isNil(vtbl[].canDropMimeData):
    vtbl[].vtbl.canDropMimeData = fcQSqlRelationalTableModel_vtable_callback_canDropMimeData
  if not isNil(vtbl[].supportedDropActions):
    vtbl[].vtbl.supportedDropActions = fcQSqlRelationalTableModel_vtable_callback_supportedDropActions
  if not isNil(vtbl[].supportedDragActions):
    vtbl[].vtbl.supportedDragActions = fcQSqlRelationalTableModel_vtable_callback_supportedDragActions
  if not isNil(vtbl[].moveRows):
    vtbl[].vtbl.moveRows = fcQSqlRelationalTableModel_vtable_callback_moveRows
  if not isNil(vtbl[].moveColumns):
    vtbl[].vtbl.moveColumns = fcQSqlRelationalTableModel_vtable_callback_moveColumns
  if not isNil(vtbl[].buddy):
    vtbl[].vtbl.buddy = fcQSqlRelationalTableModel_vtable_callback_buddy
  if not isNil(vtbl[].match):
    vtbl[].vtbl.match = fcQSqlRelationalTableModel_vtable_callback_match
  if not isNil(vtbl[].span):
    vtbl[].vtbl.span = fcQSqlRelationalTableModel_vtable_callback_span
  if not isNil(vtbl[].event):
    vtbl[].vtbl.event = fcQSqlRelationalTableModel_vtable_callback_event
  if not isNil(vtbl[].eventFilter):
    vtbl[].vtbl.eventFilter = fcQSqlRelationalTableModel_vtable_callback_eventFilter
  if not isNil(vtbl[].timerEvent):
    vtbl[].vtbl.timerEvent = fcQSqlRelationalTableModel_vtable_callback_timerEvent
  if not isNil(vtbl[].childEvent):
    vtbl[].vtbl.childEvent = fcQSqlRelationalTableModel_vtable_callback_childEvent
  if not isNil(vtbl[].customEvent):
    vtbl[].vtbl.customEvent = fcQSqlRelationalTableModel_vtable_callback_customEvent
  if not isNil(vtbl[].connectNotify):
    vtbl[].vtbl.connectNotify = fcQSqlRelationalTableModel_vtable_callback_connectNotify
  if not isNil(vtbl[].disconnectNotify):
    vtbl[].vtbl.disconnectNotify = fcQSqlRelationalTableModel_vtable_callback_disconnectNotify
  let tmp = gen_qsqlrelationaltablemodel_types.QSqlRelationalTableModel(h: fcQSqlRelationalTableModel_new3(addr(vtbl[].vtbl), csize_t(sizeof(pointer)), parent.h, db.h), owned: true)
  fcQSqlRelationalTableModel_vdata(tmp.h)[] = addr(vtbl[])
  tmp
const cQSqlRelationalTableModel_mvtbl = cQSqlRelationalTableModelVTable(
  destructor: proc(self: pointer) {.cdecl.} =
    let inst = cast[ptr typeof(VirtualQSqlRelationalTableModel()[])](self.fcQSqlRelationalTableModel_vdata()[])
    inst[].h = nil
    inst[].owned = false,

  metaObject: fcQSqlRelationalTableModel_method_callback_metaObject,
  metacast: fcQSqlRelationalTableModel_method_callback_metacast,
  metacall: fcQSqlRelationalTableModel_method_callback_metacall,
  data: fcQSqlRelationalTableModel_method_callback_data,
  setData: fcQSqlRelationalTableModel_method_callback_setData,
  removeColumns: fcQSqlRelationalTableModel_method_callback_removeColumns,
  clear: fcQSqlRelationalTableModel_method_callback_clear,
  select: fcQSqlRelationalTableModel_method_callback_select,
  setTable: fcQSqlRelationalTableModel_method_callback_setTable,
  setRelation: fcQSqlRelationalTableModel_method_callback_setRelation,
  relationModel: fcQSqlRelationalTableModel_method_callback_relationModel,
  revertRow: fcQSqlRelationalTableModel_method_callback_revertRow,
  selectStatement: fcQSqlRelationalTableModel_method_callback_selectStatement,
  updateRowInTable: fcQSqlRelationalTableModel_method_callback_updateRowInTable,
  insertRowIntoTable: fcQSqlRelationalTableModel_method_callback_insertRowIntoTable,
  orderByClause: fcQSqlRelationalTableModel_method_callback_orderByClause,
  flags: fcQSqlRelationalTableModel_method_callback_flags,
  headerData: fcQSqlRelationalTableModel_method_callback_headerData,
  setEditStrategy: fcQSqlRelationalTableModel_method_callback_setEditStrategy,
  sort: fcQSqlRelationalTableModel_method_callback_sort,
  setSort: fcQSqlRelationalTableModel_method_callback_setSort,
  setFilter: fcQSqlRelationalTableModel_method_callback_setFilter,
  rowCount: fcQSqlRelationalTableModel_method_callback_rowCount,
  removeRows: fcQSqlRelationalTableModel_method_callback_removeRows,
  insertRows: fcQSqlRelationalTableModel_method_callback_insertRows,
  selectRow: fcQSqlRelationalTableModel_method_callback_selectRow,
  submit: fcQSqlRelationalTableModel_method_callback_submit,
  revert: fcQSqlRelationalTableModel_method_callback_revert,
  deleteRowFromTable: fcQSqlRelationalTableModel_method_callback_deleteRowFromTable,
  indexInQuery: fcQSqlRelationalTableModel_method_callback_indexInQuery,
  columnCount: fcQSqlRelationalTableModel_method_callback_columnCount,
  setHeaderData: fcQSqlRelationalTableModel_method_callback_setHeaderData,
  insertColumns: fcQSqlRelationalTableModel_method_callback_insertColumns,
  fetchMore: fcQSqlRelationalTableModel_method_callback_fetchMore,
  canFetchMore: fcQSqlRelationalTableModel_method_callback_canFetchMore,
  roleNames: fcQSqlRelationalTableModel_method_callback_roleNames,
  queryChange: fcQSqlRelationalTableModel_method_callback_queryChange,
  index: fcQSqlRelationalTableModel_method_callback_index,
  sibling: fcQSqlRelationalTableModel_method_callback_sibling,
  dropMimeData: fcQSqlRelationalTableModel_method_callback_dropMimeData,
  itemData: fcQSqlRelationalTableModel_method_callback_itemData,
  setItemData: fcQSqlRelationalTableModel_method_callback_setItemData,
  mimeTypes: fcQSqlRelationalTableModel_method_callback_mimeTypes,
  mimeData: fcQSqlRelationalTableModel_method_callback_mimeData,
  canDropMimeData: fcQSqlRelationalTableModel_method_callback_canDropMimeData,
  supportedDropActions: fcQSqlRelationalTableModel_method_callback_supportedDropActions,
  supportedDragActions: fcQSqlRelationalTableModel_method_callback_supportedDragActions,
  moveRows: fcQSqlRelationalTableModel_method_callback_moveRows,
  moveColumns: fcQSqlRelationalTableModel_method_callback_moveColumns,
  buddy: fcQSqlRelationalTableModel_method_callback_buddy,
  match: fcQSqlRelationalTableModel_method_callback_match,
  span: fcQSqlRelationalTableModel_method_callback_span,
  event: fcQSqlRelationalTableModel_method_callback_event,
  eventFilter: fcQSqlRelationalTableModel_method_callback_eventFilter,
  timerEvent: fcQSqlRelationalTableModel_method_callback_timerEvent,
  childEvent: fcQSqlRelationalTableModel_method_callback_childEvent,
  customEvent: fcQSqlRelationalTableModel_method_callback_customEvent,
  connectNotify: fcQSqlRelationalTableModel_method_callback_connectNotify,
  disconnectNotify: fcQSqlRelationalTableModel_method_callback_disconnectNotify,
)
proc create*(T: type gen_qsqlrelationaltablemodel_types.QSqlRelationalTableModel,
    inst: VirtualQSqlRelationalTableModel) =
  if inst[].h != nil: delete(move(inst[]))
  inst[].h = fcQSqlRelationalTableModel_new(addr(cQSqlRelationalTableModel_mvtbl), csize_t(sizeof(pointer)))
  fcQSqlRelationalTableModel_vdata(inst[].h)[] = addr inst[]
  inst[].owned = true

proc create*(T: type gen_qsqlrelationaltablemodel_types.QSqlRelationalTableModel,
    parent: gen_qobject_types.QObject,
    inst: VirtualQSqlRelationalTableModel) =
  if inst[].h != nil: delete(move(inst[]))
  inst[].h = fcQSqlRelationalTableModel_new2(addr(cQSqlRelationalTableModel_mvtbl), csize_t(sizeof(pointer)), parent.h)
  fcQSqlRelationalTableModel_vdata(inst[].h)[] = addr inst[]
  inst[].owned = true

proc create*(T: type gen_qsqlrelationaltablemodel_types.QSqlRelationalTableModel,
    parent: gen_qobject_types.QObject, db: gen_qsqldatabase_types.QSqlDatabase,
    inst: VirtualQSqlRelationalTableModel) =
  if inst[].h != nil: delete(move(inst[]))
  inst[].h = fcQSqlRelationalTableModel_new3(addr(cQSqlRelationalTableModel_mvtbl), csize_t(sizeof(pointer)), parent.h, db.h)
  fcQSqlRelationalTableModel_vdata(inst[].h)[] = addr inst[]
  inst[].owned = true

proc staticMetaObject*(_: type gen_qsqlrelationaltablemodel_types.QSqlRelationalTableModel): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQSqlRelationalTableModel_staticMetaObject())
