import ./Qt6Core_libs

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

const cflags = gorge("pkg-config --cflags Qt6Core") & " -fPIC"
{.compile("gen_qconcatenatetablesproxymodel.cpp", cflags).}


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

proc fcQConcatenateTablesProxyModel_metaObject(self: pointer, ): pointer {.importc: "QConcatenateTablesProxyModel_metaObject".}
proc fcQConcatenateTablesProxyModel_metacast(self: pointer, param1: cstring): pointer {.importc: "QConcatenateTablesProxyModel_metacast".}
proc fcQConcatenateTablesProxyModel_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.importc: "QConcatenateTablesProxyModel_metacall".}
proc fcQConcatenateTablesProxyModel_tr(s: cstring): struct_miqt_string {.importc: "QConcatenateTablesProxyModel_tr".}
proc fcQConcatenateTablesProxyModel_sourceModels(self: pointer, ): struct_miqt_array {.importc: "QConcatenateTablesProxyModel_sourceModels".}
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
proc fcQConcatenateTablesProxyModel_mimeTypes(self: pointer, ): struct_miqt_array {.importc: "QConcatenateTablesProxyModel_mimeTypes".}
proc fcQConcatenateTablesProxyModel_mimeData(self: pointer, indexes: struct_miqt_array): pointer {.importc: "QConcatenateTablesProxyModel_mimeData".}
proc fcQConcatenateTablesProxyModel_canDropMimeData(self: pointer, data: pointer, action: cint, row: cint, column: cint, parent: pointer): bool {.importc: "QConcatenateTablesProxyModel_canDropMimeData".}
proc fcQConcatenateTablesProxyModel_dropMimeData(self: pointer, data: pointer, action: cint, row: cint, column: cint, parent: pointer): bool {.importc: "QConcatenateTablesProxyModel_dropMimeData".}
proc fcQConcatenateTablesProxyModel_span(self: pointer, index: pointer): pointer {.importc: "QConcatenateTablesProxyModel_span".}
proc fcQConcatenateTablesProxyModel_tr2(s: cstring, c: cstring): struct_miqt_string {.importc: "QConcatenateTablesProxyModel_tr2".}
proc fcQConcatenateTablesProxyModel_tr3(s: cstring, c: cstring, n: cint): struct_miqt_string {.importc: "QConcatenateTablesProxyModel_tr3".}
type cQConcatenateTablesProxyModelVTable {.pure.} = object
  destructor*: proc(vtbl: ptr cQConcatenateTablesProxyModelVTable, self: ptr cQConcatenateTablesProxyModel) {.cdecl, raises:[], gcsafe.}
  metaObject*: proc(vtbl, self: pointer, ): pointer {.cdecl, raises: [], gcsafe.}
  metacast*: proc(vtbl, self: pointer, param1: cstring): pointer {.cdecl, raises: [], gcsafe.}
  metacall*: proc(vtbl, self: pointer, param1: cint, param2: cint, param3: pointer): cint {.cdecl, raises: [], gcsafe.}
  data*: proc(vtbl, self: pointer, index: pointer, role: cint): pointer {.cdecl, raises: [], gcsafe.}
  setData*: proc(vtbl, self: pointer, index: pointer, value: pointer, role: cint): bool {.cdecl, raises: [], gcsafe.}
  itemData*: proc(vtbl, self: pointer, proxyIndex: pointer): struct_miqt_map {.cdecl, raises: [], gcsafe.}
  setItemData*: proc(vtbl, self: pointer, index: pointer, roles: struct_miqt_map): bool {.cdecl, raises: [], gcsafe.}
  flags*: proc(vtbl, self: pointer, index: pointer): cint {.cdecl, raises: [], gcsafe.}
  index*: proc(vtbl, self: pointer, row: cint, column: cint, parent: pointer): pointer {.cdecl, raises: [], gcsafe.}
  parent*: proc(vtbl, self: pointer, index: pointer): pointer {.cdecl, raises: [], gcsafe.}
  rowCount*: proc(vtbl, self: pointer, parent: pointer): cint {.cdecl, raises: [], gcsafe.}
  headerData*: proc(vtbl, self: pointer, section: cint, orientation: cint, role: cint): pointer {.cdecl, raises: [], gcsafe.}
  columnCount*: proc(vtbl, self: pointer, parent: pointer): cint {.cdecl, raises: [], gcsafe.}
  mimeTypes*: proc(vtbl, self: pointer, ): struct_miqt_array {.cdecl, raises: [], gcsafe.}
  mimeData*: proc(vtbl, self: pointer, indexes: struct_miqt_array): pointer {.cdecl, raises: [], gcsafe.}
  canDropMimeData*: proc(vtbl, self: pointer, data: pointer, action: cint, row: cint, column: cint, parent: pointer): bool {.cdecl, raises: [], gcsafe.}
  dropMimeData*: proc(vtbl, self: pointer, data: pointer, action: cint, row: cint, column: cint, parent: pointer): bool {.cdecl, raises: [], gcsafe.}
  span*: proc(vtbl, self: pointer, index: pointer): pointer {.cdecl, raises: [], gcsafe.}
  sibling*: proc(vtbl, self: pointer, row: cint, column: cint, idx: pointer): pointer {.cdecl, raises: [], gcsafe.}
  hasChildren*: proc(vtbl, self: pointer, parent: pointer): bool {.cdecl, raises: [], gcsafe.}
  setHeaderData*: proc(vtbl, self: pointer, section: cint, orientation: cint, value: pointer, role: cint): bool {.cdecl, raises: [], gcsafe.}
  clearItemData*: proc(vtbl, self: pointer, index: pointer): bool {.cdecl, raises: [], gcsafe.}
  supportedDropActions*: proc(vtbl, self: pointer, ): cint {.cdecl, raises: [], gcsafe.}
  supportedDragActions*: proc(vtbl, self: pointer, ): cint {.cdecl, raises: [], gcsafe.}
  insertRows*: proc(vtbl, self: pointer, row: cint, count: cint, parent: pointer): bool {.cdecl, raises: [], gcsafe.}
  insertColumns*: proc(vtbl, self: pointer, column: cint, count: cint, parent: pointer): bool {.cdecl, raises: [], gcsafe.}
  removeRows*: proc(vtbl, self: pointer, row: cint, count: cint, parent: pointer): bool {.cdecl, raises: [], gcsafe.}
  removeColumns*: proc(vtbl, self: pointer, column: cint, count: cint, parent: pointer): bool {.cdecl, raises: [], gcsafe.}
  moveRows*: proc(vtbl, self: pointer, sourceParent: pointer, sourceRow: cint, count: cint, destinationParent: pointer, destinationChild: cint): bool {.cdecl, raises: [], gcsafe.}
  moveColumns*: proc(vtbl, self: pointer, sourceParent: pointer, sourceColumn: cint, count: cint, destinationParent: pointer, destinationChild: cint): bool {.cdecl, raises: [], gcsafe.}
  fetchMore*: proc(vtbl, self: pointer, parent: pointer): void {.cdecl, raises: [], gcsafe.}
  canFetchMore*: proc(vtbl, self: pointer, parent: pointer): bool {.cdecl, raises: [], gcsafe.}
  sort*: proc(vtbl, self: pointer, column: cint, order: cint): void {.cdecl, raises: [], gcsafe.}
  buddy*: proc(vtbl, self: pointer, index: pointer): pointer {.cdecl, raises: [], gcsafe.}
  match*: proc(vtbl, self: pointer, start: pointer, role: cint, value: pointer, hits: cint, flags: cint): struct_miqt_array {.cdecl, raises: [], gcsafe.}
  roleNames*: proc(vtbl, self: pointer, ): struct_miqt_map {.cdecl, raises: [], gcsafe.}
  multiData*: proc(vtbl, self: pointer, index: pointer, roleDataSpan: pointer): void {.cdecl, raises: [], gcsafe.}
  submit*: proc(vtbl, self: pointer, ): bool {.cdecl, raises: [], gcsafe.}
  revert*: proc(vtbl, self: pointer, ): void {.cdecl, raises: [], gcsafe.}
  resetInternalData*: proc(vtbl, self: pointer, ): void {.cdecl, raises: [], gcsafe.}
  event*: proc(vtbl, self: pointer, event: pointer): bool {.cdecl, raises: [], gcsafe.}
  eventFilter*: proc(vtbl, self: pointer, watched: pointer, event: pointer): bool {.cdecl, raises: [], gcsafe.}
  timerEvent*: proc(vtbl, self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  childEvent*: proc(vtbl, self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  customEvent*: proc(vtbl, self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  connectNotify*: proc(vtbl, self: pointer, signal: pointer): void {.cdecl, raises: [], gcsafe.}
  disconnectNotify*: proc(vtbl, self: pointer, signal: pointer): void {.cdecl, raises: [], gcsafe.}
proc fcQConcatenateTablesProxyModel_virtualbase_metaObject(self: pointer, ): pointer {.importc: "QConcatenateTablesProxyModel_virtualbase_metaObject".}
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
proc fcQConcatenateTablesProxyModel_virtualbase_mimeTypes(self: pointer, ): struct_miqt_array {.importc: "QConcatenateTablesProxyModel_virtualbase_mimeTypes".}
proc fcQConcatenateTablesProxyModel_virtualbase_mimeData(self: pointer, indexes: struct_miqt_array): pointer {.importc: "QConcatenateTablesProxyModel_virtualbase_mimeData".}
proc fcQConcatenateTablesProxyModel_virtualbase_canDropMimeData(self: pointer, data: pointer, action: cint, row: cint, column: cint, parent: pointer): bool {.importc: "QConcatenateTablesProxyModel_virtualbase_canDropMimeData".}
proc fcQConcatenateTablesProxyModel_virtualbase_dropMimeData(self: pointer, data: pointer, action: cint, row: cint, column: cint, parent: pointer): bool {.importc: "QConcatenateTablesProxyModel_virtualbase_dropMimeData".}
proc fcQConcatenateTablesProxyModel_virtualbase_span(self: pointer, index: pointer): pointer {.importc: "QConcatenateTablesProxyModel_virtualbase_span".}
proc fcQConcatenateTablesProxyModel_virtualbase_sibling(self: pointer, row: cint, column: cint, idx: pointer): pointer {.importc: "QConcatenateTablesProxyModel_virtualbase_sibling".}
proc fcQConcatenateTablesProxyModel_virtualbase_hasChildren(self: pointer, parent: pointer): bool {.importc: "QConcatenateTablesProxyModel_virtualbase_hasChildren".}
proc fcQConcatenateTablesProxyModel_virtualbase_setHeaderData(self: pointer, section: cint, orientation: cint, value: pointer, role: cint): bool {.importc: "QConcatenateTablesProxyModel_virtualbase_setHeaderData".}
proc fcQConcatenateTablesProxyModel_virtualbase_clearItemData(self: pointer, index: pointer): bool {.importc: "QConcatenateTablesProxyModel_virtualbase_clearItemData".}
proc fcQConcatenateTablesProxyModel_virtualbase_supportedDropActions(self: pointer, ): cint {.importc: "QConcatenateTablesProxyModel_virtualbase_supportedDropActions".}
proc fcQConcatenateTablesProxyModel_virtualbase_supportedDragActions(self: pointer, ): cint {.importc: "QConcatenateTablesProxyModel_virtualbase_supportedDragActions".}
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
proc fcQConcatenateTablesProxyModel_virtualbase_roleNames(self: pointer, ): struct_miqt_map {.importc: "QConcatenateTablesProxyModel_virtualbase_roleNames".}
proc fcQConcatenateTablesProxyModel_virtualbase_multiData(self: pointer, index: pointer, roleDataSpan: pointer): void {.importc: "QConcatenateTablesProxyModel_virtualbase_multiData".}
proc fcQConcatenateTablesProxyModel_virtualbase_submit(self: pointer, ): bool {.importc: "QConcatenateTablesProxyModel_virtualbase_submit".}
proc fcQConcatenateTablesProxyModel_virtualbase_revert(self: pointer, ): void {.importc: "QConcatenateTablesProxyModel_virtualbase_revert".}
proc fcQConcatenateTablesProxyModel_virtualbase_resetInternalData(self: pointer, ): void {.importc: "QConcatenateTablesProxyModel_virtualbase_resetInternalData".}
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
proc fcQConcatenateTablesProxyModel_protectedbase_endInsertRows(self: pointer, ): void {.importc: "QConcatenateTablesProxyModel_protectedbase_endInsertRows".}
proc fcQConcatenateTablesProxyModel_protectedbase_beginRemoveRows(self: pointer, parent: pointer, first: cint, last: cint): void {.importc: "QConcatenateTablesProxyModel_protectedbase_beginRemoveRows".}
proc fcQConcatenateTablesProxyModel_protectedbase_endRemoveRows(self: pointer, ): void {.importc: "QConcatenateTablesProxyModel_protectedbase_endRemoveRows".}
proc fcQConcatenateTablesProxyModel_protectedbase_beginMoveRows(self: pointer, sourceParent: pointer, sourceFirst: cint, sourceLast: cint, destinationParent: pointer, destinationRow: cint): bool {.importc: "QConcatenateTablesProxyModel_protectedbase_beginMoveRows".}
proc fcQConcatenateTablesProxyModel_protectedbase_endMoveRows(self: pointer, ): void {.importc: "QConcatenateTablesProxyModel_protectedbase_endMoveRows".}
proc fcQConcatenateTablesProxyModel_protectedbase_beginInsertColumns(self: pointer, parent: pointer, first: cint, last: cint): void {.importc: "QConcatenateTablesProxyModel_protectedbase_beginInsertColumns".}
proc fcQConcatenateTablesProxyModel_protectedbase_endInsertColumns(self: pointer, ): void {.importc: "QConcatenateTablesProxyModel_protectedbase_endInsertColumns".}
proc fcQConcatenateTablesProxyModel_protectedbase_beginRemoveColumns(self: pointer, parent: pointer, first: cint, last: cint): void {.importc: "QConcatenateTablesProxyModel_protectedbase_beginRemoveColumns".}
proc fcQConcatenateTablesProxyModel_protectedbase_endRemoveColumns(self: pointer, ): void {.importc: "QConcatenateTablesProxyModel_protectedbase_endRemoveColumns".}
proc fcQConcatenateTablesProxyModel_protectedbase_beginMoveColumns(self: pointer, sourceParent: pointer, sourceFirst: cint, sourceLast: cint, destinationParent: pointer, destinationColumn: cint): bool {.importc: "QConcatenateTablesProxyModel_protectedbase_beginMoveColumns".}
proc fcQConcatenateTablesProxyModel_protectedbase_endMoveColumns(self: pointer, ): void {.importc: "QConcatenateTablesProxyModel_protectedbase_endMoveColumns".}
proc fcQConcatenateTablesProxyModel_protectedbase_beginResetModel(self: pointer, ): void {.importc: "QConcatenateTablesProxyModel_protectedbase_beginResetModel".}
proc fcQConcatenateTablesProxyModel_protectedbase_endResetModel(self: pointer, ): void {.importc: "QConcatenateTablesProxyModel_protectedbase_endResetModel".}
proc fcQConcatenateTablesProxyModel_protectedbase_changePersistentIndex(self: pointer, fromVal: pointer, to: pointer): void {.importc: "QConcatenateTablesProxyModel_protectedbase_changePersistentIndex".}
proc fcQConcatenateTablesProxyModel_protectedbase_changePersistentIndexList(self: pointer, fromVal: struct_miqt_array, to: struct_miqt_array): void {.importc: "QConcatenateTablesProxyModel_protectedbase_changePersistentIndexList".}
proc fcQConcatenateTablesProxyModel_protectedbase_persistentIndexList(self: pointer, ): struct_miqt_array {.importc: "QConcatenateTablesProxyModel_protectedbase_persistentIndexList".}
proc fcQConcatenateTablesProxyModel_protectedbase_sender(self: pointer, ): pointer {.importc: "QConcatenateTablesProxyModel_protectedbase_sender".}
proc fcQConcatenateTablesProxyModel_protectedbase_senderSignalIndex(self: pointer, ): cint {.importc: "QConcatenateTablesProxyModel_protectedbase_senderSignalIndex".}
proc fcQConcatenateTablesProxyModel_protectedbase_receivers(self: pointer, signal: cstring): cint {.importc: "QConcatenateTablesProxyModel_protectedbase_receivers".}
proc fcQConcatenateTablesProxyModel_protectedbase_isSignalConnected(self: pointer, signal: pointer): bool {.importc: "QConcatenateTablesProxyModel_protectedbase_isSignalConnected".}
proc fcQConcatenateTablesProxyModel_new(vtbl: pointer, ): ptr cQConcatenateTablesProxyModel {.importc: "QConcatenateTablesProxyModel_new".}
proc fcQConcatenateTablesProxyModel_new2(vtbl: pointer, parent: pointer): ptr cQConcatenateTablesProxyModel {.importc: "QConcatenateTablesProxyModel_new2".}
proc fcQConcatenateTablesProxyModel_staticMetaObject(): pointer {.importc: "QConcatenateTablesProxyModel_staticMetaObject".}

proc metaObject*(self: gen_qconcatenatetablesproxymodel_types.QConcatenateTablesProxyModel, ): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQConcatenateTablesProxyModel_metaObject(self.h), owned: false)

proc metacast*(self: gen_qconcatenatetablesproxymodel_types.QConcatenateTablesProxyModel, param1: cstring): pointer =
  fcQConcatenateTablesProxyModel_metacast(self.h, param1)

proc metacall*(self: gen_qconcatenatetablesproxymodel_types.QConcatenateTablesProxyModel, param1: cint, param2: cint, param3: pointer): cint =
  fcQConcatenateTablesProxyModel_metacall(self.h, cint(param1), param2, param3)

proc tr*(_: type gen_qconcatenatetablesproxymodel_types.QConcatenateTablesProxyModel, s: cstring): string =
  let v_ms = fcQConcatenateTablesProxyModel_tr(s)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc sourceModels*(self: gen_qconcatenatetablesproxymodel_types.QConcatenateTablesProxyModel, ): seq[gen_qabstractitemmodel_types.QAbstractItemModel] =
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

proc mimeTypes*(self: gen_qconcatenatetablesproxymodel_types.QConcatenateTablesProxyModel, ): seq[string] =
  var v_ma = fcQConcatenateTablesProxyModel_mimeTypes(self.h)
  var vx_ret = newSeq[string](int(v_ma.len))
  let v_outCast = cast[ptr UncheckedArray[struct_miqt_string]](v_ma.data)
  for i in 0 ..< v_ma.len:
    let vx_lv_ms = v_outCast[i]
    let vx_lvx_ret = string.fromBytes(toOpenArrayByte(vx_lv_ms.data, 0, int(vx_lv_ms.len)-1))
    c_free(vx_lv_ms.data)
    vx_ret[i] = vx_lvx_ret
  c_free(v_ma.data)
  vx_ret

proc mimeData*(self: gen_qconcatenatetablesproxymodel_types.QConcatenateTablesProxyModel, indexes: seq[gen_qabstractitemmodel_types.QModelIndex]): gen_qmimedata_types.QMimeData =
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
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc tr*(_: type gen_qconcatenatetablesproxymodel_types.QConcatenateTablesProxyModel, s: cstring, c: cstring, n: cint): string =
  let v_ms = fcQConcatenateTablesProxyModel_tr3(s, c, n)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
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
type QConcatenateTablesProxyModelmimeDataProc* = proc(self: QConcatenateTablesProxyModel, indexes: seq[gen_qabstractitemmodel_types.QModelIndex]): gen_qmimedata_types.QMimeData {.raises: [], gcsafe.}
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
proc QConcatenateTablesProxyModelmetaObject*(self: gen_qconcatenatetablesproxymodel_types.QConcatenateTablesProxyModel, ): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQConcatenateTablesProxyModel_virtualbase_metaObject(self.h), owned: false)

proc miqt_exec_callback_cQConcatenateTablesProxyModel_metaObject(vtbl: pointer, self: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QConcatenateTablesProxyModelVTable](vtbl)
  let self = QConcatenateTablesProxyModel(h: self)
  var virtualReturn = vtbl[].metaObject(self)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc QConcatenateTablesProxyModelmetacast*(self: gen_qconcatenatetablesproxymodel_types.QConcatenateTablesProxyModel, param1: cstring): pointer =
  fcQConcatenateTablesProxyModel_virtualbase_metacast(self.h, param1)

proc miqt_exec_callback_cQConcatenateTablesProxyModel_metacast(vtbl: pointer, self: pointer, param1: cstring): pointer {.cdecl.} =
  let vtbl = cast[ptr QConcatenateTablesProxyModelVTable](vtbl)
  let self = QConcatenateTablesProxyModel(h: self)
  let slotval1 = (param1)
  var virtualReturn = vtbl[].metacast(self, slotval1)
  virtualReturn

proc QConcatenateTablesProxyModelmetacall*(self: gen_qconcatenatetablesproxymodel_types.QConcatenateTablesProxyModel, param1: cint, param2: cint, param3: pointer): cint =
  fcQConcatenateTablesProxyModel_virtualbase_metacall(self.h, cint(param1), param2, param3)

proc miqt_exec_callback_cQConcatenateTablesProxyModel_metacall(vtbl: pointer, self: pointer, param1: cint, param2: cint, param3: pointer): cint {.cdecl.} =
  let vtbl = cast[ptr QConcatenateTablesProxyModelVTable](vtbl)
  let self = QConcatenateTablesProxyModel(h: self)
  let slotval1 = cint(param1)
  let slotval2 = param2
  let slotval3 = param3
  var virtualReturn = vtbl[].metacall(self, slotval1, slotval2, slotval3)
  virtualReturn

proc QConcatenateTablesProxyModeldata*(self: gen_qconcatenatetablesproxymodel_types.QConcatenateTablesProxyModel, index: gen_qabstractitemmodel_types.QModelIndex, role: cint): gen_qvariant_types.QVariant =
  gen_qvariant_types.QVariant(h: fcQConcatenateTablesProxyModel_virtualbase_data(self.h, index.h, role), owned: true)

proc miqt_exec_callback_cQConcatenateTablesProxyModel_data(vtbl: pointer, self: pointer, index: pointer, role: cint): pointer {.cdecl.} =
  let vtbl = cast[ptr QConcatenateTablesProxyModelVTable](vtbl)
  let self = QConcatenateTablesProxyModel(h: self)
  let slotval1 = gen_qabstractitemmodel_types.QModelIndex(h: index, owned: false)
  let slotval2 = role
  var virtualReturn = vtbl[].data(self, slotval1, slotval2)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc QConcatenateTablesProxyModelsetData*(self: gen_qconcatenatetablesproxymodel_types.QConcatenateTablesProxyModel, index: gen_qabstractitemmodel_types.QModelIndex, value: gen_qvariant_types.QVariant, role: cint): bool =
  fcQConcatenateTablesProxyModel_virtualbase_setData(self.h, index.h, value.h, role)

proc miqt_exec_callback_cQConcatenateTablesProxyModel_setData(vtbl: pointer, self: pointer, index: pointer, value: pointer, role: cint): bool {.cdecl.} =
  let vtbl = cast[ptr QConcatenateTablesProxyModelVTable](vtbl)
  let self = QConcatenateTablesProxyModel(h: self)
  let slotval1 = gen_qabstractitemmodel_types.QModelIndex(h: index, owned: false)
  let slotval2 = gen_qvariant_types.QVariant(h: value, owned: false)
  let slotval3 = role
  var virtualReturn = vtbl[].setData(self, slotval1, slotval2, slotval3)
  virtualReturn

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

proc miqt_exec_callback_cQConcatenateTablesProxyModel_itemData(vtbl: pointer, self: pointer, proxyIndex: pointer): struct_miqt_map {.cdecl.} =
  let vtbl = cast[ptr QConcatenateTablesProxyModelVTable](vtbl)
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

proc miqt_exec_callback_cQConcatenateTablesProxyModel_setItemData(vtbl: pointer, self: pointer, index: pointer, roles: struct_miqt_map): bool {.cdecl.} =
  let vtbl = cast[ptr QConcatenateTablesProxyModelVTable](vtbl)
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

proc QConcatenateTablesProxyModelflags*(self: gen_qconcatenatetablesproxymodel_types.QConcatenateTablesProxyModel, index: gen_qabstractitemmodel_types.QModelIndex): cint =
  cint(fcQConcatenateTablesProxyModel_virtualbase_flags(self.h, index.h))

proc miqt_exec_callback_cQConcatenateTablesProxyModel_flags(vtbl: pointer, self: pointer, index: pointer): cint {.cdecl.} =
  let vtbl = cast[ptr QConcatenateTablesProxyModelVTable](vtbl)
  let self = QConcatenateTablesProxyModel(h: self)
  let slotval1 = gen_qabstractitemmodel_types.QModelIndex(h: index, owned: false)
  var virtualReturn = vtbl[].flags(self, slotval1)
  cint(virtualReturn)

proc QConcatenateTablesProxyModelindex*(self: gen_qconcatenatetablesproxymodel_types.QConcatenateTablesProxyModel, row: cint, column: cint, parent: gen_qabstractitemmodel_types.QModelIndex): gen_qabstractitemmodel_types.QModelIndex =
  gen_qabstractitemmodel_types.QModelIndex(h: fcQConcatenateTablesProxyModel_virtualbase_index(self.h, row, column, parent.h), owned: true)

proc miqt_exec_callback_cQConcatenateTablesProxyModel_index(vtbl: pointer, self: pointer, row: cint, column: cint, parent: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QConcatenateTablesProxyModelVTable](vtbl)
  let self = QConcatenateTablesProxyModel(h: self)
  let slotval1 = row
  let slotval2 = column
  let slotval3 = gen_qabstractitemmodel_types.QModelIndex(h: parent, owned: false)
  var virtualReturn = vtbl[].index(self, slotval1, slotval2, slotval3)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc QConcatenateTablesProxyModelparent*(self: gen_qconcatenatetablesproxymodel_types.QConcatenateTablesProxyModel, index: gen_qabstractitemmodel_types.QModelIndex): gen_qabstractitemmodel_types.QModelIndex =
  gen_qabstractitemmodel_types.QModelIndex(h: fcQConcatenateTablesProxyModel_virtualbase_parent(self.h, index.h), owned: true)

proc miqt_exec_callback_cQConcatenateTablesProxyModel_parent(vtbl: pointer, self: pointer, index: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QConcatenateTablesProxyModelVTable](vtbl)
  let self = QConcatenateTablesProxyModel(h: self)
  let slotval1 = gen_qabstractitemmodel_types.QModelIndex(h: index, owned: false)
  var virtualReturn = vtbl[].parent(self, slotval1)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc QConcatenateTablesProxyModelrowCount*(self: gen_qconcatenatetablesproxymodel_types.QConcatenateTablesProxyModel, parent: gen_qabstractitemmodel_types.QModelIndex): cint =
  fcQConcatenateTablesProxyModel_virtualbase_rowCount(self.h, parent.h)

proc miqt_exec_callback_cQConcatenateTablesProxyModel_rowCount(vtbl: pointer, self: pointer, parent: pointer): cint {.cdecl.} =
  let vtbl = cast[ptr QConcatenateTablesProxyModelVTable](vtbl)
  let self = QConcatenateTablesProxyModel(h: self)
  let slotval1 = gen_qabstractitemmodel_types.QModelIndex(h: parent, owned: false)
  var virtualReturn = vtbl[].rowCount(self, slotval1)
  virtualReturn

proc QConcatenateTablesProxyModelheaderData*(self: gen_qconcatenatetablesproxymodel_types.QConcatenateTablesProxyModel, section: cint, orientation: cint, role: cint): gen_qvariant_types.QVariant =
  gen_qvariant_types.QVariant(h: fcQConcatenateTablesProxyModel_virtualbase_headerData(self.h, section, cint(orientation), role), owned: true)

proc miqt_exec_callback_cQConcatenateTablesProxyModel_headerData(vtbl: pointer, self: pointer, section: cint, orientation: cint, role: cint): pointer {.cdecl.} =
  let vtbl = cast[ptr QConcatenateTablesProxyModelVTable](vtbl)
  let self = QConcatenateTablesProxyModel(h: self)
  let slotval1 = section
  let slotval2 = cint(orientation)
  let slotval3 = role
  var virtualReturn = vtbl[].headerData(self, slotval1, slotval2, slotval3)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc QConcatenateTablesProxyModelcolumnCount*(self: gen_qconcatenatetablesproxymodel_types.QConcatenateTablesProxyModel, parent: gen_qabstractitemmodel_types.QModelIndex): cint =
  fcQConcatenateTablesProxyModel_virtualbase_columnCount(self.h, parent.h)

proc miqt_exec_callback_cQConcatenateTablesProxyModel_columnCount(vtbl: pointer, self: pointer, parent: pointer): cint {.cdecl.} =
  let vtbl = cast[ptr QConcatenateTablesProxyModelVTable](vtbl)
  let self = QConcatenateTablesProxyModel(h: self)
  let slotval1 = gen_qabstractitemmodel_types.QModelIndex(h: parent, owned: false)
  var virtualReturn = vtbl[].columnCount(self, slotval1)
  virtualReturn

proc QConcatenateTablesProxyModelmimeTypes*(self: gen_qconcatenatetablesproxymodel_types.QConcatenateTablesProxyModel, ): seq[string] =
  var v_ma = fcQConcatenateTablesProxyModel_virtualbase_mimeTypes(self.h)
  var vx_ret = newSeq[string](int(v_ma.len))
  let v_outCast = cast[ptr UncheckedArray[struct_miqt_string]](v_ma.data)
  for i in 0 ..< v_ma.len:
    let vx_lv_ms = v_outCast[i]
    let vx_lvx_ret = string.fromBytes(toOpenArrayByte(vx_lv_ms.data, 0, int(vx_lv_ms.len)-1))
    c_free(vx_lv_ms.data)
    vx_ret[i] = vx_lvx_ret
  c_free(v_ma.data)
  vx_ret

proc miqt_exec_callback_cQConcatenateTablesProxyModel_mimeTypes(vtbl: pointer, self: pointer): struct_miqt_array {.cdecl.} =
  let vtbl = cast[ptr QConcatenateTablesProxyModelVTable](vtbl)
  let self = QConcatenateTablesProxyModel(h: self)
  var virtualReturn = vtbl[].mimeTypes(self)
  var virtualReturn_CArray = cast[ptr UncheckedArray[struct_miqt_string]](if len(virtualReturn) > 0: c_malloc(c_sizet(sizeof(struct_miqt_string) * len(virtualReturn))) else: nil)
  for i in 0..<len(virtualReturn):
    var virtualReturn_i_copy = cast[cstring](if len(virtualReturn[i]) > 0: c_malloc(csize_t(len(virtualReturn[i]))) else: nil)
    if len(virtualReturn[i]) > 0: copyMem(cast[pointer](virtualReturn_i_copy), addr virtualReturn[i][0], csize_t(len(virtualReturn[i])))
    virtualReturn_CArray[i] = struct_miqt_string(data: virtualReturn_i_copy, len: csize_t(len(virtualReturn[i])))

  struct_miqt_array(len: csize_t(len(virtualReturn)), data: if len(virtualReturn) == 0: nil else: addr(virtualReturn_CArray[0]))

proc QConcatenateTablesProxyModelmimeData*(self: gen_qconcatenatetablesproxymodel_types.QConcatenateTablesProxyModel, indexes: seq[gen_qabstractitemmodel_types.QModelIndex]): gen_qmimedata_types.QMimeData =
  var indexes_CArray = newSeq[pointer](len(indexes))
  for i in 0..<len(indexes):
    indexes_CArray[i] = indexes[i].h

  gen_qmimedata_types.QMimeData(h: fcQConcatenateTablesProxyModel_virtualbase_mimeData(self.h, struct_miqt_array(len: csize_t(len(indexes)), data: if len(indexes) == 0: nil else: addr(indexes_CArray[0]))), owned: false)

proc miqt_exec_callback_cQConcatenateTablesProxyModel_mimeData(vtbl: pointer, self: pointer, indexes: struct_miqt_array): pointer {.cdecl.} =
  let vtbl = cast[ptr QConcatenateTablesProxyModelVTable](vtbl)
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

proc QConcatenateTablesProxyModelcanDropMimeData*(self: gen_qconcatenatetablesproxymodel_types.QConcatenateTablesProxyModel, data: gen_qmimedata_types.QMimeData, action: cint, row: cint, column: cint, parent: gen_qabstractitemmodel_types.QModelIndex): bool =
  fcQConcatenateTablesProxyModel_virtualbase_canDropMimeData(self.h, data.h, cint(action), row, column, parent.h)

proc miqt_exec_callback_cQConcatenateTablesProxyModel_canDropMimeData(vtbl: pointer, self: pointer, data: pointer, action: cint, row: cint, column: cint, parent: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QConcatenateTablesProxyModelVTable](vtbl)
  let self = QConcatenateTablesProxyModel(h: self)
  let slotval1 = gen_qmimedata_types.QMimeData(h: data, owned: false)
  let slotval2 = cint(action)
  let slotval3 = row
  let slotval4 = column
  let slotval5 = gen_qabstractitemmodel_types.QModelIndex(h: parent, owned: false)
  var virtualReturn = vtbl[].canDropMimeData(self, slotval1, slotval2, slotval3, slotval4, slotval5)
  virtualReturn

proc QConcatenateTablesProxyModeldropMimeData*(self: gen_qconcatenatetablesproxymodel_types.QConcatenateTablesProxyModel, data: gen_qmimedata_types.QMimeData, action: cint, row: cint, column: cint, parent: gen_qabstractitemmodel_types.QModelIndex): bool =
  fcQConcatenateTablesProxyModel_virtualbase_dropMimeData(self.h, data.h, cint(action), row, column, parent.h)

proc miqt_exec_callback_cQConcatenateTablesProxyModel_dropMimeData(vtbl: pointer, self: pointer, data: pointer, action: cint, row: cint, column: cint, parent: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QConcatenateTablesProxyModelVTable](vtbl)
  let self = QConcatenateTablesProxyModel(h: self)
  let slotval1 = gen_qmimedata_types.QMimeData(h: data, owned: false)
  let slotval2 = cint(action)
  let slotval3 = row
  let slotval4 = column
  let slotval5 = gen_qabstractitemmodel_types.QModelIndex(h: parent, owned: false)
  var virtualReturn = vtbl[].dropMimeData(self, slotval1, slotval2, slotval3, slotval4, slotval5)
  virtualReturn

proc QConcatenateTablesProxyModelspan*(self: gen_qconcatenatetablesproxymodel_types.QConcatenateTablesProxyModel, index: gen_qabstractitemmodel_types.QModelIndex): gen_qsize_types.QSize =
  gen_qsize_types.QSize(h: fcQConcatenateTablesProxyModel_virtualbase_span(self.h, index.h), owned: true)

proc miqt_exec_callback_cQConcatenateTablesProxyModel_span(vtbl: pointer, self: pointer, index: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QConcatenateTablesProxyModelVTable](vtbl)
  let self = QConcatenateTablesProxyModel(h: self)
  let slotval1 = gen_qabstractitemmodel_types.QModelIndex(h: index, owned: false)
  var virtualReturn = vtbl[].span(self, slotval1)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc QConcatenateTablesProxyModelsibling*(self: gen_qconcatenatetablesproxymodel_types.QConcatenateTablesProxyModel, row: cint, column: cint, idx: gen_qabstractitemmodel_types.QModelIndex): gen_qabstractitemmodel_types.QModelIndex =
  gen_qabstractitemmodel_types.QModelIndex(h: fcQConcatenateTablesProxyModel_virtualbase_sibling(self.h, row, column, idx.h), owned: true)

proc miqt_exec_callback_cQConcatenateTablesProxyModel_sibling(vtbl: pointer, self: pointer, row: cint, column: cint, idx: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QConcatenateTablesProxyModelVTable](vtbl)
  let self = QConcatenateTablesProxyModel(h: self)
  let slotval1 = row
  let slotval2 = column
  let slotval3 = gen_qabstractitemmodel_types.QModelIndex(h: idx, owned: false)
  var virtualReturn = vtbl[].sibling(self, slotval1, slotval2, slotval3)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc QConcatenateTablesProxyModelhasChildren*(self: gen_qconcatenatetablesproxymodel_types.QConcatenateTablesProxyModel, parent: gen_qabstractitemmodel_types.QModelIndex): bool =
  fcQConcatenateTablesProxyModel_virtualbase_hasChildren(self.h, parent.h)

proc miqt_exec_callback_cQConcatenateTablesProxyModel_hasChildren(vtbl: pointer, self: pointer, parent: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QConcatenateTablesProxyModelVTable](vtbl)
  let self = QConcatenateTablesProxyModel(h: self)
  let slotval1 = gen_qabstractitemmodel_types.QModelIndex(h: parent, owned: false)
  var virtualReturn = vtbl[].hasChildren(self, slotval1)
  virtualReturn

proc QConcatenateTablesProxyModelsetHeaderData*(self: gen_qconcatenatetablesproxymodel_types.QConcatenateTablesProxyModel, section: cint, orientation: cint, value: gen_qvariant_types.QVariant, role: cint): bool =
  fcQConcatenateTablesProxyModel_virtualbase_setHeaderData(self.h, section, cint(orientation), value.h, role)

proc miqt_exec_callback_cQConcatenateTablesProxyModel_setHeaderData(vtbl: pointer, self: pointer, section: cint, orientation: cint, value: pointer, role: cint): bool {.cdecl.} =
  let vtbl = cast[ptr QConcatenateTablesProxyModelVTable](vtbl)
  let self = QConcatenateTablesProxyModel(h: self)
  let slotval1 = section
  let slotval2 = cint(orientation)
  let slotval3 = gen_qvariant_types.QVariant(h: value, owned: false)
  let slotval4 = role
  var virtualReturn = vtbl[].setHeaderData(self, slotval1, slotval2, slotval3, slotval4)
  virtualReturn

proc QConcatenateTablesProxyModelclearItemData*(self: gen_qconcatenatetablesproxymodel_types.QConcatenateTablesProxyModel, index: gen_qabstractitemmodel_types.QModelIndex): bool =
  fcQConcatenateTablesProxyModel_virtualbase_clearItemData(self.h, index.h)

proc miqt_exec_callback_cQConcatenateTablesProxyModel_clearItemData(vtbl: pointer, self: pointer, index: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QConcatenateTablesProxyModelVTable](vtbl)
  let self = QConcatenateTablesProxyModel(h: self)
  let slotval1 = gen_qabstractitemmodel_types.QModelIndex(h: index, owned: false)
  var virtualReturn = vtbl[].clearItemData(self, slotval1)
  virtualReturn

proc QConcatenateTablesProxyModelsupportedDropActions*(self: gen_qconcatenatetablesproxymodel_types.QConcatenateTablesProxyModel, ): cint =
  cint(fcQConcatenateTablesProxyModel_virtualbase_supportedDropActions(self.h))

proc miqt_exec_callback_cQConcatenateTablesProxyModel_supportedDropActions(vtbl: pointer, self: pointer): cint {.cdecl.} =
  let vtbl = cast[ptr QConcatenateTablesProxyModelVTable](vtbl)
  let self = QConcatenateTablesProxyModel(h: self)
  var virtualReturn = vtbl[].supportedDropActions(self)
  cint(virtualReturn)

proc QConcatenateTablesProxyModelsupportedDragActions*(self: gen_qconcatenatetablesproxymodel_types.QConcatenateTablesProxyModel, ): cint =
  cint(fcQConcatenateTablesProxyModel_virtualbase_supportedDragActions(self.h))

proc miqt_exec_callback_cQConcatenateTablesProxyModel_supportedDragActions(vtbl: pointer, self: pointer): cint {.cdecl.} =
  let vtbl = cast[ptr QConcatenateTablesProxyModelVTable](vtbl)
  let self = QConcatenateTablesProxyModel(h: self)
  var virtualReturn = vtbl[].supportedDragActions(self)
  cint(virtualReturn)

proc QConcatenateTablesProxyModelinsertRows*(self: gen_qconcatenatetablesproxymodel_types.QConcatenateTablesProxyModel, row: cint, count: cint, parent: gen_qabstractitemmodel_types.QModelIndex): bool =
  fcQConcatenateTablesProxyModel_virtualbase_insertRows(self.h, row, count, parent.h)

proc miqt_exec_callback_cQConcatenateTablesProxyModel_insertRows(vtbl: pointer, self: pointer, row: cint, count: cint, parent: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QConcatenateTablesProxyModelVTable](vtbl)
  let self = QConcatenateTablesProxyModel(h: self)
  let slotval1 = row
  let slotval2 = count
  let slotval3 = gen_qabstractitemmodel_types.QModelIndex(h: parent, owned: false)
  var virtualReturn = vtbl[].insertRows(self, slotval1, slotval2, slotval3)
  virtualReturn

proc QConcatenateTablesProxyModelinsertColumns*(self: gen_qconcatenatetablesproxymodel_types.QConcatenateTablesProxyModel, column: cint, count: cint, parent: gen_qabstractitemmodel_types.QModelIndex): bool =
  fcQConcatenateTablesProxyModel_virtualbase_insertColumns(self.h, column, count, parent.h)

proc miqt_exec_callback_cQConcatenateTablesProxyModel_insertColumns(vtbl: pointer, self: pointer, column: cint, count: cint, parent: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QConcatenateTablesProxyModelVTable](vtbl)
  let self = QConcatenateTablesProxyModel(h: self)
  let slotval1 = column
  let slotval2 = count
  let slotval3 = gen_qabstractitemmodel_types.QModelIndex(h: parent, owned: false)
  var virtualReturn = vtbl[].insertColumns(self, slotval1, slotval2, slotval3)
  virtualReturn

proc QConcatenateTablesProxyModelremoveRows*(self: gen_qconcatenatetablesproxymodel_types.QConcatenateTablesProxyModel, row: cint, count: cint, parent: gen_qabstractitemmodel_types.QModelIndex): bool =
  fcQConcatenateTablesProxyModel_virtualbase_removeRows(self.h, row, count, parent.h)

proc miqt_exec_callback_cQConcatenateTablesProxyModel_removeRows(vtbl: pointer, self: pointer, row: cint, count: cint, parent: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QConcatenateTablesProxyModelVTable](vtbl)
  let self = QConcatenateTablesProxyModel(h: self)
  let slotval1 = row
  let slotval2 = count
  let slotval3 = gen_qabstractitemmodel_types.QModelIndex(h: parent, owned: false)
  var virtualReturn = vtbl[].removeRows(self, slotval1, slotval2, slotval3)
  virtualReturn

proc QConcatenateTablesProxyModelremoveColumns*(self: gen_qconcatenatetablesproxymodel_types.QConcatenateTablesProxyModel, column: cint, count: cint, parent: gen_qabstractitemmodel_types.QModelIndex): bool =
  fcQConcatenateTablesProxyModel_virtualbase_removeColumns(self.h, column, count, parent.h)

proc miqt_exec_callback_cQConcatenateTablesProxyModel_removeColumns(vtbl: pointer, self: pointer, column: cint, count: cint, parent: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QConcatenateTablesProxyModelVTable](vtbl)
  let self = QConcatenateTablesProxyModel(h: self)
  let slotval1 = column
  let slotval2 = count
  let slotval3 = gen_qabstractitemmodel_types.QModelIndex(h: parent, owned: false)
  var virtualReturn = vtbl[].removeColumns(self, slotval1, slotval2, slotval3)
  virtualReturn

proc QConcatenateTablesProxyModelmoveRows*(self: gen_qconcatenatetablesproxymodel_types.QConcatenateTablesProxyModel, sourceParent: gen_qabstractitemmodel_types.QModelIndex, sourceRow: cint, count: cint, destinationParent: gen_qabstractitemmodel_types.QModelIndex, destinationChild: cint): bool =
  fcQConcatenateTablesProxyModel_virtualbase_moveRows(self.h, sourceParent.h, sourceRow, count, destinationParent.h, destinationChild)

proc miqt_exec_callback_cQConcatenateTablesProxyModel_moveRows(vtbl: pointer, self: pointer, sourceParent: pointer, sourceRow: cint, count: cint, destinationParent: pointer, destinationChild: cint): bool {.cdecl.} =
  let vtbl = cast[ptr QConcatenateTablesProxyModelVTable](vtbl)
  let self = QConcatenateTablesProxyModel(h: self)
  let slotval1 = gen_qabstractitemmodel_types.QModelIndex(h: sourceParent, owned: false)
  let slotval2 = sourceRow
  let slotval3 = count
  let slotval4 = gen_qabstractitemmodel_types.QModelIndex(h: destinationParent, owned: false)
  let slotval5 = destinationChild
  var virtualReturn = vtbl[].moveRows(self, slotval1, slotval2, slotval3, slotval4, slotval5)
  virtualReturn

proc QConcatenateTablesProxyModelmoveColumns*(self: gen_qconcatenatetablesproxymodel_types.QConcatenateTablesProxyModel, sourceParent: gen_qabstractitemmodel_types.QModelIndex, sourceColumn: cint, count: cint, destinationParent: gen_qabstractitemmodel_types.QModelIndex, destinationChild: cint): bool =
  fcQConcatenateTablesProxyModel_virtualbase_moveColumns(self.h, sourceParent.h, sourceColumn, count, destinationParent.h, destinationChild)

proc miqt_exec_callback_cQConcatenateTablesProxyModel_moveColumns(vtbl: pointer, self: pointer, sourceParent: pointer, sourceColumn: cint, count: cint, destinationParent: pointer, destinationChild: cint): bool {.cdecl.} =
  let vtbl = cast[ptr QConcatenateTablesProxyModelVTable](vtbl)
  let self = QConcatenateTablesProxyModel(h: self)
  let slotval1 = gen_qabstractitemmodel_types.QModelIndex(h: sourceParent, owned: false)
  let slotval2 = sourceColumn
  let slotval3 = count
  let slotval4 = gen_qabstractitemmodel_types.QModelIndex(h: destinationParent, owned: false)
  let slotval5 = destinationChild
  var virtualReturn = vtbl[].moveColumns(self, slotval1, slotval2, slotval3, slotval4, slotval5)
  virtualReturn

proc QConcatenateTablesProxyModelfetchMore*(self: gen_qconcatenatetablesproxymodel_types.QConcatenateTablesProxyModel, parent: gen_qabstractitemmodel_types.QModelIndex): void =
  fcQConcatenateTablesProxyModel_virtualbase_fetchMore(self.h, parent.h)

proc miqt_exec_callback_cQConcatenateTablesProxyModel_fetchMore(vtbl: pointer, self: pointer, parent: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QConcatenateTablesProxyModelVTable](vtbl)
  let self = QConcatenateTablesProxyModel(h: self)
  let slotval1 = gen_qabstractitemmodel_types.QModelIndex(h: parent, owned: false)
  vtbl[].fetchMore(self, slotval1)

proc QConcatenateTablesProxyModelcanFetchMore*(self: gen_qconcatenatetablesproxymodel_types.QConcatenateTablesProxyModel, parent: gen_qabstractitemmodel_types.QModelIndex): bool =
  fcQConcatenateTablesProxyModel_virtualbase_canFetchMore(self.h, parent.h)

proc miqt_exec_callback_cQConcatenateTablesProxyModel_canFetchMore(vtbl: pointer, self: pointer, parent: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QConcatenateTablesProxyModelVTable](vtbl)
  let self = QConcatenateTablesProxyModel(h: self)
  let slotval1 = gen_qabstractitemmodel_types.QModelIndex(h: parent, owned: false)
  var virtualReturn = vtbl[].canFetchMore(self, slotval1)
  virtualReturn

proc QConcatenateTablesProxyModelsort*(self: gen_qconcatenatetablesproxymodel_types.QConcatenateTablesProxyModel, column: cint, order: cint): void =
  fcQConcatenateTablesProxyModel_virtualbase_sort(self.h, column, cint(order))

proc miqt_exec_callback_cQConcatenateTablesProxyModel_sort(vtbl: pointer, self: pointer, column: cint, order: cint): void {.cdecl.} =
  let vtbl = cast[ptr QConcatenateTablesProxyModelVTable](vtbl)
  let self = QConcatenateTablesProxyModel(h: self)
  let slotval1 = column
  let slotval2 = cint(order)
  vtbl[].sort(self, slotval1, slotval2)

proc QConcatenateTablesProxyModelbuddy*(self: gen_qconcatenatetablesproxymodel_types.QConcatenateTablesProxyModel, index: gen_qabstractitemmodel_types.QModelIndex): gen_qabstractitemmodel_types.QModelIndex =
  gen_qabstractitemmodel_types.QModelIndex(h: fcQConcatenateTablesProxyModel_virtualbase_buddy(self.h, index.h), owned: true)

proc miqt_exec_callback_cQConcatenateTablesProxyModel_buddy(vtbl: pointer, self: pointer, index: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QConcatenateTablesProxyModelVTable](vtbl)
  let self = QConcatenateTablesProxyModel(h: self)
  let slotval1 = gen_qabstractitemmodel_types.QModelIndex(h: index, owned: false)
  var virtualReturn = vtbl[].buddy(self, slotval1)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc QConcatenateTablesProxyModelmatch*(self: gen_qconcatenatetablesproxymodel_types.QConcatenateTablesProxyModel, start: gen_qabstractitemmodel_types.QModelIndex, role: cint, value: gen_qvariant_types.QVariant, hits: cint, flags: cint): seq[gen_qabstractitemmodel_types.QModelIndex] =
  var v_ma = fcQConcatenateTablesProxyModel_virtualbase_match(self.h, start.h, role, value.h, hits, cint(flags))
  var vx_ret = newSeq[gen_qabstractitemmodel_types.QModelIndex](int(v_ma.len))
  let v_outCast = cast[ptr UncheckedArray[pointer]](v_ma.data)
  for i in 0 ..< v_ma.len:
    vx_ret[i] = gen_qabstractitemmodel_types.QModelIndex(h: v_outCast[i], owned: true)
  c_free(v_ma.data)
  vx_ret

proc miqt_exec_callback_cQConcatenateTablesProxyModel_match(vtbl: pointer, self: pointer, start: pointer, role: cint, value: pointer, hits: cint, flags: cint): struct_miqt_array {.cdecl.} =
  let vtbl = cast[ptr QConcatenateTablesProxyModelVTable](vtbl)
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

proc QConcatenateTablesProxyModelroleNames*(self: gen_qconcatenatetablesproxymodel_types.QConcatenateTablesProxyModel, ): Table[cint,seq[byte]] =
  var v_mm = fcQConcatenateTablesProxyModel_virtualbase_roleNames(self.h)
  var vx_ret: Table[cint, seq[byte]]
  var v_Keys = cast[ptr UncheckedArray[cint]](v_mm.keys)
  var v_Values = cast[ptr UncheckedArray[struct_miqt_string]](v_mm.values)
  for i in 0..<v_mm.len:
    var v_entry_Key = v_Keys[i]

    var vx_hashval_bytearray = v_Values[i]
    var vx_hashvalx_ret = @(toOpenArrayByte(vx_hashval_bytearray.data, 0, int(vx_hashval_bytearray.len)-1))
    c_free(vx_hashval_bytearray.data)
    var v_entry_Value = vx_hashvalx_ret

    vx_ret[v_entry_Key] = v_entry_Value
  c_free(v_mm.keys)
  c_free(v_mm.values)
  vx_ret

proc miqt_exec_callback_cQConcatenateTablesProxyModel_roleNames(vtbl: pointer, self: pointer): struct_miqt_map {.cdecl.} =
  let vtbl = cast[ptr QConcatenateTablesProxyModelVTable](vtbl)
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

proc QConcatenateTablesProxyModelmultiData*(self: gen_qconcatenatetablesproxymodel_types.QConcatenateTablesProxyModel, index: gen_qabstractitemmodel_types.QModelIndex, roleDataSpan: gen_qabstractitemmodel_types.QModelRoleDataSpan): void =
  fcQConcatenateTablesProxyModel_virtualbase_multiData(self.h, index.h, roleDataSpan.h)

proc miqt_exec_callback_cQConcatenateTablesProxyModel_multiData(vtbl: pointer, self: pointer, index: pointer, roleDataSpan: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QConcatenateTablesProxyModelVTable](vtbl)
  let self = QConcatenateTablesProxyModel(h: self)
  let slotval1 = gen_qabstractitemmodel_types.QModelIndex(h: index, owned: false)
  let slotval2 = gen_qabstractitemmodel_types.QModelRoleDataSpan(h: roleDataSpan, owned: true)
  vtbl[].multiData(self, slotval1, slotval2)

proc QConcatenateTablesProxyModelsubmit*(self: gen_qconcatenatetablesproxymodel_types.QConcatenateTablesProxyModel, ): bool =
  fcQConcatenateTablesProxyModel_virtualbase_submit(self.h)

proc miqt_exec_callback_cQConcatenateTablesProxyModel_submit(vtbl: pointer, self: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QConcatenateTablesProxyModelVTable](vtbl)
  let self = QConcatenateTablesProxyModel(h: self)
  var virtualReturn = vtbl[].submit(self)
  virtualReturn

proc QConcatenateTablesProxyModelrevert*(self: gen_qconcatenatetablesproxymodel_types.QConcatenateTablesProxyModel, ): void =
  fcQConcatenateTablesProxyModel_virtualbase_revert(self.h)

proc miqt_exec_callback_cQConcatenateTablesProxyModel_revert(vtbl: pointer, self: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QConcatenateTablesProxyModelVTable](vtbl)
  let self = QConcatenateTablesProxyModel(h: self)
  vtbl[].revert(self)

proc QConcatenateTablesProxyModelresetInternalData*(self: gen_qconcatenatetablesproxymodel_types.QConcatenateTablesProxyModel, ): void =
  fcQConcatenateTablesProxyModel_virtualbase_resetInternalData(self.h)

proc miqt_exec_callback_cQConcatenateTablesProxyModel_resetInternalData(vtbl: pointer, self: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QConcatenateTablesProxyModelVTable](vtbl)
  let self = QConcatenateTablesProxyModel(h: self)
  vtbl[].resetInternalData(self)

proc QConcatenateTablesProxyModelevent*(self: gen_qconcatenatetablesproxymodel_types.QConcatenateTablesProxyModel, event: gen_qcoreevent_types.QEvent): bool =
  fcQConcatenateTablesProxyModel_virtualbase_event(self.h, event.h)

proc miqt_exec_callback_cQConcatenateTablesProxyModel_event(vtbl: pointer, self: pointer, event: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QConcatenateTablesProxyModelVTable](vtbl)
  let self = QConcatenateTablesProxyModel(h: self)
  let slotval1 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  var virtualReturn = vtbl[].event(self, slotval1)
  virtualReturn

proc QConcatenateTablesProxyModeleventFilter*(self: gen_qconcatenatetablesproxymodel_types.QConcatenateTablesProxyModel, watched: gen_qobject_types.QObject, event: gen_qcoreevent_types.QEvent): bool =
  fcQConcatenateTablesProxyModel_virtualbase_eventFilter(self.h, watched.h, event.h)

proc miqt_exec_callback_cQConcatenateTablesProxyModel_eventFilter(vtbl: pointer, self: pointer, watched: pointer, event: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QConcatenateTablesProxyModelVTable](vtbl)
  let self = QConcatenateTablesProxyModel(h: self)
  let slotval1 = gen_qobject_types.QObject(h: watched, owned: false)
  let slotval2 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  var virtualReturn = vtbl[].eventFilter(self, slotval1, slotval2)
  virtualReturn

proc QConcatenateTablesProxyModeltimerEvent*(self: gen_qconcatenatetablesproxymodel_types.QConcatenateTablesProxyModel, event: gen_qcoreevent_types.QTimerEvent): void =
  fcQConcatenateTablesProxyModel_virtualbase_timerEvent(self.h, event.h)

proc miqt_exec_callback_cQConcatenateTablesProxyModel_timerEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QConcatenateTablesProxyModelVTable](vtbl)
  let self = QConcatenateTablesProxyModel(h: self)
  let slotval1 = gen_qcoreevent_types.QTimerEvent(h: event, owned: false)
  vtbl[].timerEvent(self, slotval1)

