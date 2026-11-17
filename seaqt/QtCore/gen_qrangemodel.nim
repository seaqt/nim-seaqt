import ./qtcore_pkg

{.push raises: [].}

from system/ansi_c import c_free, c_malloc

type
  struct_seaqt_string {.used.} = object
    len: csize_t
    data: pointer

  struct_seaqt_array {.used.} = object
    len: csize_t
    data: pointer

  struct_seaqt_map {.used.} = object
    len: csize_t
    keys: pointer
    values: pointer

  miqt_uintptr_t {.importc: "uintptr_t", header: "stdint.h", used.} = uint
  miqt_intptr_t {.importc: "intptr_t", header: "stdint.h", used.} = int

func fromBytes(T: type string, v: struct_seaqt_string): string {.used.} =
  if v.len > 0:
    let len = cast[int](v.len)
    result = newStringUninit(len)
    when nimvm:
      let d = cast[ptr UncheckedArray[char]](v.data)
      for i in 0..<len:
        result[i] = d[i]
    else:
      copyMem(addr result[0], v.data, len)


{.compile("gen_qrangemodel.cpp", QtCoreCFlags).}


type QRangeModelAutoConnectPolicyEnum* = distinct cint
template None*(_: type QRangeModelAutoConnectPolicyEnum): untyped = 0
template Full*(_: type QRangeModelAutoConnectPolicyEnum): untyped = 1
template OnRead*(_: type QRangeModelAutoConnectPolicyEnum): untyped = 2


type QRangeModelRowCategoryEnum* = distinct cint
template Default*(_: type QRangeModelRowCategoryEnum): untyped = 0
template MultiRoleItem*(_: type QRangeModelRowCategoryEnum): untyped = 1


import ./gen_qrangemodel_types
export gen_qrangemodel_types

import
  ./gen_qabstractitemmodel,
  ./gen_qdatastream_types,
  ./gen_qmetaobject_types,
  ./gen_qmimedata_types,
  ./gen_qobject_types,
  ./gen_qobjectdefs_types,
  ./gen_qsize_types,
  ./gen_qvariant_types,
  std/tables
export
  gen_qabstractitemmodel,
  gen_qdatastream_types,
  gen_qmetaobject_types,
  gen_qmimedata_types,
  gen_qobject_types,
  gen_qobjectdefs_types,
  gen_qsize_types,
  gen_qvariant_types

type cQRangeModel*{.exportc: "QRangeModel", incompleteStruct.} = object

