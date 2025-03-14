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


{.compile("gen_qabstractproxymodel.cpp", QtCoreCFlags).}


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

proc fcQAbstractProxyModel_metaObject(self: pointer): pointer {.importc: "QAbstractProxyModel_metaObject".}
proc fcQAbstractProxyModel_metacast(self: pointer, param1: cstring): pointer {.importc: "QAbstractProxyModel_metacast".}
proc fcQAbstractProxyModel_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.importc: "QAbstractProxyModel_metacall".}
proc fcQAbstractProxyModel_tr(s: cstring): struct_miqt_string {.importc: "QAbstractProxyModel_tr".}
proc fcQAbstractProxyModel_setSourceModel(self: pointer, sourceModel: pointer): void {.importc: "QAbstractProxyModel_setSourceModel".}
proc fcQAbstractProxyModel_sourceModel(self: pointer): pointer {.importc: "QAbstractProxyModel_sourceModel".}
proc fcQAbstractProxyModel_mapToSource(self: pointer, proxyIndex: pointer): pointer {.importc: "QAbstractProxyModel_mapToSource".}
proc fcQAbstractProxyModel_mapFromSource(self: pointer, sourceIndex: pointer): pointer {.importc: "QAbstractProxyModel_mapFromSource".}
proc fcQAbstractProxyModel_mapSelectionToSource(self: pointer, selection: pointer): pointer {.importc: "QAbstractProxyModel_mapSelectionToSource".}
proc fcQAbstractProxyModel_mapSelectionFromSource(self: pointer, selection: pointer): pointer {.importc: "QAbstractProxyModel_mapSelectionFromSource".}
proc fcQAbstractProxyModel_submit(self: pointer): bool {.importc: "QAbstractProxyModel_submit".}
proc fcQAbstractProxyModel_revert(self: pointer): void {.importc: "QAbstractProxyModel_revert".}
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
proc fcQAbstractProxyModel_mimeTypes(self: pointer): struct_miqt_array {.importc: "QAbstractProxyModel_mimeTypes".}
proc fcQAbstractProxyModel_supportedDragActions(self: pointer): cint {.importc: "QAbstractProxyModel_supportedDragActions".}
proc fcQAbstractProxyModel_supportedDropActions(self: pointer): cint {.importc: "QAbstractProxyModel_supportedDropActions".}
proc fcQAbstractProxyModel_roleNames(self: pointer): struct_miqt_map {.importc: "QAbstractProxyModel_roleNames".}
proc fcQAbstractProxyModel_tr2(s: cstring, c: cstring): struct_miqt_string {.importc: "QAbstractProxyModel_tr2".}
proc fcQAbstractProxyModel_tr3(s: cstring, c: cstring, n: cint): struct_miqt_string {.importc: "QAbstractProxyModel_tr3".}
proc fcQAbstractProxyModel_vtbl(self: pointer): pointer {.importc: "QAbstractProxyModel_vtbl".}
proc fcQAbstractProxyModel_vdata(self: pointer): pointer {.importc: "QAbstractProxyModel_vdata".}
type cQAbstractProxyModelVTable {.pure.} = object
  destructor*: proc(self: pointer) {.cdecl, raises:[], gcsafe.}
  metaObject*: proc(self: pointer): pointer {.cdecl, raises: [], gcsafe.}
  metacast*: proc(self: pointer, param1: cstring): pointer {.cdecl, raises: [], gcsafe.}
  metacall*: proc(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.cdecl, raises: [], gcsafe.}
  setSourceModel*: proc(self: pointer, sourceModel: pointer): void {.cdecl, raises: [], gcsafe.}
  mapToSource*: proc(self: pointer, proxyIndex: pointer): pointer {.cdecl, raises: [], gcsafe.}
  mapFromSource*: proc(self: pointer, sourceIndex: pointer): pointer {.cdecl, raises: [], gcsafe.}
  mapSelectionToSource*: proc(self: pointer, selection: pointer): pointer {.cdecl, raises: [], gcsafe.}
  mapSelectionFromSource*: proc(self: pointer, selection: pointer): pointer {.cdecl, raises: [], gcsafe.}
  submit*: proc(self: pointer): bool {.cdecl, raises: [], gcsafe.}
  revert*: proc(self: pointer): void {.cdecl, raises: [], gcsafe.}
  data*: proc(self: pointer, proxyIndex: pointer, role: cint): pointer {.cdecl, raises: [], gcsafe.}
  headerData*: proc(self: pointer, section: cint, orientation: cint, role: cint): pointer {.cdecl, raises: [], gcsafe.}
  itemData*: proc(self: pointer, index: pointer): struct_miqt_map {.cdecl, raises: [], gcsafe.}
  flags*: proc(self: pointer, index: pointer): cint {.cdecl, raises: [], gcsafe.}
  setData*: proc(self: pointer, index: pointer, value: pointer, role: cint): bool {.cdecl, raises: [], gcsafe.}
  setItemData*: proc(self: pointer, index: pointer, roles: struct_miqt_map): bool {.cdecl, raises: [], gcsafe.}
  setHeaderData*: proc(self: pointer, section: cint, orientation: cint, value: pointer, role: cint): bool {.cdecl, raises: [], gcsafe.}
  clearItemData*: proc(self: pointer, index: pointer): bool {.cdecl, raises: [], gcsafe.}
  buddy*: proc(self: pointer, index: pointer): pointer {.cdecl, raises: [], gcsafe.}
  canFetchMore*: proc(self: pointer, parent: pointer): bool {.cdecl, raises: [], gcsafe.}
  fetchMore*: proc(self: pointer, parent: pointer): void {.cdecl, raises: [], gcsafe.}
  sort*: proc(self: pointer, column: cint, order: cint): void {.cdecl, raises: [], gcsafe.}
  span*: proc(self: pointer, index: pointer): pointer {.cdecl, raises: [], gcsafe.}
  hasChildren*: proc(self: pointer, parent: pointer): bool {.cdecl, raises: [], gcsafe.}
  sibling*: proc(self: pointer, row: cint, column: cint, idx: pointer): pointer {.cdecl, raises: [], gcsafe.}
  mimeData*: proc(self: pointer, indexes: struct_miqt_array): pointer {.cdecl, raises: [], gcsafe.}
  canDropMimeData*: proc(self: pointer, data: pointer, action: cint, row: cint, column: cint, parent: pointer): bool {.cdecl, raises: [], gcsafe.}
  dropMimeData*: proc(self: pointer, data: pointer, action: cint, row: cint, column: cint, parent: pointer): bool {.cdecl, raises: [], gcsafe.}
  mimeTypes*: proc(self: pointer): struct_miqt_array {.cdecl, raises: [], gcsafe.}
  supportedDragActions*: proc(self: pointer): cint {.cdecl, raises: [], gcsafe.}
  supportedDropActions*: proc(self: pointer): cint {.cdecl, raises: [], gcsafe.}
  roleNames*: proc(self: pointer): struct_miqt_map {.cdecl, raises: [], gcsafe.}
  index*: proc(self: pointer, row: cint, column: cint, parent: pointer): pointer {.cdecl, raises: [], gcsafe.}
  parent*: proc(self: pointer, child: pointer): pointer {.cdecl, raises: [], gcsafe.}
  rowCount*: proc(self: pointer, parent: pointer): cint {.cdecl, raises: [], gcsafe.}
  columnCount*: proc(self: pointer, parent: pointer): cint {.cdecl, raises: [], gcsafe.}
  insertRows*: proc(self: pointer, row: cint, count: cint, parent: pointer): bool {.cdecl, raises: [], gcsafe.}
  insertColumns*: proc(self: pointer, column: cint, count: cint, parent: pointer): bool {.cdecl, raises: [], gcsafe.}
  removeRows*: proc(self: pointer, row: cint, count: cint, parent: pointer): bool {.cdecl, raises: [], gcsafe.}
  removeColumns*: proc(self: pointer, column: cint, count: cint, parent: pointer): bool {.cdecl, raises: [], gcsafe.}
  moveRows*: proc(self: pointer, sourceParent: pointer, sourceRow: cint, count: cint, destinationParent: pointer, destinationChild: cint): bool {.cdecl, raises: [], gcsafe.}
  moveColumns*: proc(self: pointer, sourceParent: pointer, sourceColumn: cint, count: cint, destinationParent: pointer, destinationChild: cint): bool {.cdecl, raises: [], gcsafe.}
  match*: proc(self: pointer, start: pointer, role: cint, value: pointer, hits: cint, flags: cint): struct_miqt_array {.cdecl, raises: [], gcsafe.}
  multiData*: proc(self: pointer, index: pointer, roleDataSpan: pointer): void {.cdecl, raises: [], gcsafe.}
  resetInternalData*: proc(self: pointer): void {.cdecl, raises: [], gcsafe.}
  event*: proc(self: pointer, event: pointer): bool {.cdecl, raises: [], gcsafe.}
  eventFilter*: proc(self: pointer, watched: pointer, event: pointer): bool {.cdecl, raises: [], gcsafe.}
  timerEvent*: proc(self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  childEvent*: proc(self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  customEvent*: proc(self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  connectNotify*: proc(self: pointer, signal: pointer): void {.cdecl, raises: [], gcsafe.}
  disconnectNotify*: proc(self: pointer, signal: pointer): void {.cdecl, raises: [], gcsafe.}
proc fcQAbstractProxyModel_virtualbase_metaObject(self: pointer): pointer {.importc: "QAbstractProxyModel_virtualbase_metaObject".}
proc fcQAbstractProxyModel_virtualbase_metacast(self: pointer, param1: cstring): pointer {.importc: "QAbstractProxyModel_virtualbase_metacast".}
proc fcQAbstractProxyModel_virtualbase_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.importc: "QAbstractProxyModel_virtualbase_metacall".}
proc fcQAbstractProxyModel_virtualbase_setSourceModel(self: pointer, sourceModel: pointer): void {.importc: "QAbstractProxyModel_virtualbase_setSourceModel".}
proc fcQAbstractProxyModel_virtualbase_mapSelectionToSource(self: pointer, selection: pointer): pointer {.importc: "QAbstractProxyModel_virtualbase_mapSelectionToSource".}
proc fcQAbstractProxyModel_virtualbase_mapSelectionFromSource(self: pointer, selection: pointer): pointer {.importc: "QAbstractProxyModel_virtualbase_mapSelectionFromSource".}
proc fcQAbstractProxyModel_virtualbase_submit(self: pointer): bool {.importc: "QAbstractProxyModel_virtualbase_submit".}
proc fcQAbstractProxyModel_virtualbase_revert(self: pointer): void {.importc: "QAbstractProxyModel_virtualbase_revert".}
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
proc fcQAbstractProxyModel_virtualbase_mimeTypes(self: pointer): struct_miqt_array {.importc: "QAbstractProxyModel_virtualbase_mimeTypes".}
proc fcQAbstractProxyModel_virtualbase_supportedDragActions(self: pointer): cint {.importc: "QAbstractProxyModel_virtualbase_supportedDragActions".}
proc fcQAbstractProxyModel_virtualbase_supportedDropActions(self: pointer): cint {.importc: "QAbstractProxyModel_virtualbase_supportedDropActions".}
proc fcQAbstractProxyModel_virtualbase_roleNames(self: pointer): struct_miqt_map {.importc: "QAbstractProxyModel_virtualbase_roleNames".}
proc fcQAbstractProxyModel_virtualbase_insertRows(self: pointer, row: cint, count: cint, parent: pointer): bool {.importc: "QAbstractProxyModel_virtualbase_insertRows".}
proc fcQAbstractProxyModel_virtualbase_insertColumns(self: pointer, column: cint, count: cint, parent: pointer): bool {.importc: "QAbstractProxyModel_virtualbase_insertColumns".}
proc fcQAbstractProxyModel_virtualbase_removeRows(self: pointer, row: cint, count: cint, parent: pointer): bool {.importc: "QAbstractProxyModel_virtualbase_removeRows".}
proc fcQAbstractProxyModel_virtualbase_removeColumns(self: pointer, column: cint, count: cint, parent: pointer): bool {.importc: "QAbstractProxyModel_virtualbase_removeColumns".}
proc fcQAbstractProxyModel_virtualbase_moveRows(self: pointer, sourceParent: pointer, sourceRow: cint, count: cint, destinationParent: pointer, destinationChild: cint): bool {.importc: "QAbstractProxyModel_virtualbase_moveRows".}
proc fcQAbstractProxyModel_virtualbase_moveColumns(self: pointer, sourceParent: pointer, sourceColumn: cint, count: cint, destinationParent: pointer, destinationChild: cint): bool {.importc: "QAbstractProxyModel_virtualbase_moveColumns".}
proc fcQAbstractProxyModel_virtualbase_match(self: pointer, start: pointer, role: cint, value: pointer, hits: cint, flags: cint): struct_miqt_array {.importc: "QAbstractProxyModel_virtualbase_match".}
proc fcQAbstractProxyModel_virtualbase_multiData(self: pointer, index: pointer, roleDataSpan: pointer): void {.importc: "QAbstractProxyModel_virtualbase_multiData".}
proc fcQAbstractProxyModel_virtualbase_resetInternalData(self: pointer): void {.importc: "QAbstractProxyModel_virtualbase_resetInternalData".}
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
proc fcQAbstractProxyModel_protectedbase_endInsertRows(self: pointer): void {.importc: "QAbstractProxyModel_protectedbase_endInsertRows".}
proc fcQAbstractProxyModel_protectedbase_beginRemoveRows(self: pointer, parent: pointer, first: cint, last: cint): void {.importc: "QAbstractProxyModel_protectedbase_beginRemoveRows".}
proc fcQAbstractProxyModel_protectedbase_endRemoveRows(self: pointer): void {.importc: "QAbstractProxyModel_protectedbase_endRemoveRows".}
proc fcQAbstractProxyModel_protectedbase_beginMoveRows(self: pointer, sourceParent: pointer, sourceFirst: cint, sourceLast: cint, destinationParent: pointer, destinationRow: cint): bool {.importc: "QAbstractProxyModel_protectedbase_beginMoveRows".}
proc fcQAbstractProxyModel_protectedbase_endMoveRows(self: pointer): void {.importc: "QAbstractProxyModel_protectedbase_endMoveRows".}
proc fcQAbstractProxyModel_protectedbase_beginInsertColumns(self: pointer, parent: pointer, first: cint, last: cint): void {.importc: "QAbstractProxyModel_protectedbase_beginInsertColumns".}
proc fcQAbstractProxyModel_protectedbase_endInsertColumns(self: pointer): void {.importc: "QAbstractProxyModel_protectedbase_endInsertColumns".}
proc fcQAbstractProxyModel_protectedbase_beginRemoveColumns(self: pointer, parent: pointer, first: cint, last: cint): void {.importc: "QAbstractProxyModel_protectedbase_beginRemoveColumns".}
proc fcQAbstractProxyModel_protectedbase_endRemoveColumns(self: pointer): void {.importc: "QAbstractProxyModel_protectedbase_endRemoveColumns".}
proc fcQAbstractProxyModel_protectedbase_beginMoveColumns(self: pointer, sourceParent: pointer, sourceFirst: cint, sourceLast: cint, destinationParent: pointer, destinationColumn: cint): bool {.importc: "QAbstractProxyModel_protectedbase_beginMoveColumns".}
proc fcQAbstractProxyModel_protectedbase_endMoveColumns(self: pointer): void {.importc: "QAbstractProxyModel_protectedbase_endMoveColumns".}
proc fcQAbstractProxyModel_protectedbase_beginResetModel(self: pointer): void {.importc: "QAbstractProxyModel_protectedbase_beginResetModel".}
proc fcQAbstractProxyModel_protectedbase_endResetModel(self: pointer): void {.importc: "QAbstractProxyModel_protectedbase_endResetModel".}
proc fcQAbstractProxyModel_protectedbase_changePersistentIndex(self: pointer, fromVal: pointer, to: pointer): void {.importc: "QAbstractProxyModel_protectedbase_changePersistentIndex".}
proc fcQAbstractProxyModel_protectedbase_changePersistentIndexList(self: pointer, fromVal: struct_miqt_array, to: struct_miqt_array): void {.importc: "QAbstractProxyModel_protectedbase_changePersistentIndexList".}
proc fcQAbstractProxyModel_protectedbase_persistentIndexList(self: pointer): struct_miqt_array {.importc: "QAbstractProxyModel_protectedbase_persistentIndexList".}
proc fcQAbstractProxyModel_protectedbase_sender(self: pointer): pointer {.importc: "QAbstractProxyModel_protectedbase_sender".}
proc fcQAbstractProxyModel_protectedbase_senderSignalIndex(self: pointer): cint {.importc: "QAbstractProxyModel_protectedbase_senderSignalIndex".}
proc fcQAbstractProxyModel_protectedbase_receivers(self: pointer, signal: cstring): cint {.importc: "QAbstractProxyModel_protectedbase_receivers".}
proc fcQAbstractProxyModel_protectedbase_isSignalConnected(self: pointer, signal: pointer): bool {.importc: "QAbstractProxyModel_protectedbase_isSignalConnected".}
proc fcQAbstractProxyModel_new(vtbl, vdata: pointer): ptr cQAbstractProxyModel {.importc: "QAbstractProxyModel_new".}
proc fcQAbstractProxyModel_new2(vtbl, vdata: pointer, parent: pointer): ptr cQAbstractProxyModel {.importc: "QAbstractProxyModel_new2".}
proc fcQAbstractProxyModel_staticMetaObject(): pointer {.importc: "QAbstractProxyModel_staticMetaObject".}

proc metaObject*(self: gen_qabstractproxymodel_types.QAbstractProxyModel): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQAbstractProxyModel_metaObject(self.h), owned: false)

proc metacast*(self: gen_qabstractproxymodel_types.QAbstractProxyModel, param1: cstring): pointer =
  fcQAbstractProxyModel_metacast(self.h, param1)

proc metacall*(self: gen_qabstractproxymodel_types.QAbstractProxyModel, param1: cint, param2: cint, param3: pointer): cint =
  fcQAbstractProxyModel_metacall(self.h, cint(param1), param2, param3)

proc tr*(_: type gen_qabstractproxymodel_types.QAbstractProxyModel, s: cstring): string =
  let v_ms = fcQAbstractProxyModel_tr(s)
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

proc setSourceModel*(self: gen_qabstractproxymodel_types.QAbstractProxyModel, sourceModel: gen_qabstractitemmodel_types.QAbstractItemModel): void =
  fcQAbstractProxyModel_setSourceModel(self.h, sourceModel.h)

proc sourceModel*(self: gen_qabstractproxymodel_types.QAbstractProxyModel): gen_qabstractitemmodel_types.QAbstractItemModel =
  gen_qabstractitemmodel_types.QAbstractItemModel(h: fcQAbstractProxyModel_sourceModel(self.h), owned: false)

proc mapToSource*(self: gen_qabstractproxymodel_types.QAbstractProxyModel, proxyIndex: gen_qabstractitemmodel_types.QModelIndex): gen_qabstractitemmodel_types.QModelIndex =
  gen_qabstractitemmodel_types.QModelIndex(h: fcQAbstractProxyModel_mapToSource(self.h, proxyIndex.h), owned: true)

proc mapFromSource*(self: gen_qabstractproxymodel_types.QAbstractProxyModel, sourceIndex: gen_qabstractitemmodel_types.QModelIndex): gen_qabstractitemmodel_types.QModelIndex =
  gen_qabstractitemmodel_types.QModelIndex(h: fcQAbstractProxyModel_mapFromSource(self.h, sourceIndex.h), owned: true)

proc mapSelectionToSource*(self: gen_qabstractproxymodel_types.QAbstractProxyModel, selection: gen_qitemselectionmodel_types.QItemSelection): gen_qitemselectionmodel_types.QItemSelection =
  gen_qitemselectionmodel_types.QItemSelection(h: fcQAbstractProxyModel_mapSelectionToSource(self.h, selection.h), owned: true)

proc mapSelectionFromSource*(self: gen_qabstractproxymodel_types.QAbstractProxyModel, selection: gen_qitemselectionmodel_types.QItemSelection): gen_qitemselectionmodel_types.QItemSelection =
  gen_qitemselectionmodel_types.QItemSelection(h: fcQAbstractProxyModel_mapSelectionFromSource(self.h, selection.h), owned: true)

proc submit*(self: gen_qabstractproxymodel_types.QAbstractProxyModel): bool =
  fcQAbstractProxyModel_submit(self.h)

proc revert*(self: gen_qabstractproxymodel_types.QAbstractProxyModel): void =
  fcQAbstractProxyModel_revert(self.h)

proc data*(self: gen_qabstractproxymodel_types.QAbstractProxyModel, proxyIndex: gen_qabstractitemmodel_types.QModelIndex, role: cint): gen_qvariant_types.QVariant =
  gen_qvariant_types.QVariant(h: fcQAbstractProxyModel_data(self.h, proxyIndex.h, role), owned: true)

proc headerData*(self: gen_qabstractproxymodel_types.QAbstractProxyModel, section: cint, orientation: cint, role: cint): gen_qvariant_types.QVariant =
  gen_qvariant_types.QVariant(h: fcQAbstractProxyModel_headerData(self.h, section, cint(orientation), role), owned: true)

proc itemData*(self: gen_qabstractproxymodel_types.QAbstractProxyModel, index: gen_qabstractitemmodel_types.QModelIndex): Table[cint,gen_qvariant_types.QVariant] =
  var v_mm = fcQAbstractProxyModel_itemData(self.h, index.h)
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

proc flags*(self: gen_qabstractproxymodel_types.QAbstractProxyModel, index: gen_qabstractitemmodel_types.QModelIndex): cint =
  cint(fcQAbstractProxyModel_flags(self.h, index.h))

proc setData*(self: gen_qabstractproxymodel_types.QAbstractProxyModel, index: gen_qabstractitemmodel_types.QModelIndex, value: gen_qvariant_types.QVariant, role: cint): bool =
  fcQAbstractProxyModel_setData(self.h, index.h, value.h, role)

proc setItemData*(self: gen_qabstractproxymodel_types.QAbstractProxyModel, index: gen_qabstractitemmodel_types.QModelIndex, roles: Table[cint,gen_qvariant_types.QVariant]): bool =
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

  fcQAbstractProxyModel_setItemData(self.h, index.h, struct_miqt_map(len: csize_t(len(roles)),keys: if len(roles) == 0: nil else: addr(roles_Keys_CArray[0]), values: if len(roles) == 0: nil else: addr(roles_Values_CArray[0]),))

proc setHeaderData*(self: gen_qabstractproxymodel_types.QAbstractProxyModel, section: cint, orientation: cint, value: gen_qvariant_types.QVariant, role: cint): bool =
  fcQAbstractProxyModel_setHeaderData(self.h, section, cint(orientation), value.h, role)

proc clearItemData*(self: gen_qabstractproxymodel_types.QAbstractProxyModel, index: gen_qabstractitemmodel_types.QModelIndex): bool =
  fcQAbstractProxyModel_clearItemData(self.h, index.h)

proc buddy*(self: gen_qabstractproxymodel_types.QAbstractProxyModel, index: gen_qabstractitemmodel_types.QModelIndex): gen_qabstractitemmodel_types.QModelIndex =
  gen_qabstractitemmodel_types.QModelIndex(h: fcQAbstractProxyModel_buddy(self.h, index.h), owned: true)

proc canFetchMore*(self: gen_qabstractproxymodel_types.QAbstractProxyModel, parent: gen_qabstractitemmodel_types.QModelIndex): bool =
  fcQAbstractProxyModel_canFetchMore(self.h, parent.h)

proc fetchMore*(self: gen_qabstractproxymodel_types.QAbstractProxyModel, parent: gen_qabstractitemmodel_types.QModelIndex): void =
  fcQAbstractProxyModel_fetchMore(self.h, parent.h)

proc sort*(self: gen_qabstractproxymodel_types.QAbstractProxyModel, column: cint, order: cint): void =
  fcQAbstractProxyModel_sort(self.h, column, cint(order))

proc span*(self: gen_qabstractproxymodel_types.QAbstractProxyModel, index: gen_qabstractitemmodel_types.QModelIndex): gen_qsize_types.QSize =
  gen_qsize_types.QSize(h: fcQAbstractProxyModel_span(self.h, index.h), owned: true)

proc hasChildren*(self: gen_qabstractproxymodel_types.QAbstractProxyModel, parent: gen_qabstractitemmodel_types.QModelIndex): bool =
  fcQAbstractProxyModel_hasChildren(self.h, parent.h)

proc sibling*(self: gen_qabstractproxymodel_types.QAbstractProxyModel, row: cint, column: cint, idx: gen_qabstractitemmodel_types.QModelIndex): gen_qabstractitemmodel_types.QModelIndex =
  gen_qabstractitemmodel_types.QModelIndex(h: fcQAbstractProxyModel_sibling(self.h, row, column, idx.h), owned: true)

proc mimeData*(self: gen_qabstractproxymodel_types.QAbstractProxyModel, indexes: openArray[gen_qabstractitemmodel_types.QModelIndex]): gen_qmimedata_types.QMimeData =
  var indexes_CArray = newSeq[pointer](len(indexes))
  for i in 0..<len(indexes):
    indexes_CArray[i] = indexes[i].h

  gen_qmimedata_types.QMimeData(h: fcQAbstractProxyModel_mimeData(self.h, struct_miqt_array(len: csize_t(len(indexes)), data: if len(indexes) == 0: nil else: addr(indexes_CArray[0]))), owned: false)

proc canDropMimeData*(self: gen_qabstractproxymodel_types.QAbstractProxyModel, data: gen_qmimedata_types.QMimeData, action: cint, row: cint, column: cint, parent: gen_qabstractitemmodel_types.QModelIndex): bool =
  fcQAbstractProxyModel_canDropMimeData(self.h, data.h, cint(action), row, column, parent.h)

proc dropMimeData*(self: gen_qabstractproxymodel_types.QAbstractProxyModel, data: gen_qmimedata_types.QMimeData, action: cint, row: cint, column: cint, parent: gen_qabstractitemmodel_types.QModelIndex): bool =
  fcQAbstractProxyModel_dropMimeData(self.h, data.h, cint(action), row, column, parent.h)

proc mimeTypes*(self: gen_qabstractproxymodel_types.QAbstractProxyModel): seq[string] =
  var v_ma = fcQAbstractProxyModel_mimeTypes(self.h)
  var vx_ret = newSeq[string](int(v_ma.len))
  let v_outCast = cast[ptr UncheckedArray[struct_miqt_string]](v_ma.data)
  for i in 0 ..< v_ma.len:
    let vx_lv_ms = v_outCast[i]
    let vx_lvx_ret = string.fromBytes(vx_lv_ms)
    c_free(vx_lv_ms.data)
    vx_ret[i] = vx_lvx_ret
  c_free(v_ma.data)
  vx_ret

proc supportedDragActions*(self: gen_qabstractproxymodel_types.QAbstractProxyModel): cint =
  cint(fcQAbstractProxyModel_supportedDragActions(self.h))

proc supportedDropActions*(self: gen_qabstractproxymodel_types.QAbstractProxyModel): cint =
  cint(fcQAbstractProxyModel_supportedDropActions(self.h))

proc roleNames*(self: gen_qabstractproxymodel_types.QAbstractProxyModel): Table[cint,seq[byte]] =
  var v_mm = fcQAbstractProxyModel_roleNames(self.h)
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

proc tr*(_: type gen_qabstractproxymodel_types.QAbstractProxyModel, s: cstring, c: cstring): string =
  let v_ms = fcQAbstractProxyModel_tr2(s, c)
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

proc tr*(_: type gen_qabstractproxymodel_types.QAbstractProxyModel, s: cstring, c: cstring, n: cint): string =
  let v_ms = fcQAbstractProxyModel_tr3(s, c, n)
  let vx_ret = string.fromBytes(v_ms)
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
type QAbstractProxyModelmimeDataProc* = proc(self: QAbstractProxyModel, indexes: openArray[gen_qabstractitemmodel_types.QModelIndex]): gen_qmimedata_types.QMimeData {.raises: [], gcsafe.}
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
type QAbstractProxyModelVTable* {.inheritable, pure.} = object
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
proc QAbstractProxyModelmetaObject*(self: gen_qabstractproxymodel_types.QAbstractProxyModel): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQAbstractProxyModel_virtualbase_metaObject(self.h), owned: false)

