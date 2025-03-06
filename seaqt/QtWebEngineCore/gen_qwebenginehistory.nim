import ./Qt6WebEngineCore_libs

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

const cflags = gorge("pkg-config --cflags Qt6WebEngineCore")  & " -fPIC"
{.compile("gen_qwebenginehistory.cpp", cflags).}


type QWebEngineHistoryModelRolesEnum* = distinct cint
template UrlRole*(_: type QWebEngineHistoryModelRolesEnum): untyped = 256
template TitleRole*(_: type QWebEngineHistoryModelRolesEnum): untyped = 257
template OffsetRole*(_: type QWebEngineHistoryModelRolesEnum): untyped = 258
template IconUrlRole*(_: type QWebEngineHistoryModelRolesEnum): untyped = 259


import ./gen_qwebenginehistory_types
export gen_qwebenginehistory_types

import
  ../QtCore/gen_qabstractitemmodel,
  ../QtCore/gen_qdatastream_types,
  ../QtCore/gen_qdatetime_types,
  ../QtCore/gen_qmetaobject_types,
  ../QtCore/gen_qobject,
  ../QtCore/gen_qobjectdefs_types,
  ../QtCore/gen_qurl_types,
  ../QtCore/gen_qvariant_types,
  std/tables
export
  gen_qabstractitemmodel,
  gen_qdatastream_types,
  gen_qdatetime_types,
  gen_qmetaobject_types,
  gen_qobject,
  gen_qobjectdefs_types,
  gen_qurl_types,
  gen_qvariant_types

type cQWebEngineHistoryItem*{.exportc: "QWebEngineHistoryItem", incompleteStruct.} = object
type cQWebEngineHistoryModel*{.exportc: "QWebEngineHistoryModel", incompleteStruct.} = object
type cQWebEngineHistory*{.exportc: "QWebEngineHistory", incompleteStruct.} = object