proc fcQRangeModel_metaObject(self: pointer): pointer {.importc: "QRangeModel_metaObject".}
proc fcQRangeModel_metacast(self: pointer, param1: cstring): pointer {.importc: "QRangeModel_metacast".}
proc fcQRangeModel_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.importc: "QRangeModel_metacall".}
proc fcQRangeModel_trS(s: cstring): struct_seaqt_string {.importc: "QRangeModel_tr_s".}
proc fcQRangeModel_indexRowColumn(self: pointer, row: cint, column: cint): pointer {.importc: "QRangeModel_index_row_column".}
proc fcQRangeModel_parent(self: pointer, child: pointer): pointer {.importc: "QRangeModel_parent".}
proc fcQRangeModel_sibling(self: pointer, row: cint, column: cint, index: pointer): pointer {.importc: "QRangeModel_sibling".}
proc fcQRangeModel_rowCount(self: pointer): cint {.importc: "QRangeModel_rowCount".}
proc fcQRangeModel_columnCount(self: pointer): cint {.importc: "QRangeModel_columnCount".}
proc fcQRangeModel_flags(self: pointer, index: pointer): cint {.importc: "QRangeModel_flags".}
proc fcQRangeModel_headerData(self: pointer, section: cint, orientation: cint, role: cint): pointer {.importc: "QRangeModel_headerData".}
proc fcQRangeModel_setHeaderData(self: pointer, section: cint, orientation: cint, data: pointer, role: cint): bool {.importc: "QRangeModel_setHeaderData".}
proc fcQRangeModel_data(self: pointer, index: pointer, role: cint): pointer {.importc: "QRangeModel_data".}
proc fcQRangeModel_setData(self: pointer, index: pointer, data: pointer, role: cint): bool {.importc: "QRangeModel_setData".}
proc fcQRangeModel_itemData(self: pointer, index: pointer): struct_seaqt_map {.importc: "QRangeModel_itemData".}
proc fcQRangeModel_setItemData(self: pointer, index: pointer, data: struct_seaqt_map): bool {.importc: "QRangeModel_setItemData".}
proc fcQRangeModel_clearItemData(self: pointer, index: pointer): bool {.importc: "QRangeModel_clearItemData".}
proc fcQRangeModel_insertColumnsColumnCount(self: pointer, column: cint, count: cint): bool {.importc: "QRangeModel_insertColumns_column_count".}
proc fcQRangeModel_removeColumnsColumnCount(self: pointer, column: cint, count: cint): bool {.importc: "QRangeModel_removeColumns_column_count".}
proc fcQRangeModel_moveColumns(self: pointer, sourceParent: pointer, sourceColumn: cint, count: cint, destParent: pointer, destColumn: cint): bool {.importc: "QRangeModel_moveColumns".}
proc fcQRangeModel_insertRowsRowCount(self: pointer, row: cint, count: cint): bool {.importc: "QRangeModel_insertRows_row_count".}
proc fcQRangeModel_removeRowsRowCount(self: pointer, row: cint, count: cint): bool {.importc: "QRangeModel_removeRows_row_count".}
proc fcQRangeModel_moveRows(self: pointer, sourceParent: pointer, sourceRow: cint, count: cint, destParent: pointer, destRow: cint): bool {.importc: "QRangeModel_moveRows".}
proc fcQRangeModel_roleNames(self: pointer): struct_seaqt_map {.importc: "QRangeModel_roleNames".}
proc fcQRangeModel_setRoleNames(self: pointer, names: struct_seaqt_map): void {.importc: "QRangeModel_setRoleNames".}
proc fcQRangeModel_resetRoleNames(self: pointer): void {.importc: "QRangeModel_resetRoleNames".}
proc fcQRangeModel_canFetchMore(self: pointer, parent: pointer): bool {.importc: "QRangeModel_canFetchMore".}
proc fcQRangeModel_fetchMore(self: pointer, parent: pointer): void {.importc: "QRangeModel_fetchMore".}
proc fcQRangeModel_hasChildren(self: pointer): bool {.importc: "QRangeModel_hasChildren".}
proc fcQRangeModel_buddy(self: pointer, index: pointer): pointer {.importc: "QRangeModel_buddy".}
proc fcQRangeModel_canDropMimeData(self: pointer, data: pointer, action: cint, row: cint, column: cint, parent: pointer): bool {.importc: "QRangeModel_canDropMimeData".}
proc fcQRangeModel_dropMimeData(self: pointer, data: pointer, action: cint, row: cint, column: cint, parent: pointer): bool {.importc: "QRangeModel_dropMimeData".}
proc fcQRangeModel_mimeData(self: pointer, indexes: struct_seaqt_array): pointer {.importc: "QRangeModel_mimeData".}
proc fcQRangeModel_mimeTypes(self: pointer): struct_seaqt_array {.importc: "QRangeModel_mimeTypes".}
proc fcQRangeModel_match(self: pointer, start: pointer, role: cint, value: pointer, hits: cint, flags: cint): struct_seaqt_array {.importc: "QRangeModel_match".}
proc fcQRangeModel_multiData(self: pointer, index: pointer, roleDataSpan: pointer): void {.importc: "QRangeModel_multiData".}
proc fcQRangeModel_sort(self: pointer, column: cint, order: cint): void {.importc: "QRangeModel_sort".}
proc fcQRangeModel_span(self: pointer, index: pointer): pointer {.importc: "QRangeModel_span".}
proc fcQRangeModel_supportedDragActions(self: pointer): cint {.importc: "QRangeModel_supportedDragActions".}
proc fcQRangeModel_supportedDropActions(self: pointer): cint {.importc: "QRangeModel_supportedDropActions".}
proc fcQRangeModel_autoConnectPolicy(self: pointer): cint {.importc: "QRangeModel_autoConnectPolicy".}
proc fcQRangeModel_setAutoConnectPolicy(self: pointer, policy: cint): void {.importc: "QRangeModel_setAutoConnectPolicy".}
proc fcQRangeModel_roleNamesChanged(self: pointer): void {.importc: "QRangeModel_roleNamesChanged".}
proc fcQRangeModel_connect_roleNamesChanged(self: pointer, slot: int, callback: proc (slot: int) {.cdecl.}, release: proc(slot: int) {.cdecl.}) {.importc: "QRangeModel_connect_roleNamesChanged".}
proc fcQRangeModel_autoConnectPolicyChanged(self: pointer, policy: cint): void {.importc: "QRangeModel_autoConnectPolicyChanged".}
proc fcQRangeModel_connect_autoConnectPolicyChanged(self: pointer, slot: int, callback: proc (slot: int, policy: cint) {.cdecl.}, release: proc(slot: int) {.cdecl.}) {.importc: "QRangeModel_connect_autoConnectPolicyChanged".}
proc fcQRangeModel_trSC(s: cstring, c: cstring): struct_seaqt_string {.importc: "QRangeModel_tr_s_c".}
proc fcQRangeModel_trSCN(s: cstring, c: cstring, n: cint): struct_seaqt_string {.importc: "QRangeModel_tr_s_c_n".}
proc fcQRangeModel_indexRowColumnParent(self: pointer, row: cint, column: cint, parent: pointer): pointer {.importc: "QRangeModel_index_row_column_parent".}
proc fcQRangeModel_rowCountParent(self: pointer, parent: pointer): cint {.importc: "QRangeModel_rowCount_parent".}
proc fcQRangeModel_columnCountParent(self: pointer, parent: pointer): cint {.importc: "QRangeModel_columnCount_parent".}
proc fcQRangeModel_insertColumnsColumnCountParent(self: pointer, column: cint, count: cint, parent: pointer): bool {.importc: "QRangeModel_insertColumns_column_count_parent".}
proc fcQRangeModel_removeColumnsColumnCountParent(self: pointer, column: cint, count: cint, parent: pointer): bool {.importc: "QRangeModel_removeColumns_column_count_parent".}
proc fcQRangeModel_insertRowsRowCountParent(self: pointer, row: cint, count: cint, parent: pointer): bool {.importc: "QRangeModel_insertRows_row_count_parent".}
proc fcQRangeModel_removeRowsRowCountParent(self: pointer, row: cint, count: cint, parent: pointer): bool {.importc: "QRangeModel_removeRows_row_count_parent".}
proc fcQRangeModel_hasChildrenParent(self: pointer, parent: pointer): bool {.importc: "QRangeModel_hasChildren_parent".}
proc fcQRangeModel_protectedbase_createIndex_row_column(self: pointer, row: cint, column: cint): pointer {.importc: "QRangeModel_protectedbase_createIndex_row_column".}
proc fcQRangeModel_protectedbase_encodeData(self: pointer, indexes: struct_seaqt_array, stream: pointer): void {.importc: "QRangeModel_protectedbase_encodeData".}
proc fcQRangeModel_protectedbase_decodeData(self: pointer, row: cint, column: cint, parent: pointer, stream: pointer): bool {.importc: "QRangeModel_protectedbase_decodeData".}
proc fcQRangeModel_protectedbase_beginInsertRows(self: pointer, parent: pointer, first: cint, last: cint): void {.importc: "QRangeModel_protectedbase_beginInsertRows".}
proc fcQRangeModel_protectedbase_endInsertRows(self: pointer): void {.importc: "QRangeModel_protectedbase_endInsertRows".}
proc fcQRangeModel_protectedbase_beginRemoveRows(self: pointer, parent: pointer, first: cint, last: cint): void {.importc: "QRangeModel_protectedbase_beginRemoveRows".}
proc fcQRangeModel_protectedbase_endRemoveRows(self: pointer): void {.importc: "QRangeModel_protectedbase_endRemoveRows".}
proc fcQRangeModel_protectedbase_beginMoveRows(self: pointer, sourceParent: pointer, sourceFirst: cint, sourceLast: cint, destinationParent: pointer, destinationRow: cint): bool {.importc: "QRangeModel_protectedbase_beginMoveRows".}
proc fcQRangeModel_protectedbase_endMoveRows(self: pointer): void {.importc: "QRangeModel_protectedbase_endMoveRows".}
proc fcQRangeModel_protectedbase_beginInsertColumns(self: pointer, parent: pointer, first: cint, last: cint): void {.importc: "QRangeModel_protectedbase_beginInsertColumns".}
proc fcQRangeModel_protectedbase_endInsertColumns(self: pointer): void {.importc: "QRangeModel_protectedbase_endInsertColumns".}
proc fcQRangeModel_protectedbase_beginRemoveColumns(self: pointer, parent: pointer, first: cint, last: cint): void {.importc: "QRangeModel_protectedbase_beginRemoveColumns".}
proc fcQRangeModel_protectedbase_endRemoveColumns(self: pointer): void {.importc: "QRangeModel_protectedbase_endRemoveColumns".}
proc fcQRangeModel_protectedbase_beginMoveColumns(self: pointer, sourceParent: pointer, sourceFirst: cint, sourceLast: cint, destinationParent: pointer, destinationColumn: cint): bool {.importc: "QRangeModel_protectedbase_beginMoveColumns".}
proc fcQRangeModel_protectedbase_endMoveColumns(self: pointer): void {.importc: "QRangeModel_protectedbase_endMoveColumns".}
proc fcQRangeModel_protectedbase_beginResetModel(self: pointer): void {.importc: "QRangeModel_protectedbase_beginResetModel".}
proc fcQRangeModel_protectedbase_endResetModel(self: pointer): void {.importc: "QRangeModel_protectedbase_endResetModel".}
proc fcQRangeModel_protectedbase_changePersistentIndex(self: pointer, fromVal: pointer, to: pointer): void {.importc: "QRangeModel_protectedbase_changePersistentIndex".}
proc fcQRangeModel_protectedbase_changePersistentIndexList(self: pointer, fromVal: struct_seaqt_array, to: struct_seaqt_array): void {.importc: "QRangeModel_protectedbase_changePersistentIndexList".}
proc fcQRangeModel_protectedbase_persistentIndexList(self: pointer): struct_seaqt_array {.importc: "QRangeModel_protectedbase_persistentIndexList".}
proc fcQRangeModel_protectedbase_sender(self: pointer): pointer {.importc: "QRangeModel_protectedbase_sender".}
proc fcQRangeModel_protectedbase_senderSignalIndex(self: pointer): cint {.importc: "QRangeModel_protectedbase_senderSignalIndex".}
proc fcQRangeModel_protectedbase_receivers(self: pointer, signal: cstring): cint {.importc: "QRangeModel_protectedbase_receivers".}
proc fcQRangeModel_protectedbase_isSignalConnected(self: pointer, signal: pointer): bool {.importc: "QRangeModel_protectedbase_isSignalConnected".}
proc fcQRangeModel_staticMetaObject(): pointer {.importc: "QRangeModel_staticMetaObject".}

