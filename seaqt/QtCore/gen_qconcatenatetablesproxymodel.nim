import ./qtcore_pkg

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


{.compile("gen_qconcatenatetablesproxymodel.cpp", QtCoreCFlags).}


import ./gen_qconcatenatetablesproxymodel_types
export gen_qconcatenatetablesproxymodel_types

import
  ./gen_qabstractitemmodel,
  ./gen_qcoreevent_types,
  ./gen_qdatastream_types,
  ./gen_qmetaobject_types,
  ./gen_qmimedata_types,
  ./gen_qobject_types,
  ./gen_qobjectdefs_types,
  ./gen_qsize_types,
  ./gen_qvariant_types,
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
  gen_qvariant_types

type cQConcatenateTablesProxyModel*{.exportc: "QConcatenateTablesProxyModel", incompleteStruct.} = object

proc fcQConcatenateTablesProxyModel_metaObject(self: pointer): pointer {.importc: "QConcatenateTablesProxyModel_metaObject".}
proc fcQConcatenateTablesProxyModel_metacast(self: pointer, param1: cstring): pointer {.importc: "QConcatenateTablesProxyModel_metacast".}
proc fcQConcatenateTablesProxyModel_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.importc: "QConcatenateTablesProxyModel_metacall".}
proc fcQConcatenateTablesProxyModel_tr(s: cstring): struct_miqt_string {.importc: "QConcatenateTablesProxyModel_tr".}
proc fcQConcatenateTablesProxyModel_sourceModels(self: pointer): struct_miqt_array {.importc: "QConcatenateTablesProxyModel_sourceModels".}
proc fcQConcatenateTablesProxyModel_addSourceModel(self: pointer, sourceModel: pointer): void {.importc: "QConcatenateTablesProxyModel_addSourceModel".}
proc fcQConcatenateTablesProxyModel_removeSourceModel(self: pointer, sourceModel: pointer): void {.importc: "QConcatenateTablesProxyModel_removeSourceModel".}
proc fcQConcatenateTablesProxyModel_mapFromSource(self: pointer, sourceIndex: pointer): pointer {.importc: "QConcatenateTablesProxyModel_mapFromSource".}
proc fcQConcatenateTablesProxyModel_mapToSource(self: pointer, proxyIndex: pointer): pointer {.importc: "QConcatenateTablesProxyModel_mapToSource".}
proc fcQConcatenateTablesProxyModel_data(self: pointer, index: pointer, role: cint): pointer {.importc: "QConcatenateTablesProxyModel_data".}
proc fcQConcatenateTablesProxyModel_setData(self: pointer, index: pointer, value: pointer, role: cint): bool {.importc: "QConcatenateTablesProxyModel_setData".}
proc fcQConcatenateTablesProxyModel_itemData(self: pointer, proxyIndex: pointer): struct_miqt_map {.importc: "QConcatenateTablesProxyModel_itemData".}
proc fcQConcatenateTablesProxyModel_setItemData(self: pointer, index: pointer, roles: struct_miqt_map): bool {.importc: "QConcatenateTablesProxyModel_setItemData".}
proc fcQConcatenateTablesProxyModel_flags(self: pointer, index: pointer): cint {.importc: "QConcatenateTablesProxyModel_flags".}
proc fcQConcatenateTablesProxyModel_index(self: pointer, row: cint, column: cint, parent: pointer): pointer {.importc: "QConcatenateTablesProxyModel_index".}
proc fcQConcatenateTablesProxyModel_parent(self: pointer, index: pointer): pointer {.importc: "QConcatenateTablesProxyModel_parent".}
proc fcQConcatenateTablesProxyModel_rowCount(self: pointer, parent: pointer): cint {.importc: "QConcatenateTablesProxyModel_rowCount".}
proc fcQConcatenateTablesProxyModel_headerData(self: pointer, section: cint, orientation: cint, role: cint): pointer {.importc: "QConcatenateTablesProxyModel_headerData".}
proc fcQConcatenateTablesProxyModel_columnCount(self: pointer, parent: pointer): cint {.importc: "QConcatenateTablesProxyModel_columnCount".}
proc fcQConcatenateTablesProxyModel_mimeTypes(self: pointer): struct_miqt_array {.importc: "QConcatenateTablesProxyModel_mimeTypes".}
proc fcQConcatenateTablesProxyModel_mimeData(self: pointer, indexes: struct_miqt_array): pointer {.importc: "QConcatenateTablesProxyModel_mimeData".}
proc fcQConcatenateTablesProxyModel_canDropMimeData(self: pointer, data: pointer, action: cint, row: cint, column: cint, parent: pointer): bool {.importc: "QConcatenateTablesProxyModel_canDropMimeData".}
proc fcQConcatenateTablesProxyModel_dropMimeData(self: pointer, data: pointer, action: cint, row: cint, column: cint, parent: pointer): bool {.importc: "QConcatenateTablesProxyModel_dropMimeData".}
proc fcQConcatenateTablesProxyModel_span(self: pointer, index: pointer): pointer {.importc: "QConcatenateTablesProxyModel_span".}
proc fcQConcatenateTablesProxyModel_tr2(s: cstring, c: cstring): struct_miqt_string {.importc: "QConcatenateTablesProxyModel_tr2".}
proc fcQConcatenateTablesProxyModel_tr3(s: cstring, c: cstring, n: cint): struct_miqt_string {.importc: "QConcatenateTablesProxyModel_tr3".}
proc fcQConcatenateTablesProxyModel_vtbl(self: pointer): pointer {.importc: "QConcatenateTablesProxyModel_vtbl".}
proc fcQConcatenateTablesProxyModel_vdata(self: pointer): pointer {.importc: "QConcatenateTablesProxyModel_vdata".}

