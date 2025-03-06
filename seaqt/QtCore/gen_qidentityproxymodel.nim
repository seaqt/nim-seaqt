import ./Qt5Core_libs

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

const cflags = gorge("pkg-config --cflags Qt5Core")  & " -fPIC"
{.compile("gen_qidentityproxymodel.cpp", cflags).}


import ./gen_qidentityproxymodel_types
export gen_qidentityproxymodel_types

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

type cQIdentityProxyModel*{.exportc: "QIdentityProxyModel", incompleteStruct.} = object

proc fcQIdentityProxyModel_metaObject(self: pointer, ): pointer {.importc: "QIdentityProxyModel_metaObject".}
proc fcQIdentityProxyModel_metacast(self: pointer, param1: cstring): pointer {.importc: "QIdentityProxyModel_metacast".}
proc fcQIdentityProxyModel_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.importc: "QIdentityProxyModel_metacall".}
proc fcQIdentityProxyModel_tr(s: cstring): struct_miqt_string {.importc: "QIdentityProxyModel_tr".}
proc fcQIdentityProxyModel_trUtf8(s: cstring): struct_miqt_string {.importc: "QIdentityProxyModel_trUtf8".}
proc fcQIdentityProxyModel_columnCount(self: pointer, parent: pointer): cint {.importc: "QIdentityProxyModel_columnCount".}
proc fcQIdentityProxyModel_index(self: pointer, row: cint, column: cint, parent: pointer): pointer {.importc: "QIdentityProxyModel_index".}
proc fcQIdentityProxyModel_mapFromSource(self: pointer, sourceIndex: pointer): pointer {.importc: "QIdentityProxyModel_mapFromSource".}
proc fcQIdentityProxyModel_mapToSource(self: pointer, proxyIndex: pointer): pointer {.importc: "QIdentityProxyModel_mapToSource".}
proc fcQIdentityProxyModel_parent(self: pointer, child: pointer): pointer {.importc: "QIdentityProxyModel_parent".}
proc fcQIdentityProxyModel_rowCount(self: pointer, parent: pointer): cint {.importc: "QIdentityProxyModel_rowCount".}
proc fcQIdentityProxyModel_headerData(self: pointer, section: cint, orientation: cint, role: cint): pointer {.importc: "QIdentityProxyModel_headerData".}
proc fcQIdentityProxyModel_dropMimeData(self: pointer, data: pointer, action: cint, row: cint, column: cint, parent: pointer): bool {.importc: "QIdentityProxyModel_dropMimeData".}
proc fcQIdentityProxyModel_sibling(self: pointer, row: cint, column: cint, idx: pointer): pointer {.importc: "QIdentityProxyModel_sibling".}
proc fcQIdentityProxyModel_mapSelectionFromSource(self: pointer, selection: pointer): pointer {.importc: "QIdentityProxyModel_mapSelectionFromSource".}
proc fcQIdentityProxyModel_mapSelectionToSource(self: pointer, selection: pointer): pointer {.importc: "QIdentityProxyModel_mapSelectionToSource".}
proc fcQIdentityProxyModel_match(self: pointer, start: pointer, role: cint, value: pointer, hits: cint, flags: cint): struct_miqt_array {.importc: "QIdentityProxyModel_match".}
proc fcQIdentityProxyModel_setSourceModel(self: pointer, sourceModel: pointer): void {.importc: "QIdentityProxyModel_setSourceModel".}
proc fcQIdentityProxyModel_insertColumns(self: pointer, column: cint, count: cint, parent: pointer): bool {.importc: "QIdentityProxyModel_insertColumns".}
proc fcQIdentityProxyModel_insertRows(self: pointer, row: cint, count: cint, parent: pointer): bool {.importc: "QIdentityProxyModel_insertRows".}
proc fcQIdentityProxyModel_removeColumns(self: pointer, column: cint, count: cint, parent: pointer): bool {.importc: "QIdentityProxyModel_removeColumns".}
proc fcQIdentityProxyModel_removeRows(self: pointer, row: cint, count: cint, parent: pointer): bool {.importc: "QIdentityProxyModel_removeRows".}
proc fcQIdentityProxyModel_moveRows(self: pointer, sourceParent: pointer, sourceRow: cint, count: cint, destinationParent: pointer, destinationChild: cint): bool {.importc: "QIdentityProxyModel_moveRows".}
proc fcQIdentityProxyModel_moveColumns(self: pointer, sourceParent: pointer, sourceColumn: cint, count: cint, destinationParent: pointer, destinationChild: cint): bool {.importc: "QIdentityProxyModel_moveColumns".}
proc fcQIdentityProxyModel_tr2(s: cstring, c: cstring): struct_miqt_string {.importc: "QIdentityProxyModel_tr2".}
proc fcQIdentityProxyModel_tr3(s: cstring, c: cstring, n: cint): struct_miqt_string {.importc: "QIdentityProxyModel_tr3".}
proc fcQIdentityProxyModel_trUtf82(s: cstring, c: cstring): struct_miqt_string {.importc: "QIdentityProxyModel_trUtf82".}
proc fcQIdentityProxyModel_trUtf83(s: cstring, c: cstring, n: cint): struct_miqt_string {.importc: "QIdentityProxyModel_trUtf83".}
type cQIdentityProxyModelVTable = object
  destructor*: proc(vtbl: ptr cQIdentityProxyModelVTable, self: ptr cQIdentityProxyModel) {.cdecl, raises:[], gcsafe.}
  metaObject*: proc(vtbl, self: pointer, ): pointer {.cdecl, raises: [], gcsafe.}
  metacast*: proc(vtbl, self: pointer, param1: cstring): pointer {.cdecl, raises: [], gcsafe.}
  metacall*: proc(vtbl, self: pointer, param1: cint, param2: cint, param3: pointer): cint {.cdecl, raises: [], gcsafe.}
  columnCount*: proc(vtbl, self: pointer, parent: pointer): cint {.cdecl, raises: [], gcsafe.}
  index*: proc(vtbl, self: pointer, row: cint, column: cint, parent: pointer): pointer {.cdecl, raises: [], gcsafe.}
  mapFromSource*: proc(vtbl, self: pointer, sourceIndex: pointer): pointer {.cdecl, raises: [], gcsafe.}
  mapToSource*: proc(vtbl, self: pointer, proxyIndex: pointer): pointer {.cdecl, raises: [], gcsafe.}
  parent*: proc(vtbl, self: pointer, child: pointer): pointer {.cdecl, raises: [], gcsafe.}
  rowCount*: proc(vtbl, self: pointer, parent: pointer): cint {.cdecl, raises: [], gcsafe.}
  headerData*: proc(vtbl, self: pointer, section: cint, orientation: cint, role: cint): pointer {.cdecl, raises: [], gcsafe.}
  dropMimeData*: proc(vtbl, self: pointer, data: pointer, action: cint, row: cint, column: cint, parent: pointer): bool {.cdecl, raises: [], gcsafe.}
  sibling*: proc(vtbl, self: pointer, row: cint, column: cint, idx: pointer): pointer {.cdecl, raises: [], gcsafe.}
  mapSelectionFromSource*: proc(vtbl, self: pointer, selection: pointer): pointer {.cdecl, raises: [], gcsafe.}
  mapSelectionToSource*: proc(vtbl, self: pointer, selection: pointer): pointer {.cdecl, raises: [], gcsafe.}
  match*: proc(vtbl, self: pointer, start: pointer, role: cint, value: pointer, hits: cint, flags: cint): struct_miqt_array {.cdecl, raises: [], gcsafe.}
  setSourceModel*: proc(vtbl, self: pointer, sourceModel: pointer): void {.cdecl, raises: [], gcsafe.}
  insertColumns*: proc(vtbl, self: pointer, column: cint, count: cint, parent: pointer): bool {.cdecl, raises: [], gcsafe.}
  insertRows*: proc(vtbl, self: pointer, row: cint, count: cint, parent: pointer): bool {.cdecl, raises: [], gcsafe.}
  removeColumns*: proc(vtbl, self: pointer, column: cint, count: cint, parent: pointer): bool {.cdecl, raises: [], gcsafe.}
  removeRows*: proc(vtbl, self: pointer, row: cint, count: cint, parent: pointer): bool {.cdecl, raises: [], gcsafe.}
  moveRows*: proc(vtbl, self: pointer, sourceParent: pointer, sourceRow: cint, count: cint, destinationParent: pointer, destinationChild: cint): bool {.cdecl, raises: [], gcsafe.}
  moveColumns*: proc(vtbl, self: pointer, sourceParent: pointer, sourceColumn: cint, count: cint, destinationParent: pointer, destinationChild: cint): bool {.cdecl, raises: [], gcsafe.}
  submit*: proc(vtbl, self: pointer, ): bool {.cdecl, raises: [], gcsafe.}
  revert*: proc(vtbl, self: pointer, ): void {.cdecl, raises: [], gcsafe.}
  data*: proc(vtbl, self: pointer, proxyIndex: pointer, role: cint): pointer {.cdecl, raises: [], gcsafe.}
  itemData*: proc(vtbl, self: pointer, index: pointer): struct_miqt_map {.cdecl, raises: [], gcsafe.}
  flags*: proc(vtbl, self: pointer, index: pointer): cint {.cdecl, raises: [], gcsafe.}
  setData*: proc(vtbl, self: pointer, index: pointer, value: pointer, role: cint): bool {.cdecl, raises: [], gcsafe.}
  setItemData*: proc(vtbl, self: pointer, index: pointer, roles: struct_miqt_map): bool {.cdecl, raises: [], gcsafe.}
  setHeaderData*: proc(vtbl, self: pointer, section: cint, orientation: cint, value: pointer, role: cint): bool {.cdecl, raises: [], gcsafe.}
  buddy*: proc(vtbl, self: pointer, index: pointer): pointer {.cdecl, raises: [], gcsafe.}
  canFetchMore*: proc(vtbl, self: pointer, parent: pointer): bool {.cdecl, raises: [], gcsafe.}
  fetchMore*: proc(vtbl, self: pointer, parent: pointer): void {.cdecl, raises: [], gcsafe.}
  sort*: proc(vtbl, self: pointer, column: cint, order: cint): void {.cdecl, raises: [], gcsafe.}
  span*: proc(vtbl, self: pointer, index: pointer): pointer {.cdecl, raises: [], gcsafe.}
  hasChildren*: proc(vtbl, self: pointer, parent: pointer): bool {.cdecl, raises: [], gcsafe.}
  mimeData*: proc(vtbl, self: pointer, indexes: struct_miqt_array): pointer {.cdecl, raises: [], gcsafe.}
  canDropMimeData*: proc(vtbl, self: pointer, data: pointer, action: cint, row: cint, column: cint, parent: pointer): bool {.cdecl, raises: [], gcsafe.}
  mimeTypes*: proc(vtbl, self: pointer, ): struct_miqt_array {.cdecl, raises: [], gcsafe.}
  supportedDragActions*: proc(vtbl, self: pointer, ): cint {.cdecl, raises: [], gcsafe.}
  supportedDropActions*: proc(vtbl, self: pointer, ): cint {.cdecl, raises: [], gcsafe.}
  roleNames*: proc(vtbl, self: pointer, ): struct_miqt_map {.cdecl, raises: [], gcsafe.}
  event*: proc(vtbl, self: pointer, event: pointer): bool {.cdecl, raises: [], gcsafe.}
  eventFilter*: proc(vtbl, self: pointer, watched: pointer, event: pointer): bool {.cdecl, raises: [], gcsafe.}
  timerEvent*: proc(vtbl, self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  childEvent*: proc(vtbl, self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  customEvent*: proc(vtbl, self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  connectNotify*: proc(vtbl, self: pointer, signal: pointer): void {.cdecl, raises: [], gcsafe.}
  disconnectNotify*: proc(vtbl, self: pointer, signal: pointer): void {.cdecl, raises: [], gcsafe.}
proc fcQIdentityProxyModel_virtualbase_metaObject(self: pointer, ): pointer {.importc: "QIdentityProxyModel_virtualbase_metaObject".}
proc fcQIdentityProxyModel_virtualbase_metacast(self: pointer, param1: cstring): pointer {.importc: "QIdentityProxyModel_virtualbase_metacast".}
proc fcQIdentityProxyModel_virtualbase_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.importc: "QIdentityProxyModel_virtualbase_metacall".}
proc fcQIdentityProxyModel_virtualbase_columnCount(self: pointer, parent: pointer): cint {.importc: "QIdentityProxyModel_virtualbase_columnCount".}
proc fcQIdentityProxyModel_virtualbase_index(self: pointer, row: cint, column: cint, parent: pointer): pointer {.importc: "QIdentityProxyModel_virtualbase_index".}
proc fcQIdentityProxyModel_virtualbase_mapFromSource(self: pointer, sourceIndex: pointer): pointer {.importc: "QIdentityProxyModel_virtualbase_mapFromSource".}
proc fcQIdentityProxyModel_virtualbase_mapToSource(self: pointer, proxyIndex: pointer): pointer {.importc: "QIdentityProxyModel_virtualbase_mapToSource".}
proc fcQIdentityProxyModel_virtualbase_parent(self: pointer, child: pointer): pointer {.importc: "QIdentityProxyModel_virtualbase_parent".}
proc fcQIdentityProxyModel_virtualbase_rowCount(self: pointer, parent: pointer): cint {.importc: "QIdentityProxyModel_virtualbase_rowCount".}
proc fcQIdentityProxyModel_virtualbase_headerData(self: pointer, section: cint, orientation: cint, role: cint): pointer {.importc: "QIdentityProxyModel_virtualbase_headerData".}
proc fcQIdentityProxyModel_virtualbase_dropMimeData(self: pointer, data: pointer, action: cint, row: cint, column: cint, parent: pointer): bool {.importc: "QIdentityProxyModel_virtualbase_dropMimeData".}
proc fcQIdentityProxyModel_virtualbase_sibling(self: pointer, row: cint, column: cint, idx: pointer): pointer {.importc: "QIdentityProxyModel_virtualbase_sibling".}
proc fcQIdentityProxyModel_virtualbase_mapSelectionFromSource(self: pointer, selection: pointer): pointer {.importc: "QIdentityProxyModel_virtualbase_mapSelectionFromSource".}
proc fcQIdentityProxyModel_virtualbase_mapSelectionToSource(self: pointer, selection: pointer): pointer {.importc: "QIdentityProxyModel_virtualbase_mapSelectionToSource".}
proc fcQIdentityProxyModel_virtualbase_match(self: pointer, start: pointer, role: cint, value: pointer, hits: cint, flags: cint): struct_miqt_array {.importc: "QIdentityProxyModel_virtualbase_match".}
proc fcQIdentityProxyModel_virtualbase_setSourceModel(self: pointer, sourceModel: pointer): void {.importc: "QIdentityProxyModel_virtualbase_setSourceModel".}
proc fcQIdentityProxyModel_virtualbase_insertColumns(self: pointer, column: cint, count: cint, parent: pointer): bool {.importc: "QIdentityProxyModel_virtualbase_insertColumns".}
proc fcQIdentityProxyModel_virtualbase_insertRows(self: pointer, row: cint, count: cint, parent: pointer): bool {.importc: "QIdentityProxyModel_virtualbase_insertRows".}
proc fcQIdentityProxyModel_virtualbase_removeColumns(self: pointer, column: cint, count: cint, parent: pointer): bool {.importc: "QIdentityProxyModel_virtualbase_removeColumns".}
proc fcQIdentityProxyModel_virtualbase_removeRows(self: pointer, row: cint, count: cint, parent: pointer): bool {.importc: "QIdentityProxyModel_virtualbase_removeRows".}
proc fcQIdentityProxyModel_virtualbase_moveRows(self: pointer, sourceParent: pointer, sourceRow: cint, count: cint, destinationParent: pointer, destinationChild: cint): bool {.importc: "QIdentityProxyModel_virtualbase_moveRows".}
proc fcQIdentityProxyModel_virtualbase_moveColumns(self: pointer, sourceParent: pointer, sourceColumn: cint, count: cint, destinationParent: pointer, destinationChild: cint): bool {.importc: "QIdentityProxyModel_virtualbase_moveColumns".}
proc fcQIdentityProxyModel_virtualbase_submit(self: pointer, ): bool {.importc: "QIdentityProxyModel_virtualbase_submit".}
proc fcQIdentityProxyModel_virtualbase_revert(self: pointer, ): void {.importc: "QIdentityProxyModel_virtualbase_revert".}
proc fcQIdentityProxyModel_virtualbase_data(self: pointer, proxyIndex: pointer, role: cint): pointer {.importc: "QIdentityProxyModel_virtualbase_data".}
proc fcQIdentityProxyModel_virtualbase_itemData(self: pointer, index: pointer): struct_miqt_map {.importc: "QIdentityProxyModel_virtualbase_itemData".}
proc fcQIdentityProxyModel_virtualbase_flags(self: pointer, index: pointer): cint {.importc: "QIdentityProxyModel_virtualbase_flags".}
proc fcQIdentityProxyModel_virtualbase_setData(self: pointer, index: pointer, value: pointer, role: cint): bool {.importc: "QIdentityProxyModel_virtualbase_setData".}
proc fcQIdentityProxyModel_virtualbase_setItemData(self: pointer, index: pointer, roles: struct_miqt_map): bool {.importc: "QIdentityProxyModel_virtualbase_setItemData".}
proc fcQIdentityProxyModel_virtualbase_setHeaderData(self: pointer, section: cint, orientation: cint, value: pointer, role: cint): bool {.importc: "QIdentityProxyModel_virtualbase_setHeaderData".}
proc fcQIdentityProxyModel_virtualbase_buddy(self: pointer, index: pointer): pointer {.importc: "QIdentityProxyModel_virtualbase_buddy".}
proc fcQIdentityProxyModel_virtualbase_canFetchMore(self: pointer, parent: pointer): bool {.importc: "QIdentityProxyModel_virtualbase_canFetchMore".}
proc fcQIdentityProxyModel_virtualbase_fetchMore(self: pointer, parent: pointer): void {.importc: "QIdentityProxyModel_virtualbase_fetchMore".}
proc fcQIdentityProxyModel_virtualbase_sort(self: pointer, column: cint, order: cint): void {.importc: "QIdentityProxyModel_virtualbase_sort".}
proc fcQIdentityProxyModel_virtualbase_span(self: pointer, index: pointer): pointer {.importc: "QIdentityProxyModel_virtualbase_span".}
proc fcQIdentityProxyModel_virtualbase_hasChildren(self: pointer, parent: pointer): bool {.importc: "QIdentityProxyModel_virtualbase_hasChildren".}
proc fcQIdentityProxyModel_virtualbase_mimeData(self: pointer, indexes: struct_miqt_array): pointer {.importc: "QIdentityProxyModel_virtualbase_mimeData".}
proc fcQIdentityProxyModel_virtualbase_canDropMimeData(self: pointer, data: pointer, action: cint, row: cint, column: cint, parent: pointer): bool {.importc: "QIdentityProxyModel_virtualbase_canDropMimeData".}
proc fcQIdentityProxyModel_virtualbase_mimeTypes(self: pointer, ): struct_miqt_array {.importc: "QIdentityProxyModel_virtualbase_mimeTypes".}
proc fcQIdentityProxyModel_virtualbase_supportedDragActions(self: pointer, ): cint {.importc: "QIdentityProxyModel_virtualbase_supportedDragActions".}
proc fcQIdentityProxyModel_virtualbase_supportedDropActions(self: pointer, ): cint {.importc: "QIdentityProxyModel_virtualbase_supportedDropActions".}
proc fcQIdentityProxyModel_virtualbase_roleNames(self: pointer, ): struct_miqt_map {.importc: "QIdentityProxyModel_virtualbase_roleNames".}
proc fcQIdentityProxyModel_virtualbase_event(self: pointer, event: pointer): bool {.importc: "QIdentityProxyModel_virtualbase_event".}
proc fcQIdentityProxyModel_virtualbase_eventFilter(self: pointer, watched: pointer, event: pointer): bool {.importc: "QIdentityProxyModel_virtualbase_eventFilter".}
proc fcQIdentityProxyModel_virtualbase_timerEvent(self: pointer, event: pointer): void {.importc: "QIdentityProxyModel_virtualbase_timerEvent".}
proc fcQIdentityProxyModel_virtualbase_childEvent(self: pointer, event: pointer): void {.importc: "QIdentityProxyModel_virtualbase_childEvent".}
proc fcQIdentityProxyModel_virtualbase_customEvent(self: pointer, event: pointer): void {.importc: "QIdentityProxyModel_virtualbase_customEvent".}
proc fcQIdentityProxyModel_virtualbase_connectNotify(self: pointer, signal: pointer): void {.importc: "QIdentityProxyModel_virtualbase_connectNotify".}
proc fcQIdentityProxyModel_virtualbase_disconnectNotify(self: pointer, signal: pointer): void {.importc: "QIdentityProxyModel_virtualbase_disconnectNotify".}
proc fcQIdentityProxyModel_protectedbase_resetInternalData(self: pointer, ): void {.importc: "QIdentityProxyModel_protectedbase_resetInternalData".}
proc fcQIdentityProxyModel_protectedbase_createIndex(self: pointer, row: cint, column: cint): pointer {.importc: "QIdentityProxyModel_protectedbase_createIndex".}
proc fcQIdentityProxyModel_protectedbase_encodeData(self: pointer, indexes: struct_miqt_array, stream: pointer): void {.importc: "QIdentityProxyModel_protectedbase_encodeData".}
proc fcQIdentityProxyModel_protectedbase_decodeData(self: pointer, row: cint, column: cint, parent: pointer, stream: pointer): bool {.importc: "QIdentityProxyModel_protectedbase_decodeData".}
proc fcQIdentityProxyModel_protectedbase_beginInsertRows(self: pointer, parent: pointer, first: cint, last: cint): void {.importc: "QIdentityProxyModel_protectedbase_beginInsertRows".}
proc fcQIdentityProxyModel_protectedbase_endInsertRows(self: pointer, ): void {.importc: "QIdentityProxyModel_protectedbase_endInsertRows".}
proc fcQIdentityProxyModel_protectedbase_beginRemoveRows(self: pointer, parent: pointer, first: cint, last: cint): void {.importc: "QIdentityProxyModel_protectedbase_beginRemoveRows".}
proc fcQIdentityProxyModel_protectedbase_endRemoveRows(self: pointer, ): void {.importc: "QIdentityProxyModel_protectedbase_endRemoveRows".}
proc fcQIdentityProxyModel_protectedbase_beginMoveRows(self: pointer, sourceParent: pointer, sourceFirst: cint, sourceLast: cint, destinationParent: pointer, destinationRow: cint): bool {.importc: "QIdentityProxyModel_protectedbase_beginMoveRows".}
proc fcQIdentityProxyModel_protectedbase_endMoveRows(self: pointer, ): void {.importc: "QIdentityProxyModel_protectedbase_endMoveRows".}
proc fcQIdentityProxyModel_protectedbase_beginInsertColumns(self: pointer, parent: pointer, first: cint, last: cint): void {.importc: "QIdentityProxyModel_protectedbase_beginInsertColumns".}
proc fcQIdentityProxyModel_protectedbase_endInsertColumns(self: pointer, ): void {.importc: "QIdentityProxyModel_protectedbase_endInsertColumns".}
proc fcQIdentityProxyModel_protectedbase_beginRemoveColumns(self: pointer, parent: pointer, first: cint, last: cint): void {.importc: "QIdentityProxyModel_protectedbase_beginRemoveColumns".}
proc fcQIdentityProxyModel_protectedbase_endRemoveColumns(self: pointer, ): void {.importc: "QIdentityProxyModel_protectedbase_endRemoveColumns".}
proc fcQIdentityProxyModel_protectedbase_beginMoveColumns(self: pointer, sourceParent: pointer, sourceFirst: cint, sourceLast: cint, destinationParent: pointer, destinationColumn: cint): bool {.importc: "QIdentityProxyModel_protectedbase_beginMoveColumns".}
proc fcQIdentityProxyModel_protectedbase_endMoveColumns(self: pointer, ): void {.importc: "QIdentityProxyModel_protectedbase_endMoveColumns".}
proc fcQIdentityProxyModel_protectedbase_beginResetModel(self: pointer, ): void {.importc: "QIdentityProxyModel_protectedbase_beginResetModel".}
proc fcQIdentityProxyModel_protectedbase_endResetModel(self: pointer, ): void {.importc: "QIdentityProxyModel_protectedbase_endResetModel".}
proc fcQIdentityProxyModel_protectedbase_changePersistentIndex(self: pointer, fromVal: pointer, to: pointer): void {.importc: "QIdentityProxyModel_protectedbase_changePersistentIndex".}
proc fcQIdentityProxyModel_protectedbase_changePersistentIndexList(self: pointer, fromVal: struct_miqt_array, to: struct_miqt_array): void {.importc: "QIdentityProxyModel_protectedbase_changePersistentIndexList".}
proc fcQIdentityProxyModel_protectedbase_persistentIndexList(self: pointer, ): struct_miqt_array {.importc: "QIdentityProxyModel_protectedbase_persistentIndexList".}
proc fcQIdentityProxyModel_protectedbase_sender(self: pointer, ): pointer {.importc: "QIdentityProxyModel_protectedbase_sender".}
proc fcQIdentityProxyModel_protectedbase_senderSignalIndex(self: pointer, ): cint {.importc: "QIdentityProxyModel_protectedbase_senderSignalIndex".}
proc fcQIdentityProxyModel_protectedbase_receivers(self: pointer, signal: cstring): cint {.importc: "QIdentityProxyModel_protectedbase_receivers".}
proc fcQIdentityProxyModel_protectedbase_isSignalConnected(self: pointer, signal: pointer): bool {.importc: "QIdentityProxyModel_protectedbase_isSignalConnected".}
proc fcQIdentityProxyModel_new(vtbl: pointer, ): ptr cQIdentityProxyModel {.importc: "QIdentityProxyModel_new".}
proc fcQIdentityProxyModel_new2(vtbl: pointer, parent: pointer): ptr cQIdentityProxyModel {.importc: "QIdentityProxyModel_new2".}
proc fcQIdentityProxyModel_staticMetaObject(): pointer {.importc: "QIdentityProxyModel_staticMetaObject".}
proc fcQIdentityProxyModel_delete(self: pointer) {.importc: "QIdentityProxyModel_delete".}

proc metaObject*(self: gen_qidentityproxymodel_types.QIdentityProxyModel, ): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQIdentityProxyModel_metaObject(self.h))

proc metacast*(self: gen_qidentityproxymodel_types.QIdentityProxyModel, param1: cstring): pointer =
  fcQIdentityProxyModel_metacast(self.h, param1)

proc metacall*(self: gen_qidentityproxymodel_types.QIdentityProxyModel, param1: cint, param2: cint, param3: pointer): cint =
  fcQIdentityProxyModel_metacall(self.h, cint(param1), param2, param3)

proc tr*(_: type gen_qidentityproxymodel_types.QIdentityProxyModel, s: cstring): string =
  let v_ms = fcQIdentityProxyModel_tr(s)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc trUtf8*(_: type gen_qidentityproxymodel_types.QIdentityProxyModel, s: cstring): string =
  let v_ms = fcQIdentityProxyModel_trUtf8(s)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc columnCount*(self: gen_qidentityproxymodel_types.QIdentityProxyModel, parent: gen_qabstractitemmodel_types.QModelIndex): cint =
  fcQIdentityProxyModel_columnCount(self.h, parent.h)

proc index*(self: gen_qidentityproxymodel_types.QIdentityProxyModel, row: cint, column: cint, parent: gen_qabstractitemmodel_types.QModelIndex): gen_qabstractitemmodel_types.QModelIndex =
  gen_qabstractitemmodel_types.QModelIndex(h: fcQIdentityProxyModel_index(self.h, row, column, parent.h))

proc mapFromSource*(self: gen_qidentityproxymodel_types.QIdentityProxyModel, sourceIndex: gen_qabstractitemmodel_types.QModelIndex): gen_qabstractitemmodel_types.QModelIndex =
  gen_qabstractitemmodel_types.QModelIndex(h: fcQIdentityProxyModel_mapFromSource(self.h, sourceIndex.h))

proc mapToSource*(self: gen_qidentityproxymodel_types.QIdentityProxyModel, proxyIndex: gen_qabstractitemmodel_types.QModelIndex): gen_qabstractitemmodel_types.QModelIndex =
  gen_qabstractitemmodel_types.QModelIndex(h: fcQIdentityProxyModel_mapToSource(self.h, proxyIndex.h))

proc parent*(self: gen_qidentityproxymodel_types.QIdentityProxyModel, child: gen_qabstractitemmodel_types.QModelIndex): gen_qabstractitemmodel_types.QModelIndex =
  gen_qabstractitemmodel_types.QModelIndex(h: fcQIdentityProxyModel_parent(self.h, child.h))

proc rowCount*(self: gen_qidentityproxymodel_types.QIdentityProxyModel, parent: gen_qabstractitemmodel_types.QModelIndex): cint =
  fcQIdentityProxyModel_rowCount(self.h, parent.h)

proc headerData*(self: gen_qidentityproxymodel_types.QIdentityProxyModel, section: cint, orientation: cint, role: cint): gen_qvariant_types.QVariant =
  gen_qvariant_types.QVariant(h: fcQIdentityProxyModel_headerData(self.h, section, cint(orientation), role))

proc dropMimeData*(self: gen_qidentityproxymodel_types.QIdentityProxyModel, data: gen_qmimedata_types.QMimeData, action: cint, row: cint, column: cint, parent: gen_qabstractitemmodel_types.QModelIndex): bool =
  fcQIdentityProxyModel_dropMimeData(self.h, data.h, cint(action), row, column, parent.h)

proc sibling*(self: gen_qidentityproxymodel_types.QIdentityProxyModel, row: cint, column: cint, idx: gen_qabstractitemmodel_types.QModelIndex): gen_qabstractitemmodel_types.QModelIndex =
  gen_qabstractitemmodel_types.QModelIndex(h: fcQIdentityProxyModel_sibling(self.h, row, column, idx.h))

proc mapSelectionFromSource*(self: gen_qidentityproxymodel_types.QIdentityProxyModel, selection: gen_qitemselectionmodel_types.QItemSelection): gen_qitemselectionmodel_types.QItemSelection =
  gen_qitemselectionmodel_types.QItemSelection(h: fcQIdentityProxyModel_mapSelectionFromSource(self.h, selection.h))

proc mapSelectionToSource*(self: gen_qidentityproxymodel_types.QIdentityProxyModel, selection: gen_qitemselectionmodel_types.QItemSelection): gen_qitemselectionmodel_types.QItemSelection =
  gen_qitemselectionmodel_types.QItemSelection(h: fcQIdentityProxyModel_mapSelectionToSource(self.h, selection.h))

proc match*(self: gen_qidentityproxymodel_types.QIdentityProxyModel, start: gen_qabstractitemmodel_types.QModelIndex, role: cint, value: gen_qvariant_types.QVariant, hits: cint, flags: cint): seq[gen_qabstractitemmodel_types.QModelIndex] =
  var v_ma = fcQIdentityProxyModel_match(self.h, start.h, role, value.h, hits, cint(flags))
  var vx_ret = newSeq[gen_qabstractitemmodel_types.QModelIndex](int(v_ma.len))
  let v_outCast = cast[ptr UncheckedArray[pointer]](v_ma.data)
  for i in 0 ..< v_ma.len:
    vx_ret[i] = gen_qabstractitemmodel_types.QModelIndex(h: v_outCast[i])
  c_free(v_ma.data)
  vx_ret

proc setSourceModel*(self: gen_qidentityproxymodel_types.QIdentityProxyModel, sourceModel: gen_qabstractitemmodel_types.QAbstractItemModel): void =
  fcQIdentityProxyModel_setSourceModel(self.h, sourceModel.h)

proc insertColumns*(self: gen_qidentityproxymodel_types.QIdentityProxyModel, column: cint, count: cint, parent: gen_qabstractitemmodel_types.QModelIndex): bool =
  fcQIdentityProxyModel_insertColumns(self.h, column, count, parent.h)

proc insertRows*(self: gen_qidentityproxymodel_types.QIdentityProxyModel, row: cint, count: cint, parent: gen_qabstractitemmodel_types.QModelIndex): bool =
  fcQIdentityProxyModel_insertRows(self.h, row, count, parent.h)

proc removeColumns*(self: gen_qidentityproxymodel_types.QIdentityProxyModel, column: cint, count: cint, parent: gen_qabstractitemmodel_types.QModelIndex): bool =
  fcQIdentityProxyModel_removeColumns(self.h, column, count, parent.h)

proc removeRows*(self: gen_qidentityproxymodel_types.QIdentityProxyModel, row: cint, count: cint, parent: gen_qabstractitemmodel_types.QModelIndex): bool =
  fcQIdentityProxyModel_removeRows(self.h, row, count, parent.h)

proc moveRows*(self: gen_qidentityproxymodel_types.QIdentityProxyModel, sourceParent: gen_qabstractitemmodel_types.QModelIndex, sourceRow: cint, count: cint, destinationParent: gen_qabstractitemmodel_types.QModelIndex, destinationChild: cint): bool =
  fcQIdentityProxyModel_moveRows(self.h, sourceParent.h, sourceRow, count, destinationParent.h, destinationChild)

proc moveColumns*(self: gen_qidentityproxymodel_types.QIdentityProxyModel, sourceParent: gen_qabstractitemmodel_types.QModelIndex, sourceColumn: cint, count: cint, destinationParent: gen_qabstractitemmodel_types.QModelIndex, destinationChild: cint): bool =
  fcQIdentityProxyModel_moveColumns(self.h, sourceParent.h, sourceColumn, count, destinationParent.h, destinationChild)

proc tr*(_: type gen_qidentityproxymodel_types.QIdentityProxyModel, s: cstring, c: cstring): string =
  let v_ms = fcQIdentityProxyModel_tr2(s, c)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc tr*(_: type gen_qidentityproxymodel_types.QIdentityProxyModel, s: cstring, c: cstring, n: cint): string =
  let v_ms = fcQIdentityProxyModel_tr3(s, c, n)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc trUtf8*(_: type gen_qidentityproxymodel_types.QIdentityProxyModel, s: cstring, c: cstring): string =
  let v_ms = fcQIdentityProxyModel_trUtf82(s, c)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc trUtf8*(_: type gen_qidentityproxymodel_types.QIdentityProxyModel, s: cstring, c: cstring, n: cint): string =
  let v_ms = fcQIdentityProxyModel_trUtf83(s, c, n)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

type QIdentityProxyModelmetaObjectProc* = proc(self: QIdentityProxyModel): gen_qobjectdefs_types.QMetaObject {.raises: [], gcsafe.}
type QIdentityProxyModelmetacastProc* = proc(self: QIdentityProxyModel, param1: cstring): pointer {.raises: [], gcsafe.}
type QIdentityProxyModelmetacallProc* = proc(self: QIdentityProxyModel, param1: cint, param2: cint, param3: pointer): cint {.raises: [], gcsafe.}
type QIdentityProxyModelcolumnCountProc* = proc(self: QIdentityProxyModel, parent: gen_qabstractitemmodel_types.QModelIndex): cint {.raises: [], gcsafe.}
type QIdentityProxyModelindexProc* = proc(self: QIdentityProxyModel, row: cint, column: cint, parent: gen_qabstractitemmodel_types.QModelIndex): gen_qabstractitemmodel_types.QModelIndex {.raises: [], gcsafe.}
type QIdentityProxyModelmapFromSourceProc* = proc(self: QIdentityProxyModel, sourceIndex: gen_qabstractitemmodel_types.QModelIndex): gen_qabstractitemmodel_types.QModelIndex {.raises: [], gcsafe.}
type QIdentityProxyModelmapToSourceProc* = proc(self: QIdentityProxyModel, proxyIndex: gen_qabstractitemmodel_types.QModelIndex): gen_qabstractitemmodel_types.QModelIndex {.raises: [], gcsafe.}
type QIdentityProxyModelparentProc* = proc(self: QIdentityProxyModel, child: gen_qabstractitemmodel_types.QModelIndex): gen_qabstractitemmodel_types.QModelIndex {.raises: [], gcsafe.}
type QIdentityProxyModelrowCountProc* = proc(self: QIdentityProxyModel, parent: gen_qabstractitemmodel_types.QModelIndex): cint {.raises: [], gcsafe.}
type QIdentityProxyModelheaderDataProc* = proc(self: QIdentityProxyModel, section: cint, orientation: cint, role: cint): gen_qvariant_types.QVariant {.raises: [], gcsafe.}
type QIdentityProxyModeldropMimeDataProc* = proc(self: QIdentityProxyModel, data: gen_qmimedata_types.QMimeData, action: cint, row: cint, column: cint, parent: gen_qabstractitemmodel_types.QModelIndex): bool {.raises: [], gcsafe.}
type QIdentityProxyModelsiblingProc* = proc(self: QIdentityProxyModel, row: cint, column: cint, idx: gen_qabstractitemmodel_types.QModelIndex): gen_qabstractitemmodel_types.QModelIndex {.raises: [], gcsafe.}
type QIdentityProxyModelmapSelectionFromSourceProc* = proc(self: QIdentityProxyModel, selection: gen_qitemselectionmodel_types.QItemSelection): gen_qitemselectionmodel_types.QItemSelection {.raises: [], gcsafe.}
type QIdentityProxyModelmapSelectionToSourceProc* = proc(self: QIdentityProxyModel, selection: gen_qitemselectionmodel_types.QItemSelection): gen_qitemselectionmodel_types.QItemSelection {.raises: [], gcsafe.}
type QIdentityProxyModelmatchProc* = proc(self: QIdentityProxyModel, start: gen_qabstractitemmodel_types.QModelIndex, role: cint, value: gen_qvariant_types.QVariant, hits: cint, flags: cint): seq[gen_qabstractitemmodel_types.QModelIndex] {.raises: [], gcsafe.}
type QIdentityProxyModelsetSourceModelProc* = proc(self: QIdentityProxyModel, sourceModel: gen_qabstractitemmodel_types.QAbstractItemModel): void {.raises: [], gcsafe.}
type QIdentityProxyModelinsertColumnsProc* = proc(self: QIdentityProxyModel, column: cint, count: cint, parent: gen_qabstractitemmodel_types.QModelIndex): bool {.raises: [], gcsafe.}
type QIdentityProxyModelinsertRowsProc* = proc(self: QIdentityProxyModel, row: cint, count: cint, parent: gen_qabstractitemmodel_types.QModelIndex): bool {.raises: [], gcsafe.}
type QIdentityProxyModelremoveColumnsProc* = proc(self: QIdentityProxyModel, column: cint, count: cint, parent: gen_qabstractitemmodel_types.QModelIndex): bool {.raises: [], gcsafe.}
type QIdentityProxyModelremoveRowsProc* = proc(self: QIdentityProxyModel, row: cint, count: cint, parent: gen_qabstractitemmodel_types.QModelIndex): bool {.raises: [], gcsafe.}
type QIdentityProxyModelmoveRowsProc* = proc(self: QIdentityProxyModel, sourceParent: gen_qabstractitemmodel_types.QModelIndex, sourceRow: cint, count: cint, destinationParent: gen_qabstractitemmodel_types.QModelIndex, destinationChild: cint): bool {.raises: [], gcsafe.}
type QIdentityProxyModelmoveColumnsProc* = proc(self: QIdentityProxyModel, sourceParent: gen_qabstractitemmodel_types.QModelIndex, sourceColumn: cint, count: cint, destinationParent: gen_qabstractitemmodel_types.QModelIndex, destinationChild: cint): bool {.raises: [], gcsafe.}
type QIdentityProxyModelsubmitProc* = proc(self: QIdentityProxyModel): bool {.raises: [], gcsafe.}
type QIdentityProxyModelrevertProc* = proc(self: QIdentityProxyModel): void {.raises: [], gcsafe.}
type QIdentityProxyModeldataProc* = proc(self: QIdentityProxyModel, proxyIndex: gen_qabstractitemmodel_types.QModelIndex, role: cint): gen_qvariant_types.QVariant {.raises: [], gcsafe.}
type QIdentityProxyModelitemDataProc* = proc(self: QIdentityProxyModel, index: gen_qabstractitemmodel_types.QModelIndex): Table[cint,gen_qvariant_types.QVariant] {.raises: [], gcsafe.}
type QIdentityProxyModelflagsProc* = proc(self: QIdentityProxyModel, index: gen_qabstractitemmodel_types.QModelIndex): cint {.raises: [], gcsafe.}
type QIdentityProxyModelsetDataProc* = proc(self: QIdentityProxyModel, index: gen_qabstractitemmodel_types.QModelIndex, value: gen_qvariant_types.QVariant, role: cint): bool {.raises: [], gcsafe.}
type QIdentityProxyModelsetItemDataProc* = proc(self: QIdentityProxyModel, index: gen_qabstractitemmodel_types.QModelIndex, roles: Table[cint,gen_qvariant_types.QVariant]): bool {.raises: [], gcsafe.}
type QIdentityProxyModelsetHeaderDataProc* = proc(self: QIdentityProxyModel, section: cint, orientation: cint, value: gen_qvariant_types.QVariant, role: cint): bool {.raises: [], gcsafe.}
type QIdentityProxyModelbuddyProc* = proc(self: QIdentityProxyModel, index: gen_qabstractitemmodel_types.QModelIndex): gen_qabstractitemmodel_types.QModelIndex {.raises: [], gcsafe.}
type QIdentityProxyModelcanFetchMoreProc* = proc(self: QIdentityProxyModel, parent: gen_qabstractitemmodel_types.QModelIndex): bool {.raises: [], gcsafe.}
type QIdentityProxyModelfetchMoreProc* = proc(self: QIdentityProxyModel, parent: gen_qabstractitemmodel_types.QModelIndex): void {.raises: [], gcsafe.}
type QIdentityProxyModelsortProc* = proc(self: QIdentityProxyModel, column: cint, order: cint): void {.raises: [], gcsafe.}
type QIdentityProxyModelspanProc* = proc(self: QIdentityProxyModel, index: gen_qabstractitemmodel_types.QModelIndex): gen_qsize_types.QSize {.raises: [], gcsafe.}
type QIdentityProxyModelhasChildrenProc* = proc(self: QIdentityProxyModel, parent: gen_qabstractitemmodel_types.QModelIndex): bool {.raises: [], gcsafe.}
type QIdentityProxyModelmimeDataProc* = proc(self: QIdentityProxyModel, indexes: seq[gen_qabstractitemmodel_types.QModelIndex]): gen_qmimedata_types.QMimeData {.raises: [], gcsafe.}
type QIdentityProxyModelcanDropMimeDataProc* = proc(self: QIdentityProxyModel, data: gen_qmimedata_types.QMimeData, action: cint, row: cint, column: cint, parent: gen_qabstractitemmodel_types.QModelIndex): bool {.raises: [], gcsafe.}
type QIdentityProxyModelmimeTypesProc* = proc(self: QIdentityProxyModel): seq[string] {.raises: [], gcsafe.}
type QIdentityProxyModelsupportedDragActionsProc* = proc(self: QIdentityProxyModel): cint {.raises: [], gcsafe.}
type QIdentityProxyModelsupportedDropActionsProc* = proc(self: QIdentityProxyModel): cint {.raises: [], gcsafe.}
type QIdentityProxyModelroleNamesProc* = proc(self: QIdentityProxyModel): Table[cint,seq[byte]] {.raises: [], gcsafe.}
type QIdentityProxyModeleventProc* = proc(self: QIdentityProxyModel, event: gen_qcoreevent_types.QEvent): bool {.raises: [], gcsafe.}
type QIdentityProxyModeleventFilterProc* = proc(self: QIdentityProxyModel, watched: gen_qobject_types.QObject, event: gen_qcoreevent_types.QEvent): bool {.raises: [], gcsafe.}
type QIdentityProxyModeltimerEventProc* = proc(self: QIdentityProxyModel, event: gen_qcoreevent_types.QTimerEvent): void {.raises: [], gcsafe.}
type QIdentityProxyModelchildEventProc* = proc(self: QIdentityProxyModel, event: gen_qcoreevent_types.QChildEvent): void {.raises: [], gcsafe.}
type QIdentityProxyModelcustomEventProc* = proc(self: QIdentityProxyModel, event: gen_qcoreevent_types.QEvent): void {.raises: [], gcsafe.}
type QIdentityProxyModelconnectNotifyProc* = proc(self: QIdentityProxyModel, signal: gen_qmetaobject_types.QMetaMethod): void {.raises: [], gcsafe.}
type QIdentityProxyModeldisconnectNotifyProc* = proc(self: QIdentityProxyModel, signal: gen_qmetaobject_types.QMetaMethod): void {.raises: [], gcsafe.}
type QIdentityProxyModelVTable* = object
  vtbl: cQIdentityProxyModelVTable
  metaObject*: QIdentityProxyModelmetaObjectProc
  metacast*: QIdentityProxyModelmetacastProc
  metacall*: QIdentityProxyModelmetacallProc
  columnCount*: QIdentityProxyModelcolumnCountProc
  index*: QIdentityProxyModelindexProc
  mapFromSource*: QIdentityProxyModelmapFromSourceProc
  mapToSource*: QIdentityProxyModelmapToSourceProc
  parent*: QIdentityProxyModelparentProc
  rowCount*: QIdentityProxyModelrowCountProc
  headerData*: QIdentityProxyModelheaderDataProc
  dropMimeData*: QIdentityProxyModeldropMimeDataProc
  sibling*: QIdentityProxyModelsiblingProc
  mapSelectionFromSource*: QIdentityProxyModelmapSelectionFromSourceProc
  mapSelectionToSource*: QIdentityProxyModelmapSelectionToSourceProc
  match*: QIdentityProxyModelmatchProc
  setSourceModel*: QIdentityProxyModelsetSourceModelProc
  insertColumns*: QIdentityProxyModelinsertColumnsProc
  insertRows*: QIdentityProxyModelinsertRowsProc
  removeColumns*: QIdentityProxyModelremoveColumnsProc
  removeRows*: QIdentityProxyModelremoveRowsProc
  moveRows*: QIdentityProxyModelmoveRowsProc
  moveColumns*: QIdentityProxyModelmoveColumnsProc
  submit*: QIdentityProxyModelsubmitProc
  revert*: QIdentityProxyModelrevertProc
  data*: QIdentityProxyModeldataProc
  itemData*: QIdentityProxyModelitemDataProc
  flags*: QIdentityProxyModelflagsProc
  setData*: QIdentityProxyModelsetDataProc
  setItemData*: QIdentityProxyModelsetItemDataProc
  setHeaderData*: QIdentityProxyModelsetHeaderDataProc
  buddy*: QIdentityProxyModelbuddyProc
  canFetchMore*: QIdentityProxyModelcanFetchMoreProc
  fetchMore*: QIdentityProxyModelfetchMoreProc
  sort*: QIdentityProxyModelsortProc
  span*: QIdentityProxyModelspanProc
  hasChildren*: QIdentityProxyModelhasChildrenProc
  mimeData*: QIdentityProxyModelmimeDataProc
  canDropMimeData*: QIdentityProxyModelcanDropMimeDataProc
  mimeTypes*: QIdentityProxyModelmimeTypesProc
  supportedDragActions*: QIdentityProxyModelsupportedDragActionsProc
  supportedDropActions*: QIdentityProxyModelsupportedDropActionsProc
  roleNames*: QIdentityProxyModelroleNamesProc
  event*: QIdentityProxyModeleventProc
  eventFilter*: QIdentityProxyModeleventFilterProc
  timerEvent*: QIdentityProxyModeltimerEventProc
  childEvent*: QIdentityProxyModelchildEventProc
  customEvent*: QIdentityProxyModelcustomEventProc
  connectNotify*: QIdentityProxyModelconnectNotifyProc
  disconnectNotify*: QIdentityProxyModeldisconnectNotifyProc
proc QIdentityProxyModelmetaObject*(self: gen_qidentityproxymodel_types.QIdentityProxyModel, ): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQIdentityProxyModel_virtualbase_metaObject(self.h))

