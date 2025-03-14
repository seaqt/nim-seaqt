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


{.compile("gen_qtransposeproxymodel.cpp", QtCoreCFlags).}


import ./gen_qtransposeproxymodel_types
export gen_qtransposeproxymodel_types

import
  ./gen_qabstractitemmodel_types,
  ./gen_qabstractproxymodel,
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
  gen_qabstractitemmodel_types,
  gen_qabstractproxymodel,
  gen_qcoreevent_types,
  gen_qdatastream_types,
  gen_qitemselectionmodel_types,
  gen_qmetaobject_types,
  gen_qmimedata_types,
  gen_qobject_types,
  gen_qobjectdefs_types,
  gen_qsize_types,
  gen_qvariant_types

type cQTransposeProxyModel*{.exportc: "QTransposeProxyModel", incompleteStruct.} = object

proc fcQTransposeProxyModel_metaObject(self: pointer): pointer {.importc: "QTransposeProxyModel_metaObject".}
proc fcQTransposeProxyModel_metacast(self: pointer, param1: cstring): pointer {.importc: "QTransposeProxyModel_metacast".}
proc fcQTransposeProxyModel_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.importc: "QTransposeProxyModel_metacall".}
proc fcQTransposeProxyModel_tr(s: cstring): struct_miqt_string {.importc: "QTransposeProxyModel_tr".}
proc fcQTransposeProxyModel_trUtf8(s: cstring): struct_miqt_string {.importc: "QTransposeProxyModel_trUtf8".}
proc fcQTransposeProxyModel_setSourceModel(self: pointer, newSourceModel: pointer): void {.importc: "QTransposeProxyModel_setSourceModel".}
proc fcQTransposeProxyModel_rowCount(self: pointer, parent: pointer): cint {.importc: "QTransposeProxyModel_rowCount".}
proc fcQTransposeProxyModel_columnCount(self: pointer, parent: pointer): cint {.importc: "QTransposeProxyModel_columnCount".}
proc fcQTransposeProxyModel_headerData(self: pointer, section: cint, orientation: cint, role: cint): pointer {.importc: "QTransposeProxyModel_headerData".}
proc fcQTransposeProxyModel_setHeaderData(self: pointer, section: cint, orientation: cint, value: pointer, role: cint): bool {.importc: "QTransposeProxyModel_setHeaderData".}
proc fcQTransposeProxyModel_setItemData(self: pointer, index: pointer, roles: struct_miqt_map): bool {.importc: "QTransposeProxyModel_setItemData".}
proc fcQTransposeProxyModel_span(self: pointer, index: pointer): pointer {.importc: "QTransposeProxyModel_span".}
proc fcQTransposeProxyModel_itemData(self: pointer, index: pointer): struct_miqt_map {.importc: "QTransposeProxyModel_itemData".}
proc fcQTransposeProxyModel_mapFromSource(self: pointer, sourceIndex: pointer): pointer {.importc: "QTransposeProxyModel_mapFromSource".}
proc fcQTransposeProxyModel_mapToSource(self: pointer, proxyIndex: pointer): pointer {.importc: "QTransposeProxyModel_mapToSource".}
proc fcQTransposeProxyModel_parent(self: pointer, index: pointer): pointer {.importc: "QTransposeProxyModel_parent".}
proc fcQTransposeProxyModel_index(self: pointer, row: cint, column: cint, parent: pointer): pointer {.importc: "QTransposeProxyModel_index".}
proc fcQTransposeProxyModel_insertRows(self: pointer, row: cint, count: cint, parent: pointer): bool {.importc: "QTransposeProxyModel_insertRows".}
proc fcQTransposeProxyModel_removeRows(self: pointer, row: cint, count: cint, parent: pointer): bool {.importc: "QTransposeProxyModel_removeRows".}
proc fcQTransposeProxyModel_moveRows(self: pointer, sourceParent: pointer, sourceRow: cint, count: cint, destinationParent: pointer, destinationChild: cint): bool {.importc: "QTransposeProxyModel_moveRows".}
proc fcQTransposeProxyModel_insertColumns(self: pointer, column: cint, count: cint, parent: pointer): bool {.importc: "QTransposeProxyModel_insertColumns".}
proc fcQTransposeProxyModel_removeColumns(self: pointer, column: cint, count: cint, parent: pointer): bool {.importc: "QTransposeProxyModel_removeColumns".}
proc fcQTransposeProxyModel_moveColumns(self: pointer, sourceParent: pointer, sourceColumn: cint, count: cint, destinationParent: pointer, destinationChild: cint): bool {.importc: "QTransposeProxyModel_moveColumns".}
proc fcQTransposeProxyModel_sort(self: pointer, column: cint, order: cint): void {.importc: "QTransposeProxyModel_sort".}
proc fcQTransposeProxyModel_tr2(s: cstring, c: cstring): struct_miqt_string {.importc: "QTransposeProxyModel_tr2".}
proc fcQTransposeProxyModel_tr3(s: cstring, c: cstring, n: cint): struct_miqt_string {.importc: "QTransposeProxyModel_tr3".}
proc fcQTransposeProxyModel_trUtf82(s: cstring, c: cstring): struct_miqt_string {.importc: "QTransposeProxyModel_trUtf82".}
proc fcQTransposeProxyModel_trUtf83(s: cstring, c: cstring, n: cint): struct_miqt_string {.importc: "QTransposeProxyModel_trUtf83".}
proc fcQTransposeProxyModel_vtbl(self: pointer): pointer {.importc: "QTransposeProxyModel_vtbl".}
proc fcQTransposeProxyModel_vdata(self: pointer): pointer {.importc: "QTransposeProxyModel_vdata".}
type cQTransposeProxyModelVTable {.pure.} = object
  destructor*: proc(self: pointer) {.cdecl, raises:[], gcsafe.}
  metaObject*: proc(self: pointer): pointer {.cdecl, raises: [], gcsafe.}
  metacast*: proc(self: pointer, param1: cstring): pointer {.cdecl, raises: [], gcsafe.}
  metacall*: proc(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.cdecl, raises: [], gcsafe.}
  setSourceModel*: proc(self: pointer, newSourceModel: pointer): void {.cdecl, raises: [], gcsafe.}
  rowCount*: proc(self: pointer, parent: pointer): cint {.cdecl, raises: [], gcsafe.}
  columnCount*: proc(self: pointer, parent: pointer): cint {.cdecl, raises: [], gcsafe.}
  headerData*: proc(self: pointer, section: cint, orientation: cint, role: cint): pointer {.cdecl, raises: [], gcsafe.}
  setHeaderData*: proc(self: pointer, section: cint, orientation: cint, value: pointer, role: cint): bool {.cdecl, raises: [], gcsafe.}
  setItemData*: proc(self: pointer, index: pointer, roles: struct_miqt_map): bool {.cdecl, raises: [], gcsafe.}
  span*: proc(self: pointer, index: pointer): pointer {.cdecl, raises: [], gcsafe.}
  itemData*: proc(self: pointer, index: pointer): struct_miqt_map {.cdecl, raises: [], gcsafe.}
  mapFromSource*: proc(self: pointer, sourceIndex: pointer): pointer {.cdecl, raises: [], gcsafe.}
  mapToSource*: proc(self: pointer, proxyIndex: pointer): pointer {.cdecl, raises: [], gcsafe.}
  parent*: proc(self: pointer, index: pointer): pointer {.cdecl, raises: [], gcsafe.}
  index*: proc(self: pointer, row: cint, column: cint, parent: pointer): pointer {.cdecl, raises: [], gcsafe.}
  insertRows*: proc(self: pointer, row: cint, count: cint, parent: pointer): bool {.cdecl, raises: [], gcsafe.}
  removeRows*: proc(self: pointer, row: cint, count: cint, parent: pointer): bool {.cdecl, raises: [], gcsafe.}
  moveRows*: proc(self: pointer, sourceParent: pointer, sourceRow: cint, count: cint, destinationParent: pointer, destinationChild: cint): bool {.cdecl, raises: [], gcsafe.}
  insertColumns*: proc(self: pointer, column: cint, count: cint, parent: pointer): bool {.cdecl, raises: [], gcsafe.}
  removeColumns*: proc(self: pointer, column: cint, count: cint, parent: pointer): bool {.cdecl, raises: [], gcsafe.}
  moveColumns*: proc(self: pointer, sourceParent: pointer, sourceColumn: cint, count: cint, destinationParent: pointer, destinationChild: cint): bool {.cdecl, raises: [], gcsafe.}
  sort*: proc(self: pointer, column: cint, order: cint): void {.cdecl, raises: [], gcsafe.}
  mapSelectionToSource*: proc(self: pointer, selection: pointer): pointer {.cdecl, raises: [], gcsafe.}
  mapSelectionFromSource*: proc(self: pointer, selection: pointer): pointer {.cdecl, raises: [], gcsafe.}
  submit*: proc(self: pointer): bool {.cdecl, raises: [], gcsafe.}
  revert*: proc(self: pointer): void {.cdecl, raises: [], gcsafe.}
  data*: proc(self: pointer, proxyIndex: pointer, role: cint): pointer {.cdecl, raises: [], gcsafe.}
  flags*: proc(self: pointer, index: pointer): cint {.cdecl, raises: [], gcsafe.}
  setData*: proc(self: pointer, index: pointer, value: pointer, role: cint): bool {.cdecl, raises: [], gcsafe.}
  buddy*: proc(self: pointer, index: pointer): pointer {.cdecl, raises: [], gcsafe.}
  canFetchMore*: proc(self: pointer, parent: pointer): bool {.cdecl, raises: [], gcsafe.}
  fetchMore*: proc(self: pointer, parent: pointer): void {.cdecl, raises: [], gcsafe.}
  hasChildren*: proc(self: pointer, parent: pointer): bool {.cdecl, raises: [], gcsafe.}
  sibling*: proc(self: pointer, row: cint, column: cint, idx: pointer): pointer {.cdecl, raises: [], gcsafe.}
  mimeData*: proc(self: pointer, indexes: struct_miqt_array): pointer {.cdecl, raises: [], gcsafe.}
  canDropMimeData*: proc(self: pointer, data: pointer, action: cint, row: cint, column: cint, parent: pointer): bool {.cdecl, raises: [], gcsafe.}
  dropMimeData*: proc(self: pointer, data: pointer, action: cint, row: cint, column: cint, parent: pointer): bool {.cdecl, raises: [], gcsafe.}
  mimeTypes*: proc(self: pointer): struct_miqt_array {.cdecl, raises: [], gcsafe.}
  supportedDragActions*: proc(self: pointer): cint {.cdecl, raises: [], gcsafe.}
  supportedDropActions*: proc(self: pointer): cint {.cdecl, raises: [], gcsafe.}
  match*: proc(self: pointer, start: pointer, role: cint, value: pointer, hits: cint, flags: cint): struct_miqt_array {.cdecl, raises: [], gcsafe.}
  roleNames*: proc(self: pointer): struct_miqt_map {.cdecl, raises: [], gcsafe.}
  event*: proc(self: pointer, event: pointer): bool {.cdecl, raises: [], gcsafe.}
  eventFilter*: proc(self: pointer, watched: pointer, event: pointer): bool {.cdecl, raises: [], gcsafe.}
  timerEvent*: proc(self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  childEvent*: proc(self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  customEvent*: proc(self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  connectNotify*: proc(self: pointer, signal: pointer): void {.cdecl, raises: [], gcsafe.}
  disconnectNotify*: proc(self: pointer, signal: pointer): void {.cdecl, raises: [], gcsafe.}
proc fcQTransposeProxyModel_virtualbase_metaObject(self: pointer): pointer {.importc: "QTransposeProxyModel_virtualbase_metaObject".}
proc fcQTransposeProxyModel_virtualbase_metacast(self: pointer, param1: cstring): pointer {.importc: "QTransposeProxyModel_virtualbase_metacast".}
proc fcQTransposeProxyModel_virtualbase_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.importc: "QTransposeProxyModel_virtualbase_metacall".}
proc fcQTransposeProxyModel_virtualbase_setSourceModel(self: pointer, newSourceModel: pointer): void {.importc: "QTransposeProxyModel_virtualbase_setSourceModel".}
proc fcQTransposeProxyModel_virtualbase_rowCount(self: pointer, parent: pointer): cint {.importc: "QTransposeProxyModel_virtualbase_rowCount".}
proc fcQTransposeProxyModel_virtualbase_columnCount(self: pointer, parent: pointer): cint {.importc: "QTransposeProxyModel_virtualbase_columnCount".}
proc fcQTransposeProxyModel_virtualbase_headerData(self: pointer, section: cint, orientation: cint, role: cint): pointer {.importc: "QTransposeProxyModel_virtualbase_headerData".}
proc fcQTransposeProxyModel_virtualbase_setHeaderData(self: pointer, section: cint, orientation: cint, value: pointer, role: cint): bool {.importc: "QTransposeProxyModel_virtualbase_setHeaderData".}
proc fcQTransposeProxyModel_virtualbase_setItemData(self: pointer, index: pointer, roles: struct_miqt_map): bool {.importc: "QTransposeProxyModel_virtualbase_setItemData".}
proc fcQTransposeProxyModel_virtualbase_span(self: pointer, index: pointer): pointer {.importc: "QTransposeProxyModel_virtualbase_span".}
proc fcQTransposeProxyModel_virtualbase_itemData(self: pointer, index: pointer): struct_miqt_map {.importc: "QTransposeProxyModel_virtualbase_itemData".}
proc fcQTransposeProxyModel_virtualbase_mapFromSource(self: pointer, sourceIndex: pointer): pointer {.importc: "QTransposeProxyModel_virtualbase_mapFromSource".}
proc fcQTransposeProxyModel_virtualbase_mapToSource(self: pointer, proxyIndex: pointer): pointer {.importc: "QTransposeProxyModel_virtualbase_mapToSource".}
proc fcQTransposeProxyModel_virtualbase_parent(self: pointer, index: pointer): pointer {.importc: "QTransposeProxyModel_virtualbase_parent".}
proc fcQTransposeProxyModel_virtualbase_index(self: pointer, row: cint, column: cint, parent: pointer): pointer {.importc: "QTransposeProxyModel_virtualbase_index".}
proc fcQTransposeProxyModel_virtualbase_insertRows(self: pointer, row: cint, count: cint, parent: pointer): bool {.importc: "QTransposeProxyModel_virtualbase_insertRows".}
proc fcQTransposeProxyModel_virtualbase_removeRows(self: pointer, row: cint, count: cint, parent: pointer): bool {.importc: "QTransposeProxyModel_virtualbase_removeRows".}
proc fcQTransposeProxyModel_virtualbase_moveRows(self: pointer, sourceParent: pointer, sourceRow: cint, count: cint, destinationParent: pointer, destinationChild: cint): bool {.importc: "QTransposeProxyModel_virtualbase_moveRows".}
proc fcQTransposeProxyModel_virtualbase_insertColumns(self: pointer, column: cint, count: cint, parent: pointer): bool {.importc: "QTransposeProxyModel_virtualbase_insertColumns".}
proc fcQTransposeProxyModel_virtualbase_removeColumns(self: pointer, column: cint, count: cint, parent: pointer): bool {.importc: "QTransposeProxyModel_virtualbase_removeColumns".}
proc fcQTransposeProxyModel_virtualbase_moveColumns(self: pointer, sourceParent: pointer, sourceColumn: cint, count: cint, destinationParent: pointer, destinationChild: cint): bool {.importc: "QTransposeProxyModel_virtualbase_moveColumns".}
proc fcQTransposeProxyModel_virtualbase_sort(self: pointer, column: cint, order: cint): void {.importc: "QTransposeProxyModel_virtualbase_sort".}
proc fcQTransposeProxyModel_virtualbase_mapSelectionToSource(self: pointer, selection: pointer): pointer {.importc: "QTransposeProxyModel_virtualbase_mapSelectionToSource".}
proc fcQTransposeProxyModel_virtualbase_mapSelectionFromSource(self: pointer, selection: pointer): pointer {.importc: "QTransposeProxyModel_virtualbase_mapSelectionFromSource".}
proc fcQTransposeProxyModel_virtualbase_submit(self: pointer): bool {.importc: "QTransposeProxyModel_virtualbase_submit".}
proc fcQTransposeProxyModel_virtualbase_revert(self: pointer): void {.importc: "QTransposeProxyModel_virtualbase_revert".}
proc fcQTransposeProxyModel_virtualbase_data(self: pointer, proxyIndex: pointer, role: cint): pointer {.importc: "QTransposeProxyModel_virtualbase_data".}
proc fcQTransposeProxyModel_virtualbase_flags(self: pointer, index: pointer): cint {.importc: "QTransposeProxyModel_virtualbase_flags".}
proc fcQTransposeProxyModel_virtualbase_setData(self: pointer, index: pointer, value: pointer, role: cint): bool {.importc: "QTransposeProxyModel_virtualbase_setData".}
proc fcQTransposeProxyModel_virtualbase_buddy(self: pointer, index: pointer): pointer {.importc: "QTransposeProxyModel_virtualbase_buddy".}
proc fcQTransposeProxyModel_virtualbase_canFetchMore(self: pointer, parent: pointer): bool {.importc: "QTransposeProxyModel_virtualbase_canFetchMore".}
proc fcQTransposeProxyModel_virtualbase_fetchMore(self: pointer, parent: pointer): void {.importc: "QTransposeProxyModel_virtualbase_fetchMore".}
proc fcQTransposeProxyModel_virtualbase_hasChildren(self: pointer, parent: pointer): bool {.importc: "QTransposeProxyModel_virtualbase_hasChildren".}
proc fcQTransposeProxyModel_virtualbase_sibling(self: pointer, row: cint, column: cint, idx: pointer): pointer {.importc: "QTransposeProxyModel_virtualbase_sibling".}
proc fcQTransposeProxyModel_virtualbase_mimeData(self: pointer, indexes: struct_miqt_array): pointer {.importc: "QTransposeProxyModel_virtualbase_mimeData".}
proc fcQTransposeProxyModel_virtualbase_canDropMimeData(self: pointer, data: pointer, action: cint, row: cint, column: cint, parent: pointer): bool {.importc: "QTransposeProxyModel_virtualbase_canDropMimeData".}
proc fcQTransposeProxyModel_virtualbase_dropMimeData(self: pointer, data: pointer, action: cint, row: cint, column: cint, parent: pointer): bool {.importc: "QTransposeProxyModel_virtualbase_dropMimeData".}
proc fcQTransposeProxyModel_virtualbase_mimeTypes(self: pointer): struct_miqt_array {.importc: "QTransposeProxyModel_virtualbase_mimeTypes".}
proc fcQTransposeProxyModel_virtualbase_supportedDragActions(self: pointer): cint {.importc: "QTransposeProxyModel_virtualbase_supportedDragActions".}
proc fcQTransposeProxyModel_virtualbase_supportedDropActions(self: pointer): cint {.importc: "QTransposeProxyModel_virtualbase_supportedDropActions".}
proc fcQTransposeProxyModel_virtualbase_match(self: pointer, start: pointer, role: cint, value: pointer, hits: cint, flags: cint): struct_miqt_array {.importc: "QTransposeProxyModel_virtualbase_match".}
proc fcQTransposeProxyModel_virtualbase_roleNames(self: pointer): struct_miqt_map {.importc: "QTransposeProxyModel_virtualbase_roleNames".}
proc fcQTransposeProxyModel_virtualbase_event(self: pointer, event: pointer): bool {.importc: "QTransposeProxyModel_virtualbase_event".}
proc fcQTransposeProxyModel_virtualbase_eventFilter(self: pointer, watched: pointer, event: pointer): bool {.importc: "QTransposeProxyModel_virtualbase_eventFilter".}
proc fcQTransposeProxyModel_virtualbase_timerEvent(self: pointer, event: pointer): void {.importc: "QTransposeProxyModel_virtualbase_timerEvent".}
proc fcQTransposeProxyModel_virtualbase_childEvent(self: pointer, event: pointer): void {.importc: "QTransposeProxyModel_virtualbase_childEvent".}
proc fcQTransposeProxyModel_virtualbase_customEvent(self: pointer, event: pointer): void {.importc: "QTransposeProxyModel_virtualbase_customEvent".}
proc fcQTransposeProxyModel_virtualbase_connectNotify(self: pointer, signal: pointer): void {.importc: "QTransposeProxyModel_virtualbase_connectNotify".}
proc fcQTransposeProxyModel_virtualbase_disconnectNotify(self: pointer, signal: pointer): void {.importc: "QTransposeProxyModel_virtualbase_disconnectNotify".}
proc fcQTransposeProxyModel_protectedbase_resetInternalData(self: pointer): void {.importc: "QTransposeProxyModel_protectedbase_resetInternalData".}
proc fcQTransposeProxyModel_protectedbase_createIndex(self: pointer, row: cint, column: cint): pointer {.importc: "QTransposeProxyModel_protectedbase_createIndex".}
proc fcQTransposeProxyModel_protectedbase_encodeData(self: pointer, indexes: struct_miqt_array, stream: pointer): void {.importc: "QTransposeProxyModel_protectedbase_encodeData".}
proc fcQTransposeProxyModel_protectedbase_decodeData(self: pointer, row: cint, column: cint, parent: pointer, stream: pointer): bool {.importc: "QTransposeProxyModel_protectedbase_decodeData".}
proc fcQTransposeProxyModel_protectedbase_beginInsertRows(self: pointer, parent: pointer, first: cint, last: cint): void {.importc: "QTransposeProxyModel_protectedbase_beginInsertRows".}
proc fcQTransposeProxyModel_protectedbase_endInsertRows(self: pointer): void {.importc: "QTransposeProxyModel_protectedbase_endInsertRows".}
proc fcQTransposeProxyModel_protectedbase_beginRemoveRows(self: pointer, parent: pointer, first: cint, last: cint): void {.importc: "QTransposeProxyModel_protectedbase_beginRemoveRows".}
proc fcQTransposeProxyModel_protectedbase_endRemoveRows(self: pointer): void {.importc: "QTransposeProxyModel_protectedbase_endRemoveRows".}
proc fcQTransposeProxyModel_protectedbase_beginMoveRows(self: pointer, sourceParent: pointer, sourceFirst: cint, sourceLast: cint, destinationParent: pointer, destinationRow: cint): bool {.importc: "QTransposeProxyModel_protectedbase_beginMoveRows".}
proc fcQTransposeProxyModel_protectedbase_endMoveRows(self: pointer): void {.importc: "QTransposeProxyModel_protectedbase_endMoveRows".}
proc fcQTransposeProxyModel_protectedbase_beginInsertColumns(self: pointer, parent: pointer, first: cint, last: cint): void {.importc: "QTransposeProxyModel_protectedbase_beginInsertColumns".}
proc fcQTransposeProxyModel_protectedbase_endInsertColumns(self: pointer): void {.importc: "QTransposeProxyModel_protectedbase_endInsertColumns".}
proc fcQTransposeProxyModel_protectedbase_beginRemoveColumns(self: pointer, parent: pointer, first: cint, last: cint): void {.importc: "QTransposeProxyModel_protectedbase_beginRemoveColumns".}
proc fcQTransposeProxyModel_protectedbase_endRemoveColumns(self: pointer): void {.importc: "QTransposeProxyModel_protectedbase_endRemoveColumns".}
proc fcQTransposeProxyModel_protectedbase_beginMoveColumns(self: pointer, sourceParent: pointer, sourceFirst: cint, sourceLast: cint, destinationParent: pointer, destinationColumn: cint): bool {.importc: "QTransposeProxyModel_protectedbase_beginMoveColumns".}
proc fcQTransposeProxyModel_protectedbase_endMoveColumns(self: pointer): void {.importc: "QTransposeProxyModel_protectedbase_endMoveColumns".}
proc fcQTransposeProxyModel_protectedbase_beginResetModel(self: pointer): void {.importc: "QTransposeProxyModel_protectedbase_beginResetModel".}
proc fcQTransposeProxyModel_protectedbase_endResetModel(self: pointer): void {.importc: "QTransposeProxyModel_protectedbase_endResetModel".}
proc fcQTransposeProxyModel_protectedbase_changePersistentIndex(self: pointer, fromVal: pointer, to: pointer): void {.importc: "QTransposeProxyModel_protectedbase_changePersistentIndex".}
proc fcQTransposeProxyModel_protectedbase_changePersistentIndexList(self: pointer, fromVal: struct_miqt_array, to: struct_miqt_array): void {.importc: "QTransposeProxyModel_protectedbase_changePersistentIndexList".}
proc fcQTransposeProxyModel_protectedbase_persistentIndexList(self: pointer): struct_miqt_array {.importc: "QTransposeProxyModel_protectedbase_persistentIndexList".}
proc fcQTransposeProxyModel_protectedbase_sender(self: pointer): pointer {.importc: "QTransposeProxyModel_protectedbase_sender".}
proc fcQTransposeProxyModel_protectedbase_senderSignalIndex(self: pointer): cint {.importc: "QTransposeProxyModel_protectedbase_senderSignalIndex".}
proc fcQTransposeProxyModel_protectedbase_receivers(self: pointer, signal: cstring): cint {.importc: "QTransposeProxyModel_protectedbase_receivers".}
proc fcQTransposeProxyModel_protectedbase_isSignalConnected(self: pointer, signal: pointer): bool {.importc: "QTransposeProxyModel_protectedbase_isSignalConnected".}
proc fcQTransposeProxyModel_new(vtbl, vdata: pointer): ptr cQTransposeProxyModel {.importc: "QTransposeProxyModel_new".}
proc fcQTransposeProxyModel_new2(vtbl, vdata: pointer, parent: pointer): ptr cQTransposeProxyModel {.importc: "QTransposeProxyModel_new2".}
proc fcQTransposeProxyModel_staticMetaObject(): pointer {.importc: "QTransposeProxyModel_staticMetaObject".}

proc metaObject*(self: gen_qtransposeproxymodel_types.QTransposeProxyModel): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQTransposeProxyModel_metaObject(self.h), owned: false)

proc metacast*(self: gen_qtransposeproxymodel_types.QTransposeProxyModel, param1: cstring): pointer =
  fcQTransposeProxyModel_metacast(self.h, param1)

proc metacall*(self: gen_qtransposeproxymodel_types.QTransposeProxyModel, param1: cint, param2: cint, param3: pointer): cint =
  fcQTransposeProxyModel_metacall(self.h, cint(param1), param2, param3)

proc tr*(_: type gen_qtransposeproxymodel_types.QTransposeProxyModel, s: cstring): string =
  let v_ms = fcQTransposeProxyModel_tr(s)
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

proc trUtf8*(_: type gen_qtransposeproxymodel_types.QTransposeProxyModel, s: cstring): string =
  let v_ms = fcQTransposeProxyModel_trUtf8(s)
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

proc setSourceModel*(self: gen_qtransposeproxymodel_types.QTransposeProxyModel, newSourceModel: gen_qabstractitemmodel_types.QAbstractItemModel): void =
  fcQTransposeProxyModel_setSourceModel(self.h, newSourceModel.h)

proc rowCount*(self: gen_qtransposeproxymodel_types.QTransposeProxyModel, parent: gen_qabstractitemmodel_types.QModelIndex): cint =
  fcQTransposeProxyModel_rowCount(self.h, parent.h)

proc columnCount*(self: gen_qtransposeproxymodel_types.QTransposeProxyModel, parent: gen_qabstractitemmodel_types.QModelIndex): cint =
  fcQTransposeProxyModel_columnCount(self.h, parent.h)

proc headerData*(self: gen_qtransposeproxymodel_types.QTransposeProxyModel, section: cint, orientation: cint, role: cint): gen_qvariant_types.QVariant =
  gen_qvariant_types.QVariant(h: fcQTransposeProxyModel_headerData(self.h, section, cint(orientation), role), owned: true)

proc setHeaderData*(self: gen_qtransposeproxymodel_types.QTransposeProxyModel, section: cint, orientation: cint, value: gen_qvariant_types.QVariant, role: cint): bool =
  fcQTransposeProxyModel_setHeaderData(self.h, section, cint(orientation), value.h, role)

proc setItemData*(self: gen_qtransposeproxymodel_types.QTransposeProxyModel, index: gen_qabstractitemmodel_types.QModelIndex, roles: Table[cint,gen_qvariant_types.QVariant]): bool =
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

  fcQTransposeProxyModel_setItemData(self.h, index.h, struct_miqt_map(len: csize_t(len(roles)),keys: if len(roles) == 0: nil else: addr(roles_Keys_CArray[0]), values: if len(roles) == 0: nil else: addr(roles_Values_CArray[0]),))

proc span*(self: gen_qtransposeproxymodel_types.QTransposeProxyModel, index: gen_qabstractitemmodel_types.QModelIndex): gen_qsize_types.QSize =
  gen_qsize_types.QSize(h: fcQTransposeProxyModel_span(self.h, index.h), owned: true)

proc itemData*(self: gen_qtransposeproxymodel_types.QTransposeProxyModel, index: gen_qabstractitemmodel_types.QModelIndex): Table[cint,gen_qvariant_types.QVariant] =
  var v_mm = fcQTransposeProxyModel_itemData(self.h, index.h)
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

proc mapFromSource*(self: gen_qtransposeproxymodel_types.QTransposeProxyModel, sourceIndex: gen_qabstractitemmodel_types.QModelIndex): gen_qabstractitemmodel_types.QModelIndex =
  gen_qabstractitemmodel_types.QModelIndex(h: fcQTransposeProxyModel_mapFromSource(self.h, sourceIndex.h), owned: true)

proc mapToSource*(self: gen_qtransposeproxymodel_types.QTransposeProxyModel, proxyIndex: gen_qabstractitemmodel_types.QModelIndex): gen_qabstractitemmodel_types.QModelIndex =
  gen_qabstractitemmodel_types.QModelIndex(h: fcQTransposeProxyModel_mapToSource(self.h, proxyIndex.h), owned: true)

proc parent*(self: gen_qtransposeproxymodel_types.QTransposeProxyModel, index: gen_qabstractitemmodel_types.QModelIndex): gen_qabstractitemmodel_types.QModelIndex =
  gen_qabstractitemmodel_types.QModelIndex(h: fcQTransposeProxyModel_parent(self.h, index.h), owned: true)

proc index*(self: gen_qtransposeproxymodel_types.QTransposeProxyModel, row: cint, column: cint, parent: gen_qabstractitemmodel_types.QModelIndex): gen_qabstractitemmodel_types.QModelIndex =
  gen_qabstractitemmodel_types.QModelIndex(h: fcQTransposeProxyModel_index(self.h, row, column, parent.h), owned: true)

proc insertRows*(self: gen_qtransposeproxymodel_types.QTransposeProxyModel, row: cint, count: cint, parent: gen_qabstractitemmodel_types.QModelIndex): bool =
  fcQTransposeProxyModel_insertRows(self.h, row, count, parent.h)

proc removeRows*(self: gen_qtransposeproxymodel_types.QTransposeProxyModel, row: cint, count: cint, parent: gen_qabstractitemmodel_types.QModelIndex): bool =
  fcQTransposeProxyModel_removeRows(self.h, row, count, parent.h)

proc moveRows*(self: gen_qtransposeproxymodel_types.QTransposeProxyModel, sourceParent: gen_qabstractitemmodel_types.QModelIndex, sourceRow: cint, count: cint, destinationParent: gen_qabstractitemmodel_types.QModelIndex, destinationChild: cint): bool =
  fcQTransposeProxyModel_moveRows(self.h, sourceParent.h, sourceRow, count, destinationParent.h, destinationChild)

proc insertColumns*(self: gen_qtransposeproxymodel_types.QTransposeProxyModel, column: cint, count: cint, parent: gen_qabstractitemmodel_types.QModelIndex): bool =
  fcQTransposeProxyModel_insertColumns(self.h, column, count, parent.h)

proc removeColumns*(self: gen_qtransposeproxymodel_types.QTransposeProxyModel, column: cint, count: cint, parent: gen_qabstractitemmodel_types.QModelIndex): bool =
  fcQTransposeProxyModel_removeColumns(self.h, column, count, parent.h)

proc moveColumns*(self: gen_qtransposeproxymodel_types.QTransposeProxyModel, sourceParent: gen_qabstractitemmodel_types.QModelIndex, sourceColumn: cint, count: cint, destinationParent: gen_qabstractitemmodel_types.QModelIndex, destinationChild: cint): bool =
  fcQTransposeProxyModel_moveColumns(self.h, sourceParent.h, sourceColumn, count, destinationParent.h, destinationChild)

proc sort*(self: gen_qtransposeproxymodel_types.QTransposeProxyModel, column: cint, order: cint): void =
  fcQTransposeProxyModel_sort(self.h, column, cint(order))

proc tr*(_: type gen_qtransposeproxymodel_types.QTransposeProxyModel, s: cstring, c: cstring): string =
  let v_ms = fcQTransposeProxyModel_tr2(s, c)
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

proc tr*(_: type gen_qtransposeproxymodel_types.QTransposeProxyModel, s: cstring, c: cstring, n: cint): string =
  let v_ms = fcQTransposeProxyModel_tr3(s, c, n)
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

proc trUtf8*(_: type gen_qtransposeproxymodel_types.QTransposeProxyModel, s: cstring, c: cstring): string =
  let v_ms = fcQTransposeProxyModel_trUtf82(s, c)
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

proc trUtf8*(_: type gen_qtransposeproxymodel_types.QTransposeProxyModel, s: cstring, c: cstring, n: cint): string =
  let v_ms = fcQTransposeProxyModel_trUtf83(s, c, n)
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

type QTransposeProxyModelmetaObjectProc* = proc(self: QTransposeProxyModel): gen_qobjectdefs_types.QMetaObject {.raises: [], gcsafe.}
type QTransposeProxyModelmetacastProc* = proc(self: QTransposeProxyModel, param1: cstring): pointer {.raises: [], gcsafe.}
type QTransposeProxyModelmetacallProc* = proc(self: QTransposeProxyModel, param1: cint, param2: cint, param3: pointer): cint {.raises: [], gcsafe.}
type QTransposeProxyModelsetSourceModelProc* = proc(self: QTransposeProxyModel, newSourceModel: gen_qabstractitemmodel_types.QAbstractItemModel): void {.raises: [], gcsafe.}
type QTransposeProxyModelrowCountProc* = proc(self: QTransposeProxyModel, parent: gen_qabstractitemmodel_types.QModelIndex): cint {.raises: [], gcsafe.}
type QTransposeProxyModelcolumnCountProc* = proc(self: QTransposeProxyModel, parent: gen_qabstractitemmodel_types.QModelIndex): cint {.raises: [], gcsafe.}
type QTransposeProxyModelheaderDataProc* = proc(self: QTransposeProxyModel, section: cint, orientation: cint, role: cint): gen_qvariant_types.QVariant {.raises: [], gcsafe.}
type QTransposeProxyModelsetHeaderDataProc* = proc(self: QTransposeProxyModel, section: cint, orientation: cint, value: gen_qvariant_types.QVariant, role: cint): bool {.raises: [], gcsafe.}
type QTransposeProxyModelsetItemDataProc* = proc(self: QTransposeProxyModel, index: gen_qabstractitemmodel_types.QModelIndex, roles: Table[cint,gen_qvariant_types.QVariant]): bool {.raises: [], gcsafe.}
type QTransposeProxyModelspanProc* = proc(self: QTransposeProxyModel, index: gen_qabstractitemmodel_types.QModelIndex): gen_qsize_types.QSize {.raises: [], gcsafe.}
type QTransposeProxyModelitemDataProc* = proc(self: QTransposeProxyModel, index: gen_qabstractitemmodel_types.QModelIndex): Table[cint,gen_qvariant_types.QVariant] {.raises: [], gcsafe.}
type QTransposeProxyModelmapFromSourceProc* = proc(self: QTransposeProxyModel, sourceIndex: gen_qabstractitemmodel_types.QModelIndex): gen_qabstractitemmodel_types.QModelIndex {.raises: [], gcsafe.}
type QTransposeProxyModelmapToSourceProc* = proc(self: QTransposeProxyModel, proxyIndex: gen_qabstractitemmodel_types.QModelIndex): gen_qabstractitemmodel_types.QModelIndex {.raises: [], gcsafe.}
type QTransposeProxyModelparentProc* = proc(self: QTransposeProxyModel, index: gen_qabstractitemmodel_types.QModelIndex): gen_qabstractitemmodel_types.QModelIndex {.raises: [], gcsafe.}
type QTransposeProxyModelindexProc* = proc(self: QTransposeProxyModel, row: cint, column: cint, parent: gen_qabstractitemmodel_types.QModelIndex): gen_qabstractitemmodel_types.QModelIndex {.raises: [], gcsafe.}
type QTransposeProxyModelinsertRowsProc* = proc(self: QTransposeProxyModel, row: cint, count: cint, parent: gen_qabstractitemmodel_types.QModelIndex): bool {.raises: [], gcsafe.}
type QTransposeProxyModelremoveRowsProc* = proc(self: QTransposeProxyModel, row: cint, count: cint, parent: gen_qabstractitemmodel_types.QModelIndex): bool {.raises: [], gcsafe.}
type QTransposeProxyModelmoveRowsProc* = proc(self: QTransposeProxyModel, sourceParent: gen_qabstractitemmodel_types.QModelIndex, sourceRow: cint, count: cint, destinationParent: gen_qabstractitemmodel_types.QModelIndex, destinationChild: cint): bool {.raises: [], gcsafe.}
type QTransposeProxyModelinsertColumnsProc* = proc(self: QTransposeProxyModel, column: cint, count: cint, parent: gen_qabstractitemmodel_types.QModelIndex): bool {.raises: [], gcsafe.}
type QTransposeProxyModelremoveColumnsProc* = proc(self: QTransposeProxyModel, column: cint, count: cint, parent: gen_qabstractitemmodel_types.QModelIndex): bool {.raises: [], gcsafe.}
type QTransposeProxyModelmoveColumnsProc* = proc(self: QTransposeProxyModel, sourceParent: gen_qabstractitemmodel_types.QModelIndex, sourceColumn: cint, count: cint, destinationParent: gen_qabstractitemmodel_types.QModelIndex, destinationChild: cint): bool {.raises: [], gcsafe.}
type QTransposeProxyModelsortProc* = proc(self: QTransposeProxyModel, column: cint, order: cint): void {.raises: [], gcsafe.}
type QTransposeProxyModelmapSelectionToSourceProc* = proc(self: QTransposeProxyModel, selection: gen_qitemselectionmodel_types.QItemSelection): gen_qitemselectionmodel_types.QItemSelection {.raises: [], gcsafe.}
type QTransposeProxyModelmapSelectionFromSourceProc* = proc(self: QTransposeProxyModel, selection: gen_qitemselectionmodel_types.QItemSelection): gen_qitemselectionmodel_types.QItemSelection {.raises: [], gcsafe.}
type QTransposeProxyModelsubmitProc* = proc(self: QTransposeProxyModel): bool {.raises: [], gcsafe.}
type QTransposeProxyModelrevertProc* = proc(self: QTransposeProxyModel): void {.raises: [], gcsafe.}
type QTransposeProxyModeldataProc* = proc(self: QTransposeProxyModel, proxyIndex: gen_qabstractitemmodel_types.QModelIndex, role: cint): gen_qvariant_types.QVariant {.raises: [], gcsafe.}
type QTransposeProxyModelflagsProc* = proc(self: QTransposeProxyModel, index: gen_qabstractitemmodel_types.QModelIndex): cint {.raises: [], gcsafe.}
type QTransposeProxyModelsetDataProc* = proc(self: QTransposeProxyModel, index: gen_qabstractitemmodel_types.QModelIndex, value: gen_qvariant_types.QVariant, role: cint): bool {.raises: [], gcsafe.}
type QTransposeProxyModelbuddyProc* = proc(self: QTransposeProxyModel, index: gen_qabstractitemmodel_types.QModelIndex): gen_qabstractitemmodel_types.QModelIndex {.raises: [], gcsafe.}
type QTransposeProxyModelcanFetchMoreProc* = proc(self: QTransposeProxyModel, parent: gen_qabstractitemmodel_types.QModelIndex): bool {.raises: [], gcsafe.}
type QTransposeProxyModelfetchMoreProc* = proc(self: QTransposeProxyModel, parent: gen_qabstractitemmodel_types.QModelIndex): void {.raises: [], gcsafe.}
type QTransposeProxyModelhasChildrenProc* = proc(self: QTransposeProxyModel, parent: gen_qabstractitemmodel_types.QModelIndex): bool {.raises: [], gcsafe.}
type QTransposeProxyModelsiblingProc* = proc(self: QTransposeProxyModel, row: cint, column: cint, idx: gen_qabstractitemmodel_types.QModelIndex): gen_qabstractitemmodel_types.QModelIndex {.raises: [], gcsafe.}
type QTransposeProxyModelmimeDataProc* = proc(self: QTransposeProxyModel, indexes: openArray[gen_qabstractitemmodel_types.QModelIndex]): gen_qmimedata_types.QMimeData {.raises: [], gcsafe.}
type QTransposeProxyModelcanDropMimeDataProc* = proc(self: QTransposeProxyModel, data: gen_qmimedata_types.QMimeData, action: cint, row: cint, column: cint, parent: gen_qabstractitemmodel_types.QModelIndex): bool {.raises: [], gcsafe.}
type QTransposeProxyModeldropMimeDataProc* = proc(self: QTransposeProxyModel, data: gen_qmimedata_types.QMimeData, action: cint, row: cint, column: cint, parent: gen_qabstractitemmodel_types.QModelIndex): bool {.raises: [], gcsafe.}
type QTransposeProxyModelmimeTypesProc* = proc(self: QTransposeProxyModel): seq[string] {.raises: [], gcsafe.}
type QTransposeProxyModelsupportedDragActionsProc* = proc(self: QTransposeProxyModel): cint {.raises: [], gcsafe.}
type QTransposeProxyModelsupportedDropActionsProc* = proc(self: QTransposeProxyModel): cint {.raises: [], gcsafe.}
type QTransposeProxyModelmatchProc* = proc(self: QTransposeProxyModel, start: gen_qabstractitemmodel_types.QModelIndex, role: cint, value: gen_qvariant_types.QVariant, hits: cint, flags: cint): seq[gen_qabstractitemmodel_types.QModelIndex] {.raises: [], gcsafe.}
type QTransposeProxyModelroleNamesProc* = proc(self: QTransposeProxyModel): Table[cint,seq[byte]] {.raises: [], gcsafe.}
type QTransposeProxyModeleventProc* = proc(self: QTransposeProxyModel, event: gen_qcoreevent_types.QEvent): bool {.raises: [], gcsafe.}
type QTransposeProxyModeleventFilterProc* = proc(self: QTransposeProxyModel, watched: gen_qobject_types.QObject, event: gen_qcoreevent_types.QEvent): bool {.raises: [], gcsafe.}
type QTransposeProxyModeltimerEventProc* = proc(self: QTransposeProxyModel, event: gen_qcoreevent_types.QTimerEvent): void {.raises: [], gcsafe.}
type QTransposeProxyModelchildEventProc* = proc(self: QTransposeProxyModel, event: gen_qcoreevent_types.QChildEvent): void {.raises: [], gcsafe.}
type QTransposeProxyModelcustomEventProc* = proc(self: QTransposeProxyModel, event: gen_qcoreevent_types.QEvent): void {.raises: [], gcsafe.}
type QTransposeProxyModelconnectNotifyProc* = proc(self: QTransposeProxyModel, signal: gen_qmetaobject_types.QMetaMethod): void {.raises: [], gcsafe.}
type QTransposeProxyModeldisconnectNotifyProc* = proc(self: QTransposeProxyModel, signal: gen_qmetaobject_types.QMetaMethod): void {.raises: [], gcsafe.}
type QTransposeProxyModelVTable* {.inheritable, pure.} = object
  vtbl: cQTransposeProxyModelVTable
  metaObject*: QTransposeProxyModelmetaObjectProc
  metacast*: QTransposeProxyModelmetacastProc
  metacall*: QTransposeProxyModelmetacallProc
  setSourceModel*: QTransposeProxyModelsetSourceModelProc
  rowCount*: QTransposeProxyModelrowCountProc
  columnCount*: QTransposeProxyModelcolumnCountProc
  headerData*: QTransposeProxyModelheaderDataProc
  setHeaderData*: QTransposeProxyModelsetHeaderDataProc
  setItemData*: QTransposeProxyModelsetItemDataProc
  span*: QTransposeProxyModelspanProc
  itemData*: QTransposeProxyModelitemDataProc
  mapFromSource*: QTransposeProxyModelmapFromSourceProc
  mapToSource*: QTransposeProxyModelmapToSourceProc
  parent*: QTransposeProxyModelparentProc
  index*: QTransposeProxyModelindexProc
  insertRows*: QTransposeProxyModelinsertRowsProc
  removeRows*: QTransposeProxyModelremoveRowsProc
  moveRows*: QTransposeProxyModelmoveRowsProc
  insertColumns*: QTransposeProxyModelinsertColumnsProc
  removeColumns*: QTransposeProxyModelremoveColumnsProc
  moveColumns*: QTransposeProxyModelmoveColumnsProc
  sort*: QTransposeProxyModelsortProc
  mapSelectionToSource*: QTransposeProxyModelmapSelectionToSourceProc
  mapSelectionFromSource*: QTransposeProxyModelmapSelectionFromSourceProc
  submit*: QTransposeProxyModelsubmitProc
  revert*: QTransposeProxyModelrevertProc
  data*: QTransposeProxyModeldataProc
  flags*: QTransposeProxyModelflagsProc
  setData*: QTransposeProxyModelsetDataProc
  buddy*: QTransposeProxyModelbuddyProc
  canFetchMore*: QTransposeProxyModelcanFetchMoreProc
  fetchMore*: QTransposeProxyModelfetchMoreProc
  hasChildren*: QTransposeProxyModelhasChildrenProc
  sibling*: QTransposeProxyModelsiblingProc
  mimeData*: QTransposeProxyModelmimeDataProc
  canDropMimeData*: QTransposeProxyModelcanDropMimeDataProc
  dropMimeData*: QTransposeProxyModeldropMimeDataProc
  mimeTypes*: QTransposeProxyModelmimeTypesProc
  supportedDragActions*: QTransposeProxyModelsupportedDragActionsProc
  supportedDropActions*: QTransposeProxyModelsupportedDropActionsProc
  match*: QTransposeProxyModelmatchProc
  roleNames*: QTransposeProxyModelroleNamesProc
  event*: QTransposeProxyModeleventProc
  eventFilter*: QTransposeProxyModeleventFilterProc
  timerEvent*: QTransposeProxyModeltimerEventProc
  childEvent*: QTransposeProxyModelchildEventProc
  customEvent*: QTransposeProxyModelcustomEventProc
  connectNotify*: QTransposeProxyModelconnectNotifyProc
  disconnectNotify*: QTransposeProxyModeldisconnectNotifyProc
proc QTransposeProxyModelmetaObject*(self: gen_qtransposeproxymodel_types.QTransposeProxyModel): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQTransposeProxyModel_virtualbase_metaObject(self.h), owned: false)

