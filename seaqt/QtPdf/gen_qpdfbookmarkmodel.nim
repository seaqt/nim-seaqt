import ./qtpdf_pkg

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


{.compile("gen_qpdfbookmarkmodel.cpp", QtPdfCFlags).}


type QPdfBookmarkModelRoleEnum* = distinct cint
template Title*(_: type QPdfBookmarkModelRoleEnum): untyped = 256
template Level*(_: type QPdfBookmarkModelRoleEnum): untyped = 257
template Page*(_: type QPdfBookmarkModelRoleEnum): untyped = 258
template Location*(_: type QPdfBookmarkModelRoleEnum): untyped = 259
template Zoom*(_: type QPdfBookmarkModelRoleEnum): untyped = 260
template NRoles*(_: type QPdfBookmarkModelRoleEnum): untyped = 261


import ./gen_qpdfbookmarkmodel_types
export gen_qpdfbookmarkmodel_types

import
  ../QtCore/gen_qabstractitemmodel,
  ../QtCore/gen_qcoreevent_types,
  ../QtCore/gen_qdatastream_types,
  ../QtCore/gen_qmetaobject_types,
  ../QtCore/gen_qmimedata_types,
  ../QtCore/gen_qobject_types,
  ../QtCore/gen_qobjectdefs_types,
  ../QtCore/gen_qsize_types,
  ../QtCore/gen_qvariant_types,
  ./gen_qpdfdocument_types,
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
  gen_qvariant_types,
  gen_qpdfdocument_types

type cQPdfBookmarkModel*{.exportc: "QPdfBookmarkModel", incompleteStruct.} = object

proc fcQPdfBookmarkModel_metaObject(self: pointer): pointer {.importc: "QPdfBookmarkModel_metaObject".}
proc fcQPdfBookmarkModel_metacast(self: pointer, param1: cstring): pointer {.importc: "QPdfBookmarkModel_metacast".}
proc fcQPdfBookmarkModel_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.importc: "QPdfBookmarkModel_metacall".}
proc fcQPdfBookmarkModel_tr(s: cstring): struct_seaqt_string {.importc: "QPdfBookmarkModel_tr".}
proc fcQPdfBookmarkModel_document(self: pointer): pointer {.importc: "QPdfBookmarkModel_document".}
proc fcQPdfBookmarkModel_setDocument(self: pointer, document: pointer): void {.importc: "QPdfBookmarkModel_setDocument".}
proc fcQPdfBookmarkModel_data(self: pointer, index: pointer, role: cint): pointer {.importc: "QPdfBookmarkModel_data".}
proc fcQPdfBookmarkModel_index(self: pointer, row: cint, column: cint, parent: pointer): pointer {.importc: "QPdfBookmarkModel_index".}
proc fcQPdfBookmarkModel_parent(self: pointer, index: pointer): pointer {.importc: "QPdfBookmarkModel_parent".}
proc fcQPdfBookmarkModel_rowCount(self: pointer, parent: pointer): cint {.importc: "QPdfBookmarkModel_rowCount".}
proc fcQPdfBookmarkModel_columnCount(self: pointer, parent: pointer): cint {.importc: "QPdfBookmarkModel_columnCount".}
proc fcQPdfBookmarkModel_roleNames(self: pointer): struct_seaqt_map {.importc: "QPdfBookmarkModel_roleNames".}
proc fcQPdfBookmarkModel_documentChanged(self: pointer, document: pointer): void {.importc: "QPdfBookmarkModel_documentChanged".}
proc fcQPdfBookmarkModel_connect_documentChanged(self: pointer, slot: int, callback: proc (slot: int, document: pointer) {.cdecl.}, release: proc(slot: int) {.cdecl.}) {.importc: "QPdfBookmarkModel_connect_documentChanged".}
proc fcQPdfBookmarkModel_tr2(s: cstring, c: cstring): struct_seaqt_string {.importc: "QPdfBookmarkModel_tr2".}
proc fcQPdfBookmarkModel_tr3(s: cstring, c: cstring, n: cint): struct_seaqt_string {.importc: "QPdfBookmarkModel_tr3".}
proc fcQPdfBookmarkModel_vdata(self: pointer): ptr pointer {.importc: "QPdfBookmarkModel_vdata".}
proc fvdata_cQPdfBookmarkModel(self: pointer): pointer {.importc: "vdata_QPdfBookmarkModel".}

