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

proc fcQIdentityProxyModel_metaObject(self: pointer): pointer {.importc: "QIdentityProxyModel_metaObject".}
proc fcQIdentityProxyModel_metacast(self: pointer, param1: cstring): pointer {.importc: "QIdentityProxyModel_metacast".}
proc fcQIdentityProxyModel_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.importc: "QIdentityProxyModel_metacall".}
proc fcQIdentityProxyModel_tr(s: cstring): struct_miqt_string {.importc: "QIdentityProxyModel_tr".}
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
proc fcQIdentityProxyModel_vtbl(self: pointer): pointer {.importc: "QIdentityProxyModel_vtbl".}
proc fcQIdentityProxyModel_vdata(self: pointer): pointer {.importc: "QIdentityProxyModel_vdata".}
type cQIdentityProxyModelVTable {.pure.} = object
  destructor*: proc(self: pointer) {.cdecl, raises:[], gcsafe.}
  metaObject*: proc(self: pointer): pointer {.cdecl, raises: [], gcsafe.}
  metacast*: proc(self: pointer, param1: cstring): pointer {.cdecl, raises: [], gcsafe.}
  metacall*: proc(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.cdecl, raises: [], gcsafe.}
  columnCount*: proc(self: pointer, parent: pointer): cint {.cdecl, raises: [], gcsafe.}
  index*: proc(self: pointer, row: cint, column: cint, parent: pointer): pointer {.cdecl, raises: [], gcsafe.}
  mapFromSource*: proc(self: pointer, sourceIndex: pointer): pointer {.cdecl, raises: [], gcsafe.}
  mapToSource*: proc(self: pointer, proxyIndex: pointer): pointer {.cdecl, raises: [], gcsafe.}
  parent*: proc(self: pointer, child: pointer): pointer {.cdecl, raises: [], gcsafe.}
  rowCount*: proc(self: pointer, parent: pointer): cint {.cdecl, raises: [], gcsafe.}
  headerData*: proc(self: pointer, section: cint, orientation: cint, role: cint): pointer {.cdecl, raises: [], gcsafe.}
  dropMimeData*: proc(self: pointer, data: pointer, action: cint, row: cint, column: cint, parent: pointer): bool {.cdecl, raises: [], gcsafe.}
  sibling*: proc(self: pointer, row: cint, column: cint, idx: pointer): pointer {.cdecl, raises: [], gcsafe.}
  mapSelectionFromSource*: proc(self: pointer, selection: pointer): pointer {.cdecl, raises: [], gcsafe.}
  mapSelectionToSource*: proc(self: pointer, selection: pointer): pointer {.cdecl, raises: [], gcsafe.}
  match*: proc(self: pointer, start: pointer, role: cint, value: pointer, hits: cint, flags: cint): struct_miqt_array {.cdecl, raises: [], gcsafe.}
  setSourceModel*: proc(self: pointer, sourceModel: pointer): void {.cdecl, raises: [], gcsafe.}
  insertColumns*: proc(self: pointer, column: cint, count: cint, parent: pointer): bool {.cdecl, raises: [], gcsafe.}
  insertRows*: proc(self: pointer, row: cint, count: cint, parent: pointer): bool {.cdecl, raises: [], gcsafe.}
  removeColumns*: proc(self: pointer, column: cint, count: cint, parent: pointer): bool {.cdecl, raises: [], gcsafe.}
  removeRows*: proc(self: pointer, row: cint, count: cint, parent: pointer): bool {.cdecl, raises: [], gcsafe.}
  moveRows*: proc(self: pointer, sourceParent: pointer, sourceRow: cint, count: cint, destinationParent: pointer, destinationChild: cint): bool {.cdecl, raises: [], gcsafe.}
  moveColumns*: proc(self: pointer, sourceParent: pointer, sourceColumn: cint, count: cint, destinationParent: pointer, destinationChild: cint): bool {.cdecl, raises: [], gcsafe.}
  submit*: proc(self: pointer): bool {.cdecl, raises: [], gcsafe.}
  revert*: proc(self: pointer): void {.cdecl, raises: [], gcsafe.}
  data*: proc(self: pointer, proxyIndex: pointer, role: cint): pointer {.cdecl, raises: [], gcsafe.}
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
  mimeData*: proc(self: pointer, indexes: struct_miqt_array): pointer {.cdecl, raises: [], gcsafe.}
  canDropMimeData*: proc(self: pointer, data: pointer, action: cint, row: cint, column: cint, parent: pointer): bool {.cdecl, raises: [], gcsafe.}
  mimeTypes*: proc(self: pointer): struct_miqt_array {.cdecl, raises: [], gcsafe.}
  supportedDragActions*: proc(self: pointer): cint {.cdecl, raises: [], gcsafe.}
  supportedDropActions*: proc(self: pointer): cint {.cdecl, raises: [], gcsafe.}
  roleNames*: proc(self: pointer): struct_miqt_map {.cdecl, raises: [], gcsafe.}
  multiData*: proc(self: pointer, index: pointer, roleDataSpan: pointer): void {.cdecl, raises: [], gcsafe.}
  resetInternalData*: proc(self: pointer): void {.cdecl, raises: [], gcsafe.}
  event*: proc(self: pointer, event: pointer): bool {.cdecl, raises: [], gcsafe.}
  eventFilter*: proc(self: pointer, watched: pointer, event: pointer): bool {.cdecl, raises: [], gcsafe.}
  timerEvent*: proc(self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  childEvent*: proc(self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  customEvent*: proc(self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  connectNotify*: proc(self: pointer, signal: pointer): void {.cdecl, raises: [], gcsafe.}
  disconnectNotify*: proc(self: pointer, signal: pointer): void {.cdecl, raises: [], gcsafe.}
proc fcQIdentityProxyModel_virtualbase_metaObject(self: pointer): pointer {.importc: "QIdentityProxyModel_virtualbase_metaObject".}
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
proc fcQIdentityProxyModel_virtualbase_submit(self: pointer): bool {.importc: "QIdentityProxyModel_virtualbase_submit".}
proc fcQIdentityProxyModel_virtualbase_revert(self: pointer): void {.importc: "QIdentityProxyModel_virtualbase_revert".}
proc fcQIdentityProxyModel_virtualbase_data(self: pointer, proxyIndex: pointer, role: cint): pointer {.importc: "QIdentityProxyModel_virtualbase_data".}
proc fcQIdentityProxyModel_virtualbase_itemData(self: pointer, index: pointer): struct_miqt_map {.importc: "QIdentityProxyModel_virtualbase_itemData".}
proc fcQIdentityProxyModel_virtualbase_flags(self: pointer, index: pointer): cint {.importc: "QIdentityProxyModel_virtualbase_flags".}
proc fcQIdentityProxyModel_virtualbase_setData(self: pointer, index: pointer, value: pointer, role: cint): bool {.importc: "QIdentityProxyModel_virtualbase_setData".}
proc fcQIdentityProxyModel_virtualbase_setItemData(self: pointer, index: pointer, roles: struct_miqt_map): bool {.importc: "QIdentityProxyModel_virtualbase_setItemData".}
proc fcQIdentityProxyModel_virtualbase_setHeaderData(self: pointer, section: cint, orientation: cint, value: pointer, role: cint): bool {.importc: "QIdentityProxyModel_virtualbase_setHeaderData".}
proc fcQIdentityProxyModel_virtualbase_clearItemData(self: pointer, index: pointer): bool {.importc: "QIdentityProxyModel_virtualbase_clearItemData".}
proc fcQIdentityProxyModel_virtualbase_buddy(self: pointer, index: pointer): pointer {.importc: "QIdentityProxyModel_virtualbase_buddy".}
proc fcQIdentityProxyModel_virtualbase_canFetchMore(self: pointer, parent: pointer): bool {.importc: "QIdentityProxyModel_virtualbase_canFetchMore".}
proc fcQIdentityProxyModel_virtualbase_fetchMore(self: pointer, parent: pointer): void {.importc: "QIdentityProxyModel_virtualbase_fetchMore".}
proc fcQIdentityProxyModel_virtualbase_sort(self: pointer, column: cint, order: cint): void {.importc: "QIdentityProxyModel_virtualbase_sort".}
proc fcQIdentityProxyModel_virtualbase_span(self: pointer, index: pointer): pointer {.importc: "QIdentityProxyModel_virtualbase_span".}
proc fcQIdentityProxyModel_virtualbase_hasChildren(self: pointer, parent: pointer): bool {.importc: "QIdentityProxyModel_virtualbase_hasChildren".}
proc fcQIdentityProxyModel_virtualbase_mimeData(self: pointer, indexes: struct_miqt_array): pointer {.importc: "QIdentityProxyModel_virtualbase_mimeData".}
proc fcQIdentityProxyModel_virtualbase_canDropMimeData(self: pointer, data: pointer, action: cint, row: cint, column: cint, parent: pointer): bool {.importc: "QIdentityProxyModel_virtualbase_canDropMimeData".}
proc fcQIdentityProxyModel_virtualbase_mimeTypes(self: pointer): struct_miqt_array {.importc: "QIdentityProxyModel_virtualbase_mimeTypes".}
proc fcQIdentityProxyModel_virtualbase_supportedDragActions(self: pointer): cint {.importc: "QIdentityProxyModel_virtualbase_supportedDragActions".}
proc fcQIdentityProxyModel_virtualbase_supportedDropActions(self: pointer): cint {.importc: "QIdentityProxyModel_virtualbase_supportedDropActions".}
proc fcQIdentityProxyModel_virtualbase_roleNames(self: pointer): struct_miqt_map {.importc: "QIdentityProxyModel_virtualbase_roleNames".}
proc fcQIdentityProxyModel_virtualbase_multiData(self: pointer, index: pointer, roleDataSpan: pointer): void {.importc: "QIdentityProxyModel_virtualbase_multiData".}
proc fcQIdentityProxyModel_virtualbase_resetInternalData(self: pointer): void {.importc: "QIdentityProxyModel_virtualbase_resetInternalData".}
proc fcQIdentityProxyModel_virtualbase_event(self: pointer, event: pointer): bool {.importc: "QIdentityProxyModel_virtualbase_event".}
proc fcQIdentityProxyModel_virtualbase_eventFilter(self: pointer, watched: pointer, event: pointer): bool {.importc: "QIdentityProxyModel_virtualbase_eventFilter".}
proc fcQIdentityProxyModel_virtualbase_timerEvent(self: pointer, event: pointer): void {.importc: "QIdentityProxyModel_virtualbase_timerEvent".}
proc fcQIdentityProxyModel_virtualbase_childEvent(self: pointer, event: pointer): void {.importc: "QIdentityProxyModel_virtualbase_childEvent".}
proc fcQIdentityProxyModel_virtualbase_customEvent(self: pointer, event: pointer): void {.importc: "QIdentityProxyModel_virtualbase_customEvent".}
proc fcQIdentityProxyModel_virtualbase_connectNotify(self: pointer, signal: pointer): void {.importc: "QIdentityProxyModel_virtualbase_connectNotify".}
proc fcQIdentityProxyModel_virtualbase_disconnectNotify(self: pointer, signal: pointer): void {.importc: "QIdentityProxyModel_virtualbase_disconnectNotify".}
proc fcQIdentityProxyModel_protectedbase_createSourceIndex(self: pointer, row: cint, col: cint, internalPtr: pointer): pointer {.importc: "QIdentityProxyModel_protectedbase_createSourceIndex".}
proc fcQIdentityProxyModel_protectedbase_createIndex(self: pointer, row: cint, column: cint): pointer {.importc: "QIdentityProxyModel_protectedbase_createIndex".}
proc fcQIdentityProxyModel_protectedbase_encodeData(self: pointer, indexes: struct_miqt_array, stream: pointer): void {.importc: "QIdentityProxyModel_protectedbase_encodeData".}
proc fcQIdentityProxyModel_protectedbase_decodeData(self: pointer, row: cint, column: cint, parent: pointer, stream: pointer): bool {.importc: "QIdentityProxyModel_protectedbase_decodeData".}
proc fcQIdentityProxyModel_protectedbase_beginInsertRows(self: pointer, parent: pointer, first: cint, last: cint): void {.importc: "QIdentityProxyModel_protectedbase_beginInsertRows".}
proc fcQIdentityProxyModel_protectedbase_endInsertRows(self: pointer): void {.importc: "QIdentityProxyModel_protectedbase_endInsertRows".}
proc fcQIdentityProxyModel_protectedbase_beginRemoveRows(self: pointer, parent: pointer, first: cint, last: cint): void {.importc: "QIdentityProxyModel_protectedbase_beginRemoveRows".}
proc fcQIdentityProxyModel_protectedbase_endRemoveRows(self: pointer): void {.importc: "QIdentityProxyModel_protectedbase_endRemoveRows".}
proc fcQIdentityProxyModel_protectedbase_beginMoveRows(self: pointer, sourceParent: pointer, sourceFirst: cint, sourceLast: cint, destinationParent: pointer, destinationRow: cint): bool {.importc: "QIdentityProxyModel_protectedbase_beginMoveRows".}
proc fcQIdentityProxyModel_protectedbase_endMoveRows(self: pointer): void {.importc: "QIdentityProxyModel_protectedbase_endMoveRows".}
proc fcQIdentityProxyModel_protectedbase_beginInsertColumns(self: pointer, parent: pointer, first: cint, last: cint): void {.importc: "QIdentityProxyModel_protectedbase_beginInsertColumns".}
proc fcQIdentityProxyModel_protectedbase_endInsertColumns(self: pointer): void {.importc: "QIdentityProxyModel_protectedbase_endInsertColumns".}
proc fcQIdentityProxyModel_protectedbase_beginRemoveColumns(self: pointer, parent: pointer, first: cint, last: cint): void {.importc: "QIdentityProxyModel_protectedbase_beginRemoveColumns".}
proc fcQIdentityProxyModel_protectedbase_endRemoveColumns(self: pointer): void {.importc: "QIdentityProxyModel_protectedbase_endRemoveColumns".}
proc fcQIdentityProxyModel_protectedbase_beginMoveColumns(self: pointer, sourceParent: pointer, sourceFirst: cint, sourceLast: cint, destinationParent: pointer, destinationColumn: cint): bool {.importc: "QIdentityProxyModel_protectedbase_beginMoveColumns".}
proc fcQIdentityProxyModel_protectedbase_endMoveColumns(self: pointer): void {.importc: "QIdentityProxyModel_protectedbase_endMoveColumns".}
proc fcQIdentityProxyModel_protectedbase_beginResetModel(self: pointer): void {.importc: "QIdentityProxyModel_protectedbase_beginResetModel".}
proc fcQIdentityProxyModel_protectedbase_endResetModel(self: pointer): void {.importc: "QIdentityProxyModel_protectedbase_endResetModel".}
proc fcQIdentityProxyModel_protectedbase_changePersistentIndex(self: pointer, fromVal: pointer, to: pointer): void {.importc: "QIdentityProxyModel_protectedbase_changePersistentIndex".}
proc fcQIdentityProxyModel_protectedbase_changePersistentIndexList(self: pointer, fromVal: struct_miqt_array, to: struct_miqt_array): void {.importc: "QIdentityProxyModel_protectedbase_changePersistentIndexList".}
proc fcQIdentityProxyModel_protectedbase_persistentIndexList(self: pointer): struct_miqt_array {.importc: "QIdentityProxyModel_protectedbase_persistentIndexList".}
proc fcQIdentityProxyModel_protectedbase_sender(self: pointer): pointer {.importc: "QIdentityProxyModel_protectedbase_sender".}
proc fcQIdentityProxyModel_protectedbase_senderSignalIndex(self: pointer): cint {.importc: "QIdentityProxyModel_protectedbase_senderSignalIndex".}
proc fcQIdentityProxyModel_protectedbase_receivers(self: pointer, signal: cstring): cint {.importc: "QIdentityProxyModel_protectedbase_receivers".}
proc fcQIdentityProxyModel_protectedbase_isSignalConnected(self: pointer, signal: pointer): bool {.importc: "QIdentityProxyModel_protectedbase_isSignalConnected".}
proc fcQIdentityProxyModel_new(vtbl, vdata: pointer): ptr cQIdentityProxyModel {.importc: "QIdentityProxyModel_new".}
proc fcQIdentityProxyModel_new2(vtbl, vdata: pointer, parent: pointer): ptr cQIdentityProxyModel {.importc: "QIdentityProxyModel_new2".}
proc fcQIdentityProxyModel_staticMetaObject(): pointer {.importc: "QIdentityProxyModel_staticMetaObject".}

proc metaObject*(self: gen_qidentityproxymodel_types.QIdentityProxyModel): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQIdentityProxyModel_metaObject(self.h), owned: false)

proc metacast*(self: gen_qidentityproxymodel_types.QIdentityProxyModel, param1: cstring): pointer =
  fcQIdentityProxyModel_metacast(self.h, param1)

proc metacall*(self: gen_qidentityproxymodel_types.QIdentityProxyModel, param1: cint, param2: cint, param3: pointer): cint =
  fcQIdentityProxyModel_metacall(self.h, cint(param1), param2, param3)

proc tr*(_: type gen_qidentityproxymodel_types.QIdentityProxyModel, s: cstring): string =
  let v_ms = fcQIdentityProxyModel_tr(s)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc columnCount*(self: gen_qidentityproxymodel_types.QIdentityProxyModel, parent: gen_qabstractitemmodel_types.QModelIndex): cint =
  fcQIdentityProxyModel_columnCount(self.h, parent.h)

proc index*(self: gen_qidentityproxymodel_types.QIdentityProxyModel, row: cint, column: cint, parent: gen_qabstractitemmodel_types.QModelIndex): gen_qabstractitemmodel_types.QModelIndex =
  gen_qabstractitemmodel_types.QModelIndex(h: fcQIdentityProxyModel_index(self.h, row, column, parent.h), owned: true)

proc mapFromSource*(self: gen_qidentityproxymodel_types.QIdentityProxyModel, sourceIndex: gen_qabstractitemmodel_types.QModelIndex): gen_qabstractitemmodel_types.QModelIndex =
  gen_qabstractitemmodel_types.QModelIndex(h: fcQIdentityProxyModel_mapFromSource(self.h, sourceIndex.h), owned: true)

proc mapToSource*(self: gen_qidentityproxymodel_types.QIdentityProxyModel, proxyIndex: gen_qabstractitemmodel_types.QModelIndex): gen_qabstractitemmodel_types.QModelIndex =
  gen_qabstractitemmodel_types.QModelIndex(h: fcQIdentityProxyModel_mapToSource(self.h, proxyIndex.h), owned: true)

proc parent*(self: gen_qidentityproxymodel_types.QIdentityProxyModel, child: gen_qabstractitemmodel_types.QModelIndex): gen_qabstractitemmodel_types.QModelIndex =
  gen_qabstractitemmodel_types.QModelIndex(h: fcQIdentityProxyModel_parent(self.h, child.h), owned: true)

proc rowCount*(self: gen_qidentityproxymodel_types.QIdentityProxyModel, parent: gen_qabstractitemmodel_types.QModelIndex): cint =
  fcQIdentityProxyModel_rowCount(self.h, parent.h)

proc headerData*(self: gen_qidentityproxymodel_types.QIdentityProxyModel, section: cint, orientation: cint, role: cint): gen_qvariant_types.QVariant =
  gen_qvariant_types.QVariant(h: fcQIdentityProxyModel_headerData(self.h, section, cint(orientation), role), owned: true)

proc dropMimeData*(self: gen_qidentityproxymodel_types.QIdentityProxyModel, data: gen_qmimedata_types.QMimeData, action: cint, row: cint, column: cint, parent: gen_qabstractitemmodel_types.QModelIndex): bool =
  fcQIdentityProxyModel_dropMimeData(self.h, data.h, cint(action), row, column, parent.h)

proc sibling*(self: gen_qidentityproxymodel_types.QIdentityProxyModel, row: cint, column: cint, idx: gen_qabstractitemmodel_types.QModelIndex): gen_qabstractitemmodel_types.QModelIndex =
  gen_qabstractitemmodel_types.QModelIndex(h: fcQIdentityProxyModel_sibling(self.h, row, column, idx.h), owned: true)

proc mapSelectionFromSource*(self: gen_qidentityproxymodel_types.QIdentityProxyModel, selection: gen_qitemselectionmodel_types.QItemSelection): gen_qitemselectionmodel_types.QItemSelection =
  gen_qitemselectionmodel_types.QItemSelection(h: fcQIdentityProxyModel_mapSelectionFromSource(self.h, selection.h), owned: true)

proc mapSelectionToSource*(self: gen_qidentityproxymodel_types.QIdentityProxyModel, selection: gen_qitemselectionmodel_types.QItemSelection): gen_qitemselectionmodel_types.QItemSelection =
  gen_qitemselectionmodel_types.QItemSelection(h: fcQIdentityProxyModel_mapSelectionToSource(self.h, selection.h), owned: true)

proc match*(self: gen_qidentityproxymodel_types.QIdentityProxyModel, start: gen_qabstractitemmodel_types.QModelIndex, role: cint, value: gen_qvariant_types.QVariant, hits: cint, flags: cint): seq[gen_qabstractitemmodel_types.QModelIndex] =
  var v_ma = fcQIdentityProxyModel_match(self.h, start.h, role, value.h, hits, cint(flags))
  var vx_ret = newSeq[gen_qabstractitemmodel_types.QModelIndex](int(v_ma.len))
  let v_outCast = cast[ptr UncheckedArray[pointer]](v_ma.data)
  for i in 0 ..< v_ma.len:
    vx_ret[i] = gen_qabstractitemmodel_types.QModelIndex(h: v_outCast[i], owned: true)
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
type QIdentityProxyModelclearItemDataProc* = proc(self: QIdentityProxyModel, index: gen_qabstractitemmodel_types.QModelIndex): bool {.raises: [], gcsafe.}
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
type QIdentityProxyModelmultiDataProc* = proc(self: QIdentityProxyModel, index: gen_qabstractitemmodel_types.QModelIndex, roleDataSpan: gen_qabstractitemmodel_types.QModelRoleDataSpan): void {.raises: [], gcsafe.}
type QIdentityProxyModelresetInternalDataProc* = proc(self: QIdentityProxyModel): void {.raises: [], gcsafe.}
type QIdentityProxyModeleventProc* = proc(self: QIdentityProxyModel, event: gen_qcoreevent_types.QEvent): bool {.raises: [], gcsafe.}
type QIdentityProxyModeleventFilterProc* = proc(self: QIdentityProxyModel, watched: gen_qobject_types.QObject, event: gen_qcoreevent_types.QEvent): bool {.raises: [], gcsafe.}
type QIdentityProxyModeltimerEventProc* = proc(self: QIdentityProxyModel, event: gen_qcoreevent_types.QTimerEvent): void {.raises: [], gcsafe.}
type QIdentityProxyModelchildEventProc* = proc(self: QIdentityProxyModel, event: gen_qcoreevent_types.QChildEvent): void {.raises: [], gcsafe.}
type QIdentityProxyModelcustomEventProc* = proc(self: QIdentityProxyModel, event: gen_qcoreevent_types.QEvent): void {.raises: [], gcsafe.}
type QIdentityProxyModelconnectNotifyProc* = proc(self: QIdentityProxyModel, signal: gen_qmetaobject_types.QMetaMethod): void {.raises: [], gcsafe.}
type QIdentityProxyModeldisconnectNotifyProc* = proc(self: QIdentityProxyModel, signal: gen_qmetaobject_types.QMetaMethod): void {.raises: [], gcsafe.}
type QIdentityProxyModelVTable* {.inheritable, pure.} = object
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
  clearItemData*: QIdentityProxyModelclearItemDataProc
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
  multiData*: QIdentityProxyModelmultiDataProc
  resetInternalData*: QIdentityProxyModelresetInternalDataProc
  event*: QIdentityProxyModeleventProc
  eventFilter*: QIdentityProxyModeleventFilterProc
  timerEvent*: QIdentityProxyModeltimerEventProc
  childEvent*: QIdentityProxyModelchildEventProc
  customEvent*: QIdentityProxyModelcustomEventProc
  connectNotify*: QIdentityProxyModelconnectNotifyProc
  disconnectNotify*: QIdentityProxyModeldisconnectNotifyProc
proc QIdentityProxyModelmetaObject*(self: gen_qidentityproxymodel_types.QIdentityProxyModel): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQIdentityProxyModel_virtualbase_metaObject(self.h), owned: false)

proc cQIdentityProxyModel_vtable_callback_metaObject(self: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QIdentityProxyModelVTable](fcQIdentityProxyModel_vdata(self))
  let self = QIdentityProxyModel(h: self)
  var virtualReturn = vtbl[].metaObject(self)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc QIdentityProxyModelmetacast*(self: gen_qidentityproxymodel_types.QIdentityProxyModel, param1: cstring): pointer =
  fcQIdentityProxyModel_virtualbase_metacast(self.h, param1)

proc cQIdentityProxyModel_vtable_callback_metacast(self: pointer, param1: cstring): pointer {.cdecl.} =
  let vtbl = cast[ptr QIdentityProxyModelVTable](fcQIdentityProxyModel_vdata(self))
  let self = QIdentityProxyModel(h: self)
  let slotval1 = (param1)
  var virtualReturn = vtbl[].metacast(self, slotval1)
  virtualReturn

proc QIdentityProxyModelmetacall*(self: gen_qidentityproxymodel_types.QIdentityProxyModel, param1: cint, param2: cint, param3: pointer): cint =
  fcQIdentityProxyModel_virtualbase_metacall(self.h, cint(param1), param2, param3)

proc cQIdentityProxyModel_vtable_callback_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.cdecl.} =
  let vtbl = cast[ptr QIdentityProxyModelVTable](fcQIdentityProxyModel_vdata(self))
  let self = QIdentityProxyModel(h: self)
  let slotval1 = cint(param1)
  let slotval2 = param2
  let slotval3 = param3
  var virtualReturn = vtbl[].metacall(self, slotval1, slotval2, slotval3)
  virtualReturn

