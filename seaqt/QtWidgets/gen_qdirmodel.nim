import ./qtwidgets_pkg

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


{.compile("gen_qdirmodel.cpp", QtWidgetsCFlags).}


type QDirModelRolesEnum* = distinct cint
template FileIconRole*(_: type QDirModelRolesEnum): untyped = 1
template FilePathRole*(_: type QDirModelRolesEnum): untyped = 257
template FileNameRole*(_: type QDirModelRolesEnum): untyped = 258


import ./gen_qdirmodel_types
export gen_qdirmodel_types

import
  ../QtCore/gen_qabstractitemmodel,
  ../QtCore/gen_qcoreevent_types,
  ../QtCore/gen_qdatastream_types,
  ../QtCore/gen_qfileinfo_types,
  ../QtCore/gen_qmetaobject_types,
  ../QtCore/gen_qmimedata_types,
  ../QtCore/gen_qobject_types,
  ../QtCore/gen_qobjectdefs_types,
  ../QtCore/gen_qsize_types,
  ../QtCore/gen_qvariant_types,
  ../QtGui/gen_qicon_types,
  ./gen_qfileiconprovider_types,
  std/tables
export
  gen_qabstractitemmodel,
  gen_qcoreevent_types,
  gen_qdatastream_types,
  gen_qfileinfo_types,
  gen_qmetaobject_types,
  gen_qmimedata_types,
  gen_qobject_types,
  gen_qobjectdefs_types,
  gen_qsize_types,
  gen_qvariant_types,
  gen_qicon_types,
  gen_qfileiconprovider_types

type cQDirModel*{.exportc: "QDirModel", incompleteStruct.} = object

proc fcQDirModel_metaObject(self: pointer): pointer {.importc: "QDirModel_metaObject".}
proc fcQDirModel_metacast(self: pointer, param1: cstring): pointer {.importc: "QDirModel_metacast".}
proc fcQDirModel_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.importc: "QDirModel_metacall".}
proc fcQDirModel_tr(s: cstring): struct_miqt_string {.importc: "QDirModel_tr".}
proc fcQDirModel_trUtf8(s: cstring): struct_miqt_string {.importc: "QDirModel_trUtf8".}
proc fcQDirModel_index(self: pointer, row: cint, column: cint, parent: pointer): pointer {.importc: "QDirModel_index".}
proc fcQDirModel_parent(self: pointer, child: pointer): pointer {.importc: "QDirModel_parent".}
proc fcQDirModel_rowCount(self: pointer, parent: pointer): cint {.importc: "QDirModel_rowCount".}
proc fcQDirModel_columnCount(self: pointer, parent: pointer): cint {.importc: "QDirModel_columnCount".}
proc fcQDirModel_data(self: pointer, index: pointer, role: cint): pointer {.importc: "QDirModel_data".}
proc fcQDirModel_setData(self: pointer, index: pointer, value: pointer, role: cint): bool {.importc: "QDirModel_setData".}
proc fcQDirModel_headerData(self: pointer, section: cint, orientation: cint, role: cint): pointer {.importc: "QDirModel_headerData".}
proc fcQDirModel_hasChildren(self: pointer, index: pointer): bool {.importc: "QDirModel_hasChildren".}
proc fcQDirModel_flags(self: pointer, index: pointer): cint {.importc: "QDirModel_flags".}
proc fcQDirModel_sort(self: pointer, column: cint, order: cint): void {.importc: "QDirModel_sort".}
proc fcQDirModel_mimeTypes(self: pointer): struct_miqt_array {.importc: "QDirModel_mimeTypes".}
proc fcQDirModel_mimeData(self: pointer, indexes: struct_miqt_array): pointer {.importc: "QDirModel_mimeData".}
proc fcQDirModel_dropMimeData(self: pointer, data: pointer, action: cint, row: cint, column: cint, parent: pointer): bool {.importc: "QDirModel_dropMimeData".}
proc fcQDirModel_supportedDropActions(self: pointer): cint {.importc: "QDirModel_supportedDropActions".}
proc fcQDirModel_setIconProvider(self: pointer, provider: pointer): void {.importc: "QDirModel_setIconProvider".}
proc fcQDirModel_iconProvider(self: pointer): pointer {.importc: "QDirModel_iconProvider".}
proc fcQDirModel_setNameFilters(self: pointer, filters: struct_miqt_array): void {.importc: "QDirModel_setNameFilters".}
proc fcQDirModel_nameFilters(self: pointer): struct_miqt_array {.importc: "QDirModel_nameFilters".}
proc fcQDirModel_setFilter(self: pointer, filters: cint): void {.importc: "QDirModel_setFilter".}
proc fcQDirModel_filter(self: pointer): cint {.importc: "QDirModel_filter".}
proc fcQDirModel_setSorting(self: pointer, sort: cint): void {.importc: "QDirModel_setSorting".}
proc fcQDirModel_sorting(self: pointer): cint {.importc: "QDirModel_sorting".}
proc fcQDirModel_setResolveSymlinks(self: pointer, enable: bool): void {.importc: "QDirModel_setResolveSymlinks".}
proc fcQDirModel_resolveSymlinks(self: pointer): bool {.importc: "QDirModel_resolveSymlinks".}
proc fcQDirModel_setReadOnly(self: pointer, enable: bool): void {.importc: "QDirModel_setReadOnly".}
proc fcQDirModel_isReadOnly(self: pointer): bool {.importc: "QDirModel_isReadOnly".}
proc fcQDirModel_setLazyChildCount(self: pointer, enable: bool): void {.importc: "QDirModel_setLazyChildCount".}
proc fcQDirModel_lazyChildCount(self: pointer): bool {.importc: "QDirModel_lazyChildCount".}
proc fcQDirModel_indexWithPath(self: pointer, path: struct_miqt_string): pointer {.importc: "QDirModel_indexWithPath".}
proc fcQDirModel_isDir(self: pointer, index: pointer): bool {.importc: "QDirModel_isDir".}
proc fcQDirModel_mkdir(self: pointer, parent: pointer, name: struct_miqt_string): pointer {.importc: "QDirModel_mkdir".}
proc fcQDirModel_rmdir(self: pointer, index: pointer): bool {.importc: "QDirModel_rmdir".}
proc fcQDirModel_remove(self: pointer, index: pointer): bool {.importc: "QDirModel_remove".}
proc fcQDirModel_filePath(self: pointer, index: pointer): struct_miqt_string {.importc: "QDirModel_filePath".}
proc fcQDirModel_fileName(self: pointer, index: pointer): struct_miqt_string {.importc: "QDirModel_fileName".}
proc fcQDirModel_fileIcon(self: pointer, index: pointer): pointer {.importc: "QDirModel_fileIcon".}
proc fcQDirModel_fileInfo(self: pointer, index: pointer): pointer {.importc: "QDirModel_fileInfo".}
proc fcQDirModel_refresh(self: pointer): void {.importc: "QDirModel_refresh".}
proc fcQDirModel_tr2(s: cstring, c: cstring): struct_miqt_string {.importc: "QDirModel_tr2".}
proc fcQDirModel_tr3(s: cstring, c: cstring, n: cint): struct_miqt_string {.importc: "QDirModel_tr3".}
proc fcQDirModel_trUtf82(s: cstring, c: cstring): struct_miqt_string {.importc: "QDirModel_trUtf82".}
proc fcQDirModel_trUtf83(s: cstring, c: cstring, n: cint): struct_miqt_string {.importc: "QDirModel_trUtf83".}
proc fcQDirModel_index2(self: pointer, path: struct_miqt_string, column: cint): pointer {.importc: "QDirModel_index2".}
proc fcQDirModel_refresh1(self: pointer, parent: pointer): void {.importc: "QDirModel_refresh1".}
proc fcQDirModel_vtbl(self: pointer): pointer {.importc: "QDirModel_vtbl".}
proc fcQDirModel_vdata(self: pointer): pointer {.importc: "QDirModel_vdata".}

