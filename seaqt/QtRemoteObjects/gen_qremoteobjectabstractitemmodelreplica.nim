import ./qtremoteobjects_pkg

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


{.compile("gen_qremoteobjectabstractitemmodelreplica.cpp", QtRemoteObjectsCFlags).}


import ./gen_qremoteobjectabstractitemmodelreplica_types
export gen_qremoteobjectabstractitemmodelreplica_types

import
  ../QtCore/gen_qabstractitemmodel,
  ../QtCore/gen_qdatastream_types,
  ../QtCore/gen_qitemselectionmodel_types,
  ../QtCore/gen_qmetaobject_types,
  ../QtCore/gen_qobject_types,
  ../QtCore/gen_qobjectdefs_types,
  ../QtCore/gen_qvariant_types,
  std/tables
export
  gen_qabstractitemmodel,
  gen_qdatastream_types,
  gen_qitemselectionmodel_types,
  gen_qmetaobject_types,
  gen_qobject_types,
  gen_qobjectdefs_types,
  gen_qvariant_types

type cQAbstractItemModelReplica*{.exportc: "QAbstractItemModelReplica", incompleteStruct.} = object

proc fcQAbstractItemModelReplica_metaObject(self: pointer): pointer {.importc: "QAbstractItemModelReplica_metaObject".}
proc fcQAbstractItemModelReplica_metacast(self: pointer, param1: cstring): pointer {.importc: "QAbstractItemModelReplica_metacast".}
proc fcQAbstractItemModelReplica_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.importc: "QAbstractItemModelReplica_metacall".}
proc fcQAbstractItemModelReplica_trS(s: cstring): struct_seaqt_string {.importc: "QAbstractItemModelReplica_tr_s".}
proc fcQAbstractItemModelReplica_selectionModel(self: pointer): pointer {.importc: "QAbstractItemModelReplica_selectionModel".}
proc fcQAbstractItemModelReplica_dataIndex(self: pointer, index: pointer): pointer {.importc: "QAbstractItemModelReplica_data_index".}
proc fcQAbstractItemModelReplica_multiData(self: pointer, index: pointer, roleDataSpan: pointer): void {.importc: "QAbstractItemModelReplica_multiData".}
proc fcQAbstractItemModelReplica_setData(self: pointer, index: pointer, value: pointer, role: cint): bool {.importc: "QAbstractItemModelReplica_setData".}
proc fcQAbstractItemModelReplica_parent(self: pointer, index: pointer): pointer {.importc: "QAbstractItemModelReplica_parent".}
proc fcQAbstractItemModelReplica_index(self: pointer, row: cint, column: cint, parent: pointer): pointer {.importc: "QAbstractItemModelReplica_index".}
proc fcQAbstractItemModelReplica_hasChildren(self: pointer, parent: pointer): bool {.importc: "QAbstractItemModelReplica_hasChildren".}
proc fcQAbstractItemModelReplica_rowCount(self: pointer, parent: pointer): cint {.importc: "QAbstractItemModelReplica_rowCount".}
proc fcQAbstractItemModelReplica_columnCount(self: pointer, parent: pointer): cint {.importc: "QAbstractItemModelReplica_columnCount".}
proc fcQAbstractItemModelReplica_headerData(self: pointer, section: cint, orientation: cint, role: cint): pointer {.importc: "QAbstractItemModelReplica_headerData".}
proc fcQAbstractItemModelReplica_flags(self: pointer, index: pointer): cint {.importc: "QAbstractItemModelReplica_flags".}
proc fcQAbstractItemModelReplica_availableRoles(self: pointer): struct_seaqt_array {.importc: "QAbstractItemModelReplica_availableRoles".}
proc fcQAbstractItemModelReplica_roleNames(self: pointer): struct_seaqt_map {.importc: "QAbstractItemModelReplica_roleNames".}
proc fcQAbstractItemModelReplica_isInitialized(self: pointer): bool {.importc: "QAbstractItemModelReplica_isInitialized".}
proc fcQAbstractItemModelReplica_hasData(self: pointer, index: pointer, role: cint): bool {.importc: "QAbstractItemModelReplica_hasData".}
proc fcQAbstractItemModelReplica_rootCacheSize(self: pointer): csize_t {.importc: "QAbstractItemModelReplica_rootCacheSize".}
proc fcQAbstractItemModelReplica_setRootCacheSize(self: pointer, rootCacheSize: csize_t): void {.importc: "QAbstractItemModelReplica_setRootCacheSize".}
proc fcQAbstractItemModelReplica_initialized(self: pointer): void {.importc: "QAbstractItemModelReplica_initialized".}
proc fcQAbstractItemModelReplica_connect_initialized(self: pointer, slot: int, callback: proc (slot: int) {.cdecl.}, release: proc(slot: int) {.cdecl.}) {.importc: "QAbstractItemModelReplica_connect_initialized".}
proc fcQAbstractItemModelReplica_trSC(s: cstring, c: cstring): struct_seaqt_string {.importc: "QAbstractItemModelReplica_tr_s_c".}
proc fcQAbstractItemModelReplica_trSCN(s: cstring, c: cstring, n: cint): struct_seaqt_string {.importc: "QAbstractItemModelReplica_tr_s_c_n".}
proc fcQAbstractItemModelReplica_dataIndexRole(self: pointer, index: pointer, role: cint): pointer {.importc: "QAbstractItemModelReplica_data_index_role".}
proc fcQAbstractItemModelReplica_protectedbase_createIndex_row_column(self: pointer, row: cint, column: cint): pointer {.importc: "QAbstractItemModelReplica_protectedbase_createIndex_row_column".}
proc fcQAbstractItemModelReplica_protectedbase_encodeData(self: pointer, indexes: struct_seaqt_array, stream: pointer): void {.importc: "QAbstractItemModelReplica_protectedbase_encodeData".}
proc fcQAbstractItemModelReplica_protectedbase_decodeData(self: pointer, row: cint, column: cint, parent: pointer, stream: pointer): bool {.importc: "QAbstractItemModelReplica_protectedbase_decodeData".}
proc fcQAbstractItemModelReplica_protectedbase_beginInsertRows(self: pointer, parent: pointer, first: cint, last: cint): void {.importc: "QAbstractItemModelReplica_protectedbase_beginInsertRows".}
proc fcQAbstractItemModelReplica_protectedbase_endInsertRows(self: pointer): void {.importc: "QAbstractItemModelReplica_protectedbase_endInsertRows".}
proc fcQAbstractItemModelReplica_protectedbase_beginRemoveRows(self: pointer, parent: pointer, first: cint, last: cint): void {.importc: "QAbstractItemModelReplica_protectedbase_beginRemoveRows".}
proc fcQAbstractItemModelReplica_protectedbase_endRemoveRows(self: pointer): void {.importc: "QAbstractItemModelReplica_protectedbase_endRemoveRows".}
proc fcQAbstractItemModelReplica_protectedbase_beginMoveRows(self: pointer, sourceParent: pointer, sourceFirst: cint, sourceLast: cint, destinationParent: pointer, destinationRow: cint): bool {.importc: "QAbstractItemModelReplica_protectedbase_beginMoveRows".}
proc fcQAbstractItemModelReplica_protectedbase_endMoveRows(self: pointer): void {.importc: "QAbstractItemModelReplica_protectedbase_endMoveRows".}
proc fcQAbstractItemModelReplica_protectedbase_beginInsertColumns(self: pointer, parent: pointer, first: cint, last: cint): void {.importc: "QAbstractItemModelReplica_protectedbase_beginInsertColumns".}
proc fcQAbstractItemModelReplica_protectedbase_endInsertColumns(self: pointer): void {.importc: "QAbstractItemModelReplica_protectedbase_endInsertColumns".}
proc fcQAbstractItemModelReplica_protectedbase_beginRemoveColumns(self: pointer, parent: pointer, first: cint, last: cint): void {.importc: "QAbstractItemModelReplica_protectedbase_beginRemoveColumns".}
proc fcQAbstractItemModelReplica_protectedbase_endRemoveColumns(self: pointer): void {.importc: "QAbstractItemModelReplica_protectedbase_endRemoveColumns".}
proc fcQAbstractItemModelReplica_protectedbase_beginMoveColumns(self: pointer, sourceParent: pointer, sourceFirst: cint, sourceLast: cint, destinationParent: pointer, destinationColumn: cint): bool {.importc: "QAbstractItemModelReplica_protectedbase_beginMoveColumns".}
proc fcQAbstractItemModelReplica_protectedbase_endMoveColumns(self: pointer): void {.importc: "QAbstractItemModelReplica_protectedbase_endMoveColumns".}
proc fcQAbstractItemModelReplica_protectedbase_beginResetModel(self: pointer): void {.importc: "QAbstractItemModelReplica_protectedbase_beginResetModel".}
proc fcQAbstractItemModelReplica_protectedbase_endResetModel(self: pointer): void {.importc: "QAbstractItemModelReplica_protectedbase_endResetModel".}
proc fcQAbstractItemModelReplica_protectedbase_changePersistentIndex(self: pointer, fromVal: pointer, to: pointer): void {.importc: "QAbstractItemModelReplica_protectedbase_changePersistentIndex".}
proc fcQAbstractItemModelReplica_protectedbase_changePersistentIndexList(self: pointer, fromVal: struct_seaqt_array, to: struct_seaqt_array): void {.importc: "QAbstractItemModelReplica_protectedbase_changePersistentIndexList".}
proc fcQAbstractItemModelReplica_protectedbase_persistentIndexList(self: pointer): struct_seaqt_array {.importc: "QAbstractItemModelReplica_protectedbase_persistentIndexList".}
proc fcQAbstractItemModelReplica_protectedbase_sender(self: pointer): pointer {.importc: "QAbstractItemModelReplica_protectedbase_sender".}
proc fcQAbstractItemModelReplica_protectedbase_senderSignalIndex(self: pointer): cint {.importc: "QAbstractItemModelReplica_protectedbase_senderSignalIndex".}
proc fcQAbstractItemModelReplica_protectedbase_receivers(self: pointer, signal: cstring): cint {.importc: "QAbstractItemModelReplica_protectedbase_receivers".}
proc fcQAbstractItemModelReplica_protectedbase_isSignalConnected(self: pointer, signal: pointer): bool {.importc: "QAbstractItemModelReplica_protectedbase_isSignalConnected".}
proc fcQAbstractItemModelReplica_staticMetaObject(): pointer {.importc: "QAbstractItemModelReplica_staticMetaObject".}

