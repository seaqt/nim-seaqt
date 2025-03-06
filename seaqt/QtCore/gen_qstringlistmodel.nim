import ./Qt5Core_libs

{.push raises: [].}

from system/ansi_c import c_free, c_malloc

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

const cflags = gorge("pkg-config --cflags Qt5Core") & " -fPIC"
{.compile("gen_qstringlistmodel.cpp", cflags).}


import ./gen_qstringlistmodel_types
export gen_qstringlistmodel_types

import
  ./gen_qabstractitemmodel,
  ./gen_qcoreevent_types,
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
  gen_qcoreevent_types,
  gen_qdatastream_types,
  gen_qmetaobject_types,
  gen_qmimedata_types,
  gen_qobject_types,
  gen_qobjectdefs_types,
  gen_qsize_types,
  gen_qvariant_types

type cQStringListModel*{.exportc: "QStringListModel", incompleteStruct.} = object

proc fcQStringListModel_metaObject(self: pointer, ): pointer {.importc: "QStringListModel_metaObject".}
proc fcQStringListModel_metacast(self: pointer, param1: cstring): pointer {.importc: "QStringListModel_metacast".}
proc fcQStringListModel_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.importc: "QStringListModel_metacall".}
proc fcQStringListModel_tr(s: cstring): struct_miqt_string {.importc: "QStringListModel_tr".}
proc fcQStringListModel_trUtf8(s: cstring): struct_miqt_string {.importc: "QStringListModel_trUtf8".}
proc fcQStringListModel_rowCount(self: pointer, parent: pointer): cint {.importc: "QStringListModel_rowCount".}
proc fcQStringListModel_sibling(self: pointer, row: cint, column: cint, idx: pointer): pointer {.importc: "QStringListModel_sibling".}
proc fcQStringListModel_data(self: pointer, index: pointer, role: cint): pointer {.importc: "QStringListModel_data".}
proc fcQStringListModel_setData(self: pointer, index: pointer, value: pointer, role: cint): bool {.importc: "QStringListModel_setData".}
proc fcQStringListModel_flags(self: pointer, index: pointer): cint {.importc: "QStringListModel_flags".}
proc fcQStringListModel_insertRows(self: pointer, row: cint, count: cint, parent: pointer): bool {.importc: "QStringListModel_insertRows".}
proc fcQStringListModel_removeRows(self: pointer, row: cint, count: cint, parent: pointer): bool {.importc: "QStringListModel_removeRows".}
proc fcQStringListModel_moveRows(self: pointer, sourceParent: pointer, sourceRow: cint, count: cint, destinationParent: pointer, destinationChild: cint): bool {.importc: "QStringListModel_moveRows".}
proc fcQStringListModel_itemData(self: pointer, index: pointer): struct_miqt_map {.importc: "QStringListModel_itemData".}
proc fcQStringListModel_setItemData(self: pointer, index: pointer, roles: struct_miqt_map): bool {.importc: "QStringListModel_setItemData".}
proc fcQStringListModel_sort(self: pointer, column: cint, order: cint): void {.importc: "QStringListModel_sort".}
proc fcQStringListModel_stringList(self: pointer, ): struct_miqt_array {.importc: "QStringListModel_stringList".}
proc fcQStringListModel_setStringList(self: pointer, strings: struct_miqt_array): void {.importc: "QStringListModel_setStringList".}
proc fcQStringListModel_supportedDropActions(self: pointer, ): cint {.importc: "QStringListModel_supportedDropActions".}
proc fcQStringListModel_tr2(s: cstring, c: cstring): struct_miqt_string {.importc: "QStringListModel_tr2".}
proc fcQStringListModel_tr3(s: cstring, c: cstring, n: cint): struct_miqt_string {.importc: "QStringListModel_tr3".}
proc fcQStringListModel_trUtf82(s: cstring, c: cstring): struct_miqt_string {.importc: "QStringListModel_trUtf82".}
proc fcQStringListModel_trUtf83(s: cstring, c: cstring, n: cint): struct_miqt_string {.importc: "QStringListModel_trUtf83".}
type cQStringListModelVTable {.pure.} = object
  destructor*: proc(vtbl: ptr cQStringListModelVTable, self: ptr cQStringListModel) {.cdecl, raises:[], gcsafe.}
  metaObject*: proc(vtbl, self: pointer, ): pointer {.cdecl, raises: [], gcsafe.}
  metacast*: proc(vtbl, self: pointer, param1: cstring): pointer {.cdecl, raises: [], gcsafe.}
  metacall*: proc(vtbl, self: pointer, param1: cint, param2: cint, param3: pointer): cint {.cdecl, raises: [], gcsafe.}
  rowCount*: proc(vtbl, self: pointer, parent: pointer): cint {.cdecl, raises: [], gcsafe.}
  sibling*: proc(vtbl, self: pointer, row: cint, column: cint, idx: pointer): pointer {.cdecl, raises: [], gcsafe.}
  data*: proc(vtbl, self: pointer, index: pointer, role: cint): pointer {.cdecl, raises: [], gcsafe.}
  setData*: proc(vtbl, self: pointer, index: pointer, value: pointer, role: cint): bool {.cdecl, raises: [], gcsafe.}
  flags*: proc(vtbl, self: pointer, index: pointer): cint {.cdecl, raises: [], gcsafe.}
  insertRows*: proc(vtbl, self: pointer, row: cint, count: cint, parent: pointer): bool {.cdecl, raises: [], gcsafe.}
  removeRows*: proc(vtbl, self: pointer, row: cint, count: cint, parent: pointer): bool {.cdecl, raises: [], gcsafe.}
  moveRows*: proc(vtbl, self: pointer, sourceParent: pointer, sourceRow: cint, count: cint, destinationParent: pointer, destinationChild: cint): bool {.cdecl, raises: [], gcsafe.}
  itemData*: proc(vtbl, self: pointer, index: pointer): struct_miqt_map {.cdecl, raises: [], gcsafe.}
  setItemData*: proc(vtbl, self: pointer, index: pointer, roles: struct_miqt_map): bool {.cdecl, raises: [], gcsafe.}
  sort*: proc(vtbl, self: pointer, column: cint, order: cint): void {.cdecl, raises: [], gcsafe.}
  supportedDropActions*: proc(vtbl, self: pointer, ): cint {.cdecl, raises: [], gcsafe.}
  index*: proc(vtbl, self: pointer, row: cint, column: cint, parent: pointer): pointer {.cdecl, raises: [], gcsafe.}
  dropMimeData*: proc(vtbl, self: pointer, data: pointer, action: cint, row: cint, column: cint, parent: pointer): bool {.cdecl, raises: [], gcsafe.}
  headerData*: proc(vtbl, self: pointer, section: cint, orientation: cint, role: cint): pointer {.cdecl, raises: [], gcsafe.}
  setHeaderData*: proc(vtbl, self: pointer, section: cint, orientation: cint, value: pointer, role: cint): bool {.cdecl, raises: [], gcsafe.}
  mimeTypes*: proc(vtbl, self: pointer, ): struct_miqt_array {.cdecl, raises: [], gcsafe.}
  mimeData*: proc(vtbl, self: pointer, indexes: struct_miqt_array): pointer {.cdecl, raises: [], gcsafe.}
  canDropMimeData*: proc(vtbl, self: pointer, data: pointer, action: cint, row: cint, column: cint, parent: pointer): bool {.cdecl, raises: [], gcsafe.}
  supportedDragActions*: proc(vtbl, self: pointer, ): cint {.cdecl, raises: [], gcsafe.}
  insertColumns*: proc(vtbl, self: pointer, column: cint, count: cint, parent: pointer): bool {.cdecl, raises: [], gcsafe.}
  removeColumns*: proc(vtbl, self: pointer, column: cint, count: cint, parent: pointer): bool {.cdecl, raises: [], gcsafe.}
  moveColumns*: proc(vtbl, self: pointer, sourceParent: pointer, sourceColumn: cint, count: cint, destinationParent: pointer, destinationChild: cint): bool {.cdecl, raises: [], gcsafe.}
  fetchMore*: proc(vtbl, self: pointer, parent: pointer): void {.cdecl, raises: [], gcsafe.}
  canFetchMore*: proc(vtbl, self: pointer, parent: pointer): bool {.cdecl, raises: [], gcsafe.}
  buddy*: proc(vtbl, self: pointer, index: pointer): pointer {.cdecl, raises: [], gcsafe.}
  match*: proc(vtbl, self: pointer, start: pointer, role: cint, value: pointer, hits: cint, flags: cint): struct_miqt_array {.cdecl, raises: [], gcsafe.}
  span*: proc(vtbl, self: pointer, index: pointer): pointer {.cdecl, raises: [], gcsafe.}
  roleNames*: proc(vtbl, self: pointer, ): struct_miqt_map {.cdecl, raises: [], gcsafe.}
  submit*: proc(vtbl, self: pointer, ): bool {.cdecl, raises: [], gcsafe.}
  revert*: proc(vtbl, self: pointer, ): void {.cdecl, raises: [], gcsafe.}
  event*: proc(vtbl, self: pointer, event: pointer): bool {.cdecl, raises: [], gcsafe.}
  eventFilter*: proc(vtbl, self: pointer, watched: pointer, event: pointer): bool {.cdecl, raises: [], gcsafe.}
  timerEvent*: proc(vtbl, self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  childEvent*: proc(vtbl, self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  customEvent*: proc(vtbl, self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  connectNotify*: proc(vtbl, self: pointer, signal: pointer): void {.cdecl, raises: [], gcsafe.}
  disconnectNotify*: proc(vtbl, self: pointer, signal: pointer): void {.cdecl, raises: [], gcsafe.}
proc fcQStringListModel_virtualbase_metaObject(self: pointer, ): pointer {.importc: "QStringListModel_virtualbase_metaObject".}
proc fcQStringListModel_virtualbase_metacast(self: pointer, param1: cstring): pointer {.importc: "QStringListModel_virtualbase_metacast".}
proc fcQStringListModel_virtualbase_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.importc: "QStringListModel_virtualbase_metacall".}
proc fcQStringListModel_virtualbase_rowCount(self: pointer, parent: pointer): cint {.importc: "QStringListModel_virtualbase_rowCount".}
proc fcQStringListModel_virtualbase_sibling(self: pointer, row: cint, column: cint, idx: pointer): pointer {.importc: "QStringListModel_virtualbase_sibling".}
proc fcQStringListModel_virtualbase_data(self: pointer, index: pointer, role: cint): pointer {.importc: "QStringListModel_virtualbase_data".}
proc fcQStringListModel_virtualbase_setData(self: pointer, index: pointer, value: pointer, role: cint): bool {.importc: "QStringListModel_virtualbase_setData".}
proc fcQStringListModel_virtualbase_flags(self: pointer, index: pointer): cint {.importc: "QStringListModel_virtualbase_flags".}
proc fcQStringListModel_virtualbase_insertRows(self: pointer, row: cint, count: cint, parent: pointer): bool {.importc: "QStringListModel_virtualbase_insertRows".}
proc fcQStringListModel_virtualbase_removeRows(self: pointer, row: cint, count: cint, parent: pointer): bool {.importc: "QStringListModel_virtualbase_removeRows".}
proc fcQStringListModel_virtualbase_moveRows(self: pointer, sourceParent: pointer, sourceRow: cint, count: cint, destinationParent: pointer, destinationChild: cint): bool {.importc: "QStringListModel_virtualbase_moveRows".}
proc fcQStringListModel_virtualbase_itemData(self: pointer, index: pointer): struct_miqt_map {.importc: "QStringListModel_virtualbase_itemData".}
proc fcQStringListModel_virtualbase_setItemData(self: pointer, index: pointer, roles: struct_miqt_map): bool {.importc: "QStringListModel_virtualbase_setItemData".}
proc fcQStringListModel_virtualbase_sort(self: pointer, column: cint, order: cint): void {.importc: "QStringListModel_virtualbase_sort".}
proc fcQStringListModel_virtualbase_supportedDropActions(self: pointer, ): cint {.importc: "QStringListModel_virtualbase_supportedDropActions".}
proc fcQStringListModel_virtualbase_index(self: pointer, row: cint, column: cint, parent: pointer): pointer {.importc: "QStringListModel_virtualbase_index".}
proc fcQStringListModel_virtualbase_dropMimeData(self: pointer, data: pointer, action: cint, row: cint, column: cint, parent: pointer): bool {.importc: "QStringListModel_virtualbase_dropMimeData".}
proc fcQStringListModel_virtualbase_headerData(self: pointer, section: cint, orientation: cint, role: cint): pointer {.importc: "QStringListModel_virtualbase_headerData".}
proc fcQStringListModel_virtualbase_setHeaderData(self: pointer, section: cint, orientation: cint, value: pointer, role: cint): bool {.importc: "QStringListModel_virtualbase_setHeaderData".}
proc fcQStringListModel_virtualbase_mimeTypes(self: pointer, ): struct_miqt_array {.importc: "QStringListModel_virtualbase_mimeTypes".}
proc fcQStringListModel_virtualbase_mimeData(self: pointer, indexes: struct_miqt_array): pointer {.importc: "QStringListModel_virtualbase_mimeData".}
proc fcQStringListModel_virtualbase_canDropMimeData(self: pointer, data: pointer, action: cint, row: cint, column: cint, parent: pointer): bool {.importc: "QStringListModel_virtualbase_canDropMimeData".}
proc fcQStringListModel_virtualbase_supportedDragActions(self: pointer, ): cint {.importc: "QStringListModel_virtualbase_supportedDragActions".}
proc fcQStringListModel_virtualbase_insertColumns(self: pointer, column: cint, count: cint, parent: pointer): bool {.importc: "QStringListModel_virtualbase_insertColumns".}
proc fcQStringListModel_virtualbase_removeColumns(self: pointer, column: cint, count: cint, parent: pointer): bool {.importc: "QStringListModel_virtualbase_removeColumns".}
proc fcQStringListModel_virtualbase_moveColumns(self: pointer, sourceParent: pointer, sourceColumn: cint, count: cint, destinationParent: pointer, destinationChild: cint): bool {.importc: "QStringListModel_virtualbase_moveColumns".}
proc fcQStringListModel_virtualbase_fetchMore(self: pointer, parent: pointer): void {.importc: "QStringListModel_virtualbase_fetchMore".}
proc fcQStringListModel_virtualbase_canFetchMore(self: pointer, parent: pointer): bool {.importc: "QStringListModel_virtualbase_canFetchMore".}
proc fcQStringListModel_virtualbase_buddy(self: pointer, index: pointer): pointer {.importc: "QStringListModel_virtualbase_buddy".}
proc fcQStringListModel_virtualbase_match(self: pointer, start: pointer, role: cint, value: pointer, hits: cint, flags: cint): struct_miqt_array {.importc: "QStringListModel_virtualbase_match".}
proc fcQStringListModel_virtualbase_span(self: pointer, index: pointer): pointer {.importc: "QStringListModel_virtualbase_span".}
proc fcQStringListModel_virtualbase_roleNames(self: pointer, ): struct_miqt_map {.importc: "QStringListModel_virtualbase_roleNames".}
proc fcQStringListModel_virtualbase_submit(self: pointer, ): bool {.importc: "QStringListModel_virtualbase_submit".}
proc fcQStringListModel_virtualbase_revert(self: pointer, ): void {.importc: "QStringListModel_virtualbase_revert".}
proc fcQStringListModel_virtualbase_event(self: pointer, event: pointer): bool {.importc: "QStringListModel_virtualbase_event".}
proc fcQStringListModel_virtualbase_eventFilter(self: pointer, watched: pointer, event: pointer): bool {.importc: "QStringListModel_virtualbase_eventFilter".}
proc fcQStringListModel_virtualbase_timerEvent(self: pointer, event: pointer): void {.importc: "QStringListModel_virtualbase_timerEvent".}
proc fcQStringListModel_virtualbase_childEvent(self: pointer, event: pointer): void {.importc: "QStringListModel_virtualbase_childEvent".}
proc fcQStringListModel_virtualbase_customEvent(self: pointer, event: pointer): void {.importc: "QStringListModel_virtualbase_customEvent".}
proc fcQStringListModel_virtualbase_connectNotify(self: pointer, signal: pointer): void {.importc: "QStringListModel_virtualbase_connectNotify".}
proc fcQStringListModel_virtualbase_disconnectNotify(self: pointer, signal: pointer): void {.importc: "QStringListModel_virtualbase_disconnectNotify".}
proc fcQStringListModel_protectedbase_resetInternalData(self: pointer, ): void {.importc: "QStringListModel_protectedbase_resetInternalData".}
proc fcQStringListModel_protectedbase_createIndex(self: pointer, row: cint, column: cint): pointer {.importc: "QStringListModel_protectedbase_createIndex".}
proc fcQStringListModel_protectedbase_encodeData(self: pointer, indexes: struct_miqt_array, stream: pointer): void {.importc: "QStringListModel_protectedbase_encodeData".}
proc fcQStringListModel_protectedbase_decodeData(self: pointer, row: cint, column: cint, parent: pointer, stream: pointer): bool {.importc: "QStringListModel_protectedbase_decodeData".}
proc fcQStringListModel_protectedbase_beginInsertRows(self: pointer, parent: pointer, first: cint, last: cint): void {.importc: "QStringListModel_protectedbase_beginInsertRows".}
proc fcQStringListModel_protectedbase_endInsertRows(self: pointer, ): void {.importc: "QStringListModel_protectedbase_endInsertRows".}
proc fcQStringListModel_protectedbase_beginRemoveRows(self: pointer, parent: pointer, first: cint, last: cint): void {.importc: "QStringListModel_protectedbase_beginRemoveRows".}
proc fcQStringListModel_protectedbase_endRemoveRows(self: pointer, ): void {.importc: "QStringListModel_protectedbase_endRemoveRows".}
proc fcQStringListModel_protectedbase_beginMoveRows(self: pointer, sourceParent: pointer, sourceFirst: cint, sourceLast: cint, destinationParent: pointer, destinationRow: cint): bool {.importc: "QStringListModel_protectedbase_beginMoveRows".}
proc fcQStringListModel_protectedbase_endMoveRows(self: pointer, ): void {.importc: "QStringListModel_protectedbase_endMoveRows".}
proc fcQStringListModel_protectedbase_beginInsertColumns(self: pointer, parent: pointer, first: cint, last: cint): void {.importc: "QStringListModel_protectedbase_beginInsertColumns".}
proc fcQStringListModel_protectedbase_endInsertColumns(self: pointer, ): void {.importc: "QStringListModel_protectedbase_endInsertColumns".}
proc fcQStringListModel_protectedbase_beginRemoveColumns(self: pointer, parent: pointer, first: cint, last: cint): void {.importc: "QStringListModel_protectedbase_beginRemoveColumns".}
proc fcQStringListModel_protectedbase_endRemoveColumns(self: pointer, ): void {.importc: "QStringListModel_protectedbase_endRemoveColumns".}
proc fcQStringListModel_protectedbase_beginMoveColumns(self: pointer, sourceParent: pointer, sourceFirst: cint, sourceLast: cint, destinationParent: pointer, destinationColumn: cint): bool {.importc: "QStringListModel_protectedbase_beginMoveColumns".}
proc fcQStringListModel_protectedbase_endMoveColumns(self: pointer, ): void {.importc: "QStringListModel_protectedbase_endMoveColumns".}
proc fcQStringListModel_protectedbase_beginResetModel(self: pointer, ): void {.importc: "QStringListModel_protectedbase_beginResetModel".}
proc fcQStringListModel_protectedbase_endResetModel(self: pointer, ): void {.importc: "QStringListModel_protectedbase_endResetModel".}
proc fcQStringListModel_protectedbase_changePersistentIndex(self: pointer, fromVal: pointer, to: pointer): void {.importc: "QStringListModel_protectedbase_changePersistentIndex".}
proc fcQStringListModel_protectedbase_changePersistentIndexList(self: pointer, fromVal: struct_miqt_array, to: struct_miqt_array): void {.importc: "QStringListModel_protectedbase_changePersistentIndexList".}
proc fcQStringListModel_protectedbase_persistentIndexList(self: pointer, ): struct_miqt_array {.importc: "QStringListModel_protectedbase_persistentIndexList".}
proc fcQStringListModel_protectedbase_sender(self: pointer, ): pointer {.importc: "QStringListModel_protectedbase_sender".}
proc fcQStringListModel_protectedbase_senderSignalIndex(self: pointer, ): cint {.importc: "QStringListModel_protectedbase_senderSignalIndex".}
proc fcQStringListModel_protectedbase_receivers(self: pointer, signal: cstring): cint {.importc: "QStringListModel_protectedbase_receivers".}
proc fcQStringListModel_protectedbase_isSignalConnected(self: pointer, signal: pointer): bool {.importc: "QStringListModel_protectedbase_isSignalConnected".}
proc fcQStringListModel_new(vtbl: pointer, ): ptr cQStringListModel {.importc: "QStringListModel_new".}
proc fcQStringListModel_new2(vtbl: pointer, strings: struct_miqt_array): ptr cQStringListModel {.importc: "QStringListModel_new2".}
proc fcQStringListModel_new3(vtbl: pointer, parent: pointer): ptr cQStringListModel {.importc: "QStringListModel_new3".}
proc fcQStringListModel_new4(vtbl: pointer, strings: struct_miqt_array, parent: pointer): ptr cQStringListModel {.importc: "QStringListModel_new4".}
proc fcQStringListModel_staticMetaObject(): pointer {.importc: "QStringListModel_staticMetaObject".}

proc metaObject*(self: gen_qstringlistmodel_types.QStringListModel, ): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQStringListModel_metaObject(self.h), owned: false)

proc metacast*(self: gen_qstringlistmodel_types.QStringListModel, param1: cstring): pointer =
  fcQStringListModel_metacast(self.h, param1)

proc metacall*(self: gen_qstringlistmodel_types.QStringListModel, param1: cint, param2: cint, param3: pointer): cint =
  fcQStringListModel_metacall(self.h, cint(param1), param2, param3)

proc tr*(_: type gen_qstringlistmodel_types.QStringListModel, s: cstring): string =
  let v_ms = fcQStringListModel_tr(s)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc trUtf8*(_: type gen_qstringlistmodel_types.QStringListModel, s: cstring): string =
  let v_ms = fcQStringListModel_trUtf8(s)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc rowCount*(self: gen_qstringlistmodel_types.QStringListModel, parent: gen_qabstractitemmodel_types.QModelIndex): cint =
  fcQStringListModel_rowCount(self.h, parent.h)

proc sibling*(self: gen_qstringlistmodel_types.QStringListModel, row: cint, column: cint, idx: gen_qabstractitemmodel_types.QModelIndex): gen_qabstractitemmodel_types.QModelIndex =
  gen_qabstractitemmodel_types.QModelIndex(h: fcQStringListModel_sibling(self.h, row, column, idx.h), owned: true)

proc data*(self: gen_qstringlistmodel_types.QStringListModel, index: gen_qabstractitemmodel_types.QModelIndex, role: cint): gen_qvariant_types.QVariant =
  gen_qvariant_types.QVariant(h: fcQStringListModel_data(self.h, index.h, role), owned: true)

proc setData*(self: gen_qstringlistmodel_types.QStringListModel, index: gen_qabstractitemmodel_types.QModelIndex, value: gen_qvariant_types.QVariant, role: cint): bool =
  fcQStringListModel_setData(self.h, index.h, value.h, role)

proc flags*(self: gen_qstringlistmodel_types.QStringListModel, index: gen_qabstractitemmodel_types.QModelIndex): cint =
  cint(fcQStringListModel_flags(self.h, index.h))

proc insertRows*(self: gen_qstringlistmodel_types.QStringListModel, row: cint, count: cint, parent: gen_qabstractitemmodel_types.QModelIndex): bool =
  fcQStringListModel_insertRows(self.h, row, count, parent.h)

proc removeRows*(self: gen_qstringlistmodel_types.QStringListModel, row: cint, count: cint, parent: gen_qabstractitemmodel_types.QModelIndex): bool =
  fcQStringListModel_removeRows(self.h, row, count, parent.h)

proc moveRows*(self: gen_qstringlistmodel_types.QStringListModel, sourceParent: gen_qabstractitemmodel_types.QModelIndex, sourceRow: cint, count: cint, destinationParent: gen_qabstractitemmodel_types.QModelIndex, destinationChild: cint): bool =
  fcQStringListModel_moveRows(self.h, sourceParent.h, sourceRow, count, destinationParent.h, destinationChild)

proc itemData*(self: gen_qstringlistmodel_types.QStringListModel, index: gen_qabstractitemmodel_types.QModelIndex): Table[cint,gen_qvariant_types.QVariant] =
  var v_mm = fcQStringListModel_itemData(self.h, index.h)
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

proc setItemData*(self: gen_qstringlistmodel_types.QStringListModel, index: gen_qabstractitemmodel_types.QModelIndex, roles: Table[cint,gen_qvariant_types.QVariant]): bool =
  var roles_Keys_CArray = newSeq[cint](len(roles))
  var roles_Values_CArray = newSeq[pointer](len(roles))
  var roles_ctr = 0
  for roles_k in roles.keys():
    roles_Keys_CArray[roles_ctr] = roles_k
    roles_ctr += 1
  roles_ctr = 0
  for roles_v in roles.values():
    roles_Values_CArray[roles_ctr] = roles_v.h
    roles_ctr += 1

  fcQStringListModel_setItemData(self.h, index.h, struct_miqt_map(len: csize_t(len(roles)),keys: if len(roles) == 0: nil else: addr(roles_Keys_CArray[0]), values: if len(roles) == 0: nil else: addr(roles_Values_CArray[0]),))

proc sort*(self: gen_qstringlistmodel_types.QStringListModel, column: cint, order: cint): void =
  fcQStringListModel_sort(self.h, column, cint(order))

proc stringList*(self: gen_qstringlistmodel_types.QStringListModel, ): seq[string] =
  var v_ma = fcQStringListModel_stringList(self.h)
  var vx_ret = newSeq[string](int(v_ma.len))
  let v_outCast = cast[ptr UncheckedArray[struct_miqt_string]](v_ma.data)
  for i in 0 ..< v_ma.len:
    let vx_lv_ms = v_outCast[i]
    let vx_lvx_ret = string.fromBytes(toOpenArrayByte(vx_lv_ms.data, 0, int(vx_lv_ms.len)-1))
    c_free(vx_lv_ms.data)
    vx_ret[i] = vx_lvx_ret
  c_free(v_ma.data)
  vx_ret

proc setStringList*(self: gen_qstringlistmodel_types.QStringListModel, strings: seq[string]): void =
  var strings_CArray = newSeq[struct_miqt_string](len(strings))
  for i in 0..<len(strings):
    strings_CArray[i] = struct_miqt_string(data: strings[i], len: csize_t(len(strings[i])))

  fcQStringListModel_setStringList(self.h, struct_miqt_array(len: csize_t(len(strings)), data: if len(strings) == 0: nil else: addr(strings_CArray[0])))

proc supportedDropActions*(self: gen_qstringlistmodel_types.QStringListModel, ): cint =
  cint(fcQStringListModel_supportedDropActions(self.h))

proc tr*(_: type gen_qstringlistmodel_types.QStringListModel, s: cstring, c: cstring): string =
  let v_ms = fcQStringListModel_tr2(s, c)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc tr*(_: type gen_qstringlistmodel_types.QStringListModel, s: cstring, c: cstring, n: cint): string =
  let v_ms = fcQStringListModel_tr3(s, c, n)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc trUtf8*(_: type gen_qstringlistmodel_types.QStringListModel, s: cstring, c: cstring): string =
  let v_ms = fcQStringListModel_trUtf82(s, c)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc trUtf8*(_: type gen_qstringlistmodel_types.QStringListModel, s: cstring, c: cstring, n: cint): string =
  let v_ms = fcQStringListModel_trUtf83(s, c, n)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

type QStringListModelmetaObjectProc* = proc(self: QStringListModel): gen_qobjectdefs_types.QMetaObject {.raises: [], gcsafe.}
type QStringListModelmetacastProc* = proc(self: QStringListModel, param1: cstring): pointer {.raises: [], gcsafe.}
type QStringListModelmetacallProc* = proc(self: QStringListModel, param1: cint, param2: cint, param3: pointer): cint {.raises: [], gcsafe.}
type QStringListModelrowCountProc* = proc(self: QStringListModel, parent: gen_qabstractitemmodel_types.QModelIndex): cint {.raises: [], gcsafe.}
type QStringListModelsiblingProc* = proc(self: QStringListModel, row: cint, column: cint, idx: gen_qabstractitemmodel_types.QModelIndex): gen_qabstractitemmodel_types.QModelIndex {.raises: [], gcsafe.}
type QStringListModeldataProc* = proc(self: QStringListModel, index: gen_qabstractitemmodel_types.QModelIndex, role: cint): gen_qvariant_types.QVariant {.raises: [], gcsafe.}
type QStringListModelsetDataProc* = proc(self: QStringListModel, index: gen_qabstractitemmodel_types.QModelIndex, value: gen_qvariant_types.QVariant, role: cint): bool {.raises: [], gcsafe.}
type QStringListModelflagsProc* = proc(self: QStringListModel, index: gen_qabstractitemmodel_types.QModelIndex): cint {.raises: [], gcsafe.}
type QStringListModelinsertRowsProc* = proc(self: QStringListModel, row: cint, count: cint, parent: gen_qabstractitemmodel_types.QModelIndex): bool {.raises: [], gcsafe.}
type QStringListModelremoveRowsProc* = proc(self: QStringListModel, row: cint, count: cint, parent: gen_qabstractitemmodel_types.QModelIndex): bool {.raises: [], gcsafe.}
type QStringListModelmoveRowsProc* = proc(self: QStringListModel, sourceParent: gen_qabstractitemmodel_types.QModelIndex, sourceRow: cint, count: cint, destinationParent: gen_qabstractitemmodel_types.QModelIndex, destinationChild: cint): bool {.raises: [], gcsafe.}
type QStringListModelitemDataProc* = proc(self: QStringListModel, index: gen_qabstractitemmodel_types.QModelIndex): Table[cint,gen_qvariant_types.QVariant] {.raises: [], gcsafe.}
type QStringListModelsetItemDataProc* = proc(self: QStringListModel, index: gen_qabstractitemmodel_types.QModelIndex, roles: Table[cint,gen_qvariant_types.QVariant]): bool {.raises: [], gcsafe.}
type QStringListModelsortProc* = proc(self: QStringListModel, column: cint, order: cint): void {.raises: [], gcsafe.}
type QStringListModelsupportedDropActionsProc* = proc(self: QStringListModel): cint {.raises: [], gcsafe.}
type QStringListModelindexProc* = proc(self: QStringListModel, row: cint, column: cint, parent: gen_qabstractitemmodel_types.QModelIndex): gen_qabstractitemmodel_types.QModelIndex {.raises: [], gcsafe.}
type QStringListModeldropMimeDataProc* = proc(self: QStringListModel, data: gen_qmimedata_types.QMimeData, action: cint, row: cint, column: cint, parent: gen_qabstractitemmodel_types.QModelIndex): bool {.raises: [], gcsafe.}
type QStringListModelheaderDataProc* = proc(self: QStringListModel, section: cint, orientation: cint, role: cint): gen_qvariant_types.QVariant {.raises: [], gcsafe.}
type QStringListModelsetHeaderDataProc* = proc(self: QStringListModel, section: cint, orientation: cint, value: gen_qvariant_types.QVariant, role: cint): bool {.raises: [], gcsafe.}
type QStringListModelmimeTypesProc* = proc(self: QStringListModel): seq[string] {.raises: [], gcsafe.}
type QStringListModelmimeDataProc* = proc(self: QStringListModel, indexes: seq[gen_qabstractitemmodel_types.QModelIndex]): gen_qmimedata_types.QMimeData {.raises: [], gcsafe.}
type QStringListModelcanDropMimeDataProc* = proc(self: QStringListModel, data: gen_qmimedata_types.QMimeData, action: cint, row: cint, column: cint, parent: gen_qabstractitemmodel_types.QModelIndex): bool {.raises: [], gcsafe.}
type QStringListModelsupportedDragActionsProc* = proc(self: QStringListModel): cint {.raises: [], gcsafe.}
type QStringListModelinsertColumnsProc* = proc(self: QStringListModel, column: cint, count: cint, parent: gen_qabstractitemmodel_types.QModelIndex): bool {.raises: [], gcsafe.}
type QStringListModelremoveColumnsProc* = proc(self: QStringListModel, column: cint, count: cint, parent: gen_qabstractitemmodel_types.QModelIndex): bool {.raises: [], gcsafe.}
type QStringListModelmoveColumnsProc* = proc(self: QStringListModel, sourceParent: gen_qabstractitemmodel_types.QModelIndex, sourceColumn: cint, count: cint, destinationParent: gen_qabstractitemmodel_types.QModelIndex, destinationChild: cint): bool {.raises: [], gcsafe.}
type QStringListModelfetchMoreProc* = proc(self: QStringListModel, parent: gen_qabstractitemmodel_types.QModelIndex): void {.raises: [], gcsafe.}
type QStringListModelcanFetchMoreProc* = proc(self: QStringListModel, parent: gen_qabstractitemmodel_types.QModelIndex): bool {.raises: [], gcsafe.}
type QStringListModelbuddyProc* = proc(self: QStringListModel, index: gen_qabstractitemmodel_types.QModelIndex): gen_qabstractitemmodel_types.QModelIndex {.raises: [], gcsafe.}
type QStringListModelmatchProc* = proc(self: QStringListModel, start: gen_qabstractitemmodel_types.QModelIndex, role: cint, value: gen_qvariant_types.QVariant, hits: cint, flags: cint): seq[gen_qabstractitemmodel_types.QModelIndex] {.raises: [], gcsafe.}
type QStringListModelspanProc* = proc(self: QStringListModel, index: gen_qabstractitemmodel_types.QModelIndex): gen_qsize_types.QSize {.raises: [], gcsafe.}
type QStringListModelroleNamesProc* = proc(self: QStringListModel): Table[cint,seq[byte]] {.raises: [], gcsafe.}
type QStringListModelsubmitProc* = proc(self: QStringListModel): bool {.raises: [], gcsafe.}
type QStringListModelrevertProc* = proc(self: QStringListModel): void {.raises: [], gcsafe.}
type QStringListModeleventProc* = proc(self: QStringListModel, event: gen_qcoreevent_types.QEvent): bool {.raises: [], gcsafe.}
type QStringListModeleventFilterProc* = proc(self: QStringListModel, watched: gen_qobject_types.QObject, event: gen_qcoreevent_types.QEvent): bool {.raises: [], gcsafe.}
type QStringListModeltimerEventProc* = proc(self: QStringListModel, event: gen_qcoreevent_types.QTimerEvent): void {.raises: [], gcsafe.}
type QStringListModelchildEventProc* = proc(self: QStringListModel, event: gen_qcoreevent_types.QChildEvent): void {.raises: [], gcsafe.}
type QStringListModelcustomEventProc* = proc(self: QStringListModel, event: gen_qcoreevent_types.QEvent): void {.raises: [], gcsafe.}
type QStringListModelconnectNotifyProc* = proc(self: QStringListModel, signal: gen_qmetaobject_types.QMetaMethod): void {.raises: [], gcsafe.}
type QStringListModeldisconnectNotifyProc* = proc(self: QStringListModel, signal: gen_qmetaobject_types.QMetaMethod): void {.raises: [], gcsafe.}
type QStringListModelVTable* {.inheritable, pure.} = object
  vtbl: cQStringListModelVTable
  metaObject*: QStringListModelmetaObjectProc
  metacast*: QStringListModelmetacastProc
  metacall*: QStringListModelmetacallProc
  rowCount*: QStringListModelrowCountProc
  sibling*: QStringListModelsiblingProc
  data*: QStringListModeldataProc
  setData*: QStringListModelsetDataProc
  flags*: QStringListModelflagsProc
  insertRows*: QStringListModelinsertRowsProc
  removeRows*: QStringListModelremoveRowsProc
  moveRows*: QStringListModelmoveRowsProc
  itemData*: QStringListModelitemDataProc
  setItemData*: QStringListModelsetItemDataProc
  sort*: QStringListModelsortProc
  supportedDropActions*: QStringListModelsupportedDropActionsProc
  index*: QStringListModelindexProc
  dropMimeData*: QStringListModeldropMimeDataProc
  headerData*: QStringListModelheaderDataProc
  setHeaderData*: QStringListModelsetHeaderDataProc
  mimeTypes*: QStringListModelmimeTypesProc
  mimeData*: QStringListModelmimeDataProc
  canDropMimeData*: QStringListModelcanDropMimeDataProc
  supportedDragActions*: QStringListModelsupportedDragActionsProc
  insertColumns*: QStringListModelinsertColumnsProc
  removeColumns*: QStringListModelremoveColumnsProc
  moveColumns*: QStringListModelmoveColumnsProc
  fetchMore*: QStringListModelfetchMoreProc
  canFetchMore*: QStringListModelcanFetchMoreProc
  buddy*: QStringListModelbuddyProc
  match*: QStringListModelmatchProc
  span*: QStringListModelspanProc
  roleNames*: QStringListModelroleNamesProc
  submit*: QStringListModelsubmitProc
  revert*: QStringListModelrevertProc
  event*: QStringListModeleventProc
  eventFilter*: QStringListModeleventFilterProc
  timerEvent*: QStringListModeltimerEventProc
  childEvent*: QStringListModelchildEventProc
  customEvent*: QStringListModelcustomEventProc
  connectNotify*: QStringListModelconnectNotifyProc
  disconnectNotify*: QStringListModeldisconnectNotifyProc
proc QStringListModelmetaObject*(self: gen_qstringlistmodel_types.QStringListModel, ): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQStringListModel_virtualbase_metaObject(self.h), owned: false)