proc miqt_exec_callback_cQIdentityProxyModel_metaObject(vtbl: pointer, self: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QIdentityProxyModelVTable](vtbl)
  let self = QIdentityProxyModel(h: self)
  var virtualReturn = vtbl[].metaObject(self)
  virtualReturn.h

proc QIdentityProxyModelmetacast*(self: gen_qidentityproxymodel_types.QIdentityProxyModel, param1: cstring): pointer =
  fcQIdentityProxyModel_virtualbase_metacast(self.h, param1)

proc miqt_exec_callback_cQIdentityProxyModel_metacast(vtbl: pointer, self: pointer, param1: cstring): pointer {.cdecl.} =
  let vtbl = cast[ptr QIdentityProxyModelVTable](vtbl)
  let self = QIdentityProxyModel(h: self)
  let slotval1 = (param1)
  var virtualReturn = vtbl[].metacast(self, slotval1)
  virtualReturn

proc QIdentityProxyModelmetacall*(self: gen_qidentityproxymodel_types.QIdentityProxyModel, param1: cint, param2: cint, param3: pointer): cint =
  fcQIdentityProxyModel_virtualbase_metacall(self.h, cint(param1), param2, param3)

proc miqt_exec_callback_cQIdentityProxyModel_metacall(vtbl: pointer, self: pointer, param1: cint, param2: cint, param3: pointer): cint {.cdecl.} =
  let vtbl = cast[ptr QIdentityProxyModelVTable](vtbl)
  let self = QIdentityProxyModel(h: self)
  let slotval1 = cint(param1)
  let slotval2 = param2
  let slotval3 = param3
  var virtualReturn = vtbl[].metacall(self, slotval1, slotval2, slotval3)
  virtualReturn