type cQPdfBookmarkModelVTable {.pure.} = object
  destructor*: proc(self: pointer) {.cdecl, raises:[], gcsafe.}
  metaObject*: proc(self: pointer): pointer {.cdecl, raises: [], gcsafe.}
  metacast*: proc(self: pointer, param1: cstring): pointer {.cdecl, raises: [], gcsafe.}
  metacall*: proc(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.cdecl, raises: [], gcsafe.}
  data*: proc(self: pointer, index: pointer, role: cint): pointer {.cdecl, raises: [], gcsafe.}
  index*: proc(self: pointer, row: cint, column: cint, parent: pointer): pointer {.cdecl, raises: [], gcsafe.}
  parent*: proc(self: pointer, index: pointer): pointer {.cdecl, raises: [], gcsafe.}
  rowCount*: proc(self: pointer, parent: pointer): cint {.cdecl, raises: [], gcsafe.}
  columnCount*: proc(self: pointer, parent: pointer): cint {.cdecl, raises: [], gcsafe.}
  roleNames*: proc(self: pointer): struct_seaqt_map {.cdecl, raises: [], gcsafe.}
  sibling*: proc(self: pointer, row: cint, column: cint, idx: pointer): pointer {.cdecl, raises: [], gcsafe.}
  hasChildren*: proc(self: pointer, parent: pointer): bool {.cdecl, raises: [], gcsafe.}
  setData*: proc(self: pointer, index: pointer, value: pointer, role: cint): bool {.cdecl, raises: [], gcsafe.}
  headerData*: proc(self: pointer, section: cint, orientation: cint, role: cint): pointer {.cdecl, raises: [], gcsafe.}
  setHeaderData*: proc(self: pointer, section: cint, orientation: cint, value: pointer, role: cint): bool {.cdecl, raises: [], gcsafe.}
  itemData*: proc(self: pointer, index: pointer): struct_seaqt_map {.cdecl, raises: [], gcsafe.}
  setItemData*: proc(self: pointer, index: pointer, roles: struct_seaqt_map): bool {.cdecl, raises: [], gcsafe.}
  clearItemData*: proc(self: pointer, index: pointer): bool {.cdecl, raises: [], gcsafe.}
  mimeTypes*: proc(self: pointer): struct_seaqt_array {.cdecl, raises: [], gcsafe.}
  mimeData*: proc(self: pointer, indexes: struct_seaqt_array): pointer {.cdecl, raises: [], gcsafe.}
  canDropMimeData*: proc(self: pointer, data: pointer, action: cint, row: cint, column: cint, parent: pointer): bool {.cdecl, raises: [], gcsafe.}
  dropMimeData*: proc(self: pointer, data: pointer, action: cint, row: cint, column: cint, parent: pointer): bool {.cdecl, raises: [], gcsafe.}
  supportedDropActions*: proc(self: pointer): cint {.cdecl, raises: [], gcsafe.}
  supportedDragActions*: proc(self: pointer): cint {.cdecl, raises: [], gcsafe.}
  insertRows*: proc(self: pointer, row: cint, count: cint, parent: pointer): bool {.cdecl, raises: [], gcsafe.}
  insertColumns*: proc(self: pointer, column: cint, count: cint, parent: pointer): bool {.cdecl, raises: [], gcsafe.}
  removeRows*: proc(self: pointer, row: cint, count: cint, parent: pointer): bool {.cdecl, raises: [], gcsafe.}
  removeColumns*: proc(self: pointer, column: cint, count: cint, parent: pointer): bool {.cdecl, raises: [], gcsafe.}
  moveRows*: proc(self: pointer, sourceParent: pointer, sourceRow: cint, count: cint, destinationParent: pointer, destinationChild: cint): bool {.cdecl, raises: [], gcsafe.}
  moveColumns*: proc(self: pointer, sourceParent: pointer, sourceColumn: cint, count: cint, destinationParent: pointer, destinationChild: cint): bool {.cdecl, raises: [], gcsafe.}
  fetchMore*: proc(self: pointer, parent: pointer): void {.cdecl, raises: [], gcsafe.}
  canFetchMore*: proc(self: pointer, parent: pointer): bool {.cdecl, raises: [], gcsafe.}
  flags*: proc(self: pointer, index: pointer): cint {.cdecl, raises: [], gcsafe.}
  sort*: proc(self: pointer, column: cint, order: cint): void {.cdecl, raises: [], gcsafe.}
  buddy*: proc(self: pointer, index: pointer): pointer {.cdecl, raises: [], gcsafe.}
  match*: proc(self: pointer, start: pointer, role: cint, value: pointer, hits: cint, flags: cint): struct_seaqt_array {.cdecl, raises: [], gcsafe.}
  span*: proc(self: pointer, index: pointer): pointer {.cdecl, raises: [], gcsafe.}
  multiData*: proc(self: pointer, index: pointer, roleDataSpan: pointer): void {.cdecl, raises: [], gcsafe.}
  submit*: proc(self: pointer): bool {.cdecl, raises: [], gcsafe.}
  revert*: proc(self: pointer): void {.cdecl, raises: [], gcsafe.}
  resetInternalData*: proc(self: pointer): void {.cdecl, raises: [], gcsafe.}
  event*: proc(self: pointer, event: pointer): bool {.cdecl, raises: [], gcsafe.}
  eventFilter*: proc(self: pointer, watched: pointer, event: pointer): bool {.cdecl, raises: [], gcsafe.}
  timerEvent*: proc(self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  childEvent*: proc(self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  customEvent*: proc(self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  connectNotify*: proc(self: pointer, signal: pointer): void {.cdecl, raises: [], gcsafe.}
  disconnectNotify*: proc(self: pointer, signal: pointer): void {.cdecl, raises: [], gcsafe.}
proc fcQPdfBookmarkModel_virtualbase_metaObject(self: pointer): pointer {.importc: "QPdfBookmarkModel_virtualbase_metaObject".}
proc fcQPdfBookmarkModel_virtualbase_metacast(self: pointer, param1: cstring): pointer {.importc: "QPdfBookmarkModel_virtualbase_metacast".}
proc fcQPdfBookmarkModel_virtualbase_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.importc: "QPdfBookmarkModel_virtualbase_metacall".}
proc fcQPdfBookmarkModel_virtualbase_data(self: pointer, index: pointer, role: cint): pointer {.importc: "QPdfBookmarkModel_virtualbase_data".}
proc fcQPdfBookmarkModel_virtualbase_index(self: pointer, row: cint, column: cint, parent: pointer): pointer {.importc: "QPdfBookmarkModel_virtualbase_index".}
proc fcQPdfBookmarkModel_virtualbase_parent(self: pointer, index: pointer): pointer {.importc: "QPdfBookmarkModel_virtualbase_parent".}
proc fcQPdfBookmarkModel_virtualbase_rowCount(self: pointer, parent: pointer): cint {.importc: "QPdfBookmarkModel_virtualbase_rowCount".}
proc fcQPdfBookmarkModel_virtualbase_columnCount(self: pointer, parent: pointer): cint {.importc: "QPdfBookmarkModel_virtualbase_columnCount".}
proc fcQPdfBookmarkModel_virtualbase_roleNames(self: pointer): struct_seaqt_map {.importc: "QPdfBookmarkModel_virtualbase_roleNames".}
proc fcQPdfBookmarkModel_virtualbase_sibling(self: pointer, row: cint, column: cint, idx: pointer): pointer {.importc: "QPdfBookmarkModel_virtualbase_sibling".}
proc fcQPdfBookmarkModel_virtualbase_hasChildren(self: pointer, parent: pointer): bool {.importc: "QPdfBookmarkModel_virtualbase_hasChildren".}
proc fcQPdfBookmarkModel_virtualbase_setData(self: pointer, index: pointer, value: pointer, role: cint): bool {.importc: "QPdfBookmarkModel_virtualbase_setData".}
proc fcQPdfBookmarkModel_virtualbase_headerData(self: pointer, section: cint, orientation: cint, role: cint): pointer {.importc: "QPdfBookmarkModel_virtualbase_headerData".}
proc fcQPdfBookmarkModel_virtualbase_setHeaderData(self: pointer, section: cint, orientation: cint, value: pointer, role: cint): bool {.importc: "QPdfBookmarkModel_virtualbase_setHeaderData".}
proc fcQPdfBookmarkModel_virtualbase_itemData(self: pointer, index: pointer): struct_seaqt_map {.importc: "QPdfBookmarkModel_virtualbase_itemData".}
proc fcQPdfBookmarkModel_virtualbase_setItemData(self: pointer, index: pointer, roles: struct_seaqt_map): bool {.importc: "QPdfBookmarkModel_virtualbase_setItemData".}
proc fcQPdfBookmarkModel_virtualbase_clearItemData(self: pointer, index: pointer): bool {.importc: "QPdfBookmarkModel_virtualbase_clearItemData".}
proc fcQPdfBookmarkModel_virtualbase_mimeTypes(self: pointer): struct_seaqt_array {.importc: "QPdfBookmarkModel_virtualbase_mimeTypes".}
proc fcQPdfBookmarkModel_virtualbase_mimeData(self: pointer, indexes: struct_seaqt_array): pointer {.importc: "QPdfBookmarkModel_virtualbase_mimeData".}
proc fcQPdfBookmarkModel_virtualbase_canDropMimeData(self: pointer, data: pointer, action: cint, row: cint, column: cint, parent: pointer): bool {.importc: "QPdfBookmarkModel_virtualbase_canDropMimeData".}
proc fcQPdfBookmarkModel_virtualbase_dropMimeData(self: pointer, data: pointer, action: cint, row: cint, column: cint, parent: pointer): bool {.importc: "QPdfBookmarkModel_virtualbase_dropMimeData".}
proc fcQPdfBookmarkModel_virtualbase_supportedDropActions(self: pointer): cint {.importc: "QPdfBookmarkModel_virtualbase_supportedDropActions".}
proc fcQPdfBookmarkModel_virtualbase_supportedDragActions(self: pointer): cint {.importc: "QPdfBookmarkModel_virtualbase_supportedDragActions".}
proc fcQPdfBookmarkModel_virtualbase_insertRows(self: pointer, row: cint, count: cint, parent: pointer): bool {.importc: "QPdfBookmarkModel_virtualbase_insertRows".}
proc fcQPdfBookmarkModel_virtualbase_insertColumns(self: pointer, column: cint, count: cint, parent: pointer): bool {.importc: "QPdfBookmarkModel_virtualbase_insertColumns".}
proc fcQPdfBookmarkModel_virtualbase_removeRows(self: pointer, row: cint, count: cint, parent: pointer): bool {.importc: "QPdfBookmarkModel_virtualbase_removeRows".}
proc fcQPdfBookmarkModel_virtualbase_removeColumns(self: pointer, column: cint, count: cint, parent: pointer): bool {.importc: "QPdfBookmarkModel_virtualbase_removeColumns".}
proc fcQPdfBookmarkModel_virtualbase_moveRows(self: pointer, sourceParent: pointer, sourceRow: cint, count: cint, destinationParent: pointer, destinationChild: cint): bool {.importc: "QPdfBookmarkModel_virtualbase_moveRows".}
proc fcQPdfBookmarkModel_virtualbase_moveColumns(self: pointer, sourceParent: pointer, sourceColumn: cint, count: cint, destinationParent: pointer, destinationChild: cint): bool {.importc: "QPdfBookmarkModel_virtualbase_moveColumns".}
proc fcQPdfBookmarkModel_virtualbase_fetchMore(self: pointer, parent: pointer): void {.importc: "QPdfBookmarkModel_virtualbase_fetchMore".}
proc fcQPdfBookmarkModel_virtualbase_canFetchMore(self: pointer, parent: pointer): bool {.importc: "QPdfBookmarkModel_virtualbase_canFetchMore".}
proc fcQPdfBookmarkModel_virtualbase_flags(self: pointer, index: pointer): cint {.importc: "QPdfBookmarkModel_virtualbase_flags".}
proc fcQPdfBookmarkModel_virtualbase_sort(self: pointer, column: cint, order: cint): void {.importc: "QPdfBookmarkModel_virtualbase_sort".}
proc fcQPdfBookmarkModel_virtualbase_buddy(self: pointer, index: pointer): pointer {.importc: "QPdfBookmarkModel_virtualbase_buddy".}
proc fcQPdfBookmarkModel_virtualbase_match(self: pointer, start: pointer, role: cint, value: pointer, hits: cint, flags: cint): struct_seaqt_array {.importc: "QPdfBookmarkModel_virtualbase_match".}
proc fcQPdfBookmarkModel_virtualbase_span(self: pointer, index: pointer): pointer {.importc: "QPdfBookmarkModel_virtualbase_span".}
proc fcQPdfBookmarkModel_virtualbase_multiData(self: pointer, index: pointer, roleDataSpan: pointer): void {.importc: "QPdfBookmarkModel_virtualbase_multiData".}
proc fcQPdfBookmarkModel_virtualbase_submit(self: pointer): bool {.importc: "QPdfBookmarkModel_virtualbase_submit".}
proc fcQPdfBookmarkModel_virtualbase_revert(self: pointer): void {.importc: "QPdfBookmarkModel_virtualbase_revert".}
proc fcQPdfBookmarkModel_virtualbase_resetInternalData(self: pointer): void {.importc: "QPdfBookmarkModel_virtualbase_resetInternalData".}
proc fcQPdfBookmarkModel_virtualbase_event(self: pointer, event: pointer): bool {.importc: "QPdfBookmarkModel_virtualbase_event".}
proc fcQPdfBookmarkModel_virtualbase_eventFilter(self: pointer, watched: pointer, event: pointer): bool {.importc: "QPdfBookmarkModel_virtualbase_eventFilter".}
proc fcQPdfBookmarkModel_virtualbase_timerEvent(self: pointer, event: pointer): void {.importc: "QPdfBookmarkModel_virtualbase_timerEvent".}
proc fcQPdfBookmarkModel_virtualbase_childEvent(self: pointer, event: pointer): void {.importc: "QPdfBookmarkModel_virtualbase_childEvent".}
proc fcQPdfBookmarkModel_virtualbase_customEvent(self: pointer, event: pointer): void {.importc: "QPdfBookmarkModel_virtualbase_customEvent".}
proc fcQPdfBookmarkModel_virtualbase_connectNotify(self: pointer, signal: pointer): void {.importc: "QPdfBookmarkModel_virtualbase_connectNotify".}
proc fcQPdfBookmarkModel_virtualbase_disconnectNotify(self: pointer, signal: pointer): void {.importc: "QPdfBookmarkModel_virtualbase_disconnectNotify".}
proc fcQPdfBookmarkModel_protectedbase_createIndex(self: pointer, row: cint, column: cint): pointer {.importc: "QPdfBookmarkModel_protectedbase_createIndex".}
proc fcQPdfBookmarkModel_protectedbase_encodeData(self: pointer, indexes: struct_seaqt_array, stream: pointer): void {.importc: "QPdfBookmarkModel_protectedbase_encodeData".}
proc fcQPdfBookmarkModel_protectedbase_decodeData(self: pointer, row: cint, column: cint, parent: pointer, stream: pointer): bool {.importc: "QPdfBookmarkModel_protectedbase_decodeData".}
proc fcQPdfBookmarkModel_protectedbase_beginInsertRows(self: pointer, parent: pointer, first: cint, last: cint): void {.importc: "QPdfBookmarkModel_protectedbase_beginInsertRows".}
proc fcQPdfBookmarkModel_protectedbase_endInsertRows(self: pointer): void {.importc: "QPdfBookmarkModel_protectedbase_endInsertRows".}
proc fcQPdfBookmarkModel_protectedbase_beginRemoveRows(self: pointer, parent: pointer, first: cint, last: cint): void {.importc: "QPdfBookmarkModel_protectedbase_beginRemoveRows".}
proc fcQPdfBookmarkModel_protectedbase_endRemoveRows(self: pointer): void {.importc: "QPdfBookmarkModel_protectedbase_endRemoveRows".}
proc fcQPdfBookmarkModel_protectedbase_beginMoveRows(self: pointer, sourceParent: pointer, sourceFirst: cint, sourceLast: cint, destinationParent: pointer, destinationRow: cint): bool {.importc: "QPdfBookmarkModel_protectedbase_beginMoveRows".}
proc fcQPdfBookmarkModel_protectedbase_endMoveRows(self: pointer): void {.importc: "QPdfBookmarkModel_protectedbase_endMoveRows".}
proc fcQPdfBookmarkModel_protectedbase_beginInsertColumns(self: pointer, parent: pointer, first: cint, last: cint): void {.importc: "QPdfBookmarkModel_protectedbase_beginInsertColumns".}
proc fcQPdfBookmarkModel_protectedbase_endInsertColumns(self: pointer): void {.importc: "QPdfBookmarkModel_protectedbase_endInsertColumns".}
proc fcQPdfBookmarkModel_protectedbase_beginRemoveColumns(self: pointer, parent: pointer, first: cint, last: cint): void {.importc: "QPdfBookmarkModel_protectedbase_beginRemoveColumns".}
proc fcQPdfBookmarkModel_protectedbase_endRemoveColumns(self: pointer): void {.importc: "QPdfBookmarkModel_protectedbase_endRemoveColumns".}
proc fcQPdfBookmarkModel_protectedbase_beginMoveColumns(self: pointer, sourceParent: pointer, sourceFirst: cint, sourceLast: cint, destinationParent: pointer, destinationColumn: cint): bool {.importc: "QPdfBookmarkModel_protectedbase_beginMoveColumns".}
proc fcQPdfBookmarkModel_protectedbase_endMoveColumns(self: pointer): void {.importc: "QPdfBookmarkModel_protectedbase_endMoveColumns".}
proc fcQPdfBookmarkModel_protectedbase_beginResetModel(self: pointer): void {.importc: "QPdfBookmarkModel_protectedbase_beginResetModel".}
proc fcQPdfBookmarkModel_protectedbase_endResetModel(self: pointer): void {.importc: "QPdfBookmarkModel_protectedbase_endResetModel".}
proc fcQPdfBookmarkModel_protectedbase_changePersistentIndex(self: pointer, fromVal: pointer, to: pointer): void {.importc: "QPdfBookmarkModel_protectedbase_changePersistentIndex".}
proc fcQPdfBookmarkModel_protectedbase_changePersistentIndexList(self: pointer, fromVal: struct_seaqt_array, to: struct_seaqt_array): void {.importc: "QPdfBookmarkModel_protectedbase_changePersistentIndexList".}
proc fcQPdfBookmarkModel_protectedbase_persistentIndexList(self: pointer): struct_seaqt_array {.importc: "QPdfBookmarkModel_protectedbase_persistentIndexList".}
proc fcQPdfBookmarkModel_protectedbase_sender(self: pointer): pointer {.importc: "QPdfBookmarkModel_protectedbase_sender".}
proc fcQPdfBookmarkModel_protectedbase_senderSignalIndex(self: pointer): cint {.importc: "QPdfBookmarkModel_protectedbase_senderSignalIndex".}
proc fcQPdfBookmarkModel_protectedbase_receivers(self: pointer, signal: cstring): cint {.importc: "QPdfBookmarkModel_protectedbase_receivers".}
proc fcQPdfBookmarkModel_protectedbase_isSignalConnected(self: pointer, signal: pointer): bool {.importc: "QPdfBookmarkModel_protectedbase_isSignalConnected".}
proc fcQPdfBookmarkModel_new(vtbl: pointer, vdata: csize_t): ptr cQPdfBookmarkModel {.importc: "QPdfBookmarkModel_new".}
proc fcQPdfBookmarkModel_new2(vtbl: pointer, vdata: csize_t, parent: pointer): ptr cQPdfBookmarkModel {.importc: "QPdfBookmarkModel_new2".}
proc fcQPdfBookmarkModel_staticMetaObject(): pointer {.importc: "QPdfBookmarkModel_staticMetaObject".}
proc fcQPdfBookmarkModel_delete(self: pointer) {.importc: "QPdfBookmarkModel_delete".}

proc metaObject*(self: gen_qpdfbookmarkmodel_types.QPdfBookmarkModel): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQPdfBookmarkModel_metaObject(self.h))

proc metacast*(self: gen_qpdfbookmarkmodel_types.QPdfBookmarkModel, param1: cstring): pointer =
  fcQPdfBookmarkModel_metacast(self.h, param1)

proc metacall*(self: gen_qpdfbookmarkmodel_types.QPdfBookmarkModel, param1: cint, param2: cint, param3: pointer): cint =
  fcQPdfBookmarkModel_metacall(self.h, cint(param1), param2, param3)

proc tr*(_: type gen_qpdfbookmarkmodel_types.QPdfBookmarkModel, s: cstring): string =
  let v_ms = fcQPdfBookmarkModel_tr(s)
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

proc document*(self: gen_qpdfbookmarkmodel_types.QPdfBookmarkModel): gen_qpdfdocument_types.QPdfDocument =
  gen_qpdfdocument_types.QPdfDocument(h: fcQPdfBookmarkModel_document(self.h))

proc setDocument*(self: gen_qpdfbookmarkmodel_types.QPdfBookmarkModel, document: gen_qpdfdocument_types.QPdfDocument): void =
  fcQPdfBookmarkModel_setDocument(self.h, document.h)

proc data*(self: gen_qpdfbookmarkmodel_types.QPdfBookmarkModel, index: gen_qabstractitemmodel_types.QModelIndex, role: cint): gen_qvariant_types.QVariant =
  gen_qvariant_types.QVariant(h: fcQPdfBookmarkModel_data(self.h, index.h, role))

proc index*(self: gen_qpdfbookmarkmodel_types.QPdfBookmarkModel, row: cint, column: cint, parent: gen_qabstractitemmodel_types.QModelIndex): gen_qabstractitemmodel_types.QModelIndex =
  gen_qabstractitemmodel_types.QModelIndex(h: fcQPdfBookmarkModel_index(self.h, row, column, parent.h))

proc parent*(self: gen_qpdfbookmarkmodel_types.QPdfBookmarkModel, index: gen_qabstractitemmodel_types.QModelIndex): gen_qabstractitemmodel_types.QModelIndex =
  gen_qabstractitemmodel_types.QModelIndex(h: fcQPdfBookmarkModel_parent(self.h, index.h))

proc rowCount*(self: gen_qpdfbookmarkmodel_types.QPdfBookmarkModel, parent: gen_qabstractitemmodel_types.QModelIndex): cint =
  fcQPdfBookmarkModel_rowCount(self.h, parent.h)

proc columnCount*(self: gen_qpdfbookmarkmodel_types.QPdfBookmarkModel, parent: gen_qabstractitemmodel_types.QModelIndex): cint =
  fcQPdfBookmarkModel_columnCount(self.h, parent.h)

proc roleNames*(self: gen_qpdfbookmarkmodel_types.QPdfBookmarkModel): Table[cint,seq[byte]] =
  var v_mm = fcQPdfBookmarkModel_roleNames(self.h)
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

proc documentChanged*(self: gen_qpdfbookmarkmodel_types.QPdfBookmarkModel, document: gen_qpdfdocument_types.QPdfDocument): void =
  fcQPdfBookmarkModel_documentChanged(self.h, document.h)

type QPdfBookmarkModeldocumentChangedSlot* = proc(document: gen_qpdfdocument_types.QPdfDocument)
proc fcQPdfBookmarkModel_slot_callback_documentChanged(slot: int, document: pointer) {.cdecl.} =
  let nimfunc = cast[ptr QPdfBookmarkModeldocumentChangedSlot](cast[pointer](slot))
  let slotval1 = gen_qpdfdocument_types.QPdfDocument(h: document)

  nimfunc[](slotval1)

proc fcQPdfBookmarkModel_slot_callback_documentChanged_release(slot: int) {.cdecl.} =
  let nimfunc = cast[ref QPdfBookmarkModeldocumentChangedSlot](cast[pointer](slot))
  GC_unref(nimfunc)

proc onDocumentChanged*(self: gen_qpdfbookmarkmodel_types.QPdfBookmarkModel, slot: QPdfBookmarkModeldocumentChangedSlot) =
  var tmp = new QPdfBookmarkModeldocumentChangedSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQPdfBookmarkModel_connect_documentChanged(self.h, cast[int](addr tmp[]), fcQPdfBookmarkModel_slot_callback_documentChanged, fcQPdfBookmarkModel_slot_callback_documentChanged_release)

proc tr*(_: type gen_qpdfbookmarkmodel_types.QPdfBookmarkModel, s: cstring, c: cstring): string =
  let v_ms = fcQPdfBookmarkModel_tr2(s, c)
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

proc tr*(_: type gen_qpdfbookmarkmodel_types.QPdfBookmarkModel, s: cstring, c: cstring, n: cint): string =
  let v_ms = fcQPdfBookmarkModel_tr3(s, c, n)
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

type QPdfBookmarkModelmetaObjectProc* = proc(self: QPdfBookmarkModel): gen_qobjectdefs_types.QMetaObject {.raises: [], gcsafe.}
type QPdfBookmarkModelmetacastProc* = proc(self: QPdfBookmarkModel, param1: cstring): pointer {.raises: [], gcsafe.}
type QPdfBookmarkModelmetacallProc* = proc(self: QPdfBookmarkModel, param1: cint, param2: cint, param3: pointer): cint {.raises: [], gcsafe.}
type QPdfBookmarkModeldataProc* = proc(self: QPdfBookmarkModel, index: gen_qabstractitemmodel_types.QModelIndex, role: cint): gen_qvariant_types.QVariant {.raises: [], gcsafe.}
type QPdfBookmarkModelindexProc* = proc(self: QPdfBookmarkModel, row: cint, column: cint, parent: gen_qabstractitemmodel_types.QModelIndex): gen_qabstractitemmodel_types.QModelIndex {.raises: [], gcsafe.}
type QPdfBookmarkModelparentProc* = proc(self: QPdfBookmarkModel, index: gen_qabstractitemmodel_types.QModelIndex): gen_qabstractitemmodel_types.QModelIndex {.raises: [], gcsafe.}
type QPdfBookmarkModelrowCountProc* = proc(self: QPdfBookmarkModel, parent: gen_qabstractitemmodel_types.QModelIndex): cint {.raises: [], gcsafe.}
type QPdfBookmarkModelcolumnCountProc* = proc(self: QPdfBookmarkModel, parent: gen_qabstractitemmodel_types.QModelIndex): cint {.raises: [], gcsafe.}
type QPdfBookmarkModelroleNamesProc* = proc(self: QPdfBookmarkModel): Table[cint,seq[byte]] {.raises: [], gcsafe.}
type QPdfBookmarkModelsiblingProc* = proc(self: QPdfBookmarkModel, row: cint, column: cint, idx: gen_qabstractitemmodel_types.QModelIndex): gen_qabstractitemmodel_types.QModelIndex {.raises: [], gcsafe.}
type QPdfBookmarkModelhasChildrenProc* = proc(self: QPdfBookmarkModel, parent: gen_qabstractitemmodel_types.QModelIndex): bool {.raises: [], gcsafe.}
type QPdfBookmarkModelsetDataProc* = proc(self: QPdfBookmarkModel, index: gen_qabstractitemmodel_types.QModelIndex, value: gen_qvariant_types.QVariant, role: cint): bool {.raises: [], gcsafe.}
type QPdfBookmarkModelheaderDataProc* = proc(self: QPdfBookmarkModel, section: cint, orientation: cint, role: cint): gen_qvariant_types.QVariant {.raises: [], gcsafe.}
type QPdfBookmarkModelsetHeaderDataProc* = proc(self: QPdfBookmarkModel, section: cint, orientation: cint, value: gen_qvariant_types.QVariant, role: cint): bool {.raises: [], gcsafe.}
type QPdfBookmarkModelitemDataProc* = proc(self: QPdfBookmarkModel, index: gen_qabstractitemmodel_types.QModelIndex): Table[cint,gen_qvariant_types.QVariant] {.raises: [], gcsafe.}
type QPdfBookmarkModelsetItemDataProc* = proc(self: QPdfBookmarkModel, index: gen_qabstractitemmodel_types.QModelIndex, roles: Table[cint,gen_qvariant_types.QVariant]): bool {.raises: [], gcsafe.}
type QPdfBookmarkModelclearItemDataProc* = proc(self: QPdfBookmarkModel, index: gen_qabstractitemmodel_types.QModelIndex): bool {.raises: [], gcsafe.}
type QPdfBookmarkModelmimeTypesProc* = proc(self: QPdfBookmarkModel): seq[string] {.raises: [], gcsafe.}
type QPdfBookmarkModelmimeDataProc* = proc(self: QPdfBookmarkModel, indexes: openArray[gen_qabstractitemmodel_types.QModelIndex]): gen_qmimedata_types.QMimeData {.raises: [], gcsafe.}
type QPdfBookmarkModelcanDropMimeDataProc* = proc(self: QPdfBookmarkModel, data: gen_qmimedata_types.QMimeData, action: cint, row: cint, column: cint, parent: gen_qabstractitemmodel_types.QModelIndex): bool {.raises: [], gcsafe.}
type QPdfBookmarkModeldropMimeDataProc* = proc(self: QPdfBookmarkModel, data: gen_qmimedata_types.QMimeData, action: cint, row: cint, column: cint, parent: gen_qabstractitemmodel_types.QModelIndex): bool {.raises: [], gcsafe.}
type QPdfBookmarkModelsupportedDropActionsProc* = proc(self: QPdfBookmarkModel): cint {.raises: [], gcsafe.}
type QPdfBookmarkModelsupportedDragActionsProc* = proc(self: QPdfBookmarkModel): cint {.raises: [], gcsafe.}
type QPdfBookmarkModelinsertRowsProc* = proc(self: QPdfBookmarkModel, row: cint, count: cint, parent: gen_qabstractitemmodel_types.QModelIndex): bool {.raises: [], gcsafe.}
type QPdfBookmarkModelinsertColumnsProc* = proc(self: QPdfBookmarkModel, column: cint, count: cint, parent: gen_qabstractitemmodel_types.QModelIndex): bool {.raises: [], gcsafe.}
type QPdfBookmarkModelremoveRowsProc* = proc(self: QPdfBookmarkModel, row: cint, count: cint, parent: gen_qabstractitemmodel_types.QModelIndex): bool {.raises: [], gcsafe.}
type QPdfBookmarkModelremoveColumnsProc* = proc(self: QPdfBookmarkModel, column: cint, count: cint, parent: gen_qabstractitemmodel_types.QModelIndex): bool {.raises: [], gcsafe.}
type QPdfBookmarkModelmoveRowsProc* = proc(self: QPdfBookmarkModel, sourceParent: gen_qabstractitemmodel_types.QModelIndex, sourceRow: cint, count: cint, destinationParent: gen_qabstractitemmodel_types.QModelIndex, destinationChild: cint): bool {.raises: [], gcsafe.}
type QPdfBookmarkModelmoveColumnsProc* = proc(self: QPdfBookmarkModel, sourceParent: gen_qabstractitemmodel_types.QModelIndex, sourceColumn: cint, count: cint, destinationParent: gen_qabstractitemmodel_types.QModelIndex, destinationChild: cint): bool {.raises: [], gcsafe.}
type QPdfBookmarkModelfetchMoreProc* = proc(self: QPdfBookmarkModel, parent: gen_qabstractitemmodel_types.QModelIndex): void {.raises: [], gcsafe.}
type QPdfBookmarkModelcanFetchMoreProc* = proc(self: QPdfBookmarkModel, parent: gen_qabstractitemmodel_types.QModelIndex): bool {.raises: [], gcsafe.}
type QPdfBookmarkModelflagsProc* = proc(self: QPdfBookmarkModel, index: gen_qabstractitemmodel_types.QModelIndex): cint {.raises: [], gcsafe.}
type QPdfBookmarkModelsortProc* = proc(self: QPdfBookmarkModel, column: cint, order: cint): void {.raises: [], gcsafe.}
type QPdfBookmarkModelbuddyProc* = proc(self: QPdfBookmarkModel, index: gen_qabstractitemmodel_types.QModelIndex): gen_qabstractitemmodel_types.QModelIndex {.raises: [], gcsafe.}
type QPdfBookmarkModelmatchProc* = proc(self: QPdfBookmarkModel, start: gen_qabstractitemmodel_types.QModelIndex, role: cint, value: gen_qvariant_types.QVariant, hits: cint, flags: cint): seq[gen_qabstractitemmodel_types.QModelIndex] {.raises: [], gcsafe.}
type QPdfBookmarkModelspanProc* = proc(self: QPdfBookmarkModel, index: gen_qabstractitemmodel_types.QModelIndex): gen_qsize_types.QSize {.raises: [], gcsafe.}
type QPdfBookmarkModelmultiDataProc* = proc(self: QPdfBookmarkModel, index: gen_qabstractitemmodel_types.QModelIndex, roleDataSpan: gen_qabstractitemmodel_types.QModelRoleDataSpan): void {.raises: [], gcsafe.}
type QPdfBookmarkModelsubmitProc* = proc(self: QPdfBookmarkModel): bool {.raises: [], gcsafe.}
type QPdfBookmarkModelrevertProc* = proc(self: QPdfBookmarkModel): void {.raises: [], gcsafe.}
type QPdfBookmarkModelresetInternalDataProc* = proc(self: QPdfBookmarkModel): void {.raises: [], gcsafe.}
type QPdfBookmarkModeleventProc* = proc(self: QPdfBookmarkModel, event: gen_qcoreevent_types.QEvent): bool {.raises: [], gcsafe.}
type QPdfBookmarkModeleventFilterProc* = proc(self: QPdfBookmarkModel, watched: gen_qobject_types.QObject, event: gen_qcoreevent_types.QEvent): bool {.raises: [], gcsafe.}
type QPdfBookmarkModeltimerEventProc* = proc(self: QPdfBookmarkModel, event: gen_qcoreevent_types.QTimerEvent): void {.raises: [], gcsafe.}
type QPdfBookmarkModelchildEventProc* = proc(self: QPdfBookmarkModel, event: gen_qcoreevent_types.QChildEvent): void {.raises: [], gcsafe.}
type QPdfBookmarkModelcustomEventProc* = proc(self: QPdfBookmarkModel, event: gen_qcoreevent_types.QEvent): void {.raises: [], gcsafe.}
type QPdfBookmarkModelconnectNotifyProc* = proc(self: QPdfBookmarkModel, signal: gen_qmetaobject_types.QMetaMethod): void {.raises: [], gcsafe.}
type QPdfBookmarkModeldisconnectNotifyProc* = proc(self: QPdfBookmarkModel, signal: gen_qmetaobject_types.QMetaMethod): void {.raises: [], gcsafe.}
type QPdfBookmarkModelVTable* = object
  vtbl: cQPdfBookmarkModelVTable
  metaObject*: QPdfBookmarkModelmetaObjectProc
  metacast*: QPdfBookmarkModelmetacastProc
  metacall*: QPdfBookmarkModelmetacallProc
  data*: QPdfBookmarkModeldataProc
  index*: QPdfBookmarkModelindexProc
  parent*: QPdfBookmarkModelparentProc
  rowCount*: QPdfBookmarkModelrowCountProc
  columnCount*: QPdfBookmarkModelcolumnCountProc
  roleNames*: QPdfBookmarkModelroleNamesProc
  sibling*: QPdfBookmarkModelsiblingProc
  hasChildren*: QPdfBookmarkModelhasChildrenProc
  setData*: QPdfBookmarkModelsetDataProc
  headerData*: QPdfBookmarkModelheaderDataProc
  setHeaderData*: QPdfBookmarkModelsetHeaderDataProc
  itemData*: QPdfBookmarkModelitemDataProc
  setItemData*: QPdfBookmarkModelsetItemDataProc
  clearItemData*: QPdfBookmarkModelclearItemDataProc
  mimeTypes*: QPdfBookmarkModelmimeTypesProc
  mimeData*: QPdfBookmarkModelmimeDataProc
  canDropMimeData*: QPdfBookmarkModelcanDropMimeDataProc
  dropMimeData*: QPdfBookmarkModeldropMimeDataProc
  supportedDropActions*: QPdfBookmarkModelsupportedDropActionsProc
  supportedDragActions*: QPdfBookmarkModelsupportedDragActionsProc
  insertRows*: QPdfBookmarkModelinsertRowsProc
  insertColumns*: QPdfBookmarkModelinsertColumnsProc
  removeRows*: QPdfBookmarkModelremoveRowsProc
  removeColumns*: QPdfBookmarkModelremoveColumnsProc
  moveRows*: QPdfBookmarkModelmoveRowsProc
  moveColumns*: QPdfBookmarkModelmoveColumnsProc
  fetchMore*: QPdfBookmarkModelfetchMoreProc
  canFetchMore*: QPdfBookmarkModelcanFetchMoreProc
  flags*: QPdfBookmarkModelflagsProc
  sort*: QPdfBookmarkModelsortProc
  buddy*: QPdfBookmarkModelbuddyProc
  match*: QPdfBookmarkModelmatchProc
  span*: QPdfBookmarkModelspanProc
  multiData*: QPdfBookmarkModelmultiDataProc
  submit*: QPdfBookmarkModelsubmitProc
  revert*: QPdfBookmarkModelrevertProc
  resetInternalData*: QPdfBookmarkModelresetInternalDataProc
  event*: QPdfBookmarkModeleventProc
  eventFilter*: QPdfBookmarkModeleventFilterProc
  timerEvent*: QPdfBookmarkModeltimerEventProc
  childEvent*: QPdfBookmarkModelchildEventProc
  customEvent*: QPdfBookmarkModelcustomEventProc
  connectNotify*: QPdfBookmarkModelconnectNotifyProc
  disconnectNotify*: QPdfBookmarkModeldisconnectNotifyProc

proc QPdfBookmarkModelmetaObject*(self: gen_qpdfbookmarkmodel_types.QPdfBookmarkModel): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQPdfBookmarkModel_virtualbase_metaObject(self.h))

