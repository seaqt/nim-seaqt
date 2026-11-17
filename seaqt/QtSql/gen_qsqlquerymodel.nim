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


{.compile("gen_qsqlquerymodel.cpp", QtSqlCFlags).}


import ./gen_qsqlquerymodel_types
export gen_qsqlquerymodel_types

import
  ../QtCore/gen_qabstractitemmodel,
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
  ./gen_qsqlquery_types,
  ./gen_qsqlrecord_types,
  std/tables
export
  gen_qabstractitemmodel,
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
  gen_qsqlquery_types,
  gen_qsqlrecord_types

type cQSqlQueryModel*{.exportc: "QSqlQueryModel", incompleteStruct.} = object

proc fcQSqlQueryModel_metaObject(self: pointer): pointer {.importc: "QSqlQueryModel_metaObject".}
proc fcQSqlQueryModel_metacast(self: pointer, param1: cstring): pointer {.importc: "QSqlQueryModel_metacast".}
proc fcQSqlQueryModel_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.importc: "QSqlQueryModel_metacall".}
proc fcQSqlQueryModel_tr(s: cstring): struct_seaqt_string {.importc: "QSqlQueryModel_tr".}
proc fcQSqlQueryModel_trUtf8(s: cstring): struct_seaqt_string {.importc: "QSqlQueryModel_trUtf8".}
proc fcQSqlQueryModel_rowCount(self: pointer, parent: pointer): cint {.importc: "QSqlQueryModel_rowCount".}
proc fcQSqlQueryModel_columnCount(self: pointer, parent: pointer): cint {.importc: "QSqlQueryModel_columnCount".}
proc fcQSqlQueryModel_record(self: pointer, row: cint): pointer {.importc: "QSqlQueryModel_record".}
proc fcQSqlQueryModel_record2(self: pointer): pointer {.importc: "QSqlQueryModel_record2".}
proc fcQSqlQueryModel_data(self: pointer, item: pointer, role: cint): pointer {.importc: "QSqlQueryModel_data".}
proc fcQSqlQueryModel_headerData(self: pointer, section: cint, orientation: cint, role: cint): pointer {.importc: "QSqlQueryModel_headerData".}
proc fcQSqlQueryModel_setHeaderData(self: pointer, section: cint, orientation: cint, value: pointer, role: cint): bool {.importc: "QSqlQueryModel_setHeaderData".}
proc fcQSqlQueryModel_insertColumns(self: pointer, column: cint, count: cint, parent: pointer): bool {.importc: "QSqlQueryModel_insertColumns".}
proc fcQSqlQueryModel_removeColumns(self: pointer, column: cint, count: cint, parent: pointer): bool {.importc: "QSqlQueryModel_removeColumns".}
proc fcQSqlQueryModel_setQuery(self: pointer, query: pointer): void {.importc: "QSqlQueryModel_setQuery".}
proc fcQSqlQueryModel_setQueryWithQuery(self: pointer, query: struct_seaqt_string): void {.importc: "QSqlQueryModel_setQueryWithQuery".}
proc fcQSqlQueryModel_query(self: pointer): pointer {.importc: "QSqlQueryModel_query".}
proc fcQSqlQueryModel_clear(self: pointer): void {.importc: "QSqlQueryModel_clear".}
proc fcQSqlQueryModel_lastError(self: pointer): pointer {.importc: "QSqlQueryModel_lastError".}
proc fcQSqlQueryModel_fetchMore(self: pointer, parent: pointer): void {.importc: "QSqlQueryModel_fetchMore".}
proc fcQSqlQueryModel_canFetchMore(self: pointer, parent: pointer): bool {.importc: "QSqlQueryModel_canFetchMore".}
proc fcQSqlQueryModel_roleNames(self: pointer): struct_seaqt_map {.importc: "QSqlQueryModel_roleNames".}
proc fcQSqlQueryModel_tr2(s: cstring, c: cstring): struct_seaqt_string {.importc: "QSqlQueryModel_tr2".}
proc fcQSqlQueryModel_tr3(s: cstring, c: cstring, n: cint): struct_seaqt_string {.importc: "QSqlQueryModel_tr3".}
proc fcQSqlQueryModel_trUtf82(s: cstring, c: cstring): struct_seaqt_string {.importc: "QSqlQueryModel_trUtf82".}
proc fcQSqlQueryModel_trUtf83(s: cstring, c: cstring, n: cint): struct_seaqt_string {.importc: "QSqlQueryModel_trUtf83".}
proc fcQSqlQueryModel_setQuery2(self: pointer, query: struct_seaqt_string, db: pointer): void {.importc: "QSqlQueryModel_setQuery2".}
proc fcQSqlQueryModel_vdata(self: pointer): ptr pointer {.importc: "QSqlQueryModel_vdata".}
proc fvdata_cQSqlQueryModel(self: pointer): pointer {.importc: "vdata_QSqlQueryModel".}

