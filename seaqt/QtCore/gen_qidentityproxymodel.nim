import ./Qt6Core_libs

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

const cflags = gorge("pkg-config --cflags Qt6Core")  & " -fPIC"
{.compile("gen_qidentityproxymodel.cpp", cflags).}


import ./gen_qidentityproxymodel_types
export gen_qidentityproxymodel_types

import
  ./gen_qabstractitemmodel_types,
  ./gen_qabstractproxymodel,
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
  gen_qabstractitemmodel_types,
  gen_qabstractproxymodel,
  gen_qcoreevent_types,
  gen_qitemselectionmodel_types,
  gen_qmetaobject_types,
  gen_qmimedata_types,
  gen_qobject_types,
  gen_qobjectdefs_types,
  gen_qsize_types,
  gen_qvariant_types

type cQIdentityProxyModel*{.exportc: "QIdentityProxyModel", incompleteStruct.} = object

proc fcQIdentityProxyModel_new(): ptr cQIdentityProxyModel {.importc: "QIdentityProxyModel_new".}
proc fcQIdentityProxyModel_new2(parent: pointer): ptr cQIdentityProxyModel {.importc: "QIdentityProxyModel_new2".}
proc fcQIdentityProxyModel_metaObject(self: pointer, ): pointer {.importc: "QIdentityProxyModel_metaObject".}
proc fcQIdentityProxyModel_metacast(self: pointer, param1: cstring): pointer {.importc: "QIdentityProxyModel_metacast".}
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
proc fQIdentityProxyModel_virtualbase_columnCount(self: pointer, parent: pointer): cint{.importc: "QIdentityProxyModel_virtualbase_columnCount".}
proc fcQIdentityProxyModel_override_virtual_columnCount(self: pointer, slot: int) {.importc: "QIdentityProxyModel_override_virtual_columnCount".}
proc fQIdentityProxyModel_virtualbase_index(self: pointer, row: cint, column: cint, parent: pointer): pointer{.importc: "QIdentityProxyModel_virtualbase_index".}
proc fcQIdentityProxyModel_override_virtual_index(self: pointer, slot: int) {.importc: "QIdentityProxyModel_override_virtual_index".}
proc fQIdentityProxyModel_virtualbase_mapFromSource(self: pointer, sourceIndex: pointer): pointer{.importc: "QIdentityProxyModel_virtualbase_mapFromSource".}
proc fcQIdentityProxyModel_override_virtual_mapFromSource(self: pointer, slot: int) {.importc: "QIdentityProxyModel_override_virtual_mapFromSource".}
proc fQIdentityProxyModel_virtualbase_mapToSource(self: pointer, proxyIndex: pointer): pointer{.importc: "QIdentityProxyModel_virtualbase_mapToSource".}
proc fcQIdentityProxyModel_override_virtual_mapToSource(self: pointer, slot: int) {.importc: "QIdentityProxyModel_override_virtual_mapToSource".}
proc fQIdentityProxyModel_virtualbase_parent(self: pointer, child: pointer): pointer{.importc: "QIdentityProxyModel_virtualbase_parent".}
proc fcQIdentityProxyModel_override_virtual_parent(self: pointer, slot: int) {.importc: "QIdentityProxyModel_override_virtual_parent".}
proc fQIdentityProxyModel_virtualbase_rowCount(self: pointer, parent: pointer): cint{.importc: "QIdentityProxyModel_virtualbase_rowCount".}
proc fcQIdentityProxyModel_override_virtual_rowCount(self: pointer, slot: int) {.importc: "QIdentityProxyModel_override_virtual_rowCount".}
proc fQIdentityProxyModel_virtualbase_headerData(self: pointer, section: cint, orientation: cint, role: cint): pointer{.importc: "QIdentityProxyModel_virtualbase_headerData".}
proc fcQIdentityProxyModel_override_virtual_headerData(self: pointer, slot: int) {.importc: "QIdentityProxyModel_override_virtual_headerData".}
proc fQIdentityProxyModel_virtualbase_dropMimeData(self: pointer, data: pointer, action: cint, row: cint, column: cint, parent: pointer): bool{.importc: "QIdentityProxyModel_virtualbase_dropMimeData".}
proc fcQIdentityProxyModel_override_virtual_dropMimeData(self: pointer, slot: int) {.importc: "QIdentityProxyModel_override_virtual_dropMimeData".}
proc fQIdentityProxyModel_virtualbase_sibling(self: pointer, row: cint, column: cint, idx: pointer): pointer{.importc: "QIdentityProxyModel_virtualbase_sibling".}
proc fcQIdentityProxyModel_override_virtual_sibling(self: pointer, slot: int) {.importc: "QIdentityProxyModel_override_virtual_sibling".}
proc fQIdentityProxyModel_virtualbase_mapSelectionFromSource(self: pointer, selection: pointer): pointer{.importc: "QIdentityProxyModel_virtualbase_mapSelectionFromSource".}
proc fcQIdentityProxyModel_override_virtual_mapSelectionFromSource(self: pointer, slot: int) {.importc: "QIdentityProxyModel_override_virtual_mapSelectionFromSource".}
proc fQIdentityProxyModel_virtualbase_mapSelectionToSource(self: pointer, selection: pointer): pointer{.importc: "QIdentityProxyModel_virtualbase_mapSelectionToSource".}
proc fcQIdentityProxyModel_override_virtual_mapSelectionToSource(self: pointer, slot: int) {.importc: "QIdentityProxyModel_override_virtual_mapSelectionToSource".}
proc fQIdentityProxyModel_virtualbase_match(self: pointer, start: pointer, role: cint, value: pointer, hits: cint, flags: cint): struct_miqt_array{.importc: "QIdentityProxyModel_virtualbase_match".}
proc fcQIdentityProxyModel_override_virtual_match(self: pointer, slot: int) {.importc: "QIdentityProxyModel_override_virtual_match".}
proc fQIdentityProxyModel_virtualbase_setSourceModel(self: pointer, sourceModel: pointer): void{.importc: "QIdentityProxyModel_virtualbase_setSourceModel".}
proc fcQIdentityProxyModel_override_virtual_setSourceModel(self: pointer, slot: int) {.importc: "QIdentityProxyModel_override_virtual_setSourceModel".}
proc fQIdentityProxyModel_virtualbase_insertColumns(self: pointer, column: cint, count: cint, parent: pointer): bool{.importc: "QIdentityProxyModel_virtualbase_insertColumns".}
proc fcQIdentityProxyModel_override_virtual_insertColumns(self: pointer, slot: int) {.importc: "QIdentityProxyModel_override_virtual_insertColumns".}
proc fQIdentityProxyModel_virtualbase_insertRows(self: pointer, row: cint, count: cint, parent: pointer): bool{.importc: "QIdentityProxyModel_virtualbase_insertRows".}
proc fcQIdentityProxyModel_override_virtual_insertRows(self: pointer, slot: int) {.importc: "QIdentityProxyModel_override_virtual_insertRows".}
proc fQIdentityProxyModel_virtualbase_removeColumns(self: pointer, column: cint, count: cint, parent: pointer): bool{.importc: "QIdentityProxyModel_virtualbase_removeColumns".}
proc fcQIdentityProxyModel_override_virtual_removeColumns(self: pointer, slot: int) {.importc: "QIdentityProxyModel_override_virtual_removeColumns".}
proc fQIdentityProxyModel_virtualbase_removeRows(self: pointer, row: cint, count: cint, parent: pointer): bool{.importc: "QIdentityProxyModel_virtualbase_removeRows".}
proc fcQIdentityProxyModel_override_virtual_removeRows(self: pointer, slot: int) {.importc: "QIdentityProxyModel_override_virtual_removeRows".}
proc fQIdentityProxyModel_virtualbase_moveRows(self: pointer, sourceParent: pointer, sourceRow: cint, count: cint, destinationParent: pointer, destinationChild: cint): bool{.importc: "QIdentityProxyModel_virtualbase_moveRows".}
proc fcQIdentityProxyModel_override_virtual_moveRows(self: pointer, slot: int) {.importc: "QIdentityProxyModel_override_virtual_moveRows".}
proc fQIdentityProxyModel_virtualbase_moveColumns(self: pointer, sourceParent: pointer, sourceColumn: cint, count: cint, destinationParent: pointer, destinationChild: cint): bool{.importc: "QIdentityProxyModel_virtualbase_moveColumns".}
proc fcQIdentityProxyModel_override_virtual_moveColumns(self: pointer, slot: int) {.importc: "QIdentityProxyModel_override_virtual_moveColumns".}
proc fQIdentityProxyModel_virtualbase_submit(self: pointer, ): bool{.importc: "QIdentityProxyModel_virtualbase_submit".}
proc fcQIdentityProxyModel_override_virtual_submit(self: pointer, slot: int) {.importc: "QIdentityProxyModel_override_virtual_submit".}
proc fQIdentityProxyModel_virtualbase_revert(self: pointer, ): void{.importc: "QIdentityProxyModel_virtualbase_revert".}
proc fcQIdentityProxyModel_override_virtual_revert(self: pointer, slot: int) {.importc: "QIdentityProxyModel_override_virtual_revert".}
proc fQIdentityProxyModel_virtualbase_data(self: pointer, proxyIndex: pointer, role: cint): pointer{.importc: "QIdentityProxyModel_virtualbase_data".}
proc fcQIdentityProxyModel_override_virtual_data(self: pointer, slot: int) {.importc: "QIdentityProxyModel_override_virtual_data".}
proc fQIdentityProxyModel_virtualbase_itemData(self: pointer, index: pointer): struct_miqt_map{.importc: "QIdentityProxyModel_virtualbase_itemData".}
proc fcQIdentityProxyModel_override_virtual_itemData(self: pointer, slot: int) {.importc: "QIdentityProxyModel_override_virtual_itemData".}
proc fQIdentityProxyModel_virtualbase_flags(self: pointer, index: pointer): cint{.importc: "QIdentityProxyModel_virtualbase_flags".}
proc fcQIdentityProxyModel_override_virtual_flags(self: pointer, slot: int) {.importc: "QIdentityProxyModel_override_virtual_flags".}
proc fQIdentityProxyModel_virtualbase_setData(self: pointer, index: pointer, value: pointer, role: cint): bool{.importc: "QIdentityProxyModel_virtualbase_setData".}
proc fcQIdentityProxyModel_override_virtual_setData(self: pointer, slot: int) {.importc: "QIdentityProxyModel_override_virtual_setData".}
proc fQIdentityProxyModel_virtualbase_setItemData(self: pointer, index: pointer, roles: struct_miqt_map): bool{.importc: "QIdentityProxyModel_virtualbase_setItemData".}
proc fcQIdentityProxyModel_override_virtual_setItemData(self: pointer, slot: int) {.importc: "QIdentityProxyModel_override_virtual_setItemData".}
proc fQIdentityProxyModel_virtualbase_setHeaderData(self: pointer, section: cint, orientation: cint, value: pointer, role: cint): bool{.importc: "QIdentityProxyModel_virtualbase_setHeaderData".}
proc fcQIdentityProxyModel_override_virtual_setHeaderData(self: pointer, slot: int) {.importc: "QIdentityProxyModel_override_virtual_setHeaderData".}
proc fQIdentityProxyModel_virtualbase_clearItemData(self: pointer, index: pointer): bool{.importc: "QIdentityProxyModel_virtualbase_clearItemData".}
proc fcQIdentityProxyModel_override_virtual_clearItemData(self: pointer, slot: int) {.importc: "QIdentityProxyModel_override_virtual_clearItemData".}
proc fQIdentityProxyModel_virtualbase_buddy(self: pointer, index: pointer): pointer{.importc: "QIdentityProxyModel_virtualbase_buddy".}
proc fcQIdentityProxyModel_override_virtual_buddy(self: pointer, slot: int) {.importc: "QIdentityProxyModel_override_virtual_buddy".}
proc fQIdentityProxyModel_virtualbase_canFetchMore(self: pointer, parent: pointer): bool{.importc: "QIdentityProxyModel_virtualbase_canFetchMore".}
proc fcQIdentityProxyModel_override_virtual_canFetchMore(self: pointer, slot: int) {.importc: "QIdentityProxyModel_override_virtual_canFetchMore".}
proc fQIdentityProxyModel_virtualbase_fetchMore(self: pointer, parent: pointer): void{.importc: "QIdentityProxyModel_virtualbase_fetchMore".}
proc fcQIdentityProxyModel_override_virtual_fetchMore(self: pointer, slot: int) {.importc: "QIdentityProxyModel_override_virtual_fetchMore".}
proc fQIdentityProxyModel_virtualbase_sort(self: pointer, column: cint, order: cint): void{.importc: "QIdentityProxyModel_virtualbase_sort".}
proc fcQIdentityProxyModel_override_virtual_sort(self: pointer, slot: int) {.importc: "QIdentityProxyModel_override_virtual_sort".}
proc fQIdentityProxyModel_virtualbase_span(self: pointer, index: pointer): pointer{.importc: "QIdentityProxyModel_virtualbase_span".}
proc fcQIdentityProxyModel_override_virtual_span(self: pointer, slot: int) {.importc: "QIdentityProxyModel_override_virtual_span".}
proc fQIdentityProxyModel_virtualbase_hasChildren(self: pointer, parent: pointer): bool{.importc: "QIdentityProxyModel_virtualbase_hasChildren".}
proc fcQIdentityProxyModel_override_virtual_hasChildren(self: pointer, slot: int) {.importc: "QIdentityProxyModel_override_virtual_hasChildren".}
proc fQIdentityProxyModel_virtualbase_mimeData(self: pointer, indexes: struct_miqt_array): pointer{.importc: "QIdentityProxyModel_virtualbase_mimeData".}
proc fcQIdentityProxyModel_override_virtual_mimeData(self: pointer, slot: int) {.importc: "QIdentityProxyModel_override_virtual_mimeData".}
proc fQIdentityProxyModel_virtualbase_canDropMimeData(self: pointer, data: pointer, action: cint, row: cint, column: cint, parent: pointer): bool{.importc: "QIdentityProxyModel_virtualbase_canDropMimeData".}
proc fcQIdentityProxyModel_override_virtual_canDropMimeData(self: pointer, slot: int) {.importc: "QIdentityProxyModel_override_virtual_canDropMimeData".}
proc fQIdentityProxyModel_virtualbase_mimeTypes(self: pointer, ): struct_miqt_array{.importc: "QIdentityProxyModel_virtualbase_mimeTypes".}
proc fcQIdentityProxyModel_override_virtual_mimeTypes(self: pointer, slot: int) {.importc: "QIdentityProxyModel_override_virtual_mimeTypes".}
proc fQIdentityProxyModel_virtualbase_supportedDragActions(self: pointer, ): cint{.importc: "QIdentityProxyModel_virtualbase_supportedDragActions".}
proc fcQIdentityProxyModel_override_virtual_supportedDragActions(self: pointer, slot: int) {.importc: "QIdentityProxyModel_override_virtual_supportedDragActions".}
proc fQIdentityProxyModel_virtualbase_supportedDropActions(self: pointer, ): cint{.importc: "QIdentityProxyModel_virtualbase_supportedDropActions".}
proc fcQIdentityProxyModel_override_virtual_supportedDropActions(self: pointer, slot: int) {.importc: "QIdentityProxyModel_override_virtual_supportedDropActions".}
proc fQIdentityProxyModel_virtualbase_roleNames(self: pointer, ): struct_miqt_map{.importc: "QIdentityProxyModel_virtualbase_roleNames".}
proc fcQIdentityProxyModel_override_virtual_roleNames(self: pointer, slot: int) {.importc: "QIdentityProxyModel_override_virtual_roleNames".}
proc fQIdentityProxyModel_virtualbase_multiData(self: pointer, index: pointer, roleDataSpan: pointer): void{.importc: "QIdentityProxyModel_virtualbase_multiData".}
proc fcQIdentityProxyModel_override_virtual_multiData(self: pointer, slot: int) {.importc: "QIdentityProxyModel_override_virtual_multiData".}
proc fQIdentityProxyModel_virtualbase_resetInternalData(self: pointer, ): void{.importc: "QIdentityProxyModel_virtualbase_resetInternalData".}
proc fcQIdentityProxyModel_override_virtual_resetInternalData(self: pointer, slot: int) {.importc: "QIdentityProxyModel_override_virtual_resetInternalData".}
proc fQIdentityProxyModel_virtualbase_event(self: pointer, event: pointer): bool{.importc: "QIdentityProxyModel_virtualbase_event".}
proc fcQIdentityProxyModel_override_virtual_event(self: pointer, slot: int) {.importc: "QIdentityProxyModel_override_virtual_event".}
proc fQIdentityProxyModel_virtualbase_eventFilter(self: pointer, watched: pointer, event: pointer): bool{.importc: "QIdentityProxyModel_virtualbase_eventFilter".}
proc fcQIdentityProxyModel_override_virtual_eventFilter(self: pointer, slot: int) {.importc: "QIdentityProxyModel_override_virtual_eventFilter".}
proc fQIdentityProxyModel_virtualbase_timerEvent(self: pointer, event: pointer): void{.importc: "QIdentityProxyModel_virtualbase_timerEvent".}
proc fcQIdentityProxyModel_override_virtual_timerEvent(self: pointer, slot: int) {.importc: "QIdentityProxyModel_override_virtual_timerEvent".}
proc fQIdentityProxyModel_virtualbase_childEvent(self: pointer, event: pointer): void{.importc: "QIdentityProxyModel_virtualbase_childEvent".}
proc fcQIdentityProxyModel_override_virtual_childEvent(self: pointer, slot: int) {.importc: "QIdentityProxyModel_override_virtual_childEvent".}
proc fQIdentityProxyModel_virtualbase_customEvent(self: pointer, event: pointer): void{.importc: "QIdentityProxyModel_virtualbase_customEvent".}
proc fcQIdentityProxyModel_override_virtual_customEvent(self: pointer, slot: int) {.importc: "QIdentityProxyModel_override_virtual_customEvent".}
proc fQIdentityProxyModel_virtualbase_connectNotify(self: pointer, signal: pointer): void{.importc: "QIdentityProxyModel_virtualbase_connectNotify".}
proc fcQIdentityProxyModel_override_virtual_connectNotify(self: pointer, slot: int) {.importc: "QIdentityProxyModel_override_virtual_connectNotify".}
proc fQIdentityProxyModel_virtualbase_disconnectNotify(self: pointer, signal: pointer): void{.importc: "QIdentityProxyModel_virtualbase_disconnectNotify".}
proc fcQIdentityProxyModel_override_virtual_disconnectNotify(self: pointer, slot: int) {.importc: "QIdentityProxyModel_override_virtual_disconnectNotify".}
proc fcQIdentityProxyModel_delete(self: pointer) {.importc: "QIdentityProxyModel_delete".}