proc QIdentityProxyModelcolumnCount*(self: gen_qidentityproxymodel_types.QIdentityProxyModel, parent: gen_qabstractitemmodel_types.QModelIndex): cint =
  fcQIdentityProxyModel_virtualbase_columnCount(self.h, parent.h)

proc cQIdentityProxyModel_vtable_callback_columnCount(self: pointer, parent: pointer): cint {.cdecl.} =
  let vtbl = cast[ptr QIdentityProxyModelVTable](fcQIdentityProxyModel_vdata(self))
  let self = QIdentityProxyModel(h: self)
  let slotval1 = gen_qabstractitemmodel_types.QModelIndex(h: parent, owned: false)
  var virtualReturn = vtbl[].columnCount(self, slotval1)
  virtualReturn

proc QIdentityProxyModelindex*(self: gen_qidentityproxymodel_types.QIdentityProxyModel, row: cint, column: cint, parent: gen_qabstractitemmodel_types.QModelIndex): gen_qabstractitemmodel_types.QModelIndex =
  gen_qabstractitemmodel_types.QModelIndex(h: fcQIdentityProxyModel_virtualbase_index(self.h, row, column, parent.h), owned: true)

proc cQIdentityProxyModel_vtable_callback_index(self: pointer, row: cint, column: cint, parent: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QIdentityProxyModelVTable](fcQIdentityProxyModel_vdata(self))
  let self = QIdentityProxyModel(h: self)
  let slotval1 = row
  let slotval2 = column
  let slotval3 = gen_qabstractitemmodel_types.QModelIndex(h: parent, owned: false)
  var virtualReturn = vtbl[].index(self, slotval1, slotval2, slotval3)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc QIdentityProxyModelmapFromSource*(self: gen_qidentityproxymodel_types.QIdentityProxyModel, sourceIndex: gen_qabstractitemmodel_types.QModelIndex): gen_qabstractitemmodel_types.QModelIndex =
  gen_qabstractitemmodel_types.QModelIndex(h: fcQIdentityProxyModel_virtualbase_mapFromSource(self.h, sourceIndex.h), owned: true)

proc cQIdentityProxyModel_vtable_callback_mapFromSource(self: pointer, sourceIndex: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QIdentityProxyModelVTable](fcQIdentityProxyModel_vdata(self))
  let self = QIdentityProxyModel(h: self)
  let slotval1 = gen_qabstractitemmodel_types.QModelIndex(h: sourceIndex, owned: false)
  var virtualReturn = vtbl[].mapFromSource(self, slotval1)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc QIdentityProxyModelmapToSource*(self: gen_qidentityproxymodel_types.QIdentityProxyModel, proxyIndex: gen_qabstractitemmodel_types.QModelIndex): gen_qabstractitemmodel_types.QModelIndex =
  gen_qabstractitemmodel_types.QModelIndex(h: fcQIdentityProxyModel_virtualbase_mapToSource(self.h, proxyIndex.h), owned: true)

proc cQIdentityProxyModel_vtable_callback_mapToSource(self: pointer, proxyIndex: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QIdentityProxyModelVTable](fcQIdentityProxyModel_vdata(self))
  let self = QIdentityProxyModel(h: self)
  let slotval1 = gen_qabstractitemmodel_types.QModelIndex(h: proxyIndex, owned: false)
  var virtualReturn = vtbl[].mapToSource(self, slotval1)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc QIdentityProxyModelparent*(self: gen_qidentityproxymodel_types.QIdentityProxyModel, child: gen_qabstractitemmodel_types.QModelIndex): gen_qabstractitemmodel_types.QModelIndex =
  gen_qabstractitemmodel_types.QModelIndex(h: fcQIdentityProxyModel_virtualbase_parent(self.h, child.h), owned: true)

proc cQIdentityProxyModel_vtable_callback_parent(self: pointer, child: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QIdentityProxyModelVTable](fcQIdentityProxyModel_vdata(self))
  let self = QIdentityProxyModel(h: self)
  let slotval1 = gen_qabstractitemmodel_types.QModelIndex(h: child, owned: false)
  var virtualReturn = vtbl[].parent(self, slotval1)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc QIdentityProxyModelrowCount*(self: gen_qidentityproxymodel_types.QIdentityProxyModel, parent: gen_qabstractitemmodel_types.QModelIndex): cint =
  fcQIdentityProxyModel_virtualbase_rowCount(self.h, parent.h)

proc cQIdentityProxyModel_vtable_callback_rowCount(self: pointer, parent: pointer): cint {.cdecl.} =
  let vtbl = cast[ptr QIdentityProxyModelVTable](fcQIdentityProxyModel_vdata(self))
  let self = QIdentityProxyModel(h: self)
  let slotval1 = gen_qabstractitemmodel_types.QModelIndex(h: parent, owned: false)
  var virtualReturn = vtbl[].rowCount(self, slotval1)
  virtualReturn

proc QIdentityProxyModelheaderData*(self: gen_qidentityproxymodel_types.QIdentityProxyModel, section: cint, orientation: cint, role: cint): gen_qvariant_types.QVariant =
  gen_qvariant_types.QVariant(h: fcQIdentityProxyModel_virtualbase_headerData(self.h, section, cint(orientation), role), owned: true)

