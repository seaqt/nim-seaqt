import ./qtgui_pkg

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


{.compile("gen_qfilesystemmodel.cpp", QtGuiCFlags).}


type QFileSystemModelRolesEnum* = distinct cint
template FileIconRole*(_: type QFileSystemModelRolesEnum): untyped = 1
template FilePathRole*(_: type QFileSystemModelRolesEnum): untyped = 257
template FileNameRole*(_: type QFileSystemModelRolesEnum): untyped = 258
template FilePermissions*(_: type QFileSystemModelRolesEnum): untyped = 259


type QFileSystemModelOptionEnum* = distinct cint
template DontWatchForChanges*(_: type QFileSystemModelOptionEnum): untyped = 1
template DontResolveSymlinks*(_: type QFileSystemModelOptionEnum): untyped = 2
template DontUseCustomDirectoryIcons*(_: type QFileSystemModelOptionEnum): untyped = 4


import ./gen_qfilesystemmodel_types
export gen_qfilesystemmodel_types

import
  ../QtCore/gen_qabstractitemmodel,
  ../QtCore/gen_qcoreevent_types,
  ../QtCore/gen_qdatastream_types,
  ../QtCore/gen_qdatetime_types,
  ../QtCore/gen_qdir_types,
  ../QtCore/gen_qfileinfo_types,
  ../QtCore/gen_qmetaobject_types,
  ../QtCore/gen_qmimedata_types,
  ../QtCore/gen_qobject_types,
  ../QtCore/gen_qobjectdefs_types,
  ../QtCore/gen_qsize_types,
  ../QtCore/gen_qvariant_types,
  ./gen_qabstractfileiconprovider_types,
  ./gen_qicon_types,
  std/tables
export
  gen_qabstractitemmodel,
  gen_qcoreevent_types,
  gen_qdatastream_types,
  gen_qdatetime_types,
  gen_qdir_types,
  gen_qfileinfo_types,
  gen_qmetaobject_types,
  gen_qmimedata_types,
  gen_qobject_types,
  gen_qobjectdefs_types,
  gen_qsize_types,
  gen_qvariant_types,
  gen_qabstractfileiconprovider_types,
  gen_qicon_types

type cQFileSystemModel*{.exportc: "QFileSystemModel", incompleteStruct.} = object