proc cQTransposeProxyModel_vtable_callback_metaObject(self: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QTransposeProxyModelVTable](fcQTransposeProxyModel_vdata(self))
  let self = QTransposeProxyModel(h: self)
  var virtualReturn = vtbl[].metaObject(self)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc QTransposeProxyModelmetacast*(self: gen_qtransposeproxymodel_types.QTransposeProxyModel, param1: cstring): pointer =
  fcQTransposeProxyModel_virtualbase_metacast(self.h, param1)

proc cQTransposeProxyModel_vtable_callback_metacast(self: pointer, param1: cstring): pointer {.cdecl.} =
  let vtbl = cast[ptr QTransposeProxyModelVTable](fcQTransposeProxyModel_vdata(self))
  let self = QTransposeProxyModel(h: self)
  let slotval1 = (param1)
  var virtualReturn = vtbl[].metacast(self, slotval1)
  virtualReturn

proc QTransposeProxyModelmetacall*(self: gen_qtransposeproxymodel_types.QTransposeProxyModel, param1: cint, param2: cint, param3: pointer): cint =
  fcQTransposeProxyModel_virtualbase_metacall(self.h, cint(param1), param2, param3)

proc cQTransposeProxyModel_vtable_callback_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.cdecl.} =
  let vtbl = cast[ptr QTransposeProxyModelVTable](fcQTransposeProxyModel_vdata(self))
  let self = QTransposeProxyModel(h: self)
  let slotval1 = cint(param1)
  let slotval2 = param2
  let slotval3 = param3
  var virtualReturn = vtbl[].metacall(self, slotval1, slotval2, slotval3)
  virtualReturn