proc QIdentityProxyModelcolumnCount*(self: gen_qidentityproxymodel_types.QIdentityProxyModel, parent: gen_qabstractitemmodel_types.QModelIndex): cint =
  fcQIdentityProxyModel_virtualbase_columnCount(self.h, parent.h)

proc miqt_exec_callback_cQIdentityProxyModel_columnCount(vtbl: pointer, self: pointer, parent: pointer): cint {.cdecl.} =
  let vtbl = cast[ptr QIdentityProxyModelVTable](vtbl)
  let self = QIdentityProxyModel(h: self)
  let slotval1 = gen_qabstractitemmodel_types.QModelIndex(h: parent)
  var virtualReturn = vtbl[].columnCount(self, slotval1)
  virtualReturn

proc QIdentityProxyModelindex*(self: gen_qidentityproxymodel_types.QIdentityProxyModel, row: cint, column: cint, parent: gen_qabstractitemmodel_types.QModelIndex): gen_qabstractitemmodel_types.QModelIndex =
  gen_qabstractitemmodel_types.QModelIndex(h: fcQIdentityProxyModel_virtualbase_index(self.h, row, column, parent.h))

proc miqt_exec_callback_cQIdentityProxyModel_index(vtbl: pointer, self: pointer, row: cint, column: cint, parent: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QIdentityProxyModelVTable](vtbl)
  let self = QIdentityProxyModel(h: self)
  let slotval1 = row
  let slotval2 = column
  let slotval3 = gen_qabstractitemmodel_types.QModelIndex(h: parent)
  var virtualReturn = vtbl[].index(self, slotval1, slotval2, slotval3)
  virtualReturn.h

