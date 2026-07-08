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


{.compile("gen_qpdfsearchmodel.cpp", QtPdfCFlags).}


type QPdfSearchModelRoleEnum* = distinct cint
template Page*(_: type QPdfSearchModelRoleEnum): untyped = 256
template IndexOnPage*(_: type QPdfSearchModelRoleEnum): untyped = 257
template Location*(_: type QPdfSearchModelRoleEnum): untyped = 258
template ContextBefore*(_: type QPdfSearchModelRoleEnum): untyped = 259
template ContextAfter*(_: type QPdfSearchModelRoleEnum): untyped = 260
template NRoles*(_: type QPdfSearchModelRoleEnum): untyped = 261


import ./gen_qpdfsearchmodel_types
export gen_qpdfsearchmodel_types

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
  ./gen_qpdflink_types,
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
  gen_qpdfdocument_types,
  gen_qpdflink_types

type cQPdfSearchModel*{.exportc: "QPdfSearchModel", incompleteStruct.} = object

proc fcQPdfSearchModel_metaObject(self: pointer): pointer {.importc: "QPdfSearchModel_metaObject".}
proc fcQPdfSearchModel_metacast(self: pointer, param1: cstring): pointer {.importc: "QPdfSearchModel_metacast".}
proc fcQPdfSearchModel_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.importc: "QPdfSearchModel_metacall".}
proc fcQPdfSearchModel_trS(s: cstring): struct_seaqt_string {.importc: "QPdfSearchModel_tr_s".}
proc fcQPdfSearchModel_resultsOnPage(self: pointer, page: cint): struct_seaqt_array {.importc: "QPdfSearchModel_resultsOnPage".}
proc fcQPdfSearchModel_resultAtIndex(self: pointer, index: cint): pointer {.importc: "QPdfSearchModel_resultAtIndex".}
proc fcQPdfSearchModel_document(self: pointer): pointer {.importc: "QPdfSearchModel_document".}
proc fcQPdfSearchModel_searchString(self: pointer): struct_seaqt_string {.importc: "QPdfSearchModel_searchString".}
proc fcQPdfSearchModel_roleNames(self: pointer): struct_seaqt_map {.importc: "QPdfSearchModel_roleNames".}
proc fcQPdfSearchModel_rowCount(self: pointer, parent: pointer): cint {.importc: "QPdfSearchModel_rowCount".}
proc fcQPdfSearchModel_data(self: pointer, index: pointer, role: cint): pointer {.importc: "QPdfSearchModel_data".}
proc fcQPdfSearchModel_count(self: pointer): cint {.importc: "QPdfSearchModel_count".}
proc fcQPdfSearchModel_setSearchString(self: pointer, searchString: struct_seaqt_string): void {.importc: "QPdfSearchModel_setSearchString".}
proc fcQPdfSearchModel_setDocument(self: pointer, document: pointer): void {.importc: "QPdfSearchModel_setDocument".}
proc fcQPdfSearchModel_documentChanged(self: pointer): void {.importc: "QPdfSearchModel_documentChanged".}
proc fcQPdfSearchModel_connect_documentChanged(self: pointer, slot: int, callback: proc (slot: int) {.cdecl.}, release: proc(slot: int) {.cdecl.}) {.importc: "QPdfSearchModel_connect_documentChanged".}
proc fcQPdfSearchModel_searchStringChanged(self: pointer): void {.importc: "QPdfSearchModel_searchStringChanged".}
proc fcQPdfSearchModel_connect_searchStringChanged(self: pointer, slot: int, callback: proc (slot: int) {.cdecl.}, release: proc(slot: int) {.cdecl.}) {.importc: "QPdfSearchModel_connect_searchStringChanged".}
proc fcQPdfSearchModel_countChanged(self: pointer): void {.importc: "QPdfSearchModel_countChanged".}
proc fcQPdfSearchModel_connect_countChanged(self: pointer, slot: int, callback: proc (slot: int) {.cdecl.}, release: proc(slot: int) {.cdecl.}) {.importc: "QPdfSearchModel_connect_countChanged".}
proc fcQPdfSearchModel_trSC(s: cstring, c: cstring): struct_seaqt_string {.importc: "QPdfSearchModel_tr_s_c".}
proc fcQPdfSearchModel_trSCN(s: cstring, c: cstring, n: cint): struct_seaqt_string {.importc: "QPdfSearchModel_tr_s_c_n".}
proc fcQPdfSearchModel_vdata(self: pointer): ptr pointer {.importc: "QPdfSearchModel_vdata".}
proc fvdata_cQPdfSearchModel(self: pointer): pointer {.importc: "vdata_QPdfSearchModel".}