proc QPdfBookmarkModelmetacast*(self: gen_qpdfbookmarkmodel_types.QPdfBookmarkModel, param1: cstring): pointer =
  fcQPdfBookmarkModel_virtualbase_metacast(self.h, param1)

proc QPdfBookmarkModelmetacall*(self: gen_qpdfbookmarkmodel_types.QPdfBookmarkModel, param1: cint, param2: cint, param3: pointer): cint =
  fcQPdfBookmarkModel_virtualbase_metacall(self.h, cint(param1), param2, param3)

proc QPdfBookmarkModeldata*(self: gen_qpdfbookmarkmodel_types.QPdfBookmarkModel, index: gen_qabstractitemmodel_types.QModelIndex, role: cint): gen_qvariant_types.QVariant =
  gen_qvariant_types.QVariant(h: fcQPdfBookmarkModel_virtualbase_data(self.h, index.h, role))

proc QPdfBookmarkModelindex*(self: gen_qpdfbookmarkmodel_types.QPdfBookmarkModel, row: cint, column: cint, parent: gen_qabstractitemmodel_types.QModelIndex): gen_qabstractitemmodel_types.QModelIndex =
  gen_qabstractitemmodel_types.QModelIndex(h: fcQPdfBookmarkModel_virtualbase_index(self.h, row, column, parent.h))

proc QPdfBookmarkModelparent*(self: gen_qpdfbookmarkmodel_types.QPdfBookmarkModel, index: gen_qabstractitemmodel_types.QModelIndex): gen_qabstractitemmodel_types.QModelIndex =
  gen_qabstractitemmodel_types.QModelIndex(h: fcQPdfBookmarkModel_virtualbase_parent(self.h, index.h))

proc QPdfBookmarkModelrowCount*(self: gen_qpdfbookmarkmodel_types.QPdfBookmarkModel, parent: gen_qabstractitemmodel_types.QModelIndex): cint =
  fcQPdfBookmarkModel_virtualbase_rowCount(self.h, parent.h)

proc QPdfBookmarkModelcolumnCount*(self: gen_qpdfbookmarkmodel_types.QPdfBookmarkModel, parent: gen_qabstractitemmodel_types.QModelIndex): cint =
  fcQPdfBookmarkModel_virtualbase_columnCount(self.h, parent.h)

proc QPdfBookmarkModelroleNames*(self: gen_qpdfbookmarkmodel_types.QPdfBookmarkModel): Table[cint,seq[byte]] =
  var v_mm = fcQPdfBookmarkModel_virtualbase_roleNames(self.h)
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

proc QPdfBookmarkModelsibling*(self: gen_qpdfbookmarkmodel_types.QPdfBookmarkModel, row: cint, column: cint, idx: gen_qabstractitemmodel_types.QModelIndex): gen_qabstractitemmodel_types.QModelIndex =
  gen_qabstractitemmodel_types.QModelIndex(h: fcQPdfBookmarkModel_virtualbase_sibling(self.h, row, column, idx.h))

proc QPdfBookmarkModelhasChildren*(self: gen_qpdfbookmarkmodel_types.QPdfBookmarkModel, parent: gen_qabstractitemmodel_types.QModelIndex): bool =
  fcQPdfBookmarkModel_virtualbase_hasChildren(self.h, parent.h)

proc QPdfBookmarkModelsetData*(self: gen_qpdfbookmarkmodel_types.QPdfBookmarkModel, index: gen_qabstractitemmodel_types.QModelIndex, value: gen_qvariant_types.QVariant, role: cint): bool =
  fcQPdfBookmarkModel_virtualbase_setData(self.h, index.h, value.h, role)

proc QPdfBookmarkModelheaderData*(self: gen_qpdfbookmarkmodel_types.QPdfBookmarkModel, section: cint, orientation: cint, role: cint): gen_qvariant_types.QVariant =
  gen_qvariant_types.QVariant(h: fcQPdfBookmarkModel_virtualbase_headerData(self.h, section, cint(orientation), role))

proc QPdfBookmarkModelsetHeaderData*(self: gen_qpdfbookmarkmodel_types.QPdfBookmarkModel, section: cint, orientation: cint, value: gen_qvariant_types.QVariant, role: cint): bool =
  fcQPdfBookmarkModel_virtualbase_setHeaderData(self.h, section, cint(orientation), value.h, role)

proc QPdfBookmarkModelitemData*(self: gen_qpdfbookmarkmodel_types.QPdfBookmarkModel, index: gen_qabstractitemmodel_types.QModelIndex): Table[cint,gen_qvariant_types.QVariant] =
  var v_mm = fcQPdfBookmarkModel_virtualbase_itemData(self.h, index.h)
  var vx_ret: Table[cint, gen_qvariant_types.QVariant]
  var v_Keys = cast[ptr UncheckedArray[cint]](v_mm.keys)
  var v_Values = cast[ptr UncheckedArray[pointer]](v_mm.values)
  for i in 0..<v_mm.len:
    var v_entry_Key = v_Keys[i]

    var v_entry_Value = gen_qvariant_types.QVariant(h: v_Values[i])

    vx_ret[v_entry_Key] = v_entry_Value
  c_free(v_mm.keys)
  c_free(v_mm.values)
  vx_ret

proc QPdfBookmarkModelsetItemData*(self: gen_qpdfbookmarkmodel_types.QPdfBookmarkModel, index: gen_qabstractitemmodel_types.QModelIndex, roles: Table[cint,gen_qvariant_types.QVariant]): bool =
  var roles_Keys_CArray = newSeq[cint](len(roles))
  var roles_Values_CArray = newSeq[pointer](len(roles))
  var roles_ctr = 0
  for roles_k, roles_v in roles:
    roles_Keys_CArray[roles_ctr] = roles_k
    roles_Values_CArray[roles_ctr] = roles_v.h
    roles_ctr += 1

  fcQPdfBookmarkModel_virtualbase_setItemData(self.h, index.h, struct_seaqt_map(len: csize_t(len(roles)),keys: if len(roles) == 0: nil else: addr(roles_Keys_CArray[0]), values: if len(roles) == 0: nil else: addr(roles_Values_CArray[0]),))

proc QPdfBookmarkModelclearItemData*(self: gen_qpdfbookmarkmodel_types.QPdfBookmarkModel, index: gen_qabstractitemmodel_types.QModelIndex): bool =
  fcQPdfBookmarkModel_virtualbase_clearItemData(self.h, index.h)

proc QPdfBookmarkModelmimeTypes*(self: gen_qpdfbookmarkmodel_types.QPdfBookmarkModel): seq[string] =
  var v_ma = fcQPdfBookmarkModel_virtualbase_mimeTypes(self.h)
  var vx_ret = newSeq[string](int(v_ma.len))
  let v_outCast = cast[ptr UncheckedArray[struct_seaqt_string]](v_ma.data)
  for i in 0 ..< v_ma.len:
    let vx_lv_ms = v_outCast[i]
    let vx_lvx_ret = string.fromBytes(vx_lv_ms)
    c_free(vx_lv_ms.data)
    vx_ret[i] = vx_lvx_ret
  c_free(v_ma.data)
  vx_ret

proc QPdfBookmarkModelmimeData*(self: gen_qpdfbookmarkmodel_types.QPdfBookmarkModel, indexes: openArray[gen_qabstractitemmodel_types.QModelIndex]): gen_qmimedata_types.QMimeData =
  var indexes_CArray = newSeq[pointer](len(indexes))
  for i in 0..<len(indexes):
    indexes_CArray[i] = indexes[i].h

  gen_qmimedata_types.QMimeData(h: fcQPdfBookmarkModel_virtualbase_mimeData(self.h, struct_seaqt_array(len: csize_t(len(indexes)), data: if len(indexes) == 0: nil else: addr(indexes_CArray[0]))))

proc QPdfBookmarkModelcanDropMimeData*(self: gen_qpdfbookmarkmodel_types.QPdfBookmarkModel, data: gen_qmimedata_types.QMimeData, action: cint, row: cint, column: cint, parent: gen_qabstractitemmodel_types.QModelIndex): bool =
  fcQPdfBookmarkModel_virtualbase_canDropMimeData(self.h, data.h, cint(action), row, column, parent.h)

proc QPdfBookmarkModeldropMimeData*(self: gen_qpdfbookmarkmodel_types.QPdfBookmarkModel, data: gen_qmimedata_types.QMimeData, action: cint, row: cint, column: cint, parent: gen_qabstractitemmodel_types.QModelIndex): bool =
  fcQPdfBookmarkModel_virtualbase_dropMimeData(self.h, data.h, cint(action), row, column, parent.h)

proc QPdfBookmarkModelsupportedDropActions*(self: gen_qpdfbookmarkmodel_types.QPdfBookmarkModel): cint =
  cint(fcQPdfBookmarkModel_virtualbase_supportedDropActions(self.h))

proc QPdfBookmarkModelsupportedDragActions*(self: gen_qpdfbookmarkmodel_types.QPdfBookmarkModel): cint =
  cint(fcQPdfBookmarkModel_virtualbase_supportedDragActions(self.h))

proc QPdfBookmarkModelinsertRows*(self: gen_qpdfbookmarkmodel_types.QPdfBookmarkModel, row: cint, count: cint, parent: gen_qabstractitemmodel_types.QModelIndex): bool =
  fcQPdfBookmarkModel_virtualbase_insertRows(self.h, row, count, parent.h)

proc QPdfBookmarkModelinsertColumns*(self: gen_qpdfbookmarkmodel_types.QPdfBookmarkModel, column: cint, count: cint, parent: gen_qabstractitemmodel_types.QModelIndex): bool =
  fcQPdfBookmarkModel_virtualbase_insertColumns(self.h, column, count, parent.h)

proc QPdfBookmarkModelremoveRows*(self: gen_qpdfbookmarkmodel_types.QPdfBookmarkModel, row: cint, count: cint, parent: gen_qabstractitemmodel_types.QModelIndex): bool =
  fcQPdfBookmarkModel_virtualbase_removeRows(self.h, row, count, parent.h)

proc QPdfBookmarkModelremoveColumns*(self: gen_qpdfbookmarkmodel_types.QPdfBookmarkModel, column: cint, count: cint, parent: gen_qabstractitemmodel_types.QModelIndex): bool =
  fcQPdfBookmarkModel_virtualbase_removeColumns(self.h, column, count, parent.h)

proc QPdfBookmarkModelmoveRows*(self: gen_qpdfbookmarkmodel_types.QPdfBookmarkModel, sourceParent: gen_qabstractitemmodel_types.QModelIndex, sourceRow: cint, count: cint, destinationParent: gen_qabstractitemmodel_types.QModelIndex, destinationChild: cint): bool =
  fcQPdfBookmarkModel_virtualbase_moveRows(self.h, sourceParent.h, sourceRow, count, destinationParent.h, destinationChild)

proc QPdfBookmarkModelmoveColumns*(self: gen_qpdfbookmarkmodel_types.QPdfBookmarkModel, sourceParent: gen_qabstractitemmodel_types.QModelIndex, sourceColumn: cint, count: cint, destinationParent: gen_qabstractitemmodel_types.QModelIndex, destinationChild: cint): bool =
  fcQPdfBookmarkModel_virtualbase_moveColumns(self.h, sourceParent.h, sourceColumn, count, destinationParent.h, destinationChild)

proc QPdfBookmarkModelfetchMore*(self: gen_qpdfbookmarkmodel_types.QPdfBookmarkModel, parent: gen_qabstractitemmodel_types.QModelIndex): void =
  fcQPdfBookmarkModel_virtualbase_fetchMore(self.h, parent.h)

proc QPdfBookmarkModelcanFetchMore*(self: gen_qpdfbookmarkmodel_types.QPdfBookmarkModel, parent: gen_qabstractitemmodel_types.QModelIndex): bool =
  fcQPdfBookmarkModel_virtualbase_canFetchMore(self.h, parent.h)

proc QPdfBookmarkModelflags*(self: gen_qpdfbookmarkmodel_types.QPdfBookmarkModel, index: gen_qabstractitemmodel_types.QModelIndex): cint =
  cint(fcQPdfBookmarkModel_virtualbase_flags(self.h, index.h))

proc QPdfBookmarkModelsort*(self: gen_qpdfbookmarkmodel_types.QPdfBookmarkModel, column: cint, order: cint): void =
  fcQPdfBookmarkModel_virtualbase_sort(self.h, column, cint(order))

proc QPdfBookmarkModelbuddy*(self: gen_qpdfbookmarkmodel_types.QPdfBookmarkModel, index: gen_qabstractitemmodel_types.QModelIndex): gen_qabstractitemmodel_types.QModelIndex =
  gen_qabstractitemmodel_types.QModelIndex(h: fcQPdfBookmarkModel_virtualbase_buddy(self.h, index.h))

proc QPdfBookmarkModelmatch*(self: gen_qpdfbookmarkmodel_types.QPdfBookmarkModel, start: gen_qabstractitemmodel_types.QModelIndex, role: cint, value: gen_qvariant_types.QVariant, hits: cint, flags: cint): seq[gen_qabstractitemmodel_types.QModelIndex] =
  var v_ma = fcQPdfBookmarkModel_virtualbase_match(self.h, start.h, role, value.h, hits, cint(flags))
  var vx_ret = newSeq[gen_qabstractitemmodel_types.QModelIndex](int(v_ma.len))
  let v_outCast = cast[ptr UncheckedArray[pointer]](v_ma.data)
  for i in 0 ..< v_ma.len:
    vx_ret[i] = gen_qabstractitemmodel_types.QModelIndex(h: v_outCast[i])
  c_free(v_ma.data)
  vx_ret

proc QPdfBookmarkModelspan*(self: gen_qpdfbookmarkmodel_types.QPdfBookmarkModel, index: gen_qabstractitemmodel_types.QModelIndex): gen_qsize_types.QSize =
  gen_qsize_types.QSize(h: fcQPdfBookmarkModel_virtualbase_span(self.h, index.h))

proc QPdfBookmarkModelmultiData*(self: gen_qpdfbookmarkmodel_types.QPdfBookmarkModel, index: gen_qabstractitemmodel_types.QModelIndex, roleDataSpan: gen_qabstractitemmodel_types.QModelRoleDataSpan): void =
  fcQPdfBookmarkModel_virtualbase_multiData(self.h, index.h, roleDataSpan.h)