type cQConcatenateTablesProxyModelVTable {.pure.} = object
  destructor*: proc(self: pointer) {.cdecl, raises:[], gcsafe.}
  metaObject*: proc(self: pointer): pointer {.cdecl, raises: [], gcsafe.}
  metacast*: proc(self: pointer, param1: cstring): pointer {.cdecl, raises: [], gcsafe.}
  metacall*: proc(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.cdecl, raises: [], gcsafe.}
  data*: proc(self: pointer, index: pointer, role: cint): pointer {.cdecl, raises: [], gcsafe.}
  setData*: proc(self: pointer, index: pointer, value: pointer, role: cint): bool {.cdecl, raises: [], gcsafe.}
  itemData*: proc(self: pointer, proxyIndex: pointer): struct_miqt_map {.cdecl, raises: [], gcsafe.}
  setItemData*: proc(self: pointer, index: pointer, roles: struct_miqt_map): bool {.cdecl, raises: [], gcsafe.}
  flags*: proc(self: pointer, index: pointer): cint {.cdecl, raises: [], gcsafe.}
  index*: proc(self: pointer, row: cint, column: cint, parent: pointer): pointer {.cdecl, raises: [], gcsafe.}
  parent*: proc(self: pointer, index: pointer): pointer {.cdecl, raises: [], gcsafe.}
  rowCount*: proc(self: pointer, parent: pointer): cint {.cdecl, raises: [], gcsafe.}
  headerData*: proc(self: pointer, section: cint, orientation: cint, role: cint): pointer {.cdecl, raises: [], gcsafe.}
  columnCount*: proc(self: pointer, parent: pointer): cint {.cdecl, raises: [], gcsafe.}
  mimeTypes*: proc(self: pointer): struct_miqt_array {.cdecl, raises: [], gcsafe.}
  mimeData*: proc(self: pointer, indexes: struct_miqt_array): pointer {.cdecl, raises: [], gcsafe.}
  canDropMimeData*: proc(self: pointer, data: pointer, action: cint, row: cint, column: cint, parent: pointer): bool {.cdecl, raises: [], gcsafe.}
  dropMimeData*: proc(self: pointer, data: pointer, action: cint, row: cint, column: cint, parent: pointer): bool {.cdecl, raises: [], gcsafe.}
  span*: proc(self: pointer, index: pointer): pointer {.cdecl, raises: [], gcsafe.}
  sibling*: proc(self: pointer, row: cint, column: cint, idx: pointer): pointer {.cdecl, raises: [], gcsafe.}
  hasChildren*: proc(self: pointer, parent: pointer): bool {.cdecl, raises: [], gcsafe.}
  setHeaderData*: proc(self: pointer, section: cint, orientation: cint, value: pointer, role: cint): bool {.cdecl, raises: [], gcsafe.}
  clearItemData*: proc(self: pointer, index: pointer): bool {.cdecl, raises: [], gcsafe.}
  supportedDropActions*: proc(self: pointer): cint {.cdecl, raises: [], gcsafe.}
  supportedDragActions*: proc(self: pointer): cint {.cdecl, raises: [], gcsafe.}
  insertRows*: proc(self: pointer, row: cint, count: cint, parent: pointer): bool {.cdecl, raises: [], gcsafe.}
  insertColumns*: proc(self: pointer, column: cint, count: cint, parent: pointer): bool {.cdecl, raises: [], gcsafe.}
  removeRows*: proc(self: pointer, row: cint, count: cint, parent: pointer): bool {.cdecl, raises: [], gcsafe.}
  removeColumns*: proc(self: pointer, column: cint, count: cint, parent: pointer): bool {.cdecl, raises: [], gcsafe.}
  moveRows*: proc(self: pointer, sourceParent: pointer, sourceRow: cint, count: cint, destinationParent: pointer, destinationChild: cint): bool {.cdecl, raises: [], gcsafe.}
  moveColumns*: proc(self: pointer, sourceParent: pointer, sourceColumn: cint, count: cint, destinationParent: pointer, destinationChild: cint): bool {.cdecl, raises: [], gcsafe.}
  fetchMore*: proc(self: pointer, parent: pointer): void {.cdecl, raises: [], gcsafe.}
  canFetchMore*: proc(self: pointer, parent: pointer): bool {.cdecl, raises: [], gcsafe.}
  sort*: proc(self: pointer, column: cint, order: cint): void {.cdecl, raises: [], gcsafe.}
  buddy*: proc(self: pointer, index: pointer): pointer {.cdecl, raises: [], gcsafe.}
  match*: proc(self: pointer, start: pointer, role: cint, value: pointer, hits: cint, flags: cint): struct_miqt_array {.cdecl, raises: [], gcsafe.}
  roleNames*: proc(self: pointer): struct_miqt_map {.cdecl, raises: [], gcsafe.}
  multiData*: proc(self: pointer, index: pointer, roleDataSpan: pointer): void {.cdecl, raises: [], gcsafe.}
  submit*: proc(self: pointer): bool {.cdecl, raises: [], gcsafe.}
  revert*: proc(self: pointer): void {.cdecl, raises: [], gcsafe.}
  resetInternalData*: proc(self: pointer): void {.cdecl, raises: [], gcsafe.}
  event*: proc(self: pointer, event: pointer): bool {.cdecl, raises: [], gcsafe.}
  eventFilter*: proc(self: pointer, watched: pointer, event: pointer): bool {.cdecl, raises: [], gcsafe.}
  timerEvent*: proc(self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  childEvent*: proc(self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  customEvent*: proc(self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  connectNotify*: proc(self: pointer, signal: pointer): void {.cdecl, raises: [], gcsafe.}
  disconnectNotify*: proc(self: pointer, signal: pointer): void {.cdecl, raises: [], gcsafe.}
proc fcQConcatenateTablesProxyModel_virtualbase_metaObject(self: pointer): pointer {.importc: "QConcatenateTablesProxyModel_virtualbase_metaObject".}
proc fcQConcatenateTablesProxyModel_virtualbase_metacast(self: pointer, param1: cstring): pointer {.importc: "QConcatenateTablesProxyModel_virtualbase_metacast".}
proc fcQConcatenateTablesProxyModel_virtualbase_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.importc: "QConcatenateTablesProxyModel_virtualbase_metacall".}
proc fcQConcatenateTablesProxyModel_virtualbase_data(self: pointer, index: pointer, role: cint): pointer {.importc: "QConcatenateTablesProxyModel_virtualbase_data".}
proc fcQConcatenateTablesProxyModel_virtualbase_setData(self: pointer, index: pointer, value: pointer, role: cint): bool {.importc: "QConcatenateTablesProxyModel_virtualbase_setData".}
proc fcQConcatenateTablesProxyModel_virtualbase_itemData(self: pointer, proxyIndex: pointer): struct_miqt_map {.importc: "QConcatenateTablesProxyModel_virtualbase_itemData".}
proc fcQConcatenateTablesProxyModel_virtualbase_setItemData(self: pointer, index: pointer, roles: struct_miqt_map): bool {.importc: "QConcatenateTablesProxyModel_virtualbase_setItemData".}
proc fcQConcatenateTablesProxyModel_virtualbase_flags(self: pointer, index: pointer): cint {.importc: "QConcatenateTablesProxyModel_virtualbase_flags".}
proc fcQConcatenateTablesProxyModel_virtualbase_index(self: pointer, row: cint, column: cint, parent: pointer): pointer {.importc: "QConcatenateTablesProxyModel_virtualbase_index".}
proc fcQConcatenateTablesProxyModel_virtualbase_parent(self: pointer, index: pointer): pointer {.importc: "QConcatenateTablesProxyModel_virtualbase_parent".}
proc fcQConcatenateTablesProxyModel_virtualbase_rowCount(self: pointer, parent: pointer): cint {.importc: "QConcatenateTablesProxyModel_virtualbase_rowCount".}
proc fcQConcatenateTablesProxyModel_virtualbase_headerData(self: pointer, section: cint, orientation: cint, role: cint): pointer {.importc: "QConcatenateTablesProxyModel_virtualbase_headerData".}
proc fcQConcatenateTablesProxyModel_virtualbase_columnCount(self: pointer, parent: pointer): cint {.importc: "QConcatenateTablesProxyModel_virtualbase_columnCount".}
proc fcQConcatenateTablesProxyModel_virtualbase_mimeTypes(self: pointer): struct_miqt_array {.importc: "QConcatenateTablesProxyModel_virtualbase_mimeTypes".}
proc fcQConcatenateTablesProxyModel_virtualbase_mimeData(self: pointer, indexes: struct_miqt_array): pointer {.importc: "QConcatenateTablesProxyModel_virtualbase_mimeData".}
proc fcQConcatenateTablesProxyModel_virtualbase_canDropMimeData(self: pointer, data: pointer, action: cint, row: cint, column: cint, parent: pointer): bool {.importc: "QConcatenateTablesProxyModel_virtualbase_canDropMimeData".}
proc fcQConcatenateTablesProxyModel_virtualbase_dropMimeData(self: pointer, data: pointer, action: cint, row: cint, column: cint, parent: pointer): bool {.importc: "QConcatenateTablesProxyModel_virtualbase_dropMimeData".}
proc fcQConcatenateTablesProxyModel_virtualbase_span(self: pointer, index: pointer): pointer {.importc: "QConcatenateTablesProxyModel_virtualbase_span".}
proc fcQConcatenateTablesProxyModel_virtualbase_sibling(self: pointer, row: cint, column: cint, idx: pointer): pointer {.importc: "QConcatenateTablesProxyModel_virtualbase_sibling".}
proc fcQConcatenateTablesProxyModel_virtualbase_hasChildren(self: pointer, parent: pointer): bool {.importc: "QConcatenateTablesProxyModel_virtualbase_hasChildren".}
proc fcQConcatenateTablesProxyModel_virtualbase_setHeaderData(self: pointer, section: cint, orientation: cint, value: pointer, role: cint): bool {.importc: "QConcatenateTablesProxyModel_virtualbase_setHeaderData".}
proc fcQConcatenateTablesProxyModel_virtualbase_clearItemData(self: pointer, index: pointer): bool {.importc: "QConcatenateTablesProxyModel_virtualbase_clearItemData".}
proc fcQConcatenateTablesProxyModel_virtualbase_supportedDropActions(self: pointer): cint {.importc: "QConcatenateTablesProxyModel_virtualbase_supportedDropActions".}
proc fcQConcatenateTablesProxyModel_virtualbase_supportedDragActions(self: pointer): cint {.importc: "QConcatenateTablesProxyModel_virtualbase_supportedDragActions".}
proc fcQConcatenateTablesProxyModel_virtualbase_insertRows(self: pointer, row: cint, count: cint, parent: pointer): bool {.importc: "QConcatenateTablesProxyModel_virtualbase_insertRows".}
proc fcQConcatenateTablesProxyModel_virtualbase_insertColumns(self: pointer, column: cint, count: cint, parent: pointer): bool {.importc: "QConcatenateTablesProxyModel_virtualbase_insertColumns".}
proc fcQConcatenateTablesProxyModel_virtualbase_removeRows(self: pointer, row: cint, count: cint, parent: pointer): bool {.importc: "QConcatenateTablesProxyModel_virtualbase_removeRows".}
proc fcQConcatenateTablesProxyModel_virtualbase_removeColumns(self: pointer, column: cint, count: cint, parent: pointer): bool {.importc: "QConcatenateTablesProxyModel_virtualbase_removeColumns".}
proc fcQConcatenateTablesProxyModel_virtualbase_moveRows(self: pointer, sourceParent: pointer, sourceRow: cint, count: cint, destinationParent: pointer, destinationChild: cint): bool {.importc: "QConcatenateTablesProxyModel_virtualbase_moveRows".}
proc fcQConcatenateTablesProxyModel_virtualbase_moveColumns(self: pointer, sourceParent: pointer, sourceColumn: cint, count: cint, destinationParent: pointer, destinationChild: cint): bool {.importc: "QConcatenateTablesProxyModel_virtualbase_moveColumns".}
proc fcQConcatenateTablesProxyModel_virtualbase_fetchMore(self: pointer, parent: pointer): void {.importc: "QConcatenateTablesProxyModel_virtualbase_fetchMore".}
proc fcQConcatenateTablesProxyModel_virtualbase_canFetchMore(self: pointer, parent: pointer): bool {.importc: "QConcatenateTablesProxyModel_virtualbase_canFetchMore".}
proc fcQConcatenateTablesProxyModel_virtualbase_sort(self: pointer, column: cint, order: cint): void {.importc: "QConcatenateTablesProxyModel_virtualbase_sort".}
proc fcQConcatenateTablesProxyModel_virtualbase_buddy(self: pointer, index: pointer): pointer {.importc: "QConcatenateTablesProxyModel_virtualbase_buddy".}
proc fcQConcatenateTablesProxyModel_virtualbase_match(self: pointer, start: pointer, role: cint, value: pointer, hits: cint, flags: cint): struct_miqt_array {.importc: "QConcatenateTablesProxyModel_virtualbase_match".}
proc fcQConcatenateTablesProxyModel_virtualbase_roleNames(self: pointer): struct_miqt_map {.importc: "QConcatenateTablesProxyModel_virtualbase_roleNames".}
proc fcQConcatenateTablesProxyModel_virtualbase_multiData(self: pointer, index: pointer, roleDataSpan: pointer): void {.importc: "QConcatenateTablesProxyModel_virtualbase_multiData".}
proc fcQConcatenateTablesProxyModel_virtualbase_submit(self: pointer): bool {.importc: "QConcatenateTablesProxyModel_virtualbase_submit".}
proc fcQConcatenateTablesProxyModel_virtualbase_revert(self: pointer): void {.importc: "QConcatenateTablesProxyModel_virtualbase_revert".}
proc fcQConcatenateTablesProxyModel_virtualbase_resetInternalData(self: pointer): void {.importc: "QConcatenateTablesProxyModel_virtualbase_resetInternalData".}
proc fcQConcatenateTablesProxyModel_virtualbase_event(self: pointer, event: pointer): bool {.importc: "QConcatenateTablesProxyModel_virtualbase_event".}
proc fcQConcatenateTablesProxyModel_virtualbase_eventFilter(self: pointer, watched: pointer, event: pointer): bool {.importc: "QConcatenateTablesProxyModel_virtualbase_eventFilter".}
proc fcQConcatenateTablesProxyModel_virtualbase_timerEvent(self: pointer, event: pointer): void {.importc: "QConcatenateTablesProxyModel_virtualbase_timerEvent".}
proc fcQConcatenateTablesProxyModel_virtualbase_childEvent(self: pointer, event: pointer): void {.importc: "QConcatenateTablesProxyModel_virtualbase_childEvent".}
proc fcQConcatenateTablesProxyModel_virtualbase_customEvent(self: pointer, event: pointer): void {.importc: "QConcatenateTablesProxyModel_virtualbase_customEvent".}
proc fcQConcatenateTablesProxyModel_virtualbase_connectNotify(self: pointer, signal: pointer): void {.importc: "QConcatenateTablesProxyModel_virtualbase_connectNotify".}
proc fcQConcatenateTablesProxyModel_virtualbase_disconnectNotify(self: pointer, signal: pointer): void {.importc: "QConcatenateTablesProxyModel_virtualbase_disconnectNotify".}
proc fcQConcatenateTablesProxyModel_protectedbase_createIndex(self: pointer, row: cint, column: cint): pointer {.importc: "QConcatenateTablesProxyModel_protectedbase_createIndex".}
proc fcQConcatenateTablesProxyModel_protectedbase_encodeData(self: pointer, indexes: struct_miqt_array, stream: pointer): void {.importc: "QConcatenateTablesProxyModel_protectedbase_encodeData".}
proc fcQConcatenateTablesProxyModel_protectedbase_decodeData(self: pointer, row: cint, column: cint, parent: pointer, stream: pointer): bool {.importc: "QConcatenateTablesProxyModel_protectedbase_decodeData".}
proc fcQConcatenateTablesProxyModel_protectedbase_beginInsertRows(self: pointer, parent: pointer, first: cint, last: cint): void {.importc: "QConcatenateTablesProxyModel_protectedbase_beginInsertRows".}
proc fcQConcatenateTablesProxyModel_protectedbase_endInsertRows(self: pointer): void {.importc: "QConcatenateTablesProxyModel_protectedbase_endInsertRows".}
proc fcQConcatenateTablesProxyModel_protectedbase_beginRemoveRows(self: pointer, parent: pointer, first: cint, last: cint): void {.importc: "QConcatenateTablesProxyModel_protectedbase_beginRemoveRows".}
proc fcQConcatenateTablesProxyModel_protectedbase_endRemoveRows(self: pointer): void {.importc: "QConcatenateTablesProxyModel_protectedbase_endRemoveRows".}
proc fcQConcatenateTablesProxyModel_protectedbase_beginMoveRows(self: pointer, sourceParent: pointer, sourceFirst: cint, sourceLast: cint, destinationParent: pointer, destinationRow: cint): bool {.importc: "QConcatenateTablesProxyModel_protectedbase_beginMoveRows".}
proc fcQConcatenateTablesProxyModel_protectedbase_endMoveRows(self: pointer): void {.importc: "QConcatenateTablesProxyModel_protectedbase_endMoveRows".}
proc fcQConcatenateTablesProxyModel_protectedbase_beginInsertColumns(self: pointer, parent: pointer, first: cint, last: cint): void {.importc: "QConcatenateTablesProxyModel_protectedbase_beginInsertColumns".}
proc fcQConcatenateTablesProxyModel_protectedbase_endInsertColumns(self: pointer): void {.importc: "QConcatenateTablesProxyModel_protectedbase_endInsertColumns".}
proc fcQConcatenateTablesProxyModel_protectedbase_beginRemoveColumns(self: pointer, parent: pointer, first: cint, last: cint): void {.importc: "QConcatenateTablesProxyModel_protectedbase_beginRemoveColumns".}
proc fcQConcatenateTablesProxyModel_protectedbase_endRemoveColumns(self: pointer): void {.importc: "QConcatenateTablesProxyModel_protectedbase_endRemoveColumns".}
proc fcQConcatenateTablesProxyModel_protectedbase_beginMoveColumns(self: pointer, sourceParent: pointer, sourceFirst: cint, sourceLast: cint, destinationParent: pointer, destinationColumn: cint): bool {.importc: "QConcatenateTablesProxyModel_protectedbase_beginMoveColumns".}
proc fcQConcatenateTablesProxyModel_protectedbase_endMoveColumns(self: pointer): void {.importc: "QConcatenateTablesProxyModel_protectedbase_endMoveColumns".}
proc fcQConcatenateTablesProxyModel_protectedbase_beginResetModel(self: pointer): void {.importc: "QConcatenateTablesProxyModel_protectedbase_beginResetModel".}
proc fcQConcatenateTablesProxyModel_protectedbase_endResetModel(self: pointer): void {.importc: "QConcatenateTablesProxyModel_protectedbase_endResetModel".}
proc fcQConcatenateTablesProxyModel_protectedbase_changePersistentIndex(self: pointer, fromVal: pointer, to: pointer): void {.importc: "QConcatenateTablesProxyModel_protectedbase_changePersistentIndex".}
proc fcQConcatenateTablesProxyModel_protectedbase_changePersistentIndexList(self: pointer, fromVal: struct_miqt_array, to: struct_miqt_array): void {.importc: "QConcatenateTablesProxyModel_protectedbase_changePersistentIndexList".}
proc fcQConcatenateTablesProxyModel_protectedbase_persistentIndexList(self: pointer): struct_miqt_array {.importc: "QConcatenateTablesProxyModel_protectedbase_persistentIndexList".}
proc fcQConcatenateTablesProxyModel_protectedbase_sender(self: pointer): pointer {.importc: "QConcatenateTablesProxyModel_protectedbase_sender".}
proc fcQConcatenateTablesProxyModel_protectedbase_senderSignalIndex(self: pointer): cint {.importc: "QConcatenateTablesProxyModel_protectedbase_senderSignalIndex".}
proc fcQConcatenateTablesProxyModel_protectedbase_receivers(self: pointer, signal: cstring): cint {.importc: "QConcatenateTablesProxyModel_protectedbase_receivers".}
proc fcQConcatenateTablesProxyModel_protectedbase_isSignalConnected(self: pointer, signal: pointer): bool {.importc: "QConcatenateTablesProxyModel_protectedbase_isSignalConnected".}
proc fcQConcatenateTablesProxyModel_new(vtbl, vdata: pointer): ptr cQConcatenateTablesProxyModel {.importc: "QConcatenateTablesProxyModel_new".}
proc fcQConcatenateTablesProxyModel_new2(vtbl, vdata: pointer, parent: pointer): ptr cQConcatenateTablesProxyModel {.importc: "QConcatenateTablesProxyModel_new2".}
proc fcQConcatenateTablesProxyModel_staticMetaObject(): pointer {.importc: "QConcatenateTablesProxyModel_staticMetaObject".}

proc metaObject*(self: gen_qconcatenatetablesproxymodel_types.QConcatenateTablesProxyModel): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQConcatenateTablesProxyModel_metaObject(self.h), owned: false)

proc metacast*(self: gen_qconcatenatetablesproxymodel_types.QConcatenateTablesProxyModel, param1: cstring): pointer =
  fcQConcatenateTablesProxyModel_metacast(self.h, param1)

proc metacall*(self: gen_qconcatenatetablesproxymodel_types.QConcatenateTablesProxyModel, param1: cint, param2: cint, param3: pointer): cint =
  fcQConcatenateTablesProxyModel_metacall(self.h, cint(param1), param2, param3)

proc tr*(_: type gen_qconcatenatetablesproxymodel_types.QConcatenateTablesProxyModel, s: cstring): string =
  let v_ms = fcQConcatenateTablesProxyModel_tr(s)
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

proc sourceModels*(self: gen_qconcatenatetablesproxymodel_types.QConcatenateTablesProxyModel): seq[gen_qabstractitemmodel_types.QAbstractItemModel] =
  var v_ma = fcQConcatenateTablesProxyModel_sourceModels(self.h)
  var vx_ret = newSeq[gen_qabstractitemmodel_types.QAbstractItemModel](int(v_ma.len))
  let v_outCast = cast[ptr UncheckedArray[pointer]](v_ma.data)
  for i in 0 ..< v_ma.len:
    vx_ret[i] = gen_qabstractitemmodel_types.QAbstractItemModel(h: v_outCast[i], owned: false)
  c_free(v_ma.data)
  vx_ret

proc addSourceModel*(self: gen_qconcatenatetablesproxymodel_types.QConcatenateTablesProxyModel, sourceModel: gen_qabstractitemmodel_types.QAbstractItemModel): void =
  fcQConcatenateTablesProxyModel_addSourceModel(self.h, sourceModel.h)

proc removeSourceModel*(self: gen_qconcatenatetablesproxymodel_types.QConcatenateTablesProxyModel, sourceModel: gen_qabstractitemmodel_types.QAbstractItemModel): void =
  fcQConcatenateTablesProxyModel_removeSourceModel(self.h, sourceModel.h)

proc mapFromSource*(self: gen_qconcatenatetablesproxymodel_types.QConcatenateTablesProxyModel, sourceIndex: gen_qabstractitemmodel_types.QModelIndex): gen_qabstractitemmodel_types.QModelIndex =
  gen_qabstractitemmodel_types.QModelIndex(h: fcQConcatenateTablesProxyModel_mapFromSource(self.h, sourceIndex.h), owned: true)

proc mapToSource*(self: gen_qconcatenatetablesproxymodel_types.QConcatenateTablesProxyModel, proxyIndex: gen_qabstractitemmodel_types.QModelIndex): gen_qabstractitemmodel_types.QModelIndex =
  gen_qabstractitemmodel_types.QModelIndex(h: fcQConcatenateTablesProxyModel_mapToSource(self.h, proxyIndex.h), owned: true)

proc data*(self: gen_qconcatenatetablesproxymodel_types.QConcatenateTablesProxyModel, index: gen_qabstractitemmodel_types.QModelIndex, role: cint): gen_qvariant_types.QVariant =
  gen_qvariant_types.QVariant(h: fcQConcatenateTablesProxyModel_data(self.h, index.h, role), owned: true)

proc setData*(self: gen_qconcatenatetablesproxymodel_types.QConcatenateTablesProxyModel, index: gen_qabstractitemmodel_types.QModelIndex, value: gen_qvariant_types.QVariant, role: cint): bool =
  fcQConcatenateTablesProxyModel_setData(self.h, index.h, value.h, role)

proc itemData*(self: gen_qconcatenatetablesproxymodel_types.QConcatenateTablesProxyModel, proxyIndex: gen_qabstractitemmodel_types.QModelIndex): Table[cint,gen_qvariant_types.QVariant] =
  var v_mm = fcQConcatenateTablesProxyModel_itemData(self.h, proxyIndex.h)
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

proc setItemData*(self: gen_qconcatenatetablesproxymodel_types.QConcatenateTablesProxyModel, index: gen_qabstractitemmodel_types.QModelIndex, roles: Table[cint,gen_qvariant_types.QVariant]): bool =
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

  fcQConcatenateTablesProxyModel_setItemData(self.h, index.h, struct_miqt_map(len: csize_t(len(roles)),keys: if len(roles) == 0: nil else: addr(roles_Keys_CArray[0]), values: if len(roles) == 0: nil else: addr(roles_Values_CArray[0]),))

proc flags*(self: gen_qconcatenatetablesproxymodel_types.QConcatenateTablesProxyModel, index: gen_qabstractitemmodel_types.QModelIndex): cint =
  cint(fcQConcatenateTablesProxyModel_flags(self.h, index.h))

proc index*(self: gen_qconcatenatetablesproxymodel_types.QConcatenateTablesProxyModel, row: cint, column: cint, parent: gen_qabstractitemmodel_types.QModelIndex): gen_qabstractitemmodel_types.QModelIndex =
  gen_qabstractitemmodel_types.QModelIndex(h: fcQConcatenateTablesProxyModel_index(self.h, row, column, parent.h), owned: true)

proc parent*(self: gen_qconcatenatetablesproxymodel_types.QConcatenateTablesProxyModel, index: gen_qabstractitemmodel_types.QModelIndex): gen_qabstractitemmodel_types.QModelIndex =
  gen_qabstractitemmodel_types.QModelIndex(h: fcQConcatenateTablesProxyModel_parent(self.h, index.h), owned: true)

proc rowCount*(self: gen_qconcatenatetablesproxymodel_types.QConcatenateTablesProxyModel, parent: gen_qabstractitemmodel_types.QModelIndex): cint =
  fcQConcatenateTablesProxyModel_rowCount(self.h, parent.h)

proc headerData*(self: gen_qconcatenatetablesproxymodel_types.QConcatenateTablesProxyModel, section: cint, orientation: cint, role: cint): gen_qvariant_types.QVariant =
  gen_qvariant_types.QVariant(h: fcQConcatenateTablesProxyModel_headerData(self.h, section, cint(orientation), role), owned: true)

proc columnCount*(self: gen_qconcatenatetablesproxymodel_types.QConcatenateTablesProxyModel, parent: gen_qabstractitemmodel_types.QModelIndex): cint =
  fcQConcatenateTablesProxyModel_columnCount(self.h, parent.h)

proc mimeTypes*(self: gen_qconcatenatetablesproxymodel_types.QConcatenateTablesProxyModel): seq[string] =
  var v_ma = fcQConcatenateTablesProxyModel_mimeTypes(self.h)
  var vx_ret = newSeq[string](int(v_ma.len))
  let v_outCast = cast[ptr UncheckedArray[struct_miqt_string]](v_ma.data)
  for i in 0 ..< v_ma.len:
    let vx_lv_ms = v_outCast[i]
    let vx_lvx_ret = string.fromBytes(vx_lv_ms)
    c_free(vx_lv_ms.data)
    vx_ret[i] = vx_lvx_ret
  c_free(v_ma.data)
  vx_ret

proc mimeData*(self: gen_qconcatenatetablesproxymodel_types.QConcatenateTablesProxyModel, indexes: openArray[gen_qabstractitemmodel_types.QModelIndex]): gen_qmimedata_types.QMimeData =
  var indexes_CArray = newSeq[pointer](len(indexes))
  for i in 0..<len(indexes):
    indexes_CArray[i] = indexes[i].h

  gen_qmimedata_types.QMimeData(h: fcQConcatenateTablesProxyModel_mimeData(self.h, struct_miqt_array(len: csize_t(len(indexes)), data: if len(indexes) == 0: nil else: addr(indexes_CArray[0]))), owned: false)

proc canDropMimeData*(self: gen_qconcatenatetablesproxymodel_types.QConcatenateTablesProxyModel, data: gen_qmimedata_types.QMimeData, action: cint, row: cint, column: cint, parent: gen_qabstractitemmodel_types.QModelIndex): bool =
  fcQConcatenateTablesProxyModel_canDropMimeData(self.h, data.h, cint(action), row, column, parent.h)

proc dropMimeData*(self: gen_qconcatenatetablesproxymodel_types.QConcatenateTablesProxyModel, data: gen_qmimedata_types.QMimeData, action: cint, row: cint, column: cint, parent: gen_qabstractitemmodel_types.QModelIndex): bool =
  fcQConcatenateTablesProxyModel_dropMimeData(self.h, data.h, cint(action), row, column, parent.h)

proc span*(self: gen_qconcatenatetablesproxymodel_types.QConcatenateTablesProxyModel, index: gen_qabstractitemmodel_types.QModelIndex): gen_qsize_types.QSize =
  gen_qsize_types.QSize(h: fcQConcatenateTablesProxyModel_span(self.h, index.h), owned: true)

proc tr*(_: type gen_qconcatenatetablesproxymodel_types.QConcatenateTablesProxyModel, s: cstring, c: cstring): string =
  let v_ms = fcQConcatenateTablesProxyModel_tr2(s, c)
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

proc tr*(_: type gen_qconcatenatetablesproxymodel_types.QConcatenateTablesProxyModel, s: cstring, c: cstring, n: cint): string =
  let v_ms = fcQConcatenateTablesProxyModel_tr3(s, c, n)
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

type QConcatenateTablesProxyModelmetaObjectProc* = proc(self: QConcatenateTablesProxyModel): gen_qobjectdefs_types.QMetaObject {.raises: [], gcsafe.}
type QConcatenateTablesProxyModelmetacastProc* = proc(self: QConcatenateTablesProxyModel, param1: cstring): pointer {.raises: [], gcsafe.}
type QConcatenateTablesProxyModelmetacallProc* = proc(self: QConcatenateTablesProxyModel, param1: cint, param2: cint, param3: pointer): cint {.raises: [], gcsafe.}
type QConcatenateTablesProxyModeldataProc* = proc(self: QConcatenateTablesProxyModel, index: gen_qabstractitemmodel_types.QModelIndex, role: cint): gen_qvariant_types.QVariant {.raises: [], gcsafe.}
type QConcatenateTablesProxyModelsetDataProc* = proc(self: QConcatenateTablesProxyModel, index: gen_qabstractitemmodel_types.QModelIndex, value: gen_qvariant_types.QVariant, role: cint): bool {.raises: [], gcsafe.}
type QConcatenateTablesProxyModelitemDataProc* = proc(self: QConcatenateTablesProxyModel, proxyIndex: gen_qabstractitemmodel_types.QModelIndex): Table[cint,gen_qvariant_types.QVariant] {.raises: [], gcsafe.}
type QConcatenateTablesProxyModelsetItemDataProc* = proc(self: QConcatenateTablesProxyModel, index: gen_qabstractitemmodel_types.QModelIndex, roles: Table[cint,gen_qvariant_types.QVariant]): bool {.raises: [], gcsafe.}
type QConcatenateTablesProxyModelflagsProc* = proc(self: QConcatenateTablesProxyModel, index: gen_qabstractitemmodel_types.QModelIndex): cint {.raises: [], gcsafe.}
type QConcatenateTablesProxyModelindexProc* = proc(self: QConcatenateTablesProxyModel, row: cint, column: cint, parent: gen_qabstractitemmodel_types.QModelIndex): gen_qabstractitemmodel_types.QModelIndex {.raises: [], gcsafe.}
type QConcatenateTablesProxyModelparentProc* = proc(self: QConcatenateTablesProxyModel, index: gen_qabstractitemmodel_types.QModelIndex): gen_qabstractitemmodel_types.QModelIndex {.raises: [], gcsafe.}
type QConcatenateTablesProxyModelrowCountProc* = proc(self: QConcatenateTablesProxyModel, parent: gen_qabstractitemmodel_types.QModelIndex): cint {.raises: [], gcsafe.}
type QConcatenateTablesProxyModelheaderDataProc* = proc(self: QConcatenateTablesProxyModel, section: cint, orientation: cint, role: cint): gen_qvariant_types.QVariant {.raises: [], gcsafe.}
type QConcatenateTablesProxyModelcolumnCountProc* = proc(self: QConcatenateTablesProxyModel, parent: gen_qabstractitemmodel_types.QModelIndex): cint {.raises: [], gcsafe.}
type QConcatenateTablesProxyModelmimeTypesProc* = proc(self: QConcatenateTablesProxyModel): seq[string] {.raises: [], gcsafe.}
type QConcatenateTablesProxyModelmimeDataProc* = proc(self: QConcatenateTablesProxyModel, indexes: openArray[gen_qabstractitemmodel_types.QModelIndex]): gen_qmimedata_types.QMimeData {.raises: [], gcsafe.}
type QConcatenateTablesProxyModelcanDropMimeDataProc* = proc(self: QConcatenateTablesProxyModel, data: gen_qmimedata_types.QMimeData, action: cint, row: cint, column: cint, parent: gen_qabstractitemmodel_types.QModelIndex): bool {.raises: [], gcsafe.}
type QConcatenateTablesProxyModeldropMimeDataProc* = proc(self: QConcatenateTablesProxyModel, data: gen_qmimedata_types.QMimeData, action: cint, row: cint, column: cint, parent: gen_qabstractitemmodel_types.QModelIndex): bool {.raises: [], gcsafe.}
type QConcatenateTablesProxyModelspanProc* = proc(self: QConcatenateTablesProxyModel, index: gen_qabstractitemmodel_types.QModelIndex): gen_qsize_types.QSize {.raises: [], gcsafe.}
type QConcatenateTablesProxyModelsiblingProc* = proc(self: QConcatenateTablesProxyModel, row: cint, column: cint, idx: gen_qabstractitemmodel_types.QModelIndex): gen_qabstractitemmodel_types.QModelIndex {.raises: [], gcsafe.}
type QConcatenateTablesProxyModelhasChildrenProc* = proc(self: QConcatenateTablesProxyModel, parent: gen_qabstractitemmodel_types.QModelIndex): bool {.raises: [], gcsafe.}
type QConcatenateTablesProxyModelsetHeaderDataProc* = proc(self: QConcatenateTablesProxyModel, section: cint, orientation: cint, value: gen_qvariant_types.QVariant, role: cint): bool {.raises: [], gcsafe.}
type QConcatenateTablesProxyModelclearItemDataProc* = proc(self: QConcatenateTablesProxyModel, index: gen_qabstractitemmodel_types.QModelIndex): bool {.raises: [], gcsafe.}
type QConcatenateTablesProxyModelsupportedDropActionsProc* = proc(self: QConcatenateTablesProxyModel): cint {.raises: [], gcsafe.}
type QConcatenateTablesProxyModelsupportedDragActionsProc* = proc(self: QConcatenateTablesProxyModel): cint {.raises: [], gcsafe.}
type QConcatenateTablesProxyModelinsertRowsProc* = proc(self: QConcatenateTablesProxyModel, row: cint, count: cint, parent: gen_qabstractitemmodel_types.QModelIndex): bool {.raises: [], gcsafe.}
type QConcatenateTablesProxyModelinsertColumnsProc* = proc(self: QConcatenateTablesProxyModel, column: cint, count: cint, parent: gen_qabstractitemmodel_types.QModelIndex): bool {.raises: [], gcsafe.}
type QConcatenateTablesProxyModelremoveRowsProc* = proc(self: QConcatenateTablesProxyModel, row: cint, count: cint, parent: gen_qabstractitemmodel_types.QModelIndex): bool {.raises: [], gcsafe.}
type QConcatenateTablesProxyModelremoveColumnsProc* = proc(self: QConcatenateTablesProxyModel, column: cint, count: cint, parent: gen_qabstractitemmodel_types.QModelIndex): bool {.raises: [], gcsafe.}
type QConcatenateTablesProxyModelmoveRowsProc* = proc(self: QConcatenateTablesProxyModel, sourceParent: gen_qabstractitemmodel_types.QModelIndex, sourceRow: cint, count: cint, destinationParent: gen_qabstractitemmodel_types.QModelIndex, destinationChild: cint): bool {.raises: [], gcsafe.}
type QConcatenateTablesProxyModelmoveColumnsProc* = proc(self: QConcatenateTablesProxyModel, sourceParent: gen_qabstractitemmodel_types.QModelIndex, sourceColumn: cint, count: cint, destinationParent: gen_qabstractitemmodel_types.QModelIndex, destinationChild: cint): bool {.raises: [], gcsafe.}
type QConcatenateTablesProxyModelfetchMoreProc* = proc(self: QConcatenateTablesProxyModel, parent: gen_qabstractitemmodel_types.QModelIndex): void {.raises: [], gcsafe.}
type QConcatenateTablesProxyModelcanFetchMoreProc* = proc(self: QConcatenateTablesProxyModel, parent: gen_qabstractitemmodel_types.QModelIndex): bool {.raises: [], gcsafe.}
type QConcatenateTablesProxyModelsortProc* = proc(self: QConcatenateTablesProxyModel, column: cint, order: cint): void {.raises: [], gcsafe.}
type QConcatenateTablesProxyModelbuddyProc* = proc(self: QConcatenateTablesProxyModel, index: gen_qabstractitemmodel_types.QModelIndex): gen_qabstractitemmodel_types.QModelIndex {.raises: [], gcsafe.}
type QConcatenateTablesProxyModelmatchProc* = proc(self: QConcatenateTablesProxyModel, start: gen_qabstractitemmodel_types.QModelIndex, role: cint, value: gen_qvariant_types.QVariant, hits: cint, flags: cint): seq[gen_qabstractitemmodel_types.QModelIndex] {.raises: [], gcsafe.}
type QConcatenateTablesProxyModelroleNamesProc* = proc(self: QConcatenateTablesProxyModel): Table[cint,seq[byte]] {.raises: [], gcsafe.}
type QConcatenateTablesProxyModelmultiDataProc* = proc(self: QConcatenateTablesProxyModel, index: gen_qabstractitemmodel_types.QModelIndex, roleDataSpan: gen_qabstractitemmodel_types.QModelRoleDataSpan): void {.raises: [], gcsafe.}
type QConcatenateTablesProxyModelsubmitProc* = proc(self: QConcatenateTablesProxyModel): bool {.raises: [], gcsafe.}
type QConcatenateTablesProxyModelrevertProc* = proc(self: QConcatenateTablesProxyModel): void {.raises: [], gcsafe.}
type QConcatenateTablesProxyModelresetInternalDataProc* = proc(self: QConcatenateTablesProxyModel): void {.raises: [], gcsafe.}
type QConcatenateTablesProxyModeleventProc* = proc(self: QConcatenateTablesProxyModel, event: gen_qcoreevent_types.QEvent): bool {.raises: [], gcsafe.}
type QConcatenateTablesProxyModeleventFilterProc* = proc(self: QConcatenateTablesProxyModel, watched: gen_qobject_types.QObject, event: gen_qcoreevent_types.QEvent): bool {.raises: [], gcsafe.}
type QConcatenateTablesProxyModeltimerEventProc* = proc(self: QConcatenateTablesProxyModel, event: gen_qcoreevent_types.QTimerEvent): void {.raises: [], gcsafe.}
type QConcatenateTablesProxyModelchildEventProc* = proc(self: QConcatenateTablesProxyModel, event: gen_qcoreevent_types.QChildEvent): void {.raises: [], gcsafe.}
type QConcatenateTablesProxyModelcustomEventProc* = proc(self: QConcatenateTablesProxyModel, event: gen_qcoreevent_types.QEvent): void {.raises: [], gcsafe.}
type QConcatenateTablesProxyModelconnectNotifyProc* = proc(self: QConcatenateTablesProxyModel, signal: gen_qmetaobject_types.QMetaMethod): void {.raises: [], gcsafe.}
type QConcatenateTablesProxyModeldisconnectNotifyProc* = proc(self: QConcatenateTablesProxyModel, signal: gen_qmetaobject_types.QMetaMethod): void {.raises: [], gcsafe.}

type QConcatenateTablesProxyModelVTable* {.inheritable, pure.} = object
  vtbl: cQConcatenateTablesProxyModelVTable
  metaObject*: QConcatenateTablesProxyModelmetaObjectProc
  metacast*: QConcatenateTablesProxyModelmetacastProc
  metacall*: QConcatenateTablesProxyModelmetacallProc
  data*: QConcatenateTablesProxyModeldataProc
  setData*: QConcatenateTablesProxyModelsetDataProc
  itemData*: QConcatenateTablesProxyModelitemDataProc
  setItemData*: QConcatenateTablesProxyModelsetItemDataProc
  flags*: QConcatenateTablesProxyModelflagsProc
  index*: QConcatenateTablesProxyModelindexProc
  parent*: QConcatenateTablesProxyModelparentProc
  rowCount*: QConcatenateTablesProxyModelrowCountProc
  headerData*: QConcatenateTablesProxyModelheaderDataProc
  columnCount*: QConcatenateTablesProxyModelcolumnCountProc
  mimeTypes*: QConcatenateTablesProxyModelmimeTypesProc
  mimeData*: QConcatenateTablesProxyModelmimeDataProc
  canDropMimeData*: QConcatenateTablesProxyModelcanDropMimeDataProc
  dropMimeData*: QConcatenateTablesProxyModeldropMimeDataProc
  span*: QConcatenateTablesProxyModelspanProc
  sibling*: QConcatenateTablesProxyModelsiblingProc
  hasChildren*: QConcatenateTablesProxyModelhasChildrenProc
  setHeaderData*: QConcatenateTablesProxyModelsetHeaderDataProc
  clearItemData*: QConcatenateTablesProxyModelclearItemDataProc
  supportedDropActions*: QConcatenateTablesProxyModelsupportedDropActionsProc
  supportedDragActions*: QConcatenateTablesProxyModelsupportedDragActionsProc
  insertRows*: QConcatenateTablesProxyModelinsertRowsProc
  insertColumns*: QConcatenateTablesProxyModelinsertColumnsProc
  removeRows*: QConcatenateTablesProxyModelremoveRowsProc
  removeColumns*: QConcatenateTablesProxyModelremoveColumnsProc
  moveRows*: QConcatenateTablesProxyModelmoveRowsProc
  moveColumns*: QConcatenateTablesProxyModelmoveColumnsProc
  fetchMore*: QConcatenateTablesProxyModelfetchMoreProc
  canFetchMore*: QConcatenateTablesProxyModelcanFetchMoreProc
  sort*: QConcatenateTablesProxyModelsortProc
  buddy*: QConcatenateTablesProxyModelbuddyProc
  match*: QConcatenateTablesProxyModelmatchProc
  roleNames*: QConcatenateTablesProxyModelroleNamesProc
  multiData*: QConcatenateTablesProxyModelmultiDataProc
  submit*: QConcatenateTablesProxyModelsubmitProc
  revert*: QConcatenateTablesProxyModelrevertProc
  resetInternalData*: QConcatenateTablesProxyModelresetInternalDataProc
  event*: QConcatenateTablesProxyModeleventProc
  eventFilter*: QConcatenateTablesProxyModeleventFilterProc
  timerEvent*: QConcatenateTablesProxyModeltimerEventProc
  childEvent*: QConcatenateTablesProxyModelchildEventProc
  customEvent*: QConcatenateTablesProxyModelcustomEventProc
  connectNotify*: QConcatenateTablesProxyModelconnectNotifyProc
  disconnectNotify*: QConcatenateTablesProxyModeldisconnectNotifyProc

proc QConcatenateTablesProxyModelmetaObject*(self: gen_qconcatenatetablesproxymodel_types.QConcatenateTablesProxyModel): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQConcatenateTablesProxyModel_virtualbase_metaObject(self.h), owned: false)