proc fcQWebEngineHistoryItem_operatorAssign(self: pointer, other: pointer): void {.importc: "QWebEngineHistoryItem_operatorAssign".}
proc fcQWebEngineHistoryItem_originalUrl(self: pointer, ): pointer {.importc: "QWebEngineHistoryItem_originalUrl".}
proc fcQWebEngineHistoryItem_url(self: pointer, ): pointer {.importc: "QWebEngineHistoryItem_url".}
proc fcQWebEngineHistoryItem_title(self: pointer, ): struct_miqt_string {.importc: "QWebEngineHistoryItem_title".}
proc fcQWebEngineHistoryItem_lastVisited(self: pointer, ): pointer {.importc: "QWebEngineHistoryItem_lastVisited".}
proc fcQWebEngineHistoryItem_iconUrl(self: pointer, ): pointer {.importc: "QWebEngineHistoryItem_iconUrl".}
proc fcQWebEngineHistoryItem_isValid(self: pointer, ): bool {.importc: "QWebEngineHistoryItem_isValid".}
proc fcQWebEngineHistoryItem_swap(self: pointer, other: pointer): void {.importc: "QWebEngineHistoryItem_swap".}
proc fcQWebEngineHistoryItem_new(other: pointer): ptr cQWebEngineHistoryItem {.importc: "QWebEngineHistoryItem_new".}
proc fcQWebEngineHistoryItem_delete(self: pointer) {.importc: "QWebEngineHistoryItem_delete".}
proc fcQWebEngineHistoryModel_metaObject(self: pointer, ): pointer {.importc: "QWebEngineHistoryModel_metaObject".}
proc fcQWebEngineHistoryModel_metacast(self: pointer, param1: cstring): pointer {.importc: "QWebEngineHistoryModel_metacast".}
proc fcQWebEngineHistoryModel_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.importc: "QWebEngineHistoryModel_metacall".}
proc fcQWebEngineHistoryModel_tr(s: cstring): struct_miqt_string {.importc: "QWebEngineHistoryModel_tr".}
proc fcQWebEngineHistoryModel_rowCount(self: pointer, parent: pointer): cint {.importc: "QWebEngineHistoryModel_rowCount".}
proc fcQWebEngineHistoryModel_data(self: pointer, index: pointer, role: cint): pointer {.importc: "QWebEngineHistoryModel_data".}
proc fcQWebEngineHistoryModel_roleNames(self: pointer, ): struct_miqt_map {.importc: "QWebEngineHistoryModel_roleNames".}
proc fcQWebEngineHistoryModel_reset(self: pointer, ): void {.importc: "QWebEngineHistoryModel_reset".}
proc fcQWebEngineHistoryModel_tr2(s: cstring, c: cstring): struct_miqt_string {.importc: "QWebEngineHistoryModel_tr2".}
proc fcQWebEngineHistoryModel_tr3(s: cstring, c: cstring, n: cint): struct_miqt_string {.importc: "QWebEngineHistoryModel_tr3".}
proc fcQWebEngineHistoryModel_protectedbase_createIndex(self: pointer, row: cint, column: cint): pointer {.importc: "QWebEngineHistoryModel_protectedbase_createIndex".}
proc fcQWebEngineHistoryModel_protectedbase_encodeData(self: pointer, indexes: struct_miqt_array, stream: pointer): void {.importc: "QWebEngineHistoryModel_protectedbase_encodeData".}
proc fcQWebEngineHistoryModel_protectedbase_decodeData(self: pointer, row: cint, column: cint, parent: pointer, stream: pointer): bool {.importc: "QWebEngineHistoryModel_protectedbase_decodeData".}
proc fcQWebEngineHistoryModel_protectedbase_beginInsertRows(self: pointer, parent: pointer, first: cint, last: cint): void {.importc: "QWebEngineHistoryModel_protectedbase_beginInsertRows".}
proc fcQWebEngineHistoryModel_protectedbase_endInsertRows(self: pointer, ): void {.importc: "QWebEngineHistoryModel_protectedbase_endInsertRows".}
proc fcQWebEngineHistoryModel_protectedbase_beginRemoveRows(self: pointer, parent: pointer, first: cint, last: cint): void {.importc: "QWebEngineHistoryModel_protectedbase_beginRemoveRows".}
proc fcQWebEngineHistoryModel_protectedbase_endRemoveRows(self: pointer, ): void {.importc: "QWebEngineHistoryModel_protectedbase_endRemoveRows".}
proc fcQWebEngineHistoryModel_protectedbase_beginMoveRows(self: pointer, sourceParent: pointer, sourceFirst: cint, sourceLast: cint, destinationParent: pointer, destinationRow: cint): bool {.importc: "QWebEngineHistoryModel_protectedbase_beginMoveRows".}
proc fcQWebEngineHistoryModel_protectedbase_endMoveRows(self: pointer, ): void {.importc: "QWebEngineHistoryModel_protectedbase_endMoveRows".}
proc fcQWebEngineHistoryModel_protectedbase_beginInsertColumns(self: pointer, parent: pointer, first: cint, last: cint): void {.importc: "QWebEngineHistoryModel_protectedbase_beginInsertColumns".}
proc fcQWebEngineHistoryModel_protectedbase_endInsertColumns(self: pointer, ): void {.importc: "QWebEngineHistoryModel_protectedbase_endInsertColumns".}
proc fcQWebEngineHistoryModel_protectedbase_beginRemoveColumns(self: pointer, parent: pointer, first: cint, last: cint): void {.importc: "QWebEngineHistoryModel_protectedbase_beginRemoveColumns".}
proc fcQWebEngineHistoryModel_protectedbase_endRemoveColumns(self: pointer, ): void {.importc: "QWebEngineHistoryModel_protectedbase_endRemoveColumns".}
proc fcQWebEngineHistoryModel_protectedbase_beginMoveColumns(self: pointer, sourceParent: pointer, sourceFirst: cint, sourceLast: cint, destinationParent: pointer, destinationColumn: cint): bool {.importc: "QWebEngineHistoryModel_protectedbase_beginMoveColumns".}
proc fcQWebEngineHistoryModel_protectedbase_endMoveColumns(self: pointer, ): void {.importc: "QWebEngineHistoryModel_protectedbase_endMoveColumns".}
proc fcQWebEngineHistoryModel_protectedbase_beginResetModel(self: pointer, ): void {.importc: "QWebEngineHistoryModel_protectedbase_beginResetModel".}
proc fcQWebEngineHistoryModel_protectedbase_endResetModel(self: pointer, ): void {.importc: "QWebEngineHistoryModel_protectedbase_endResetModel".}
proc fcQWebEngineHistoryModel_protectedbase_changePersistentIndex(self: pointer, fromVal: pointer, to: pointer): void {.importc: "QWebEngineHistoryModel_protectedbase_changePersistentIndex".}
proc fcQWebEngineHistoryModel_protectedbase_changePersistentIndexList(self: pointer, fromVal: struct_miqt_array, to: struct_miqt_array): void {.importc: "QWebEngineHistoryModel_protectedbase_changePersistentIndexList".}
proc fcQWebEngineHistoryModel_protectedbase_persistentIndexList(self: pointer, ): struct_miqt_array {.importc: "QWebEngineHistoryModel_protectedbase_persistentIndexList".}
proc fcQWebEngineHistoryModel_protectedbase_sender(self: pointer, ): pointer {.importc: "QWebEngineHistoryModel_protectedbase_sender".}
proc fcQWebEngineHistoryModel_protectedbase_senderSignalIndex(self: pointer, ): cint {.importc: "QWebEngineHistoryModel_protectedbase_senderSignalIndex".}
proc fcQWebEngineHistoryModel_protectedbase_receivers(self: pointer, signal: cstring): cint {.importc: "QWebEngineHistoryModel_protectedbase_receivers".}
proc fcQWebEngineHistoryModel_protectedbase_isSignalConnected(self: pointer, signal: pointer): bool {.importc: "QWebEngineHistoryModel_protectedbase_isSignalConnected".}
proc fcQWebEngineHistoryModel_staticMetaObject(): pointer {.importc: "QWebEngineHistoryModel_staticMetaObject".}
proc fcQWebEngineHistory_metaObject(self: pointer, ): pointer {.importc: "QWebEngineHistory_metaObject".}
proc fcQWebEngineHistory_metacast(self: pointer, param1: cstring): pointer {.importc: "QWebEngineHistory_metacast".}
proc fcQWebEngineHistory_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.importc: "QWebEngineHistory_metacall".}
proc fcQWebEngineHistory_tr(s: cstring): struct_miqt_string {.importc: "QWebEngineHistory_tr".}
proc fcQWebEngineHistory_clear(self: pointer, ): void {.importc: "QWebEngineHistory_clear".}
proc fcQWebEngineHistory_items(self: pointer, ): struct_miqt_array {.importc: "QWebEngineHistory_items".}
proc fcQWebEngineHistory_backItems(self: pointer, maxItems: cint): struct_miqt_array {.importc: "QWebEngineHistory_backItems".}
proc fcQWebEngineHistory_forwardItems(self: pointer, maxItems: cint): struct_miqt_array {.importc: "QWebEngineHistory_forwardItems".}
proc fcQWebEngineHistory_canGoBack(self: pointer, ): bool {.importc: "QWebEngineHistory_canGoBack".}
proc fcQWebEngineHistory_canGoForward(self: pointer, ): bool {.importc: "QWebEngineHistory_canGoForward".}
proc fcQWebEngineHistory_back(self: pointer, ): void {.importc: "QWebEngineHistory_back".}
proc fcQWebEngineHistory_forward(self: pointer, ): void {.importc: "QWebEngineHistory_forward".}
proc fcQWebEngineHistory_goToItem(self: pointer, item: pointer): void {.importc: "QWebEngineHistory_goToItem".}
proc fcQWebEngineHistory_backItem(self: pointer, ): pointer {.importc: "QWebEngineHistory_backItem".}
proc fcQWebEngineHistory_currentItem(self: pointer, ): pointer {.importc: "QWebEngineHistory_currentItem".}
proc fcQWebEngineHistory_forwardItem(self: pointer, ): pointer {.importc: "QWebEngineHistory_forwardItem".}
proc fcQWebEngineHistory_itemAt(self: pointer, i: cint): pointer {.importc: "QWebEngineHistory_itemAt".}
proc fcQWebEngineHistory_currentItemIndex(self: pointer, ): cint {.importc: "QWebEngineHistory_currentItemIndex".}
proc fcQWebEngineHistory_count(self: pointer, ): cint {.importc: "QWebEngineHistory_count".}
proc fcQWebEngineHistory_itemsModel(self: pointer, ): pointer {.importc: "QWebEngineHistory_itemsModel".}
proc fcQWebEngineHistory_backItemsModel(self: pointer, ): pointer {.importc: "QWebEngineHistory_backItemsModel".}
proc fcQWebEngineHistory_forwardItemsModel(self: pointer, ): pointer {.importc: "QWebEngineHistory_forwardItemsModel".}
proc fcQWebEngineHistory_tr2(s: cstring, c: cstring): struct_miqt_string {.importc: "QWebEngineHistory_tr2".}
proc fcQWebEngineHistory_tr3(s: cstring, c: cstring, n: cint): struct_miqt_string {.importc: "QWebEngineHistory_tr3".}
proc fcQWebEngineHistory_protectedbase_sender(self: pointer, ): pointer {.importc: "QWebEngineHistory_protectedbase_sender".}
proc fcQWebEngineHistory_protectedbase_senderSignalIndex(self: pointer, ): cint {.importc: "QWebEngineHistory_protectedbase_senderSignalIndex".}
proc fcQWebEngineHistory_protectedbase_receivers(self: pointer, signal: cstring): cint {.importc: "QWebEngineHistory_protectedbase_receivers".}
proc fcQWebEngineHistory_protectedbase_isSignalConnected(self: pointer, signal: pointer): bool {.importc: "QWebEngineHistory_protectedbase_isSignalConnected".}
proc fcQWebEngineHistory_staticMetaObject(): pointer {.importc: "QWebEngineHistory_staticMetaObject".}