proc QPdfBookmarkModelsubmit*(self: gen_qpdfbookmarkmodel_types.QPdfBookmarkModel): bool =
  fcQPdfBookmarkModel_virtualbase_submit(self.h)

proc QPdfBookmarkModelrevert*(self: gen_qpdfbookmarkmodel_types.QPdfBookmarkModel): void =
  fcQPdfBookmarkModel_virtualbase_revert(self.h)

proc QPdfBookmarkModelresetInternalData*(self: gen_qpdfbookmarkmodel_types.QPdfBookmarkModel): void =
  fcQPdfBookmarkModel_virtualbase_resetInternalData(self.h)

proc QPdfBookmarkModelevent*(self: gen_qpdfbookmarkmodel_types.QPdfBookmarkModel, event: gen_qcoreevent_types.QEvent): bool =
  fcQPdfBookmarkModel_virtualbase_event(self.h, event.h)

proc QPdfBookmarkModeleventFilter*(self: gen_qpdfbookmarkmodel_types.QPdfBookmarkModel, watched: gen_qobject_types.QObject, event: gen_qcoreevent_types.QEvent): bool =
  fcQPdfBookmarkModel_virtualbase_eventFilter(self.h, watched.h, event.h)

proc QPdfBookmarkModeltimerEvent*(self: gen_qpdfbookmarkmodel_types.QPdfBookmarkModel, event: gen_qcoreevent_types.QTimerEvent): void =
  fcQPdfBookmarkModel_virtualbase_timerEvent(self.h, event.h)

proc QPdfBookmarkModelchildEvent*(self: gen_qpdfbookmarkmodel_types.QPdfBookmarkModel, event: gen_qcoreevent_types.QChildEvent): void =
  fcQPdfBookmarkModel_virtualbase_childEvent(self.h, event.h)

proc QPdfBookmarkModelcustomEvent*(self: gen_qpdfbookmarkmodel_types.QPdfBookmarkModel, event: gen_qcoreevent_types.QEvent): void =
  fcQPdfBookmarkModel_virtualbase_customEvent(self.h, event.h)

proc QPdfBookmarkModelconnectNotify*(self: gen_qpdfbookmarkmodel_types.QPdfBookmarkModel, signal: gen_qmetaobject_types.QMetaMethod): void =
  fcQPdfBookmarkModel_virtualbase_connectNotify(self.h, signal.h)

proc QPdfBookmarkModeldisconnectNotify*(self: gen_qpdfbookmarkmodel_types.QPdfBookmarkModel, signal: gen_qmetaobject_types.QMetaMethod): void =
  fcQPdfBookmarkModel_virtualbase_disconnectNotify(self.h, signal.h)


proc fcQPdfBookmarkModel_vtable_callback_metaObject(self: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QPdfBookmarkModelVTable](fcQPdfBookmarkModel_vdata(self)[])
  let self = QPdfBookmarkModel(h: self)
  var virtualReturn = vtbl[].metaObject(self)
  virtualReturn.h

proc fcQPdfBookmarkModel_vtable_callback_metacast(self: pointer, param1: cstring): pointer {.cdecl.} =
  let vtbl = cast[ptr QPdfBookmarkModelVTable](fcQPdfBookmarkModel_vdata(self)[])
  let self = QPdfBookmarkModel(h: self)
  let slotval1 = (param1)
  var virtualReturn = vtbl[].metacast(self, slotval1)
  virtualReturn

proc fcQPdfBookmarkModel_vtable_callback_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.cdecl.} =
  let vtbl = cast[ptr QPdfBookmarkModelVTable](fcQPdfBookmarkModel_vdata(self)[])
  let self = QPdfBookmarkModel(h: self)
  let slotval1 = cint(param1)
  let slotval2 = param2
  let slotval3 = param3
  var virtualReturn = vtbl[].metacall(self, slotval1, slotval2, slotval3)
  virtualReturn

proc fcQPdfBookmarkModel_vtable_callback_data(self: pointer, index: pointer, role: cint): pointer {.cdecl.} =
  let vtbl = cast[ptr QPdfBookmarkModelVTable](fcQPdfBookmarkModel_vdata(self)[])
  let self = QPdfBookmarkModel(h: self)
  let slotval1 = gen_qabstractitemmodel_types.QModelIndex(h: index)
  let slotval2 = role
  var virtualReturn = vtbl[].data(self, slotval1, slotval2)
  virtualReturn.h

proc fcQPdfBookmarkModel_vtable_callback_index(self: pointer, row: cint, column: cint, parent: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QPdfBookmarkModelVTable](fcQPdfBookmarkModel_vdata(self)[])
  let self = QPdfBookmarkModel(h: self)
  let slotval1 = row
  let slotval2 = column
  let slotval3 = gen_qabstractitemmodel_types.QModelIndex(h: parent)
  var virtualReturn = vtbl[].index(self, slotval1, slotval2, slotval3)
  virtualReturn.h

proc fcQPdfBookmarkModel_vtable_callback_parent(self: pointer, index: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QPdfBookmarkModelVTable](fcQPdfBookmarkModel_vdata(self)[])
  let self = QPdfBookmarkModel(h: self)
  let slotval1 = gen_qabstractitemmodel_types.QModelIndex(h: index)
  var virtualReturn = vtbl[].parent(self, slotval1)
  virtualReturn.h

proc fcQPdfBookmarkModel_vtable_callback_rowCount(self: pointer, parent: pointer): cint {.cdecl.} =
  let vtbl = cast[ptr QPdfBookmarkModelVTable](fcQPdfBookmarkModel_vdata(self)[])
  let self = QPdfBookmarkModel(h: self)
  let slotval1 = gen_qabstractitemmodel_types.QModelIndex(h: parent)
  var virtualReturn = vtbl[].rowCount(self, slotval1)
  virtualReturn

proc fcQPdfBookmarkModel_vtable_callback_columnCount(self: pointer, parent: pointer): cint {.cdecl.} =
  let vtbl = cast[ptr QPdfBookmarkModelVTable](fcQPdfBookmarkModel_vdata(self)[])
  let self = QPdfBookmarkModel(h: self)
  let slotval1 = gen_qabstractitemmodel_types.QModelIndex(h: parent)
  var virtualReturn = vtbl[].columnCount(self, slotval1)
  virtualReturn

proc fcQPdfBookmarkModel_vtable_callback_roleNames(self: pointer): struct_seaqt_map {.cdecl.} =
  let vtbl = cast[ptr QPdfBookmarkModelVTable](fcQPdfBookmarkModel_vdata(self)[])
  let self = QPdfBookmarkModel(h: self)
  var virtualReturn = vtbl[].roleNames(self)
  var virtualReturn_Keys_CArray = cast[ptr UncheckedArray[cint]](if len(virtualReturn) > 0: c_malloc(csize_t(sizeof(cint) * len(virtualReturn))) else: nil)
  var virtualReturn_Values_CArray = cast[ptr UncheckedArray[struct_seaqt_string]](if len(virtualReturn) > 0: c_malloc(csize_t(sizeof(struct_seaqt_string) * len(virtualReturn))) else: nil)
  var virtualReturn_ctr = 0
  for virtualReturn_k, virtualReturn_v in virtualReturn:
    virtualReturn_Keys_CArray[virtualReturn_ctr] = virtualReturn_k
    var virtualReturn_v_copy = if len(virtualReturn_v) > 0: c_malloc(csize_t(len(virtualReturn_v))) else: nil
    if len(virtualReturn_v) > 0: copyMem(virtualReturn_v_copy, addr virtualReturn_v[0], csize_t(len(virtualReturn_v)))
    virtualReturn_Values_CArray[virtualReturn_ctr] = struct_seaqt_string(data: virtualReturn_v_copy, len: csize_t(len(virtualReturn_v)))
    virtualReturn_ctr += 1

  struct_seaqt_map(len: csize_t(len(virtualReturn)),keys: if len(virtualReturn) == 0: nil else: addr(virtualReturn_Keys_CArray[0]), values: if len(virtualReturn) == 0: nil else: addr(virtualReturn_Values_CArray[0]),)

proc fcQPdfBookmarkModel_vtable_callback_sibling(self: pointer, row: cint, column: cint, idx: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QPdfBookmarkModelVTable](fcQPdfBookmarkModel_vdata(self)[])
  let self = QPdfBookmarkModel(h: self)
  let slotval1 = row
  let slotval2 = column
  let slotval3 = gen_qabstractitemmodel_types.QModelIndex(h: idx)
  var virtualReturn = vtbl[].sibling(self, slotval1, slotval2, slotval3)
  virtualReturn.h

proc fcQPdfBookmarkModel_vtable_callback_hasChildren(self: pointer, parent: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QPdfBookmarkModelVTable](fcQPdfBookmarkModel_vdata(self)[])
  let self = QPdfBookmarkModel(h: self)
  let slotval1 = gen_qabstractitemmodel_types.QModelIndex(h: parent)
  var virtualReturn = vtbl[].hasChildren(self, slotval1)
  virtualReturn

proc fcQPdfBookmarkModel_vtable_callback_setData(self: pointer, index: pointer, value: pointer, role: cint): bool {.cdecl.} =
  let vtbl = cast[ptr QPdfBookmarkModelVTable](fcQPdfBookmarkModel_vdata(self)[])
  let self = QPdfBookmarkModel(h: self)
  let slotval1 = gen_qabstractitemmodel_types.QModelIndex(h: index)
  let slotval2 = gen_qvariant_types.QVariant(h: value)
  let slotval3 = role
  var virtualReturn = vtbl[].setData(self, slotval1, slotval2, slotval3)
  virtualReturn

proc fcQPdfBookmarkModel_vtable_callback_headerData(self: pointer, section: cint, orientation: cint, role: cint): pointer {.cdecl.} =
  let vtbl = cast[ptr QPdfBookmarkModelVTable](fcQPdfBookmarkModel_vdata(self)[])
  let self = QPdfBookmarkModel(h: self)
  let slotval1 = section
  let slotval2 = cint(orientation)
  let slotval3 = role
  var virtualReturn = vtbl[].headerData(self, slotval1, slotval2, slotval3)
  virtualReturn.h

proc fcQPdfBookmarkModel_vtable_callback_setHeaderData(self: pointer, section: cint, orientation: cint, value: pointer, role: cint): bool {.cdecl.} =
  let vtbl = cast[ptr QPdfBookmarkModelVTable](fcQPdfBookmarkModel_vdata(self)[])
  let self = QPdfBookmarkModel(h: self)
  let slotval1 = section
  let slotval2 = cint(orientation)
  let slotval3 = gen_qvariant_types.QVariant(h: value)
  let slotval4 = role
  var virtualReturn = vtbl[].setHeaderData(self, slotval1, slotval2, slotval3, slotval4)
  virtualReturn

proc fcQPdfBookmarkModel_vtable_callback_itemData(self: pointer, index: pointer): struct_seaqt_map {.cdecl.} =
  let vtbl = cast[ptr QPdfBookmarkModelVTable](fcQPdfBookmarkModel_vdata(self)[])
  let self = QPdfBookmarkModel(h: self)
  let slotval1 = gen_qabstractitemmodel_types.QModelIndex(h: index)
  var virtualReturn = vtbl[].itemData(self, slotval1)
  var virtualReturn_Keys_CArray = cast[ptr UncheckedArray[cint]](if len(virtualReturn) > 0: c_malloc(csize_t(sizeof(cint) * len(virtualReturn))) else: nil)
  var virtualReturn_Values_CArray = cast[ptr UncheckedArray[pointer]](if len(virtualReturn) > 0: c_malloc(csize_t(sizeof(pointer) * len(virtualReturn))) else: nil)
  var virtualReturn_ctr = 0
  for virtualReturn_k, virtualReturn_v in virtualReturn:
    virtualReturn_Keys_CArray[virtualReturn_ctr] = virtualReturn_k
    virtualReturn_Values_CArray[virtualReturn_ctr] = virtualReturn_v.h
    virtualReturn_ctr += 1

  struct_seaqt_map(len: csize_t(len(virtualReturn)),keys: if len(virtualReturn) == 0: nil else: addr(virtualReturn_Keys_CArray[0]), values: if len(virtualReturn) == 0: nil else: addr(virtualReturn_Values_CArray[0]),)

proc fcQPdfBookmarkModel_vtable_callback_setItemData(self: pointer, index: pointer, roles: struct_seaqt_map): bool {.cdecl.} =
  let vtbl = cast[ptr QPdfBookmarkModelVTable](fcQPdfBookmarkModel_vdata(self)[])
  let self = QPdfBookmarkModel(h: self)
  let slotval1 = gen_qabstractitemmodel_types.QModelIndex(h: index)
  var vroles_mm = roles
  var vrolesx_ret: Table[cint, gen_qvariant_types.QVariant]
  var vroles_Keys = cast[ptr UncheckedArray[cint]](vroles_mm.keys)
  var vroles_Values = cast[ptr UncheckedArray[pointer]](vroles_mm.values)
  for i in 0..<vroles_mm.len:
    var vroles_entry_Key = vroles_Keys[i]

    var vroles_entry_Value = gen_qvariant_types.QVariant(h: vroles_Values[i])

    vrolesx_ret[vroles_entry_Key] = vroles_entry_Value
  c_free(vroles_mm.keys)
  c_free(vroles_mm.values)
  let slotval2 = vrolesx_ret
  var virtualReturn = vtbl[].setItemData(self, slotval1, slotval2)
  virtualReturn

proc fcQPdfBookmarkModel_vtable_callback_clearItemData(self: pointer, index: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QPdfBookmarkModelVTable](fcQPdfBookmarkModel_vdata(self)[])
  let self = QPdfBookmarkModel(h: self)
  let slotval1 = gen_qabstractitemmodel_types.QModelIndex(h: index)
  var virtualReturn = vtbl[].clearItemData(self, slotval1)
  virtualReturn

proc fcQPdfBookmarkModel_vtable_callback_mimeTypes(self: pointer): struct_seaqt_array {.cdecl.} =
  let vtbl = cast[ptr QPdfBookmarkModelVTable](fcQPdfBookmarkModel_vdata(self)[])
  let self = QPdfBookmarkModel(h: self)
  var virtualReturn = vtbl[].mimeTypes(self)
  var virtualReturn_CArray = cast[ptr UncheckedArray[struct_seaqt_string]](if len(virtualReturn) > 0: c_malloc(c_sizet(sizeof(struct_seaqt_string) * len(virtualReturn))) else: nil)
  for i in 0..<len(virtualReturn):
    var virtualReturn_i_copy = if len(virtualReturn[i]) > 0: c_malloc(csize_t(len(virtualReturn[i]))) else: nil
    if len(virtualReturn[i]) > 0: copyMem(virtualReturn_i_copy, addr virtualReturn[i][0], csize_t(len(virtualReturn[i])))
    virtualReturn_CArray[i] = struct_seaqt_string(data: virtualReturn_i_copy, len: csize_t(len(virtualReturn[i])))

  struct_seaqt_array(len: csize_t(len(virtualReturn)), data: if len(virtualReturn) == 0: nil else: addr(virtualReturn_CArray[0]))

proc fcQPdfBookmarkModel_vtable_callback_mimeData(self: pointer, indexes: struct_seaqt_array): pointer {.cdecl.} =
  let vtbl = cast[ptr QPdfBookmarkModelVTable](fcQPdfBookmarkModel_vdata(self)[])
  let self = QPdfBookmarkModel(h: self)
  var vindexes_ma = indexes
  var vindexesx_ret = newSeq[gen_qabstractitemmodel_types.QModelIndex](int(vindexes_ma.len))
  let vindexes_outCast = cast[ptr UncheckedArray[pointer]](vindexes_ma.data)
  for i in 0 ..< vindexes_ma.len:
    vindexesx_ret[i] = gen_qabstractitemmodel_types.QModelIndex(h: vindexes_outCast[i])
  c_free(vindexes_ma.data)
  let slotval1 = vindexesx_ret
  var virtualReturn = vtbl[].mimeData(self, slotval1)
  virtualReturn.h

proc fcQPdfBookmarkModel_vtable_callback_canDropMimeData(self: pointer, data: pointer, action: cint, row: cint, column: cint, parent: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QPdfBookmarkModelVTable](fcQPdfBookmarkModel_vdata(self)[])
  let self = QPdfBookmarkModel(h: self)
  let slotval1 = gen_qmimedata_types.QMimeData(h: data)
  let slotval2 = cint(action)
  let slotval3 = row
  let slotval4 = column
  let slotval5 = gen_qabstractitemmodel_types.QModelIndex(h: parent)
  var virtualReturn = vtbl[].canDropMimeData(self, slotval1, slotval2, slotval3, slotval4, slotval5)
  virtualReturn

proc fcQPdfBookmarkModel_vtable_callback_dropMimeData(self: pointer, data: pointer, action: cint, row: cint, column: cint, parent: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QPdfBookmarkModelVTable](fcQPdfBookmarkModel_vdata(self)[])
  let self = QPdfBookmarkModel(h: self)
  let slotval1 = gen_qmimedata_types.QMimeData(h: data)
  let slotval2 = cint(action)
  let slotval3 = row
  let slotval4 = column
  let slotval5 = gen_qabstractitemmodel_types.QModelIndex(h: parent)
  var virtualReturn = vtbl[].dropMimeData(self, slotval1, slotval2, slotval3, slotval4, slotval5)
  virtualReturn

proc fcQPdfBookmarkModel_vtable_callback_supportedDropActions(self: pointer): cint {.cdecl.} =
  let vtbl = cast[ptr QPdfBookmarkModelVTable](fcQPdfBookmarkModel_vdata(self)[])
  let self = QPdfBookmarkModel(h: self)
  var virtualReturn = vtbl[].supportedDropActions(self)
  cint(virtualReturn)

proc fcQPdfBookmarkModel_vtable_callback_supportedDragActions(self: pointer): cint {.cdecl.} =
  let vtbl = cast[ptr QPdfBookmarkModelVTable](fcQPdfBookmarkModel_vdata(self)[])
  let self = QPdfBookmarkModel(h: self)
  var virtualReturn = vtbl[].supportedDragActions(self)
  cint(virtualReturn)

proc fcQPdfBookmarkModel_vtable_callback_insertRows(self: pointer, row: cint, count: cint, parent: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QPdfBookmarkModelVTable](fcQPdfBookmarkModel_vdata(self)[])
  let self = QPdfBookmarkModel(h: self)
  let slotval1 = row
  let slotval2 = count
  let slotval3 = gen_qabstractitemmodel_types.QModelIndex(h: parent)
  var virtualReturn = vtbl[].insertRows(self, slotval1, slotval2, slotval3)
  virtualReturn