func init*(T: type gen_qidentityproxymodel_types.QIdentityProxyModel, h: ptr cQIdentityProxyModel): gen_qidentityproxymodel_types.QIdentityProxyModel =
  T(h: h)
proc create*(T: type gen_qidentityproxymodel_types.QIdentityProxyModel, ): gen_qidentityproxymodel_types.QIdentityProxyModel =
  gen_qidentityproxymodel_types.QIdentityProxyModel.init(fcQIdentityProxyModel_new())

proc create*(T: type gen_qidentityproxymodel_types.QIdentityProxyModel, parent: gen_qobject_types.QObject): gen_qidentityproxymodel_types.QIdentityProxyModel =
  gen_qidentityproxymodel_types.QIdentityProxyModel.init(fcQIdentityProxyModel_new2(parent.h))

proc metaObject*(self: gen_qidentityproxymodel_types.QIdentityProxyModel, ): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQIdentityProxyModel_metaObject(self.h))

proc metacast*(self: gen_qidentityproxymodel_types.QIdentityProxyModel, param1: cstring): pointer =
  fcQIdentityProxyModel_metacast(self.h, param1)

proc tr*(_: type gen_qidentityproxymodel_types.QIdentityProxyModel, s: cstring): string =
  let v_ms = fcQIdentityProxyModel_tr(s)
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

proc QIdentityProxyModelcolumnCount*(self: gen_qidentityproxymodel_types.QIdentityProxyModel, parent: gen_qabstractitemmodel_types.QModelIndex): cint =
  fQIdentityProxyModel_virtualbase_columnCount(self.h, parent.h)