type cQPdfSearchModelVTable {.pure.} = object
  destructor*: proc(self: pointer) {.cdecl, raises:[], gcsafe.}
  metaObject*: proc(self: pointer): pointer {.cdecl, raises: [], gcsafe.}
  metacast*: proc(self: pointer, param1: cstring): pointer {.cdecl, raises: [], gcsafe.}
  metacall*: proc(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.cdecl, raises: [], gcsafe.}
  roleNames*: proc(self: pointer): struct_seaqt_map {.cdecl, raises: [], gcsafe.}
  rowCount*: proc(self: pointer, parent: pointer): cint {.cdecl, raises: [], gcsafe.}
  data*: proc(self: pointer, index: pointer, role: cint): pointer {.cdecl, raises: [], gcsafe.}
  timerEvent*: proc(self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  index*: proc(self: pointer, row: cint, column: cint, parent: pointer): pointer {.cdecl, raises: [], gcsafe.}
  sibling*: proc(self: pointer, row: cint, column: cint, idx: pointer): pointer {.cdecl, raises: [], gcsafe.}
  dropMimeData*: proc(self: pointer, data: pointer, action: cint, row: cint, column: cint, parent: pointer): bool {.cdecl, raises: [], gcsafe.}
  flags*: proc(self: pointer, index: pointer): cint {.cdecl, raises: [], gcsafe.}
  setData*: proc(self: pointer, index: pointer, value: pointer, role: cint): bool {.cdecl, raises: [], gcsafe.}
  headerData*: proc(self: pointer, section: cint, orientation: cint, role: cint): pointer {.cdecl, raises: [], gcsafe.}
  setHeaderData*: proc(self: pointer, section: cint, orientation: cint, value: pointer, role: cint): bool {.cdecl, raises: [], gcsafe.}
  itemData*: proc(self: pointer, index: pointer): struct_seaqt_map {.cdecl, raises: [], gcsafe.}
  setItemData*: proc(self: pointer, index: pointer, roles: struct_seaqt_map): bool {.cdecl, raises: [], gcsafe.}
  clearItemData*: proc(self: pointer, index: pointer): bool {.cdecl, raises: [], gcsafe.}
  mimeTypes*: proc(self: pointer): struct_seaqt_array {.cdecl, raises: [], gcsafe.}
  mimeData*: proc(self: pointer, indexes: struct_seaqt_array): pointer {.cdecl, raises: [], gcsafe.}
  canDropMimeData*: proc(self: pointer, data: pointer, action: cint, row: cint, column: cint, parent: pointer): bool {.cdecl, raises: [], gcsafe.}
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
  childEvent*: proc(self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  customEvent*: proc(self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  connectNotify*: proc(self: pointer, signal: pointer): void {.cdecl, raises: [], gcsafe.}
  disconnectNotify*: proc(self: pointer, signal: pointer): void {.cdecl, raises: [], gcsafe.}
proc fcQPdfSearchModel_virtualbase_metaObject(self: pointer): pointer {.importc: "QPdfSearchModel_virtualbase_metaObject".}
proc fcQPdfSearchModel_virtualbase_metacast(self: pointer, param1: cstring): pointer {.importc: "QPdfSearchModel_virtualbase_metacast".}
proc fcQPdfSearchModel_virtualbase_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.importc: "QPdfSearchModel_virtualbase_metacall".}
proc fcQPdfSearchModel_virtualbase_roleNames(self: pointer): struct_seaqt_map {.importc: "QPdfSearchModel_virtualbase_roleNames".}
proc fcQPdfSearchModel_virtualbase_rowCount(self: pointer, parent: pointer): cint {.importc: "QPdfSearchModel_virtualbase_rowCount".}
proc fcQPdfSearchModel_virtualbase_data(self: pointer, index: pointer, role: cint): pointer {.importc: "QPdfSearchModel_virtualbase_data".}
proc fcQPdfSearchModel_virtualbase_timerEvent(self: pointer, event: pointer): void {.importc: "QPdfSearchModel_virtualbase_timerEvent".}
proc fcQPdfSearchModel_virtualbase_index(self: pointer, row: cint, column: cint, parent: pointer): pointer {.importc: "QPdfSearchModel_virtualbase_index".}
proc fcQPdfSearchModel_virtualbase_sibling(self: pointer, row: cint, column: cint, idx: pointer): pointer {.importc: "QPdfSearchModel_virtualbase_sibling".}
proc fcQPdfSearchModel_virtualbase_dropMimeData(self: pointer, data: pointer, action: cint, row: cint, column: cint, parent: pointer): bool {.importc: "QPdfSearchModel_virtualbase_dropMimeData".}
proc fcQPdfSearchModel_virtualbase_flags(self: pointer, index: pointer): cint {.importc: "QPdfSearchModel_virtualbase_flags".}
proc fcQPdfSearchModel_virtualbase_setData(self: pointer, index: pointer, value: pointer, role: cint): bool {.importc: "QPdfSearchModel_virtualbase_setData".}
proc fcQPdfSearchModel_virtualbase_headerData(self: pointer, section: cint, orientation: cint, role: cint): pointer {.importc: "QPdfSearchModel_virtualbase_headerData".}
proc fcQPdfSearchModel_virtualbase_setHeaderData(self: pointer, section: cint, orientation: cint, value: pointer, role: cint): bool {.importc: "QPdfSearchModel_virtualbase_setHeaderData".}
proc fcQPdfSearchModel_virtualbase_itemData(self: pointer, index: pointer): struct_seaqt_map {.importc: "QPdfSearchModel_virtualbase_itemData".}
proc fcQPdfSearchModel_virtualbase_setItemData(self: pointer, index: pointer, roles: struct_seaqt_map): bool {.importc: "QPdfSearchModel_virtualbase_setItemData".}
proc fcQPdfSearchModel_virtualbase_clearItemData(self: pointer, index: pointer): bool {.importc: "QPdfSearchModel_virtualbase_clearItemData".}
proc fcQPdfSearchModel_virtualbase_mimeTypes(self: pointer): struct_seaqt_array {.importc: "QPdfSearchModel_virtualbase_mimeTypes".}
proc fcQPdfSearchModel_virtualbase_mimeData(self: pointer, indexes: struct_seaqt_array): pointer {.importc: "QPdfSearchModel_virtualbase_mimeData".}
proc fcQPdfSearchModel_virtualbase_canDropMimeData(self: pointer, data: pointer, action: cint, row: cint, column: cint, parent: pointer): bool {.importc: "QPdfSearchModel_virtualbase_canDropMimeData".}
proc fcQPdfSearchModel_virtualbase_supportedDropActions(self: pointer): cint {.importc: "QPdfSearchModel_virtualbase_supportedDropActions".}
proc fcQPdfSearchModel_virtualbase_supportedDragActions(self: pointer): cint {.importc: "QPdfSearchModel_virtualbase_supportedDragActions".}
proc fcQPdfSearchModel_virtualbase_insertRows(self: pointer, row: cint, count: cint, parent: pointer): bool {.importc: "QPdfSearchModel_virtualbase_insertRows".}
proc fcQPdfSearchModel_virtualbase_insertColumns(self: pointer, column: cint, count: cint, parent: pointer): bool {.importc: "QPdfSearchModel_virtualbase_insertColumns".}
proc fcQPdfSearchModel_virtualbase_removeRows(self: pointer, row: cint, count: cint, parent: pointer): bool {.importc: "QPdfSearchModel_virtualbase_removeRows".}
proc fcQPdfSearchModel_virtualbase_removeColumns(self: pointer, column: cint, count: cint, parent: pointer): bool {.importc: "QPdfSearchModel_virtualbase_removeColumns".}
proc fcQPdfSearchModel_virtualbase_moveRows(self: pointer, sourceParent: pointer, sourceRow: cint, count: cint, destinationParent: pointer, destinationChild: cint): bool {.importc: "QPdfSearchModel_virtualbase_moveRows".}
proc fcQPdfSearchModel_virtualbase_moveColumns(self: pointer, sourceParent: pointer, sourceColumn: cint, count: cint, destinationParent: pointer, destinationChild: cint): bool {.importc: "QPdfSearchModel_virtualbase_moveColumns".}
proc fcQPdfSearchModel_virtualbase_fetchMore(self: pointer, parent: pointer): void {.importc: "QPdfSearchModel_virtualbase_fetchMore".}
proc fcQPdfSearchModel_virtualbase_canFetchMore(self: pointer, parent: pointer): bool {.importc: "QPdfSearchModel_virtualbase_canFetchMore".}
proc fcQPdfSearchModel_virtualbase_sort(self: pointer, column: cint, order: cint): void {.importc: "QPdfSearchModel_virtualbase_sort".}
proc fcQPdfSearchModel_virtualbase_buddy(self: pointer, index: pointer): pointer {.importc: "QPdfSearchModel_virtualbase_buddy".}
proc fcQPdfSearchModel_virtualbase_match(self: pointer, start: pointer, role: cint, value: pointer, hits: cint, flags: cint): struct_seaqt_array {.importc: "QPdfSearchModel_virtualbase_match".}
proc fcQPdfSearchModel_virtualbase_span(self: pointer, index: pointer): pointer {.importc: "QPdfSearchModel_virtualbase_span".}
proc fcQPdfSearchModel_virtualbase_multiData(self: pointer, index: pointer, roleDataSpan: pointer): void {.importc: "QPdfSearchModel_virtualbase_multiData".}
proc fcQPdfSearchModel_virtualbase_submit(self: pointer): bool {.importc: "QPdfSearchModel_virtualbase_submit".}
proc fcQPdfSearchModel_virtualbase_revert(self: pointer): void {.importc: "QPdfSearchModel_virtualbase_revert".}
proc fcQPdfSearchModel_virtualbase_resetInternalData(self: pointer): void {.importc: "QPdfSearchModel_virtualbase_resetInternalData".}
proc fcQPdfSearchModel_virtualbase_event(self: pointer, event: pointer): bool {.importc: "QPdfSearchModel_virtualbase_event".}
proc fcQPdfSearchModel_virtualbase_eventFilter(self: pointer, watched: pointer, event: pointer): bool {.importc: "QPdfSearchModel_virtualbase_eventFilter".}
proc fcQPdfSearchModel_virtualbase_childEvent(self: pointer, event: pointer): void {.importc: "QPdfSearchModel_virtualbase_childEvent".}
proc fcQPdfSearchModel_virtualbase_customEvent(self: pointer, event: pointer): void {.importc: "QPdfSearchModel_virtualbase_customEvent".}
proc fcQPdfSearchModel_virtualbase_connectNotify(self: pointer, signal: pointer): void {.importc: "QPdfSearchModel_virtualbase_connectNotify".}
proc fcQPdfSearchModel_virtualbase_disconnectNotify(self: pointer, signal: pointer): void {.importc: "QPdfSearchModel_virtualbase_disconnectNotify".}
proc fcQPdfSearchModel_protectedbase_updatePage(self: pointer, page: cint): void {.importc: "QPdfSearchModel_protectedbase_updatePage".}
proc fcQPdfSearchModel_protectedbase_createIndex_row_column(self: pointer, row: cint, column: cint): pointer {.importc: "QPdfSearchModel_protectedbase_createIndex_row_column".}
proc fcQPdfSearchModel_protectedbase_encodeData(self: pointer, indexes: struct_seaqt_array, stream: pointer): void {.importc: "QPdfSearchModel_protectedbase_encodeData".}
proc fcQPdfSearchModel_protectedbase_decodeData(self: pointer, row: cint, column: cint, parent: pointer, stream: pointer): bool {.importc: "QPdfSearchModel_protectedbase_decodeData".}
proc fcQPdfSearchModel_protectedbase_beginInsertRows(self: pointer, parent: pointer, first: cint, last: cint): void {.importc: "QPdfSearchModel_protectedbase_beginInsertRows".}
proc fcQPdfSearchModel_protectedbase_endInsertRows(self: pointer): void {.importc: "QPdfSearchModel_protectedbase_endInsertRows".}
proc fcQPdfSearchModel_protectedbase_beginRemoveRows(self: pointer, parent: pointer, first: cint, last: cint): void {.importc: "QPdfSearchModel_protectedbase_beginRemoveRows".}
proc fcQPdfSearchModel_protectedbase_endRemoveRows(self: pointer): void {.importc: "QPdfSearchModel_protectedbase_endRemoveRows".}
proc fcQPdfSearchModel_protectedbase_beginMoveRows(self: pointer, sourceParent: pointer, sourceFirst: cint, sourceLast: cint, destinationParent: pointer, destinationRow: cint): bool {.importc: "QPdfSearchModel_protectedbase_beginMoveRows".}
proc fcQPdfSearchModel_protectedbase_endMoveRows(self: pointer): void {.importc: "QPdfSearchModel_protectedbase_endMoveRows".}
proc fcQPdfSearchModel_protectedbase_beginInsertColumns(self: pointer, parent: pointer, first: cint, last: cint): void {.importc: "QPdfSearchModel_protectedbase_beginInsertColumns".}
proc fcQPdfSearchModel_protectedbase_endInsertColumns(self: pointer): void {.importc: "QPdfSearchModel_protectedbase_endInsertColumns".}
proc fcQPdfSearchModel_protectedbase_beginRemoveColumns(self: pointer, parent: pointer, first: cint, last: cint): void {.importc: "QPdfSearchModel_protectedbase_beginRemoveColumns".}
proc fcQPdfSearchModel_protectedbase_endRemoveColumns(self: pointer): void {.importc: "QPdfSearchModel_protectedbase_endRemoveColumns".}
proc fcQPdfSearchModel_protectedbase_beginMoveColumns(self: pointer, sourceParent: pointer, sourceFirst: cint, sourceLast: cint, destinationParent: pointer, destinationColumn: cint): bool {.importc: "QPdfSearchModel_protectedbase_beginMoveColumns".}
proc fcQPdfSearchModel_protectedbase_endMoveColumns(self: pointer): void {.importc: "QPdfSearchModel_protectedbase_endMoveColumns".}
proc fcQPdfSearchModel_protectedbase_beginResetModel(self: pointer): void {.importc: "QPdfSearchModel_protectedbase_beginResetModel".}
proc fcQPdfSearchModel_protectedbase_endResetModel(self: pointer): void {.importc: "QPdfSearchModel_protectedbase_endResetModel".}
proc fcQPdfSearchModel_protectedbase_changePersistentIndex(self: pointer, fromVal: pointer, to: pointer): void {.importc: "QPdfSearchModel_protectedbase_changePersistentIndex".}
proc fcQPdfSearchModel_protectedbase_changePersistentIndexList(self: pointer, fromVal: struct_seaqt_array, to: struct_seaqt_array): void {.importc: "QPdfSearchModel_protectedbase_changePersistentIndexList".}
proc fcQPdfSearchModel_protectedbase_persistentIndexList(self: pointer): struct_seaqt_array {.importc: "QPdfSearchModel_protectedbase_persistentIndexList".}
proc fcQPdfSearchModel_protectedbase_sender(self: pointer): pointer {.importc: "QPdfSearchModel_protectedbase_sender".}
proc fcQPdfSearchModel_protectedbase_senderSignalIndex(self: pointer): cint {.importc: "QPdfSearchModel_protectedbase_senderSignalIndex".}
proc fcQPdfSearchModel_protectedbase_receivers(self: pointer, signal: cstring): cint {.importc: "QPdfSearchModel_protectedbase_receivers".}
proc fcQPdfSearchModel_protectedbase_isSignalConnected(self: pointer, signal: pointer): bool {.importc: "QPdfSearchModel_protectedbase_isSignalConnected".}
proc fcQPdfSearchModel_new(vtbl: pointer, vdata: csize_t): ptr cQPdfSearchModel {.importc: "QPdfSearchModel_new".}
proc fcQPdfSearchModel_new2(vtbl: pointer, vdata: csize_t, parent: pointer): ptr cQPdfSearchModel {.importc: "QPdfSearchModel_new_parent".}
proc fcQPdfSearchModel_staticMetaObject(): pointer {.importc: "QPdfSearchModel_staticMetaObject".}

proc metaObject*(self: gen_qpdfsearchmodel_types.QPdfSearchModel): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQPdfSearchModel_metaObject(self.h), owned: false)

proc metacast*(self: gen_qpdfsearchmodel_types.QPdfSearchModel, param1: cstring): pointer =
  fcQPdfSearchModel_metacast(self.h, param1)

proc metacall*(self: gen_qpdfsearchmodel_types.QPdfSearchModel, param1: cint, param2: cint, param3: pointer): cint =
  fcQPdfSearchModel_metacall(self.h, cint(param1), param2, param3)

proc tr*(_: type gen_qpdfsearchmodel_types.QPdfSearchModel, s: cstring): string =
  let v_ms = fcQPdfSearchModel_trS(s)
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

proc resultsOnPage*(self: gen_qpdfsearchmodel_types.QPdfSearchModel, page: cint): seq[gen_qpdflink_types.QPdfLink] =
  var v_ma = fcQPdfSearchModel_resultsOnPage(self.h, page)
  var vx_ret = newSeq[gen_qpdflink_types.QPdfLink](int(v_ma.len))
  let v_outCast = cast[ptr UncheckedArray[pointer]](v_ma.data)
  for i in 0 ..< v_ma.len:
    vx_ret[i] = gen_qpdflink_types.QPdfLink(h: v_outCast[i], owned: true)
  c_free(v_ma.data)
  vx_ret

proc resultAtIndex*(self: gen_qpdfsearchmodel_types.QPdfSearchModel, index: cint): gen_qpdflink_types.QPdfLink =
  gen_qpdflink_types.QPdfLink(h: fcQPdfSearchModel_resultAtIndex(self.h, index), owned: true)

proc document*(self: gen_qpdfsearchmodel_types.QPdfSearchModel): gen_qpdfdocument_types.QPdfDocument =
  gen_qpdfdocument_types.QPdfDocument(h: fcQPdfSearchModel_document(self.h), owned: false)

proc searchString*(self: gen_qpdfsearchmodel_types.QPdfSearchModel): string =
  let v_ms = fcQPdfSearchModel_searchString(self.h)
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

proc roleNames*(self: gen_qpdfsearchmodel_types.QPdfSearchModel): Table[cint,seq[byte]] =
  var v_mm = fcQPdfSearchModel_roleNames(self.h)
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

proc rowCount*(self: gen_qpdfsearchmodel_types.QPdfSearchModel, parent: gen_qabstractitemmodel_types.QModelIndex): cint =
  fcQPdfSearchModel_rowCount(self.h, parent.h)

proc data*(self: gen_qpdfsearchmodel_types.QPdfSearchModel, index: gen_qabstractitemmodel_types.QModelIndex, role: cint): gen_qvariant_types.QVariant =
  gen_qvariant_types.QVariant(h: fcQPdfSearchModel_data(self.h, index.h, role), owned: true)

proc count*(self: gen_qpdfsearchmodel_types.QPdfSearchModel): cint =
  fcQPdfSearchModel_count(self.h)

proc setSearchString*(self: gen_qpdfsearchmodel_types.QPdfSearchModel, searchString: openArray[char]): void =
  fcQPdfSearchModel_setSearchString(self.h, struct_seaqt_string(data: if len(searchString) > 0: addr searchString[0] else: nil, len: csize_t(len(searchString))))

proc setDocument*(self: gen_qpdfsearchmodel_types.QPdfSearchModel, document: gen_qpdfdocument_types.QPdfDocument): void =
  fcQPdfSearchModel_setDocument(self.h, document.h)

proc documentChanged*(self: gen_qpdfsearchmodel_types.QPdfSearchModel): void =
  fcQPdfSearchModel_documentChanged(self.h)

type QPdfSearchModeldocumentChangedSlot* = proc()
proc fcQPdfSearchModel_slot_callback_documentChanged(slot: int) {.cdecl.} =
  let nimfunc = cast[ptr QPdfSearchModeldocumentChangedSlot](cast[pointer](slot))
  nimfunc[]()

proc fcQPdfSearchModel_slot_callback_documentChanged_release(slot: int) {.cdecl.} =
  let nimfunc = cast[ref QPdfSearchModeldocumentChangedSlot](cast[pointer](slot))
  GC_unref(nimfunc)

proc onDocumentChanged*(self: gen_qpdfsearchmodel_types.QPdfSearchModel, slot: QPdfSearchModeldocumentChangedSlot) =
  var tmp = new QPdfSearchModeldocumentChangedSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQPdfSearchModel_connect_documentChanged(self.h, cast[int](addr tmp[]), fcQPdfSearchModel_slot_callback_documentChanged, fcQPdfSearchModel_slot_callback_documentChanged_release)

proc searchStringChanged*(self: gen_qpdfsearchmodel_types.QPdfSearchModel): void =
  fcQPdfSearchModel_searchStringChanged(self.h)

type QPdfSearchModelsearchStringChangedSlot* = proc()
proc fcQPdfSearchModel_slot_callback_searchStringChanged(slot: int) {.cdecl.} =
  let nimfunc = cast[ptr QPdfSearchModelsearchStringChangedSlot](cast[pointer](slot))
  nimfunc[]()

proc fcQPdfSearchModel_slot_callback_searchStringChanged_release(slot: int) {.cdecl.} =
  let nimfunc = cast[ref QPdfSearchModelsearchStringChangedSlot](cast[pointer](slot))
  GC_unref(nimfunc)

proc onSearchStringChanged*(self: gen_qpdfsearchmodel_types.QPdfSearchModel, slot: QPdfSearchModelsearchStringChangedSlot) =
  var tmp = new QPdfSearchModelsearchStringChangedSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQPdfSearchModel_connect_searchStringChanged(self.h, cast[int](addr tmp[]), fcQPdfSearchModel_slot_callback_searchStringChanged, fcQPdfSearchModel_slot_callback_searchStringChanged_release)

proc countChanged*(self: gen_qpdfsearchmodel_types.QPdfSearchModel): void =
  fcQPdfSearchModel_countChanged(self.h)

type QPdfSearchModelcountChangedSlot* = proc()
proc fcQPdfSearchModel_slot_callback_countChanged(slot: int) {.cdecl.} =
  let nimfunc = cast[ptr QPdfSearchModelcountChangedSlot](cast[pointer](slot))
  nimfunc[]()

proc fcQPdfSearchModel_slot_callback_countChanged_release(slot: int) {.cdecl.} =
  let nimfunc = cast[ref QPdfSearchModelcountChangedSlot](cast[pointer](slot))
  GC_unref(nimfunc)

proc onCountChanged*(self: gen_qpdfsearchmodel_types.QPdfSearchModel, slot: QPdfSearchModelcountChangedSlot) =
  var tmp = new QPdfSearchModelcountChangedSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQPdfSearchModel_connect_countChanged(self.h, cast[int](addr tmp[]), fcQPdfSearchModel_slot_callback_countChanged, fcQPdfSearchModel_slot_callback_countChanged_release)

proc tr*(_: type gen_qpdfsearchmodel_types.QPdfSearchModel, s: cstring, c: cstring): string =
  let v_ms = fcQPdfSearchModel_trSC(s, c)
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

proc tr*(_: type gen_qpdfsearchmodel_types.QPdfSearchModel, s: cstring, c: cstring, n: cint): string =
  let v_ms = fcQPdfSearchModel_trSCN(s, c, n)
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

type QPdfSearchModelmetaObjectProc* = proc(self: QPdfSearchModel): gen_qobjectdefs_types.QMetaObject {.raises: [], gcsafe.}
type QPdfSearchModelmetacastProc* = proc(self: QPdfSearchModel, param1: cstring): pointer {.raises: [], gcsafe.}
type QPdfSearchModelmetacallProc* = proc(self: QPdfSearchModel, param1: cint, param2: cint, param3: pointer): cint {.raises: [], gcsafe.}
type QPdfSearchModelroleNamesProc* = proc(self: QPdfSearchModel): Table[cint,seq[byte]] {.raises: [], gcsafe.}
type QPdfSearchModelrowCountProc* = proc(self: QPdfSearchModel, parent: gen_qabstractitemmodel_types.QModelIndex): cint {.raises: [], gcsafe.}
type QPdfSearchModeldataProc* = proc(self: QPdfSearchModel, index: gen_qabstractitemmodel_types.QModelIndex, role: cint): gen_qvariant_types.QVariant {.raises: [], gcsafe.}
type QPdfSearchModeltimerEventProc* = proc(self: QPdfSearchModel, event: gen_qcoreevent_types.QTimerEvent): void {.raises: [], gcsafe.}
type QPdfSearchModelindexProc* = proc(self: QPdfSearchModel, row: cint, column: cint, parent: gen_qabstractitemmodel_types.QModelIndex): gen_qabstractitemmodel_types.QModelIndex {.raises: [], gcsafe.}
type QPdfSearchModelsiblingProc* = proc(self: QPdfSearchModel, row: cint, column: cint, idx: gen_qabstractitemmodel_types.QModelIndex): gen_qabstractitemmodel_types.QModelIndex {.raises: [], gcsafe.}
type QPdfSearchModeldropMimeDataProc* = proc(self: QPdfSearchModel, data: gen_qmimedata_types.QMimeData, action: cint, row: cint, column: cint, parent: gen_qabstractitemmodel_types.QModelIndex): bool {.raises: [], gcsafe.}
type QPdfSearchModelflagsProc* = proc(self: QPdfSearchModel, index: gen_qabstractitemmodel_types.QModelIndex): cint {.raises: [], gcsafe.}
type QPdfSearchModelsetDataProc* = proc(self: QPdfSearchModel, index: gen_qabstractitemmodel_types.QModelIndex, value: gen_qvariant_types.QVariant, role: cint): bool {.raises: [], gcsafe.}
type QPdfSearchModelheaderDataProc* = proc(self: QPdfSearchModel, section: cint, orientation: cint, role: cint): gen_qvariant_types.QVariant {.raises: [], gcsafe.}
type QPdfSearchModelsetHeaderDataProc* = proc(self: QPdfSearchModel, section: cint, orientation: cint, value: gen_qvariant_types.QVariant, role: cint): bool {.raises: [], gcsafe.}
type QPdfSearchModelitemDataProc* = proc(self: QPdfSearchModel, index: gen_qabstractitemmodel_types.QModelIndex): Table[cint,gen_qvariant_types.QVariant] {.raises: [], gcsafe.}
type QPdfSearchModelsetItemDataProc* = proc(self: QPdfSearchModel, index: gen_qabstractitemmodel_types.QModelIndex, roles: Table[cint,gen_qvariant_types.QVariant]): bool {.raises: [], gcsafe.}
type QPdfSearchModelclearItemDataProc* = proc(self: QPdfSearchModel, index: gen_qabstractitemmodel_types.QModelIndex): bool {.raises: [], gcsafe.}
type QPdfSearchModelmimeTypesProc* = proc(self: QPdfSearchModel): seq[string] {.raises: [], gcsafe.}
type QPdfSearchModelmimeDataProc* = proc(self: QPdfSearchModel, indexes: openArray[gen_qabstractitemmodel_types.QModelIndex]): gen_qmimedata_types.QMimeData {.raises: [], gcsafe.}
type QPdfSearchModelcanDropMimeDataProc* = proc(self: QPdfSearchModel, data: gen_qmimedata_types.QMimeData, action: cint, row: cint, column: cint, parent: gen_qabstractitemmodel_types.QModelIndex): bool {.raises: [], gcsafe.}
type QPdfSearchModelsupportedDropActionsProc* = proc(self: QPdfSearchModel): cint {.raises: [], gcsafe.}
type QPdfSearchModelsupportedDragActionsProc* = proc(self: QPdfSearchModel): cint {.raises: [], gcsafe.}
type QPdfSearchModelinsertRowsProc* = proc(self: QPdfSearchModel, row: cint, count: cint, parent: gen_qabstractitemmodel_types.QModelIndex): bool {.raises: [], gcsafe.}
type QPdfSearchModelinsertColumnsProc* = proc(self: QPdfSearchModel, column: cint, count: cint, parent: gen_qabstractitemmodel_types.QModelIndex): bool {.raises: [], gcsafe.}
type QPdfSearchModelremoveRowsProc* = proc(self: QPdfSearchModel, row: cint, count: cint, parent: gen_qabstractitemmodel_types.QModelIndex): bool {.raises: [], gcsafe.}
type QPdfSearchModelremoveColumnsProc* = proc(self: QPdfSearchModel, column: cint, count: cint, parent: gen_qabstractitemmodel_types.QModelIndex): bool {.raises: [], gcsafe.}
type QPdfSearchModelmoveRowsProc* = proc(self: QPdfSearchModel, sourceParent: gen_qabstractitemmodel_types.QModelIndex, sourceRow: cint, count: cint, destinationParent: gen_qabstractitemmodel_types.QModelIndex, destinationChild: cint): bool {.raises: [], gcsafe.}
type QPdfSearchModelmoveColumnsProc* = proc(self: QPdfSearchModel, sourceParent: gen_qabstractitemmodel_types.QModelIndex, sourceColumn: cint, count: cint, destinationParent: gen_qabstractitemmodel_types.QModelIndex, destinationChild: cint): bool {.raises: [], gcsafe.}
type QPdfSearchModelfetchMoreProc* = proc(self: QPdfSearchModel, parent: gen_qabstractitemmodel_types.QModelIndex): void {.raises: [], gcsafe.}
type QPdfSearchModelcanFetchMoreProc* = proc(self: QPdfSearchModel, parent: gen_qabstractitemmodel_types.QModelIndex): bool {.raises: [], gcsafe.}
type QPdfSearchModelsortProc* = proc(self: QPdfSearchModel, column: cint, order: cint): void {.raises: [], gcsafe.}
type QPdfSearchModelbuddyProc* = proc(self: QPdfSearchModel, index: gen_qabstractitemmodel_types.QModelIndex): gen_qabstractitemmodel_types.QModelIndex {.raises: [], gcsafe.}
type QPdfSearchModelmatchProc* = proc(self: QPdfSearchModel, start: gen_qabstractitemmodel_types.QModelIndex, role: cint, value: gen_qvariant_types.QVariant, hits: cint, flags: cint): seq[gen_qabstractitemmodel_types.QModelIndex] {.raises: [], gcsafe.}
type QPdfSearchModelspanProc* = proc(self: QPdfSearchModel, index: gen_qabstractitemmodel_types.QModelIndex): gen_qsize_types.QSize {.raises: [], gcsafe.}
type QPdfSearchModelmultiDataProc* = proc(self: QPdfSearchModel, index: gen_qabstractitemmodel_types.QModelIndex, roleDataSpan: gen_qabstractitemmodel_types.QModelRoleDataSpan): void {.raises: [], gcsafe.}
type QPdfSearchModelsubmitProc* = proc(self: QPdfSearchModel): bool {.raises: [], gcsafe.}
type QPdfSearchModelrevertProc* = proc(self: QPdfSearchModel): void {.raises: [], gcsafe.}
type QPdfSearchModelresetInternalDataProc* = proc(self: QPdfSearchModel): void {.raises: [], gcsafe.}
type QPdfSearchModeleventProc* = proc(self: QPdfSearchModel, event: gen_qcoreevent_types.QEvent): bool {.raises: [], gcsafe.}
type QPdfSearchModeleventFilterProc* = proc(self: QPdfSearchModel, watched: gen_qobject_types.QObject, event: gen_qcoreevent_types.QEvent): bool {.raises: [], gcsafe.}
type QPdfSearchModelchildEventProc* = proc(self: QPdfSearchModel, event: gen_qcoreevent_types.QChildEvent): void {.raises: [], gcsafe.}
type QPdfSearchModelcustomEventProc* = proc(self: QPdfSearchModel, event: gen_qcoreevent_types.QEvent): void {.raises: [], gcsafe.}
type QPdfSearchModelconnectNotifyProc* = proc(self: QPdfSearchModel, signal: gen_qmetaobject_types.QMetaMethod): void {.raises: [], gcsafe.}
type QPdfSearchModeldisconnectNotifyProc* = proc(self: QPdfSearchModel, signal: gen_qmetaobject_types.QMetaMethod): void {.raises: [], gcsafe.}

type QPdfSearchModelVTable* {.inheritable, pure.} = object
  vtbl: cQPdfSearchModelVTable
  metaObject*: QPdfSearchModelmetaObjectProc
  metacast*: QPdfSearchModelmetacastProc
  metacall*: QPdfSearchModelmetacallProc
  roleNames*: QPdfSearchModelroleNamesProc
  rowCount*: QPdfSearchModelrowCountProc
  data*: QPdfSearchModeldataProc
  timerEvent*: QPdfSearchModeltimerEventProc
  index*: QPdfSearchModelindexProc
  sibling*: QPdfSearchModelsiblingProc
  dropMimeData*: QPdfSearchModeldropMimeDataProc
  flags*: QPdfSearchModelflagsProc
  setData*: QPdfSearchModelsetDataProc
  headerData*: QPdfSearchModelheaderDataProc
  setHeaderData*: QPdfSearchModelsetHeaderDataProc
  itemData*: QPdfSearchModelitemDataProc
  setItemData*: QPdfSearchModelsetItemDataProc
  clearItemData*: QPdfSearchModelclearItemDataProc
  mimeTypes*: QPdfSearchModelmimeTypesProc
  mimeData*: QPdfSearchModelmimeDataProc
  canDropMimeData*: QPdfSearchModelcanDropMimeDataProc
  supportedDropActions*: QPdfSearchModelsupportedDropActionsProc
  supportedDragActions*: QPdfSearchModelsupportedDragActionsProc
  insertRows*: QPdfSearchModelinsertRowsProc
  insertColumns*: QPdfSearchModelinsertColumnsProc
  removeRows*: QPdfSearchModelremoveRowsProc
  removeColumns*: QPdfSearchModelremoveColumnsProc
  moveRows*: QPdfSearchModelmoveRowsProc
  moveColumns*: QPdfSearchModelmoveColumnsProc
  fetchMore*: QPdfSearchModelfetchMoreProc
  canFetchMore*: QPdfSearchModelcanFetchMoreProc
  sort*: QPdfSearchModelsortProc
  buddy*: QPdfSearchModelbuddyProc
  match*: QPdfSearchModelmatchProc
  span*: QPdfSearchModelspanProc
  multiData*: QPdfSearchModelmultiDataProc
  submit*: QPdfSearchModelsubmitProc
  revert*: QPdfSearchModelrevertProc
  resetInternalData*: QPdfSearchModelresetInternalDataProc
  event*: QPdfSearchModeleventProc
  eventFilter*: QPdfSearchModeleventFilterProc
  childEvent*: QPdfSearchModelchildEventProc
  customEvent*: QPdfSearchModelcustomEventProc
  connectNotify*: QPdfSearchModelconnectNotifyProc
  disconnectNotify*: QPdfSearchModeldisconnectNotifyProc

proc QPdfSearchModelmetaObject*(self: gen_qpdfsearchmodel_types.QPdfSearchModel): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQPdfSearchModel_virtualbase_metaObject(self.h), owned: false)

