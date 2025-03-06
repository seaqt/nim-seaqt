import ./Qt5Core_libs

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

const cflags = gorge("pkg-config --cflags Qt5Core")  & " -fPIC"
{.compile("gen_qabstractproxymodel.cpp", cflags).}


import ./gen_qabstractproxymodel_types
export gen_qabstractproxymodel_types

import
  ./gen_qabstractitemmodel,
  ./gen_qcoreevent_types,
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
  gen_qitemselectionmodel_types,
  gen_qmetaobject_types,
  gen_qmimedata_types,
  gen_qobject_types,
  gen_qobjectdefs_types,
  gen_qsize_types,
  gen_qvariant_types

type cQAbstractProxyModel*{.exportc: "QAbstractProxyModel", incompleteStruct.} = object

proc fcQAbstractProxyModel_new(): ptr cQAbstractProxyModel {.importc: "QAbstractProxyModel_new".}
proc fcQAbstractProxyModel_new2(parent: pointer): ptr cQAbstractProxyModel {.importc: "QAbstractProxyModel_new2".}
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
proc fQAbstractProxyModel_virtualbase_metaObject(self: pointer, ): pointer{.importc: "QAbstractProxyModel_virtualbase_metaObject".}
proc fcQAbstractProxyModel_override_virtual_metaObject(self: pointer, slot: int) {.importc: "QAbstractProxyModel_override_virtual_metaObject".}
proc fQAbstractProxyModel_virtualbase_metacast(self: pointer, param1: cstring): pointer{.importc: "QAbstractProxyModel_virtualbase_metacast".}
proc fcQAbstractProxyModel_override_virtual_metacast(self: pointer, slot: int) {.importc: "QAbstractProxyModel_override_virtual_metacast".}
proc fQAbstractProxyModel_virtualbase_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint{.importc: "QAbstractProxyModel_virtualbase_metacall".}
proc fcQAbstractProxyModel_override_virtual_metacall(self: pointer, slot: int) {.importc: "QAbstractProxyModel_override_virtual_metacall".}
proc fQAbstractProxyModel_virtualbase_setSourceModel(self: pointer, sourceModel: pointer): void{.importc: "QAbstractProxyModel_virtualbase_setSourceModel".}
proc fcQAbstractProxyModel_override_virtual_setSourceModel(self: pointer, slot: int) {.importc: "QAbstractProxyModel_override_virtual_setSourceModel".}
proc fcQAbstractProxyModel_override_virtual_mapToSource(self: pointer, slot: int) {.importc: "QAbstractProxyModel_override_virtual_mapToSource".}
proc fcQAbstractProxyModel_override_virtual_mapFromSource(self: pointer, slot: int) {.importc: "QAbstractProxyModel_override_virtual_mapFromSource".}
proc fQAbstractProxyModel_virtualbase_mapSelectionToSource(self: pointer, selection: pointer): pointer{.importc: "QAbstractProxyModel_virtualbase_mapSelectionToSource".}
proc fcQAbstractProxyModel_override_virtual_mapSelectionToSource(self: pointer, slot: int) {.importc: "QAbstractProxyModel_override_virtual_mapSelectionToSource".}
proc fQAbstractProxyModel_virtualbase_mapSelectionFromSource(self: pointer, selection: pointer): pointer{.importc: "QAbstractProxyModel_virtualbase_mapSelectionFromSource".}
proc fcQAbstractProxyModel_override_virtual_mapSelectionFromSource(self: pointer, slot: int) {.importc: "QAbstractProxyModel_override_virtual_mapSelectionFromSource".}
proc fQAbstractProxyModel_virtualbase_submit(self: pointer, ): bool{.importc: "QAbstractProxyModel_virtualbase_submit".}
proc fcQAbstractProxyModel_override_virtual_submit(self: pointer, slot: int) {.importc: "QAbstractProxyModel_override_virtual_submit".}
proc fQAbstractProxyModel_virtualbase_revert(self: pointer, ): void{.importc: "QAbstractProxyModel_virtualbase_revert".}
proc fcQAbstractProxyModel_override_virtual_revert(self: pointer, slot: int) {.importc: "QAbstractProxyModel_override_virtual_revert".}
proc fQAbstractProxyModel_virtualbase_data(self: pointer, proxyIndex: pointer, role: cint): pointer{.importc: "QAbstractProxyModel_virtualbase_data".}
proc fcQAbstractProxyModel_override_virtual_data(self: pointer, slot: int) {.importc: "QAbstractProxyModel_override_virtual_data".}
proc fQAbstractProxyModel_virtualbase_headerData(self: pointer, section: cint, orientation: cint, role: cint): pointer{.importc: "QAbstractProxyModel_virtualbase_headerData".}
proc fcQAbstractProxyModel_override_virtual_headerData(self: pointer, slot: int) {.importc: "QAbstractProxyModel_override_virtual_headerData".}
proc fQAbstractProxyModel_virtualbase_itemData(self: pointer, index: pointer): struct_miqt_map{.importc: "QAbstractProxyModel_virtualbase_itemData".}
proc fcQAbstractProxyModel_override_virtual_itemData(self: pointer, slot: int) {.importc: "QAbstractProxyModel_override_virtual_itemData".}
proc fQAbstractProxyModel_virtualbase_flags(self: pointer, index: pointer): cint{.importc: "QAbstractProxyModel_virtualbase_flags".}
proc fcQAbstractProxyModel_override_virtual_flags(self: pointer, slot: int) {.importc: "QAbstractProxyModel_override_virtual_flags".}
proc fQAbstractProxyModel_virtualbase_setData(self: pointer, index: pointer, value: pointer, role: cint): bool{.importc: "QAbstractProxyModel_virtualbase_setData".}
proc fcQAbstractProxyModel_override_virtual_setData(self: pointer, slot: int) {.importc: "QAbstractProxyModel_override_virtual_setData".}
proc fQAbstractProxyModel_virtualbase_setItemData(self: pointer, index: pointer, roles: struct_miqt_map): bool{.importc: "QAbstractProxyModel_virtualbase_setItemData".}
proc fcQAbstractProxyModel_override_virtual_setItemData(self: pointer, slot: int) {.importc: "QAbstractProxyModel_override_virtual_setItemData".}
proc fQAbstractProxyModel_virtualbase_setHeaderData(self: pointer, section: cint, orientation: cint, value: pointer, role: cint): bool{.importc: "QAbstractProxyModel_virtualbase_setHeaderData".}
proc fcQAbstractProxyModel_override_virtual_setHeaderData(self: pointer, slot: int) {.importc: "QAbstractProxyModel_override_virtual_setHeaderData".}
proc fQAbstractProxyModel_virtualbase_buddy(self: pointer, index: pointer): pointer{.importc: "QAbstractProxyModel_virtualbase_buddy".}
proc fcQAbstractProxyModel_override_virtual_buddy(self: pointer, slot: int) {.importc: "QAbstractProxyModel_override_virtual_buddy".}
proc fQAbstractProxyModel_virtualbase_canFetchMore(self: pointer, parent: pointer): bool{.importc: "QAbstractProxyModel_virtualbase_canFetchMore".}
proc fcQAbstractProxyModel_override_virtual_canFetchMore(self: pointer, slot: int) {.importc: "QAbstractProxyModel_override_virtual_canFetchMore".}
proc fQAbstractProxyModel_virtualbase_fetchMore(self: pointer, parent: pointer): void{.importc: "QAbstractProxyModel_virtualbase_fetchMore".}
proc fcQAbstractProxyModel_override_virtual_fetchMore(self: pointer, slot: int) {.importc: "QAbstractProxyModel_override_virtual_fetchMore".}
proc fQAbstractProxyModel_virtualbase_sort(self: pointer, column: cint, order: cint): void{.importc: "QAbstractProxyModel_virtualbase_sort".}
proc fcQAbstractProxyModel_override_virtual_sort(self: pointer, slot: int) {.importc: "QAbstractProxyModel_override_virtual_sort".}
proc fQAbstractProxyModel_virtualbase_span(self: pointer, index: pointer): pointer{.importc: "QAbstractProxyModel_virtualbase_span".}
proc fcQAbstractProxyModel_override_virtual_span(self: pointer, slot: int) {.importc: "QAbstractProxyModel_override_virtual_span".}
proc fQAbstractProxyModel_virtualbase_hasChildren(self: pointer, parent: pointer): bool{.importc: "QAbstractProxyModel_virtualbase_hasChildren".}
proc fcQAbstractProxyModel_override_virtual_hasChildren(self: pointer, slot: int) {.importc: "QAbstractProxyModel_override_virtual_hasChildren".}
proc fQAbstractProxyModel_virtualbase_sibling(self: pointer, row: cint, column: cint, idx: pointer): pointer{.importc: "QAbstractProxyModel_virtualbase_sibling".}
proc fcQAbstractProxyModel_override_virtual_sibling(self: pointer, slot: int) {.importc: "QAbstractProxyModel_override_virtual_sibling".}
proc fQAbstractProxyModel_virtualbase_mimeData(self: pointer, indexes: struct_miqt_array): pointer{.importc: "QAbstractProxyModel_virtualbase_mimeData".}
proc fcQAbstractProxyModel_override_virtual_mimeData(self: pointer, slot: int) {.importc: "QAbstractProxyModel_override_virtual_mimeData".}
proc fQAbstractProxyModel_virtualbase_canDropMimeData(self: pointer, data: pointer, action: cint, row: cint, column: cint, parent: pointer): bool{.importc: "QAbstractProxyModel_virtualbase_canDropMimeData".}
proc fcQAbstractProxyModel_override_virtual_canDropMimeData(self: pointer, slot: int) {.importc: "QAbstractProxyModel_override_virtual_canDropMimeData".}
proc fQAbstractProxyModel_virtualbase_dropMimeData(self: pointer, data: pointer, action: cint, row: cint, column: cint, parent: pointer): bool{.importc: "QAbstractProxyModel_virtualbase_dropMimeData".}
proc fcQAbstractProxyModel_override_virtual_dropMimeData(self: pointer, slot: int) {.importc: "QAbstractProxyModel_override_virtual_dropMimeData".}
proc fQAbstractProxyModel_virtualbase_mimeTypes(self: pointer, ): struct_miqt_array{.importc: "QAbstractProxyModel_virtualbase_mimeTypes".}
proc fcQAbstractProxyModel_override_virtual_mimeTypes(self: pointer, slot: int) {.importc: "QAbstractProxyModel_override_virtual_mimeTypes".}
proc fQAbstractProxyModel_virtualbase_supportedDragActions(self: pointer, ): cint{.importc: "QAbstractProxyModel_virtualbase_supportedDragActions".}
proc fcQAbstractProxyModel_override_virtual_supportedDragActions(self: pointer, slot: int) {.importc: "QAbstractProxyModel_override_virtual_supportedDragActions".}
proc fQAbstractProxyModel_virtualbase_supportedDropActions(self: pointer, ): cint{.importc: "QAbstractProxyModel_virtualbase_supportedDropActions".}
proc fcQAbstractProxyModel_override_virtual_supportedDropActions(self: pointer, slot: int) {.importc: "QAbstractProxyModel_override_virtual_supportedDropActions".}
proc fcQAbstractProxyModel_override_virtual_index(self: pointer, slot: int) {.importc: "QAbstractProxyModel_override_virtual_index".}
proc fcQAbstractProxyModel_override_virtual_parent(self: pointer, slot: int) {.importc: "QAbstractProxyModel_override_virtual_parent".}
proc fcQAbstractProxyModel_override_virtual_rowCount(self: pointer, slot: int) {.importc: "QAbstractProxyModel_override_virtual_rowCount".}
proc fcQAbstractProxyModel_override_virtual_columnCount(self: pointer, slot: int) {.importc: "QAbstractProxyModel_override_virtual_columnCount".}
proc fQAbstractProxyModel_virtualbase_insertRows(self: pointer, row: cint, count: cint, parent: pointer): bool{.importc: "QAbstractProxyModel_virtualbase_insertRows".}
proc fcQAbstractProxyModel_override_virtual_insertRows(self: pointer, slot: int) {.importc: "QAbstractProxyModel_override_virtual_insertRows".}
proc fQAbstractProxyModel_virtualbase_insertColumns(self: pointer, column: cint, count: cint, parent: pointer): bool{.importc: "QAbstractProxyModel_virtualbase_insertColumns".}
proc fcQAbstractProxyModel_override_virtual_insertColumns(self: pointer, slot: int) {.importc: "QAbstractProxyModel_override_virtual_insertColumns".}
proc fQAbstractProxyModel_virtualbase_removeRows(self: pointer, row: cint, count: cint, parent: pointer): bool{.importc: "QAbstractProxyModel_virtualbase_removeRows".}
proc fcQAbstractProxyModel_override_virtual_removeRows(self: pointer, slot: int) {.importc: "QAbstractProxyModel_override_virtual_removeRows".}
proc fQAbstractProxyModel_virtualbase_removeColumns(self: pointer, column: cint, count: cint, parent: pointer): bool{.importc: "QAbstractProxyModel_virtualbase_removeColumns".}
proc fcQAbstractProxyModel_override_virtual_removeColumns(self: pointer, slot: int) {.importc: "QAbstractProxyModel_override_virtual_removeColumns".}
proc fQAbstractProxyModel_virtualbase_moveRows(self: pointer, sourceParent: pointer, sourceRow: cint, count: cint, destinationParent: pointer, destinationChild: cint): bool{.importc: "QAbstractProxyModel_virtualbase_moveRows".}
proc fcQAbstractProxyModel_override_virtual_moveRows(self: pointer, slot: int) {.importc: "QAbstractProxyModel_override_virtual_moveRows".}
proc fQAbstractProxyModel_virtualbase_moveColumns(self: pointer, sourceParent: pointer, sourceColumn: cint, count: cint, destinationParent: pointer, destinationChild: cint): bool{.importc: "QAbstractProxyModel_virtualbase_moveColumns".}
proc fcQAbstractProxyModel_override_virtual_moveColumns(self: pointer, slot: int) {.importc: "QAbstractProxyModel_override_virtual_moveColumns".}
proc fQAbstractProxyModel_virtualbase_match(self: pointer, start: pointer, role: cint, value: pointer, hits: cint, flags: cint): struct_miqt_array{.importc: "QAbstractProxyModel_virtualbase_match".}
proc fcQAbstractProxyModel_override_virtual_match(self: pointer, slot: int) {.importc: "QAbstractProxyModel_override_virtual_match".}
proc fQAbstractProxyModel_virtualbase_roleNames(self: pointer, ): struct_miqt_map{.importc: "QAbstractProxyModel_virtualbase_roleNames".}
proc fcQAbstractProxyModel_override_virtual_roleNames(self: pointer, slot: int) {.importc: "QAbstractProxyModel_override_virtual_roleNames".}
proc fQAbstractProxyModel_virtualbase_event(self: pointer, event: pointer): bool{.importc: "QAbstractProxyModel_virtualbase_event".}
proc fcQAbstractProxyModel_override_virtual_event(self: pointer, slot: int) {.importc: "QAbstractProxyModel_override_virtual_event".}
proc fQAbstractProxyModel_virtualbase_eventFilter(self: pointer, watched: pointer, event: pointer): bool{.importc: "QAbstractProxyModel_virtualbase_eventFilter".}
proc fcQAbstractProxyModel_override_virtual_eventFilter(self: pointer, slot: int) {.importc: "QAbstractProxyModel_override_virtual_eventFilter".}
proc fQAbstractProxyModel_virtualbase_timerEvent(self: pointer, event: pointer): void{.importc: "QAbstractProxyModel_virtualbase_timerEvent".}
proc fcQAbstractProxyModel_override_virtual_timerEvent(self: pointer, slot: int) {.importc: "QAbstractProxyModel_override_virtual_timerEvent".}
proc fQAbstractProxyModel_virtualbase_childEvent(self: pointer, event: pointer): void{.importc: "QAbstractProxyModel_virtualbase_childEvent".}
proc fcQAbstractProxyModel_override_virtual_childEvent(self: pointer, slot: int) {.importc: "QAbstractProxyModel_override_virtual_childEvent".}
proc fQAbstractProxyModel_virtualbase_customEvent(self: pointer, event: pointer): void{.importc: "QAbstractProxyModel_virtualbase_customEvent".}
proc fcQAbstractProxyModel_override_virtual_customEvent(self: pointer, slot: int) {.importc: "QAbstractProxyModel_override_virtual_customEvent".}
proc fQAbstractProxyModel_virtualbase_connectNotify(self: pointer, signal: pointer): void{.importc: "QAbstractProxyModel_virtualbase_connectNotify".}
proc fcQAbstractProxyModel_override_virtual_connectNotify(self: pointer, slot: int) {.importc: "QAbstractProxyModel_override_virtual_connectNotify".}
proc fQAbstractProxyModel_virtualbase_disconnectNotify(self: pointer, signal: pointer): void{.importc: "QAbstractProxyModel_virtualbase_disconnectNotify".}
proc fcQAbstractProxyModel_override_virtual_disconnectNotify(self: pointer, slot: int) {.importc: "QAbstractProxyModel_override_virtual_disconnectNotify".}
proc fcQAbstractProxyModel_staticMetaObject(): pointer {.importc: "QAbstractProxyModel_staticMetaObject".}
proc fcQAbstractProxyModel_delete(self: pointer) {.importc: "QAbstractProxyModel_delete".}