proc metaObject*(self: gen_qrangemodel_types.QRangeModel): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQRangeModel_metaObject(self.h), owned: false)

proc metacast*(self: gen_qrangemodel_types.QRangeModel, param1: cstring): pointer =
  fcQRangeModel_metacast(self.h, param1)

proc metacall*(self: gen_qrangemodel_types.QRangeModel, param1: cint, param2: cint, param3: pointer): cint =
  fcQRangeModel_metacall(self.h, cint(param1), param2, param3)

proc tr*(_: type gen_qrangemodel_types.QRangeModel, s: cstring): string =
  let v_ms = fcQRangeModel_trS(s)
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

proc index*(self: gen_qrangemodel_types.QRangeModel, row: cint, column: cint): gen_qabstractitemmodel_types.QModelIndex =
  gen_qabstractitemmodel_types.QModelIndex(h: fcQRangeModel_indexRowColumn(self.h, row, column), owned: true)

proc parent*(self: gen_qrangemodel_types.QRangeModel, child: gen_qabstractitemmodel_types.QModelIndex): gen_qabstractitemmodel_types.QModelIndex =
  gen_qabstractitemmodel_types.QModelIndex(h: fcQRangeModel_parent(self.h, child.h), owned: true)

proc sibling*(self: gen_qrangemodel_types.QRangeModel, row: cint, column: cint, index: gen_qabstractitemmodel_types.QModelIndex): gen_qabstractitemmodel_types.QModelIndex =
  gen_qabstractitemmodel_types.QModelIndex(h: fcQRangeModel_sibling(self.h, row, column, index.h), owned: true)

