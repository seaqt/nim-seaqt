import ./Qt6Gui_libs

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

const cflags = gorge("pkg-config --cflags Qt6Gui")  & " -fPIC"
{.compile("gen_qfilesystemmodel.cpp", cflags).}


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

proc fcQFileSystemModel_metaObject(self: pointer, ): pointer {.importc: "QFileSystemModel_metaObject".}
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
proc fcQFileSystemModel_myComputer(self: pointer, ): pointer {.importc: "QFileSystemModel_myComputer".}
proc fcQFileSystemModel_data(self: pointer, index: pointer, role: cint): pointer {.importc: "QFileSystemModel_data".}
proc fcQFileSystemModel_setData(self: pointer, index: pointer, value: pointer, role: cint): bool {.importc: "QFileSystemModel_setData".}
proc fcQFileSystemModel_headerData(self: pointer, section: cint, orientation: cint, role: cint): pointer {.importc: "QFileSystemModel_headerData".}
proc fcQFileSystemModel_flags(self: pointer, index: pointer): cint {.importc: "QFileSystemModel_flags".}
proc fcQFileSystemModel_sort(self: pointer, column: cint, order: cint): void {.importc: "QFileSystemModel_sort".}
proc fcQFileSystemModel_mimeTypes(self: pointer, ): struct_miqt_array {.importc: "QFileSystemModel_mimeTypes".}
proc fcQFileSystemModel_mimeData(self: pointer, indexes: struct_miqt_array): pointer {.importc: "QFileSystemModel_mimeData".}
proc fcQFileSystemModel_dropMimeData(self: pointer, data: pointer, action: cint, row: cint, column: cint, parent: pointer): bool {.importc: "QFileSystemModel_dropMimeData".}
proc fcQFileSystemModel_supportedDropActions(self: pointer, ): cint {.importc: "QFileSystemModel_supportedDropActions".}
proc fcQFileSystemModel_roleNames(self: pointer, ): struct_miqt_map {.importc: "QFileSystemModel_roleNames".}
proc fcQFileSystemModel_setRootPath(self: pointer, path: struct_miqt_string): pointer {.importc: "QFileSystemModel_setRootPath".}
proc fcQFileSystemModel_rootPath(self: pointer, ): struct_miqt_string {.importc: "QFileSystemModel_rootPath".}
proc fcQFileSystemModel_rootDirectory(self: pointer, ): pointer {.importc: "QFileSystemModel_rootDirectory".}
proc fcQFileSystemModel_setIconProvider(self: pointer, provider: pointer): void {.importc: "QFileSystemModel_setIconProvider".}
proc fcQFileSystemModel_iconProvider(self: pointer, ): pointer {.importc: "QFileSystemModel_iconProvider".}
proc fcQFileSystemModel_setFilter(self: pointer, filters: cint): void {.importc: "QFileSystemModel_setFilter".}
proc fcQFileSystemModel_filter(self: pointer, ): cint {.importc: "QFileSystemModel_filter".}
proc fcQFileSystemModel_setResolveSymlinks(self: pointer, enable: bool): void {.importc: "QFileSystemModel_setResolveSymlinks".}
proc fcQFileSystemModel_resolveSymlinks(self: pointer, ): bool {.importc: "QFileSystemModel_resolveSymlinks".}
proc fcQFileSystemModel_setReadOnly(self: pointer, enable: bool): void {.importc: "QFileSystemModel_setReadOnly".}
proc fcQFileSystemModel_isReadOnly(self: pointer, ): bool {.importc: "QFileSystemModel_isReadOnly".}
proc fcQFileSystemModel_setNameFilterDisables(self: pointer, enable: bool): void {.importc: "QFileSystemModel_setNameFilterDisables".}
proc fcQFileSystemModel_nameFilterDisables(self: pointer, ): bool {.importc: "QFileSystemModel_nameFilterDisables".}
proc fcQFileSystemModel_setNameFilters(self: pointer, filters: struct_miqt_array): void {.importc: "QFileSystemModel_setNameFilters".}
proc fcQFileSystemModel_nameFilters(self: pointer, ): struct_miqt_array {.importc: "QFileSystemModel_nameFilters".}
proc fcQFileSystemModel_setOption(self: pointer, option: cint): void {.importc: "QFileSystemModel_setOption".}
proc fcQFileSystemModel_testOption(self: pointer, option: cint): bool {.importc: "QFileSystemModel_testOption".}
proc fcQFileSystemModel_setOptions(self: pointer, options: cint): void {.importc: "QFileSystemModel_setOptions".}
proc fcQFileSystemModel_options(self: pointer, ): cint {.importc: "QFileSystemModel_options".}
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
type cQFileSystemModelVTable = object
  destructor*: proc(vtbl: ptr cQFileSystemModelVTable, self: ptr cQFileSystemModel) {.cdecl, raises:[], gcsafe.}
  metaObject*: proc(vtbl, self: pointer, ): pointer {.cdecl, raises: [], gcsafe.}
  metacast*: proc(vtbl, self: pointer, param1: cstring): pointer {.cdecl, raises: [], gcsafe.}
  metacall*: proc(vtbl, self: pointer, param1: cint, param2: cint, param3: pointer): cint {.cdecl, raises: [], gcsafe.}
  index*: proc(vtbl, self: pointer, row: cint, column: cint, parent: pointer): pointer {.cdecl, raises: [], gcsafe.}
  parent*: proc(vtbl, self: pointer, child: pointer): pointer {.cdecl, raises: [], gcsafe.}
  sibling*: proc(vtbl, self: pointer, row: cint, column: cint, idx: pointer): pointer {.cdecl, raises: [], gcsafe.}
  hasChildren*: proc(vtbl, self: pointer, parent: pointer): bool {.cdecl, raises: [], gcsafe.}
  canFetchMore*: proc(vtbl, self: pointer, parent: pointer): bool {.cdecl, raises: [], gcsafe.}
  fetchMore*: proc(vtbl, self: pointer, parent: pointer): void {.cdecl, raises: [], gcsafe.}
  rowCount*: proc(vtbl, self: pointer, parent: pointer): cint {.cdecl, raises: [], gcsafe.}
  columnCount*: proc(vtbl, self: pointer, parent: pointer): cint {.cdecl, raises: [], gcsafe.}
  data*: proc(vtbl, self: pointer, index: pointer, role: cint): pointer {.cdecl, raises: [], gcsafe.}
  setData*: proc(vtbl, self: pointer, index: pointer, value: pointer, role: cint): bool {.cdecl, raises: [], gcsafe.}
  headerData*: proc(vtbl, self: pointer, section: cint, orientation: cint, role: cint): pointer {.cdecl, raises: [], gcsafe.}
  flags*: proc(vtbl, self: pointer, index: pointer): cint {.cdecl, raises: [], gcsafe.}
  sort*: proc(vtbl, self: pointer, column: cint, order: cint): void {.cdecl, raises: [], gcsafe.}
  mimeTypes*: proc(vtbl, self: pointer, ): struct_miqt_array {.cdecl, raises: [], gcsafe.}
  mimeData*: proc(vtbl, self: pointer, indexes: struct_miqt_array): pointer {.cdecl, raises: [], gcsafe.}
  dropMimeData*: proc(vtbl, self: pointer, data: pointer, action: cint, row: cint, column: cint, parent: pointer): bool {.cdecl, raises: [], gcsafe.}
  supportedDropActions*: proc(vtbl, self: pointer, ): cint {.cdecl, raises: [], gcsafe.}
  roleNames*: proc(vtbl, self: pointer, ): struct_miqt_map {.cdecl, raises: [], gcsafe.}
  timerEvent*: proc(vtbl, self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  event*: proc(vtbl, self: pointer, event: pointer): bool {.cdecl, raises: [], gcsafe.}
  setHeaderData*: proc(vtbl, self: pointer, section: cint, orientation: cint, value: pointer, role: cint): bool {.cdecl, raises: [], gcsafe.}
  itemData*: proc(vtbl, self: pointer, index: pointer): struct_miqt_map {.cdecl, raises: [], gcsafe.}
  setItemData*: proc(vtbl, self: pointer, index: pointer, roles: struct_miqt_map): bool {.cdecl, raises: [], gcsafe.}
  clearItemData*: proc(vtbl, self: pointer, index: pointer): bool {.cdecl, raises: [], gcsafe.}
  canDropMimeData*: proc(vtbl, self: pointer, data: pointer, action: cint, row: cint, column: cint, parent: pointer): bool {.cdecl, raises: [], gcsafe.}
  supportedDragActions*: proc(vtbl, self: pointer, ): cint {.cdecl, raises: [], gcsafe.}
  insertRows*: proc(vtbl, self: pointer, row: cint, count: cint, parent: pointer): bool {.cdecl, raises: [], gcsafe.}
  insertColumns*: proc(vtbl, self: pointer, column: cint, count: cint, parent: pointer): bool {.cdecl, raises: [], gcsafe.}
  removeRows*: proc(vtbl, self: pointer, row: cint, count: cint, parent: pointer): bool {.cdecl, raises: [], gcsafe.}
  removeColumns*: proc(vtbl, self: pointer, column: cint, count: cint, parent: pointer): bool {.cdecl, raises: [], gcsafe.}
  moveRows*: proc(vtbl, self: pointer, sourceParent: pointer, sourceRow: cint, count: cint, destinationParent: pointer, destinationChild: cint): bool {.cdecl, raises: [], gcsafe.}
  moveColumns*: proc(vtbl, self: pointer, sourceParent: pointer, sourceColumn: cint, count: cint, destinationParent: pointer, destinationChild: cint): bool {.cdecl, raises: [], gcsafe.}
  buddy*: proc(vtbl, self: pointer, index: pointer): pointer {.cdecl, raises: [], gcsafe.}
  match*: proc(vtbl, self: pointer, start: pointer, role: cint, value: pointer, hits: cint, flags: cint): struct_miqt_array {.cdecl, raises: [], gcsafe.}
  span*: proc(vtbl, self: pointer, index: pointer): pointer {.cdecl, raises: [], gcsafe.}
  multiData*: proc(vtbl, self: pointer, index: pointer, roleDataSpan: pointer): void {.cdecl, raises: [], gcsafe.}
  submit*: proc(vtbl, self: pointer, ): bool {.cdecl, raises: [], gcsafe.}
  revert*: proc(vtbl, self: pointer, ): void {.cdecl, raises: [], gcsafe.}
  resetInternalData*: proc(vtbl, self: pointer, ): void {.cdecl, raises: [], gcsafe.}
  eventFilter*: proc(vtbl, self: pointer, watched: pointer, event: pointer): bool {.cdecl, raises: [], gcsafe.}
  childEvent*: proc(vtbl, self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  customEvent*: proc(vtbl, self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  connectNotify*: proc(vtbl, self: pointer, signal: pointer): void {.cdecl, raises: [], gcsafe.}
  disconnectNotify*: proc(vtbl, self: pointer, signal: pointer): void {.cdecl, raises: [], gcsafe.}
proc fcQFileSystemModel_virtualbase_metaObject(self: pointer, ): pointer {.importc: "QFileSystemModel_virtualbase_metaObject".}
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
proc fcQFileSystemModel_virtualbase_mimeTypes(self: pointer, ): struct_miqt_array {.importc: "QFileSystemModel_virtualbase_mimeTypes".}
proc fcQFileSystemModel_virtualbase_mimeData(self: pointer, indexes: struct_miqt_array): pointer {.importc: "QFileSystemModel_virtualbase_mimeData".}
proc fcQFileSystemModel_virtualbase_dropMimeData(self: pointer, data: pointer, action: cint, row: cint, column: cint, parent: pointer): bool {.importc: "QFileSystemModel_virtualbase_dropMimeData".}
proc fcQFileSystemModel_virtualbase_supportedDropActions(self: pointer, ): cint {.importc: "QFileSystemModel_virtualbase_supportedDropActions".}
proc fcQFileSystemModel_virtualbase_roleNames(self: pointer, ): struct_miqt_map {.importc: "QFileSystemModel_virtualbase_roleNames".}
proc fcQFileSystemModel_virtualbase_timerEvent(self: pointer, event: pointer): void {.importc: "QFileSystemModel_virtualbase_timerEvent".}
proc fcQFileSystemModel_virtualbase_event(self: pointer, event: pointer): bool {.importc: "QFileSystemModel_virtualbase_event".}
proc fcQFileSystemModel_virtualbase_setHeaderData(self: pointer, section: cint, orientation: cint, value: pointer, role: cint): bool {.importc: "QFileSystemModel_virtualbase_setHeaderData".}
proc fcQFileSystemModel_virtualbase_itemData(self: pointer, index: pointer): struct_miqt_map {.importc: "QFileSystemModel_virtualbase_itemData".}
proc fcQFileSystemModel_virtualbase_setItemData(self: pointer, index: pointer, roles: struct_miqt_map): bool {.importc: "QFileSystemModel_virtualbase_setItemData".}
proc fcQFileSystemModel_virtualbase_clearItemData(self: pointer, index: pointer): bool {.importc: "QFileSystemModel_virtualbase_clearItemData".}
proc fcQFileSystemModel_virtualbase_canDropMimeData(self: pointer, data: pointer, action: cint, row: cint, column: cint, parent: pointer): bool {.importc: "QFileSystemModel_virtualbase_canDropMimeData".}
proc fcQFileSystemModel_virtualbase_supportedDragActions(self: pointer, ): cint {.importc: "QFileSystemModel_virtualbase_supportedDragActions".}
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
proc fcQFileSystemModel_virtualbase_submit(self: pointer, ): bool {.importc: "QFileSystemModel_virtualbase_submit".}
proc fcQFileSystemModel_virtualbase_revert(self: pointer, ): void {.importc: "QFileSystemModel_virtualbase_revert".}
proc fcQFileSystemModel_virtualbase_resetInternalData(self: pointer, ): void {.importc: "QFileSystemModel_virtualbase_resetInternalData".}
proc fcQFileSystemModel_virtualbase_eventFilter(self: pointer, watched: pointer, event: pointer): bool {.importc: "QFileSystemModel_virtualbase_eventFilter".}
proc fcQFileSystemModel_virtualbase_childEvent(self: pointer, event: pointer): void {.importc: "QFileSystemModel_virtualbase_childEvent".}
proc fcQFileSystemModel_virtualbase_customEvent(self: pointer, event: pointer): void {.importc: "QFileSystemModel_virtualbase_customEvent".}
proc fcQFileSystemModel_virtualbase_connectNotify(self: pointer, signal: pointer): void {.importc: "QFileSystemModel_virtualbase_connectNotify".}
proc fcQFileSystemModel_virtualbase_disconnectNotify(self: pointer, signal: pointer): void {.importc: "QFileSystemModel_virtualbase_disconnectNotify".}
proc fcQFileSystemModel_new(vtbl: pointer, ): ptr cQFileSystemModel {.importc: "QFileSystemModel_new".}
proc fcQFileSystemModel_new2(vtbl: pointer, parent: pointer): ptr cQFileSystemModel {.importc: "QFileSystemModel_new2".}
proc fcQFileSystemModel_staticMetaObject(): pointer {.importc: "QFileSystemModel_staticMetaObject".}
proc fcQFileSystemModel_delete(self: pointer) {.importc: "QFileSystemModel_delete".}

proc metaObject*(self: gen_qfilesystemmodel_types.QFileSystemModel, ): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQFileSystemModel_metaObject(self.h))

proc metacast*(self: gen_qfilesystemmodel_types.QFileSystemModel, param1: cstring): pointer =
  fcQFileSystemModel_metacast(self.h, param1)

proc metacall*(self: gen_qfilesystemmodel_types.QFileSystemModel, param1: cint, param2: cint, param3: pointer): cint =
  fcQFileSystemModel_metacall(self.h, cint(param1), param2, param3)

proc tr*(_: type gen_qfilesystemmodel_types.QFileSystemModel, s: cstring): string =
  let v_ms = fcQFileSystemModel_tr(s)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc rootPathChanged*(self: gen_qfilesystemmodel_types.QFileSystemModel, newPath: string): void =
  fcQFileSystemModel_rootPathChanged(self.h, struct_miqt_string(data: newPath, len: csize_t(len(newPath))))

type QFileSystemModelrootPathChangedSlot* = proc(newPath: string)
proc miqt_exec_callback_cQFileSystemModel_rootPathChanged(slot: int, newPath: struct_miqt_string) {.cdecl.} =
  let nimfunc = cast[ptr QFileSystemModelrootPathChangedSlot](cast[pointer](slot))
  let vnewPath_ms = newPath
  let vnewPathx_ret = string.fromBytes(toOpenArrayByte(vnewPath_ms.data, 0, int(vnewPath_ms.len)-1))
  c_free(vnewPath_ms.data)
  let slotval1 = vnewPathx_ret

  nimfunc[](slotval1)

proc miqt_exec_callback_cQFileSystemModel_rootPathChanged_release(slot: int) {.cdecl.} =
  let nimfunc = cast[ref QFileSystemModelrootPathChangedSlot](cast[pointer](slot))
  GC_unref(nimfunc)

proc onrootPathChanged*(self: gen_qfilesystemmodel_types.QFileSystemModel, slot: QFileSystemModelrootPathChangedSlot) =
  var tmp = new QFileSystemModelrootPathChangedSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQFileSystemModel_connect_rootPathChanged(self.h, cast[int](addr tmp[]), miqt_exec_callback_cQFileSystemModel_rootPathChanged, miqt_exec_callback_cQFileSystemModel_rootPathChanged_release)

proc fileRenamed*(self: gen_qfilesystemmodel_types.QFileSystemModel, path: string, oldName: string, newName: string): void =
  fcQFileSystemModel_fileRenamed(self.h, struct_miqt_string(data: path, len: csize_t(len(path))), struct_miqt_string(data: oldName, len: csize_t(len(oldName))), struct_miqt_string(data: newName, len: csize_t(len(newName))))

type QFileSystemModelfileRenamedSlot* = proc(path: string, oldName: string, newName: string)
proc miqt_exec_callback_cQFileSystemModel_fileRenamed(slot: int, path: struct_miqt_string, oldName: struct_miqt_string, newName: struct_miqt_string) {.cdecl.} =
  let nimfunc = cast[ptr QFileSystemModelfileRenamedSlot](cast[pointer](slot))
  let vpath_ms = path
  let vpathx_ret = string.fromBytes(toOpenArrayByte(vpath_ms.data, 0, int(vpath_ms.len)-1))
  c_free(vpath_ms.data)
  let slotval1 = vpathx_ret

  let voldName_ms = oldName
  let voldNamex_ret = string.fromBytes(toOpenArrayByte(voldName_ms.data, 0, int(voldName_ms.len)-1))
  c_free(voldName_ms.data)
  let slotval2 = voldNamex_ret

  let vnewName_ms = newName
  let vnewNamex_ret = string.fromBytes(toOpenArrayByte(vnewName_ms.data, 0, int(vnewName_ms.len)-1))
  c_free(vnewName_ms.data)
  let slotval3 = vnewNamex_ret

  nimfunc[](slotval1, slotval2, slotval3)

proc miqt_exec_callback_cQFileSystemModel_fileRenamed_release(slot: int) {.cdecl.} =
  let nimfunc = cast[ref QFileSystemModelfileRenamedSlot](cast[pointer](slot))
  GC_unref(nimfunc)

proc onfileRenamed*(self: gen_qfilesystemmodel_types.QFileSystemModel, slot: QFileSystemModelfileRenamedSlot) =
  var tmp = new QFileSystemModelfileRenamedSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQFileSystemModel_connect_fileRenamed(self.h, cast[int](addr tmp[]), miqt_exec_callback_cQFileSystemModel_fileRenamed, miqt_exec_callback_cQFileSystemModel_fileRenamed_release)

proc directoryLoaded*(self: gen_qfilesystemmodel_types.QFileSystemModel, path: string): void =
  fcQFileSystemModel_directoryLoaded(self.h, struct_miqt_string(data: path, len: csize_t(len(path))))

type QFileSystemModeldirectoryLoadedSlot* = proc(path: string)
proc miqt_exec_callback_cQFileSystemModel_directoryLoaded(slot: int, path: struct_miqt_string) {.cdecl.} =
  let nimfunc = cast[ptr QFileSystemModeldirectoryLoadedSlot](cast[pointer](slot))
  let vpath_ms = path
  let vpathx_ret = string.fromBytes(toOpenArrayByte(vpath_ms.data, 0, int(vpath_ms.len)-1))
  c_free(vpath_ms.data)
  let slotval1 = vpathx_ret

  nimfunc[](slotval1)

proc miqt_exec_callback_cQFileSystemModel_directoryLoaded_release(slot: int) {.cdecl.} =
  let nimfunc = cast[ref QFileSystemModeldirectoryLoadedSlot](cast[pointer](slot))
  GC_unref(nimfunc)

proc ondirectoryLoaded*(self: gen_qfilesystemmodel_types.QFileSystemModel, slot: QFileSystemModeldirectoryLoadedSlot) =
  var tmp = new QFileSystemModeldirectoryLoadedSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQFileSystemModel_connect_directoryLoaded(self.h, cast[int](addr tmp[]), miqt_exec_callback_cQFileSystemModel_directoryLoaded, miqt_exec_callback_cQFileSystemModel_directoryLoaded_release)

proc index*(self: gen_qfilesystemmodel_types.QFileSystemModel, row: cint, column: cint, parent: gen_qabstractitemmodel_types.QModelIndex): gen_qabstractitemmodel_types.QModelIndex =
  gen_qabstractitemmodel_types.QModelIndex(h: fcQFileSystemModel_index(self.h, row, column, parent.h))

proc index*(self: gen_qfilesystemmodel_types.QFileSystemModel, path: string): gen_qabstractitemmodel_types.QModelIndex =
  gen_qabstractitemmodel_types.QModelIndex(h: fcQFileSystemModel_indexWithPath(self.h, struct_miqt_string(data: path, len: csize_t(len(path)))))

proc parent*(self: gen_qfilesystemmodel_types.QFileSystemModel, child: gen_qabstractitemmodel_types.QModelIndex): gen_qabstractitemmodel_types.QModelIndex =
  gen_qabstractitemmodel_types.QModelIndex(h: fcQFileSystemModel_parent(self.h, child.h))

proc sibling*(self: gen_qfilesystemmodel_types.QFileSystemModel, row: cint, column: cint, idx: gen_qabstractitemmodel_types.QModelIndex): gen_qabstractitemmodel_types.QModelIndex =
  gen_qabstractitemmodel_types.QModelIndex(h: fcQFileSystemModel_sibling(self.h, row, column, idx.h))

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

proc myComputer*(self: gen_qfilesystemmodel_types.QFileSystemModel, ): gen_qvariant_types.QVariant =
  gen_qvariant_types.QVariant(h: fcQFileSystemModel_myComputer(self.h))

proc data*(self: gen_qfilesystemmodel_types.QFileSystemModel, index: gen_qabstractitemmodel_types.QModelIndex, role: cint): gen_qvariant_types.QVariant =
  gen_qvariant_types.QVariant(h: fcQFileSystemModel_data(self.h, index.h, role))

proc setData*(self: gen_qfilesystemmodel_types.QFileSystemModel, index: gen_qabstractitemmodel_types.QModelIndex, value: gen_qvariant_types.QVariant, role: cint): bool =
  fcQFileSystemModel_setData(self.h, index.h, value.h, role)

proc headerData*(self: gen_qfilesystemmodel_types.QFileSystemModel, section: cint, orientation: cint, role: cint): gen_qvariant_types.QVariant =
  gen_qvariant_types.QVariant(h: fcQFileSystemModel_headerData(self.h, section, cint(orientation), role))

proc flags*(self: gen_qfilesystemmodel_types.QFileSystemModel, index: gen_qabstractitemmodel_types.QModelIndex): cint =
  cint(fcQFileSystemModel_flags(self.h, index.h))

proc sort*(self: gen_qfilesystemmodel_types.QFileSystemModel, column: cint, order: cint): void =
  fcQFileSystemModel_sort(self.h, column, cint(order))

proc mimeTypes*(self: gen_qfilesystemmodel_types.QFileSystemModel, ): seq[string] =
  var v_ma = fcQFileSystemModel_mimeTypes(self.h)
  var vx_ret = newSeq[string](int(v_ma.len))
  let v_outCast = cast[ptr UncheckedArray[struct_miqt_string]](v_ma.data)
  for i in 0 ..< v_ma.len:
    let vx_lv_ms = v_outCast[i]
    let vx_lvx_ret = string.fromBytes(toOpenArrayByte(vx_lv_ms.data, 0, int(vx_lv_ms.len)-1))
    c_free(vx_lv_ms.data)
    vx_ret[i] = vx_lvx_ret
  vx_ret

proc mimeData*(self: gen_qfilesystemmodel_types.QFileSystemModel, indexes: seq[gen_qabstractitemmodel_types.QModelIndex]): gen_qmimedata_types.QMimeData =
  var indexes_CArray = newSeq[pointer](len(indexes))
  for i in 0..<len(indexes):
    indexes_CArray[i] = indexes[i].h

  gen_qmimedata_types.QMimeData(h: fcQFileSystemModel_mimeData(self.h, struct_miqt_array(len: csize_t(len(indexes)), data: if len(indexes) == 0: nil else: addr(indexes_CArray[0]))))

proc dropMimeData*(self: gen_qfilesystemmodel_types.QFileSystemModel, data: gen_qmimedata_types.QMimeData, action: cint, row: cint, column: cint, parent: gen_qabstractitemmodel_types.QModelIndex): bool =
  fcQFileSystemModel_dropMimeData(self.h, data.h, cint(action), row, column, parent.h)

proc supportedDropActions*(self: gen_qfilesystemmodel_types.QFileSystemModel, ): cint =
  cint(fcQFileSystemModel_supportedDropActions(self.h))

proc roleNames*(self: gen_qfilesystemmodel_types.QFileSystemModel, ): Table[cint,seq[byte]] =
  var v_mm = fcQFileSystemModel_roleNames(self.h)
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

proc setRootPath*(self: gen_qfilesystemmodel_types.QFileSystemModel, path: string): gen_qabstractitemmodel_types.QModelIndex =
  gen_qabstractitemmodel_types.QModelIndex(h: fcQFileSystemModel_setRootPath(self.h, struct_miqt_string(data: path, len: csize_t(len(path)))))

proc rootPath*(self: gen_qfilesystemmodel_types.QFileSystemModel, ): string =
  let v_ms = fcQFileSystemModel_rootPath(self.h)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc rootDirectory*(self: gen_qfilesystemmodel_types.QFileSystemModel, ): gen_qdir_types.QDir =
  gen_qdir_types.QDir(h: fcQFileSystemModel_rootDirectory(self.h))

proc setIconProvider*(self: gen_qfilesystemmodel_types.QFileSystemModel, provider: gen_qabstractfileiconprovider_types.QAbstractFileIconProvider): void =
  fcQFileSystemModel_setIconProvider(self.h, provider.h)

proc iconProvider*(self: gen_qfilesystemmodel_types.QFileSystemModel, ): gen_qabstractfileiconprovider_types.QAbstractFileIconProvider =
  gen_qabstractfileiconprovider_types.QAbstractFileIconProvider(h: fcQFileSystemModel_iconProvider(self.h))

proc setFilter*(self: gen_qfilesystemmodel_types.QFileSystemModel, filters: cint): void =
  fcQFileSystemModel_setFilter(self.h, cint(filters))

proc filter*(self: gen_qfilesystemmodel_types.QFileSystemModel, ): cint =
  cint(fcQFileSystemModel_filter(self.h))

proc setResolveSymlinks*(self: gen_qfilesystemmodel_types.QFileSystemModel, enable: bool): void =
  fcQFileSystemModel_setResolveSymlinks(self.h, enable)

proc resolveSymlinks*(self: gen_qfilesystemmodel_types.QFileSystemModel, ): bool =
  fcQFileSystemModel_resolveSymlinks(self.h)

proc setReadOnly*(self: gen_qfilesystemmodel_types.QFileSystemModel, enable: bool): void =
  fcQFileSystemModel_setReadOnly(self.h, enable)

proc isReadOnly*(self: gen_qfilesystemmodel_types.QFileSystemModel, ): bool =
  fcQFileSystemModel_isReadOnly(self.h)

proc setNameFilterDisables*(self: gen_qfilesystemmodel_types.QFileSystemModel, enable: bool): void =
  fcQFileSystemModel_setNameFilterDisables(self.h, enable)

proc nameFilterDisables*(self: gen_qfilesystemmodel_types.QFileSystemModel, ): bool =
  fcQFileSystemModel_nameFilterDisables(self.h)

proc setNameFilters*(self: gen_qfilesystemmodel_types.QFileSystemModel, filters: seq[string]): void =
  var filters_CArray = newSeq[struct_miqt_string](len(filters))
  for i in 0..<len(filters):
    filters_CArray[i] = struct_miqt_string(data: filters[i], len: csize_t(len(filters[i])))

  fcQFileSystemModel_setNameFilters(self.h, struct_miqt_array(len: csize_t(len(filters)), data: if len(filters) == 0: nil else: addr(filters_CArray[0])))

proc nameFilters*(self: gen_qfilesystemmodel_types.QFileSystemModel, ): seq[string] =
  var v_ma = fcQFileSystemModel_nameFilters(self.h)
  var vx_ret = newSeq[string](int(v_ma.len))
  let v_outCast = cast[ptr UncheckedArray[struct_miqt_string]](v_ma.data)
  for i in 0 ..< v_ma.len:
    let vx_lv_ms = v_outCast[i]
    let vx_lvx_ret = string.fromBytes(toOpenArrayByte(vx_lv_ms.data, 0, int(vx_lv_ms.len)-1))
    c_free(vx_lv_ms.data)
    vx_ret[i] = vx_lvx_ret
  vx_ret

proc setOption*(self: gen_qfilesystemmodel_types.QFileSystemModel, option: cint): void =
  fcQFileSystemModel_setOption(self.h, cint(option))

proc testOption*(self: gen_qfilesystemmodel_types.QFileSystemModel, option: cint): bool =
  fcQFileSystemModel_testOption(self.h, cint(option))

proc setOptions*(self: gen_qfilesystemmodel_types.QFileSystemModel, options: cint): void =
  fcQFileSystemModel_setOptions(self.h, cint(options))

proc options*(self: gen_qfilesystemmodel_types.QFileSystemModel, ): cint =
  cint(fcQFileSystemModel_options(self.h))

proc filePath*(self: gen_qfilesystemmodel_types.QFileSystemModel, index: gen_qabstractitemmodel_types.QModelIndex): string =
  let v_ms = fcQFileSystemModel_filePath(self.h, index.h)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc isDir*(self: gen_qfilesystemmodel_types.QFileSystemModel, index: gen_qabstractitemmodel_types.QModelIndex): bool =
  fcQFileSystemModel_isDir(self.h, index.h)

proc size*(self: gen_qfilesystemmodel_types.QFileSystemModel, index: gen_qabstractitemmodel_types.QModelIndex): clonglong =
  fcQFileSystemModel_size(self.h, index.h)

proc typeX*(self: gen_qfilesystemmodel_types.QFileSystemModel, index: gen_qabstractitemmodel_types.QModelIndex): string =
  let v_ms = fcQFileSystemModel_typeX(self.h, index.h)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc lastModified*(self: gen_qfilesystemmodel_types.QFileSystemModel, index: gen_qabstractitemmodel_types.QModelIndex): gen_qdatetime_types.QDateTime =
  gen_qdatetime_types.QDateTime(h: fcQFileSystemModel_lastModified(self.h, index.h))

proc mkdir*(self: gen_qfilesystemmodel_types.QFileSystemModel, parent: gen_qabstractitemmodel_types.QModelIndex, name: string): gen_qabstractitemmodel_types.QModelIndex =
  gen_qabstractitemmodel_types.QModelIndex(h: fcQFileSystemModel_mkdir(self.h, parent.h, struct_miqt_string(data: name, len: csize_t(len(name)))))

proc rmdir*(self: gen_qfilesystemmodel_types.QFileSystemModel, index: gen_qabstractitemmodel_types.QModelIndex): bool =
  fcQFileSystemModel_rmdir(self.h, index.h)

proc fileName*(self: gen_qfilesystemmodel_types.QFileSystemModel, index: gen_qabstractitemmodel_types.QModelIndex): string =
  let v_ms = fcQFileSystemModel_fileName(self.h, index.h)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc fileIcon*(self: gen_qfilesystemmodel_types.QFileSystemModel, index: gen_qabstractitemmodel_types.QModelIndex): gen_qicon_types.QIcon =
  gen_qicon_types.QIcon(h: fcQFileSystemModel_fileIcon(self.h, index.h))

proc permissions*(self: gen_qfilesystemmodel_types.QFileSystemModel, index: gen_qabstractitemmodel_types.QModelIndex): cint =
  cint(fcQFileSystemModel_permissions(self.h, index.h))

proc fileInfo*(self: gen_qfilesystemmodel_types.QFileSystemModel, index: gen_qabstractitemmodel_types.QModelIndex): gen_qfileinfo_types.QFileInfo =
  gen_qfileinfo_types.QFileInfo(h: fcQFileSystemModel_fileInfo(self.h, index.h))

proc remove*(self: gen_qfilesystemmodel_types.QFileSystemModel, index: gen_qabstractitemmodel_types.QModelIndex): bool =
  fcQFileSystemModel_remove(self.h, index.h)

proc tr*(_: type gen_qfilesystemmodel_types.QFileSystemModel, s: cstring, c: cstring): string =
  let v_ms = fcQFileSystemModel_tr2(s, c)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc tr*(_: type gen_qfilesystemmodel_types.QFileSystemModel, s: cstring, c: cstring, n: cint): string =
  let v_ms = fcQFileSystemModel_tr3(s, c, n)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc index*(self: gen_qfilesystemmodel_types.QFileSystemModel, path: string, column: cint): gen_qabstractitemmodel_types.QModelIndex =
  gen_qabstractitemmodel_types.QModelIndex(h: fcQFileSystemModel_index2(self.h, struct_miqt_string(data: path, len: csize_t(len(path))), column))

proc myComputer*(self: gen_qfilesystemmodel_types.QFileSystemModel, role: cint): gen_qvariant_types.QVariant =
  gen_qvariant_types.QVariant(h: fcQFileSystemModel_myComputer1(self.h, role))

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
type QFileSystemModelmimeDataProc* = proc(self: QFileSystemModel, indexes: seq[gen_qabstractitemmodel_types.QModelIndex]): gen_qmimedata_types.QMimeData {.raises: [], gcsafe.}
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
type QFileSystemModelVTable* = object
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
proc QFileSystemModelmetaObject*(self: gen_qfilesystemmodel_types.QFileSystemModel, ): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQFileSystemModel_virtualbase_metaObject(self.h))

proc miqt_exec_callback_cQFileSystemModel_metaObject(vtbl: pointer, self: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QFileSystemModelVTable](vtbl)
  let self = QFileSystemModel(h: self)
  var virtualReturn = vtbl[].metaObject(self)
  virtualReturn.h

proc QFileSystemModelmetacast*(self: gen_qfilesystemmodel_types.QFileSystemModel, param1: cstring): pointer =
  fcQFileSystemModel_virtualbase_metacast(self.h, param1)

proc miqt_exec_callback_cQFileSystemModel_metacast(vtbl: pointer, self: pointer, param1: cstring): pointer {.cdecl.} =
  let vtbl = cast[ptr QFileSystemModelVTable](vtbl)
  let self = QFileSystemModel(h: self)
  let slotval1 = (param1)
  var virtualReturn = vtbl[].metacast(self, slotval1)
  virtualReturn

proc QFileSystemModelmetacall*(self: gen_qfilesystemmodel_types.QFileSystemModel, param1: cint, param2: cint, param3: pointer): cint =
  fcQFileSystemModel_virtualbase_metacall(self.h, cint(param1), param2, param3)

proc miqt_exec_callback_cQFileSystemModel_metacall(vtbl: pointer, self: pointer, param1: cint, param2: cint, param3: pointer): cint {.cdecl.} =
  let vtbl = cast[ptr QFileSystemModelVTable](vtbl)
  let self = QFileSystemModel(h: self)
  let slotval1 = cint(param1)
  let slotval2 = param2
  let slotval3 = param3
  var virtualReturn = vtbl[].metacall(self, slotval1, slotval2, slotval3)
  virtualReturn

proc QFileSystemModelindex*(self: gen_qfilesystemmodel_types.QFileSystemModel, row: cint, column: cint, parent: gen_qabstractitemmodel_types.QModelIndex): gen_qabstractitemmodel_types.QModelIndex =
  gen_qabstractitemmodel_types.QModelIndex(h: fcQFileSystemModel_virtualbase_index(self.h, row, column, parent.h))

proc miqt_exec_callback_cQFileSystemModel_index(vtbl: pointer, self: pointer, row: cint, column: cint, parent: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QFileSystemModelVTable](vtbl)
  let self = QFileSystemModel(h: self)
  let slotval1 = row
  let slotval2 = column
  let slotval3 = gen_qabstractitemmodel_types.QModelIndex(h: parent)
  var virtualReturn = vtbl[].index(self, slotval1, slotval2, slotval3)
  virtualReturn.h

proc QFileSystemModelparent*(self: gen_qfilesystemmodel_types.QFileSystemModel, child: gen_qabstractitemmodel_types.QModelIndex): gen_qabstractitemmodel_types.QModelIndex =
  gen_qabstractitemmodel_types.QModelIndex(h: fcQFileSystemModel_virtualbase_parent(self.h, child.h))

proc miqt_exec_callback_cQFileSystemModel_parent(vtbl: pointer, self: pointer, child: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QFileSystemModelVTable](vtbl)
  let self = QFileSystemModel(h: self)
  let slotval1 = gen_qabstractitemmodel_types.QModelIndex(h: child)
  var virtualReturn = vtbl[].parent(self, slotval1)
  virtualReturn.h

proc QFileSystemModelsibling*(self: gen_qfilesystemmodel_types.QFileSystemModel, row: cint, column: cint, idx: gen_qabstractitemmodel_types.QModelIndex): gen_qabstractitemmodel_types.QModelIndex =
  gen_qabstractitemmodel_types.QModelIndex(h: fcQFileSystemModel_virtualbase_sibling(self.h, row, column, idx.h))

proc miqt_exec_callback_cQFileSystemModel_sibling(vtbl: pointer, self: pointer, row: cint, column: cint, idx: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QFileSystemModelVTable](vtbl)
  let self = QFileSystemModel(h: self)
  let slotval1 = row
  let slotval2 = column
  let slotval3 = gen_qabstractitemmodel_types.QModelIndex(h: idx)
  var virtualReturn = vtbl[].sibling(self, slotval1, slotval2, slotval3)
  virtualReturn.h

proc QFileSystemModelhasChildren*(self: gen_qfilesystemmodel_types.QFileSystemModel, parent: gen_qabstractitemmodel_types.QModelIndex): bool =
  fcQFileSystemModel_virtualbase_hasChildren(self.h, parent.h)

proc miqt_exec_callback_cQFileSystemModel_hasChildren(vtbl: pointer, self: pointer, parent: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QFileSystemModelVTable](vtbl)
  let self = QFileSystemModel(h: self)
  let slotval1 = gen_qabstractitemmodel_types.QModelIndex(h: parent)
  var virtualReturn = vtbl[].hasChildren(self, slotval1)
  virtualReturn

proc QFileSystemModelcanFetchMore*(self: gen_qfilesystemmodel_types.QFileSystemModel, parent: gen_qabstractitemmodel_types.QModelIndex): bool =
  fcQFileSystemModel_virtualbase_canFetchMore(self.h, parent.h)

proc miqt_exec_callback_cQFileSystemModel_canFetchMore(vtbl: pointer, self: pointer, parent: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QFileSystemModelVTable](vtbl)
  let self = QFileSystemModel(h: self)
  let slotval1 = gen_qabstractitemmodel_types.QModelIndex(h: parent)
  var virtualReturn = vtbl[].canFetchMore(self, slotval1)
  virtualReturn

proc QFileSystemModelfetchMore*(self: gen_qfilesystemmodel_types.QFileSystemModel, parent: gen_qabstractitemmodel_types.QModelIndex): void =
  fcQFileSystemModel_virtualbase_fetchMore(self.h, parent.h)

proc miqt_exec_callback_cQFileSystemModel_fetchMore(vtbl: pointer, self: pointer, parent: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QFileSystemModelVTable](vtbl)
  let self = QFileSystemModel(h: self)
  let slotval1 = gen_qabstractitemmodel_types.QModelIndex(h: parent)
  vtbl[].fetchMore(self, slotval1)

proc QFileSystemModelrowCount*(self: gen_qfilesystemmodel_types.QFileSystemModel, parent: gen_qabstractitemmodel_types.QModelIndex): cint =
  fcQFileSystemModel_virtualbase_rowCount(self.h, parent.h)

proc miqt_exec_callback_cQFileSystemModel_rowCount(vtbl: pointer, self: pointer, parent: pointer): cint {.cdecl.} =
  let vtbl = cast[ptr QFileSystemModelVTable](vtbl)
  let self = QFileSystemModel(h: self)
  let slotval1 = gen_qabstractitemmodel_types.QModelIndex(h: parent)
  var virtualReturn = vtbl[].rowCount(self, slotval1)
  virtualReturn

proc QFileSystemModelcolumnCount*(self: gen_qfilesystemmodel_types.QFileSystemModel, parent: gen_qabstractitemmodel_types.QModelIndex): cint =
  fcQFileSystemModel_virtualbase_columnCount(self.h, parent.h)

proc miqt_exec_callback_cQFileSystemModel_columnCount(vtbl: pointer, self: pointer, parent: pointer): cint {.cdecl.} =
  let vtbl = cast[ptr QFileSystemModelVTable](vtbl)
  let self = QFileSystemModel(h: self)
  let slotval1 = gen_qabstractitemmodel_types.QModelIndex(h: parent)
  var virtualReturn = vtbl[].columnCount(self, slotval1)
  virtualReturn

proc QFileSystemModeldata*(self: gen_qfilesystemmodel_types.QFileSystemModel, index: gen_qabstractitemmodel_types.QModelIndex, role: cint): gen_qvariant_types.QVariant =
  gen_qvariant_types.QVariant(h: fcQFileSystemModel_virtualbase_data(self.h, index.h, role))

proc miqt_exec_callback_cQFileSystemModel_data(vtbl: pointer, self: pointer, index: pointer, role: cint): pointer {.cdecl.} =
  let vtbl = cast[ptr QFileSystemModelVTable](vtbl)
  let self = QFileSystemModel(h: self)
  let slotval1 = gen_qabstractitemmodel_types.QModelIndex(h: index)
  let slotval2 = role
  var virtualReturn = vtbl[].data(self, slotval1, slotval2)
  virtualReturn.h

proc QFileSystemModelsetData*(self: gen_qfilesystemmodel_types.QFileSystemModel, index: gen_qabstractitemmodel_types.QModelIndex, value: gen_qvariant_types.QVariant, role: cint): bool =
  fcQFileSystemModel_virtualbase_setData(self.h, index.h, value.h, role)

proc miqt_exec_callback_cQFileSystemModel_setData(vtbl: pointer, self: pointer, index: pointer, value: pointer, role: cint): bool {.cdecl.} =
  let vtbl = cast[ptr QFileSystemModelVTable](vtbl)
  let self = QFileSystemModel(h: self)
  let slotval1 = gen_qabstractitemmodel_types.QModelIndex(h: index)
  let slotval2 = gen_qvariant_types.QVariant(h: value)
  let slotval3 = role
  var virtualReturn = vtbl[].setData(self, slotval1, slotval2, slotval3)
  virtualReturn

proc QFileSystemModelheaderData*(self: gen_qfilesystemmodel_types.QFileSystemModel, section: cint, orientation: cint, role: cint): gen_qvariant_types.QVariant =
  gen_qvariant_types.QVariant(h: fcQFileSystemModel_virtualbase_headerData(self.h, section, cint(orientation), role))

proc miqt_exec_callback_cQFileSystemModel_headerData(vtbl: pointer, self: pointer, section: cint, orientation: cint, role: cint): pointer {.cdecl.} =
  let vtbl = cast[ptr QFileSystemModelVTable](vtbl)
  let self = QFileSystemModel(h: self)
  let slotval1 = section
  let slotval2 = cint(orientation)
  let slotval3 = role
  var virtualReturn = vtbl[].headerData(self, slotval1, slotval2, slotval3)
  virtualReturn.h

proc QFileSystemModelflags*(self: gen_qfilesystemmodel_types.QFileSystemModel, index: gen_qabstractitemmodel_types.QModelIndex): cint =
  cint(fcQFileSystemModel_virtualbase_flags(self.h, index.h))

proc miqt_exec_callback_cQFileSystemModel_flags(vtbl: pointer, self: pointer, index: pointer): cint {.cdecl.} =
  let vtbl = cast[ptr QFileSystemModelVTable](vtbl)
  let self = QFileSystemModel(h: self)
  let slotval1 = gen_qabstractitemmodel_types.QModelIndex(h: index)
  var virtualReturn = vtbl[].flags(self, slotval1)
  cint(virtualReturn)

proc QFileSystemModelsort*(self: gen_qfilesystemmodel_types.QFileSystemModel, column: cint, order: cint): void =
  fcQFileSystemModel_virtualbase_sort(self.h, column, cint(order))

proc miqt_exec_callback_cQFileSystemModel_sort(vtbl: pointer, self: pointer, column: cint, order: cint): void {.cdecl.} =
  let vtbl = cast[ptr QFileSystemModelVTable](vtbl)
  let self = QFileSystemModel(h: self)
  let slotval1 = column
  let slotval2 = cint(order)
  vtbl[].sort(self, slotval1, slotval2)

proc QFileSystemModelmimeTypes*(self: gen_qfilesystemmodel_types.QFileSystemModel, ): seq[string] =
  var v_ma = fcQFileSystemModel_virtualbase_mimeTypes(self.h)
  var vx_ret = newSeq[string](int(v_ma.len))
  let v_outCast = cast[ptr UncheckedArray[struct_miqt_string]](v_ma.data)
  for i in 0 ..< v_ma.len:
    let vx_lv_ms = v_outCast[i]
    let vx_lvx_ret = string.fromBytes(toOpenArrayByte(vx_lv_ms.data, 0, int(vx_lv_ms.len)-1))
    c_free(vx_lv_ms.data)
    vx_ret[i] = vx_lvx_ret
  vx_ret

proc miqt_exec_callback_cQFileSystemModel_mimeTypes(vtbl: pointer, self: pointer): struct_miqt_array {.cdecl.} =
  let vtbl = cast[ptr QFileSystemModelVTable](vtbl)
  let self = QFileSystemModel(h: self)
  var virtualReturn = vtbl[].mimeTypes(self)
  var virtualReturn_CArray = newSeq[struct_miqt_string](len(virtualReturn))
  for i in 0..<len(virtualReturn):
    virtualReturn_CArray[i] = struct_miqt_string(data: virtualReturn[i], len: csize_t(len(virtualReturn[i])))

  struct_miqt_array(len: csize_t(len(virtualReturn)), data: if len(virtualReturn) == 0: nil else: addr(virtualReturn_CArray[0]))

proc QFileSystemModelmimeData*(self: gen_qfilesystemmodel_types.QFileSystemModel, indexes: seq[gen_qabstractitemmodel_types.QModelIndex]): gen_qmimedata_types.QMimeData =
  var indexes_CArray = newSeq[pointer](len(indexes))
  for i in 0..<len(indexes):
    indexes_CArray[i] = indexes[i].h

  gen_qmimedata_types.QMimeData(h: fcQFileSystemModel_virtualbase_mimeData(self.h, struct_miqt_array(len: csize_t(len(indexes)), data: if len(indexes) == 0: nil else: addr(indexes_CArray[0]))))

proc miqt_exec_callback_cQFileSystemModel_mimeData(vtbl: pointer, self: pointer, indexes: struct_miqt_array): pointer {.cdecl.} =
  let vtbl = cast[ptr QFileSystemModelVTable](vtbl)
  let self = QFileSystemModel(h: self)
  var vindexes_ma = indexes
  var vindexesx_ret = newSeq[gen_qabstractitemmodel_types.QModelIndex](int(vindexes_ma.len))
  let vindexes_outCast = cast[ptr UncheckedArray[pointer]](vindexes_ma.data)
  for i in 0 ..< vindexes_ma.len:
    vindexesx_ret[i] = gen_qabstractitemmodel_types.QModelIndex(h: vindexes_outCast[i])
  let slotval1 = vindexesx_ret
  var virtualReturn = vtbl[].mimeData(self, slotval1)
  virtualReturn.h

proc QFileSystemModeldropMimeData*(self: gen_qfilesystemmodel_types.QFileSystemModel, data: gen_qmimedata_types.QMimeData, action: cint, row: cint, column: cint, parent: gen_qabstractitemmodel_types.QModelIndex): bool =
  fcQFileSystemModel_virtualbase_dropMimeData(self.h, data.h, cint(action), row, column, parent.h)

proc miqt_exec_callback_cQFileSystemModel_dropMimeData(vtbl: pointer, self: pointer, data: pointer, action: cint, row: cint, column: cint, parent: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QFileSystemModelVTable](vtbl)
  let self = QFileSystemModel(h: self)
  let slotval1 = gen_qmimedata_types.QMimeData(h: data)
  let slotval2 = cint(action)
  let slotval3 = row
  let slotval4 = column
  let slotval5 = gen_qabstractitemmodel_types.QModelIndex(h: parent)
  var virtualReturn = vtbl[].dropMimeData(self, slotval1, slotval2, slotval3, slotval4, slotval5)
  virtualReturn

proc QFileSystemModelsupportedDropActions*(self: gen_qfilesystemmodel_types.QFileSystemModel, ): cint =
  cint(fcQFileSystemModel_virtualbase_supportedDropActions(self.h))

proc miqt_exec_callback_cQFileSystemModel_supportedDropActions(vtbl: pointer, self: pointer): cint {.cdecl.} =
  let vtbl = cast[ptr QFileSystemModelVTable](vtbl)
  let self = QFileSystemModel(h: self)
  var virtualReturn = vtbl[].supportedDropActions(self)
  cint(virtualReturn)

proc QFileSystemModelroleNames*(self: gen_qfilesystemmodel_types.QFileSystemModel, ): Table[cint,seq[byte]] =
  var v_mm = fcQFileSystemModel_virtualbase_roleNames(self.h)
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

proc miqt_exec_callback_cQFileSystemModel_roleNames(vtbl: pointer, self: pointer): struct_miqt_map {.cdecl.} =
  let vtbl = cast[ptr QFileSystemModelVTable](vtbl)
  let self = QFileSystemModel(h: self)
  var virtualReturn = vtbl[].roleNames(self)
  var virtualReturn_Keys_CArray = newSeq[cint](len(virtualReturn))
  var virtualReturn_Values_CArray = newSeq[struct_miqt_string](len(virtualReturn))
  var virtualReturn_ctr = 0
  for virtualReturnk, virtualReturnv in virtualReturn:
    virtualReturn_Keys_CArray[virtualReturn_ctr] = virtualReturn_k
    virtualReturn_Values_CArray[virtualReturn_ctr] = struct_miqt_string(data: cast[cstring](if len(virtualReturn_v) == 0: nil else: unsafeAddr virtualReturn_v[0]), len: csize_t(len(virtualReturn_v)))
    virtualReturn_ctr += 1

  struct_miqt_map(len: csize_t(len(virtualReturn)),keys: if len(virtualReturn) == 0: nil else: addr(virtualReturn_Keys_CArray[0]), values: if len(virtualReturn) == 0: nil else: addr(virtualReturn_Values_CArray[0]),)

proc QFileSystemModeltimerEvent*(self: gen_qfilesystemmodel_types.QFileSystemModel, event: gen_qcoreevent_types.QTimerEvent): void =
  fcQFileSystemModel_virtualbase_timerEvent(self.h, event.h)

proc miqt_exec_callback_cQFileSystemModel_timerEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QFileSystemModelVTable](vtbl)
  let self = QFileSystemModel(h: self)
  let slotval1 = gen_qcoreevent_types.QTimerEvent(h: event)
  vtbl[].timerEvent(self, slotval1)