proc QIdentityProxyModelmapFromSource*(self: gen_qidentityproxymodel_types.QIdentityProxyModel, sourceIndex: gen_qabstractitemmodel_types.QModelIndex): gen_qabstractitemmodel_types.QModelIndex =
  gen_qabstractitemmodel_types.QModelIndex(h: fcQIdentityProxyModel_virtualbase_mapFromSource(self.h, sourceIndex.h))

proc miqt_exec_callback_cQIdentityProxyModel_mapFromSource(vtbl: pointer, self: pointer, sourceIndex: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QIdentityProxyModelVTable](vtbl)
  let self = QIdentityProxyModel(h: self)
  let slotval1 = gen_qabstractitemmodel_types.QModelIndex(h: sourceIndex)
  var virtualReturn = vtbl[].mapFromSource(self, slotval1)
  virtualReturn.h

proc QIdentityProxyModelmapToSource*(self: gen_qidentityproxymodel_types.QIdentityProxyModel, proxyIndex: gen_qabstractitemmodel_types.QModelIndex): gen_qabstractitemmodel_types.QModelIndex =
  gen_qabstractitemmodel_types.QModelIndex(h: fcQIdentityProxyModel_virtualbase_mapToSource(self.h, proxyIndex.h))

proc miqt_exec_callback_cQIdentityProxyModel_mapToSource(vtbl: pointer, self: pointer, proxyIndex: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QIdentityProxyModelVTable](vtbl)
  let self = QIdentityProxyModel(h: self)
  let slotval1 = gen_qabstractitemmodel_types.QModelIndex(h: proxyIndex)
  var virtualReturn = vtbl[].mapToSource(self, slotval1)
  virtualReturn.h

proc QIdentityProxyModelparent*(self: gen_qidentityproxymodel_types.QIdentityProxyModel, child: gen_qabstractitemmodel_types.QModelIndex): gen_qabstractitemmodel_types.QModelIndex =
  gen_qabstractitemmodel_types.QModelIndex(h: fcQIdentityProxyModel_virtualbase_parent(self.h, child.h))

proc miqt_exec_callback_cQIdentityProxyModel_parent(vtbl: pointer, self: pointer, child: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QIdentityProxyModelVTable](vtbl)
  let self = QIdentityProxyModel(h: self)
  let slotval1 = gen_qabstractitemmodel_types.QModelIndex(h: child)
  var virtualReturn = vtbl[].parent(self, slotval1)
  virtualReturn.h

proc QIdentityProxyModelrowCount*(self: gen_qidentityproxymodel_types.QIdentityProxyModel, parent: gen_qabstractitemmodel_types.QModelIndex): cint =
  fcQIdentityProxyModel_virtualbase_rowCount(self.h, parent.h)

proc miqt_exec_callback_cQIdentityProxyModel_rowCount(vtbl: pointer, self: pointer, parent: pointer): cint {.cdecl.} =
  let vtbl = cast[ptr QIdentityProxyModelVTable](vtbl)
  let self = QIdentityProxyModel(h: self)
  let slotval1 = gen_qabstractitemmodel_types.QModelIndex(h: parent)
  var virtualReturn = vtbl[].rowCount(self, slotval1)
  virtualReturn

proc QIdentityProxyModelheaderData*(self: gen_qidentityproxymodel_types.QIdentityProxyModel, section: cint, orientation: cint, role: cint): gen_qvariant_types.QVariant =
  gen_qvariant_types.QVariant(h: fcQIdentityProxyModel_virtualbase_headerData(self.h, section, cint(orientation), role))

proc miqt_exec_callback_cQIdentityProxyModel_headerData(vtbl: pointer, self: pointer, section: cint, orientation: cint, role: cint): pointer {.cdecl.} =
  let vtbl = cast[ptr QIdentityProxyModelVTable](vtbl)
  let self = QIdentityProxyModel(h: self)
  let slotval1 = section
  let slotval2 = cint(orientation)
  let slotval3 = role
  var virtualReturn = vtbl[].headerData(self, slotval1, slotval2, slotval3)
  virtualReturn.h

proc QIdentityProxyModeldropMimeData*(self: gen_qidentityproxymodel_types.QIdentityProxyModel, data: gen_qmimedata_types.QMimeData, action: cint, row: cint, column: cint, parent: gen_qabstractitemmodel_types.QModelIndex): bool =
  fcQIdentityProxyModel_virtualbase_dropMimeData(self.h, data.h, cint(action), row, column, parent.h)

proc miqt_exec_callback_cQIdentityProxyModel_dropMimeData(vtbl: pointer, self: pointer, data: pointer, action: cint, row: cint, column: cint, parent: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QIdentityProxyModelVTable](vtbl)
  let self = QIdentityProxyModel(h: self)
  let slotval1 = gen_qmimedata_types.QMimeData(h: data)
  let slotval2 = cint(action)
  let slotval3 = row
  let slotval4 = column
  let slotval5 = gen_qabstractitemmodel_types.QModelIndex(h: parent)
  var virtualReturn = vtbl[].dropMimeData(self, slotval1, slotval2, slotval3, slotval4, slotval5)
  virtualReturn

proc QIdentityProxyModelsibling*(self: gen_qidentityproxymodel_types.QIdentityProxyModel, row: cint, column: cint, idx: gen_qabstractitemmodel_types.QModelIndex): gen_qabstractitemmodel_types.QModelIndex =
  gen_qabstractitemmodel_types.QModelIndex(h: fcQIdentityProxyModel_virtualbase_sibling(self.h, row, column, idx.h))

proc miqt_exec_callback_cQIdentityProxyModel_sibling(vtbl: pointer, self: pointer, row: cint, column: cint, idx: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QIdentityProxyModelVTable](vtbl)
  let self = QIdentityProxyModel(h: self)
  let slotval1 = row
  let slotval2 = column
  let slotval3 = gen_qabstractitemmodel_types.QModelIndex(h: idx)
  var virtualReturn = vtbl[].sibling(self, slotval1, slotval2, slotval3)
  virtualReturn.h

proc QIdentityProxyModelmapSelectionFromSource*(self: gen_qidentityproxymodel_types.QIdentityProxyModel, selection: gen_qitemselectionmodel_types.QItemSelection): gen_qitemselectionmodel_types.QItemSelection =
  gen_qitemselectionmodel_types.QItemSelection(h: fcQIdentityProxyModel_virtualbase_mapSelectionFromSource(self.h, selection.h))

proc miqt_exec_callback_cQIdentityProxyModel_mapSelectionFromSource(vtbl: pointer, self: pointer, selection: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QIdentityProxyModelVTable](vtbl)
  let self = QIdentityProxyModel(h: self)
  let slotval1 = gen_qitemselectionmodel_types.QItemSelection(h: selection)
  var virtualReturn = vtbl[].mapSelectionFromSource(self, slotval1)
  virtualReturn.h