proc fcQFileSystemModel_metaObject(self: pointer): pointer {.importc: "QFileSystemModel_metaObject".}
proc fcQFileSystemModel_metacast(self: pointer, param1: cstring): pointer {.importc: "QFileSystemModel_metacast".}
proc fcQFileSystemModel_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.importc: "QFileSystemModel_metacall".}
proc fcQFileSystemModel_tr(s: cstring): struct_miqt_string {.importc: "QFileSystemModel_tr".}
proc fcQFileSystemModel_rootPathChanged(self: pointer, newPath: struct_miqt_string): void {.importc: "QFileSystemModel_rootPathChanged".}
proc fcQFileSystemModel_connect_rootPathChanged(self: pointer, slot: int, callback: proc (slot: int, newPath: struct_miqt_string) {.cdecl.}, release: proc(slot: int) {.cdecl.}) {.importc: "QFileSystemModel_connect_rootPathChanged".}
proc fcQFileSystemModel_fileRenamed(self: pointer, path: struct_miqt_string, oldName: struct_miqt_string, newName: struct_miqt_string): void {.importc: "QFileSystemModel_fileRenamed".}
proc fcQFileSystemModel_connect_fileRenamed(self: pointer, slot: int, callback: proc (slot: int, path: struct_miqt_string, oldName: struct_miqt_string, newName: struct_miqt_string) {.cdecl.}, release: proc(slot: int) {.cdecl.}) {.importc: "QFileSystemModel_connect_fileRenamed".}
proc fcQFileSystemModel_directoryLoaded(self: pointer, path: struct_miqt_string): void {.importc: "QFileSystemModel_directoryLoaded".}
proc fcQFileSystemModel_connect_directoryLoaded(self: pointer, slot: int, callback: proc (slot: int, path: struct_miqt_string) {.cdecl.}, release: proc(slot: int) {.cdecl.}) {.importc: "QFileSystemModel_connect_directoryLoaded".}
proc fcQFileSystemModel_index(self: pointer, row: cint, column: cint, parent: pointer): pointer {.importc: "QFileSystemModel_index".}
proc fcQFileSystemModel_indexWithPath(self: pointer, path: struct_miqt_string): pointer {.importc: "QFileSystemModel_indexWithPath".}
proc fcQFileSystemModel_parent(self: pointer, child: pointer): pointer {.importc: "QFileSystemModel_parent".}
proc fcQFileSystemModel_sibling(self: pointer, row: cint, column: cint, idx: pointer): pointer {.importc: "QFileSystemModel_sibling".}
proc fcQFileSystemModel_hasChildren(self: pointer, parent: pointer): bool {.importc: "QFileSystemModel_hasChildren".}
proc fcQFileSystemModel_canFetchMore(self: pointer, parent: pointer): bool {.importc: "QFileSystemModel_canFetchMore".}
proc fcQFileSystemModel_fetchMore(self: pointer, parent: pointer): void {.importc: "QFileSystemModel_fetchMore".}
proc fcQFileSystemModel_rowCount(self: pointer, parent: pointer): cint {.importc: "QFileSystemModel_rowCount".}
proc fcQFileSystemModel_columnCount(self: pointer, parent: pointer): cint {.importc: "QFileSystemModel_columnCount".}
proc fcQFileSystemModel_myComputer(self: pointer): pointer {.importc: "QFileSystemModel_myComputer".}
proc fcQFileSystemModel_data(self: pointer, index: pointer, role: cint): pointer {.importc: "QFileSystemModel_data".}
proc fcQFileSystemModel_setData(self: pointer, index: pointer, value: pointer, role: cint): bool {.importc: "QFileSystemModel_setData".}
proc fcQFileSystemModel_headerData(self: pointer, section: cint, orientation: cint, role: cint): pointer {.importc: "QFileSystemModel_headerData".}
proc fcQFileSystemModel_flags(self: pointer, index: pointer): cint {.importc: "QFileSystemModel_flags".}
proc fcQFileSystemModel_sort(self: pointer, column: cint, order: cint): void {.importc: "QFileSystemModel_sort".}
proc fcQFileSystemModel_mimeTypes(self: pointer): struct_miqt_array {.importc: "QFileSystemModel_mimeTypes".}
proc fcQFileSystemModel_mimeData(self: pointer, indexes: struct_miqt_array): pointer {.importc: "QFileSystemModel_mimeData".}
proc fcQFileSystemModel_dropMimeData(self: pointer, data: pointer, action: cint, row: cint, column: cint, parent: pointer): bool {.importc: "QFileSystemModel_dropMimeData".}
proc fcQFileSystemModel_supportedDropActions(self: pointer): cint {.importc: "QFileSystemModel_supportedDropActions".}
proc fcQFileSystemModel_roleNames(self: pointer): struct_miqt_map {.importc: "QFileSystemModel_roleNames".}
proc fcQFileSystemModel_setRootPath(self: pointer, path: struct_miqt_string): pointer {.importc: "QFileSystemModel_setRootPath".}
proc fcQFileSystemModel_rootPath(self: pointer): struct_miqt_string {.importc: "QFileSystemModel_rootPath".}
proc fcQFileSystemModel_rootDirectory(self: pointer): pointer {.importc: "QFileSystemModel_rootDirectory".}
proc fcQFileSystemModel_setIconProvider(self: pointer, provider: pointer): void {.importc: "QFileSystemModel_setIconProvider".}
proc fcQFileSystemModel_iconProvider(self: pointer): pointer {.importc: "QFileSystemModel_iconProvider".}
proc fcQFileSystemModel_setFilter(self: pointer, filters: cint): void {.importc: "QFileSystemModel_setFilter".}
proc fcQFileSystemModel_filter(self: pointer): cint {.importc: "QFileSystemModel_filter".}
proc fcQFileSystemModel_setResolveSymlinks(self: pointer, enable: bool): void {.importc: "QFileSystemModel_setResolveSymlinks".}
proc fcQFileSystemModel_resolveSymlinks(self: pointer): bool {.importc: "QFileSystemModel_resolveSymlinks".}
proc fcQFileSystemModel_setReadOnly(self: pointer, enable: bool): void {.importc: "QFileSystemModel_setReadOnly".}
proc fcQFileSystemModel_isReadOnly(self: pointer): bool {.importc: "QFileSystemModel_isReadOnly".}
proc fcQFileSystemModel_setNameFilterDisables(self: pointer, enable: bool): void {.importc: "QFileSystemModel_setNameFilterDisables".}
proc fcQFileSystemModel_nameFilterDisables(self: pointer): bool {.importc: "QFileSystemModel_nameFilterDisables".}
proc fcQFileSystemModel_setNameFilters(self: pointer, filters: struct_miqt_array): void {.importc: "QFileSystemModel_setNameFilters".}
proc fcQFileSystemModel_nameFilters(self: pointer): struct_miqt_array {.importc: "QFileSystemModel_nameFilters".}
proc fcQFileSystemModel_setOption(self: pointer, option: cint): void {.importc: "QFileSystemModel_setOption".}
proc fcQFileSystemModel_testOption(self: pointer, option: cint): bool {.importc: "QFileSystemModel_testOption".}
proc fcQFileSystemModel_setOptions(self: pointer, options: cint): void {.importc: "QFileSystemModel_setOptions".}
proc fcQFileSystemModel_options(self: pointer): cint {.importc: "QFileSystemModel_options".}
proc fcQFileSystemModel_filePath(self: pointer, index: pointer): struct_miqt_string {.importc: "QFileSystemModel_filePath".}
proc fcQFileSystemModel_isDir(self: pointer, index: pointer): bool {.importc: "QFileSystemModel_isDir".}
proc fcQFileSystemModel_size(self: pointer, index: pointer): clonglong {.importc: "QFileSystemModel_size".}
proc fcQFileSystemModel_typeX(self: pointer, index: pointer): struct_miqt_string {.importc: "QFileSystemModel_type".}
proc fcQFileSystemModel_lastModified(self: pointer, index: pointer): pointer {.importc: "QFileSystemModel_lastModified".}
proc fcQFileSystemModel_mkdir(self: pointer, parent: pointer, name: struct_miqt_string): pointer {.importc: "QFileSystemModel_mkdir".}
proc fcQFileSystemModel_rmdir(self: pointer, index: pointer): bool {.importc: "QFileSystemModel_rmdir".}
proc fcQFileSystemModel_fileName(self: pointer, index: pointer): struct_miqt_string {.importc: "QFileSystemModel_fileName".}
proc fcQFileSystemModel_fileIcon(self: pointer, index: pointer): pointer {.importc: "QFileSystemModel_fileIcon".}
proc fcQFileSystemModel_permissions(self: pointer, index: pointer): cint {.importc: "QFileSystemModel_permissions".}
proc fcQFileSystemModel_fileInfo(self: pointer, index: pointer): pointer {.importc: "QFileSystemModel_fileInfo".}
proc fcQFileSystemModel_remove(self: pointer, index: pointer): bool {.importc: "QFileSystemModel_remove".}
proc fcQFileSystemModel_tr2(s: cstring, c: cstring): struct_miqt_string {.importc: "QFileSystemModel_tr2".}
proc fcQFileSystemModel_tr3(s: cstring, c: cstring, n: cint): struct_miqt_string {.importc: "QFileSystemModel_tr3".}
proc fcQFileSystemModel_index2(self: pointer, path: struct_miqt_string, column: cint): pointer {.importc: "QFileSystemModel_index2".}
proc fcQFileSystemModel_myComputer1(self: pointer, role: cint): pointer {.importc: "QFileSystemModel_myComputer1".}
proc fcQFileSystemModel_setOption2(self: pointer, option: cint, on: bool): void {.importc: "QFileSystemModel_setOption2".}
proc fcQFileSystemModel_vtbl(self: pointer): pointer {.importc: "QFileSystemModel_vtbl".}
proc fcQFileSystemModel_vdata(self: pointer): pointer {.importc: "QFileSystemModel_vdata".}
type cQFileSystemModelVTable {.pure.} = object
  destructor*: proc(self: pointer) {.cdecl, raises:[], gcsafe.}
  metaObject*: proc(self: pointer): pointer {.cdecl, raises: [], gcsafe.}
  metacast*: proc(self: pointer, param1: cstring): pointer {.cdecl, raises: [], gcsafe.}
  metacall*: proc(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.cdecl, raises: [], gcsafe.}
  index*: proc(self: pointer, row: cint, column: cint, parent: pointer): pointer {.cdecl, raises: [], gcsafe.}
  parent*: proc(self: pointer, child: pointer): pointer {.cdecl, raises: [], gcsafe.}
  sibling*: proc(self: pointer, row: cint, column: cint, idx: pointer): pointer {.cdecl, raises: [], gcsafe.}
  hasChildren*: proc(self: pointer, parent: pointer): bool {.cdecl, raises: [], gcsafe.}
  canFetchMore*: proc(self: pointer, parent: pointer): bool {.cdecl, raises: [], gcsafe.}
  fetchMore*: proc(self: pointer, parent: pointer): void {.cdecl, raises: [], gcsafe.}
  rowCount*: proc(self: pointer, parent: pointer): cint {.cdecl, raises: [], gcsafe.}
  columnCount*: proc(self: pointer, parent: pointer): cint {.cdecl, raises: [], gcsafe.}
  data*: proc(self: pointer, index: pointer, role: cint): pointer {.cdecl, raises: [], gcsafe.}
  setData*: proc(self: pointer, index: pointer, value: pointer, role: cint): bool {.cdecl, raises: [], gcsafe.}
  headerData*: proc(self: pointer, section: cint, orientation: cint, role: cint): pointer {.cdecl, raises: [], gcsafe.}
  flags*: proc(self: pointer, index: pointer): cint {.cdecl, raises: [], gcsafe.}
  sort*: proc(self: pointer, column: cint, order: cint): void {.cdecl, raises: [], gcsafe.}
  mimeTypes*: proc(self: pointer): struct_miqt_array {.cdecl, raises: [], gcsafe.}
  mimeData*: proc(self: pointer, indexes: struct_miqt_array): pointer {.cdecl, raises: [], gcsafe.}
  dropMimeData*: proc(self: pointer, data: pointer, action: cint, row: cint, column: cint, parent: pointer): bool {.cdecl, raises: [], gcsafe.}
  supportedDropActions*: proc(self: pointer): cint {.cdecl, raises: [], gcsafe.}
  roleNames*: proc(self: pointer): struct_miqt_map {.cdecl, raises: [], gcsafe.}
  timerEvent*: proc(self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  event*: proc(self: pointer, event: pointer): bool {.cdecl, raises: [], gcsafe.}
  setHeaderData*: proc(self: pointer, section: cint, orientation: cint, value: pointer, role: cint): bool {.cdecl, raises: [], gcsafe.}
  itemData*: proc(self: pointer, index: pointer): struct_miqt_map {.cdecl, raises: [], gcsafe.}
  setItemData*: proc(self: pointer, index: pointer, roles: struct_miqt_map): bool {.cdecl, raises: [], gcsafe.}
  clearItemData*: proc(self: pointer, index: pointer): bool {.cdecl, raises: [], gcsafe.}
  canDropMimeData*: proc(self: pointer, data: pointer, action: cint, row: cint, column: cint, parent: pointer): bool {.cdecl, raises: [], gcsafe.}
  supportedDragActions*: proc(self: pointer): cint {.cdecl, raises: [], gcsafe.}
  insertRows*: proc(self: pointer, row: cint, count: cint, parent: pointer): bool {.cdecl, raises: [], gcsafe.}
  insertColumns*: proc(self: pointer, column: cint, count: cint, parent: pointer): bool {.cdecl, raises: [], gcsafe.}
  removeRows*: proc(self: pointer, row: cint, count: cint, parent: pointer): bool {.cdecl, raises: [], gcsafe.}
  removeColumns*: proc(self: pointer, column: cint, count: cint, parent: pointer): bool {.cdecl, raises: [], gcsafe.}
  moveRows*: proc(self: pointer, sourceParent: pointer, sourceRow: cint, count: cint, destinationParent: pointer, destinationChild: cint): bool {.cdecl, raises: [], gcsafe.}
  moveColumns*: proc(self: pointer, sourceParent: pointer, sourceColumn: cint, count: cint, destinationParent: pointer, destinationChild: cint): bool {.cdecl, raises: [], gcsafe.}
  buddy*: proc(self: pointer, index: pointer): pointer {.cdecl, raises: [], gcsafe.}
  match*: proc(self: pointer, start: pointer, role: cint, value: pointer, hits: cint, flags: cint): struct_miqt_array {.cdecl, raises: [], gcsafe.}
  span*: proc(self: pointer, index: pointer): pointer {.cdecl, raises: [], gcsafe.}
  multiData*: proc(self: pointer, index: pointer, roleDataSpan: pointer): void {.cdecl, raises: [], gcsafe.}
  submit*: proc(self: pointer): bool {.cdecl, raises: [], gcsafe.}
  revert*: proc(self: pointer): void {.cdecl, raises: [], gcsafe.}
  resetInternalData*: proc(self: pointer): void {.cdecl, raises: [], gcsafe.}
  eventFilter*: proc(self: pointer, watched: pointer, event: pointer): bool {.cdecl, raises: [], gcsafe.}
  childEvent*: proc(self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  customEvent*: proc(self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  connectNotify*: proc(self: pointer, signal: pointer): void {.cdecl, raises: [], gcsafe.}
  disconnectNotify*: proc(self: pointer, signal: pointer): void {.cdecl, raises: [], gcsafe.}
proc fcQFileSystemModel_virtualbase_metaObject(self: pointer): pointer {.importc: "QFileSystemModel_virtualbase_metaObject".}
proc fcQFileSystemModel_virtualbase_metacast(self: pointer, param1: cstring): pointer {.importc: "QFileSystemModel_virtualbase_metacast".}
proc fcQFileSystemModel_virtualbase_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.importc: "QFileSystemModel_virtualbase_metacall".}
proc fcQFileSystemModel_virtualbase_index(self: pointer, row: cint, column: cint, parent: pointer): pointer {.importc: "QFileSystemModel_virtualbase_index".}
proc fcQFileSystemModel_virtualbase_parent(self: pointer, child: pointer): pointer {.importc: "QFileSystemModel_virtualbase_parent".}
proc fcQFileSystemModel_virtualbase_sibling(self: pointer, row: cint, column: cint, idx: pointer): pointer {.importc: "QFileSystemModel_virtualbase_sibling".}
proc fcQFileSystemModel_virtualbase_hasChildren(self: pointer, parent: pointer): bool {.importc: "QFileSystemModel_virtualbase_hasChildren".}
proc fcQFileSystemModel_virtualbase_canFetchMore(self: pointer, parent: pointer): bool {.importc: "QFileSystemModel_virtualbase_canFetchMore".}
proc fcQFileSystemModel_virtualbase_fetchMore(self: pointer, parent: pointer): void {.importc: "QFileSystemModel_virtualbase_fetchMore".}
proc fcQFileSystemModel_virtualbase_rowCount(self: pointer, parent: pointer): cint {.importc: "QFileSystemModel_virtualbase_rowCount".}
proc fcQFileSystemModel_virtualbase_columnCount(self: pointer, parent: pointer): cint {.importc: "QFileSystemModel_virtualbase_columnCount".}
proc fcQFileSystemModel_virtualbase_data(self: pointer, index: pointer, role: cint): pointer {.importc: "QFileSystemModel_virtualbase_data".}
proc fcQFileSystemModel_virtualbase_setData(self: pointer, index: pointer, value: pointer, role: cint): bool {.importc: "QFileSystemModel_virtualbase_setData".}
proc fcQFileSystemModel_virtualbase_headerData(self: pointer, section: cint, orientation: cint, role: cint): pointer {.importc: "QFileSystemModel_virtualbase_headerData".}
proc fcQFileSystemModel_virtualbase_flags(self: pointer, index: pointer): cint {.importc: "QFileSystemModel_virtualbase_flags".}
proc fcQFileSystemModel_virtualbase_sort(self: pointer, column: cint, order: cint): void {.importc: "QFileSystemModel_virtualbase_sort".}
proc fcQFileSystemModel_virtualbase_mimeTypes(self: pointer): struct_miqt_array {.importc: "QFileSystemModel_virtualbase_mimeTypes".}
proc fcQFileSystemModel_virtualbase_mimeData(self: pointer, indexes: struct_miqt_array): pointer {.importc: "QFileSystemModel_virtualbase_mimeData".}
proc fcQFileSystemModel_virtualbase_dropMimeData(self: pointer, data: pointer, action: cint, row: cint, column: cint, parent: pointer): bool {.importc: "QFileSystemModel_virtualbase_dropMimeData".}
proc fcQFileSystemModel_virtualbase_supportedDropActions(self: pointer): cint {.importc: "QFileSystemModel_virtualbase_supportedDropActions".}
proc fcQFileSystemModel_virtualbase_roleNames(self: pointer): struct_miqt_map {.importc: "QFileSystemModel_virtualbase_roleNames".}
proc fcQFileSystemModel_virtualbase_timerEvent(self: pointer, event: pointer): void {.importc: "QFileSystemModel_virtualbase_timerEvent".}
proc fcQFileSystemModel_virtualbase_event(self: pointer, event: pointer): bool {.importc: "QFileSystemModel_virtualbase_event".}
proc fcQFileSystemModel_virtualbase_setHeaderData(self: pointer, section: cint, orientation: cint, value: pointer, role: cint): bool {.importc: "QFileSystemModel_virtualbase_setHeaderData".}
proc fcQFileSystemModel_virtualbase_itemData(self: pointer, index: pointer): struct_miqt_map {.importc: "QFileSystemModel_virtualbase_itemData".}
proc fcQFileSystemModel_virtualbase_setItemData(self: pointer, index: pointer, roles: struct_miqt_map): bool {.importc: "QFileSystemModel_virtualbase_setItemData".}
proc fcQFileSystemModel_virtualbase_clearItemData(self: pointer, index: pointer): bool {.importc: "QFileSystemModel_virtualbase_clearItemData".}
proc fcQFileSystemModel_virtualbase_canDropMimeData(self: pointer, data: pointer, action: cint, row: cint, column: cint, parent: pointer): bool {.importc: "QFileSystemModel_virtualbase_canDropMimeData".}
proc fcQFileSystemModel_virtualbase_supportedDragActions(self: pointer): cint {.importc: "QFileSystemModel_virtualbase_supportedDragActions".}
proc fcQFileSystemModel_virtualbase_insertRows(self: pointer, row: cint, count: cint, parent: pointer): bool {.importc: "QFileSystemModel_virtualbase_insertRows".}
proc fcQFileSystemModel_virtualbase_insertColumns(self: pointer, column: cint, count: cint, parent: pointer): bool {.importc: "QFileSystemModel_virtualbase_insertColumns".}
proc fcQFileSystemModel_virtualbase_removeRows(self: pointer, row: cint, count: cint, parent: pointer): bool {.importc: "QFileSystemModel_virtualbase_removeRows".}
proc fcQFileSystemModel_virtualbase_removeColumns(self: pointer, column: cint, count: cint, parent: pointer): bool {.importc: "QFileSystemModel_virtualbase_removeColumns".}
proc fcQFileSystemModel_virtualbase_moveRows(self: pointer, sourceParent: pointer, sourceRow: cint, count: cint, destinationParent: pointer, destinationChild: cint): bool {.importc: "QFileSystemModel_virtualbase_moveRows".}
proc fcQFileSystemModel_virtualbase_moveColumns(self: pointer, sourceParent: pointer, sourceColumn: cint, count: cint, destinationParent: pointer, destinationChild: cint): bool {.importc: "QFileSystemModel_virtualbase_moveColumns".}
proc fcQFileSystemModel_virtualbase_buddy(self: pointer, index: pointer): pointer {.importc: "QFileSystemModel_virtualbase_buddy".}
proc fcQFileSystemModel_virtualbase_match(self: pointer, start: pointer, role: cint, value: pointer, hits: cint, flags: cint): struct_miqt_array {.importc: "QFileSystemModel_virtualbase_match".}
proc fcQFileSystemModel_virtualbase_span(self: pointer, index: pointer): pointer {.importc: "QFileSystemModel_virtualbase_span".}
proc fcQFileSystemModel_virtualbase_multiData(self: pointer, index: pointer, roleDataSpan: pointer): void {.importc: "QFileSystemModel_virtualbase_multiData".}
proc fcQFileSystemModel_virtualbase_submit(self: pointer): bool {.importc: "QFileSystemModel_virtualbase_submit".}
proc fcQFileSystemModel_virtualbase_revert(self: pointer): void {.importc: "QFileSystemModel_virtualbase_revert".}
proc fcQFileSystemModel_virtualbase_resetInternalData(self: pointer): void {.importc: "QFileSystemModel_virtualbase_resetInternalData".}
proc fcQFileSystemModel_virtualbase_eventFilter(self: pointer, watched: pointer, event: pointer): bool {.importc: "QFileSystemModel_virtualbase_eventFilter".}
proc fcQFileSystemModel_virtualbase_childEvent(self: pointer, event: pointer): void {.importc: "QFileSystemModel_virtualbase_childEvent".}
proc fcQFileSystemModel_virtualbase_customEvent(self: pointer, event: pointer): void {.importc: "QFileSystemModel_virtualbase_customEvent".}
proc fcQFileSystemModel_virtualbase_connectNotify(self: pointer, signal: pointer): void {.importc: "QFileSystemModel_virtualbase_connectNotify".}
proc fcQFileSystemModel_virtualbase_disconnectNotify(self: pointer, signal: pointer): void {.importc: "QFileSystemModel_virtualbase_disconnectNotify".}
proc fcQFileSystemModel_protectedbase_createIndex(self: pointer, row: cint, column: cint): pointer {.importc: "QFileSystemModel_protectedbase_createIndex".}
proc fcQFileSystemModel_protectedbase_encodeData(self: pointer, indexes: struct_miqt_array, stream: pointer): void {.importc: "QFileSystemModel_protectedbase_encodeData".}
proc fcQFileSystemModel_protectedbase_decodeData(self: pointer, row: cint, column: cint, parent: pointer, stream: pointer): bool {.importc: "QFileSystemModel_protectedbase_decodeData".}
proc fcQFileSystemModel_protectedbase_beginInsertRows(self: pointer, parent: pointer, first: cint, last: cint): void {.importc: "QFileSystemModel_protectedbase_beginInsertRows".}
proc fcQFileSystemModel_protectedbase_endInsertRows(self: pointer): void {.importc: "QFileSystemModel_protectedbase_endInsertRows".}
proc fcQFileSystemModel_protectedbase_beginRemoveRows(self: pointer, parent: pointer, first: cint, last: cint): void {.importc: "QFileSystemModel_protectedbase_beginRemoveRows".}
proc fcQFileSystemModel_protectedbase_endRemoveRows(self: pointer): void {.importc: "QFileSystemModel_protectedbase_endRemoveRows".}
proc fcQFileSystemModel_protectedbase_beginMoveRows(self: pointer, sourceParent: pointer, sourceFirst: cint, sourceLast: cint, destinationParent: pointer, destinationRow: cint): bool {.importc: "QFileSystemModel_protectedbase_beginMoveRows".}
proc fcQFileSystemModel_protectedbase_endMoveRows(self: pointer): void {.importc: "QFileSystemModel_protectedbase_endMoveRows".}
proc fcQFileSystemModel_protectedbase_beginInsertColumns(self: pointer, parent: pointer, first: cint, last: cint): void {.importc: "QFileSystemModel_protectedbase_beginInsertColumns".}
proc fcQFileSystemModel_protectedbase_endInsertColumns(self: pointer): void {.importc: "QFileSystemModel_protectedbase_endInsertColumns".}
proc fcQFileSystemModel_protectedbase_beginRemoveColumns(self: pointer, parent: pointer, first: cint, last: cint): void {.importc: "QFileSystemModel_protectedbase_beginRemoveColumns".}
proc fcQFileSystemModel_protectedbase_endRemoveColumns(self: pointer): void {.importc: "QFileSystemModel_protectedbase_endRemoveColumns".}
proc fcQFileSystemModel_protectedbase_beginMoveColumns(self: pointer, sourceParent: pointer, sourceFirst: cint, sourceLast: cint, destinationParent: pointer, destinationColumn: cint): bool {.importc: "QFileSystemModel_protectedbase_beginMoveColumns".}
proc fcQFileSystemModel_protectedbase_endMoveColumns(self: pointer): void {.importc: "QFileSystemModel_protectedbase_endMoveColumns".}
proc fcQFileSystemModel_protectedbase_beginResetModel(self: pointer): void {.importc: "QFileSystemModel_protectedbase_beginResetModel".}
proc fcQFileSystemModel_protectedbase_endResetModel(self: pointer): void {.importc: "QFileSystemModel_protectedbase_endResetModel".}
proc fcQFileSystemModel_protectedbase_changePersistentIndex(self: pointer, fromVal: pointer, to: pointer): void {.importc: "QFileSystemModel_protectedbase_changePersistentIndex".}
proc fcQFileSystemModel_protectedbase_changePersistentIndexList(self: pointer, fromVal: struct_miqt_array, to: struct_miqt_array): void {.importc: "QFileSystemModel_protectedbase_changePersistentIndexList".}
proc fcQFileSystemModel_protectedbase_persistentIndexList(self: pointer): struct_miqt_array {.importc: "QFileSystemModel_protectedbase_persistentIndexList".}
proc fcQFileSystemModel_protectedbase_sender(self: pointer): pointer {.importc: "QFileSystemModel_protectedbase_sender".}
proc fcQFileSystemModel_protectedbase_senderSignalIndex(self: pointer): cint {.importc: "QFileSystemModel_protectedbase_senderSignalIndex".}
proc fcQFileSystemModel_protectedbase_receivers(self: pointer, signal: cstring): cint {.importc: "QFileSystemModel_protectedbase_receivers".}
proc fcQFileSystemModel_protectedbase_isSignalConnected(self: pointer, signal: pointer): bool {.importc: "QFileSystemModel_protectedbase_isSignalConnected".}
proc fcQFileSystemModel_new(vtbl, vdata: pointer): ptr cQFileSystemModel {.importc: "QFileSystemModel_new".}
proc fcQFileSystemModel_new2(vtbl, vdata: pointer, parent: pointer): ptr cQFileSystemModel {.importc: "QFileSystemModel_new2".}
proc fcQFileSystemModel_staticMetaObject(): pointer {.importc: "QFileSystemModel_staticMetaObject".}

proc metaObject*(self: gen_qfilesystemmodel_types.QFileSystemModel): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQFileSystemModel_metaObject(self.h), owned: false)

proc metacast*(self: gen_qfilesystemmodel_types.QFileSystemModel, param1: cstring): pointer =
  fcQFileSystemModel_metacast(self.h, param1)

proc metacall*(self: gen_qfilesystemmodel_types.QFileSystemModel, param1: cint, param2: cint, param3: pointer): cint =
  fcQFileSystemModel_metacall(self.h, cint(param1), param2, param3)

proc tr*(_: type gen_qfilesystemmodel_types.QFileSystemModel, s: cstring): string =
  let v_ms = fcQFileSystemModel_tr(s)
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

proc rootPathChanged*(self: gen_qfilesystemmodel_types.QFileSystemModel, newPath: openArray[char]): void =
  fcQFileSystemModel_rootPathChanged(self.h, struct_miqt_string(data: if len(newPath) > 0: addr newPath[0] else: nil, len: csize_t(len(newPath))))

type QFileSystemModelrootPathChangedSlot* = proc(newPath: openArray[char])
proc cQFileSystemModel_slot_callback_rootPathChanged(slot: int, newPath: struct_miqt_string) {.cdecl.} =
  let nimfunc = cast[ptr QFileSystemModelrootPathChangedSlot](cast[pointer](slot))
  let vnewPath_ms = newPath
  let vnewPathx_ret = string.fromBytes(vnewPath_ms)
  c_free(vnewPath_ms.data)
  let slotval1 = vnewPathx_ret

  nimfunc[](slotval1)

proc cQFileSystemModel_slot_callback_rootPathChanged_release(slot: int) {.cdecl.} =
  let nimfunc = cast[ref QFileSystemModelrootPathChangedSlot](cast[pointer](slot))
  GC_unref(nimfunc)

proc onrootPathChanged*(self: gen_qfilesystemmodel_types.QFileSystemModel, slot: QFileSystemModelrootPathChangedSlot) =
  var tmp = new QFileSystemModelrootPathChangedSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQFileSystemModel_connect_rootPathChanged(self.h, cast[int](addr tmp[]), cQFileSystemModel_slot_callback_rootPathChanged, cQFileSystemModel_slot_callback_rootPathChanged_release)

proc fileRenamed*(self: gen_qfilesystemmodel_types.QFileSystemModel, path: openArray[char], oldName: openArray[char], newName: openArray[char]): void =
  fcQFileSystemModel_fileRenamed(self.h, struct_miqt_string(data: if len(path) > 0: addr path[0] else: nil, len: csize_t(len(path))), struct_miqt_string(data: if len(oldName) > 0: addr oldName[0] else: nil, len: csize_t(len(oldName))), struct_miqt_string(data: if len(newName) > 0: addr newName[0] else: nil, len: csize_t(len(newName))))

type QFileSystemModelfileRenamedSlot* = proc(path: openArray[char], oldName: openArray[char], newName: openArray[char])
proc cQFileSystemModel_slot_callback_fileRenamed(slot: int, path: struct_miqt_string, oldName: struct_miqt_string, newName: struct_miqt_string) {.cdecl.} =
  let nimfunc = cast[ptr QFileSystemModelfileRenamedSlot](cast[pointer](slot))
  let vpath_ms = path
  let vpathx_ret = string.fromBytes(vpath_ms)
  c_free(vpath_ms.data)
  let slotval1 = vpathx_ret

  let voldName_ms = oldName
  let voldNamex_ret = string.fromBytes(voldName_ms)
  c_free(voldName_ms.data)
  let slotval2 = voldNamex_ret

  let vnewName_ms = newName
  let vnewNamex_ret = string.fromBytes(vnewName_ms)
  c_free(vnewName_ms.data)
  let slotval3 = vnewNamex_ret

  nimfunc[](slotval1, slotval2, slotval3)

proc cQFileSystemModel_slot_callback_fileRenamed_release(slot: int) {.cdecl.} =
  let nimfunc = cast[ref QFileSystemModelfileRenamedSlot](cast[pointer](slot))
  GC_unref(nimfunc)

proc onfileRenamed*(self: gen_qfilesystemmodel_types.QFileSystemModel, slot: QFileSystemModelfileRenamedSlot) =
  var tmp = new QFileSystemModelfileRenamedSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQFileSystemModel_connect_fileRenamed(self.h, cast[int](addr tmp[]), cQFileSystemModel_slot_callback_fileRenamed, cQFileSystemModel_slot_callback_fileRenamed_release)

proc directoryLoaded*(self: gen_qfilesystemmodel_types.QFileSystemModel, path: openArray[char]): void =
  fcQFileSystemModel_directoryLoaded(self.h, struct_miqt_string(data: if len(path) > 0: addr path[0] else: nil, len: csize_t(len(path))))

type QFileSystemModeldirectoryLoadedSlot* = proc(path: openArray[char])
proc cQFileSystemModel_slot_callback_directoryLoaded(slot: int, path: struct_miqt_string) {.cdecl.} =
  let nimfunc = cast[ptr QFileSystemModeldirectoryLoadedSlot](cast[pointer](slot))
  let vpath_ms = path
  let vpathx_ret = string.fromBytes(vpath_ms)
  c_free(vpath_ms.data)
  let slotval1 = vpathx_ret

  nimfunc[](slotval1)

proc cQFileSystemModel_slot_callback_directoryLoaded_release(slot: int) {.cdecl.} =
  let nimfunc = cast[ref QFileSystemModeldirectoryLoadedSlot](cast[pointer](slot))
  GC_unref(nimfunc)

proc ondirectoryLoaded*(self: gen_qfilesystemmodel_types.QFileSystemModel, slot: QFileSystemModeldirectoryLoadedSlot) =
  var tmp = new QFileSystemModeldirectoryLoadedSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQFileSystemModel_connect_directoryLoaded(self.h, cast[int](addr tmp[]), cQFileSystemModel_slot_callback_directoryLoaded, cQFileSystemModel_slot_callback_directoryLoaded_release)

proc index*(self: gen_qfilesystemmodel_types.QFileSystemModel, row: cint, column: cint, parent: gen_qabstractitemmodel_types.QModelIndex): gen_qabstractitemmodel_types.QModelIndex =
  gen_qabstractitemmodel_types.QModelIndex(h: fcQFileSystemModel_index(self.h, row, column, parent.h), owned: true)

proc index*(self: gen_qfilesystemmodel_types.QFileSystemModel, path: openArray[char]): gen_qabstractitemmodel_types.QModelIndex =
  gen_qabstractitemmodel_types.QModelIndex(h: fcQFileSystemModel_indexWithPath(self.h, struct_miqt_string(data: if len(path) > 0: addr path[0] else: nil, len: csize_t(len(path)))), owned: true)

proc parent*(self: gen_qfilesystemmodel_types.QFileSystemModel, child: gen_qabstractitemmodel_types.QModelIndex): gen_qabstractitemmodel_types.QModelIndex =
  gen_qabstractitemmodel_types.QModelIndex(h: fcQFileSystemModel_parent(self.h, child.h), owned: true)

proc sibling*(self: gen_qfilesystemmodel_types.QFileSystemModel, row: cint, column: cint, idx: gen_qabstractitemmodel_types.QModelIndex): gen_qabstractitemmodel_types.QModelIndex =
  gen_qabstractitemmodel_types.QModelIndex(h: fcQFileSystemModel_sibling(self.h, row, column, idx.h), owned: true)

proc hasChildren*(self: gen_qfilesystemmodel_types.QFileSystemModel, parent: gen_qabstractitemmodel_types.QModelIndex): bool =
  fcQFileSystemModel_hasChildren(self.h, parent.h)

proc canFetchMore*(self: gen_qfilesystemmodel_types.QFileSystemModel, parent: gen_qabstractitemmodel_types.QModelIndex): bool =
  fcQFileSystemModel_canFetchMore(self.h, parent.h)

proc fetchMore*(self: gen_qfilesystemmodel_types.QFileSystemModel, parent: gen_qabstractitemmodel_types.QModelIndex): void =
  fcQFileSystemModel_fetchMore(self.h, parent.h)

proc rowCount*(self: gen_qfilesystemmodel_types.QFileSystemModel, parent: gen_qabstractitemmodel_types.QModelIndex): cint =
  fcQFileSystemModel_rowCount(self.h, parent.h)

proc columnCount*(self: gen_qfilesystemmodel_types.QFileSystemModel, parent: gen_qabstractitemmodel_types.QModelIndex): cint =
  fcQFileSystemModel_columnCount(self.h, parent.h)

proc myComputer*(self: gen_qfilesystemmodel_types.QFileSystemModel): gen_qvariant_types.QVariant =
  gen_qvariant_types.QVariant(h: fcQFileSystemModel_myComputer(self.h), owned: true)

proc data*(self: gen_qfilesystemmodel_types.QFileSystemModel, index: gen_qabstractitemmodel_types.QModelIndex, role: cint): gen_qvariant_types.QVariant =
  gen_qvariant_types.QVariant(h: fcQFileSystemModel_data(self.h, index.h, role), owned: true)

proc setData*(self: gen_qfilesystemmodel_types.QFileSystemModel, index: gen_qabstractitemmodel_types.QModelIndex, value: gen_qvariant_types.QVariant, role: cint): bool =
  fcQFileSystemModel_setData(self.h, index.h, value.h, role)

proc headerData*(self: gen_qfilesystemmodel_types.QFileSystemModel, section: cint, orientation: cint, role: cint): gen_qvariant_types.QVariant =
  gen_qvariant_types.QVariant(h: fcQFileSystemModel_headerData(self.h, section, cint(orientation), role), owned: true)

proc flags*(self: gen_qfilesystemmodel_types.QFileSystemModel, index: gen_qabstractitemmodel_types.QModelIndex): cint =
  cint(fcQFileSystemModel_flags(self.h, index.h))

proc sort*(self: gen_qfilesystemmodel_types.QFileSystemModel, column: cint, order: cint): void =
  fcQFileSystemModel_sort(self.h, column, cint(order))

proc mimeTypes*(self: gen_qfilesystemmodel_types.QFileSystemModel): seq[string] =
  var v_ma = fcQFileSystemModel_mimeTypes(self.h)
  var vx_ret = newSeq[string](int(v_ma.len))
  let v_outCast = cast[ptr UncheckedArray[struct_miqt_string]](v_ma.data)
  for i in 0 ..< v_ma.len:
    let vx_lv_ms = v_outCast[i]
    let vx_lvx_ret = string.fromBytes(vx_lv_ms)
    c_free(vx_lv_ms.data)
    vx_ret[i] = vx_lvx_ret
  c_free(v_ma.data)
  vx_ret

proc mimeData*(self: gen_qfilesystemmodel_types.QFileSystemModel, indexes: openArray[gen_qabstractitemmodel_types.QModelIndex]): gen_qmimedata_types.QMimeData =
  var indexes_CArray = newSeq[pointer](len(indexes))
  for i in 0..<len(indexes):
    indexes_CArray[i] = indexes[i].h

  gen_qmimedata_types.QMimeData(h: fcQFileSystemModel_mimeData(self.h, struct_miqt_array(len: csize_t(len(indexes)), data: if len(indexes) == 0: nil else: addr(indexes_CArray[0]))), owned: false)

proc dropMimeData*(self: gen_qfilesystemmodel_types.QFileSystemModel, data: gen_qmimedata_types.QMimeData, action: cint, row: cint, column: cint, parent: gen_qabstractitemmodel_types.QModelIndex): bool =
  fcQFileSystemModel_dropMimeData(self.h, data.h, cint(action), row, column, parent.h)

proc supportedDropActions*(self: gen_qfilesystemmodel_types.QFileSystemModel): cint =
  cint(fcQFileSystemModel_supportedDropActions(self.h))

proc roleNames*(self: gen_qfilesystemmodel_types.QFileSystemModel): Table[cint,seq[byte]] =
  var v_mm = fcQFileSystemModel_roleNames(self.h)
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

proc setRootPath*(self: gen_qfilesystemmodel_types.QFileSystemModel, path: openArray[char]): gen_qabstractitemmodel_types.QModelIndex =
  gen_qabstractitemmodel_types.QModelIndex(h: fcQFileSystemModel_setRootPath(self.h, struct_miqt_string(data: if len(path) > 0: addr path[0] else: nil, len: csize_t(len(path)))), owned: true)

proc rootPath*(self: gen_qfilesystemmodel_types.QFileSystemModel): string =
  let v_ms = fcQFileSystemModel_rootPath(self.h)
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

proc rootDirectory*(self: gen_qfilesystemmodel_types.QFileSystemModel): gen_qdir_types.QDir =
  gen_qdir_types.QDir(h: fcQFileSystemModel_rootDirectory(self.h), owned: true)

proc setIconProvider*(self: gen_qfilesystemmodel_types.QFileSystemModel, provider: gen_qabstractfileiconprovider_types.QAbstractFileIconProvider): void =
  fcQFileSystemModel_setIconProvider(self.h, provider.h)

proc iconProvider*(self: gen_qfilesystemmodel_types.QFileSystemModel): gen_qabstractfileiconprovider_types.QAbstractFileIconProvider =
  gen_qabstractfileiconprovider_types.QAbstractFileIconProvider(h: fcQFileSystemModel_iconProvider(self.h), owned: false)

proc setFilter*(self: gen_qfilesystemmodel_types.QFileSystemModel, filters: cint): void =
  fcQFileSystemModel_setFilter(self.h, cint(filters))

proc filter*(self: gen_qfilesystemmodel_types.QFileSystemModel): cint =
  cint(fcQFileSystemModel_filter(self.h))

proc setResolveSymlinks*(self: gen_qfilesystemmodel_types.QFileSystemModel, enable: bool): void =
  fcQFileSystemModel_setResolveSymlinks(self.h, enable)

proc resolveSymlinks*(self: gen_qfilesystemmodel_types.QFileSystemModel): bool =
  fcQFileSystemModel_resolveSymlinks(self.h)

proc setReadOnly*(self: gen_qfilesystemmodel_types.QFileSystemModel, enable: bool): void =
  fcQFileSystemModel_setReadOnly(self.h, enable)

proc isReadOnly*(self: gen_qfilesystemmodel_types.QFileSystemModel): bool =
  fcQFileSystemModel_isReadOnly(self.h)

proc setNameFilterDisables*(self: gen_qfilesystemmodel_types.QFileSystemModel, enable: bool): void =
  fcQFileSystemModel_setNameFilterDisables(self.h, enable)

proc nameFilterDisables*(self: gen_qfilesystemmodel_types.QFileSystemModel): bool =
  fcQFileSystemModel_nameFilterDisables(self.h)

proc setNameFilters*(self: gen_qfilesystemmodel_types.QFileSystemModel, filters: openArray[string]): void =
  var filters_CArray = newSeq[struct_miqt_string](len(filters))
  for i in 0..<len(filters):
    filters_CArray[i] = struct_miqt_string(data: if len(filters[i]) > 0: addr filters[i][0] else: nil, len: csize_t(len(filters[i])))

  fcQFileSystemModel_setNameFilters(self.h, struct_miqt_array(len: csize_t(len(filters)), data: if len(filters) == 0: nil else: addr(filters_CArray[0])))

proc nameFilters*(self: gen_qfilesystemmodel_types.QFileSystemModel): seq[string] =
  var v_ma = fcQFileSystemModel_nameFilters(self.h)
  var vx_ret = newSeq[string](int(v_ma.len))
  let v_outCast = cast[ptr UncheckedArray[struct_miqt_string]](v_ma.data)
  for i in 0 ..< v_ma.len:
    let vx_lv_ms = v_outCast[i]
    let vx_lvx_ret = string.fromBytes(vx_lv_ms)
    c_free(vx_lv_ms.data)
    vx_ret[i] = vx_lvx_ret
  c_free(v_ma.data)
  vx_ret

proc setOption*(self: gen_qfilesystemmodel_types.QFileSystemModel, option: cint): void =
  fcQFileSystemModel_setOption(self.h, cint(option))

proc testOption*(self: gen_qfilesystemmodel_types.QFileSystemModel, option: cint): bool =
  fcQFileSystemModel_testOption(self.h, cint(option))

proc setOptions*(self: gen_qfilesystemmodel_types.QFileSystemModel, options: cint): void =
  fcQFileSystemModel_setOptions(self.h, cint(options))

proc options*(self: gen_qfilesystemmodel_types.QFileSystemModel): cint =
  cint(fcQFileSystemModel_options(self.h))

proc filePath*(self: gen_qfilesystemmodel_types.QFileSystemModel, index: gen_qabstractitemmodel_types.QModelIndex): string =
  let v_ms = fcQFileSystemModel_filePath(self.h, index.h)
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

proc isDir*(self: gen_qfilesystemmodel_types.QFileSystemModel, index: gen_qabstractitemmodel_types.QModelIndex): bool =
  fcQFileSystemModel_isDir(self.h, index.h)

proc size*(self: gen_qfilesystemmodel_types.QFileSystemModel, index: gen_qabstractitemmodel_types.QModelIndex): clonglong =
  fcQFileSystemModel_size(self.h, index.h)

proc typeX*(self: gen_qfilesystemmodel_types.QFileSystemModel, index: gen_qabstractitemmodel_types.QModelIndex): string =
  let v_ms = fcQFileSystemModel_typeX(self.h, index.h)
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

proc lastModified*(self: gen_qfilesystemmodel_types.QFileSystemModel, index: gen_qabstractitemmodel_types.QModelIndex): gen_qdatetime_types.QDateTime =
  gen_qdatetime_types.QDateTime(h: fcQFileSystemModel_lastModified(self.h, index.h), owned: true)

proc mkdir*(self: gen_qfilesystemmodel_types.QFileSystemModel, parent: gen_qabstractitemmodel_types.QModelIndex, name: openArray[char]): gen_qabstractitemmodel_types.QModelIndex =
  gen_qabstractitemmodel_types.QModelIndex(h: fcQFileSystemModel_mkdir(self.h, parent.h, struct_miqt_string(data: if len(name) > 0: addr name[0] else: nil, len: csize_t(len(name)))), owned: true)

proc rmdir*(self: gen_qfilesystemmodel_types.QFileSystemModel, index: gen_qabstractitemmodel_types.QModelIndex): bool =
  fcQFileSystemModel_rmdir(self.h, index.h)

proc fileName*(self: gen_qfilesystemmodel_types.QFileSystemModel, index: gen_qabstractitemmodel_types.QModelIndex): string =
  let v_ms = fcQFileSystemModel_fileName(self.h, index.h)
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

proc fileIcon*(self: gen_qfilesystemmodel_types.QFileSystemModel, index: gen_qabstractitemmodel_types.QModelIndex): gen_qicon_types.QIcon =
  gen_qicon_types.QIcon(h: fcQFileSystemModel_fileIcon(self.h, index.h), owned: true)

proc permissions*(self: gen_qfilesystemmodel_types.QFileSystemModel, index: gen_qabstractitemmodel_types.QModelIndex): cint =
  cint(fcQFileSystemModel_permissions(self.h, index.h))

proc fileInfo*(self: gen_qfilesystemmodel_types.QFileSystemModel, index: gen_qabstractitemmodel_types.QModelIndex): gen_qfileinfo_types.QFileInfo =
  gen_qfileinfo_types.QFileInfo(h: fcQFileSystemModel_fileInfo(self.h, index.h), owned: true)

proc remove*(self: gen_qfilesystemmodel_types.QFileSystemModel, index: gen_qabstractitemmodel_types.QModelIndex): bool =
  fcQFileSystemModel_remove(self.h, index.h)

proc tr*(_: type gen_qfilesystemmodel_types.QFileSystemModel, s: cstring, c: cstring): string =
  let v_ms = fcQFileSystemModel_tr2(s, c)
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

proc tr*(_: type gen_qfilesystemmodel_types.QFileSystemModel, s: cstring, c: cstring, n: cint): string =
  let v_ms = fcQFileSystemModel_tr3(s, c, n)
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

proc index*(self: gen_qfilesystemmodel_types.QFileSystemModel, path: openArray[char], column: cint): gen_qabstractitemmodel_types.QModelIndex =
  gen_qabstractitemmodel_types.QModelIndex(h: fcQFileSystemModel_index2(self.h, struct_miqt_string(data: if len(path) > 0: addr path[0] else: nil, len: csize_t(len(path))), column), owned: true)

proc myComputer*(self: gen_qfilesystemmodel_types.QFileSystemModel, role: cint): gen_qvariant_types.QVariant =
  gen_qvariant_types.QVariant(h: fcQFileSystemModel_myComputer1(self.h, role), owned: true)

proc setOption*(self: gen_qfilesystemmodel_types.QFileSystemModel, option: cint, on: bool): void =
  fcQFileSystemModel_setOption2(self.h, cint(option), on)

type QFileSystemModelmetaObjectProc* = proc(self: QFileSystemModel): gen_qobjectdefs_types.QMetaObject {.raises: [], gcsafe.}
type QFileSystemModelmetacastProc* = proc(self: QFileSystemModel, param1: cstring): pointer {.raises: [], gcsafe.}
type QFileSystemModelmetacallProc* = proc(self: QFileSystemModel, param1: cint, param2: cint, param3: pointer): cint {.raises: [], gcsafe.}
type QFileSystemModelindexProc* = proc(self: QFileSystemModel, row: cint, column: cint, parent: gen_qabstractitemmodel_types.QModelIndex): gen_qabstractitemmodel_types.QModelIndex {.raises: [], gcsafe.}
type QFileSystemModelparentProc* = proc(self: QFileSystemModel, child: gen_qabstractitemmodel_types.QModelIndex): gen_qabstractitemmodel_types.QModelIndex {.raises: [], gcsafe.}
type QFileSystemModelsiblingProc* = proc(self: QFileSystemModel, row: cint, column: cint, idx: gen_qabstractitemmodel_types.QModelIndex): gen_qabstractitemmodel_types.QModelIndex {.raises: [], gcsafe.}
type QFileSystemModelhasChildrenProc* = proc(self: QFileSystemModel, parent: gen_qabstractitemmodel_types.QModelIndex): bool {.raises: [], gcsafe.}
type QFileSystemModelcanFetchMoreProc* = proc(self: QFileSystemModel, parent: gen_qabstractitemmodel_types.QModelIndex): bool {.raises: [], gcsafe.}
type QFileSystemModelfetchMoreProc* = proc(self: QFileSystemModel, parent: gen_qabstractitemmodel_types.QModelIndex): void {.raises: [], gcsafe.}
type QFileSystemModelrowCountProc* = proc(self: QFileSystemModel, parent: gen_qabstractitemmodel_types.QModelIndex): cint {.raises: [], gcsafe.}
type QFileSystemModelcolumnCountProc* = proc(self: QFileSystemModel, parent: gen_qabstractitemmodel_types.QModelIndex): cint {.raises: [], gcsafe.}
type QFileSystemModeldataProc* = proc(self: QFileSystemModel, index: gen_qabstractitemmodel_types.QModelIndex, role: cint): gen_qvariant_types.QVariant {.raises: [], gcsafe.}
type QFileSystemModelsetDataProc* = proc(self: QFileSystemModel, index: gen_qabstractitemmodel_types.QModelIndex, value: gen_qvariant_types.QVariant, role: cint): bool {.raises: [], gcsafe.}
type QFileSystemModelheaderDataProc* = proc(self: QFileSystemModel, section: cint, orientation: cint, role: cint): gen_qvariant_types.QVariant {.raises: [], gcsafe.}
type QFileSystemModelflagsProc* = proc(self: QFileSystemModel, index: gen_qabstractitemmodel_types.QModelIndex): cint {.raises: [], gcsafe.}
type QFileSystemModelsortProc* = proc(self: QFileSystemModel, column: cint, order: cint): void {.raises: [], gcsafe.}
type QFileSystemModelmimeTypesProc* = proc(self: QFileSystemModel): seq[string] {.raises: [], gcsafe.}
type QFileSystemModelmimeDataProc* = proc(self: QFileSystemModel, indexes: openArray[gen_qabstractitemmodel_types.QModelIndex]): gen_qmimedata_types.QMimeData {.raises: [], gcsafe.}
type QFileSystemModeldropMimeDataProc* = proc(self: QFileSystemModel, data: gen_qmimedata_types.QMimeData, action: cint, row: cint, column: cint, parent: gen_qabstractitemmodel_types.QModelIndex): bool {.raises: [], gcsafe.}
type QFileSystemModelsupportedDropActionsProc* = proc(self: QFileSystemModel): cint {.raises: [], gcsafe.}
type QFileSystemModelroleNamesProc* = proc(self: QFileSystemModel): Table[cint,seq[byte]] {.raises: [], gcsafe.}
type QFileSystemModeltimerEventProc* = proc(self: QFileSystemModel, event: gen_qcoreevent_types.QTimerEvent): void {.raises: [], gcsafe.}
type QFileSystemModeleventProc* = proc(self: QFileSystemModel, event: gen_qcoreevent_types.QEvent): bool {.raises: [], gcsafe.}
type QFileSystemModelsetHeaderDataProc* = proc(self: QFileSystemModel, section: cint, orientation: cint, value: gen_qvariant_types.QVariant, role: cint): bool {.raises: [], gcsafe.}
type QFileSystemModelitemDataProc* = proc(self: QFileSystemModel, index: gen_qabstractitemmodel_types.QModelIndex): Table[cint,gen_qvariant_types.QVariant] {.raises: [], gcsafe.}
type QFileSystemModelsetItemDataProc* = proc(self: QFileSystemModel, index: gen_qabstractitemmodel_types.QModelIndex, roles: Table[cint,gen_qvariant_types.QVariant]): bool {.raises: [], gcsafe.}
type QFileSystemModelclearItemDataProc* = proc(self: QFileSystemModel, index: gen_qabstractitemmodel_types.QModelIndex): bool {.raises: [], gcsafe.}
type QFileSystemModelcanDropMimeDataProc* = proc(self: QFileSystemModel, data: gen_qmimedata_types.QMimeData, action: cint, row: cint, column: cint, parent: gen_qabstractitemmodel_types.QModelIndex): bool {.raises: [], gcsafe.}
type QFileSystemModelsupportedDragActionsProc* = proc(self: QFileSystemModel): cint {.raises: [], gcsafe.}
type QFileSystemModelinsertRowsProc* = proc(self: QFileSystemModel, row: cint, count: cint, parent: gen_qabstractitemmodel_types.QModelIndex): bool {.raises: [], gcsafe.}
type QFileSystemModelinsertColumnsProc* = proc(self: QFileSystemModel, column: cint, count: cint, parent: gen_qabstractitemmodel_types.QModelIndex): bool {.raises: [], gcsafe.}
type QFileSystemModelremoveRowsProc* = proc(self: QFileSystemModel, row: cint, count: cint, parent: gen_qabstractitemmodel_types.QModelIndex): bool {.raises: [], gcsafe.}
type QFileSystemModelremoveColumnsProc* = proc(self: QFileSystemModel, column: cint, count: cint, parent: gen_qabstractitemmodel_types.QModelIndex): bool {.raises: [], gcsafe.}
type QFileSystemModelmoveRowsProc* = proc(self: QFileSystemModel, sourceParent: gen_qabstractitemmodel_types.QModelIndex, sourceRow: cint, count: cint, destinationParent: gen_qabstractitemmodel_types.QModelIndex, destinationChild: cint): bool {.raises: [], gcsafe.}
type QFileSystemModelmoveColumnsProc* = proc(self: QFileSystemModel, sourceParent: gen_qabstractitemmodel_types.QModelIndex, sourceColumn: cint, count: cint, destinationParent: gen_qabstractitemmodel_types.QModelIndex, destinationChild: cint): bool {.raises: [], gcsafe.}
type QFileSystemModelbuddyProc* = proc(self: QFileSystemModel, index: gen_qabstractitemmodel_types.QModelIndex): gen_qabstractitemmodel_types.QModelIndex {.raises: [], gcsafe.}
type QFileSystemModelmatchProc* = proc(self: QFileSystemModel, start: gen_qabstractitemmodel_types.QModelIndex, role: cint, value: gen_qvariant_types.QVariant, hits: cint, flags: cint): seq[gen_qabstractitemmodel_types.QModelIndex] {.raises: [], gcsafe.}
type QFileSystemModelspanProc* = proc(self: QFileSystemModel, index: gen_qabstractitemmodel_types.QModelIndex): gen_qsize_types.QSize {.raises: [], gcsafe.}
type QFileSystemModelmultiDataProc* = proc(self: QFileSystemModel, index: gen_qabstractitemmodel_types.QModelIndex, roleDataSpan: gen_qabstractitemmodel_types.QModelRoleDataSpan): void {.raises: [], gcsafe.}
type QFileSystemModelsubmitProc* = proc(self: QFileSystemModel): bool {.raises: [], gcsafe.}
type QFileSystemModelrevertProc* = proc(self: QFileSystemModel): void {.raises: [], gcsafe.}
type QFileSystemModelresetInternalDataProc* = proc(self: QFileSystemModel): void {.raises: [], gcsafe.}
type QFileSystemModeleventFilterProc* = proc(self: QFileSystemModel, watched: gen_qobject_types.QObject, event: gen_qcoreevent_types.QEvent): bool {.raises: [], gcsafe.}
type QFileSystemModelchildEventProc* = proc(self: QFileSystemModel, event: gen_qcoreevent_types.QChildEvent): void {.raises: [], gcsafe.}
type QFileSystemModelcustomEventProc* = proc(self: QFileSystemModel, event: gen_qcoreevent_types.QEvent): void {.raises: [], gcsafe.}
type QFileSystemModelconnectNotifyProc* = proc(self: QFileSystemModel, signal: gen_qmetaobject_types.QMetaMethod): void {.raises: [], gcsafe.}
type QFileSystemModeldisconnectNotifyProc* = proc(self: QFileSystemModel, signal: gen_qmetaobject_types.QMetaMethod): void {.raises: [], gcsafe.}
type QFileSystemModelVTable* {.inheritable, pure.} = object
  vtbl: cQFileSystemModelVTable
  metaObject*: QFileSystemModelmetaObjectProc
  metacast*: QFileSystemModelmetacastProc
  metacall*: QFileSystemModelmetacallProc
  index*: QFileSystemModelindexProc
  parent*: QFileSystemModelparentProc
  sibling*: QFileSystemModelsiblingProc
  hasChildren*: QFileSystemModelhasChildrenProc
  canFetchMore*: QFileSystemModelcanFetchMoreProc
  fetchMore*: QFileSystemModelfetchMoreProc
  rowCount*: QFileSystemModelrowCountProc
  columnCount*: QFileSystemModelcolumnCountProc
  data*: QFileSystemModeldataProc
  setData*: QFileSystemModelsetDataProc
  headerData*: QFileSystemModelheaderDataProc
  flags*: QFileSystemModelflagsProc
  sort*: QFileSystemModelsortProc
  mimeTypes*: QFileSystemModelmimeTypesProc
  mimeData*: QFileSystemModelmimeDataProc
  dropMimeData*: QFileSystemModeldropMimeDataProc
  supportedDropActions*: QFileSystemModelsupportedDropActionsProc
  roleNames*: QFileSystemModelroleNamesProc
  timerEvent*: QFileSystemModeltimerEventProc
  event*: QFileSystemModeleventProc
  setHeaderData*: QFileSystemModelsetHeaderDataProc
  itemData*: QFileSystemModelitemDataProc
  setItemData*: QFileSystemModelsetItemDataProc
  clearItemData*: QFileSystemModelclearItemDataProc
  canDropMimeData*: QFileSystemModelcanDropMimeDataProc
  supportedDragActions*: QFileSystemModelsupportedDragActionsProc
  insertRows*: QFileSystemModelinsertRowsProc
  insertColumns*: QFileSystemModelinsertColumnsProc
  removeRows*: QFileSystemModelremoveRowsProc
  removeColumns*: QFileSystemModelremoveColumnsProc
  moveRows*: QFileSystemModelmoveRowsProc
  moveColumns*: QFileSystemModelmoveColumnsProc
  buddy*: QFileSystemModelbuddyProc
  match*: QFileSystemModelmatchProc
  span*: QFileSystemModelspanProc
  multiData*: QFileSystemModelmultiDataProc
  submit*: QFileSystemModelsubmitProc
  revert*: QFileSystemModelrevertProc
  resetInternalData*: QFileSystemModelresetInternalDataProc
  eventFilter*: QFileSystemModeleventFilterProc
  childEvent*: QFileSystemModelchildEventProc
  customEvent*: QFileSystemModelcustomEventProc
  connectNotify*: QFileSystemModelconnectNotifyProc
  disconnectNotify*: QFileSystemModeldisconnectNotifyProc
proc QFileSystemModelmetaObject*(self: gen_qfilesystemmodel_types.QFileSystemModel): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQFileSystemModel_virtualbase_metaObject(self.h), owned: false)