proc QFileSystemModelevent*(self: gen_qfilesystemmodel_types.QFileSystemModel, event: gen_qcoreevent_types.QEvent): bool =
  fcQFileSystemModel_virtualbase_event(self.h, event.h)

proc miqt_exec_callback_cQFileSystemModel_event(vtbl: pointer, self: pointer, event: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QFileSystemModelVTable](vtbl)
  let self = QFileSystemModel(h: self)
  let slotval1 = gen_qcoreevent_types.QEvent(h: event)
  var virtualReturn = vtbl[].event(self, slotval1)
  virtualReturn

proc QFileSystemModelsetHeaderData*(self: gen_qfilesystemmodel_types.QFileSystemModel, section: cint, orientation: cint, value: gen_qvariant_types.QVariant, role: cint): bool =
  fcQFileSystemModel_virtualbase_setHeaderData(self.h, section, cint(orientation), value.h, role)

proc miqt_exec_callback_cQFileSystemModel_setHeaderData(vtbl: pointer, self: pointer, section: cint, orientation: cint, value: pointer, role: cint): bool {.cdecl.} =
  let vtbl = cast[ptr QFileSystemModelVTable](vtbl)
  let self = QFileSystemModel(h: self)
  let slotval1 = section
  let slotval2 = cint(orientation)
  let slotval3 = gen_qvariant_types.QVariant(h: value)
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

    var v_entry_Value = gen_qvariant_types.QVariant(h: v_Values[i])

    vx_ret[v_entry_Key] = v_entry_Value
  vx_ret