proc QConcatenateTablesProxyModelmetacast*(self: gen_qconcatenatetablesproxymodel_types.QConcatenateTablesProxyModel, param1: cstring): pointer =
  fcQConcatenateTablesProxyModel_virtualbase_metacast(self.h, param1)

proc QConcatenateTablesProxyModelmetacall*(self: gen_qconcatenatetablesproxymodel_types.QConcatenateTablesProxyModel, param1: cint, param2: cint, param3: pointer): cint =
  fcQConcatenateTablesProxyModel_virtualbase_metacall(self.h, cint(param1), param2, param3)

proc QConcatenateTablesProxyModeldata*(self: gen_qconcatenatetablesproxymodel_types.QConcatenateTablesProxyModel, index: gen_qabstractitemmodel_types.QModelIndex, role: cint): gen_qvariant_types.QVariant =
  gen_qvariant_types.QVariant(h: fcQConcatenateTablesProxyModel_virtualbase_data(self.h, index.h, role), owned: true)

proc QConcatenateTablesProxyModelsetData*(self: gen_qconcatenatetablesproxymodel_types.QConcatenateTablesProxyModel, index: gen_qabstractitemmodel_types.QModelIndex, value: gen_qvariant_types.QVariant, role: cint): bool =
  fcQConcatenateTablesProxyModel_virtualbase_setData(self.h, index.h, value.h, role)

proc QConcatenateTablesProxyModelitemData*(self: gen_qconcatenatetablesproxymodel_types.QConcatenateTablesProxyModel, proxyIndex: gen_qabstractitemmodel_types.QModelIndex): Table[cint,gen_qvariant_types.QVariant] =
  var v_mm = fcQConcatenateTablesProxyModel_virtualbase_itemData(self.h, proxyIndex.h)
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

proc QConcatenateTablesProxyModelsetItemData*(self: gen_qconcatenatetablesproxymodel_types.QConcatenateTablesProxyModel, index: gen_qabstractitemmodel_types.QModelIndex, roles: Table[cint,gen_qvariant_types.QVariant]): bool =
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

  fcQConcatenateTablesProxyModel_virtualbase_setItemData(self.h, index.h, struct_miqt_map(len: csize_t(len(roles)),keys: if len(roles) == 0: nil else: addr(roles_Keys_CArray[0]), values: if len(roles) == 0: nil else: addr(roles_Values_CArray[0]),))

proc QConcatenateTablesProxyModelflags*(self: gen_qconcatenatetablesproxymodel_types.QConcatenateTablesProxyModel, index: gen_qabstractitemmodel_types.QModelIndex): cint =
  cint(fcQConcatenateTablesProxyModel_virtualbase_flags(self.h, index.h))

proc QConcatenateTablesProxyModelindex*(self: gen_qconcatenatetablesproxymodel_types.QConcatenateTablesProxyModel, row: cint, column: cint, parent: gen_qabstractitemmodel_types.QModelIndex): gen_qabstractitemmodel_types.QModelIndex =
  gen_qabstractitemmodel_types.QModelIndex(h: fcQConcatenateTablesProxyModel_virtualbase_index(self.h, row, column, parent.h), owned: true)

proc QConcatenateTablesProxyModelparent*(self: gen_qconcatenatetablesproxymodel_types.QConcatenateTablesProxyModel, index: gen_qabstractitemmodel_types.QModelIndex): gen_qabstractitemmodel_types.QModelIndex =
  gen_qabstractitemmodel_types.QModelIndex(h: fcQConcatenateTablesProxyModel_virtualbase_parent(self.h, index.h), owned: true)

proc QConcatenateTablesProxyModelrowCount*(self: gen_qconcatenatetablesproxymodel_types.QConcatenateTablesProxyModel, parent: gen_qabstractitemmodel_types.QModelIndex): cint =
  fcQConcatenateTablesProxyModel_virtualbase_rowCount(self.h, parent.h)

proc QConcatenateTablesProxyModelheaderData*(self: gen_qconcatenatetablesproxymodel_types.QConcatenateTablesProxyModel, section: cint, orientation: cint, role: cint): gen_qvariant_types.QVariant =
  gen_qvariant_types.QVariant(h: fcQConcatenateTablesProxyModel_virtualbase_headerData(self.h, section, cint(orientation), role), owned: true)

proc QConcatenateTablesProxyModelcolumnCount*(self: gen_qconcatenatetablesproxymodel_types.QConcatenateTablesProxyModel, parent: gen_qabstractitemmodel_types.QModelIndex): cint =
  fcQConcatenateTablesProxyModel_virtualbase_columnCount(self.h, parent.h)

proc QConcatenateTablesProxyModelmimeTypes*(self: gen_qconcatenatetablesproxymodel_types.QConcatenateTablesProxyModel): seq[string] =
  var v_ma = fcQConcatenateTablesProxyModel_virtualbase_mimeTypes(self.h)
  var vx_ret = newSeq[string](int(v_ma.len))
  let v_outCast = cast[ptr UncheckedArray[struct_miqt_string]](v_ma.data)
  for i in 0 ..< v_ma.len:
    let vx_lv_ms = v_outCast[i]
    let vx_lvx_ret = string.fromBytes(vx_lv_ms)
    c_free(vx_lv_ms.data)
    vx_ret[i] = vx_lvx_ret
  c_free(v_ma.data)
  vx_ret

proc QConcatenateTablesProxyModelmimeData*(self: gen_qconcatenatetablesproxymodel_types.QConcatenateTablesProxyModel, indexes: openArray[gen_qabstractitemmodel_types.QModelIndex]): gen_qmimedata_types.QMimeData =
  var indexes_CArray = newSeq[pointer](len(indexes))
  for i in 0..<len(indexes):
    indexes_CArray[i] = indexes[i].h

  gen_qmimedata_types.QMimeData(h: fcQConcatenateTablesProxyModel_virtualbase_mimeData(self.h, struct_miqt_array(len: csize_t(len(indexes)), data: if len(indexes) == 0: nil else: addr(indexes_CArray[0]))), owned: false)

proc QConcatenateTablesProxyModelcanDropMimeData*(self: gen_qconcatenatetablesproxymodel_types.QConcatenateTablesProxyModel, data: gen_qmimedata_types.QMimeData, action: cint, row: cint, column: cint, parent: gen_qabstractitemmodel_types.QModelIndex): bool =
  fcQConcatenateTablesProxyModel_virtualbase_canDropMimeData(self.h, data.h, cint(action), row, column, parent.h)

proc QConcatenateTablesProxyModeldropMimeData*(self: gen_qconcatenatetablesproxymodel_types.QConcatenateTablesProxyModel, data: gen_qmimedata_types.QMimeData, action: cint, row: cint, column: cint, parent: gen_qabstractitemmodel_types.QModelIndex): bool =
  fcQConcatenateTablesProxyModel_virtualbase_dropMimeData(self.h, data.h, cint(action), row, column, parent.h)

proc QConcatenateTablesProxyModelspan*(self: gen_qconcatenatetablesproxymodel_types.QConcatenateTablesProxyModel, index: gen_qabstractitemmodel_types.QModelIndex): gen_qsize_types.QSize =
  gen_qsize_types.QSize(h: fcQConcatenateTablesProxyModel_virtualbase_span(self.h, index.h), owned: true)

proc QConcatenateTablesProxyModelsibling*(self: gen_qconcatenatetablesproxymodel_types.QConcatenateTablesProxyModel, row: cint, column: cint, idx: gen_qabstractitemmodel_types.QModelIndex): gen_qabstractitemmodel_types.QModelIndex =
  gen_qabstractitemmodel_types.QModelIndex(h: fcQConcatenateTablesProxyModel_virtualbase_sibling(self.h, row, column, idx.h), owned: true)

proc QConcatenateTablesProxyModelhasChildren*(self: gen_qconcatenatetablesproxymodel_types.QConcatenateTablesProxyModel, parent: gen_qabstractitemmodel_types.QModelIndex): bool =
  fcQConcatenateTablesProxyModel_virtualbase_hasChildren(self.h, parent.h)

proc QConcatenateTablesProxyModelsetHeaderData*(self: gen_qconcatenatetablesproxymodel_types.QConcatenateTablesProxyModel, section: cint, orientation: cint, value: gen_qvariant_types.QVariant, role: cint): bool =
  fcQConcatenateTablesProxyModel_virtualbase_setHeaderData(self.h, section, cint(orientation), value.h, role)

proc QConcatenateTablesProxyModelclearItemData*(self: gen_qconcatenatetablesproxymodel_types.QConcatenateTablesProxyModel, index: gen_qabstractitemmodel_types.QModelIndex): bool =
  fcQConcatenateTablesProxyModel_virtualbase_clearItemData(self.h, index.h)

proc QConcatenateTablesProxyModelsupportedDropActions*(self: gen_qconcatenatetablesproxymodel_types.QConcatenateTablesProxyModel): cint =
  cint(fcQConcatenateTablesProxyModel_virtualbase_supportedDropActions(self.h))