proc cQAbstractProxyModel_vtable_callback_metaObject(self: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QAbstractProxyModelVTable](fcQAbstractProxyModel_vdata(self))
  let self = QAbstractProxyModel(h: self)
  var virtualReturn = vtbl[].metaObject(self)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc QAbstractProxyModelmetacast*(self: gen_qabstractproxymodel_types.QAbstractProxyModel, param1: cstring): pointer =
  fcQAbstractProxyModel_virtualbase_metacast(self.h, param1)

proc cQAbstractProxyModel_vtable_callback_metacast(self: pointer, param1: cstring): pointer {.cdecl.} =
  let vtbl = cast[ptr QAbstractProxyModelVTable](fcQAbstractProxyModel_vdata(self))
  let self = QAbstractProxyModel(h: self)
  let slotval1 = (param1)
  var virtualReturn = vtbl[].metacast(self, slotval1)
  virtualReturn

proc QAbstractProxyModelmetacall*(self: gen_qabstractproxymodel_types.QAbstractProxyModel, param1: cint, param2: cint, param3: pointer): cint =
  fcQAbstractProxyModel_virtualbase_metacall(self.h, cint(param1), param2, param3)

proc cQAbstractProxyModel_vtable_callback_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.cdecl.} =
  let vtbl = cast[ptr QAbstractProxyModelVTable](fcQAbstractProxyModel_vdata(self))
  let self = QAbstractProxyModel(h: self)
  let slotval1 = cint(param1)
  let slotval2 = param2
  let slotval3 = param3
  var virtualReturn = vtbl[].metacall(self, slotval1, slotval2, slotval3)
  virtualReturn

proc QAbstractProxyModelsetSourceModel*(self: gen_qabstractproxymodel_types.QAbstractProxyModel, sourceModel: gen_qabstractitemmodel_types.QAbstractItemModel): void =
  fcQAbstractProxyModel_virtualbase_setSourceModel(self.h, sourceModel.h)

proc cQAbstractProxyModel_vtable_callback_setSourceModel(self: pointer, sourceModel: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QAbstractProxyModelVTable](fcQAbstractProxyModel_vdata(self))
  let self = QAbstractProxyModel(h: self)
  let slotval1 = gen_qabstractitemmodel_types.QAbstractItemModel(h: sourceModel, owned: false)
  vtbl[].setSourceModel(self, slotval1)

proc cQAbstractProxyModel_vtable_callback_mapToSource(self: pointer, proxyIndex: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QAbstractProxyModelVTable](fcQAbstractProxyModel_vdata(self))
  let self = QAbstractProxyModel(h: self)
  let slotval1 = gen_qabstractitemmodel_types.QModelIndex(h: proxyIndex, owned: false)
  var virtualReturn = vtbl[].mapToSource(self, slotval1)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc cQAbstractProxyModel_vtable_callback_mapFromSource(self: pointer, sourceIndex: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QAbstractProxyModelVTable](fcQAbstractProxyModel_vdata(self))
  let self = QAbstractProxyModel(h: self)
  let slotval1 = gen_qabstractitemmodel_types.QModelIndex(h: sourceIndex, owned: false)
  var virtualReturn = vtbl[].mapFromSource(self, slotval1)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc QAbstractProxyModelmapSelectionToSource*(self: gen_qabstractproxymodel_types.QAbstractProxyModel, selection: gen_qitemselectionmodel_types.QItemSelection): gen_qitemselectionmodel_types.QItemSelection =
  gen_qitemselectionmodel_types.QItemSelection(h: fcQAbstractProxyModel_virtualbase_mapSelectionToSource(self.h, selection.h), owned: true)

proc cQAbstractProxyModel_vtable_callback_mapSelectionToSource(self: pointer, selection: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QAbstractProxyModelVTable](fcQAbstractProxyModel_vdata(self))
  let self = QAbstractProxyModel(h: self)
  let slotval1 = gen_qitemselectionmodel_types.QItemSelection(h: selection, owned: false)
  var virtualReturn = vtbl[].mapSelectionToSource(self, slotval1)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc QAbstractProxyModelmapSelectionFromSource*(self: gen_qabstractproxymodel_types.QAbstractProxyModel, selection: gen_qitemselectionmodel_types.QItemSelection): gen_qitemselectionmodel_types.QItemSelection =
  gen_qitemselectionmodel_types.QItemSelection(h: fcQAbstractProxyModel_virtualbase_mapSelectionFromSource(self.h, selection.h), owned: true)