proc QIdentityProxyModelmapSelectionToSource*(self: gen_qidentityproxymodel_types.QIdentityProxyModel, selection: gen_qitemselectionmodel_types.QItemSelection): gen_qitemselectionmodel_types.QItemSelection =
  gen_qitemselectionmodel_types.QItemSelection(h: fcQIdentityProxyModel_virtualbase_mapSelectionToSource(self.h, selection.h))

proc miqt_exec_callback_cQIdentityProxyModel_mapSelectionToSource(vtbl: pointer, self: pointer, selection: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QIdentityProxyModelVTable](vtbl)
  let self = QIdentityProxyModel(h: self)
  let slotval1 = gen_qitemselectionmodel_types.QItemSelection(h: selection)
  var virtualReturn = vtbl[].mapSelectionToSource(self, slotval1)
  virtualReturn.h

proc QIdentityProxyModelmatch*(self: gen_qidentityproxymodel_types.QIdentityProxyModel, start: gen_qabstractitemmodel_types.QModelIndex, role: cint, value: gen_qvariant_types.QVariant, hits: cint, flags: cint): seq[gen_qabstractitemmodel_types.QModelIndex] =
  var v_ma = fcQIdentityProxyModel_virtualbase_match(self.h, start.h, role, value.h, hits, cint(flags))
  var vx_ret = newSeq[gen_qabstractitemmodel_types.QModelIndex](int(v_ma.len))
  let v_outCast = cast[ptr UncheckedArray[pointer]](v_ma.data)
  for i in 0 ..< v_ma.len:
    vx_ret[i] = gen_qabstractitemmodel_types.QModelIndex(h: v_outCast[i])
  c_free(v_ma.data)
  vx_ret

proc miqt_exec_callback_cQIdentityProxyModel_match(vtbl: pointer, self: pointer, start: pointer, role: cint, value: pointer, hits: cint, flags: cint): struct_miqt_array {.cdecl.} =
  let vtbl = cast[ptr QIdentityProxyModelVTable](vtbl)
  let self = QIdentityProxyModel(h: self)
  let slotval1 = gen_qabstractitemmodel_types.QModelIndex(h: start)
  let slotval2 = role
  let slotval3 = gen_qvariant_types.QVariant(h: value)
  let slotval4 = hits
  let slotval5 = cint(flags)
  var virtualReturn = vtbl[].match(self, slotval1, slotval2, slotval3, slotval4, slotval5)
  var virtualReturn_CArray = cast[ptr UncheckedArray[pointer]](if len(virtualReturn) > 0: c_malloc(c_sizet(sizeof(pointer) * len(virtualReturn))) else: nil)
  for i in 0..<len(virtualReturn):
    virtualReturn_CArray[i] = virtualReturn[i].h

  struct_miqt_array(len: csize_t(len(virtualReturn)), data: if len(virtualReturn) == 0: nil else: addr(virtualReturn_CArray[0]))

proc QIdentityProxyModelsetSourceModel*(self: gen_qidentityproxymodel_types.QIdentityProxyModel, sourceModel: gen_qabstractitemmodel_types.QAbstractItemModel): void =
  fcQIdentityProxyModel_virtualbase_setSourceModel(self.h, sourceModel.h)

proc miqt_exec_callback_cQIdentityProxyModel_setSourceModel(vtbl: pointer, self: pointer, sourceModel: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QIdentityProxyModelVTable](vtbl)
  let self = QIdentityProxyModel(h: self)
  let slotval1 = gen_qabstractitemmodel_types.QAbstractItemModel(h: sourceModel)
  vtbl[].setSourceModel(self, slotval1)

proc QIdentityProxyModelinsertColumns*(self: gen_qidentityproxymodel_types.QIdentityProxyModel, column: cint, count: cint, parent: gen_qabstractitemmodel_types.QModelIndex): bool =
  fcQIdentityProxyModel_virtualbase_insertColumns(self.h, column, count, parent.h)

proc miqt_exec_callback_cQIdentityProxyModel_insertColumns(vtbl: pointer, self: pointer, column: cint, count: cint, parent: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QIdentityProxyModelVTable](vtbl)
  let self = QIdentityProxyModel(h: self)
  let slotval1 = column
  let slotval2 = count
  let slotval3 = gen_qabstractitemmodel_types.QModelIndex(h: parent)
  var virtualReturn = vtbl[].insertColumns(self, slotval1, slotval2, slotval3)
  virtualReturn

proc QIdentityProxyModelinsertRows*(self: gen_qidentityproxymodel_types.QIdentityProxyModel, row: cint, count: cint, parent: gen_qabstractitemmodel_types.QModelIndex): bool =
  fcQIdentityProxyModel_virtualbase_insertRows(self.h, row, count, parent.h)

proc miqt_exec_callback_cQIdentityProxyModel_insertRows(vtbl: pointer, self: pointer, row: cint, count: cint, parent: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QIdentityProxyModelVTable](vtbl)
  let self = QIdentityProxyModel(h: self)
  let slotval1 = row
  let slotval2 = count
  let slotval3 = gen_qabstractitemmodel_types.QModelIndex(h: parent)
  var virtualReturn = vtbl[].insertRows(self, slotval1, slotval2, slotval3)
  virtualReturn

proc QIdentityProxyModelremoveColumns*(self: gen_qidentityproxymodel_types.QIdentityProxyModel, column: cint, count: cint, parent: gen_qabstractitemmodel_types.QModelIndex): bool =
  fcQIdentityProxyModel_virtualbase_removeColumns(self.h, column, count, parent.h)

proc miqt_exec_callback_cQIdentityProxyModel_removeColumns(vtbl: pointer, self: pointer, column: cint, count: cint, parent: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QIdentityProxyModelVTable](vtbl)
  let self = QIdentityProxyModel(h: self)
  let slotval1 = column
  let slotval2 = count
  let slotval3 = gen_qabstractitemmodel_types.QModelIndex(h: parent)
  var virtualReturn = vtbl[].removeColumns(self, slotval1, slotval2, slotval3)
  virtualReturn

proc QIdentityProxyModelremoveRows*(self: gen_qidentityproxymodel_types.QIdentityProxyModel, row: cint, count: cint, parent: gen_qabstractitemmodel_types.QModelIndex): bool =
  fcQIdentityProxyModel_virtualbase_removeRows(self.h, row, count, parent.h)

proc miqt_exec_callback_cQIdentityProxyModel_removeRows(vtbl: pointer, self: pointer, row: cint, count: cint, parent: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QIdentityProxyModelVTable](vtbl)
  let self = QIdentityProxyModel(h: self)
  let slotval1 = row
  let slotval2 = count
  let slotval3 = gen_qabstractitemmodel_types.QModelIndex(h: parent)
  var virtualReturn = vtbl[].removeRows(self, slotval1, slotval2, slotval3)
  virtualReturn

proc QIdentityProxyModelmoveRows*(self: gen_qidentityproxymodel_types.QIdentityProxyModel, sourceParent: gen_qabstractitemmodel_types.QModelIndex, sourceRow: cint, count: cint, destinationParent: gen_qabstractitemmodel_types.QModelIndex, destinationChild: cint): bool =
  fcQIdentityProxyModel_virtualbase_moveRows(self.h, sourceParent.h, sourceRow, count, destinationParent.h, destinationChild)

proc miqt_exec_callback_cQIdentityProxyModel_moveRows(vtbl: pointer, self: pointer, sourceParent: pointer, sourceRow: cint, count: cint, destinationParent: pointer, destinationChild: cint): bool {.cdecl.} =
  let vtbl = cast[ptr QIdentityProxyModelVTable](vtbl)
  let self = QIdentityProxyModel(h: self)
  let slotval1 = gen_qabstractitemmodel_types.QModelIndex(h: sourceParent)
  let slotval2 = sourceRow
  let slotval3 = count
  let slotval4 = gen_qabstractitemmodel_types.QModelIndex(h: destinationParent)
  let slotval5 = destinationChild
  var virtualReturn = vtbl[].moveRows(self, slotval1, slotval2, slotval3, slotval4, slotval5)
  virtualReturn

proc QIdentityProxyModelmoveColumns*(self: gen_qidentityproxymodel_types.QIdentityProxyModel, sourceParent: gen_qabstractitemmodel_types.QModelIndex, sourceColumn: cint, count: cint, destinationParent: gen_qabstractitemmodel_types.QModelIndex, destinationChild: cint): bool =
  fcQIdentityProxyModel_virtualbase_moveColumns(self.h, sourceParent.h, sourceColumn, count, destinationParent.h, destinationChild)

proc miqt_exec_callback_cQIdentityProxyModel_moveColumns(vtbl: pointer, self: pointer, sourceParent: pointer, sourceColumn: cint, count: cint, destinationParent: pointer, destinationChild: cint): bool {.cdecl.} =
  let vtbl = cast[ptr QIdentityProxyModelVTable](vtbl)
  let self = QIdentityProxyModel(h: self)
  let slotval1 = gen_qabstractitemmodel_types.QModelIndex(h: sourceParent)
  let slotval2 = sourceColumn
  let slotval3 = count
  let slotval4 = gen_qabstractitemmodel_types.QModelIndex(h: destinationParent)
  let slotval5 = destinationChild
  var virtualReturn = vtbl[].moveColumns(self, slotval1, slotval2, slotval3, slotval4, slotval5)
  virtualReturn

proc QIdentityProxyModelsubmit*(self: gen_qidentityproxymodel_types.QIdentityProxyModel, ): bool =
  fcQIdentityProxyModel_virtualbase_submit(self.h)

proc miqt_exec_callback_cQIdentityProxyModel_submit(vtbl: pointer, self: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QIdentityProxyModelVTable](vtbl)
  let self = QIdentityProxyModel(h: self)
  var virtualReturn = vtbl[].submit(self)
  virtualReturn

proc QIdentityProxyModelrevert*(self: gen_qidentityproxymodel_types.QIdentityProxyModel, ): void =
  fcQIdentityProxyModel_virtualbase_revert(self.h)

proc miqt_exec_callback_cQIdentityProxyModel_revert(vtbl: pointer, self: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QIdentityProxyModelVTable](vtbl)
  let self = QIdentityProxyModel(h: self)
  vtbl[].revert(self)

proc QIdentityProxyModeldata*(self: gen_qidentityproxymodel_types.QIdentityProxyModel, proxyIndex: gen_qabstractitemmodel_types.QModelIndex, role: cint): gen_qvariant_types.QVariant =
  gen_qvariant_types.QVariant(h: fcQIdentityProxyModel_virtualbase_data(self.h, proxyIndex.h, role))

proc miqt_exec_callback_cQIdentityProxyModel_data(vtbl: pointer, self: pointer, proxyIndex: pointer, role: cint): pointer {.cdecl.} =
  let vtbl = cast[ptr QIdentityProxyModelVTable](vtbl)
  let self = QIdentityProxyModel(h: self)
  let slotval1 = gen_qabstractitemmodel_types.QModelIndex(h: proxyIndex)
  let slotval2 = role
  var virtualReturn = vtbl[].data(self, slotval1, slotval2)
  virtualReturn.h

proc QIdentityProxyModelitemData*(self: gen_qidentityproxymodel_types.QIdentityProxyModel, index: gen_qabstractitemmodel_types.QModelIndex): Table[cint,gen_qvariant_types.QVariant] =
  var v_mm = fcQIdentityProxyModel_virtualbase_itemData(self.h, index.h)
  var vx_ret: Table[cint, gen_qvariant_types.QVariant]
  var v_Keys = cast[ptr UncheckedArray[cint]](v_mm.keys)
  var v_Values = cast[ptr UncheckedArray[pointer]](v_mm.values)
  for i in 0..<v_mm.len:
    var v_entry_Key = v_Keys[i]

    var v_entry_Value = gen_qvariant_types.QVariant(h: v_Values[i])

    vx_ret[v_entry_Key] = v_entry_Value
  c_free(v_mm.keys)
  c_free(v_mm.values)
  vx_ret

proc miqt_exec_callback_cQIdentityProxyModel_itemData(vtbl: pointer, self: pointer, index: pointer): struct_miqt_map {.cdecl.} =
  let vtbl = cast[ptr QIdentityProxyModelVTable](vtbl)
  let self = QIdentityProxyModel(h: self)
  let slotval1 = gen_qabstractitemmodel_types.QModelIndex(h: index)
  var virtualReturn = vtbl[].itemData(self, slotval1)
  var virtualReturn_Keys_CArray = cast[ptr UncheckedArray[cint]](if len(virtualReturn) > 0: c_malloc(csize_t(sizeof(cint) * len(virtualReturn))) else: nil)
  var virtualReturn_Values_CArray = cast[ptr UncheckedArray[pointer]](if len(virtualReturn) > 0: c_malloc(csize_t(sizeof(pointer) * len(virtualReturn))) else: nil)
  var virtualReturn_ctr = 0
  for virtualReturn_k, virtualReturn_v in virtualReturn:
    virtualReturn_Keys_CArray[virtualReturn_ctr] = virtualReturn_k
    virtualReturn_Values_CArray[virtualReturn_ctr] = virtualReturn_v.h
    virtualReturn_ctr += 1

  struct_miqt_map(len: csize_t(len(virtualReturn)),keys: if len(virtualReturn) == 0: nil else: addr(virtualReturn_Keys_CArray[0]), values: if len(virtualReturn) == 0: nil else: addr(virtualReturn_Values_CArray[0]),)

proc QIdentityProxyModelflags*(self: gen_qidentityproxymodel_types.QIdentityProxyModel, index: gen_qabstractitemmodel_types.QModelIndex): cint =
  cint(fcQIdentityProxyModel_virtualbase_flags(self.h, index.h))

proc miqt_exec_callback_cQIdentityProxyModel_flags(vtbl: pointer, self: pointer, index: pointer): cint {.cdecl.} =
  let vtbl = cast[ptr QIdentityProxyModelVTable](vtbl)
  let self = QIdentityProxyModel(h: self)
  let slotval1 = gen_qabstractitemmodel_types.QModelIndex(h: index)
  var virtualReturn = vtbl[].flags(self, slotval1)
  cint(virtualReturn)

proc QIdentityProxyModelsetData*(self: gen_qidentityproxymodel_types.QIdentityProxyModel, index: gen_qabstractitemmodel_types.QModelIndex, value: gen_qvariant_types.QVariant, role: cint): bool =
  fcQIdentityProxyModel_virtualbase_setData(self.h, index.h, value.h, role)

proc miqt_exec_callback_cQIdentityProxyModel_setData(vtbl: pointer, self: pointer, index: pointer, value: pointer, role: cint): bool {.cdecl.} =
  let vtbl = cast[ptr QIdentityProxyModelVTable](vtbl)
  let self = QIdentityProxyModel(h: self)
  let slotval1 = gen_qabstractitemmodel_types.QModelIndex(h: index)
  let slotval2 = gen_qvariant_types.QVariant(h: value)
  let slotval3 = role
  var virtualReturn = vtbl[].setData(self, slotval1, slotval2, slotval3)
  virtualReturn

