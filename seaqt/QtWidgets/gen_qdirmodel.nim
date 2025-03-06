import ./Qt5Widgets_libs

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

const cflags = gorge("pkg-config --cflags Qt5Widgets")  & " -fPIC"
{.compile("gen_qdirmodel.cpp", cflags).}


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

proc fcQDirModel_metaObject(self: pointer, ): pointer {.importc: "QDirModel_metaObject".}
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
proc fcQDirModel_mimeTypes(self: pointer, ): struct_miqt_array {.importc: "QDirModel_mimeTypes".}
proc fcQDirModel_mimeData(self: pointer, indexes: struct_miqt_array): pointer {.importc: "QDirModel_mimeData".}
proc fcQDirModel_dropMimeData(self: pointer, data: pointer, action: cint, row: cint, column: cint, parent: pointer): bool {.importc: "QDirModel_dropMimeData".}
proc fcQDirModel_supportedDropActions(self: pointer, ): cint {.importc: "QDirModel_supportedDropActions".}
proc fcQDirModel_setIconProvider(self: pointer, provider: pointer): void {.importc: "QDirModel_setIconProvider".}
proc fcQDirModel_iconProvider(self: pointer, ): pointer {.importc: "QDirModel_iconProvider".}
proc fcQDirModel_setNameFilters(self: pointer, filters: struct_miqt_array): void {.importc: "QDirModel_setNameFilters".}
proc fcQDirModel_nameFilters(self: pointer, ): struct_miqt_array {.importc: "QDirModel_nameFilters".}
proc fcQDirModel_setFilter(self: pointer, filters: cint): void {.importc: "QDirModel_setFilter".}
proc fcQDirModel_filter(self: pointer, ): cint {.importc: "QDirModel_filter".}
proc fcQDirModel_setSorting(self: pointer, sort: cint): void {.importc: "QDirModel_setSorting".}
proc fcQDirModel_sorting(self: pointer, ): cint {.importc: "QDirModel_sorting".}
proc fcQDirModel_setResolveSymlinks(self: pointer, enable: bool): void {.importc: "QDirModel_setResolveSymlinks".}
proc fcQDirModel_resolveSymlinks(self: pointer, ): bool {.importc: "QDirModel_resolveSymlinks".}
proc fcQDirModel_setReadOnly(self: pointer, enable: bool): void {.importc: "QDirModel_setReadOnly".}
proc fcQDirModel_isReadOnly(self: pointer, ): bool {.importc: "QDirModel_isReadOnly".}
proc fcQDirModel_setLazyChildCount(self: pointer, enable: bool): void {.importc: "QDirModel_setLazyChildCount".}
proc fcQDirModel_lazyChildCount(self: pointer, ): bool {.importc: "QDirModel_lazyChildCount".}
proc fcQDirModel_indexWithPath(self: pointer, path: struct_miqt_string): pointer {.importc: "QDirModel_indexWithPath".}
proc fcQDirModel_isDir(self: pointer, index: pointer): bool {.importc: "QDirModel_isDir".}
proc fcQDirModel_mkdir(self: pointer, parent: pointer, name: struct_miqt_string): pointer {.importc: "QDirModel_mkdir".}
proc fcQDirModel_rmdir(self: pointer, index: pointer): bool {.importc: "QDirModel_rmdir".}
proc fcQDirModel_remove(self: pointer, index: pointer): bool {.importc: "QDirModel_remove".}
proc fcQDirModel_filePath(self: pointer, index: pointer): struct_miqt_string {.importc: "QDirModel_filePath".}
proc fcQDirModel_fileName(self: pointer, index: pointer): struct_miqt_string {.importc: "QDirModel_fileName".}
proc fcQDirModel_fileIcon(self: pointer, index: pointer): pointer {.importc: "QDirModel_fileIcon".}
proc fcQDirModel_fileInfo(self: pointer, index: pointer): pointer {.importc: "QDirModel_fileInfo".}
proc fcQDirModel_refresh(self: pointer, ): void {.importc: "QDirModel_refresh".}
proc fcQDirModel_tr2(s: cstring, c: cstring): struct_miqt_string {.importc: "QDirModel_tr2".}
proc fcQDirModel_tr3(s: cstring, c: cstring, n: cint): struct_miqt_string {.importc: "QDirModel_tr3".}
proc fcQDirModel_trUtf82(s: cstring, c: cstring): struct_miqt_string {.importc: "QDirModel_trUtf82".}
proc fcQDirModel_trUtf83(s: cstring, c: cstring, n: cint): struct_miqt_string {.importc: "QDirModel_trUtf83".}
proc fcQDirModel_index2(self: pointer, path: struct_miqt_string, column: cint): pointer {.importc: "QDirModel_index2".}
proc fcQDirModel_refresh1(self: pointer, parent: pointer): void {.importc: "QDirModel_refresh1".}
type cQDirModelVTable = object
  destructor*: proc(vtbl: ptr cQDirModelVTable, self: ptr cQDirModel) {.cdecl, raises:[], gcsafe.}
  metaObject*: proc(vtbl, self: pointer, ): pointer {.cdecl, raises: [], gcsafe.}
  metacast*: proc(vtbl, self: pointer, param1: cstring): pointer {.cdecl, raises: [], gcsafe.}
  metacall*: proc(vtbl, self: pointer, param1: cint, param2: cint, param3: pointer): cint {.cdecl, raises: [], gcsafe.}
  index*: proc(vtbl, self: pointer, row: cint, column: cint, parent: pointer): pointer {.cdecl, raises: [], gcsafe.}
  parent*: proc(vtbl, self: pointer, child: pointer): pointer {.cdecl, raises: [], gcsafe.}
  rowCount*: proc(vtbl, self: pointer, parent: pointer): cint {.cdecl, raises: [], gcsafe.}
  columnCount*: proc(vtbl, self: pointer, parent: pointer): cint {.cdecl, raises: [], gcsafe.}
  data*: proc(vtbl, self: pointer, index: pointer, role: cint): pointer {.cdecl, raises: [], gcsafe.}
  setData*: proc(vtbl, self: pointer, index: pointer, value: pointer, role: cint): bool {.cdecl, raises: [], gcsafe.}
  headerData*: proc(vtbl, self: pointer, section: cint, orientation: cint, role: cint): pointer {.cdecl, raises: [], gcsafe.}
  hasChildren*: proc(vtbl, self: pointer, index: pointer): bool {.cdecl, raises: [], gcsafe.}
  flags*: proc(vtbl, self: pointer, index: pointer): cint {.cdecl, raises: [], gcsafe.}
  sort*: proc(vtbl, self: pointer, column: cint, order: cint): void {.cdecl, raises: [], gcsafe.}
  mimeTypes*: proc(vtbl, self: pointer, ): struct_miqt_array {.cdecl, raises: [], gcsafe.}
  mimeData*: proc(vtbl, self: pointer, indexes: struct_miqt_array): pointer {.cdecl, raises: [], gcsafe.}
  dropMimeData*: proc(vtbl, self: pointer, data: pointer, action: cint, row: cint, column: cint, parent: pointer): bool {.cdecl, raises: [], gcsafe.}
  supportedDropActions*: proc(vtbl, self: pointer, ): cint {.cdecl, raises: [], gcsafe.}
  sibling*: proc(vtbl, self: pointer, row: cint, column: cint, idx: pointer): pointer {.cdecl, raises: [], gcsafe.}
  setHeaderData*: proc(vtbl, self: pointer, section: cint, orientation: cint, value: pointer, role: cint): bool {.cdecl, raises: [], gcsafe.}
  itemData*: proc(vtbl, self: pointer, index: pointer): struct_miqt_map {.cdecl, raises: [], gcsafe.}
  setItemData*: proc(vtbl, self: pointer, index: pointer, roles: struct_miqt_map): bool {.cdecl, raises: [], gcsafe.}
  canDropMimeData*: proc(vtbl, self: pointer, data: pointer, action: cint, row: cint, column: cint, parent: pointer): bool {.cdecl, raises: [], gcsafe.}
  supportedDragActions*: proc(vtbl, self: pointer, ): cint {.cdecl, raises: [], gcsafe.}
  insertRows*: proc(vtbl, self: pointer, row: cint, count: cint, parent: pointer): bool {.cdecl, raises: [], gcsafe.}
  insertColumns*: proc(vtbl, self: pointer, column: cint, count: cint, parent: pointer): bool {.cdecl, raises: [], gcsafe.}
  removeRows*: proc(vtbl, self: pointer, row: cint, count: cint, parent: pointer): bool {.cdecl, raises: [], gcsafe.}
  removeColumns*: proc(vtbl, self: pointer, column: cint, count: cint, parent: pointer): bool {.cdecl, raises: [], gcsafe.}
  moveRows*: proc(vtbl, self: pointer, sourceParent: pointer, sourceRow: cint, count: cint, destinationParent: pointer, destinationChild: cint): bool {.cdecl, raises: [], gcsafe.}
  moveColumns*: proc(vtbl, self: pointer, sourceParent: pointer, sourceColumn: cint, count: cint, destinationParent: pointer, destinationChild: cint): bool {.cdecl, raises: [], gcsafe.}
  fetchMore*: proc(vtbl, self: pointer, parent: pointer): void {.cdecl, raises: [], gcsafe.}
  canFetchMore*: proc(vtbl, self: pointer, parent: pointer): bool {.cdecl, raises: [], gcsafe.}
  buddy*: proc(vtbl, self: pointer, index: pointer): pointer {.cdecl, raises: [], gcsafe.}
  match*: proc(vtbl, self: pointer, start: pointer, role: cint, value: pointer, hits: cint, flags: cint): struct_miqt_array {.cdecl, raises: [], gcsafe.}
  span*: proc(vtbl, self: pointer, index: pointer): pointer {.cdecl, raises: [], gcsafe.}
  roleNames*: proc(vtbl, self: pointer, ): struct_miqt_map {.cdecl, raises: [], gcsafe.}
  submit*: proc(vtbl, self: pointer, ): bool {.cdecl, raises: [], gcsafe.}
  revert*: proc(vtbl, self: pointer, ): void {.cdecl, raises: [], gcsafe.}
  event*: proc(vtbl, self: pointer, event: pointer): bool {.cdecl, raises: [], gcsafe.}
  eventFilter*: proc(vtbl, self: pointer, watched: pointer, event: pointer): bool {.cdecl, raises: [], gcsafe.}
  timerEvent*: proc(vtbl, self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  childEvent*: proc(vtbl, self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  customEvent*: proc(vtbl, self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  connectNotify*: proc(vtbl, self: pointer, signal: pointer): void {.cdecl, raises: [], gcsafe.}
  disconnectNotify*: proc(vtbl, self: pointer, signal: pointer): void {.cdecl, raises: [], gcsafe.}
proc fcQDirModel_virtualbase_metaObject(self: pointer, ): pointer {.importc: "QDirModel_virtualbase_metaObject".}
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
proc fcQDirModel_virtualbase_mimeTypes(self: pointer, ): struct_miqt_array {.importc: "QDirModel_virtualbase_mimeTypes".}
proc fcQDirModel_virtualbase_mimeData(self: pointer, indexes: struct_miqt_array): pointer {.importc: "QDirModel_virtualbase_mimeData".}
proc fcQDirModel_virtualbase_dropMimeData(self: pointer, data: pointer, action: cint, row: cint, column: cint, parent: pointer): bool {.importc: "QDirModel_virtualbase_dropMimeData".}
proc fcQDirModel_virtualbase_supportedDropActions(self: pointer, ): cint {.importc: "QDirModel_virtualbase_supportedDropActions".}
proc fcQDirModel_virtualbase_sibling(self: pointer, row: cint, column: cint, idx: pointer): pointer {.importc: "QDirModel_virtualbase_sibling".}
proc fcQDirModel_virtualbase_setHeaderData(self: pointer, section: cint, orientation: cint, value: pointer, role: cint): bool {.importc: "QDirModel_virtualbase_setHeaderData".}
proc fcQDirModel_virtualbase_itemData(self: pointer, index: pointer): struct_miqt_map {.importc: "QDirModel_virtualbase_itemData".}
proc fcQDirModel_virtualbase_setItemData(self: pointer, index: pointer, roles: struct_miqt_map): bool {.importc: "QDirModel_virtualbase_setItemData".}
proc fcQDirModel_virtualbase_canDropMimeData(self: pointer, data: pointer, action: cint, row: cint, column: cint, parent: pointer): bool {.importc: "QDirModel_virtualbase_canDropMimeData".}
proc fcQDirModel_virtualbase_supportedDragActions(self: pointer, ): cint {.importc: "QDirModel_virtualbase_supportedDragActions".}
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
proc fcQDirModel_virtualbase_roleNames(self: pointer, ): struct_miqt_map {.importc: "QDirModel_virtualbase_roleNames".}
proc fcQDirModel_virtualbase_submit(self: pointer, ): bool {.importc: "QDirModel_virtualbase_submit".}
proc fcQDirModel_virtualbase_revert(self: pointer, ): void {.importc: "QDirModel_virtualbase_revert".}
proc fcQDirModel_virtualbase_event(self: pointer, event: pointer): bool {.importc: "QDirModel_virtualbase_event".}
proc fcQDirModel_virtualbase_eventFilter(self: pointer, watched: pointer, event: pointer): bool {.importc: "QDirModel_virtualbase_eventFilter".}
proc fcQDirModel_virtualbase_timerEvent(self: pointer, event: pointer): void {.importc: "QDirModel_virtualbase_timerEvent".}
proc fcQDirModel_virtualbase_childEvent(self: pointer, event: pointer): void {.importc: "QDirModel_virtualbase_childEvent".}
proc fcQDirModel_virtualbase_customEvent(self: pointer, event: pointer): void {.importc: "QDirModel_virtualbase_customEvent".}
proc fcQDirModel_virtualbase_connectNotify(self: pointer, signal: pointer): void {.importc: "QDirModel_virtualbase_connectNotify".}
proc fcQDirModel_virtualbase_disconnectNotify(self: pointer, signal: pointer): void {.importc: "QDirModel_virtualbase_disconnectNotify".}
proc fcQDirModel_protectedbase_resetInternalData(self: pointer, ): void {.importc: "QDirModel_protectedbase_resetInternalData".}
proc fcQDirModel_protectedbase_createIndex(self: pointer, row: cint, column: cint): pointer {.importc: "QDirModel_protectedbase_createIndex".}
proc fcQDirModel_protectedbase_encodeData(self: pointer, indexes: struct_miqt_array, stream: pointer): void {.importc: "QDirModel_protectedbase_encodeData".}
proc fcQDirModel_protectedbase_decodeData(self: pointer, row: cint, column: cint, parent: pointer, stream: pointer): bool {.importc: "QDirModel_protectedbase_decodeData".}
proc fcQDirModel_protectedbase_beginInsertRows(self: pointer, parent: pointer, first: cint, last: cint): void {.importc: "QDirModel_protectedbase_beginInsertRows".}
proc fcQDirModel_protectedbase_endInsertRows(self: pointer, ): void {.importc: "QDirModel_protectedbase_endInsertRows".}
proc fcQDirModel_protectedbase_beginRemoveRows(self: pointer, parent: pointer, first: cint, last: cint): void {.importc: "QDirModel_protectedbase_beginRemoveRows".}
proc fcQDirModel_protectedbase_endRemoveRows(self: pointer, ): void {.importc: "QDirModel_protectedbase_endRemoveRows".}
proc fcQDirModel_protectedbase_beginMoveRows(self: pointer, sourceParent: pointer, sourceFirst: cint, sourceLast: cint, destinationParent: pointer, destinationRow: cint): bool {.importc: "QDirModel_protectedbase_beginMoveRows".}
proc fcQDirModel_protectedbase_endMoveRows(self: pointer, ): void {.importc: "QDirModel_protectedbase_endMoveRows".}
proc fcQDirModel_protectedbase_beginInsertColumns(self: pointer, parent: pointer, first: cint, last: cint): void {.importc: "QDirModel_protectedbase_beginInsertColumns".}
proc fcQDirModel_protectedbase_endInsertColumns(self: pointer, ): void {.importc: "QDirModel_protectedbase_endInsertColumns".}
proc fcQDirModel_protectedbase_beginRemoveColumns(self: pointer, parent: pointer, first: cint, last: cint): void {.importc: "QDirModel_protectedbase_beginRemoveColumns".}
proc fcQDirModel_protectedbase_endRemoveColumns(self: pointer, ): void {.importc: "QDirModel_protectedbase_endRemoveColumns".}
proc fcQDirModel_protectedbase_beginMoveColumns(self: pointer, sourceParent: pointer, sourceFirst: cint, sourceLast: cint, destinationParent: pointer, destinationColumn: cint): bool {.importc: "QDirModel_protectedbase_beginMoveColumns".}
proc fcQDirModel_protectedbase_endMoveColumns(self: pointer, ): void {.importc: "QDirModel_protectedbase_endMoveColumns".}
proc fcQDirModel_protectedbase_beginResetModel(self: pointer, ): void {.importc: "QDirModel_protectedbase_beginResetModel".}
proc fcQDirModel_protectedbase_endResetModel(self: pointer, ): void {.importc: "QDirModel_protectedbase_endResetModel".}
proc fcQDirModel_protectedbase_changePersistentIndex(self: pointer, fromVal: pointer, to: pointer): void {.importc: "QDirModel_protectedbase_changePersistentIndex".}
proc fcQDirModel_protectedbase_changePersistentIndexList(self: pointer, fromVal: struct_miqt_array, to: struct_miqt_array): void {.importc: "QDirModel_protectedbase_changePersistentIndexList".}
proc fcQDirModel_protectedbase_persistentIndexList(self: pointer, ): struct_miqt_array {.importc: "QDirModel_protectedbase_persistentIndexList".}
proc fcQDirModel_protectedbase_sender(self: pointer, ): pointer {.importc: "QDirModel_protectedbase_sender".}
proc fcQDirModel_protectedbase_senderSignalIndex(self: pointer, ): cint {.importc: "QDirModel_protectedbase_senderSignalIndex".}
proc fcQDirModel_protectedbase_receivers(self: pointer, signal: cstring): cint {.importc: "QDirModel_protectedbase_receivers".}
proc fcQDirModel_protectedbase_isSignalConnected(self: pointer, signal: pointer): bool {.importc: "QDirModel_protectedbase_isSignalConnected".}
proc fcQDirModel_new(vtbl: pointer, nameFilters: struct_miqt_array, filters: cint, sort: cint): ptr cQDirModel {.importc: "QDirModel_new".}
proc fcQDirModel_new2(vtbl: pointer, ): ptr cQDirModel {.importc: "QDirModel_new2".}
proc fcQDirModel_new3(vtbl: pointer, nameFilters: struct_miqt_array, filters: cint, sort: cint, parent: pointer): ptr cQDirModel {.importc: "QDirModel_new3".}
proc fcQDirModel_new4(vtbl: pointer, parent: pointer): ptr cQDirModel {.importc: "QDirModel_new4".}
proc fcQDirModel_staticMetaObject(): pointer {.importc: "QDirModel_staticMetaObject".}
proc fcQDirModel_delete(self: pointer) {.importc: "QDirModel_delete".}

proc metaObject*(self: gen_qdirmodel_types.QDirModel, ): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQDirModel_metaObject(self.h))

proc metacast*(self: gen_qdirmodel_types.QDirModel, param1: cstring): pointer =
  fcQDirModel_metacast(self.h, param1)

proc metacall*(self: gen_qdirmodel_types.QDirModel, param1: cint, param2: cint, param3: pointer): cint =
  fcQDirModel_metacall(self.h, cint(param1), param2, param3)

proc tr*(_: type gen_qdirmodel_types.QDirModel, s: cstring): string =
  let v_ms = fcQDirModel_tr(s)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc trUtf8*(_: type gen_qdirmodel_types.QDirModel, s: cstring): string =
  let v_ms = fcQDirModel_trUtf8(s)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc index*(self: gen_qdirmodel_types.QDirModel, row: cint, column: cint, parent: gen_qabstractitemmodel_types.QModelIndex): gen_qabstractitemmodel_types.QModelIndex =
  gen_qabstractitemmodel_types.QModelIndex(h: fcQDirModel_index(self.h, row, column, parent.h))

proc parent*(self: gen_qdirmodel_types.QDirModel, child: gen_qabstractitemmodel_types.QModelIndex): gen_qabstractitemmodel_types.QModelIndex =
  gen_qabstractitemmodel_types.QModelIndex(h: fcQDirModel_parent(self.h, child.h))

proc rowCount*(self: gen_qdirmodel_types.QDirModel, parent: gen_qabstractitemmodel_types.QModelIndex): cint =
  fcQDirModel_rowCount(self.h, parent.h)

proc columnCount*(self: gen_qdirmodel_types.QDirModel, parent: gen_qabstractitemmodel_types.QModelIndex): cint =
  fcQDirModel_columnCount(self.h, parent.h)

proc data*(self: gen_qdirmodel_types.QDirModel, index: gen_qabstractitemmodel_types.QModelIndex, role: cint): gen_qvariant_types.QVariant =
  gen_qvariant_types.QVariant(h: fcQDirModel_data(self.h, index.h, role))

proc setData*(self: gen_qdirmodel_types.QDirModel, index: gen_qabstractitemmodel_types.QModelIndex, value: gen_qvariant_types.QVariant, role: cint): bool =
  fcQDirModel_setData(self.h, index.h, value.h, role)

proc headerData*(self: gen_qdirmodel_types.QDirModel, section: cint, orientation: cint, role: cint): gen_qvariant_types.QVariant =
  gen_qvariant_types.QVariant(h: fcQDirModel_headerData(self.h, section, cint(orientation), role))

proc hasChildren*(self: gen_qdirmodel_types.QDirModel, index: gen_qabstractitemmodel_types.QModelIndex): bool =
  fcQDirModel_hasChildren(self.h, index.h)

proc flags*(self: gen_qdirmodel_types.QDirModel, index: gen_qabstractitemmodel_types.QModelIndex): cint =
  cint(fcQDirModel_flags(self.h, index.h))

proc sort*(self: gen_qdirmodel_types.QDirModel, column: cint, order: cint): void =
  fcQDirModel_sort(self.h, column, cint(order))

proc mimeTypes*(self: gen_qdirmodel_types.QDirModel, ): seq[string] =
  var v_ma = fcQDirModel_mimeTypes(self.h)
  var vx_ret = newSeq[string](int(v_ma.len))
  let v_outCast = cast[ptr UncheckedArray[struct_miqt_string]](v_ma.data)
  for i in 0 ..< v_ma.len:
    let vx_lv_ms = v_outCast[i]
    let vx_lvx_ret = string.fromBytes(toOpenArrayByte(vx_lv_ms.data, 0, int(vx_lv_ms.len)-1))
    c_free(vx_lv_ms.data)
    vx_ret[i] = vx_lvx_ret
  vx_ret

proc mimeData*(self: gen_qdirmodel_types.QDirModel, indexes: seq[gen_qabstractitemmodel_types.QModelIndex]): gen_qmimedata_types.QMimeData =
  var indexes_CArray = newSeq[pointer](len(indexes))
  for i in 0..<len(indexes):
    indexes_CArray[i] = indexes[i].h

  gen_qmimedata_types.QMimeData(h: fcQDirModel_mimeData(self.h, struct_miqt_array(len: csize_t(len(indexes)), data: if len(indexes) == 0: nil else: addr(indexes_CArray[0]))))

proc dropMimeData*(self: gen_qdirmodel_types.QDirModel, data: gen_qmimedata_types.QMimeData, action: cint, row: cint, column: cint, parent: gen_qabstractitemmodel_types.QModelIndex): bool =
  fcQDirModel_dropMimeData(self.h, data.h, cint(action), row, column, parent.h)

proc supportedDropActions*(self: gen_qdirmodel_types.QDirModel, ): cint =
  cint(fcQDirModel_supportedDropActions(self.h))

proc setIconProvider*(self: gen_qdirmodel_types.QDirModel, provider: gen_qfileiconprovider_types.QFileIconProvider): void =
  fcQDirModel_setIconProvider(self.h, provider.h)

proc iconProvider*(self: gen_qdirmodel_types.QDirModel, ): gen_qfileiconprovider_types.QFileIconProvider =
  gen_qfileiconprovider_types.QFileIconProvider(h: fcQDirModel_iconProvider(self.h))

proc setNameFilters*(self: gen_qdirmodel_types.QDirModel, filters: seq[string]): void =
  var filters_CArray = newSeq[struct_miqt_string](len(filters))
  for i in 0..<len(filters):
    filters_CArray[i] = struct_miqt_string(data: filters[i], len: csize_t(len(filters[i])))

  fcQDirModel_setNameFilters(self.h, struct_miqt_array(len: csize_t(len(filters)), data: if len(filters) == 0: nil else: addr(filters_CArray[0])))

proc nameFilters*(self: gen_qdirmodel_types.QDirModel, ): seq[string] =
  var v_ma = fcQDirModel_nameFilters(self.h)
  var vx_ret = newSeq[string](int(v_ma.len))
  let v_outCast = cast[ptr UncheckedArray[struct_miqt_string]](v_ma.data)
  for i in 0 ..< v_ma.len:
    let vx_lv_ms = v_outCast[i]
    let vx_lvx_ret = string.fromBytes(toOpenArrayByte(vx_lv_ms.data, 0, int(vx_lv_ms.len)-1))
    c_free(vx_lv_ms.data)
    vx_ret[i] = vx_lvx_ret
  vx_ret

proc setFilter*(self: gen_qdirmodel_types.QDirModel, filters: cint): void =
  fcQDirModel_setFilter(self.h, cint(filters))

proc filter*(self: gen_qdirmodel_types.QDirModel, ): cint =
  cint(fcQDirModel_filter(self.h))

proc setSorting*(self: gen_qdirmodel_types.QDirModel, sort: cint): void =
  fcQDirModel_setSorting(self.h, cint(sort))

proc sorting*(self: gen_qdirmodel_types.QDirModel, ): cint =
  cint(fcQDirModel_sorting(self.h))

proc setResolveSymlinks*(self: gen_qdirmodel_types.QDirModel, enable: bool): void =
  fcQDirModel_setResolveSymlinks(self.h, enable)

proc resolveSymlinks*(self: gen_qdirmodel_types.QDirModel, ): bool =
  fcQDirModel_resolveSymlinks(self.h)

proc setReadOnly*(self: gen_qdirmodel_types.QDirModel, enable: bool): void =
  fcQDirModel_setReadOnly(self.h, enable)

proc isReadOnly*(self: gen_qdirmodel_types.QDirModel, ): bool =
  fcQDirModel_isReadOnly(self.h)

proc setLazyChildCount*(self: gen_qdirmodel_types.QDirModel, enable: bool): void =
  fcQDirModel_setLazyChildCount(self.h, enable)

proc lazyChildCount*(self: gen_qdirmodel_types.QDirModel, ): bool =
  fcQDirModel_lazyChildCount(self.h)

proc index*(self: gen_qdirmodel_types.QDirModel, path: string): gen_qabstractitemmodel_types.QModelIndex =
  gen_qabstractitemmodel_types.QModelIndex(h: fcQDirModel_indexWithPath(self.h, struct_miqt_string(data: path, len: csize_t(len(path)))))

proc isDir*(self: gen_qdirmodel_types.QDirModel, index: gen_qabstractitemmodel_types.QModelIndex): bool =
  fcQDirModel_isDir(self.h, index.h)

proc mkdir*(self: gen_qdirmodel_types.QDirModel, parent: gen_qabstractitemmodel_types.QModelIndex, name: string): gen_qabstractitemmodel_types.QModelIndex =
  gen_qabstractitemmodel_types.QModelIndex(h: fcQDirModel_mkdir(self.h, parent.h, struct_miqt_string(data: name, len: csize_t(len(name)))))

proc rmdir*(self: gen_qdirmodel_types.QDirModel, index: gen_qabstractitemmodel_types.QModelIndex): bool =
  fcQDirModel_rmdir(self.h, index.h)

proc remove*(self: gen_qdirmodel_types.QDirModel, index: gen_qabstractitemmodel_types.QModelIndex): bool =
  fcQDirModel_remove(self.h, index.h)

proc filePath*(self: gen_qdirmodel_types.QDirModel, index: gen_qabstractitemmodel_types.QModelIndex): string =
  let v_ms = fcQDirModel_filePath(self.h, index.h)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc fileName*(self: gen_qdirmodel_types.QDirModel, index: gen_qabstractitemmodel_types.QModelIndex): string =
  let v_ms = fcQDirModel_fileName(self.h, index.h)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc fileIcon*(self: gen_qdirmodel_types.QDirModel, index: gen_qabstractitemmodel_types.QModelIndex): gen_qicon_types.QIcon =
  gen_qicon_types.QIcon(h: fcQDirModel_fileIcon(self.h, index.h))

proc fileInfo*(self: gen_qdirmodel_types.QDirModel, index: gen_qabstractitemmodel_types.QModelIndex): gen_qfileinfo_types.QFileInfo =
  gen_qfileinfo_types.QFileInfo(h: fcQDirModel_fileInfo(self.h, index.h))

proc refresh*(self: gen_qdirmodel_types.QDirModel, ): void =
  fcQDirModel_refresh(self.h)

proc tr*(_: type gen_qdirmodel_types.QDirModel, s: cstring, c: cstring): string =
  let v_ms = fcQDirModel_tr2(s, c)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc tr*(_: type gen_qdirmodel_types.QDirModel, s: cstring, c: cstring, n: cint): string =
  let v_ms = fcQDirModel_tr3(s, c, n)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc trUtf8*(_: type gen_qdirmodel_types.QDirModel, s: cstring, c: cstring): string =
  let v_ms = fcQDirModel_trUtf82(s, c)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc trUtf8*(_: type gen_qdirmodel_types.QDirModel, s: cstring, c: cstring, n: cint): string =
  let v_ms = fcQDirModel_trUtf83(s, c, n)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc index*(self: gen_qdirmodel_types.QDirModel, path: string, column: cint): gen_qabstractitemmodel_types.QModelIndex =
  gen_qabstractitemmodel_types.QModelIndex(h: fcQDirModel_index2(self.h, struct_miqt_string(data: path, len: csize_t(len(path))), column))

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
type QDirModelmimeDataProc* = proc(self: QDirModel, indexes: seq[gen_qabstractitemmodel_types.QModelIndex]): gen_qmimedata_types.QMimeData {.raises: [], gcsafe.}
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
type QDirModelVTable* = object
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
proc QDirModelmetaObject*(self: gen_qdirmodel_types.QDirModel, ): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQDirModel_virtualbase_metaObject(self.h))

proc miqt_exec_callback_cQDirModel_metaObject(vtbl: pointer, self: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QDirModelVTable](vtbl)
  let self = QDirModel(h: self)
  var virtualReturn = vtbl[].metaObject(self)
  virtualReturn.h

proc QDirModelmetacast*(self: gen_qdirmodel_types.QDirModel, param1: cstring): pointer =
  fcQDirModel_virtualbase_metacast(self.h, param1)

proc miqt_exec_callback_cQDirModel_metacast(vtbl: pointer, self: pointer, param1: cstring): pointer {.cdecl.} =
  let vtbl = cast[ptr QDirModelVTable](vtbl)
  let self = QDirModel(h: self)
  let slotval1 = (param1)
  var virtualReturn = vtbl[].metacast(self, slotval1)
  virtualReturn

proc QDirModelmetacall*(self: gen_qdirmodel_types.QDirModel, param1: cint, param2: cint, param3: pointer): cint =
  fcQDirModel_virtualbase_metacall(self.h, cint(param1), param2, param3)

proc miqt_exec_callback_cQDirModel_metacall(vtbl: pointer, self: pointer, param1: cint, param2: cint, param3: pointer): cint {.cdecl.} =
  let vtbl = cast[ptr QDirModelVTable](vtbl)
  let self = QDirModel(h: self)
  let slotval1 = cint(param1)
  let slotval2 = param2
  let slotval3 = param3
  var virtualReturn = vtbl[].metacall(self, slotval1, slotval2, slotval3)
  virtualReturn

proc QDirModelindex*(self: gen_qdirmodel_types.QDirModel, row: cint, column: cint, parent: gen_qabstractitemmodel_types.QModelIndex): gen_qabstractitemmodel_types.QModelIndex =
  gen_qabstractitemmodel_types.QModelIndex(h: fcQDirModel_virtualbase_index(self.h, row, column, parent.h))

proc miqt_exec_callback_cQDirModel_index(vtbl: pointer, self: pointer, row: cint, column: cint, parent: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QDirModelVTable](vtbl)
  let self = QDirModel(h: self)
  let slotval1 = row
  let slotval2 = column
  let slotval3 = gen_qabstractitemmodel_types.QModelIndex(h: parent)
  var virtualReturn = vtbl[].index(self, slotval1, slotval2, slotval3)
  virtualReturn.h

proc QDirModelparent*(self: gen_qdirmodel_types.QDirModel, child: gen_qabstractitemmodel_types.QModelIndex): gen_qabstractitemmodel_types.QModelIndex =
  gen_qabstractitemmodel_types.QModelIndex(h: fcQDirModel_virtualbase_parent(self.h, child.h))

proc miqt_exec_callback_cQDirModel_parent(vtbl: pointer, self: pointer, child: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QDirModelVTable](vtbl)
  let self = QDirModel(h: self)
  let slotval1 = gen_qabstractitemmodel_types.QModelIndex(h: child)
  var virtualReturn = vtbl[].parent(self, slotval1)
  virtualReturn.h

proc QDirModelrowCount*(self: gen_qdirmodel_types.QDirModel, parent: gen_qabstractitemmodel_types.QModelIndex): cint =
  fcQDirModel_virtualbase_rowCount(self.h, parent.h)

proc miqt_exec_callback_cQDirModel_rowCount(vtbl: pointer, self: pointer, parent: pointer): cint {.cdecl.} =
  let vtbl = cast[ptr QDirModelVTable](vtbl)
  let self = QDirModel(h: self)
  let slotval1 = gen_qabstractitemmodel_types.QModelIndex(h: parent)
  var virtualReturn = vtbl[].rowCount(self, slotval1)
  virtualReturn

proc QDirModelcolumnCount*(self: gen_qdirmodel_types.QDirModel, parent: gen_qabstractitemmodel_types.QModelIndex): cint =
  fcQDirModel_virtualbase_columnCount(self.h, parent.h)

proc miqt_exec_callback_cQDirModel_columnCount(vtbl: pointer, self: pointer, parent: pointer): cint {.cdecl.} =
  let vtbl = cast[ptr QDirModelVTable](vtbl)
  let self = QDirModel(h: self)
  let slotval1 = gen_qabstractitemmodel_types.QModelIndex(h: parent)
  var virtualReturn = vtbl[].columnCount(self, slotval1)
  virtualReturn

proc QDirModeldata*(self: gen_qdirmodel_types.QDirModel, index: gen_qabstractitemmodel_types.QModelIndex, role: cint): gen_qvariant_types.QVariant =
  gen_qvariant_types.QVariant(h: fcQDirModel_virtualbase_data(self.h, index.h, role))

proc miqt_exec_callback_cQDirModel_data(vtbl: pointer, self: pointer, index: pointer, role: cint): pointer {.cdecl.} =
  let vtbl = cast[ptr QDirModelVTable](vtbl)
  let self = QDirModel(h: self)
  let slotval1 = gen_qabstractitemmodel_types.QModelIndex(h: index)
  let slotval2 = role
  var virtualReturn = vtbl[].data(self, slotval1, slotval2)
  virtualReturn.h

proc QDirModelsetData*(self: gen_qdirmodel_types.QDirModel, index: gen_qabstractitemmodel_types.QModelIndex, value: gen_qvariant_types.QVariant, role: cint): bool =
  fcQDirModel_virtualbase_setData(self.h, index.h, value.h, role)

proc miqt_exec_callback_cQDirModel_setData(vtbl: pointer, self: pointer, index: pointer, value: pointer, role: cint): bool {.cdecl.} =
  let vtbl = cast[ptr QDirModelVTable](vtbl)
  let self = QDirModel(h: self)
  let slotval1 = gen_qabstractitemmodel_types.QModelIndex(h: index)
  let slotval2 = gen_qvariant_types.QVariant(h: value)
  let slotval3 = role
  var virtualReturn = vtbl[].setData(self, slotval1, slotval2, slotval3)
  virtualReturn

proc QDirModelheaderData*(self: gen_qdirmodel_types.QDirModel, section: cint, orientation: cint, role: cint): gen_qvariant_types.QVariant =
  gen_qvariant_types.QVariant(h: fcQDirModel_virtualbase_headerData(self.h, section, cint(orientation), role))

proc miqt_exec_callback_cQDirModel_headerData(vtbl: pointer, self: pointer, section: cint, orientation: cint, role: cint): pointer {.cdecl.} =
  let vtbl = cast[ptr QDirModelVTable](vtbl)
  let self = QDirModel(h: self)
  let slotval1 = section
  let slotval2 = cint(orientation)
  let slotval3 = role
  var virtualReturn = vtbl[].headerData(self, slotval1, slotval2, slotval3)
  virtualReturn.h

proc QDirModelhasChildren*(self: gen_qdirmodel_types.QDirModel, index: gen_qabstractitemmodel_types.QModelIndex): bool =
  fcQDirModel_virtualbase_hasChildren(self.h, index.h)

proc miqt_exec_callback_cQDirModel_hasChildren(vtbl: pointer, self: pointer, index: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QDirModelVTable](vtbl)
  let self = QDirModel(h: self)
  let slotval1 = gen_qabstractitemmodel_types.QModelIndex(h: index)
  var virtualReturn = vtbl[].hasChildren(self, slotval1)
  virtualReturn

proc QDirModelflags*(self: gen_qdirmodel_types.QDirModel, index: gen_qabstractitemmodel_types.QModelIndex): cint =
  cint(fcQDirModel_virtualbase_flags(self.h, index.h))

proc miqt_exec_callback_cQDirModel_flags(vtbl: pointer, self: pointer, index: pointer): cint {.cdecl.} =
  let vtbl = cast[ptr QDirModelVTable](vtbl)
  let self = QDirModel(h: self)
  let slotval1 = gen_qabstractitemmodel_types.QModelIndex(h: index)
  var virtualReturn = vtbl[].flags(self, slotval1)
  cint(virtualReturn)

proc QDirModelsort*(self: gen_qdirmodel_types.QDirModel, column: cint, order: cint): void =
  fcQDirModel_virtualbase_sort(self.h, column, cint(order))

proc miqt_exec_callback_cQDirModel_sort(vtbl: pointer, self: pointer, column: cint, order: cint): void {.cdecl.} =
  let vtbl = cast[ptr QDirModelVTable](vtbl)
  let self = QDirModel(h: self)
  let slotval1 = column
  let slotval2 = cint(order)
  vtbl[].sort(self, slotval1, slotval2)

proc QDirModelmimeTypes*(self: gen_qdirmodel_types.QDirModel, ): seq[string] =
  var v_ma = fcQDirModel_virtualbase_mimeTypes(self.h)
  var vx_ret = newSeq[string](int(v_ma.len))
  let v_outCast = cast[ptr UncheckedArray[struct_miqt_string]](v_ma.data)
  for i in 0 ..< v_ma.len:
    let vx_lv_ms = v_outCast[i]
    let vx_lvx_ret = string.fromBytes(toOpenArrayByte(vx_lv_ms.data, 0, int(vx_lv_ms.len)-1))
    c_free(vx_lv_ms.data)
    vx_ret[i] = vx_lvx_ret
  vx_ret

proc miqt_exec_callback_cQDirModel_mimeTypes(vtbl: pointer, self: pointer): struct_miqt_array {.cdecl.} =
  let vtbl = cast[ptr QDirModelVTable](vtbl)
  let self = QDirModel(h: self)
  var virtualReturn = vtbl[].mimeTypes(self)
  var virtualReturn_CArray = newSeq[struct_miqt_string](len(virtualReturn))
  for i in 0..<len(virtualReturn):
    virtualReturn_CArray[i] = struct_miqt_string(data: virtualReturn[i], len: csize_t(len(virtualReturn[i])))

  struct_miqt_array(len: csize_t(len(virtualReturn)), data: if len(virtualReturn) == 0: nil else: addr(virtualReturn_CArray[0]))

proc QDirModelmimeData*(self: gen_qdirmodel_types.QDirModel, indexes: seq[gen_qabstractitemmodel_types.QModelIndex]): gen_qmimedata_types.QMimeData =
  var indexes_CArray = newSeq[pointer](len(indexes))
  for i in 0..<len(indexes):
    indexes_CArray[i] = indexes[i].h

  gen_qmimedata_types.QMimeData(h: fcQDirModel_virtualbase_mimeData(self.h, struct_miqt_array(len: csize_t(len(indexes)), data: if len(indexes) == 0: nil else: addr(indexes_CArray[0]))))

proc miqt_exec_callback_cQDirModel_mimeData(vtbl: pointer, self: pointer, indexes: struct_miqt_array): pointer {.cdecl.} =
  let vtbl = cast[ptr QDirModelVTable](vtbl)
  let self = QDirModel(h: self)
  var vindexes_ma = indexes
  var vindexesx_ret = newSeq[gen_qabstractitemmodel_types.QModelIndex](int(vindexes_ma.len))
  let vindexes_outCast = cast[ptr UncheckedArray[pointer]](vindexes_ma.data)
  for i in 0 ..< vindexes_ma.len:
    vindexesx_ret[i] = gen_qabstractitemmodel_types.QModelIndex(h: vindexes_outCast[i])
  let slotval1 = vindexesx_ret
  var virtualReturn = vtbl[].mimeData(self, slotval1)
  virtualReturn.h

proc QDirModeldropMimeData*(self: gen_qdirmodel_types.QDirModel, data: gen_qmimedata_types.QMimeData, action: cint, row: cint, column: cint, parent: gen_qabstractitemmodel_types.QModelIndex): bool =
  fcQDirModel_virtualbase_dropMimeData(self.h, data.h, cint(action), row, column, parent.h)

proc miqt_exec_callback_cQDirModel_dropMimeData(vtbl: pointer, self: pointer, data: pointer, action: cint, row: cint, column: cint, parent: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QDirModelVTable](vtbl)
  let self = QDirModel(h: self)
  let slotval1 = gen_qmimedata_types.QMimeData(h: data)
  let slotval2 = cint(action)
  let slotval3 = row
  let slotval4 = column
  let slotval5 = gen_qabstractitemmodel_types.QModelIndex(h: parent)
  var virtualReturn = vtbl[].dropMimeData(self, slotval1, slotval2, slotval3, slotval4, slotval5)
  virtualReturn

proc QDirModelsupportedDropActions*(self: gen_qdirmodel_types.QDirModel, ): cint =
  cint(fcQDirModel_virtualbase_supportedDropActions(self.h))

proc miqt_exec_callback_cQDirModel_supportedDropActions(vtbl: pointer, self: pointer): cint {.cdecl.} =
  let vtbl = cast[ptr QDirModelVTable](vtbl)
  let self = QDirModel(h: self)
  var virtualReturn = vtbl[].supportedDropActions(self)
  cint(virtualReturn)

proc QDirModelsibling*(self: gen_qdirmodel_types.QDirModel, row: cint, column: cint, idx: gen_qabstractitemmodel_types.QModelIndex): gen_qabstractitemmodel_types.QModelIndex =
  gen_qabstractitemmodel_types.QModelIndex(h: fcQDirModel_virtualbase_sibling(self.h, row, column, idx.h))

proc miqt_exec_callback_cQDirModel_sibling(vtbl: pointer, self: pointer, row: cint, column: cint, idx: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QDirModelVTable](vtbl)
  let self = QDirModel(h: self)
  let slotval1 = row
  let slotval2 = column
  let slotval3 = gen_qabstractitemmodel_types.QModelIndex(h: idx)
  var virtualReturn = vtbl[].sibling(self, slotval1, slotval2, slotval3)
  virtualReturn.h

proc QDirModelsetHeaderData*(self: gen_qdirmodel_types.QDirModel, section: cint, orientation: cint, value: gen_qvariant_types.QVariant, role: cint): bool =
  fcQDirModel_virtualbase_setHeaderData(self.h, section, cint(orientation), value.h, role)

proc miqt_exec_callback_cQDirModel_setHeaderData(vtbl: pointer, self: pointer, section: cint, orientation: cint, value: pointer, role: cint): bool {.cdecl.} =
  let vtbl = cast[ptr QDirModelVTable](vtbl)
  let self = QDirModel(h: self)
  let slotval1 = section
  let slotval2 = cint(orientation)
  let slotval3 = gen_qvariant_types.QVariant(h: value)
  let slotval4 = role
  var virtualReturn = vtbl[].setHeaderData(self, slotval1, slotval2, slotval3, slotval4)
  virtualReturn

proc QDirModelitemData*(self: gen_qdirmodel_types.QDirModel, index: gen_qabstractitemmodel_types.QModelIndex): Table[cint,gen_qvariant_types.QVariant] =
  var v_mm = fcQDirModel_virtualbase_itemData(self.h, index.h)
  var vx_ret: Table[cint, gen_qvariant_types.QVariant]
  var v_Keys = cast[ptr UncheckedArray[cint]](v_mm.keys)
  var v_Values = cast[ptr UncheckedArray[pointer]](v_mm.values)
  for i in 0..<v_mm.len:
    var v_entry_Key = v_Keys[i]

    var v_entry_Value = gen_qvariant_types.QVariant(h: v_Values[i])

    vx_ret[v_entry_Key] = v_entry_Value
  vx_ret

proc miqt_exec_callback_cQDirModel_itemData(vtbl: pointer, self: pointer, index: pointer): struct_miqt_map {.cdecl.} =
  let vtbl = cast[ptr QDirModelVTable](vtbl)
  let self = QDirModel(h: self)
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

proc QDirModelsetItemData*(self: gen_qdirmodel_types.QDirModel, index: gen_qabstractitemmodel_types.QModelIndex, roles: Table[cint,gen_qvariant_types.QVariant]): bool =
  var roles_Keys_CArray = newSeq[cint](len(roles))
  var roles_Values_CArray = newSeq[pointer](len(roles))
  var roles_ctr = 0
  for rolesk, rolesv in roles:
    roles_Keys_CArray[roles_ctr] = roles_k
    roles_Values_CArray[roles_ctr] = roles_v.h
    roles_ctr += 1

  fcQDirModel_virtualbase_setItemData(self.h, index.h, struct_miqt_map(len: csize_t(len(roles)),keys: if len(roles) == 0: nil else: addr(roles_Keys_CArray[0]), values: if len(roles) == 0: nil else: addr(roles_Values_CArray[0]),))

proc miqt_exec_callback_cQDirModel_setItemData(vtbl: pointer, self: pointer, index: pointer, roles: struct_miqt_map): bool {.cdecl.} =
  let vtbl = cast[ptr QDirModelVTable](vtbl)
  let self = QDirModel(h: self)
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

proc QDirModelcanDropMimeData*(self: gen_qdirmodel_types.QDirModel, data: gen_qmimedata_types.QMimeData, action: cint, row: cint, column: cint, parent: gen_qabstractitemmodel_types.QModelIndex): bool =
  fcQDirModel_virtualbase_canDropMimeData(self.h, data.h, cint(action), row, column, parent.h)

proc miqt_exec_callback_cQDirModel_canDropMimeData(vtbl: pointer, self: pointer, data: pointer, action: cint, row: cint, column: cint, parent: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QDirModelVTable](vtbl)
  let self = QDirModel(h: self)
  let slotval1 = gen_qmimedata_types.QMimeData(h: data)
  let slotval2 = cint(action)
  let slotval3 = row
  let slotval4 = column
  let slotval5 = gen_qabstractitemmodel_types.QModelIndex(h: parent)
  var virtualReturn = vtbl[].canDropMimeData(self, slotval1, slotval2, slotval3, slotval4, slotval5)
  virtualReturn

proc QDirModelsupportedDragActions*(self: gen_qdirmodel_types.QDirModel, ): cint =
  cint(fcQDirModel_virtualbase_supportedDragActions(self.h))

proc miqt_exec_callback_cQDirModel_supportedDragActions(vtbl: pointer, self: pointer): cint {.cdecl.} =
  let vtbl = cast[ptr QDirModelVTable](vtbl)
  let self = QDirModel(h: self)
  var virtualReturn = vtbl[].supportedDragActions(self)
  cint(virtualReturn)

proc QDirModelinsertRows*(self: gen_qdirmodel_types.QDirModel, row: cint, count: cint, parent: gen_qabstractitemmodel_types.QModelIndex): bool =
  fcQDirModel_virtualbase_insertRows(self.h, row, count, parent.h)

proc miqt_exec_callback_cQDirModel_insertRows(vtbl: pointer, self: pointer, row: cint, count: cint, parent: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QDirModelVTable](vtbl)
  let self = QDirModel(h: self)
  let slotval1 = row
  let slotval2 = count
  let slotval3 = gen_qabstractitemmodel_types.QModelIndex(h: parent)
  var virtualReturn = vtbl[].insertRows(self, slotval1, slotval2, slotval3)
  virtualReturn

proc QDirModelinsertColumns*(self: gen_qdirmodel_types.QDirModel, column: cint, count: cint, parent: gen_qabstractitemmodel_types.QModelIndex): bool =
  fcQDirModel_virtualbase_insertColumns(self.h, column, count, parent.h)

proc miqt_exec_callback_cQDirModel_insertColumns(vtbl: pointer, self: pointer, column: cint, count: cint, parent: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QDirModelVTable](vtbl)
  let self = QDirModel(h: self)
  let slotval1 = column
  let slotval2 = count
  let slotval3 = gen_qabstractitemmodel_types.QModelIndex(h: parent)
  var virtualReturn = vtbl[].insertColumns(self, slotval1, slotval2, slotval3)
  virtualReturn

proc QDirModelremoveRows*(self: gen_qdirmodel_types.QDirModel, row: cint, count: cint, parent: gen_qabstractitemmodel_types.QModelIndex): bool =
  fcQDirModel_virtualbase_removeRows(self.h, row, count, parent.h)

proc miqt_exec_callback_cQDirModel_removeRows(vtbl: pointer, self: pointer, row: cint, count: cint, parent: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QDirModelVTable](vtbl)
  let self = QDirModel(h: self)
  let slotval1 = row
  let slotval2 = count
  let slotval3 = gen_qabstractitemmodel_types.QModelIndex(h: parent)
  var virtualReturn = vtbl[].removeRows(self, slotval1, slotval2, slotval3)
  virtualReturn

proc QDirModelremoveColumns*(self: gen_qdirmodel_types.QDirModel, column: cint, count: cint, parent: gen_qabstractitemmodel_types.QModelIndex): bool =
  fcQDirModel_virtualbase_removeColumns(self.h, column, count, parent.h)

proc miqt_exec_callback_cQDirModel_removeColumns(vtbl: pointer, self: pointer, column: cint, count: cint, parent: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QDirModelVTable](vtbl)
  let self = QDirModel(h: self)
  let slotval1 = column
  let slotval2 = count
  let slotval3 = gen_qabstractitemmodel_types.QModelIndex(h: parent)
  var virtualReturn = vtbl[].removeColumns(self, slotval1, slotval2, slotval3)
  virtualReturn

proc QDirModelmoveRows*(self: gen_qdirmodel_types.QDirModel, sourceParent: gen_qabstractitemmodel_types.QModelIndex, sourceRow: cint, count: cint, destinationParent: gen_qabstractitemmodel_types.QModelIndex, destinationChild: cint): bool =
  fcQDirModel_virtualbase_moveRows(self.h, sourceParent.h, sourceRow, count, destinationParent.h, destinationChild)

proc miqt_exec_callback_cQDirModel_moveRows(vtbl: pointer, self: pointer, sourceParent: pointer, sourceRow: cint, count: cint, destinationParent: pointer, destinationChild: cint): bool {.cdecl.} =
  let vtbl = cast[ptr QDirModelVTable](vtbl)
  let self = QDirModel(h: self)
  let slotval1 = gen_qabstractitemmodel_types.QModelIndex(h: sourceParent)
  let slotval2 = sourceRow
  let slotval3 = count
  let slotval4 = gen_qabstractitemmodel_types.QModelIndex(h: destinationParent)
  let slotval5 = destinationChild
  var virtualReturn = vtbl[].moveRows(self, slotval1, slotval2, slotval3, slotval4, slotval5)
  virtualReturn

proc QDirModelmoveColumns*(self: gen_qdirmodel_types.QDirModel, sourceParent: gen_qabstractitemmodel_types.QModelIndex, sourceColumn: cint, count: cint, destinationParent: gen_qabstractitemmodel_types.QModelIndex, destinationChild: cint): bool =
  fcQDirModel_virtualbase_moveColumns(self.h, sourceParent.h, sourceColumn, count, destinationParent.h, destinationChild)

proc miqt_exec_callback_cQDirModel_moveColumns(vtbl: pointer, self: pointer, sourceParent: pointer, sourceColumn: cint, count: cint, destinationParent: pointer, destinationChild: cint): bool {.cdecl.} =
  let vtbl = cast[ptr QDirModelVTable](vtbl)
  let self = QDirModel(h: self)
  let slotval1 = gen_qabstractitemmodel_types.QModelIndex(h: sourceParent)
  let slotval2 = sourceColumn
  let slotval3 = count
  let slotval4 = gen_qabstractitemmodel_types.QModelIndex(h: destinationParent)
  let slotval5 = destinationChild
  var virtualReturn = vtbl[].moveColumns(self, slotval1, slotval2, slotval3, slotval4, slotval5)
  virtualReturn

proc QDirModelfetchMore*(self: gen_qdirmodel_types.QDirModel, parent: gen_qabstractitemmodel_types.QModelIndex): void =
  fcQDirModel_virtualbase_fetchMore(self.h, parent.h)

proc miqt_exec_callback_cQDirModel_fetchMore(vtbl: pointer, self: pointer, parent: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QDirModelVTable](vtbl)
  let self = QDirModel(h: self)
  let slotval1 = gen_qabstractitemmodel_types.QModelIndex(h: parent)
  vtbl[].fetchMore(self, slotval1)

proc QDirModelcanFetchMore*(self: gen_qdirmodel_types.QDirModel, parent: gen_qabstractitemmodel_types.QModelIndex): bool =
  fcQDirModel_virtualbase_canFetchMore(self.h, parent.h)

proc miqt_exec_callback_cQDirModel_canFetchMore(vtbl: pointer, self: pointer, parent: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QDirModelVTable](vtbl)
  let self = QDirModel(h: self)
  let slotval1 = gen_qabstractitemmodel_types.QModelIndex(h: parent)
  var virtualReturn = vtbl[].canFetchMore(self, slotval1)
  virtualReturn

proc QDirModelbuddy*(self: gen_qdirmodel_types.QDirModel, index: gen_qabstractitemmodel_types.QModelIndex): gen_qabstractitemmodel_types.QModelIndex =
  gen_qabstractitemmodel_types.QModelIndex(h: fcQDirModel_virtualbase_buddy(self.h, index.h))

proc miqt_exec_callback_cQDirModel_buddy(vtbl: pointer, self: pointer, index: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QDirModelVTable](vtbl)
  let self = QDirModel(h: self)
  let slotval1 = gen_qabstractitemmodel_types.QModelIndex(h: index)
  var virtualReturn = vtbl[].buddy(self, slotval1)
  virtualReturn.h

proc QDirModelmatch*(self: gen_qdirmodel_types.QDirModel, start: gen_qabstractitemmodel_types.QModelIndex, role: cint, value: gen_qvariant_types.QVariant, hits: cint, flags: cint): seq[gen_qabstractitemmodel_types.QModelIndex] =
  var v_ma = fcQDirModel_virtualbase_match(self.h, start.h, role, value.h, hits, cint(flags))
  var vx_ret = newSeq[gen_qabstractitemmodel_types.QModelIndex](int(v_ma.len))
  let v_outCast = cast[ptr UncheckedArray[pointer]](v_ma.data)
  for i in 0 ..< v_ma.len:
    vx_ret[i] = gen_qabstractitemmodel_types.QModelIndex(h: v_outCast[i])
  vx_ret

proc miqt_exec_callback_cQDirModel_match(vtbl: pointer, self: pointer, start: pointer, role: cint, value: pointer, hits: cint, flags: cint): struct_miqt_array {.cdecl.} =
  let vtbl = cast[ptr QDirModelVTable](vtbl)
  let self = QDirModel(h: self)
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

proc QDirModelspan*(self: gen_qdirmodel_types.QDirModel, index: gen_qabstractitemmodel_types.QModelIndex): gen_qsize_types.QSize =
  gen_qsize_types.QSize(h: fcQDirModel_virtualbase_span(self.h, index.h))

proc miqt_exec_callback_cQDirModel_span(vtbl: pointer, self: pointer, index: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QDirModelVTable](vtbl)
  let self = QDirModel(h: self)
  let slotval1 = gen_qabstractitemmodel_types.QModelIndex(h: index)
  var virtualReturn = vtbl[].span(self, slotval1)
  virtualReturn.h

proc QDirModelroleNames*(self: gen_qdirmodel_types.QDirModel, ): Table[cint,seq[byte]] =
  var v_mm = fcQDirModel_virtualbase_roleNames(self.h)
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

proc miqt_exec_callback_cQDirModel_roleNames(vtbl: pointer, self: pointer): struct_miqt_map {.cdecl.} =
  let vtbl = cast[ptr QDirModelVTable](vtbl)
  let self = QDirModel(h: self)
  var virtualReturn = vtbl[].roleNames(self)
  var virtualReturn_Keys_CArray = newSeq[cint](len(virtualReturn))
  var virtualReturn_Values_CArray = newSeq[struct_miqt_string](len(virtualReturn))
  var virtualReturn_ctr = 0
  for virtualReturnk, virtualReturnv in virtualReturn:
    virtualReturn_Keys_CArray[virtualReturn_ctr] = virtualReturn_k
    virtualReturn_Values_CArray[virtualReturn_ctr] = struct_miqt_string(data: cast[cstring](if len(virtualReturn_v) == 0: nil else: unsafeAddr virtualReturn_v[0]), len: csize_t(len(virtualReturn_v)))
    virtualReturn_ctr += 1

  struct_miqt_map(len: csize_t(len(virtualReturn)),keys: if len(virtualReturn) == 0: nil else: addr(virtualReturn_Keys_CArray[0]), values: if len(virtualReturn) == 0: nil else: addr(virtualReturn_Values_CArray[0]),)

proc QDirModelsubmit*(self: gen_qdirmodel_types.QDirModel, ): bool =
  fcQDirModel_virtualbase_submit(self.h)

proc miqt_exec_callback_cQDirModel_submit(vtbl: pointer, self: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QDirModelVTable](vtbl)
  let self = QDirModel(h: self)
  var virtualReturn = vtbl[].submit(self)
  virtualReturn

proc QDirModelrevert*(self: gen_qdirmodel_types.QDirModel, ): void =
  fcQDirModel_virtualbase_revert(self.h)

proc miqt_exec_callback_cQDirModel_revert(vtbl: pointer, self: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QDirModelVTable](vtbl)
  let self = QDirModel(h: self)
  vtbl[].revert(self)

proc QDirModelevent*(self: gen_qdirmodel_types.QDirModel, event: gen_qcoreevent_types.QEvent): bool =
  fcQDirModel_virtualbase_event(self.h, event.h)

proc miqt_exec_callback_cQDirModel_event(vtbl: pointer, self: pointer, event: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QDirModelVTable](vtbl)
  let self = QDirModel(h: self)
  let slotval1 = gen_qcoreevent_types.QEvent(h: event)
  var virtualReturn = vtbl[].event(self, slotval1)
  virtualReturn

proc QDirModeleventFilter*(self: gen_qdirmodel_types.QDirModel, watched: gen_qobject_types.QObject, event: gen_qcoreevent_types.QEvent): bool =
  fcQDirModel_virtualbase_eventFilter(self.h, watched.h, event.h)

proc miqt_exec_callback_cQDirModel_eventFilter(vtbl: pointer, self: pointer, watched: pointer, event: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QDirModelVTable](vtbl)
  let self = QDirModel(h: self)
  let slotval1 = gen_qobject_types.QObject(h: watched)
  let slotval2 = gen_qcoreevent_types.QEvent(h: event)
  var virtualReturn = vtbl[].eventFilter(self, slotval1, slotval2)
  virtualReturn

proc QDirModeltimerEvent*(self: gen_qdirmodel_types.QDirModel, event: gen_qcoreevent_types.QTimerEvent): void =
  fcQDirModel_virtualbase_timerEvent(self.h, event.h)

proc miqt_exec_callback_cQDirModel_timerEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QDirModelVTable](vtbl)
  let self = QDirModel(h: self)
  let slotval1 = gen_qcoreevent_types.QTimerEvent(h: event)
  vtbl[].timerEvent(self, slotval1)