proc QConcatenateTablesProxyModelchildEvent*(self: gen_qconcatenatetablesproxymodel_types.QConcatenateTablesProxyModel, event: gen_qcoreevent_types.QChildEvent): void =
  fcQConcatenateTablesProxyModel_virtualbase_childEvent(self.h, event.h)

proc miqt_exec_callback_cQConcatenateTablesProxyModel_childEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QConcatenateTablesProxyModelVTable](vtbl)
  let self = QConcatenateTablesProxyModel(h: self)
  let slotval1 = gen_qcoreevent_types.QChildEvent(h: event, owned: false)
  vtbl[].childEvent(self, slotval1)

proc QConcatenateTablesProxyModelcustomEvent*(self: gen_qconcatenatetablesproxymodel_types.QConcatenateTablesProxyModel, event: gen_qcoreevent_types.QEvent): void =
  fcQConcatenateTablesProxyModel_virtualbase_customEvent(self.h, event.h)

proc miqt_exec_callback_cQConcatenateTablesProxyModel_customEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QConcatenateTablesProxyModelVTable](vtbl)
  let self = QConcatenateTablesProxyModel(h: self)
  let slotval1 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  vtbl[].customEvent(self, slotval1)

proc QConcatenateTablesProxyModelconnectNotify*(self: gen_qconcatenatetablesproxymodel_types.QConcatenateTablesProxyModel, signal: gen_qmetaobject_types.QMetaMethod): void =
  fcQConcatenateTablesProxyModel_virtualbase_connectNotify(self.h, signal.h)