type cQSqlQueryModelVTable {.pure.} = object
  destructor*: proc(self: pointer) {.cdecl, raises:[], gcsafe.}
  metaObject*: proc(self: pointer): pointer {.cdecl, raises: [], gcsafe.}
  metacast*: proc(self: pointer, param1: cstring): pointer {.cdecl, raises: [], gcsafe.}
  metacall*: proc(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.cdecl, raises: [], gcsafe.}
  rowCount*: proc(self: pointer, parent: pointer): cint {.cdecl, raises: [], gcsafe.}
  columnCount*: proc(self: pointer, parent: pointer): cint {.cdecl, raises: [], gcsafe.}
  data*: proc(self: pointer, item: pointer, role: cint): pointer {.cdecl, raises: [], gcsafe.}
  headerData*: proc(self: pointer, section: cint, orientation: cint, role: cint): pointer {.cdecl, raises: [], gcsafe.}
  setHeaderData*: proc(self: pointer, section: cint, orientation: cint, value: pointer, role: cint): bool {.cdecl, raises: [], gcsafe.}
  insertColumns*: proc(self: pointer, column: cint, count: cint, parent: pointer): bool {.cdecl, raises: [], gcsafe.}
  removeColumns*: proc(self: pointer, column: cint, count: cint, parent: pointer): bool {.cdecl, raises: [], gcsafe.}
  clear*: proc(self: pointer): void {.cdecl, raises: [], gcsafe.}
  fetchMore*: proc(self: pointer, parent: pointer): void {.cdecl, raises: [], gcsafe.}
  canFetchMore*: proc(self: pointer, parent: pointer): bool {.cdecl, raises: [], gcsafe.}
  roleNames*: proc(self: pointer): struct_seaqt_map {.cdecl, raises: [], gcsafe.}
  queryChange*: proc(self: pointer): void {.cdecl, raises: [], gcsafe.}
  indexInQuery*: proc(self: pointer, item: pointer): pointer {.cdecl, raises: [], gcsafe.}
  index*: proc(self: pointer, row: cint, column: cint, parent: pointer): pointer {.cdecl, raises: [], gcsafe.}
  sibling*: proc(self: pointer, row: cint, column: cint, idx: pointer): pointer {.cdecl, raises: [], gcsafe.}
  dropMimeData*: proc(self: pointer, data: pointer, action: cint, row: cint, column: cint, parent: pointer): bool {.cdecl, raises: [], gcsafe.}
  flags*: proc(self: pointer, index: pointer): cint {.cdecl, raises: [], gcsafe.}
  setData*: proc(self: pointer, index: pointer, value: pointer, role: cint): bool {.cdecl, raises: [], gcsafe.}
  itemData*: proc(self: pointer, index: pointer): struct_seaqt_map {.cdecl, raises: [], gcsafe.}
  setItemData*: proc(self: pointer, index: pointer, roles: struct_seaqt_map): bool {.cdecl, raises: [], gcsafe.}
  mimeTypes*: proc(self: pointer): struct_seaqt_array {.cdecl, raises: [], gcsafe.}
  mimeData*: proc(self: pointer, indexes: struct_seaqt_array): pointer {.cdecl, raises: [], gcsafe.}
  canDropMimeData*: proc(self: pointer, data: pointer, action: cint, row: cint, column: cint, parent: pointer): bool {.cdecl, raises: [], gcsafe.}
  supportedDropActions*: proc(self: pointer): cint {.cdecl, raises: [], gcsafe.}
  supportedDragActions*: proc(self: pointer): cint {.cdecl, raises: [], gcsafe.}
  insertRows*: proc(self: pointer, row: cint, count: cint, parent: pointer): bool {.cdecl, raises: [], gcsafe.}
  removeRows*: proc(self: pointer, row: cint, count: cint, parent: pointer): bool {.cdecl, raises: [], gcsafe.}
  moveRows*: proc(self: pointer, sourceParent: pointer, sourceRow: cint, count: cint, destinationParent: pointer, destinationChild: cint): bool {.cdecl, raises: [], gcsafe.}
  moveColumns*: proc(self: pointer, sourceParent: pointer, sourceColumn: cint, count: cint, destinationParent: pointer, destinationChild: cint): bool {.cdecl, raises: [], gcsafe.}
  sort*: proc(self: pointer, column: cint, order: cint): void {.cdecl, raises: [], gcsafe.}
  buddy*: proc(self: pointer, index: pointer): pointer {.cdecl, raises: [], gcsafe.}
  match*: proc(self: pointer, start: pointer, role: cint, value: pointer, hits: cint, flags: cint): struct_seaqt_array {.cdecl, raises: [], gcsafe.}
  span*: proc(self: pointer, index: pointer): pointer {.cdecl, raises: [], gcsafe.}
  submit*: proc(self: pointer): bool {.cdecl, raises: [], gcsafe.}
  revert*: proc(self: pointer): void {.cdecl, raises: [], gcsafe.}
  event*: proc(self: pointer, event: pointer): bool {.cdecl, raises: [], gcsafe.}
  eventFilter*: proc(self: pointer, watched: pointer, event: pointer): bool {.cdecl, raises: [], gcsafe.}
  timerEvent*: proc(self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  childEvent*: proc(self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  customEvent*: proc(self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  connectNotify*: proc(self: pointer, signal: pointer): void {.cdecl, raises: [], gcsafe.}
  disconnectNotify*: proc(self: pointer, signal: pointer): void {.cdecl, raises: [], gcsafe.}
proc fcQSqlQueryModel_virtualbase_metaObject(self: pointer): pointer {.importc: "QSqlQueryModel_virtualbase_metaObject".}
proc fcQSqlQueryModel_virtualbase_metacast(self: pointer, param1: cstring): pointer {.importc: "QSqlQueryModel_virtualbase_metacast".}
proc fcQSqlQueryModel_virtualbase_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.importc: "QSqlQueryModel_virtualbase_metacall".}
proc fcQSqlQueryModel_virtualbase_rowCount(self: pointer, parent: pointer): cint {.importc: "QSqlQueryModel_virtualbase_rowCount".}
proc fcQSqlQueryModel_virtualbase_columnCount(self: pointer, parent: pointer): cint {.importc: "QSqlQueryModel_virtualbase_columnCount".}
proc fcQSqlQueryModel_virtualbase_data(self: pointer, item: pointer, role: cint): pointer {.importc: "QSqlQueryModel_virtualbase_data".}
proc fcQSqlQueryModel_virtualbase_headerData(self: pointer, section: cint, orientation: cint, role: cint): pointer {.importc: "QSqlQueryModel_virtualbase_headerData".}
proc fcQSqlQueryModel_virtualbase_setHeaderData(self: pointer, section: cint, orientation: cint, value: pointer, role: cint): bool {.importc: "QSqlQueryModel_virtualbase_setHeaderData".}
proc fcQSqlQueryModel_virtualbase_insertColumns(self: pointer, column: cint, count: cint, parent: pointer): bool {.importc: "QSqlQueryModel_virtualbase_insertColumns".}
proc fcQSqlQueryModel_virtualbase_removeColumns(self: pointer, column: cint, count: cint, parent: pointer): bool {.importc: "QSqlQueryModel_virtualbase_removeColumns".}
proc fcQSqlQueryModel_virtualbase_clear(self: pointer): void {.importc: "QSqlQueryModel_virtualbase_clear".}
proc fcQSqlQueryModel_virtualbase_fetchMore(self: pointer, parent: pointer): void {.importc: "QSqlQueryModel_virtualbase_fetchMore".}
proc fcQSqlQueryModel_virtualbase_canFetchMore(self: pointer, parent: pointer): bool {.importc: "QSqlQueryModel_virtualbase_canFetchMore".}
proc fcQSqlQueryModel_virtualbase_roleNames(self: pointer): struct_seaqt_map {.importc: "QSqlQueryModel_virtualbase_roleNames".}
proc fcQSqlQueryModel_virtualbase_queryChange(self: pointer): void {.importc: "QSqlQueryModel_virtualbase_queryChange".}
proc fcQSqlQueryModel_virtualbase_indexInQuery(self: pointer, item: pointer): pointer {.importc: "QSqlQueryModel_virtualbase_indexInQuery".}
proc fcQSqlQueryModel_virtualbase_index(self: pointer, row: cint, column: cint, parent: pointer): pointer {.importc: "QSqlQueryModel_virtualbase_index".}
proc fcQSqlQueryModel_virtualbase_sibling(self: pointer, row: cint, column: cint, idx: pointer): pointer {.importc: "QSqlQueryModel_virtualbase_sibling".}
proc fcQSqlQueryModel_virtualbase_dropMimeData(self: pointer, data: pointer, action: cint, row: cint, column: cint, parent: pointer): bool {.importc: "QSqlQueryModel_virtualbase_dropMimeData".}
proc fcQSqlQueryModel_virtualbase_flags(self: pointer, index: pointer): cint {.importc: "QSqlQueryModel_virtualbase_flags".}
proc fcQSqlQueryModel_virtualbase_setData(self: pointer, index: pointer, value: pointer, role: cint): bool {.importc: "QSqlQueryModel_virtualbase_setData".}
proc fcQSqlQueryModel_virtualbase_itemData(self: pointer, index: pointer): struct_seaqt_map {.importc: "QSqlQueryModel_virtualbase_itemData".}
proc fcQSqlQueryModel_virtualbase_setItemData(self: pointer, index: pointer, roles: struct_seaqt_map): bool {.importc: "QSqlQueryModel_virtualbase_setItemData".}
proc fcQSqlQueryModel_virtualbase_mimeTypes(self: pointer): struct_seaqt_array {.importc: "QSqlQueryModel_virtualbase_mimeTypes".}
proc fcQSqlQueryModel_virtualbase_mimeData(self: pointer, indexes: struct_seaqt_array): pointer {.importc: "QSqlQueryModel_virtualbase_mimeData".}
proc fcQSqlQueryModel_virtualbase_canDropMimeData(self: pointer, data: pointer, action: cint, row: cint, column: cint, parent: pointer): bool {.importc: "QSqlQueryModel_virtualbase_canDropMimeData".}
proc fcQSqlQueryModel_virtualbase_supportedDropActions(self: pointer): cint {.importc: "QSqlQueryModel_virtualbase_supportedDropActions".}
proc fcQSqlQueryModel_virtualbase_supportedDragActions(self: pointer): cint {.importc: "QSqlQueryModel_virtualbase_supportedDragActions".}
proc fcQSqlQueryModel_virtualbase_insertRows(self: pointer, row: cint, count: cint, parent: pointer): bool {.importc: "QSqlQueryModel_virtualbase_insertRows".}
proc fcQSqlQueryModel_virtualbase_removeRows(self: pointer, row: cint, count: cint, parent: pointer): bool {.importc: "QSqlQueryModel_virtualbase_removeRows".}
proc fcQSqlQueryModel_virtualbase_moveRows(self: pointer, sourceParent: pointer, sourceRow: cint, count: cint, destinationParent: pointer, destinationChild: cint): bool {.importc: "QSqlQueryModel_virtualbase_moveRows".}
proc fcQSqlQueryModel_virtualbase_moveColumns(self: pointer, sourceParent: pointer, sourceColumn: cint, count: cint, destinationParent: pointer, destinationChild: cint): bool {.importc: "QSqlQueryModel_virtualbase_moveColumns".}
proc fcQSqlQueryModel_virtualbase_sort(self: pointer, column: cint, order: cint): void {.importc: "QSqlQueryModel_virtualbase_sort".}
proc fcQSqlQueryModel_virtualbase_buddy(self: pointer, index: pointer): pointer {.importc: "QSqlQueryModel_virtualbase_buddy".}
proc fcQSqlQueryModel_virtualbase_match(self: pointer, start: pointer, role: cint, value: pointer, hits: cint, flags: cint): struct_seaqt_array {.importc: "QSqlQueryModel_virtualbase_match".}
proc fcQSqlQueryModel_virtualbase_span(self: pointer, index: pointer): pointer {.importc: "QSqlQueryModel_virtualbase_span".}
proc fcQSqlQueryModel_virtualbase_submit(self: pointer): bool {.importc: "QSqlQueryModel_virtualbase_submit".}
proc fcQSqlQueryModel_virtualbase_revert(self: pointer): void {.importc: "QSqlQueryModel_virtualbase_revert".}
proc fcQSqlQueryModel_virtualbase_event(self: pointer, event: pointer): bool {.importc: "QSqlQueryModel_virtualbase_event".}
proc fcQSqlQueryModel_virtualbase_eventFilter(self: pointer, watched: pointer, event: pointer): bool {.importc: "QSqlQueryModel_virtualbase_eventFilter".}
proc fcQSqlQueryModel_virtualbase_timerEvent(self: pointer, event: pointer): void {.importc: "QSqlQueryModel_virtualbase_timerEvent".}
proc fcQSqlQueryModel_virtualbase_childEvent(self: pointer, event: pointer): void {.importc: "QSqlQueryModel_virtualbase_childEvent".}
proc fcQSqlQueryModel_virtualbase_customEvent(self: pointer, event: pointer): void {.importc: "QSqlQueryModel_virtualbase_customEvent".}
proc fcQSqlQueryModel_virtualbase_connectNotify(self: pointer, signal: pointer): void {.importc: "QSqlQueryModel_virtualbase_connectNotify".}
proc fcQSqlQueryModel_virtualbase_disconnectNotify(self: pointer, signal: pointer): void {.importc: "QSqlQueryModel_virtualbase_disconnectNotify".}
proc fcQSqlQueryModel_protectedbase_beginInsertRows(self: pointer, parent: pointer, first: cint, last: cint): void {.importc: "QSqlQueryModel_protectedbase_beginInsertRows".}
proc fcQSqlQueryModel_protectedbase_endInsertRows(self: pointer): void {.importc: "QSqlQueryModel_protectedbase_endInsertRows".}
proc fcQSqlQueryModel_protectedbase_beginRemoveRows(self: pointer, parent: pointer, first: cint, last: cint): void {.importc: "QSqlQueryModel_protectedbase_beginRemoveRows".}
proc fcQSqlQueryModel_protectedbase_endRemoveRows(self: pointer): void {.importc: "QSqlQueryModel_protectedbase_endRemoveRows".}
proc fcQSqlQueryModel_protectedbase_beginInsertColumns(self: pointer, parent: pointer, first: cint, last: cint): void {.importc: "QSqlQueryModel_protectedbase_beginInsertColumns".}
proc fcQSqlQueryModel_protectedbase_endInsertColumns(self: pointer): void {.importc: "QSqlQueryModel_protectedbase_endInsertColumns".}
proc fcQSqlQueryModel_protectedbase_beginRemoveColumns(self: pointer, parent: pointer, first: cint, last: cint): void {.importc: "QSqlQueryModel_protectedbase_beginRemoveColumns".}
proc fcQSqlQueryModel_protectedbase_endRemoveColumns(self: pointer): void {.importc: "QSqlQueryModel_protectedbase_endRemoveColumns".}
proc fcQSqlQueryModel_protectedbase_beginResetModel(self: pointer): void {.importc: "QSqlQueryModel_protectedbase_beginResetModel".}
proc fcQSqlQueryModel_protectedbase_endResetModel(self: pointer): void {.importc: "QSqlQueryModel_protectedbase_endResetModel".}
proc fcQSqlQueryModel_protectedbase_setLastError(self: pointer, error: pointer): void {.importc: "QSqlQueryModel_protectedbase_setLastError".}
proc fcQSqlQueryModel_protectedbase_resetInternalData(self: pointer): void {.importc: "QSqlQueryModel_protectedbase_resetInternalData".}
proc fcQSqlQueryModel_protectedbase_createIndex(self: pointer, row: cint, column: cint): pointer {.importc: "QSqlQueryModel_protectedbase_createIndex".}
proc fcQSqlQueryModel_protectedbase_encodeData(self: pointer, indexes: struct_seaqt_array, stream: pointer): void {.importc: "QSqlQueryModel_protectedbase_encodeData".}
proc fcQSqlQueryModel_protectedbase_decodeData(self: pointer, row: cint, column: cint, parent: pointer, stream: pointer): bool {.importc: "QSqlQueryModel_protectedbase_decodeData".}
proc fcQSqlQueryModel_protectedbase_beginMoveRows(self: pointer, sourceParent: pointer, sourceFirst: cint, sourceLast: cint, destinationParent: pointer, destinationRow: cint): bool {.importc: "QSqlQueryModel_protectedbase_beginMoveRows".}
proc fcQSqlQueryModel_protectedbase_endMoveRows(self: pointer): void {.importc: "QSqlQueryModel_protectedbase_endMoveRows".}
proc fcQSqlQueryModel_protectedbase_beginMoveColumns(self: pointer, sourceParent: pointer, sourceFirst: cint, sourceLast: cint, destinationParent: pointer, destinationColumn: cint): bool {.importc: "QSqlQueryModel_protectedbase_beginMoveColumns".}
proc fcQSqlQueryModel_protectedbase_endMoveColumns(self: pointer): void {.importc: "QSqlQueryModel_protectedbase_endMoveColumns".}
proc fcQSqlQueryModel_protectedbase_changePersistentIndex(self: pointer, fromVal: pointer, to: pointer): void {.importc: "QSqlQueryModel_protectedbase_changePersistentIndex".}
proc fcQSqlQueryModel_protectedbase_changePersistentIndexList(self: pointer, fromVal: struct_seaqt_array, to: struct_seaqt_array): void {.importc: "QSqlQueryModel_protectedbase_changePersistentIndexList".}
proc fcQSqlQueryModel_protectedbase_persistentIndexList(self: pointer): struct_seaqt_array {.importc: "QSqlQueryModel_protectedbase_persistentIndexList".}
proc fcQSqlQueryModel_protectedbase_sender(self: pointer): pointer {.importc: "QSqlQueryModel_protectedbase_sender".}
proc fcQSqlQueryModel_protectedbase_senderSignalIndex(self: pointer): cint {.importc: "QSqlQueryModel_protectedbase_senderSignalIndex".}
proc fcQSqlQueryModel_protectedbase_receivers(self: pointer, signal: cstring): cint {.importc: "QSqlQueryModel_protectedbase_receivers".}
proc fcQSqlQueryModel_protectedbase_isSignalConnected(self: pointer, signal: pointer): bool {.importc: "QSqlQueryModel_protectedbase_isSignalConnected".}
proc fcQSqlQueryModel_new(vtbl: pointer, vdata: csize_t): ptr cQSqlQueryModel {.importc: "QSqlQueryModel_new".}
proc fcQSqlQueryModel_new2(vtbl: pointer, vdata: csize_t, parent: pointer): ptr cQSqlQueryModel {.importc: "QSqlQueryModel_new2".}
proc fcQSqlQueryModel_staticMetaObject(): pointer {.importc: "QSqlQueryModel_staticMetaObject".}

proc metaObject*(self: gen_qsqlquerymodel_types.QSqlQueryModel): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQSqlQueryModel_metaObject(self.h), owned: false)

proc metacast*(self: gen_qsqlquerymodel_types.QSqlQueryModel, param1: cstring): pointer =
  fcQSqlQueryModel_metacast(self.h, param1)

proc metacall*(self: gen_qsqlquerymodel_types.QSqlQueryModel, param1: cint, param2: cint, param3: pointer): cint =
  fcQSqlQueryModel_metacall(self.h, cint(param1), param2, param3)

proc tr*(_: type gen_qsqlquerymodel_types.QSqlQueryModel, s: cstring): string =
  let v_ms = fcQSqlQueryModel_tr(s)
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

proc trUtf8*(_: type gen_qsqlquerymodel_types.QSqlQueryModel, s: cstring): string =
  let v_ms = fcQSqlQueryModel_trUtf8(s)
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

proc rowCount*(self: gen_qsqlquerymodel_types.QSqlQueryModel, parent: gen_qabstractitemmodel_types.QModelIndex): cint =
  fcQSqlQueryModel_rowCount(self.h, parent.h)

proc columnCount*(self: gen_qsqlquerymodel_types.QSqlQueryModel, parent: gen_qabstractitemmodel_types.QModelIndex): cint =
  fcQSqlQueryModel_columnCount(self.h, parent.h)

proc record*(self: gen_qsqlquerymodel_types.QSqlQueryModel, row: cint): gen_qsqlrecord_types.QSqlRecord =
  gen_qsqlrecord_types.QSqlRecord(h: fcQSqlQueryModel_record(self.h, row), owned: true)

proc record*(self: gen_qsqlquerymodel_types.QSqlQueryModel): gen_qsqlrecord_types.QSqlRecord =
  gen_qsqlrecord_types.QSqlRecord(h: fcQSqlQueryModel_record2(self.h), owned: true)

proc data*(self: gen_qsqlquerymodel_types.QSqlQueryModel, item: gen_qabstractitemmodel_types.QModelIndex, role: cint): gen_qvariant_types.QVariant =
  gen_qvariant_types.QVariant(h: fcQSqlQueryModel_data(self.h, item.h, role), owned: true)

proc headerData*(self: gen_qsqlquerymodel_types.QSqlQueryModel, section: cint, orientation: cint, role: cint): gen_qvariant_types.QVariant =
  gen_qvariant_types.QVariant(h: fcQSqlQueryModel_headerData(self.h, section, cint(orientation), role), owned: true)

proc setHeaderData*(self: gen_qsqlquerymodel_types.QSqlQueryModel, section: cint, orientation: cint, value: gen_qvariant_types.QVariant, role: cint): bool =
  fcQSqlQueryModel_setHeaderData(self.h, section, cint(orientation), value.h, role)

proc insertColumns*(self: gen_qsqlquerymodel_types.QSqlQueryModel, column: cint, count: cint, parent: gen_qabstractitemmodel_types.QModelIndex): bool =
  fcQSqlQueryModel_insertColumns(self.h, column, count, parent.h)

proc removeColumns*(self: gen_qsqlquerymodel_types.QSqlQueryModel, column: cint, count: cint, parent: gen_qabstractitemmodel_types.QModelIndex): bool =
  fcQSqlQueryModel_removeColumns(self.h, column, count, parent.h)

proc setQuery*(self: gen_qsqlquerymodel_types.QSqlQueryModel, query: gen_qsqlquery_types.QSqlQuery): void =
  fcQSqlQueryModel_setQuery(self.h, query.h)

proc setQuery*(self: gen_qsqlquerymodel_types.QSqlQueryModel, query: openArray[char]): void =
  fcQSqlQueryModel_setQueryWithQuery(self.h, struct_seaqt_string(data: if len(query) > 0: addr query[0] else: nil, len: csize_t(len(query))))

proc query*(self: gen_qsqlquerymodel_types.QSqlQueryModel): gen_qsqlquery_types.QSqlQuery =
  gen_qsqlquery_types.QSqlQuery(h: fcQSqlQueryModel_query(self.h), owned: true)

proc clear*(self: gen_qsqlquerymodel_types.QSqlQueryModel): void =
  fcQSqlQueryModel_clear(self.h)

proc lastError*(self: gen_qsqlquerymodel_types.QSqlQueryModel): gen_qsqlerror_types.QSqlError =
  gen_qsqlerror_types.QSqlError(h: fcQSqlQueryModel_lastError(self.h), owned: true)

proc fetchMore*(self: gen_qsqlquerymodel_types.QSqlQueryModel, parent: gen_qabstractitemmodel_types.QModelIndex): void =
  fcQSqlQueryModel_fetchMore(self.h, parent.h)

proc canFetchMore*(self: gen_qsqlquerymodel_types.QSqlQueryModel, parent: gen_qabstractitemmodel_types.QModelIndex): bool =
  fcQSqlQueryModel_canFetchMore(self.h, parent.h)

proc roleNames*(self: gen_qsqlquerymodel_types.QSqlQueryModel): Table[cint,seq[byte]] =
  var v_mm = fcQSqlQueryModel_roleNames(self.h)
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

proc tr*(_: type gen_qsqlquerymodel_types.QSqlQueryModel, s: cstring, c: cstring): string =
  let v_ms = fcQSqlQueryModel_tr2(s, c)
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

proc tr*(_: type gen_qsqlquerymodel_types.QSqlQueryModel, s: cstring, c: cstring, n: cint): string =
  let v_ms = fcQSqlQueryModel_tr3(s, c, n)
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

proc trUtf8*(_: type gen_qsqlquerymodel_types.QSqlQueryModel, s: cstring, c: cstring): string =
  let v_ms = fcQSqlQueryModel_trUtf82(s, c)
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

proc trUtf8*(_: type gen_qsqlquerymodel_types.QSqlQueryModel, s: cstring, c: cstring, n: cint): string =
  let v_ms = fcQSqlQueryModel_trUtf83(s, c, n)
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

proc setQuery*(self: gen_qsqlquerymodel_types.QSqlQueryModel, query: openArray[char], db: gen_qsqldatabase_types.QSqlDatabase): void =
  fcQSqlQueryModel_setQuery2(self.h, struct_seaqt_string(data: if len(query) > 0: addr query[0] else: nil, len: csize_t(len(query))), db.h)

type QSqlQueryModelmetaObjectProc* = proc(self: QSqlQueryModel): gen_qobjectdefs_types.QMetaObject {.raises: [], gcsafe.}
type QSqlQueryModelmetacastProc* = proc(self: QSqlQueryModel, param1: cstring): pointer {.raises: [], gcsafe.}
type QSqlQueryModelmetacallProc* = proc(self: QSqlQueryModel, param1: cint, param2: cint, param3: pointer): cint {.raises: [], gcsafe.}
type QSqlQueryModelrowCountProc* = proc(self: QSqlQueryModel, parent: gen_qabstractitemmodel_types.QModelIndex): cint {.raises: [], gcsafe.}
type QSqlQueryModelcolumnCountProc* = proc(self: QSqlQueryModel, parent: gen_qabstractitemmodel_types.QModelIndex): cint {.raises: [], gcsafe.}
type QSqlQueryModeldataProc* = proc(self: QSqlQueryModel, item: gen_qabstractitemmodel_types.QModelIndex, role: cint): gen_qvariant_types.QVariant {.raises: [], gcsafe.}
type QSqlQueryModelheaderDataProc* = proc(self: QSqlQueryModel, section: cint, orientation: cint, role: cint): gen_qvariant_types.QVariant {.raises: [], gcsafe.}
type QSqlQueryModelsetHeaderDataProc* = proc(self: QSqlQueryModel, section: cint, orientation: cint, value: gen_qvariant_types.QVariant, role: cint): bool {.raises: [], gcsafe.}
type QSqlQueryModelinsertColumnsProc* = proc(self: QSqlQueryModel, column: cint, count: cint, parent: gen_qabstractitemmodel_types.QModelIndex): bool {.raises: [], gcsafe.}
type QSqlQueryModelremoveColumnsProc* = proc(self: QSqlQueryModel, column: cint, count: cint, parent: gen_qabstractitemmodel_types.QModelIndex): bool {.raises: [], gcsafe.}
type QSqlQueryModelclearProc* = proc(self: QSqlQueryModel): void {.raises: [], gcsafe.}
type QSqlQueryModelfetchMoreProc* = proc(self: QSqlQueryModel, parent: gen_qabstractitemmodel_types.QModelIndex): void {.raises: [], gcsafe.}
type QSqlQueryModelcanFetchMoreProc* = proc(self: QSqlQueryModel, parent: gen_qabstractitemmodel_types.QModelIndex): bool {.raises: [], gcsafe.}
type QSqlQueryModelroleNamesProc* = proc(self: QSqlQueryModel): Table[cint,seq[byte]] {.raises: [], gcsafe.}
type QSqlQueryModelqueryChangeProc* = proc(self: QSqlQueryModel): void {.raises: [], gcsafe.}
type QSqlQueryModelindexInQueryProc* = proc(self: QSqlQueryModel, item: gen_qabstractitemmodel_types.QModelIndex): gen_qabstractitemmodel_types.QModelIndex {.raises: [], gcsafe.}
type QSqlQueryModelindexProc* = proc(self: QSqlQueryModel, row: cint, column: cint, parent: gen_qabstractitemmodel_types.QModelIndex): gen_qabstractitemmodel_types.QModelIndex {.raises: [], gcsafe.}
type QSqlQueryModelsiblingProc* = proc(self: QSqlQueryModel, row: cint, column: cint, idx: gen_qabstractitemmodel_types.QModelIndex): gen_qabstractitemmodel_types.QModelIndex {.raises: [], gcsafe.}
type QSqlQueryModeldropMimeDataProc* = proc(self: QSqlQueryModel, data: gen_qmimedata_types.QMimeData, action: cint, row: cint, column: cint, parent: gen_qabstractitemmodel_types.QModelIndex): bool {.raises: [], gcsafe.}
type QSqlQueryModelflagsProc* = proc(self: QSqlQueryModel, index: gen_qabstractitemmodel_types.QModelIndex): cint {.raises: [], gcsafe.}
type QSqlQueryModelsetDataProc* = proc(self: QSqlQueryModel, index: gen_qabstractitemmodel_types.QModelIndex, value: gen_qvariant_types.QVariant, role: cint): bool {.raises: [], gcsafe.}
type QSqlQueryModelitemDataProc* = proc(self: QSqlQueryModel, index: gen_qabstractitemmodel_types.QModelIndex): Table[cint,gen_qvariant_types.QVariant] {.raises: [], gcsafe.}
type QSqlQueryModelsetItemDataProc* = proc(self: QSqlQueryModel, index: gen_qabstractitemmodel_types.QModelIndex, roles: Table[cint,gen_qvariant_types.QVariant]): bool {.raises: [], gcsafe.}
type QSqlQueryModelmimeTypesProc* = proc(self: QSqlQueryModel): seq[string] {.raises: [], gcsafe.}
type QSqlQueryModelmimeDataProc* = proc(self: QSqlQueryModel, indexes: openArray[gen_qabstractitemmodel_types.QModelIndex]): gen_qmimedata_types.QMimeData {.raises: [], gcsafe.}
type QSqlQueryModelcanDropMimeDataProc* = proc(self: QSqlQueryModel, data: gen_qmimedata_types.QMimeData, action: cint, row: cint, column: cint, parent: gen_qabstractitemmodel_types.QModelIndex): bool {.raises: [], gcsafe.}
type QSqlQueryModelsupportedDropActionsProc* = proc(self: QSqlQueryModel): cint {.raises: [], gcsafe.}
type QSqlQueryModelsupportedDragActionsProc* = proc(self: QSqlQueryModel): cint {.raises: [], gcsafe.}
type QSqlQueryModelinsertRowsProc* = proc(self: QSqlQueryModel, row: cint, count: cint, parent: gen_qabstractitemmodel_types.QModelIndex): bool {.raises: [], gcsafe.}
type QSqlQueryModelremoveRowsProc* = proc(self: QSqlQueryModel, row: cint, count: cint, parent: gen_qabstractitemmodel_types.QModelIndex): bool {.raises: [], gcsafe.}
type QSqlQueryModelmoveRowsProc* = proc(self: QSqlQueryModel, sourceParent: gen_qabstractitemmodel_types.QModelIndex, sourceRow: cint, count: cint, destinationParent: gen_qabstractitemmodel_types.QModelIndex, destinationChild: cint): bool {.raises: [], gcsafe.}
type QSqlQueryModelmoveColumnsProc* = proc(self: QSqlQueryModel, sourceParent: gen_qabstractitemmodel_types.QModelIndex, sourceColumn: cint, count: cint, destinationParent: gen_qabstractitemmodel_types.QModelIndex, destinationChild: cint): bool {.raises: [], gcsafe.}
type QSqlQueryModelsortProc* = proc(self: QSqlQueryModel, column: cint, order: cint): void {.raises: [], gcsafe.}
type QSqlQueryModelbuddyProc* = proc(self: QSqlQueryModel, index: gen_qabstractitemmodel_types.QModelIndex): gen_qabstractitemmodel_types.QModelIndex {.raises: [], gcsafe.}
type QSqlQueryModelmatchProc* = proc(self: QSqlQueryModel, start: gen_qabstractitemmodel_types.QModelIndex, role: cint, value: gen_qvariant_types.QVariant, hits: cint, flags: cint): seq[gen_qabstractitemmodel_types.QModelIndex] {.raises: [], gcsafe.}
type QSqlQueryModelspanProc* = proc(self: QSqlQueryModel, index: gen_qabstractitemmodel_types.QModelIndex): gen_qsize_types.QSize {.raises: [], gcsafe.}
type QSqlQueryModelsubmitProc* = proc(self: QSqlQueryModel): bool {.raises: [], gcsafe.}
type QSqlQueryModelrevertProc* = proc(self: QSqlQueryModel): void {.raises: [], gcsafe.}
type QSqlQueryModeleventProc* = proc(self: QSqlQueryModel, event: gen_qcoreevent_types.QEvent): bool {.raises: [], gcsafe.}
type QSqlQueryModeleventFilterProc* = proc(self: QSqlQueryModel, watched: gen_qobject_types.QObject, event: gen_qcoreevent_types.QEvent): bool {.raises: [], gcsafe.}
type QSqlQueryModeltimerEventProc* = proc(self: QSqlQueryModel, event: gen_qcoreevent_types.QTimerEvent): void {.raises: [], gcsafe.}
type QSqlQueryModelchildEventProc* = proc(self: QSqlQueryModel, event: gen_qcoreevent_types.QChildEvent): void {.raises: [], gcsafe.}
type QSqlQueryModelcustomEventProc* = proc(self: QSqlQueryModel, event: gen_qcoreevent_types.QEvent): void {.raises: [], gcsafe.}
type QSqlQueryModelconnectNotifyProc* = proc(self: QSqlQueryModel, signal: gen_qmetaobject_types.QMetaMethod): void {.raises: [], gcsafe.}
type QSqlQueryModeldisconnectNotifyProc* = proc(self: QSqlQueryModel, signal: gen_qmetaobject_types.QMetaMethod): void {.raises: [], gcsafe.}

type QSqlQueryModelVTable* {.inheritable, pure.} = object
  vtbl: cQSqlQueryModelVTable
  metaObject*: QSqlQueryModelmetaObjectProc
  metacast*: QSqlQueryModelmetacastProc
  metacall*: QSqlQueryModelmetacallProc
  rowCount*: QSqlQueryModelrowCountProc
  columnCount*: QSqlQueryModelcolumnCountProc
  data*: QSqlQueryModeldataProc
  headerData*: QSqlQueryModelheaderDataProc
  setHeaderData*: QSqlQueryModelsetHeaderDataProc
  insertColumns*: QSqlQueryModelinsertColumnsProc
  removeColumns*: QSqlQueryModelremoveColumnsProc
  clear*: QSqlQueryModelclearProc
  fetchMore*: QSqlQueryModelfetchMoreProc
  canFetchMore*: QSqlQueryModelcanFetchMoreProc
  roleNames*: QSqlQueryModelroleNamesProc
  queryChange*: QSqlQueryModelqueryChangeProc
  indexInQuery*: QSqlQueryModelindexInQueryProc
  index*: QSqlQueryModelindexProc
  sibling*: QSqlQueryModelsiblingProc
  dropMimeData*: QSqlQueryModeldropMimeDataProc
  flags*: QSqlQueryModelflagsProc
  setData*: QSqlQueryModelsetDataProc
  itemData*: QSqlQueryModelitemDataProc
  setItemData*: QSqlQueryModelsetItemDataProc
  mimeTypes*: QSqlQueryModelmimeTypesProc
  mimeData*: QSqlQueryModelmimeDataProc
  canDropMimeData*: QSqlQueryModelcanDropMimeDataProc
  supportedDropActions*: QSqlQueryModelsupportedDropActionsProc
  supportedDragActions*: QSqlQueryModelsupportedDragActionsProc
  insertRows*: QSqlQueryModelinsertRowsProc
  removeRows*: QSqlQueryModelremoveRowsProc
  moveRows*: QSqlQueryModelmoveRowsProc
  moveColumns*: QSqlQueryModelmoveColumnsProc
  sort*: QSqlQueryModelsortProc
  buddy*: QSqlQueryModelbuddyProc
  match*: QSqlQueryModelmatchProc
  span*: QSqlQueryModelspanProc
  submit*: QSqlQueryModelsubmitProc
  revert*: QSqlQueryModelrevertProc
  event*: QSqlQueryModeleventProc
  eventFilter*: QSqlQueryModeleventFilterProc
  timerEvent*: QSqlQueryModeltimerEventProc
  childEvent*: QSqlQueryModelchildEventProc
  customEvent*: QSqlQueryModelcustomEventProc
  connectNotify*: QSqlQueryModelconnectNotifyProc
  disconnectNotify*: QSqlQueryModeldisconnectNotifyProc

proc QSqlQueryModelmetaObject*(self: gen_qsqlquerymodel_types.QSqlQueryModel): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQSqlQueryModel_virtualbase_metaObject(self.h), owned: false)