proc miqt_exec_callback_cQFileSystemModel_itemData(vtbl: pointer, self: pointer, index: pointer): struct_miqt_map {.cdecl.} =
  let vtbl = cast[ptr QFileSystemModelVTable](vtbl)
  let self = QFileSystemModel(h: self)
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

proc QFileSystemModelsetItemData*(self: gen_qfilesystemmodel_types.QFileSystemModel, index: gen_qabstractitemmodel_types.QModelIndex, roles: Table[cint,gen_qvariant_types.QVariant]): bool =
  var roles_Keys_CArray = newSeq[cint](len(roles))
  var roles_Values_CArray = newSeq[pointer](len(roles))
  var roles_ctr = 0
  for rolesk, rolesv in roles:
    roles_Keys_CArray[roles_ctr] = roles_k
    roles_Values_CArray[roles_ctr] = roles_v.h
    roles_ctr += 1

  fcQFileSystemModel_virtualbase_setItemData(self.h, index.h, struct_miqt_map(len: csize_t(len(roles)),keys: if len(roles) == 0: nil else: addr(roles_Keys_CArray[0]), values: if len(roles) == 0: nil else: addr(roles_Values_CArray[0]),))

proc miqt_exec_callback_cQFileSystemModel_setItemData(vtbl: pointer, self: pointer, index: pointer, roles: struct_miqt_map): bool {.cdecl.} =
  let vtbl = cast[ptr QFileSystemModelVTable](vtbl)
  let self = QFileSystemModel(h: self)
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