proc QIdentityProxyModelsetItemData*(self: gen_qidentityproxymodel_types.QIdentityProxyModel, index: gen_qabstractitemmodel_types.QModelIndex, roles: Table[cint,gen_qvariant_types.QVariant]): bool =
  var roles_Keys_CArray = newSeq[cint](len(roles))
  var roles_Values_CArray = newSeq[pointer](len(roles))
  var roles_ctr = 0
  for roles_k, roles_v in roles:
    roles_Keys_CArray[roles_ctr] = roles_k
    roles_Values_CArray[roles_ctr] = roles_v.h
    roles_ctr += 1

  fcQIdentityProxyModel_virtualbase_setItemData(self.h, index.h, struct_miqt_map(len: csize_t(len(roles)),keys: if len(roles) == 0: nil else: addr(roles_Keys_CArray[0]), values: if len(roles) == 0: nil else: addr(roles_Values_CArray[0]),))

proc miqt_exec_callback_cQIdentityProxyModel_setItemData(vtbl: pointer, self: pointer, index: pointer, roles: struct_miqt_map): bool {.cdecl.} =
  let vtbl = cast[ptr QIdentityProxyModelVTable](vtbl)
  let self = QIdentityProxyModel(h: self)
  let slotval1 = gen_qabstractitemmodel_types.QModelIndex(h: index)
  var vroles_mm = roles
  var vrolesx_ret: Table[cint, gen_qvariant_types.QVariant]
  var vroles_Keys = cast[ptr UncheckedArray[cint]](vroles_mm.keys)
  var vroles_Values = cast[ptr UncheckedArray[pointer]](vroles_mm.values)
  for i in 0..<vroles_mm.len:
    var vroles_entry_Key = vroles_Keys[i]

    var vroles_entry_Value = gen_qvariant_types.QVariant(h: vroles_Values[i])

    vrolesx_ret[vroles_entry_Key] = vroles_entry_Value
  c_free(vroles_mm.keys)
  c_free(vroles_mm.values)
  let slotval2 = vrolesx_ret
  var virtualReturn = vtbl[].setItemData(self, slotval1, slotval2)
  virtualReturn

proc QIdentityProxyModelsetHeaderData*(self: gen_qidentityproxymodel_types.QIdentityProxyModel, section: cint, orientation: cint, value: gen_qvariant_types.QVariant, role: cint): bool =
  fcQIdentityProxyModel_virtualbase_setHeaderData(self.h, section, cint(orientation), value.h, role)

proc miqt_exec_callback_cQIdentityProxyModel_setHeaderData(vtbl: pointer, self: pointer, section: cint, orientation: cint, value: pointer, role: cint): bool {.cdecl.} =
  let vtbl = cast[ptr QIdentityProxyModelVTable](vtbl)
  let self = QIdentityProxyModel(h: self)
  let slotval1 = section
  let slotval2 = cint(orientation)
  let slotval3 = gen_qvariant_types.QVariant(h: value)
  let slotval4 = role
  var virtualReturn = vtbl[].setHeaderData(self, slotval1, slotval2, slotval3, slotval4)
  virtualReturn

proc QIdentityProxyModelbuddy*(self: gen_qidentityproxymodel_types.QIdentityProxyModel, index: gen_qabstractitemmodel_types.QModelIndex): gen_qabstractitemmodel_types.QModelIndex =
  gen_qabstractitemmodel_types.QModelIndex(h: fcQIdentityProxyModel_virtualbase_buddy(self.h, index.h))

proc miqt_exec_callback_cQIdentityProxyModel_buddy(vtbl: pointer, self: pointer, index: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QIdentityProxyModelVTable](vtbl)
  let self = QIdentityProxyModel(h: self)
  let slotval1 = gen_qabstractitemmodel_types.QModelIndex(h: index)
  var virtualReturn = vtbl[].buddy(self, slotval1)
  virtualReturn.h

proc QIdentityProxyModelcanFetchMore*(self: gen_qidentityproxymodel_types.QIdentityProxyModel, parent: gen_qabstractitemmodel_types.QModelIndex): bool =
  fcQIdentityProxyModel_virtualbase_canFetchMore(self.h, parent.h)

proc miqt_exec_callback_cQIdentityProxyModel_canFetchMore(vtbl: pointer, self: pointer, parent: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QIdentityProxyModelVTable](vtbl)
  let self = QIdentityProxyModel(h: self)
  let slotval1 = gen_qabstractitemmodel_types.QModelIndex(h: parent)
  var virtualReturn = vtbl[].canFetchMore(self, slotval1)
  virtualReturn

proc QIdentityProxyModelfetchMore*(self: gen_qidentityproxymodel_types.QIdentityProxyModel, parent: gen_qabstractitemmodel_types.QModelIndex): void =
  fcQIdentityProxyModel_virtualbase_fetchMore(self.h, parent.h)

proc miqt_exec_callback_cQIdentityProxyModel_fetchMore(vtbl: pointer, self: pointer, parent: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QIdentityProxyModelVTable](vtbl)
  let self = QIdentityProxyModel(h: self)
  let slotval1 = gen_qabstractitemmodel_types.QModelIndex(h: parent)
  vtbl[].fetchMore(self, slotval1)

proc QIdentityProxyModelsort*(self: gen_qidentityproxymodel_types.QIdentityProxyModel, column: cint, order: cint): void =
  fcQIdentityProxyModel_virtualbase_sort(self.h, column, cint(order))

proc miqt_exec_callback_cQIdentityProxyModel_sort(vtbl: pointer, self: pointer, column: cint, order: cint): void {.cdecl.} =
  let vtbl = cast[ptr QIdentityProxyModelVTable](vtbl)
  let self = QIdentityProxyModel(h: self)
  let slotval1 = column
  let slotval2 = cint(order)
  vtbl[].sort(self, slotval1, slotval2)

proc QIdentityProxyModelspan*(self: gen_qidentityproxymodel_types.QIdentityProxyModel, index: gen_qabstractitemmodel_types.QModelIndex): gen_qsize_types.QSize =
  gen_qsize_types.QSize(h: fcQIdentityProxyModel_virtualbase_span(self.h, index.h))

proc miqt_exec_callback_cQIdentityProxyModel_span(vtbl: pointer, self: pointer, index: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QIdentityProxyModelVTable](vtbl)
  let self = QIdentityProxyModel(h: self)
  let slotval1 = gen_qabstractitemmodel_types.QModelIndex(h: index)
  var virtualReturn = vtbl[].span(self, slotval1)
  virtualReturn.h

proc QIdentityProxyModelhasChildren*(self: gen_qidentityproxymodel_types.QIdentityProxyModel, parent: gen_qabstractitemmodel_types.QModelIndex): bool =
  fcQIdentityProxyModel_virtualbase_hasChildren(self.h, parent.h)

proc miqt_exec_callback_cQIdentityProxyModel_hasChildren(vtbl: pointer, self: pointer, parent: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QIdentityProxyModelVTable](vtbl)
  let self = QIdentityProxyModel(h: self)
  let slotval1 = gen_qabstractitemmodel_types.QModelIndex(h: parent)
  var virtualReturn = vtbl[].hasChildren(self, slotval1)
  virtualReturn

proc QIdentityProxyModelmimeData*(self: gen_qidentityproxymodel_types.QIdentityProxyModel, indexes: seq[gen_qabstractitemmodel_types.QModelIndex]): gen_qmimedata_types.QMimeData =
  var indexes_CArray = newSeq[pointer](len(indexes))
  for i in 0..<len(indexes):
    indexes_CArray[i] = indexes[i].h

  gen_qmimedata_types.QMimeData(h: fcQIdentityProxyModel_virtualbase_mimeData(self.h, struct_miqt_array(len: csize_t(len(indexes)), data: if len(indexes) == 0: nil else: addr(indexes_CArray[0]))))

proc miqt_exec_callback_cQIdentityProxyModel_mimeData(vtbl: pointer, self: pointer, indexes: struct_miqt_array): pointer {.cdecl.} =
  let vtbl = cast[ptr QIdentityProxyModelVTable](vtbl)
  let self = QIdentityProxyModel(h: self)
  var vindexes_ma = indexes
  var vindexesx_ret = newSeq[gen_qabstractitemmodel_types.QModelIndex](int(vindexes_ma.len))
  let vindexes_outCast = cast[ptr UncheckedArray[pointer]](vindexes_ma.data)
  for i in 0 ..< vindexes_ma.len:
    vindexesx_ret[i] = gen_qabstractitemmodel_types.QModelIndex(h: vindexes_outCast[i])
  c_free(vindexes_ma.data)
  let slotval1 = vindexesx_ret
  var virtualReturn = vtbl[].mimeData(self, slotval1)
  virtualReturn.h

proc QIdentityProxyModelcanDropMimeData*(self: gen_qidentityproxymodel_types.QIdentityProxyModel, data: gen_qmimedata_types.QMimeData, action: cint, row: cint, column: cint, parent: gen_qabstractitemmodel_types.QModelIndex): bool =
  fcQIdentityProxyModel_virtualbase_canDropMimeData(self.h, data.h, cint(action), row, column, parent.h)

proc miqt_exec_callback_cQIdentityProxyModel_canDropMimeData(vtbl: pointer, self: pointer, data: pointer, action: cint, row: cint, column: cint, parent: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QIdentityProxyModelVTable](vtbl)
  let self = QIdentityProxyModel(h: self)
  let slotval1 = gen_qmimedata_types.QMimeData(h: data)
  let slotval2 = cint(action)
  let slotval3 = row
  let slotval4 = column
  let slotval5 = gen_qabstractitemmodel_types.QModelIndex(h: parent)
  var virtualReturn = vtbl[].canDropMimeData(self, slotval1, slotval2, slotval3, slotval4, slotval5)
  virtualReturn

proc QIdentityProxyModelmimeTypes*(self: gen_qidentityproxymodel_types.QIdentityProxyModel, ): seq[string] =
  var v_ma = fcQIdentityProxyModel_virtualbase_mimeTypes(self.h)
  var vx_ret = newSeq[string](int(v_ma.len))
  let v_outCast = cast[ptr UncheckedArray[struct_miqt_string]](v_ma.data)
  for i in 0 ..< v_ma.len:
    let vx_lv_ms = v_outCast[i]
    let vx_lvx_ret = string.fromBytes(toOpenArrayByte(vx_lv_ms.data, 0, int(vx_lv_ms.len)-1))
    c_free(vx_lv_ms.data)
    vx_ret[i] = vx_lvx_ret
  c_free(v_ma.data)
  vx_ret

proc miqt_exec_callback_cQIdentityProxyModel_mimeTypes(vtbl: pointer, self: pointer): struct_miqt_array {.cdecl.} =
  let vtbl = cast[ptr QIdentityProxyModelVTable](vtbl)
  let self = QIdentityProxyModel(h: self)
  var virtualReturn = vtbl[].mimeTypes(self)
  var virtualReturn_CArray = cast[ptr UncheckedArray[struct_miqt_string]](if len(virtualReturn) > 0: c_malloc(c_sizet(sizeof(struct_miqt_string) * len(virtualReturn))) else: nil)
  for i in 0..<len(virtualReturn):
    var virtualReturn_i_copy = cast[cstring](if len(virtualReturn[i]) > 0: c_malloc(csize_t(len(virtualReturn[i]))) else: nil)
    if len(virtualReturn[i]) > 0: copyMem(cast[pointer](virtualReturn_i_copy), addr virtualReturn[i][0], csize_t(len(virtualReturn[i])))
    virtualReturn_CArray[i] = struct_miqt_string(data: virtualReturn_i_copy, len: csize_t(len(virtualReturn[i])))

  struct_miqt_array(len: csize_t(len(virtualReturn)), data: if len(virtualReturn) == 0: nil else: addr(virtualReturn_CArray[0]))

proc QIdentityProxyModelsupportedDragActions*(self: gen_qidentityproxymodel_types.QIdentityProxyModel, ): cint =
  cint(fcQIdentityProxyModel_virtualbase_supportedDragActions(self.h))

proc miqt_exec_callback_cQIdentityProxyModel_supportedDragActions(vtbl: pointer, self: pointer): cint {.cdecl.} =
  let vtbl = cast[ptr QIdentityProxyModelVTable](vtbl)
  let self = QIdentityProxyModel(h: self)
  var virtualReturn = vtbl[].supportedDragActions(self)
  cint(virtualReturn)

proc QIdentityProxyModelsupportedDropActions*(self: gen_qidentityproxymodel_types.QIdentityProxyModel, ): cint =
  cint(fcQIdentityProxyModel_virtualbase_supportedDropActions(self.h))

proc miqt_exec_callback_cQIdentityProxyModel_supportedDropActions(vtbl: pointer, self: pointer): cint {.cdecl.} =
  let vtbl = cast[ptr QIdentityProxyModelVTable](vtbl)
  let self = QIdentityProxyModel(h: self)
  var virtualReturn = vtbl[].supportedDropActions(self)
  cint(virtualReturn)

proc QIdentityProxyModelroleNames*(self: gen_qidentityproxymodel_types.QIdentityProxyModel, ): Table[cint,seq[byte]] =
  var v_mm = fcQIdentityProxyModel_virtualbase_roleNames(self.h)
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

proc miqt_exec_callback_cQIdentityProxyModel_roleNames(vtbl: pointer, self: pointer): struct_miqt_map {.cdecl.} =
  let vtbl = cast[ptr QIdentityProxyModelVTable](vtbl)
  let self = QIdentityProxyModel(h: self)
  var virtualReturn = vtbl[].roleNames(self)
  var virtualReturn_Keys_CArray = cast[ptr UncheckedArray[cint]](if len(virtualReturn) > 0: c_malloc(csize_t(sizeof(cint) * len(virtualReturn))) else: nil)
  var virtualReturn_Values_CArray = cast[ptr UncheckedArray[struct_miqt_string]](if len(virtualReturn) > 0: c_malloc(csize_t(sizeof(struct_miqt_string) * len(virtualReturn))) else: nil)
  var virtualReturn_ctr = 0
  for virtualReturn_k, virtualReturn_v in virtualReturn:
    virtualReturn_Keys_CArray[virtualReturn_ctr] = virtualReturn_k
    var virtualReturn_v_copy = cast[cstring](if len(virtualReturn_v) > 0: c_malloc(csize_t(len(virtualReturn_v))) else: nil)
    if len(virtualReturn_v) > 0: copyMem(cast[pointer](virtualReturn_v_copy), addr virtualReturn_v[0], csize_t(len(virtualReturn_v)))
    virtualReturn_Values_CArray[virtualReturn_ctr] = struct_miqt_string(data: virtualReturn_v_copy, len: csize_t(len(virtualReturn_v)))
    virtualReturn_ctr += 1

  struct_miqt_map(len: csize_t(len(virtualReturn)),keys: if len(virtualReturn) == 0: nil else: addr(virtualReturn_Keys_CArray[0]), values: if len(virtualReturn) == 0: nil else: addr(virtualReturn_Values_CArray[0]),)