proc rowCount*(self: gen_qrangemodel_types.QRangeModel): cint =
  fcQRangeModel_rowCount(self.h)

proc columnCount*(self: gen_qrangemodel_types.QRangeModel): cint =
  fcQRangeModel_columnCount(self.h)

proc flags*(self: gen_qrangemodel_types.QRangeModel, index: gen_qabstractitemmodel_types.QModelIndex): cint =
  cint(fcQRangeModel_flags(self.h, index.h))

proc headerData*(self: gen_qrangemodel_types.QRangeModel, section: cint, orientation: cint, role: cint): gen_qvariant_types.QVariant =
  gen_qvariant_types.QVariant(h: fcQRangeModel_headerData(self.h, section, cint(orientation), role), owned: true)

proc setHeaderData*(self: gen_qrangemodel_types.QRangeModel, section: cint, orientation: cint, data: gen_qvariant_types.QVariant, role: cint): bool =
  fcQRangeModel_setHeaderData(self.h, section, cint(orientation), data.h, role)

proc data*(self: gen_qrangemodel_types.QRangeModel, index: gen_qabstractitemmodel_types.QModelIndex, role: cint): gen_qvariant_types.QVariant =
  gen_qvariant_types.QVariant(h: fcQRangeModel_data(self.h, index.h, role), owned: true)

proc setData*(self: gen_qrangemodel_types.QRangeModel, index: gen_qabstractitemmodel_types.QModelIndex, data: gen_qvariant_types.QVariant, role: cint): bool =
  fcQRangeModel_setData(self.h, index.h, data.h, role)

proc itemData*(self: gen_qrangemodel_types.QRangeModel, index: gen_qabstractitemmodel_types.QModelIndex): Table[cint,gen_qvariant_types.QVariant] =
  var v_mm = fcQRangeModel_itemData(self.h, index.h)
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

proc setItemData*(self: gen_qrangemodel_types.QRangeModel, index: gen_qabstractitemmodel_types.QModelIndex, data: Table[cint,gen_qvariant_types.QVariant]): bool =
  var data_Keys_CArray = newSeq[cint](len(data))
  var data_Values_CArray = newSeq[pointer](len(data))
  var data_ctr = 0
  for data_k in data.keys():
    data_Keys_CArray[data_ctr] = data_k
    data_ctr += 1
  data_ctr = 0
  for data_v in data.values():
    data_Values_CArray[data_ctr] = data_v.h
    data_ctr += 1

  fcQRangeModel_setItemData(self.h, index.h, struct_seaqt_map(len: csize_t(len(data)),keys: if len(data) == 0: nil else: addr(data_Keys_CArray[0]), values: if len(data) == 0: nil else: addr(data_Values_CArray[0]),))

proc clearItemData*(self: gen_qrangemodel_types.QRangeModel, index: gen_qabstractitemmodel_types.QModelIndex): bool =
  fcQRangeModel_clearItemData(self.h, index.h)

proc insertColumns*(self: gen_qrangemodel_types.QRangeModel, column: cint, count: cint): bool =
  fcQRangeModel_insertColumnsColumnCount(self.h, column, count)

