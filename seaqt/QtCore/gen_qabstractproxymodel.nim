import ./Qt6Core_libs

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

const cflags = gorge("pkg-config --cflags Qt6Core")  & " -fPIC"
{.compile("gen_qabstractproxymodel.cpp", cflags).}


import ./gen_qabstractproxymodel_types
export gen_qabstractproxymodel_types

import
  ./gen_qabstractitemmodel,
  ./gen_qcoreevent_types,
  ./gen_qdatastream_types,
  ./gen_qitemselectionmodel_types,
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
  gen_qitemselectionmodel_types,
  gen_qmetaobject_types,
  gen_qmimedata_types,
  gen_qobject_types,
  gen_qobjectdefs_types,
  gen_qsize_types,
  gen_qvariant_types

type cQAbstractProxyModel*{.exportc: "QAbstractProxyModel", incompleteStruct.} = object

proc fcQAbstractProxyModel_metaObject(self: pointer, ): pointer {.importc: "QAbstractProxyModel_metaObject".}
proc fcQAbstractProxyModel_metacast(self: pointer, param1: cstring): pointer {.importc: "QAbstractProxyModel_metacast".}
proc fcQAbstractProxyModel_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.importc: "QAbstractProxyModel_metacall".}
proc fcQAbstractProxyModel_tr(s: cstring): struct_miqt_string {.importc: "QAbstractProxyModel_tr".}
proc fcQAbstractProxyModel_setSourceModel(self: pointer, sourceModel: pointer): void {.importc: "QAbstractProxyModel_setSourceModel".}
proc fcQAbstractProxyModel_sourceModel(self: pointer, ): pointer {.importc: "QAbstractProxyModel_sourceModel".}
proc fcQAbstractProxyModel_mapToSource(self: pointer, proxyIndex: pointer): pointer {.importc: "QAbstractProxyModel_mapToSource".}
proc fcQAbstractProxyModel_mapFromSource(self: pointer, sourceIndex: pointer): pointer {.importc: "QAbstractProxyModel_mapFromSource".}
proc fcQAbstractProxyModel_mapSelectionToSource(self: pointer, selection: pointer): pointer {.importc: "QAbstractProxyModel_mapSelectionToSource".}
proc fcQAbstractProxyModel_mapSelectionFromSource(self: pointer, selection: pointer): pointer {.importc: "QAbstractProxyModel_mapSelectionFromSource".}
proc fcQAbstractProxyModel_submit(self: pointer, ): bool {.importc: "QAbstractProxyModel_submit".}
proc fcQAbstractProxyModel_revert(self: pointer, ): void {.importc: "QAbstractProxyModel_revert".}
proc fcQAbstractProxyModel_data(self: pointer, proxyIndex: pointer, role: cint): pointer {.importc: "QAbstractProxyModel_data".}
proc fcQAbstractProxyModel_headerData(self: pointer, section: cint, orientation: cint, role: cint): pointer {.importc: "QAbstractProxyModel_headerData".}
proc fcQAbstractProxyModel_itemData(self: pointer, index: pointer): struct_miqt_map {.importc: "QAbstractProxyModel_itemData".}
proc fcQAbstractProxyModel_flags(self: pointer, index: pointer): cint {.importc: "QAbstractProxyModel_flags".}
proc fcQAbstractProxyModel_setData(self: pointer, index: pointer, value: pointer, role: cint): bool {.importc: "QAbstractProxyModel_setData".}
proc fcQAbstractProxyModel_setItemData(self: pointer, index: pointer, roles: struct_miqt_map): bool {.importc: "QAbstractProxyModel_setItemData".}
proc fcQAbstractProxyModel_setHeaderData(self: pointer, section: cint, orientation: cint, value: pointer, role: cint): bool {.importc: "QAbstractProxyModel_setHeaderData".}
proc fcQAbstractProxyModel_clearItemData(self: pointer, index: pointer): bool {.importc: "QAbstractProxyModel_clearItemData".}
proc fcQAbstractProxyModel_buddy(self: pointer, index: pointer): pointer {.importc: "QAbstractProxyModel_buddy".}
proc fcQAbstractProxyModel_canFetchMore(self: pointer, parent: pointer): bool {.importc: "QAbstractProxyModel_canFetchMore".}
proc fcQAbstractProxyModel_fetchMore(self: pointer, parent: pointer): void {.importc: "QAbstractProxyModel_fetchMore".}
proc fcQAbstractProxyModel_sort(self: pointer, column: cint, order: cint): void {.importc: "QAbstractProxyModel_sort".}
proc fcQAbstractProxyModel_span(self: pointer, index: pointer): pointer {.importc: "QAbstractProxyModel_span".}
proc fcQAbstractProxyModel_hasChildren(self: pointer, parent: pointer): bool {.importc: "QAbstractProxyModel_hasChildren".}
proc fcQAbstractProxyModel_sibling(self: pointer, row: cint, column: cint, idx: pointer): pointer {.importc: "QAbstractProxyModel_sibling".}
proc fcQAbstractProxyModel_mimeData(self: pointer, indexes: struct_miqt_array): pointer {.importc: "QAbstractProxyModel_mimeData".}
proc fcQAbstractProxyModel_canDropMimeData(self: pointer, data: pointer, action: cint, row: cint, column: cint, parent: pointer): bool {.importc: "QAbstractProxyModel_canDropMimeData".}
proc fcQAbstractProxyModel_dropMimeData(self: pointer, data: pointer, action: cint, row: cint, column: cint, parent: pointer): bool {.importc: "QAbstractProxyModel_dropMimeData".}
proc fcQAbstractProxyModel_mimeTypes(self: pointer, ): struct_miqt_array {.importc: "QAbstractProxyModel_mimeTypes".}
proc fcQAbstractProxyModel_supportedDragActions(self: pointer, ): cint {.importc: "QAbstractProxyModel_supportedDragActions".}
proc fcQAbstractProxyModel_supportedDropActions(self: pointer, ): cint {.importc: "QAbstractProxyModel_supportedDropActions".}
proc fcQAbstractProxyModel_roleNames(self: pointer, ): struct_miqt_map {.importc: "QAbstractProxyModel_roleNames".}
proc fcQAbstractProxyModel_tr2(s: cstring, c: cstring): struct_miqt_string {.importc: "QAbstractProxyModel_tr2".}
proc fcQAbstractProxyModel_tr3(s: cstring, c: cstring, n: cint): struct_miqt_string {.importc: "QAbstractProxyModel_tr3".}
type cQAbstractProxyModelVTable = object
  destructor*: proc(vtbl: ptr cQAbstractProxyModelVTable, self: ptr cQAbstractProxyModel) {.cdecl, raises:[], gcsafe.}
  metaObject*: proc(vtbl, self: pointer, ): pointer {.cdecl, raises: [], gcsafe.}
  metacast*: proc(vtbl, self: pointer, param1: cstring): pointer {.cdecl, raises: [], gcsafe.}
  metacall*: proc(vtbl, self: pointer, param1: cint, param2: cint, param3: pointer): cint {.cdecl, raises: [], gcsafe.}
  setSourceModel*: proc(vtbl, self: pointer, sourceModel: pointer): void {.cdecl, raises: [], gcsafe.}
  mapToSource*: proc(vtbl, self: pointer, proxyIndex: pointer): pointer {.cdecl, raises: [], gcsafe.}
  mapFromSource*: proc(vtbl, self: pointer, sourceIndex: pointer): pointer {.cdecl, raises: [], gcsafe.}
  mapSelectionToSource*: proc(vtbl, self: pointer, selection: pointer): pointer {.cdecl, raises: [], gcsafe.}
  mapSelectionFromSource*: proc(vtbl, self: pointer, selection: pointer): pointer {.cdecl, raises: [], gcsafe.}
  submit*: proc(vtbl, self: pointer, ): bool {.cdecl, raises: [], gcsafe.}
  revert*: proc(vtbl, self: pointer, ): void {.cdecl, raises: [], gcsafe.}
  data*: proc(vtbl, self: pointer, proxyIndex: pointer, role: cint): pointer {.cdecl, raises: [], gcsafe.}
  headerData*: proc(vtbl, self: pointer, section: cint, orientation: cint, role: cint): pointer {.cdecl, raises: [], gcsafe.}
  itemData*: proc(vtbl, self: pointer, index: pointer): struct_miqt_map {.cdecl, raises: [], gcsafe.}
  flags*: proc(vtbl, self: pointer, index: pointer): cint {.cdecl, raises: [], gcsafe.}
  setData*: proc(vtbl, self: pointer, index: pointer, value: pointer, role: cint): bool {.cdecl, raises: [], gcsafe.}
  setItemData*: proc(vtbl, self: pointer, index: pointer, roles: struct_miqt_map): bool {.cdecl, raises: [], gcsafe.}
  setHeaderData*: proc(vtbl, self: pointer, section: cint, orientation: cint, value: pointer, role: cint): bool {.cdecl, raises: [], gcsafe.}
  clearItemData*: proc(vtbl, self: pointer, index: pointer): bool {.cdecl, raises: [], gcsafe.}
  buddy*: proc(vtbl, self: pointer, index: pointer): pointer {.cdecl, raises: [], gcsafe.}
  canFetchMore*: proc(vtbl, self: pointer, parent: pointer): bool {.cdecl, raises: [], gcsafe.}
  fetchMore*: proc(vtbl, self: pointer, parent: pointer): void {.cdecl, raises: [], gcsafe.}
  sort*: proc(vtbl, self: pointer, column: cint, order: cint): void {.cdecl, raises: [], gcsafe.}
  span*: proc(vtbl, self: pointer, index: pointer): pointer {.cdecl, raises: [], gcsafe.}
  hasChildren*: proc(vtbl, self: pointer, parent: pointer): bool {.cdecl, raises: [], gcsafe.}
  sibling*: proc(vtbl, self: pointer, row: cint, column: cint, idx: pointer): pointer {.cdecl, raises: [], gcsafe.}
  mimeData*: proc(vtbl, self: pointer, indexes: struct_miqt_array): pointer {.cdecl, raises: [], gcsafe.}
  canDropMimeData*: proc(vtbl, self: pointer, data: pointer, action: cint, row: cint, column: cint, parent: pointer): bool {.cdecl, raises: [], gcsafe.}
  dropMimeData*: proc(vtbl, self: pointer, data: pointer, action: cint, row: cint, column: cint, parent: pointer): bool {.cdecl, raises: [], gcsafe.}
  mimeTypes*: proc(vtbl, self: pointer, ): struct_miqt_array {.cdecl, raises: [], gcsafe.}
  supportedDragActions*: proc(vtbl, self: pointer, ): cint {.cdecl, raises: [], gcsafe.}
  supportedDropActions*: proc(vtbl, self: pointer, ): cint {.cdecl, raises: [], gcsafe.}
  roleNames*: proc(vtbl, self: pointer, ): struct_miqt_map {.cdecl, raises: [], gcsafe.}
  index*: proc(vtbl, self: pointer, row: cint, column: cint, parent: pointer): pointer {.cdecl, raises: [], gcsafe.}
  parent*: proc(vtbl, self: pointer, child: pointer): pointer {.cdecl, raises: [], gcsafe.}
  rowCount*: proc(vtbl, self: pointer, parent: pointer): cint {.cdecl, raises: [], gcsafe.}
  columnCount*: proc(vtbl, self: pointer, parent: pointer): cint {.cdecl, raises: [], gcsafe.}
  insertRows*: proc(vtbl, self: pointer, row: cint, count: cint, parent: pointer): bool {.cdecl, raises: [], gcsafe.}
  insertColumns*: proc(vtbl, self: pointer, column: cint, count: cint, parent: pointer): bool {.cdecl, raises: [], gcsafe.}
  removeRows*: proc(vtbl, self: pointer, row: cint, count: cint, parent: pointer): bool {.cdecl, raises: [], gcsafe.}
  removeColumns*: proc(vtbl, self: pointer, column: cint, count: cint, parent: pointer): bool {.cdecl, raises: [], gcsafe.}
  moveRows*: proc(vtbl, self: pointer, sourceParent: pointer, sourceRow: cint, count: cint, destinationParent: pointer, destinationChild: cint): bool {.cdecl, raises: [], gcsafe.}
  moveColumns*: proc(vtbl, self: pointer, sourceParent: pointer, sourceColumn: cint, count: cint, destinationParent: pointer, destinationChild: cint): bool {.cdecl, raises: [], gcsafe.}
  match*: proc(vtbl, self: pointer, start: pointer, role: cint, value: pointer, hits: cint, flags: cint): struct_miqt_array {.cdecl, raises: [], gcsafe.}
  multiData*: proc(vtbl, self: pointer, index: pointer, roleDataSpan: pointer): void {.cdecl, raises: [], gcsafe.}
  resetInternalData*: proc(vtbl, self: pointer, ): void {.cdecl, raises: [], gcsafe.}
  event*: proc(vtbl, self: pointer, event: pointer): bool {.cdecl, raises: [], gcsafe.}
  eventFilter*: proc(vtbl, self: pointer, watched: pointer, event: pointer): bool {.cdecl, raises: [], gcsafe.}
  timerEvent*: proc(vtbl, self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  childEvent*: proc(vtbl, self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  customEvent*: proc(vtbl, self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  connectNotify*: proc(vtbl, self: pointer, signal: pointer): void {.cdecl, raises: [], gcsafe.}
  disconnectNotify*: proc(vtbl, self: pointer, signal: pointer): void {.cdecl, raises: [], gcsafe.}
proc fcQAbstractProxyModel_virtualbase_metaObject(self: pointer, ): pointer {.importc: "QAbstractProxyModel_virtualbase_metaObject".}
proc fcQAbstractProxyModel_virtualbase_metacast(self: pointer, param1: cstring): pointer {.importc: "QAbstractProxyModel_virtualbase_metacast".}
proc fcQAbstractProxyModel_virtualbase_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.importc: "QAbstractProxyModel_virtualbase_metacall".}
proc fcQAbstractProxyModel_virtualbase_setSourceModel(self: pointer, sourceModel: pointer): void {.importc: "QAbstractProxyModel_virtualbase_setSourceModel".}
proc fcQAbstractProxyModel_virtualbase_mapSelectionToSource(self: pointer, selection: pointer): pointer {.importc: "QAbstractProxyModel_virtualbase_mapSelectionToSource".}
proc fcQAbstractProxyModel_virtualbase_mapSelectionFromSource(self: pointer, selection: pointer): pointer {.importc: "QAbstractProxyModel_virtualbase_mapSelectionFromSource".}
proc fcQAbstractProxyModel_virtualbase_submit(self: pointer, ): bool {.importc: "QAbstractProxyModel_virtualbase_submit".}
proc fcQAbstractProxyModel_virtualbase_revert(self: pointer, ): void {.importc: "QAbstractProxyModel_virtualbase_revert".}
proc fcQAbstractProxyModel_virtualbase_data(self: pointer, proxyIndex: pointer, role: cint): pointer {.importc: "QAbstractProxyModel_virtualbase_data".}
proc fcQAbstractProxyModel_virtualbase_headerData(self: pointer, section: cint, orientation: cint, role: cint): pointer {.importc: "QAbstractProxyModel_virtualbase_headerData".}
proc fcQAbstractProxyModel_virtualbase_itemData(self: pointer, index: pointer): struct_miqt_map {.importc: "QAbstractProxyModel_virtualbase_itemData".}
proc fcQAbstractProxyModel_virtualbase_flags(self: pointer, index: pointer): cint {.importc: "QAbstractProxyModel_virtualbase_flags".}
proc fcQAbstractProxyModel_virtualbase_setData(self: pointer, index: pointer, value: pointer, role: cint): bool {.importc: "QAbstractProxyModel_virtualbase_setData".}
proc fcQAbstractProxyModel_virtualbase_setItemData(self: pointer, index: pointer, roles: struct_miqt_map): bool {.importc: "QAbstractProxyModel_virtualbase_setItemData".}
proc fcQAbstractProxyModel_virtualbase_setHeaderData(self: pointer, section: cint, orientation: cint, value: pointer, role: cint): bool {.importc: "QAbstractProxyModel_virtualbase_setHeaderData".}
proc fcQAbstractProxyModel_virtualbase_clearItemData(self: pointer, index: pointer): bool {.importc: "QAbstractProxyModel_virtualbase_clearItemData".}
proc fcQAbstractProxyModel_virtualbase_buddy(self: pointer, index: pointer): pointer {.importc: "QAbstractProxyModel_virtualbase_buddy".}
proc fcQAbstractProxyModel_virtualbase_canFetchMore(self: pointer, parent: pointer): bool {.importc: "QAbstractProxyModel_virtualbase_canFetchMore".}
proc fcQAbstractProxyModel_virtualbase_fetchMore(self: pointer, parent: pointer): void {.importc: "QAbstractProxyModel_virtualbase_fetchMore".}
proc fcQAbstractProxyModel_virtualbase_sort(self: pointer, column: cint, order: cint): void {.importc: "QAbstractProxyModel_virtualbase_sort".}
proc fcQAbstractProxyModel_virtualbase_span(self: pointer, index: pointer): pointer {.importc: "QAbstractProxyModel_virtualbase_span".}
proc fcQAbstractProxyModel_virtualbase_hasChildren(self: pointer, parent: pointer): bool {.importc: "QAbstractProxyModel_virtualbase_hasChildren".}
proc fcQAbstractProxyModel_virtualbase_sibling(self: pointer, row: cint, column: cint, idx: pointer): pointer {.importc: "QAbstractProxyModel_virtualbase_sibling".}
proc fcQAbstractProxyModel_virtualbase_mimeData(self: pointer, indexes: struct_miqt_array): pointer {.importc: "QAbstractProxyModel_virtualbase_mimeData".}
proc fcQAbstractProxyModel_virtualbase_canDropMimeData(self: pointer, data: pointer, action: cint, row: cint, column: cint, parent: pointer): bool {.importc: "QAbstractProxyModel_virtualbase_canDropMimeData".}
proc fcQAbstractProxyModel_virtualbase_dropMimeData(self: pointer, data: pointer, action: cint, row: cint, column: cint, parent: pointer): bool {.importc: "QAbstractProxyModel_virtualbase_dropMimeData".}
proc fcQAbstractProxyModel_virtualbase_mimeTypes(self: pointer, ): struct_miqt_array {.importc: "QAbstractProxyModel_virtualbase_mimeTypes".}
proc fcQAbstractProxyModel_virtualbase_supportedDragActions(self: pointer, ): cint {.importc: "QAbstractProxyModel_virtualbase_supportedDragActions".}
proc fcQAbstractProxyModel_virtualbase_supportedDropActions(self: pointer, ): cint {.importc: "QAbstractProxyModel_virtualbase_supportedDropActions".}
proc fcQAbstractProxyModel_virtualbase_roleNames(self: pointer, ): struct_miqt_map {.importc: "QAbstractProxyModel_virtualbase_roleNames".}
proc fcQAbstractProxyModel_virtualbase_insertRows(self: pointer, row: cint, count: cint, parent: pointer): bool {.importc: "QAbstractProxyModel_virtualbase_insertRows".}
proc fcQAbstractProxyModel_virtualbase_insertColumns(self: pointer, column: cint, count: cint, parent: pointer): bool {.importc: "QAbstractProxyModel_virtualbase_insertColumns".}
proc fcQAbstractProxyModel_virtualbase_removeRows(self: pointer, row: cint, count: cint, parent: pointer): bool {.importc: "QAbstractProxyModel_virtualbase_removeRows".}
proc fcQAbstractProxyModel_virtualbase_removeColumns(self: pointer, column: cint, count: cint, parent: pointer): bool {.importc: "QAbstractProxyModel_virtualbase_removeColumns".}
proc fcQAbstractProxyModel_virtualbase_moveRows(self: pointer, sourceParent: pointer, sourceRow: cint, count: cint, destinationParent: pointer, destinationChild: cint): bool {.importc: "QAbstractProxyModel_virtualbase_moveRows".}
proc fcQAbstractProxyModel_virtualbase_moveColumns(self: pointer, sourceParent: pointer, sourceColumn: cint, count: cint, destinationParent: pointer, destinationChild: cint): bool {.importc: "QAbstractProxyModel_virtualbase_moveColumns".}
proc fcQAbstractProxyModel_virtualbase_match(self: pointer, start: pointer, role: cint, value: pointer, hits: cint, flags: cint): struct_miqt_array {.importc: "QAbstractProxyModel_virtualbase_match".}
proc fcQAbstractProxyModel_virtualbase_multiData(self: pointer, index: pointer, roleDataSpan: pointer): void {.importc: "QAbstractProxyModel_virtualbase_multiData".}
proc fcQAbstractProxyModel_virtualbase_resetInternalData(self: pointer, ): void {.importc: "QAbstractProxyModel_virtualbase_resetInternalData".}
proc fcQAbstractProxyModel_virtualbase_event(self: pointer, event: pointer): bool {.importc: "QAbstractProxyModel_virtualbase_event".}
proc fcQAbstractProxyModel_virtualbase_eventFilter(self: pointer, watched: pointer, event: pointer): bool {.importc: "QAbstractProxyModel_virtualbase_eventFilter".}
proc fcQAbstractProxyModel_virtualbase_timerEvent(self: pointer, event: pointer): void {.importc: "QAbstractProxyModel_virtualbase_timerEvent".}
proc fcQAbstractProxyModel_virtualbase_childEvent(self: pointer, event: pointer): void {.importc: "QAbstractProxyModel_virtualbase_childEvent".}
proc fcQAbstractProxyModel_virtualbase_customEvent(self: pointer, event: pointer): void {.importc: "QAbstractProxyModel_virtualbase_customEvent".}
proc fcQAbstractProxyModel_virtualbase_connectNotify(self: pointer, signal: pointer): void {.importc: "QAbstractProxyModel_virtualbase_connectNotify".}
proc fcQAbstractProxyModel_virtualbase_disconnectNotify(self: pointer, signal: pointer): void {.importc: "QAbstractProxyModel_virtualbase_disconnectNotify".}
proc fcQAbstractProxyModel_protectedbase_createSourceIndex(self: pointer, row: cint, col: cint, internalPtr: pointer): pointer {.importc: "QAbstractProxyModel_protectedbase_createSourceIndex".}
proc fcQAbstractProxyModel_protectedbase_createIndex(self: pointer, row: cint, column: cint): pointer {.importc: "QAbstractProxyModel_protectedbase_createIndex".}
proc fcQAbstractProxyModel_protectedbase_encodeData(self: pointer, indexes: struct_miqt_array, stream: pointer): void {.importc: "QAbstractProxyModel_protectedbase_encodeData".}
proc fcQAbstractProxyModel_protectedbase_decodeData(self: pointer, row: cint, column: cint, parent: pointer, stream: pointer): bool {.importc: "QAbstractProxyModel_protectedbase_decodeData".}
proc fcQAbstractProxyModel_protectedbase_beginInsertRows(self: pointer, parent: pointer, first: cint, last: cint): void {.importc: "QAbstractProxyModel_protectedbase_beginInsertRows".}
proc fcQAbstractProxyModel_protectedbase_endInsertRows(self: pointer, ): void {.importc: "QAbstractProxyModel_protectedbase_endInsertRows".}
proc fcQAbstractProxyModel_protectedbase_beginRemoveRows(self: pointer, parent: pointer, first: cint, last: cint): void {.importc: "QAbstractProxyModel_protectedbase_beginRemoveRows".}
proc fcQAbstractProxyModel_protectedbase_endRemoveRows(self: pointer, ): void {.importc: "QAbstractProxyModel_protectedbase_endRemoveRows".}
proc fcQAbstractProxyModel_protectedbase_beginMoveRows(self: pointer, sourceParent: pointer, sourceFirst: cint, sourceLast: cint, destinationParent: pointer, destinationRow: cint): bool {.importc: "QAbstractProxyModel_protectedbase_beginMoveRows".}
proc fcQAbstractProxyModel_protectedbase_endMoveRows(self: pointer, ): void {.importc: "QAbstractProxyModel_protectedbase_endMoveRows".}
proc fcQAbstractProxyModel_protectedbase_beginInsertColumns(self: pointer, parent: pointer, first: cint, last: cint): void {.importc: "QAbstractProxyModel_protectedbase_beginInsertColumns".}
proc fcQAbstractProxyModel_protectedbase_endInsertColumns(self: pointer, ): void {.importc: "QAbstractProxyModel_protectedbase_endInsertColumns".}
proc fcQAbstractProxyModel_protectedbase_beginRemoveColumns(self: pointer, parent: pointer, first: cint, last: cint): void {.importc: "QAbstractProxyModel_protectedbase_beginRemoveColumns".}
proc fcQAbstractProxyModel_protectedbase_endRemoveColumns(self: pointer, ): void {.importc: "QAbstractProxyModel_protectedbase_endRemoveColumns".}
proc fcQAbstractProxyModel_protectedbase_beginMoveColumns(self: pointer, sourceParent: pointer, sourceFirst: cint, sourceLast: cint, destinationParent: pointer, destinationColumn: cint): bool {.importc: "QAbstractProxyModel_protectedbase_beginMoveColumns".}
proc fcQAbstractProxyModel_protectedbase_endMoveColumns(self: pointer, ): void {.importc: "QAbstractProxyModel_protectedbase_endMoveColumns".}
proc fcQAbstractProxyModel_protectedbase_beginResetModel(self: pointer, ): void {.importc: "QAbstractProxyModel_protectedbase_beginResetModel".}
proc fcQAbstractProxyModel_protectedbase_endResetModel(self: pointer, ): void {.importc: "QAbstractProxyModel_protectedbase_endResetModel".}
proc fcQAbstractProxyModel_protectedbase_changePersistentIndex(self: pointer, fromVal: pointer, to: pointer): void {.importc: "QAbstractProxyModel_protectedbase_changePersistentIndex".}
proc fcQAbstractProxyModel_protectedbase_changePersistentIndexList(self: pointer, fromVal: struct_miqt_array, to: struct_miqt_array): void {.importc: "QAbstractProxyModel_protectedbase_changePersistentIndexList".}
proc fcQAbstractProxyModel_protectedbase_persistentIndexList(self: pointer, ): struct_miqt_array {.importc: "QAbstractProxyModel_protectedbase_persistentIndexList".}
proc fcQAbstractProxyModel_protectedbase_sender(self: pointer, ): pointer {.importc: "QAbstractProxyModel_protectedbase_sender".}
proc fcQAbstractProxyModel_protectedbase_senderSignalIndex(self: pointer, ): cint {.importc: "QAbstractProxyModel_protectedbase_senderSignalIndex".}
proc fcQAbstractProxyModel_protectedbase_receivers(self: pointer, signal: cstring): cint {.importc: "QAbstractProxyModel_protectedbase_receivers".}
proc fcQAbstractProxyModel_protectedbase_isSignalConnected(self: pointer, signal: pointer): bool {.importc: "QAbstractProxyModel_protectedbase_isSignalConnected".}
proc fcQAbstractProxyModel_new(vtbl: pointer, ): ptr cQAbstractProxyModel {.importc: "QAbstractProxyModel_new".}
proc fcQAbstractProxyModel_new2(vtbl: pointer, parent: pointer): ptr cQAbstractProxyModel {.importc: "QAbstractProxyModel_new2".}
proc fcQAbstractProxyModel_staticMetaObject(): pointer {.importc: "QAbstractProxyModel_staticMetaObject".}
proc fcQAbstractProxyModel_delete(self: pointer) {.importc: "QAbstractProxyModel_delete".}

proc metaObject*(self: gen_qabstractproxymodel_types.QAbstractProxyModel, ): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQAbstractProxyModel_metaObject(self.h))

proc metacast*(self: gen_qabstractproxymodel_types.QAbstractProxyModel, param1: cstring): pointer =
  fcQAbstractProxyModel_metacast(self.h, param1)

proc metacall*(self: gen_qabstractproxymodel_types.QAbstractProxyModel, param1: cint, param2: cint, param3: pointer): cint =
  fcQAbstractProxyModel_metacall(self.h, cint(param1), param2, param3)

proc tr*(_: type gen_qabstractproxymodel_types.QAbstractProxyModel, s: cstring): string =
  let v_ms = fcQAbstractProxyModel_tr(s)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc setSourceModel*(self: gen_qabstractproxymodel_types.QAbstractProxyModel, sourceModel: gen_qabstractitemmodel_types.QAbstractItemModel): void =
  fcQAbstractProxyModel_setSourceModel(self.h, sourceModel.h)

proc sourceModel*(self: gen_qabstractproxymodel_types.QAbstractProxyModel, ): gen_qabstractitemmodel_types.QAbstractItemModel =
  gen_qabstractitemmodel_types.QAbstractItemModel(h: fcQAbstractProxyModel_sourceModel(self.h))

proc mapToSource*(self: gen_qabstractproxymodel_types.QAbstractProxyModel, proxyIndex: gen_qabstractitemmodel_types.QModelIndex): gen_qabstractitemmodel_types.QModelIndex =
  gen_qabstractitemmodel_types.QModelIndex(h: fcQAbstractProxyModel_mapToSource(self.h, proxyIndex.h))

proc mapFromSource*(self: gen_qabstractproxymodel_types.QAbstractProxyModel, sourceIndex: gen_qabstractitemmodel_types.QModelIndex): gen_qabstractitemmodel_types.QModelIndex =
  gen_qabstractitemmodel_types.QModelIndex(h: fcQAbstractProxyModel_mapFromSource(self.h, sourceIndex.h))

proc mapSelectionToSource*(self: gen_qabstractproxymodel_types.QAbstractProxyModel, selection: gen_qitemselectionmodel_types.QItemSelection): gen_qitemselectionmodel_types.QItemSelection =
  gen_qitemselectionmodel_types.QItemSelection(h: fcQAbstractProxyModel_mapSelectionToSource(self.h, selection.h))

proc mapSelectionFromSource*(self: gen_qabstractproxymodel_types.QAbstractProxyModel, selection: gen_qitemselectionmodel_types.QItemSelection): gen_qitemselectionmodel_types.QItemSelection =
  gen_qitemselectionmodel_types.QItemSelection(h: fcQAbstractProxyModel_mapSelectionFromSource(self.h, selection.h))

proc submit*(self: gen_qabstractproxymodel_types.QAbstractProxyModel, ): bool =
  fcQAbstractProxyModel_submit(self.h)

proc revert*(self: gen_qabstractproxymodel_types.QAbstractProxyModel, ): void =
  fcQAbstractProxyModel_revert(self.h)

proc data*(self: gen_qabstractproxymodel_types.QAbstractProxyModel, proxyIndex: gen_qabstractitemmodel_types.QModelIndex, role: cint): gen_qvariant_types.QVariant =
  gen_qvariant_types.QVariant(h: fcQAbstractProxyModel_data(self.h, proxyIndex.h, role))

proc headerData*(self: gen_qabstractproxymodel_types.QAbstractProxyModel, section: cint, orientation: cint, role: cint): gen_qvariant_types.QVariant =
  gen_qvariant_types.QVariant(h: fcQAbstractProxyModel_headerData(self.h, section, cint(orientation), role))

proc itemData*(self: gen_qabstractproxymodel_types.QAbstractProxyModel, index: gen_qabstractitemmodel_types.QModelIndex): Table[cint,gen_qvariant_types.QVariant] =
  var v_mm = fcQAbstractProxyModel_itemData(self.h, index.h)
  var vx_ret: Table[cint, gen_qvariant_types.QVariant]
  var v_Keys = cast[ptr UncheckedArray[cint]](v_mm.keys)
  var v_Values = cast[ptr UncheckedArray[pointer]](v_mm.values)
  for i in 0..<v_mm.len:
    var v_entry_Key = v_Keys[i]

    var v_entry_Value = gen_qvariant_types.QVariant(h: v_Values[i])

    vx_ret[v_entry_Key] = v_entry_Value
  vx_ret

proc flags*(self: gen_qabstractproxymodel_types.QAbstractProxyModel, index: gen_qabstractitemmodel_types.QModelIndex): cint =
  cint(fcQAbstractProxyModel_flags(self.h, index.h))

proc setData*(self: gen_qabstractproxymodel_types.QAbstractProxyModel, index: gen_qabstractitemmodel_types.QModelIndex, value: gen_qvariant_types.QVariant, role: cint): bool =
  fcQAbstractProxyModel_setData(self.h, index.h, value.h, role)

proc setItemData*(self: gen_qabstractproxymodel_types.QAbstractProxyModel, index: gen_qabstractitemmodel_types.QModelIndex, roles: Table[cint,gen_qvariant_types.QVariant]): bool =
  var roles_Keys_CArray = newSeq[cint](len(roles))
  var roles_Values_CArray = newSeq[pointer](len(roles))
  var roles_ctr = 0
  for rolesk, rolesv in roles:
    roles_Keys_CArray[roles_ctr] = roles_k
    roles_Values_CArray[roles_ctr] = roles_v.h
    roles_ctr += 1

  fcQAbstractProxyModel_setItemData(self.h, index.h, struct_miqt_map(len: csize_t(len(roles)),keys: if len(roles) == 0: nil else: addr(roles_Keys_CArray[0]), values: if len(roles) == 0: nil else: addr(roles_Values_CArray[0]),))

proc setHeaderData*(self: gen_qabstractproxymodel_types.QAbstractProxyModel, section: cint, orientation: cint, value: gen_qvariant_types.QVariant, role: cint): bool =
  fcQAbstractProxyModel_setHeaderData(self.h, section, cint(orientation), value.h, role)

proc clearItemData*(self: gen_qabstractproxymodel_types.QAbstractProxyModel, index: gen_qabstractitemmodel_types.QModelIndex): bool =
  fcQAbstractProxyModel_clearItemData(self.h, index.h)

proc buddy*(self: gen_qabstractproxymodel_types.QAbstractProxyModel, index: gen_qabstractitemmodel_types.QModelIndex): gen_qabstractitemmodel_types.QModelIndex =
  gen_qabstractitemmodel_types.QModelIndex(h: fcQAbstractProxyModel_buddy(self.h, index.h))

proc canFetchMore*(self: gen_qabstractproxymodel_types.QAbstractProxyModel, parent: gen_qabstractitemmodel_types.QModelIndex): bool =
  fcQAbstractProxyModel_canFetchMore(self.h, parent.h)

proc fetchMore*(self: gen_qabstractproxymodel_types.QAbstractProxyModel, parent: gen_qabstractitemmodel_types.QModelIndex): void =
  fcQAbstractProxyModel_fetchMore(self.h, parent.h)

proc sort*(self: gen_qabstractproxymodel_types.QAbstractProxyModel, column: cint, order: cint): void =
  fcQAbstractProxyModel_sort(self.h, column, cint(order))

proc span*(self: gen_qabstractproxymodel_types.QAbstractProxyModel, index: gen_qabstractitemmodel_types.QModelIndex): gen_qsize_types.QSize =
  gen_qsize_types.QSize(h: fcQAbstractProxyModel_span(self.h, index.h))

proc hasChildren*(self: gen_qabstractproxymodel_types.QAbstractProxyModel, parent: gen_qabstractitemmodel_types.QModelIndex): bool =
  fcQAbstractProxyModel_hasChildren(self.h, parent.h)

proc sibling*(self: gen_qabstractproxymodel_types.QAbstractProxyModel, row: cint, column: cint, idx: gen_qabstractitemmodel_types.QModelIndex): gen_qabstractitemmodel_types.QModelIndex =
  gen_qabstractitemmodel_types.QModelIndex(h: fcQAbstractProxyModel_sibling(self.h, row, column, idx.h))

proc mimeData*(self: gen_qabstractproxymodel_types.QAbstractProxyModel, indexes: seq[gen_qabstractitemmodel_types.QModelIndex]): gen_qmimedata_types.QMimeData =
  var indexes_CArray = newSeq[pointer](len(indexes))
  for i in 0..<len(indexes):
    indexes_CArray[i] = indexes[i].h

  gen_qmimedata_types.QMimeData(h: fcQAbstractProxyModel_mimeData(self.h, struct_miqt_array(len: csize_t(len(indexes)), data: if len(indexes) == 0: nil else: addr(indexes_CArray[0]))))

proc canDropMimeData*(self: gen_qabstractproxymodel_types.QAbstractProxyModel, data: gen_qmimedata_types.QMimeData, action: cint, row: cint, column: cint, parent: gen_qabstractitemmodel_types.QModelIndex): bool =
  fcQAbstractProxyModel_canDropMimeData(self.h, data.h, cint(action), row, column, parent.h)

proc dropMimeData*(self: gen_qabstractproxymodel_types.QAbstractProxyModel, data: gen_qmimedata_types.QMimeData, action: cint, row: cint, column: cint, parent: gen_qabstractitemmodel_types.QModelIndex): bool =
  fcQAbstractProxyModel_dropMimeData(self.h, data.h, cint(action), row, column, parent.h)

proc mimeTypes*(self: gen_qabstractproxymodel_types.QAbstractProxyModel, ): seq[string] =
  var v_ma = fcQAbstractProxyModel_mimeTypes(self.h)
  var vx_ret = newSeq[string](int(v_ma.len))
  let v_outCast = cast[ptr UncheckedArray[struct_miqt_string]](v_ma.data)
  for i in 0 ..< v_ma.len:
    let vx_lv_ms = v_outCast[i]
    let vx_lvx_ret = string.fromBytes(toOpenArrayByte(vx_lv_ms.data, 0, int(vx_lv_ms.len)-1))
    c_free(vx_lv_ms.data)
    vx_ret[i] = vx_lvx_ret
  vx_ret

proc supportedDragActions*(self: gen_qabstractproxymodel_types.QAbstractProxyModel, ): cint =
  cint(fcQAbstractProxyModel_supportedDragActions(self.h))

proc supportedDropActions*(self: gen_qabstractproxymodel_types.QAbstractProxyModel, ): cint =
  cint(fcQAbstractProxyModel_supportedDropActions(self.h))

proc roleNames*(self: gen_qabstractproxymodel_types.QAbstractProxyModel, ): Table[cint,seq[byte]] =
  var v_mm = fcQAbstractProxyModel_roleNames(self.h)
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
  vx_ret

proc tr*(_: type gen_qabstractproxymodel_types.QAbstractProxyModel, s: cstring, c: cstring): string =
  let v_ms = fcQAbstractProxyModel_tr2(s, c)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc tr*(_: type gen_qabstractproxymodel_types.QAbstractProxyModel, s: cstring, c: cstring, n: cint): string =
  let v_ms = fcQAbstractProxyModel_tr3(s, c, n)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

type QAbstractProxyModelmetaObjectProc* = proc(self: QAbstractProxyModel): gen_qobjectdefs_types.QMetaObject {.raises: [], gcsafe.}
type QAbstractProxyModelmetacastProc* = proc(self: QAbstractProxyModel, param1: cstring): pointer {.raises: [], gcsafe.}
type QAbstractProxyModelmetacallProc* = proc(self: QAbstractProxyModel, param1: cint, param2: cint, param3: pointer): cint {.raises: [], gcsafe.}
type QAbstractProxyModelsetSourceModelProc* = proc(self: QAbstractProxyModel, sourceModel: gen_qabstractitemmodel_types.QAbstractItemModel): void {.raises: [], gcsafe.}
type QAbstractProxyModelmapToSourceProc* = proc(self: QAbstractProxyModel, proxyIndex: gen_qabstractitemmodel_types.QModelIndex): gen_qabstractitemmodel_types.QModelIndex {.raises: [], gcsafe.}
type QAbstractProxyModelmapFromSourceProc* = proc(self: QAbstractProxyModel, sourceIndex: gen_qabstractitemmodel_types.QModelIndex): gen_qabstractitemmodel_types.QModelIndex {.raises: [], gcsafe.}
type QAbstractProxyModelmapSelectionToSourceProc* = proc(self: QAbstractProxyModel, selection: gen_qitemselectionmodel_types.QItemSelection): gen_qitemselectionmodel_types.QItemSelection {.raises: [], gcsafe.}
type QAbstractProxyModelmapSelectionFromSourceProc* = proc(self: QAbstractProxyModel, selection: gen_qitemselectionmodel_types.QItemSelection): gen_qitemselectionmodel_types.QItemSelection {.raises: [], gcsafe.}
type QAbstractProxyModelsubmitProc* = proc(self: QAbstractProxyModel): bool {.raises: [], gcsafe.}
type QAbstractProxyModelrevertProc* = proc(self: QAbstractProxyModel): void {.raises: [], gcsafe.}
type QAbstractProxyModeldataProc* = proc(self: QAbstractProxyModel, proxyIndex: gen_qabstractitemmodel_types.QModelIndex, role: cint): gen_qvariant_types.QVariant {.raises: [], gcsafe.}
type QAbstractProxyModelheaderDataProc* = proc(self: QAbstractProxyModel, section: cint, orientation: cint, role: cint): gen_qvariant_types.QVariant {.raises: [], gcsafe.}
type QAbstractProxyModelitemDataProc* = proc(self: QAbstractProxyModel, index: gen_qabstractitemmodel_types.QModelIndex): Table[cint,gen_qvariant_types.QVariant] {.raises: [], gcsafe.}
type QAbstractProxyModelflagsProc* = proc(self: QAbstractProxyModel, index: gen_qabstractitemmodel_types.QModelIndex): cint {.raises: [], gcsafe.}
type QAbstractProxyModelsetDataProc* = proc(self: QAbstractProxyModel, index: gen_qabstractitemmodel_types.QModelIndex, value: gen_qvariant_types.QVariant, role: cint): bool {.raises: [], gcsafe.}
type QAbstractProxyModelsetItemDataProc* = proc(self: QAbstractProxyModel, index: gen_qabstractitemmodel_types.QModelIndex, roles: Table[cint,gen_qvariant_types.QVariant]): bool {.raises: [], gcsafe.}
type QAbstractProxyModelsetHeaderDataProc* = proc(self: QAbstractProxyModel, section: cint, orientation: cint, value: gen_qvariant_types.QVariant, role: cint): bool {.raises: [], gcsafe.}
type QAbstractProxyModelclearItemDataProc* = proc(self: QAbstractProxyModel, index: gen_qabstractitemmodel_types.QModelIndex): bool {.raises: [], gcsafe.}
type QAbstractProxyModelbuddyProc* = proc(self: QAbstractProxyModel, index: gen_qabstractitemmodel_types.QModelIndex): gen_qabstractitemmodel_types.QModelIndex {.raises: [], gcsafe.}
type QAbstractProxyModelcanFetchMoreProc* = proc(self: QAbstractProxyModel, parent: gen_qabstractitemmodel_types.QModelIndex): bool {.raises: [], gcsafe.}
type QAbstractProxyModelfetchMoreProc* = proc(self: QAbstractProxyModel, parent: gen_qabstractitemmodel_types.QModelIndex): void {.raises: [], gcsafe.}
type QAbstractProxyModelsortProc* = proc(self: QAbstractProxyModel, column: cint, order: cint): void {.raises: [], gcsafe.}
type QAbstractProxyModelspanProc* = proc(self: QAbstractProxyModel, index: gen_qabstractitemmodel_types.QModelIndex): gen_qsize_types.QSize {.raises: [], gcsafe.}
type QAbstractProxyModelhasChildrenProc* = proc(self: QAbstractProxyModel, parent: gen_qabstractitemmodel_types.QModelIndex): bool {.raises: [], gcsafe.}
type QAbstractProxyModelsiblingProc* = proc(self: QAbstractProxyModel, row: cint, column: cint, idx: gen_qabstractitemmodel_types.QModelIndex): gen_qabstractitemmodel_types.QModelIndex {.raises: [], gcsafe.}
type QAbstractProxyModelmimeDataProc* = proc(self: QAbstractProxyModel, indexes: seq[gen_qabstractitemmodel_types.QModelIndex]): gen_qmimedata_types.QMimeData {.raises: [], gcsafe.}
type QAbstractProxyModelcanDropMimeDataProc* = proc(self: QAbstractProxyModel, data: gen_qmimedata_types.QMimeData, action: cint, row: cint, column: cint, parent: gen_qabstractitemmodel_types.QModelIndex): bool {.raises: [], gcsafe.}
type QAbstractProxyModeldropMimeDataProc* = proc(self: QAbstractProxyModel, data: gen_qmimedata_types.QMimeData, action: cint, row: cint, column: cint, parent: gen_qabstractitemmodel_types.QModelIndex): bool {.raises: [], gcsafe.}
type QAbstractProxyModelmimeTypesProc* = proc(self: QAbstractProxyModel): seq[string] {.raises: [], gcsafe.}
type QAbstractProxyModelsupportedDragActionsProc* = proc(self: QAbstractProxyModel): cint {.raises: [], gcsafe.}
type QAbstractProxyModelsupportedDropActionsProc* = proc(self: QAbstractProxyModel): cint {.raises: [], gcsafe.}
type QAbstractProxyModelroleNamesProc* = proc(self: QAbstractProxyModel): Table[cint,seq[byte]] {.raises: [], gcsafe.}
type QAbstractProxyModelindexProc* = proc(self: QAbstractProxyModel, row: cint, column: cint, parent: gen_qabstractitemmodel_types.QModelIndex): gen_qabstractitemmodel_types.QModelIndex {.raises: [], gcsafe.}
type QAbstractProxyModelparentProc* = proc(self: QAbstractProxyModel, child: gen_qabstractitemmodel_types.QModelIndex): gen_qabstractitemmodel_types.QModelIndex {.raises: [], gcsafe.}
type QAbstractProxyModelrowCountProc* = proc(self: QAbstractProxyModel, parent: gen_qabstractitemmodel_types.QModelIndex): cint {.raises: [], gcsafe.}
type QAbstractProxyModelcolumnCountProc* = proc(self: QAbstractProxyModel, parent: gen_qabstractitemmodel_types.QModelIndex): cint {.raises: [], gcsafe.}
type QAbstractProxyModelinsertRowsProc* = proc(self: QAbstractProxyModel, row: cint, count: cint, parent: gen_qabstractitemmodel_types.QModelIndex): bool {.raises: [], gcsafe.}
type QAbstractProxyModelinsertColumnsProc* = proc(self: QAbstractProxyModel, column: cint, count: cint, parent: gen_qabstractitemmodel_types.QModelIndex): bool {.raises: [], gcsafe.}
type QAbstractProxyModelremoveRowsProc* = proc(self: QAbstractProxyModel, row: cint, count: cint, parent: gen_qabstractitemmodel_types.QModelIndex): bool {.raises: [], gcsafe.}
type QAbstractProxyModelremoveColumnsProc* = proc(self: QAbstractProxyModel, column: cint, count: cint, parent: gen_qabstractitemmodel_types.QModelIndex): bool {.raises: [], gcsafe.}
type QAbstractProxyModelmoveRowsProc* = proc(self: QAbstractProxyModel, sourceParent: gen_qabstractitemmodel_types.QModelIndex, sourceRow: cint, count: cint, destinationParent: gen_qabstractitemmodel_types.QModelIndex, destinationChild: cint): bool {.raises: [], gcsafe.}
type QAbstractProxyModelmoveColumnsProc* = proc(self: QAbstractProxyModel, sourceParent: gen_qabstractitemmodel_types.QModelIndex, sourceColumn: cint, count: cint, destinationParent: gen_qabstractitemmodel_types.QModelIndex, destinationChild: cint): bool {.raises: [], gcsafe.}
type QAbstractProxyModelmatchProc* = proc(self: QAbstractProxyModel, start: gen_qabstractitemmodel_types.QModelIndex, role: cint, value: gen_qvariant_types.QVariant, hits: cint, flags: cint): seq[gen_qabstractitemmodel_types.QModelIndex] {.raises: [], gcsafe.}
type QAbstractProxyModelmultiDataProc* = proc(self: QAbstractProxyModel, index: gen_qabstractitemmodel_types.QModelIndex, roleDataSpan: gen_qabstractitemmodel_types.QModelRoleDataSpan): void {.raises: [], gcsafe.}
type QAbstractProxyModelresetInternalDataProc* = proc(self: QAbstractProxyModel): void {.raises: [], gcsafe.}
type QAbstractProxyModeleventProc* = proc(self: QAbstractProxyModel, event: gen_qcoreevent_types.QEvent): bool {.raises: [], gcsafe.}
type QAbstractProxyModeleventFilterProc* = proc(self: QAbstractProxyModel, watched: gen_qobject_types.QObject, event: gen_qcoreevent_types.QEvent): bool {.raises: [], gcsafe.}
type QAbstractProxyModeltimerEventProc* = proc(self: QAbstractProxyModel, event: gen_qcoreevent_types.QTimerEvent): void {.raises: [], gcsafe.}
type QAbstractProxyModelchildEventProc* = proc(self: QAbstractProxyModel, event: gen_qcoreevent_types.QChildEvent): void {.raises: [], gcsafe.}
type QAbstractProxyModelcustomEventProc* = proc(self: QAbstractProxyModel, event: gen_qcoreevent_types.QEvent): void {.raises: [], gcsafe.}
type QAbstractProxyModelconnectNotifyProc* = proc(self: QAbstractProxyModel, signal: gen_qmetaobject_types.QMetaMethod): void {.raises: [], gcsafe.}
type QAbstractProxyModeldisconnectNotifyProc* = proc(self: QAbstractProxyModel, signal: gen_qmetaobject_types.QMetaMethod): void {.raises: [], gcsafe.}
type QAbstractProxyModelVTable* = object
  vtbl: cQAbstractProxyModelVTable
  metaObject*: QAbstractProxyModelmetaObjectProc
  metacast*: QAbstractProxyModelmetacastProc
  metacall*: QAbstractProxyModelmetacallProc
  setSourceModel*: QAbstractProxyModelsetSourceModelProc
  mapToSource*: QAbstractProxyModelmapToSourceProc
  mapFromSource*: QAbstractProxyModelmapFromSourceProc
  mapSelectionToSource*: QAbstractProxyModelmapSelectionToSourceProc
  mapSelectionFromSource*: QAbstractProxyModelmapSelectionFromSourceProc
  submit*: QAbstractProxyModelsubmitProc
  revert*: QAbstractProxyModelrevertProc
  data*: QAbstractProxyModeldataProc
  headerData*: QAbstractProxyModelheaderDataProc
  itemData*: QAbstractProxyModelitemDataProc
  flags*: QAbstractProxyModelflagsProc
  setData*: QAbstractProxyModelsetDataProc
  setItemData*: QAbstractProxyModelsetItemDataProc
  setHeaderData*: QAbstractProxyModelsetHeaderDataProc
  clearItemData*: QAbstractProxyModelclearItemDataProc
  buddy*: QAbstractProxyModelbuddyProc
  canFetchMore*: QAbstractProxyModelcanFetchMoreProc
  fetchMore*: QAbstractProxyModelfetchMoreProc
  sort*: QAbstractProxyModelsortProc
  span*: QAbstractProxyModelspanProc
  hasChildren*: QAbstractProxyModelhasChildrenProc
  sibling*: QAbstractProxyModelsiblingProc
  mimeData*: QAbstractProxyModelmimeDataProc
  canDropMimeData*: QAbstractProxyModelcanDropMimeDataProc
  dropMimeData*: QAbstractProxyModeldropMimeDataProc
  mimeTypes*: QAbstractProxyModelmimeTypesProc
  supportedDragActions*: QAbstractProxyModelsupportedDragActionsProc
  supportedDropActions*: QAbstractProxyModelsupportedDropActionsProc
  roleNames*: QAbstractProxyModelroleNamesProc
  index*: QAbstractProxyModelindexProc
  parent*: QAbstractProxyModelparentProc
  rowCount*: QAbstractProxyModelrowCountProc
  columnCount*: QAbstractProxyModelcolumnCountProc
  insertRows*: QAbstractProxyModelinsertRowsProc
  insertColumns*: QAbstractProxyModelinsertColumnsProc
  removeRows*: QAbstractProxyModelremoveRowsProc
  removeColumns*: QAbstractProxyModelremoveColumnsProc
  moveRows*: QAbstractProxyModelmoveRowsProc
  moveColumns*: QAbstractProxyModelmoveColumnsProc
  match*: QAbstractProxyModelmatchProc
  multiData*: QAbstractProxyModelmultiDataProc
  resetInternalData*: QAbstractProxyModelresetInternalDataProc
  event*: QAbstractProxyModeleventProc
  eventFilter*: QAbstractProxyModeleventFilterProc
  timerEvent*: QAbstractProxyModeltimerEventProc
  childEvent*: QAbstractProxyModelchildEventProc
  customEvent*: QAbstractProxyModelcustomEventProc
  connectNotify*: QAbstractProxyModelconnectNotifyProc
  disconnectNotify*: QAbstractProxyModeldisconnectNotifyProc
proc QAbstractProxyModelmetaObject*(self: gen_qabstractproxymodel_types.QAbstractProxyModel, ): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQAbstractProxyModel_virtualbase_metaObject(self.h))

