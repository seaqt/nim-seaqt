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
{.compile("gen_qtransposeproxymodel.cpp", cflags).}


import ./gen_qtransposeproxymodel_types
export gen_qtransposeproxymodel_types

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

type cQTransposeProxyModel*{.exportc: "QTransposeProxyModel", incompleteStruct.} = object

proc fcQTransposeProxyModel_new(): ptr cQTransposeProxyModel {.importc: "QTransposeProxyModel_new".}
proc fcQTransposeProxyModel_new2(parent: pointer): ptr cQTransposeProxyModel {.importc: "QTransposeProxyModel_new2".}
proc fcQTransposeProxyModel_metaObject(self: pointer, ): pointer {.importc: "QTransposeProxyModel_metaObject".}
proc fcQTransposeProxyModel_metacast(self: pointer, param1: cstring): pointer {.importc: "QTransposeProxyModel_metacast".}
proc fcQTransposeProxyModel_tr(s: cstring): struct_miqt_string {.importc: "QTransposeProxyModel_tr".}
proc fcQTransposeProxyModel_trUtf8(s: cstring): struct_miqt_string {.importc: "QTransposeProxyModel_trUtf8".}
proc fcQTransposeProxyModel_setSourceModel(self: pointer, newSourceModel: pointer): void {.importc: "QTransposeProxyModel_setSourceModel".}
proc fcQTransposeProxyModel_rowCount(self: pointer, parent: pointer): cint {.importc: "QTransposeProxyModel_rowCount".}
proc fcQTransposeProxyModel_columnCount(self: pointer, parent: pointer): cint {.importc: "QTransposeProxyModel_columnCount".}
proc fcQTransposeProxyModel_headerData(self: pointer, section: cint, orientation: cint, role: cint): pointer {.importc: "QTransposeProxyModel_headerData".}
proc fcQTransposeProxyModel_setHeaderData(self: pointer, section: cint, orientation: cint, value: pointer, role: cint): bool {.importc: "QTransposeProxyModel_setHeaderData".}
proc fcQTransposeProxyModel_setItemData(self: pointer, index: pointer, roles: struct_miqt_map): bool {.importc: "QTransposeProxyModel_setItemData".}
proc fcQTransposeProxyModel_span(self: pointer, index: pointer): pointer {.importc: "QTransposeProxyModel_span".}
proc fcQTransposeProxyModel_itemData(self: pointer, index: pointer): struct_miqt_map {.importc: "QTransposeProxyModel_itemData".}
proc fcQTransposeProxyModel_mapFromSource(self: pointer, sourceIndex: pointer): pointer {.importc: "QTransposeProxyModel_mapFromSource".}
proc fcQTransposeProxyModel_mapToSource(self: pointer, proxyIndex: pointer): pointer {.importc: "QTransposeProxyModel_mapToSource".}
proc fcQTransposeProxyModel_parent(self: pointer, index: pointer): pointer {.importc: "QTransposeProxyModel_parent".}
proc fcQTransposeProxyModel_index(self: pointer, row: cint, column: cint, parent: pointer): pointer {.importc: "QTransposeProxyModel_index".}
proc fcQTransposeProxyModel_insertRows(self: pointer, row: cint, count: cint, parent: pointer): bool {.importc: "QTransposeProxyModel_insertRows".}
proc fcQTransposeProxyModel_removeRows(self: pointer, row: cint, count: cint, parent: pointer): bool {.importc: "QTransposeProxyModel_removeRows".}
proc fcQTransposeProxyModel_moveRows(self: pointer, sourceParent: pointer, sourceRow: cint, count: cint, destinationParent: pointer, destinationChild: cint): bool {.importc: "QTransposeProxyModel_moveRows".}
proc fcQTransposeProxyModel_insertColumns(self: pointer, column: cint, count: cint, parent: pointer): bool {.importc: "QTransposeProxyModel_insertColumns".}
proc fcQTransposeProxyModel_removeColumns(self: pointer, column: cint, count: cint, parent: pointer): bool {.importc: "QTransposeProxyModel_removeColumns".}
proc fcQTransposeProxyModel_moveColumns(self: pointer, sourceParent: pointer, sourceColumn: cint, count: cint, destinationParent: pointer, destinationChild: cint): bool {.importc: "QTransposeProxyModel_moveColumns".}
proc fcQTransposeProxyModel_sort(self: pointer, column: cint, order: cint): void {.importc: "QTransposeProxyModel_sort".}
proc fcQTransposeProxyModel_tr2(s: cstring, c: cstring): struct_miqt_string {.importc: "QTransposeProxyModel_tr2".}
proc fcQTransposeProxyModel_tr3(s: cstring, c: cstring, n: cint): struct_miqt_string {.importc: "QTransposeProxyModel_tr3".}
proc fcQTransposeProxyModel_trUtf82(s: cstring, c: cstring): struct_miqt_string {.importc: "QTransposeProxyModel_trUtf82".}
proc fcQTransposeProxyModel_trUtf83(s: cstring, c: cstring, n: cint): struct_miqt_string {.importc: "QTransposeProxyModel_trUtf83".}
proc fQTransposeProxyModel_virtualbase_setSourceModel(self: pointer, newSourceModel: pointer): void{.importc: "QTransposeProxyModel_virtualbase_setSourceModel".}
proc fcQTransposeProxyModel_override_virtual_setSourceModel(self: pointer, slot: int) {.importc: "QTransposeProxyModel_override_virtual_setSourceModel".}
proc fQTransposeProxyModel_virtualbase_rowCount(self: pointer, parent: pointer): cint{.importc: "QTransposeProxyModel_virtualbase_rowCount".}
proc fcQTransposeProxyModel_override_virtual_rowCount(self: pointer, slot: int) {.importc: "QTransposeProxyModel_override_virtual_rowCount".}
proc fQTransposeProxyModel_virtualbase_columnCount(self: pointer, parent: pointer): cint{.importc: "QTransposeProxyModel_virtualbase_columnCount".}
proc fcQTransposeProxyModel_override_virtual_columnCount(self: pointer, slot: int) {.importc: "QTransposeProxyModel_override_virtual_columnCount".}
proc fQTransposeProxyModel_virtualbase_headerData(self: pointer, section: cint, orientation: cint, role: cint): pointer{.importc: "QTransposeProxyModel_virtualbase_headerData".}
proc fcQTransposeProxyModel_override_virtual_headerData(self: pointer, slot: int) {.importc: "QTransposeProxyModel_override_virtual_headerData".}
proc fQTransposeProxyModel_virtualbase_setHeaderData(self: pointer, section: cint, orientation: cint, value: pointer, role: cint): bool{.importc: "QTransposeProxyModel_virtualbase_setHeaderData".}
proc fcQTransposeProxyModel_override_virtual_setHeaderData(self: pointer, slot: int) {.importc: "QTransposeProxyModel_override_virtual_setHeaderData".}
proc fQTransposeProxyModel_virtualbase_setItemData(self: pointer, index: pointer, roles: struct_miqt_map): bool{.importc: "QTransposeProxyModel_virtualbase_setItemData".}
proc fcQTransposeProxyModel_override_virtual_setItemData(self: pointer, slot: int) {.importc: "QTransposeProxyModel_override_virtual_setItemData".}
proc fQTransposeProxyModel_virtualbase_span(self: pointer, index: pointer): pointer{.importc: "QTransposeProxyModel_virtualbase_span".}
proc fcQTransposeProxyModel_override_virtual_span(self: pointer, slot: int) {.importc: "QTransposeProxyModel_override_virtual_span".}
proc fQTransposeProxyModel_virtualbase_itemData(self: pointer, index: pointer): struct_miqt_map{.importc: "QTransposeProxyModel_virtualbase_itemData".}
proc fcQTransposeProxyModel_override_virtual_itemData(self: pointer, slot: int) {.importc: "QTransposeProxyModel_override_virtual_itemData".}
proc fQTransposeProxyModel_virtualbase_mapFromSource(self: pointer, sourceIndex: pointer): pointer{.importc: "QTransposeProxyModel_virtualbase_mapFromSource".}
proc fcQTransposeProxyModel_override_virtual_mapFromSource(self: pointer, slot: int) {.importc: "QTransposeProxyModel_override_virtual_mapFromSource".}
proc fQTransposeProxyModel_virtualbase_mapToSource(self: pointer, proxyIndex: pointer): pointer{.importc: "QTransposeProxyModel_virtualbase_mapToSource".}
proc fcQTransposeProxyModel_override_virtual_mapToSource(self: pointer, slot: int) {.importc: "QTransposeProxyModel_override_virtual_mapToSource".}
proc fQTransposeProxyModel_virtualbase_parent(self: pointer, index: pointer): pointer{.importc: "QTransposeProxyModel_virtualbase_parent".}
proc fcQTransposeProxyModel_override_virtual_parent(self: pointer, slot: int) {.importc: "QTransposeProxyModel_override_virtual_parent".}
proc fQTransposeProxyModel_virtualbase_index(self: pointer, row: cint, column: cint, parent: pointer): pointer{.importc: "QTransposeProxyModel_virtualbase_index".}
proc fcQTransposeProxyModel_override_virtual_index(self: pointer, slot: int) {.importc: "QTransposeProxyModel_override_virtual_index".}
proc fQTransposeProxyModel_virtualbase_insertRows(self: pointer, row: cint, count: cint, parent: pointer): bool{.importc: "QTransposeProxyModel_virtualbase_insertRows".}
proc fcQTransposeProxyModel_override_virtual_insertRows(self: pointer, slot: int) {.importc: "QTransposeProxyModel_override_virtual_insertRows".}
proc fQTransposeProxyModel_virtualbase_removeRows(self: pointer, row: cint, count: cint, parent: pointer): bool{.importc: "QTransposeProxyModel_virtualbase_removeRows".}
proc fcQTransposeProxyModel_override_virtual_removeRows(self: pointer, slot: int) {.importc: "QTransposeProxyModel_override_virtual_removeRows".}
proc fQTransposeProxyModel_virtualbase_moveRows(self: pointer, sourceParent: pointer, sourceRow: cint, count: cint, destinationParent: pointer, destinationChild: cint): bool{.importc: "QTransposeProxyModel_virtualbase_moveRows".}
proc fcQTransposeProxyModel_override_virtual_moveRows(self: pointer, slot: int) {.importc: "QTransposeProxyModel_override_virtual_moveRows".}
proc fQTransposeProxyModel_virtualbase_insertColumns(self: pointer, column: cint, count: cint, parent: pointer): bool{.importc: "QTransposeProxyModel_virtualbase_insertColumns".}
proc fcQTransposeProxyModel_override_virtual_insertColumns(self: pointer, slot: int) {.importc: "QTransposeProxyModel_override_virtual_insertColumns".}
proc fQTransposeProxyModel_virtualbase_removeColumns(self: pointer, column: cint, count: cint, parent: pointer): bool{.importc: "QTransposeProxyModel_virtualbase_removeColumns".}
proc fcQTransposeProxyModel_override_virtual_removeColumns(self: pointer, slot: int) {.importc: "QTransposeProxyModel_override_virtual_removeColumns".}
proc fQTransposeProxyModel_virtualbase_moveColumns(self: pointer, sourceParent: pointer, sourceColumn: cint, count: cint, destinationParent: pointer, destinationChild: cint): bool{.importc: "QTransposeProxyModel_virtualbase_moveColumns".}
proc fcQTransposeProxyModel_override_virtual_moveColumns(self: pointer, slot: int) {.importc: "QTransposeProxyModel_override_virtual_moveColumns".}
proc fQTransposeProxyModel_virtualbase_sort(self: pointer, column: cint, order: cint): void{.importc: "QTransposeProxyModel_virtualbase_sort".}
proc fcQTransposeProxyModel_override_virtual_sort(self: pointer, slot: int) {.importc: "QTransposeProxyModel_override_virtual_sort".}
proc fQTransposeProxyModel_virtualbase_mapSelectionToSource(self: pointer, selection: pointer): pointer{.importc: "QTransposeProxyModel_virtualbase_mapSelectionToSource".}
proc fcQTransposeProxyModel_override_virtual_mapSelectionToSource(self: pointer, slot: int) {.importc: "QTransposeProxyModel_override_virtual_mapSelectionToSource".}
proc fQTransposeProxyModel_virtualbase_mapSelectionFromSource(self: pointer, selection: pointer): pointer{.importc: "QTransposeProxyModel_virtualbase_mapSelectionFromSource".}
proc fcQTransposeProxyModel_override_virtual_mapSelectionFromSource(self: pointer, slot: int) {.importc: "QTransposeProxyModel_override_virtual_mapSelectionFromSource".}
proc fQTransposeProxyModel_virtualbase_submit(self: pointer, ): bool{.importc: "QTransposeProxyModel_virtualbase_submit".}
proc fcQTransposeProxyModel_override_virtual_submit(self: pointer, slot: int) {.importc: "QTransposeProxyModel_override_virtual_submit".}
proc fQTransposeProxyModel_virtualbase_revert(self: pointer, ): void{.importc: "QTransposeProxyModel_virtualbase_revert".}
proc fcQTransposeProxyModel_override_virtual_revert(self: pointer, slot: int) {.importc: "QTransposeProxyModel_override_virtual_revert".}
proc fQTransposeProxyModel_virtualbase_data(self: pointer, proxyIndex: pointer, role: cint): pointer{.importc: "QTransposeProxyModel_virtualbase_data".}
proc fcQTransposeProxyModel_override_virtual_data(self: pointer, slot: int) {.importc: "QTransposeProxyModel_override_virtual_data".}
proc fQTransposeProxyModel_virtualbase_flags(self: pointer, index: pointer): cint{.importc: "QTransposeProxyModel_virtualbase_flags".}
proc fcQTransposeProxyModel_override_virtual_flags(self: pointer, slot: int) {.importc: "QTransposeProxyModel_override_virtual_flags".}
proc fQTransposeProxyModel_virtualbase_setData(self: pointer, index: pointer, value: pointer, role: cint): bool{.importc: "QTransposeProxyModel_virtualbase_setData".}
proc fcQTransposeProxyModel_override_virtual_setData(self: pointer, slot: int) {.importc: "QTransposeProxyModel_override_virtual_setData".}
proc fQTransposeProxyModel_virtualbase_buddy(self: pointer, index: pointer): pointer{.importc: "QTransposeProxyModel_virtualbase_buddy".}
proc fcQTransposeProxyModel_override_virtual_buddy(self: pointer, slot: int) {.importc: "QTransposeProxyModel_override_virtual_buddy".}
proc fQTransposeProxyModel_virtualbase_canFetchMore(self: pointer, parent: pointer): bool{.importc: "QTransposeProxyModel_virtualbase_canFetchMore".}
proc fcQTransposeProxyModel_override_virtual_canFetchMore(self: pointer, slot: int) {.importc: "QTransposeProxyModel_override_virtual_canFetchMore".}
proc fQTransposeProxyModel_virtualbase_fetchMore(self: pointer, parent: pointer): void{.importc: "QTransposeProxyModel_virtualbase_fetchMore".}
proc fcQTransposeProxyModel_override_virtual_fetchMore(self: pointer, slot: int) {.importc: "QTransposeProxyModel_override_virtual_fetchMore".}
proc fQTransposeProxyModel_virtualbase_hasChildren(self: pointer, parent: pointer): bool{.importc: "QTransposeProxyModel_virtualbase_hasChildren".}
proc fcQTransposeProxyModel_override_virtual_hasChildren(self: pointer, slot: int) {.importc: "QTransposeProxyModel_override_virtual_hasChildren".}
proc fQTransposeProxyModel_virtualbase_sibling(self: pointer, row: cint, column: cint, idx: pointer): pointer{.importc: "QTransposeProxyModel_virtualbase_sibling".}
proc fcQTransposeProxyModel_override_virtual_sibling(self: pointer, slot: int) {.importc: "QTransposeProxyModel_override_virtual_sibling".}
proc fQTransposeProxyModel_virtualbase_mimeData(self: pointer, indexes: struct_miqt_array): pointer{.importc: "QTransposeProxyModel_virtualbase_mimeData".}
proc fcQTransposeProxyModel_override_virtual_mimeData(self: pointer, slot: int) {.importc: "QTransposeProxyModel_override_virtual_mimeData".}
proc fQTransposeProxyModel_virtualbase_canDropMimeData(self: pointer, data: pointer, action: cint, row: cint, column: cint, parent: pointer): bool{.importc: "QTransposeProxyModel_virtualbase_canDropMimeData".}
proc fcQTransposeProxyModel_override_virtual_canDropMimeData(self: pointer, slot: int) {.importc: "QTransposeProxyModel_override_virtual_canDropMimeData".}
proc fQTransposeProxyModel_virtualbase_dropMimeData(self: pointer, data: pointer, action: cint, row: cint, column: cint, parent: pointer): bool{.importc: "QTransposeProxyModel_virtualbase_dropMimeData".}
proc fcQTransposeProxyModel_override_virtual_dropMimeData(self: pointer, slot: int) {.importc: "QTransposeProxyModel_override_virtual_dropMimeData".}
proc fQTransposeProxyModel_virtualbase_mimeTypes(self: pointer, ): struct_miqt_array{.importc: "QTransposeProxyModel_virtualbase_mimeTypes".}
proc fcQTransposeProxyModel_override_virtual_mimeTypes(self: pointer, slot: int) {.importc: "QTransposeProxyModel_override_virtual_mimeTypes".}
proc fQTransposeProxyModel_virtualbase_supportedDragActions(self: pointer, ): cint{.importc: "QTransposeProxyModel_virtualbase_supportedDragActions".}
proc fcQTransposeProxyModel_override_virtual_supportedDragActions(self: pointer, slot: int) {.importc: "QTransposeProxyModel_override_virtual_supportedDragActions".}
proc fQTransposeProxyModel_virtualbase_supportedDropActions(self: pointer, ): cint{.importc: "QTransposeProxyModel_virtualbase_supportedDropActions".}
proc fcQTransposeProxyModel_override_virtual_supportedDropActions(self: pointer, slot: int) {.importc: "QTransposeProxyModel_override_virtual_supportedDropActions".}
proc fQTransposeProxyModel_virtualbase_match(self: pointer, start: pointer, role: cint, value: pointer, hits: cint, flags: cint): struct_miqt_array{.importc: "QTransposeProxyModel_virtualbase_match".}
proc fcQTransposeProxyModel_override_virtual_match(self: pointer, slot: int) {.importc: "QTransposeProxyModel_override_virtual_match".}
proc fQTransposeProxyModel_virtualbase_roleNames(self: pointer, ): struct_miqt_map{.importc: "QTransposeProxyModel_virtualbase_roleNames".}
proc fcQTransposeProxyModel_override_virtual_roleNames(self: pointer, slot: int) {.importc: "QTransposeProxyModel_override_virtual_roleNames".}
proc fQTransposeProxyModel_virtualbase_event(self: pointer, event: pointer): bool{.importc: "QTransposeProxyModel_virtualbase_event".}
proc fcQTransposeProxyModel_override_virtual_event(self: pointer, slot: int) {.importc: "QTransposeProxyModel_override_virtual_event".}
proc fQTransposeProxyModel_virtualbase_eventFilter(self: pointer, watched: pointer, event: pointer): bool{.importc: "QTransposeProxyModel_virtualbase_eventFilter".}
proc fcQTransposeProxyModel_override_virtual_eventFilter(self: pointer, slot: int) {.importc: "QTransposeProxyModel_override_virtual_eventFilter".}
proc fQTransposeProxyModel_virtualbase_timerEvent(self: pointer, event: pointer): void{.importc: "QTransposeProxyModel_virtualbase_timerEvent".}
proc fcQTransposeProxyModel_override_virtual_timerEvent(self: pointer, slot: int) {.importc: "QTransposeProxyModel_override_virtual_timerEvent".}
proc fQTransposeProxyModel_virtualbase_childEvent(self: pointer, event: pointer): void{.importc: "QTransposeProxyModel_virtualbase_childEvent".}
proc fcQTransposeProxyModel_override_virtual_childEvent(self: pointer, slot: int) {.importc: "QTransposeProxyModel_override_virtual_childEvent".}
proc fQTransposeProxyModel_virtualbase_customEvent(self: pointer, event: pointer): void{.importc: "QTransposeProxyModel_virtualbase_customEvent".}
proc fcQTransposeProxyModel_override_virtual_customEvent(self: pointer, slot: int) {.importc: "QTransposeProxyModel_override_virtual_customEvent".}
proc fQTransposeProxyModel_virtualbase_connectNotify(self: pointer, signal: pointer): void{.importc: "QTransposeProxyModel_virtualbase_connectNotify".}
proc fcQTransposeProxyModel_override_virtual_connectNotify(self: pointer, slot: int) {.importc: "QTransposeProxyModel_override_virtual_connectNotify".}
proc fQTransposeProxyModel_virtualbase_disconnectNotify(self: pointer, signal: pointer): void{.importc: "QTransposeProxyModel_virtualbase_disconnectNotify".}
proc fcQTransposeProxyModel_override_virtual_disconnectNotify(self: pointer, slot: int) {.importc: "QTransposeProxyModel_override_virtual_disconnectNotify".}
proc fcQTransposeProxyModel_delete(self: pointer) {.importc: "QTransposeProxyModel_delete".}