proc QPdfSearchModelmetacast*(self: gen_qpdfsearchmodel_types.QPdfSearchModel, param1: cstring): pointer =
  fcQPdfSearchModel_virtualbase_metacast(self.h, param1)

proc QPdfSearchModelmetacall*(self: gen_qpdfsearchmodel_types.QPdfSearchModel, param1: cint, param2: cint, param3: pointer): cint =
  fcQPdfSearchModel_virtualbase_metacall(self.h, cint(param1), param2, param3)

proc QPdfSearchModelroleNames*(self: gen_qpdfsearchmodel_types.QPdfSearchModel): Table[cint,seq[byte]] =
  var v_mm = fcQPdfSearchModel_virtualbase_roleNames(self.h)
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

proc QPdfSearchModelrowCount*(self: gen_qpdfsearchmodel_types.QPdfSearchModel, parent: gen_qabstractitemmodel_types.QModelIndex): cint =
  fcQPdfSearchModel_virtualbase_rowCount(self.h, parent.h)

proc QPdfSearchModeldata*(self: gen_qpdfsearchmodel_types.QPdfSearchModel, index: gen_qabstractitemmodel_types.QModelIndex, role: cint): gen_qvariant_types.QVariant =
  gen_qvariant_types.QVariant(h: fcQPdfSearchModel_virtualbase_data(self.h, index.h, role), owned: true)

proc QPdfSearchModeltimerEvent*(self: gen_qpdfsearchmodel_types.QPdfSearchModel, event: gen_qcoreevent_types.QTimerEvent): void =
  fcQPdfSearchModel_virtualbase_timerEvent(self.h, event.h)

proc QPdfSearchModelindex*(self: gen_qpdfsearchmodel_types.QPdfSearchModel, row: cint, column: cint, parent: gen_qabstractitemmodel_types.QModelIndex): gen_qabstractitemmodel_types.QModelIndex =
  gen_qabstractitemmodel_types.QModelIndex(h: fcQPdfSearchModel_virtualbase_index(self.h, row, column, parent.h), owned: true)

proc QPdfSearchModelsibling*(self: gen_qpdfsearchmodel_types.QPdfSearchModel, row: cint, column: cint, idx: gen_qabstractitemmodel_types.QModelIndex): gen_qabstractitemmodel_types.QModelIndex =
  gen_qabstractitemmodel_types.QModelIndex(h: fcQPdfSearchModel_virtualbase_sibling(self.h, row, column, idx.h), owned: true)

proc QPdfSearchModeldropMimeData*(self: gen_qpdfsearchmodel_types.QPdfSearchModel, data: gen_qmimedata_types.QMimeData, action: cint, row: cint, column: cint, parent: gen_qabstractitemmodel_types.QModelIndex): bool =
  fcQPdfSearchModel_virtualbase_dropMimeData(self.h, data.h, cint(action), row, column, parent.h)

proc QPdfSearchModelflags*(self: gen_qpdfsearchmodel_types.QPdfSearchModel, index: gen_qabstractitemmodel_types.QModelIndex): cint =
  cint(fcQPdfSearchModel_virtualbase_flags(self.h, index.h))

proc QPdfSearchModelsetData*(self: gen_qpdfsearchmodel_types.QPdfSearchModel, index: gen_qabstractitemmodel_types.QModelIndex, value: gen_qvariant_types.QVariant, role: cint): bool =
  fcQPdfSearchModel_virtualbase_setData(self.h, index.h, value.h, role)

proc QPdfSearchModelheaderData*(self: gen_qpdfsearchmodel_types.QPdfSearchModel, section: cint, orientation: cint, role: cint): gen_qvariant_types.QVariant =
  gen_qvariant_types.QVariant(h: fcQPdfSearchModel_virtualbase_headerData(self.h, section, cint(orientation), role), owned: true)

proc QPdfSearchModelsetHeaderData*(self: gen_qpdfsearchmodel_types.QPdfSearchModel, section: cint, orientation: cint, value: gen_qvariant_types.QVariant, role: cint): bool =
  fcQPdfSearchModel_virtualbase_setHeaderData(self.h, section, cint(orientation), value.h, role)

proc QPdfSearchModelitemData*(self: gen_qpdfsearchmodel_types.QPdfSearchModel, index: gen_qabstractitemmodel_types.QModelIndex): Table[cint,gen_qvariant_types.QVariant] =
  var v_mm = fcQPdfSearchModel_virtualbase_itemData(self.h, index.h)
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

proc QPdfSearchModelsetItemData*(self: gen_qpdfsearchmodel_types.QPdfSearchModel, index: gen_qabstractitemmodel_types.QModelIndex, roles: Table[cint,gen_qvariant_types.QVariant]): bool =
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

  fcQPdfSearchModel_virtualbase_setItemData(self.h, index.h, struct_seaqt_map(len: csize_t(len(roles)),keys: if len(roles) == 0: nil else: addr(roles_Keys_CArray[0]), values: if len(roles) == 0: nil else: addr(roles_Values_CArray[0]),))

proc QPdfSearchModelclearItemData*(self: gen_qpdfsearchmodel_types.QPdfSearchModel, index: gen_qabstractitemmodel_types.QModelIndex): bool =
  fcQPdfSearchModel_virtualbase_clearItemData(self.h, index.h)

proc QPdfSearchModelmimeTypes*(self: gen_qpdfsearchmodel_types.QPdfSearchModel): seq[string] =
  var v_ma = fcQPdfSearchModel_virtualbase_mimeTypes(self.h)
  var vx_ret = newSeq[string](int(v_ma.len))
  let v_outCast = cast[ptr UncheckedArray[struct_seaqt_string]](v_ma.data)
  for i in 0 ..< v_ma.len:
    let vx_lv_ms = v_outCast[i]
    let vx_lvx_ret = string.fromBytes(vx_lv_ms)
    c_free(vx_lv_ms.data)
    vx_ret[i] = vx_lvx_ret
  c_free(v_ma.data)
  vx_ret

proc QPdfSearchModelmimeData*(self: gen_qpdfsearchmodel_types.QPdfSearchModel, indexes: openArray[gen_qabstractitemmodel_types.QModelIndex]): gen_qmimedata_types.QMimeData =
  var indexes_CArray = newSeq[pointer](len(indexes))
  for i in 0..<len(indexes):
    indexes_CArray[i] = indexes[i].h

  gen_qmimedata_types.QMimeData(h: fcQPdfSearchModel_virtualbase_mimeData(self.h, struct_seaqt_array(len: csize_t(len(indexes)), data: if len(indexes) == 0: nil else: addr(indexes_CArray[0]))), owned: false)

proc QPdfSearchModelcanDropMimeData*(self: gen_qpdfsearchmodel_types.QPdfSearchModel, data: gen_qmimedata_types.QMimeData, action: cint, row: cint, column: cint, parent: gen_qabstractitemmodel_types.QModelIndex): bool =
  fcQPdfSearchModel_virtualbase_canDropMimeData(self.h, data.h, cint(action), row, column, parent.h)

proc QPdfSearchModelsupportedDropActions*(self: gen_qpdfsearchmodel_types.QPdfSearchModel): cint =
  cint(fcQPdfSearchModel_virtualbase_supportedDropActions(self.h))

proc QPdfSearchModelsupportedDragActions*(self: gen_qpdfsearchmodel_types.QPdfSearchModel): cint =
  cint(fcQPdfSearchModel_virtualbase_supportedDragActions(self.h))

proc QPdfSearchModelinsertRows*(self: gen_qpdfsearchmodel_types.QPdfSearchModel, row: cint, count: cint, parent: gen_qabstractitemmodel_types.QModelIndex): bool =
  fcQPdfSearchModel_virtualbase_insertRows(self.h, row, count, parent.h)

proc QPdfSearchModelinsertColumns*(self: gen_qpdfsearchmodel_types.QPdfSearchModel, column: cint, count: cint, parent: gen_qabstractitemmodel_types.QModelIndex): bool =
  fcQPdfSearchModel_virtualbase_insertColumns(self.h, column, count, parent.h)

proc QPdfSearchModelremoveRows*(self: gen_qpdfsearchmodel_types.QPdfSearchModel, row: cint, count: cint, parent: gen_qabstractitemmodel_types.QModelIndex): bool =
  fcQPdfSearchModel_virtualbase_removeRows(self.h, row, count, parent.h)

proc QPdfSearchModelremoveColumns*(self: gen_qpdfsearchmodel_types.QPdfSearchModel, column: cint, count: cint, parent: gen_qabstractitemmodel_types.QModelIndex): bool =
  fcQPdfSearchModel_virtualbase_removeColumns(self.h, column, count, parent.h)

proc QPdfSearchModelmoveRows*(self: gen_qpdfsearchmodel_types.QPdfSearchModel, sourceParent: gen_qabstractitemmodel_types.QModelIndex, sourceRow: cint, count: cint, destinationParent: gen_qabstractitemmodel_types.QModelIndex, destinationChild: cint): bool =
  fcQPdfSearchModel_virtualbase_moveRows(self.h, sourceParent.h, sourceRow, count, destinationParent.h, destinationChild)

proc QPdfSearchModelmoveColumns*(self: gen_qpdfsearchmodel_types.QPdfSearchModel, sourceParent: gen_qabstractitemmodel_types.QModelIndex, sourceColumn: cint, count: cint, destinationParent: gen_qabstractitemmodel_types.QModelIndex, destinationChild: cint): bool =
  fcQPdfSearchModel_virtualbase_moveColumns(self.h, sourceParent.h, sourceColumn, count, destinationParent.h, destinationChild)

proc QPdfSearchModelfetchMore*(self: gen_qpdfsearchmodel_types.QPdfSearchModel, parent: gen_qabstractitemmodel_types.QModelIndex): void =
  fcQPdfSearchModel_virtualbase_fetchMore(self.h, parent.h)

proc QPdfSearchModelcanFetchMore*(self: gen_qpdfsearchmodel_types.QPdfSearchModel, parent: gen_qabstractitemmodel_types.QModelIndex): bool =
  fcQPdfSearchModel_virtualbase_canFetchMore(self.h, parent.h)

proc QPdfSearchModelsort*(self: gen_qpdfsearchmodel_types.QPdfSearchModel, column: cint, order: cint): void =
  fcQPdfSearchModel_virtualbase_sort(self.h, column, cint(order))

proc QPdfSearchModelbuddy*(self: gen_qpdfsearchmodel_types.QPdfSearchModel, index: gen_qabstractitemmodel_types.QModelIndex): gen_qabstractitemmodel_types.QModelIndex =
  gen_qabstractitemmodel_types.QModelIndex(h: fcQPdfSearchModel_virtualbase_buddy(self.h, index.h), owned: true)