proc miqt_exec_callback_cQConcatenateTablesProxyModel_connectNotify(vtbl: pointer, self: pointer, signal: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QConcatenateTablesProxyModelVTable](vtbl)
  let self = QConcatenateTablesProxyModel(h: self)
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal, owned: false)
  vtbl[].connectNotify(self, slotval1)

proc QConcatenateTablesProxyModeldisconnectNotify*(self: gen_qconcatenatetablesproxymodel_types.QConcatenateTablesProxyModel, signal: gen_qmetaobject_types.QMetaMethod): void =
  fcQConcatenateTablesProxyModel_virtualbase_disconnectNotify(self.h, signal.h)

proc miqt_exec_callback_cQConcatenateTablesProxyModel_disconnectNotify(vtbl: pointer, self: pointer, signal: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QConcatenateTablesProxyModelVTable](vtbl)
  let self = QConcatenateTablesProxyModel(h: self)
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal, owned: false)
  vtbl[].disconnectNotify(self, slotval1)

type VirtualQConcatenateTablesProxyModel* {.inheritable.} = ref object of QConcatenateTablesProxyModel
  vtbl*: cQConcatenateTablesProxyModelVTable
method metaObject*(self: VirtualQConcatenateTablesProxyModel, ): gen_qobjectdefs_types.QMetaObject {.base.} =
  QConcatenateTablesProxyModelmetaObject(self[])