proc miqt_exec_callback_cQAbstractProxyModel_metaObject(vtbl: pointer, self: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QAbstractProxyModelVTable](vtbl)
  let self = QAbstractProxyModel(h: self)
  var virtualReturn = vtbl[].metaObject(self)
  virtualReturn.h

proc QAbstractProxyModelmetacast*(self: gen_qabstractproxymodel_types.QAbstractProxyModel, param1: cstring): pointer =
  fcQAbstractProxyModel_virtualbase_metacast(self.h, param1)

proc miqt_exec_callback_cQAbstractProxyModel_metacast(vtbl: pointer, self: pointer, param1: cstring): pointer {.cdecl.} =
  let vtbl = cast[ptr QAbstractProxyModelVTable](vtbl)
  let self = QAbstractProxyModel(h: self)
  let slotval1 = (param1)
  var virtualReturn = vtbl[].metacast(self, slotval1)
  virtualReturn

proc QAbstractProxyModelmetacall*(self: gen_qabstractproxymodel_types.QAbstractProxyModel, param1: cint, param2: cint, param3: pointer): cint =
  fcQAbstractProxyModel_virtualbase_metacall(self.h, cint(param1), param2, param3)

proc miqt_exec_callback_cQAbstractProxyModel_metacall(vtbl: pointer, self: pointer, param1: cint, param2: cint, param3: pointer): cint {.cdecl.} =
  let vtbl = cast[ptr QAbstractProxyModelVTable](vtbl)
  let self = QAbstractProxyModel(h: self)
  let slotval1 = cint(param1)
  let slotval2 = param2
  let slotval3 = param3
  var virtualReturn = vtbl[].metacall(self, slotval1, slotval2, slotval3)
  virtualReturn

