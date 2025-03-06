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

proc fcQDirModel_new(nameFilters: struct_miqt_array, filters: cint, sort: cint): ptr cQDirModel {.importc: "QDirModel_new".}
proc fcQDirModel_new2(): ptr cQDirModel {.importc: "QDirModel_new2".}
proc fcQDirModel_new3(nameFilters: struct_miqt_array, filters: cint, sort: cint, parent: pointer): ptr cQDirModel {.importc: "QDirModel_new3".}
proc fcQDirModel_new4(parent: pointer): ptr cQDirModel {.importc: "QDirModel_new4".}
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
proc fQDirModel_virtualbase_metaObject(self: pointer, ): pointer{.importc: "QDirModel_virtualbase_metaObject".}
proc fcQDirModel_override_virtual_metaObject(self: pointer, slot: int) {.importc: "QDirModel_override_virtual_metaObject".}
proc fQDirModel_virtualbase_metacast(self: pointer, param1: cstring): pointer{.importc: "QDirModel_virtualbase_metacast".}
proc fcQDirModel_override_virtual_metacast(self: pointer, slot: int) {.importc: "QDirModel_override_virtual_metacast".}
proc fQDirModel_virtualbase_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint{.importc: "QDirModel_virtualbase_metacall".}
proc fcQDirModel_override_virtual_metacall(self: pointer, slot: int) {.importc: "QDirModel_override_virtual_metacall".}
proc fQDirModel_virtualbase_index(self: pointer, row: cint, column: cint, parent: pointer): pointer{.importc: "QDirModel_virtualbase_index".}
proc fcQDirModel_override_virtual_index(self: pointer, slot: int) {.importc: "QDirModel_override_virtual_index".}
proc fQDirModel_virtualbase_parent(self: pointer, child: pointer): pointer{.importc: "QDirModel_virtualbase_parent".}
proc fcQDirModel_override_virtual_parent(self: pointer, slot: int) {.importc: "QDirModel_override_virtual_parent".}
proc fQDirModel_virtualbase_rowCount(self: pointer, parent: pointer): cint{.importc: "QDirModel_virtualbase_rowCount".}
proc fcQDirModel_override_virtual_rowCount(self: pointer, slot: int) {.importc: "QDirModel_override_virtual_rowCount".}
proc fQDirModel_virtualbase_columnCount(self: pointer, parent: pointer): cint{.importc: "QDirModel_virtualbase_columnCount".}
proc fcQDirModel_override_virtual_columnCount(self: pointer, slot: int) {.importc: "QDirModel_override_virtual_columnCount".}
proc fQDirModel_virtualbase_data(self: pointer, index: pointer, role: cint): pointer{.importc: "QDirModel_virtualbase_data".}
proc fcQDirModel_override_virtual_data(self: pointer, slot: int) {.importc: "QDirModel_override_virtual_data".}
proc fQDirModel_virtualbase_setData(self: pointer, index: pointer, value: pointer, role: cint): bool{.importc: "QDirModel_virtualbase_setData".}
proc fcQDirModel_override_virtual_setData(self: pointer, slot: int) {.importc: "QDirModel_override_virtual_setData".}
proc fQDirModel_virtualbase_headerData(self: pointer, section: cint, orientation: cint, role: cint): pointer{.importc: "QDirModel_virtualbase_headerData".}
proc fcQDirModel_override_virtual_headerData(self: pointer, slot: int) {.importc: "QDirModel_override_virtual_headerData".}
proc fQDirModel_virtualbase_hasChildren(self: pointer, index: pointer): bool{.importc: "QDirModel_virtualbase_hasChildren".}
proc fcQDirModel_override_virtual_hasChildren(self: pointer, slot: int) {.importc: "QDirModel_override_virtual_hasChildren".}
proc fQDirModel_virtualbase_flags(self: pointer, index: pointer): cint{.importc: "QDirModel_virtualbase_flags".}
proc fcQDirModel_override_virtual_flags(self: pointer, slot: int) {.importc: "QDirModel_override_virtual_flags".}
proc fQDirModel_virtualbase_sort(self: pointer, column: cint, order: cint): void{.importc: "QDirModel_virtualbase_sort".}
proc fcQDirModel_override_virtual_sort(self: pointer, slot: int) {.importc: "QDirModel_override_virtual_sort".}
proc fQDirModel_virtualbase_mimeTypes(self: pointer, ): struct_miqt_array{.importc: "QDirModel_virtualbase_mimeTypes".}
proc fcQDirModel_override_virtual_mimeTypes(self: pointer, slot: int) {.importc: "QDirModel_override_virtual_mimeTypes".}
proc fQDirModel_virtualbase_mimeData(self: pointer, indexes: struct_miqt_array): pointer{.importc: "QDirModel_virtualbase_mimeData".}
proc fcQDirModel_override_virtual_mimeData(self: pointer, slot: int) {.importc: "QDirModel_override_virtual_mimeData".}
proc fQDirModel_virtualbase_dropMimeData(self: pointer, data: pointer, action: cint, row: cint, column: cint, parent: pointer): bool{.importc: "QDirModel_virtualbase_dropMimeData".}
proc fcQDirModel_override_virtual_dropMimeData(self: pointer, slot: int) {.importc: "QDirModel_override_virtual_dropMimeData".}
proc fQDirModel_virtualbase_supportedDropActions(self: pointer, ): cint{.importc: "QDirModel_virtualbase_supportedDropActions".}
proc fcQDirModel_override_virtual_supportedDropActions(self: pointer, slot: int) {.importc: "QDirModel_override_virtual_supportedDropActions".}
proc fQDirModel_virtualbase_sibling(self: pointer, row: cint, column: cint, idx: pointer): pointer{.importc: "QDirModel_virtualbase_sibling".}
proc fcQDirModel_override_virtual_sibling(self: pointer, slot: int) {.importc: "QDirModel_override_virtual_sibling".}
proc fQDirModel_virtualbase_setHeaderData(self: pointer, section: cint, orientation: cint, value: pointer, role: cint): bool{.importc: "QDirModel_virtualbase_setHeaderData".}
proc fcQDirModel_override_virtual_setHeaderData(self: pointer, slot: int) {.importc: "QDirModel_override_virtual_setHeaderData".}
proc fQDirModel_virtualbase_itemData(self: pointer, index: pointer): struct_miqt_map{.importc: "QDirModel_virtualbase_itemData".}
proc fcQDirModel_override_virtual_itemData(self: pointer, slot: int) {.importc: "QDirModel_override_virtual_itemData".}
proc fQDirModel_virtualbase_setItemData(self: pointer, index: pointer, roles: struct_miqt_map): bool{.importc: "QDirModel_virtualbase_setItemData".}
proc fcQDirModel_override_virtual_setItemData(self: pointer, slot: int) {.importc: "QDirModel_override_virtual_setItemData".}
proc fQDirModel_virtualbase_canDropMimeData(self: pointer, data: pointer, action: cint, row: cint, column: cint, parent: pointer): bool{.importc: "QDirModel_virtualbase_canDropMimeData".}
proc fcQDirModel_override_virtual_canDropMimeData(self: pointer, slot: int) {.importc: "QDirModel_override_virtual_canDropMimeData".}
proc fQDirModel_virtualbase_supportedDragActions(self: pointer, ): cint{.importc: "QDirModel_virtualbase_supportedDragActions".}
proc fcQDirModel_override_virtual_supportedDragActions(self: pointer, slot: int) {.importc: "QDirModel_override_virtual_supportedDragActions".}
proc fQDirModel_virtualbase_insertRows(self: pointer, row: cint, count: cint, parent: pointer): bool{.importc: "QDirModel_virtualbase_insertRows".}
proc fcQDirModel_override_virtual_insertRows(self: pointer, slot: int) {.importc: "QDirModel_override_virtual_insertRows".}
proc fQDirModel_virtualbase_insertColumns(self: pointer, column: cint, count: cint, parent: pointer): bool{.importc: "QDirModel_virtualbase_insertColumns".}
proc fcQDirModel_override_virtual_insertColumns(self: pointer, slot: int) {.importc: "QDirModel_override_virtual_insertColumns".}
proc fQDirModel_virtualbase_removeRows(self: pointer, row: cint, count: cint, parent: pointer): bool{.importc: "QDirModel_virtualbase_removeRows".}
proc fcQDirModel_override_virtual_removeRows(self: pointer, slot: int) {.importc: "QDirModel_override_virtual_removeRows".}
proc fQDirModel_virtualbase_removeColumns(self: pointer, column: cint, count: cint, parent: pointer): bool{.importc: "QDirModel_virtualbase_removeColumns".}
proc fcQDirModel_override_virtual_removeColumns(self: pointer, slot: int) {.importc: "QDirModel_override_virtual_removeColumns".}
proc fQDirModel_virtualbase_moveRows(self: pointer, sourceParent: pointer, sourceRow: cint, count: cint, destinationParent: pointer, destinationChild: cint): bool{.importc: "QDirModel_virtualbase_moveRows".}
proc fcQDirModel_override_virtual_moveRows(self: pointer, slot: int) {.importc: "QDirModel_override_virtual_moveRows".}
proc fQDirModel_virtualbase_moveColumns(self: pointer, sourceParent: pointer, sourceColumn: cint, count: cint, destinationParent: pointer, destinationChild: cint): bool{.importc: "QDirModel_virtualbase_moveColumns".}
proc fcQDirModel_override_virtual_moveColumns(self: pointer, slot: int) {.importc: "QDirModel_override_virtual_moveColumns".}
proc fQDirModel_virtualbase_fetchMore(self: pointer, parent: pointer): void{.importc: "QDirModel_virtualbase_fetchMore".}
proc fcQDirModel_override_virtual_fetchMore(self: pointer, slot: int) {.importc: "QDirModel_override_virtual_fetchMore".}
proc fQDirModel_virtualbase_canFetchMore(self: pointer, parent: pointer): bool{.importc: "QDirModel_virtualbase_canFetchMore".}
proc fcQDirModel_override_virtual_canFetchMore(self: pointer, slot: int) {.importc: "QDirModel_override_virtual_canFetchMore".}
proc fQDirModel_virtualbase_buddy(self: pointer, index: pointer): pointer{.importc: "QDirModel_virtualbase_buddy".}
proc fcQDirModel_override_virtual_buddy(self: pointer, slot: int) {.importc: "QDirModel_override_virtual_buddy".}
proc fQDirModel_virtualbase_match(self: pointer, start: pointer, role: cint, value: pointer, hits: cint, flags: cint): struct_miqt_array{.importc: "QDirModel_virtualbase_match".}
proc fcQDirModel_override_virtual_match(self: pointer, slot: int) {.importc: "QDirModel_override_virtual_match".}
proc fQDirModel_virtualbase_span(self: pointer, index: pointer): pointer{.importc: "QDirModel_virtualbase_span".}
proc fcQDirModel_override_virtual_span(self: pointer, slot: int) {.importc: "QDirModel_override_virtual_span".}
proc fQDirModel_virtualbase_roleNames(self: pointer, ): struct_miqt_map{.importc: "QDirModel_virtualbase_roleNames".}
proc fcQDirModel_override_virtual_roleNames(self: pointer, slot: int) {.importc: "QDirModel_override_virtual_roleNames".}
proc fQDirModel_virtualbase_submit(self: pointer, ): bool{.importc: "QDirModel_virtualbase_submit".}
proc fcQDirModel_override_virtual_submit(self: pointer, slot: int) {.importc: "QDirModel_override_virtual_submit".}
proc fQDirModel_virtualbase_revert(self: pointer, ): void{.importc: "QDirModel_virtualbase_revert".}
proc fcQDirModel_override_virtual_revert(self: pointer, slot: int) {.importc: "QDirModel_override_virtual_revert".}
proc fQDirModel_virtualbase_event(self: pointer, event: pointer): bool{.importc: "QDirModel_virtualbase_event".}
proc fcQDirModel_override_virtual_event(self: pointer, slot: int) {.importc: "QDirModel_override_virtual_event".}
proc fQDirModel_virtualbase_eventFilter(self: pointer, watched: pointer, event: pointer): bool{.importc: "QDirModel_virtualbase_eventFilter".}
proc fcQDirModel_override_virtual_eventFilter(self: pointer, slot: int) {.importc: "QDirModel_override_virtual_eventFilter".}
proc fQDirModel_virtualbase_timerEvent(self: pointer, event: pointer): void{.importc: "QDirModel_virtualbase_timerEvent".}
proc fcQDirModel_override_virtual_timerEvent(self: pointer, slot: int) {.importc: "QDirModel_override_virtual_timerEvent".}
proc fQDirModel_virtualbase_childEvent(self: pointer, event: pointer): void{.importc: "QDirModel_virtualbase_childEvent".}
proc fcQDirModel_override_virtual_childEvent(self: pointer, slot: int) {.importc: "QDirModel_override_virtual_childEvent".}
proc fQDirModel_virtualbase_customEvent(self: pointer, event: pointer): void{.importc: "QDirModel_virtualbase_customEvent".}
proc fcQDirModel_override_virtual_customEvent(self: pointer, slot: int) {.importc: "QDirModel_override_virtual_customEvent".}
proc fQDirModel_virtualbase_connectNotify(self: pointer, signal: pointer): void{.importc: "QDirModel_virtualbase_connectNotify".}
proc fcQDirModel_override_virtual_connectNotify(self: pointer, slot: int) {.importc: "QDirModel_override_virtual_connectNotify".}
proc fQDirModel_virtualbase_disconnectNotify(self: pointer, signal: pointer): void{.importc: "QDirModel_virtualbase_disconnectNotify".}
proc fcQDirModel_override_virtual_disconnectNotify(self: pointer, slot: int) {.importc: "QDirModel_override_virtual_disconnectNotify".}
proc fcQDirModel_staticMetaObject(): pointer {.importc: "QDirModel_staticMetaObject".}
proc fcQDirModel_delete(self: pointer) {.importc: "QDirModel_delete".}


