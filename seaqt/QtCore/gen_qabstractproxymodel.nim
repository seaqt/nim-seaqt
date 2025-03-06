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

const cflags = gorge("pkg-config --cflags Qt5Core") & " -fPIC"
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
proc fcQAbstractProxyModel_trUtf8(s: cstring): struct_miqt_string {.importc: "QAbstractProxyModel_trUtf8".}
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
proc fcQAbstractProxyModel_tr2(s: cstring, c: cstring): struct_miqt_string {.importc: "QAbstractProxyModel_tr2".}
proc fcQAbstractProxyModel_tr3(s: cstring, c: cstring, n: cint): struct_miqt_string {.importc: "QAbstractProxyModel_tr3".}
proc fcQAbstractProxyModel_trUtf82(s: cstring, c: cstring): struct_miqt_string {.importc: "QAbstractProxyModel_trUtf82".}
proc fcQAbstractProxyModel_trUtf83(s: cstring, c: cstring, n: cint): struct_miqt_string {.importc: "QAbstractProxyModel_trUtf83".}
type cQAbstractProxyModelVTable {.pure.} = object
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
  roleNames*: proc(vtbl, self: pointer, ): struct_miqt_map {.cdecl, raises: [], gcsafe.}
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
proc fcQAbstractProxyModel_virtualbase_insertRows(self: pointer, row: cint, count: cint, parent: pointer): bool {.importc: "QAbstractProxyModel_virtualbase_insertRows".}
proc fcQAbstractProxyModel_virtualbase_insertColumns(self: pointer, column: cint, count: cint, parent: pointer): bool {.importc: "QAbstractProxyModel_virtualbase_insertColumns".}
proc fcQAbstractProxyModel_virtualbase_removeRows(self: pointer, row: cint, count: cint, parent: pointer): bool {.importc: "QAbstractProxyModel_virtualbase_removeRows".}
proc fcQAbstractProxyModel_virtualbase_removeColumns(self: pointer, column: cint, count: cint, parent: pointer): bool {.importc: "QAbstractProxyModel_virtualbase_removeColumns".}
proc fcQAbstractProxyModel_virtualbase_moveRows(self: pointer, sourceParent: pointer, sourceRow: cint, count: cint, destinationParent: pointer, destinationChild: cint): bool {.importc: "QAbstractProxyModel_virtualbase_moveRows".}
proc fcQAbstractProxyModel_virtualbase_moveColumns(self: pointer, sourceParent: pointer, sourceColumn: cint, count: cint, destinationParent: pointer, destinationChild: cint): bool {.importc: "QAbstractProxyModel_virtualbase_moveColumns".}
proc fcQAbstractProxyModel_virtualbase_match(self: pointer, start: pointer, role: cint, value: pointer, hits: cint, flags: cint): struct_miqt_array {.importc: "QAbstractProxyModel_virtualbase_match".}
proc fcQAbstractProxyModel_virtualbase_roleNames(self: pointer, ): struct_miqt_map {.importc: "QAbstractProxyModel_virtualbase_roleNames".}
proc fcQAbstractProxyModel_virtualbase_event(self: pointer, event: pointer): bool {.importc: "QAbstractProxyModel_virtualbase_event".}
proc fcQAbstractProxyModel_virtualbase_eventFilter(self: pointer, watched: pointer, event: pointer): bool {.importc: "QAbstractProxyModel_virtualbase_eventFilter".}
proc fcQAbstractProxyModel_virtualbase_timerEvent(self: pointer, event: pointer): void {.importc: "QAbstractProxyModel_virtualbase_timerEvent".}
proc fcQAbstractProxyModel_virtualbase_childEvent(self: pointer, event: pointer): void {.importc: "QAbstractProxyModel_virtualbase_childEvent".}
proc fcQAbstractProxyModel_virtualbase_customEvent(self: pointer, event: pointer): void {.importc: "QAbstractProxyModel_virtualbase_customEvent".}
proc fcQAbstractProxyModel_virtualbase_connectNotify(self: pointer, signal: pointer): void {.importc: "QAbstractProxyModel_virtualbase_connectNotify".}
proc fcQAbstractProxyModel_virtualbase_disconnectNotify(self: pointer, signal: pointer): void {.importc: "QAbstractProxyModel_virtualbase_disconnectNotify".}
proc fcQAbstractProxyModel_protectedbase_resetInternalData(self: pointer, ): void {.importc: "QAbstractProxyModel_protectedbase_resetInternalData".}
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

proc metaObject*(self: gen_qabstractproxymodel_types.QAbstractProxyModel, ): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQAbstractProxyModel_metaObject(self.h), owned: false)

proc metacast*(self: gen_qabstractproxymodel_types.QAbstractProxyModel, param1: cstring): pointer =
  fcQAbstractProxyModel_metacast(self.h, param1)

proc metacall*(self: gen_qabstractproxymodel_types.QAbstractProxyModel, param1: cint, param2: cint, param3: pointer): cint =
  fcQAbstractProxyModel_metacall(self.h, cint(param1), param2, param3)

proc tr*(_: type gen_qabstractproxymodel_types.QAbstractProxyModel, s: cstring): string =
  let v_ms = fcQAbstractProxyModel_tr(s)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc trUtf8*(_: type gen_qabstractproxymodel_types.QAbstractProxyModel, s: cstring): string =
  let v_ms = fcQAbstractProxyModel_trUtf8(s)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc setSourceModel*(self: gen_qabstractproxymodel_types.QAbstractProxyModel, sourceModel: gen_qabstractitemmodel_types.QAbstractItemModel): void =
  fcQAbstractProxyModel_setSourceModel(self.h, sourceModel.h)

proc sourceModel*(self: gen_qabstractproxymodel_types.QAbstractProxyModel, ): gen_qabstractitemmodel_types.QAbstractItemModel =
  gen_qabstractitemmodel_types.QAbstractItemModel(h: fcQAbstractProxyModel_sourceModel(self.h), owned: false)

proc mapToSource*(self: gen_qabstractproxymodel_types.QAbstractProxyModel, proxyIndex: gen_qabstractitemmodel_types.QModelIndex): gen_qabstractitemmodel_types.QModelIndex =
  gen_qabstractitemmodel_types.QModelIndex(h: fcQAbstractProxyModel_mapToSource(self.h, proxyIndex.h), owned: true)

proc mapFromSource*(self: gen_qabstractproxymodel_types.QAbstractProxyModel, sourceIndex: gen_qabstractitemmodel_types.QModelIndex): gen_qabstractitemmodel_types.QModelIndex =
  gen_qabstractitemmodel_types.QModelIndex(h: fcQAbstractProxyModel_mapFromSource(self.h, sourceIndex.h), owned: true)

proc mapSelectionToSource*(self: gen_qabstractproxymodel_types.QAbstractProxyModel, selection: gen_qitemselectionmodel_types.QItemSelection): gen_qitemselectionmodel_types.QItemSelection =
  gen_qitemselectionmodel_types.QItemSelection(h: fcQAbstractProxyModel_mapSelectionToSource(self.h, selection.h), owned: true)

proc mapSelectionFromSource*(self: gen_qabstractproxymodel_types.QAbstractProxyModel, selection: gen_qitemselectionmodel_types.QItemSelection): gen_qitemselectionmodel_types.QItemSelection =
  gen_qitemselectionmodel_types.QItemSelection(h: fcQAbstractProxyModel_mapSelectionFromSource(self.h, selection.h), owned: true)

proc submit*(self: gen_qabstractproxymodel_types.QAbstractProxyModel, ): bool =
  fcQAbstractProxyModel_submit(self.h)

proc revert*(self: gen_qabstractproxymodel_types.QAbstractProxyModel, ): void =
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

proc mimeData*(self: gen_qabstractproxymodel_types.QAbstractProxyModel, indexes: seq[gen_qabstractitemmodel_types.QModelIndex]): gen_qmimedata_types.QMimeData =
  var indexes_CArray = newSeq[pointer](len(indexes))
  for i in 0..<len(indexes):
    indexes_CArray[i] = indexes[i].h

  gen_qmimedata_types.QMimeData(h: fcQAbstractProxyModel_mimeData(self.h, struct_miqt_array(len: csize_t(len(indexes)), data: if len(indexes) == 0: nil else: addr(indexes_CArray[0]))), owned: false)

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
  c_free(v_ma.data)
  vx_ret

proc supportedDragActions*(self: gen_qabstractproxymodel_types.QAbstractProxyModel, ): cint =
  cint(fcQAbstractProxyModel_supportedDragActions(self.h))

proc supportedDropActions*(self: gen_qabstractproxymodel_types.QAbstractProxyModel, ): cint =
  cint(fcQAbstractProxyModel_supportedDropActions(self.h))

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

proc trUtf8*(_: type gen_qabstractproxymodel_types.QAbstractProxyModel, s: cstring, c: cstring): string =
  let v_ms = fcQAbstractProxyModel_trUtf82(s, c)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc trUtf8*(_: type gen_qabstractproxymodel_types.QAbstractProxyModel, s: cstring, c: cstring, n: cint): string =
  let v_ms = fcQAbstractProxyModel_trUtf83(s, c, n)
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
type QAbstractProxyModelroleNamesProc* = proc(self: QAbstractProxyModel): Table[cint,seq[byte]] {.raises: [], gcsafe.}
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
  roleNames*: QAbstractProxyModelroleNamesProc
  event*: QAbstractProxyModeleventProc
  eventFilter*: QAbstractProxyModeleventFilterProc
  timerEvent*: QAbstractProxyModeltimerEventProc
  childEvent*: QAbstractProxyModelchildEventProc
  customEvent*: QAbstractProxyModelcustomEventProc
  connectNotify*: QAbstractProxyModelconnectNotifyProc
  disconnectNotify*: QAbstractProxyModeldisconnectNotifyProc
proc QAbstractProxyModelmetaObject*(self: gen_qabstractproxymodel_types.QAbstractProxyModel, ): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQAbstractProxyModel_virtualbase_metaObject(self.h), owned: false)

proc miqt_exec_callback_cQAbstractProxyModel_metaObject(vtbl: pointer, self: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QAbstractProxyModelVTable](vtbl)
  let self = QAbstractProxyModel(h: self)
  var virtualReturn = vtbl[].metaObject(self)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

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
  let slotval1 = gen_qabstractitemmodel_types.QAbstractItemModel(h: sourceModel, owned: false)
  vtbl[].setSourceModel(self, slotval1)

proc miqt_exec_callback_cQAbstractProxyModel_mapToSource(vtbl: pointer, self: pointer, proxyIndex: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QAbstractProxyModelVTable](vtbl)
  let self = QAbstractProxyModel(h: self)
  let slotval1 = gen_qabstractitemmodel_types.QModelIndex(h: proxyIndex, owned: false)
  var virtualReturn = vtbl[].mapToSource(self, slotval1)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc miqt_exec_callback_cQAbstractProxyModel_mapFromSource(vtbl: pointer, self: pointer, sourceIndex: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QAbstractProxyModelVTable](vtbl)
  let self = QAbstractProxyModel(h: self)
  let slotval1 = gen_qabstractitemmodel_types.QModelIndex(h: sourceIndex, owned: false)
  var virtualReturn = vtbl[].mapFromSource(self, slotval1)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc QAbstractProxyModelmapSelectionToSource*(self: gen_qabstractproxymodel_types.QAbstractProxyModel, selection: gen_qitemselectionmodel_types.QItemSelection): gen_qitemselectionmodel_types.QItemSelection =
  gen_qitemselectionmodel_types.QItemSelection(h: fcQAbstractProxyModel_virtualbase_mapSelectionToSource(self.h, selection.h), owned: true)

proc miqt_exec_callback_cQAbstractProxyModel_mapSelectionToSource(vtbl: pointer, self: pointer, selection: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QAbstractProxyModelVTable](vtbl)
  let self = QAbstractProxyModel(h: self)
  let slotval1 = gen_qitemselectionmodel_types.QItemSelection(h: selection, owned: false)
  var virtualReturn = vtbl[].mapSelectionToSource(self, slotval1)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc QAbstractProxyModelmapSelectionFromSource*(self: gen_qabstractproxymodel_types.QAbstractProxyModel, selection: gen_qitemselectionmodel_types.QItemSelection): gen_qitemselectionmodel_types.QItemSelection =
  gen_qitemselectionmodel_types.QItemSelection(h: fcQAbstractProxyModel_virtualbase_mapSelectionFromSource(self.h, selection.h), owned: true)