proc cQIdentityProxyModel_vtable_callback_headerData(self: pointer, section: cint, orientation: cint, role: cint): pointer {.cdecl.} =
  let vtbl = cast[ptr QIdentityProxyModelVTable](fcQIdentityProxyModel_vdata(self))
  let self = QIdentityProxyModel(h: self)
  let slotval1 = section
  let slotval2 = cint(orientation)
  let slotval3 = role
  var virtualReturn = vtbl[].headerData(self, slotval1, slotval2, slotval3)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc QIdentityProxyModeldropMimeData*(self: gen_qidentityproxymodel_types.QIdentityProxyModel, data: gen_qmimedata_types.QMimeData, action: cint, row: cint, column: cint, parent: gen_qabstractitemmodel_types.QModelIndex): bool =
  fcQIdentityProxyModel_virtualbase_dropMimeData(self.h, data.h, cint(action), row, column, parent.h)

proc cQIdentityProxyModel_vtable_callback_dropMimeData(self: pointer, data: pointer, action: cint, row: cint, column: cint, parent: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QIdentityProxyModelVTable](fcQIdentityProxyModel_vdata(self))
  let self = QIdentityProxyModel(h: self)
  let slotval1 = gen_qmimedata_types.QMimeData(h: data, owned: false)
  let slotval2 = cint(action)
  let slotval3 = row
  let slotval4 = column
  let slotval5 = gen_qabstractitemmodel_types.QModelIndex(h: parent, owned: false)
  var virtualReturn = vtbl[].dropMimeData(self, slotval1, slotval2, slotval3, slotval4, slotval5)
  virtualReturn

proc QIdentityProxyModelsibling*(self: gen_qidentityproxymodel_types.QIdentityProxyModel, row: cint, column: cint, idx: gen_qabstractitemmodel_types.QModelIndex): gen_qabstractitemmodel_types.QModelIndex =
  gen_qabstractitemmodel_types.QModelIndex(h: fcQIdentityProxyModel_virtualbase_sibling(self.h, row, column, idx.h), owned: true)

proc cQIdentityProxyModel_vtable_callback_sibling(self: pointer, row: cint, column: cint, idx: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QIdentityProxyModelVTable](fcQIdentityProxyModel_vdata(self))
  let self = QIdentityProxyModel(h: self)
  let slotval1 = row
  let slotval2 = column
  let slotval3 = gen_qabstractitemmodel_types.QModelIndex(h: idx, owned: false)
  var virtualReturn = vtbl[].sibling(self, slotval1, slotval2, slotval3)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc QIdentityProxyModelmapSelectionFromSource*(self: gen_qidentityproxymodel_types.QIdentityProxyModel, selection: gen_qitemselectionmodel_types.QItemSelection): gen_qitemselectionmodel_types.QItemSelection =
  gen_qitemselectionmodel_types.QItemSelection(h: fcQIdentityProxyModel_virtualbase_mapSelectionFromSource(self.h, selection.h), owned: true)

proc cQIdentityProxyModel_vtable_callback_mapSelectionFromSource(self: pointer, selection: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QIdentityProxyModelVTable](fcQIdentityProxyModel_vdata(self))
  let self = QIdentityProxyModel(h: self)
  let slotval1 = gen_qitemselectionmodel_types.QItemSelection(h: selection, owned: false)
  var virtualReturn = vtbl[].mapSelectionFromSource(self, slotval1)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc QIdentityProxyModelmapSelectionToSource*(self: gen_qidentityproxymodel_types.QIdentityProxyModel, selection: gen_qitemselectionmodel_types.QItemSelection): gen_qitemselectionmodel_types.QItemSelection =
  gen_qitemselectionmodel_types.QItemSelection(h: fcQIdentityProxyModel_virtualbase_mapSelectionToSource(self.h, selection.h), owned: true)

proc cQIdentityProxyModel_vtable_callback_mapSelectionToSource(self: pointer, selection: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QIdentityProxyModelVTable](fcQIdentityProxyModel_vdata(self))
  let self = QIdentityProxyModel(h: self)
  let slotval1 = gen_qitemselectionmodel_types.QItemSelection(h: selection, owned: false)
  var virtualReturn = vtbl[].mapSelectionToSource(self, slotval1)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc QIdentityProxyModelmatch*(self: gen_qidentityproxymodel_types.QIdentityProxyModel, start: gen_qabstractitemmodel_types.QModelIndex, role: cint, value: gen_qvariant_types.QVariant, hits: cint, flags: cint): seq[gen_qabstractitemmodel_types.QModelIndex] =
  var v_ma = fcQIdentityProxyModel_virtualbase_match(self.h, start.h, role, value.h, hits, cint(flags))
  var vx_ret = newSeq[gen_qabstractitemmodel_types.QModelIndex](int(v_ma.len))
  let v_outCast = cast[ptr UncheckedArray[pointer]](v_ma.data)
  for i in 0 ..< v_ma.len:
    vx_ret[i] = gen_qabstractitemmodel_types.QModelIndex(h: v_outCast[i], owned: true)
  c_free(v_ma.data)
  vx_ret

proc cQIdentityProxyModel_vtable_callback_match(self: pointer, start: pointer, role: cint, value: pointer, hits: cint, flags: cint): struct_miqt_array {.cdecl.} =
  let vtbl = cast[ptr QIdentityProxyModelVTable](fcQIdentityProxyModel_vdata(self))
  let self = QIdentityProxyModel(h: self)
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

proc QIdentityProxyModelsetSourceModel*(self: gen_qidentityproxymodel_types.QIdentityProxyModel, sourceModel: gen_qabstractitemmodel_types.QAbstractItemModel): void =
  fcQIdentityProxyModel_virtualbase_setSourceModel(self.h, sourceModel.h)

proc cQIdentityProxyModel_vtable_callback_setSourceModel(self: pointer, sourceModel: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QIdentityProxyModelVTable](fcQIdentityProxyModel_vdata(self))
  let self = QIdentityProxyModel(h: self)
  let slotval1 = gen_qabstractitemmodel_types.QAbstractItemModel(h: sourceModel, owned: false)
  vtbl[].setSourceModel(self, slotval1)

proc QIdentityProxyModelinsertColumns*(self: gen_qidentityproxymodel_types.QIdentityProxyModel, column: cint, count: cint, parent: gen_qabstractitemmodel_types.QModelIndex): bool =
  fcQIdentityProxyModel_virtualbase_insertColumns(self.h, column, count, parent.h)

proc cQIdentityProxyModel_vtable_callback_insertColumns(self: pointer, column: cint, count: cint, parent: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QIdentityProxyModelVTable](fcQIdentityProxyModel_vdata(self))
  let self = QIdentityProxyModel(h: self)
  let slotval1 = column
  let slotval2 = count
  let slotval3 = gen_qabstractitemmodel_types.QModelIndex(h: parent, owned: false)
  var virtualReturn = vtbl[].insertColumns(self, slotval1, slotval2, slotval3)
  virtualReturn

proc QIdentityProxyModelinsertRows*(self: gen_qidentityproxymodel_types.QIdentityProxyModel, row: cint, count: cint, parent: gen_qabstractitemmodel_types.QModelIndex): bool =
  fcQIdentityProxyModel_virtualbase_insertRows(self.h, row, count, parent.h)

proc cQIdentityProxyModel_vtable_callback_insertRows(self: pointer, row: cint, count: cint, parent: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QIdentityProxyModelVTable](fcQIdentityProxyModel_vdata(self))
  let self = QIdentityProxyModel(h: self)
  let slotval1 = row
  let slotval2 = count
  let slotval3 = gen_qabstractitemmodel_types.QModelIndex(h: parent, owned: false)
  var virtualReturn = vtbl[].insertRows(self, slotval1, slotval2, slotval3)
  virtualReturn

proc QIdentityProxyModelremoveColumns*(self: gen_qidentityproxymodel_types.QIdentityProxyModel, column: cint, count: cint, parent: gen_qabstractitemmodel_types.QModelIndex): bool =
  fcQIdentityProxyModel_virtualbase_removeColumns(self.h, column, count, parent.h)

proc cQIdentityProxyModel_vtable_callback_removeColumns(self: pointer, column: cint, count: cint, parent: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QIdentityProxyModelVTable](fcQIdentityProxyModel_vdata(self))
  let self = QIdentityProxyModel(h: self)
  let slotval1 = column
  let slotval2 = count
  let slotval3 = gen_qabstractitemmodel_types.QModelIndex(h: parent, owned: false)
  var virtualReturn = vtbl[].removeColumns(self, slotval1, slotval2, slotval3)
  virtualReturn

proc QIdentityProxyModelremoveRows*(self: gen_qidentityproxymodel_types.QIdentityProxyModel, row: cint, count: cint, parent: gen_qabstractitemmodel_types.QModelIndex): bool =
  fcQIdentityProxyModel_virtualbase_removeRows(self.h, row, count, parent.h)

proc cQIdentityProxyModel_vtable_callback_removeRows(self: pointer, row: cint, count: cint, parent: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QIdentityProxyModelVTable](fcQIdentityProxyModel_vdata(self))
  let self = QIdentityProxyModel(h: self)
  let slotval1 = row
  let slotval2 = count
  let slotval3 = gen_qabstractitemmodel_types.QModelIndex(h: parent, owned: false)
  var virtualReturn = vtbl[].removeRows(self, slotval1, slotval2, slotval3)
  virtualReturn

proc QIdentityProxyModelmoveRows*(self: gen_qidentityproxymodel_types.QIdentityProxyModel, sourceParent: gen_qabstractitemmodel_types.QModelIndex, sourceRow: cint, count: cint, destinationParent: gen_qabstractitemmodel_types.QModelIndex, destinationChild: cint): bool =
  fcQIdentityProxyModel_virtualbase_moveRows(self.h, sourceParent.h, sourceRow, count, destinationParent.h, destinationChild)

proc cQIdentityProxyModel_vtable_callback_moveRows(self: pointer, sourceParent: pointer, sourceRow: cint, count: cint, destinationParent: pointer, destinationChild: cint): bool {.cdecl.} =
  let vtbl = cast[ptr QIdentityProxyModelVTable](fcQIdentityProxyModel_vdata(self))
  let self = QIdentityProxyModel(h: self)
  let slotval1 = gen_qabstractitemmodel_types.QModelIndex(h: sourceParent, owned: false)
  let slotval2 = sourceRow
  let slotval3 = count
  let slotval4 = gen_qabstractitemmodel_types.QModelIndex(h: destinationParent, owned: false)
  let slotval5 = destinationChild
  var virtualReturn = vtbl[].moveRows(self, slotval1, slotval2, slotval3, slotval4, slotval5)
  virtualReturn

proc QIdentityProxyModelmoveColumns*(self: gen_qidentityproxymodel_types.QIdentityProxyModel, sourceParent: gen_qabstractitemmodel_types.QModelIndex, sourceColumn: cint, count: cint, destinationParent: gen_qabstractitemmodel_types.QModelIndex, destinationChild: cint): bool =
  fcQIdentityProxyModel_virtualbase_moveColumns(self.h, sourceParent.h, sourceColumn, count, destinationParent.h, destinationChild)

proc cQIdentityProxyModel_vtable_callback_moveColumns(self: pointer, sourceParent: pointer, sourceColumn: cint, count: cint, destinationParent: pointer, destinationChild: cint): bool {.cdecl.} =
  let vtbl = cast[ptr QIdentityProxyModelVTable](fcQIdentityProxyModel_vdata(self))
  let self = QIdentityProxyModel(h: self)
  let slotval1 = gen_qabstractitemmodel_types.QModelIndex(h: sourceParent, owned: false)
  let slotval2 = sourceColumn
  let slotval3 = count
  let slotval4 = gen_qabstractitemmodel_types.QModelIndex(h: destinationParent, owned: false)
  let slotval5 = destinationChild
  var virtualReturn = vtbl[].moveColumns(self, slotval1, slotval2, slotval3, slotval4, slotval5)
  virtualReturn

proc QIdentityProxyModelsubmit*(self: gen_qidentityproxymodel_types.QIdentityProxyModel): bool =
  fcQIdentityProxyModel_virtualbase_submit(self.h)

proc cQIdentityProxyModel_vtable_callback_submit(self: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QIdentityProxyModelVTable](fcQIdentityProxyModel_vdata(self))
  let self = QIdentityProxyModel(h: self)
  var virtualReturn = vtbl[].submit(self)
  virtualReturn

proc QIdentityProxyModelrevert*(self: gen_qidentityproxymodel_types.QIdentityProxyModel): void =
  fcQIdentityProxyModel_virtualbase_revert(self.h)

proc cQIdentityProxyModel_vtable_callback_revert(self: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QIdentityProxyModelVTable](fcQIdentityProxyModel_vdata(self))
  let self = QIdentityProxyModel(h: self)
  vtbl[].revert(self)

proc QIdentityProxyModeldata*(self: gen_qidentityproxymodel_types.QIdentityProxyModel, proxyIndex: gen_qabstractitemmodel_types.QModelIndex, role: cint): gen_qvariant_types.QVariant =
  gen_qvariant_types.QVariant(h: fcQIdentityProxyModel_virtualbase_data(self.h, proxyIndex.h, role), owned: true)

proc cQIdentityProxyModel_vtable_callback_data(self: pointer, proxyIndex: pointer, role: cint): pointer {.cdecl.} =
  let vtbl = cast[ptr QIdentityProxyModelVTable](fcQIdentityProxyModel_vdata(self))
  let self = QIdentityProxyModel(h: self)
  let slotval1 = gen_qabstractitemmodel_types.QModelIndex(h: proxyIndex, owned: false)
  let slotval2 = role
  var virtualReturn = vtbl[].data(self, slotval1, slotval2)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc QIdentityProxyModelitemData*(self: gen_qidentityproxymodel_types.QIdentityProxyModel, index: gen_qabstractitemmodel_types.QModelIndex): Table[cint,gen_qvariant_types.QVariant] =
  var v_mm = fcQIdentityProxyModel_virtualbase_itemData(self.h, index.h)
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

proc cQIdentityProxyModel_vtable_callback_itemData(self: pointer, index: pointer): struct_miqt_map {.cdecl.} =
  let vtbl = cast[ptr QIdentityProxyModelVTable](fcQIdentityProxyModel_vdata(self))
  let self = QIdentityProxyModel(h: self)
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

proc QIdentityProxyModelflags*(self: gen_qidentityproxymodel_types.QIdentityProxyModel, index: gen_qabstractitemmodel_types.QModelIndex): cint =
  cint(fcQIdentityProxyModel_virtualbase_flags(self.h, index.h))

proc cQIdentityProxyModel_vtable_callback_flags(self: pointer, index: pointer): cint {.cdecl.} =
  let vtbl = cast[ptr QIdentityProxyModelVTable](fcQIdentityProxyModel_vdata(self))
  let self = QIdentityProxyModel(h: self)
  let slotval1 = gen_qabstractitemmodel_types.QModelIndex(h: index, owned: false)
  var virtualReturn = vtbl[].flags(self, slotval1)
  cint(virtualReturn)

proc QIdentityProxyModelsetData*(self: gen_qidentityproxymodel_types.QIdentityProxyModel, index: gen_qabstractitemmodel_types.QModelIndex, value: gen_qvariant_types.QVariant, role: cint): bool =
  fcQIdentityProxyModel_virtualbase_setData(self.h, index.h, value.h, role)

proc cQIdentityProxyModel_vtable_callback_setData(self: pointer, index: pointer, value: pointer, role: cint): bool {.cdecl.} =
  let vtbl = cast[ptr QIdentityProxyModelVTable](fcQIdentityProxyModel_vdata(self))
  let self = QIdentityProxyModel(h: self)
  let slotval1 = gen_qabstractitemmodel_types.QModelIndex(h: index, owned: false)
  let slotval2 = gen_qvariant_types.QVariant(h: value, owned: false)
  let slotval3 = role
  var virtualReturn = vtbl[].setData(self, slotval1, slotval2, slotval3)
  virtualReturn