type cQDirModelVTable {.pure.} = object
  destructor*: proc(self: pointer) {.cdecl, raises:[], gcsafe.}
  metaObject*: proc(self: pointer): pointer {.cdecl, raises: [], gcsafe.}
  metacast*: proc(self: pointer, param1: cstring): pointer {.cdecl, raises: [], gcsafe.}
  metacall*: proc(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.cdecl, raises: [], gcsafe.}
  index*: proc(self: pointer, row: cint, column: cint, parent: pointer): pointer {.cdecl, raises: [], gcsafe.}
  parent*: proc(self: pointer, child: pointer): pointer {.cdecl, raises: [], gcsafe.}
  rowCount*: proc(self: pointer, parent: pointer): cint {.cdecl, raises: [], gcsafe.}
  columnCount*: proc(self: pointer, parent: pointer): cint {.cdecl, raises: [], gcsafe.}
  data*: proc(self: pointer, index: pointer, role: cint): pointer {.cdecl, raises: [], gcsafe.}
  setData*: proc(self: pointer, index: pointer, value: pointer, role: cint): bool {.cdecl, raises: [], gcsafe.}
  headerData*: proc(self: pointer, section: cint, orientation: cint, role: cint): pointer {.cdecl, raises: [], gcsafe.}
  hasChildren*: proc(self: pointer, index: pointer): bool {.cdecl, raises: [], gcsafe.}
  flags*: proc(self: pointer, index: pointer): cint {.cdecl, raises: [], gcsafe.}
  sort*: proc(self: pointer, column: cint, order: cint): void {.cdecl, raises: [], gcsafe.}
  mimeTypes*: proc(self: pointer): struct_miqt_array {.cdecl, raises: [], gcsafe.}
  mimeData*: proc(self: pointer, indexes: struct_miqt_array): pointer {.cdecl, raises: [], gcsafe.}
  dropMimeData*: proc(self: pointer, data: pointer, action: cint, row: cint, column: cint, parent: pointer): bool {.cdecl, raises: [], gcsafe.}
  supportedDropActions*: proc(self: pointer): cint {.cdecl, raises: [], gcsafe.}
  sibling*: proc(self: pointer, row: cint, column: cint, idx: pointer): pointer {.cdecl, raises: [], gcsafe.}
  setHeaderData*: proc(self: pointer, section: cint, orientation: cint, value: pointer, role: cint): bool {.cdecl, raises: [], gcsafe.}
  itemData*: proc(self: pointer, index: pointer): struct_miqt_map {.cdecl, raises: [], gcsafe.}
  setItemData*: proc(self: pointer, index: pointer, roles: struct_miqt_map): bool {.cdecl, raises: [], gcsafe.}
  canDropMimeData*: proc(self: pointer, data: pointer, action: cint, row: cint, column: cint, parent: pointer): bool {.cdecl, raises: [], gcsafe.}
  supportedDragActions*: proc(self: pointer): cint {.cdecl, raises: [], gcsafe.}
  insertRows*: proc(self: pointer, row: cint, count: cint, parent: pointer): bool {.cdecl, raises: [], gcsafe.}
  insertColumns*: proc(self: pointer, column: cint, count: cint, parent: pointer): bool {.cdecl, raises: [], gcsafe.}
  removeRows*: proc(self: pointer, row: cint, count: cint, parent: pointer): bool {.cdecl, raises: [], gcsafe.}
  removeColumns*: proc(self: pointer, column: cint, count: cint, parent: pointer): bool {.cdecl, raises: [], gcsafe.}
  moveRows*: proc(self: pointer, sourceParent: pointer, sourceRow: cint, count: cint, destinationParent: pointer, destinationChild: cint): bool {.cdecl, raises: [], gcsafe.}
  moveColumns*: proc(self: pointer, sourceParent: pointer, sourceColumn: cint, count: cint, destinationParent: pointer, destinationChild: cint): bool {.cdecl, raises: [], gcsafe.}
  fetchMore*: proc(self: pointer, parent: pointer): void {.cdecl, raises: [], gcsafe.}
  canFetchMore*: proc(self: pointer, parent: pointer): bool {.cdecl, raises: [], gcsafe.}
  buddy*: proc(self: pointer, index: pointer): pointer {.cdecl, raises: [], gcsafe.}
  match*: proc(self: pointer, start: pointer, role: cint, value: pointer, hits: cint, flags: cint): struct_miqt_array {.cdecl, raises: [], gcsafe.}
  span*: proc(self: pointer, index: pointer): pointer {.cdecl, raises: [], gcsafe.}
  roleNames*: proc(self: pointer): struct_miqt_map {.cdecl, raises: [], gcsafe.}
  submit*: proc(self: pointer): bool {.cdecl, raises: [], gcsafe.}
  revert*: proc(self: pointer): void {.cdecl, raises: [], gcsafe.}
  event*: proc(self: pointer, event: pointer): bool {.cdecl, raises: [], gcsafe.}
  eventFilter*: proc(self: pointer, watched: pointer, event: pointer): bool {.cdecl, raises: [], gcsafe.}
  timerEvent*: proc(self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  childEvent*: proc(self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  customEvent*: proc(self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  connectNotify*: proc(self: pointer, signal: pointer): void {.cdecl, raises: [], gcsafe.}
  disconnectNotify*: proc(self: pointer, signal: pointer): void {.cdecl, raises: [], gcsafe.}
proc fcQDirModel_virtualbase_metaObject(self: pointer): pointer {.importc: "QDirModel_virtualbase_metaObject".}
proc fcQDirModel_virtualbase_metacast(self: pointer, param1: cstring): pointer {.importc: "QDirModel_virtualbase_metacast".}
proc fcQDirModel_virtualbase_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.importc: "QDirModel_virtualbase_metacall".}
proc fcQDirModel_virtualbase_index(self: pointer, row: cint, column: cint, parent: pointer): pointer {.importc: "QDirModel_virtualbase_index".}
proc fcQDirModel_virtualbase_parent(self: pointer, child: pointer): pointer {.importc: "QDirModel_virtualbase_parent".}
proc fcQDirModel_virtualbase_rowCount(self: pointer, parent: pointer): cint {.importc: "QDirModel_virtualbase_rowCount".}
proc fcQDirModel_virtualbase_columnCount(self: pointer, parent: pointer): cint {.importc: "QDirModel_virtualbase_columnCount".}
proc fcQDirModel_virtualbase_data(self: pointer, index: pointer, role: cint): pointer {.importc: "QDirModel_virtualbase_data".}
proc fcQDirModel_virtualbase_setData(self: pointer, index: pointer, value: pointer, role: cint): bool {.importc: "QDirModel_virtualbase_setData".}
proc fcQDirModel_virtualbase_headerData(self: pointer, section: cint, orientation: cint, role: cint): pointer {.importc: "QDirModel_virtualbase_headerData".}
proc fcQDirModel_virtualbase_hasChildren(self: pointer, index: pointer): bool {.importc: "QDirModel_virtualbase_hasChildren".}
proc fcQDirModel_virtualbase_flags(self: pointer, index: pointer): cint {.importc: "QDirModel_virtualbase_flags".}
proc fcQDirModel_virtualbase_sort(self: pointer, column: cint, order: cint): void {.importc: "QDirModel_virtualbase_sort".}
proc fcQDirModel_virtualbase_mimeTypes(self: pointer): struct_miqt_array {.importc: "QDirModel_virtualbase_mimeTypes".}
proc fcQDirModel_virtualbase_mimeData(self: pointer, indexes: struct_miqt_array): pointer {.importc: "QDirModel_virtualbase_mimeData".}
proc fcQDirModel_virtualbase_dropMimeData(self: pointer, data: pointer, action: cint, row: cint, column: cint, parent: pointer): bool {.importc: "QDirModel_virtualbase_dropMimeData".}
proc fcQDirModel_virtualbase_supportedDropActions(self: pointer): cint {.importc: "QDirModel_virtualbase_supportedDropActions".}
proc fcQDirModel_virtualbase_sibling(self: pointer, row: cint, column: cint, idx: pointer): pointer {.importc: "QDirModel_virtualbase_sibling".}
proc fcQDirModel_virtualbase_setHeaderData(self: pointer, section: cint, orientation: cint, value: pointer, role: cint): bool {.importc: "QDirModel_virtualbase_setHeaderData".}
proc fcQDirModel_virtualbase_itemData(self: pointer, index: pointer): struct_miqt_map {.importc: "QDirModel_virtualbase_itemData".}
proc fcQDirModel_virtualbase_setItemData(self: pointer, index: pointer, roles: struct_miqt_map): bool {.importc: "QDirModel_virtualbase_setItemData".}
proc fcQDirModel_virtualbase_canDropMimeData(self: pointer, data: pointer, action: cint, row: cint, column: cint, parent: pointer): bool {.importc: "QDirModel_virtualbase_canDropMimeData".}
proc fcQDirModel_virtualbase_supportedDragActions(self: pointer): cint {.importc: "QDirModel_virtualbase_supportedDragActions".}
proc fcQDirModel_virtualbase_insertRows(self: pointer, row: cint, count: cint, parent: pointer): bool {.importc: "QDirModel_virtualbase_insertRows".}
proc fcQDirModel_virtualbase_insertColumns(self: pointer, column: cint, count: cint, parent: pointer): bool {.importc: "QDirModel_virtualbase_insertColumns".}
proc fcQDirModel_virtualbase_removeRows(self: pointer, row: cint, count: cint, parent: pointer): bool {.importc: "QDirModel_virtualbase_removeRows".}
proc fcQDirModel_virtualbase_removeColumns(self: pointer, column: cint, count: cint, parent: pointer): bool {.importc: "QDirModel_virtualbase_removeColumns".}
proc fcQDirModel_virtualbase_moveRows(self: pointer, sourceParent: pointer, sourceRow: cint, count: cint, destinationParent: pointer, destinationChild: cint): bool {.importc: "QDirModel_virtualbase_moveRows".}
proc fcQDirModel_virtualbase_moveColumns(self: pointer, sourceParent: pointer, sourceColumn: cint, count: cint, destinationParent: pointer, destinationChild: cint): bool {.importc: "QDirModel_virtualbase_moveColumns".}
proc fcQDirModel_virtualbase_fetchMore(self: pointer, parent: pointer): void {.importc: "QDirModel_virtualbase_fetchMore".}
proc fcQDirModel_virtualbase_canFetchMore(self: pointer, parent: pointer): bool {.importc: "QDirModel_virtualbase_canFetchMore".}
proc fcQDirModel_virtualbase_buddy(self: pointer, index: pointer): pointer {.importc: "QDirModel_virtualbase_buddy".}
proc fcQDirModel_virtualbase_match(self: pointer, start: pointer, role: cint, value: pointer, hits: cint, flags: cint): struct_miqt_array {.importc: "QDirModel_virtualbase_match".}
proc fcQDirModel_virtualbase_span(self: pointer, index: pointer): pointer {.importc: "QDirModel_virtualbase_span".}
proc fcQDirModel_virtualbase_roleNames(self: pointer): struct_miqt_map {.importc: "QDirModel_virtualbase_roleNames".}
proc fcQDirModel_virtualbase_submit(self: pointer): bool {.importc: "QDirModel_virtualbase_submit".}
proc fcQDirModel_virtualbase_revert(self: pointer): void {.importc: "QDirModel_virtualbase_revert".}
proc fcQDirModel_virtualbase_event(self: pointer, event: pointer): bool {.importc: "QDirModel_virtualbase_event".}
proc fcQDirModel_virtualbase_eventFilter(self: pointer, watched: pointer, event: pointer): bool {.importc: "QDirModel_virtualbase_eventFilter".}
proc fcQDirModel_virtualbase_timerEvent(self: pointer, event: pointer): void {.importc: "QDirModel_virtualbase_timerEvent".}
proc fcQDirModel_virtualbase_childEvent(self: pointer, event: pointer): void {.importc: "QDirModel_virtualbase_childEvent".}
proc fcQDirModel_virtualbase_customEvent(self: pointer, event: pointer): void {.importc: "QDirModel_virtualbase_customEvent".}
proc fcQDirModel_virtualbase_connectNotify(self: pointer, signal: pointer): void {.importc: "QDirModel_virtualbase_connectNotify".}
proc fcQDirModel_virtualbase_disconnectNotify(self: pointer, signal: pointer): void {.importc: "QDirModel_virtualbase_disconnectNotify".}
proc fcQDirModel_protectedbase_resetInternalData(self: pointer): void {.importc: "QDirModel_protectedbase_resetInternalData".}
proc fcQDirModel_protectedbase_createIndex(self: pointer, row: cint, column: cint): pointer {.importc: "QDirModel_protectedbase_createIndex".}
proc fcQDirModel_protectedbase_encodeData(self: pointer, indexes: struct_miqt_array, stream: pointer): void {.importc: "QDirModel_protectedbase_encodeData".}
proc fcQDirModel_protectedbase_decodeData(self: pointer, row: cint, column: cint, parent: pointer, stream: pointer): bool {.importc: "QDirModel_protectedbase_decodeData".}
proc fcQDirModel_protectedbase_beginInsertRows(self: pointer, parent: pointer, first: cint, last: cint): void {.importc: "QDirModel_protectedbase_beginInsertRows".}
proc fcQDirModel_protectedbase_endInsertRows(self: pointer): void {.importc: "QDirModel_protectedbase_endInsertRows".}
proc fcQDirModel_protectedbase_beginRemoveRows(self: pointer, parent: pointer, first: cint, last: cint): void {.importc: "QDirModel_protectedbase_beginRemoveRows".}
proc fcQDirModel_protectedbase_endRemoveRows(self: pointer): void {.importc: "QDirModel_protectedbase_endRemoveRows".}
proc fcQDirModel_protectedbase_beginMoveRows(self: pointer, sourceParent: pointer, sourceFirst: cint, sourceLast: cint, destinationParent: pointer, destinationRow: cint): bool {.importc: "QDirModel_protectedbase_beginMoveRows".}
proc fcQDirModel_protectedbase_endMoveRows(self: pointer): void {.importc: "QDirModel_protectedbase_endMoveRows".}
proc fcQDirModel_protectedbase_beginInsertColumns(self: pointer, parent: pointer, first: cint, last: cint): void {.importc: "QDirModel_protectedbase_beginInsertColumns".}
proc fcQDirModel_protectedbase_endInsertColumns(self: pointer): void {.importc: "QDirModel_protectedbase_endInsertColumns".}
proc fcQDirModel_protectedbase_beginRemoveColumns(self: pointer, parent: pointer, first: cint, last: cint): void {.importc: "QDirModel_protectedbase_beginRemoveColumns".}
proc fcQDirModel_protectedbase_endRemoveColumns(self: pointer): void {.importc: "QDirModel_protectedbase_endRemoveColumns".}
proc fcQDirModel_protectedbase_beginMoveColumns(self: pointer, sourceParent: pointer, sourceFirst: cint, sourceLast: cint, destinationParent: pointer, destinationColumn: cint): bool {.importc: "QDirModel_protectedbase_beginMoveColumns".}
proc fcQDirModel_protectedbase_endMoveColumns(self: pointer): void {.importc: "QDirModel_protectedbase_endMoveColumns".}
proc fcQDirModel_protectedbase_beginResetModel(self: pointer): void {.importc: "QDirModel_protectedbase_beginResetModel".}
proc fcQDirModel_protectedbase_endResetModel(self: pointer): void {.importc: "QDirModel_protectedbase_endResetModel".}
proc fcQDirModel_protectedbase_changePersistentIndex(self: pointer, fromVal: pointer, to: pointer): void {.importc: "QDirModel_protectedbase_changePersistentIndex".}
proc fcQDirModel_protectedbase_changePersistentIndexList(self: pointer, fromVal: struct_miqt_array, to: struct_miqt_array): void {.importc: "QDirModel_protectedbase_changePersistentIndexList".}
proc fcQDirModel_protectedbase_persistentIndexList(self: pointer): struct_miqt_array {.importc: "QDirModel_protectedbase_persistentIndexList".}
proc fcQDirModel_protectedbase_sender(self: pointer): pointer {.importc: "QDirModel_protectedbase_sender".}
proc fcQDirModel_protectedbase_senderSignalIndex(self: pointer): cint {.importc: "QDirModel_protectedbase_senderSignalIndex".}
proc fcQDirModel_protectedbase_receivers(self: pointer, signal: cstring): cint {.importc: "QDirModel_protectedbase_receivers".}
proc fcQDirModel_protectedbase_isSignalConnected(self: pointer, signal: pointer): bool {.importc: "QDirModel_protectedbase_isSignalConnected".}
proc fcQDirModel_new(vtbl, vdata: pointer, nameFilters: struct_miqt_array, filters: cint, sort: cint): ptr cQDirModel {.importc: "QDirModel_new".}
proc fcQDirModel_new2(vtbl, vdata: pointer): ptr cQDirModel {.importc: "QDirModel_new2".}
proc fcQDirModel_new3(vtbl, vdata: pointer, nameFilters: struct_miqt_array, filters: cint, sort: cint, parent: pointer): ptr cQDirModel {.importc: "QDirModel_new3".}
proc fcQDirModel_new4(vtbl, vdata: pointer, parent: pointer): ptr cQDirModel {.importc: "QDirModel_new4".}
proc fcQDirModel_staticMetaObject(): pointer {.importc: "QDirModel_staticMetaObject".}

proc metaObject*(self: gen_qdirmodel_types.QDirModel): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQDirModel_metaObject(self.h), owned: false)

proc metacast*(self: gen_qdirmodel_types.QDirModel, param1: cstring): pointer =
  fcQDirModel_metacast(self.h, param1)

proc metacall*(self: gen_qdirmodel_types.QDirModel, param1: cint, param2: cint, param3: pointer): cint =
  fcQDirModel_metacall(self.h, cint(param1), param2, param3)

proc tr*(_: type gen_qdirmodel_types.QDirModel, s: cstring): string =
  let v_ms = fcQDirModel_tr(s)
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

proc trUtf8*(_: type gen_qdirmodel_types.QDirModel, s: cstring): string =
  let v_ms = fcQDirModel_trUtf8(s)
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

proc index*(self: gen_qdirmodel_types.QDirModel, row: cint, column: cint, parent: gen_qabstractitemmodel_types.QModelIndex): gen_qabstractitemmodel_types.QModelIndex =
  gen_qabstractitemmodel_types.QModelIndex(h: fcQDirModel_index(self.h, row, column, parent.h), owned: true)

proc parent*(self: gen_qdirmodel_types.QDirModel, child: gen_qabstractitemmodel_types.QModelIndex): gen_qabstractitemmodel_types.QModelIndex =
  gen_qabstractitemmodel_types.QModelIndex(h: fcQDirModel_parent(self.h, child.h), owned: true)

proc rowCount*(self: gen_qdirmodel_types.QDirModel, parent: gen_qabstractitemmodel_types.QModelIndex): cint =
  fcQDirModel_rowCount(self.h, parent.h)

proc columnCount*(self: gen_qdirmodel_types.QDirModel, parent: gen_qabstractitemmodel_types.QModelIndex): cint =
  fcQDirModel_columnCount(self.h, parent.h)

proc data*(self: gen_qdirmodel_types.QDirModel, index: gen_qabstractitemmodel_types.QModelIndex, role: cint): gen_qvariant_types.QVariant =
  gen_qvariant_types.QVariant(h: fcQDirModel_data(self.h, index.h, role), owned: true)

proc setData*(self: gen_qdirmodel_types.QDirModel, index: gen_qabstractitemmodel_types.QModelIndex, value: gen_qvariant_types.QVariant, role: cint): bool =
  fcQDirModel_setData(self.h, index.h, value.h, role)

proc headerData*(self: gen_qdirmodel_types.QDirModel, section: cint, orientation: cint, role: cint): gen_qvariant_types.QVariant =
  gen_qvariant_types.QVariant(h: fcQDirModel_headerData(self.h, section, cint(orientation), role), owned: true)

proc hasChildren*(self: gen_qdirmodel_types.QDirModel, index: gen_qabstractitemmodel_types.QModelIndex): bool =
  fcQDirModel_hasChildren(self.h, index.h)

proc flags*(self: gen_qdirmodel_types.QDirModel, index: gen_qabstractitemmodel_types.QModelIndex): cint =
  cint(fcQDirModel_flags(self.h, index.h))

proc sort*(self: gen_qdirmodel_types.QDirModel, column: cint, order: cint): void =
  fcQDirModel_sort(self.h, column, cint(order))

proc mimeTypes*(self: gen_qdirmodel_types.QDirModel): seq[string] =
  var v_ma = fcQDirModel_mimeTypes(self.h)
  var vx_ret = newSeq[string](int(v_ma.len))
  let v_outCast = cast[ptr UncheckedArray[struct_miqt_string]](v_ma.data)
  for i in 0 ..< v_ma.len:
    let vx_lv_ms = v_outCast[i]
    let vx_lvx_ret = string.fromBytes(vx_lv_ms)
    c_free(vx_lv_ms.data)
    vx_ret[i] = vx_lvx_ret
  c_free(v_ma.data)
  vx_ret

proc mimeData*(self: gen_qdirmodel_types.QDirModel, indexes: openArray[gen_qabstractitemmodel_types.QModelIndex]): gen_qmimedata_types.QMimeData =
  var indexes_CArray = newSeq[pointer](len(indexes))
  for i in 0..<len(indexes):
    indexes_CArray[i] = indexes[i].h

  gen_qmimedata_types.QMimeData(h: fcQDirModel_mimeData(self.h, struct_miqt_array(len: csize_t(len(indexes)), data: if len(indexes) == 0: nil else: addr(indexes_CArray[0]))), owned: false)

proc dropMimeData*(self: gen_qdirmodel_types.QDirModel, data: gen_qmimedata_types.QMimeData, action: cint, row: cint, column: cint, parent: gen_qabstractitemmodel_types.QModelIndex): bool =
  fcQDirModel_dropMimeData(self.h, data.h, cint(action), row, column, parent.h)

proc supportedDropActions*(self: gen_qdirmodel_types.QDirModel): cint =
  cint(fcQDirModel_supportedDropActions(self.h))

proc setIconProvider*(self: gen_qdirmodel_types.QDirModel, provider: gen_qfileiconprovider_types.QFileIconProvider): void =
  fcQDirModel_setIconProvider(self.h, provider.h)

proc iconProvider*(self: gen_qdirmodel_types.QDirModel): gen_qfileiconprovider_types.QFileIconProvider =
  gen_qfileiconprovider_types.QFileIconProvider(h: fcQDirModel_iconProvider(self.h), owned: false)

proc setNameFilters*(self: gen_qdirmodel_types.QDirModel, filters: openArray[string]): void =
  var filters_CArray = newSeq[struct_miqt_string](len(filters))
  for i in 0..<len(filters):
    filters_CArray[i] = struct_miqt_string(data: if len(filters[i]) > 0: addr filters[i][0] else: nil, len: csize_t(len(filters[i])))

  fcQDirModel_setNameFilters(self.h, struct_miqt_array(len: csize_t(len(filters)), data: if len(filters) == 0: nil else: addr(filters_CArray[0])))

proc nameFilters*(self: gen_qdirmodel_types.QDirModel): seq[string] =
  var v_ma = fcQDirModel_nameFilters(self.h)
  var vx_ret = newSeq[string](int(v_ma.len))
  let v_outCast = cast[ptr UncheckedArray[struct_miqt_string]](v_ma.data)
  for i in 0 ..< v_ma.len:
    let vx_lv_ms = v_outCast[i]
    let vx_lvx_ret = string.fromBytes(vx_lv_ms)
    c_free(vx_lv_ms.data)
    vx_ret[i] = vx_lvx_ret
  c_free(v_ma.data)
  vx_ret

proc setFilter*(self: gen_qdirmodel_types.QDirModel, filters: cint): void =
  fcQDirModel_setFilter(self.h, cint(filters))

proc filter*(self: gen_qdirmodel_types.QDirModel): cint =
  cint(fcQDirModel_filter(self.h))

proc setSorting*(self: gen_qdirmodel_types.QDirModel, sort: cint): void =
  fcQDirModel_setSorting(self.h, cint(sort))

proc sorting*(self: gen_qdirmodel_types.QDirModel): cint =
  cint(fcQDirModel_sorting(self.h))

proc setResolveSymlinks*(self: gen_qdirmodel_types.QDirModel, enable: bool): void =
  fcQDirModel_setResolveSymlinks(self.h, enable)

proc resolveSymlinks*(self: gen_qdirmodel_types.QDirModel): bool =
  fcQDirModel_resolveSymlinks(self.h)

proc setReadOnly*(self: gen_qdirmodel_types.QDirModel, enable: bool): void =
  fcQDirModel_setReadOnly(self.h, enable)

proc isReadOnly*(self: gen_qdirmodel_types.QDirModel): bool =
  fcQDirModel_isReadOnly(self.h)

proc setLazyChildCount*(self: gen_qdirmodel_types.QDirModel, enable: bool): void =
  fcQDirModel_setLazyChildCount(self.h, enable)

proc lazyChildCount*(self: gen_qdirmodel_types.QDirModel): bool =
  fcQDirModel_lazyChildCount(self.h)

proc index*(self: gen_qdirmodel_types.QDirModel, path: openArray[char]): gen_qabstractitemmodel_types.QModelIndex =
  gen_qabstractitemmodel_types.QModelIndex(h: fcQDirModel_indexWithPath(self.h, struct_miqt_string(data: if len(path) > 0: addr path[0] else: nil, len: csize_t(len(path)))), owned: true)

proc isDir*(self: gen_qdirmodel_types.QDirModel, index: gen_qabstractitemmodel_types.QModelIndex): bool =
  fcQDirModel_isDir(self.h, index.h)

proc mkdir*(self: gen_qdirmodel_types.QDirModel, parent: gen_qabstractitemmodel_types.QModelIndex, name: openArray[char]): gen_qabstractitemmodel_types.QModelIndex =
  gen_qabstractitemmodel_types.QModelIndex(h: fcQDirModel_mkdir(self.h, parent.h, struct_miqt_string(data: if len(name) > 0: addr name[0] else: nil, len: csize_t(len(name)))), owned: true)

proc rmdir*(self: gen_qdirmodel_types.QDirModel, index: gen_qabstractitemmodel_types.QModelIndex): bool =
  fcQDirModel_rmdir(self.h, index.h)

proc remove*(self: gen_qdirmodel_types.QDirModel, index: gen_qabstractitemmodel_types.QModelIndex): bool =
  fcQDirModel_remove(self.h, index.h)

proc filePath*(self: gen_qdirmodel_types.QDirModel, index: gen_qabstractitemmodel_types.QModelIndex): string =
  let v_ms = fcQDirModel_filePath(self.h, index.h)
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

proc fileName*(self: gen_qdirmodel_types.QDirModel, index: gen_qabstractitemmodel_types.QModelIndex): string =
  let v_ms = fcQDirModel_fileName(self.h, index.h)
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

proc fileIcon*(self: gen_qdirmodel_types.QDirModel, index: gen_qabstractitemmodel_types.QModelIndex): gen_qicon_types.QIcon =
  gen_qicon_types.QIcon(h: fcQDirModel_fileIcon(self.h, index.h), owned: true)

proc fileInfo*(self: gen_qdirmodel_types.QDirModel, index: gen_qabstractitemmodel_types.QModelIndex): gen_qfileinfo_types.QFileInfo =
  gen_qfileinfo_types.QFileInfo(h: fcQDirModel_fileInfo(self.h, index.h), owned: true)

proc refresh*(self: gen_qdirmodel_types.QDirModel): void =
  fcQDirModel_refresh(self.h)

proc tr*(_: type gen_qdirmodel_types.QDirModel, s: cstring, c: cstring): string =
  let v_ms = fcQDirModel_tr2(s, c)
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

proc tr*(_: type gen_qdirmodel_types.QDirModel, s: cstring, c: cstring, n: cint): string =
  let v_ms = fcQDirModel_tr3(s, c, n)
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

proc trUtf8*(_: type gen_qdirmodel_types.QDirModel, s: cstring, c: cstring): string =
  let v_ms = fcQDirModel_trUtf82(s, c)
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

proc trUtf8*(_: type gen_qdirmodel_types.QDirModel, s: cstring, c: cstring, n: cint): string =
  let v_ms = fcQDirModel_trUtf83(s, c, n)
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

proc index*(self: gen_qdirmodel_types.QDirModel, path: openArray[char], column: cint): gen_qabstractitemmodel_types.QModelIndex =
  gen_qabstractitemmodel_types.QModelIndex(h: fcQDirModel_index2(self.h, struct_miqt_string(data: if len(path) > 0: addr path[0] else: nil, len: csize_t(len(path))), column), owned: true)

proc refresh*(self: gen_qdirmodel_types.QDirModel, parent: gen_qabstractitemmodel_types.QModelIndex): void =
  fcQDirModel_refresh1(self.h, parent.h)

type QDirModelmetaObjectProc* = proc(self: QDirModel): gen_qobjectdefs_types.QMetaObject {.raises: [], gcsafe.}
type QDirModelmetacastProc* = proc(self: QDirModel, param1: cstring): pointer {.raises: [], gcsafe.}
type QDirModelmetacallProc* = proc(self: QDirModel, param1: cint, param2: cint, param3: pointer): cint {.raises: [], gcsafe.}
type QDirModelindexProc* = proc(self: QDirModel, row: cint, column: cint, parent: gen_qabstractitemmodel_types.QModelIndex): gen_qabstractitemmodel_types.QModelIndex {.raises: [], gcsafe.}
type QDirModelparentProc* = proc(self: QDirModel, child: gen_qabstractitemmodel_types.QModelIndex): gen_qabstractitemmodel_types.QModelIndex {.raises: [], gcsafe.}
type QDirModelrowCountProc* = proc(self: QDirModel, parent: gen_qabstractitemmodel_types.QModelIndex): cint {.raises: [], gcsafe.}
type QDirModelcolumnCountProc* = proc(self: QDirModel, parent: gen_qabstractitemmodel_types.QModelIndex): cint {.raises: [], gcsafe.}
type QDirModeldataProc* = proc(self: QDirModel, index: gen_qabstractitemmodel_types.QModelIndex, role: cint): gen_qvariant_types.QVariant {.raises: [], gcsafe.}
type QDirModelsetDataProc* = proc(self: QDirModel, index: gen_qabstractitemmodel_types.QModelIndex, value: gen_qvariant_types.QVariant, role: cint): bool {.raises: [], gcsafe.}
type QDirModelheaderDataProc* = proc(self: QDirModel, section: cint, orientation: cint, role: cint): gen_qvariant_types.QVariant {.raises: [], gcsafe.}
type QDirModelhasChildrenProc* = proc(self: QDirModel, index: gen_qabstractitemmodel_types.QModelIndex): bool {.raises: [], gcsafe.}
type QDirModelflagsProc* = proc(self: QDirModel, index: gen_qabstractitemmodel_types.QModelIndex): cint {.raises: [], gcsafe.}
type QDirModelsortProc* = proc(self: QDirModel, column: cint, order: cint): void {.raises: [], gcsafe.}
type QDirModelmimeTypesProc* = proc(self: QDirModel): seq[string] {.raises: [], gcsafe.}
type QDirModelmimeDataProc* = proc(self: QDirModel, indexes: openArray[gen_qabstractitemmodel_types.QModelIndex]): gen_qmimedata_types.QMimeData {.raises: [], gcsafe.}
type QDirModeldropMimeDataProc* = proc(self: QDirModel, data: gen_qmimedata_types.QMimeData, action: cint, row: cint, column: cint, parent: gen_qabstractitemmodel_types.QModelIndex): bool {.raises: [], gcsafe.}
type QDirModelsupportedDropActionsProc* = proc(self: QDirModel): cint {.raises: [], gcsafe.}
type QDirModelsiblingProc* = proc(self: QDirModel, row: cint, column: cint, idx: gen_qabstractitemmodel_types.QModelIndex): gen_qabstractitemmodel_types.QModelIndex {.raises: [], gcsafe.}
type QDirModelsetHeaderDataProc* = proc(self: QDirModel, section: cint, orientation: cint, value: gen_qvariant_types.QVariant, role: cint): bool {.raises: [], gcsafe.}
type QDirModelitemDataProc* = proc(self: QDirModel, index: gen_qabstractitemmodel_types.QModelIndex): Table[cint,gen_qvariant_types.QVariant] {.raises: [], gcsafe.}
type QDirModelsetItemDataProc* = proc(self: QDirModel, index: gen_qabstractitemmodel_types.QModelIndex, roles: Table[cint,gen_qvariant_types.QVariant]): bool {.raises: [], gcsafe.}
type QDirModelcanDropMimeDataProc* = proc(self: QDirModel, data: gen_qmimedata_types.QMimeData, action: cint, row: cint, column: cint, parent: gen_qabstractitemmodel_types.QModelIndex): bool {.raises: [], gcsafe.}
type QDirModelsupportedDragActionsProc* = proc(self: QDirModel): cint {.raises: [], gcsafe.}
type QDirModelinsertRowsProc* = proc(self: QDirModel, row: cint, count: cint, parent: gen_qabstractitemmodel_types.QModelIndex): bool {.raises: [], gcsafe.}
type QDirModelinsertColumnsProc* = proc(self: QDirModel, column: cint, count: cint, parent: gen_qabstractitemmodel_types.QModelIndex): bool {.raises: [], gcsafe.}
type QDirModelremoveRowsProc* = proc(self: QDirModel, row: cint, count: cint, parent: gen_qabstractitemmodel_types.QModelIndex): bool {.raises: [], gcsafe.}
type QDirModelremoveColumnsProc* = proc(self: QDirModel, column: cint, count: cint, parent: gen_qabstractitemmodel_types.QModelIndex): bool {.raises: [], gcsafe.}
type QDirModelmoveRowsProc* = proc(self: QDirModel, sourceParent: gen_qabstractitemmodel_types.QModelIndex, sourceRow: cint, count: cint, destinationParent: gen_qabstractitemmodel_types.QModelIndex, destinationChild: cint): bool {.raises: [], gcsafe.}
type QDirModelmoveColumnsProc* = proc(self: QDirModel, sourceParent: gen_qabstractitemmodel_types.QModelIndex, sourceColumn: cint, count: cint, destinationParent: gen_qabstractitemmodel_types.QModelIndex, destinationChild: cint): bool {.raises: [], gcsafe.}
type QDirModelfetchMoreProc* = proc(self: QDirModel, parent: gen_qabstractitemmodel_types.QModelIndex): void {.raises: [], gcsafe.}
type QDirModelcanFetchMoreProc* = proc(self: QDirModel, parent: gen_qabstractitemmodel_types.QModelIndex): bool {.raises: [], gcsafe.}
type QDirModelbuddyProc* = proc(self: QDirModel, index: gen_qabstractitemmodel_types.QModelIndex): gen_qabstractitemmodel_types.QModelIndex {.raises: [], gcsafe.}
type QDirModelmatchProc* = proc(self: QDirModel, start: gen_qabstractitemmodel_types.QModelIndex, role: cint, value: gen_qvariant_types.QVariant, hits: cint, flags: cint): seq[gen_qabstractitemmodel_types.QModelIndex] {.raises: [], gcsafe.}
type QDirModelspanProc* = proc(self: QDirModel, index: gen_qabstractitemmodel_types.QModelIndex): gen_qsize_types.QSize {.raises: [], gcsafe.}
type QDirModelroleNamesProc* = proc(self: QDirModel): Table[cint,seq[byte]] {.raises: [], gcsafe.}
type QDirModelsubmitProc* = proc(self: QDirModel): bool {.raises: [], gcsafe.}
type QDirModelrevertProc* = proc(self: QDirModel): void {.raises: [], gcsafe.}
type QDirModeleventProc* = proc(self: QDirModel, event: gen_qcoreevent_types.QEvent): bool {.raises: [], gcsafe.}
type QDirModeleventFilterProc* = proc(self: QDirModel, watched: gen_qobject_types.QObject, event: gen_qcoreevent_types.QEvent): bool {.raises: [], gcsafe.}
type QDirModeltimerEventProc* = proc(self: QDirModel, event: gen_qcoreevent_types.QTimerEvent): void {.raises: [], gcsafe.}
type QDirModelchildEventProc* = proc(self: QDirModel, event: gen_qcoreevent_types.QChildEvent): void {.raises: [], gcsafe.}
type QDirModelcustomEventProc* = proc(self: QDirModel, event: gen_qcoreevent_types.QEvent): void {.raises: [], gcsafe.}
type QDirModelconnectNotifyProc* = proc(self: QDirModel, signal: gen_qmetaobject_types.QMetaMethod): void {.raises: [], gcsafe.}
type QDirModeldisconnectNotifyProc* = proc(self: QDirModel, signal: gen_qmetaobject_types.QMetaMethod): void {.raises: [], gcsafe.}

type QDirModelVTable* {.inheritable, pure.} = object
  vtbl: cQDirModelVTable
  metaObject*: QDirModelmetaObjectProc
  metacast*: QDirModelmetacastProc
  metacall*: QDirModelmetacallProc
  index*: QDirModelindexProc
  parent*: QDirModelparentProc
  rowCount*: QDirModelrowCountProc
  columnCount*: QDirModelcolumnCountProc
  data*: QDirModeldataProc
  setData*: QDirModelsetDataProc
  headerData*: QDirModelheaderDataProc
  hasChildren*: QDirModelhasChildrenProc
  flags*: QDirModelflagsProc
  sort*: QDirModelsortProc
  mimeTypes*: QDirModelmimeTypesProc
  mimeData*: QDirModelmimeDataProc
  dropMimeData*: QDirModeldropMimeDataProc
  supportedDropActions*: QDirModelsupportedDropActionsProc
  sibling*: QDirModelsiblingProc
  setHeaderData*: QDirModelsetHeaderDataProc
  itemData*: QDirModelitemDataProc
  setItemData*: QDirModelsetItemDataProc
  canDropMimeData*: QDirModelcanDropMimeDataProc
  supportedDragActions*: QDirModelsupportedDragActionsProc
  insertRows*: QDirModelinsertRowsProc
  insertColumns*: QDirModelinsertColumnsProc
  removeRows*: QDirModelremoveRowsProc
  removeColumns*: QDirModelremoveColumnsProc
  moveRows*: QDirModelmoveRowsProc
  moveColumns*: QDirModelmoveColumnsProc
  fetchMore*: QDirModelfetchMoreProc
  canFetchMore*: QDirModelcanFetchMoreProc
  buddy*: QDirModelbuddyProc
  match*: QDirModelmatchProc
  span*: QDirModelspanProc
  roleNames*: QDirModelroleNamesProc
  submit*: QDirModelsubmitProc
  revert*: QDirModelrevertProc
  event*: QDirModeleventProc
  eventFilter*: QDirModeleventFilterProc
  timerEvent*: QDirModeltimerEventProc
  childEvent*: QDirModelchildEventProc
  customEvent*: QDirModelcustomEventProc
  connectNotify*: QDirModelconnectNotifyProc
  disconnectNotify*: QDirModeldisconnectNotifyProc

proc QDirModelmetaObject*(self: gen_qdirmodel_types.QDirModel): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQDirModel_virtualbase_metaObject(self.h), owned: false)