proc QDirModelchildEvent*(self: gen_qdirmodel_types.QDirModel, event: gen_qcoreevent_types.QChildEvent): void =
  fcQDirModel_virtualbase_childEvent(self.h, event.h)

proc miqt_exec_callback_cQDirModel_childEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QDirModelVTable](vtbl)
  let self = QDirModel(h: self)
  let slotval1 = gen_qcoreevent_types.QChildEvent(h: event)
  vtbl[].childEvent(self, slotval1)

proc QDirModelcustomEvent*(self: gen_qdirmodel_types.QDirModel, event: gen_qcoreevent_types.QEvent): void =
  fcQDirModel_virtualbase_customEvent(self.h, event.h)

proc miqt_exec_callback_cQDirModel_customEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QDirModelVTable](vtbl)
  let self = QDirModel(h: self)
  let slotval1 = gen_qcoreevent_types.QEvent(h: event)
  vtbl[].customEvent(self, slotval1)

proc QDirModelconnectNotify*(self: gen_qdirmodel_types.QDirModel, signal: gen_qmetaobject_types.QMetaMethod): void =
  fcQDirModel_virtualbase_connectNotify(self.h, signal.h)

proc miqt_exec_callback_cQDirModel_connectNotify(vtbl: pointer, self: pointer, signal: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QDirModelVTable](vtbl)
  let self = QDirModel(h: self)
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal)
  vtbl[].connectNotify(self, slotval1)