proc QConcatenateTablesProxyModelsupportedDragActions*(self: gen_qconcatenatetablesproxymodel_types.QConcatenateTablesProxyModel): cint =
  cint(fcQConcatenateTablesProxyModel_virtualbase_supportedDragActions(self.h))

proc QConcatenateTablesProxyModelinsertRows*(self: gen_qconcatenatetablesproxymodel_types.QConcatenateTablesProxyModel, row: cint, count: cint, parent: gen_qabstractitemmodel_types.QModelIndex): bool =
  fcQConcatenateTablesProxyModel_virtualbase_insertRows(self.h, row, count, parent.h)

proc QConcatenateTablesProxyModelinsertColumns*(self: gen_qconcatenatetablesproxymodel_types.QConcatenateTablesProxyModel, column: cint, count: cint, parent: gen_qabstractitemmodel_types.QModelIndex): bool =
  fcQConcatenateTablesProxyModel_virtualbase_insertColumns(self.h, column, count, parent.h)

proc QConcatenateTablesProxyModelremoveRows*(self: gen_qconcatenatetablesproxymodel_types.QConcatenateTablesProxyModel, row: cint, count: cint, parent: gen_qabstractitemmodel_types.QModelIndex): bool =
  fcQConcatenateTablesProxyModel_virtualbase_removeRows(self.h, row, count, parent.h)

proc QConcatenateTablesProxyModelremoveColumns*(self: gen_qconcatenatetablesproxymodel_types.QConcatenateTablesProxyModel, column: cint, count: cint, parent: gen_qabstractitemmodel_types.QModelIndex): bool =
  fcQConcatenateTablesProxyModel_virtualbase_removeColumns(self.h, column, count, parent.h)

proc QConcatenateTablesProxyModelmoveRows*(self: gen_qconcatenatetablesproxymodel_types.QConcatenateTablesProxyModel, sourceParent: gen_qabstractitemmodel_types.QModelIndex, sourceRow: cint, count: cint, destinationParent: gen_qabstractitemmodel_types.QModelIndex, destinationChild: cint): bool =
  fcQConcatenateTablesProxyModel_virtualbase_moveRows(self.h, sourceParent.h, sourceRow, count, destinationParent.h, destinationChild)

proc QConcatenateTablesProxyModelmoveColumns*(self: gen_qconcatenatetablesproxymodel_types.QConcatenateTablesProxyModel, sourceParent: gen_qabstractitemmodel_types.QModelIndex, sourceColumn: cint, count: cint, destinationParent: gen_qabstractitemmodel_types.QModelIndex, destinationChild: cint): bool =
  fcQConcatenateTablesProxyModel_virtualbase_moveColumns(self.h, sourceParent.h, sourceColumn, count, destinationParent.h, destinationChild)

proc QConcatenateTablesProxyModelfetchMore*(self: gen_qconcatenatetablesproxymodel_types.QConcatenateTablesProxyModel, parent: gen_qabstractitemmodel_types.QModelIndex): void =
  fcQConcatenateTablesProxyModel_virtualbase_fetchMore(self.h, parent.h)

proc QConcatenateTablesProxyModelcanFetchMore*(self: gen_qconcatenatetablesproxymodel_types.QConcatenateTablesProxyModel, parent: gen_qabstractitemmodel_types.QModelIndex): bool =
  fcQConcatenateTablesProxyModel_virtualbase_canFetchMore(self.h, parent.h)

proc QConcatenateTablesProxyModelsort*(self: gen_qconcatenatetablesproxymodel_types.QConcatenateTablesProxyModel, column: cint, order: cint): void =
  fcQConcatenateTablesProxyModel_virtualbase_sort(self.h, column, cint(order))

proc QConcatenateTablesProxyModelbuddy*(self: gen_qconcatenatetablesproxymodel_types.QConcatenateTablesProxyModel, index: gen_qabstractitemmodel_types.QModelIndex): gen_qabstractitemmodel_types.QModelIndex =
  gen_qabstractitemmodel_types.QModelIndex(h: fcQConcatenateTablesProxyModel_virtualbase_buddy(self.h, index.h), owned: true)

proc QConcatenateTablesProxyModelmatch*(self: gen_qconcatenatetablesproxymodel_types.QConcatenateTablesProxyModel, start: gen_qabstractitemmodel_types.QModelIndex, role: cint, value: gen_qvariant_types.QVariant, hits: cint, flags: cint): seq[gen_qabstractitemmodel_types.QModelIndex] =
  var v_ma = fcQConcatenateTablesProxyModel_virtualbase_match(self.h, start.h, role, value.h, hits, cint(flags))
  var vx_ret = newSeq[gen_qabstractitemmodel_types.QModelIndex](int(v_ma.len))
  let v_outCast = cast[ptr UncheckedArray[pointer]](v_ma.data)
  for i in 0 ..< v_ma.len:
    vx_ret[i] = gen_qabstractitemmodel_types.QModelIndex(h: v_outCast[i], owned: true)
  c_free(v_ma.data)
  vx_ret

proc QConcatenateTablesProxyModelroleNames*(self: gen_qconcatenatetablesproxymodel_types.QConcatenateTablesProxyModel): Table[cint,seq[byte]] =
  var v_mm = fcQConcatenateTablesProxyModel_virtualbase_roleNames(self.h)
  var vx_ret: Table[cint, seq[byte]]
  var v_Keys = cast[ptr UncheckedArray[cint]](v_mm.keys)
  var v_Values = cast[ptr UncheckedArray[struct_miqt_string]](v_mm.values)
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

proc QConcatenateTablesProxyModelmultiData*(self: gen_qconcatenatetablesproxymodel_types.QConcatenateTablesProxyModel, index: gen_qabstractitemmodel_types.QModelIndex, roleDataSpan: gen_qabstractitemmodel_types.QModelRoleDataSpan): void =
  fcQConcatenateTablesProxyModel_virtualbase_multiData(self.h, index.h, roleDataSpan.h)

proc QConcatenateTablesProxyModelsubmit*(self: gen_qconcatenatetablesproxymodel_types.QConcatenateTablesProxyModel): bool =
  fcQConcatenateTablesProxyModel_virtualbase_submit(self.h)

proc QConcatenateTablesProxyModelrevert*(self: gen_qconcatenatetablesproxymodel_types.QConcatenateTablesProxyModel): void =
  fcQConcatenateTablesProxyModel_virtualbase_revert(self.h)

proc QConcatenateTablesProxyModelresetInternalData*(self: gen_qconcatenatetablesproxymodel_types.QConcatenateTablesProxyModel): void =
  fcQConcatenateTablesProxyModel_virtualbase_resetInternalData(self.h)

proc QConcatenateTablesProxyModelevent*(self: gen_qconcatenatetablesproxymodel_types.QConcatenateTablesProxyModel, event: gen_qcoreevent_types.QEvent): bool =
  fcQConcatenateTablesProxyModel_virtualbase_event(self.h, event.h)

proc QConcatenateTablesProxyModeleventFilter*(self: gen_qconcatenatetablesproxymodel_types.QConcatenateTablesProxyModel, watched: gen_qobject_types.QObject, event: gen_qcoreevent_types.QEvent): bool =
  fcQConcatenateTablesProxyModel_virtualbase_eventFilter(self.h, watched.h, event.h)

proc QConcatenateTablesProxyModeltimerEvent*(self: gen_qconcatenatetablesproxymodel_types.QConcatenateTablesProxyModel, event: gen_qcoreevent_types.QTimerEvent): void =
  fcQConcatenateTablesProxyModel_virtualbase_timerEvent(self.h, event.h)

proc QConcatenateTablesProxyModelchildEvent*(self: gen_qconcatenatetablesproxymodel_types.QConcatenateTablesProxyModel, event: gen_qcoreevent_types.QChildEvent): void =
  fcQConcatenateTablesProxyModel_virtualbase_childEvent(self.h, event.h)

proc QConcatenateTablesProxyModelcustomEvent*(self: gen_qconcatenatetablesproxymodel_types.QConcatenateTablesProxyModel, event: gen_qcoreevent_types.QEvent): void =
  fcQConcatenateTablesProxyModel_virtualbase_customEvent(self.h, event.h)

proc QConcatenateTablesProxyModelconnectNotify*(self: gen_qconcatenatetablesproxymodel_types.QConcatenateTablesProxyModel, signal: gen_qmetaobject_types.QMetaMethod): void =
  fcQConcatenateTablesProxyModel_virtualbase_connectNotify(self.h, signal.h)

proc QConcatenateTablesProxyModeldisconnectNotify*(self: gen_qconcatenatetablesproxymodel_types.QConcatenateTablesProxyModel, signal: gen_qmetaobject_types.QMetaMethod): void =
  fcQConcatenateTablesProxyModel_virtualbase_disconnectNotify(self.h, signal.h)


proc fcQConcatenateTablesProxyModel_vtable_callback_metaObject(self: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QConcatenateTablesProxyModelVTable](fcQConcatenateTablesProxyModel_vdata(self))
  let self = QConcatenateTablesProxyModel(h: self)
  var virtualReturn = vtbl[].metaObject(self)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc fcQConcatenateTablesProxyModel_vtable_callback_metacast(self: pointer, param1: cstring): pointer {.cdecl.} =
  let vtbl = cast[ptr QConcatenateTablesProxyModelVTable](fcQConcatenateTablesProxyModel_vdata(self))
  let self = QConcatenateTablesProxyModel(h: self)
  let slotval1 = (param1)
  var virtualReturn = vtbl[].metacast(self, slotval1)
  virtualReturn

proc fcQConcatenateTablesProxyModel_vtable_callback_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.cdecl.} =
  let vtbl = cast[ptr QConcatenateTablesProxyModelVTable](fcQConcatenateTablesProxyModel_vdata(self))
  let self = QConcatenateTablesProxyModel(h: self)
  let slotval1 = cint(param1)
  let slotval2 = param2
  let slotval3 = param3
  var virtualReturn = vtbl[].metacall(self, slotval1, slotval2, slotval3)
  virtualReturn

proc fcQConcatenateTablesProxyModel_vtable_callback_data(self: pointer, index: pointer, role: cint): pointer {.cdecl.} =
  let vtbl = cast[ptr QConcatenateTablesProxyModelVTable](fcQConcatenateTablesProxyModel_vdata(self))
  let self = QConcatenateTablesProxyModel(h: self)
  let slotval1 = gen_qabstractitemmodel_types.QModelIndex(h: index, owned: false)
  let slotval2 = role
  var virtualReturn = vtbl[].data(self, slotval1, slotval2)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc fcQConcatenateTablesProxyModel_vtable_callback_setData(self: pointer, index: pointer, value: pointer, role: cint): bool {.cdecl.} =
  let vtbl = cast[ptr QConcatenateTablesProxyModelVTable](fcQConcatenateTablesProxyModel_vdata(self))
  let self = QConcatenateTablesProxyModel(h: self)
  let slotval1 = gen_qabstractitemmodel_types.QModelIndex(h: index, owned: false)
  let slotval2 = gen_qvariant_types.QVariant(h: value, owned: false)
  let slotval3 = role
  var virtualReturn = vtbl[].setData(self, slotval1, slotval2, slotval3)
  virtualReturn

proc fcQConcatenateTablesProxyModel_vtable_callback_itemData(self: pointer, proxyIndex: pointer): struct_miqt_map {.cdecl.} =
  let vtbl = cast[ptr QConcatenateTablesProxyModelVTable](fcQConcatenateTablesProxyModel_vdata(self))
  let self = QConcatenateTablesProxyModel(h: self)
  let slotval1 = gen_qabstractitemmodel_types.QModelIndex(h: proxyIndex, owned: false)
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

  struct_miqt_map(len: csize_t(len(virtualReturn)),keys: if len(virtualReturn) == 0: nil else: addr(virtualReturn_Keys_CArray[0]), values: if len(virtualReturn) == 0: nil else: addr(virtualReturn_Values_CArray[0]),)

proc fcQConcatenateTablesProxyModel_vtable_callback_setItemData(self: pointer, index: pointer, roles: struct_miqt_map): bool {.cdecl.} =
  let vtbl = cast[ptr QConcatenateTablesProxyModelVTable](fcQConcatenateTablesProxyModel_vdata(self))
  let self = QConcatenateTablesProxyModel(h: self)
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

proc fcQConcatenateTablesProxyModel_vtable_callback_flags(self: pointer, index: pointer): cint {.cdecl.} =
  let vtbl = cast[ptr QConcatenateTablesProxyModelVTable](fcQConcatenateTablesProxyModel_vdata(self))
  let self = QConcatenateTablesProxyModel(h: self)
  let slotval1 = gen_qabstractitemmodel_types.QModelIndex(h: index, owned: false)
  var virtualReturn = vtbl[].flags(self, slotval1)
  cint(virtualReturn)

proc fcQConcatenateTablesProxyModel_vtable_callback_index(self: pointer, row: cint, column: cint, parent: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QConcatenateTablesProxyModelVTable](fcQConcatenateTablesProxyModel_vdata(self))
  let self = QConcatenateTablesProxyModel(h: self)
  let slotval1 = row
  let slotval2 = column
  let slotval3 = gen_qabstractitemmodel_types.QModelIndex(h: parent, owned: false)
  var virtualReturn = vtbl[].index(self, slotval1, slotval2, slotval3)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc fcQConcatenateTablesProxyModel_vtable_callback_parent(self: pointer, index: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QConcatenateTablesProxyModelVTable](fcQConcatenateTablesProxyModel_vdata(self))
  let self = QConcatenateTablesProxyModel(h: self)
  let slotval1 = gen_qabstractitemmodel_types.QModelIndex(h: index, owned: false)
  var virtualReturn = vtbl[].parent(self, slotval1)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc fcQConcatenateTablesProxyModel_vtable_callback_rowCount(self: pointer, parent: pointer): cint {.cdecl.} =
  let vtbl = cast[ptr QConcatenateTablesProxyModelVTable](fcQConcatenateTablesProxyModel_vdata(self))
  let self = QConcatenateTablesProxyModel(h: self)
  let slotval1 = gen_qabstractitemmodel_types.QModelIndex(h: parent, owned: false)
  var virtualReturn = vtbl[].rowCount(self, slotval1)
  virtualReturn

proc fcQConcatenateTablesProxyModel_vtable_callback_headerData(self: pointer, section: cint, orientation: cint, role: cint): pointer {.cdecl.} =
  let vtbl = cast[ptr QConcatenateTablesProxyModelVTable](fcQConcatenateTablesProxyModel_vdata(self))
  let self = QConcatenateTablesProxyModel(h: self)
  let slotval1 = section
  let slotval2 = cint(orientation)
  let slotval3 = role
  var virtualReturn = vtbl[].headerData(self, slotval1, slotval2, slotval3)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc fcQConcatenateTablesProxyModel_vtable_callback_columnCount(self: pointer, parent: pointer): cint {.cdecl.} =
  let vtbl = cast[ptr QConcatenateTablesProxyModelVTable](fcQConcatenateTablesProxyModel_vdata(self))
  let self = QConcatenateTablesProxyModel(h: self)
  let slotval1 = gen_qabstractitemmodel_types.QModelIndex(h: parent, owned: false)
  var virtualReturn = vtbl[].columnCount(self, slotval1)
  virtualReturn

proc fcQConcatenateTablesProxyModel_vtable_callback_mimeTypes(self: pointer): struct_miqt_array {.cdecl.} =
  let vtbl = cast[ptr QConcatenateTablesProxyModelVTable](fcQConcatenateTablesProxyModel_vdata(self))
  let self = QConcatenateTablesProxyModel(h: self)
  var virtualReturn = vtbl[].mimeTypes(self)
  var virtualReturn_CArray = cast[ptr UncheckedArray[struct_miqt_string]](if len(virtualReturn) > 0: c_malloc(c_sizet(sizeof(struct_miqt_string) * len(virtualReturn))) else: nil)
  for i in 0..<len(virtualReturn):
    var virtualReturn_i_copy = cast[cstring](if len(virtualReturn[i]) > 0: c_malloc(csize_t(len(virtualReturn[i]))) else: nil)
    if len(virtualReturn[i]) > 0: copyMem(cast[pointer](virtualReturn_i_copy), addr virtualReturn[i][0], csize_t(len(virtualReturn[i])))
    virtualReturn_CArray[i] = struct_miqt_string(data: virtualReturn_i_copy, len: csize_t(len(virtualReturn[i])))

  struct_miqt_array(len: csize_t(len(virtualReturn)), data: if len(virtualReturn) == 0: nil else: addr(virtualReturn_CArray[0]))

proc fcQConcatenateTablesProxyModel_vtable_callback_mimeData(self: pointer, indexes: struct_miqt_array): pointer {.cdecl.} =
  let vtbl = cast[ptr QConcatenateTablesProxyModelVTable](fcQConcatenateTablesProxyModel_vdata(self))
  let self = QConcatenateTablesProxyModel(h: self)
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

proc fcQConcatenateTablesProxyModel_vtable_callback_canDropMimeData(self: pointer, data: pointer, action: cint, row: cint, column: cint, parent: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QConcatenateTablesProxyModelVTable](fcQConcatenateTablesProxyModel_vdata(self))
  let self = QConcatenateTablesProxyModel(h: self)
  let slotval1 = gen_qmimedata_types.QMimeData(h: data, owned: false)
  let slotval2 = cint(action)
  let slotval3 = row
  let slotval4 = column
  let slotval5 = gen_qabstractitemmodel_types.QModelIndex(h: parent, owned: false)
  var virtualReturn = vtbl[].canDropMimeData(self, slotval1, slotval2, slotval3, slotval4, slotval5)
  virtualReturn

proc fcQConcatenateTablesProxyModel_vtable_callback_dropMimeData(self: pointer, data: pointer, action: cint, row: cint, column: cint, parent: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QConcatenateTablesProxyModelVTable](fcQConcatenateTablesProxyModel_vdata(self))
  let self = QConcatenateTablesProxyModel(h: self)
  let slotval1 = gen_qmimedata_types.QMimeData(h: data, owned: false)
  let slotval2 = cint(action)
  let slotval3 = row
  let slotval4 = column
  let slotval5 = gen_qabstractitemmodel_types.QModelIndex(h: parent, owned: false)
  var virtualReturn = vtbl[].dropMimeData(self, slotval1, slotval2, slotval3, slotval4, slotval5)
  virtualReturn

proc fcQConcatenateTablesProxyModel_vtable_callback_span(self: pointer, index: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QConcatenateTablesProxyModelVTable](fcQConcatenateTablesProxyModel_vdata(self))
  let self = QConcatenateTablesProxyModel(h: self)
  let slotval1 = gen_qabstractitemmodel_types.QModelIndex(h: index, owned: false)
  var virtualReturn = vtbl[].span(self, slotval1)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc fcQConcatenateTablesProxyModel_vtable_callback_sibling(self: pointer, row: cint, column: cint, idx: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QConcatenateTablesProxyModelVTable](fcQConcatenateTablesProxyModel_vdata(self))
  let self = QConcatenateTablesProxyModel(h: self)
  let slotval1 = row
  let slotval2 = column
  let slotval3 = gen_qabstractitemmodel_types.QModelIndex(h: idx, owned: false)
  var virtualReturn = vtbl[].sibling(self, slotval1, slotval2, slotval3)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc fcQConcatenateTablesProxyModel_vtable_callback_hasChildren(self: pointer, parent: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QConcatenateTablesProxyModelVTable](fcQConcatenateTablesProxyModel_vdata(self))
  let self = QConcatenateTablesProxyModel(h: self)
  let slotval1 = gen_qabstractitemmodel_types.QModelIndex(h: parent, owned: false)
  var virtualReturn = vtbl[].hasChildren(self, slotval1)
  virtualReturn

