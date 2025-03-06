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
{.compile("gen_qconcatenatetablesproxymodel.cpp", cflags).}


import ./gen_qconcatenatetablesproxymodel_types
export gen_qconcatenatetablesproxymodel_types

import
  ./gen_qabstractitemmodel,
  ./gen_qcoreevent_types,
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
  gen_qmetaobject_types,
  gen_qmimedata_types,
  gen_qobject_types,
  gen_qobjectdefs_types,
  gen_qsize_types,
  gen_qvariant_types

type cQConcatenateTablesProxyModel*{.exportc: "QConcatenateTablesProxyModel", incompleteStruct.} = object

proc fcQConcatenateTablesProxyModel_new(): ptr cQConcatenateTablesProxyModel {.importc: "QConcatenateTablesProxyModel_new".}
proc fcQConcatenateTablesProxyModel_new2(parent: pointer): ptr cQConcatenateTablesProxyModel {.importc: "QConcatenateTablesProxyModel_new2".}
proc fcQConcatenateTablesProxyModel_metaObject(self: pointer, ): pointer {.importc: "QConcatenateTablesProxyModel_metaObject".}
proc fcQConcatenateTablesProxyModel_metacast(self: pointer, param1: cstring): pointer {.importc: "QConcatenateTablesProxyModel_metacast".}
proc fcQConcatenateTablesProxyModel_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.importc: "QConcatenateTablesProxyModel_metacall".}
proc fcQConcatenateTablesProxyModel_tr(s: cstring): struct_miqt_string {.importc: "QConcatenateTablesProxyModel_tr".}
proc fcQConcatenateTablesProxyModel_trUtf8(s: cstring): struct_miqt_string {.importc: "QConcatenateTablesProxyModel_trUtf8".}
proc fcQConcatenateTablesProxyModel_sourceModels(self: pointer, ): struct_miqt_array {.importc: "QConcatenateTablesProxyModel_sourceModels".}
proc fcQConcatenateTablesProxyModel_addSourceModel(self: pointer, sourceModel: pointer): void {.importc: "QConcatenateTablesProxyModel_addSourceModel".}
proc fcQConcatenateTablesProxyModel_removeSourceModel(self: pointer, sourceModel: pointer): void {.importc: "QConcatenateTablesProxyModel_removeSourceModel".}
proc fcQConcatenateTablesProxyModel_mapFromSource(self: pointer, sourceIndex: pointer): pointer {.importc: "QConcatenateTablesProxyModel_mapFromSource".}
proc fcQConcatenateTablesProxyModel_mapToSource(self: pointer, proxyIndex: pointer): pointer {.importc: "QConcatenateTablesProxyModel_mapToSource".}
proc fcQConcatenateTablesProxyModel_data(self: pointer, index: pointer, role: cint): pointer {.importc: "QConcatenateTablesProxyModel_data".}
proc fcQConcatenateTablesProxyModel_setData(self: pointer, index: pointer, value: pointer, role: cint): bool {.importc: "QConcatenateTablesProxyModel_setData".}
proc fcQConcatenateTablesProxyModel_itemData(self: pointer, proxyIndex: pointer): struct_miqt_map {.importc: "QConcatenateTablesProxyModel_itemData".}
proc fcQConcatenateTablesProxyModel_setItemData(self: pointer, index: pointer, roles: struct_miqt_map): bool {.importc: "QConcatenateTablesProxyModel_setItemData".}
proc fcQConcatenateTablesProxyModel_flags(self: pointer, index: pointer): cint {.importc: "QConcatenateTablesProxyModel_flags".}
proc fcQConcatenateTablesProxyModel_index(self: pointer, row: cint, column: cint, parent: pointer): pointer {.importc: "QConcatenateTablesProxyModel_index".}
proc fcQConcatenateTablesProxyModel_parent(self: pointer, index: pointer): pointer {.importc: "QConcatenateTablesProxyModel_parent".}
proc fcQConcatenateTablesProxyModel_rowCount(self: pointer, parent: pointer): cint {.importc: "QConcatenateTablesProxyModel_rowCount".}
proc fcQConcatenateTablesProxyModel_headerData(self: pointer, section: cint, orientation: cint, role: cint): pointer {.importc: "QConcatenateTablesProxyModel_headerData".}
proc fcQConcatenateTablesProxyModel_columnCount(self: pointer, parent: pointer): cint {.importc: "QConcatenateTablesProxyModel_columnCount".}
proc fcQConcatenateTablesProxyModel_mimeTypes(self: pointer, ): struct_miqt_array {.importc: "QConcatenateTablesProxyModel_mimeTypes".}
proc fcQConcatenateTablesProxyModel_mimeData(self: pointer, indexes: struct_miqt_array): pointer {.importc: "QConcatenateTablesProxyModel_mimeData".}
proc fcQConcatenateTablesProxyModel_canDropMimeData(self: pointer, data: pointer, action: cint, row: cint, column: cint, parent: pointer): bool {.importc: "QConcatenateTablesProxyModel_canDropMimeData".}
proc fcQConcatenateTablesProxyModel_dropMimeData(self: pointer, data: pointer, action: cint, row: cint, column: cint, parent: pointer): bool {.importc: "QConcatenateTablesProxyModel_dropMimeData".}
proc fcQConcatenateTablesProxyModel_span(self: pointer, index: pointer): pointer {.importc: "QConcatenateTablesProxyModel_span".}
proc fcQConcatenateTablesProxyModel_tr2(s: cstring, c: cstring): struct_miqt_string {.importc: "QConcatenateTablesProxyModel_tr2".}
proc fcQConcatenateTablesProxyModel_tr3(s: cstring, c: cstring, n: cint): struct_miqt_string {.importc: "QConcatenateTablesProxyModel_tr3".}
proc fcQConcatenateTablesProxyModel_trUtf82(s: cstring, c: cstring): struct_miqt_string {.importc: "QConcatenateTablesProxyModel_trUtf82".}
proc fcQConcatenateTablesProxyModel_trUtf83(s: cstring, c: cstring, n: cint): struct_miqt_string {.importc: "QConcatenateTablesProxyModel_trUtf83".}
proc fQConcatenateTablesProxyModel_virtualbase_metaObject(self: pointer, ): pointer{.importc: "QConcatenateTablesProxyModel_virtualbase_metaObject".}
proc fcQConcatenateTablesProxyModel_override_virtual_metaObject(self: pointer, slot: int) {.importc: "QConcatenateTablesProxyModel_override_virtual_metaObject".}
proc fQConcatenateTablesProxyModel_virtualbase_metacast(self: pointer, param1: cstring): pointer{.importc: "QConcatenateTablesProxyModel_virtualbase_metacast".}
proc fcQConcatenateTablesProxyModel_override_virtual_metacast(self: pointer, slot: int) {.importc: "QConcatenateTablesProxyModel_override_virtual_metacast".}
proc fQConcatenateTablesProxyModel_virtualbase_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint{.importc: "QConcatenateTablesProxyModel_virtualbase_metacall".}
proc fcQConcatenateTablesProxyModel_override_virtual_metacall(self: pointer, slot: int) {.importc: "QConcatenateTablesProxyModel_override_virtual_metacall".}
proc fQConcatenateTablesProxyModel_virtualbase_data(self: pointer, index: pointer, role: cint): pointer{.importc: "QConcatenateTablesProxyModel_virtualbase_data".}
proc fcQConcatenateTablesProxyModel_override_virtual_data(self: pointer, slot: int) {.importc: "QConcatenateTablesProxyModel_override_virtual_data".}
proc fQConcatenateTablesProxyModel_virtualbase_setData(self: pointer, index: pointer, value: pointer, role: cint): bool{.importc: "QConcatenateTablesProxyModel_virtualbase_setData".}
proc fcQConcatenateTablesProxyModel_override_virtual_setData(self: pointer, slot: int) {.importc: "QConcatenateTablesProxyModel_override_virtual_setData".}
proc fQConcatenateTablesProxyModel_virtualbase_itemData(self: pointer, proxyIndex: pointer): struct_miqt_map{.importc: "QConcatenateTablesProxyModel_virtualbase_itemData".}
proc fcQConcatenateTablesProxyModel_override_virtual_itemData(self: pointer, slot: int) {.importc: "QConcatenateTablesProxyModel_override_virtual_itemData".}
proc fQConcatenateTablesProxyModel_virtualbase_setItemData(self: pointer, index: pointer, roles: struct_miqt_map): bool{.importc: "QConcatenateTablesProxyModel_virtualbase_setItemData".}
proc fcQConcatenateTablesProxyModel_override_virtual_setItemData(self: pointer, slot: int) {.importc: "QConcatenateTablesProxyModel_override_virtual_setItemData".}
proc fQConcatenateTablesProxyModel_virtualbase_flags(self: pointer, index: pointer): cint{.importc: "QConcatenateTablesProxyModel_virtualbase_flags".}
proc fcQConcatenateTablesProxyModel_override_virtual_flags(self: pointer, slot: int) {.importc: "QConcatenateTablesProxyModel_override_virtual_flags".}
proc fQConcatenateTablesProxyModel_virtualbase_index(self: pointer, row: cint, column: cint, parent: pointer): pointer{.importc: "QConcatenateTablesProxyModel_virtualbase_index".}
proc fcQConcatenateTablesProxyModel_override_virtual_index(self: pointer, slot: int) {.importc: "QConcatenateTablesProxyModel_override_virtual_index".}
proc fQConcatenateTablesProxyModel_virtualbase_parent(self: pointer, index: pointer): pointer{.importc: "QConcatenateTablesProxyModel_virtualbase_parent".}
proc fcQConcatenateTablesProxyModel_override_virtual_parent(self: pointer, slot: int) {.importc: "QConcatenateTablesProxyModel_override_virtual_parent".}
proc fQConcatenateTablesProxyModel_virtualbase_rowCount(self: pointer, parent: pointer): cint{.importc: "QConcatenateTablesProxyModel_virtualbase_rowCount".}
proc fcQConcatenateTablesProxyModel_override_virtual_rowCount(self: pointer, slot: int) {.importc: "QConcatenateTablesProxyModel_override_virtual_rowCount".}
proc fQConcatenateTablesProxyModel_virtualbase_headerData(self: pointer, section: cint, orientation: cint, role: cint): pointer{.importc: "QConcatenateTablesProxyModel_virtualbase_headerData".}
proc fcQConcatenateTablesProxyModel_override_virtual_headerData(self: pointer, slot: int) {.importc: "QConcatenateTablesProxyModel_override_virtual_headerData".}
proc fQConcatenateTablesProxyModel_virtualbase_columnCount(self: pointer, parent: pointer): cint{.importc: "QConcatenateTablesProxyModel_virtualbase_columnCount".}
proc fcQConcatenateTablesProxyModel_override_virtual_columnCount(self: pointer, slot: int) {.importc: "QConcatenateTablesProxyModel_override_virtual_columnCount".}
proc fQConcatenateTablesProxyModel_virtualbase_mimeTypes(self: pointer, ): struct_miqt_array{.importc: "QConcatenateTablesProxyModel_virtualbase_mimeTypes".}
proc fcQConcatenateTablesProxyModel_override_virtual_mimeTypes(self: pointer, slot: int) {.importc: "QConcatenateTablesProxyModel_override_virtual_mimeTypes".}
proc fQConcatenateTablesProxyModel_virtualbase_mimeData(self: pointer, indexes: struct_miqt_array): pointer{.importc: "QConcatenateTablesProxyModel_virtualbase_mimeData".}
proc fcQConcatenateTablesProxyModel_override_virtual_mimeData(self: pointer, slot: int) {.importc: "QConcatenateTablesProxyModel_override_virtual_mimeData".}
proc fQConcatenateTablesProxyModel_virtualbase_canDropMimeData(self: pointer, data: pointer, action: cint, row: cint, column: cint, parent: pointer): bool{.importc: "QConcatenateTablesProxyModel_virtualbase_canDropMimeData".}
proc fcQConcatenateTablesProxyModel_override_virtual_canDropMimeData(self: pointer, slot: int) {.importc: "QConcatenateTablesProxyModel_override_virtual_canDropMimeData".}
proc fQConcatenateTablesProxyModel_virtualbase_dropMimeData(self: pointer, data: pointer, action: cint, row: cint, column: cint, parent: pointer): bool{.importc: "QConcatenateTablesProxyModel_virtualbase_dropMimeData".}
proc fcQConcatenateTablesProxyModel_override_virtual_dropMimeData(self: pointer, slot: int) {.importc: "QConcatenateTablesProxyModel_override_virtual_dropMimeData".}
proc fQConcatenateTablesProxyModel_virtualbase_span(self: pointer, index: pointer): pointer{.importc: "QConcatenateTablesProxyModel_virtualbase_span".}
proc fcQConcatenateTablesProxyModel_override_virtual_span(self: pointer, slot: int) {.importc: "QConcatenateTablesProxyModel_override_virtual_span".}
proc fQConcatenateTablesProxyModel_virtualbase_sibling(self: pointer, row: cint, column: cint, idx: pointer): pointer{.importc: "QConcatenateTablesProxyModel_virtualbase_sibling".}
proc fcQConcatenateTablesProxyModel_override_virtual_sibling(self: pointer, slot: int) {.importc: "QConcatenateTablesProxyModel_override_virtual_sibling".}
proc fQConcatenateTablesProxyModel_virtualbase_hasChildren(self: pointer, parent: pointer): bool{.importc: "QConcatenateTablesProxyModel_virtualbase_hasChildren".}
proc fcQConcatenateTablesProxyModel_override_virtual_hasChildren(self: pointer, slot: int) {.importc: "QConcatenateTablesProxyModel_override_virtual_hasChildren".}
proc fQConcatenateTablesProxyModel_virtualbase_setHeaderData(self: pointer, section: cint, orientation: cint, value: pointer, role: cint): bool{.importc: "QConcatenateTablesProxyModel_virtualbase_setHeaderData".}
proc fcQConcatenateTablesProxyModel_override_virtual_setHeaderData(self: pointer, slot: int) {.importc: "QConcatenateTablesProxyModel_override_virtual_setHeaderData".}
proc fQConcatenateTablesProxyModel_virtualbase_supportedDropActions(self: pointer, ): cint{.importc: "QConcatenateTablesProxyModel_virtualbase_supportedDropActions".}
proc fcQConcatenateTablesProxyModel_override_virtual_supportedDropActions(self: pointer, slot: int) {.importc: "QConcatenateTablesProxyModel_override_virtual_supportedDropActions".}
proc fQConcatenateTablesProxyModel_virtualbase_supportedDragActions(self: pointer, ): cint{.importc: "QConcatenateTablesProxyModel_virtualbase_supportedDragActions".}
proc fcQConcatenateTablesProxyModel_override_virtual_supportedDragActions(self: pointer, slot: int) {.importc: "QConcatenateTablesProxyModel_override_virtual_supportedDragActions".}
proc fQConcatenateTablesProxyModel_virtualbase_insertRows(self: pointer, row: cint, count: cint, parent: pointer): bool{.importc: "QConcatenateTablesProxyModel_virtualbase_insertRows".}
proc fcQConcatenateTablesProxyModel_override_virtual_insertRows(self: pointer, slot: int) {.importc: "QConcatenateTablesProxyModel_override_virtual_insertRows".}
proc fQConcatenateTablesProxyModel_virtualbase_insertColumns(self: pointer, column: cint, count: cint, parent: pointer): bool{.importc: "QConcatenateTablesProxyModel_virtualbase_insertColumns".}
proc fcQConcatenateTablesProxyModel_override_virtual_insertColumns(self: pointer, slot: int) {.importc: "QConcatenateTablesProxyModel_override_virtual_insertColumns".}
proc fQConcatenateTablesProxyModel_virtualbase_removeRows(self: pointer, row: cint, count: cint, parent: pointer): bool{.importc: "QConcatenateTablesProxyModel_virtualbase_removeRows".}
proc fcQConcatenateTablesProxyModel_override_virtual_removeRows(self: pointer, slot: int) {.importc: "QConcatenateTablesProxyModel_override_virtual_removeRows".}
proc fQConcatenateTablesProxyModel_virtualbase_removeColumns(self: pointer, column: cint, count: cint, parent: pointer): bool{.importc: "QConcatenateTablesProxyModel_virtualbase_removeColumns".}
proc fcQConcatenateTablesProxyModel_override_virtual_removeColumns(self: pointer, slot: int) {.importc: "QConcatenateTablesProxyModel_override_virtual_removeColumns".}
proc fQConcatenateTablesProxyModel_virtualbase_moveRows(self: pointer, sourceParent: pointer, sourceRow: cint, count: cint, destinationParent: pointer, destinationChild: cint): bool{.importc: "QConcatenateTablesProxyModel_virtualbase_moveRows".}
proc fcQConcatenateTablesProxyModel_override_virtual_moveRows(self: pointer, slot: int) {.importc: "QConcatenateTablesProxyModel_override_virtual_moveRows".}
proc fQConcatenateTablesProxyModel_virtualbase_moveColumns(self: pointer, sourceParent: pointer, sourceColumn: cint, count: cint, destinationParent: pointer, destinationChild: cint): bool{.importc: "QConcatenateTablesProxyModel_virtualbase_moveColumns".}
proc fcQConcatenateTablesProxyModel_override_virtual_moveColumns(self: pointer, slot: int) {.importc: "QConcatenateTablesProxyModel_override_virtual_moveColumns".}
proc fQConcatenateTablesProxyModel_virtualbase_fetchMore(self: pointer, parent: pointer): void{.importc: "QConcatenateTablesProxyModel_virtualbase_fetchMore".}
proc fcQConcatenateTablesProxyModel_override_virtual_fetchMore(self: pointer, slot: int) {.importc: "QConcatenateTablesProxyModel_override_virtual_fetchMore".}
proc fQConcatenateTablesProxyModel_virtualbase_canFetchMore(self: pointer, parent: pointer): bool{.importc: "QConcatenateTablesProxyModel_virtualbase_canFetchMore".}
proc fcQConcatenateTablesProxyModel_override_virtual_canFetchMore(self: pointer, slot: int) {.importc: "QConcatenateTablesProxyModel_override_virtual_canFetchMore".}
proc fQConcatenateTablesProxyModel_virtualbase_sort(self: pointer, column: cint, order: cint): void{.importc: "QConcatenateTablesProxyModel_virtualbase_sort".}
proc fcQConcatenateTablesProxyModel_override_virtual_sort(self: pointer, slot: int) {.importc: "QConcatenateTablesProxyModel_override_virtual_sort".}
proc fQConcatenateTablesProxyModel_virtualbase_buddy(self: pointer, index: pointer): pointer{.importc: "QConcatenateTablesProxyModel_virtualbase_buddy".}
proc fcQConcatenateTablesProxyModel_override_virtual_buddy(self: pointer, slot: int) {.importc: "QConcatenateTablesProxyModel_override_virtual_buddy".}
proc fQConcatenateTablesProxyModel_virtualbase_match(self: pointer, start: pointer, role: cint, value: pointer, hits: cint, flags: cint): struct_miqt_array{.importc: "QConcatenateTablesProxyModel_virtualbase_match".}
proc fcQConcatenateTablesProxyModel_override_virtual_match(self: pointer, slot: int) {.importc: "QConcatenateTablesProxyModel_override_virtual_match".}
proc fQConcatenateTablesProxyModel_virtualbase_roleNames(self: pointer, ): struct_miqt_map{.importc: "QConcatenateTablesProxyModel_virtualbase_roleNames".}
proc fcQConcatenateTablesProxyModel_override_virtual_roleNames(self: pointer, slot: int) {.importc: "QConcatenateTablesProxyModel_override_virtual_roleNames".}
proc fQConcatenateTablesProxyModel_virtualbase_submit(self: pointer, ): bool{.importc: "QConcatenateTablesProxyModel_virtualbase_submit".}
proc fcQConcatenateTablesProxyModel_override_virtual_submit(self: pointer, slot: int) {.importc: "QConcatenateTablesProxyModel_override_virtual_submit".}
proc fQConcatenateTablesProxyModel_virtualbase_revert(self: pointer, ): void{.importc: "QConcatenateTablesProxyModel_virtualbase_revert".}
proc fcQConcatenateTablesProxyModel_override_virtual_revert(self: pointer, slot: int) {.importc: "QConcatenateTablesProxyModel_override_virtual_revert".}
proc fQConcatenateTablesProxyModel_virtualbase_event(self: pointer, event: pointer): bool{.importc: "QConcatenateTablesProxyModel_virtualbase_event".}
proc fcQConcatenateTablesProxyModel_override_virtual_event(self: pointer, slot: int) {.importc: "QConcatenateTablesProxyModel_override_virtual_event".}
proc fQConcatenateTablesProxyModel_virtualbase_eventFilter(self: pointer, watched: pointer, event: pointer): bool{.importc: "QConcatenateTablesProxyModel_virtualbase_eventFilter".}
proc fcQConcatenateTablesProxyModel_override_virtual_eventFilter(self: pointer, slot: int) {.importc: "QConcatenateTablesProxyModel_override_virtual_eventFilter".}
proc fQConcatenateTablesProxyModel_virtualbase_timerEvent(self: pointer, event: pointer): void{.importc: "QConcatenateTablesProxyModel_virtualbase_timerEvent".}
proc fcQConcatenateTablesProxyModel_override_virtual_timerEvent(self: pointer, slot: int) {.importc: "QConcatenateTablesProxyModel_override_virtual_timerEvent".}
proc fQConcatenateTablesProxyModel_virtualbase_childEvent(self: pointer, event: pointer): void{.importc: "QConcatenateTablesProxyModel_virtualbase_childEvent".}
proc fcQConcatenateTablesProxyModel_override_virtual_childEvent(self: pointer, slot: int) {.importc: "QConcatenateTablesProxyModel_override_virtual_childEvent".}
proc fQConcatenateTablesProxyModel_virtualbase_customEvent(self: pointer, event: pointer): void{.importc: "QConcatenateTablesProxyModel_virtualbase_customEvent".}
proc fcQConcatenateTablesProxyModel_override_virtual_customEvent(self: pointer, slot: int) {.importc: "QConcatenateTablesProxyModel_override_virtual_customEvent".}
proc fQConcatenateTablesProxyModel_virtualbase_connectNotify(self: pointer, signal: pointer): void{.importc: "QConcatenateTablesProxyModel_virtualbase_connectNotify".}
proc fcQConcatenateTablesProxyModel_override_virtual_connectNotify(self: pointer, slot: int) {.importc: "QConcatenateTablesProxyModel_override_virtual_connectNotify".}
proc fQConcatenateTablesProxyModel_virtualbase_disconnectNotify(self: pointer, signal: pointer): void{.importc: "QConcatenateTablesProxyModel_virtualbase_disconnectNotify".}
proc fcQConcatenateTablesProxyModel_override_virtual_disconnectNotify(self: pointer, slot: int) {.importc: "QConcatenateTablesProxyModel_override_virtual_disconnectNotify".}
proc fcQConcatenateTablesProxyModel_staticMetaObject(): pointer {.importc: "QConcatenateTablesProxyModel_staticMetaObject".}
proc fcQConcatenateTablesProxyModel_delete(self: pointer) {.importc: "QConcatenateTablesProxyModel_delete".}