proc QFileSystemModelclearItemData*(self: gen_qfilesystemmodel_types.QFileSystemModel, index: gen_qabstractitemmodel_types.QModelIndex): bool =
  fcQFileSystemModel_virtualbase_clearItemData(self.h, index.h)

proc miqt_exec_callback_cQFileSystemModel_clearItemData(vtbl: pointer, self: pointer, index: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QFileSystemModelVTable](vtbl)
  let self = QFileSystemModel(h: self)
  let slotval1 = gen_qabstractitemmodel_types.QModelIndex(h: index)
  var virtualReturn = vtbl[].clearItemData(self, slotval1)
  virtualReturn

proc QFileSystemModelcanDropMimeData*(self: gen_qfilesystemmodel_types.QFileSystemModel, data: gen_qmimedata_types.QMimeData, action: cint, row: cint, column: cint, parent: gen_qabstractitemmodel_types.QModelIndex): bool =
  fcQFileSystemModel_virtualbase_canDropMimeData(self.h, data.h, cint(action), row, column, parent.h)

proc miqt_exec_callback_cQFileSystemModel_canDropMimeData(vtbl: pointer, self: pointer, data: pointer, action: cint, row: cint, column: cint, parent: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QFileSystemModelVTable](vtbl)
  let self = QFileSystemModel(h: self)
  let slotval1 = gen_qmimedata_types.QMimeData(h: data)
  let slotval2 = cint(action)
  let slotval3 = row
  let slotval4 = column
  let slotval5 = gen_qabstractitemmodel_types.QModelIndex(h: parent)
  var virtualReturn = vtbl[].canDropMimeData(self, slotval1, slotval2, slotval3, slotval4, slotval5)
  virtualReturn