proc QAbstractProxyModelsetSourceModel*(self: gen_qabstractproxymodel_types.QAbstractProxyModel, sourceModel: gen_qabstractitemmodel_types.QAbstractItemModel): void =
  fcQAbstractProxyModel_virtualbase_setSourceModel(self.h, sourceModel.h)

proc miqt_exec_callback_cQAbstractProxyModel_setSourceModel(vtbl: pointer, self: pointer, sourceModel: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QAbstractProxyModelVTable](vtbl)
  let self = QAbstractProxyModel(h: self)
  let slotval1 = gen_qabstractitemmodel_types.QAbstractItemModel(h: sourceModel)
  vtbl[].setSourceModel(self, slotval1)

proc miqt_exec_callback_cQAbstractProxyModel_mapToSource(vtbl: pointer, self: pointer, proxyIndex: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QAbstractProxyModelVTable](vtbl)
  let self = QAbstractProxyModel(h: self)
  let slotval1 = gen_qabstractitemmodel_types.QModelIndex(h: proxyIndex)
  var virtualReturn = vtbl[].mapToSource(self, slotval1)
  virtualReturn.h

proc miqt_exec_callback_cQAbstractProxyModel_mapFromSource(vtbl: pointer, self: pointer, sourceIndex: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QAbstractProxyModelVTable](vtbl)
  let self = QAbstractProxyModel(h: self)
  let slotval1 = gen_qabstractitemmodel_types.QModelIndex(h: sourceIndex)
  var virtualReturn = vtbl[].mapFromSource(self, slotval1)
  virtualReturn.h