proc fcQConcatenateTablesProxyModel_vtable_callback_setHeaderData(self: pointer, section: cint, orientation: cint, value: pointer, role: cint): bool {.cdecl.} =
  let vtbl = cast[ptr QConcatenateTablesProxyModelVTable](fcQConcatenateTablesProxyModel_vdata(self))
  let self = QConcatenateTablesProxyModel(h: self)
  let slotval1 = section
  let slotval2 = cint(orientation)
  let slotval3 = gen_qvariant_types.QVariant(h: value, owned: false)
  let slotval4 = role
  var virtualReturn = vtbl[].setHeaderData(self, slotval1, slotval2, slotval3, slotval4)
  virtualReturn

proc fcQConcatenateTablesProxyModel_vtable_callback_clearItemData(self: pointer, index: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QConcatenateTablesProxyModelVTable](fcQConcatenateTablesProxyModel_vdata(self))
  let self = QConcatenateTablesProxyModel(h: self)
  let slotval1 = gen_qabstractitemmodel_types.QModelIndex(h: index, owned: false)
  var virtualReturn = vtbl[].clearItemData(self, slotval1)
  virtualReturn

proc fcQConcatenateTablesProxyModel_vtable_callback_supportedDropActions(self: pointer): cint {.cdecl.} =
  let vtbl = cast[ptr QConcatenateTablesProxyModelVTable](fcQConcatenateTablesProxyModel_vdata(self))
  let self = QConcatenateTablesProxyModel(h: self)
  var virtualReturn = vtbl[].supportedDropActions(self)
  cint(virtualReturn)

proc fcQConcatenateTablesProxyModel_vtable_callback_supportedDragActions(self: pointer): cint {.cdecl.} =
  let vtbl = cast[ptr QConcatenateTablesProxyModelVTable](fcQConcatenateTablesProxyModel_vdata(self))
  let self = QConcatenateTablesProxyModel(h: self)
  var virtualReturn = vtbl[].supportedDragActions(self)
  cint(virtualReturn)

proc fcQConcatenateTablesProxyModel_vtable_callback_insertRows(self: pointer, row: cint, count: cint, parent: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QConcatenateTablesProxyModelVTable](fcQConcatenateTablesProxyModel_vdata(self))
  let self = QConcatenateTablesProxyModel(h: self)
  let slotval1 = row
  let slotval2 = count
  let slotval3 = gen_qabstractitemmodel_types.QModelIndex(h: parent, owned: false)
  var virtualReturn = vtbl[].insertRows(self, slotval1, slotval2, slotval3)
  virtualReturn

proc fcQConcatenateTablesProxyModel_vtable_callback_insertColumns(self: pointer, column: cint, count: cint, parent: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QConcatenateTablesProxyModelVTable](fcQConcatenateTablesProxyModel_vdata(self))
  let self = QConcatenateTablesProxyModel(h: self)
  let slotval1 = column
  let slotval2 = count
  let slotval3 = gen_qabstractitemmodel_types.QModelIndex(h: parent, owned: false)
  var virtualReturn = vtbl[].insertColumns(self, slotval1, slotval2, slotval3)
  virtualReturn

proc fcQConcatenateTablesProxyModel_vtable_callback_removeRows(self: pointer, row: cint, count: cint, parent: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QConcatenateTablesProxyModelVTable](fcQConcatenateTablesProxyModel_vdata(self))
  let self = QConcatenateTablesProxyModel(h: self)
  let slotval1 = row
  let slotval2 = count
  let slotval3 = gen_qabstractitemmodel_types.QModelIndex(h: parent, owned: false)
  var virtualReturn = vtbl[].removeRows(self, slotval1, slotval2, slotval3)
  virtualReturn

proc fcQConcatenateTablesProxyModel_vtable_callback_removeColumns(self: pointer, column: cint, count: cint, parent: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QConcatenateTablesProxyModelVTable](fcQConcatenateTablesProxyModel_vdata(self))
  let self = QConcatenateTablesProxyModel(h: self)
  let slotval1 = column
  let slotval2 = count
  let slotval3 = gen_qabstractitemmodel_types.QModelIndex(h: parent, owned: false)
  var virtualReturn = vtbl[].removeColumns(self, slotval1, slotval2, slotval3)
  virtualReturn

proc fcQConcatenateTablesProxyModel_vtable_callback_moveRows(self: pointer, sourceParent: pointer, sourceRow: cint, count: cint, destinationParent: pointer, destinationChild: cint): bool {.cdecl.} =
  let vtbl = cast[ptr QConcatenateTablesProxyModelVTable](fcQConcatenateTablesProxyModel_vdata(self))
  let self = QConcatenateTablesProxyModel(h: self)
  let slotval1 = gen_qabstractitemmodel_types.QModelIndex(h: sourceParent, owned: false)
  let slotval2 = sourceRow
  let slotval3 = count
  let slotval4 = gen_qabstractitemmodel_types.QModelIndex(h: destinationParent, owned: false)
  let slotval5 = destinationChild
  var virtualReturn = vtbl[].moveRows(self, slotval1, slotval2, slotval3, slotval4, slotval5)
  virtualReturn

proc fcQConcatenateTablesProxyModel_vtable_callback_moveColumns(self: pointer, sourceParent: pointer, sourceColumn: cint, count: cint, destinationParent: pointer, destinationChild: cint): bool {.cdecl.} =
  let vtbl = cast[ptr QConcatenateTablesProxyModelVTable](fcQConcatenateTablesProxyModel_vdata(self))
  let self = QConcatenateTablesProxyModel(h: self)
  let slotval1 = gen_qabstractitemmodel_types.QModelIndex(h: sourceParent, owned: false)
  let slotval2 = sourceColumn
  let slotval3 = count
  let slotval4 = gen_qabstractitemmodel_types.QModelIndex(h: destinationParent, owned: false)
  let slotval5 = destinationChild
  var virtualReturn = vtbl[].moveColumns(self, slotval1, slotval2, slotval3, slotval4, slotval5)
  virtualReturn

proc fcQConcatenateTablesProxyModel_vtable_callback_fetchMore(self: pointer, parent: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QConcatenateTablesProxyModelVTable](fcQConcatenateTablesProxyModel_vdata(self))
  let self = QConcatenateTablesProxyModel(h: self)
  let slotval1 = gen_qabstractitemmodel_types.QModelIndex(h: parent, owned: false)
  vtbl[].fetchMore(self, slotval1)

proc fcQConcatenateTablesProxyModel_vtable_callback_canFetchMore(self: pointer, parent: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QConcatenateTablesProxyModelVTable](fcQConcatenateTablesProxyModel_vdata(self))
  let self = QConcatenateTablesProxyModel(h: self)
  let slotval1 = gen_qabstractitemmodel_types.QModelIndex(h: parent, owned: false)
  var virtualReturn = vtbl[].canFetchMore(self, slotval1)
  virtualReturn

proc fcQConcatenateTablesProxyModel_vtable_callback_sort(self: pointer, column: cint, order: cint): void {.cdecl.} =
  let vtbl = cast[ptr QConcatenateTablesProxyModelVTable](fcQConcatenateTablesProxyModel_vdata(self))
  let self = QConcatenateTablesProxyModel(h: self)
  let slotval1 = column
  let slotval2 = cint(order)
  vtbl[].sort(self, slotval1, slotval2)

proc fcQConcatenateTablesProxyModel_vtable_callback_buddy(self: pointer, index: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QConcatenateTablesProxyModelVTable](fcQConcatenateTablesProxyModel_vdata(self))
  let self = QConcatenateTablesProxyModel(h: self)
  let slotval1 = gen_qabstractitemmodel_types.QModelIndex(h: index, owned: false)
  var virtualReturn = vtbl[].buddy(self, slotval1)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc fcQConcatenateTablesProxyModel_vtable_callback_match(self: pointer, start: pointer, role: cint, value: pointer, hits: cint, flags: cint): struct_miqt_array {.cdecl.} =
  let vtbl = cast[ptr QConcatenateTablesProxyModelVTable](fcQConcatenateTablesProxyModel_vdata(self))
  let self = QConcatenateTablesProxyModel(h: self)
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

  struct_miqt_array(len: csize_t(len(virtualReturn)), data: if len(virtualReturn) == 0: nil else: addr(virtualReturn_CArray[0]))

proc fcQConcatenateTablesProxyModel_vtable_callback_roleNames(self: pointer): struct_miqt_map {.cdecl.} =
  let vtbl = cast[ptr QConcatenateTablesProxyModelVTable](fcQConcatenateTablesProxyModel_vdata(self))
  let self = QConcatenateTablesProxyModel(h: self)
  var virtualReturn = vtbl[].roleNames(self)
  var virtualReturn_Keys_CArray = cast[ptr UncheckedArray[cint]](if len(virtualReturn) > 0: c_malloc(csize_t(sizeof(cint) * len(virtualReturn))) else: nil)
  var virtualReturn_Values_CArray = cast[ptr UncheckedArray[struct_miqt_string]](if len(virtualReturn) > 0: c_malloc(csize_t(sizeof(struct_miqt_string) * len(virtualReturn))) else: nil)
  var virtualReturn_ctr = 0
  for virtualReturn_k in virtualReturn.keys():
    virtualReturn_Keys_CArray[virtualReturn_ctr] = virtualReturn_k
    virtualReturn_ctr += 1
  virtualReturn_ctr = 0
  for virtualReturn_v in virtualReturn.mvalues():
    var virtualReturn_v_copy = cast[cstring](if len(virtualReturn_v) > 0: c_malloc(csize_t(len(virtualReturn_v))) else: nil)
    if len(virtualReturn_v) > 0: copyMem(cast[pointer](virtualReturn_v_copy), addr virtualReturn_v[0], csize_t(len(virtualReturn_v)))
    virtualReturn_Values_CArray[virtualReturn_ctr] = struct_miqt_string(data: virtualReturn_v_copy, len: csize_t(len(virtualReturn_v)))
    virtualReturn_ctr += 1

  struct_miqt_map(len: csize_t(len(virtualReturn)),keys: if len(virtualReturn) == 0: nil else: addr(virtualReturn_Keys_CArray[0]), values: if len(virtualReturn) == 0: nil else: addr(virtualReturn_Values_CArray[0]),)

proc fcQConcatenateTablesProxyModel_vtable_callback_multiData(self: pointer, index: pointer, roleDataSpan: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QConcatenateTablesProxyModelVTable](fcQConcatenateTablesProxyModel_vdata(self))
  let self = QConcatenateTablesProxyModel(h: self)
  let slotval1 = gen_qabstractitemmodel_types.QModelIndex(h: index, owned: false)
  let slotval2 = gen_qabstractitemmodel_types.QModelRoleDataSpan(h: roleDataSpan, owned: true)
  vtbl[].multiData(self, slotval1, slotval2)

proc fcQConcatenateTablesProxyModel_vtable_callback_submit(self: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QConcatenateTablesProxyModelVTable](fcQConcatenateTablesProxyModel_vdata(self))
  let self = QConcatenateTablesProxyModel(h: self)
  var virtualReturn = vtbl[].submit(self)
  virtualReturn

proc fcQConcatenateTablesProxyModel_vtable_callback_revert(self: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QConcatenateTablesProxyModelVTable](fcQConcatenateTablesProxyModel_vdata(self))
  let self = QConcatenateTablesProxyModel(h: self)
  vtbl[].revert(self)

proc fcQConcatenateTablesProxyModel_vtable_callback_resetInternalData(self: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QConcatenateTablesProxyModelVTable](fcQConcatenateTablesProxyModel_vdata(self))
  let self = QConcatenateTablesProxyModel(h: self)
  vtbl[].resetInternalData(self)

proc fcQConcatenateTablesProxyModel_vtable_callback_event(self: pointer, event: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QConcatenateTablesProxyModelVTable](fcQConcatenateTablesProxyModel_vdata(self))
  let self = QConcatenateTablesProxyModel(h: self)
  let slotval1 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  var virtualReturn = vtbl[].event(self, slotval1)
  virtualReturn

proc fcQConcatenateTablesProxyModel_vtable_callback_eventFilter(self: pointer, watched: pointer, event: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QConcatenateTablesProxyModelVTable](fcQConcatenateTablesProxyModel_vdata(self))
  let self = QConcatenateTablesProxyModel(h: self)
  let slotval1 = gen_qobject_types.QObject(h: watched, owned: false)
  let slotval2 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  var virtualReturn = vtbl[].eventFilter(self, slotval1, slotval2)
  virtualReturn

proc fcQConcatenateTablesProxyModel_vtable_callback_timerEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QConcatenateTablesProxyModelVTable](fcQConcatenateTablesProxyModel_vdata(self))
  let self = QConcatenateTablesProxyModel(h: self)
  let slotval1 = gen_qcoreevent_types.QTimerEvent(h: event, owned: false)
  vtbl[].timerEvent(self, slotval1)

proc fcQConcatenateTablesProxyModel_vtable_callback_childEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QConcatenateTablesProxyModelVTable](fcQConcatenateTablesProxyModel_vdata(self))
  let self = QConcatenateTablesProxyModel(h: self)
  let slotval1 = gen_qcoreevent_types.QChildEvent(h: event, owned: false)
  vtbl[].childEvent(self, slotval1)

proc fcQConcatenateTablesProxyModel_vtable_callback_customEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QConcatenateTablesProxyModelVTable](fcQConcatenateTablesProxyModel_vdata(self))
  let self = QConcatenateTablesProxyModel(h: self)
  let slotval1 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  vtbl[].customEvent(self, slotval1)

proc fcQConcatenateTablesProxyModel_vtable_callback_connectNotify(self: pointer, signal: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QConcatenateTablesProxyModelVTable](fcQConcatenateTablesProxyModel_vdata(self))
  let self = QConcatenateTablesProxyModel(h: self)
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal, owned: false)
  vtbl[].connectNotify(self, slotval1)

proc fcQConcatenateTablesProxyModel_vtable_callback_disconnectNotify(self: pointer, signal: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QConcatenateTablesProxyModelVTable](fcQConcatenateTablesProxyModel_vdata(self))
  let self = QConcatenateTablesProxyModel(h: self)
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal, owned: false)
  vtbl[].disconnectNotify(self, slotval1)

type VirtualQConcatenateTablesProxyModel* {.inheritable.} = ref object of QConcatenateTablesProxyModel
  vtbl*: cQConcatenateTablesProxyModelVTable

method metaObject*(self: VirtualQConcatenateTablesProxyModel): gen_qobjectdefs_types.QMetaObject {.base.} =
  QConcatenateTablesProxyModelmetaObject(self[])
method metacast*(self: VirtualQConcatenateTablesProxyModel, param1: cstring): pointer {.base.} =
  QConcatenateTablesProxyModelmetacast(self[], param1)
method metacall*(self: VirtualQConcatenateTablesProxyModel, param1: cint, param2: cint, param3: pointer): cint {.base.} =
  QConcatenateTablesProxyModelmetacall(self[], param1, param2, param3)
method data*(self: VirtualQConcatenateTablesProxyModel, index: gen_qabstractitemmodel_types.QModelIndex, role: cint): gen_qvariant_types.QVariant {.base.} =
  QConcatenateTablesProxyModeldata(self[], index, role)
method setData*(self: VirtualQConcatenateTablesProxyModel, index: gen_qabstractitemmodel_types.QModelIndex, value: gen_qvariant_types.QVariant, role: cint): bool {.base.} =
  QConcatenateTablesProxyModelsetData(self[], index, value, role)
method itemData*(self: VirtualQConcatenateTablesProxyModel, proxyIndex: gen_qabstractitemmodel_types.QModelIndex): Table[cint,gen_qvariant_types.QVariant] {.base.} =
  QConcatenateTablesProxyModelitemData(self[], proxyIndex)
method setItemData*(self: VirtualQConcatenateTablesProxyModel, index: gen_qabstractitemmodel_types.QModelIndex, roles: Table[cint,gen_qvariant_types.QVariant]): bool {.base.} =
  QConcatenateTablesProxyModelsetItemData(self[], index, roles)
method flags*(self: VirtualQConcatenateTablesProxyModel, index: gen_qabstractitemmodel_types.QModelIndex): cint {.base.} =
  QConcatenateTablesProxyModelflags(self[], index)
method index*(self: VirtualQConcatenateTablesProxyModel, row: cint, column: cint, parent: gen_qabstractitemmodel_types.QModelIndex): gen_qabstractitemmodel_types.QModelIndex {.base.} =
  QConcatenateTablesProxyModelindex(self[], row, column, parent)
method parent*(self: VirtualQConcatenateTablesProxyModel, index: gen_qabstractitemmodel_types.QModelIndex): gen_qabstractitemmodel_types.QModelIndex {.base.} =
  QConcatenateTablesProxyModelparent(self[], index)
method rowCount*(self: VirtualQConcatenateTablesProxyModel, parent: gen_qabstractitemmodel_types.QModelIndex): cint {.base.} =
  QConcatenateTablesProxyModelrowCount(self[], parent)
method headerData*(self: VirtualQConcatenateTablesProxyModel, section: cint, orientation: cint, role: cint): gen_qvariant_types.QVariant {.base.} =
  QConcatenateTablesProxyModelheaderData(self[], section, orientation, role)
method columnCount*(self: VirtualQConcatenateTablesProxyModel, parent: gen_qabstractitemmodel_types.QModelIndex): cint {.base.} =
  QConcatenateTablesProxyModelcolumnCount(self[], parent)
method mimeTypes*(self: VirtualQConcatenateTablesProxyModel): seq[string] {.base.} =
  QConcatenateTablesProxyModelmimeTypes(self[])
method mimeData*(self: VirtualQConcatenateTablesProxyModel, indexes: openArray[gen_qabstractitemmodel_types.QModelIndex]): gen_qmimedata_types.QMimeData {.base.} =
  QConcatenateTablesProxyModelmimeData(self[], indexes)
method canDropMimeData*(self: VirtualQConcatenateTablesProxyModel, data: gen_qmimedata_types.QMimeData, action: cint, row: cint, column: cint, parent: gen_qabstractitemmodel_types.QModelIndex): bool {.base.} =
  QConcatenateTablesProxyModelcanDropMimeData(self[], data, action, row, column, parent)
method dropMimeData*(self: VirtualQConcatenateTablesProxyModel, data: gen_qmimedata_types.QMimeData, action: cint, row: cint, column: cint, parent: gen_qabstractitemmodel_types.QModelIndex): bool {.base.} =
  QConcatenateTablesProxyModeldropMimeData(self[], data, action, row, column, parent)
method span*(self: VirtualQConcatenateTablesProxyModel, index: gen_qabstractitemmodel_types.QModelIndex): gen_qsize_types.QSize {.base.} =
  QConcatenateTablesProxyModelspan(self[], index)
method sibling*(self: VirtualQConcatenateTablesProxyModel, row: cint, column: cint, idx: gen_qabstractitemmodel_types.QModelIndex): gen_qabstractitemmodel_types.QModelIndex {.base.} =
  QConcatenateTablesProxyModelsibling(self[], row, column, idx)
method hasChildren*(self: VirtualQConcatenateTablesProxyModel, parent: gen_qabstractitemmodel_types.QModelIndex): bool {.base.} =
  QConcatenateTablesProxyModelhasChildren(self[], parent)
method setHeaderData*(self: VirtualQConcatenateTablesProxyModel, section: cint, orientation: cint, value: gen_qvariant_types.QVariant, role: cint): bool {.base.} =
  QConcatenateTablesProxyModelsetHeaderData(self[], section, orientation, value, role)
method clearItemData*(self: VirtualQConcatenateTablesProxyModel, index: gen_qabstractitemmodel_types.QModelIndex): bool {.base.} =
  QConcatenateTablesProxyModelclearItemData(self[], index)