proc removeColumns*(self: gen_qrangemodel_types.QRangeModel, column: cint, count: cint): bool =
  fcQRangeModel_removeColumnsColumnCount(self.h, column, count)

proc moveColumns*(self: gen_qrangemodel_types.QRangeModel, sourceParent: gen_qabstractitemmodel_types.QModelIndex, sourceColumn: cint, count: cint, destParent: gen_qabstractitemmodel_types.QModelIndex, destColumn: cint): bool =
  fcQRangeModel_moveColumns(self.h, sourceParent.h, sourceColumn, count, destParent.h, destColumn)

proc insertRows*(self: gen_qrangemodel_types.QRangeModel, row: cint, count: cint): bool =
  fcQRangeModel_insertRowsRowCount(self.h, row, count)

proc removeRows*(self: gen_qrangemodel_types.QRangeModel, row: cint, count: cint): bool =
  fcQRangeModel_removeRowsRowCount(self.h, row, count)

proc moveRows*(self: gen_qrangemodel_types.QRangeModel, sourceParent: gen_qabstractitemmodel_types.QModelIndex, sourceRow: cint, count: cint, destParent: gen_qabstractitemmodel_types.QModelIndex, destRow: cint): bool =
  fcQRangeModel_moveRows(self.h, sourceParent.h, sourceRow, count, destParent.h, destRow)

proc roleNames*(self: gen_qrangemodel_types.QRangeModel): Table[cint,seq[byte]] =
  var v_mm = fcQRangeModel_roleNames(self.h)
  var vx_ret: Table[cint, seq[byte]]
  var v_Keys = cast[ptr UncheckedArray[cint]](v_mm.keys)
  var v_Values = cast[ptr UncheckedArray[struct_seaqt_string]](v_mm.values)
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

proc setRoleNames*(self: gen_qrangemodel_types.QRangeModel, names: Table[cint,seq[byte]]): void =
  var names_Keys_CArray = newSeq[cint](len(names))
  var names_Values_CArray = newSeq[struct_seaqt_string](len(names))
  var names_ctr = 0
  for names_k in names.keys():
    names_Keys_CArray[names_ctr] = names_k
    names_ctr += 1
  names_ctr = 0
  for names_v in names.values():
    names_Values_CArray[names_ctr] = struct_seaqt_string(data: if len(names_v) > 0: addr names_v[0] else: nil, len: csize_t(len(names_v)))
    names_ctr += 1

  fcQRangeModel_setRoleNames(self.h, struct_seaqt_map(len: csize_t(len(names)),keys: if len(names) == 0: nil else: addr(names_Keys_CArray[0]), values: if len(names) == 0: nil else: addr(names_Values_CArray[0]),))

proc resetRoleNames*(self: gen_qrangemodel_types.QRangeModel): void =
  fcQRangeModel_resetRoleNames(self.h)

proc canFetchMore*(self: gen_qrangemodel_types.QRangeModel, parent: gen_qabstractitemmodel_types.QModelIndex): bool =
  fcQRangeModel_canFetchMore(self.h, parent.h)

proc fetchMore*(self: gen_qrangemodel_types.QRangeModel, parent: gen_qabstractitemmodel_types.QModelIndex): void =
  fcQRangeModel_fetchMore(self.h, parent.h)

proc hasChildren*(self: gen_qrangemodel_types.QRangeModel): bool =
  fcQRangeModel_hasChildren(self.h)

proc buddy*(self: gen_qrangemodel_types.QRangeModel, index: gen_qabstractitemmodel_types.QModelIndex): gen_qabstractitemmodel_types.QModelIndex =
  gen_qabstractitemmodel_types.QModelIndex(h: fcQRangeModel_buddy(self.h, index.h), owned: true)

proc canDropMimeData*(self: gen_qrangemodel_types.QRangeModel, data: gen_qmimedata_types.QMimeData, action: cint, row: cint, column: cint, parent: gen_qabstractitemmodel_types.QModelIndex): bool =
  fcQRangeModel_canDropMimeData(self.h, data.h, cint(action), row, column, parent.h)

proc dropMimeData*(self: gen_qrangemodel_types.QRangeModel, data: gen_qmimedata_types.QMimeData, action: cint, row: cint, column: cint, parent: gen_qabstractitemmodel_types.QModelIndex): bool =
  fcQRangeModel_dropMimeData(self.h, data.h, cint(action), row, column, parent.h)

proc mimeData*(self: gen_qrangemodel_types.QRangeModel, indexes: openArray[gen_qabstractitemmodel_types.QModelIndex]): gen_qmimedata_types.QMimeData =
  var indexes_CArray = newSeq[pointer](len(indexes))
  for i in 0..<len(indexes):
    indexes_CArray[i] = indexes[i].h

  gen_qmimedata_types.QMimeData(h: fcQRangeModel_mimeData(self.h, struct_seaqt_array(len: csize_t(len(indexes)), data: if len(indexes) == 0: nil else: addr(indexes_CArray[0]))), owned: false)