proc cQAbstractProxyModel_vtable_callback_mapSelectionFromSource(self: pointer, selection: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QAbstractProxyModelVTable](fcQAbstractProxyModel_vdata(self))
  let self = QAbstractProxyModel(h: self)
  let slotval1 = gen_qitemselectionmodel_types.QItemSelection(h: selection, owned: false)
  var virtualReturn = vtbl[].mapSelectionFromSource(self, slotval1)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc QAbstractProxyModelsubmit*(self: gen_qabstractproxymodel_types.QAbstractProxyModel): bool =
  fcQAbstractProxyModel_virtualbase_submit(self.h)

proc cQAbstractProxyModel_vtable_callback_submit(self: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QAbstractProxyModelVTable](fcQAbstractProxyModel_vdata(self))
  let self = QAbstractProxyModel(h: self)
  var virtualReturn = vtbl[].submit(self)
  virtualReturn

proc QAbstractProxyModelrevert*(self: gen_qabstractproxymodel_types.QAbstractProxyModel): void =
  fcQAbstractProxyModel_virtualbase_revert(self.h)

proc cQAbstractProxyModel_vtable_callback_revert(self: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QAbstractProxyModelVTable](fcQAbstractProxyModel_vdata(self))
  let self = QAbstractProxyModel(h: self)
  vtbl[].revert(self)

proc QAbstractProxyModeldata*(self: gen_qabstractproxymodel_types.QAbstractProxyModel, proxyIndex: gen_qabstractitemmodel_types.QModelIndex, role: cint): gen_qvariant_types.QVariant =
  gen_qvariant_types.QVariant(h: fcQAbstractProxyModel_virtualbase_data(self.h, proxyIndex.h, role), owned: true)

proc cQAbstractProxyModel_vtable_callback_data(self: pointer, proxyIndex: pointer, role: cint): pointer {.cdecl.} =
  let vtbl = cast[ptr QAbstractProxyModelVTable](fcQAbstractProxyModel_vdata(self))
  let self = QAbstractProxyModel(h: self)
  let slotval1 = gen_qabstractitemmodel_types.QModelIndex(h: proxyIndex, owned: false)
  let slotval2 = role
  var virtualReturn = vtbl[].data(self, slotval1, slotval2)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc QAbstractProxyModelheaderData*(self: gen_qabstractproxymodel_types.QAbstractProxyModel, section: cint, orientation: cint, role: cint): gen_qvariant_types.QVariant =
  gen_qvariant_types.QVariant(h: fcQAbstractProxyModel_virtualbase_headerData(self.h, section, cint(orientation), role), owned: true)

proc cQAbstractProxyModel_vtable_callback_headerData(self: pointer, section: cint, orientation: cint, role: cint): pointer {.cdecl.} =
  let vtbl = cast[ptr QAbstractProxyModelVTable](fcQAbstractProxyModel_vdata(self))
  let self = QAbstractProxyModel(h: self)
  let slotval1 = section
  let slotval2 = cint(orientation)
  let slotval3 = role
  var virtualReturn = vtbl[].headerData(self, slotval1, slotval2, slotval3)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc QAbstractProxyModelitemData*(self: gen_qabstractproxymodel_types.QAbstractProxyModel, index: gen_qabstractitemmodel_types.QModelIndex): Table[cint,gen_qvariant_types.QVariant] =
  var v_mm = fcQAbstractProxyModel_virtualbase_itemData(self.h, index.h)
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

proc cQAbstractProxyModel_vtable_callback_itemData(self: pointer, index: pointer): struct_miqt_map {.cdecl.} =
  let vtbl = cast[ptr QAbstractProxyModelVTable](fcQAbstractProxyModel_vdata(self))
  let self = QAbstractProxyModel(h: self)
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

  struct_miqt_map(len: csize_t(len(virtualReturn)),keys: if len(virtualReturn) == 0: nil else: addr(virtualReturn_Keys_CArray[0]), values: if len(virtualReturn) == 0: nil else: addr(virtualReturn_Values_CArray[0]),)

proc QAbstractProxyModelflags*(self: gen_qabstractproxymodel_types.QAbstractProxyModel, index: gen_qabstractitemmodel_types.QModelIndex): cint =
  cint(fcQAbstractProxyModel_virtualbase_flags(self.h, index.h))

proc cQAbstractProxyModel_vtable_callback_flags(self: pointer, index: pointer): cint {.cdecl.} =
  let vtbl = cast[ptr QAbstractProxyModelVTable](fcQAbstractProxyModel_vdata(self))
  let self = QAbstractProxyModel(h: self)
  let slotval1 = gen_qabstractitemmodel_types.QModelIndex(h: index, owned: false)
  var virtualReturn = vtbl[].flags(self, slotval1)
  cint(virtualReturn)

proc QAbstractProxyModelsetData*(self: gen_qabstractproxymodel_types.QAbstractProxyModel, index: gen_qabstractitemmodel_types.QModelIndex, value: gen_qvariant_types.QVariant, role: cint): bool =
  fcQAbstractProxyModel_virtualbase_setData(self.h, index.h, value.h, role)

proc cQAbstractProxyModel_vtable_callback_setData(self: pointer, index: pointer, value: pointer, role: cint): bool {.cdecl.} =
  let vtbl = cast[ptr QAbstractProxyModelVTable](fcQAbstractProxyModel_vdata(self))
  let self = QAbstractProxyModel(h: self)
  let slotval1 = gen_qabstractitemmodel_types.QModelIndex(h: index, owned: false)
  let slotval2 = gen_qvariant_types.QVariant(h: value, owned: false)
  let slotval3 = role
  var virtualReturn = vtbl[].setData(self, slotval1, slotval2, slotval3)
  virtualReturn

proc QAbstractProxyModelsetItemData*(self: gen_qabstractproxymodel_types.QAbstractProxyModel, index: gen_qabstractitemmodel_types.QModelIndex, roles: Table[cint,gen_qvariant_types.QVariant]): bool =
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

  fcQAbstractProxyModel_virtualbase_setItemData(self.h, index.h, struct_miqt_map(len: csize_t(len(roles)),keys: if len(roles) == 0: nil else: addr(roles_Keys_CArray[0]), values: if len(roles) == 0: nil else: addr(roles_Values_CArray[0]),))

proc cQAbstractProxyModel_vtable_callback_setItemData(self: pointer, index: pointer, roles: struct_miqt_map): bool {.cdecl.} =
  let vtbl = cast[ptr QAbstractProxyModelVTable](fcQAbstractProxyModel_vdata(self))
  let self = QAbstractProxyModel(h: self)
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

proc QAbstractProxyModelsetHeaderData*(self: gen_qabstractproxymodel_types.QAbstractProxyModel, section: cint, orientation: cint, value: gen_qvariant_types.QVariant, role: cint): bool =
  fcQAbstractProxyModel_virtualbase_setHeaderData(self.h, section, cint(orientation), value.h, role)

proc cQAbstractProxyModel_vtable_callback_setHeaderData(self: pointer, section: cint, orientation: cint, value: pointer, role: cint): bool {.cdecl.} =
  let vtbl = cast[ptr QAbstractProxyModelVTable](fcQAbstractProxyModel_vdata(self))
  let self = QAbstractProxyModel(h: self)
  let slotval1 = section
  let slotval2 = cint(orientation)
  let slotval3 = gen_qvariant_types.QVariant(h: value, owned: false)
  let slotval4 = role
  var virtualReturn = vtbl[].setHeaderData(self, slotval1, slotval2, slotval3, slotval4)
  virtualReturn

proc QAbstractProxyModelclearItemData*(self: gen_qabstractproxymodel_types.QAbstractProxyModel, index: gen_qabstractitemmodel_types.QModelIndex): bool =
  fcQAbstractProxyModel_virtualbase_clearItemData(self.h, index.h)

proc cQAbstractProxyModel_vtable_callback_clearItemData(self: pointer, index: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QAbstractProxyModelVTable](fcQAbstractProxyModel_vdata(self))
  let self = QAbstractProxyModel(h: self)
  let slotval1 = gen_qabstractitemmodel_types.QModelIndex(h: index, owned: false)
  var virtualReturn = vtbl[].clearItemData(self, slotval1)
  virtualReturn

proc QAbstractProxyModelbuddy*(self: gen_qabstractproxymodel_types.QAbstractProxyModel, index: gen_qabstractitemmodel_types.QModelIndex): gen_qabstractitemmodel_types.QModelIndex =
  gen_qabstractitemmodel_types.QModelIndex(h: fcQAbstractProxyModel_virtualbase_buddy(self.h, index.h), owned: true)

proc cQAbstractProxyModel_vtable_callback_buddy(self: pointer, index: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QAbstractProxyModelVTable](fcQAbstractProxyModel_vdata(self))
  let self = QAbstractProxyModel(h: self)
  let slotval1 = gen_qabstractitemmodel_types.QModelIndex(h: index, owned: false)
  var virtualReturn = vtbl[].buddy(self, slotval1)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc QAbstractProxyModelcanFetchMore*(self: gen_qabstractproxymodel_types.QAbstractProxyModel, parent: gen_qabstractitemmodel_types.QModelIndex): bool =
  fcQAbstractProxyModel_virtualbase_canFetchMore(self.h, parent.h)

proc cQAbstractProxyModel_vtable_callback_canFetchMore(self: pointer, parent: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QAbstractProxyModelVTable](fcQAbstractProxyModel_vdata(self))
  let self = QAbstractProxyModel(h: self)
  let slotval1 = gen_qabstractitemmodel_types.QModelIndex(h: parent, owned: false)
  var virtualReturn = vtbl[].canFetchMore(self, slotval1)
  virtualReturn

proc QAbstractProxyModelfetchMore*(self: gen_qabstractproxymodel_types.QAbstractProxyModel, parent: gen_qabstractitemmodel_types.QModelIndex): void =
  fcQAbstractProxyModel_virtualbase_fetchMore(self.h, parent.h)

proc cQAbstractProxyModel_vtable_callback_fetchMore(self: pointer, parent: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QAbstractProxyModelVTable](fcQAbstractProxyModel_vdata(self))
  let self = QAbstractProxyModel(h: self)
  let slotval1 = gen_qabstractitemmodel_types.QModelIndex(h: parent, owned: false)
  vtbl[].fetchMore(self, slotval1)

proc QAbstractProxyModelsort*(self: gen_qabstractproxymodel_types.QAbstractProxyModel, column: cint, order: cint): void =
  fcQAbstractProxyModel_virtualbase_sort(self.h, column, cint(order))

proc cQAbstractProxyModel_vtable_callback_sort(self: pointer, column: cint, order: cint): void {.cdecl.} =
  let vtbl = cast[ptr QAbstractProxyModelVTable](fcQAbstractProxyModel_vdata(self))
  let self = QAbstractProxyModel(h: self)
  let slotval1 = column
  let slotval2 = cint(order)
  vtbl[].sort(self, slotval1, slotval2)

proc QAbstractProxyModelspan*(self: gen_qabstractproxymodel_types.QAbstractProxyModel, index: gen_qabstractitemmodel_types.QModelIndex): gen_qsize_types.QSize =
  gen_qsize_types.QSize(h: fcQAbstractProxyModel_virtualbase_span(self.h, index.h), owned: true)

proc cQAbstractProxyModel_vtable_callback_span(self: pointer, index: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QAbstractProxyModelVTable](fcQAbstractProxyModel_vdata(self))
  let self = QAbstractProxyModel(h: self)
  let slotval1 = gen_qabstractitemmodel_types.QModelIndex(h: index, owned: false)
  var virtualReturn = vtbl[].span(self, slotval1)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc QAbstractProxyModelhasChildren*(self: gen_qabstractproxymodel_types.QAbstractProxyModel, parent: gen_qabstractitemmodel_types.QModelIndex): bool =
  fcQAbstractProxyModel_virtualbase_hasChildren(self.h, parent.h)

proc cQAbstractProxyModel_vtable_callback_hasChildren(self: pointer, parent: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QAbstractProxyModelVTable](fcQAbstractProxyModel_vdata(self))
  let self = QAbstractProxyModel(h: self)
  let slotval1 = gen_qabstractitemmodel_types.QModelIndex(h: parent, owned: false)
  var virtualReturn = vtbl[].hasChildren(self, slotval1)
  virtualReturn

proc QAbstractProxyModelsibling*(self: gen_qabstractproxymodel_types.QAbstractProxyModel, row: cint, column: cint, idx: gen_qabstractitemmodel_types.QModelIndex): gen_qabstractitemmodel_types.QModelIndex =
  gen_qabstractitemmodel_types.QModelIndex(h: fcQAbstractProxyModel_virtualbase_sibling(self.h, row, column, idx.h), owned: true)

proc cQAbstractProxyModel_vtable_callback_sibling(self: pointer, row: cint, column: cint, idx: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QAbstractProxyModelVTable](fcQAbstractProxyModel_vdata(self))
  let self = QAbstractProxyModel(h: self)
  let slotval1 = row
  let slotval2 = column
  let slotval3 = gen_qabstractitemmodel_types.QModelIndex(h: idx, owned: false)
  var virtualReturn = vtbl[].sibling(self, slotval1, slotval2, slotval3)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc QAbstractProxyModelmimeData*(self: gen_qabstractproxymodel_types.QAbstractProxyModel, indexes: openArray[gen_qabstractitemmodel_types.QModelIndex]): gen_qmimedata_types.QMimeData =
  var indexes_CArray = newSeq[pointer](len(indexes))
  for i in 0..<len(indexes):
    indexes_CArray[i] = indexes[i].h

  gen_qmimedata_types.QMimeData(h: fcQAbstractProxyModel_virtualbase_mimeData(self.h, struct_miqt_array(len: csize_t(len(indexes)), data: if len(indexes) == 0: nil else: addr(indexes_CArray[0]))), owned: false)

proc cQAbstractProxyModel_vtable_callback_mimeData(self: pointer, indexes: struct_miqt_array): pointer {.cdecl.} =
  let vtbl = cast[ptr QAbstractProxyModelVTable](fcQAbstractProxyModel_vdata(self))
  let self = QAbstractProxyModel(h: self)
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

proc QAbstractProxyModelcanDropMimeData*(self: gen_qabstractproxymodel_types.QAbstractProxyModel, data: gen_qmimedata_types.QMimeData, action: cint, row: cint, column: cint, parent: gen_qabstractitemmodel_types.QModelIndex): bool =
  fcQAbstractProxyModel_virtualbase_canDropMimeData(self.h, data.h, cint(action), row, column, parent.h)

proc cQAbstractProxyModel_vtable_callback_canDropMimeData(self: pointer, data: pointer, action: cint, row: cint, column: cint, parent: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QAbstractProxyModelVTable](fcQAbstractProxyModel_vdata(self))
  let self = QAbstractProxyModel(h: self)
  let slotval1 = gen_qmimedata_types.QMimeData(h: data, owned: false)
  let slotval2 = cint(action)
  let slotval3 = row
  let slotval4 = column
  let slotval5 = gen_qabstractitemmodel_types.QModelIndex(h: parent, owned: false)
  var virtualReturn = vtbl[].canDropMimeData(self, slotval1, slotval2, slotval3, slotval4, slotval5)
  virtualReturn

proc QAbstractProxyModeldropMimeData*(self: gen_qabstractproxymodel_types.QAbstractProxyModel, data: gen_qmimedata_types.QMimeData, action: cint, row: cint, column: cint, parent: gen_qabstractitemmodel_types.QModelIndex): bool =
  fcQAbstractProxyModel_virtualbase_dropMimeData(self.h, data.h, cint(action), row, column, parent.h)

proc cQAbstractProxyModel_vtable_callback_dropMimeData(self: pointer, data: pointer, action: cint, row: cint, column: cint, parent: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QAbstractProxyModelVTable](fcQAbstractProxyModel_vdata(self))
  let self = QAbstractProxyModel(h: self)
  let slotval1 = gen_qmimedata_types.QMimeData(h: data, owned: false)
  let slotval2 = cint(action)
  let slotval3 = row
  let slotval4 = column
  let slotval5 = gen_qabstractitemmodel_types.QModelIndex(h: parent, owned: false)
  var virtualReturn = vtbl[].dropMimeData(self, slotval1, slotval2, slotval3, slotval4, slotval5)
  virtualReturn