proc miqt_exec_method_cQConcatenateTablesProxyModel_metaObject(vtbl: pointer, inst: pointer): pointer {.cdecl.} =
  let vtbl = cast[VirtualQConcatenateTablesProxyModel](cast[uint](vtbl) - uint(offsetOf(VirtualQConcatenateTablesProxyModel, vtbl)))
  var virtualReturn = vtbl.metaObject()
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

method metacast*(self: VirtualQConcatenateTablesProxyModel, param1: cstring): pointer {.base.} =
  QConcatenateTablesProxyModelmetacast(self[], param1)
proc miqt_exec_method_cQConcatenateTablesProxyModel_metacast(vtbl: pointer, inst: pointer, param1: cstring): pointer {.cdecl.} =
  let vtbl = cast[VirtualQConcatenateTablesProxyModel](cast[uint](vtbl) - uint(offsetOf(VirtualQConcatenateTablesProxyModel, vtbl)))
  let slotval1 = (param1)
  var virtualReturn = vtbl.metacast(slotval1)
  virtualReturn

method metacall*(self: VirtualQConcatenateTablesProxyModel, param1: cint, param2: cint, param3: pointer): cint {.base.} =
  QConcatenateTablesProxyModelmetacall(self[], param1, param2, param3)
proc miqt_exec_method_cQConcatenateTablesProxyModel_metacall(vtbl: pointer, inst: pointer, param1: cint, param2: cint, param3: pointer): cint {.cdecl.} =
  let vtbl = cast[VirtualQConcatenateTablesProxyModel](cast[uint](vtbl) - uint(offsetOf(VirtualQConcatenateTablesProxyModel, vtbl)))
  let slotval1 = cint(param1)
  let slotval2 = param2
  let slotval3 = param3
  var virtualReturn = vtbl.metacall(slotval1, slotval2, slotval3)
  virtualReturn

method data*(self: VirtualQConcatenateTablesProxyModel, index: gen_qabstractitemmodel_types.QModelIndex, role: cint): gen_qvariant_types.QVariant {.base.} =
  QConcatenateTablesProxyModeldata(self[], index, role)
proc miqt_exec_method_cQConcatenateTablesProxyModel_data(vtbl: pointer, inst: pointer, index: pointer, role: cint): pointer {.cdecl.} =
  let vtbl = cast[VirtualQConcatenateTablesProxyModel](cast[uint](vtbl) - uint(offsetOf(VirtualQConcatenateTablesProxyModel, vtbl)))
  let slotval1 = gen_qabstractitemmodel_types.QModelIndex(h: index, owned: false)
  let slotval2 = role
  var virtualReturn = vtbl.data(slotval1, slotval2)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

method setData*(self: VirtualQConcatenateTablesProxyModel, index: gen_qabstractitemmodel_types.QModelIndex, value: gen_qvariant_types.QVariant, role: cint): bool {.base.} =
  QConcatenateTablesProxyModelsetData(self[], index, value, role)
proc miqt_exec_method_cQConcatenateTablesProxyModel_setData(vtbl: pointer, inst: pointer, index: pointer, value: pointer, role: cint): bool {.cdecl.} =
  let vtbl = cast[VirtualQConcatenateTablesProxyModel](cast[uint](vtbl) - uint(offsetOf(VirtualQConcatenateTablesProxyModel, vtbl)))
  let slotval1 = gen_qabstractitemmodel_types.QModelIndex(h: index, owned: false)
  let slotval2 = gen_qvariant_types.QVariant(h: value, owned: false)
  let slotval3 = role
  var virtualReturn = vtbl.setData(slotval1, slotval2, slotval3)
  virtualReturn

method itemData*(self: VirtualQConcatenateTablesProxyModel, proxyIndex: gen_qabstractitemmodel_types.QModelIndex): Table[cint,gen_qvariant_types.QVariant] {.base.} =
  QConcatenateTablesProxyModelitemData(self[], proxyIndex)
proc miqt_exec_method_cQConcatenateTablesProxyModel_itemData(vtbl: pointer, inst: pointer, proxyIndex: pointer): struct_miqt_map {.cdecl.} =
  let vtbl = cast[VirtualQConcatenateTablesProxyModel](cast[uint](vtbl) - uint(offsetOf(VirtualQConcatenateTablesProxyModel, vtbl)))
  let slotval1 = gen_qabstractitemmodel_types.QModelIndex(h: proxyIndex, owned: false)
  var virtualReturn = vtbl.itemData(slotval1)
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

method setItemData*(self: VirtualQConcatenateTablesProxyModel, index: gen_qabstractitemmodel_types.QModelIndex, roles: Table[cint,gen_qvariant_types.QVariant]): bool {.base.} =
  QConcatenateTablesProxyModelsetItemData(self[], index, roles)
proc miqt_exec_method_cQConcatenateTablesProxyModel_setItemData(vtbl: pointer, inst: pointer, index: pointer, roles: struct_miqt_map): bool {.cdecl.} =
  let vtbl = cast[VirtualQConcatenateTablesProxyModel](cast[uint](vtbl) - uint(offsetOf(VirtualQConcatenateTablesProxyModel, vtbl)))
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
  var virtualReturn = vtbl.setItemData(slotval1, slotval2)
  virtualReturn

method flags*(self: VirtualQConcatenateTablesProxyModel, index: gen_qabstractitemmodel_types.QModelIndex): cint {.base.} =
  QConcatenateTablesProxyModelflags(self[], index)
proc miqt_exec_method_cQConcatenateTablesProxyModel_flags(vtbl: pointer, inst: pointer, index: pointer): cint {.cdecl.} =
  let vtbl = cast[VirtualQConcatenateTablesProxyModel](cast[uint](vtbl) - uint(offsetOf(VirtualQConcatenateTablesProxyModel, vtbl)))
  let slotval1 = gen_qabstractitemmodel_types.QModelIndex(h: index, owned: false)
  var virtualReturn = vtbl.flags(slotval1)
  cint(virtualReturn)

method index*(self: VirtualQConcatenateTablesProxyModel, row: cint, column: cint, parent: gen_qabstractitemmodel_types.QModelIndex): gen_qabstractitemmodel_types.QModelIndex {.base.} =
  QConcatenateTablesProxyModelindex(self[], row, column, parent)
proc miqt_exec_method_cQConcatenateTablesProxyModel_index(vtbl: pointer, inst: pointer, row: cint, column: cint, parent: pointer): pointer {.cdecl.} =
  let vtbl = cast[VirtualQConcatenateTablesProxyModel](cast[uint](vtbl) - uint(offsetOf(VirtualQConcatenateTablesProxyModel, vtbl)))
  let slotval1 = row
  let slotval2 = column
  let slotval3 = gen_qabstractitemmodel_types.QModelIndex(h: parent, owned: false)
  var virtualReturn = vtbl.index(slotval1, slotval2, slotval3)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

method parent*(self: VirtualQConcatenateTablesProxyModel, index: gen_qabstractitemmodel_types.QModelIndex): gen_qabstractitemmodel_types.QModelIndex {.base.} =
  QConcatenateTablesProxyModelparent(self[], index)
proc miqt_exec_method_cQConcatenateTablesProxyModel_parent(vtbl: pointer, inst: pointer, index: pointer): pointer {.cdecl.} =
  let vtbl = cast[VirtualQConcatenateTablesProxyModel](cast[uint](vtbl) - uint(offsetOf(VirtualQConcatenateTablesProxyModel, vtbl)))
  let slotval1 = gen_qabstractitemmodel_types.QModelIndex(h: index, owned: false)
  var virtualReturn = vtbl.parent(slotval1)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

method rowCount*(self: VirtualQConcatenateTablesProxyModel, parent: gen_qabstractitemmodel_types.QModelIndex): cint {.base.} =
  QConcatenateTablesProxyModelrowCount(self[], parent)
proc miqt_exec_method_cQConcatenateTablesProxyModel_rowCount(vtbl: pointer, inst: pointer, parent: pointer): cint {.cdecl.} =
  let vtbl = cast[VirtualQConcatenateTablesProxyModel](cast[uint](vtbl) - uint(offsetOf(VirtualQConcatenateTablesProxyModel, vtbl)))
  let slotval1 = gen_qabstractitemmodel_types.QModelIndex(h: parent, owned: false)
  var virtualReturn = vtbl.rowCount(slotval1)
  virtualReturn

method headerData*(self: VirtualQConcatenateTablesProxyModel, section: cint, orientation: cint, role: cint): gen_qvariant_types.QVariant {.base.} =
  QConcatenateTablesProxyModelheaderData(self[], section, orientation, role)