func init*(T: type gen_qabstractproxymodel_types.QAbstractProxyModel, h: ptr cQAbstractProxyModel): gen_qabstractproxymodel_types.QAbstractProxyModel =
  T(h: h)
proc create*(T: type gen_qabstractproxymodel_types.QAbstractProxyModel, ): gen_qabstractproxymodel_types.QAbstractProxyModel =
  gen_qabstractproxymodel_types.QAbstractProxyModel.init(fcQAbstractProxyModel_new())

proc create*(T: type gen_qabstractproxymodel_types.QAbstractProxyModel, parent: gen_qobject_types.QObject): gen_qabstractproxymodel_types.QAbstractProxyModel =
  gen_qabstractproxymodel_types.QAbstractProxyModel.init(fcQAbstractProxyModel_new2(parent.h))

proc metaObject*(self: gen_qabstractproxymodel_types.QAbstractProxyModel, ): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQAbstractProxyModel_metaObject(self.h))

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
  gen_qabstractitemmodel_types.QAbstractItemModel(h: fcQAbstractProxyModel_sourceModel(self.h))

proc mapToSource*(self: gen_qabstractproxymodel_types.QAbstractProxyModel, proxyIndex: gen_qabstractitemmodel_types.QModelIndex): gen_qabstractitemmodel_types.QModelIndex =
  gen_qabstractitemmodel_types.QModelIndex(h: fcQAbstractProxyModel_mapToSource(self.h, proxyIndex.h))

proc mapFromSource*(self: gen_qabstractproxymodel_types.QAbstractProxyModel, sourceIndex: gen_qabstractitemmodel_types.QModelIndex): gen_qabstractitemmodel_types.QModelIndex =
  gen_qabstractitemmodel_types.QModelIndex(h: fcQAbstractProxyModel_mapFromSource(self.h, sourceIndex.h))

proc mapSelectionToSource*(self: gen_qabstractproxymodel_types.QAbstractProxyModel, selection: gen_qitemselectionmodel_types.QItemSelection): gen_qitemselectionmodel_types.QItemSelection =
  gen_qitemselectionmodel_types.QItemSelection(h: fcQAbstractProxyModel_mapSelectionToSource(self.h, selection.h))

proc mapSelectionFromSource*(self: gen_qabstractproxymodel_types.QAbstractProxyModel, selection: gen_qitemselectionmodel_types.QItemSelection): gen_qitemselectionmodel_types.QItemSelection =
  gen_qitemselectionmodel_types.QItemSelection(h: fcQAbstractProxyModel_mapSelectionFromSource(self.h, selection.h))

proc submit*(self: gen_qabstractproxymodel_types.QAbstractProxyModel, ): bool =
  fcQAbstractProxyModel_submit(self.h)

proc revert*(self: gen_qabstractproxymodel_types.QAbstractProxyModel, ): void =
  fcQAbstractProxyModel_revert(self.h)

proc data*(self: gen_qabstractproxymodel_types.QAbstractProxyModel, proxyIndex: gen_qabstractitemmodel_types.QModelIndex, role: cint): gen_qvariant_types.QVariant =
  gen_qvariant_types.QVariant(h: fcQAbstractProxyModel_data(self.h, proxyIndex.h, role))

proc headerData*(self: gen_qabstractproxymodel_types.QAbstractProxyModel, section: cint, orientation: cint, role: cint): gen_qvariant_types.QVariant =
  gen_qvariant_types.QVariant(h: fcQAbstractProxyModel_headerData(self.h, section, cint(orientation), role))

proc itemData*(self: gen_qabstractproxymodel_types.QAbstractProxyModel, index: gen_qabstractitemmodel_types.QModelIndex): Table[cint,gen_qvariant_types.QVariant] =
  var v_mm = fcQAbstractProxyModel_itemData(self.h, index.h)
  var vx_ret: Table[cint, gen_qvariant_types.QVariant]
  var v_Keys = cast[ptr UncheckedArray[cint]](v_mm.keys)
  var v_Values = cast[ptr UncheckedArray[pointer]](v_mm.values)
  for i in 0..<v_mm.len:
    var v_entry_Key = v_Keys[i]

    var v_entry_Value = gen_qvariant_types.QVariant(h: v_Values[i])

    vx_ret[v_entry_Key] = v_entry_Value
  vx_ret

proc flags*(self: gen_qabstractproxymodel_types.QAbstractProxyModel, index: gen_qabstractitemmodel_types.QModelIndex): cint =
  cint(fcQAbstractProxyModel_flags(self.h, index.h))

proc setData*(self: gen_qabstractproxymodel_types.QAbstractProxyModel, index: gen_qabstractitemmodel_types.QModelIndex, value: gen_qvariant_types.QVariant, role: cint): bool =
  fcQAbstractProxyModel_setData(self.h, index.h, value.h, role)