proc QPdfSearchModelmatch*(self: gen_qpdfsearchmodel_types.QPdfSearchModel, start: gen_qabstractitemmodel_types.QModelIndex, role: cint, value: gen_qvariant_types.QVariant, hits: cint, flags: cint): seq[gen_qabstractitemmodel_types.QModelIndex] =
  var v_ma = fcQPdfSearchModel_virtualbase_match(self.h, start.h, role, value.h, hits, cint(flags))
  var vx_ret = newSeq[gen_qabstractitemmodel_types.QModelIndex](int(v_ma.len))
  let v_outCast = cast[ptr UncheckedArray[pointer]](v_ma.data)
  for i in 0 ..< v_ma.len:
    vx_ret[i] = gen_qabstractitemmodel_types.QModelIndex(h: v_outCast[i], owned: true)
  c_free(v_ma.data)
  vx_ret

proc QPdfSearchModelspan*(self: gen_qpdfsearchmodel_types.QPdfSearchModel, index: gen_qabstractitemmodel_types.QModelIndex): gen_qsize_types.QSize =
  gen_qsize_types.QSize(h: fcQPdfSearchModel_virtualbase_span(self.h, index.h), owned: true)

proc QPdfSearchModelmultiData*(self: gen_qpdfsearchmodel_types.QPdfSearchModel, index: gen_qabstractitemmodel_types.QModelIndex, roleDataSpan: gen_qabstractitemmodel_types.QModelRoleDataSpan): void =
  fcQPdfSearchModel_virtualbase_multiData(self.h, index.h, roleDataSpan.h)

proc QPdfSearchModelsubmit*(self: gen_qpdfsearchmodel_types.QPdfSearchModel): bool =
  fcQPdfSearchModel_virtualbase_submit(self.h)

proc QPdfSearchModelrevert*(self: gen_qpdfsearchmodel_types.QPdfSearchModel): void =
  fcQPdfSearchModel_virtualbase_revert(self.h)

proc QPdfSearchModelresetInternalData*(self: gen_qpdfsearchmodel_types.QPdfSearchModel): void =
  fcQPdfSearchModel_virtualbase_resetInternalData(self.h)

proc QPdfSearchModelevent*(self: gen_qpdfsearchmodel_types.QPdfSearchModel, event: gen_qcoreevent_types.QEvent): bool =
  fcQPdfSearchModel_virtualbase_event(self.h, event.h)

proc QPdfSearchModeleventFilter*(self: gen_qpdfsearchmodel_types.QPdfSearchModel, watched: gen_qobject_types.QObject, event: gen_qcoreevent_types.QEvent): bool =
  fcQPdfSearchModel_virtualbase_eventFilter(self.h, watched.h, event.h)

proc QPdfSearchModelchildEvent*(self: gen_qpdfsearchmodel_types.QPdfSearchModel, event: gen_qcoreevent_types.QChildEvent): void =
  fcQPdfSearchModel_virtualbase_childEvent(self.h, event.h)

proc QPdfSearchModelcustomEvent*(self: gen_qpdfsearchmodel_types.QPdfSearchModel, event: gen_qcoreevent_types.QEvent): void =
  fcQPdfSearchModel_virtualbase_customEvent(self.h, event.h)

proc QPdfSearchModelconnectNotify*(self: gen_qpdfsearchmodel_types.QPdfSearchModel, signal: gen_qmetaobject_types.QMetaMethod): void =
  fcQPdfSearchModel_virtualbase_connectNotify(self.h, signal.h)

proc QPdfSearchModeldisconnectNotify*(self: gen_qpdfsearchmodel_types.QPdfSearchModel, signal: gen_qmetaobject_types.QMetaMethod): void =
  fcQPdfSearchModel_virtualbase_disconnectNotify(self.h, signal.h)


proc fcQPdfSearchModel_vtable_callback_metaObject(self: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QPdfSearchModelVTable](fcQPdfSearchModel_vdata(self)[])
  let self = QPdfSearchModel(h: self)
  var virtualReturn = vtbl[].metaObject(self)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc fcQPdfSearchModel_vtable_callback_metacast(self: pointer, param1: cstring): pointer {.cdecl.} =
  let vtbl = cast[ptr QPdfSearchModelVTable](fcQPdfSearchModel_vdata(self)[])
  let self = QPdfSearchModel(h: self)
  let slotval1 = (param1)
  var virtualReturn = vtbl[].metacast(self, slotval1)
  virtualReturn

proc fcQPdfSearchModel_vtable_callback_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.cdecl.} =
  let vtbl = cast[ptr QPdfSearchModelVTable](fcQPdfSearchModel_vdata(self)[])
  let self = QPdfSearchModel(h: self)
  let slotval1 = cint(param1)
  let slotval2 = param2
  let slotval3 = param3
  var virtualReturn = vtbl[].metacall(self, slotval1, slotval2, slotval3)
  virtualReturn

proc fcQPdfSearchModel_vtable_callback_roleNames(self: pointer): struct_seaqt_map {.cdecl.} =
  let vtbl = cast[ptr QPdfSearchModelVTable](fcQPdfSearchModel_vdata(self)[])
  let self = QPdfSearchModel(h: self)
  var virtualReturn = vtbl[].roleNames(self)
  var virtualReturn_Keys_CArray = cast[ptr UncheckedArray[cint]](if len(virtualReturn) > 0: c_malloc(csize_t(sizeof(cint) * len(virtualReturn))) else: nil)
  var virtualReturn_Values_CArray = cast[ptr UncheckedArray[struct_seaqt_string]](if len(virtualReturn) > 0: c_malloc(csize_t(sizeof(struct_seaqt_string) * len(virtualReturn))) else: nil)
  var virtualReturn_ctr = 0
  for virtualReturn_k in virtualReturn.keys():
    virtualReturn_Keys_CArray[virtualReturn_ctr] = virtualReturn_k
    virtualReturn_ctr += 1
  virtualReturn_ctr = 0
  for virtualReturn_v in virtualReturn.mvalues():
    var virtualReturn_v_copy = if len(virtualReturn_v) > 0: c_malloc(csize_t(len(virtualReturn_v))) else: nil
    if len(virtualReturn_v) > 0: copyMem(virtualReturn_v_copy, addr virtualReturn_v[0], csize_t(len(virtualReturn_v)))
    virtualReturn_Values_CArray[virtualReturn_ctr] = struct_seaqt_string(data: virtualReturn_v_copy, len: csize_t(len(virtualReturn_v)))
    virtualReturn_ctr += 1

  struct_seaqt_map(len: csize_t(len(virtualReturn)),keys: if len(virtualReturn) == 0: nil else: addr(virtualReturn_Keys_CArray[0]), values: if len(virtualReturn) == 0: nil else: addr(virtualReturn_Values_CArray[0]),)

proc fcQPdfSearchModel_vtable_callback_rowCount(self: pointer, parent: pointer): cint {.cdecl.} =
  let vtbl = cast[ptr QPdfSearchModelVTable](fcQPdfSearchModel_vdata(self)[])
  let self = QPdfSearchModel(h: self)
  let slotval1 = gen_qabstractitemmodel_types.QModelIndex(h: parent, owned: false)
  var virtualReturn = vtbl[].rowCount(self, slotval1)
  virtualReturn

proc fcQPdfSearchModel_vtable_callback_data(self: pointer, index: pointer, role: cint): pointer {.cdecl.} =
  let vtbl = cast[ptr QPdfSearchModelVTable](fcQPdfSearchModel_vdata(self)[])
  let self = QPdfSearchModel(h: self)
  let slotval1 = gen_qabstractitemmodel_types.QModelIndex(h: index, owned: false)
  let slotval2 = role
  var virtualReturn = vtbl[].data(self, slotval1, slotval2)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc fcQPdfSearchModel_vtable_callback_timerEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QPdfSearchModelVTable](fcQPdfSearchModel_vdata(self)[])
  let self = QPdfSearchModel(h: self)
  let slotval1 = gen_qcoreevent_types.QTimerEvent(h: event, owned: false)
  vtbl[].timerEvent(self, slotval1)

proc fcQPdfSearchModel_vtable_callback_index(self: pointer, row: cint, column: cint, parent: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QPdfSearchModelVTable](fcQPdfSearchModel_vdata(self)[])
  let self = QPdfSearchModel(h: self)
  let slotval1 = row
  let slotval2 = column
  let slotval3 = gen_qabstractitemmodel_types.QModelIndex(h: parent, owned: false)
  var virtualReturn = vtbl[].index(self, slotval1, slotval2, slotval3)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc fcQPdfSearchModel_vtable_callback_sibling(self: pointer, row: cint, column: cint, idx: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QPdfSearchModelVTable](fcQPdfSearchModel_vdata(self)[])
  let self = QPdfSearchModel(h: self)
  let slotval1 = row
  let slotval2 = column
  let slotval3 = gen_qabstractitemmodel_types.QModelIndex(h: idx, owned: false)
  var virtualReturn = vtbl[].sibling(self, slotval1, slotval2, slotval3)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc fcQPdfSearchModel_vtable_callback_dropMimeData(self: pointer, data: pointer, action: cint, row: cint, column: cint, parent: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QPdfSearchModelVTable](fcQPdfSearchModel_vdata(self)[])
  let self = QPdfSearchModel(h: self)
  let slotval1 = gen_qmimedata_types.QMimeData(h: data, owned: false)
  let slotval2 = cint(action)
  let slotval3 = row
  let slotval4 = column
  let slotval5 = gen_qabstractitemmodel_types.QModelIndex(h: parent, owned: false)
  var virtualReturn = vtbl[].dropMimeData(self, slotval1, slotval2, slotval3, slotval4, slotval5)
  virtualReturn

proc fcQPdfSearchModel_vtable_callback_flags(self: pointer, index: pointer): cint {.cdecl.} =
  let vtbl = cast[ptr QPdfSearchModelVTable](fcQPdfSearchModel_vdata(self)[])
  let self = QPdfSearchModel(h: self)
  let slotval1 = gen_qabstractitemmodel_types.QModelIndex(h: index, owned: false)
  var virtualReturn = vtbl[].flags(self, slotval1)
  cint(virtualReturn)

proc fcQPdfSearchModel_vtable_callback_setData(self: pointer, index: pointer, value: pointer, role: cint): bool {.cdecl.} =
  let vtbl = cast[ptr QPdfSearchModelVTable](fcQPdfSearchModel_vdata(self)[])
  let self = QPdfSearchModel(h: self)
  let slotval1 = gen_qabstractitemmodel_types.QModelIndex(h: index, owned: false)
  let slotval2 = gen_qvariant_types.QVariant(h: value, owned: false)
  let slotval3 = role
  var virtualReturn = vtbl[].setData(self, slotval1, slotval2, slotval3)
  virtualReturn

proc fcQPdfSearchModel_vtable_callback_headerData(self: pointer, section: cint, orientation: cint, role: cint): pointer {.cdecl.} =
  let vtbl = cast[ptr QPdfSearchModelVTable](fcQPdfSearchModel_vdata(self)[])
  let self = QPdfSearchModel(h: self)
  let slotval1 = section
  let slotval2 = cint(orientation)
  let slotval3 = role
  var virtualReturn = vtbl[].headerData(self, slotval1, slotval2, slotval3)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc fcQPdfSearchModel_vtable_callback_setHeaderData(self: pointer, section: cint, orientation: cint, value: pointer, role: cint): bool {.cdecl.} =
  let vtbl = cast[ptr QPdfSearchModelVTable](fcQPdfSearchModel_vdata(self)[])
  let self = QPdfSearchModel(h: self)
  let slotval1 = section
  let slotval2 = cint(orientation)
  let slotval3 = gen_qvariant_types.QVariant(h: value, owned: false)
  let slotval4 = role
  var virtualReturn = vtbl[].setHeaderData(self, slotval1, slotval2, slotval3, slotval4)
  virtualReturn

proc fcQPdfSearchModel_vtable_callback_itemData(self: pointer, index: pointer): struct_seaqt_map {.cdecl.} =
  let vtbl = cast[ptr QPdfSearchModelVTable](fcQPdfSearchModel_vdata(self)[])
  let self = QPdfSearchModel(h: self)
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

  struct_seaqt_map(len: csize_t(len(virtualReturn)),keys: if len(virtualReturn) == 0: nil else: addr(virtualReturn_Keys_CArray[0]), values: if len(virtualReturn) == 0: nil else: addr(virtualReturn_Values_CArray[0]),)

proc fcQPdfSearchModel_vtable_callback_setItemData(self: pointer, index: pointer, roles: struct_seaqt_map): bool {.cdecl.} =
  let vtbl = cast[ptr QPdfSearchModelVTable](fcQPdfSearchModel_vdata(self)[])
  let self = QPdfSearchModel(h: self)
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

proc fcQPdfSearchModel_vtable_callback_clearItemData(self: pointer, index: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QPdfSearchModelVTable](fcQPdfSearchModel_vdata(self)[])
  let self = QPdfSearchModel(h: self)
  let slotval1 = gen_qabstractitemmodel_types.QModelIndex(h: index, owned: false)
  var virtualReturn = vtbl[].clearItemData(self, slotval1)
  virtualReturn

proc fcQPdfSearchModel_vtable_callback_mimeTypes(self: pointer): struct_seaqt_array {.cdecl.} =
  let vtbl = cast[ptr QPdfSearchModelVTable](fcQPdfSearchModel_vdata(self)[])
  let self = QPdfSearchModel(h: self)
  var virtualReturn = vtbl[].mimeTypes(self)
  var virtualReturn_CArray = cast[ptr UncheckedArray[struct_seaqt_string]](if len(virtualReturn) > 0: c_malloc(c_sizet(sizeof(struct_seaqt_string) * len(virtualReturn))) else: nil)
  for i in 0..<len(virtualReturn):
    var virtualReturn_i_copy = if len(virtualReturn[i]) > 0: c_malloc(csize_t(len(virtualReturn[i]))) else: nil
    if len(virtualReturn[i]) > 0: copyMem(virtualReturn_i_copy, addr virtualReturn[i][0], csize_t(len(virtualReturn[i])))
    virtualReturn_CArray[i] = struct_seaqt_string(data: virtualReturn_i_copy, len: csize_t(len(virtualReturn[i])))

  struct_seaqt_array(len: csize_t(len(virtualReturn)), data: if len(virtualReturn) == 0: nil else: addr(virtualReturn_CArray[0]))

proc fcQPdfSearchModel_vtable_callback_mimeData(self: pointer, indexes: struct_seaqt_array): pointer {.cdecl.} =
  let vtbl = cast[ptr QPdfSearchModelVTable](fcQPdfSearchModel_vdata(self)[])
  let self = QPdfSearchModel(h: self)
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

proc fcQPdfSearchModel_vtable_callback_canDropMimeData(self: pointer, data: pointer, action: cint, row: cint, column: cint, parent: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QPdfSearchModelVTable](fcQPdfSearchModel_vdata(self)[])
  let self = QPdfSearchModel(h: self)
  let slotval1 = gen_qmimedata_types.QMimeData(h: data, owned: false)
  let slotval2 = cint(action)
  let slotval3 = row
  let slotval4 = column
  let slotval5 = gen_qabstractitemmodel_types.QModelIndex(h: parent, owned: false)
  var virtualReturn = vtbl[].canDropMimeData(self, slotval1, slotval2, slotval3, slotval4, slotval5)
  virtualReturn

proc fcQPdfSearchModel_vtable_callback_supportedDropActions(self: pointer): cint {.cdecl.} =
  let vtbl = cast[ptr QPdfSearchModelVTable](fcQPdfSearchModel_vdata(self)[])
  let self = QPdfSearchModel(h: self)
  var virtualReturn = vtbl[].supportedDropActions(self)
  cint(virtualReturn)

proc fcQPdfSearchModel_vtable_callback_supportedDragActions(self: pointer): cint {.cdecl.} =
  let vtbl = cast[ptr QPdfSearchModelVTable](fcQPdfSearchModel_vdata(self)[])
  let self = QPdfSearchModel(h: self)
  var virtualReturn = vtbl[].supportedDragActions(self)
  cint(virtualReturn)

proc fcQPdfSearchModel_vtable_callback_insertRows(self: pointer, row: cint, count: cint, parent: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QPdfSearchModelVTable](fcQPdfSearchModel_vdata(self)[])
  let self = QPdfSearchModel(h: self)
  let slotval1 = row
  let slotval2 = count
  let slotval3 = gen_qabstractitemmodel_types.QModelIndex(h: parent, owned: false)
  var virtualReturn = vtbl[].insertRows(self, slotval1, slotval2, slotval3)
  virtualReturn