proc metaObject*(self: gen_qremoteobjectabstractitemmodelreplica_types.QAbstractItemModelReplica): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQAbstractItemModelReplica_metaObject(self.h), owned: false)

proc metacast*(self: gen_qremoteobjectabstractitemmodelreplica_types.QAbstractItemModelReplica, param1: cstring): pointer =
  fcQAbstractItemModelReplica_metacast(self.h, param1)

proc metacall*(self: gen_qremoteobjectabstractitemmodelreplica_types.QAbstractItemModelReplica, param1: cint, param2: cint, param3: pointer): cint =
  fcQAbstractItemModelReplica_metacall(self.h, cint(param1), param2, param3)

proc tr*(_: type gen_qremoteobjectabstractitemmodelreplica_types.QAbstractItemModelReplica, s: cstring): string =
  let v_ms = fcQAbstractItemModelReplica_trS(s)
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

proc selectionModel*(self: gen_qremoteobjectabstractitemmodelreplica_types.QAbstractItemModelReplica): gen_qitemselectionmodel_types.QItemSelectionModel =
  gen_qitemselectionmodel_types.QItemSelectionModel(h: fcQAbstractItemModelReplica_selectionModel(self.h), owned: false)

proc data*(self: gen_qremoteobjectabstractitemmodelreplica_types.QAbstractItemModelReplica, index: gen_qabstractitemmodel_types.QModelIndex): gen_qvariant_types.QVariant =
  gen_qvariant_types.QVariant(h: fcQAbstractItemModelReplica_dataIndex(self.h, index.h), owned: true)