proc QTransposeProxyModelsetSourceModel*(self: gen_qtransposeproxymodel_types.QTransposeProxyModel, newSourceModel: gen_qabstractitemmodel_types.QAbstractItemModel): void =
  fcQTransposeProxyModel_virtualbase_setSourceModel(self.h, newSourceModel.h)

proc cQTransposeProxyModel_vtable_callback_setSourceModel(self: pointer, newSourceModel: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QTransposeProxyModelVTable](fcQTransposeProxyModel_vdata(self))
  let self = QTransposeProxyModel(h: self)
  let slotval1 = gen_qabstractitemmodel_types.QAbstractItemModel(h: newSourceModel, owned: false)
  vtbl[].setSourceModel(self, slotval1)

proc QTransposeProxyModelrowCount*(self: gen_qtransposeproxymodel_types.QTransposeProxyModel, parent: gen_qabstractitemmodel_types.QModelIndex): cint =
  fcQTransposeProxyModel_virtualbase_rowCount(self.h, parent.h)

proc cQTransposeProxyModel_vtable_callback_rowCount(self: pointer, parent: pointer): cint {.cdecl.} =
  let vtbl = cast[ptr QTransposeProxyModelVTable](fcQTransposeProxyModel_vdata(self))
  let self = QTransposeProxyModel(h: self)
  let slotval1 = gen_qabstractitemmodel_types.QModelIndex(h: parent, owned: false)
  var virtualReturn = vtbl[].rowCount(self, slotval1)
  virtualReturn

proc QTransposeProxyModelcolumnCount*(self: gen_qtransposeproxymodel_types.QTransposeProxyModel, parent: gen_qabstractitemmodel_types.QModelIndex): cint =
  fcQTransposeProxyModel_virtualbase_columnCount(self.h, parent.h)

proc cQTransposeProxyModel_vtable_callback_columnCount(self: pointer, parent: pointer): cint {.cdecl.} =
  let vtbl = cast[ptr QTransposeProxyModelVTable](fcQTransposeProxyModel_vdata(self))
  let self = QTransposeProxyModel(h: self)
  let slotval1 = gen_qabstractitemmodel_types.QModelIndex(h: parent, owned: false)
  var virtualReturn = vtbl[].columnCount(self, slotval1)
  virtualReturn

proc QTransposeProxyModelheaderData*(self: gen_qtransposeproxymodel_types.QTransposeProxyModel, section: cint, orientation: cint, role: cint): gen_qvariant_types.QVariant =
  gen_qvariant_types.QVariant(h: fcQTransposeProxyModel_virtualbase_headerData(self.h, section, cint(orientation), role), owned: true)

proc cQTransposeProxyModel_vtable_callback_headerData(self: pointer, section: cint, orientation: cint, role: cint): pointer {.cdecl.} =
  let vtbl = cast[ptr QTransposeProxyModelVTable](fcQTransposeProxyModel_vdata(self))
  let self = QTransposeProxyModel(h: self)
  let slotval1 = section
  let slotval2 = cint(orientation)
  let slotval3 = role
  var virtualReturn = vtbl[].headerData(self, slotval1, slotval2, slotval3)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc QTransposeProxyModelsetHeaderData*(self: gen_qtransposeproxymodel_types.QTransposeProxyModel, section: cint, orientation: cint, value: gen_qvariant_types.QVariant, role: cint): bool =
  fcQTransposeProxyModel_virtualbase_setHeaderData(self.h, section, cint(orientation), value.h, role)

proc cQTransposeProxyModel_vtable_callback_setHeaderData(self: pointer, section: cint, orientation: cint, value: pointer, role: cint): bool {.cdecl.} =
  let vtbl = cast[ptr QTransposeProxyModelVTable](fcQTransposeProxyModel_vdata(self))
  let self = QTransposeProxyModel(h: self)
  let slotval1 = section
  let slotval2 = cint(orientation)
  let slotval3 = gen_qvariant_types.QVariant(h: value, owned: false)
  let slotval4 = role
  var virtualReturn = vtbl[].setHeaderData(self, slotval1, slotval2, slotval3, slotval4)
  virtualReturn

proc QTransposeProxyModelsetItemData*(self: gen_qtransposeproxymodel_types.QTransposeProxyModel, index: gen_qabstractitemmodel_types.QModelIndex, roles: Table[cint,gen_qvariant_types.QVariant]): bool =
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

  fcQTransposeProxyModel_virtualbase_setItemData(self.h, index.h, struct_miqt_map(len: csize_t(len(roles)),keys: if len(roles) == 0: nil else: addr(roles_Keys_CArray[0]), values: if len(roles) == 0: nil else: addr(roles_Values_CArray[0]),))

proc cQTransposeProxyModel_vtable_callback_setItemData(self: pointer, index: pointer, roles: struct_miqt_map): bool {.cdecl.} =
  let vtbl = cast[ptr QTransposeProxyModelVTable](fcQTransposeProxyModel_vdata(self))
  let self = QTransposeProxyModel(h: self)
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

proc QTransposeProxyModelspan*(self: gen_qtransposeproxymodel_types.QTransposeProxyModel, index: gen_qabstractitemmodel_types.QModelIndex): gen_qsize_types.QSize =
  gen_qsize_types.QSize(h: fcQTransposeProxyModel_virtualbase_span(self.h, index.h), owned: true)

proc cQTransposeProxyModel_vtable_callback_span(self: pointer, index: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QTransposeProxyModelVTable](fcQTransposeProxyModel_vdata(self))
  let self = QTransposeProxyModel(h: self)
  let slotval1 = gen_qabstractitemmodel_types.QModelIndex(h: index, owned: false)
  var virtualReturn = vtbl[].span(self, slotval1)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc QTransposeProxyModelitemData*(self: gen_qtransposeproxymodel_types.QTransposeProxyModel, index: gen_qabstractitemmodel_types.QModelIndex): Table[cint,gen_qvariant_types.QVariant] =
  var v_mm = fcQTransposeProxyModel_virtualbase_itemData(self.h, index.h)
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