proc fcQPdfSearchModel_vtable_callback_insertColumns(self: pointer, column: cint, count: cint, parent: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QPdfSearchModelVTable](fcQPdfSearchModel_vdata(self)[])
  let self = QPdfSearchModel(h: self)
  let slotval1 = column
  let slotval2 = count
  let slotval3 = gen_qabstractitemmodel_types.QModelIndex(h: parent, owned: false)
  var virtualReturn = vtbl[].insertColumns(self, slotval1, slotval2, slotval3)
  virtualReturn

proc fcQPdfSearchModel_vtable_callback_removeRows(self: pointer, row: cint, count: cint, parent: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QPdfSearchModelVTable](fcQPdfSearchModel_vdata(self)[])
  let self = QPdfSearchModel(h: self)
  let slotval1 = row
  let slotval2 = count
  let slotval3 = gen_qabstractitemmodel_types.QModelIndex(h: parent, owned: false)
  var virtualReturn = vtbl[].removeRows(self, slotval1, slotval2, slotval3)
  virtualReturn

proc fcQPdfSearchModel_vtable_callback_removeColumns(self: pointer, column: cint, count: cint, parent: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QPdfSearchModelVTable](fcQPdfSearchModel_vdata(self)[])
  let self = QPdfSearchModel(h: self)
  let slotval1 = column
  let slotval2 = count
  let slotval3 = gen_qabstractitemmodel_types.QModelIndex(h: parent, owned: false)
  var virtualReturn = vtbl[].removeColumns(self, slotval1, slotval2, slotval3)
  virtualReturn

proc fcQPdfSearchModel_vtable_callback_moveRows(self: pointer, sourceParent: pointer, sourceRow: cint, count: cint, destinationParent: pointer, destinationChild: cint): bool {.cdecl.} =
  let vtbl = cast[ptr QPdfSearchModelVTable](fcQPdfSearchModel_vdata(self)[])
  let self = QPdfSearchModel(h: self)
  let slotval1 = gen_qabstractitemmodel_types.QModelIndex(h: sourceParent, owned: false)
  let slotval2 = sourceRow
  let slotval3 = count
  let slotval4 = gen_qabstractitemmodel_types.QModelIndex(h: destinationParent, owned: false)
  let slotval5 = destinationChild
  var virtualReturn = vtbl[].moveRows(self, slotval1, slotval2, slotval3, slotval4, slotval5)
  virtualReturn

proc fcQPdfSearchModel_vtable_callback_moveColumns(self: pointer, sourceParent: pointer, sourceColumn: cint, count: cint, destinationParent: pointer, destinationChild: cint): bool {.cdecl.} =
  let vtbl = cast[ptr QPdfSearchModelVTable](fcQPdfSearchModel_vdata(self)[])
  let self = QPdfSearchModel(h: self)
  let slotval1 = gen_qabstractitemmodel_types.QModelIndex(h: sourceParent, owned: false)
  let slotval2 = sourceColumn
  let slotval3 = count
  let slotval4 = gen_qabstractitemmodel_types.QModelIndex(h: destinationParent, owned: false)
  let slotval5 = destinationChild
  var virtualReturn = vtbl[].moveColumns(self, slotval1, slotval2, slotval3, slotval4, slotval5)
  virtualReturn

proc fcQPdfSearchModel_vtable_callback_fetchMore(self: pointer, parent: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QPdfSearchModelVTable](fcQPdfSearchModel_vdata(self)[])
  let self = QPdfSearchModel(h: self)
  let slotval1 = gen_qabstractitemmodel_types.QModelIndex(h: parent, owned: false)
  vtbl[].fetchMore(self, slotval1)

proc fcQPdfSearchModel_vtable_callback_canFetchMore(self: pointer, parent: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QPdfSearchModelVTable](fcQPdfSearchModel_vdata(self)[])
  let self = QPdfSearchModel(h: self)
  let slotval1 = gen_qabstractitemmodel_types.QModelIndex(h: parent, owned: false)
  var virtualReturn = vtbl[].canFetchMore(self, slotval1)
  virtualReturn

proc fcQPdfSearchModel_vtable_callback_sort(self: pointer, column: cint, order: cint): void {.cdecl.} =
  let vtbl = cast[ptr QPdfSearchModelVTable](fcQPdfSearchModel_vdata(self)[])
  let self = QPdfSearchModel(h: self)
  let slotval1 = column
  let slotval2 = cint(order)
  vtbl[].sort(self, slotval1, slotval2)

proc fcQPdfSearchModel_vtable_callback_buddy(self: pointer, index: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QPdfSearchModelVTable](fcQPdfSearchModel_vdata(self)[])
  let self = QPdfSearchModel(h: self)
  let slotval1 = gen_qabstractitemmodel_types.QModelIndex(h: index, owned: false)
  var virtualReturn = vtbl[].buddy(self, slotval1)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc fcQPdfSearchModel_vtable_callback_match(self: pointer, start: pointer, role: cint, value: pointer, hits: cint, flags: cint): struct_seaqt_array {.cdecl.} =
  let vtbl = cast[ptr QPdfSearchModelVTable](fcQPdfSearchModel_vdata(self)[])
  let self = QPdfSearchModel(h: self)
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

  struct_seaqt_array(len: csize_t(len(virtualReturn)), data: if len(virtualReturn) == 0: nil else: addr(virtualReturn_CArray[0]))

proc fcQPdfSearchModel_vtable_callback_span(self: pointer, index: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QPdfSearchModelVTable](fcQPdfSearchModel_vdata(self)[])
  let self = QPdfSearchModel(h: self)
  let slotval1 = gen_qabstractitemmodel_types.QModelIndex(h: index, owned: false)
  var virtualReturn = vtbl[].span(self, slotval1)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc fcQPdfSearchModel_vtable_callback_multiData(self: pointer, index: pointer, roleDataSpan: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QPdfSearchModelVTable](fcQPdfSearchModel_vdata(self)[])
  let self = QPdfSearchModel(h: self)
  let slotval1 = gen_qabstractitemmodel_types.QModelIndex(h: index, owned: false)
  let slotval2 = gen_qabstractitemmodel_types.QModelRoleDataSpan(h: roleDataSpan, owned: true)
  vtbl[].multiData(self, slotval1, slotval2)

proc fcQPdfSearchModel_vtable_callback_submit(self: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QPdfSearchModelVTable](fcQPdfSearchModel_vdata(self)[])
  let self = QPdfSearchModel(h: self)
  var virtualReturn = vtbl[].submit(self)
  virtualReturn

proc fcQPdfSearchModel_vtable_callback_revert(self: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QPdfSearchModelVTable](fcQPdfSearchModel_vdata(self)[])
  let self = QPdfSearchModel(h: self)
  vtbl[].revert(self)

proc fcQPdfSearchModel_vtable_callback_resetInternalData(self: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QPdfSearchModelVTable](fcQPdfSearchModel_vdata(self)[])
  let self = QPdfSearchModel(h: self)
  vtbl[].resetInternalData(self)

proc fcQPdfSearchModel_vtable_callback_event(self: pointer, event: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QPdfSearchModelVTable](fcQPdfSearchModel_vdata(self)[])
  let self = QPdfSearchModel(h: self)
  let slotval1 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  var virtualReturn = vtbl[].event(self, slotval1)
  virtualReturn

proc fcQPdfSearchModel_vtable_callback_eventFilter(self: pointer, watched: pointer, event: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QPdfSearchModelVTable](fcQPdfSearchModel_vdata(self)[])
  let self = QPdfSearchModel(h: self)
  let slotval1 = gen_qobject_types.QObject(h: watched, owned: false)
  let slotval2 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  var virtualReturn = vtbl[].eventFilter(self, slotval1, slotval2)
  virtualReturn

proc fcQPdfSearchModel_vtable_callback_childEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QPdfSearchModelVTable](fcQPdfSearchModel_vdata(self)[])
  let self = QPdfSearchModel(h: self)
  let slotval1 = gen_qcoreevent_types.QChildEvent(h: event, owned: false)
  vtbl[].childEvent(self, slotval1)

proc fcQPdfSearchModel_vtable_callback_customEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QPdfSearchModelVTable](fcQPdfSearchModel_vdata(self)[])
  let self = QPdfSearchModel(h: self)
  let slotval1 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  vtbl[].customEvent(self, slotval1)

proc fcQPdfSearchModel_vtable_callback_connectNotify(self: pointer, signal: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QPdfSearchModelVTable](fcQPdfSearchModel_vdata(self)[])
  let self = QPdfSearchModel(h: self)
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal, owned: false)
  vtbl[].connectNotify(self, slotval1)

proc fcQPdfSearchModel_vtable_callback_disconnectNotify(self: pointer, signal: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QPdfSearchModelVTable](fcQPdfSearchModel_vdata(self)[])
  let self = QPdfSearchModel(h: self)
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal, owned: false)
  vtbl[].disconnectNotify(self, slotval1)

type VirtualQPdfSearchModel* {.inheritable.} = ref object of QPdfSearchModel
  vtbl*: cQPdfSearchModelVTable

method metaObject*(self: VirtualQPdfSearchModel): gen_qobjectdefs_types.QMetaObject {.base.} =
  QPdfSearchModelmetaObject(self[])
method metacast*(self: VirtualQPdfSearchModel, param1: cstring): pointer {.base.} =
  QPdfSearchModelmetacast(self[], param1)
method metacall*(self: VirtualQPdfSearchModel, param1: cint, param2: cint, param3: pointer): cint {.base.} =
  QPdfSearchModelmetacall(self[], param1, param2, param3)
method roleNames*(self: VirtualQPdfSearchModel): Table[cint,seq[byte]] {.base.} =
  QPdfSearchModelroleNames(self[])
method rowCount*(self: VirtualQPdfSearchModel, parent: gen_qabstractitemmodel_types.QModelIndex): cint {.base.} =
  QPdfSearchModelrowCount(self[], parent)
method data*(self: VirtualQPdfSearchModel, index: gen_qabstractitemmodel_types.QModelIndex, role: cint): gen_qvariant_types.QVariant {.base.} =
  QPdfSearchModeldata(self[], index, role)
method timerEvent*(self: VirtualQPdfSearchModel, event: gen_qcoreevent_types.QTimerEvent): void {.base.} =
  QPdfSearchModeltimerEvent(self[], event)
method index*(self: VirtualQPdfSearchModel, row: cint, column: cint, parent: gen_qabstractitemmodel_types.QModelIndex): gen_qabstractitemmodel_types.QModelIndex {.base.} =
  QPdfSearchModelindex(self[], row, column, parent)
method sibling*(self: VirtualQPdfSearchModel, row: cint, column: cint, idx: gen_qabstractitemmodel_types.QModelIndex): gen_qabstractitemmodel_types.QModelIndex {.base.} =
  QPdfSearchModelsibling(self[], row, column, idx)
method dropMimeData*(self: VirtualQPdfSearchModel, data: gen_qmimedata_types.QMimeData, action: cint, row: cint, column: cint, parent: gen_qabstractitemmodel_types.QModelIndex): bool {.base.} =
  QPdfSearchModeldropMimeData(self[], data, action, row, column, parent)
method flags*(self: VirtualQPdfSearchModel, index: gen_qabstractitemmodel_types.QModelIndex): cint {.base.} =
  QPdfSearchModelflags(self[], index)
method setData*(self: VirtualQPdfSearchModel, index: gen_qabstractitemmodel_types.QModelIndex, value: gen_qvariant_types.QVariant, role: cint): bool {.base.} =
  QPdfSearchModelsetData(self[], index, value, role)
method headerData*(self: VirtualQPdfSearchModel, section: cint, orientation: cint, role: cint): gen_qvariant_types.QVariant {.base.} =
  QPdfSearchModelheaderData(self[], section, orientation, role)
method setHeaderData*(self: VirtualQPdfSearchModel, section: cint, orientation: cint, value: gen_qvariant_types.QVariant, role: cint): bool {.base.} =
  QPdfSearchModelsetHeaderData(self[], section, orientation, value, role)
method itemData*(self: VirtualQPdfSearchModel, index: gen_qabstractitemmodel_types.QModelIndex): Table[cint,gen_qvariant_types.QVariant] {.base.} =
  QPdfSearchModelitemData(self[], index)
method setItemData*(self: VirtualQPdfSearchModel, index: gen_qabstractitemmodel_types.QModelIndex, roles: Table[cint,gen_qvariant_types.QVariant]): bool {.base.} =
  QPdfSearchModelsetItemData(self[], index, roles)
method clearItemData*(self: VirtualQPdfSearchModel, index: gen_qabstractitemmodel_types.QModelIndex): bool {.base.} =
  QPdfSearchModelclearItemData(self[], index)
method mimeTypes*(self: VirtualQPdfSearchModel): seq[string] {.base.} =
  QPdfSearchModelmimeTypes(self[])
method mimeData*(self: VirtualQPdfSearchModel, indexes: openArray[gen_qabstractitemmodel_types.QModelIndex]): gen_qmimedata_types.QMimeData {.base.} =
  QPdfSearchModelmimeData(self[], indexes)
method canDropMimeData*(self: VirtualQPdfSearchModel, data: gen_qmimedata_types.QMimeData, action: cint, row: cint, column: cint, parent: gen_qabstractitemmodel_types.QModelIndex): bool {.base.} =
  QPdfSearchModelcanDropMimeData(self[], data, action, row, column, parent)
method supportedDropActions*(self: VirtualQPdfSearchModel): cint {.base.} =
  QPdfSearchModelsupportedDropActions(self[])
method supportedDragActions*(self: VirtualQPdfSearchModel): cint {.base.} =
  QPdfSearchModelsupportedDragActions(self[])
method insertRows*(self: VirtualQPdfSearchModel, row: cint, count: cint, parent: gen_qabstractitemmodel_types.QModelIndex): bool {.base.} =
  QPdfSearchModelinsertRows(self[], row, count, parent)
method insertColumns*(self: VirtualQPdfSearchModel, column: cint, count: cint, parent: gen_qabstractitemmodel_types.QModelIndex): bool {.base.} =
  QPdfSearchModelinsertColumns(self[], column, count, parent)
method removeRows*(self: VirtualQPdfSearchModel, row: cint, count: cint, parent: gen_qabstractitemmodel_types.QModelIndex): bool {.base.} =
  QPdfSearchModelremoveRows(self[], row, count, parent)
method removeColumns*(self: VirtualQPdfSearchModel, column: cint, count: cint, parent: gen_qabstractitemmodel_types.QModelIndex): bool {.base.} =
  QPdfSearchModelremoveColumns(self[], column, count, parent)
method moveRows*(self: VirtualQPdfSearchModel, sourceParent: gen_qabstractitemmodel_types.QModelIndex, sourceRow: cint, count: cint, destinationParent: gen_qabstractitemmodel_types.QModelIndex, destinationChild: cint): bool {.base.} =
  QPdfSearchModelmoveRows(self[], sourceParent, sourceRow, count, destinationParent, destinationChild)
method moveColumns*(self: VirtualQPdfSearchModel, sourceParent: gen_qabstractitemmodel_types.QModelIndex, sourceColumn: cint, count: cint, destinationParent: gen_qabstractitemmodel_types.QModelIndex, destinationChild: cint): bool {.base.} =
  QPdfSearchModelmoveColumns(self[], sourceParent, sourceColumn, count, destinationParent, destinationChild)
method fetchMore*(self: VirtualQPdfSearchModel, parent: gen_qabstractitemmodel_types.QModelIndex): void {.base.} =
  QPdfSearchModelfetchMore(self[], parent)
method canFetchMore*(self: VirtualQPdfSearchModel, parent: gen_qabstractitemmodel_types.QModelIndex): bool {.base.} =
  QPdfSearchModelcanFetchMore(self[], parent)
method sort*(self: VirtualQPdfSearchModel, column: cint, order: cint): void {.base.} =
  QPdfSearchModelsort(self[], column, order)
method buddy*(self: VirtualQPdfSearchModel, index: gen_qabstractitemmodel_types.QModelIndex): gen_qabstractitemmodel_types.QModelIndex {.base.} =
  QPdfSearchModelbuddy(self[], index)
method match*(self: VirtualQPdfSearchModel, start: gen_qabstractitemmodel_types.QModelIndex, role: cint, value: gen_qvariant_types.QVariant, hits: cint, flags: cint): seq[gen_qabstractitemmodel_types.QModelIndex] {.base.} =
  QPdfSearchModelmatch(self[], start, role, value, hits, flags)
method span*(self: VirtualQPdfSearchModel, index: gen_qabstractitemmodel_types.QModelIndex): gen_qsize_types.QSize {.base.} =
  QPdfSearchModelspan(self[], index)
method multiData*(self: VirtualQPdfSearchModel, index: gen_qabstractitemmodel_types.QModelIndex, roleDataSpan: gen_qabstractitemmodel_types.QModelRoleDataSpan): void {.base.} =
  QPdfSearchModelmultiData(self[], index, roleDataSpan)