proc operatorAssign*(self: gen_qwebenginehistory_types.QWebEngineHistoryItem, other: gen_qwebenginehistory_types.QWebEngineHistoryItem): void =
  fcQWebEngineHistoryItem_operatorAssign(self.h, other.h)

proc originalUrl*(self: gen_qwebenginehistory_types.QWebEngineHistoryItem, ): gen_qurl_types.QUrl =
  gen_qurl_types.QUrl(h: fcQWebEngineHistoryItem_originalUrl(self.h))

proc url*(self: gen_qwebenginehistory_types.QWebEngineHistoryItem, ): gen_qurl_types.QUrl =
  gen_qurl_types.QUrl(h: fcQWebEngineHistoryItem_url(self.h))

proc title*(self: gen_qwebenginehistory_types.QWebEngineHistoryItem, ): string =
  let v_ms = fcQWebEngineHistoryItem_title(self.h)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc lastVisited*(self: gen_qwebenginehistory_types.QWebEngineHistoryItem, ): gen_qdatetime_types.QDateTime =
  gen_qdatetime_types.QDateTime(h: fcQWebEngineHistoryItem_lastVisited(self.h))

proc iconUrl*(self: gen_qwebenginehistory_types.QWebEngineHistoryItem, ): gen_qurl_types.QUrl =
  gen_qurl_types.QUrl(h: fcQWebEngineHistoryItem_iconUrl(self.h))