proc QFileSystemModelsupportedDragActions*(self: gen_qfilesystemmodel_types.QFileSystemModel, ): cint =
  cint(fcQFileSystemModel_virtualbase_supportedDragActions(self.h))

proc miqt_exec_callback_cQFileSystemModel_supportedDragActions(vtbl: pointer, self: pointer): cint {.cdecl.} =
  let vtbl = cast[ptr QFileSystemModelVTable](vtbl)
  let self = QFileSystemModel(h: self)
  var virtualReturn = vtbl[].supportedDragActions(self)
  cint(virtualReturn)

proc QFileSystemModelinsertRows*(self: gen_qfilesystemmodel_types.QFileSystemModel, row: cint, count: cint, parent: gen_qabstractitemmodel_types.QModelIndex): bool =
  fcQFileSystemModel_virtualbase_insertRows(self.h, row, count, parent.h)

proc miqt_exec_callback_cQFileSystemModel_insertRows(vtbl: pointer, self: pointer, row: cint, count: cint, parent: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QFileSystemModelVTable](vtbl)
  let self = QFileSystemModel(h: self)
  let slotval1 = row
  let slotval2 = count
  let slotval3 = gen_qabstractitemmodel_types.QModelIndex(h: parent)
  var virtualReturn = vtbl[].insertRows(self, slotval1, slotval2, slotval3)
  virtualReturn