proc cQFileSystemModel_vtable_callback_metaObject(self: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QFileSystemModelVTable](fcQFileSystemModel_vdata(self))
  let self = QFileSystemModel(h: self)
  var virtualReturn = vtbl[].metaObject(self)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc QFileSystemModelmetacast*(self: gen_qfilesystemmodel_types.QFileSystemModel, param1: cstring): pointer =
  fcQFileSystemModel_virtualbase_metacast(self.h, param1)

proc cQFileSystemModel_vtable_callback_metacast(self: pointer, param1: cstring): pointer {.cdecl.} =
  let vtbl = cast[ptr QFileSystemModelVTable](fcQFileSystemModel_vdata(self))
  let self = QFileSystemModel(h: self)
  let slotval1 = (param1)
  var virtualReturn = vtbl[].metacast(self, slotval1)
  virtualReturn

proc QFileSystemModelmetacall*(self: gen_qfilesystemmodel_types.QFileSystemModel, param1: cint, param2: cint, param3: pointer): cint =
  fcQFileSystemModel_virtualbase_metacall(self.h, cint(param1), param2, param3)

proc cQFileSystemModel_vtable_callback_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.cdecl.} =
  let vtbl = cast[ptr QFileSystemModelVTable](fcQFileSystemModel_vdata(self))
  let self = QFileSystemModel(h: self)
  let slotval1 = cint(param1)
  let slotval2 = param2
  let slotval3 = param3
  var virtualReturn = vtbl[].metacall(self, slotval1, slotval2, slotval3)
  virtualReturn