proc QIdentityProxyModelsetItemData*(self: gen_qidentityproxymodel_types.QIdentityProxyModel, index: gen_qabstractitemmodel_types.QModelIndex, roles: Table[cint,gen_qvariant_types.QVariant]): bool =
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

  fcQIdentityProxyModel_virtualbase_setItemData(self.h, index.h, struct_miqt_map(len: csize_t(len(roles)),keys: if len(roles) == 0: nil else: addr(roles_Keys_CArray[0]), values: if len(roles) == 0: nil else: addr(roles_Values_CArray[0]),))

proc cQIdentityProxyModel_vtable_callback_setItemData(self: pointer, index: pointer, roles: struct_miqt_map): bool {.cdecl.} =
  let vtbl = cast[ptr QIdentityProxyModelVTable](fcQIdentityProxyModel_vdata(self))
  let self = QIdentityProxyModel(h: self)
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

proc QIdentityProxyModelsetHeaderData*(self: gen_qidentityproxymodel_types.QIdentityProxyModel, section: cint, orientation: cint, value: gen_qvariant_types.QVariant, role: cint): bool =
  fcQIdentityProxyModel_virtualbase_setHeaderData(self.h, section, cint(orientation), value.h, role)

proc cQIdentityProxyModel_vtable_callback_setHeaderData(self: pointer, section: cint, orientation: cint, value: pointer, role: cint): bool {.cdecl.} =
  let vtbl = cast[ptr QIdentityProxyModelVTable](fcQIdentityProxyModel_vdata(self))
  let self = QIdentityProxyModel(h: self)
  let slotval1 = section
  let slotval2 = cint(orientation)
  let slotval3 = gen_qvariant_types.QVariant(h: value, owned: false)
  let slotval4 = role
  var virtualReturn = vtbl[].setHeaderData(self, slotval1, slotval2, slotval3, slotval4)
  virtualReturn

proc QIdentityProxyModelclearItemData*(self: gen_qidentityproxymodel_types.QIdentityProxyModel, index: gen_qabstractitemmodel_types.QModelIndex): bool =
  fcQIdentityProxyModel_virtualbase_clearItemData(self.h, index.h)

proc cQIdentityProxyModel_vtable_callback_clearItemData(self: pointer, index: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QIdentityProxyModelVTable](fcQIdentityProxyModel_vdata(self))
  let self = QIdentityProxyModel(h: self)
  let slotval1 = gen_qabstractitemmodel_types.QModelIndex(h: index, owned: false)
  var virtualReturn = vtbl[].clearItemData(self, slotval1)
  virtualReturn

proc QIdentityProxyModelbuddy*(self: gen_qidentityproxymodel_types.QIdentityProxyModel, index: gen_qabstractitemmodel_types.QModelIndex): gen_qabstractitemmodel_types.QModelIndex =
  gen_qabstractitemmodel_types.QModelIndex(h: fcQIdentityProxyModel_virtualbase_buddy(self.h, index.h), owned: true)

proc cQIdentityProxyModel_vtable_callback_buddy(self: pointer, index: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QIdentityProxyModelVTable](fcQIdentityProxyModel_vdata(self))
  let self = QIdentityProxyModel(h: self)
  let slotval1 = gen_qabstractitemmodel_types.QModelIndex(h: index, owned: false)
  var virtualReturn = vtbl[].buddy(self, slotval1)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc QIdentityProxyModelcanFetchMore*(self: gen_qidentityproxymodel_types.QIdentityProxyModel, parent: gen_qabstractitemmodel_types.QModelIndex): bool =
  fcQIdentityProxyModel_virtualbase_canFetchMore(self.h, parent.h)

proc cQIdentityProxyModel_vtable_callback_canFetchMore(self: pointer, parent: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QIdentityProxyModelVTable](fcQIdentityProxyModel_vdata(self))
  let self = QIdentityProxyModel(h: self)
  let slotval1 = gen_qabstractitemmodel_types.QModelIndex(h: parent, owned: false)
  var virtualReturn = vtbl[].canFetchMore(self, slotval1)
  virtualReturn

proc QIdentityProxyModelfetchMore*(self: gen_qidentityproxymodel_types.QIdentityProxyModel, parent: gen_qabstractitemmodel_types.QModelIndex): void =
  fcQIdentityProxyModel_virtualbase_fetchMore(self.h, parent.h)

proc cQIdentityProxyModel_vtable_callback_fetchMore(self: pointer, parent: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QIdentityProxyModelVTable](fcQIdentityProxyModel_vdata(self))
  let self = QIdentityProxyModel(h: self)
  let slotval1 = gen_qabstractitemmodel_types.QModelIndex(h: parent, owned: false)
  vtbl[].fetchMore(self, slotval1)

proc QIdentityProxyModelsort*(self: gen_qidentityproxymodel_types.QIdentityProxyModel, column: cint, order: cint): void =
  fcQIdentityProxyModel_virtualbase_sort(self.h, column, cint(order))

proc cQIdentityProxyModel_vtable_callback_sort(self: pointer, column: cint, order: cint): void {.cdecl.} =
  let vtbl = cast[ptr QIdentityProxyModelVTable](fcQIdentityProxyModel_vdata(self))
  let self = QIdentityProxyModel(h: self)
  let slotval1 = column
  let slotval2 = cint(order)
  vtbl[].sort(self, slotval1, slotval2)

proc QIdentityProxyModelspan*(self: gen_qidentityproxymodel_types.QIdentityProxyModel, index: gen_qabstractitemmodel_types.QModelIndex): gen_qsize_types.QSize =
  gen_qsize_types.QSize(h: fcQIdentityProxyModel_virtualbase_span(self.h, index.h), owned: true)

proc cQIdentityProxyModel_vtable_callback_span(self: pointer, index: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QIdentityProxyModelVTable](fcQIdentityProxyModel_vdata(self))
  let self = QIdentityProxyModel(h: self)
  let slotval1 = gen_qabstractitemmodel_types.QModelIndex(h: index, owned: false)
  var virtualReturn = vtbl[].span(self, slotval1)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc QIdentityProxyModelhasChildren*(self: gen_qidentityproxymodel_types.QIdentityProxyModel, parent: gen_qabstractitemmodel_types.QModelIndex): bool =
  fcQIdentityProxyModel_virtualbase_hasChildren(self.h, parent.h)

proc cQIdentityProxyModel_vtable_callback_hasChildren(self: pointer, parent: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QIdentityProxyModelVTable](fcQIdentityProxyModel_vdata(self))
  let self = QIdentityProxyModel(h: self)
  let slotval1 = gen_qabstractitemmodel_types.QModelIndex(h: parent, owned: false)
  var virtualReturn = vtbl[].hasChildren(self, slotval1)
  virtualReturn

proc QIdentityProxyModelmimeData*(self: gen_qidentityproxymodel_types.QIdentityProxyModel, indexes: seq[gen_qabstractitemmodel_types.QModelIndex]): gen_qmimedata_types.QMimeData =
  var indexes_CArray = newSeq[pointer](len(indexes))
  for i in 0..<len(indexes):
    indexes_CArray[i] = indexes[i].h

  gen_qmimedata_types.QMimeData(h: fcQIdentityProxyModel_virtualbase_mimeData(self.h, struct_miqt_array(len: csize_t(len(indexes)), data: if len(indexes) == 0: nil else: addr(indexes_CArray[0]))), owned: false)

proc cQIdentityProxyModel_vtable_callback_mimeData(self: pointer, indexes: struct_miqt_array): pointer {.cdecl.} =
  let vtbl = cast[ptr QIdentityProxyModelVTable](fcQIdentityProxyModel_vdata(self))
  let self = QIdentityProxyModel(h: self)
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

proc QIdentityProxyModelcanDropMimeData*(self: gen_qidentityproxymodel_types.QIdentityProxyModel, data: gen_qmimedata_types.QMimeData, action: cint, row: cint, column: cint, parent: gen_qabstractitemmodel_types.QModelIndex): bool =
  fcQIdentityProxyModel_virtualbase_canDropMimeData(self.h, data.h, cint(action), row, column, parent.h)

proc cQIdentityProxyModel_vtable_callback_canDropMimeData(self: pointer, data: pointer, action: cint, row: cint, column: cint, parent: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QIdentityProxyModelVTable](fcQIdentityProxyModel_vdata(self))
  let self = QIdentityProxyModel(h: self)
  let slotval1 = gen_qmimedata_types.QMimeData(h: data, owned: false)
  let slotval2 = cint(action)
  let slotval3 = row
  let slotval4 = column
  let slotval5 = gen_qabstractitemmodel_types.QModelIndex(h: parent, owned: false)
  var virtualReturn = vtbl[].canDropMimeData(self, slotval1, slotval2, slotval3, slotval4, slotval5)
  virtualReturn

proc QIdentityProxyModelmimeTypes*(self: gen_qidentityproxymodel_types.QIdentityProxyModel): seq[string] =
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

proc cQIdentityProxyModel_vtable_callback_mimeTypes(self: pointer): struct_miqt_array {.cdecl.} =
  let vtbl = cast[ptr QIdentityProxyModelVTable](fcQIdentityProxyModel_vdata(self))
  let self = QIdentityProxyModel(h: self)
  var virtualReturn = vtbl[].mimeTypes(self)
  var virtualReturn_CArray = cast[ptr UncheckedArray[struct_miqt_string]](if len(virtualReturn) > 0: c_malloc(c_sizet(sizeof(struct_miqt_string) * len(virtualReturn))) else: nil)
  for i in 0..<len(virtualReturn):
    var virtualReturn_i_copy = cast[cstring](if len(virtualReturn[i]) > 0: c_malloc(csize_t(len(virtualReturn[i]))) else: nil)
    if len(virtualReturn[i]) > 0: copyMem(cast[pointer](virtualReturn_i_copy), addr virtualReturn[i][0], csize_t(len(virtualReturn[i])))
    virtualReturn_CArray[i] = struct_miqt_string(data: virtualReturn_i_copy, len: csize_t(len(virtualReturn[i])))

  struct_miqt_array(len: csize_t(len(virtualReturn)), data: if len(virtualReturn) == 0: nil else: addr(virtualReturn_CArray[0]))

proc QIdentityProxyModelsupportedDragActions*(self: gen_qidentityproxymodel_types.QIdentityProxyModel): cint =
  cint(fcQIdentityProxyModel_virtualbase_supportedDragActions(self.h))

proc cQIdentityProxyModel_vtable_callback_supportedDragActions(self: pointer): cint {.cdecl.} =
  let vtbl = cast[ptr QIdentityProxyModelVTable](fcQIdentityProxyModel_vdata(self))
  let self = QIdentityProxyModel(h: self)
  var virtualReturn = vtbl[].supportedDragActions(self)
  cint(virtualReturn)

proc QIdentityProxyModelsupportedDropActions*(self: gen_qidentityproxymodel_types.QIdentityProxyModel): cint =
  cint(fcQIdentityProxyModel_virtualbase_supportedDropActions(self.h))

proc cQIdentityProxyModel_vtable_callback_supportedDropActions(self: pointer): cint {.cdecl.} =
  let vtbl = cast[ptr QIdentityProxyModelVTable](fcQIdentityProxyModel_vdata(self))
  let self = QIdentityProxyModel(h: self)
  var virtualReturn = vtbl[].supportedDropActions(self)
  cint(virtualReturn)

proc QIdentityProxyModelroleNames*(self: gen_qidentityproxymodel_types.QIdentityProxyModel): Table[cint,seq[byte]] =
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

proc cQIdentityProxyModel_vtable_callback_roleNames(self: pointer): struct_miqt_map {.cdecl.} =
  let vtbl = cast[ptr QIdentityProxyModelVTable](fcQIdentityProxyModel_vdata(self))
  let self = QIdentityProxyModel(h: self)
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

proc QIdentityProxyModelmultiData*(self: gen_qidentityproxymodel_types.QIdentityProxyModel, index: gen_qabstractitemmodel_types.QModelIndex, roleDataSpan: gen_qabstractitemmodel_types.QModelRoleDataSpan): void =
  fcQIdentityProxyModel_virtualbase_multiData(self.h, index.h, roleDataSpan.h)

proc cQIdentityProxyModel_vtable_callback_multiData(self: pointer, index: pointer, roleDataSpan: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QIdentityProxyModelVTable](fcQIdentityProxyModel_vdata(self))
  let self = QIdentityProxyModel(h: self)
  let slotval1 = gen_qabstractitemmodel_types.QModelIndex(h: index, owned: false)
  let slotval2 = gen_qabstractitemmodel_types.QModelRoleDataSpan(h: roleDataSpan, owned: true)
  vtbl[].multiData(self, slotval1, slotval2)

proc QIdentityProxyModelresetInternalData*(self: gen_qidentityproxymodel_types.QIdentityProxyModel): void =
  fcQIdentityProxyModel_virtualbase_resetInternalData(self.h)

proc cQIdentityProxyModel_vtable_callback_resetInternalData(self: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QIdentityProxyModelVTable](fcQIdentityProxyModel_vdata(self))
  let self = QIdentityProxyModel(h: self)
  vtbl[].resetInternalData(self)

proc QIdentityProxyModelevent*(self: gen_qidentityproxymodel_types.QIdentityProxyModel, event: gen_qcoreevent_types.QEvent): bool =
  fcQIdentityProxyModel_virtualbase_event(self.h, event.h)

proc cQIdentityProxyModel_vtable_callback_event(self: pointer, event: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QIdentityProxyModelVTable](fcQIdentityProxyModel_vdata(self))
  let self = QIdentityProxyModel(h: self)
  let slotval1 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  var virtualReturn = vtbl[].event(self, slotval1)
  virtualReturn

proc QIdentityProxyModeleventFilter*(self: gen_qidentityproxymodel_types.QIdentityProxyModel, watched: gen_qobject_types.QObject, event: gen_qcoreevent_types.QEvent): bool =
  fcQIdentityProxyModel_virtualbase_eventFilter(self.h, watched.h, event.h)

proc cQIdentityProxyModel_vtable_callback_eventFilter(self: pointer, watched: pointer, event: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QIdentityProxyModelVTable](fcQIdentityProxyModel_vdata(self))
  let self = QIdentityProxyModel(h: self)
  let slotval1 = gen_qobject_types.QObject(h: watched, owned: false)
  let slotval2 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  var virtualReturn = vtbl[].eventFilter(self, slotval1, slotval2)
  virtualReturn

proc QIdentityProxyModeltimerEvent*(self: gen_qidentityproxymodel_types.QIdentityProxyModel, event: gen_qcoreevent_types.QTimerEvent): void =
  fcQIdentityProxyModel_virtualbase_timerEvent(self.h, event.h)

proc cQIdentityProxyModel_vtable_callback_timerEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QIdentityProxyModelVTable](fcQIdentityProxyModel_vdata(self))
  let self = QIdentityProxyModel(h: self)
  let slotval1 = gen_qcoreevent_types.QTimerEvent(h: event, owned: false)
  vtbl[].timerEvent(self, slotval1)

proc QIdentityProxyModelchildEvent*(self: gen_qidentityproxymodel_types.QIdentityProxyModel, event: gen_qcoreevent_types.QChildEvent): void =
  fcQIdentityProxyModel_virtualbase_childEvent(self.h, event.h)

proc cQIdentityProxyModel_vtable_callback_childEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QIdentityProxyModelVTable](fcQIdentityProxyModel_vdata(self))
  let self = QIdentityProxyModel(h: self)
  let slotval1 = gen_qcoreevent_types.QChildEvent(h: event, owned: false)
  vtbl[].childEvent(self, slotval1)

proc QIdentityProxyModelcustomEvent*(self: gen_qidentityproxymodel_types.QIdentityProxyModel, event: gen_qcoreevent_types.QEvent): void =
  fcQIdentityProxyModel_virtualbase_customEvent(self.h, event.h)