proc multiData*(self: gen_qremoteobjectabstractitemmodelreplica_types.QAbstractItemModelReplica, index: gen_qabstractitemmodel_types.QModelIndex, roleDataSpan: gen_qabstractitemmodel_types.QModelRoleDataSpan): void =
  fcQAbstractItemModelReplica_multiData(self.h, index.h, roleDataSpan.h)

proc setData*(self: gen_qremoteobjectabstractitemmodelreplica_types.QAbstractItemModelReplica, index: gen_qabstractitemmodel_types.QModelIndex, value: gen_qvariant_types.QVariant, role: cint): bool =
  fcQAbstractItemModelReplica_setData(self.h, index.h, value.h, role)

proc parent*(self: gen_qremoteobjectabstractitemmodelreplica_types.QAbstractItemModelReplica, index: gen_qabstractitemmodel_types.QModelIndex): gen_qabstractitemmodel_types.QModelIndex =
  gen_qabstractitemmodel_types.QModelIndex(h: fcQAbstractItemModelReplica_parent(self.h, index.h), owned: true)

proc index*(self: gen_qremoteobjectabstractitemmodelreplica_types.QAbstractItemModelReplica, row: cint, column: cint, parent: gen_qabstractitemmodel_types.QModelIndex): gen_qabstractitemmodel_types.QModelIndex =
  gen_qabstractitemmodel_types.QModelIndex(h: fcQAbstractItemModelReplica_index(self.h, row, column, parent.h), owned: true)