proc QDirModelmetacast*(self: gen_qdirmodel_types.QDirModel, param1: cstring): pointer =
  fcQDirModel_virtualbase_metacast(self.h, param1)

proc QDirModelmetacall*(self: gen_qdirmodel_types.QDirModel, param1: cint, param2: cint, param3: pointer): cint =
  fcQDirModel_virtualbase_metacall(self.h, cint(param1), param2, param3)

proc QDirModelindex*(self: gen_qdirmodel_types.QDirModel, row: cint, column: cint, parent: gen_qabstractitemmodel_types.QModelIndex): gen_qabstractitemmodel_types.QModelIndex =
  gen_qabstractitemmodel_types.QModelIndex(h: fcQDirModel_virtualbase_index(self.h, row, column, parent.h), owned: true)

proc QDirModelparent*(self: gen_qdirmodel_types.QDirModel, child: gen_qabstractitemmodel_types.QModelIndex): gen_qabstractitemmodel_types.QModelIndex =
  gen_qabstractitemmodel_types.QModelIndex(h: fcQDirModel_virtualbase_parent(self.h, child.h), owned: true)

proc QDirModelrowCount*(self: gen_qdirmodel_types.QDirModel, parent: gen_qabstractitemmodel_types.QModelIndex): cint =
  fcQDirModel_virtualbase_rowCount(self.h, parent.h)

proc QDirModelcolumnCount*(self: gen_qdirmodel_types.QDirModel, parent: gen_qabstractitemmodel_types.QModelIndex): cint =
  fcQDirModel_virtualbase_columnCount(self.h, parent.h)

proc QDirModeldata*(self: gen_qdirmodel_types.QDirModel, index: gen_qabstractitemmodel_types.QModelIndex, role: cint): gen_qvariant_types.QVariant =
  gen_qvariant_types.QVariant(h: fcQDirModel_virtualbase_data(self.h, index.h, role), owned: true)

proc QDirModelsetData*(self: gen_qdirmodel_types.QDirModel, index: gen_qabstractitemmodel_types.QModelIndex, value: gen_qvariant_types.QVariant, role: cint): bool =
  fcQDirModel_virtualbase_setData(self.h, index.h, value.h, role)

proc QDirModelheaderData*(self: gen_qdirmodel_types.QDirModel, section: cint, orientation: cint, role: cint): gen_qvariant_types.QVariant =
  gen_qvariant_types.QVariant(h: fcQDirModel_virtualbase_headerData(self.h, section, cint(orientation), role), owned: true)

proc QDirModelhasChildren*(self: gen_qdirmodel_types.QDirModel, index: gen_qabstractitemmodel_types.QModelIndex): bool =
  fcQDirModel_virtualbase_hasChildren(self.h, index.h)

proc QDirModelflags*(self: gen_qdirmodel_types.QDirModel, index: gen_qabstractitemmodel_types.QModelIndex): cint =
  cint(fcQDirModel_virtualbase_flags(self.h, index.h))

proc QDirModelsort*(self: gen_qdirmodel_types.QDirModel, column: cint, order: cint): void =
  fcQDirModel_virtualbase_sort(self.h, column, cint(order))

proc QDirModelmimeTypes*(self: gen_qdirmodel_types.QDirModel): seq[string] =
  var v_ma = fcQDirModel_virtualbase_mimeTypes(self.h)
  var vx_ret = newSeq[string](int(v_ma.len))
  let v_outCast = cast[ptr UncheckedArray[struct_miqt_string]](v_ma.data)
  for i in 0 ..< v_ma.len:
    let vx_lv_ms = v_outCast[i]
    let vx_lvx_ret = string.fromBytes(vx_lv_ms)
    c_free(vx_lv_ms.data)
    vx_ret[i] = vx_lvx_ret
  c_free(v_ma.data)
  vx_ret

proc QDirModelmimeData*(self: gen_qdirmodel_types.QDirModel, indexes: openArray[gen_qabstractitemmodel_types.QModelIndex]): gen_qmimedata_types.QMimeData =
  var indexes_CArray = newSeq[pointer](len(indexes))
  for i in 0..<len(indexes):
    indexes_CArray[i] = indexes[i].h

  gen_qmimedata_types.QMimeData(h: fcQDirModel_virtualbase_mimeData(self.h, struct_miqt_array(len: csize_t(len(indexes)), data: if len(indexes) == 0: nil else: addr(indexes_CArray[0]))), owned: false)

proc QDirModeldropMimeData*(self: gen_qdirmodel_types.QDirModel, data: gen_qmimedata_types.QMimeData, action: cint, row: cint, column: cint, parent: gen_qabstractitemmodel_types.QModelIndex): bool =
  fcQDirModel_virtualbase_dropMimeData(self.h, data.h, cint(action), row, column, parent.h)

proc QDirModelsupportedDropActions*(self: gen_qdirmodel_types.QDirModel): cint =
  cint(fcQDirModel_virtualbase_supportedDropActions(self.h))

proc QDirModelsibling*(self: gen_qdirmodel_types.QDirModel, row: cint, column: cint, idx: gen_qabstractitemmodel_types.QModelIndex): gen_qabstractitemmodel_types.QModelIndex =
  gen_qabstractitemmodel_types.QModelIndex(h: fcQDirModel_virtualbase_sibling(self.h, row, column, idx.h), owned: true)

proc QDirModelsetHeaderData*(self: gen_qdirmodel_types.QDirModel, section: cint, orientation: cint, value: gen_qvariant_types.QVariant, role: cint): bool =
  fcQDirModel_virtualbase_setHeaderData(self.h, section, cint(orientation), value.h, role)

proc QDirModelitemData*(self: gen_qdirmodel_types.QDirModel, index: gen_qabstractitemmodel_types.QModelIndex): Table[cint,gen_qvariant_types.QVariant] =
  var v_mm = fcQDirModel_virtualbase_itemData(self.h, index.h)
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

proc QDirModelsetItemData*(self: gen_qdirmodel_types.QDirModel, index: gen_qabstractitemmodel_types.QModelIndex, roles: Table[cint,gen_qvariant_types.QVariant]): bool =
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

  fcQDirModel_virtualbase_setItemData(self.h, index.h, struct_miqt_map(len: csize_t(len(roles)),keys: if len(roles) == 0: nil else: addr(roles_Keys_CArray[0]), values: if len(roles) == 0: nil else: addr(roles_Values_CArray[0]),))