proc setItemData*(self: gen_qabstractproxymodel_types.QAbstractProxyModel, index: gen_qabstractitemmodel_types.QModelIndex, roles: Table[cint,gen_qvariant_types.QVariant]): bool =
  var roles_Keys_CArray = newSeq[cint](len(roles))
  var roles_Values_CArray = newSeq[pointer](len(roles))
  var roles_ctr = 0
  for rolesk, rolesv in roles:
    roles_Keys_CArray[roles_ctr] = roles_k
    roles_Values_CArray[roles_ctr] = roles_v.h
    roles_ctr += 1

  fcQAbstractProxyModel_setItemData(self.h, index.h, struct_miqt_map(len: csize_t(len(roles)),keys: if len(roles) == 0: nil else: addr(roles_Keys_CArray[0]), values: if len(roles) == 0: nil else: addr(roles_Values_CArray[0]),))

proc setHeaderData*(self: gen_qabstractproxymodel_types.QAbstractProxyModel, section: cint, orientation: cint, value: gen_qvariant_types.QVariant, role: cint): bool =
  fcQAbstractProxyModel_setHeaderData(self.h, section, cint(orientation), value.h, role)

proc buddy*(self: gen_qabstractproxymodel_types.QAbstractProxyModel, index: gen_qabstractitemmodel_types.QModelIndex): gen_qabstractitemmodel_types.QModelIndex =
  gen_qabstractitemmodel_types.QModelIndex(h: fcQAbstractProxyModel_buddy(self.h, index.h))

proc canFetchMore*(self: gen_qabstractproxymodel_types.QAbstractProxyModel, parent: gen_qabstractitemmodel_types.QModelIndex): bool =
  fcQAbstractProxyModel_canFetchMore(self.h, parent.h)

proc fetchMore*(self: gen_qabstractproxymodel_types.QAbstractProxyModel, parent: gen_qabstractitemmodel_types.QModelIndex): void =
  fcQAbstractProxyModel_fetchMore(self.h, parent.h)

proc sort*(self: gen_qabstractproxymodel_types.QAbstractProxyModel, column: cint, order: cint): void =
  fcQAbstractProxyModel_sort(self.h, column, cint(order))

proc span*(self: gen_qabstractproxymodel_types.QAbstractProxyModel, index: gen_qabstractitemmodel_types.QModelIndex): gen_qsize_types.QSize =
  gen_qsize_types.QSize(h: fcQAbstractProxyModel_span(self.h, index.h))

proc hasChildren*(self: gen_qabstractproxymodel_types.QAbstractProxyModel, parent: gen_qabstractitemmodel_types.QModelIndex): bool =
  fcQAbstractProxyModel_hasChildren(self.h, parent.h)

proc sibling*(self: gen_qabstractproxymodel_types.QAbstractProxyModel, row: cint, column: cint, idx: gen_qabstractitemmodel_types.QModelIndex): gen_qabstractitemmodel_types.QModelIndex =
  gen_qabstractitemmodel_types.QModelIndex(h: fcQAbstractProxyModel_sibling(self.h, row, column, idx.h))

proc mimeData*(self: gen_qabstractproxymodel_types.QAbstractProxyModel, indexes: seq[gen_qabstractitemmodel_types.QModelIndex]): gen_qmimedata_types.QMimeData =
  var indexes_CArray = newSeq[pointer](len(indexes))
  for i in 0..<len(indexes):
    indexes_CArray[i] = indexes[i].h

  gen_qmimedata_types.QMimeData(h: fcQAbstractProxyModel_mimeData(self.h, struct_miqt_array(len: csize_t(len(indexes)), data: if len(indexes) == 0: nil else: addr(indexes_CArray[0]))))

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

proc QAbstractProxyModelmetaObject*(self: gen_qabstractproxymodel_types.QAbstractProxyModel, ): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fQAbstractProxyModel_virtualbase_metaObject(self.h))