proc hasChildren*(self: gen_qremoteobjectabstractitemmodelreplica_types.QAbstractItemModelReplica, parent: gen_qabstractitemmodel_types.QModelIndex): bool =
  fcQAbstractItemModelReplica_hasChildren(self.h, parent.h)

proc rowCount*(self: gen_qremoteobjectabstractitemmodelreplica_types.QAbstractItemModelReplica, parent: gen_qabstractitemmodel_types.QModelIndex): cint =
  fcQAbstractItemModelReplica_rowCount(self.h, parent.h)

proc columnCount*(self: gen_qremoteobjectabstractitemmodelreplica_types.QAbstractItemModelReplica, parent: gen_qabstractitemmodel_types.QModelIndex): cint =
  fcQAbstractItemModelReplica_columnCount(self.h, parent.h)

proc headerData*(self: gen_qremoteobjectabstractitemmodelreplica_types.QAbstractItemModelReplica, section: cint, orientation: cint, role: cint): gen_qvariant_types.QVariant =
  gen_qvariant_types.QVariant(h: fcQAbstractItemModelReplica_headerData(self.h, section, cint(orientation), role), owned: true)

proc flags*(self: gen_qremoteobjectabstractitemmodelreplica_types.QAbstractItemModelReplica, index: gen_qabstractitemmodel_types.QModelIndex): cint =
  cint(fcQAbstractItemModelReplica_flags(self.h, index.h))

proc availableRoles*(self: gen_qremoteobjectabstractitemmodelreplica_types.QAbstractItemModelReplica): seq[cint] =
  var v_ma = fcQAbstractItemModelReplica_availableRoles(self.h)
  var vx_ret = newSeq[cint](int(v_ma.len))
  let v_outCast = cast[ptr UncheckedArray[cint]](v_ma.data)
  for i in 0 ..< v_ma.len:
    vx_ret[i] = v_outCast[i]
  c_free(v_ma.data)
  vx_ret

proc roleNames*(self: gen_qremoteobjectabstractitemmodelreplica_types.QAbstractItemModelReplica): Table[cint,seq[byte]] =
  var v_mm = fcQAbstractItemModelReplica_roleNames(self.h)
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