proc mimeTypes*(self: gen_qrangemodel_types.QRangeModel): seq[string] =
  var v_ma = fcQRangeModel_mimeTypes(self.h)
  var vx_ret = newSeq[string](int(v_ma.len))
  let v_outCast = cast[ptr UncheckedArray[struct_seaqt_string]](v_ma.data)
  for i in 0 ..< v_ma.len:
    let vx_lv_ms = v_outCast[i]
    let vx_lvx_ret = string.fromBytes(vx_lv_ms)
    c_free(vx_lv_ms.data)
    vx_ret[i] = vx_lvx_ret
  c_free(v_ma.data)
  vx_ret

proc match*(self: gen_qrangemodel_types.QRangeModel, start: gen_qabstractitemmodel_types.QModelIndex, role: cint, value: gen_qvariant_types.QVariant, hits: cint, flags: cint): seq[gen_qabstractitemmodel_types.QModelIndex] =
  var v_ma = fcQRangeModel_match(self.h, start.h, role, value.h, hits, cint(flags))
  var vx_ret = newSeq[gen_qabstractitemmodel_types.QModelIndex](int(v_ma.len))
  let v_outCast = cast[ptr UncheckedArray[pointer]](v_ma.data)
  for i in 0 ..< v_ma.len:
    vx_ret[i] = gen_qabstractitemmodel_types.QModelIndex(h: v_outCast[i], owned: true)
  c_free(v_ma.data)
  vx_ret

proc multiData*(self: gen_qrangemodel_types.QRangeModel, index: gen_qabstractitemmodel_types.QModelIndex, roleDataSpan: gen_qabstractitemmodel_types.QModelRoleDataSpan): void =
  fcQRangeModel_multiData(self.h, index.h, roleDataSpan.h)

proc sort*(self: gen_qrangemodel_types.QRangeModel, column: cint, order: cint): void =
  fcQRangeModel_sort(self.h, column, cint(order))

proc span*(self: gen_qrangemodel_types.QRangeModel, index: gen_qabstractitemmodel_types.QModelIndex): gen_qsize_types.QSize =
  gen_qsize_types.QSize(h: fcQRangeModel_span(self.h, index.h), owned: true)

proc supportedDragActions*(self: gen_qrangemodel_types.QRangeModel): cint =
  cint(fcQRangeModel_supportedDragActions(self.h))

proc supportedDropActions*(self: gen_qrangemodel_types.QRangeModel): cint =
  cint(fcQRangeModel_supportedDropActions(self.h))

proc autoConnectPolicy*(self: gen_qrangemodel_types.QRangeModel): cint =
  cint(fcQRangeModel_autoConnectPolicy(self.h))

proc setAutoConnectPolicy*(self: gen_qrangemodel_types.QRangeModel, policy: cint): void =
  fcQRangeModel_setAutoConnectPolicy(self.h, cint(policy))

proc roleNamesChanged*(self: gen_qrangemodel_types.QRangeModel): void =
  fcQRangeModel_roleNamesChanged(self.h)

type QRangeModelroleNamesChangedSlot* = proc()
proc fcQRangeModel_slot_callback_roleNamesChanged(slot: int) {.cdecl.} =
  let nimfunc = cast[ptr QRangeModelroleNamesChangedSlot](cast[pointer](slot))
  nimfunc[]()

proc fcQRangeModel_slot_callback_roleNamesChanged_release(slot: int) {.cdecl.} =
  let nimfunc = cast[ref QRangeModelroleNamesChangedSlot](cast[pointer](slot))
  GC_unref(nimfunc)

proc onRoleNamesChanged*(self: gen_qrangemodel_types.QRangeModel, slot: QRangeModelroleNamesChangedSlot) =
  var tmp = new QRangeModelroleNamesChangedSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQRangeModel_connect_roleNamesChanged(self.h, cast[int](addr tmp[]), fcQRangeModel_slot_callback_roleNamesChanged, fcQRangeModel_slot_callback_roleNamesChanged_release)

proc autoConnectPolicyChanged*(self: gen_qrangemodel_types.QRangeModel, policy: cint): void =
  fcQRangeModel_autoConnectPolicyChanged(self.h, cint(policy))

type QRangeModelautoConnectPolicyChangedSlot* = proc(policy: cint)
proc fcQRangeModel_slot_callback_autoConnectPolicyChanged(slot: int, policy: cint) {.cdecl.} =
  let nimfunc = cast[ptr QRangeModelautoConnectPolicyChangedSlot](cast[pointer](slot))
  let slotval1 = cint(policy)

  nimfunc[](slotval1)

proc fcQRangeModel_slot_callback_autoConnectPolicyChanged_release(slot: int) {.cdecl.} =
  let nimfunc = cast[ref QRangeModelautoConnectPolicyChangedSlot](cast[pointer](slot))
  GC_unref(nimfunc)