proc QDirModeldisconnectNotify*(self: gen_qdirmodel_types.QDirModel, signal: gen_qmetaobject_types.QMetaMethod): void =
  fcQDirModel_virtualbase_disconnectNotify(self.h, signal.h)

proc miqt_exec_callback_cQDirModel_disconnectNotify(vtbl: pointer, self: pointer, signal: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QDirModelVTable](vtbl)
  let self = QDirModel(h: self)
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal)
  vtbl[].disconnectNotify(self, slotval1)

proc resetInternalData*(self: gen_qdirmodel_types.QDirModel, ): void =
  fcQDirModel_protectedbase_resetInternalData(self.h)

proc createIndex*(self: gen_qdirmodel_types.QDirModel, row: cint, column: cint): gen_qabstractitemmodel_types.QModelIndex =
  gen_qabstractitemmodel_types.QModelIndex(h: fcQDirModel_protectedbase_createIndex(self.h, row, column))

proc encodeData*(self: gen_qdirmodel_types.QDirModel, indexes: seq[gen_qabstractitemmodel_types.QModelIndex], stream: gen_qdatastream_types.QDataStream): void =
  var indexes_CArray = newSeq[pointer](len(indexes))
  for i in 0..<len(indexes):
    indexes_CArray[i] = indexes[i].h

  fcQDirModel_protectedbase_encodeData(self.h, struct_miqt_array(len: csize_t(len(indexes)), data: if len(indexes) == 0: nil else: addr(indexes_CArray[0])), stream.h)