func init*(T: type gen_qtransposeproxymodel_types.QTransposeProxyModel, h: ptr cQTransposeProxyModel): gen_qtransposeproxymodel_types.QTransposeProxyModel =
  T(h: h)
proc create*(T: type gen_qtransposeproxymodel_types.QTransposeProxyModel, ): gen_qtransposeproxymodel_types.QTransposeProxyModel =
  gen_qtransposeproxymodel_types.QTransposeProxyModel.init(fcQTransposeProxyModel_new())

proc create*(T: type gen_qtransposeproxymodel_types.QTransposeProxyModel, parent: gen_qobject_types.QObject): gen_qtransposeproxymodel_types.QTransposeProxyModel =
  gen_qtransposeproxymodel_types.QTransposeProxyModel.init(fcQTransposeProxyModel_new2(parent.h))

proc metaObject*(self: gen_qtransposeproxymodel_types.QTransposeProxyModel, ): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQTransposeProxyModel_metaObject(self.h))

proc metacast*(self: gen_qtransposeproxymodel_types.QTransposeProxyModel, param1: cstring): pointer =
  fcQTransposeProxyModel_metacast(self.h, param1)

proc tr*(_: type gen_qtransposeproxymodel_types.QTransposeProxyModel, s: cstring): string =
  let v_ms = fcQTransposeProxyModel_tr(s)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc trUtf8*(_: type gen_qtransposeproxymodel_types.QTransposeProxyModel, s: cstring): string =
  let v_ms = fcQTransposeProxyModel_trUtf8(s)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc setSourceModel*(self: gen_qtransposeproxymodel_types.QTransposeProxyModel, newSourceModel: gen_qabstractitemmodel_types.QAbstractItemModel): void =
  fcQTransposeProxyModel_setSourceModel(self.h, newSourceModel.h)

proc rowCount*(self: gen_qtransposeproxymodel_types.QTransposeProxyModel, parent: gen_qabstractitemmodel_types.QModelIndex): cint =
  fcQTransposeProxyModel_rowCount(self.h, parent.h)