proc miqt_exec_method_cQConcatenateTablesProxyModel_headerData(vtbl: pointer, inst: pointer, section: cint, orientation: cint, role: cint): pointer {.cdecl.} =
  let vtbl = cast[VirtualQConcatenateTablesProxyModel](cast[uint](vtbl) - uint(offsetOf(VirtualQConcatenateTablesProxyModel, vtbl)))
  let slotval1 = section
  let slotval2 = cint(orientation)
  let slotval3 = role
  var virtualReturn = vtbl.headerData(slotval1, slotval2, slotval3)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

method columnCount*(self: VirtualQConcatenateTablesProxyModel, parent: gen_qabstractitemmodel_types.QModelIndex): cint {.base.} =
  QConcatenateTablesProxyModelcolumnCount(self[], parent)
proc miqt_exec_method_cQConcatenateTablesProxyModel_columnCount(vtbl: pointer, inst: pointer, parent: pointer): cint {.cdecl.} =
  let vtbl = cast[VirtualQConcatenateTablesProxyModel](cast[uint](vtbl) - uint(offsetOf(VirtualQConcatenateTablesProxyModel, vtbl)))
  let slotval1 = gen_qabstractitemmodel_types.QModelIndex(h: parent, owned: false)
  var virtualReturn = vtbl.columnCount(slotval1)
  virtualReturn

method mimeTypes*(self: VirtualQConcatenateTablesProxyModel, ): seq[string] {.base.} =
  QConcatenateTablesProxyModelmimeTypes(self[])
proc miqt_exec_method_cQConcatenateTablesProxyModel_mimeTypes(vtbl: pointer, inst: pointer): struct_miqt_array {.cdecl.} =
  let vtbl = cast[VirtualQConcatenateTablesProxyModel](cast[uint](vtbl) - uint(offsetOf(VirtualQConcatenateTablesProxyModel, vtbl)))
  var virtualReturn = vtbl.mimeTypes()
  var virtualReturn_CArray = cast[ptr UncheckedArray[struct_miqt_string]](if len(virtualReturn) > 0: c_malloc(c_sizet(sizeof(struct_miqt_string) * len(virtualReturn))) else: nil)
  for i in 0..<len(virtualReturn):
    var virtualReturn_i_copy = cast[cstring](if len(virtualReturn[i]) > 0: c_malloc(csize_t(len(virtualReturn[i]))) else: nil)
    if len(virtualReturn[i]) > 0: copyMem(cast[pointer](virtualReturn_i_copy), addr virtualReturn[i][0], csize_t(len(virtualReturn[i])))
    virtualReturn_CArray[i] = struct_miqt_string(data: virtualReturn_i_copy, len: csize_t(len(virtualReturn[i])))

  struct_miqt_array(len: csize_t(len(virtualReturn)), data: if len(virtualReturn) == 0: nil else: addr(virtualReturn_CArray[0]))

method mimeData*(self: VirtualQConcatenateTablesProxyModel, indexes: seq[gen_qabstractitemmodel_types.QModelIndex]): gen_qmimedata_types.QMimeData {.base.} =
  QConcatenateTablesProxyModelmimeData(self[], indexes)
proc miqt_exec_method_cQConcatenateTablesProxyModel_mimeData(vtbl: pointer, inst: pointer, indexes: struct_miqt_array): pointer {.cdecl.} =
  let vtbl = cast[VirtualQConcatenateTablesProxyModel](cast[uint](vtbl) - uint(offsetOf(VirtualQConcatenateTablesProxyModel, vtbl)))
  var vindexes_ma = indexes
  var vindexesx_ret = newSeq[gen_qabstractitemmodel_types.QModelIndex](int(vindexes_ma.len))
  let vindexes_outCast = cast[ptr UncheckedArray[pointer]](vindexes_ma.data)
  for i in 0 ..< vindexes_ma.len:
    vindexesx_ret[i] = gen_qabstractitemmodel_types.QModelIndex(h: vindexes_outCast[i], owned: true)
  c_free(vindexes_ma.data)
  let slotval1 = vindexesx_ret
  var virtualReturn = vtbl.mimeData(slotval1)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

method canDropMimeData*(self: VirtualQConcatenateTablesProxyModel, data: gen_qmimedata_types.QMimeData, action: cint, row: cint, column: cint, parent: gen_qabstractitemmodel_types.QModelIndex): bool {.base.} =
  QConcatenateTablesProxyModelcanDropMimeData(self[], data, action, row, column, parent)
proc miqt_exec_method_cQConcatenateTablesProxyModel_canDropMimeData(vtbl: pointer, inst: pointer, data: pointer, action: cint, row: cint, column: cint, parent: pointer): bool {.cdecl.} =
  let vtbl = cast[VirtualQConcatenateTablesProxyModel](cast[uint](vtbl) - uint(offsetOf(VirtualQConcatenateTablesProxyModel, vtbl)))
  let slotval1 = gen_qmimedata_types.QMimeData(h: data, owned: false)
  let slotval2 = cint(action)
  let slotval3 = row
  let slotval4 = column
  let slotval5 = gen_qabstractitemmodel_types.QModelIndex(h: parent, owned: false)
  var virtualReturn = vtbl.canDropMimeData(slotval1, slotval2, slotval3, slotval4, slotval5)
  virtualReturn

method dropMimeData*(self: VirtualQConcatenateTablesProxyModel, data: gen_qmimedata_types.QMimeData, action: cint, row: cint, column: cint, parent: gen_qabstractitemmodel_types.QModelIndex): bool {.base.} =
  QConcatenateTablesProxyModeldropMimeData(self[], data, action, row, column, parent)
proc miqt_exec_method_cQConcatenateTablesProxyModel_dropMimeData(vtbl: pointer, inst: pointer, data: pointer, action: cint, row: cint, column: cint, parent: pointer): bool {.cdecl.} =
  let vtbl = cast[VirtualQConcatenateTablesProxyModel](cast[uint](vtbl) - uint(offsetOf(VirtualQConcatenateTablesProxyModel, vtbl)))
  let slotval1 = gen_qmimedata_types.QMimeData(h: data, owned: false)
  let slotval2 = cint(action)
  let slotval3 = row
  let slotval4 = column
  let slotval5 = gen_qabstractitemmodel_types.QModelIndex(h: parent, owned: false)
  var virtualReturn = vtbl.dropMimeData(slotval1, slotval2, slotval3, slotval4, slotval5)
  virtualReturn

method span*(self: VirtualQConcatenateTablesProxyModel, index: gen_qabstractitemmodel_types.QModelIndex): gen_qsize_types.QSize {.base.} =
  QConcatenateTablesProxyModelspan(self[], index)
proc miqt_exec_method_cQConcatenateTablesProxyModel_span(vtbl: pointer, inst: pointer, index: pointer): pointer {.cdecl.} =
  let vtbl = cast[VirtualQConcatenateTablesProxyModel](cast[uint](vtbl) - uint(offsetOf(VirtualQConcatenateTablesProxyModel, vtbl)))
  let slotval1 = gen_qabstractitemmodel_types.QModelIndex(h: index, owned: false)
  var virtualReturn = vtbl.span(slotval1)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

method sibling*(self: VirtualQConcatenateTablesProxyModel, row: cint, column: cint, idx: gen_qabstractitemmodel_types.QModelIndex): gen_qabstractitemmodel_types.QModelIndex {.base.} =
  QConcatenateTablesProxyModelsibling(self[], row, column, idx)
proc miqt_exec_method_cQConcatenateTablesProxyModel_sibling(vtbl: pointer, inst: pointer, row: cint, column: cint, idx: pointer): pointer {.cdecl.} =
  let vtbl = cast[VirtualQConcatenateTablesProxyModel](cast[uint](vtbl) - uint(offsetOf(VirtualQConcatenateTablesProxyModel, vtbl)))
  let slotval1 = row
  let slotval2 = column
  let slotval3 = gen_qabstractitemmodel_types.QModelIndex(h: idx, owned: false)
  var virtualReturn = vtbl.sibling(slotval1, slotval2, slotval3)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

method hasChildren*(self: VirtualQConcatenateTablesProxyModel, parent: gen_qabstractitemmodel_types.QModelIndex): bool {.base.} =
  QConcatenateTablesProxyModelhasChildren(self[], parent)
proc miqt_exec_method_cQConcatenateTablesProxyModel_hasChildren(vtbl: pointer, inst: pointer, parent: pointer): bool {.cdecl.} =
  let vtbl = cast[VirtualQConcatenateTablesProxyModel](cast[uint](vtbl) - uint(offsetOf(VirtualQConcatenateTablesProxyModel, vtbl)))
  let slotval1 = gen_qabstractitemmodel_types.QModelIndex(h: parent, owned: false)
  var virtualReturn = vtbl.hasChildren(slotval1)
  virtualReturn

method setHeaderData*(self: VirtualQConcatenateTablesProxyModel, section: cint, orientation: cint, value: gen_qvariant_types.QVariant, role: cint): bool {.base.} =
  QConcatenateTablesProxyModelsetHeaderData(self[], section, orientation, value, role)
proc miqt_exec_method_cQConcatenateTablesProxyModel_setHeaderData(vtbl: pointer, inst: pointer, section: cint, orientation: cint, value: pointer, role: cint): bool {.cdecl.} =
  let vtbl = cast[VirtualQConcatenateTablesProxyModel](cast[uint](vtbl) - uint(offsetOf(VirtualQConcatenateTablesProxyModel, vtbl)))
  let slotval1 = section
  let slotval2 = cint(orientation)
  let slotval3 = gen_qvariant_types.QVariant(h: value, owned: false)
  let slotval4 = role
  var virtualReturn = vtbl.setHeaderData(slotval1, slotval2, slotval3, slotval4)
  virtualReturn

method clearItemData*(self: VirtualQConcatenateTablesProxyModel, index: gen_qabstractitemmodel_types.QModelIndex): bool {.base.} =
  QConcatenateTablesProxyModelclearItemData(self[], index)
proc miqt_exec_method_cQConcatenateTablesProxyModel_clearItemData(vtbl: pointer, inst: pointer, index: pointer): bool {.cdecl.} =
  let vtbl = cast[VirtualQConcatenateTablesProxyModel](cast[uint](vtbl) - uint(offsetOf(VirtualQConcatenateTablesProxyModel, vtbl)))
  let slotval1 = gen_qabstractitemmodel_types.QModelIndex(h: index, owned: false)
  var virtualReturn = vtbl.clearItemData(slotval1)
  virtualReturn

method supportedDropActions*(self: VirtualQConcatenateTablesProxyModel, ): cint {.base.} =
  QConcatenateTablesProxyModelsupportedDropActions(self[])
proc miqt_exec_method_cQConcatenateTablesProxyModel_supportedDropActions(vtbl: pointer, inst: pointer): cint {.cdecl.} =
  let vtbl = cast[VirtualQConcatenateTablesProxyModel](cast[uint](vtbl) - uint(offsetOf(VirtualQConcatenateTablesProxyModel, vtbl)))
  var virtualReturn = vtbl.supportedDropActions()
  cint(virtualReturn)

method supportedDragActions*(self: VirtualQConcatenateTablesProxyModel, ): cint {.base.} =
  QConcatenateTablesProxyModelsupportedDragActions(self[])
proc miqt_exec_method_cQConcatenateTablesProxyModel_supportedDragActions(vtbl: pointer, inst: pointer): cint {.cdecl.} =
  let vtbl = cast[VirtualQConcatenateTablesProxyModel](cast[uint](vtbl) - uint(offsetOf(VirtualQConcatenateTablesProxyModel, vtbl)))
  var virtualReturn = vtbl.supportedDragActions()
  cint(virtualReturn)

method insertRows*(self: VirtualQConcatenateTablesProxyModel, row: cint, count: cint, parent: gen_qabstractitemmodel_types.QModelIndex): bool {.base.} =
  QConcatenateTablesProxyModelinsertRows(self[], row, count, parent)
proc miqt_exec_method_cQConcatenateTablesProxyModel_insertRows(vtbl: pointer, inst: pointer, row: cint, count: cint, parent: pointer): bool {.cdecl.} =
  let vtbl = cast[VirtualQConcatenateTablesProxyModel](cast[uint](vtbl) - uint(offsetOf(VirtualQConcatenateTablesProxyModel, vtbl)))
  let slotval1 = row
  let slotval2 = count
  let slotval3 = gen_qabstractitemmodel_types.QModelIndex(h: parent, owned: false)
  var virtualReturn = vtbl.insertRows(slotval1, slotval2, slotval3)
  virtualReturn

method insertColumns*(self: VirtualQConcatenateTablesProxyModel, column: cint, count: cint, parent: gen_qabstractitemmodel_types.QModelIndex): bool {.base.} =
  QConcatenateTablesProxyModelinsertColumns(self[], column, count, parent)
proc miqt_exec_method_cQConcatenateTablesProxyModel_insertColumns(vtbl: pointer, inst: pointer, column: cint, count: cint, parent: pointer): bool {.cdecl.} =
  let vtbl = cast[VirtualQConcatenateTablesProxyModel](cast[uint](vtbl) - uint(offsetOf(VirtualQConcatenateTablesProxyModel, vtbl)))
  let slotval1 = column
  let slotval2 = count
  let slotval3 = gen_qabstractitemmodel_types.QModelIndex(h: parent, owned: false)
  var virtualReturn = vtbl.insertColumns(slotval1, slotval2, slotval3)
  virtualReturn

method removeRows*(self: VirtualQConcatenateTablesProxyModel, row: cint, count: cint, parent: gen_qabstractitemmodel_types.QModelIndex): bool {.base.} =
  QConcatenateTablesProxyModelremoveRows(self[], row, count, parent)
proc miqt_exec_method_cQConcatenateTablesProxyModel_removeRows(vtbl: pointer, inst: pointer, row: cint, count: cint, parent: pointer): bool {.cdecl.} =
  let vtbl = cast[VirtualQConcatenateTablesProxyModel](cast[uint](vtbl) - uint(offsetOf(VirtualQConcatenateTablesProxyModel, vtbl)))
  let slotval1 = row
  let slotval2 = count
  let slotval3 = gen_qabstractitemmodel_types.QModelIndex(h: parent, owned: false)
  var virtualReturn = vtbl.removeRows(slotval1, slotval2, slotval3)
  virtualReturn

method removeColumns*(self: VirtualQConcatenateTablesProxyModel, column: cint, count: cint, parent: gen_qabstractitemmodel_types.QModelIndex): bool {.base.} =
  QConcatenateTablesProxyModelremoveColumns(self[], column, count, parent)
proc miqt_exec_method_cQConcatenateTablesProxyModel_removeColumns(vtbl: pointer, inst: pointer, column: cint, count: cint, parent: pointer): bool {.cdecl.} =
  let vtbl = cast[VirtualQConcatenateTablesProxyModel](cast[uint](vtbl) - uint(offsetOf(VirtualQConcatenateTablesProxyModel, vtbl)))
  let slotval1 = column
  let slotval2 = count
  let slotval3 = gen_qabstractitemmodel_types.QModelIndex(h: parent, owned: false)
  var virtualReturn = vtbl.removeColumns(slotval1, slotval2, slotval3)
  virtualReturn

method moveRows*(self: VirtualQConcatenateTablesProxyModel, sourceParent: gen_qabstractitemmodel_types.QModelIndex, sourceRow: cint, count: cint, destinationParent: gen_qabstractitemmodel_types.QModelIndex, destinationChild: cint): bool {.base.} =
  QConcatenateTablesProxyModelmoveRows(self[], sourceParent, sourceRow, count, destinationParent, destinationChild)
proc miqt_exec_method_cQConcatenateTablesProxyModel_moveRows(vtbl: pointer, inst: pointer, sourceParent: pointer, sourceRow: cint, count: cint, destinationParent: pointer, destinationChild: cint): bool {.cdecl.} =
  let vtbl = cast[VirtualQConcatenateTablesProxyModel](cast[uint](vtbl) - uint(offsetOf(VirtualQConcatenateTablesProxyModel, vtbl)))
  let slotval1 = gen_qabstractitemmodel_types.QModelIndex(h: sourceParent, owned: false)
  let slotval2 = sourceRow
  let slotval3 = count
  let slotval4 = gen_qabstractitemmodel_types.QModelIndex(h: destinationParent, owned: false)
  let slotval5 = destinationChild
  var virtualReturn = vtbl.moveRows(slotval1, slotval2, slotval3, slotval4, slotval5)
  virtualReturn

method moveColumns*(self: VirtualQConcatenateTablesProxyModel, sourceParent: gen_qabstractitemmodel_types.QModelIndex, sourceColumn: cint, count: cint, destinationParent: gen_qabstractitemmodel_types.QModelIndex, destinationChild: cint): bool {.base.} =
  QConcatenateTablesProxyModelmoveColumns(self[], sourceParent, sourceColumn, count, destinationParent, destinationChild)