proc decodeData*(self: gen_qdirmodel_types.QDirModel, row: cint, column: cint, parent: gen_qabstractitemmodel_types.QModelIndex, stream: gen_qdatastream_types.QDataStream): bool =
  fcQDirModel_protectedbase_decodeData(self.h, row, column, parent.h, stream.h)

proc beginInsertRows*(self: gen_qdirmodel_types.QDirModel, parent: gen_qabstractitemmodel_types.QModelIndex, first: cint, last: cint): void =
  fcQDirModel_protectedbase_beginInsertRows(self.h, parent.h, first, last)

proc endInsertRows*(self: gen_qdirmodel_types.QDirModel, ): void =
  fcQDirModel_protectedbase_endInsertRows(self.h)

proc beginRemoveRows*(self: gen_qdirmodel_types.QDirModel, parent: gen_qabstractitemmodel_types.QModelIndex, first: cint, last: cint): void =
  fcQDirModel_protectedbase_beginRemoveRows(self.h, parent.h, first, last)

proc endRemoveRows*(self: gen_qdirmodel_types.QDirModel, ): void =
  fcQDirModel_protectedbase_endRemoveRows(self.h)

proc beginMoveRows*(self: gen_qdirmodel_types.QDirModel, sourceParent: gen_qabstractitemmodel_types.QModelIndex, sourceFirst: cint, sourceLast: cint, destinationParent: gen_qabstractitemmodel_types.QModelIndex, destinationRow: cint): bool =
  fcQDirModel_protectedbase_beginMoveRows(self.h, sourceParent.h, sourceFirst, sourceLast, destinationParent.h, destinationRow)