proc QSqlQueryModelmetacast*(self: gen_qsqlquerymodel_types.QSqlQueryModel, param1: cstring): pointer =
  fcQSqlQueryModel_virtualbase_metacast(self.h, param1)

proc QSqlQueryModelmetacall*(self: gen_qsqlquerymodel_types.QSqlQueryModel, param1: cint, param2: cint, param3: pointer): cint =
  fcQSqlQueryModel_virtualbase_metacall(self.h, cint(param1), param2, param3)

proc QSqlQueryModelrowCount*(self: gen_qsqlquerymodel_types.QSqlQueryModel, parent: gen_qabstractitemmodel_types.QModelIndex): cint =
  fcQSqlQueryModel_virtualbase_rowCount(self.h, parent.h)

proc QSqlQueryModelcolumnCount*(self: gen_qsqlquerymodel_types.QSqlQueryModel, parent: gen_qabstractitemmodel_types.QModelIndex): cint =
  fcQSqlQueryModel_virtualbase_columnCount(self.h, parent.h)

proc QSqlQueryModeldata*(self: gen_qsqlquerymodel_types.QSqlQueryModel, item: gen_qabstractitemmodel_types.QModelIndex, role: cint): gen_qvariant_types.QVariant =
  gen_qvariant_types.QVariant(h: fcQSqlQueryModel_virtualbase_data(self.h, item.h, role), owned: true)

proc QSqlQueryModelheaderData*(self: gen_qsqlquerymodel_types.QSqlQueryModel, section: cint, orientation: cint, role: cint): gen_qvariant_types.QVariant =
  gen_qvariant_types.QVariant(h: fcQSqlQueryModel_virtualbase_headerData(self.h, section, cint(orientation), role), owned: true)

proc QSqlQueryModelsetHeaderData*(self: gen_qsqlquerymodel_types.QSqlQueryModel, section: cint, orientation: cint, value: gen_qvariant_types.QVariant, role: cint): bool =
  fcQSqlQueryModel_virtualbase_setHeaderData(self.h, section, cint(orientation), value.h, role)

proc QSqlQueryModelinsertColumns*(self: gen_qsqlquerymodel_types.QSqlQueryModel, column: cint, count: cint, parent: gen_qabstractitemmodel_types.QModelIndex): bool =
  fcQSqlQueryModel_virtualbase_insertColumns(self.h, column, count, parent.h)

proc QSqlQueryModelremoveColumns*(self: gen_qsqlquerymodel_types.QSqlQueryModel, column: cint, count: cint, parent: gen_qabstractitemmodel_types.QModelIndex): bool =
  fcQSqlQueryModel_virtualbase_removeColumns(self.h, column, count, parent.h)

proc QSqlQueryModelclear*(self: gen_qsqlquerymodel_types.QSqlQueryModel): void =
  fcQSqlQueryModel_virtualbase_clear(self.h)

proc QSqlQueryModelfetchMore*(self: gen_qsqlquerymodel_types.QSqlQueryModel, parent: gen_qabstractitemmodel_types.QModelIndex): void =
  fcQSqlQueryModel_virtualbase_fetchMore(self.h, parent.h)

proc QSqlQueryModelcanFetchMore*(self: gen_qsqlquerymodel_types.QSqlQueryModel, parent: gen_qabstractitemmodel_types.QModelIndex): bool =
  fcQSqlQueryModel_virtualbase_canFetchMore(self.h, parent.h)

proc QSqlQueryModelroleNames*(self: gen_qsqlquerymodel_types.QSqlQueryModel): Table[cint,seq[byte]] =
  var v_mm = fcQSqlQueryModel_virtualbase_roleNames(self.h)
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

proc QSqlQueryModelqueryChange*(self: gen_qsqlquerymodel_types.QSqlQueryModel): void =
  fcQSqlQueryModel_virtualbase_queryChange(self.h)

proc QSqlQueryModelindexInQuery*(self: gen_qsqlquerymodel_types.QSqlQueryModel, item: gen_qabstractitemmodel_types.QModelIndex): gen_qabstractitemmodel_types.QModelIndex =
  gen_qabstractitemmodel_types.QModelIndex(h: fcQSqlQueryModel_virtualbase_indexInQuery(self.h, item.h), owned: true)

proc QSqlQueryModelindex*(self: gen_qsqlquerymodel_types.QSqlQueryModel, row: cint, column: cint, parent: gen_qabstractitemmodel_types.QModelIndex): gen_qabstractitemmodel_types.QModelIndex =
  gen_qabstractitemmodel_types.QModelIndex(h: fcQSqlQueryModel_virtualbase_index(self.h, row, column, parent.h), owned: true)

proc QSqlQueryModelsibling*(self: gen_qsqlquerymodel_types.QSqlQueryModel, row: cint, column: cint, idx: gen_qabstractitemmodel_types.QModelIndex): gen_qabstractitemmodel_types.QModelIndex =
  gen_qabstractitemmodel_types.QModelIndex(h: fcQSqlQueryModel_virtualbase_sibling(self.h, row, column, idx.h), owned: true)

proc QSqlQueryModeldropMimeData*(self: gen_qsqlquerymodel_types.QSqlQueryModel, data: gen_qmimedata_types.QMimeData, action: cint, row: cint, column: cint, parent: gen_qabstractitemmodel_types.QModelIndex): bool =
  fcQSqlQueryModel_virtualbase_dropMimeData(self.h, data.h, cint(action), row, column, parent.h)

proc QSqlQueryModelflags*(self: gen_qsqlquerymodel_types.QSqlQueryModel, index: gen_qabstractitemmodel_types.QModelIndex): cint =
  cint(fcQSqlQueryModel_virtualbase_flags(self.h, index.h))

proc QSqlQueryModelsetData*(self: gen_qsqlquerymodel_types.QSqlQueryModel, index: gen_qabstractitemmodel_types.QModelIndex, value: gen_qvariant_types.QVariant, role: cint): bool =
  fcQSqlQueryModel_virtualbase_setData(self.h, index.h, value.h, role)

proc QSqlQueryModelitemData*(self: gen_qsqlquerymodel_types.QSqlQueryModel, index: gen_qabstractitemmodel_types.QModelIndex): Table[cint,gen_qvariant_types.QVariant] =
  var v_mm = fcQSqlQueryModel_virtualbase_itemData(self.h, index.h)
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

proc QSqlQueryModelsetItemData*(self: gen_qsqlquerymodel_types.QSqlQueryModel, index: gen_qabstractitemmodel_types.QModelIndex, roles: Table[cint,gen_qvariant_types.QVariant]): bool =
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

  fcQSqlQueryModel_virtualbase_setItemData(self.h, index.h, struct_seaqt_map(len: csize_t(len(roles)),keys: if len(roles) == 0: nil else: addr(roles_Keys_CArray[0]), values: if len(roles) == 0: nil else: addr(roles_Values_CArray[0]),))

proc QSqlQueryModelmimeTypes*(self: gen_qsqlquerymodel_types.QSqlQueryModel): seq[string] =
  var v_ma = fcQSqlQueryModel_virtualbase_mimeTypes(self.h)
  var vx_ret = newSeq[string](int(v_ma.len))
  let v_outCast = cast[ptr UncheckedArray[struct_seaqt_string]](v_ma.data)
  for i in 0 ..< v_ma.len:
    let vx_lv_ms = v_outCast[i]
    let vx_lvx_ret = string.fromBytes(vx_lv_ms)
    c_free(vx_lv_ms.data)
    vx_ret[i] = vx_lvx_ret
  c_free(v_ma.data)
  vx_ret

