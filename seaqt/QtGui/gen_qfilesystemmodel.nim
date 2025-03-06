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

proc fcQFileSystemModel_new(): ptr cQFileSystemModel {.importc: "QFileSystemModel_new".}
proc fcQFileSystemModel_new2(parent: pointer): ptr cQFileSystemModel {.importc: "QFileSystemModel_new2".}
proc fcQFileSystemModel_metaObject(self: pointer, ): pointer {.importc: "QFileSystemModel_metaObject".}
proc fcQFileSystemModel_metacast(self: pointer, param1: cstring): pointer {.importc: "QFileSystemModel_metacast".}
proc fcQFileSystemModel_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.importc: "QFileSystemModel_metacall".}
proc fcQFileSystemModel_tr(s: cstring): struct_miqt_string {.importc: "QFileSystemModel_tr".}
proc fcQFileSystemModel_rootPathChanged(self: pointer, newPath: struct_miqt_string): void {.importc: "QFileSystemModel_rootPathChanged".}
proc fcQFileSystemModel_connect_rootPathChanged(self: pointer, slot: int) {.importc: "QFileSystemModel_connect_rootPathChanged".}
proc fcQFileSystemModel_fileRenamed(self: pointer, path: struct_miqt_string, oldName: struct_miqt_string, newName: struct_miqt_string): void {.importc: "QFileSystemModel_fileRenamed".}
proc fcQFileSystemModel_connect_fileRenamed(self: pointer, slot: int) {.importc: "QFileSystemModel_connect_fileRenamed".}
proc fcQFileSystemModel_directoryLoaded(self: pointer, path: struct_miqt_string): void {.importc: "QFileSystemModel_directoryLoaded".}
proc fcQFileSystemModel_connect_directoryLoaded(self: pointer, slot: int) {.importc: "QFileSystemModel_connect_directoryLoaded".}
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
proc fQFileSystemModel_virtualbase_metaObject(self: pointer, ): pointer{.importc: "QFileSystemModel_virtualbase_metaObject".}
proc fcQFileSystemModel_override_virtual_metaObject(self: pointer, slot: int) {.importc: "QFileSystemModel_override_virtual_metaObject".}
proc fQFileSystemModel_virtualbase_metacast(self: pointer, param1: cstring): pointer{.importc: "QFileSystemModel_virtualbase_metacast".}
proc fcQFileSystemModel_override_virtual_metacast(self: pointer, slot: int) {.importc: "QFileSystemModel_override_virtual_metacast".}
proc fQFileSystemModel_virtualbase_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint{.importc: "QFileSystemModel_virtualbase_metacall".}
proc fcQFileSystemModel_override_virtual_metacall(self: pointer, slot: int) {.importc: "QFileSystemModel_override_virtual_metacall".}
proc fQFileSystemModel_virtualbase_index(self: pointer, row: cint, column: cint, parent: pointer): pointer{.importc: "QFileSystemModel_virtualbase_index".}
proc fcQFileSystemModel_override_virtual_index(self: pointer, slot: int) {.importc: "QFileSystemModel_override_virtual_index".}
proc fQFileSystemModel_virtualbase_parent(self: pointer, child: pointer): pointer{.importc: "QFileSystemModel_virtualbase_parent".}
proc fcQFileSystemModel_override_virtual_parent(self: pointer, slot: int) {.importc: "QFileSystemModel_override_virtual_parent".}
proc fQFileSystemModel_virtualbase_sibling(self: pointer, row: cint, column: cint, idx: pointer): pointer{.importc: "QFileSystemModel_virtualbase_sibling".}
proc fcQFileSystemModel_override_virtual_sibling(self: pointer, slot: int) {.importc: "QFileSystemModel_override_virtual_sibling".}
proc fQFileSystemModel_virtualbase_hasChildren(self: pointer, parent: pointer): bool{.importc: "QFileSystemModel_virtualbase_hasChildren".}
proc fcQFileSystemModel_override_virtual_hasChildren(self: pointer, slot: int) {.importc: "QFileSystemModel_override_virtual_hasChildren".}
proc fQFileSystemModel_virtualbase_canFetchMore(self: pointer, parent: pointer): bool{.importc: "QFileSystemModel_virtualbase_canFetchMore".}
proc fcQFileSystemModel_override_virtual_canFetchMore(self: pointer, slot: int) {.importc: "QFileSystemModel_override_virtual_canFetchMore".}
proc fQFileSystemModel_virtualbase_fetchMore(self: pointer, parent: pointer): void{.importc: "QFileSystemModel_virtualbase_fetchMore".}
proc fcQFileSystemModel_override_virtual_fetchMore(self: pointer, slot: int) {.importc: "QFileSystemModel_override_virtual_fetchMore".}
proc fQFileSystemModel_virtualbase_rowCount(self: pointer, parent: pointer): cint{.importc: "QFileSystemModel_virtualbase_rowCount".}
proc fcQFileSystemModel_override_virtual_rowCount(self: pointer, slot: int) {.importc: "QFileSystemModel_override_virtual_rowCount".}
proc fQFileSystemModel_virtualbase_columnCount(self: pointer, parent: pointer): cint{.importc: "QFileSystemModel_virtualbase_columnCount".}
proc fcQFileSystemModel_override_virtual_columnCount(self: pointer, slot: int) {.importc: "QFileSystemModel_override_virtual_columnCount".}
proc fQFileSystemModel_virtualbase_data(self: pointer, index: pointer, role: cint): pointer{.importc: "QFileSystemModel_virtualbase_data".}
proc fcQFileSystemModel_override_virtual_data(self: pointer, slot: int) {.importc: "QFileSystemModel_override_virtual_data".}
proc fQFileSystemModel_virtualbase_setData(self: pointer, index: pointer, value: pointer, role: cint): bool{.importc: "QFileSystemModel_virtualbase_setData".}
proc fcQFileSystemModel_override_virtual_setData(self: pointer, slot: int) {.importc: "QFileSystemModel_override_virtual_setData".}
proc fQFileSystemModel_virtualbase_headerData(self: pointer, section: cint, orientation: cint, role: cint): pointer{.importc: "QFileSystemModel_virtualbase_headerData".}
proc fcQFileSystemModel_override_virtual_headerData(self: pointer, slot: int) {.importc: "QFileSystemModel_override_virtual_headerData".}
proc fQFileSystemModel_virtualbase_flags(self: pointer, index: pointer): cint{.importc: "QFileSystemModel_virtualbase_flags".}
proc fcQFileSystemModel_override_virtual_flags(self: pointer, slot: int) {.importc: "QFileSystemModel_override_virtual_flags".}
proc fQFileSystemModel_virtualbase_sort(self: pointer, column: cint, order: cint): void{.importc: "QFileSystemModel_virtualbase_sort".}
proc fcQFileSystemModel_override_virtual_sort(self: pointer, slot: int) {.importc: "QFileSystemModel_override_virtual_sort".}
proc fQFileSystemModel_virtualbase_mimeTypes(self: pointer, ): struct_miqt_array{.importc: "QFileSystemModel_virtualbase_mimeTypes".}
proc fcQFileSystemModel_override_virtual_mimeTypes(self: pointer, slot: int) {.importc: "QFileSystemModel_override_virtual_mimeTypes".}
proc fQFileSystemModel_virtualbase_mimeData(self: pointer, indexes: struct_miqt_array): pointer{.importc: "QFileSystemModel_virtualbase_mimeData".}
proc fcQFileSystemModel_override_virtual_mimeData(self: pointer, slot: int) {.importc: "QFileSystemModel_override_virtual_mimeData".}
proc fQFileSystemModel_virtualbase_dropMimeData(self: pointer, data: pointer, action: cint, row: cint, column: cint, parent: pointer): bool{.importc: "QFileSystemModel_virtualbase_dropMimeData".}
proc fcQFileSystemModel_override_virtual_dropMimeData(self: pointer, slot: int) {.importc: "QFileSystemModel_override_virtual_dropMimeData".}
proc fQFileSystemModel_virtualbase_supportedDropActions(self: pointer, ): cint{.importc: "QFileSystemModel_virtualbase_supportedDropActions".}
proc fcQFileSystemModel_override_virtual_supportedDropActions(self: pointer, slot: int) {.importc: "QFileSystemModel_override_virtual_supportedDropActions".}
proc fQFileSystemModel_virtualbase_roleNames(self: pointer, ): struct_miqt_map{.importc: "QFileSystemModel_virtualbase_roleNames".}
proc fcQFileSystemModel_override_virtual_roleNames(self: pointer, slot: int) {.importc: "QFileSystemModel_override_virtual_roleNames".}
proc fQFileSystemModel_virtualbase_timerEvent(self: pointer, event: pointer): void{.importc: "QFileSystemModel_virtualbase_timerEvent".}
proc fcQFileSystemModel_override_virtual_timerEvent(self: pointer, slot: int) {.importc: "QFileSystemModel_override_virtual_timerEvent".}
proc fQFileSystemModel_virtualbase_event(self: pointer, event: pointer): bool{.importc: "QFileSystemModel_virtualbase_event".}
proc fcQFileSystemModel_override_virtual_event(self: pointer, slot: int) {.importc: "QFileSystemModel_override_virtual_event".}
proc fQFileSystemModel_virtualbase_setHeaderData(self: pointer, section: cint, orientation: cint, value: pointer, role: cint): bool{.importc: "QFileSystemModel_virtualbase_setHeaderData".}
proc fcQFileSystemModel_override_virtual_setHeaderData(self: pointer, slot: int) {.importc: "QFileSystemModel_override_virtual_setHeaderData".}
proc fQFileSystemModel_virtualbase_itemData(self: pointer, index: pointer): struct_miqt_map{.importc: "QFileSystemModel_virtualbase_itemData".}
proc fcQFileSystemModel_override_virtual_itemData(self: pointer, slot: int) {.importc: "QFileSystemModel_override_virtual_itemData".}
proc fQFileSystemModel_virtualbase_setItemData(self: pointer, index: pointer, roles: struct_miqt_map): bool{.importc: "QFileSystemModel_virtualbase_setItemData".}
proc fcQFileSystemModel_override_virtual_setItemData(self: pointer, slot: int) {.importc: "QFileSystemModel_override_virtual_setItemData".}
proc fQFileSystemModel_virtualbase_clearItemData(self: pointer, index: pointer): bool{.importc: "QFileSystemModel_virtualbase_clearItemData".}
proc fcQFileSystemModel_override_virtual_clearItemData(self: pointer, slot: int) {.importc: "QFileSystemModel_override_virtual_clearItemData".}
proc fQFileSystemModel_virtualbase_canDropMimeData(self: pointer, data: pointer, action: cint, row: cint, column: cint, parent: pointer): bool{.importc: "QFileSystemModel_virtualbase_canDropMimeData".}
proc fcQFileSystemModel_override_virtual_canDropMimeData(self: pointer, slot: int) {.importc: "QFileSystemModel_override_virtual_canDropMimeData".}
proc fQFileSystemModel_virtualbase_supportedDragActions(self: pointer, ): cint{.importc: "QFileSystemModel_virtualbase_supportedDragActions".}
proc fcQFileSystemModel_override_virtual_supportedDragActions(self: pointer, slot: int) {.importc: "QFileSystemModel_override_virtual_supportedDragActions".}
proc fQFileSystemModel_virtualbase_insertRows(self: pointer, row: cint, count: cint, parent: pointer): bool{.importc: "QFileSystemModel_virtualbase_insertRows".}
proc fcQFileSystemModel_override_virtual_insertRows(self: pointer, slot: int) {.importc: "QFileSystemModel_override_virtual_insertRows".}
proc fQFileSystemModel_virtualbase_insertColumns(self: pointer, column: cint, count: cint, parent: pointer): bool{.importc: "QFileSystemModel_virtualbase_insertColumns".}
proc fcQFileSystemModel_override_virtual_insertColumns(self: pointer, slot: int) {.importc: "QFileSystemModel_override_virtual_insertColumns".}
proc fQFileSystemModel_virtualbase_removeRows(self: pointer, row: cint, count: cint, parent: pointer): bool{.importc: "QFileSystemModel_virtualbase_removeRows".}
proc fcQFileSystemModel_override_virtual_removeRows(self: pointer, slot: int) {.importc: "QFileSystemModel_override_virtual_removeRows".}
proc fQFileSystemModel_virtualbase_removeColumns(self: pointer, column: cint, count: cint, parent: pointer): bool{.importc: "QFileSystemModel_virtualbase_removeColumns".}
proc fcQFileSystemModel_override_virtual_removeColumns(self: pointer, slot: int) {.importc: "QFileSystemModel_override_virtual_removeColumns".}
proc fQFileSystemModel_virtualbase_moveRows(self: pointer, sourceParent: pointer, sourceRow: cint, count: cint, destinationParent: pointer, destinationChild: cint): bool{.importc: "QFileSystemModel_virtualbase_moveRows".}
proc fcQFileSystemModel_override_virtual_moveRows(self: pointer, slot: int) {.importc: "QFileSystemModel_override_virtual_moveRows".}
proc fQFileSystemModel_virtualbase_moveColumns(self: pointer, sourceParent: pointer, sourceColumn: cint, count: cint, destinationParent: pointer, destinationChild: cint): bool{.importc: "QFileSystemModel_virtualbase_moveColumns".}
proc fcQFileSystemModel_override_virtual_moveColumns(self: pointer, slot: int) {.importc: "QFileSystemModel_override_virtual_moveColumns".}
proc fQFileSystemModel_virtualbase_buddy(self: pointer, index: pointer): pointer{.importc: "QFileSystemModel_virtualbase_buddy".}
proc fcQFileSystemModel_override_virtual_buddy(self: pointer, slot: int) {.importc: "QFileSystemModel_override_virtual_buddy".}
proc fQFileSystemModel_virtualbase_match(self: pointer, start: pointer, role: cint, value: pointer, hits: cint, flags: cint): struct_miqt_array{.importc: "QFileSystemModel_virtualbase_match".}
proc fcQFileSystemModel_override_virtual_match(self: pointer, slot: int) {.importc: "QFileSystemModel_override_virtual_match".}
proc fQFileSystemModel_virtualbase_span(self: pointer, index: pointer): pointer{.importc: "QFileSystemModel_virtualbase_span".}
proc fcQFileSystemModel_override_virtual_span(self: pointer, slot: int) {.importc: "QFileSystemModel_override_virtual_span".}
proc fQFileSystemModel_virtualbase_multiData(self: pointer, index: pointer, roleDataSpan: pointer): void{.importc: "QFileSystemModel_virtualbase_multiData".}
proc fcQFileSystemModel_override_virtual_multiData(self: pointer, slot: int) {.importc: "QFileSystemModel_override_virtual_multiData".}
proc fQFileSystemModel_virtualbase_submit(self: pointer, ): bool{.importc: "QFileSystemModel_virtualbase_submit".}
proc fcQFileSystemModel_override_virtual_submit(self: pointer, slot: int) {.importc: "QFileSystemModel_override_virtual_submit".}
proc fQFileSystemModel_virtualbase_revert(self: pointer, ): void{.importc: "QFileSystemModel_virtualbase_revert".}
proc fcQFileSystemModel_override_virtual_revert(self: pointer, slot: int) {.importc: "QFileSystemModel_override_virtual_revert".}
proc fQFileSystemModel_virtualbase_resetInternalData(self: pointer, ): void{.importc: "QFileSystemModel_virtualbase_resetInternalData".}
proc fcQFileSystemModel_override_virtual_resetInternalData(self: pointer, slot: int) {.importc: "QFileSystemModel_override_virtual_resetInternalData".}
proc fQFileSystemModel_virtualbase_eventFilter(self: pointer, watched: pointer, event: pointer): bool{.importc: "QFileSystemModel_virtualbase_eventFilter".}
proc fcQFileSystemModel_override_virtual_eventFilter(self: pointer, slot: int) {.importc: "QFileSystemModel_override_virtual_eventFilter".}
proc fQFileSystemModel_virtualbase_childEvent(self: pointer, event: pointer): void{.importc: "QFileSystemModel_virtualbase_childEvent".}
proc fcQFileSystemModel_override_virtual_childEvent(self: pointer, slot: int) {.importc: "QFileSystemModel_override_virtual_childEvent".}
proc fQFileSystemModel_virtualbase_customEvent(self: pointer, event: pointer): void{.importc: "QFileSystemModel_virtualbase_customEvent".}
proc fcQFileSystemModel_override_virtual_customEvent(self: pointer, slot: int) {.importc: "QFileSystemModel_override_virtual_customEvent".}
proc fQFileSystemModel_virtualbase_connectNotify(self: pointer, signal: pointer): void{.importc: "QFileSystemModel_virtualbase_connectNotify".}
proc fcQFileSystemModel_override_virtual_connectNotify(self: pointer, slot: int) {.importc: "QFileSystemModel_override_virtual_connectNotify".}
proc fQFileSystemModel_virtualbase_disconnectNotify(self: pointer, signal: pointer): void{.importc: "QFileSystemModel_virtualbase_disconnectNotify".}
proc fcQFileSystemModel_override_virtual_disconnectNotify(self: pointer, slot: int) {.importc: "QFileSystemModel_override_virtual_disconnectNotify".}
proc fcQFileSystemModel_staticMetaObject(): pointer {.importc: "QFileSystemModel_staticMetaObject".}
proc fcQFileSystemModel_delete(self: pointer) {.importc: "QFileSystemModel_delete".}