func init*(T: type gen_qconcatenatetablesproxymodel_types.QConcatenateTablesProxyModel, h: ptr cQConcatenateTablesProxyModel): gen_qconcatenatetablesproxymodel_types.QConcatenateTablesProxyModel =
  T(h: h)
proc create*(T: type gen_qconcatenatetablesproxymodel_types.QConcatenateTablesProxyModel, ): gen_qconcatenatetablesproxymodel_types.QConcatenateTablesProxyModel =
  gen_qconcatenatetablesproxymodel_types.QConcatenateTablesProxyModel.init(fcQConcatenateTablesProxyModel_new())

proc create*(T: type gen_qconcatenatetablesproxymodel_types.QConcatenateTablesProxyModel, parent: gen_qobject_types.QObject): gen_qconcatenatetablesproxymodel_types.QConcatenateTablesProxyModel =
  gen_qconcatenatetablesproxymodel_types.QConcatenateTablesProxyModel.init(fcQConcatenateTablesProxyModel_new2(parent.h))

proc metaObject*(self: gen_qconcatenatetablesproxymodel_types.QConcatenateTablesProxyModel, ): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQConcatenateTablesProxyModel_metaObject(self.h))

proc metacast*(self: gen_qconcatenatetablesproxymodel_types.QConcatenateTablesProxyModel, param1: cstring): pointer =
  fcQConcatenateTablesProxyModel_metacast(self.h, param1)

proc metacall*(self: gen_qconcatenatetablesproxymodel_types.QConcatenateTablesProxyModel, param1: cint, param2: cint, param3: pointer): cint =
  fcQConcatenateTablesProxyModel_metacall(self.h, cint(param1), param2, param3)