proc QAbstractProxyModelmimeTypes*(self: gen_qabstractproxymodel_types.QAbstractProxyModel): seq[string] =
  var v_ma = fcQAbstractProxyModel_virtualbase_mimeTypes(self.h)
  var vx_ret = newSeq[string](int(v_ma.len))
  let v_outCast = cast[ptr UncheckedArray[struct_miqt_string]](v_ma.data)
  for i in 0 ..< v_ma.len:
    let vx_lv_ms = v_outCast[i]
    let vx_lvx_ret = string.fromBytes(vx_lv_ms)
    c_free(vx_lv_ms.data)
    vx_ret[i] = vx_lvx_ret
  c_free(v_ma.data)
  vx_ret

proc cQAbstractProxyModel_vtable_callback_mimeTypes(self: pointer): struct_miqt_array {.cdecl.} =
  let vtbl = cast[ptr QAbstractProxyModelVTable](fcQAbstractProxyModel_vdata(self))
  let self = QAbstractProxyModel(h: self)
  var virtualReturn = vtbl[].mimeTypes(self)
  var virtualReturn_CArray = cast[ptr UncheckedArray[struct_miqt_string]](if len(virtualReturn) > 0: c_malloc(c_sizet(sizeof(struct_miqt_string) * len(virtualReturn))) else: nil)
  for i in 0..<len(virtualReturn):
    var virtualReturn_i_copy = cast[cstring](if len(virtualReturn[i]) > 0: c_malloc(csize_t(len(virtualReturn[i]))) else: nil)
    if len(virtualReturn[i]) > 0: copyMem(cast[pointer](virtualReturn_i_copy), addr virtualReturn[i][0], csize_t(len(virtualReturn[i])))
    virtualReturn_CArray[i] = struct_miqt_string(data: virtualReturn_i_copy, len: csize_t(len(virtualReturn[i])))

  struct_miqt_array(len: csize_t(len(virtualReturn)), data: if len(virtualReturn) == 0: nil else: addr(virtualReturn_CArray[0]))

proc QAbstractProxyModelsupportedDragActions*(self: gen_qabstractproxymodel_types.QAbstractProxyModel): cint =
  cint(fcQAbstractProxyModel_virtualbase_supportedDragActions(self.h))

proc cQAbstractProxyModel_vtable_callback_supportedDragActions(self: pointer): cint {.cdecl.} =
  let vtbl = cast[ptr QAbstractProxyModelVTable](fcQAbstractProxyModel_vdata(self))
  let self = QAbstractProxyModel(h: self)
  var virtualReturn = vtbl[].supportedDragActions(self)
  cint(virtualReturn)

proc QAbstractProxyModelsupportedDropActions*(self: gen_qabstractproxymodel_types.QAbstractProxyModel): cint =
  cint(fcQAbstractProxyModel_virtualbase_supportedDropActions(self.h))

proc cQAbstractProxyModel_vtable_callback_supportedDropActions(self: pointer): cint {.cdecl.} =
  let vtbl = cast[ptr QAbstractProxyModelVTable](fcQAbstractProxyModel_vdata(self))
  let self = QAbstractProxyModel(h: self)
  var virtualReturn = vtbl[].supportedDropActions(self)
  cint(virtualReturn)

proc QAbstractProxyModelroleNames*(self: gen_qabstractproxymodel_types.QAbstractProxyModel): Table[cint,seq[byte]] =
  var v_mm = fcQAbstractProxyModel_virtualbase_roleNames(self.h)
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

proc cQAbstractProxyModel_vtable_callback_roleNames(self: pointer): struct_miqt_map {.cdecl.} =
  let vtbl = cast[ptr QAbstractProxyModelVTable](fcQAbstractProxyModel_vdata(self))
  let self = QAbstractProxyModel(h: self)
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

proc cQAbstractProxyModel_vtable_callback_index(self: pointer, row: cint, column: cint, parent: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QAbstractProxyModelVTable](fcQAbstractProxyModel_vdata(self))
  let self = QAbstractProxyModel(h: self)
  let slotval1 = row
  let slotval2 = column
  let slotval3 = gen_qabstractitemmodel_types.QModelIndex(h: parent, owned: false)
  var virtualReturn = vtbl[].index(self, slotval1, slotval2, slotval3)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc cQAbstractProxyModel_vtable_callback_parent(self: pointer, child: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QAbstractProxyModelVTable](fcQAbstractProxyModel_vdata(self))
  let self = QAbstractProxyModel(h: self)
  let slotval1 = gen_qabstractitemmodel_types.QModelIndex(h: child, owned: false)
  var virtualReturn = vtbl[].parent(self, slotval1)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc cQAbstractProxyModel_vtable_callback_rowCount(self: pointer, parent: pointer): cint {.cdecl.} =
  let vtbl = cast[ptr QAbstractProxyModelVTable](fcQAbstractProxyModel_vdata(self))
  let self = QAbstractProxyModel(h: self)
  let slotval1 = gen_qabstractitemmodel_types.QModelIndex(h: parent, owned: false)
  var virtualReturn = vtbl[].rowCount(self, slotval1)
  virtualReturn

proc cQAbstractProxyModel_vtable_callback_columnCount(self: pointer, parent: pointer): cint {.cdecl.} =
  let vtbl = cast[ptr QAbstractProxyModelVTable](fcQAbstractProxyModel_vdata(self))
  let self = QAbstractProxyModel(h: self)
  let slotval1 = gen_qabstractitemmodel_types.QModelIndex(h: parent, owned: false)
  var virtualReturn = vtbl[].columnCount(self, slotval1)
  virtualReturn

proc QAbstractProxyModelinsertRows*(self: gen_qabstractproxymodel_types.QAbstractProxyModel, row: cint, count: cint, parent: gen_qabstractitemmodel_types.QModelIndex): bool =
  fcQAbstractProxyModel_virtualbase_insertRows(self.h, row, count, parent.h)

proc cQAbstractProxyModel_vtable_callback_insertRows(self: pointer, row: cint, count: cint, parent: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QAbstractProxyModelVTable](fcQAbstractProxyModel_vdata(self))
  let self = QAbstractProxyModel(h: self)
  let slotval1 = row
  let slotval2 = count
  let slotval3 = gen_qabstractitemmodel_types.QModelIndex(h: parent, owned: false)
  var virtualReturn = vtbl[].insertRows(self, slotval1, slotval2, slotval3)
  virtualReturn

proc QAbstractProxyModelinsertColumns*(self: gen_qabstractproxymodel_types.QAbstractProxyModel, column: cint, count: cint, parent: gen_qabstractitemmodel_types.QModelIndex): bool =
  fcQAbstractProxyModel_virtualbase_insertColumns(self.h, column, count, parent.h)

proc cQAbstractProxyModel_vtable_callback_insertColumns(self: pointer, column: cint, count: cint, parent: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QAbstractProxyModelVTable](fcQAbstractProxyModel_vdata(self))
  let self = QAbstractProxyModel(h: self)
  let slotval1 = column
  let slotval2 = count
  let slotval3 = gen_qabstractitemmodel_types.QModelIndex(h: parent, owned: false)
  var virtualReturn = vtbl[].insertColumns(self, slotval1, slotval2, slotval3)
  virtualReturn

proc QAbstractProxyModelremoveRows*(self: gen_qabstractproxymodel_types.QAbstractProxyModel, row: cint, count: cint, parent: gen_qabstractitemmodel_types.QModelIndex): bool =
  fcQAbstractProxyModel_virtualbase_removeRows(self.h, row, count, parent.h)

proc cQAbstractProxyModel_vtable_callback_removeRows(self: pointer, row: cint, count: cint, parent: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QAbstractProxyModelVTable](fcQAbstractProxyModel_vdata(self))
  let self = QAbstractProxyModel(h: self)
  let slotval1 = row
  let slotval2 = count
  let slotval3 = gen_qabstractitemmodel_types.QModelIndex(h: parent, owned: false)
  var virtualReturn = vtbl[].removeRows(self, slotval1, slotval2, slotval3)
  virtualReturn

proc QAbstractProxyModelremoveColumns*(self: gen_qabstractproxymodel_types.QAbstractProxyModel, column: cint, count: cint, parent: gen_qabstractitemmodel_types.QModelIndex): bool =
  fcQAbstractProxyModel_virtualbase_removeColumns(self.h, column, count, parent.h)

proc cQAbstractProxyModel_vtable_callback_removeColumns(self: pointer, column: cint, count: cint, parent: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QAbstractProxyModelVTable](fcQAbstractProxyModel_vdata(self))
  let self = QAbstractProxyModel(h: self)
  let slotval1 = column
  let slotval2 = count
  let slotval3 = gen_qabstractitemmodel_types.QModelIndex(h: parent, owned: false)
  var virtualReturn = vtbl[].removeColumns(self, slotval1, slotval2, slotval3)
  virtualReturn

proc QAbstractProxyModelmoveRows*(self: gen_qabstractproxymodel_types.QAbstractProxyModel, sourceParent: gen_qabstractitemmodel_types.QModelIndex, sourceRow: cint, count: cint, destinationParent: gen_qabstractitemmodel_types.QModelIndex, destinationChild: cint): bool =
  fcQAbstractProxyModel_virtualbase_moveRows(self.h, sourceParent.h, sourceRow, count, destinationParent.h, destinationChild)

proc cQAbstractProxyModel_vtable_callback_moveRows(self: pointer, sourceParent: pointer, sourceRow: cint, count: cint, destinationParent: pointer, destinationChild: cint): bool {.cdecl.} =
  let vtbl = cast[ptr QAbstractProxyModelVTable](fcQAbstractProxyModel_vdata(self))
  let self = QAbstractProxyModel(h: self)
  let slotval1 = gen_qabstractitemmodel_types.QModelIndex(h: sourceParent, owned: false)
  let slotval2 = sourceRow
  let slotval3 = count
  let slotval4 = gen_qabstractitemmodel_types.QModelIndex(h: destinationParent, owned: false)
  let slotval5 = destinationChild
  var virtualReturn = vtbl[].moveRows(self, slotval1, slotval2, slotval3, slotval4, slotval5)
  virtualReturn

proc QAbstractProxyModelmoveColumns*(self: gen_qabstractproxymodel_types.QAbstractProxyModel, sourceParent: gen_qabstractitemmodel_types.QModelIndex, sourceColumn: cint, count: cint, destinationParent: gen_qabstractitemmodel_types.QModelIndex, destinationChild: cint): bool =
  fcQAbstractProxyModel_virtualbase_moveColumns(self.h, sourceParent.h, sourceColumn, count, destinationParent.h, destinationChild)

proc cQAbstractProxyModel_vtable_callback_moveColumns(self: pointer, sourceParent: pointer, sourceColumn: cint, count: cint, destinationParent: pointer, destinationChild: cint): bool {.cdecl.} =
  let vtbl = cast[ptr QAbstractProxyModelVTable](fcQAbstractProxyModel_vdata(self))
  let self = QAbstractProxyModel(h: self)
  let slotval1 = gen_qabstractitemmodel_types.QModelIndex(h: sourceParent, owned: false)
  let slotval2 = sourceColumn
  let slotval3 = count
  let slotval4 = gen_qabstractitemmodel_types.QModelIndex(h: destinationParent, owned: false)
  let slotval5 = destinationChild
  var virtualReturn = vtbl[].moveColumns(self, slotval1, slotval2, slotval3, slotval4, slotval5)
  virtualReturn

proc QAbstractProxyModelmatch*(self: gen_qabstractproxymodel_types.QAbstractProxyModel, start: gen_qabstractitemmodel_types.QModelIndex, role: cint, value: gen_qvariant_types.QVariant, hits: cint, flags: cint): seq[gen_qabstractitemmodel_types.QModelIndex] =
  var v_ma = fcQAbstractProxyModel_virtualbase_match(self.h, start.h, role, value.h, hits, cint(flags))
  var vx_ret = newSeq[gen_qabstractitemmodel_types.QModelIndex](int(v_ma.len))
  let v_outCast = cast[ptr UncheckedArray[pointer]](v_ma.data)
  for i in 0 ..< v_ma.len:
    vx_ret[i] = gen_qabstractitemmodel_types.QModelIndex(h: v_outCast[i], owned: true)
  c_free(v_ma.data)
  vx_ret

proc cQAbstractProxyModel_vtable_callback_match(self: pointer, start: pointer, role: cint, value: pointer, hits: cint, flags: cint): struct_miqt_array {.cdecl.} =
  let vtbl = cast[ptr QAbstractProxyModelVTable](fcQAbstractProxyModel_vdata(self))
  let self = QAbstractProxyModel(h: self)
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

proc QAbstractProxyModelmultiData*(self: gen_qabstractproxymodel_types.QAbstractProxyModel, index: gen_qabstractitemmodel_types.QModelIndex, roleDataSpan: gen_qabstractitemmodel_types.QModelRoleDataSpan): void =
  fcQAbstractProxyModel_virtualbase_multiData(self.h, index.h, roleDataSpan.h)

proc cQAbstractProxyModel_vtable_callback_multiData(self: pointer, index: pointer, roleDataSpan: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QAbstractProxyModelVTable](fcQAbstractProxyModel_vdata(self))
  let self = QAbstractProxyModel(h: self)
  let slotval1 = gen_qabstractitemmodel_types.QModelIndex(h: index, owned: false)
  let slotval2 = gen_qabstractitemmodel_types.QModelRoleDataSpan(h: roleDataSpan, owned: true)
  vtbl[].multiData(self, slotval1, slotval2)

proc QAbstractProxyModelresetInternalData*(self: gen_qabstractproxymodel_types.QAbstractProxyModel): void =
  fcQAbstractProxyModel_virtualbase_resetInternalData(self.h)

proc cQAbstractProxyModel_vtable_callback_resetInternalData(self: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QAbstractProxyModelVTable](fcQAbstractProxyModel_vdata(self))
  let self = QAbstractProxyModel(h: self)
  vtbl[].resetInternalData(self)

proc QAbstractProxyModelevent*(self: gen_qabstractproxymodel_types.QAbstractProxyModel, event: gen_qcoreevent_types.QEvent): bool =
  fcQAbstractProxyModel_virtualbase_event(self.h, event.h)

proc cQAbstractProxyModel_vtable_callback_event(self: pointer, event: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QAbstractProxyModelVTable](fcQAbstractProxyModel_vdata(self))
  let self = QAbstractProxyModel(h: self)
  let slotval1 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  var virtualReturn = vtbl[].event(self, slotval1)
  virtualReturn

proc QAbstractProxyModeleventFilter*(self: gen_qabstractproxymodel_types.QAbstractProxyModel, watched: gen_qobject_types.QObject, event: gen_qcoreevent_types.QEvent): bool =
  fcQAbstractProxyModel_virtualbase_eventFilter(self.h, watched.h, event.h)

proc cQAbstractProxyModel_vtable_callback_eventFilter(self: pointer, watched: pointer, event: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QAbstractProxyModelVTable](fcQAbstractProxyModel_vdata(self))
  let self = QAbstractProxyModel(h: self)
  let slotval1 = gen_qobject_types.QObject(h: watched, owned: false)
  let slotval2 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  var virtualReturn = vtbl[].eventFilter(self, slotval1, slotval2)
  virtualReturn

proc QAbstractProxyModeltimerEvent*(self: gen_qabstractproxymodel_types.QAbstractProxyModel, event: gen_qcoreevent_types.QTimerEvent): void =
  fcQAbstractProxyModel_virtualbase_timerEvent(self.h, event.h)

proc cQAbstractProxyModel_vtable_callback_timerEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QAbstractProxyModelVTable](fcQAbstractProxyModel_vdata(self))
  let self = QAbstractProxyModel(h: self)
  let slotval1 = gen_qcoreevent_types.QTimerEvent(h: event, owned: false)
  vtbl[].timerEvent(self, slotval1)

proc QAbstractProxyModelchildEvent*(self: gen_qabstractproxymodel_types.QAbstractProxyModel, event: gen_qcoreevent_types.QChildEvent): void =
  fcQAbstractProxyModel_virtualbase_childEvent(self.h, event.h)

proc cQAbstractProxyModel_vtable_callback_childEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QAbstractProxyModelVTable](fcQAbstractProxyModel_vdata(self))
  let self = QAbstractProxyModel(h: self)
  let slotval1 = gen_qcoreevent_types.QChildEvent(h: event, owned: false)
  vtbl[].childEvent(self, slotval1)