proc fcQPdfBookmarkModel_vtable_callback_insertColumns(self: pointer, column: cint, count: cint, parent: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QPdfBookmarkModelVTable](fcQPdfBookmarkModel_vdata(self)[])
  let self = QPdfBookmarkModel(h: self)
  let slotval1 = column
  let slotval2 = count
  let slotval3 = gen_qabstractitemmodel_types.QModelIndex(h: parent)
  var virtualReturn = vtbl[].insertColumns(self, slotval1, slotval2, slotval3)
  virtualReturn

proc fcQPdfBookmarkModel_vtable_callback_removeRows(self: pointer, row: cint, count: cint, parent: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QPdfBookmarkModelVTable](fcQPdfBookmarkModel_vdata(self)[])
  let self = QPdfBookmarkModel(h: self)
  let slotval1 = row
  let slotval2 = count
  let slotval3 = gen_qabstractitemmodel_types.QModelIndex(h: parent)
  var virtualReturn = vtbl[].removeRows(self, slotval1, slotval2, slotval3)
  virtualReturn

proc fcQPdfBookmarkModel_vtable_callback_removeColumns(self: pointer, column: cint, count: cint, parent: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QPdfBookmarkModelVTable](fcQPdfBookmarkModel_vdata(self)[])
  let self = QPdfBookmarkModel(h: self)
  let slotval1 = column
  let slotval2 = count
  let slotval3 = gen_qabstractitemmodel_types.QModelIndex(h: parent)
  var virtualReturn = vtbl[].removeColumns(self, slotval1, slotval2, slotval3)
  virtualReturn

proc fcQPdfBookmarkModel_vtable_callback_moveRows(self: pointer, sourceParent: pointer, sourceRow: cint, count: cint, destinationParent: pointer, destinationChild: cint): bool {.cdecl.} =
  let vtbl = cast[ptr QPdfBookmarkModelVTable](fcQPdfBookmarkModel_vdata(self)[])
  let self = QPdfBookmarkModel(h: self)
  let slotval1 = gen_qabstractitemmodel_types.QModelIndex(h: sourceParent)
  let slotval2 = sourceRow
  let slotval3 = count
  let slotval4 = gen_qabstractitemmodel_types.QModelIndex(h: destinationParent)
  let slotval5 = destinationChild
  var virtualReturn = vtbl[].moveRows(self, slotval1, slotval2, slotval3, slotval4, slotval5)
  virtualReturn

proc fcQPdfBookmarkModel_vtable_callback_moveColumns(self: pointer, sourceParent: pointer, sourceColumn: cint, count: cint, destinationParent: pointer, destinationChild: cint): bool {.cdecl.} =
  let vtbl = cast[ptr QPdfBookmarkModelVTable](fcQPdfBookmarkModel_vdata(self)[])
  let self = QPdfBookmarkModel(h: self)
  let slotval1 = gen_qabstractitemmodel_types.QModelIndex(h: sourceParent)
  let slotval2 = sourceColumn
  let slotval3 = count
  let slotval4 = gen_qabstractitemmodel_types.QModelIndex(h: destinationParent)
  let slotval5 = destinationChild
  var virtualReturn = vtbl[].moveColumns(self, slotval1, slotval2, slotval3, slotval4, slotval5)
  virtualReturn

proc fcQPdfBookmarkModel_vtable_callback_fetchMore(self: pointer, parent: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QPdfBookmarkModelVTable](fcQPdfBookmarkModel_vdata(self)[])
  let self = QPdfBookmarkModel(h: self)
  let slotval1 = gen_qabstractitemmodel_types.QModelIndex(h: parent)
  vtbl[].fetchMore(self, slotval1)

proc fcQPdfBookmarkModel_vtable_callback_canFetchMore(self: pointer, parent: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QPdfBookmarkModelVTable](fcQPdfBookmarkModel_vdata(self)[])
  let self = QPdfBookmarkModel(h: self)
  let slotval1 = gen_qabstractitemmodel_types.QModelIndex(h: parent)
  var virtualReturn = vtbl[].canFetchMore(self, slotval1)
  virtualReturn

proc fcQPdfBookmarkModel_vtable_callback_flags(self: pointer, index: pointer): cint {.cdecl.} =
  let vtbl = cast[ptr QPdfBookmarkModelVTable](fcQPdfBookmarkModel_vdata(self)[])
  let self = QPdfBookmarkModel(h: self)
  let slotval1 = gen_qabstractitemmodel_types.QModelIndex(h: index)
  var virtualReturn = vtbl[].flags(self, slotval1)
  cint(virtualReturn)

proc fcQPdfBookmarkModel_vtable_callback_sort(self: pointer, column: cint, order: cint): void {.cdecl.} =
  let vtbl = cast[ptr QPdfBookmarkModelVTable](fcQPdfBookmarkModel_vdata(self)[])
  let self = QPdfBookmarkModel(h: self)
  let slotval1 = column
  let slotval2 = cint(order)
  vtbl[].sort(self, slotval1, slotval2)

proc fcQPdfBookmarkModel_vtable_callback_buddy(self: pointer, index: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QPdfBookmarkModelVTable](fcQPdfBookmarkModel_vdata(self)[])
  let self = QPdfBookmarkModel(h: self)
  let slotval1 = gen_qabstractitemmodel_types.QModelIndex(h: index)
  var virtualReturn = vtbl[].buddy(self, slotval1)
  virtualReturn.h

proc fcQPdfBookmarkModel_vtable_callback_match(self: pointer, start: pointer, role: cint, value: pointer, hits: cint, flags: cint): struct_seaqt_array {.cdecl.} =
  let vtbl = cast[ptr QPdfBookmarkModelVTable](fcQPdfBookmarkModel_vdata(self)[])
  let self = QPdfBookmarkModel(h: self)
  let slotval1 = gen_qabstractitemmodel_types.QModelIndex(h: start)
  let slotval2 = role
  let slotval3 = gen_qvariant_types.QVariant(h: value)
  let slotval4 = hits
  let slotval5 = cint(flags)
  var virtualReturn = vtbl[].match(self, slotval1, slotval2, slotval3, slotval4, slotval5)
  var virtualReturn_CArray = cast[ptr UncheckedArray[pointer]](if len(virtualReturn) > 0: c_malloc(c_sizet(sizeof(pointer) * len(virtualReturn))) else: nil)
  for i in 0..<len(virtualReturn):
    virtualReturn_CArray[i] = virtualReturn[i].h

  struct_seaqt_array(len: csize_t(len(virtualReturn)), data: if len(virtualReturn) == 0: nil else: addr(virtualReturn_CArray[0]))

proc fcQPdfBookmarkModel_vtable_callback_span(self: pointer, index: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QPdfBookmarkModelVTable](fcQPdfBookmarkModel_vdata(self)[])
  let self = QPdfBookmarkModel(h: self)
  let slotval1 = gen_qabstractitemmodel_types.QModelIndex(h: index)
  var virtualReturn = vtbl[].span(self, slotval1)
  virtualReturn.h

proc fcQPdfBookmarkModel_vtable_callback_multiData(self: pointer, index: pointer, roleDataSpan: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QPdfBookmarkModelVTable](fcQPdfBookmarkModel_vdata(self)[])
  let self = QPdfBookmarkModel(h: self)
  let slotval1 = gen_qabstractitemmodel_types.QModelIndex(h: index)
  let slotval2 = gen_qabstractitemmodel_types.QModelRoleDataSpan(h: roleDataSpan)
  vtbl[].multiData(self, slotval1, slotval2)

proc fcQPdfBookmarkModel_vtable_callback_submit(self: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QPdfBookmarkModelVTable](fcQPdfBookmarkModel_vdata(self)[])
  let self = QPdfBookmarkModel(h: self)
  var virtualReturn = vtbl[].submit(self)
  virtualReturn

proc fcQPdfBookmarkModel_vtable_callback_revert(self: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QPdfBookmarkModelVTable](fcQPdfBookmarkModel_vdata(self)[])
  let self = QPdfBookmarkModel(h: self)
  vtbl[].revert(self)

proc fcQPdfBookmarkModel_vtable_callback_resetInternalData(self: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QPdfBookmarkModelVTable](fcQPdfBookmarkModel_vdata(self)[])
  let self = QPdfBookmarkModel(h: self)
  vtbl[].resetInternalData(self)

proc fcQPdfBookmarkModel_vtable_callback_event(self: pointer, event: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QPdfBookmarkModelVTable](fcQPdfBookmarkModel_vdata(self)[])
  let self = QPdfBookmarkModel(h: self)
  let slotval1 = gen_qcoreevent_types.QEvent(h: event)
  var virtualReturn = vtbl[].event(self, slotval1)
  virtualReturn

proc fcQPdfBookmarkModel_vtable_callback_eventFilter(self: pointer, watched: pointer, event: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QPdfBookmarkModelVTable](fcQPdfBookmarkModel_vdata(self)[])
  let self = QPdfBookmarkModel(h: self)
  let slotval1 = gen_qobject_types.QObject(h: watched)
  let slotval2 = gen_qcoreevent_types.QEvent(h: event)
  var virtualReturn = vtbl[].eventFilter(self, slotval1, slotval2)
  virtualReturn

proc fcQPdfBookmarkModel_vtable_callback_timerEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QPdfBookmarkModelVTable](fcQPdfBookmarkModel_vdata(self)[])
  let self = QPdfBookmarkModel(h: self)
  let slotval1 = gen_qcoreevent_types.QTimerEvent(h: event)
  vtbl[].timerEvent(self, slotval1)

proc fcQPdfBookmarkModel_vtable_callback_childEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QPdfBookmarkModelVTable](fcQPdfBookmarkModel_vdata(self)[])
  let self = QPdfBookmarkModel(h: self)
  let slotval1 = gen_qcoreevent_types.QChildEvent(h: event)
  vtbl[].childEvent(self, slotval1)

proc fcQPdfBookmarkModel_vtable_callback_customEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QPdfBookmarkModelVTable](fcQPdfBookmarkModel_vdata(self)[])
  let self = QPdfBookmarkModel(h: self)
  let slotval1 = gen_qcoreevent_types.QEvent(h: event)
  vtbl[].customEvent(self, slotval1)

proc fcQPdfBookmarkModel_vtable_callback_connectNotify(self: pointer, signal: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QPdfBookmarkModelVTable](fcQPdfBookmarkModel_vdata(self)[])
  let self = QPdfBookmarkModel(h: self)
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal)
  vtbl[].connectNotify(self, slotval1)

proc fcQPdfBookmarkModel_vtable_callback_disconnectNotify(self: pointer, signal: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QPdfBookmarkModelVTable](fcQPdfBookmarkModel_vdata(self)[])
  let self = QPdfBookmarkModel(h: self)
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal)
  vtbl[].disconnectNotify(self, slotval1)

type VirtualQPdfBookmarkModel* {.inheritable.} = ref object of QPdfBookmarkModel
  vtbl*: cQPdfBookmarkModelVTable

method metaObject*(self: VirtualQPdfBookmarkModel): gen_qobjectdefs_types.QMetaObject {.base.} =
  QPdfBookmarkModelmetaObject(self[])
method metacast*(self: VirtualQPdfBookmarkModel, param1: cstring): pointer {.base.} =
  QPdfBookmarkModelmetacast(self[], param1)
method metacall*(self: VirtualQPdfBookmarkModel, param1: cint, param2: cint, param3: pointer): cint {.base.} =
  QPdfBookmarkModelmetacall(self[], param1, param2, param3)
method data*(self: VirtualQPdfBookmarkModel, index: gen_qabstractitemmodel_types.QModelIndex, role: cint): gen_qvariant_types.QVariant {.base.} =
  QPdfBookmarkModeldata(self[], index, role)
method index*(self: VirtualQPdfBookmarkModel, row: cint, column: cint, parent: gen_qabstractitemmodel_types.QModelIndex): gen_qabstractitemmodel_types.QModelIndex {.base.} =
  QPdfBookmarkModelindex(self[], row, column, parent)
method parent*(self: VirtualQPdfBookmarkModel, index: gen_qabstractitemmodel_types.QModelIndex): gen_qabstractitemmodel_types.QModelIndex {.base.} =
  QPdfBookmarkModelparent(self[], index)
method rowCount*(self: VirtualQPdfBookmarkModel, parent: gen_qabstractitemmodel_types.QModelIndex): cint {.base.} =
  QPdfBookmarkModelrowCount(self[], parent)
method columnCount*(self: VirtualQPdfBookmarkModel, parent: gen_qabstractitemmodel_types.QModelIndex): cint {.base.} =
  QPdfBookmarkModelcolumnCount(self[], parent)
method roleNames*(self: VirtualQPdfBookmarkModel): Table[cint,seq[byte]] {.base.} =
  QPdfBookmarkModelroleNames(self[])
method sibling*(self: VirtualQPdfBookmarkModel, row: cint, column: cint, idx: gen_qabstractitemmodel_types.QModelIndex): gen_qabstractitemmodel_types.QModelIndex {.base.} =
  QPdfBookmarkModelsibling(self[], row, column, idx)
method hasChildren*(self: VirtualQPdfBookmarkModel, parent: gen_qabstractitemmodel_types.QModelIndex): bool {.base.} =
  QPdfBookmarkModelhasChildren(self[], parent)
method setData*(self: VirtualQPdfBookmarkModel, index: gen_qabstractitemmodel_types.QModelIndex, value: gen_qvariant_types.QVariant, role: cint): bool {.base.} =
  QPdfBookmarkModelsetData(self[], index, value, role)
method headerData*(self: VirtualQPdfBookmarkModel, section: cint, orientation: cint, role: cint): gen_qvariant_types.QVariant {.base.} =
  QPdfBookmarkModelheaderData(self[], section, orientation, role)
method setHeaderData*(self: VirtualQPdfBookmarkModel, section: cint, orientation: cint, value: gen_qvariant_types.QVariant, role: cint): bool {.base.} =
  QPdfBookmarkModelsetHeaderData(self[], section, orientation, value, role)
method itemData*(self: VirtualQPdfBookmarkModel, index: gen_qabstractitemmodel_types.QModelIndex): Table[cint,gen_qvariant_types.QVariant] {.base.} =
  QPdfBookmarkModelitemData(self[], index)
method setItemData*(self: VirtualQPdfBookmarkModel, index: gen_qabstractitemmodel_types.QModelIndex, roles: Table[cint,gen_qvariant_types.QVariant]): bool {.base.} =
  QPdfBookmarkModelsetItemData(self[], index, roles)
method clearItemData*(self: VirtualQPdfBookmarkModel, index: gen_qabstractitemmodel_types.QModelIndex): bool {.base.} =
  QPdfBookmarkModelclearItemData(self[], index)
method mimeTypes*(self: VirtualQPdfBookmarkModel): seq[string] {.base.} =
  QPdfBookmarkModelmimeTypes(self[])
method mimeData*(self: VirtualQPdfBookmarkModel, indexes: openArray[gen_qabstractitemmodel_types.QModelIndex]): gen_qmimedata_types.QMimeData {.base.} =
  QPdfBookmarkModelmimeData(self[], indexes)
method canDropMimeData*(self: VirtualQPdfBookmarkModel, data: gen_qmimedata_types.QMimeData, action: cint, row: cint, column: cint, parent: gen_qabstractitemmodel_types.QModelIndex): bool {.base.} =
  QPdfBookmarkModelcanDropMimeData(self[], data, action, row, column, parent)
method dropMimeData*(self: VirtualQPdfBookmarkModel, data: gen_qmimedata_types.QMimeData, action: cint, row: cint, column: cint, parent: gen_qabstractitemmodel_types.QModelIndex): bool {.base.} =
  QPdfBookmarkModeldropMimeData(self[], data, action, row, column, parent)
method supportedDropActions*(self: VirtualQPdfBookmarkModel): cint {.base.} =
  QPdfBookmarkModelsupportedDropActions(self[])
method supportedDragActions*(self: VirtualQPdfBookmarkModel): cint {.base.} =
  QPdfBookmarkModelsupportedDragActions(self[])
method insertRows*(self: VirtualQPdfBookmarkModel, row: cint, count: cint, parent: gen_qabstractitemmodel_types.QModelIndex): bool {.base.} =
  QPdfBookmarkModelinsertRows(self[], row, count, parent)
method insertColumns*(self: VirtualQPdfBookmarkModel, column: cint, count: cint, parent: gen_qabstractitemmodel_types.QModelIndex): bool {.base.} =
  QPdfBookmarkModelinsertColumns(self[], column, count, parent)
method removeRows*(self: VirtualQPdfBookmarkModel, row: cint, count: cint, parent: gen_qabstractitemmodel_types.QModelIndex): bool {.base.} =
  QPdfBookmarkModelremoveRows(self[], row, count, parent)
method removeColumns*(self: VirtualQPdfBookmarkModel, column: cint, count: cint, parent: gen_qabstractitemmodel_types.QModelIndex): bool {.base.} =
  QPdfBookmarkModelremoveColumns(self[], column, count, parent)
method moveRows*(self: VirtualQPdfBookmarkModel, sourceParent: gen_qabstractitemmodel_types.QModelIndex, sourceRow: cint, count: cint, destinationParent: gen_qabstractitemmodel_types.QModelIndex, destinationChild: cint): bool {.base.} =
  QPdfBookmarkModelmoveRows(self[], sourceParent, sourceRow, count, destinationParent, destinationChild)
method moveColumns*(self: VirtualQPdfBookmarkModel, sourceParent: gen_qabstractitemmodel_types.QModelIndex, sourceColumn: cint, count: cint, destinationParent: gen_qabstractitemmodel_types.QModelIndex, destinationChild: cint): bool {.base.} =
  QPdfBookmarkModelmoveColumns(self[], sourceParent, sourceColumn, count, destinationParent, destinationChild)
method fetchMore*(self: VirtualQPdfBookmarkModel, parent: gen_qabstractitemmodel_types.QModelIndex): void {.base.} =
  QPdfBookmarkModelfetchMore(self[], parent)
method canFetchMore*(self: VirtualQPdfBookmarkModel, parent: gen_qabstractitemmodel_types.QModelIndex): bool {.base.} =
  QPdfBookmarkModelcanFetchMore(self[], parent)
method flags*(self: VirtualQPdfBookmarkModel, index: gen_qabstractitemmodel_types.QModelIndex): cint {.base.} =
  QPdfBookmarkModelflags(self[], index)
method sort*(self: VirtualQPdfBookmarkModel, column: cint, order: cint): void {.base.} =
  QPdfBookmarkModelsort(self[], column, order)
method buddy*(self: VirtualQPdfBookmarkModel, index: gen_qabstractitemmodel_types.QModelIndex): gen_qabstractitemmodel_types.QModelIndex {.base.} =
  QPdfBookmarkModelbuddy(self[], index)