proc QIdentityProxyModelevent*(self: gen_qidentityproxymodel_types.QIdentityProxyModel, event: gen_qcoreevent_types.QEvent): bool =
  fcQIdentityProxyModel_virtualbase_event(self.h, event.h)

proc miqt_exec_callback_cQIdentityProxyModel_event(vtbl: pointer, self: pointer, event: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QIdentityProxyModelVTable](vtbl)
  let self = QIdentityProxyModel(h: self)
  let slotval1 = gen_qcoreevent_types.QEvent(h: event)
  var virtualReturn = vtbl[].event(self, slotval1)
  virtualReturn

proc QIdentityProxyModeleventFilter*(self: gen_qidentityproxymodel_types.QIdentityProxyModel, watched: gen_qobject_types.QObject, event: gen_qcoreevent_types.QEvent): bool =
  fcQIdentityProxyModel_virtualbase_eventFilter(self.h, watched.h, event.h)

proc miqt_exec_callback_cQIdentityProxyModel_eventFilter(vtbl: pointer, self: pointer, watched: pointer, event: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QIdentityProxyModelVTable](vtbl)
  let self = QIdentityProxyModel(h: self)
  let slotval1 = gen_qobject_types.QObject(h: watched)
  let slotval2 = gen_qcoreevent_types.QEvent(h: event)
  var virtualReturn = vtbl[].eventFilter(self, slotval1, slotval2)
  virtualReturn

proc QIdentityProxyModeltimerEvent*(self: gen_qidentityproxymodel_types.QIdentityProxyModel, event: gen_qcoreevent_types.QTimerEvent): void =
  fcQIdentityProxyModel_virtualbase_timerEvent(self.h, event.h)

proc miqt_exec_callback_cQIdentityProxyModel_timerEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QIdentityProxyModelVTable](vtbl)
  let self = QIdentityProxyModel(h: self)
  let slotval1 = gen_qcoreevent_types.QTimerEvent(h: event)
  vtbl[].timerEvent(self, slotval1)

proc QIdentityProxyModelchildEvent*(self: gen_qidentityproxymodel_types.QIdentityProxyModel, event: gen_qcoreevent_types.QChildEvent): void =
  fcQIdentityProxyModel_virtualbase_childEvent(self.h, event.h)

proc miqt_exec_callback_cQIdentityProxyModel_childEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QIdentityProxyModelVTable](vtbl)
  let self = QIdentityProxyModel(h: self)
  let slotval1 = gen_qcoreevent_types.QChildEvent(h: event)
  vtbl[].childEvent(self, slotval1)

proc QIdentityProxyModelcustomEvent*(self: gen_qidentityproxymodel_types.QIdentityProxyModel, event: gen_qcoreevent_types.QEvent): void =
  fcQIdentityProxyModel_virtualbase_customEvent(self.h, event.h)

proc miqt_exec_callback_cQIdentityProxyModel_customEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QIdentityProxyModelVTable](vtbl)
  let self = QIdentityProxyModel(h: self)
  let slotval1 = gen_qcoreevent_types.QEvent(h: event)
  vtbl[].customEvent(self, slotval1)

proc QIdentityProxyModelconnectNotify*(self: gen_qidentityproxymodel_types.QIdentityProxyModel, signal: gen_qmetaobject_types.QMetaMethod): void =
  fcQIdentityProxyModel_virtualbase_connectNotify(self.h, signal.h)

proc miqt_exec_callback_cQIdentityProxyModel_connectNotify(vtbl: pointer, self: pointer, signal: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QIdentityProxyModelVTable](vtbl)
  let self = QIdentityProxyModel(h: self)
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal)
  vtbl[].connectNotify(self, slotval1)

proc QIdentityProxyModeldisconnectNotify*(self: gen_qidentityproxymodel_types.QIdentityProxyModel, signal: gen_qmetaobject_types.QMetaMethod): void =
  fcQIdentityProxyModel_virtualbase_disconnectNotify(self.h, signal.h)

proc miqt_exec_callback_cQIdentityProxyModel_disconnectNotify(vtbl: pointer, self: pointer, signal: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QIdentityProxyModelVTable](vtbl)
  let self = QIdentityProxyModel(h: self)
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal)
  vtbl[].disconnectNotify(self, slotval1)

proc resetInternalData*(self: gen_qidentityproxymodel_types.QIdentityProxyModel, ): void =
  fcQIdentityProxyModel_protectedbase_resetInternalData(self.h)

proc createIndex*(self: gen_qidentityproxymodel_types.QIdentityProxyModel, row: cint, column: cint): gen_qabstractitemmodel_types.QModelIndex =
  gen_qabstractitemmodel_types.QModelIndex(h: fcQIdentityProxyModel_protectedbase_createIndex(self.h, row, column))

proc encodeData*(self: gen_qidentityproxymodel_types.QIdentityProxyModel, indexes: seq[gen_qabstractitemmodel_types.QModelIndex], stream: gen_qdatastream_types.QDataStream): void =
  var indexes_CArray = newSeq[pointer](len(indexes))
  for i in 0..<len(indexes):
    indexes_CArray[i] = indexes[i].h

  fcQIdentityProxyModel_protectedbase_encodeData(self.h, struct_miqt_array(len: csize_t(len(indexes)), data: if len(indexes) == 0: nil else: addr(indexes_CArray[0])), stream.h)

proc decodeData*(self: gen_qidentityproxymodel_types.QIdentityProxyModel, row: cint, column: cint, parent: gen_qabstractitemmodel_types.QModelIndex, stream: gen_qdatastream_types.QDataStream): bool =
  fcQIdentityProxyModel_protectedbase_decodeData(self.h, row, column, parent.h, stream.h)

proc beginInsertRows*(self: gen_qidentityproxymodel_types.QIdentityProxyModel, parent: gen_qabstractitemmodel_types.QModelIndex, first: cint, last: cint): void =
  fcQIdentityProxyModel_protectedbase_beginInsertRows(self.h, parent.h, first, last)

proc endInsertRows*(self: gen_qidentityproxymodel_types.QIdentityProxyModel, ): void =
  fcQIdentityProxyModel_protectedbase_endInsertRows(self.h)

proc beginRemoveRows*(self: gen_qidentityproxymodel_types.QIdentityProxyModel, parent: gen_qabstractitemmodel_types.QModelIndex, first: cint, last: cint): void =
  fcQIdentityProxyModel_protectedbase_beginRemoveRows(self.h, parent.h, first, last)

proc endRemoveRows*(self: gen_qidentityproxymodel_types.QIdentityProxyModel, ): void =
  fcQIdentityProxyModel_protectedbase_endRemoveRows(self.h)

proc beginMoveRows*(self: gen_qidentityproxymodel_types.QIdentityProxyModel, sourceParent: gen_qabstractitemmodel_types.QModelIndex, sourceFirst: cint, sourceLast: cint, destinationParent: gen_qabstractitemmodel_types.QModelIndex, destinationRow: cint): bool =
  fcQIdentityProxyModel_protectedbase_beginMoveRows(self.h, sourceParent.h, sourceFirst, sourceLast, destinationParent.h, destinationRow)

proc endMoveRows*(self: gen_qidentityproxymodel_types.QIdentityProxyModel, ): void =
  fcQIdentityProxyModel_protectedbase_endMoveRows(self.h)

proc beginInsertColumns*(self: gen_qidentityproxymodel_types.QIdentityProxyModel, parent: gen_qabstractitemmodel_types.QModelIndex, first: cint, last: cint): void =
  fcQIdentityProxyModel_protectedbase_beginInsertColumns(self.h, parent.h, first, last)

proc endInsertColumns*(self: gen_qidentityproxymodel_types.QIdentityProxyModel, ): void =
  fcQIdentityProxyModel_protectedbase_endInsertColumns(self.h)

proc beginRemoveColumns*(self: gen_qidentityproxymodel_types.QIdentityProxyModel, parent: gen_qabstractitemmodel_types.QModelIndex, first: cint, last: cint): void =
  fcQIdentityProxyModel_protectedbase_beginRemoveColumns(self.h, parent.h, first, last)

proc endRemoveColumns*(self: gen_qidentityproxymodel_types.QIdentityProxyModel, ): void =
  fcQIdentityProxyModel_protectedbase_endRemoveColumns(self.h)

proc beginMoveColumns*(self: gen_qidentityproxymodel_types.QIdentityProxyModel, sourceParent: gen_qabstractitemmodel_types.QModelIndex, sourceFirst: cint, sourceLast: cint, destinationParent: gen_qabstractitemmodel_types.QModelIndex, destinationColumn: cint): bool =
  fcQIdentityProxyModel_protectedbase_beginMoveColumns(self.h, sourceParent.h, sourceFirst, sourceLast, destinationParent.h, destinationColumn)

proc endMoveColumns*(self: gen_qidentityproxymodel_types.QIdentityProxyModel, ): void =
  fcQIdentityProxyModel_protectedbase_endMoveColumns(self.h)

proc beginResetModel*(self: gen_qidentityproxymodel_types.QIdentityProxyModel, ): void =
  fcQIdentityProxyModel_protectedbase_beginResetModel(self.h)

proc endResetModel*(self: gen_qidentityproxymodel_types.QIdentityProxyModel, ): void =
  fcQIdentityProxyModel_protectedbase_endResetModel(self.h)

proc changePersistentIndex*(self: gen_qidentityproxymodel_types.QIdentityProxyModel, fromVal: gen_qabstractitemmodel_types.QModelIndex, to: gen_qabstractitemmodel_types.QModelIndex): void =
  fcQIdentityProxyModel_protectedbase_changePersistentIndex(self.h, fromVal.h, to.h)

proc changePersistentIndexList*(self: gen_qidentityproxymodel_types.QIdentityProxyModel, fromVal: seq[gen_qabstractitemmodel_types.QModelIndex], to: seq[gen_qabstractitemmodel_types.QModelIndex]): void =
  var fromVal_CArray = newSeq[pointer](len(fromVal))
  for i in 0..<len(fromVal):
    fromVal_CArray[i] = fromVal[i].h

  var to_CArray = newSeq[pointer](len(to))
  for i in 0..<len(to):
    to_CArray[i] = to[i].h

  fcQIdentityProxyModel_protectedbase_changePersistentIndexList(self.h, struct_miqt_array(len: csize_t(len(fromVal)), data: if len(fromVal) == 0: nil else: addr(fromVal_CArray[0])), struct_miqt_array(len: csize_t(len(to)), data: if len(to) == 0: nil else: addr(to_CArray[0])))

proc persistentIndexList*(self: gen_qidentityproxymodel_types.QIdentityProxyModel, ): seq[gen_qabstractitemmodel_types.QModelIndex] =
  var v_ma = fcQIdentityProxyModel_protectedbase_persistentIndexList(self.h)
  var vx_ret = newSeq[gen_qabstractitemmodel_types.QModelIndex](int(v_ma.len))
  let v_outCast = cast[ptr UncheckedArray[pointer]](v_ma.data)
  for i in 0 ..< v_ma.len:
    vx_ret[i] = gen_qabstractitemmodel_types.QModelIndex(h: v_outCast[i])
  c_free(v_ma.data)
  vx_ret

proc sender*(self: gen_qidentityproxymodel_types.QIdentityProxyModel, ): gen_qobject_types.QObject =
  gen_qobject_types.QObject(h: fcQIdentityProxyModel_protectedbase_sender(self.h))

proc senderSignalIndex*(self: gen_qidentityproxymodel_types.QIdentityProxyModel, ): cint =
  fcQIdentityProxyModel_protectedbase_senderSignalIndex(self.h)

proc receivers*(self: gen_qidentityproxymodel_types.QIdentityProxyModel, signal: cstring): cint =
  fcQIdentityProxyModel_protectedbase_receivers(self.h, signal)

proc isSignalConnected*(self: gen_qidentityproxymodel_types.QIdentityProxyModel, signal: gen_qmetaobject_types.QMetaMethod): bool =
  fcQIdentityProxyModel_protectedbase_isSignalConnected(self.h, signal.h)