proc QAbstractProxyModelcustomEvent*(self: gen_qabstractproxymodel_types.QAbstractProxyModel, event: gen_qcoreevent_types.QEvent): void =
  fcQAbstractProxyModel_virtualbase_customEvent(self.h, event.h)

proc cQAbstractProxyModel_vtable_callback_customEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QAbstractProxyModelVTable](fcQAbstractProxyModel_vdata(self))
  let self = QAbstractProxyModel(h: self)
  let slotval1 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  vtbl[].customEvent(self, slotval1)

proc QAbstractProxyModelconnectNotify*(self: gen_qabstractproxymodel_types.QAbstractProxyModel, signal: gen_qmetaobject_types.QMetaMethod): void =
  fcQAbstractProxyModel_virtualbase_connectNotify(self.h, signal.h)

proc cQAbstractProxyModel_vtable_callback_connectNotify(self: pointer, signal: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QAbstractProxyModelVTable](fcQAbstractProxyModel_vdata(self))
  let self = QAbstractProxyModel(h: self)
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal, owned: false)
  vtbl[].connectNotify(self, slotval1)

proc QAbstractProxyModeldisconnectNotify*(self: gen_qabstractproxymodel_types.QAbstractProxyModel, signal: gen_qmetaobject_types.QMetaMethod): void =
  fcQAbstractProxyModel_virtualbase_disconnectNotify(self.h, signal.h)

proc cQAbstractProxyModel_vtable_callback_disconnectNotify(self: pointer, signal: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QAbstractProxyModelVTable](fcQAbstractProxyModel_vdata(self))
  let self = QAbstractProxyModel(h: self)
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal, owned: false)
  vtbl[].disconnectNotify(self, slotval1)

type VirtualQAbstractProxyModel* {.inheritable.} = ref object of QAbstractProxyModel
  vtbl*: cQAbstractProxyModelVTable
method metaObject*(self: VirtualQAbstractProxyModel): gen_qobjectdefs_types.QMetaObject {.base.} =
  QAbstractProxyModelmetaObject(self[])
proc cQAbstractProxyModel_method_callback_metaObject(self: pointer): pointer {.cdecl.} =
  let inst = cast[VirtualQAbstractProxyModel](fcQAbstractProxyModel_vdata(self))
  var virtualReturn = inst.metaObject()
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

method metacast*(self: VirtualQAbstractProxyModel, param1: cstring): pointer {.base.} =
  QAbstractProxyModelmetacast(self[], param1)
proc cQAbstractProxyModel_method_callback_metacast(self: pointer, param1: cstring): pointer {.cdecl.} =
  let inst = cast[VirtualQAbstractProxyModel](fcQAbstractProxyModel_vdata(self))
  let slotval1 = (param1)
  var virtualReturn = inst.metacast(slotval1)
  virtualReturn

method metacall*(self: VirtualQAbstractProxyModel, param1: cint, param2: cint, param3: pointer): cint {.base.} =
  QAbstractProxyModelmetacall(self[], param1, param2, param3)
proc cQAbstractProxyModel_method_callback_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.cdecl.} =
  let inst = cast[VirtualQAbstractProxyModel](fcQAbstractProxyModel_vdata(self))
  let slotval1 = cint(param1)
  let slotval2 = param2
  let slotval3 = param3
  var virtualReturn = inst.metacall(slotval1, slotval2, slotval3)
  virtualReturn

method setSourceModel*(self: VirtualQAbstractProxyModel, sourceModel: gen_qabstractitemmodel_types.QAbstractItemModel): void {.base.} =
  QAbstractProxyModelsetSourceModel(self[], sourceModel)
proc cQAbstractProxyModel_method_callback_setSourceModel(self: pointer, sourceModel: pointer): void {.cdecl.} =
  let inst = cast[VirtualQAbstractProxyModel](fcQAbstractProxyModel_vdata(self))
  let slotval1 = gen_qabstractitemmodel_types.QAbstractItemModel(h: sourceModel, owned: false)
  inst.setSourceModel(slotval1)

method mapToSource*(self: VirtualQAbstractProxyModel, proxyIndex: gen_qabstractitemmodel_types.QModelIndex): gen_qabstractitemmodel_types.QModelIndex {.base.} =
  raiseAssert("missing implementation of QAbstractProxyModel_virtualbase_mapToSource")
proc cQAbstractProxyModel_method_callback_mapToSource(self: pointer, proxyIndex: pointer): pointer {.cdecl.} =
  let inst = cast[VirtualQAbstractProxyModel](fcQAbstractProxyModel_vdata(self))
  let slotval1 = gen_qabstractitemmodel_types.QModelIndex(h: proxyIndex, owned: false)
  var virtualReturn = inst.mapToSource(slotval1)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

method mapFromSource*(self: VirtualQAbstractProxyModel, sourceIndex: gen_qabstractitemmodel_types.QModelIndex): gen_qabstractitemmodel_types.QModelIndex {.base.} =
  raiseAssert("missing implementation of QAbstractProxyModel_virtualbase_mapFromSource")
proc cQAbstractProxyModel_method_callback_mapFromSource(self: pointer, sourceIndex: pointer): pointer {.cdecl.} =
  let inst = cast[VirtualQAbstractProxyModel](fcQAbstractProxyModel_vdata(self))
  let slotval1 = gen_qabstractitemmodel_types.QModelIndex(h: sourceIndex, owned: false)
  var virtualReturn = inst.mapFromSource(slotval1)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

method mapSelectionToSource*(self: VirtualQAbstractProxyModel, selection: gen_qitemselectionmodel_types.QItemSelection): gen_qitemselectionmodel_types.QItemSelection {.base.} =
  QAbstractProxyModelmapSelectionToSource(self[], selection)
proc cQAbstractProxyModel_method_callback_mapSelectionToSource(self: pointer, selection: pointer): pointer {.cdecl.} =
  let inst = cast[VirtualQAbstractProxyModel](fcQAbstractProxyModel_vdata(self))
  let slotval1 = gen_qitemselectionmodel_types.QItemSelection(h: selection, owned: false)
  var virtualReturn = inst.mapSelectionToSource(slotval1)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

method mapSelectionFromSource*(self: VirtualQAbstractProxyModel, selection: gen_qitemselectionmodel_types.QItemSelection): gen_qitemselectionmodel_types.QItemSelection {.base.} =
  QAbstractProxyModelmapSelectionFromSource(self[], selection)
proc cQAbstractProxyModel_method_callback_mapSelectionFromSource(self: pointer, selection: pointer): pointer {.cdecl.} =
  let inst = cast[VirtualQAbstractProxyModel](fcQAbstractProxyModel_vdata(self))
  let slotval1 = gen_qitemselectionmodel_types.QItemSelection(h: selection, owned: false)
  var virtualReturn = inst.mapSelectionFromSource(slotval1)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

method submit*(self: VirtualQAbstractProxyModel): bool {.base.} =
  QAbstractProxyModelsubmit(self[])
proc cQAbstractProxyModel_method_callback_submit(self: pointer): bool {.cdecl.} =
  let inst = cast[VirtualQAbstractProxyModel](fcQAbstractProxyModel_vdata(self))
  var virtualReturn = inst.submit()
  virtualReturn

method revert*(self: VirtualQAbstractProxyModel): void {.base.} =
  QAbstractProxyModelrevert(self[])
proc cQAbstractProxyModel_method_callback_revert(self: pointer): void {.cdecl.} =
  let inst = cast[VirtualQAbstractProxyModel](fcQAbstractProxyModel_vdata(self))
  inst.revert()

method data*(self: VirtualQAbstractProxyModel, proxyIndex: gen_qabstractitemmodel_types.QModelIndex, role: cint): gen_qvariant_types.QVariant {.base.} =
  QAbstractProxyModeldata(self[], proxyIndex, role)
proc cQAbstractProxyModel_method_callback_data(self: pointer, proxyIndex: pointer, role: cint): pointer {.cdecl.} =
  let inst = cast[VirtualQAbstractProxyModel](fcQAbstractProxyModel_vdata(self))
  let slotval1 = gen_qabstractitemmodel_types.QModelIndex(h: proxyIndex, owned: false)
  let slotval2 = role
  var virtualReturn = inst.data(slotval1, slotval2)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

method headerData*(self: VirtualQAbstractProxyModel, section: cint, orientation: cint, role: cint): gen_qvariant_types.QVariant {.base.} =
  QAbstractProxyModelheaderData(self[], section, orientation, role)
proc cQAbstractProxyModel_method_callback_headerData(self: pointer, section: cint, orientation: cint, role: cint): pointer {.cdecl.} =
  let inst = cast[VirtualQAbstractProxyModel](fcQAbstractProxyModel_vdata(self))
  let slotval1 = section
  let slotval2 = cint(orientation)
  let slotval3 = role
  var virtualReturn = inst.headerData(slotval1, slotval2, slotval3)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

method itemData*(self: VirtualQAbstractProxyModel, index: gen_qabstractitemmodel_types.QModelIndex): Table[cint,gen_qvariant_types.QVariant] {.base.} =
  QAbstractProxyModelitemData(self[], index)
proc cQAbstractProxyModel_method_callback_itemData(self: pointer, index: pointer): struct_miqt_map {.cdecl.} =
  let inst = cast[VirtualQAbstractProxyModel](fcQAbstractProxyModel_vdata(self))
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

  struct_miqt_map(len: csize_t(len(virtualReturn)),keys: if len(virtualReturn) == 0: nil else: addr(virtualReturn_Keys_CArray[0]), values: if len(virtualReturn) == 0: nil else: addr(virtualReturn_Values_CArray[0]),)

method flags*(self: VirtualQAbstractProxyModel, index: gen_qabstractitemmodel_types.QModelIndex): cint {.base.} =
  QAbstractProxyModelflags(self[], index)
proc cQAbstractProxyModel_method_callback_flags(self: pointer, index: pointer): cint {.cdecl.} =
  let inst = cast[VirtualQAbstractProxyModel](fcQAbstractProxyModel_vdata(self))
  let slotval1 = gen_qabstractitemmodel_types.QModelIndex(h: index, owned: false)
  var virtualReturn = inst.flags(slotval1)
  cint(virtualReturn)

method setData*(self: VirtualQAbstractProxyModel, index: gen_qabstractitemmodel_types.QModelIndex, value: gen_qvariant_types.QVariant, role: cint): bool {.base.} =
  QAbstractProxyModelsetData(self[], index, value, role)
proc cQAbstractProxyModel_method_callback_setData(self: pointer, index: pointer, value: pointer, role: cint): bool {.cdecl.} =
  let inst = cast[VirtualQAbstractProxyModel](fcQAbstractProxyModel_vdata(self))
  let slotval1 = gen_qabstractitemmodel_types.QModelIndex(h: index, owned: false)
  let slotval2 = gen_qvariant_types.QVariant(h: value, owned: false)
  let slotval3 = role
  var virtualReturn = inst.setData(slotval1, slotval2, slotval3)
  virtualReturn

method setItemData*(self: VirtualQAbstractProxyModel, index: gen_qabstractitemmodel_types.QModelIndex, roles: Table[cint,gen_qvariant_types.QVariant]): bool {.base.} =
  QAbstractProxyModelsetItemData(self[], index, roles)
proc cQAbstractProxyModel_method_callback_setItemData(self: pointer, index: pointer, roles: struct_miqt_map): bool {.cdecl.} =
  let inst = cast[VirtualQAbstractProxyModel](fcQAbstractProxyModel_vdata(self))
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

method setHeaderData*(self: VirtualQAbstractProxyModel, section: cint, orientation: cint, value: gen_qvariant_types.QVariant, role: cint): bool {.base.} =
  QAbstractProxyModelsetHeaderData(self[], section, orientation, value, role)
proc cQAbstractProxyModel_method_callback_setHeaderData(self: pointer, section: cint, orientation: cint, value: pointer, role: cint): bool {.cdecl.} =
  let inst = cast[VirtualQAbstractProxyModel](fcQAbstractProxyModel_vdata(self))
  let slotval1 = section
  let slotval2 = cint(orientation)
  let slotval3 = gen_qvariant_types.QVariant(h: value, owned: false)
  let slotval4 = role
  var virtualReturn = inst.setHeaderData(slotval1, slotval2, slotval3, slotval4)
  virtualReturn

method clearItemData*(self: VirtualQAbstractProxyModel, index: gen_qabstractitemmodel_types.QModelIndex): bool {.base.} =
  QAbstractProxyModelclearItemData(self[], index)
proc cQAbstractProxyModel_method_callback_clearItemData(self: pointer, index: pointer): bool {.cdecl.} =
  let inst = cast[VirtualQAbstractProxyModel](fcQAbstractProxyModel_vdata(self))
  let slotval1 = gen_qabstractitemmodel_types.QModelIndex(h: index, owned: false)
  var virtualReturn = inst.clearItemData(slotval1)
  virtualReturn

method buddy*(self: VirtualQAbstractProxyModel, index: gen_qabstractitemmodel_types.QModelIndex): gen_qabstractitemmodel_types.QModelIndex {.base.} =
  QAbstractProxyModelbuddy(self[], index)
proc cQAbstractProxyModel_method_callback_buddy(self: pointer, index: pointer): pointer {.cdecl.} =
  let inst = cast[VirtualQAbstractProxyModel](fcQAbstractProxyModel_vdata(self))
  let slotval1 = gen_qabstractitemmodel_types.QModelIndex(h: index, owned: false)
  var virtualReturn = inst.buddy(slotval1)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

method canFetchMore*(self: VirtualQAbstractProxyModel, parent: gen_qabstractitemmodel_types.QModelIndex): bool {.base.} =
  QAbstractProxyModelcanFetchMore(self[], parent)
proc cQAbstractProxyModel_method_callback_canFetchMore(self: pointer, parent: pointer): bool {.cdecl.} =
  let inst = cast[VirtualQAbstractProxyModel](fcQAbstractProxyModel_vdata(self))
  let slotval1 = gen_qabstractitemmodel_types.QModelIndex(h: parent, owned: false)
  var virtualReturn = inst.canFetchMore(slotval1)
  virtualReturn

method fetchMore*(self: VirtualQAbstractProxyModel, parent: gen_qabstractitemmodel_types.QModelIndex): void {.base.} =
  QAbstractProxyModelfetchMore(self[], parent)
proc cQAbstractProxyModel_method_callback_fetchMore(self: pointer, parent: pointer): void {.cdecl.} =
  let inst = cast[VirtualQAbstractProxyModel](fcQAbstractProxyModel_vdata(self))
  let slotval1 = gen_qabstractitemmodel_types.QModelIndex(h: parent, owned: false)
  inst.fetchMore(slotval1)

method sort*(self: VirtualQAbstractProxyModel, column: cint, order: cint): void {.base.} =
  QAbstractProxyModelsort(self[], column, order)
proc cQAbstractProxyModel_method_callback_sort(self: pointer, column: cint, order: cint): void {.cdecl.} =
  let inst = cast[VirtualQAbstractProxyModel](fcQAbstractProxyModel_vdata(self))
  let slotval1 = column
  let slotval2 = cint(order)
  inst.sort(slotval1, slotval2)

method span*(self: VirtualQAbstractProxyModel, index: gen_qabstractitemmodel_types.QModelIndex): gen_qsize_types.QSize {.base.} =
  QAbstractProxyModelspan(self[], index)
proc cQAbstractProxyModel_method_callback_span(self: pointer, index: pointer): pointer {.cdecl.} =
  let inst = cast[VirtualQAbstractProxyModel](fcQAbstractProxyModel_vdata(self))
  let slotval1 = gen_qabstractitemmodel_types.QModelIndex(h: index, owned: false)
  var virtualReturn = inst.span(slotval1)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

method hasChildren*(self: VirtualQAbstractProxyModel, parent: gen_qabstractitemmodel_types.QModelIndex): bool {.base.} =
  QAbstractProxyModelhasChildren(self[], parent)
proc cQAbstractProxyModel_method_callback_hasChildren(self: pointer, parent: pointer): bool {.cdecl.} =
  let inst = cast[VirtualQAbstractProxyModel](fcQAbstractProxyModel_vdata(self))
  let slotval1 = gen_qabstractitemmodel_types.QModelIndex(h: parent, owned: false)
  var virtualReturn = inst.hasChildren(slotval1)
  virtualReturn