proc miqt_exec_callback_cQAbstractProxyModel_mapSelectionFromSource(vtbl: pointer, self: pointer, selection: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QAbstractProxyModelVTable](vtbl)
  let self = QAbstractProxyModel(h: self)
  let slotval1 = gen_qitemselectionmodel_types.QItemSelection(h: selection, owned: false)
  var virtualReturn = vtbl[].mapSelectionFromSource(self, slotval1)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

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
  gen_qvariant_types.QVariant(h: fcQAbstractProxyModel_virtualbase_data(self.h, proxyIndex.h, role), owned: true)

proc miqt_exec_callback_cQAbstractProxyModel_data(vtbl: pointer, self: pointer, proxyIndex: pointer, role: cint): pointer {.cdecl.} =
  let vtbl = cast[ptr QAbstractProxyModelVTable](vtbl)
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

proc miqt_exec_callback_cQAbstractProxyModel_headerData(vtbl: pointer, self: pointer, section: cint, orientation: cint, role: cint): pointer {.cdecl.} =
  let vtbl = cast[ptr QAbstractProxyModelVTable](vtbl)
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

proc miqt_exec_callback_cQAbstractProxyModel_itemData(vtbl: pointer, self: pointer, index: pointer): struct_miqt_map {.cdecl.} =
  let vtbl = cast[ptr QAbstractProxyModelVTable](vtbl)
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

proc miqt_exec_callback_cQAbstractProxyModel_flags(vtbl: pointer, self: pointer, index: pointer): cint {.cdecl.} =
  let vtbl = cast[ptr QAbstractProxyModelVTable](vtbl)
  let self = QAbstractProxyModel(h: self)
  let slotval1 = gen_qabstractitemmodel_types.QModelIndex(h: index, owned: false)
  var virtualReturn = vtbl[].flags(self, slotval1)
  cint(virtualReturn)

proc QAbstractProxyModelsetData*(self: gen_qabstractproxymodel_types.QAbstractProxyModel, index: gen_qabstractitemmodel_types.QModelIndex, value: gen_qvariant_types.QVariant, role: cint): bool =
  fcQAbstractProxyModel_virtualbase_setData(self.h, index.h, value.h, role)

proc miqt_exec_callback_cQAbstractProxyModel_setData(vtbl: pointer, self: pointer, index: pointer, value: pointer, role: cint): bool {.cdecl.} =
  let vtbl = cast[ptr QAbstractProxyModelVTable](vtbl)
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

proc miqt_exec_callback_cQAbstractProxyModel_setItemData(vtbl: pointer, self: pointer, index: pointer, roles: struct_miqt_map): bool {.cdecl.} =
  let vtbl = cast[ptr QAbstractProxyModelVTable](vtbl)
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

proc miqt_exec_callback_cQAbstractProxyModel_setHeaderData(vtbl: pointer, self: pointer, section: cint, orientation: cint, value: pointer, role: cint): bool {.cdecl.} =
  let vtbl = cast[ptr QAbstractProxyModelVTable](vtbl)
  let self = QAbstractProxyModel(h: self)
  let slotval1 = section
  let slotval2 = cint(orientation)
  let slotval3 = gen_qvariant_types.QVariant(h: value, owned: false)
  let slotval4 = role
  var virtualReturn = vtbl[].setHeaderData(self, slotval1, slotval2, slotval3, slotval4)
  virtualReturn

proc QAbstractProxyModelbuddy*(self: gen_qabstractproxymodel_types.QAbstractProxyModel, index: gen_qabstractitemmodel_types.QModelIndex): gen_qabstractitemmodel_types.QModelIndex =
  gen_qabstractitemmodel_types.QModelIndex(h: fcQAbstractProxyModel_virtualbase_buddy(self.h, index.h), owned: true)

proc miqt_exec_callback_cQAbstractProxyModel_buddy(vtbl: pointer, self: pointer, index: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QAbstractProxyModelVTable](vtbl)
  let self = QAbstractProxyModel(h: self)
  let slotval1 = gen_qabstractitemmodel_types.QModelIndex(h: index, owned: false)
  var virtualReturn = vtbl[].buddy(self, slotval1)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc QAbstractProxyModelcanFetchMore*(self: gen_qabstractproxymodel_types.QAbstractProxyModel, parent: gen_qabstractitemmodel_types.QModelIndex): bool =
  fcQAbstractProxyModel_virtualbase_canFetchMore(self.h, parent.h)

proc miqt_exec_callback_cQAbstractProxyModel_canFetchMore(vtbl: pointer, self: pointer, parent: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QAbstractProxyModelVTable](vtbl)
  let self = QAbstractProxyModel(h: self)
  let slotval1 = gen_qabstractitemmodel_types.QModelIndex(h: parent, owned: false)
  var virtualReturn = vtbl[].canFetchMore(self, slotval1)
  virtualReturn

proc QAbstractProxyModelfetchMore*(self: gen_qabstractproxymodel_types.QAbstractProxyModel, parent: gen_qabstractitemmodel_types.QModelIndex): void =
  fcQAbstractProxyModel_virtualbase_fetchMore(self.h, parent.h)

proc miqt_exec_callback_cQAbstractProxyModel_fetchMore(vtbl: pointer, self: pointer, parent: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QAbstractProxyModelVTable](vtbl)
  let self = QAbstractProxyModel(h: self)
  let slotval1 = gen_qabstractitemmodel_types.QModelIndex(h: parent, owned: false)
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
  gen_qsize_types.QSize(h: fcQAbstractProxyModel_virtualbase_span(self.h, index.h), owned: true)

proc miqt_exec_callback_cQAbstractProxyModel_span(vtbl: pointer, self: pointer, index: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QAbstractProxyModelVTable](vtbl)
  let self = QAbstractProxyModel(h: self)
  let slotval1 = gen_qabstractitemmodel_types.QModelIndex(h: index, owned: false)
  var virtualReturn = vtbl[].span(self, slotval1)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc QAbstractProxyModelhasChildren*(self: gen_qabstractproxymodel_types.QAbstractProxyModel, parent: gen_qabstractitemmodel_types.QModelIndex): bool =
  fcQAbstractProxyModel_virtualbase_hasChildren(self.h, parent.h)

proc miqt_exec_callback_cQAbstractProxyModel_hasChildren(vtbl: pointer, self: pointer, parent: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QAbstractProxyModelVTable](vtbl)
  let self = QAbstractProxyModel(h: self)
  let slotval1 = gen_qabstractitemmodel_types.QModelIndex(h: parent, owned: false)
  var virtualReturn = vtbl[].hasChildren(self, slotval1)
  virtualReturn

proc QAbstractProxyModelsibling*(self: gen_qabstractproxymodel_types.QAbstractProxyModel, row: cint, column: cint, idx: gen_qabstractitemmodel_types.QModelIndex): gen_qabstractitemmodel_types.QModelIndex =
  gen_qabstractitemmodel_types.QModelIndex(h: fcQAbstractProxyModel_virtualbase_sibling(self.h, row, column, idx.h), owned: true)

proc miqt_exec_callback_cQAbstractProxyModel_sibling(vtbl: pointer, self: pointer, row: cint, column: cint, idx: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QAbstractProxyModelVTable](vtbl)
  let self = QAbstractProxyModel(h: self)
  let slotval1 = row
  let slotval2 = column
  let slotval3 = gen_qabstractitemmodel_types.QModelIndex(h: idx, owned: false)
  var virtualReturn = vtbl[].sibling(self, slotval1, slotval2, slotval3)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc QAbstractProxyModelmimeData*(self: gen_qabstractproxymodel_types.QAbstractProxyModel, indexes: seq[gen_qabstractitemmodel_types.QModelIndex]): gen_qmimedata_types.QMimeData =
  var indexes_CArray = newSeq[pointer](len(indexes))
  for i in 0..<len(indexes):
    indexes_CArray[i] = indexes[i].h

  gen_qmimedata_types.QMimeData(h: fcQAbstractProxyModel_virtualbase_mimeData(self.h, struct_miqt_array(len: csize_t(len(indexes)), data: if len(indexes) == 0: nil else: addr(indexes_CArray[0]))), owned: false)

proc miqt_exec_callback_cQAbstractProxyModel_mimeData(vtbl: pointer, self: pointer, indexes: struct_miqt_array): pointer {.cdecl.} =
  let vtbl = cast[ptr QAbstractProxyModelVTable](vtbl)
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

proc miqt_exec_callback_cQAbstractProxyModel_canDropMimeData(vtbl: pointer, self: pointer, data: pointer, action: cint, row: cint, column: cint, parent: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QAbstractProxyModelVTable](vtbl)
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

proc miqt_exec_callback_cQAbstractProxyModel_dropMimeData(vtbl: pointer, self: pointer, data: pointer, action: cint, row: cint, column: cint, parent: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QAbstractProxyModelVTable](vtbl)
  let self = QAbstractProxyModel(h: self)
  let slotval1 = gen_qmimedata_types.QMimeData(h: data, owned: false)
  let slotval2 = cint(action)
  let slotval3 = row
  let slotval4 = column
  let slotval5 = gen_qabstractitemmodel_types.QModelIndex(h: parent, owned: false)
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
  c_free(v_ma.data)
  vx_ret

proc miqt_exec_callback_cQAbstractProxyModel_mimeTypes(vtbl: pointer, self: pointer): struct_miqt_array {.cdecl.} =
  let vtbl = cast[ptr QAbstractProxyModelVTable](vtbl)
  let self = QAbstractProxyModel(h: self)
  var virtualReturn = vtbl[].mimeTypes(self)
  var virtualReturn_CArray = cast[ptr UncheckedArray[struct_miqt_string]](if len(virtualReturn) > 0: c_malloc(c_sizet(sizeof(struct_miqt_string) * len(virtualReturn))) else: nil)
  for i in 0..<len(virtualReturn):
    var virtualReturn_i_copy = cast[cstring](if len(virtualReturn[i]) > 0: c_malloc(csize_t(len(virtualReturn[i]))) else: nil)
    if len(virtualReturn[i]) > 0: copyMem(cast[pointer](virtualReturn_i_copy), addr virtualReturn[i][0], csize_t(len(virtualReturn[i])))
    virtualReturn_CArray[i] = struct_miqt_string(data: virtualReturn_i_copy, len: csize_t(len(virtualReturn[i])))

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

proc miqt_exec_callback_cQAbstractProxyModel_index(vtbl: pointer, self: pointer, row: cint, column: cint, parent: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QAbstractProxyModelVTable](vtbl)
  let self = QAbstractProxyModel(h: self)
  let slotval1 = row
  let slotval2 = column
  let slotval3 = gen_qabstractitemmodel_types.QModelIndex(h: parent, owned: false)
  var virtualReturn = vtbl[].index(self, slotval1, slotval2, slotval3)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc miqt_exec_callback_cQAbstractProxyModel_parent(vtbl: pointer, self: pointer, child: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QAbstractProxyModelVTable](vtbl)
  let self = QAbstractProxyModel(h: self)
  let slotval1 = gen_qabstractitemmodel_types.QModelIndex(h: child, owned: false)
  var virtualReturn = vtbl[].parent(self, slotval1)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc miqt_exec_callback_cQAbstractProxyModel_rowCount(vtbl: pointer, self: pointer, parent: pointer): cint {.cdecl.} =
  let vtbl = cast[ptr QAbstractProxyModelVTable](vtbl)
  let self = QAbstractProxyModel(h: self)
  let slotval1 = gen_qabstractitemmodel_types.QModelIndex(h: parent, owned: false)
  var virtualReturn = vtbl[].rowCount(self, slotval1)
  virtualReturn

proc miqt_exec_callback_cQAbstractProxyModel_columnCount(vtbl: pointer, self: pointer, parent: pointer): cint {.cdecl.} =
  let vtbl = cast[ptr QAbstractProxyModelVTable](vtbl)
  let self = QAbstractProxyModel(h: self)
  let slotval1 = gen_qabstractitemmodel_types.QModelIndex(h: parent, owned: false)
  var virtualReturn = vtbl[].columnCount(self, slotval1)
  virtualReturn

proc QAbstractProxyModelinsertRows*(self: gen_qabstractproxymodel_types.QAbstractProxyModel, row: cint, count: cint, parent: gen_qabstractitemmodel_types.QModelIndex): bool =
  fcQAbstractProxyModel_virtualbase_insertRows(self.h, row, count, parent.h)