proc QDirModelcanDropMimeData*(self: gen_qdirmodel_types.QDirModel, data: gen_qmimedata_types.QMimeData, action: cint, row: cint, column: cint, parent: gen_qabstractitemmodel_types.QModelIndex): bool =
  fcQDirModel_virtualbase_canDropMimeData(self.h, data.h, cint(action), row, column, parent.h)

proc QDirModelsupportedDragActions*(self: gen_qdirmodel_types.QDirModel): cint =
  cint(fcQDirModel_virtualbase_supportedDragActions(self.h))

proc QDirModelinsertRows*(self: gen_qdirmodel_types.QDirModel, row: cint, count: cint, parent: gen_qabstractitemmodel_types.QModelIndex): bool =
  fcQDirModel_virtualbase_insertRows(self.h, row, count, parent.h)

proc QDirModelinsertColumns*(self: gen_qdirmodel_types.QDirModel, column: cint, count: cint, parent: gen_qabstractitemmodel_types.QModelIndex): bool =
  fcQDirModel_virtualbase_insertColumns(self.h, column, count, parent.h)

proc QDirModelremoveRows*(self: gen_qdirmodel_types.QDirModel, row: cint, count: cint, parent: gen_qabstractitemmodel_types.QModelIndex): bool =
  fcQDirModel_virtualbase_removeRows(self.h, row, count, parent.h)

proc QDirModelremoveColumns*(self: gen_qdirmodel_types.QDirModel, column: cint, count: cint, parent: gen_qabstractitemmodel_types.QModelIndex): bool =
  fcQDirModel_virtualbase_removeColumns(self.h, column, count, parent.h)

proc QDirModelmoveRows*(self: gen_qdirmodel_types.QDirModel, sourceParent: gen_qabstractitemmodel_types.QModelIndex, sourceRow: cint, count: cint, destinationParent: gen_qabstractitemmodel_types.QModelIndex, destinationChild: cint): bool =
  fcQDirModel_virtualbase_moveRows(self.h, sourceParent.h, sourceRow, count, destinationParent.h, destinationChild)

proc QDirModelmoveColumns*(self: gen_qdirmodel_types.QDirModel, sourceParent: gen_qabstractitemmodel_types.QModelIndex, sourceColumn: cint, count: cint, destinationParent: gen_qabstractitemmodel_types.QModelIndex, destinationChild: cint): bool =
  fcQDirModel_virtualbase_moveColumns(self.h, sourceParent.h, sourceColumn, count, destinationParent.h, destinationChild)

proc QDirModelfetchMore*(self: gen_qdirmodel_types.QDirModel, parent: gen_qabstractitemmodel_types.QModelIndex): void =
  fcQDirModel_virtualbase_fetchMore(self.h, parent.h)

proc QDirModelcanFetchMore*(self: gen_qdirmodel_types.QDirModel, parent: gen_qabstractitemmodel_types.QModelIndex): bool =
  fcQDirModel_virtualbase_canFetchMore(self.h, parent.h)

proc QDirModelbuddy*(self: gen_qdirmodel_types.QDirModel, index: gen_qabstractitemmodel_types.QModelIndex): gen_qabstractitemmodel_types.QModelIndex =
  gen_qabstractitemmodel_types.QModelIndex(h: fcQDirModel_virtualbase_buddy(self.h, index.h), owned: true)

proc QDirModelmatch*(self: gen_qdirmodel_types.QDirModel, start: gen_qabstractitemmodel_types.QModelIndex, role: cint, value: gen_qvariant_types.QVariant, hits: cint, flags: cint): seq[gen_qabstractitemmodel_types.QModelIndex] =
  var v_ma = fcQDirModel_virtualbase_match(self.h, start.h, role, value.h, hits, cint(flags))
  var vx_ret = newSeq[gen_qabstractitemmodel_types.QModelIndex](int(v_ma.len))
  let v_outCast = cast[ptr UncheckedArray[pointer]](v_ma.data)
  for i in 0 ..< v_ma.len:
    vx_ret[i] = gen_qabstractitemmodel_types.QModelIndex(h: v_outCast[i], owned: true)
  c_free(v_ma.data)
  vx_ret

proc QDirModelspan*(self: gen_qdirmodel_types.QDirModel, index: gen_qabstractitemmodel_types.QModelIndex): gen_qsize_types.QSize =
  gen_qsize_types.QSize(h: fcQDirModel_virtualbase_span(self.h, index.h), owned: true)

proc QDirModelroleNames*(self: gen_qdirmodel_types.QDirModel): Table[cint,seq[byte]] =
  var v_mm = fcQDirModel_virtualbase_roleNames(self.h)
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

proc QDirModelsubmit*(self: gen_qdirmodel_types.QDirModel): bool =
  fcQDirModel_virtualbase_submit(self.h)

proc QDirModelrevert*(self: gen_qdirmodel_types.QDirModel): void =
  fcQDirModel_virtualbase_revert(self.h)

proc QDirModelevent*(self: gen_qdirmodel_types.QDirModel, event: gen_qcoreevent_types.QEvent): bool =
  fcQDirModel_virtualbase_event(self.h, event.h)

proc QDirModeleventFilter*(self: gen_qdirmodel_types.QDirModel, watched: gen_qobject_types.QObject, event: gen_qcoreevent_types.QEvent): bool =
  fcQDirModel_virtualbase_eventFilter(self.h, watched.h, event.h)

proc QDirModeltimerEvent*(self: gen_qdirmodel_types.QDirModel, event: gen_qcoreevent_types.QTimerEvent): void =
  fcQDirModel_virtualbase_timerEvent(self.h, event.h)

proc QDirModelchildEvent*(self: gen_qdirmodel_types.QDirModel, event: gen_qcoreevent_types.QChildEvent): void =
  fcQDirModel_virtualbase_childEvent(self.h, event.h)

proc QDirModelcustomEvent*(self: gen_qdirmodel_types.QDirModel, event: gen_qcoreevent_types.QEvent): void =
  fcQDirModel_virtualbase_customEvent(self.h, event.h)

proc QDirModelconnectNotify*(self: gen_qdirmodel_types.QDirModel, signal: gen_qmetaobject_types.QMetaMethod): void =
  fcQDirModel_virtualbase_connectNotify(self.h, signal.h)

proc QDirModeldisconnectNotify*(self: gen_qdirmodel_types.QDirModel, signal: gen_qmetaobject_types.QMetaMethod): void =
  fcQDirModel_virtualbase_disconnectNotify(self.h, signal.h)


proc fcQDirModel_vtable_callback_metaObject(self: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QDirModelVTable](fcQDirModel_vdata(self))
  let self = QDirModel(h: self)
  var virtualReturn = vtbl[].metaObject(self)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc fcQDirModel_vtable_callback_metacast(self: pointer, param1: cstring): pointer {.cdecl.} =
  let vtbl = cast[ptr QDirModelVTable](fcQDirModel_vdata(self))
  let self = QDirModel(h: self)
  let slotval1 = (param1)
  var virtualReturn = vtbl[].metacast(self, slotval1)
  virtualReturn

proc fcQDirModel_vtable_callback_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.cdecl.} =
  let vtbl = cast[ptr QDirModelVTable](fcQDirModel_vdata(self))
  let self = QDirModel(h: self)
  let slotval1 = cint(param1)
  let slotval2 = param2
  let slotval3 = param3
  var virtualReturn = vtbl[].metacall(self, slotval1, slotval2, slotval3)
  virtualReturn

proc fcQDirModel_vtable_callback_index(self: pointer, row: cint, column: cint, parent: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QDirModelVTable](fcQDirModel_vdata(self))
  let self = QDirModel(h: self)
  let slotval1 = row
  let slotval2 = column
  let slotval3 = gen_qabstractitemmodel_types.QModelIndex(h: parent, owned: false)
  var virtualReturn = vtbl[].index(self, slotval1, slotval2, slotval3)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc fcQDirModel_vtable_callback_parent(self: pointer, child: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QDirModelVTable](fcQDirModel_vdata(self))
  let self = QDirModel(h: self)
  let slotval1 = gen_qabstractitemmodel_types.QModelIndex(h: child, owned: false)
  var virtualReturn = vtbl[].parent(self, slotval1)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc fcQDirModel_vtable_callback_rowCount(self: pointer, parent: pointer): cint {.cdecl.} =
  let vtbl = cast[ptr QDirModelVTable](fcQDirModel_vdata(self))
  let self = QDirModel(h: self)
  let slotval1 = gen_qabstractitemmodel_types.QModelIndex(h: parent, owned: false)
  var virtualReturn = vtbl[].rowCount(self, slotval1)
  virtualReturn

proc fcQDirModel_vtable_callback_columnCount(self: pointer, parent: pointer): cint {.cdecl.} =
  let vtbl = cast[ptr QDirModelVTable](fcQDirModel_vdata(self))
  let self = QDirModel(h: self)
  let slotval1 = gen_qabstractitemmodel_types.QModelIndex(h: parent, owned: false)
  var virtualReturn = vtbl[].columnCount(self, slotval1)
  virtualReturn

proc fcQDirModel_vtable_callback_data(self: pointer, index: pointer, role: cint): pointer {.cdecl.} =
  let vtbl = cast[ptr QDirModelVTable](fcQDirModel_vdata(self))
  let self = QDirModel(h: self)
  let slotval1 = gen_qabstractitemmodel_types.QModelIndex(h: index, owned: false)
  let slotval2 = role
  var virtualReturn = vtbl[].data(self, slotval1, slotval2)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc fcQDirModel_vtable_callback_setData(self: pointer, index: pointer, value: pointer, role: cint): bool {.cdecl.} =
  let vtbl = cast[ptr QDirModelVTable](fcQDirModel_vdata(self))
  let self = QDirModel(h: self)
  let slotval1 = gen_qabstractitemmodel_types.QModelIndex(h: index, owned: false)
  let slotval2 = gen_qvariant_types.QVariant(h: value, owned: false)
  let slotval3 = role
  var virtualReturn = vtbl[].setData(self, slotval1, slotval2, slotval3)
  virtualReturn

proc fcQDirModel_vtable_callback_headerData(self: pointer, section: cint, orientation: cint, role: cint): pointer {.cdecl.} =
  let vtbl = cast[ptr QDirModelVTable](fcQDirModel_vdata(self))
  let self = QDirModel(h: self)
  let slotval1 = section
  let slotval2 = cint(orientation)
  let slotval3 = role
  var virtualReturn = vtbl[].headerData(self, slotval1, slotval2, slotval3)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc fcQDirModel_vtable_callback_hasChildren(self: pointer, index: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QDirModelVTable](fcQDirModel_vdata(self))
  let self = QDirModel(h: self)
  let slotval1 = gen_qabstractitemmodel_types.QModelIndex(h: index, owned: false)
  var virtualReturn = vtbl[].hasChildren(self, slotval1)
  virtualReturn

proc fcQDirModel_vtable_callback_flags(self: pointer, index: pointer): cint {.cdecl.} =
  let vtbl = cast[ptr QDirModelVTable](fcQDirModel_vdata(self))
  let self = QDirModel(h: self)
  let slotval1 = gen_qabstractitemmodel_types.QModelIndex(h: index, owned: false)
  var virtualReturn = vtbl[].flags(self, slotval1)
  cint(virtualReturn)

proc fcQDirModel_vtable_callback_sort(self: pointer, column: cint, order: cint): void {.cdecl.} =
  let vtbl = cast[ptr QDirModelVTable](fcQDirModel_vdata(self))
  let self = QDirModel(h: self)
  let slotval1 = column
  let slotval2 = cint(order)
  vtbl[].sort(self, slotval1, slotval2)

proc fcQDirModel_vtable_callback_mimeTypes(self: pointer): struct_miqt_array {.cdecl.} =
  let vtbl = cast[ptr QDirModelVTable](fcQDirModel_vdata(self))
  let self = QDirModel(h: self)
  var virtualReturn = vtbl[].mimeTypes(self)
  var virtualReturn_CArray = cast[ptr UncheckedArray[struct_miqt_string]](if len(virtualReturn) > 0: c_malloc(c_sizet(sizeof(struct_miqt_string) * len(virtualReturn))) else: nil)
  for i in 0..<len(virtualReturn):
    var virtualReturn_i_copy = cast[cstring](if len(virtualReturn[i]) > 0: c_malloc(csize_t(len(virtualReturn[i]))) else: nil)
    if len(virtualReturn[i]) > 0: copyMem(cast[pointer](virtualReturn_i_copy), addr virtualReturn[i][0], csize_t(len(virtualReturn[i])))
    virtualReturn_CArray[i] = struct_miqt_string(data: virtualReturn_i_copy, len: csize_t(len(virtualReturn[i])))

  struct_miqt_array(len: csize_t(len(virtualReturn)), data: if len(virtualReturn) == 0: nil else: addr(virtualReturn_CArray[0]))

proc fcQDirModel_vtable_callback_mimeData(self: pointer, indexes: struct_miqt_array): pointer {.cdecl.} =
  let vtbl = cast[ptr QDirModelVTable](fcQDirModel_vdata(self))
  let self = QDirModel(h: self)
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

proc fcQDirModel_vtable_callback_dropMimeData(self: pointer, data: pointer, action: cint, row: cint, column: cint, parent: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QDirModelVTable](fcQDirModel_vdata(self))
  let self = QDirModel(h: self)
  let slotval1 = gen_qmimedata_types.QMimeData(h: data, owned: false)
  let slotval2 = cint(action)
  let slotval3 = row
  let slotval4 = column
  let slotval5 = gen_qabstractitemmodel_types.QModelIndex(h: parent, owned: false)
  var virtualReturn = vtbl[].dropMimeData(self, slotval1, slotval2, slotval3, slotval4, slotval5)
  virtualReturn

proc fcQDirModel_vtable_callback_supportedDropActions(self: pointer): cint {.cdecl.} =
  let vtbl = cast[ptr QDirModelVTable](fcQDirModel_vdata(self))
  let self = QDirModel(h: self)
  var virtualReturn = vtbl[].supportedDropActions(self)
  cint(virtualReturn)

proc fcQDirModel_vtable_callback_sibling(self: pointer, row: cint, column: cint, idx: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QDirModelVTable](fcQDirModel_vdata(self))
  let self = QDirModel(h: self)
  let slotval1 = row
  let slotval2 = column
  let slotval3 = gen_qabstractitemmodel_types.QModelIndex(h: idx, owned: false)
  var virtualReturn = vtbl[].sibling(self, slotval1, slotval2, slotval3)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc fcQDirModel_vtable_callback_setHeaderData(self: pointer, section: cint, orientation: cint, value: pointer, role: cint): bool {.cdecl.} =
  let vtbl = cast[ptr QDirModelVTable](fcQDirModel_vdata(self))
  let self = QDirModel(h: self)
  let slotval1 = section
  let slotval2 = cint(orientation)
  let slotval3 = gen_qvariant_types.QVariant(h: value, owned: false)
  let slotval4 = role
  var virtualReturn = vtbl[].setHeaderData(self, slotval1, slotval2, slotval3, slotval4)
  virtualReturn

proc fcQDirModel_vtable_callback_itemData(self: pointer, index: pointer): struct_miqt_map {.cdecl.} =
  let vtbl = cast[ptr QDirModelVTable](fcQDirModel_vdata(self))
  let self = QDirModel(h: self)
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

proc fcQDirModel_vtable_callback_setItemData(self: pointer, index: pointer, roles: struct_miqt_map): bool {.cdecl.} =
  let vtbl = cast[ptr QDirModelVTable](fcQDirModel_vdata(self))
  let self = QDirModel(h: self)
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

proc fcQDirModel_vtable_callback_canDropMimeData(self: pointer, data: pointer, action: cint, row: cint, column: cint, parent: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QDirModelVTable](fcQDirModel_vdata(self))
  let self = QDirModel(h: self)
  let slotval1 = gen_qmimedata_types.QMimeData(h: data, owned: false)
  let slotval2 = cint(action)
  let slotval3 = row
  let slotval4 = column
  let slotval5 = gen_qabstractitemmodel_types.QModelIndex(h: parent, owned: false)
  var virtualReturn = vtbl[].canDropMimeData(self, slotval1, slotval2, slotval3, slotval4, slotval5)
  virtualReturn

proc fcQDirModel_vtable_callback_supportedDragActions(self: pointer): cint {.cdecl.} =
  let vtbl = cast[ptr QDirModelVTable](fcQDirModel_vdata(self))
  let self = QDirModel(h: self)
  var virtualReturn = vtbl[].supportedDragActions(self)
  cint(virtualReturn)

proc fcQDirModel_vtable_callback_insertRows(self: pointer, row: cint, count: cint, parent: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QDirModelVTable](fcQDirModel_vdata(self))
  let self = QDirModel(h: self)
  let slotval1 = row
  let slotval2 = count
  let slotval3 = gen_qabstractitemmodel_types.QModelIndex(h: parent, owned: false)
  var virtualReturn = vtbl[].insertRows(self, slotval1, slotval2, slotval3)
  virtualReturn

proc fcQDirModel_vtable_callback_insertColumns(self: pointer, column: cint, count: cint, parent: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QDirModelVTable](fcQDirModel_vdata(self))
  let self = QDirModel(h: self)
  let slotval1 = column
  let slotval2 = count
  let slotval3 = gen_qabstractitemmodel_types.QModelIndex(h: parent, owned: false)
  var virtualReturn = vtbl[].insertColumns(self, slotval1, slotval2, slotval3)
  virtualReturn

proc fcQDirModel_vtable_callback_removeRows(self: pointer, row: cint, count: cint, parent: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QDirModelVTable](fcQDirModel_vdata(self))
  let self = QDirModel(h: self)
  let slotval1 = row
  let slotval2 = count
  let slotval3 = gen_qabstractitemmodel_types.QModelIndex(h: parent, owned: false)
  var virtualReturn = vtbl[].removeRows(self, slotval1, slotval2, slotval3)
  virtualReturn