proc cQTransposeProxyModel_vtable_callback_itemData(self: pointer, index: pointer): struct_miqt_map {.cdecl.} =
  let vtbl = cast[ptr QTransposeProxyModelVTable](fcQTransposeProxyModel_vdata(self))
  let self = QTransposeProxyModel(h: self)
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

proc QTransposeProxyModelmapFromSource*(self: gen_qtransposeproxymodel_types.QTransposeProxyModel, sourceIndex: gen_qabstractitemmodel_types.QModelIndex): gen_qabstractitemmodel_types.QModelIndex =
  gen_qabstractitemmodel_types.QModelIndex(h: fcQTransposeProxyModel_virtualbase_mapFromSource(self.h, sourceIndex.h), owned: true)

proc cQTransposeProxyModel_vtable_callback_mapFromSource(self: pointer, sourceIndex: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QTransposeProxyModelVTable](fcQTransposeProxyModel_vdata(self))
  let self = QTransposeProxyModel(h: self)
  let slotval1 = gen_qabstractitemmodel_types.QModelIndex(h: sourceIndex, owned: false)
  var virtualReturn = vtbl[].mapFromSource(self, slotval1)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc QTransposeProxyModelmapToSource*(self: gen_qtransposeproxymodel_types.QTransposeProxyModel, proxyIndex: gen_qabstractitemmodel_types.QModelIndex): gen_qabstractitemmodel_types.QModelIndex =
  gen_qabstractitemmodel_types.QModelIndex(h: fcQTransposeProxyModel_virtualbase_mapToSource(self.h, proxyIndex.h), owned: true)

proc cQTransposeProxyModel_vtable_callback_mapToSource(self: pointer, proxyIndex: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QTransposeProxyModelVTable](fcQTransposeProxyModel_vdata(self))
  let self = QTransposeProxyModel(h: self)
  let slotval1 = gen_qabstractitemmodel_types.QModelIndex(h: proxyIndex, owned: false)
  var virtualReturn = vtbl[].mapToSource(self, slotval1)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc QTransposeProxyModelparent*(self: gen_qtransposeproxymodel_types.QTransposeProxyModel, index: gen_qabstractitemmodel_types.QModelIndex): gen_qabstractitemmodel_types.QModelIndex =
  gen_qabstractitemmodel_types.QModelIndex(h: fcQTransposeProxyModel_virtualbase_parent(self.h, index.h), owned: true)

proc cQTransposeProxyModel_vtable_callback_parent(self: pointer, index: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QTransposeProxyModelVTable](fcQTransposeProxyModel_vdata(self))
  let self = QTransposeProxyModel(h: self)
  let slotval1 = gen_qabstractitemmodel_types.QModelIndex(h: index, owned: false)
  var virtualReturn = vtbl[].parent(self, slotval1)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc QTransposeProxyModelindex*(self: gen_qtransposeproxymodel_types.QTransposeProxyModel, row: cint, column: cint, parent: gen_qabstractitemmodel_types.QModelIndex): gen_qabstractitemmodel_types.QModelIndex =
  gen_qabstractitemmodel_types.QModelIndex(h: fcQTransposeProxyModel_virtualbase_index(self.h, row, column, parent.h), owned: true)

proc cQTransposeProxyModel_vtable_callback_index(self: pointer, row: cint, column: cint, parent: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QTransposeProxyModelVTable](fcQTransposeProxyModel_vdata(self))
  let self = QTransposeProxyModel(h: self)
  let slotval1 = row
  let slotval2 = column
  let slotval3 = gen_qabstractitemmodel_types.QModelIndex(h: parent, owned: false)
  var virtualReturn = vtbl[].index(self, slotval1, slotval2, slotval3)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc QTransposeProxyModelinsertRows*(self: gen_qtransposeproxymodel_types.QTransposeProxyModel, row: cint, count: cint, parent: gen_qabstractitemmodel_types.QModelIndex): bool =
  fcQTransposeProxyModel_virtualbase_insertRows(self.h, row, count, parent.h)

proc cQTransposeProxyModel_vtable_callback_insertRows(self: pointer, row: cint, count: cint, parent: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QTransposeProxyModelVTable](fcQTransposeProxyModel_vdata(self))
  let self = QTransposeProxyModel(h: self)
  let slotval1 = row
  let slotval2 = count
  let slotval3 = gen_qabstractitemmodel_types.QModelIndex(h: parent, owned: false)
  var virtualReturn = vtbl[].insertRows(self, slotval1, slotval2, slotval3)
  virtualReturn

proc QTransposeProxyModelremoveRows*(self: gen_qtransposeproxymodel_types.QTransposeProxyModel, row: cint, count: cint, parent: gen_qabstractitemmodel_types.QModelIndex): bool =
  fcQTransposeProxyModel_virtualbase_removeRows(self.h, row, count, parent.h)

proc cQTransposeProxyModel_vtable_callback_removeRows(self: pointer, row: cint, count: cint, parent: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QTransposeProxyModelVTable](fcQTransposeProxyModel_vdata(self))
  let self = QTransposeProxyModel(h: self)
  let slotval1 = row
  let slotval2 = count
  let slotval3 = gen_qabstractitemmodel_types.QModelIndex(h: parent, owned: false)
  var virtualReturn = vtbl[].removeRows(self, slotval1, slotval2, slotval3)
  virtualReturn

proc QTransposeProxyModelmoveRows*(self: gen_qtransposeproxymodel_types.QTransposeProxyModel, sourceParent: gen_qabstractitemmodel_types.QModelIndex, sourceRow: cint, count: cint, destinationParent: gen_qabstractitemmodel_types.QModelIndex, destinationChild: cint): bool =
  fcQTransposeProxyModel_virtualbase_moveRows(self.h, sourceParent.h, sourceRow, count, destinationParent.h, destinationChild)

proc cQTransposeProxyModel_vtable_callback_moveRows(self: pointer, sourceParent: pointer, sourceRow: cint, count: cint, destinationParent: pointer, destinationChild: cint): bool {.cdecl.} =
  let vtbl = cast[ptr QTransposeProxyModelVTable](fcQTransposeProxyModel_vdata(self))
  let self = QTransposeProxyModel(h: self)
  let slotval1 = gen_qabstractitemmodel_types.QModelIndex(h: sourceParent, owned: false)
  let slotval2 = sourceRow
  let slotval3 = count
  let slotval4 = gen_qabstractitemmodel_types.QModelIndex(h: destinationParent, owned: false)
  let slotval5 = destinationChild
  var virtualReturn = vtbl[].moveRows(self, slotval1, slotval2, slotval3, slotval4, slotval5)
  virtualReturn

proc QTransposeProxyModelinsertColumns*(self: gen_qtransposeproxymodel_types.QTransposeProxyModel, column: cint, count: cint, parent: gen_qabstractitemmodel_types.QModelIndex): bool =
  fcQTransposeProxyModel_virtualbase_insertColumns(self.h, column, count, parent.h)

proc cQTransposeProxyModel_vtable_callback_insertColumns(self: pointer, column: cint, count: cint, parent: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QTransposeProxyModelVTable](fcQTransposeProxyModel_vdata(self))
  let self = QTransposeProxyModel(h: self)
  let slotval1 = column
  let slotval2 = count
  let slotval3 = gen_qabstractitemmodel_types.QModelIndex(h: parent, owned: false)
  var virtualReturn = vtbl[].insertColumns(self, slotval1, slotval2, slotval3)
  virtualReturn

proc QTransposeProxyModelremoveColumns*(self: gen_qtransposeproxymodel_types.QTransposeProxyModel, column: cint, count: cint, parent: gen_qabstractitemmodel_types.QModelIndex): bool =
  fcQTransposeProxyModel_virtualbase_removeColumns(self.h, column, count, parent.h)

proc cQTransposeProxyModel_vtable_callback_removeColumns(self: pointer, column: cint, count: cint, parent: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QTransposeProxyModelVTable](fcQTransposeProxyModel_vdata(self))
  let self = QTransposeProxyModel(h: self)
  let slotval1 = column
  let slotval2 = count
  let slotval3 = gen_qabstractitemmodel_types.QModelIndex(h: parent, owned: false)
  var virtualReturn = vtbl[].removeColumns(self, slotval1, slotval2, slotval3)
  virtualReturn

proc QTransposeProxyModelmoveColumns*(self: gen_qtransposeproxymodel_types.QTransposeProxyModel, sourceParent: gen_qabstractitemmodel_types.QModelIndex, sourceColumn: cint, count: cint, destinationParent: gen_qabstractitemmodel_types.QModelIndex, destinationChild: cint): bool =
  fcQTransposeProxyModel_virtualbase_moveColumns(self.h, sourceParent.h, sourceColumn, count, destinationParent.h, destinationChild)

proc cQTransposeProxyModel_vtable_callback_moveColumns(self: pointer, sourceParent: pointer, sourceColumn: cint, count: cint, destinationParent: pointer, destinationChild: cint): bool {.cdecl.} =
  let vtbl = cast[ptr QTransposeProxyModelVTable](fcQTransposeProxyModel_vdata(self))
  let self = QTransposeProxyModel(h: self)
  let slotval1 = gen_qabstractitemmodel_types.QModelIndex(h: sourceParent, owned: false)
  let slotval2 = sourceColumn
  let slotval3 = count
  let slotval4 = gen_qabstractitemmodel_types.QModelIndex(h: destinationParent, owned: false)
  let slotval5 = destinationChild
  var virtualReturn = vtbl[].moveColumns(self, slotval1, slotval2, slotval3, slotval4, slotval5)
  virtualReturn

proc QTransposeProxyModelsort*(self: gen_qtransposeproxymodel_types.QTransposeProxyModel, column: cint, order: cint): void =
  fcQTransposeProxyModel_virtualbase_sort(self.h, column, cint(order))

proc cQTransposeProxyModel_vtable_callback_sort(self: pointer, column: cint, order: cint): void {.cdecl.} =
  let vtbl = cast[ptr QTransposeProxyModelVTable](fcQTransposeProxyModel_vdata(self))
  let self = QTransposeProxyModel(h: self)
  let slotval1 = column
  let slotval2 = cint(order)
  vtbl[].sort(self, slotval1, slotval2)

proc QTransposeProxyModelmapSelectionToSource*(self: gen_qtransposeproxymodel_types.QTransposeProxyModel, selection: gen_qitemselectionmodel_types.QItemSelection): gen_qitemselectionmodel_types.QItemSelection =
  gen_qitemselectionmodel_types.QItemSelection(h: fcQTransposeProxyModel_virtualbase_mapSelectionToSource(self.h, selection.h), owned: true)

proc cQTransposeProxyModel_vtable_callback_mapSelectionToSource(self: pointer, selection: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QTransposeProxyModelVTable](fcQTransposeProxyModel_vdata(self))
  let self = QTransposeProxyModel(h: self)
  let slotval1 = gen_qitemselectionmodel_types.QItemSelection(h: selection, owned: false)
  var virtualReturn = vtbl[].mapSelectionToSource(self, slotval1)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc QTransposeProxyModelmapSelectionFromSource*(self: gen_qtransposeproxymodel_types.QTransposeProxyModel, selection: gen_qitemselectionmodel_types.QItemSelection): gen_qitemselectionmodel_types.QItemSelection =
  gen_qitemselectionmodel_types.QItemSelection(h: fcQTransposeProxyModel_virtualbase_mapSelectionFromSource(self.h, selection.h), owned: true)

proc cQTransposeProxyModel_vtable_callback_mapSelectionFromSource(self: pointer, selection: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QTransposeProxyModelVTable](fcQTransposeProxyModel_vdata(self))
  let self = QTransposeProxyModel(h: self)
  let slotval1 = gen_qitemselectionmodel_types.QItemSelection(h: selection, owned: false)
  var virtualReturn = vtbl[].mapSelectionFromSource(self, slotval1)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc QTransposeProxyModelsubmit*(self: gen_qtransposeproxymodel_types.QTransposeProxyModel): bool =
  fcQTransposeProxyModel_virtualbase_submit(self.h)

proc cQTransposeProxyModel_vtable_callback_submit(self: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QTransposeProxyModelVTable](fcQTransposeProxyModel_vdata(self))
  let self = QTransposeProxyModel(h: self)
  var virtualReturn = vtbl[].submit(self)
  virtualReturn

proc QTransposeProxyModelrevert*(self: gen_qtransposeproxymodel_types.QTransposeProxyModel): void =
  fcQTransposeProxyModel_virtualbase_revert(self.h)

proc cQTransposeProxyModel_vtable_callback_revert(self: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QTransposeProxyModelVTable](fcQTransposeProxyModel_vdata(self))
  let self = QTransposeProxyModel(h: self)
  vtbl[].revert(self)

proc QTransposeProxyModeldata*(self: gen_qtransposeproxymodel_types.QTransposeProxyModel, proxyIndex: gen_qabstractitemmodel_types.QModelIndex, role: cint): gen_qvariant_types.QVariant =
  gen_qvariant_types.QVariant(h: fcQTransposeProxyModel_virtualbase_data(self.h, proxyIndex.h, role), owned: true)

proc cQTransposeProxyModel_vtable_callback_data(self: pointer, proxyIndex: pointer, role: cint): pointer {.cdecl.} =
  let vtbl = cast[ptr QTransposeProxyModelVTable](fcQTransposeProxyModel_vdata(self))
  let self = QTransposeProxyModel(h: self)
  let slotval1 = gen_qabstractitemmodel_types.QModelIndex(h: proxyIndex, owned: false)
  let slotval2 = role
  var virtualReturn = vtbl[].data(self, slotval1, slotval2)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc QTransposeProxyModelflags*(self: gen_qtransposeproxymodel_types.QTransposeProxyModel, index: gen_qabstractitemmodel_types.QModelIndex): cint =
  cint(fcQTransposeProxyModel_virtualbase_flags(self.h, index.h))

proc cQTransposeProxyModel_vtable_callback_flags(self: pointer, index: pointer): cint {.cdecl.} =
  let vtbl = cast[ptr QTransposeProxyModelVTable](fcQTransposeProxyModel_vdata(self))
  let self = QTransposeProxyModel(h: self)
  let slotval1 = gen_qabstractitemmodel_types.QModelIndex(h: index, owned: false)
  var virtualReturn = vtbl[].flags(self, slotval1)
  cint(virtualReturn)

proc QTransposeProxyModelsetData*(self: gen_qtransposeproxymodel_types.QTransposeProxyModel, index: gen_qabstractitemmodel_types.QModelIndex, value: gen_qvariant_types.QVariant, role: cint): bool =
  fcQTransposeProxyModel_virtualbase_setData(self.h, index.h, value.h, role)

proc cQTransposeProxyModel_vtable_callback_setData(self: pointer, index: pointer, value: pointer, role: cint): bool {.cdecl.} =
  let vtbl = cast[ptr QTransposeProxyModelVTable](fcQTransposeProxyModel_vdata(self))
  let self = QTransposeProxyModel(h: self)
  let slotval1 = gen_qabstractitemmodel_types.QModelIndex(h: index, owned: false)
  let slotval2 = gen_qvariant_types.QVariant(h: value, owned: false)
  let slotval3 = role
  var virtualReturn = vtbl[].setData(self, slotval1, slotval2, slotval3)
  virtualReturn

proc QTransposeProxyModelbuddy*(self: gen_qtransposeproxymodel_types.QTransposeProxyModel, index: gen_qabstractitemmodel_types.QModelIndex): gen_qabstractitemmodel_types.QModelIndex =
  gen_qabstractitemmodel_types.QModelIndex(h: fcQTransposeProxyModel_virtualbase_buddy(self.h, index.h), owned: true)

proc cQTransposeProxyModel_vtable_callback_buddy(self: pointer, index: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QTransposeProxyModelVTable](fcQTransposeProxyModel_vdata(self))
  let self = QTransposeProxyModel(h: self)
  let slotval1 = gen_qabstractitemmodel_types.QModelIndex(h: index, owned: false)
  var virtualReturn = vtbl[].buddy(self, slotval1)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc QTransposeProxyModelcanFetchMore*(self: gen_qtransposeproxymodel_types.QTransposeProxyModel, parent: gen_qabstractitemmodel_types.QModelIndex): bool =
  fcQTransposeProxyModel_virtualbase_canFetchMore(self.h, parent.h)

proc cQTransposeProxyModel_vtable_callback_canFetchMore(self: pointer, parent: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QTransposeProxyModelVTable](fcQTransposeProxyModel_vdata(self))
  let self = QTransposeProxyModel(h: self)
  let slotval1 = gen_qabstractitemmodel_types.QModelIndex(h: parent, owned: false)
  var virtualReturn = vtbl[].canFetchMore(self, slotval1)
  virtualReturn

proc QTransposeProxyModelfetchMore*(self: gen_qtransposeproxymodel_types.QTransposeProxyModel, parent: gen_qabstractitemmodel_types.QModelIndex): void =
  fcQTransposeProxyModel_virtualbase_fetchMore(self.h, parent.h)

proc cQTransposeProxyModel_vtable_callback_fetchMore(self: pointer, parent: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QTransposeProxyModelVTable](fcQTransposeProxyModel_vdata(self))
  let self = QTransposeProxyModel(h: self)
  let slotval1 = gen_qabstractitemmodel_types.QModelIndex(h: parent, owned: false)
  vtbl[].fetchMore(self, slotval1)

proc QTransposeProxyModelhasChildren*(self: gen_qtransposeproxymodel_types.QTransposeProxyModel, parent: gen_qabstractitemmodel_types.QModelIndex): bool =
  fcQTransposeProxyModel_virtualbase_hasChildren(self.h, parent.h)

proc cQTransposeProxyModel_vtable_callback_hasChildren(self: pointer, parent: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QTransposeProxyModelVTable](fcQTransposeProxyModel_vdata(self))
  let self = QTransposeProxyModel(h: self)
  let slotval1 = gen_qabstractitemmodel_types.QModelIndex(h: parent, owned: false)
  var virtualReturn = vtbl[].hasChildren(self, slotval1)
  virtualReturn