proc onAutoConnectPolicyChanged*(self: gen_qrangemodel_types.QRangeModel, slot: QRangeModelautoConnectPolicyChangedSlot) =
  var tmp = new QRangeModelautoConnectPolicyChangedSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQRangeModel_connect_autoConnectPolicyChanged(self.h, cast[int](addr tmp[]), fcQRangeModel_slot_callback_autoConnectPolicyChanged, fcQRangeModel_slot_callback_autoConnectPolicyChanged_release)

proc tr*(_: type gen_qrangemodel_types.QRangeModel, s: cstring, c: cstring): string =
  let v_ms = fcQRangeModel_trSC(s, c)
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

proc tr*(_: type gen_qrangemodel_types.QRangeModel, s: cstring, c: cstring, n: cint): string =
  let v_ms = fcQRangeModel_trSCN(s, c, n)
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

proc index*(self: gen_qrangemodel_types.QRangeModel, row: cint, column: cint, parent: gen_qabstractitemmodel_types.QModelIndex): gen_qabstractitemmodel_types.QModelIndex =
  gen_qabstractitemmodel_types.QModelIndex(h: fcQRangeModel_indexRowColumnParent(self.h, row, column, parent.h), owned: true)

proc rowCount*(self: gen_qrangemodel_types.QRangeModel, parent: gen_qabstractitemmodel_types.QModelIndex): cint =
  fcQRangeModel_rowCountParent(self.h, parent.h)

proc columnCount*(self: gen_qrangemodel_types.QRangeModel, parent: gen_qabstractitemmodel_types.QModelIndex): cint =
  fcQRangeModel_columnCountParent(self.h, parent.h)

proc insertColumns*(self: gen_qrangemodel_types.QRangeModel, column: cint, count: cint, parent: gen_qabstractitemmodel_types.QModelIndex): bool =
  fcQRangeModel_insertColumnsColumnCountParent(self.h, column, count, parent.h)

proc removeColumns*(self: gen_qrangemodel_types.QRangeModel, column: cint, count: cint, parent: gen_qabstractitemmodel_types.QModelIndex): bool =
  fcQRangeModel_removeColumnsColumnCountParent(self.h, column, count, parent.h)

proc insertRows*(self: gen_qrangemodel_types.QRangeModel, row: cint, count: cint, parent: gen_qabstractitemmodel_types.QModelIndex): bool =
  fcQRangeModel_insertRowsRowCountParent(self.h, row, count, parent.h)

proc removeRows*(self: gen_qrangemodel_types.QRangeModel, row: cint, count: cint, parent: gen_qabstractitemmodel_types.QModelIndex): bool =
  fcQRangeModel_removeRowsRowCountParent(self.h, row, count, parent.h)

proc hasChildren*(self: gen_qrangemodel_types.QRangeModel, parent: gen_qabstractitemmodel_types.QModelIndex): bool =
  fcQRangeModel_hasChildrenParent(self.h, parent.h)

proc createIndex*(self: gen_qrangemodel_types.QRangeModel, row: cint, column: cint): gen_qabstractitemmodel_types.QModelIndex =
  gen_qabstractitemmodel_types.QModelIndex(h: fcQRangeModel_protectedbase_createIndex_row_column(self.h, row, column), owned: true)

proc encodeData*(self: gen_qrangemodel_types.QRangeModel, indexes: openArray[gen_qabstractitemmodel_types.QModelIndex], stream: gen_qdatastream_types.QDataStream): void =
  var indexes_CArray = newSeq[pointer](len(indexes))
  for i in 0..<len(indexes):
    indexes_CArray[i] = indexes[i].h

  fcQRangeModel_protectedbase_encodeData(self.h, struct_seaqt_array(len: csize_t(len(indexes)), data: if len(indexes) == 0: nil else: addr(indexes_CArray[0])), stream.h)

proc decodeData*(self: gen_qrangemodel_types.QRangeModel, row: cint, column: cint, parent: gen_qabstractitemmodel_types.QModelIndex, stream: gen_qdatastream_types.QDataStream): bool =
  fcQRangeModel_protectedbase_decodeData(self.h, row, column, parent.h, stream.h)

proc beginInsertRows*(self: gen_qrangemodel_types.QRangeModel, parent: gen_qabstractitemmodel_types.QModelIndex, first: cint, last: cint): void =
  fcQRangeModel_protectedbase_beginInsertRows(self.h, parent.h, first, last)

proc endInsertRows*(self: gen_qrangemodel_types.QRangeModel): void =
  fcQRangeModel_protectedbase_endInsertRows(self.h)

proc beginRemoveRows*(self: gen_qrangemodel_types.QRangeModel, parent: gen_qabstractitemmodel_types.QModelIndex, first: cint, last: cint): void =
  fcQRangeModel_protectedbase_beginRemoveRows(self.h, parent.h, first, last)

proc endRemoveRows*(self: gen_qrangemodel_types.QRangeModel): void =
  fcQRangeModel_protectedbase_endRemoveRows(self.h)