proc miqt_exec_callback_cQStringListModel_metaObject(vtbl: pointer, self: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QStringListModelVTable](vtbl)
  let self = QStringListModel(h: self)
  var virtualReturn = vtbl[].metaObject(self)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc QStringListModelmetacast*(self: gen_qstringlistmodel_types.QStringListModel, param1: cstring): pointer =
  fcQStringListModel_virtualbase_metacast(self.h, param1)

proc miqt_exec_callback_cQStringListModel_metacast(vtbl: pointer, self: pointer, param1: cstring): pointer {.cdecl.} =
  let vtbl = cast[ptr QStringListModelVTable](vtbl)
  let self = QStringListModel(h: self)
  let slotval1 = (param1)
  var virtualReturn = vtbl[].metacast(self, slotval1)
  virtualReturn

proc QStringListModelmetacall*(self: gen_qstringlistmodel_types.QStringListModel, param1: cint, param2: cint, param3: pointer): cint =
  fcQStringListModel_virtualbase_metacall(self.h, cint(param1), param2, param3)

proc miqt_exec_callback_cQStringListModel_metacall(vtbl: pointer, self: pointer, param1: cint, param2: cint, param3: pointer): cint {.cdecl.} =
  let vtbl = cast[ptr QStringListModelVTable](vtbl)
  let self = QStringListModel(h: self)
  let slotval1 = cint(param1)
  let slotval2 = param2
  let slotval3 = param3
  var virtualReturn = vtbl[].metacall(self, slotval1, slotval2, slotval3)
  virtualReturn

proc QStringListModelrowCount*(self: gen_qstringlistmodel_types.QStringListModel, parent: gen_qabstractitemmodel_types.QModelIndex): cint =
  fcQStringListModel_virtualbase_rowCount(self.h, parent.h)

proc miqt_exec_callback_cQStringListModel_rowCount(vtbl: pointer, self: pointer, parent: pointer): cint {.cdecl.} =
  let vtbl = cast[ptr QStringListModelVTable](vtbl)
  let self = QStringListModel(h: self)
  let slotval1 = gen_qabstractitemmodel_types.QModelIndex(h: parent, owned: false)
  var virtualReturn = vtbl[].rowCount(self, slotval1)
  virtualReturn