method match*(self: VirtualQPdfBookmarkModel, start: gen_qabstractitemmodel_types.QModelIndex, role: cint, value: gen_qvariant_types.QVariant, hits: cint, flags: cint): seq[gen_qabstractitemmodel_types.QModelIndex] {.base.} =
  QPdfBookmarkModelmatch(self[], start, role, value, hits, flags)
method span*(self: VirtualQPdfBookmarkModel, index: gen_qabstractitemmodel_types.QModelIndex): gen_qsize_types.QSize {.base.} =
  QPdfBookmarkModelspan(self[], index)
method multiData*(self: VirtualQPdfBookmarkModel, index: gen_qabstractitemmodel_types.QModelIndex, roleDataSpan: gen_qabstractitemmodel_types.QModelRoleDataSpan): void {.base.} =
  QPdfBookmarkModelmultiData(self[], index, roleDataSpan)
method submit*(self: VirtualQPdfBookmarkModel): bool {.base.} =
  QPdfBookmarkModelsubmit(self[])
method revert*(self: VirtualQPdfBookmarkModel): void {.base.} =
  QPdfBookmarkModelrevert(self[])
method resetInternalData*(self: VirtualQPdfBookmarkModel): void {.base.} =
  QPdfBookmarkModelresetInternalData(self[])
method event*(self: VirtualQPdfBookmarkModel, event: gen_qcoreevent_types.QEvent): bool {.base.} =
  QPdfBookmarkModelevent(self[], event)
method eventFilter*(self: VirtualQPdfBookmarkModel, watched: gen_qobject_types.QObject, event: gen_qcoreevent_types.QEvent): bool {.base.} =
  QPdfBookmarkModeleventFilter(self[], watched, event)
method timerEvent*(self: VirtualQPdfBookmarkModel, event: gen_qcoreevent_types.QTimerEvent): void {.base.} =
  QPdfBookmarkModeltimerEvent(self[], event)
method childEvent*(self: VirtualQPdfBookmarkModel, event: gen_qcoreevent_types.QChildEvent): void {.base.} =
  QPdfBookmarkModelchildEvent(self[], event)
method customEvent*(self: VirtualQPdfBookmarkModel, event: gen_qcoreevent_types.QEvent): void {.base.} =
  QPdfBookmarkModelcustomEvent(self[], event)
method connectNotify*(self: VirtualQPdfBookmarkModel, signal: gen_qmetaobject_types.QMetaMethod): void {.base.} =
  QPdfBookmarkModelconnectNotify(self[], signal)
method disconnectNotify*(self: VirtualQPdfBookmarkModel, signal: gen_qmetaobject_types.QMetaMethod): void {.base.} =
  QPdfBookmarkModeldisconnectNotify(self[], signal)

proc fcQPdfBookmarkModel_method_callback_metaObject(self: pointer): pointer {.cdecl.} =
  let inst = cast[VirtualQPdfBookmarkModel](fcQPdfBookmarkModel_vdata(self)[])
  var virtualReturn = inst.metaObject()
  virtualReturn.h

proc fcQPdfBookmarkModel_method_callback_metacast(self: pointer, param1: cstring): pointer {.cdecl.} =
  let inst = cast[VirtualQPdfBookmarkModel](fcQPdfBookmarkModel_vdata(self)[])
  let slotval1 = (param1)
  var virtualReturn = inst.metacast(slotval1)
  virtualReturn

proc fcQPdfBookmarkModel_method_callback_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.cdecl.} =
  let inst = cast[VirtualQPdfBookmarkModel](fcQPdfBookmarkModel_vdata(self)[])
  let slotval1 = cint(param1)
  let slotval2 = param2
  let slotval3 = param3
  var virtualReturn = inst.metacall(slotval1, slotval2, slotval3)
  virtualReturn

proc fcQPdfBookmarkModel_method_callback_data(self: pointer, index: pointer, role: cint): pointer {.cdecl.} =
  let inst = cast[VirtualQPdfBookmarkModel](fcQPdfBookmarkModel_vdata(self)[])
  let slotval1 = gen_qabstractitemmodel_types.QModelIndex(h: index)
  let slotval2 = role
  var virtualReturn = inst.data(slotval1, slotval2)
  virtualReturn.h

proc fcQPdfBookmarkModel_method_callback_index(self: pointer, row: cint, column: cint, parent: pointer): pointer {.cdecl.} =
  let inst = cast[VirtualQPdfBookmarkModel](fcQPdfBookmarkModel_vdata(self)[])
  let slotval1 = row
  let slotval2 = column
  let slotval3 = gen_qabstractitemmodel_types.QModelIndex(h: parent)
  var virtualReturn = inst.index(slotval1, slotval2, slotval3)
  virtualReturn.h

proc fcQPdfBookmarkModel_method_callback_parent(self: pointer, index: pointer): pointer {.cdecl.} =
  let inst = cast[VirtualQPdfBookmarkModel](fcQPdfBookmarkModel_vdata(self)[])
  let slotval1 = gen_qabstractitemmodel_types.QModelIndex(h: index)
  var virtualReturn = inst.parent(slotval1)
  virtualReturn.h

proc fcQPdfBookmarkModel_method_callback_rowCount(self: pointer, parent: pointer): cint {.cdecl.} =
  let inst = cast[VirtualQPdfBookmarkModel](fcQPdfBookmarkModel_vdata(self)[])
  let slotval1 = gen_qabstractitemmodel_types.QModelIndex(h: parent)
  var virtualReturn = inst.rowCount(slotval1)
  virtualReturn

proc fcQPdfBookmarkModel_method_callback_columnCount(self: pointer, parent: pointer): cint {.cdecl.} =
  let inst = cast[VirtualQPdfBookmarkModel](fcQPdfBookmarkModel_vdata(self)[])
  let slotval1 = gen_qabstractitemmodel_types.QModelIndex(h: parent)
  var virtualReturn = inst.columnCount(slotval1)
  virtualReturn

proc fcQPdfBookmarkModel_method_callback_roleNames(self: pointer): struct_seaqt_map {.cdecl.} =
  let inst = cast[VirtualQPdfBookmarkModel](fcQPdfBookmarkModel_vdata(self)[])
  var virtualReturn = inst.roleNames()
  var virtualReturn_Keys_CArray = cast[ptr UncheckedArray[cint]](if len(virtualReturn) > 0: c_malloc(csize_t(sizeof(cint) * len(virtualReturn))) else: nil)
  var virtualReturn_Values_CArray = cast[ptr UncheckedArray[struct_seaqt_string]](if len(virtualReturn) > 0: c_malloc(csize_t(sizeof(struct_seaqt_string) * len(virtualReturn))) else: nil)
  var virtualReturn_ctr = 0
  for virtualReturn_k, virtualReturn_v in virtualReturn:
    virtualReturn_Keys_CArray[virtualReturn_ctr] = virtualReturn_k
    var virtualReturn_v_copy = if len(virtualReturn_v) > 0: c_malloc(csize_t(len(virtualReturn_v))) else: nil
    if len(virtualReturn_v) > 0: copyMem(virtualReturn_v_copy, addr virtualReturn_v[0], csize_t(len(virtualReturn_v)))
    virtualReturn_Values_CArray[virtualReturn_ctr] = struct_seaqt_string(data: virtualReturn_v_copy, len: csize_t(len(virtualReturn_v)))
    virtualReturn_ctr += 1

  struct_seaqt_map(len: csize_t(len(virtualReturn)),keys: if len(virtualReturn) == 0: nil else: addr(virtualReturn_Keys_CArray[0]), values: if len(virtualReturn) == 0: nil else: addr(virtualReturn_Values_CArray[0]),)

proc fcQPdfBookmarkModel_method_callback_sibling(self: pointer, row: cint, column: cint, idx: pointer): pointer {.cdecl.} =
  let inst = cast[VirtualQPdfBookmarkModel](fcQPdfBookmarkModel_vdata(self)[])
  let slotval1 = row
  let slotval2 = column
  let slotval3 = gen_qabstractitemmodel_types.QModelIndex(h: idx)
  var virtualReturn = inst.sibling(slotval1, slotval2, slotval3)
  virtualReturn.h

proc fcQPdfBookmarkModel_method_callback_hasChildren(self: pointer, parent: pointer): bool {.cdecl.} =
  let inst = cast[VirtualQPdfBookmarkModel](fcQPdfBookmarkModel_vdata(self)[])
  let slotval1 = gen_qabstractitemmodel_types.QModelIndex(h: parent)
  var virtualReturn = inst.hasChildren(slotval1)
  virtualReturn

proc fcQPdfBookmarkModel_method_callback_setData(self: pointer, index: pointer, value: pointer, role: cint): bool {.cdecl.} =
  let inst = cast[VirtualQPdfBookmarkModel](fcQPdfBookmarkModel_vdata(self)[])
  let slotval1 = gen_qabstractitemmodel_types.QModelIndex(h: index)
  let slotval2 = gen_qvariant_types.QVariant(h: value)
  let slotval3 = role
  var virtualReturn = inst.setData(slotval1, slotval2, slotval3)
  virtualReturn

proc fcQPdfBookmarkModel_method_callback_headerData(self: pointer, section: cint, orientation: cint, role: cint): pointer {.cdecl.} =
  let inst = cast[VirtualQPdfBookmarkModel](fcQPdfBookmarkModel_vdata(self)[])
  let slotval1 = section
  let slotval2 = cint(orientation)
  let slotval3 = role
  var virtualReturn = inst.headerData(slotval1, slotval2, slotval3)
  virtualReturn.h

proc fcQPdfBookmarkModel_method_callback_setHeaderData(self: pointer, section: cint, orientation: cint, value: pointer, role: cint): bool {.cdecl.} =
  let inst = cast[VirtualQPdfBookmarkModel](fcQPdfBookmarkModel_vdata(self)[])
  let slotval1 = section
  let slotval2 = cint(orientation)
  let slotval3 = gen_qvariant_types.QVariant(h: value)
  let slotval4 = role
  var virtualReturn = inst.setHeaderData(slotval1, slotval2, slotval3, slotval4)
  virtualReturn

proc fcQPdfBookmarkModel_method_callback_itemData(self: pointer, index: pointer): struct_seaqt_map {.cdecl.} =
  let inst = cast[VirtualQPdfBookmarkModel](fcQPdfBookmarkModel_vdata(self)[])
  let slotval1 = gen_qabstractitemmodel_types.QModelIndex(h: index)
  var virtualReturn = inst.itemData(slotval1)
  var virtualReturn_Keys_CArray = cast[ptr UncheckedArray[cint]](if len(virtualReturn) > 0: c_malloc(csize_t(sizeof(cint) * len(virtualReturn))) else: nil)
  var virtualReturn_Values_CArray = cast[ptr UncheckedArray[pointer]](if len(virtualReturn) > 0: c_malloc(csize_t(sizeof(pointer) * len(virtualReturn))) else: nil)
  var virtualReturn_ctr = 0
  for virtualReturn_k, virtualReturn_v in virtualReturn:
    virtualReturn_Keys_CArray[virtualReturn_ctr] = virtualReturn_k
    virtualReturn_Values_CArray[virtualReturn_ctr] = virtualReturn_v.h
    virtualReturn_ctr += 1

  struct_seaqt_map(len: csize_t(len(virtualReturn)),keys: if len(virtualReturn) == 0: nil else: addr(virtualReturn_Keys_CArray[0]), values: if len(virtualReturn) == 0: nil else: addr(virtualReturn_Values_CArray[0]),)

proc fcQPdfBookmarkModel_method_callback_setItemData(self: pointer, index: pointer, roles: struct_seaqt_map): bool {.cdecl.} =
  let inst = cast[VirtualQPdfBookmarkModel](fcQPdfBookmarkModel_vdata(self)[])
  let slotval1 = gen_qabstractitemmodel_types.QModelIndex(h: index)
  var vroles_mm = roles
  var vrolesx_ret: Table[cint, gen_qvariant_types.QVariant]
  var vroles_Keys = cast[ptr UncheckedArray[cint]](vroles_mm.keys)
  var vroles_Values = cast[ptr UncheckedArray[pointer]](vroles_mm.values)
  for i in 0..<vroles_mm.len:
    var vroles_entry_Key = vroles_Keys[i]

    var vroles_entry_Value = gen_qvariant_types.QVariant(h: vroles_Values[i])

    vrolesx_ret[vroles_entry_Key] = vroles_entry_Value
  c_free(vroles_mm.keys)
  c_free(vroles_mm.values)
  let slotval2 = vrolesx_ret
  var virtualReturn = inst.setItemData(slotval1, slotval2)
  virtualReturn

proc fcQPdfBookmarkModel_method_callback_clearItemData(self: pointer, index: pointer): bool {.cdecl.} =
  let inst = cast[VirtualQPdfBookmarkModel](fcQPdfBookmarkModel_vdata(self)[])
  let slotval1 = gen_qabstractitemmodel_types.QModelIndex(h: index)
  var virtualReturn = inst.clearItemData(slotval1)
  virtualReturn

proc fcQPdfBookmarkModel_method_callback_mimeTypes(self: pointer): struct_seaqt_array {.cdecl.} =
  let inst = cast[VirtualQPdfBookmarkModel](fcQPdfBookmarkModel_vdata(self)[])
  var virtualReturn = inst.mimeTypes()
  var virtualReturn_CArray = cast[ptr UncheckedArray[struct_seaqt_string]](if len(virtualReturn) > 0: c_malloc(c_sizet(sizeof(struct_seaqt_string) * len(virtualReturn))) else: nil)
  for i in 0..<len(virtualReturn):
    var virtualReturn_i_copy = if len(virtualReturn[i]) > 0: c_malloc(csize_t(len(virtualReturn[i]))) else: nil
    if len(virtualReturn[i]) > 0: copyMem(virtualReturn_i_copy, addr virtualReturn[i][0], csize_t(len(virtualReturn[i])))
    virtualReturn_CArray[i] = struct_seaqt_string(data: virtualReturn_i_copy, len: csize_t(len(virtualReturn[i])))

  struct_seaqt_array(len: csize_t(len(virtualReturn)), data: if len(virtualReturn) == 0: nil else: addr(virtualReturn_CArray[0]))

proc fcQPdfBookmarkModel_method_callback_mimeData(self: pointer, indexes: struct_seaqt_array): pointer {.cdecl.} =
  let inst = cast[VirtualQPdfBookmarkModel](fcQPdfBookmarkModel_vdata(self)[])
  var vindexes_ma = indexes
  var vindexesx_ret = newSeq[gen_qabstractitemmodel_types.QModelIndex](int(vindexes_ma.len))
  let vindexes_outCast = cast[ptr UncheckedArray[pointer]](vindexes_ma.data)
  for i in 0 ..< vindexes_ma.len:
    vindexesx_ret[i] = gen_qabstractitemmodel_types.QModelIndex(h: vindexes_outCast[i])
  c_free(vindexes_ma.data)
  let slotval1 = vindexesx_ret
  var virtualReturn = inst.mimeData(slotval1)
  virtualReturn.h

proc fcQPdfBookmarkModel_method_callback_canDropMimeData(self: pointer, data: pointer, action: cint, row: cint, column: cint, parent: pointer): bool {.cdecl.} =
  let inst = cast[VirtualQPdfBookmarkModel](fcQPdfBookmarkModel_vdata(self)[])
  let slotval1 = gen_qmimedata_types.QMimeData(h: data)
  let slotval2 = cint(action)
  let slotval3 = row
  let slotval4 = column
  let slotval5 = gen_qabstractitemmodel_types.QModelIndex(h: parent)
  var virtualReturn = inst.canDropMimeData(slotval1, slotval2, slotval3, slotval4, slotval5)
  virtualReturn

proc fcQPdfBookmarkModel_method_callback_dropMimeData(self: pointer, data: pointer, action: cint, row: cint, column: cint, parent: pointer): bool {.cdecl.} =
  let inst = cast[VirtualQPdfBookmarkModel](fcQPdfBookmarkModel_vdata(self)[])
  let slotval1 = gen_qmimedata_types.QMimeData(h: data)
  let slotval2 = cint(action)
  let slotval3 = row
  let slotval4 = column
  let slotval5 = gen_qabstractitemmodel_types.QModelIndex(h: parent)
  var virtualReturn = inst.dropMimeData(slotval1, slotval2, slotval3, slotval4, slotval5)
  virtualReturn

proc fcQPdfBookmarkModel_method_callback_supportedDropActions(self: pointer): cint {.cdecl.} =
  let inst = cast[VirtualQPdfBookmarkModel](fcQPdfBookmarkModel_vdata(self)[])
  var virtualReturn = inst.supportedDropActions()
  cint(virtualReturn)

proc fcQPdfBookmarkModel_method_callback_supportedDragActions(self: pointer): cint {.cdecl.} =
  let inst = cast[VirtualQPdfBookmarkModel](fcQPdfBookmarkModel_vdata(self)[])
  var virtualReturn = inst.supportedDragActions()
  cint(virtualReturn)

proc fcQPdfBookmarkModel_method_callback_insertRows(self: pointer, row: cint, count: cint, parent: pointer): bool {.cdecl.} =
  let inst = cast[VirtualQPdfBookmarkModel](fcQPdfBookmarkModel_vdata(self)[])
  let slotval1 = row
  let slotval2 = count
  let slotval3 = gen_qabstractitemmodel_types.QModelIndex(h: parent)
  var virtualReturn = inst.insertRows(slotval1, slotval2, slotval3)
  virtualReturn

proc fcQPdfBookmarkModel_method_callback_insertColumns(self: pointer, column: cint, count: cint, parent: pointer): bool {.cdecl.} =
  let inst = cast[VirtualQPdfBookmarkModel](fcQPdfBookmarkModel_vdata(self)[])
  let slotval1 = column
  let slotval2 = count
  let slotval3 = gen_qabstractitemmodel_types.QModelIndex(h: parent)
  var virtualReturn = inst.insertColumns(slotval1, slotval2, slotval3)
  virtualReturn

proc fcQPdfBookmarkModel_method_callback_removeRows(self: pointer, row: cint, count: cint, parent: pointer): bool {.cdecl.} =
  let inst = cast[VirtualQPdfBookmarkModel](fcQPdfBookmarkModel_vdata(self)[])
  let slotval1 = row
  let slotval2 = count
  let slotval3 = gen_qabstractitemmodel_types.QModelIndex(h: parent)
  var virtualReturn = inst.removeRows(slotval1, slotval2, slotval3)
  virtualReturn

proc fcQPdfBookmarkModel_method_callback_removeColumns(self: pointer, column: cint, count: cint, parent: pointer): bool {.cdecl.} =
  let inst = cast[VirtualQPdfBookmarkModel](fcQPdfBookmarkModel_vdata(self)[])
  let slotval1 = column
  let slotval2 = count
  let slotval3 = gen_qabstractitemmodel_types.QModelIndex(h: parent)
  var virtualReturn = inst.removeColumns(slotval1, slotval2, slotval3)
  virtualReturn