proc QTransposeProxyModelsibling*(self: gen_qtransposeproxymodel_types.QTransposeProxyModel, row: cint, column: cint, idx: gen_qabstractitemmodel_types.QModelIndex): gen_qabstractitemmodel_types.QModelIndex =
  gen_qabstractitemmodel_types.QModelIndex(h: fcQTransposeProxyModel_virtualbase_sibling(self.h, row, column, idx.h), owned: true)

proc cQTransposeProxyModel_vtable_callback_sibling(self: pointer, row: cint, column: cint, idx: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QTransposeProxyModelVTable](fcQTransposeProxyModel_vdata(self))
  let self = QTransposeProxyModel(h: self)
  let slotval1 = row
  let slotval2 = column
  let slotval3 = gen_qabstractitemmodel_types.QModelIndex(h: idx, owned: false)
  var virtualReturn = vtbl[].sibling(self, slotval1, slotval2, slotval3)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc QTransposeProxyModelmimeData*(self: gen_qtransposeproxymodel_types.QTransposeProxyModel, indexes: openArray[gen_qabstractitemmodel_types.QModelIndex]): gen_qmimedata_types.QMimeData =
  var indexes_CArray = newSeq[pointer](len(indexes))
  for i in 0..<len(indexes):
    indexes_CArray[i] = indexes[i].h

  gen_qmimedata_types.QMimeData(h: fcQTransposeProxyModel_virtualbase_mimeData(self.h, struct_miqt_array(len: csize_t(len(indexes)), data: if len(indexes) == 0: nil else: addr(indexes_CArray[0]))), owned: false)

proc cQTransposeProxyModel_vtable_callback_mimeData(self: pointer, indexes: struct_miqt_array): pointer {.cdecl.} =
  let vtbl = cast[ptr QTransposeProxyModelVTable](fcQTransposeProxyModel_vdata(self))
  let self = QTransposeProxyModel(h: self)
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

proc QTransposeProxyModelcanDropMimeData*(self: gen_qtransposeproxymodel_types.QTransposeProxyModel, data: gen_qmimedata_types.QMimeData, action: cint, row: cint, column: cint, parent: gen_qabstractitemmodel_types.QModelIndex): bool =
  fcQTransposeProxyModel_virtualbase_canDropMimeData(self.h, data.h, cint(action), row, column, parent.h)

proc cQTransposeProxyModel_vtable_callback_canDropMimeData(self: pointer, data: pointer, action: cint, row: cint, column: cint, parent: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QTransposeProxyModelVTable](fcQTransposeProxyModel_vdata(self))
  let self = QTransposeProxyModel(h: self)
  let slotval1 = gen_qmimedata_types.QMimeData(h: data, owned: false)
  let slotval2 = cint(action)
  let slotval3 = row
  let slotval4 = column
  let slotval5 = gen_qabstractitemmodel_types.QModelIndex(h: parent, owned: false)
  var virtualReturn = vtbl[].canDropMimeData(self, slotval1, slotval2, slotval3, slotval4, slotval5)
  virtualReturn

proc QTransposeProxyModeldropMimeData*(self: gen_qtransposeproxymodel_types.QTransposeProxyModel, data: gen_qmimedata_types.QMimeData, action: cint, row: cint, column: cint, parent: gen_qabstractitemmodel_types.QModelIndex): bool =
  fcQTransposeProxyModel_virtualbase_dropMimeData(self.h, data.h, cint(action), row, column, parent.h)

proc cQTransposeProxyModel_vtable_callback_dropMimeData(self: pointer, data: pointer, action: cint, row: cint, column: cint, parent: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QTransposeProxyModelVTable](fcQTransposeProxyModel_vdata(self))
  let self = QTransposeProxyModel(h: self)
  let slotval1 = gen_qmimedata_types.QMimeData(h: data, owned: false)
  let slotval2 = cint(action)
  let slotval3 = row
  let slotval4 = column
  let slotval5 = gen_qabstractitemmodel_types.QModelIndex(h: parent, owned: false)
  var virtualReturn = vtbl[].dropMimeData(self, slotval1, slotval2, slotval3, slotval4, slotval5)
  virtualReturn

proc QTransposeProxyModelmimeTypes*(self: gen_qtransposeproxymodel_types.QTransposeProxyModel): seq[string] =
  var v_ma = fcQTransposeProxyModel_virtualbase_mimeTypes(self.h)
  var vx_ret = newSeq[string](int(v_ma.len))
  let v_outCast = cast[ptr UncheckedArray[struct_miqt_string]](v_ma.data)
  for i in 0 ..< v_ma.len:
    let vx_lv_ms = v_outCast[i]
    let vx_lvx_ret = string.fromBytes(vx_lv_ms)
    c_free(vx_lv_ms.data)
    vx_ret[i] = vx_lvx_ret
  c_free(v_ma.data)
  vx_ret

proc cQTransposeProxyModel_vtable_callback_mimeTypes(self: pointer): struct_miqt_array {.cdecl.} =
  let vtbl = cast[ptr QTransposeProxyModelVTable](fcQTransposeProxyModel_vdata(self))
  let self = QTransposeProxyModel(h: self)
  var virtualReturn = vtbl[].mimeTypes(self)
  var virtualReturn_CArray = cast[ptr UncheckedArray[struct_miqt_string]](if len(virtualReturn) > 0: c_malloc(c_sizet(sizeof(struct_miqt_string) * len(virtualReturn))) else: nil)
  for i in 0..<len(virtualReturn):
    var virtualReturn_i_copy = cast[cstring](if len(virtualReturn[i]) > 0: c_malloc(csize_t(len(virtualReturn[i]))) else: nil)
    if len(virtualReturn[i]) > 0: copyMem(cast[pointer](virtualReturn_i_copy), addr virtualReturn[i][0], csize_t(len(virtualReturn[i])))
    virtualReturn_CArray[i] = struct_miqt_string(data: virtualReturn_i_copy, len: csize_t(len(virtualReturn[i])))

  struct_miqt_array(len: csize_t(len(virtualReturn)), data: if len(virtualReturn) == 0: nil else: addr(virtualReturn_CArray[0]))

proc QTransposeProxyModelsupportedDragActions*(self: gen_qtransposeproxymodel_types.QTransposeProxyModel): cint =
  cint(fcQTransposeProxyModel_virtualbase_supportedDragActions(self.h))

proc cQTransposeProxyModel_vtable_callback_supportedDragActions(self: pointer): cint {.cdecl.} =
  let vtbl = cast[ptr QTransposeProxyModelVTable](fcQTransposeProxyModel_vdata(self))
  let self = QTransposeProxyModel(h: self)
  var virtualReturn = vtbl[].supportedDragActions(self)
  cint(virtualReturn)

proc QTransposeProxyModelsupportedDropActions*(self: gen_qtransposeproxymodel_types.QTransposeProxyModel): cint =
  cint(fcQTransposeProxyModel_virtualbase_supportedDropActions(self.h))

proc cQTransposeProxyModel_vtable_callback_supportedDropActions(self: pointer): cint {.cdecl.} =
  let vtbl = cast[ptr QTransposeProxyModelVTable](fcQTransposeProxyModel_vdata(self))
  let self = QTransposeProxyModel(h: self)
  var virtualReturn = vtbl[].supportedDropActions(self)
  cint(virtualReturn)

proc QTransposeProxyModelmatch*(self: gen_qtransposeproxymodel_types.QTransposeProxyModel, start: gen_qabstractitemmodel_types.QModelIndex, role: cint, value: gen_qvariant_types.QVariant, hits: cint, flags: cint): seq[gen_qabstractitemmodel_types.QModelIndex] =
  var v_ma = fcQTransposeProxyModel_virtualbase_match(self.h, start.h, role, value.h, hits, cint(flags))
  var vx_ret = newSeq[gen_qabstractitemmodel_types.QModelIndex](int(v_ma.len))
  let v_outCast = cast[ptr UncheckedArray[pointer]](v_ma.data)
  for i in 0 ..< v_ma.len:
    vx_ret[i] = gen_qabstractitemmodel_types.QModelIndex(h: v_outCast[i], owned: true)
  c_free(v_ma.data)
  vx_ret

proc cQTransposeProxyModel_vtable_callback_match(self: pointer, start: pointer, role: cint, value: pointer, hits: cint, flags: cint): struct_miqt_array {.cdecl.} =
  let vtbl = cast[ptr QTransposeProxyModelVTable](fcQTransposeProxyModel_vdata(self))
  let self = QTransposeProxyModel(h: self)
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

proc QTransposeProxyModelroleNames*(self: gen_qtransposeproxymodel_types.QTransposeProxyModel): Table[cint,seq[byte]] =
  var v_mm = fcQTransposeProxyModel_virtualbase_roleNames(self.h)
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

proc cQTransposeProxyModel_vtable_callback_roleNames(self: pointer): struct_miqt_map {.cdecl.} =
  let vtbl = cast[ptr QTransposeProxyModelVTable](fcQTransposeProxyModel_vdata(self))
  let self = QTransposeProxyModel(h: self)
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

proc QTransposeProxyModelevent*(self: gen_qtransposeproxymodel_types.QTransposeProxyModel, event: gen_qcoreevent_types.QEvent): bool =
  fcQTransposeProxyModel_virtualbase_event(self.h, event.h)

proc cQTransposeProxyModel_vtable_callback_event(self: pointer, event: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QTransposeProxyModelVTable](fcQTransposeProxyModel_vdata(self))
  let self = QTransposeProxyModel(h: self)
  let slotval1 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  var virtualReturn = vtbl[].event(self, slotval1)
  virtualReturn

proc QTransposeProxyModeleventFilter*(self: gen_qtransposeproxymodel_types.QTransposeProxyModel, watched: gen_qobject_types.QObject, event: gen_qcoreevent_types.QEvent): bool =
  fcQTransposeProxyModel_virtualbase_eventFilter(self.h, watched.h, event.h)

proc cQTransposeProxyModel_vtable_callback_eventFilter(self: pointer, watched: pointer, event: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QTransposeProxyModelVTable](fcQTransposeProxyModel_vdata(self))
  let self = QTransposeProxyModel(h: self)
  let slotval1 = gen_qobject_types.QObject(h: watched, owned: false)
  let slotval2 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  var virtualReturn = vtbl[].eventFilter(self, slotval1, slotval2)
  virtualReturn

proc QTransposeProxyModeltimerEvent*(self: gen_qtransposeproxymodel_types.QTransposeProxyModel, event: gen_qcoreevent_types.QTimerEvent): void =
  fcQTransposeProxyModel_virtualbase_timerEvent(self.h, event.h)

proc cQTransposeProxyModel_vtable_callback_timerEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QTransposeProxyModelVTable](fcQTransposeProxyModel_vdata(self))
  let self = QTransposeProxyModel(h: self)
  let slotval1 = gen_qcoreevent_types.QTimerEvent(h: event, owned: false)
  vtbl[].timerEvent(self, slotval1)

proc QTransposeProxyModelchildEvent*(self: gen_qtransposeproxymodel_types.QTransposeProxyModel, event: gen_qcoreevent_types.QChildEvent): void =
  fcQTransposeProxyModel_virtualbase_childEvent(self.h, event.h)

proc cQTransposeProxyModel_vtable_callback_childEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QTransposeProxyModelVTable](fcQTransposeProxyModel_vdata(self))
  let self = QTransposeProxyModel(h: self)
  let slotval1 = gen_qcoreevent_types.QChildEvent(h: event, owned: false)
  vtbl[].childEvent(self, slotval1)

proc QTransposeProxyModelcustomEvent*(self: gen_qtransposeproxymodel_types.QTransposeProxyModel, event: gen_qcoreevent_types.QEvent): void =
  fcQTransposeProxyModel_virtualbase_customEvent(self.h, event.h)

proc cQTransposeProxyModel_vtable_callback_customEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QTransposeProxyModelVTable](fcQTransposeProxyModel_vdata(self))
  let self = QTransposeProxyModel(h: self)
  let slotval1 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  vtbl[].customEvent(self, slotval1)

proc QTransposeProxyModelconnectNotify*(self: gen_qtransposeproxymodel_types.QTransposeProxyModel, signal: gen_qmetaobject_types.QMetaMethod): void =
  fcQTransposeProxyModel_virtualbase_connectNotify(self.h, signal.h)

proc cQTransposeProxyModel_vtable_callback_connectNotify(self: pointer, signal: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QTransposeProxyModelVTable](fcQTransposeProxyModel_vdata(self))
  let self = QTransposeProxyModel(h: self)
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal, owned: false)
  vtbl[].connectNotify(self, slotval1)

proc QTransposeProxyModeldisconnectNotify*(self: gen_qtransposeproxymodel_types.QTransposeProxyModel, signal: gen_qmetaobject_types.QMetaMethod): void =
  fcQTransposeProxyModel_virtualbase_disconnectNotify(self.h, signal.h)

proc cQTransposeProxyModel_vtable_callback_disconnectNotify(self: pointer, signal: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QTransposeProxyModelVTable](fcQTransposeProxyModel_vdata(self))
  let self = QTransposeProxyModel(h: self)
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal, owned: false)
  vtbl[].disconnectNotify(self, slotval1)

type VirtualQTransposeProxyModel* {.inheritable.} = ref object of QTransposeProxyModel
  vtbl*: cQTransposeProxyModelVTable
method metaObject*(self: VirtualQTransposeProxyModel): gen_qobjectdefs_types.QMetaObject {.base.} =
  QTransposeProxyModelmetaObject(self[])
proc cQTransposeProxyModel_method_callback_metaObject(self: pointer): pointer {.cdecl.} =
  let inst = cast[VirtualQTransposeProxyModel](fcQTransposeProxyModel_vdata(self))
  var virtualReturn = inst.metaObject()
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

method metacast*(self: VirtualQTransposeProxyModel, param1: cstring): pointer {.base.} =
  QTransposeProxyModelmetacast(self[], param1)
proc cQTransposeProxyModel_method_callback_metacast(self: pointer, param1: cstring): pointer {.cdecl.} =
  let inst = cast[VirtualQTransposeProxyModel](fcQTransposeProxyModel_vdata(self))
  let slotval1 = (param1)
  var virtualReturn = inst.metacast(slotval1)
  virtualReturn

method metacall*(self: VirtualQTransposeProxyModel, param1: cint, param2: cint, param3: pointer): cint {.base.} =
  QTransposeProxyModelmetacall(self[], param1, param2, param3)
proc cQTransposeProxyModel_method_callback_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.cdecl.} =
  let inst = cast[VirtualQTransposeProxyModel](fcQTransposeProxyModel_vdata(self))
  let slotval1 = cint(param1)
  let slotval2 = param2
  let slotval3 = param3
  var virtualReturn = inst.metacall(slotval1, slotval2, slotval3)
  virtualReturn

method setSourceModel*(self: VirtualQTransposeProxyModel, newSourceModel: gen_qabstractitemmodel_types.QAbstractItemModel): void {.base.} =
  QTransposeProxyModelsetSourceModel(self[], newSourceModel)
proc cQTransposeProxyModel_method_callback_setSourceModel(self: pointer, newSourceModel: pointer): void {.cdecl.} =
  let inst = cast[VirtualQTransposeProxyModel](fcQTransposeProxyModel_vdata(self))
  let slotval1 = gen_qabstractitemmodel_types.QAbstractItemModel(h: newSourceModel, owned: false)
  inst.setSourceModel(slotval1)

method rowCount*(self: VirtualQTransposeProxyModel, parent: gen_qabstractitemmodel_types.QModelIndex): cint {.base.} =
  QTransposeProxyModelrowCount(self[], parent)
proc cQTransposeProxyModel_method_callback_rowCount(self: pointer, parent: pointer): cint {.cdecl.} =
  let inst = cast[VirtualQTransposeProxyModel](fcQTransposeProxyModel_vdata(self))
  let slotval1 = gen_qabstractitemmodel_types.QModelIndex(h: parent, owned: false)
  var virtualReturn = inst.rowCount(slotval1)
  virtualReturn

method columnCount*(self: VirtualQTransposeProxyModel, parent: gen_qabstractitemmodel_types.QModelIndex): cint {.base.} =
  QTransposeProxyModelcolumnCount(self[], parent)
proc cQTransposeProxyModel_method_callback_columnCount(self: pointer, parent: pointer): cint {.cdecl.} =
  let inst = cast[VirtualQTransposeProxyModel](fcQTransposeProxyModel_vdata(self))
  let slotval1 = gen_qabstractitemmodel_types.QModelIndex(h: parent, owned: false)
  var virtualReturn = inst.columnCount(slotval1)
  virtualReturn

method headerData*(self: VirtualQTransposeProxyModel, section: cint, orientation: cint, role: cint): gen_qvariant_types.QVariant {.base.} =
  QTransposeProxyModelheaderData(self[], section, orientation, role)
proc cQTransposeProxyModel_method_callback_headerData(self: pointer, section: cint, orientation: cint, role: cint): pointer {.cdecl.} =
  let inst = cast[VirtualQTransposeProxyModel](fcQTransposeProxyModel_vdata(self))
  let slotval1 = section
  let slotval2 = cint(orientation)
  let slotval3 = role
  var virtualReturn = inst.headerData(slotval1, slotval2, slotval3)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

method setHeaderData*(self: VirtualQTransposeProxyModel, section: cint, orientation: cint, value: gen_qvariant_types.QVariant, role: cint): bool {.base.} =
  QTransposeProxyModelsetHeaderData(self[], section, orientation, value, role)
proc cQTransposeProxyModel_method_callback_setHeaderData(self: pointer, section: cint, orientation: cint, value: pointer, role: cint): bool {.cdecl.} =
  let inst = cast[VirtualQTransposeProxyModel](fcQTransposeProxyModel_vdata(self))
  let slotval1 = section
  let slotval2 = cint(orientation)
  let slotval3 = gen_qvariant_types.QVariant(h: value, owned: false)
  let slotval4 = role
  var virtualReturn = inst.setHeaderData(slotval1, slotval2, slotval3, slotval4)
  virtualReturn

method setItemData*(self: VirtualQTransposeProxyModel, index: gen_qabstractitemmodel_types.QModelIndex, roles: Table[cint,gen_qvariant_types.QVariant]): bool {.base.} =
  QTransposeProxyModelsetItemData(self[], index, roles)