proc QAbstractProxyModelmapSelectionToSource*(self: gen_qabstractproxymodel_types.QAbstractProxyModel, selection: gen_qitemselectionmodel_types.QItemSelection): gen_qitemselectionmodel_types.QItemSelection =
  gen_qitemselectionmodel_types.QItemSelection(h: fcQAbstractProxyModel_virtualbase_mapSelectionToSource(self.h, selection.h))

proc miqt_exec_callback_cQAbstractProxyModel_mapSelectionToSource(vtbl: pointer, self: pointer, selection: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QAbstractProxyModelVTable](vtbl)
  let self = QAbstractProxyModel(h: self)
  let slotval1 = gen_qitemselectionmodel_types.QItemSelection(h: selection)
  var virtualReturn = vtbl[].mapSelectionToSource(self, slotval1)
  virtualReturn.h

proc QAbstractProxyModelmapSelectionFromSource*(self: gen_qabstractproxymodel_types.QAbstractProxyModel, selection: gen_qitemselectionmodel_types.QItemSelection): gen_qitemselectionmodel_types.QItemSelection =
  gen_qitemselectionmodel_types.QItemSelection(h: fcQAbstractProxyModel_virtualbase_mapSelectionFromSource(self.h, selection.h))

proc miqt_exec_callback_cQAbstractProxyModel_mapSelectionFromSource(vtbl: pointer, self: pointer, selection: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QAbstractProxyModelVTable](vtbl)
  let self = QAbstractProxyModel(h: self)
  let slotval1 = gen_qitemselectionmodel_types.QItemSelection(h: selection)
  var virtualReturn = vtbl[].mapSelectionFromSource(self, slotval1)
  virtualReturn.h

proc QAbstractProxyModelsubmit*(self: gen_qabstractproxymodel_types.QAbstractProxyModel, ): bool =
  fcQAbstractProxyModel_virtualbase_submit(self.h)

proc miqt_exec_callback_cQAbstractProxyModel_submit(vtbl: pointer, self: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QAbstractProxyModelVTable](vtbl)
  let self = QAbstractProxyModel(h: self)
  var virtualReturn = vtbl[].submit(self)
  virtualReturn

proc QAbstractProxyModelrevert*(self: gen_qabstractproxymodel_types.QAbstractProxyModel, ): void =
  fcQAbstractProxyModel_virtualbase_revert(self.h)

proc miqt_exec_callback_cQAbstractProxyModel_revert(vtbl: pointer, self: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QAbstractProxyModelVTable](vtbl)
  let self = QAbstractProxyModel(h: self)
  vtbl[].revert(self)

proc QAbstractProxyModeldata*(self: gen_qabstractproxymodel_types.QAbstractProxyModel, proxyIndex: gen_qabstractitemmodel_types.QModelIndex, role: cint): gen_qvariant_types.QVariant =
  gen_qvariant_types.QVariant(h: fcQAbstractProxyModel_virtualbase_data(self.h, proxyIndex.h, role))

proc miqt_exec_callback_cQAbstractProxyModel_data(vtbl: pointer, self: pointer, proxyIndex: pointer, role: cint): pointer {.cdecl.} =
  let vtbl = cast[ptr QAbstractProxyModelVTable](vtbl)
  let self = QAbstractProxyModel(h: self)
  let slotval1 = gen_qabstractitemmodel_types.QModelIndex(h: proxyIndex)
  let slotval2 = role
  var virtualReturn = vtbl[].data(self, slotval1, slotval2)
  virtualReturn.h

proc QAbstractProxyModelheaderData*(self: gen_qabstractproxymodel_types.QAbstractProxyModel, section: cint, orientation: cint, role: cint): gen_qvariant_types.QVariant =
  gen_qvariant_types.QVariant(h: fcQAbstractProxyModel_virtualbase_headerData(self.h, section, cint(orientation), role))

proc miqt_exec_callback_cQAbstractProxyModel_headerData(vtbl: pointer, self: pointer, section: cint, orientation: cint, role: cint): pointer {.cdecl.} =
  let vtbl = cast[ptr QAbstractProxyModelVTable](vtbl)
  let self = QAbstractProxyModel(h: self)
  let slotval1 = section
  let slotval2 = cint(orientation)
  let slotval3 = role
  var virtualReturn = vtbl[].headerData(self, slotval1, slotval2, slotval3)
  virtualReturn.h