proc cQIdentityProxyModel_vtable_callback_customEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QIdentityProxyModelVTable](fcQIdentityProxyModel_vdata(self))
  let self = QIdentityProxyModel(h: self)
  let slotval1 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  vtbl[].customEvent(self, slotval1)

proc QIdentityProxyModelconnectNotify*(self: gen_qidentityproxymodel_types.QIdentityProxyModel, signal: gen_qmetaobject_types.QMetaMethod): void =
  fcQIdentityProxyModel_virtualbase_connectNotify(self.h, signal.h)

proc cQIdentityProxyModel_vtable_callback_connectNotify(self: pointer, signal: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QIdentityProxyModelVTable](fcQIdentityProxyModel_vdata(self))
  let self = QIdentityProxyModel(h: self)
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal, owned: false)
  vtbl[].connectNotify(self, slotval1)

proc QIdentityProxyModeldisconnectNotify*(self: gen_qidentityproxymodel_types.QIdentityProxyModel, signal: gen_qmetaobject_types.QMetaMethod): void =
  fcQIdentityProxyModel_virtualbase_disconnectNotify(self.h, signal.h)

proc cQIdentityProxyModel_vtable_callback_disconnectNotify(self: pointer, signal: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QIdentityProxyModelVTable](fcQIdentityProxyModel_vdata(self))
  let self = QIdentityProxyModel(h: self)
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal, owned: false)
  vtbl[].disconnectNotify(self, slotval1)

type VirtualQIdentityProxyModel* {.inheritable.} = ref object of QIdentityProxyModel
  vtbl*: cQIdentityProxyModelVTable
method metaObject*(self: VirtualQIdentityProxyModel): gen_qobjectdefs_types.QMetaObject {.base.} =
  QIdentityProxyModelmetaObject(self[])
proc cQIdentityProxyModel_method_callback_metaObject(self: pointer): pointer {.cdecl.} =
  let inst = cast[VirtualQIdentityProxyModel](fcQIdentityProxyModel_vdata(self))
  var virtualReturn = inst.metaObject()
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

method metacast*(self: VirtualQIdentityProxyModel, param1: cstring): pointer {.base.} =
  QIdentityProxyModelmetacast(self[], param1)
proc cQIdentityProxyModel_method_callback_metacast(self: pointer, param1: cstring): pointer {.cdecl.} =
  let inst = cast[VirtualQIdentityProxyModel](fcQIdentityProxyModel_vdata(self))
  let slotval1 = (param1)
  var virtualReturn = inst.metacast(slotval1)
  virtualReturn

method metacall*(self: VirtualQIdentityProxyModel, param1: cint, param2: cint, param3: pointer): cint {.base.} =
  QIdentityProxyModelmetacall(self[], param1, param2, param3)
proc cQIdentityProxyModel_method_callback_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.cdecl.} =
  let inst = cast[VirtualQIdentityProxyModel](fcQIdentityProxyModel_vdata(self))
  let slotval1 = cint(param1)
  let slotval2 = param2
  let slotval3 = param3
  var virtualReturn = inst.metacall(slotval1, slotval2, slotval3)
  virtualReturn

method columnCount*(self: VirtualQIdentityProxyModel, parent: gen_qabstractitemmodel_types.QModelIndex): cint {.base.} =
  QIdentityProxyModelcolumnCount(self[], parent)
proc cQIdentityProxyModel_method_callback_columnCount(self: pointer, parent: pointer): cint {.cdecl.} =
  let inst = cast[VirtualQIdentityProxyModel](fcQIdentityProxyModel_vdata(self))
  let slotval1 = gen_qabstractitemmodel_types.QModelIndex(h: parent, owned: false)
  var virtualReturn = inst.columnCount(slotval1)
  virtualReturn

method index*(self: VirtualQIdentityProxyModel, row: cint, column: cint, parent: gen_qabstractitemmodel_types.QModelIndex): gen_qabstractitemmodel_types.QModelIndex {.base.} =
  QIdentityProxyModelindex(self[], row, column, parent)
proc cQIdentityProxyModel_method_callback_index(self: pointer, row: cint, column: cint, parent: pointer): pointer {.cdecl.} =
  let inst = cast[VirtualQIdentityProxyModel](fcQIdentityProxyModel_vdata(self))
  let slotval1 = row
  let slotval2 = column
  let slotval3 = gen_qabstractitemmodel_types.QModelIndex(h: parent, owned: false)
  var virtualReturn = inst.index(slotval1, slotval2, slotval3)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

method mapFromSource*(self: VirtualQIdentityProxyModel, sourceIndex: gen_qabstractitemmodel_types.QModelIndex): gen_qabstractitemmodel_types.QModelIndex {.base.} =
  QIdentityProxyModelmapFromSource(self[], sourceIndex)
proc cQIdentityProxyModel_method_callback_mapFromSource(self: pointer, sourceIndex: pointer): pointer {.cdecl.} =
  let inst = cast[VirtualQIdentityProxyModel](fcQIdentityProxyModel_vdata(self))
  let slotval1 = gen_qabstractitemmodel_types.QModelIndex(h: sourceIndex, owned: false)
  var virtualReturn = inst.mapFromSource(slotval1)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

method mapToSource*(self: VirtualQIdentityProxyModel, proxyIndex: gen_qabstractitemmodel_types.QModelIndex): gen_qabstractitemmodel_types.QModelIndex {.base.} =
  QIdentityProxyModelmapToSource(self[], proxyIndex)
proc cQIdentityProxyModel_method_callback_mapToSource(self: pointer, proxyIndex: pointer): pointer {.cdecl.} =
  let inst = cast[VirtualQIdentityProxyModel](fcQIdentityProxyModel_vdata(self))
  let slotval1 = gen_qabstractitemmodel_types.QModelIndex(h: proxyIndex, owned: false)
  var virtualReturn = inst.mapToSource(slotval1)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

method parent*(self: VirtualQIdentityProxyModel, child: gen_qabstractitemmodel_types.QModelIndex): gen_qabstractitemmodel_types.QModelIndex {.base.} =
  QIdentityProxyModelparent(self[], child)
proc cQIdentityProxyModel_method_callback_parent(self: pointer, child: pointer): pointer {.cdecl.} =
  let inst = cast[VirtualQIdentityProxyModel](fcQIdentityProxyModel_vdata(self))
  let slotval1 = gen_qabstractitemmodel_types.QModelIndex(h: child, owned: false)
  var virtualReturn = inst.parent(slotval1)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

method rowCount*(self: VirtualQIdentityProxyModel, parent: gen_qabstractitemmodel_types.QModelIndex): cint {.base.} =
  QIdentityProxyModelrowCount(self[], parent)
proc cQIdentityProxyModel_method_callback_rowCount(self: pointer, parent: pointer): cint {.cdecl.} =
  let inst = cast[VirtualQIdentityProxyModel](fcQIdentityProxyModel_vdata(self))
  let slotval1 = gen_qabstractitemmodel_types.QModelIndex(h: parent, owned: false)
  var virtualReturn = inst.rowCount(slotval1)
  virtualReturn

method headerData*(self: VirtualQIdentityProxyModel, section: cint, orientation: cint, role: cint): gen_qvariant_types.QVariant {.base.} =
  QIdentityProxyModelheaderData(self[], section, orientation, role)
proc cQIdentityProxyModel_method_callback_headerData(self: pointer, section: cint, orientation: cint, role: cint): pointer {.cdecl.} =
  let inst = cast[VirtualQIdentityProxyModel](fcQIdentityProxyModel_vdata(self))
  let slotval1 = section
  let slotval2 = cint(orientation)
  let slotval3 = role
  var virtualReturn = inst.headerData(slotval1, slotval2, slotval3)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

method dropMimeData*(self: VirtualQIdentityProxyModel, data: gen_qmimedata_types.QMimeData, action: cint, row: cint, column: cint, parent: gen_qabstractitemmodel_types.QModelIndex): bool {.base.} =
  QIdentityProxyModeldropMimeData(self[], data, action, row, column, parent)
proc cQIdentityProxyModel_method_callback_dropMimeData(self: pointer, data: pointer, action: cint, row: cint, column: cint, parent: pointer): bool {.cdecl.} =
  let inst = cast[VirtualQIdentityProxyModel](fcQIdentityProxyModel_vdata(self))
  let slotval1 = gen_qmimedata_types.QMimeData(h: data, owned: false)
  let slotval2 = cint(action)
  let slotval3 = row
  let slotval4 = column
  let slotval5 = gen_qabstractitemmodel_types.QModelIndex(h: parent, owned: false)
  var virtualReturn = inst.dropMimeData(slotval1, slotval2, slotval3, slotval4, slotval5)
  virtualReturn

method sibling*(self: VirtualQIdentityProxyModel, row: cint, column: cint, idx: gen_qabstractitemmodel_types.QModelIndex): gen_qabstractitemmodel_types.QModelIndex {.base.} =
  QIdentityProxyModelsibling(self[], row, column, idx)
proc cQIdentityProxyModel_method_callback_sibling(self: pointer, row: cint, column: cint, idx: pointer): pointer {.cdecl.} =
  let inst = cast[VirtualQIdentityProxyModel](fcQIdentityProxyModel_vdata(self))
  let slotval1 = row
  let slotval2 = column
  let slotval3 = gen_qabstractitemmodel_types.QModelIndex(h: idx, owned: false)
  var virtualReturn = inst.sibling(slotval1, slotval2, slotval3)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

method mapSelectionFromSource*(self: VirtualQIdentityProxyModel, selection: gen_qitemselectionmodel_types.QItemSelection): gen_qitemselectionmodel_types.QItemSelection {.base.} =
  QIdentityProxyModelmapSelectionFromSource(self[], selection)
proc cQIdentityProxyModel_method_callback_mapSelectionFromSource(self: pointer, selection: pointer): pointer {.cdecl.} =
  let inst = cast[VirtualQIdentityProxyModel](fcQIdentityProxyModel_vdata(self))
  let slotval1 = gen_qitemselectionmodel_types.QItemSelection(h: selection, owned: false)
  var virtualReturn = inst.mapSelectionFromSource(slotval1)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

method mapSelectionToSource*(self: VirtualQIdentityProxyModel, selection: gen_qitemselectionmodel_types.QItemSelection): gen_qitemselectionmodel_types.QItemSelection {.base.} =
  QIdentityProxyModelmapSelectionToSource(self[], selection)
proc cQIdentityProxyModel_method_callback_mapSelectionToSource(self: pointer, selection: pointer): pointer {.cdecl.} =
  let inst = cast[VirtualQIdentityProxyModel](fcQIdentityProxyModel_vdata(self))
  let slotval1 = gen_qitemselectionmodel_types.QItemSelection(h: selection, owned: false)
  var virtualReturn = inst.mapSelectionToSource(slotval1)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

method match*(self: VirtualQIdentityProxyModel, start: gen_qabstractitemmodel_types.QModelIndex, role: cint, value: gen_qvariant_types.QVariant, hits: cint, flags: cint): seq[gen_qabstractitemmodel_types.QModelIndex] {.base.} =
  QIdentityProxyModelmatch(self[], start, role, value, hits, flags)
proc cQIdentityProxyModel_method_callback_match(self: pointer, start: pointer, role: cint, value: pointer, hits: cint, flags: cint): struct_miqt_array {.cdecl.} =
  let inst = cast[VirtualQIdentityProxyModel](fcQIdentityProxyModel_vdata(self))
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

method setSourceModel*(self: VirtualQIdentityProxyModel, sourceModel: gen_qabstractitemmodel_types.QAbstractItemModel): void {.base.} =
  QIdentityProxyModelsetSourceModel(self[], sourceModel)
proc cQIdentityProxyModel_method_callback_setSourceModel(self: pointer, sourceModel: pointer): void {.cdecl.} =
  let inst = cast[VirtualQIdentityProxyModel](fcQIdentityProxyModel_vdata(self))
  let slotval1 = gen_qabstractitemmodel_types.QAbstractItemModel(h: sourceModel, owned: false)
  inst.setSourceModel(slotval1)

method insertColumns*(self: VirtualQIdentityProxyModel, column: cint, count: cint, parent: gen_qabstractitemmodel_types.QModelIndex): bool {.base.} =
  QIdentityProxyModelinsertColumns(self[], column, count, parent)
proc cQIdentityProxyModel_method_callback_insertColumns(self: pointer, column: cint, count: cint, parent: pointer): bool {.cdecl.} =
  let inst = cast[VirtualQIdentityProxyModel](fcQIdentityProxyModel_vdata(self))
  let slotval1 = column
  let slotval2 = count
  let slotval3 = gen_qabstractitemmodel_types.QModelIndex(h: parent, owned: false)
  var virtualReturn = inst.insertColumns(slotval1, slotval2, slotval3)
  virtualReturn

method insertRows*(self: VirtualQIdentityProxyModel, row: cint, count: cint, parent: gen_qabstractitemmodel_types.QModelIndex): bool {.base.} =
  QIdentityProxyModelinsertRows(self[], row, count, parent)
proc cQIdentityProxyModel_method_callback_insertRows(self: pointer, row: cint, count: cint, parent: pointer): bool {.cdecl.} =
  let inst = cast[VirtualQIdentityProxyModel](fcQIdentityProxyModel_vdata(self))
  let slotval1 = row
  let slotval2 = count
  let slotval3 = gen_qabstractitemmodel_types.QModelIndex(h: parent, owned: false)
  var virtualReturn = inst.insertRows(slotval1, slotval2, slotval3)
  virtualReturn

method removeColumns*(self: VirtualQIdentityProxyModel, column: cint, count: cint, parent: gen_qabstractitemmodel_types.QModelIndex): bool {.base.} =
  QIdentityProxyModelremoveColumns(self[], column, count, parent)
proc cQIdentityProxyModel_method_callback_removeColumns(self: pointer, column: cint, count: cint, parent: pointer): bool {.cdecl.} =
  let inst = cast[VirtualQIdentityProxyModel](fcQIdentityProxyModel_vdata(self))
  let slotval1 = column
  let slotval2 = count
  let slotval3 = gen_qabstractitemmodel_types.QModelIndex(h: parent, owned: false)
  var virtualReturn = inst.removeColumns(slotval1, slotval2, slotval3)
  virtualReturn

method removeRows*(self: VirtualQIdentityProxyModel, row: cint, count: cint, parent: gen_qabstractitemmodel_types.QModelIndex): bool {.base.} =
  QIdentityProxyModelremoveRows(self[], row, count, parent)
proc cQIdentityProxyModel_method_callback_removeRows(self: pointer, row: cint, count: cint, parent: pointer): bool {.cdecl.} =
  let inst = cast[VirtualQIdentityProxyModel](fcQIdentityProxyModel_vdata(self))
  let slotval1 = row
  let slotval2 = count
  let slotval3 = gen_qabstractitemmodel_types.QModelIndex(h: parent, owned: false)
  var virtualReturn = inst.removeRows(slotval1, slotval2, slotval3)
  virtualReturn

method moveRows*(self: VirtualQIdentityProxyModel, sourceParent: gen_qabstractitemmodel_types.QModelIndex, sourceRow: cint, count: cint, destinationParent: gen_qabstractitemmodel_types.QModelIndex, destinationChild: cint): bool {.base.} =
  QIdentityProxyModelmoveRows(self[], sourceParent, sourceRow, count, destinationParent, destinationChild)
proc cQIdentityProxyModel_method_callback_moveRows(self: pointer, sourceParent: pointer, sourceRow: cint, count: cint, destinationParent: pointer, destinationChild: cint): bool {.cdecl.} =
  let inst = cast[VirtualQIdentityProxyModel](fcQIdentityProxyModel_vdata(self))
  let slotval1 = gen_qabstractitemmodel_types.QModelIndex(h: sourceParent, owned: false)
  let slotval2 = sourceRow
  let slotval3 = count
  let slotval4 = gen_qabstractitemmodel_types.QModelIndex(h: destinationParent, owned: false)
  let slotval5 = destinationChild
  var virtualReturn = inst.moveRows(slotval1, slotval2, slotval3, slotval4, slotval5)
  virtualReturn