proc QSqlQueryModelmimeData*(self: gen_qsqlquerymodel_types.QSqlQueryModel, indexes: openArray[gen_qabstractitemmodel_types.QModelIndex]): gen_qmimedata_types.QMimeData =
  var indexes_CArray = newSeq[pointer](len(indexes))
  for i in 0..<len(indexes):
    indexes_CArray[i] = indexes[i].h

  gen_qmimedata_types.QMimeData(h: fcQSqlQueryModel_virtualbase_mimeData(self.h, struct_seaqt_array(len: csize_t(len(indexes)), data: if len(indexes) == 0: nil else: addr(indexes_CArray[0]))), owned: false)

proc QSqlQueryModelcanDropMimeData*(self: gen_qsqlquerymodel_types.QSqlQueryModel, data: gen_qmimedata_types.QMimeData, action: cint, row: cint, column: cint, parent: gen_qabstractitemmodel_types.QModelIndex): bool =
  fcQSqlQueryModel_virtualbase_canDropMimeData(self.h, data.h, cint(action), row, column, parent.h)

proc QSqlQueryModelsupportedDropActions*(self: gen_qsqlquerymodel_types.QSqlQueryModel): cint =
  cint(fcQSqlQueryModel_virtualbase_supportedDropActions(self.h))

proc QSqlQueryModelsupportedDragActions*(self: gen_qsqlquerymodel_types.QSqlQueryModel): cint =
  cint(fcQSqlQueryModel_virtualbase_supportedDragActions(self.h))

proc QSqlQueryModelinsertRows*(self: gen_qsqlquerymodel_types.QSqlQueryModel, row: cint, count: cint, parent: gen_qabstractitemmodel_types.QModelIndex): bool =
  fcQSqlQueryModel_virtualbase_insertRows(self.h, row, count, parent.h)

proc QSqlQueryModelremoveRows*(self: gen_qsqlquerymodel_types.QSqlQueryModel, row: cint, count: cint, parent: gen_qabstractitemmodel_types.QModelIndex): bool =
  fcQSqlQueryModel_virtualbase_removeRows(self.h, row, count, parent.h)

proc QSqlQueryModelmoveRows*(self: gen_qsqlquerymodel_types.QSqlQueryModel, sourceParent: gen_qabstractitemmodel_types.QModelIndex, sourceRow: cint, count: cint, destinationParent: gen_qabstractitemmodel_types.QModelIndex, destinationChild: cint): bool =
  fcQSqlQueryModel_virtualbase_moveRows(self.h, sourceParent.h, sourceRow, count, destinationParent.h, destinationChild)

proc QSqlQueryModelmoveColumns*(self: gen_qsqlquerymodel_types.QSqlQueryModel, sourceParent: gen_qabstractitemmodel_types.QModelIndex, sourceColumn: cint, count: cint, destinationParent: gen_qabstractitemmodel_types.QModelIndex, destinationChild: cint): bool =
  fcQSqlQueryModel_virtualbase_moveColumns(self.h, sourceParent.h, sourceColumn, count, destinationParent.h, destinationChild)

proc QSqlQueryModelsort*(self: gen_qsqlquerymodel_types.QSqlQueryModel, column: cint, order: cint): void =
  fcQSqlQueryModel_virtualbase_sort(self.h, column, cint(order))

proc QSqlQueryModelbuddy*(self: gen_qsqlquerymodel_types.QSqlQueryModel, index: gen_qabstractitemmodel_types.QModelIndex): gen_qabstractitemmodel_types.QModelIndex =
  gen_qabstractitemmodel_types.QModelIndex(h: fcQSqlQueryModel_virtualbase_buddy(self.h, index.h), owned: true)

proc QSqlQueryModelmatch*(self: gen_qsqlquerymodel_types.QSqlQueryModel, start: gen_qabstractitemmodel_types.QModelIndex, role: cint, value: gen_qvariant_types.QVariant, hits: cint, flags: cint): seq[gen_qabstractitemmodel_types.QModelIndex] =
  var v_ma = fcQSqlQueryModel_virtualbase_match(self.h, start.h, role, value.h, hits, cint(flags))
  var vx_ret = newSeq[gen_qabstractitemmodel_types.QModelIndex](int(v_ma.len))
  let v_outCast = cast[ptr UncheckedArray[pointer]](v_ma.data)
  for i in 0 ..< v_ma.len:
    vx_ret[i] = gen_qabstractitemmodel_types.QModelIndex(h: v_outCast[i], owned: true)
  c_free(v_ma.data)
  vx_ret

proc QSqlQueryModelspan*(self: gen_qsqlquerymodel_types.QSqlQueryModel, index: gen_qabstractitemmodel_types.QModelIndex): gen_qsize_types.QSize =
  gen_qsize_types.QSize(h: fcQSqlQueryModel_virtualbase_span(self.h, index.h), owned: true)

proc QSqlQueryModelsubmit*(self: gen_qsqlquerymodel_types.QSqlQueryModel): bool =
  fcQSqlQueryModel_virtualbase_submit(self.h)

proc QSqlQueryModelrevert*(self: gen_qsqlquerymodel_types.QSqlQueryModel): void =
  fcQSqlQueryModel_virtualbase_revert(self.h)

proc QSqlQueryModelevent*(self: gen_qsqlquerymodel_types.QSqlQueryModel, event: gen_qcoreevent_types.QEvent): bool =
  fcQSqlQueryModel_virtualbase_event(self.h, event.h)

proc QSqlQueryModeleventFilter*(self: gen_qsqlquerymodel_types.QSqlQueryModel, watched: gen_qobject_types.QObject, event: gen_qcoreevent_types.QEvent): bool =
  fcQSqlQueryModel_virtualbase_eventFilter(self.h, watched.h, event.h)

proc QSqlQueryModeltimerEvent*(self: gen_qsqlquerymodel_types.QSqlQueryModel, event: gen_qcoreevent_types.QTimerEvent): void =
  fcQSqlQueryModel_virtualbase_timerEvent(self.h, event.h)

proc QSqlQueryModelchildEvent*(self: gen_qsqlquerymodel_types.QSqlQueryModel, event: gen_qcoreevent_types.QChildEvent): void =
  fcQSqlQueryModel_virtualbase_childEvent(self.h, event.h)

proc QSqlQueryModelcustomEvent*(self: gen_qsqlquerymodel_types.QSqlQueryModel, event: gen_qcoreevent_types.QEvent): void =
  fcQSqlQueryModel_virtualbase_customEvent(self.h, event.h)

proc QSqlQueryModelconnectNotify*(self: gen_qsqlquerymodel_types.QSqlQueryModel, signal: gen_qmetaobject_types.QMetaMethod): void =
  fcQSqlQueryModel_virtualbase_connectNotify(self.h, signal.h)

proc QSqlQueryModeldisconnectNotify*(self: gen_qsqlquerymodel_types.QSqlQueryModel, signal: gen_qmetaobject_types.QMetaMethod): void =
  fcQSqlQueryModel_virtualbase_disconnectNotify(self.h, signal.h)


proc fcQSqlQueryModel_vtable_callback_metaObject(self: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QSqlQueryModelVTable](fcQSqlQueryModel_vdata(self)[])
  let self = QSqlQueryModel(h: self)
  var virtualReturn = vtbl[].metaObject(self)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc fcQSqlQueryModel_vtable_callback_metacast(self: pointer, param1: cstring): pointer {.cdecl.} =
  let vtbl = cast[ptr QSqlQueryModelVTable](fcQSqlQueryModel_vdata(self)[])
  let self = QSqlQueryModel(h: self)
  let slotval1 = (param1)
  var virtualReturn = vtbl[].metacast(self, slotval1)
  virtualReturn

proc fcQSqlQueryModel_vtable_callback_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.cdecl.} =
  let vtbl = cast[ptr QSqlQueryModelVTable](fcQSqlQueryModel_vdata(self)[])
  let self = QSqlQueryModel(h: self)
  let slotval1 = cint(param1)
  let slotval2 = param2
  let slotval3 = param3
  var virtualReturn = vtbl[].metacall(self, slotval1, slotval2, slotval3)
  virtualReturn

proc fcQSqlQueryModel_vtable_callback_rowCount(self: pointer, parent: pointer): cint {.cdecl.} =
  let vtbl = cast[ptr QSqlQueryModelVTable](fcQSqlQueryModel_vdata(self)[])
  let self = QSqlQueryModel(h: self)
  let slotval1 = gen_qabstractitemmodel_types.QModelIndex(h: parent, owned: false)
  var virtualReturn = vtbl[].rowCount(self, slotval1)
  virtualReturn

proc fcQSqlQueryModel_vtable_callback_columnCount(self: pointer, parent: pointer): cint {.cdecl.} =
  let vtbl = cast[ptr QSqlQueryModelVTable](fcQSqlQueryModel_vdata(self)[])
  let self = QSqlQueryModel(h: self)
  let slotval1 = gen_qabstractitemmodel_types.QModelIndex(h: parent, owned: false)
  var virtualReturn = vtbl[].columnCount(self, slotval1)
  virtualReturn

proc fcQSqlQueryModel_vtable_callback_data(self: pointer, item: pointer, role: cint): pointer {.cdecl.} =
  let vtbl = cast[ptr QSqlQueryModelVTable](fcQSqlQueryModel_vdata(self)[])
  let self = QSqlQueryModel(h: self)
  let slotval1 = gen_qabstractitemmodel_types.QModelIndex(h: item, owned: false)
  let slotval2 = role
  var virtualReturn = vtbl[].data(self, slotval1, slotval2)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc fcQSqlQueryModel_vtable_callback_headerData(self: pointer, section: cint, orientation: cint, role: cint): pointer {.cdecl.} =
  let vtbl = cast[ptr QSqlQueryModelVTable](fcQSqlQueryModel_vdata(self)[])
  let self = QSqlQueryModel(h: self)
  let slotval1 = section
  let slotval2 = cint(orientation)
  let slotval3 = role
  var virtualReturn = vtbl[].headerData(self, slotval1, slotval2, slotval3)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc fcQSqlQueryModel_vtable_callback_setHeaderData(self: pointer, section: cint, orientation: cint, value: pointer, role: cint): bool {.cdecl.} =
  let vtbl = cast[ptr QSqlQueryModelVTable](fcQSqlQueryModel_vdata(self)[])
  let self = QSqlQueryModel(h: self)
  let slotval1 = section
  let slotval2 = cint(orientation)
  let slotval3 = gen_qvariant_types.QVariant(h: value, owned: false)
  let slotval4 = role
  var virtualReturn = vtbl[].setHeaderData(self, slotval1, slotval2, slotval3, slotval4)
  virtualReturn

proc fcQSqlQueryModel_vtable_callback_insertColumns(self: pointer, column: cint, count: cint, parent: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QSqlQueryModelVTable](fcQSqlQueryModel_vdata(self)[])
  let self = QSqlQueryModel(h: self)
  let slotval1 = column
  let slotval2 = count
  let slotval3 = gen_qabstractitemmodel_types.QModelIndex(h: parent, owned: false)
  var virtualReturn = vtbl[].insertColumns(self, slotval1, slotval2, slotval3)
  virtualReturn

proc fcQSqlQueryModel_vtable_callback_removeColumns(self: pointer, column: cint, count: cint, parent: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QSqlQueryModelVTable](fcQSqlQueryModel_vdata(self)[])
  let self = QSqlQueryModel(h: self)
  let slotval1 = column
  let slotval2 = count
  let slotval3 = gen_qabstractitemmodel_types.QModelIndex(h: parent, owned: false)
  var virtualReturn = vtbl[].removeColumns(self, slotval1, slotval2, slotval3)
  virtualReturn

proc fcQSqlQueryModel_vtable_callback_clear(self: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QSqlQueryModelVTable](fcQSqlQueryModel_vdata(self)[])
  let self = QSqlQueryModel(h: self)
  vtbl[].clear(self)

proc fcQSqlQueryModel_vtable_callback_fetchMore(self: pointer, parent: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QSqlQueryModelVTable](fcQSqlQueryModel_vdata(self)[])
  let self = QSqlQueryModel(h: self)
  let slotval1 = gen_qabstractitemmodel_types.QModelIndex(h: parent, owned: false)
  vtbl[].fetchMore(self, slotval1)

proc fcQSqlQueryModel_vtable_callback_canFetchMore(self: pointer, parent: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QSqlQueryModelVTable](fcQSqlQueryModel_vdata(self)[])
  let self = QSqlQueryModel(h: self)
  let slotval1 = gen_qabstractitemmodel_types.QModelIndex(h: parent, owned: false)
  var virtualReturn = vtbl[].canFetchMore(self, slotval1)
  virtualReturn

proc fcQSqlQueryModel_vtable_callback_roleNames(self: pointer): struct_seaqt_map {.cdecl.} =
  let vtbl = cast[ptr QSqlQueryModelVTable](fcQSqlQueryModel_vdata(self)[])
  let self = QSqlQueryModel(h: self)
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

proc fcQSqlQueryModel_vtable_callback_queryChange(self: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QSqlQueryModelVTable](fcQSqlQueryModel_vdata(self)[])
  let self = QSqlQueryModel(h: self)
  vtbl[].queryChange(self)

proc fcQSqlQueryModel_vtable_callback_indexInQuery(self: pointer, item: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QSqlQueryModelVTable](fcQSqlQueryModel_vdata(self)[])
  let self = QSqlQueryModel(h: self)
  let slotval1 = gen_qabstractitemmodel_types.QModelIndex(h: item, owned: false)
  var virtualReturn = vtbl[].indexInQuery(self, slotval1)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc fcQSqlQueryModel_vtable_callback_index(self: pointer, row: cint, column: cint, parent: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QSqlQueryModelVTable](fcQSqlQueryModel_vdata(self)[])
  let self = QSqlQueryModel(h: self)
  let slotval1 = row
  let slotval2 = column
  let slotval3 = gen_qabstractitemmodel_types.QModelIndex(h: parent, owned: false)
  var virtualReturn = vtbl[].index(self, slotval1, slotval2, slotval3)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc fcQSqlQueryModel_vtable_callback_sibling(self: pointer, row: cint, column: cint, idx: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QSqlQueryModelVTable](fcQSqlQueryModel_vdata(self)[])
  let self = QSqlQueryModel(h: self)
  let slotval1 = row
  let slotval2 = column
  let slotval3 = gen_qabstractitemmodel_types.QModelIndex(h: idx, owned: false)
  var virtualReturn = vtbl[].sibling(self, slotval1, slotval2, slotval3)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc fcQSqlQueryModel_vtable_callback_dropMimeData(self: pointer, data: pointer, action: cint, row: cint, column: cint, parent: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QSqlQueryModelVTable](fcQSqlQueryModel_vdata(self)[])
  let self = QSqlQueryModel(h: self)
  let slotval1 = gen_qmimedata_types.QMimeData(h: data, owned: false)
  let slotval2 = cint(action)
  let slotval3 = row
  let slotval4 = column
  let slotval5 = gen_qabstractitemmodel_types.QModelIndex(h: parent, owned: false)
  var virtualReturn = vtbl[].dropMimeData(self, slotval1, slotval2, slotval3, slotval4, slotval5)
  virtualReturn

proc fcQSqlQueryModel_vtable_callback_flags(self: pointer, index: pointer): cint {.cdecl.} =
  let vtbl = cast[ptr QSqlQueryModelVTable](fcQSqlQueryModel_vdata(self)[])
  let self = QSqlQueryModel(h: self)
  let slotval1 = gen_qabstractitemmodel_types.QModelIndex(h: index, owned: false)
  var virtualReturn = vtbl[].flags(self, slotval1)
  cint(virtualReturn)

proc fcQSqlQueryModel_vtable_callback_setData(self: pointer, index: pointer, value: pointer, role: cint): bool {.cdecl.} =
  let vtbl = cast[ptr QSqlQueryModelVTable](fcQSqlQueryModel_vdata(self)[])
  let self = QSqlQueryModel(h: self)
  let slotval1 = gen_qabstractitemmodel_types.QModelIndex(h: index, owned: false)
  let slotval2 = gen_qvariant_types.QVariant(h: value, owned: false)
  let slotval3 = role
  var virtualReturn = vtbl[].setData(self, slotval1, slotval2, slotval3)
  virtualReturn