proc miqt_exec_callback_cQAbstractProxyModel_insertRows(vtbl: pointer, self: pointer, row: cint, count: cint, parent: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QAbstractProxyModelVTable](vtbl)
  let self = QAbstractProxyModel(h: self)
  let slotval1 = row
  let slotval2 = count
  let slotval3 = gen_qabstractitemmodel_types.QModelIndex(h: parent, owned: false)
  var virtualReturn = vtbl[].insertRows(self, slotval1, slotval2, slotval3)
  virtualReturn

proc QAbstractProxyModelinsertColumns*(self: gen_qabstractproxymodel_types.QAbstractProxyModel, column: cint, count: cint, parent: gen_qabstractitemmodel_types.QModelIndex): bool =
  fcQAbstractProxyModel_virtualbase_insertColumns(self.h, column, count, parent.h)

proc miqt_exec_callback_cQAbstractProxyModel_insertColumns(vtbl: pointer, self: pointer, column: cint, count: cint, parent: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QAbstractProxyModelVTable](vtbl)
  let self = QAbstractProxyModel(h: self)
  let slotval1 = column
  let slotval2 = count
  let slotval3 = gen_qabstractitemmodel_types.QModelIndex(h: parent, owned: false)
  var virtualReturn = vtbl[].insertColumns(self, slotval1, slotval2, slotval3)
  virtualReturn

proc QAbstractProxyModelremoveRows*(self: gen_qabstractproxymodel_types.QAbstractProxyModel, row: cint, count: cint, parent: gen_qabstractitemmodel_types.QModelIndex): bool =
  fcQAbstractProxyModel_virtualbase_removeRows(self.h, row, count, parent.h)

proc miqt_exec_callback_cQAbstractProxyModel_removeRows(vtbl: pointer, self: pointer, row: cint, count: cint, parent: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QAbstractProxyModelVTable](vtbl)
  let self = QAbstractProxyModel(h: self)
  let slotval1 = row
  let slotval2 = count
  let slotval3 = gen_qabstractitemmodel_types.QModelIndex(h: parent, owned: false)
  var virtualReturn = vtbl[].removeRows(self, slotval1, slotval2, slotval3)
  virtualReturn

proc QAbstractProxyModelremoveColumns*(self: gen_qabstractproxymodel_types.QAbstractProxyModel, column: cint, count: cint, parent: gen_qabstractitemmodel_types.QModelIndex): bool =
  fcQAbstractProxyModel_virtualbase_removeColumns(self.h, column, count, parent.h)

proc miqt_exec_callback_cQAbstractProxyModel_removeColumns(vtbl: pointer, self: pointer, column: cint, count: cint, parent: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QAbstractProxyModelVTable](vtbl)
  let self = QAbstractProxyModel(h: self)
  let slotval1 = column
  let slotval2 = count
  let slotval3 = gen_qabstractitemmodel_types.QModelIndex(h: parent, owned: false)
  var virtualReturn = vtbl[].removeColumns(self, slotval1, slotval2, slotval3)
  virtualReturn

proc QAbstractProxyModelmoveRows*(self: gen_qabstractproxymodel_types.QAbstractProxyModel, sourceParent: gen_qabstractitemmodel_types.QModelIndex, sourceRow: cint, count: cint, destinationParent: gen_qabstractitemmodel_types.QModelIndex, destinationChild: cint): bool =
  fcQAbstractProxyModel_virtualbase_moveRows(self.h, sourceParent.h, sourceRow, count, destinationParent.h, destinationChild)

proc miqt_exec_callback_cQAbstractProxyModel_moveRows(vtbl: pointer, self: pointer, sourceParent: pointer, sourceRow: cint, count: cint, destinationParent: pointer, destinationChild: cint): bool {.cdecl.} =
  let vtbl = cast[ptr QAbstractProxyModelVTable](vtbl)
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

proc miqt_exec_callback_cQAbstractProxyModel_moveColumns(vtbl: pointer, self: pointer, sourceParent: pointer, sourceColumn: cint, count: cint, destinationParent: pointer, destinationChild: cint): bool {.cdecl.} =
  let vtbl = cast[ptr QAbstractProxyModelVTable](vtbl)
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

proc miqt_exec_callback_cQAbstractProxyModel_match(vtbl: pointer, self: pointer, start: pointer, role: cint, value: pointer, hits: cint, flags: cint): struct_miqt_array {.cdecl.} =
  let vtbl = cast[ptr QAbstractProxyModelVTable](vtbl)
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
  c_free(v_mm.keys)
  c_free(v_mm.values)
  vx_ret

proc miqt_exec_callback_cQAbstractProxyModel_roleNames(vtbl: pointer, self: pointer): struct_miqt_map {.cdecl.} =
  let vtbl = cast[ptr QAbstractProxyModelVTable](vtbl)
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

proc QAbstractProxyModelevent*(self: gen_qabstractproxymodel_types.QAbstractProxyModel, event: gen_qcoreevent_types.QEvent): bool =
  fcQAbstractProxyModel_virtualbase_event(self.h, event.h)

proc miqt_exec_callback_cQAbstractProxyModel_event(vtbl: pointer, self: pointer, event: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QAbstractProxyModelVTable](vtbl)
  let self = QAbstractProxyModel(h: self)
  let slotval1 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  var virtualReturn = vtbl[].event(self, slotval1)
  virtualReturn

proc QAbstractProxyModeleventFilter*(self: gen_qabstractproxymodel_types.QAbstractProxyModel, watched: gen_qobject_types.QObject, event: gen_qcoreevent_types.QEvent): bool =
  fcQAbstractProxyModel_virtualbase_eventFilter(self.h, watched.h, event.h)

proc miqt_exec_callback_cQAbstractProxyModel_eventFilter(vtbl: pointer, self: pointer, watched: pointer, event: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QAbstractProxyModelVTable](vtbl)
  let self = QAbstractProxyModel(h: self)
  let slotval1 = gen_qobject_types.QObject(h: watched, owned: false)
  let slotval2 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  var virtualReturn = vtbl[].eventFilter(self, slotval1, slotval2)
  virtualReturn

proc QAbstractProxyModeltimerEvent*(self: gen_qabstractproxymodel_types.QAbstractProxyModel, event: gen_qcoreevent_types.QTimerEvent): void =
  fcQAbstractProxyModel_virtualbase_timerEvent(self.h, event.h)

proc miqt_exec_callback_cQAbstractProxyModel_timerEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QAbstractProxyModelVTable](vtbl)
  let self = QAbstractProxyModel(h: self)
  let slotval1 = gen_qcoreevent_types.QTimerEvent(h: event, owned: false)
  vtbl[].timerEvent(self, slotval1)

proc QAbstractProxyModelchildEvent*(self: gen_qabstractproxymodel_types.QAbstractProxyModel, event: gen_qcoreevent_types.QChildEvent): void =
  fcQAbstractProxyModel_virtualbase_childEvent(self.h, event.h)

proc miqt_exec_callback_cQAbstractProxyModel_childEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QAbstractProxyModelVTable](vtbl)
  let self = QAbstractProxyModel(h: self)
  let slotval1 = gen_qcoreevent_types.QChildEvent(h: event, owned: false)
  vtbl[].childEvent(self, slotval1)

proc QAbstractProxyModelcustomEvent*(self: gen_qabstractproxymodel_types.QAbstractProxyModel, event: gen_qcoreevent_types.QEvent): void =
  fcQAbstractProxyModel_virtualbase_customEvent(self.h, event.h)

proc miqt_exec_callback_cQAbstractProxyModel_customEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QAbstractProxyModelVTable](vtbl)
  let self = QAbstractProxyModel(h: self)
  let slotval1 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  vtbl[].customEvent(self, slotval1)

proc QAbstractProxyModelconnectNotify*(self: gen_qabstractproxymodel_types.QAbstractProxyModel, signal: gen_qmetaobject_types.QMetaMethod): void =
  fcQAbstractProxyModel_virtualbase_connectNotify(self.h, signal.h)

proc miqt_exec_callback_cQAbstractProxyModel_connectNotify(vtbl: pointer, self: pointer, signal: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QAbstractProxyModelVTable](vtbl)
  let self = QAbstractProxyModel(h: self)
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal, owned: false)
  vtbl[].connectNotify(self, slotval1)

proc QAbstractProxyModeldisconnectNotify*(self: gen_qabstractproxymodel_types.QAbstractProxyModel, signal: gen_qmetaobject_types.QMetaMethod): void =
  fcQAbstractProxyModel_virtualbase_disconnectNotify(self.h, signal.h)

proc miqt_exec_callback_cQAbstractProxyModel_disconnectNotify(vtbl: pointer, self: pointer, signal: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QAbstractProxyModelVTable](vtbl)
  let self = QAbstractProxyModel(h: self)
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal, owned: false)
  vtbl[].disconnectNotify(self, slotval1)

type VirtualQAbstractProxyModel* {.inheritable.} = ref object of QAbstractProxyModel
  vtbl*: cQAbstractProxyModelVTable
method metaObject*(self: VirtualQAbstractProxyModel, ): gen_qobjectdefs_types.QMetaObject {.base.} =
  QAbstractProxyModelmetaObject(self[])
proc miqt_exec_method_cQAbstractProxyModel_metaObject(vtbl: pointer, inst: pointer): pointer {.cdecl.} =
  let vtbl = cast[VirtualQAbstractProxyModel](cast[uint](vtbl) - uint(offsetOf(VirtualQAbstractProxyModel, vtbl)))
  var virtualReturn = vtbl.metaObject()
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

method metacast*(self: VirtualQAbstractProxyModel, param1: cstring): pointer {.base.} =
  QAbstractProxyModelmetacast(self[], param1)
proc miqt_exec_method_cQAbstractProxyModel_metacast(vtbl: pointer, inst: pointer, param1: cstring): pointer {.cdecl.} =
  let vtbl = cast[VirtualQAbstractProxyModel](cast[uint](vtbl) - uint(offsetOf(VirtualQAbstractProxyModel, vtbl)))
  let slotval1 = (param1)
  var virtualReturn = vtbl.metacast(slotval1)
  virtualReturn

method metacall*(self: VirtualQAbstractProxyModel, param1: cint, param2: cint, param3: pointer): cint {.base.} =
  QAbstractProxyModelmetacall(self[], param1, param2, param3)
proc miqt_exec_method_cQAbstractProxyModel_metacall(vtbl: pointer, inst: pointer, param1: cint, param2: cint, param3: pointer): cint {.cdecl.} =
  let vtbl = cast[VirtualQAbstractProxyModel](cast[uint](vtbl) - uint(offsetOf(VirtualQAbstractProxyModel, vtbl)))
  let slotval1 = cint(param1)
  let slotval2 = param2
  let slotval3 = param3
  var virtualReturn = vtbl.metacall(slotval1, slotval2, slotval3)
  virtualReturn

method setSourceModel*(self: VirtualQAbstractProxyModel, sourceModel: gen_qabstractitemmodel_types.QAbstractItemModel): void {.base.} =
  QAbstractProxyModelsetSourceModel(self[], sourceModel)
proc miqt_exec_method_cQAbstractProxyModel_setSourceModel(vtbl: pointer, inst: pointer, sourceModel: pointer): void {.cdecl.} =
  let vtbl = cast[VirtualQAbstractProxyModel](cast[uint](vtbl) - uint(offsetOf(VirtualQAbstractProxyModel, vtbl)))
  let slotval1 = gen_qabstractitemmodel_types.QAbstractItemModel(h: sourceModel, owned: false)
  vtbl.setSourceModel(slotval1)

method mapToSource*(self: VirtualQAbstractProxyModel, proxyIndex: gen_qabstractitemmodel_types.QModelIndex): gen_qabstractitemmodel_types.QModelIndex {.base.} =
  raiseAssert("missing implementation of QAbstractProxyModel_virtualbase_mapToSource")
proc miqt_exec_method_cQAbstractProxyModel_mapToSource(vtbl: pointer, inst: pointer, proxyIndex: pointer): pointer {.cdecl.} =
  let vtbl = cast[VirtualQAbstractProxyModel](cast[uint](vtbl) - uint(offsetOf(VirtualQAbstractProxyModel, vtbl)))
  let slotval1 = gen_qabstractitemmodel_types.QModelIndex(h: proxyIndex, owned: false)
  var virtualReturn = vtbl.mapToSource(slotval1)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

method mapFromSource*(self: VirtualQAbstractProxyModel, sourceIndex: gen_qabstractitemmodel_types.QModelIndex): gen_qabstractitemmodel_types.QModelIndex {.base.} =
  raiseAssert("missing implementation of QAbstractProxyModel_virtualbase_mapFromSource")