proc QStringListModelsibling*(self: gen_qstringlistmodel_types.QStringListModel, row: cint, column: cint, idx: gen_qabstractitemmodel_types.QModelIndex): gen_qabstractitemmodel_types.QModelIndex =
  gen_qabstractitemmodel_types.QModelIndex(h: fcQStringListModel_virtualbase_sibling(self.h, row, column, idx.h), owned: true)

proc miqt_exec_callback_cQStringListModel_sibling(vtbl: pointer, self: pointer, row: cint, column: cint, idx: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QStringListModelVTable](vtbl)
  let self = QStringListModel(h: self)
  let slotval1 = row
  let slotval2 = column
  let slotval3 = gen_qabstractitemmodel_types.QModelIndex(h: idx, owned: false)
  var virtualReturn = vtbl[].sibling(self, slotval1, slotval2, slotval3)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc QStringListModeldata*(self: gen_qstringlistmodel_types.QStringListModel, index: gen_qabstractitemmodel_types.QModelIndex, role: cint): gen_qvariant_types.QVariant =
  gen_qvariant_types.QVariant(h: fcQStringListModel_virtualbase_data(self.h, index.h, role), owned: true)

proc miqt_exec_callback_cQStringListModel_data(vtbl: pointer, self: pointer, index: pointer, role: cint): pointer {.cdecl.} =
  let vtbl = cast[ptr QStringListModelVTable](vtbl)
  let self = QStringListModel(h: self)
  let slotval1 = gen_qabstractitemmodel_types.QModelIndex(h: index, owned: false)
  let slotval2 = role
  var virtualReturn = vtbl[].data(self, slotval1, slotval2)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc QStringListModelsetData*(self: gen_qstringlistmodel_types.QStringListModel, index: gen_qabstractitemmodel_types.QModelIndex, value: gen_qvariant_types.QVariant, role: cint): bool =
  fcQStringListModel_virtualbase_setData(self.h, index.h, value.h, role)

proc miqt_exec_callback_cQStringListModel_setData(vtbl: pointer, self: pointer, index: pointer, value: pointer, role: cint): bool {.cdecl.} =
  let vtbl = cast[ptr QStringListModelVTable](vtbl)
  let self = QStringListModel(h: self)
  let slotval1 = gen_qabstractitemmodel_types.QModelIndex(h: index, owned: false)
  let slotval2 = gen_qvariant_types.QVariant(h: value, owned: false)
  let slotval3 = role
  var virtualReturn = vtbl[].setData(self, slotval1, slotval2, slotval3)
  virtualReturn

proc QStringListModelflags*(self: gen_qstringlistmodel_types.QStringListModel, index: gen_qabstractitemmodel_types.QModelIndex): cint =
  cint(fcQStringListModel_virtualbase_flags(self.h, index.h))

proc miqt_exec_callback_cQStringListModel_flags(vtbl: pointer, self: pointer, index: pointer): cint {.cdecl.} =
  let vtbl = cast[ptr QStringListModelVTable](vtbl)
  let self = QStringListModel(h: self)
  let slotval1 = gen_qabstractitemmodel_types.QModelIndex(h: index, owned: false)
  var virtualReturn = vtbl[].flags(self, slotval1)
  cint(virtualReturn)

proc QStringListModelinsertRows*(self: gen_qstringlistmodel_types.QStringListModel, row: cint, count: cint, parent: gen_qabstractitemmodel_types.QModelIndex): bool =
  fcQStringListModel_virtualbase_insertRows(self.h, row, count, parent.h)

proc miqt_exec_callback_cQStringListModel_insertRows(vtbl: pointer, self: pointer, row: cint, count: cint, parent: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QStringListModelVTable](vtbl)
  let self = QStringListModel(h: self)
  let slotval1 = row
  let slotval2 = count
  let slotval3 = gen_qabstractitemmodel_types.QModelIndex(h: parent, owned: false)
  var virtualReturn = vtbl[].insertRows(self, slotval1, slotval2, slotval3)
  virtualReturn

proc QStringListModelremoveRows*(self: gen_qstringlistmodel_types.QStringListModel, row: cint, count: cint, parent: gen_qabstractitemmodel_types.QModelIndex): bool =
  fcQStringListModel_virtualbase_removeRows(self.h, row, count, parent.h)

proc miqt_exec_callback_cQStringListModel_removeRows(vtbl: pointer, self: pointer, row: cint, count: cint, parent: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QStringListModelVTable](vtbl)
  let self = QStringListModel(h: self)
  let slotval1 = row
  let slotval2 = count
  let slotval3 = gen_qabstractitemmodel_types.QModelIndex(h: parent, owned: false)
  var virtualReturn = vtbl[].removeRows(self, slotval1, slotval2, slotval3)
  virtualReturn

proc QStringListModelmoveRows*(self: gen_qstringlistmodel_types.QStringListModel, sourceParent: gen_qabstractitemmodel_types.QModelIndex, sourceRow: cint, count: cint, destinationParent: gen_qabstractitemmodel_types.QModelIndex, destinationChild: cint): bool =
  fcQStringListModel_virtualbase_moveRows(self.h, sourceParent.h, sourceRow, count, destinationParent.h, destinationChild)

proc miqt_exec_callback_cQStringListModel_moveRows(vtbl: pointer, self: pointer, sourceParent: pointer, sourceRow: cint, count: cint, destinationParent: pointer, destinationChild: cint): bool {.cdecl.} =
  let vtbl = cast[ptr QStringListModelVTable](vtbl)
  let self = QStringListModel(h: self)
  let slotval1 = gen_qabstractitemmodel_types.QModelIndex(h: sourceParent, owned: false)
  let slotval2 = sourceRow
  let slotval3 = count
  let slotval4 = gen_qabstractitemmodel_types.QModelIndex(h: destinationParent, owned: false)
  let slotval5 = destinationChild
  var virtualReturn = vtbl[].moveRows(self, slotval1, slotval2, slotval3, slotval4, slotval5)
  virtualReturn

proc QStringListModelitemData*(self: gen_qstringlistmodel_types.QStringListModel, index: gen_qabstractitemmodel_types.QModelIndex): Table[cint,gen_qvariant_types.QVariant] =
  var v_mm = fcQStringListModel_virtualbase_itemData(self.h, index.h)
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

proc miqt_exec_callback_cQStringListModel_itemData(vtbl: pointer, self: pointer, index: pointer): struct_miqt_map {.cdecl.} =
  let vtbl = cast[ptr QStringListModelVTable](vtbl)
  let self = QStringListModel(h: self)
  let slotval1 = gen_qabstractitemmodel_types.QModelIndex(h: index, owned: false)
  var virtualReturn = vtbl[].itemData(self, slotval1)
  var virtualReturn_Keys_CArray = cast[ptr UncheckedArray[cint]](if len(virtualReturn) > 0: c_malloc(csize_t(sizeof(cint) * len(virtualReturn))) else: nil)
  var virtualReturn_Values_CArray = cast[ptr UncheckedArray[pointer]](if len(virtualReturn) > 0: c_malloc(csize_t(sizeof(pointer) * len(virtualReturn))) else: nil)
  var virtualReturn_ctr = 0
  for virtualReturn_k in virtualReturn.keys():
    virtualReturn_Keys_CArray[virtualReturn_ctr] = virtualReturn_k
    virtualReturn_ctr += 1
  virtualReturn_ctr = 0
  for virtualReturn_v in virtualReturn.mvalues():
    virtualReturn_v.owned = false # TODO move?
    let virtualReturn_v_h = virtualReturn_v.h
    virtualReturn_v.h = nil
    virtualReturn_Values_CArray[virtualReturn_ctr] = virtualReturn_v_h
    virtualReturn_ctr += 1

  struct_miqt_map(len: csize_t(len(virtualReturn)),keys: if len(virtualReturn) == 0: nil else: addr(virtualReturn_Keys_CArray[0]), values: if len(virtualReturn) == 0: nil else: addr(virtualReturn_Values_CArray[0]),)

proc QStringListModelsetItemData*(self: gen_qstringlistmodel_types.QStringListModel, index: gen_qabstractitemmodel_types.QModelIndex, roles: Table[cint,gen_qvariant_types.QVariant]): bool =
  var roles_Keys_CArray = newSeq[cint](len(roles))
  var roles_Values_CArray = newSeq[pointer](len(roles))
  var roles_ctr = 0
  for roles_k in roles.keys():
    roles_Keys_CArray[roles_ctr] = roles_k
    roles_ctr += 1
  roles_ctr = 0
  for roles_v in roles.values():
    roles_Values_CArray[roles_ctr] = roles_v.h
    roles_ctr += 1

  fcQStringListModel_virtualbase_setItemData(self.h, index.h, struct_miqt_map(len: csize_t(len(roles)),keys: if len(roles) == 0: nil else: addr(roles_Keys_CArray[0]), values: if len(roles) == 0: nil else: addr(roles_Values_CArray[0]),))

proc miqt_exec_callback_cQStringListModel_setItemData(vtbl: pointer, self: pointer, index: pointer, roles: struct_miqt_map): bool {.cdecl.} =
  let vtbl = cast[ptr QStringListModelVTable](vtbl)
  let self = QStringListModel(h: self)
  let slotval1 = gen_qabstractitemmodel_types.QModelIndex(h: index, owned: false)
  var vroles_mm = roles
  var vrolesx_ret: Table[cint, gen_qvariant_types.QVariant]
  var vroles_Keys = cast[ptr UncheckedArray[cint]](vroles_mm.keys)
  var vroles_Values = cast[ptr UncheckedArray[pointer]](vroles_mm.values)
  for i in 0..<vroles_mm.len:
    var vroles_entry_Key = vroles_Keys[i]

    var vroles_entry_Value = gen_qvariant_types.QVariant(h: vroles_Values[i], owned: true)

    vrolesx_ret[vroles_entry_Key] = vroles_entry_Value
  c_free(vroles_mm.keys)
  c_free(vroles_mm.values)
  let slotval2 = vrolesx_ret
  var virtualReturn = vtbl[].setItemData(self, slotval1, slotval2)
  virtualReturn

proc QStringListModelsort*(self: gen_qstringlistmodel_types.QStringListModel, column: cint, order: cint): void =
  fcQStringListModel_virtualbase_sort(self.h, column, cint(order))

proc miqt_exec_callback_cQStringListModel_sort(vtbl: pointer, self: pointer, column: cint, order: cint): void {.cdecl.} =
  let vtbl = cast[ptr QStringListModelVTable](vtbl)
  let self = QStringListModel(h: self)
  let slotval1 = column
  let slotval2 = cint(order)
  vtbl[].sort(self, slotval1, slotval2)

proc QStringListModelsupportedDropActions*(self: gen_qstringlistmodel_types.QStringListModel, ): cint =
  cint(fcQStringListModel_virtualbase_supportedDropActions(self.h))

proc miqt_exec_callback_cQStringListModel_supportedDropActions(vtbl: pointer, self: pointer): cint {.cdecl.} =
  let vtbl = cast[ptr QStringListModelVTable](vtbl)
  let self = QStringListModel(h: self)
  var virtualReturn = vtbl[].supportedDropActions(self)
  cint(virtualReturn)

proc QStringListModelindex*(self: gen_qstringlistmodel_types.QStringListModel, row: cint, column: cint, parent: gen_qabstractitemmodel_types.QModelIndex): gen_qabstractitemmodel_types.QModelIndex =
  gen_qabstractitemmodel_types.QModelIndex(h: fcQStringListModel_virtualbase_index(self.h, row, column, parent.h), owned: true)

proc miqt_exec_callback_cQStringListModel_index(vtbl: pointer, self: pointer, row: cint, column: cint, parent: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QStringListModelVTable](vtbl)
  let self = QStringListModel(h: self)
  let slotval1 = row
  let slotval2 = column
  let slotval3 = gen_qabstractitemmodel_types.QModelIndex(h: parent, owned: false)
  var virtualReturn = vtbl[].index(self, slotval1, slotval2, slotval3)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc QStringListModeldropMimeData*(self: gen_qstringlistmodel_types.QStringListModel, data: gen_qmimedata_types.QMimeData, action: cint, row: cint, column: cint, parent: gen_qabstractitemmodel_types.QModelIndex): bool =
  fcQStringListModel_virtualbase_dropMimeData(self.h, data.h, cint(action), row, column, parent.h)

proc miqt_exec_callback_cQStringListModel_dropMimeData(vtbl: pointer, self: pointer, data: pointer, action: cint, row: cint, column: cint, parent: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QStringListModelVTable](vtbl)
  let self = QStringListModel(h: self)
  let slotval1 = gen_qmimedata_types.QMimeData(h: data, owned: false)
  let slotval2 = cint(action)
  let slotval3 = row
  let slotval4 = column
  let slotval5 = gen_qabstractitemmodel_types.QModelIndex(h: parent, owned: false)
  var virtualReturn = vtbl[].dropMimeData(self, slotval1, slotval2, slotval3, slotval4, slotval5)
  virtualReturn

proc QStringListModelheaderData*(self: gen_qstringlistmodel_types.QStringListModel, section: cint, orientation: cint, role: cint): gen_qvariant_types.QVariant =
  gen_qvariant_types.QVariant(h: fcQStringListModel_virtualbase_headerData(self.h, section, cint(orientation), role), owned: true)

proc miqt_exec_callback_cQStringListModel_headerData(vtbl: pointer, self: pointer, section: cint, orientation: cint, role: cint): pointer {.cdecl.} =
  let vtbl = cast[ptr QStringListModelVTable](vtbl)
  let self = QStringListModel(h: self)
  let slotval1 = section
  let slotval2 = cint(orientation)
  let slotval3 = role
  var virtualReturn = vtbl[].headerData(self, slotval1, slotval2, slotval3)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc QStringListModelsetHeaderData*(self: gen_qstringlistmodel_types.QStringListModel, section: cint, orientation: cint, value: gen_qvariant_types.QVariant, role: cint): bool =
  fcQStringListModel_virtualbase_setHeaderData(self.h, section, cint(orientation), value.h, role)

proc miqt_exec_callback_cQStringListModel_setHeaderData(vtbl: pointer, self: pointer, section: cint, orientation: cint, value: pointer, role: cint): bool {.cdecl.} =
  let vtbl = cast[ptr QStringListModelVTable](vtbl)
  let self = QStringListModel(h: self)
  let slotval1 = section
  let slotval2 = cint(orientation)
  let slotval3 = gen_qvariant_types.QVariant(h: value, owned: false)
  let slotval4 = role
  var virtualReturn = vtbl[].setHeaderData(self, slotval1, slotval2, slotval3, slotval4)
  virtualReturn

proc QStringListModelmimeTypes*(self: gen_qstringlistmodel_types.QStringListModel, ): seq[string] =
  var v_ma = fcQStringListModel_virtualbase_mimeTypes(self.h)
  var vx_ret = newSeq[string](int(v_ma.len))
  let v_outCast = cast[ptr UncheckedArray[struct_miqt_string]](v_ma.data)
  for i in 0 ..< v_ma.len:
    let vx_lv_ms = v_outCast[i]
    let vx_lvx_ret = string.fromBytes(toOpenArrayByte(vx_lv_ms.data, 0, int(vx_lv_ms.len)-1))
    c_free(vx_lv_ms.data)
    vx_ret[i] = vx_lvx_ret
  c_free(v_ma.data)
  vx_ret

proc miqt_exec_callback_cQStringListModel_mimeTypes(vtbl: pointer, self: pointer): struct_miqt_array {.cdecl.} =
  let vtbl = cast[ptr QStringListModelVTable](vtbl)
  let self = QStringListModel(h: self)
  var virtualReturn = vtbl[].mimeTypes(self)
  var virtualReturn_CArray = cast[ptr UncheckedArray[struct_miqt_string]](if len(virtualReturn) > 0: c_malloc(c_sizet(sizeof(struct_miqt_string) * len(virtualReturn))) else: nil)
  for i in 0..<len(virtualReturn):
    var virtualReturn_i_copy = cast[cstring](if len(virtualReturn[i]) > 0: c_malloc(csize_t(len(virtualReturn[i]))) else: nil)
    if len(virtualReturn[i]) > 0: copyMem(cast[pointer](virtualReturn_i_copy), addr virtualReturn[i][0], csize_t(len(virtualReturn[i])))
    virtualReturn_CArray[i] = struct_miqt_string(data: virtualReturn_i_copy, len: csize_t(len(virtualReturn[i])))

  struct_miqt_array(len: csize_t(len(virtualReturn)), data: if len(virtualReturn) == 0: nil else: addr(virtualReturn_CArray[0]))

proc QStringListModelmimeData*(self: gen_qstringlistmodel_types.QStringListModel, indexes: seq[gen_qabstractitemmodel_types.QModelIndex]): gen_qmimedata_types.QMimeData =
  var indexes_CArray = newSeq[pointer](len(indexes))
  for i in 0..<len(indexes):
    indexes_CArray[i] = indexes[i].h

  gen_qmimedata_types.QMimeData(h: fcQStringListModel_virtualbase_mimeData(self.h, struct_miqt_array(len: csize_t(len(indexes)), data: if len(indexes) == 0: nil else: addr(indexes_CArray[0]))), owned: false)

proc miqt_exec_callback_cQStringListModel_mimeData(vtbl: pointer, self: pointer, indexes: struct_miqt_array): pointer {.cdecl.} =
  let vtbl = cast[ptr QStringListModelVTable](vtbl)
  let self = QStringListModel(h: self)
  var vindexes_ma = indexes
  var vindexesx_ret = newSeq[gen_qabstractitemmodel_types.QModelIndex](int(vindexes_ma.len))
  let vindexes_outCast = cast[ptr UncheckedArray[pointer]](vindexes_ma.data)
  for i in 0 ..< vindexes_ma.len:
    vindexesx_ret[i] = gen_qabstractitemmodel_types.QModelIndex(h: vindexes_outCast[i], owned: true)
  c_free(vindexes_ma.data)
  let slotval1 = vindexesx_ret
  var virtualReturn = vtbl[].mimeData(self, slotval1)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc QStringListModelcanDropMimeData*(self: gen_qstringlistmodel_types.QStringListModel, data: gen_qmimedata_types.QMimeData, action: cint, row: cint, column: cint, parent: gen_qabstractitemmodel_types.QModelIndex): bool =
  fcQStringListModel_virtualbase_canDropMimeData(self.h, data.h, cint(action), row, column, parent.h)

proc miqt_exec_callback_cQStringListModel_canDropMimeData(vtbl: pointer, self: pointer, data: pointer, action: cint, row: cint, column: cint, parent: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QStringListModelVTable](vtbl)
  let self = QStringListModel(h: self)
  let slotval1 = gen_qmimedata_types.QMimeData(h: data, owned: false)
  let slotval2 = cint(action)
  let slotval3 = row
  let slotval4 = column
  let slotval5 = gen_qabstractitemmodel_types.QModelIndex(h: parent, owned: false)
  var virtualReturn = vtbl[].canDropMimeData(self, slotval1, slotval2, slotval3, slotval4, slotval5)
  virtualReturn

proc QStringListModelsupportedDragActions*(self: gen_qstringlistmodel_types.QStringListModel, ): cint =
  cint(fcQStringListModel_virtualbase_supportedDragActions(self.h))

proc miqt_exec_callback_cQStringListModel_supportedDragActions(vtbl: pointer, self: pointer): cint {.cdecl.} =
  let vtbl = cast[ptr QStringListModelVTable](vtbl)
  let self = QStringListModel(h: self)
  var virtualReturn = vtbl[].supportedDragActions(self)
  cint(virtualReturn)

proc QStringListModelinsertColumns*(self: gen_qstringlistmodel_types.QStringListModel, column: cint, count: cint, parent: gen_qabstractitemmodel_types.QModelIndex): bool =
  fcQStringListModel_virtualbase_insertColumns(self.h, column, count, parent.h)

proc miqt_exec_callback_cQStringListModel_insertColumns(vtbl: pointer, self: pointer, column: cint, count: cint, parent: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QStringListModelVTable](vtbl)
  let self = QStringListModel(h: self)
  let slotval1 = column
  let slotval2 = count
  let slotval3 = gen_qabstractitemmodel_types.QModelIndex(h: parent, owned: false)
  var virtualReturn = vtbl[].insertColumns(self, slotval1, slotval2, slotval3)
  virtualReturn