proc isValid*(self: gen_qwebenginehistory_types.QWebEngineHistoryItem, ): bool =
  fcQWebEngineHistoryItem_isValid(self.h)

proc swap*(self: gen_qwebenginehistory_types.QWebEngineHistoryItem, other: gen_qwebenginehistory_types.QWebEngineHistoryItem): void =
  fcQWebEngineHistoryItem_swap(self.h, other.h)

proc create*(T: type gen_qwebenginehistory_types.QWebEngineHistoryItem,
    other: gen_qwebenginehistory_types.QWebEngineHistoryItem): gen_qwebenginehistory_types.QWebEngineHistoryItem =
  gen_qwebenginehistory_types.QWebEngineHistoryItem(h: fcQWebEngineHistoryItem_new(other.h))

proc delete*(self: gen_qwebenginehistory_types.QWebEngineHistoryItem) =
  fcQWebEngineHistoryItem_delete(self.h)
proc metaObject*(self: gen_qwebenginehistory_types.QWebEngineHistoryModel, ): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQWebEngineHistoryModel_metaObject(self.h))

proc metacast*(self: gen_qwebenginehistory_types.QWebEngineHistoryModel, param1: cstring): pointer =
  fcQWebEngineHistoryModel_metacast(self.h, param1)

proc metacall*(self: gen_qwebenginehistory_types.QWebEngineHistoryModel, param1: cint, param2: cint, param3: pointer): cint =
  fcQWebEngineHistoryModel_metacall(self.h, cint(param1), param2, param3)