proc QFileSystemModelinsertColumns*(self: gen_qfilesystemmodel_types.QFileSystemModel, column: cint, count: cint, parent: gen_qabstractitemmodel_types.QModelIndex): bool =
  fcQFileSystemModel_virtualbase_insertColumns(self.h, column, count, parent.h)

proc miqt_exec_callback_cQFileSystemModel_insertColumns(vtbl: pointer, self: pointer, column: cint, count: cint, parent: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QFileSystemModelVTable](vtbl)
  let self = QFileSystemModel(h: self)
  let slotval1 = column
  let slotval2 = count
  let slotval3 = gen_qabstractitemmodel_types.QModelIndex(h: parent)
  var virtualReturn = vtbl[].insertColumns(self, slotval1, slotval2, slotval3)
  virtualReturn

proc QFileSystemModelremoveRows*(self: gen_qfilesystemmodel_types.QFileSystemModel, row: cint, count: cint, parent: gen_qabstractitemmodel_types.QModelIndex): bool =
  fcQFileSystemModel_virtualbase_removeRows(self.h, row, count, parent.h)

proc miqt_exec_callback_cQFileSystemModel_removeRows(vtbl: pointer, self: pointer, row: cint, count: cint, parent: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QFileSystemModelVTable](vtbl)
  let self = QFileSystemModel(h: self)
  let slotval1 = row
  let slotval2 = count
  let slotval3 = gen_qabstractitemmodel_types.QModelIndex(h: parent)
  var virtualReturn = vtbl[].removeRows(self, slotval1, slotval2, slotval3)
  virtualReturn

proc QFileSystemModelremoveColumns*(self: gen_qfilesystemmodel_types.QFileSystemModel, column: cint, count: cint, parent: gen_qabstractitemmodel_types.QModelIndex): bool =
  fcQFileSystemModel_virtualbase_removeColumns(self.h, column, count, parent.h)

proc miqt_exec_callback_cQFileSystemModel_removeColumns(vtbl: pointer, self: pointer, column: cint, count: cint, parent: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QFileSystemModelVTable](vtbl)
  let self = QFileSystemModel(h: self)
  let slotval1 = column
  let slotval2 = count
  let slotval3 = gen_qabstractitemmodel_types.QModelIndex(h: parent)
  var virtualReturn = vtbl[].removeColumns(self, slotval1, slotval2, slotval3)
  virtualReturn

proc QFileSystemModelmoveRows*(self: gen_qfilesystemmodel_types.QFileSystemModel, sourceParent: gen_qabstractitemmodel_types.QModelIndex, sourceRow: cint, count: cint, destinationParent: gen_qabstractitemmodel_types.QModelIndex, destinationChild: cint): bool =
  fcQFileSystemModel_virtualbase_moveRows(self.h, sourceParent.h, sourceRow, count, destinationParent.h, destinationChild)

proc miqt_exec_callback_cQFileSystemModel_moveRows(vtbl: pointer, self: pointer, sourceParent: pointer, sourceRow: cint, count: cint, destinationParent: pointer, destinationChild: cint): bool {.cdecl.} =
  let vtbl = cast[ptr QFileSystemModelVTable](vtbl)
  let self = QFileSystemModel(h: self)
  let slotval1 = gen_qabstractitemmodel_types.QModelIndex(h: sourceParent)
  let slotval2 = sourceRow
  let slotval3 = count
  let slotval4 = gen_qabstractitemmodel_types.QModelIndex(h: destinationParent)
  let slotval5 = destinationChild
  var virtualReturn = vtbl[].moveRows(self, slotval1, slotval2, slotval3, slotval4, slotval5)
  virtualReturn

proc QFileSystemModelmoveColumns*(self: gen_qfilesystemmodel_types.QFileSystemModel, sourceParent: gen_qabstractitemmodel_types.QModelIndex, sourceColumn: cint, count: cint, destinationParent: gen_qabstractitemmodel_types.QModelIndex, destinationChild: cint): bool =
  fcQFileSystemModel_virtualbase_moveColumns(self.h, sourceParent.h, sourceColumn, count, destinationParent.h, destinationChild)

proc miqt_exec_callback_cQFileSystemModel_moveColumns(vtbl: pointer, self: pointer, sourceParent: pointer, sourceColumn: cint, count: cint, destinationParent: pointer, destinationChild: cint): bool {.cdecl.} =
  let vtbl = cast[ptr QFileSystemModelVTable](vtbl)
  let self = QFileSystemModel(h: self)
  let slotval1 = gen_qabstractitemmodel_types.QModelIndex(h: sourceParent)
  let slotval2 = sourceColumn
  let slotval3 = count
  let slotval4 = gen_qabstractitemmodel_types.QModelIndex(h: destinationParent)
  let slotval5 = destinationChild
  var virtualReturn = vtbl[].moveColumns(self, slotval1, slotval2, slotval3, slotval4, slotval5)
  virtualReturn

proc QFileSystemModelbuddy*(self: gen_qfilesystemmodel_types.QFileSystemModel, index: gen_qabstractitemmodel_types.QModelIndex): gen_qabstractitemmodel_types.QModelIndex =
  gen_qabstractitemmodel_types.QModelIndex(h: fcQFileSystemModel_virtualbase_buddy(self.h, index.h))

proc miqt_exec_callback_cQFileSystemModel_buddy(vtbl: pointer, self: pointer, index: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QFileSystemModelVTable](vtbl)
  let self = QFileSystemModel(h: self)
  let slotval1 = gen_qabstractitemmodel_types.QModelIndex(h: index)
  var virtualReturn = vtbl[].buddy(self, slotval1)
  virtualReturn.h

proc QFileSystemModelmatch*(self: gen_qfilesystemmodel_types.QFileSystemModel, start: gen_qabstractitemmodel_types.QModelIndex, role: cint, value: gen_qvariant_types.QVariant, hits: cint, flags: cint): seq[gen_qabstractitemmodel_types.QModelIndex] =
  var v_ma = fcQFileSystemModel_virtualbase_match(self.h, start.h, role, value.h, hits, cint(flags))
  var vx_ret = newSeq[gen_qabstractitemmodel_types.QModelIndex](int(v_ma.len))
  let v_outCast = cast[ptr UncheckedArray[pointer]](v_ma.data)
  for i in 0 ..< v_ma.len:
    vx_ret[i] = gen_qabstractitemmodel_types.QModelIndex(h: v_outCast[i])
  vx_ret