method supportedDropActions*(self: VirtualQConcatenateTablesProxyModel): cint {.base.} =
  QConcatenateTablesProxyModelsupportedDropActions(self[])
method supportedDragActions*(self: VirtualQConcatenateTablesProxyModel): cint {.base.} =
  QConcatenateTablesProxyModelsupportedDragActions(self[])
method insertRows*(self: VirtualQConcatenateTablesProxyModel, row: cint, count: cint, parent: gen_qabstractitemmodel_types.QModelIndex): bool {.base.} =
  QConcatenateTablesProxyModelinsertRows(self[], row, count, parent)
method insertColumns*(self: VirtualQConcatenateTablesProxyModel, column: cint, count: cint, parent: gen_qabstractitemmodel_types.QModelIndex): bool {.base.} =
  QConcatenateTablesProxyModelinsertColumns(self[], column, count, parent)
method removeRows*(self: VirtualQConcatenateTablesProxyModel, row: cint, count: cint, parent: gen_qabstractitemmodel_types.QModelIndex): bool {.base.} =
  QConcatenateTablesProxyModelremoveRows(self[], row, count, parent)
method removeColumns*(self: VirtualQConcatenateTablesProxyModel, column: cint, count: cint, parent: gen_qabstractitemmodel_types.QModelIndex): bool {.base.} =
  QConcatenateTablesProxyModelremoveColumns(self[], column, count, parent)
method moveRows*(self: VirtualQConcatenateTablesProxyModel, sourceParent: gen_qabstractitemmodel_types.QModelIndex, sourceRow: cint, count: cint, destinationParent: gen_qabstractitemmodel_types.QModelIndex, destinationChild: cint): bool {.base.} =
  QConcatenateTablesProxyModelmoveRows(self[], sourceParent, sourceRow, count, destinationParent, destinationChild)
method moveColumns*(self: VirtualQConcatenateTablesProxyModel, sourceParent: gen_qabstractitemmodel_types.QModelIndex, sourceColumn: cint, count: cint, destinationParent: gen_qabstractitemmodel_types.QModelIndex, destinationChild: cint): bool {.base.} =
  QConcatenateTablesProxyModelmoveColumns(self[], sourceParent, sourceColumn, count, destinationParent, destinationChild)
method fetchMore*(self: VirtualQConcatenateTablesProxyModel, parent: gen_qabstractitemmodel_types.QModelIndex): void {.base.} =
  QConcatenateTablesProxyModelfetchMore(self[], parent)
method canFetchMore*(self: VirtualQConcatenateTablesProxyModel, parent: gen_qabstractitemmodel_types.QModelIndex): bool {.base.} =
  QConcatenateTablesProxyModelcanFetchMore(self[], parent)
method sort*(self: VirtualQConcatenateTablesProxyModel, column: cint, order: cint): void {.base.} =
  QConcatenateTablesProxyModelsort(self[], column, order)
method buddy*(self: VirtualQConcatenateTablesProxyModel, index: gen_qabstractitemmodel_types.QModelIndex): gen_qabstractitemmodel_types.QModelIndex {.base.} =
  QConcatenateTablesProxyModelbuddy(self[], index)
method match*(self: VirtualQConcatenateTablesProxyModel, start: gen_qabstractitemmodel_types.QModelIndex, role: cint, value: gen_qvariant_types.QVariant, hits: cint, flags: cint): seq[gen_qabstractitemmodel_types.QModelIndex] {.base.} =
  QConcatenateTablesProxyModelmatch(self[], start, role, value, hits, flags)
method roleNames*(self: VirtualQConcatenateTablesProxyModel): Table[cint,seq[byte]] {.base.} =
  QConcatenateTablesProxyModelroleNames(self[])
method multiData*(self: VirtualQConcatenateTablesProxyModel, index: gen_qabstractitemmodel_types.QModelIndex, roleDataSpan: gen_qabstractitemmodel_types.QModelRoleDataSpan): void {.base.} =
  QConcatenateTablesProxyModelmultiData(self[], index, roleDataSpan)
method submit*(self: VirtualQConcatenateTablesProxyModel): bool {.base.} =
  QConcatenateTablesProxyModelsubmit(self[])
method revert*(self: VirtualQConcatenateTablesProxyModel): void {.base.} =
  QConcatenateTablesProxyModelrevert(self[])
method resetInternalData*(self: VirtualQConcatenateTablesProxyModel): void {.base.} =
  QConcatenateTablesProxyModelresetInternalData(self[])
method event*(self: VirtualQConcatenateTablesProxyModel, event: gen_qcoreevent_types.QEvent): bool {.base.} =
  QConcatenateTablesProxyModelevent(self[], event)
method eventFilter*(self: VirtualQConcatenateTablesProxyModel, watched: gen_qobject_types.QObject, event: gen_qcoreevent_types.QEvent): bool {.base.} =
  QConcatenateTablesProxyModeleventFilter(self[], watched, event)
method timerEvent*(self: VirtualQConcatenateTablesProxyModel, event: gen_qcoreevent_types.QTimerEvent): void {.base.} =
  QConcatenateTablesProxyModeltimerEvent(self[], event)
method childEvent*(self: VirtualQConcatenateTablesProxyModel, event: gen_qcoreevent_types.QChildEvent): void {.base.} =
  QConcatenateTablesProxyModelchildEvent(self[], event)
method customEvent*(self: VirtualQConcatenateTablesProxyModel, event: gen_qcoreevent_types.QEvent): void {.base.} =
  QConcatenateTablesProxyModelcustomEvent(self[], event)
method connectNotify*(self: VirtualQConcatenateTablesProxyModel, signal: gen_qmetaobject_types.QMetaMethod): void {.base.} =
  QConcatenateTablesProxyModelconnectNotify(self[], signal)
method disconnectNotify*(self: VirtualQConcatenateTablesProxyModel, signal: gen_qmetaobject_types.QMetaMethod): void {.base.} =
  QConcatenateTablesProxyModeldisconnectNotify(self[], signal)

proc fcQConcatenateTablesProxyModel_method_callback_metaObject(self: pointer): pointer {.cdecl.} =
  let inst = cast[VirtualQConcatenateTablesProxyModel](fcQConcatenateTablesProxyModel_vdata(self))
  var virtualReturn = inst.metaObject()
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc fcQConcatenateTablesProxyModel_method_callback_metacast(self: pointer, param1: cstring): pointer {.cdecl.} =
  let inst = cast[VirtualQConcatenateTablesProxyModel](fcQConcatenateTablesProxyModel_vdata(self))
  let slotval1 = (param1)
  var virtualReturn = inst.metacast(slotval1)
  virtualReturn

proc fcQConcatenateTablesProxyModel_method_callback_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.cdecl.} =
  let inst = cast[VirtualQConcatenateTablesProxyModel](fcQConcatenateTablesProxyModel_vdata(self))
  let slotval1 = cint(param1)
  let slotval2 = param2
  let slotval3 = param3
  var virtualReturn = inst.metacall(slotval1, slotval2, slotval3)
  virtualReturn

proc fcQConcatenateTablesProxyModel_method_callback_data(self: pointer, index: pointer, role: cint): pointer {.cdecl.} =
  let inst = cast[VirtualQConcatenateTablesProxyModel](fcQConcatenateTablesProxyModel_vdata(self))
  let slotval1 = gen_qabstractitemmodel_types.QModelIndex(h: index, owned: false)
  let slotval2 = role
  var virtualReturn = inst.data(slotval1, slotval2)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc fcQConcatenateTablesProxyModel_method_callback_setData(self: pointer, index: pointer, value: pointer, role: cint): bool {.cdecl.} =
  let inst = cast[VirtualQConcatenateTablesProxyModel](fcQConcatenateTablesProxyModel_vdata(self))
  let slotval1 = gen_qabstractitemmodel_types.QModelIndex(h: index, owned: false)
  let slotval2 = gen_qvariant_types.QVariant(h: value, owned: false)
  let slotval3 = role
  var virtualReturn = inst.setData(slotval1, slotval2, slotval3)
  virtualReturn

proc fcQConcatenateTablesProxyModel_method_callback_itemData(self: pointer, proxyIndex: pointer): struct_miqt_map {.cdecl.} =
  let inst = cast[VirtualQConcatenateTablesProxyModel](fcQConcatenateTablesProxyModel_vdata(self))
  let slotval1 = gen_qabstractitemmodel_types.QModelIndex(h: proxyIndex, owned: false)
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

  struct_miqt_map(len: csize_t(len(virtualReturn)),keys: if len(virtualReturn) == 0: nil else: addr(virtualReturn_Keys_CArray[0]), values: if len(virtualReturn) == 0: nil else: addr(virtualReturn_Values_CArray[0]),)

proc fcQConcatenateTablesProxyModel_method_callback_setItemData(self: pointer, index: pointer, roles: struct_miqt_map): bool {.cdecl.} =
  let inst = cast[VirtualQConcatenateTablesProxyModel](fcQConcatenateTablesProxyModel_vdata(self))
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

proc fcQConcatenateTablesProxyModel_method_callback_flags(self: pointer, index: pointer): cint {.cdecl.} =
  let inst = cast[VirtualQConcatenateTablesProxyModel](fcQConcatenateTablesProxyModel_vdata(self))
  let slotval1 = gen_qabstractitemmodel_types.QModelIndex(h: index, owned: false)
  var virtualReturn = inst.flags(slotval1)
  cint(virtualReturn)

proc fcQConcatenateTablesProxyModel_method_callback_index(self: pointer, row: cint, column: cint, parent: pointer): pointer {.cdecl.} =
  let inst = cast[VirtualQConcatenateTablesProxyModel](fcQConcatenateTablesProxyModel_vdata(self))
  let slotval1 = row
  let slotval2 = column
  let slotval3 = gen_qabstractitemmodel_types.QModelIndex(h: parent, owned: false)
  var virtualReturn = inst.index(slotval1, slotval2, slotval3)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc fcQConcatenateTablesProxyModel_method_callback_parent(self: pointer, index: pointer): pointer {.cdecl.} =
  let inst = cast[VirtualQConcatenateTablesProxyModel](fcQConcatenateTablesProxyModel_vdata(self))
  let slotval1 = gen_qabstractitemmodel_types.QModelIndex(h: index, owned: false)
  var virtualReturn = inst.parent(slotval1)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc fcQConcatenateTablesProxyModel_method_callback_rowCount(self: pointer, parent: pointer): cint {.cdecl.} =
  let inst = cast[VirtualQConcatenateTablesProxyModel](fcQConcatenateTablesProxyModel_vdata(self))
  let slotval1 = gen_qabstractitemmodel_types.QModelIndex(h: parent, owned: false)
  var virtualReturn = inst.rowCount(slotval1)
  virtualReturn

proc fcQConcatenateTablesProxyModel_method_callback_headerData(self: pointer, section: cint, orientation: cint, role: cint): pointer {.cdecl.} =
  let inst = cast[VirtualQConcatenateTablesProxyModel](fcQConcatenateTablesProxyModel_vdata(self))
  let slotval1 = section
  let slotval2 = cint(orientation)
  let slotval3 = role
  var virtualReturn = inst.headerData(slotval1, slotval2, slotval3)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc fcQConcatenateTablesProxyModel_method_callback_columnCount(self: pointer, parent: pointer): cint {.cdecl.} =
  let inst = cast[VirtualQConcatenateTablesProxyModel](fcQConcatenateTablesProxyModel_vdata(self))
  let slotval1 = gen_qabstractitemmodel_types.QModelIndex(h: parent, owned: false)
  var virtualReturn = inst.columnCount(slotval1)
  virtualReturn

proc fcQConcatenateTablesProxyModel_method_callback_mimeTypes(self: pointer): struct_miqt_array {.cdecl.} =
  let inst = cast[VirtualQConcatenateTablesProxyModel](fcQConcatenateTablesProxyModel_vdata(self))
  var virtualReturn = inst.mimeTypes()
  var virtualReturn_CArray = cast[ptr UncheckedArray[struct_miqt_string]](if len(virtualReturn) > 0: c_malloc(c_sizet(sizeof(struct_miqt_string) * len(virtualReturn))) else: nil)
  for i in 0..<len(virtualReturn):
    var virtualReturn_i_copy = cast[cstring](if len(virtualReturn[i]) > 0: c_malloc(csize_t(len(virtualReturn[i]))) else: nil)
    if len(virtualReturn[i]) > 0: copyMem(cast[pointer](virtualReturn_i_copy), addr virtualReturn[i][0], csize_t(len(virtualReturn[i])))
    virtualReturn_CArray[i] = struct_miqt_string(data: virtualReturn_i_copy, len: csize_t(len(virtualReturn[i])))

  struct_miqt_array(len: csize_t(len(virtualReturn)), data: if len(virtualReturn) == 0: nil else: addr(virtualReturn_CArray[0]))

proc fcQConcatenateTablesProxyModel_method_callback_mimeData(self: pointer, indexes: struct_miqt_array): pointer {.cdecl.} =
  let inst = cast[VirtualQConcatenateTablesProxyModel](fcQConcatenateTablesProxyModel_vdata(self))
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

proc fcQConcatenateTablesProxyModel_method_callback_canDropMimeData(self: pointer, data: pointer, action: cint, row: cint, column: cint, parent: pointer): bool {.cdecl.} =
  let inst = cast[VirtualQConcatenateTablesProxyModel](fcQConcatenateTablesProxyModel_vdata(self))
  let slotval1 = gen_qmimedata_types.QMimeData(h: data, owned: false)
  let slotval2 = cint(action)
  let slotval3 = row
  let slotval4 = column
  let slotval5 = gen_qabstractitemmodel_types.QModelIndex(h: parent, owned: false)
  var virtualReturn = inst.canDropMimeData(slotval1, slotval2, slotval3, slotval4, slotval5)
  virtualReturn

proc fcQConcatenateTablesProxyModel_method_callback_dropMimeData(self: pointer, data: pointer, action: cint, row: cint, column: cint, parent: pointer): bool {.cdecl.} =
  let inst = cast[VirtualQConcatenateTablesProxyModel](fcQConcatenateTablesProxyModel_vdata(self))
  let slotval1 = gen_qmimedata_types.QMimeData(h: data, owned: false)
  let slotval2 = cint(action)
  let slotval3 = row
  let slotval4 = column
  let slotval5 = gen_qabstractitemmodel_types.QModelIndex(h: parent, owned: false)
  var virtualReturn = inst.dropMimeData(slotval1, slotval2, slotval3, slotval4, slotval5)
  virtualReturn

proc fcQConcatenateTablesProxyModel_method_callback_span(self: pointer, index: pointer): pointer {.cdecl.} =
  let inst = cast[VirtualQConcatenateTablesProxyModel](fcQConcatenateTablesProxyModel_vdata(self))
  let slotval1 = gen_qabstractitemmodel_types.QModelIndex(h: index, owned: false)
  var virtualReturn = inst.span(slotval1)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc fcQConcatenateTablesProxyModel_method_callback_sibling(self: pointer, row: cint, column: cint, idx: pointer): pointer {.cdecl.} =
  let inst = cast[VirtualQConcatenateTablesProxyModel](fcQConcatenateTablesProxyModel_vdata(self))
  let slotval1 = row
  let slotval2 = column
  let slotval3 = gen_qabstractitemmodel_types.QModelIndex(h: idx, owned: false)
  var virtualReturn = inst.sibling(slotval1, slotval2, slotval3)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc fcQConcatenateTablesProxyModel_method_callback_hasChildren(self: pointer, parent: pointer): bool {.cdecl.} =
  let inst = cast[VirtualQConcatenateTablesProxyModel](fcQConcatenateTablesProxyModel_vdata(self))
  let slotval1 = gen_qabstractitemmodel_types.QModelIndex(h: parent, owned: false)
  var virtualReturn = inst.hasChildren(slotval1)
  virtualReturn

proc fcQConcatenateTablesProxyModel_method_callback_setHeaderData(self: pointer, section: cint, orientation: cint, value: pointer, role: cint): bool {.cdecl.} =
  let inst = cast[VirtualQConcatenateTablesProxyModel](fcQConcatenateTablesProxyModel_vdata(self))
  let slotval1 = section
  let slotval2 = cint(orientation)
  let slotval3 = gen_qvariant_types.QVariant(h: value, owned: false)
  let slotval4 = role
  var virtualReturn = inst.setHeaderData(slotval1, slotval2, slotval3, slotval4)
  virtualReturn

proc fcQConcatenateTablesProxyModel_method_callback_clearItemData(self: pointer, index: pointer): bool {.cdecl.} =
  let inst = cast[VirtualQConcatenateTablesProxyModel](fcQConcatenateTablesProxyModel_vdata(self))
  let slotval1 = gen_qabstractitemmodel_types.QModelIndex(h: index, owned: false)
  var virtualReturn = inst.clearItemData(slotval1)
  virtualReturn

proc fcQConcatenateTablesProxyModel_method_callback_supportedDropActions(self: pointer): cint {.cdecl.} =
  let inst = cast[VirtualQConcatenateTablesProxyModel](fcQConcatenateTablesProxyModel_vdata(self))
  var virtualReturn = inst.supportedDropActions()
  cint(virtualReturn)

proc fcQConcatenateTablesProxyModel_method_callback_supportedDragActions(self: pointer): cint {.cdecl.} =
  let inst = cast[VirtualQConcatenateTablesProxyModel](fcQConcatenateTablesProxyModel_vdata(self))
  var virtualReturn = inst.supportedDragActions()
  cint(virtualReturn)

proc fcQConcatenateTablesProxyModel_method_callback_insertRows(self: pointer, row: cint, count: cint, parent: pointer): bool {.cdecl.} =
  let inst = cast[VirtualQConcatenateTablesProxyModel](fcQConcatenateTablesProxyModel_vdata(self))
  let slotval1 = row
  let slotval2 = count
  let slotval3 = gen_qabstractitemmodel_types.QModelIndex(h: parent, owned: false)
  var virtualReturn = inst.insertRows(slotval1, slotval2, slotval3)
  virtualReturn

proc fcQConcatenateTablesProxyModel_method_callback_insertColumns(self: pointer, column: cint, count: cint, parent: pointer): bool {.cdecl.} =
  let inst = cast[VirtualQConcatenateTablesProxyModel](fcQConcatenateTablesProxyModel_vdata(self))
  let slotval1 = column
  let slotval2 = count
  let slotval3 = gen_qabstractitemmodel_types.QModelIndex(h: parent, owned: false)
  var virtualReturn = inst.insertColumns(slotval1, slotval2, slotval3)
  virtualReturn

proc fcQConcatenateTablesProxyModel_method_callback_removeRows(self: pointer, row: cint, count: cint, parent: pointer): bool {.cdecl.} =
  let inst = cast[VirtualQConcatenateTablesProxyModel](fcQConcatenateTablesProxyModel_vdata(self))
  let slotval1 = row
  let slotval2 = count
  let slotval3 = gen_qabstractitemmodel_types.QModelIndex(h: parent, owned: false)
  var virtualReturn = inst.removeRows(slotval1, slotval2, slotval3)
  virtualReturn

proc fcQConcatenateTablesProxyModel_method_callback_removeColumns(self: pointer, column: cint, count: cint, parent: pointer): bool {.cdecl.} =
  let inst = cast[VirtualQConcatenateTablesProxyModel](fcQConcatenateTablesProxyModel_vdata(self))
  let slotval1 = column
  let slotval2 = count
  let slotval3 = gen_qabstractitemmodel_types.QModelIndex(h: parent, owned: false)
  var virtualReturn = inst.removeColumns(slotval1, slotval2, slotval3)
  virtualReturn