proc tr*(_: type gen_qwebenginehistory_types.QWebEngineHistoryModel, s: cstring): string =
  let v_ms = fcQWebEngineHistoryModel_tr(s)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc rowCount*(self: gen_qwebenginehistory_types.QWebEngineHistoryModel, parent: gen_qabstractitemmodel_types.QModelIndex): cint =
  fcQWebEngineHistoryModel_rowCount(self.h, parent.h)

proc data*(self: gen_qwebenginehistory_types.QWebEngineHistoryModel, index: gen_qabstractitemmodel_types.QModelIndex, role: cint): gen_qvariant_types.QVariant =
  gen_qvariant_types.QVariant(h: fcQWebEngineHistoryModel_data(self.h, index.h, role))

proc roleNames*(self: gen_qwebenginehistory_types.QWebEngineHistoryModel, ): Table[cint,seq[byte]] =
  var v_mm = fcQWebEngineHistoryModel_roleNames(self.h)
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

proc reset*(self: gen_qwebenginehistory_types.QWebEngineHistoryModel, ): void =
  fcQWebEngineHistoryModel_reset(self.h)

proc tr*(_: type gen_qwebenginehistory_types.QWebEngineHistoryModel, s: cstring, c: cstring): string =
  let v_ms = fcQWebEngineHistoryModel_tr2(s, c)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc tr*(_: type gen_qwebenginehistory_types.QWebEngineHistoryModel, s: cstring, c: cstring, n: cint): string =
  let v_ms = fcQWebEngineHistoryModel_tr3(s, c, n)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc createIndex*(self: gen_qwebenginehistory_types.QWebEngineHistoryModel, row: cint, column: cint): gen_qabstractitemmodel_types.QModelIndex =
  gen_qabstractitemmodel_types.QModelIndex(h: fcQWebEngineHistoryModel_protectedbase_createIndex(self.h, row, column))

proc encodeData*(self: gen_qwebenginehistory_types.QWebEngineHistoryModel, indexes: seq[gen_qabstractitemmodel_types.QModelIndex], stream: gen_qdatastream_types.QDataStream): void =
  var indexes_CArray = newSeq[pointer](len(indexes))
  for i in 0..<len(indexes):
    indexes_CArray[i] = indexes[i].h

  fcQWebEngineHistoryModel_protectedbase_encodeData(self.h, struct_miqt_array(len: csize_t(len(indexes)), data: if len(indexes) == 0: nil else: addr(indexes_CArray[0])), stream.h)

proc decodeData*(self: gen_qwebenginehistory_types.QWebEngineHistoryModel, row: cint, column: cint, parent: gen_qabstractitemmodel_types.QModelIndex, stream: gen_qdatastream_types.QDataStream): bool =
  fcQWebEngineHistoryModel_protectedbase_decodeData(self.h, row, column, parent.h, stream.h)

proc beginInsertRows*(self: gen_qwebenginehistory_types.QWebEngineHistoryModel, parent: gen_qabstractitemmodel_types.QModelIndex, first: cint, last: cint): void =
  fcQWebEngineHistoryModel_protectedbase_beginInsertRows(self.h, parent.h, first, last)

proc endInsertRows*(self: gen_qwebenginehistory_types.QWebEngineHistoryModel, ): void =
  fcQWebEngineHistoryModel_protectedbase_endInsertRows(self.h)

proc beginRemoveRows*(self: gen_qwebenginehistory_types.QWebEngineHistoryModel, parent: gen_qabstractitemmodel_types.QModelIndex, first: cint, last: cint): void =
  fcQWebEngineHistoryModel_protectedbase_beginRemoveRows(self.h, parent.h, first, last)

proc endRemoveRows*(self: gen_qwebenginehistory_types.QWebEngineHistoryModel, ): void =
  fcQWebEngineHistoryModel_protectedbase_endRemoveRows(self.h)

proc beginMoveRows*(self: gen_qwebenginehistory_types.QWebEngineHistoryModel, sourceParent: gen_qabstractitemmodel_types.QModelIndex, sourceFirst: cint, sourceLast: cint, destinationParent: gen_qabstractitemmodel_types.QModelIndex, destinationRow: cint): bool =
  fcQWebEngineHistoryModel_protectedbase_beginMoveRows(self.h, sourceParent.h, sourceFirst, sourceLast, destinationParent.h, destinationRow)