proc fcQDirModel_vtable_callback_removeColumns(self: pointer, column: cint, count: cint, parent: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QDirModelVTable](fcQDirModel_vdata(self))
  let self = QDirModel(h: self)
  let slotval1 = column
  let slotval2 = count
  let slotval3 = gen_qabstractitemmodel_types.QModelIndex(h: parent, owned: false)
  var virtualReturn = vtbl[].removeColumns(self, slotval1, slotval2, slotval3)
  virtualReturn

proc fcQDirModel_vtable_callback_moveRows(self: pointer, sourceParent: pointer, sourceRow: cint, count: cint, destinationParent: pointer, destinationChild: cint): bool {.cdecl.} =
  let vtbl = cast[ptr QDirModelVTable](fcQDirModel_vdata(self))
  let self = QDirModel(h: self)
  let slotval1 = gen_qabstractitemmodel_types.QModelIndex(h: sourceParent, owned: false)
  let slotval2 = sourceRow
  let slotval3 = count
  let slotval4 = gen_qabstractitemmodel_types.QModelIndex(h: destinationParent, owned: false)
  let slotval5 = destinationChild
  var virtualReturn = vtbl[].moveRows(self, slotval1, slotval2, slotval3, slotval4, slotval5)
  virtualReturn

proc fcQDirModel_vtable_callback_moveColumns(self: pointer, sourceParent: pointer, sourceColumn: cint, count: cint, destinationParent: pointer, destinationChild: cint): bool {.cdecl.} =
  let vtbl = cast[ptr QDirModelVTable](fcQDirModel_vdata(self))
  let self = QDirModel(h: self)
  let slotval1 = gen_qabstractitemmodel_types.QModelIndex(h: sourceParent, owned: false)
  let slotval2 = sourceColumn
  let slotval3 = count
  let slotval4 = gen_qabstractitemmodel_types.QModelIndex(h: destinationParent, owned: false)
  let slotval5 = destinationChild
  var virtualReturn = vtbl[].moveColumns(self, slotval1, slotval2, slotval3, slotval4, slotval5)
  virtualReturn

proc fcQDirModel_vtable_callback_fetchMore(self: pointer, parent: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QDirModelVTable](fcQDirModel_vdata(self))
  let self = QDirModel(h: self)
  let slotval1 = gen_qabstractitemmodel_types.QModelIndex(h: parent, owned: false)
  vtbl[].fetchMore(self, slotval1)

proc fcQDirModel_vtable_callback_canFetchMore(self: pointer, parent: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QDirModelVTable](fcQDirModel_vdata(self))
  let self = QDirModel(h: self)
  let slotval1 = gen_qabstractitemmodel_types.QModelIndex(h: parent, owned: false)
  var virtualReturn = vtbl[].canFetchMore(self, slotval1)
  virtualReturn

proc fcQDirModel_vtable_callback_buddy(self: pointer, index: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QDirModelVTable](fcQDirModel_vdata(self))
  let self = QDirModel(h: self)
  let slotval1 = gen_qabstractitemmodel_types.QModelIndex(h: index, owned: false)
  var virtualReturn = vtbl[].buddy(self, slotval1)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc fcQDirModel_vtable_callback_match(self: pointer, start: pointer, role: cint, value: pointer, hits: cint, flags: cint): struct_miqt_array {.cdecl.} =
  let vtbl = cast[ptr QDirModelVTable](fcQDirModel_vdata(self))
  let self = QDirModel(h: self)
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

proc fcQDirModel_vtable_callback_span(self: pointer, index: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QDirModelVTable](fcQDirModel_vdata(self))
  let self = QDirModel(h: self)
  let slotval1 = gen_qabstractitemmodel_types.QModelIndex(h: index, owned: false)
  var virtualReturn = vtbl[].span(self, slotval1)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc fcQDirModel_vtable_callback_roleNames(self: pointer): struct_miqt_map {.cdecl.} =
  let vtbl = cast[ptr QDirModelVTable](fcQDirModel_vdata(self))
  let self = QDirModel(h: self)
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

proc fcQDirModel_vtable_callback_submit(self: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QDirModelVTable](fcQDirModel_vdata(self))
  let self = QDirModel(h: self)
  var virtualReturn = vtbl[].submit(self)
  virtualReturn

proc fcQDirModel_vtable_callback_revert(self: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QDirModelVTable](fcQDirModel_vdata(self))
  let self = QDirModel(h: self)
  vtbl[].revert(self)

proc fcQDirModel_vtable_callback_event(self: pointer, event: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QDirModelVTable](fcQDirModel_vdata(self))
  let self = QDirModel(h: self)
  let slotval1 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  var virtualReturn = vtbl[].event(self, slotval1)
  virtualReturn

proc fcQDirModel_vtable_callback_eventFilter(self: pointer, watched: pointer, event: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QDirModelVTable](fcQDirModel_vdata(self))
  let self = QDirModel(h: self)
  let slotval1 = gen_qobject_types.QObject(h: watched, owned: false)
  let slotval2 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  var virtualReturn = vtbl[].eventFilter(self, slotval1, slotval2)
  virtualReturn

proc fcQDirModel_vtable_callback_timerEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QDirModelVTable](fcQDirModel_vdata(self))
  let self = QDirModel(h: self)
  let slotval1 = gen_qcoreevent_types.QTimerEvent(h: event, owned: false)
  vtbl[].timerEvent(self, slotval1)

proc fcQDirModel_vtable_callback_childEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QDirModelVTable](fcQDirModel_vdata(self))
  let self = QDirModel(h: self)
  let slotval1 = gen_qcoreevent_types.QChildEvent(h: event, owned: false)
  vtbl[].childEvent(self, slotval1)

proc fcQDirModel_vtable_callback_customEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QDirModelVTable](fcQDirModel_vdata(self))
  let self = QDirModel(h: self)
  let slotval1 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  vtbl[].customEvent(self, slotval1)

proc fcQDirModel_vtable_callback_connectNotify(self: pointer, signal: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QDirModelVTable](fcQDirModel_vdata(self))
  let self = QDirModel(h: self)
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal, owned: false)
  vtbl[].connectNotify(self, slotval1)

proc fcQDirModel_vtable_callback_disconnectNotify(self: pointer, signal: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QDirModelVTable](fcQDirModel_vdata(self))
  let self = QDirModel(h: self)
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal, owned: false)
  vtbl[].disconnectNotify(self, slotval1)

type VirtualQDirModel* {.inheritable.} = ref object of QDirModel
  vtbl*: cQDirModelVTable

method metaObject*(self: VirtualQDirModel): gen_qobjectdefs_types.QMetaObject {.base.} =
  QDirModelmetaObject(self[])
method metacast*(self: VirtualQDirModel, param1: cstring): pointer {.base.} =
  QDirModelmetacast(self[], param1)
method metacall*(self: VirtualQDirModel, param1: cint, param2: cint, param3: pointer): cint {.base.} =
  QDirModelmetacall(self[], param1, param2, param3)
method index*(self: VirtualQDirModel, row: cint, column: cint, parent: gen_qabstractitemmodel_types.QModelIndex): gen_qabstractitemmodel_types.QModelIndex {.base.} =
  QDirModelindex(self[], row, column, parent)
method parent*(self: VirtualQDirModel, child: gen_qabstractitemmodel_types.QModelIndex): gen_qabstractitemmodel_types.QModelIndex {.base.} =
  QDirModelparent(self[], child)
method rowCount*(self: VirtualQDirModel, parent: gen_qabstractitemmodel_types.QModelIndex): cint {.base.} =
  QDirModelrowCount(self[], parent)
method columnCount*(self: VirtualQDirModel, parent: gen_qabstractitemmodel_types.QModelIndex): cint {.base.} =
  QDirModelcolumnCount(self[], parent)
method data*(self: VirtualQDirModel, index: gen_qabstractitemmodel_types.QModelIndex, role: cint): gen_qvariant_types.QVariant {.base.} =
  QDirModeldata(self[], index, role)
method setData*(self: VirtualQDirModel, index: gen_qabstractitemmodel_types.QModelIndex, value: gen_qvariant_types.QVariant, role: cint): bool {.base.} =
  QDirModelsetData(self[], index, value, role)
method headerData*(self: VirtualQDirModel, section: cint, orientation: cint, role: cint): gen_qvariant_types.QVariant {.base.} =
  QDirModelheaderData(self[], section, orientation, role)
method hasChildren*(self: VirtualQDirModel, index: gen_qabstractitemmodel_types.QModelIndex): bool {.base.} =
  QDirModelhasChildren(self[], index)
method flags*(self: VirtualQDirModel, index: gen_qabstractitemmodel_types.QModelIndex): cint {.base.} =
  QDirModelflags(self[], index)
method sort*(self: VirtualQDirModel, column: cint, order: cint): void {.base.} =
  QDirModelsort(self[], column, order)
method mimeTypes*(self: VirtualQDirModel): seq[string] {.base.} =
  QDirModelmimeTypes(self[])
method mimeData*(self: VirtualQDirModel, indexes: openArray[gen_qabstractitemmodel_types.QModelIndex]): gen_qmimedata_types.QMimeData {.base.} =
  QDirModelmimeData(self[], indexes)
method dropMimeData*(self: VirtualQDirModel, data: gen_qmimedata_types.QMimeData, action: cint, row: cint, column: cint, parent: gen_qabstractitemmodel_types.QModelIndex): bool {.base.} =
  QDirModeldropMimeData(self[], data, action, row, column, parent)
method supportedDropActions*(self: VirtualQDirModel): cint {.base.} =
  QDirModelsupportedDropActions(self[])
method sibling*(self: VirtualQDirModel, row: cint, column: cint, idx: gen_qabstractitemmodel_types.QModelIndex): gen_qabstractitemmodel_types.QModelIndex {.base.} =
  QDirModelsibling(self[], row, column, idx)
method setHeaderData*(self: VirtualQDirModel, section: cint, orientation: cint, value: gen_qvariant_types.QVariant, role: cint): bool {.base.} =
  QDirModelsetHeaderData(self[], section, orientation, value, role)
method itemData*(self: VirtualQDirModel, index: gen_qabstractitemmodel_types.QModelIndex): Table[cint,gen_qvariant_types.QVariant] {.base.} =
  QDirModelitemData(self[], index)
method setItemData*(self: VirtualQDirModel, index: gen_qabstractitemmodel_types.QModelIndex, roles: Table[cint,gen_qvariant_types.QVariant]): bool {.base.} =
  QDirModelsetItemData(self[], index, roles)
method canDropMimeData*(self: VirtualQDirModel, data: gen_qmimedata_types.QMimeData, action: cint, row: cint, column: cint, parent: gen_qabstractitemmodel_types.QModelIndex): bool {.base.} =
  QDirModelcanDropMimeData(self[], data, action, row, column, parent)
method supportedDragActions*(self: VirtualQDirModel): cint {.base.} =
  QDirModelsupportedDragActions(self[])
method insertRows*(self: VirtualQDirModel, row: cint, count: cint, parent: gen_qabstractitemmodel_types.QModelIndex): bool {.base.} =
  QDirModelinsertRows(self[], row, count, parent)
method insertColumns*(self: VirtualQDirModel, column: cint, count: cint, parent: gen_qabstractitemmodel_types.QModelIndex): bool {.base.} =
  QDirModelinsertColumns(self[], column, count, parent)
method removeRows*(self: VirtualQDirModel, row: cint, count: cint, parent: gen_qabstractitemmodel_types.QModelIndex): bool {.base.} =
  QDirModelremoveRows(self[], row, count, parent)
method removeColumns*(self: VirtualQDirModel, column: cint, count: cint, parent: gen_qabstractitemmodel_types.QModelIndex): bool {.base.} =
  QDirModelremoveColumns(self[], column, count, parent)
method moveRows*(self: VirtualQDirModel, sourceParent: gen_qabstractitemmodel_types.QModelIndex, sourceRow: cint, count: cint, destinationParent: gen_qabstractitemmodel_types.QModelIndex, destinationChild: cint): bool {.base.} =
  QDirModelmoveRows(self[], sourceParent, sourceRow, count, destinationParent, destinationChild)
method moveColumns*(self: VirtualQDirModel, sourceParent: gen_qabstractitemmodel_types.QModelIndex, sourceColumn: cint, count: cint, destinationParent: gen_qabstractitemmodel_types.QModelIndex, destinationChild: cint): bool {.base.} =
  QDirModelmoveColumns(self[], sourceParent, sourceColumn, count, destinationParent, destinationChild)
method fetchMore*(self: VirtualQDirModel, parent: gen_qabstractitemmodel_types.QModelIndex): void {.base.} =
  QDirModelfetchMore(self[], parent)
method canFetchMore*(self: VirtualQDirModel, parent: gen_qabstractitemmodel_types.QModelIndex): bool {.base.} =
  QDirModelcanFetchMore(self[], parent)
method buddy*(self: VirtualQDirModel, index: gen_qabstractitemmodel_types.QModelIndex): gen_qabstractitemmodel_types.QModelIndex {.base.} =
  QDirModelbuddy(self[], index)
method match*(self: VirtualQDirModel, start: gen_qabstractitemmodel_types.QModelIndex, role: cint, value: gen_qvariant_types.QVariant, hits: cint, flags: cint): seq[gen_qabstractitemmodel_types.QModelIndex] {.base.} =
  QDirModelmatch(self[], start, role, value, hits, flags)
method span*(self: VirtualQDirModel, index: gen_qabstractitemmodel_types.QModelIndex): gen_qsize_types.QSize {.base.} =
  QDirModelspan(self[], index)
method roleNames*(self: VirtualQDirModel): Table[cint,seq[byte]] {.base.} =
  QDirModelroleNames(self[])
method submit*(self: VirtualQDirModel): bool {.base.} =
  QDirModelsubmit(self[])
method revert*(self: VirtualQDirModel): void {.base.} =
  QDirModelrevert(self[])
method event*(self: VirtualQDirModel, event: gen_qcoreevent_types.QEvent): bool {.base.} =
  QDirModelevent(self[], event)
method eventFilter*(self: VirtualQDirModel, watched: gen_qobject_types.QObject, event: gen_qcoreevent_types.QEvent): bool {.base.} =
  QDirModeleventFilter(self[], watched, event)
method timerEvent*(self: VirtualQDirModel, event: gen_qcoreevent_types.QTimerEvent): void {.base.} =
  QDirModeltimerEvent(self[], event)
method childEvent*(self: VirtualQDirModel, event: gen_qcoreevent_types.QChildEvent): void {.base.} =
  QDirModelchildEvent(self[], event)
method customEvent*(self: VirtualQDirModel, event: gen_qcoreevent_types.QEvent): void {.base.} =
  QDirModelcustomEvent(self[], event)
method connectNotify*(self: VirtualQDirModel, signal: gen_qmetaobject_types.QMetaMethod): void {.base.} =
  QDirModelconnectNotify(self[], signal)
method disconnectNotify*(self: VirtualQDirModel, signal: gen_qmetaobject_types.QMetaMethod): void {.base.} =
  QDirModeldisconnectNotify(self[], signal)

proc fcQDirModel_method_callback_metaObject(self: pointer): pointer {.cdecl.} =
  let inst = cast[VirtualQDirModel](fcQDirModel_vdata(self))
  var virtualReturn = inst.metaObject()
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc fcQDirModel_method_callback_metacast(self: pointer, param1: cstring): pointer {.cdecl.} =
  let inst = cast[VirtualQDirModel](fcQDirModel_vdata(self))
  let slotval1 = (param1)
  var virtualReturn = inst.metacast(slotval1)
  virtualReturn

proc fcQDirModel_method_callback_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.cdecl.} =
  let inst = cast[VirtualQDirModel](fcQDirModel_vdata(self))
  let slotval1 = cint(param1)
  let slotval2 = param2
  let slotval3 = param3
  var virtualReturn = inst.metacall(slotval1, slotval2, slotval3)
  virtualReturn

proc fcQDirModel_method_callback_index(self: pointer, row: cint, column: cint, parent: pointer): pointer {.cdecl.} =
  let inst = cast[VirtualQDirModel](fcQDirModel_vdata(self))
  let slotval1 = row
  let slotval2 = column
  let slotval3 = gen_qabstractitemmodel_types.QModelIndex(h: parent, owned: false)
  var virtualReturn = inst.index(slotval1, slotval2, slotval3)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc fcQDirModel_method_callback_parent(self: pointer, child: pointer): pointer {.cdecl.} =
  let inst = cast[VirtualQDirModel](fcQDirModel_vdata(self))
  let slotval1 = gen_qabstractitemmodel_types.QModelIndex(h: child, owned: false)
  var virtualReturn = inst.parent(slotval1)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc fcQDirModel_method_callback_rowCount(self: pointer, parent: pointer): cint {.cdecl.} =
  let inst = cast[VirtualQDirModel](fcQDirModel_vdata(self))
  let slotval1 = gen_qabstractitemmodel_types.QModelIndex(h: parent, owned: false)
  var virtualReturn = inst.rowCount(slotval1)
  virtualReturn

proc fcQDirModel_method_callback_columnCount(self: pointer, parent: pointer): cint {.cdecl.} =
  let inst = cast[VirtualQDirModel](fcQDirModel_vdata(self))
  let slotval1 = gen_qabstractitemmodel_types.QModelIndex(h: parent, owned: false)
  var virtualReturn = inst.columnCount(slotval1)
  virtualReturn

proc fcQDirModel_method_callback_data(self: pointer, index: pointer, role: cint): pointer {.cdecl.} =
  let inst = cast[VirtualQDirModel](fcQDirModel_vdata(self))
  let slotval1 = gen_qabstractitemmodel_types.QModelIndex(h: index, owned: false)
  let slotval2 = role
  var virtualReturn = inst.data(slotval1, slotval2)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc fcQDirModel_method_callback_setData(self: pointer, index: pointer, value: pointer, role: cint): bool {.cdecl.} =
  let inst = cast[VirtualQDirModel](fcQDirModel_vdata(self))
  let slotval1 = gen_qabstractitemmodel_types.QModelIndex(h: index, owned: false)
  let slotval2 = gen_qvariant_types.QVariant(h: value, owned: false)
  let slotval3 = role
  var virtualReturn = inst.setData(slotval1, slotval2, slotval3)
  virtualReturn