proc QAbstractProxyModelitemData*(self: gen_qabstractproxymodel_types.QAbstractProxyModel, index: gen_qabstractitemmodel_types.QModelIndex): Table[cint,gen_qvariant_types.QVariant] =
  var v_mm = fcQAbstractProxyModel_virtualbase_itemData(self.h, index.h)
  var vx_ret: Table[cint, gen_qvariant_types.QVariant]
  var v_Keys = cast[ptr UncheckedArray[cint]](v_mm.keys)
  var v_Values = cast[ptr UncheckedArray[pointer]](v_mm.values)
  for i in 0..<v_mm.len:
    var v_entry_Key = v_Keys[i]

    var v_entry_Value = gen_qvariant_types.QVariant(h: v_Values[i])

    vx_ret[v_entry_Key] = v_entry_Value
  vx_ret

proc miqt_exec_callback_cQAbstractProxyModel_itemData(vtbl: pointer, self: pointer, index: pointer): struct_miqt_map {.cdecl.} =
  let vtbl = cast[ptr QAbstractProxyModelVTable](vtbl)
  let self = QAbstractProxyModel(h: self)
  let slotval1 = gen_qabstractitemmodel_types.QModelIndex(h: index)
  var virtualReturn = vtbl[].itemData(self, slotval1)
  var virtualReturn_Keys_CArray = newSeq[cint](len(virtualReturn))
  var virtualReturn_Values_CArray = newSeq[pointer](len(virtualReturn))
  var virtualReturn_ctr = 0
  for virtualReturnk, virtualReturnv in virtualReturn:
    virtualReturn_Keys_CArray[virtualReturn_ctr] = virtualReturn_k
    virtualReturn_Values_CArray[virtualReturn_ctr] = virtualReturn_v.h
    virtualReturn_ctr += 1

  struct_miqt_map(len: csize_t(len(virtualReturn)),keys: if len(virtualReturn) == 0: nil else: addr(virtualReturn_Keys_CArray[0]), values: if len(virtualReturn) == 0: nil else: addr(virtualReturn_Values_CArray[0]),)

proc QAbstractProxyModelflags*(self: gen_qabstractproxymodel_types.QAbstractProxyModel, index: gen_qabstractitemmodel_types.QModelIndex): cint =
  cint(fcQAbstractProxyModel_virtualbase_flags(self.h, index.h))

proc miqt_exec_callback_cQAbstractProxyModel_flags(vtbl: pointer, self: pointer, index: pointer): cint {.cdecl.} =
  let vtbl = cast[ptr QAbstractProxyModelVTable](vtbl)
  let self = QAbstractProxyModel(h: self)
  let slotval1 = gen_qabstractitemmodel_types.QModelIndex(h: index)
  var virtualReturn = vtbl[].flags(self, slotval1)
  cint(virtualReturn)

proc QAbstractProxyModelsetData*(self: gen_qabstractproxymodel_types.QAbstractProxyModel, index: gen_qabstractitemmodel_types.QModelIndex, value: gen_qvariant_types.QVariant, role: cint): bool =
  fcQAbstractProxyModel_virtualbase_setData(self.h, index.h, value.h, role)

proc miqt_exec_callback_cQAbstractProxyModel_setData(vtbl: pointer, self: pointer, index: pointer, value: pointer, role: cint): bool {.cdecl.} =
  let vtbl = cast[ptr QAbstractProxyModelVTable](vtbl)
  let self = QAbstractProxyModel(h: self)
  let slotval1 = gen_qabstractitemmodel_types.QModelIndex(h: index)
  let slotval2 = gen_qvariant_types.QVariant(h: value)
  let slotval3 = role
  var virtualReturn = vtbl[].setData(self, slotval1, slotval2, slotval3)
  virtualReturn

proc QAbstractProxyModelsetItemData*(self: gen_qabstractproxymodel_types.QAbstractProxyModel, index: gen_qabstractitemmodel_types.QModelIndex, roles: Table[cint,gen_qvariant_types.QVariant]): bool =
  var roles_Keys_CArray = newSeq[cint](len(roles))
  var roles_Values_CArray = newSeq[pointer](len(roles))
  var roles_ctr = 0
  for rolesk, rolesv in roles:
    roles_Keys_CArray[roles_ctr] = roles_k
    roles_Values_CArray[roles_ctr] = roles_v.h
    roles_ctr += 1

  fcQAbstractProxyModel_virtualbase_setItemData(self.h, index.h, struct_miqt_map(len: csize_t(len(roles)),keys: if len(roles) == 0: nil else: addr(roles_Keys_CArray[0]), values: if len(roles) == 0: nil else: addr(roles_Values_CArray[0]),))

proc miqt_exec_callback_cQAbstractProxyModel_setItemData(vtbl: pointer, self: pointer, index: pointer, roles: struct_miqt_map): bool {.cdecl.} =
  let vtbl = cast[ptr QAbstractProxyModelVTable](vtbl)
  let self = QAbstractProxyModel(h: self)
  let slotval1 = gen_qabstractitemmodel_types.QModelIndex(h: index)
  var vroles_mm = roles
  var vrolesx_ret: Table[cint, gen_qvariant_types.QVariant]
  var vroles_Keys = cast[ptr UncheckedArray[cint]](vroles_mm.keys)
  var vroles_Values = cast[ptr UncheckedArray[pointer]](vroles_mm.values)
  for i in 0..<vroles_mm.len:
    var vroles_entry_Key = vroles_Keys[i]

    var vroles_entry_Value = gen_qvariant_types.QVariant(h: vroles_Values[i])

    vrolesx_ret[vroles_entry_Key] = vroles_entry_Value
  let slotval2 = vrolesx_ret
  var virtualReturn = vtbl[].setItemData(self, slotval1, slotval2)
  virtualReturn

proc QAbstractProxyModelsetHeaderData*(self: gen_qabstractproxymodel_types.QAbstractProxyModel, section: cint, orientation: cint, value: gen_qvariant_types.QVariant, role: cint): bool =
  fcQAbstractProxyModel_virtualbase_setHeaderData(self.h, section, cint(orientation), value.h, role)

proc miqt_exec_callback_cQAbstractProxyModel_setHeaderData(vtbl: pointer, self: pointer, section: cint, orientation: cint, value: pointer, role: cint): bool {.cdecl.} =
  let vtbl = cast[ptr QAbstractProxyModelVTable](vtbl)
  let self = QAbstractProxyModel(h: self)
  let slotval1 = section
  let slotval2 = cint(orientation)
  let slotval3 = gen_qvariant_types.QVariant(h: value)
  let slotval4 = role
  var virtualReturn = vtbl[].setHeaderData(self, slotval1, slotval2, slotval3, slotval4)
  virtualReturn

proc QAbstractProxyModelclearItemData*(self: gen_qabstractproxymodel_types.QAbstractProxyModel, index: gen_qabstractitemmodel_types.QModelIndex): bool =
  fcQAbstractProxyModel_virtualbase_clearItemData(self.h, index.h)

proc miqt_exec_callback_cQAbstractProxyModel_clearItemData(vtbl: pointer, self: pointer, index: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QAbstractProxyModelVTable](vtbl)
  let self = QAbstractProxyModel(h: self)
  let slotval1 = gen_qabstractitemmodel_types.QModelIndex(h: index)
  var virtualReturn = vtbl[].clearItemData(self, slotval1)
  virtualReturn

proc QAbstractProxyModelbuddy*(self: gen_qabstractproxymodel_types.QAbstractProxyModel, index: gen_qabstractitemmodel_types.QModelIndex): gen_qabstractitemmodel_types.QModelIndex =
  gen_qabstractitemmodel_types.QModelIndex(h: fcQAbstractProxyModel_virtualbase_buddy(self.h, index.h))

proc miqt_exec_callback_cQAbstractProxyModel_buddy(vtbl: pointer, self: pointer, index: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QAbstractProxyModelVTable](vtbl)
  let self = QAbstractProxyModel(h: self)
  let slotval1 = gen_qabstractitemmodel_types.QModelIndex(h: index)
  var virtualReturn = vtbl[].buddy(self, slotval1)
  virtualReturn.h

proc QAbstractProxyModelcanFetchMore*(self: gen_qabstractproxymodel_types.QAbstractProxyModel, parent: gen_qabstractitemmodel_types.QModelIndex): bool =
  fcQAbstractProxyModel_virtualbase_canFetchMore(self.h, parent.h)

proc miqt_exec_callback_cQAbstractProxyModel_canFetchMore(vtbl: pointer, self: pointer, parent: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QAbstractProxyModelVTable](vtbl)
  let self = QAbstractProxyModel(h: self)
  let slotval1 = gen_qabstractitemmodel_types.QModelIndex(h: parent)
  var virtualReturn = vtbl[].canFetchMore(self, slotval1)
  virtualReturn

proc QAbstractProxyModelfetchMore*(self: gen_qabstractproxymodel_types.QAbstractProxyModel, parent: gen_qabstractitemmodel_types.QModelIndex): void =
  fcQAbstractProxyModel_virtualbase_fetchMore(self.h, parent.h)

proc miqt_exec_callback_cQAbstractProxyModel_fetchMore(vtbl: pointer, self: pointer, parent: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QAbstractProxyModelVTable](vtbl)
  let self = QAbstractProxyModel(h: self)
  let slotval1 = gen_qabstractitemmodel_types.QModelIndex(h: parent)
  vtbl[].fetchMore(self, slotval1)

proc QAbstractProxyModelsort*(self: gen_qabstractproxymodel_types.QAbstractProxyModel, column: cint, order: cint): void =
  fcQAbstractProxyModel_virtualbase_sort(self.h, column, cint(order))

proc miqt_exec_callback_cQAbstractProxyModel_sort(vtbl: pointer, self: pointer, column: cint, order: cint): void {.cdecl.} =
  let vtbl = cast[ptr QAbstractProxyModelVTable](vtbl)
  let self = QAbstractProxyModel(h: self)
  let slotval1 = column
  let slotval2 = cint(order)
  vtbl[].sort(self, slotval1, slotval2)

proc QAbstractProxyModelspan*(self: gen_qabstractproxymodel_types.QAbstractProxyModel, index: gen_qabstractitemmodel_types.QModelIndex): gen_qsize_types.QSize =
  gen_qsize_types.QSize(h: fcQAbstractProxyModel_virtualbase_span(self.h, index.h))

proc miqt_exec_callback_cQAbstractProxyModel_span(vtbl: pointer, self: pointer, index: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QAbstractProxyModelVTable](vtbl)
  let self = QAbstractProxyModel(h: self)
  let slotval1 = gen_qabstractitemmodel_types.QModelIndex(h: index)
  var virtualReturn = vtbl[].span(self, slotval1)
  virtualReturn.h

proc QAbstractProxyModelhasChildren*(self: gen_qabstractproxymodel_types.QAbstractProxyModel, parent: gen_qabstractitemmodel_types.QModelIndex): bool =
  fcQAbstractProxyModel_virtualbase_hasChildren(self.h, parent.h)

proc miqt_exec_callback_cQAbstractProxyModel_hasChildren(vtbl: pointer, self: pointer, parent: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QAbstractProxyModelVTable](vtbl)
  let self = QAbstractProxyModel(h: self)
  let slotval1 = gen_qabstractitemmodel_types.QModelIndex(h: parent)
  var virtualReturn = vtbl[].hasChildren(self, slotval1)
  virtualReturn

proc QAbstractProxyModelsibling*(self: gen_qabstractproxymodel_types.QAbstractProxyModel, row: cint, column: cint, idx: gen_qabstractitemmodel_types.QModelIndex): gen_qabstractitemmodel_types.QModelIndex =
  gen_qabstractitemmodel_types.QModelIndex(h: fcQAbstractProxyModel_virtualbase_sibling(self.h, row, column, idx.h))

proc miqt_exec_callback_cQAbstractProxyModel_sibling(vtbl: pointer, self: pointer, row: cint, column: cint, idx: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QAbstractProxyModelVTable](vtbl)
  let self = QAbstractProxyModel(h: self)
  let slotval1 = row
  let slotval2 = column
  let slotval3 = gen_qabstractitemmodel_types.QModelIndex(h: idx)
  var virtualReturn = vtbl[].sibling(self, slotval1, slotval2, slotval3)
  virtualReturn.h

proc QAbstractProxyModelmimeData*(self: gen_qabstractproxymodel_types.QAbstractProxyModel, indexes: seq[gen_qabstractitemmodel_types.QModelIndex]): gen_qmimedata_types.QMimeData =
  var indexes_CArray = newSeq[pointer](len(indexes))
  for i in 0..<len(indexes):
    indexes_CArray[i] = indexes[i].h

  gen_qmimedata_types.QMimeData(h: fcQAbstractProxyModel_virtualbase_mimeData(self.h, struct_miqt_array(len: csize_t(len(indexes)), data: if len(indexes) == 0: nil else: addr(indexes_CArray[0]))))

proc miqt_exec_callback_cQAbstractProxyModel_mimeData(vtbl: pointer, self: pointer, indexes: struct_miqt_array): pointer {.cdecl.} =
  let vtbl = cast[ptr QAbstractProxyModelVTable](vtbl)
  let self = QAbstractProxyModel(h: self)
  var vindexes_ma = indexes
  var vindexesx_ret = newSeq[gen_qabstractitemmodel_types.QModelIndex](int(vindexes_ma.len))
  let vindexes_outCast = cast[ptr UncheckedArray[pointer]](vindexes_ma.data)
  for i in 0 ..< vindexes_ma.len:
    vindexesx_ret[i] = gen_qabstractitemmodel_types.QModelIndex(h: vindexes_outCast[i])
  let slotval1 = vindexesx_ret
  var virtualReturn = vtbl[].mimeData(self, slotval1)
  virtualReturn.h

proc QAbstractProxyModelcanDropMimeData*(self: gen_qabstractproxymodel_types.QAbstractProxyModel, data: gen_qmimedata_types.QMimeData, action: cint, row: cint, column: cint, parent: gen_qabstractitemmodel_types.QModelIndex): bool =
  fcQAbstractProxyModel_virtualbase_canDropMimeData(self.h, data.h, cint(action), row, column, parent.h)

proc miqt_exec_callback_cQAbstractProxyModel_canDropMimeData(vtbl: pointer, self: pointer, data: pointer, action: cint, row: cint, column: cint, parent: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QAbstractProxyModelVTable](vtbl)
  let self = QAbstractProxyModel(h: self)
  let slotval1 = gen_qmimedata_types.QMimeData(h: data)
  let slotval2 = cint(action)
  let slotval3 = row
  let slotval4 = column
  let slotval5 = gen_qabstractitemmodel_types.QModelIndex(h: parent)
  var virtualReturn = vtbl[].canDropMimeData(self, slotval1, slotval2, slotval3, slotval4, slotval5)
  virtualReturn

proc QAbstractProxyModeldropMimeData*(self: gen_qabstractproxymodel_types.QAbstractProxyModel, data: gen_qmimedata_types.QMimeData, action: cint, row: cint, column: cint, parent: gen_qabstractitemmodel_types.QModelIndex): bool =
  fcQAbstractProxyModel_virtualbase_dropMimeData(self.h, data.h, cint(action), row, column, parent.h)