proc endMoveRows*(self: gen_qwebenginehistory_types.QWebEngineHistoryModel, ): void =
  fcQWebEngineHistoryModel_protectedbase_endMoveRows(self.h)

proc beginInsertColumns*(self: gen_qwebenginehistory_types.QWebEngineHistoryModel, parent: gen_qabstractitemmodel_types.QModelIndex, first: cint, last: cint): void =
  fcQWebEngineHistoryModel_protectedbase_beginInsertColumns(self.h, parent.h, first, last)

proc endInsertColumns*(self: gen_qwebenginehistory_types.QWebEngineHistoryModel, ): void =
  fcQWebEngineHistoryModel_protectedbase_endInsertColumns(self.h)

proc beginRemoveColumns*(self: gen_qwebenginehistory_types.QWebEngineHistoryModel, parent: gen_qabstractitemmodel_types.QModelIndex, first: cint, last: cint): void =
  fcQWebEngineHistoryModel_protectedbase_beginRemoveColumns(self.h, parent.h, first, last)

proc endRemoveColumns*(self: gen_qwebenginehistory_types.QWebEngineHistoryModel, ): void =
  fcQWebEngineHistoryModel_protectedbase_endRemoveColumns(self.h)

proc beginMoveColumns*(self: gen_qwebenginehistory_types.QWebEngineHistoryModel, sourceParent: gen_qabstractitemmodel_types.QModelIndex, sourceFirst: cint, sourceLast: cint, destinationParent: gen_qabstractitemmodel_types.QModelIndex, destinationColumn: cint): bool =
  fcQWebEngineHistoryModel_protectedbase_beginMoveColumns(self.h, sourceParent.h, sourceFirst, sourceLast, destinationParent.h, destinationColumn)

proc endMoveColumns*(self: gen_qwebenginehistory_types.QWebEngineHistoryModel, ): void =
  fcQWebEngineHistoryModel_protectedbase_endMoveColumns(self.h)

proc beginResetModel*(self: gen_qwebenginehistory_types.QWebEngineHistoryModel, ): void =
  fcQWebEngineHistoryModel_protectedbase_beginResetModel(self.h)

proc endResetModel*(self: gen_qwebenginehistory_types.QWebEngineHistoryModel, ): void =
  fcQWebEngineHistoryModel_protectedbase_endResetModel(self.h)

proc changePersistentIndex*(self: gen_qwebenginehistory_types.QWebEngineHistoryModel, fromVal: gen_qabstractitemmodel_types.QModelIndex, to: gen_qabstractitemmodel_types.QModelIndex): void =
  fcQWebEngineHistoryModel_protectedbase_changePersistentIndex(self.h, fromVal.h, to.h)

proc changePersistentIndexList*(self: gen_qwebenginehistory_types.QWebEngineHistoryModel, fromVal: seq[gen_qabstractitemmodel_types.QModelIndex], to: seq[gen_qabstractitemmodel_types.QModelIndex]): void =
  var fromVal_CArray = newSeq[pointer](len(fromVal))
  for i in 0..<len(fromVal):
    fromVal_CArray[i] = fromVal[i].h

  var to_CArray = newSeq[pointer](len(to))
  for i in 0..<len(to):
    to_CArray[i] = to[i].h

  fcQWebEngineHistoryModel_protectedbase_changePersistentIndexList(self.h, struct_miqt_array(len: csize_t(len(fromVal)), data: if len(fromVal) == 0: nil else: addr(fromVal_CArray[0])), struct_miqt_array(len: csize_t(len(to)), data: if len(to) == 0: nil else: addr(to_CArray[0])))

proc persistentIndexList*(self: gen_qwebenginehistory_types.QWebEngineHistoryModel, ): seq[gen_qabstractitemmodel_types.QModelIndex] =
  var v_ma = fcQWebEngineHistoryModel_protectedbase_persistentIndexList(self.h)
  var vx_ret = newSeq[gen_qabstractitemmodel_types.QModelIndex](int(v_ma.len))
  let v_outCast = cast[ptr UncheckedArray[pointer]](v_ma.data)
  for i in 0 ..< v_ma.len:
    vx_ret[i] = gen_qabstractitemmodel_types.QModelIndex(h: v_outCast[i])
  vx_ret