proc fcQPdfBookmarkModel_method_callback_moveRows(self: pointer, sourceParent: pointer, sourceRow: cint, count: cint, destinationParent: pointer, destinationChild: cint): bool {.cdecl.} =
  let inst = cast[VirtualQPdfBookmarkModel](fcQPdfBookmarkModel_vdata(self)[])
  let slotval1 = gen_qabstractitemmodel_types.QModelIndex(h: sourceParent)
  let slotval2 = sourceRow
  let slotval3 = count
  let slotval4 = gen_qabstractitemmodel_types.QModelIndex(h: destinationParent)
  let slotval5 = destinationChild
  var virtualReturn = inst.moveRows(slotval1, slotval2, slotval3, slotval4, slotval5)
  virtualReturn

proc fcQPdfBookmarkModel_method_callback_moveColumns(self: pointer, sourceParent: pointer, sourceColumn: cint, count: cint, destinationParent: pointer, destinationChild: cint): bool {.cdecl.} =
  let inst = cast[VirtualQPdfBookmarkModel](fcQPdfBookmarkModel_vdata(self)[])
  let slotval1 = gen_qabstractitemmodel_types.QModelIndex(h: sourceParent)
  let slotval2 = sourceColumn
  let slotval3 = count
  let slotval4 = gen_qabstractitemmodel_types.QModelIndex(h: destinationParent)
  let slotval5 = destinationChild
  var virtualReturn = inst.moveColumns(slotval1, slotval2, slotval3, slotval4, slotval5)
  virtualReturn

proc fcQPdfBookmarkModel_method_callback_fetchMore(self: pointer, parent: pointer): void {.cdecl.} =
  let inst = cast[VirtualQPdfBookmarkModel](fcQPdfBookmarkModel_vdata(self)[])
  let slotval1 = gen_qabstractitemmodel_types.QModelIndex(h: parent)
  inst.fetchMore(slotval1)

proc fcQPdfBookmarkModel_method_callback_canFetchMore(self: pointer, parent: pointer): bool {.cdecl.} =
  let inst = cast[VirtualQPdfBookmarkModel](fcQPdfBookmarkModel_vdata(self)[])
  let slotval1 = gen_qabstractitemmodel_types.QModelIndex(h: parent)
  var virtualReturn = inst.canFetchMore(slotval1)
  virtualReturn

proc fcQPdfBookmarkModel_method_callback_flags(self: pointer, index: pointer): cint {.cdecl.} =
  let inst = cast[VirtualQPdfBookmarkModel](fcQPdfBookmarkModel_vdata(self)[])
  let slotval1 = gen_qabstractitemmodel_types.QModelIndex(h: index)
  var virtualReturn = inst.flags(slotval1)
  cint(virtualReturn)

proc fcQPdfBookmarkModel_method_callback_sort(self: pointer, column: cint, order: cint): void {.cdecl.} =
  let inst = cast[VirtualQPdfBookmarkModel](fcQPdfBookmarkModel_vdata(self)[])
  let slotval1 = column
  let slotval2 = cint(order)
  inst.sort(slotval1, slotval2)

proc fcQPdfBookmarkModel_method_callback_buddy(self: pointer, index: pointer): pointer {.cdecl.} =
  let inst = cast[VirtualQPdfBookmarkModel](fcQPdfBookmarkModel_vdata(self)[])
  let slotval1 = gen_qabstractitemmodel_types.QModelIndex(h: index)
  var virtualReturn = inst.buddy(slotval1)
  virtualReturn.h

proc fcQPdfBookmarkModel_method_callback_match(self: pointer, start: pointer, role: cint, value: pointer, hits: cint, flags: cint): struct_seaqt_array {.cdecl.} =
  let inst = cast[VirtualQPdfBookmarkModel](fcQPdfBookmarkModel_vdata(self)[])
  let slotval1 = gen_qabstractitemmodel_types.QModelIndex(h: start)
  let slotval2 = role
  let slotval3 = gen_qvariant_types.QVariant(h: value)
  let slotval4 = hits
  let slotval5 = cint(flags)
  var virtualReturn = inst.match(slotval1, slotval2, slotval3, slotval4, slotval5)
  var virtualReturn_CArray = cast[ptr UncheckedArray[pointer]](if len(virtualReturn) > 0: c_malloc(c_sizet(sizeof(pointer) * len(virtualReturn))) else: nil)
  for i in 0..<len(virtualReturn):
    virtualReturn_CArray[i] = virtualReturn[i].h

  struct_seaqt_array(len: csize_t(len(virtualReturn)), data: if len(virtualReturn) == 0: nil else: addr(virtualReturn_CArray[0]))

proc fcQPdfBookmarkModel_method_callback_span(self: pointer, index: pointer): pointer {.cdecl.} =
  let inst = cast[VirtualQPdfBookmarkModel](fcQPdfBookmarkModel_vdata(self)[])
  let slotval1 = gen_qabstractitemmodel_types.QModelIndex(h: index)
  var virtualReturn = inst.span(slotval1)
  virtualReturn.h

proc fcQPdfBookmarkModel_method_callback_multiData(self: pointer, index: pointer, roleDataSpan: pointer): void {.cdecl.} =
  let inst = cast[VirtualQPdfBookmarkModel](fcQPdfBookmarkModel_vdata(self)[])
  let slotval1 = gen_qabstractitemmodel_types.QModelIndex(h: index)
  let slotval2 = gen_qabstractitemmodel_types.QModelRoleDataSpan(h: roleDataSpan)
  inst.multiData(slotval1, slotval2)

proc fcQPdfBookmarkModel_method_callback_submit(self: pointer): bool {.cdecl.} =
  let inst = cast[VirtualQPdfBookmarkModel](fcQPdfBookmarkModel_vdata(self)[])
  var virtualReturn = inst.submit()
  virtualReturn

proc fcQPdfBookmarkModel_method_callback_revert(self: pointer): void {.cdecl.} =
  let inst = cast[VirtualQPdfBookmarkModel](fcQPdfBookmarkModel_vdata(self)[])
  inst.revert()

proc fcQPdfBookmarkModel_method_callback_resetInternalData(self: pointer): void {.cdecl.} =
  let inst = cast[VirtualQPdfBookmarkModel](fcQPdfBookmarkModel_vdata(self)[])
  inst.resetInternalData()

proc fcQPdfBookmarkModel_method_callback_event(self: pointer, event: pointer): bool {.cdecl.} =
  let inst = cast[VirtualQPdfBookmarkModel](fcQPdfBookmarkModel_vdata(self)[])
  let slotval1 = gen_qcoreevent_types.QEvent(h: event)
  var virtualReturn = inst.event(slotval1)
  virtualReturn

proc fcQPdfBookmarkModel_method_callback_eventFilter(self: pointer, watched: pointer, event: pointer): bool {.cdecl.} =
  let inst = cast[VirtualQPdfBookmarkModel](fcQPdfBookmarkModel_vdata(self)[])
  let slotval1 = gen_qobject_types.QObject(h: watched)
  let slotval2 = gen_qcoreevent_types.QEvent(h: event)
  var virtualReturn = inst.eventFilter(slotval1, slotval2)
  virtualReturn

proc fcQPdfBookmarkModel_method_callback_timerEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQPdfBookmarkModel](fcQPdfBookmarkModel_vdata(self)[])
  let slotval1 = gen_qcoreevent_types.QTimerEvent(h: event)
  inst.timerEvent(slotval1)

proc fcQPdfBookmarkModel_method_callback_childEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQPdfBookmarkModel](fcQPdfBookmarkModel_vdata(self)[])
  let slotval1 = gen_qcoreevent_types.QChildEvent(h: event)
  inst.childEvent(slotval1)

proc fcQPdfBookmarkModel_method_callback_customEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQPdfBookmarkModel](fcQPdfBookmarkModel_vdata(self)[])
  let slotval1 = gen_qcoreevent_types.QEvent(h: event)
  inst.customEvent(slotval1)

proc fcQPdfBookmarkModel_method_callback_connectNotify(self: pointer, signal: pointer): void {.cdecl.} =
  let inst = cast[VirtualQPdfBookmarkModel](fcQPdfBookmarkModel_vdata(self)[])
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal)
  inst.connectNotify(slotval1)

proc fcQPdfBookmarkModel_method_callback_disconnectNotify(self: pointer, signal: pointer): void {.cdecl.} =
  let inst = cast[VirtualQPdfBookmarkModel](fcQPdfBookmarkModel_vdata(self)[])
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal)
  inst.disconnectNotify(slotval1)


proc createIndex*(self: gen_qpdfbookmarkmodel_types.QPdfBookmarkModel, row: cint, column: cint): gen_qabstractitemmodel_types.QModelIndex =
  gen_qabstractitemmodel_types.QModelIndex(h: fcQPdfBookmarkModel_protectedbase_createIndex(self.h, row, column))

proc encodeData*(self: gen_qpdfbookmarkmodel_types.QPdfBookmarkModel, indexes: openArray[gen_qabstractitemmodel_types.QModelIndex], stream: gen_qdatastream_types.QDataStream): void =
  var indexes_CArray = newSeq[pointer](len(indexes))
  for i in 0..<len(indexes):
    indexes_CArray[i] = indexes[i].h

  fcQPdfBookmarkModel_protectedbase_encodeData(self.h, struct_seaqt_array(len: csize_t(len(indexes)), data: if len(indexes) == 0: nil else: addr(indexes_CArray[0])), stream.h)

proc decodeData*(self: gen_qpdfbookmarkmodel_types.QPdfBookmarkModel, row: cint, column: cint, parent: gen_qabstractitemmodel_types.QModelIndex, stream: gen_qdatastream_types.QDataStream): bool =
  fcQPdfBookmarkModel_protectedbase_decodeData(self.h, row, column, parent.h, stream.h)

proc beginInsertRows*(self: gen_qpdfbookmarkmodel_types.QPdfBookmarkModel, parent: gen_qabstractitemmodel_types.QModelIndex, first: cint, last: cint): void =
  fcQPdfBookmarkModel_protectedbase_beginInsertRows(self.h, parent.h, first, last)

proc endInsertRows*(self: gen_qpdfbookmarkmodel_types.QPdfBookmarkModel): void =
  fcQPdfBookmarkModel_protectedbase_endInsertRows(self.h)

proc beginRemoveRows*(self: gen_qpdfbookmarkmodel_types.QPdfBookmarkModel, parent: gen_qabstractitemmodel_types.QModelIndex, first: cint, last: cint): void =
  fcQPdfBookmarkModel_protectedbase_beginRemoveRows(self.h, parent.h, first, last)

proc endRemoveRows*(self: gen_qpdfbookmarkmodel_types.QPdfBookmarkModel): void =
  fcQPdfBookmarkModel_protectedbase_endRemoveRows(self.h)

proc beginMoveRows*(self: gen_qpdfbookmarkmodel_types.QPdfBookmarkModel, sourceParent: gen_qabstractitemmodel_types.QModelIndex, sourceFirst: cint, sourceLast: cint, destinationParent: gen_qabstractitemmodel_types.QModelIndex, destinationRow: cint): bool =
  fcQPdfBookmarkModel_protectedbase_beginMoveRows(self.h, sourceParent.h, sourceFirst, sourceLast, destinationParent.h, destinationRow)

proc endMoveRows*(self: gen_qpdfbookmarkmodel_types.QPdfBookmarkModel): void =
  fcQPdfBookmarkModel_protectedbase_endMoveRows(self.h)

proc beginInsertColumns*(self: gen_qpdfbookmarkmodel_types.QPdfBookmarkModel, parent: gen_qabstractitemmodel_types.QModelIndex, first: cint, last: cint): void =
  fcQPdfBookmarkModel_protectedbase_beginInsertColumns(self.h, parent.h, first, last)

proc endInsertColumns*(self: gen_qpdfbookmarkmodel_types.QPdfBookmarkModel): void =
  fcQPdfBookmarkModel_protectedbase_endInsertColumns(self.h)

proc beginRemoveColumns*(self: gen_qpdfbookmarkmodel_types.QPdfBookmarkModel, parent: gen_qabstractitemmodel_types.QModelIndex, first: cint, last: cint): void =
  fcQPdfBookmarkModel_protectedbase_beginRemoveColumns(self.h, parent.h, first, last)

proc endRemoveColumns*(self: gen_qpdfbookmarkmodel_types.QPdfBookmarkModel): void =
  fcQPdfBookmarkModel_protectedbase_endRemoveColumns(self.h)

proc beginMoveColumns*(self: gen_qpdfbookmarkmodel_types.QPdfBookmarkModel, sourceParent: gen_qabstractitemmodel_types.QModelIndex, sourceFirst: cint, sourceLast: cint, destinationParent: gen_qabstractitemmodel_types.QModelIndex, destinationColumn: cint): bool =
  fcQPdfBookmarkModel_protectedbase_beginMoveColumns(self.h, sourceParent.h, sourceFirst, sourceLast, destinationParent.h, destinationColumn)

proc endMoveColumns*(self: gen_qpdfbookmarkmodel_types.QPdfBookmarkModel): void =
  fcQPdfBookmarkModel_protectedbase_endMoveColumns(self.h)

proc beginResetModel*(self: gen_qpdfbookmarkmodel_types.QPdfBookmarkModel): void =
  fcQPdfBookmarkModel_protectedbase_beginResetModel(self.h)

proc endResetModel*(self: gen_qpdfbookmarkmodel_types.QPdfBookmarkModel): void =
  fcQPdfBookmarkModel_protectedbase_endResetModel(self.h)

proc changePersistentIndex*(self: gen_qpdfbookmarkmodel_types.QPdfBookmarkModel, fromVal: gen_qabstractitemmodel_types.QModelIndex, to: gen_qabstractitemmodel_types.QModelIndex): void =
  fcQPdfBookmarkModel_protectedbase_changePersistentIndex(self.h, fromVal.h, to.h)

proc changePersistentIndexList*(self: gen_qpdfbookmarkmodel_types.QPdfBookmarkModel, fromVal: openArray[gen_qabstractitemmodel_types.QModelIndex], to: openArray[gen_qabstractitemmodel_types.QModelIndex]): void =
  var fromVal_CArray = newSeq[pointer](len(fromVal))
  for i in 0..<len(fromVal):
    fromVal_CArray[i] = fromVal[i].h

  var to_CArray = newSeq[pointer](len(to))
  for i in 0..<len(to):
    to_CArray[i] = to[i].h

  fcQPdfBookmarkModel_protectedbase_changePersistentIndexList(self.h, struct_seaqt_array(len: csize_t(len(fromVal)), data: if len(fromVal) == 0: nil else: addr(fromVal_CArray[0])), struct_seaqt_array(len: csize_t(len(to)), data: if len(to) == 0: nil else: addr(to_CArray[0])))

proc persistentIndexList*(self: gen_qpdfbookmarkmodel_types.QPdfBookmarkModel): seq[gen_qabstractitemmodel_types.QModelIndex] =
  var v_ma = fcQPdfBookmarkModel_protectedbase_persistentIndexList(self.h)
  var vx_ret = newSeq[gen_qabstractitemmodel_types.QModelIndex](int(v_ma.len))
  let v_outCast = cast[ptr UncheckedArray[pointer]](v_ma.data)
  for i in 0 ..< v_ma.len:
    vx_ret[i] = gen_qabstractitemmodel_types.QModelIndex(h: v_outCast[i])
  c_free(v_ma.data)
  vx_ret

proc sender*(self: gen_qpdfbookmarkmodel_types.QPdfBookmarkModel): gen_qobject_types.QObject =
  gen_qobject_types.QObject(h: fcQPdfBookmarkModel_protectedbase_sender(self.h))

proc senderSignalIndex*(self: gen_qpdfbookmarkmodel_types.QPdfBookmarkModel): cint =
  fcQPdfBookmarkModel_protectedbase_senderSignalIndex(self.h)

proc receivers*(self: gen_qpdfbookmarkmodel_types.QPdfBookmarkModel, signal: cstring): cint =
  fcQPdfBookmarkModel_protectedbase_receivers(self.h, signal)

proc isSignalConnected*(self: gen_qpdfbookmarkmodel_types.QPdfBookmarkModel, signal: gen_qmetaobject_types.QMetaMethod): bool =
  fcQPdfBookmarkModel_protectedbase_isSignalConnected(self.h, signal.h)