proc miqt_exec_callback_cQAbstractProxyModel_dropMimeData(vtbl: pointer, self: pointer, data: pointer, action: cint, row: cint, column: cint, parent: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QAbstractProxyModelVTable](vtbl)
  let self = QAbstractProxyModel(h: self)
  let slotval1 = gen_qmimedata_types.QMimeData(h: data)
  let slotval2 = cint(action)
  let slotval3 = row
  let slotval4 = column
  let slotval5 = gen_qabstractitemmodel_types.QModelIndex(h: parent)
  var virtualReturn = vtbl[].dropMimeData(self, slotval1, slotval2, slotval3, slotval4, slotval5)
  virtualReturn

proc QAbstractProxyModelmimeTypes*(self: gen_qabstractproxymodel_types.QAbstractProxyModel, ): seq[string] =
  var v_ma = fcQAbstractProxyModel_virtualbase_mimeTypes(self.h)
  var vx_ret = newSeq[string](int(v_ma.len))
  let v_outCast = cast[ptr UncheckedArray[struct_miqt_string]](v_ma.data)
  for i in 0 ..< v_ma.len:
    let vx_lv_ms = v_outCast[i]
    let vx_lvx_ret = string.fromBytes(toOpenArrayByte(vx_lv_ms.data, 0, int(vx_lv_ms.len)-1))
    c_free(vx_lv_ms.data)
    vx_ret[i] = vx_lvx_ret
  vx_ret

proc miqt_exec_callback_cQAbstractProxyModel_mimeTypes(vtbl: pointer, self: pointer): struct_miqt_array {.cdecl.} =
  let vtbl = cast[ptr QAbstractProxyModelVTable](vtbl)
  let self = QAbstractProxyModel(h: self)
  var virtualReturn = vtbl[].mimeTypes(self)
  var virtualReturn_CArray = newSeq[struct_miqt_string](len(virtualReturn))
  for i in 0..<len(virtualReturn):
    virtualReturn_CArray[i] = struct_miqt_string(data: virtualReturn[i], len: csize_t(len(virtualReturn[i])))

  struct_miqt_array(len: csize_t(len(virtualReturn)), data: if len(virtualReturn) == 0: nil else: addr(virtualReturn_CArray[0]))

proc QAbstractProxyModelsupportedDragActions*(self: gen_qabstractproxymodel_types.QAbstractProxyModel, ): cint =
  cint(fcQAbstractProxyModel_virtualbase_supportedDragActions(self.h))

proc miqt_exec_callback_cQAbstractProxyModel_supportedDragActions(vtbl: pointer, self: pointer): cint {.cdecl.} =
  let vtbl = cast[ptr QAbstractProxyModelVTable](vtbl)
  let self = QAbstractProxyModel(h: self)
  var virtualReturn = vtbl[].supportedDragActions(self)
  cint(virtualReturn)

proc QAbstractProxyModelsupportedDropActions*(self: gen_qabstractproxymodel_types.QAbstractProxyModel, ): cint =
  cint(fcQAbstractProxyModel_virtualbase_supportedDropActions(self.h))

proc miqt_exec_callback_cQAbstractProxyModel_supportedDropActions(vtbl: pointer, self: pointer): cint {.cdecl.} =
  let vtbl = cast[ptr QAbstractProxyModelVTable](vtbl)
  let self = QAbstractProxyModel(h: self)
  var virtualReturn = vtbl[].supportedDropActions(self)
  cint(virtualReturn)

proc QAbstractProxyModelroleNames*(self: gen_qabstractproxymodel_types.QAbstractProxyModel, ): Table[cint,seq[byte]] =
  var v_mm = fcQAbstractProxyModel_virtualbase_roleNames(self.h)
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
  vx_ret

proc miqt_exec_callback_cQAbstractProxyModel_roleNames(vtbl: pointer, self: pointer): struct_miqt_map {.cdecl.} =
  let vtbl = cast[ptr QAbstractProxyModelVTable](vtbl)
  let self = QAbstractProxyModel(h: self)
  var virtualReturn = vtbl[].roleNames(self)
  var virtualReturn_Keys_CArray = newSeq[cint](len(virtualReturn))
  var virtualReturn_Values_CArray = newSeq[struct_miqt_string](len(virtualReturn))
  var virtualReturn_ctr = 0
  for virtualReturnk, virtualReturnv in virtualReturn:
    virtualReturn_Keys_CArray[virtualReturn_ctr] = virtualReturn_k
    virtualReturn_Values_CArray[virtualReturn_ctr] = struct_miqt_string(data: cast[cstring](if len(virtualReturn_v) == 0: nil else: unsafeAddr virtualReturn_v[0]), len: csize_t(len(virtualReturn_v)))
    virtualReturn_ctr += 1

  struct_miqt_map(len: csize_t(len(virtualReturn)),keys: if len(virtualReturn) == 0: nil else: addr(virtualReturn_Keys_CArray[0]), values: if len(virtualReturn) == 0: nil else: addr(virtualReturn_Values_CArray[0]),)

proc miqt_exec_callback_cQAbstractProxyModel_index(vtbl: pointer, self: pointer, row: cint, column: cint, parent: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QAbstractProxyModelVTable](vtbl)
  let self = QAbstractProxyModel(h: self)
  let slotval1 = row
  let slotval2 = column
  let slotval3 = gen_qabstractitemmodel_types.QModelIndex(h: parent)
  var virtualReturn = vtbl[].index(self, slotval1, slotval2, slotval3)
  virtualReturn.h

proc miqt_exec_callback_cQAbstractProxyModel_parent(vtbl: pointer, self: pointer, child: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QAbstractProxyModelVTable](vtbl)
  let self = QAbstractProxyModel(h: self)
  let slotval1 = gen_qabstractitemmodel_types.QModelIndex(h: child)
  var virtualReturn = vtbl[].parent(self, slotval1)
  virtualReturn.h

proc miqt_exec_callback_cQAbstractProxyModel_rowCount(vtbl: pointer, self: pointer, parent: pointer): cint {.cdecl.} =
  let vtbl = cast[ptr QAbstractProxyModelVTable](vtbl)
  let self = QAbstractProxyModel(h: self)
  let slotval1 = gen_qabstractitemmodel_types.QModelIndex(h: parent)
  var virtualReturn = vtbl[].rowCount(self, slotval1)
  virtualReturn

proc miqt_exec_callback_cQAbstractProxyModel_columnCount(vtbl: pointer, self: pointer, parent: pointer): cint {.cdecl.} =
  let vtbl = cast[ptr QAbstractProxyModelVTable](vtbl)
  let self = QAbstractProxyModel(h: self)
  let slotval1 = gen_qabstractitemmodel_types.QModelIndex(h: parent)
  var virtualReturn = vtbl[].columnCount(self, slotval1)
  virtualReturn

proc QAbstractProxyModelinsertRows*(self: gen_qabstractproxymodel_types.QAbstractProxyModel, row: cint, count: cint, parent: gen_qabstractitemmodel_types.QModelIndex): bool =
  fcQAbstractProxyModel_virtualbase_insertRows(self.h, row, count, parent.h)

proc miqt_exec_callback_cQAbstractProxyModel_insertRows(vtbl: pointer, self: pointer, row: cint, count: cint, parent: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QAbstractProxyModelVTable](vtbl)
  let self = QAbstractProxyModel(h: self)
  let slotval1 = row
  let slotval2 = count
  let slotval3 = gen_qabstractitemmodel_types.QModelIndex(h: parent)
  var virtualReturn = vtbl[].insertRows(self, slotval1, slotval2, slotval3)
  virtualReturn

proc QAbstractProxyModelinsertColumns*(self: gen_qabstractproxymodel_types.QAbstractProxyModel, column: cint, count: cint, parent: gen_qabstractitemmodel_types.QModelIndex): bool =
  fcQAbstractProxyModel_virtualbase_insertColumns(self.h, column, count, parent.h)

proc miqt_exec_callback_cQAbstractProxyModel_insertColumns(vtbl: pointer, self: pointer, column: cint, count: cint, parent: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QAbstractProxyModelVTable](vtbl)
  let self = QAbstractProxyModel(h: self)
  let slotval1 = column
  let slotval2 = count
  let slotval3 = gen_qabstractitemmodel_types.QModelIndex(h: parent)
  var virtualReturn = vtbl[].insertColumns(self, slotval1, slotval2, slotval3)
  virtualReturn

proc QAbstractProxyModelremoveRows*(self: gen_qabstractproxymodel_types.QAbstractProxyModel, row: cint, count: cint, parent: gen_qabstractitemmodel_types.QModelIndex): bool =
  fcQAbstractProxyModel_virtualbase_removeRows(self.h, row, count, parent.h)

proc miqt_exec_callback_cQAbstractProxyModel_removeRows(vtbl: pointer, self: pointer, row: cint, count: cint, parent: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QAbstractProxyModelVTable](vtbl)
  let self = QAbstractProxyModel(h: self)
  let slotval1 = row
  let slotval2 = count
  let slotval3 = gen_qabstractitemmodel_types.QModelIndex(h: parent)
  var virtualReturn = vtbl[].removeRows(self, slotval1, slotval2, slotval3)
  virtualReturn

proc QAbstractProxyModelremoveColumns*(self: gen_qabstractproxymodel_types.QAbstractProxyModel, column: cint, count: cint, parent: gen_qabstractitemmodel_types.QModelIndex): bool =
  fcQAbstractProxyModel_virtualbase_removeColumns(self.h, column, count, parent.h)

proc miqt_exec_callback_cQAbstractProxyModel_removeColumns(vtbl: pointer, self: pointer, column: cint, count: cint, parent: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QAbstractProxyModelVTable](vtbl)
  let self = QAbstractProxyModel(h: self)
  let slotval1 = column
  let slotval2 = count
  let slotval3 = gen_qabstractitemmodel_types.QModelIndex(h: parent)
  var virtualReturn = vtbl[].removeColumns(self, slotval1, slotval2, slotval3)
  virtualReturn

proc QAbstractProxyModelmoveRows*(self: gen_qabstractproxymodel_types.QAbstractProxyModel, sourceParent: gen_qabstractitemmodel_types.QModelIndex, sourceRow: cint, count: cint, destinationParent: gen_qabstractitemmodel_types.QModelIndex, destinationChild: cint): bool =
  fcQAbstractProxyModel_virtualbase_moveRows(self.h, sourceParent.h, sourceRow, count, destinationParent.h, destinationChild)

proc miqt_exec_callback_cQAbstractProxyModel_moveRows(vtbl: pointer, self: pointer, sourceParent: pointer, sourceRow: cint, count: cint, destinationParent: pointer, destinationChild: cint): bool {.cdecl.} =
  let vtbl = cast[ptr QAbstractProxyModelVTable](vtbl)
  let self = QAbstractProxyModel(h: self)
  let slotval1 = gen_qabstractitemmodel_types.QModelIndex(h: sourceParent)
  let slotval2 = sourceRow
  let slotval3 = count
  let slotval4 = gen_qabstractitemmodel_types.QModelIndex(h: destinationParent)
  let slotval5 = destinationChild
  var virtualReturn = vtbl[].moveRows(self, slotval1, slotval2, slotval3, slotval4, slotval5)
  virtualReturn

proc QAbstractProxyModelmoveColumns*(self: gen_qabstractproxymodel_types.QAbstractProxyModel, sourceParent: gen_qabstractitemmodel_types.QModelIndex, sourceColumn: cint, count: cint, destinationParent: gen_qabstractitemmodel_types.QModelIndex, destinationChild: cint): bool =
  fcQAbstractProxyModel_virtualbase_moveColumns(self.h, sourceParent.h, sourceColumn, count, destinationParent.h, destinationChild)

proc miqt_exec_callback_cQAbstractProxyModel_moveColumns(vtbl: pointer, self: pointer, sourceParent: pointer, sourceColumn: cint, count: cint, destinationParent: pointer, destinationChild: cint): bool {.cdecl.} =
  let vtbl = cast[ptr QAbstractProxyModelVTable](vtbl)
  let self = QAbstractProxyModel(h: self)
  let slotval1 = gen_qabstractitemmodel_types.QModelIndex(h: sourceParent)
  let slotval2 = sourceColumn
  let slotval3 = count
  let slotval4 = gen_qabstractitemmodel_types.QModelIndex(h: destinationParent)
  let slotval5 = destinationChild
  var virtualReturn = vtbl[].moveColumns(self, slotval1, slotval2, slotval3, slotval4, slotval5)
  virtualReturn

proc QAbstractProxyModelmatch*(self: gen_qabstractproxymodel_types.QAbstractProxyModel, start: gen_qabstractitemmodel_types.QModelIndex, role: cint, value: gen_qvariant_types.QVariant, hits: cint, flags: cint): seq[gen_qabstractitemmodel_types.QModelIndex] =
  var v_ma = fcQAbstractProxyModel_virtualbase_match(self.h, start.h, role, value.h, hits, cint(flags))
  var vx_ret = newSeq[gen_qabstractitemmodel_types.QModelIndex](int(v_ma.len))
  let v_outCast = cast[ptr UncheckedArray[pointer]](v_ma.data)
  for i in 0 ..< v_ma.len:
    vx_ret[i] = gen_qabstractitemmodel_types.QModelIndex(h: v_outCast[i])
  vx_ret

proc miqt_exec_callback_cQAbstractProxyModel_match(vtbl: pointer, self: pointer, start: pointer, role: cint, value: pointer, hits: cint, flags: cint): struct_miqt_array {.cdecl.} =
  let vtbl = cast[ptr QAbstractProxyModelVTable](vtbl)
  let self = QAbstractProxyModel(h: self)
  let slotval1 = gen_qabstractitemmodel_types.QModelIndex(h: start)
  let slotval2 = role
  let slotval3 = gen_qvariant_types.QVariant(h: value)
  let slotval4 = hits
  let slotval5 = cint(flags)
  var virtualReturn = vtbl[].match(self, slotval1, slotval2, slotval3, slotval4, slotval5)
  var virtualReturn_CArray = newSeq[pointer](len(virtualReturn))
  for i in 0..<len(virtualReturn):
    virtualReturn_CArray[i] = virtualReturn[i].h

  struct_miqt_array(len: csize_t(len(virtualReturn)), data: if len(virtualReturn) == 0: nil else: addr(virtualReturn_CArray[0]))

proc QAbstractProxyModelmultiData*(self: gen_qabstractproxymodel_types.QAbstractProxyModel, index: gen_qabstractitemmodel_types.QModelIndex, roleDataSpan: gen_qabstractitemmodel_types.QModelRoleDataSpan): void =
  fcQAbstractProxyModel_virtualbase_multiData(self.h, index.h, roleDataSpan.h)

proc miqt_exec_callback_cQAbstractProxyModel_multiData(vtbl: pointer, self: pointer, index: pointer, roleDataSpan: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QAbstractProxyModelVTable](vtbl)
  let self = QAbstractProxyModel(h: self)
  let slotval1 = gen_qabstractitemmodel_types.QModelIndex(h: index)
  let slotval2 = gen_qabstractitemmodel_types.QModelRoleDataSpan(h: roleDataSpan)
  vtbl[].multiData(self, slotval1, slotval2)