proc endMoveRows*(self: gen_qdirmodel_types.QDirModel, ): void =
  fcQDirModel_protectedbase_endMoveRows(self.h)

proc beginInsertColumns*(self: gen_qdirmodel_types.QDirModel, parent: gen_qabstractitemmodel_types.QModelIndex, first: cint, last: cint): void =
  fcQDirModel_protectedbase_beginInsertColumns(self.h, parent.h, first, last)

proc endInsertColumns*(self: gen_qdirmodel_types.QDirModel, ): void =
  fcQDirModel_protectedbase_endInsertColumns(self.h)

proc beginRemoveColumns*(self: gen_qdirmodel_types.QDirModel, parent: gen_qabstractitemmodel_types.QModelIndex, first: cint, last: cint): void =
  fcQDirModel_protectedbase_beginRemoveColumns(self.h, parent.h, first, last)

proc endRemoveColumns*(self: gen_qdirmodel_types.QDirModel, ): void =
  fcQDirModel_protectedbase_endRemoveColumns(self.h)

proc beginMoveColumns*(self: gen_qdirmodel_types.QDirModel, sourceParent: gen_qabstractitemmodel_types.QModelIndex, sourceFirst: cint, sourceLast: cint, destinationParent: gen_qabstractitemmodel_types.QModelIndex, destinationColumn: cint): bool =
  fcQDirModel_protectedbase_beginMoveColumns(self.h, sourceParent.h, sourceFirst, sourceLast, destinationParent.h, destinationColumn)