method sibling*(self: VirtualQAbstractProxyModel, row: cint, column: cint, idx: gen_qabstractitemmodel_types.QModelIndex): gen_qabstractitemmodel_types.QModelIndex {.base.} =
  QAbstractProxyModelsibling(self[], row, column, idx)
proc cQAbstractProxyModel_method_callback_sibling(self: pointer, row: cint, column: cint, idx: pointer): pointer {.cdecl.} =
  let inst = cast[VirtualQAbstractProxyModel](fcQAbstractProxyModel_vdata(self))
  let slotval1 = row
  let slotval2 = column
  let slotval3 = gen_qabstractitemmodel_types.QModelIndex(h: idx, owned: false)
  var virtualReturn = inst.sibling(slotval1, slotval2, slotval3)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

method mimeData*(self: VirtualQAbstractProxyModel, indexes: openArray[gen_qabstractitemmodel_types.QModelIndex]): gen_qmimedata_types.QMimeData {.base.} =
  QAbstractProxyModelmimeData(self[], indexes)
proc cQAbstractProxyModel_method_callback_mimeData(self: pointer, indexes: struct_miqt_array): pointer {.cdecl.} =
  let inst = cast[VirtualQAbstractProxyModel](fcQAbstractProxyModel_vdata(self))
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

method canDropMimeData*(self: VirtualQAbstractProxyModel, data: gen_qmimedata_types.QMimeData, action: cint, row: cint, column: cint, parent: gen_qabstractitemmodel_types.QModelIndex): bool {.base.} =
  QAbstractProxyModelcanDropMimeData(self[], data, action, row, column, parent)
proc cQAbstractProxyModel_method_callback_canDropMimeData(self: pointer, data: pointer, action: cint, row: cint, column: cint, parent: pointer): bool {.cdecl.} =
  let inst = cast[VirtualQAbstractProxyModel](fcQAbstractProxyModel_vdata(self))
  let slotval1 = gen_qmimedata_types.QMimeData(h: data, owned: false)
  let slotval2 = cint(action)
  let slotval3 = row
  let slotval4 = column
  let slotval5 = gen_qabstractitemmodel_types.QModelIndex(h: parent, owned: false)
  var virtualReturn = inst.canDropMimeData(slotval1, slotval2, slotval3, slotval4, slotval5)
  virtualReturn

method dropMimeData*(self: VirtualQAbstractProxyModel, data: gen_qmimedata_types.QMimeData, action: cint, row: cint, column: cint, parent: gen_qabstractitemmodel_types.QModelIndex): bool {.base.} =
  QAbstractProxyModeldropMimeData(self[], data, action, row, column, parent)
proc cQAbstractProxyModel_method_callback_dropMimeData(self: pointer, data: pointer, action: cint, row: cint, column: cint, parent: pointer): bool {.cdecl.} =
  let inst = cast[VirtualQAbstractProxyModel](fcQAbstractProxyModel_vdata(self))
  let slotval1 = gen_qmimedata_types.QMimeData(h: data, owned: false)
  let slotval2 = cint(action)
  let slotval3 = row
  let slotval4 = column
  let slotval5 = gen_qabstractitemmodel_types.QModelIndex(h: parent, owned: false)
  var virtualReturn = inst.dropMimeData(slotval1, slotval2, slotval3, slotval4, slotval5)
  virtualReturn

method mimeTypes*(self: VirtualQAbstractProxyModel): seq[string] {.base.} =
  QAbstractProxyModelmimeTypes(self[])
proc cQAbstractProxyModel_method_callback_mimeTypes(self: pointer): struct_miqt_array {.cdecl.} =
  let inst = cast[VirtualQAbstractProxyModel](fcQAbstractProxyModel_vdata(self))
  var virtualReturn = inst.mimeTypes()
  var virtualReturn_CArray = cast[ptr UncheckedArray[struct_miqt_string]](if len(virtualReturn) > 0: c_malloc(c_sizet(sizeof(struct_miqt_string) * len(virtualReturn))) else: nil)
  for i in 0..<len(virtualReturn):
    var virtualReturn_i_copy = cast[cstring](if len(virtualReturn[i]) > 0: c_malloc(csize_t(len(virtualReturn[i]))) else: nil)
    if len(virtualReturn[i]) > 0: copyMem(cast[pointer](virtualReturn_i_copy), addr virtualReturn[i][0], csize_t(len(virtualReturn[i])))
    virtualReturn_CArray[i] = struct_miqt_string(data: virtualReturn_i_copy, len: csize_t(len(virtualReturn[i])))

  struct_miqt_array(len: csize_t(len(virtualReturn)), data: if len(virtualReturn) == 0: nil else: addr(virtualReturn_CArray[0]))

method supportedDragActions*(self: VirtualQAbstractProxyModel): cint {.base.} =
  QAbstractProxyModelsupportedDragActions(self[])
proc cQAbstractProxyModel_method_callback_supportedDragActions(self: pointer): cint {.cdecl.} =
  let inst = cast[VirtualQAbstractProxyModel](fcQAbstractProxyModel_vdata(self))
  var virtualReturn = inst.supportedDragActions()
  cint(virtualReturn)

method supportedDropActions*(self: VirtualQAbstractProxyModel): cint {.base.} =
  QAbstractProxyModelsupportedDropActions(self[])
proc cQAbstractProxyModel_method_callback_supportedDropActions(self: pointer): cint {.cdecl.} =
  let inst = cast[VirtualQAbstractProxyModel](fcQAbstractProxyModel_vdata(self))
  var virtualReturn = inst.supportedDropActions()
  cint(virtualReturn)

method roleNames*(self: VirtualQAbstractProxyModel): Table[cint,seq[byte]] {.base.} =
  QAbstractProxyModelroleNames(self[])
proc cQAbstractProxyModel_method_callback_roleNames(self: pointer): struct_miqt_map {.cdecl.} =
  let inst = cast[VirtualQAbstractProxyModel](fcQAbstractProxyModel_vdata(self))
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

method index*(self: VirtualQAbstractProxyModel, row: cint, column: cint, parent: gen_qabstractitemmodel_types.QModelIndex): gen_qabstractitemmodel_types.QModelIndex {.base.} =
  raiseAssert("missing implementation of QAbstractProxyModel_virtualbase_index")
proc cQAbstractProxyModel_method_callback_index(self: pointer, row: cint, column: cint, parent: pointer): pointer {.cdecl.} =
  let inst = cast[VirtualQAbstractProxyModel](fcQAbstractProxyModel_vdata(self))
  let slotval1 = row
  let slotval2 = column
  let slotval3 = gen_qabstractitemmodel_types.QModelIndex(h: parent, owned: false)
  var virtualReturn = inst.index(slotval1, slotval2, slotval3)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

method parent*(self: VirtualQAbstractProxyModel, child: gen_qabstractitemmodel_types.QModelIndex): gen_qabstractitemmodel_types.QModelIndex {.base.} =
  raiseAssert("missing implementation of QAbstractProxyModel_virtualbase_parent")
proc cQAbstractProxyModel_method_callback_parent(self: pointer, child: pointer): pointer {.cdecl.} =
  let inst = cast[VirtualQAbstractProxyModel](fcQAbstractProxyModel_vdata(self))
  let slotval1 = gen_qabstractitemmodel_types.QModelIndex(h: child, owned: false)
  var virtualReturn = inst.parent(slotval1)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

method rowCount*(self: VirtualQAbstractProxyModel, parent: gen_qabstractitemmodel_types.QModelIndex): cint {.base.} =
  raiseAssert("missing implementation of QAbstractProxyModel_virtualbase_rowCount")
proc cQAbstractProxyModel_method_callback_rowCount(self: pointer, parent: pointer): cint {.cdecl.} =
  let inst = cast[VirtualQAbstractProxyModel](fcQAbstractProxyModel_vdata(self))
  let slotval1 = gen_qabstractitemmodel_types.QModelIndex(h: parent, owned: false)
  var virtualReturn = inst.rowCount(slotval1)
  virtualReturn

method columnCount*(self: VirtualQAbstractProxyModel, parent: gen_qabstractitemmodel_types.QModelIndex): cint {.base.} =
  raiseAssert("missing implementation of QAbstractProxyModel_virtualbase_columnCount")
proc cQAbstractProxyModel_method_callback_columnCount(self: pointer, parent: pointer): cint {.cdecl.} =
  let inst = cast[VirtualQAbstractProxyModel](fcQAbstractProxyModel_vdata(self))
  let slotval1 = gen_qabstractitemmodel_types.QModelIndex(h: parent, owned: false)
  var virtualReturn = inst.columnCount(slotval1)
  virtualReturn

method insertRows*(self: VirtualQAbstractProxyModel, row: cint, count: cint, parent: gen_qabstractitemmodel_types.QModelIndex): bool {.base.} =
  QAbstractProxyModelinsertRows(self[], row, count, parent)
proc cQAbstractProxyModel_method_callback_insertRows(self: pointer, row: cint, count: cint, parent: pointer): bool {.cdecl.} =
  let inst = cast[VirtualQAbstractProxyModel](fcQAbstractProxyModel_vdata(self))
  let slotval1 = row
  let slotval2 = count
  let slotval3 = gen_qabstractitemmodel_types.QModelIndex(h: parent, owned: false)
  var virtualReturn = inst.insertRows(slotval1, slotval2, slotval3)
  virtualReturn

method insertColumns*(self: VirtualQAbstractProxyModel, column: cint, count: cint, parent: gen_qabstractitemmodel_types.QModelIndex): bool {.base.} =
  QAbstractProxyModelinsertColumns(self[], column, count, parent)
proc cQAbstractProxyModel_method_callback_insertColumns(self: pointer, column: cint, count: cint, parent: pointer): bool {.cdecl.} =
  let inst = cast[VirtualQAbstractProxyModel](fcQAbstractProxyModel_vdata(self))
  let slotval1 = column
  let slotval2 = count
  let slotval3 = gen_qabstractitemmodel_types.QModelIndex(h: parent, owned: false)
  var virtualReturn = inst.insertColumns(slotval1, slotval2, slotval3)
  virtualReturn

method removeRows*(self: VirtualQAbstractProxyModel, row: cint, count: cint, parent: gen_qabstractitemmodel_types.QModelIndex): bool {.base.} =
  QAbstractProxyModelremoveRows(self[], row, count, parent)
proc cQAbstractProxyModel_method_callback_removeRows(self: pointer, row: cint, count: cint, parent: pointer): bool {.cdecl.} =
  let inst = cast[VirtualQAbstractProxyModel](fcQAbstractProxyModel_vdata(self))
  let slotval1 = row
  let slotval2 = count
  let slotval3 = gen_qabstractitemmodel_types.QModelIndex(h: parent, owned: false)
  var virtualReturn = inst.removeRows(slotval1, slotval2, slotval3)
  virtualReturn

method removeColumns*(self: VirtualQAbstractProxyModel, column: cint, count: cint, parent: gen_qabstractitemmodel_types.QModelIndex): bool {.base.} =
  QAbstractProxyModelremoveColumns(self[], column, count, parent)
proc cQAbstractProxyModel_method_callback_removeColumns(self: pointer, column: cint, count: cint, parent: pointer): bool {.cdecl.} =
  let inst = cast[VirtualQAbstractProxyModel](fcQAbstractProxyModel_vdata(self))
  let slotval1 = column
  let slotval2 = count
  let slotval3 = gen_qabstractitemmodel_types.QModelIndex(h: parent, owned: false)
  var virtualReturn = inst.removeColumns(slotval1, slotval2, slotval3)
  virtualReturn

method moveRows*(self: VirtualQAbstractProxyModel, sourceParent: gen_qabstractitemmodel_types.QModelIndex, sourceRow: cint, count: cint, destinationParent: gen_qabstractitemmodel_types.QModelIndex, destinationChild: cint): bool {.base.} =
  QAbstractProxyModelmoveRows(self[], sourceParent, sourceRow, count, destinationParent, destinationChild)
proc cQAbstractProxyModel_method_callback_moveRows(self: pointer, sourceParent: pointer, sourceRow: cint, count: cint, destinationParent: pointer, destinationChild: cint): bool {.cdecl.} =
  let inst = cast[VirtualQAbstractProxyModel](fcQAbstractProxyModel_vdata(self))
  let slotval1 = gen_qabstractitemmodel_types.QModelIndex(h: sourceParent, owned: false)
  let slotval2 = sourceRow
  let slotval3 = count
  let slotval4 = gen_qabstractitemmodel_types.QModelIndex(h: destinationParent, owned: false)
  let slotval5 = destinationChild
  var virtualReturn = inst.moveRows(slotval1, slotval2, slotval3, slotval4, slotval5)
  virtualReturn

method moveColumns*(self: VirtualQAbstractProxyModel, sourceParent: gen_qabstractitemmodel_types.QModelIndex, sourceColumn: cint, count: cint, destinationParent: gen_qabstractitemmodel_types.QModelIndex, destinationChild: cint): bool {.base.} =
  QAbstractProxyModelmoveColumns(self[], sourceParent, sourceColumn, count, destinationParent, destinationChild)
proc cQAbstractProxyModel_method_callback_moveColumns(self: pointer, sourceParent: pointer, sourceColumn: cint, count: cint, destinationParent: pointer, destinationChild: cint): bool {.cdecl.} =
  let inst = cast[VirtualQAbstractProxyModel](fcQAbstractProxyModel_vdata(self))
  let slotval1 = gen_qabstractitemmodel_types.QModelIndex(h: sourceParent, owned: false)
  let slotval2 = sourceColumn
  let slotval3 = count
  let slotval4 = gen_qabstractitemmodel_types.QModelIndex(h: destinationParent, owned: false)
  let slotval5 = destinationChild
  var virtualReturn = inst.moveColumns(slotval1, slotval2, slotval3, slotval4, slotval5)
  virtualReturn

method match*(self: VirtualQAbstractProxyModel, start: gen_qabstractitemmodel_types.QModelIndex, role: cint, value: gen_qvariant_types.QVariant, hits: cint, flags: cint): seq[gen_qabstractitemmodel_types.QModelIndex] {.base.} =
  QAbstractProxyModelmatch(self[], start, role, value, hits, flags)
proc cQAbstractProxyModel_method_callback_match(self: pointer, start: pointer, role: cint, value: pointer, hits: cint, flags: cint): struct_miqt_array {.cdecl.} =
  let inst = cast[VirtualQAbstractProxyModel](fcQAbstractProxyModel_vdata(self))
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

method multiData*(self: VirtualQAbstractProxyModel, index: gen_qabstractitemmodel_types.QModelIndex, roleDataSpan: gen_qabstractitemmodel_types.QModelRoleDataSpan): void {.base.} =
  QAbstractProxyModelmultiData(self[], index, roleDataSpan)
proc cQAbstractProxyModel_method_callback_multiData(self: pointer, index: pointer, roleDataSpan: pointer): void {.cdecl.} =
  let inst = cast[VirtualQAbstractProxyModel](fcQAbstractProxyModel_vdata(self))
  let slotval1 = gen_qabstractitemmodel_types.QModelIndex(h: index, owned: false)
  let slotval2 = gen_qabstractitemmodel_types.QModelRoleDataSpan(h: roleDataSpan, owned: true)
  inst.multiData(slotval1, slotval2)

method resetInternalData*(self: VirtualQAbstractProxyModel): void {.base.} =
  QAbstractProxyModelresetInternalData(self[])
proc cQAbstractProxyModel_method_callback_resetInternalData(self: pointer): void {.cdecl.} =
  let inst = cast[VirtualQAbstractProxyModel](fcQAbstractProxyModel_vdata(self))
  inst.resetInternalData()

method event*(self: VirtualQAbstractProxyModel, event: gen_qcoreevent_types.QEvent): bool {.base.} =
  QAbstractProxyModelevent(self[], event)
proc cQAbstractProxyModel_method_callback_event(self: pointer, event: pointer): bool {.cdecl.} =
  let inst = cast[VirtualQAbstractProxyModel](fcQAbstractProxyModel_vdata(self))
  let slotval1 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  var virtualReturn = inst.event(slotval1)
  virtualReturn

method eventFilter*(self: VirtualQAbstractProxyModel, watched: gen_qobject_types.QObject, event: gen_qcoreevent_types.QEvent): bool {.base.} =
  QAbstractProxyModeleventFilter(self[], watched, event)