proc sender*(self: gen_qwebenginehistory_types.QWebEngineHistoryModel, ): gen_qobject_types.QObject =
  gen_qobject_types.QObject(h: fcQWebEngineHistoryModel_protectedbase_sender(self.h))

proc senderSignalIndex*(self: gen_qwebenginehistory_types.QWebEngineHistoryModel, ): cint =
  fcQWebEngineHistoryModel_protectedbase_senderSignalIndex(self.h)

proc receivers*(self: gen_qwebenginehistory_types.QWebEngineHistoryModel, signal: cstring): cint =
  fcQWebEngineHistoryModel_protectedbase_receivers(self.h, signal)

proc isSignalConnected*(self: gen_qwebenginehistory_types.QWebEngineHistoryModel, signal: gen_qmetaobject_types.QMetaMethod): bool =
  fcQWebEngineHistoryModel_protectedbase_isSignalConnected(self.h, signal.h)

proc staticMetaObject*(_: type gen_qwebenginehistory_types.QWebEngineHistoryModel): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQWebEngineHistoryModel_staticMetaObject())
proc metaObject*(self: gen_qwebenginehistory_types.QWebEngineHistory, ): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQWebEngineHistory_metaObject(self.h))

proc metacast*(self: gen_qwebenginehistory_types.QWebEngineHistory, param1: cstring): pointer =
  fcQWebEngineHistory_metacast(self.h, param1)

proc metacall*(self: gen_qwebenginehistory_types.QWebEngineHistory, param1: cint, param2: cint, param3: pointer): cint =
  fcQWebEngineHistory_metacall(self.h, cint(param1), param2, param3)

proc tr*(_: type gen_qwebenginehistory_types.QWebEngineHistory, s: cstring): string =
  let v_ms = fcQWebEngineHistory_tr(s)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc clear*(self: gen_qwebenginehistory_types.QWebEngineHistory, ): void =
  fcQWebEngineHistory_clear(self.h)

proc items*(self: gen_qwebenginehistory_types.QWebEngineHistory, ): seq[gen_qwebenginehistory_types.QWebEngineHistoryItem] =
  var v_ma = fcQWebEngineHistory_items(self.h)
  var vx_ret = newSeq[gen_qwebenginehistory_types.QWebEngineHistoryItem](int(v_ma.len))
  let v_outCast = cast[ptr UncheckedArray[pointer]](v_ma.data)
  for i in 0 ..< v_ma.len:
    vx_ret[i] = gen_qwebenginehistory_types.QWebEngineHistoryItem(h: v_outCast[i])
  vx_ret

proc backItems*(self: gen_qwebenginehistory_types.QWebEngineHistory, maxItems: cint): seq[gen_qwebenginehistory_types.QWebEngineHistoryItem] =
  var v_ma = fcQWebEngineHistory_backItems(self.h, maxItems)
  var vx_ret = newSeq[gen_qwebenginehistory_types.QWebEngineHistoryItem](int(v_ma.len))
  let v_outCast = cast[ptr UncheckedArray[pointer]](v_ma.data)
  for i in 0 ..< v_ma.len:
    vx_ret[i] = gen_qwebenginehistory_types.QWebEngineHistoryItem(h: v_outCast[i])
  vx_ret

proc forwardItems*(self: gen_qwebenginehistory_types.QWebEngineHistory, maxItems: cint): seq[gen_qwebenginehistory_types.QWebEngineHistoryItem] =
  var v_ma = fcQWebEngineHistory_forwardItems(self.h, maxItems)
  var vx_ret = newSeq[gen_qwebenginehistory_types.QWebEngineHistoryItem](int(v_ma.len))
  let v_outCast = cast[ptr UncheckedArray[pointer]](v_ma.data)
  for i in 0 ..< v_ma.len:
    vx_ret[i] = gen_qwebenginehistory_types.QWebEngineHistoryItem(h: v_outCast[i])
  vx_ret

proc canGoBack*(self: gen_qwebenginehistory_types.QWebEngineHistory, ): bool =
  fcQWebEngineHistory_canGoBack(self.h)

proc canGoForward*(self: gen_qwebenginehistory_types.QWebEngineHistory, ): bool =
  fcQWebEngineHistory_canGoForward(self.h)