proc create*(T: type gen_qidentityproxymodel_types.QIdentityProxyModel,
    vtbl: ref QIdentityProxyModelVTable = nil): gen_qidentityproxymodel_types.QIdentityProxyModel =
  let vtbl = if vtbl == nil: new QIdentityProxyModelVTable else: vtbl
  GC_ref(vtbl)
  vtbl.vtbl.destructor = proc(vtbl: ptr cQIdentityProxyModelVTable, _: ptr cQIdentityProxyModel) {.cdecl.} =
    let vtbl = cast[ref QIdentityProxyModelVTable](vtbl)
    GC_unref(vtbl)
  if not isNil(vtbl.metaObject):
    vtbl[].vtbl.metaObject = miqt_exec_callback_cQIdentityProxyModel_metaObject
  if not isNil(vtbl.metacast):
    vtbl[].vtbl.metacast = miqt_exec_callback_cQIdentityProxyModel_metacast
  if not isNil(vtbl.metacall):
    vtbl[].vtbl.metacall = miqt_exec_callback_cQIdentityProxyModel_metacall
  if not isNil(vtbl.columnCount):
    vtbl[].vtbl.columnCount = miqt_exec_callback_cQIdentityProxyModel_columnCount
  if not isNil(vtbl.index):
    vtbl[].vtbl.index = miqt_exec_callback_cQIdentityProxyModel_index
  if not isNil(vtbl.mapFromSource):
    vtbl[].vtbl.mapFromSource = miqt_exec_callback_cQIdentityProxyModel_mapFromSource
  if not isNil(vtbl.mapToSource):
    vtbl[].vtbl.mapToSource = miqt_exec_callback_cQIdentityProxyModel_mapToSource
  if not isNil(vtbl.parent):
    vtbl[].vtbl.parent = miqt_exec_callback_cQIdentityProxyModel_parent
  if not isNil(vtbl.rowCount):
    vtbl[].vtbl.rowCount = miqt_exec_callback_cQIdentityProxyModel_rowCount
  if not isNil(vtbl.headerData):
    vtbl[].vtbl.headerData = miqt_exec_callback_cQIdentityProxyModel_headerData
  if not isNil(vtbl.dropMimeData):
    vtbl[].vtbl.dropMimeData = miqt_exec_callback_cQIdentityProxyModel_dropMimeData
  if not isNil(vtbl.sibling):
    vtbl[].vtbl.sibling = miqt_exec_callback_cQIdentityProxyModel_sibling
  if not isNil(vtbl.mapSelectionFromSource):
    vtbl[].vtbl.mapSelectionFromSource = miqt_exec_callback_cQIdentityProxyModel_mapSelectionFromSource
  if not isNil(vtbl.mapSelectionToSource):
    vtbl[].vtbl.mapSelectionToSource = miqt_exec_callback_cQIdentityProxyModel_mapSelectionToSource
  if not isNil(vtbl.match):
    vtbl[].vtbl.match = miqt_exec_callback_cQIdentityProxyModel_match
  if not isNil(vtbl.setSourceModel):
    vtbl[].vtbl.setSourceModel = miqt_exec_callback_cQIdentityProxyModel_setSourceModel
  if not isNil(vtbl.insertColumns):
    vtbl[].vtbl.insertColumns = miqt_exec_callback_cQIdentityProxyModel_insertColumns
  if not isNil(vtbl.insertRows):
    vtbl[].vtbl.insertRows = miqt_exec_callback_cQIdentityProxyModel_insertRows
  if not isNil(vtbl.removeColumns):
    vtbl[].vtbl.removeColumns = miqt_exec_callback_cQIdentityProxyModel_removeColumns
  if not isNil(vtbl.removeRows):
    vtbl[].vtbl.removeRows = miqt_exec_callback_cQIdentityProxyModel_removeRows
  if not isNil(vtbl.moveRows):
    vtbl[].vtbl.moveRows = miqt_exec_callback_cQIdentityProxyModel_moveRows
  if not isNil(vtbl.moveColumns):
    vtbl[].vtbl.moveColumns = miqt_exec_callback_cQIdentityProxyModel_moveColumns
  if not isNil(vtbl.submit):
    vtbl[].vtbl.submit = miqt_exec_callback_cQIdentityProxyModel_submit
  if not isNil(vtbl.revert):
    vtbl[].vtbl.revert = miqt_exec_callback_cQIdentityProxyModel_revert
  if not isNil(vtbl.data):
    vtbl[].vtbl.data = miqt_exec_callback_cQIdentityProxyModel_data
  if not isNil(vtbl.itemData):
    vtbl[].vtbl.itemData = miqt_exec_callback_cQIdentityProxyModel_itemData
  if not isNil(vtbl.flags):
    vtbl[].vtbl.flags = miqt_exec_callback_cQIdentityProxyModel_flags
  if not isNil(vtbl.setData):
    vtbl[].vtbl.setData = miqt_exec_callback_cQIdentityProxyModel_setData
  if not isNil(vtbl.setItemData):
    vtbl[].vtbl.setItemData = miqt_exec_callback_cQIdentityProxyModel_setItemData
  if not isNil(vtbl.setHeaderData):
    vtbl[].vtbl.setHeaderData = miqt_exec_callback_cQIdentityProxyModel_setHeaderData
  if not isNil(vtbl.buddy):
    vtbl[].vtbl.buddy = miqt_exec_callback_cQIdentityProxyModel_buddy
  if not isNil(vtbl.canFetchMore):
    vtbl[].vtbl.canFetchMore = miqt_exec_callback_cQIdentityProxyModel_canFetchMore
  if not isNil(vtbl.fetchMore):
    vtbl[].vtbl.fetchMore = miqt_exec_callback_cQIdentityProxyModel_fetchMore
  if not isNil(vtbl.sort):
    vtbl[].vtbl.sort = miqt_exec_callback_cQIdentityProxyModel_sort
  if not isNil(vtbl.span):
    vtbl[].vtbl.span = miqt_exec_callback_cQIdentityProxyModel_span
  if not isNil(vtbl.hasChildren):
    vtbl[].vtbl.hasChildren = miqt_exec_callback_cQIdentityProxyModel_hasChildren
  if not isNil(vtbl.mimeData):
    vtbl[].vtbl.mimeData = miqt_exec_callback_cQIdentityProxyModel_mimeData
  if not isNil(vtbl.canDropMimeData):
    vtbl[].vtbl.canDropMimeData = miqt_exec_callback_cQIdentityProxyModel_canDropMimeData
  if not isNil(vtbl.mimeTypes):
    vtbl[].vtbl.mimeTypes = miqt_exec_callback_cQIdentityProxyModel_mimeTypes
  if not isNil(vtbl.supportedDragActions):
    vtbl[].vtbl.supportedDragActions = miqt_exec_callback_cQIdentityProxyModel_supportedDragActions
  if not isNil(vtbl.supportedDropActions):
    vtbl[].vtbl.supportedDropActions = miqt_exec_callback_cQIdentityProxyModel_supportedDropActions
  if not isNil(vtbl.roleNames):
    vtbl[].vtbl.roleNames = miqt_exec_callback_cQIdentityProxyModel_roleNames
  if not isNil(vtbl.event):
    vtbl[].vtbl.event = miqt_exec_callback_cQIdentityProxyModel_event
  if not isNil(vtbl.eventFilter):
    vtbl[].vtbl.eventFilter = miqt_exec_callback_cQIdentityProxyModel_eventFilter
  if not isNil(vtbl.timerEvent):
    vtbl[].vtbl.timerEvent = miqt_exec_callback_cQIdentityProxyModel_timerEvent
  if not isNil(vtbl.childEvent):
    vtbl[].vtbl.childEvent = miqt_exec_callback_cQIdentityProxyModel_childEvent
  if not isNil(vtbl.customEvent):
    vtbl[].vtbl.customEvent = miqt_exec_callback_cQIdentityProxyModel_customEvent
  if not isNil(vtbl.connectNotify):
    vtbl[].vtbl.connectNotify = miqt_exec_callback_cQIdentityProxyModel_connectNotify
  if not isNil(vtbl.disconnectNotify):
    vtbl[].vtbl.disconnectNotify = miqt_exec_callback_cQIdentityProxyModel_disconnectNotify
  gen_qidentityproxymodel_types.QIdentityProxyModel(h: fcQIdentityProxyModel_new(addr(vtbl[]), ))

proc create*(T: type gen_qidentityproxymodel_types.QIdentityProxyModel,
    parent: gen_qobject_types.QObject,
    vtbl: ref QIdentityProxyModelVTable = nil): gen_qidentityproxymodel_types.QIdentityProxyModel =
  let vtbl = if vtbl == nil: new QIdentityProxyModelVTable else: vtbl
  GC_ref(vtbl)
  vtbl.vtbl.destructor = proc(vtbl: ptr cQIdentityProxyModelVTable, _: ptr cQIdentityProxyModel) {.cdecl.} =
    let vtbl = cast[ref QIdentityProxyModelVTable](vtbl)
    GC_unref(vtbl)
  if not isNil(vtbl.metaObject):
    vtbl[].vtbl.metaObject = miqt_exec_callback_cQIdentityProxyModel_metaObject
  if not isNil(vtbl.metacast):
    vtbl[].vtbl.metacast = miqt_exec_callback_cQIdentityProxyModel_metacast
  if not isNil(vtbl.metacall):
    vtbl[].vtbl.metacall = miqt_exec_callback_cQIdentityProxyModel_metacall
  if not isNil(vtbl.columnCount):
    vtbl[].vtbl.columnCount = miqt_exec_callback_cQIdentityProxyModel_columnCount
  if not isNil(vtbl.index):
    vtbl[].vtbl.index = miqt_exec_callback_cQIdentityProxyModel_index
  if not isNil(vtbl.mapFromSource):
    vtbl[].vtbl.mapFromSource = miqt_exec_callback_cQIdentityProxyModel_mapFromSource
  if not isNil(vtbl.mapToSource):
    vtbl[].vtbl.mapToSource = miqt_exec_callback_cQIdentityProxyModel_mapToSource
  if not isNil(vtbl.parent):
    vtbl[].vtbl.parent = miqt_exec_callback_cQIdentityProxyModel_parent
  if not isNil(vtbl.rowCount):
    vtbl[].vtbl.rowCount = miqt_exec_callback_cQIdentityProxyModel_rowCount
  if not isNil(vtbl.headerData):
    vtbl[].vtbl.headerData = miqt_exec_callback_cQIdentityProxyModel_headerData
  if not isNil(vtbl.dropMimeData):
    vtbl[].vtbl.dropMimeData = miqt_exec_callback_cQIdentityProxyModel_dropMimeData
  if not isNil(vtbl.sibling):
    vtbl[].vtbl.sibling = miqt_exec_callback_cQIdentityProxyModel_sibling
  if not isNil(vtbl.mapSelectionFromSource):
    vtbl[].vtbl.mapSelectionFromSource = miqt_exec_callback_cQIdentityProxyModel_mapSelectionFromSource
  if not isNil(vtbl.mapSelectionToSource):
    vtbl[].vtbl.mapSelectionToSource = miqt_exec_callback_cQIdentityProxyModel_mapSelectionToSource
  if not isNil(vtbl.match):
    vtbl[].vtbl.match = miqt_exec_callback_cQIdentityProxyModel_match
  if not isNil(vtbl.setSourceModel):
    vtbl[].vtbl.setSourceModel = miqt_exec_callback_cQIdentityProxyModel_setSourceModel
  if not isNil(vtbl.insertColumns):
    vtbl[].vtbl.insertColumns = miqt_exec_callback_cQIdentityProxyModel_insertColumns
  if not isNil(vtbl.insertRows):
    vtbl[].vtbl.insertRows = miqt_exec_callback_cQIdentityProxyModel_insertRows
  if not isNil(vtbl.removeColumns):
    vtbl[].vtbl.removeColumns = miqt_exec_callback_cQIdentityProxyModel_removeColumns
  if not isNil(vtbl.removeRows):
    vtbl[].vtbl.removeRows = miqt_exec_callback_cQIdentityProxyModel_removeRows
  if not isNil(vtbl.moveRows):
    vtbl[].vtbl.moveRows = miqt_exec_callback_cQIdentityProxyModel_moveRows
  if not isNil(vtbl.moveColumns):
    vtbl[].vtbl.moveColumns = miqt_exec_callback_cQIdentityProxyModel_moveColumns
  if not isNil(vtbl.submit):
    vtbl[].vtbl.submit = miqt_exec_callback_cQIdentityProxyModel_submit
  if not isNil(vtbl.revert):
    vtbl[].vtbl.revert = miqt_exec_callback_cQIdentityProxyModel_revert
  if not isNil(vtbl.data):
    vtbl[].vtbl.data = miqt_exec_callback_cQIdentityProxyModel_data
  if not isNil(vtbl.itemData):
    vtbl[].vtbl.itemData = miqt_exec_callback_cQIdentityProxyModel_itemData
  if not isNil(vtbl.flags):
    vtbl[].vtbl.flags = miqt_exec_callback_cQIdentityProxyModel_flags
  if not isNil(vtbl.setData):
    vtbl[].vtbl.setData = miqt_exec_callback_cQIdentityProxyModel_setData
  if not isNil(vtbl.setItemData):
    vtbl[].vtbl.setItemData = miqt_exec_callback_cQIdentityProxyModel_setItemData
  if not isNil(vtbl.setHeaderData):
    vtbl[].vtbl.setHeaderData = miqt_exec_callback_cQIdentityProxyModel_setHeaderData
  if not isNil(vtbl.buddy):
    vtbl[].vtbl.buddy = miqt_exec_callback_cQIdentityProxyModel_buddy
  if not isNil(vtbl.canFetchMore):
    vtbl[].vtbl.canFetchMore = miqt_exec_callback_cQIdentityProxyModel_canFetchMore
  if not isNil(vtbl.fetchMore):
    vtbl[].vtbl.fetchMore = miqt_exec_callback_cQIdentityProxyModel_fetchMore
  if not isNil(vtbl.sort):
    vtbl[].vtbl.sort = miqt_exec_callback_cQIdentityProxyModel_sort
  if not isNil(vtbl.span):
    vtbl[].vtbl.span = miqt_exec_callback_cQIdentityProxyModel_span
  if not isNil(vtbl.hasChildren):
    vtbl[].vtbl.hasChildren = miqt_exec_callback_cQIdentityProxyModel_hasChildren
  if not isNil(vtbl.mimeData):
    vtbl[].vtbl.mimeData = miqt_exec_callback_cQIdentityProxyModel_mimeData
  if not isNil(vtbl.canDropMimeData):
    vtbl[].vtbl.canDropMimeData = miqt_exec_callback_cQIdentityProxyModel_canDropMimeData
  if not isNil(vtbl.mimeTypes):
    vtbl[].vtbl.mimeTypes = miqt_exec_callback_cQIdentityProxyModel_mimeTypes
  if not isNil(vtbl.supportedDragActions):
    vtbl[].vtbl.supportedDragActions = miqt_exec_callback_cQIdentityProxyModel_supportedDragActions
  if not isNil(vtbl.supportedDropActions):
    vtbl[].vtbl.supportedDropActions = miqt_exec_callback_cQIdentityProxyModel_supportedDropActions
  if not isNil(vtbl.roleNames):
    vtbl[].vtbl.roleNames = miqt_exec_callback_cQIdentityProxyModel_roleNames
  if not isNil(vtbl.event):
    vtbl[].vtbl.event = miqt_exec_callback_cQIdentityProxyModel_event
  if not isNil(vtbl.eventFilter):
    vtbl[].vtbl.eventFilter = miqt_exec_callback_cQIdentityProxyModel_eventFilter
  if not isNil(vtbl.timerEvent):
    vtbl[].vtbl.timerEvent = miqt_exec_callback_cQIdentityProxyModel_timerEvent
  if not isNil(vtbl.childEvent):
    vtbl[].vtbl.childEvent = miqt_exec_callback_cQIdentityProxyModel_childEvent
  if not isNil(vtbl.customEvent):
    vtbl[].vtbl.customEvent = miqt_exec_callback_cQIdentityProxyModel_customEvent
  if not isNil(vtbl.connectNotify):
    vtbl[].vtbl.connectNotify = miqt_exec_callback_cQIdentityProxyModel_connectNotify
  if not isNil(vtbl.disconnectNotify):
    vtbl[].vtbl.disconnectNotify = miqt_exec_callback_cQIdentityProxyModel_disconnectNotify
  gen_qidentityproxymodel_types.QIdentityProxyModel(h: fcQIdentityProxyModel_new2(addr(vtbl[]), parent.h))

proc staticMetaObject*(_: type gen_qidentityproxymodel_types.QIdentityProxyModel): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQIdentityProxyModel_staticMetaObject())
proc delete*(self: gen_qidentityproxymodel_types.QIdentityProxyModel) =
  fcQIdentityProxyModel_delete(self.h)