func init*(T: type gen_qfilesystemmodel_types.QFileSystemModel, h: ptr cQFileSystemModel): gen_qfilesystemmodel_types.QFileSystemModel =
  T(h: h)
proc create*(T: type gen_qfilesystemmodel_types.QFileSystemModel, ): gen_qfilesystemmodel_types.QFileSystemModel =
  gen_qfilesystemmodel_types.QFileSystemModel.init(fcQFileSystemModel_new())

proc create*(T: type gen_qfilesystemmodel_types.QFileSystemModel, parent: gen_qobject_types.QObject): gen_qfilesystemmodel_types.QFileSystemModel =
  gen_qfilesystemmodel_types.QFileSystemModel.init(fcQFileSystemModel_new2(parent.h))

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
proc miqt_exec_callback_QFileSystemModel_rootPathChanged(slot: int, newPath: struct_miqt_string) {.exportc.} =
  let nimfunc = cast[ptr QFileSystemModelrootPathChangedSlot](cast[pointer](slot))
  let vnewPath_ms = newPath
  let vnewPathx_ret = string.fromBytes(toOpenArrayByte(vnewPath_ms.data, 0, int(vnewPath_ms.len)-1))
  c_free(vnewPath_ms.data)
  let slotval1 = vnewPathx_ret

  nimfunc[](slotval1)

proc onrootPathChanged*(self: gen_qfilesystemmodel_types.QFileSystemModel, slot: QFileSystemModelrootPathChangedSlot) =
  var tmp = new QFileSystemModelrootPathChangedSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQFileSystemModel_connect_rootPathChanged(self.h, cast[int](addr tmp[]))

proc fileRenamed*(self: gen_qfilesystemmodel_types.QFileSystemModel, path: string, oldName: string, newName: string): void =
  fcQFileSystemModel_fileRenamed(self.h, struct_miqt_string(data: path, len: csize_t(len(path))), struct_miqt_string(data: oldName, len: csize_t(len(oldName))), struct_miqt_string(data: newName, len: csize_t(len(newName))))

type QFileSystemModelfileRenamedSlot* = proc(path: string, oldName: string, newName: string)
proc miqt_exec_callback_QFileSystemModel_fileRenamed(slot: int, path: struct_miqt_string, oldName: struct_miqt_string, newName: struct_miqt_string) {.exportc.} =
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

proc onfileRenamed*(self: gen_qfilesystemmodel_types.QFileSystemModel, slot: QFileSystemModelfileRenamedSlot) =
  var tmp = new QFileSystemModelfileRenamedSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQFileSystemModel_connect_fileRenamed(self.h, cast[int](addr tmp[]))

proc directoryLoaded*(self: gen_qfilesystemmodel_types.QFileSystemModel, path: string): void =
  fcQFileSystemModel_directoryLoaded(self.h, struct_miqt_string(data: path, len: csize_t(len(path))))