proc cQTransposeProxyModel_method_callback_setItemData(self: pointer, index: pointer, roles: struct_miqt_map): bool {.cdecl.} =
  let inst = cast[VirtualQTransposeProxyModel](fcQTransposeProxyModel_vdata(self))
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

method span*(self: VirtualQTransposeProxyModel, index: gen_qabstractitemmodel_types.QModelIndex): gen_qsize_types.QSize {.base.} =
  QTransposeProxyModelspan(self[], index)
proc cQTransposeProxyModel_method_callback_span(self: pointer, index: pointer): pointer {.cdecl.} =
  let inst = cast[VirtualQTransposeProxyModel](fcQTransposeProxyModel_vdata(self))
  let slotval1 = gen_qabstractitemmodel_types.QModelIndex(h: index, owned: false)
  var virtualReturn = inst.span(slotval1)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

method itemData*(self: VirtualQTransposeProxyModel, index: gen_qabstractitemmodel_types.QModelIndex): Table[cint,gen_qvariant_types.QVariant] {.base.} =
  QTransposeProxyModelitemData(self[], index)
proc cQTransposeProxyModel_method_callback_itemData(self: pointer, index: pointer): struct_miqt_map {.cdecl.} =
  let inst = cast[VirtualQTransposeProxyModel](fcQTransposeProxyModel_vdata(self))
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

method mapFromSource*(self: VirtualQTransposeProxyModel, sourceIndex: gen_qabstractitemmodel_types.QModelIndex): gen_qabstractitemmodel_types.QModelIndex {.base.} =
  QTransposeProxyModelmapFromSource(self[], sourceIndex)
proc cQTransposeProxyModel_method_callback_mapFromSource(self: pointer, sourceIndex: pointer): pointer {.cdecl.} =
  let inst = cast[VirtualQTransposeProxyModel](fcQTransposeProxyModel_vdata(self))
  let slotval1 = gen_qabstractitemmodel_types.QModelIndex(h: sourceIndex, owned: false)
  var virtualReturn = inst.mapFromSource(slotval1)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

method mapToSource*(self: VirtualQTransposeProxyModel, proxyIndex: gen_qabstractitemmodel_types.QModelIndex): gen_qabstractitemmodel_types.QModelIndex {.base.} =
  QTransposeProxyModelmapToSource(self[], proxyIndex)
proc cQTransposeProxyModel_method_callback_mapToSource(self: pointer, proxyIndex: pointer): pointer {.cdecl.} =
  let inst = cast[VirtualQTransposeProxyModel](fcQTransposeProxyModel_vdata(self))
  let slotval1 = gen_qabstractitemmodel_types.QModelIndex(h: proxyIndex, owned: false)
  var virtualReturn = inst.mapToSource(slotval1)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

method parent*(self: VirtualQTransposeProxyModel, index: gen_qabstractitemmodel_types.QModelIndex): gen_qabstractitemmodel_types.QModelIndex {.base.} =
  QTransposeProxyModelparent(self[], index)
proc cQTransposeProxyModel_method_callback_parent(self: pointer, index: pointer): pointer {.cdecl.} =
  let inst = cast[VirtualQTransposeProxyModel](fcQTransposeProxyModel_vdata(self))
  let slotval1 = gen_qabstractitemmodel_types.QModelIndex(h: index, owned: false)
  var virtualReturn = inst.parent(slotval1)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

method index*(self: VirtualQTransposeProxyModel, row: cint, column: cint, parent: gen_qabstractitemmodel_types.QModelIndex): gen_qabstractitemmodel_types.QModelIndex {.base.} =
  QTransposeProxyModelindex(self[], row, column, parent)
proc cQTransposeProxyModel_method_callback_index(self: pointer, row: cint, column: cint, parent: pointer): pointer {.cdecl.} =
  let inst = cast[VirtualQTransposeProxyModel](fcQTransposeProxyModel_vdata(self))
  let slotval1 = row
  let slotval2 = column
  let slotval3 = gen_qabstractitemmodel_types.QModelIndex(h: parent, owned: false)
  var virtualReturn = inst.index(slotval1, slotval2, slotval3)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

method insertRows*(self: VirtualQTransposeProxyModel, row: cint, count: cint, parent: gen_qabstractitemmodel_types.QModelIndex): bool {.base.} =
  QTransposeProxyModelinsertRows(self[], row, count, parent)
proc cQTransposeProxyModel_method_callback_insertRows(self: pointer, row: cint, count: cint, parent: pointer): bool {.cdecl.} =
  let inst = cast[VirtualQTransposeProxyModel](fcQTransposeProxyModel_vdata(self))
  let slotval1 = row
  let slotval2 = count
  let slotval3 = gen_qabstractitemmodel_types.QModelIndex(h: parent, owned: false)
  var virtualReturn = inst.insertRows(slotval1, slotval2, slotval3)
  virtualReturn

method removeRows*(self: VirtualQTransposeProxyModel, row: cint, count: cint, parent: gen_qabstractitemmodel_types.QModelIndex): bool {.base.} =
  QTransposeProxyModelremoveRows(self[], row, count, parent)
proc cQTransposeProxyModel_method_callback_removeRows(self: pointer, row: cint, count: cint, parent: pointer): bool {.cdecl.} =
  let inst = cast[VirtualQTransposeProxyModel](fcQTransposeProxyModel_vdata(self))
  let slotval1 = row
  let slotval2 = count
  let slotval3 = gen_qabstractitemmodel_types.QModelIndex(h: parent, owned: false)
  var virtualReturn = inst.removeRows(slotval1, slotval2, slotval3)
  virtualReturn

method moveRows*(self: VirtualQTransposeProxyModel, sourceParent: gen_qabstractitemmodel_types.QModelIndex, sourceRow: cint, count: cint, destinationParent: gen_qabstractitemmodel_types.QModelIndex, destinationChild: cint): bool {.base.} =
  QTransposeProxyModelmoveRows(self[], sourceParent, sourceRow, count, destinationParent, destinationChild)
proc cQTransposeProxyModel_method_callback_moveRows(self: pointer, sourceParent: pointer, sourceRow: cint, count: cint, destinationParent: pointer, destinationChild: cint): bool {.cdecl.} =
  let inst = cast[VirtualQTransposeProxyModel](fcQTransposeProxyModel_vdata(self))
  let slotval1 = gen_qabstractitemmodel_types.QModelIndex(h: sourceParent, owned: false)
  let slotval2 = sourceRow
  let slotval3 = count
  let slotval4 = gen_qabstractitemmodel_types.QModelIndex(h: destinationParent, owned: false)
  let slotval5 = destinationChild
  var virtualReturn = inst.moveRows(slotval1, slotval2, slotval3, slotval4, slotval5)
  virtualReturn

method insertColumns*(self: VirtualQTransposeProxyModel, column: cint, count: cint, parent: gen_qabstractitemmodel_types.QModelIndex): bool {.base.} =
  QTransposeProxyModelinsertColumns(self[], column, count, parent)
proc cQTransposeProxyModel_method_callback_insertColumns(self: pointer, column: cint, count: cint, parent: pointer): bool {.cdecl.} =
  let inst = cast[VirtualQTransposeProxyModel](fcQTransposeProxyModel_vdata(self))
  let slotval1 = column
  let slotval2 = count
  let slotval3 = gen_qabstractitemmodel_types.QModelIndex(h: parent, owned: false)
  var virtualReturn = inst.insertColumns(slotval1, slotval2, slotval3)
  virtualReturn

method removeColumns*(self: VirtualQTransposeProxyModel, column: cint, count: cint, parent: gen_qabstractitemmodel_types.QModelIndex): bool {.base.} =
  QTransposeProxyModelremoveColumns(self[], column, count, parent)
proc cQTransposeProxyModel_method_callback_removeColumns(self: pointer, column: cint, count: cint, parent: pointer): bool {.cdecl.} =
  let inst = cast[VirtualQTransposeProxyModel](fcQTransposeProxyModel_vdata(self))
  let slotval1 = column
  let slotval2 = count
  let slotval3 = gen_qabstractitemmodel_types.QModelIndex(h: parent, owned: false)
  var virtualReturn = inst.removeColumns(slotval1, slotval2, slotval3)
  virtualReturn

method moveColumns*(self: VirtualQTransposeProxyModel, sourceParent: gen_qabstractitemmodel_types.QModelIndex, sourceColumn: cint, count: cint, destinationParent: gen_qabstractitemmodel_types.QModelIndex, destinationChild: cint): bool {.base.} =
  QTransposeProxyModelmoveColumns(self[], sourceParent, sourceColumn, count, destinationParent, destinationChild)
proc cQTransposeProxyModel_method_callback_moveColumns(self: pointer, sourceParent: pointer, sourceColumn: cint, count: cint, destinationParent: pointer, destinationChild: cint): bool {.cdecl.} =
  let inst = cast[VirtualQTransposeProxyModel](fcQTransposeProxyModel_vdata(self))
  let slotval1 = gen_qabstractitemmodel_types.QModelIndex(h: sourceParent, owned: false)
  let slotval2 = sourceColumn
  let slotval3 = count
  let slotval4 = gen_qabstractitemmodel_types.QModelIndex(h: destinationParent, owned: false)
  let slotval5 = destinationChild
  var virtualReturn = inst.moveColumns(slotval1, slotval2, slotval3, slotval4, slotval5)
  virtualReturn

method sort*(self: VirtualQTransposeProxyModel, column: cint, order: cint): void {.base.} =
  QTransposeProxyModelsort(self[], column, order)
proc cQTransposeProxyModel_method_callback_sort(self: pointer, column: cint, order: cint): void {.cdecl.} =
  let inst = cast[VirtualQTransposeProxyModel](fcQTransposeProxyModel_vdata(self))
  let slotval1 = column
  let slotval2 = cint(order)
  inst.sort(slotval1, slotval2)

method mapSelectionToSource*(self: VirtualQTransposeProxyModel, selection: gen_qitemselectionmodel_types.QItemSelection): gen_qitemselectionmodel_types.QItemSelection {.base.} =
  QTransposeProxyModelmapSelectionToSource(self[], selection)
proc cQTransposeProxyModel_method_callback_mapSelectionToSource(self: pointer, selection: pointer): pointer {.cdecl.} =
  let inst = cast[VirtualQTransposeProxyModel](fcQTransposeProxyModel_vdata(self))
  let slotval1 = gen_qitemselectionmodel_types.QItemSelection(h: selection, owned: false)
  var virtualReturn = inst.mapSelectionToSource(slotval1)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

method mapSelectionFromSource*(self: VirtualQTransposeProxyModel, selection: gen_qitemselectionmodel_types.QItemSelection): gen_qitemselectionmodel_types.QItemSelection {.base.} =
  QTransposeProxyModelmapSelectionFromSource(self[], selection)
proc cQTransposeProxyModel_method_callback_mapSelectionFromSource(self: pointer, selection: pointer): pointer {.cdecl.} =
  let inst = cast[VirtualQTransposeProxyModel](fcQTransposeProxyModel_vdata(self))
  let slotval1 = gen_qitemselectionmodel_types.QItemSelection(h: selection, owned: false)
  var virtualReturn = inst.mapSelectionFromSource(slotval1)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

method submit*(self: VirtualQTransposeProxyModel): bool {.base.} =
  QTransposeProxyModelsubmit(self[])
proc cQTransposeProxyModel_method_callback_submit(self: pointer): bool {.cdecl.} =
  let inst = cast[VirtualQTransposeProxyModel](fcQTransposeProxyModel_vdata(self))
  var virtualReturn = inst.submit()
  virtualReturn

method revert*(self: VirtualQTransposeProxyModel): void {.base.} =
  QTransposeProxyModelrevert(self[])
proc cQTransposeProxyModel_method_callback_revert(self: pointer): void {.cdecl.} =
  let inst = cast[VirtualQTransposeProxyModel](fcQTransposeProxyModel_vdata(self))
  inst.revert()

method data*(self: VirtualQTransposeProxyModel, proxyIndex: gen_qabstractitemmodel_types.QModelIndex, role: cint): gen_qvariant_types.QVariant {.base.} =
  QTransposeProxyModeldata(self[], proxyIndex, role)
proc cQTransposeProxyModel_method_callback_data(self: pointer, proxyIndex: pointer, role: cint): pointer {.cdecl.} =
  let inst = cast[VirtualQTransposeProxyModel](fcQTransposeProxyModel_vdata(self))
  let slotval1 = gen_qabstractitemmodel_types.QModelIndex(h: proxyIndex, owned: false)
  let slotval2 = role
  var virtualReturn = inst.data(slotval1, slotval2)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

method flags*(self: VirtualQTransposeProxyModel, index: gen_qabstractitemmodel_types.QModelIndex): cint {.base.} =
  QTransposeProxyModelflags(self[], index)
proc cQTransposeProxyModel_method_callback_flags(self: pointer, index: pointer): cint {.cdecl.} =
  let inst = cast[VirtualQTransposeProxyModel](fcQTransposeProxyModel_vdata(self))
  let slotval1 = gen_qabstractitemmodel_types.QModelIndex(h: index, owned: false)
  var virtualReturn = inst.flags(slotval1)
  cint(virtualReturn)

method setData*(self: VirtualQTransposeProxyModel, index: gen_qabstractitemmodel_types.QModelIndex, value: gen_qvariant_types.QVariant, role: cint): bool {.base.} =
  QTransposeProxyModelsetData(self[], index, value, role)
proc cQTransposeProxyModel_method_callback_setData(self: pointer, index: pointer, value: pointer, role: cint): bool {.cdecl.} =
  let inst = cast[VirtualQTransposeProxyModel](fcQTransposeProxyModel_vdata(self))
  let slotval1 = gen_qabstractitemmodel_types.QModelIndex(h: index, owned: false)
  let slotval2 = gen_qvariant_types.QVariant(h: value, owned: false)
  let slotval3 = role
  var virtualReturn = inst.setData(slotval1, slotval2, slotval3)
  virtualReturn

method buddy*(self: VirtualQTransposeProxyModel, index: gen_qabstractitemmodel_types.QModelIndex): gen_qabstractitemmodel_types.QModelIndex {.base.} =
  QTransposeProxyModelbuddy(self[], index)
proc cQTransposeProxyModel_method_callback_buddy(self: pointer, index: pointer): pointer {.cdecl.} =
  let inst = cast[VirtualQTransposeProxyModel](fcQTransposeProxyModel_vdata(self))
  let slotval1 = gen_qabstractitemmodel_types.QModelIndex(h: index, owned: false)
  var virtualReturn = inst.buddy(slotval1)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

method canFetchMore*(self: VirtualQTransposeProxyModel, parent: gen_qabstractitemmodel_types.QModelIndex): bool {.base.} =
  QTransposeProxyModelcanFetchMore(self[], parent)
proc cQTransposeProxyModel_method_callback_canFetchMore(self: pointer, parent: pointer): bool {.cdecl.} =
  let inst = cast[VirtualQTransposeProxyModel](fcQTransposeProxyModel_vdata(self))
  let slotval1 = gen_qabstractitemmodel_types.QModelIndex(h: parent, owned: false)
  var virtualReturn = inst.canFetchMore(slotval1)
  virtualReturn

method fetchMore*(self: VirtualQTransposeProxyModel, parent: gen_qabstractitemmodel_types.QModelIndex): void {.base.} =
  QTransposeProxyModelfetchMore(self[], parent)
proc cQTransposeProxyModel_method_callback_fetchMore(self: pointer, parent: pointer): void {.cdecl.} =
  let inst = cast[VirtualQTransposeProxyModel](fcQTransposeProxyModel_vdata(self))
  let slotval1 = gen_qabstractitemmodel_types.QModelIndex(h: parent, owned: false)
  inst.fetchMore(slotval1)

method hasChildren*(self: VirtualQTransposeProxyModel, parent: gen_qabstractitemmodel_types.QModelIndex): bool {.base.} =
  QTransposeProxyModelhasChildren(self[], parent)
proc cQTransposeProxyModel_method_callback_hasChildren(self: pointer, parent: pointer): bool {.cdecl.} =
  let inst = cast[VirtualQTransposeProxyModel](fcQTransposeProxyModel_vdata(self))
  let slotval1 = gen_qabstractitemmodel_types.QModelIndex(h: parent, owned: false)
  var virtualReturn = inst.hasChildren(slotval1)
  virtualReturn

method sibling*(self: VirtualQTransposeProxyModel, row: cint, column: cint, idx: gen_qabstractitemmodel_types.QModelIndex): gen_qabstractitemmodel_types.QModelIndex {.base.} =
  QTransposeProxyModelsibling(self[], row, column, idx)
proc cQTransposeProxyModel_method_callback_sibling(self: pointer, row: cint, column: cint, idx: pointer): pointer {.cdecl.} =
  let inst = cast[VirtualQTransposeProxyModel](fcQTransposeProxyModel_vdata(self))
  let slotval1 = row
  let slotval2 = column
  let slotval3 = gen_qabstractitemmodel_types.QModelIndex(h: idx, owned: false)
  var virtualReturn = inst.sibling(slotval1, slotval2, slotval3)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

method mimeData*(self: VirtualQTransposeProxyModel, indexes: openArray[gen_qabstractitemmodel_types.QModelIndex]): gen_qmimedata_types.QMimeData {.base.} =
  QTransposeProxyModelmimeData(self[], indexes)
proc cQTransposeProxyModel_method_callback_mimeData(self: pointer, indexes: struct_miqt_array): pointer {.cdecl.} =
  let inst = cast[VirtualQTransposeProxyModel](fcQTransposeProxyModel_vdata(self))
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

method canDropMimeData*(self: VirtualQTransposeProxyModel, data: gen_qmimedata_types.QMimeData, action: cint, row: cint, column: cint, parent: gen_qabstractitemmodel_types.QModelIndex): bool {.base.} =
  QTransposeProxyModelcanDropMimeData(self[], data, action, row, column, parent)
proc cQTransposeProxyModel_method_callback_canDropMimeData(self: pointer, data: pointer, action: cint, row: cint, column: cint, parent: pointer): bool {.cdecl.} =
  let inst = cast[VirtualQTransposeProxyModel](fcQTransposeProxyModel_vdata(self))
  let slotval1 = gen_qmimedata_types.QMimeData(h: data, owned: false)
  let slotval2 = cint(action)
  let slotval3 = row
  let slotval4 = column
  let slotval5 = gen_qabstractitemmodel_types.QModelIndex(h: parent, owned: false)
  var virtualReturn = inst.canDropMimeData(slotval1, slotval2, slotval3, slotval4, slotval5)
  virtualReturn