proc fcQDirModel_method_callback_headerData(self: pointer, section: cint, orientation: cint, role: cint): pointer {.cdecl.} =
  let inst = cast[VirtualQDirModel](fcQDirModel_vdata(self))
  let slotval1 = section
  let slotval2 = cint(orientation)
  let slotval3 = role
  var virtualReturn = inst.headerData(slotval1, slotval2, slotval3)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc fcQDirModel_method_callback_hasChildren(self: pointer, index: pointer): bool {.cdecl.} =
  let inst = cast[VirtualQDirModel](fcQDirModel_vdata(self))
  let slotval1 = gen_qabstractitemmodel_types.QModelIndex(h: index, owned: false)
  var virtualReturn = inst.hasChildren(slotval1)
  virtualReturn

proc fcQDirModel_method_callback_flags(self: pointer, index: pointer): cint {.cdecl.} =
  let inst = cast[VirtualQDirModel](fcQDirModel_vdata(self))
  let slotval1 = gen_qabstractitemmodel_types.QModelIndex(h: index, owned: false)
  var virtualReturn = inst.flags(slotval1)
  cint(virtualReturn)

proc fcQDirModel_method_callback_sort(self: pointer, column: cint, order: cint): void {.cdecl.} =
  let inst = cast[VirtualQDirModel](fcQDirModel_vdata(self))
  let slotval1 = column
  let slotval2 = cint(order)
  inst.sort(slotval1, slotval2)

proc fcQDirModel_method_callback_mimeTypes(self: pointer): struct_miqt_array {.cdecl.} =
  let inst = cast[VirtualQDirModel](fcQDirModel_vdata(self))
  var virtualReturn = inst.mimeTypes()
  var virtualReturn_CArray = cast[ptr UncheckedArray[struct_miqt_string]](if len(virtualReturn) > 0: c_malloc(c_sizet(sizeof(struct_miqt_string) * len(virtualReturn))) else: nil)
  for i in 0..<len(virtualReturn):
    var virtualReturn_i_copy = cast[cstring](if len(virtualReturn[i]) > 0: c_malloc(csize_t(len(virtualReturn[i]))) else: nil)
    if len(virtualReturn[i]) > 0: copyMem(cast[pointer](virtualReturn_i_copy), addr virtualReturn[i][0], csize_t(len(virtualReturn[i])))
    virtualReturn_CArray[i] = struct_miqt_string(data: virtualReturn_i_copy, len: csize_t(len(virtualReturn[i])))

  struct_miqt_array(len: csize_t(len(virtualReturn)), data: if len(virtualReturn) == 0: nil else: addr(virtualReturn_CArray[0]))

proc fcQDirModel_method_callback_mimeData(self: pointer, indexes: struct_miqt_array): pointer {.cdecl.} =
  let inst = cast[VirtualQDirModel](fcQDirModel_vdata(self))
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

proc fcQDirModel_method_callback_dropMimeData(self: pointer, data: pointer, action: cint, row: cint, column: cint, parent: pointer): bool {.cdecl.} =
  let inst = cast[VirtualQDirModel](fcQDirModel_vdata(self))
  let slotval1 = gen_qmimedata_types.QMimeData(h: data, owned: false)
  let slotval2 = cint(action)
  let slotval3 = row
  let slotval4 = column
  let slotval5 = gen_qabstractitemmodel_types.QModelIndex(h: parent, owned: false)
  var virtualReturn = inst.dropMimeData(slotval1, slotval2, slotval3, slotval4, slotval5)
  virtualReturn

proc fcQDirModel_method_callback_supportedDropActions(self: pointer): cint {.cdecl.} =
  let inst = cast[VirtualQDirModel](fcQDirModel_vdata(self))
  var virtualReturn = inst.supportedDropActions()
  cint(virtualReturn)

proc fcQDirModel_method_callback_sibling(self: pointer, row: cint, column: cint, idx: pointer): pointer {.cdecl.} =
  let inst = cast[VirtualQDirModel](fcQDirModel_vdata(self))
  let slotval1 = row
  let slotval2 = column
  let slotval3 = gen_qabstractitemmodel_types.QModelIndex(h: idx, owned: false)
  var virtualReturn = inst.sibling(slotval1, slotval2, slotval3)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc fcQDirModel_method_callback_setHeaderData(self: pointer, section: cint, orientation: cint, value: pointer, role: cint): bool {.cdecl.} =
  let inst = cast[VirtualQDirModel](fcQDirModel_vdata(self))
  let slotval1 = section
  let slotval2 = cint(orientation)
  let slotval3 = gen_qvariant_types.QVariant(h: value, owned: false)
  let slotval4 = role
  var virtualReturn = inst.setHeaderData(slotval1, slotval2, slotval3, slotval4)
  virtualReturn

proc fcQDirModel_method_callback_itemData(self: pointer, index: pointer): struct_miqt_map {.cdecl.} =
  let inst = cast[VirtualQDirModel](fcQDirModel_vdata(self))
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

proc fcQDirModel_method_callback_setItemData(self: pointer, index: pointer, roles: struct_miqt_map): bool {.cdecl.} =
  let inst = cast[VirtualQDirModel](fcQDirModel_vdata(self))
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

proc fcQDirModel_method_callback_canDropMimeData(self: pointer, data: pointer, action: cint, row: cint, column: cint, parent: pointer): bool {.cdecl.} =
  let inst = cast[VirtualQDirModel](fcQDirModel_vdata(self))
  let slotval1 = gen_qmimedata_types.QMimeData(h: data, owned: false)
  let slotval2 = cint(action)
  let slotval3 = row
  let slotval4 = column
  let slotval5 = gen_qabstractitemmodel_types.QModelIndex(h: parent, owned: false)
  var virtualReturn = inst.canDropMimeData(slotval1, slotval2, slotval3, slotval4, slotval5)
  virtualReturn

proc fcQDirModel_method_callback_supportedDragActions(self: pointer): cint {.cdecl.} =
  let inst = cast[VirtualQDirModel](fcQDirModel_vdata(self))
  var virtualReturn = inst.supportedDragActions()
  cint(virtualReturn)

proc fcQDirModel_method_callback_insertRows(self: pointer, row: cint, count: cint, parent: pointer): bool {.cdecl.} =
  let inst = cast[VirtualQDirModel](fcQDirModel_vdata(self))
  let slotval1 = row
  let slotval2 = count
  let slotval3 = gen_qabstractitemmodel_types.QModelIndex(h: parent, owned: false)
  var virtualReturn = inst.insertRows(slotval1, slotval2, slotval3)
  virtualReturn

proc fcQDirModel_method_callback_insertColumns(self: pointer, column: cint, count: cint, parent: pointer): bool {.cdecl.} =
  let inst = cast[VirtualQDirModel](fcQDirModel_vdata(self))
  let slotval1 = column
  let slotval2 = count
  let slotval3 = gen_qabstractitemmodel_types.QModelIndex(h: parent, owned: false)
  var virtualReturn = inst.insertColumns(slotval1, slotval2, slotval3)
  virtualReturn

proc fcQDirModel_method_callback_removeRows(self: pointer, row: cint, count: cint, parent: pointer): bool {.cdecl.} =
  let inst = cast[VirtualQDirModel](fcQDirModel_vdata(self))
  let slotval1 = row
  let slotval2 = count
  let slotval3 = gen_qabstractitemmodel_types.QModelIndex(h: parent, owned: false)
  var virtualReturn = inst.removeRows(slotval1, slotval2, slotval3)
  virtualReturn

proc fcQDirModel_method_callback_removeColumns(self: pointer, column: cint, count: cint, parent: pointer): bool {.cdecl.} =
  let inst = cast[VirtualQDirModel](fcQDirModel_vdata(self))
  let slotval1 = column
  let slotval2 = count
  let slotval3 = gen_qabstractitemmodel_types.QModelIndex(h: parent, owned: false)
  var virtualReturn = inst.removeColumns(slotval1, slotval2, slotval3)
  virtualReturn

proc fcQDirModel_method_callback_moveRows(self: pointer, sourceParent: pointer, sourceRow: cint, count: cint, destinationParent: pointer, destinationChild: cint): bool {.cdecl.} =
  let inst = cast[VirtualQDirModel](fcQDirModel_vdata(self))
  let slotval1 = gen_qabstractitemmodel_types.QModelIndex(h: sourceParent, owned: false)
  let slotval2 = sourceRow
  let slotval3 = count
  let slotval4 = gen_qabstractitemmodel_types.QModelIndex(h: destinationParent, owned: false)
  let slotval5 = destinationChild
  var virtualReturn = inst.moveRows(slotval1, slotval2, slotval3, slotval4, slotval5)
  virtualReturn

proc fcQDirModel_method_callback_moveColumns(self: pointer, sourceParent: pointer, sourceColumn: cint, count: cint, destinationParent: pointer, destinationChild: cint): bool {.cdecl.} =
  let inst = cast[VirtualQDirModel](fcQDirModel_vdata(self))
  let slotval1 = gen_qabstractitemmodel_types.QModelIndex(h: sourceParent, owned: false)
  let slotval2 = sourceColumn
  let slotval3 = count
  let slotval4 = gen_qabstractitemmodel_types.QModelIndex(h: destinationParent, owned: false)
  let slotval5 = destinationChild
  var virtualReturn = inst.moveColumns(slotval1, slotval2, slotval3, slotval4, slotval5)
  virtualReturn

proc fcQDirModel_method_callback_fetchMore(self: pointer, parent: pointer): void {.cdecl.} =
  let inst = cast[VirtualQDirModel](fcQDirModel_vdata(self))
  let slotval1 = gen_qabstractitemmodel_types.QModelIndex(h: parent, owned: false)
  inst.fetchMore(slotval1)

proc fcQDirModel_method_callback_canFetchMore(self: pointer, parent: pointer): bool {.cdecl.} =
  let inst = cast[VirtualQDirModel](fcQDirModel_vdata(self))
  let slotval1 = gen_qabstractitemmodel_types.QModelIndex(h: parent, owned: false)
  var virtualReturn = inst.canFetchMore(slotval1)
  virtualReturn

proc fcQDirModel_method_callback_buddy(self: pointer, index: pointer): pointer {.cdecl.} =
  let inst = cast[VirtualQDirModel](fcQDirModel_vdata(self))
  let slotval1 = gen_qabstractitemmodel_types.QModelIndex(h: index, owned: false)
  var virtualReturn = inst.buddy(slotval1)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc fcQDirModel_method_callback_match(self: pointer, start: pointer, role: cint, value: pointer, hits: cint, flags: cint): struct_miqt_array {.cdecl.} =
  let inst = cast[VirtualQDirModel](fcQDirModel_vdata(self))
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

proc fcQDirModel_method_callback_span(self: pointer, index: pointer): pointer {.cdecl.} =
  let inst = cast[VirtualQDirModel](fcQDirModel_vdata(self))
  let slotval1 = gen_qabstractitemmodel_types.QModelIndex(h: index, owned: false)
  var virtualReturn = inst.span(slotval1)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc fcQDirModel_method_callback_roleNames(self: pointer): struct_miqt_map {.cdecl.} =
  let inst = cast[VirtualQDirModel](fcQDirModel_vdata(self))
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

proc fcQDirModel_method_callback_submit(self: pointer): bool {.cdecl.} =
  let inst = cast[VirtualQDirModel](fcQDirModel_vdata(self))
  var virtualReturn = inst.submit()
  virtualReturn

proc fcQDirModel_method_callback_revert(self: pointer): void {.cdecl.} =
  let inst = cast[VirtualQDirModel](fcQDirModel_vdata(self))
  inst.revert()

proc fcQDirModel_method_callback_event(self: pointer, event: pointer): bool {.cdecl.} =
  let inst = cast[VirtualQDirModel](fcQDirModel_vdata(self))
  let slotval1 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  var virtualReturn = inst.event(slotval1)
  virtualReturn

proc fcQDirModel_method_callback_eventFilter(self: pointer, watched: pointer, event: pointer): bool {.cdecl.} =
  let inst = cast[VirtualQDirModel](fcQDirModel_vdata(self))
  let slotval1 = gen_qobject_types.QObject(h: watched, owned: false)
  let slotval2 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  var virtualReturn = inst.eventFilter(slotval1, slotval2)
  virtualReturn

proc fcQDirModel_method_callback_timerEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQDirModel](fcQDirModel_vdata(self))
  let slotval1 = gen_qcoreevent_types.QTimerEvent(h: event, owned: false)
  inst.timerEvent(slotval1)

proc fcQDirModel_method_callback_childEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQDirModel](fcQDirModel_vdata(self))
  let slotval1 = gen_qcoreevent_types.QChildEvent(h: event, owned: false)
  inst.childEvent(slotval1)

proc fcQDirModel_method_callback_customEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQDirModel](fcQDirModel_vdata(self))
  let slotval1 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  inst.customEvent(slotval1)

proc fcQDirModel_method_callback_connectNotify(self: pointer, signal: pointer): void {.cdecl.} =
  let inst = cast[VirtualQDirModel](fcQDirModel_vdata(self))
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal, owned: false)
  inst.connectNotify(slotval1)

proc fcQDirModel_method_callback_disconnectNotify(self: pointer, signal: pointer): void {.cdecl.} =
  let inst = cast[VirtualQDirModel](fcQDirModel_vdata(self))
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal, owned: false)
  inst.disconnectNotify(slotval1)


proc resetInternalData*(self: gen_qdirmodel_types.QDirModel): void =
  fcQDirModel_protectedbase_resetInternalData(self.h)

proc createIndex*(self: gen_qdirmodel_types.QDirModel, row: cint, column: cint): gen_qabstractitemmodel_types.QModelIndex =
  gen_qabstractitemmodel_types.QModelIndex(h: fcQDirModel_protectedbase_createIndex(self.h, row, column), owned: true)

proc encodeData*(self: gen_qdirmodel_types.QDirModel, indexes: openArray[gen_qabstractitemmodel_types.QModelIndex], stream: gen_qdatastream_types.QDataStream): void =
  var indexes_CArray = newSeq[pointer](len(indexes))
  for i in 0..<len(indexes):
    indexes_CArray[i] = indexes[i].h

  fcQDirModel_protectedbase_encodeData(self.h, struct_miqt_array(len: csize_t(len(indexes)), data: if len(indexes) == 0: nil else: addr(indexes_CArray[0])), stream.h)

proc decodeData*(self: gen_qdirmodel_types.QDirModel, row: cint, column: cint, parent: gen_qabstractitemmodel_types.QModelIndex, stream: gen_qdatastream_types.QDataStream): bool =
  fcQDirModel_protectedbase_decodeData(self.h, row, column, parent.h, stream.h)

proc beginInsertRows*(self: gen_qdirmodel_types.QDirModel, parent: gen_qabstractitemmodel_types.QModelIndex, first: cint, last: cint): void =
  fcQDirModel_protectedbase_beginInsertRows(self.h, parent.h, first, last)

proc endInsertRows*(self: gen_qdirmodel_types.QDirModel): void =
  fcQDirModel_protectedbase_endInsertRows(self.h)

proc beginRemoveRows*(self: gen_qdirmodel_types.QDirModel, parent: gen_qabstractitemmodel_types.QModelIndex, first: cint, last: cint): void =
  fcQDirModel_protectedbase_beginRemoveRows(self.h, parent.h, first, last)

proc endRemoveRows*(self: gen_qdirmodel_types.QDirModel): void =
  fcQDirModel_protectedbase_endRemoveRows(self.h)

proc beginMoveRows*(self: gen_qdirmodel_types.QDirModel, sourceParent: gen_qabstractitemmodel_types.QModelIndex, sourceFirst: cint, sourceLast: cint, destinationParent: gen_qabstractitemmodel_types.QModelIndex, destinationRow: cint): bool =
  fcQDirModel_protectedbase_beginMoveRows(self.h, sourceParent.h, sourceFirst, sourceLast, destinationParent.h, destinationRow)

proc endMoveRows*(self: gen_qdirmodel_types.QDirModel): void =
  fcQDirModel_protectedbase_endMoveRows(self.h)

proc beginInsertColumns*(self: gen_qdirmodel_types.QDirModel, parent: gen_qabstractitemmodel_types.QModelIndex, first: cint, last: cint): void =
  fcQDirModel_protectedbase_beginInsertColumns(self.h, parent.h, first, last)

proc endInsertColumns*(self: gen_qdirmodel_types.QDirModel): void =
  fcQDirModel_protectedbase_endInsertColumns(self.h)

proc beginRemoveColumns*(self: gen_qdirmodel_types.QDirModel, parent: gen_qabstractitemmodel_types.QModelIndex, first: cint, last: cint): void =
  fcQDirModel_protectedbase_beginRemoveColumns(self.h, parent.h, first, last)

proc endRemoveColumns*(self: gen_qdirmodel_types.QDirModel): void =
  fcQDirModel_protectedbase_endRemoveColumns(self.h)

proc beginMoveColumns*(self: gen_qdirmodel_types.QDirModel, sourceParent: gen_qabstractitemmodel_types.QModelIndex, sourceFirst: cint, sourceLast: cint, destinationParent: gen_qabstractitemmodel_types.QModelIndex, destinationColumn: cint): bool =
  fcQDirModel_protectedbase_beginMoveColumns(self.h, sourceParent.h, sourceFirst, sourceLast, destinationParent.h, destinationColumn)

proc endMoveColumns*(self: gen_qdirmodel_types.QDirModel): void =
  fcQDirModel_protectedbase_endMoveColumns(self.h)

proc beginResetModel*(self: gen_qdirmodel_types.QDirModel): void =
  fcQDirModel_protectedbase_beginResetModel(self.h)