proc QAbstractProxyModelresetInternalData*(self: gen_qabstractproxymodel_types.QAbstractProxyModel, ): void =
  fcQAbstractProxyModel_virtualbase_resetInternalData(self.h)

proc miqt_exec_callback_cQAbstractProxyModel_resetInternalData(vtbl: pointer, self: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QAbstractProxyModelVTable](vtbl)
  let self = QAbstractProxyModel(h: self)
  vtbl[].resetInternalData(self)

proc QAbstractProxyModelevent*(self: gen_qabstractproxymodel_types.QAbstractProxyModel, event: gen_qcoreevent_types.QEvent): bool =
  fcQAbstractProxyModel_virtualbase_event(self.h, event.h)

proc miqt_exec_callback_cQAbstractProxyModel_event(vtbl: pointer, self: pointer, event: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QAbstractProxyModelVTable](vtbl)
  let self = QAbstractProxyModel(h: self)
  let slotval1 = gen_qcoreevent_types.QEvent(h: event)
  var virtualReturn = vtbl[].event(self, slotval1)
  virtualReturn

proc QAbstractProxyModeleventFilter*(self: gen_qabstractproxymodel_types.QAbstractProxyModel, watched: gen_qobject_types.QObject, event: gen_qcoreevent_types.QEvent): bool =
  fcQAbstractProxyModel_virtualbase_eventFilter(self.h, watched.h, event.h)

proc miqt_exec_callback_cQAbstractProxyModel_eventFilter(vtbl: pointer, self: pointer, watched: pointer, event: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QAbstractProxyModelVTable](vtbl)
  let self = QAbstractProxyModel(h: self)
  let slotval1 = gen_qobject_types.QObject(h: watched)
  let slotval2 = gen_qcoreevent_types.QEvent(h: event)
  var virtualReturn = vtbl[].eventFilter(self, slotval1, slotval2)
  virtualReturn

proc QAbstractProxyModeltimerEvent*(self: gen_qabstractproxymodel_types.QAbstractProxyModel, event: gen_qcoreevent_types.QTimerEvent): void =
  fcQAbstractProxyModel_virtualbase_timerEvent(self.h, event.h)

proc miqt_exec_callback_cQAbstractProxyModel_timerEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QAbstractProxyModelVTable](vtbl)
  let self = QAbstractProxyModel(h: self)
  let slotval1 = gen_qcoreevent_types.QTimerEvent(h: event)
  vtbl[].timerEvent(self, slotval1)

proc QAbstractProxyModelchildEvent*(self: gen_qabstractproxymodel_types.QAbstractProxyModel, event: gen_qcoreevent_types.QChildEvent): void =
  fcQAbstractProxyModel_virtualbase_childEvent(self.h, event.h)

proc miqt_exec_callback_cQAbstractProxyModel_childEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QAbstractProxyModelVTable](vtbl)
  let self = QAbstractProxyModel(h: self)
  let slotval1 = gen_qcoreevent_types.QChildEvent(h: event)
  vtbl[].childEvent(self, slotval1)

proc QAbstractProxyModelcustomEvent*(self: gen_qabstractproxymodel_types.QAbstractProxyModel, event: gen_qcoreevent_types.QEvent): void =
  fcQAbstractProxyModel_virtualbase_customEvent(self.h, event.h)

proc miqt_exec_callback_cQAbstractProxyModel_customEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QAbstractProxyModelVTable](vtbl)
  let self = QAbstractProxyModel(h: self)
  let slotval1 = gen_qcoreevent_types.QEvent(h: event)
  vtbl[].customEvent(self, slotval1)

proc QAbstractProxyModelconnectNotify*(self: gen_qabstractproxymodel_types.QAbstractProxyModel, signal: gen_qmetaobject_types.QMetaMethod): void =
  fcQAbstractProxyModel_virtualbase_connectNotify(self.h, signal.h)

proc miqt_exec_callback_cQAbstractProxyModel_connectNotify(vtbl: pointer, self: pointer, signal: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QAbstractProxyModelVTable](vtbl)
  let self = QAbstractProxyModel(h: self)
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal)
  vtbl[].connectNotify(self, slotval1)

proc QAbstractProxyModeldisconnectNotify*(self: gen_qabstractproxymodel_types.QAbstractProxyModel, signal: gen_qmetaobject_types.QMetaMethod): void =
  fcQAbstractProxyModel_virtualbase_disconnectNotify(self.h, signal.h)

proc miqt_exec_callback_cQAbstractProxyModel_disconnectNotify(vtbl: pointer, self: pointer, signal: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QAbstractProxyModelVTable](vtbl)
  let self = QAbstractProxyModel(h: self)
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal)
  vtbl[].disconnectNotify(self, slotval1)

proc createSourceIndex*(self: gen_qabstractproxymodel_types.QAbstractProxyModel, row: cint, col: cint, internalPtr: pointer): gen_qabstractitemmodel_types.QModelIndex =
  gen_qabstractitemmodel_types.QModelIndex(h: fcQAbstractProxyModel_protectedbase_createSourceIndex(self.h, row, col, internalPtr))

proc createIndex*(self: gen_qabstractproxymodel_types.QAbstractProxyModel, row: cint, column: cint): gen_qabstractitemmodel_types.QModelIndex =
  gen_qabstractitemmodel_types.QModelIndex(h: fcQAbstractProxyModel_protectedbase_createIndex(self.h, row, column))

proc encodeData*(self: gen_qabstractproxymodel_types.QAbstractProxyModel, indexes: seq[gen_qabstractitemmodel_types.QModelIndex], stream: gen_qdatastream_types.QDataStream): void =
  var indexes_CArray = newSeq[pointer](len(indexes))
  for i in 0..<len(indexes):
    indexes_CArray[i] = indexes[i].h

  fcQAbstractProxyModel_protectedbase_encodeData(self.h, struct_miqt_array(len: csize_t(len(indexes)), data: if len(indexes) == 0: nil else: addr(indexes_CArray[0])), stream.h)

proc decodeData*(self: gen_qabstractproxymodel_types.QAbstractProxyModel, row: cint, column: cint, parent: gen_qabstractitemmodel_types.QModelIndex, stream: gen_qdatastream_types.QDataStream): bool =
  fcQAbstractProxyModel_protectedbase_decodeData(self.h, row, column, parent.h, stream.h)

proc beginInsertRows*(self: gen_qabstractproxymodel_types.QAbstractProxyModel, parent: gen_qabstractitemmodel_types.QModelIndex, first: cint, last: cint): void =
  fcQAbstractProxyModel_protectedbase_beginInsertRows(self.h, parent.h, first, last)

proc endInsertRows*(self: gen_qabstractproxymodel_types.QAbstractProxyModel, ): void =
  fcQAbstractProxyModel_protectedbase_endInsertRows(self.h)

proc beginRemoveRows*(self: gen_qabstractproxymodel_types.QAbstractProxyModel, parent: gen_qabstractitemmodel_types.QModelIndex, first: cint, last: cint): void =
  fcQAbstractProxyModel_protectedbase_beginRemoveRows(self.h, parent.h, first, last)

proc endRemoveRows*(self: gen_qabstractproxymodel_types.QAbstractProxyModel, ): void =
  fcQAbstractProxyModel_protectedbase_endRemoveRows(self.h)

proc beginMoveRows*(self: gen_qabstractproxymodel_types.QAbstractProxyModel, sourceParent: gen_qabstractitemmodel_types.QModelIndex, sourceFirst: cint, sourceLast: cint, destinationParent: gen_qabstractitemmodel_types.QModelIndex, destinationRow: cint): bool =
  fcQAbstractProxyModel_protectedbase_beginMoveRows(self.h, sourceParent.h, sourceFirst, sourceLast, destinationParent.h, destinationRow)

proc endMoveRows*(self: gen_qabstractproxymodel_types.QAbstractProxyModel, ): void =
  fcQAbstractProxyModel_protectedbase_endMoveRows(self.h)

proc beginInsertColumns*(self: gen_qabstractproxymodel_types.QAbstractProxyModel, parent: gen_qabstractitemmodel_types.QModelIndex, first: cint, last: cint): void =
  fcQAbstractProxyModel_protectedbase_beginInsertColumns(self.h, parent.h, first, last)

proc endInsertColumns*(self: gen_qabstractproxymodel_types.QAbstractProxyModel, ): void =
  fcQAbstractProxyModel_protectedbase_endInsertColumns(self.h)

proc beginRemoveColumns*(self: gen_qabstractproxymodel_types.QAbstractProxyModel, parent: gen_qabstractitemmodel_types.QModelIndex, first: cint, last: cint): void =
  fcQAbstractProxyModel_protectedbase_beginRemoveColumns(self.h, parent.h, first, last)

proc endRemoveColumns*(self: gen_qabstractproxymodel_types.QAbstractProxyModel, ): void =
  fcQAbstractProxyModel_protectedbase_endRemoveColumns(self.h)

proc beginMoveColumns*(self: gen_qabstractproxymodel_types.QAbstractProxyModel, sourceParent: gen_qabstractitemmodel_types.QModelIndex, sourceFirst: cint, sourceLast: cint, destinationParent: gen_qabstractitemmodel_types.QModelIndex, destinationColumn: cint): bool =
  fcQAbstractProxyModel_protectedbase_beginMoveColumns(self.h, sourceParent.h, sourceFirst, sourceLast, destinationParent.h, destinationColumn)

proc endMoveColumns*(self: gen_qabstractproxymodel_types.QAbstractProxyModel, ): void =
  fcQAbstractProxyModel_protectedbase_endMoveColumns(self.h)

proc beginResetModel*(self: gen_qabstractproxymodel_types.QAbstractProxyModel, ): void =
  fcQAbstractProxyModel_protectedbase_beginResetModel(self.h)

proc endResetModel*(self: gen_qabstractproxymodel_types.QAbstractProxyModel, ): void =
  fcQAbstractProxyModel_protectedbase_endResetModel(self.h)

proc changePersistentIndex*(self: gen_qabstractproxymodel_types.QAbstractProxyModel, fromVal: gen_qabstractitemmodel_types.QModelIndex, to: gen_qabstractitemmodel_types.QModelIndex): void =
  fcQAbstractProxyModel_protectedbase_changePersistentIndex(self.h, fromVal.h, to.h)

proc changePersistentIndexList*(self: gen_qabstractproxymodel_types.QAbstractProxyModel, fromVal: seq[gen_qabstractitemmodel_types.QModelIndex], to: seq[gen_qabstractitemmodel_types.QModelIndex]): void =
  var fromVal_CArray = newSeq[pointer](len(fromVal))
  for i in 0..<len(fromVal):
    fromVal_CArray[i] = fromVal[i].h

  var to_CArray = newSeq[pointer](len(to))
  for i in 0..<len(to):
    to_CArray[i] = to[i].h

  fcQAbstractProxyModel_protectedbase_changePersistentIndexList(self.h, struct_miqt_array(len: csize_t(len(fromVal)), data: if len(fromVal) == 0: nil else: addr(fromVal_CArray[0])), struct_miqt_array(len: csize_t(len(to)), data: if len(to) == 0: nil else: addr(to_CArray[0])))

proc persistentIndexList*(self: gen_qabstractproxymodel_types.QAbstractProxyModel, ): seq[gen_qabstractitemmodel_types.QModelIndex] =
  var v_ma = fcQAbstractProxyModel_protectedbase_persistentIndexList(self.h)
  var vx_ret = newSeq[gen_qabstractitemmodel_types.QModelIndex](int(v_ma.len))
  let v_outCast = cast[ptr UncheckedArray[pointer]](v_ma.data)
  for i in 0 ..< v_ma.len:
    vx_ret[i] = gen_qabstractitemmodel_types.QModelIndex(h: v_outCast[i])
  vx_ret

proc sender*(self: gen_qabstractproxymodel_types.QAbstractProxyModel, ): gen_qobject_types.QObject =
  gen_qobject_types.QObject(h: fcQAbstractProxyModel_protectedbase_sender(self.h))

proc senderSignalIndex*(self: gen_qabstractproxymodel_types.QAbstractProxyModel, ): cint =
  fcQAbstractProxyModel_protectedbase_senderSignalIndex(self.h)

proc receivers*(self: gen_qabstractproxymodel_types.QAbstractProxyModel, signal: cstring): cint =
  fcQAbstractProxyModel_protectedbase_receivers(self.h, signal)

proc isSignalConnected*(self: gen_qabstractproxymodel_types.QAbstractProxyModel, signal: gen_qmetaobject_types.QMetaMethod): bool =
  fcQAbstractProxyModel_protectedbase_isSignalConnected(self.h, signal.h)