proc endMoveColumns*(self: gen_qdirmodel_types.QDirModel, ): void =
  fcQDirModel_protectedbase_endMoveColumns(self.h)

proc beginResetModel*(self: gen_qdirmodel_types.QDirModel, ): void =
  fcQDirModel_protectedbase_beginResetModel(self.h)

proc endResetModel*(self: gen_qdirmodel_types.QDirModel, ): void =
  fcQDirModel_protectedbase_endResetModel(self.h)

proc changePersistentIndex*(self: gen_qdirmodel_types.QDirModel, fromVal: gen_qabstractitemmodel_types.QModelIndex, to: gen_qabstractitemmodel_types.QModelIndex): void =
  fcQDirModel_protectedbase_changePersistentIndex(self.h, fromVal.h, to.h)

proc changePersistentIndexList*(self: gen_qdirmodel_types.QDirModel, fromVal: seq[gen_qabstractitemmodel_types.QModelIndex], to: seq[gen_qabstractitemmodel_types.QModelIndex]): void =
  var fromVal_CArray = newSeq[pointer](len(fromVal))
  for i in 0..<len(fromVal):
    fromVal_CArray[i] = fromVal[i].h

  var to_CArray = newSeq[pointer](len(to))
  for i in 0..<len(to):
    to_CArray[i] = to[i].h

  fcQDirModel_protectedbase_changePersistentIndexList(self.h, struct_miqt_array(len: csize_t(len(fromVal)), data: if len(fromVal) == 0: nil else: addr(fromVal_CArray[0])), struct_miqt_array(len: csize_t(len(to)), data: if len(to) == 0: nil else: addr(to_CArray[0])))

proc persistentIndexList*(self: gen_qdirmodel_types.QDirModel, ): seq[gen_qabstractitemmodel_types.QModelIndex] =
  var v_ma = fcQDirModel_protectedbase_persistentIndexList(self.h)
  var vx_ret = newSeq[gen_qabstractitemmodel_types.QModelIndex](int(v_ma.len))
  let v_outCast = cast[ptr UncheckedArray[pointer]](v_ma.data)
  for i in 0 ..< v_ma.len:
    vx_ret[i] = gen_qabstractitemmodel_types.QModelIndex(h: v_outCast[i])
  vx_ret

proc sender*(self: gen_qdirmodel_types.QDirModel, ): gen_qobject_types.QObject =
  gen_qobject_types.QObject(h: fcQDirModel_protectedbase_sender(self.h))

proc senderSignalIndex*(self: gen_qdirmodel_types.QDirModel, ): cint =
  fcQDirModel_protectedbase_senderSignalIndex(self.h)

proc receivers*(self: gen_qdirmodel_types.QDirModel, signal: cstring): cint =
  fcQDirModel_protectedbase_receivers(self.h, signal)

proc isSignalConnected*(self: gen_qdirmodel_types.QDirModel, signal: gen_qmetaobject_types.QMetaMethod): bool =
  fcQDirModel_protectedbase_isSignalConnected(self.h, signal.h)