proc isInitialized*(self: gen_qremoteobjectabstractitemmodelreplica_types.QAbstractItemModelReplica): bool =
  fcQAbstractItemModelReplica_isInitialized(self.h)

proc hasData*(self: gen_qremoteobjectabstractitemmodelreplica_types.QAbstractItemModelReplica, index: gen_qabstractitemmodel_types.QModelIndex, role: cint): bool =
  fcQAbstractItemModelReplica_hasData(self.h, index.h, role)

proc rootCacheSize*(self: gen_qremoteobjectabstractitemmodelreplica_types.QAbstractItemModelReplica): csize_t =
  fcQAbstractItemModelReplica_rootCacheSize(self.h)

proc setRootCacheSize*(self: gen_qremoteobjectabstractitemmodelreplica_types.QAbstractItemModelReplica, rootCacheSize: csize_t): void =
  fcQAbstractItemModelReplica_setRootCacheSize(self.h, rootCacheSize)

proc initialized*(self: gen_qremoteobjectabstractitemmodelreplica_types.QAbstractItemModelReplica): void =
  fcQAbstractItemModelReplica_initialized(self.h)

type QAbstractItemModelReplicainitializedSlot* = proc()
proc fcQAbstractItemModelReplica_slot_callback_initialized(slot: int) {.cdecl.} =
  let nimfunc = cast[ptr QAbstractItemModelReplicainitializedSlot](cast[pointer](slot))
  nimfunc[]()

proc fcQAbstractItemModelReplica_slot_callback_initialized_release(slot: int) {.cdecl.} =
  let nimfunc = cast[ref QAbstractItemModelReplicainitializedSlot](cast[pointer](slot))
  GC_unref(nimfunc)

proc onInitialized*(self: gen_qremoteobjectabstractitemmodelreplica_types.QAbstractItemModelReplica, slot: QAbstractItemModelReplicainitializedSlot) =
  var tmp = new QAbstractItemModelReplicainitializedSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQAbstractItemModelReplica_connect_initialized(self.h, cast[int](addr tmp[]), fcQAbstractItemModelReplica_slot_callback_initialized, fcQAbstractItemModelReplica_slot_callback_initialized_release)

proc tr*(_: type gen_qremoteobjectabstractitemmodelreplica_types.QAbstractItemModelReplica, s: cstring, c: cstring): string =
  let v_ms = fcQAbstractItemModelReplica_trSC(s, c)
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

proc tr*(_: type gen_qremoteobjectabstractitemmodelreplica_types.QAbstractItemModelReplica, s: cstring, c: cstring, n: cint): string =
  let v_ms = fcQAbstractItemModelReplica_trSCN(s, c, n)
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

proc data*(self: gen_qremoteobjectabstractitemmodelreplica_types.QAbstractItemModelReplica, index: gen_qabstractitemmodel_types.QModelIndex, role: cint): gen_qvariant_types.QVariant =
  gen_qvariant_types.QVariant(h: fcQAbstractItemModelReplica_dataIndexRole(self.h, index.h, role), owned: true)

proc createIndex*(self: gen_qremoteobjectabstractitemmodelreplica_types.QAbstractItemModelReplica, row: cint, column: cint): gen_qabstractitemmodel_types.QModelIndex =
  gen_qabstractitemmodel_types.QModelIndex(h: fcQAbstractItemModelReplica_protectedbase_createIndex_row_column(self.h, row, column), owned: true)

proc encodeData*(self: gen_qremoteobjectabstractitemmodelreplica_types.QAbstractItemModelReplica, indexes: openArray[gen_qabstractitemmodel_types.QModelIndex], stream: gen_qdatastream_types.QDataStream): void =
  var indexes_CArray = newSeq[pointer](len(indexes))
  for i in 0..<len(indexes):
    indexes_CArray[i] = indexes[i].h

  fcQAbstractItemModelReplica_protectedbase_encodeData(self.h, struct_seaqt_array(len: csize_t(len(indexes)), data: if len(indexes) == 0: nil else: addr(indexes_CArray[0])), stream.h)