method dropMimeData*(self: VirtualQTransposeProxyModel, data: gen_qmimedata_types.QMimeData, action: cint, row: cint, column: cint, parent: gen_qabstractitemmodel_types.QModelIndex): bool {.base.} =
  QTransposeProxyModeldropMimeData(self[], data, action, row, column, parent)
proc cQTransposeProxyModel_method_callback_dropMimeData(self: pointer, data: pointer, action: cint, row: cint, column: cint, parent: pointer): bool {.cdecl.} =
  let inst = cast[VirtualQTransposeProxyModel](fcQTransposeProxyModel_vdata(self))
  let slotval1 = gen_qmimedata_types.QMimeData(h: data, owned: false)
  let slotval2 = cint(action)
  let slotval3 = row
  let slotval4 = column
  let slotval5 = gen_qabstractitemmodel_types.QModelIndex(h: parent, owned: false)
  var virtualReturn = inst.dropMimeData(slotval1, slotval2, slotval3, slotval4, slotval5)
  virtualReturn

method mimeTypes*(self: VirtualQTransposeProxyModel): seq[string] {.base.} =
  QTransposeProxyModelmimeTypes(self[])
proc cQTransposeProxyModel_method_callback_mimeTypes(self: pointer): struct_miqt_array {.cdecl.} =
  let inst = cast[VirtualQTransposeProxyModel](fcQTransposeProxyModel_vdata(self))
  var virtualReturn = inst.mimeTypes()
  var virtualReturn_CArray = cast[ptr UncheckedArray[struct_miqt_string]](if len(virtualReturn) > 0: c_malloc(c_sizet(sizeof(struct_miqt_string) * len(virtualReturn))) else: nil)
  for i in 0..<len(virtualReturn):
    var virtualReturn_i_copy = cast[cstring](if len(virtualReturn[i]) > 0: c_malloc(csize_t(len(virtualReturn[i]))) else: nil)
    if len(virtualReturn[i]) > 0: copyMem(cast[pointer](virtualReturn_i_copy), addr virtualReturn[i][0], csize_t(len(virtualReturn[i])))
    virtualReturn_CArray[i] = struct_miqt_string(data: virtualReturn_i_copy, len: csize_t(len(virtualReturn[i])))

  struct_miqt_array(len: csize_t(len(virtualReturn)), data: if len(virtualReturn) == 0: nil else: addr(virtualReturn_CArray[0]))

method supportedDragActions*(self: VirtualQTransposeProxyModel): cint {.base.} =
  QTransposeProxyModelsupportedDragActions(self[])
proc cQTransposeProxyModel_method_callback_supportedDragActions(self: pointer): cint {.cdecl.} =
  let inst = cast[VirtualQTransposeProxyModel](fcQTransposeProxyModel_vdata(self))
  var virtualReturn = inst.supportedDragActions()
  cint(virtualReturn)

method supportedDropActions*(self: VirtualQTransposeProxyModel): cint {.base.} =
  QTransposeProxyModelsupportedDropActions(self[])
proc cQTransposeProxyModel_method_callback_supportedDropActions(self: pointer): cint {.cdecl.} =
  let inst = cast[VirtualQTransposeProxyModel](fcQTransposeProxyModel_vdata(self))
  var virtualReturn = inst.supportedDropActions()
  cint(virtualReturn)

method match*(self: VirtualQTransposeProxyModel, start: gen_qabstractitemmodel_types.QModelIndex, role: cint, value: gen_qvariant_types.QVariant, hits: cint, flags: cint): seq[gen_qabstractitemmodel_types.QModelIndex] {.base.} =
  QTransposeProxyModelmatch(self[], start, role, value, hits, flags)
proc cQTransposeProxyModel_method_callback_match(self: pointer, start: pointer, role: cint, value: pointer, hits: cint, flags: cint): struct_miqt_array {.cdecl.} =
  let inst = cast[VirtualQTransposeProxyModel](fcQTransposeProxyModel_vdata(self))
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

method roleNames*(self: VirtualQTransposeProxyModel): Table[cint,seq[byte]] {.base.} =
  QTransposeProxyModelroleNames(self[])
proc cQTransposeProxyModel_method_callback_roleNames(self: pointer): struct_miqt_map {.cdecl.} =
  let inst = cast[VirtualQTransposeProxyModel](fcQTransposeProxyModel_vdata(self))
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

method event*(self: VirtualQTransposeProxyModel, event: gen_qcoreevent_types.QEvent): bool {.base.} =
  QTransposeProxyModelevent(self[], event)
proc cQTransposeProxyModel_method_callback_event(self: pointer, event: pointer): bool {.cdecl.} =
  let inst = cast[VirtualQTransposeProxyModel](fcQTransposeProxyModel_vdata(self))
  let slotval1 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  var virtualReturn = inst.event(slotval1)
  virtualReturn

method eventFilter*(self: VirtualQTransposeProxyModel, watched: gen_qobject_types.QObject, event: gen_qcoreevent_types.QEvent): bool {.base.} =
  QTransposeProxyModeleventFilter(self[], watched, event)
proc cQTransposeProxyModel_method_callback_eventFilter(self: pointer, watched: pointer, event: pointer): bool {.cdecl.} =
  let inst = cast[VirtualQTransposeProxyModel](fcQTransposeProxyModel_vdata(self))
  let slotval1 = gen_qobject_types.QObject(h: watched, owned: false)
  let slotval2 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  var virtualReturn = inst.eventFilter(slotval1, slotval2)
  virtualReturn

method timerEvent*(self: VirtualQTransposeProxyModel, event: gen_qcoreevent_types.QTimerEvent): void {.base.} =
  QTransposeProxyModeltimerEvent(self[], event)
proc cQTransposeProxyModel_method_callback_timerEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQTransposeProxyModel](fcQTransposeProxyModel_vdata(self))
  let slotval1 = gen_qcoreevent_types.QTimerEvent(h: event, owned: false)
  inst.timerEvent(slotval1)

method childEvent*(self: VirtualQTransposeProxyModel, event: gen_qcoreevent_types.QChildEvent): void {.base.} =
  QTransposeProxyModelchildEvent(self[], event)
proc cQTransposeProxyModel_method_callback_childEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQTransposeProxyModel](fcQTransposeProxyModel_vdata(self))
  let slotval1 = gen_qcoreevent_types.QChildEvent(h: event, owned: false)
  inst.childEvent(slotval1)

method customEvent*(self: VirtualQTransposeProxyModel, event: gen_qcoreevent_types.QEvent): void {.base.} =
  QTransposeProxyModelcustomEvent(self[], event)
proc cQTransposeProxyModel_method_callback_customEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQTransposeProxyModel](fcQTransposeProxyModel_vdata(self))
  let slotval1 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  inst.customEvent(slotval1)

method connectNotify*(self: VirtualQTransposeProxyModel, signal: gen_qmetaobject_types.QMetaMethod): void {.base.} =
  QTransposeProxyModelconnectNotify(self[], signal)
proc cQTransposeProxyModel_method_callback_connectNotify(self: pointer, signal: pointer): void {.cdecl.} =
  let inst = cast[VirtualQTransposeProxyModel](fcQTransposeProxyModel_vdata(self))
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal, owned: false)
  inst.connectNotify(slotval1)

method disconnectNotify*(self: VirtualQTransposeProxyModel, signal: gen_qmetaobject_types.QMetaMethod): void {.base.} =
  QTransposeProxyModeldisconnectNotify(self[], signal)
proc cQTransposeProxyModel_method_callback_disconnectNotify(self: pointer, signal: pointer): void {.cdecl.} =
  let inst = cast[VirtualQTransposeProxyModel](fcQTransposeProxyModel_vdata(self))
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal, owned: false)
  inst.disconnectNotify(slotval1)

proc resetInternalData*(self: gen_qtransposeproxymodel_types.QTransposeProxyModel): void =
  fcQTransposeProxyModel_protectedbase_resetInternalData(self.h)

proc createIndex*(self: gen_qtransposeproxymodel_types.QTransposeProxyModel, row: cint, column: cint): gen_qabstractitemmodel_types.QModelIndex =
  gen_qabstractitemmodel_types.QModelIndex(h: fcQTransposeProxyModel_protectedbase_createIndex(self.h, row, column), owned: true)

proc encodeData*(self: gen_qtransposeproxymodel_types.QTransposeProxyModel, indexes: openArray[gen_qabstractitemmodel_types.QModelIndex], stream: gen_qdatastream_types.QDataStream): void =
  var indexes_CArray = newSeq[pointer](len(indexes))
  for i in 0..<len(indexes):
    indexes_CArray[i] = indexes[i].h

  fcQTransposeProxyModel_protectedbase_encodeData(self.h, struct_miqt_array(len: csize_t(len(indexes)), data: if len(indexes) == 0: nil else: addr(indexes_CArray[0])), stream.h)

proc decodeData*(self: gen_qtransposeproxymodel_types.QTransposeProxyModel, row: cint, column: cint, parent: gen_qabstractitemmodel_types.QModelIndex, stream: gen_qdatastream_types.QDataStream): bool =
  fcQTransposeProxyModel_protectedbase_decodeData(self.h, row, column, parent.h, stream.h)

proc beginInsertRows*(self: gen_qtransposeproxymodel_types.QTransposeProxyModel, parent: gen_qabstractitemmodel_types.QModelIndex, first: cint, last: cint): void =
  fcQTransposeProxyModel_protectedbase_beginInsertRows(self.h, parent.h, first, last)

proc endInsertRows*(self: gen_qtransposeproxymodel_types.QTransposeProxyModel): void =
  fcQTransposeProxyModel_protectedbase_endInsertRows(self.h)

proc beginRemoveRows*(self: gen_qtransposeproxymodel_types.QTransposeProxyModel, parent: gen_qabstractitemmodel_types.QModelIndex, first: cint, last: cint): void =
  fcQTransposeProxyModel_protectedbase_beginRemoveRows(self.h, parent.h, first, last)

proc endRemoveRows*(self: gen_qtransposeproxymodel_types.QTransposeProxyModel): void =
  fcQTransposeProxyModel_protectedbase_endRemoveRows(self.h)

proc beginMoveRows*(self: gen_qtransposeproxymodel_types.QTransposeProxyModel, sourceParent: gen_qabstractitemmodel_types.QModelIndex, sourceFirst: cint, sourceLast: cint, destinationParent: gen_qabstractitemmodel_types.QModelIndex, destinationRow: cint): bool =
  fcQTransposeProxyModel_protectedbase_beginMoveRows(self.h, sourceParent.h, sourceFirst, sourceLast, destinationParent.h, destinationRow)

proc endMoveRows*(self: gen_qtransposeproxymodel_types.QTransposeProxyModel): void =
  fcQTransposeProxyModel_protectedbase_endMoveRows(self.h)

proc beginInsertColumns*(self: gen_qtransposeproxymodel_types.QTransposeProxyModel, parent: gen_qabstractitemmodel_types.QModelIndex, first: cint, last: cint): void =
  fcQTransposeProxyModel_protectedbase_beginInsertColumns(self.h, parent.h, first, last)

proc endInsertColumns*(self: gen_qtransposeproxymodel_types.QTransposeProxyModel): void =
  fcQTransposeProxyModel_protectedbase_endInsertColumns(self.h)

proc beginRemoveColumns*(self: gen_qtransposeproxymodel_types.QTransposeProxyModel, parent: gen_qabstractitemmodel_types.QModelIndex, first: cint, last: cint): void =
  fcQTransposeProxyModel_protectedbase_beginRemoveColumns(self.h, parent.h, first, last)

proc endRemoveColumns*(self: gen_qtransposeproxymodel_types.QTransposeProxyModel): void =
  fcQTransposeProxyModel_protectedbase_endRemoveColumns(self.h)

proc beginMoveColumns*(self: gen_qtransposeproxymodel_types.QTransposeProxyModel, sourceParent: gen_qabstractitemmodel_types.QModelIndex, sourceFirst: cint, sourceLast: cint, destinationParent: gen_qabstractitemmodel_types.QModelIndex, destinationColumn: cint): bool =
  fcQTransposeProxyModel_protectedbase_beginMoveColumns(self.h, sourceParent.h, sourceFirst, sourceLast, destinationParent.h, destinationColumn)

proc endMoveColumns*(self: gen_qtransposeproxymodel_types.QTransposeProxyModel): void =
  fcQTransposeProxyModel_protectedbase_endMoveColumns(self.h)

proc beginResetModel*(self: gen_qtransposeproxymodel_types.QTransposeProxyModel): void =
  fcQTransposeProxyModel_protectedbase_beginResetModel(self.h)

proc endResetModel*(self: gen_qtransposeproxymodel_types.QTransposeProxyModel): void =
  fcQTransposeProxyModel_protectedbase_endResetModel(self.h)

proc changePersistentIndex*(self: gen_qtransposeproxymodel_types.QTransposeProxyModel, fromVal: gen_qabstractitemmodel_types.QModelIndex, to: gen_qabstractitemmodel_types.QModelIndex): void =
  fcQTransposeProxyModel_protectedbase_changePersistentIndex(self.h, fromVal.h, to.h)

proc changePersistentIndexList*(self: gen_qtransposeproxymodel_types.QTransposeProxyModel, fromVal: openArray[gen_qabstractitemmodel_types.QModelIndex], to: openArray[gen_qabstractitemmodel_types.QModelIndex]): void =
  var fromVal_CArray = newSeq[pointer](len(fromVal))
  for i in 0..<len(fromVal):
    fromVal_CArray[i] = fromVal[i].h

  var to_CArray = newSeq[pointer](len(to))
  for i in 0..<len(to):
    to_CArray[i] = to[i].h

  fcQTransposeProxyModel_protectedbase_changePersistentIndexList(self.h, struct_miqt_array(len: csize_t(len(fromVal)), data: if len(fromVal) == 0: nil else: addr(fromVal_CArray[0])), struct_miqt_array(len: csize_t(len(to)), data: if len(to) == 0: nil else: addr(to_CArray[0])))

proc persistentIndexList*(self: gen_qtransposeproxymodel_types.QTransposeProxyModel): seq[gen_qabstractitemmodel_types.QModelIndex] =
  var v_ma = fcQTransposeProxyModel_protectedbase_persistentIndexList(self.h)
  var vx_ret = newSeq[gen_qabstractitemmodel_types.QModelIndex](int(v_ma.len))
  let v_outCast = cast[ptr UncheckedArray[pointer]](v_ma.data)
  for i in 0 ..< v_ma.len:
    vx_ret[i] = gen_qabstractitemmodel_types.QModelIndex(h: v_outCast[i], owned: true)
  c_free(v_ma.data)
  vx_ret

proc sender*(self: gen_qtransposeproxymodel_types.QTransposeProxyModel): gen_qobject_types.QObject =
  gen_qobject_types.QObject(h: fcQTransposeProxyModel_protectedbase_sender(self.h), owned: false)

proc senderSignalIndex*(self: gen_qtransposeproxymodel_types.QTransposeProxyModel): cint =
  fcQTransposeProxyModel_protectedbase_senderSignalIndex(self.h)

proc receivers*(self: gen_qtransposeproxymodel_types.QTransposeProxyModel, signal: cstring): cint =
  fcQTransposeProxyModel_protectedbase_receivers(self.h, signal)

proc isSignalConnected*(self: gen_qtransposeproxymodel_types.QTransposeProxyModel, signal: gen_qmetaobject_types.QMetaMethod): bool =
  fcQTransposeProxyModel_protectedbase_isSignalConnected(self.h, signal.h)