proc tr*(_: type gen_qconcatenatetablesproxymodel_types.QConcatenateTablesProxyModel, s: cstring): string =
  let v_ms = fcQConcatenateTablesProxyModel_tr(s)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc trUtf8*(_: type gen_qconcatenatetablesproxymodel_types.QConcatenateTablesProxyModel, s: cstring): string =
  let v_ms = fcQConcatenateTablesProxyModel_trUtf8(s)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc sourceModels*(self: gen_qconcatenatetablesproxymodel_types.QConcatenateTablesProxyModel, ): seq[gen_qabstractitemmodel_types.QAbstractItemModel] =
  var v_ma = fcQConcatenateTablesProxyModel_sourceModels(self.h)
  var vx_ret = newSeq[gen_qabstractitemmodel_types.QAbstractItemModel](int(v_ma.len))
  let v_outCast = cast[ptr UncheckedArray[pointer]](v_ma.data)
  for i in 0 ..< v_ma.len:
    vx_ret[i] = gen_qabstractitemmodel_types.QAbstractItemModel(h: v_outCast[i])
  vx_ret

proc addSourceModel*(self: gen_qconcatenatetablesproxymodel_types.QConcatenateTablesProxyModel, sourceModel: gen_qabstractitemmodel_types.QAbstractItemModel): void =
  fcQConcatenateTablesProxyModel_addSourceModel(self.h, sourceModel.h)

proc removeSourceModel*(self: gen_qconcatenatetablesproxymodel_types.QConcatenateTablesProxyModel, sourceModel: gen_qabstractitemmodel_types.QAbstractItemModel): void =
  fcQConcatenateTablesProxyModel_removeSourceModel(self.h, sourceModel.h)

proc mapFromSource*(self: gen_qconcatenatetablesproxymodel_types.QConcatenateTablesProxyModel, sourceIndex: gen_qabstractitemmodel_types.QModelIndex): gen_qabstractitemmodel_types.QModelIndex =
  gen_qabstractitemmodel_types.QModelIndex(h: fcQConcatenateTablesProxyModel_mapFromSource(self.h, sourceIndex.h))

proc mapToSource*(self: gen_qconcatenatetablesproxymodel_types.QConcatenateTablesProxyModel, proxyIndex: gen_qabstractitemmodel_types.QModelIndex): gen_qabstractitemmodel_types.QModelIndex =
  gen_qabstractitemmodel_types.QModelIndex(h: fcQConcatenateTablesProxyModel_mapToSource(self.h, proxyIndex.h))

proc data*(self: gen_qconcatenatetablesproxymodel_types.QConcatenateTablesProxyModel, index: gen_qabstractitemmodel_types.QModelIndex, role: cint): gen_qvariant_types.QVariant =
  gen_qvariant_types.QVariant(h: fcQConcatenateTablesProxyModel_data(self.h, index.h, role))

proc setData*(self: gen_qconcatenatetablesproxymodel_types.QConcatenateTablesProxyModel, index: gen_qabstractitemmodel_types.QModelIndex, value: gen_qvariant_types.QVariant, role: cint): bool =
  fcQConcatenateTablesProxyModel_setData(self.h, index.h, value.h, role)

proc itemData*(self: gen_qconcatenatetablesproxymodel_types.QConcatenateTablesProxyModel, proxyIndex: gen_qabstractitemmodel_types.QModelIndex): Table[cint,gen_qvariant_types.QVariant] =
  var v_mm = fcQConcatenateTablesProxyModel_itemData(self.h, proxyIndex.h)
  var vx_ret: Table[cint, gen_qvariant_types.QVariant]
  var v_Keys = cast[ptr UncheckedArray[cint]](v_mm.keys)
  var v_Values = cast[ptr UncheckedArray[pointer]](v_mm.values)
  for i in 0..<v_mm.len:
    var v_entry_Key = v_Keys[i]

    var v_entry_Value = gen_qvariant_types.QVariant(h: v_Values[i])

    vx_ret[v_entry_Key] = v_entry_Value
  vx_ret

proc setItemData*(self: gen_qconcatenatetablesproxymodel_types.QConcatenateTablesProxyModel, index: gen_qabstractitemmodel_types.QModelIndex, roles: Table[cint,gen_qvariant_types.QVariant]): bool =
  var roles_Keys_CArray = newSeq[cint](len(roles))
  var roles_Values_CArray = newSeq[pointer](len(roles))
  var roles_ctr = 0
  for rolesk, rolesv in roles:
    roles_Keys_CArray[roles_ctr] = roles_k
    roles_Values_CArray[roles_ctr] = roles_v.h
    roles_ctr += 1

  fcQConcatenateTablesProxyModel_setItemData(self.h, index.h, struct_miqt_map(len: csize_t(len(roles)),keys: if len(roles) == 0: nil else: addr(roles_Keys_CArray[0]), values: if len(roles) == 0: nil else: addr(roles_Values_CArray[0]),))

proc flags*(self: gen_qconcatenatetablesproxymodel_types.QConcatenateTablesProxyModel, index: gen_qabstractitemmodel_types.QModelIndex): cint =
  cint(fcQConcatenateTablesProxyModel_flags(self.h, index.h))

proc index*(self: gen_qconcatenatetablesproxymodel_types.QConcatenateTablesProxyModel, row: cint, column: cint, parent: gen_qabstractitemmodel_types.QModelIndex): gen_qabstractitemmodel_types.QModelIndex =
  gen_qabstractitemmodel_types.QModelIndex(h: fcQConcatenateTablesProxyModel_index(self.h, row, column, parent.h))

proc parent*(self: gen_qconcatenatetablesproxymodel_types.QConcatenateTablesProxyModel, index: gen_qabstractitemmodel_types.QModelIndex): gen_qabstractitemmodel_types.QModelIndex =
  gen_qabstractitemmodel_types.QModelIndex(h: fcQConcatenateTablesProxyModel_parent(self.h, index.h))

proc rowCount*(self: gen_qconcatenatetablesproxymodel_types.QConcatenateTablesProxyModel, parent: gen_qabstractitemmodel_types.QModelIndex): cint =
  fcQConcatenateTablesProxyModel_rowCount(self.h, parent.h)

proc headerData*(self: gen_qconcatenatetablesproxymodel_types.QConcatenateTablesProxyModel, section: cint, orientation: cint, role: cint): gen_qvariant_types.QVariant =
  gen_qvariant_types.QVariant(h: fcQConcatenateTablesProxyModel_headerData(self.h, section, cint(orientation), role))

proc columnCount*(self: gen_qconcatenatetablesproxymodel_types.QConcatenateTablesProxyModel, parent: gen_qabstractitemmodel_types.QModelIndex): cint =
  fcQConcatenateTablesProxyModel_columnCount(self.h, parent.h)

proc mimeTypes*(self: gen_qconcatenatetablesproxymodel_types.QConcatenateTablesProxyModel, ): seq[string] =
  var v_ma = fcQConcatenateTablesProxyModel_mimeTypes(self.h)
  var vx_ret = newSeq[string](int(v_ma.len))
  let v_outCast = cast[ptr UncheckedArray[struct_miqt_string]](v_ma.data)
  for i in 0 ..< v_ma.len:
    let vx_lv_ms = v_outCast[i]
    let vx_lvx_ret = string.fromBytes(toOpenArrayByte(vx_lv_ms.data, 0, int(vx_lv_ms.len)-1))
    c_free(vx_lv_ms.data)
    vx_ret[i] = vx_lvx_ret
  vx_ret

proc mimeData*(self: gen_qconcatenatetablesproxymodel_types.QConcatenateTablesProxyModel, indexes: seq[gen_qabstractitemmodel_types.QModelIndex]): gen_qmimedata_types.QMimeData =
  var indexes_CArray = newSeq[pointer](len(indexes))
  for i in 0..<len(indexes):
    indexes_CArray[i] = indexes[i].h

  gen_qmimedata_types.QMimeData(h: fcQConcatenateTablesProxyModel_mimeData(self.h, struct_miqt_array(len: csize_t(len(indexes)), data: if len(indexes) == 0: nil else: addr(indexes_CArray[0]))))

proc canDropMimeData*(self: gen_qconcatenatetablesproxymodel_types.QConcatenateTablesProxyModel, data: gen_qmimedata_types.QMimeData, action: cint, row: cint, column: cint, parent: gen_qabstractitemmodel_types.QModelIndex): bool =
  fcQConcatenateTablesProxyModel_canDropMimeData(self.h, data.h, cint(action), row, column, parent.h)

proc dropMimeData*(self: gen_qconcatenatetablesproxymodel_types.QConcatenateTablesProxyModel, data: gen_qmimedata_types.QMimeData, action: cint, row: cint, column: cint, parent: gen_qabstractitemmodel_types.QModelIndex): bool =
  fcQConcatenateTablesProxyModel_dropMimeData(self.h, data.h, cint(action), row, column, parent.h)

proc span*(self: gen_qconcatenatetablesproxymodel_types.QConcatenateTablesProxyModel, index: gen_qabstractitemmodel_types.QModelIndex): gen_qsize_types.QSize =
  gen_qsize_types.QSize(h: fcQConcatenateTablesProxyModel_span(self.h, index.h))

proc tr*(_: type gen_qconcatenatetablesproxymodel_types.QConcatenateTablesProxyModel, s: cstring, c: cstring): string =
  let v_ms = fcQConcatenateTablesProxyModel_tr2(s, c)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc tr*(_: type gen_qconcatenatetablesproxymodel_types.QConcatenateTablesProxyModel, s: cstring, c: cstring, n: cint): string =
  let v_ms = fcQConcatenateTablesProxyModel_tr3(s, c, n)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc trUtf8*(_: type gen_qconcatenatetablesproxymodel_types.QConcatenateTablesProxyModel, s: cstring, c: cstring): string =
  let v_ms = fcQConcatenateTablesProxyModel_trUtf82(s, c)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc trUtf8*(_: type gen_qconcatenatetablesproxymodel_types.QConcatenateTablesProxyModel, s: cstring, c: cstring, n: cint): string =
  let v_ms = fcQConcatenateTablesProxyModel_trUtf83(s, c, n)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc QConcatenateTablesProxyModelmetaObject*(self: gen_qconcatenatetablesproxymodel_types.QConcatenateTablesProxyModel, ): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fQConcatenateTablesProxyModel_virtualbase_metaObject(self.h))