proc miqt_exec_method_cQAbstractProxyModel_mapFromSource(vtbl: pointer, inst: pointer, sourceIndex: pointer): pointer {.cdecl.} =
  let vtbl = cast[VirtualQAbstractProxyModel](cast[uint](vtbl) - uint(offsetOf(VirtualQAbstractProxyModel, vtbl)))
  let slotval1 = gen_qabstractitemmodel_types.QModelIndex(h: sourceIndex, owned: false)
  var virtualReturn = vtbl.mapFromSource(slotval1)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

method mapSelectionToSource*(self: VirtualQAbstractProxyModel, selection: gen_qitemselectionmodel_types.QItemSelection): gen_qitemselectionmodel_types.QItemSelection {.base.} =
  QAbstractProxyModelmapSelectionToSource(self[], selection)
proc miqt_exec_method_cQAbstractProxyModel_mapSelectionToSource(vtbl: pointer, inst: pointer, selection: pointer): pointer {.cdecl.} =
  let vtbl = cast[VirtualQAbstractProxyModel](cast[uint](vtbl) - uint(offsetOf(VirtualQAbstractProxyModel, vtbl)))
  let slotval1 = gen_qitemselectionmodel_types.QItemSelection(h: selection, owned: false)
  var virtualReturn = vtbl.mapSelectionToSource(slotval1)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

method mapSelectionFromSource*(self: VirtualQAbstractProxyModel, selection: gen_qitemselectionmodel_types.QItemSelection): gen_qitemselectionmodel_types.QItemSelection {.base.} =
  QAbstractProxyModelmapSelectionFromSource(self[], selection)
proc miqt_exec_method_cQAbstractProxyModel_mapSelectionFromSource(vtbl: pointer, inst: pointer, selection: pointer): pointer {.cdecl.} =
  let vtbl = cast[VirtualQAbstractProxyModel](cast[uint](vtbl) - uint(offsetOf(VirtualQAbstractProxyModel, vtbl)))
  let slotval1 = gen_qitemselectionmodel_types.QItemSelection(h: selection, owned: false)
  var virtualReturn = vtbl.mapSelectionFromSource(slotval1)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

method submit*(self: VirtualQAbstractProxyModel, ): bool {.base.} =
  QAbstractProxyModelsubmit(self[])
proc miqt_exec_method_cQAbstractProxyModel_submit(vtbl: pointer, inst: pointer): bool {.cdecl.} =
  let vtbl = cast[VirtualQAbstractProxyModel](cast[uint](vtbl) - uint(offsetOf(VirtualQAbstractProxyModel, vtbl)))
  var virtualReturn = vtbl.submit()
  virtualReturn

method revert*(self: VirtualQAbstractProxyModel, ): void {.base.} =
  QAbstractProxyModelrevert(self[])
proc miqt_exec_method_cQAbstractProxyModel_revert(vtbl: pointer, inst: pointer): void {.cdecl.} =
  let vtbl = cast[VirtualQAbstractProxyModel](cast[uint](vtbl) - uint(offsetOf(VirtualQAbstractProxyModel, vtbl)))
  vtbl.revert()

method data*(self: VirtualQAbstractProxyModel, proxyIndex: gen_qabstractitemmodel_types.QModelIndex, role: cint): gen_qvariant_types.QVariant {.base.} =
  QAbstractProxyModeldata(self[], proxyIndex, role)
proc miqt_exec_method_cQAbstractProxyModel_data(vtbl: pointer, inst: pointer, proxyIndex: pointer, role: cint): pointer {.cdecl.} =
  let vtbl = cast[VirtualQAbstractProxyModel](cast[uint](vtbl) - uint(offsetOf(VirtualQAbstractProxyModel, vtbl)))
  let slotval1 = gen_qabstractitemmodel_types.QModelIndex(h: proxyIndex, owned: false)
  let slotval2 = role
  var virtualReturn = vtbl.data(slotval1, slotval2)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

method headerData*(self: VirtualQAbstractProxyModel, section: cint, orientation: cint, role: cint): gen_qvariant_types.QVariant {.base.} =
  QAbstractProxyModelheaderData(self[], section, orientation, role)
proc miqt_exec_method_cQAbstractProxyModel_headerData(vtbl: pointer, inst: pointer, section: cint, orientation: cint, role: cint): pointer {.cdecl.} =
  let vtbl = cast[VirtualQAbstractProxyModel](cast[uint](vtbl) - uint(offsetOf(VirtualQAbstractProxyModel, vtbl)))
  let slotval1 = section
  let slotval2 = cint(orientation)
  let slotval3 = role
  var virtualReturn = vtbl.headerData(slotval1, slotval2, slotval3)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

method itemData*(self: VirtualQAbstractProxyModel, index: gen_qabstractitemmodel_types.QModelIndex): Table[cint,gen_qvariant_types.QVariant] {.base.} =
  QAbstractProxyModelitemData(self[], index)
proc miqt_exec_method_cQAbstractProxyModel_itemData(vtbl: pointer, inst: pointer, index: pointer): struct_miqt_map {.cdecl.} =
  let vtbl = cast[VirtualQAbstractProxyModel](cast[uint](vtbl) - uint(offsetOf(VirtualQAbstractProxyModel, vtbl)))
  let slotval1 = gen_qabstractitemmodel_types.QModelIndex(h: index, owned: false)
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

method flags*(self: VirtualQAbstractProxyModel, index: gen_qabstractitemmodel_types.QModelIndex): cint {.base.} =
  QAbstractProxyModelflags(self[], index)
proc miqt_exec_method_cQAbstractProxyModel_flags(vtbl: pointer, inst: pointer, index: pointer): cint {.cdecl.} =
  let vtbl = cast[VirtualQAbstractProxyModel](cast[uint](vtbl) - uint(offsetOf(VirtualQAbstractProxyModel, vtbl)))
  let slotval1 = gen_qabstractitemmodel_types.QModelIndex(h: index, owned: false)
  var virtualReturn = vtbl.flags(slotval1)
  cint(virtualReturn)

method setData*(self: VirtualQAbstractProxyModel, index: gen_qabstractitemmodel_types.QModelIndex, value: gen_qvariant_types.QVariant, role: cint): bool {.base.} =
  QAbstractProxyModelsetData(self[], index, value, role)
proc miqt_exec_method_cQAbstractProxyModel_setData(vtbl: pointer, inst: pointer, index: pointer, value: pointer, role: cint): bool {.cdecl.} =
  let vtbl = cast[VirtualQAbstractProxyModel](cast[uint](vtbl) - uint(offsetOf(VirtualQAbstractProxyModel, vtbl)))
  let slotval1 = gen_qabstractitemmodel_types.QModelIndex(h: index, owned: false)
  let slotval2 = gen_qvariant_types.QVariant(h: value, owned: false)
  let slotval3 = role
  var virtualReturn = vtbl.setData(slotval1, slotval2, slotval3)
  virtualReturn

method setItemData*(self: VirtualQAbstractProxyModel, index: gen_qabstractitemmodel_types.QModelIndex, roles: Table[cint,gen_qvariant_types.QVariant]): bool {.base.} =
  QAbstractProxyModelsetItemData(self[], index, roles)
proc miqt_exec_method_cQAbstractProxyModel_setItemData(vtbl: pointer, inst: pointer, index: pointer, roles: struct_miqt_map): bool {.cdecl.} =
  let vtbl = cast[VirtualQAbstractProxyModel](cast[uint](vtbl) - uint(offsetOf(VirtualQAbstractProxyModel, vtbl)))
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

method setHeaderData*(self: VirtualQAbstractProxyModel, section: cint, orientation: cint, value: gen_qvariant_types.QVariant, role: cint): bool {.base.} =
  QAbstractProxyModelsetHeaderData(self[], section, orientation, value, role)
proc miqt_exec_method_cQAbstractProxyModel_setHeaderData(vtbl: pointer, inst: pointer, section: cint, orientation: cint, value: pointer, role: cint): bool {.cdecl.} =
  let vtbl = cast[VirtualQAbstractProxyModel](cast[uint](vtbl) - uint(offsetOf(VirtualQAbstractProxyModel, vtbl)))
  let slotval1 = section
  let slotval2 = cint(orientation)
  let slotval3 = gen_qvariant_types.QVariant(h: value, owned: false)
  let slotval4 = role
  var virtualReturn = vtbl.setHeaderData(slotval1, slotval2, slotval3, slotval4)
  virtualReturn

method buddy*(self: VirtualQAbstractProxyModel, index: gen_qabstractitemmodel_types.QModelIndex): gen_qabstractitemmodel_types.QModelIndex {.base.} =
  QAbstractProxyModelbuddy(self[], index)
proc miqt_exec_method_cQAbstractProxyModel_buddy(vtbl: pointer, inst: pointer, index: pointer): pointer {.cdecl.} =
  let vtbl = cast[VirtualQAbstractProxyModel](cast[uint](vtbl) - uint(offsetOf(VirtualQAbstractProxyModel, vtbl)))
  let slotval1 = gen_qabstractitemmodel_types.QModelIndex(h: index, owned: false)
  var virtualReturn = vtbl.buddy(slotval1)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

method canFetchMore*(self: VirtualQAbstractProxyModel, parent: gen_qabstractitemmodel_types.QModelIndex): bool {.base.} =
  QAbstractProxyModelcanFetchMore(self[], parent)
proc miqt_exec_method_cQAbstractProxyModel_canFetchMore(vtbl: pointer, inst: pointer, parent: pointer): bool {.cdecl.} =
  let vtbl = cast[VirtualQAbstractProxyModel](cast[uint](vtbl) - uint(offsetOf(VirtualQAbstractProxyModel, vtbl)))
  let slotval1 = gen_qabstractitemmodel_types.QModelIndex(h: parent, owned: false)
  var virtualReturn = vtbl.canFetchMore(slotval1)
  virtualReturn

method fetchMore*(self: VirtualQAbstractProxyModel, parent: gen_qabstractitemmodel_types.QModelIndex): void {.base.} =
  QAbstractProxyModelfetchMore(self[], parent)
proc miqt_exec_method_cQAbstractProxyModel_fetchMore(vtbl: pointer, inst: pointer, parent: pointer): void {.cdecl.} =
  let vtbl = cast[VirtualQAbstractProxyModel](cast[uint](vtbl) - uint(offsetOf(VirtualQAbstractProxyModel, vtbl)))
  let slotval1 = gen_qabstractitemmodel_types.QModelIndex(h: parent, owned: false)
  vtbl.fetchMore(slotval1)

method sort*(self: VirtualQAbstractProxyModel, column: cint, order: cint): void {.base.} =
  QAbstractProxyModelsort(self[], column, order)
proc miqt_exec_method_cQAbstractProxyModel_sort(vtbl: pointer, inst: pointer, column: cint, order: cint): void {.cdecl.} =
  let vtbl = cast[VirtualQAbstractProxyModel](cast[uint](vtbl) - uint(offsetOf(VirtualQAbstractProxyModel, vtbl)))
  let slotval1 = column
  let slotval2 = cint(order)
  vtbl.sort(slotval1, slotval2)

method span*(self: VirtualQAbstractProxyModel, index: gen_qabstractitemmodel_types.QModelIndex): gen_qsize_types.QSize {.base.} =
  QAbstractProxyModelspan(self[], index)
proc miqt_exec_method_cQAbstractProxyModel_span(vtbl: pointer, inst: pointer, index: pointer): pointer {.cdecl.} =
  let vtbl = cast[VirtualQAbstractProxyModel](cast[uint](vtbl) - uint(offsetOf(VirtualQAbstractProxyModel, vtbl)))
  let slotval1 = gen_qabstractitemmodel_types.QModelIndex(h: index, owned: false)
  var virtualReturn = vtbl.span(slotval1)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

method hasChildren*(self: VirtualQAbstractProxyModel, parent: gen_qabstractitemmodel_types.QModelIndex): bool {.base.} =
  QAbstractProxyModelhasChildren(self[], parent)
proc miqt_exec_method_cQAbstractProxyModel_hasChildren(vtbl: pointer, inst: pointer, parent: pointer): bool {.cdecl.} =
  let vtbl = cast[VirtualQAbstractProxyModel](cast[uint](vtbl) - uint(offsetOf(VirtualQAbstractProxyModel, vtbl)))
  let slotval1 = gen_qabstractitemmodel_types.QModelIndex(h: parent, owned: false)
  var virtualReturn = vtbl.hasChildren(slotval1)
  virtualReturn

method sibling*(self: VirtualQAbstractProxyModel, row: cint, column: cint, idx: gen_qabstractitemmodel_types.QModelIndex): gen_qabstractitemmodel_types.QModelIndex {.base.} =
  QAbstractProxyModelsibling(self[], row, column, idx)