proc cQAbstractProxyModel_method_callback_eventFilter(self: pointer, watched: pointer, event: pointer): bool {.cdecl.} =
  let inst = cast[VirtualQAbstractProxyModel](fcQAbstractProxyModel_vdata(self))
  let slotval1 = gen_qobject_types.QObject(h: watched, owned: false)
  let slotval2 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  var virtualReturn = inst.eventFilter(slotval1, slotval2)
  virtualReturn

method timerEvent*(self: VirtualQAbstractProxyModel, event: gen_qcoreevent_types.QTimerEvent): void {.base.} =
  QAbstractProxyModeltimerEvent(self[], event)
proc cQAbstractProxyModel_method_callback_timerEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQAbstractProxyModel](fcQAbstractProxyModel_vdata(self))
  let slotval1 = gen_qcoreevent_types.QTimerEvent(h: event, owned: false)
  inst.timerEvent(slotval1)

method childEvent*(self: VirtualQAbstractProxyModel, event: gen_qcoreevent_types.QChildEvent): void {.base.} =
  QAbstractProxyModelchildEvent(self[], event)
proc cQAbstractProxyModel_method_callback_childEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQAbstractProxyModel](fcQAbstractProxyModel_vdata(self))
  let slotval1 = gen_qcoreevent_types.QChildEvent(h: event, owned: false)
  inst.childEvent(slotval1)

method customEvent*(self: VirtualQAbstractProxyModel, event: gen_qcoreevent_types.QEvent): void {.base.} =
  QAbstractProxyModelcustomEvent(self[], event)
proc cQAbstractProxyModel_method_callback_customEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQAbstractProxyModel](fcQAbstractProxyModel_vdata(self))
  let slotval1 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  inst.customEvent(slotval1)

method connectNotify*(self: VirtualQAbstractProxyModel, signal: gen_qmetaobject_types.QMetaMethod): void {.base.} =
  QAbstractProxyModelconnectNotify(self[], signal)
proc cQAbstractProxyModel_method_callback_connectNotify(self: pointer, signal: pointer): void {.cdecl.} =
  let inst = cast[VirtualQAbstractProxyModel](fcQAbstractProxyModel_vdata(self))
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal, owned: false)
  inst.connectNotify(slotval1)

method disconnectNotify*(self: VirtualQAbstractProxyModel, signal: gen_qmetaobject_types.QMetaMethod): void {.base.} =
  QAbstractProxyModeldisconnectNotify(self[], signal)
proc cQAbstractProxyModel_method_callback_disconnectNotify(self: pointer, signal: pointer): void {.cdecl.} =
  let inst = cast[VirtualQAbstractProxyModel](fcQAbstractProxyModel_vdata(self))
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal, owned: false)
  inst.disconnectNotify(slotval1)

proc createSourceIndex*(self: gen_qabstractproxymodel_types.QAbstractProxyModel, row: cint, col: cint, internalPtr: pointer): gen_qabstractitemmodel_types.QModelIndex =
  gen_qabstractitemmodel_types.QModelIndex(h: fcQAbstractProxyModel_protectedbase_createSourceIndex(self.h, row, col, internalPtr), owned: true)

proc createIndex*(self: gen_qabstractproxymodel_types.QAbstractProxyModel, row: cint, column: cint): gen_qabstractitemmodel_types.QModelIndex =
  gen_qabstractitemmodel_types.QModelIndex(h: fcQAbstractProxyModel_protectedbase_createIndex(self.h, row, column), owned: true)

proc encodeData*(self: gen_qabstractproxymodel_types.QAbstractProxyModel, indexes: openArray[gen_qabstractitemmodel_types.QModelIndex], stream: gen_qdatastream_types.QDataStream): void =
  var indexes_CArray = newSeq[pointer](len(indexes))
  for i in 0..<len(indexes):
    indexes_CArray[i] = indexes[i].h

  fcQAbstractProxyModel_protectedbase_encodeData(self.h, struct_miqt_array(len: csize_t(len(indexes)), data: if len(indexes) == 0: nil else: addr(indexes_CArray[0])), stream.h)

proc decodeData*(self: gen_qabstractproxymodel_types.QAbstractProxyModel, row: cint, column: cint, parent: gen_qabstractitemmodel_types.QModelIndex, stream: gen_qdatastream_types.QDataStream): bool =
  fcQAbstractProxyModel_protectedbase_decodeData(self.h, row, column, parent.h, stream.h)

proc beginInsertRows*(self: gen_qabstractproxymodel_types.QAbstractProxyModel, parent: gen_qabstractitemmodel_types.QModelIndex, first: cint, last: cint): void =
  fcQAbstractProxyModel_protectedbase_beginInsertRows(self.h, parent.h, first, last)

proc endInsertRows*(self: gen_qabstractproxymodel_types.QAbstractProxyModel): void =
  fcQAbstractProxyModel_protectedbase_endInsertRows(self.h)

proc beginRemoveRows*(self: gen_qabstractproxymodel_types.QAbstractProxyModel, parent: gen_qabstractitemmodel_types.QModelIndex, first: cint, last: cint): void =
  fcQAbstractProxyModel_protectedbase_beginRemoveRows(self.h, parent.h, first, last)

proc endRemoveRows*(self: gen_qabstractproxymodel_types.QAbstractProxyModel): void =
  fcQAbstractProxyModel_protectedbase_endRemoveRows(self.h)

proc beginMoveRows*(self: gen_qabstractproxymodel_types.QAbstractProxyModel, sourceParent: gen_qabstractitemmodel_types.QModelIndex, sourceFirst: cint, sourceLast: cint, destinationParent: gen_qabstractitemmodel_types.QModelIndex, destinationRow: cint): bool =
  fcQAbstractProxyModel_protectedbase_beginMoveRows(self.h, sourceParent.h, sourceFirst, sourceLast, destinationParent.h, destinationRow)

proc endMoveRows*(self: gen_qabstractproxymodel_types.QAbstractProxyModel): void =
  fcQAbstractProxyModel_protectedbase_endMoveRows(self.h)

proc beginInsertColumns*(self: gen_qabstractproxymodel_types.QAbstractProxyModel, parent: gen_qabstractitemmodel_types.QModelIndex, first: cint, last: cint): void =
  fcQAbstractProxyModel_protectedbase_beginInsertColumns(self.h, parent.h, first, last)

proc endInsertColumns*(self: gen_qabstractproxymodel_types.QAbstractProxyModel): void =
  fcQAbstractProxyModel_protectedbase_endInsertColumns(self.h)

proc beginRemoveColumns*(self: gen_qabstractproxymodel_types.QAbstractProxyModel, parent: gen_qabstractitemmodel_types.QModelIndex, first: cint, last: cint): void =
  fcQAbstractProxyModel_protectedbase_beginRemoveColumns(self.h, parent.h, first, last)

proc endRemoveColumns*(self: gen_qabstractproxymodel_types.QAbstractProxyModel): void =
  fcQAbstractProxyModel_protectedbase_endRemoveColumns(self.h)

proc beginMoveColumns*(self: gen_qabstractproxymodel_types.QAbstractProxyModel, sourceParent: gen_qabstractitemmodel_types.QModelIndex, sourceFirst: cint, sourceLast: cint, destinationParent: gen_qabstractitemmodel_types.QModelIndex, destinationColumn: cint): bool =
  fcQAbstractProxyModel_protectedbase_beginMoveColumns(self.h, sourceParent.h, sourceFirst, sourceLast, destinationParent.h, destinationColumn)

proc endMoveColumns*(self: gen_qabstractproxymodel_types.QAbstractProxyModel): void =
  fcQAbstractProxyModel_protectedbase_endMoveColumns(self.h)

proc beginResetModel*(self: gen_qabstractproxymodel_types.QAbstractProxyModel): void =
  fcQAbstractProxyModel_protectedbase_beginResetModel(self.h)

proc endResetModel*(self: gen_qabstractproxymodel_types.QAbstractProxyModel): void =
  fcQAbstractProxyModel_protectedbase_endResetModel(self.h)

proc changePersistentIndex*(self: gen_qabstractproxymodel_types.QAbstractProxyModel, fromVal: gen_qabstractitemmodel_types.QModelIndex, to: gen_qabstractitemmodel_types.QModelIndex): void =
  fcQAbstractProxyModel_protectedbase_changePersistentIndex(self.h, fromVal.h, to.h)

proc changePersistentIndexList*(self: gen_qabstractproxymodel_types.QAbstractProxyModel, fromVal: openArray[gen_qabstractitemmodel_types.QModelIndex], to: openArray[gen_qabstractitemmodel_types.QModelIndex]): void =
  var fromVal_CArray = newSeq[pointer](len(fromVal))
  for i in 0..<len(fromVal):
    fromVal_CArray[i] = fromVal[i].h

  var to_CArray = newSeq[pointer](len(to))
  for i in 0..<len(to):
    to_CArray[i] = to[i].h

  fcQAbstractProxyModel_protectedbase_changePersistentIndexList(self.h, struct_miqt_array(len: csize_t(len(fromVal)), data: if len(fromVal) == 0: nil else: addr(fromVal_CArray[0])), struct_miqt_array(len: csize_t(len(to)), data: if len(to) == 0: nil else: addr(to_CArray[0])))

proc persistentIndexList*(self: gen_qabstractproxymodel_types.QAbstractProxyModel): seq[gen_qabstractitemmodel_types.QModelIndex] =
  var v_ma = fcQAbstractProxyModel_protectedbase_persistentIndexList(self.h)
  var vx_ret = newSeq[gen_qabstractitemmodel_types.QModelIndex](int(v_ma.len))
  let v_outCast = cast[ptr UncheckedArray[pointer]](v_ma.data)
  for i in 0 ..< v_ma.len:
    vx_ret[i] = gen_qabstractitemmodel_types.QModelIndex(h: v_outCast[i], owned: true)
  c_free(v_ma.data)
  vx_ret

proc sender*(self: gen_qabstractproxymodel_types.QAbstractProxyModel): gen_qobject_types.QObject =
  gen_qobject_types.QObject(h: fcQAbstractProxyModel_protectedbase_sender(self.h), owned: false)

proc senderSignalIndex*(self: gen_qabstractproxymodel_types.QAbstractProxyModel): cint =
  fcQAbstractProxyModel_protectedbase_senderSignalIndex(self.h)

proc receivers*(self: gen_qabstractproxymodel_types.QAbstractProxyModel, signal: cstring): cint =
  fcQAbstractProxyModel_protectedbase_receivers(self.h, signal)

proc isSignalConnected*(self: gen_qabstractproxymodel_types.QAbstractProxyModel, signal: gen_qmetaobject_types.QMetaMethod): bool =
  fcQAbstractProxyModel_protectedbase_isSignalConnected(self.h, signal.h)

proc create*(T: type gen_qabstractproxymodel_types.QAbstractProxyModel,
    vtbl: ref QAbstractProxyModelVTable = nil): gen_qabstractproxymodel_types.QAbstractProxyModel =
  let vtbl = if vtbl == nil: new QAbstractProxyModelVTable else: vtbl
  GC_ref(vtbl)
  vtbl[].vtbl.destructor = proc(self: pointer) {.cdecl.} =
    let vtbl = cast[ref QAbstractProxyModelVTable](fcQAbstractProxyModel_vdata(self))
    GC_unref(vtbl)
  if not isNil(vtbl[].metaObject):
    vtbl[].vtbl.metaObject = cQAbstractProxyModel_vtable_callback_metaObject
  if not isNil(vtbl[].metacast):
    vtbl[].vtbl.metacast = cQAbstractProxyModel_vtable_callback_metacast
  if not isNil(vtbl[].metacall):
    vtbl[].vtbl.metacall = cQAbstractProxyModel_vtable_callback_metacall
  if not isNil(vtbl[].setSourceModel):
    vtbl[].vtbl.setSourceModel = cQAbstractProxyModel_vtable_callback_setSourceModel
  if not isNil(vtbl[].mapToSource):
    vtbl[].vtbl.mapToSource = cQAbstractProxyModel_vtable_callback_mapToSource
  if not isNil(vtbl[].mapFromSource):
    vtbl[].vtbl.mapFromSource = cQAbstractProxyModel_vtable_callback_mapFromSource
  if not isNil(vtbl[].mapSelectionToSource):
    vtbl[].vtbl.mapSelectionToSource = cQAbstractProxyModel_vtable_callback_mapSelectionToSource
  if not isNil(vtbl[].mapSelectionFromSource):
    vtbl[].vtbl.mapSelectionFromSource = cQAbstractProxyModel_vtable_callback_mapSelectionFromSource
  if not isNil(vtbl[].submit):
    vtbl[].vtbl.submit = cQAbstractProxyModel_vtable_callback_submit
  if not isNil(vtbl[].revert):
    vtbl[].vtbl.revert = cQAbstractProxyModel_vtable_callback_revert
  if not isNil(vtbl[].data):
    vtbl[].vtbl.data = cQAbstractProxyModel_vtable_callback_data
  if not isNil(vtbl[].headerData):
    vtbl[].vtbl.headerData = cQAbstractProxyModel_vtable_callback_headerData
  if not isNil(vtbl[].itemData):
    vtbl[].vtbl.itemData = cQAbstractProxyModel_vtable_callback_itemData
  if not isNil(vtbl[].flags):
    vtbl[].vtbl.flags = cQAbstractProxyModel_vtable_callback_flags
  if not isNil(vtbl[].setData):
    vtbl[].vtbl.setData = cQAbstractProxyModel_vtable_callback_setData
  if not isNil(vtbl[].setItemData):
    vtbl[].vtbl.setItemData = cQAbstractProxyModel_vtable_callback_setItemData
  if not isNil(vtbl[].setHeaderData):
    vtbl[].vtbl.setHeaderData = cQAbstractProxyModel_vtable_callback_setHeaderData
  if not isNil(vtbl[].clearItemData):
    vtbl[].vtbl.clearItemData = cQAbstractProxyModel_vtable_callback_clearItemData
  if not isNil(vtbl[].buddy):
    vtbl[].vtbl.buddy = cQAbstractProxyModel_vtable_callback_buddy
  if not isNil(vtbl[].canFetchMore):
    vtbl[].vtbl.canFetchMore = cQAbstractProxyModel_vtable_callback_canFetchMore
  if not isNil(vtbl[].fetchMore):
    vtbl[].vtbl.fetchMore = cQAbstractProxyModel_vtable_callback_fetchMore
  if not isNil(vtbl[].sort):
    vtbl[].vtbl.sort = cQAbstractProxyModel_vtable_callback_sort
  if not isNil(vtbl[].span):
    vtbl[].vtbl.span = cQAbstractProxyModel_vtable_callback_span
  if not isNil(vtbl[].hasChildren):
    vtbl[].vtbl.hasChildren = cQAbstractProxyModel_vtable_callback_hasChildren
  if not isNil(vtbl[].sibling):
    vtbl[].vtbl.sibling = cQAbstractProxyModel_vtable_callback_sibling
  if not isNil(vtbl[].mimeData):
    vtbl[].vtbl.mimeData = cQAbstractProxyModel_vtable_callback_mimeData
  if not isNil(vtbl[].canDropMimeData):
    vtbl[].vtbl.canDropMimeData = cQAbstractProxyModel_vtable_callback_canDropMimeData
  if not isNil(vtbl[].dropMimeData):
    vtbl[].vtbl.dropMimeData = cQAbstractProxyModel_vtable_callback_dropMimeData
  if not isNil(vtbl[].mimeTypes):
    vtbl[].vtbl.mimeTypes = cQAbstractProxyModel_vtable_callback_mimeTypes
  if not isNil(vtbl[].supportedDragActions):
    vtbl[].vtbl.supportedDragActions = cQAbstractProxyModel_vtable_callback_supportedDragActions
  if not isNil(vtbl[].supportedDropActions):
    vtbl[].vtbl.supportedDropActions = cQAbstractProxyModel_vtable_callback_supportedDropActions
  if not isNil(vtbl[].roleNames):
    vtbl[].vtbl.roleNames = cQAbstractProxyModel_vtable_callback_roleNames
  if not isNil(vtbl[].index):
    vtbl[].vtbl.index = cQAbstractProxyModel_vtable_callback_index
  if not isNil(vtbl[].parent):
    vtbl[].vtbl.parent = cQAbstractProxyModel_vtable_callback_parent
  if not isNil(vtbl[].rowCount):
    vtbl[].vtbl.rowCount = cQAbstractProxyModel_vtable_callback_rowCount
  if not isNil(vtbl[].columnCount):
    vtbl[].vtbl.columnCount = cQAbstractProxyModel_vtable_callback_columnCount
  if not isNil(vtbl[].insertRows):
    vtbl[].vtbl.insertRows = cQAbstractProxyModel_vtable_callback_insertRows
  if not isNil(vtbl[].insertColumns):
    vtbl[].vtbl.insertColumns = cQAbstractProxyModel_vtable_callback_insertColumns
  if not isNil(vtbl[].removeRows):
    vtbl[].vtbl.removeRows = cQAbstractProxyModel_vtable_callback_removeRows
  if not isNil(vtbl[].removeColumns):
    vtbl[].vtbl.removeColumns = cQAbstractProxyModel_vtable_callback_removeColumns
  if not isNil(vtbl[].moveRows):
    vtbl[].vtbl.moveRows = cQAbstractProxyModel_vtable_callback_moveRows
  if not isNil(vtbl[].moveColumns):
    vtbl[].vtbl.moveColumns = cQAbstractProxyModel_vtable_callback_moveColumns
  if not isNil(vtbl[].match):
    vtbl[].vtbl.match = cQAbstractProxyModel_vtable_callback_match
  if not isNil(vtbl[].multiData):
    vtbl[].vtbl.multiData = cQAbstractProxyModel_vtable_callback_multiData
  if not isNil(vtbl[].resetInternalData):
    vtbl[].vtbl.resetInternalData = cQAbstractProxyModel_vtable_callback_resetInternalData
  if not isNil(vtbl[].event):
    vtbl[].vtbl.event = cQAbstractProxyModel_vtable_callback_event
  if not isNil(vtbl[].eventFilter):
    vtbl[].vtbl.eventFilter = cQAbstractProxyModel_vtable_callback_eventFilter
  if not isNil(vtbl[].timerEvent):
    vtbl[].vtbl.timerEvent = cQAbstractProxyModel_vtable_callback_timerEvent
  if not isNil(vtbl[].childEvent):
    vtbl[].vtbl.childEvent = cQAbstractProxyModel_vtable_callback_childEvent
  if not isNil(vtbl[].customEvent):
    vtbl[].vtbl.customEvent = cQAbstractProxyModel_vtable_callback_customEvent
  if not isNil(vtbl[].connectNotify):
    vtbl[].vtbl.connectNotify = cQAbstractProxyModel_vtable_callback_connectNotify
  if not isNil(vtbl[].disconnectNotify):
    vtbl[].vtbl.disconnectNotify = cQAbstractProxyModel_vtable_callback_disconnectNotify
  gen_qabstractproxymodel_types.QAbstractProxyModel(h: fcQAbstractProxyModel_new(addr(vtbl[].vtbl), addr(vtbl[])), owned: true)