func init*(T: type gen_qdirmodel_types.QDirModel, h: ptr cQDirModel): gen_qdirmodel_types.QDirModel =
  T(h: h)
proc create*(T: type gen_qdirmodel_types.QDirModel, nameFilters: seq[string], filters: cint, sort: cint): gen_qdirmodel_types.QDirModel =
  var nameFilters_CArray = newSeq[struct_miqt_string](len(nameFilters))
  for i in 0..<len(nameFilters):
    nameFilters_CArray[i] = struct_miqt_string(data: nameFilters[i], len: csize_t(len(nameFilters[i])))

  gen_qdirmodel_types.QDirModel.init(fcQDirModel_new(struct_miqt_array(len: csize_t(len(nameFilters)), data: if len(nameFilters) == 0: nil else: addr(nameFilters_CArray[0])), cint(filters), cint(sort)))

proc create*(T: type gen_qdirmodel_types.QDirModel, ): gen_qdirmodel_types.QDirModel =
  gen_qdirmodel_types.QDirModel.init(fcQDirModel_new2())

proc create*(T: type gen_qdirmodel_types.QDirModel, nameFilters: seq[string], filters: cint, sort: cint, parent: gen_qobject_types.QObject): gen_qdirmodel_types.QDirModel =
  var nameFilters_CArray = newSeq[struct_miqt_string](len(nameFilters))
  for i in 0..<len(nameFilters):
    nameFilters_CArray[i] = struct_miqt_string(data: nameFilters[i], len: csize_t(len(nameFilters[i])))

  gen_qdirmodel_types.QDirModel.init(fcQDirModel_new3(struct_miqt_array(len: csize_t(len(nameFilters)), data: if len(nameFilters) == 0: nil else: addr(nameFilters_CArray[0])), cint(filters), cint(sort), parent.h))

proc create*(T: type gen_qdirmodel_types.QDirModel, parent: gen_qobject_types.QObject): gen_qdirmodel_types.QDirModel =
  gen_qdirmodel_types.QDirModel.init(fcQDirModel_new4(parent.h))

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

proc QDirModelmetaObject*(self: gen_qdirmodel_types.QDirModel, ): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fQDirModel_virtualbase_metaObject(self.h))