proc QFileSystemModelindex*(self: gen_qfilesystemmodel_types.QFileSystemModel, row: cint, column: cint, parent: gen_qabstractitemmodel_types.QModelIndex): gen_qabstractitemmodel_types.QModelIndex =
  gen_qabstractitemmodel_types.QModelIndex(h: fcQFileSystemModel_virtualbase_index(self.h, row, column, parent.h), owned: true)

proc cQFileSystemModel_vtable_callback_index(self: pointer, row: cint, column: cint, parent: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QFileSystemModelVTable](fcQFileSystemModel_vdata(self))
  let self = QFileSystemModel(h: self)
  let slotval1 = row
  let slotval2 = column
  let slotval3 = gen_qabstractitemmodel_types.QModelIndex(h: parent, owned: false)
  var virtualReturn = vtbl[].index(self, slotval1, slotval2, slotval3)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc QFileSystemModelparent*(self: gen_qfilesystemmodel_types.QFileSystemModel, child: gen_qabstractitemmodel_types.QModelIndex): gen_qabstractitemmodel_types.QModelIndex =
  gen_qabstractitemmodel_types.QModelIndex(h: fcQFileSystemModel_virtualbase_parent(self.h, child.h), owned: true)

proc cQFileSystemModel_vtable_callback_parent(self: pointer, child: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QFileSystemModelVTable](fcQFileSystemModel_vdata(self))
  let self = QFileSystemModel(h: self)
  let slotval1 = gen_qabstractitemmodel_types.QModelIndex(h: child, owned: false)
  var virtualReturn = vtbl[].parent(self, slotval1)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc QFileSystemModelsibling*(self: gen_qfilesystemmodel_types.QFileSystemModel, row: cint, column: cint, idx: gen_qabstractitemmodel_types.QModelIndex): gen_qabstractitemmodel_types.QModelIndex =
  gen_qabstractitemmodel_types.QModelIndex(h: fcQFileSystemModel_virtualbase_sibling(self.h, row, column, idx.h), owned: true)

proc cQFileSystemModel_vtable_callback_sibling(self: pointer, row: cint, column: cint, idx: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QFileSystemModelVTable](fcQFileSystemModel_vdata(self))
  let self = QFileSystemModel(h: self)
  let slotval1 = row
  let slotval2 = column
  let slotval3 = gen_qabstractitemmodel_types.QModelIndex(h: idx, owned: false)
  var virtualReturn = vtbl[].sibling(self, slotval1, slotval2, slotval3)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc QFileSystemModelhasChildren*(self: gen_qfilesystemmodel_types.QFileSystemModel, parent: gen_qabstractitemmodel_types.QModelIndex): bool =
  fcQFileSystemModel_virtualbase_hasChildren(self.h, parent.h)

proc cQFileSystemModel_vtable_callback_hasChildren(self: pointer, parent: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QFileSystemModelVTable](fcQFileSystemModel_vdata(self))
  let self = QFileSystemModel(h: self)
  let slotval1 = gen_qabstractitemmodel_types.QModelIndex(h: parent, owned: false)
  var virtualReturn = vtbl[].hasChildren(self, slotval1)
  virtualReturn

proc QFileSystemModelcanFetchMore*(self: gen_qfilesystemmodel_types.QFileSystemModel, parent: gen_qabstractitemmodel_types.QModelIndex): bool =
  fcQFileSystemModel_virtualbase_canFetchMore(self.h, parent.h)

proc cQFileSystemModel_vtable_callback_canFetchMore(self: pointer, parent: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QFileSystemModelVTable](fcQFileSystemModel_vdata(self))
  let self = QFileSystemModel(h: self)
  let slotval1 = gen_qabstractitemmodel_types.QModelIndex(h: parent, owned: false)
  var virtualReturn = vtbl[].canFetchMore(self, slotval1)
  virtualReturn

proc QFileSystemModelfetchMore*(self: gen_qfilesystemmodel_types.QFileSystemModel, parent: gen_qabstractitemmodel_types.QModelIndex): void =
  fcQFileSystemModel_virtualbase_fetchMore(self.h, parent.h)

proc cQFileSystemModel_vtable_callback_fetchMore(self: pointer, parent: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QFileSystemModelVTable](fcQFileSystemModel_vdata(self))
  let self = QFileSystemModel(h: self)
  let slotval1 = gen_qabstractitemmodel_types.QModelIndex(h: parent, owned: false)
  vtbl[].fetchMore(self, slotval1)

proc QFileSystemModelrowCount*(self: gen_qfilesystemmodel_types.QFileSystemModel, parent: gen_qabstractitemmodel_types.QModelIndex): cint =
  fcQFileSystemModel_virtualbase_rowCount(self.h, parent.h)

proc cQFileSystemModel_vtable_callback_rowCount(self: pointer, parent: pointer): cint {.cdecl.} =
  let vtbl = cast[ptr QFileSystemModelVTable](fcQFileSystemModel_vdata(self))
  let self = QFileSystemModel(h: self)
  let slotval1 = gen_qabstractitemmodel_types.QModelIndex(h: parent, owned: false)
  var virtualReturn = vtbl[].rowCount(self, slotval1)
  virtualReturn

proc QFileSystemModelcolumnCount*(self: gen_qfilesystemmodel_types.QFileSystemModel, parent: gen_qabstractitemmodel_types.QModelIndex): cint =
  fcQFileSystemModel_virtualbase_columnCount(self.h, parent.h)

proc cQFileSystemModel_vtable_callback_columnCount(self: pointer, parent: pointer): cint {.cdecl.} =
  let vtbl = cast[ptr QFileSystemModelVTable](fcQFileSystemModel_vdata(self))
  let self = QFileSystemModel(h: self)
  let slotval1 = gen_qabstractitemmodel_types.QModelIndex(h: parent, owned: false)
  var virtualReturn = vtbl[].columnCount(self, slotval1)
  virtualReturn

proc QFileSystemModeldata*(self: gen_qfilesystemmodel_types.QFileSystemModel, index: gen_qabstractitemmodel_types.QModelIndex, role: cint): gen_qvariant_types.QVariant =
  gen_qvariant_types.QVariant(h: fcQFileSystemModel_virtualbase_data(self.h, index.h, role), owned: true)

proc cQFileSystemModel_vtable_callback_data(self: pointer, index: pointer, role: cint): pointer {.cdecl.} =
  let vtbl = cast[ptr QFileSystemModelVTable](fcQFileSystemModel_vdata(self))
  let self = QFileSystemModel(h: self)
  let slotval1 = gen_qabstractitemmodel_types.QModelIndex(h: index, owned: false)
  let slotval2 = role
  var virtualReturn = vtbl[].data(self, slotval1, slotval2)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc QFileSystemModelsetData*(self: gen_qfilesystemmodel_types.QFileSystemModel, index: gen_qabstractitemmodel_types.QModelIndex, value: gen_qvariant_types.QVariant, role: cint): bool =
  fcQFileSystemModel_virtualbase_setData(self.h, index.h, value.h, role)

proc cQFileSystemModel_vtable_callback_setData(self: pointer, index: pointer, value: pointer, role: cint): bool {.cdecl.} =
  let vtbl = cast[ptr QFileSystemModelVTable](fcQFileSystemModel_vdata(self))
  let self = QFileSystemModel(h: self)
  let slotval1 = gen_qabstractitemmodel_types.QModelIndex(h: index, owned: false)
  let slotval2 = gen_qvariant_types.QVariant(h: value, owned: false)
  let slotval3 = role
  var virtualReturn = vtbl[].setData(self, slotval1, slotval2, slotval3)
  virtualReturn

proc QFileSystemModelheaderData*(self: gen_qfilesystemmodel_types.QFileSystemModel, section: cint, orientation: cint, role: cint): gen_qvariant_types.QVariant =
  gen_qvariant_types.QVariant(h: fcQFileSystemModel_virtualbase_headerData(self.h, section, cint(orientation), role), owned: true)

proc cQFileSystemModel_vtable_callback_headerData(self: pointer, section: cint, orientation: cint, role: cint): pointer {.cdecl.} =
  let vtbl = cast[ptr QFileSystemModelVTable](fcQFileSystemModel_vdata(self))
  let self = QFileSystemModel(h: self)
  let slotval1 = section
  let slotval2 = cint(orientation)
  let slotval3 = role
  var virtualReturn = vtbl[].headerData(self, slotval1, slotval2, slotval3)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc QFileSystemModelflags*(self: gen_qfilesystemmodel_types.QFileSystemModel, index: gen_qabstractitemmodel_types.QModelIndex): cint =
  cint(fcQFileSystemModel_virtualbase_flags(self.h, index.h))

proc cQFileSystemModel_vtable_callback_flags(self: pointer, index: pointer): cint {.cdecl.} =
  let vtbl = cast[ptr QFileSystemModelVTable](fcQFileSystemModel_vdata(self))
  let self = QFileSystemModel(h: self)
  let slotval1 = gen_qabstractitemmodel_types.QModelIndex(h: index, owned: false)
  var virtualReturn = vtbl[].flags(self, slotval1)
  cint(virtualReturn)

proc QFileSystemModelsort*(self: gen_qfilesystemmodel_types.QFileSystemModel, column: cint, order: cint): void =
  fcQFileSystemModel_virtualbase_sort(self.h, column, cint(order))

proc cQFileSystemModel_vtable_callback_sort(self: pointer, column: cint, order: cint): void {.cdecl.} =
  let vtbl = cast[ptr QFileSystemModelVTable](fcQFileSystemModel_vdata(self))
  let self = QFileSystemModel(h: self)
  let slotval1 = column
  let slotval2 = cint(order)
  vtbl[].sort(self, slotval1, slotval2)

proc QFileSystemModelmimeTypes*(self: gen_qfilesystemmodel_types.QFileSystemModel): seq[string] =
  var v_ma = fcQFileSystemModel_virtualbase_mimeTypes(self.h)
  var vx_ret = newSeq[string](int(v_ma.len))
  let v_outCast = cast[ptr UncheckedArray[struct_miqt_string]](v_ma.data)
  for i in 0 ..< v_ma.len:
    let vx_lv_ms = v_outCast[i]
    let vx_lvx_ret = string.fromBytes(vx_lv_ms)
    c_free(vx_lv_ms.data)
    vx_ret[i] = vx_lvx_ret
  c_free(v_ma.data)
  vx_ret

proc cQFileSystemModel_vtable_callback_mimeTypes(self: pointer): struct_miqt_array {.cdecl.} =
  let vtbl = cast[ptr QFileSystemModelVTable](fcQFileSystemModel_vdata(self))
  let self = QFileSystemModel(h: self)
  var virtualReturn = vtbl[].mimeTypes(self)
  var virtualReturn_CArray = cast[ptr UncheckedArray[struct_miqt_string]](if len(virtualReturn) > 0: c_malloc(c_sizet(sizeof(struct_miqt_string) * len(virtualReturn))) else: nil)
  for i in 0..<len(virtualReturn):
    var virtualReturn_i_copy = cast[cstring](if len(virtualReturn[i]) > 0: c_malloc(csize_t(len(virtualReturn[i]))) else: nil)
    if len(virtualReturn[i]) > 0: copyMem(cast[pointer](virtualReturn_i_copy), addr virtualReturn[i][0], csize_t(len(virtualReturn[i])))
    virtualReturn_CArray[i] = struct_miqt_string(data: virtualReturn_i_copy, len: csize_t(len(virtualReturn[i])))

  struct_miqt_array(len: csize_t(len(virtualReturn)), data: if len(virtualReturn) == 0: nil else: addr(virtualReturn_CArray[0]))