proc create*(T: type gen_qabstractproxymodel_types.QAbstractProxyModel,
    parent: gen_qobject_types.QObject,
    vtbl: ref QAbstractProxyModelVTable = nil): gen_qabstractproxymodel_types.QAbstractProxyModel =
  let vtbl = if vtbl == nil: new QAbstractProxyModelVTable else: vtbl
  GC_ref(vtbl)
  vtbl[].vtbl.destructor = proc(self: pointer) {.cdecl.} =
    let vtbl = cast[ref QAbstractProxyModelVTable](fcQAbstractProxyModel_vdata(self))
    GC_unref(vtbl)
  if not isNil(vtbl[].metaObject):
    vtbl[].vtbl.metaObject = cQAbstractProxyModel_vtable_callback_metaObject
  if not isNil(vtbl[].metacast):
    vtbl[].vtbl.metacast = cQAbstractProxyModel_vtable_callback_metacast
  if not isNil(vtbl[].metacall):
    vtbl[].vtbl.metacall = cQAbstractProxyModel_vtable_callback_metacall
  if not isNil(vtbl[].setSourceModel):
    vtbl[].vtbl.setSourceModel = cQAbstractProxyModel_vtable_callback_setSourceModel
  if not isNil(vtbl[].mapToSource):
    vtbl[].vtbl.mapToSource = cQAbstractProxyModel_vtable_callback_mapToSource
  if not isNil(vtbl[].mapFromSource):
    vtbl[].vtbl.mapFromSource = cQAbstractProxyModel_vtable_callback_mapFromSource
  if not isNil(vtbl[].mapSelectionToSource):
    vtbl[].vtbl.mapSelectionToSource = cQAbstractProxyModel_vtable_callback_mapSelectionToSource
  if not isNil(vtbl[].mapSelectionFromSource):
    vtbl[].vtbl.mapSelectionFromSource = cQAbstractProxyModel_vtable_callback_mapSelectionFromSource
  if not isNil(vtbl[].submit):
    vtbl[].vtbl.submit = cQAbstractProxyModel_vtable_callback_submit
  if not isNil(vtbl[].revert):
    vtbl[].vtbl.revert = cQAbstractProxyModel_vtable_callback_revert
  if not isNil(vtbl[].data):
    vtbl[].vtbl.data = cQAbstractProxyModel_vtable_callback_data
  if not isNil(vtbl[].headerData):
    vtbl[].vtbl.headerData = cQAbstractProxyModel_vtable_callback_headerData
  if not isNil(vtbl[].itemData):
    vtbl[].vtbl.itemData = cQAbstractProxyModel_vtable_callback_itemData
  if not isNil(vtbl[].flags):
    vtbl[].vtbl.flags = cQAbstractProxyModel_vtable_callback_flags
  if not isNil(vtbl[].setData):
    vtbl[].vtbl.setData = cQAbstractProxyModel_vtable_callback_setData
  if not isNil(vtbl[].setItemData):
    vtbl[].vtbl.setItemData = cQAbstractProxyModel_vtable_callback_setItemData
  if not isNil(vtbl[].setHeaderData):
    vtbl[].vtbl.setHeaderData = cQAbstractProxyModel_vtable_callback_setHeaderData
  if not isNil(vtbl[].clearItemData):
    vtbl[].vtbl.clearItemData = cQAbstractProxyModel_vtable_callback_clearItemData
  if not isNil(vtbl[].buddy):
    vtbl[].vtbl.buddy = cQAbstractProxyModel_vtable_callback_buddy
  if not isNil(vtbl[].canFetchMore):
    vtbl[].vtbl.canFetchMore = cQAbstractProxyModel_vtable_callback_canFetchMore
  if not isNil(vtbl[].fetchMore):
    vtbl[].vtbl.fetchMore = cQAbstractProxyModel_vtable_callback_fetchMore
  if not isNil(vtbl[].sort):
    vtbl[].vtbl.sort = cQAbstractProxyModel_vtable_callback_sort
  if not isNil(vtbl[].span):
    vtbl[].vtbl.span = cQAbstractProxyModel_vtable_callback_span
  if not isNil(vtbl[].hasChildren):
    vtbl[].vtbl.hasChildren = cQAbstractProxyModel_vtable_callback_hasChildren
  if not isNil(vtbl[].sibling):
    vtbl[].vtbl.sibling = cQAbstractProxyModel_vtable_callback_sibling
  if not isNil(vtbl[].mimeData):
    vtbl[].vtbl.mimeData = cQAbstractProxyModel_vtable_callback_mimeData
  if not isNil(vtbl[].canDropMimeData):
    vtbl[].vtbl.canDropMimeData = cQAbstractProxyModel_vtable_callback_canDropMimeData
  if not isNil(vtbl[].dropMimeData):
    vtbl[].vtbl.dropMimeData = cQAbstractProxyModel_vtable_callback_dropMimeData
  if not isNil(vtbl[].mimeTypes):
    vtbl[].vtbl.mimeTypes = cQAbstractProxyModel_vtable_callback_mimeTypes
  if not isNil(vtbl[].supportedDragActions):
    vtbl[].vtbl.supportedDragActions = cQAbstractProxyModel_vtable_callback_supportedDragActions
  if not isNil(vtbl[].supportedDropActions):
    vtbl[].vtbl.supportedDropActions = cQAbstractProxyModel_vtable_callback_supportedDropActions
  if not isNil(vtbl[].roleNames):
    vtbl[].vtbl.roleNames = cQAbstractProxyModel_vtable_callback_roleNames
  if not isNil(vtbl[].index):
    vtbl[].vtbl.index = cQAbstractProxyModel_vtable_callback_index
  if not isNil(vtbl[].parent):
    vtbl[].vtbl.parent = cQAbstractProxyModel_vtable_callback_parent
  if not isNil(vtbl[].rowCount):
    vtbl[].vtbl.rowCount = cQAbstractProxyModel_vtable_callback_rowCount
  if not isNil(vtbl[].columnCount):
    vtbl[].vtbl.columnCount = cQAbstractProxyModel_vtable_callback_columnCount
  if not isNil(vtbl[].insertRows):
    vtbl[].vtbl.insertRows = cQAbstractProxyModel_vtable_callback_insertRows
  if not isNil(vtbl[].insertColumns):
    vtbl[].vtbl.insertColumns = cQAbstractProxyModel_vtable_callback_insertColumns
  if not isNil(vtbl[].removeRows):
    vtbl[].vtbl.removeRows = cQAbstractProxyModel_vtable_callback_removeRows
  if not isNil(vtbl[].removeColumns):
    vtbl[].vtbl.removeColumns = cQAbstractProxyModel_vtable_callback_removeColumns
  if not isNil(vtbl[].moveRows):
    vtbl[].vtbl.moveRows = cQAbstractProxyModel_vtable_callback_moveRows
  if not isNil(vtbl[].moveColumns):
    vtbl[].vtbl.moveColumns = cQAbstractProxyModel_vtable_callback_moveColumns
  if not isNil(vtbl[].match):
    vtbl[].vtbl.match = cQAbstractProxyModel_vtable_callback_match
  if not isNil(vtbl[].multiData):
    vtbl[].vtbl.multiData = cQAbstractProxyModel_vtable_callback_multiData
  if not isNil(vtbl[].resetInternalData):
    vtbl[].vtbl.resetInternalData = cQAbstractProxyModel_vtable_callback_resetInternalData
  if not isNil(vtbl[].event):
    vtbl[].vtbl.event = cQAbstractProxyModel_vtable_callback_event
  if not isNil(vtbl[].eventFilter):
    vtbl[].vtbl.eventFilter = cQAbstractProxyModel_vtable_callback_eventFilter
  if not isNil(vtbl[].timerEvent):
    vtbl[].vtbl.timerEvent = cQAbstractProxyModel_vtable_callback_timerEvent
  if not isNil(vtbl[].childEvent):
    vtbl[].vtbl.childEvent = cQAbstractProxyModel_vtable_callback_childEvent
  if not isNil(vtbl[].customEvent):
    vtbl[].vtbl.customEvent = cQAbstractProxyModel_vtable_callback_customEvent
  if not isNil(vtbl[].connectNotify):
    vtbl[].vtbl.connectNotify = cQAbstractProxyModel_vtable_callback_connectNotify
  if not isNil(vtbl[].disconnectNotify):
    vtbl[].vtbl.disconnectNotify = cQAbstractProxyModel_vtable_callback_disconnectNotify
  gen_qabstractproxymodel_types.QAbstractProxyModel(h: fcQAbstractProxyModel_new2(addr(vtbl[].vtbl), addr(vtbl[]), parent.h), owned: true)

const cQAbstractProxyModel_mvtbl = cQAbstractProxyModelVTable(
  destructor: proc(self: pointer) {.cdecl.} =
    let inst = cast[ptr typeof(VirtualQAbstractProxyModel()[])](self.fcQAbstractProxyModel_vtbl())
    inst[].h = nil
    inst[].owned = false,
  metaObject: cQAbstractProxyModel_method_callback_metaObject,
  metacast: cQAbstractProxyModel_method_callback_metacast,
  metacall: cQAbstractProxyModel_method_callback_metacall,
  setSourceModel: cQAbstractProxyModel_method_callback_setSourceModel,
  mapToSource: cQAbstractProxyModel_method_callback_mapToSource,
  mapFromSource: cQAbstractProxyModel_method_callback_mapFromSource,
  mapSelectionToSource: cQAbstractProxyModel_method_callback_mapSelectionToSource,
  mapSelectionFromSource: cQAbstractProxyModel_method_callback_mapSelectionFromSource,
  submit: cQAbstractProxyModel_method_callback_submit,
  revert: cQAbstractProxyModel_method_callback_revert,
  data: cQAbstractProxyModel_method_callback_data,
  headerData: cQAbstractProxyModel_method_callback_headerData,
  itemData: cQAbstractProxyModel_method_callback_itemData,
  flags: cQAbstractProxyModel_method_callback_flags,
  setData: cQAbstractProxyModel_method_callback_setData,
  setItemData: cQAbstractProxyModel_method_callback_setItemData,
  setHeaderData: cQAbstractProxyModel_method_callback_setHeaderData,
  clearItemData: cQAbstractProxyModel_method_callback_clearItemData,
  buddy: cQAbstractProxyModel_method_callback_buddy,
  canFetchMore: cQAbstractProxyModel_method_callback_canFetchMore,
  fetchMore: cQAbstractProxyModel_method_callback_fetchMore,
  sort: cQAbstractProxyModel_method_callback_sort,
  span: cQAbstractProxyModel_method_callback_span,
  hasChildren: cQAbstractProxyModel_method_callback_hasChildren,
  sibling: cQAbstractProxyModel_method_callback_sibling,
  mimeData: cQAbstractProxyModel_method_callback_mimeData,
  canDropMimeData: cQAbstractProxyModel_method_callback_canDropMimeData,
  dropMimeData: cQAbstractProxyModel_method_callback_dropMimeData,
  mimeTypes: cQAbstractProxyModel_method_callback_mimeTypes,
  supportedDragActions: cQAbstractProxyModel_method_callback_supportedDragActions,
  supportedDropActions: cQAbstractProxyModel_method_callback_supportedDropActions,
  roleNames: cQAbstractProxyModel_method_callback_roleNames,
  index: cQAbstractProxyModel_method_callback_index,
  parent: cQAbstractProxyModel_method_callback_parent,
  rowCount: cQAbstractProxyModel_method_callback_rowCount,
  columnCount: cQAbstractProxyModel_method_callback_columnCount,
  insertRows: cQAbstractProxyModel_method_callback_insertRows,
  insertColumns: cQAbstractProxyModel_method_callback_insertColumns,
  removeRows: cQAbstractProxyModel_method_callback_removeRows,
  removeColumns: cQAbstractProxyModel_method_callback_removeColumns,
  moveRows: cQAbstractProxyModel_method_callback_moveRows,
  moveColumns: cQAbstractProxyModel_method_callback_moveColumns,
  match: cQAbstractProxyModel_method_callback_match,
  multiData: cQAbstractProxyModel_method_callback_multiData,
  resetInternalData: cQAbstractProxyModel_method_callback_resetInternalData,
  event: cQAbstractProxyModel_method_callback_event,
  eventFilter: cQAbstractProxyModel_method_callback_eventFilter,
  timerEvent: cQAbstractProxyModel_method_callback_timerEvent,
  childEvent: cQAbstractProxyModel_method_callback_childEvent,
  customEvent: cQAbstractProxyModel_method_callback_customEvent,
  connectNotify: cQAbstractProxyModel_method_callback_connectNotify,
  disconnectNotify: cQAbstractProxyModel_method_callback_disconnectNotify,
)
proc create*(T: type gen_qabstractproxymodel_types.QAbstractProxyModel,
    inst: VirtualQAbstractProxyModel) =
  if inst[].h != nil: delete(move(inst[]))
  inst[].h = fcQAbstractProxyModel_new(addr(cQAbstractProxyModel_mvtbl), addr(inst[]))
  inst[].owned = true

proc create*(T: type gen_qabstractproxymodel_types.QAbstractProxyModel,
    parent: gen_qobject_types.QObject,
    inst: VirtualQAbstractProxyModel) =
  if inst[].h != nil: delete(move(inst[]))
  inst[].h = fcQAbstractProxyModel_new2(addr(cQAbstractProxyModel_mvtbl), addr(inst[]), parent.h)
  inst[].owned = true

proc staticMetaObject*(_: type gen_qabstractproxymodel_types.QAbstractProxyModel): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQAbstractProxyModel_staticMetaObject())