proc fcQSqlQueryModel_vtable_callback_itemData(self: pointer, index: pointer): struct_seaqt_map {.cdecl.} =
  let vtbl = cast[ptr QSqlQueryModelVTable](fcQSqlQueryModel_vdata(self)[])
  let self = QSqlQueryModel(h: self)
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

proc fcQSqlQueryModel_vtable_callback_setItemData(self: pointer, index: pointer, roles: struct_seaqt_map): bool {.cdecl.} =
  let vtbl = cast[ptr QSqlQueryModelVTable](fcQSqlQueryModel_vdata(self)[])
  let self = QSqlQueryModel(h: self)
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

proc fcQSqlQueryModel_vtable_callback_mimeTypes(self: pointer): struct_seaqt_array {.cdecl.} =
  let vtbl = cast[ptr QSqlQueryModelVTable](fcQSqlQueryModel_vdata(self)[])
  let self = QSqlQueryModel(h: self)
  var virtualReturn = vtbl[].mimeTypes(self)
  var virtualReturn_CArray = cast[ptr UncheckedArray[struct_seaqt_string]](if len(virtualReturn) > 0: c_malloc(c_sizet(sizeof(struct_seaqt_string) * len(virtualReturn))) else: nil)
  for i in 0..<len(virtualReturn):
    var virtualReturn_i_copy = if len(virtualReturn[i]) > 0: c_malloc(csize_t(len(virtualReturn[i]))) else: nil
    if len(virtualReturn[i]) > 0: copyMem(virtualReturn_i_copy, addr virtualReturn[i][0], csize_t(len(virtualReturn[i])))
    virtualReturn_CArray[i] = struct_seaqt_string(data: virtualReturn_i_copy, len: csize_t(len(virtualReturn[i])))

  struct_seaqt_array(len: csize_t(len(virtualReturn)), data: if len(virtualReturn) == 0: nil else: addr(virtualReturn_CArray[0]))

proc fcQSqlQueryModel_vtable_callback_mimeData(self: pointer, indexes: struct_seaqt_array): pointer {.cdecl.} =
  let vtbl = cast[ptr QSqlQueryModelVTable](fcQSqlQueryModel_vdata(self)[])
  let self = QSqlQueryModel(h: self)
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

proc fcQSqlQueryModel_vtable_callback_canDropMimeData(self: pointer, data: pointer, action: cint, row: cint, column: cint, parent: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QSqlQueryModelVTable](fcQSqlQueryModel_vdata(self)[])
  let self = QSqlQueryModel(h: self)
  let slotval1 = gen_qmimedata_types.QMimeData(h: data, owned: false)
  let slotval2 = cint(action)
  let slotval3 = row
  let slotval4 = column
  let slotval5 = gen_qabstractitemmodel_types.QModelIndex(h: parent, owned: false)
  var virtualReturn = vtbl[].canDropMimeData(self, slotval1, slotval2, slotval3, slotval4, slotval5)
  virtualReturn

proc fcQSqlQueryModel_vtable_callback_supportedDropActions(self: pointer): cint {.cdecl.} =
  let vtbl = cast[ptr QSqlQueryModelVTable](fcQSqlQueryModel_vdata(self)[])
  let self = QSqlQueryModel(h: self)
  var virtualReturn = vtbl[].supportedDropActions(self)
  cint(virtualReturn)

proc fcQSqlQueryModel_vtable_callback_supportedDragActions(self: pointer): cint {.cdecl.} =
  let vtbl = cast[ptr QSqlQueryModelVTable](fcQSqlQueryModel_vdata(self)[])
  let self = QSqlQueryModel(h: self)
  var virtualReturn = vtbl[].supportedDragActions(self)
  cint(virtualReturn)

proc fcQSqlQueryModel_vtable_callback_insertRows(self: pointer, row: cint, count: cint, parent: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QSqlQueryModelVTable](fcQSqlQueryModel_vdata(self)[])
  let self = QSqlQueryModel(h: self)
  let slotval1 = row
  let slotval2 = count
  let slotval3 = gen_qabstractitemmodel_types.QModelIndex(h: parent, owned: false)
  var virtualReturn = vtbl[].insertRows(self, slotval1, slotval2, slotval3)
  virtualReturn

proc fcQSqlQueryModel_vtable_callback_removeRows(self: pointer, row: cint, count: cint, parent: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QSqlQueryModelVTable](fcQSqlQueryModel_vdata(self)[])
  let self = QSqlQueryModel(h: self)
  let slotval1 = row
  let slotval2 = count
  let slotval3 = gen_qabstractitemmodel_types.QModelIndex(h: parent, owned: false)
  var virtualReturn = vtbl[].removeRows(self, slotval1, slotval2, slotval3)
  virtualReturn

proc fcQSqlQueryModel_vtable_callback_moveRows(self: pointer, sourceParent: pointer, sourceRow: cint, count: cint, destinationParent: pointer, destinationChild: cint): bool {.cdecl.} =
  let vtbl = cast[ptr QSqlQueryModelVTable](fcQSqlQueryModel_vdata(self)[])
  let self = QSqlQueryModel(h: self)
  let slotval1 = gen_qabstractitemmodel_types.QModelIndex(h: sourceParent, owned: false)
  let slotval2 = sourceRow
  let slotval3 = count
  let slotval4 = gen_qabstractitemmodel_types.QModelIndex(h: destinationParent, owned: false)
  let slotval5 = destinationChild
  var virtualReturn = vtbl[].moveRows(self, slotval1, slotval2, slotval3, slotval4, slotval5)
  virtualReturn

proc fcQSqlQueryModel_vtable_callback_moveColumns(self: pointer, sourceParent: pointer, sourceColumn: cint, count: cint, destinationParent: pointer, destinationChild: cint): bool {.cdecl.} =
  let vtbl = cast[ptr QSqlQueryModelVTable](fcQSqlQueryModel_vdata(self)[])
  let self = QSqlQueryModel(h: self)
  let slotval1 = gen_qabstractitemmodel_types.QModelIndex(h: sourceParent, owned: false)
  let slotval2 = sourceColumn
  let slotval3 = count
  let slotval4 = gen_qabstractitemmodel_types.QModelIndex(h: destinationParent, owned: false)
  let slotval5 = destinationChild
  var virtualReturn = vtbl[].moveColumns(self, slotval1, slotval2, slotval3, slotval4, slotval5)
  virtualReturn

proc fcQSqlQueryModel_vtable_callback_sort(self: pointer, column: cint, order: cint): void {.cdecl.} =
  let vtbl = cast[ptr QSqlQueryModelVTable](fcQSqlQueryModel_vdata(self)[])
  let self = QSqlQueryModel(h: self)
  let slotval1 = column
  let slotval2 = cint(order)
  vtbl[].sort(self, slotval1, slotval2)

proc fcQSqlQueryModel_vtable_callback_buddy(self: pointer, index: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QSqlQueryModelVTable](fcQSqlQueryModel_vdata(self)[])
  let self = QSqlQueryModel(h: self)
  let slotval1 = gen_qabstractitemmodel_types.QModelIndex(h: index, owned: false)
  var virtualReturn = vtbl[].buddy(self, slotval1)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc fcQSqlQueryModel_vtable_callback_match(self: pointer, start: pointer, role: cint, value: pointer, hits: cint, flags: cint): struct_seaqt_array {.cdecl.} =
  let vtbl = cast[ptr QSqlQueryModelVTable](fcQSqlQueryModel_vdata(self)[])
  let self = QSqlQueryModel(h: self)
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

proc fcQSqlQueryModel_vtable_callback_span(self: pointer, index: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QSqlQueryModelVTable](fcQSqlQueryModel_vdata(self)[])
  let self = QSqlQueryModel(h: self)
  let slotval1 = gen_qabstractitemmodel_types.QModelIndex(h: index, owned: false)
  var virtualReturn = vtbl[].span(self, slotval1)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc fcQSqlQueryModel_vtable_callback_submit(self: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QSqlQueryModelVTable](fcQSqlQueryModel_vdata(self)[])
  let self = QSqlQueryModel(h: self)
  var virtualReturn = vtbl[].submit(self)
  virtualReturn

proc fcQSqlQueryModel_vtable_callback_revert(self: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QSqlQueryModelVTable](fcQSqlQueryModel_vdata(self)[])
  let self = QSqlQueryModel(h: self)
  vtbl[].revert(self)

proc fcQSqlQueryModel_vtable_callback_event(self: pointer, event: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QSqlQueryModelVTable](fcQSqlQueryModel_vdata(self)[])
  let self = QSqlQueryModel(h: self)
  let slotval1 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  var virtualReturn = vtbl[].event(self, slotval1)
  virtualReturn

proc fcQSqlQueryModel_vtable_callback_eventFilter(self: pointer, watched: pointer, event: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QSqlQueryModelVTable](fcQSqlQueryModel_vdata(self)[])
  let self = QSqlQueryModel(h: self)
  let slotval1 = gen_qobject_types.QObject(h: watched, owned: false)
  let slotval2 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  var virtualReturn = vtbl[].eventFilter(self, slotval1, slotval2)
  virtualReturn

proc fcQSqlQueryModel_vtable_callback_timerEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QSqlQueryModelVTable](fcQSqlQueryModel_vdata(self)[])
  let self = QSqlQueryModel(h: self)
  let slotval1 = gen_qcoreevent_types.QTimerEvent(h: event, owned: false)
  vtbl[].timerEvent(self, slotval1)

proc fcQSqlQueryModel_vtable_callback_childEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QSqlQueryModelVTable](fcQSqlQueryModel_vdata(self)[])
  let self = QSqlQueryModel(h: self)
  let slotval1 = gen_qcoreevent_types.QChildEvent(h: event, owned: false)
  vtbl[].childEvent(self, slotval1)

proc fcQSqlQueryModel_vtable_callback_customEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QSqlQueryModelVTable](fcQSqlQueryModel_vdata(self)[])
  let self = QSqlQueryModel(h: self)
  let slotval1 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  vtbl[].customEvent(self, slotval1)

proc fcQSqlQueryModel_vtable_callback_connectNotify(self: pointer, signal: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QSqlQueryModelVTable](fcQSqlQueryModel_vdata(self)[])
  let self = QSqlQueryModel(h: self)
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal, owned: false)
  vtbl[].connectNotify(self, slotval1)

proc fcQSqlQueryModel_vtable_callback_disconnectNotify(self: pointer, signal: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QSqlQueryModelVTable](fcQSqlQueryModel_vdata(self)[])
  let self = QSqlQueryModel(h: self)
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal, owned: false)
  vtbl[].disconnectNotify(self, slotval1)

type VirtualQSqlQueryModel* {.inheritable.} = ref object of QSqlQueryModel
  vtbl*: cQSqlQueryModelVTable

method metaObject*(self: VirtualQSqlQueryModel): gen_qobjectdefs_types.QMetaObject {.base.} =
  QSqlQueryModelmetaObject(self[])
method metacast*(self: VirtualQSqlQueryModel, param1: cstring): pointer {.base.} =
  QSqlQueryModelmetacast(self[], param1)
method metacall*(self: VirtualQSqlQueryModel, param1: cint, param2: cint, param3: pointer): cint {.base.} =
  QSqlQueryModelmetacall(self[], param1, param2, param3)
method rowCount*(self: VirtualQSqlQueryModel, parent: gen_qabstractitemmodel_types.QModelIndex): cint {.base.} =
  QSqlQueryModelrowCount(self[], parent)
method columnCount*(self: VirtualQSqlQueryModel, parent: gen_qabstractitemmodel_types.QModelIndex): cint {.base.} =
  QSqlQueryModelcolumnCount(self[], parent)
method data*(self: VirtualQSqlQueryModel, item: gen_qabstractitemmodel_types.QModelIndex, role: cint): gen_qvariant_types.QVariant {.base.} =
  QSqlQueryModeldata(self[], item, role)
method headerData*(self: VirtualQSqlQueryModel, section: cint, orientation: cint, role: cint): gen_qvariant_types.QVariant {.base.} =
  QSqlQueryModelheaderData(self[], section, orientation, role)
method setHeaderData*(self: VirtualQSqlQueryModel, section: cint, orientation: cint, value: gen_qvariant_types.QVariant, role: cint): bool {.base.} =
  QSqlQueryModelsetHeaderData(self[], section, orientation, value, role)
method insertColumns*(self: VirtualQSqlQueryModel, column: cint, count: cint, parent: gen_qabstractitemmodel_types.QModelIndex): bool {.base.} =
  QSqlQueryModelinsertColumns(self[], column, count, parent)
method removeColumns*(self: VirtualQSqlQueryModel, column: cint, count: cint, parent: gen_qabstractitemmodel_types.QModelIndex): bool {.base.} =
  QSqlQueryModelremoveColumns(self[], column, count, parent)
method clear*(self: VirtualQSqlQueryModel): void {.base.} =
  QSqlQueryModelclear(self[])
method fetchMore*(self: VirtualQSqlQueryModel, parent: gen_qabstractitemmodel_types.QModelIndex): void {.base.} =
  QSqlQueryModelfetchMore(self[], parent)
method canFetchMore*(self: VirtualQSqlQueryModel, parent: gen_qabstractitemmodel_types.QModelIndex): bool {.base.} =
  QSqlQueryModelcanFetchMore(self[], parent)
method roleNames*(self: VirtualQSqlQueryModel): Table[cint,seq[byte]] {.base.} =
  QSqlQueryModelroleNames(self[])
method queryChange*(self: VirtualQSqlQueryModel): void {.base.} =
  QSqlQueryModelqueryChange(self[])
method indexInQuery*(self: VirtualQSqlQueryModel, item: gen_qabstractitemmodel_types.QModelIndex): gen_qabstractitemmodel_types.QModelIndex {.base.} =
  QSqlQueryModelindexInQuery(self[], item)
method index*(self: VirtualQSqlQueryModel, row: cint, column: cint, parent: gen_qabstractitemmodel_types.QModelIndex): gen_qabstractitemmodel_types.QModelIndex {.base.} =
  QSqlQueryModelindex(self[], row, column, parent)
method sibling*(self: VirtualQSqlQueryModel, row: cint, column: cint, idx: gen_qabstractitemmodel_types.QModelIndex): gen_qabstractitemmodel_types.QModelIndex {.base.} =
  QSqlQueryModelsibling(self[], row, column, idx)
method dropMimeData*(self: VirtualQSqlQueryModel, data: gen_qmimedata_types.QMimeData, action: cint, row: cint, column: cint, parent: gen_qabstractitemmodel_types.QModelIndex): bool {.base.} =
  QSqlQueryModeldropMimeData(self[], data, action, row, column, parent)
method flags*(self: VirtualQSqlQueryModel, index: gen_qabstractitemmodel_types.QModelIndex): cint {.base.} =
  QSqlQueryModelflags(self[], index)
method setData*(self: VirtualQSqlQueryModel, index: gen_qabstractitemmodel_types.QModelIndex, value: gen_qvariant_types.QVariant, role: cint): bool {.base.} =
  QSqlQueryModelsetData(self[], index, value, role)
method itemData*(self: VirtualQSqlQueryModel, index: gen_qabstractitemmodel_types.QModelIndex): Table[cint,gen_qvariant_types.QVariant] {.base.} =
  QSqlQueryModelitemData(self[], index)
method setItemData*(self: VirtualQSqlQueryModel, index: gen_qabstractitemmodel_types.QModelIndex, roles: Table[cint,gen_qvariant_types.QVariant]): bool {.base.} =
  QSqlQueryModelsetItemData(self[], index, roles)
method mimeTypes*(self: VirtualQSqlQueryModel): seq[string] {.base.} =
  QSqlQueryModelmimeTypes(self[])
method mimeData*(self: VirtualQSqlQueryModel, indexes: openArray[gen_qabstractitemmodel_types.QModelIndex]): gen_qmimedata_types.QMimeData {.base.} =
  QSqlQueryModelmimeData(self[], indexes)
method canDropMimeData*(self: VirtualQSqlQueryModel, data: gen_qmimedata_types.QMimeData, action: cint, row: cint, column: cint, parent: gen_qabstractitemmodel_types.QModelIndex): bool {.base.} =
  QSqlQueryModelcanDropMimeData(self[], data, action, row, column, parent)
method supportedDropActions*(self: VirtualQSqlQueryModel): cint {.base.} =
  QSqlQueryModelsupportedDropActions(self[])
method supportedDragActions*(self: VirtualQSqlQueryModel): cint {.base.} =
  QSqlQueryModelsupportedDragActions(self[])