proc miqt_exec_method_cQAbstractProxyModel_sibling(vtbl: pointer, inst: pointer, row: cint, column: cint, idx: pointer): pointer {.cdecl.} =
  let vtbl = cast[VirtualQAbstractProxyModel](cast[uint](vtbl) - uint(offsetOf(VirtualQAbstractProxyModel, vtbl)))
  let slotval1 = row
  let slotval2 = column
  let slotval3 = gen_qabstractitemmodel_types.QModelIndex(h: idx, owned: false)
  var virtualReturn = vtbl.sibling(slotval1, slotval2, slotval3)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

method mimeData*(self: VirtualQAbstractProxyModel, indexes: seq[gen_qabstractitemmodel_types.QModelIndex]): gen_qmimedata_types.QMimeData {.base.} =
  QAbstractProxyModelmimeData(self[], indexes)
proc miqt_exec_method_cQAbstractProxyModel_mimeData(vtbl: pointer, inst: pointer, indexes: struct_miqt_array): pointer {.cdecl.} =
  let vtbl = cast[VirtualQAbstractProxyModel](cast[uint](vtbl) - uint(offsetOf(VirtualQAbstractProxyModel, vtbl)))
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

method canDropMimeData*(self: VirtualQAbstractProxyModel, data: gen_qmimedata_types.QMimeData, action: cint, row: cint, column: cint, parent: gen_qabstractitemmodel_types.QModelIndex): bool {.base.} =
  QAbstractProxyModelcanDropMimeData(self[], data, action, row, column, parent)
proc miqt_exec_method_cQAbstractProxyModel_canDropMimeData(vtbl: pointer, inst: pointer, data: pointer, action: cint, row: cint, column: cint, parent: pointer): bool {.cdecl.} =
  let vtbl = cast[VirtualQAbstractProxyModel](cast[uint](vtbl) - uint(offsetOf(VirtualQAbstractProxyModel, vtbl)))
  let slotval1 = gen_qmimedata_types.QMimeData(h: data, owned: false)
  let slotval2 = cint(action)
  let slotval3 = row
  let slotval4 = column
  let slotval5 = gen_qabstractitemmodel_types.QModelIndex(h: parent, owned: false)
  var virtualReturn = vtbl.canDropMimeData(slotval1, slotval2, slotval3, slotval4, slotval5)
  virtualReturn

method dropMimeData*(self: VirtualQAbstractProxyModel, data: gen_qmimedata_types.QMimeData, action: cint, row: cint, column: cint, parent: gen_qabstractitemmodel_types.QModelIndex): bool {.base.} =
  QAbstractProxyModeldropMimeData(self[], data, action, row, column, parent)
proc miqt_exec_method_cQAbstractProxyModel_dropMimeData(vtbl: pointer, inst: pointer, data: pointer, action: cint, row: cint, column: cint, parent: pointer): bool {.cdecl.} =
  let vtbl = cast[VirtualQAbstractProxyModel](cast[uint](vtbl) - uint(offsetOf(VirtualQAbstractProxyModel, vtbl)))
  let slotval1 = gen_qmimedata_types.QMimeData(h: data, owned: false)
  let slotval2 = cint(action)
  let slotval3 = row
  let slotval4 = column
  let slotval5 = gen_qabstractitemmodel_types.QModelIndex(h: parent, owned: false)
  var virtualReturn = vtbl.dropMimeData(slotval1, slotval2, slotval3, slotval4, slotval5)
  virtualReturn

method mimeTypes*(self: VirtualQAbstractProxyModel, ): seq[string] {.base.} =
  QAbstractProxyModelmimeTypes(self[])
proc miqt_exec_method_cQAbstractProxyModel_mimeTypes(vtbl: pointer, inst: pointer): struct_miqt_array {.cdecl.} =
  let vtbl = cast[VirtualQAbstractProxyModel](cast[uint](vtbl) - uint(offsetOf(VirtualQAbstractProxyModel, vtbl)))
  var virtualReturn = vtbl.mimeTypes()
  var virtualReturn_CArray = cast[ptr UncheckedArray[struct_miqt_string]](if len(virtualReturn) > 0: c_malloc(c_sizet(sizeof(struct_miqt_string) * len(virtualReturn))) else: nil)
  for i in 0..<len(virtualReturn):
    var virtualReturn_i_copy = cast[cstring](if len(virtualReturn[i]) > 0: c_malloc(csize_t(len(virtualReturn[i]))) else: nil)
    if len(virtualReturn[i]) > 0: copyMem(cast[pointer](virtualReturn_i_copy), addr virtualReturn[i][0], csize_t(len(virtualReturn[i])))
    virtualReturn_CArray[i] = struct_miqt_string(data: virtualReturn_i_copy, len: csize_t(len(virtualReturn[i])))

  struct_miqt_array(len: csize_t(len(virtualReturn)), data: if len(virtualReturn) == 0: nil else: addr(virtualReturn_CArray[0]))

method supportedDragActions*(self: VirtualQAbstractProxyModel, ): cint {.base.} =
  QAbstractProxyModelsupportedDragActions(self[])
proc miqt_exec_method_cQAbstractProxyModel_supportedDragActions(vtbl: pointer, inst: pointer): cint {.cdecl.} =
  let vtbl = cast[VirtualQAbstractProxyModel](cast[uint](vtbl) - uint(offsetOf(VirtualQAbstractProxyModel, vtbl)))
  var virtualReturn = vtbl.supportedDragActions()
  cint(virtualReturn)

method supportedDropActions*(self: VirtualQAbstractProxyModel, ): cint {.base.} =
  QAbstractProxyModelsupportedDropActions(self[])
proc miqt_exec_method_cQAbstractProxyModel_supportedDropActions(vtbl: pointer, inst: pointer): cint {.cdecl.} =
  let vtbl = cast[VirtualQAbstractProxyModel](cast[uint](vtbl) - uint(offsetOf(VirtualQAbstractProxyModel, vtbl)))
  var virtualReturn = vtbl.supportedDropActions()
  cint(virtualReturn)

method index*(self: VirtualQAbstractProxyModel, row: cint, column: cint, parent: gen_qabstractitemmodel_types.QModelIndex): gen_qabstractitemmodel_types.QModelIndex {.base.} =
  raiseAssert("missing implementation of QAbstractProxyModel_virtualbase_index")
proc miqt_exec_method_cQAbstractProxyModel_index(vtbl: pointer, inst: pointer, row: cint, column: cint, parent: pointer): pointer {.cdecl.} =
  let vtbl = cast[VirtualQAbstractProxyModel](cast[uint](vtbl) - uint(offsetOf(VirtualQAbstractProxyModel, vtbl)))
  let slotval1 = row
  let slotval2 = column
  let slotval3 = gen_qabstractitemmodel_types.QModelIndex(h: parent, owned: false)
  var virtualReturn = vtbl.index(slotval1, slotval2, slotval3)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

method parent*(self: VirtualQAbstractProxyModel, child: gen_qabstractitemmodel_types.QModelIndex): gen_qabstractitemmodel_types.QModelIndex {.base.} =
  raiseAssert("missing implementation of QAbstractProxyModel_virtualbase_parent")
proc miqt_exec_method_cQAbstractProxyModel_parent(vtbl: pointer, inst: pointer, child: pointer): pointer {.cdecl.} =
  let vtbl = cast[VirtualQAbstractProxyModel](cast[uint](vtbl) - uint(offsetOf(VirtualQAbstractProxyModel, vtbl)))
  let slotval1 = gen_qabstractitemmodel_types.QModelIndex(h: child, owned: false)
  var virtualReturn = vtbl.parent(slotval1)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

method rowCount*(self: VirtualQAbstractProxyModel, parent: gen_qabstractitemmodel_types.QModelIndex): cint {.base.} =
  raiseAssert("missing implementation of QAbstractProxyModel_virtualbase_rowCount")
proc miqt_exec_method_cQAbstractProxyModel_rowCount(vtbl: pointer, inst: pointer, parent: pointer): cint {.cdecl.} =
  let vtbl = cast[VirtualQAbstractProxyModel](cast[uint](vtbl) - uint(offsetOf(VirtualQAbstractProxyModel, vtbl)))
  let slotval1 = gen_qabstractitemmodel_types.QModelIndex(h: parent, owned: false)
  var virtualReturn = vtbl.rowCount(slotval1)
  virtualReturn

method columnCount*(self: VirtualQAbstractProxyModel, parent: gen_qabstractitemmodel_types.QModelIndex): cint {.base.} =
  raiseAssert("missing implementation of QAbstractProxyModel_virtualbase_columnCount")
proc miqt_exec_method_cQAbstractProxyModel_columnCount(vtbl: pointer, inst: pointer, parent: pointer): cint {.cdecl.} =
  let vtbl = cast[VirtualQAbstractProxyModel](cast[uint](vtbl) - uint(offsetOf(VirtualQAbstractProxyModel, vtbl)))
  let slotval1 = gen_qabstractitemmodel_types.QModelIndex(h: parent, owned: false)
  var virtualReturn = vtbl.columnCount(slotval1)
  virtualReturn

method insertRows*(self: VirtualQAbstractProxyModel, row: cint, count: cint, parent: gen_qabstractitemmodel_types.QModelIndex): bool {.base.} =
  QAbstractProxyModelinsertRows(self[], row, count, parent)
proc miqt_exec_method_cQAbstractProxyModel_insertRows(vtbl: pointer, inst: pointer, row: cint, count: cint, parent: pointer): bool {.cdecl.} =
  let vtbl = cast[VirtualQAbstractProxyModel](cast[uint](vtbl) - uint(offsetOf(VirtualQAbstractProxyModel, vtbl)))
  let slotval1 = row
  let slotval2 = count
  let slotval3 = gen_qabstractitemmodel_types.QModelIndex(h: parent, owned: false)
  var virtualReturn = vtbl.insertRows(slotval1, slotval2, slotval3)
  virtualReturn

method insertColumns*(self: VirtualQAbstractProxyModel, column: cint, count: cint, parent: gen_qabstractitemmodel_types.QModelIndex): bool {.base.} =
  QAbstractProxyModelinsertColumns(self[], column, count, parent)
proc miqt_exec_method_cQAbstractProxyModel_insertColumns(vtbl: pointer, inst: pointer, column: cint, count: cint, parent: pointer): bool {.cdecl.} =
  let vtbl = cast[VirtualQAbstractProxyModel](cast[uint](vtbl) - uint(offsetOf(VirtualQAbstractProxyModel, vtbl)))
  let slotval1 = column
  let slotval2 = count
  let slotval3 = gen_qabstractitemmodel_types.QModelIndex(h: parent, owned: false)
  var virtualReturn = vtbl.insertColumns(slotval1, slotval2, slotval3)
  virtualReturn

method removeRows*(self: VirtualQAbstractProxyModel, row: cint, count: cint, parent: gen_qabstractitemmodel_types.QModelIndex): bool {.base.} =
  QAbstractProxyModelremoveRows(self[], row, count, parent)
proc miqt_exec_method_cQAbstractProxyModel_removeRows(vtbl: pointer, inst: pointer, row: cint, count: cint, parent: pointer): bool {.cdecl.} =
  let vtbl = cast[VirtualQAbstractProxyModel](cast[uint](vtbl) - uint(offsetOf(VirtualQAbstractProxyModel, vtbl)))
  let slotval1 = row
  let slotval2 = count
  let slotval3 = gen_qabstractitemmodel_types.QModelIndex(h: parent, owned: false)
  var virtualReturn = vtbl.removeRows(slotval1, slotval2, slotval3)
  virtualReturn

method removeColumns*(self: VirtualQAbstractProxyModel, column: cint, count: cint, parent: gen_qabstractitemmodel_types.QModelIndex): bool {.base.} =
  QAbstractProxyModelremoveColumns(self[], column, count, parent)
proc miqt_exec_method_cQAbstractProxyModel_removeColumns(vtbl: pointer, inst: pointer, column: cint, count: cint, parent: pointer): bool {.cdecl.} =
  let vtbl = cast[VirtualQAbstractProxyModel](cast[uint](vtbl) - uint(offsetOf(VirtualQAbstractProxyModel, vtbl)))
  let slotval1 = column
  let slotval2 = count
  let slotval3 = gen_qabstractitemmodel_types.QModelIndex(h: parent, owned: false)
  var virtualReturn = vtbl.removeColumns(slotval1, slotval2, slotval3)
  virtualReturn