method submit*(self: VirtualQPdfSearchModel): bool {.base.} =
  QPdfSearchModelsubmit(self[])
method revert*(self: VirtualQPdfSearchModel): void {.base.} =
  QPdfSearchModelrevert(self[])
method resetInternalData*(self: VirtualQPdfSearchModel): void {.base.} =
  QPdfSearchModelresetInternalData(self[])
method event*(self: VirtualQPdfSearchModel, event: gen_qcoreevent_types.QEvent): bool {.base.} =
  QPdfSearchModelevent(self[], event)
method eventFilter*(self: VirtualQPdfSearchModel, watched: gen_qobject_types.QObject, event: gen_qcoreevent_types.QEvent): bool {.base.} =
  QPdfSearchModeleventFilter(self[], watched, event)
method childEvent*(self: VirtualQPdfSearchModel, event: gen_qcoreevent_types.QChildEvent): void {.base.} =
  QPdfSearchModelchildEvent(self[], event)
method customEvent*(self: VirtualQPdfSearchModel, event: gen_qcoreevent_types.QEvent): void {.base.} =
  QPdfSearchModelcustomEvent(self[], event)
method connectNotify*(self: VirtualQPdfSearchModel, signal: gen_qmetaobject_types.QMetaMethod): void {.base.} =
  QPdfSearchModelconnectNotify(self[], signal)
method disconnectNotify*(self: VirtualQPdfSearchModel, signal: gen_qmetaobject_types.QMetaMethod): void {.base.} =
  QPdfSearchModeldisconnectNotify(self[], signal)

proc fcQPdfSearchModel_method_callback_metaObject(self: pointer): pointer {.cdecl.} =
  let inst = cast[VirtualQPdfSearchModel](fcQPdfSearchModel_vdata(self)[])
  var virtualReturn = inst.metaObject()
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc fcQPdfSearchModel_method_callback_metacast(self: pointer, param1: cstring): pointer {.cdecl.} =
  let inst = cast[VirtualQPdfSearchModel](fcQPdfSearchModel_vdata(self)[])
  let slotval1 = (param1)
  var virtualReturn = inst.metacast(slotval1)
  virtualReturn

proc fcQPdfSearchModel_method_callback_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.cdecl.} =
  let inst = cast[VirtualQPdfSearchModel](fcQPdfSearchModel_vdata(self)[])
  let slotval1 = cint(param1)
  let slotval2 = param2
  let slotval3 = param3
  var virtualReturn = inst.metacall(slotval1, slotval2, slotval3)
  virtualReturn

proc fcQPdfSearchModel_method_callback_roleNames(self: pointer): struct_seaqt_map {.cdecl.} =
  let inst = cast[VirtualQPdfSearchModel](fcQPdfSearchModel_vdata(self)[])
  var virtualReturn = inst.roleNames()
  var virtualReturn_Keys_CArray = cast[ptr UncheckedArray[cint]](if len(virtualReturn) > 0: c_malloc(csize_t(sizeof(cint) * len(virtualReturn))) else: nil)
  var virtualReturn_Values_CArray = cast[ptr UncheckedArray[struct_seaqt_string]](if len(virtualReturn) > 0: c_malloc(csize_t(sizeof(struct_seaqt_string) * len(virtualReturn))) else: nil)
  var virtualReturn_ctr = 0
  for virtualReturn_k in virtualReturn.keys():
    virtualReturn_Keys_CArray[virtualReturn_ctr] = virtualReturn_k
    virtualReturn_ctr += 1
  virtualReturn_ctr = 0
  for virtualReturn_v in virtualReturn.mvalues():
    var virtualReturn_v_copy = if len(virtualReturn_v) > 0: c_malloc(csize_t(len(virtualReturn_v))) else: nil
    if len(virtualReturn_v) > 0: copyMem(virtualReturn_v_copy, addr virtualReturn_v[0], csize_t(len(virtualReturn_v)))
    virtualReturn_Values_CArray[virtualReturn_ctr] = struct_seaqt_string(data: virtualReturn_v_copy, len: csize_t(len(virtualReturn_v)))
    virtualReturn_ctr += 1

  struct_seaqt_map(len: csize_t(len(virtualReturn)),keys: if len(virtualReturn) == 0: nil else: addr(virtualReturn_Keys_CArray[0]), values: if len(virtualReturn) == 0: nil else: addr(virtualReturn_Values_CArray[0]),)

proc fcQPdfSearchModel_method_callback_rowCount(self: pointer, parent: pointer): cint {.cdecl.} =
  let inst = cast[VirtualQPdfSearchModel](fcQPdfSearchModel_vdata(self)[])
  let slotval1 = gen_qabstractitemmodel_types.QModelIndex(h: parent, owned: false)
  var virtualReturn = inst.rowCount(slotval1)
  virtualReturn

proc fcQPdfSearchModel_method_callback_data(self: pointer, index: pointer, role: cint): pointer {.cdecl.} =
  let inst = cast[VirtualQPdfSearchModel](fcQPdfSearchModel_vdata(self)[])
  let slotval1 = gen_qabstractitemmodel_types.QModelIndex(h: index, owned: false)
  let slotval2 = role
  var virtualReturn = inst.data(slotval1, slotval2)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc fcQPdfSearchModel_method_callback_timerEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQPdfSearchModel](fcQPdfSearchModel_vdata(self)[])
  let slotval1 = gen_qcoreevent_types.QTimerEvent(h: event, owned: false)
  inst.timerEvent(slotval1)

proc fcQPdfSearchModel_method_callback_index(self: pointer, row: cint, column: cint, parent: pointer): pointer {.cdecl.} =
  let inst = cast[VirtualQPdfSearchModel](fcQPdfSearchModel_vdata(self)[])
  let slotval1 = row
  let slotval2 = column
  let slotval3 = gen_qabstractitemmodel_types.QModelIndex(h: parent, owned: false)
  var virtualReturn = inst.index(slotval1, slotval2, slotval3)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc fcQPdfSearchModel_method_callback_sibling(self: pointer, row: cint, column: cint, idx: pointer): pointer {.cdecl.} =
  let inst = cast[VirtualQPdfSearchModel](fcQPdfSearchModel_vdata(self)[])
  let slotval1 = row
  let slotval2 = column
  let slotval3 = gen_qabstractitemmodel_types.QModelIndex(h: idx, owned: false)
  var virtualReturn = inst.sibling(slotval1, slotval2, slotval3)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc fcQPdfSearchModel_method_callback_dropMimeData(self: pointer, data: pointer, action: cint, row: cint, column: cint, parent: pointer): bool {.cdecl.} =
  let inst = cast[VirtualQPdfSearchModel](fcQPdfSearchModel_vdata(self)[])
  let slotval1 = gen_qmimedata_types.QMimeData(h: data, owned: false)
  let slotval2 = cint(action)
  let slotval3 = row
  let slotval4 = column
  let slotval5 = gen_qabstractitemmodel_types.QModelIndex(h: parent, owned: false)
  var virtualReturn = inst.dropMimeData(slotval1, slotval2, slotval3, slotval4, slotval5)
  virtualReturn

proc fcQPdfSearchModel_method_callback_flags(self: pointer, index: pointer): cint {.cdecl.} =
  let inst = cast[VirtualQPdfSearchModel](fcQPdfSearchModel_vdata(self)[])
  let slotval1 = gen_qabstractitemmodel_types.QModelIndex(h: index, owned: false)
  var virtualReturn = inst.flags(slotval1)
  cint(virtualReturn)

proc fcQPdfSearchModel_method_callback_setData(self: pointer, index: pointer, value: pointer, role: cint): bool {.cdecl.} =
  let inst = cast[VirtualQPdfSearchModel](fcQPdfSearchModel_vdata(self)[])
  let slotval1 = gen_qabstractitemmodel_types.QModelIndex(h: index, owned: false)
  let slotval2 = gen_qvariant_types.QVariant(h: value, owned: false)
  let slotval3 = role
  var virtualReturn = inst.setData(slotval1, slotval2, slotval3)
  virtualReturn

proc fcQPdfSearchModel_method_callback_headerData(self: pointer, section: cint, orientation: cint, role: cint): pointer {.cdecl.} =
  let inst = cast[VirtualQPdfSearchModel](fcQPdfSearchModel_vdata(self)[])
  let slotval1 = section
  let slotval2 = cint(orientation)
  let slotval3 = role
  var virtualReturn = inst.headerData(slotval1, slotval2, slotval3)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc fcQPdfSearchModel_method_callback_setHeaderData(self: pointer, section: cint, orientation: cint, value: pointer, role: cint): bool {.cdecl.} =
  let inst = cast[VirtualQPdfSearchModel](fcQPdfSearchModel_vdata(self)[])
  let slotval1 = section
  let slotval2 = cint(orientation)
  let slotval3 = gen_qvariant_types.QVariant(h: value, owned: false)
  let slotval4 = role
  var virtualReturn = inst.setHeaderData(slotval1, slotval2, slotval3, slotval4)
  virtualReturn

proc fcQPdfSearchModel_method_callback_itemData(self: pointer, index: pointer): struct_seaqt_map {.cdecl.} =
  let inst = cast[VirtualQPdfSearchModel](fcQPdfSearchModel_vdata(self)[])
  let slotval1 = gen_qabstractitemmodel_types.QModelIndex(h: index, owned: false)
  var virtualReturn = inst.itemData(slotval1)
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

  struct_seaqt_map(len: csize_t(len(virtualReturn)),keys: if len(virtualReturn) == 0: nil else: addr(virtualReturn_Keys_CArray[0]), values: if len(virtualReturn) == 0: nil else: addr(virtualReturn_Values_CArray[0]),)

proc fcQPdfSearchModel_method_callback_setItemData(self: pointer, index: pointer, roles: struct_seaqt_map): bool {.cdecl.} =
  let inst = cast[VirtualQPdfSearchModel](fcQPdfSearchModel_vdata(self)[])
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
  var virtualReturn = inst.setItemData(slotval1, slotval2)
  virtualReturn

proc fcQPdfSearchModel_method_callback_clearItemData(self: pointer, index: pointer): bool {.cdecl.} =
  let inst = cast[VirtualQPdfSearchModel](fcQPdfSearchModel_vdata(self)[])
  let slotval1 = gen_qabstractitemmodel_types.QModelIndex(h: index, owned: false)
  var virtualReturn = inst.clearItemData(slotval1)
  virtualReturn

proc fcQPdfSearchModel_method_callback_mimeTypes(self: pointer): struct_seaqt_array {.cdecl.} =
  let inst = cast[VirtualQPdfSearchModel](fcQPdfSearchModel_vdata(self)[])
  var virtualReturn = inst.mimeTypes()
  var virtualReturn_CArray = cast[ptr UncheckedArray[struct_seaqt_string]](if len(virtualReturn) > 0: c_malloc(c_sizet(sizeof(struct_seaqt_string) * len(virtualReturn))) else: nil)
  for i in 0..<len(virtualReturn):
    var virtualReturn_i_copy = if len(virtualReturn[i]) > 0: c_malloc(csize_t(len(virtualReturn[i]))) else: nil
    if len(virtualReturn[i]) > 0: copyMem(virtualReturn_i_copy, addr virtualReturn[i][0], csize_t(len(virtualReturn[i])))
    virtualReturn_CArray[i] = struct_seaqt_string(data: virtualReturn_i_copy, len: csize_t(len(virtualReturn[i])))

  struct_seaqt_array(len: csize_t(len(virtualReturn)), data: if len(virtualReturn) == 0: nil else: addr(virtualReturn_CArray[0]))

proc fcQPdfSearchModel_method_callback_mimeData(self: pointer, indexes: struct_seaqt_array): pointer {.cdecl.} =
  let inst = cast[VirtualQPdfSearchModel](fcQPdfSearchModel_vdata(self)[])
  var vindexes_ma = indexes
  var vindexesx_ret = newSeq[gen_qabstractitemmodel_types.QModelIndex](int(vindexes_ma.len))
  let vindexes_outCast = cast[ptr UncheckedArray[pointer]](vindexes_ma.data)
  for i in 0 ..< vindexes_ma.len:
    vindexesx_ret[i] = gen_qabstractitemmodel_types.QModelIndex(h: vindexes_outCast[i], owned: true)
  c_free(vindexes_ma.data)
  let slotval1 = vindexesx_ret
  var virtualReturn = inst.mimeData(slotval1)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc fcQPdfSearchModel_method_callback_canDropMimeData(self: pointer, data: pointer, action: cint, row: cint, column: cint, parent: pointer): bool {.cdecl.} =
  let inst = cast[VirtualQPdfSearchModel](fcQPdfSearchModel_vdata(self)[])
  let slotval1 = gen_qmimedata_types.QMimeData(h: data, owned: false)
  let slotval2 = cint(action)
  let slotval3 = row
  let slotval4 = column
  let slotval5 = gen_qabstractitemmodel_types.QModelIndex(h: parent, owned: false)
  var virtualReturn = inst.canDropMimeData(slotval1, slotval2, slotval3, slotval4, slotval5)
  virtualReturn

proc fcQPdfSearchModel_method_callback_supportedDropActions(self: pointer): cint {.cdecl.} =
  let inst = cast[VirtualQPdfSearchModel](fcQPdfSearchModel_vdata(self)[])
  var virtualReturn = inst.supportedDropActions()
  cint(virtualReturn)

proc fcQPdfSearchModel_method_callback_supportedDragActions(self: pointer): cint {.cdecl.} =
  let inst = cast[VirtualQPdfSearchModel](fcQPdfSearchModel_vdata(self)[])
  var virtualReturn = inst.supportedDragActions()
  cint(virtualReturn)

proc fcQPdfSearchModel_method_callback_insertRows(self: pointer, row: cint, count: cint, parent: pointer): bool {.cdecl.} =
  let inst = cast[VirtualQPdfSearchModel](fcQPdfSearchModel_vdata(self)[])
  let slotval1 = row
  let slotval2 = count
  let slotval3 = gen_qabstractitemmodel_types.QModelIndex(h: parent, owned: false)
  var virtualReturn = inst.insertRows(slotval1, slotval2, slotval3)
  virtualReturn

proc fcQPdfSearchModel_method_callback_insertColumns(self: pointer, column: cint, count: cint, parent: pointer): bool {.cdecl.} =
  let inst = cast[VirtualQPdfSearchModel](fcQPdfSearchModel_vdata(self)[])
  let slotval1 = column
  let slotval2 = count
  let slotval3 = gen_qabstractitemmodel_types.QModelIndex(h: parent, owned: false)
  var virtualReturn = inst.insertColumns(slotval1, slotval2, slotval3)
  virtualReturn

proc fcQPdfSearchModel_method_callback_removeRows(self: pointer, row: cint, count: cint, parent: pointer): bool {.cdecl.} =
  let inst = cast[VirtualQPdfSearchModel](fcQPdfSearchModel_vdata(self)[])
  let slotval1 = row
  let slotval2 = count
  let slotval3 = gen_qabstractitemmodel_types.QModelIndex(h: parent, owned: false)
  var virtualReturn = inst.removeRows(slotval1, slotval2, slotval3)
  virtualReturn

proc fcQPdfSearchModel_method_callback_removeColumns(self: pointer, column: cint, count: cint, parent: pointer): bool {.cdecl.} =
  let inst = cast[VirtualQPdfSearchModel](fcQPdfSearchModel_vdata(self)[])
  let slotval1 = column
  let slotval2 = count
  let slotval3 = gen_qabstractitemmodel_types.QModelIndex(h: parent, owned: false)
  var virtualReturn = inst.removeColumns(slotval1, slotval2, slotval3)
  virtualReturn

proc fcQPdfSearchModel_method_callback_moveRows(self: pointer, sourceParent: pointer, sourceRow: cint, count: cint, destinationParent: pointer, destinationChild: cint): bool {.cdecl.} =
  let inst = cast[VirtualQPdfSearchModel](fcQPdfSearchModel_vdata(self)[])
  let slotval1 = gen_qabstractitemmodel_types.QModelIndex(h: sourceParent, owned: false)
  let slotval2 = sourceRow
  let slotval3 = count
  let slotval4 = gen_qabstractitemmodel_types.QModelIndex(h: destinationParent, owned: false)
  let slotval5 = destinationChild
  var virtualReturn = inst.moveRows(slotval1, slotval2, slotval3, slotval4, slotval5)
  virtualReturn