proc miqt_exec_callback_cQFileSystemModel_match(vtbl: pointer, self: pointer, start: pointer, role: cint, value: pointer, hits: cint, flags: cint): struct_miqt_array {.cdecl.} =
  let vtbl = cast[ptr QFileSystemModelVTable](vtbl)
  let self = QFileSystemModel(h: self)
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

proc QFileSystemModelspan*(self: gen_qfilesystemmodel_types.QFileSystemModel, index: gen_qabstractitemmodel_types.QModelIndex): gen_qsize_types.QSize =
  gen_qsize_types.QSize(h: fcQFileSystemModel_virtualbase_span(self.h, index.h))

proc miqt_exec_callback_cQFileSystemModel_span(vtbl: pointer, self: pointer, index: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QFileSystemModelVTable](vtbl)
  let self = QFileSystemModel(h: self)
  let slotval1 = gen_qabstractitemmodel_types.QModelIndex(h: index)
  var virtualReturn = vtbl[].span(self, slotval1)
  virtualReturn.h

proc QFileSystemModelmultiData*(self: gen_qfilesystemmodel_types.QFileSystemModel, index: gen_qabstractitemmodel_types.QModelIndex, roleDataSpan: gen_qabstractitemmodel_types.QModelRoleDataSpan): void =
  fcQFileSystemModel_virtualbase_multiData(self.h, index.h, roleDataSpan.h)

proc miqt_exec_callback_cQFileSystemModel_multiData(vtbl: pointer, self: pointer, index: pointer, roleDataSpan: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QFileSystemModelVTable](vtbl)
  let self = QFileSystemModel(h: self)
  let slotval1 = gen_qabstractitemmodel_types.QModelIndex(h: index)
  let slotval2 = gen_qabstractitemmodel_types.QModelRoleDataSpan(h: roleDataSpan)
  vtbl[].multiData(self, slotval1, slotval2)

proc QFileSystemModelsubmit*(self: gen_qfilesystemmodel_types.QFileSystemModel, ): bool =
  fcQFileSystemModel_virtualbase_submit(self.h)

proc miqt_exec_callback_cQFileSystemModel_submit(vtbl: pointer, self: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QFileSystemModelVTable](vtbl)
  let self = QFileSystemModel(h: self)
  var virtualReturn = vtbl[].submit(self)
  virtualReturn

proc QFileSystemModelrevert*(self: gen_qfilesystemmodel_types.QFileSystemModel, ): void =
  fcQFileSystemModel_virtualbase_revert(self.h)

proc miqt_exec_callback_cQFileSystemModel_revert(vtbl: pointer, self: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QFileSystemModelVTable](vtbl)
  let self = QFileSystemModel(h: self)
  vtbl[].revert(self)

proc QFileSystemModelresetInternalData*(self: gen_qfilesystemmodel_types.QFileSystemModel, ): void =
  fcQFileSystemModel_virtualbase_resetInternalData(self.h)

proc miqt_exec_callback_cQFileSystemModel_resetInternalData(vtbl: pointer, self: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QFileSystemModelVTable](vtbl)
  let self = QFileSystemModel(h: self)
  vtbl[].resetInternalData(self)

proc QFileSystemModeleventFilter*(self: gen_qfilesystemmodel_types.QFileSystemModel, watched: gen_qobject_types.QObject, event: gen_qcoreevent_types.QEvent): bool =
  fcQFileSystemModel_virtualbase_eventFilter(self.h, watched.h, event.h)

proc miqt_exec_callback_cQFileSystemModel_eventFilter(vtbl: pointer, self: pointer, watched: pointer, event: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QFileSystemModelVTable](vtbl)
  let self = QFileSystemModel(h: self)
  let slotval1 = gen_qobject_types.QObject(h: watched)
  let slotval2 = gen_qcoreevent_types.QEvent(h: event)
  var virtualReturn = vtbl[].eventFilter(self, slotval1, slotval2)
  virtualReturn

proc QFileSystemModelchildEvent*(self: gen_qfilesystemmodel_types.QFileSystemModel, event: gen_qcoreevent_types.QChildEvent): void =
  fcQFileSystemModel_virtualbase_childEvent(self.h, event.h)

proc miqt_exec_callback_cQFileSystemModel_childEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QFileSystemModelVTable](vtbl)
  let self = QFileSystemModel(h: self)
  let slotval1 = gen_qcoreevent_types.QChildEvent(h: event)
  vtbl[].childEvent(self, slotval1)

proc QFileSystemModelcustomEvent*(self: gen_qfilesystemmodel_types.QFileSystemModel, event: gen_qcoreevent_types.QEvent): void =
  fcQFileSystemModel_virtualbase_customEvent(self.h, event.h)

proc miqt_exec_callback_cQFileSystemModel_customEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QFileSystemModelVTable](vtbl)
  let self = QFileSystemModel(h: self)
  let slotval1 = gen_qcoreevent_types.QEvent(h: event)
  vtbl[].customEvent(self, slotval1)

proc QFileSystemModelconnectNotify*(self: gen_qfilesystemmodel_types.QFileSystemModel, signal: gen_qmetaobject_types.QMetaMethod): void =
  fcQFileSystemModel_virtualbase_connectNotify(self.h, signal.h)

proc miqt_exec_callback_cQFileSystemModel_connectNotify(vtbl: pointer, self: pointer, signal: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QFileSystemModelVTable](vtbl)
  let self = QFileSystemModel(h: self)
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal)
  vtbl[].connectNotify(self, slotval1)

proc QFileSystemModeldisconnectNotify*(self: gen_qfilesystemmodel_types.QFileSystemModel, signal: gen_qmetaobject_types.QMetaMethod): void =
  fcQFileSystemModel_virtualbase_disconnectNotify(self.h, signal.h)

proc miqt_exec_callback_cQFileSystemModel_disconnectNotify(vtbl: pointer, self: pointer, signal: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QFileSystemModelVTable](vtbl)
  let self = QFileSystemModel(h: self)
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal)
  vtbl[].disconnectNotify(self, slotval1)

proc create*(T: type gen_qfilesystemmodel_types.QFileSystemModel,
    vtbl: ref QFileSystemModelVTable = nil): gen_qfilesystemmodel_types.QFileSystemModel =
  let vtbl = if vtbl == nil: new QFileSystemModelVTable else: vtbl
  GC_ref(vtbl)
  vtbl.vtbl.destructor = proc(vtbl: ptr cQFileSystemModelVTable, _: ptr cQFileSystemModel) {.cdecl.} =
    let vtbl = cast[ref QFileSystemModelVTable](vtbl)
    GC_unref(vtbl)
  if not isNil(vtbl.metaObject):
    vtbl[].vtbl.metaObject = miqt_exec_callback_cQFileSystemModel_metaObject
  if not isNil(vtbl.metacast):
    vtbl[].vtbl.metacast = miqt_exec_callback_cQFileSystemModel_metacast
  if not isNil(vtbl.metacall):
    vtbl[].vtbl.metacall = miqt_exec_callback_cQFileSystemModel_metacall
  if not isNil(vtbl.index):
    vtbl[].vtbl.index = miqt_exec_callback_cQFileSystemModel_index
  if not isNil(vtbl.parent):
    vtbl[].vtbl.parent = miqt_exec_callback_cQFileSystemModel_parent
  if not isNil(vtbl.sibling):
    vtbl[].vtbl.sibling = miqt_exec_callback_cQFileSystemModel_sibling
  if not isNil(vtbl.hasChildren):
    vtbl[].vtbl.hasChildren = miqt_exec_callback_cQFileSystemModel_hasChildren
  if not isNil(vtbl.canFetchMore):
    vtbl[].vtbl.canFetchMore = miqt_exec_callback_cQFileSystemModel_canFetchMore
  if not isNil(vtbl.fetchMore):
    vtbl[].vtbl.fetchMore = miqt_exec_callback_cQFileSystemModel_fetchMore
  if not isNil(vtbl.rowCount):
    vtbl[].vtbl.rowCount = miqt_exec_callback_cQFileSystemModel_rowCount
  if not isNil(vtbl.columnCount):
    vtbl[].vtbl.columnCount = miqt_exec_callback_cQFileSystemModel_columnCount
  if not isNil(vtbl.data):
    vtbl[].vtbl.data = miqt_exec_callback_cQFileSystemModel_data
  if not isNil(vtbl.setData):
    vtbl[].vtbl.setData = miqt_exec_callback_cQFileSystemModel_setData
  if not isNil(vtbl.headerData):
    vtbl[].vtbl.headerData = miqt_exec_callback_cQFileSystemModel_headerData
  if not isNil(vtbl.flags):
    vtbl[].vtbl.flags = miqt_exec_callback_cQFileSystemModel_flags
  if not isNil(vtbl.sort):
    vtbl[].vtbl.sort = miqt_exec_callback_cQFileSystemModel_sort
  if not isNil(vtbl.mimeTypes):
    vtbl[].vtbl.mimeTypes = miqt_exec_callback_cQFileSystemModel_mimeTypes
  if not isNil(vtbl.mimeData):
    vtbl[].vtbl.mimeData = miqt_exec_callback_cQFileSystemModel_mimeData
  if not isNil(vtbl.dropMimeData):
    vtbl[].vtbl.dropMimeData = miqt_exec_callback_cQFileSystemModel_dropMimeData
  if not isNil(vtbl.supportedDropActions):
    vtbl[].vtbl.supportedDropActions = miqt_exec_callback_cQFileSystemModel_supportedDropActions
  if not isNil(vtbl.roleNames):
    vtbl[].vtbl.roleNames = miqt_exec_callback_cQFileSystemModel_roleNames
  if not isNil(vtbl.timerEvent):
    vtbl[].vtbl.timerEvent = miqt_exec_callback_cQFileSystemModel_timerEvent
  if not isNil(vtbl.event):
    vtbl[].vtbl.event = miqt_exec_callback_cQFileSystemModel_event
  if not isNil(vtbl.setHeaderData):
    vtbl[].vtbl.setHeaderData = miqt_exec_callback_cQFileSystemModel_setHeaderData
  if not isNil(vtbl.itemData):
    vtbl[].vtbl.itemData = miqt_exec_callback_cQFileSystemModel_itemData
  if not isNil(vtbl.setItemData):
    vtbl[].vtbl.setItemData = miqt_exec_callback_cQFileSystemModel_setItemData
  if not isNil(vtbl.clearItemData):
    vtbl[].vtbl.clearItemData = miqt_exec_callback_cQFileSystemModel_clearItemData
  if not isNil(vtbl.canDropMimeData):
    vtbl[].vtbl.canDropMimeData = miqt_exec_callback_cQFileSystemModel_canDropMimeData
  if not isNil(vtbl.supportedDragActions):
    vtbl[].vtbl.supportedDragActions = miqt_exec_callback_cQFileSystemModel_supportedDragActions
  if not isNil(vtbl.insertRows):
    vtbl[].vtbl.insertRows = miqt_exec_callback_cQFileSystemModel_insertRows
  if not isNil(vtbl.insertColumns):
    vtbl[].vtbl.insertColumns = miqt_exec_callback_cQFileSystemModel_insertColumns
  if not isNil(vtbl.removeRows):
    vtbl[].vtbl.removeRows = miqt_exec_callback_cQFileSystemModel_removeRows
  if not isNil(vtbl.removeColumns):
    vtbl[].vtbl.removeColumns = miqt_exec_callback_cQFileSystemModel_removeColumns
  if not isNil(vtbl.moveRows):
    vtbl[].vtbl.moveRows = miqt_exec_callback_cQFileSystemModel_moveRows
  if not isNil(vtbl.moveColumns):
    vtbl[].vtbl.moveColumns = miqt_exec_callback_cQFileSystemModel_moveColumns
  if not isNil(vtbl.buddy):
    vtbl[].vtbl.buddy = miqt_exec_callback_cQFileSystemModel_buddy
  if not isNil(vtbl.match):
    vtbl[].vtbl.match = miqt_exec_callback_cQFileSystemModel_match
  if not isNil(vtbl.span):
    vtbl[].vtbl.span = miqt_exec_callback_cQFileSystemModel_span
  if not isNil(vtbl.multiData):
    vtbl[].vtbl.multiData = miqt_exec_callback_cQFileSystemModel_multiData
  if not isNil(vtbl.submit):
    vtbl[].vtbl.submit = miqt_exec_callback_cQFileSystemModel_submit
  if not isNil(vtbl.revert):
    vtbl[].vtbl.revert = miqt_exec_callback_cQFileSystemModel_revert
  if not isNil(vtbl.resetInternalData):
    vtbl[].vtbl.resetInternalData = miqt_exec_callback_cQFileSystemModel_resetInternalData
  if not isNil(vtbl.eventFilter):
    vtbl[].vtbl.eventFilter = miqt_exec_callback_cQFileSystemModel_eventFilter
  if not isNil(vtbl.childEvent):
    vtbl[].vtbl.childEvent = miqt_exec_callback_cQFileSystemModel_childEvent
  if not isNil(vtbl.customEvent):
    vtbl[].vtbl.customEvent = miqt_exec_callback_cQFileSystemModel_customEvent
  if not isNil(vtbl.connectNotify):
    vtbl[].vtbl.connectNotify = miqt_exec_callback_cQFileSystemModel_connectNotify
  if not isNil(vtbl.disconnectNotify):
    vtbl[].vtbl.disconnectNotify = miqt_exec_callback_cQFileSystemModel_disconnectNotify
  gen_qfilesystemmodel_types.QFileSystemModel(h: fcQFileSystemModel_new(addr(vtbl[]), ))