proc QFileSystemModelmimeData*(self: gen_qfilesystemmodel_types.QFileSystemModel, indexes: openArray[gen_qabstractitemmodel_types.QModelIndex]): gen_qmimedata_types.QMimeData =
  var indexes_CArray = newSeq[pointer](len(indexes))
  for i in 0..<len(indexes):
    indexes_CArray[i] = indexes[i].h

  gen_qmimedata_types.QMimeData(h: fcQFileSystemModel_virtualbase_mimeData(self.h, struct_miqt_array(len: csize_t(len(indexes)), data: if len(indexes) == 0: nil else: addr(indexes_CArray[0]))), owned: false)

proc cQFileSystemModel_vtable_callback_mimeData(self: pointer, indexes: struct_miqt_array): pointer {.cdecl.} =
  let vtbl = cast[ptr QFileSystemModelVTable](fcQFileSystemModel_vdata(self))
  let self = QFileSystemModel(h: self)
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

proc QFileSystemModeldropMimeData*(self: gen_qfilesystemmodel_types.QFileSystemModel, data: gen_qmimedata_types.QMimeData, action: cint, row: cint, column: cint, parent: gen_qabstractitemmodel_types.QModelIndex): bool =
  fcQFileSystemModel_virtualbase_dropMimeData(self.h, data.h, cint(action), row, column, parent.h)

proc cQFileSystemModel_vtable_callback_dropMimeData(self: pointer, data: pointer, action: cint, row: cint, column: cint, parent: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QFileSystemModelVTable](fcQFileSystemModel_vdata(self))
  let self = QFileSystemModel(h: self)
  let slotval1 = gen_qmimedata_types.QMimeData(h: data, owned: false)
  let slotval2 = cint(action)
  let slotval3 = row
  let slotval4 = column
  let slotval5 = gen_qabstractitemmodel_types.QModelIndex(h: parent, owned: false)
  var virtualReturn = vtbl[].dropMimeData(self, slotval1, slotval2, slotval3, slotval4, slotval5)
  virtualReturn

proc QFileSystemModelsupportedDropActions*(self: gen_qfilesystemmodel_types.QFileSystemModel): cint =
  cint(fcQFileSystemModel_virtualbase_supportedDropActions(self.h))

proc cQFileSystemModel_vtable_callback_supportedDropActions(self: pointer): cint {.cdecl.} =
  let vtbl = cast[ptr QFileSystemModelVTable](fcQFileSystemModel_vdata(self))
  let self = QFileSystemModel(h: self)
  var virtualReturn = vtbl[].supportedDropActions(self)
  cint(virtualReturn)

proc QFileSystemModelroleNames*(self: gen_qfilesystemmodel_types.QFileSystemModel): Table[cint,seq[byte]] =
  var v_mm = fcQFileSystemModel_virtualbase_roleNames(self.h)
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

proc cQFileSystemModel_vtable_callback_roleNames(self: pointer): struct_miqt_map {.cdecl.} =
  let vtbl = cast[ptr QFileSystemModelVTable](fcQFileSystemModel_vdata(self))
  let self = QFileSystemModel(h: self)
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

proc QFileSystemModeltimerEvent*(self: gen_qfilesystemmodel_types.QFileSystemModel, event: gen_qcoreevent_types.QTimerEvent): void =
  fcQFileSystemModel_virtualbase_timerEvent(self.h, event.h)

proc cQFileSystemModel_vtable_callback_timerEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QFileSystemModelVTable](fcQFileSystemModel_vdata(self))
  let self = QFileSystemModel(h: self)
  let slotval1 = gen_qcoreevent_types.QTimerEvent(h: event, owned: false)
  vtbl[].timerEvent(self, slotval1)

proc QFileSystemModelevent*(self: gen_qfilesystemmodel_types.QFileSystemModel, event: gen_qcoreevent_types.QEvent): bool =
  fcQFileSystemModel_virtualbase_event(self.h, event.h)

proc cQFileSystemModel_vtable_callback_event(self: pointer, event: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QFileSystemModelVTable](fcQFileSystemModel_vdata(self))
  let self = QFileSystemModel(h: self)
  let slotval1 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  var virtualReturn = vtbl[].event(self, slotval1)
  virtualReturn

proc QFileSystemModelsetHeaderData*(self: gen_qfilesystemmodel_types.QFileSystemModel, section: cint, orientation: cint, value: gen_qvariant_types.QVariant, role: cint): bool =
  fcQFileSystemModel_virtualbase_setHeaderData(self.h, section, cint(orientation), value.h, role)

proc cQFileSystemModel_vtable_callback_setHeaderData(self: pointer, section: cint, orientation: cint, value: pointer, role: cint): bool {.cdecl.} =
  let vtbl = cast[ptr QFileSystemModelVTable](fcQFileSystemModel_vdata(self))
  let self = QFileSystemModel(h: self)
  let slotval1 = section
  let slotval2 = cint(orientation)
  let slotval3 = gen_qvariant_types.QVariant(h: value, owned: false)
  let slotval4 = role
  var virtualReturn = vtbl[].setHeaderData(self, slotval1, slotval2, slotval3, slotval4)
  virtualReturn

proc QFileSystemModelitemData*(self: gen_qfilesystemmodel_types.QFileSystemModel, index: gen_qabstractitemmodel_types.QModelIndex): Table[cint,gen_qvariant_types.QVariant] =
  var v_mm = fcQFileSystemModel_virtualbase_itemData(self.h, index.h)
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

proc cQFileSystemModel_vtable_callback_itemData(self: pointer, index: pointer): struct_miqt_map {.cdecl.} =
  let vtbl = cast[ptr QFileSystemModelVTable](fcQFileSystemModel_vdata(self))
  let self = QFileSystemModel(h: self)
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

proc QFileSystemModelsetItemData*(self: gen_qfilesystemmodel_types.QFileSystemModel, index: gen_qabstractitemmodel_types.QModelIndex, roles: Table[cint,gen_qvariant_types.QVariant]): bool =
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

  fcQFileSystemModel_virtualbase_setItemData(self.h, index.h, struct_miqt_map(len: csize_t(len(roles)),keys: if len(roles) == 0: nil else: addr(roles_Keys_CArray[0]), values: if len(roles) == 0: nil else: addr(roles_Values_CArray[0]),))

proc cQFileSystemModel_vtable_callback_setItemData(self: pointer, index: pointer, roles: struct_miqt_map): bool {.cdecl.} =
  let vtbl = cast[ptr QFileSystemModelVTable](fcQFileSystemModel_vdata(self))
  let self = QFileSystemModel(h: self)
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

proc QFileSystemModelclearItemData*(self: gen_qfilesystemmodel_types.QFileSystemModel, index: gen_qabstractitemmodel_types.QModelIndex): bool =
  fcQFileSystemModel_virtualbase_clearItemData(self.h, index.h)

proc cQFileSystemModel_vtable_callback_clearItemData(self: pointer, index: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QFileSystemModelVTable](fcQFileSystemModel_vdata(self))
  let self = QFileSystemModel(h: self)
  let slotval1 = gen_qabstractitemmodel_types.QModelIndex(h: index, owned: false)
  var virtualReturn = vtbl[].clearItemData(self, slotval1)
  virtualReturn

proc QFileSystemModelcanDropMimeData*(self: gen_qfilesystemmodel_types.QFileSystemModel, data: gen_qmimedata_types.QMimeData, action: cint, row: cint, column: cint, parent: gen_qabstractitemmodel_types.QModelIndex): bool =
  fcQFileSystemModel_virtualbase_canDropMimeData(self.h, data.h, cint(action), row, column, parent.h)

proc cQFileSystemModel_vtable_callback_canDropMimeData(self: pointer, data: pointer, action: cint, row: cint, column: cint, parent: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QFileSystemModelVTable](fcQFileSystemModel_vdata(self))
  let self = QFileSystemModel(h: self)
  let slotval1 = gen_qmimedata_types.QMimeData(h: data, owned: false)
  let slotval2 = cint(action)
  let slotval3 = row
  let slotval4 = column
  let slotval5 = gen_qabstractitemmodel_types.QModelIndex(h: parent, owned: false)
  var virtualReturn = vtbl[].canDropMimeData(self, slotval1, slotval2, slotval3, slotval4, slotval5)
  virtualReturn

proc QFileSystemModelsupportedDragActions*(self: gen_qfilesystemmodel_types.QFileSystemModel): cint =
  cint(fcQFileSystemModel_virtualbase_supportedDragActions(self.h))

proc cQFileSystemModel_vtable_callback_supportedDragActions(self: pointer): cint {.cdecl.} =
  let vtbl = cast[ptr QFileSystemModelVTable](fcQFileSystemModel_vdata(self))
  let self = QFileSystemModel(h: self)
  var virtualReturn = vtbl[].supportedDragActions(self)
  cint(virtualReturn)

proc QFileSystemModelinsertRows*(self: gen_qfilesystemmodel_types.QFileSystemModel, row: cint, count: cint, parent: gen_qabstractitemmodel_types.QModelIndex): bool =
  fcQFileSystemModel_virtualbase_insertRows(self.h, row, count, parent.h)

proc cQFileSystemModel_vtable_callback_insertRows(self: pointer, row: cint, count: cint, parent: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QFileSystemModelVTable](fcQFileSystemModel_vdata(self))
  let self = QFileSystemModel(h: self)
  let slotval1 = row
  let slotval2 = count
  let slotval3 = gen_qabstractitemmodel_types.QModelIndex(h: parent, owned: false)
  var virtualReturn = vtbl[].insertRows(self, slotval1, slotval2, slotval3)
  virtualReturn

proc QFileSystemModelinsertColumns*(self: gen_qfilesystemmodel_types.QFileSystemModel, column: cint, count: cint, parent: gen_qabstractitemmodel_types.QModelIndex): bool =
  fcQFileSystemModel_virtualbase_insertColumns(self.h, column, count, parent.h)

proc cQFileSystemModel_vtable_callback_insertColumns(self: pointer, column: cint, count: cint, parent: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QFileSystemModelVTable](fcQFileSystemModel_vdata(self))
  let self = QFileSystemModel(h: self)
  let slotval1 = column
  let slotval2 = count
  let slotval3 = gen_qabstractitemmodel_types.QModelIndex(h: parent, owned: false)
  var virtualReturn = vtbl[].insertColumns(self, slotval1, slotval2, slotval3)
  virtualReturn

proc QFileSystemModelremoveRows*(self: gen_qfilesystemmodel_types.QFileSystemModel, row: cint, count: cint, parent: gen_qabstractitemmodel_types.QModelIndex): bool =
  fcQFileSystemModel_virtualbase_removeRows(self.h, row, count, parent.h)

proc cQFileSystemModel_vtable_callback_removeRows(self: pointer, row: cint, count: cint, parent: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QFileSystemModelVTable](fcQFileSystemModel_vdata(self))
  let self = QFileSystemModel(h: self)
  let slotval1 = row
  let slotval2 = count
  let slotval3 = gen_qabstractitemmodel_types.QModelIndex(h: parent, owned: false)
  var virtualReturn = vtbl[].removeRows(self, slotval1, slotval2, slotval3)
  virtualReturn

proc QFileSystemModelremoveColumns*(self: gen_qfilesystemmodel_types.QFileSystemModel, column: cint, count: cint, parent: gen_qabstractitemmodel_types.QModelIndex): bool =
  fcQFileSystemModel_virtualbase_removeColumns(self.h, column, count, parent.h)

proc cQFileSystemModel_vtable_callback_removeColumns(self: pointer, column: cint, count: cint, parent: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QFileSystemModelVTable](fcQFileSystemModel_vdata(self))
  let self = QFileSystemModel(h: self)
  let slotval1 = column
  let slotval2 = count
  let slotval3 = gen_qabstractitemmodel_types.QModelIndex(h: parent, owned: false)
  var virtualReturn = vtbl[].removeColumns(self, slotval1, slotval2, slotval3)
  virtualReturn

proc QFileSystemModelmoveRows*(self: gen_qfilesystemmodel_types.QFileSystemModel, sourceParent: gen_qabstractitemmodel_types.QModelIndex, sourceRow: cint, count: cint, destinationParent: gen_qabstractitemmodel_types.QModelIndex, destinationChild: cint): bool =
  fcQFileSystemModel_virtualbase_moveRows(self.h, sourceParent.h, sourceRow, count, destinationParent.h, destinationChild)

proc cQFileSystemModel_vtable_callback_moveRows(self: pointer, sourceParent: pointer, sourceRow: cint, count: cint, destinationParent: pointer, destinationChild: cint): bool {.cdecl.} =
  let vtbl = cast[ptr QFileSystemModelVTable](fcQFileSystemModel_vdata(self))
  let self = QFileSystemModel(h: self)
  let slotval1 = gen_qabstractitemmodel_types.QModelIndex(h: sourceParent, owned: false)
  let slotval2 = sourceRow
  let slotval3 = count
  let slotval4 = gen_qabstractitemmodel_types.QModelIndex(h: destinationParent, owned: false)
  let slotval5 = destinationChild
  var virtualReturn = vtbl[].moveRows(self, slotval1, slotval2, slotval3, slotval4, slotval5)
  virtualReturn

proc QFileSystemModelmoveColumns*(self: gen_qfilesystemmodel_types.QFileSystemModel, sourceParent: gen_qabstractitemmodel_types.QModelIndex, sourceColumn: cint, count: cint, destinationParent: gen_qabstractitemmodel_types.QModelIndex, destinationChild: cint): bool =
  fcQFileSystemModel_virtualbase_moveColumns(self.h, sourceParent.h, sourceColumn, count, destinationParent.h, destinationChild)

proc cQFileSystemModel_vtable_callback_moveColumns(self: pointer, sourceParent: pointer, sourceColumn: cint, count: cint, destinationParent: pointer, destinationChild: cint): bool {.cdecl.} =
  let vtbl = cast[ptr QFileSystemModelVTable](fcQFileSystemModel_vdata(self))
  let self = QFileSystemModel(h: self)
  let slotval1 = gen_qabstractitemmodel_types.QModelIndex(h: sourceParent, owned: false)
  let slotval2 = sourceColumn
  let slotval3 = count
  let slotval4 = gen_qabstractitemmodel_types.QModelIndex(h: destinationParent, owned: false)
  let slotval5 = destinationChild
  var virtualReturn = vtbl[].moveColumns(self, slotval1, slotval2, slotval3, slotval4, slotval5)
  virtualReturn

proc QFileSystemModelbuddy*(self: gen_qfilesystemmodel_types.QFileSystemModel, index: gen_qabstractitemmodel_types.QModelIndex): gen_qabstractitemmodel_types.QModelIndex =
  gen_qabstractitemmodel_types.QModelIndex(h: fcQFileSystemModel_virtualbase_buddy(self.h, index.h), owned: true)

proc cQFileSystemModel_vtable_callback_buddy(self: pointer, index: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QFileSystemModelVTable](fcQFileSystemModel_vdata(self))
  let self = QFileSystemModel(h: self)
  let slotval1 = gen_qabstractitemmodel_types.QModelIndex(h: index, owned: false)
  var virtualReturn = vtbl[].buddy(self, slotval1)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc QFileSystemModelmatch*(self: gen_qfilesystemmodel_types.QFileSystemModel, start: gen_qabstractitemmodel_types.QModelIndex, role: cint, value: gen_qvariant_types.QVariant, hits: cint, flags: cint): seq[gen_qabstractitemmodel_types.QModelIndex] =
  var v_ma = fcQFileSystemModel_virtualbase_match(self.h, start.h, role, value.h, hits, cint(flags))
  var vx_ret = newSeq[gen_qabstractitemmodel_types.QModelIndex](int(v_ma.len))
  let v_outCast = cast[ptr UncheckedArray[pointer]](v_ma.data)
  for i in 0 ..< v_ma.len:
    vx_ret[i] = gen_qabstractitemmodel_types.QModelIndex(h: v_outCast[i], owned: true)
  c_free(v_ma.data)
  vx_ret

proc cQFileSystemModel_vtable_callback_match(self: pointer, start: pointer, role: cint, value: pointer, hits: cint, flags: cint): struct_miqt_array {.cdecl.} =
  let vtbl = cast[ptr QFileSystemModelVTable](fcQFileSystemModel_vdata(self))
  let self = QFileSystemModel(h: self)
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

proc QFileSystemModelspan*(self: gen_qfilesystemmodel_types.QFileSystemModel, index: gen_qabstractitemmodel_types.QModelIndex): gen_qsize_types.QSize =
  gen_qsize_types.QSize(h: fcQFileSystemModel_virtualbase_span(self.h, index.h), owned: true)

proc cQFileSystemModel_vtable_callback_span(self: pointer, index: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QFileSystemModelVTable](fcQFileSystemModel_vdata(self))
  let self = QFileSystemModel(h: self)
  let slotval1 = gen_qabstractitemmodel_types.QModelIndex(h: index, owned: false)
  var virtualReturn = vtbl[].span(self, slotval1)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc QFileSystemModelmultiData*(self: gen_qfilesystemmodel_types.QFileSystemModel, index: gen_qabstractitemmodel_types.QModelIndex, roleDataSpan: gen_qabstractitemmodel_types.QModelRoleDataSpan): void =
  fcQFileSystemModel_virtualbase_multiData(self.h, index.h, roleDataSpan.h)

proc cQFileSystemModel_vtable_callback_multiData(self: pointer, index: pointer, roleDataSpan: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QFileSystemModelVTable](fcQFileSystemModel_vdata(self))
  let self = QFileSystemModel(h: self)
  let slotval1 = gen_qabstractitemmodel_types.QModelIndex(h: index, owned: false)
  let slotval2 = gen_qabstractitemmodel_types.QModelRoleDataSpan(h: roleDataSpan, owned: true)
  vtbl[].multiData(self, slotval1, slotval2)

proc QFileSystemModelsubmit*(self: gen_qfilesystemmodel_types.QFileSystemModel): bool =
  fcQFileSystemModel_virtualbase_submit(self.h)

proc cQFileSystemModel_vtable_callback_submit(self: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QFileSystemModelVTable](fcQFileSystemModel_vdata(self))
  let self = QFileSystemModel(h: self)
  var virtualReturn = vtbl[].submit(self)
  virtualReturn

proc QFileSystemModelrevert*(self: gen_qfilesystemmodel_types.QFileSystemModel): void =
  fcQFileSystemModel_virtualbase_revert(self.h)

proc cQFileSystemModel_vtable_callback_revert(self: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QFileSystemModelVTable](fcQFileSystemModel_vdata(self))
  let self = QFileSystemModel(h: self)
  vtbl[].revert(self)

proc QFileSystemModelresetInternalData*(self: gen_qfilesystemmodel_types.QFileSystemModel): void =
  fcQFileSystemModel_virtualbase_resetInternalData(self.h)

proc cQFileSystemModel_vtable_callback_resetInternalData(self: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QFileSystemModelVTable](fcQFileSystemModel_vdata(self))
  let self = QFileSystemModel(h: self)
  vtbl[].resetInternalData(self)

proc QFileSystemModeleventFilter*(self: gen_qfilesystemmodel_types.QFileSystemModel, watched: gen_qobject_types.QObject, event: gen_qcoreevent_types.QEvent): bool =
  fcQFileSystemModel_virtualbase_eventFilter(self.h, watched.h, event.h)