proc fcQConcatenateTablesProxyModel_method_callback_moveRows(self: pointer, sourceParent: pointer, sourceRow: cint, count: cint, destinationParent: pointer, destinationChild: cint): bool {.cdecl.} =
  let inst = cast[VirtualQConcatenateTablesProxyModel](fcQConcatenateTablesProxyModel_vdata(self))
  let slotval1 = gen_qabstractitemmodel_types.QModelIndex(h: sourceParent, owned: false)
  let slotval2 = sourceRow
  let slotval3 = count
  let slotval4 = gen_qabstractitemmodel_types.QModelIndex(h: destinationParent, owned: false)
  let slotval5 = destinationChild
  var virtualReturn = inst.moveRows(slotval1, slotval2, slotval3, slotval4, slotval5)
  virtualReturn

proc fcQConcatenateTablesProxyModel_method_callback_moveColumns(self: pointer, sourceParent: pointer, sourceColumn: cint, count: cint, destinationParent: pointer, destinationChild: cint): bool {.cdecl.} =
  let inst = cast[VirtualQConcatenateTablesProxyModel](fcQConcatenateTablesProxyModel_vdata(self))
  let slotval1 = gen_qabstractitemmodel_types.QModelIndex(h: sourceParent, owned: false)
  let slotval2 = sourceColumn
  let slotval3 = count
  let slotval4 = gen_qabstractitemmodel_types.QModelIndex(h: destinationParent, owned: false)
  let slotval5 = destinationChild
  var virtualReturn = inst.moveColumns(slotval1, slotval2, slotval3, slotval4, slotval5)
  virtualReturn

proc fcQConcatenateTablesProxyModel_method_callback_fetchMore(self: pointer, parent: pointer): void {.cdecl.} =
  let inst = cast[VirtualQConcatenateTablesProxyModel](fcQConcatenateTablesProxyModel_vdata(self))
  let slotval1 = gen_qabstractitemmodel_types.QModelIndex(h: parent, owned: false)
  inst.fetchMore(slotval1)

proc fcQConcatenateTablesProxyModel_method_callback_canFetchMore(self: pointer, parent: pointer): bool {.cdecl.} =
  let inst = cast[VirtualQConcatenateTablesProxyModel](fcQConcatenateTablesProxyModel_vdata(self))
  let slotval1 = gen_qabstractitemmodel_types.QModelIndex(h: parent, owned: false)
  var virtualReturn = inst.canFetchMore(slotval1)
  virtualReturn

proc fcQConcatenateTablesProxyModel_method_callback_sort(self: pointer, column: cint, order: cint): void {.cdecl.} =
  let inst = cast[VirtualQConcatenateTablesProxyModel](fcQConcatenateTablesProxyModel_vdata(self))
  let slotval1 = column
  let slotval2 = cint(order)
  inst.sort(slotval1, slotval2)

proc fcQConcatenateTablesProxyModel_method_callback_buddy(self: pointer, index: pointer): pointer {.cdecl.} =
  let inst = cast[VirtualQConcatenateTablesProxyModel](fcQConcatenateTablesProxyModel_vdata(self))
  let slotval1 = gen_qabstractitemmodel_types.QModelIndex(h: index, owned: false)
  var virtualReturn = inst.buddy(slotval1)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc fcQConcatenateTablesProxyModel_method_callback_match(self: pointer, start: pointer, role: cint, value: pointer, hits: cint, flags: cint): struct_miqt_array {.cdecl.} =
  let inst = cast[VirtualQConcatenateTablesProxyModel](fcQConcatenateTablesProxyModel_vdata(self))
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

  struct_miqt_array(len: csize_t(len(virtualReturn)), data: if len(virtualReturn) == 0: nil else: addr(virtualReturn_CArray[0]))

proc fcQConcatenateTablesProxyModel_method_callback_roleNames(self: pointer): struct_miqt_map {.cdecl.} =
  let inst = cast[VirtualQConcatenateTablesProxyModel](fcQConcatenateTablesProxyModel_vdata(self))
  var virtualReturn = inst.roleNames()
  var virtualReturn_Keys_CArray = cast[ptr UncheckedArray[cint]](if len(virtualReturn) > 0: c_malloc(csize_t(sizeof(cint) * len(virtualReturn))) else: nil)
  var virtualReturn_Values_CArray = cast[ptr UncheckedArray[struct_miqt_string]](if len(virtualReturn) > 0: c_malloc(csize_t(sizeof(struct_miqt_string) * len(virtualReturn))) else: nil)
  var virtualReturn_ctr = 0
  for virtualReturn_k in virtualReturn.keys():
    virtualReturn_Keys_CArray[virtualReturn_ctr] = virtualReturn_k
    virtualReturn_ctr += 1
  virtualReturn_ctr = 0
  for virtualReturn_v in virtualReturn.mvalues():
    var virtualReturn_v_copy = cast[cstring](if len(virtualReturn_v) > 0: c_malloc(csize_t(len(virtualReturn_v))) else: nil)
    if len(virtualReturn_v) > 0: copyMem(cast[pointer](virtualReturn_v_copy), addr virtualReturn_v[0], csize_t(len(virtualReturn_v)))
    virtualReturn_Values_CArray[virtualReturn_ctr] = struct_miqt_string(data: virtualReturn_v_copy, len: csize_t(len(virtualReturn_v)))
    virtualReturn_ctr += 1

  struct_miqt_map(len: csize_t(len(virtualReturn)),keys: if len(virtualReturn) == 0: nil else: addr(virtualReturn_Keys_CArray[0]), values: if len(virtualReturn) == 0: nil else: addr(virtualReturn_Values_CArray[0]),)

proc fcQConcatenateTablesProxyModel_method_callback_multiData(self: pointer, index: pointer, roleDataSpan: pointer): void {.cdecl.} =
  let inst = cast[VirtualQConcatenateTablesProxyModel](fcQConcatenateTablesProxyModel_vdata(self))
  let slotval1 = gen_qabstractitemmodel_types.QModelIndex(h: index, owned: false)
  let slotval2 = gen_qabstractitemmodel_types.QModelRoleDataSpan(h: roleDataSpan, owned: true)
  inst.multiData(slotval1, slotval2)

proc fcQConcatenateTablesProxyModel_method_callback_submit(self: pointer): bool {.cdecl.} =
  let inst = cast[VirtualQConcatenateTablesProxyModel](fcQConcatenateTablesProxyModel_vdata(self))
  var virtualReturn = inst.submit()
  virtualReturn

proc fcQConcatenateTablesProxyModel_method_callback_revert(self: pointer): void {.cdecl.} =
  let inst = cast[VirtualQConcatenateTablesProxyModel](fcQConcatenateTablesProxyModel_vdata(self))
  inst.revert()

proc fcQConcatenateTablesProxyModel_method_callback_resetInternalData(self: pointer): void {.cdecl.} =
  let inst = cast[VirtualQConcatenateTablesProxyModel](fcQConcatenateTablesProxyModel_vdata(self))
  inst.resetInternalData()

proc fcQConcatenateTablesProxyModel_method_callback_event(self: pointer, event: pointer): bool {.cdecl.} =
  let inst = cast[VirtualQConcatenateTablesProxyModel](fcQConcatenateTablesProxyModel_vdata(self))
  let slotval1 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  var virtualReturn = inst.event(slotval1)
  virtualReturn

proc fcQConcatenateTablesProxyModel_method_callback_eventFilter(self: pointer, watched: pointer, event: pointer): bool {.cdecl.} =
  let inst = cast[VirtualQConcatenateTablesProxyModel](fcQConcatenateTablesProxyModel_vdata(self))
  let slotval1 = gen_qobject_types.QObject(h: watched, owned: false)
  let slotval2 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  var virtualReturn = inst.eventFilter(slotval1, slotval2)
  virtualReturn

proc fcQConcatenateTablesProxyModel_method_callback_timerEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQConcatenateTablesProxyModel](fcQConcatenateTablesProxyModel_vdata(self))
  let slotval1 = gen_qcoreevent_types.QTimerEvent(h: event, owned: false)
  inst.timerEvent(slotval1)

proc fcQConcatenateTablesProxyModel_method_callback_childEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQConcatenateTablesProxyModel](fcQConcatenateTablesProxyModel_vdata(self))
  let slotval1 = gen_qcoreevent_types.QChildEvent(h: event, owned: false)
  inst.childEvent(slotval1)

proc fcQConcatenateTablesProxyModel_method_callback_customEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQConcatenateTablesProxyModel](fcQConcatenateTablesProxyModel_vdata(self))
  let slotval1 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  inst.customEvent(slotval1)

proc fcQConcatenateTablesProxyModel_method_callback_connectNotify(self: pointer, signal: pointer): void {.cdecl.} =
  let inst = cast[VirtualQConcatenateTablesProxyModel](fcQConcatenateTablesProxyModel_vdata(self))
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal, owned: false)
  inst.connectNotify(slotval1)

proc fcQConcatenateTablesProxyModel_method_callback_disconnectNotify(self: pointer, signal: pointer): void {.cdecl.} =
  let inst = cast[VirtualQConcatenateTablesProxyModel](fcQConcatenateTablesProxyModel_vdata(self))
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal, owned: false)
  inst.disconnectNotify(slotval1)


proc createIndex*(self: gen_qconcatenatetablesproxymodel_types.QConcatenateTablesProxyModel, row: cint, column: cint): gen_qabstractitemmodel_types.QModelIndex =
  gen_qabstractitemmodel_types.QModelIndex(h: fcQConcatenateTablesProxyModel_protectedbase_createIndex(self.h, row, column), owned: true)

proc encodeData*(self: gen_qconcatenatetablesproxymodel_types.QConcatenateTablesProxyModel, indexes: openArray[gen_qabstractitemmodel_types.QModelIndex], stream: gen_qdatastream_types.QDataStream): void =
  var indexes_CArray = newSeq[pointer](len(indexes))
  for i in 0..<len(indexes):
    indexes_CArray[i] = indexes[i].h

  fcQConcatenateTablesProxyModel_protectedbase_encodeData(self.h, struct_miqt_array(len: csize_t(len(indexes)), data: if len(indexes) == 0: nil else: addr(indexes_CArray[0])), stream.h)

proc decodeData*(self: gen_qconcatenatetablesproxymodel_types.QConcatenateTablesProxyModel, row: cint, column: cint, parent: gen_qabstractitemmodel_types.QModelIndex, stream: gen_qdatastream_types.QDataStream): bool =
  fcQConcatenateTablesProxyModel_protectedbase_decodeData(self.h, row, column, parent.h, stream.h)

proc beginInsertRows*(self: gen_qconcatenatetablesproxymodel_types.QConcatenateTablesProxyModel, parent: gen_qabstractitemmodel_types.QModelIndex, first: cint, last: cint): void =
  fcQConcatenateTablesProxyModel_protectedbase_beginInsertRows(self.h, parent.h, first, last)

proc endInsertRows*(self: gen_qconcatenatetablesproxymodel_types.QConcatenateTablesProxyModel): void =
  fcQConcatenateTablesProxyModel_protectedbase_endInsertRows(self.h)

proc beginRemoveRows*(self: gen_qconcatenatetablesproxymodel_types.QConcatenateTablesProxyModel, parent: gen_qabstractitemmodel_types.QModelIndex, first: cint, last: cint): void =
  fcQConcatenateTablesProxyModel_protectedbase_beginRemoveRows(self.h, parent.h, first, last)

proc endRemoveRows*(self: gen_qconcatenatetablesproxymodel_types.QConcatenateTablesProxyModel): void =
  fcQConcatenateTablesProxyModel_protectedbase_endRemoveRows(self.h)

proc beginMoveRows*(self: gen_qconcatenatetablesproxymodel_types.QConcatenateTablesProxyModel, sourceParent: gen_qabstractitemmodel_types.QModelIndex, sourceFirst: cint, sourceLast: cint, destinationParent: gen_qabstractitemmodel_types.QModelIndex, destinationRow: cint): bool =
  fcQConcatenateTablesProxyModel_protectedbase_beginMoveRows(self.h, sourceParent.h, sourceFirst, sourceLast, destinationParent.h, destinationRow)

proc endMoveRows*(self: gen_qconcatenatetablesproxymodel_types.QConcatenateTablesProxyModel): void =
  fcQConcatenateTablesProxyModel_protectedbase_endMoveRows(self.h)

proc beginInsertColumns*(self: gen_qconcatenatetablesproxymodel_types.QConcatenateTablesProxyModel, parent: gen_qabstractitemmodel_types.QModelIndex, first: cint, last: cint): void =
  fcQConcatenateTablesProxyModel_protectedbase_beginInsertColumns(self.h, parent.h, first, last)

proc endInsertColumns*(self: gen_qconcatenatetablesproxymodel_types.QConcatenateTablesProxyModel): void =
  fcQConcatenateTablesProxyModel_protectedbase_endInsertColumns(self.h)

proc beginRemoveColumns*(self: gen_qconcatenatetablesproxymodel_types.QConcatenateTablesProxyModel, parent: gen_qabstractitemmodel_types.QModelIndex, first: cint, last: cint): void =
  fcQConcatenateTablesProxyModel_protectedbase_beginRemoveColumns(self.h, parent.h, first, last)

proc endRemoveColumns*(self: gen_qconcatenatetablesproxymodel_types.QConcatenateTablesProxyModel): void =
  fcQConcatenateTablesProxyModel_protectedbase_endRemoveColumns(self.h)

proc beginMoveColumns*(self: gen_qconcatenatetablesproxymodel_types.QConcatenateTablesProxyModel, sourceParent: gen_qabstractitemmodel_types.QModelIndex, sourceFirst: cint, sourceLast: cint, destinationParent: gen_qabstractitemmodel_types.QModelIndex, destinationColumn: cint): bool =
  fcQConcatenateTablesProxyModel_protectedbase_beginMoveColumns(self.h, sourceParent.h, sourceFirst, sourceLast, destinationParent.h, destinationColumn)

proc endMoveColumns*(self: gen_qconcatenatetablesproxymodel_types.QConcatenateTablesProxyModel): void =
  fcQConcatenateTablesProxyModel_protectedbase_endMoveColumns(self.h)

proc beginResetModel*(self: gen_qconcatenatetablesproxymodel_types.QConcatenateTablesProxyModel): void =
  fcQConcatenateTablesProxyModel_protectedbase_beginResetModel(self.h)

proc endResetModel*(self: gen_qconcatenatetablesproxymodel_types.QConcatenateTablesProxyModel): void =
  fcQConcatenateTablesProxyModel_protectedbase_endResetModel(self.h)

proc changePersistentIndex*(self: gen_qconcatenatetablesproxymodel_types.QConcatenateTablesProxyModel, fromVal: gen_qabstractitemmodel_types.QModelIndex, to: gen_qabstractitemmodel_types.QModelIndex): void =
  fcQConcatenateTablesProxyModel_protectedbase_changePersistentIndex(self.h, fromVal.h, to.h)

proc changePersistentIndexList*(self: gen_qconcatenatetablesproxymodel_types.QConcatenateTablesProxyModel, fromVal: openArray[gen_qabstractitemmodel_types.QModelIndex], to: openArray[gen_qabstractitemmodel_types.QModelIndex]): void =
  var fromVal_CArray = newSeq[pointer](len(fromVal))
  for i in 0..<len(fromVal):
    fromVal_CArray[i] = fromVal[i].h

  var to_CArray = newSeq[pointer](len(to))
  for i in 0..<len(to):
    to_CArray[i] = to[i].h

  fcQConcatenateTablesProxyModel_protectedbase_changePersistentIndexList(self.h, struct_miqt_array(len: csize_t(len(fromVal)), data: if len(fromVal) == 0: nil else: addr(fromVal_CArray[0])), struct_miqt_array(len: csize_t(len(to)), data: if len(to) == 0: nil else: addr(to_CArray[0])))

proc persistentIndexList*(self: gen_qconcatenatetablesproxymodel_types.QConcatenateTablesProxyModel): seq[gen_qabstractitemmodel_types.QModelIndex] =
  var v_ma = fcQConcatenateTablesProxyModel_protectedbase_persistentIndexList(self.h)
  var vx_ret = newSeq[gen_qabstractitemmodel_types.QModelIndex](int(v_ma.len))
  let v_outCast = cast[ptr UncheckedArray[pointer]](v_ma.data)
  for i in 0 ..< v_ma.len:
    vx_ret[i] = gen_qabstractitemmodel_types.QModelIndex(h: v_outCast[i], owned: true)
  c_free(v_ma.data)
  vx_ret

proc sender*(self: gen_qconcatenatetablesproxymodel_types.QConcatenateTablesProxyModel): gen_qobject_types.QObject =
  gen_qobject_types.QObject(h: fcQConcatenateTablesProxyModel_protectedbase_sender(self.h), owned: false)

proc senderSignalIndex*(self: gen_qconcatenatetablesproxymodel_types.QConcatenateTablesProxyModel): cint =
  fcQConcatenateTablesProxyModel_protectedbase_senderSignalIndex(self.h)

proc receivers*(self: gen_qconcatenatetablesproxymodel_types.QConcatenateTablesProxyModel, signal: cstring): cint =
  fcQConcatenateTablesProxyModel_protectedbase_receivers(self.h, signal)

proc isSignalConnected*(self: gen_qconcatenatetablesproxymodel_types.QConcatenateTablesProxyModel, signal: gen_qmetaobject_types.QMetaMethod): bool =
  fcQConcatenateTablesProxyModel_protectedbase_isSignalConnected(self.h, signal.h)