proc miqt_exec_method_cQConcatenateTablesProxyModel_moveColumns(vtbl: pointer, inst: pointer, sourceParent: pointer, sourceColumn: cint, count: cint, destinationParent: pointer, destinationChild: cint): bool {.cdecl.} =
  let vtbl = cast[VirtualQConcatenateTablesProxyModel](cast[uint](vtbl) - uint(offsetOf(VirtualQConcatenateTablesProxyModel, vtbl)))
  let slotval1 = gen_qabstractitemmodel_types.QModelIndex(h: sourceParent, owned: false)
  let slotval2 = sourceColumn
  let slotval3 = count
  let slotval4 = gen_qabstractitemmodel_types.QModelIndex(h: destinationParent, owned: false)
  let slotval5 = destinationChild
  var virtualReturn = vtbl.moveColumns(slotval1, slotval2, slotval3, slotval4, slotval5)
  virtualReturn

method fetchMore*(self: VirtualQConcatenateTablesProxyModel, parent: gen_qabstractitemmodel_types.QModelIndex): void {.base.} =
  QConcatenateTablesProxyModelfetchMore(self[], parent)
proc miqt_exec_method_cQConcatenateTablesProxyModel_fetchMore(vtbl: pointer, inst: pointer, parent: pointer): void {.cdecl.} =
  let vtbl = cast[VirtualQConcatenateTablesProxyModel](cast[uint](vtbl) - uint(offsetOf(VirtualQConcatenateTablesProxyModel, vtbl)))
  let slotval1 = gen_qabstractitemmodel_types.QModelIndex(h: parent, owned: false)
  vtbl.fetchMore(slotval1)

method canFetchMore*(self: VirtualQConcatenateTablesProxyModel, parent: gen_qabstractitemmodel_types.QModelIndex): bool {.base.} =
  QConcatenateTablesProxyModelcanFetchMore(self[], parent)
proc miqt_exec_method_cQConcatenateTablesProxyModel_canFetchMore(vtbl: pointer, inst: pointer, parent: pointer): bool {.cdecl.} =
  let vtbl = cast[VirtualQConcatenateTablesProxyModel](cast[uint](vtbl) - uint(offsetOf(VirtualQConcatenateTablesProxyModel, vtbl)))
  let slotval1 = gen_qabstractitemmodel_types.QModelIndex(h: parent, owned: false)
  var virtualReturn = vtbl.canFetchMore(slotval1)
  virtualReturn

method sort*(self: VirtualQConcatenateTablesProxyModel, column: cint, order: cint): void {.base.} =
  QConcatenateTablesProxyModelsort(self[], column, order)
proc miqt_exec_method_cQConcatenateTablesProxyModel_sort(vtbl: pointer, inst: pointer, column: cint, order: cint): void {.cdecl.} =
  let vtbl = cast[VirtualQConcatenateTablesProxyModel](cast[uint](vtbl) - uint(offsetOf(VirtualQConcatenateTablesProxyModel, vtbl)))
  let slotval1 = column
  let slotval2 = cint(order)
  vtbl.sort(slotval1, slotval2)

method buddy*(self: VirtualQConcatenateTablesProxyModel, index: gen_qabstractitemmodel_types.QModelIndex): gen_qabstractitemmodel_types.QModelIndex {.base.} =
  QConcatenateTablesProxyModelbuddy(self[], index)
proc miqt_exec_method_cQConcatenateTablesProxyModel_buddy(vtbl: pointer, inst: pointer, index: pointer): pointer {.cdecl.} =
  let vtbl = cast[VirtualQConcatenateTablesProxyModel](cast[uint](vtbl) - uint(offsetOf(VirtualQConcatenateTablesProxyModel, vtbl)))
  let slotval1 = gen_qabstractitemmodel_types.QModelIndex(h: index, owned: false)
  var virtualReturn = vtbl.buddy(slotval1)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

method match*(self: VirtualQConcatenateTablesProxyModel, start: gen_qabstractitemmodel_types.QModelIndex, role: cint, value: gen_qvariant_types.QVariant, hits: cint, flags: cint): seq[gen_qabstractitemmodel_types.QModelIndex] {.base.} =
  QConcatenateTablesProxyModelmatch(self[], start, role, value, hits, flags)
proc miqt_exec_method_cQConcatenateTablesProxyModel_match(vtbl: pointer, inst: pointer, start: pointer, role: cint, value: pointer, hits: cint, flags: cint): struct_miqt_array {.cdecl.} =
  let vtbl = cast[VirtualQConcatenateTablesProxyModel](cast[uint](vtbl) - uint(offsetOf(VirtualQConcatenateTablesProxyModel, vtbl)))
  let slotval1 = gen_qabstractitemmodel_types.QModelIndex(h: start, owned: false)
  let slotval2 = role
  let slotval3 = gen_qvariant_types.QVariant(h: value, owned: false)
  let slotval4 = hits
  let slotval5 = cint(flags)
  var virtualReturn = vtbl.match(slotval1, slotval2, slotval3, slotval4, slotval5)
  var virtualReturn_CArray = cast[ptr UncheckedArray[pointer]](if len(virtualReturn) > 0: c_malloc(c_sizet(sizeof(pointer) * len(virtualReturn))) else: nil)
  for i in 0..<len(virtualReturn):
    virtualReturn[i].owned = false # TODO move?
    let virtualReturn_i_h = virtualReturn[i].h
    virtualReturn[i].h = nil
    virtualReturn_CArray[i] = virtualReturn_i_h

  struct_miqt_array(len: csize_t(len(virtualReturn)), data: if len(virtualReturn) == 0: nil else: addr(virtualReturn_CArray[0]))

method roleNames*(self: VirtualQConcatenateTablesProxyModel, ): Table[cint,seq[byte]] {.base.} =
  QConcatenateTablesProxyModelroleNames(self[])
proc miqt_exec_method_cQConcatenateTablesProxyModel_roleNames(vtbl: pointer, inst: pointer): struct_miqt_map {.cdecl.} =
  let vtbl = cast[VirtualQConcatenateTablesProxyModel](cast[uint](vtbl) - uint(offsetOf(VirtualQConcatenateTablesProxyModel, vtbl)))
  var virtualReturn = vtbl.roleNames()
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

method multiData*(self: VirtualQConcatenateTablesProxyModel, index: gen_qabstractitemmodel_types.QModelIndex, roleDataSpan: gen_qabstractitemmodel_types.QModelRoleDataSpan): void {.base.} =
  QConcatenateTablesProxyModelmultiData(self[], index, roleDataSpan)
proc miqt_exec_method_cQConcatenateTablesProxyModel_multiData(vtbl: pointer, inst: pointer, index: pointer, roleDataSpan: pointer): void {.cdecl.} =
  let vtbl = cast[VirtualQConcatenateTablesProxyModel](cast[uint](vtbl) - uint(offsetOf(VirtualQConcatenateTablesProxyModel, vtbl)))
  let slotval1 = gen_qabstractitemmodel_types.QModelIndex(h: index, owned: false)
  let slotval2 = gen_qabstractitemmodel_types.QModelRoleDataSpan(h: roleDataSpan, owned: true)
  vtbl.multiData(slotval1, slotval2)

method submit*(self: VirtualQConcatenateTablesProxyModel, ): bool {.base.} =
  QConcatenateTablesProxyModelsubmit(self[])
proc miqt_exec_method_cQConcatenateTablesProxyModel_submit(vtbl: pointer, inst: pointer): bool {.cdecl.} =
  let vtbl = cast[VirtualQConcatenateTablesProxyModel](cast[uint](vtbl) - uint(offsetOf(VirtualQConcatenateTablesProxyModel, vtbl)))
  var virtualReturn = vtbl.submit()
  virtualReturn

method revert*(self: VirtualQConcatenateTablesProxyModel, ): void {.base.} =
  QConcatenateTablesProxyModelrevert(self[])
proc miqt_exec_method_cQConcatenateTablesProxyModel_revert(vtbl: pointer, inst: pointer): void {.cdecl.} =
  let vtbl = cast[VirtualQConcatenateTablesProxyModel](cast[uint](vtbl) - uint(offsetOf(VirtualQConcatenateTablesProxyModel, vtbl)))
  vtbl.revert()

method resetInternalData*(self: VirtualQConcatenateTablesProxyModel, ): void {.base.} =
  QConcatenateTablesProxyModelresetInternalData(self[])
proc miqt_exec_method_cQConcatenateTablesProxyModel_resetInternalData(vtbl: pointer, inst: pointer): void {.cdecl.} =
  let vtbl = cast[VirtualQConcatenateTablesProxyModel](cast[uint](vtbl) - uint(offsetOf(VirtualQConcatenateTablesProxyModel, vtbl)))
  vtbl.resetInternalData()

method event*(self: VirtualQConcatenateTablesProxyModel, event: gen_qcoreevent_types.QEvent): bool {.base.} =
  QConcatenateTablesProxyModelevent(self[], event)
proc miqt_exec_method_cQConcatenateTablesProxyModel_event(vtbl: pointer, inst: pointer, event: pointer): bool {.cdecl.} =
  let vtbl = cast[VirtualQConcatenateTablesProxyModel](cast[uint](vtbl) - uint(offsetOf(VirtualQConcatenateTablesProxyModel, vtbl)))
  let slotval1 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  var virtualReturn = vtbl.event(slotval1)
  virtualReturn

method eventFilter*(self: VirtualQConcatenateTablesProxyModel, watched: gen_qobject_types.QObject, event: gen_qcoreevent_types.QEvent): bool {.base.} =
  QConcatenateTablesProxyModeleventFilter(self[], watched, event)
proc miqt_exec_method_cQConcatenateTablesProxyModel_eventFilter(vtbl: pointer, inst: pointer, watched: pointer, event: pointer): bool {.cdecl.} =
  let vtbl = cast[VirtualQConcatenateTablesProxyModel](cast[uint](vtbl) - uint(offsetOf(VirtualQConcatenateTablesProxyModel, vtbl)))
  let slotval1 = gen_qobject_types.QObject(h: watched, owned: false)
  let slotval2 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  var virtualReturn = vtbl.eventFilter(slotval1, slotval2)
  virtualReturn

method timerEvent*(self: VirtualQConcatenateTablesProxyModel, event: gen_qcoreevent_types.QTimerEvent): void {.base.} =
  QConcatenateTablesProxyModeltimerEvent(self[], event)