proc create*(T: type gen_qtransposeproxymodel_types.QTransposeProxyModel,
    vtbl: ref QTransposeProxyModelVTable = nil): gen_qtransposeproxymodel_types.QTransposeProxyModel =
  let vtbl = if vtbl == nil: new QTransposeProxyModelVTable else: vtbl
  GC_ref(vtbl)
  vtbl[].vtbl.destructor = proc(self: pointer) {.cdecl.} =
    let vtbl = cast[ref QTransposeProxyModelVTable](fcQTransposeProxyModel_vdata(self))
    GC_unref(vtbl)
  if not isNil(vtbl[].metaObject):
    vtbl[].vtbl.metaObject = cQTransposeProxyModel_vtable_callback_metaObject
  if not isNil(vtbl[].metacast):
    vtbl[].vtbl.metacast = cQTransposeProxyModel_vtable_callback_metacast
  if not isNil(vtbl[].metacall):
    vtbl[].vtbl.metacall = cQTransposeProxyModel_vtable_callback_metacall
  if not isNil(vtbl[].setSourceModel):
    vtbl[].vtbl.setSourceModel = cQTransposeProxyModel_vtable_callback_setSourceModel
  if not isNil(vtbl[].rowCount):
    vtbl[].vtbl.rowCount = cQTransposeProxyModel_vtable_callback_rowCount
  if not isNil(vtbl[].columnCount):
    vtbl[].vtbl.columnCount = cQTransposeProxyModel_vtable_callback_columnCount
  if not isNil(vtbl[].headerData):
    vtbl[].vtbl.headerData = cQTransposeProxyModel_vtable_callback_headerData
  if not isNil(vtbl[].setHeaderData):
    vtbl[].vtbl.setHeaderData = cQTransposeProxyModel_vtable_callback_setHeaderData
  if not isNil(vtbl[].setItemData):
    vtbl[].vtbl.setItemData = cQTransposeProxyModel_vtable_callback_setItemData
  if not isNil(vtbl[].span):
    vtbl[].vtbl.span = cQTransposeProxyModel_vtable_callback_span
  if not isNil(vtbl[].itemData):
    vtbl[].vtbl.itemData = cQTransposeProxyModel_vtable_callback_itemData
  if not isNil(vtbl[].mapFromSource):
    vtbl[].vtbl.mapFromSource = cQTransposeProxyModel_vtable_callback_mapFromSource
  if not isNil(vtbl[].mapToSource):
    vtbl[].vtbl.mapToSource = cQTransposeProxyModel_vtable_callback_mapToSource
  if not isNil(vtbl[].parent):
    vtbl[].vtbl.parent = cQTransposeProxyModel_vtable_callback_parent
  if not isNil(vtbl[].index):
    vtbl[].vtbl.index = cQTransposeProxyModel_vtable_callback_index
  if not isNil(vtbl[].insertRows):
    vtbl[].vtbl.insertRows = cQTransposeProxyModel_vtable_callback_insertRows
  if not isNil(vtbl[].removeRows):
    vtbl[].vtbl.removeRows = cQTransposeProxyModel_vtable_callback_removeRows
  if not isNil(vtbl[].moveRows):
    vtbl[].vtbl.moveRows = cQTransposeProxyModel_vtable_callback_moveRows
  if not isNil(vtbl[].insertColumns):
    vtbl[].vtbl.insertColumns = cQTransposeProxyModel_vtable_callback_insertColumns
  if not isNil(vtbl[].removeColumns):
    vtbl[].vtbl.removeColumns = cQTransposeProxyModel_vtable_callback_removeColumns
  if not isNil(vtbl[].moveColumns):
    vtbl[].vtbl.moveColumns = cQTransposeProxyModel_vtable_callback_moveColumns
  if not isNil(vtbl[].sort):
    vtbl[].vtbl.sort = cQTransposeProxyModel_vtable_callback_sort
  if not isNil(vtbl[].mapSelectionToSource):
    vtbl[].vtbl.mapSelectionToSource = cQTransposeProxyModel_vtable_callback_mapSelectionToSource
  if not isNil(vtbl[].mapSelectionFromSource):
    vtbl[].vtbl.mapSelectionFromSource = cQTransposeProxyModel_vtable_callback_mapSelectionFromSource
  if not isNil(vtbl[].submit):
    vtbl[].vtbl.submit = cQTransposeProxyModel_vtable_callback_submit
  if not isNil(vtbl[].revert):
    vtbl[].vtbl.revert = cQTransposeProxyModel_vtable_callback_revert
  if not isNil(vtbl[].data):
    vtbl[].vtbl.data = cQTransposeProxyModel_vtable_callback_data
  if not isNil(vtbl[].flags):
    vtbl[].vtbl.flags = cQTransposeProxyModel_vtable_callback_flags
  if not isNil(vtbl[].setData):
    vtbl[].vtbl.setData = cQTransposeProxyModel_vtable_callback_setData
  if not isNil(vtbl[].buddy):
    vtbl[].vtbl.buddy = cQTransposeProxyModel_vtable_callback_buddy
  if not isNil(vtbl[].canFetchMore):
    vtbl[].vtbl.canFetchMore = cQTransposeProxyModel_vtable_callback_canFetchMore
  if not isNil(vtbl[].fetchMore):
    vtbl[].vtbl.fetchMore = cQTransposeProxyModel_vtable_callback_fetchMore
  if not isNil(vtbl[].hasChildren):
    vtbl[].vtbl.hasChildren = cQTransposeProxyModel_vtable_callback_hasChildren
  if not isNil(vtbl[].sibling):
    vtbl[].vtbl.sibling = cQTransposeProxyModel_vtable_callback_sibling
  if not isNil(vtbl[].mimeData):
    vtbl[].vtbl.mimeData = cQTransposeProxyModel_vtable_callback_mimeData
  if not isNil(vtbl[].canDropMimeData):
    vtbl[].vtbl.canDropMimeData = cQTransposeProxyModel_vtable_callback_canDropMimeData
  if not isNil(vtbl[].dropMimeData):
    vtbl[].vtbl.dropMimeData = cQTransposeProxyModel_vtable_callback_dropMimeData
  if not isNil(vtbl[].mimeTypes):
    vtbl[].vtbl.mimeTypes = cQTransposeProxyModel_vtable_callback_mimeTypes
  if not isNil(vtbl[].supportedDragActions):
    vtbl[].vtbl.supportedDragActions = cQTransposeProxyModel_vtable_callback_supportedDragActions
  if not isNil(vtbl[].supportedDropActions):
    vtbl[].vtbl.supportedDropActions = cQTransposeProxyModel_vtable_callback_supportedDropActions
  if not isNil(vtbl[].match):
    vtbl[].vtbl.match = cQTransposeProxyModel_vtable_callback_match
  if not isNil(vtbl[].roleNames):
    vtbl[].vtbl.roleNames = cQTransposeProxyModel_vtable_callback_roleNames
  if not isNil(vtbl[].event):
    vtbl[].vtbl.event = cQTransposeProxyModel_vtable_callback_event
  if not isNil(vtbl[].eventFilter):
    vtbl[].vtbl.eventFilter = cQTransposeProxyModel_vtable_callback_eventFilter
  if not isNil(vtbl[].timerEvent):
    vtbl[].vtbl.timerEvent = cQTransposeProxyModel_vtable_callback_timerEvent
  if not isNil(vtbl[].childEvent):
    vtbl[].vtbl.childEvent = cQTransposeProxyModel_vtable_callback_childEvent
  if not isNil(vtbl[].customEvent):
    vtbl[].vtbl.customEvent = cQTransposeProxyModel_vtable_callback_customEvent
  if not isNil(vtbl[].connectNotify):
    vtbl[].vtbl.connectNotify = cQTransposeProxyModel_vtable_callback_connectNotify
  if not isNil(vtbl[].disconnectNotify):
    vtbl[].vtbl.disconnectNotify = cQTransposeProxyModel_vtable_callback_disconnectNotify
  gen_qtransposeproxymodel_types.QTransposeProxyModel(h: fcQTransposeProxyModel_new(addr(vtbl[].vtbl), addr(vtbl[])), owned: true)

proc create*(T: type gen_qtransposeproxymodel_types.QTransposeProxyModel,
    parent: gen_qobject_types.QObject,
    vtbl: ref QTransposeProxyModelVTable = nil): gen_qtransposeproxymodel_types.QTransposeProxyModel =
  let vtbl = if vtbl == nil: new QTransposeProxyModelVTable else: vtbl
  GC_ref(vtbl)
  vtbl[].vtbl.destructor = proc(self: pointer) {.cdecl.} =
    let vtbl = cast[ref QTransposeProxyModelVTable](fcQTransposeProxyModel_vdata(self))
    GC_unref(vtbl)
  if not isNil(vtbl[].metaObject):
    vtbl[].vtbl.metaObject = cQTransposeProxyModel_vtable_callback_metaObject
  if not isNil(vtbl[].metacast):
    vtbl[].vtbl.metacast = cQTransposeProxyModel_vtable_callback_metacast
  if not isNil(vtbl[].metacall):
    vtbl[].vtbl.metacall = cQTransposeProxyModel_vtable_callback_metacall
  if not isNil(vtbl[].setSourceModel):
    vtbl[].vtbl.setSourceModel = cQTransposeProxyModel_vtable_callback_setSourceModel
  if not isNil(vtbl[].rowCount):
    vtbl[].vtbl.rowCount = cQTransposeProxyModel_vtable_callback_rowCount
  if not isNil(vtbl[].columnCount):
    vtbl[].vtbl.columnCount = cQTransposeProxyModel_vtable_callback_columnCount
  if not isNil(vtbl[].headerData):
    vtbl[].vtbl.headerData = cQTransposeProxyModel_vtable_callback_headerData
  if not isNil(vtbl[].setHeaderData):
    vtbl[].vtbl.setHeaderData = cQTransposeProxyModel_vtable_callback_setHeaderData
  if not isNil(vtbl[].setItemData):
    vtbl[].vtbl.setItemData = cQTransposeProxyModel_vtable_callback_setItemData
  if not isNil(vtbl[].span):
    vtbl[].vtbl.span = cQTransposeProxyModel_vtable_callback_span
  if not isNil(vtbl[].itemData):
    vtbl[].vtbl.itemData = cQTransposeProxyModel_vtable_callback_itemData
  if not isNil(vtbl[].mapFromSource):
    vtbl[].vtbl.mapFromSource = cQTransposeProxyModel_vtable_callback_mapFromSource
  if not isNil(vtbl[].mapToSource):
    vtbl[].vtbl.mapToSource = cQTransposeProxyModel_vtable_callback_mapToSource
  if not isNil(vtbl[].parent):
    vtbl[].vtbl.parent = cQTransposeProxyModel_vtable_callback_parent
  if not isNil(vtbl[].index):
    vtbl[].vtbl.index = cQTransposeProxyModel_vtable_callback_index
  if not isNil(vtbl[].insertRows):
    vtbl[].vtbl.insertRows = cQTransposeProxyModel_vtable_callback_insertRows
  if not isNil(vtbl[].removeRows):
    vtbl[].vtbl.removeRows = cQTransposeProxyModel_vtable_callback_removeRows
  if not isNil(vtbl[].moveRows):
    vtbl[].vtbl.moveRows = cQTransposeProxyModel_vtable_callback_moveRows
  if not isNil(vtbl[].insertColumns):
    vtbl[].vtbl.insertColumns = cQTransposeProxyModel_vtable_callback_insertColumns
  if not isNil(vtbl[].removeColumns):
    vtbl[].vtbl.removeColumns = cQTransposeProxyModel_vtable_callback_removeColumns
  if not isNil(vtbl[].moveColumns):
    vtbl[].vtbl.moveColumns = cQTransposeProxyModel_vtable_callback_moveColumns
  if not isNil(vtbl[].sort):
    vtbl[].vtbl.sort = cQTransposeProxyModel_vtable_callback_sort
  if not isNil(vtbl[].mapSelectionToSource):
    vtbl[].vtbl.mapSelectionToSource = cQTransposeProxyModel_vtable_callback_mapSelectionToSource
  if not isNil(vtbl[].mapSelectionFromSource):
    vtbl[].vtbl.mapSelectionFromSource = cQTransposeProxyModel_vtable_callback_mapSelectionFromSource
  if not isNil(vtbl[].submit):
    vtbl[].vtbl.submit = cQTransposeProxyModel_vtable_callback_submit
  if not isNil(vtbl[].revert):
    vtbl[].vtbl.revert = cQTransposeProxyModel_vtable_callback_revert
  if not isNil(vtbl[].data):
    vtbl[].vtbl.data = cQTransposeProxyModel_vtable_callback_data
  if not isNil(vtbl[].flags):
    vtbl[].vtbl.flags = cQTransposeProxyModel_vtable_callback_flags
  if not isNil(vtbl[].setData):
    vtbl[].vtbl.setData = cQTransposeProxyModel_vtable_callback_setData
  if not isNil(vtbl[].buddy):
    vtbl[].vtbl.buddy = cQTransposeProxyModel_vtable_callback_buddy
  if not isNil(vtbl[].canFetchMore):
    vtbl[].vtbl.canFetchMore = cQTransposeProxyModel_vtable_callback_canFetchMore
  if not isNil(vtbl[].fetchMore):
    vtbl[].vtbl.fetchMore = cQTransposeProxyModel_vtable_callback_fetchMore
  if not isNil(vtbl[].hasChildren):
    vtbl[].vtbl.hasChildren = cQTransposeProxyModel_vtable_callback_hasChildren
  if not isNil(vtbl[].sibling):
    vtbl[].vtbl.sibling = cQTransposeProxyModel_vtable_callback_sibling
  if not isNil(vtbl[].mimeData):
    vtbl[].vtbl.mimeData = cQTransposeProxyModel_vtable_callback_mimeData
  if not isNil(vtbl[].canDropMimeData):
    vtbl[].vtbl.canDropMimeData = cQTransposeProxyModel_vtable_callback_canDropMimeData
  if not isNil(vtbl[].dropMimeData):
    vtbl[].vtbl.dropMimeData = cQTransposeProxyModel_vtable_callback_dropMimeData
  if not isNil(vtbl[].mimeTypes):
    vtbl[].vtbl.mimeTypes = cQTransposeProxyModel_vtable_callback_mimeTypes
  if not isNil(vtbl[].supportedDragActions):
    vtbl[].vtbl.supportedDragActions = cQTransposeProxyModel_vtable_callback_supportedDragActions
  if not isNil(vtbl[].supportedDropActions):
    vtbl[].vtbl.supportedDropActions = cQTransposeProxyModel_vtable_callback_supportedDropActions
  if not isNil(vtbl[].match):
    vtbl[].vtbl.match = cQTransposeProxyModel_vtable_callback_match
  if not isNil(vtbl[].roleNames):
    vtbl[].vtbl.roleNames = cQTransposeProxyModel_vtable_callback_roleNames
  if not isNil(vtbl[].event):
    vtbl[].vtbl.event = cQTransposeProxyModel_vtable_callback_event
  if not isNil(vtbl[].eventFilter):
    vtbl[].vtbl.eventFilter = cQTransposeProxyModel_vtable_callback_eventFilter
  if not isNil(vtbl[].timerEvent):
    vtbl[].vtbl.timerEvent = cQTransposeProxyModel_vtable_callback_timerEvent
  if not isNil(vtbl[].childEvent):
    vtbl[].vtbl.childEvent = cQTransposeProxyModel_vtable_callback_childEvent
  if not isNil(vtbl[].customEvent):
    vtbl[].vtbl.customEvent = cQTransposeProxyModel_vtable_callback_customEvent
  if not isNil(vtbl[].connectNotify):
    vtbl[].vtbl.connectNotify = cQTransposeProxyModel_vtable_callback_connectNotify
  if not isNil(vtbl[].disconnectNotify):
    vtbl[].vtbl.disconnectNotify = cQTransposeProxyModel_vtable_callback_disconnectNotify
  gen_qtransposeproxymodel_types.QTransposeProxyModel(h: fcQTransposeProxyModel_new2(addr(vtbl[].vtbl), addr(vtbl[]), parent.h), owned: true)

const cQTransposeProxyModel_mvtbl = cQTransposeProxyModelVTable(
  destructor: proc(self: pointer) {.cdecl.} =
    let inst = cast[ptr typeof(VirtualQTransposeProxyModel()[])](self.fcQTransposeProxyModel_vtbl())
    inst[].h = nil
    inst[].owned = false,
  metaObject: cQTransposeProxyModel_method_callback_metaObject,
  metacast: cQTransposeProxyModel_method_callback_metacast,
  metacall: cQTransposeProxyModel_method_callback_metacall,
  setSourceModel: cQTransposeProxyModel_method_callback_setSourceModel,
  rowCount: cQTransposeProxyModel_method_callback_rowCount,
  columnCount: cQTransposeProxyModel_method_callback_columnCount,
  headerData: cQTransposeProxyModel_method_callback_headerData,
  setHeaderData: cQTransposeProxyModel_method_callback_setHeaderData,
  setItemData: cQTransposeProxyModel_method_callback_setItemData,
  span: cQTransposeProxyModel_method_callback_span,
  itemData: cQTransposeProxyModel_method_callback_itemData,
  mapFromSource: cQTransposeProxyModel_method_callback_mapFromSource,
  mapToSource: cQTransposeProxyModel_method_callback_mapToSource,
  parent: cQTransposeProxyModel_method_callback_parent,
  index: cQTransposeProxyModel_method_callback_index,
  insertRows: cQTransposeProxyModel_method_callback_insertRows,
  removeRows: cQTransposeProxyModel_method_callback_removeRows,
  moveRows: cQTransposeProxyModel_method_callback_moveRows,
  insertColumns: cQTransposeProxyModel_method_callback_insertColumns,
  removeColumns: cQTransposeProxyModel_method_callback_removeColumns,
  moveColumns: cQTransposeProxyModel_method_callback_moveColumns,
  sort: cQTransposeProxyModel_method_callback_sort,
  mapSelectionToSource: cQTransposeProxyModel_method_callback_mapSelectionToSource,
  mapSelectionFromSource: cQTransposeProxyModel_method_callback_mapSelectionFromSource,
  submit: cQTransposeProxyModel_method_callback_submit,
  revert: cQTransposeProxyModel_method_callback_revert,
  data: cQTransposeProxyModel_method_callback_data,
  flags: cQTransposeProxyModel_method_callback_flags,
  setData: cQTransposeProxyModel_method_callback_setData,
  buddy: cQTransposeProxyModel_method_callback_buddy,
  canFetchMore: cQTransposeProxyModel_method_callback_canFetchMore,
  fetchMore: cQTransposeProxyModel_method_callback_fetchMore,
  hasChildren: cQTransposeProxyModel_method_callback_hasChildren,
  sibling: cQTransposeProxyModel_method_callback_sibling,
  mimeData: cQTransposeProxyModel_method_callback_mimeData,
  canDropMimeData: cQTransposeProxyModel_method_callback_canDropMimeData,
  dropMimeData: cQTransposeProxyModel_method_callback_dropMimeData,
  mimeTypes: cQTransposeProxyModel_method_callback_mimeTypes,
  supportedDragActions: cQTransposeProxyModel_method_callback_supportedDragActions,
  supportedDropActions: cQTransposeProxyModel_method_callback_supportedDropActions,
  match: cQTransposeProxyModel_method_callback_match,
  roleNames: cQTransposeProxyModel_method_callback_roleNames,
  event: cQTransposeProxyModel_method_callback_event,
  eventFilter: cQTransposeProxyModel_method_callback_eventFilter,
  timerEvent: cQTransposeProxyModel_method_callback_timerEvent,
  childEvent: cQTransposeProxyModel_method_callback_childEvent,
  customEvent: cQTransposeProxyModel_method_callback_customEvent,
  connectNotify: cQTransposeProxyModel_method_callback_connectNotify,
  disconnectNotify: cQTransposeProxyModel_method_callback_disconnectNotify,
)
proc create*(T: type gen_qtransposeproxymodel_types.QTransposeProxyModel,
    inst: VirtualQTransposeProxyModel) =
  if inst[].h != nil: delete(move(inst[]))
  inst[].h = fcQTransposeProxyModel_new(addr(cQTransposeProxyModel_mvtbl), addr(inst[]))
  inst[].owned = true

proc create*(T: type gen_qtransposeproxymodel_types.QTransposeProxyModel,
    parent: gen_qobject_types.QObject,
    inst: VirtualQTransposeProxyModel) =
  if inst[].h != nil: delete(move(inst[]))
  inst[].h = fcQTransposeProxyModel_new2(addr(cQTransposeProxyModel_mvtbl), addr(inst[]), parent.h)
  inst[].owned = true

proc staticMetaObject*(_: type gen_qtransposeproxymodel_types.QTransposeProxyModel): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQTransposeProxyModel_staticMetaObject())