method moveColumns*(self: VirtualQIdentityProxyModel, sourceParent: gen_qabstractitemmodel_types.QModelIndex, sourceColumn: cint, count: cint, destinationParent: gen_qabstractitemmodel_types.QModelIndex, destinationChild: cint): bool {.base.} =
  QIdentityProxyModelmoveColumns(self[], sourceParent, sourceColumn, count, destinationParent, destinationChild)
proc cQIdentityProxyModel_method_callback_moveColumns(self: pointer, sourceParent: pointer, sourceColumn: cint, count: cint, destinationParent: pointer, destinationChild: cint): bool {.cdecl.} =
  let inst = cast[VirtualQIdentityProxyModel](fcQIdentityProxyModel_vdata(self))
  let slotval1 = gen_qabstractitemmodel_types.QModelIndex(h: sourceParent, owned: false)
  let slotval2 = sourceColumn
  let slotval3 = count
  let slotval4 = gen_qabstractitemmodel_types.QModelIndex(h: destinationParent, owned: false)
  let slotval5 = destinationChild
  var virtualReturn = inst.moveColumns(slotval1, slotval2, slotval3, slotval4, slotval5)
  virtualReturn

method submit*(self: VirtualQIdentityProxyModel): bool {.base.} =
  QIdentityProxyModelsubmit(self[])
proc cQIdentityProxyModel_method_callback_submit(self: pointer): bool {.cdecl.} =
  let inst = cast[VirtualQIdentityProxyModel](fcQIdentityProxyModel_vdata(self))
  var virtualReturn = inst.submit()
  virtualReturn

method revert*(self: VirtualQIdentityProxyModel): void {.base.} =
  QIdentityProxyModelrevert(self[])
proc cQIdentityProxyModel_method_callback_revert(self: pointer): void {.cdecl.} =
  let inst = cast[VirtualQIdentityProxyModel](fcQIdentityProxyModel_vdata(self))
  inst.revert()

method data*(self: VirtualQIdentityProxyModel, proxyIndex: gen_qabstractitemmodel_types.QModelIndex, role: cint): gen_qvariant_types.QVariant {.base.} =
  QIdentityProxyModeldata(self[], proxyIndex, role)
proc cQIdentityProxyModel_method_callback_data(self: pointer, proxyIndex: pointer, role: cint): pointer {.cdecl.} =
  let inst = cast[VirtualQIdentityProxyModel](fcQIdentityProxyModel_vdata(self))
  let slotval1 = gen_qabstractitemmodel_types.QModelIndex(h: proxyIndex, owned: false)
  let slotval2 = role
  var virtualReturn = inst.data(slotval1, slotval2)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

method itemData*(self: VirtualQIdentityProxyModel, index: gen_qabstractitemmodel_types.QModelIndex): Table[cint,gen_qvariant_types.QVariant] {.base.} =
  QIdentityProxyModelitemData(self[], index)
proc cQIdentityProxyModel_method_callback_itemData(self: pointer, index: pointer): struct_miqt_map {.cdecl.} =
  let inst = cast[VirtualQIdentityProxyModel](fcQIdentityProxyModel_vdata(self))
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

method flags*(self: VirtualQIdentityProxyModel, index: gen_qabstractitemmodel_types.QModelIndex): cint {.base.} =
  QIdentityProxyModelflags(self[], index)
proc cQIdentityProxyModel_method_callback_flags(self: pointer, index: pointer): cint {.cdecl.} =
  let inst = cast[VirtualQIdentityProxyModel](fcQIdentityProxyModel_vdata(self))
  let slotval1 = gen_qabstractitemmodel_types.QModelIndex(h: index, owned: false)
  var virtualReturn = inst.flags(slotval1)
  cint(virtualReturn)

method setData*(self: VirtualQIdentityProxyModel, index: gen_qabstractitemmodel_types.QModelIndex, value: gen_qvariant_types.QVariant, role: cint): bool {.base.} =
  QIdentityProxyModelsetData(self[], index, value, role)
proc cQIdentityProxyModel_method_callback_setData(self: pointer, index: pointer, value: pointer, role: cint): bool {.cdecl.} =
  let inst = cast[VirtualQIdentityProxyModel](fcQIdentityProxyModel_vdata(self))
  let slotval1 = gen_qabstractitemmodel_types.QModelIndex(h: index, owned: false)
  let slotval2 = gen_qvariant_types.QVariant(h: value, owned: false)
  let slotval3 = role
  var virtualReturn = inst.setData(slotval1, slotval2, slotval3)
  virtualReturn

method setItemData*(self: VirtualQIdentityProxyModel, index: gen_qabstractitemmodel_types.QModelIndex, roles: Table[cint,gen_qvariant_types.QVariant]): bool {.base.} =
  QIdentityProxyModelsetItemData(self[], index, roles)
proc cQIdentityProxyModel_method_callback_setItemData(self: pointer, index: pointer, roles: struct_miqt_map): bool {.cdecl.} =
  let inst = cast[VirtualQIdentityProxyModel](fcQIdentityProxyModel_vdata(self))
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

method setHeaderData*(self: VirtualQIdentityProxyModel, section: cint, orientation: cint, value: gen_qvariant_types.QVariant, role: cint): bool {.base.} =
  QIdentityProxyModelsetHeaderData(self[], section, orientation, value, role)
proc cQIdentityProxyModel_method_callback_setHeaderData(self: pointer, section: cint, orientation: cint, value: pointer, role: cint): bool {.cdecl.} =
  let inst = cast[VirtualQIdentityProxyModel](fcQIdentityProxyModel_vdata(self))
  let slotval1 = section
  let slotval2 = cint(orientation)
  let slotval3 = gen_qvariant_types.QVariant(h: value, owned: false)
  let slotval4 = role
  var virtualReturn = inst.setHeaderData(slotval1, slotval2, slotval3, slotval4)
  virtualReturn

method clearItemData*(self: VirtualQIdentityProxyModel, index: gen_qabstractitemmodel_types.QModelIndex): bool {.base.} =
  QIdentityProxyModelclearItemData(self[], index)
proc cQIdentityProxyModel_method_callback_clearItemData(self: pointer, index: pointer): bool {.cdecl.} =
  let inst = cast[VirtualQIdentityProxyModel](fcQIdentityProxyModel_vdata(self))
  let slotval1 = gen_qabstractitemmodel_types.QModelIndex(h: index, owned: false)
  var virtualReturn = inst.clearItemData(slotval1)
  virtualReturn

method buddy*(self: VirtualQIdentityProxyModel, index: gen_qabstractitemmodel_types.QModelIndex): gen_qabstractitemmodel_types.QModelIndex {.base.} =
  QIdentityProxyModelbuddy(self[], index)
proc cQIdentityProxyModel_method_callback_buddy(self: pointer, index: pointer): pointer {.cdecl.} =
  let inst = cast[VirtualQIdentityProxyModel](fcQIdentityProxyModel_vdata(self))
  let slotval1 = gen_qabstractitemmodel_types.QModelIndex(h: index, owned: false)
  var virtualReturn = inst.buddy(slotval1)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

method canFetchMore*(self: VirtualQIdentityProxyModel, parent: gen_qabstractitemmodel_types.QModelIndex): bool {.base.} =
  QIdentityProxyModelcanFetchMore(self[], parent)
proc cQIdentityProxyModel_method_callback_canFetchMore(self: pointer, parent: pointer): bool {.cdecl.} =
  let inst = cast[VirtualQIdentityProxyModel](fcQIdentityProxyModel_vdata(self))
  let slotval1 = gen_qabstractitemmodel_types.QModelIndex(h: parent, owned: false)
  var virtualReturn = inst.canFetchMore(slotval1)
  virtualReturn

method fetchMore*(self: VirtualQIdentityProxyModel, parent: gen_qabstractitemmodel_types.QModelIndex): void {.base.} =
  QIdentityProxyModelfetchMore(self[], parent)
proc cQIdentityProxyModel_method_callback_fetchMore(self: pointer, parent: pointer): void {.cdecl.} =
  let inst = cast[VirtualQIdentityProxyModel](fcQIdentityProxyModel_vdata(self))
  let slotval1 = gen_qabstractitemmodel_types.QModelIndex(h: parent, owned: false)
  inst.fetchMore(slotval1)

method sort*(self: VirtualQIdentityProxyModel, column: cint, order: cint): void {.base.} =
  QIdentityProxyModelsort(self[], column, order)
proc cQIdentityProxyModel_method_callback_sort(self: pointer, column: cint, order: cint): void {.cdecl.} =
  let inst = cast[VirtualQIdentityProxyModel](fcQIdentityProxyModel_vdata(self))
  let slotval1 = column
  let slotval2 = cint(order)
  inst.sort(slotval1, slotval2)

method span*(self: VirtualQIdentityProxyModel, index: gen_qabstractitemmodel_types.QModelIndex): gen_qsize_types.QSize {.base.} =
  QIdentityProxyModelspan(self[], index)
proc cQIdentityProxyModel_method_callback_span(self: pointer, index: pointer): pointer {.cdecl.} =
  let inst = cast[VirtualQIdentityProxyModel](fcQIdentityProxyModel_vdata(self))
  let slotval1 = gen_qabstractitemmodel_types.QModelIndex(h: index, owned: false)
  var virtualReturn = inst.span(slotval1)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

method hasChildren*(self: VirtualQIdentityProxyModel, parent: gen_qabstractitemmodel_types.QModelIndex): bool {.base.} =
  QIdentityProxyModelhasChildren(self[], parent)
proc cQIdentityProxyModel_method_callback_hasChildren(self: pointer, parent: pointer): bool {.cdecl.} =
  let inst = cast[VirtualQIdentityProxyModel](fcQIdentityProxyModel_vdata(self))
  let slotval1 = gen_qabstractitemmodel_types.QModelIndex(h: parent, owned: false)
  var virtualReturn = inst.hasChildren(slotval1)
  virtualReturn

method mimeData*(self: VirtualQIdentityProxyModel, indexes: seq[gen_qabstractitemmodel_types.QModelIndex]): gen_qmimedata_types.QMimeData {.base.} =
  QIdentityProxyModelmimeData(self[], indexes)
proc cQIdentityProxyModel_method_callback_mimeData(self: pointer, indexes: struct_miqt_array): pointer {.cdecl.} =
  let inst = cast[VirtualQIdentityProxyModel](fcQIdentityProxyModel_vdata(self))
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

method canDropMimeData*(self: VirtualQIdentityProxyModel, data: gen_qmimedata_types.QMimeData, action: cint, row: cint, column: cint, parent: gen_qabstractitemmodel_types.QModelIndex): bool {.base.} =
  QIdentityProxyModelcanDropMimeData(self[], data, action, row, column, parent)
proc cQIdentityProxyModel_method_callback_canDropMimeData(self: pointer, data: pointer, action: cint, row: cint, column: cint, parent: pointer): bool {.cdecl.} =
  let inst = cast[VirtualQIdentityProxyModel](fcQIdentityProxyModel_vdata(self))
  let slotval1 = gen_qmimedata_types.QMimeData(h: data, owned: false)
  let slotval2 = cint(action)
  let slotval3 = row
  let slotval4 = column
  let slotval5 = gen_qabstractitemmodel_types.QModelIndex(h: parent, owned: false)
  var virtualReturn = inst.canDropMimeData(slotval1, slotval2, slotval3, slotval4, slotval5)
  virtualReturn

method mimeTypes*(self: VirtualQIdentityProxyModel): seq[string] {.base.} =
  QIdentityProxyModelmimeTypes(self[])
proc cQIdentityProxyModel_method_callback_mimeTypes(self: pointer): struct_miqt_array {.cdecl.} =
  let inst = cast[VirtualQIdentityProxyModel](fcQIdentityProxyModel_vdata(self))
  var virtualReturn = inst.mimeTypes()
  var virtualReturn_CArray = cast[ptr UncheckedArray[struct_miqt_string]](if len(virtualReturn) > 0: c_malloc(c_sizet(sizeof(struct_miqt_string) * len(virtualReturn))) else: nil)
  for i in 0..<len(virtualReturn):
    var virtualReturn_i_copy = cast[cstring](if len(virtualReturn[i]) > 0: c_malloc(csize_t(len(virtualReturn[i]))) else: nil)
    if len(virtualReturn[i]) > 0: copyMem(cast[pointer](virtualReturn_i_copy), addr virtualReturn[i][0], csize_t(len(virtualReturn[i])))
    virtualReturn_CArray[i] = struct_miqt_string(data: virtualReturn_i_copy, len: csize_t(len(virtualReturn[i])))

  struct_miqt_array(len: csize_t(len(virtualReturn)), data: if len(virtualReturn) == 0: nil else: addr(virtualReturn_CArray[0]))

method supportedDragActions*(self: VirtualQIdentityProxyModel): cint {.base.} =
  QIdentityProxyModelsupportedDragActions(self[])
proc cQIdentityProxyModel_method_callback_supportedDragActions(self: pointer): cint {.cdecl.} =
  let inst = cast[VirtualQIdentityProxyModel](fcQIdentityProxyModel_vdata(self))
  var virtualReturn = inst.supportedDragActions()
  cint(virtualReturn)

method supportedDropActions*(self: VirtualQIdentityProxyModel): cint {.base.} =
  QIdentityProxyModelsupportedDropActions(self[])
proc cQIdentityProxyModel_method_callback_supportedDropActions(self: pointer): cint {.cdecl.} =
  let inst = cast[VirtualQIdentityProxyModel](fcQIdentityProxyModel_vdata(self))
  var virtualReturn = inst.supportedDropActions()
  cint(virtualReturn)

method roleNames*(self: VirtualQIdentityProxyModel): Table[cint,seq[byte]] {.base.} =
  QIdentityProxyModelroleNames(self[])
proc cQIdentityProxyModel_method_callback_roleNames(self: pointer): struct_miqt_map {.cdecl.} =
  let inst = cast[VirtualQIdentityProxyModel](fcQIdentityProxyModel_vdata(self))
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

method multiData*(self: VirtualQIdentityProxyModel, index: gen_qabstractitemmodel_types.QModelIndex, roleDataSpan: gen_qabstractitemmodel_types.QModelRoleDataSpan): void {.base.} =
  QIdentityProxyModelmultiData(self[], index, roleDataSpan)
proc cQIdentityProxyModel_method_callback_multiData(self: pointer, index: pointer, roleDataSpan: pointer): void {.cdecl.} =
  let inst = cast[VirtualQIdentityProxyModel](fcQIdentityProxyModel_vdata(self))
  let slotval1 = gen_qabstractitemmodel_types.QModelIndex(h: index, owned: false)
  let slotval2 = gen_qabstractitemmodel_types.QModelRoleDataSpan(h: roleDataSpan, owned: true)
  inst.multiData(slotval1, slotval2)

method resetInternalData*(self: VirtualQIdentityProxyModel): void {.base.} =
  QIdentityProxyModelresetInternalData(self[])
proc cQIdentityProxyModel_method_callback_resetInternalData(self: pointer): void {.cdecl.} =
  let inst = cast[VirtualQIdentityProxyModel](fcQIdentityProxyModel_vdata(self))
  inst.resetInternalData()

method event*(self: VirtualQIdentityProxyModel, event: gen_qcoreevent_types.QEvent): bool {.base.} =
  QIdentityProxyModelevent(self[], event)
proc cQIdentityProxyModel_method_callback_event(self: pointer, event: pointer): bool {.cdecl.} =
  let inst = cast[VirtualQIdentityProxyModel](fcQIdentityProxyModel_vdata(self))
  let slotval1 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  var virtualReturn = inst.event(slotval1)
  virtualReturn