proc back*(self: gen_qwebenginehistory_types.QWebEngineHistory, ): void =
  fcQWebEngineHistory_back(self.h)

proc forward*(self: gen_qwebenginehistory_types.QWebEngineHistory, ): void =
  fcQWebEngineHistory_forward(self.h)

proc goToItem*(self: gen_qwebenginehistory_types.QWebEngineHistory, item: gen_qwebenginehistory_types.QWebEngineHistoryItem): void =
  fcQWebEngineHistory_goToItem(self.h, item.h)

proc backItem*(self: gen_qwebenginehistory_types.QWebEngineHistory, ): gen_qwebenginehistory_types.QWebEngineHistoryItem =
  gen_qwebenginehistory_types.QWebEngineHistoryItem(h: fcQWebEngineHistory_backItem(self.h))

proc currentItem*(self: gen_qwebenginehistory_types.QWebEngineHistory, ): gen_qwebenginehistory_types.QWebEngineHistoryItem =
  gen_qwebenginehistory_types.QWebEngineHistoryItem(h: fcQWebEngineHistory_currentItem(self.h))

proc forwardItem*(self: gen_qwebenginehistory_types.QWebEngineHistory, ): gen_qwebenginehistory_types.QWebEngineHistoryItem =
  gen_qwebenginehistory_types.QWebEngineHistoryItem(h: fcQWebEngineHistory_forwardItem(self.h))

proc itemAt*(self: gen_qwebenginehistory_types.QWebEngineHistory, i: cint): gen_qwebenginehistory_types.QWebEngineHistoryItem =
  gen_qwebenginehistory_types.QWebEngineHistoryItem(h: fcQWebEngineHistory_itemAt(self.h, i))

proc currentItemIndex*(self: gen_qwebenginehistory_types.QWebEngineHistory, ): cint =
  fcQWebEngineHistory_currentItemIndex(self.h)

proc count*(self: gen_qwebenginehistory_types.QWebEngineHistory, ): cint =
  fcQWebEngineHistory_count(self.h)

proc itemsModel*(self: gen_qwebenginehistory_types.QWebEngineHistory, ): gen_qwebenginehistory_types.QWebEngineHistoryModel =
  gen_qwebenginehistory_types.QWebEngineHistoryModel(h: fcQWebEngineHistory_itemsModel(self.h))

proc backItemsModel*(self: gen_qwebenginehistory_types.QWebEngineHistory, ): gen_qwebenginehistory_types.QWebEngineHistoryModel =
  gen_qwebenginehistory_types.QWebEngineHistoryModel(h: fcQWebEngineHistory_backItemsModel(self.h))

proc forwardItemsModel*(self: gen_qwebenginehistory_types.QWebEngineHistory, ): gen_qwebenginehistory_types.QWebEngineHistoryModel =
  gen_qwebenginehistory_types.QWebEngineHistoryModel(h: fcQWebEngineHistory_forwardItemsModel(self.h))

proc tr*(_: type gen_qwebenginehistory_types.QWebEngineHistory, s: cstring, c: cstring): string =
  let v_ms = fcQWebEngineHistory_tr2(s, c)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc tr*(_: type gen_qwebenginehistory_types.QWebEngineHistory, s: cstring, c: cstring, n: cint): string =
  let v_ms = fcQWebEngineHistory_tr3(s, c, n)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc sender*(self: gen_qwebenginehistory_types.QWebEngineHistory, ): gen_qobject_types.QObject =
  gen_qobject_types.QObject(h: fcQWebEngineHistory_protectedbase_sender(self.h))

proc senderSignalIndex*(self: gen_qwebenginehistory_types.QWebEngineHistory, ): cint =
  fcQWebEngineHistory_protectedbase_senderSignalIndex(self.h)

proc receivers*(self: gen_qwebenginehistory_types.QWebEngineHistory, signal: cstring): cint =
  fcQWebEngineHistory_protectedbase_receivers(self.h, signal)

proc isSignalConnected*(self: gen_qwebenginehistory_types.QWebEngineHistory, signal: gen_qmetaobject_types.QMetaMethod): bool =
  fcQWebEngineHistory_protectedbase_isSignalConnected(self.h, signal.h)

proc staticMetaObject*(_: type gen_qwebenginehistory_types.QWebEngineHistory): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQWebEngineHistory_staticMetaObject())