proc create*(T: type gen_qabstractproxymodel_types.QAbstractProxyModel,
    vtbl: ref QAbstractProxyModelVTable = nil): gen_qabstractproxymodel_types.QAbstractProxyModel =
  let vtbl = if vtbl == nil: new QAbstractProxyModelVTable else: vtbl
  GC_ref(vtbl)
  vtbl.vtbl.destructor = proc(vtbl: ptr cQAbstractProxyModelVTable, _: ptr cQAbstractProxyModel) {.cdecl.} =
    let vtbl = cast[ref QAbstractProxyModelVTable](vtbl)
    GC_unref(vtbl)
  if not isNil(vtbl.metaObject):
    vtbl[].vtbl.metaObject = miqt_exec_callback_cQAbstractProxyModel_metaObject
  if not isNil(vtbl.metacast):
    vtbl[].vtbl.metacast = miqt_exec_callback_cQAbstractProxyModel_metacast
  if not isNil(vtbl.metacall):
    vtbl[].vtbl.metacall = miqt_exec_callback_cQAbstractProxyModel_metacall
  if not isNil(vtbl.setSourceModel):
    vtbl[].vtbl.setSourceModel = miqt_exec_callback_cQAbstractProxyModel_setSourceModel
  if not isNil(vtbl.mapToSource):
    vtbl[].vtbl.mapToSource = miqt_exec_callback_cQAbstractProxyModel_mapToSource
  if not isNil(vtbl.mapFromSource):
    vtbl[].vtbl.mapFromSource = miqt_exec_callback_cQAbstractProxyModel_mapFromSource
  if not isNil(vtbl.mapSelectionToSource):
    vtbl[].vtbl.mapSelectionToSource = miqt_exec_callback_cQAbstractProxyModel_mapSelectionToSource
  if not isNil(vtbl.mapSelectionFromSource):
    vtbl[].vtbl.mapSelectionFromSource = miqt_exec_callback_cQAbstractProxyModel_mapSelectionFromSource
  if not isNil(vtbl.submit):
    vtbl[].vtbl.submit = miqt_exec_callback_cQAbstractProxyModel_submit
  if not isNil(vtbl.revert):
    vtbl[].vtbl.revert = miqt_exec_callback_cQAbstractProxyModel_revert
  if not isNil(vtbl.data):
    vtbl[].vtbl.data = miqt_exec_callback_cQAbstractProxyModel_data
  if not isNil(vtbl.headerData):
    vtbl[].vtbl.headerData = miqt_exec_callback_cQAbstractProxyModel_headerData
  if not isNil(vtbl.itemData):
    vtbl[].vtbl.itemData = miqt_exec_callback_cQAbstractProxyModel_itemData
  if not isNil(vtbl.flags):
    vtbl[].vtbl.flags = miqt_exec_callback_cQAbstractProxyModel_flags
  if not isNil(vtbl.setData):
    vtbl[].vtbl.setData = miqt_exec_callback_cQAbstractProxyModel_setData
  if not isNil(vtbl.setItemData):
    vtbl[].vtbl.setItemData = miqt_exec_callback_cQAbstractProxyModel_setItemData
  if not isNil(vtbl.setHeaderData):
    vtbl[].vtbl.setHeaderData = miqt_exec_callback_cQAbstractProxyModel_setHeaderData
  if not isNil(vtbl.clearItemData):
    vtbl[].vtbl.clearItemData = miqt_exec_callback_cQAbstractProxyModel_clearItemData
  if not isNil(vtbl.buddy):
    vtbl[].vtbl.buddy = miqt_exec_callback_cQAbstractProxyModel_buddy
  if not isNil(vtbl.canFetchMore):
    vtbl[].vtbl.canFetchMore = miqt_exec_callback_cQAbstractProxyModel_canFetchMore
  if not isNil(vtbl.fetchMore):
    vtbl[].vtbl.fetchMore = miqt_exec_callback_cQAbstractProxyModel_fetchMore
  if not isNil(vtbl.sort):
    vtbl[].vtbl.sort = miqt_exec_callback_cQAbstractProxyModel_sort
  if not isNil(vtbl.span):
    vtbl[].vtbl.span = miqt_exec_callback_cQAbstractProxyModel_span
  if not isNil(vtbl.hasChildren):
    vtbl[].vtbl.hasChildren = miqt_exec_callback_cQAbstractProxyModel_hasChildren
  if not isNil(vtbl.sibling):
    vtbl[].vtbl.sibling = miqt_exec_callback_cQAbstractProxyModel_sibling
  if not isNil(vtbl.mimeData):
    vtbl[].vtbl.mimeData = miqt_exec_callback_cQAbstractProxyModel_mimeData
  if not isNil(vtbl.canDropMimeData):
    vtbl[].vtbl.canDropMimeData = miqt_exec_callback_cQAbstractProxyModel_canDropMimeData
  if not isNil(vtbl.dropMimeData):
    vtbl[].vtbl.dropMimeData = miqt_exec_callback_cQAbstractProxyModel_dropMimeData
  if not isNil(vtbl.mimeTypes):
    vtbl[].vtbl.mimeTypes = miqt_exec_callback_cQAbstractProxyModel_mimeTypes
  if not isNil(vtbl.supportedDragActions):
    vtbl[].vtbl.supportedDragActions = miqt_exec_callback_cQAbstractProxyModel_supportedDragActions
  if not isNil(vtbl.supportedDropActions):
    vtbl[].vtbl.supportedDropActions = miqt_exec_callback_cQAbstractProxyModel_supportedDropActions
  if not isNil(vtbl.roleNames):
    vtbl[].vtbl.roleNames = miqt_exec_callback_cQAbstractProxyModel_roleNames
  if not isNil(vtbl.index):
    vtbl[].vtbl.index = miqt_exec_callback_cQAbstractProxyModel_index
  if not isNil(vtbl.parent):
    vtbl[].vtbl.parent = miqt_exec_callback_cQAbstractProxyModel_parent
  if not isNil(vtbl.rowCount):
    vtbl[].vtbl.rowCount = miqt_exec_callback_cQAbstractProxyModel_rowCount
  if not isNil(vtbl.columnCount):
    vtbl[].vtbl.columnCount = miqt_exec_callback_cQAbstractProxyModel_columnCount
  if not isNil(vtbl.insertRows):
    vtbl[].vtbl.insertRows = miqt_exec_callback_cQAbstractProxyModel_insertRows
  if not isNil(vtbl.insertColumns):
    vtbl[].vtbl.insertColumns = miqt_exec_callback_cQAbstractProxyModel_insertColumns
  if not isNil(vtbl.removeRows):
    vtbl[].vtbl.removeRows = miqt_exec_callback_cQAbstractProxyModel_removeRows
  if not isNil(vtbl.removeColumns):
    vtbl[].vtbl.removeColumns = miqt_exec_callback_cQAbstractProxyModel_removeColumns
  if not isNil(vtbl.moveRows):
    vtbl[].vtbl.moveRows = miqt_exec_callback_cQAbstractProxyModel_moveRows
  if not isNil(vtbl.moveColumns):
    vtbl[].vtbl.moveColumns = miqt_exec_callback_cQAbstractProxyModel_moveColumns
  if not isNil(vtbl.match):
    vtbl[].vtbl.match = miqt_exec_callback_cQAbstractProxyModel_match
  if not isNil(vtbl.multiData):
    vtbl[].vtbl.multiData = miqt_exec_callback_cQAbstractProxyModel_multiData
  if not isNil(vtbl.resetInternalData):
    vtbl[].vtbl.resetInternalData = miqt_exec_callback_cQAbstractProxyModel_resetInternalData
  if not isNil(vtbl.event):
    vtbl[].vtbl.event = miqt_exec_callback_cQAbstractProxyModel_event
  if not isNil(vtbl.eventFilter):
    vtbl[].vtbl.eventFilter = miqt_exec_callback_cQAbstractProxyModel_eventFilter
  if not isNil(vtbl.timerEvent):
    vtbl[].vtbl.timerEvent = miqt_exec_callback_cQAbstractProxyModel_timerEvent
  if not isNil(vtbl.childEvent):
    vtbl[].vtbl.childEvent = miqt_exec_callback_cQAbstractProxyModel_childEvent
  if not isNil(vtbl.customEvent):
    vtbl[].vtbl.customEvent = miqt_exec_callback_cQAbstractProxyModel_customEvent
  if not isNil(vtbl.connectNotify):
    vtbl[].vtbl.connectNotify = miqt_exec_callback_cQAbstractProxyModel_connectNotify
  if not isNil(vtbl.disconnectNotify):
    vtbl[].vtbl.disconnectNotify = miqt_exec_callback_cQAbstractProxyModel_disconnectNotify
  gen_qabstractproxymodel_types.QAbstractProxyModel(h: fcQAbstractProxyModel_new(addr(vtbl[]), ))

proc create*(T: type gen_qabstractproxymodel_types.QAbstractProxyModel,
    parent: gen_qobject_types.QObject,
    vtbl: ref QAbstractProxyModelVTable = nil): gen_qabstractproxymodel_types.QAbstractProxyModel =
  let vtbl = if vtbl == nil: new QAbstractProxyModelVTable else: vtbl
  GC_ref(vtbl)
  vtbl.vtbl.destructor = proc(vtbl: ptr cQAbstractProxyModelVTable, _: ptr cQAbstractProxyModel) {.cdecl.} =
    let vtbl = cast[ref QAbstractProxyModelVTable](vtbl)
    GC_unref(vtbl)
  if not isNil(vtbl.metaObject):
    vtbl[].vtbl.metaObject = miqt_exec_callback_cQAbstractProxyModel_metaObject
  if not isNil(vtbl.metacast):
    vtbl[].vtbl.metacast = miqt_exec_callback_cQAbstractProxyModel_metacast
  if not isNil(vtbl.metacall):
    vtbl[].vtbl.metacall = miqt_exec_callback_cQAbstractProxyModel_metacall
  if not isNil(vtbl.setSourceModel):
    vtbl[].vtbl.setSourceModel = miqt_exec_callback_cQAbstractProxyModel_setSourceModel
  if not isNil(vtbl.mapToSource):
    vtbl[].vtbl.mapToSource = miqt_exec_callback_cQAbstractProxyModel_mapToSource
  if not isNil(vtbl.mapFromSource):
    vtbl[].vtbl.mapFromSource = miqt_exec_callback_cQAbstractProxyModel_mapFromSource
  if not isNil(vtbl.mapSelectionToSource):
    vtbl[].vtbl.mapSelectionToSource = miqt_exec_callback_cQAbstractProxyModel_mapSelectionToSource
  if not isNil(vtbl.mapSelectionFromSource):
    vtbl[].vtbl.mapSelectionFromSource = miqt_exec_callback_cQAbstractProxyModel_mapSelectionFromSource
  if not isNil(vtbl.submit):
    vtbl[].vtbl.submit = miqt_exec_callback_cQAbstractProxyModel_submit
  if not isNil(vtbl.revert):
    vtbl[].vtbl.revert = miqt_exec_callback_cQAbstractProxyModel_revert
  if not isNil(vtbl.data):
    vtbl[].vtbl.data = miqt_exec_callback_cQAbstractProxyModel_data
  if not isNil(vtbl.headerData):
    vtbl[].vtbl.headerData = miqt_exec_callback_cQAbstractProxyModel_headerData
  if not isNil(vtbl.itemData):
    vtbl[].vtbl.itemData = miqt_exec_callback_cQAbstractProxyModel_itemData
  if not isNil(vtbl.flags):
    vtbl[].vtbl.flags = miqt_exec_callback_cQAbstractProxyModel_flags
  if not isNil(vtbl.setData):
    vtbl[].vtbl.setData = miqt_exec_callback_cQAbstractProxyModel_setData
  if not isNil(vtbl.setItemData):
    vtbl[].vtbl.setItemData = miqt_exec_callback_cQAbstractProxyModel_setItemData
  if not isNil(vtbl.setHeaderData):
    vtbl[].vtbl.setHeaderData = miqt_exec_callback_cQAbstractProxyModel_setHeaderData
  if not isNil(vtbl.clearItemData):
    vtbl[].vtbl.clearItemData = miqt_exec_callback_cQAbstractProxyModel_clearItemData
  if not isNil(vtbl.buddy):
    vtbl[].vtbl.buddy = miqt_exec_callback_cQAbstractProxyModel_buddy
  if not isNil(vtbl.canFetchMore):
    vtbl[].vtbl.canFetchMore = miqt_exec_callback_cQAbstractProxyModel_canFetchMore
  if not isNil(vtbl.fetchMore):
    vtbl[].vtbl.fetchMore = miqt_exec_callback_cQAbstractProxyModel_fetchMore
  if not isNil(vtbl.sort):
    vtbl[].vtbl.sort = miqt_exec_callback_cQAbstractProxyModel_sort
  if not isNil(vtbl.span):
    vtbl[].vtbl.span = miqt_exec_callback_cQAbstractProxyModel_span
  if not isNil(vtbl.hasChildren):
    vtbl[].vtbl.hasChildren = miqt_exec_callback_cQAbstractProxyModel_hasChildren
  if not isNil(vtbl.sibling):
    vtbl[].vtbl.sibling = miqt_exec_callback_cQAbstractProxyModel_sibling
  if not isNil(vtbl.mimeData):
    vtbl[].vtbl.mimeData = miqt_exec_callback_cQAbstractProxyModel_mimeData
  if not isNil(vtbl.canDropMimeData):
    vtbl[].vtbl.canDropMimeData = miqt_exec_callback_cQAbstractProxyModel_canDropMimeData
  if not isNil(vtbl.dropMimeData):
    vtbl[].vtbl.dropMimeData = miqt_exec_callback_cQAbstractProxyModel_dropMimeData
  if not isNil(vtbl.mimeTypes):
    vtbl[].vtbl.mimeTypes = miqt_exec_callback_cQAbstractProxyModel_mimeTypes
  if not isNil(vtbl.supportedDragActions):
    vtbl[].vtbl.supportedDragActions = miqt_exec_callback_cQAbstractProxyModel_supportedDragActions
  if not isNil(vtbl.supportedDropActions):
    vtbl[].vtbl.supportedDropActions = miqt_exec_callback_cQAbstractProxyModel_supportedDropActions
  if not isNil(vtbl.roleNames):
    vtbl[].vtbl.roleNames = miqt_exec_callback_cQAbstractProxyModel_roleNames
  if not isNil(vtbl.index):
    vtbl[].vtbl.index = miqt_exec_callback_cQAbstractProxyModel_index
  if not isNil(vtbl.parent):
    vtbl[].vtbl.parent = miqt_exec_callback_cQAbstractProxyModel_parent
  if not isNil(vtbl.rowCount):
    vtbl[].vtbl.rowCount = miqt_exec_callback_cQAbstractProxyModel_rowCount
  if not isNil(vtbl.columnCount):
    vtbl[].vtbl.columnCount = miqt_exec_callback_cQAbstractProxyModel_columnCount
  if not isNil(vtbl.insertRows):
    vtbl[].vtbl.insertRows = miqt_exec_callback_cQAbstractProxyModel_insertRows
  if not isNil(vtbl.insertColumns):
    vtbl[].vtbl.insertColumns = miqt_exec_callback_cQAbstractProxyModel_insertColumns
  if not isNil(vtbl.removeRows):
    vtbl[].vtbl.removeRows = miqt_exec_callback_cQAbstractProxyModel_removeRows
  if not isNil(vtbl.removeColumns):
    vtbl[].vtbl.removeColumns = miqt_exec_callback_cQAbstractProxyModel_removeColumns
  if not isNil(vtbl.moveRows):
    vtbl[].vtbl.moveRows = miqt_exec_callback_cQAbstractProxyModel_moveRows
  if not isNil(vtbl.moveColumns):
    vtbl[].vtbl.moveColumns = miqt_exec_callback_cQAbstractProxyModel_moveColumns
  if not isNil(vtbl.match):
    vtbl[].vtbl.match = miqt_exec_callback_cQAbstractProxyModel_match
  if not isNil(vtbl.multiData):
    vtbl[].vtbl.multiData = miqt_exec_callback_cQAbstractProxyModel_multiData
  if not isNil(vtbl.resetInternalData):
    vtbl[].vtbl.resetInternalData = miqt_exec_callback_cQAbstractProxyModel_resetInternalData
  if not isNil(vtbl.event):
    vtbl[].vtbl.event = miqt_exec_callback_cQAbstractProxyModel_event
  if not isNil(vtbl.eventFilter):
    vtbl[].vtbl.eventFilter = miqt_exec_callback_cQAbstractProxyModel_eventFilter
  if not isNil(vtbl.timerEvent):
    vtbl[].vtbl.timerEvent = miqt_exec_callback_cQAbstractProxyModel_timerEvent
  if not isNil(vtbl.childEvent):
    vtbl[].vtbl.childEvent = miqt_exec_callback_cQAbstractProxyModel_childEvent
  if not isNil(vtbl.customEvent):
    vtbl[].vtbl.customEvent = miqt_exec_callback_cQAbstractProxyModel_customEvent
  if not isNil(vtbl.connectNotify):
    vtbl[].vtbl.connectNotify = miqt_exec_callback_cQAbstractProxyModel_connectNotify
  if not isNil(vtbl.disconnectNotify):
    vtbl[].vtbl.disconnectNotify = miqt_exec_callback_cQAbstractProxyModel_disconnectNotify
  gen_qabstractproxymodel_types.QAbstractProxyModel(h: fcQAbstractProxyModel_new2(addr(vtbl[]), parent.h))

proc staticMetaObject*(_: type gen_qabstractproxymodel_types.QAbstractProxyModel): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQAbstractProxyModel_staticMetaObject())
proc delete*(self: gen_qabstractproxymodel_types.QAbstractProxyModel) =
  fcQAbstractProxyModel_delete(self.h)