proc endResetModel*(self: gen_qdirmodel_types.QDirModel): void =
  fcQDirModel_protectedbase_endResetModel(self.h)

proc changePersistentIndex*(self: gen_qdirmodel_types.QDirModel, fromVal: gen_qabstractitemmodel_types.QModelIndex, to: gen_qabstractitemmodel_types.QModelIndex): void =
  fcQDirModel_protectedbase_changePersistentIndex(self.h, fromVal.h, to.h)

proc changePersistentIndexList*(self: gen_qdirmodel_types.QDirModel, fromVal: openArray[gen_qabstractitemmodel_types.QModelIndex], to: openArray[gen_qabstractitemmodel_types.QModelIndex]): void =
  var fromVal_CArray = newSeq[pointer](len(fromVal))
  for i in 0..<len(fromVal):
    fromVal_CArray[i] = fromVal[i].h

  var to_CArray = newSeq[pointer](len(to))
  for i in 0..<len(to):
    to_CArray[i] = to[i].h

  fcQDirModel_protectedbase_changePersistentIndexList(self.h, struct_miqt_array(len: csize_t(len(fromVal)), data: if len(fromVal) == 0: nil else: addr(fromVal_CArray[0])), struct_miqt_array(len: csize_t(len(to)), data: if len(to) == 0: nil else: addr(to_CArray[0])))

proc persistentIndexList*(self: gen_qdirmodel_types.QDirModel): seq[gen_qabstractitemmodel_types.QModelIndex] =
  var v_ma = fcQDirModel_protectedbase_persistentIndexList(self.h)
  var vx_ret = newSeq[gen_qabstractitemmodel_types.QModelIndex](int(v_ma.len))
  let v_outCast = cast[ptr UncheckedArray[pointer]](v_ma.data)
  for i in 0 ..< v_ma.len:
    vx_ret[i] = gen_qabstractitemmodel_types.QModelIndex(h: v_outCast[i], owned: true)
  c_free(v_ma.data)
  vx_ret

proc sender*(self: gen_qdirmodel_types.QDirModel): gen_qobject_types.QObject =
  gen_qobject_types.QObject(h: fcQDirModel_protectedbase_sender(self.h), owned: false)

proc senderSignalIndex*(self: gen_qdirmodel_types.QDirModel): cint =
  fcQDirModel_protectedbase_senderSignalIndex(self.h)

proc receivers*(self: gen_qdirmodel_types.QDirModel, signal: cstring): cint =
  fcQDirModel_protectedbase_receivers(self.h, signal)

proc isSignalConnected*(self: gen_qdirmodel_types.QDirModel, signal: gen_qmetaobject_types.QMetaMethod): bool =
  fcQDirModel_protectedbase_isSignalConnected(self.h, signal.h)

proc create*(T: type gen_qdirmodel_types.QDirModel,
    nameFilters: openArray[string], filters: cint, sort: cint,
    vtbl: ref QDirModelVTable = nil): gen_qdirmodel_types.QDirModel =
  var nameFilters_CArray = newSeq[struct_miqt_string](len(nameFilters))
  for i in 0..<len(nameFilters):
    nameFilters_CArray[i] = struct_miqt_string(data: if len(nameFilters[i]) > 0: addr nameFilters[i][0] else: nil, len: csize_t(len(nameFilters[i])))

  let vtbl = if vtbl == nil: new QDirModelVTable else: vtbl
  GC_ref(vtbl)
  vtbl[].vtbl.destructor = proc(self: pointer) {.cdecl.} =
    let vtbl = cast[ref QDirModelVTable](fcQDirModel_vdata(self))
    GC_unref(vtbl)
  if not isNil(vtbl[].metaObject):
    vtbl[].vtbl.metaObject = fcQDirModel_vtable_callback_metaObject
  if not isNil(vtbl[].metacast):
    vtbl[].vtbl.metacast = fcQDirModel_vtable_callback_metacast
  if not isNil(vtbl[].metacall):
    vtbl[].vtbl.metacall = fcQDirModel_vtable_callback_metacall
  if not isNil(vtbl[].index):
    vtbl[].vtbl.index = fcQDirModel_vtable_callback_index
  if not isNil(vtbl[].parent):
    vtbl[].vtbl.parent = fcQDirModel_vtable_callback_parent
  if not isNil(vtbl[].rowCount):
    vtbl[].vtbl.rowCount = fcQDirModel_vtable_callback_rowCount
  if not isNil(vtbl[].columnCount):
    vtbl[].vtbl.columnCount = fcQDirModel_vtable_callback_columnCount
  if not isNil(vtbl[].data):
    vtbl[].vtbl.data = fcQDirModel_vtable_callback_data
  if not isNil(vtbl[].setData):
    vtbl[].vtbl.setData = fcQDirModel_vtable_callback_setData
  if not isNil(vtbl[].headerData):
    vtbl[].vtbl.headerData = fcQDirModel_vtable_callback_headerData
  if not isNil(vtbl[].hasChildren):
    vtbl[].vtbl.hasChildren = fcQDirModel_vtable_callback_hasChildren
  if not isNil(vtbl[].flags):
    vtbl[].vtbl.flags = fcQDirModel_vtable_callback_flags
  if not isNil(vtbl[].sort):
    vtbl[].vtbl.sort = fcQDirModel_vtable_callback_sort
  if not isNil(vtbl[].mimeTypes):
    vtbl[].vtbl.mimeTypes = fcQDirModel_vtable_callback_mimeTypes
  if not isNil(vtbl[].mimeData):
    vtbl[].vtbl.mimeData = fcQDirModel_vtable_callback_mimeData
  if not isNil(vtbl[].dropMimeData):
    vtbl[].vtbl.dropMimeData = fcQDirModel_vtable_callback_dropMimeData
  if not isNil(vtbl[].supportedDropActions):
    vtbl[].vtbl.supportedDropActions = fcQDirModel_vtable_callback_supportedDropActions
  if not isNil(vtbl[].sibling):
    vtbl[].vtbl.sibling = fcQDirModel_vtable_callback_sibling
  if not isNil(vtbl[].setHeaderData):
    vtbl[].vtbl.setHeaderData = fcQDirModel_vtable_callback_setHeaderData
  if not isNil(vtbl[].itemData):
    vtbl[].vtbl.itemData = fcQDirModel_vtable_callback_itemData
  if not isNil(vtbl[].setItemData):
    vtbl[].vtbl.setItemData = fcQDirModel_vtable_callback_setItemData
  if not isNil(vtbl[].canDropMimeData):
    vtbl[].vtbl.canDropMimeData = fcQDirModel_vtable_callback_canDropMimeData
  if not isNil(vtbl[].supportedDragActions):
    vtbl[].vtbl.supportedDragActions = fcQDirModel_vtable_callback_supportedDragActions
  if not isNil(vtbl[].insertRows):
    vtbl[].vtbl.insertRows = fcQDirModel_vtable_callback_insertRows
  if not isNil(vtbl[].insertColumns):
    vtbl[].vtbl.insertColumns = fcQDirModel_vtable_callback_insertColumns
  if not isNil(vtbl[].removeRows):
    vtbl[].vtbl.removeRows = fcQDirModel_vtable_callback_removeRows
  if not isNil(vtbl[].removeColumns):
    vtbl[].vtbl.removeColumns = fcQDirModel_vtable_callback_removeColumns
  if not isNil(vtbl[].moveRows):
    vtbl[].vtbl.moveRows = fcQDirModel_vtable_callback_moveRows
  if not isNil(vtbl[].moveColumns):
    vtbl[].vtbl.moveColumns = fcQDirModel_vtable_callback_moveColumns
  if not isNil(vtbl[].fetchMore):
    vtbl[].vtbl.fetchMore = fcQDirModel_vtable_callback_fetchMore
  if not isNil(vtbl[].canFetchMore):
    vtbl[].vtbl.canFetchMore = fcQDirModel_vtable_callback_canFetchMore
  if not isNil(vtbl[].buddy):
    vtbl[].vtbl.buddy = fcQDirModel_vtable_callback_buddy
  if not isNil(vtbl[].match):
    vtbl[].vtbl.match = fcQDirModel_vtable_callback_match
  if not isNil(vtbl[].span):
    vtbl[].vtbl.span = fcQDirModel_vtable_callback_span
  if not isNil(vtbl[].roleNames):
    vtbl[].vtbl.roleNames = fcQDirModel_vtable_callback_roleNames
  if not isNil(vtbl[].submit):
    vtbl[].vtbl.submit = fcQDirModel_vtable_callback_submit
  if not isNil(vtbl[].revert):
    vtbl[].vtbl.revert = fcQDirModel_vtable_callback_revert
  if not isNil(vtbl[].event):
    vtbl[].vtbl.event = fcQDirModel_vtable_callback_event
  if not isNil(vtbl[].eventFilter):
    vtbl[].vtbl.eventFilter = fcQDirModel_vtable_callback_eventFilter
  if not isNil(vtbl[].timerEvent):
    vtbl[].vtbl.timerEvent = fcQDirModel_vtable_callback_timerEvent
  if not isNil(vtbl[].childEvent):
    vtbl[].vtbl.childEvent = fcQDirModel_vtable_callback_childEvent
  if not isNil(vtbl[].customEvent):
    vtbl[].vtbl.customEvent = fcQDirModel_vtable_callback_customEvent
  if not isNil(vtbl[].connectNotify):
    vtbl[].vtbl.connectNotify = fcQDirModel_vtable_callback_connectNotify
  if not isNil(vtbl[].disconnectNotify):
    vtbl[].vtbl.disconnectNotify = fcQDirModel_vtable_callback_disconnectNotify
  gen_qdirmodel_types.QDirModel(h: fcQDirModel_new(addr(vtbl[].vtbl), addr(vtbl[]), struct_miqt_array(len: csize_t(len(nameFilters)), data: if len(nameFilters) == 0: nil else: addr(nameFilters_CArray[0])), cint(filters), cint(sort)), owned: true)

proc create*(T: type gen_qdirmodel_types.QDirModel,
    vtbl: ref QDirModelVTable = nil): gen_qdirmodel_types.QDirModel =
  let vtbl = if vtbl == nil: new QDirModelVTable else: vtbl
  GC_ref(vtbl)
  vtbl[].vtbl.destructor = proc(self: pointer) {.cdecl.} =
    let vtbl = cast[ref QDirModelVTable](fcQDirModel_vdata(self))
    GC_unref(vtbl)
  if not isNil(vtbl[].metaObject):
    vtbl[].vtbl.metaObject = fcQDirModel_vtable_callback_metaObject
  if not isNil(vtbl[].metacast):
    vtbl[].vtbl.metacast = fcQDirModel_vtable_callback_metacast
  if not isNil(vtbl[].metacall):
    vtbl[].vtbl.metacall = fcQDirModel_vtable_callback_metacall
  if not isNil(vtbl[].index):
    vtbl[].vtbl.index = fcQDirModel_vtable_callback_index
  if not isNil(vtbl[].parent):
    vtbl[].vtbl.parent = fcQDirModel_vtable_callback_parent
  if not isNil(vtbl[].rowCount):
    vtbl[].vtbl.rowCount = fcQDirModel_vtable_callback_rowCount
  if not isNil(vtbl[].columnCount):
    vtbl[].vtbl.columnCount = fcQDirModel_vtable_callback_columnCount
  if not isNil(vtbl[].data):
    vtbl[].vtbl.data = fcQDirModel_vtable_callback_data
  if not isNil(vtbl[].setData):
    vtbl[].vtbl.setData = fcQDirModel_vtable_callback_setData
  if not isNil(vtbl[].headerData):
    vtbl[].vtbl.headerData = fcQDirModel_vtable_callback_headerData
  if not isNil(vtbl[].hasChildren):
    vtbl[].vtbl.hasChildren = fcQDirModel_vtable_callback_hasChildren
  if not isNil(vtbl[].flags):
    vtbl[].vtbl.flags = fcQDirModel_vtable_callback_flags
  if not isNil(vtbl[].sort):
    vtbl[].vtbl.sort = fcQDirModel_vtable_callback_sort
  if not isNil(vtbl[].mimeTypes):
    vtbl[].vtbl.mimeTypes = fcQDirModel_vtable_callback_mimeTypes
  if not isNil(vtbl[].mimeData):
    vtbl[].vtbl.mimeData = fcQDirModel_vtable_callback_mimeData
  if not isNil(vtbl[].dropMimeData):
    vtbl[].vtbl.dropMimeData = fcQDirModel_vtable_callback_dropMimeData
  if not isNil(vtbl[].supportedDropActions):
    vtbl[].vtbl.supportedDropActions = fcQDirModel_vtable_callback_supportedDropActions
  if not isNil(vtbl[].sibling):
    vtbl[].vtbl.sibling = fcQDirModel_vtable_callback_sibling
  if not isNil(vtbl[].setHeaderData):
    vtbl[].vtbl.setHeaderData = fcQDirModel_vtable_callback_setHeaderData
  if not isNil(vtbl[].itemData):
    vtbl[].vtbl.itemData = fcQDirModel_vtable_callback_itemData
  if not isNil(vtbl[].setItemData):
    vtbl[].vtbl.setItemData = fcQDirModel_vtable_callback_setItemData
  if not isNil(vtbl[].canDropMimeData):
    vtbl[].vtbl.canDropMimeData = fcQDirModel_vtable_callback_canDropMimeData
  if not isNil(vtbl[].supportedDragActions):
    vtbl[].vtbl.supportedDragActions = fcQDirModel_vtable_callback_supportedDragActions
  if not isNil(vtbl[].insertRows):
    vtbl[].vtbl.insertRows = fcQDirModel_vtable_callback_insertRows
  if not isNil(vtbl[].insertColumns):
    vtbl[].vtbl.insertColumns = fcQDirModel_vtable_callback_insertColumns
  if not isNil(vtbl[].removeRows):
    vtbl[].vtbl.removeRows = fcQDirModel_vtable_callback_removeRows
  if not isNil(vtbl[].removeColumns):
    vtbl[].vtbl.removeColumns = fcQDirModel_vtable_callback_removeColumns
  if not isNil(vtbl[].moveRows):
    vtbl[].vtbl.moveRows = fcQDirModel_vtable_callback_moveRows
  if not isNil(vtbl[].moveColumns):
    vtbl[].vtbl.moveColumns = fcQDirModel_vtable_callback_moveColumns
  if not isNil(vtbl[].fetchMore):
    vtbl[].vtbl.fetchMore = fcQDirModel_vtable_callback_fetchMore
  if not isNil(vtbl[].canFetchMore):
    vtbl[].vtbl.canFetchMore = fcQDirModel_vtable_callback_canFetchMore
  if not isNil(vtbl[].buddy):
    vtbl[].vtbl.buddy = fcQDirModel_vtable_callback_buddy
  if not isNil(vtbl[].match):
    vtbl[].vtbl.match = fcQDirModel_vtable_callback_match
  if not isNil(vtbl[].span):
    vtbl[].vtbl.span = fcQDirModel_vtable_callback_span
  if not isNil(vtbl[].roleNames):
    vtbl[].vtbl.roleNames = fcQDirModel_vtable_callback_roleNames
  if not isNil(vtbl[].submit):
    vtbl[].vtbl.submit = fcQDirModel_vtable_callback_submit
  if not isNil(vtbl[].revert):
    vtbl[].vtbl.revert = fcQDirModel_vtable_callback_revert
  if not isNil(vtbl[].event):
    vtbl[].vtbl.event = fcQDirModel_vtable_callback_event
  if not isNil(vtbl[].eventFilter):
    vtbl[].vtbl.eventFilter = fcQDirModel_vtable_callback_eventFilter
  if not isNil(vtbl[].timerEvent):
    vtbl[].vtbl.timerEvent = fcQDirModel_vtable_callback_timerEvent
  if not isNil(vtbl[].childEvent):
    vtbl[].vtbl.childEvent = fcQDirModel_vtable_callback_childEvent
  if not isNil(vtbl[].customEvent):
    vtbl[].vtbl.customEvent = fcQDirModel_vtable_callback_customEvent
  if not isNil(vtbl[].connectNotify):
    vtbl[].vtbl.connectNotify = fcQDirModel_vtable_callback_connectNotify
  if not isNil(vtbl[].disconnectNotify):
    vtbl[].vtbl.disconnectNotify = fcQDirModel_vtable_callback_disconnectNotify
  gen_qdirmodel_types.QDirModel(h: fcQDirModel_new2(addr(vtbl[].vtbl), addr(vtbl[])), owned: true)