proc create*(T: type gen_qfilesystemmodel_types.QFileSystemModel,
    parent: gen_qobject_types.QObject,
    vtbl: ref QFileSystemModelVTable = nil): gen_qfilesystemmodel_types.QFileSystemModel =
  let vtbl = if vtbl == nil: new QFileSystemModelVTable else: vtbl
  GC_ref(vtbl)
  vtbl.vtbl.destructor = proc(vtbl: ptr cQFileSystemModelVTable, _: ptr cQFileSystemModel) {.cdecl.} =
    let vtbl = cast[ref QFileSystemModelVTable](vtbl)
    GC_unref(vtbl)
  if not isNil(vtbl.metaObject):
    vtbl[].vtbl.metaObject = miqt_exec_callback_cQFileSystemModel_metaObject
  if not isNil(vtbl.metacast):
    vtbl[].vtbl.metacast = miqt_exec_callback_cQFileSystemModel_metacast
  if not isNil(vtbl.metacall):
    vtbl[].vtbl.metacall = miqt_exec_callback_cQFileSystemModel_metacall
  if not isNil(vtbl.index):
    vtbl[].vtbl.index = miqt_exec_callback_cQFileSystemModel_index
  if not isNil(vtbl.parent):
    vtbl[].vtbl.parent = miqt_exec_callback_cQFileSystemModel_parent
  if not isNil(vtbl.sibling):
    vtbl[].vtbl.sibling = miqt_exec_callback_cQFileSystemModel_sibling
  if not isNil(vtbl.hasChildren):
    vtbl[].vtbl.hasChildren = miqt_exec_callback_cQFileSystemModel_hasChildren
  if not isNil(vtbl.canFetchMore):
    vtbl[].vtbl.canFetchMore = miqt_exec_callback_cQFileSystemModel_canFetchMore
  if not isNil(vtbl.fetchMore):
    vtbl[].vtbl.fetchMore = miqt_exec_callback_cQFileSystemModel_fetchMore
  if not isNil(vtbl.rowCount):
    vtbl[].vtbl.rowCount = miqt_exec_callback_cQFileSystemModel_rowCount
  if not isNil(vtbl.columnCount):
    vtbl[].vtbl.columnCount = miqt_exec_callback_cQFileSystemModel_columnCount
  if not isNil(vtbl.data):
    vtbl[].vtbl.data = miqt_exec_callback_cQFileSystemModel_data
  if not isNil(vtbl.setData):
    vtbl[].vtbl.setData = miqt_exec_callback_cQFileSystemModel_setData
  if not isNil(vtbl.headerData):
    vtbl[].vtbl.headerData = miqt_exec_callback_cQFileSystemModel_headerData
  if not isNil(vtbl.flags):
    vtbl[].vtbl.flags = miqt_exec_callback_cQFileSystemModel_flags
  if not isNil(vtbl.sort):
    vtbl[].vtbl.sort = miqt_exec_callback_cQFileSystemModel_sort
  if not isNil(vtbl.mimeTypes):
    vtbl[].vtbl.mimeTypes = miqt_exec_callback_cQFileSystemModel_mimeTypes
  if not isNil(vtbl.mimeData):
    vtbl[].vtbl.mimeData = miqt_exec_callback_cQFileSystemModel_mimeData
  if not isNil(vtbl.dropMimeData):
    vtbl[].vtbl.dropMimeData = miqt_exec_callback_cQFileSystemModel_dropMimeData
  if not isNil(vtbl.supportedDropActions):
    vtbl[].vtbl.supportedDropActions = miqt_exec_callback_cQFileSystemModel_supportedDropActions
  if not isNil(vtbl.roleNames):
    vtbl[].vtbl.roleNames = miqt_exec_callback_cQFileSystemModel_roleNames
  if not isNil(vtbl.timerEvent):
    vtbl[].vtbl.timerEvent = miqt_exec_callback_cQFileSystemModel_timerEvent
  if not isNil(vtbl.event):
    vtbl[].vtbl.event = miqt_exec_callback_cQFileSystemModel_event
  if not isNil(vtbl.setHeaderData):
    vtbl[].vtbl.setHeaderData = miqt_exec_callback_cQFileSystemModel_setHeaderData
  if not isNil(vtbl.itemData):
    vtbl[].vtbl.itemData = miqt_exec_callback_cQFileSystemModel_itemData
  if not isNil(vtbl.setItemData):
    vtbl[].vtbl.setItemData = miqt_exec_callback_cQFileSystemModel_setItemData
  if not isNil(vtbl.clearItemData):
    vtbl[].vtbl.clearItemData = miqt_exec_callback_cQFileSystemModel_clearItemData
  if not isNil(vtbl.canDropMimeData):
    vtbl[].vtbl.canDropMimeData = miqt_exec_callback_cQFileSystemModel_canDropMimeData
  if not isNil(vtbl.supportedDragActions):
    vtbl[].vtbl.supportedDragActions = miqt_exec_callback_cQFileSystemModel_supportedDragActions
  if not isNil(vtbl.insertRows):
    vtbl[].vtbl.insertRows = miqt_exec_callback_cQFileSystemModel_insertRows
  if not isNil(vtbl.insertColumns):
    vtbl[].vtbl.insertColumns = miqt_exec_callback_cQFileSystemModel_insertColumns
  if not isNil(vtbl.removeRows):
    vtbl[].vtbl.removeRows = miqt_exec_callback_cQFileSystemModel_removeRows
  if not isNil(vtbl.removeColumns):
    vtbl[].vtbl.removeColumns = miqt_exec_callback_cQFileSystemModel_removeColumns
  if not isNil(vtbl.moveRows):
    vtbl[].vtbl.moveRows = miqt_exec_callback_cQFileSystemModel_moveRows
  if not isNil(vtbl.moveColumns):
    vtbl[].vtbl.moveColumns = miqt_exec_callback_cQFileSystemModel_moveColumns
  if not isNil(vtbl.buddy):
    vtbl[].vtbl.buddy = miqt_exec_callback_cQFileSystemModel_buddy
  if not isNil(vtbl.match):
    vtbl[].vtbl.match = miqt_exec_callback_cQFileSystemModel_match
  if not isNil(vtbl.span):
    vtbl[].vtbl.span = miqt_exec_callback_cQFileSystemModel_span
  if not isNil(vtbl.multiData):
    vtbl[].vtbl.multiData = miqt_exec_callback_cQFileSystemModel_multiData
  if not isNil(vtbl.submit):
    vtbl[].vtbl.submit = miqt_exec_callback_cQFileSystemModel_submit
  if not isNil(vtbl.revert):
    vtbl[].vtbl.revert = miqt_exec_callback_cQFileSystemModel_revert
  if not isNil(vtbl.resetInternalData):
    vtbl[].vtbl.resetInternalData = miqt_exec_callback_cQFileSystemModel_resetInternalData
  if not isNil(vtbl.eventFilter):
    vtbl[].vtbl.eventFilter = miqt_exec_callback_cQFileSystemModel_eventFilter
  if not isNil(vtbl.childEvent):
    vtbl[].vtbl.childEvent = miqt_exec_callback_cQFileSystemModel_childEvent
  if not isNil(vtbl.customEvent):
    vtbl[].vtbl.customEvent = miqt_exec_callback_cQFileSystemModel_customEvent
  if not isNil(vtbl.connectNotify):
    vtbl[].vtbl.connectNotify = miqt_exec_callback_cQFileSystemModel_connectNotify
  if not isNil(vtbl.disconnectNotify):
    vtbl[].vtbl.disconnectNotify = miqt_exec_callback_cQFileSystemModel_disconnectNotify
  gen_qfilesystemmodel_types.QFileSystemModel(h: fcQFileSystemModel_new2(addr(vtbl[]), parent.h))

proc staticMetaObject*(_: type gen_qfilesystemmodel_types.QFileSystemModel): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQFileSystemModel_staticMetaObject())
proc delete*(self: gen_qfilesystemmodel_types.QFileSystemModel) =
  fcQFileSystemModel_delete(self.h)