proc QStringListModelremoveColumns*(self: gen_qstringlistmodel_types.QStringListModel, column: cint, count: cint, parent: gen_qabstractitemmodel_types.QModelIndex): bool =
  fcQStringListModel_virtualbase_removeColumns(self.h, column, count, parent.h)

proc miqt_exec_callback_cQStringListModel_removeColumns(vtbl: pointer, self: pointer, column: cint, count: cint, parent: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QStringListModelVTable](vtbl)
  let self = QStringListModel(h: self)
  let slotval1 = column
  let slotval2 = count
  let slotval3 = gen_qabstractitemmodel_types.QModelIndex(h: parent, owned: false)
  var virtualReturn = vtbl[].removeColumns(self, slotval1, slotval2, slotval3)
  virtualReturn

proc QStringListModelmoveColumns*(self: gen_qstringlistmodel_types.QStringListModel, sourceParent: gen_qabstractitemmodel_types.QModelIndex, sourceColumn: cint, count: cint, destinationParent: gen_qabstractitemmodel_types.QModelIndex, destinationChild: cint): bool =
  fcQStringListModel_virtualbase_moveColumns(self.h, sourceParent.h, sourceColumn, count, destinationParent.h, destinationChild)

proc miqt_exec_callback_cQStringListModel_moveColumns(vtbl: pointer, self: pointer, sourceParent: pointer, sourceColumn: cint, count: cint, destinationParent: pointer, destinationChild: cint): bool {.cdecl.} =
  let vtbl = cast[ptr QStringListModelVTable](vtbl)
  let self = QStringListModel(h: self)
  let slotval1 = gen_qabstractitemmodel_types.QModelIndex(h: sourceParent, owned: false)
  let slotval2 = sourceColumn
  let slotval3 = count
  let slotval4 = gen_qabstractitemmodel_types.QModelIndex(h: destinationParent, owned: false)
  let slotval5 = destinationChild
  var virtualReturn = vtbl[].moveColumns(self, slotval1, slotval2, slotval3, slotval4, slotval5)
  virtualReturn

proc QStringListModelfetchMore*(self: gen_qstringlistmodel_types.QStringListModel, parent: gen_qabstractitemmodel_types.QModelIndex): void =
  fcQStringListModel_virtualbase_fetchMore(self.h, parent.h)

proc miqt_exec_callback_cQStringListModel_fetchMore(vtbl: pointer, self: pointer, parent: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QStringListModelVTable](vtbl)
  let self = QStringListModel(h: self)
  let slotval1 = gen_qabstractitemmodel_types.QModelIndex(h: parent, owned: false)
  vtbl[].fetchMore(self, slotval1)

proc QStringListModelcanFetchMore*(self: gen_qstringlistmodel_types.QStringListModel, parent: gen_qabstractitemmodel_types.QModelIndex): bool =
  fcQStringListModel_virtualbase_canFetchMore(self.h, parent.h)

proc miqt_exec_callback_cQStringListModel_canFetchMore(vtbl: pointer, self: pointer, parent: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QStringListModelVTable](vtbl)
  let self = QStringListModel(h: self)
  let slotval1 = gen_qabstractitemmodel_types.QModelIndex(h: parent, owned: false)
  var virtualReturn = vtbl[].canFetchMore(self, slotval1)
  virtualReturn

proc QStringListModelbuddy*(self: gen_qstringlistmodel_types.QStringListModel, index: gen_qabstractitemmodel_types.QModelIndex): gen_qabstractitemmodel_types.QModelIndex =
  gen_qabstractitemmodel_types.QModelIndex(h: fcQStringListModel_virtualbase_buddy(self.h, index.h), owned: true)

proc miqt_exec_callback_cQStringListModel_buddy(vtbl: pointer, self: pointer, index: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QStringListModelVTable](vtbl)
  let self = QStringListModel(h: self)
  let slotval1 = gen_qabstractitemmodel_types.QModelIndex(h: index, owned: false)
  var virtualReturn = vtbl[].buddy(self, slotval1)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc QStringListModelmatch*(self: gen_qstringlistmodel_types.QStringListModel, start: gen_qabstractitemmodel_types.QModelIndex, role: cint, value: gen_qvariant_types.QVariant, hits: cint, flags: cint): seq[gen_qabstractitemmodel_types.QModelIndex] =
  var v_ma = fcQStringListModel_virtualbase_match(self.h, start.h, role, value.h, hits, cint(flags))
  var vx_ret = newSeq[gen_qabstractitemmodel_types.QModelIndex](int(v_ma.len))
  let v_outCast = cast[ptr UncheckedArray[pointer]](v_ma.data)
  for i in 0 ..< v_ma.len:
    vx_ret[i] = gen_qabstractitemmodel_types.QModelIndex(h: v_outCast[i], owned: true)
  c_free(v_ma.data)
  vx_ret

proc miqt_exec_callback_cQStringListModel_match(vtbl: pointer, self: pointer, start: pointer, role: cint, value: pointer, hits: cint, flags: cint): struct_miqt_array {.cdecl.} =
  let vtbl = cast[ptr QStringListModelVTable](vtbl)
  let self = QStringListModel(h: self)
  let slotval1 = gen_qabstractitemmodel_types.QModelIndex(h: start, owned: false)
  let slotval2 = role
  let slotval3 = gen_qvariant_types.QVariant(h: value, owned: false)
  let slotval4 = hits
  let slotval5 = cint(flags)
  var virtualReturn = vtbl[].match(self, slotval1, slotval2, slotval3, slotval4, slotval5)
  var virtualReturn_CArray = cast[ptr UncheckedArray[pointer]](if len(virtualReturn) > 0: c_malloc(c_sizet(sizeof(pointer) * len(virtualReturn))) else: nil)
  for i in 0..<len(virtualReturn):
    virtualReturn[i].owned = false # TODO move?
    let virtualReturn_i_h = virtualReturn[i].h
    virtualReturn[i].h = nil
    virtualReturn_CArray[i] = virtualReturn_i_h

  struct_miqt_array(len: csize_t(len(virtualReturn)), data: if len(virtualReturn) == 0: nil else: addr(virtualReturn_CArray[0]))

proc QStringListModelspan*(self: gen_qstringlistmodel_types.QStringListModel, index: gen_qabstractitemmodel_types.QModelIndex): gen_qsize_types.QSize =
  gen_qsize_types.QSize(h: fcQStringListModel_virtualbase_span(self.h, index.h), owned: true)

proc miqt_exec_callback_cQStringListModel_span(vtbl: pointer, self: pointer, index: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QStringListModelVTable](vtbl)
  let self = QStringListModel(h: self)
  let slotval1 = gen_qabstractitemmodel_types.QModelIndex(h: index, owned: false)
  var virtualReturn = vtbl[].span(self, slotval1)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc QStringListModelroleNames*(self: gen_qstringlistmodel_types.QStringListModel, ): Table[cint,seq[byte]] =
  var v_mm = fcQStringListModel_virtualbase_roleNames(self.h)
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
  c_free(v_mm.keys)
  c_free(v_mm.values)
  vx_ret

proc miqt_exec_callback_cQStringListModel_roleNames(vtbl: pointer, self: pointer): struct_miqt_map {.cdecl.} =
  let vtbl = cast[ptr QStringListModelVTable](vtbl)
  let self = QStringListModel(h: self)
  var virtualReturn = vtbl[].roleNames(self)
  var virtualReturn_Keys_CArray = cast[ptr UncheckedArray[cint]](if len(virtualReturn) > 0: c_malloc(csize_t(sizeof(cint) * len(virtualReturn))) else: nil)
  var virtualReturn_Values_CArray = cast[ptr UncheckedArray[struct_miqt_string]](if len(virtualReturn) > 0: c_malloc(csize_t(sizeof(struct_miqt_string) * len(virtualReturn))) else: nil)
  var virtualReturn_ctr = 0
  for virtualReturn_k in virtualReturn.keys():
    virtualReturn_Keys_CArray[virtualReturn_ctr] = virtualReturn_k
    virtualReturn_ctr += 1
  virtualReturn_ctr = 0
  for virtualReturn_v in virtualReturn.mvalues():
    var virtualReturn_v_copy = cast[cstring](if len(virtualReturn_v) > 0: c_malloc(csize_t(len(virtualReturn_v))) else: nil)
    if len(virtualReturn_v) > 0: copyMem(cast[pointer](virtualReturn_v_copy), addr virtualReturn_v[0], csize_t(len(virtualReturn_v)))
    virtualReturn_Values_CArray[virtualReturn_ctr] = struct_miqt_string(data: virtualReturn_v_copy, len: csize_t(len(virtualReturn_v)))
    virtualReturn_ctr += 1

  struct_miqt_map(len: csize_t(len(virtualReturn)),keys: if len(virtualReturn) == 0: nil else: addr(virtualReturn_Keys_CArray[0]), values: if len(virtualReturn) == 0: nil else: addr(virtualReturn_Values_CArray[0]),)

proc QStringListModelsubmit*(self: gen_qstringlistmodel_types.QStringListModel, ): bool =
  fcQStringListModel_virtualbase_submit(self.h)

proc miqt_exec_callback_cQStringListModel_submit(vtbl: pointer, self: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QStringListModelVTable](vtbl)
  let self = QStringListModel(h: self)
  var virtualReturn = vtbl[].submit(self)
  virtualReturn

proc QStringListModelrevert*(self: gen_qstringlistmodel_types.QStringListModel, ): void =
  fcQStringListModel_virtualbase_revert(self.h)

proc miqt_exec_callback_cQStringListModel_revert(vtbl: pointer, self: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QStringListModelVTable](vtbl)
  let self = QStringListModel(h: self)
  vtbl[].revert(self)

proc QStringListModelevent*(self: gen_qstringlistmodel_types.QStringListModel, event: gen_qcoreevent_types.QEvent): bool =
  fcQStringListModel_virtualbase_event(self.h, event.h)

proc miqt_exec_callback_cQStringListModel_event(vtbl: pointer, self: pointer, event: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QStringListModelVTable](vtbl)
  let self = QStringListModel(h: self)
  let slotval1 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  var virtualReturn = vtbl[].event(self, slotval1)
  virtualReturn

proc QStringListModeleventFilter*(self: gen_qstringlistmodel_types.QStringListModel, watched: gen_qobject_types.QObject, event: gen_qcoreevent_types.QEvent): bool =
  fcQStringListModel_virtualbase_eventFilter(self.h, watched.h, event.h)

proc miqt_exec_callback_cQStringListModel_eventFilter(vtbl: pointer, self: pointer, watched: pointer, event: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QStringListModelVTable](vtbl)
  let self = QStringListModel(h: self)
  let slotval1 = gen_qobject_types.QObject(h: watched, owned: false)
  let slotval2 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  var virtualReturn = vtbl[].eventFilter(self, slotval1, slotval2)
  virtualReturn

proc QStringListModeltimerEvent*(self: gen_qstringlistmodel_types.QStringListModel, event: gen_qcoreevent_types.QTimerEvent): void =
  fcQStringListModel_virtualbase_timerEvent(self.h, event.h)

proc miqt_exec_callback_cQStringListModel_timerEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QStringListModelVTable](vtbl)
  let self = QStringListModel(h: self)
  let slotval1 = gen_qcoreevent_types.QTimerEvent(h: event, owned: false)
  vtbl[].timerEvent(self, slotval1)

proc QStringListModelchildEvent*(self: gen_qstringlistmodel_types.QStringListModel, event: gen_qcoreevent_types.QChildEvent): void =
  fcQStringListModel_virtualbase_childEvent(self.h, event.h)

proc miqt_exec_callback_cQStringListModel_childEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QStringListModelVTable](vtbl)
  let self = QStringListModel(h: self)
  let slotval1 = gen_qcoreevent_types.QChildEvent(h: event, owned: false)
  vtbl[].childEvent(self, slotval1)

proc QStringListModelcustomEvent*(self: gen_qstringlistmodel_types.QStringListModel, event: gen_qcoreevent_types.QEvent): void =
  fcQStringListModel_virtualbase_customEvent(self.h, event.h)

proc miqt_exec_callback_cQStringListModel_customEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QStringListModelVTable](vtbl)
  let self = QStringListModel(h: self)
  let slotval1 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  vtbl[].customEvent(self, slotval1)

proc QStringListModelconnectNotify*(self: gen_qstringlistmodel_types.QStringListModel, signal: gen_qmetaobject_types.QMetaMethod): void =
  fcQStringListModel_virtualbase_connectNotify(self.h, signal.h)

proc miqt_exec_callback_cQStringListModel_connectNotify(vtbl: pointer, self: pointer, signal: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QStringListModelVTable](vtbl)
  let self = QStringListModel(h: self)
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal, owned: false)
  vtbl[].connectNotify(self, slotval1)

proc QStringListModeldisconnectNotify*(self: gen_qstringlistmodel_types.QStringListModel, signal: gen_qmetaobject_types.QMetaMethod): void =
  fcQStringListModel_virtualbase_disconnectNotify(self.h, signal.h)

proc miqt_exec_callback_cQStringListModel_disconnectNotify(vtbl: pointer, self: pointer, signal: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QStringListModelVTable](vtbl)
  let self = QStringListModel(h: self)
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal, owned: false)
  vtbl[].disconnectNotify(self, slotval1)

type VirtualQStringListModel* {.inheritable.} = ref object of QStringListModel
  vtbl*: cQStringListModelVTable
method metaObject*(self: VirtualQStringListModel, ): gen_qobjectdefs_types.QMetaObject {.base.} =
  QStringListModelmetaObject(self[])
proc miqt_exec_method_cQStringListModel_metaObject(vtbl: pointer, inst: pointer): pointer {.cdecl.} =
  let vtbl = cast[VirtualQStringListModel](cast[uint](vtbl) - uint(offsetOf(VirtualQStringListModel, vtbl)))
  var virtualReturn = vtbl.metaObject()
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

method metacast*(self: VirtualQStringListModel, param1: cstring): pointer {.base.} =
  QStringListModelmetacast(self[], param1)
proc miqt_exec_method_cQStringListModel_metacast(vtbl: pointer, inst: pointer, param1: cstring): pointer {.cdecl.} =
  let vtbl = cast[VirtualQStringListModel](cast[uint](vtbl) - uint(offsetOf(VirtualQStringListModel, vtbl)))
  let slotval1 = (param1)
  var virtualReturn = vtbl.metacast(slotval1)
  virtualReturn

method metacall*(self: VirtualQStringListModel, param1: cint, param2: cint, param3: pointer): cint {.base.} =
  QStringListModelmetacall(self[], param1, param2, param3)
proc miqt_exec_method_cQStringListModel_metacall(vtbl: pointer, inst: pointer, param1: cint, param2: cint, param3: pointer): cint {.cdecl.} =
  let vtbl = cast[VirtualQStringListModel](cast[uint](vtbl) - uint(offsetOf(VirtualQStringListModel, vtbl)))
  let slotval1 = cint(param1)
  let slotval2 = param2
  let slotval3 = param3
  var virtualReturn = vtbl.metacall(slotval1, slotval2, slotval3)
  virtualReturn

method rowCount*(self: VirtualQStringListModel, parent: gen_qabstractitemmodel_types.QModelIndex): cint {.base.} =
  QStringListModelrowCount(self[], parent)
proc miqt_exec_method_cQStringListModel_rowCount(vtbl: pointer, inst: pointer, parent: pointer): cint {.cdecl.} =
  let vtbl = cast[VirtualQStringListModel](cast[uint](vtbl) - uint(offsetOf(VirtualQStringListModel, vtbl)))
  let slotval1 = gen_qabstractitemmodel_types.QModelIndex(h: parent, owned: false)
  var virtualReturn = vtbl.rowCount(slotval1)
  virtualReturn

method sibling*(self: VirtualQStringListModel, row: cint, column: cint, idx: gen_qabstractitemmodel_types.QModelIndex): gen_qabstractitemmodel_types.QModelIndex {.base.} =
  QStringListModelsibling(self[], row, column, idx)
proc miqt_exec_method_cQStringListModel_sibling(vtbl: pointer, inst: pointer, row: cint, column: cint, idx: pointer): pointer {.cdecl.} =
  let vtbl = cast[VirtualQStringListModel](cast[uint](vtbl) - uint(offsetOf(VirtualQStringListModel, vtbl)))
  let slotval1 = row
  let slotval2 = column
  let slotval3 = gen_qabstractitemmodel_types.QModelIndex(h: idx, owned: false)
  var virtualReturn = vtbl.sibling(slotval1, slotval2, slotval3)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

method data*(self: VirtualQStringListModel, index: gen_qabstractitemmodel_types.QModelIndex, role: cint): gen_qvariant_types.QVariant {.base.} =
  QStringListModeldata(self[], index, role)
proc miqt_exec_method_cQStringListModel_data(vtbl: pointer, inst: pointer, index: pointer, role: cint): pointer {.cdecl.} =
  let vtbl = cast[VirtualQStringListModel](cast[uint](vtbl) - uint(offsetOf(VirtualQStringListModel, vtbl)))
  let slotval1 = gen_qabstractitemmodel_types.QModelIndex(h: index, owned: false)
  let slotval2 = role
  var virtualReturn = vtbl.data(slotval1, slotval2)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

method setData*(self: VirtualQStringListModel, index: gen_qabstractitemmodel_types.QModelIndex, value: gen_qvariant_types.QVariant, role: cint): bool {.base.} =
  QStringListModelsetData(self[], index, value, role)
proc miqt_exec_method_cQStringListModel_setData(vtbl: pointer, inst: pointer, index: pointer, value: pointer, role: cint): bool {.cdecl.} =
  let vtbl = cast[VirtualQStringListModel](cast[uint](vtbl) - uint(offsetOf(VirtualQStringListModel, vtbl)))
  let slotval1 = gen_qabstractitemmodel_types.QModelIndex(h: index, owned: false)
  let slotval2 = gen_qvariant_types.QVariant(h: value, owned: false)
  let slotval3 = role
  var virtualReturn = vtbl.setData(slotval1, slotval2, slotval3)
  virtualReturn

method flags*(self: VirtualQStringListModel, index: gen_qabstractitemmodel_types.QModelIndex): cint {.base.} =
  QStringListModelflags(self[], index)
proc miqt_exec_method_cQStringListModel_flags(vtbl: pointer, inst: pointer, index: pointer): cint {.cdecl.} =
  let vtbl = cast[VirtualQStringListModel](cast[uint](vtbl) - uint(offsetOf(VirtualQStringListModel, vtbl)))
  let slotval1 = gen_qabstractitemmodel_types.QModelIndex(h: index, owned: false)
  var virtualReturn = vtbl.flags(slotval1)
  cint(virtualReturn)

method insertRows*(self: VirtualQStringListModel, row: cint, count: cint, parent: gen_qabstractitemmodel_types.QModelIndex): bool {.base.} =
  QStringListModelinsertRows(self[], row, count, parent)
proc miqt_exec_method_cQStringListModel_insertRows(vtbl: pointer, inst: pointer, row: cint, count: cint, parent: pointer): bool {.cdecl.} =
  let vtbl = cast[VirtualQStringListModel](cast[uint](vtbl) - uint(offsetOf(VirtualQStringListModel, vtbl)))
  let slotval1 = row
  let slotval2 = count
  let slotval3 = gen_qabstractitemmodel_types.QModelIndex(h: parent, owned: false)
  var virtualReturn = vtbl.insertRows(slotval1, slotval2, slotval3)
  virtualReturn

method removeRows*(self: VirtualQStringListModel, row: cint, count: cint, parent: gen_qabstractitemmodel_types.QModelIndex): bool {.base.} =
  QStringListModelremoveRows(self[], row, count, parent)
proc miqt_exec_method_cQStringListModel_removeRows(vtbl: pointer, inst: pointer, row: cint, count: cint, parent: pointer): bool {.cdecl.} =
  let vtbl = cast[VirtualQStringListModel](cast[uint](vtbl) - uint(offsetOf(VirtualQStringListModel, vtbl)))
  let slotval1 = row
  let slotval2 = count
  let slotval3 = gen_qabstractitemmodel_types.QModelIndex(h: parent, owned: false)
  var virtualReturn = vtbl.removeRows(slotval1, slotval2, slotval3)
  virtualReturn