type QIdentityProxyModelcolumnCountProc* = proc(parent: gen_qabstractitemmodel_types.QModelIndex): cint
proc oncolumnCount*(self: gen_qidentityproxymodel_types.QIdentityProxyModel, slot: QIdentityProxyModelcolumnCountProc) =
  # TODO check subclass
  var tmp = new QIdentityProxyModelcolumnCountProc
  tmp[] = slot
  GC_ref(tmp)
  fcQIdentityProxyModel_override_virtual_columnCount(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QIdentityProxyModel_columnCount(self: ptr cQIdentityProxyModel, slot: int, parent: pointer): cint {.exportc: "miqt_exec_callback_QIdentityProxyModel_columnCount ".} =
  var nimfunc = cast[ptr QIdentityProxyModelcolumnCountProc](cast[pointer](slot))
  let slotval1 = gen_qabstractitemmodel_types.QModelIndex(h: parent)


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn
proc QIdentityProxyModelindex*(self: gen_qidentityproxymodel_types.QIdentityProxyModel, row: cint, column: cint, parent: gen_qabstractitemmodel_types.QModelIndex): gen_qabstractitemmodel_types.QModelIndex =
  gen_qabstractitemmodel_types.QModelIndex(h: fQIdentityProxyModel_virtualbase_index(self.h, row, column, parent.h))

type QIdentityProxyModelindexProc* = proc(row: cint, column: cint, parent: gen_qabstractitemmodel_types.QModelIndex): gen_qabstractitemmodel_types.QModelIndex
proc onindex*(self: gen_qidentityproxymodel_types.QIdentityProxyModel, slot: QIdentityProxyModelindexProc) =
  # TODO check subclass
  var tmp = new QIdentityProxyModelindexProc
  tmp[] = slot
  GC_ref(tmp)
  fcQIdentityProxyModel_override_virtual_index(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QIdentityProxyModel_index(self: ptr cQIdentityProxyModel, slot: int, row: cint, column: cint, parent: pointer): pointer {.exportc: "miqt_exec_callback_QIdentityProxyModel_index ".} =
  var nimfunc = cast[ptr QIdentityProxyModelindexProc](cast[pointer](slot))
  let slotval1 = row

  let slotval2 = column

  let slotval3 = gen_qabstractitemmodel_types.QModelIndex(h: parent)


  let virtualReturn = nimfunc[](slotval1, slotval2, slotval3 )

  virtualReturn.h
proc QIdentityProxyModelmapFromSource*(self: gen_qidentityproxymodel_types.QIdentityProxyModel, sourceIndex: gen_qabstractitemmodel_types.QModelIndex): gen_qabstractitemmodel_types.QModelIndex =
  gen_qabstractitemmodel_types.QModelIndex(h: fQIdentityProxyModel_virtualbase_mapFromSource(self.h, sourceIndex.h))

type QIdentityProxyModelmapFromSourceProc* = proc(sourceIndex: gen_qabstractitemmodel_types.QModelIndex): gen_qabstractitemmodel_types.QModelIndex
proc onmapFromSource*(self: gen_qidentityproxymodel_types.QIdentityProxyModel, slot: QIdentityProxyModelmapFromSourceProc) =
  # TODO check subclass
  var tmp = new QIdentityProxyModelmapFromSourceProc
  tmp[] = slot
  GC_ref(tmp)
  fcQIdentityProxyModel_override_virtual_mapFromSource(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QIdentityProxyModel_mapFromSource(self: ptr cQIdentityProxyModel, slot: int, sourceIndex: pointer): pointer {.exportc: "miqt_exec_callback_QIdentityProxyModel_mapFromSource ".} =
  var nimfunc = cast[ptr QIdentityProxyModelmapFromSourceProc](cast[pointer](slot))
  let slotval1 = gen_qabstractitemmodel_types.QModelIndex(h: sourceIndex)


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn.h
proc QIdentityProxyModelmapToSource*(self: gen_qidentityproxymodel_types.QIdentityProxyModel, proxyIndex: gen_qabstractitemmodel_types.QModelIndex): gen_qabstractitemmodel_types.QModelIndex =
  gen_qabstractitemmodel_types.QModelIndex(h: fQIdentityProxyModel_virtualbase_mapToSource(self.h, proxyIndex.h))

type QIdentityProxyModelmapToSourceProc* = proc(proxyIndex: gen_qabstractitemmodel_types.QModelIndex): gen_qabstractitemmodel_types.QModelIndex
proc onmapToSource*(self: gen_qidentityproxymodel_types.QIdentityProxyModel, slot: QIdentityProxyModelmapToSourceProc) =
  # TODO check subclass
  var tmp = new QIdentityProxyModelmapToSourceProc
  tmp[] = slot
  GC_ref(tmp)
  fcQIdentityProxyModel_override_virtual_mapToSource(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QIdentityProxyModel_mapToSource(self: ptr cQIdentityProxyModel, slot: int, proxyIndex: pointer): pointer {.exportc: "miqt_exec_callback_QIdentityProxyModel_mapToSource ".} =
  var nimfunc = cast[ptr QIdentityProxyModelmapToSourceProc](cast[pointer](slot))
  let slotval1 = gen_qabstractitemmodel_types.QModelIndex(h: proxyIndex)


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn.h
proc QIdentityProxyModelparent*(self: gen_qidentityproxymodel_types.QIdentityProxyModel, child: gen_qabstractitemmodel_types.QModelIndex): gen_qabstractitemmodel_types.QModelIndex =
  gen_qabstractitemmodel_types.QModelIndex(h: fQIdentityProxyModel_virtualbase_parent(self.h, child.h))

type QIdentityProxyModelparentProc* = proc(child: gen_qabstractitemmodel_types.QModelIndex): gen_qabstractitemmodel_types.QModelIndex
proc onparent*(self: gen_qidentityproxymodel_types.QIdentityProxyModel, slot: QIdentityProxyModelparentProc) =
  # TODO check subclass
  var tmp = new QIdentityProxyModelparentProc
  tmp[] = slot
  GC_ref(tmp)
  fcQIdentityProxyModel_override_virtual_parent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QIdentityProxyModel_parent(self: ptr cQIdentityProxyModel, slot: int, child: pointer): pointer {.exportc: "miqt_exec_callback_QIdentityProxyModel_parent ".} =
  var nimfunc = cast[ptr QIdentityProxyModelparentProc](cast[pointer](slot))
  let slotval1 = gen_qabstractitemmodel_types.QModelIndex(h: child)


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn.h
proc QIdentityProxyModelrowCount*(self: gen_qidentityproxymodel_types.QIdentityProxyModel, parent: gen_qabstractitemmodel_types.QModelIndex): cint =
  fQIdentityProxyModel_virtualbase_rowCount(self.h, parent.h)

type QIdentityProxyModelrowCountProc* = proc(parent: gen_qabstractitemmodel_types.QModelIndex): cint
proc onrowCount*(self: gen_qidentityproxymodel_types.QIdentityProxyModel, slot: QIdentityProxyModelrowCountProc) =
  # TODO check subclass
  var tmp = new QIdentityProxyModelrowCountProc
  tmp[] = slot
  GC_ref(tmp)
  fcQIdentityProxyModel_override_virtual_rowCount(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QIdentityProxyModel_rowCount(self: ptr cQIdentityProxyModel, slot: int, parent: pointer): cint {.exportc: "miqt_exec_callback_QIdentityProxyModel_rowCount ".} =
  var nimfunc = cast[ptr QIdentityProxyModelrowCountProc](cast[pointer](slot))
  let slotval1 = gen_qabstractitemmodel_types.QModelIndex(h: parent)


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn
proc QIdentityProxyModelheaderData*(self: gen_qidentityproxymodel_types.QIdentityProxyModel, section: cint, orientation: cint, role: cint): gen_qvariant_types.QVariant =
  gen_qvariant_types.QVariant(h: fQIdentityProxyModel_virtualbase_headerData(self.h, section, cint(orientation), role))

type QIdentityProxyModelheaderDataProc* = proc(section: cint, orientation: cint, role: cint): gen_qvariant_types.QVariant
proc onheaderData*(self: gen_qidentityproxymodel_types.QIdentityProxyModel, slot: QIdentityProxyModelheaderDataProc) =
  # TODO check subclass
  var tmp = new QIdentityProxyModelheaderDataProc
  tmp[] = slot
  GC_ref(tmp)
  fcQIdentityProxyModel_override_virtual_headerData(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QIdentityProxyModel_headerData(self: ptr cQIdentityProxyModel, slot: int, section: cint, orientation: cint, role: cint): pointer {.exportc: "miqt_exec_callback_QIdentityProxyModel_headerData ".} =
  var nimfunc = cast[ptr QIdentityProxyModelheaderDataProc](cast[pointer](slot))
  let slotval1 = section

  let slotval2 = cint(orientation)

  let slotval3 = role


  let virtualReturn = nimfunc[](slotval1, slotval2, slotval3 )

  virtualReturn.h
proc QIdentityProxyModeldropMimeData*(self: gen_qidentityproxymodel_types.QIdentityProxyModel, data: gen_qmimedata_types.QMimeData, action: cint, row: cint, column: cint, parent: gen_qabstractitemmodel_types.QModelIndex): bool =
  fQIdentityProxyModel_virtualbase_dropMimeData(self.h, data.h, cint(action), row, column, parent.h)

type QIdentityProxyModeldropMimeDataProc* = proc(data: gen_qmimedata_types.QMimeData, action: cint, row: cint, column: cint, parent: gen_qabstractitemmodel_types.QModelIndex): bool
proc ondropMimeData*(self: gen_qidentityproxymodel_types.QIdentityProxyModel, slot: QIdentityProxyModeldropMimeDataProc) =
  # TODO check subclass
  var tmp = new QIdentityProxyModeldropMimeDataProc
  tmp[] = slot
  GC_ref(tmp)
  fcQIdentityProxyModel_override_virtual_dropMimeData(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QIdentityProxyModel_dropMimeData(self: ptr cQIdentityProxyModel, slot: int, data: pointer, action: cint, row: cint, column: cint, parent: pointer): bool {.exportc: "miqt_exec_callback_QIdentityProxyModel_dropMimeData ".} =
  var nimfunc = cast[ptr QIdentityProxyModeldropMimeDataProc](cast[pointer](slot))
  let slotval1 = gen_qmimedata_types.QMimeData(h: data)

  let slotval2 = cint(action)

  let slotval3 = row

  let slotval4 = column

  let slotval5 = gen_qabstractitemmodel_types.QModelIndex(h: parent)


  let virtualReturn = nimfunc[](slotval1, slotval2, slotval3, slotval4, slotval5 )

  virtualReturn
proc QIdentityProxyModelsibling*(self: gen_qidentityproxymodel_types.QIdentityProxyModel, row: cint, column: cint, idx: gen_qabstractitemmodel_types.QModelIndex): gen_qabstractitemmodel_types.QModelIndex =
  gen_qabstractitemmodel_types.QModelIndex(h: fQIdentityProxyModel_virtualbase_sibling(self.h, row, column, idx.h))

type QIdentityProxyModelsiblingProc* = proc(row: cint, column: cint, idx: gen_qabstractitemmodel_types.QModelIndex): gen_qabstractitemmodel_types.QModelIndex
proc onsibling*(self: gen_qidentityproxymodel_types.QIdentityProxyModel, slot: QIdentityProxyModelsiblingProc) =
  # TODO check subclass
  var tmp = new QIdentityProxyModelsiblingProc
  tmp[] = slot
  GC_ref(tmp)
  fcQIdentityProxyModel_override_virtual_sibling(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QIdentityProxyModel_sibling(self: ptr cQIdentityProxyModel, slot: int, row: cint, column: cint, idx: pointer): pointer {.exportc: "miqt_exec_callback_QIdentityProxyModel_sibling ".} =
  var nimfunc = cast[ptr QIdentityProxyModelsiblingProc](cast[pointer](slot))
  let slotval1 = row

  let slotval2 = column

  let slotval3 = gen_qabstractitemmodel_types.QModelIndex(h: idx)


  let virtualReturn = nimfunc[](slotval1, slotval2, slotval3 )

  virtualReturn.h
proc QIdentityProxyModelmapSelectionFromSource*(self: gen_qidentityproxymodel_types.QIdentityProxyModel, selection: gen_qitemselectionmodel_types.QItemSelection): gen_qitemselectionmodel_types.QItemSelection =
  gen_qitemselectionmodel_types.QItemSelection(h: fQIdentityProxyModel_virtualbase_mapSelectionFromSource(self.h, selection.h))

type QIdentityProxyModelmapSelectionFromSourceProc* = proc(selection: gen_qitemselectionmodel_types.QItemSelection): gen_qitemselectionmodel_types.QItemSelection
proc onmapSelectionFromSource*(self: gen_qidentityproxymodel_types.QIdentityProxyModel, slot: QIdentityProxyModelmapSelectionFromSourceProc) =
  # TODO check subclass
  var tmp = new QIdentityProxyModelmapSelectionFromSourceProc
  tmp[] = slot
  GC_ref(tmp)
  fcQIdentityProxyModel_override_virtual_mapSelectionFromSource(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QIdentityProxyModel_mapSelectionFromSource(self: ptr cQIdentityProxyModel, slot: int, selection: pointer): pointer {.exportc: "miqt_exec_callback_QIdentityProxyModel_mapSelectionFromSource ".} =
  var nimfunc = cast[ptr QIdentityProxyModelmapSelectionFromSourceProc](cast[pointer](slot))
  let slotval1 = gen_qitemselectionmodel_types.QItemSelection(h: selection)


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn.h
proc QIdentityProxyModelmapSelectionToSource*(self: gen_qidentityproxymodel_types.QIdentityProxyModel, selection: gen_qitemselectionmodel_types.QItemSelection): gen_qitemselectionmodel_types.QItemSelection =
  gen_qitemselectionmodel_types.QItemSelection(h: fQIdentityProxyModel_virtualbase_mapSelectionToSource(self.h, selection.h))

type QIdentityProxyModelmapSelectionToSourceProc* = proc(selection: gen_qitemselectionmodel_types.QItemSelection): gen_qitemselectionmodel_types.QItemSelection
proc onmapSelectionToSource*(self: gen_qidentityproxymodel_types.QIdentityProxyModel, slot: QIdentityProxyModelmapSelectionToSourceProc) =
  # TODO check subclass
  var tmp = new QIdentityProxyModelmapSelectionToSourceProc
  tmp[] = slot
  GC_ref(tmp)
  fcQIdentityProxyModel_override_virtual_mapSelectionToSource(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QIdentityProxyModel_mapSelectionToSource(self: ptr cQIdentityProxyModel, slot: int, selection: pointer): pointer {.exportc: "miqt_exec_callback_QIdentityProxyModel_mapSelectionToSource ".} =
  var nimfunc = cast[ptr QIdentityProxyModelmapSelectionToSourceProc](cast[pointer](slot))
  let slotval1 = gen_qitemselectionmodel_types.QItemSelection(h: selection)


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn.h
proc QIdentityProxyModelmatch*(self: gen_qidentityproxymodel_types.QIdentityProxyModel, start: gen_qabstractitemmodel_types.QModelIndex, role: cint, value: gen_qvariant_types.QVariant, hits: cint, flags: cint): seq[gen_qabstractitemmodel_types.QModelIndex] =
  var v_ma = fQIdentityProxyModel_virtualbase_match(self.h, start.h, role, value.h, hits, cint(flags))
  var vx_ret = newSeq[gen_qabstractitemmodel_types.QModelIndex](int(v_ma.len))
  let v_outCast = cast[ptr UncheckedArray[pointer]](v_ma.data)
  for i in 0 ..< v_ma.len:
    vx_ret[i] = gen_qabstractitemmodel_types.QModelIndex(h: v_outCast[i])
  vx_ret

type QIdentityProxyModelmatchProc* = proc(start: gen_qabstractitemmodel_types.QModelIndex, role: cint, value: gen_qvariant_types.QVariant, hits: cint, flags: cint): seq[gen_qabstractitemmodel_types.QModelIndex]
proc onmatch*(self: gen_qidentityproxymodel_types.QIdentityProxyModel, slot: QIdentityProxyModelmatchProc) =
  # TODO check subclass
  var tmp = new QIdentityProxyModelmatchProc
  tmp[] = slot
  GC_ref(tmp)
  fcQIdentityProxyModel_override_virtual_match(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QIdentityProxyModel_match(self: ptr cQIdentityProxyModel, slot: int, start: pointer, role: cint, value: pointer, hits: cint, flags: cint): struct_miqt_array {.exportc: "miqt_exec_callback_QIdentityProxyModel_match ".} =
  var nimfunc = cast[ptr QIdentityProxyModelmatchProc](cast[pointer](slot))
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
proc QIdentityProxyModelsetSourceModel*(self: gen_qidentityproxymodel_types.QIdentityProxyModel, sourceModel: gen_qabstractitemmodel_types.QAbstractItemModel): void =
  fQIdentityProxyModel_virtualbase_setSourceModel(self.h, sourceModel.h)

type QIdentityProxyModelsetSourceModelProc* = proc(sourceModel: gen_qabstractitemmodel_types.QAbstractItemModel): void
proc onsetSourceModel*(self: gen_qidentityproxymodel_types.QIdentityProxyModel, slot: QIdentityProxyModelsetSourceModelProc) =
  # TODO check subclass
  var tmp = new QIdentityProxyModelsetSourceModelProc
  tmp[] = slot
  GC_ref(tmp)
  fcQIdentityProxyModel_override_virtual_setSourceModel(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QIdentityProxyModel_setSourceModel(self: ptr cQIdentityProxyModel, slot: int, sourceModel: pointer): void {.exportc: "miqt_exec_callback_QIdentityProxyModel_setSourceModel ".} =
  var nimfunc = cast[ptr QIdentityProxyModelsetSourceModelProc](cast[pointer](slot))
  let slotval1 = gen_qabstractitemmodel_types.QAbstractItemModel(h: sourceModel)


  nimfunc[](slotval1)
proc QIdentityProxyModelinsertColumns*(self: gen_qidentityproxymodel_types.QIdentityProxyModel, column: cint, count: cint, parent: gen_qabstractitemmodel_types.QModelIndex): bool =
  fQIdentityProxyModel_virtualbase_insertColumns(self.h, column, count, parent.h)

type QIdentityProxyModelinsertColumnsProc* = proc(column: cint, count: cint, parent: gen_qabstractitemmodel_types.QModelIndex): bool
proc oninsertColumns*(self: gen_qidentityproxymodel_types.QIdentityProxyModel, slot: QIdentityProxyModelinsertColumnsProc) =
  # TODO check subclass
  var tmp = new QIdentityProxyModelinsertColumnsProc
  tmp[] = slot
  GC_ref(tmp)
  fcQIdentityProxyModel_override_virtual_insertColumns(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QIdentityProxyModel_insertColumns(self: ptr cQIdentityProxyModel, slot: int, column: cint, count: cint, parent: pointer): bool {.exportc: "miqt_exec_callback_QIdentityProxyModel_insertColumns ".} =
  var nimfunc = cast[ptr QIdentityProxyModelinsertColumnsProc](cast[pointer](slot))
  let slotval1 = column

  let slotval2 = count

  let slotval3 = gen_qabstractitemmodel_types.QModelIndex(h: parent)


  let virtualReturn = nimfunc[](slotval1, slotval2, slotval3 )

  virtualReturn
proc QIdentityProxyModelinsertRows*(self: gen_qidentityproxymodel_types.QIdentityProxyModel, row: cint, count: cint, parent: gen_qabstractitemmodel_types.QModelIndex): bool =
  fQIdentityProxyModel_virtualbase_insertRows(self.h, row, count, parent.h)

type QIdentityProxyModelinsertRowsProc* = proc(row: cint, count: cint, parent: gen_qabstractitemmodel_types.QModelIndex): bool
proc oninsertRows*(self: gen_qidentityproxymodel_types.QIdentityProxyModel, slot: QIdentityProxyModelinsertRowsProc) =
  # TODO check subclass
  var tmp = new QIdentityProxyModelinsertRowsProc
  tmp[] = slot
  GC_ref(tmp)
  fcQIdentityProxyModel_override_virtual_insertRows(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QIdentityProxyModel_insertRows(self: ptr cQIdentityProxyModel, slot: int, row: cint, count: cint, parent: pointer): bool {.exportc: "miqt_exec_callback_QIdentityProxyModel_insertRows ".} =
  var nimfunc = cast[ptr QIdentityProxyModelinsertRowsProc](cast[pointer](slot))
  let slotval1 = row

  let slotval2 = count

  let slotval3 = gen_qabstractitemmodel_types.QModelIndex(h: parent)


  let virtualReturn = nimfunc[](slotval1, slotval2, slotval3 )

  virtualReturn
proc QIdentityProxyModelremoveColumns*(self: gen_qidentityproxymodel_types.QIdentityProxyModel, column: cint, count: cint, parent: gen_qabstractitemmodel_types.QModelIndex): bool =
  fQIdentityProxyModel_virtualbase_removeColumns(self.h, column, count, parent.h)

type QIdentityProxyModelremoveColumnsProc* = proc(column: cint, count: cint, parent: gen_qabstractitemmodel_types.QModelIndex): bool
proc onremoveColumns*(self: gen_qidentityproxymodel_types.QIdentityProxyModel, slot: QIdentityProxyModelremoveColumnsProc) =
  # TODO check subclass
  var tmp = new QIdentityProxyModelremoveColumnsProc
  tmp[] = slot
  GC_ref(tmp)
  fcQIdentityProxyModel_override_virtual_removeColumns(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QIdentityProxyModel_removeColumns(self: ptr cQIdentityProxyModel, slot: int, column: cint, count: cint, parent: pointer): bool {.exportc: "miqt_exec_callback_QIdentityProxyModel_removeColumns ".} =
  var nimfunc = cast[ptr QIdentityProxyModelremoveColumnsProc](cast[pointer](slot))
  let slotval1 = column

  let slotval2 = count

  let slotval3 = gen_qabstractitemmodel_types.QModelIndex(h: parent)


  let virtualReturn = nimfunc[](slotval1, slotval2, slotval3 )

  virtualReturn
proc QIdentityProxyModelremoveRows*(self: gen_qidentityproxymodel_types.QIdentityProxyModel, row: cint, count: cint, parent: gen_qabstractitemmodel_types.QModelIndex): bool =
  fQIdentityProxyModel_virtualbase_removeRows(self.h, row, count, parent.h)

type QIdentityProxyModelremoveRowsProc* = proc(row: cint, count: cint, parent: gen_qabstractitemmodel_types.QModelIndex): bool
proc onremoveRows*(self: gen_qidentityproxymodel_types.QIdentityProxyModel, slot: QIdentityProxyModelremoveRowsProc) =
  # TODO check subclass
  var tmp = new QIdentityProxyModelremoveRowsProc
  tmp[] = slot
  GC_ref(tmp)
  fcQIdentityProxyModel_override_virtual_removeRows(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QIdentityProxyModel_removeRows(self: ptr cQIdentityProxyModel, slot: int, row: cint, count: cint, parent: pointer): bool {.exportc: "miqt_exec_callback_QIdentityProxyModel_removeRows ".} =
  var nimfunc = cast[ptr QIdentityProxyModelremoveRowsProc](cast[pointer](slot))
  let slotval1 = row

  let slotval2 = count

  let slotval3 = gen_qabstractitemmodel_types.QModelIndex(h: parent)


  let virtualReturn = nimfunc[](slotval1, slotval2, slotval3 )

  virtualReturn
proc QIdentityProxyModelmoveRows*(self: gen_qidentityproxymodel_types.QIdentityProxyModel, sourceParent: gen_qabstractitemmodel_types.QModelIndex, sourceRow: cint, count: cint, destinationParent: gen_qabstractitemmodel_types.QModelIndex, destinationChild: cint): bool =
  fQIdentityProxyModel_virtualbase_moveRows(self.h, sourceParent.h, sourceRow, count, destinationParent.h, destinationChild)

type QIdentityProxyModelmoveRowsProc* = proc(sourceParent: gen_qabstractitemmodel_types.QModelIndex, sourceRow: cint, count: cint, destinationParent: gen_qabstractitemmodel_types.QModelIndex, destinationChild: cint): bool
proc onmoveRows*(self: gen_qidentityproxymodel_types.QIdentityProxyModel, slot: QIdentityProxyModelmoveRowsProc) =
  # TODO check subclass
  var tmp = new QIdentityProxyModelmoveRowsProc
  tmp[] = slot
  GC_ref(tmp)
  fcQIdentityProxyModel_override_virtual_moveRows(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QIdentityProxyModel_moveRows(self: ptr cQIdentityProxyModel, slot: int, sourceParent: pointer, sourceRow: cint, count: cint, destinationParent: pointer, destinationChild: cint): bool {.exportc: "miqt_exec_callback_QIdentityProxyModel_moveRows ".} =
  var nimfunc = cast[ptr QIdentityProxyModelmoveRowsProc](cast[pointer](slot))
  let slotval1 = gen_qabstractitemmodel_types.QModelIndex(h: sourceParent)

  let slotval2 = sourceRow

  let slotval3 = count

  let slotval4 = gen_qabstractitemmodel_types.QModelIndex(h: destinationParent)

  let slotval5 = destinationChild


  let virtualReturn = nimfunc[](slotval1, slotval2, slotval3, slotval4, slotval5 )

  virtualReturn
proc QIdentityProxyModelmoveColumns*(self: gen_qidentityproxymodel_types.QIdentityProxyModel, sourceParent: gen_qabstractitemmodel_types.QModelIndex, sourceColumn: cint, count: cint, destinationParent: gen_qabstractitemmodel_types.QModelIndex, destinationChild: cint): bool =
  fQIdentityProxyModel_virtualbase_moveColumns(self.h, sourceParent.h, sourceColumn, count, destinationParent.h, destinationChild)

type QIdentityProxyModelmoveColumnsProc* = proc(sourceParent: gen_qabstractitemmodel_types.QModelIndex, sourceColumn: cint, count: cint, destinationParent: gen_qabstractitemmodel_types.QModelIndex, destinationChild: cint): bool
proc onmoveColumns*(self: gen_qidentityproxymodel_types.QIdentityProxyModel, slot: QIdentityProxyModelmoveColumnsProc) =
  # TODO check subclass
  var tmp = new QIdentityProxyModelmoveColumnsProc
  tmp[] = slot
  GC_ref(tmp)
  fcQIdentityProxyModel_override_virtual_moveColumns(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QIdentityProxyModel_moveColumns(self: ptr cQIdentityProxyModel, slot: int, sourceParent: pointer, sourceColumn: cint, count: cint, destinationParent: pointer, destinationChild: cint): bool {.exportc: "miqt_exec_callback_QIdentityProxyModel_moveColumns ".} =
  var nimfunc = cast[ptr QIdentityProxyModelmoveColumnsProc](cast[pointer](slot))
  let slotval1 = gen_qabstractitemmodel_types.QModelIndex(h: sourceParent)

  let slotval2 = sourceColumn

  let slotval3 = count

  let slotval4 = gen_qabstractitemmodel_types.QModelIndex(h: destinationParent)

  let slotval5 = destinationChild


  let virtualReturn = nimfunc[](slotval1, slotval2, slotval3, slotval4, slotval5 )

  virtualReturn
proc QIdentityProxyModelsubmit*(self: gen_qidentityproxymodel_types.QIdentityProxyModel, ): bool =
  fQIdentityProxyModel_virtualbase_submit(self.h)

type QIdentityProxyModelsubmitProc* = proc(): bool
proc onsubmit*(self: gen_qidentityproxymodel_types.QIdentityProxyModel, slot: QIdentityProxyModelsubmitProc) =
  # TODO check subclass
  var tmp = new QIdentityProxyModelsubmitProc
  tmp[] = slot
  GC_ref(tmp)
  fcQIdentityProxyModel_override_virtual_submit(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QIdentityProxyModel_submit(self: ptr cQIdentityProxyModel, slot: int): bool {.exportc: "miqt_exec_callback_QIdentityProxyModel_submit ".} =
  var nimfunc = cast[ptr QIdentityProxyModelsubmitProc](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )

  virtualReturn
proc QIdentityProxyModelrevert*(self: gen_qidentityproxymodel_types.QIdentityProxyModel, ): void =
  fQIdentityProxyModel_virtualbase_revert(self.h)

type QIdentityProxyModelrevertProc* = proc(): void
proc onrevert*(self: gen_qidentityproxymodel_types.QIdentityProxyModel, slot: QIdentityProxyModelrevertProc) =
  # TODO check subclass
  var tmp = new QIdentityProxyModelrevertProc
  tmp[] = slot
  GC_ref(tmp)
  fcQIdentityProxyModel_override_virtual_revert(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QIdentityProxyModel_revert(self: ptr cQIdentityProxyModel, slot: int): void {.exportc: "miqt_exec_callback_QIdentityProxyModel_revert ".} =
  var nimfunc = cast[ptr QIdentityProxyModelrevertProc](cast[pointer](slot))

  nimfunc[]()
proc QIdentityProxyModeldata*(self: gen_qidentityproxymodel_types.QIdentityProxyModel, proxyIndex: gen_qabstractitemmodel_types.QModelIndex, role: cint): gen_qvariant_types.QVariant =
  gen_qvariant_types.QVariant(h: fQIdentityProxyModel_virtualbase_data(self.h, proxyIndex.h, role))

type QIdentityProxyModeldataProc* = proc(proxyIndex: gen_qabstractitemmodel_types.QModelIndex, role: cint): gen_qvariant_types.QVariant
proc ondata*(self: gen_qidentityproxymodel_types.QIdentityProxyModel, slot: QIdentityProxyModeldataProc) =
  # TODO check subclass
  var tmp = new QIdentityProxyModeldataProc
  tmp[] = slot
  GC_ref(tmp)
  fcQIdentityProxyModel_override_virtual_data(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QIdentityProxyModel_data(self: ptr cQIdentityProxyModel, slot: int, proxyIndex: pointer, role: cint): pointer {.exportc: "miqt_exec_callback_QIdentityProxyModel_data ".} =
  var nimfunc = cast[ptr QIdentityProxyModeldataProc](cast[pointer](slot))
  let slotval1 = gen_qabstractitemmodel_types.QModelIndex(h: proxyIndex)

  let slotval2 = role


  let virtualReturn = nimfunc[](slotval1, slotval2 )

  virtualReturn.h
proc QIdentityProxyModelitemData*(self: gen_qidentityproxymodel_types.QIdentityProxyModel, index: gen_qabstractitemmodel_types.QModelIndex): Table[cint,gen_qvariant_types.QVariant] =
  var v_mm = fQIdentityProxyModel_virtualbase_itemData(self.h, index.h)
  var vx_ret: Table[cint, gen_qvariant_types.QVariant]
  var v_Keys = cast[ptr UncheckedArray[cint]](v_mm.keys)
  var v_Values = cast[ptr UncheckedArray[pointer]](v_mm.values)
  for i in 0..<v_mm.len:
    var v_entry_Key = v_Keys[i]

    var v_entry_Value = gen_qvariant_types.QVariant(h: v_Values[i])

    vx_ret[v_entry_Key] = v_entry_Value
  vx_ret

type QIdentityProxyModelitemDataProc* = proc(index: gen_qabstractitemmodel_types.QModelIndex): Table[cint,gen_qvariant_types.QVariant]
proc onitemData*(self: gen_qidentityproxymodel_types.QIdentityProxyModel, slot: QIdentityProxyModelitemDataProc) =
  # TODO check subclass
  var tmp = new QIdentityProxyModelitemDataProc
  tmp[] = slot
  GC_ref(tmp)
  fcQIdentityProxyModel_override_virtual_itemData(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QIdentityProxyModel_itemData(self: ptr cQIdentityProxyModel, slot: int, index: pointer): struct_miqt_map {.exportc: "miqt_exec_callback_QIdentityProxyModel_itemData ".} =
  var nimfunc = cast[ptr QIdentityProxyModelitemDataProc](cast[pointer](slot))
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
proc QIdentityProxyModelflags*(self: gen_qidentityproxymodel_types.QIdentityProxyModel, index: gen_qabstractitemmodel_types.QModelIndex): cint =
  cint(fQIdentityProxyModel_virtualbase_flags(self.h, index.h))

type QIdentityProxyModelflagsProc* = proc(index: gen_qabstractitemmodel_types.QModelIndex): cint
proc onflags*(self: gen_qidentityproxymodel_types.QIdentityProxyModel, slot: QIdentityProxyModelflagsProc) =
  # TODO check subclass
  var tmp = new QIdentityProxyModelflagsProc
  tmp[] = slot
  GC_ref(tmp)
  fcQIdentityProxyModel_override_virtual_flags(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QIdentityProxyModel_flags(self: ptr cQIdentityProxyModel, slot: int, index: pointer): cint {.exportc: "miqt_exec_callback_QIdentityProxyModel_flags ".} =
  var nimfunc = cast[ptr QIdentityProxyModelflagsProc](cast[pointer](slot))
  let slotval1 = gen_qabstractitemmodel_types.QModelIndex(h: index)


  let virtualReturn = nimfunc[](slotval1 )

  cint(virtualReturn)
proc QIdentityProxyModelsetData*(self: gen_qidentityproxymodel_types.QIdentityProxyModel, index: gen_qabstractitemmodel_types.QModelIndex, value: gen_qvariant_types.QVariant, role: cint): bool =
  fQIdentityProxyModel_virtualbase_setData(self.h, index.h, value.h, role)

type QIdentityProxyModelsetDataProc* = proc(index: gen_qabstractitemmodel_types.QModelIndex, value: gen_qvariant_types.QVariant, role: cint): bool
proc onsetData*(self: gen_qidentityproxymodel_types.QIdentityProxyModel, slot: QIdentityProxyModelsetDataProc) =
  # TODO check subclass
  var tmp = new QIdentityProxyModelsetDataProc
  tmp[] = slot
  GC_ref(tmp)
  fcQIdentityProxyModel_override_virtual_setData(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QIdentityProxyModel_setData(self: ptr cQIdentityProxyModel, slot: int, index: pointer, value: pointer, role: cint): bool {.exportc: "miqt_exec_callback_QIdentityProxyModel_setData ".} =
  var nimfunc = cast[ptr QIdentityProxyModelsetDataProc](cast[pointer](slot))
  let slotval1 = gen_qabstractitemmodel_types.QModelIndex(h: index)

  let slotval2 = gen_qvariant_types.QVariant(h: value)

  let slotval3 = role


  let virtualReturn = nimfunc[](slotval1, slotval2, slotval3 )

  virtualReturn
proc QIdentityProxyModelsetItemData*(self: gen_qidentityproxymodel_types.QIdentityProxyModel, index: gen_qabstractitemmodel_types.QModelIndex, roles: Table[cint,gen_qvariant_types.QVariant]): bool =
  var roles_Keys_CArray = newSeq[cint](len(roles))
  var roles_Values_CArray = newSeq[pointer](len(roles))
  var roles_ctr = 0
  for rolesk, rolesv in roles:
    roles_Keys_CArray[roles_ctr] = roles_k
    roles_Values_CArray[roles_ctr] = roles_v.h
    roles_ctr += 1

  fQIdentityProxyModel_virtualbase_setItemData(self.h, index.h, struct_miqt_map(len: csize_t(len(roles)),keys: if len(roles) == 0: nil else: addr(roles_Keys_CArray[0]), values: if len(roles) == 0: nil else: addr(roles_Values_CArray[0]),))

type QIdentityProxyModelsetItemDataProc* = proc(index: gen_qabstractitemmodel_types.QModelIndex, roles: Table[cint,gen_qvariant_types.QVariant]): bool
proc onsetItemData*(self: gen_qidentityproxymodel_types.QIdentityProxyModel, slot: QIdentityProxyModelsetItemDataProc) =
  # TODO check subclass
  var tmp = new QIdentityProxyModelsetItemDataProc
  tmp[] = slot
  GC_ref(tmp)
  fcQIdentityProxyModel_override_virtual_setItemData(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QIdentityProxyModel_setItemData(self: ptr cQIdentityProxyModel, slot: int, index: pointer, roles: struct_miqt_map): bool {.exportc: "miqt_exec_callback_QIdentityProxyModel_setItemData ".} =
  var nimfunc = cast[ptr QIdentityProxyModelsetItemDataProc](cast[pointer](slot))
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
proc QIdentityProxyModelsetHeaderData*(self: gen_qidentityproxymodel_types.QIdentityProxyModel, section: cint, orientation: cint, value: gen_qvariant_types.QVariant, role: cint): bool =
  fQIdentityProxyModel_virtualbase_setHeaderData(self.h, section, cint(orientation), value.h, role)

type QIdentityProxyModelsetHeaderDataProc* = proc(section: cint, orientation: cint, value: gen_qvariant_types.QVariant, role: cint): bool
proc onsetHeaderData*(self: gen_qidentityproxymodel_types.QIdentityProxyModel, slot: QIdentityProxyModelsetHeaderDataProc) =
  # TODO check subclass
  var tmp = new QIdentityProxyModelsetHeaderDataProc
  tmp[] = slot
  GC_ref(tmp)
  fcQIdentityProxyModel_override_virtual_setHeaderData(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QIdentityProxyModel_setHeaderData(self: ptr cQIdentityProxyModel, slot: int, section: cint, orientation: cint, value: pointer, role: cint): bool {.exportc: "miqt_exec_callback_QIdentityProxyModel_setHeaderData ".} =
  var nimfunc = cast[ptr QIdentityProxyModelsetHeaderDataProc](cast[pointer](slot))
  let slotval1 = section

  let slotval2 = cint(orientation)

  let slotval3 = gen_qvariant_types.QVariant(h: value)

  let slotval4 = role


  let virtualReturn = nimfunc[](slotval1, slotval2, slotval3, slotval4 )

  virtualReturn
proc QIdentityProxyModelclearItemData*(self: gen_qidentityproxymodel_types.QIdentityProxyModel, index: gen_qabstractitemmodel_types.QModelIndex): bool =
  fQIdentityProxyModel_virtualbase_clearItemData(self.h, index.h)

type QIdentityProxyModelclearItemDataProc* = proc(index: gen_qabstractitemmodel_types.QModelIndex): bool
proc onclearItemData*(self: gen_qidentityproxymodel_types.QIdentityProxyModel, slot: QIdentityProxyModelclearItemDataProc) =
  # TODO check subclass
  var tmp = new QIdentityProxyModelclearItemDataProc
  tmp[] = slot
  GC_ref(tmp)
  fcQIdentityProxyModel_override_virtual_clearItemData(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QIdentityProxyModel_clearItemData(self: ptr cQIdentityProxyModel, slot: int, index: pointer): bool {.exportc: "miqt_exec_callback_QIdentityProxyModel_clearItemData ".} =
  var nimfunc = cast[ptr QIdentityProxyModelclearItemDataProc](cast[pointer](slot))
  let slotval1 = gen_qabstractitemmodel_types.QModelIndex(h: index)


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn
proc QIdentityProxyModelbuddy*(self: gen_qidentityproxymodel_types.QIdentityProxyModel, index: gen_qabstractitemmodel_types.QModelIndex): gen_qabstractitemmodel_types.QModelIndex =
  gen_qabstractitemmodel_types.QModelIndex(h: fQIdentityProxyModel_virtualbase_buddy(self.h, index.h))

type QIdentityProxyModelbuddyProc* = proc(index: gen_qabstractitemmodel_types.QModelIndex): gen_qabstractitemmodel_types.QModelIndex
proc onbuddy*(self: gen_qidentityproxymodel_types.QIdentityProxyModel, slot: QIdentityProxyModelbuddyProc) =
  # TODO check subclass
  var tmp = new QIdentityProxyModelbuddyProc
  tmp[] = slot
  GC_ref(tmp)
  fcQIdentityProxyModel_override_virtual_buddy(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QIdentityProxyModel_buddy(self: ptr cQIdentityProxyModel, slot: int, index: pointer): pointer {.exportc: "miqt_exec_callback_QIdentityProxyModel_buddy ".} =
  var nimfunc = cast[ptr QIdentityProxyModelbuddyProc](cast[pointer](slot))
  let slotval1 = gen_qabstractitemmodel_types.QModelIndex(h: index)


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn.h
proc QIdentityProxyModelcanFetchMore*(self: gen_qidentityproxymodel_types.QIdentityProxyModel, parent: gen_qabstractitemmodel_types.QModelIndex): bool =
  fQIdentityProxyModel_virtualbase_canFetchMore(self.h, parent.h)

type QIdentityProxyModelcanFetchMoreProc* = proc(parent: gen_qabstractitemmodel_types.QModelIndex): bool
proc oncanFetchMore*(self: gen_qidentityproxymodel_types.QIdentityProxyModel, slot: QIdentityProxyModelcanFetchMoreProc) =
  # TODO check subclass
  var tmp = new QIdentityProxyModelcanFetchMoreProc
  tmp[] = slot
  GC_ref(tmp)
  fcQIdentityProxyModel_override_virtual_canFetchMore(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QIdentityProxyModel_canFetchMore(self: ptr cQIdentityProxyModel, slot: int, parent: pointer): bool {.exportc: "miqt_exec_callback_QIdentityProxyModel_canFetchMore ".} =
  var nimfunc = cast[ptr QIdentityProxyModelcanFetchMoreProc](cast[pointer](slot))
  let slotval1 = gen_qabstractitemmodel_types.QModelIndex(h: parent)


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn
proc QIdentityProxyModelfetchMore*(self: gen_qidentityproxymodel_types.QIdentityProxyModel, parent: gen_qabstractitemmodel_types.QModelIndex): void =
  fQIdentityProxyModel_virtualbase_fetchMore(self.h, parent.h)

type QIdentityProxyModelfetchMoreProc* = proc(parent: gen_qabstractitemmodel_types.QModelIndex): void
proc onfetchMore*(self: gen_qidentityproxymodel_types.QIdentityProxyModel, slot: QIdentityProxyModelfetchMoreProc) =
  # TODO check subclass
  var tmp = new QIdentityProxyModelfetchMoreProc
  tmp[] = slot
  GC_ref(tmp)
  fcQIdentityProxyModel_override_virtual_fetchMore(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QIdentityProxyModel_fetchMore(self: ptr cQIdentityProxyModel, slot: int, parent: pointer): void {.exportc: "miqt_exec_callback_QIdentityProxyModel_fetchMore ".} =
  var nimfunc = cast[ptr QIdentityProxyModelfetchMoreProc](cast[pointer](slot))
  let slotval1 = gen_qabstractitemmodel_types.QModelIndex(h: parent)


  nimfunc[](slotval1)
proc QIdentityProxyModelsort*(self: gen_qidentityproxymodel_types.QIdentityProxyModel, column: cint, order: cint): void =
  fQIdentityProxyModel_virtualbase_sort(self.h, column, cint(order))

type QIdentityProxyModelsortProc* = proc(column: cint, order: cint): void
proc onsort*(self: gen_qidentityproxymodel_types.QIdentityProxyModel, slot: QIdentityProxyModelsortProc) =
  # TODO check subclass
  var tmp = new QIdentityProxyModelsortProc
  tmp[] = slot
  GC_ref(tmp)
  fcQIdentityProxyModel_override_virtual_sort(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QIdentityProxyModel_sort(self: ptr cQIdentityProxyModel, slot: int, column: cint, order: cint): void {.exportc: "miqt_exec_callback_QIdentityProxyModel_sort ".} =
  var nimfunc = cast[ptr QIdentityProxyModelsortProc](cast[pointer](slot))
  let slotval1 = column

  let slotval2 = cint(order)


  nimfunc[](slotval1, slotval2)
proc QIdentityProxyModelspan*(self: gen_qidentityproxymodel_types.QIdentityProxyModel, index: gen_qabstractitemmodel_types.QModelIndex): gen_qsize_types.QSize =
  gen_qsize_types.QSize(h: fQIdentityProxyModel_virtualbase_span(self.h, index.h))

type QIdentityProxyModelspanProc* = proc(index: gen_qabstractitemmodel_types.QModelIndex): gen_qsize_types.QSize
proc onspan*(self: gen_qidentityproxymodel_types.QIdentityProxyModel, slot: QIdentityProxyModelspanProc) =
  # TODO check subclass
  var tmp = new QIdentityProxyModelspanProc
  tmp[] = slot
  GC_ref(tmp)
  fcQIdentityProxyModel_override_virtual_span(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QIdentityProxyModel_span(self: ptr cQIdentityProxyModel, slot: int, index: pointer): pointer {.exportc: "miqt_exec_callback_QIdentityProxyModel_span ".} =
  var nimfunc = cast[ptr QIdentityProxyModelspanProc](cast[pointer](slot))
  let slotval1 = gen_qabstractitemmodel_types.QModelIndex(h: index)


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn.h
proc QIdentityProxyModelhasChildren*(self: gen_qidentityproxymodel_types.QIdentityProxyModel, parent: gen_qabstractitemmodel_types.QModelIndex): bool =
  fQIdentityProxyModel_virtualbase_hasChildren(self.h, parent.h)

type QIdentityProxyModelhasChildrenProc* = proc(parent: gen_qabstractitemmodel_types.QModelIndex): bool
proc onhasChildren*(self: gen_qidentityproxymodel_types.QIdentityProxyModel, slot: QIdentityProxyModelhasChildrenProc) =
  # TODO check subclass
  var tmp = new QIdentityProxyModelhasChildrenProc
  tmp[] = slot
  GC_ref(tmp)
  fcQIdentityProxyModel_override_virtual_hasChildren(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QIdentityProxyModel_hasChildren(self: ptr cQIdentityProxyModel, slot: int, parent: pointer): bool {.exportc: "miqt_exec_callback_QIdentityProxyModel_hasChildren ".} =
  var nimfunc = cast[ptr QIdentityProxyModelhasChildrenProc](cast[pointer](slot))
  let slotval1 = gen_qabstractitemmodel_types.QModelIndex(h: parent)


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn
proc QIdentityProxyModelmimeData*(self: gen_qidentityproxymodel_types.QIdentityProxyModel, indexes: seq[gen_qabstractitemmodel_types.QModelIndex]): gen_qmimedata_types.QMimeData =
  var indexes_CArray = newSeq[pointer](len(indexes))
  for i in 0..<len(indexes):
    indexes_CArray[i] = indexes[i].h

  gen_qmimedata_types.QMimeData(h: fQIdentityProxyModel_virtualbase_mimeData(self.h, struct_miqt_array(len: csize_t(len(indexes)), data: if len(indexes) == 0: nil else: addr(indexes_CArray[0]))))

type QIdentityProxyModelmimeDataProc* = proc(indexes: seq[gen_qabstractitemmodel_types.QModelIndex]): gen_qmimedata_types.QMimeData
proc onmimeData*(self: gen_qidentityproxymodel_types.QIdentityProxyModel, slot: QIdentityProxyModelmimeDataProc) =
  # TODO check subclass
  var tmp = new QIdentityProxyModelmimeDataProc
  tmp[] = slot
  GC_ref(tmp)
  fcQIdentityProxyModel_override_virtual_mimeData(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QIdentityProxyModel_mimeData(self: ptr cQIdentityProxyModel, slot: int, indexes: struct_miqt_array): pointer {.exportc: "miqt_exec_callback_QIdentityProxyModel_mimeData ".} =
  var nimfunc = cast[ptr QIdentityProxyModelmimeDataProc](cast[pointer](slot))
  var vindexes_ma = indexes
  var vindexesx_ret = newSeq[gen_qabstractitemmodel_types.QModelIndex](int(vindexes_ma.len))
  let vindexes_outCast = cast[ptr UncheckedArray[pointer]](vindexes_ma.data)
  for i in 0 ..< vindexes_ma.len:
    vindexesx_ret[i] = gen_qabstractitemmodel_types.QModelIndex(h: vindexes_outCast[i])
  let slotval1 = vindexesx_ret


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn.h
proc QIdentityProxyModelcanDropMimeData*(self: gen_qidentityproxymodel_types.QIdentityProxyModel, data: gen_qmimedata_types.QMimeData, action: cint, row: cint, column: cint, parent: gen_qabstractitemmodel_types.QModelIndex): bool =
  fQIdentityProxyModel_virtualbase_canDropMimeData(self.h, data.h, cint(action), row, column, parent.h)

type QIdentityProxyModelcanDropMimeDataProc* = proc(data: gen_qmimedata_types.QMimeData, action: cint, row: cint, column: cint, parent: gen_qabstractitemmodel_types.QModelIndex): bool
proc oncanDropMimeData*(self: gen_qidentityproxymodel_types.QIdentityProxyModel, slot: QIdentityProxyModelcanDropMimeDataProc) =
  # TODO check subclass
  var tmp = new QIdentityProxyModelcanDropMimeDataProc
  tmp[] = slot
  GC_ref(tmp)
  fcQIdentityProxyModel_override_virtual_canDropMimeData(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QIdentityProxyModel_canDropMimeData(self: ptr cQIdentityProxyModel, slot: int, data: pointer, action: cint, row: cint, column: cint, parent: pointer): bool {.exportc: "miqt_exec_callback_QIdentityProxyModel_canDropMimeData ".} =
  var nimfunc = cast[ptr QIdentityProxyModelcanDropMimeDataProc](cast[pointer](slot))
  let slotval1 = gen_qmimedata_types.QMimeData(h: data)

  let slotval2 = cint(action)

  let slotval3 = row

  let slotval4 = column

  let slotval5 = gen_qabstractitemmodel_types.QModelIndex(h: parent)


  let virtualReturn = nimfunc[](slotval1, slotval2, slotval3, slotval4, slotval5 )

  virtualReturn
proc QIdentityProxyModelmimeTypes*(self: gen_qidentityproxymodel_types.QIdentityProxyModel, ): seq[string] =
  var v_ma = fQIdentityProxyModel_virtualbase_mimeTypes(self.h)
  var vx_ret = newSeq[string](int(v_ma.len))
  let v_outCast = cast[ptr UncheckedArray[struct_miqt_string]](v_ma.data)
  for i in 0 ..< v_ma.len:
    let vx_lv_ms = v_outCast[i]
    let vx_lvx_ret = string.fromBytes(toOpenArrayByte(vx_lv_ms.data, 0, int(vx_lv_ms.len)-1))
    c_free(vx_lv_ms.data)
    vx_ret[i] = vx_lvx_ret
  vx_ret

type QIdentityProxyModelmimeTypesProc* = proc(): seq[string]
proc onmimeTypes*(self: gen_qidentityproxymodel_types.QIdentityProxyModel, slot: QIdentityProxyModelmimeTypesProc) =
  # TODO check subclass
  var tmp = new QIdentityProxyModelmimeTypesProc
  tmp[] = slot
  GC_ref(tmp)
  fcQIdentityProxyModel_override_virtual_mimeTypes(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QIdentityProxyModel_mimeTypes(self: ptr cQIdentityProxyModel, slot: int): struct_miqt_array {.exportc: "miqt_exec_callback_QIdentityProxyModel_mimeTypes ".} =
  var nimfunc = cast[ptr QIdentityProxyModelmimeTypesProc](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )
  var virtualReturn_CArray = newSeq[struct_miqt_string](len(virtualReturn))
  for i in 0..<len(virtualReturn):
    virtualReturn_CArray[i] = struct_miqt_string(data: virtualReturn[i], len: csize_t(len(virtualReturn[i])))


  struct_miqt_array(len: csize_t(len(virtualReturn)), data: if len(virtualReturn) == 0: nil else: addr(virtualReturn_CArray[0]))
proc QIdentityProxyModelsupportedDragActions*(self: gen_qidentityproxymodel_types.QIdentityProxyModel, ): cint =
  cint(fQIdentityProxyModel_virtualbase_supportedDragActions(self.h))

type QIdentityProxyModelsupportedDragActionsProc* = proc(): cint
proc onsupportedDragActions*(self: gen_qidentityproxymodel_types.QIdentityProxyModel, slot: QIdentityProxyModelsupportedDragActionsProc) =
  # TODO check subclass
  var tmp = new QIdentityProxyModelsupportedDragActionsProc
  tmp[] = slot
  GC_ref(tmp)
  fcQIdentityProxyModel_override_virtual_supportedDragActions(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QIdentityProxyModel_supportedDragActions(self: ptr cQIdentityProxyModel, slot: int): cint {.exportc: "miqt_exec_callback_QIdentityProxyModel_supportedDragActions ".} =
  var nimfunc = cast[ptr QIdentityProxyModelsupportedDragActionsProc](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )

  cint(virtualReturn)
proc QIdentityProxyModelsupportedDropActions*(self: gen_qidentityproxymodel_types.QIdentityProxyModel, ): cint =
  cint(fQIdentityProxyModel_virtualbase_supportedDropActions(self.h))

type QIdentityProxyModelsupportedDropActionsProc* = proc(): cint
proc onsupportedDropActions*(self: gen_qidentityproxymodel_types.QIdentityProxyModel, slot: QIdentityProxyModelsupportedDropActionsProc) =
  # TODO check subclass
  var tmp = new QIdentityProxyModelsupportedDropActionsProc
  tmp[] = slot
  GC_ref(tmp)
  fcQIdentityProxyModel_override_virtual_supportedDropActions(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QIdentityProxyModel_supportedDropActions(self: ptr cQIdentityProxyModel, slot: int): cint {.exportc: "miqt_exec_callback_QIdentityProxyModel_supportedDropActions ".} =
  var nimfunc = cast[ptr QIdentityProxyModelsupportedDropActionsProc](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )

  cint(virtualReturn)
proc QIdentityProxyModelroleNames*(self: gen_qidentityproxymodel_types.QIdentityProxyModel, ): Table[cint,seq[byte]] =
  var v_mm = fQIdentityProxyModel_virtualbase_roleNames(self.h)
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

type QIdentityProxyModelroleNamesProc* = proc(): Table[cint,seq[byte]]
proc onroleNames*(self: gen_qidentityproxymodel_types.QIdentityProxyModel, slot: QIdentityProxyModelroleNamesProc) =
  # TODO check subclass
  var tmp = new QIdentityProxyModelroleNamesProc
  tmp[] = slot
  GC_ref(tmp)
  fcQIdentityProxyModel_override_virtual_roleNames(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QIdentityProxyModel_roleNames(self: ptr cQIdentityProxyModel, slot: int): struct_miqt_map {.exportc: "miqt_exec_callback_QIdentityProxyModel_roleNames ".} =
  var nimfunc = cast[ptr QIdentityProxyModelroleNamesProc](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )
  var virtualReturn_Keys_CArray = newSeq[cint](len(virtualReturn))
  var virtualReturn_Values_CArray = newSeq[struct_miqt_string](len(virtualReturn))
  var virtualReturn_ctr = 0
  for virtualReturnk, virtualReturnv in virtualReturn:
    virtualReturn_Keys_CArray[virtualReturn_ctr] = virtualReturn_k
    virtualReturn_Values_CArray[virtualReturn_ctr] = struct_miqt_string(data: cast[cstring](if len(virtualReturn_v) == 0: nil else: unsafeAddr virtualReturn_v[0]), len: csize_t(len(virtualReturn_v)))
    virtualReturn_ctr += 1


  struct_miqt_map(len: csize_t(len(virtualReturn)),keys: if len(virtualReturn) == 0: nil else: addr(virtualReturn_Keys_CArray[0]), values: if len(virtualReturn) == 0: nil else: addr(virtualReturn_Values_CArray[0]),)
proc QIdentityProxyModelmultiData*(self: gen_qidentityproxymodel_types.QIdentityProxyModel, index: gen_qabstractitemmodel_types.QModelIndex, roleDataSpan: gen_qabstractitemmodel_types.QModelRoleDataSpan): void =
  fQIdentityProxyModel_virtualbase_multiData(self.h, index.h, roleDataSpan.h)

type QIdentityProxyModelmultiDataProc* = proc(index: gen_qabstractitemmodel_types.QModelIndex, roleDataSpan: gen_qabstractitemmodel_types.QModelRoleDataSpan): void
proc onmultiData*(self: gen_qidentityproxymodel_types.QIdentityProxyModel, slot: QIdentityProxyModelmultiDataProc) =
  # TODO check subclass
  var tmp = new QIdentityProxyModelmultiDataProc
  tmp[] = slot
  GC_ref(tmp)
  fcQIdentityProxyModel_override_virtual_multiData(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QIdentityProxyModel_multiData(self: ptr cQIdentityProxyModel, slot: int, index: pointer, roleDataSpan: pointer): void {.exportc: "miqt_exec_callback_QIdentityProxyModel_multiData ".} =
  var nimfunc = cast[ptr QIdentityProxyModelmultiDataProc](cast[pointer](slot))
  let slotval1 = gen_qabstractitemmodel_types.QModelIndex(h: index)

  let slotval2 = gen_qabstractitemmodel_types.QModelRoleDataSpan(h: roleDataSpan)


  nimfunc[](slotval1, slotval2)
proc QIdentityProxyModelresetInternalData*(self: gen_qidentityproxymodel_types.QIdentityProxyModel, ): void =
  fQIdentityProxyModel_virtualbase_resetInternalData(self.h)

type QIdentityProxyModelresetInternalDataProc* = proc(): void
proc onresetInternalData*(self: gen_qidentityproxymodel_types.QIdentityProxyModel, slot: QIdentityProxyModelresetInternalDataProc) =
  # TODO check subclass
  var tmp = new QIdentityProxyModelresetInternalDataProc
  tmp[] = slot
  GC_ref(tmp)
  fcQIdentityProxyModel_override_virtual_resetInternalData(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QIdentityProxyModel_resetInternalData(self: ptr cQIdentityProxyModel, slot: int): void {.exportc: "miqt_exec_callback_QIdentityProxyModel_resetInternalData ".} =
  var nimfunc = cast[ptr QIdentityProxyModelresetInternalDataProc](cast[pointer](slot))

  nimfunc[]()
proc QIdentityProxyModelevent*(self: gen_qidentityproxymodel_types.QIdentityProxyModel, event: gen_qcoreevent_types.QEvent): bool =
  fQIdentityProxyModel_virtualbase_event(self.h, event.h)

type QIdentityProxyModeleventProc* = proc(event: gen_qcoreevent_types.QEvent): bool
proc onevent*(self: gen_qidentityproxymodel_types.QIdentityProxyModel, slot: QIdentityProxyModeleventProc) =
  # TODO check subclass
  var tmp = new QIdentityProxyModeleventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQIdentityProxyModel_override_virtual_event(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QIdentityProxyModel_event(self: ptr cQIdentityProxyModel, slot: int, event: pointer): bool {.exportc: "miqt_exec_callback_QIdentityProxyModel_event ".} =
  var nimfunc = cast[ptr QIdentityProxyModeleventProc](cast[pointer](slot))
  let slotval1 = gen_qcoreevent_types.QEvent(h: event)


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn
proc QIdentityProxyModeleventFilter*(self: gen_qidentityproxymodel_types.QIdentityProxyModel, watched: gen_qobject_types.QObject, event: gen_qcoreevent_types.QEvent): bool =
  fQIdentityProxyModel_virtualbase_eventFilter(self.h, watched.h, event.h)

type QIdentityProxyModeleventFilterProc* = proc(watched: gen_qobject_types.QObject, event: gen_qcoreevent_types.QEvent): bool
proc oneventFilter*(self: gen_qidentityproxymodel_types.QIdentityProxyModel, slot: QIdentityProxyModeleventFilterProc) =
  # TODO check subclass
  var tmp = new QIdentityProxyModeleventFilterProc
  tmp[] = slot
  GC_ref(tmp)
  fcQIdentityProxyModel_override_virtual_eventFilter(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QIdentityProxyModel_eventFilter(self: ptr cQIdentityProxyModel, slot: int, watched: pointer, event: pointer): bool {.exportc: "miqt_exec_callback_QIdentityProxyModel_eventFilter ".} =
  var nimfunc = cast[ptr QIdentityProxyModeleventFilterProc](cast[pointer](slot))
  let slotval1 = gen_qobject_types.QObject(h: watched)

  let slotval2 = gen_qcoreevent_types.QEvent(h: event)


  let virtualReturn = nimfunc[](slotval1, slotval2 )

  virtualReturn
proc QIdentityProxyModeltimerEvent*(self: gen_qidentityproxymodel_types.QIdentityProxyModel, event: gen_qcoreevent_types.QTimerEvent): void =
  fQIdentityProxyModel_virtualbase_timerEvent(self.h, event.h)

type QIdentityProxyModeltimerEventProc* = proc(event: gen_qcoreevent_types.QTimerEvent): void
proc ontimerEvent*(self: gen_qidentityproxymodel_types.QIdentityProxyModel, slot: QIdentityProxyModeltimerEventProc) =
  # TODO check subclass
  var tmp = new QIdentityProxyModeltimerEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQIdentityProxyModel_override_virtual_timerEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QIdentityProxyModel_timerEvent(self: ptr cQIdentityProxyModel, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QIdentityProxyModel_timerEvent ".} =
  var nimfunc = cast[ptr QIdentityProxyModeltimerEventProc](cast[pointer](slot))
  let slotval1 = gen_qcoreevent_types.QTimerEvent(h: event)


  nimfunc[](slotval1)
proc QIdentityProxyModelchildEvent*(self: gen_qidentityproxymodel_types.QIdentityProxyModel, event: gen_qcoreevent_types.QChildEvent): void =
  fQIdentityProxyModel_virtualbase_childEvent(self.h, event.h)

type QIdentityProxyModelchildEventProc* = proc(event: gen_qcoreevent_types.QChildEvent): void
proc onchildEvent*(self: gen_qidentityproxymodel_types.QIdentityProxyModel, slot: QIdentityProxyModelchildEventProc) =
  # TODO check subclass
  var tmp = new QIdentityProxyModelchildEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQIdentityProxyModel_override_virtual_childEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QIdentityProxyModel_childEvent(self: ptr cQIdentityProxyModel, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QIdentityProxyModel_childEvent ".} =
  var nimfunc = cast[ptr QIdentityProxyModelchildEventProc](cast[pointer](slot))
  let slotval1 = gen_qcoreevent_types.QChildEvent(h: event)


  nimfunc[](slotval1)
proc QIdentityProxyModelcustomEvent*(self: gen_qidentityproxymodel_types.QIdentityProxyModel, event: gen_qcoreevent_types.QEvent): void =
  fQIdentityProxyModel_virtualbase_customEvent(self.h, event.h)

type QIdentityProxyModelcustomEventProc* = proc(event: gen_qcoreevent_types.QEvent): void
proc oncustomEvent*(self: gen_qidentityproxymodel_types.QIdentityProxyModel, slot: QIdentityProxyModelcustomEventProc) =
  # TODO check subclass
  var tmp = new QIdentityProxyModelcustomEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQIdentityProxyModel_override_virtual_customEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QIdentityProxyModel_customEvent(self: ptr cQIdentityProxyModel, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QIdentityProxyModel_customEvent ".} =
  var nimfunc = cast[ptr QIdentityProxyModelcustomEventProc](cast[pointer](slot))
  let slotval1 = gen_qcoreevent_types.QEvent(h: event)


  nimfunc[](slotval1)
proc QIdentityProxyModelconnectNotify*(self: gen_qidentityproxymodel_types.QIdentityProxyModel, signal: gen_qmetaobject_types.QMetaMethod): void =
  fQIdentityProxyModel_virtualbase_connectNotify(self.h, signal.h)

type QIdentityProxyModelconnectNotifyProc* = proc(signal: gen_qmetaobject_types.QMetaMethod): void
proc onconnectNotify*(self: gen_qidentityproxymodel_types.QIdentityProxyModel, slot: QIdentityProxyModelconnectNotifyProc) =
  # TODO check subclass
  var tmp = new QIdentityProxyModelconnectNotifyProc
  tmp[] = slot
  GC_ref(tmp)
  fcQIdentityProxyModel_override_virtual_connectNotify(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QIdentityProxyModel_connectNotify(self: ptr cQIdentityProxyModel, slot: int, signal: pointer): void {.exportc: "miqt_exec_callback_QIdentityProxyModel_connectNotify ".} =
  var nimfunc = cast[ptr QIdentityProxyModelconnectNotifyProc](cast[pointer](slot))
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal)


  nimfunc[](slotval1)
proc QIdentityProxyModeldisconnectNotify*(self: gen_qidentityproxymodel_types.QIdentityProxyModel, signal: gen_qmetaobject_types.QMetaMethod): void =
  fQIdentityProxyModel_virtualbase_disconnectNotify(self.h, signal.h)

type QIdentityProxyModeldisconnectNotifyProc* = proc(signal: gen_qmetaobject_types.QMetaMethod): void
proc ondisconnectNotify*(self: gen_qidentityproxymodel_types.QIdentityProxyModel, slot: QIdentityProxyModeldisconnectNotifyProc) =
  # TODO check subclass
  var tmp = new QIdentityProxyModeldisconnectNotifyProc
  tmp[] = slot
  GC_ref(tmp)
  fcQIdentityProxyModel_override_virtual_disconnectNotify(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QIdentityProxyModel_disconnectNotify(self: ptr cQIdentityProxyModel, slot: int, signal: pointer): void {.exportc: "miqt_exec_callback_QIdentityProxyModel_disconnectNotify ".} =
  var nimfunc = cast[ptr QIdentityProxyModeldisconnectNotifyProc](cast[pointer](slot))
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal)


  nimfunc[](slotval1)
proc delete*(self: gen_qidentityproxymodel_types.QIdentityProxyModel) =
  fcQIdentityProxyModel_delete(self.h)