proc cQFileSystemModel_vtable_callback_eventFilter(self: pointer, watched: pointer, event: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QFileSystemModelVTable](fcQFileSystemModel_vdata(self))
  let self = QFileSystemModel(h: self)
  let slotval1 = gen_qobject_types.QObject(h: watched, owned: false)
  let slotval2 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  var virtualReturn = vtbl[].eventFilter(self, slotval1, slotval2)
  virtualReturn

proc QFileSystemModelchildEvent*(self: gen_qfilesystemmodel_types.QFileSystemModel, event: gen_qcoreevent_types.QChildEvent): void =
  fcQFileSystemModel_virtualbase_childEvent(self.h, event.h)

proc cQFileSystemModel_vtable_callback_childEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QFileSystemModelVTable](fcQFileSystemModel_vdata(self))
  let self = QFileSystemModel(h: self)
  let slotval1 = gen_qcoreevent_types.QChildEvent(h: event, owned: false)
  vtbl[].childEvent(self, slotval1)

proc QFileSystemModelcustomEvent*(self: gen_qfilesystemmodel_types.QFileSystemModel, event: gen_qcoreevent_types.QEvent): void =
  fcQFileSystemModel_virtualbase_customEvent(self.h, event.h)

proc cQFileSystemModel_vtable_callback_customEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QFileSystemModelVTable](fcQFileSystemModel_vdata(self))
  let self = QFileSystemModel(h: self)
  let slotval1 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  vtbl[].customEvent(self, slotval1)

proc QFileSystemModelconnectNotify*(self: gen_qfilesystemmodel_types.QFileSystemModel, signal: gen_qmetaobject_types.QMetaMethod): void =
  fcQFileSystemModel_virtualbase_connectNotify(self.h, signal.h)

proc cQFileSystemModel_vtable_callback_connectNotify(self: pointer, signal: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QFileSystemModelVTable](fcQFileSystemModel_vdata(self))
  let self = QFileSystemModel(h: self)
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal, owned: false)
  vtbl[].connectNotify(self, slotval1)

proc QFileSystemModeldisconnectNotify*(self: gen_qfilesystemmodel_types.QFileSystemModel, signal: gen_qmetaobject_types.QMetaMethod): void =
  fcQFileSystemModel_virtualbase_disconnectNotify(self.h, signal.h)

proc cQFileSystemModel_vtable_callback_disconnectNotify(self: pointer, signal: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QFileSystemModelVTable](fcQFileSystemModel_vdata(self))
  let self = QFileSystemModel(h: self)
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal, owned: false)
  vtbl[].disconnectNotify(self, slotval1)

type VirtualQFileSystemModel* {.inheritable.} = ref object of QFileSystemModel
  vtbl*: cQFileSystemModelVTable
method metaObject*(self: VirtualQFileSystemModel): gen_qobjectdefs_types.QMetaObject {.base.} =
  QFileSystemModelmetaObject(self[])
proc cQFileSystemModel_method_callback_metaObject(self: pointer): pointer {.cdecl.} =
  let inst = cast[VirtualQFileSystemModel](fcQFileSystemModel_vdata(self))
  var virtualReturn = inst.metaObject()
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

method metacast*(self: VirtualQFileSystemModel, param1: cstring): pointer {.base.} =
  QFileSystemModelmetacast(self[], param1)
proc cQFileSystemModel_method_callback_metacast(self: pointer, param1: cstring): pointer {.cdecl.} =
  let inst = cast[VirtualQFileSystemModel](fcQFileSystemModel_vdata(self))
  let slotval1 = (param1)
  var virtualReturn = inst.metacast(slotval1)
  virtualReturn

method metacall*(self: VirtualQFileSystemModel, param1: cint, param2: cint, param3: pointer): cint {.base.} =
  QFileSystemModelmetacall(self[], param1, param2, param3)
proc cQFileSystemModel_method_callback_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.cdecl.} =
  let inst = cast[VirtualQFileSystemModel](fcQFileSystemModel_vdata(self))
  let slotval1 = cint(param1)
  let slotval2 = param2
  let slotval3 = param3
  var virtualReturn = inst.metacall(slotval1, slotval2, slotval3)
  virtualReturn

method index*(self: VirtualQFileSystemModel, row: cint, column: cint, parent: gen_qabstractitemmodel_types.QModelIndex): gen_qabstractitemmodel_types.QModelIndex {.base.} =
  QFileSystemModelindex(self[], row, column, parent)
proc cQFileSystemModel_method_callback_index(self: pointer, row: cint, column: cint, parent: pointer): pointer {.cdecl.} =
  let inst = cast[VirtualQFileSystemModel](fcQFileSystemModel_vdata(self))
  let slotval1 = row
  let slotval2 = column
  let slotval3 = gen_qabstractitemmodel_types.QModelIndex(h: parent, owned: false)
  var virtualReturn = inst.index(slotval1, slotval2, slotval3)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

method parent*(self: VirtualQFileSystemModel, child: gen_qabstractitemmodel_types.QModelIndex): gen_qabstractitemmodel_types.QModelIndex {.base.} =
  QFileSystemModelparent(self[], child)
proc cQFileSystemModel_method_callback_parent(self: pointer, child: pointer): pointer {.cdecl.} =
  let inst = cast[VirtualQFileSystemModel](fcQFileSystemModel_vdata(self))
  let slotval1 = gen_qabstractitemmodel_types.QModelIndex(h: child, owned: false)
  var virtualReturn = inst.parent(slotval1)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

method sibling*(self: VirtualQFileSystemModel, row: cint, column: cint, idx: gen_qabstractitemmodel_types.QModelIndex): gen_qabstractitemmodel_types.QModelIndex {.base.} =
  QFileSystemModelsibling(self[], row, column, idx)
proc cQFileSystemModel_method_callback_sibling(self: pointer, row: cint, column: cint, idx: pointer): pointer {.cdecl.} =
  let inst = cast[VirtualQFileSystemModel](fcQFileSystemModel_vdata(self))
  let slotval1 = row
  let slotval2 = column
  let slotval3 = gen_qabstractitemmodel_types.QModelIndex(h: idx, owned: false)
  var virtualReturn = inst.sibling(slotval1, slotval2, slotval3)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

method hasChildren*(self: VirtualQFileSystemModel, parent: gen_qabstractitemmodel_types.QModelIndex): bool {.base.} =
  QFileSystemModelhasChildren(self[], parent)
proc cQFileSystemModel_method_callback_hasChildren(self: pointer, parent: pointer): bool {.cdecl.} =
  let inst = cast[VirtualQFileSystemModel](fcQFileSystemModel_vdata(self))
  let slotval1 = gen_qabstractitemmodel_types.QModelIndex(h: parent, owned: false)
  var virtualReturn = inst.hasChildren(slotval1)
  virtualReturn

method canFetchMore*(self: VirtualQFileSystemModel, parent: gen_qabstractitemmodel_types.QModelIndex): bool {.base.} =
  QFileSystemModelcanFetchMore(self[], parent)
proc cQFileSystemModel_method_callback_canFetchMore(self: pointer, parent: pointer): bool {.cdecl.} =
  let inst = cast[VirtualQFileSystemModel](fcQFileSystemModel_vdata(self))
  let slotval1 = gen_qabstractitemmodel_types.QModelIndex(h: parent, owned: false)
  var virtualReturn = inst.canFetchMore(slotval1)
  virtualReturn

method fetchMore*(self: VirtualQFileSystemModel, parent: gen_qabstractitemmodel_types.QModelIndex): void {.base.} =
  QFileSystemModelfetchMore(self[], parent)
proc cQFileSystemModel_method_callback_fetchMore(self: pointer, parent: pointer): void {.cdecl.} =
  let inst = cast[VirtualQFileSystemModel](fcQFileSystemModel_vdata(self))
  let slotval1 = gen_qabstractitemmodel_types.QModelIndex(h: parent, owned: false)
  inst.fetchMore(slotval1)

method rowCount*(self: VirtualQFileSystemModel, parent: gen_qabstractitemmodel_types.QModelIndex): cint {.base.} =
  QFileSystemModelrowCount(self[], parent)
proc cQFileSystemModel_method_callback_rowCount(self: pointer, parent: pointer): cint {.cdecl.} =
  let inst = cast[VirtualQFileSystemModel](fcQFileSystemModel_vdata(self))
  let slotval1 = gen_qabstractitemmodel_types.QModelIndex(h: parent, owned: false)
  var virtualReturn = inst.rowCount(slotval1)
  virtualReturn

method columnCount*(self: VirtualQFileSystemModel, parent: gen_qabstractitemmodel_types.QModelIndex): cint {.base.} =
  QFileSystemModelcolumnCount(self[], parent)
proc cQFileSystemModel_method_callback_columnCount(self: pointer, parent: pointer): cint {.cdecl.} =
  let inst = cast[VirtualQFileSystemModel](fcQFileSystemModel_vdata(self))
  let slotval1 = gen_qabstractitemmodel_types.QModelIndex(h: parent, owned: false)
  var virtualReturn = inst.columnCount(slotval1)
  virtualReturn

method data*(self: VirtualQFileSystemModel, index: gen_qabstractitemmodel_types.QModelIndex, role: cint): gen_qvariant_types.QVariant {.base.} =
  QFileSystemModeldata(self[], index, role)
proc cQFileSystemModel_method_callback_data(self: pointer, index: pointer, role: cint): pointer {.cdecl.} =
  let inst = cast[VirtualQFileSystemModel](fcQFileSystemModel_vdata(self))
  let slotval1 = gen_qabstractitemmodel_types.QModelIndex(h: index, owned: false)
  let slotval2 = role
  var virtualReturn = inst.data(slotval1, slotval2)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

method setData*(self: VirtualQFileSystemModel, index: gen_qabstractitemmodel_types.QModelIndex, value: gen_qvariant_types.QVariant, role: cint): bool {.base.} =
  QFileSystemModelsetData(self[], index, value, role)
proc cQFileSystemModel_method_callback_setData(self: pointer, index: pointer, value: pointer, role: cint): bool {.cdecl.} =
  let inst = cast[VirtualQFileSystemModel](fcQFileSystemModel_vdata(self))
  let slotval1 = gen_qabstractitemmodel_types.QModelIndex(h: index, owned: false)
  let slotval2 = gen_qvariant_types.QVariant(h: value, owned: false)
  let slotval3 = role
  var virtualReturn = inst.setData(slotval1, slotval2, slotval3)
  virtualReturn

method headerData*(self: VirtualQFileSystemModel, section: cint, orientation: cint, role: cint): gen_qvariant_types.QVariant {.base.} =
  QFileSystemModelheaderData(self[], section, orientation, role)
proc cQFileSystemModel_method_callback_headerData(self: pointer, section: cint, orientation: cint, role: cint): pointer {.cdecl.} =
  let inst = cast[VirtualQFileSystemModel](fcQFileSystemModel_vdata(self))
  let slotval1 = section
  let slotval2 = cint(orientation)
  let slotval3 = role
  var virtualReturn = inst.headerData(slotval1, slotval2, slotval3)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

method flags*(self: VirtualQFileSystemModel, index: gen_qabstractitemmodel_types.QModelIndex): cint {.base.} =
  QFileSystemModelflags(self[], index)
proc cQFileSystemModel_method_callback_flags(self: pointer, index: pointer): cint {.cdecl.} =
  let inst = cast[VirtualQFileSystemModel](fcQFileSystemModel_vdata(self))
  let slotval1 = gen_qabstractitemmodel_types.QModelIndex(h: index, owned: false)
  var virtualReturn = inst.flags(slotval1)
  cint(virtualReturn)

method sort*(self: VirtualQFileSystemModel, column: cint, order: cint): void {.base.} =
  QFileSystemModelsort(self[], column, order)
proc cQFileSystemModel_method_callback_sort(self: pointer, column: cint, order: cint): void {.cdecl.} =
  let inst = cast[VirtualQFileSystemModel](fcQFileSystemModel_vdata(self))
  let slotval1 = column
  let slotval2 = cint(order)
  inst.sort(slotval1, slotval2)

method mimeTypes*(self: VirtualQFileSystemModel): seq[string] {.base.} =
  QFileSystemModelmimeTypes(self[])
proc cQFileSystemModel_method_callback_mimeTypes(self: pointer): struct_miqt_array {.cdecl.} =
  let inst = cast[VirtualQFileSystemModel](fcQFileSystemModel_vdata(self))
  var virtualReturn = inst.mimeTypes()
  var virtualReturn_CArray = cast[ptr UncheckedArray[struct_miqt_string]](if len(virtualReturn) > 0: c_malloc(c_sizet(sizeof(struct_miqt_string) * len(virtualReturn))) else: nil)
  for i in 0..<len(virtualReturn):
    var virtualReturn_i_copy = cast[cstring](if len(virtualReturn[i]) > 0: c_malloc(csize_t(len(virtualReturn[i]))) else: nil)
    if len(virtualReturn[i]) > 0: copyMem(cast[pointer](virtualReturn_i_copy), addr virtualReturn[i][0], csize_t(len(virtualReturn[i])))
    virtualReturn_CArray[i] = struct_miqt_string(data: virtualReturn_i_copy, len: csize_t(len(virtualReturn[i])))

  struct_miqt_array(len: csize_t(len(virtualReturn)), data: if len(virtualReturn) == 0: nil else: addr(virtualReturn_CArray[0]))

method mimeData*(self: VirtualQFileSystemModel, indexes: openArray[gen_qabstractitemmodel_types.QModelIndex]): gen_qmimedata_types.QMimeData {.base.} =
  QFileSystemModelmimeData(self[], indexes)
proc cQFileSystemModel_method_callback_mimeData(self: pointer, indexes: struct_miqt_array): pointer {.cdecl.} =
  let inst = cast[VirtualQFileSystemModel](fcQFileSystemModel_vdata(self))
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

method dropMimeData*(self: VirtualQFileSystemModel, data: gen_qmimedata_types.QMimeData, action: cint, row: cint, column: cint, parent: gen_qabstractitemmodel_types.QModelIndex): bool {.base.} =
  QFileSystemModeldropMimeData(self[], data, action, row, column, parent)
proc cQFileSystemModel_method_callback_dropMimeData(self: pointer, data: pointer, action: cint, row: cint, column: cint, parent: pointer): bool {.cdecl.} =
  let inst = cast[VirtualQFileSystemModel](fcQFileSystemModel_vdata(self))
  let slotval1 = gen_qmimedata_types.QMimeData(h: data, owned: false)
  let slotval2 = cint(action)
  let slotval3 = row
  let slotval4 = column
  let slotval5 = gen_qabstractitemmodel_types.QModelIndex(h: parent, owned: false)
  var virtualReturn = inst.dropMimeData(slotval1, slotval2, slotval3, slotval4, slotval5)
  virtualReturn

method supportedDropActions*(self: VirtualQFileSystemModel): cint {.base.} =
  QFileSystemModelsupportedDropActions(self[])
proc cQFileSystemModel_method_callback_supportedDropActions(self: pointer): cint {.cdecl.} =
  let inst = cast[VirtualQFileSystemModel](fcQFileSystemModel_vdata(self))
  var virtualReturn = inst.supportedDropActions()
  cint(virtualReturn)

method roleNames*(self: VirtualQFileSystemModel): Table[cint,seq[byte]] {.base.} =
  QFileSystemModelroleNames(self[])
proc cQFileSystemModel_method_callback_roleNames(self: pointer): struct_miqt_map {.cdecl.} =
  let inst = cast[VirtualQFileSystemModel](fcQFileSystemModel_vdata(self))
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

method timerEvent*(self: VirtualQFileSystemModel, event: gen_qcoreevent_types.QTimerEvent): void {.base.} =
  QFileSystemModeltimerEvent(self[], event)
proc cQFileSystemModel_method_callback_timerEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQFileSystemModel](fcQFileSystemModel_vdata(self))
  let slotval1 = gen_qcoreevent_types.QTimerEvent(h: event, owned: false)
  inst.timerEvent(slotval1)

method event*(self: VirtualQFileSystemModel, event: gen_qcoreevent_types.QEvent): bool {.base.} =
  QFileSystemModelevent(self[], event)
proc cQFileSystemModel_method_callback_event(self: pointer, event: pointer): bool {.cdecl.} =
  let inst = cast[VirtualQFileSystemModel](fcQFileSystemModel_vdata(self))
  let slotval1 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  var virtualReturn = inst.event(slotval1)
  virtualReturn

method setHeaderData*(self: VirtualQFileSystemModel, section: cint, orientation: cint, value: gen_qvariant_types.QVariant, role: cint): bool {.base.} =
  QFileSystemModelsetHeaderData(self[], section, orientation, value, role)
proc cQFileSystemModel_method_callback_setHeaderData(self: pointer, section: cint, orientation: cint, value: pointer, role: cint): bool {.cdecl.} =
  let inst = cast[VirtualQFileSystemModel](fcQFileSystemModel_vdata(self))
  let slotval1 = section
  let slotval2 = cint(orientation)
  let slotval3 = gen_qvariant_types.QVariant(h: value, owned: false)
  let slotval4 = role
  var virtualReturn = inst.setHeaderData(slotval1, slotval2, slotval3, slotval4)
  virtualReturn

method itemData*(self: VirtualQFileSystemModel, index: gen_qabstractitemmodel_types.QModelIndex): Table[cint,gen_qvariant_types.QVariant] {.base.} =
  QFileSystemModelitemData(self[], index)
proc cQFileSystemModel_method_callback_itemData(self: pointer, index: pointer): struct_miqt_map {.cdecl.} =
  let inst = cast[VirtualQFileSystemModel](fcQFileSystemModel_vdata(self))
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

method setItemData*(self: VirtualQFileSystemModel, index: gen_qabstractitemmodel_types.QModelIndex, roles: Table[cint,gen_qvariant_types.QVariant]): bool {.base.} =
  QFileSystemModelsetItemData(self[], index, roles)
proc cQFileSystemModel_method_callback_setItemData(self: pointer, index: pointer, roles: struct_miqt_map): bool {.cdecl.} =
  let inst = cast[VirtualQFileSystemModel](fcQFileSystemModel_vdata(self))
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

method clearItemData*(self: VirtualQFileSystemModel, index: gen_qabstractitemmodel_types.QModelIndex): bool {.base.} =
  QFileSystemModelclearItemData(self[], index)
proc cQFileSystemModel_method_callback_clearItemData(self: pointer, index: pointer): bool {.cdecl.} =
  let inst = cast[VirtualQFileSystemModel](fcQFileSystemModel_vdata(self))
  let slotval1 = gen_qabstractitemmodel_types.QModelIndex(h: index, owned: false)
  var virtualReturn = inst.clearItemData(slotval1)
  virtualReturn

method canDropMimeData*(self: VirtualQFileSystemModel, data: gen_qmimedata_types.QMimeData, action: cint, row: cint, column: cint, parent: gen_qabstractitemmodel_types.QModelIndex): bool {.base.} =
  QFileSystemModelcanDropMimeData(self[], data, action, row, column, parent)