proc fcQPdfSearchModel_method_callback_moveColumns(self: pointer, sourceParent: pointer, sourceColumn: cint, count: cint, destinationParent: pointer, destinationChild: cint): bool {.cdecl.} =
  let inst = cast[VirtualQPdfSearchModel](fcQPdfSearchModel_vdata(self)[])
  let slotval1 = gen_qabstractitemmodel_types.QModelIndex(h: sourceParent, owned: false)
  let slotval2 = sourceColumn
  let slotval3 = count
  let slotval4 = gen_qabstractitemmodel_types.QModelIndex(h: destinationParent, owned: false)
  let slotval5 = destinationChild
  var virtualReturn = inst.moveColumns(slotval1, slotval2, slotval3, slotval4, slotval5)
  virtualReturn

proc fcQPdfSearchModel_method_callback_fetchMore(self: pointer, parent: pointer): void {.cdecl.} =
  let inst = cast[VirtualQPdfSearchModel](fcQPdfSearchModel_vdata(self)[])
  let slotval1 = gen_qabstractitemmodel_types.QModelIndex(h: parent, owned: false)
  inst.fetchMore(slotval1)

proc fcQPdfSearchModel_method_callback_canFetchMore(self: pointer, parent: pointer): bool {.cdecl.} =
  let inst = cast[VirtualQPdfSearchModel](fcQPdfSearchModel_vdata(self)[])
  let slotval1 = gen_qabstractitemmodel_types.QModelIndex(h: parent, owned: false)
  var virtualReturn = inst.canFetchMore(slotval1)
  virtualReturn

proc fcQPdfSearchModel_method_callback_sort(self: pointer, column: cint, order: cint): void {.cdecl.} =
  let inst = cast[VirtualQPdfSearchModel](fcQPdfSearchModel_vdata(self)[])
  let slotval1 = column
  let slotval2 = cint(order)
  inst.sort(slotval1, slotval2)

proc fcQPdfSearchModel_method_callback_buddy(self: pointer, index: pointer): pointer {.cdecl.} =
  let inst = cast[VirtualQPdfSearchModel](fcQPdfSearchModel_vdata(self)[])
  let slotval1 = gen_qabstractitemmodel_types.QModelIndex(h: index, owned: false)
  var virtualReturn = inst.buddy(slotval1)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc fcQPdfSearchModel_method_callback_match(self: pointer, start: pointer, role: cint, value: pointer, hits: cint, flags: cint): struct_seaqt_array {.cdecl.} =
  let inst = cast[VirtualQPdfSearchModel](fcQPdfSearchModel_vdata(self)[])
  let slotval1 = gen_qabstractitemmodel_types.QModelIndex(h: start, owned: false)
  let slotval2 = role
  let slotval3 = gen_qvariant_types.QVariant(h: value, owned: false)
  let slotval4 = hits
  let slotval5 = cint(flags)
  var virtualReturn = inst.match(slotval1, slotval2, slotval3, slotval4, slotval5)
  var virtualReturn_CArray = cast[ptr UncheckedArray[pointer]](if len(virtualReturn) > 0: c_malloc(c_sizet(sizeof(pointer) * len(virtualReturn))) else: nil)
  for i in 0..<len(virtualReturn):
    virtualReturn[i].owned = false # TODO move?
    let virtualReturn_i_h = virtualReturn[i].h
    virtualReturn[i].h = nil
    virtualReturn_CArray[i] = virtualReturn_i_h

  struct_seaqt_array(len: csize_t(len(virtualReturn)), data: if len(virtualReturn) == 0: nil else: addr(virtualReturn_CArray[0]))

proc fcQPdfSearchModel_method_callback_span(self: pointer, index: pointer): pointer {.cdecl.} =
  let inst = cast[VirtualQPdfSearchModel](fcQPdfSearchModel_vdata(self)[])
  let slotval1 = gen_qabstractitemmodel_types.QModelIndex(h: index, owned: false)
  var virtualReturn = inst.span(slotval1)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc fcQPdfSearchModel_method_callback_multiData(self: pointer, index: pointer, roleDataSpan: pointer): void {.cdecl.} =
  let inst = cast[VirtualQPdfSearchModel](fcQPdfSearchModel_vdata(self)[])
  let slotval1 = gen_qabstractitemmodel_types.QModelIndex(h: index, owned: false)
  let slotval2 = gen_qabstractitemmodel_types.QModelRoleDataSpan(h: roleDataSpan, owned: true)
  inst.multiData(slotval1, slotval2)

proc fcQPdfSearchModel_method_callback_submit(self: pointer): bool {.cdecl.} =
  let inst = cast[VirtualQPdfSearchModel](fcQPdfSearchModel_vdata(self)[])
  var virtualReturn = inst.submit()
  virtualReturn

proc fcQPdfSearchModel_method_callback_revert(self: pointer): void {.cdecl.} =
  let inst = cast[VirtualQPdfSearchModel](fcQPdfSearchModel_vdata(self)[])
  inst.revert()

proc fcQPdfSearchModel_method_callback_resetInternalData(self: pointer): void {.cdecl.} =
  let inst = cast[VirtualQPdfSearchModel](fcQPdfSearchModel_vdata(self)[])
  inst.resetInternalData()

proc fcQPdfSearchModel_method_callback_event(self: pointer, event: pointer): bool {.cdecl.} =
  let inst = cast[VirtualQPdfSearchModel](fcQPdfSearchModel_vdata(self)[])
  let slotval1 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  var virtualReturn = inst.event(slotval1)
  virtualReturn

proc fcQPdfSearchModel_method_callback_eventFilter(self: pointer, watched: pointer, event: pointer): bool {.cdecl.} =
  let inst = cast[VirtualQPdfSearchModel](fcQPdfSearchModel_vdata(self)[])
  let slotval1 = gen_qobject_types.QObject(h: watched, owned: false)
  let slotval2 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  var virtualReturn = inst.eventFilter(slotval1, slotval2)
  virtualReturn

proc fcQPdfSearchModel_method_callback_childEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQPdfSearchModel](fcQPdfSearchModel_vdata(self)[])
  let slotval1 = gen_qcoreevent_types.QChildEvent(h: event, owned: false)
  inst.childEvent(slotval1)

proc fcQPdfSearchModel_method_callback_customEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQPdfSearchModel](fcQPdfSearchModel_vdata(self)[])
  let slotval1 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  inst.customEvent(slotval1)

proc fcQPdfSearchModel_method_callback_connectNotify(self: pointer, signal: pointer): void {.cdecl.} =
  let inst = cast[VirtualQPdfSearchModel](fcQPdfSearchModel_vdata(self)[])
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal, owned: false)
  inst.connectNotify(slotval1)

proc fcQPdfSearchModel_method_callback_disconnectNotify(self: pointer, signal: pointer): void {.cdecl.} =
  let inst = cast[VirtualQPdfSearchModel](fcQPdfSearchModel_vdata(self)[])
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal, owned: false)
  inst.disconnectNotify(slotval1)


proc updatePage*(self: gen_qpdfsearchmodel_types.QPdfSearchModel, page: cint): void =
  fcQPdfSearchModel_protectedbase_updatePage(self.h, page)

proc createIndex*(self: gen_qpdfsearchmodel_types.QPdfSearchModel, row: cint, column: cint): gen_qabstractitemmodel_types.QModelIndex =
  gen_qabstractitemmodel_types.QModelIndex(h: fcQPdfSearchModel_protectedbase_createIndex_row_column(self.h, row, column), owned: true)

proc encodeData*(self: gen_qpdfsearchmodel_types.QPdfSearchModel, indexes: openArray[gen_qabstractitemmodel_types.QModelIndex], stream: gen_qdatastream_types.QDataStream): void =
  var indexes_CArray = newSeq[pointer](len(indexes))
  for i in 0..<len(indexes):
    indexes_CArray[i] = indexes[i].h

  fcQPdfSearchModel_protectedbase_encodeData(self.h, struct_seaqt_array(len: csize_t(len(indexes)), data: if len(indexes) == 0: nil else: addr(indexes_CArray[0])), stream.h)

proc decodeData*(self: gen_qpdfsearchmodel_types.QPdfSearchModel, row: cint, column: cint, parent: gen_qabstractitemmodel_types.QModelIndex, stream: gen_qdatastream_types.QDataStream): bool =
  fcQPdfSearchModel_protectedbase_decodeData(self.h, row, column, parent.h, stream.h)

proc beginInsertRows*(self: gen_qpdfsearchmodel_types.QPdfSearchModel, parent: gen_qabstractitemmodel_types.QModelIndex, first: cint, last: cint): void =
  fcQPdfSearchModel_protectedbase_beginInsertRows(self.h, parent.h, first, last)

proc endInsertRows*(self: gen_qpdfsearchmodel_types.QPdfSearchModel): void =
  fcQPdfSearchModel_protectedbase_endInsertRows(self.h)

proc beginRemoveRows*(self: gen_qpdfsearchmodel_types.QPdfSearchModel, parent: gen_qabstractitemmodel_types.QModelIndex, first: cint, last: cint): void =
  fcQPdfSearchModel_protectedbase_beginRemoveRows(self.h, parent.h, first, last)

proc endRemoveRows*(self: gen_qpdfsearchmodel_types.QPdfSearchModel): void =
  fcQPdfSearchModel_protectedbase_endRemoveRows(self.h)

proc beginMoveRows*(self: gen_qpdfsearchmodel_types.QPdfSearchModel, sourceParent: gen_qabstractitemmodel_types.QModelIndex, sourceFirst: cint, sourceLast: cint, destinationParent: gen_qabstractitemmodel_types.QModelIndex, destinationRow: cint): bool =
  fcQPdfSearchModel_protectedbase_beginMoveRows(self.h, sourceParent.h, sourceFirst, sourceLast, destinationParent.h, destinationRow)

proc endMoveRows*(self: gen_qpdfsearchmodel_types.QPdfSearchModel): void =
  fcQPdfSearchModel_protectedbase_endMoveRows(self.h)

proc beginInsertColumns*(self: gen_qpdfsearchmodel_types.QPdfSearchModel, parent: gen_qabstractitemmodel_types.QModelIndex, first: cint, last: cint): void =
  fcQPdfSearchModel_protectedbase_beginInsertColumns(self.h, parent.h, first, last)

proc endInsertColumns*(self: gen_qpdfsearchmodel_types.QPdfSearchModel): void =
  fcQPdfSearchModel_protectedbase_endInsertColumns(self.h)

proc beginRemoveColumns*(self: gen_qpdfsearchmodel_types.QPdfSearchModel, parent: gen_qabstractitemmodel_types.QModelIndex, first: cint, last: cint): void =
  fcQPdfSearchModel_protectedbase_beginRemoveColumns(self.h, parent.h, first, last)

proc endRemoveColumns*(self: gen_qpdfsearchmodel_types.QPdfSearchModel): void =
  fcQPdfSearchModel_protectedbase_endRemoveColumns(self.h)

proc beginMoveColumns*(self: gen_qpdfsearchmodel_types.QPdfSearchModel, sourceParent: gen_qabstractitemmodel_types.QModelIndex, sourceFirst: cint, sourceLast: cint, destinationParent: gen_qabstractitemmodel_types.QModelIndex, destinationColumn: cint): bool =
  fcQPdfSearchModel_protectedbase_beginMoveColumns(self.h, sourceParent.h, sourceFirst, sourceLast, destinationParent.h, destinationColumn)

proc endMoveColumns*(self: gen_qpdfsearchmodel_types.QPdfSearchModel): void =
  fcQPdfSearchModel_protectedbase_endMoveColumns(self.h)

proc beginResetModel*(self: gen_qpdfsearchmodel_types.QPdfSearchModel): void =
  fcQPdfSearchModel_protectedbase_beginResetModel(self.h)

proc endResetModel*(self: gen_qpdfsearchmodel_types.QPdfSearchModel): void =
  fcQPdfSearchModel_protectedbase_endResetModel(self.h)

proc changePersistentIndex*(self: gen_qpdfsearchmodel_types.QPdfSearchModel, fromVal: gen_qabstractitemmodel_types.QModelIndex, to: gen_qabstractitemmodel_types.QModelIndex): void =
  fcQPdfSearchModel_protectedbase_changePersistentIndex(self.h, fromVal.h, to.h)

proc changePersistentIndexList*(self: gen_qpdfsearchmodel_types.QPdfSearchModel, fromVal: openArray[gen_qabstractitemmodel_types.QModelIndex], to: openArray[gen_qabstractitemmodel_types.QModelIndex]): void =
  var fromVal_CArray = newSeq[pointer](len(fromVal))
  for i in 0..<len(fromVal):
    fromVal_CArray[i] = fromVal[i].h

  var to_CArray = newSeq[pointer](len(to))
  for i in 0..<len(to):
    to_CArray[i] = to[i].h

  fcQPdfSearchModel_protectedbase_changePersistentIndexList(self.h, struct_seaqt_array(len: csize_t(len(fromVal)), data: if len(fromVal) == 0: nil else: addr(fromVal_CArray[0])), struct_seaqt_array(len: csize_t(len(to)), data: if len(to) == 0: nil else: addr(to_CArray[0])))

proc persistentIndexList*(self: gen_qpdfsearchmodel_types.QPdfSearchModel): seq[gen_qabstractitemmodel_types.QModelIndex] =
  var v_ma = fcQPdfSearchModel_protectedbase_persistentIndexList(self.h)
  var vx_ret = newSeq[gen_qabstractitemmodel_types.QModelIndex](int(v_ma.len))
  let v_outCast = cast[ptr UncheckedArray[pointer]](v_ma.data)
  for i in 0 ..< v_ma.len:
    vx_ret[i] = gen_qabstractitemmodel_types.QModelIndex(h: v_outCast[i], owned: true)
  c_free(v_ma.data)
  vx_ret

proc sender*(self: gen_qpdfsearchmodel_types.QPdfSearchModel): gen_qobject_types.QObject =
  gen_qobject_types.QObject(h: fcQPdfSearchModel_protectedbase_sender(self.h), owned: false)

proc senderSignalIndex*(self: gen_qpdfsearchmodel_types.QPdfSearchModel): cint =
  fcQPdfSearchModel_protectedbase_senderSignalIndex(self.h)

proc receivers*(self: gen_qpdfsearchmodel_types.QPdfSearchModel, signal: cstring): cint =
  fcQPdfSearchModel_protectedbase_receivers(self.h, signal)

proc isSignalConnected*(self: gen_qpdfsearchmodel_types.QPdfSearchModel, signal: gen_qmetaobject_types.QMetaMethod): bool =
  fcQPdfSearchModel_protectedbase_isSignalConnected(self.h, signal.h)