method insertRows*(self: VirtualQSqlQueryModel, row: cint, count: cint, parent: gen_qabstractitemmodel_types.QModelIndex): bool {.base.} =
  QSqlQueryModelinsertRows(self[], row, count, parent)
method removeRows*(self: VirtualQSqlQueryModel, row: cint, count: cint, parent: gen_qabstractitemmodel_types.QModelIndex): bool {.base.} =
  QSqlQueryModelremoveRows(self[], row, count, parent)
method moveRows*(self: VirtualQSqlQueryModel, sourceParent: gen_qabstractitemmodel_types.QModelIndex, sourceRow: cint, count: cint, destinationParent: gen_qabstractitemmodel_types.QModelIndex, destinationChild: cint): bool {.base.} =
  QSqlQueryModelmoveRows(self[], sourceParent, sourceRow, count, destinationParent, destinationChild)
method moveColumns*(self: VirtualQSqlQueryModel, sourceParent: gen_qabstractitemmodel_types.QModelIndex, sourceColumn: cint, count: cint, destinationParent: gen_qabstractitemmodel_types.QModelIndex, destinationChild: cint): bool {.base.} =
  QSqlQueryModelmoveColumns(self[], sourceParent, sourceColumn, count, destinationParent, destinationChild)
method sort*(self: VirtualQSqlQueryModel, column: cint, order: cint): void {.base.} =
  QSqlQueryModelsort(self[], column, order)
method buddy*(self: VirtualQSqlQueryModel, index: gen_qabstractitemmodel_types.QModelIndex): gen_qabstractitemmodel_types.QModelIndex {.base.} =
  QSqlQueryModelbuddy(self[], index)
method match*(self: VirtualQSqlQueryModel, start: gen_qabstractitemmodel_types.QModelIndex, role: cint, value: gen_qvariant_types.QVariant, hits: cint, flags: cint): seq[gen_qabstractitemmodel_types.QModelIndex] {.base.} =
  QSqlQueryModelmatch(self[], start, role, value, hits, flags)
method span*(self: VirtualQSqlQueryModel, index: gen_qabstractitemmodel_types.QModelIndex): gen_qsize_types.QSize {.base.} =
  QSqlQueryModelspan(self[], index)
method submit*(self: VirtualQSqlQueryModel): bool {.base.} =
  QSqlQueryModelsubmit(self[])
method revert*(self: VirtualQSqlQueryModel): void {.base.} =
  QSqlQueryModelrevert(self[])
method event*(self: VirtualQSqlQueryModel, event: gen_qcoreevent_types.QEvent): bool {.base.} =
  QSqlQueryModelevent(self[], event)
method eventFilter*(self: VirtualQSqlQueryModel, watched: gen_qobject_types.QObject, event: gen_qcoreevent_types.QEvent): bool {.base.} =
  QSqlQueryModeleventFilter(self[], watched, event)
method timerEvent*(self: VirtualQSqlQueryModel, event: gen_qcoreevent_types.QTimerEvent): void {.base.} =
  QSqlQueryModeltimerEvent(self[], event)
method childEvent*(self: VirtualQSqlQueryModel, event: gen_qcoreevent_types.QChildEvent): void {.base.} =
  QSqlQueryModelchildEvent(self[], event)
method customEvent*(self: VirtualQSqlQueryModel, event: gen_qcoreevent_types.QEvent): void {.base.} =
  QSqlQueryModelcustomEvent(self[], event)
method connectNotify*(self: VirtualQSqlQueryModel, signal: gen_qmetaobject_types.QMetaMethod): void {.base.} =
  QSqlQueryModelconnectNotify(self[], signal)
method disconnectNotify*(self: VirtualQSqlQueryModel, signal: gen_qmetaobject_types.QMetaMethod): void {.base.} =
  QSqlQueryModeldisconnectNotify(self[], signal)

proc fcQSqlQueryModel_method_callback_metaObject(self: pointer): pointer {.cdecl.} =
  let inst = cast[VirtualQSqlQueryModel](fcQSqlQueryModel_vdata(self)[])
  var virtualReturn = inst.metaObject()
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc fcQSqlQueryModel_method_callback_metacast(self: pointer, param1: cstring): pointer {.cdecl.} =
  let inst = cast[VirtualQSqlQueryModel](fcQSqlQueryModel_vdata(self)[])
  let slotval1 = (param1)
  var virtualReturn = inst.metacast(slotval1)
  virtualReturn

proc fcQSqlQueryModel_method_callback_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.cdecl.} =
  let inst = cast[VirtualQSqlQueryModel](fcQSqlQueryModel_vdata(self)[])
  let slotval1 = cint(param1)
  let slotval2 = param2
  let slotval3 = param3
  var virtualReturn = inst.metacall(slotval1, slotval2, slotval3)
  virtualReturn

proc fcQSqlQueryModel_method_callback_rowCount(self: pointer, parent: pointer): cint {.cdecl.} =
  let inst = cast[VirtualQSqlQueryModel](fcQSqlQueryModel_vdata(self)[])
  let slotval1 = gen_qabstractitemmodel_types.QModelIndex(h: parent, owned: false)
  var virtualReturn = inst.rowCount(slotval1)
  virtualReturn

proc fcQSqlQueryModel_method_callback_columnCount(self: pointer, parent: pointer): cint {.cdecl.} =
  let inst = cast[VirtualQSqlQueryModel](fcQSqlQueryModel_vdata(self)[])
  let slotval1 = gen_qabstractitemmodel_types.QModelIndex(h: parent, owned: false)
  var virtualReturn = inst.columnCount(slotval1)
  virtualReturn

proc fcQSqlQueryModel_method_callback_data(self: pointer, item: pointer, role: cint): pointer {.cdecl.} =
  let inst = cast[VirtualQSqlQueryModel](fcQSqlQueryModel_vdata(self)[])
  let slotval1 = gen_qabstractitemmodel_types.QModelIndex(h: item, owned: false)
  let slotval2 = role
  var virtualReturn = inst.data(slotval1, slotval2)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc fcQSqlQueryModel_method_callback_headerData(self: pointer, section: cint, orientation: cint, role: cint): pointer {.cdecl.} =
  let inst = cast[VirtualQSqlQueryModel](fcQSqlQueryModel_vdata(self)[])
  let slotval1 = section
  let slotval2 = cint(orientation)
  let slotval3 = role
  var virtualReturn = inst.headerData(slotval1, slotval2, slotval3)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc fcQSqlQueryModel_method_callback_setHeaderData(self: pointer, section: cint, orientation: cint, value: pointer, role: cint): bool {.cdecl.} =
  let inst = cast[VirtualQSqlQueryModel](fcQSqlQueryModel_vdata(self)[])
  let slotval1 = section
  let slotval2 = cint(orientation)
  let slotval3 = gen_qvariant_types.QVariant(h: value, owned: false)
  let slotval4 = role
  var virtualReturn = inst.setHeaderData(slotval1, slotval2, slotval3, slotval4)
  virtualReturn

proc fcQSqlQueryModel_method_callback_insertColumns(self: pointer, column: cint, count: cint, parent: pointer): bool {.cdecl.} =
  let inst = cast[VirtualQSqlQueryModel](fcQSqlQueryModel_vdata(self)[])
  let slotval1 = column
  let slotval2 = count
  let slotval3 = gen_qabstractitemmodel_types.QModelIndex(h: parent, owned: false)
  var virtualReturn = inst.insertColumns(slotval1, slotval2, slotval3)
  virtualReturn

proc fcQSqlQueryModel_method_callback_removeColumns(self: pointer, column: cint, count: cint, parent: pointer): bool {.cdecl.} =
  let inst = cast[VirtualQSqlQueryModel](fcQSqlQueryModel_vdata(self)[])
  let slotval1 = column
  let slotval2 = count
  let slotval3 = gen_qabstractitemmodel_types.QModelIndex(h: parent, owned: false)
  var virtualReturn = inst.removeColumns(slotval1, slotval2, slotval3)
  virtualReturn

proc fcQSqlQueryModel_method_callback_clear(self: pointer): void {.cdecl.} =
  let inst = cast[VirtualQSqlQueryModel](fcQSqlQueryModel_vdata(self)[])
  inst.clear()

proc fcQSqlQueryModel_method_callback_fetchMore(self: pointer, parent: pointer): void {.cdecl.} =
  let inst = cast[VirtualQSqlQueryModel](fcQSqlQueryModel_vdata(self)[])
  let slotval1 = gen_qabstractitemmodel_types.QModelIndex(h: parent, owned: false)
  inst.fetchMore(slotval1)

proc fcQSqlQueryModel_method_callback_canFetchMore(self: pointer, parent: pointer): bool {.cdecl.} =
  let inst = cast[VirtualQSqlQueryModel](fcQSqlQueryModel_vdata(self)[])
  let slotval1 = gen_qabstractitemmodel_types.QModelIndex(h: parent, owned: false)
  var virtualReturn = inst.canFetchMore(slotval1)
  virtualReturn

proc fcQSqlQueryModel_method_callback_roleNames(self: pointer): struct_seaqt_map {.cdecl.} =
  let inst = cast[VirtualQSqlQueryModel](fcQSqlQueryModel_vdata(self)[])
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

proc fcQSqlQueryModel_method_callback_queryChange(self: pointer): void {.cdecl.} =
  let inst = cast[VirtualQSqlQueryModel](fcQSqlQueryModel_vdata(self)[])
  inst.queryChange()

proc fcQSqlQueryModel_method_callback_indexInQuery(self: pointer, item: pointer): pointer {.cdecl.} =
  let inst = cast[VirtualQSqlQueryModel](fcQSqlQueryModel_vdata(self)[])
  let slotval1 = gen_qabstractitemmodel_types.QModelIndex(h: item, owned: false)
  var virtualReturn = inst.indexInQuery(slotval1)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc fcQSqlQueryModel_method_callback_index(self: pointer, row: cint, column: cint, parent: pointer): pointer {.cdecl.} =
  let inst = cast[VirtualQSqlQueryModel](fcQSqlQueryModel_vdata(self)[])
  let slotval1 = row
  let slotval2 = column
  let slotval3 = gen_qabstractitemmodel_types.QModelIndex(h: parent, owned: false)
  var virtualReturn = inst.index(slotval1, slotval2, slotval3)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc fcQSqlQueryModel_method_callback_sibling(self: pointer, row: cint, column: cint, idx: pointer): pointer {.cdecl.} =
  let inst = cast[VirtualQSqlQueryModel](fcQSqlQueryModel_vdata(self)[])
  let slotval1 = row
  let slotval2 = column
  let slotval3 = gen_qabstractitemmodel_types.QModelIndex(h: idx, owned: false)
  var virtualReturn = inst.sibling(slotval1, slotval2, slotval3)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc fcQSqlQueryModel_method_callback_dropMimeData(self: pointer, data: pointer, action: cint, row: cint, column: cint, parent: pointer): bool {.cdecl.} =
  let inst = cast[VirtualQSqlQueryModel](fcQSqlQueryModel_vdata(self)[])
  let slotval1 = gen_qmimedata_types.QMimeData(h: data, owned: false)
  let slotval2 = cint(action)
  let slotval3 = row
  let slotval4 = column
  let slotval5 = gen_qabstractitemmodel_types.QModelIndex(h: parent, owned: false)
  var virtualReturn = inst.dropMimeData(slotval1, slotval2, slotval3, slotval4, slotval5)
  virtualReturn

proc fcQSqlQueryModel_method_callback_flags(self: pointer, index: pointer): cint {.cdecl.} =
  let inst = cast[VirtualQSqlQueryModel](fcQSqlQueryModel_vdata(self)[])
  let slotval1 = gen_qabstractitemmodel_types.QModelIndex(h: index, owned: false)
  var virtualReturn = inst.flags(slotval1)
  cint(virtualReturn)

proc fcQSqlQueryModel_method_callback_setData(self: pointer, index: pointer, value: pointer, role: cint): bool {.cdecl.} =
  let inst = cast[VirtualQSqlQueryModel](fcQSqlQueryModel_vdata(self)[])
  let slotval1 = gen_qabstractitemmodel_types.QModelIndex(h: index, owned: false)
  let slotval2 = gen_qvariant_types.QVariant(h: value, owned: false)
  let slotval3 = role
  var virtualReturn = inst.setData(slotval1, slotval2, slotval3)
  virtualReturn

proc fcQSqlQueryModel_method_callback_itemData(self: pointer, index: pointer): struct_seaqt_map {.cdecl.} =
  let inst = cast[VirtualQSqlQueryModel](fcQSqlQueryModel_vdata(self)[])
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

proc fcQSqlQueryModel_method_callback_setItemData(self: pointer, index: pointer, roles: struct_seaqt_map): bool {.cdecl.} =
  let inst = cast[VirtualQSqlQueryModel](fcQSqlQueryModel_vdata(self)[])
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

proc fcQSqlQueryModel_method_callback_mimeTypes(self: pointer): struct_seaqt_array {.cdecl.} =
  let inst = cast[VirtualQSqlQueryModel](fcQSqlQueryModel_vdata(self)[])
  var virtualReturn = inst.mimeTypes()
  var virtualReturn_CArray = cast[ptr UncheckedArray[struct_seaqt_string]](if len(virtualReturn) > 0: c_malloc(c_sizet(sizeof(struct_seaqt_string) * len(virtualReturn))) else: nil)
  for i in 0..<len(virtualReturn):
    var virtualReturn_i_copy = if len(virtualReturn[i]) > 0: c_malloc(csize_t(len(virtualReturn[i]))) else: nil
    if len(virtualReturn[i]) > 0: copyMem(virtualReturn_i_copy, addr virtualReturn[i][0], csize_t(len(virtualReturn[i])))
    virtualReturn_CArray[i] = struct_seaqt_string(data: virtualReturn_i_copy, len: csize_t(len(virtualReturn[i])))

  struct_seaqt_array(len: csize_t(len(virtualReturn)), data: if len(virtualReturn) == 0: nil else: addr(virtualReturn_CArray[0]))

proc fcQSqlQueryModel_method_callback_mimeData(self: pointer, indexes: struct_seaqt_array): pointer {.cdecl.} =
  let inst = cast[VirtualQSqlQueryModel](fcQSqlQueryModel_vdata(self)[])
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

proc fcQSqlQueryModel_method_callback_canDropMimeData(self: pointer, data: pointer, action: cint, row: cint, column: cint, parent: pointer): bool {.cdecl.} =
  let inst = cast[VirtualQSqlQueryModel](fcQSqlQueryModel_vdata(self)[])
  let slotval1 = gen_qmimedata_types.QMimeData(h: data, owned: false)
  let slotval2 = cint(action)
  let slotval3 = row
  let slotval4 = column
  let slotval5 = gen_qabstractitemmodel_types.QModelIndex(h: parent, owned: false)
  var virtualReturn = inst.canDropMimeData(slotval1, slotval2, slotval3, slotval4, slotval5)
  virtualReturn

proc fcQSqlQueryModel_method_callback_supportedDropActions(self: pointer): cint {.cdecl.} =
  let inst = cast[VirtualQSqlQueryModel](fcQSqlQueryModel_vdata(self)[])
  var virtualReturn = inst.supportedDropActions()
  cint(virtualReturn)

proc fcQSqlQueryModel_method_callback_supportedDragActions(self: pointer): cint {.cdecl.} =
  let inst = cast[VirtualQSqlQueryModel](fcQSqlQueryModel_vdata(self)[])
  var virtualReturn = inst.supportedDragActions()
  cint(virtualReturn)

proc fcQSqlQueryModel_method_callback_insertRows(self: pointer, row: cint, count: cint, parent: pointer): bool {.cdecl.} =
  let inst = cast[VirtualQSqlQueryModel](fcQSqlQueryModel_vdata(self)[])
  let slotval1 = row
  let slotval2 = count
  let slotval3 = gen_qabstractitemmodel_types.QModelIndex(h: parent, owned: false)
  var virtualReturn = inst.insertRows(slotval1, slotval2, slotval3)
  virtualReturn

proc fcQSqlQueryModel_method_callback_removeRows(self: pointer, row: cint, count: cint, parent: pointer): bool {.cdecl.} =
  let inst = cast[VirtualQSqlQueryModel](fcQSqlQueryModel_vdata(self)[])
  let slotval1 = row
  let slotval2 = count
  let slotval3 = gen_qabstractitemmodel_types.QModelIndex(h: parent, owned: false)
  var virtualReturn = inst.removeRows(slotval1, slotval2, slotval3)
  virtualReturn