method moveRows*(self: VirtualQAbstractProxyModel, sourceParent: gen_qabstractitemmodel_types.QModelIndex, sourceRow: cint, count: cint, destinationParent: gen_qabstractitemmodel_types.QModelIndex, destinationChild: cint): bool {.base.} =
  QAbstractProxyModelmoveRows(self[], sourceParent, sourceRow, count, destinationParent, destinationChild)
proc miqt_exec_method_cQAbstractProxyModel_moveRows(vtbl: pointer, inst: pointer, sourceParent: pointer, sourceRow: cint, count: cint, destinationParent: pointer, destinationChild: cint): bool {.cdecl.} =
  let vtbl = cast[VirtualQAbstractProxyModel](cast[uint](vtbl) - uint(offsetOf(VirtualQAbstractProxyModel, vtbl)))
  let slotval1 = gen_qabstractitemmodel_types.QModelIndex(h: sourceParent, owned: false)
  let slotval2 = sourceRow
  let slotval3 = count
  let slotval4 = gen_qabstractitemmodel_types.QModelIndex(h: destinationParent, owned: false)
  let slotval5 = destinationChild
  var virtualReturn = vtbl.moveRows(slotval1, slotval2, slotval3, slotval4, slotval5)
  virtualReturn

method moveColumns*(self: VirtualQAbstractProxyModel, sourceParent: gen_qabstractitemmodel_types.QModelIndex, sourceColumn: cint, count: cint, destinationParent: gen_qabstractitemmodel_types.QModelIndex, destinationChild: cint): bool {.base.} =
  QAbstractProxyModelmoveColumns(self[], sourceParent, sourceColumn, count, destinationParent, destinationChild)
proc miqt_exec_method_cQAbstractProxyModel_moveColumns(vtbl: pointer, inst: pointer, sourceParent: pointer, sourceColumn: cint, count: cint, destinationParent: pointer, destinationChild: cint): bool {.cdecl.} =
  let vtbl = cast[VirtualQAbstractProxyModel](cast[uint](vtbl) - uint(offsetOf(VirtualQAbstractProxyModel, vtbl)))
  let slotval1 = gen_qabstractitemmodel_types.QModelIndex(h: sourceParent, owned: false)
  let slotval2 = sourceColumn
  let slotval3 = count
  let slotval4 = gen_qabstractitemmodel_types.QModelIndex(h: destinationParent, owned: false)
  let slotval5 = destinationChild
  var virtualReturn = vtbl.moveColumns(slotval1, slotval2, slotval3, slotval4, slotval5)
  virtualReturn

method match*(self: VirtualQAbstractProxyModel, start: gen_qabstractitemmodel_types.QModelIndex, role: cint, value: gen_qvariant_types.QVariant, hits: cint, flags: cint): seq[gen_qabstractitemmodel_types.QModelIndex] {.base.} =
  QAbstractProxyModelmatch(self[], start, role, value, hits, flags)
proc miqt_exec_method_cQAbstractProxyModel_match(vtbl: pointer, inst: pointer, start: pointer, role: cint, value: pointer, hits: cint, flags: cint): struct_miqt_array {.cdecl.} =
  let vtbl = cast[VirtualQAbstractProxyModel](cast[uint](vtbl) - uint(offsetOf(VirtualQAbstractProxyModel, vtbl)))
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

method roleNames*(self: VirtualQAbstractProxyModel, ): Table[cint,seq[byte]] {.base.} =
  QAbstractProxyModelroleNames(self[])
proc miqt_exec_method_cQAbstractProxyModel_roleNames(vtbl: pointer, inst: pointer): struct_miqt_map {.cdecl.} =
  let vtbl = cast[VirtualQAbstractProxyModel](cast[uint](vtbl) - uint(offsetOf(VirtualQAbstractProxyModel, vtbl)))
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

method event*(self: VirtualQAbstractProxyModel, event: gen_qcoreevent_types.QEvent): bool {.base.} =
  QAbstractProxyModelevent(self[], event)
proc miqt_exec_method_cQAbstractProxyModel_event(vtbl: pointer, inst: pointer, event: pointer): bool {.cdecl.} =
  let vtbl = cast[VirtualQAbstractProxyModel](cast[uint](vtbl) - uint(offsetOf(VirtualQAbstractProxyModel, vtbl)))
  let slotval1 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  var virtualReturn = vtbl.event(slotval1)
  virtualReturn

method eventFilter*(self: VirtualQAbstractProxyModel, watched: gen_qobject_types.QObject, event: gen_qcoreevent_types.QEvent): bool {.base.} =
  QAbstractProxyModeleventFilter(self[], watched, event)
proc miqt_exec_method_cQAbstractProxyModel_eventFilter(vtbl: pointer, inst: pointer, watched: pointer, event: pointer): bool {.cdecl.} =
  let vtbl = cast[VirtualQAbstractProxyModel](cast[uint](vtbl) - uint(offsetOf(VirtualQAbstractProxyModel, vtbl)))
  let slotval1 = gen_qobject_types.QObject(h: watched, owned: false)
  let slotval2 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  var virtualReturn = vtbl.eventFilter(slotval1, slotval2)
  virtualReturn

method timerEvent*(self: VirtualQAbstractProxyModel, event: gen_qcoreevent_types.QTimerEvent): void {.base.} =
  QAbstractProxyModeltimerEvent(self[], event)