proc create*(T: type gen_qpdfbookmarkmodel_types.QPdfBookmarkModel,
    vtbl: ref QPdfBookmarkModelVTable = nil): gen_qpdfbookmarkmodel_types.QPdfBookmarkModel =
  let vtbl = if vtbl == nil: new QPdfBookmarkModelVTable else: vtbl
  GC_ref(vtbl)
  vtbl[].vtbl.destructor = proc(self: pointer) {.cdecl.} =
    let vtbl = cast[ref QPdfBookmarkModelVTable](fcQPdfBookmarkModel_vdata(self)[])
    GC_unref(vtbl)
  if not isNil(vtbl[].metaObject):
    vtbl[].vtbl.metaObject = fcQPdfBookmarkModel_vtable_callback_metaObject
  if not isNil(vtbl[].metacast):
    vtbl[].vtbl.metacast = fcQPdfBookmarkModel_vtable_callback_metacast
  if not isNil(vtbl[].metacall):
    vtbl[].vtbl.metacall = fcQPdfBookmarkModel_vtable_callback_metacall
  if not isNil(vtbl[].data):
    vtbl[].vtbl.data = fcQPdfBookmarkModel_vtable_callback_data
  if not isNil(vtbl[].index):
    vtbl[].vtbl.index = fcQPdfBookmarkModel_vtable_callback_index
  if not isNil(vtbl[].parent):
    vtbl[].vtbl.parent = fcQPdfBookmarkModel_vtable_callback_parent
  if not isNil(vtbl[].rowCount):
    vtbl[].vtbl.rowCount = fcQPdfBookmarkModel_vtable_callback_rowCount
  if not isNil(vtbl[].columnCount):
    vtbl[].vtbl.columnCount = fcQPdfBookmarkModel_vtable_callback_columnCount
  if not isNil(vtbl[].roleNames):
    vtbl[].vtbl.roleNames = fcQPdfBookmarkModel_vtable_callback_roleNames
  if not isNil(vtbl[].sibling):
    vtbl[].vtbl.sibling = fcQPdfBookmarkModel_vtable_callback_sibling
  if not isNil(vtbl[].hasChildren):
    vtbl[].vtbl.hasChildren = fcQPdfBookmarkModel_vtable_callback_hasChildren
  if not isNil(vtbl[].setData):
    vtbl[].vtbl.setData = fcQPdfBookmarkModel_vtable_callback_setData
  if not isNil(vtbl[].headerData):
    vtbl[].vtbl.headerData = fcQPdfBookmarkModel_vtable_callback_headerData
  if not isNil(vtbl[].setHeaderData):
    vtbl[].vtbl.setHeaderData = fcQPdfBookmarkModel_vtable_callback_setHeaderData
  if not isNil(vtbl[].itemData):
    vtbl[].vtbl.itemData = fcQPdfBookmarkModel_vtable_callback_itemData
  if not isNil(vtbl[].setItemData):
    vtbl[].vtbl.setItemData = fcQPdfBookmarkModel_vtable_callback_setItemData
  if not isNil(vtbl[].clearItemData):
    vtbl[].vtbl.clearItemData = fcQPdfBookmarkModel_vtable_callback_clearItemData
  if not isNil(vtbl[].mimeTypes):
    vtbl[].vtbl.mimeTypes = fcQPdfBookmarkModel_vtable_callback_mimeTypes
  if not isNil(vtbl[].mimeData):
    vtbl[].vtbl.mimeData = fcQPdfBookmarkModel_vtable_callback_mimeData
  if not isNil(vtbl[].canDropMimeData):
    vtbl[].vtbl.canDropMimeData = fcQPdfBookmarkModel_vtable_callback_canDropMimeData
  if not isNil(vtbl[].dropMimeData):
    vtbl[].vtbl.dropMimeData = fcQPdfBookmarkModel_vtable_callback_dropMimeData
  if not isNil(vtbl[].supportedDropActions):
    vtbl[].vtbl.supportedDropActions = fcQPdfBookmarkModel_vtable_callback_supportedDropActions
  if not isNil(vtbl[].supportedDragActions):
    vtbl[].vtbl.supportedDragActions = fcQPdfBookmarkModel_vtable_callback_supportedDragActions
  if not isNil(vtbl[].insertRows):
    vtbl[].vtbl.insertRows = fcQPdfBookmarkModel_vtable_callback_insertRows
  if not isNil(vtbl[].insertColumns):
    vtbl[].vtbl.insertColumns = fcQPdfBookmarkModel_vtable_callback_insertColumns
  if not isNil(vtbl[].removeRows):
    vtbl[].vtbl.removeRows = fcQPdfBookmarkModel_vtable_callback_removeRows
  if not isNil(vtbl[].removeColumns):
    vtbl[].vtbl.removeColumns = fcQPdfBookmarkModel_vtable_callback_removeColumns
  if not isNil(vtbl[].moveRows):
    vtbl[].vtbl.moveRows = fcQPdfBookmarkModel_vtable_callback_moveRows
  if not isNil(vtbl[].moveColumns):
    vtbl[].vtbl.moveColumns = fcQPdfBookmarkModel_vtable_callback_moveColumns
  if not isNil(vtbl[].fetchMore):
    vtbl[].vtbl.fetchMore = fcQPdfBookmarkModel_vtable_callback_fetchMore
  if not isNil(vtbl[].canFetchMore):
    vtbl[].vtbl.canFetchMore = fcQPdfBookmarkModel_vtable_callback_canFetchMore
  if not isNil(vtbl[].flags):
    vtbl[].vtbl.flags = fcQPdfBookmarkModel_vtable_callback_flags
  if not isNil(vtbl[].sort):
    vtbl[].vtbl.sort = fcQPdfBookmarkModel_vtable_callback_sort
  if not isNil(vtbl[].buddy):
    vtbl[].vtbl.buddy = fcQPdfBookmarkModel_vtable_callback_buddy
  if not isNil(vtbl[].match):
    vtbl[].vtbl.match = fcQPdfBookmarkModel_vtable_callback_match
  if not isNil(vtbl[].span):
    vtbl[].vtbl.span = fcQPdfBookmarkModel_vtable_callback_span
  if not isNil(vtbl[].multiData):
    vtbl[].vtbl.multiData = fcQPdfBookmarkModel_vtable_callback_multiData
  if not isNil(vtbl[].submit):
    vtbl[].vtbl.submit = fcQPdfBookmarkModel_vtable_callback_submit
  if not isNil(vtbl[].revert):
    vtbl[].vtbl.revert = fcQPdfBookmarkModel_vtable_callback_revert
  if not isNil(vtbl[].resetInternalData):
    vtbl[].vtbl.resetInternalData = fcQPdfBookmarkModel_vtable_callback_resetInternalData
  if not isNil(vtbl[].event):
    vtbl[].vtbl.event = fcQPdfBookmarkModel_vtable_callback_event
  if not isNil(vtbl[].eventFilter):
    vtbl[].vtbl.eventFilter = fcQPdfBookmarkModel_vtable_callback_eventFilter
  if not isNil(vtbl[].timerEvent):
    vtbl[].vtbl.timerEvent = fcQPdfBookmarkModel_vtable_callback_timerEvent
  if not isNil(vtbl[].childEvent):
    vtbl[].vtbl.childEvent = fcQPdfBookmarkModel_vtable_callback_childEvent
  if not isNil(vtbl[].customEvent):
    vtbl[].vtbl.customEvent = fcQPdfBookmarkModel_vtable_callback_customEvent
  if not isNil(vtbl[].connectNotify):
    vtbl[].vtbl.connectNotify = fcQPdfBookmarkModel_vtable_callback_connectNotify
  if not isNil(vtbl[].disconnectNotify):
    vtbl[].vtbl.disconnectNotify = fcQPdfBookmarkModel_vtable_callback_disconnectNotify
  let tmp = gen_qpdfbookmarkmodel_types.QPdfBookmarkModel(h: fcQPdfBookmarkModel_new(addr(vtbl[].vtbl), csize_t(sizeof(pointer))))
  fcQPdfBookmarkModel_vdata(tmp.h)[] = addr(vtbl[])
  tmp
proc create*(T: type gen_qpdfbookmarkmodel_types.QPdfBookmarkModel,
    parent: gen_qobject_types.QObject,
    vtbl: ref QPdfBookmarkModelVTable = nil): gen_qpdfbookmarkmodel_types.QPdfBookmarkModel =
  let vtbl = if vtbl == nil: new QPdfBookmarkModelVTable else: vtbl
  GC_ref(vtbl)
  vtbl[].vtbl.destructor = proc(self: pointer) {.cdecl.} =
    let vtbl = cast[ref QPdfBookmarkModelVTable](fcQPdfBookmarkModel_vdata(self)[])
    GC_unref(vtbl)
  if not isNil(vtbl[].metaObject):
    vtbl[].vtbl.metaObject = fcQPdfBookmarkModel_vtable_callback_metaObject
  if not isNil(vtbl[].metacast):
    vtbl[].vtbl.metacast = fcQPdfBookmarkModel_vtable_callback_metacast
  if not isNil(vtbl[].metacall):
    vtbl[].vtbl.metacall = fcQPdfBookmarkModel_vtable_callback_metacall
  if not isNil(vtbl[].data):
    vtbl[].vtbl.data = fcQPdfBookmarkModel_vtable_callback_data
  if not isNil(vtbl[].index):
    vtbl[].vtbl.index = fcQPdfBookmarkModel_vtable_callback_index
  if not isNil(vtbl[].parent):
    vtbl[].vtbl.parent = fcQPdfBookmarkModel_vtable_callback_parent
  if not isNil(vtbl[].rowCount):
    vtbl[].vtbl.rowCount = fcQPdfBookmarkModel_vtable_callback_rowCount
  if not isNil(vtbl[].columnCount):
    vtbl[].vtbl.columnCount = fcQPdfBookmarkModel_vtable_callback_columnCount
  if not isNil(vtbl[].roleNames):
    vtbl[].vtbl.roleNames = fcQPdfBookmarkModel_vtable_callback_roleNames
  if not isNil(vtbl[].sibling):
    vtbl[].vtbl.sibling = fcQPdfBookmarkModel_vtable_callback_sibling
  if not isNil(vtbl[].hasChildren):
    vtbl[].vtbl.hasChildren = fcQPdfBookmarkModel_vtable_callback_hasChildren
  if not isNil(vtbl[].setData):
    vtbl[].vtbl.setData = fcQPdfBookmarkModel_vtable_callback_setData
  if not isNil(vtbl[].headerData):
    vtbl[].vtbl.headerData = fcQPdfBookmarkModel_vtable_callback_headerData
  if not isNil(vtbl[].setHeaderData):
    vtbl[].vtbl.setHeaderData = fcQPdfBookmarkModel_vtable_callback_setHeaderData
  if not isNil(vtbl[].itemData):
    vtbl[].vtbl.itemData = fcQPdfBookmarkModel_vtable_callback_itemData
  if not isNil(vtbl[].setItemData):
    vtbl[].vtbl.setItemData = fcQPdfBookmarkModel_vtable_callback_setItemData
  if not isNil(vtbl[].clearItemData):
    vtbl[].vtbl.clearItemData = fcQPdfBookmarkModel_vtable_callback_clearItemData
  if not isNil(vtbl[].mimeTypes):
    vtbl[].vtbl.mimeTypes = fcQPdfBookmarkModel_vtable_callback_mimeTypes
  if not isNil(vtbl[].mimeData):
    vtbl[].vtbl.mimeData = fcQPdfBookmarkModel_vtable_callback_mimeData
  if not isNil(vtbl[].canDropMimeData):
    vtbl[].vtbl.canDropMimeData = fcQPdfBookmarkModel_vtable_callback_canDropMimeData
  if not isNil(vtbl[].dropMimeData):
    vtbl[].vtbl.dropMimeData = fcQPdfBookmarkModel_vtable_callback_dropMimeData
  if not isNil(vtbl[].supportedDropActions):
    vtbl[].vtbl.supportedDropActions = fcQPdfBookmarkModel_vtable_callback_supportedDropActions
  if not isNil(vtbl[].supportedDragActions):
    vtbl[].vtbl.supportedDragActions = fcQPdfBookmarkModel_vtable_callback_supportedDragActions
  if not isNil(vtbl[].insertRows):
    vtbl[].vtbl.insertRows = fcQPdfBookmarkModel_vtable_callback_insertRows
  if not isNil(vtbl[].insertColumns):
    vtbl[].vtbl.insertColumns = fcQPdfBookmarkModel_vtable_callback_insertColumns
  if not isNil(vtbl[].removeRows):
    vtbl[].vtbl.removeRows = fcQPdfBookmarkModel_vtable_callback_removeRows
  if not isNil(vtbl[].removeColumns):
    vtbl[].vtbl.removeColumns = fcQPdfBookmarkModel_vtable_callback_removeColumns
  if not isNil(vtbl[].moveRows):
    vtbl[].vtbl.moveRows = fcQPdfBookmarkModel_vtable_callback_moveRows
  if not isNil(vtbl[].moveColumns):
    vtbl[].vtbl.moveColumns = fcQPdfBookmarkModel_vtable_callback_moveColumns
  if not isNil(vtbl[].fetchMore):
    vtbl[].vtbl.fetchMore = fcQPdfBookmarkModel_vtable_callback_fetchMore
  if not isNil(vtbl[].canFetchMore):
    vtbl[].vtbl.canFetchMore = fcQPdfBookmarkModel_vtable_callback_canFetchMore
  if not isNil(vtbl[].flags):
    vtbl[].vtbl.flags = fcQPdfBookmarkModel_vtable_callback_flags
  if not isNil(vtbl[].sort):
    vtbl[].vtbl.sort = fcQPdfBookmarkModel_vtable_callback_sort
  if not isNil(vtbl[].buddy):
    vtbl[].vtbl.buddy = fcQPdfBookmarkModel_vtable_callback_buddy
  if not isNil(vtbl[].match):
    vtbl[].vtbl.match = fcQPdfBookmarkModel_vtable_callback_match
  if not isNil(vtbl[].span):
    vtbl[].vtbl.span = fcQPdfBookmarkModel_vtable_callback_span
  if not isNil(vtbl[].multiData):
    vtbl[].vtbl.multiData = fcQPdfBookmarkModel_vtable_callback_multiData
  if not isNil(vtbl[].submit):
    vtbl[].vtbl.submit = fcQPdfBookmarkModel_vtable_callback_submit
  if not isNil(vtbl[].revert):
    vtbl[].vtbl.revert = fcQPdfBookmarkModel_vtable_callback_revert
  if not isNil(vtbl[].resetInternalData):
    vtbl[].vtbl.resetInternalData = fcQPdfBookmarkModel_vtable_callback_resetInternalData
  if not isNil(vtbl[].event):
    vtbl[].vtbl.event = fcQPdfBookmarkModel_vtable_callback_event
  if not isNil(vtbl[].eventFilter):
    vtbl[].vtbl.eventFilter = fcQPdfBookmarkModel_vtable_callback_eventFilter
  if not isNil(vtbl[].timerEvent):
    vtbl[].vtbl.timerEvent = fcQPdfBookmarkModel_vtable_callback_timerEvent
  if not isNil(vtbl[].childEvent):
    vtbl[].vtbl.childEvent = fcQPdfBookmarkModel_vtable_callback_childEvent
  if not isNil(vtbl[].customEvent):
    vtbl[].vtbl.customEvent = fcQPdfBookmarkModel_vtable_callback_customEvent
  if not isNil(vtbl[].connectNotify):
    vtbl[].vtbl.connectNotify = fcQPdfBookmarkModel_vtable_callback_connectNotify
  if not isNil(vtbl[].disconnectNotify):
    vtbl[].vtbl.disconnectNotify = fcQPdfBookmarkModel_vtable_callback_disconnectNotify
  let tmp = gen_qpdfbookmarkmodel_types.QPdfBookmarkModel(h: fcQPdfBookmarkModel_new2(addr(vtbl[].vtbl), csize_t(sizeof(pointer)), parent.h))
  fcQPdfBookmarkModel_vdata(tmp.h)[] = addr(vtbl[])
  tmp
const cQPdfBookmarkModel_mvtbl = cQPdfBookmarkModelVTable(
  destructor: proc(self: pointer) {.cdecl.} =
    let inst = cast[ptr typeof(VirtualQPdfBookmarkModel()[])](self.fcQPdfBookmarkModel_vdata()[])
    inst[].h = nil,

  metaObject: fcQPdfBookmarkModel_method_callback_metaObject,
  metacast: fcQPdfBookmarkModel_method_callback_metacast,
  metacall: fcQPdfBookmarkModel_method_callback_metacall,
  data: fcQPdfBookmarkModel_method_callback_data,
  index: fcQPdfBookmarkModel_method_callback_index,
  parent: fcQPdfBookmarkModel_method_callback_parent,
  rowCount: fcQPdfBookmarkModel_method_callback_rowCount,
  columnCount: fcQPdfBookmarkModel_method_callback_columnCount,
  roleNames: fcQPdfBookmarkModel_method_callback_roleNames,
  sibling: fcQPdfBookmarkModel_method_callback_sibling,
  hasChildren: fcQPdfBookmarkModel_method_callback_hasChildren,
  setData: fcQPdfBookmarkModel_method_callback_setData,
  headerData: fcQPdfBookmarkModel_method_callback_headerData,
  setHeaderData: fcQPdfBookmarkModel_method_callback_setHeaderData,
  itemData: fcQPdfBookmarkModel_method_callback_itemData,
  setItemData: fcQPdfBookmarkModel_method_callback_setItemData,
  clearItemData: fcQPdfBookmarkModel_method_callback_clearItemData,
  mimeTypes: fcQPdfBookmarkModel_method_callback_mimeTypes,
  mimeData: fcQPdfBookmarkModel_method_callback_mimeData,
  canDropMimeData: fcQPdfBookmarkModel_method_callback_canDropMimeData,
  dropMimeData: fcQPdfBookmarkModel_method_callback_dropMimeData,
  supportedDropActions: fcQPdfBookmarkModel_method_callback_supportedDropActions,
  supportedDragActions: fcQPdfBookmarkModel_method_callback_supportedDragActions,
  insertRows: fcQPdfBookmarkModel_method_callback_insertRows,
  insertColumns: fcQPdfBookmarkModel_method_callback_insertColumns,
  removeRows: fcQPdfBookmarkModel_method_callback_removeRows,
  removeColumns: fcQPdfBookmarkModel_method_callback_removeColumns,
  moveRows: fcQPdfBookmarkModel_method_callback_moveRows,
  moveColumns: fcQPdfBookmarkModel_method_callback_moveColumns,
  fetchMore: fcQPdfBookmarkModel_method_callback_fetchMore,
  canFetchMore: fcQPdfBookmarkModel_method_callback_canFetchMore,
  flags: fcQPdfBookmarkModel_method_callback_flags,
  sort: fcQPdfBookmarkModel_method_callback_sort,
  buddy: fcQPdfBookmarkModel_method_callback_buddy,
  match: fcQPdfBookmarkModel_method_callback_match,
  span: fcQPdfBookmarkModel_method_callback_span,
  multiData: fcQPdfBookmarkModel_method_callback_multiData,
  submit: fcQPdfBookmarkModel_method_callback_submit,
  revert: fcQPdfBookmarkModel_method_callback_revert,
  resetInternalData: fcQPdfBookmarkModel_method_callback_resetInternalData,
  event: fcQPdfBookmarkModel_method_callback_event,
  eventFilter: fcQPdfBookmarkModel_method_callback_eventFilter,
  timerEvent: fcQPdfBookmarkModel_method_callback_timerEvent,
  childEvent: fcQPdfBookmarkModel_method_callback_childEvent,
  customEvent: fcQPdfBookmarkModel_method_callback_customEvent,
  connectNotify: fcQPdfBookmarkModel_method_callback_connectNotify,
  disconnectNotify: fcQPdfBookmarkModel_method_callback_disconnectNotify,
)
proc create*(T: type gen_qpdfbookmarkmodel_types.QPdfBookmarkModel,
    inst: VirtualQPdfBookmarkModel) =
  if inst[].h != nil: delete(move(inst[]))
  inst[].h = fcQPdfBookmarkModel_new(addr(cQPdfBookmarkModel_mvtbl), csize_t(sizeof(pointer)))
  fcQPdfBookmarkModel_vdata(inst[].h)[] = addr inst[]
  inst[].owned = true

proc create*(T: type gen_qpdfbookmarkmodel_types.QPdfBookmarkModel,
    parent: gen_qobject_types.QObject,
    inst: VirtualQPdfBookmarkModel) =
  if inst[].h != nil: delete(move(inst[]))
  inst[].h = fcQPdfBookmarkModel_new2(addr(cQPdfBookmarkModel_mvtbl), csize_t(sizeof(pointer)), parent.h)
  fcQPdfBookmarkModel_vdata(inst[].h)[] = addr inst[]
  inst[].owned = true

proc staticMetaObject*(_: type gen_qpdfbookmarkmodel_types.QPdfBookmarkModel): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQPdfBookmarkModel_staticMetaObject())
proc delete*(self: gen_qpdfbookmarkmodel_types.QPdfBookmarkModel) =
  fcQPdfBookmarkModel_delete(self.h)