proc fcQSqlQueryModel_method_callback_moveRows(self: pointer, sourceParent: pointer, sourceRow: cint, count: cint, destinationParent: pointer, destinationChild: cint): bool {.cdecl.} =
  let inst = cast[VirtualQSqlQueryModel](fcQSqlQueryModel_vdata(self)[])
  let slotval1 = gen_qabstractitemmodel_types.QModelIndex(h: sourceParent, owned: false)
  let slotval2 = sourceRow
  let slotval3 = count
  let slotval4 = gen_qabstractitemmodel_types.QModelIndex(h: destinationParent, owned: false)
  let slotval5 = destinationChild
  var virtualReturn = inst.moveRows(slotval1, slotval2, slotval3, slotval4, slotval5)
  virtualReturn

proc fcQSqlQueryModel_method_callback_moveColumns(self: pointer, sourceParent: pointer, sourceColumn: cint, count: cint, destinationParent: pointer, destinationChild: cint): bool {.cdecl.} =
  let inst = cast[VirtualQSqlQueryModel](fcQSqlQueryModel_vdata(self)[])
  let slotval1 = gen_qabstractitemmodel_types.QModelIndex(h: sourceParent, owned: false)
  let slotval2 = sourceColumn
  let slotval3 = count
  let slotval4 = gen_qabstractitemmodel_types.QModelIndex(h: destinationParent, owned: false)
  let slotval5 = destinationChild
  var virtualReturn = inst.moveColumns(slotval1, slotval2, slotval3, slotval4, slotval5)
  virtualReturn

proc fcQSqlQueryModel_method_callback_sort(self: pointer, column: cint, order: cint): void {.cdecl.} =
  let inst = cast[VirtualQSqlQueryModel](fcQSqlQueryModel_vdata(self)[])
  let slotval1 = column
  let slotval2 = cint(order)
  inst.sort(slotval1, slotval2)

proc fcQSqlQueryModel_method_callback_buddy(self: pointer, index: pointer): pointer {.cdecl.} =
  let inst = cast[VirtualQSqlQueryModel](fcQSqlQueryModel_vdata(self)[])
  let slotval1 = gen_qabstractitemmodel_types.QModelIndex(h: index, owned: false)
  var virtualReturn = inst.buddy(slotval1)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc fcQSqlQueryModel_method_callback_match(self: pointer, start: pointer, role: cint, value: pointer, hits: cint, flags: cint): struct_seaqt_array {.cdecl.} =
  let inst = cast[VirtualQSqlQueryModel](fcQSqlQueryModel_vdata(self)[])
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

proc fcQSqlQueryModel_method_callback_span(self: pointer, index: pointer): pointer {.cdecl.} =
  let inst = cast[VirtualQSqlQueryModel](fcQSqlQueryModel_vdata(self)[])
  let slotval1 = gen_qabstractitemmodel_types.QModelIndex(h: index, owned: false)
  var virtualReturn = inst.span(slotval1)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc fcQSqlQueryModel_method_callback_submit(self: pointer): bool {.cdecl.} =
  let inst = cast[VirtualQSqlQueryModel](fcQSqlQueryModel_vdata(self)[])
  var virtualReturn = inst.submit()
  virtualReturn

proc fcQSqlQueryModel_method_callback_revert(self: pointer): void {.cdecl.} =
  let inst = cast[VirtualQSqlQueryModel](fcQSqlQueryModel_vdata(self)[])
  inst.revert()

proc fcQSqlQueryModel_method_callback_event(self: pointer, event: pointer): bool {.cdecl.} =
  let inst = cast[VirtualQSqlQueryModel](fcQSqlQueryModel_vdata(self)[])
  let slotval1 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  var virtualReturn = inst.event(slotval1)
  virtualReturn

proc fcQSqlQueryModel_method_callback_eventFilter(self: pointer, watched: pointer, event: pointer): bool {.cdecl.} =
  let inst = cast[VirtualQSqlQueryModel](fcQSqlQueryModel_vdata(self)[])
  let slotval1 = gen_qobject_types.QObject(h: watched, owned: false)
  let slotval2 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  var virtualReturn = inst.eventFilter(slotval1, slotval2)
  virtualReturn

proc fcQSqlQueryModel_method_callback_timerEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQSqlQueryModel](fcQSqlQueryModel_vdata(self)[])
  let slotval1 = gen_qcoreevent_types.QTimerEvent(h: event, owned: false)
  inst.timerEvent(slotval1)

proc fcQSqlQueryModel_method_callback_childEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQSqlQueryModel](fcQSqlQueryModel_vdata(self)[])
  let slotval1 = gen_qcoreevent_types.QChildEvent(h: event, owned: false)
  inst.childEvent(slotval1)

proc fcQSqlQueryModel_method_callback_customEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQSqlQueryModel](fcQSqlQueryModel_vdata(self)[])
  let slotval1 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  inst.customEvent(slotval1)

proc fcQSqlQueryModel_method_callback_connectNotify(self: pointer, signal: pointer): void {.cdecl.} =
  let inst = cast[VirtualQSqlQueryModel](fcQSqlQueryModel_vdata(self)[])
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal, owned: false)
  inst.connectNotify(slotval1)

proc fcQSqlQueryModel_method_callback_disconnectNotify(self: pointer, signal: pointer): void {.cdecl.} =
  let inst = cast[VirtualQSqlQueryModel](fcQSqlQueryModel_vdata(self)[])
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal, owned: false)
  inst.disconnectNotify(slotval1)


proc beginInsertRows*(self: gen_qsqlquerymodel_types.QSqlQueryModel, parent: gen_qabstractitemmodel_types.QModelIndex, first: cint, last: cint): void =
  fcQSqlQueryModel_protectedbase_beginInsertRows(self.h, parent.h, first, last)

proc endInsertRows*(self: gen_qsqlquerymodel_types.QSqlQueryModel): void =
  fcQSqlQueryModel_protectedbase_endInsertRows(self.h)

proc beginRemoveRows*(self: gen_qsqlquerymodel_types.QSqlQueryModel, parent: gen_qabstractitemmodel_types.QModelIndex, first: cint, last: cint): void =
  fcQSqlQueryModel_protectedbase_beginRemoveRows(self.h, parent.h, first, last)

proc endRemoveRows*(self: gen_qsqlquerymodel_types.QSqlQueryModel): void =
  fcQSqlQueryModel_protectedbase_endRemoveRows(self.h)

proc beginInsertColumns*(self: gen_qsqlquerymodel_types.QSqlQueryModel, parent: gen_qabstractitemmodel_types.QModelIndex, first: cint, last: cint): void =
  fcQSqlQueryModel_protectedbase_beginInsertColumns(self.h, parent.h, first, last)

proc endInsertColumns*(self: gen_qsqlquerymodel_types.QSqlQueryModel): void =
  fcQSqlQueryModel_protectedbase_endInsertColumns(self.h)

proc beginRemoveColumns*(self: gen_qsqlquerymodel_types.QSqlQueryModel, parent: gen_qabstractitemmodel_types.QModelIndex, first: cint, last: cint): void =
  fcQSqlQueryModel_protectedbase_beginRemoveColumns(self.h, parent.h, first, last)

proc endRemoveColumns*(self: gen_qsqlquerymodel_types.QSqlQueryModel): void =
  fcQSqlQueryModel_protectedbase_endRemoveColumns(self.h)

proc beginResetModel*(self: gen_qsqlquerymodel_types.QSqlQueryModel): void =
  fcQSqlQueryModel_protectedbase_beginResetModel(self.h)

proc endResetModel*(self: gen_qsqlquerymodel_types.QSqlQueryModel): void =
  fcQSqlQueryModel_protectedbase_endResetModel(self.h)

proc setLastError*(self: gen_qsqlquerymodel_types.QSqlQueryModel, error: gen_qsqlerror_types.QSqlError): void =
  fcQSqlQueryModel_protectedbase_setLastError(self.h, error.h)

proc resetInternalData*(self: gen_qsqlquerymodel_types.QSqlQueryModel): void =
  fcQSqlQueryModel_protectedbase_resetInternalData(self.h)

proc createIndex*(self: gen_qsqlquerymodel_types.QSqlQueryModel, row: cint, column: cint): gen_qabstractitemmodel_types.QModelIndex =
  gen_qabstractitemmodel_types.QModelIndex(h: fcQSqlQueryModel_protectedbase_createIndex(self.h, row, column), owned: true)

proc encodeData*(self: gen_qsqlquerymodel_types.QSqlQueryModel, indexes: openArray[gen_qabstractitemmodel_types.QModelIndex], stream: gen_qdatastream_types.QDataStream): void =
  var indexes_CArray = newSeq[pointer](len(indexes))
  for i in 0..<len(indexes):
    indexes_CArray[i] = indexes[i].h

  fcQSqlQueryModel_protectedbase_encodeData(self.h, struct_seaqt_array(len: csize_t(len(indexes)), data: if len(indexes) == 0: nil else: addr(indexes_CArray[0])), stream.h)

proc decodeData*(self: gen_qsqlquerymodel_types.QSqlQueryModel, row: cint, column: cint, parent: gen_qabstractitemmodel_types.QModelIndex, stream: gen_qdatastream_types.QDataStream): bool =
  fcQSqlQueryModel_protectedbase_decodeData(self.h, row, column, parent.h, stream.h)

proc beginMoveRows*(self: gen_qsqlquerymodel_types.QSqlQueryModel, sourceParent: gen_qabstractitemmodel_types.QModelIndex, sourceFirst: cint, sourceLast: cint, destinationParent: gen_qabstractitemmodel_types.QModelIndex, destinationRow: cint): bool =
  fcQSqlQueryModel_protectedbase_beginMoveRows(self.h, sourceParent.h, sourceFirst, sourceLast, destinationParent.h, destinationRow)

proc endMoveRows*(self: gen_qsqlquerymodel_types.QSqlQueryModel): void =
  fcQSqlQueryModel_protectedbase_endMoveRows(self.h)

proc beginMoveColumns*(self: gen_qsqlquerymodel_types.QSqlQueryModel, sourceParent: gen_qabstractitemmodel_types.QModelIndex, sourceFirst: cint, sourceLast: cint, destinationParent: gen_qabstractitemmodel_types.QModelIndex, destinationColumn: cint): bool =
  fcQSqlQueryModel_protectedbase_beginMoveColumns(self.h, sourceParent.h, sourceFirst, sourceLast, destinationParent.h, destinationColumn)

proc endMoveColumns*(self: gen_qsqlquerymodel_types.QSqlQueryModel): void =
  fcQSqlQueryModel_protectedbase_endMoveColumns(self.h)

proc changePersistentIndex*(self: gen_qsqlquerymodel_types.QSqlQueryModel, fromVal: gen_qabstractitemmodel_types.QModelIndex, to: gen_qabstractitemmodel_types.QModelIndex): void =
  fcQSqlQueryModel_protectedbase_changePersistentIndex(self.h, fromVal.h, to.h)

proc changePersistentIndexList*(self: gen_qsqlquerymodel_types.QSqlQueryModel, fromVal: openArray[gen_qabstractitemmodel_types.QModelIndex], to: openArray[gen_qabstractitemmodel_types.QModelIndex]): void =
  var fromVal_CArray = newSeq[pointer](len(fromVal))
  for i in 0..<len(fromVal):
    fromVal_CArray[i] = fromVal[i].h

  var to_CArray = newSeq[pointer](len(to))
  for i in 0..<len(to):
    to_CArray[i] = to[i].h

  fcQSqlQueryModel_protectedbase_changePersistentIndexList(self.h, struct_seaqt_array(len: csize_t(len(fromVal)), data: if len(fromVal) == 0: nil else: addr(fromVal_CArray[0])), struct_seaqt_array(len: csize_t(len(to)), data: if len(to) == 0: nil else: addr(to_CArray[0])))

proc persistentIndexList*(self: gen_qsqlquerymodel_types.QSqlQueryModel): seq[gen_qabstractitemmodel_types.QModelIndex] =
  var v_ma = fcQSqlQueryModel_protectedbase_persistentIndexList(self.h)
  var vx_ret = newSeq[gen_qabstractitemmodel_types.QModelIndex](int(v_ma.len))
  let v_outCast = cast[ptr UncheckedArray[pointer]](v_ma.data)
  for i in 0 ..< v_ma.len:
    vx_ret[i] = gen_qabstractitemmodel_types.QModelIndex(h: v_outCast[i], owned: true)
  c_free(v_ma.data)
  vx_ret

proc sender*(self: gen_qsqlquerymodel_types.QSqlQueryModel): gen_qobject_types.QObject =
  gen_qobject_types.QObject(h: fcQSqlQueryModel_protectedbase_sender(self.h), owned: false)

proc senderSignalIndex*(self: gen_qsqlquerymodel_types.QSqlQueryModel): cint =
  fcQSqlQueryModel_protectedbase_senderSignalIndex(self.h)

proc receivers*(self: gen_qsqlquerymodel_types.QSqlQueryModel, signal: cstring): cint =
  fcQSqlQueryModel_protectedbase_receivers(self.h, signal)

proc isSignalConnected*(self: gen_qsqlquerymodel_types.QSqlQueryModel, signal: gen_qmetaobject_types.QMetaMethod): bool =
  fcQSqlQueryModel_protectedbase_isSignalConnected(self.h, signal.h)