type QFileSystemModeldirectoryLoadedSlot* = proc(path: string)
proc miqt_exec_callback_QFileSystemModel_directoryLoaded(slot: int, path: struct_miqt_string) {.exportc.} =
  let nimfunc = cast[ptr QFileSystemModeldirectoryLoadedSlot](cast[pointer](slot))
  let vpath_ms = path
  let vpathx_ret = string.fromBytes(toOpenArrayByte(vpath_ms.data, 0, int(vpath_ms.len)-1))
  c_free(vpath_ms.data)
  let slotval1 = vpathx_ret

  nimfunc[](slotval1)

proc ondirectoryLoaded*(self: gen_qfilesystemmodel_types.QFileSystemModel, slot: QFileSystemModeldirectoryLoadedSlot) =
  var tmp = new QFileSystemModeldirectoryLoadedSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQFileSystemModel_connect_directoryLoaded(self.h, cast[int](addr tmp[]))

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

proc QFileSystemModelmetaObject*(self: gen_qfilesystemmodel_types.QFileSystemModel, ): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fQFileSystemModel_virtualbase_metaObject(self.h))

type QFileSystemModelmetaObjectProc* = proc(): gen_qobjectdefs_types.QMetaObject
proc onmetaObject*(self: gen_qfilesystemmodel_types.QFileSystemModel, slot: QFileSystemModelmetaObjectProc) =
  # TODO check subclass
  var tmp = new QFileSystemModelmetaObjectProc
  tmp[] = slot
  GC_ref(tmp)
  fcQFileSystemModel_override_virtual_metaObject(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QFileSystemModel_metaObject(self: ptr cQFileSystemModel, slot: int): pointer {.exportc: "miqt_exec_callback_QFileSystemModel_metaObject ".} =
  var nimfunc = cast[ptr QFileSystemModelmetaObjectProc](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )

  virtualReturn.h
proc QFileSystemModelmetacast*(self: gen_qfilesystemmodel_types.QFileSystemModel, param1: cstring): pointer =
  fQFileSystemModel_virtualbase_metacast(self.h, param1)

type QFileSystemModelmetacastProc* = proc(param1: cstring): pointer
proc onmetacast*(self: gen_qfilesystemmodel_types.QFileSystemModel, slot: QFileSystemModelmetacastProc) =
  # TODO check subclass
  var tmp = new QFileSystemModelmetacastProc
  tmp[] = slot
  GC_ref(tmp)
  fcQFileSystemModel_override_virtual_metacast(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QFileSystemModel_metacast(self: ptr cQFileSystemModel, slot: int, param1: cstring): pointer {.exportc: "miqt_exec_callback_QFileSystemModel_metacast ".} =
  var nimfunc = cast[ptr QFileSystemModelmetacastProc](cast[pointer](slot))
  let slotval1 = (param1)


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn
proc QFileSystemModelmetacall*(self: gen_qfilesystemmodel_types.QFileSystemModel, param1: cint, param2: cint, param3: pointer): cint =
  fQFileSystemModel_virtualbase_metacall(self.h, cint(param1), param2, param3)

type QFileSystemModelmetacallProc* = proc(param1: cint, param2: cint, param3: pointer): cint
proc onmetacall*(self: gen_qfilesystemmodel_types.QFileSystemModel, slot: QFileSystemModelmetacallProc) =
  # TODO check subclass
  var tmp = new QFileSystemModelmetacallProc
  tmp[] = slot
  GC_ref(tmp)
  fcQFileSystemModel_override_virtual_metacall(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QFileSystemModel_metacall(self: ptr cQFileSystemModel, slot: int, param1: cint, param2: cint, param3: pointer): cint {.exportc: "miqt_exec_callback_QFileSystemModel_metacall ".} =
  var nimfunc = cast[ptr QFileSystemModelmetacallProc](cast[pointer](slot))
  let slotval1 = cint(param1)

  let slotval2 = param2

  let slotval3 = param3


  let virtualReturn = nimfunc[](slotval1, slotval2, slotval3 )

  virtualReturn
proc QFileSystemModelindex*(self: gen_qfilesystemmodel_types.QFileSystemModel, row: cint, column: cint, parent: gen_qabstractitemmodel_types.QModelIndex): gen_qabstractitemmodel_types.QModelIndex =
  gen_qabstractitemmodel_types.QModelIndex(h: fQFileSystemModel_virtualbase_index(self.h, row, column, parent.h))

type QFileSystemModelindexProc* = proc(row: cint, column: cint, parent: gen_qabstractitemmodel_types.QModelIndex): gen_qabstractitemmodel_types.QModelIndex
proc onindex*(self: gen_qfilesystemmodel_types.QFileSystemModel, slot: QFileSystemModelindexProc) =
  # TODO check subclass
  var tmp = new QFileSystemModelindexProc
  tmp[] = slot
  GC_ref(tmp)
  fcQFileSystemModel_override_virtual_index(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QFileSystemModel_index(self: ptr cQFileSystemModel, slot: int, row: cint, column: cint, parent: pointer): pointer {.exportc: "miqt_exec_callback_QFileSystemModel_index ".} =
  var nimfunc = cast[ptr QFileSystemModelindexProc](cast[pointer](slot))
  let slotval1 = row

  let slotval2 = column

  let slotval3 = gen_qabstractitemmodel_types.QModelIndex(h: parent)


  let virtualReturn = nimfunc[](slotval1, slotval2, slotval3 )

  virtualReturn.h
proc QFileSystemModelparent*(self: gen_qfilesystemmodel_types.QFileSystemModel, child: gen_qabstractitemmodel_types.QModelIndex): gen_qabstractitemmodel_types.QModelIndex =
  gen_qabstractitemmodel_types.QModelIndex(h: fQFileSystemModel_virtualbase_parent(self.h, child.h))

type QFileSystemModelparentProc* = proc(child: gen_qabstractitemmodel_types.QModelIndex): gen_qabstractitemmodel_types.QModelIndex
proc onparent*(self: gen_qfilesystemmodel_types.QFileSystemModel, slot: QFileSystemModelparentProc) =
  # TODO check subclass
  var tmp = new QFileSystemModelparentProc
  tmp[] = slot
  GC_ref(tmp)
  fcQFileSystemModel_override_virtual_parent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QFileSystemModel_parent(self: ptr cQFileSystemModel, slot: int, child: pointer): pointer {.exportc: "miqt_exec_callback_QFileSystemModel_parent ".} =
  var nimfunc = cast[ptr QFileSystemModelparentProc](cast[pointer](slot))
  let slotval1 = gen_qabstractitemmodel_types.QModelIndex(h: child)


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn.h
proc QFileSystemModelsibling*(self: gen_qfilesystemmodel_types.QFileSystemModel, row: cint, column: cint, idx: gen_qabstractitemmodel_types.QModelIndex): gen_qabstractitemmodel_types.QModelIndex =
  gen_qabstractitemmodel_types.QModelIndex(h: fQFileSystemModel_virtualbase_sibling(self.h, row, column, idx.h))

type QFileSystemModelsiblingProc* = proc(row: cint, column: cint, idx: gen_qabstractitemmodel_types.QModelIndex): gen_qabstractitemmodel_types.QModelIndex
proc onsibling*(self: gen_qfilesystemmodel_types.QFileSystemModel, slot: QFileSystemModelsiblingProc) =
  # TODO check subclass
  var tmp = new QFileSystemModelsiblingProc
  tmp[] = slot
  GC_ref(tmp)
  fcQFileSystemModel_override_virtual_sibling(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QFileSystemModel_sibling(self: ptr cQFileSystemModel, slot: int, row: cint, column: cint, idx: pointer): pointer {.exportc: "miqt_exec_callback_QFileSystemModel_sibling ".} =
  var nimfunc = cast[ptr QFileSystemModelsiblingProc](cast[pointer](slot))
  let slotval1 = row

  let slotval2 = column

  let slotval3 = gen_qabstractitemmodel_types.QModelIndex(h: idx)


  let virtualReturn = nimfunc[](slotval1, slotval2, slotval3 )

  virtualReturn.h
proc QFileSystemModelhasChildren*(self: gen_qfilesystemmodel_types.QFileSystemModel, parent: gen_qabstractitemmodel_types.QModelIndex): bool =
  fQFileSystemModel_virtualbase_hasChildren(self.h, parent.h)

type QFileSystemModelhasChildrenProc* = proc(parent: gen_qabstractitemmodel_types.QModelIndex): bool
proc onhasChildren*(self: gen_qfilesystemmodel_types.QFileSystemModel, slot: QFileSystemModelhasChildrenProc) =
  # TODO check subclass
  var tmp = new QFileSystemModelhasChildrenProc
  tmp[] = slot
  GC_ref(tmp)
  fcQFileSystemModel_override_virtual_hasChildren(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QFileSystemModel_hasChildren(self: ptr cQFileSystemModel, slot: int, parent: pointer): bool {.exportc: "miqt_exec_callback_QFileSystemModel_hasChildren ".} =
  var nimfunc = cast[ptr QFileSystemModelhasChildrenProc](cast[pointer](slot))
  let slotval1 = gen_qabstractitemmodel_types.QModelIndex(h: parent)


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn
proc QFileSystemModelcanFetchMore*(self: gen_qfilesystemmodel_types.QFileSystemModel, parent: gen_qabstractitemmodel_types.QModelIndex): bool =
  fQFileSystemModel_virtualbase_canFetchMore(self.h, parent.h)

type QFileSystemModelcanFetchMoreProc* = proc(parent: gen_qabstractitemmodel_types.QModelIndex): bool
proc oncanFetchMore*(self: gen_qfilesystemmodel_types.QFileSystemModel, slot: QFileSystemModelcanFetchMoreProc) =
  # TODO check subclass
  var tmp = new QFileSystemModelcanFetchMoreProc
  tmp[] = slot
  GC_ref(tmp)
  fcQFileSystemModel_override_virtual_canFetchMore(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QFileSystemModel_canFetchMore(self: ptr cQFileSystemModel, slot: int, parent: pointer): bool {.exportc: "miqt_exec_callback_QFileSystemModel_canFetchMore ".} =
  var nimfunc = cast[ptr QFileSystemModelcanFetchMoreProc](cast[pointer](slot))
  let slotval1 = gen_qabstractitemmodel_types.QModelIndex(h: parent)


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn
proc QFileSystemModelfetchMore*(self: gen_qfilesystemmodel_types.QFileSystemModel, parent: gen_qabstractitemmodel_types.QModelIndex): void =
  fQFileSystemModel_virtualbase_fetchMore(self.h, parent.h)

type QFileSystemModelfetchMoreProc* = proc(parent: gen_qabstractitemmodel_types.QModelIndex): void
proc onfetchMore*(self: gen_qfilesystemmodel_types.QFileSystemModel, slot: QFileSystemModelfetchMoreProc) =
  # TODO check subclass
  var tmp = new QFileSystemModelfetchMoreProc
  tmp[] = slot
  GC_ref(tmp)
  fcQFileSystemModel_override_virtual_fetchMore(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QFileSystemModel_fetchMore(self: ptr cQFileSystemModel, slot: int, parent: pointer): void {.exportc: "miqt_exec_callback_QFileSystemModel_fetchMore ".} =
  var nimfunc = cast[ptr QFileSystemModelfetchMoreProc](cast[pointer](slot))
  let slotval1 = gen_qabstractitemmodel_types.QModelIndex(h: parent)


  nimfunc[](slotval1)
proc QFileSystemModelrowCount*(self: gen_qfilesystemmodel_types.QFileSystemModel, parent: gen_qabstractitemmodel_types.QModelIndex): cint =
  fQFileSystemModel_virtualbase_rowCount(self.h, parent.h)

type QFileSystemModelrowCountProc* = proc(parent: gen_qabstractitemmodel_types.QModelIndex): cint
proc onrowCount*(self: gen_qfilesystemmodel_types.QFileSystemModel, slot: QFileSystemModelrowCountProc) =
  # TODO check subclass
  var tmp = new QFileSystemModelrowCountProc
  tmp[] = slot
  GC_ref(tmp)
  fcQFileSystemModel_override_virtual_rowCount(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QFileSystemModel_rowCount(self: ptr cQFileSystemModel, slot: int, parent: pointer): cint {.exportc: "miqt_exec_callback_QFileSystemModel_rowCount ".} =
  var nimfunc = cast[ptr QFileSystemModelrowCountProc](cast[pointer](slot))
  let slotval1 = gen_qabstractitemmodel_types.QModelIndex(h: parent)


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn
proc QFileSystemModelcolumnCount*(self: gen_qfilesystemmodel_types.QFileSystemModel, parent: gen_qabstractitemmodel_types.QModelIndex): cint =
  fQFileSystemModel_virtualbase_columnCount(self.h, parent.h)

type QFileSystemModelcolumnCountProc* = proc(parent: gen_qabstractitemmodel_types.QModelIndex): cint
proc oncolumnCount*(self: gen_qfilesystemmodel_types.QFileSystemModel, slot: QFileSystemModelcolumnCountProc) =
  # TODO check subclass
  var tmp = new QFileSystemModelcolumnCountProc
  tmp[] = slot
  GC_ref(tmp)
  fcQFileSystemModel_override_virtual_columnCount(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QFileSystemModel_columnCount(self: ptr cQFileSystemModel, slot: int, parent: pointer): cint {.exportc: "miqt_exec_callback_QFileSystemModel_columnCount ".} =
  var nimfunc = cast[ptr QFileSystemModelcolumnCountProc](cast[pointer](slot))
  let slotval1 = gen_qabstractitemmodel_types.QModelIndex(h: parent)


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn
proc QFileSystemModeldata*(self: gen_qfilesystemmodel_types.QFileSystemModel, index: gen_qabstractitemmodel_types.QModelIndex, role: cint): gen_qvariant_types.QVariant =
  gen_qvariant_types.QVariant(h: fQFileSystemModel_virtualbase_data(self.h, index.h, role))

type QFileSystemModeldataProc* = proc(index: gen_qabstractitemmodel_types.QModelIndex, role: cint): gen_qvariant_types.QVariant
proc ondata*(self: gen_qfilesystemmodel_types.QFileSystemModel, slot: QFileSystemModeldataProc) =
  # TODO check subclass
  var tmp = new QFileSystemModeldataProc
  tmp[] = slot
  GC_ref(tmp)
  fcQFileSystemModel_override_virtual_data(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QFileSystemModel_data(self: ptr cQFileSystemModel, slot: int, index: pointer, role: cint): pointer {.exportc: "miqt_exec_callback_QFileSystemModel_data ".} =
  var nimfunc = cast[ptr QFileSystemModeldataProc](cast[pointer](slot))
  let slotval1 = gen_qabstractitemmodel_types.QModelIndex(h: index)

  let slotval2 = role


  let virtualReturn = nimfunc[](slotval1, slotval2 )

  virtualReturn.h
proc QFileSystemModelsetData*(self: gen_qfilesystemmodel_types.QFileSystemModel, index: gen_qabstractitemmodel_types.QModelIndex, value: gen_qvariant_types.QVariant, role: cint): bool =
  fQFileSystemModel_virtualbase_setData(self.h, index.h, value.h, role)

type QFileSystemModelsetDataProc* = proc(index: gen_qabstractitemmodel_types.QModelIndex, value: gen_qvariant_types.QVariant, role: cint): bool
proc onsetData*(self: gen_qfilesystemmodel_types.QFileSystemModel, slot: QFileSystemModelsetDataProc) =
  # TODO check subclass
  var tmp = new QFileSystemModelsetDataProc
  tmp[] = slot
  GC_ref(tmp)
  fcQFileSystemModel_override_virtual_setData(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QFileSystemModel_setData(self: ptr cQFileSystemModel, slot: int, index: pointer, value: pointer, role: cint): bool {.exportc: "miqt_exec_callback_QFileSystemModel_setData ".} =
  var nimfunc = cast[ptr QFileSystemModelsetDataProc](cast[pointer](slot))
  let slotval1 = gen_qabstractitemmodel_types.QModelIndex(h: index)

  let slotval2 = gen_qvariant_types.QVariant(h: value)

  let slotval3 = role


  let virtualReturn = nimfunc[](slotval1, slotval2, slotval3 )

  virtualReturn
proc QFileSystemModelheaderData*(self: gen_qfilesystemmodel_types.QFileSystemModel, section: cint, orientation: cint, role: cint): gen_qvariant_types.QVariant =
  gen_qvariant_types.QVariant(h: fQFileSystemModel_virtualbase_headerData(self.h, section, cint(orientation), role))

type QFileSystemModelheaderDataProc* = proc(section: cint, orientation: cint, role: cint): gen_qvariant_types.QVariant
proc onheaderData*(self: gen_qfilesystemmodel_types.QFileSystemModel, slot: QFileSystemModelheaderDataProc) =
  # TODO check subclass
  var tmp = new QFileSystemModelheaderDataProc
  tmp[] = slot
  GC_ref(tmp)
  fcQFileSystemModel_override_virtual_headerData(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QFileSystemModel_headerData(self: ptr cQFileSystemModel, slot: int, section: cint, orientation: cint, role: cint): pointer {.exportc: "miqt_exec_callback_QFileSystemModel_headerData ".} =
  var nimfunc = cast[ptr QFileSystemModelheaderDataProc](cast[pointer](slot))
  let slotval1 = section

  let slotval2 = cint(orientation)

  let slotval3 = role


  let virtualReturn = nimfunc[](slotval1, slotval2, slotval3 )

  virtualReturn.h
proc QFileSystemModelflags*(self: gen_qfilesystemmodel_types.QFileSystemModel, index: gen_qabstractitemmodel_types.QModelIndex): cint =
  cint(fQFileSystemModel_virtualbase_flags(self.h, index.h))

type QFileSystemModelflagsProc* = proc(index: gen_qabstractitemmodel_types.QModelIndex): cint
proc onflags*(self: gen_qfilesystemmodel_types.QFileSystemModel, slot: QFileSystemModelflagsProc) =
  # TODO check subclass
  var tmp = new QFileSystemModelflagsProc
  tmp[] = slot
  GC_ref(tmp)
  fcQFileSystemModel_override_virtual_flags(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QFileSystemModel_flags(self: ptr cQFileSystemModel, slot: int, index: pointer): cint {.exportc: "miqt_exec_callback_QFileSystemModel_flags ".} =
  var nimfunc = cast[ptr QFileSystemModelflagsProc](cast[pointer](slot))
  let slotval1 = gen_qabstractitemmodel_types.QModelIndex(h: index)


  let virtualReturn = nimfunc[](slotval1 )

  cint(virtualReturn)
proc QFileSystemModelsort*(self: gen_qfilesystemmodel_types.QFileSystemModel, column: cint, order: cint): void =
  fQFileSystemModel_virtualbase_sort(self.h, column, cint(order))

type QFileSystemModelsortProc* = proc(column: cint, order: cint): void
proc onsort*(self: gen_qfilesystemmodel_types.QFileSystemModel, slot: QFileSystemModelsortProc) =
  # TODO check subclass
  var tmp = new QFileSystemModelsortProc
  tmp[] = slot
  GC_ref(tmp)
  fcQFileSystemModel_override_virtual_sort(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QFileSystemModel_sort(self: ptr cQFileSystemModel, slot: int, column: cint, order: cint): void {.exportc: "miqt_exec_callback_QFileSystemModel_sort ".} =
  var nimfunc = cast[ptr QFileSystemModelsortProc](cast[pointer](slot))
  let slotval1 = column

  let slotval2 = cint(order)


  nimfunc[](slotval1, slotval2)
proc QFileSystemModelmimeTypes*(self: gen_qfilesystemmodel_types.QFileSystemModel, ): seq[string] =
  var v_ma = fQFileSystemModel_virtualbase_mimeTypes(self.h)
  var vx_ret = newSeq[string](int(v_ma.len))
  let v_outCast = cast[ptr UncheckedArray[struct_miqt_string]](v_ma.data)
  for i in 0 ..< v_ma.len:
    let vx_lv_ms = v_outCast[i]
    let vx_lvx_ret = string.fromBytes(toOpenArrayByte(vx_lv_ms.data, 0, int(vx_lv_ms.len)-1))
    c_free(vx_lv_ms.data)
    vx_ret[i] = vx_lvx_ret
  vx_ret

type QFileSystemModelmimeTypesProc* = proc(): seq[string]
proc onmimeTypes*(self: gen_qfilesystemmodel_types.QFileSystemModel, slot: QFileSystemModelmimeTypesProc) =
  # TODO check subclass
  var tmp = new QFileSystemModelmimeTypesProc
  tmp[] = slot
  GC_ref(tmp)
  fcQFileSystemModel_override_virtual_mimeTypes(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QFileSystemModel_mimeTypes(self: ptr cQFileSystemModel, slot: int): struct_miqt_array {.exportc: "miqt_exec_callback_QFileSystemModel_mimeTypes ".} =
  var nimfunc = cast[ptr QFileSystemModelmimeTypesProc](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )
  var virtualReturn_CArray = newSeq[struct_miqt_string](len(virtualReturn))
  for i in 0..<len(virtualReturn):
    virtualReturn_CArray[i] = struct_miqt_string(data: virtualReturn[i], len: csize_t(len(virtualReturn[i])))


  struct_miqt_array(len: csize_t(len(virtualReturn)), data: if len(virtualReturn) == 0: nil else: addr(virtualReturn_CArray[0]))
proc QFileSystemModelmimeData*(self: gen_qfilesystemmodel_types.QFileSystemModel, indexes: seq[gen_qabstractitemmodel_types.QModelIndex]): gen_qmimedata_types.QMimeData =
  var indexes_CArray = newSeq[pointer](len(indexes))
  for i in 0..<len(indexes):
    indexes_CArray[i] = indexes[i].h

  gen_qmimedata_types.QMimeData(h: fQFileSystemModel_virtualbase_mimeData(self.h, struct_miqt_array(len: csize_t(len(indexes)), data: if len(indexes) == 0: nil else: addr(indexes_CArray[0]))))

type QFileSystemModelmimeDataProc* = proc(indexes: seq[gen_qabstractitemmodel_types.QModelIndex]): gen_qmimedata_types.QMimeData
proc onmimeData*(self: gen_qfilesystemmodel_types.QFileSystemModel, slot: QFileSystemModelmimeDataProc) =
  # TODO check subclass
  var tmp = new QFileSystemModelmimeDataProc
  tmp[] = slot
  GC_ref(tmp)
  fcQFileSystemModel_override_virtual_mimeData(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QFileSystemModel_mimeData(self: ptr cQFileSystemModel, slot: int, indexes: struct_miqt_array): pointer {.exportc: "miqt_exec_callback_QFileSystemModel_mimeData ".} =
  var nimfunc = cast[ptr QFileSystemModelmimeDataProc](cast[pointer](slot))
  var vindexes_ma = indexes
  var vindexesx_ret = newSeq[gen_qabstractitemmodel_types.QModelIndex](int(vindexes_ma.len))
  let vindexes_outCast = cast[ptr UncheckedArray[pointer]](vindexes_ma.data)
  for i in 0 ..< vindexes_ma.len:
    vindexesx_ret[i] = gen_qabstractitemmodel_types.QModelIndex(h: vindexes_outCast[i])
  let slotval1 = vindexesx_ret


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn.h
proc QFileSystemModeldropMimeData*(self: gen_qfilesystemmodel_types.QFileSystemModel, data: gen_qmimedata_types.QMimeData, action: cint, row: cint, column: cint, parent: gen_qabstractitemmodel_types.QModelIndex): bool =
  fQFileSystemModel_virtualbase_dropMimeData(self.h, data.h, cint(action), row, column, parent.h)

type QFileSystemModeldropMimeDataProc* = proc(data: gen_qmimedata_types.QMimeData, action: cint, row: cint, column: cint, parent: gen_qabstractitemmodel_types.QModelIndex): bool
proc ondropMimeData*(self: gen_qfilesystemmodel_types.QFileSystemModel, slot: QFileSystemModeldropMimeDataProc) =
  # TODO check subclass
  var tmp = new QFileSystemModeldropMimeDataProc
  tmp[] = slot
  GC_ref(tmp)
  fcQFileSystemModel_override_virtual_dropMimeData(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QFileSystemModel_dropMimeData(self: ptr cQFileSystemModel, slot: int, data: pointer, action: cint, row: cint, column: cint, parent: pointer): bool {.exportc: "miqt_exec_callback_QFileSystemModel_dropMimeData ".} =
  var nimfunc = cast[ptr QFileSystemModeldropMimeDataProc](cast[pointer](slot))
  let slotval1 = gen_qmimedata_types.QMimeData(h: data)

  let slotval2 = cint(action)

  let slotval3 = row

  let slotval4 = column

  let slotval5 = gen_qabstractitemmodel_types.QModelIndex(h: parent)


  let virtualReturn = nimfunc[](slotval1, slotval2, slotval3, slotval4, slotval5 )

  virtualReturn
proc QFileSystemModelsupportedDropActions*(self: gen_qfilesystemmodel_types.QFileSystemModel, ): cint =
  cint(fQFileSystemModel_virtualbase_supportedDropActions(self.h))

type QFileSystemModelsupportedDropActionsProc* = proc(): cint
proc onsupportedDropActions*(self: gen_qfilesystemmodel_types.QFileSystemModel, slot: QFileSystemModelsupportedDropActionsProc) =
  # TODO check subclass
  var tmp = new QFileSystemModelsupportedDropActionsProc
  tmp[] = slot
  GC_ref(tmp)
  fcQFileSystemModel_override_virtual_supportedDropActions(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QFileSystemModel_supportedDropActions(self: ptr cQFileSystemModel, slot: int): cint {.exportc: "miqt_exec_callback_QFileSystemModel_supportedDropActions ".} =
  var nimfunc = cast[ptr QFileSystemModelsupportedDropActionsProc](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )

  cint(virtualReturn)
proc QFileSystemModelroleNames*(self: gen_qfilesystemmodel_types.QFileSystemModel, ): Table[cint,seq[byte]] =
  var v_mm = fQFileSystemModel_virtualbase_roleNames(self.h)
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

type QFileSystemModelroleNamesProc* = proc(): Table[cint,seq[byte]]
proc onroleNames*(self: gen_qfilesystemmodel_types.QFileSystemModel, slot: QFileSystemModelroleNamesProc) =
  # TODO check subclass
  var tmp = new QFileSystemModelroleNamesProc
  tmp[] = slot
  GC_ref(tmp)
  fcQFileSystemModel_override_virtual_roleNames(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QFileSystemModel_roleNames(self: ptr cQFileSystemModel, slot: int): struct_miqt_map {.exportc: "miqt_exec_callback_QFileSystemModel_roleNames ".} =
  var nimfunc = cast[ptr QFileSystemModelroleNamesProc](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )
  var virtualReturn_Keys_CArray = newSeq[cint](len(virtualReturn))
  var virtualReturn_Values_CArray = newSeq[struct_miqt_string](len(virtualReturn))
  var virtualReturn_ctr = 0
  for virtualReturnk, virtualReturnv in virtualReturn:
    virtualReturn_Keys_CArray[virtualReturn_ctr] = virtualReturn_k
    virtualReturn_Values_CArray[virtualReturn_ctr] = struct_miqt_string(data: cast[cstring](if len(virtualReturn_v) == 0: nil else: unsafeAddr virtualReturn_v[0]), len: csize_t(len(virtualReturn_v)))
    virtualReturn_ctr += 1


  struct_miqt_map(len: csize_t(len(virtualReturn)),keys: if len(virtualReturn) == 0: nil else: addr(virtualReturn_Keys_CArray[0]), values: if len(virtualReturn) == 0: nil else: addr(virtualReturn_Values_CArray[0]),)
proc QFileSystemModeltimerEvent*(self: gen_qfilesystemmodel_types.QFileSystemModel, event: gen_qcoreevent_types.QTimerEvent): void =
  fQFileSystemModel_virtualbase_timerEvent(self.h, event.h)

type QFileSystemModeltimerEventProc* = proc(event: gen_qcoreevent_types.QTimerEvent): void
proc ontimerEvent*(self: gen_qfilesystemmodel_types.QFileSystemModel, slot: QFileSystemModeltimerEventProc) =
  # TODO check subclass
  var tmp = new QFileSystemModeltimerEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQFileSystemModel_override_virtual_timerEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QFileSystemModel_timerEvent(self: ptr cQFileSystemModel, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QFileSystemModel_timerEvent ".} =
  var nimfunc = cast[ptr QFileSystemModeltimerEventProc](cast[pointer](slot))
  let slotval1 = gen_qcoreevent_types.QTimerEvent(h: event)


  nimfunc[](slotval1)
proc QFileSystemModelevent*(self: gen_qfilesystemmodel_types.QFileSystemModel, event: gen_qcoreevent_types.QEvent): bool =
  fQFileSystemModel_virtualbase_event(self.h, event.h)

type QFileSystemModeleventProc* = proc(event: gen_qcoreevent_types.QEvent): bool
proc onevent*(self: gen_qfilesystemmodel_types.QFileSystemModel, slot: QFileSystemModeleventProc) =
  # TODO check subclass
  var tmp = new QFileSystemModeleventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQFileSystemModel_override_virtual_event(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QFileSystemModel_event(self: ptr cQFileSystemModel, slot: int, event: pointer): bool {.exportc: "miqt_exec_callback_QFileSystemModel_event ".} =
  var nimfunc = cast[ptr QFileSystemModeleventProc](cast[pointer](slot))
  let slotval1 = gen_qcoreevent_types.QEvent(h: event)


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn
proc QFileSystemModelsetHeaderData*(self: gen_qfilesystemmodel_types.QFileSystemModel, section: cint, orientation: cint, value: gen_qvariant_types.QVariant, role: cint): bool =
  fQFileSystemModel_virtualbase_setHeaderData(self.h, section, cint(orientation), value.h, role)

type QFileSystemModelsetHeaderDataProc* = proc(section: cint, orientation: cint, value: gen_qvariant_types.QVariant, role: cint): bool
proc onsetHeaderData*(self: gen_qfilesystemmodel_types.QFileSystemModel, slot: QFileSystemModelsetHeaderDataProc) =
  # TODO check subclass
  var tmp = new QFileSystemModelsetHeaderDataProc
  tmp[] = slot
  GC_ref(tmp)
  fcQFileSystemModel_override_virtual_setHeaderData(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QFileSystemModel_setHeaderData(self: ptr cQFileSystemModel, slot: int, section: cint, orientation: cint, value: pointer, role: cint): bool {.exportc: "miqt_exec_callback_QFileSystemModel_setHeaderData ".} =
  var nimfunc = cast[ptr QFileSystemModelsetHeaderDataProc](cast[pointer](slot))
  let slotval1 = section

  let slotval2 = cint(orientation)

  let slotval3 = gen_qvariant_types.QVariant(h: value)

  let slotval4 = role


  let virtualReturn = nimfunc[](slotval1, slotval2, slotval3, slotval4 )

  virtualReturn
proc QFileSystemModelitemData*(self: gen_qfilesystemmodel_types.QFileSystemModel, index: gen_qabstractitemmodel_types.QModelIndex): Table[cint,gen_qvariant_types.QVariant] =
  var v_mm = fQFileSystemModel_virtualbase_itemData(self.h, index.h)
  var vx_ret: Table[cint, gen_qvariant_types.QVariant]
  var v_Keys = cast[ptr UncheckedArray[cint]](v_mm.keys)
  var v_Values = cast[ptr UncheckedArray[pointer]](v_mm.values)
  for i in 0..<v_mm.len:
    var v_entry_Key = v_Keys[i]

    var v_entry_Value = gen_qvariant_types.QVariant(h: v_Values[i])

    vx_ret[v_entry_Key] = v_entry_Value
  vx_ret

type QFileSystemModelitemDataProc* = proc(index: gen_qabstractitemmodel_types.QModelIndex): Table[cint,gen_qvariant_types.QVariant]
proc onitemData*(self: gen_qfilesystemmodel_types.QFileSystemModel, slot: QFileSystemModelitemDataProc) =
  # TODO check subclass
  var tmp = new QFileSystemModelitemDataProc
  tmp[] = slot
  GC_ref(tmp)
  fcQFileSystemModel_override_virtual_itemData(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QFileSystemModel_itemData(self: ptr cQFileSystemModel, slot: int, index: pointer): struct_miqt_map {.exportc: "miqt_exec_callback_QFileSystemModel_itemData ".} =
  var nimfunc = cast[ptr QFileSystemModelitemDataProc](cast[pointer](slot))
  let slotval1 = gen_qabstractitemmodel_types.QModelIndex(h: index)


  let virtualReturn = nimfunc[](slotval1 )
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

  fQFileSystemModel_virtualbase_setItemData(self.h, index.h, struct_miqt_map(len: csize_t(len(roles)),keys: if len(roles) == 0: nil else: addr(roles_Keys_CArray[0]), values: if len(roles) == 0: nil else: addr(roles_Values_CArray[0]),))

type QFileSystemModelsetItemDataProc* = proc(index: gen_qabstractitemmodel_types.QModelIndex, roles: Table[cint,gen_qvariant_types.QVariant]): bool
proc onsetItemData*(self: gen_qfilesystemmodel_types.QFileSystemModel, slot: QFileSystemModelsetItemDataProc) =
  # TODO check subclass
  var tmp = new QFileSystemModelsetItemDataProc
  tmp[] = slot
  GC_ref(tmp)
  fcQFileSystemModel_override_virtual_setItemData(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QFileSystemModel_setItemData(self: ptr cQFileSystemModel, slot: int, index: pointer, roles: struct_miqt_map): bool {.exportc: "miqt_exec_callback_QFileSystemModel_setItemData ".} =
  var nimfunc = cast[ptr QFileSystemModelsetItemDataProc](cast[pointer](slot))
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


  let virtualReturn = nimfunc[](slotval1, slotval2 )

  virtualReturn
proc QFileSystemModelclearItemData*(self: gen_qfilesystemmodel_types.QFileSystemModel, index: gen_qabstractitemmodel_types.QModelIndex): bool =
  fQFileSystemModel_virtualbase_clearItemData(self.h, index.h)

type QFileSystemModelclearItemDataProc* = proc(index: gen_qabstractitemmodel_types.QModelIndex): bool
proc onclearItemData*(self: gen_qfilesystemmodel_types.QFileSystemModel, slot: QFileSystemModelclearItemDataProc) =
  # TODO check subclass
  var tmp = new QFileSystemModelclearItemDataProc
  tmp[] = slot
  GC_ref(tmp)
  fcQFileSystemModel_override_virtual_clearItemData(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QFileSystemModel_clearItemData(self: ptr cQFileSystemModel, slot: int, index: pointer): bool {.exportc: "miqt_exec_callback_QFileSystemModel_clearItemData ".} =
  var nimfunc = cast[ptr QFileSystemModelclearItemDataProc](cast[pointer](slot))
  let slotval1 = gen_qabstractitemmodel_types.QModelIndex(h: index)


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn
proc QFileSystemModelcanDropMimeData*(self: gen_qfilesystemmodel_types.QFileSystemModel, data: gen_qmimedata_types.QMimeData, action: cint, row: cint, column: cint, parent: gen_qabstractitemmodel_types.QModelIndex): bool =
  fQFileSystemModel_virtualbase_canDropMimeData(self.h, data.h, cint(action), row, column, parent.h)

type QFileSystemModelcanDropMimeDataProc* = proc(data: gen_qmimedata_types.QMimeData, action: cint, row: cint, column: cint, parent: gen_qabstractitemmodel_types.QModelIndex): bool
proc oncanDropMimeData*(self: gen_qfilesystemmodel_types.QFileSystemModel, slot: QFileSystemModelcanDropMimeDataProc) =
  # TODO check subclass
  var tmp = new QFileSystemModelcanDropMimeDataProc
  tmp[] = slot
  GC_ref(tmp)
  fcQFileSystemModel_override_virtual_canDropMimeData(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QFileSystemModel_canDropMimeData(self: ptr cQFileSystemModel, slot: int, data: pointer, action: cint, row: cint, column: cint, parent: pointer): bool {.exportc: "miqt_exec_callback_QFileSystemModel_canDropMimeData ".} =
  var nimfunc = cast[ptr QFileSystemModelcanDropMimeDataProc](cast[pointer](slot))
  let slotval1 = gen_qmimedata_types.QMimeData(h: data)

  let slotval2 = cint(action)

  let slotval3 = row

  let slotval4 = column

  let slotval5 = gen_qabstractitemmodel_types.QModelIndex(h: parent)


  let virtualReturn = nimfunc[](slotval1, slotval2, slotval3, slotval4, slotval5 )

  virtualReturn
proc QFileSystemModelsupportedDragActions*(self: gen_qfilesystemmodel_types.QFileSystemModel, ): cint =
  cint(fQFileSystemModel_virtualbase_supportedDragActions(self.h))

type QFileSystemModelsupportedDragActionsProc* = proc(): cint
proc onsupportedDragActions*(self: gen_qfilesystemmodel_types.QFileSystemModel, slot: QFileSystemModelsupportedDragActionsProc) =
  # TODO check subclass
  var tmp = new QFileSystemModelsupportedDragActionsProc
  tmp[] = slot
  GC_ref(tmp)
  fcQFileSystemModel_override_virtual_supportedDragActions(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QFileSystemModel_supportedDragActions(self: ptr cQFileSystemModel, slot: int): cint {.exportc: "miqt_exec_callback_QFileSystemModel_supportedDragActions ".} =
  var nimfunc = cast[ptr QFileSystemModelsupportedDragActionsProc](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )

  cint(virtualReturn)
proc QFileSystemModelinsertRows*(self: gen_qfilesystemmodel_types.QFileSystemModel, row: cint, count: cint, parent: gen_qabstractitemmodel_types.QModelIndex): bool =
  fQFileSystemModel_virtualbase_insertRows(self.h, row, count, parent.h)

type QFileSystemModelinsertRowsProc* = proc(row: cint, count: cint, parent: gen_qabstractitemmodel_types.QModelIndex): bool
proc oninsertRows*(self: gen_qfilesystemmodel_types.QFileSystemModel, slot: QFileSystemModelinsertRowsProc) =
  # TODO check subclass
  var tmp = new QFileSystemModelinsertRowsProc
  tmp[] = slot
  GC_ref(tmp)
  fcQFileSystemModel_override_virtual_insertRows(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QFileSystemModel_insertRows(self: ptr cQFileSystemModel, slot: int, row: cint, count: cint, parent: pointer): bool {.exportc: "miqt_exec_callback_QFileSystemModel_insertRows ".} =
  var nimfunc = cast[ptr QFileSystemModelinsertRowsProc](cast[pointer](slot))
  let slotval1 = row

  let slotval2 = count

  let slotval3 = gen_qabstractitemmodel_types.QModelIndex(h: parent)


  let virtualReturn = nimfunc[](slotval1, slotval2, slotval3 )

  virtualReturn
proc QFileSystemModelinsertColumns*(self: gen_qfilesystemmodel_types.QFileSystemModel, column: cint, count: cint, parent: gen_qabstractitemmodel_types.QModelIndex): bool =
  fQFileSystemModel_virtualbase_insertColumns(self.h, column, count, parent.h)

type QFileSystemModelinsertColumnsProc* = proc(column: cint, count: cint, parent: gen_qabstractitemmodel_types.QModelIndex): bool
proc oninsertColumns*(self: gen_qfilesystemmodel_types.QFileSystemModel, slot: QFileSystemModelinsertColumnsProc) =
  # TODO check subclass
  var tmp = new QFileSystemModelinsertColumnsProc
  tmp[] = slot
  GC_ref(tmp)
  fcQFileSystemModel_override_virtual_insertColumns(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QFileSystemModel_insertColumns(self: ptr cQFileSystemModel, slot: int, column: cint, count: cint, parent: pointer): bool {.exportc: "miqt_exec_callback_QFileSystemModel_insertColumns ".} =
  var nimfunc = cast[ptr QFileSystemModelinsertColumnsProc](cast[pointer](slot))
  let slotval1 = column

  let slotval2 = count

  let slotval3 = gen_qabstractitemmodel_types.QModelIndex(h: parent)


  let virtualReturn = nimfunc[](slotval1, slotval2, slotval3 )

  virtualReturn
proc QFileSystemModelremoveRows*(self: gen_qfilesystemmodel_types.QFileSystemModel, row: cint, count: cint, parent: gen_qabstractitemmodel_types.QModelIndex): bool =
  fQFileSystemModel_virtualbase_removeRows(self.h, row, count, parent.h)

type QFileSystemModelremoveRowsProc* = proc(row: cint, count: cint, parent: gen_qabstractitemmodel_types.QModelIndex): bool
proc onremoveRows*(self: gen_qfilesystemmodel_types.QFileSystemModel, slot: QFileSystemModelremoveRowsProc) =
  # TODO check subclass
  var tmp = new QFileSystemModelremoveRowsProc
  tmp[] = slot
  GC_ref(tmp)
  fcQFileSystemModel_override_virtual_removeRows(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QFileSystemModel_removeRows(self: ptr cQFileSystemModel, slot: int, row: cint, count: cint, parent: pointer): bool {.exportc: "miqt_exec_callback_QFileSystemModel_removeRows ".} =
  var nimfunc = cast[ptr QFileSystemModelremoveRowsProc](cast[pointer](slot))
  let slotval1 = row

  let slotval2 = count

  let slotval3 = gen_qabstractitemmodel_types.QModelIndex(h: parent)


  let virtualReturn = nimfunc[](slotval1, slotval2, slotval3 )

  virtualReturn
proc QFileSystemModelremoveColumns*(self: gen_qfilesystemmodel_types.QFileSystemModel, column: cint, count: cint, parent: gen_qabstractitemmodel_types.QModelIndex): bool =
  fQFileSystemModel_virtualbase_removeColumns(self.h, column, count, parent.h)

type QFileSystemModelremoveColumnsProc* = proc(column: cint, count: cint, parent: gen_qabstractitemmodel_types.QModelIndex): bool
proc onremoveColumns*(self: gen_qfilesystemmodel_types.QFileSystemModel, slot: QFileSystemModelremoveColumnsProc) =
  # TODO check subclass
  var tmp = new QFileSystemModelremoveColumnsProc
  tmp[] = slot
  GC_ref(tmp)
  fcQFileSystemModel_override_virtual_removeColumns(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QFileSystemModel_removeColumns(self: ptr cQFileSystemModel, slot: int, column: cint, count: cint, parent: pointer): bool {.exportc: "miqt_exec_callback_QFileSystemModel_removeColumns ".} =
  var nimfunc = cast[ptr QFileSystemModelremoveColumnsProc](cast[pointer](slot))
  let slotval1 = column

  let slotval2 = count

  let slotval3 = gen_qabstractitemmodel_types.QModelIndex(h: parent)


  let virtualReturn = nimfunc[](slotval1, slotval2, slotval3 )

  virtualReturn
proc QFileSystemModelmoveRows*(self: gen_qfilesystemmodel_types.QFileSystemModel, sourceParent: gen_qabstractitemmodel_types.QModelIndex, sourceRow: cint, count: cint, destinationParent: gen_qabstractitemmodel_types.QModelIndex, destinationChild: cint): bool =
  fQFileSystemModel_virtualbase_moveRows(self.h, sourceParent.h, sourceRow, count, destinationParent.h, destinationChild)

type QFileSystemModelmoveRowsProc* = proc(sourceParent: gen_qabstractitemmodel_types.QModelIndex, sourceRow: cint, count: cint, destinationParent: gen_qabstractitemmodel_types.QModelIndex, destinationChild: cint): bool
proc onmoveRows*(self: gen_qfilesystemmodel_types.QFileSystemModel, slot: QFileSystemModelmoveRowsProc) =
  # TODO check subclass
  var tmp = new QFileSystemModelmoveRowsProc
  tmp[] = slot
  GC_ref(tmp)
  fcQFileSystemModel_override_virtual_moveRows(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QFileSystemModel_moveRows(self: ptr cQFileSystemModel, slot: int, sourceParent: pointer, sourceRow: cint, count: cint, destinationParent: pointer, destinationChild: cint): bool {.exportc: "miqt_exec_callback_QFileSystemModel_moveRows ".} =
  var nimfunc = cast[ptr QFileSystemModelmoveRowsProc](cast[pointer](slot))
  let slotval1 = gen_qabstractitemmodel_types.QModelIndex(h: sourceParent)

  let slotval2 = sourceRow

  let slotval3 = count

  let slotval4 = gen_qabstractitemmodel_types.QModelIndex(h: destinationParent)

  let slotval5 = destinationChild


  let virtualReturn = nimfunc[](slotval1, slotval2, slotval3, slotval4, slotval5 )

  virtualReturn
proc QFileSystemModelmoveColumns*(self: gen_qfilesystemmodel_types.QFileSystemModel, sourceParent: gen_qabstractitemmodel_types.QModelIndex, sourceColumn: cint, count: cint, destinationParent: gen_qabstractitemmodel_types.QModelIndex, destinationChild: cint): bool =
  fQFileSystemModel_virtualbase_moveColumns(self.h, sourceParent.h, sourceColumn, count, destinationParent.h, destinationChild)

type QFileSystemModelmoveColumnsProc* = proc(sourceParent: gen_qabstractitemmodel_types.QModelIndex, sourceColumn: cint, count: cint, destinationParent: gen_qabstractitemmodel_types.QModelIndex, destinationChild: cint): bool
proc onmoveColumns*(self: gen_qfilesystemmodel_types.QFileSystemModel, slot: QFileSystemModelmoveColumnsProc) =
  # TODO check subclass
  var tmp = new QFileSystemModelmoveColumnsProc
  tmp[] = slot
  GC_ref(tmp)
  fcQFileSystemModel_override_virtual_moveColumns(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QFileSystemModel_moveColumns(self: ptr cQFileSystemModel, slot: int, sourceParent: pointer, sourceColumn: cint, count: cint, destinationParent: pointer, destinationChild: cint): bool {.exportc: "miqt_exec_callback_QFileSystemModel_moveColumns ".} =
  var nimfunc = cast[ptr QFileSystemModelmoveColumnsProc](cast[pointer](slot))
  let slotval1 = gen_qabstractitemmodel_types.QModelIndex(h: sourceParent)

  let slotval2 = sourceColumn

  let slotval3 = count

  let slotval4 = gen_qabstractitemmodel_types.QModelIndex(h: destinationParent)

  let slotval5 = destinationChild


  let virtualReturn = nimfunc[](slotval1, slotval2, slotval3, slotval4, slotval5 )

  virtualReturn
proc QFileSystemModelbuddy*(self: gen_qfilesystemmodel_types.QFileSystemModel, index: gen_qabstractitemmodel_types.QModelIndex): gen_qabstractitemmodel_types.QModelIndex =
  gen_qabstractitemmodel_types.QModelIndex(h: fQFileSystemModel_virtualbase_buddy(self.h, index.h))

type QFileSystemModelbuddyProc* = proc(index: gen_qabstractitemmodel_types.QModelIndex): gen_qabstractitemmodel_types.QModelIndex
proc onbuddy*(self: gen_qfilesystemmodel_types.QFileSystemModel, slot: QFileSystemModelbuddyProc) =
  # TODO check subclass
  var tmp = new QFileSystemModelbuddyProc
  tmp[] = slot
  GC_ref(tmp)
  fcQFileSystemModel_override_virtual_buddy(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QFileSystemModel_buddy(self: ptr cQFileSystemModel, slot: int, index: pointer): pointer {.exportc: "miqt_exec_callback_QFileSystemModel_buddy ".} =
  var nimfunc = cast[ptr QFileSystemModelbuddyProc](cast[pointer](slot))
  let slotval1 = gen_qabstractitemmodel_types.QModelIndex(h: index)


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn.h
proc QFileSystemModelmatch*(self: gen_qfilesystemmodel_types.QFileSystemModel, start: gen_qabstractitemmodel_types.QModelIndex, role: cint, value: gen_qvariant_types.QVariant, hits: cint, flags: cint): seq[gen_qabstractitemmodel_types.QModelIndex] =
  var v_ma = fQFileSystemModel_virtualbase_match(self.h, start.h, role, value.h, hits, cint(flags))
  var vx_ret = newSeq[gen_qabstractitemmodel_types.QModelIndex](int(v_ma.len))
  let v_outCast = cast[ptr UncheckedArray[pointer]](v_ma.data)
  for i in 0 ..< v_ma.len:
    vx_ret[i] = gen_qabstractitemmodel_types.QModelIndex(h: v_outCast[i])
  vx_ret

type QFileSystemModelmatchProc* = proc(start: gen_qabstractitemmodel_types.QModelIndex, role: cint, value: gen_qvariant_types.QVariant, hits: cint, flags: cint): seq[gen_qabstractitemmodel_types.QModelIndex]
proc onmatch*(self: gen_qfilesystemmodel_types.QFileSystemModel, slot: QFileSystemModelmatchProc) =
  # TODO check subclass
  var tmp = new QFileSystemModelmatchProc
  tmp[] = slot
  GC_ref(tmp)
  fcQFileSystemModel_override_virtual_match(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QFileSystemModel_match(self: ptr cQFileSystemModel, slot: int, start: pointer, role: cint, value: pointer, hits: cint, flags: cint): struct_miqt_array {.exportc: "miqt_exec_callback_QFileSystemModel_match ".} =
  var nimfunc = cast[ptr QFileSystemModelmatchProc](cast[pointer](slot))
  let slotval1 = gen_qabstractitemmodel_types.QModelIndex(h: start)

  let slotval2 = role

  let slotval3 = gen_qvariant_types.QVariant(h: value)

  let slotval4 = hits

  let slotval5 = cint(flags)


  let virtualReturn = nimfunc[](slotval1, slotval2, slotval3, slotval4, slotval5 )
  var virtualReturn_CArray = newSeq[pointer](len(virtualReturn))
  for i in 0..<len(virtualReturn):
    virtualReturn_CArray[i] = virtualReturn[i].h


  struct_miqt_array(len: csize_t(len(virtualReturn)), data: if len(virtualReturn) == 0: nil else: addr(virtualReturn_CArray[0]))
proc QFileSystemModelspan*(self: gen_qfilesystemmodel_types.QFileSystemModel, index: gen_qabstractitemmodel_types.QModelIndex): gen_qsize_types.QSize =
  gen_qsize_types.QSize(h: fQFileSystemModel_virtualbase_span(self.h, index.h))

type QFileSystemModelspanProc* = proc(index: gen_qabstractitemmodel_types.QModelIndex): gen_qsize_types.QSize
proc onspan*(self: gen_qfilesystemmodel_types.QFileSystemModel, slot: QFileSystemModelspanProc) =
  # TODO check subclass
  var tmp = new QFileSystemModelspanProc
  tmp[] = slot
  GC_ref(tmp)
  fcQFileSystemModel_override_virtual_span(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QFileSystemModel_span(self: ptr cQFileSystemModel, slot: int, index: pointer): pointer {.exportc: "miqt_exec_callback_QFileSystemModel_span ".} =
  var nimfunc = cast[ptr QFileSystemModelspanProc](cast[pointer](slot))
  let slotval1 = gen_qabstractitemmodel_types.QModelIndex(h: index)


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn.h
proc QFileSystemModelmultiData*(self: gen_qfilesystemmodel_types.QFileSystemModel, index: gen_qabstractitemmodel_types.QModelIndex, roleDataSpan: gen_qabstractitemmodel_types.QModelRoleDataSpan): void =
  fQFileSystemModel_virtualbase_multiData(self.h, index.h, roleDataSpan.h)

type QFileSystemModelmultiDataProc* = proc(index: gen_qabstractitemmodel_types.QModelIndex, roleDataSpan: gen_qabstractitemmodel_types.QModelRoleDataSpan): void
proc onmultiData*(self: gen_qfilesystemmodel_types.QFileSystemModel, slot: QFileSystemModelmultiDataProc) =
  # TODO check subclass
  var tmp = new QFileSystemModelmultiDataProc
  tmp[] = slot
  GC_ref(tmp)
  fcQFileSystemModel_override_virtual_multiData(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QFileSystemModel_multiData(self: ptr cQFileSystemModel, slot: int, index: pointer, roleDataSpan: pointer): void {.exportc: "miqt_exec_callback_QFileSystemModel_multiData ".} =
  var nimfunc = cast[ptr QFileSystemModelmultiDataProc](cast[pointer](slot))
  let slotval1 = gen_qabstractitemmodel_types.QModelIndex(h: index)

  let slotval2 = gen_qabstractitemmodel_types.QModelRoleDataSpan(h: roleDataSpan)


  nimfunc[](slotval1, slotval2)
proc QFileSystemModelsubmit*(self: gen_qfilesystemmodel_types.QFileSystemModel, ): bool =
  fQFileSystemModel_virtualbase_submit(self.h)

type QFileSystemModelsubmitProc* = proc(): bool
proc onsubmit*(self: gen_qfilesystemmodel_types.QFileSystemModel, slot: QFileSystemModelsubmitProc) =
  # TODO check subclass
  var tmp = new QFileSystemModelsubmitProc
  tmp[] = slot
  GC_ref(tmp)
  fcQFileSystemModel_override_virtual_submit(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QFileSystemModel_submit(self: ptr cQFileSystemModel, slot: int): bool {.exportc: "miqt_exec_callback_QFileSystemModel_submit ".} =
  var nimfunc = cast[ptr QFileSystemModelsubmitProc](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )

  virtualReturn
proc QFileSystemModelrevert*(self: gen_qfilesystemmodel_types.QFileSystemModel, ): void =
  fQFileSystemModel_virtualbase_revert(self.h)

type QFileSystemModelrevertProc* = proc(): void
proc onrevert*(self: gen_qfilesystemmodel_types.QFileSystemModel, slot: QFileSystemModelrevertProc) =
  # TODO check subclass
  var tmp = new QFileSystemModelrevertProc
  tmp[] = slot
  GC_ref(tmp)
  fcQFileSystemModel_override_virtual_revert(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QFileSystemModel_revert(self: ptr cQFileSystemModel, slot: int): void {.exportc: "miqt_exec_callback_QFileSystemModel_revert ".} =
  var nimfunc = cast[ptr QFileSystemModelrevertProc](cast[pointer](slot))

  nimfunc[]()
proc QFileSystemModelresetInternalData*(self: gen_qfilesystemmodel_types.QFileSystemModel, ): void =
  fQFileSystemModel_virtualbase_resetInternalData(self.h)

type QFileSystemModelresetInternalDataProc* = proc(): void
proc onresetInternalData*(self: gen_qfilesystemmodel_types.QFileSystemModel, slot: QFileSystemModelresetInternalDataProc) =
  # TODO check subclass
  var tmp = new QFileSystemModelresetInternalDataProc
  tmp[] = slot
  GC_ref(tmp)
  fcQFileSystemModel_override_virtual_resetInternalData(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QFileSystemModel_resetInternalData(self: ptr cQFileSystemModel, slot: int): void {.exportc: "miqt_exec_callback_QFileSystemModel_resetInternalData ".} =
  var nimfunc = cast[ptr QFileSystemModelresetInternalDataProc](cast[pointer](slot))

  nimfunc[]()
proc QFileSystemModeleventFilter*(self: gen_qfilesystemmodel_types.QFileSystemModel, watched: gen_qobject_types.QObject, event: gen_qcoreevent_types.QEvent): bool =
  fQFileSystemModel_virtualbase_eventFilter(self.h, watched.h, event.h)

type QFileSystemModeleventFilterProc* = proc(watched: gen_qobject_types.QObject, event: gen_qcoreevent_types.QEvent): bool
proc oneventFilter*(self: gen_qfilesystemmodel_types.QFileSystemModel, slot: QFileSystemModeleventFilterProc) =
  # TODO check subclass
  var tmp = new QFileSystemModeleventFilterProc
  tmp[] = slot
  GC_ref(tmp)
  fcQFileSystemModel_override_virtual_eventFilter(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QFileSystemModel_eventFilter(self: ptr cQFileSystemModel, slot: int, watched: pointer, event: pointer): bool {.exportc: "miqt_exec_callback_QFileSystemModel_eventFilter ".} =
  var nimfunc = cast[ptr QFileSystemModeleventFilterProc](cast[pointer](slot))
  let slotval1 = gen_qobject_types.QObject(h: watched)

  let slotval2 = gen_qcoreevent_types.QEvent(h: event)


  let virtualReturn = nimfunc[](slotval1, slotval2 )

  virtualReturn
proc QFileSystemModelchildEvent*(self: gen_qfilesystemmodel_types.QFileSystemModel, event: gen_qcoreevent_types.QChildEvent): void =
  fQFileSystemModel_virtualbase_childEvent(self.h, event.h)

type QFileSystemModelchildEventProc* = proc(event: gen_qcoreevent_types.QChildEvent): void
proc onchildEvent*(self: gen_qfilesystemmodel_types.QFileSystemModel, slot: QFileSystemModelchildEventProc) =
  # TODO check subclass
  var tmp = new QFileSystemModelchildEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQFileSystemModel_override_virtual_childEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QFileSystemModel_childEvent(self: ptr cQFileSystemModel, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QFileSystemModel_childEvent ".} =
  var nimfunc = cast[ptr QFileSystemModelchildEventProc](cast[pointer](slot))
  let slotval1 = gen_qcoreevent_types.QChildEvent(h: event)


  nimfunc[](slotval1)
proc QFileSystemModelcustomEvent*(self: gen_qfilesystemmodel_types.QFileSystemModel, event: gen_qcoreevent_types.QEvent): void =
  fQFileSystemModel_virtualbase_customEvent(self.h, event.h)

type QFileSystemModelcustomEventProc* = proc(event: gen_qcoreevent_types.QEvent): void
proc oncustomEvent*(self: gen_qfilesystemmodel_types.QFileSystemModel, slot: QFileSystemModelcustomEventProc) =
  # TODO check subclass
  var tmp = new QFileSystemModelcustomEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQFileSystemModel_override_virtual_customEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QFileSystemModel_customEvent(self: ptr cQFileSystemModel, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QFileSystemModel_customEvent ".} =
  var nimfunc = cast[ptr QFileSystemModelcustomEventProc](cast[pointer](slot))
  let slotval1 = gen_qcoreevent_types.QEvent(h: event)


  nimfunc[](slotval1)
proc QFileSystemModelconnectNotify*(self: gen_qfilesystemmodel_types.QFileSystemModel, signal: gen_qmetaobject_types.QMetaMethod): void =
  fQFileSystemModel_virtualbase_connectNotify(self.h, signal.h)

type QFileSystemModelconnectNotifyProc* = proc(signal: gen_qmetaobject_types.QMetaMethod): void
proc onconnectNotify*(self: gen_qfilesystemmodel_types.QFileSystemModel, slot: QFileSystemModelconnectNotifyProc) =
  # TODO check subclass
  var tmp = new QFileSystemModelconnectNotifyProc
  tmp[] = slot
  GC_ref(tmp)
  fcQFileSystemModel_override_virtual_connectNotify(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QFileSystemModel_connectNotify(self: ptr cQFileSystemModel, slot: int, signal: pointer): void {.exportc: "miqt_exec_callback_QFileSystemModel_connectNotify ".} =
  var nimfunc = cast[ptr QFileSystemModelconnectNotifyProc](cast[pointer](slot))
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal)


  nimfunc[](slotval1)
proc QFileSystemModeldisconnectNotify*(self: gen_qfilesystemmodel_types.QFileSystemModel, signal: gen_qmetaobject_types.QMetaMethod): void =
  fQFileSystemModel_virtualbase_disconnectNotify(self.h, signal.h)

type QFileSystemModeldisconnectNotifyProc* = proc(signal: gen_qmetaobject_types.QMetaMethod): void
proc ondisconnectNotify*(self: gen_qfilesystemmodel_types.QFileSystemModel, slot: QFileSystemModeldisconnectNotifyProc) =
  # TODO check subclass
  var tmp = new QFileSystemModeldisconnectNotifyProc
  tmp[] = slot
  GC_ref(tmp)
  fcQFileSystemModel_override_virtual_disconnectNotify(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QFileSystemModel_disconnectNotify(self: ptr cQFileSystemModel, slot: int, signal: pointer): void {.exportc: "miqt_exec_callback_QFileSystemModel_disconnectNotify ".} =
  var nimfunc = cast[ptr QFileSystemModeldisconnectNotifyProc](cast[pointer](slot))
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal)


  nimfunc[](slotval1)
proc staticMetaObject*(_: type gen_qfilesystemmodel_types.QFileSystemModel): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQFileSystemModel_staticMetaObject())
proc delete*(self: gen_qfilesystemmodel_types.QFileSystemModel) =
  fcQFileSystemModel_delete(self.h)