proc cQFileSystemModel_method_callback_canDropMimeData(self: pointer, data: pointer, action: cint, row: cint, column: cint, parent: pointer): bool {.cdecl.} =
  let inst = cast[VirtualQFileSystemModel](fcQFileSystemModel_vdata(self))
  let slotval1 = gen_qmimedata_types.QMimeData(h: data, owned: false)
  let slotval2 = cint(action)
  let slotval3 = row
  let slotval4 = column
  let slotval5 = gen_qabstractitemmodel_types.QModelIndex(h: parent, owned: false)
  var virtualReturn = inst.canDropMimeData(slotval1, slotval2, slotval3, slotval4, slotval5)
  virtualReturn

method supportedDragActions*(self: VirtualQFileSystemModel): cint {.base.} =
  QFileSystemModelsupportedDragActions(self[])
proc cQFileSystemModel_method_callback_supportedDragActions(self: pointer): cint {.cdecl.} =
  let inst = cast[VirtualQFileSystemModel](fcQFileSystemModel_vdata(self))
  var virtualReturn = inst.supportedDragActions()
  cint(virtualReturn)

method insertRows*(self: VirtualQFileSystemModel, row: cint, count: cint, parent: gen_qabstractitemmodel_types.QModelIndex): bool {.base.} =
  QFileSystemModelinsertRows(self[], row, count, parent)
proc cQFileSystemModel_method_callback_insertRows(self: pointer, row: cint, count: cint, parent: pointer): bool {.cdecl.} =
  let inst = cast[VirtualQFileSystemModel](fcQFileSystemModel_vdata(self))
  let slotval1 = row
  let slotval2 = count
  let slotval3 = gen_qabstractitemmodel_types.QModelIndex(h: parent, owned: false)
  var virtualReturn = inst.insertRows(slotval1, slotval2, slotval3)
  virtualReturn

method insertColumns*(self: VirtualQFileSystemModel, column: cint, count: cint, parent: gen_qabstractitemmodel_types.QModelIndex): bool {.base.} =
  QFileSystemModelinsertColumns(self[], column, count, parent)
proc cQFileSystemModel_method_callback_insertColumns(self: pointer, column: cint, count: cint, parent: pointer): bool {.cdecl.} =
  let inst = cast[VirtualQFileSystemModel](fcQFileSystemModel_vdata(self))
  let slotval1 = column
  let slotval2 = count
  let slotval3 = gen_qabstractitemmodel_types.QModelIndex(h: parent, owned: false)
  var virtualReturn = inst.insertColumns(slotval1, slotval2, slotval3)
  virtualReturn

method removeRows*(self: VirtualQFileSystemModel, row: cint, count: cint, parent: gen_qabstractitemmodel_types.QModelIndex): bool {.base.} =
  QFileSystemModelremoveRows(self[], row, count, parent)
proc cQFileSystemModel_method_callback_removeRows(self: pointer, row: cint, count: cint, parent: pointer): bool {.cdecl.} =
  let inst = cast[VirtualQFileSystemModel](fcQFileSystemModel_vdata(self))
  let slotval1 = row
  let slotval2 = count
  let slotval3 = gen_qabstractitemmodel_types.QModelIndex(h: parent, owned: false)
  var virtualReturn = inst.removeRows(slotval1, slotval2, slotval3)
  virtualReturn

method removeColumns*(self: VirtualQFileSystemModel, column: cint, count: cint, parent: gen_qabstractitemmodel_types.QModelIndex): bool {.base.} =
  QFileSystemModelremoveColumns(self[], column, count, parent)
proc cQFileSystemModel_method_callback_removeColumns(self: pointer, column: cint, count: cint, parent: pointer): bool {.cdecl.} =
  let inst = cast[VirtualQFileSystemModel](fcQFileSystemModel_vdata(self))
  let slotval1 = column
  let slotval2 = count
  let slotval3 = gen_qabstractitemmodel_types.QModelIndex(h: parent, owned: false)
  var virtualReturn = inst.removeColumns(slotval1, slotval2, slotval3)
  virtualReturn

method moveRows*(self: VirtualQFileSystemModel, sourceParent: gen_qabstractitemmodel_types.QModelIndex, sourceRow: cint, count: cint, destinationParent: gen_qabstractitemmodel_types.QModelIndex, destinationChild: cint): bool {.base.} =
  QFileSystemModelmoveRows(self[], sourceParent, sourceRow, count, destinationParent, destinationChild)
proc cQFileSystemModel_method_callback_moveRows(self: pointer, sourceParent: pointer, sourceRow: cint, count: cint, destinationParent: pointer, destinationChild: cint): bool {.cdecl.} =
  let inst = cast[VirtualQFileSystemModel](fcQFileSystemModel_vdata(self))
  let slotval1 = gen_qabstractitemmodel_types.QModelIndex(h: sourceParent, owned: false)
  let slotval2 = sourceRow
  let slotval3 = count
  let slotval4 = gen_qabstractitemmodel_types.QModelIndex(h: destinationParent, owned: false)
  let slotval5 = destinationChild
  var virtualReturn = inst.moveRows(slotval1, slotval2, slotval3, slotval4, slotval5)
  virtualReturn

method moveColumns*(self: VirtualQFileSystemModel, sourceParent: gen_qabstractitemmodel_types.QModelIndex, sourceColumn: cint, count: cint, destinationParent: gen_qabstractitemmodel_types.QModelIndex, destinationChild: cint): bool {.base.} =
  QFileSystemModelmoveColumns(self[], sourceParent, sourceColumn, count, destinationParent, destinationChild)
proc cQFileSystemModel_method_callback_moveColumns(self: pointer, sourceParent: pointer, sourceColumn: cint, count: cint, destinationParent: pointer, destinationChild: cint): bool {.cdecl.} =
  let inst = cast[VirtualQFileSystemModel](fcQFileSystemModel_vdata(self))
  let slotval1 = gen_qabstractitemmodel_types.QModelIndex(h: sourceParent, owned: false)
  let slotval2 = sourceColumn
  let slotval3 = count
  let slotval4 = gen_qabstractitemmodel_types.QModelIndex(h: destinationParent, owned: false)
  let slotval5 = destinationChild
  var virtualReturn = inst.moveColumns(slotval1, slotval2, slotval3, slotval4, slotval5)
  virtualReturn

method buddy*(self: VirtualQFileSystemModel, index: gen_qabstractitemmodel_types.QModelIndex): gen_qabstractitemmodel_types.QModelIndex {.base.} =
  QFileSystemModelbuddy(self[], index)
proc cQFileSystemModel_method_callback_buddy(self: pointer, index: pointer): pointer {.cdecl.} =
  let inst = cast[VirtualQFileSystemModel](fcQFileSystemModel_vdata(self))
  let slotval1 = gen_qabstractitemmodel_types.QModelIndex(h: index, owned: false)
  var virtualReturn = inst.buddy(slotval1)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

method match*(self: VirtualQFileSystemModel, start: gen_qabstractitemmodel_types.QModelIndex, role: cint, value: gen_qvariant_types.QVariant, hits: cint, flags: cint): seq[gen_qabstractitemmodel_types.QModelIndex] {.base.} =
  QFileSystemModelmatch(self[], start, role, value, hits, flags)
proc cQFileSystemModel_method_callback_match(self: pointer, start: pointer, role: cint, value: pointer, hits: cint, flags: cint): struct_miqt_array {.cdecl.} =
  let inst = cast[VirtualQFileSystemModel](fcQFileSystemModel_vdata(self))
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

method span*(self: VirtualQFileSystemModel, index: gen_qabstractitemmodel_types.QModelIndex): gen_qsize_types.QSize {.base.} =
  QFileSystemModelspan(self[], index)
proc cQFileSystemModel_method_callback_span(self: pointer, index: pointer): pointer {.cdecl.} =
  let inst = cast[VirtualQFileSystemModel](fcQFileSystemModel_vdata(self))
  let slotval1 = gen_qabstractitemmodel_types.QModelIndex(h: index, owned: false)
  var virtualReturn = inst.span(slotval1)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

method multiData*(self: VirtualQFileSystemModel, index: gen_qabstractitemmodel_types.QModelIndex, roleDataSpan: gen_qabstractitemmodel_types.QModelRoleDataSpan): void {.base.} =
  QFileSystemModelmultiData(self[], index, roleDataSpan)
proc cQFileSystemModel_method_callback_multiData(self: pointer, index: pointer, roleDataSpan: pointer): void {.cdecl.} =
  let inst = cast[VirtualQFileSystemModel](fcQFileSystemModel_vdata(self))
  let slotval1 = gen_qabstractitemmodel_types.QModelIndex(h: index, owned: false)
  let slotval2 = gen_qabstractitemmodel_types.QModelRoleDataSpan(h: roleDataSpan, owned: true)
  inst.multiData(slotval1, slotval2)

method submit*(self: VirtualQFileSystemModel): bool {.base.} =
  QFileSystemModelsubmit(self[])
proc cQFileSystemModel_method_callback_submit(self: pointer): bool {.cdecl.} =
  let inst = cast[VirtualQFileSystemModel](fcQFileSystemModel_vdata(self))
  var virtualReturn = inst.submit()
  virtualReturn

method revert*(self: VirtualQFileSystemModel): void {.base.} =
  QFileSystemModelrevert(self[])
proc cQFileSystemModel_method_callback_revert(self: pointer): void {.cdecl.} =
  let inst = cast[VirtualQFileSystemModel](fcQFileSystemModel_vdata(self))
  inst.revert()

method resetInternalData*(self: VirtualQFileSystemModel): void {.base.} =
  QFileSystemModelresetInternalData(self[])
proc cQFileSystemModel_method_callback_resetInternalData(self: pointer): void {.cdecl.} =
  let inst = cast[VirtualQFileSystemModel](fcQFileSystemModel_vdata(self))
  inst.resetInternalData()

method eventFilter*(self: VirtualQFileSystemModel, watched: gen_qobject_types.QObject, event: gen_qcoreevent_types.QEvent): bool {.base.} =
  QFileSystemModeleventFilter(self[], watched, event)
proc cQFileSystemModel_method_callback_eventFilter(self: pointer, watched: pointer, event: pointer): bool {.cdecl.} =
  let inst = cast[VirtualQFileSystemModel](fcQFileSystemModel_vdata(self))
  let slotval1 = gen_qobject_types.QObject(h: watched, owned: false)
  let slotval2 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  var virtualReturn = inst.eventFilter(slotval1, slotval2)
  virtualReturn

method childEvent*(self: VirtualQFileSystemModel, event: gen_qcoreevent_types.QChildEvent): void {.base.} =
  QFileSystemModelchildEvent(self[], event)
proc cQFileSystemModel_method_callback_childEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQFileSystemModel](fcQFileSystemModel_vdata(self))
  let slotval1 = gen_qcoreevent_types.QChildEvent(h: event, owned: false)
  inst.childEvent(slotval1)

method customEvent*(self: VirtualQFileSystemModel, event: gen_qcoreevent_types.QEvent): void {.base.} =
  QFileSystemModelcustomEvent(self[], event)
proc cQFileSystemModel_method_callback_customEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQFileSystemModel](fcQFileSystemModel_vdata(self))
  let slotval1 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  inst.customEvent(slotval1)

method connectNotify*(self: VirtualQFileSystemModel, signal: gen_qmetaobject_types.QMetaMethod): void {.base.} =
  QFileSystemModelconnectNotify(self[], signal)
proc cQFileSystemModel_method_callback_connectNotify(self: pointer, signal: pointer): void {.cdecl.} =
  let inst = cast[VirtualQFileSystemModel](fcQFileSystemModel_vdata(self))
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal, owned: false)
  inst.connectNotify(slotval1)

method disconnectNotify*(self: VirtualQFileSystemModel, signal: gen_qmetaobject_types.QMetaMethod): void {.base.} =
  QFileSystemModeldisconnectNotify(self[], signal)
proc cQFileSystemModel_method_callback_disconnectNotify(self: pointer, signal: pointer): void {.cdecl.} =
  let inst = cast[VirtualQFileSystemModel](fcQFileSystemModel_vdata(self))
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal, owned: false)
  inst.disconnectNotify(slotval1)

proc createIndex*(self: gen_qfilesystemmodel_types.QFileSystemModel, row: cint, column: cint): gen_qabstractitemmodel_types.QModelIndex =
  gen_qabstractitemmodel_types.QModelIndex(h: fcQFileSystemModel_protectedbase_createIndex(self.h, row, column), owned: true)

proc encodeData*(self: gen_qfilesystemmodel_types.QFileSystemModel, indexes: openArray[gen_qabstractitemmodel_types.QModelIndex], stream: gen_qdatastream_types.QDataStream): void =
  var indexes_CArray = newSeq[pointer](len(indexes))
  for i in 0..<len(indexes):
    indexes_CArray[i] = indexes[i].h

  fcQFileSystemModel_protectedbase_encodeData(self.h, struct_miqt_array(len: csize_t(len(indexes)), data: if len(indexes) == 0: nil else: addr(indexes_CArray[0])), stream.h)

proc decodeData*(self: gen_qfilesystemmodel_types.QFileSystemModel, row: cint, column: cint, parent: gen_qabstractitemmodel_types.QModelIndex, stream: gen_qdatastream_types.QDataStream): bool =
  fcQFileSystemModel_protectedbase_decodeData(self.h, row, column, parent.h, stream.h)

proc beginInsertRows*(self: gen_qfilesystemmodel_types.QFileSystemModel, parent: gen_qabstractitemmodel_types.QModelIndex, first: cint, last: cint): void =
  fcQFileSystemModel_protectedbase_beginInsertRows(self.h, parent.h, first, last)

proc endInsertRows*(self: gen_qfilesystemmodel_types.QFileSystemModel): void =
  fcQFileSystemModel_protectedbase_endInsertRows(self.h)

proc beginRemoveRows*(self: gen_qfilesystemmodel_types.QFileSystemModel, parent: gen_qabstractitemmodel_types.QModelIndex, first: cint, last: cint): void =
  fcQFileSystemModel_protectedbase_beginRemoveRows(self.h, parent.h, first, last)

proc endRemoveRows*(self: gen_qfilesystemmodel_types.QFileSystemModel): void =
  fcQFileSystemModel_protectedbase_endRemoveRows(self.h)

proc beginMoveRows*(self: gen_qfilesystemmodel_types.QFileSystemModel, sourceParent: gen_qabstractitemmodel_types.QModelIndex, sourceFirst: cint, sourceLast: cint, destinationParent: gen_qabstractitemmodel_types.QModelIndex, destinationRow: cint): bool =
  fcQFileSystemModel_protectedbase_beginMoveRows(self.h, sourceParent.h, sourceFirst, sourceLast, destinationParent.h, destinationRow)

proc endMoveRows*(self: gen_qfilesystemmodel_types.QFileSystemModel): void =
  fcQFileSystemModel_protectedbase_endMoveRows(self.h)

proc beginInsertColumns*(self: gen_qfilesystemmodel_types.QFileSystemModel, parent: gen_qabstractitemmodel_types.QModelIndex, first: cint, last: cint): void =
  fcQFileSystemModel_protectedbase_beginInsertColumns(self.h, parent.h, first, last)

proc endInsertColumns*(self: gen_qfilesystemmodel_types.QFileSystemModel): void =
  fcQFileSystemModel_protectedbase_endInsertColumns(self.h)

proc beginRemoveColumns*(self: gen_qfilesystemmodel_types.QFileSystemModel, parent: gen_qabstractitemmodel_types.QModelIndex, first: cint, last: cint): void =
  fcQFileSystemModel_protectedbase_beginRemoveColumns(self.h, parent.h, first, last)

proc endRemoveColumns*(self: gen_qfilesystemmodel_types.QFileSystemModel): void =
  fcQFileSystemModel_protectedbase_endRemoveColumns(self.h)

proc beginMoveColumns*(self: gen_qfilesystemmodel_types.QFileSystemModel, sourceParent: gen_qabstractitemmodel_types.QModelIndex, sourceFirst: cint, sourceLast: cint, destinationParent: gen_qabstractitemmodel_types.QModelIndex, destinationColumn: cint): bool =
  fcQFileSystemModel_protectedbase_beginMoveColumns(self.h, sourceParent.h, sourceFirst, sourceLast, destinationParent.h, destinationColumn)

proc endMoveColumns*(self: gen_qfilesystemmodel_types.QFileSystemModel): void =
  fcQFileSystemModel_protectedbase_endMoveColumns(self.h)

proc beginResetModel*(self: gen_qfilesystemmodel_types.QFileSystemModel): void =
  fcQFileSystemModel_protectedbase_beginResetModel(self.h)

proc endResetModel*(self: gen_qfilesystemmodel_types.QFileSystemModel): void =
  fcQFileSystemModel_protectedbase_endResetModel(self.h)

proc changePersistentIndex*(self: gen_qfilesystemmodel_types.QFileSystemModel, fromVal: gen_qabstractitemmodel_types.QModelIndex, to: gen_qabstractitemmodel_types.QModelIndex): void =
  fcQFileSystemModel_protectedbase_changePersistentIndex(self.h, fromVal.h, to.h)

proc changePersistentIndexList*(self: gen_qfilesystemmodel_types.QFileSystemModel, fromVal: openArray[gen_qabstractitemmodel_types.QModelIndex], to: openArray[gen_qabstractitemmodel_types.QModelIndex]): void =
  var fromVal_CArray = newSeq[pointer](len(fromVal))
  for i in 0..<len(fromVal):
    fromVal_CArray[i] = fromVal[i].h

  var to_CArray = newSeq[pointer](len(to))
  for i in 0..<len(to):
    to_CArray[i] = to[i].h

  fcQFileSystemModel_protectedbase_changePersistentIndexList(self.h, struct_miqt_array(len: csize_t(len(fromVal)), data: if len(fromVal) == 0: nil else: addr(fromVal_CArray[0])), struct_miqt_array(len: csize_t(len(to)), data: if len(to) == 0: nil else: addr(to_CArray[0])))

proc persistentIndexList*(self: gen_qfilesystemmodel_types.QFileSystemModel): seq[gen_qabstractitemmodel_types.QModelIndex] =
  var v_ma = fcQFileSystemModel_protectedbase_persistentIndexList(self.h)
  var vx_ret = newSeq[gen_qabstractitemmodel_types.QModelIndex](int(v_ma.len))
  let v_outCast = cast[ptr UncheckedArray[pointer]](v_ma.data)
  for i in 0 ..< v_ma.len:
    vx_ret[i] = gen_qabstractitemmodel_types.QModelIndex(h: v_outCast[i], owned: true)
  c_free(v_ma.data)
  vx_ret

proc sender*(self: gen_qfilesystemmodel_types.QFileSystemModel): gen_qobject_types.QObject =
  gen_qobject_types.QObject(h: fcQFileSystemModel_protectedbase_sender(self.h), owned: false)

proc senderSignalIndex*(self: gen_qfilesystemmodel_types.QFileSystemModel): cint =
  fcQFileSystemModel_protectedbase_senderSignalIndex(self.h)

proc receivers*(self: gen_qfilesystemmodel_types.QFileSystemModel, signal: cstring): cint =
  fcQFileSystemModel_protectedbase_receivers(self.h, signal)