method moveRows*(self: VirtualQStringListModel, sourceParent: gen_qabstractitemmodel_types.QModelIndex, sourceRow: cint, count: cint, destinationParent: gen_qabstractitemmodel_types.QModelIndex, destinationChild: cint): bool {.base.} =
  QStringListModelmoveRows(self[], sourceParent, sourceRow, count, destinationParent, destinationChild)
proc miqt_exec_method_cQStringListModel_moveRows(vtbl: pointer, inst: pointer, sourceParent: pointer, sourceRow: cint, count: cint, destinationParent: pointer, destinationChild: cint): bool {.cdecl.} =
  let vtbl = cast[VirtualQStringListModel](cast[uint](vtbl) - uint(offsetOf(VirtualQStringListModel, vtbl)))
  let slotval1 = gen_qabstractitemmodel_types.QModelIndex(h: sourceParent, owned: false)
  let slotval2 = sourceRow
  let slotval3 = count
  let slotval4 = gen_qabstractitemmodel_types.QModelIndex(h: destinationParent, owned: false)
  let slotval5 = destinationChild
  var virtualReturn = vtbl.moveRows(slotval1, slotval2, slotval3, slotval4, slotval5)
  virtualReturn

method itemData*(self: VirtualQStringListModel, index: gen_qabstractitemmodel_types.QModelIndex): Table[cint,gen_qvariant_types.QVariant] {.base.} =
  QStringListModelitemData(self[], index)
proc miqt_exec_method_cQStringListModel_itemData(vtbl: pointer, inst: pointer, index: pointer): struct_miqt_map {.cdecl.} =
  let vtbl = cast[VirtualQStringListModel](cast[uint](vtbl) - uint(offsetOf(VirtualQStringListModel, vtbl)))
  let slotval1 = gen_qabstractitemmodel_types.QModelIndex(h: index, owned: false)
  var virtualReturn = vtbl.itemData(slotval1)
  var virtualReturn_Keys_CArray = cast[ptr UncheckedArray[cint]](if len(virtualReturn) > 0: c_malloc(csize_t(sizeof(cint) * len(virtualReturn))) else: nil)
  var virtualReturn_Values_CArray = cast[ptr UncheckedArray[pointer]](if len(virtualReturn) > 0: c_malloc(csize_t(sizeof(pointer) * len(virtualReturn))) else: nil)
  var virtualReturn_ctr = 0
  for virtualReturn_k in virtualReturn.keys():
    virtualReturn_Keys_CArray[virtualReturn_ctr] = virtualReturn_k
    virtualReturn_ctr += 1
  virtualReturn_ctr = 0
  for virtualReturn_v in virtualReturn.mvalues():
    virtualReturn_v.owned = false # TODO move?
    let virtualReturn_v_h = virtualReturn_v.h
    virtualReturn_v.h = nil
    virtualReturn_Values_CArray[virtualReturn_ctr] = virtualReturn_v_h
    virtualReturn_ctr += 1

  struct_miqt_map(len: csize_t(len(virtualReturn)),keys: if len(virtualReturn) == 0: nil else: addr(virtualReturn_Keys_CArray[0]), values: if len(virtualReturn) == 0: nil else: addr(virtualReturn_Values_CArray[0]),)

method setItemData*(self: VirtualQStringListModel, index: gen_qabstractitemmodel_types.QModelIndex, roles: Table[cint,gen_qvariant_types.QVariant]): bool {.base.} =
  QStringListModelsetItemData(self[], index, roles)
proc miqt_exec_method_cQStringListModel_setItemData(vtbl: pointer, inst: pointer, index: pointer, roles: struct_miqt_map): bool {.cdecl.} =
  let vtbl = cast[VirtualQStringListModel](cast[uint](vtbl) - uint(offsetOf(VirtualQStringListModel, vtbl)))
  let slotval1 = gen_qabstractitemmodel_types.QModelIndex(h: index, owned: false)
  var vroles_mm = roles
  var vrolesx_ret: Table[cint, gen_qvariant_types.QVariant]
  var vroles_Keys = cast[ptr UncheckedArray[cint]](vroles_mm.keys)
  var vroles_Values = cast[ptr UncheckedArray[pointer]](vroles_mm.values)
  for i in 0..<vroles_mm.len:
    var vroles_entry_Key = vroles_Keys[i]

    var vroles_entry_Value = gen_qvariant_types.QVariant(h: vroles_Values[i], owned: true)

    vrolesx_ret[vroles_entry_Key] = vroles_entry_Value
  c_free(vroles_mm.keys)
  c_free(vroles_mm.values)
  let slotval2 = vrolesx_ret
  var virtualReturn = vtbl.setItemData(slotval1, slotval2)
  virtualReturn

method sort*(self: VirtualQStringListModel, column: cint, order: cint): void {.base.} =
  QStringListModelsort(self[], column, order)
proc miqt_exec_method_cQStringListModel_sort(vtbl: pointer, inst: pointer, column: cint, order: cint): void {.cdecl.} =
  let vtbl = cast[VirtualQStringListModel](cast[uint](vtbl) - uint(offsetOf(VirtualQStringListModel, vtbl)))
  let slotval1 = column
  let slotval2 = cint(order)
  vtbl.sort(slotval1, slotval2)

method supportedDropActions*(self: VirtualQStringListModel, ): cint {.base.} =
  QStringListModelsupportedDropActions(self[])
proc miqt_exec_method_cQStringListModel_supportedDropActions(vtbl: pointer, inst: pointer): cint {.cdecl.} =
  let vtbl = cast[VirtualQStringListModel](cast[uint](vtbl) - uint(offsetOf(VirtualQStringListModel, vtbl)))
  var virtualReturn = vtbl.supportedDropActions()
  cint(virtualReturn)

method index*(self: VirtualQStringListModel, row: cint, column: cint, parent: gen_qabstractitemmodel_types.QModelIndex): gen_qabstractitemmodel_types.QModelIndex {.base.} =
  QStringListModelindex(self[], row, column, parent)
proc miqt_exec_method_cQStringListModel_index(vtbl: pointer, inst: pointer, row: cint, column: cint, parent: pointer): pointer {.cdecl.} =
  let vtbl = cast[VirtualQStringListModel](cast[uint](vtbl) - uint(offsetOf(VirtualQStringListModel, vtbl)))
  let slotval1 = row
  let slotval2 = column
  let slotval3 = gen_qabstractitemmodel_types.QModelIndex(h: parent, owned: false)
  var virtualReturn = vtbl.index(slotval1, slotval2, slotval3)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

method dropMimeData*(self: VirtualQStringListModel, data: gen_qmimedata_types.QMimeData, action: cint, row: cint, column: cint, parent: gen_qabstractitemmodel_types.QModelIndex): bool {.base.} =
  QStringListModeldropMimeData(self[], data, action, row, column, parent)
proc miqt_exec_method_cQStringListModel_dropMimeData(vtbl: pointer, inst: pointer, data: pointer, action: cint, row: cint, column: cint, parent: pointer): bool {.cdecl.} =
  let vtbl = cast[VirtualQStringListModel](cast[uint](vtbl) - uint(offsetOf(VirtualQStringListModel, vtbl)))
  let slotval1 = gen_qmimedata_types.QMimeData(h: data, owned: false)
  let slotval2 = cint(action)
  let slotval3 = row
  let slotval4 = column
  let slotval5 = gen_qabstractitemmodel_types.QModelIndex(h: parent, owned: false)
  var virtualReturn = vtbl.dropMimeData(slotval1, slotval2, slotval3, slotval4, slotval5)
  virtualReturn

method headerData*(self: VirtualQStringListModel, section: cint, orientation: cint, role: cint): gen_qvariant_types.QVariant {.base.} =
  QStringListModelheaderData(self[], section, orientation, role)
proc miqt_exec_method_cQStringListModel_headerData(vtbl: pointer, inst: pointer, section: cint, orientation: cint, role: cint): pointer {.cdecl.} =
  let vtbl = cast[VirtualQStringListModel](cast[uint](vtbl) - uint(offsetOf(VirtualQStringListModel, vtbl)))
  let slotval1 = section
  let slotval2 = cint(orientation)
  let slotval3 = role
  var virtualReturn = vtbl.headerData(slotval1, slotval2, slotval3)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

method setHeaderData*(self: VirtualQStringListModel, section: cint, orientation: cint, value: gen_qvariant_types.QVariant, role: cint): bool {.base.} =
  QStringListModelsetHeaderData(self[], section, orientation, value, role)
proc miqt_exec_method_cQStringListModel_setHeaderData(vtbl: pointer, inst: pointer, section: cint, orientation: cint, value: pointer, role: cint): bool {.cdecl.} =
  let vtbl = cast[VirtualQStringListModel](cast[uint](vtbl) - uint(offsetOf(VirtualQStringListModel, vtbl)))
  let slotval1 = section
  let slotval2 = cint(orientation)
  let slotval3 = gen_qvariant_types.QVariant(h: value, owned: false)
  let slotval4 = role
  var virtualReturn = vtbl.setHeaderData(slotval1, slotval2, slotval3, slotval4)
  virtualReturn

method mimeTypes*(self: VirtualQStringListModel, ): seq[string] {.base.} =
  QStringListModelmimeTypes(self[])
proc miqt_exec_method_cQStringListModel_mimeTypes(vtbl: pointer, inst: pointer): struct_miqt_array {.cdecl.} =
  let vtbl = cast[VirtualQStringListModel](cast[uint](vtbl) - uint(offsetOf(VirtualQStringListModel, vtbl)))
  var virtualReturn = vtbl.mimeTypes()
  var virtualReturn_CArray = cast[ptr UncheckedArray[struct_miqt_string]](if len(virtualReturn) > 0: c_malloc(c_sizet(sizeof(struct_miqt_string) * len(virtualReturn))) else: nil)
  for i in 0..<len(virtualReturn):
    var virtualReturn_i_copy = cast[cstring](if len(virtualReturn[i]) > 0: c_malloc(csize_t(len(virtualReturn[i]))) else: nil)
    if len(virtualReturn[i]) > 0: copyMem(cast[pointer](virtualReturn_i_copy), addr virtualReturn[i][0], csize_t(len(virtualReturn[i])))
    virtualReturn_CArray[i] = struct_miqt_string(data: virtualReturn_i_copy, len: csize_t(len(virtualReturn[i])))

  struct_miqt_array(len: csize_t(len(virtualReturn)), data: if len(virtualReturn) == 0: nil else: addr(virtualReturn_CArray[0]))

method mimeData*(self: VirtualQStringListModel, indexes: seq[gen_qabstractitemmodel_types.QModelIndex]): gen_qmimedata_types.QMimeData {.base.} =
  QStringListModelmimeData(self[], indexes)
proc miqt_exec_method_cQStringListModel_mimeData(vtbl: pointer, inst: pointer, indexes: struct_miqt_array): pointer {.cdecl.} =
  let vtbl = cast[VirtualQStringListModel](cast[uint](vtbl) - uint(offsetOf(VirtualQStringListModel, vtbl)))
  var vindexes_ma = indexes
  var vindexesx_ret = newSeq[gen_qabstractitemmodel_types.QModelIndex](int(vindexes_ma.len))
  let vindexes_outCast = cast[ptr UncheckedArray[pointer]](vindexes_ma.data)
  for i in 0 ..< vindexes_ma.len:
    vindexesx_ret[i] = gen_qabstractitemmodel_types.QModelIndex(h: vindexes_outCast[i], owned: true)
  c_free(vindexes_ma.data)
  let slotval1 = vindexesx_ret
  var virtualReturn = vtbl.mimeData(slotval1)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

method canDropMimeData*(self: VirtualQStringListModel, data: gen_qmimedata_types.QMimeData, action: cint, row: cint, column: cint, parent: gen_qabstractitemmodel_types.QModelIndex): bool {.base.} =
  QStringListModelcanDropMimeData(self[], data, action, row, column, parent)
proc miqt_exec_method_cQStringListModel_canDropMimeData(vtbl: pointer, inst: pointer, data: pointer, action: cint, row: cint, column: cint, parent: pointer): bool {.cdecl.} =
  let vtbl = cast[VirtualQStringListModel](cast[uint](vtbl) - uint(offsetOf(VirtualQStringListModel, vtbl)))
  let slotval1 = gen_qmimedata_types.QMimeData(h: data, owned: false)
  let slotval2 = cint(action)
  let slotval3 = row
  let slotval4 = column
  let slotval5 = gen_qabstractitemmodel_types.QModelIndex(h: parent, owned: false)
  var virtualReturn = vtbl.canDropMimeData(slotval1, slotval2, slotval3, slotval4, slotval5)
  virtualReturn

method supportedDragActions*(self: VirtualQStringListModel, ): cint {.base.} =
  QStringListModelsupportedDragActions(self[])
proc miqt_exec_method_cQStringListModel_supportedDragActions(vtbl: pointer, inst: pointer): cint {.cdecl.} =
  let vtbl = cast[VirtualQStringListModel](cast[uint](vtbl) - uint(offsetOf(VirtualQStringListModel, vtbl)))
  var virtualReturn = vtbl.supportedDragActions()
  cint(virtualReturn)

method insertColumns*(self: VirtualQStringListModel, column: cint, count: cint, parent: gen_qabstractitemmodel_types.QModelIndex): bool {.base.} =
  QStringListModelinsertColumns(self[], column, count, parent)
proc miqt_exec_method_cQStringListModel_insertColumns(vtbl: pointer, inst: pointer, column: cint, count: cint, parent: pointer): bool {.cdecl.} =
  let vtbl = cast[VirtualQStringListModel](cast[uint](vtbl) - uint(offsetOf(VirtualQStringListModel, vtbl)))
  let slotval1 = column
  let slotval2 = count
  let slotval3 = gen_qabstractitemmodel_types.QModelIndex(h: parent, owned: false)
  var virtualReturn = vtbl.insertColumns(slotval1, slotval2, slotval3)
  virtualReturn

method removeColumns*(self: VirtualQStringListModel, column: cint, count: cint, parent: gen_qabstractitemmodel_types.QModelIndex): bool {.base.} =
  QStringListModelremoveColumns(self[], column, count, parent)
proc miqt_exec_method_cQStringListModel_removeColumns(vtbl: pointer, inst: pointer, column: cint, count: cint, parent: pointer): bool {.cdecl.} =
  let vtbl = cast[VirtualQStringListModel](cast[uint](vtbl) - uint(offsetOf(VirtualQStringListModel, vtbl)))
  let slotval1 = column
  let slotval2 = count
  let slotval3 = gen_qabstractitemmodel_types.QModelIndex(h: parent, owned: false)
  var virtualReturn = vtbl.removeColumns(slotval1, slotval2, slotval3)
  virtualReturn

method moveColumns*(self: VirtualQStringListModel, sourceParent: gen_qabstractitemmodel_types.QModelIndex, sourceColumn: cint, count: cint, destinationParent: gen_qabstractitemmodel_types.QModelIndex, destinationChild: cint): bool {.base.} =
  QStringListModelmoveColumns(self[], sourceParent, sourceColumn, count, destinationParent, destinationChild)
proc miqt_exec_method_cQStringListModel_moveColumns(vtbl: pointer, inst: pointer, sourceParent: pointer, sourceColumn: cint, count: cint, destinationParent: pointer, destinationChild: cint): bool {.cdecl.} =
  let vtbl = cast[VirtualQStringListModel](cast[uint](vtbl) - uint(offsetOf(VirtualQStringListModel, vtbl)))
  let slotval1 = gen_qabstractitemmodel_types.QModelIndex(h: sourceParent, owned: false)
  let slotval2 = sourceColumn
  let slotval3 = count
  let slotval4 = gen_qabstractitemmodel_types.QModelIndex(h: destinationParent, owned: false)
  let slotval5 = destinationChild
  var virtualReturn = vtbl.moveColumns(slotval1, slotval2, slotval3, slotval4, slotval5)
  virtualReturn

method fetchMore*(self: VirtualQStringListModel, parent: gen_qabstractitemmodel_types.QModelIndex): void {.base.} =
  QStringListModelfetchMore(self[], parent)
proc miqt_exec_method_cQStringListModel_fetchMore(vtbl: pointer, inst: pointer, parent: pointer): void {.cdecl.} =
  let vtbl = cast[VirtualQStringListModel](cast[uint](vtbl) - uint(offsetOf(VirtualQStringListModel, vtbl)))
  let slotval1 = gen_qabstractitemmodel_types.QModelIndex(h: parent, owned: false)
  vtbl.fetchMore(slotval1)

method canFetchMore*(self: VirtualQStringListModel, parent: gen_qabstractitemmodel_types.QModelIndex): bool {.base.} =
  QStringListModelcanFetchMore(self[], parent)
proc miqt_exec_method_cQStringListModel_canFetchMore(vtbl: pointer, inst: pointer, parent: pointer): bool {.cdecl.} =
  let vtbl = cast[VirtualQStringListModel](cast[uint](vtbl) - uint(offsetOf(VirtualQStringListModel, vtbl)))
  let slotval1 = gen_qabstractitemmodel_types.QModelIndex(h: parent, owned: false)
  var virtualReturn = vtbl.canFetchMore(slotval1)
  virtualReturn

method buddy*(self: VirtualQStringListModel, index: gen_qabstractitemmodel_types.QModelIndex): gen_qabstractitemmodel_types.QModelIndex {.base.} =
  QStringListModelbuddy(self[], index)
proc miqt_exec_method_cQStringListModel_buddy(vtbl: pointer, inst: pointer, index: pointer): pointer {.cdecl.} =
  let vtbl = cast[VirtualQStringListModel](cast[uint](vtbl) - uint(offsetOf(VirtualQStringListModel, vtbl)))
  let slotval1 = gen_qabstractitemmodel_types.QModelIndex(h: index, owned: false)
  var virtualReturn = vtbl.buddy(slotval1)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

method match*(self: VirtualQStringListModel, start: gen_qabstractitemmodel_types.QModelIndex, role: cint, value: gen_qvariant_types.QVariant, hits: cint, flags: cint): seq[gen_qabstractitemmodel_types.QModelIndex] {.base.} =
  QStringListModelmatch(self[], start, role, value, hits, flags)
proc miqt_exec_method_cQStringListModel_match(vtbl: pointer, inst: pointer, start: pointer, role: cint, value: pointer, hits: cint, flags: cint): struct_miqt_array {.cdecl.} =
  let vtbl = cast[VirtualQStringListModel](cast[uint](vtbl) - uint(offsetOf(VirtualQStringListModel, vtbl)))
  let slotval1 = gen_qabstractitemmodel_types.QModelIndex(h: start, owned: false)
  let slotval2 = role
  let slotval3 = gen_qvariant_types.QVariant(h: value, owned: false)
  let slotval4 = hits
  let slotval5 = cint(flags)
  var virtualReturn = vtbl.match(slotval1, slotval2, slotval3, slotval4, slotval5)
  var virtualReturn_CArray = cast[ptr UncheckedArray[pointer]](if len(virtualReturn) > 0: c_malloc(c_sizet(sizeof(pointer) * len(virtualReturn))) else: nil)
  for i in 0..<len(virtualReturn):
    virtualReturn[i].owned = false # TODO move?
    let virtualReturn_i_h = virtualReturn[i].h
    virtualReturn[i].h = nil
    virtualReturn_CArray[i] = virtualReturn_i_h

  struct_miqt_array(len: csize_t(len(virtualReturn)), data: if len(virtualReturn) == 0: nil else: addr(virtualReturn_CArray[0]))

method span*(self: VirtualQStringListModel, index: gen_qabstractitemmodel_types.QModelIndex): gen_qsize_types.QSize {.base.} =
  QStringListModelspan(self[], index)
proc miqt_exec_method_cQStringListModel_span(vtbl: pointer, inst: pointer, index: pointer): pointer {.cdecl.} =
  let vtbl = cast[VirtualQStringListModel](cast[uint](vtbl) - uint(offsetOf(VirtualQStringListModel, vtbl)))
  let slotval1 = gen_qabstractitemmodel_types.QModelIndex(h: index, owned: false)
  var virtualReturn = vtbl.span(slotval1)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