type QAbstractProxyModelmetaObjectProc* = proc(): gen_qobjectdefs_types.QMetaObject
proc onmetaObject*(self: gen_qabstractproxymodel_types.QAbstractProxyModel, slot: QAbstractProxyModelmetaObjectProc) =
  # TODO check subclass
  var tmp = new QAbstractProxyModelmetaObjectProc
  tmp[] = slot
  GC_ref(tmp)
  fcQAbstractProxyModel_override_virtual_metaObject(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QAbstractProxyModel_metaObject(self: ptr cQAbstractProxyModel, slot: int): pointer {.exportc: "miqt_exec_callback_QAbstractProxyModel_metaObject ".} =
  var nimfunc = cast[ptr QAbstractProxyModelmetaObjectProc](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )

  virtualReturn.h
proc QAbstractProxyModelmetacast*(self: gen_qabstractproxymodel_types.QAbstractProxyModel, param1: cstring): pointer =
  fQAbstractProxyModel_virtualbase_metacast(self.h, param1)

type QAbstractProxyModelmetacastProc* = proc(param1: cstring): pointer
proc onmetacast*(self: gen_qabstractproxymodel_types.QAbstractProxyModel, slot: QAbstractProxyModelmetacastProc) =
  # TODO check subclass
  var tmp = new QAbstractProxyModelmetacastProc
  tmp[] = slot
  GC_ref(tmp)
  fcQAbstractProxyModel_override_virtual_metacast(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QAbstractProxyModel_metacast(self: ptr cQAbstractProxyModel, slot: int, param1: cstring): pointer {.exportc: "miqt_exec_callback_QAbstractProxyModel_metacast ".} =
  var nimfunc = cast[ptr QAbstractProxyModelmetacastProc](cast[pointer](slot))
  let slotval1 = (param1)


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn
proc QAbstractProxyModelmetacall*(self: gen_qabstractproxymodel_types.QAbstractProxyModel, param1: cint, param2: cint, param3: pointer): cint =
  fQAbstractProxyModel_virtualbase_metacall(self.h, cint(param1), param2, param3)

type QAbstractProxyModelmetacallProc* = proc(param1: cint, param2: cint, param3: pointer): cint
proc onmetacall*(self: gen_qabstractproxymodel_types.QAbstractProxyModel, slot: QAbstractProxyModelmetacallProc) =
  # TODO check subclass
  var tmp = new QAbstractProxyModelmetacallProc
  tmp[] = slot
  GC_ref(tmp)
  fcQAbstractProxyModel_override_virtual_metacall(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QAbstractProxyModel_metacall(self: ptr cQAbstractProxyModel, slot: int, param1: cint, param2: cint, param3: pointer): cint {.exportc: "miqt_exec_callback_QAbstractProxyModel_metacall ".} =
  var nimfunc = cast[ptr QAbstractProxyModelmetacallProc](cast[pointer](slot))
  let slotval1 = cint(param1)

  let slotval2 = param2

  let slotval3 = param3


  let virtualReturn = nimfunc[](slotval1, slotval2, slotval3 )

  virtualReturn
proc QAbstractProxyModelsetSourceModel*(self: gen_qabstractproxymodel_types.QAbstractProxyModel, sourceModel: gen_qabstractitemmodel_types.QAbstractItemModel): void =
  fQAbstractProxyModel_virtualbase_setSourceModel(self.h, sourceModel.h)

type QAbstractProxyModelsetSourceModelProc* = proc(sourceModel: gen_qabstractitemmodel_types.QAbstractItemModel): void
proc onsetSourceModel*(self: gen_qabstractproxymodel_types.QAbstractProxyModel, slot: QAbstractProxyModelsetSourceModelProc) =
  # TODO check subclass
  var tmp = new QAbstractProxyModelsetSourceModelProc
  tmp[] = slot
  GC_ref(tmp)
  fcQAbstractProxyModel_override_virtual_setSourceModel(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QAbstractProxyModel_setSourceModel(self: ptr cQAbstractProxyModel, slot: int, sourceModel: pointer): void {.exportc: "miqt_exec_callback_QAbstractProxyModel_setSourceModel ".} =
  var nimfunc = cast[ptr QAbstractProxyModelsetSourceModelProc](cast[pointer](slot))
  let slotval1 = gen_qabstractitemmodel_types.QAbstractItemModel(h: sourceModel)


  nimfunc[](slotval1)
type QAbstractProxyModelmapToSourceProc* = proc(proxyIndex: gen_qabstractitemmodel_types.QModelIndex): gen_qabstractitemmodel_types.QModelIndex
proc onmapToSource*(self: gen_qabstractproxymodel_types.QAbstractProxyModel, slot: QAbstractProxyModelmapToSourceProc) =
  # TODO check subclass
  var tmp = new QAbstractProxyModelmapToSourceProc
  tmp[] = slot
  GC_ref(tmp)
  fcQAbstractProxyModel_override_virtual_mapToSource(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QAbstractProxyModel_mapToSource(self: ptr cQAbstractProxyModel, slot: int, proxyIndex: pointer): pointer {.exportc: "miqt_exec_callback_QAbstractProxyModel_mapToSource ".} =
  var nimfunc = cast[ptr QAbstractProxyModelmapToSourceProc](cast[pointer](slot))
  let slotval1 = gen_qabstractitemmodel_types.QModelIndex(h: proxyIndex)


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn.h
type QAbstractProxyModelmapFromSourceProc* = proc(sourceIndex: gen_qabstractitemmodel_types.QModelIndex): gen_qabstractitemmodel_types.QModelIndex
proc onmapFromSource*(self: gen_qabstractproxymodel_types.QAbstractProxyModel, slot: QAbstractProxyModelmapFromSourceProc) =
  # TODO check subclass
  var tmp = new QAbstractProxyModelmapFromSourceProc
  tmp[] = slot
  GC_ref(tmp)
  fcQAbstractProxyModel_override_virtual_mapFromSource(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QAbstractProxyModel_mapFromSource(self: ptr cQAbstractProxyModel, slot: int, sourceIndex: pointer): pointer {.exportc: "miqt_exec_callback_QAbstractProxyModel_mapFromSource ".} =
  var nimfunc = cast[ptr QAbstractProxyModelmapFromSourceProc](cast[pointer](slot))
  let slotval1 = gen_qabstractitemmodel_types.QModelIndex(h: sourceIndex)


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn.h
proc QAbstractProxyModelmapSelectionToSource*(self: gen_qabstractproxymodel_types.QAbstractProxyModel, selection: gen_qitemselectionmodel_types.QItemSelection): gen_qitemselectionmodel_types.QItemSelection =
  gen_qitemselectionmodel_types.QItemSelection(h: fQAbstractProxyModel_virtualbase_mapSelectionToSource(self.h, selection.h))

type QAbstractProxyModelmapSelectionToSourceProc* = proc(selection: gen_qitemselectionmodel_types.QItemSelection): gen_qitemselectionmodel_types.QItemSelection
proc onmapSelectionToSource*(self: gen_qabstractproxymodel_types.QAbstractProxyModel, slot: QAbstractProxyModelmapSelectionToSourceProc) =
  # TODO check subclass
  var tmp = new QAbstractProxyModelmapSelectionToSourceProc
  tmp[] = slot
  GC_ref(tmp)
  fcQAbstractProxyModel_override_virtual_mapSelectionToSource(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QAbstractProxyModel_mapSelectionToSource(self: ptr cQAbstractProxyModel, slot: int, selection: pointer): pointer {.exportc: "miqt_exec_callback_QAbstractProxyModel_mapSelectionToSource ".} =
  var nimfunc = cast[ptr QAbstractProxyModelmapSelectionToSourceProc](cast[pointer](slot))
  let slotval1 = gen_qitemselectionmodel_types.QItemSelection(h: selection)


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn.h
proc QAbstractProxyModelmapSelectionFromSource*(self: gen_qabstractproxymodel_types.QAbstractProxyModel, selection: gen_qitemselectionmodel_types.QItemSelection): gen_qitemselectionmodel_types.QItemSelection =
  gen_qitemselectionmodel_types.QItemSelection(h: fQAbstractProxyModel_virtualbase_mapSelectionFromSource(self.h, selection.h))

type QAbstractProxyModelmapSelectionFromSourceProc* = proc(selection: gen_qitemselectionmodel_types.QItemSelection): gen_qitemselectionmodel_types.QItemSelection
proc onmapSelectionFromSource*(self: gen_qabstractproxymodel_types.QAbstractProxyModel, slot: QAbstractProxyModelmapSelectionFromSourceProc) =
  # TODO check subclass
  var tmp = new QAbstractProxyModelmapSelectionFromSourceProc
  tmp[] = slot
  GC_ref(tmp)
  fcQAbstractProxyModel_override_virtual_mapSelectionFromSource(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QAbstractProxyModel_mapSelectionFromSource(self: ptr cQAbstractProxyModel, slot: int, selection: pointer): pointer {.exportc: "miqt_exec_callback_QAbstractProxyModel_mapSelectionFromSource ".} =
  var nimfunc = cast[ptr QAbstractProxyModelmapSelectionFromSourceProc](cast[pointer](slot))
  let slotval1 = gen_qitemselectionmodel_types.QItemSelection(h: selection)


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn.h
proc QAbstractProxyModelsubmit*(self: gen_qabstractproxymodel_types.QAbstractProxyModel, ): bool =
  fQAbstractProxyModel_virtualbase_submit(self.h)

type QAbstractProxyModelsubmitProc* = proc(): bool
proc onsubmit*(self: gen_qabstractproxymodel_types.QAbstractProxyModel, slot: QAbstractProxyModelsubmitProc) =
  # TODO check subclass
  var tmp = new QAbstractProxyModelsubmitProc
  tmp[] = slot
  GC_ref(tmp)
  fcQAbstractProxyModel_override_virtual_submit(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QAbstractProxyModel_submit(self: ptr cQAbstractProxyModel, slot: int): bool {.exportc: "miqt_exec_callback_QAbstractProxyModel_submit ".} =
  var nimfunc = cast[ptr QAbstractProxyModelsubmitProc](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )

  virtualReturn
proc QAbstractProxyModelrevert*(self: gen_qabstractproxymodel_types.QAbstractProxyModel, ): void =
  fQAbstractProxyModel_virtualbase_revert(self.h)

type QAbstractProxyModelrevertProc* = proc(): void
proc onrevert*(self: gen_qabstractproxymodel_types.QAbstractProxyModel, slot: QAbstractProxyModelrevertProc) =
  # TODO check subclass
  var tmp = new QAbstractProxyModelrevertProc
  tmp[] = slot
  GC_ref(tmp)
  fcQAbstractProxyModel_override_virtual_revert(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QAbstractProxyModel_revert(self: ptr cQAbstractProxyModel, slot: int): void {.exportc: "miqt_exec_callback_QAbstractProxyModel_revert ".} =
  var nimfunc = cast[ptr QAbstractProxyModelrevertProc](cast[pointer](slot))

  nimfunc[]()
proc QAbstractProxyModeldata*(self: gen_qabstractproxymodel_types.QAbstractProxyModel, proxyIndex: gen_qabstractitemmodel_types.QModelIndex, role: cint): gen_qvariant_types.QVariant =
  gen_qvariant_types.QVariant(h: fQAbstractProxyModel_virtualbase_data(self.h, proxyIndex.h, role))

type QAbstractProxyModeldataProc* = proc(proxyIndex: gen_qabstractitemmodel_types.QModelIndex, role: cint): gen_qvariant_types.QVariant
proc ondata*(self: gen_qabstractproxymodel_types.QAbstractProxyModel, slot: QAbstractProxyModeldataProc) =
  # TODO check subclass
  var tmp = new QAbstractProxyModeldataProc
  tmp[] = slot
  GC_ref(tmp)
  fcQAbstractProxyModel_override_virtual_data(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QAbstractProxyModel_data(self: ptr cQAbstractProxyModel, slot: int, proxyIndex: pointer, role: cint): pointer {.exportc: "miqt_exec_callback_QAbstractProxyModel_data ".} =
  var nimfunc = cast[ptr QAbstractProxyModeldataProc](cast[pointer](slot))
  let slotval1 = gen_qabstractitemmodel_types.QModelIndex(h: proxyIndex)

  let slotval2 = role


  let virtualReturn = nimfunc[](slotval1, slotval2 )

  virtualReturn.h
proc QAbstractProxyModelheaderData*(self: gen_qabstractproxymodel_types.QAbstractProxyModel, section: cint, orientation: cint, role: cint): gen_qvariant_types.QVariant =
  gen_qvariant_types.QVariant(h: fQAbstractProxyModel_virtualbase_headerData(self.h, section, cint(orientation), role))

type QAbstractProxyModelheaderDataProc* = proc(section: cint, orientation: cint, role: cint): gen_qvariant_types.QVariant
proc onheaderData*(self: gen_qabstractproxymodel_types.QAbstractProxyModel, slot: QAbstractProxyModelheaderDataProc) =
  # TODO check subclass
  var tmp = new QAbstractProxyModelheaderDataProc
  tmp[] = slot
  GC_ref(tmp)
  fcQAbstractProxyModel_override_virtual_headerData(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QAbstractProxyModel_headerData(self: ptr cQAbstractProxyModel, slot: int, section: cint, orientation: cint, role: cint): pointer {.exportc: "miqt_exec_callback_QAbstractProxyModel_headerData ".} =
  var nimfunc = cast[ptr QAbstractProxyModelheaderDataProc](cast[pointer](slot))
  let slotval1 = section

  let slotval2 = cint(orientation)

  let slotval3 = role


  let virtualReturn = nimfunc[](slotval1, slotval2, slotval3 )

  virtualReturn.h
proc QAbstractProxyModelitemData*(self: gen_qabstractproxymodel_types.QAbstractProxyModel, index: gen_qabstractitemmodel_types.QModelIndex): Table[cint,gen_qvariant_types.QVariant] =
  var v_mm = fQAbstractProxyModel_virtualbase_itemData(self.h, index.h)
  var vx_ret: Table[cint, gen_qvariant_types.QVariant]
  var v_Keys = cast[ptr UncheckedArray[cint]](v_mm.keys)
  var v_Values = cast[ptr UncheckedArray[pointer]](v_mm.values)
  for i in 0..<v_mm.len:
    var v_entry_Key = v_Keys[i]

    var v_entry_Value = gen_qvariant_types.QVariant(h: v_Values[i])

    vx_ret[v_entry_Key] = v_entry_Value
  vx_ret

type QAbstractProxyModelitemDataProc* = proc(index: gen_qabstractitemmodel_types.QModelIndex): Table[cint,gen_qvariant_types.QVariant]
proc onitemData*(self: gen_qabstractproxymodel_types.QAbstractProxyModel, slot: QAbstractProxyModelitemDataProc) =
  # TODO check subclass
  var tmp = new QAbstractProxyModelitemDataProc
  tmp[] = slot
  GC_ref(tmp)
  fcQAbstractProxyModel_override_virtual_itemData(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QAbstractProxyModel_itemData(self: ptr cQAbstractProxyModel, slot: int, index: pointer): struct_miqt_map {.exportc: "miqt_exec_callback_QAbstractProxyModel_itemData ".} =
  var nimfunc = cast[ptr QAbstractProxyModelitemDataProc](cast[pointer](slot))
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
proc QAbstractProxyModelflags*(self: gen_qabstractproxymodel_types.QAbstractProxyModel, index: gen_qabstractitemmodel_types.QModelIndex): cint =
  cint(fQAbstractProxyModel_virtualbase_flags(self.h, index.h))

type QAbstractProxyModelflagsProc* = proc(index: gen_qabstractitemmodel_types.QModelIndex): cint
proc onflags*(self: gen_qabstractproxymodel_types.QAbstractProxyModel, slot: QAbstractProxyModelflagsProc) =
  # TODO check subclass
  var tmp = new QAbstractProxyModelflagsProc
  tmp[] = slot
  GC_ref(tmp)
  fcQAbstractProxyModel_override_virtual_flags(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QAbstractProxyModel_flags(self: ptr cQAbstractProxyModel, slot: int, index: pointer): cint {.exportc: "miqt_exec_callback_QAbstractProxyModel_flags ".} =
  var nimfunc = cast[ptr QAbstractProxyModelflagsProc](cast[pointer](slot))
  let slotval1 = gen_qabstractitemmodel_types.QModelIndex(h: index)


  let virtualReturn = nimfunc[](slotval1 )

  cint(virtualReturn)
proc QAbstractProxyModelsetData*(self: gen_qabstractproxymodel_types.QAbstractProxyModel, index: gen_qabstractitemmodel_types.QModelIndex, value: gen_qvariant_types.QVariant, role: cint): bool =
  fQAbstractProxyModel_virtualbase_setData(self.h, index.h, value.h, role)

type QAbstractProxyModelsetDataProc* = proc(index: gen_qabstractitemmodel_types.QModelIndex, value: gen_qvariant_types.QVariant, role: cint): bool
proc onsetData*(self: gen_qabstractproxymodel_types.QAbstractProxyModel, slot: QAbstractProxyModelsetDataProc) =
  # TODO check subclass
  var tmp = new QAbstractProxyModelsetDataProc
  tmp[] = slot
  GC_ref(tmp)
  fcQAbstractProxyModel_override_virtual_setData(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QAbstractProxyModel_setData(self: ptr cQAbstractProxyModel, slot: int, index: pointer, value: pointer, role: cint): bool {.exportc: "miqt_exec_callback_QAbstractProxyModel_setData ".} =
  var nimfunc = cast[ptr QAbstractProxyModelsetDataProc](cast[pointer](slot))
  let slotval1 = gen_qabstractitemmodel_types.QModelIndex(h: index)

  let slotval2 = gen_qvariant_types.QVariant(h: value)

  let slotval3 = role


  let virtualReturn = nimfunc[](slotval1, slotval2, slotval3 )

  virtualReturn
proc QAbstractProxyModelsetItemData*(self: gen_qabstractproxymodel_types.QAbstractProxyModel, index: gen_qabstractitemmodel_types.QModelIndex, roles: Table[cint,gen_qvariant_types.QVariant]): bool =
  var roles_Keys_CArray = newSeq[cint](len(roles))
  var roles_Values_CArray = newSeq[pointer](len(roles))
  var roles_ctr = 0
  for rolesk, rolesv in roles:
    roles_Keys_CArray[roles_ctr] = roles_k
    roles_Values_CArray[roles_ctr] = roles_v.h
    roles_ctr += 1

  fQAbstractProxyModel_virtualbase_setItemData(self.h, index.h, struct_miqt_map(len: csize_t(len(roles)),keys: if len(roles) == 0: nil else: addr(roles_Keys_CArray[0]), values: if len(roles) == 0: nil else: addr(roles_Values_CArray[0]),))

type QAbstractProxyModelsetItemDataProc* = proc(index: gen_qabstractitemmodel_types.QModelIndex, roles: Table[cint,gen_qvariant_types.QVariant]): bool
proc onsetItemData*(self: gen_qabstractproxymodel_types.QAbstractProxyModel, slot: QAbstractProxyModelsetItemDataProc) =
  # TODO check subclass
  var tmp = new QAbstractProxyModelsetItemDataProc
  tmp[] = slot
  GC_ref(tmp)
  fcQAbstractProxyModel_override_virtual_setItemData(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QAbstractProxyModel_setItemData(self: ptr cQAbstractProxyModel, slot: int, index: pointer, roles: struct_miqt_map): bool {.exportc: "miqt_exec_callback_QAbstractProxyModel_setItemData ".} =
  var nimfunc = cast[ptr QAbstractProxyModelsetItemDataProc](cast[pointer](slot))
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
proc QAbstractProxyModelsetHeaderData*(self: gen_qabstractproxymodel_types.QAbstractProxyModel, section: cint, orientation: cint, value: gen_qvariant_types.QVariant, role: cint): bool =
  fQAbstractProxyModel_virtualbase_setHeaderData(self.h, section, cint(orientation), value.h, role)

type QAbstractProxyModelsetHeaderDataProc* = proc(section: cint, orientation: cint, value: gen_qvariant_types.QVariant, role: cint): bool
proc onsetHeaderData*(self: gen_qabstractproxymodel_types.QAbstractProxyModel, slot: QAbstractProxyModelsetHeaderDataProc) =
  # TODO check subclass
  var tmp = new QAbstractProxyModelsetHeaderDataProc
  tmp[] = slot
  GC_ref(tmp)
  fcQAbstractProxyModel_override_virtual_setHeaderData(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QAbstractProxyModel_setHeaderData(self: ptr cQAbstractProxyModel, slot: int, section: cint, orientation: cint, value: pointer, role: cint): bool {.exportc: "miqt_exec_callback_QAbstractProxyModel_setHeaderData ".} =
  var nimfunc = cast[ptr QAbstractProxyModelsetHeaderDataProc](cast[pointer](slot))
  let slotval1 = section

  let slotval2 = cint(orientation)

  let slotval3 = gen_qvariant_types.QVariant(h: value)

  let slotval4 = role


  let virtualReturn = nimfunc[](slotval1, slotval2, slotval3, slotval4 )

  virtualReturn
proc QAbstractProxyModelbuddy*(self: gen_qabstractproxymodel_types.QAbstractProxyModel, index: gen_qabstractitemmodel_types.QModelIndex): gen_qabstractitemmodel_types.QModelIndex =
  gen_qabstractitemmodel_types.QModelIndex(h: fQAbstractProxyModel_virtualbase_buddy(self.h, index.h))

type QAbstractProxyModelbuddyProc* = proc(index: gen_qabstractitemmodel_types.QModelIndex): gen_qabstractitemmodel_types.QModelIndex
proc onbuddy*(self: gen_qabstractproxymodel_types.QAbstractProxyModel, slot: QAbstractProxyModelbuddyProc) =
  # TODO check subclass
  var tmp = new QAbstractProxyModelbuddyProc
  tmp[] = slot
  GC_ref(tmp)
  fcQAbstractProxyModel_override_virtual_buddy(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QAbstractProxyModel_buddy(self: ptr cQAbstractProxyModel, slot: int, index: pointer): pointer {.exportc: "miqt_exec_callback_QAbstractProxyModel_buddy ".} =
  var nimfunc = cast[ptr QAbstractProxyModelbuddyProc](cast[pointer](slot))
  let slotval1 = gen_qabstractitemmodel_types.QModelIndex(h: index)


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn.h
proc QAbstractProxyModelcanFetchMore*(self: gen_qabstractproxymodel_types.QAbstractProxyModel, parent: gen_qabstractitemmodel_types.QModelIndex): bool =
  fQAbstractProxyModel_virtualbase_canFetchMore(self.h, parent.h)

type QAbstractProxyModelcanFetchMoreProc* = proc(parent: gen_qabstractitemmodel_types.QModelIndex): bool
proc oncanFetchMore*(self: gen_qabstractproxymodel_types.QAbstractProxyModel, slot: QAbstractProxyModelcanFetchMoreProc) =
  # TODO check subclass
  var tmp = new QAbstractProxyModelcanFetchMoreProc
  tmp[] = slot
  GC_ref(tmp)
  fcQAbstractProxyModel_override_virtual_canFetchMore(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QAbstractProxyModel_canFetchMore(self: ptr cQAbstractProxyModel, slot: int, parent: pointer): bool {.exportc: "miqt_exec_callback_QAbstractProxyModel_canFetchMore ".} =
  var nimfunc = cast[ptr QAbstractProxyModelcanFetchMoreProc](cast[pointer](slot))
  let slotval1 = gen_qabstractitemmodel_types.QModelIndex(h: parent)


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn
proc QAbstractProxyModelfetchMore*(self: gen_qabstractproxymodel_types.QAbstractProxyModel, parent: gen_qabstractitemmodel_types.QModelIndex): void =
  fQAbstractProxyModel_virtualbase_fetchMore(self.h, parent.h)

type QAbstractProxyModelfetchMoreProc* = proc(parent: gen_qabstractitemmodel_types.QModelIndex): void
proc onfetchMore*(self: gen_qabstractproxymodel_types.QAbstractProxyModel, slot: QAbstractProxyModelfetchMoreProc) =
  # TODO check subclass
  var tmp = new QAbstractProxyModelfetchMoreProc
  tmp[] = slot
  GC_ref(tmp)
  fcQAbstractProxyModel_override_virtual_fetchMore(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QAbstractProxyModel_fetchMore(self: ptr cQAbstractProxyModel, slot: int, parent: pointer): void {.exportc: "miqt_exec_callback_QAbstractProxyModel_fetchMore ".} =
  var nimfunc = cast[ptr QAbstractProxyModelfetchMoreProc](cast[pointer](slot))
  let slotval1 = gen_qabstractitemmodel_types.QModelIndex(h: parent)


  nimfunc[](slotval1)
proc QAbstractProxyModelsort*(self: gen_qabstractproxymodel_types.QAbstractProxyModel, column: cint, order: cint): void =
  fQAbstractProxyModel_virtualbase_sort(self.h, column, cint(order))

type QAbstractProxyModelsortProc* = proc(column: cint, order: cint): void
proc onsort*(self: gen_qabstractproxymodel_types.QAbstractProxyModel, slot: QAbstractProxyModelsortProc) =
  # TODO check subclass
  var tmp = new QAbstractProxyModelsortProc
  tmp[] = slot
  GC_ref(tmp)
  fcQAbstractProxyModel_override_virtual_sort(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QAbstractProxyModel_sort(self: ptr cQAbstractProxyModel, slot: int, column: cint, order: cint): void {.exportc: "miqt_exec_callback_QAbstractProxyModel_sort ".} =
  var nimfunc = cast[ptr QAbstractProxyModelsortProc](cast[pointer](slot))
  let slotval1 = column

  let slotval2 = cint(order)


  nimfunc[](slotval1, slotval2)
proc QAbstractProxyModelspan*(self: gen_qabstractproxymodel_types.QAbstractProxyModel, index: gen_qabstractitemmodel_types.QModelIndex): gen_qsize_types.QSize =
  gen_qsize_types.QSize(h: fQAbstractProxyModel_virtualbase_span(self.h, index.h))

type QAbstractProxyModelspanProc* = proc(index: gen_qabstractitemmodel_types.QModelIndex): gen_qsize_types.QSize
proc onspan*(self: gen_qabstractproxymodel_types.QAbstractProxyModel, slot: QAbstractProxyModelspanProc) =
  # TODO check subclass
  var tmp = new QAbstractProxyModelspanProc
  tmp[] = slot
  GC_ref(tmp)
  fcQAbstractProxyModel_override_virtual_span(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QAbstractProxyModel_span(self: ptr cQAbstractProxyModel, slot: int, index: pointer): pointer {.exportc: "miqt_exec_callback_QAbstractProxyModel_span ".} =
  var nimfunc = cast[ptr QAbstractProxyModelspanProc](cast[pointer](slot))
  let slotval1 = gen_qabstractitemmodel_types.QModelIndex(h: index)


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn.h
proc QAbstractProxyModelhasChildren*(self: gen_qabstractproxymodel_types.QAbstractProxyModel, parent: gen_qabstractitemmodel_types.QModelIndex): bool =
  fQAbstractProxyModel_virtualbase_hasChildren(self.h, parent.h)

type QAbstractProxyModelhasChildrenProc* = proc(parent: gen_qabstractitemmodel_types.QModelIndex): bool
proc onhasChildren*(self: gen_qabstractproxymodel_types.QAbstractProxyModel, slot: QAbstractProxyModelhasChildrenProc) =
  # TODO check subclass
  var tmp = new QAbstractProxyModelhasChildrenProc
  tmp[] = slot
  GC_ref(tmp)
  fcQAbstractProxyModel_override_virtual_hasChildren(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QAbstractProxyModel_hasChildren(self: ptr cQAbstractProxyModel, slot: int, parent: pointer): bool {.exportc: "miqt_exec_callback_QAbstractProxyModel_hasChildren ".} =
  var nimfunc = cast[ptr QAbstractProxyModelhasChildrenProc](cast[pointer](slot))
  let slotval1 = gen_qabstractitemmodel_types.QModelIndex(h: parent)


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn
proc QAbstractProxyModelsibling*(self: gen_qabstractproxymodel_types.QAbstractProxyModel, row: cint, column: cint, idx: gen_qabstractitemmodel_types.QModelIndex): gen_qabstractitemmodel_types.QModelIndex =
  gen_qabstractitemmodel_types.QModelIndex(h: fQAbstractProxyModel_virtualbase_sibling(self.h, row, column, idx.h))

type QAbstractProxyModelsiblingProc* = proc(row: cint, column: cint, idx: gen_qabstractitemmodel_types.QModelIndex): gen_qabstractitemmodel_types.QModelIndex
proc onsibling*(self: gen_qabstractproxymodel_types.QAbstractProxyModel, slot: QAbstractProxyModelsiblingProc) =
  # TODO check subclass
  var tmp = new QAbstractProxyModelsiblingProc
  tmp[] = slot
  GC_ref(tmp)
  fcQAbstractProxyModel_override_virtual_sibling(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QAbstractProxyModel_sibling(self: ptr cQAbstractProxyModel, slot: int, row: cint, column: cint, idx: pointer): pointer {.exportc: "miqt_exec_callback_QAbstractProxyModel_sibling ".} =
  var nimfunc = cast[ptr QAbstractProxyModelsiblingProc](cast[pointer](slot))
  let slotval1 = row

  let slotval2 = column

  let slotval3 = gen_qabstractitemmodel_types.QModelIndex(h: idx)


  let virtualReturn = nimfunc[](slotval1, slotval2, slotval3 )

  virtualReturn.h
proc QAbstractProxyModelmimeData*(self: gen_qabstractproxymodel_types.QAbstractProxyModel, indexes: seq[gen_qabstractitemmodel_types.QModelIndex]): gen_qmimedata_types.QMimeData =
  var indexes_CArray = newSeq[pointer](len(indexes))
  for i in 0..<len(indexes):
    indexes_CArray[i] = indexes[i].h

  gen_qmimedata_types.QMimeData(h: fQAbstractProxyModel_virtualbase_mimeData(self.h, struct_miqt_array(len: csize_t(len(indexes)), data: if len(indexes) == 0: nil else: addr(indexes_CArray[0]))))

type QAbstractProxyModelmimeDataProc* = proc(indexes: seq[gen_qabstractitemmodel_types.QModelIndex]): gen_qmimedata_types.QMimeData
proc onmimeData*(self: gen_qabstractproxymodel_types.QAbstractProxyModel, slot: QAbstractProxyModelmimeDataProc) =
  # TODO check subclass
  var tmp = new QAbstractProxyModelmimeDataProc
  tmp[] = slot
  GC_ref(tmp)
  fcQAbstractProxyModel_override_virtual_mimeData(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QAbstractProxyModel_mimeData(self: ptr cQAbstractProxyModel, slot: int, indexes: struct_miqt_array): pointer {.exportc: "miqt_exec_callback_QAbstractProxyModel_mimeData ".} =
  var nimfunc = cast[ptr QAbstractProxyModelmimeDataProc](cast[pointer](slot))
  var vindexes_ma = indexes
  var vindexesx_ret = newSeq[gen_qabstractitemmodel_types.QModelIndex](int(vindexes_ma.len))
  let vindexes_outCast = cast[ptr UncheckedArray[pointer]](vindexes_ma.data)
  for i in 0 ..< vindexes_ma.len:
    vindexesx_ret[i] = gen_qabstractitemmodel_types.QModelIndex(h: vindexes_outCast[i])
  let slotval1 = vindexesx_ret


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn.h
proc QAbstractProxyModelcanDropMimeData*(self: gen_qabstractproxymodel_types.QAbstractProxyModel, data: gen_qmimedata_types.QMimeData, action: cint, row: cint, column: cint, parent: gen_qabstractitemmodel_types.QModelIndex): bool =
  fQAbstractProxyModel_virtualbase_canDropMimeData(self.h, data.h, cint(action), row, column, parent.h)

type QAbstractProxyModelcanDropMimeDataProc* = proc(data: gen_qmimedata_types.QMimeData, action: cint, row: cint, column: cint, parent: gen_qabstractitemmodel_types.QModelIndex): bool
proc oncanDropMimeData*(self: gen_qabstractproxymodel_types.QAbstractProxyModel, slot: QAbstractProxyModelcanDropMimeDataProc) =
  # TODO check subclass
  var tmp = new QAbstractProxyModelcanDropMimeDataProc
  tmp[] = slot
  GC_ref(tmp)
  fcQAbstractProxyModel_override_virtual_canDropMimeData(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QAbstractProxyModel_canDropMimeData(self: ptr cQAbstractProxyModel, slot: int, data: pointer, action: cint, row: cint, column: cint, parent: pointer): bool {.exportc: "miqt_exec_callback_QAbstractProxyModel_canDropMimeData ".} =
  var nimfunc = cast[ptr QAbstractProxyModelcanDropMimeDataProc](cast[pointer](slot))
  let slotval1 = gen_qmimedata_types.QMimeData(h: data)

  let slotval2 = cint(action)

  let slotval3 = row

  let slotval4 = column

  let slotval5 = gen_qabstractitemmodel_types.QModelIndex(h: parent)


  let virtualReturn = nimfunc[](slotval1, slotval2, slotval3, slotval4, slotval5 )

  virtualReturn
proc QAbstractProxyModeldropMimeData*(self: gen_qabstractproxymodel_types.QAbstractProxyModel, data: gen_qmimedata_types.QMimeData, action: cint, row: cint, column: cint, parent: gen_qabstractitemmodel_types.QModelIndex): bool =
  fQAbstractProxyModel_virtualbase_dropMimeData(self.h, data.h, cint(action), row, column, parent.h)

type QAbstractProxyModeldropMimeDataProc* = proc(data: gen_qmimedata_types.QMimeData, action: cint, row: cint, column: cint, parent: gen_qabstractitemmodel_types.QModelIndex): bool
proc ondropMimeData*(self: gen_qabstractproxymodel_types.QAbstractProxyModel, slot: QAbstractProxyModeldropMimeDataProc) =
  # TODO check subclass
  var tmp = new QAbstractProxyModeldropMimeDataProc
  tmp[] = slot
  GC_ref(tmp)
  fcQAbstractProxyModel_override_virtual_dropMimeData(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QAbstractProxyModel_dropMimeData(self: ptr cQAbstractProxyModel, slot: int, data: pointer, action: cint, row: cint, column: cint, parent: pointer): bool {.exportc: "miqt_exec_callback_QAbstractProxyModel_dropMimeData ".} =
  var nimfunc = cast[ptr QAbstractProxyModeldropMimeDataProc](cast[pointer](slot))
  let slotval1 = gen_qmimedata_types.QMimeData(h: data)

  let slotval2 = cint(action)

  let slotval3 = row

  let slotval4 = column

  let slotval5 = gen_qabstractitemmodel_types.QModelIndex(h: parent)


  let virtualReturn = nimfunc[](slotval1, slotval2, slotval3, slotval4, slotval5 )

  virtualReturn
proc QAbstractProxyModelmimeTypes*(self: gen_qabstractproxymodel_types.QAbstractProxyModel, ): seq[string] =
  var v_ma = fQAbstractProxyModel_virtualbase_mimeTypes(self.h)
  var vx_ret = newSeq[string](int(v_ma.len))
  let v_outCast = cast[ptr UncheckedArray[struct_miqt_string]](v_ma.data)
  for i in 0 ..< v_ma.len:
    let vx_lv_ms = v_outCast[i]
    let vx_lvx_ret = string.fromBytes(toOpenArrayByte(vx_lv_ms.data, 0, int(vx_lv_ms.len)-1))
    c_free(vx_lv_ms.data)
    vx_ret[i] = vx_lvx_ret
  vx_ret

type QAbstractProxyModelmimeTypesProc* = proc(): seq[string]
proc onmimeTypes*(self: gen_qabstractproxymodel_types.QAbstractProxyModel, slot: QAbstractProxyModelmimeTypesProc) =
  # TODO check subclass
  var tmp = new QAbstractProxyModelmimeTypesProc
  tmp[] = slot
  GC_ref(tmp)
  fcQAbstractProxyModel_override_virtual_mimeTypes(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QAbstractProxyModel_mimeTypes(self: ptr cQAbstractProxyModel, slot: int): struct_miqt_array {.exportc: "miqt_exec_callback_QAbstractProxyModel_mimeTypes ".} =
  var nimfunc = cast[ptr QAbstractProxyModelmimeTypesProc](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )
  var virtualReturn_CArray = newSeq[struct_miqt_string](len(virtualReturn))
  for i in 0..<len(virtualReturn):
    virtualReturn_CArray[i] = struct_miqt_string(data: virtualReturn[i], len: csize_t(len(virtualReturn[i])))


  struct_miqt_array(len: csize_t(len(virtualReturn)), data: if len(virtualReturn) == 0: nil else: addr(virtualReturn_CArray[0]))
proc QAbstractProxyModelsupportedDragActions*(self: gen_qabstractproxymodel_types.QAbstractProxyModel, ): cint =
  cint(fQAbstractProxyModel_virtualbase_supportedDragActions(self.h))

type QAbstractProxyModelsupportedDragActionsProc* = proc(): cint
proc onsupportedDragActions*(self: gen_qabstractproxymodel_types.QAbstractProxyModel, slot: QAbstractProxyModelsupportedDragActionsProc) =
  # TODO check subclass
  var tmp = new QAbstractProxyModelsupportedDragActionsProc
  tmp[] = slot
  GC_ref(tmp)
  fcQAbstractProxyModel_override_virtual_supportedDragActions(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QAbstractProxyModel_supportedDragActions(self: ptr cQAbstractProxyModel, slot: int): cint {.exportc: "miqt_exec_callback_QAbstractProxyModel_supportedDragActions ".} =
  var nimfunc = cast[ptr QAbstractProxyModelsupportedDragActionsProc](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )

  cint(virtualReturn)
proc QAbstractProxyModelsupportedDropActions*(self: gen_qabstractproxymodel_types.QAbstractProxyModel, ): cint =
  cint(fQAbstractProxyModel_virtualbase_supportedDropActions(self.h))

type QAbstractProxyModelsupportedDropActionsProc* = proc(): cint
proc onsupportedDropActions*(self: gen_qabstractproxymodel_types.QAbstractProxyModel, slot: QAbstractProxyModelsupportedDropActionsProc) =
  # TODO check subclass
  var tmp = new QAbstractProxyModelsupportedDropActionsProc
  tmp[] = slot
  GC_ref(tmp)
  fcQAbstractProxyModel_override_virtual_supportedDropActions(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QAbstractProxyModel_supportedDropActions(self: ptr cQAbstractProxyModel, slot: int): cint {.exportc: "miqt_exec_callback_QAbstractProxyModel_supportedDropActions ".} =
  var nimfunc = cast[ptr QAbstractProxyModelsupportedDropActionsProc](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )

  cint(virtualReturn)
type QAbstractProxyModelindexProc* = proc(row: cint, column: cint, parent: gen_qabstractitemmodel_types.QModelIndex): gen_qabstractitemmodel_types.QModelIndex
proc onindex*(self: gen_qabstractproxymodel_types.QAbstractProxyModel, slot: QAbstractProxyModelindexProc) =
  # TODO check subclass
  var tmp = new QAbstractProxyModelindexProc
  tmp[] = slot
  GC_ref(tmp)
  fcQAbstractProxyModel_override_virtual_index(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QAbstractProxyModel_index(self: ptr cQAbstractProxyModel, slot: int, row: cint, column: cint, parent: pointer): pointer {.exportc: "miqt_exec_callback_QAbstractProxyModel_index ".} =
  var nimfunc = cast[ptr QAbstractProxyModelindexProc](cast[pointer](slot))
  let slotval1 = row

  let slotval2 = column

  let slotval3 = gen_qabstractitemmodel_types.QModelIndex(h: parent)


  let virtualReturn = nimfunc[](slotval1, slotval2, slotval3 )

  virtualReturn.h
type QAbstractProxyModelparentProc* = proc(child: gen_qabstractitemmodel_types.QModelIndex): gen_qabstractitemmodel_types.QModelIndex
proc onparent*(self: gen_qabstractproxymodel_types.QAbstractProxyModel, slot: QAbstractProxyModelparentProc) =
  # TODO check subclass
  var tmp = new QAbstractProxyModelparentProc
  tmp[] = slot
  GC_ref(tmp)
  fcQAbstractProxyModel_override_virtual_parent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QAbstractProxyModel_parent(self: ptr cQAbstractProxyModel, slot: int, child: pointer): pointer {.exportc: "miqt_exec_callback_QAbstractProxyModel_parent ".} =
  var nimfunc = cast[ptr QAbstractProxyModelparentProc](cast[pointer](slot))
  let slotval1 = gen_qabstractitemmodel_types.QModelIndex(h: child)


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn.h
type QAbstractProxyModelrowCountProc* = proc(parent: gen_qabstractitemmodel_types.QModelIndex): cint
proc onrowCount*(self: gen_qabstractproxymodel_types.QAbstractProxyModel, slot: QAbstractProxyModelrowCountProc) =
  # TODO check subclass
  var tmp = new QAbstractProxyModelrowCountProc
  tmp[] = slot
  GC_ref(tmp)
  fcQAbstractProxyModel_override_virtual_rowCount(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QAbstractProxyModel_rowCount(self: ptr cQAbstractProxyModel, slot: int, parent: pointer): cint {.exportc: "miqt_exec_callback_QAbstractProxyModel_rowCount ".} =
  var nimfunc = cast[ptr QAbstractProxyModelrowCountProc](cast[pointer](slot))
  let slotval1 = gen_qabstractitemmodel_types.QModelIndex(h: parent)


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn
type QAbstractProxyModelcolumnCountProc* = proc(parent: gen_qabstractitemmodel_types.QModelIndex): cint
proc oncolumnCount*(self: gen_qabstractproxymodel_types.QAbstractProxyModel, slot: QAbstractProxyModelcolumnCountProc) =
  # TODO check subclass
  var tmp = new QAbstractProxyModelcolumnCountProc
  tmp[] = slot
  GC_ref(tmp)
  fcQAbstractProxyModel_override_virtual_columnCount(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QAbstractProxyModel_columnCount(self: ptr cQAbstractProxyModel, slot: int, parent: pointer): cint {.exportc: "miqt_exec_callback_QAbstractProxyModel_columnCount ".} =
  var nimfunc = cast[ptr QAbstractProxyModelcolumnCountProc](cast[pointer](slot))
  let slotval1 = gen_qabstractitemmodel_types.QModelIndex(h: parent)


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn
proc QAbstractProxyModelinsertRows*(self: gen_qabstractproxymodel_types.QAbstractProxyModel, row: cint, count: cint, parent: gen_qabstractitemmodel_types.QModelIndex): bool =
  fQAbstractProxyModel_virtualbase_insertRows(self.h, row, count, parent.h)

type QAbstractProxyModelinsertRowsProc* = proc(row: cint, count: cint, parent: gen_qabstractitemmodel_types.QModelIndex): bool
proc oninsertRows*(self: gen_qabstractproxymodel_types.QAbstractProxyModel, slot: QAbstractProxyModelinsertRowsProc) =
  # TODO check subclass
  var tmp = new QAbstractProxyModelinsertRowsProc
  tmp[] = slot
  GC_ref(tmp)
  fcQAbstractProxyModel_override_virtual_insertRows(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QAbstractProxyModel_insertRows(self: ptr cQAbstractProxyModel, slot: int, row: cint, count: cint, parent: pointer): bool {.exportc: "miqt_exec_callback_QAbstractProxyModel_insertRows ".} =
  var nimfunc = cast[ptr QAbstractProxyModelinsertRowsProc](cast[pointer](slot))
  let slotval1 = row

  let slotval2 = count

  let slotval3 = gen_qabstractitemmodel_types.QModelIndex(h: parent)


  let virtualReturn = nimfunc[](slotval1, slotval2, slotval3 )

  virtualReturn
proc QAbstractProxyModelinsertColumns*(self: gen_qabstractproxymodel_types.QAbstractProxyModel, column: cint, count: cint, parent: gen_qabstractitemmodel_types.QModelIndex): bool =
  fQAbstractProxyModel_virtualbase_insertColumns(self.h, column, count, parent.h)

type QAbstractProxyModelinsertColumnsProc* = proc(column: cint, count: cint, parent: gen_qabstractitemmodel_types.QModelIndex): bool
proc oninsertColumns*(self: gen_qabstractproxymodel_types.QAbstractProxyModel, slot: QAbstractProxyModelinsertColumnsProc) =
  # TODO check subclass
  var tmp = new QAbstractProxyModelinsertColumnsProc
  tmp[] = slot
  GC_ref(tmp)
  fcQAbstractProxyModel_override_virtual_insertColumns(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QAbstractProxyModel_insertColumns(self: ptr cQAbstractProxyModel, slot: int, column: cint, count: cint, parent: pointer): bool {.exportc: "miqt_exec_callback_QAbstractProxyModel_insertColumns ".} =
  var nimfunc = cast[ptr QAbstractProxyModelinsertColumnsProc](cast[pointer](slot))
  let slotval1 = column

  let slotval2 = count

  let slotval3 = gen_qabstractitemmodel_types.QModelIndex(h: parent)


  let virtualReturn = nimfunc[](slotval1, slotval2, slotval3 )

  virtualReturn
proc QAbstractProxyModelremoveRows*(self: gen_qabstractproxymodel_types.QAbstractProxyModel, row: cint, count: cint, parent: gen_qabstractitemmodel_types.QModelIndex): bool =
  fQAbstractProxyModel_virtualbase_removeRows(self.h, row, count, parent.h)

type QAbstractProxyModelremoveRowsProc* = proc(row: cint, count: cint, parent: gen_qabstractitemmodel_types.QModelIndex): bool
proc onremoveRows*(self: gen_qabstractproxymodel_types.QAbstractProxyModel, slot: QAbstractProxyModelremoveRowsProc) =
  # TODO check subclass
  var tmp = new QAbstractProxyModelremoveRowsProc
  tmp[] = slot
  GC_ref(tmp)
  fcQAbstractProxyModel_override_virtual_removeRows(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QAbstractProxyModel_removeRows(self: ptr cQAbstractProxyModel, slot: int, row: cint, count: cint, parent: pointer): bool {.exportc: "miqt_exec_callback_QAbstractProxyModel_removeRows ".} =
  var nimfunc = cast[ptr QAbstractProxyModelremoveRowsProc](cast[pointer](slot))
  let slotval1 = row

  let slotval2 = count

  let slotval3 = gen_qabstractitemmodel_types.QModelIndex(h: parent)


  let virtualReturn = nimfunc[](slotval1, slotval2, slotval3 )

  virtualReturn
proc QAbstractProxyModelremoveColumns*(self: gen_qabstractproxymodel_types.QAbstractProxyModel, column: cint, count: cint, parent: gen_qabstractitemmodel_types.QModelIndex): bool =
  fQAbstractProxyModel_virtualbase_removeColumns(self.h, column, count, parent.h)

type QAbstractProxyModelremoveColumnsProc* = proc(column: cint, count: cint, parent: gen_qabstractitemmodel_types.QModelIndex): bool
proc onremoveColumns*(self: gen_qabstractproxymodel_types.QAbstractProxyModel, slot: QAbstractProxyModelremoveColumnsProc) =
  # TODO check subclass
  var tmp = new QAbstractProxyModelremoveColumnsProc
  tmp[] = slot
  GC_ref(tmp)
  fcQAbstractProxyModel_override_virtual_removeColumns(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QAbstractProxyModel_removeColumns(self: ptr cQAbstractProxyModel, slot: int, column: cint, count: cint, parent: pointer): bool {.exportc: "miqt_exec_callback_QAbstractProxyModel_removeColumns ".} =
  var nimfunc = cast[ptr QAbstractProxyModelremoveColumnsProc](cast[pointer](slot))
  let slotval1 = column

  let slotval2 = count

  let slotval3 = gen_qabstractitemmodel_types.QModelIndex(h: parent)


  let virtualReturn = nimfunc[](slotval1, slotval2, slotval3 )

  virtualReturn
proc QAbstractProxyModelmoveRows*(self: gen_qabstractproxymodel_types.QAbstractProxyModel, sourceParent: gen_qabstractitemmodel_types.QModelIndex, sourceRow: cint, count: cint, destinationParent: gen_qabstractitemmodel_types.QModelIndex, destinationChild: cint): bool =
  fQAbstractProxyModel_virtualbase_moveRows(self.h, sourceParent.h, sourceRow, count, destinationParent.h, destinationChild)

type QAbstractProxyModelmoveRowsProc* = proc(sourceParent: gen_qabstractitemmodel_types.QModelIndex, sourceRow: cint, count: cint, destinationParent: gen_qabstractitemmodel_types.QModelIndex, destinationChild: cint): bool
proc onmoveRows*(self: gen_qabstractproxymodel_types.QAbstractProxyModel, slot: QAbstractProxyModelmoveRowsProc) =
  # TODO check subclass
  var tmp = new QAbstractProxyModelmoveRowsProc
  tmp[] = slot
  GC_ref(tmp)
  fcQAbstractProxyModel_override_virtual_moveRows(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QAbstractProxyModel_moveRows(self: ptr cQAbstractProxyModel, slot: int, sourceParent: pointer, sourceRow: cint, count: cint, destinationParent: pointer, destinationChild: cint): bool {.exportc: "miqt_exec_callback_QAbstractProxyModel_moveRows ".} =
  var nimfunc = cast[ptr QAbstractProxyModelmoveRowsProc](cast[pointer](slot))
  let slotval1 = gen_qabstractitemmodel_types.QModelIndex(h: sourceParent)

  let slotval2 = sourceRow

  let slotval3 = count

  let slotval4 = gen_qabstractitemmodel_types.QModelIndex(h: destinationParent)

  let slotval5 = destinationChild


  let virtualReturn = nimfunc[](slotval1, slotval2, slotval3, slotval4, slotval5 )

  virtualReturn
proc QAbstractProxyModelmoveColumns*(self: gen_qabstractproxymodel_types.QAbstractProxyModel, sourceParent: gen_qabstractitemmodel_types.QModelIndex, sourceColumn: cint, count: cint, destinationParent: gen_qabstractitemmodel_types.QModelIndex, destinationChild: cint): bool =
  fQAbstractProxyModel_virtualbase_moveColumns(self.h, sourceParent.h, sourceColumn, count, destinationParent.h, destinationChild)

type QAbstractProxyModelmoveColumnsProc* = proc(sourceParent: gen_qabstractitemmodel_types.QModelIndex, sourceColumn: cint, count: cint, destinationParent: gen_qabstractitemmodel_types.QModelIndex, destinationChild: cint): bool
proc onmoveColumns*(self: gen_qabstractproxymodel_types.QAbstractProxyModel, slot: QAbstractProxyModelmoveColumnsProc) =
  # TODO check subclass
  var tmp = new QAbstractProxyModelmoveColumnsProc
  tmp[] = slot
  GC_ref(tmp)
  fcQAbstractProxyModel_override_virtual_moveColumns(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QAbstractProxyModel_moveColumns(self: ptr cQAbstractProxyModel, slot: int, sourceParent: pointer, sourceColumn: cint, count: cint, destinationParent: pointer, destinationChild: cint): bool {.exportc: "miqt_exec_callback_QAbstractProxyModel_moveColumns ".} =
  var nimfunc = cast[ptr QAbstractProxyModelmoveColumnsProc](cast[pointer](slot))
  let slotval1 = gen_qabstractitemmodel_types.QModelIndex(h: sourceParent)

  let slotval2 = sourceColumn

  let slotval3 = count

  let slotval4 = gen_qabstractitemmodel_types.QModelIndex(h: destinationParent)

  let slotval5 = destinationChild


  let virtualReturn = nimfunc[](slotval1, slotval2, slotval3, slotval4, slotval5 )

  virtualReturn
proc QAbstractProxyModelmatch*(self: gen_qabstractproxymodel_types.QAbstractProxyModel, start: gen_qabstractitemmodel_types.QModelIndex, role: cint, value: gen_qvariant_types.QVariant, hits: cint, flags: cint): seq[gen_qabstractitemmodel_types.QModelIndex] =
  var v_ma = fQAbstractProxyModel_virtualbase_match(self.h, start.h, role, value.h, hits, cint(flags))
  var vx_ret = newSeq[gen_qabstractitemmodel_types.QModelIndex](int(v_ma.len))
  let v_outCast = cast[ptr UncheckedArray[pointer]](v_ma.data)
  for i in 0 ..< v_ma.len:
    vx_ret[i] = gen_qabstractitemmodel_types.QModelIndex(h: v_outCast[i])
  vx_ret

type QAbstractProxyModelmatchProc* = proc(start: gen_qabstractitemmodel_types.QModelIndex, role: cint, value: gen_qvariant_types.QVariant, hits: cint, flags: cint): seq[gen_qabstractitemmodel_types.QModelIndex]
proc onmatch*(self: gen_qabstractproxymodel_types.QAbstractProxyModel, slot: QAbstractProxyModelmatchProc) =
  # TODO check subclass
  var tmp = new QAbstractProxyModelmatchProc
  tmp[] = slot
  GC_ref(tmp)
  fcQAbstractProxyModel_override_virtual_match(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QAbstractProxyModel_match(self: ptr cQAbstractProxyModel, slot: int, start: pointer, role: cint, value: pointer, hits: cint, flags: cint): struct_miqt_array {.exportc: "miqt_exec_callback_QAbstractProxyModel_match ".} =
  var nimfunc = cast[ptr QAbstractProxyModelmatchProc](cast[pointer](slot))
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
proc QAbstractProxyModelroleNames*(self: gen_qabstractproxymodel_types.QAbstractProxyModel, ): Table[cint,seq[byte]] =
  var v_mm = fQAbstractProxyModel_virtualbase_roleNames(self.h)
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

type QAbstractProxyModelroleNamesProc* = proc(): Table[cint,seq[byte]]
proc onroleNames*(self: gen_qabstractproxymodel_types.QAbstractProxyModel, slot: QAbstractProxyModelroleNamesProc) =
  # TODO check subclass
  var tmp = new QAbstractProxyModelroleNamesProc
  tmp[] = slot
  GC_ref(tmp)
  fcQAbstractProxyModel_override_virtual_roleNames(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QAbstractProxyModel_roleNames(self: ptr cQAbstractProxyModel, slot: int): struct_miqt_map {.exportc: "miqt_exec_callback_QAbstractProxyModel_roleNames ".} =
  var nimfunc = cast[ptr QAbstractProxyModelroleNamesProc](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )
  var virtualReturn_Keys_CArray = newSeq[cint](len(virtualReturn))
  var virtualReturn_Values_CArray = newSeq[struct_miqt_string](len(virtualReturn))
  var virtualReturn_ctr = 0
  for virtualReturnk, virtualReturnv in virtualReturn:
    virtualReturn_Keys_CArray[virtualReturn_ctr] = virtualReturn_k
    virtualReturn_Values_CArray[virtualReturn_ctr] = struct_miqt_string(data: cast[cstring](if len(virtualReturn_v) == 0: nil else: unsafeAddr virtualReturn_v[0]), len: csize_t(len(virtualReturn_v)))
    virtualReturn_ctr += 1


  struct_miqt_map(len: csize_t(len(virtualReturn)),keys: if len(virtualReturn) == 0: nil else: addr(virtualReturn_Keys_CArray[0]), values: if len(virtualReturn) == 0: nil else: addr(virtualReturn_Values_CArray[0]),)
proc QAbstractProxyModelevent*(self: gen_qabstractproxymodel_types.QAbstractProxyModel, event: gen_qcoreevent_types.QEvent): bool =
  fQAbstractProxyModel_virtualbase_event(self.h, event.h)

type QAbstractProxyModeleventProc* = proc(event: gen_qcoreevent_types.QEvent): bool
proc onevent*(self: gen_qabstractproxymodel_types.QAbstractProxyModel, slot: QAbstractProxyModeleventProc) =
  # TODO check subclass
  var tmp = new QAbstractProxyModeleventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQAbstractProxyModel_override_virtual_event(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QAbstractProxyModel_event(self: ptr cQAbstractProxyModel, slot: int, event: pointer): bool {.exportc: "miqt_exec_callback_QAbstractProxyModel_event ".} =
  var nimfunc = cast[ptr QAbstractProxyModeleventProc](cast[pointer](slot))
  let slotval1 = gen_qcoreevent_types.QEvent(h: event)


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn
proc QAbstractProxyModeleventFilter*(self: gen_qabstractproxymodel_types.QAbstractProxyModel, watched: gen_qobject_types.QObject, event: gen_qcoreevent_types.QEvent): bool =
  fQAbstractProxyModel_virtualbase_eventFilter(self.h, watched.h, event.h)

type QAbstractProxyModeleventFilterProc* = proc(watched: gen_qobject_types.QObject, event: gen_qcoreevent_types.QEvent): bool
proc oneventFilter*(self: gen_qabstractproxymodel_types.QAbstractProxyModel, slot: QAbstractProxyModeleventFilterProc) =
  # TODO check subclass
  var tmp = new QAbstractProxyModeleventFilterProc
  tmp[] = slot
  GC_ref(tmp)
  fcQAbstractProxyModel_override_virtual_eventFilter(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QAbstractProxyModel_eventFilter(self: ptr cQAbstractProxyModel, slot: int, watched: pointer, event: pointer): bool {.exportc: "miqt_exec_callback_QAbstractProxyModel_eventFilter ".} =
  var nimfunc = cast[ptr QAbstractProxyModeleventFilterProc](cast[pointer](slot))
  let slotval1 = gen_qobject_types.QObject(h: watched)

  let slotval2 = gen_qcoreevent_types.QEvent(h: event)


  let virtualReturn = nimfunc[](slotval1, slotval2 )

  virtualReturn
proc QAbstractProxyModeltimerEvent*(self: gen_qabstractproxymodel_types.QAbstractProxyModel, event: gen_qcoreevent_types.QTimerEvent): void =
  fQAbstractProxyModel_virtualbase_timerEvent(self.h, event.h)

type QAbstractProxyModeltimerEventProc* = proc(event: gen_qcoreevent_types.QTimerEvent): void
proc ontimerEvent*(self: gen_qabstractproxymodel_types.QAbstractProxyModel, slot: QAbstractProxyModeltimerEventProc) =
  # TODO check subclass
  var tmp = new QAbstractProxyModeltimerEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQAbstractProxyModel_override_virtual_timerEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QAbstractProxyModel_timerEvent(self: ptr cQAbstractProxyModel, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QAbstractProxyModel_timerEvent ".} =
  var nimfunc = cast[ptr QAbstractProxyModeltimerEventProc](cast[pointer](slot))
  let slotval1 = gen_qcoreevent_types.QTimerEvent(h: event)


  nimfunc[](slotval1)
proc QAbstractProxyModelchildEvent*(self: gen_qabstractproxymodel_types.QAbstractProxyModel, event: gen_qcoreevent_types.QChildEvent): void =
  fQAbstractProxyModel_virtualbase_childEvent(self.h, event.h)

type QAbstractProxyModelchildEventProc* = proc(event: gen_qcoreevent_types.QChildEvent): void
proc onchildEvent*(self: gen_qabstractproxymodel_types.QAbstractProxyModel, slot: QAbstractProxyModelchildEventProc) =
  # TODO check subclass
  var tmp = new QAbstractProxyModelchildEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQAbstractProxyModel_override_virtual_childEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QAbstractProxyModel_childEvent(self: ptr cQAbstractProxyModel, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QAbstractProxyModel_childEvent ".} =
  var nimfunc = cast[ptr QAbstractProxyModelchildEventProc](cast[pointer](slot))
  let slotval1 = gen_qcoreevent_types.QChildEvent(h: event)


  nimfunc[](slotval1)
proc QAbstractProxyModelcustomEvent*(self: gen_qabstractproxymodel_types.QAbstractProxyModel, event: gen_qcoreevent_types.QEvent): void =
  fQAbstractProxyModel_virtualbase_customEvent(self.h, event.h)

type QAbstractProxyModelcustomEventProc* = proc(event: gen_qcoreevent_types.QEvent): void
proc oncustomEvent*(self: gen_qabstractproxymodel_types.QAbstractProxyModel, slot: QAbstractProxyModelcustomEventProc) =
  # TODO check subclass
  var tmp = new QAbstractProxyModelcustomEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQAbstractProxyModel_override_virtual_customEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QAbstractProxyModel_customEvent(self: ptr cQAbstractProxyModel, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QAbstractProxyModel_customEvent ".} =
  var nimfunc = cast[ptr QAbstractProxyModelcustomEventProc](cast[pointer](slot))
  let slotval1 = gen_qcoreevent_types.QEvent(h: event)


  nimfunc[](slotval1)
proc QAbstractProxyModelconnectNotify*(self: gen_qabstractproxymodel_types.QAbstractProxyModel, signal: gen_qmetaobject_types.QMetaMethod): void =
  fQAbstractProxyModel_virtualbase_connectNotify(self.h, signal.h)

type QAbstractProxyModelconnectNotifyProc* = proc(signal: gen_qmetaobject_types.QMetaMethod): void
proc onconnectNotify*(self: gen_qabstractproxymodel_types.QAbstractProxyModel, slot: QAbstractProxyModelconnectNotifyProc) =
  # TODO check subclass
  var tmp = new QAbstractProxyModelconnectNotifyProc
  tmp[] = slot
  GC_ref(tmp)
  fcQAbstractProxyModel_override_virtual_connectNotify(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QAbstractProxyModel_connectNotify(self: ptr cQAbstractProxyModel, slot: int, signal: pointer): void {.exportc: "miqt_exec_callback_QAbstractProxyModel_connectNotify ".} =
  var nimfunc = cast[ptr QAbstractProxyModelconnectNotifyProc](cast[pointer](slot))
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal)


  nimfunc[](slotval1)
proc QAbstractProxyModeldisconnectNotify*(self: gen_qabstractproxymodel_types.QAbstractProxyModel, signal: gen_qmetaobject_types.QMetaMethod): void =
  fQAbstractProxyModel_virtualbase_disconnectNotify(self.h, signal.h)

type QAbstractProxyModeldisconnectNotifyProc* = proc(signal: gen_qmetaobject_types.QMetaMethod): void
proc ondisconnectNotify*(self: gen_qabstractproxymodel_types.QAbstractProxyModel, slot: QAbstractProxyModeldisconnectNotifyProc) =
  # TODO check subclass
  var tmp = new QAbstractProxyModeldisconnectNotifyProc
  tmp[] = slot
  GC_ref(tmp)
  fcQAbstractProxyModel_override_virtual_disconnectNotify(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QAbstractProxyModel_disconnectNotify(self: ptr cQAbstractProxyModel, slot: int, signal: pointer): void {.exportc: "miqt_exec_callback_QAbstractProxyModel_disconnectNotify ".} =
  var nimfunc = cast[ptr QAbstractProxyModeldisconnectNotifyProc](cast[pointer](slot))
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal)


  nimfunc[](slotval1)
proc staticMetaObject*(_: type gen_qabstractproxymodel_types.QAbstractProxyModel): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQAbstractProxyModel_staticMetaObject())
proc delete*(self: gen_qabstractproxymodel_types.QAbstractProxyModel) =
  fcQAbstractProxyModel_delete(self.h)