proc create*(T: type gen_qsqlquerymodel_types.QSqlQueryModel,
    vtbl: ref QSqlQueryModelVTable = nil): gen_qsqlquerymodel_types.QSqlQueryModel =
  let vtbl = if vtbl == nil: new QSqlQueryModelVTable else: vtbl
  GC_ref(vtbl)
  vtbl[].vtbl.destructor = proc(self: pointer) {.cdecl.} =
    let vtbl = cast[ref QSqlQueryModelVTable](fcQSqlQueryModel_vdata(self)[])
    GC_unref(vtbl)
  if not isNil(vtbl[].metaObject):
    vtbl[].vtbl.metaObject = fcQSqlQueryModel_vtable_callback_metaObject
  if not isNil(vtbl[].metacast):
    vtbl[].vtbl.metacast = fcQSqlQueryModel_vtable_callback_metacast
  if not isNil(vtbl[].metacall):
    vtbl[].vtbl.metacall = fcQSqlQueryModel_vtable_callback_metacall
  if not isNil(vtbl[].rowCount):
    vtbl[].vtbl.rowCount = fcQSqlQueryModel_vtable_callback_rowCount
  if not isNil(vtbl[].columnCount):
    vtbl[].vtbl.columnCount = fcQSqlQueryModel_vtable_callback_columnCount
  if not isNil(vtbl[].data):
    vtbl[].vtbl.data = fcQSqlQueryModel_vtable_callback_data
  if not isNil(vtbl[].headerData):
    vtbl[].vtbl.headerData = fcQSqlQueryModel_vtable_callback_headerData
  if not isNil(vtbl[].setHeaderData):
    vtbl[].vtbl.setHeaderData = fcQSqlQueryModel_vtable_callback_setHeaderData
  if not isNil(vtbl[].insertColumns):
    vtbl[].vtbl.insertColumns = fcQSqlQueryModel_vtable_callback_insertColumns
  if not isNil(vtbl[].removeColumns):
    vtbl[].vtbl.removeColumns = fcQSqlQueryModel_vtable_callback_removeColumns
  if not isNil(vtbl[].clear):
    vtbl[].vtbl.clear = fcQSqlQueryModel_vtable_callback_clear
  if not isNil(vtbl[].fetchMore):
    vtbl[].vtbl.fetchMore = fcQSqlQueryModel_vtable_callback_fetchMore
  if not isNil(vtbl[].canFetchMore):
    vtbl[].vtbl.canFetchMore = fcQSqlQueryModel_vtable_callback_canFetchMore
  if not isNil(vtbl[].roleNames):
    vtbl[].vtbl.roleNames = fcQSqlQueryModel_vtable_callback_roleNames
  if not isNil(vtbl[].queryChange):
    vtbl[].vtbl.queryChange = fcQSqlQueryModel_vtable_callback_queryChange
  if not isNil(vtbl[].indexInQuery):
    vtbl[].vtbl.indexInQuery = fcQSqlQueryModel_vtable_callback_indexInQuery
  if not isNil(vtbl[].index):
    vtbl[].vtbl.index = fcQSqlQueryModel_vtable_callback_index
  if not isNil(vtbl[].sibling):
    vtbl[].vtbl.sibling = fcQSqlQueryModel_vtable_callback_sibling
  if not isNil(vtbl[].dropMimeData):
    vtbl[].vtbl.dropMimeData = fcQSqlQueryModel_vtable_callback_dropMimeData
  if not isNil(vtbl[].flags):
    vtbl[].vtbl.flags = fcQSqlQueryModel_vtable_callback_flags
  if not isNil(vtbl[].setData):
    vtbl[].vtbl.setData = fcQSqlQueryModel_vtable_callback_setData
  if not isNil(vtbl[].itemData):
    vtbl[].vtbl.itemData = fcQSqlQueryModel_vtable_callback_itemData
  if not isNil(vtbl[].setItemData):
    vtbl[].vtbl.setItemData = fcQSqlQueryModel_vtable_callback_setItemData
  if not isNil(vtbl[].mimeTypes):
    vtbl[].vtbl.mimeTypes = fcQSqlQueryModel_vtable_callback_mimeTypes
  if not isNil(vtbl[].mimeData):
    vtbl[].vtbl.mimeData = fcQSqlQueryModel_vtable_callback_mimeData
  if not isNil(vtbl[].canDropMimeData):
    vtbl[].vtbl.canDropMimeData = fcQSqlQueryModel_vtable_callback_canDropMimeData
  if not isNil(vtbl[].supportedDropActions):
    vtbl[].vtbl.supportedDropActions = fcQSqlQueryModel_vtable_callback_supportedDropActions
  if not isNil(vtbl[].supportedDragActions):
    vtbl[].vtbl.supportedDragActions = fcQSqlQueryModel_vtable_callback_supportedDragActions
  if not isNil(vtbl[].insertRows):
    vtbl[].vtbl.insertRows = fcQSqlQueryModel_vtable_callback_insertRows
  if not isNil(vtbl[].removeRows):
    vtbl[].vtbl.removeRows = fcQSqlQueryModel_vtable_callback_removeRows
  if not isNil(vtbl[].moveRows):
    vtbl[].vtbl.moveRows = fcQSqlQueryModel_vtable_callback_moveRows
  if not isNil(vtbl[].moveColumns):
    vtbl[].vtbl.moveColumns = fcQSqlQueryModel_vtable_callback_moveColumns
  if not isNil(vtbl[].sort):
    vtbl[].vtbl.sort = fcQSqlQueryModel_vtable_callback_sort
  if not isNil(vtbl[].buddy):
    vtbl[].vtbl.buddy = fcQSqlQueryModel_vtable_callback_buddy
  if not isNil(vtbl[].match):
    vtbl[].vtbl.match = fcQSqlQueryModel_vtable_callback_match
  if not isNil(vtbl[].span):
    vtbl[].vtbl.span = fcQSqlQueryModel_vtable_callback_span
  if not isNil(vtbl[].submit):
    vtbl[].vtbl.submit = fcQSqlQueryModel_vtable_callback_submit
  if not isNil(vtbl[].revert):
    vtbl[].vtbl.revert = fcQSqlQueryModel_vtable_callback_revert
  if not isNil(vtbl[].event):
    vtbl[].vtbl.event = fcQSqlQueryModel_vtable_callback_event
  if not isNil(vtbl[].eventFilter):
    vtbl[].vtbl.eventFilter = fcQSqlQueryModel_vtable_callback_eventFilter
  if not isNil(vtbl[].timerEvent):
    vtbl[].vtbl.timerEvent = fcQSqlQueryModel_vtable_callback_timerEvent
  if not isNil(vtbl[].childEvent):
    vtbl[].vtbl.childEvent = fcQSqlQueryModel_vtable_callback_childEvent
  if not isNil(vtbl[].customEvent):
    vtbl[].vtbl.customEvent = fcQSqlQueryModel_vtable_callback_customEvent
  if not isNil(vtbl[].connectNotify):
    vtbl[].vtbl.connectNotify = fcQSqlQueryModel_vtable_callback_connectNotify
  if not isNil(vtbl[].disconnectNotify):
    vtbl[].vtbl.disconnectNotify = fcQSqlQueryModel_vtable_callback_disconnectNotify
  let tmp = gen_qsqlquerymodel_types.QSqlQueryModel(h: fcQSqlQueryModel_new(addr(vtbl[].vtbl), csize_t(sizeof(pointer))), owned: true)
  fcQSqlQueryModel_vdata(tmp.h)[] = addr(vtbl[])
  tmp
proc create*(T: type gen_qsqlquerymodel_types.QSqlQueryModel,
    parent: gen_qobject_types.QObject,
    vtbl: ref QSqlQueryModelVTable = nil): gen_qsqlquerymodel_types.QSqlQueryModel =
  let vtbl = if vtbl == nil: new QSqlQueryModelVTable else: vtbl
  GC_ref(vtbl)
  vtbl[].vtbl.destructor = proc(self: pointer) {.cdecl.} =
    let vtbl = cast[ref QSqlQueryModelVTable](fcQSqlQueryModel_vdata(self)[])
    GC_unref(vtbl)
  if not isNil(vtbl[].metaObject):
    vtbl[].vtbl.metaObject = fcQSqlQueryModel_vtable_callback_metaObject
  if not isNil(vtbl[].metacast):
    vtbl[].vtbl.metacast = fcQSqlQueryModel_vtable_callback_metacast
  if not isNil(vtbl[].metacall):
    vtbl[].vtbl.metacall = fcQSqlQueryModel_vtable_callback_metacall
  if not isNil(vtbl[].rowCount):
    vtbl[].vtbl.rowCount = fcQSqlQueryModel_vtable_callback_rowCount
  if not isNil(vtbl[].columnCount):
    vtbl[].vtbl.columnCount = fcQSqlQueryModel_vtable_callback_columnCount
  if not isNil(vtbl[].data):
    vtbl[].vtbl.data = fcQSqlQueryModel_vtable_callback_data
  if not isNil(vtbl[].headerData):
    vtbl[].vtbl.headerData = fcQSqlQueryModel_vtable_callback_headerData
  if not isNil(vtbl[].setHeaderData):
    vtbl[].vtbl.setHeaderData = fcQSqlQueryModel_vtable_callback_setHeaderData
  if not isNil(vtbl[].insertColumns):
    vtbl[].vtbl.insertColumns = fcQSqlQueryModel_vtable_callback_insertColumns
  if not isNil(vtbl[].removeColumns):
    vtbl[].vtbl.removeColumns = fcQSqlQueryModel_vtable_callback_removeColumns
  if not isNil(vtbl[].clear):
    vtbl[].vtbl.clear = fcQSqlQueryModel_vtable_callback_clear
  if not isNil(vtbl[].fetchMore):
    vtbl[].vtbl.fetchMore = fcQSqlQueryModel_vtable_callback_fetchMore
  if not isNil(vtbl[].canFetchMore):
    vtbl[].vtbl.canFetchMore = fcQSqlQueryModel_vtable_callback_canFetchMore
  if not isNil(vtbl[].roleNames):
    vtbl[].vtbl.roleNames = fcQSqlQueryModel_vtable_callback_roleNames
  if not isNil(vtbl[].queryChange):
    vtbl[].vtbl.queryChange = fcQSqlQueryModel_vtable_callback_queryChange
  if not isNil(vtbl[].indexInQuery):
    vtbl[].vtbl.indexInQuery = fcQSqlQueryModel_vtable_callback_indexInQuery
  if not isNil(vtbl[].index):
    vtbl[].vtbl.index = fcQSqlQueryModel_vtable_callback_index
  if not isNil(vtbl[].sibling):
    vtbl[].vtbl.sibling = fcQSqlQueryModel_vtable_callback_sibling
  if not isNil(vtbl[].dropMimeData):
    vtbl[].vtbl.dropMimeData = fcQSqlQueryModel_vtable_callback_dropMimeData
  if not isNil(vtbl[].flags):
    vtbl[].vtbl.flags = fcQSqlQueryModel_vtable_callback_flags
  if not isNil(vtbl[].setData):
    vtbl[].vtbl.setData = fcQSqlQueryModel_vtable_callback_setData
  if not isNil(vtbl[].itemData):
    vtbl[].vtbl.itemData = fcQSqlQueryModel_vtable_callback_itemData
  if not isNil(vtbl[].setItemData):
    vtbl[].vtbl.setItemData = fcQSqlQueryModel_vtable_callback_setItemData
  if not isNil(vtbl[].mimeTypes):
    vtbl[].vtbl.mimeTypes = fcQSqlQueryModel_vtable_callback_mimeTypes
  if not isNil(vtbl[].mimeData):
    vtbl[].vtbl.mimeData = fcQSqlQueryModel_vtable_callback_mimeData
  if not isNil(vtbl[].canDropMimeData):
    vtbl[].vtbl.canDropMimeData = fcQSqlQueryModel_vtable_callback_canDropMimeData
  if not isNil(vtbl[].supportedDropActions):
    vtbl[].vtbl.supportedDropActions = fcQSqlQueryModel_vtable_callback_supportedDropActions
  if not isNil(vtbl[].supportedDragActions):
    vtbl[].vtbl.supportedDragActions = fcQSqlQueryModel_vtable_callback_supportedDragActions
  if not isNil(vtbl[].insertRows):
    vtbl[].vtbl.insertRows = fcQSqlQueryModel_vtable_callback_insertRows
  if not isNil(vtbl[].removeRows):
    vtbl[].vtbl.removeRows = fcQSqlQueryModel_vtable_callback_removeRows
  if not isNil(vtbl[].moveRows):
    vtbl[].vtbl.moveRows = fcQSqlQueryModel_vtable_callback_moveRows
  if not isNil(vtbl[].moveColumns):
    vtbl[].vtbl.moveColumns = fcQSqlQueryModel_vtable_callback_moveColumns
  if not isNil(vtbl[].sort):
    vtbl[].vtbl.sort = fcQSqlQueryModel_vtable_callback_sort
  if not isNil(vtbl[].buddy):
    vtbl[].vtbl.buddy = fcQSqlQueryModel_vtable_callback_buddy
  if not isNil(vtbl[].match):
    vtbl[].vtbl.match = fcQSqlQueryModel_vtable_callback_match
  if not isNil(vtbl[].span):
    vtbl[].vtbl.span = fcQSqlQueryModel_vtable_callback_span
  if not isNil(vtbl[].submit):
    vtbl[].vtbl.submit = fcQSqlQueryModel_vtable_callback_submit
  if not isNil(vtbl[].revert):
    vtbl[].vtbl.revert = fcQSqlQueryModel_vtable_callback_revert
  if not isNil(vtbl[].event):
    vtbl[].vtbl.event = fcQSqlQueryModel_vtable_callback_event
  if not isNil(vtbl[].eventFilter):
    vtbl[].vtbl.eventFilter = fcQSqlQueryModel_vtable_callback_eventFilter
  if not isNil(vtbl[].timerEvent):
    vtbl[].vtbl.timerEvent = fcQSqlQueryModel_vtable_callback_timerEvent
  if not isNil(vtbl[].childEvent):
    vtbl[].vtbl.childEvent = fcQSqlQueryModel_vtable_callback_childEvent
  if not isNil(vtbl[].customEvent):
    vtbl[].vtbl.customEvent = fcQSqlQueryModel_vtable_callback_customEvent
  if not isNil(vtbl[].connectNotify):
    vtbl[].vtbl.connectNotify = fcQSqlQueryModel_vtable_callback_connectNotify
  if not isNil(vtbl[].disconnectNotify):
    vtbl[].vtbl.disconnectNotify = fcQSqlQueryModel_vtable_callback_disconnectNotify
  let tmp = gen_qsqlquerymodel_types.QSqlQueryModel(h: fcQSqlQueryModel_new2(addr(vtbl[].vtbl), csize_t(sizeof(pointer)), parent.h), owned: true)
  fcQSqlQueryModel_vdata(tmp.h)[] = addr(vtbl[])
  tmp
const cQSqlQueryModel_mvtbl = cQSqlQueryModelVTable(
  destructor: proc(self: pointer) {.cdecl.} =
    let inst = cast[ptr typeof(VirtualQSqlQueryModel()[])](self.fcQSqlQueryModel_vdata()[])
    inst[].h = nil
    inst[].owned = false,

  metaObject: fcQSqlQueryModel_method_callback_metaObject,
  metacast: fcQSqlQueryModel_method_callback_metacast,
  metacall: fcQSqlQueryModel_method_callback_metacall,
  rowCount: fcQSqlQueryModel_method_callback_rowCount,
  columnCount: fcQSqlQueryModel_method_callback_columnCount,
  data: fcQSqlQueryModel_method_callback_data,
  headerData: fcQSqlQueryModel_method_callback_headerData,
  setHeaderData: fcQSqlQueryModel_method_callback_setHeaderData,
  insertColumns: fcQSqlQueryModel_method_callback_insertColumns,
  removeColumns: fcQSqlQueryModel_method_callback_removeColumns,
  clear: fcQSqlQueryModel_method_callback_clear,
  fetchMore: fcQSqlQueryModel_method_callback_fetchMore,
  canFetchMore: fcQSqlQueryModel_method_callback_canFetchMore,
  roleNames: fcQSqlQueryModel_method_callback_roleNames,
  queryChange: fcQSqlQueryModel_method_callback_queryChange,
  indexInQuery: fcQSqlQueryModel_method_callback_indexInQuery,
  index: fcQSqlQueryModel_method_callback_index,
  sibling: fcQSqlQueryModel_method_callback_sibling,
  dropMimeData: fcQSqlQueryModel_method_callback_dropMimeData,
  flags: fcQSqlQueryModel_method_callback_flags,
  setData: fcQSqlQueryModel_method_callback_setData,
  itemData: fcQSqlQueryModel_method_callback_itemData,
  setItemData: fcQSqlQueryModel_method_callback_setItemData,
  mimeTypes: fcQSqlQueryModel_method_callback_mimeTypes,
  mimeData: fcQSqlQueryModel_method_callback_mimeData,
  canDropMimeData: fcQSqlQueryModel_method_callback_canDropMimeData,
  supportedDropActions: fcQSqlQueryModel_method_callback_supportedDropActions,
  supportedDragActions: fcQSqlQueryModel_method_callback_supportedDragActions,
  insertRows: fcQSqlQueryModel_method_callback_insertRows,
  removeRows: fcQSqlQueryModel_method_callback_removeRows,
  moveRows: fcQSqlQueryModel_method_callback_moveRows,
  moveColumns: fcQSqlQueryModel_method_callback_moveColumns,
  sort: fcQSqlQueryModel_method_callback_sort,
  buddy: fcQSqlQueryModel_method_callback_buddy,
  match: fcQSqlQueryModel_method_callback_match,
  span: fcQSqlQueryModel_method_callback_span,
  submit: fcQSqlQueryModel_method_callback_submit,
  revert: fcQSqlQueryModel_method_callback_revert,
  event: fcQSqlQueryModel_method_callback_event,
  eventFilter: fcQSqlQueryModel_method_callback_eventFilter,
  timerEvent: fcQSqlQueryModel_method_callback_timerEvent,
  childEvent: fcQSqlQueryModel_method_callback_childEvent,
  customEvent: fcQSqlQueryModel_method_callback_customEvent,
  connectNotify: fcQSqlQueryModel_method_callback_connectNotify,
  disconnectNotify: fcQSqlQueryModel_method_callback_disconnectNotify,
)
proc create*(T: type gen_qsqlquerymodel_types.QSqlQueryModel,
    inst: VirtualQSqlQueryModel) =
  if inst[].h != nil: delete(move(inst[]))
  inst[].h = fcQSqlQueryModel_new(addr(cQSqlQueryModel_mvtbl), csize_t(sizeof(pointer)))
  fcQSqlQueryModel_vdata(inst[].h)[] = addr inst[]
  inst[].owned = true

proc create*(T: type gen_qsqlquerymodel_types.QSqlQueryModel,
    parent: gen_qobject_types.QObject,
    inst: VirtualQSqlQueryModel) =
  if inst[].h != nil: delete(move(inst[]))
  inst[].h = fcQSqlQueryModel_new2(addr(cQSqlQueryModel_mvtbl), csize_t(sizeof(pointer)), parent.h)
  fcQSqlQueryModel_vdata(inst[].h)[] = addr inst[]
  inst[].owned = true

proc staticMetaObject*(_: type gen_qsqlquerymodel_types.QSqlQueryModel): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQSqlQueryModel_staticMetaObject())