proc create*(T: type gen_qconcatenatetablesproxymodel_types.QConcatenateTablesProxyModel,
    vtbl: ref QConcatenateTablesProxyModelVTable = nil): gen_qconcatenatetablesproxymodel_types.QConcatenateTablesProxyModel =
  let vtbl = if vtbl == nil: new QConcatenateTablesProxyModelVTable else: vtbl
  GC_ref(vtbl)
  vtbl[].vtbl.destructor = proc(self: pointer) {.cdecl.} =
    let vtbl = cast[ref QConcatenateTablesProxyModelVTable](fcQConcatenateTablesProxyModel_vdata(self))
    GC_unref(vtbl)
  if not isNil(vtbl[].metaObject):
    vtbl[].vtbl.metaObject = fcQConcatenateTablesProxyModel_vtable_callback_metaObject
  if not isNil(vtbl[].metacast):
    vtbl[].vtbl.metacast = fcQConcatenateTablesProxyModel_vtable_callback_metacast
  if not isNil(vtbl[].metacall):
    vtbl[].vtbl.metacall = fcQConcatenateTablesProxyModel_vtable_callback_metacall
  if not isNil(vtbl[].data):
    vtbl[].vtbl.data = fcQConcatenateTablesProxyModel_vtable_callback_data
  if not isNil(vtbl[].setData):
    vtbl[].vtbl.setData = fcQConcatenateTablesProxyModel_vtable_callback_setData
  if not isNil(vtbl[].itemData):
    vtbl[].vtbl.itemData = fcQConcatenateTablesProxyModel_vtable_callback_itemData
  if not isNil(vtbl[].setItemData):
    vtbl[].vtbl.setItemData = fcQConcatenateTablesProxyModel_vtable_callback_setItemData
  if not isNil(vtbl[].flags):
    vtbl[].vtbl.flags = fcQConcatenateTablesProxyModel_vtable_callback_flags
  if not isNil(vtbl[].index):
    vtbl[].vtbl.index = fcQConcatenateTablesProxyModel_vtable_callback_index
  if not isNil(vtbl[].parent):
    vtbl[].vtbl.parent = fcQConcatenateTablesProxyModel_vtable_callback_parent
  if not isNil(vtbl[].rowCount):
    vtbl[].vtbl.rowCount = fcQConcatenateTablesProxyModel_vtable_callback_rowCount
  if not isNil(vtbl[].headerData):
    vtbl[].vtbl.headerData = fcQConcatenateTablesProxyModel_vtable_callback_headerData
  if not isNil(vtbl[].columnCount):
    vtbl[].vtbl.columnCount = fcQConcatenateTablesProxyModel_vtable_callback_columnCount
  if not isNil(vtbl[].mimeTypes):
    vtbl[].vtbl.mimeTypes = fcQConcatenateTablesProxyModel_vtable_callback_mimeTypes
  if not isNil(vtbl[].mimeData):
    vtbl[].vtbl.mimeData = fcQConcatenateTablesProxyModel_vtable_callback_mimeData
  if not isNil(vtbl[].canDropMimeData):
    vtbl[].vtbl.canDropMimeData = fcQConcatenateTablesProxyModel_vtable_callback_canDropMimeData
  if not isNil(vtbl[].dropMimeData):
    vtbl[].vtbl.dropMimeData = fcQConcatenateTablesProxyModel_vtable_callback_dropMimeData
  if not isNil(vtbl[].span):
    vtbl[].vtbl.span = fcQConcatenateTablesProxyModel_vtable_callback_span
  if not isNil(vtbl[].sibling):
    vtbl[].vtbl.sibling = fcQConcatenateTablesProxyModel_vtable_callback_sibling
  if not isNil(vtbl[].hasChildren):
    vtbl[].vtbl.hasChildren = fcQConcatenateTablesProxyModel_vtable_callback_hasChildren
  if not isNil(vtbl[].setHeaderData):
    vtbl[].vtbl.setHeaderData = fcQConcatenateTablesProxyModel_vtable_callback_setHeaderData
  if not isNil(vtbl[].clearItemData):
    vtbl[].vtbl.clearItemData = fcQConcatenateTablesProxyModel_vtable_callback_clearItemData
  if not isNil(vtbl[].supportedDropActions):
    vtbl[].vtbl.supportedDropActions = fcQConcatenateTablesProxyModel_vtable_callback_supportedDropActions
  if not isNil(vtbl[].supportedDragActions):
    vtbl[].vtbl.supportedDragActions = fcQConcatenateTablesProxyModel_vtable_callback_supportedDragActions
  if not isNil(vtbl[].insertRows):
    vtbl[].vtbl.insertRows = fcQConcatenateTablesProxyModel_vtable_callback_insertRows
  if not isNil(vtbl[].insertColumns):
    vtbl[].vtbl.insertColumns = fcQConcatenateTablesProxyModel_vtable_callback_insertColumns
  if not isNil(vtbl[].removeRows):
    vtbl[].vtbl.removeRows = fcQConcatenateTablesProxyModel_vtable_callback_removeRows
  if not isNil(vtbl[].removeColumns):
    vtbl[].vtbl.removeColumns = fcQConcatenateTablesProxyModel_vtable_callback_removeColumns
  if not isNil(vtbl[].moveRows):
    vtbl[].vtbl.moveRows = fcQConcatenateTablesProxyModel_vtable_callback_moveRows
  if not isNil(vtbl[].moveColumns):
    vtbl[].vtbl.moveColumns = fcQConcatenateTablesProxyModel_vtable_callback_moveColumns
  if not isNil(vtbl[].fetchMore):
    vtbl[].vtbl.fetchMore = fcQConcatenateTablesProxyModel_vtable_callback_fetchMore
  if not isNil(vtbl[].canFetchMore):
    vtbl[].vtbl.canFetchMore = fcQConcatenateTablesProxyModel_vtable_callback_canFetchMore
  if not isNil(vtbl[].sort):
    vtbl[].vtbl.sort = fcQConcatenateTablesProxyModel_vtable_callback_sort
  if not isNil(vtbl[].buddy):
    vtbl[].vtbl.buddy = fcQConcatenateTablesProxyModel_vtable_callback_buddy
  if not isNil(vtbl[].match):
    vtbl[].vtbl.match = fcQConcatenateTablesProxyModel_vtable_callback_match
  if not isNil(vtbl[].roleNames):
    vtbl[].vtbl.roleNames = fcQConcatenateTablesProxyModel_vtable_callback_roleNames
  if not isNil(vtbl[].multiData):
    vtbl[].vtbl.multiData = fcQConcatenateTablesProxyModel_vtable_callback_multiData
  if not isNil(vtbl[].submit):
    vtbl[].vtbl.submit = fcQConcatenateTablesProxyModel_vtable_callback_submit
  if not isNil(vtbl[].revert):
    vtbl[].vtbl.revert = fcQConcatenateTablesProxyModel_vtable_callback_revert
  if not isNil(vtbl[].resetInternalData):
    vtbl[].vtbl.resetInternalData = fcQConcatenateTablesProxyModel_vtable_callback_resetInternalData
  if not isNil(vtbl[].event):
    vtbl[].vtbl.event = fcQConcatenateTablesProxyModel_vtable_callback_event
  if not isNil(vtbl[].eventFilter):
    vtbl[].vtbl.eventFilter = fcQConcatenateTablesProxyModel_vtable_callback_eventFilter
  if not isNil(vtbl[].timerEvent):
    vtbl[].vtbl.timerEvent = fcQConcatenateTablesProxyModel_vtable_callback_timerEvent
  if not isNil(vtbl[].childEvent):
    vtbl[].vtbl.childEvent = fcQConcatenateTablesProxyModel_vtable_callback_childEvent
  if not isNil(vtbl[].customEvent):
    vtbl[].vtbl.customEvent = fcQConcatenateTablesProxyModel_vtable_callback_customEvent
  if not isNil(vtbl[].connectNotify):
    vtbl[].vtbl.connectNotify = fcQConcatenateTablesProxyModel_vtable_callback_connectNotify
  if not isNil(vtbl[].disconnectNotify):
    vtbl[].vtbl.disconnectNotify = fcQConcatenateTablesProxyModel_vtable_callback_disconnectNotify
  gen_qconcatenatetablesproxymodel_types.QConcatenateTablesProxyModel(h: fcQConcatenateTablesProxyModel_new(addr(vtbl[].vtbl), addr(vtbl[])), owned: true)

proc create*(T: type gen_qconcatenatetablesproxymodel_types.QConcatenateTablesProxyModel,
    parent: gen_qobject_types.QObject,
    vtbl: ref QConcatenateTablesProxyModelVTable = nil): gen_qconcatenatetablesproxymodel_types.QConcatenateTablesProxyModel =
  let vtbl = if vtbl == nil: new QConcatenateTablesProxyModelVTable else: vtbl
  GC_ref(vtbl)
  vtbl[].vtbl.destructor = proc(self: pointer) {.cdecl.} =
    let vtbl = cast[ref QConcatenateTablesProxyModelVTable](fcQConcatenateTablesProxyModel_vdata(self))
    GC_unref(vtbl)
  if not isNil(vtbl[].metaObject):
    vtbl[].vtbl.metaObject = fcQConcatenateTablesProxyModel_vtable_callback_metaObject
  if not isNil(vtbl[].metacast):
    vtbl[].vtbl.metacast = fcQConcatenateTablesProxyModel_vtable_callback_metacast
  if not isNil(vtbl[].metacall):
    vtbl[].vtbl.metacall = fcQConcatenateTablesProxyModel_vtable_callback_metacall
  if not isNil(vtbl[].data):
    vtbl[].vtbl.data = fcQConcatenateTablesProxyModel_vtable_callback_data
  if not isNil(vtbl[].setData):
    vtbl[].vtbl.setData = fcQConcatenateTablesProxyModel_vtable_callback_setData
  if not isNil(vtbl[].itemData):
    vtbl[].vtbl.itemData = fcQConcatenateTablesProxyModel_vtable_callback_itemData
  if not isNil(vtbl[].setItemData):
    vtbl[].vtbl.setItemData = fcQConcatenateTablesProxyModel_vtable_callback_setItemData
  if not isNil(vtbl[].flags):
    vtbl[].vtbl.flags = fcQConcatenateTablesProxyModel_vtable_callback_flags
  if not isNil(vtbl[].index):
    vtbl[].vtbl.index = fcQConcatenateTablesProxyModel_vtable_callback_index
  if not isNil(vtbl[].parent):
    vtbl[].vtbl.parent = fcQConcatenateTablesProxyModel_vtable_callback_parent
  if not isNil(vtbl[].rowCount):
    vtbl[].vtbl.rowCount = fcQConcatenateTablesProxyModel_vtable_callback_rowCount
  if not isNil(vtbl[].headerData):
    vtbl[].vtbl.headerData = fcQConcatenateTablesProxyModel_vtable_callback_headerData
  if not isNil(vtbl[].columnCount):
    vtbl[].vtbl.columnCount = fcQConcatenateTablesProxyModel_vtable_callback_columnCount
  if not isNil(vtbl[].mimeTypes):
    vtbl[].vtbl.mimeTypes = fcQConcatenateTablesProxyModel_vtable_callback_mimeTypes
  if not isNil(vtbl[].mimeData):
    vtbl[].vtbl.mimeData = fcQConcatenateTablesProxyModel_vtable_callback_mimeData
  if not isNil(vtbl[].canDropMimeData):
    vtbl[].vtbl.canDropMimeData = fcQConcatenateTablesProxyModel_vtable_callback_canDropMimeData
  if not isNil(vtbl[].dropMimeData):
    vtbl[].vtbl.dropMimeData = fcQConcatenateTablesProxyModel_vtable_callback_dropMimeData
  if not isNil(vtbl[].span):
    vtbl[].vtbl.span = fcQConcatenateTablesProxyModel_vtable_callback_span
  if not isNil(vtbl[].sibling):
    vtbl[].vtbl.sibling = fcQConcatenateTablesProxyModel_vtable_callback_sibling
  if not isNil(vtbl[].hasChildren):
    vtbl[].vtbl.hasChildren = fcQConcatenateTablesProxyModel_vtable_callback_hasChildren
  if not isNil(vtbl[].setHeaderData):
    vtbl[].vtbl.setHeaderData = fcQConcatenateTablesProxyModel_vtable_callback_setHeaderData
  if not isNil(vtbl[].clearItemData):
    vtbl[].vtbl.clearItemData = fcQConcatenateTablesProxyModel_vtable_callback_clearItemData
  if not isNil(vtbl[].supportedDropActions):
    vtbl[].vtbl.supportedDropActions = fcQConcatenateTablesProxyModel_vtable_callback_supportedDropActions
  if not isNil(vtbl[].supportedDragActions):
    vtbl[].vtbl.supportedDragActions = fcQConcatenateTablesProxyModel_vtable_callback_supportedDragActions
  if not isNil(vtbl[].insertRows):
    vtbl[].vtbl.insertRows = fcQConcatenateTablesProxyModel_vtable_callback_insertRows
  if not isNil(vtbl[].insertColumns):
    vtbl[].vtbl.insertColumns = fcQConcatenateTablesProxyModel_vtable_callback_insertColumns
  if not isNil(vtbl[].removeRows):
    vtbl[].vtbl.removeRows = fcQConcatenateTablesProxyModel_vtable_callback_removeRows
  if not isNil(vtbl[].removeColumns):
    vtbl[].vtbl.removeColumns = fcQConcatenateTablesProxyModel_vtable_callback_removeColumns
  if not isNil(vtbl[].moveRows):
    vtbl[].vtbl.moveRows = fcQConcatenateTablesProxyModel_vtable_callback_moveRows
  if not isNil(vtbl[].moveColumns):
    vtbl[].vtbl.moveColumns = fcQConcatenateTablesProxyModel_vtable_callback_moveColumns
  if not isNil(vtbl[].fetchMore):
    vtbl[].vtbl.fetchMore = fcQConcatenateTablesProxyModel_vtable_callback_fetchMore
  if not isNil(vtbl[].canFetchMore):
    vtbl[].vtbl.canFetchMore = fcQConcatenateTablesProxyModel_vtable_callback_canFetchMore
  if not isNil(vtbl[].sort):
    vtbl[].vtbl.sort = fcQConcatenateTablesProxyModel_vtable_callback_sort
  if not isNil(vtbl[].buddy):
    vtbl[].vtbl.buddy = fcQConcatenateTablesProxyModel_vtable_callback_buddy
  if not isNil(vtbl[].match):
    vtbl[].vtbl.match = fcQConcatenateTablesProxyModel_vtable_callback_match
  if not isNil(vtbl[].roleNames):
    vtbl[].vtbl.roleNames = fcQConcatenateTablesProxyModel_vtable_callback_roleNames
  if not isNil(vtbl[].multiData):
    vtbl[].vtbl.multiData = fcQConcatenateTablesProxyModel_vtable_callback_multiData
  if not isNil(vtbl[].submit):
    vtbl[].vtbl.submit = fcQConcatenateTablesProxyModel_vtable_callback_submit
  if not isNil(vtbl[].revert):
    vtbl[].vtbl.revert = fcQConcatenateTablesProxyModel_vtable_callback_revert
  if not isNil(vtbl[].resetInternalData):
    vtbl[].vtbl.resetInternalData = fcQConcatenateTablesProxyModel_vtable_callback_resetInternalData
  if not isNil(vtbl[].event):
    vtbl[].vtbl.event = fcQConcatenateTablesProxyModel_vtable_callback_event
  if not isNil(vtbl[].eventFilter):
    vtbl[].vtbl.eventFilter = fcQConcatenateTablesProxyModel_vtable_callback_eventFilter
  if not isNil(vtbl[].timerEvent):
    vtbl[].vtbl.timerEvent = fcQConcatenateTablesProxyModel_vtable_callback_timerEvent
  if not isNil(vtbl[].childEvent):
    vtbl[].vtbl.childEvent = fcQConcatenateTablesProxyModel_vtable_callback_childEvent
  if not isNil(vtbl[].customEvent):
    vtbl[].vtbl.customEvent = fcQConcatenateTablesProxyModel_vtable_callback_customEvent
  if not isNil(vtbl[].connectNotify):
    vtbl[].vtbl.connectNotify = fcQConcatenateTablesProxyModel_vtable_callback_connectNotify
  if not isNil(vtbl[].disconnectNotify):
    vtbl[].vtbl.disconnectNotify = fcQConcatenateTablesProxyModel_vtable_callback_disconnectNotify
  gen_qconcatenatetablesproxymodel_types.QConcatenateTablesProxyModel(h: fcQConcatenateTablesProxyModel_new2(addr(vtbl[].vtbl), addr(vtbl[]), parent.h), owned: true)

const cQConcatenateTablesProxyModel_mvtbl = cQConcatenateTablesProxyModelVTable(
  destructor: proc(self: pointer) {.cdecl.} =
    let inst = cast[ptr typeof(VirtualQConcatenateTablesProxyModel()[])](self.fcQConcatenateTablesProxyModel_vtbl())
    inst[].h = nil
    inst[].owned = false,

  metaObject: fcQConcatenateTablesProxyModel_method_callback_metaObject,
  metacast: fcQConcatenateTablesProxyModel_method_callback_metacast,
  metacall: fcQConcatenateTablesProxyModel_method_callback_metacall,
  data: fcQConcatenateTablesProxyModel_method_callback_data,
  setData: fcQConcatenateTablesProxyModel_method_callback_setData,
  itemData: fcQConcatenateTablesProxyModel_method_callback_itemData,
  setItemData: fcQConcatenateTablesProxyModel_method_callback_setItemData,
  flags: fcQConcatenateTablesProxyModel_method_callback_flags,
  index: fcQConcatenateTablesProxyModel_method_callback_index,
  parent: fcQConcatenateTablesProxyModel_method_callback_parent,
  rowCount: fcQConcatenateTablesProxyModel_method_callback_rowCount,
  headerData: fcQConcatenateTablesProxyModel_method_callback_headerData,
  columnCount: fcQConcatenateTablesProxyModel_method_callback_columnCount,
  mimeTypes: fcQConcatenateTablesProxyModel_method_callback_mimeTypes,
  mimeData: fcQConcatenateTablesProxyModel_method_callback_mimeData,
  canDropMimeData: fcQConcatenateTablesProxyModel_method_callback_canDropMimeData,
  dropMimeData: fcQConcatenateTablesProxyModel_method_callback_dropMimeData,
  span: fcQConcatenateTablesProxyModel_method_callback_span,
  sibling: fcQConcatenateTablesProxyModel_method_callback_sibling,
  hasChildren: fcQConcatenateTablesProxyModel_method_callback_hasChildren,
  setHeaderData: fcQConcatenateTablesProxyModel_method_callback_setHeaderData,
  clearItemData: fcQConcatenateTablesProxyModel_method_callback_clearItemData,
  supportedDropActions: fcQConcatenateTablesProxyModel_method_callback_supportedDropActions,
  supportedDragActions: fcQConcatenateTablesProxyModel_method_callback_supportedDragActions,
  insertRows: fcQConcatenateTablesProxyModel_method_callback_insertRows,
  insertColumns: fcQConcatenateTablesProxyModel_method_callback_insertColumns,
  removeRows: fcQConcatenateTablesProxyModel_method_callback_removeRows,
  removeColumns: fcQConcatenateTablesProxyModel_method_callback_removeColumns,
  moveRows: fcQConcatenateTablesProxyModel_method_callback_moveRows,
  moveColumns: fcQConcatenateTablesProxyModel_method_callback_moveColumns,
  fetchMore: fcQConcatenateTablesProxyModel_method_callback_fetchMore,
  canFetchMore: fcQConcatenateTablesProxyModel_method_callback_canFetchMore,
  sort: fcQConcatenateTablesProxyModel_method_callback_sort,
  buddy: fcQConcatenateTablesProxyModel_method_callback_buddy,
  match: fcQConcatenateTablesProxyModel_method_callback_match,
  roleNames: fcQConcatenateTablesProxyModel_method_callback_roleNames,
  multiData: fcQConcatenateTablesProxyModel_method_callback_multiData,
  submit: fcQConcatenateTablesProxyModel_method_callback_submit,
  revert: fcQConcatenateTablesProxyModel_method_callback_revert,
  resetInternalData: fcQConcatenateTablesProxyModel_method_callback_resetInternalData,
  event: fcQConcatenateTablesProxyModel_method_callback_event,
  eventFilter: fcQConcatenateTablesProxyModel_method_callback_eventFilter,
  timerEvent: fcQConcatenateTablesProxyModel_method_callback_timerEvent,
  childEvent: fcQConcatenateTablesProxyModel_method_callback_childEvent,
  customEvent: fcQConcatenateTablesProxyModel_method_callback_customEvent,
  connectNotify: fcQConcatenateTablesProxyModel_method_callback_connectNotify,
  disconnectNotify: fcQConcatenateTablesProxyModel_method_callback_disconnectNotify,
)
proc create*(T: type gen_qconcatenatetablesproxymodel_types.QConcatenateTablesProxyModel,
    inst: VirtualQConcatenateTablesProxyModel) =
  if inst[].h != nil: delete(move(inst[]))
  inst[].h = fcQConcatenateTablesProxyModel_new(addr(cQConcatenateTablesProxyModel_mvtbl), addr(inst[]))
  inst[].owned = true

proc create*(T: type gen_qconcatenatetablesproxymodel_types.QConcatenateTablesProxyModel,
    parent: gen_qobject_types.QObject,
    inst: VirtualQConcatenateTablesProxyModel) =
  if inst[].h != nil: delete(move(inst[]))
  inst[].h = fcQConcatenateTablesProxyModel_new2(addr(cQConcatenateTablesProxyModel_mvtbl), addr(inst[]), parent.h)
  inst[].owned = true

proc staticMetaObject*(_: type gen_qconcatenatetablesproxymodel_types.QConcatenateTablesProxyModel): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQConcatenateTablesProxyModel_staticMetaObject())