proc isSignalConnected*(self: gen_qfilesystemmodel_types.QFileSystemModel, signal: gen_qmetaobject_types.QMetaMethod): bool =
  fcQFileSystemModel_protectedbase_isSignalConnected(self.h, signal.h)

proc create*(T: type gen_qfilesystemmodel_types.QFileSystemModel,
    vtbl: ref QFileSystemModelVTable = nil): gen_qfilesystemmodel_types.QFileSystemModel =
  let vtbl = if vtbl == nil: new QFileSystemModelVTable else: vtbl
  GC_ref(vtbl)
  vtbl[].vtbl.destructor = proc(self: pointer) {.cdecl.} =
    let vtbl = cast[ref QFileSystemModelVTable](fcQFileSystemModel_vdata(self))
    GC_unref(vtbl)
  if not isNil(vtbl[].metaObject):
    vtbl[].vtbl.metaObject = cQFileSystemModel_vtable_callback_metaObject
  if not isNil(vtbl[].metacast):
    vtbl[].vtbl.metacast = cQFileSystemModel_vtable_callback_metacast
  if not isNil(vtbl[].metacall):
    vtbl[].vtbl.metacall = cQFileSystemModel_vtable_callback_metacall
  if not isNil(vtbl[].index):
    vtbl[].vtbl.index = cQFileSystemModel_vtable_callback_index
  if not isNil(vtbl[].parent):
    vtbl[].vtbl.parent = cQFileSystemModel_vtable_callback_parent
  if not isNil(vtbl[].sibling):
    vtbl[].vtbl.sibling = cQFileSystemModel_vtable_callback_sibling
  if not isNil(vtbl[].hasChildren):
    vtbl[].vtbl.hasChildren = cQFileSystemModel_vtable_callback_hasChildren
  if not isNil(vtbl[].canFetchMore):
    vtbl[].vtbl.canFetchMore = cQFileSystemModel_vtable_callback_canFetchMore
  if not isNil(vtbl[].fetchMore):
    vtbl[].vtbl.fetchMore = cQFileSystemModel_vtable_callback_fetchMore
  if not isNil(vtbl[].rowCount):
    vtbl[].vtbl.rowCount = cQFileSystemModel_vtable_callback_rowCount
  if not isNil(vtbl[].columnCount):
    vtbl[].vtbl.columnCount = cQFileSystemModel_vtable_callback_columnCount
  if not isNil(vtbl[].data):
    vtbl[].vtbl.data = cQFileSystemModel_vtable_callback_data
  if not isNil(vtbl[].setData):
    vtbl[].vtbl.setData = cQFileSystemModel_vtable_callback_setData
  if not isNil(vtbl[].headerData):
    vtbl[].vtbl.headerData = cQFileSystemModel_vtable_callback_headerData
  if not isNil(vtbl[].flags):
    vtbl[].vtbl.flags = cQFileSystemModel_vtable_callback_flags
  if not isNil(vtbl[].sort):
    vtbl[].vtbl.sort = cQFileSystemModel_vtable_callback_sort
  if not isNil(vtbl[].mimeTypes):
    vtbl[].vtbl.mimeTypes = cQFileSystemModel_vtable_callback_mimeTypes
  if not isNil(vtbl[].mimeData):
    vtbl[].vtbl.mimeData = cQFileSystemModel_vtable_callback_mimeData
  if not isNil(vtbl[].dropMimeData):
    vtbl[].vtbl.dropMimeData = cQFileSystemModel_vtable_callback_dropMimeData
  if not isNil(vtbl[].supportedDropActions):
    vtbl[].vtbl.supportedDropActions = cQFileSystemModel_vtable_callback_supportedDropActions
  if not isNil(vtbl[].roleNames):
    vtbl[].vtbl.roleNames = cQFileSystemModel_vtable_callback_roleNames
  if not isNil(vtbl[].timerEvent):
    vtbl[].vtbl.timerEvent = cQFileSystemModel_vtable_callback_timerEvent
  if not isNil(vtbl[].event):
    vtbl[].vtbl.event = cQFileSystemModel_vtable_callback_event
  if not isNil(vtbl[].setHeaderData):
    vtbl[].vtbl.setHeaderData = cQFileSystemModel_vtable_callback_setHeaderData
  if not isNil(vtbl[].itemData):
    vtbl[].vtbl.itemData = cQFileSystemModel_vtable_callback_itemData
  if not isNil(vtbl[].setItemData):
    vtbl[].vtbl.setItemData = cQFileSystemModel_vtable_callback_setItemData
  if not isNil(vtbl[].clearItemData):
    vtbl[].vtbl.clearItemData = cQFileSystemModel_vtable_callback_clearItemData
  if not isNil(vtbl[].canDropMimeData):
    vtbl[].vtbl.canDropMimeData = cQFileSystemModel_vtable_callback_canDropMimeData
  if not isNil(vtbl[].supportedDragActions):
    vtbl[].vtbl.supportedDragActions = cQFileSystemModel_vtable_callback_supportedDragActions
  if not isNil(vtbl[].insertRows):
    vtbl[].vtbl.insertRows = cQFileSystemModel_vtable_callback_insertRows
  if not isNil(vtbl[].insertColumns):
    vtbl[].vtbl.insertColumns = cQFileSystemModel_vtable_callback_insertColumns
  if not isNil(vtbl[].removeRows):
    vtbl[].vtbl.removeRows = cQFileSystemModel_vtable_callback_removeRows
  if not isNil(vtbl[].removeColumns):
    vtbl[].vtbl.removeColumns = cQFileSystemModel_vtable_callback_removeColumns
  if not isNil(vtbl[].moveRows):
    vtbl[].vtbl.moveRows = cQFileSystemModel_vtable_callback_moveRows
  if not isNil(vtbl[].moveColumns):
    vtbl[].vtbl.moveColumns = cQFileSystemModel_vtable_callback_moveColumns
  if not isNil(vtbl[].buddy):
    vtbl[].vtbl.buddy = cQFileSystemModel_vtable_callback_buddy
  if not isNil(vtbl[].match):
    vtbl[].vtbl.match = cQFileSystemModel_vtable_callback_match
  if not isNil(vtbl[].span):
    vtbl[].vtbl.span = cQFileSystemModel_vtable_callback_span
  if not isNil(vtbl[].multiData):
    vtbl[].vtbl.multiData = cQFileSystemModel_vtable_callback_multiData
  if not isNil(vtbl[].submit):
    vtbl[].vtbl.submit = cQFileSystemModel_vtable_callback_submit
  if not isNil(vtbl[].revert):
    vtbl[].vtbl.revert = cQFileSystemModel_vtable_callback_revert
  if not isNil(vtbl[].resetInternalData):
    vtbl[].vtbl.resetInternalData = cQFileSystemModel_vtable_callback_resetInternalData
  if not isNil(vtbl[].eventFilter):
    vtbl[].vtbl.eventFilter = cQFileSystemModel_vtable_callback_eventFilter
  if not isNil(vtbl[].childEvent):
    vtbl[].vtbl.childEvent = cQFileSystemModel_vtable_callback_childEvent
  if not isNil(vtbl[].customEvent):
    vtbl[].vtbl.customEvent = cQFileSystemModel_vtable_callback_customEvent
  if not isNil(vtbl[].connectNotify):
    vtbl[].vtbl.connectNotify = cQFileSystemModel_vtable_callback_connectNotify
  if not isNil(vtbl[].disconnectNotify):
    vtbl[].vtbl.disconnectNotify = cQFileSystemModel_vtable_callback_disconnectNotify
  gen_qfilesystemmodel_types.QFileSystemModel(h: fcQFileSystemModel_new(addr(vtbl[].vtbl), addr(vtbl[])), owned: true)

proc create*(T: type gen_qfilesystemmodel_types.QFileSystemModel,
    parent: gen_qobject_types.QObject,
    vtbl: ref QFileSystemModelVTable = nil): gen_qfilesystemmodel_types.QFileSystemModel =
  let vtbl = if vtbl == nil: new QFileSystemModelVTable else: vtbl
  GC_ref(vtbl)
  vtbl[].vtbl.destructor = proc(self: pointer) {.cdecl.} =
    let vtbl = cast[ref QFileSystemModelVTable](fcQFileSystemModel_vdata(self))
    GC_unref(vtbl)
  if not isNil(vtbl[].metaObject):
    vtbl[].vtbl.metaObject = cQFileSystemModel_vtable_callback_metaObject
  if not isNil(vtbl[].metacast):
    vtbl[].vtbl.metacast = cQFileSystemModel_vtable_callback_metacast
  if not isNil(vtbl[].metacall):
    vtbl[].vtbl.metacall = cQFileSystemModel_vtable_callback_metacall
  if not isNil(vtbl[].index):
    vtbl[].vtbl.index = cQFileSystemModel_vtable_callback_index
  if not isNil(vtbl[].parent):
    vtbl[].vtbl.parent = cQFileSystemModel_vtable_callback_parent
  if not isNil(vtbl[].sibling):
    vtbl[].vtbl.sibling = cQFileSystemModel_vtable_callback_sibling
  if not isNil(vtbl[].hasChildren):
    vtbl[].vtbl.hasChildren = cQFileSystemModel_vtable_callback_hasChildren
  if not isNil(vtbl[].canFetchMore):
    vtbl[].vtbl.canFetchMore = cQFileSystemModel_vtable_callback_canFetchMore
  if not isNil(vtbl[].fetchMore):
    vtbl[].vtbl.fetchMore = cQFileSystemModel_vtable_callback_fetchMore
  if not isNil(vtbl[].rowCount):
    vtbl[].vtbl.rowCount = cQFileSystemModel_vtable_callback_rowCount
  if not isNil(vtbl[].columnCount):
    vtbl[].vtbl.columnCount = cQFileSystemModel_vtable_callback_columnCount
  if not isNil(vtbl[].data):
    vtbl[].vtbl.data = cQFileSystemModel_vtable_callback_data
  if not isNil(vtbl[].setData):
    vtbl[].vtbl.setData = cQFileSystemModel_vtable_callback_setData
  if not isNil(vtbl[].headerData):
    vtbl[].vtbl.headerData = cQFileSystemModel_vtable_callback_headerData
  if not isNil(vtbl[].flags):
    vtbl[].vtbl.flags = cQFileSystemModel_vtable_callback_flags
  if not isNil(vtbl[].sort):
    vtbl[].vtbl.sort = cQFileSystemModel_vtable_callback_sort
  if not isNil(vtbl[].mimeTypes):
    vtbl[].vtbl.mimeTypes = cQFileSystemModel_vtable_callback_mimeTypes
  if not isNil(vtbl[].mimeData):
    vtbl[].vtbl.mimeData = cQFileSystemModel_vtable_callback_mimeData
  if not isNil(vtbl[].dropMimeData):
    vtbl[].vtbl.dropMimeData = cQFileSystemModel_vtable_callback_dropMimeData
  if not isNil(vtbl[].supportedDropActions):
    vtbl[].vtbl.supportedDropActions = cQFileSystemModel_vtable_callback_supportedDropActions
  if not isNil(vtbl[].roleNames):
    vtbl[].vtbl.roleNames = cQFileSystemModel_vtable_callback_roleNames
  if not isNil(vtbl[].timerEvent):
    vtbl[].vtbl.timerEvent = cQFileSystemModel_vtable_callback_timerEvent
  if not isNil(vtbl[].event):
    vtbl[].vtbl.event = cQFileSystemModel_vtable_callback_event
  if not isNil(vtbl[].setHeaderData):
    vtbl[].vtbl.setHeaderData = cQFileSystemModel_vtable_callback_setHeaderData
  if not isNil(vtbl[].itemData):
    vtbl[].vtbl.itemData = cQFileSystemModel_vtable_callback_itemData
  if not isNil(vtbl[].setItemData):
    vtbl[].vtbl.setItemData = cQFileSystemModel_vtable_callback_setItemData
  if not isNil(vtbl[].clearItemData):
    vtbl[].vtbl.clearItemData = cQFileSystemModel_vtable_callback_clearItemData
  if not isNil(vtbl[].canDropMimeData):
    vtbl[].vtbl.canDropMimeData = cQFileSystemModel_vtable_callback_canDropMimeData
  if not isNil(vtbl[].supportedDragActions):
    vtbl[].vtbl.supportedDragActions = cQFileSystemModel_vtable_callback_supportedDragActions
  if not isNil(vtbl[].insertRows):
    vtbl[].vtbl.insertRows = cQFileSystemModel_vtable_callback_insertRows
  if not isNil(vtbl[].insertColumns):
    vtbl[].vtbl.insertColumns = cQFileSystemModel_vtable_callback_insertColumns
  if not isNil(vtbl[].removeRows):
    vtbl[].vtbl.removeRows = cQFileSystemModel_vtable_callback_removeRows
  if not isNil(vtbl[].removeColumns):
    vtbl[].vtbl.removeColumns = cQFileSystemModel_vtable_callback_removeColumns
  if not isNil(vtbl[].moveRows):
    vtbl[].vtbl.moveRows = cQFileSystemModel_vtable_callback_moveRows
  if not isNil(vtbl[].moveColumns):
    vtbl[].vtbl.moveColumns = cQFileSystemModel_vtable_callback_moveColumns
  if not isNil(vtbl[].buddy):
    vtbl[].vtbl.buddy = cQFileSystemModel_vtable_callback_buddy
  if not isNil(vtbl[].match):
    vtbl[].vtbl.match = cQFileSystemModel_vtable_callback_match
  if not isNil(vtbl[].span):
    vtbl[].vtbl.span = cQFileSystemModel_vtable_callback_span
  if not isNil(vtbl[].multiData):
    vtbl[].vtbl.multiData = cQFileSystemModel_vtable_callback_multiData
  if not isNil(vtbl[].submit):
    vtbl[].vtbl.submit = cQFileSystemModel_vtable_callback_submit
  if not isNil(vtbl[].revert):
    vtbl[].vtbl.revert = cQFileSystemModel_vtable_callback_revert
  if not isNil(vtbl[].resetInternalData):
    vtbl[].vtbl.resetInternalData = cQFileSystemModel_vtable_callback_resetInternalData
  if not isNil(vtbl[].eventFilter):
    vtbl[].vtbl.eventFilter = cQFileSystemModel_vtable_callback_eventFilter
  if not isNil(vtbl[].childEvent):
    vtbl[].vtbl.childEvent = cQFileSystemModel_vtable_callback_childEvent
  if not isNil(vtbl[].customEvent):
    vtbl[].vtbl.customEvent = cQFileSystemModel_vtable_callback_customEvent
  if not isNil(vtbl[].connectNotify):
    vtbl[].vtbl.connectNotify = cQFileSystemModel_vtable_callback_connectNotify
  if not isNil(vtbl[].disconnectNotify):
    vtbl[].vtbl.disconnectNotify = cQFileSystemModel_vtable_callback_disconnectNotify
  gen_qfilesystemmodel_types.QFileSystemModel(h: fcQFileSystemModel_new2(addr(vtbl[].vtbl), addr(vtbl[]), parent.h), owned: true)

const cQFileSystemModel_mvtbl = cQFileSystemModelVTable(
  destructor: proc(self: pointer) {.cdecl.} =
    let inst = cast[ptr typeof(VirtualQFileSystemModel()[])](self.fcQFileSystemModel_vtbl())
    inst[].h = nil
    inst[].owned = false,
  metaObject: cQFileSystemModel_method_callback_metaObject,
  metacast: cQFileSystemModel_method_callback_metacast,
  metacall: cQFileSystemModel_method_callback_metacall,
  index: cQFileSystemModel_method_callback_index,
  parent: cQFileSystemModel_method_callback_parent,
  sibling: cQFileSystemModel_method_callback_sibling,
  hasChildren: cQFileSystemModel_method_callback_hasChildren,
  canFetchMore: cQFileSystemModel_method_callback_canFetchMore,
  fetchMore: cQFileSystemModel_method_callback_fetchMore,
  rowCount: cQFileSystemModel_method_callback_rowCount,
  columnCount: cQFileSystemModel_method_callback_columnCount,
  data: cQFileSystemModel_method_callback_data,
  setData: cQFileSystemModel_method_callback_setData,
  headerData: cQFileSystemModel_method_callback_headerData,
  flags: cQFileSystemModel_method_callback_flags,
  sort: cQFileSystemModel_method_callback_sort,
  mimeTypes: cQFileSystemModel_method_callback_mimeTypes,
  mimeData: cQFileSystemModel_method_callback_mimeData,
  dropMimeData: cQFileSystemModel_method_callback_dropMimeData,
  supportedDropActions: cQFileSystemModel_method_callback_supportedDropActions,
  roleNames: cQFileSystemModel_method_callback_roleNames,
  timerEvent: cQFileSystemModel_method_callback_timerEvent,
  event: cQFileSystemModel_method_callback_event,
  setHeaderData: cQFileSystemModel_method_callback_setHeaderData,
  itemData: cQFileSystemModel_method_callback_itemData,
  setItemData: cQFileSystemModel_method_callback_setItemData,
  clearItemData: cQFileSystemModel_method_callback_clearItemData,
  canDropMimeData: cQFileSystemModel_method_callback_canDropMimeData,
  supportedDragActions: cQFileSystemModel_method_callback_supportedDragActions,
  insertRows: cQFileSystemModel_method_callback_insertRows,
  insertColumns: cQFileSystemModel_method_callback_insertColumns,
  removeRows: cQFileSystemModel_method_callback_removeRows,
  removeColumns: cQFileSystemModel_method_callback_removeColumns,
  moveRows: cQFileSystemModel_method_callback_moveRows,
  moveColumns: cQFileSystemModel_method_callback_moveColumns,
  buddy: cQFileSystemModel_method_callback_buddy,
  match: cQFileSystemModel_method_callback_match,
  span: cQFileSystemModel_method_callback_span,
  multiData: cQFileSystemModel_method_callback_multiData,
  submit: cQFileSystemModel_method_callback_submit,
  revert: cQFileSystemModel_method_callback_revert,
  resetInternalData: cQFileSystemModel_method_callback_resetInternalData,
  eventFilter: cQFileSystemModel_method_callback_eventFilter,
  childEvent: cQFileSystemModel_method_callback_childEvent,
  customEvent: cQFileSystemModel_method_callback_customEvent,
  connectNotify: cQFileSystemModel_method_callback_connectNotify,
  disconnectNotify: cQFileSystemModel_method_callback_disconnectNotify,
)
proc create*(T: type gen_qfilesystemmodel_types.QFileSystemModel,
    inst: VirtualQFileSystemModel) =
  if inst[].h != nil: delete(move(inst[]))
  inst[].h = fcQFileSystemModel_new(addr(cQFileSystemModel_mvtbl), addr(inst[]))
  inst[].owned = true

proc create*(T: type gen_qfilesystemmodel_types.QFileSystemModel,
    parent: gen_qobject_types.QObject,
    inst: VirtualQFileSystemModel) =
  if inst[].h != nil: delete(move(inst[]))
  inst[].h = fcQFileSystemModel_new2(addr(cQFileSystemModel_mvtbl), addr(inst[]), parent.h)
  inst[].owned = true

proc staticMetaObject*(_: type gen_qfilesystemmodel_types.QFileSystemModel): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQFileSystemModel_staticMetaObject())