method roleNames*(self: VirtualQStringListModel, ): Table[cint,seq[byte]] {.base.} =
  QStringListModelroleNames(self[])
proc miqt_exec_method_cQStringListModel_roleNames(vtbl: pointer, inst: pointer): struct_miqt_map {.cdecl.} =
  let vtbl = cast[VirtualQStringListModel](cast[uint](vtbl) - uint(offsetOf(VirtualQStringListModel, vtbl)))
  var virtualReturn = vtbl.roleNames()
  var virtualReturn_Keys_CArray = cast[ptr UncheckedArray[cint]](if len(virtualReturn) > 0: c_malloc(csize_t(sizeof(cint) * len(virtualReturn))) else: nil)
  var virtualReturn_Values_CArray = cast[ptr UncheckedArray[struct_miqt_string]](if len(virtualReturn) > 0: c_malloc(csize_t(sizeof(struct_miqt_string) * len(virtualReturn))) else: nil)
  var virtualReturn_ctr = 0
  for virtualReturn_k in virtualReturn.keys():
    virtualReturn_Keys_CArray[virtualReturn_ctr] = virtualReturn_k
    virtualReturn_ctr += 1
  virtualReturn_ctr = 0
  for virtualReturn_v in virtualReturn.mvalues():
    var virtualReturn_v_copy = cast[cstring](if len(virtualReturn_v) > 0: c_malloc(csize_t(len(virtualReturn_v))) else: nil)
    if len(virtualReturn_v) > 0: copyMem(cast[pointer](virtualReturn_v_copy), addr virtualReturn_v[0], csize_t(len(virtualReturn_v)))
    virtualReturn_Values_CArray[virtualReturn_ctr] = struct_miqt_string(data: virtualReturn_v_copy, len: csize_t(len(virtualReturn_v)))
    virtualReturn_ctr += 1

  struct_miqt_map(len: csize_t(len(virtualReturn)),keys: if len(virtualReturn) == 0: nil else: addr(virtualReturn_Keys_CArray[0]), values: if len(virtualReturn) == 0: nil else: addr(virtualReturn_Values_CArray[0]),)

method submit*(self: VirtualQStringListModel, ): bool {.base.} =
  QStringListModelsubmit(self[])
proc miqt_exec_method_cQStringListModel_submit(vtbl: pointer, inst: pointer): bool {.cdecl.} =
  let vtbl = cast[VirtualQStringListModel](cast[uint](vtbl) - uint(offsetOf(VirtualQStringListModel, vtbl)))
  var virtualReturn = vtbl.submit()
  virtualReturn

method revert*(self: VirtualQStringListModel, ): void {.base.} =
  QStringListModelrevert(self[])
proc miqt_exec_method_cQStringListModel_revert(vtbl: pointer, inst: pointer): void {.cdecl.} =
  let vtbl = cast[VirtualQStringListModel](cast[uint](vtbl) - uint(offsetOf(VirtualQStringListModel, vtbl)))
  vtbl.revert()

method event*(self: VirtualQStringListModel, event: gen_qcoreevent_types.QEvent): bool {.base.} =
  QStringListModelevent(self[], event)
proc miqt_exec_method_cQStringListModel_event(vtbl: pointer, inst: pointer, event: pointer): bool {.cdecl.} =
  let vtbl = cast[VirtualQStringListModel](cast[uint](vtbl) - uint(offsetOf(VirtualQStringListModel, vtbl)))
  let slotval1 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  var virtualReturn = vtbl.event(slotval1)
  virtualReturn

method eventFilter*(self: VirtualQStringListModel, watched: gen_qobject_types.QObject, event: gen_qcoreevent_types.QEvent): bool {.base.} =
  QStringListModeleventFilter(self[], watched, event)
proc miqt_exec_method_cQStringListModel_eventFilter(vtbl: pointer, inst: pointer, watched: pointer, event: pointer): bool {.cdecl.} =
  let vtbl = cast[VirtualQStringListModel](cast[uint](vtbl) - uint(offsetOf(VirtualQStringListModel, vtbl)))
  let slotval1 = gen_qobject_types.QObject(h: watched, owned: false)
  let slotval2 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  var virtualReturn = vtbl.eventFilter(slotval1, slotval2)
  virtualReturn

method timerEvent*(self: VirtualQStringListModel, event: gen_qcoreevent_types.QTimerEvent): void {.base.} =
  QStringListModeltimerEvent(self[], event)