proc miqt_exec_method_cQConcatenateTablesProxyModel_timerEvent(vtbl: pointer, inst: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[VirtualQConcatenateTablesProxyModel](cast[uint](vtbl) - uint(offsetOf(VirtualQConcatenateTablesProxyModel, vtbl)))
  let slotval1 = gen_qcoreevent_types.QTimerEvent(h: event, owned: false)
  vtbl.timerEvent(slotval1)

method childEvent*(self: VirtualQConcatenateTablesProxyModel, event: gen_qcoreevent_types.QChildEvent): void {.base.} =
  QConcatenateTablesProxyModelchildEvent(self[], event)
proc miqt_exec_method_cQConcatenateTablesProxyModel_childEvent(vtbl: pointer, inst: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[VirtualQConcatenateTablesProxyModel](cast[uint](vtbl) - uint(offsetOf(VirtualQConcatenateTablesProxyModel, vtbl)))
  let slotval1 = gen_qcoreevent_types.QChildEvent(h: event, owned: false)
  vtbl.childEvent(slotval1)

method customEvent*(self: VirtualQConcatenateTablesProxyModel, event: gen_qcoreevent_types.QEvent): void {.base.} =
  QConcatenateTablesProxyModelcustomEvent(self[], event)
proc miqt_exec_method_cQConcatenateTablesProxyModel_customEvent(vtbl: pointer, inst: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[VirtualQConcatenateTablesProxyModel](cast[uint](vtbl) - uint(offsetOf(VirtualQConcatenateTablesProxyModel, vtbl)))
  let slotval1 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  vtbl.customEvent(slotval1)

method connectNotify*(self: VirtualQConcatenateTablesProxyModel, signal: gen_qmetaobject_types.QMetaMethod): void {.base.} =
  QConcatenateTablesProxyModelconnectNotify(self[], signal)
proc miqt_exec_method_cQConcatenateTablesProxyModel_connectNotify(vtbl: pointer, inst: pointer, signal: pointer): void {.cdecl.} =
  let vtbl = cast[VirtualQConcatenateTablesProxyModel](cast[uint](vtbl) - uint(offsetOf(VirtualQConcatenateTablesProxyModel, vtbl)))
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal, owned: false)
  vtbl.connectNotify(slotval1)

method disconnectNotify*(self: VirtualQConcatenateTablesProxyModel, signal: gen_qmetaobject_types.QMetaMethod): void {.base.} =
  QConcatenateTablesProxyModeldisconnectNotify(self[], signal)
proc miqt_exec_method_cQConcatenateTablesProxyModel_disconnectNotify(vtbl: pointer, inst: pointer, signal: pointer): void {.cdecl.} =
  let vtbl = cast[VirtualQConcatenateTablesProxyModel](cast[uint](vtbl) - uint(offsetOf(VirtualQConcatenateTablesProxyModel, vtbl)))
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal, owned: false)
  vtbl.disconnectNotify(slotval1)

proc createIndex*(self: gen_qconcatenatetablesproxymodel_types.QConcatenateTablesProxyModel, row: cint, column: cint): gen_qabstractitemmodel_types.QModelIndex =
  gen_qabstractitemmodel_types.QModelIndex(h: fcQConcatenateTablesProxyModel_protectedbase_createIndex(self.h, row, column), owned: true)

proc encodeData*(self: gen_qconcatenatetablesproxymodel_types.QConcatenateTablesProxyModel, indexes: seq[gen_qabstractitemmodel_types.QModelIndex], stream: gen_qdatastream_types.QDataStream): void =
  var indexes_CArray = newSeq[pointer](len(indexes))
  for i in 0..<len(indexes):
    indexes_CArray[i] = indexes[i].h

  fcQConcatenateTablesProxyModel_protectedbase_encodeData(self.h, struct_miqt_array(len: csize_t(len(indexes)), data: if len(indexes) == 0: nil else: addr(indexes_CArray[0])), stream.h)

proc decodeData*(self: gen_qconcatenatetablesproxymodel_types.QConcatenateTablesProxyModel, row: cint, column: cint, parent: gen_qabstractitemmodel_types.QModelIndex, stream: gen_qdatastream_types.QDataStream): bool =
  fcQConcatenateTablesProxyModel_protectedbase_decodeData(self.h, row, column, parent.h, stream.h)

proc beginInsertRows*(self: gen_qconcatenatetablesproxymodel_types.QConcatenateTablesProxyModel, parent: gen_qabstractitemmodel_types.QModelIndex, first: cint, last: cint): void =
  fcQConcatenateTablesProxyModel_protectedbase_beginInsertRows(self.h, parent.h, first, last)

proc endInsertRows*(self: gen_qconcatenatetablesproxymodel_types.QConcatenateTablesProxyModel, ): void =
  fcQConcatenateTablesProxyModel_protectedbase_endInsertRows(self.h)

proc beginRemoveRows*(self: gen_qconcatenatetablesproxymodel_types.QConcatenateTablesProxyModel, parent: gen_qabstractitemmodel_types.QModelIndex, first: cint, last: cint): void =
  fcQConcatenateTablesProxyModel_protectedbase_beginRemoveRows(self.h, parent.h, first, last)

proc endRemoveRows*(self: gen_qconcatenatetablesproxymodel_types.QConcatenateTablesProxyModel, ): void =
  fcQConcatenateTablesProxyModel_protectedbase_endRemoveRows(self.h)

proc beginMoveRows*(self: gen_qconcatenatetablesproxymodel_types.QConcatenateTablesProxyModel, sourceParent: gen_qabstractitemmodel_types.QModelIndex, sourceFirst: cint, sourceLast: cint, destinationParent: gen_qabstractitemmodel_types.QModelIndex, destinationRow: cint): bool =
  fcQConcatenateTablesProxyModel_protectedbase_beginMoveRows(self.h, sourceParent.h, sourceFirst, sourceLast, destinationParent.h, destinationRow)

proc endMoveRows*(self: gen_qconcatenatetablesproxymodel_types.QConcatenateTablesProxyModel, ): void =
  fcQConcatenateTablesProxyModel_protectedbase_endMoveRows(self.h)

proc beginInsertColumns*(self: gen_qconcatenatetablesproxymodel_types.QConcatenateTablesProxyModel, parent: gen_qabstractitemmodel_types.QModelIndex, first: cint, last: cint): void =
  fcQConcatenateTablesProxyModel_protectedbase_beginInsertColumns(self.h, parent.h, first, last)

proc endInsertColumns*(self: gen_qconcatenatetablesproxymodel_types.QConcatenateTablesProxyModel, ): void =
  fcQConcatenateTablesProxyModel_protectedbase_endInsertColumns(self.h)

proc beginRemoveColumns*(self: gen_qconcatenatetablesproxymodel_types.QConcatenateTablesProxyModel, parent: gen_qabstractitemmodel_types.QModelIndex, first: cint, last: cint): void =
  fcQConcatenateTablesProxyModel_protectedbase_beginRemoveColumns(self.h, parent.h, first, last)

proc endRemoveColumns*(self: gen_qconcatenatetablesproxymodel_types.QConcatenateTablesProxyModel, ): void =
  fcQConcatenateTablesProxyModel_protectedbase_endRemoveColumns(self.h)

proc beginMoveColumns*(self: gen_qconcatenatetablesproxymodel_types.QConcatenateTablesProxyModel, sourceParent: gen_qabstractitemmodel_types.QModelIndex, sourceFirst: cint, sourceLast: cint, destinationParent: gen_qabstractitemmodel_types.QModelIndex, destinationColumn: cint): bool =
  fcQConcatenateTablesProxyModel_protectedbase_beginMoveColumns(self.h, sourceParent.h, sourceFirst, sourceLast, destinationParent.h, destinationColumn)

proc endMoveColumns*(self: gen_qconcatenatetablesproxymodel_types.QConcatenateTablesProxyModel, ): void =
  fcQConcatenateTablesProxyModel_protectedbase_endMoveColumns(self.h)

proc beginResetModel*(self: gen_qconcatenatetablesproxymodel_types.QConcatenateTablesProxyModel, ): void =
  fcQConcatenateTablesProxyModel_protectedbase_beginResetModel(self.h)

proc endResetModel*(self: gen_qconcatenatetablesproxymodel_types.QConcatenateTablesProxyModel, ): void =
  fcQConcatenateTablesProxyModel_protectedbase_endResetModel(self.h)

proc changePersistentIndex*(self: gen_qconcatenatetablesproxymodel_types.QConcatenateTablesProxyModel, fromVal: gen_qabstractitemmodel_types.QModelIndex, to: gen_qabstractitemmodel_types.QModelIndex): void =
  fcQConcatenateTablesProxyModel_protectedbase_changePersistentIndex(self.h, fromVal.h, to.h)

proc changePersistentIndexList*(self: gen_qconcatenatetablesproxymodel_types.QConcatenateTablesProxyModel, fromVal: seq[gen_qabstractitemmodel_types.QModelIndex], to: seq[gen_qabstractitemmodel_types.QModelIndex]): void =
  var fromVal_CArray = newSeq[pointer](len(fromVal))
  for i in 0..<len(fromVal):
    fromVal_CArray[i] = fromVal[i].h

  var to_CArray = newSeq[pointer](len(to))
  for i in 0..<len(to):
    to_CArray[i] = to[i].h

  fcQConcatenateTablesProxyModel_protectedbase_changePersistentIndexList(self.h, struct_miqt_array(len: csize_t(len(fromVal)), data: if len(fromVal) == 0: nil else: addr(fromVal_CArray[0])), struct_miqt_array(len: csize_t(len(to)), data: if len(to) == 0: nil else: addr(to_CArray[0])))

proc persistentIndexList*(self: gen_qconcatenatetablesproxymodel_types.QConcatenateTablesProxyModel, ): seq[gen_qabstractitemmodel_types.QModelIndex] =
  var v_ma = fcQConcatenateTablesProxyModel_protectedbase_persistentIndexList(self.h)
  var vx_ret = newSeq[gen_qabstractitemmodel_types.QModelIndex](int(v_ma.len))
  let v_outCast = cast[ptr UncheckedArray[pointer]](v_ma.data)
  for i in 0 ..< v_ma.len:
    vx_ret[i] = gen_qabstractitemmodel_types.QModelIndex(h: v_outCast[i], owned: true)
  c_free(v_ma.data)
  vx_ret

proc sender*(self: gen_qconcatenatetablesproxymodel_types.QConcatenateTablesProxyModel, ): gen_qobject_types.QObject =
  gen_qobject_types.QObject(h: fcQConcatenateTablesProxyModel_protectedbase_sender(self.h), owned: false)

proc senderSignalIndex*(self: gen_qconcatenatetablesproxymodel_types.QConcatenateTablesProxyModel, ): cint =
  fcQConcatenateTablesProxyModel_protectedbase_senderSignalIndex(self.h)

proc receivers*(self: gen_qconcatenatetablesproxymodel_types.QConcatenateTablesProxyModel, signal: cstring): cint =
  fcQConcatenateTablesProxyModel_protectedbase_receivers(self.h, signal)

proc isSignalConnected*(self: gen_qconcatenatetablesproxymodel_types.QConcatenateTablesProxyModel, signal: gen_qmetaobject_types.QMetaMethod): bool =
  fcQConcatenateTablesProxyModel_protectedbase_isSignalConnected(self.h, signal.h)

proc create*(T: type gen_qconcatenatetablesproxymodel_types.QConcatenateTablesProxyModel,
    vtbl: ref QConcatenateTablesProxyModelVTable = nil): gen_qconcatenatetablesproxymodel_types.QConcatenateTablesProxyModel =
  let vtbl = if vtbl == nil: new QConcatenateTablesProxyModelVTable else: vtbl
  GC_ref(vtbl)
  vtbl[].vtbl.destructor = proc(vtbl: ptr cQConcatenateTablesProxyModelVTable, _: ptr cQConcatenateTablesProxyModel) {.cdecl.} =
    let vtbl = cast[ref QConcatenateTablesProxyModelVTable](vtbl)
    GC_unref(vtbl)
  if not isNil(vtbl[].metaObject):
    vtbl[].vtbl.metaObject = miqt_exec_callback_cQConcatenateTablesProxyModel_metaObject
  if not isNil(vtbl[].metacast):
    vtbl[].vtbl.metacast = miqt_exec_callback_cQConcatenateTablesProxyModel_metacast
  if not isNil(vtbl[].metacall):
    vtbl[].vtbl.metacall = miqt_exec_callback_cQConcatenateTablesProxyModel_metacall
  if not isNil(vtbl[].data):
    vtbl[].vtbl.data = miqt_exec_callback_cQConcatenateTablesProxyModel_data
  if not isNil(vtbl[].setData):
    vtbl[].vtbl.setData = miqt_exec_callback_cQConcatenateTablesProxyModel_setData
  if not isNil(vtbl[].itemData):
    vtbl[].vtbl.itemData = miqt_exec_callback_cQConcatenateTablesProxyModel_itemData
  if not isNil(vtbl[].setItemData):
    vtbl[].vtbl.setItemData = miqt_exec_callback_cQConcatenateTablesProxyModel_setItemData
  if not isNil(vtbl[].flags):
    vtbl[].vtbl.flags = miqt_exec_callback_cQConcatenateTablesProxyModel_flags
  if not isNil(vtbl[].index):
    vtbl[].vtbl.index = miqt_exec_callback_cQConcatenateTablesProxyModel_index
  if not isNil(vtbl[].parent):
    vtbl[].vtbl.parent = miqt_exec_callback_cQConcatenateTablesProxyModel_parent
  if not isNil(vtbl[].rowCount):
    vtbl[].vtbl.rowCount = miqt_exec_callback_cQConcatenateTablesProxyModel_rowCount
  if not isNil(vtbl[].headerData):
    vtbl[].vtbl.headerData = miqt_exec_callback_cQConcatenateTablesProxyModel_headerData
  if not isNil(vtbl[].columnCount):
    vtbl[].vtbl.columnCount = miqt_exec_callback_cQConcatenateTablesProxyModel_columnCount
  if not isNil(vtbl[].mimeTypes):
    vtbl[].vtbl.mimeTypes = miqt_exec_callback_cQConcatenateTablesProxyModel_mimeTypes
  if not isNil(vtbl[].mimeData):
    vtbl[].vtbl.mimeData = miqt_exec_callback_cQConcatenateTablesProxyModel_mimeData
  if not isNil(vtbl[].canDropMimeData):
    vtbl[].vtbl.canDropMimeData = miqt_exec_callback_cQConcatenateTablesProxyModel_canDropMimeData
  if not isNil(vtbl[].dropMimeData):
    vtbl[].vtbl.dropMimeData = miqt_exec_callback_cQConcatenateTablesProxyModel_dropMimeData
  if not isNil(vtbl[].span):
    vtbl[].vtbl.span = miqt_exec_callback_cQConcatenateTablesProxyModel_span
  if not isNil(vtbl[].sibling):
    vtbl[].vtbl.sibling = miqt_exec_callback_cQConcatenateTablesProxyModel_sibling
  if not isNil(vtbl[].hasChildren):
    vtbl[].vtbl.hasChildren = miqt_exec_callback_cQConcatenateTablesProxyModel_hasChildren
  if not isNil(vtbl[].setHeaderData):
    vtbl[].vtbl.setHeaderData = miqt_exec_callback_cQConcatenateTablesProxyModel_setHeaderData
  if not isNil(vtbl[].clearItemData):
    vtbl[].vtbl.clearItemData = miqt_exec_callback_cQConcatenateTablesProxyModel_clearItemData
  if not isNil(vtbl[].supportedDropActions):
    vtbl[].vtbl.supportedDropActions = miqt_exec_callback_cQConcatenateTablesProxyModel_supportedDropActions
  if not isNil(vtbl[].supportedDragActions):
    vtbl[].vtbl.supportedDragActions = miqt_exec_callback_cQConcatenateTablesProxyModel_supportedDragActions
  if not isNil(vtbl[].insertRows):
    vtbl[].vtbl.insertRows = miqt_exec_callback_cQConcatenateTablesProxyModel_insertRows
  if not isNil(vtbl[].insertColumns):
    vtbl[].vtbl.insertColumns = miqt_exec_callback_cQConcatenateTablesProxyModel_insertColumns
  if not isNil(vtbl[].removeRows):
    vtbl[].vtbl.removeRows = miqt_exec_callback_cQConcatenateTablesProxyModel_removeRows
  if not isNil(vtbl[].removeColumns):
    vtbl[].vtbl.removeColumns = miqt_exec_callback_cQConcatenateTablesProxyModel_removeColumns
  if not isNil(vtbl[].moveRows):
    vtbl[].vtbl.moveRows = miqt_exec_callback_cQConcatenateTablesProxyModel_moveRows
  if not isNil(vtbl[].moveColumns):
    vtbl[].vtbl.moveColumns = miqt_exec_callback_cQConcatenateTablesProxyModel_moveColumns
  if not isNil(vtbl[].fetchMore):
    vtbl[].vtbl.fetchMore = miqt_exec_callback_cQConcatenateTablesProxyModel_fetchMore
  if not isNil(vtbl[].canFetchMore):
    vtbl[].vtbl.canFetchMore = miqt_exec_callback_cQConcatenateTablesProxyModel_canFetchMore
  if not isNil(vtbl[].sort):
    vtbl[].vtbl.sort = miqt_exec_callback_cQConcatenateTablesProxyModel_sort
  if not isNil(vtbl[].buddy):
    vtbl[].vtbl.buddy = miqt_exec_callback_cQConcatenateTablesProxyModel_buddy
  if not isNil(vtbl[].match):
    vtbl[].vtbl.match = miqt_exec_callback_cQConcatenateTablesProxyModel_match
  if not isNil(vtbl[].roleNames):
    vtbl[].vtbl.roleNames = miqt_exec_callback_cQConcatenateTablesProxyModel_roleNames
  if not isNil(vtbl[].multiData):
    vtbl[].vtbl.multiData = miqt_exec_callback_cQConcatenateTablesProxyModel_multiData
  if not isNil(vtbl[].submit):
    vtbl[].vtbl.submit = miqt_exec_callback_cQConcatenateTablesProxyModel_submit
  if not isNil(vtbl[].revert):
    vtbl[].vtbl.revert = miqt_exec_callback_cQConcatenateTablesProxyModel_revert
  if not isNil(vtbl[].resetInternalData):
    vtbl[].vtbl.resetInternalData = miqt_exec_callback_cQConcatenateTablesProxyModel_resetInternalData
  if not isNil(vtbl[].event):
    vtbl[].vtbl.event = miqt_exec_callback_cQConcatenateTablesProxyModel_event
  if not isNil(vtbl[].eventFilter):
    vtbl[].vtbl.eventFilter = miqt_exec_callback_cQConcatenateTablesProxyModel_eventFilter
  if not isNil(vtbl[].timerEvent):
    vtbl[].vtbl.timerEvent = miqt_exec_callback_cQConcatenateTablesProxyModel_timerEvent
  if not isNil(vtbl[].childEvent):
    vtbl[].vtbl.childEvent = miqt_exec_callback_cQConcatenateTablesProxyModel_childEvent
  if not isNil(vtbl[].customEvent):
    vtbl[].vtbl.customEvent = miqt_exec_callback_cQConcatenateTablesProxyModel_customEvent
  if not isNil(vtbl[].connectNotify):
    vtbl[].vtbl.connectNotify = miqt_exec_callback_cQConcatenateTablesProxyModel_connectNotify
  if not isNil(vtbl[].disconnectNotify):
    vtbl[].vtbl.disconnectNotify = miqt_exec_callback_cQConcatenateTablesProxyModel_disconnectNotify
  gen_qconcatenatetablesproxymodel_types.QConcatenateTablesProxyModel(h: fcQConcatenateTablesProxyModel_new(addr(vtbl[].vtbl), ), owned: true)

proc create*(T: type gen_qconcatenatetablesproxymodel_types.QConcatenateTablesProxyModel,
    parent: gen_qobject_types.QObject,
    vtbl: ref QConcatenateTablesProxyModelVTable = nil): gen_qconcatenatetablesproxymodel_types.QConcatenateTablesProxyModel =
  let vtbl = if vtbl == nil: new QConcatenateTablesProxyModelVTable else: vtbl
  GC_ref(vtbl)
  vtbl[].vtbl.destructor = proc(vtbl: ptr cQConcatenateTablesProxyModelVTable, _: ptr cQConcatenateTablesProxyModel) {.cdecl.} =
    let vtbl = cast[ref QConcatenateTablesProxyModelVTable](vtbl)
    GC_unref(vtbl)
  if not isNil(vtbl[].metaObject):
    vtbl[].vtbl.metaObject = miqt_exec_callback_cQConcatenateTablesProxyModel_metaObject
  if not isNil(vtbl[].metacast):
    vtbl[].vtbl.metacast = miqt_exec_callback_cQConcatenateTablesProxyModel_metacast
  if not isNil(vtbl[].metacall):
    vtbl[].vtbl.metacall = miqt_exec_callback_cQConcatenateTablesProxyModel_metacall
  if not isNil(vtbl[].data):
    vtbl[].vtbl.data = miqt_exec_callback_cQConcatenateTablesProxyModel_data
  if not isNil(vtbl[].setData):
    vtbl[].vtbl.setData = miqt_exec_callback_cQConcatenateTablesProxyModel_setData
  if not isNil(vtbl[].itemData):
    vtbl[].vtbl.itemData = miqt_exec_callback_cQConcatenateTablesProxyModel_itemData
  if not isNil(vtbl[].setItemData):
    vtbl[].vtbl.setItemData = miqt_exec_callback_cQConcatenateTablesProxyModel_setItemData
  if not isNil(vtbl[].flags):
    vtbl[].vtbl.flags = miqt_exec_callback_cQConcatenateTablesProxyModel_flags
  if not isNil(vtbl[].index):
    vtbl[].vtbl.index = miqt_exec_callback_cQConcatenateTablesProxyModel_index
  if not isNil(vtbl[].parent):
    vtbl[].vtbl.parent = miqt_exec_callback_cQConcatenateTablesProxyModel_parent
  if not isNil(vtbl[].rowCount):
    vtbl[].vtbl.rowCount = miqt_exec_callback_cQConcatenateTablesProxyModel_rowCount
  if not isNil(vtbl[].headerData):
    vtbl[].vtbl.headerData = miqt_exec_callback_cQConcatenateTablesProxyModel_headerData
  if not isNil(vtbl[].columnCount):
    vtbl[].vtbl.columnCount = miqt_exec_callback_cQConcatenateTablesProxyModel_columnCount
  if not isNil(vtbl[].mimeTypes):
    vtbl[].vtbl.mimeTypes = miqt_exec_callback_cQConcatenateTablesProxyModel_mimeTypes
  if not isNil(vtbl[].mimeData):
    vtbl[].vtbl.mimeData = miqt_exec_callback_cQConcatenateTablesProxyModel_mimeData
  if not isNil(vtbl[].canDropMimeData):
    vtbl[].vtbl.canDropMimeData = miqt_exec_callback_cQConcatenateTablesProxyModel_canDropMimeData
  if not isNil(vtbl[].dropMimeData):
    vtbl[].vtbl.dropMimeData = miqt_exec_callback_cQConcatenateTablesProxyModel_dropMimeData
  if not isNil(vtbl[].span):
    vtbl[].vtbl.span = miqt_exec_callback_cQConcatenateTablesProxyModel_span
  if not isNil(vtbl[].sibling):
    vtbl[].vtbl.sibling = miqt_exec_callback_cQConcatenateTablesProxyModel_sibling
  if not isNil(vtbl[].hasChildren):
    vtbl[].vtbl.hasChildren = miqt_exec_callback_cQConcatenateTablesProxyModel_hasChildren
  if not isNil(vtbl[].setHeaderData):
    vtbl[].vtbl.setHeaderData = miqt_exec_callback_cQConcatenateTablesProxyModel_setHeaderData
  if not isNil(vtbl[].clearItemData):
    vtbl[].vtbl.clearItemData = miqt_exec_callback_cQConcatenateTablesProxyModel_clearItemData
  if not isNil(vtbl[].supportedDropActions):
    vtbl[].vtbl.supportedDropActions = miqt_exec_callback_cQConcatenateTablesProxyModel_supportedDropActions
  if not isNil(vtbl[].supportedDragActions):
    vtbl[].vtbl.supportedDragActions = miqt_exec_callback_cQConcatenateTablesProxyModel_supportedDragActions
  if not isNil(vtbl[].insertRows):
    vtbl[].vtbl.insertRows = miqt_exec_callback_cQConcatenateTablesProxyModel_insertRows
  if not isNil(vtbl[].insertColumns):
    vtbl[].vtbl.insertColumns = miqt_exec_callback_cQConcatenateTablesProxyModel_insertColumns
  if not isNil(vtbl[].removeRows):
    vtbl[].vtbl.removeRows = miqt_exec_callback_cQConcatenateTablesProxyModel_removeRows
  if not isNil(vtbl[].removeColumns):
    vtbl[].vtbl.removeColumns = miqt_exec_callback_cQConcatenateTablesProxyModel_removeColumns
  if not isNil(vtbl[].moveRows):
    vtbl[].vtbl.moveRows = miqt_exec_callback_cQConcatenateTablesProxyModel_moveRows
  if not isNil(vtbl[].moveColumns):
    vtbl[].vtbl.moveColumns = miqt_exec_callback_cQConcatenateTablesProxyModel_moveColumns
  if not isNil(vtbl[].fetchMore):
    vtbl[].vtbl.fetchMore = miqt_exec_callback_cQConcatenateTablesProxyModel_fetchMore
  if not isNil(vtbl[].canFetchMore):
    vtbl[].vtbl.canFetchMore = miqt_exec_callback_cQConcatenateTablesProxyModel_canFetchMore
  if not isNil(vtbl[].sort):
    vtbl[].vtbl.sort = miqt_exec_callback_cQConcatenateTablesProxyModel_sort
  if not isNil(vtbl[].buddy):
    vtbl[].vtbl.buddy = miqt_exec_callback_cQConcatenateTablesProxyModel_buddy
  if not isNil(vtbl[].match):
    vtbl[].vtbl.match = miqt_exec_callback_cQConcatenateTablesProxyModel_match
  if not isNil(vtbl[].roleNames):
    vtbl[].vtbl.roleNames = miqt_exec_callback_cQConcatenateTablesProxyModel_roleNames
  if not isNil(vtbl[].multiData):
    vtbl[].vtbl.multiData = miqt_exec_callback_cQConcatenateTablesProxyModel_multiData
  if not isNil(vtbl[].submit):
    vtbl[].vtbl.submit = miqt_exec_callback_cQConcatenateTablesProxyModel_submit
  if not isNil(vtbl[].revert):
    vtbl[].vtbl.revert = miqt_exec_callback_cQConcatenateTablesProxyModel_revert
  if not isNil(vtbl[].resetInternalData):
    vtbl[].vtbl.resetInternalData = miqt_exec_callback_cQConcatenateTablesProxyModel_resetInternalData
  if not isNil(vtbl[].event):
    vtbl[].vtbl.event = miqt_exec_callback_cQConcatenateTablesProxyModel_event
  if not isNil(vtbl[].eventFilter):
    vtbl[].vtbl.eventFilter = miqt_exec_callback_cQConcatenateTablesProxyModel_eventFilter
  if not isNil(vtbl[].timerEvent):
    vtbl[].vtbl.timerEvent = miqt_exec_callback_cQConcatenateTablesProxyModel_timerEvent
  if not isNil(vtbl[].childEvent):
    vtbl[].vtbl.childEvent = miqt_exec_callback_cQConcatenateTablesProxyModel_childEvent
  if not isNil(vtbl[].customEvent):
    vtbl[].vtbl.customEvent = miqt_exec_callback_cQConcatenateTablesProxyModel_customEvent
  if not isNil(vtbl[].connectNotify):
    vtbl[].vtbl.connectNotify = miqt_exec_callback_cQConcatenateTablesProxyModel_connectNotify
  if not isNil(vtbl[].disconnectNotify):
    vtbl[].vtbl.disconnectNotify = miqt_exec_callback_cQConcatenateTablesProxyModel_disconnectNotify
  gen_qconcatenatetablesproxymodel_types.QConcatenateTablesProxyModel(h: fcQConcatenateTablesProxyModel_new2(addr(vtbl[].vtbl), parent.h), owned: true)

proc create*(T: type gen_qconcatenatetablesproxymodel_types.QConcatenateTablesProxyModel,
    vtbl: VirtualQConcatenateTablesProxyModel) =

  vtbl[].vtbl.destructor = proc(vtbl: ptr cQConcatenateTablesProxyModelVTable, _: ptr cQConcatenateTablesProxyModel) {.cdecl.} =
    let vtbl = cast[ptr typeof(VirtualQConcatenateTablesProxyModel()[])](cast[uint](vtbl) - uint(offsetOf(VirtualQConcatenateTablesProxyModel, vtbl)))
    vtbl[].h = nil
    vtbl[].owned = false
  vtbl[].vtbl.metaObject = miqt_exec_method_cQConcatenateTablesProxyModel_metaObject
  vtbl[].vtbl.metacast = miqt_exec_method_cQConcatenateTablesProxyModel_metacast
  vtbl[].vtbl.metacall = miqt_exec_method_cQConcatenateTablesProxyModel_metacall
  vtbl[].vtbl.data = miqt_exec_method_cQConcatenateTablesProxyModel_data
  vtbl[].vtbl.setData = miqt_exec_method_cQConcatenateTablesProxyModel_setData
  vtbl[].vtbl.itemData = miqt_exec_method_cQConcatenateTablesProxyModel_itemData
  vtbl[].vtbl.setItemData = miqt_exec_method_cQConcatenateTablesProxyModel_setItemData
  vtbl[].vtbl.flags = miqt_exec_method_cQConcatenateTablesProxyModel_flags
  vtbl[].vtbl.index = miqt_exec_method_cQConcatenateTablesProxyModel_index
  vtbl[].vtbl.parent = miqt_exec_method_cQConcatenateTablesProxyModel_parent
  vtbl[].vtbl.rowCount = miqt_exec_method_cQConcatenateTablesProxyModel_rowCount
  vtbl[].vtbl.headerData = miqt_exec_method_cQConcatenateTablesProxyModel_headerData
  vtbl[].vtbl.columnCount = miqt_exec_method_cQConcatenateTablesProxyModel_columnCount
  vtbl[].vtbl.mimeTypes = miqt_exec_method_cQConcatenateTablesProxyModel_mimeTypes
  vtbl[].vtbl.mimeData = miqt_exec_method_cQConcatenateTablesProxyModel_mimeData
  vtbl[].vtbl.canDropMimeData = miqt_exec_method_cQConcatenateTablesProxyModel_canDropMimeData
  vtbl[].vtbl.dropMimeData = miqt_exec_method_cQConcatenateTablesProxyModel_dropMimeData
  vtbl[].vtbl.span = miqt_exec_method_cQConcatenateTablesProxyModel_span
  vtbl[].vtbl.sibling = miqt_exec_method_cQConcatenateTablesProxyModel_sibling
  vtbl[].vtbl.hasChildren = miqt_exec_method_cQConcatenateTablesProxyModel_hasChildren
  vtbl[].vtbl.setHeaderData = miqt_exec_method_cQConcatenateTablesProxyModel_setHeaderData
  vtbl[].vtbl.clearItemData = miqt_exec_method_cQConcatenateTablesProxyModel_clearItemData
  vtbl[].vtbl.supportedDropActions = miqt_exec_method_cQConcatenateTablesProxyModel_supportedDropActions
  vtbl[].vtbl.supportedDragActions = miqt_exec_method_cQConcatenateTablesProxyModel_supportedDragActions
  vtbl[].vtbl.insertRows = miqt_exec_method_cQConcatenateTablesProxyModel_insertRows
  vtbl[].vtbl.insertColumns = miqt_exec_method_cQConcatenateTablesProxyModel_insertColumns
  vtbl[].vtbl.removeRows = miqt_exec_method_cQConcatenateTablesProxyModel_removeRows
  vtbl[].vtbl.removeColumns = miqt_exec_method_cQConcatenateTablesProxyModel_removeColumns
  vtbl[].vtbl.moveRows = miqt_exec_method_cQConcatenateTablesProxyModel_moveRows
  vtbl[].vtbl.moveColumns = miqt_exec_method_cQConcatenateTablesProxyModel_moveColumns
  vtbl[].vtbl.fetchMore = miqt_exec_method_cQConcatenateTablesProxyModel_fetchMore
  vtbl[].vtbl.canFetchMore = miqt_exec_method_cQConcatenateTablesProxyModel_canFetchMore
  vtbl[].vtbl.sort = miqt_exec_method_cQConcatenateTablesProxyModel_sort
  vtbl[].vtbl.buddy = miqt_exec_method_cQConcatenateTablesProxyModel_buddy
  vtbl[].vtbl.match = miqt_exec_method_cQConcatenateTablesProxyModel_match
  vtbl[].vtbl.roleNames = miqt_exec_method_cQConcatenateTablesProxyModel_roleNames
  vtbl[].vtbl.multiData = miqt_exec_method_cQConcatenateTablesProxyModel_multiData
  vtbl[].vtbl.submit = miqt_exec_method_cQConcatenateTablesProxyModel_submit
  vtbl[].vtbl.revert = miqt_exec_method_cQConcatenateTablesProxyModel_revert
  vtbl[].vtbl.resetInternalData = miqt_exec_method_cQConcatenateTablesProxyModel_resetInternalData
  vtbl[].vtbl.event = miqt_exec_method_cQConcatenateTablesProxyModel_event
  vtbl[].vtbl.eventFilter = miqt_exec_method_cQConcatenateTablesProxyModel_eventFilter
  vtbl[].vtbl.timerEvent = miqt_exec_method_cQConcatenateTablesProxyModel_timerEvent
  vtbl[].vtbl.childEvent = miqt_exec_method_cQConcatenateTablesProxyModel_childEvent
  vtbl[].vtbl.customEvent = miqt_exec_method_cQConcatenateTablesProxyModel_customEvent
  vtbl[].vtbl.connectNotify = miqt_exec_method_cQConcatenateTablesProxyModel_connectNotify
  vtbl[].vtbl.disconnectNotify = miqt_exec_method_cQConcatenateTablesProxyModel_disconnectNotify
  if vtbl[].h != nil: delete(move(vtbl[]))
  vtbl[].h = fcQConcatenateTablesProxyModel_new(addr(vtbl[].vtbl), )
  vtbl[].owned = true

proc create*(T: type gen_qconcatenatetablesproxymodel_types.QConcatenateTablesProxyModel,
    parent: gen_qobject_types.QObject,
    vtbl: VirtualQConcatenateTablesProxyModel) =

  vtbl[].vtbl.destructor = proc(vtbl: ptr cQConcatenateTablesProxyModelVTable, _: ptr cQConcatenateTablesProxyModel) {.cdecl.} =
    let vtbl = cast[ptr typeof(VirtualQConcatenateTablesProxyModel()[])](cast[uint](vtbl) - uint(offsetOf(VirtualQConcatenateTablesProxyModel, vtbl)))
    vtbl[].h = nil
    vtbl[].owned = false
  vtbl[].vtbl.metaObject = miqt_exec_method_cQConcatenateTablesProxyModel_metaObject
  vtbl[].vtbl.metacast = miqt_exec_method_cQConcatenateTablesProxyModel_metacast
  vtbl[].vtbl.metacall = miqt_exec_method_cQConcatenateTablesProxyModel_metacall
  vtbl[].vtbl.data = miqt_exec_method_cQConcatenateTablesProxyModel_data
  vtbl[].vtbl.setData = miqt_exec_method_cQConcatenateTablesProxyModel_setData
  vtbl[].vtbl.itemData = miqt_exec_method_cQConcatenateTablesProxyModel_itemData
  vtbl[].vtbl.setItemData = miqt_exec_method_cQConcatenateTablesProxyModel_setItemData
  vtbl[].vtbl.flags = miqt_exec_method_cQConcatenateTablesProxyModel_flags
  vtbl[].vtbl.index = miqt_exec_method_cQConcatenateTablesProxyModel_index
  vtbl[].vtbl.parent = miqt_exec_method_cQConcatenateTablesProxyModel_parent
  vtbl[].vtbl.rowCount = miqt_exec_method_cQConcatenateTablesProxyModel_rowCount
  vtbl[].vtbl.headerData = miqt_exec_method_cQConcatenateTablesProxyModel_headerData
  vtbl[].vtbl.columnCount = miqt_exec_method_cQConcatenateTablesProxyModel_columnCount
  vtbl[].vtbl.mimeTypes = miqt_exec_method_cQConcatenateTablesProxyModel_mimeTypes
  vtbl[].vtbl.mimeData = miqt_exec_method_cQConcatenateTablesProxyModel_mimeData
  vtbl[].vtbl.canDropMimeData = miqt_exec_method_cQConcatenateTablesProxyModel_canDropMimeData
  vtbl[].vtbl.dropMimeData = miqt_exec_method_cQConcatenateTablesProxyModel_dropMimeData
  vtbl[].vtbl.span = miqt_exec_method_cQConcatenateTablesProxyModel_span
  vtbl[].vtbl.sibling = miqt_exec_method_cQConcatenateTablesProxyModel_sibling
  vtbl[].vtbl.hasChildren = miqt_exec_method_cQConcatenateTablesProxyModel_hasChildren
  vtbl[].vtbl.setHeaderData = miqt_exec_method_cQConcatenateTablesProxyModel_setHeaderData
  vtbl[].vtbl.clearItemData = miqt_exec_method_cQConcatenateTablesProxyModel_clearItemData
  vtbl[].vtbl.supportedDropActions = miqt_exec_method_cQConcatenateTablesProxyModel_supportedDropActions
  vtbl[].vtbl.supportedDragActions = miqt_exec_method_cQConcatenateTablesProxyModel_supportedDragActions
  vtbl[].vtbl.insertRows = miqt_exec_method_cQConcatenateTablesProxyModel_insertRows
  vtbl[].vtbl.insertColumns = miqt_exec_method_cQConcatenateTablesProxyModel_insertColumns
  vtbl[].vtbl.removeRows = miqt_exec_method_cQConcatenateTablesProxyModel_removeRows
  vtbl[].vtbl.removeColumns = miqt_exec_method_cQConcatenateTablesProxyModel_removeColumns
  vtbl[].vtbl.moveRows = miqt_exec_method_cQConcatenateTablesProxyModel_moveRows
  vtbl[].vtbl.moveColumns = miqt_exec_method_cQConcatenateTablesProxyModel_moveColumns
  vtbl[].vtbl.fetchMore = miqt_exec_method_cQConcatenateTablesProxyModel_fetchMore
  vtbl[].vtbl.canFetchMore = miqt_exec_method_cQConcatenateTablesProxyModel_canFetchMore
  vtbl[].vtbl.sort = miqt_exec_method_cQConcatenateTablesProxyModel_sort
  vtbl[].vtbl.buddy = miqt_exec_method_cQConcatenateTablesProxyModel_buddy
  vtbl[].vtbl.match = miqt_exec_method_cQConcatenateTablesProxyModel_match
  vtbl[].vtbl.roleNames = miqt_exec_method_cQConcatenateTablesProxyModel_roleNames
  vtbl[].vtbl.multiData = miqt_exec_method_cQConcatenateTablesProxyModel_multiData
  vtbl[].vtbl.submit = miqt_exec_method_cQConcatenateTablesProxyModel_submit
  vtbl[].vtbl.revert = miqt_exec_method_cQConcatenateTablesProxyModel_revert
  vtbl[].vtbl.resetInternalData = miqt_exec_method_cQConcatenateTablesProxyModel_resetInternalData
  vtbl[].vtbl.event = miqt_exec_method_cQConcatenateTablesProxyModel_event
  vtbl[].vtbl.eventFilter = miqt_exec_method_cQConcatenateTablesProxyModel_eventFilter
  vtbl[].vtbl.timerEvent = miqt_exec_method_cQConcatenateTablesProxyModel_timerEvent
  vtbl[].vtbl.childEvent = miqt_exec_method_cQConcatenateTablesProxyModel_childEvent
  vtbl[].vtbl.customEvent = miqt_exec_method_cQConcatenateTablesProxyModel_customEvent
  vtbl[].vtbl.connectNotify = miqt_exec_method_cQConcatenateTablesProxyModel_connectNotify
  vtbl[].vtbl.disconnectNotify = miqt_exec_method_cQConcatenateTablesProxyModel_disconnectNotify
  if vtbl[].h != nil: delete(move(vtbl[]))
  vtbl[].h = fcQConcatenateTablesProxyModel_new2(addr(vtbl[].vtbl), parent.h)
  vtbl[].owned = true

proc staticMetaObject*(_: type gen_qconcatenatetablesproxymodel_types.QConcatenateTablesProxyModel): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQConcatenateTablesProxyModel_staticMetaObject())