proc create*(T: type gen_qdirmodel_types.QDirModel,
    nameFilters: openArray[string], filters: cint, sort: cint, parent: gen_qobject_types.QObject,
    vtbl: ref QDirModelVTable = nil): gen_qdirmodel_types.QDirModel =
  var nameFilters_CArray = newSeq[struct_miqt_string](len(nameFilters))
  for i in 0..<len(nameFilters):
    nameFilters_CArray[i] = struct_miqt_string(data: if len(nameFilters[i]) > 0: addr nameFilters[i][0] else: nil, len: csize_t(len(nameFilters[i])))

  let vtbl = if vtbl == nil: new QDirModelVTable else: vtbl
  GC_ref(vtbl)
  vtbl[].vtbl.destructor = proc(self: pointer) {.cdecl.} =
    let vtbl = cast[ref QDirModelVTable](fcQDirModel_vdata(self))
    GC_unref(vtbl)
  if not isNil(vtbl[].metaObject):
    vtbl[].vtbl.metaObject = fcQDirModel_vtable_callback_metaObject
  if not isNil(vtbl[].metacast):
    vtbl[].vtbl.metacast = fcQDirModel_vtable_callback_metacast
  if not isNil(vtbl[].metacall):
    vtbl[].vtbl.metacall = fcQDirModel_vtable_callback_metacall
  if not isNil(vtbl[].index):
    vtbl[].vtbl.index = fcQDirModel_vtable_callback_index
  if not isNil(vtbl[].parent):
    vtbl[].vtbl.parent = fcQDirModel_vtable_callback_parent
  if not isNil(vtbl[].rowCount):
    vtbl[].vtbl.rowCount = fcQDirModel_vtable_callback_rowCount
  if not isNil(vtbl[].columnCount):
    vtbl[].vtbl.columnCount = fcQDirModel_vtable_callback_columnCount
  if not isNil(vtbl[].data):
    vtbl[].vtbl.data = fcQDirModel_vtable_callback_data
  if not isNil(vtbl[].setData):
    vtbl[].vtbl.setData = fcQDirModel_vtable_callback_setData
  if not isNil(vtbl[].headerData):
    vtbl[].vtbl.headerData = fcQDirModel_vtable_callback_headerData
  if not isNil(vtbl[].hasChildren):
    vtbl[].vtbl.hasChildren = fcQDirModel_vtable_callback_hasChildren
  if not isNil(vtbl[].flags):
    vtbl[].vtbl.flags = fcQDirModel_vtable_callback_flags
  if not isNil(vtbl[].sort):
    vtbl[].vtbl.sort = fcQDirModel_vtable_callback_sort
  if not isNil(vtbl[].mimeTypes):
    vtbl[].vtbl.mimeTypes = fcQDirModel_vtable_callback_mimeTypes
  if not isNil(vtbl[].mimeData):
    vtbl[].vtbl.mimeData = fcQDirModel_vtable_callback_mimeData
  if not isNil(vtbl[].dropMimeData):
    vtbl[].vtbl.dropMimeData = fcQDirModel_vtable_callback_dropMimeData
  if not isNil(vtbl[].supportedDropActions):
    vtbl[].vtbl.supportedDropActions = fcQDirModel_vtable_callback_supportedDropActions
  if not isNil(vtbl[].sibling):
    vtbl[].vtbl.sibling = fcQDirModel_vtable_callback_sibling
  if not isNil(vtbl[].setHeaderData):
    vtbl[].vtbl.setHeaderData = fcQDirModel_vtable_callback_setHeaderData
  if not isNil(vtbl[].itemData):
    vtbl[].vtbl.itemData = fcQDirModel_vtable_callback_itemData
  if not isNil(vtbl[].setItemData):
    vtbl[].vtbl.setItemData = fcQDirModel_vtable_callback_setItemData
  if not isNil(vtbl[].canDropMimeData):
    vtbl[].vtbl.canDropMimeData = fcQDirModel_vtable_callback_canDropMimeData
  if not isNil(vtbl[].supportedDragActions):
    vtbl[].vtbl.supportedDragActions = fcQDirModel_vtable_callback_supportedDragActions
  if not isNil(vtbl[].insertRows):
    vtbl[].vtbl.insertRows = fcQDirModel_vtable_callback_insertRows
  if not isNil(vtbl[].insertColumns):
    vtbl[].vtbl.insertColumns = fcQDirModel_vtable_callback_insertColumns
  if not isNil(vtbl[].removeRows):
    vtbl[].vtbl.removeRows = fcQDirModel_vtable_callback_removeRows
  if not isNil(vtbl[].removeColumns):
    vtbl[].vtbl.removeColumns = fcQDirModel_vtable_callback_removeColumns
  if not isNil(vtbl[].moveRows):
    vtbl[].vtbl.moveRows = fcQDirModel_vtable_callback_moveRows
  if not isNil(vtbl[].moveColumns):
    vtbl[].vtbl.moveColumns = fcQDirModel_vtable_callback_moveColumns
  if not isNil(vtbl[].fetchMore):
    vtbl[].vtbl.fetchMore = fcQDirModel_vtable_callback_fetchMore
  if not isNil(vtbl[].canFetchMore):
    vtbl[].vtbl.canFetchMore = fcQDirModel_vtable_callback_canFetchMore
  if not isNil(vtbl[].buddy):
    vtbl[].vtbl.buddy = fcQDirModel_vtable_callback_buddy
  if not isNil(vtbl[].match):
    vtbl[].vtbl.match = fcQDirModel_vtable_callback_match
  if not isNil(vtbl[].span):
    vtbl[].vtbl.span = fcQDirModel_vtable_callback_span
  if not isNil(vtbl[].roleNames):
    vtbl[].vtbl.roleNames = fcQDirModel_vtable_callback_roleNames
  if not isNil(vtbl[].submit):
    vtbl[].vtbl.submit = fcQDirModel_vtable_callback_submit
  if not isNil(vtbl[].revert):
    vtbl[].vtbl.revert = fcQDirModel_vtable_callback_revert
  if not isNil(vtbl[].event):
    vtbl[].vtbl.event = fcQDirModel_vtable_callback_event
  if not isNil(vtbl[].eventFilter):
    vtbl[].vtbl.eventFilter = fcQDirModel_vtable_callback_eventFilter
  if not isNil(vtbl[].timerEvent):
    vtbl[].vtbl.timerEvent = fcQDirModel_vtable_callback_timerEvent
  if not isNil(vtbl[].childEvent):
    vtbl[].vtbl.childEvent = fcQDirModel_vtable_callback_childEvent
  if not isNil(vtbl[].customEvent):
    vtbl[].vtbl.customEvent = fcQDirModel_vtable_callback_customEvent
  if not isNil(vtbl[].connectNotify):
    vtbl[].vtbl.connectNotify = fcQDirModel_vtable_callback_connectNotify
  if not isNil(vtbl[].disconnectNotify):
    vtbl[].vtbl.disconnectNotify = fcQDirModel_vtable_callback_disconnectNotify
  gen_qdirmodel_types.QDirModel(h: fcQDirModel_new3(addr(vtbl[].vtbl), addr(vtbl[]), struct_miqt_array(len: csize_t(len(nameFilters)), data: if len(nameFilters) == 0: nil else: addr(nameFilters_CArray[0])), cint(filters), cint(sort), parent.h), owned: true)

proc create*(T: type gen_qdirmodel_types.QDirModel,
    parent: gen_qobject_types.QObject,
    vtbl: ref QDirModelVTable = nil): gen_qdirmodel_types.QDirModel =
  let vtbl = if vtbl == nil: new QDirModelVTable else: vtbl
  GC_ref(vtbl)
  vtbl[].vtbl.destructor = proc(self: pointer) {.cdecl.} =
    let vtbl = cast[ref QDirModelVTable](fcQDirModel_vdata(self))
    GC_unref(vtbl)
  if not isNil(vtbl[].metaObject):
    vtbl[].vtbl.metaObject = fcQDirModel_vtable_callback_metaObject
  if not isNil(vtbl[].metacast):
    vtbl[].vtbl.metacast = fcQDirModel_vtable_callback_metacast
  if not isNil(vtbl[].metacall):
    vtbl[].vtbl.metacall = fcQDirModel_vtable_callback_metacall
  if not isNil(vtbl[].index):
    vtbl[].vtbl.index = fcQDirModel_vtable_callback_index
  if not isNil(vtbl[].parent):
    vtbl[].vtbl.parent = fcQDirModel_vtable_callback_parent
  if not isNil(vtbl[].rowCount):
    vtbl[].vtbl.rowCount = fcQDirModel_vtable_callback_rowCount
  if not isNil(vtbl[].columnCount):
    vtbl[].vtbl.columnCount = fcQDirModel_vtable_callback_columnCount
  if not isNil(vtbl[].data):
    vtbl[].vtbl.data = fcQDirModel_vtable_callback_data
  if not isNil(vtbl[].setData):
    vtbl[].vtbl.setData = fcQDirModel_vtable_callback_setData
  if not isNil(vtbl[].headerData):
    vtbl[].vtbl.headerData = fcQDirModel_vtable_callback_headerData
  if not isNil(vtbl[].hasChildren):
    vtbl[].vtbl.hasChildren = fcQDirModel_vtable_callback_hasChildren
  if not isNil(vtbl[].flags):
    vtbl[].vtbl.flags = fcQDirModel_vtable_callback_flags
  if not isNil(vtbl[].sort):
    vtbl[].vtbl.sort = fcQDirModel_vtable_callback_sort
  if not isNil(vtbl[].mimeTypes):
    vtbl[].vtbl.mimeTypes = fcQDirModel_vtable_callback_mimeTypes
  if not isNil(vtbl[].mimeData):
    vtbl[].vtbl.mimeData = fcQDirModel_vtable_callback_mimeData
  if not isNil(vtbl[].dropMimeData):
    vtbl[].vtbl.dropMimeData = fcQDirModel_vtable_callback_dropMimeData
  if not isNil(vtbl[].supportedDropActions):
    vtbl[].vtbl.supportedDropActions = fcQDirModel_vtable_callback_supportedDropActions
  if not isNil(vtbl[].sibling):
    vtbl[].vtbl.sibling = fcQDirModel_vtable_callback_sibling
  if not isNil(vtbl[].setHeaderData):
    vtbl[].vtbl.setHeaderData = fcQDirModel_vtable_callback_setHeaderData
  if not isNil(vtbl[].itemData):
    vtbl[].vtbl.itemData = fcQDirModel_vtable_callback_itemData
  if not isNil(vtbl[].setItemData):
    vtbl[].vtbl.setItemData = fcQDirModel_vtable_callback_setItemData
  if not isNil(vtbl[].canDropMimeData):
    vtbl[].vtbl.canDropMimeData = fcQDirModel_vtable_callback_canDropMimeData
  if not isNil(vtbl[].supportedDragActions):
    vtbl[].vtbl.supportedDragActions = fcQDirModel_vtable_callback_supportedDragActions
  if not isNil(vtbl[].insertRows):
    vtbl[].vtbl.insertRows = fcQDirModel_vtable_callback_insertRows
  if not isNil(vtbl[].insertColumns):
    vtbl[].vtbl.insertColumns = fcQDirModel_vtable_callback_insertColumns
  if not isNil(vtbl[].removeRows):
    vtbl[].vtbl.removeRows = fcQDirModel_vtable_callback_removeRows
  if not isNil(vtbl[].removeColumns):
    vtbl[].vtbl.removeColumns = fcQDirModel_vtable_callback_removeColumns
  if not isNil(vtbl[].moveRows):
    vtbl[].vtbl.moveRows = fcQDirModel_vtable_callback_moveRows
  if not isNil(vtbl[].moveColumns):
    vtbl[].vtbl.moveColumns = fcQDirModel_vtable_callback_moveColumns
  if not isNil(vtbl[].fetchMore):
    vtbl[].vtbl.fetchMore = fcQDirModel_vtable_callback_fetchMore
  if not isNil(vtbl[].canFetchMore):
    vtbl[].vtbl.canFetchMore = fcQDirModel_vtable_callback_canFetchMore
  if not isNil(vtbl[].buddy):
    vtbl[].vtbl.buddy = fcQDirModel_vtable_callback_buddy
  if not isNil(vtbl[].match):
    vtbl[].vtbl.match = fcQDirModel_vtable_callback_match
  if not isNil(vtbl[].span):
    vtbl[].vtbl.span = fcQDirModel_vtable_callback_span
  if not isNil(vtbl[].roleNames):
    vtbl[].vtbl.roleNames = fcQDirModel_vtable_callback_roleNames
  if not isNil(vtbl[].submit):
    vtbl[].vtbl.submit = fcQDirModel_vtable_callback_submit
  if not isNil(vtbl[].revert):
    vtbl[].vtbl.revert = fcQDirModel_vtable_callback_revert
  if not isNil(vtbl[].event):
    vtbl[].vtbl.event = fcQDirModel_vtable_callback_event
  if not isNil(vtbl[].eventFilter):
    vtbl[].vtbl.eventFilter = fcQDirModel_vtable_callback_eventFilter
  if not isNil(vtbl[].timerEvent):
    vtbl[].vtbl.timerEvent = fcQDirModel_vtable_callback_timerEvent
  if not isNil(vtbl[].childEvent):
    vtbl[].vtbl.childEvent = fcQDirModel_vtable_callback_childEvent
  if not isNil(vtbl[].customEvent):
    vtbl[].vtbl.customEvent = fcQDirModel_vtable_callback_customEvent
  if not isNil(vtbl[].connectNotify):
    vtbl[].vtbl.connectNotify = fcQDirModel_vtable_callback_connectNotify
  if not isNil(vtbl[].disconnectNotify):
    vtbl[].vtbl.disconnectNotify = fcQDirModel_vtable_callback_disconnectNotify
  gen_qdirmodel_types.QDirModel(h: fcQDirModel_new4(addr(vtbl[].vtbl), addr(vtbl[]), parent.h), owned: true)

const cQDirModel_mvtbl = cQDirModelVTable(
  destructor: proc(self: pointer) {.cdecl.} =
    let inst = cast[ptr typeof(VirtualQDirModel()[])](self.fcQDirModel_vdata())
    inst[].h = nil
    inst[].owned = false,

  metaObject: fcQDirModel_method_callback_metaObject,
  metacast: fcQDirModel_method_callback_metacast,
  metacall: fcQDirModel_method_callback_metacall,
  index: fcQDirModel_method_callback_index,
  parent: fcQDirModel_method_callback_parent,
  rowCount: fcQDirModel_method_callback_rowCount,
  columnCount: fcQDirModel_method_callback_columnCount,
  data: fcQDirModel_method_callback_data,
  setData: fcQDirModel_method_callback_setData,
  headerData: fcQDirModel_method_callback_headerData,
  hasChildren: fcQDirModel_method_callback_hasChildren,
  flags: fcQDirModel_method_callback_flags,
  sort: fcQDirModel_method_callback_sort,
  mimeTypes: fcQDirModel_method_callback_mimeTypes,
  mimeData: fcQDirModel_method_callback_mimeData,
  dropMimeData: fcQDirModel_method_callback_dropMimeData,
  supportedDropActions: fcQDirModel_method_callback_supportedDropActions,
  sibling: fcQDirModel_method_callback_sibling,
  setHeaderData: fcQDirModel_method_callback_setHeaderData,
  itemData: fcQDirModel_method_callback_itemData,
  setItemData: fcQDirModel_method_callback_setItemData,
  canDropMimeData: fcQDirModel_method_callback_canDropMimeData,
  supportedDragActions: fcQDirModel_method_callback_supportedDragActions,
  insertRows: fcQDirModel_method_callback_insertRows,
  insertColumns: fcQDirModel_method_callback_insertColumns,
  removeRows: fcQDirModel_method_callback_removeRows,
  removeColumns: fcQDirModel_method_callback_removeColumns,
  moveRows: fcQDirModel_method_callback_moveRows,
  moveColumns: fcQDirModel_method_callback_moveColumns,
  fetchMore: fcQDirModel_method_callback_fetchMore,
  canFetchMore: fcQDirModel_method_callback_canFetchMore,
  buddy: fcQDirModel_method_callback_buddy,
  match: fcQDirModel_method_callback_match,
  span: fcQDirModel_method_callback_span,
  roleNames: fcQDirModel_method_callback_roleNames,
  submit: fcQDirModel_method_callback_submit,
  revert: fcQDirModel_method_callback_revert,
  event: fcQDirModel_method_callback_event,
  eventFilter: fcQDirModel_method_callback_eventFilter,
  timerEvent: fcQDirModel_method_callback_timerEvent,
  childEvent: fcQDirModel_method_callback_childEvent,
  customEvent: fcQDirModel_method_callback_customEvent,
  connectNotify: fcQDirModel_method_callback_connectNotify,
  disconnectNotify: fcQDirModel_method_callback_disconnectNotify,
)
proc create*(T: type gen_qdirmodel_types.QDirModel,
    nameFilters: openArray[string], filters: cint, sort: cint,
    inst: VirtualQDirModel) =
  var nameFilters_CArray = newSeq[struct_miqt_string](len(nameFilters))
  for i in 0..<len(nameFilters):
    nameFilters_CArray[i] = struct_miqt_string(data: if len(nameFilters[i]) > 0: addr nameFilters[i][0] else: nil, len: csize_t(len(nameFilters[i])))

  if inst[].h != nil: delete(move(inst[]))
  inst[].h = fcQDirModel_new(addr(cQDirModel_mvtbl), addr(inst[]), struct_miqt_array(len: csize_t(len(nameFilters)), data: if len(nameFilters) == 0: nil else: addr(nameFilters_CArray[0])), cint(filters), cint(sort))
  inst[].owned = true

proc create*(T: type gen_qdirmodel_types.QDirModel,
    inst: VirtualQDirModel) =
  if inst[].h != nil: delete(move(inst[]))
  inst[].h = fcQDirModel_new2(addr(cQDirModel_mvtbl), addr(inst[]))
  inst[].owned = true

proc create*(T: type gen_qdirmodel_types.QDirModel,
    nameFilters: openArray[string], filters: cint, sort: cint, parent: gen_qobject_types.QObject,
    inst: VirtualQDirModel) =
  var nameFilters_CArray = newSeq[struct_miqt_string](len(nameFilters))
  for i in 0..<len(nameFilters):
    nameFilters_CArray[i] = struct_miqt_string(data: if len(nameFilters[i]) > 0: addr nameFilters[i][0] else: nil, len: csize_t(len(nameFilters[i])))

  if inst[].h != nil: delete(move(inst[]))
  inst[].h = fcQDirModel_new3(addr(cQDirModel_mvtbl), addr(inst[]), struct_miqt_array(len: csize_t(len(nameFilters)), data: if len(nameFilters) == 0: nil else: addr(nameFilters_CArray[0])), cint(filters), cint(sort), parent.h)
  inst[].owned = true

proc create*(T: type gen_qdirmodel_types.QDirModel,
    parent: gen_qobject_types.QObject,
    inst: VirtualQDirModel) =
  if inst[].h != nil: delete(move(inst[]))
  inst[].h = fcQDirModel_new4(addr(cQDirModel_mvtbl), addr(inst[]), parent.h)
  inst[].owned = true

proc staticMetaObject*(_: type gen_qdirmodel_types.QDirModel): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQDirModel_staticMetaObject())