proc beginMoveRows*(self: gen_qrangemodel_types.QRangeModel, sourceParent: gen_qabstractitemmodel_types.QModelIndex, sourceFirst: cint, sourceLast: cint, destinationParent: gen_qabstractitemmodel_types.QModelIndex, destinationRow: cint): bool =
  fcQRangeModel_protectedbase_beginMoveRows(self.h, sourceParent.h, sourceFirst, sourceLast, destinationParent.h, destinationRow)

proc endMoveRows*(self: gen_qrangemodel_types.QRangeModel): void =
  fcQRangeModel_protectedbase_endMoveRows(self.h)

proc beginInsertColumns*(self: gen_qrangemodel_types.QRangeModel, parent: gen_qabstractitemmodel_types.QModelIndex, first: cint, last: cint): void =
  fcQRangeModel_protectedbase_beginInsertColumns(self.h, parent.h, first, last)

proc endInsertColumns*(self: gen_qrangemodel_types.QRangeModel): void =
  fcQRangeModel_protectedbase_endInsertColumns(self.h)

proc beginRemoveColumns*(self: gen_qrangemodel_types.QRangeModel, parent: gen_qabstractitemmodel_types.QModelIndex, first: cint, last: cint): void =
  fcQRangeModel_protectedbase_beginRemoveColumns(self.h, parent.h, first, last)

proc endRemoveColumns*(self: gen_qrangemodel_types.QRangeModel): void =
  fcQRangeModel_protectedbase_endRemoveColumns(self.h)

proc beginMoveColumns*(self: gen_qrangemodel_types.QRangeModel, sourceParent: gen_qabstractitemmodel_types.QModelIndex, sourceFirst: cint, sourceLast: cint, destinationParent: gen_qabstractitemmodel_types.QModelIndex, destinationColumn: cint): bool =
  fcQRangeModel_protectedbase_beginMoveColumns(self.h, sourceParent.h, sourceFirst, sourceLast, destinationParent.h, destinationColumn)

proc endMoveColumns*(self: gen_qrangemodel_types.QRangeModel): void =
  fcQRangeModel_protectedbase_endMoveColumns(self.h)

proc beginResetModel*(self: gen_qrangemodel_types.QRangeModel): void =
  fcQRangeModel_protectedbase_beginResetModel(self.h)

proc endResetModel*(self: gen_qrangemodel_types.QRangeModel): void =
  fcQRangeModel_protectedbase_endResetModel(self.h)

proc changePersistentIndex*(self: gen_qrangemodel_types.QRangeModel, fromVal: gen_qabstractitemmodel_types.QModelIndex, to: gen_qabstractitemmodel_types.QModelIndex): void =
  fcQRangeModel_protectedbase_changePersistentIndex(self.h, fromVal.h, to.h)

proc changePersistentIndexList*(self: gen_qrangemodel_types.QRangeModel, fromVal: openArray[gen_qabstractitemmodel_types.QModelIndex], to: openArray[gen_qabstractitemmodel_types.QModelIndex]): void =
  var fromVal_CArray = newSeq[pointer](len(fromVal))
  for i in 0..<len(fromVal):
    fromVal_CArray[i] = fromVal[i].h

  var to_CArray = newSeq[pointer](len(to))
  for i in 0..<len(to):
    to_CArray[i] = to[i].h

  fcQRangeModel_protectedbase_changePersistentIndexList(self.h, struct_seaqt_array(len: csize_t(len(fromVal)), data: if len(fromVal) == 0: nil else: addr(fromVal_CArray[0])), struct_seaqt_array(len: csize_t(len(to)), data: if len(to) == 0: nil else: addr(to_CArray[0])))

proc persistentIndexList*(self: gen_qrangemodel_types.QRangeModel): seq[gen_qabstractitemmodel_types.QModelIndex] =
  var v_ma = fcQRangeModel_protectedbase_persistentIndexList(self.h)
  var vx_ret = newSeq[gen_qabstractitemmodel_types.QModelIndex](int(v_ma.len))
  let v_outCast = cast[ptr UncheckedArray[pointer]](v_ma.data)
  for i in 0 ..< v_ma.len:
    vx_ret[i] = gen_qabstractitemmodel_types.QModelIndex(h: v_outCast[i], owned: true)
  c_free(v_ma.data)
  vx_ret

proc sender*(self: gen_qrangemodel_types.QRangeModel): gen_qobject_types.QObject =
  gen_qobject_types.QObject(h: fcQRangeModel_protectedbase_sender(self.h), owned: false)

proc senderSignalIndex*(self: gen_qrangemodel_types.QRangeModel): cint =
  fcQRangeModel_protectedbase_senderSignalIndex(self.h)

proc receivers*(self: gen_qrangemodel_types.QRangeModel, signal: cstring): cint =
  fcQRangeModel_protectedbase_receivers(self.h, signal)

proc isSignalConnected*(self: gen_qrangemodel_types.QRangeModel, signal: gen_qmetaobject_types.QMetaMethod): bool =
  fcQRangeModel_protectedbase_isSignalConnected(self.h, signal.h)

proc staticMetaObject*(_: type gen_qrangemodel_types.QRangeModel): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQRangeModel_staticMetaObject())