proc miqt_exec_method_cQAbstractProxyModel_timerEvent(vtbl: pointer, inst: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[VirtualQAbstractProxyModel](cast[uint](vtbl) - uint(offsetOf(VirtualQAbstractProxyModel, vtbl)))
  let slotval1 = gen_qcoreevent_types.QTimerEvent(h: event, owned: false)
  vtbl.timerEvent(slotval1)

method childEvent*(self: VirtualQAbstractProxyModel, event: gen_qcoreevent_types.QChildEvent): void {.base.} =
  QAbstractProxyModelchildEvent(self[], event)
proc miqt_exec_method_cQAbstractProxyModel_childEvent(vtbl: pointer, inst: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[VirtualQAbstractProxyModel](cast[uint](vtbl) - uint(offsetOf(VirtualQAbstractProxyModel, vtbl)))
  let slotval1 = gen_qcoreevent_types.QChildEvent(h: event, owned: false)
  vtbl.childEvent(slotval1)

method customEvent*(self: VirtualQAbstractProxyModel, event: gen_qcoreevent_types.QEvent): void {.base.} =
  QAbstractProxyModelcustomEvent(self[], event)
proc miqt_exec_method_cQAbstractProxyModel_customEvent(vtbl: pointer, inst: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[VirtualQAbstractProxyModel](cast[uint](vtbl) - uint(offsetOf(VirtualQAbstractProxyModel, vtbl)))
  let slotval1 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  vtbl.customEvent(slotval1)

method connectNotify*(self: VirtualQAbstractProxyModel, signal: gen_qmetaobject_types.QMetaMethod): void {.base.} =
  QAbstractProxyModelconnectNotify(self[], signal)
proc miqt_exec_method_cQAbstractProxyModel_connectNotify(vtbl: pointer, inst: pointer, signal: pointer): void {.cdecl.} =
  let vtbl = cast[VirtualQAbstractProxyModel](cast[uint](vtbl) - uint(offsetOf(VirtualQAbstractProxyModel, vtbl)))
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal, owned: false)
  vtbl.connectNotify(slotval1)

method disconnectNotify*(self: VirtualQAbstractProxyModel, signal: gen_qmetaobject_types.QMetaMethod): void {.base.} =
  QAbstractProxyModeldisconnectNotify(self[], signal)
proc miqt_exec_method_cQAbstractProxyModel_disconnectNotify(vtbl: pointer, inst: pointer, signal: pointer): void {.cdecl.} =
  let vtbl = cast[VirtualQAbstractProxyModel](cast[uint](vtbl) - uint(offsetOf(VirtualQAbstractProxyModel, vtbl)))
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal, owned: false)
  vtbl.disconnectNotify(slotval1)

proc resetInternalData*(self: gen_qabstractproxymodel_types.QAbstractProxyModel, ): void =
  fcQAbstractProxyModel_protectedbase_resetInternalData(self.h)

proc createIndex*(self: gen_qabstractproxymodel_types.QAbstractProxyModel, row: cint, column: cint): gen_qabstractitemmodel_types.QModelIndex =
  gen_qabstractitemmodel_types.QModelIndex(h: fcQAbstractProxyModel_protectedbase_createIndex(self.h, row, column), owned: true)

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
    vx_ret[i] = gen_qabstractitemmodel_types.QModelIndex(h: v_outCast[i], owned: true)
  c_free(v_ma.data)
  vx_ret

proc sender*(self: gen_qabstractproxymodel_types.QAbstractProxyModel, ): gen_qobject_types.QObject =
  gen_qobject_types.QObject(h: fcQAbstractProxyModel_protectedbase_sender(self.h), owned: false)

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
  vtbl[].vtbl.destructor = proc(vtbl: ptr cQAbstractProxyModelVTable, _: ptr cQAbstractProxyModel) {.cdecl.} =
    let vtbl = cast[ref QAbstractProxyModelVTable](vtbl)
    GC_unref(vtbl)
  if not isNil(vtbl[].metaObject):
    vtbl[].vtbl.metaObject = miqt_exec_callback_cQAbstractProxyModel_metaObject
  if not isNil(vtbl[].metacast):
    vtbl[].vtbl.metacast = miqt_exec_callback_cQAbstractProxyModel_metacast
  if not isNil(vtbl[].metacall):
    vtbl[].vtbl.metacall = miqt_exec_callback_cQAbstractProxyModel_metacall
  if not isNil(vtbl[].setSourceModel):
    vtbl[].vtbl.setSourceModel = miqt_exec_callback_cQAbstractProxyModel_setSourceModel
  if not isNil(vtbl[].mapToSource):
    vtbl[].vtbl.mapToSource = miqt_exec_callback_cQAbstractProxyModel_mapToSource
  if not isNil(vtbl[].mapFromSource):
    vtbl[].vtbl.mapFromSource = miqt_exec_callback_cQAbstractProxyModel_mapFromSource
  if not isNil(vtbl[].mapSelectionToSource):
    vtbl[].vtbl.mapSelectionToSource = miqt_exec_callback_cQAbstractProxyModel_mapSelectionToSource
  if not isNil(vtbl[].mapSelectionFromSource):
    vtbl[].vtbl.mapSelectionFromSource = miqt_exec_callback_cQAbstractProxyModel_mapSelectionFromSource
  if not isNil(vtbl[].submit):
    vtbl[].vtbl.submit = miqt_exec_callback_cQAbstractProxyModel_submit
  if not isNil(vtbl[].revert):
    vtbl[].vtbl.revert = miqt_exec_callback_cQAbstractProxyModel_revert
  if not isNil(vtbl[].data):
    vtbl[].vtbl.data = miqt_exec_callback_cQAbstractProxyModel_data
  if not isNil(vtbl[].headerData):
    vtbl[].vtbl.headerData = miqt_exec_callback_cQAbstractProxyModel_headerData
  if not isNil(vtbl[].itemData):
    vtbl[].vtbl.itemData = miqt_exec_callback_cQAbstractProxyModel_itemData
  if not isNil(vtbl[].flags):
    vtbl[].vtbl.flags = miqt_exec_callback_cQAbstractProxyModel_flags
  if not isNil(vtbl[].setData):
    vtbl[].vtbl.setData = miqt_exec_callback_cQAbstractProxyModel_setData
  if not isNil(vtbl[].setItemData):
    vtbl[].vtbl.setItemData = miqt_exec_callback_cQAbstractProxyModel_setItemData
  if not isNil(vtbl[].setHeaderData):
    vtbl[].vtbl.setHeaderData = miqt_exec_callback_cQAbstractProxyModel_setHeaderData
  if not isNil(vtbl[].buddy):
    vtbl[].vtbl.buddy = miqt_exec_callback_cQAbstractProxyModel_buddy
  if not isNil(vtbl[].canFetchMore):
    vtbl[].vtbl.canFetchMore = miqt_exec_callback_cQAbstractProxyModel_canFetchMore
  if not isNil(vtbl[].fetchMore):
    vtbl[].vtbl.fetchMore = miqt_exec_callback_cQAbstractProxyModel_fetchMore
  if not isNil(vtbl[].sort):
    vtbl[].vtbl.sort = miqt_exec_callback_cQAbstractProxyModel_sort
  if not isNil(vtbl[].span):
    vtbl[].vtbl.span = miqt_exec_callback_cQAbstractProxyModel_span
  if not isNil(vtbl[].hasChildren):
    vtbl[].vtbl.hasChildren = miqt_exec_callback_cQAbstractProxyModel_hasChildren
  if not isNil(vtbl[].sibling):
    vtbl[].vtbl.sibling = miqt_exec_callback_cQAbstractProxyModel_sibling
  if not isNil(vtbl[].mimeData):
    vtbl[].vtbl.mimeData = miqt_exec_callback_cQAbstractProxyModel_mimeData
  if not isNil(vtbl[].canDropMimeData):
    vtbl[].vtbl.canDropMimeData = miqt_exec_callback_cQAbstractProxyModel_canDropMimeData
  if not isNil(vtbl[].dropMimeData):
    vtbl[].vtbl.dropMimeData = miqt_exec_callback_cQAbstractProxyModel_dropMimeData
  if not isNil(vtbl[].mimeTypes):
    vtbl[].vtbl.mimeTypes = miqt_exec_callback_cQAbstractProxyModel_mimeTypes
  if not isNil(vtbl[].supportedDragActions):
    vtbl[].vtbl.supportedDragActions = miqt_exec_callback_cQAbstractProxyModel_supportedDragActions
  if not isNil(vtbl[].supportedDropActions):
    vtbl[].vtbl.supportedDropActions = miqt_exec_callback_cQAbstractProxyModel_supportedDropActions
  if not isNil(vtbl[].index):
    vtbl[].vtbl.index = miqt_exec_callback_cQAbstractProxyModel_index
  if not isNil(vtbl[].parent):
    vtbl[].vtbl.parent = miqt_exec_callback_cQAbstractProxyModel_parent
  if not isNil(vtbl[].rowCount):
    vtbl[].vtbl.rowCount = miqt_exec_callback_cQAbstractProxyModel_rowCount
  if not isNil(vtbl[].columnCount):
    vtbl[].vtbl.columnCount = miqt_exec_callback_cQAbstractProxyModel_columnCount
  if not isNil(vtbl[].insertRows):
    vtbl[].vtbl.insertRows = miqt_exec_callback_cQAbstractProxyModel_insertRows
  if not isNil(vtbl[].insertColumns):
    vtbl[].vtbl.insertColumns = miqt_exec_callback_cQAbstractProxyModel_insertColumns
  if not isNil(vtbl[].removeRows):
    vtbl[].vtbl.removeRows = miqt_exec_callback_cQAbstractProxyModel_removeRows
  if not isNil(vtbl[].removeColumns):
    vtbl[].vtbl.removeColumns = miqt_exec_callback_cQAbstractProxyModel_removeColumns
  if not isNil(vtbl[].moveRows):
    vtbl[].vtbl.moveRows = miqt_exec_callback_cQAbstractProxyModel_moveRows
  if not isNil(vtbl[].moveColumns):
    vtbl[].vtbl.moveColumns = miqt_exec_callback_cQAbstractProxyModel_moveColumns
  if not isNil(vtbl[].match):
    vtbl[].vtbl.match = miqt_exec_callback_cQAbstractProxyModel_match
  if not isNil(vtbl[].roleNames):
    vtbl[].vtbl.roleNames = miqt_exec_callback_cQAbstractProxyModel_roleNames
  if not isNil(vtbl[].event):
    vtbl[].vtbl.event = miqt_exec_callback_cQAbstractProxyModel_event
  if not isNil(vtbl[].eventFilter):
    vtbl[].vtbl.eventFilter = miqt_exec_callback_cQAbstractProxyModel_eventFilter
  if not isNil(vtbl[].timerEvent):
    vtbl[].vtbl.timerEvent = miqt_exec_callback_cQAbstractProxyModel_timerEvent
  if not isNil(vtbl[].childEvent):
    vtbl[].vtbl.childEvent = miqt_exec_callback_cQAbstractProxyModel_childEvent
  if not isNil(vtbl[].customEvent):
    vtbl[].vtbl.customEvent = miqt_exec_callback_cQAbstractProxyModel_customEvent
  if not isNil(vtbl[].connectNotify):
    vtbl[].vtbl.connectNotify = miqt_exec_callback_cQAbstractProxyModel_connectNotify
  if not isNil(vtbl[].disconnectNotify):
    vtbl[].vtbl.disconnectNotify = miqt_exec_callback_cQAbstractProxyModel_disconnectNotify
  gen_qabstractproxymodel_types.QAbstractProxyModel(h: fcQAbstractProxyModel_new(addr(vtbl[].vtbl), ), owned: true)

proc create*(T: type gen_qabstractproxymodel_types.QAbstractProxyModel,
    parent: gen_qobject_types.QObject,
    vtbl: ref QAbstractProxyModelVTable = nil): gen_qabstractproxymodel_types.QAbstractProxyModel =
  let vtbl = if vtbl == nil: new QAbstractProxyModelVTable else: vtbl
  GC_ref(vtbl)
  vtbl[].vtbl.destructor = proc(vtbl: ptr cQAbstractProxyModelVTable, _: ptr cQAbstractProxyModel) {.cdecl.} =
    let vtbl = cast[ref QAbstractProxyModelVTable](vtbl)
    GC_unref(vtbl)
  if not isNil(vtbl[].metaObject):
    vtbl[].vtbl.metaObject = miqt_exec_callback_cQAbstractProxyModel_metaObject
  if not isNil(vtbl[].metacast):
    vtbl[].vtbl.metacast = miqt_exec_callback_cQAbstractProxyModel_metacast
  if not isNil(vtbl[].metacall):
    vtbl[].vtbl.metacall = miqt_exec_callback_cQAbstractProxyModel_metacall
  if not isNil(vtbl[].setSourceModel):
    vtbl[].vtbl.setSourceModel = miqt_exec_callback_cQAbstractProxyModel_setSourceModel
  if not isNil(vtbl[].mapToSource):
    vtbl[].vtbl.mapToSource = miqt_exec_callback_cQAbstractProxyModel_mapToSource
  if not isNil(vtbl[].mapFromSource):
    vtbl[].vtbl.mapFromSource = miqt_exec_callback_cQAbstractProxyModel_mapFromSource
  if not isNil(vtbl[].mapSelectionToSource):
    vtbl[].vtbl.mapSelectionToSource = miqt_exec_callback_cQAbstractProxyModel_mapSelectionToSource
  if not isNil(vtbl[].mapSelectionFromSource):
    vtbl[].vtbl.mapSelectionFromSource = miqt_exec_callback_cQAbstractProxyModel_mapSelectionFromSource
  if not isNil(vtbl[].submit):
    vtbl[].vtbl.submit = miqt_exec_callback_cQAbstractProxyModel_submit
  if not isNil(vtbl[].revert):
    vtbl[].vtbl.revert = miqt_exec_callback_cQAbstractProxyModel_revert
  if not isNil(vtbl[].data):
    vtbl[].vtbl.data = miqt_exec_callback_cQAbstractProxyModel_data
  if not isNil(vtbl[].headerData):
    vtbl[].vtbl.headerData = miqt_exec_callback_cQAbstractProxyModel_headerData
  if not isNil(vtbl[].itemData):
    vtbl[].vtbl.itemData = miqt_exec_callback_cQAbstractProxyModel_itemData
  if not isNil(vtbl[].flags):
    vtbl[].vtbl.flags = miqt_exec_callback_cQAbstractProxyModel_flags
  if not isNil(vtbl[].setData):
    vtbl[].vtbl.setData = miqt_exec_callback_cQAbstractProxyModel_setData
  if not isNil(vtbl[].setItemData):
    vtbl[].vtbl.setItemData = miqt_exec_callback_cQAbstractProxyModel_setItemData
  if not isNil(vtbl[].setHeaderData):
    vtbl[].vtbl.setHeaderData = miqt_exec_callback_cQAbstractProxyModel_setHeaderData
  if not isNil(vtbl[].buddy):
    vtbl[].vtbl.buddy = miqt_exec_callback_cQAbstractProxyModel_buddy
  if not isNil(vtbl[].canFetchMore):
    vtbl[].vtbl.canFetchMore = miqt_exec_callback_cQAbstractProxyModel_canFetchMore
  if not isNil(vtbl[].fetchMore):
    vtbl[].vtbl.fetchMore = miqt_exec_callback_cQAbstractProxyModel_fetchMore
  if not isNil(vtbl[].sort):
    vtbl[].vtbl.sort = miqt_exec_callback_cQAbstractProxyModel_sort
  if not isNil(vtbl[].span):
    vtbl[].vtbl.span = miqt_exec_callback_cQAbstractProxyModel_span
  if not isNil(vtbl[].hasChildren):
    vtbl[].vtbl.hasChildren = miqt_exec_callback_cQAbstractProxyModel_hasChildren
  if not isNil(vtbl[].sibling):
    vtbl[].vtbl.sibling = miqt_exec_callback_cQAbstractProxyModel_sibling
  if not isNil(vtbl[].mimeData):
    vtbl[].vtbl.mimeData = miqt_exec_callback_cQAbstractProxyModel_mimeData
  if not isNil(vtbl[].canDropMimeData):
    vtbl[].vtbl.canDropMimeData = miqt_exec_callback_cQAbstractProxyModel_canDropMimeData
  if not isNil(vtbl[].dropMimeData):
    vtbl[].vtbl.dropMimeData = miqt_exec_callback_cQAbstractProxyModel_dropMimeData
  if not isNil(vtbl[].mimeTypes):
    vtbl[].vtbl.mimeTypes = miqt_exec_callback_cQAbstractProxyModel_mimeTypes
  if not isNil(vtbl[].supportedDragActions):
    vtbl[].vtbl.supportedDragActions = miqt_exec_callback_cQAbstractProxyModel_supportedDragActions
  if not isNil(vtbl[].supportedDropActions):
    vtbl[].vtbl.supportedDropActions = miqt_exec_callback_cQAbstractProxyModel_supportedDropActions
  if not isNil(vtbl[].index):
    vtbl[].vtbl.index = miqt_exec_callback_cQAbstractProxyModel_index
  if not isNil(vtbl[].parent):
    vtbl[].vtbl.parent = miqt_exec_callback_cQAbstractProxyModel_parent
  if not isNil(vtbl[].rowCount):
    vtbl[].vtbl.rowCount = miqt_exec_callback_cQAbstractProxyModel_rowCount
  if not isNil(vtbl[].columnCount):
    vtbl[].vtbl.columnCount = miqt_exec_callback_cQAbstractProxyModel_columnCount
  if not isNil(vtbl[].insertRows):
    vtbl[].vtbl.insertRows = miqt_exec_callback_cQAbstractProxyModel_insertRows
  if not isNil(vtbl[].insertColumns):
    vtbl[].vtbl.insertColumns = miqt_exec_callback_cQAbstractProxyModel_insertColumns
  if not isNil(vtbl[].removeRows):
    vtbl[].vtbl.removeRows = miqt_exec_callback_cQAbstractProxyModel_removeRows
  if not isNil(vtbl[].removeColumns):
    vtbl[].vtbl.removeColumns = miqt_exec_callback_cQAbstractProxyModel_removeColumns
  if not isNil(vtbl[].moveRows):
    vtbl[].vtbl.moveRows = miqt_exec_callback_cQAbstractProxyModel_moveRows
  if not isNil(vtbl[].moveColumns):
    vtbl[].vtbl.moveColumns = miqt_exec_callback_cQAbstractProxyModel_moveColumns
  if not isNil(vtbl[].match):
    vtbl[].vtbl.match = miqt_exec_callback_cQAbstractProxyModel_match
  if not isNil(vtbl[].roleNames):
    vtbl[].vtbl.roleNames = miqt_exec_callback_cQAbstractProxyModel_roleNames
  if not isNil(vtbl[].event):
    vtbl[].vtbl.event = miqt_exec_callback_cQAbstractProxyModel_event
  if not isNil(vtbl[].eventFilter):
    vtbl[].vtbl.eventFilter = miqt_exec_callback_cQAbstractProxyModel_eventFilter
  if not isNil(vtbl[].timerEvent):
    vtbl[].vtbl.timerEvent = miqt_exec_callback_cQAbstractProxyModel_timerEvent
  if not isNil(vtbl[].childEvent):
    vtbl[].vtbl.childEvent = miqt_exec_callback_cQAbstractProxyModel_childEvent
  if not isNil(vtbl[].customEvent):
    vtbl[].vtbl.customEvent = miqt_exec_callback_cQAbstractProxyModel_customEvent
  if not isNil(vtbl[].connectNotify):
    vtbl[].vtbl.connectNotify = miqt_exec_callback_cQAbstractProxyModel_connectNotify
  if not isNil(vtbl[].disconnectNotify):
    vtbl[].vtbl.disconnectNotify = miqt_exec_callback_cQAbstractProxyModel_disconnectNotify
  gen_qabstractproxymodel_types.QAbstractProxyModel(h: fcQAbstractProxyModel_new2(addr(vtbl[].vtbl), parent.h), owned: true)

proc create*(T: type gen_qabstractproxymodel_types.QAbstractProxyModel,
    vtbl: VirtualQAbstractProxyModel) =

  vtbl[].vtbl.destructor = proc(vtbl: ptr cQAbstractProxyModelVTable, _: ptr cQAbstractProxyModel) {.cdecl.} =
    let vtbl = cast[ptr typeof(VirtualQAbstractProxyModel()[])](cast[uint](vtbl) - uint(offsetOf(VirtualQAbstractProxyModel, vtbl)))
    vtbl[].h = nil
    vtbl[].owned = false
  vtbl[].vtbl.metaObject = miqt_exec_method_cQAbstractProxyModel_metaObject
  vtbl[].vtbl.metacast = miqt_exec_method_cQAbstractProxyModel_metacast
  vtbl[].vtbl.metacall = miqt_exec_method_cQAbstractProxyModel_metacall
  vtbl[].vtbl.setSourceModel = miqt_exec_method_cQAbstractProxyModel_setSourceModel
  vtbl[].vtbl.mapToSource = miqt_exec_method_cQAbstractProxyModel_mapToSource
  vtbl[].vtbl.mapFromSource = miqt_exec_method_cQAbstractProxyModel_mapFromSource
  vtbl[].vtbl.mapSelectionToSource = miqt_exec_method_cQAbstractProxyModel_mapSelectionToSource
  vtbl[].vtbl.mapSelectionFromSource = miqt_exec_method_cQAbstractProxyModel_mapSelectionFromSource
  vtbl[].vtbl.submit = miqt_exec_method_cQAbstractProxyModel_submit
  vtbl[].vtbl.revert = miqt_exec_method_cQAbstractProxyModel_revert
  vtbl[].vtbl.data = miqt_exec_method_cQAbstractProxyModel_data
  vtbl[].vtbl.headerData = miqt_exec_method_cQAbstractProxyModel_headerData
  vtbl[].vtbl.itemData = miqt_exec_method_cQAbstractProxyModel_itemData
  vtbl[].vtbl.flags = miqt_exec_method_cQAbstractProxyModel_flags
  vtbl[].vtbl.setData = miqt_exec_method_cQAbstractProxyModel_setData
  vtbl[].vtbl.setItemData = miqt_exec_method_cQAbstractProxyModel_setItemData
  vtbl[].vtbl.setHeaderData = miqt_exec_method_cQAbstractProxyModel_setHeaderData
  vtbl[].vtbl.buddy = miqt_exec_method_cQAbstractProxyModel_buddy
  vtbl[].vtbl.canFetchMore = miqt_exec_method_cQAbstractProxyModel_canFetchMore
  vtbl[].vtbl.fetchMore = miqt_exec_method_cQAbstractProxyModel_fetchMore
  vtbl[].vtbl.sort = miqt_exec_method_cQAbstractProxyModel_sort
  vtbl[].vtbl.span = miqt_exec_method_cQAbstractProxyModel_span
  vtbl[].vtbl.hasChildren = miqt_exec_method_cQAbstractProxyModel_hasChildren
  vtbl[].vtbl.sibling = miqt_exec_method_cQAbstractProxyModel_sibling
  vtbl[].vtbl.mimeData = miqt_exec_method_cQAbstractProxyModel_mimeData
  vtbl[].vtbl.canDropMimeData = miqt_exec_method_cQAbstractProxyModel_canDropMimeData
  vtbl[].vtbl.dropMimeData = miqt_exec_method_cQAbstractProxyModel_dropMimeData
  vtbl[].vtbl.mimeTypes = miqt_exec_method_cQAbstractProxyModel_mimeTypes
  vtbl[].vtbl.supportedDragActions = miqt_exec_method_cQAbstractProxyModel_supportedDragActions
  vtbl[].vtbl.supportedDropActions = miqt_exec_method_cQAbstractProxyModel_supportedDropActions
  vtbl[].vtbl.index = miqt_exec_method_cQAbstractProxyModel_index
  vtbl[].vtbl.parent = miqt_exec_method_cQAbstractProxyModel_parent
  vtbl[].vtbl.rowCount = miqt_exec_method_cQAbstractProxyModel_rowCount
  vtbl[].vtbl.columnCount = miqt_exec_method_cQAbstractProxyModel_columnCount
  vtbl[].vtbl.insertRows = miqt_exec_method_cQAbstractProxyModel_insertRows
  vtbl[].vtbl.insertColumns = miqt_exec_method_cQAbstractProxyModel_insertColumns
  vtbl[].vtbl.removeRows = miqt_exec_method_cQAbstractProxyModel_removeRows
  vtbl[].vtbl.removeColumns = miqt_exec_method_cQAbstractProxyModel_removeColumns
  vtbl[].vtbl.moveRows = miqt_exec_method_cQAbstractProxyModel_moveRows
  vtbl[].vtbl.moveColumns = miqt_exec_method_cQAbstractProxyModel_moveColumns
  vtbl[].vtbl.match = miqt_exec_method_cQAbstractProxyModel_match
  vtbl[].vtbl.roleNames = miqt_exec_method_cQAbstractProxyModel_roleNames
  vtbl[].vtbl.event = miqt_exec_method_cQAbstractProxyModel_event
  vtbl[].vtbl.eventFilter = miqt_exec_method_cQAbstractProxyModel_eventFilter
  vtbl[].vtbl.timerEvent = miqt_exec_method_cQAbstractProxyModel_timerEvent
  vtbl[].vtbl.childEvent = miqt_exec_method_cQAbstractProxyModel_childEvent
  vtbl[].vtbl.customEvent = miqt_exec_method_cQAbstractProxyModel_customEvent
  vtbl[].vtbl.connectNotify = miqt_exec_method_cQAbstractProxyModel_connectNotify
  vtbl[].vtbl.disconnectNotify = miqt_exec_method_cQAbstractProxyModel_disconnectNotify
  if vtbl[].h != nil: delete(move(vtbl[]))
  vtbl[].h = fcQAbstractProxyModel_new(addr(vtbl[].vtbl), )
  vtbl[].owned = true

proc create*(T: type gen_qabstractproxymodel_types.QAbstractProxyModel,
    parent: gen_qobject_types.QObject,
    vtbl: VirtualQAbstractProxyModel) =

  vtbl[].vtbl.destructor = proc(vtbl: ptr cQAbstractProxyModelVTable, _: ptr cQAbstractProxyModel) {.cdecl.} =
    let vtbl = cast[ptr typeof(VirtualQAbstractProxyModel()[])](cast[uint](vtbl) - uint(offsetOf(VirtualQAbstractProxyModel, vtbl)))
    vtbl[].h = nil
    vtbl[].owned = false
  vtbl[].vtbl.metaObject = miqt_exec_method_cQAbstractProxyModel_metaObject
  vtbl[].vtbl.metacast = miqt_exec_method_cQAbstractProxyModel_metacast
  vtbl[].vtbl.metacall = miqt_exec_method_cQAbstractProxyModel_metacall
  vtbl[].vtbl.setSourceModel = miqt_exec_method_cQAbstractProxyModel_setSourceModel
  vtbl[].vtbl.mapToSource = miqt_exec_method_cQAbstractProxyModel_mapToSource
  vtbl[].vtbl.mapFromSource = miqt_exec_method_cQAbstractProxyModel_mapFromSource
  vtbl[].vtbl.mapSelectionToSource = miqt_exec_method_cQAbstractProxyModel_mapSelectionToSource
  vtbl[].vtbl.mapSelectionFromSource = miqt_exec_method_cQAbstractProxyModel_mapSelectionFromSource
  vtbl[].vtbl.submit = miqt_exec_method_cQAbstractProxyModel_submit
  vtbl[].vtbl.revert = miqt_exec_method_cQAbstractProxyModel_revert
  vtbl[].vtbl.data = miqt_exec_method_cQAbstractProxyModel_data
  vtbl[].vtbl.headerData = miqt_exec_method_cQAbstractProxyModel_headerData
  vtbl[].vtbl.itemData = miqt_exec_method_cQAbstractProxyModel_itemData
  vtbl[].vtbl.flags = miqt_exec_method_cQAbstractProxyModel_flags
  vtbl[].vtbl.setData = miqt_exec_method_cQAbstractProxyModel_setData
  vtbl[].vtbl.setItemData = miqt_exec_method_cQAbstractProxyModel_setItemData
  vtbl[].vtbl.setHeaderData = miqt_exec_method_cQAbstractProxyModel_setHeaderData
  vtbl[].vtbl.buddy = miqt_exec_method_cQAbstractProxyModel_buddy
  vtbl[].vtbl.canFetchMore = miqt_exec_method_cQAbstractProxyModel_canFetchMore
  vtbl[].vtbl.fetchMore = miqt_exec_method_cQAbstractProxyModel_fetchMore
  vtbl[].vtbl.sort = miqt_exec_method_cQAbstractProxyModel_sort
  vtbl[].vtbl.span = miqt_exec_method_cQAbstractProxyModel_span
  vtbl[].vtbl.hasChildren = miqt_exec_method_cQAbstractProxyModel_hasChildren
  vtbl[].vtbl.sibling = miqt_exec_method_cQAbstractProxyModel_sibling
  vtbl[].vtbl.mimeData = miqt_exec_method_cQAbstractProxyModel_mimeData
  vtbl[].vtbl.canDropMimeData = miqt_exec_method_cQAbstractProxyModel_canDropMimeData
  vtbl[].vtbl.dropMimeData = miqt_exec_method_cQAbstractProxyModel_dropMimeData
  vtbl[].vtbl.mimeTypes = miqt_exec_method_cQAbstractProxyModel_mimeTypes
  vtbl[].vtbl.supportedDragActions = miqt_exec_method_cQAbstractProxyModel_supportedDragActions
  vtbl[].vtbl.supportedDropActions = miqt_exec_method_cQAbstractProxyModel_supportedDropActions
  vtbl[].vtbl.index = miqt_exec_method_cQAbstractProxyModel_index
  vtbl[].vtbl.parent = miqt_exec_method_cQAbstractProxyModel_parent
  vtbl[].vtbl.rowCount = miqt_exec_method_cQAbstractProxyModel_rowCount
  vtbl[].vtbl.columnCount = miqt_exec_method_cQAbstractProxyModel_columnCount
  vtbl[].vtbl.insertRows = miqt_exec_method_cQAbstractProxyModel_insertRows
  vtbl[].vtbl.insertColumns = miqt_exec_method_cQAbstractProxyModel_insertColumns
  vtbl[].vtbl.removeRows = miqt_exec_method_cQAbstractProxyModel_removeRows
  vtbl[].vtbl.removeColumns = miqt_exec_method_cQAbstractProxyModel_removeColumns
  vtbl[].vtbl.moveRows = miqt_exec_method_cQAbstractProxyModel_moveRows
  vtbl[].vtbl.moveColumns = miqt_exec_method_cQAbstractProxyModel_moveColumns
  vtbl[].vtbl.match = miqt_exec_method_cQAbstractProxyModel_match
  vtbl[].vtbl.roleNames = miqt_exec_method_cQAbstractProxyModel_roleNames
  vtbl[].vtbl.event = miqt_exec_method_cQAbstractProxyModel_event
  vtbl[].vtbl.eventFilter = miqt_exec_method_cQAbstractProxyModel_eventFilter
  vtbl[].vtbl.timerEvent = miqt_exec_method_cQAbstractProxyModel_timerEvent
  vtbl[].vtbl.childEvent = miqt_exec_method_cQAbstractProxyModel_childEvent
  vtbl[].vtbl.customEvent = miqt_exec_method_cQAbstractProxyModel_customEvent
  vtbl[].vtbl.connectNotify = miqt_exec_method_cQAbstractProxyModel_connectNotify
  vtbl[].vtbl.disconnectNotify = miqt_exec_method_cQAbstractProxyModel_disconnectNotify
  if vtbl[].h != nil: delete(move(vtbl[]))
  vtbl[].h = fcQAbstractProxyModel_new2(addr(vtbl[].vtbl), parent.h)
  vtbl[].owned = true

proc staticMetaObject*(_: type gen_qabstractproxymodel_types.QAbstractProxyModel): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQAbstractProxyModel_staticMetaObject())