type QConcatenateTablesProxyModelmetaObjectProc* = proc(): gen_qobjectdefs_types.QMetaObject
proc onmetaObject*(self: gen_qconcatenatetablesproxymodel_types.QConcatenateTablesProxyModel, slot: QConcatenateTablesProxyModelmetaObjectProc) =
  # TODO check subclass
  var tmp = new QConcatenateTablesProxyModelmetaObjectProc
  tmp[] = slot
  GC_ref(tmp)
  fcQConcatenateTablesProxyModel_override_virtual_metaObject(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QConcatenateTablesProxyModel_metaObject(self: ptr cQConcatenateTablesProxyModel, slot: int): pointer {.exportc: "miqt_exec_callback_QConcatenateTablesProxyModel_metaObject ".} =
  var nimfunc = cast[ptr QConcatenateTablesProxyModelmetaObjectProc](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )

  virtualReturn.h
proc QConcatenateTablesProxyModelmetacast*(self: gen_qconcatenatetablesproxymodel_types.QConcatenateTablesProxyModel, param1: cstring): pointer =
  fQConcatenateTablesProxyModel_virtualbase_metacast(self.h, param1)

type QConcatenateTablesProxyModelmetacastProc* = proc(param1: cstring): pointer
proc onmetacast*(self: gen_qconcatenatetablesproxymodel_types.QConcatenateTablesProxyModel, slot: QConcatenateTablesProxyModelmetacastProc) =
  # TODO check subclass
  var tmp = new QConcatenateTablesProxyModelmetacastProc
  tmp[] = slot
  GC_ref(tmp)
  fcQConcatenateTablesProxyModel_override_virtual_metacast(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QConcatenateTablesProxyModel_metacast(self: ptr cQConcatenateTablesProxyModel, slot: int, param1: cstring): pointer {.exportc: "miqt_exec_callback_QConcatenateTablesProxyModel_metacast ".} =
  var nimfunc = cast[ptr QConcatenateTablesProxyModelmetacastProc](cast[pointer](slot))
  let slotval1 = (param1)


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn
proc QConcatenateTablesProxyModelmetacall*(self: gen_qconcatenatetablesproxymodel_types.QConcatenateTablesProxyModel, param1: cint, param2: cint, param3: pointer): cint =
  fQConcatenateTablesProxyModel_virtualbase_metacall(self.h, cint(param1), param2, param3)

type QConcatenateTablesProxyModelmetacallProc* = proc(param1: cint, param2: cint, param3: pointer): cint
proc onmetacall*(self: gen_qconcatenatetablesproxymodel_types.QConcatenateTablesProxyModel, slot: QConcatenateTablesProxyModelmetacallProc) =
  # TODO check subclass
  var tmp = new QConcatenateTablesProxyModelmetacallProc
  tmp[] = slot
  GC_ref(tmp)
  fcQConcatenateTablesProxyModel_override_virtual_metacall(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QConcatenateTablesProxyModel_metacall(self: ptr cQConcatenateTablesProxyModel, slot: int, param1: cint, param2: cint, param3: pointer): cint {.exportc: "miqt_exec_callback_QConcatenateTablesProxyModel_metacall ".} =
  var nimfunc = cast[ptr QConcatenateTablesProxyModelmetacallProc](cast[pointer](slot))
  let slotval1 = cint(param1)

  let slotval2 = param2

  let slotval3 = param3


  let virtualReturn = nimfunc[](slotval1, slotval2, slotval3 )

  virtualReturn
proc QConcatenateTablesProxyModeldata*(self: gen_qconcatenatetablesproxymodel_types.QConcatenateTablesProxyModel, index: gen_qabstractitemmodel_types.QModelIndex, role: cint): gen_qvariant_types.QVariant =
  gen_qvariant_types.QVariant(h: fQConcatenateTablesProxyModel_virtualbase_data(self.h, index.h, role))

type QConcatenateTablesProxyModeldataProc* = proc(index: gen_qabstractitemmodel_types.QModelIndex, role: cint): gen_qvariant_types.QVariant
proc ondata*(self: gen_qconcatenatetablesproxymodel_types.QConcatenateTablesProxyModel, slot: QConcatenateTablesProxyModeldataProc) =
  # TODO check subclass
  var tmp = new QConcatenateTablesProxyModeldataProc
  tmp[] = slot
  GC_ref(tmp)
  fcQConcatenateTablesProxyModel_override_virtual_data(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QConcatenateTablesProxyModel_data(self: ptr cQConcatenateTablesProxyModel, slot: int, index: pointer, role: cint): pointer {.exportc: "miqt_exec_callback_QConcatenateTablesProxyModel_data ".} =
  var nimfunc = cast[ptr QConcatenateTablesProxyModeldataProc](cast[pointer](slot))
  let slotval1 = gen_qabstractitemmodel_types.QModelIndex(h: index)

  let slotval2 = role


  let virtualReturn = nimfunc[](slotval1, slotval2 )

  virtualReturn.h
proc QConcatenateTablesProxyModelsetData*(self: gen_qconcatenatetablesproxymodel_types.QConcatenateTablesProxyModel, index: gen_qabstractitemmodel_types.QModelIndex, value: gen_qvariant_types.QVariant, role: cint): bool =
  fQConcatenateTablesProxyModel_virtualbase_setData(self.h, index.h, value.h, role)

type QConcatenateTablesProxyModelsetDataProc* = proc(index: gen_qabstractitemmodel_types.QModelIndex, value: gen_qvariant_types.QVariant, role: cint): bool
proc onsetData*(self: gen_qconcatenatetablesproxymodel_types.QConcatenateTablesProxyModel, slot: QConcatenateTablesProxyModelsetDataProc) =
  # TODO check subclass
  var tmp = new QConcatenateTablesProxyModelsetDataProc
  tmp[] = slot
  GC_ref(tmp)
  fcQConcatenateTablesProxyModel_override_virtual_setData(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QConcatenateTablesProxyModel_setData(self: ptr cQConcatenateTablesProxyModel, slot: int, index: pointer, value: pointer, role: cint): bool {.exportc: "miqt_exec_callback_QConcatenateTablesProxyModel_setData ".} =
  var nimfunc = cast[ptr QConcatenateTablesProxyModelsetDataProc](cast[pointer](slot))
  let slotval1 = gen_qabstractitemmodel_types.QModelIndex(h: index)

  let slotval2 = gen_qvariant_types.QVariant(h: value)

  let slotval3 = role


  let virtualReturn = nimfunc[](slotval1, slotval2, slotval3 )

  virtualReturn
proc QConcatenateTablesProxyModelitemData*(self: gen_qconcatenatetablesproxymodel_types.QConcatenateTablesProxyModel, proxyIndex: gen_qabstractitemmodel_types.QModelIndex): Table[cint,gen_qvariant_types.QVariant] =
  var v_mm = fQConcatenateTablesProxyModel_virtualbase_itemData(self.h, proxyIndex.h)
  var vx_ret: Table[cint, gen_qvariant_types.QVariant]
  var v_Keys = cast[ptr UncheckedArray[cint]](v_mm.keys)
  var v_Values = cast[ptr UncheckedArray[pointer]](v_mm.values)
  for i in 0..<v_mm.len:
    var v_entry_Key = v_Keys[i]

    var v_entry_Value = gen_qvariant_types.QVariant(h: v_Values[i])

    vx_ret[v_entry_Key] = v_entry_Value
  vx_ret

type QConcatenateTablesProxyModelitemDataProc* = proc(proxyIndex: gen_qabstractitemmodel_types.QModelIndex): Table[cint,gen_qvariant_types.QVariant]
proc onitemData*(self: gen_qconcatenatetablesproxymodel_types.QConcatenateTablesProxyModel, slot: QConcatenateTablesProxyModelitemDataProc) =
  # TODO check subclass
  var tmp = new QConcatenateTablesProxyModelitemDataProc
  tmp[] = slot
  GC_ref(tmp)
  fcQConcatenateTablesProxyModel_override_virtual_itemData(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QConcatenateTablesProxyModel_itemData(self: ptr cQConcatenateTablesProxyModel, slot: int, proxyIndex: pointer): struct_miqt_map {.exportc: "miqt_exec_callback_QConcatenateTablesProxyModel_itemData ".} =
  var nimfunc = cast[ptr QConcatenateTablesProxyModelitemDataProc](cast[pointer](slot))
  let slotval1 = gen_qabstractitemmodel_types.QModelIndex(h: proxyIndex)


  let virtualReturn = nimfunc[](slotval1 )
  var virtualReturn_Keys_CArray = newSeq[cint](len(virtualReturn))
  var virtualReturn_Values_CArray = newSeq[pointer](len(virtualReturn))
  var virtualReturn_ctr = 0
  for virtualReturnk, virtualReturnv in virtualReturn:
    virtualReturn_Keys_CArray[virtualReturn_ctr] = virtualReturn_k
    virtualReturn_Values_CArray[virtualReturn_ctr] = virtualReturn_v.h
    virtualReturn_ctr += 1


  struct_miqt_map(len: csize_t(len(virtualReturn)),keys: if len(virtualReturn) == 0: nil else: addr(virtualReturn_Keys_CArray[0]), values: if len(virtualReturn) == 0: nil else: addr(virtualReturn_Values_CArray[0]),)
proc QConcatenateTablesProxyModelsetItemData*(self: gen_qconcatenatetablesproxymodel_types.QConcatenateTablesProxyModel, index: gen_qabstractitemmodel_types.QModelIndex, roles: Table[cint,gen_qvariant_types.QVariant]): bool =
  var roles_Keys_CArray = newSeq[cint](len(roles))
  var roles_Values_CArray = newSeq[pointer](len(roles))
  var roles_ctr = 0
  for rolesk, rolesv in roles:
    roles_Keys_CArray[roles_ctr] = roles_k
    roles_Values_CArray[roles_ctr] = roles_v.h
    roles_ctr += 1

  fQConcatenateTablesProxyModel_virtualbase_setItemData(self.h, index.h, struct_miqt_map(len: csize_t(len(roles)),keys: if len(roles) == 0: nil else: addr(roles_Keys_CArray[0]), values: if len(roles) == 0: nil else: addr(roles_Values_CArray[0]),))

type QConcatenateTablesProxyModelsetItemDataProc* = proc(index: gen_qabstractitemmodel_types.QModelIndex, roles: Table[cint,gen_qvariant_types.QVariant]): bool
proc onsetItemData*(self: gen_qconcatenatetablesproxymodel_types.QConcatenateTablesProxyModel, slot: QConcatenateTablesProxyModelsetItemDataProc) =
  # TODO check subclass
  var tmp = new QConcatenateTablesProxyModelsetItemDataProc
  tmp[] = slot
  GC_ref(tmp)
  fcQConcatenateTablesProxyModel_override_virtual_setItemData(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QConcatenateTablesProxyModel_setItemData(self: ptr cQConcatenateTablesProxyModel, slot: int, index: pointer, roles: struct_miqt_map): bool {.exportc: "miqt_exec_callback_QConcatenateTablesProxyModel_setItemData ".} =
  var nimfunc = cast[ptr QConcatenateTablesProxyModelsetItemDataProc](cast[pointer](slot))
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
proc QConcatenateTablesProxyModelflags*(self: gen_qconcatenatetablesproxymodel_types.QConcatenateTablesProxyModel, index: gen_qabstractitemmodel_types.QModelIndex): cint =
  cint(fQConcatenateTablesProxyModel_virtualbase_flags(self.h, index.h))

type QConcatenateTablesProxyModelflagsProc* = proc(index: gen_qabstractitemmodel_types.QModelIndex): cint
proc onflags*(self: gen_qconcatenatetablesproxymodel_types.QConcatenateTablesProxyModel, slot: QConcatenateTablesProxyModelflagsProc) =
  # TODO check subclass
  var tmp = new QConcatenateTablesProxyModelflagsProc
  tmp[] = slot
  GC_ref(tmp)
  fcQConcatenateTablesProxyModel_override_virtual_flags(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QConcatenateTablesProxyModel_flags(self: ptr cQConcatenateTablesProxyModel, slot: int, index: pointer): cint {.exportc: "miqt_exec_callback_QConcatenateTablesProxyModel_flags ".} =
  var nimfunc = cast[ptr QConcatenateTablesProxyModelflagsProc](cast[pointer](slot))
  let slotval1 = gen_qabstractitemmodel_types.QModelIndex(h: index)


  let virtualReturn = nimfunc[](slotval1 )

  cint(virtualReturn)
proc QConcatenateTablesProxyModelindex*(self: gen_qconcatenatetablesproxymodel_types.QConcatenateTablesProxyModel, row: cint, column: cint, parent: gen_qabstractitemmodel_types.QModelIndex): gen_qabstractitemmodel_types.QModelIndex =
  gen_qabstractitemmodel_types.QModelIndex(h: fQConcatenateTablesProxyModel_virtualbase_index(self.h, row, column, parent.h))

type QConcatenateTablesProxyModelindexProc* = proc(row: cint, column: cint, parent: gen_qabstractitemmodel_types.QModelIndex): gen_qabstractitemmodel_types.QModelIndex
proc onindex*(self: gen_qconcatenatetablesproxymodel_types.QConcatenateTablesProxyModel, slot: QConcatenateTablesProxyModelindexProc) =
  # TODO check subclass
  var tmp = new QConcatenateTablesProxyModelindexProc
  tmp[] = slot
  GC_ref(tmp)
  fcQConcatenateTablesProxyModel_override_virtual_index(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QConcatenateTablesProxyModel_index(self: ptr cQConcatenateTablesProxyModel, slot: int, row: cint, column: cint, parent: pointer): pointer {.exportc: "miqt_exec_callback_QConcatenateTablesProxyModel_index ".} =
  var nimfunc = cast[ptr QConcatenateTablesProxyModelindexProc](cast[pointer](slot))
  let slotval1 = row

  let slotval2 = column

  let slotval3 = gen_qabstractitemmodel_types.QModelIndex(h: parent)


  let virtualReturn = nimfunc[](slotval1, slotval2, slotval3 )

  virtualReturn.h
proc QConcatenateTablesProxyModelparent*(self: gen_qconcatenatetablesproxymodel_types.QConcatenateTablesProxyModel, index: gen_qabstractitemmodel_types.QModelIndex): gen_qabstractitemmodel_types.QModelIndex =
  gen_qabstractitemmodel_types.QModelIndex(h: fQConcatenateTablesProxyModel_virtualbase_parent(self.h, index.h))

type QConcatenateTablesProxyModelparentProc* = proc(index: gen_qabstractitemmodel_types.QModelIndex): gen_qabstractitemmodel_types.QModelIndex
proc onparent*(self: gen_qconcatenatetablesproxymodel_types.QConcatenateTablesProxyModel, slot: QConcatenateTablesProxyModelparentProc) =
  # TODO check subclass
  var tmp = new QConcatenateTablesProxyModelparentProc
  tmp[] = slot
  GC_ref(tmp)
  fcQConcatenateTablesProxyModel_override_virtual_parent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QConcatenateTablesProxyModel_parent(self: ptr cQConcatenateTablesProxyModel, slot: int, index: pointer): pointer {.exportc: "miqt_exec_callback_QConcatenateTablesProxyModel_parent ".} =
  var nimfunc = cast[ptr QConcatenateTablesProxyModelparentProc](cast[pointer](slot))
  let slotval1 = gen_qabstractitemmodel_types.QModelIndex(h: index)


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn.h
proc QConcatenateTablesProxyModelrowCount*(self: gen_qconcatenatetablesproxymodel_types.QConcatenateTablesProxyModel, parent: gen_qabstractitemmodel_types.QModelIndex): cint =
  fQConcatenateTablesProxyModel_virtualbase_rowCount(self.h, parent.h)

type QConcatenateTablesProxyModelrowCountProc* = proc(parent: gen_qabstractitemmodel_types.QModelIndex): cint
proc onrowCount*(self: gen_qconcatenatetablesproxymodel_types.QConcatenateTablesProxyModel, slot: QConcatenateTablesProxyModelrowCountProc) =
  # TODO check subclass
  var tmp = new QConcatenateTablesProxyModelrowCountProc
  tmp[] = slot
  GC_ref(tmp)
  fcQConcatenateTablesProxyModel_override_virtual_rowCount(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QConcatenateTablesProxyModel_rowCount(self: ptr cQConcatenateTablesProxyModel, slot: int, parent: pointer): cint {.exportc: "miqt_exec_callback_QConcatenateTablesProxyModel_rowCount ".} =
  var nimfunc = cast[ptr QConcatenateTablesProxyModelrowCountProc](cast[pointer](slot))
  let slotval1 = gen_qabstractitemmodel_types.QModelIndex(h: parent)


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn
proc QConcatenateTablesProxyModelheaderData*(self: gen_qconcatenatetablesproxymodel_types.QConcatenateTablesProxyModel, section: cint, orientation: cint, role: cint): gen_qvariant_types.QVariant =
  gen_qvariant_types.QVariant(h: fQConcatenateTablesProxyModel_virtualbase_headerData(self.h, section, cint(orientation), role))

type QConcatenateTablesProxyModelheaderDataProc* = proc(section: cint, orientation: cint, role: cint): gen_qvariant_types.QVariant
proc onheaderData*(self: gen_qconcatenatetablesproxymodel_types.QConcatenateTablesProxyModel, slot: QConcatenateTablesProxyModelheaderDataProc) =
  # TODO check subclass
  var tmp = new QConcatenateTablesProxyModelheaderDataProc
  tmp[] = slot
  GC_ref(tmp)
  fcQConcatenateTablesProxyModel_override_virtual_headerData(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QConcatenateTablesProxyModel_headerData(self: ptr cQConcatenateTablesProxyModel, slot: int, section: cint, orientation: cint, role: cint): pointer {.exportc: "miqt_exec_callback_QConcatenateTablesProxyModel_headerData ".} =
  var nimfunc = cast[ptr QConcatenateTablesProxyModelheaderDataProc](cast[pointer](slot))
  let slotval1 = section

  let slotval2 = cint(orientation)

  let slotval3 = role


  let virtualReturn = nimfunc[](slotval1, slotval2, slotval3 )

  virtualReturn.h
proc QConcatenateTablesProxyModelcolumnCount*(self: gen_qconcatenatetablesproxymodel_types.QConcatenateTablesProxyModel, parent: gen_qabstractitemmodel_types.QModelIndex): cint =
  fQConcatenateTablesProxyModel_virtualbase_columnCount(self.h, parent.h)

type QConcatenateTablesProxyModelcolumnCountProc* = proc(parent: gen_qabstractitemmodel_types.QModelIndex): cint
proc oncolumnCount*(self: gen_qconcatenatetablesproxymodel_types.QConcatenateTablesProxyModel, slot: QConcatenateTablesProxyModelcolumnCountProc) =
  # TODO check subclass
  var tmp = new QConcatenateTablesProxyModelcolumnCountProc
  tmp[] = slot
  GC_ref(tmp)
  fcQConcatenateTablesProxyModel_override_virtual_columnCount(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QConcatenateTablesProxyModel_columnCount(self: ptr cQConcatenateTablesProxyModel, slot: int, parent: pointer): cint {.exportc: "miqt_exec_callback_QConcatenateTablesProxyModel_columnCount ".} =
  var nimfunc = cast[ptr QConcatenateTablesProxyModelcolumnCountProc](cast[pointer](slot))
  let slotval1 = gen_qabstractitemmodel_types.QModelIndex(h: parent)


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn
proc QConcatenateTablesProxyModelmimeTypes*(self: gen_qconcatenatetablesproxymodel_types.QConcatenateTablesProxyModel, ): seq[string] =
  var v_ma = fQConcatenateTablesProxyModel_virtualbase_mimeTypes(self.h)
  var vx_ret = newSeq[string](int(v_ma.len))
  let v_outCast = cast[ptr UncheckedArray[struct_miqt_string]](v_ma.data)
  for i in 0 ..< v_ma.len:
    let vx_lv_ms = v_outCast[i]
    let vx_lvx_ret = string.fromBytes(toOpenArrayByte(vx_lv_ms.data, 0, int(vx_lv_ms.len)-1))
    c_free(vx_lv_ms.data)
    vx_ret[i] = vx_lvx_ret
  vx_ret

type QConcatenateTablesProxyModelmimeTypesProc* = proc(): seq[string]
proc onmimeTypes*(self: gen_qconcatenatetablesproxymodel_types.QConcatenateTablesProxyModel, slot: QConcatenateTablesProxyModelmimeTypesProc) =
  # TODO check subclass
  var tmp = new QConcatenateTablesProxyModelmimeTypesProc
  tmp[] = slot
  GC_ref(tmp)
  fcQConcatenateTablesProxyModel_override_virtual_mimeTypes(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QConcatenateTablesProxyModel_mimeTypes(self: ptr cQConcatenateTablesProxyModel, slot: int): struct_miqt_array {.exportc: "miqt_exec_callback_QConcatenateTablesProxyModel_mimeTypes ".} =
  var nimfunc = cast[ptr QConcatenateTablesProxyModelmimeTypesProc](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )
  var virtualReturn_CArray = newSeq[struct_miqt_string](len(virtualReturn))
  for i in 0..<len(virtualReturn):
    virtualReturn_CArray[i] = struct_miqt_string(data: virtualReturn[i], len: csize_t(len(virtualReturn[i])))


  struct_miqt_array(len: csize_t(len(virtualReturn)), data: if len(virtualReturn) == 0: nil else: addr(virtualReturn_CArray[0]))
proc QConcatenateTablesProxyModelmimeData*(self: gen_qconcatenatetablesproxymodel_types.QConcatenateTablesProxyModel, indexes: seq[gen_qabstractitemmodel_types.QModelIndex]): gen_qmimedata_types.QMimeData =
  var indexes_CArray = newSeq[pointer](len(indexes))
  for i in 0..<len(indexes):
    indexes_CArray[i] = indexes[i].h

  gen_qmimedata_types.QMimeData(h: fQConcatenateTablesProxyModel_virtualbase_mimeData(self.h, struct_miqt_array(len: csize_t(len(indexes)), data: if len(indexes) == 0: nil else: addr(indexes_CArray[0]))))

type QConcatenateTablesProxyModelmimeDataProc* = proc(indexes: seq[gen_qabstractitemmodel_types.QModelIndex]): gen_qmimedata_types.QMimeData
proc onmimeData*(self: gen_qconcatenatetablesproxymodel_types.QConcatenateTablesProxyModel, slot: QConcatenateTablesProxyModelmimeDataProc) =
  # TODO check subclass
  var tmp = new QConcatenateTablesProxyModelmimeDataProc
  tmp[] = slot
  GC_ref(tmp)
  fcQConcatenateTablesProxyModel_override_virtual_mimeData(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QConcatenateTablesProxyModel_mimeData(self: ptr cQConcatenateTablesProxyModel, slot: int, indexes: struct_miqt_array): pointer {.exportc: "miqt_exec_callback_QConcatenateTablesProxyModel_mimeData ".} =
  var nimfunc = cast[ptr QConcatenateTablesProxyModelmimeDataProc](cast[pointer](slot))
  var vindexes_ma = indexes
  var vindexesx_ret = newSeq[gen_qabstractitemmodel_types.QModelIndex](int(vindexes_ma.len))
  let vindexes_outCast = cast[ptr UncheckedArray[pointer]](vindexes_ma.data)
  for i in 0 ..< vindexes_ma.len:
    vindexesx_ret[i] = gen_qabstractitemmodel_types.QModelIndex(h: vindexes_outCast[i])
  let slotval1 = vindexesx_ret


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn.h
proc QConcatenateTablesProxyModelcanDropMimeData*(self: gen_qconcatenatetablesproxymodel_types.QConcatenateTablesProxyModel, data: gen_qmimedata_types.QMimeData, action: cint, row: cint, column: cint, parent: gen_qabstractitemmodel_types.QModelIndex): bool =
  fQConcatenateTablesProxyModel_virtualbase_canDropMimeData(self.h, data.h, cint(action), row, column, parent.h)

type QConcatenateTablesProxyModelcanDropMimeDataProc* = proc(data: gen_qmimedata_types.QMimeData, action: cint, row: cint, column: cint, parent: gen_qabstractitemmodel_types.QModelIndex): bool
proc oncanDropMimeData*(self: gen_qconcatenatetablesproxymodel_types.QConcatenateTablesProxyModel, slot: QConcatenateTablesProxyModelcanDropMimeDataProc) =
  # TODO check subclass
  var tmp = new QConcatenateTablesProxyModelcanDropMimeDataProc
  tmp[] = slot
  GC_ref(tmp)
  fcQConcatenateTablesProxyModel_override_virtual_canDropMimeData(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QConcatenateTablesProxyModel_canDropMimeData(self: ptr cQConcatenateTablesProxyModel, slot: int, data: pointer, action: cint, row: cint, column: cint, parent: pointer): bool {.exportc: "miqt_exec_callback_QConcatenateTablesProxyModel_canDropMimeData ".} =
  var nimfunc = cast[ptr QConcatenateTablesProxyModelcanDropMimeDataProc](cast[pointer](slot))
  let slotval1 = gen_qmimedata_types.QMimeData(h: data)

  let slotval2 = cint(action)

  let slotval3 = row

  let slotval4 = column

  let slotval5 = gen_qabstractitemmodel_types.QModelIndex(h: parent)


  let virtualReturn = nimfunc[](slotval1, slotval2, slotval3, slotval4, slotval5 )

  virtualReturn
proc QConcatenateTablesProxyModeldropMimeData*(self: gen_qconcatenatetablesproxymodel_types.QConcatenateTablesProxyModel, data: gen_qmimedata_types.QMimeData, action: cint, row: cint, column: cint, parent: gen_qabstractitemmodel_types.QModelIndex): bool =
  fQConcatenateTablesProxyModel_virtualbase_dropMimeData(self.h, data.h, cint(action), row, column, parent.h)

type QConcatenateTablesProxyModeldropMimeDataProc* = proc(data: gen_qmimedata_types.QMimeData, action: cint, row: cint, column: cint, parent: gen_qabstractitemmodel_types.QModelIndex): bool
proc ondropMimeData*(self: gen_qconcatenatetablesproxymodel_types.QConcatenateTablesProxyModel, slot: QConcatenateTablesProxyModeldropMimeDataProc) =
  # TODO check subclass
  var tmp = new QConcatenateTablesProxyModeldropMimeDataProc
  tmp[] = slot
  GC_ref(tmp)
  fcQConcatenateTablesProxyModel_override_virtual_dropMimeData(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QConcatenateTablesProxyModel_dropMimeData(self: ptr cQConcatenateTablesProxyModel, slot: int, data: pointer, action: cint, row: cint, column: cint, parent: pointer): bool {.exportc: "miqt_exec_callback_QConcatenateTablesProxyModel_dropMimeData ".} =
  var nimfunc = cast[ptr QConcatenateTablesProxyModeldropMimeDataProc](cast[pointer](slot))
  let slotval1 = gen_qmimedata_types.QMimeData(h: data)

  let slotval2 = cint(action)

  let slotval3 = row

  let slotval4 = column

  let slotval5 = gen_qabstractitemmodel_types.QModelIndex(h: parent)


  let virtualReturn = nimfunc[](slotval1, slotval2, slotval3, slotval4, slotval5 )

  virtualReturn
proc QConcatenateTablesProxyModelspan*(self: gen_qconcatenatetablesproxymodel_types.QConcatenateTablesProxyModel, index: gen_qabstractitemmodel_types.QModelIndex): gen_qsize_types.QSize =
  gen_qsize_types.QSize(h: fQConcatenateTablesProxyModel_virtualbase_span(self.h, index.h))

type QConcatenateTablesProxyModelspanProc* = proc(index: gen_qabstractitemmodel_types.QModelIndex): gen_qsize_types.QSize
proc onspan*(self: gen_qconcatenatetablesproxymodel_types.QConcatenateTablesProxyModel, slot: QConcatenateTablesProxyModelspanProc) =
  # TODO check subclass
  var tmp = new QConcatenateTablesProxyModelspanProc
  tmp[] = slot
  GC_ref(tmp)
  fcQConcatenateTablesProxyModel_override_virtual_span(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QConcatenateTablesProxyModel_span(self: ptr cQConcatenateTablesProxyModel, slot: int, index: pointer): pointer {.exportc: "miqt_exec_callback_QConcatenateTablesProxyModel_span ".} =
  var nimfunc = cast[ptr QConcatenateTablesProxyModelspanProc](cast[pointer](slot))
  let slotval1 = gen_qabstractitemmodel_types.QModelIndex(h: index)


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn.h
proc QConcatenateTablesProxyModelsibling*(self: gen_qconcatenatetablesproxymodel_types.QConcatenateTablesProxyModel, row: cint, column: cint, idx: gen_qabstractitemmodel_types.QModelIndex): gen_qabstractitemmodel_types.QModelIndex =
  gen_qabstractitemmodel_types.QModelIndex(h: fQConcatenateTablesProxyModel_virtualbase_sibling(self.h, row, column, idx.h))

type QConcatenateTablesProxyModelsiblingProc* = proc(row: cint, column: cint, idx: gen_qabstractitemmodel_types.QModelIndex): gen_qabstractitemmodel_types.QModelIndex
proc onsibling*(self: gen_qconcatenatetablesproxymodel_types.QConcatenateTablesProxyModel, slot: QConcatenateTablesProxyModelsiblingProc) =
  # TODO check subclass
  var tmp = new QConcatenateTablesProxyModelsiblingProc
  tmp[] = slot
  GC_ref(tmp)
  fcQConcatenateTablesProxyModel_override_virtual_sibling(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QConcatenateTablesProxyModel_sibling(self: ptr cQConcatenateTablesProxyModel, slot: int, row: cint, column: cint, idx: pointer): pointer {.exportc: "miqt_exec_callback_QConcatenateTablesProxyModel_sibling ".} =
  var nimfunc = cast[ptr QConcatenateTablesProxyModelsiblingProc](cast[pointer](slot))
  let slotval1 = row

  let slotval2 = column

  let slotval3 = gen_qabstractitemmodel_types.QModelIndex(h: idx)


  let virtualReturn = nimfunc[](slotval1, slotval2, slotval3 )

  virtualReturn.h
proc QConcatenateTablesProxyModelhasChildren*(self: gen_qconcatenatetablesproxymodel_types.QConcatenateTablesProxyModel, parent: gen_qabstractitemmodel_types.QModelIndex): bool =
  fQConcatenateTablesProxyModel_virtualbase_hasChildren(self.h, parent.h)

type QConcatenateTablesProxyModelhasChildrenProc* = proc(parent: gen_qabstractitemmodel_types.QModelIndex): bool
proc onhasChildren*(self: gen_qconcatenatetablesproxymodel_types.QConcatenateTablesProxyModel, slot: QConcatenateTablesProxyModelhasChildrenProc) =
  # TODO check subclass
  var tmp = new QConcatenateTablesProxyModelhasChildrenProc
  tmp[] = slot
  GC_ref(tmp)
  fcQConcatenateTablesProxyModel_override_virtual_hasChildren(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QConcatenateTablesProxyModel_hasChildren(self: ptr cQConcatenateTablesProxyModel, slot: int, parent: pointer): bool {.exportc: "miqt_exec_callback_QConcatenateTablesProxyModel_hasChildren ".} =
  var nimfunc = cast[ptr QConcatenateTablesProxyModelhasChildrenProc](cast[pointer](slot))
  let slotval1 = gen_qabstractitemmodel_types.QModelIndex(h: parent)


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn
proc QConcatenateTablesProxyModelsetHeaderData*(self: gen_qconcatenatetablesproxymodel_types.QConcatenateTablesProxyModel, section: cint, orientation: cint, value: gen_qvariant_types.QVariant, role: cint): bool =
  fQConcatenateTablesProxyModel_virtualbase_setHeaderData(self.h, section, cint(orientation), value.h, role)

type QConcatenateTablesProxyModelsetHeaderDataProc* = proc(section: cint, orientation: cint, value: gen_qvariant_types.QVariant, role: cint): bool
proc onsetHeaderData*(self: gen_qconcatenatetablesproxymodel_types.QConcatenateTablesProxyModel, slot: QConcatenateTablesProxyModelsetHeaderDataProc) =
  # TODO check subclass
  var tmp = new QConcatenateTablesProxyModelsetHeaderDataProc
  tmp[] = slot
  GC_ref(tmp)
  fcQConcatenateTablesProxyModel_override_virtual_setHeaderData(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QConcatenateTablesProxyModel_setHeaderData(self: ptr cQConcatenateTablesProxyModel, slot: int, section: cint, orientation: cint, value: pointer, role: cint): bool {.exportc: "miqt_exec_callback_QConcatenateTablesProxyModel_setHeaderData ".} =
  var nimfunc = cast[ptr QConcatenateTablesProxyModelsetHeaderDataProc](cast[pointer](slot))
  let slotval1 = section

  let slotval2 = cint(orientation)

  let slotval3 = gen_qvariant_types.QVariant(h: value)

  let slotval4 = role


  let virtualReturn = nimfunc[](slotval1, slotval2, slotval3, slotval4 )

  virtualReturn
proc QConcatenateTablesProxyModelsupportedDropActions*(self: gen_qconcatenatetablesproxymodel_types.QConcatenateTablesProxyModel, ): cint =
  cint(fQConcatenateTablesProxyModel_virtualbase_supportedDropActions(self.h))

type QConcatenateTablesProxyModelsupportedDropActionsProc* = proc(): cint
proc onsupportedDropActions*(self: gen_qconcatenatetablesproxymodel_types.QConcatenateTablesProxyModel, slot: QConcatenateTablesProxyModelsupportedDropActionsProc) =
  # TODO check subclass
  var tmp = new QConcatenateTablesProxyModelsupportedDropActionsProc
  tmp[] = slot
  GC_ref(tmp)
  fcQConcatenateTablesProxyModel_override_virtual_supportedDropActions(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QConcatenateTablesProxyModel_supportedDropActions(self: ptr cQConcatenateTablesProxyModel, slot: int): cint {.exportc: "miqt_exec_callback_QConcatenateTablesProxyModel_supportedDropActions ".} =
  var nimfunc = cast[ptr QConcatenateTablesProxyModelsupportedDropActionsProc](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )

  cint(virtualReturn)
proc QConcatenateTablesProxyModelsupportedDragActions*(self: gen_qconcatenatetablesproxymodel_types.QConcatenateTablesProxyModel, ): cint =
  cint(fQConcatenateTablesProxyModel_virtualbase_supportedDragActions(self.h))

type QConcatenateTablesProxyModelsupportedDragActionsProc* = proc(): cint
proc onsupportedDragActions*(self: gen_qconcatenatetablesproxymodel_types.QConcatenateTablesProxyModel, slot: QConcatenateTablesProxyModelsupportedDragActionsProc) =
  # TODO check subclass
  var tmp = new QConcatenateTablesProxyModelsupportedDragActionsProc
  tmp[] = slot
  GC_ref(tmp)
  fcQConcatenateTablesProxyModel_override_virtual_supportedDragActions(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QConcatenateTablesProxyModel_supportedDragActions(self: ptr cQConcatenateTablesProxyModel, slot: int): cint {.exportc: "miqt_exec_callback_QConcatenateTablesProxyModel_supportedDragActions ".} =
  var nimfunc = cast[ptr QConcatenateTablesProxyModelsupportedDragActionsProc](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )

  cint(virtualReturn)
proc QConcatenateTablesProxyModelinsertRows*(self: gen_qconcatenatetablesproxymodel_types.QConcatenateTablesProxyModel, row: cint, count: cint, parent: gen_qabstractitemmodel_types.QModelIndex): bool =
  fQConcatenateTablesProxyModel_virtualbase_insertRows(self.h, row, count, parent.h)

type QConcatenateTablesProxyModelinsertRowsProc* = proc(row: cint, count: cint, parent: gen_qabstractitemmodel_types.QModelIndex): bool
proc oninsertRows*(self: gen_qconcatenatetablesproxymodel_types.QConcatenateTablesProxyModel, slot: QConcatenateTablesProxyModelinsertRowsProc) =
  # TODO check subclass
  var tmp = new QConcatenateTablesProxyModelinsertRowsProc
  tmp[] = slot
  GC_ref(tmp)
  fcQConcatenateTablesProxyModel_override_virtual_insertRows(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QConcatenateTablesProxyModel_insertRows(self: ptr cQConcatenateTablesProxyModel, slot: int, row: cint, count: cint, parent: pointer): bool {.exportc: "miqt_exec_callback_QConcatenateTablesProxyModel_insertRows ".} =
  var nimfunc = cast[ptr QConcatenateTablesProxyModelinsertRowsProc](cast[pointer](slot))
  let slotval1 = row

  let slotval2 = count

  let slotval3 = gen_qabstractitemmodel_types.QModelIndex(h: parent)


  let virtualReturn = nimfunc[](slotval1, slotval2, slotval3 )

  virtualReturn
proc QConcatenateTablesProxyModelinsertColumns*(self: gen_qconcatenatetablesproxymodel_types.QConcatenateTablesProxyModel, column: cint, count: cint, parent: gen_qabstractitemmodel_types.QModelIndex): bool =
  fQConcatenateTablesProxyModel_virtualbase_insertColumns(self.h, column, count, parent.h)

type QConcatenateTablesProxyModelinsertColumnsProc* = proc(column: cint, count: cint, parent: gen_qabstractitemmodel_types.QModelIndex): bool
proc oninsertColumns*(self: gen_qconcatenatetablesproxymodel_types.QConcatenateTablesProxyModel, slot: QConcatenateTablesProxyModelinsertColumnsProc) =
  # TODO check subclass
  var tmp = new QConcatenateTablesProxyModelinsertColumnsProc
  tmp[] = slot
  GC_ref(tmp)
  fcQConcatenateTablesProxyModel_override_virtual_insertColumns(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QConcatenateTablesProxyModel_insertColumns(self: ptr cQConcatenateTablesProxyModel, slot: int, column: cint, count: cint, parent: pointer): bool {.exportc: "miqt_exec_callback_QConcatenateTablesProxyModel_insertColumns ".} =
  var nimfunc = cast[ptr QConcatenateTablesProxyModelinsertColumnsProc](cast[pointer](slot))
  let slotval1 = column

  let slotval2 = count

  let slotval3 = gen_qabstractitemmodel_types.QModelIndex(h: parent)


  let virtualReturn = nimfunc[](slotval1, slotval2, slotval3 )

  virtualReturn
proc QConcatenateTablesProxyModelremoveRows*(self: gen_qconcatenatetablesproxymodel_types.QConcatenateTablesProxyModel, row: cint, count: cint, parent: gen_qabstractitemmodel_types.QModelIndex): bool =
  fQConcatenateTablesProxyModel_virtualbase_removeRows(self.h, row, count, parent.h)

type QConcatenateTablesProxyModelremoveRowsProc* = proc(row: cint, count: cint, parent: gen_qabstractitemmodel_types.QModelIndex): bool
proc onremoveRows*(self: gen_qconcatenatetablesproxymodel_types.QConcatenateTablesProxyModel, slot: QConcatenateTablesProxyModelremoveRowsProc) =
  # TODO check subclass
  var tmp = new QConcatenateTablesProxyModelremoveRowsProc
  tmp[] = slot
  GC_ref(tmp)
  fcQConcatenateTablesProxyModel_override_virtual_removeRows(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QConcatenateTablesProxyModel_removeRows(self: ptr cQConcatenateTablesProxyModel, slot: int, row: cint, count: cint, parent: pointer): bool {.exportc: "miqt_exec_callback_QConcatenateTablesProxyModel_removeRows ".} =
  var nimfunc = cast[ptr QConcatenateTablesProxyModelremoveRowsProc](cast[pointer](slot))
  let slotval1 = row

  let slotval2 = count

  let slotval3 = gen_qabstractitemmodel_types.QModelIndex(h: parent)


  let virtualReturn = nimfunc[](slotval1, slotval2, slotval3 )

  virtualReturn
proc QConcatenateTablesProxyModelremoveColumns*(self: gen_qconcatenatetablesproxymodel_types.QConcatenateTablesProxyModel, column: cint, count: cint, parent: gen_qabstractitemmodel_types.QModelIndex): bool =
  fQConcatenateTablesProxyModel_virtualbase_removeColumns(self.h, column, count, parent.h)

type QConcatenateTablesProxyModelremoveColumnsProc* = proc(column: cint, count: cint, parent: gen_qabstractitemmodel_types.QModelIndex): bool
proc onremoveColumns*(self: gen_qconcatenatetablesproxymodel_types.QConcatenateTablesProxyModel, slot: QConcatenateTablesProxyModelremoveColumnsProc) =
  # TODO check subclass
  var tmp = new QConcatenateTablesProxyModelremoveColumnsProc
  tmp[] = slot
  GC_ref(tmp)
  fcQConcatenateTablesProxyModel_override_virtual_removeColumns(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QConcatenateTablesProxyModel_removeColumns(self: ptr cQConcatenateTablesProxyModel, slot: int, column: cint, count: cint, parent: pointer): bool {.exportc: "miqt_exec_callback_QConcatenateTablesProxyModel_removeColumns ".} =
  var nimfunc = cast[ptr QConcatenateTablesProxyModelremoveColumnsProc](cast[pointer](slot))
  let slotval1 = column

  let slotval2 = count

  let slotval3 = gen_qabstractitemmodel_types.QModelIndex(h: parent)


  let virtualReturn = nimfunc[](slotval1, slotval2, slotval3 )

  virtualReturn
proc QConcatenateTablesProxyModelmoveRows*(self: gen_qconcatenatetablesproxymodel_types.QConcatenateTablesProxyModel, sourceParent: gen_qabstractitemmodel_types.QModelIndex, sourceRow: cint, count: cint, destinationParent: gen_qabstractitemmodel_types.QModelIndex, destinationChild: cint): bool =
  fQConcatenateTablesProxyModel_virtualbase_moveRows(self.h, sourceParent.h, sourceRow, count, destinationParent.h, destinationChild)

type QConcatenateTablesProxyModelmoveRowsProc* = proc(sourceParent: gen_qabstractitemmodel_types.QModelIndex, sourceRow: cint, count: cint, destinationParent: gen_qabstractitemmodel_types.QModelIndex, destinationChild: cint): bool
proc onmoveRows*(self: gen_qconcatenatetablesproxymodel_types.QConcatenateTablesProxyModel, slot: QConcatenateTablesProxyModelmoveRowsProc) =
  # TODO check subclass
  var tmp = new QConcatenateTablesProxyModelmoveRowsProc
  tmp[] = slot
  GC_ref(tmp)
  fcQConcatenateTablesProxyModel_override_virtual_moveRows(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QConcatenateTablesProxyModel_moveRows(self: ptr cQConcatenateTablesProxyModel, slot: int, sourceParent: pointer, sourceRow: cint, count: cint, destinationParent: pointer, destinationChild: cint): bool {.exportc: "miqt_exec_callback_QConcatenateTablesProxyModel_moveRows ".} =
  var nimfunc = cast[ptr QConcatenateTablesProxyModelmoveRowsProc](cast[pointer](slot))
  let slotval1 = gen_qabstractitemmodel_types.QModelIndex(h: sourceParent)

  let slotval2 = sourceRow

  let slotval3 = count

  let slotval4 = gen_qabstractitemmodel_types.QModelIndex(h: destinationParent)

  let slotval5 = destinationChild


  let virtualReturn = nimfunc[](slotval1, slotval2, slotval3, slotval4, slotval5 )

  virtualReturn
proc QConcatenateTablesProxyModelmoveColumns*(self: gen_qconcatenatetablesproxymodel_types.QConcatenateTablesProxyModel, sourceParent: gen_qabstractitemmodel_types.QModelIndex, sourceColumn: cint, count: cint, destinationParent: gen_qabstractitemmodel_types.QModelIndex, destinationChild: cint): bool =
  fQConcatenateTablesProxyModel_virtualbase_moveColumns(self.h, sourceParent.h, sourceColumn, count, destinationParent.h, destinationChild)

type QConcatenateTablesProxyModelmoveColumnsProc* = proc(sourceParent: gen_qabstractitemmodel_types.QModelIndex, sourceColumn: cint, count: cint, destinationParent: gen_qabstractitemmodel_types.QModelIndex, destinationChild: cint): bool
proc onmoveColumns*(self: gen_qconcatenatetablesproxymodel_types.QConcatenateTablesProxyModel, slot: QConcatenateTablesProxyModelmoveColumnsProc) =
  # TODO check subclass
  var tmp = new QConcatenateTablesProxyModelmoveColumnsProc
  tmp[] = slot
  GC_ref(tmp)
  fcQConcatenateTablesProxyModel_override_virtual_moveColumns(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QConcatenateTablesProxyModel_moveColumns(self: ptr cQConcatenateTablesProxyModel, slot: int, sourceParent: pointer, sourceColumn: cint, count: cint, destinationParent: pointer, destinationChild: cint): bool {.exportc: "miqt_exec_callback_QConcatenateTablesProxyModel_moveColumns ".} =
  var nimfunc = cast[ptr QConcatenateTablesProxyModelmoveColumnsProc](cast[pointer](slot))
  let slotval1 = gen_qabstractitemmodel_types.QModelIndex(h: sourceParent)

  let slotval2 = sourceColumn

  let slotval3 = count

  let slotval4 = gen_qabstractitemmodel_types.QModelIndex(h: destinationParent)

  let slotval5 = destinationChild


  let virtualReturn = nimfunc[](slotval1, slotval2, slotval3, slotval4, slotval5 )

  virtualReturn
proc QConcatenateTablesProxyModelfetchMore*(self: gen_qconcatenatetablesproxymodel_types.QConcatenateTablesProxyModel, parent: gen_qabstractitemmodel_types.QModelIndex): void =
  fQConcatenateTablesProxyModel_virtualbase_fetchMore(self.h, parent.h)

type QConcatenateTablesProxyModelfetchMoreProc* = proc(parent: gen_qabstractitemmodel_types.QModelIndex): void
proc onfetchMore*(self: gen_qconcatenatetablesproxymodel_types.QConcatenateTablesProxyModel, slot: QConcatenateTablesProxyModelfetchMoreProc) =
  # TODO check subclass
  var tmp = new QConcatenateTablesProxyModelfetchMoreProc
  tmp[] = slot
  GC_ref(tmp)
  fcQConcatenateTablesProxyModel_override_virtual_fetchMore(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QConcatenateTablesProxyModel_fetchMore(self: ptr cQConcatenateTablesProxyModel, slot: int, parent: pointer): void {.exportc: "miqt_exec_callback_QConcatenateTablesProxyModel_fetchMore ".} =
  var nimfunc = cast[ptr QConcatenateTablesProxyModelfetchMoreProc](cast[pointer](slot))
  let slotval1 = gen_qabstractitemmodel_types.QModelIndex(h: parent)


  nimfunc[](slotval1)
proc QConcatenateTablesProxyModelcanFetchMore*(self: gen_qconcatenatetablesproxymodel_types.QConcatenateTablesProxyModel, parent: gen_qabstractitemmodel_types.QModelIndex): bool =
  fQConcatenateTablesProxyModel_virtualbase_canFetchMore(self.h, parent.h)

type QConcatenateTablesProxyModelcanFetchMoreProc* = proc(parent: gen_qabstractitemmodel_types.QModelIndex): bool
proc oncanFetchMore*(self: gen_qconcatenatetablesproxymodel_types.QConcatenateTablesProxyModel, slot: QConcatenateTablesProxyModelcanFetchMoreProc) =
  # TODO check subclass
  var tmp = new QConcatenateTablesProxyModelcanFetchMoreProc
  tmp[] = slot
  GC_ref(tmp)
  fcQConcatenateTablesProxyModel_override_virtual_canFetchMore(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QConcatenateTablesProxyModel_canFetchMore(self: ptr cQConcatenateTablesProxyModel, slot: int, parent: pointer): bool {.exportc: "miqt_exec_callback_QConcatenateTablesProxyModel_canFetchMore ".} =
  var nimfunc = cast[ptr QConcatenateTablesProxyModelcanFetchMoreProc](cast[pointer](slot))
  let slotval1 = gen_qabstractitemmodel_types.QModelIndex(h: parent)


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn
proc QConcatenateTablesProxyModelsort*(self: gen_qconcatenatetablesproxymodel_types.QConcatenateTablesProxyModel, column: cint, order: cint): void =
  fQConcatenateTablesProxyModel_virtualbase_sort(self.h, column, cint(order))

type QConcatenateTablesProxyModelsortProc* = proc(column: cint, order: cint): void
proc onsort*(self: gen_qconcatenatetablesproxymodel_types.QConcatenateTablesProxyModel, slot: QConcatenateTablesProxyModelsortProc) =
  # TODO check subclass
  var tmp = new QConcatenateTablesProxyModelsortProc
  tmp[] = slot
  GC_ref(tmp)
  fcQConcatenateTablesProxyModel_override_virtual_sort(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QConcatenateTablesProxyModel_sort(self: ptr cQConcatenateTablesProxyModel, slot: int, column: cint, order: cint): void {.exportc: "miqt_exec_callback_QConcatenateTablesProxyModel_sort ".} =
  var nimfunc = cast[ptr QConcatenateTablesProxyModelsortProc](cast[pointer](slot))
  let slotval1 = column

  let slotval2 = cint(order)


  nimfunc[](slotval1, slotval2)
proc QConcatenateTablesProxyModelbuddy*(self: gen_qconcatenatetablesproxymodel_types.QConcatenateTablesProxyModel, index: gen_qabstractitemmodel_types.QModelIndex): gen_qabstractitemmodel_types.QModelIndex =
  gen_qabstractitemmodel_types.QModelIndex(h: fQConcatenateTablesProxyModel_virtualbase_buddy(self.h, index.h))

type QConcatenateTablesProxyModelbuddyProc* = proc(index: gen_qabstractitemmodel_types.QModelIndex): gen_qabstractitemmodel_types.QModelIndex
proc onbuddy*(self: gen_qconcatenatetablesproxymodel_types.QConcatenateTablesProxyModel, slot: QConcatenateTablesProxyModelbuddyProc) =
  # TODO check subclass
  var tmp = new QConcatenateTablesProxyModelbuddyProc
  tmp[] = slot
  GC_ref(tmp)
  fcQConcatenateTablesProxyModel_override_virtual_buddy(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QConcatenateTablesProxyModel_buddy(self: ptr cQConcatenateTablesProxyModel, slot: int, index: pointer): pointer {.exportc: "miqt_exec_callback_QConcatenateTablesProxyModel_buddy ".} =
  var nimfunc = cast[ptr QConcatenateTablesProxyModelbuddyProc](cast[pointer](slot))
  let slotval1 = gen_qabstractitemmodel_types.QModelIndex(h: index)


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn.h
proc QConcatenateTablesProxyModelmatch*(self: gen_qconcatenatetablesproxymodel_types.QConcatenateTablesProxyModel, start: gen_qabstractitemmodel_types.QModelIndex, role: cint, value: gen_qvariant_types.QVariant, hits: cint, flags: cint): seq[gen_qabstractitemmodel_types.QModelIndex] =
  var v_ma = fQConcatenateTablesProxyModel_virtualbase_match(self.h, start.h, role, value.h, hits, cint(flags))
  var vx_ret = newSeq[gen_qabstractitemmodel_types.QModelIndex](int(v_ma.len))
  let v_outCast = cast[ptr UncheckedArray[pointer]](v_ma.data)
  for i in 0 ..< v_ma.len:
    vx_ret[i] = gen_qabstractitemmodel_types.QModelIndex(h: v_outCast[i])
  vx_ret

type QConcatenateTablesProxyModelmatchProc* = proc(start: gen_qabstractitemmodel_types.QModelIndex, role: cint, value: gen_qvariant_types.QVariant, hits: cint, flags: cint): seq[gen_qabstractitemmodel_types.QModelIndex]
proc onmatch*(self: gen_qconcatenatetablesproxymodel_types.QConcatenateTablesProxyModel, slot: QConcatenateTablesProxyModelmatchProc) =
  # TODO check subclass
  var tmp = new QConcatenateTablesProxyModelmatchProc
  tmp[] = slot
  GC_ref(tmp)
  fcQConcatenateTablesProxyModel_override_virtual_match(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QConcatenateTablesProxyModel_match(self: ptr cQConcatenateTablesProxyModel, slot: int, start: pointer, role: cint, value: pointer, hits: cint, flags: cint): struct_miqt_array {.exportc: "miqt_exec_callback_QConcatenateTablesProxyModel_match ".} =
  var nimfunc = cast[ptr QConcatenateTablesProxyModelmatchProc](cast[pointer](slot))
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
proc QConcatenateTablesProxyModelroleNames*(self: gen_qconcatenatetablesproxymodel_types.QConcatenateTablesProxyModel, ): Table[cint,seq[byte]] =
  var v_mm = fQConcatenateTablesProxyModel_virtualbase_roleNames(self.h)
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

type QConcatenateTablesProxyModelroleNamesProc* = proc(): Table[cint,seq[byte]]
proc onroleNames*(self: gen_qconcatenatetablesproxymodel_types.QConcatenateTablesProxyModel, slot: QConcatenateTablesProxyModelroleNamesProc) =
  # TODO check subclass
  var tmp = new QConcatenateTablesProxyModelroleNamesProc
  tmp[] = slot
  GC_ref(tmp)
  fcQConcatenateTablesProxyModel_override_virtual_roleNames(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QConcatenateTablesProxyModel_roleNames(self: ptr cQConcatenateTablesProxyModel, slot: int): struct_miqt_map {.exportc: "miqt_exec_callback_QConcatenateTablesProxyModel_roleNames ".} =
  var nimfunc = cast[ptr QConcatenateTablesProxyModelroleNamesProc](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )
  var virtualReturn_Keys_CArray = newSeq[cint](len(virtualReturn))
  var virtualReturn_Values_CArray = newSeq[struct_miqt_string](len(virtualReturn))
  var virtualReturn_ctr = 0
  for virtualReturnk, virtualReturnv in virtualReturn:
    virtualReturn_Keys_CArray[virtualReturn_ctr] = virtualReturn_k
    virtualReturn_Values_CArray[virtualReturn_ctr] = struct_miqt_string(data: cast[cstring](if len(virtualReturn_v) == 0: nil else: unsafeAddr virtualReturn_v[0]), len: csize_t(len(virtualReturn_v)))
    virtualReturn_ctr += 1


  struct_miqt_map(len: csize_t(len(virtualReturn)),keys: if len(virtualReturn) == 0: nil else: addr(virtualReturn_Keys_CArray[0]), values: if len(virtualReturn) == 0: nil else: addr(virtualReturn_Values_CArray[0]),)
proc QConcatenateTablesProxyModelsubmit*(self: gen_qconcatenatetablesproxymodel_types.QConcatenateTablesProxyModel, ): bool =
  fQConcatenateTablesProxyModel_virtualbase_submit(self.h)

type QConcatenateTablesProxyModelsubmitProc* = proc(): bool
proc onsubmit*(self: gen_qconcatenatetablesproxymodel_types.QConcatenateTablesProxyModel, slot: QConcatenateTablesProxyModelsubmitProc) =
  # TODO check subclass
  var tmp = new QConcatenateTablesProxyModelsubmitProc
  tmp[] = slot
  GC_ref(tmp)
  fcQConcatenateTablesProxyModel_override_virtual_submit(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QConcatenateTablesProxyModel_submit(self: ptr cQConcatenateTablesProxyModel, slot: int): bool {.exportc: "miqt_exec_callback_QConcatenateTablesProxyModel_submit ".} =
  var nimfunc = cast[ptr QConcatenateTablesProxyModelsubmitProc](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )

  virtualReturn
proc QConcatenateTablesProxyModelrevert*(self: gen_qconcatenatetablesproxymodel_types.QConcatenateTablesProxyModel, ): void =
  fQConcatenateTablesProxyModel_virtualbase_revert(self.h)

type QConcatenateTablesProxyModelrevertProc* = proc(): void
proc onrevert*(self: gen_qconcatenatetablesproxymodel_types.QConcatenateTablesProxyModel, slot: QConcatenateTablesProxyModelrevertProc) =
  # TODO check subclass
  var tmp = new QConcatenateTablesProxyModelrevertProc
  tmp[] = slot
  GC_ref(tmp)
  fcQConcatenateTablesProxyModel_override_virtual_revert(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QConcatenateTablesProxyModel_revert(self: ptr cQConcatenateTablesProxyModel, slot: int): void {.exportc: "miqt_exec_callback_QConcatenateTablesProxyModel_revert ".} =
  var nimfunc = cast[ptr QConcatenateTablesProxyModelrevertProc](cast[pointer](slot))

  nimfunc[]()
proc QConcatenateTablesProxyModelevent*(self: gen_qconcatenatetablesproxymodel_types.QConcatenateTablesProxyModel, event: gen_qcoreevent_types.QEvent): bool =
  fQConcatenateTablesProxyModel_virtualbase_event(self.h, event.h)

type QConcatenateTablesProxyModeleventProc* = proc(event: gen_qcoreevent_types.QEvent): bool
proc onevent*(self: gen_qconcatenatetablesproxymodel_types.QConcatenateTablesProxyModel, slot: QConcatenateTablesProxyModeleventProc) =
  # TODO check subclass
  var tmp = new QConcatenateTablesProxyModeleventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQConcatenateTablesProxyModel_override_virtual_event(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QConcatenateTablesProxyModel_event(self: ptr cQConcatenateTablesProxyModel, slot: int, event: pointer): bool {.exportc: "miqt_exec_callback_QConcatenateTablesProxyModel_event ".} =
  var nimfunc = cast[ptr QConcatenateTablesProxyModeleventProc](cast[pointer](slot))
  let slotval1 = gen_qcoreevent_types.QEvent(h: event)


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn
proc QConcatenateTablesProxyModeleventFilter*(self: gen_qconcatenatetablesproxymodel_types.QConcatenateTablesProxyModel, watched: gen_qobject_types.QObject, event: gen_qcoreevent_types.QEvent): bool =
  fQConcatenateTablesProxyModel_virtualbase_eventFilter(self.h, watched.h, event.h)

type QConcatenateTablesProxyModeleventFilterProc* = proc(watched: gen_qobject_types.QObject, event: gen_qcoreevent_types.QEvent): bool
proc oneventFilter*(self: gen_qconcatenatetablesproxymodel_types.QConcatenateTablesProxyModel, slot: QConcatenateTablesProxyModeleventFilterProc) =
  # TODO check subclass
  var tmp = new QConcatenateTablesProxyModeleventFilterProc
  tmp[] = slot
  GC_ref(tmp)
  fcQConcatenateTablesProxyModel_override_virtual_eventFilter(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QConcatenateTablesProxyModel_eventFilter(self: ptr cQConcatenateTablesProxyModel, slot: int, watched: pointer, event: pointer): bool {.exportc: "miqt_exec_callback_QConcatenateTablesProxyModel_eventFilter ".} =
  var nimfunc = cast[ptr QConcatenateTablesProxyModeleventFilterProc](cast[pointer](slot))
  let slotval1 = gen_qobject_types.QObject(h: watched)

  let slotval2 = gen_qcoreevent_types.QEvent(h: event)


  let virtualReturn = nimfunc[](slotval1, slotval2 )

  virtualReturn
proc QConcatenateTablesProxyModeltimerEvent*(self: gen_qconcatenatetablesproxymodel_types.QConcatenateTablesProxyModel, event: gen_qcoreevent_types.QTimerEvent): void =
  fQConcatenateTablesProxyModel_virtualbase_timerEvent(self.h, event.h)

type QConcatenateTablesProxyModeltimerEventProc* = proc(event: gen_qcoreevent_types.QTimerEvent): void
proc ontimerEvent*(self: gen_qconcatenatetablesproxymodel_types.QConcatenateTablesProxyModel, slot: QConcatenateTablesProxyModeltimerEventProc) =
  # TODO check subclass
  var tmp = new QConcatenateTablesProxyModeltimerEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQConcatenateTablesProxyModel_override_virtual_timerEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QConcatenateTablesProxyModel_timerEvent(self: ptr cQConcatenateTablesProxyModel, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QConcatenateTablesProxyModel_timerEvent ".} =
  var nimfunc = cast[ptr QConcatenateTablesProxyModeltimerEventProc](cast[pointer](slot))
  let slotval1 = gen_qcoreevent_types.QTimerEvent(h: event)


  nimfunc[](slotval1)
proc QConcatenateTablesProxyModelchildEvent*(self: gen_qconcatenatetablesproxymodel_types.QConcatenateTablesProxyModel, event: gen_qcoreevent_types.QChildEvent): void =
  fQConcatenateTablesProxyModel_virtualbase_childEvent(self.h, event.h)

type QConcatenateTablesProxyModelchildEventProc* = proc(event: gen_qcoreevent_types.QChildEvent): void
proc onchildEvent*(self: gen_qconcatenatetablesproxymodel_types.QConcatenateTablesProxyModel, slot: QConcatenateTablesProxyModelchildEventProc) =
  # TODO check subclass
  var tmp = new QConcatenateTablesProxyModelchildEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQConcatenateTablesProxyModel_override_virtual_childEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QConcatenateTablesProxyModel_childEvent(self: ptr cQConcatenateTablesProxyModel, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QConcatenateTablesProxyModel_childEvent ".} =
  var nimfunc = cast[ptr QConcatenateTablesProxyModelchildEventProc](cast[pointer](slot))
  let slotval1 = gen_qcoreevent_types.QChildEvent(h: event)


  nimfunc[](slotval1)
proc QConcatenateTablesProxyModelcustomEvent*(self: gen_qconcatenatetablesproxymodel_types.QConcatenateTablesProxyModel, event: gen_qcoreevent_types.QEvent): void =
  fQConcatenateTablesProxyModel_virtualbase_customEvent(self.h, event.h)

type QConcatenateTablesProxyModelcustomEventProc* = proc(event: gen_qcoreevent_types.QEvent): void
proc oncustomEvent*(self: gen_qconcatenatetablesproxymodel_types.QConcatenateTablesProxyModel, slot: QConcatenateTablesProxyModelcustomEventProc) =
  # TODO check subclass
  var tmp = new QConcatenateTablesProxyModelcustomEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQConcatenateTablesProxyModel_override_virtual_customEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QConcatenateTablesProxyModel_customEvent(self: ptr cQConcatenateTablesProxyModel, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QConcatenateTablesProxyModel_customEvent ".} =
  var nimfunc = cast[ptr QConcatenateTablesProxyModelcustomEventProc](cast[pointer](slot))
  let slotval1 = gen_qcoreevent_types.QEvent(h: event)


  nimfunc[](slotval1)
proc QConcatenateTablesProxyModelconnectNotify*(self: gen_qconcatenatetablesproxymodel_types.QConcatenateTablesProxyModel, signal: gen_qmetaobject_types.QMetaMethod): void =
  fQConcatenateTablesProxyModel_virtualbase_connectNotify(self.h, signal.h)

type QConcatenateTablesProxyModelconnectNotifyProc* = proc(signal: gen_qmetaobject_types.QMetaMethod): void
proc onconnectNotify*(self: gen_qconcatenatetablesproxymodel_types.QConcatenateTablesProxyModel, slot: QConcatenateTablesProxyModelconnectNotifyProc) =
  # TODO check subclass
  var tmp = new QConcatenateTablesProxyModelconnectNotifyProc
  tmp[] = slot
  GC_ref(tmp)
  fcQConcatenateTablesProxyModel_override_virtual_connectNotify(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QConcatenateTablesProxyModel_connectNotify(self: ptr cQConcatenateTablesProxyModel, slot: int, signal: pointer): void {.exportc: "miqt_exec_callback_QConcatenateTablesProxyModel_connectNotify ".} =
  var nimfunc = cast[ptr QConcatenateTablesProxyModelconnectNotifyProc](cast[pointer](slot))
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal)


  nimfunc[](slotval1)
proc QConcatenateTablesProxyModeldisconnectNotify*(self: gen_qconcatenatetablesproxymodel_types.QConcatenateTablesProxyModel, signal: gen_qmetaobject_types.QMetaMethod): void =
  fQConcatenateTablesProxyModel_virtualbase_disconnectNotify(self.h, signal.h)

type QConcatenateTablesProxyModeldisconnectNotifyProc* = proc(signal: gen_qmetaobject_types.QMetaMethod): void
proc ondisconnectNotify*(self: gen_qconcatenatetablesproxymodel_types.QConcatenateTablesProxyModel, slot: QConcatenateTablesProxyModeldisconnectNotifyProc) =
  # TODO check subclass
  var tmp = new QConcatenateTablesProxyModeldisconnectNotifyProc
  tmp[] = slot
  GC_ref(tmp)
  fcQConcatenateTablesProxyModel_override_virtual_disconnectNotify(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QConcatenateTablesProxyModel_disconnectNotify(self: ptr cQConcatenateTablesProxyModel, slot: int, signal: pointer): void {.exportc: "miqt_exec_callback_QConcatenateTablesProxyModel_disconnectNotify ".} =
  var nimfunc = cast[ptr QConcatenateTablesProxyModeldisconnectNotifyProc](cast[pointer](slot))
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal)


  nimfunc[](slotval1)
proc staticMetaObject*(_: type gen_qconcatenatetablesproxymodel_types.QConcatenateTablesProxyModel): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQConcatenateTablesProxyModel_staticMetaObject())
proc delete*(self: gen_qconcatenatetablesproxymodel_types.QConcatenateTablesProxyModel) =
  fcQConcatenateTablesProxyModel_delete(self.h)