proc create*(T: type gen_qdirmodel_types.QDirModel,
    nameFilters: seq[string], filters: cint, sort: cint,
    vtbl: ref QDirModelVTable = nil): gen_qdirmodel_types.QDirModel =
  var nameFilters_CArray = newSeq[struct_miqt_string](len(nameFilters))
  for i in 0..<len(nameFilters):
    nameFilters_CArray[i] = struct_miqt_string(data: nameFilters[i], len: csize_t(len(nameFilters[i])))

  let vtbl = if vtbl == nil: new QDirModelVTable else: vtbl
  GC_ref(vtbl)
  vtbl.vtbl.destructor = proc(vtbl: ptr cQDirModelVTable, _: ptr cQDirModel) {.cdecl.} =
    let vtbl = cast[ref QDirModelVTable](vtbl)
    GC_unref(vtbl)
  if not isNil(vtbl.metaObject):
    vtbl[].vtbl.metaObject = miqt_exec_callback_cQDirModel_metaObject
  if not isNil(vtbl.metacast):
    vtbl[].vtbl.metacast = miqt_exec_callback_cQDirModel_metacast
  if not isNil(vtbl.metacall):
    vtbl[].vtbl.metacall = miqt_exec_callback_cQDirModel_metacall
  if not isNil(vtbl.index):
    vtbl[].vtbl.index = miqt_exec_callback_cQDirModel_index
  if not isNil(vtbl.parent):
    vtbl[].vtbl.parent = miqt_exec_callback_cQDirModel_parent
  if not isNil(vtbl.rowCount):
    vtbl[].vtbl.rowCount = miqt_exec_callback_cQDirModel_rowCount
  if not isNil(vtbl.columnCount):
    vtbl[].vtbl.columnCount = miqt_exec_callback_cQDirModel_columnCount
  if not isNil(vtbl.data):
    vtbl[].vtbl.data = miqt_exec_callback_cQDirModel_data
  if not isNil(vtbl.setData):
    vtbl[].vtbl.setData = miqt_exec_callback_cQDirModel_setData
  if not isNil(vtbl.headerData):
    vtbl[].vtbl.headerData = miqt_exec_callback_cQDirModel_headerData
  if not isNil(vtbl.hasChildren):
    vtbl[].vtbl.hasChildren = miqt_exec_callback_cQDirModel_hasChildren
  if not isNil(vtbl.flags):
    vtbl[].vtbl.flags = miqt_exec_callback_cQDirModel_flags
  if not isNil(vtbl.sort):
    vtbl[].vtbl.sort = miqt_exec_callback_cQDirModel_sort
  if not isNil(vtbl.mimeTypes):
    vtbl[].vtbl.mimeTypes = miqt_exec_callback_cQDirModel_mimeTypes
  if not isNil(vtbl.mimeData):
    vtbl[].vtbl.mimeData = miqt_exec_callback_cQDirModel_mimeData
  if not isNil(vtbl.dropMimeData):
    vtbl[].vtbl.dropMimeData = miqt_exec_callback_cQDirModel_dropMimeData
  if not isNil(vtbl.supportedDropActions):
    vtbl[].vtbl.supportedDropActions = miqt_exec_callback_cQDirModel_supportedDropActions
  if not isNil(vtbl.sibling):
    vtbl[].vtbl.sibling = miqt_exec_callback_cQDirModel_sibling
  if not isNil(vtbl.setHeaderData):
    vtbl[].vtbl.setHeaderData = miqt_exec_callback_cQDirModel_setHeaderData
  if not isNil(vtbl.itemData):
    vtbl[].vtbl.itemData = miqt_exec_callback_cQDirModel_itemData
  if not isNil(vtbl.setItemData):
    vtbl[].vtbl.setItemData = miqt_exec_callback_cQDirModel_setItemData
  if not isNil(vtbl.canDropMimeData):
    vtbl[].vtbl.canDropMimeData = miqt_exec_callback_cQDirModel_canDropMimeData
  if not isNil(vtbl.supportedDragActions):
    vtbl[].vtbl.supportedDragActions = miqt_exec_callback_cQDirModel_supportedDragActions
  if not isNil(vtbl.insertRows):
    vtbl[].vtbl.insertRows = miqt_exec_callback_cQDirModel_insertRows
  if not isNil(vtbl.insertColumns):
    vtbl[].vtbl.insertColumns = miqt_exec_callback_cQDirModel_insertColumns
  if not isNil(vtbl.removeRows):
    vtbl[].vtbl.removeRows = miqt_exec_callback_cQDirModel_removeRows
  if not isNil(vtbl.removeColumns):
    vtbl[].vtbl.removeColumns = miqt_exec_callback_cQDirModel_removeColumns
  if not isNil(vtbl.moveRows):
    vtbl[].vtbl.moveRows = miqt_exec_callback_cQDirModel_moveRows
  if not isNil(vtbl.moveColumns):
    vtbl[].vtbl.moveColumns = miqt_exec_callback_cQDirModel_moveColumns
  if not isNil(vtbl.fetchMore):
    vtbl[].vtbl.fetchMore = miqt_exec_callback_cQDirModel_fetchMore
  if not isNil(vtbl.canFetchMore):
    vtbl[].vtbl.canFetchMore = miqt_exec_callback_cQDirModel_canFetchMore
  if not isNil(vtbl.buddy):
    vtbl[].vtbl.buddy = miqt_exec_callback_cQDirModel_buddy
  if not isNil(vtbl.match):
    vtbl[].vtbl.match = miqt_exec_callback_cQDirModel_match
  if not isNil(vtbl.span):
    vtbl[].vtbl.span = miqt_exec_callback_cQDirModel_span
  if not isNil(vtbl.roleNames):
    vtbl[].vtbl.roleNames = miqt_exec_callback_cQDirModel_roleNames
  if not isNil(vtbl.submit):
    vtbl[].vtbl.submit = miqt_exec_callback_cQDirModel_submit
  if not isNil(vtbl.revert):
    vtbl[].vtbl.revert = miqt_exec_callback_cQDirModel_revert
  if not isNil(vtbl.event):
    vtbl[].vtbl.event = miqt_exec_callback_cQDirModel_event
  if not isNil(vtbl.eventFilter):
    vtbl[].vtbl.eventFilter = miqt_exec_callback_cQDirModel_eventFilter
  if not isNil(vtbl.timerEvent):
    vtbl[].vtbl.timerEvent = miqt_exec_callback_cQDirModel_timerEvent
  if not isNil(vtbl.childEvent):
    vtbl[].vtbl.childEvent = miqt_exec_callback_cQDirModel_childEvent
  if not isNil(vtbl.customEvent):
    vtbl[].vtbl.customEvent = miqt_exec_callback_cQDirModel_customEvent
  if not isNil(vtbl.connectNotify):
    vtbl[].vtbl.connectNotify = miqt_exec_callback_cQDirModel_connectNotify
  if not isNil(vtbl.disconnectNotify):
    vtbl[].vtbl.disconnectNotify = miqt_exec_callback_cQDirModel_disconnectNotify
  gen_qdirmodel_types.QDirModel(h: fcQDirModel_new(addr(vtbl[]), struct_miqt_array(len: csize_t(len(nameFilters)), data: if len(nameFilters) == 0: nil else: addr(nameFilters_CArray[0])), cint(filters), cint(sort)))

proc create*(T: type gen_qdirmodel_types.QDirModel,
    vtbl: ref QDirModelVTable = nil): gen_qdirmodel_types.QDirModel =
  let vtbl = if vtbl == nil: new QDirModelVTable else: vtbl
  GC_ref(vtbl)
  vtbl.vtbl.destructor = proc(vtbl: ptr cQDirModelVTable, _: ptr cQDirModel) {.cdecl.} =
    let vtbl = cast[ref QDirModelVTable](vtbl)
    GC_unref(vtbl)
  if not isNil(vtbl.metaObject):
    vtbl[].vtbl.metaObject = miqt_exec_callback_cQDirModel_metaObject
  if not isNil(vtbl.metacast):
    vtbl[].vtbl.metacast = miqt_exec_callback_cQDirModel_metacast
  if not isNil(vtbl.metacall):
    vtbl[].vtbl.metacall = miqt_exec_callback_cQDirModel_metacall
  if not isNil(vtbl.index):
    vtbl[].vtbl.index = miqt_exec_callback_cQDirModel_index
  if not isNil(vtbl.parent):
    vtbl[].vtbl.parent = miqt_exec_callback_cQDirModel_parent
  if not isNil(vtbl.rowCount):
    vtbl[].vtbl.rowCount = miqt_exec_callback_cQDirModel_rowCount
  if not isNil(vtbl.columnCount):
    vtbl[].vtbl.columnCount = miqt_exec_callback_cQDirModel_columnCount
  if not isNil(vtbl.data):
    vtbl[].vtbl.data = miqt_exec_callback_cQDirModel_data
  if not isNil(vtbl.setData):
    vtbl[].vtbl.setData = miqt_exec_callback_cQDirModel_setData
  if not isNil(vtbl.headerData):
    vtbl[].vtbl.headerData = miqt_exec_callback_cQDirModel_headerData
  if not isNil(vtbl.hasChildren):
    vtbl[].vtbl.hasChildren = miqt_exec_callback_cQDirModel_hasChildren
  if not isNil(vtbl.flags):
    vtbl[].vtbl.flags = miqt_exec_callback_cQDirModel_flags
  if not isNil(vtbl.sort):
    vtbl[].vtbl.sort = miqt_exec_callback_cQDirModel_sort
  if not isNil(vtbl.mimeTypes):
    vtbl[].vtbl.mimeTypes = miqt_exec_callback_cQDirModel_mimeTypes
  if not isNil(vtbl.mimeData):
    vtbl[].vtbl.mimeData = miqt_exec_callback_cQDirModel_mimeData
  if not isNil(vtbl.dropMimeData):
    vtbl[].vtbl.dropMimeData = miqt_exec_callback_cQDirModel_dropMimeData
  if not isNil(vtbl.supportedDropActions):
    vtbl[].vtbl.supportedDropActions = miqt_exec_callback_cQDirModel_supportedDropActions
  if not isNil(vtbl.sibling):
    vtbl[].vtbl.sibling = miqt_exec_callback_cQDirModel_sibling
  if not isNil(vtbl.setHeaderData):
    vtbl[].vtbl.setHeaderData = miqt_exec_callback_cQDirModel_setHeaderData
  if not isNil(vtbl.itemData):
    vtbl[].vtbl.itemData = miqt_exec_callback_cQDirModel_itemData
  if not isNil(vtbl.setItemData):
    vtbl[].vtbl.setItemData = miqt_exec_callback_cQDirModel_setItemData
  if not isNil(vtbl.canDropMimeData):
    vtbl[].vtbl.canDropMimeData = miqt_exec_callback_cQDirModel_canDropMimeData
  if not isNil(vtbl.supportedDragActions):
    vtbl[].vtbl.supportedDragActions = miqt_exec_callback_cQDirModel_supportedDragActions
  if not isNil(vtbl.insertRows):
    vtbl[].vtbl.insertRows = miqt_exec_callback_cQDirModel_insertRows
  if not isNil(vtbl.insertColumns):
    vtbl[].vtbl.insertColumns = miqt_exec_callback_cQDirModel_insertColumns
  if not isNil(vtbl.removeRows):
    vtbl[].vtbl.removeRows = miqt_exec_callback_cQDirModel_removeRows
  if not isNil(vtbl.removeColumns):
    vtbl[].vtbl.removeColumns = miqt_exec_callback_cQDirModel_removeColumns
  if not isNil(vtbl.moveRows):
    vtbl[].vtbl.moveRows = miqt_exec_callback_cQDirModel_moveRows
  if not isNil(vtbl.moveColumns):
    vtbl[].vtbl.moveColumns = miqt_exec_callback_cQDirModel_moveColumns
  if not isNil(vtbl.fetchMore):
    vtbl[].vtbl.fetchMore = miqt_exec_callback_cQDirModel_fetchMore
  if not isNil(vtbl.canFetchMore):
    vtbl[].vtbl.canFetchMore = miqt_exec_callback_cQDirModel_canFetchMore
  if not isNil(vtbl.buddy):
    vtbl[].vtbl.buddy = miqt_exec_callback_cQDirModel_buddy
  if not isNil(vtbl.match):
    vtbl[].vtbl.match = miqt_exec_callback_cQDirModel_match
  if not isNil(vtbl.span):
    vtbl[].vtbl.span = miqt_exec_callback_cQDirModel_span
  if not isNil(vtbl.roleNames):
    vtbl[].vtbl.roleNames = miqt_exec_callback_cQDirModel_roleNames
  if not isNil(vtbl.submit):
    vtbl[].vtbl.submit = miqt_exec_callback_cQDirModel_submit
  if not isNil(vtbl.revert):
    vtbl[].vtbl.revert = miqt_exec_callback_cQDirModel_revert
  if not isNil(vtbl.event):
    vtbl[].vtbl.event = miqt_exec_callback_cQDirModel_event
  if not isNil(vtbl.eventFilter):
    vtbl[].vtbl.eventFilter = miqt_exec_callback_cQDirModel_eventFilter
  if not isNil(vtbl.timerEvent):
    vtbl[].vtbl.timerEvent = miqt_exec_callback_cQDirModel_timerEvent
  if not isNil(vtbl.childEvent):
    vtbl[].vtbl.childEvent = miqt_exec_callback_cQDirModel_childEvent
  if not isNil(vtbl.customEvent):
    vtbl[].vtbl.customEvent = miqt_exec_callback_cQDirModel_customEvent
  if not isNil(vtbl.connectNotify):
    vtbl[].vtbl.connectNotify = miqt_exec_callback_cQDirModel_connectNotify
  if not isNil(vtbl.disconnectNotify):
    vtbl[].vtbl.disconnectNotify = miqt_exec_callback_cQDirModel_disconnectNotify
  gen_qdirmodel_types.QDirModel(h: fcQDirModel_new2(addr(vtbl[]), ))