method eventFilter*(self: VirtualQIdentityProxyModel, watched: gen_qobject_types.QObject, event: gen_qcoreevent_types.QEvent): bool {.base.} =
  QIdentityProxyModeleventFilter(self[], watched, event)
proc cQIdentityProxyModel_method_callback_eventFilter(self: pointer, watched: pointer, event: pointer): bool {.cdecl.} =
  let inst = cast[VirtualQIdentityProxyModel](fcQIdentityProxyModel_vdata(self))
  let slotval1 = gen_qobject_types.QObject(h: watched, owned: false)
  let slotval2 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  var virtualReturn = inst.eventFilter(slotval1, slotval2)
  virtualReturn

method timerEvent*(self: VirtualQIdentityProxyModel, event: gen_qcoreevent_types.QTimerEvent): void {.base.} =
  QIdentityProxyModeltimerEvent(self[], event)
proc cQIdentityProxyModel_method_callback_timerEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQIdentityProxyModel](fcQIdentityProxyModel_vdata(self))
  let slotval1 = gen_qcoreevent_types.QTimerEvent(h: event, owned: false)
  inst.timerEvent(slotval1)

method childEvent*(self: VirtualQIdentityProxyModel, event: gen_qcoreevent_types.QChildEvent): void {.base.} =
  QIdentityProxyModelchildEvent(self[], event)
proc cQIdentityProxyModel_method_callback_childEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQIdentityProxyModel](fcQIdentityProxyModel_vdata(self))
  let slotval1 = gen_qcoreevent_types.QChildEvent(h: event, owned: false)
  inst.childEvent(slotval1)

method customEvent*(self: VirtualQIdentityProxyModel, event: gen_qcoreevent_types.QEvent): void {.base.} =
  QIdentityProxyModelcustomEvent(self[], event)
proc cQIdentityProxyModel_method_callback_customEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQIdentityProxyModel](fcQIdentityProxyModel_vdata(self))
  let slotval1 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  inst.customEvent(slotval1)

method connectNotify*(self: VirtualQIdentityProxyModel, signal: gen_qmetaobject_types.QMetaMethod): void {.base.} =
  QIdentityProxyModelconnectNotify(self[], signal)
proc cQIdentityProxyModel_method_callback_connectNotify(self: pointer, signal: pointer): void {.cdecl.} =
  let inst = cast[VirtualQIdentityProxyModel](fcQIdentityProxyModel_vdata(self))
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal, owned: false)
  inst.connectNotify(slotval1)

method disconnectNotify*(self: VirtualQIdentityProxyModel, signal: gen_qmetaobject_types.QMetaMethod): void {.base.} =
  QIdentityProxyModeldisconnectNotify(self[], signal)
proc cQIdentityProxyModel_method_callback_disconnectNotify(self: pointer, signal: pointer): void {.cdecl.} =
  let inst = cast[VirtualQIdentityProxyModel](fcQIdentityProxyModel_vdata(self))
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal, owned: false)
  inst.disconnectNotify(slotval1)

proc createSourceIndex*(self: gen_qidentityproxymodel_types.QIdentityProxyModel, row: cint, col: cint, internalPtr: pointer): gen_qabstractitemmodel_types.QModelIndex =
  gen_qabstractitemmodel_types.QModelIndex(h: fcQIdentityProxyModel_protectedbase_createSourceIndex(self.h, row, col, internalPtr), owned: true)

proc createIndex*(self: gen_qidentityproxymodel_types.QIdentityProxyModel, row: cint, column: cint): gen_qabstractitemmodel_types.QModelIndex =
  gen_qabstractitemmodel_types.QModelIndex(h: fcQIdentityProxyModel_protectedbase_createIndex(self.h, row, column), owned: true)

proc encodeData*(self: gen_qidentityproxymodel_types.QIdentityProxyModel, indexes: seq[gen_qabstractitemmodel_types.QModelIndex], stream: gen_qdatastream_types.QDataStream): void =
  var indexes_CArray = newSeq[pointer](len(indexes))
  for i in 0..<len(indexes):
    indexes_CArray[i] = indexes[i].h

  fcQIdentityProxyModel_protectedbase_encodeData(self.h, struct_miqt_array(len: csize_t(len(indexes)), data: if len(indexes) == 0: nil else: addr(indexes_CArray[0])), stream.h)

proc decodeData*(self: gen_qidentityproxymodel_types.QIdentityProxyModel, row: cint, column: cint, parent: gen_qabstractitemmodel_types.QModelIndex, stream: gen_qdatastream_types.QDataStream): bool =
  fcQIdentityProxyModel_protectedbase_decodeData(self.h, row, column, parent.h, stream.h)

proc beginInsertRows*(self: gen_qidentityproxymodel_types.QIdentityProxyModel, parent: gen_qabstractitemmodel_types.QModelIndex, first: cint, last: cint): void =
  fcQIdentityProxyModel_protectedbase_beginInsertRows(self.h, parent.h, first, last)

proc endInsertRows*(self: gen_qidentityproxymodel_types.QIdentityProxyModel): void =
  fcQIdentityProxyModel_protectedbase_endInsertRows(self.h)

proc beginRemoveRows*(self: gen_qidentityproxymodel_types.QIdentityProxyModel, parent: gen_qabstractitemmodel_types.QModelIndex, first: cint, last: cint): void =
  fcQIdentityProxyModel_protectedbase_beginRemoveRows(self.h, parent.h, first, last)

proc endRemoveRows*(self: gen_qidentityproxymodel_types.QIdentityProxyModel): void =
  fcQIdentityProxyModel_protectedbase_endRemoveRows(self.h)

proc beginMoveRows*(self: gen_qidentityproxymodel_types.QIdentityProxyModel, sourceParent: gen_qabstractitemmodel_types.QModelIndex, sourceFirst: cint, sourceLast: cint, destinationParent: gen_qabstractitemmodel_types.QModelIndex, destinationRow: cint): bool =
  fcQIdentityProxyModel_protectedbase_beginMoveRows(self.h, sourceParent.h, sourceFirst, sourceLast, destinationParent.h, destinationRow)

proc endMoveRows*(self: gen_qidentityproxymodel_types.QIdentityProxyModel): void =
  fcQIdentityProxyModel_protectedbase_endMoveRows(self.h)

proc beginInsertColumns*(self: gen_qidentityproxymodel_types.QIdentityProxyModel, parent: gen_qabstractitemmodel_types.QModelIndex, first: cint, last: cint): void =
  fcQIdentityProxyModel_protectedbase_beginInsertColumns(self.h, parent.h, first, last)

proc endInsertColumns*(self: gen_qidentityproxymodel_types.QIdentityProxyModel): void =
  fcQIdentityProxyModel_protectedbase_endInsertColumns(self.h)

proc beginRemoveColumns*(self: gen_qidentityproxymodel_types.QIdentityProxyModel, parent: gen_qabstractitemmodel_types.QModelIndex, first: cint, last: cint): void =
  fcQIdentityProxyModel_protectedbase_beginRemoveColumns(self.h, parent.h, first, last)

proc endRemoveColumns*(self: gen_qidentityproxymodel_types.QIdentityProxyModel): void =
  fcQIdentityProxyModel_protectedbase_endRemoveColumns(self.h)

proc beginMoveColumns*(self: gen_qidentityproxymodel_types.QIdentityProxyModel, sourceParent: gen_qabstractitemmodel_types.QModelIndex, sourceFirst: cint, sourceLast: cint, destinationParent: gen_qabstractitemmodel_types.QModelIndex, destinationColumn: cint): bool =
  fcQIdentityProxyModel_protectedbase_beginMoveColumns(self.h, sourceParent.h, sourceFirst, sourceLast, destinationParent.h, destinationColumn)

proc endMoveColumns*(self: gen_qidentityproxymodel_types.QIdentityProxyModel): void =
  fcQIdentityProxyModel_protectedbase_endMoveColumns(self.h)

proc beginResetModel*(self: gen_qidentityproxymodel_types.QIdentityProxyModel): void =
  fcQIdentityProxyModel_protectedbase_beginResetModel(self.h)

proc endResetModel*(self: gen_qidentityproxymodel_types.QIdentityProxyModel): void =
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

proc persistentIndexList*(self: gen_qidentityproxymodel_types.QIdentityProxyModel): seq[gen_qabstractitemmodel_types.QModelIndex] =
  var v_ma = fcQIdentityProxyModel_protectedbase_persistentIndexList(self.h)
  var vx_ret = newSeq[gen_qabstractitemmodel_types.QModelIndex](int(v_ma.len))
  let v_outCast = cast[ptr UncheckedArray[pointer]](v_ma.data)
  for i in 0 ..< v_ma.len:
    vx_ret[i] = gen_qabstractitemmodel_types.QModelIndex(h: v_outCast[i], owned: true)
  c_free(v_ma.data)
  vx_ret

proc sender*(self: gen_qidentityproxymodel_types.QIdentityProxyModel): gen_qobject_types.QObject =
  gen_qobject_types.QObject(h: fcQIdentityProxyModel_protectedbase_sender(self.h), owned: false)

proc senderSignalIndex*(self: gen_qidentityproxymodel_types.QIdentityProxyModel): cint =
  fcQIdentityProxyModel_protectedbase_senderSignalIndex(self.h)

proc receivers*(self: gen_qidentityproxymodel_types.QIdentityProxyModel, signal: cstring): cint =
  fcQIdentityProxyModel_protectedbase_receivers(self.h, signal)

proc isSignalConnected*(self: gen_qidentityproxymodel_types.QIdentityProxyModel, signal: gen_qmetaobject_types.QMetaMethod): bool =
  fcQIdentityProxyModel_protectedbase_isSignalConnected(self.h, signal.h)

proc create*(T: type gen_qidentityproxymodel_types.QIdentityProxyModel,
    vtbl: ref QIdentityProxyModelVTable = nil): gen_qidentityproxymodel_types.QIdentityProxyModel =
  let vtbl = if vtbl == nil: new QIdentityProxyModelVTable else: vtbl
  GC_ref(vtbl)
  vtbl[].vtbl.destructor = proc(self: pointer) {.cdecl.} =
    let vtbl = cast[ref QIdentityProxyModelVTable](fcQIdentityProxyModel_vdata(self))
    GC_unref(vtbl)
  if not isNil(vtbl[].metaObject):
    vtbl[].vtbl.metaObject = cQIdentityProxyModel_vtable_callback_metaObject
  if not isNil(vtbl[].metacast):
    vtbl[].vtbl.metacast = cQIdentityProxyModel_vtable_callback_metacast
  if not isNil(vtbl[].metacall):
    vtbl[].vtbl.metacall = cQIdentityProxyModel_vtable_callback_metacall
  if not isNil(vtbl[].columnCount):
    vtbl[].vtbl.columnCount = cQIdentityProxyModel_vtable_callback_columnCount
  if not isNil(vtbl[].index):
    vtbl[].vtbl.index = cQIdentityProxyModel_vtable_callback_index
  if not isNil(vtbl[].mapFromSource):
    vtbl[].vtbl.mapFromSource = cQIdentityProxyModel_vtable_callback_mapFromSource
  if not isNil(vtbl[].mapToSource):
    vtbl[].vtbl.mapToSource = cQIdentityProxyModel_vtable_callback_mapToSource
  if not isNil(vtbl[].parent):
    vtbl[].vtbl.parent = cQIdentityProxyModel_vtable_callback_parent
  if not isNil(vtbl[].rowCount):
    vtbl[].vtbl.rowCount = cQIdentityProxyModel_vtable_callback_rowCount
  if not isNil(vtbl[].headerData):
    vtbl[].vtbl.headerData = cQIdentityProxyModel_vtable_callback_headerData
  if not isNil(vtbl[].dropMimeData):
    vtbl[].vtbl.dropMimeData = cQIdentityProxyModel_vtable_callback_dropMimeData
  if not isNil(vtbl[].sibling):
    vtbl[].vtbl.sibling = cQIdentityProxyModel_vtable_callback_sibling
  if not isNil(vtbl[].mapSelectionFromSource):
    vtbl[].vtbl.mapSelectionFromSource = cQIdentityProxyModel_vtable_callback_mapSelectionFromSource
  if not isNil(vtbl[].mapSelectionToSource):
    vtbl[].vtbl.mapSelectionToSource = cQIdentityProxyModel_vtable_callback_mapSelectionToSource
  if not isNil(vtbl[].match):
    vtbl[].vtbl.match = cQIdentityProxyModel_vtable_callback_match
  if not isNil(vtbl[].setSourceModel):
    vtbl[].vtbl.setSourceModel = cQIdentityProxyModel_vtable_callback_setSourceModel
  if not isNil(vtbl[].insertColumns):
    vtbl[].vtbl.insertColumns = cQIdentityProxyModel_vtable_callback_insertColumns
  if not isNil(vtbl[].insertRows):
    vtbl[].vtbl.insertRows = cQIdentityProxyModel_vtable_callback_insertRows
  if not isNil(vtbl[].removeColumns):
    vtbl[].vtbl.removeColumns = cQIdentityProxyModel_vtable_callback_removeColumns
  if not isNil(vtbl[].removeRows):
    vtbl[].vtbl.removeRows = cQIdentityProxyModel_vtable_callback_removeRows
  if not isNil(vtbl[].moveRows):
    vtbl[].vtbl.moveRows = cQIdentityProxyModel_vtable_callback_moveRows
  if not isNil(vtbl[].moveColumns):
    vtbl[].vtbl.moveColumns = cQIdentityProxyModel_vtable_callback_moveColumns
  if not isNil(vtbl[].submit):
    vtbl[].vtbl.submit = cQIdentityProxyModel_vtable_callback_submit
  if not isNil(vtbl[].revert):
    vtbl[].vtbl.revert = cQIdentityProxyModel_vtable_callback_revert
  if not isNil(vtbl[].data):
    vtbl[].vtbl.data = cQIdentityProxyModel_vtable_callback_data
  if not isNil(vtbl[].itemData):
    vtbl[].vtbl.itemData = cQIdentityProxyModel_vtable_callback_itemData
  if not isNil(vtbl[].flags):
    vtbl[].vtbl.flags = cQIdentityProxyModel_vtable_callback_flags
  if not isNil(vtbl[].setData):
    vtbl[].vtbl.setData = cQIdentityProxyModel_vtable_callback_setData
  if not isNil(vtbl[].setItemData):
    vtbl[].vtbl.setItemData = cQIdentityProxyModel_vtable_callback_setItemData
  if not isNil(vtbl[].setHeaderData):
    vtbl[].vtbl.setHeaderData = cQIdentityProxyModel_vtable_callback_setHeaderData
  if not isNil(vtbl[].clearItemData):
    vtbl[].vtbl.clearItemData = cQIdentityProxyModel_vtable_callback_clearItemData
  if not isNil(vtbl[].buddy):
    vtbl[].vtbl.buddy = cQIdentityProxyModel_vtable_callback_buddy
  if not isNil(vtbl[].canFetchMore):
    vtbl[].vtbl.canFetchMore = cQIdentityProxyModel_vtable_callback_canFetchMore
  if not isNil(vtbl[].fetchMore):
    vtbl[].vtbl.fetchMore = cQIdentityProxyModel_vtable_callback_fetchMore
  if not isNil(vtbl[].sort):
    vtbl[].vtbl.sort = cQIdentityProxyModel_vtable_callback_sort
  if not isNil(vtbl[].span):
    vtbl[].vtbl.span = cQIdentityProxyModel_vtable_callback_span
  if not isNil(vtbl[].hasChildren):
    vtbl[].vtbl.hasChildren = cQIdentityProxyModel_vtable_callback_hasChildren
  if not isNil(vtbl[].mimeData):
    vtbl[].vtbl.mimeData = cQIdentityProxyModel_vtable_callback_mimeData
  if not isNil(vtbl[].canDropMimeData):
    vtbl[].vtbl.canDropMimeData = cQIdentityProxyModel_vtable_callback_canDropMimeData
  if not isNil(vtbl[].mimeTypes):
    vtbl[].vtbl.mimeTypes = cQIdentityProxyModel_vtable_callback_mimeTypes
  if not isNil(vtbl[].supportedDragActions):
    vtbl[].vtbl.supportedDragActions = cQIdentityProxyModel_vtable_callback_supportedDragActions
  if not isNil(vtbl[].supportedDropActions):
    vtbl[].vtbl.supportedDropActions = cQIdentityProxyModel_vtable_callback_supportedDropActions
  if not isNil(vtbl[].roleNames):
    vtbl[].vtbl.roleNames = cQIdentityProxyModel_vtable_callback_roleNames
  if not isNil(vtbl[].multiData):
    vtbl[].vtbl.multiData = cQIdentityProxyModel_vtable_callback_multiData
  if not isNil(vtbl[].resetInternalData):
    vtbl[].vtbl.resetInternalData = cQIdentityProxyModel_vtable_callback_resetInternalData
  if not isNil(vtbl[].event):
    vtbl[].vtbl.event = cQIdentityProxyModel_vtable_callback_event
  if not isNil(vtbl[].eventFilter):
    vtbl[].vtbl.eventFilter = cQIdentityProxyModel_vtable_callback_eventFilter
  if not isNil(vtbl[].timerEvent):
    vtbl[].vtbl.timerEvent = cQIdentityProxyModel_vtable_callback_timerEvent
  if not isNil(vtbl[].childEvent):
    vtbl[].vtbl.childEvent = cQIdentityProxyModel_vtable_callback_childEvent
  if not isNil(vtbl[].customEvent):
    vtbl[].vtbl.customEvent = cQIdentityProxyModel_vtable_callback_customEvent
  if not isNil(vtbl[].connectNotify):
    vtbl[].vtbl.connectNotify = cQIdentityProxyModel_vtable_callback_connectNotify
  if not isNil(vtbl[].disconnectNotify):
    vtbl[].vtbl.disconnectNotify = cQIdentityProxyModel_vtable_callback_disconnectNotify
  gen_qidentityproxymodel_types.QIdentityProxyModel(h: fcQIdentityProxyModel_new(addr(vtbl[].vtbl), addr(vtbl[])), owned: true)