proc decodeData*(self: gen_qremoteobjectabstractitemmodelreplica_types.QAbstractItemModelReplica, row: cint, column: cint, parent: gen_qabstractitemmodel_types.QModelIndex, stream: gen_qdatastream_types.QDataStream): bool =
  fcQAbstractItemModelReplica_protectedbase_decodeData(self.h, row, column, parent.h, stream.h)

proc beginInsertRows*(self: gen_qremoteobjectabstractitemmodelreplica_types.QAbstractItemModelReplica, parent: gen_qabstractitemmodel_types.QModelIndex, first: cint, last: cint): void =
  fcQAbstractItemModelReplica_protectedbase_beginInsertRows(self.h, parent.h, first, last)

proc endInsertRows*(self: gen_qremoteobjectabstractitemmodelreplica_types.QAbstractItemModelReplica): void =
  fcQAbstractItemModelReplica_protectedbase_endInsertRows(self.h)

proc beginRemoveRows*(self: gen_qremoteobjectabstractitemmodelreplica_types.QAbstractItemModelReplica, parent: gen_qabstractitemmodel_types.QModelIndex, first: cint, last: cint): void =
  fcQAbstractItemModelReplica_protectedbase_beginRemoveRows(self.h, parent.h, first, last)

proc endRemoveRows*(self: gen_qremoteobjectabstractitemmodelreplica_types.QAbstractItemModelReplica): void =
  fcQAbstractItemModelReplica_protectedbase_endRemoveRows(self.h)

proc beginMoveRows*(self: gen_qremoteobjectabstractitemmodelreplica_types.QAbstractItemModelReplica, sourceParent: gen_qabstractitemmodel_types.QModelIndex, sourceFirst: cint, sourceLast: cint, destinationParent: gen_qabstractitemmodel_types.QModelIndex, destinationRow: cint): bool =
  fcQAbstractItemModelReplica_protectedbase_beginMoveRows(self.h, sourceParent.h, sourceFirst, sourceLast, destinationParent.h, destinationRow)

proc endMoveRows*(self: gen_qremoteobjectabstractitemmodelreplica_types.QAbstractItemModelReplica): void =
  fcQAbstractItemModelReplica_protectedbase_endMoveRows(self.h)

proc beginInsertColumns*(self: gen_qremoteobjectabstractitemmodelreplica_types.QAbstractItemModelReplica, parent: gen_qabstractitemmodel_types.QModelIndex, first: cint, last: cint): void =
  fcQAbstractItemModelReplica_protectedbase_beginInsertColumns(self.h, parent.h, first, last)

proc endInsertColumns*(self: gen_qremoteobjectabstractitemmodelreplica_types.QAbstractItemModelReplica): void =
  fcQAbstractItemModelReplica_protectedbase_endInsertColumns(self.h)

proc beginRemoveColumns*(self: gen_qremoteobjectabstractitemmodelreplica_types.QAbstractItemModelReplica, parent: gen_qabstractitemmodel_types.QModelIndex, first: cint, last: cint): void =
  fcQAbstractItemModelReplica_protectedbase_beginRemoveColumns(self.h, parent.h, first, last)

proc endRemoveColumns*(self: gen_qremoteobjectabstractitemmodelreplica_types.QAbstractItemModelReplica): void =
  fcQAbstractItemModelReplica_protectedbase_endRemoveColumns(self.h)

proc beginMoveColumns*(self: gen_qremoteobjectabstractitemmodelreplica_types.QAbstractItemModelReplica, sourceParent: gen_qabstractitemmodel_types.QModelIndex, sourceFirst: cint, sourceLast: cint, destinationParent: gen_qabstractitemmodel_types.QModelIndex, destinationColumn: cint): bool =
  fcQAbstractItemModelReplica_protectedbase_beginMoveColumns(self.h, sourceParent.h, sourceFirst, sourceLast, destinationParent.h, destinationColumn)