proc create*(T: type gen_qpdfsearchmodel_types.QPdfSearchModel,
    vtbl: ref QPdfSearchModelVTable = nil): gen_qpdfsearchmodel_types.QPdfSearchModel =
  let vtbl = if vtbl == nil: new QPdfSearchModelVTable else: vtbl
  GC_ref(vtbl)
  vtbl[].vtbl.destructor = proc(self: pointer) {.cdecl.} =
    let vtbl = cast[ref QPdfSearchModelVTable](fcQPdfSearchModel_vdata(self)[])
    GC_unref(vtbl)
  if not isNil(vtbl[].metaObject):
    vtbl[].vtbl.metaObject = fcQPdfSearchModel_vtable_callback_metaObject
  if not isNil(vtbl[].metacast):
    vtbl[].vtbl.metacast = fcQPdfSearchModel_vtable_callback_metacast
  if not isNil(vtbl[].metacall):
    vtbl[].vtbl.metacall = fcQPdfSearchModel_vtable_callback_metacall
  if not isNil(vtbl[].roleNames):
    vtbl[].vtbl.roleNames = fcQPdfSearchModel_vtable_callback_roleNames
  if not isNil(vtbl[].rowCount):
    vtbl[].vtbl.rowCount = fcQPdfSearchModel_vtable_callback_rowCount
  if not isNil(vtbl[].data):
    vtbl[].vtbl.data = fcQPdfSearchModel_vtable_callback_data
  if not isNil(vtbl[].timerEvent):
    vtbl[].vtbl.timerEvent = fcQPdfSearchModel_vtable_callback_timerEvent
  if not isNil(vtbl[].index):
    vtbl[].vtbl.index = fcQPdfSearchModel_vtable_callback_index
  if not isNil(vtbl[].sibling):
    vtbl[].vtbl.sibling = fcQPdfSearchModel_vtable_callback_sibling
  if not isNil(vtbl[].dropMimeData):
    vtbl[].vtbl.dropMimeData = fcQPdfSearchModel_vtable_callback_dropMimeData
  if not isNil(vtbl[].flags):
    vtbl[].vtbl.flags = fcQPdfSearchModel_vtable_callback_flags
  if not isNil(vtbl[].setData):
    vtbl[].vtbl.setData = fcQPdfSearchModel_vtable_callback_setData
  if not isNil(vtbl[].headerData):
    vtbl[].vtbl.headerData = fcQPdfSearchModel_vtable_callback_headerData
  if not isNil(vtbl[].setHeaderData):
    vtbl[].vtbl.setHeaderData = fcQPdfSearchModel_vtable_callback_setHeaderData
  if not isNil(vtbl[].itemData):
    vtbl[].vtbl.itemData = fcQPdfSearchModel_vtable_callback_itemData
  if not isNil(vtbl[].setItemData):
    vtbl[].vtbl.setItemData = fcQPdfSearchModel_vtable_callback_setItemData
  if not isNil(vtbl[].clearItemData):
    vtbl[].vtbl.clearItemData = fcQPdfSearchModel_vtable_callback_clearItemData
  if not isNil(vtbl[].mimeTypes):
    vtbl[].vtbl.mimeTypes = fcQPdfSearchModel_vtable_callback_mimeTypes
  if not isNil(vtbl[].mimeData):
    vtbl[].vtbl.mimeData = fcQPdfSearchModel_vtable_callback_mimeData
  if not isNil(vtbl[].canDropMimeData):
    vtbl[].vtbl.canDropMimeData = fcQPdfSearchModel_vtable_callback_canDropMimeData
  if not isNil(vtbl[].supportedDropActions):
    vtbl[].vtbl.supportedDropActions = fcQPdfSearchModel_vtable_callback_supportedDropActions
  if not isNil(vtbl[].supportedDragActions):
    vtbl[].vtbl.supportedDragActions = fcQPdfSearchModel_vtable_callback_supportedDragActions
  if not isNil(vtbl[].insertRows):
    vtbl[].vtbl.insertRows = fcQPdfSearchModel_vtable_callback_insertRows
  if not isNil(vtbl[].insertColumns):
    vtbl[].vtbl.insertColumns = fcQPdfSearchModel_vtable_callback_insertColumns
  if not isNil(vtbl[].removeRows):
    vtbl[].vtbl.removeRows = fcQPdfSearchModel_vtable_callback_removeRows
  if not isNil(vtbl[].removeColumns):
    vtbl[].vtbl.removeColumns = fcQPdfSearchModel_vtable_callback_removeColumns
  if not isNil(vtbl[].moveRows):
    vtbl[].vtbl.moveRows = fcQPdfSearchModel_vtable_callback_moveRows
  if not isNil(vtbl[].moveColumns):
    vtbl[].vtbl.moveColumns = fcQPdfSearchModel_vtable_callback_moveColumns
  if not isNil(vtbl[].fetchMore):
    vtbl[].vtbl.fetchMore = fcQPdfSearchModel_vtable_callback_fetchMore
  if not isNil(vtbl[].canFetchMore):
    vtbl[].vtbl.canFetchMore = fcQPdfSearchModel_vtable_callback_canFetchMore
  if not isNil(vtbl[].sort):
    vtbl[].vtbl.sort = fcQPdfSearchModel_vtable_callback_sort
  if not isNil(vtbl[].buddy):
    vtbl[].vtbl.buddy = fcQPdfSearchModel_vtable_callback_buddy
  if not isNil(vtbl[].match):
    vtbl[].vtbl.match = fcQPdfSearchModel_vtable_callback_match
  if not isNil(vtbl[].span):
    vtbl[].vtbl.span = fcQPdfSearchModel_vtable_callback_span
  if not isNil(vtbl[].multiData):
    vtbl[].vtbl.multiData = fcQPdfSearchModel_vtable_callback_multiData
  if not isNil(vtbl[].submit):
    vtbl[].vtbl.submit = fcQPdfSearchModel_vtable_callback_submit
  if not isNil(vtbl[].revert):
    vtbl[].vtbl.revert = fcQPdfSearchModel_vtable_callback_revert
  if not isNil(vtbl[].resetInternalData):
    vtbl[].vtbl.resetInternalData = fcQPdfSearchModel_vtable_callback_resetInternalData
  if not isNil(vtbl[].event):
    vtbl[].vtbl.event = fcQPdfSearchModel_vtable_callback_event
  if not isNil(vtbl[].eventFilter):
    vtbl[].vtbl.eventFilter = fcQPdfSearchModel_vtable_callback_eventFilter
  if not isNil(vtbl[].childEvent):
    vtbl[].vtbl.childEvent = fcQPdfSearchModel_vtable_callback_childEvent
  if not isNil(vtbl[].customEvent):
    vtbl[].vtbl.customEvent = fcQPdfSearchModel_vtable_callback_customEvent
  if not isNil(vtbl[].connectNotify):
    vtbl[].vtbl.connectNotify = fcQPdfSearchModel_vtable_callback_connectNotify
  if not isNil(vtbl[].disconnectNotify):
    vtbl[].vtbl.disconnectNotify = fcQPdfSearchModel_vtable_callback_disconnectNotify
  let tmp = gen_qpdfsearchmodel_types.QPdfSearchModel(h: fcQPdfSearchModel_new(addr(vtbl[].vtbl), csize_t(sizeof(pointer))), owned: true)
  fcQPdfSearchModel_vdata(tmp.h)[] = addr(vtbl[])
  tmp
proc create*(T: type gen_qpdfsearchmodel_types.QPdfSearchModel,
    parent: gen_qobject_types.QObject,
    vtbl: ref QPdfSearchModelVTable = nil): gen_qpdfsearchmodel_types.QPdfSearchModel =
  let vtbl = if vtbl == nil: new QPdfSearchModelVTable else: vtbl
  GC_ref(vtbl)
  vtbl[].vtbl.destructor = proc(self: pointer) {.cdecl.} =
    let vtbl = cast[ref QPdfSearchModelVTable](fcQPdfSearchModel_vdata(self)[])
    GC_unref(vtbl)
  if not isNil(vtbl[].metaObject):
    vtbl[].vtbl.metaObject = fcQPdfSearchModel_vtable_callback_metaObject
  if not isNil(vtbl[].metacast):
    vtbl[].vtbl.metacast = fcQPdfSearchModel_vtable_callback_metacast
  if not isNil(vtbl[].metacall):
    vtbl[].vtbl.metacall = fcQPdfSearchModel_vtable_callback_metacall
  if not isNil(vtbl[].roleNames):
    vtbl[].vtbl.roleNames = fcQPdfSearchModel_vtable_callback_roleNames
  if not isNil(vtbl[].rowCount):
    vtbl[].vtbl.rowCount = fcQPdfSearchModel_vtable_callback_rowCount
  if not isNil(vtbl[].data):
    vtbl[].vtbl.data = fcQPdfSearchModel_vtable_callback_data
  if not isNil(vtbl[].timerEvent):
    vtbl[].vtbl.timerEvent = fcQPdfSearchModel_vtable_callback_timerEvent
  if not isNil(vtbl[].index):
    vtbl[].vtbl.index = fcQPdfSearchModel_vtable_callback_index
  if not isNil(vtbl[].sibling):
    vtbl[].vtbl.sibling = fcQPdfSearchModel_vtable_callback_sibling
  if not isNil(vtbl[].dropMimeData):
    vtbl[].vtbl.dropMimeData = fcQPdfSearchModel_vtable_callback_dropMimeData
  if not isNil(vtbl[].flags):
    vtbl[].vtbl.flags = fcQPdfSearchModel_vtable_callback_flags
  if not isNil(vtbl[].setData):
    vtbl[].vtbl.setData = fcQPdfSearchModel_vtable_callback_setData
  if not isNil(vtbl[].headerData):
    vtbl[].vtbl.headerData = fcQPdfSearchModel_vtable_callback_headerData
  if not isNil(vtbl[].setHeaderData):
    vtbl[].vtbl.setHeaderData = fcQPdfSearchModel_vtable_callback_setHeaderData
  if not isNil(vtbl[].itemData):
    vtbl[].vtbl.itemData = fcQPdfSearchModel_vtable_callback_itemData
  if not isNil(vtbl[].setItemData):
    vtbl[].vtbl.setItemData = fcQPdfSearchModel_vtable_callback_setItemData
  if not isNil(vtbl[].clearItemData):
    vtbl[].vtbl.clearItemData = fcQPdfSearchModel_vtable_callback_clearItemData
  if not isNil(vtbl[].mimeTypes):
    vtbl[].vtbl.mimeTypes = fcQPdfSearchModel_vtable_callback_mimeTypes
  if not isNil(vtbl[].mimeData):
    vtbl[].vtbl.mimeData = fcQPdfSearchModel_vtable_callback_mimeData
  if not isNil(vtbl[].canDropMimeData):
    vtbl[].vtbl.canDropMimeData = fcQPdfSearchModel_vtable_callback_canDropMimeData
  if not isNil(vtbl[].supportedDropActions):
    vtbl[].vtbl.supportedDropActions = fcQPdfSearchModel_vtable_callback_supportedDropActions
  if not isNil(vtbl[].supportedDragActions):
    vtbl[].vtbl.supportedDragActions = fcQPdfSearchModel_vtable_callback_supportedDragActions
  if not isNil(vtbl[].insertRows):
    vtbl[].vtbl.insertRows = fcQPdfSearchModel_vtable_callback_insertRows
  if not isNil(vtbl[].insertColumns):
    vtbl[].vtbl.insertColumns = fcQPdfSearchModel_vtable_callback_insertColumns
  if not isNil(vtbl[].removeRows):
    vtbl[].vtbl.removeRows = fcQPdfSearchModel_vtable_callback_removeRows
  if not isNil(vtbl[].removeColumns):
    vtbl[].vtbl.removeColumns = fcQPdfSearchModel_vtable_callback_removeColumns
  if not isNil(vtbl[].moveRows):
    vtbl[].vtbl.moveRows = fcQPdfSearchModel_vtable_callback_moveRows
  if not isNil(vtbl[].moveColumns):
    vtbl[].vtbl.moveColumns = fcQPdfSearchModel_vtable_callback_moveColumns
  if not isNil(vtbl[].fetchMore):
    vtbl[].vtbl.fetchMore = fcQPdfSearchModel_vtable_callback_fetchMore
  if not isNil(vtbl[].canFetchMore):
    vtbl[].vtbl.canFetchMore = fcQPdfSearchModel_vtable_callback_canFetchMore
  if not isNil(vtbl[].sort):
    vtbl[].vtbl.sort = fcQPdfSearchModel_vtable_callback_sort
  if not isNil(vtbl[].buddy):
    vtbl[].vtbl.buddy = fcQPdfSearchModel_vtable_callback_buddy
  if not isNil(vtbl[].match):
    vtbl[].vtbl.match = fcQPdfSearchModel_vtable_callback_match
  if not isNil(vtbl[].span):
    vtbl[].vtbl.span = fcQPdfSearchModel_vtable_callback_span
  if not isNil(vtbl[].multiData):
    vtbl[].vtbl.multiData = fcQPdfSearchModel_vtable_callback_multiData
  if not isNil(vtbl[].submit):
    vtbl[].vtbl.submit = fcQPdfSearchModel_vtable_callback_submit
  if not isNil(vtbl[].revert):
    vtbl[].vtbl.revert = fcQPdfSearchModel_vtable_callback_revert
  if not isNil(vtbl[].resetInternalData):
    vtbl[].vtbl.resetInternalData = fcQPdfSearchModel_vtable_callback_resetInternalData
  if not isNil(vtbl[].event):
    vtbl[].vtbl.event = fcQPdfSearchModel_vtable_callback_event
  if not isNil(vtbl[].eventFilter):
    vtbl[].vtbl.eventFilter = fcQPdfSearchModel_vtable_callback_eventFilter
  if not isNil(vtbl[].childEvent):
    vtbl[].vtbl.childEvent = fcQPdfSearchModel_vtable_callback_childEvent
  if not isNil(vtbl[].customEvent):
    vtbl[].vtbl.customEvent = fcQPdfSearchModel_vtable_callback_customEvent
  if not isNil(vtbl[].connectNotify):
    vtbl[].vtbl.connectNotify = fcQPdfSearchModel_vtable_callback_connectNotify
  if not isNil(vtbl[].disconnectNotify):
    vtbl[].vtbl.disconnectNotify = fcQPdfSearchModel_vtable_callback_disconnectNotify
  let tmp = gen_qpdfsearchmodel_types.QPdfSearchModel(h: fcQPdfSearchModel_new2(addr(vtbl[].vtbl), csize_t(sizeof(pointer)), parent.h), owned: true)
  fcQPdfSearchModel_vdata(tmp.h)[] = addr(vtbl[])
  tmp
const cQPdfSearchModel_mvtbl = cQPdfSearchModelVTable(
  destructor: proc(self: pointer) {.cdecl.} =
    let inst = cast[ptr typeof(VirtualQPdfSearchModel()[])](self.fcQPdfSearchModel_vdata()[])
    inst[].h = nil
    inst[].owned = false,

  metaObject: fcQPdfSearchModel_method_callback_metaObject,
  metacast: fcQPdfSearchModel_method_callback_metacast,
  metacall: fcQPdfSearchModel_method_callback_metacall,
  roleNames: fcQPdfSearchModel_method_callback_roleNames,
  rowCount: fcQPdfSearchModel_method_callback_rowCount,
  data: fcQPdfSearchModel_method_callback_data,
  timerEvent: fcQPdfSearchModel_method_callback_timerEvent,
  index: fcQPdfSearchModel_method_callback_index,
  sibling: fcQPdfSearchModel_method_callback_sibling,
  dropMimeData: fcQPdfSearchModel_method_callback_dropMimeData,
  flags: fcQPdfSearchModel_method_callback_flags,
  setData: fcQPdfSearchModel_method_callback_setData,
  headerData: fcQPdfSearchModel_method_callback_headerData,
  setHeaderData: fcQPdfSearchModel_method_callback_setHeaderData,
  itemData: fcQPdfSearchModel_method_callback_itemData,
  setItemData: fcQPdfSearchModel_method_callback_setItemData,
  clearItemData: fcQPdfSearchModel_method_callback_clearItemData,
  mimeTypes: fcQPdfSearchModel_method_callback_mimeTypes,
  mimeData: fcQPdfSearchModel_method_callback_mimeData,
  canDropMimeData: fcQPdfSearchModel_method_callback_canDropMimeData,
  supportedDropActions: fcQPdfSearchModel_method_callback_supportedDropActions,
  supportedDragActions: fcQPdfSearchModel_method_callback_supportedDragActions,
  insertRows: fcQPdfSearchModel_method_callback_insertRows,
  insertColumns: fcQPdfSearchModel_method_callback_insertColumns,
  removeRows: fcQPdfSearchModel_method_callback_removeRows,
  removeColumns: fcQPdfSearchModel_method_callback_removeColumns,
  moveRows: fcQPdfSearchModel_method_callback_moveRows,
  moveColumns: fcQPdfSearchModel_method_callback_moveColumns,
  fetchMore: fcQPdfSearchModel_method_callback_fetchMore,
  canFetchMore: fcQPdfSearchModel_method_callback_canFetchMore,
  sort: fcQPdfSearchModel_method_callback_sort,
  buddy: fcQPdfSearchModel_method_callback_buddy,
  match: fcQPdfSearchModel_method_callback_match,
  span: fcQPdfSearchModel_method_callback_span,
  multiData: fcQPdfSearchModel_method_callback_multiData,
  submit: fcQPdfSearchModel_method_callback_submit,
  revert: fcQPdfSearchModel_method_callback_revert,
  resetInternalData: fcQPdfSearchModel_method_callback_resetInternalData,
  event: fcQPdfSearchModel_method_callback_event,
  eventFilter: fcQPdfSearchModel_method_callback_eventFilter,
  childEvent: fcQPdfSearchModel_method_callback_childEvent,
  customEvent: fcQPdfSearchModel_method_callback_customEvent,
  connectNotify: fcQPdfSearchModel_method_callback_connectNotify,
  disconnectNotify: fcQPdfSearchModel_method_callback_disconnectNotify,
)
proc create*(T: type gen_qpdfsearchmodel_types.QPdfSearchModel,
    inst: VirtualQPdfSearchModel) =
  if inst[].h != nil: delete(move(inst[]))
  inst[].h = fcQPdfSearchModel_new(addr(cQPdfSearchModel_mvtbl), csize_t(sizeof(pointer)))
  fcQPdfSearchModel_vdata(inst[].h)[] = addr inst[]
  inst[].owned = true

proc create*(T: type gen_qpdfsearchmodel_types.QPdfSearchModel,
    parent: gen_qobject_types.QObject,
    inst: VirtualQPdfSearchModel) =
  if inst[].h != nil: delete(move(inst[]))
  inst[].h = fcQPdfSearchModel_new2(addr(cQPdfSearchModel_mvtbl), csize_t(sizeof(pointer)), parent.h)
  fcQPdfSearchModel_vdata(inst[].h)[] = addr inst[]
  inst[].owned = true

proc staticMetaObject*(_: type gen_qpdfsearchmodel_types.QPdfSearchModel): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQPdfSearchModel_staticMetaObject())