proc miqt_exec_method_cQStringListModel_timerEvent(vtbl: pointer, inst: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[VirtualQStringListModel](cast[uint](vtbl) - uint(offsetOf(VirtualQStringListModel, vtbl)))
  let slotval1 = gen_qcoreevent_types.QTimerEvent(h: event, owned: false)
  vtbl.timerEvent(slotval1)

method childEvent*(self: VirtualQStringListModel, event: gen_qcoreevent_types.QChildEvent): void {.base.} =
  QStringListModelchildEvent(self[], event)
proc miqt_exec_method_cQStringListModel_childEvent(vtbl: pointer, inst: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[VirtualQStringListModel](cast[uint](vtbl) - uint(offsetOf(VirtualQStringListModel, vtbl)))
  let slotval1 = gen_qcoreevent_types.QChildEvent(h: event, owned: false)
  vtbl.childEvent(slotval1)

method customEvent*(self: VirtualQStringListModel, event: gen_qcoreevent_types.QEvent): void {.base.} =
  QStringListModelcustomEvent(self[], event)
proc miqt_exec_method_cQStringListModel_customEvent(vtbl: pointer, inst: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[VirtualQStringListModel](cast[uint](vtbl) - uint(offsetOf(VirtualQStringListModel, vtbl)))
  let slotval1 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  vtbl.customEvent(slotval1)

method connectNotify*(self: VirtualQStringListModel, signal: gen_qmetaobject_types.QMetaMethod): void {.base.} =
  QStringListModelconnectNotify(self[], signal)
proc miqt_exec_method_cQStringListModel_connectNotify(vtbl: pointer, inst: pointer, signal: pointer): void {.cdecl.} =
  let vtbl = cast[VirtualQStringListModel](cast[uint](vtbl) - uint(offsetOf(VirtualQStringListModel, vtbl)))
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal, owned: false)
  vtbl.connectNotify(slotval1)

method disconnectNotify*(self: VirtualQStringListModel, signal: gen_qmetaobject_types.QMetaMethod): void {.base.} =
  QStringListModeldisconnectNotify(self[], signal)
proc miqt_exec_method_cQStringListModel_disconnectNotify(vtbl: pointer, inst: pointer, signal: pointer): void {.cdecl.} =
  let vtbl = cast[VirtualQStringListModel](cast[uint](vtbl) - uint(offsetOf(VirtualQStringListModel, vtbl)))
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal, owned: false)
  vtbl.disconnectNotify(slotval1)

proc resetInternalData*(self: gen_qstringlistmodel_types.QStringListModel, ): void =
  fcQStringListModel_protectedbase_resetInternalData(self.h)

proc createIndex*(self: gen_qstringlistmodel_types.QStringListModel, row: cint, column: cint): gen_qabstractitemmodel_types.QModelIndex =
  gen_qabstractitemmodel_types.QModelIndex(h: fcQStringListModel_protectedbase_createIndex(self.h, row, column), owned: true)

proc encodeData*(self: gen_qstringlistmodel_types.QStringListModel, indexes: seq[gen_qabstractitemmodel_types.QModelIndex], stream: gen_qdatastream_types.QDataStream): void =
  var indexes_CArray = newSeq[pointer](len(indexes))
  for i in 0..<len(indexes):
    indexes_CArray[i] = indexes[i].h

  fcQStringListModel_protectedbase_encodeData(self.h, struct_miqt_array(len: csize_t(len(indexes)), data: if len(indexes) == 0: nil else: addr(indexes_CArray[0])), stream.h)

proc decodeData*(self: gen_qstringlistmodel_types.QStringListModel, row: cint, column: cint, parent: gen_qabstractitemmodel_types.QModelIndex, stream: gen_qdatastream_types.QDataStream): bool =
  fcQStringListModel_protectedbase_decodeData(self.h, row, column, parent.h, stream.h)

proc beginInsertRows*(self: gen_qstringlistmodel_types.QStringListModel, parent: gen_qabstractitemmodel_types.QModelIndex, first: cint, last: cint): void =
  fcQStringListModel_protectedbase_beginInsertRows(self.h, parent.h, first, last)

proc endInsertRows*(self: gen_qstringlistmodel_types.QStringListModel, ): void =
  fcQStringListModel_protectedbase_endInsertRows(self.h)

proc beginRemoveRows*(self: gen_qstringlistmodel_types.QStringListModel, parent: gen_qabstractitemmodel_types.QModelIndex, first: cint, last: cint): void =
  fcQStringListModel_protectedbase_beginRemoveRows(self.h, parent.h, first, last)

proc endRemoveRows*(self: gen_qstringlistmodel_types.QStringListModel, ): void =
  fcQStringListModel_protectedbase_endRemoveRows(self.h)

proc beginMoveRows*(self: gen_qstringlistmodel_types.QStringListModel, sourceParent: gen_qabstractitemmodel_types.QModelIndex, sourceFirst: cint, sourceLast: cint, destinationParent: gen_qabstractitemmodel_types.QModelIndex, destinationRow: cint): bool =
  fcQStringListModel_protectedbase_beginMoveRows(self.h, sourceParent.h, sourceFirst, sourceLast, destinationParent.h, destinationRow)

proc endMoveRows*(self: gen_qstringlistmodel_types.QStringListModel, ): void =
  fcQStringListModel_protectedbase_endMoveRows(self.h)

proc beginInsertColumns*(self: gen_qstringlistmodel_types.QStringListModel, parent: gen_qabstractitemmodel_types.QModelIndex, first: cint, last: cint): void =
  fcQStringListModel_protectedbase_beginInsertColumns(self.h, parent.h, first, last)

proc endInsertColumns*(self: gen_qstringlistmodel_types.QStringListModel, ): void =
  fcQStringListModel_protectedbase_endInsertColumns(self.h)

proc beginRemoveColumns*(self: gen_qstringlistmodel_types.QStringListModel, parent: gen_qabstractitemmodel_types.QModelIndex, first: cint, last: cint): void =
  fcQStringListModel_protectedbase_beginRemoveColumns(self.h, parent.h, first, last)

proc endRemoveColumns*(self: gen_qstringlistmodel_types.QStringListModel, ): void =
  fcQStringListModel_protectedbase_endRemoveColumns(self.h)

proc beginMoveColumns*(self: gen_qstringlistmodel_types.QStringListModel, sourceParent: gen_qabstractitemmodel_types.QModelIndex, sourceFirst: cint, sourceLast: cint, destinationParent: gen_qabstractitemmodel_types.QModelIndex, destinationColumn: cint): bool =
  fcQStringListModel_protectedbase_beginMoveColumns(self.h, sourceParent.h, sourceFirst, sourceLast, destinationParent.h, destinationColumn)

proc endMoveColumns*(self: gen_qstringlistmodel_types.QStringListModel, ): void =
  fcQStringListModel_protectedbase_endMoveColumns(self.h)

proc beginResetModel*(self: gen_qstringlistmodel_types.QStringListModel, ): void =
  fcQStringListModel_protectedbase_beginResetModel(self.h)

proc endResetModel*(self: gen_qstringlistmodel_types.QStringListModel, ): void =
  fcQStringListModel_protectedbase_endResetModel(self.h)

proc changePersistentIndex*(self: gen_qstringlistmodel_types.QStringListModel, fromVal: gen_qabstractitemmodel_types.QModelIndex, to: gen_qabstractitemmodel_types.QModelIndex): void =
  fcQStringListModel_protectedbase_changePersistentIndex(self.h, fromVal.h, to.h)

proc changePersistentIndexList*(self: gen_qstringlistmodel_types.QStringListModel, fromVal: seq[gen_qabstractitemmodel_types.QModelIndex], to: seq[gen_qabstractitemmodel_types.QModelIndex]): void =
  var fromVal_CArray = newSeq[pointer](len(fromVal))
  for i in 0..<len(fromVal):
    fromVal_CArray[i] = fromVal[i].h

  var to_CArray = newSeq[pointer](len(to))
  for i in 0..<len(to):
    to_CArray[i] = to[i].h

  fcQStringListModel_protectedbase_changePersistentIndexList(self.h, struct_miqt_array(len: csize_t(len(fromVal)), data: if len(fromVal) == 0: nil else: addr(fromVal_CArray[0])), struct_miqt_array(len: csize_t(len(to)), data: if len(to) == 0: nil else: addr(to_CArray[0])))

proc persistentIndexList*(self: gen_qstringlistmodel_types.QStringListModel, ): seq[gen_qabstractitemmodel_types.QModelIndex] =
  var v_ma = fcQStringListModel_protectedbase_persistentIndexList(self.h)
  var vx_ret = newSeq[gen_qabstractitemmodel_types.QModelIndex](int(v_ma.len))
  let v_outCast = cast[ptr UncheckedArray[pointer]](v_ma.data)
  for i in 0 ..< v_ma.len:
    vx_ret[i] = gen_qabstractitemmodel_types.QModelIndex(h: v_outCast[i], owned: true)
  c_free(v_ma.data)
  vx_ret

proc sender*(self: gen_qstringlistmodel_types.QStringListModel, ): gen_qobject_types.QObject =
  gen_qobject_types.QObject(h: fcQStringListModel_protectedbase_sender(self.h), owned: false)

proc senderSignalIndex*(self: gen_qstringlistmodel_types.QStringListModel, ): cint =
  fcQStringListModel_protectedbase_senderSignalIndex(self.h)

proc receivers*(self: gen_qstringlistmodel_types.QStringListModel, signal: cstring): cint =
  fcQStringListModel_protectedbase_receivers(self.h, signal)

proc isSignalConnected*(self: gen_qstringlistmodel_types.QStringListModel, signal: gen_qmetaobject_types.QMetaMethod): bool =
  fcQStringListModel_protectedbase_isSignalConnected(self.h, signal.h)

proc create*(T: type gen_qstringlistmodel_types.QStringListModel,
    vtbl: ref QStringListModelVTable = nil): gen_qstringlistmodel_types.QStringListModel =
  let vtbl = if vtbl == nil: new QStringListModelVTable else: vtbl
  GC_ref(vtbl)
  vtbl[].vtbl.destructor = proc(vtbl: ptr cQStringListModelVTable, _: ptr cQStringListModel) {.cdecl.} =
    let vtbl = cast[ref QStringListModelVTable](vtbl)
    GC_unref(vtbl)
  if not isNil(vtbl[].metaObject):
    vtbl[].vtbl.metaObject = miqt_exec_callback_cQStringListModel_metaObject
  if not isNil(vtbl[].metacast):
    vtbl[].vtbl.metacast = miqt_exec_callback_cQStringListModel_metacast
  if not isNil(vtbl[].metacall):
    vtbl[].vtbl.metacall = miqt_exec_callback_cQStringListModel_metacall
  if not isNil(vtbl[].rowCount):
    vtbl[].vtbl.rowCount = miqt_exec_callback_cQStringListModel_rowCount
  if not isNil(vtbl[].sibling):
    vtbl[].vtbl.sibling = miqt_exec_callback_cQStringListModel_sibling
  if not isNil(vtbl[].data):
    vtbl[].vtbl.data = miqt_exec_callback_cQStringListModel_data
  if not isNil(vtbl[].setData):
    vtbl[].vtbl.setData = miqt_exec_callback_cQStringListModel_setData
  if not isNil(vtbl[].flags):
    vtbl[].vtbl.flags = miqt_exec_callback_cQStringListModel_flags
  if not isNil(vtbl[].insertRows):
    vtbl[].vtbl.insertRows = miqt_exec_callback_cQStringListModel_insertRows
  if not isNil(vtbl[].removeRows):
    vtbl[].vtbl.removeRows = miqt_exec_callback_cQStringListModel_removeRows
  if not isNil(vtbl[].moveRows):
    vtbl[].vtbl.moveRows = miqt_exec_callback_cQStringListModel_moveRows
  if not isNil(vtbl[].itemData):
    vtbl[].vtbl.itemData = miqt_exec_callback_cQStringListModel_itemData
  if not isNil(vtbl[].setItemData):
    vtbl[].vtbl.setItemData = miqt_exec_callback_cQStringListModel_setItemData
  if not isNil(vtbl[].sort):
    vtbl[].vtbl.sort = miqt_exec_callback_cQStringListModel_sort
  if not isNil(vtbl[].supportedDropActions):
    vtbl[].vtbl.supportedDropActions = miqt_exec_callback_cQStringListModel_supportedDropActions
  if not isNil(vtbl[].index):
    vtbl[].vtbl.index = miqt_exec_callback_cQStringListModel_index
  if not isNil(vtbl[].dropMimeData):
    vtbl[].vtbl.dropMimeData = miqt_exec_callback_cQStringListModel_dropMimeData
  if not isNil(vtbl[].headerData):
    vtbl[].vtbl.headerData = miqt_exec_callback_cQStringListModel_headerData
  if not isNil(vtbl[].setHeaderData):
    vtbl[].vtbl.setHeaderData = miqt_exec_callback_cQStringListModel_setHeaderData
  if not isNil(vtbl[].mimeTypes):
    vtbl[].vtbl.mimeTypes = miqt_exec_callback_cQStringListModel_mimeTypes
  if not isNil(vtbl[].mimeData):
    vtbl[].vtbl.mimeData = miqt_exec_callback_cQStringListModel_mimeData
  if not isNil(vtbl[].canDropMimeData):
    vtbl[].vtbl.canDropMimeData = miqt_exec_callback_cQStringListModel_canDropMimeData
  if not isNil(vtbl[].supportedDragActions):
    vtbl[].vtbl.supportedDragActions = miqt_exec_callback_cQStringListModel_supportedDragActions
  if not isNil(vtbl[].insertColumns):
    vtbl[].vtbl.insertColumns = miqt_exec_callback_cQStringListModel_insertColumns
  if not isNil(vtbl[].removeColumns):
    vtbl[].vtbl.removeColumns = miqt_exec_callback_cQStringListModel_removeColumns
  if not isNil(vtbl[].moveColumns):
    vtbl[].vtbl.moveColumns = miqt_exec_callback_cQStringListModel_moveColumns
  if not isNil(vtbl[].fetchMore):
    vtbl[].vtbl.fetchMore = miqt_exec_callback_cQStringListModel_fetchMore
  if not isNil(vtbl[].canFetchMore):
    vtbl[].vtbl.canFetchMore = miqt_exec_callback_cQStringListModel_canFetchMore
  if not isNil(vtbl[].buddy):
    vtbl[].vtbl.buddy = miqt_exec_callback_cQStringListModel_buddy
  if not isNil(vtbl[].match):
    vtbl[].vtbl.match = miqt_exec_callback_cQStringListModel_match
  if not isNil(vtbl[].span):
    vtbl[].vtbl.span = miqt_exec_callback_cQStringListModel_span
  if not isNil(vtbl[].roleNames):
    vtbl[].vtbl.roleNames = miqt_exec_callback_cQStringListModel_roleNames
  if not isNil(vtbl[].submit):
    vtbl[].vtbl.submit = miqt_exec_callback_cQStringListModel_submit
  if not isNil(vtbl[].revert):
    vtbl[].vtbl.revert = miqt_exec_callback_cQStringListModel_revert
  if not isNil(vtbl[].event):
    vtbl[].vtbl.event = miqt_exec_callback_cQStringListModel_event
  if not isNil(vtbl[].eventFilter):
    vtbl[].vtbl.eventFilter = miqt_exec_callback_cQStringListModel_eventFilter
  if not isNil(vtbl[].timerEvent):
    vtbl[].vtbl.timerEvent = miqt_exec_callback_cQStringListModel_timerEvent
  if not isNil(vtbl[].childEvent):
    vtbl[].vtbl.childEvent = miqt_exec_callback_cQStringListModel_childEvent
  if not isNil(vtbl[].customEvent):
    vtbl[].vtbl.customEvent = miqt_exec_callback_cQStringListModel_customEvent
  if not isNil(vtbl[].connectNotify):
    vtbl[].vtbl.connectNotify = miqt_exec_callback_cQStringListModel_connectNotify
  if not isNil(vtbl[].disconnectNotify):
    vtbl[].vtbl.disconnectNotify = miqt_exec_callback_cQStringListModel_disconnectNotify
  gen_qstringlistmodel_types.QStringListModel(h: fcQStringListModel_new(addr(vtbl[].vtbl), ), owned: true)

proc create*(T: type gen_qstringlistmodel_types.QStringListModel,
    strings: seq[string],
    vtbl: ref QStringListModelVTable = nil): gen_qstringlistmodel_types.QStringListModel =
  var strings_CArray = newSeq[struct_miqt_string](len(strings))
  for i in 0..<len(strings):
    strings_CArray[i] = struct_miqt_string(data: strings[i], len: csize_t(len(strings[i])))

  let vtbl = if vtbl == nil: new QStringListModelVTable else: vtbl
  GC_ref(vtbl)
  vtbl[].vtbl.destructor = proc(vtbl: ptr cQStringListModelVTable, _: ptr cQStringListModel) {.cdecl.} =
    let vtbl = cast[ref QStringListModelVTable](vtbl)
    GC_unref(vtbl)
  if not isNil(vtbl[].metaObject):
    vtbl[].vtbl.metaObject = miqt_exec_callback_cQStringListModel_metaObject
  if not isNil(vtbl[].metacast):
    vtbl[].vtbl.metacast = miqt_exec_callback_cQStringListModel_metacast
  if not isNil(vtbl[].metacall):
    vtbl[].vtbl.metacall = miqt_exec_callback_cQStringListModel_metacall
  if not isNil(vtbl[].rowCount):
    vtbl[].vtbl.rowCount = miqt_exec_callback_cQStringListModel_rowCount
  if not isNil(vtbl[].sibling):
    vtbl[].vtbl.sibling = miqt_exec_callback_cQStringListModel_sibling
  if not isNil(vtbl[].data):
    vtbl[].vtbl.data = miqt_exec_callback_cQStringListModel_data
  if not isNil(vtbl[].setData):
    vtbl[].vtbl.setData = miqt_exec_callback_cQStringListModel_setData
  if not isNil(vtbl[].flags):
    vtbl[].vtbl.flags = miqt_exec_callback_cQStringListModel_flags
  if not isNil(vtbl[].insertRows):
    vtbl[].vtbl.insertRows = miqt_exec_callback_cQStringListModel_insertRows
  if not isNil(vtbl[].removeRows):
    vtbl[].vtbl.removeRows = miqt_exec_callback_cQStringListModel_removeRows
  if not isNil(vtbl[].moveRows):
    vtbl[].vtbl.moveRows = miqt_exec_callback_cQStringListModel_moveRows
  if not isNil(vtbl[].itemData):
    vtbl[].vtbl.itemData = miqt_exec_callback_cQStringListModel_itemData
  if not isNil(vtbl[].setItemData):
    vtbl[].vtbl.setItemData = miqt_exec_callback_cQStringListModel_setItemData
  if not isNil(vtbl[].sort):
    vtbl[].vtbl.sort = miqt_exec_callback_cQStringListModel_sort
  if not isNil(vtbl[].supportedDropActions):
    vtbl[].vtbl.supportedDropActions = miqt_exec_callback_cQStringListModel_supportedDropActions
  if not isNil(vtbl[].index):
    vtbl[].vtbl.index = miqt_exec_callback_cQStringListModel_index
  if not isNil(vtbl[].dropMimeData):
    vtbl[].vtbl.dropMimeData = miqt_exec_callback_cQStringListModel_dropMimeData
  if not isNil(vtbl[].headerData):
    vtbl[].vtbl.headerData = miqt_exec_callback_cQStringListModel_headerData
  if not isNil(vtbl[].setHeaderData):
    vtbl[].vtbl.setHeaderData = miqt_exec_callback_cQStringListModel_setHeaderData
  if not isNil(vtbl[].mimeTypes):
    vtbl[].vtbl.mimeTypes = miqt_exec_callback_cQStringListModel_mimeTypes
  if not isNil(vtbl[].mimeData):
    vtbl[].vtbl.mimeData = miqt_exec_callback_cQStringListModel_mimeData
  if not isNil(vtbl[].canDropMimeData):
    vtbl[].vtbl.canDropMimeData = miqt_exec_callback_cQStringListModel_canDropMimeData
  if not isNil(vtbl[].supportedDragActions):
    vtbl[].vtbl.supportedDragActions = miqt_exec_callback_cQStringListModel_supportedDragActions
  if not isNil(vtbl[].insertColumns):
    vtbl[].vtbl.insertColumns = miqt_exec_callback_cQStringListModel_insertColumns
  if not isNil(vtbl[].removeColumns):
    vtbl[].vtbl.removeColumns = miqt_exec_callback_cQStringListModel_removeColumns
  if not isNil(vtbl[].moveColumns):
    vtbl[].vtbl.moveColumns = miqt_exec_callback_cQStringListModel_moveColumns
  if not isNil(vtbl[].fetchMore):
    vtbl[].vtbl.fetchMore = miqt_exec_callback_cQStringListModel_fetchMore
  if not isNil(vtbl[].canFetchMore):
    vtbl[].vtbl.canFetchMore = miqt_exec_callback_cQStringListModel_canFetchMore
  if not isNil(vtbl[].buddy):
    vtbl[].vtbl.buddy = miqt_exec_callback_cQStringListModel_buddy
  if not isNil(vtbl[].match):
    vtbl[].vtbl.match = miqt_exec_callback_cQStringListModel_match
  if not isNil(vtbl[].span):
    vtbl[].vtbl.span = miqt_exec_callback_cQStringListModel_span
  if not isNil(vtbl[].roleNames):
    vtbl[].vtbl.roleNames = miqt_exec_callback_cQStringListModel_roleNames
  if not isNil(vtbl[].submit):
    vtbl[].vtbl.submit = miqt_exec_callback_cQStringListModel_submit
  if not isNil(vtbl[].revert):
    vtbl[].vtbl.revert = miqt_exec_callback_cQStringListModel_revert
  if not isNil(vtbl[].event):
    vtbl[].vtbl.event = miqt_exec_callback_cQStringListModel_event
  if not isNil(vtbl[].eventFilter):
    vtbl[].vtbl.eventFilter = miqt_exec_callback_cQStringListModel_eventFilter
  if not isNil(vtbl[].timerEvent):
    vtbl[].vtbl.timerEvent = miqt_exec_callback_cQStringListModel_timerEvent
  if not isNil(vtbl[].childEvent):
    vtbl[].vtbl.childEvent = miqt_exec_callback_cQStringListModel_childEvent
  if not isNil(vtbl[].customEvent):
    vtbl[].vtbl.customEvent = miqt_exec_callback_cQStringListModel_customEvent
  if not isNil(vtbl[].connectNotify):
    vtbl[].vtbl.connectNotify = miqt_exec_callback_cQStringListModel_connectNotify
  if not isNil(vtbl[].disconnectNotify):
    vtbl[].vtbl.disconnectNotify = miqt_exec_callback_cQStringListModel_disconnectNotify
  gen_qstringlistmodel_types.QStringListModel(h: fcQStringListModel_new2(addr(vtbl[].vtbl), struct_miqt_array(len: csize_t(len(strings)), data: if len(strings) == 0: nil else: addr(strings_CArray[0]))), owned: true)

proc create*(T: type gen_qstringlistmodel_types.QStringListModel,
    parent: gen_qobject_types.QObject,
    vtbl: ref QStringListModelVTable = nil): gen_qstringlistmodel_types.QStringListModel =
  let vtbl = if vtbl == nil: new QStringListModelVTable else: vtbl
  GC_ref(vtbl)
  vtbl[].vtbl.destructor = proc(vtbl: ptr cQStringListModelVTable, _: ptr cQStringListModel) {.cdecl.} =
    let vtbl = cast[ref QStringListModelVTable](vtbl)
    GC_unref(vtbl)
  if not isNil(vtbl[].metaObject):
    vtbl[].vtbl.metaObject = miqt_exec_callback_cQStringListModel_metaObject
  if not isNil(vtbl[].metacast):
    vtbl[].vtbl.metacast = miqt_exec_callback_cQStringListModel_metacast
  if not isNil(vtbl[].metacall):
    vtbl[].vtbl.metacall = miqt_exec_callback_cQStringListModel_metacall
  if not isNil(vtbl[].rowCount):
    vtbl[].vtbl.rowCount = miqt_exec_callback_cQStringListModel_rowCount
  if not isNil(vtbl[].sibling):
    vtbl[].vtbl.sibling = miqt_exec_callback_cQStringListModel_sibling
  if not isNil(vtbl[].data):
    vtbl[].vtbl.data = miqt_exec_callback_cQStringListModel_data
  if not isNil(vtbl[].setData):
    vtbl[].vtbl.setData = miqt_exec_callback_cQStringListModel_setData
  if not isNil(vtbl[].flags):
    vtbl[].vtbl.flags = miqt_exec_callback_cQStringListModel_flags
  if not isNil(vtbl[].insertRows):
    vtbl[].vtbl.insertRows = miqt_exec_callback_cQStringListModel_insertRows
  if not isNil(vtbl[].removeRows):
    vtbl[].vtbl.removeRows = miqt_exec_callback_cQStringListModel_removeRows
  if not isNil(vtbl[].moveRows):
    vtbl[].vtbl.moveRows = miqt_exec_callback_cQStringListModel_moveRows
  if not isNil(vtbl[].itemData):
    vtbl[].vtbl.itemData = miqt_exec_callback_cQStringListModel_itemData
  if not isNil(vtbl[].setItemData):
    vtbl[].vtbl.setItemData = miqt_exec_callback_cQStringListModel_setItemData
  if not isNil(vtbl[].sort):
    vtbl[].vtbl.sort = miqt_exec_callback_cQStringListModel_sort
  if not isNil(vtbl[].supportedDropActions):
    vtbl[].vtbl.supportedDropActions = miqt_exec_callback_cQStringListModel_supportedDropActions
  if not isNil(vtbl[].index):
    vtbl[].vtbl.index = miqt_exec_callback_cQStringListModel_index
  if not isNil(vtbl[].dropMimeData):
    vtbl[].vtbl.dropMimeData = miqt_exec_callback_cQStringListModel_dropMimeData
  if not isNil(vtbl[].headerData):
    vtbl[].vtbl.headerData = miqt_exec_callback_cQStringListModel_headerData
  if not isNil(vtbl[].setHeaderData):
    vtbl[].vtbl.setHeaderData = miqt_exec_callback_cQStringListModel_setHeaderData
  if not isNil(vtbl[].mimeTypes):
    vtbl[].vtbl.mimeTypes = miqt_exec_callback_cQStringListModel_mimeTypes
  if not isNil(vtbl[].mimeData):
    vtbl[].vtbl.mimeData = miqt_exec_callback_cQStringListModel_mimeData
  if not isNil(vtbl[].canDropMimeData):
    vtbl[].vtbl.canDropMimeData = miqt_exec_callback_cQStringListModel_canDropMimeData
  if not isNil(vtbl[].supportedDragActions):
    vtbl[].vtbl.supportedDragActions = miqt_exec_callback_cQStringListModel_supportedDragActions
  if not isNil(vtbl[].insertColumns):
    vtbl[].vtbl.insertColumns = miqt_exec_callback_cQStringListModel_insertColumns
  if not isNil(vtbl[].removeColumns):
    vtbl[].vtbl.removeColumns = miqt_exec_callback_cQStringListModel_removeColumns
  if not isNil(vtbl[].moveColumns):
    vtbl[].vtbl.moveColumns = miqt_exec_callback_cQStringListModel_moveColumns
  if not isNil(vtbl[].fetchMore):
    vtbl[].vtbl.fetchMore = miqt_exec_callback_cQStringListModel_fetchMore
  if not isNil(vtbl[].canFetchMore):
    vtbl[].vtbl.canFetchMore = miqt_exec_callback_cQStringListModel_canFetchMore
  if not isNil(vtbl[].buddy):
    vtbl[].vtbl.buddy = miqt_exec_callback_cQStringListModel_buddy
  if not isNil(vtbl[].match):
    vtbl[].vtbl.match = miqt_exec_callback_cQStringListModel_match
  if not isNil(vtbl[].span):
    vtbl[].vtbl.span = miqt_exec_callback_cQStringListModel_span
  if not isNil(vtbl[].roleNames):
    vtbl[].vtbl.roleNames = miqt_exec_callback_cQStringListModel_roleNames
  if not isNil(vtbl[].submit):
    vtbl[].vtbl.submit = miqt_exec_callback_cQStringListModel_submit
  if not isNil(vtbl[].revert):
    vtbl[].vtbl.revert = miqt_exec_callback_cQStringListModel_revert
  if not isNil(vtbl[].event):
    vtbl[].vtbl.event = miqt_exec_callback_cQStringListModel_event
  if not isNil(vtbl[].eventFilter):
    vtbl[].vtbl.eventFilter = miqt_exec_callback_cQStringListModel_eventFilter
  if not isNil(vtbl[].timerEvent):
    vtbl[].vtbl.timerEvent = miqt_exec_callback_cQStringListModel_timerEvent
  if not isNil(vtbl[].childEvent):
    vtbl[].vtbl.childEvent = miqt_exec_callback_cQStringListModel_childEvent
  if not isNil(vtbl[].customEvent):
    vtbl[].vtbl.customEvent = miqt_exec_callback_cQStringListModel_customEvent
  if not isNil(vtbl[].connectNotify):
    vtbl[].vtbl.connectNotify = miqt_exec_callback_cQStringListModel_connectNotify
  if not isNil(vtbl[].disconnectNotify):
    vtbl[].vtbl.disconnectNotify = miqt_exec_callback_cQStringListModel_disconnectNotify
  gen_qstringlistmodel_types.QStringListModel(h: fcQStringListModel_new3(addr(vtbl[].vtbl), parent.h), owned: true)

proc create*(T: type gen_qstringlistmodel_types.QStringListModel,
    strings: seq[string], parent: gen_qobject_types.QObject,
    vtbl: ref QStringListModelVTable = nil): gen_qstringlistmodel_types.QStringListModel =
  var strings_CArray = newSeq[struct_miqt_string](len(strings))
  for i in 0..<len(strings):
    strings_CArray[i] = struct_miqt_string(data: strings[i], len: csize_t(len(strings[i])))

  let vtbl = if vtbl == nil: new QStringListModelVTable else: vtbl
  GC_ref(vtbl)
  vtbl[].vtbl.destructor = proc(vtbl: ptr cQStringListModelVTable, _: ptr cQStringListModel) {.cdecl.} =
    let vtbl = cast[ref QStringListModelVTable](vtbl)
    GC_unref(vtbl)
  if not isNil(vtbl[].metaObject):
    vtbl[].vtbl.metaObject = miqt_exec_callback_cQStringListModel_metaObject
  if not isNil(vtbl[].metacast):
    vtbl[].vtbl.metacast = miqt_exec_callback_cQStringListModel_metacast
  if not isNil(vtbl[].metacall):
    vtbl[].vtbl.metacall = miqt_exec_callback_cQStringListModel_metacall
  if not isNil(vtbl[].rowCount):
    vtbl[].vtbl.rowCount = miqt_exec_callback_cQStringListModel_rowCount
  if not isNil(vtbl[].sibling):
    vtbl[].vtbl.sibling = miqt_exec_callback_cQStringListModel_sibling
  if not isNil(vtbl[].data):
    vtbl[].vtbl.data = miqt_exec_callback_cQStringListModel_data
  if not isNil(vtbl[].setData):
    vtbl[].vtbl.setData = miqt_exec_callback_cQStringListModel_setData
  if not isNil(vtbl[].flags):
    vtbl[].vtbl.flags = miqt_exec_callback_cQStringListModel_flags
  if not isNil(vtbl[].insertRows):
    vtbl[].vtbl.insertRows = miqt_exec_callback_cQStringListModel_insertRows
  if not isNil(vtbl[].removeRows):
    vtbl[].vtbl.removeRows = miqt_exec_callback_cQStringListModel_removeRows
  if not isNil(vtbl[].moveRows):
    vtbl[].vtbl.moveRows = miqt_exec_callback_cQStringListModel_moveRows
  if not isNil(vtbl[].itemData):
    vtbl[].vtbl.itemData = miqt_exec_callback_cQStringListModel_itemData
  if not isNil(vtbl[].setItemData):
    vtbl[].vtbl.setItemData = miqt_exec_callback_cQStringListModel_setItemData
  if not isNil(vtbl[].sort):
    vtbl[].vtbl.sort = miqt_exec_callback_cQStringListModel_sort
  if not isNil(vtbl[].supportedDropActions):
    vtbl[].vtbl.supportedDropActions = miqt_exec_callback_cQStringListModel_supportedDropActions
  if not isNil(vtbl[].index):
    vtbl[].vtbl.index = miqt_exec_callback_cQStringListModel_index
  if not isNil(vtbl[].dropMimeData):
    vtbl[].vtbl.dropMimeData = miqt_exec_callback_cQStringListModel_dropMimeData
  if not isNil(vtbl[].headerData):
    vtbl[].vtbl.headerData = miqt_exec_callback_cQStringListModel_headerData
  if not isNil(vtbl[].setHeaderData):
    vtbl[].vtbl.setHeaderData = miqt_exec_callback_cQStringListModel_setHeaderData
  if not isNil(vtbl[].mimeTypes):
    vtbl[].vtbl.mimeTypes = miqt_exec_callback_cQStringListModel_mimeTypes
  if not isNil(vtbl[].mimeData):
    vtbl[].vtbl.mimeData = miqt_exec_callback_cQStringListModel_mimeData
  if not isNil(vtbl[].canDropMimeData):
    vtbl[].vtbl.canDropMimeData = miqt_exec_callback_cQStringListModel_canDropMimeData
  if not isNil(vtbl[].supportedDragActions):
    vtbl[].vtbl.supportedDragActions = miqt_exec_callback_cQStringListModel_supportedDragActions
  if not isNil(vtbl[].insertColumns):
    vtbl[].vtbl.insertColumns = miqt_exec_callback_cQStringListModel_insertColumns
  if not isNil(vtbl[].removeColumns):
    vtbl[].vtbl.removeColumns = miqt_exec_callback_cQStringListModel_removeColumns
  if not isNil(vtbl[].moveColumns):
    vtbl[].vtbl.moveColumns = miqt_exec_callback_cQStringListModel_moveColumns
  if not isNil(vtbl[].fetchMore):
    vtbl[].vtbl.fetchMore = miqt_exec_callback_cQStringListModel_fetchMore
  if not isNil(vtbl[].canFetchMore):
    vtbl[].vtbl.canFetchMore = miqt_exec_callback_cQStringListModel_canFetchMore
  if not isNil(vtbl[].buddy):
    vtbl[].vtbl.buddy = miqt_exec_callback_cQStringListModel_buddy
  if not isNil(vtbl[].match):
    vtbl[].vtbl.match = miqt_exec_callback_cQStringListModel_match
  if not isNil(vtbl[].span):
    vtbl[].vtbl.span = miqt_exec_callback_cQStringListModel_span
  if not isNil(vtbl[].roleNames):
    vtbl[].vtbl.roleNames = miqt_exec_callback_cQStringListModel_roleNames
  if not isNil(vtbl[].submit):
    vtbl[].vtbl.submit = miqt_exec_callback_cQStringListModel_submit
  if not isNil(vtbl[].revert):
    vtbl[].vtbl.revert = miqt_exec_callback_cQStringListModel_revert
  if not isNil(vtbl[].event):
    vtbl[].vtbl.event = miqt_exec_callback_cQStringListModel_event
  if not isNil(vtbl[].eventFilter):
    vtbl[].vtbl.eventFilter = miqt_exec_callback_cQStringListModel_eventFilter
  if not isNil(vtbl[].timerEvent):
    vtbl[].vtbl.timerEvent = miqt_exec_callback_cQStringListModel_timerEvent
  if not isNil(vtbl[].childEvent):
    vtbl[].vtbl.childEvent = miqt_exec_callback_cQStringListModel_childEvent
  if not isNil(vtbl[].customEvent):
    vtbl[].vtbl.customEvent = miqt_exec_callback_cQStringListModel_customEvent
  if not isNil(vtbl[].connectNotify):
    vtbl[].vtbl.connectNotify = miqt_exec_callback_cQStringListModel_connectNotify
  if not isNil(vtbl[].disconnectNotify):
    vtbl[].vtbl.disconnectNotify = miqt_exec_callback_cQStringListModel_disconnectNotify
  gen_qstringlistmodel_types.QStringListModel(h: fcQStringListModel_new4(addr(vtbl[].vtbl), struct_miqt_array(len: csize_t(len(strings)), data: if len(strings) == 0: nil else: addr(strings_CArray[0])), parent.h), owned: true)

proc create*(T: type gen_qstringlistmodel_types.QStringListModel,
    vtbl: VirtualQStringListModel) =

  vtbl[].vtbl.destructor = proc(vtbl: ptr cQStringListModelVTable, _: ptr cQStringListModel) {.cdecl.} =
    let vtbl = cast[ptr typeof(VirtualQStringListModel()[])](cast[uint](vtbl) - uint(offsetOf(VirtualQStringListModel, vtbl)))
    vtbl[].h = nil
    vtbl[].owned = false
  vtbl[].vtbl.metaObject = miqt_exec_method_cQStringListModel_metaObject
  vtbl[].vtbl.metacast = miqt_exec_method_cQStringListModel_metacast
  vtbl[].vtbl.metacall = miqt_exec_method_cQStringListModel_metacall
  vtbl[].vtbl.rowCount = miqt_exec_method_cQStringListModel_rowCount
  vtbl[].vtbl.sibling = miqt_exec_method_cQStringListModel_sibling
  vtbl[].vtbl.data = miqt_exec_method_cQStringListModel_data
  vtbl[].vtbl.setData = miqt_exec_method_cQStringListModel_setData
  vtbl[].vtbl.flags = miqt_exec_method_cQStringListModel_flags
  vtbl[].vtbl.insertRows = miqt_exec_method_cQStringListModel_insertRows
  vtbl[].vtbl.removeRows = miqt_exec_method_cQStringListModel_removeRows
  vtbl[].vtbl.moveRows = miqt_exec_method_cQStringListModel_moveRows
  vtbl[].vtbl.itemData = miqt_exec_method_cQStringListModel_itemData
  vtbl[].vtbl.setItemData = miqt_exec_method_cQStringListModel_setItemData
  vtbl[].vtbl.sort = miqt_exec_method_cQStringListModel_sort
  vtbl[].vtbl.supportedDropActions = miqt_exec_method_cQStringListModel_supportedDropActions
  vtbl[].vtbl.index = miqt_exec_method_cQStringListModel_index
  vtbl[].vtbl.dropMimeData = miqt_exec_method_cQStringListModel_dropMimeData
  vtbl[].vtbl.headerData = miqt_exec_method_cQStringListModel_headerData
  vtbl[].vtbl.setHeaderData = miqt_exec_method_cQStringListModel_setHeaderData
  vtbl[].vtbl.mimeTypes = miqt_exec_method_cQStringListModel_mimeTypes
  vtbl[].vtbl.mimeData = miqt_exec_method_cQStringListModel_mimeData
  vtbl[].vtbl.canDropMimeData = miqt_exec_method_cQStringListModel_canDropMimeData
  vtbl[].vtbl.supportedDragActions = miqt_exec_method_cQStringListModel_supportedDragActions
  vtbl[].vtbl.insertColumns = miqt_exec_method_cQStringListModel_insertColumns
  vtbl[].vtbl.removeColumns = miqt_exec_method_cQStringListModel_removeColumns
  vtbl[].vtbl.moveColumns = miqt_exec_method_cQStringListModel_moveColumns
  vtbl[].vtbl.fetchMore = miqt_exec_method_cQStringListModel_fetchMore
  vtbl[].vtbl.canFetchMore = miqt_exec_method_cQStringListModel_canFetchMore
  vtbl[].vtbl.buddy = miqt_exec_method_cQStringListModel_buddy
  vtbl[].vtbl.match = miqt_exec_method_cQStringListModel_match
  vtbl[].vtbl.span = miqt_exec_method_cQStringListModel_span
  vtbl[].vtbl.roleNames = miqt_exec_method_cQStringListModel_roleNames
  vtbl[].vtbl.submit = miqt_exec_method_cQStringListModel_submit
  vtbl[].vtbl.revert = miqt_exec_method_cQStringListModel_revert
  vtbl[].vtbl.event = miqt_exec_method_cQStringListModel_event
  vtbl[].vtbl.eventFilter = miqt_exec_method_cQStringListModel_eventFilter
  vtbl[].vtbl.timerEvent = miqt_exec_method_cQStringListModel_timerEvent
  vtbl[].vtbl.childEvent = miqt_exec_method_cQStringListModel_childEvent
  vtbl[].vtbl.customEvent = miqt_exec_method_cQStringListModel_customEvent
  vtbl[].vtbl.connectNotify = miqt_exec_method_cQStringListModel_connectNotify
  vtbl[].vtbl.disconnectNotify = miqt_exec_method_cQStringListModel_disconnectNotify
  if vtbl[].h != nil: delete(move(vtbl[]))
  vtbl[].h = fcQStringListModel_new(addr(vtbl[].vtbl), )
  vtbl[].owned = true

proc create*(T: type gen_qstringlistmodel_types.QStringListModel,
    strings: seq[string],
    vtbl: VirtualQStringListModel) =
  var strings_CArray = newSeq[struct_miqt_string](len(strings))
  for i in 0..<len(strings):
    strings_CArray[i] = struct_miqt_string(data: strings[i], len: csize_t(len(strings[i])))


  vtbl[].vtbl.destructor = proc(vtbl: ptr cQStringListModelVTable, _: ptr cQStringListModel) {.cdecl.} =
    let vtbl = cast[ptr typeof(VirtualQStringListModel()[])](cast[uint](vtbl) - uint(offsetOf(VirtualQStringListModel, vtbl)))
    vtbl[].h = nil
    vtbl[].owned = false
  vtbl[].vtbl.metaObject = miqt_exec_method_cQStringListModel_metaObject
  vtbl[].vtbl.metacast = miqt_exec_method_cQStringListModel_metacast
  vtbl[].vtbl.metacall = miqt_exec_method_cQStringListModel_metacall
  vtbl[].vtbl.rowCount = miqt_exec_method_cQStringListModel_rowCount
  vtbl[].vtbl.sibling = miqt_exec_method_cQStringListModel_sibling
  vtbl[].vtbl.data = miqt_exec_method_cQStringListModel_data
  vtbl[].vtbl.setData = miqt_exec_method_cQStringListModel_setData
  vtbl[].vtbl.flags = miqt_exec_method_cQStringListModel_flags
  vtbl[].vtbl.insertRows = miqt_exec_method_cQStringListModel_insertRows
  vtbl[].vtbl.removeRows = miqt_exec_method_cQStringListModel_removeRows
  vtbl[].vtbl.moveRows = miqt_exec_method_cQStringListModel_moveRows
  vtbl[].vtbl.itemData = miqt_exec_method_cQStringListModel_itemData
  vtbl[].vtbl.setItemData = miqt_exec_method_cQStringListModel_setItemData
  vtbl[].vtbl.sort = miqt_exec_method_cQStringListModel_sort
  vtbl[].vtbl.supportedDropActions = miqt_exec_method_cQStringListModel_supportedDropActions
  vtbl[].vtbl.index = miqt_exec_method_cQStringListModel_index
  vtbl[].vtbl.dropMimeData = miqt_exec_method_cQStringListModel_dropMimeData
  vtbl[].vtbl.headerData = miqt_exec_method_cQStringListModel_headerData
  vtbl[].vtbl.setHeaderData = miqt_exec_method_cQStringListModel_setHeaderData
  vtbl[].vtbl.mimeTypes = miqt_exec_method_cQStringListModel_mimeTypes
  vtbl[].vtbl.mimeData = miqt_exec_method_cQStringListModel_mimeData
  vtbl[].vtbl.canDropMimeData = miqt_exec_method_cQStringListModel_canDropMimeData
  vtbl[].vtbl.supportedDragActions = miqt_exec_method_cQStringListModel_supportedDragActions
  vtbl[].vtbl.insertColumns = miqt_exec_method_cQStringListModel_insertColumns
  vtbl[].vtbl.removeColumns = miqt_exec_method_cQStringListModel_removeColumns
  vtbl[].vtbl.moveColumns = miqt_exec_method_cQStringListModel_moveColumns
  vtbl[].vtbl.fetchMore = miqt_exec_method_cQStringListModel_fetchMore
  vtbl[].vtbl.canFetchMore = miqt_exec_method_cQStringListModel_canFetchMore
  vtbl[].vtbl.buddy = miqt_exec_method_cQStringListModel_buddy
  vtbl[].vtbl.match = miqt_exec_method_cQStringListModel_match
  vtbl[].vtbl.span = miqt_exec_method_cQStringListModel_span
  vtbl[].vtbl.roleNames = miqt_exec_method_cQStringListModel_roleNames
  vtbl[].vtbl.submit = miqt_exec_method_cQStringListModel_submit
  vtbl[].vtbl.revert = miqt_exec_method_cQStringListModel_revert
  vtbl[].vtbl.event = miqt_exec_method_cQStringListModel_event
  vtbl[].vtbl.eventFilter = miqt_exec_method_cQStringListModel_eventFilter
  vtbl[].vtbl.timerEvent = miqt_exec_method_cQStringListModel_timerEvent
  vtbl[].vtbl.childEvent = miqt_exec_method_cQStringListModel_childEvent
  vtbl[].vtbl.customEvent = miqt_exec_method_cQStringListModel_customEvent
  vtbl[].vtbl.connectNotify = miqt_exec_method_cQStringListModel_connectNotify
  vtbl[].vtbl.disconnectNotify = miqt_exec_method_cQStringListModel_disconnectNotify
  if vtbl[].h != nil: delete(move(vtbl[]))
  vtbl[].h = fcQStringListModel_new2(addr(vtbl[].vtbl), struct_miqt_array(len: csize_t(len(strings)), data: if len(strings) == 0: nil else: addr(strings_CArray[0])))
  vtbl[].owned = true

proc create*(T: type gen_qstringlistmodel_types.QStringListModel,
    parent: gen_qobject_types.QObject,
    vtbl: VirtualQStringListModel) =

  vtbl[].vtbl.destructor = proc(vtbl: ptr cQStringListModelVTable, _: ptr cQStringListModel) {.cdecl.} =
    let vtbl = cast[ptr typeof(VirtualQStringListModel()[])](cast[uint](vtbl) - uint(offsetOf(VirtualQStringListModel, vtbl)))
    vtbl[].h = nil
    vtbl[].owned = false
  vtbl[].vtbl.metaObject = miqt_exec_method_cQStringListModel_metaObject
  vtbl[].vtbl.metacast = miqt_exec_method_cQStringListModel_metacast
  vtbl[].vtbl.metacall = miqt_exec_method_cQStringListModel_metacall
  vtbl[].vtbl.rowCount = miqt_exec_method_cQStringListModel_rowCount
  vtbl[].vtbl.sibling = miqt_exec_method_cQStringListModel_sibling
  vtbl[].vtbl.data = miqt_exec_method_cQStringListModel_data
  vtbl[].vtbl.setData = miqt_exec_method_cQStringListModel_setData
  vtbl[].vtbl.flags = miqt_exec_method_cQStringListModel_flags
  vtbl[].vtbl.insertRows = miqt_exec_method_cQStringListModel_insertRows
  vtbl[].vtbl.removeRows = miqt_exec_method_cQStringListModel_removeRows
  vtbl[].vtbl.moveRows = miqt_exec_method_cQStringListModel_moveRows
  vtbl[].vtbl.itemData = miqt_exec_method_cQStringListModel_itemData
  vtbl[].vtbl.setItemData = miqt_exec_method_cQStringListModel_setItemData
  vtbl[].vtbl.sort = miqt_exec_method_cQStringListModel_sort
  vtbl[].vtbl.supportedDropActions = miqt_exec_method_cQStringListModel_supportedDropActions
  vtbl[].vtbl.index = miqt_exec_method_cQStringListModel_index
  vtbl[].vtbl.dropMimeData = miqt_exec_method_cQStringListModel_dropMimeData
  vtbl[].vtbl.headerData = miqt_exec_method_cQStringListModel_headerData
  vtbl[].vtbl.setHeaderData = miqt_exec_method_cQStringListModel_setHeaderData
  vtbl[].vtbl.mimeTypes = miqt_exec_method_cQStringListModel_mimeTypes
  vtbl[].vtbl.mimeData = miqt_exec_method_cQStringListModel_mimeData
  vtbl[].vtbl.canDropMimeData = miqt_exec_method_cQStringListModel_canDropMimeData
  vtbl[].vtbl.supportedDragActions = miqt_exec_method_cQStringListModel_supportedDragActions
  vtbl[].vtbl.insertColumns = miqt_exec_method_cQStringListModel_insertColumns
  vtbl[].vtbl.removeColumns = miqt_exec_method_cQStringListModel_removeColumns
  vtbl[].vtbl.moveColumns = miqt_exec_method_cQStringListModel_moveColumns
  vtbl[].vtbl.fetchMore = miqt_exec_method_cQStringListModel_fetchMore
  vtbl[].vtbl.canFetchMore = miqt_exec_method_cQStringListModel_canFetchMore
  vtbl[].vtbl.buddy = miqt_exec_method_cQStringListModel_buddy
  vtbl[].vtbl.match = miqt_exec_method_cQStringListModel_match
  vtbl[].vtbl.span = miqt_exec_method_cQStringListModel_span
  vtbl[].vtbl.roleNames = miqt_exec_method_cQStringListModel_roleNames
  vtbl[].vtbl.submit = miqt_exec_method_cQStringListModel_submit
  vtbl[].vtbl.revert = miqt_exec_method_cQStringListModel_revert
  vtbl[].vtbl.event = miqt_exec_method_cQStringListModel_event
  vtbl[].vtbl.eventFilter = miqt_exec_method_cQStringListModel_eventFilter
  vtbl[].vtbl.timerEvent = miqt_exec_method_cQStringListModel_timerEvent
  vtbl[].vtbl.childEvent = miqt_exec_method_cQStringListModel_childEvent
  vtbl[].vtbl.customEvent = miqt_exec_method_cQStringListModel_customEvent
  vtbl[].vtbl.connectNotify = miqt_exec_method_cQStringListModel_connectNotify
  vtbl[].vtbl.disconnectNotify = miqt_exec_method_cQStringListModel_disconnectNotify
  if vtbl[].h != nil: delete(move(vtbl[]))
  vtbl[].h = fcQStringListModel_new3(addr(vtbl[].vtbl), parent.h)
  vtbl[].owned = true

proc create*(T: type gen_qstringlistmodel_types.QStringListModel,
    strings: seq[string], parent: gen_qobject_types.QObject,
    vtbl: VirtualQStringListModel) =
  var strings_CArray = newSeq[struct_miqt_string](len(strings))
  for i in 0..<len(strings):
    strings_CArray[i] = struct_miqt_string(data: strings[i], len: csize_t(len(strings[i])))


  vtbl[].vtbl.destructor = proc(vtbl: ptr cQStringListModelVTable, _: ptr cQStringListModel) {.cdecl.} =
    let vtbl = cast[ptr typeof(VirtualQStringListModel()[])](cast[uint](vtbl) - uint(offsetOf(VirtualQStringListModel, vtbl)))
    vtbl[].h = nil
    vtbl[].owned = false
  vtbl[].vtbl.metaObject = miqt_exec_method_cQStringListModel_metaObject
  vtbl[].vtbl.metacast = miqt_exec_method_cQStringListModel_metacast
  vtbl[].vtbl.metacall = miqt_exec_method_cQStringListModel_metacall
  vtbl[].vtbl.rowCount = miqt_exec_method_cQStringListModel_rowCount
  vtbl[].vtbl.sibling = miqt_exec_method_cQStringListModel_sibling
  vtbl[].vtbl.data = miqt_exec_method_cQStringListModel_data
  vtbl[].vtbl.setData = miqt_exec_method_cQStringListModel_setData
  vtbl[].vtbl.flags = miqt_exec_method_cQStringListModel_flags
  vtbl[].vtbl.insertRows = miqt_exec_method_cQStringListModel_insertRows
  vtbl[].vtbl.removeRows = miqt_exec_method_cQStringListModel_removeRows
  vtbl[].vtbl.moveRows = miqt_exec_method_cQStringListModel_moveRows
  vtbl[].vtbl.itemData = miqt_exec_method_cQStringListModel_itemData
  vtbl[].vtbl.setItemData = miqt_exec_method_cQStringListModel_setItemData
  vtbl[].vtbl.sort = miqt_exec_method_cQStringListModel_sort
  vtbl[].vtbl.supportedDropActions = miqt_exec_method_cQStringListModel_supportedDropActions
  vtbl[].vtbl.index = miqt_exec_method_cQStringListModel_index
  vtbl[].vtbl.dropMimeData = miqt_exec_method_cQStringListModel_dropMimeData
  vtbl[].vtbl.headerData = miqt_exec_method_cQStringListModel_headerData
  vtbl[].vtbl.setHeaderData = miqt_exec_method_cQStringListModel_setHeaderData
  vtbl[].vtbl.mimeTypes = miqt_exec_method_cQStringListModel_mimeTypes
  vtbl[].vtbl.mimeData = miqt_exec_method_cQStringListModel_mimeData
  vtbl[].vtbl.canDropMimeData = miqt_exec_method_cQStringListModel_canDropMimeData
  vtbl[].vtbl.supportedDragActions = miqt_exec_method_cQStringListModel_supportedDragActions
  vtbl[].vtbl.insertColumns = miqt_exec_method_cQStringListModel_insertColumns
  vtbl[].vtbl.removeColumns = miqt_exec_method_cQStringListModel_removeColumns
  vtbl[].vtbl.moveColumns = miqt_exec_method_cQStringListModel_moveColumns
  vtbl[].vtbl.fetchMore = miqt_exec_method_cQStringListModel_fetchMore
  vtbl[].vtbl.canFetchMore = miqt_exec_method_cQStringListModel_canFetchMore
  vtbl[].vtbl.buddy = miqt_exec_method_cQStringListModel_buddy
  vtbl[].vtbl.match = miqt_exec_method_cQStringListModel_match
  vtbl[].vtbl.span = miqt_exec_method_cQStringListModel_span
  vtbl[].vtbl.roleNames = miqt_exec_method_cQStringListModel_roleNames
  vtbl[].vtbl.submit = miqt_exec_method_cQStringListModel_submit
  vtbl[].vtbl.revert = miqt_exec_method_cQStringListModel_revert
  vtbl[].vtbl.event = miqt_exec_method_cQStringListModel_event
  vtbl[].vtbl.eventFilter = miqt_exec_method_cQStringListModel_eventFilter
  vtbl[].vtbl.timerEvent = miqt_exec_method_cQStringListModel_timerEvent
  vtbl[].vtbl.childEvent = miqt_exec_method_cQStringListModel_childEvent
  vtbl[].vtbl.customEvent = miqt_exec_method_cQStringListModel_customEvent
  vtbl[].vtbl.connectNotify = miqt_exec_method_cQStringListModel_connectNotify
  vtbl[].vtbl.disconnectNotify = miqt_exec_method_cQStringListModel_disconnectNotify
  if vtbl[].h != nil: delete(move(vtbl[]))
  vtbl[].h = fcQStringListModel_new4(addr(vtbl[].vtbl), struct_miqt_array(len: csize_t(len(strings)), data: if len(strings) == 0: nil else: addr(strings_CArray[0])), parent.h)
  vtbl[].owned = true

proc staticMetaObject*(_: type gen_qstringlistmodel_types.QStringListModel): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQStringListModel_staticMetaObject())