proc columnCount*(self: gen_qtransposeproxymodel_types.QTransposeProxyModel, parent: gen_qabstractitemmodel_types.QModelIndex): cint =
  fcQTransposeProxyModel_columnCount(self.h, parent.h)

proc headerData*(self: gen_qtransposeproxymodel_types.QTransposeProxyModel, section: cint, orientation: cint, role: cint): gen_qvariant_types.QVariant =
  gen_qvariant_types.QVariant(h: fcQTransposeProxyModel_headerData(self.h, section, cint(orientation), role))

proc setHeaderData*(self: gen_qtransposeproxymodel_types.QTransposeProxyModel, section: cint, orientation: cint, value: gen_qvariant_types.QVariant, role: cint): bool =
  fcQTransposeProxyModel_setHeaderData(self.h, section, cint(orientation), value.h, role)

proc setItemData*(self: gen_qtransposeproxymodel_types.QTransposeProxyModel, index: gen_qabstractitemmodel_types.QModelIndex, roles: Table[cint,gen_qvariant_types.QVariant]): bool =
  var roles_Keys_CArray = newSeq[cint](len(roles))
  var roles_Values_CArray = newSeq[pointer](len(roles))
  var roles_ctr = 0
  for rolesk, rolesv in roles:
    roles_Keys_CArray[roles_ctr] = roles_k
    roles_Values_CArray[roles_ctr] = roles_v.h
    roles_ctr += 1

  fcQTransposeProxyModel_setItemData(self.h, index.h, struct_miqt_map(len: csize_t(len(roles)),keys: if len(roles) == 0: nil else: addr(roles_Keys_CArray[0]), values: if len(roles) == 0: nil else: addr(roles_Values_CArray[0]),))

proc span*(self: gen_qtransposeproxymodel_types.QTransposeProxyModel, index: gen_qabstractitemmodel_types.QModelIndex): gen_qsize_types.QSize =
  gen_qsize_types.QSize(h: fcQTransposeProxyModel_span(self.h, index.h))

proc itemData*(self: gen_qtransposeproxymodel_types.QTransposeProxyModel, index: gen_qabstractitemmodel_types.QModelIndex): Table[cint,gen_qvariant_types.QVariant] =
  var v_mm = fcQTransposeProxyModel_itemData(self.h, index.h)
  var vx_ret: Table[cint, gen_qvariant_types.QVariant]
  var v_Keys = cast[ptr UncheckedArray[cint]](v_mm.keys)
  var v_Values = cast[ptr UncheckedArray[pointer]](v_mm.values)
  for i in 0..<v_mm.len:
    var v_entry_Key = v_Keys[i]

    var v_entry_Value = gen_qvariant_types.QVariant(h: v_Values[i])

    vx_ret[v_entry_Key] = v_entry_Value
  vx_ret

proc mapFromSource*(self: gen_qtransposeproxymodel_types.QTransposeProxyModel, sourceIndex: gen_qabstractitemmodel_types.QModelIndex): gen_qabstractitemmodel_types.QModelIndex =
  gen_qabstractitemmodel_types.QModelIndex(h: fcQTransposeProxyModel_mapFromSource(self.h, sourceIndex.h))

proc mapToSource*(self: gen_qtransposeproxymodel_types.QTransposeProxyModel, proxyIndex: gen_qabstractitemmodel_types.QModelIndex): gen_qabstractitemmodel_types.QModelIndex =
  gen_qabstractitemmodel_types.QModelIndex(h: fcQTransposeProxyModel_mapToSource(self.h, proxyIndex.h))

proc parent*(self: gen_qtransposeproxymodel_types.QTransposeProxyModel, index: gen_qabstractitemmodel_types.QModelIndex): gen_qabstractitemmodel_types.QModelIndex =
  gen_qabstractitemmodel_types.QModelIndex(h: fcQTransposeProxyModel_parent(self.h, index.h))

proc index*(self: gen_qtransposeproxymodel_types.QTransposeProxyModel, row: cint, column: cint, parent: gen_qabstractitemmodel_types.QModelIndex): gen_qabstractitemmodel_types.QModelIndex =
  gen_qabstractitemmodel_types.QModelIndex(h: fcQTransposeProxyModel_index(self.h, row, column, parent.h))

proc insertRows*(self: gen_qtransposeproxymodel_types.QTransposeProxyModel, row: cint, count: cint, parent: gen_qabstractitemmodel_types.QModelIndex): bool =
  fcQTransposeProxyModel_insertRows(self.h, row, count, parent.h)

proc removeRows*(self: gen_qtransposeproxymodel_types.QTransposeProxyModel, row: cint, count: cint, parent: gen_qabstractitemmodel_types.QModelIndex): bool =
  fcQTransposeProxyModel_removeRows(self.h, row, count, parent.h)

proc moveRows*(self: gen_qtransposeproxymodel_types.QTransposeProxyModel, sourceParent: gen_qabstractitemmodel_types.QModelIndex, sourceRow: cint, count: cint, destinationParent: gen_qabstractitemmodel_types.QModelIndex, destinationChild: cint): bool =
  fcQTransposeProxyModel_moveRows(self.h, sourceParent.h, sourceRow, count, destinationParent.h, destinationChild)

proc insertColumns*(self: gen_qtransposeproxymodel_types.QTransposeProxyModel, column: cint, count: cint, parent: gen_qabstractitemmodel_types.QModelIndex): bool =
  fcQTransposeProxyModel_insertColumns(self.h, column, count, parent.h)

proc removeColumns*(self: gen_qtransposeproxymodel_types.QTransposeProxyModel, column: cint, count: cint, parent: gen_qabstractitemmodel_types.QModelIndex): bool =
  fcQTransposeProxyModel_removeColumns(self.h, column, count, parent.h)

proc moveColumns*(self: gen_qtransposeproxymodel_types.QTransposeProxyModel, sourceParent: gen_qabstractitemmodel_types.QModelIndex, sourceColumn: cint, count: cint, destinationParent: gen_qabstractitemmodel_types.QModelIndex, destinationChild: cint): bool =
  fcQTransposeProxyModel_moveColumns(self.h, sourceParent.h, sourceColumn, count, destinationParent.h, destinationChild)

proc sort*(self: gen_qtransposeproxymodel_types.QTransposeProxyModel, column: cint, order: cint): void =
  fcQTransposeProxyModel_sort(self.h, column, cint(order))

proc tr*(_: type gen_qtransposeproxymodel_types.QTransposeProxyModel, s: cstring, c: cstring): string =
  let v_ms = fcQTransposeProxyModel_tr2(s, c)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc tr*(_: type gen_qtransposeproxymodel_types.QTransposeProxyModel, s: cstring, c: cstring, n: cint): string =
  let v_ms = fcQTransposeProxyModel_tr3(s, c, n)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc trUtf8*(_: type gen_qtransposeproxymodel_types.QTransposeProxyModel, s: cstring, c: cstring): string =
  let v_ms = fcQTransposeProxyModel_trUtf82(s, c)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc trUtf8*(_: type gen_qtransposeproxymodel_types.QTransposeProxyModel, s: cstring, c: cstring, n: cint): string =
  let v_ms = fcQTransposeProxyModel_trUtf83(s, c, n)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc QTransposeProxyModelsetSourceModel*(self: gen_qtransposeproxymodel_types.QTransposeProxyModel, newSourceModel: gen_qabstractitemmodel_types.QAbstractItemModel): void =
  fQTransposeProxyModel_virtualbase_setSourceModel(self.h, newSourceModel.h)