proc create*(T: type gen_qidentityproxymodel_types.QIdentityProxyModel,
    parent: gen_qobject_types.QObject,
    vtbl: ref QIdentityProxyModelVTable = nil): gen_qidentityproxymodel_types.QIdentityProxyModel =
  let vtbl = if vtbl == nil: new QIdentityProxyModelVTable else: vtbl
  GC_ref(vtbl)
  vtbl[].vtbl.destructor = proc(self: pointer) {.cdecl.} =
    let vtbl = cast[ref QIdentityProxyModelVTable](fcQIdentityProxyModel_vdata(self))
    GC_unref(vtbl)
  if not isNil(vtbl[].metaObject):
    vtbl[].vtbl.metaObject = cQIdentityProxyModel_vtable_callback_metaObject
  if not isNil(vtbl[].metacast):
    vtbl[].vtbl.metacast = cQIdentityProxyModel_vtable_callback_metacast
  if not isNil(vtbl[].metacall):
    vtbl[].vtbl.metacall = cQIdentityProxyModel_vtable_callback_metacall
  if not isNil(vtbl[].columnCount):
    vtbl[].vtbl.columnCount = cQIdentityProxyModel_vtable_callback_columnCount
  if not isNil(vtbl[].index):
    vtbl[].vtbl.index = cQIdentityProxyModel_vtable_callback_index
  if not isNil(vtbl[].mapFromSource):
    vtbl[].vtbl.mapFromSource = cQIdentityProxyModel_vtable_callback_mapFromSource
  if not isNil(vtbl[].mapToSource):
    vtbl[].vtbl.mapToSource = cQIdentityProxyModel_vtable_callback_mapToSource
  if not isNil(vtbl[].parent):
    vtbl[].vtbl.parent = cQIdentityProxyModel_vtable_callback_parent
  if not isNil(vtbl[].rowCount):
    vtbl[].vtbl.rowCount = cQIdentityProxyModel_vtable_callback_rowCount
  if not isNil(vtbl[].headerData):
    vtbl[].vtbl.headerData = cQIdentityProxyModel_vtable_callback_headerData
  if not isNil(vtbl[].dropMimeData):
    vtbl[].vtbl.dropMimeData = cQIdentityProxyModel_vtable_callback_dropMimeData
  if not isNil(vtbl[].sibling):
    vtbl[].vtbl.sibling = cQIdentityProxyModel_vtable_callback_sibling
  if not isNil(vtbl[].mapSelectionFromSource):
    vtbl[].vtbl.mapSelectionFromSource = cQIdentityProxyModel_vtable_callback_mapSelectionFromSource
  if not isNil(vtbl[].mapSelectionToSource):
    vtbl[].vtbl.mapSelectionToSource = cQIdentityProxyModel_vtable_callback_mapSelectionToSource
  if not isNil(vtbl[].match):
    vtbl[].vtbl.match = cQIdentityProxyModel_vtable_callback_match
  if not isNil(vtbl[].setSourceModel):
    vtbl[].vtbl.setSourceModel = cQIdentityProxyModel_vtable_callback_setSourceModel
  if not isNil(vtbl[].insertColumns):
    vtbl[].vtbl.insertColumns = cQIdentityProxyModel_vtable_callback_insertColumns
  if not isNil(vtbl[].insertRows):
    vtbl[].vtbl.insertRows = cQIdentityProxyModel_vtable_callback_insertRows
  if not isNil(vtbl[].removeColumns):
    vtbl[].vtbl.removeColumns = cQIdentityProxyModel_vtable_callback_removeColumns
  if not isNil(vtbl[].removeRows):
    vtbl[].vtbl.removeRows = cQIdentityProxyModel_vtable_callback_removeRows
  if not isNil(vtbl[].moveRows):
    vtbl[].vtbl.moveRows = cQIdentityProxyModel_vtable_callback_moveRows
  if not isNil(vtbl[].moveColumns):
    vtbl[].vtbl.moveColumns = cQIdentityProxyModel_vtable_callback_moveColumns
  if not isNil(vtbl[].submit):
    vtbl[].vtbl.submit = cQIdentityProxyModel_vtable_callback_submit
  if not isNil(vtbl[].revert):
    vtbl[].vtbl.revert = cQIdentityProxyModel_vtable_callback_revert
  if not isNil(vtbl[].data):
    vtbl[].vtbl.data = cQIdentityProxyModel_vtable_callback_data
  if not isNil(vtbl[].itemData):
    vtbl[].vtbl.itemData = cQIdentityProxyModel_vtable_callback_itemData
  if not isNil(vtbl[].flags):
    vtbl[].vtbl.flags = cQIdentityProxyModel_vtable_callback_flags
  if not isNil(vtbl[].setData):
    vtbl[].vtbl.setData = cQIdentityProxyModel_vtable_callback_setData
  if not isNil(vtbl[].setItemData):
    vtbl[].vtbl.setItemData = cQIdentityProxyModel_vtable_callback_setItemData
  if not isNil(vtbl[].setHeaderData):
    vtbl[].vtbl.setHeaderData = cQIdentityProxyModel_vtable_callback_setHeaderData
  if not isNil(vtbl[].clearItemData):
    vtbl[].vtbl.clearItemData = cQIdentityProxyModel_vtable_callback_clearItemData
  if not isNil(vtbl[].buddy):
    vtbl[].vtbl.buddy = cQIdentityProxyModel_vtable_callback_buddy
  if not isNil(vtbl[].canFetchMore):
    vtbl[].vtbl.canFetchMore = cQIdentityProxyModel_vtable_callback_canFetchMore
  if not isNil(vtbl[].fetchMore):
    vtbl[].vtbl.fetchMore = cQIdentityProxyModel_vtable_callback_fetchMore
  if not isNil(vtbl[].sort):
    vtbl[].vtbl.sort = cQIdentityProxyModel_vtable_callback_sort
  if not isNil(vtbl[].span):
    vtbl[].vtbl.span = cQIdentityProxyModel_vtable_callback_span
  if not isNil(vtbl[].hasChildren):
    vtbl[].vtbl.hasChildren = cQIdentityProxyModel_vtable_callback_hasChildren
  if not isNil(vtbl[].mimeData):
    vtbl[].vtbl.mimeData = cQIdentityProxyModel_vtable_callback_mimeData
  if not isNil(vtbl[].canDropMimeData):
    vtbl[].vtbl.canDropMimeData = cQIdentityProxyModel_vtable_callback_canDropMimeData
  if not isNil(vtbl[].mimeTypes):
    vtbl[].vtbl.mimeTypes = cQIdentityProxyModel_vtable_callback_mimeTypes
  if not isNil(vtbl[].supportedDragActions):
    vtbl[].vtbl.supportedDragActions = cQIdentityProxyModel_vtable_callback_supportedDragActions
  if not isNil(vtbl[].supportedDropActions):
    vtbl[].vtbl.supportedDropActions = cQIdentityProxyModel_vtable_callback_supportedDropActions
  if not isNil(vtbl[].roleNames):
    vtbl[].vtbl.roleNames = cQIdentityProxyModel_vtable_callback_roleNames
  if not isNil(vtbl[].multiData):
    vtbl[].vtbl.multiData = cQIdentityProxyModel_vtable_callback_multiData
  if not isNil(vtbl[].resetInternalData):
    vtbl[].vtbl.resetInternalData = cQIdentityProxyModel_vtable_callback_resetInternalData
  if not isNil(vtbl[].event):
    vtbl[].vtbl.event = cQIdentityProxyModel_vtable_callback_event
  if not isNil(vtbl[].eventFilter):
    vtbl[].vtbl.eventFilter = cQIdentityProxyModel_vtable_callback_eventFilter
  if not isNil(vtbl[].timerEvent):
    vtbl[].vtbl.timerEvent = cQIdentityProxyModel_vtable_callback_timerEvent
  if not isNil(vtbl[].childEvent):
    vtbl[].vtbl.childEvent = cQIdentityProxyModel_vtable_callback_childEvent
  if not isNil(vtbl[].customEvent):
    vtbl[].vtbl.customEvent = cQIdentityProxyModel_vtable_callback_customEvent
  if not isNil(vtbl[].connectNotify):
    vtbl[].vtbl.connectNotify = cQIdentityProxyModel_vtable_callback_connectNotify
  if not isNil(vtbl[].disconnectNotify):
    vtbl[].vtbl.disconnectNotify = cQIdentityProxyModel_vtable_callback_disconnectNotify
  gen_qidentityproxymodel_types.QIdentityProxyModel(h: fcQIdentityProxyModel_new2(addr(vtbl[].vtbl), addr(vtbl[]), parent.h), owned: true)

const cQIdentityProxyModel_mvtbl = cQIdentityProxyModelVTable(
  destructor: proc(self: pointer) {.cdecl.} =
    let inst = cast[ptr typeof(VirtualQIdentityProxyModel()[])](self.fcQIdentityProxyModel_vtbl())
    inst[].h = nil
    inst[].owned = false,
  metaObject: cQIdentityProxyModel_method_callback_metaObject,
  metacast: cQIdentityProxyModel_method_callback_metacast,
  metacall: cQIdentityProxyModel_method_callback_metacall,
  columnCount: cQIdentityProxyModel_method_callback_columnCount,
  index: cQIdentityProxyModel_method_callback_index,
  mapFromSource: cQIdentityProxyModel_method_callback_mapFromSource,
  mapToSource: cQIdentityProxyModel_method_callback_mapToSource,
  parent: cQIdentityProxyModel_method_callback_parent,
  rowCount: cQIdentityProxyModel_method_callback_rowCount,
  headerData: cQIdentityProxyModel_method_callback_headerData,
  dropMimeData: cQIdentityProxyModel_method_callback_dropMimeData,
  sibling: cQIdentityProxyModel_method_callback_sibling,
  mapSelectionFromSource: cQIdentityProxyModel_method_callback_mapSelectionFromSource,
  mapSelectionToSource: cQIdentityProxyModel_method_callback_mapSelectionToSource,
  match: cQIdentityProxyModel_method_callback_match,
  setSourceModel: cQIdentityProxyModel_method_callback_setSourceModel,
  insertColumns: cQIdentityProxyModel_method_callback_insertColumns,
  insertRows: cQIdentityProxyModel_method_callback_insertRows,
  removeColumns: cQIdentityProxyModel_method_callback_removeColumns,
  removeRows: cQIdentityProxyModel_method_callback_removeRows,
  moveRows: cQIdentityProxyModel_method_callback_moveRows,
  moveColumns: cQIdentityProxyModel_method_callback_moveColumns,
  submit: cQIdentityProxyModel_method_callback_submit,
  revert: cQIdentityProxyModel_method_callback_revert,
  data: cQIdentityProxyModel_method_callback_data,
  itemData: cQIdentityProxyModel_method_callback_itemData,
  flags: cQIdentityProxyModel_method_callback_flags,
  setData: cQIdentityProxyModel_method_callback_setData,
  setItemData: cQIdentityProxyModel_method_callback_setItemData,
  setHeaderData: cQIdentityProxyModel_method_callback_setHeaderData,
  clearItemData: cQIdentityProxyModel_method_callback_clearItemData,
  buddy: cQIdentityProxyModel_method_callback_buddy,
  canFetchMore: cQIdentityProxyModel_method_callback_canFetchMore,
  fetchMore: cQIdentityProxyModel_method_callback_fetchMore,
  sort: cQIdentityProxyModel_method_callback_sort,
  span: cQIdentityProxyModel_method_callback_span,
  hasChildren: cQIdentityProxyModel_method_callback_hasChildren,
  mimeData: cQIdentityProxyModel_method_callback_mimeData,
  canDropMimeData: cQIdentityProxyModel_method_callback_canDropMimeData,
  mimeTypes: cQIdentityProxyModel_method_callback_mimeTypes,
  supportedDragActions: cQIdentityProxyModel_method_callback_supportedDragActions,
  supportedDropActions: cQIdentityProxyModel_method_callback_supportedDropActions,
  roleNames: cQIdentityProxyModel_method_callback_roleNames,
  multiData: cQIdentityProxyModel_method_callback_multiData,
  resetInternalData: cQIdentityProxyModel_method_callback_resetInternalData,
  event: cQIdentityProxyModel_method_callback_event,
  eventFilter: cQIdentityProxyModel_method_callback_eventFilter,
  timerEvent: cQIdentityProxyModel_method_callback_timerEvent,
  childEvent: cQIdentityProxyModel_method_callback_childEvent,
  customEvent: cQIdentityProxyModel_method_callback_customEvent,
  connectNotify: cQIdentityProxyModel_method_callback_connectNotify,
  disconnectNotify: cQIdentityProxyModel_method_callback_disconnectNotify,
)
proc create*(T: type gen_qidentityproxymodel_types.QIdentityProxyModel,
    inst: VirtualQIdentityProxyModel) =
  if inst[].h != nil: delete(move(inst[]))
  inst[].h = fcQIdentityProxyModel_new(addr(cQIdentityProxyModel_mvtbl), addr(inst[]))
  inst[].owned = true

proc create*(T: type gen_qidentityproxymodel_types.QIdentityProxyModel,
    parent: gen_qobject_types.QObject,
    inst: VirtualQIdentityProxyModel) =
  if inst[].h != nil: delete(move(inst[]))
  inst[].h = fcQIdentityProxyModel_new2(addr(cQIdentityProxyModel_mvtbl), addr(inst[]), parent.h)
  inst[].owned = true

proc staticMetaObject*(_: type gen_qidentityproxymodel_types.QIdentityProxyModel): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQIdentityProxyModel_staticMetaObject())