proc endMoveColumns*(self: gen_qremoteobjectabstractitemmodelreplica_types.QAbstractItemModelReplica): void =
  fcQAbstractItemModelReplica_protectedbase_endMoveColumns(self.h)

proc beginResetModel*(self: gen_qremoteobjectabstractitemmodelreplica_types.QAbstractItemModelReplica): void =
  fcQAbstractItemModelReplica_protectedbase_beginResetModel(self.h)

proc endResetModel*(self: gen_qremoteobjectabstractitemmodelreplica_types.QAbstractItemModelReplica): void =
  fcQAbstractItemModelReplica_protectedbase_endResetModel(self.h)

proc changePersistentIndex*(self: gen_qremoteobjectabstractitemmodelreplica_types.QAbstractItemModelReplica, fromVal: gen_qabstractitemmodel_types.QModelIndex, to: gen_qabstractitemmodel_types.QModelIndex): void =
  fcQAbstractItemModelReplica_protectedbase_changePersistentIndex(self.h, fromVal.h, to.h)

proc changePersistentIndexList*(self: gen_qremoteobjectabstractitemmodelreplica_types.QAbstractItemModelReplica, fromVal: openArray[gen_qabstractitemmodel_types.QModelIndex], to: openArray[gen_qabstractitemmodel_types.QModelIndex]): void =
  var fromVal_CArray = newSeq[pointer](len(fromVal))
  for i in 0..<len(fromVal):
    fromVal_CArray[i] = fromVal[i].h

  var to_CArray = newSeq[pointer](len(to))
  for i in 0..<len(to):
    to_CArray[i] = to[i].h

  fcQAbstractItemModelReplica_protectedbase_changePersistentIndexList(self.h, struct_seaqt_array(len: csize_t(len(fromVal)), data: if len(fromVal) == 0: nil else: addr(fromVal_CArray[0])), struct_seaqt_array(len: csize_t(len(to)), data: if len(to) == 0: nil else: addr(to_CArray[0])))

proc persistentIndexList*(self: gen_qremoteobjectabstractitemmodelreplica_types.QAbstractItemModelReplica): seq[gen_qabstractitemmodel_types.QModelIndex] =
  var v_ma = fcQAbstractItemModelReplica_protectedbase_persistentIndexList(self.h)
  var vx_ret = newSeq[gen_qabstractitemmodel_types.QModelIndex](int(v_ma.len))
  let v_outCast = cast[ptr UncheckedArray[pointer]](v_ma.data)
  for i in 0 ..< v_ma.len:
    vx_ret[i] = gen_qabstractitemmodel_types.QModelIndex(h: v_outCast[i], owned: true)
  c_free(v_ma.data)
  vx_ret

proc sender*(self: gen_qremoteobjectabstractitemmodelreplica_types.QAbstractItemModelReplica): gen_qobject_types.QObject =
  gen_qobject_types.QObject(h: fcQAbstractItemModelReplica_protectedbase_sender(self.h), owned: false)

proc senderSignalIndex*(self: gen_qremoteobjectabstractitemmodelreplica_types.QAbstractItemModelReplica): cint =
  fcQAbstractItemModelReplica_protectedbase_senderSignalIndex(self.h)

proc receivers*(self: gen_qremoteobjectabstractitemmodelreplica_types.QAbstractItemModelReplica, signal: cstring): cint =
  fcQAbstractItemModelReplica_protectedbase_receivers(self.h, signal)

proc isSignalConnected*(self: gen_qremoteobjectabstractitemmodelreplica_types.QAbstractItemModelReplica, signal: gen_qmetaobject_types.QMetaMethod): bool =
  fcQAbstractItemModelReplica_protectedbase_isSignalConnected(self.h, signal.h)

proc staticMetaObject*(_: type gen_qremoteobjectabstractitemmodelreplica_types.QAbstractItemModelReplica): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQAbstractItemModelReplica_staticMetaObject())