type QTransposeProxyModelsetSourceModelProc* = proc(newSourceModel: gen_qabstractitemmodel_types.QAbstractItemModel): void
proc onsetSourceModel*(self: gen_qtransposeproxymodel_types.QTransposeProxyModel, slot: QTransposeProxyModelsetSourceModelProc) =
  # TODO check subclass
  var tmp = new QTransposeProxyModelsetSourceModelProc
  tmp[] = slot
  GC_ref(tmp)
  fcQTransposeProxyModel_override_virtual_setSourceModel(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QTransposeProxyModel_setSourceModel(self: ptr cQTransposeProxyModel, slot: int, newSourceModel: pointer): void {.exportc: "miqt_exec_callback_QTransposeProxyModel_setSourceModel ".} =
  var nimfunc = cast[ptr QTransposeProxyModelsetSourceModelProc](cast[pointer](slot))
  let slotval1 = gen_qabstractitemmodel_types.QAbstractItemModel(h: newSourceModel)


  nimfunc[](slotval1)
proc QTransposeProxyModelrowCount*(self: gen_qtransposeproxymodel_types.QTransposeProxyModel, parent: gen_qabstractitemmodel_types.QModelIndex): cint =
  fQTransposeProxyModel_virtualbase_rowCount(self.h, parent.h)

type QTransposeProxyModelrowCountProc* = proc(parent: gen_qabstractitemmodel_types.QModelIndex): cint
proc onrowCount*(self: gen_qtransposeproxymodel_types.QTransposeProxyModel, slot: QTransposeProxyModelrowCountProc) =
  # TODO check subclass
  var tmp = new QTransposeProxyModelrowCountProc
  tmp[] = slot
  GC_ref(tmp)
  fcQTransposeProxyModel_override_virtual_rowCount(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QTransposeProxyModel_rowCount(self: ptr cQTransposeProxyModel, slot: int, parent: pointer): cint {.exportc: "miqt_exec_callback_QTransposeProxyModel_rowCount ".} =
  var nimfunc = cast[ptr QTransposeProxyModelrowCountProc](cast[pointer](slot))
  let slotval1 = gen_qabstractitemmodel_types.QModelIndex(h: parent)


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn
proc QTransposeProxyModelcolumnCount*(self: gen_qtransposeproxymodel_types.QTransposeProxyModel, parent: gen_qabstractitemmodel_types.QModelIndex): cint =
  fQTransposeProxyModel_virtualbase_columnCount(self.h, parent.h)

type QTransposeProxyModelcolumnCountProc* = proc(parent: gen_qabstractitemmodel_types.QModelIndex): cint
proc oncolumnCount*(self: gen_qtransposeproxymodel_types.QTransposeProxyModel, slot: QTransposeProxyModelcolumnCountProc) =
  # TODO check subclass
  var tmp = new QTransposeProxyModelcolumnCountProc
  tmp[] = slot
  GC_ref(tmp)
  fcQTransposeProxyModel_override_virtual_columnCount(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QTransposeProxyModel_columnCount(self: ptr cQTransposeProxyModel, slot: int, parent: pointer): cint {.exportc: "miqt_exec_callback_QTransposeProxyModel_columnCount ".} =
  var nimfunc = cast[ptr QTransposeProxyModelcolumnCountProc](cast[pointer](slot))
  let slotval1 = gen_qabstractitemmodel_types.QModelIndex(h: parent)


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn
proc QTransposeProxyModelheaderData*(self: gen_qtransposeproxymodel_types.QTransposeProxyModel, section: cint, orientation: cint, role: cint): gen_qvariant_types.QVariant =
  gen_qvariant_types.QVariant(h: fQTransposeProxyModel_virtualbase_headerData(self.h, section, cint(orientation), role))

type QTransposeProxyModelheaderDataProc* = proc(section: cint, orientation: cint, role: cint): gen_qvariant_types.QVariant
proc onheaderData*(self: gen_qtransposeproxymodel_types.QTransposeProxyModel, slot: QTransposeProxyModelheaderDataProc) =
  # TODO check subclass
  var tmp = new QTransposeProxyModelheaderDataProc
  tmp[] = slot
  GC_ref(tmp)
  fcQTransposeProxyModel_override_virtual_headerData(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QTransposeProxyModel_headerData(self: ptr cQTransposeProxyModel, slot: int, section: cint, orientation: cint, role: cint): pointer {.exportc: "miqt_exec_callback_QTransposeProxyModel_headerData ".} =
  var nimfunc = cast[ptr QTransposeProxyModelheaderDataProc](cast[pointer](slot))
  let slotval1 = section

  let slotval2 = cint(orientation)

  let slotval3 = role


  let virtualReturn = nimfunc[](slotval1, slotval2, slotval3 )

  virtualReturn.h
proc QTransposeProxyModelsetHeaderData*(self: gen_qtransposeproxymodel_types.QTransposeProxyModel, section: cint, orientation: cint, value: gen_qvariant_types.QVariant, role: cint): bool =
  fQTransposeProxyModel_virtualbase_setHeaderData(self.h, section, cint(orientation), value.h, role)

type QTransposeProxyModelsetHeaderDataProc* = proc(section: cint, orientation: cint, value: gen_qvariant_types.QVariant, role: cint): bool
proc onsetHeaderData*(self: gen_qtransposeproxymodel_types.QTransposeProxyModel, slot: QTransposeProxyModelsetHeaderDataProc) =
  # TODO check subclass
  var tmp = new QTransposeProxyModelsetHeaderDataProc
  tmp[] = slot
  GC_ref(tmp)
  fcQTransposeProxyModel_override_virtual_setHeaderData(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QTransposeProxyModel_setHeaderData(self: ptr cQTransposeProxyModel, slot: int, section: cint, orientation: cint, value: pointer, role: cint): bool {.exportc: "miqt_exec_callback_QTransposeProxyModel_setHeaderData ".} =
  var nimfunc = cast[ptr QTransposeProxyModelsetHeaderDataProc](cast[pointer](slot))
  let slotval1 = section

  let slotval2 = cint(orientation)

  let slotval3 = gen_qvariant_types.QVariant(h: value)

  let slotval4 = role


  let virtualReturn = nimfunc[](slotval1, slotval2, slotval3, slotval4 )

  virtualReturn
proc QTransposeProxyModelsetItemData*(self: gen_qtransposeproxymodel_types.QTransposeProxyModel, index: gen_qabstractitemmodel_types.QModelIndex, roles: Table[cint,gen_qvariant_types.QVariant]): bool =
  var roles_Keys_CArray = newSeq[cint](len(roles))
  var roles_Values_CArray = newSeq[pointer](len(roles))
  var roles_ctr = 0
  for rolesk, rolesv in roles:
    roles_Keys_CArray[roles_ctr] = roles_k
    roles_Values_CArray[roles_ctr] = roles_v.h
    roles_ctr += 1

  fQTransposeProxyModel_virtualbase_setItemData(self.h, index.h, struct_miqt_map(len: csize_t(len(roles)),keys: if len(roles) == 0: nil else: addr(roles_Keys_CArray[0]), values: if len(roles) == 0: nil else: addr(roles_Values_CArray[0]),))

type QTransposeProxyModelsetItemDataProc* = proc(index: gen_qabstractitemmodel_types.QModelIndex, roles: Table[cint,gen_qvariant_types.QVariant]): bool
proc onsetItemData*(self: gen_qtransposeproxymodel_types.QTransposeProxyModel, slot: QTransposeProxyModelsetItemDataProc) =
  # TODO check subclass
  var tmp = new QTransposeProxyModelsetItemDataProc
  tmp[] = slot
  GC_ref(tmp)
  fcQTransposeProxyModel_override_virtual_setItemData(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QTransposeProxyModel_setItemData(self: ptr cQTransposeProxyModel, slot: int, index: pointer, roles: struct_miqt_map): bool {.exportc: "miqt_exec_callback_QTransposeProxyModel_setItemData ".} =
  var nimfunc = cast[ptr QTransposeProxyModelsetItemDataProc](cast[pointer](slot))
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
proc QTransposeProxyModelspan*(self: gen_qtransposeproxymodel_types.QTransposeProxyModel, index: gen_qabstractitemmodel_types.QModelIndex): gen_qsize_types.QSize =
  gen_qsize_types.QSize(h: fQTransposeProxyModel_virtualbase_span(self.h, index.h))

type QTransposeProxyModelspanProc* = proc(index: gen_qabstractitemmodel_types.QModelIndex): gen_qsize_types.QSize
proc onspan*(self: gen_qtransposeproxymodel_types.QTransposeProxyModel, slot: QTransposeProxyModelspanProc) =
  # TODO check subclass
  var tmp = new QTransposeProxyModelspanProc
  tmp[] = slot
  GC_ref(tmp)
  fcQTransposeProxyModel_override_virtual_span(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QTransposeProxyModel_span(self: ptr cQTransposeProxyModel, slot: int, index: pointer): pointer {.exportc: "miqt_exec_callback_QTransposeProxyModel_span ".} =
  var nimfunc = cast[ptr QTransposeProxyModelspanProc](cast[pointer](slot))
  let slotval1 = gen_qabstractitemmodel_types.QModelIndex(h: index)


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn.h
proc QTransposeProxyModelitemData*(self: gen_qtransposeproxymodel_types.QTransposeProxyModel, index: gen_qabstractitemmodel_types.QModelIndex): Table[cint,gen_qvariant_types.QVariant] =
  var v_mm = fQTransposeProxyModel_virtualbase_itemData(self.h, index.h)
  var vx_ret: Table[cint, gen_qvariant_types.QVariant]
  var v_Keys = cast[ptr UncheckedArray[cint]](v_mm.keys)
  var v_Values = cast[ptr UncheckedArray[pointer]](v_mm.values)
  for i in 0..<v_mm.len:
    var v_entry_Key = v_Keys[i]

    var v_entry_Value = gen_qvariant_types.QVariant(h: v_Values[i])

    vx_ret[v_entry_Key] = v_entry_Value
  vx_ret

type QTransposeProxyModelitemDataProc* = proc(index: gen_qabstractitemmodel_types.QModelIndex): Table[cint,gen_qvariant_types.QVariant]
proc onitemData*(self: gen_qtransposeproxymodel_types.QTransposeProxyModel, slot: QTransposeProxyModelitemDataProc) =
  # TODO check subclass
  var tmp = new QTransposeProxyModelitemDataProc
  tmp[] = slot
  GC_ref(tmp)
  fcQTransposeProxyModel_override_virtual_itemData(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QTransposeProxyModel_itemData(self: ptr cQTransposeProxyModel, slot: int, index: pointer): struct_miqt_map {.exportc: "miqt_exec_callback_QTransposeProxyModel_itemData ".} =
  var nimfunc = cast[ptr QTransposeProxyModelitemDataProc](cast[pointer](slot))
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
proc QTransposeProxyModelmapFromSource*(self: gen_qtransposeproxymodel_types.QTransposeProxyModel, sourceIndex: gen_qabstractitemmodel_types.QModelIndex): gen_qabstractitemmodel_types.QModelIndex =
  gen_qabstractitemmodel_types.QModelIndex(h: fQTransposeProxyModel_virtualbase_mapFromSource(self.h, sourceIndex.h))

type QTransposeProxyModelmapFromSourceProc* = proc(sourceIndex: gen_qabstractitemmodel_types.QModelIndex): gen_qabstractitemmodel_types.QModelIndex
proc onmapFromSource*(self: gen_qtransposeproxymodel_types.QTransposeProxyModel, slot: QTransposeProxyModelmapFromSourceProc) =
  # TODO check subclass
  var tmp = new QTransposeProxyModelmapFromSourceProc
  tmp[] = slot
  GC_ref(tmp)
  fcQTransposeProxyModel_override_virtual_mapFromSource(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QTransposeProxyModel_mapFromSource(self: ptr cQTransposeProxyModel, slot: int, sourceIndex: pointer): pointer {.exportc: "miqt_exec_callback_QTransposeProxyModel_mapFromSource ".} =
  var nimfunc = cast[ptr QTransposeProxyModelmapFromSourceProc](cast[pointer](slot))
  let slotval1 = gen_qabstractitemmodel_types.QModelIndex(h: sourceIndex)


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn.h
proc QTransposeProxyModelmapToSource*(self: gen_qtransposeproxymodel_types.QTransposeProxyModel, proxyIndex: gen_qabstractitemmodel_types.QModelIndex): gen_qabstractitemmodel_types.QModelIndex =
  gen_qabstractitemmodel_types.QModelIndex(h: fQTransposeProxyModel_virtualbase_mapToSource(self.h, proxyIndex.h))

type QTransposeProxyModelmapToSourceProc* = proc(proxyIndex: gen_qabstractitemmodel_types.QModelIndex): gen_qabstractitemmodel_types.QModelIndex
proc onmapToSource*(self: gen_qtransposeproxymodel_types.QTransposeProxyModel, slot: QTransposeProxyModelmapToSourceProc) =
  # TODO check subclass
  var tmp = new QTransposeProxyModelmapToSourceProc
  tmp[] = slot
  GC_ref(tmp)
  fcQTransposeProxyModel_override_virtual_mapToSource(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QTransposeProxyModel_mapToSource(self: ptr cQTransposeProxyModel, slot: int, proxyIndex: pointer): pointer {.exportc: "miqt_exec_callback_QTransposeProxyModel_mapToSource ".} =
  var nimfunc = cast[ptr QTransposeProxyModelmapToSourceProc](cast[pointer](slot))
  let slotval1 = gen_qabstractitemmodel_types.QModelIndex(h: proxyIndex)


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn.h
proc QTransposeProxyModelparent*(self: gen_qtransposeproxymodel_types.QTransposeProxyModel, index: gen_qabstractitemmodel_types.QModelIndex): gen_qabstractitemmodel_types.QModelIndex =
  gen_qabstractitemmodel_types.QModelIndex(h: fQTransposeProxyModel_virtualbase_parent(self.h, index.h))

type QTransposeProxyModelparentProc* = proc(index: gen_qabstractitemmodel_types.QModelIndex): gen_qabstractitemmodel_types.QModelIndex
proc onparent*(self: gen_qtransposeproxymodel_types.QTransposeProxyModel, slot: QTransposeProxyModelparentProc) =
  # TODO check subclass
  var tmp = new QTransposeProxyModelparentProc
  tmp[] = slot
  GC_ref(tmp)
  fcQTransposeProxyModel_override_virtual_parent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QTransposeProxyModel_parent(self: ptr cQTransposeProxyModel, slot: int, index: pointer): pointer {.exportc: "miqt_exec_callback_QTransposeProxyModel_parent ".} =
  var nimfunc = cast[ptr QTransposeProxyModelparentProc](cast[pointer](slot))
  let slotval1 = gen_qabstractitemmodel_types.QModelIndex(h: index)


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn.h
proc QTransposeProxyModelindex*(self: gen_qtransposeproxymodel_types.QTransposeProxyModel, row: cint, column: cint, parent: gen_qabstractitemmodel_types.QModelIndex): gen_qabstractitemmodel_types.QModelIndex =
  gen_qabstractitemmodel_types.QModelIndex(h: fQTransposeProxyModel_virtualbase_index(self.h, row, column, parent.h))

type QTransposeProxyModelindexProc* = proc(row: cint, column: cint, parent: gen_qabstractitemmodel_types.QModelIndex): gen_qabstractitemmodel_types.QModelIndex
proc onindex*(self: gen_qtransposeproxymodel_types.QTransposeProxyModel, slot: QTransposeProxyModelindexProc) =
  # TODO check subclass
  var tmp = new QTransposeProxyModelindexProc
  tmp[] = slot
  GC_ref(tmp)
  fcQTransposeProxyModel_override_virtual_index(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QTransposeProxyModel_index(self: ptr cQTransposeProxyModel, slot: int, row: cint, column: cint, parent: pointer): pointer {.exportc: "miqt_exec_callback_QTransposeProxyModel_index ".} =
  var nimfunc = cast[ptr QTransposeProxyModelindexProc](cast[pointer](slot))
  let slotval1 = row

  let slotval2 = column

  let slotval3 = gen_qabstractitemmodel_types.QModelIndex(h: parent)


  let virtualReturn = nimfunc[](slotval1, slotval2, slotval3 )

  virtualReturn.h
proc QTransposeProxyModelinsertRows*(self: gen_qtransposeproxymodel_types.QTransposeProxyModel, row: cint, count: cint, parent: gen_qabstractitemmodel_types.QModelIndex): bool =
  fQTransposeProxyModel_virtualbase_insertRows(self.h, row, count, parent.h)

type QTransposeProxyModelinsertRowsProc* = proc(row: cint, count: cint, parent: gen_qabstractitemmodel_types.QModelIndex): bool
proc oninsertRows*(self: gen_qtransposeproxymodel_types.QTransposeProxyModel, slot: QTransposeProxyModelinsertRowsProc) =
  # TODO check subclass
  var tmp = new QTransposeProxyModelinsertRowsProc
  tmp[] = slot
  GC_ref(tmp)
  fcQTransposeProxyModel_override_virtual_insertRows(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QTransposeProxyModel_insertRows(self: ptr cQTransposeProxyModel, slot: int, row: cint, count: cint, parent: pointer): bool {.exportc: "miqt_exec_callback_QTransposeProxyModel_insertRows ".} =
  var nimfunc = cast[ptr QTransposeProxyModelinsertRowsProc](cast[pointer](slot))
  let slotval1 = row

  let slotval2 = count

  let slotval3 = gen_qabstractitemmodel_types.QModelIndex(h: parent)


  let virtualReturn = nimfunc[](slotval1, slotval2, slotval3 )

  virtualReturn
proc QTransposeProxyModelremoveRows*(self: gen_qtransposeproxymodel_types.QTransposeProxyModel, row: cint, count: cint, parent: gen_qabstractitemmodel_types.QModelIndex): bool =
  fQTransposeProxyModel_virtualbase_removeRows(self.h, row, count, parent.h)

type QTransposeProxyModelremoveRowsProc* = proc(row: cint, count: cint, parent: gen_qabstractitemmodel_types.QModelIndex): bool
proc onremoveRows*(self: gen_qtransposeproxymodel_types.QTransposeProxyModel, slot: QTransposeProxyModelremoveRowsProc) =
  # TODO check subclass
  var tmp = new QTransposeProxyModelremoveRowsProc
  tmp[] = slot
  GC_ref(tmp)
  fcQTransposeProxyModel_override_virtual_removeRows(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QTransposeProxyModel_removeRows(self: ptr cQTransposeProxyModel, slot: int, row: cint, count: cint, parent: pointer): bool {.exportc: "miqt_exec_callback_QTransposeProxyModel_removeRows ".} =
  var nimfunc = cast[ptr QTransposeProxyModelremoveRowsProc](cast[pointer](slot))
  let slotval1 = row

  let slotval2 = count

  let slotval3 = gen_qabstractitemmodel_types.QModelIndex(h: parent)


  let virtualReturn = nimfunc[](slotval1, slotval2, slotval3 )

  virtualReturn
proc QTransposeProxyModelmoveRows*(self: gen_qtransposeproxymodel_types.QTransposeProxyModel, sourceParent: gen_qabstractitemmodel_types.QModelIndex, sourceRow: cint, count: cint, destinationParent: gen_qabstractitemmodel_types.QModelIndex, destinationChild: cint): bool =
  fQTransposeProxyModel_virtualbase_moveRows(self.h, sourceParent.h, sourceRow, count, destinationParent.h, destinationChild)

type QTransposeProxyModelmoveRowsProc* = proc(sourceParent: gen_qabstractitemmodel_types.QModelIndex, sourceRow: cint, count: cint, destinationParent: gen_qabstractitemmodel_types.QModelIndex, destinationChild: cint): bool
proc onmoveRows*(self: gen_qtransposeproxymodel_types.QTransposeProxyModel, slot: QTransposeProxyModelmoveRowsProc) =
  # TODO check subclass
  var tmp = new QTransposeProxyModelmoveRowsProc
  tmp[] = slot
  GC_ref(tmp)
  fcQTransposeProxyModel_override_virtual_moveRows(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QTransposeProxyModel_moveRows(self: ptr cQTransposeProxyModel, slot: int, sourceParent: pointer, sourceRow: cint, count: cint, destinationParent: pointer, destinationChild: cint): bool {.exportc: "miqt_exec_callback_QTransposeProxyModel_moveRows ".} =
  var nimfunc = cast[ptr QTransposeProxyModelmoveRowsProc](cast[pointer](slot))
  let slotval1 = gen_qabstractitemmodel_types.QModelIndex(h: sourceParent)

  let slotval2 = sourceRow

  let slotval3 = count

  let slotval4 = gen_qabstractitemmodel_types.QModelIndex(h: destinationParent)

  let slotval5 = destinationChild


  let virtualReturn = nimfunc[](slotval1, slotval2, slotval3, slotval4, slotval5 )

  virtualReturn
proc QTransposeProxyModelinsertColumns*(self: gen_qtransposeproxymodel_types.QTransposeProxyModel, column: cint, count: cint, parent: gen_qabstractitemmodel_types.QModelIndex): bool =
  fQTransposeProxyModel_virtualbase_insertColumns(self.h, column, count, parent.h)

type QTransposeProxyModelinsertColumnsProc* = proc(column: cint, count: cint, parent: gen_qabstractitemmodel_types.QModelIndex): bool
proc oninsertColumns*(self: gen_qtransposeproxymodel_types.QTransposeProxyModel, slot: QTransposeProxyModelinsertColumnsProc) =
  # TODO check subclass
  var tmp = new QTransposeProxyModelinsertColumnsProc
  tmp[] = slot
  GC_ref(tmp)
  fcQTransposeProxyModel_override_virtual_insertColumns(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QTransposeProxyModel_insertColumns(self: ptr cQTransposeProxyModel, slot: int, column: cint, count: cint, parent: pointer): bool {.exportc: "miqt_exec_callback_QTransposeProxyModel_insertColumns ".} =
  var nimfunc = cast[ptr QTransposeProxyModelinsertColumnsProc](cast[pointer](slot))
  let slotval1 = column

  let slotval2 = count

  let slotval3 = gen_qabstractitemmodel_types.QModelIndex(h: parent)


  let virtualReturn = nimfunc[](slotval1, slotval2, slotval3 )

  virtualReturn
proc QTransposeProxyModelremoveColumns*(self: gen_qtransposeproxymodel_types.QTransposeProxyModel, column: cint, count: cint, parent: gen_qabstractitemmodel_types.QModelIndex): bool =
  fQTransposeProxyModel_virtualbase_removeColumns(self.h, column, count, parent.h)

type QTransposeProxyModelremoveColumnsProc* = proc(column: cint, count: cint, parent: gen_qabstractitemmodel_types.QModelIndex): bool
proc onremoveColumns*(self: gen_qtransposeproxymodel_types.QTransposeProxyModel, slot: QTransposeProxyModelremoveColumnsProc) =
  # TODO check subclass
  var tmp = new QTransposeProxyModelremoveColumnsProc
  tmp[] = slot
  GC_ref(tmp)
  fcQTransposeProxyModel_override_virtual_removeColumns(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QTransposeProxyModel_removeColumns(self: ptr cQTransposeProxyModel, slot: int, column: cint, count: cint, parent: pointer): bool {.exportc: "miqt_exec_callback_QTransposeProxyModel_removeColumns ".} =
  var nimfunc = cast[ptr QTransposeProxyModelremoveColumnsProc](cast[pointer](slot))
  let slotval1 = column

  let slotval2 = count

  let slotval3 = gen_qabstractitemmodel_types.QModelIndex(h: parent)


  let virtualReturn = nimfunc[](slotval1, slotval2, slotval3 )

  virtualReturn
proc QTransposeProxyModelmoveColumns*(self: gen_qtransposeproxymodel_types.QTransposeProxyModel, sourceParent: gen_qabstractitemmodel_types.QModelIndex, sourceColumn: cint, count: cint, destinationParent: gen_qabstractitemmodel_types.QModelIndex, destinationChild: cint): bool =
  fQTransposeProxyModel_virtualbase_moveColumns(self.h, sourceParent.h, sourceColumn, count, destinationParent.h, destinationChild)

type QTransposeProxyModelmoveColumnsProc* = proc(sourceParent: gen_qabstractitemmodel_types.QModelIndex, sourceColumn: cint, count: cint, destinationParent: gen_qabstractitemmodel_types.QModelIndex, destinationChild: cint): bool
proc onmoveColumns*(self: gen_qtransposeproxymodel_types.QTransposeProxyModel, slot: QTransposeProxyModelmoveColumnsProc) =
  # TODO check subclass
  var tmp = new QTransposeProxyModelmoveColumnsProc
  tmp[] = slot
  GC_ref(tmp)
  fcQTransposeProxyModel_override_virtual_moveColumns(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QTransposeProxyModel_moveColumns(self: ptr cQTransposeProxyModel, slot: int, sourceParent: pointer, sourceColumn: cint, count: cint, destinationParent: pointer, destinationChild: cint): bool {.exportc: "miqt_exec_callback_QTransposeProxyModel_moveColumns ".} =
  var nimfunc = cast[ptr QTransposeProxyModelmoveColumnsProc](cast[pointer](slot))
  let slotval1 = gen_qabstractitemmodel_types.QModelIndex(h: sourceParent)

  let slotval2 = sourceColumn

  let slotval3 = count

  let slotval4 = gen_qabstractitemmodel_types.QModelIndex(h: destinationParent)

  let slotval5 = destinationChild


  let virtualReturn = nimfunc[](slotval1, slotval2, slotval3, slotval4, slotval5 )

  virtualReturn
proc QTransposeProxyModelsort*(self: gen_qtransposeproxymodel_types.QTransposeProxyModel, column: cint, order: cint): void =
  fQTransposeProxyModel_virtualbase_sort(self.h, column, cint(order))

type QTransposeProxyModelsortProc* = proc(column: cint, order: cint): void
proc onsort*(self: gen_qtransposeproxymodel_types.QTransposeProxyModel, slot: QTransposeProxyModelsortProc) =
  # TODO check subclass
  var tmp = new QTransposeProxyModelsortProc
  tmp[] = slot
  GC_ref(tmp)
  fcQTransposeProxyModel_override_virtual_sort(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QTransposeProxyModel_sort(self: ptr cQTransposeProxyModel, slot: int, column: cint, order: cint): void {.exportc: "miqt_exec_callback_QTransposeProxyModel_sort ".} =
  var nimfunc = cast[ptr QTransposeProxyModelsortProc](cast[pointer](slot))
  let slotval1 = column

  let slotval2 = cint(order)


  nimfunc[](slotval1, slotval2)
proc QTransposeProxyModelmapSelectionToSource*(self: gen_qtransposeproxymodel_types.QTransposeProxyModel, selection: gen_qitemselectionmodel_types.QItemSelection): gen_qitemselectionmodel_types.QItemSelection =
  gen_qitemselectionmodel_types.QItemSelection(h: fQTransposeProxyModel_virtualbase_mapSelectionToSource(self.h, selection.h))

type QTransposeProxyModelmapSelectionToSourceProc* = proc(selection: gen_qitemselectionmodel_types.QItemSelection): gen_qitemselectionmodel_types.QItemSelection
proc onmapSelectionToSource*(self: gen_qtransposeproxymodel_types.QTransposeProxyModel, slot: QTransposeProxyModelmapSelectionToSourceProc) =
  # TODO check subclass
  var tmp = new QTransposeProxyModelmapSelectionToSourceProc
  tmp[] = slot
  GC_ref(tmp)
  fcQTransposeProxyModel_override_virtual_mapSelectionToSource(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QTransposeProxyModel_mapSelectionToSource(self: ptr cQTransposeProxyModel, slot: int, selection: pointer): pointer {.exportc: "miqt_exec_callback_QTransposeProxyModel_mapSelectionToSource ".} =
  var nimfunc = cast[ptr QTransposeProxyModelmapSelectionToSourceProc](cast[pointer](slot))
  let slotval1 = gen_qitemselectionmodel_types.QItemSelection(h: selection)


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn.h
proc QTransposeProxyModelmapSelectionFromSource*(self: gen_qtransposeproxymodel_types.QTransposeProxyModel, selection: gen_qitemselectionmodel_types.QItemSelection): gen_qitemselectionmodel_types.QItemSelection =
  gen_qitemselectionmodel_types.QItemSelection(h: fQTransposeProxyModel_virtualbase_mapSelectionFromSource(self.h, selection.h))

type QTransposeProxyModelmapSelectionFromSourceProc* = proc(selection: gen_qitemselectionmodel_types.QItemSelection): gen_qitemselectionmodel_types.QItemSelection
proc onmapSelectionFromSource*(self: gen_qtransposeproxymodel_types.QTransposeProxyModel, slot: QTransposeProxyModelmapSelectionFromSourceProc) =
  # TODO check subclass
  var tmp = new QTransposeProxyModelmapSelectionFromSourceProc
  tmp[] = slot
  GC_ref(tmp)
  fcQTransposeProxyModel_override_virtual_mapSelectionFromSource(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QTransposeProxyModel_mapSelectionFromSource(self: ptr cQTransposeProxyModel, slot: int, selection: pointer): pointer {.exportc: "miqt_exec_callback_QTransposeProxyModel_mapSelectionFromSource ".} =
  var nimfunc = cast[ptr QTransposeProxyModelmapSelectionFromSourceProc](cast[pointer](slot))
  let slotval1 = gen_qitemselectionmodel_types.QItemSelection(h: selection)


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn.h
proc QTransposeProxyModelsubmit*(self: gen_qtransposeproxymodel_types.QTransposeProxyModel, ): bool =
  fQTransposeProxyModel_virtualbase_submit(self.h)

type QTransposeProxyModelsubmitProc* = proc(): bool
proc onsubmit*(self: gen_qtransposeproxymodel_types.QTransposeProxyModel, slot: QTransposeProxyModelsubmitProc) =
  # TODO check subclass
  var tmp = new QTransposeProxyModelsubmitProc
  tmp[] = slot
  GC_ref(tmp)
  fcQTransposeProxyModel_override_virtual_submit(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QTransposeProxyModel_submit(self: ptr cQTransposeProxyModel, slot: int): bool {.exportc: "miqt_exec_callback_QTransposeProxyModel_submit ".} =
  var nimfunc = cast[ptr QTransposeProxyModelsubmitProc](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )

  virtualReturn
proc QTransposeProxyModelrevert*(self: gen_qtransposeproxymodel_types.QTransposeProxyModel, ): void =
  fQTransposeProxyModel_virtualbase_revert(self.h)

type QTransposeProxyModelrevertProc* = proc(): void
proc onrevert*(self: gen_qtransposeproxymodel_types.QTransposeProxyModel, slot: QTransposeProxyModelrevertProc) =
  # TODO check subclass
  var tmp = new QTransposeProxyModelrevertProc
  tmp[] = slot
  GC_ref(tmp)
  fcQTransposeProxyModel_override_virtual_revert(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QTransposeProxyModel_revert(self: ptr cQTransposeProxyModel, slot: int): void {.exportc: "miqt_exec_callback_QTransposeProxyModel_revert ".} =
  var nimfunc = cast[ptr QTransposeProxyModelrevertProc](cast[pointer](slot))

  nimfunc[]()
proc QTransposeProxyModeldata*(self: gen_qtransposeproxymodel_types.QTransposeProxyModel, proxyIndex: gen_qabstractitemmodel_types.QModelIndex, role: cint): gen_qvariant_types.QVariant =
  gen_qvariant_types.QVariant(h: fQTransposeProxyModel_virtualbase_data(self.h, proxyIndex.h, role))

type QTransposeProxyModeldataProc* = proc(proxyIndex: gen_qabstractitemmodel_types.QModelIndex, role: cint): gen_qvariant_types.QVariant
proc ondata*(self: gen_qtransposeproxymodel_types.QTransposeProxyModel, slot: QTransposeProxyModeldataProc) =
  # TODO check subclass
  var tmp = new QTransposeProxyModeldataProc
  tmp[] = slot
  GC_ref(tmp)
  fcQTransposeProxyModel_override_virtual_data(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QTransposeProxyModel_data(self: ptr cQTransposeProxyModel, slot: int, proxyIndex: pointer, role: cint): pointer {.exportc: "miqt_exec_callback_QTransposeProxyModel_data ".} =
  var nimfunc = cast[ptr QTransposeProxyModeldataProc](cast[pointer](slot))
  let slotval1 = gen_qabstractitemmodel_types.QModelIndex(h: proxyIndex)

  let slotval2 = role


  let virtualReturn = nimfunc[](slotval1, slotval2 )

  virtualReturn.h
proc QTransposeProxyModelflags*(self: gen_qtransposeproxymodel_types.QTransposeProxyModel, index: gen_qabstractitemmodel_types.QModelIndex): cint =
  cint(fQTransposeProxyModel_virtualbase_flags(self.h, index.h))

type QTransposeProxyModelflagsProc* = proc(index: gen_qabstractitemmodel_types.QModelIndex): cint
proc onflags*(self: gen_qtransposeproxymodel_types.QTransposeProxyModel, slot: QTransposeProxyModelflagsProc) =
  # TODO check subclass
  var tmp = new QTransposeProxyModelflagsProc
  tmp[] = slot
  GC_ref(tmp)
  fcQTransposeProxyModel_override_virtual_flags(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QTransposeProxyModel_flags(self: ptr cQTransposeProxyModel, slot: int, index: pointer): cint {.exportc: "miqt_exec_callback_QTransposeProxyModel_flags ".} =
  var nimfunc = cast[ptr QTransposeProxyModelflagsProc](cast[pointer](slot))
  let slotval1 = gen_qabstractitemmodel_types.QModelIndex(h: index)


  let virtualReturn = nimfunc[](slotval1 )

  cint(virtualReturn)
proc QTransposeProxyModelsetData*(self: gen_qtransposeproxymodel_types.QTransposeProxyModel, index: gen_qabstractitemmodel_types.QModelIndex, value: gen_qvariant_types.QVariant, role: cint): bool =
  fQTransposeProxyModel_virtualbase_setData(self.h, index.h, value.h, role)

type QTransposeProxyModelsetDataProc* = proc(index: gen_qabstractitemmodel_types.QModelIndex, value: gen_qvariant_types.QVariant, role: cint): bool
proc onsetData*(self: gen_qtransposeproxymodel_types.QTransposeProxyModel, slot: QTransposeProxyModelsetDataProc) =
  # TODO check subclass
  var tmp = new QTransposeProxyModelsetDataProc
  tmp[] = slot
  GC_ref(tmp)
  fcQTransposeProxyModel_override_virtual_setData(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QTransposeProxyModel_setData(self: ptr cQTransposeProxyModel, slot: int, index: pointer, value: pointer, role: cint): bool {.exportc: "miqt_exec_callback_QTransposeProxyModel_setData ".} =
  var nimfunc = cast[ptr QTransposeProxyModelsetDataProc](cast[pointer](slot))
  let slotval1 = gen_qabstractitemmodel_types.QModelIndex(h: index)

  let slotval2 = gen_qvariant_types.QVariant(h: value)

  let slotval3 = role


  let virtualReturn = nimfunc[](slotval1, slotval2, slotval3 )

  virtualReturn
proc QTransposeProxyModelbuddy*(self: gen_qtransposeproxymodel_types.QTransposeProxyModel, index: gen_qabstractitemmodel_types.QModelIndex): gen_qabstractitemmodel_types.QModelIndex =
  gen_qabstractitemmodel_types.QModelIndex(h: fQTransposeProxyModel_virtualbase_buddy(self.h, index.h))

type QTransposeProxyModelbuddyProc* = proc(index: gen_qabstractitemmodel_types.QModelIndex): gen_qabstractitemmodel_types.QModelIndex
proc onbuddy*(self: gen_qtransposeproxymodel_types.QTransposeProxyModel, slot: QTransposeProxyModelbuddyProc) =
  # TODO check subclass
  var tmp = new QTransposeProxyModelbuddyProc
  tmp[] = slot
  GC_ref(tmp)
  fcQTransposeProxyModel_override_virtual_buddy(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QTransposeProxyModel_buddy(self: ptr cQTransposeProxyModel, slot: int, index: pointer): pointer {.exportc: "miqt_exec_callback_QTransposeProxyModel_buddy ".} =
  var nimfunc = cast[ptr QTransposeProxyModelbuddyProc](cast[pointer](slot))
  let slotval1 = gen_qabstractitemmodel_types.QModelIndex(h: index)


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn.h
proc QTransposeProxyModelcanFetchMore*(self: gen_qtransposeproxymodel_types.QTransposeProxyModel, parent: gen_qabstractitemmodel_types.QModelIndex): bool =
  fQTransposeProxyModel_virtualbase_canFetchMore(self.h, parent.h)

type QTransposeProxyModelcanFetchMoreProc* = proc(parent: gen_qabstractitemmodel_types.QModelIndex): bool
proc oncanFetchMore*(self: gen_qtransposeproxymodel_types.QTransposeProxyModel, slot: QTransposeProxyModelcanFetchMoreProc) =
  # TODO check subclass
  var tmp = new QTransposeProxyModelcanFetchMoreProc
  tmp[] = slot
  GC_ref(tmp)
  fcQTransposeProxyModel_override_virtual_canFetchMore(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QTransposeProxyModel_canFetchMore(self: ptr cQTransposeProxyModel, slot: int, parent: pointer): bool {.exportc: "miqt_exec_callback_QTransposeProxyModel_canFetchMore ".} =
  var nimfunc = cast[ptr QTransposeProxyModelcanFetchMoreProc](cast[pointer](slot))
  let slotval1 = gen_qabstractitemmodel_types.QModelIndex(h: parent)


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn
proc QTransposeProxyModelfetchMore*(self: gen_qtransposeproxymodel_types.QTransposeProxyModel, parent: gen_qabstractitemmodel_types.QModelIndex): void =
  fQTransposeProxyModel_virtualbase_fetchMore(self.h, parent.h)

type QTransposeProxyModelfetchMoreProc* = proc(parent: gen_qabstractitemmodel_types.QModelIndex): void
proc onfetchMore*(self: gen_qtransposeproxymodel_types.QTransposeProxyModel, slot: QTransposeProxyModelfetchMoreProc) =
  # TODO check subclass
  var tmp = new QTransposeProxyModelfetchMoreProc
  tmp[] = slot
  GC_ref(tmp)
  fcQTransposeProxyModel_override_virtual_fetchMore(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QTransposeProxyModel_fetchMore(self: ptr cQTransposeProxyModel, slot: int, parent: pointer): void {.exportc: "miqt_exec_callback_QTransposeProxyModel_fetchMore ".} =
  var nimfunc = cast[ptr QTransposeProxyModelfetchMoreProc](cast[pointer](slot))
  let slotval1 = gen_qabstractitemmodel_types.QModelIndex(h: parent)


  nimfunc[](slotval1)
proc QTransposeProxyModelhasChildren*(self: gen_qtransposeproxymodel_types.QTransposeProxyModel, parent: gen_qabstractitemmodel_types.QModelIndex): bool =
  fQTransposeProxyModel_virtualbase_hasChildren(self.h, parent.h)

type QTransposeProxyModelhasChildrenProc* = proc(parent: gen_qabstractitemmodel_types.QModelIndex): bool
proc onhasChildren*(self: gen_qtransposeproxymodel_types.QTransposeProxyModel, slot: QTransposeProxyModelhasChildrenProc) =
  # TODO check subclass
  var tmp = new QTransposeProxyModelhasChildrenProc
  tmp[] = slot
  GC_ref(tmp)
  fcQTransposeProxyModel_override_virtual_hasChildren(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QTransposeProxyModel_hasChildren(self: ptr cQTransposeProxyModel, slot: int, parent: pointer): bool {.exportc: "miqt_exec_callback_QTransposeProxyModel_hasChildren ".} =
  var nimfunc = cast[ptr QTransposeProxyModelhasChildrenProc](cast[pointer](slot))
  let slotval1 = gen_qabstractitemmodel_types.QModelIndex(h: parent)


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn
proc QTransposeProxyModelsibling*(self: gen_qtransposeproxymodel_types.QTransposeProxyModel, row: cint, column: cint, idx: gen_qabstractitemmodel_types.QModelIndex): gen_qabstractitemmodel_types.QModelIndex =
  gen_qabstractitemmodel_types.QModelIndex(h: fQTransposeProxyModel_virtualbase_sibling(self.h, row, column, idx.h))

type QTransposeProxyModelsiblingProc* = proc(row: cint, column: cint, idx: gen_qabstractitemmodel_types.QModelIndex): gen_qabstractitemmodel_types.QModelIndex
proc onsibling*(self: gen_qtransposeproxymodel_types.QTransposeProxyModel, slot: QTransposeProxyModelsiblingProc) =
  # TODO check subclass
  var tmp = new QTransposeProxyModelsiblingProc
  tmp[] = slot
  GC_ref(tmp)
  fcQTransposeProxyModel_override_virtual_sibling(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QTransposeProxyModel_sibling(self: ptr cQTransposeProxyModel, slot: int, row: cint, column: cint, idx: pointer): pointer {.exportc: "miqt_exec_callback_QTransposeProxyModel_sibling ".} =
  var nimfunc = cast[ptr QTransposeProxyModelsiblingProc](cast[pointer](slot))
  let slotval1 = row

  let slotval2 = column

  let slotval3 = gen_qabstractitemmodel_types.QModelIndex(h: idx)


  let virtualReturn = nimfunc[](slotval1, slotval2, slotval3 )

  virtualReturn.h
proc QTransposeProxyModelmimeData*(self: gen_qtransposeproxymodel_types.QTransposeProxyModel, indexes: seq[gen_qabstractitemmodel_types.QModelIndex]): gen_qmimedata_types.QMimeData =
  var indexes_CArray = newSeq[pointer](len(indexes))
  for i in 0..<len(indexes):
    indexes_CArray[i] = indexes[i].h

  gen_qmimedata_types.QMimeData(h: fQTransposeProxyModel_virtualbase_mimeData(self.h, struct_miqt_array(len: csize_t(len(indexes)), data: if len(indexes) == 0: nil else: addr(indexes_CArray[0]))))

type QTransposeProxyModelmimeDataProc* = proc(indexes: seq[gen_qabstractitemmodel_types.QModelIndex]): gen_qmimedata_types.QMimeData
proc onmimeData*(self: gen_qtransposeproxymodel_types.QTransposeProxyModel, slot: QTransposeProxyModelmimeDataProc) =
  # TODO check subclass
  var tmp = new QTransposeProxyModelmimeDataProc
  tmp[] = slot
  GC_ref(tmp)
  fcQTransposeProxyModel_override_virtual_mimeData(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QTransposeProxyModel_mimeData(self: ptr cQTransposeProxyModel, slot: int, indexes: struct_miqt_array): pointer {.exportc: "miqt_exec_callback_QTransposeProxyModel_mimeData ".} =
  var nimfunc = cast[ptr QTransposeProxyModelmimeDataProc](cast[pointer](slot))
  var vindexes_ma = indexes
  var vindexesx_ret = newSeq[gen_qabstractitemmodel_types.QModelIndex](int(vindexes_ma.len))
  let vindexes_outCast = cast[ptr UncheckedArray[pointer]](vindexes_ma.data)
  for i in 0 ..< vindexes_ma.len:
    vindexesx_ret[i] = gen_qabstractitemmodel_types.QModelIndex(h: vindexes_outCast[i])
  let slotval1 = vindexesx_ret


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn.h
proc QTransposeProxyModelcanDropMimeData*(self: gen_qtransposeproxymodel_types.QTransposeProxyModel, data: gen_qmimedata_types.QMimeData, action: cint, row: cint, column: cint, parent: gen_qabstractitemmodel_types.QModelIndex): bool =
  fQTransposeProxyModel_virtualbase_canDropMimeData(self.h, data.h, cint(action), row, column, parent.h)

type QTransposeProxyModelcanDropMimeDataProc* = proc(data: gen_qmimedata_types.QMimeData, action: cint, row: cint, column: cint, parent: gen_qabstractitemmodel_types.QModelIndex): bool
proc oncanDropMimeData*(self: gen_qtransposeproxymodel_types.QTransposeProxyModel, slot: QTransposeProxyModelcanDropMimeDataProc) =
  # TODO check subclass
  var tmp = new QTransposeProxyModelcanDropMimeDataProc
  tmp[] = slot
  GC_ref(tmp)
  fcQTransposeProxyModel_override_virtual_canDropMimeData(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QTransposeProxyModel_canDropMimeData(self: ptr cQTransposeProxyModel, slot: int, data: pointer, action: cint, row: cint, column: cint, parent: pointer): bool {.exportc: "miqt_exec_callback_QTransposeProxyModel_canDropMimeData ".} =
  var nimfunc = cast[ptr QTransposeProxyModelcanDropMimeDataProc](cast[pointer](slot))
  let slotval1 = gen_qmimedata_types.QMimeData(h: data)

  let slotval2 = cint(action)

  let slotval3 = row

  let slotval4 = column

  let slotval5 = gen_qabstractitemmodel_types.QModelIndex(h: parent)


  let virtualReturn = nimfunc[](slotval1, slotval2, slotval3, slotval4, slotval5 )

  virtualReturn
proc QTransposeProxyModeldropMimeData*(self: gen_qtransposeproxymodel_types.QTransposeProxyModel, data: gen_qmimedata_types.QMimeData, action: cint, row: cint, column: cint, parent: gen_qabstractitemmodel_types.QModelIndex): bool =
  fQTransposeProxyModel_virtualbase_dropMimeData(self.h, data.h, cint(action), row, column, parent.h)

type QTransposeProxyModeldropMimeDataProc* = proc(data: gen_qmimedata_types.QMimeData, action: cint, row: cint, column: cint, parent: gen_qabstractitemmodel_types.QModelIndex): bool
proc ondropMimeData*(self: gen_qtransposeproxymodel_types.QTransposeProxyModel, slot: QTransposeProxyModeldropMimeDataProc) =
  # TODO check subclass
  var tmp = new QTransposeProxyModeldropMimeDataProc
  tmp[] = slot
  GC_ref(tmp)
  fcQTransposeProxyModel_override_virtual_dropMimeData(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QTransposeProxyModel_dropMimeData(self: ptr cQTransposeProxyModel, slot: int, data: pointer, action: cint, row: cint, column: cint, parent: pointer): bool {.exportc: "miqt_exec_callback_QTransposeProxyModel_dropMimeData ".} =
  var nimfunc = cast[ptr QTransposeProxyModeldropMimeDataProc](cast[pointer](slot))
  let slotval1 = gen_qmimedata_types.QMimeData(h: data)

  let slotval2 = cint(action)

  let slotval3 = row

  let slotval4 = column

  let slotval5 = gen_qabstractitemmodel_types.QModelIndex(h: parent)


  let virtualReturn = nimfunc[](slotval1, slotval2, slotval3, slotval4, slotval5 )

  virtualReturn
proc QTransposeProxyModelmimeTypes*(self: gen_qtransposeproxymodel_types.QTransposeProxyModel, ): seq[string] =
  var v_ma = fQTransposeProxyModel_virtualbase_mimeTypes(self.h)
  var vx_ret = newSeq[string](int(v_ma.len))
  let v_outCast = cast[ptr UncheckedArray[struct_miqt_string]](v_ma.data)
  for i in 0 ..< v_ma.len:
    let vx_lv_ms = v_outCast[i]
    let vx_lvx_ret = string.fromBytes(toOpenArrayByte(vx_lv_ms.data, 0, int(vx_lv_ms.len)-1))
    c_free(vx_lv_ms.data)
    vx_ret[i] = vx_lvx_ret
  vx_ret

type QTransposeProxyModelmimeTypesProc* = proc(): seq[string]
proc onmimeTypes*(self: gen_qtransposeproxymodel_types.QTransposeProxyModel, slot: QTransposeProxyModelmimeTypesProc) =
  # TODO check subclass
  var tmp = new QTransposeProxyModelmimeTypesProc
  tmp[] = slot
  GC_ref(tmp)
  fcQTransposeProxyModel_override_virtual_mimeTypes(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QTransposeProxyModel_mimeTypes(self: ptr cQTransposeProxyModel, slot: int): struct_miqt_array {.exportc: "miqt_exec_callback_QTransposeProxyModel_mimeTypes ".} =
  var nimfunc = cast[ptr QTransposeProxyModelmimeTypesProc](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )
  var virtualReturn_CArray = newSeq[struct_miqt_string](len(virtualReturn))
  for i in 0..<len(virtualReturn):
    virtualReturn_CArray[i] = struct_miqt_string(data: virtualReturn[i], len: csize_t(len(virtualReturn[i])))


  struct_miqt_array(len: csize_t(len(virtualReturn)), data: if len(virtualReturn) == 0: nil else: addr(virtualReturn_CArray[0]))
proc QTransposeProxyModelsupportedDragActions*(self: gen_qtransposeproxymodel_types.QTransposeProxyModel, ): cint =
  cint(fQTransposeProxyModel_virtualbase_supportedDragActions(self.h))

type QTransposeProxyModelsupportedDragActionsProc* = proc(): cint
proc onsupportedDragActions*(self: gen_qtransposeproxymodel_types.QTransposeProxyModel, slot: QTransposeProxyModelsupportedDragActionsProc) =
  # TODO check subclass
  var tmp = new QTransposeProxyModelsupportedDragActionsProc
  tmp[] = slot
  GC_ref(tmp)
  fcQTransposeProxyModel_override_virtual_supportedDragActions(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QTransposeProxyModel_supportedDragActions(self: ptr cQTransposeProxyModel, slot: int): cint {.exportc: "miqt_exec_callback_QTransposeProxyModel_supportedDragActions ".} =
  var nimfunc = cast[ptr QTransposeProxyModelsupportedDragActionsProc](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )

  cint(virtualReturn)
proc QTransposeProxyModelsupportedDropActions*(self: gen_qtransposeproxymodel_types.QTransposeProxyModel, ): cint =
  cint(fQTransposeProxyModel_virtualbase_supportedDropActions(self.h))

type QTransposeProxyModelsupportedDropActionsProc* = proc(): cint
proc onsupportedDropActions*(self: gen_qtransposeproxymodel_types.QTransposeProxyModel, slot: QTransposeProxyModelsupportedDropActionsProc) =
  # TODO check subclass
  var tmp = new QTransposeProxyModelsupportedDropActionsProc
  tmp[] = slot
  GC_ref(tmp)
  fcQTransposeProxyModel_override_virtual_supportedDropActions(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QTransposeProxyModel_supportedDropActions(self: ptr cQTransposeProxyModel, slot: int): cint {.exportc: "miqt_exec_callback_QTransposeProxyModel_supportedDropActions ".} =
  var nimfunc = cast[ptr QTransposeProxyModelsupportedDropActionsProc](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )

  cint(virtualReturn)
proc QTransposeProxyModelmatch*(self: gen_qtransposeproxymodel_types.QTransposeProxyModel, start: gen_qabstractitemmodel_types.QModelIndex, role: cint, value: gen_qvariant_types.QVariant, hits: cint, flags: cint): seq[gen_qabstractitemmodel_types.QModelIndex] =
  var v_ma = fQTransposeProxyModel_virtualbase_match(self.h, start.h, role, value.h, hits, cint(flags))
  var vx_ret = newSeq[gen_qabstractitemmodel_types.QModelIndex](int(v_ma.len))
  let v_outCast = cast[ptr UncheckedArray[pointer]](v_ma.data)
  for i in 0 ..< v_ma.len:
    vx_ret[i] = gen_qabstractitemmodel_types.QModelIndex(h: v_outCast[i])
  vx_ret

type QTransposeProxyModelmatchProc* = proc(start: gen_qabstractitemmodel_types.QModelIndex, role: cint, value: gen_qvariant_types.QVariant, hits: cint, flags: cint): seq[gen_qabstractitemmodel_types.QModelIndex]
proc onmatch*(self: gen_qtransposeproxymodel_types.QTransposeProxyModel, slot: QTransposeProxyModelmatchProc) =
  # TODO check subclass
  var tmp = new QTransposeProxyModelmatchProc
  tmp[] = slot
  GC_ref(tmp)
  fcQTransposeProxyModel_override_virtual_match(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QTransposeProxyModel_match(self: ptr cQTransposeProxyModel, slot: int, start: pointer, role: cint, value: pointer, hits: cint, flags: cint): struct_miqt_array {.exportc: "miqt_exec_callback_QTransposeProxyModel_match ".} =
  var nimfunc = cast[ptr QTransposeProxyModelmatchProc](cast[pointer](slot))
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
proc QTransposeProxyModelroleNames*(self: gen_qtransposeproxymodel_types.QTransposeProxyModel, ): Table[cint,seq[byte]] =
  var v_mm = fQTransposeProxyModel_virtualbase_roleNames(self.h)
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

type QTransposeProxyModelroleNamesProc* = proc(): Table[cint,seq[byte]]
proc onroleNames*(self: gen_qtransposeproxymodel_types.QTransposeProxyModel, slot: QTransposeProxyModelroleNamesProc) =
  # TODO check subclass
  var tmp = new QTransposeProxyModelroleNamesProc
  tmp[] = slot
  GC_ref(tmp)
  fcQTransposeProxyModel_override_virtual_roleNames(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QTransposeProxyModel_roleNames(self: ptr cQTransposeProxyModel, slot: int): struct_miqt_map {.exportc: "miqt_exec_callback_QTransposeProxyModel_roleNames ".} =
  var nimfunc = cast[ptr QTransposeProxyModelroleNamesProc](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )
  var virtualReturn_Keys_CArray = newSeq[cint](len(virtualReturn))
  var virtualReturn_Values_CArray = newSeq[struct_miqt_string](len(virtualReturn))
  var virtualReturn_ctr = 0
  for virtualReturnk, virtualReturnv in virtualReturn:
    virtualReturn_Keys_CArray[virtualReturn_ctr] = virtualReturn_k
    virtualReturn_Values_CArray[virtualReturn_ctr] = struct_miqt_string(data: cast[cstring](if len(virtualReturn_v) == 0: nil else: unsafeAddr virtualReturn_v[0]), len: csize_t(len(virtualReturn_v)))
    virtualReturn_ctr += 1


  struct_miqt_map(len: csize_t(len(virtualReturn)),keys: if len(virtualReturn) == 0: nil else: addr(virtualReturn_Keys_CArray[0]), values: if len(virtualReturn) == 0: nil else: addr(virtualReturn_Values_CArray[0]),)
proc QTransposeProxyModelevent*(self: gen_qtransposeproxymodel_types.QTransposeProxyModel, event: gen_qcoreevent_types.QEvent): bool =
  fQTransposeProxyModel_virtualbase_event(self.h, event.h)

type QTransposeProxyModeleventProc* = proc(event: gen_qcoreevent_types.QEvent): bool
proc onevent*(self: gen_qtransposeproxymodel_types.QTransposeProxyModel, slot: QTransposeProxyModeleventProc) =
  # TODO check subclass
  var tmp = new QTransposeProxyModeleventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQTransposeProxyModel_override_virtual_event(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QTransposeProxyModel_event(self: ptr cQTransposeProxyModel, slot: int, event: pointer): bool {.exportc: "miqt_exec_callback_QTransposeProxyModel_event ".} =
  var nimfunc = cast[ptr QTransposeProxyModeleventProc](cast[pointer](slot))
  let slotval1 = gen_qcoreevent_types.QEvent(h: event)


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn
proc QTransposeProxyModeleventFilter*(self: gen_qtransposeproxymodel_types.QTransposeProxyModel, watched: gen_qobject_types.QObject, event: gen_qcoreevent_types.QEvent): bool =
  fQTransposeProxyModel_virtualbase_eventFilter(self.h, watched.h, event.h)

type QTransposeProxyModeleventFilterProc* = proc(watched: gen_qobject_types.QObject, event: gen_qcoreevent_types.QEvent): bool
proc oneventFilter*(self: gen_qtransposeproxymodel_types.QTransposeProxyModel, slot: QTransposeProxyModeleventFilterProc) =
  # TODO check subclass
  var tmp = new QTransposeProxyModeleventFilterProc
  tmp[] = slot
  GC_ref(tmp)
  fcQTransposeProxyModel_override_virtual_eventFilter(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QTransposeProxyModel_eventFilter(self: ptr cQTransposeProxyModel, slot: int, watched: pointer, event: pointer): bool {.exportc: "miqt_exec_callback_QTransposeProxyModel_eventFilter ".} =
  var nimfunc = cast[ptr QTransposeProxyModeleventFilterProc](cast[pointer](slot))
  let slotval1 = gen_qobject_types.QObject(h: watched)

  let slotval2 = gen_qcoreevent_types.QEvent(h: event)


  let virtualReturn = nimfunc[](slotval1, slotval2 )

  virtualReturn
proc QTransposeProxyModeltimerEvent*(self: gen_qtransposeproxymodel_types.QTransposeProxyModel, event: gen_qcoreevent_types.QTimerEvent): void =
  fQTransposeProxyModel_virtualbase_timerEvent(self.h, event.h)

type QTransposeProxyModeltimerEventProc* = proc(event: gen_qcoreevent_types.QTimerEvent): void
proc ontimerEvent*(self: gen_qtransposeproxymodel_types.QTransposeProxyModel, slot: QTransposeProxyModeltimerEventProc) =
  # TODO check subclass
  var tmp = new QTransposeProxyModeltimerEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQTransposeProxyModel_override_virtual_timerEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QTransposeProxyModel_timerEvent(self: ptr cQTransposeProxyModel, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QTransposeProxyModel_timerEvent ".} =
  var nimfunc = cast[ptr QTransposeProxyModeltimerEventProc](cast[pointer](slot))
  let slotval1 = gen_qcoreevent_types.QTimerEvent(h: event)


  nimfunc[](slotval1)
proc QTransposeProxyModelchildEvent*(self: gen_qtransposeproxymodel_types.QTransposeProxyModel, event: gen_qcoreevent_types.QChildEvent): void =
  fQTransposeProxyModel_virtualbase_childEvent(self.h, event.h)

type QTransposeProxyModelchildEventProc* = proc(event: gen_qcoreevent_types.QChildEvent): void
proc onchildEvent*(self: gen_qtransposeproxymodel_types.QTransposeProxyModel, slot: QTransposeProxyModelchildEventProc) =
  # TODO check subclass
  var tmp = new QTransposeProxyModelchildEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQTransposeProxyModel_override_virtual_childEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QTransposeProxyModel_childEvent(self: ptr cQTransposeProxyModel, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QTransposeProxyModel_childEvent ".} =
  var nimfunc = cast[ptr QTransposeProxyModelchildEventProc](cast[pointer](slot))
  let slotval1 = gen_qcoreevent_types.QChildEvent(h: event)


  nimfunc[](slotval1)
proc QTransposeProxyModelcustomEvent*(self: gen_qtransposeproxymodel_types.QTransposeProxyModel, event: gen_qcoreevent_types.QEvent): void =
  fQTransposeProxyModel_virtualbase_customEvent(self.h, event.h)

type QTransposeProxyModelcustomEventProc* = proc(event: gen_qcoreevent_types.QEvent): void
proc oncustomEvent*(self: gen_qtransposeproxymodel_types.QTransposeProxyModel, slot: QTransposeProxyModelcustomEventProc) =
  # TODO check subclass
  var tmp = new QTransposeProxyModelcustomEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQTransposeProxyModel_override_virtual_customEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QTransposeProxyModel_customEvent(self: ptr cQTransposeProxyModel, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QTransposeProxyModel_customEvent ".} =
  var nimfunc = cast[ptr QTransposeProxyModelcustomEventProc](cast[pointer](slot))
  let slotval1 = gen_qcoreevent_types.QEvent(h: event)


  nimfunc[](slotval1)
proc QTransposeProxyModelconnectNotify*(self: gen_qtransposeproxymodel_types.QTransposeProxyModel, signal: gen_qmetaobject_types.QMetaMethod): void =
  fQTransposeProxyModel_virtualbase_connectNotify(self.h, signal.h)

type QTransposeProxyModelconnectNotifyProc* = proc(signal: gen_qmetaobject_types.QMetaMethod): void
proc onconnectNotify*(self: gen_qtransposeproxymodel_types.QTransposeProxyModel, slot: QTransposeProxyModelconnectNotifyProc) =
  # TODO check subclass
  var tmp = new QTransposeProxyModelconnectNotifyProc
  tmp[] = slot
  GC_ref(tmp)
  fcQTransposeProxyModel_override_virtual_connectNotify(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QTransposeProxyModel_connectNotify(self: ptr cQTransposeProxyModel, slot: int, signal: pointer): void {.exportc: "miqt_exec_callback_QTransposeProxyModel_connectNotify ".} =
  var nimfunc = cast[ptr QTransposeProxyModelconnectNotifyProc](cast[pointer](slot))
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal)


  nimfunc[](slotval1)
proc QTransposeProxyModeldisconnectNotify*(self: gen_qtransposeproxymodel_types.QTransposeProxyModel, signal: gen_qmetaobject_types.QMetaMethod): void =
  fQTransposeProxyModel_virtualbase_disconnectNotify(self.h, signal.h)

type QTransposeProxyModeldisconnectNotifyProc* = proc(signal: gen_qmetaobject_types.QMetaMethod): void
proc ondisconnectNotify*(self: gen_qtransposeproxymodel_types.QTransposeProxyModel, slot: QTransposeProxyModeldisconnectNotifyProc) =
  # TODO check subclass
  var tmp = new QTransposeProxyModeldisconnectNotifyProc
  tmp[] = slot
  GC_ref(tmp)
  fcQTransposeProxyModel_override_virtual_disconnectNotify(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QTransposeProxyModel_disconnectNotify(self: ptr cQTransposeProxyModel, slot: int, signal: pointer): void {.exportc: "miqt_exec_callback_QTransposeProxyModel_disconnectNotify ".} =
  var nimfunc = cast[ptr QTransposeProxyModeldisconnectNotifyProc](cast[pointer](slot))
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal)


  nimfunc[](slotval1)
proc delete*(self: gen_qtransposeproxymodel_types.QTransposeProxyModel) =
  fcQTransposeProxyModel_delete(self.h)