proc create*(T: type gen_qdirmodel_types.QDirModel,
    nameFilters: seq[string], filters: cint, sort: cint, parent: gen_qobject_types.QObject,
    vtbl: ref QDirModelVTable = nil): gen_qdirmodel_types.QDirModel =
  var nameFilters_CArray = newSeq[struct_miqt_string](len(nameFilters))
  for i in 0..<len(nameFilters):
    nameFilters_CArray[i] = struct_miqt_string(data: nameFilters[i], len: csize_t(len(nameFilters[i])))

  let vtbl = if vtbl == nil: new QDirModelVTable else: vtbl
  GC_ref(vtbl)
  vtbl.vtbl.destructor = proc(vtbl: ptr cQDirModelVTable, _: ptr cQDirModel) {.cdecl.} =
    let vtbl = cast[ref QDirModelVTable](vtbl)
    GC_unref(vtbl)
  if not isNil(vtbl.metaObject):
    vtbl[].vtbl.metaObject = miqt_exec_callback_cQDirModel_metaObject
  if not isNil(vtbl.metacast):
    vtbl[].vtbl.metacast = miqt_exec_callback_cQDirModel_metacast
  if not isNil(vtbl.metacall):
    vtbl[].vtbl.metacall = miqt_exec_callback_cQDirModel_metacall
  if not isNil(vtbl.index):
    vtbl[].vtbl.index = miqt_exec_callback_cQDirModel_index
  if not isNil(vtbl.parent):
    vtbl[].vtbl.parent = miqt_exec_callback_cQDirModel_parent
  if not isNil(vtbl.rowCount):
    vtbl[].vtbl.rowCount = miqt_exec_callback_cQDirModel_rowCount
  if not isNil(vtbl.columnCount):
    vtbl[].vtbl.columnCount = miqt_exec_callback_cQDirModel_columnCount
  if not isNil(vtbl.data):
    vtbl[].vtbl.data = miqt_exec_callback_cQDirModel_data
  if not isNil(vtbl.setData):
    vtbl[].vtbl.setData = miqt_exec_callback_cQDirModel_setData
  if not isNil(vtbl.headerData):
    vtbl[].vtbl.headerData = miqt_exec_callback_cQDirModel_headerData
  if not isNil(vtbl.hasChildren):
    vtbl[].vtbl.hasChildren = miqt_exec_callback_cQDirModel_hasChildren
  if not isNil(vtbl.flags):
    vtbl[].vtbl.flags = miqt_exec_callback_cQDirModel_flags
  if not isNil(vtbl.sort):
    vtbl[].vtbl.sort = miqt_exec_callback_cQDirModel_sort
  if not isNil(vtbl.mimeTypes):
    vtbl[].vtbl.mimeTypes = miqt_exec_callback_cQDirModel_mimeTypes
  if not isNil(vtbl.mimeData):
    vtbl[].vtbl.mimeData = miqt_exec_callback_cQDirModel_mimeData
  if not isNil(vtbl.dropMimeData):
    vtbl[].vtbl.dropMimeData = miqt_exec_callback_cQDirModel_dropMimeData
  if not isNil(vtbl.supportedDropActions):
    vtbl[].vtbl.supportedDropActions = miqt_exec_callback_cQDirModel_supportedDropActions
  if not isNil(vtbl.sibling):
    vtbl[].vtbl.sibling = miqt_exec_callback_cQDirModel_sibling
  if not isNil(vtbl.setHeaderData):
    vtbl[].vtbl.setHeaderData = miqt_exec_callback_cQDirModel_setHeaderData
  if not isNil(vtbl.itemData):
    vtbl[].vtbl.itemData = miqt_exec_callback_cQDirModel_itemData
  if not isNil(vtbl.setItemData):
    vtbl[].vtbl.setItemData = miqt_exec_callback_cQDirModel_setItemData
  if not isNil(vtbl.canDropMimeData):
    vtbl[].vtbl.canDropMimeData = miqt_exec_callback_cQDirModel_canDropMimeData
  if not isNil(vtbl.supportedDragActions):
    vtbl[].vtbl.supportedDragActions = miqt_exec_callback_cQDirModel_supportedDragActions
  if not isNil(vtbl.insertRows):
    vtbl[].vtbl.insertRows = miqt_exec_callback_cQDirModel_insertRows
  if not isNil(vtbl.insertColumns):
    vtbl[].vtbl.insertColumns = miqt_exec_callback_cQDirModel_insertColumns
  if not isNil(vtbl.removeRows):
    vtbl[].vtbl.removeRows = miqt_exec_callback_cQDirModel_removeRows
  if not isNil(vtbl.removeColumns):
    vtbl[].vtbl.removeColumns = miqt_exec_callback_cQDirModel_removeColumns
  if not isNil(vtbl.moveRows):
    vtbl[].vtbl.moveRows = miqt_exec_callback_cQDirModel_moveRows
  if not isNil(vtbl.moveColumns):
    vtbl[].vtbl.moveColumns = miqt_exec_callback_cQDirModel_moveColumns
  if not isNil(vtbl.fetchMore):
    vtbl[].vtbl.fetchMore = miqt_exec_callback_cQDirModel_fetchMore
  if not isNil(vtbl.canFetchMore):
    vtbl[].vtbl.canFetchMore = miqt_exec_callback_cQDirModel_canFetchMore
  if not isNil(vtbl.buddy):
    vtbl[].vtbl.buddy = miqt_exec_callback_cQDirModel_buddy
  if not isNil(vtbl.match):
    vtbl[].vtbl.match = miqt_exec_callback_cQDirModel_match
  if not isNil(vtbl.span):
    vtbl[].vtbl.span = miqt_exec_callback_cQDirModel_span
  if not isNil(vtbl.roleNames):
    vtbl[].vtbl.roleNames = miqt_exec_callback_cQDirModel_roleNames
  if not isNil(vtbl.submit):
    vtbl[].vtbl.submit = miqt_exec_callback_cQDirModel_submit
  if not isNil(vtbl.revert):
    vtbl[].vtbl.revert = miqt_exec_callback_cQDirModel_revert
  if not isNil(vtbl.event):
    vtbl[].vtbl.event = miqt_exec_callback_cQDirModel_event
  if not isNil(vtbl.eventFilter):
    vtbl[].vtbl.eventFilter = miqt_exec_callback_cQDirModel_eventFilter
  if not isNil(vtbl.timerEvent):
    vtbl[].vtbl.timerEvent = miqt_exec_callback_cQDirModel_timerEvent
  if not isNil(vtbl.childEvent):
    vtbl[].vtbl.childEvent = miqt_exec_callback_cQDirModel_childEvent
  if not isNil(vtbl.customEvent):
    vtbl[].vtbl.customEvent = miqt_exec_callback_cQDirModel_customEvent
  if not isNil(vtbl.connectNotify):
    vtbl[].vtbl.connectNotify = miqt_exec_callback_cQDirModel_connectNotify
  if not isNil(vtbl.disconnectNotify):
    vtbl[].vtbl.disconnectNotify = miqt_exec_callback_cQDirModel_disconnectNotify
  gen_qdirmodel_types.QDirModel(h: fcQDirModel_new3(addr(vtbl[]), struct_miqt_array(len: csize_t(len(nameFilters)), data: if len(nameFilters) == 0: nil else: addr(nameFilters_CArray[0])), cint(filters), cint(sort), parent.h))

proc create*(T: type gen_qdirmodel_types.QDirModel,
    parent: gen_qobject_types.QObject,
    vtbl: ref QDirModelVTable = nil): gen_qdirmodel_types.QDirModel =
  let vtbl = if vtbl == nil: new QDirModelVTable else: vtbl
  GC_ref(vtbl)
  vtbl.vtbl.destructor = proc(vtbl: ptr cQDirModelVTable, _: ptr cQDirModel) {.cdecl.} =
    let vtbl = cast[ref QDirModelVTable](vtbl)
    GC_unref(vtbl)
  if not isNil(vtbl.metaObject):
    vtbl[].vtbl.metaObject = miqt_exec_callback_cQDirModel_metaObject
  if not isNil(vtbl.metacast):
    vtbl[].vtbl.metacast = miqt_exec_callback_cQDirModel_metacast
  if not isNil(vtbl.metacall):
    vtbl[].vtbl.metacall = miqt_exec_callback_cQDirModel_metacall
  if not isNil(vtbl.index):
    vtbl[].vtbl.index = miqt_exec_callback_cQDirModel_index
  if not isNil(vtbl.parent):
    vtbl[].vtbl.parent = miqt_exec_callback_cQDirModel_parent
  if not isNil(vtbl.rowCount):
    vtbl[].vtbl.rowCount = miqt_exec_callback_cQDirModel_rowCount
  if not isNil(vtbl.columnCount):
    vtbl[].vtbl.columnCount = miqt_exec_callback_cQDirModel_columnCount
  if not isNil(vtbl.data):
    vtbl[].vtbl.data = miqt_exec_callback_cQDirModel_data
  if not isNil(vtbl.setData):
    vtbl[].vtbl.setData = miqt_exec_callback_cQDirModel_setData
  if not isNil(vtbl.headerData):
    vtbl[].vtbl.headerData = miqt_exec_callback_cQDirModel_headerData
  if not isNil(vtbl.hasChildren):
    vtbl[].vtbl.hasChildren = miqt_exec_callback_cQDirModel_hasChildren
  if not isNil(vtbl.flags):
    vtbl[].vtbl.flags = miqt_exec_callback_cQDirModel_flags
  if not isNil(vtbl.sort):
    vtbl[].vtbl.sort = miqt_exec_callback_cQDirModel_sort
  if not isNil(vtbl.mimeTypes):
    vtbl[].vtbl.mimeTypes = miqt_exec_callback_cQDirModel_mimeTypes
  if not isNil(vtbl.mimeData):
    vtbl[].vtbl.mimeData = miqt_exec_callback_cQDirModel_mimeData
  if not isNil(vtbl.dropMimeData):
    vtbl[].vtbl.dropMimeData = miqt_exec_callback_cQDirModel_dropMimeData
  if not isNil(vtbl.supportedDropActions):
    vtbl[].vtbl.supportedDropActions = miqt_exec_callback_cQDirModel_supportedDropActions
  if not isNil(vtbl.sibling):
    vtbl[].vtbl.sibling = miqt_exec_callback_cQDirModel_sibling
  if not isNil(vtbl.setHeaderData):
    vtbl[].vtbl.setHeaderData = miqt_exec_callback_cQDirModel_setHeaderData
  if not isNil(vtbl.itemData):
    vtbl[].vtbl.itemData = miqt_exec_callback_cQDirModel_itemData
  if not isNil(vtbl.setItemData):
    vtbl[].vtbl.setItemData = miqt_exec_callback_cQDirModel_setItemData
  if not isNil(vtbl.canDropMimeData):
    vtbl[].vtbl.canDropMimeData = miqt_exec_callback_cQDirModel_canDropMimeData
  if not isNil(vtbl.supportedDragActions):
    vtbl[].vtbl.supportedDragActions = miqt_exec_callback_cQDirModel_supportedDragActions
  if not isNil(vtbl.insertRows):
    vtbl[].vtbl.insertRows = miqt_exec_callback_cQDirModel_insertRows
  if not isNil(vtbl.insertColumns):
    vtbl[].vtbl.insertColumns = miqt_exec_callback_cQDirModel_insertColumns
  if not isNil(vtbl.removeRows):
    vtbl[].vtbl.removeRows = miqt_exec_callback_cQDirModel_removeRows
  if not isNil(vtbl.removeColumns):
    vtbl[].vtbl.removeColumns = miqt_exec_callback_cQDirModel_removeColumns
  if not isNil(vtbl.moveRows):
    vtbl[].vtbl.moveRows = miqt_exec_callback_cQDirModel_moveRows
  if not isNil(vtbl.moveColumns):
    vtbl[].vtbl.moveColumns = miqt_exec_callback_cQDirModel_moveColumns
  if not isNil(vtbl.fetchMore):
    vtbl[].vtbl.fetchMore = miqt_exec_callback_cQDirModel_fetchMore
  if not isNil(vtbl.canFetchMore):
    vtbl[].vtbl.canFetchMore = miqt_exec_callback_cQDirModel_canFetchMore
  if not isNil(vtbl.buddy):
    vtbl[].vtbl.buddy = miqt_exec_callback_cQDirModel_buddy
  if not isNil(vtbl.match):
    vtbl[].vtbl.match = miqt_exec_callback_cQDirModel_match
  if not isNil(vtbl.span):
    vtbl[].vtbl.span = miqt_exec_callback_cQDirModel_span
  if not isNil(vtbl.roleNames):
    vtbl[].vtbl.roleNames = miqt_exec_callback_cQDirModel_roleNames
  if not isNil(vtbl.submit):
    vtbl[].vtbl.submit = miqt_exec_callback_cQDirModel_submit
  if not isNil(vtbl.revert):
    vtbl[].vtbl.revert = miqt_exec_callback_cQDirModel_revert
  if not isNil(vtbl.event):
    vtbl[].vtbl.event = miqt_exec_callback_cQDirModel_event
  if not isNil(vtbl.eventFilter):
    vtbl[].vtbl.eventFilter = miqt_exec_callback_cQDirModel_eventFilter
  if not isNil(vtbl.timerEvent):
    vtbl[].vtbl.timerEvent = miqt_exec_callback_cQDirModel_timerEvent
  if not isNil(vtbl.childEvent):
    vtbl[].vtbl.childEvent = miqt_exec_callback_cQDirModel_childEvent
  if not isNil(vtbl.customEvent):
    vtbl[].vtbl.customEvent = miqt_exec_callback_cQDirModel_customEvent
  if not isNil(vtbl.connectNotify):
    vtbl[].vtbl.connectNotify = miqt_exec_callback_cQDirModel_connectNotify
  if not isNil(vtbl.disconnectNotify):
    vtbl[].vtbl.disconnectNotify = miqt_exec_callback_cQDirModel_disconnectNotify
  gen_qdirmodel_types.QDirModel(h: fcQDirModel_new4(addr(vtbl[]), parent.h))

proc staticMetaObject*(_: type gen_qdirmodel_types.QDirModel): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQDirModel_staticMetaObject())
proc delete*(self: gen_qdirmodel_types.QDirModel) =
  fcQDirModel_delete(self.h)