type QDirModelmetaObjectProc* = proc(): gen_qobjectdefs_types.QMetaObject
proc onmetaObject*(self: gen_qdirmodel_types.QDirModel, slot: QDirModelmetaObjectProc) =
  # TODO check subclass
  var tmp = new QDirModelmetaObjectProc
  tmp[] = slot
  GC_ref(tmp)
  fcQDirModel_override_virtual_metaObject(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QDirModel_metaObject(self: ptr cQDirModel, slot: int): pointer {.exportc: "miqt_exec_callback_QDirModel_metaObject ".} =
  var nimfunc = cast[ptr QDirModelmetaObjectProc](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )

  virtualReturn.h
proc QDirModelmetacast*(self: gen_qdirmodel_types.QDirModel, param1: cstring): pointer =
  fQDirModel_virtualbase_metacast(self.h, param1)

type QDirModelmetacastProc* = proc(param1: cstring): pointer
proc onmetacast*(self: gen_qdirmodel_types.QDirModel, slot: QDirModelmetacastProc) =
  # TODO check subclass
  var tmp = new QDirModelmetacastProc
  tmp[] = slot
  GC_ref(tmp)
  fcQDirModel_override_virtual_metacast(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QDirModel_metacast(self: ptr cQDirModel, slot: int, param1: cstring): pointer {.exportc: "miqt_exec_callback_QDirModel_metacast ".} =
  var nimfunc = cast[ptr QDirModelmetacastProc](cast[pointer](slot))
  let slotval1 = (param1)


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn
proc QDirModelmetacall*(self: gen_qdirmodel_types.QDirModel, param1: cint, param2: cint, param3: pointer): cint =
  fQDirModel_virtualbase_metacall(self.h, cint(param1), param2, param3)

type QDirModelmetacallProc* = proc(param1: cint, param2: cint, param3: pointer): cint
proc onmetacall*(self: gen_qdirmodel_types.QDirModel, slot: QDirModelmetacallProc) =
  # TODO check subclass
  var tmp = new QDirModelmetacallProc
  tmp[] = slot
  GC_ref(tmp)
  fcQDirModel_override_virtual_metacall(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QDirModel_metacall(self: ptr cQDirModel, slot: int, param1: cint, param2: cint, param3: pointer): cint {.exportc: "miqt_exec_callback_QDirModel_metacall ".} =
  var nimfunc = cast[ptr QDirModelmetacallProc](cast[pointer](slot))
  let slotval1 = cint(param1)

  let slotval2 = param2

  let slotval3 = param3


  let virtualReturn = nimfunc[](slotval1, slotval2, slotval3 )

  virtualReturn
proc QDirModelindex*(self: gen_qdirmodel_types.QDirModel, row: cint, column: cint, parent: gen_qabstractitemmodel_types.QModelIndex): gen_qabstractitemmodel_types.QModelIndex =
  gen_qabstractitemmodel_types.QModelIndex(h: fQDirModel_virtualbase_index(self.h, row, column, parent.h))

type QDirModelindexProc* = proc(row: cint, column: cint, parent: gen_qabstractitemmodel_types.QModelIndex): gen_qabstractitemmodel_types.QModelIndex
proc onindex*(self: gen_qdirmodel_types.QDirModel, slot: QDirModelindexProc) =
  # TODO check subclass
  var tmp = new QDirModelindexProc
  tmp[] = slot
  GC_ref(tmp)
  fcQDirModel_override_virtual_index(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QDirModel_index(self: ptr cQDirModel, slot: int, row: cint, column: cint, parent: pointer): pointer {.exportc: "miqt_exec_callback_QDirModel_index ".} =
  var nimfunc = cast[ptr QDirModelindexProc](cast[pointer](slot))
  let slotval1 = row

  let slotval2 = column

  let slotval3 = gen_qabstractitemmodel_types.QModelIndex(h: parent)


  let virtualReturn = nimfunc[](slotval1, slotval2, slotval3 )

  virtualReturn.h
proc QDirModelparent*(self: gen_qdirmodel_types.QDirModel, child: gen_qabstractitemmodel_types.QModelIndex): gen_qabstractitemmodel_types.QModelIndex =
  gen_qabstractitemmodel_types.QModelIndex(h: fQDirModel_virtualbase_parent(self.h, child.h))

type QDirModelparentProc* = proc(child: gen_qabstractitemmodel_types.QModelIndex): gen_qabstractitemmodel_types.QModelIndex
proc onparent*(self: gen_qdirmodel_types.QDirModel, slot: QDirModelparentProc) =
  # TODO check subclass
  var tmp = new QDirModelparentProc
  tmp[] = slot
  GC_ref(tmp)
  fcQDirModel_override_virtual_parent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QDirModel_parent(self: ptr cQDirModel, slot: int, child: pointer): pointer {.exportc: "miqt_exec_callback_QDirModel_parent ".} =
  var nimfunc = cast[ptr QDirModelparentProc](cast[pointer](slot))
  let slotval1 = gen_qabstractitemmodel_types.QModelIndex(h: child)


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn.h
proc QDirModelrowCount*(self: gen_qdirmodel_types.QDirModel, parent: gen_qabstractitemmodel_types.QModelIndex): cint =
  fQDirModel_virtualbase_rowCount(self.h, parent.h)

type QDirModelrowCountProc* = proc(parent: gen_qabstractitemmodel_types.QModelIndex): cint
proc onrowCount*(self: gen_qdirmodel_types.QDirModel, slot: QDirModelrowCountProc) =
  # TODO check subclass
  var tmp = new QDirModelrowCountProc
  tmp[] = slot
  GC_ref(tmp)
  fcQDirModel_override_virtual_rowCount(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QDirModel_rowCount(self: ptr cQDirModel, slot: int, parent: pointer): cint {.exportc: "miqt_exec_callback_QDirModel_rowCount ".} =
  var nimfunc = cast[ptr QDirModelrowCountProc](cast[pointer](slot))
  let slotval1 = gen_qabstractitemmodel_types.QModelIndex(h: parent)


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn
proc QDirModelcolumnCount*(self: gen_qdirmodel_types.QDirModel, parent: gen_qabstractitemmodel_types.QModelIndex): cint =
  fQDirModel_virtualbase_columnCount(self.h, parent.h)

type QDirModelcolumnCountProc* = proc(parent: gen_qabstractitemmodel_types.QModelIndex): cint
proc oncolumnCount*(self: gen_qdirmodel_types.QDirModel, slot: QDirModelcolumnCountProc) =
  # TODO check subclass
  var tmp = new QDirModelcolumnCountProc
  tmp[] = slot
  GC_ref(tmp)
  fcQDirModel_override_virtual_columnCount(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QDirModel_columnCount(self: ptr cQDirModel, slot: int, parent: pointer): cint {.exportc: "miqt_exec_callback_QDirModel_columnCount ".} =
  var nimfunc = cast[ptr QDirModelcolumnCountProc](cast[pointer](slot))
  let slotval1 = gen_qabstractitemmodel_types.QModelIndex(h: parent)


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn
proc QDirModeldata*(self: gen_qdirmodel_types.QDirModel, index: gen_qabstractitemmodel_types.QModelIndex, role: cint): gen_qvariant_types.QVariant =
  gen_qvariant_types.QVariant(h: fQDirModel_virtualbase_data(self.h, index.h, role))

type QDirModeldataProc* = proc(index: gen_qabstractitemmodel_types.QModelIndex, role: cint): gen_qvariant_types.QVariant
proc ondata*(self: gen_qdirmodel_types.QDirModel, slot: QDirModeldataProc) =
  # TODO check subclass
  var tmp = new QDirModeldataProc
  tmp[] = slot
  GC_ref(tmp)
  fcQDirModel_override_virtual_data(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QDirModel_data(self: ptr cQDirModel, slot: int, index: pointer, role: cint): pointer {.exportc: "miqt_exec_callback_QDirModel_data ".} =
  var nimfunc = cast[ptr QDirModeldataProc](cast[pointer](slot))
  let slotval1 = gen_qabstractitemmodel_types.QModelIndex(h: index)

  let slotval2 = role


  let virtualReturn = nimfunc[](slotval1, slotval2 )

  virtualReturn.h
proc QDirModelsetData*(self: gen_qdirmodel_types.QDirModel, index: gen_qabstractitemmodel_types.QModelIndex, value: gen_qvariant_types.QVariant, role: cint): bool =
  fQDirModel_virtualbase_setData(self.h, index.h, value.h, role)

type QDirModelsetDataProc* = proc(index: gen_qabstractitemmodel_types.QModelIndex, value: gen_qvariant_types.QVariant, role: cint): bool
proc onsetData*(self: gen_qdirmodel_types.QDirModel, slot: QDirModelsetDataProc) =
  # TODO check subclass
  var tmp = new QDirModelsetDataProc
  tmp[] = slot
  GC_ref(tmp)
  fcQDirModel_override_virtual_setData(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QDirModel_setData(self: ptr cQDirModel, slot: int, index: pointer, value: pointer, role: cint): bool {.exportc: "miqt_exec_callback_QDirModel_setData ".} =
  var nimfunc = cast[ptr QDirModelsetDataProc](cast[pointer](slot))
  let slotval1 = gen_qabstractitemmodel_types.QModelIndex(h: index)

  let slotval2 = gen_qvariant_types.QVariant(h: value)

  let slotval3 = role


  let virtualReturn = nimfunc[](slotval1, slotval2, slotval3 )

  virtualReturn
proc QDirModelheaderData*(self: gen_qdirmodel_types.QDirModel, section: cint, orientation: cint, role: cint): gen_qvariant_types.QVariant =
  gen_qvariant_types.QVariant(h: fQDirModel_virtualbase_headerData(self.h, section, cint(orientation), role))

type QDirModelheaderDataProc* = proc(section: cint, orientation: cint, role: cint): gen_qvariant_types.QVariant
proc onheaderData*(self: gen_qdirmodel_types.QDirModel, slot: QDirModelheaderDataProc) =
  # TODO check subclass
  var tmp = new QDirModelheaderDataProc
  tmp[] = slot
  GC_ref(tmp)
  fcQDirModel_override_virtual_headerData(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QDirModel_headerData(self: ptr cQDirModel, slot: int, section: cint, orientation: cint, role: cint): pointer {.exportc: "miqt_exec_callback_QDirModel_headerData ".} =
  var nimfunc = cast[ptr QDirModelheaderDataProc](cast[pointer](slot))
  let slotval1 = section

  let slotval2 = cint(orientation)

  let slotval3 = role


  let virtualReturn = nimfunc[](slotval1, slotval2, slotval3 )

  virtualReturn.h
proc QDirModelhasChildren*(self: gen_qdirmodel_types.QDirModel, index: gen_qabstractitemmodel_types.QModelIndex): bool =
  fQDirModel_virtualbase_hasChildren(self.h, index.h)

type QDirModelhasChildrenProc* = proc(index: gen_qabstractitemmodel_types.QModelIndex): bool
proc onhasChildren*(self: gen_qdirmodel_types.QDirModel, slot: QDirModelhasChildrenProc) =
  # TODO check subclass
  var tmp = new QDirModelhasChildrenProc
  tmp[] = slot
  GC_ref(tmp)
  fcQDirModel_override_virtual_hasChildren(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QDirModel_hasChildren(self: ptr cQDirModel, slot: int, index: pointer): bool {.exportc: "miqt_exec_callback_QDirModel_hasChildren ".} =
  var nimfunc = cast[ptr QDirModelhasChildrenProc](cast[pointer](slot))
  let slotval1 = gen_qabstractitemmodel_types.QModelIndex(h: index)


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn
proc QDirModelflags*(self: gen_qdirmodel_types.QDirModel, index: gen_qabstractitemmodel_types.QModelIndex): cint =
  cint(fQDirModel_virtualbase_flags(self.h, index.h))

type QDirModelflagsProc* = proc(index: gen_qabstractitemmodel_types.QModelIndex): cint
proc onflags*(self: gen_qdirmodel_types.QDirModel, slot: QDirModelflagsProc) =
  # TODO check subclass
  var tmp = new QDirModelflagsProc
  tmp[] = slot
  GC_ref(tmp)
  fcQDirModel_override_virtual_flags(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QDirModel_flags(self: ptr cQDirModel, slot: int, index: pointer): cint {.exportc: "miqt_exec_callback_QDirModel_flags ".} =
  var nimfunc = cast[ptr QDirModelflagsProc](cast[pointer](slot))
  let slotval1 = gen_qabstractitemmodel_types.QModelIndex(h: index)


  let virtualReturn = nimfunc[](slotval1 )

  cint(virtualReturn)
proc QDirModelsort*(self: gen_qdirmodel_types.QDirModel, column: cint, order: cint): void =
  fQDirModel_virtualbase_sort(self.h, column, cint(order))

type QDirModelsortProc* = proc(column: cint, order: cint): void
proc onsort*(self: gen_qdirmodel_types.QDirModel, slot: QDirModelsortProc) =
  # TODO check subclass
  var tmp = new QDirModelsortProc
  tmp[] = slot
  GC_ref(tmp)
  fcQDirModel_override_virtual_sort(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QDirModel_sort(self: ptr cQDirModel, slot: int, column: cint, order: cint): void {.exportc: "miqt_exec_callback_QDirModel_sort ".} =
  var nimfunc = cast[ptr QDirModelsortProc](cast[pointer](slot))
  let slotval1 = column

  let slotval2 = cint(order)


  nimfunc[](slotval1, slotval2)
proc QDirModelmimeTypes*(self: gen_qdirmodel_types.QDirModel, ): seq[string] =
  var v_ma = fQDirModel_virtualbase_mimeTypes(self.h)
  var vx_ret = newSeq[string](int(v_ma.len))
  let v_outCast = cast[ptr UncheckedArray[struct_miqt_string]](v_ma.data)
  for i in 0 ..< v_ma.len:
    let vx_lv_ms = v_outCast[i]
    let vx_lvx_ret = string.fromBytes(toOpenArrayByte(vx_lv_ms.data, 0, int(vx_lv_ms.len)-1))
    c_free(vx_lv_ms.data)
    vx_ret[i] = vx_lvx_ret
  vx_ret

type QDirModelmimeTypesProc* = proc(): seq[string]
proc onmimeTypes*(self: gen_qdirmodel_types.QDirModel, slot: QDirModelmimeTypesProc) =
  # TODO check subclass
  var tmp = new QDirModelmimeTypesProc
  tmp[] = slot
  GC_ref(tmp)
  fcQDirModel_override_virtual_mimeTypes(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QDirModel_mimeTypes(self: ptr cQDirModel, slot: int): struct_miqt_array {.exportc: "miqt_exec_callback_QDirModel_mimeTypes ".} =
  var nimfunc = cast[ptr QDirModelmimeTypesProc](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )
  var virtualReturn_CArray = newSeq[struct_miqt_string](len(virtualReturn))
  for i in 0..<len(virtualReturn):
    virtualReturn_CArray[i] = struct_miqt_string(data: virtualReturn[i], len: csize_t(len(virtualReturn[i])))


  struct_miqt_array(len: csize_t(len(virtualReturn)), data: if len(virtualReturn) == 0: nil else: addr(virtualReturn_CArray[0]))
proc QDirModelmimeData*(self: gen_qdirmodel_types.QDirModel, indexes: seq[gen_qabstractitemmodel_types.QModelIndex]): gen_qmimedata_types.QMimeData =
  var indexes_CArray = newSeq[pointer](len(indexes))
  for i in 0..<len(indexes):
    indexes_CArray[i] = indexes[i].h

  gen_qmimedata_types.QMimeData(h: fQDirModel_virtualbase_mimeData(self.h, struct_miqt_array(len: csize_t(len(indexes)), data: if len(indexes) == 0: nil else: addr(indexes_CArray[0]))))

type QDirModelmimeDataProc* = proc(indexes: seq[gen_qabstractitemmodel_types.QModelIndex]): gen_qmimedata_types.QMimeData
proc onmimeData*(self: gen_qdirmodel_types.QDirModel, slot: QDirModelmimeDataProc) =
  # TODO check subclass
  var tmp = new QDirModelmimeDataProc
  tmp[] = slot
  GC_ref(tmp)
  fcQDirModel_override_virtual_mimeData(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QDirModel_mimeData(self: ptr cQDirModel, slot: int, indexes: struct_miqt_array): pointer {.exportc: "miqt_exec_callback_QDirModel_mimeData ".} =
  var nimfunc = cast[ptr QDirModelmimeDataProc](cast[pointer](slot))
  var vindexes_ma = indexes
  var vindexesx_ret = newSeq[gen_qabstractitemmodel_types.QModelIndex](int(vindexes_ma.len))
  let vindexes_outCast = cast[ptr UncheckedArray[pointer]](vindexes_ma.data)
  for i in 0 ..< vindexes_ma.len:
    vindexesx_ret[i] = gen_qabstractitemmodel_types.QModelIndex(h: vindexes_outCast[i])
  let slotval1 = vindexesx_ret


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn.h
proc QDirModeldropMimeData*(self: gen_qdirmodel_types.QDirModel, data: gen_qmimedata_types.QMimeData, action: cint, row: cint, column: cint, parent: gen_qabstractitemmodel_types.QModelIndex): bool =
  fQDirModel_virtualbase_dropMimeData(self.h, data.h, cint(action), row, column, parent.h)

type QDirModeldropMimeDataProc* = proc(data: gen_qmimedata_types.QMimeData, action: cint, row: cint, column: cint, parent: gen_qabstractitemmodel_types.QModelIndex): bool
proc ondropMimeData*(self: gen_qdirmodel_types.QDirModel, slot: QDirModeldropMimeDataProc) =
  # TODO check subclass
  var tmp = new QDirModeldropMimeDataProc
  tmp[] = slot
  GC_ref(tmp)
  fcQDirModel_override_virtual_dropMimeData(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QDirModel_dropMimeData(self: ptr cQDirModel, slot: int, data: pointer, action: cint, row: cint, column: cint, parent: pointer): bool {.exportc: "miqt_exec_callback_QDirModel_dropMimeData ".} =
  var nimfunc = cast[ptr QDirModeldropMimeDataProc](cast[pointer](slot))
  let slotval1 = gen_qmimedata_types.QMimeData(h: data)

  let slotval2 = cint(action)

  let slotval3 = row

  let slotval4 = column

  let slotval5 = gen_qabstractitemmodel_types.QModelIndex(h: parent)


  let virtualReturn = nimfunc[](slotval1, slotval2, slotval3, slotval4, slotval5 )

  virtualReturn
proc QDirModelsupportedDropActions*(self: gen_qdirmodel_types.QDirModel, ): cint =
  cint(fQDirModel_virtualbase_supportedDropActions(self.h))

type QDirModelsupportedDropActionsProc* = proc(): cint
proc onsupportedDropActions*(self: gen_qdirmodel_types.QDirModel, slot: QDirModelsupportedDropActionsProc) =
  # TODO check subclass
  var tmp = new QDirModelsupportedDropActionsProc
  tmp[] = slot
  GC_ref(tmp)
  fcQDirModel_override_virtual_supportedDropActions(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QDirModel_supportedDropActions(self: ptr cQDirModel, slot: int): cint {.exportc: "miqt_exec_callback_QDirModel_supportedDropActions ".} =
  var nimfunc = cast[ptr QDirModelsupportedDropActionsProc](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )

  cint(virtualReturn)
proc QDirModelsibling*(self: gen_qdirmodel_types.QDirModel, row: cint, column: cint, idx: gen_qabstractitemmodel_types.QModelIndex): gen_qabstractitemmodel_types.QModelIndex =
  gen_qabstractitemmodel_types.QModelIndex(h: fQDirModel_virtualbase_sibling(self.h, row, column, idx.h))

type QDirModelsiblingProc* = proc(row: cint, column: cint, idx: gen_qabstractitemmodel_types.QModelIndex): gen_qabstractitemmodel_types.QModelIndex
proc onsibling*(self: gen_qdirmodel_types.QDirModel, slot: QDirModelsiblingProc) =
  # TODO check subclass
  var tmp = new QDirModelsiblingProc
  tmp[] = slot
  GC_ref(tmp)
  fcQDirModel_override_virtual_sibling(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QDirModel_sibling(self: ptr cQDirModel, slot: int, row: cint, column: cint, idx: pointer): pointer {.exportc: "miqt_exec_callback_QDirModel_sibling ".} =
  var nimfunc = cast[ptr QDirModelsiblingProc](cast[pointer](slot))
  let slotval1 = row

  let slotval2 = column

  let slotval3 = gen_qabstractitemmodel_types.QModelIndex(h: idx)


  let virtualReturn = nimfunc[](slotval1, slotval2, slotval3 )

  virtualReturn.h
proc QDirModelsetHeaderData*(self: gen_qdirmodel_types.QDirModel, section: cint, orientation: cint, value: gen_qvariant_types.QVariant, role: cint): bool =
  fQDirModel_virtualbase_setHeaderData(self.h, section, cint(orientation), value.h, role)

type QDirModelsetHeaderDataProc* = proc(section: cint, orientation: cint, value: gen_qvariant_types.QVariant, role: cint): bool
proc onsetHeaderData*(self: gen_qdirmodel_types.QDirModel, slot: QDirModelsetHeaderDataProc) =
  # TODO check subclass
  var tmp = new QDirModelsetHeaderDataProc
  tmp[] = slot
  GC_ref(tmp)
  fcQDirModel_override_virtual_setHeaderData(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QDirModel_setHeaderData(self: ptr cQDirModel, slot: int, section: cint, orientation: cint, value: pointer, role: cint): bool {.exportc: "miqt_exec_callback_QDirModel_setHeaderData ".} =
  var nimfunc = cast[ptr QDirModelsetHeaderDataProc](cast[pointer](slot))
  let slotval1 = section

  let slotval2 = cint(orientation)

  let slotval3 = gen_qvariant_types.QVariant(h: value)

  let slotval4 = role


  let virtualReturn = nimfunc[](slotval1, slotval2, slotval3, slotval4 )

  virtualReturn
proc QDirModelitemData*(self: gen_qdirmodel_types.QDirModel, index: gen_qabstractitemmodel_types.QModelIndex): Table[cint,gen_qvariant_types.QVariant] =
  var v_mm = fQDirModel_virtualbase_itemData(self.h, index.h)
  var vx_ret: Table[cint, gen_qvariant_types.QVariant]
  var v_Keys = cast[ptr UncheckedArray[cint]](v_mm.keys)
  var v_Values = cast[ptr UncheckedArray[pointer]](v_mm.values)
  for i in 0..<v_mm.len:
    var v_entry_Key = v_Keys[i]

    var v_entry_Value = gen_qvariant_types.QVariant(h: v_Values[i])

    vx_ret[v_entry_Key] = v_entry_Value
  vx_ret

type QDirModelitemDataProc* = proc(index: gen_qabstractitemmodel_types.QModelIndex): Table[cint,gen_qvariant_types.QVariant]
proc onitemData*(self: gen_qdirmodel_types.QDirModel, slot: QDirModelitemDataProc) =
  # TODO check subclass
  var tmp = new QDirModelitemDataProc
  tmp[] = slot
  GC_ref(tmp)
  fcQDirModel_override_virtual_itemData(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QDirModel_itemData(self: ptr cQDirModel, slot: int, index: pointer): struct_miqt_map {.exportc: "miqt_exec_callback_QDirModel_itemData ".} =
  var nimfunc = cast[ptr QDirModelitemDataProc](cast[pointer](slot))
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
proc QDirModelsetItemData*(self: gen_qdirmodel_types.QDirModel, index: gen_qabstractitemmodel_types.QModelIndex, roles: Table[cint,gen_qvariant_types.QVariant]): bool =
  var roles_Keys_CArray = newSeq[cint](len(roles))
  var roles_Values_CArray = newSeq[pointer](len(roles))
  var roles_ctr = 0
  for rolesk, rolesv in roles:
    roles_Keys_CArray[roles_ctr] = roles_k
    roles_Values_CArray[roles_ctr] = roles_v.h
    roles_ctr += 1

  fQDirModel_virtualbase_setItemData(self.h, index.h, struct_miqt_map(len: csize_t(len(roles)),keys: if len(roles) == 0: nil else: addr(roles_Keys_CArray[0]), values: if len(roles) == 0: nil else: addr(roles_Values_CArray[0]),))

type QDirModelsetItemDataProc* = proc(index: gen_qabstractitemmodel_types.QModelIndex, roles: Table[cint,gen_qvariant_types.QVariant]): bool
proc onsetItemData*(self: gen_qdirmodel_types.QDirModel, slot: QDirModelsetItemDataProc) =
  # TODO check subclass
  var tmp = new QDirModelsetItemDataProc
  tmp[] = slot
  GC_ref(tmp)
  fcQDirModel_override_virtual_setItemData(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QDirModel_setItemData(self: ptr cQDirModel, slot: int, index: pointer, roles: struct_miqt_map): bool {.exportc: "miqt_exec_callback_QDirModel_setItemData ".} =
  var nimfunc = cast[ptr QDirModelsetItemDataProc](cast[pointer](slot))
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
proc QDirModelcanDropMimeData*(self: gen_qdirmodel_types.QDirModel, data: gen_qmimedata_types.QMimeData, action: cint, row: cint, column: cint, parent: gen_qabstractitemmodel_types.QModelIndex): bool =
  fQDirModel_virtualbase_canDropMimeData(self.h, data.h, cint(action), row, column, parent.h)

type QDirModelcanDropMimeDataProc* = proc(data: gen_qmimedata_types.QMimeData, action: cint, row: cint, column: cint, parent: gen_qabstractitemmodel_types.QModelIndex): bool
proc oncanDropMimeData*(self: gen_qdirmodel_types.QDirModel, slot: QDirModelcanDropMimeDataProc) =
  # TODO check subclass
  var tmp = new QDirModelcanDropMimeDataProc
  tmp[] = slot
  GC_ref(tmp)
  fcQDirModel_override_virtual_canDropMimeData(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QDirModel_canDropMimeData(self: ptr cQDirModel, slot: int, data: pointer, action: cint, row: cint, column: cint, parent: pointer): bool {.exportc: "miqt_exec_callback_QDirModel_canDropMimeData ".} =
  var nimfunc = cast[ptr QDirModelcanDropMimeDataProc](cast[pointer](slot))
  let slotval1 = gen_qmimedata_types.QMimeData(h: data)

  let slotval2 = cint(action)

  let slotval3 = row

  let slotval4 = column

  let slotval5 = gen_qabstractitemmodel_types.QModelIndex(h: parent)


  let virtualReturn = nimfunc[](slotval1, slotval2, slotval3, slotval4, slotval5 )

  virtualReturn
proc QDirModelsupportedDragActions*(self: gen_qdirmodel_types.QDirModel, ): cint =
  cint(fQDirModel_virtualbase_supportedDragActions(self.h))

type QDirModelsupportedDragActionsProc* = proc(): cint
proc onsupportedDragActions*(self: gen_qdirmodel_types.QDirModel, slot: QDirModelsupportedDragActionsProc) =
  # TODO check subclass
  var tmp = new QDirModelsupportedDragActionsProc
  tmp[] = slot
  GC_ref(tmp)
  fcQDirModel_override_virtual_supportedDragActions(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QDirModel_supportedDragActions(self: ptr cQDirModel, slot: int): cint {.exportc: "miqt_exec_callback_QDirModel_supportedDragActions ".} =
  var nimfunc = cast[ptr QDirModelsupportedDragActionsProc](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )

  cint(virtualReturn)
proc QDirModelinsertRows*(self: gen_qdirmodel_types.QDirModel, row: cint, count: cint, parent: gen_qabstractitemmodel_types.QModelIndex): bool =
  fQDirModel_virtualbase_insertRows(self.h, row, count, parent.h)

type QDirModelinsertRowsProc* = proc(row: cint, count: cint, parent: gen_qabstractitemmodel_types.QModelIndex): bool
proc oninsertRows*(self: gen_qdirmodel_types.QDirModel, slot: QDirModelinsertRowsProc) =
  # TODO check subclass
  var tmp = new QDirModelinsertRowsProc
  tmp[] = slot
  GC_ref(tmp)
  fcQDirModel_override_virtual_insertRows(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QDirModel_insertRows(self: ptr cQDirModel, slot: int, row: cint, count: cint, parent: pointer): bool {.exportc: "miqt_exec_callback_QDirModel_insertRows ".} =
  var nimfunc = cast[ptr QDirModelinsertRowsProc](cast[pointer](slot))
  let slotval1 = row

  let slotval2 = count

  let slotval3 = gen_qabstractitemmodel_types.QModelIndex(h: parent)


  let virtualReturn = nimfunc[](slotval1, slotval2, slotval3 )

  virtualReturn
proc QDirModelinsertColumns*(self: gen_qdirmodel_types.QDirModel, column: cint, count: cint, parent: gen_qabstractitemmodel_types.QModelIndex): bool =
  fQDirModel_virtualbase_insertColumns(self.h, column, count, parent.h)

type QDirModelinsertColumnsProc* = proc(column: cint, count: cint, parent: gen_qabstractitemmodel_types.QModelIndex): bool
proc oninsertColumns*(self: gen_qdirmodel_types.QDirModel, slot: QDirModelinsertColumnsProc) =
  # TODO check subclass
  var tmp = new QDirModelinsertColumnsProc
  tmp[] = slot
  GC_ref(tmp)
  fcQDirModel_override_virtual_insertColumns(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QDirModel_insertColumns(self: ptr cQDirModel, slot: int, column: cint, count: cint, parent: pointer): bool {.exportc: "miqt_exec_callback_QDirModel_insertColumns ".} =
  var nimfunc = cast[ptr QDirModelinsertColumnsProc](cast[pointer](slot))
  let slotval1 = column

  let slotval2 = count

  let slotval3 = gen_qabstractitemmodel_types.QModelIndex(h: parent)


  let virtualReturn = nimfunc[](slotval1, slotval2, slotval3 )

  virtualReturn
proc QDirModelremoveRows*(self: gen_qdirmodel_types.QDirModel, row: cint, count: cint, parent: gen_qabstractitemmodel_types.QModelIndex): bool =
  fQDirModel_virtualbase_removeRows(self.h, row, count, parent.h)

type QDirModelremoveRowsProc* = proc(row: cint, count: cint, parent: gen_qabstractitemmodel_types.QModelIndex): bool
proc onremoveRows*(self: gen_qdirmodel_types.QDirModel, slot: QDirModelremoveRowsProc) =
  # TODO check subclass
  var tmp = new QDirModelremoveRowsProc
  tmp[] = slot
  GC_ref(tmp)
  fcQDirModel_override_virtual_removeRows(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QDirModel_removeRows(self: ptr cQDirModel, slot: int, row: cint, count: cint, parent: pointer): bool {.exportc: "miqt_exec_callback_QDirModel_removeRows ".} =
  var nimfunc = cast[ptr QDirModelremoveRowsProc](cast[pointer](slot))
  let slotval1 = row

  let slotval2 = count

  let slotval3 = gen_qabstractitemmodel_types.QModelIndex(h: parent)


  let virtualReturn = nimfunc[](slotval1, slotval2, slotval3 )

  virtualReturn
proc QDirModelremoveColumns*(self: gen_qdirmodel_types.QDirModel, column: cint, count: cint, parent: gen_qabstractitemmodel_types.QModelIndex): bool =
  fQDirModel_virtualbase_removeColumns(self.h, column, count, parent.h)

type QDirModelremoveColumnsProc* = proc(column: cint, count: cint, parent: gen_qabstractitemmodel_types.QModelIndex): bool
proc onremoveColumns*(self: gen_qdirmodel_types.QDirModel, slot: QDirModelremoveColumnsProc) =
  # TODO check subclass
  var tmp = new QDirModelremoveColumnsProc
  tmp[] = slot
  GC_ref(tmp)
  fcQDirModel_override_virtual_removeColumns(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QDirModel_removeColumns(self: ptr cQDirModel, slot: int, column: cint, count: cint, parent: pointer): bool {.exportc: "miqt_exec_callback_QDirModel_removeColumns ".} =
  var nimfunc = cast[ptr QDirModelremoveColumnsProc](cast[pointer](slot))
  let slotval1 = column

  let slotval2 = count

  let slotval3 = gen_qabstractitemmodel_types.QModelIndex(h: parent)


  let virtualReturn = nimfunc[](slotval1, slotval2, slotval3 )

  virtualReturn
proc QDirModelmoveRows*(self: gen_qdirmodel_types.QDirModel, sourceParent: gen_qabstractitemmodel_types.QModelIndex, sourceRow: cint, count: cint, destinationParent: gen_qabstractitemmodel_types.QModelIndex, destinationChild: cint): bool =
  fQDirModel_virtualbase_moveRows(self.h, sourceParent.h, sourceRow, count, destinationParent.h, destinationChild)

type QDirModelmoveRowsProc* = proc(sourceParent: gen_qabstractitemmodel_types.QModelIndex, sourceRow: cint, count: cint, destinationParent: gen_qabstractitemmodel_types.QModelIndex, destinationChild: cint): bool
proc onmoveRows*(self: gen_qdirmodel_types.QDirModel, slot: QDirModelmoveRowsProc) =
  # TODO check subclass
  var tmp = new QDirModelmoveRowsProc
  tmp[] = slot
  GC_ref(tmp)
  fcQDirModel_override_virtual_moveRows(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QDirModel_moveRows(self: ptr cQDirModel, slot: int, sourceParent: pointer, sourceRow: cint, count: cint, destinationParent: pointer, destinationChild: cint): bool {.exportc: "miqt_exec_callback_QDirModel_moveRows ".} =
  var nimfunc = cast[ptr QDirModelmoveRowsProc](cast[pointer](slot))
  let slotval1 = gen_qabstractitemmodel_types.QModelIndex(h: sourceParent)

  let slotval2 = sourceRow

  let slotval3 = count

  let slotval4 = gen_qabstractitemmodel_types.QModelIndex(h: destinationParent)

  let slotval5 = destinationChild


  let virtualReturn = nimfunc[](slotval1, slotval2, slotval3, slotval4, slotval5 )

  virtualReturn
proc QDirModelmoveColumns*(self: gen_qdirmodel_types.QDirModel, sourceParent: gen_qabstractitemmodel_types.QModelIndex, sourceColumn: cint, count: cint, destinationParent: gen_qabstractitemmodel_types.QModelIndex, destinationChild: cint): bool =
  fQDirModel_virtualbase_moveColumns(self.h, sourceParent.h, sourceColumn, count, destinationParent.h, destinationChild)

type QDirModelmoveColumnsProc* = proc(sourceParent: gen_qabstractitemmodel_types.QModelIndex, sourceColumn: cint, count: cint, destinationParent: gen_qabstractitemmodel_types.QModelIndex, destinationChild: cint): bool
proc onmoveColumns*(self: gen_qdirmodel_types.QDirModel, slot: QDirModelmoveColumnsProc) =
  # TODO check subclass
  var tmp = new QDirModelmoveColumnsProc
  tmp[] = slot
  GC_ref(tmp)
  fcQDirModel_override_virtual_moveColumns(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QDirModel_moveColumns(self: ptr cQDirModel, slot: int, sourceParent: pointer, sourceColumn: cint, count: cint, destinationParent: pointer, destinationChild: cint): bool {.exportc: "miqt_exec_callback_QDirModel_moveColumns ".} =
  var nimfunc = cast[ptr QDirModelmoveColumnsProc](cast[pointer](slot))
  let slotval1 = gen_qabstractitemmodel_types.QModelIndex(h: sourceParent)

  let slotval2 = sourceColumn

  let slotval3 = count

  let slotval4 = gen_qabstractitemmodel_types.QModelIndex(h: destinationParent)

  let slotval5 = destinationChild


  let virtualReturn = nimfunc[](slotval1, slotval2, slotval3, slotval4, slotval5 )

  virtualReturn
proc QDirModelfetchMore*(self: gen_qdirmodel_types.QDirModel, parent: gen_qabstractitemmodel_types.QModelIndex): void =
  fQDirModel_virtualbase_fetchMore(self.h, parent.h)

type QDirModelfetchMoreProc* = proc(parent: gen_qabstractitemmodel_types.QModelIndex): void
proc onfetchMore*(self: gen_qdirmodel_types.QDirModel, slot: QDirModelfetchMoreProc) =
  # TODO check subclass
  var tmp = new QDirModelfetchMoreProc
  tmp[] = slot
  GC_ref(tmp)
  fcQDirModel_override_virtual_fetchMore(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QDirModel_fetchMore(self: ptr cQDirModel, slot: int, parent: pointer): void {.exportc: "miqt_exec_callback_QDirModel_fetchMore ".} =
  var nimfunc = cast[ptr QDirModelfetchMoreProc](cast[pointer](slot))
  let slotval1 = gen_qabstractitemmodel_types.QModelIndex(h: parent)


  nimfunc[](slotval1)
proc QDirModelcanFetchMore*(self: gen_qdirmodel_types.QDirModel, parent: gen_qabstractitemmodel_types.QModelIndex): bool =
  fQDirModel_virtualbase_canFetchMore(self.h, parent.h)

type QDirModelcanFetchMoreProc* = proc(parent: gen_qabstractitemmodel_types.QModelIndex): bool
proc oncanFetchMore*(self: gen_qdirmodel_types.QDirModel, slot: QDirModelcanFetchMoreProc) =
  # TODO check subclass
  var tmp = new QDirModelcanFetchMoreProc
  tmp[] = slot
  GC_ref(tmp)
  fcQDirModel_override_virtual_canFetchMore(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QDirModel_canFetchMore(self: ptr cQDirModel, slot: int, parent: pointer): bool {.exportc: "miqt_exec_callback_QDirModel_canFetchMore ".} =
  var nimfunc = cast[ptr QDirModelcanFetchMoreProc](cast[pointer](slot))
  let slotval1 = gen_qabstractitemmodel_types.QModelIndex(h: parent)


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn
proc QDirModelbuddy*(self: gen_qdirmodel_types.QDirModel, index: gen_qabstractitemmodel_types.QModelIndex): gen_qabstractitemmodel_types.QModelIndex =
  gen_qabstractitemmodel_types.QModelIndex(h: fQDirModel_virtualbase_buddy(self.h, index.h))

type QDirModelbuddyProc* = proc(index: gen_qabstractitemmodel_types.QModelIndex): gen_qabstractitemmodel_types.QModelIndex
proc onbuddy*(self: gen_qdirmodel_types.QDirModel, slot: QDirModelbuddyProc) =
  # TODO check subclass
  var tmp = new QDirModelbuddyProc
  tmp[] = slot
  GC_ref(tmp)
  fcQDirModel_override_virtual_buddy(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QDirModel_buddy(self: ptr cQDirModel, slot: int, index: pointer): pointer {.exportc: "miqt_exec_callback_QDirModel_buddy ".} =
  var nimfunc = cast[ptr QDirModelbuddyProc](cast[pointer](slot))
  let slotval1 = gen_qabstractitemmodel_types.QModelIndex(h: index)


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn.h
proc QDirModelmatch*(self: gen_qdirmodel_types.QDirModel, start: gen_qabstractitemmodel_types.QModelIndex, role: cint, value: gen_qvariant_types.QVariant, hits: cint, flags: cint): seq[gen_qabstractitemmodel_types.QModelIndex] =
  var v_ma = fQDirModel_virtualbase_match(self.h, start.h, role, value.h, hits, cint(flags))
  var vx_ret = newSeq[gen_qabstractitemmodel_types.QModelIndex](int(v_ma.len))
  let v_outCast = cast[ptr UncheckedArray[pointer]](v_ma.data)
  for i in 0 ..< v_ma.len:
    vx_ret[i] = gen_qabstractitemmodel_types.QModelIndex(h: v_outCast[i])
  vx_ret

type QDirModelmatchProc* = proc(start: gen_qabstractitemmodel_types.QModelIndex, role: cint, value: gen_qvariant_types.QVariant, hits: cint, flags: cint): seq[gen_qabstractitemmodel_types.QModelIndex]
proc onmatch*(self: gen_qdirmodel_types.QDirModel, slot: QDirModelmatchProc) =
  # TODO check subclass
  var tmp = new QDirModelmatchProc
  tmp[] = slot
  GC_ref(tmp)
  fcQDirModel_override_virtual_match(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QDirModel_match(self: ptr cQDirModel, slot: int, start: pointer, role: cint, value: pointer, hits: cint, flags: cint): struct_miqt_array {.exportc: "miqt_exec_callback_QDirModel_match ".} =
  var nimfunc = cast[ptr QDirModelmatchProc](cast[pointer](slot))
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
proc QDirModelspan*(self: gen_qdirmodel_types.QDirModel, index: gen_qabstractitemmodel_types.QModelIndex): gen_qsize_types.QSize =
  gen_qsize_types.QSize(h: fQDirModel_virtualbase_span(self.h, index.h))

type QDirModelspanProc* = proc(index: gen_qabstractitemmodel_types.QModelIndex): gen_qsize_types.QSize
proc onspan*(self: gen_qdirmodel_types.QDirModel, slot: QDirModelspanProc) =
  # TODO check subclass
  var tmp = new QDirModelspanProc
  tmp[] = slot
  GC_ref(tmp)
  fcQDirModel_override_virtual_span(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QDirModel_span(self: ptr cQDirModel, slot: int, index: pointer): pointer {.exportc: "miqt_exec_callback_QDirModel_span ".} =
  var nimfunc = cast[ptr QDirModelspanProc](cast[pointer](slot))
  let slotval1 = gen_qabstractitemmodel_types.QModelIndex(h: index)


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn.h
proc QDirModelroleNames*(self: gen_qdirmodel_types.QDirModel, ): Table[cint,seq[byte]] =
  var v_mm = fQDirModel_virtualbase_roleNames(self.h)
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

type QDirModelroleNamesProc* = proc(): Table[cint,seq[byte]]
proc onroleNames*(self: gen_qdirmodel_types.QDirModel, slot: QDirModelroleNamesProc) =
  # TODO check subclass
  var tmp = new QDirModelroleNamesProc
  tmp[] = slot
  GC_ref(tmp)
  fcQDirModel_override_virtual_roleNames(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QDirModel_roleNames(self: ptr cQDirModel, slot: int): struct_miqt_map {.exportc: "miqt_exec_callback_QDirModel_roleNames ".} =
  var nimfunc = cast[ptr QDirModelroleNamesProc](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )
  var virtualReturn_Keys_CArray = newSeq[cint](len(virtualReturn))
  var virtualReturn_Values_CArray = newSeq[struct_miqt_string](len(virtualReturn))
  var virtualReturn_ctr = 0
  for virtualReturnk, virtualReturnv in virtualReturn:
    virtualReturn_Keys_CArray[virtualReturn_ctr] = virtualReturn_k
    virtualReturn_Values_CArray[virtualReturn_ctr] = struct_miqt_string(data: cast[cstring](if len(virtualReturn_v) == 0: nil else: unsafeAddr virtualReturn_v[0]), len: csize_t(len(virtualReturn_v)))
    virtualReturn_ctr += 1


  struct_miqt_map(len: csize_t(len(virtualReturn)),keys: if len(virtualReturn) == 0: nil else: addr(virtualReturn_Keys_CArray[0]), values: if len(virtualReturn) == 0: nil else: addr(virtualReturn_Values_CArray[0]),)
proc QDirModelsubmit*(self: gen_qdirmodel_types.QDirModel, ): bool =
  fQDirModel_virtualbase_submit(self.h)

type QDirModelsubmitProc* = proc(): bool
proc onsubmit*(self: gen_qdirmodel_types.QDirModel, slot: QDirModelsubmitProc) =
  # TODO check subclass
  var tmp = new QDirModelsubmitProc
  tmp[] = slot
  GC_ref(tmp)
  fcQDirModel_override_virtual_submit(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QDirModel_submit(self: ptr cQDirModel, slot: int): bool {.exportc: "miqt_exec_callback_QDirModel_submit ".} =
  var nimfunc = cast[ptr QDirModelsubmitProc](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )

  virtualReturn
proc QDirModelrevert*(self: gen_qdirmodel_types.QDirModel, ): void =
  fQDirModel_virtualbase_revert(self.h)

type QDirModelrevertProc* = proc(): void
proc onrevert*(self: gen_qdirmodel_types.QDirModel, slot: QDirModelrevertProc) =
  # TODO check subclass
  var tmp = new QDirModelrevertProc
  tmp[] = slot
  GC_ref(tmp)
  fcQDirModel_override_virtual_revert(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QDirModel_revert(self: ptr cQDirModel, slot: int): void {.exportc: "miqt_exec_callback_QDirModel_revert ".} =
  var nimfunc = cast[ptr QDirModelrevertProc](cast[pointer](slot))

  nimfunc[]()
proc QDirModelevent*(self: gen_qdirmodel_types.QDirModel, event: gen_qcoreevent_types.QEvent): bool =
  fQDirModel_virtualbase_event(self.h, event.h)

type QDirModeleventProc* = proc(event: gen_qcoreevent_types.QEvent): bool
proc onevent*(self: gen_qdirmodel_types.QDirModel, slot: QDirModeleventProc) =
  # TODO check subclass
  var tmp = new QDirModeleventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQDirModel_override_virtual_event(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QDirModel_event(self: ptr cQDirModel, slot: int, event: pointer): bool {.exportc: "miqt_exec_callback_QDirModel_event ".} =
  var nimfunc = cast[ptr QDirModeleventProc](cast[pointer](slot))
  let slotval1 = gen_qcoreevent_types.QEvent(h: event)


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn
proc QDirModeleventFilter*(self: gen_qdirmodel_types.QDirModel, watched: gen_qobject_types.QObject, event: gen_qcoreevent_types.QEvent): bool =
  fQDirModel_virtualbase_eventFilter(self.h, watched.h, event.h)

type QDirModeleventFilterProc* = proc(watched: gen_qobject_types.QObject, event: gen_qcoreevent_types.QEvent): bool
proc oneventFilter*(self: gen_qdirmodel_types.QDirModel, slot: QDirModeleventFilterProc) =
  # TODO check subclass
  var tmp = new QDirModeleventFilterProc
  tmp[] = slot
  GC_ref(tmp)
  fcQDirModel_override_virtual_eventFilter(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QDirModel_eventFilter(self: ptr cQDirModel, slot: int, watched: pointer, event: pointer): bool {.exportc: "miqt_exec_callback_QDirModel_eventFilter ".} =
  var nimfunc = cast[ptr QDirModeleventFilterProc](cast[pointer](slot))
  let slotval1 = gen_qobject_types.QObject(h: watched)

  let slotval2 = gen_qcoreevent_types.QEvent(h: event)


  let virtualReturn = nimfunc[](slotval1, slotval2 )

  virtualReturn
proc QDirModeltimerEvent*(self: gen_qdirmodel_types.QDirModel, event: gen_qcoreevent_types.QTimerEvent): void =
  fQDirModel_virtualbase_timerEvent(self.h, event.h)

type QDirModeltimerEventProc* = proc(event: gen_qcoreevent_types.QTimerEvent): void
proc ontimerEvent*(self: gen_qdirmodel_types.QDirModel, slot: QDirModeltimerEventProc) =
  # TODO check subclass
  var tmp = new QDirModeltimerEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQDirModel_override_virtual_timerEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QDirModel_timerEvent(self: ptr cQDirModel, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QDirModel_timerEvent ".} =
  var nimfunc = cast[ptr QDirModeltimerEventProc](cast[pointer](slot))
  let slotval1 = gen_qcoreevent_types.QTimerEvent(h: event)


  nimfunc[](slotval1)
proc QDirModelchildEvent*(self: gen_qdirmodel_types.QDirModel, event: gen_qcoreevent_types.QChildEvent): void =
  fQDirModel_virtualbase_childEvent(self.h, event.h)

type QDirModelchildEventProc* = proc(event: gen_qcoreevent_types.QChildEvent): void
proc onchildEvent*(self: gen_qdirmodel_types.QDirModel, slot: QDirModelchildEventProc) =
  # TODO check subclass
  var tmp = new QDirModelchildEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQDirModel_override_virtual_childEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QDirModel_childEvent(self: ptr cQDirModel, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QDirModel_childEvent ".} =
  var nimfunc = cast[ptr QDirModelchildEventProc](cast[pointer](slot))
  let slotval1 = gen_qcoreevent_types.QChildEvent(h: event)


  nimfunc[](slotval1)
proc QDirModelcustomEvent*(self: gen_qdirmodel_types.QDirModel, event: gen_qcoreevent_types.QEvent): void =
  fQDirModel_virtualbase_customEvent(self.h, event.h)

type QDirModelcustomEventProc* = proc(event: gen_qcoreevent_types.QEvent): void
proc oncustomEvent*(self: gen_qdirmodel_types.QDirModel, slot: QDirModelcustomEventProc) =
  # TODO check subclass
  var tmp = new QDirModelcustomEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQDirModel_override_virtual_customEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QDirModel_customEvent(self: ptr cQDirModel, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QDirModel_customEvent ".} =
  var nimfunc = cast[ptr QDirModelcustomEventProc](cast[pointer](slot))
  let slotval1 = gen_qcoreevent_types.QEvent(h: event)


  nimfunc[](slotval1)
proc QDirModelconnectNotify*(self: gen_qdirmodel_types.QDirModel, signal: gen_qmetaobject_types.QMetaMethod): void =
  fQDirModel_virtualbase_connectNotify(self.h, signal.h)

type QDirModelconnectNotifyProc* = proc(signal: gen_qmetaobject_types.QMetaMethod): void
proc onconnectNotify*(self: gen_qdirmodel_types.QDirModel, slot: QDirModelconnectNotifyProc) =
  # TODO check subclass
  var tmp = new QDirModelconnectNotifyProc
  tmp[] = slot
  GC_ref(tmp)
  fcQDirModel_override_virtual_connectNotify(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QDirModel_connectNotify(self: ptr cQDirModel, slot: int, signal: pointer): void {.exportc: "miqt_exec_callback_QDirModel_connectNotify ".} =
  var nimfunc = cast[ptr QDirModelconnectNotifyProc](cast[pointer](slot))
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal)


  nimfunc[](slotval1)
proc QDirModeldisconnectNotify*(self: gen_qdirmodel_types.QDirModel, signal: gen_qmetaobject_types.QMetaMethod): void =
  fQDirModel_virtualbase_disconnectNotify(self.h, signal.h)

type QDirModeldisconnectNotifyProc* = proc(signal: gen_qmetaobject_types.QMetaMethod): void
proc ondisconnectNotify*(self: gen_qdirmodel_types.QDirModel, slot: QDirModeldisconnectNotifyProc) =
  # TODO check subclass
  var tmp = new QDirModeldisconnectNotifyProc
  tmp[] = slot
  GC_ref(tmp)
  fcQDirModel_override_virtual_disconnectNotify(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QDirModel_disconnectNotify(self: ptr cQDirModel, slot: int, signal: pointer): void {.exportc: "miqt_exec_callback_QDirModel_disconnectNotify ".} =
  var nimfunc = cast[ptr QDirModeldisconnectNotifyProc](cast[pointer](slot))
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal)


  nimfunc[](slotval1)
proc staticMetaObject*(_: type gen_qdirmodel_types.QDirModel): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQDirModel_staticMetaObject())
proc delete*(self: gen_qdirmodel_types.QDirModel) =
  fcQDirModel_delete(self.h)
