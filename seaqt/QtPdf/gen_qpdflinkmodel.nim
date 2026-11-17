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


{.compile("gen_qpdflinkmodel.cpp", QtPdfCFlags).}


type QPdfLinkModelRoleEnum* = distinct cint
template Link*(_: type QPdfLinkModelRoleEnum): untyped = 256
template Rectangle*(_: type QPdfLinkModelRoleEnum): untyped = 257
template Url*(_: type QPdfLinkModelRoleEnum): untyped = 258
template Page*(_: type QPdfLinkModelRoleEnum): untyped = 259
template Location*(_: type QPdfLinkModelRoleEnum): untyped = 260
template Zoom*(_: type QPdfLinkModelRoleEnum): untyped = 261
template NRoles*(_: type QPdfLinkModelRoleEnum): untyped = 262


import ./gen_qpdflinkmodel_types
export gen_qpdflinkmodel_types

import
  ../QtCore/gen_qabstractitemmodel,
  ../QtCore/gen_qcoreevent_types,
  ../QtCore/gen_qdatastream_types,
  ../QtCore/gen_qmetaobject_types,
  ../QtCore/gen_qmimedata_types,
  ../QtCore/gen_qobject_types,
  ../QtCore/gen_qobjectdefs_types,
  ../QtCore/gen_qpoint_types,
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
  gen_qpoint_types,
  gen_qsize_types,
  gen_qvariant_types,
  gen_qpdfdocument_types,
  gen_qpdflink_types

type cQPdfLinkModel*{.exportc: "QPdfLinkModel", incompleteStruct.} = object

proc fcQPdfLinkModel_metaObject(self: pointer): pointer {.importc: "QPdfLinkModel_metaObject".}
proc fcQPdfLinkModel_metacast(self: pointer, param1: cstring): pointer {.importc: "QPdfLinkModel_metacast".}
proc fcQPdfLinkModel_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.importc: "QPdfLinkModel_metacall".}
proc fcQPdfLinkModel_trS(s: cstring): struct_seaqt_string {.importc: "QPdfLinkModel_tr_s".}
proc fcQPdfLinkModel_document(self: pointer): pointer {.importc: "QPdfLinkModel_document".}
proc fcQPdfLinkModel_roleNames(self: pointer): struct_seaqt_map {.importc: "QPdfLinkModel_roleNames".}
proc fcQPdfLinkModel_rowCount(self: pointer, parent: pointer): cint {.importc: "QPdfLinkModel_rowCount".}
proc fcQPdfLinkModel_data(self: pointer, index: pointer, role: cint): pointer {.importc: "QPdfLinkModel_data".}
proc fcQPdfLinkModel_page(self: pointer): cint {.importc: "QPdfLinkModel_page".}
proc fcQPdfLinkModel_linkAt(self: pointer, point: pointer): pointer {.importc: "QPdfLinkModel_linkAt".}
proc fcQPdfLinkModel_setDocument(self: pointer, document: pointer): void {.importc: "QPdfLinkModel_setDocument".}
proc fcQPdfLinkModel_setPage(self: pointer, page: cint): void {.importc: "QPdfLinkModel_setPage".}
proc fcQPdfLinkModel_documentChanged(self: pointer): void {.importc: "QPdfLinkModel_documentChanged".}
proc fcQPdfLinkModel_connect_documentChanged(self: pointer, slot: int, callback: proc (slot: int) {.cdecl.}, release: proc(slot: int) {.cdecl.}) {.importc: "QPdfLinkModel_connect_documentChanged".}
proc fcQPdfLinkModel_pageChanged(self: pointer, page: cint): void {.importc: "QPdfLinkModel_pageChanged".}
proc fcQPdfLinkModel_connect_pageChanged(self: pointer, slot: int, callback: proc (slot: int, page: cint) {.cdecl.}, release: proc(slot: int) {.cdecl.}) {.importc: "QPdfLinkModel_connect_pageChanged".}
proc fcQPdfLinkModel_trSC(s: cstring, c: cstring): struct_seaqt_string {.importc: "QPdfLinkModel_tr_s_c".}
proc fcQPdfLinkModel_trSCN(s: cstring, c: cstring, n: cint): struct_seaqt_string {.importc: "QPdfLinkModel_tr_s_c_n".}
proc fcQPdfLinkModel_vdata(self: pointer): ptr pointer {.importc: "QPdfLinkModel_vdata".}
proc fvdata_cQPdfLinkModel(self: pointer): pointer {.importc: "vdata_QPdfLinkModel".}

type cQPdfLinkModelVTable {.pure.} = object
  destructor*: proc(self: pointer) {.cdecl, raises:[], gcsafe.}
  metaObject*: proc(self: pointer): pointer {.cdecl, raises: [], gcsafe.}
  metacast*: proc(self: pointer, param1: cstring): pointer {.cdecl, raises: [], gcsafe.}
  metacall*: proc(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.cdecl, raises: [], gcsafe.}
  roleNames*: proc(self: pointer): struct_seaqt_map {.cdecl, raises: [], gcsafe.}
  rowCount*: proc(self: pointer, parent: pointer): cint {.cdecl, raises: [], gcsafe.}
  data*: proc(self: pointer, index: pointer, role: cint): pointer {.cdecl, raises: [], gcsafe.}
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
  timerEvent*: proc(self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  childEvent*: proc(self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  customEvent*: proc(self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  connectNotify*: proc(self: pointer, signal: pointer): void {.cdecl, raises: [], gcsafe.}
  disconnectNotify*: proc(self: pointer, signal: pointer): void {.cdecl, raises: [], gcsafe.}
proc fcQPdfLinkModel_virtualbase_metaObject(self: pointer): pointer {.importc: "QPdfLinkModel_virtualbase_metaObject".}
proc fcQPdfLinkModel_virtualbase_metacast(self: pointer, param1: cstring): pointer {.importc: "QPdfLinkModel_virtualbase_metacast".}
proc fcQPdfLinkModel_virtualbase_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.importc: "QPdfLinkModel_virtualbase_metacall".}
proc fcQPdfLinkModel_virtualbase_roleNames(self: pointer): struct_seaqt_map {.importc: "QPdfLinkModel_virtualbase_roleNames".}
proc fcQPdfLinkModel_virtualbase_rowCount(self: pointer, parent: pointer): cint {.importc: "QPdfLinkModel_virtualbase_rowCount".}
proc fcQPdfLinkModel_virtualbase_data(self: pointer, index: pointer, role: cint): pointer {.importc: "QPdfLinkModel_virtualbase_data".}
proc fcQPdfLinkModel_virtualbase_index(self: pointer, row: cint, column: cint, parent: pointer): pointer {.importc: "QPdfLinkModel_virtualbase_index".}
proc fcQPdfLinkModel_virtualbase_sibling(self: pointer, row: cint, column: cint, idx: pointer): pointer {.importc: "QPdfLinkModel_virtualbase_sibling".}
proc fcQPdfLinkModel_virtualbase_dropMimeData(self: pointer, data: pointer, action: cint, row: cint, column: cint, parent: pointer): bool {.importc: "QPdfLinkModel_virtualbase_dropMimeData".}
proc fcQPdfLinkModel_virtualbase_flags(self: pointer, index: pointer): cint {.importc: "QPdfLinkModel_virtualbase_flags".}
proc fcQPdfLinkModel_virtualbase_setData(self: pointer, index: pointer, value: pointer, role: cint): bool {.importc: "QPdfLinkModel_virtualbase_setData".}
proc fcQPdfLinkModel_virtualbase_headerData(self: pointer, section: cint, orientation: cint, role: cint): pointer {.importc: "QPdfLinkModel_virtualbase_headerData".}
proc fcQPdfLinkModel_virtualbase_setHeaderData(self: pointer, section: cint, orientation: cint, value: pointer, role: cint): bool {.importc: "QPdfLinkModel_virtualbase_setHeaderData".}
proc fcQPdfLinkModel_virtualbase_itemData(self: pointer, index: pointer): struct_seaqt_map {.importc: "QPdfLinkModel_virtualbase_itemData".}
proc fcQPdfLinkModel_virtualbase_setItemData(self: pointer, index: pointer, roles: struct_seaqt_map): bool {.importc: "QPdfLinkModel_virtualbase_setItemData".}
proc fcQPdfLinkModel_virtualbase_clearItemData(self: pointer, index: pointer): bool {.importc: "QPdfLinkModel_virtualbase_clearItemData".}
proc fcQPdfLinkModel_virtualbase_mimeTypes(self: pointer): struct_seaqt_array {.importc: "QPdfLinkModel_virtualbase_mimeTypes".}
proc fcQPdfLinkModel_virtualbase_mimeData(self: pointer, indexes: struct_seaqt_array): pointer {.importc: "QPdfLinkModel_virtualbase_mimeData".}
proc fcQPdfLinkModel_virtualbase_canDropMimeData(self: pointer, data: pointer, action: cint, row: cint, column: cint, parent: pointer): bool {.importc: "QPdfLinkModel_virtualbase_canDropMimeData".}
proc fcQPdfLinkModel_virtualbase_supportedDropActions(self: pointer): cint {.importc: "QPdfLinkModel_virtualbase_supportedDropActions".}
proc fcQPdfLinkModel_virtualbase_supportedDragActions(self: pointer): cint {.importc: "QPdfLinkModel_virtualbase_supportedDragActions".}
proc fcQPdfLinkModel_virtualbase_insertRows(self: pointer, row: cint, count: cint, parent: pointer): bool {.importc: "QPdfLinkModel_virtualbase_insertRows".}
proc fcQPdfLinkModel_virtualbase_insertColumns(self: pointer, column: cint, count: cint, parent: pointer): bool {.importc: "QPdfLinkModel_virtualbase_insertColumns".}
proc fcQPdfLinkModel_virtualbase_removeRows(self: pointer, row: cint, count: cint, parent: pointer): bool {.importc: "QPdfLinkModel_virtualbase_removeRows".}
proc fcQPdfLinkModel_virtualbase_removeColumns(self: pointer, column: cint, count: cint, parent: pointer): bool {.importc: "QPdfLinkModel_virtualbase_removeColumns".}
proc fcQPdfLinkModel_virtualbase_moveRows(self: pointer, sourceParent: pointer, sourceRow: cint, count: cint, destinationParent: pointer, destinationChild: cint): bool {.importc: "QPdfLinkModel_virtualbase_moveRows".}
proc fcQPdfLinkModel_virtualbase_moveColumns(self: pointer, sourceParent: pointer, sourceColumn: cint, count: cint, destinationParent: pointer, destinationChild: cint): bool {.importc: "QPdfLinkModel_virtualbase_moveColumns".}
proc fcQPdfLinkModel_virtualbase_fetchMore(self: pointer, parent: pointer): void {.importc: "QPdfLinkModel_virtualbase_fetchMore".}
proc fcQPdfLinkModel_virtualbase_canFetchMore(self: pointer, parent: pointer): bool {.importc: "QPdfLinkModel_virtualbase_canFetchMore".}
proc fcQPdfLinkModel_virtualbase_sort(self: pointer, column: cint, order: cint): void {.importc: "QPdfLinkModel_virtualbase_sort".}
proc fcQPdfLinkModel_virtualbase_buddy(self: pointer, index: pointer): pointer {.importc: "QPdfLinkModel_virtualbase_buddy".}
proc fcQPdfLinkModel_virtualbase_match(self: pointer, start: pointer, role: cint, value: pointer, hits: cint, flags: cint): struct_seaqt_array {.importc: "QPdfLinkModel_virtualbase_match".}
proc fcQPdfLinkModel_virtualbase_span(self: pointer, index: pointer): pointer {.importc: "QPdfLinkModel_virtualbase_span".}
proc fcQPdfLinkModel_virtualbase_multiData(self: pointer, index: pointer, roleDataSpan: pointer): void {.importc: "QPdfLinkModel_virtualbase_multiData".}
proc fcQPdfLinkModel_virtualbase_submit(self: pointer): bool {.importc: "QPdfLinkModel_virtualbase_submit".}
proc fcQPdfLinkModel_virtualbase_revert(self: pointer): void {.importc: "QPdfLinkModel_virtualbase_revert".}
proc fcQPdfLinkModel_virtualbase_resetInternalData(self: pointer): void {.importc: "QPdfLinkModel_virtualbase_resetInternalData".}
proc fcQPdfLinkModel_virtualbase_event(self: pointer, event: pointer): bool {.importc: "QPdfLinkModel_virtualbase_event".}
proc fcQPdfLinkModel_virtualbase_eventFilter(self: pointer, watched: pointer, event: pointer): bool {.importc: "QPdfLinkModel_virtualbase_eventFilter".}
proc fcQPdfLinkModel_virtualbase_timerEvent(self: pointer, event: pointer): void {.importc: "QPdfLinkModel_virtualbase_timerEvent".}
proc fcQPdfLinkModel_virtualbase_childEvent(self: pointer, event: pointer): void {.importc: "QPdfLinkModel_virtualbase_childEvent".}
proc fcQPdfLinkModel_virtualbase_customEvent(self: pointer, event: pointer): void {.importc: "QPdfLinkModel_virtualbase_customEvent".}
proc fcQPdfLinkModel_virtualbase_connectNotify(self: pointer, signal: pointer): void {.importc: "QPdfLinkModel_virtualbase_connectNotify".}
proc fcQPdfLinkModel_virtualbase_disconnectNotify(self: pointer, signal: pointer): void {.importc: "QPdfLinkModel_virtualbase_disconnectNotify".}
proc fcQPdfLinkModel_protectedbase_createIndex_row_column(self: pointer, row: cint, column: cint): pointer {.importc: "QPdfLinkModel_protectedbase_createIndex_row_column".}
proc fcQPdfLinkModel_protectedbase_encodeData(self: pointer, indexes: struct_seaqt_array, stream: pointer): void {.importc: "QPdfLinkModel_protectedbase_encodeData".}
proc fcQPdfLinkModel_protectedbase_decodeData(self: pointer, row: cint, column: cint, parent: pointer, stream: pointer): bool {.importc: "QPdfLinkModel_protectedbase_decodeData".}
proc fcQPdfLinkModel_protectedbase_beginInsertRows(self: pointer, parent: pointer, first: cint, last: cint): void {.importc: "QPdfLinkModel_protectedbase_beginInsertRows".}
proc fcQPdfLinkModel_protectedbase_endInsertRows(self: pointer): void {.importc: "QPdfLinkModel_protectedbase_endInsertRows".}
proc fcQPdfLinkModel_protectedbase_beginRemoveRows(self: pointer, parent: pointer, first: cint, last: cint): void {.importc: "QPdfLinkModel_protectedbase_beginRemoveRows".}
proc fcQPdfLinkModel_protectedbase_endRemoveRows(self: pointer): void {.importc: "QPdfLinkModel_protectedbase_endRemoveRows".}
proc fcQPdfLinkModel_protectedbase_beginMoveRows(self: pointer, sourceParent: pointer, sourceFirst: cint, sourceLast: cint, destinationParent: pointer, destinationRow: cint): bool {.importc: "QPdfLinkModel_protectedbase_beginMoveRows".}
proc fcQPdfLinkModel_protectedbase_endMoveRows(self: pointer): void {.importc: "QPdfLinkModel_protectedbase_endMoveRows".}
proc fcQPdfLinkModel_protectedbase_beginInsertColumns(self: pointer, parent: pointer, first: cint, last: cint): void {.importc: "QPdfLinkModel_protectedbase_beginInsertColumns".}
proc fcQPdfLinkModel_protectedbase_endInsertColumns(self: pointer): void {.importc: "QPdfLinkModel_protectedbase_endInsertColumns".}
proc fcQPdfLinkModel_protectedbase_beginRemoveColumns(self: pointer, parent: pointer, first: cint, last: cint): void {.importc: "QPdfLinkModel_protectedbase_beginRemoveColumns".}
proc fcQPdfLinkModel_protectedbase_endRemoveColumns(self: pointer): void {.importc: "QPdfLinkModel_protectedbase_endRemoveColumns".}
proc fcQPdfLinkModel_protectedbase_beginMoveColumns(self: pointer, sourceParent: pointer, sourceFirst: cint, sourceLast: cint, destinationParent: pointer, destinationColumn: cint): bool {.importc: "QPdfLinkModel_protectedbase_beginMoveColumns".}
proc fcQPdfLinkModel_protectedbase_endMoveColumns(self: pointer): void {.importc: "QPdfLinkModel_protectedbase_endMoveColumns".}
proc fcQPdfLinkModel_protectedbase_beginResetModel(self: pointer): void {.importc: "QPdfLinkModel_protectedbase_beginResetModel".}
proc fcQPdfLinkModel_protectedbase_endResetModel(self: pointer): void {.importc: "QPdfLinkModel_protectedbase_endResetModel".}
proc fcQPdfLinkModel_protectedbase_changePersistentIndex(self: pointer, fromVal: pointer, to: pointer): void {.importc: "QPdfLinkModel_protectedbase_changePersistentIndex".}
proc fcQPdfLinkModel_protectedbase_changePersistentIndexList(self: pointer, fromVal: struct_seaqt_array, to: struct_seaqt_array): void {.importc: "QPdfLinkModel_protectedbase_changePersistentIndexList".}
proc fcQPdfLinkModel_protectedbase_persistentIndexList(self: pointer): struct_seaqt_array {.importc: "QPdfLinkModel_protectedbase_persistentIndexList".}
proc fcQPdfLinkModel_protectedbase_sender(self: pointer): pointer {.importc: "QPdfLinkModel_protectedbase_sender".}
proc fcQPdfLinkModel_protectedbase_senderSignalIndex(self: pointer): cint {.importc: "QPdfLinkModel_protectedbase_senderSignalIndex".}
proc fcQPdfLinkModel_protectedbase_receivers(self: pointer, signal: cstring): cint {.importc: "QPdfLinkModel_protectedbase_receivers".}
proc fcQPdfLinkModel_protectedbase_isSignalConnected(self: pointer, signal: pointer): bool {.importc: "QPdfLinkModel_protectedbase_isSignalConnected".}
proc fcQPdfLinkModel_new(vtbl: pointer, vdata: csize_t): ptr cQPdfLinkModel {.importc: "QPdfLinkModel_new".}
proc fcQPdfLinkModel_new2(vtbl: pointer, vdata: csize_t, parent: pointer): ptr cQPdfLinkModel {.importc: "QPdfLinkModel_new_parent".}
proc fcQPdfLinkModel_staticMetaObject(): pointer {.importc: "QPdfLinkModel_staticMetaObject".}

proc metaObject*(self: gen_qpdflinkmodel_types.QPdfLinkModel): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQPdfLinkModel_metaObject(self.h), owned: false)

proc metacast*(self: gen_qpdflinkmodel_types.QPdfLinkModel, param1: cstring): pointer =
  fcQPdfLinkModel_metacast(self.h, param1)

proc metacall*(self: gen_qpdflinkmodel_types.QPdfLinkModel, param1: cint, param2: cint, param3: pointer): cint =
  fcQPdfLinkModel_metacall(self.h, cint(param1), param2, param3)

proc tr*(_: type gen_qpdflinkmodel_types.QPdfLinkModel, s: cstring): string =
  let v_ms = fcQPdfLinkModel_trS(s)
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

proc document*(self: gen_qpdflinkmodel_types.QPdfLinkModel): gen_qpdfdocument_types.QPdfDocument =
  gen_qpdfdocument_types.QPdfDocument(h: fcQPdfLinkModel_document(self.h), owned: false)

proc roleNames*(self: gen_qpdflinkmodel_types.QPdfLinkModel): Table[cint,seq[byte]] =
  var v_mm = fcQPdfLinkModel_roleNames(self.h)
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

proc rowCount*(self: gen_qpdflinkmodel_types.QPdfLinkModel, parent: gen_qabstractitemmodel_types.QModelIndex): cint =
  fcQPdfLinkModel_rowCount(self.h, parent.h)

proc data*(self: gen_qpdflinkmodel_types.QPdfLinkModel, index: gen_qabstractitemmodel_types.QModelIndex, role: cint): gen_qvariant_types.QVariant =
  gen_qvariant_types.QVariant(h: fcQPdfLinkModel_data(self.h, index.h, role), owned: true)

proc page*(self: gen_qpdflinkmodel_types.QPdfLinkModel): cint =
  fcQPdfLinkModel_page(self.h)

proc linkAt*(self: gen_qpdflinkmodel_types.QPdfLinkModel, point: gen_qpoint_types.QPointF): gen_qpdflink_types.QPdfLink =
  gen_qpdflink_types.QPdfLink(h: fcQPdfLinkModel_linkAt(self.h, point.h), owned: true)

proc setDocument*(self: gen_qpdflinkmodel_types.QPdfLinkModel, document: gen_qpdfdocument_types.QPdfDocument): void =
  fcQPdfLinkModel_setDocument(self.h, document.h)

proc setPage*(self: gen_qpdflinkmodel_types.QPdfLinkModel, page: cint): void =
  fcQPdfLinkModel_setPage(self.h, page)

proc documentChanged*(self: gen_qpdflinkmodel_types.QPdfLinkModel): void =
  fcQPdfLinkModel_documentChanged(self.h)

type QPdfLinkModeldocumentChangedSlot* = proc()
proc fcQPdfLinkModel_slot_callback_documentChanged(slot: int) {.cdecl.} =
  let nimfunc = cast[ptr QPdfLinkModeldocumentChangedSlot](cast[pointer](slot))
  nimfunc[]()

proc fcQPdfLinkModel_slot_callback_documentChanged_release(slot: int) {.cdecl.} =
  let nimfunc = cast[ref QPdfLinkModeldocumentChangedSlot](cast[pointer](slot))
  GC_unref(nimfunc)

proc onDocumentChanged*(self: gen_qpdflinkmodel_types.QPdfLinkModel, slot: QPdfLinkModeldocumentChangedSlot) =
  var tmp = new QPdfLinkModeldocumentChangedSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQPdfLinkModel_connect_documentChanged(self.h, cast[int](addr tmp[]), fcQPdfLinkModel_slot_callback_documentChanged, fcQPdfLinkModel_slot_callback_documentChanged_release)

proc pageChanged*(self: gen_qpdflinkmodel_types.QPdfLinkModel, page: cint): void =
  fcQPdfLinkModel_pageChanged(self.h, page)

type QPdfLinkModelpageChangedSlot* = proc(page: cint)
proc fcQPdfLinkModel_slot_callback_pageChanged(slot: int, page: cint) {.cdecl.} =
  let nimfunc = cast[ptr QPdfLinkModelpageChangedSlot](cast[pointer](slot))
  let slotval1 = page

  nimfunc[](slotval1)

proc fcQPdfLinkModel_slot_callback_pageChanged_release(slot: int) {.cdecl.} =
  let nimfunc = cast[ref QPdfLinkModelpageChangedSlot](cast[pointer](slot))
  GC_unref(nimfunc)

proc onPageChanged*(self: gen_qpdflinkmodel_types.QPdfLinkModel, slot: QPdfLinkModelpageChangedSlot) =
  var tmp = new QPdfLinkModelpageChangedSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQPdfLinkModel_connect_pageChanged(self.h, cast[int](addr tmp[]), fcQPdfLinkModel_slot_callback_pageChanged, fcQPdfLinkModel_slot_callback_pageChanged_release)

proc tr*(_: type gen_qpdflinkmodel_types.QPdfLinkModel, s: cstring, c: cstring): string =
  let v_ms = fcQPdfLinkModel_trSC(s, c)
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

proc tr*(_: type gen_qpdflinkmodel_types.QPdfLinkModel, s: cstring, c: cstring, n: cint): string =
  let v_ms = fcQPdfLinkModel_trSCN(s, c, n)
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

type QPdfLinkModelmetaObjectProc* = proc(self: QPdfLinkModel): gen_qobjectdefs_types.QMetaObject {.raises: [], gcsafe.}
type QPdfLinkModelmetacastProc* = proc(self: QPdfLinkModel, param1: cstring): pointer {.raises: [], gcsafe.}
type QPdfLinkModelmetacallProc* = proc(self: QPdfLinkModel, param1: cint, param2: cint, param3: pointer): cint {.raises: [], gcsafe.}
type QPdfLinkModelroleNamesProc* = proc(self: QPdfLinkModel): Table[cint,seq[byte]] {.raises: [], gcsafe.}
type QPdfLinkModelrowCountProc* = proc(self: QPdfLinkModel, parent: gen_qabstractitemmodel_types.QModelIndex): cint {.raises: [], gcsafe.}
type QPdfLinkModeldataProc* = proc(self: QPdfLinkModel, index: gen_qabstractitemmodel_types.QModelIndex, role: cint): gen_qvariant_types.QVariant {.raises: [], gcsafe.}
type QPdfLinkModelindexProc* = proc(self: QPdfLinkModel, row: cint, column: cint, parent: gen_qabstractitemmodel_types.QModelIndex): gen_qabstractitemmodel_types.QModelIndex {.raises: [], gcsafe.}
type QPdfLinkModelsiblingProc* = proc(self: QPdfLinkModel, row: cint, column: cint, idx: gen_qabstractitemmodel_types.QModelIndex): gen_qabstractitemmodel_types.QModelIndex {.raises: [], gcsafe.}
type QPdfLinkModeldropMimeDataProc* = proc(self: QPdfLinkModel, data: gen_qmimedata_types.QMimeData, action: cint, row: cint, column: cint, parent: gen_qabstractitemmodel_types.QModelIndex): bool {.raises: [], gcsafe.}
type QPdfLinkModelflagsProc* = proc(self: QPdfLinkModel, index: gen_qabstractitemmodel_types.QModelIndex): cint {.raises: [], gcsafe.}
type QPdfLinkModelsetDataProc* = proc(self: QPdfLinkModel, index: gen_qabstractitemmodel_types.QModelIndex, value: gen_qvariant_types.QVariant, role: cint): bool {.raises: [], gcsafe.}
type QPdfLinkModelheaderDataProc* = proc(self: QPdfLinkModel, section: cint, orientation: cint, role: cint): gen_qvariant_types.QVariant {.raises: [], gcsafe.}
type QPdfLinkModelsetHeaderDataProc* = proc(self: QPdfLinkModel, section: cint, orientation: cint, value: gen_qvariant_types.QVariant, role: cint): bool {.raises: [], gcsafe.}
type QPdfLinkModelitemDataProc* = proc(self: QPdfLinkModel, index: gen_qabstractitemmodel_types.QModelIndex): Table[cint,gen_qvariant_types.QVariant] {.raises: [], gcsafe.}
type QPdfLinkModelsetItemDataProc* = proc(self: QPdfLinkModel, index: gen_qabstractitemmodel_types.QModelIndex, roles: Table[cint,gen_qvariant_types.QVariant]): bool {.raises: [], gcsafe.}
type QPdfLinkModelclearItemDataProc* = proc(self: QPdfLinkModel, index: gen_qabstractitemmodel_types.QModelIndex): bool {.raises: [], gcsafe.}
type QPdfLinkModelmimeTypesProc* = proc(self: QPdfLinkModel): seq[string] {.raises: [], gcsafe.}
type QPdfLinkModelmimeDataProc* = proc(self: QPdfLinkModel, indexes: openArray[gen_qabstractitemmodel_types.QModelIndex]): gen_qmimedata_types.QMimeData {.raises: [], gcsafe.}
type QPdfLinkModelcanDropMimeDataProc* = proc(self: QPdfLinkModel, data: gen_qmimedata_types.QMimeData, action: cint, row: cint, column: cint, parent: gen_qabstractitemmodel_types.QModelIndex): bool {.raises: [], gcsafe.}
type QPdfLinkModelsupportedDropActionsProc* = proc(self: QPdfLinkModel): cint {.raises: [], gcsafe.}
type QPdfLinkModelsupportedDragActionsProc* = proc(self: QPdfLinkModel): cint {.raises: [], gcsafe.}
type QPdfLinkModelinsertRowsProc* = proc(self: QPdfLinkModel, row: cint, count: cint, parent: gen_qabstractitemmodel_types.QModelIndex): bool {.raises: [], gcsafe.}
type QPdfLinkModelinsertColumnsProc* = proc(self: QPdfLinkModel, column: cint, count: cint, parent: gen_qabstractitemmodel_types.QModelIndex): bool {.raises: [], gcsafe.}
type QPdfLinkModelremoveRowsProc* = proc(self: QPdfLinkModel, row: cint, count: cint, parent: gen_qabstractitemmodel_types.QModelIndex): bool {.raises: [], gcsafe.}
type QPdfLinkModelremoveColumnsProc* = proc(self: QPdfLinkModel, column: cint, count: cint, parent: gen_qabstractitemmodel_types.QModelIndex): bool {.raises: [], gcsafe.}
type QPdfLinkModelmoveRowsProc* = proc(self: QPdfLinkModel, sourceParent: gen_qabstractitemmodel_types.QModelIndex, sourceRow: cint, count: cint, destinationParent: gen_qabstractitemmodel_types.QModelIndex, destinationChild: cint): bool {.raises: [], gcsafe.}
type QPdfLinkModelmoveColumnsProc* = proc(self: QPdfLinkModel, sourceParent: gen_qabstractitemmodel_types.QModelIndex, sourceColumn: cint, count: cint, destinationParent: gen_qabstractitemmodel_types.QModelIndex, destinationChild: cint): bool {.raises: [], gcsafe.}
type QPdfLinkModelfetchMoreProc* = proc(self: QPdfLinkModel, parent: gen_qabstractitemmodel_types.QModelIndex): void {.raises: [], gcsafe.}
type QPdfLinkModelcanFetchMoreProc* = proc(self: QPdfLinkModel, parent: gen_qabstractitemmodel_types.QModelIndex): bool {.raises: [], gcsafe.}
type QPdfLinkModelsortProc* = proc(self: QPdfLinkModel, column: cint, order: cint): void {.raises: [], gcsafe.}
type QPdfLinkModelbuddyProc* = proc(self: QPdfLinkModel, index: gen_qabstractitemmodel_types.QModelIndex): gen_qabstractitemmodel_types.QModelIndex {.raises: [], gcsafe.}
type QPdfLinkModelmatchProc* = proc(self: QPdfLinkModel, start: gen_qabstractitemmodel_types.QModelIndex, role: cint, value: gen_qvariant_types.QVariant, hits: cint, flags: cint): seq[gen_qabstractitemmodel_types.QModelIndex] {.raises: [], gcsafe.}
type QPdfLinkModelspanProc* = proc(self: QPdfLinkModel, index: gen_qabstractitemmodel_types.QModelIndex): gen_qsize_types.QSize {.raises: [], gcsafe.}
type QPdfLinkModelmultiDataProc* = proc(self: QPdfLinkModel, index: gen_qabstractitemmodel_types.QModelIndex, roleDataSpan: gen_qabstractitemmodel_types.QModelRoleDataSpan): void {.raises: [], gcsafe.}
type QPdfLinkModelsubmitProc* = proc(self: QPdfLinkModel): bool {.raises: [], gcsafe.}
type QPdfLinkModelrevertProc* = proc(self: QPdfLinkModel): void {.raises: [], gcsafe.}
type QPdfLinkModelresetInternalDataProc* = proc(self: QPdfLinkModel): void {.raises: [], gcsafe.}
type QPdfLinkModeleventProc* = proc(self: QPdfLinkModel, event: gen_qcoreevent_types.QEvent): bool {.raises: [], gcsafe.}
type QPdfLinkModeleventFilterProc* = proc(self: QPdfLinkModel, watched: gen_qobject_types.QObject, event: gen_qcoreevent_types.QEvent): bool {.raises: [], gcsafe.}
type QPdfLinkModeltimerEventProc* = proc(self: QPdfLinkModel, event: gen_qcoreevent_types.QTimerEvent): void {.raises: [], gcsafe.}
type QPdfLinkModelchildEventProc* = proc(self: QPdfLinkModel, event: gen_qcoreevent_types.QChildEvent): void {.raises: [], gcsafe.}
type QPdfLinkModelcustomEventProc* = proc(self: QPdfLinkModel, event: gen_qcoreevent_types.QEvent): void {.raises: [], gcsafe.}
type QPdfLinkModelconnectNotifyProc* = proc(self: QPdfLinkModel, signal: gen_qmetaobject_types.QMetaMethod): void {.raises: [], gcsafe.}
type QPdfLinkModeldisconnectNotifyProc* = proc(self: QPdfLinkModel, signal: gen_qmetaobject_types.QMetaMethod): void {.raises: [], gcsafe.}

type QPdfLinkModelVTable* {.inheritable, pure.} = object
  vtbl: cQPdfLinkModelVTable
  metaObject*: QPdfLinkModelmetaObjectProc
  metacast*: QPdfLinkModelmetacastProc
  metacall*: QPdfLinkModelmetacallProc
  roleNames*: QPdfLinkModelroleNamesProc
  rowCount*: QPdfLinkModelrowCountProc
  data*: QPdfLinkModeldataProc
  index*: QPdfLinkModelindexProc
  sibling*: QPdfLinkModelsiblingProc
  dropMimeData*: QPdfLinkModeldropMimeDataProc
  flags*: QPdfLinkModelflagsProc
  setData*: QPdfLinkModelsetDataProc
  headerData*: QPdfLinkModelheaderDataProc
  setHeaderData*: QPdfLinkModelsetHeaderDataProc
  itemData*: QPdfLinkModelitemDataProc
  setItemData*: QPdfLinkModelsetItemDataProc
  clearItemData*: QPdfLinkModelclearItemDataProc
  mimeTypes*: QPdfLinkModelmimeTypesProc
  mimeData*: QPdfLinkModelmimeDataProc
  canDropMimeData*: QPdfLinkModelcanDropMimeDataProc
  supportedDropActions*: QPdfLinkModelsupportedDropActionsProc
  supportedDragActions*: QPdfLinkModelsupportedDragActionsProc
  insertRows*: QPdfLinkModelinsertRowsProc
  insertColumns*: QPdfLinkModelinsertColumnsProc
  removeRows*: QPdfLinkModelremoveRowsProc
  removeColumns*: QPdfLinkModelremoveColumnsProc
  moveRows*: QPdfLinkModelmoveRowsProc
  moveColumns*: QPdfLinkModelmoveColumnsProc
  fetchMore*: QPdfLinkModelfetchMoreProc
  canFetchMore*: QPdfLinkModelcanFetchMoreProc
  sort*: QPdfLinkModelsortProc
  buddy*: QPdfLinkModelbuddyProc
  match*: QPdfLinkModelmatchProc
  span*: QPdfLinkModelspanProc
  multiData*: QPdfLinkModelmultiDataProc
  submit*: QPdfLinkModelsubmitProc
  revert*: QPdfLinkModelrevertProc
  resetInternalData*: QPdfLinkModelresetInternalDataProc
  event*: QPdfLinkModeleventProc
  eventFilter*: QPdfLinkModeleventFilterProc
  timerEvent*: QPdfLinkModeltimerEventProc
  childEvent*: QPdfLinkModelchildEventProc
  customEvent*: QPdfLinkModelcustomEventProc
  connectNotify*: QPdfLinkModelconnectNotifyProc
  disconnectNotify*: QPdfLinkModeldisconnectNotifyProc

proc QPdfLinkModelmetaObject*(self: gen_qpdflinkmodel_types.QPdfLinkModel): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQPdfLinkModel_virtualbase_metaObject(self.h), owned: false)

proc QPdfLinkModelmetacast*(self: gen_qpdflinkmodel_types.QPdfLinkModel, param1: cstring): pointer =
  fcQPdfLinkModel_virtualbase_metacast(self.h, param1)

proc QPdfLinkModelmetacall*(self: gen_qpdflinkmodel_types.QPdfLinkModel, param1: cint, param2: cint, param3: pointer): cint =
  fcQPdfLinkModel_virtualbase_metacall(self.h, cint(param1), param2, param3)

proc QPdfLinkModelroleNames*(self: gen_qpdflinkmodel_types.QPdfLinkModel): Table[cint,seq[byte]] =
  var v_mm = fcQPdfLinkModel_virtualbase_roleNames(self.h)
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

proc QPdfLinkModelrowCount*(self: gen_qpdflinkmodel_types.QPdfLinkModel, parent: gen_qabstractitemmodel_types.QModelIndex): cint =
  fcQPdfLinkModel_virtualbase_rowCount(self.h, parent.h)

proc QPdfLinkModeldata*(self: gen_qpdflinkmodel_types.QPdfLinkModel, index: gen_qabstractitemmodel_types.QModelIndex, role: cint): gen_qvariant_types.QVariant =
  gen_qvariant_types.QVariant(h: fcQPdfLinkModel_virtualbase_data(self.h, index.h, role), owned: true)

proc QPdfLinkModelindex*(self: gen_qpdflinkmodel_types.QPdfLinkModel, row: cint, column: cint, parent: gen_qabstractitemmodel_types.QModelIndex): gen_qabstractitemmodel_types.QModelIndex =
  gen_qabstractitemmodel_types.QModelIndex(h: fcQPdfLinkModel_virtualbase_index(self.h, row, column, parent.h), owned: true)

proc QPdfLinkModelsibling*(self: gen_qpdflinkmodel_types.QPdfLinkModel, row: cint, column: cint, idx: gen_qabstractitemmodel_types.QModelIndex): gen_qabstractitemmodel_types.QModelIndex =
  gen_qabstractitemmodel_types.QModelIndex(h: fcQPdfLinkModel_virtualbase_sibling(self.h, row, column, idx.h), owned: true)

proc QPdfLinkModeldropMimeData*(self: gen_qpdflinkmodel_types.QPdfLinkModel, data: gen_qmimedata_types.QMimeData, action: cint, row: cint, column: cint, parent: gen_qabstractitemmodel_types.QModelIndex): bool =
  fcQPdfLinkModel_virtualbase_dropMimeData(self.h, data.h, cint(action), row, column, parent.h)

proc QPdfLinkModelflags*(self: gen_qpdflinkmodel_types.QPdfLinkModel, index: gen_qabstractitemmodel_types.QModelIndex): cint =
  cint(fcQPdfLinkModel_virtualbase_flags(self.h, index.h))

proc QPdfLinkModelsetData*(self: gen_qpdflinkmodel_types.QPdfLinkModel, index: gen_qabstractitemmodel_types.QModelIndex, value: gen_qvariant_types.QVariant, role: cint): bool =
  fcQPdfLinkModel_virtualbase_setData(self.h, index.h, value.h, role)

proc QPdfLinkModelheaderData*(self: gen_qpdflinkmodel_types.QPdfLinkModel, section: cint, orientation: cint, role: cint): gen_qvariant_types.QVariant =
  gen_qvariant_types.QVariant(h: fcQPdfLinkModel_virtualbase_headerData(self.h, section, cint(orientation), role), owned: true)

proc QPdfLinkModelsetHeaderData*(self: gen_qpdflinkmodel_types.QPdfLinkModel, section: cint, orientation: cint, value: gen_qvariant_types.QVariant, role: cint): bool =
  fcQPdfLinkModel_virtualbase_setHeaderData(self.h, section, cint(orientation), value.h, role)

proc QPdfLinkModelitemData*(self: gen_qpdflinkmodel_types.QPdfLinkModel, index: gen_qabstractitemmodel_types.QModelIndex): Table[cint,gen_qvariant_types.QVariant] =
  var v_mm = fcQPdfLinkModel_virtualbase_itemData(self.h, index.h)
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

proc QPdfLinkModelsetItemData*(self: gen_qpdflinkmodel_types.QPdfLinkModel, index: gen_qabstractitemmodel_types.QModelIndex, roles: Table[cint,gen_qvariant_types.QVariant]): bool =
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

  fcQPdfLinkModel_virtualbase_setItemData(self.h, index.h, struct_seaqt_map(len: csize_t(len(roles)),keys: if len(roles) == 0: nil else: addr(roles_Keys_CArray[0]), values: if len(roles) == 0: nil else: addr(roles_Values_CArray[0]),))

proc QPdfLinkModelclearItemData*(self: gen_qpdflinkmodel_types.QPdfLinkModel, index: gen_qabstractitemmodel_types.QModelIndex): bool =
  fcQPdfLinkModel_virtualbase_clearItemData(self.h, index.h)

proc QPdfLinkModelmimeTypes*(self: gen_qpdflinkmodel_types.QPdfLinkModel): seq[string] =
  var v_ma = fcQPdfLinkModel_virtualbase_mimeTypes(self.h)
  var vx_ret = newSeq[string](int(v_ma.len))
  let v_outCast = cast[ptr UncheckedArray[struct_seaqt_string]](v_ma.data)
  for i in 0 ..< v_ma.len:
    let vx_lv_ms = v_outCast[i]
    let vx_lvx_ret = string.fromBytes(vx_lv_ms)
    c_free(vx_lv_ms.data)
    vx_ret[i] = vx_lvx_ret
  c_free(v_ma.data)
  vx_ret

proc QPdfLinkModelmimeData*(self: gen_qpdflinkmodel_types.QPdfLinkModel, indexes: openArray[gen_qabstractitemmodel_types.QModelIndex]): gen_qmimedata_types.QMimeData =
  var indexes_CArray = newSeq[pointer](len(indexes))
  for i in 0..<len(indexes):
    indexes_CArray[i] = indexes[i].h

  gen_qmimedata_types.QMimeData(h: fcQPdfLinkModel_virtualbase_mimeData(self.h, struct_seaqt_array(len: csize_t(len(indexes)), data: if len(indexes) == 0: nil else: addr(indexes_CArray[0]))), owned: false)

proc QPdfLinkModelcanDropMimeData*(self: gen_qpdflinkmodel_types.QPdfLinkModel, data: gen_qmimedata_types.QMimeData, action: cint, row: cint, column: cint, parent: gen_qabstractitemmodel_types.QModelIndex): bool =
  fcQPdfLinkModel_virtualbase_canDropMimeData(self.h, data.h, cint(action), row, column, parent.h)

proc QPdfLinkModelsupportedDropActions*(self: gen_qpdflinkmodel_types.QPdfLinkModel): cint =
  cint(fcQPdfLinkModel_virtualbase_supportedDropActions(self.h))

proc QPdfLinkModelsupportedDragActions*(self: gen_qpdflinkmodel_types.QPdfLinkModel): cint =
  cint(fcQPdfLinkModel_virtualbase_supportedDragActions(self.h))

proc QPdfLinkModelinsertRows*(self: gen_qpdflinkmodel_types.QPdfLinkModel, row: cint, count: cint, parent: gen_qabstractitemmodel_types.QModelIndex): bool =
  fcQPdfLinkModel_virtualbase_insertRows(self.h, row, count, parent.h)

proc QPdfLinkModelinsertColumns*(self: gen_qpdflinkmodel_types.QPdfLinkModel, column: cint, count: cint, parent: gen_qabstractitemmodel_types.QModelIndex): bool =
  fcQPdfLinkModel_virtualbase_insertColumns(self.h, column, count, parent.h)

proc QPdfLinkModelremoveRows*(self: gen_qpdflinkmodel_types.QPdfLinkModel, row: cint, count: cint, parent: gen_qabstractitemmodel_types.QModelIndex): bool =
  fcQPdfLinkModel_virtualbase_removeRows(self.h, row, count, parent.h)

proc QPdfLinkModelremoveColumns*(self: gen_qpdflinkmodel_types.QPdfLinkModel, column: cint, count: cint, parent: gen_qabstractitemmodel_types.QModelIndex): bool =
  fcQPdfLinkModel_virtualbase_removeColumns(self.h, column, count, parent.h)

proc QPdfLinkModelmoveRows*(self: gen_qpdflinkmodel_types.QPdfLinkModel, sourceParent: gen_qabstractitemmodel_types.QModelIndex, sourceRow: cint, count: cint, destinationParent: gen_qabstractitemmodel_types.QModelIndex, destinationChild: cint): bool =
  fcQPdfLinkModel_virtualbase_moveRows(self.h, sourceParent.h, sourceRow, count, destinationParent.h, destinationChild)

proc QPdfLinkModelmoveColumns*(self: gen_qpdflinkmodel_types.QPdfLinkModel, sourceParent: gen_qabstractitemmodel_types.QModelIndex, sourceColumn: cint, count: cint, destinationParent: gen_qabstractitemmodel_types.QModelIndex, destinationChild: cint): bool =
  fcQPdfLinkModel_virtualbase_moveColumns(self.h, sourceParent.h, sourceColumn, count, destinationParent.h, destinationChild)

proc QPdfLinkModelfetchMore*(self: gen_qpdflinkmodel_types.QPdfLinkModel, parent: gen_qabstractitemmodel_types.QModelIndex): void =
  fcQPdfLinkModel_virtualbase_fetchMore(self.h, parent.h)

proc QPdfLinkModelcanFetchMore*(self: gen_qpdflinkmodel_types.QPdfLinkModel, parent: gen_qabstractitemmodel_types.QModelIndex): bool =
  fcQPdfLinkModel_virtualbase_canFetchMore(self.h, parent.h)

proc QPdfLinkModelsort*(self: gen_qpdflinkmodel_types.QPdfLinkModel, column: cint, order: cint): void =
  fcQPdfLinkModel_virtualbase_sort(self.h, column, cint(order))

proc QPdfLinkModelbuddy*(self: gen_qpdflinkmodel_types.QPdfLinkModel, index: gen_qabstractitemmodel_types.QModelIndex): gen_qabstractitemmodel_types.QModelIndex =
  gen_qabstractitemmodel_types.QModelIndex(h: fcQPdfLinkModel_virtualbase_buddy(self.h, index.h), owned: true)

proc QPdfLinkModelmatch*(self: gen_qpdflinkmodel_types.QPdfLinkModel, start: gen_qabstractitemmodel_types.QModelIndex, role: cint, value: gen_qvariant_types.QVariant, hits: cint, flags: cint): seq[gen_qabstractitemmodel_types.QModelIndex] =
  var v_ma = fcQPdfLinkModel_virtualbase_match(self.h, start.h, role, value.h, hits, cint(flags))
  var vx_ret = newSeq[gen_qabstractitemmodel_types.QModelIndex](int(v_ma.len))
  let v_outCast = cast[ptr UncheckedArray[pointer]](v_ma.data)
  for i in 0 ..< v_ma.len:
    vx_ret[i] = gen_qabstractitemmodel_types.QModelIndex(h: v_outCast[i], owned: true)
  c_free(v_ma.data)
  vx_ret

proc QPdfLinkModelspan*(self: gen_qpdflinkmodel_types.QPdfLinkModel, index: gen_qabstractitemmodel_types.QModelIndex): gen_qsize_types.QSize =
  gen_qsize_types.QSize(h: fcQPdfLinkModel_virtualbase_span(self.h, index.h), owned: true)

proc QPdfLinkModelmultiData*(self: gen_qpdflinkmodel_types.QPdfLinkModel, index: gen_qabstractitemmodel_types.QModelIndex, roleDataSpan: gen_qabstractitemmodel_types.QModelRoleDataSpan): void =
  fcQPdfLinkModel_virtualbase_multiData(self.h, index.h, roleDataSpan.h)

proc QPdfLinkModelsubmit*(self: gen_qpdflinkmodel_types.QPdfLinkModel): bool =
  fcQPdfLinkModel_virtualbase_submit(self.h)

proc QPdfLinkModelrevert*(self: gen_qpdflinkmodel_types.QPdfLinkModel): void =
  fcQPdfLinkModel_virtualbase_revert(self.h)

proc QPdfLinkModelresetInternalData*(self: gen_qpdflinkmodel_types.QPdfLinkModel): void =
  fcQPdfLinkModel_virtualbase_resetInternalData(self.h)

proc QPdfLinkModelevent*(self: gen_qpdflinkmodel_types.QPdfLinkModel, event: gen_qcoreevent_types.QEvent): bool =
  fcQPdfLinkModel_virtualbase_event(self.h, event.h)

proc QPdfLinkModeleventFilter*(self: gen_qpdflinkmodel_types.QPdfLinkModel, watched: gen_qobject_types.QObject, event: gen_qcoreevent_types.QEvent): bool =
  fcQPdfLinkModel_virtualbase_eventFilter(self.h, watched.h, event.h)

proc QPdfLinkModeltimerEvent*(self: gen_qpdflinkmodel_types.QPdfLinkModel, event: gen_qcoreevent_types.QTimerEvent): void =
  fcQPdfLinkModel_virtualbase_timerEvent(self.h, event.h)

proc QPdfLinkModelchildEvent*(self: gen_qpdflinkmodel_types.QPdfLinkModel, event: gen_qcoreevent_types.QChildEvent): void =
  fcQPdfLinkModel_virtualbase_childEvent(self.h, event.h)

proc QPdfLinkModelcustomEvent*(self: gen_qpdflinkmodel_types.QPdfLinkModel, event: gen_qcoreevent_types.QEvent): void =
  fcQPdfLinkModel_virtualbase_customEvent(self.h, event.h)

proc QPdfLinkModelconnectNotify*(self: gen_qpdflinkmodel_types.QPdfLinkModel, signal: gen_qmetaobject_types.QMetaMethod): void =
  fcQPdfLinkModel_virtualbase_connectNotify(self.h, signal.h)

proc QPdfLinkModeldisconnectNotify*(self: gen_qpdflinkmodel_types.QPdfLinkModel, signal: gen_qmetaobject_types.QMetaMethod): void =
  fcQPdfLinkModel_virtualbase_disconnectNotify(self.h, signal.h)


proc fcQPdfLinkModel_vtable_callback_metaObject(self: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QPdfLinkModelVTable](fcQPdfLinkModel_vdata(self)[])
  let self = QPdfLinkModel(h: self)
  var virtualReturn = vtbl[].metaObject(self)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc fcQPdfLinkModel_vtable_callback_metacast(self: pointer, param1: cstring): pointer {.cdecl.} =
  let vtbl = cast[ptr QPdfLinkModelVTable](fcQPdfLinkModel_vdata(self)[])
  let self = QPdfLinkModel(h: self)
  let slotval1 = (param1)
  var virtualReturn = vtbl[].metacast(self, slotval1)
  virtualReturn

proc fcQPdfLinkModel_vtable_callback_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.cdecl.} =
  let vtbl = cast[ptr QPdfLinkModelVTable](fcQPdfLinkModel_vdata(self)[])
  let self = QPdfLinkModel(h: self)
  let slotval1 = cint(param1)
  let slotval2 = param2
  let slotval3 = param3
  var virtualReturn = vtbl[].metacall(self, slotval1, slotval2, slotval3)
  virtualReturn

proc fcQPdfLinkModel_vtable_callback_roleNames(self: pointer): struct_seaqt_map {.cdecl.} =
  let vtbl = cast[ptr QPdfLinkModelVTable](fcQPdfLinkModel_vdata(self)[])
  let self = QPdfLinkModel(h: self)
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

proc fcQPdfLinkModel_vtable_callback_rowCount(self: pointer, parent: pointer): cint {.cdecl.} =
  let vtbl = cast[ptr QPdfLinkModelVTable](fcQPdfLinkModel_vdata(self)[])
  let self = QPdfLinkModel(h: self)
  let slotval1 = gen_qabstractitemmodel_types.QModelIndex(h: parent, owned: false)
  var virtualReturn = vtbl[].rowCount(self, slotval1)
  virtualReturn

proc fcQPdfLinkModel_vtable_callback_data(self: pointer, index: pointer, role: cint): pointer {.cdecl.} =
  let vtbl = cast[ptr QPdfLinkModelVTable](fcQPdfLinkModel_vdata(self)[])
  let self = QPdfLinkModel(h: self)
  let slotval1 = gen_qabstractitemmodel_types.QModelIndex(h: index, owned: false)
  let slotval2 = role
  var virtualReturn = vtbl[].data(self, slotval1, slotval2)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc fcQPdfLinkModel_vtable_callback_index(self: pointer, row: cint, column: cint, parent: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QPdfLinkModelVTable](fcQPdfLinkModel_vdata(self)[])
  let self = QPdfLinkModel(h: self)
  let slotval1 = row
  let slotval2 = column
  let slotval3 = gen_qabstractitemmodel_types.QModelIndex(h: parent, owned: false)
  var virtualReturn = vtbl[].index(self, slotval1, slotval2, slotval3)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc fcQPdfLinkModel_vtable_callback_sibling(self: pointer, row: cint, column: cint, idx: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QPdfLinkModelVTable](fcQPdfLinkModel_vdata(self)[])
  let self = QPdfLinkModel(h: self)
  let slotval1 = row
  let slotval2 = column
  let slotval3 = gen_qabstractitemmodel_types.QModelIndex(h: idx, owned: false)
  var virtualReturn = vtbl[].sibling(self, slotval1, slotval2, slotval3)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc fcQPdfLinkModel_vtable_callback_dropMimeData(self: pointer, data: pointer, action: cint, row: cint, column: cint, parent: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QPdfLinkModelVTable](fcQPdfLinkModel_vdata(self)[])
  let self = QPdfLinkModel(h: self)
  let slotval1 = gen_qmimedata_types.QMimeData(h: data, owned: false)
  let slotval2 = cint(action)
  let slotval3 = row
  let slotval4 = column
  let slotval5 = gen_qabstractitemmodel_types.QModelIndex(h: parent, owned: false)
  var virtualReturn = vtbl[].dropMimeData(self, slotval1, slotval2, slotval3, slotval4, slotval5)
  virtualReturn

proc fcQPdfLinkModel_vtable_callback_flags(self: pointer, index: pointer): cint {.cdecl.} =
  let vtbl = cast[ptr QPdfLinkModelVTable](fcQPdfLinkModel_vdata(self)[])
  let self = QPdfLinkModel(h: self)
  let slotval1 = gen_qabstractitemmodel_types.QModelIndex(h: index, owned: false)
  var virtualReturn = vtbl[].flags(self, slotval1)
  cint(virtualReturn)

proc fcQPdfLinkModel_vtable_callback_setData(self: pointer, index: pointer, value: pointer, role: cint): bool {.cdecl.} =
  let vtbl = cast[ptr QPdfLinkModelVTable](fcQPdfLinkModel_vdata(self)[])
  let self = QPdfLinkModel(h: self)
  let slotval1 = gen_qabstractitemmodel_types.QModelIndex(h: index, owned: false)
  let slotval2 = gen_qvariant_types.QVariant(h: value, owned: false)
  let slotval3 = role
  var virtualReturn = vtbl[].setData(self, slotval1, slotval2, slotval3)
  virtualReturn

proc fcQPdfLinkModel_vtable_callback_headerData(self: pointer, section: cint, orientation: cint, role: cint): pointer {.cdecl.} =
  let vtbl = cast[ptr QPdfLinkModelVTable](fcQPdfLinkModel_vdata(self)[])
  let self = QPdfLinkModel(h: self)
  let slotval1 = section
  let slotval2 = cint(orientation)
  let slotval3 = role
  var virtualReturn = vtbl[].headerData(self, slotval1, slotval2, slotval3)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc fcQPdfLinkModel_vtable_callback_setHeaderData(self: pointer, section: cint, orientation: cint, value: pointer, role: cint): bool {.cdecl.} =
  let vtbl = cast[ptr QPdfLinkModelVTable](fcQPdfLinkModel_vdata(self)[])
  let self = QPdfLinkModel(h: self)
  let slotval1 = section
  let slotval2 = cint(orientation)
  let slotval3 = gen_qvariant_types.QVariant(h: value, owned: false)
  let slotval4 = role
  var virtualReturn = vtbl[].setHeaderData(self, slotval1, slotval2, slotval3, slotval4)
  virtualReturn

proc fcQPdfLinkModel_vtable_callback_itemData(self: pointer, index: pointer): struct_seaqt_map {.cdecl.} =
  let vtbl = cast[ptr QPdfLinkModelVTable](fcQPdfLinkModel_vdata(self)[])
  let self = QPdfLinkModel(h: self)
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

proc fcQPdfLinkModel_vtable_callback_setItemData(self: pointer, index: pointer, roles: struct_seaqt_map): bool {.cdecl.} =
  let vtbl = cast[ptr QPdfLinkModelVTable](fcQPdfLinkModel_vdata(self)[])
  let self = QPdfLinkModel(h: self)
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

proc fcQPdfLinkModel_vtable_callback_clearItemData(self: pointer, index: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QPdfLinkModelVTable](fcQPdfLinkModel_vdata(self)[])
  let self = QPdfLinkModel(h: self)
  let slotval1 = gen_qabstractitemmodel_types.QModelIndex(h: index, owned: false)
  var virtualReturn = vtbl[].clearItemData(self, slotval1)
  virtualReturn

proc fcQPdfLinkModel_vtable_callback_mimeTypes(self: pointer): struct_seaqt_array {.cdecl.} =
  let vtbl = cast[ptr QPdfLinkModelVTable](fcQPdfLinkModel_vdata(self)[])
  let self = QPdfLinkModel(h: self)
  var virtualReturn = vtbl[].mimeTypes(self)
  var virtualReturn_CArray = cast[ptr UncheckedArray[struct_seaqt_string]](if len(virtualReturn) > 0: c_malloc(c_sizet(sizeof(struct_seaqt_string) * len(virtualReturn))) else: nil)
  for i in 0..<len(virtualReturn):
    var virtualReturn_i_copy = if len(virtualReturn[i]) > 0: c_malloc(csize_t(len(virtualReturn[i]))) else: nil
    if len(virtualReturn[i]) > 0: copyMem(virtualReturn_i_copy, addr virtualReturn[i][0], csize_t(len(virtualReturn[i])))
    virtualReturn_CArray[i] = struct_seaqt_string(data: virtualReturn_i_copy, len: csize_t(len(virtualReturn[i])))

  struct_seaqt_array(len: csize_t(len(virtualReturn)), data: if len(virtualReturn) == 0: nil else: addr(virtualReturn_CArray[0]))

proc fcQPdfLinkModel_vtable_callback_mimeData(self: pointer, indexes: struct_seaqt_array): pointer {.cdecl.} =
  let vtbl = cast[ptr QPdfLinkModelVTable](fcQPdfLinkModel_vdata(self)[])
  let self = QPdfLinkModel(h: self)
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

proc fcQPdfLinkModel_vtable_callback_canDropMimeData(self: pointer, data: pointer, action: cint, row: cint, column: cint, parent: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QPdfLinkModelVTable](fcQPdfLinkModel_vdata(self)[])
  let self = QPdfLinkModel(h: self)
  let slotval1 = gen_qmimedata_types.QMimeData(h: data, owned: false)
  let slotval2 = cint(action)
  let slotval3 = row
  let slotval4 = column
  let slotval5 = gen_qabstractitemmodel_types.QModelIndex(h: parent, owned: false)
  var virtualReturn = vtbl[].canDropMimeData(self, slotval1, slotval2, slotval3, slotval4, slotval5)
  virtualReturn

proc fcQPdfLinkModel_vtable_callback_supportedDropActions(self: pointer): cint {.cdecl.} =
  let vtbl = cast[ptr QPdfLinkModelVTable](fcQPdfLinkModel_vdata(self)[])
  let self = QPdfLinkModel(h: self)
  var virtualReturn = vtbl[].supportedDropActions(self)
  cint(virtualReturn)

proc fcQPdfLinkModel_vtable_callback_supportedDragActions(self: pointer): cint {.cdecl.} =
  let vtbl = cast[ptr QPdfLinkModelVTable](fcQPdfLinkModel_vdata(self)[])
  let self = QPdfLinkModel(h: self)
  var virtualReturn = vtbl[].supportedDragActions(self)
  cint(virtualReturn)

proc fcQPdfLinkModel_vtable_callback_insertRows(self: pointer, row: cint, count: cint, parent: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QPdfLinkModelVTable](fcQPdfLinkModel_vdata(self)[])
  let self = QPdfLinkModel(h: self)
  let slotval1 = row
  let slotval2 = count
  let slotval3 = gen_qabstractitemmodel_types.QModelIndex(h: parent, owned: false)
  var virtualReturn = vtbl[].insertRows(self, slotval1, slotval2, slotval3)
  virtualReturn

proc fcQPdfLinkModel_vtable_callback_insertColumns(self: pointer, column: cint, count: cint, parent: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QPdfLinkModelVTable](fcQPdfLinkModel_vdata(self)[])
  let self = QPdfLinkModel(h: self)
  let slotval1 = column
  let slotval2 = count
  let slotval3 = gen_qabstractitemmodel_types.QModelIndex(h: parent, owned: false)
  var virtualReturn = vtbl[].insertColumns(self, slotval1, slotval2, slotval3)
  virtualReturn

proc fcQPdfLinkModel_vtable_callback_removeRows(self: pointer, row: cint, count: cint, parent: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QPdfLinkModelVTable](fcQPdfLinkModel_vdata(self)[])
  let self = QPdfLinkModel(h: self)
  let slotval1 = row
  let slotval2 = count
  let slotval3 = gen_qabstractitemmodel_types.QModelIndex(h: parent, owned: false)
  var virtualReturn = vtbl[].removeRows(self, slotval1, slotval2, slotval3)
  virtualReturn

proc fcQPdfLinkModel_vtable_callback_removeColumns(self: pointer, column: cint, count: cint, parent: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QPdfLinkModelVTable](fcQPdfLinkModel_vdata(self)[])
  let self = QPdfLinkModel(h: self)
  let slotval1 = column
  let slotval2 = count
  let slotval3 = gen_qabstractitemmodel_types.QModelIndex(h: parent, owned: false)
  var virtualReturn = vtbl[].removeColumns(self, slotval1, slotval2, slotval3)
  virtualReturn

proc fcQPdfLinkModel_vtable_callback_moveRows(self: pointer, sourceParent: pointer, sourceRow: cint, count: cint, destinationParent: pointer, destinationChild: cint): bool {.cdecl.} =
  let vtbl = cast[ptr QPdfLinkModelVTable](fcQPdfLinkModel_vdata(self)[])
  let self = QPdfLinkModel(h: self)
  let slotval1 = gen_qabstractitemmodel_types.QModelIndex(h: sourceParent, owned: false)
  let slotval2 = sourceRow
  let slotval3 = count
  let slotval4 = gen_qabstractitemmodel_types.QModelIndex(h: destinationParent, owned: false)
  let slotval5 = destinationChild
  var virtualReturn = vtbl[].moveRows(self, slotval1, slotval2, slotval3, slotval4, slotval5)
  virtualReturn

proc fcQPdfLinkModel_vtable_callback_moveColumns(self: pointer, sourceParent: pointer, sourceColumn: cint, count: cint, destinationParent: pointer, destinationChild: cint): bool {.cdecl.} =
  let vtbl = cast[ptr QPdfLinkModelVTable](fcQPdfLinkModel_vdata(self)[])
  let self = QPdfLinkModel(h: self)
  let slotval1 = gen_qabstractitemmodel_types.QModelIndex(h: sourceParent, owned: false)
  let slotval2 = sourceColumn
  let slotval3 = count
  let slotval4 = gen_qabstractitemmodel_types.QModelIndex(h: destinationParent, owned: false)
  let slotval5 = destinationChild
  var virtualReturn = vtbl[].moveColumns(self, slotval1, slotval2, slotval3, slotval4, slotval5)
  virtualReturn

proc fcQPdfLinkModel_vtable_callback_fetchMore(self: pointer, parent: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QPdfLinkModelVTable](fcQPdfLinkModel_vdata(self)[])
  let self = QPdfLinkModel(h: self)
  let slotval1 = gen_qabstractitemmodel_types.QModelIndex(h: parent, owned: false)
  vtbl[].fetchMore(self, slotval1)

proc fcQPdfLinkModel_vtable_callback_canFetchMore(self: pointer, parent: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QPdfLinkModelVTable](fcQPdfLinkModel_vdata(self)[])
  let self = QPdfLinkModel(h: self)
  let slotval1 = gen_qabstractitemmodel_types.QModelIndex(h: parent, owned: false)
  var virtualReturn = vtbl[].canFetchMore(self, slotval1)
  virtualReturn

proc fcQPdfLinkModel_vtable_callback_sort(self: pointer, column: cint, order: cint): void {.cdecl.} =
  let vtbl = cast[ptr QPdfLinkModelVTable](fcQPdfLinkModel_vdata(self)[])
  let self = QPdfLinkModel(h: self)
  let slotval1 = column
  let slotval2 = cint(order)
  vtbl[].sort(self, slotval1, slotval2)

proc fcQPdfLinkModel_vtable_callback_buddy(self: pointer, index: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QPdfLinkModelVTable](fcQPdfLinkModel_vdata(self)[])
  let self = QPdfLinkModel(h: self)
  let slotval1 = gen_qabstractitemmodel_types.QModelIndex(h: index, owned: false)
  var virtualReturn = vtbl[].buddy(self, slotval1)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc fcQPdfLinkModel_vtable_callback_match(self: pointer, start: pointer, role: cint, value: pointer, hits: cint, flags: cint): struct_seaqt_array {.cdecl.} =
  let vtbl = cast[ptr QPdfLinkModelVTable](fcQPdfLinkModel_vdata(self)[])
  let self = QPdfLinkModel(h: self)
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

proc fcQPdfLinkModel_vtable_callback_span(self: pointer, index: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QPdfLinkModelVTable](fcQPdfLinkModel_vdata(self)[])
  let self = QPdfLinkModel(h: self)
  let slotval1 = gen_qabstractitemmodel_types.QModelIndex(h: index, owned: false)
  var virtualReturn = vtbl[].span(self, slotval1)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc fcQPdfLinkModel_vtable_callback_multiData(self: pointer, index: pointer, roleDataSpan: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QPdfLinkModelVTable](fcQPdfLinkModel_vdata(self)[])
  let self = QPdfLinkModel(h: self)
  let slotval1 = gen_qabstractitemmodel_types.QModelIndex(h: index, owned: false)
  let slotval2 = gen_qabstractitemmodel_types.QModelRoleDataSpan(h: roleDataSpan, owned: true)
  vtbl[].multiData(self, slotval1, slotval2)

proc fcQPdfLinkModel_vtable_callback_submit(self: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QPdfLinkModelVTable](fcQPdfLinkModel_vdata(self)[])
  let self = QPdfLinkModel(h: self)
  var virtualReturn = vtbl[].submit(self)
  virtualReturn

proc fcQPdfLinkModel_vtable_callback_revert(self: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QPdfLinkModelVTable](fcQPdfLinkModel_vdata(self)[])
  let self = QPdfLinkModel(h: self)
  vtbl[].revert(self)

proc fcQPdfLinkModel_vtable_callback_resetInternalData(self: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QPdfLinkModelVTable](fcQPdfLinkModel_vdata(self)[])
  let self = QPdfLinkModel(h: self)
  vtbl[].resetInternalData(self)

proc fcQPdfLinkModel_vtable_callback_event(self: pointer, event: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QPdfLinkModelVTable](fcQPdfLinkModel_vdata(self)[])
  let self = QPdfLinkModel(h: self)
  let slotval1 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  var virtualReturn = vtbl[].event(self, slotval1)
  virtualReturn

proc fcQPdfLinkModel_vtable_callback_eventFilter(self: pointer, watched: pointer, event: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QPdfLinkModelVTable](fcQPdfLinkModel_vdata(self)[])
  let self = QPdfLinkModel(h: self)
  let slotval1 = gen_qobject_types.QObject(h: watched, owned: false)
  let slotval2 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  var virtualReturn = vtbl[].eventFilter(self, slotval1, slotval2)
  virtualReturn

proc fcQPdfLinkModel_vtable_callback_timerEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QPdfLinkModelVTable](fcQPdfLinkModel_vdata(self)[])
  let self = QPdfLinkModel(h: self)
  let slotval1 = gen_qcoreevent_types.QTimerEvent(h: event, owned: false)
  vtbl[].timerEvent(self, slotval1)

proc fcQPdfLinkModel_vtable_callback_childEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QPdfLinkModelVTable](fcQPdfLinkModel_vdata(self)[])
  let self = QPdfLinkModel(h: self)
  let slotval1 = gen_qcoreevent_types.QChildEvent(h: event, owned: false)
  vtbl[].childEvent(self, slotval1)

proc fcQPdfLinkModel_vtable_callback_customEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QPdfLinkModelVTable](fcQPdfLinkModel_vdata(self)[])
  let self = QPdfLinkModel(h: self)
  let slotval1 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  vtbl[].customEvent(self, slotval1)

proc fcQPdfLinkModel_vtable_callback_connectNotify(self: pointer, signal: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QPdfLinkModelVTable](fcQPdfLinkModel_vdata(self)[])
  let self = QPdfLinkModel(h: self)
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal, owned: false)
  vtbl[].connectNotify(self, slotval1)

proc fcQPdfLinkModel_vtable_callback_disconnectNotify(self: pointer, signal: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QPdfLinkModelVTable](fcQPdfLinkModel_vdata(self)[])
  let self = QPdfLinkModel(h: self)
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal, owned: false)
  vtbl[].disconnectNotify(self, slotval1)

type VirtualQPdfLinkModel* {.inheritable.} = ref object of QPdfLinkModel
  vtbl*: cQPdfLinkModelVTable

method metaObject*(self: VirtualQPdfLinkModel): gen_qobjectdefs_types.QMetaObject {.base.} =
  QPdfLinkModelmetaObject(self[])
method metacast*(self: VirtualQPdfLinkModel, param1: cstring): pointer {.base.} =
  QPdfLinkModelmetacast(self[], param1)
method metacall*(self: VirtualQPdfLinkModel, param1: cint, param2: cint, param3: pointer): cint {.base.} =
  QPdfLinkModelmetacall(self[], param1, param2, param3)
method roleNames*(self: VirtualQPdfLinkModel): Table[cint,seq[byte]] {.base.} =
  QPdfLinkModelroleNames(self[])
method rowCount*(self: VirtualQPdfLinkModel, parent: gen_qabstractitemmodel_types.QModelIndex): cint {.base.} =
  QPdfLinkModelrowCount(self[], parent)
method data*(self: VirtualQPdfLinkModel, index: gen_qabstractitemmodel_types.QModelIndex, role: cint): gen_qvariant_types.QVariant {.base.} =
  QPdfLinkModeldata(self[], index, role)
method index*(self: VirtualQPdfLinkModel, row: cint, column: cint, parent: gen_qabstractitemmodel_types.QModelIndex): gen_qabstractitemmodel_types.QModelIndex {.base.} =
  QPdfLinkModelindex(self[], row, column, parent)
method sibling*(self: VirtualQPdfLinkModel, row: cint, column: cint, idx: gen_qabstractitemmodel_types.QModelIndex): gen_qabstractitemmodel_types.QModelIndex {.base.} =
  QPdfLinkModelsibling(self[], row, column, idx)
method dropMimeData*(self: VirtualQPdfLinkModel, data: gen_qmimedata_types.QMimeData, action: cint, row: cint, column: cint, parent: gen_qabstractitemmodel_types.QModelIndex): bool {.base.} =
  QPdfLinkModeldropMimeData(self[], data, action, row, column, parent)
method flags*(self: VirtualQPdfLinkModel, index: gen_qabstractitemmodel_types.QModelIndex): cint {.base.} =
  QPdfLinkModelflags(self[], index)
method setData*(self: VirtualQPdfLinkModel, index: gen_qabstractitemmodel_types.QModelIndex, value: gen_qvariant_types.QVariant, role: cint): bool {.base.} =
  QPdfLinkModelsetData(self[], index, value, role)
method headerData*(self: VirtualQPdfLinkModel, section: cint, orientation: cint, role: cint): gen_qvariant_types.QVariant {.base.} =
  QPdfLinkModelheaderData(self[], section, orientation, role)
method setHeaderData*(self: VirtualQPdfLinkModel, section: cint, orientation: cint, value: gen_qvariant_types.QVariant, role: cint): bool {.base.} =
  QPdfLinkModelsetHeaderData(self[], section, orientation, value, role)
method itemData*(self: VirtualQPdfLinkModel, index: gen_qabstractitemmodel_types.QModelIndex): Table[cint,gen_qvariant_types.QVariant] {.base.} =
  QPdfLinkModelitemData(self[], index)
method setItemData*(self: VirtualQPdfLinkModel, index: gen_qabstractitemmodel_types.QModelIndex, roles: Table[cint,gen_qvariant_types.QVariant]): bool {.base.} =
  QPdfLinkModelsetItemData(self[], index, roles)
method clearItemData*(self: VirtualQPdfLinkModel, index: gen_qabstractitemmodel_types.QModelIndex): bool {.base.} =
  QPdfLinkModelclearItemData(self[], index)
method mimeTypes*(self: VirtualQPdfLinkModel): seq[string] {.base.} =
  QPdfLinkModelmimeTypes(self[])
method mimeData*(self: VirtualQPdfLinkModel, indexes: openArray[gen_qabstractitemmodel_types.QModelIndex]): gen_qmimedata_types.QMimeData {.base.} =
  QPdfLinkModelmimeData(self[], indexes)
method canDropMimeData*(self: VirtualQPdfLinkModel, data: gen_qmimedata_types.QMimeData, action: cint, row: cint, column: cint, parent: gen_qabstractitemmodel_types.QModelIndex): bool {.base.} =
  QPdfLinkModelcanDropMimeData(self[], data, action, row, column, parent)
method supportedDropActions*(self: VirtualQPdfLinkModel): cint {.base.} =
  QPdfLinkModelsupportedDropActions(self[])
method supportedDragActions*(self: VirtualQPdfLinkModel): cint {.base.} =
  QPdfLinkModelsupportedDragActions(self[])
method insertRows*(self: VirtualQPdfLinkModel, row: cint, count: cint, parent: gen_qabstractitemmodel_types.QModelIndex): bool {.base.} =
  QPdfLinkModelinsertRows(self[], row, count, parent)
method insertColumns*(self: VirtualQPdfLinkModel, column: cint, count: cint, parent: gen_qabstractitemmodel_types.QModelIndex): bool {.base.} =
  QPdfLinkModelinsertColumns(self[], column, count, parent)
method removeRows*(self: VirtualQPdfLinkModel, row: cint, count: cint, parent: gen_qabstractitemmodel_types.QModelIndex): bool {.base.} =
  QPdfLinkModelremoveRows(self[], row, count, parent)
method removeColumns*(self: VirtualQPdfLinkModel, column: cint, count: cint, parent: gen_qabstractitemmodel_types.QModelIndex): bool {.base.} =
  QPdfLinkModelremoveColumns(self[], column, count, parent)
method moveRows*(self: VirtualQPdfLinkModel, sourceParent: gen_qabstractitemmodel_types.QModelIndex, sourceRow: cint, count: cint, destinationParent: gen_qabstractitemmodel_types.QModelIndex, destinationChild: cint): bool {.base.} =
  QPdfLinkModelmoveRows(self[], sourceParent, sourceRow, count, destinationParent, destinationChild)
method moveColumns*(self: VirtualQPdfLinkModel, sourceParent: gen_qabstractitemmodel_types.QModelIndex, sourceColumn: cint, count: cint, destinationParent: gen_qabstractitemmodel_types.QModelIndex, destinationChild: cint): bool {.base.} =
  QPdfLinkModelmoveColumns(self[], sourceParent, sourceColumn, count, destinationParent, destinationChild)
method fetchMore*(self: VirtualQPdfLinkModel, parent: gen_qabstractitemmodel_types.QModelIndex): void {.base.} =
  QPdfLinkModelfetchMore(self[], parent)
method canFetchMore*(self: VirtualQPdfLinkModel, parent: gen_qabstractitemmodel_types.QModelIndex): bool {.base.} =
  QPdfLinkModelcanFetchMore(self[], parent)
method sort*(self: VirtualQPdfLinkModel, column: cint, order: cint): void {.base.} =
  QPdfLinkModelsort(self[], column, order)
method buddy*(self: VirtualQPdfLinkModel, index: gen_qabstractitemmodel_types.QModelIndex): gen_qabstractitemmodel_types.QModelIndex {.base.} =
  QPdfLinkModelbuddy(self[], index)
method match*(self: VirtualQPdfLinkModel, start: gen_qabstractitemmodel_types.QModelIndex, role: cint, value: gen_qvariant_types.QVariant, hits: cint, flags: cint): seq[gen_qabstractitemmodel_types.QModelIndex] {.base.} =
  QPdfLinkModelmatch(self[], start, role, value, hits, flags)
method span*(self: VirtualQPdfLinkModel, index: gen_qabstractitemmodel_types.QModelIndex): gen_qsize_types.QSize {.base.} =
  QPdfLinkModelspan(self[], index)
method multiData*(self: VirtualQPdfLinkModel, index: gen_qabstractitemmodel_types.QModelIndex, roleDataSpan: gen_qabstractitemmodel_types.QModelRoleDataSpan): void {.base.} =
  QPdfLinkModelmultiData(self[], index, roleDataSpan)
method submit*(self: VirtualQPdfLinkModel): bool {.base.} =
  QPdfLinkModelsubmit(self[])
method revert*(self: VirtualQPdfLinkModel): void {.base.} =
  QPdfLinkModelrevert(self[])
method resetInternalData*(self: VirtualQPdfLinkModel): void {.base.} =
  QPdfLinkModelresetInternalData(self[])
method event*(self: VirtualQPdfLinkModel, event: gen_qcoreevent_types.QEvent): bool {.base.} =
  QPdfLinkModelevent(self[], event)
method eventFilter*(self: VirtualQPdfLinkModel, watched: gen_qobject_types.QObject, event: gen_qcoreevent_types.QEvent): bool {.base.} =
  QPdfLinkModeleventFilter(self[], watched, event)
method timerEvent*(self: VirtualQPdfLinkModel, event: gen_qcoreevent_types.QTimerEvent): void {.base.} =
  QPdfLinkModeltimerEvent(self[], event)
method childEvent*(self: VirtualQPdfLinkModel, event: gen_qcoreevent_types.QChildEvent): void {.base.} =
  QPdfLinkModelchildEvent(self[], event)
method customEvent*(self: VirtualQPdfLinkModel, event: gen_qcoreevent_types.QEvent): void {.base.} =
  QPdfLinkModelcustomEvent(self[], event)
method connectNotify*(self: VirtualQPdfLinkModel, signal: gen_qmetaobject_types.QMetaMethod): void {.base.} =
  QPdfLinkModelconnectNotify(self[], signal)
method disconnectNotify*(self: VirtualQPdfLinkModel, signal: gen_qmetaobject_types.QMetaMethod): void {.base.} =
  QPdfLinkModeldisconnectNotify(self[], signal)

proc fcQPdfLinkModel_method_callback_metaObject(self: pointer): pointer {.cdecl.} =
  let inst = cast[VirtualQPdfLinkModel](fcQPdfLinkModel_vdata(self)[])
  var virtualReturn = inst.metaObject()
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc fcQPdfLinkModel_method_callback_metacast(self: pointer, param1: cstring): pointer {.cdecl.} =
  let inst = cast[VirtualQPdfLinkModel](fcQPdfLinkModel_vdata(self)[])
  let slotval1 = (param1)
  var virtualReturn = inst.metacast(slotval1)
  virtualReturn

proc fcQPdfLinkModel_method_callback_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.cdecl.} =
  let inst = cast[VirtualQPdfLinkModel](fcQPdfLinkModel_vdata(self)[])
  let slotval1 = cint(param1)
  let slotval2 = param2
  let slotval3 = param3
  var virtualReturn = inst.metacall(slotval1, slotval2, slotval3)
  virtualReturn

proc fcQPdfLinkModel_method_callback_roleNames(self: pointer): struct_seaqt_map {.cdecl.} =
  let inst = cast[VirtualQPdfLinkModel](fcQPdfLinkModel_vdata(self)[])
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

proc fcQPdfLinkModel_method_callback_rowCount(self: pointer, parent: pointer): cint {.cdecl.} =
  let inst = cast[VirtualQPdfLinkModel](fcQPdfLinkModel_vdata(self)[])
  let slotval1 = gen_qabstractitemmodel_types.QModelIndex(h: parent, owned: false)
  var virtualReturn = inst.rowCount(slotval1)
  virtualReturn

proc fcQPdfLinkModel_method_callback_data(self: pointer, index: pointer, role: cint): pointer {.cdecl.} =
  let inst = cast[VirtualQPdfLinkModel](fcQPdfLinkModel_vdata(self)[])
  let slotval1 = gen_qabstractitemmodel_types.QModelIndex(h: index, owned: false)
  let slotval2 = role
  var virtualReturn = inst.data(slotval1, slotval2)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc fcQPdfLinkModel_method_callback_index(self: pointer, row: cint, column: cint, parent: pointer): pointer {.cdecl.} =
  let inst = cast[VirtualQPdfLinkModel](fcQPdfLinkModel_vdata(self)[])
  let slotval1 = row
  let slotval2 = column
  let slotval3 = gen_qabstractitemmodel_types.QModelIndex(h: parent, owned: false)
  var virtualReturn = inst.index(slotval1, slotval2, slotval3)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc fcQPdfLinkModel_method_callback_sibling(self: pointer, row: cint, column: cint, idx: pointer): pointer {.cdecl.} =
  let inst = cast[VirtualQPdfLinkModel](fcQPdfLinkModel_vdata(self)[])
  let slotval1 = row
  let slotval2 = column
  let slotval3 = gen_qabstractitemmodel_types.QModelIndex(h: idx, owned: false)
  var virtualReturn = inst.sibling(slotval1, slotval2, slotval3)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc fcQPdfLinkModel_method_callback_dropMimeData(self: pointer, data: pointer, action: cint, row: cint, column: cint, parent: pointer): bool {.cdecl.} =
  let inst = cast[VirtualQPdfLinkModel](fcQPdfLinkModel_vdata(self)[])
  let slotval1 = gen_qmimedata_types.QMimeData(h: data, owned: false)
  let slotval2 = cint(action)
  let slotval3 = row
  let slotval4 = column
  let slotval5 = gen_qabstractitemmodel_types.QModelIndex(h: parent, owned: false)
  var virtualReturn = inst.dropMimeData(slotval1, slotval2, slotval3, slotval4, slotval5)
  virtualReturn

proc fcQPdfLinkModel_method_callback_flags(self: pointer, index: pointer): cint {.cdecl.} =
  let inst = cast[VirtualQPdfLinkModel](fcQPdfLinkModel_vdata(self)[])
  let slotval1 = gen_qabstractitemmodel_types.QModelIndex(h: index, owned: false)
  var virtualReturn = inst.flags(slotval1)
  cint(virtualReturn)

proc fcQPdfLinkModel_method_callback_setData(self: pointer, index: pointer, value: pointer, role: cint): bool {.cdecl.} =
  let inst = cast[VirtualQPdfLinkModel](fcQPdfLinkModel_vdata(self)[])
  let slotval1 = gen_qabstractitemmodel_types.QModelIndex(h: index, owned: false)
  let slotval2 = gen_qvariant_types.QVariant(h: value, owned: false)
  let slotval3 = role
  var virtualReturn = inst.setData(slotval1, slotval2, slotval3)
  virtualReturn

proc fcQPdfLinkModel_method_callback_headerData(self: pointer, section: cint, orientation: cint, role: cint): pointer {.cdecl.} =
  let inst = cast[VirtualQPdfLinkModel](fcQPdfLinkModel_vdata(self)[])
  let slotval1 = section
  let slotval2 = cint(orientation)
  let slotval3 = role
  var virtualReturn = inst.headerData(slotval1, slotval2, slotval3)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc fcQPdfLinkModel_method_callback_setHeaderData(self: pointer, section: cint, orientation: cint, value: pointer, role: cint): bool {.cdecl.} =
  let inst = cast[VirtualQPdfLinkModel](fcQPdfLinkModel_vdata(self)[])
  let slotval1 = section
  let slotval2 = cint(orientation)
  let slotval3 = gen_qvariant_types.QVariant(h: value, owned: false)
  let slotval4 = role
  var virtualReturn = inst.setHeaderData(slotval1, slotval2, slotval3, slotval4)
  virtualReturn

proc fcQPdfLinkModel_method_callback_itemData(self: pointer, index: pointer): struct_seaqt_map {.cdecl.} =
  let inst = cast[VirtualQPdfLinkModel](fcQPdfLinkModel_vdata(self)[])
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

proc fcQPdfLinkModel_method_callback_setItemData(self: pointer, index: pointer, roles: struct_seaqt_map): bool {.cdecl.} =
  let inst = cast[VirtualQPdfLinkModel](fcQPdfLinkModel_vdata(self)[])
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

proc fcQPdfLinkModel_method_callback_clearItemData(self: pointer, index: pointer): bool {.cdecl.} =
  let inst = cast[VirtualQPdfLinkModel](fcQPdfLinkModel_vdata(self)[])
  let slotval1 = gen_qabstractitemmodel_types.QModelIndex(h: index, owned: false)
  var virtualReturn = inst.clearItemData(slotval1)
  virtualReturn

proc fcQPdfLinkModel_method_callback_mimeTypes(self: pointer): struct_seaqt_array {.cdecl.} =
  let inst = cast[VirtualQPdfLinkModel](fcQPdfLinkModel_vdata(self)[])
  var virtualReturn = inst.mimeTypes()
  var virtualReturn_CArray = cast[ptr UncheckedArray[struct_seaqt_string]](if len(virtualReturn) > 0: c_malloc(c_sizet(sizeof(struct_seaqt_string) * len(virtualReturn))) else: nil)
  for i in 0..<len(virtualReturn):
    var virtualReturn_i_copy = if len(virtualReturn[i]) > 0: c_malloc(csize_t(len(virtualReturn[i]))) else: nil
    if len(virtualReturn[i]) > 0: copyMem(virtualReturn_i_copy, addr virtualReturn[i][0], csize_t(len(virtualReturn[i])))
    virtualReturn_CArray[i] = struct_seaqt_string(data: virtualReturn_i_copy, len: csize_t(len(virtualReturn[i])))

  struct_seaqt_array(len: csize_t(len(virtualReturn)), data: if len(virtualReturn) == 0: nil else: addr(virtualReturn_CArray[0]))

proc fcQPdfLinkModel_method_callback_mimeData(self: pointer, indexes: struct_seaqt_array): pointer {.cdecl.} =
  let inst = cast[VirtualQPdfLinkModel](fcQPdfLinkModel_vdata(self)[])
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

proc fcQPdfLinkModel_method_callback_canDropMimeData(self: pointer, data: pointer, action: cint, row: cint, column: cint, parent: pointer): bool {.cdecl.} =
  let inst = cast[VirtualQPdfLinkModel](fcQPdfLinkModel_vdata(self)[])
  let slotval1 = gen_qmimedata_types.QMimeData(h: data, owned: false)
  let slotval2 = cint(action)
  let slotval3 = row
  let slotval4 = column
  let slotval5 = gen_qabstractitemmodel_types.QModelIndex(h: parent, owned: false)
  var virtualReturn = inst.canDropMimeData(slotval1, slotval2, slotval3, slotval4, slotval5)
  virtualReturn

proc fcQPdfLinkModel_method_callback_supportedDropActions(self: pointer): cint {.cdecl.} =
  let inst = cast[VirtualQPdfLinkModel](fcQPdfLinkModel_vdata(self)[])
  var virtualReturn = inst.supportedDropActions()
  cint(virtualReturn)

proc fcQPdfLinkModel_method_callback_supportedDragActions(self: pointer): cint {.cdecl.} =
  let inst = cast[VirtualQPdfLinkModel](fcQPdfLinkModel_vdata(self)[])
  var virtualReturn = inst.supportedDragActions()
  cint(virtualReturn)

proc fcQPdfLinkModel_method_callback_insertRows(self: pointer, row: cint, count: cint, parent: pointer): bool {.cdecl.} =
  let inst = cast[VirtualQPdfLinkModel](fcQPdfLinkModel_vdata(self)[])
  let slotval1 = row
  let slotval2 = count
  let slotval3 = gen_qabstractitemmodel_types.QModelIndex(h: parent, owned: false)
  var virtualReturn = inst.insertRows(slotval1, slotval2, slotval3)
  virtualReturn

proc fcQPdfLinkModel_method_callback_insertColumns(self: pointer, column: cint, count: cint, parent: pointer): bool {.cdecl.} =
  let inst = cast[VirtualQPdfLinkModel](fcQPdfLinkModel_vdata(self)[])
  let slotval1 = column
  let slotval2 = count
  let slotval3 = gen_qabstractitemmodel_types.QModelIndex(h: parent, owned: false)
  var virtualReturn = inst.insertColumns(slotval1, slotval2, slotval3)
  virtualReturn

proc fcQPdfLinkModel_method_callback_removeRows(self: pointer, row: cint, count: cint, parent: pointer): bool {.cdecl.} =
  let inst = cast[VirtualQPdfLinkModel](fcQPdfLinkModel_vdata(self)[])
  let slotval1 = row
  let slotval2 = count
  let slotval3 = gen_qabstractitemmodel_types.QModelIndex(h: parent, owned: false)
  var virtualReturn = inst.removeRows(slotval1, slotval2, slotval3)
  virtualReturn

proc fcQPdfLinkModel_method_callback_removeColumns(self: pointer, column: cint, count: cint, parent: pointer): bool {.cdecl.} =
  let inst = cast[VirtualQPdfLinkModel](fcQPdfLinkModel_vdata(self)[])
  let slotval1 = column
  let slotval2 = count
  let slotval3 = gen_qabstractitemmodel_types.QModelIndex(h: parent, owned: false)
  var virtualReturn = inst.removeColumns(slotval1, slotval2, slotval3)
  virtualReturn

proc fcQPdfLinkModel_method_callback_moveRows(self: pointer, sourceParent: pointer, sourceRow: cint, count: cint, destinationParent: pointer, destinationChild: cint): bool {.cdecl.} =
  let inst = cast[VirtualQPdfLinkModel](fcQPdfLinkModel_vdata(self)[])
  let slotval1 = gen_qabstractitemmodel_types.QModelIndex(h: sourceParent, owned: false)
  let slotval2 = sourceRow
  let slotval3 = count
  let slotval4 = gen_qabstractitemmodel_types.QModelIndex(h: destinationParent, owned: false)
  let slotval5 = destinationChild
  var virtualReturn = inst.moveRows(slotval1, slotval2, slotval3, slotval4, slotval5)
  virtualReturn

proc fcQPdfLinkModel_method_callback_moveColumns(self: pointer, sourceParent: pointer, sourceColumn: cint, count: cint, destinationParent: pointer, destinationChild: cint): bool {.cdecl.} =
  let inst = cast[VirtualQPdfLinkModel](fcQPdfLinkModel_vdata(self)[])
  let slotval1 = gen_qabstractitemmodel_types.QModelIndex(h: sourceParent, owned: false)
  let slotval2 = sourceColumn
  let slotval3 = count
  let slotval4 = gen_qabstractitemmodel_types.QModelIndex(h: destinationParent, owned: false)
  let slotval5 = destinationChild
  var virtualReturn = inst.moveColumns(slotval1, slotval2, slotval3, slotval4, slotval5)
  virtualReturn

proc fcQPdfLinkModel_method_callback_fetchMore(self: pointer, parent: pointer): void {.cdecl.} =
  let inst = cast[VirtualQPdfLinkModel](fcQPdfLinkModel_vdata(self)[])
  let slotval1 = gen_qabstractitemmodel_types.QModelIndex(h: parent, owned: false)
  inst.fetchMore(slotval1)

proc fcQPdfLinkModel_method_callback_canFetchMore(self: pointer, parent: pointer): bool {.cdecl.} =
  let inst = cast[VirtualQPdfLinkModel](fcQPdfLinkModel_vdata(self)[])
  let slotval1 = gen_qabstractitemmodel_types.QModelIndex(h: parent, owned: false)
  var virtualReturn = inst.canFetchMore(slotval1)
  virtualReturn

proc fcQPdfLinkModel_method_callback_sort(self: pointer, column: cint, order: cint): void {.cdecl.} =
  let inst = cast[VirtualQPdfLinkModel](fcQPdfLinkModel_vdata(self)[])
  let slotval1 = column
  let slotval2 = cint(order)
  inst.sort(slotval1, slotval2)

proc fcQPdfLinkModel_method_callback_buddy(self: pointer, index: pointer): pointer {.cdecl.} =
  let inst = cast[VirtualQPdfLinkModel](fcQPdfLinkModel_vdata(self)[])
  let slotval1 = gen_qabstractitemmodel_types.QModelIndex(h: index, owned: false)
  var virtualReturn = inst.buddy(slotval1)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc fcQPdfLinkModel_method_callback_match(self: pointer, start: pointer, role: cint, value: pointer, hits: cint, flags: cint): struct_seaqt_array {.cdecl.} =
  let inst = cast[VirtualQPdfLinkModel](fcQPdfLinkModel_vdata(self)[])
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

proc fcQPdfLinkModel_method_callback_span(self: pointer, index: pointer): pointer {.cdecl.} =
  let inst = cast[VirtualQPdfLinkModel](fcQPdfLinkModel_vdata(self)[])
  let slotval1 = gen_qabstractitemmodel_types.QModelIndex(h: index, owned: false)
  var virtualReturn = inst.span(slotval1)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc fcQPdfLinkModel_method_callback_multiData(self: pointer, index: pointer, roleDataSpan: pointer): void {.cdecl.} =
  let inst = cast[VirtualQPdfLinkModel](fcQPdfLinkModel_vdata(self)[])
  let slotval1 = gen_qabstractitemmodel_types.QModelIndex(h: index, owned: false)
  let slotval2 = gen_qabstractitemmodel_types.QModelRoleDataSpan(h: roleDataSpan, owned: true)
  inst.multiData(slotval1, slotval2)

proc fcQPdfLinkModel_method_callback_submit(self: pointer): bool {.cdecl.} =
  let inst = cast[VirtualQPdfLinkModel](fcQPdfLinkModel_vdata(self)[])
  var virtualReturn = inst.submit()
  virtualReturn

proc fcQPdfLinkModel_method_callback_revert(self: pointer): void {.cdecl.} =
  let inst = cast[VirtualQPdfLinkModel](fcQPdfLinkModel_vdata(self)[])
  inst.revert()

proc fcQPdfLinkModel_method_callback_resetInternalData(self: pointer): void {.cdecl.} =
  let inst = cast[VirtualQPdfLinkModel](fcQPdfLinkModel_vdata(self)[])
  inst.resetInternalData()

proc fcQPdfLinkModel_method_callback_event(self: pointer, event: pointer): bool {.cdecl.} =
  let inst = cast[VirtualQPdfLinkModel](fcQPdfLinkModel_vdata(self)[])
  let slotval1 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  var virtualReturn = inst.event(slotval1)
  virtualReturn

proc fcQPdfLinkModel_method_callback_eventFilter(self: pointer, watched: pointer, event: pointer): bool {.cdecl.} =
  let inst = cast[VirtualQPdfLinkModel](fcQPdfLinkModel_vdata(self)[])
  let slotval1 = gen_qobject_types.QObject(h: watched, owned: false)
  let slotval2 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  var virtualReturn = inst.eventFilter(slotval1, slotval2)
  virtualReturn

proc fcQPdfLinkModel_method_callback_timerEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQPdfLinkModel](fcQPdfLinkModel_vdata(self)[])
  let slotval1 = gen_qcoreevent_types.QTimerEvent(h: event, owned: false)
  inst.timerEvent(slotval1)

proc fcQPdfLinkModel_method_callback_childEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQPdfLinkModel](fcQPdfLinkModel_vdata(self)[])
  let slotval1 = gen_qcoreevent_types.QChildEvent(h: event, owned: false)
  inst.childEvent(slotval1)

proc fcQPdfLinkModel_method_callback_customEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQPdfLinkModel](fcQPdfLinkModel_vdata(self)[])
  let slotval1 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  inst.customEvent(slotval1)

proc fcQPdfLinkModel_method_callback_connectNotify(self: pointer, signal: pointer): void {.cdecl.} =
  let inst = cast[VirtualQPdfLinkModel](fcQPdfLinkModel_vdata(self)[])
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal, owned: false)
  inst.connectNotify(slotval1)

proc fcQPdfLinkModel_method_callback_disconnectNotify(self: pointer, signal: pointer): void {.cdecl.} =
  let inst = cast[VirtualQPdfLinkModel](fcQPdfLinkModel_vdata(self)[])
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal, owned: false)
  inst.disconnectNotify(slotval1)


proc createIndex*(self: gen_qpdflinkmodel_types.QPdfLinkModel, row: cint, column: cint): gen_qabstractitemmodel_types.QModelIndex =
  gen_qabstractitemmodel_types.QModelIndex(h: fcQPdfLinkModel_protectedbase_createIndex_row_column(self.h, row, column), owned: true)

proc encodeData*(self: gen_qpdflinkmodel_types.QPdfLinkModel, indexes: openArray[gen_qabstractitemmodel_types.QModelIndex], stream: gen_qdatastream_types.QDataStream): void =
  var indexes_CArray = newSeq[pointer](len(indexes))
  for i in 0..<len(indexes):
    indexes_CArray[i] = indexes[i].h

  fcQPdfLinkModel_protectedbase_encodeData(self.h, struct_seaqt_array(len: csize_t(len(indexes)), data: if len(indexes) == 0: nil else: addr(indexes_CArray[0])), stream.h)

proc decodeData*(self: gen_qpdflinkmodel_types.QPdfLinkModel, row: cint, column: cint, parent: gen_qabstractitemmodel_types.QModelIndex, stream: gen_qdatastream_types.QDataStream): bool =
  fcQPdfLinkModel_protectedbase_decodeData(self.h, row, column, parent.h, stream.h)

proc beginInsertRows*(self: gen_qpdflinkmodel_types.QPdfLinkModel, parent: gen_qabstractitemmodel_types.QModelIndex, first: cint, last: cint): void =
  fcQPdfLinkModel_protectedbase_beginInsertRows(self.h, parent.h, first, last)

proc endInsertRows*(self: gen_qpdflinkmodel_types.QPdfLinkModel): void =
  fcQPdfLinkModel_protectedbase_endInsertRows(self.h)

proc beginRemoveRows*(self: gen_qpdflinkmodel_types.QPdfLinkModel, parent: gen_qabstractitemmodel_types.QModelIndex, first: cint, last: cint): void =
  fcQPdfLinkModel_protectedbase_beginRemoveRows(self.h, parent.h, first, last)

proc endRemoveRows*(self: gen_qpdflinkmodel_types.QPdfLinkModel): void =
  fcQPdfLinkModel_protectedbase_endRemoveRows(self.h)

proc beginMoveRows*(self: gen_qpdflinkmodel_types.QPdfLinkModel, sourceParent: gen_qabstractitemmodel_types.QModelIndex, sourceFirst: cint, sourceLast: cint, destinationParent: gen_qabstractitemmodel_types.QModelIndex, destinationRow: cint): bool =
  fcQPdfLinkModel_protectedbase_beginMoveRows(self.h, sourceParent.h, sourceFirst, sourceLast, destinationParent.h, destinationRow)

proc endMoveRows*(self: gen_qpdflinkmodel_types.QPdfLinkModel): void =
  fcQPdfLinkModel_protectedbase_endMoveRows(self.h)

proc beginInsertColumns*(self: gen_qpdflinkmodel_types.QPdfLinkModel, parent: gen_qabstractitemmodel_types.QModelIndex, first: cint, last: cint): void =
  fcQPdfLinkModel_protectedbase_beginInsertColumns(self.h, parent.h, first, last)

proc endInsertColumns*(self: gen_qpdflinkmodel_types.QPdfLinkModel): void =
  fcQPdfLinkModel_protectedbase_endInsertColumns(self.h)

proc beginRemoveColumns*(self: gen_qpdflinkmodel_types.QPdfLinkModel, parent: gen_qabstractitemmodel_types.QModelIndex, first: cint, last: cint): void =
  fcQPdfLinkModel_protectedbase_beginRemoveColumns(self.h, parent.h, first, last)

proc endRemoveColumns*(self: gen_qpdflinkmodel_types.QPdfLinkModel): void =
  fcQPdfLinkModel_protectedbase_endRemoveColumns(self.h)

proc beginMoveColumns*(self: gen_qpdflinkmodel_types.QPdfLinkModel, sourceParent: gen_qabstractitemmodel_types.QModelIndex, sourceFirst: cint, sourceLast: cint, destinationParent: gen_qabstractitemmodel_types.QModelIndex, destinationColumn: cint): bool =
  fcQPdfLinkModel_protectedbase_beginMoveColumns(self.h, sourceParent.h, sourceFirst, sourceLast, destinationParent.h, destinationColumn)

proc endMoveColumns*(self: gen_qpdflinkmodel_types.QPdfLinkModel): void =
  fcQPdfLinkModel_protectedbase_endMoveColumns(self.h)

proc beginResetModel*(self: gen_qpdflinkmodel_types.QPdfLinkModel): void =
  fcQPdfLinkModel_protectedbase_beginResetModel(self.h)

proc endResetModel*(self: gen_qpdflinkmodel_types.QPdfLinkModel): void =
  fcQPdfLinkModel_protectedbase_endResetModel(self.h)

proc changePersistentIndex*(self: gen_qpdflinkmodel_types.QPdfLinkModel, fromVal: gen_qabstractitemmodel_types.QModelIndex, to: gen_qabstractitemmodel_types.QModelIndex): void =
  fcQPdfLinkModel_protectedbase_changePersistentIndex(self.h, fromVal.h, to.h)

proc changePersistentIndexList*(self: gen_qpdflinkmodel_types.QPdfLinkModel, fromVal: openArray[gen_qabstractitemmodel_types.QModelIndex], to: openArray[gen_qabstractitemmodel_types.QModelIndex]): void =
  var fromVal_CArray = newSeq[pointer](len(fromVal))
  for i in 0..<len(fromVal):
    fromVal_CArray[i] = fromVal[i].h

  var to_CArray = newSeq[pointer](len(to))
  for i in 0..<len(to):
    to_CArray[i] = to[i].h

  fcQPdfLinkModel_protectedbase_changePersistentIndexList(self.h, struct_seaqt_array(len: csize_t(len(fromVal)), data: if len(fromVal) == 0: nil else: addr(fromVal_CArray[0])), struct_seaqt_array(len: csize_t(len(to)), data: if len(to) == 0: nil else: addr(to_CArray[0])))

proc persistentIndexList*(self: gen_qpdflinkmodel_types.QPdfLinkModel): seq[gen_qabstractitemmodel_types.QModelIndex] =
  var v_ma = fcQPdfLinkModel_protectedbase_persistentIndexList(self.h)
  var vx_ret = newSeq[gen_qabstractitemmodel_types.QModelIndex](int(v_ma.len))
  let v_outCast = cast[ptr UncheckedArray[pointer]](v_ma.data)
  for i in 0 ..< v_ma.len:
    vx_ret[i] = gen_qabstractitemmodel_types.QModelIndex(h: v_outCast[i], owned: true)
  c_free(v_ma.data)
  vx_ret

proc sender*(self: gen_qpdflinkmodel_types.QPdfLinkModel): gen_qobject_types.QObject =
  gen_qobject_types.QObject(h: fcQPdfLinkModel_protectedbase_sender(self.h), owned: false)

proc senderSignalIndex*(self: gen_qpdflinkmodel_types.QPdfLinkModel): cint =
  fcQPdfLinkModel_protectedbase_senderSignalIndex(self.h)

proc receivers*(self: gen_qpdflinkmodel_types.QPdfLinkModel, signal: cstring): cint =
  fcQPdfLinkModel_protectedbase_receivers(self.h, signal)

proc isSignalConnected*(self: gen_qpdflinkmodel_types.QPdfLinkModel, signal: gen_qmetaobject_types.QMetaMethod): bool =
  fcQPdfLinkModel_protectedbase_isSignalConnected(self.h, signal.h)

proc create*(T: type gen_qpdflinkmodel_types.QPdfLinkModel,
    vtbl: ref QPdfLinkModelVTable = nil): gen_qpdflinkmodel_types.QPdfLinkModel =
  let vtbl = if vtbl == nil: new QPdfLinkModelVTable else: vtbl
  GC_ref(vtbl)
  vtbl[].vtbl.destructor = proc(self: pointer) {.cdecl.} =
    let vtbl = cast[ref QPdfLinkModelVTable](fcQPdfLinkModel_vdata(self)[])
    GC_unref(vtbl)
  if not isNil(vtbl[].metaObject):
    vtbl[].vtbl.metaObject = fcQPdfLinkModel_vtable_callback_metaObject
  if not isNil(vtbl[].metacast):
    vtbl[].vtbl.metacast = fcQPdfLinkModel_vtable_callback_metacast
  if not isNil(vtbl[].metacall):
    vtbl[].vtbl.metacall = fcQPdfLinkModel_vtable_callback_metacall
  if not isNil(vtbl[].roleNames):
    vtbl[].vtbl.roleNames = fcQPdfLinkModel_vtable_callback_roleNames
  if not isNil(vtbl[].rowCount):
    vtbl[].vtbl.rowCount = fcQPdfLinkModel_vtable_callback_rowCount
  if not isNil(vtbl[].data):
    vtbl[].vtbl.data = fcQPdfLinkModel_vtable_callback_data
  if not isNil(vtbl[].index):
    vtbl[].vtbl.index = fcQPdfLinkModel_vtable_callback_index
  if not isNil(vtbl[].sibling):
    vtbl[].vtbl.sibling = fcQPdfLinkModel_vtable_callback_sibling
  if not isNil(vtbl[].dropMimeData):
    vtbl[].vtbl.dropMimeData = fcQPdfLinkModel_vtable_callback_dropMimeData
  if not isNil(vtbl[].flags):
    vtbl[].vtbl.flags = fcQPdfLinkModel_vtable_callback_flags
  if not isNil(vtbl[].setData):
    vtbl[].vtbl.setData = fcQPdfLinkModel_vtable_callback_setData
  if not isNil(vtbl[].headerData):
    vtbl[].vtbl.headerData = fcQPdfLinkModel_vtable_callback_headerData
  if not isNil(vtbl[].setHeaderData):
    vtbl[].vtbl.setHeaderData = fcQPdfLinkModel_vtable_callback_setHeaderData
  if not isNil(vtbl[].itemData):
    vtbl[].vtbl.itemData = fcQPdfLinkModel_vtable_callback_itemData
  if not isNil(vtbl[].setItemData):
    vtbl[].vtbl.setItemData = fcQPdfLinkModel_vtable_callback_setItemData
  if not isNil(vtbl[].clearItemData):
    vtbl[].vtbl.clearItemData = fcQPdfLinkModel_vtable_callback_clearItemData
  if not isNil(vtbl[].mimeTypes):
    vtbl[].vtbl.mimeTypes = fcQPdfLinkModel_vtable_callback_mimeTypes
  if not isNil(vtbl[].mimeData):
    vtbl[].vtbl.mimeData = fcQPdfLinkModel_vtable_callback_mimeData
  if not isNil(vtbl[].canDropMimeData):
    vtbl[].vtbl.canDropMimeData = fcQPdfLinkModel_vtable_callback_canDropMimeData
  if not isNil(vtbl[].supportedDropActions):
    vtbl[].vtbl.supportedDropActions = fcQPdfLinkModel_vtable_callback_supportedDropActions
  if not isNil(vtbl[].supportedDragActions):
    vtbl[].vtbl.supportedDragActions = fcQPdfLinkModel_vtable_callback_supportedDragActions
  if not isNil(vtbl[].insertRows):
    vtbl[].vtbl.insertRows = fcQPdfLinkModel_vtable_callback_insertRows
  if not isNil(vtbl[].insertColumns):
    vtbl[].vtbl.insertColumns = fcQPdfLinkModel_vtable_callback_insertColumns
  if not isNil(vtbl[].removeRows):
    vtbl[].vtbl.removeRows = fcQPdfLinkModel_vtable_callback_removeRows
  if not isNil(vtbl[].removeColumns):
    vtbl[].vtbl.removeColumns = fcQPdfLinkModel_vtable_callback_removeColumns
  if not isNil(vtbl[].moveRows):
    vtbl[].vtbl.moveRows = fcQPdfLinkModel_vtable_callback_moveRows
  if not isNil(vtbl[].moveColumns):
    vtbl[].vtbl.moveColumns = fcQPdfLinkModel_vtable_callback_moveColumns
  if not isNil(vtbl[].fetchMore):
    vtbl[].vtbl.fetchMore = fcQPdfLinkModel_vtable_callback_fetchMore
  if not isNil(vtbl[].canFetchMore):
    vtbl[].vtbl.canFetchMore = fcQPdfLinkModel_vtable_callback_canFetchMore
  if not isNil(vtbl[].sort):
    vtbl[].vtbl.sort = fcQPdfLinkModel_vtable_callback_sort
  if not isNil(vtbl[].buddy):
    vtbl[].vtbl.buddy = fcQPdfLinkModel_vtable_callback_buddy
  if not isNil(vtbl[].match):
    vtbl[].vtbl.match = fcQPdfLinkModel_vtable_callback_match
  if not isNil(vtbl[].span):
    vtbl[].vtbl.span = fcQPdfLinkModel_vtable_callback_span
  if not isNil(vtbl[].multiData):
    vtbl[].vtbl.multiData = fcQPdfLinkModel_vtable_callback_multiData
  if not isNil(vtbl[].submit):
    vtbl[].vtbl.submit = fcQPdfLinkModel_vtable_callback_submit
  if not isNil(vtbl[].revert):
    vtbl[].vtbl.revert = fcQPdfLinkModel_vtable_callback_revert
  if not isNil(vtbl[].resetInternalData):
    vtbl[].vtbl.resetInternalData = fcQPdfLinkModel_vtable_callback_resetInternalData
  if not isNil(vtbl[].event):
    vtbl[].vtbl.event = fcQPdfLinkModel_vtable_callback_event
  if not isNil(vtbl[].eventFilter):
    vtbl[].vtbl.eventFilter = fcQPdfLinkModel_vtable_callback_eventFilter
  if not isNil(vtbl[].timerEvent):
    vtbl[].vtbl.timerEvent = fcQPdfLinkModel_vtable_callback_timerEvent
  if not isNil(vtbl[].childEvent):
    vtbl[].vtbl.childEvent = fcQPdfLinkModel_vtable_callback_childEvent
  if not isNil(vtbl[].customEvent):
    vtbl[].vtbl.customEvent = fcQPdfLinkModel_vtable_callback_customEvent
  if not isNil(vtbl[].connectNotify):
    vtbl[].vtbl.connectNotify = fcQPdfLinkModel_vtable_callback_connectNotify
  if not isNil(vtbl[].disconnectNotify):
    vtbl[].vtbl.disconnectNotify = fcQPdfLinkModel_vtable_callback_disconnectNotify
  let tmp = gen_qpdflinkmodel_types.QPdfLinkModel(h: fcQPdfLinkModel_new(addr(vtbl[].vtbl), csize_t(sizeof(pointer))), owned: true)
  fcQPdfLinkModel_vdata(tmp.h)[] = addr(vtbl[])
  tmp
proc create*(T: type gen_qpdflinkmodel_types.QPdfLinkModel,
    parent: gen_qobject_types.QObject,
    vtbl: ref QPdfLinkModelVTable = nil): gen_qpdflinkmodel_types.QPdfLinkModel =
  let vtbl = if vtbl == nil: new QPdfLinkModelVTable else: vtbl
  GC_ref(vtbl)
  vtbl[].vtbl.destructor = proc(self: pointer) {.cdecl.} =
    let vtbl = cast[ref QPdfLinkModelVTable](fcQPdfLinkModel_vdata(self)[])
    GC_unref(vtbl)
  if not isNil(vtbl[].metaObject):
    vtbl[].vtbl.metaObject = fcQPdfLinkModel_vtable_callback_metaObject
  if not isNil(vtbl[].metacast):
    vtbl[].vtbl.metacast = fcQPdfLinkModel_vtable_callback_metacast
  if not isNil(vtbl[].metacall):
    vtbl[].vtbl.metacall = fcQPdfLinkModel_vtable_callback_metacall
  if not isNil(vtbl[].roleNames):
    vtbl[].vtbl.roleNames = fcQPdfLinkModel_vtable_callback_roleNames
  if not isNil(vtbl[].rowCount):
    vtbl[].vtbl.rowCount = fcQPdfLinkModel_vtable_callback_rowCount
  if not isNil(vtbl[].data):
    vtbl[].vtbl.data = fcQPdfLinkModel_vtable_callback_data
  if not isNil(vtbl[].index):
    vtbl[].vtbl.index = fcQPdfLinkModel_vtable_callback_index
  if not isNil(vtbl[].sibling):
    vtbl[].vtbl.sibling = fcQPdfLinkModel_vtable_callback_sibling
  if not isNil(vtbl[].dropMimeData):
    vtbl[].vtbl.dropMimeData = fcQPdfLinkModel_vtable_callback_dropMimeData
  if not isNil(vtbl[].flags):
    vtbl[].vtbl.flags = fcQPdfLinkModel_vtable_callback_flags
  if not isNil(vtbl[].setData):
    vtbl[].vtbl.setData = fcQPdfLinkModel_vtable_callback_setData
  if not isNil(vtbl[].headerData):
    vtbl[].vtbl.headerData = fcQPdfLinkModel_vtable_callback_headerData
  if not isNil(vtbl[].setHeaderData):
    vtbl[].vtbl.setHeaderData = fcQPdfLinkModel_vtable_callback_setHeaderData
  if not isNil(vtbl[].itemData):
    vtbl[].vtbl.itemData = fcQPdfLinkModel_vtable_callback_itemData
  if not isNil(vtbl[].setItemData):
    vtbl[].vtbl.setItemData = fcQPdfLinkModel_vtable_callback_setItemData
  if not isNil(vtbl[].clearItemData):
    vtbl[].vtbl.clearItemData = fcQPdfLinkModel_vtable_callback_clearItemData
  if not isNil(vtbl[].mimeTypes):
    vtbl[].vtbl.mimeTypes = fcQPdfLinkModel_vtable_callback_mimeTypes
  if not isNil(vtbl[].mimeData):
    vtbl[].vtbl.mimeData = fcQPdfLinkModel_vtable_callback_mimeData
  if not isNil(vtbl[].canDropMimeData):
    vtbl[].vtbl.canDropMimeData = fcQPdfLinkModel_vtable_callback_canDropMimeData
  if not isNil(vtbl[].supportedDropActions):
    vtbl[].vtbl.supportedDropActions = fcQPdfLinkModel_vtable_callback_supportedDropActions
  if not isNil(vtbl[].supportedDragActions):
    vtbl[].vtbl.supportedDragActions = fcQPdfLinkModel_vtable_callback_supportedDragActions
  if not isNil(vtbl[].insertRows):
    vtbl[].vtbl.insertRows = fcQPdfLinkModel_vtable_callback_insertRows
  if not isNil(vtbl[].insertColumns):
    vtbl[].vtbl.insertColumns = fcQPdfLinkModel_vtable_callback_insertColumns
  if not isNil(vtbl[].removeRows):
    vtbl[].vtbl.removeRows = fcQPdfLinkModel_vtable_callback_removeRows
  if not isNil(vtbl[].removeColumns):
    vtbl[].vtbl.removeColumns = fcQPdfLinkModel_vtable_callback_removeColumns
  if not isNil(vtbl[].moveRows):
    vtbl[].vtbl.moveRows = fcQPdfLinkModel_vtable_callback_moveRows
  if not isNil(vtbl[].moveColumns):
    vtbl[].vtbl.moveColumns = fcQPdfLinkModel_vtable_callback_moveColumns
  if not isNil(vtbl[].fetchMore):
    vtbl[].vtbl.fetchMore = fcQPdfLinkModel_vtable_callback_fetchMore
  if not isNil(vtbl[].canFetchMore):
    vtbl[].vtbl.canFetchMore = fcQPdfLinkModel_vtable_callback_canFetchMore
  if not isNil(vtbl[].sort):
    vtbl[].vtbl.sort = fcQPdfLinkModel_vtable_callback_sort
  if not isNil(vtbl[].buddy):
    vtbl[].vtbl.buddy = fcQPdfLinkModel_vtable_callback_buddy
  if not isNil(vtbl[].match):
    vtbl[].vtbl.match = fcQPdfLinkModel_vtable_callback_match
  if not isNil(vtbl[].span):
    vtbl[].vtbl.span = fcQPdfLinkModel_vtable_callback_span
  if not isNil(vtbl[].multiData):
    vtbl[].vtbl.multiData = fcQPdfLinkModel_vtable_callback_multiData
  if not isNil(vtbl[].submit):
    vtbl[].vtbl.submit = fcQPdfLinkModel_vtable_callback_submit
  if not isNil(vtbl[].revert):
    vtbl[].vtbl.revert = fcQPdfLinkModel_vtable_callback_revert
  if not isNil(vtbl[].resetInternalData):
    vtbl[].vtbl.resetInternalData = fcQPdfLinkModel_vtable_callback_resetInternalData
  if not isNil(vtbl[].event):
    vtbl[].vtbl.event = fcQPdfLinkModel_vtable_callback_event
  if not isNil(vtbl[].eventFilter):
    vtbl[].vtbl.eventFilter = fcQPdfLinkModel_vtable_callback_eventFilter
  if not isNil(vtbl[].timerEvent):
    vtbl[].vtbl.timerEvent = fcQPdfLinkModel_vtable_callback_timerEvent
  if not isNil(vtbl[].childEvent):
    vtbl[].vtbl.childEvent = fcQPdfLinkModel_vtable_callback_childEvent
  if not isNil(vtbl[].customEvent):
    vtbl[].vtbl.customEvent = fcQPdfLinkModel_vtable_callback_customEvent
  if not isNil(vtbl[].connectNotify):
    vtbl[].vtbl.connectNotify = fcQPdfLinkModel_vtable_callback_connectNotify
  if not isNil(vtbl[].disconnectNotify):
    vtbl[].vtbl.disconnectNotify = fcQPdfLinkModel_vtable_callback_disconnectNotify
  let tmp = gen_qpdflinkmodel_types.QPdfLinkModel(h: fcQPdfLinkModel_new2(addr(vtbl[].vtbl), csize_t(sizeof(pointer)), parent.h), owned: true)
  fcQPdfLinkModel_vdata(tmp.h)[] = addr(vtbl[])
  tmp
const cQPdfLinkModel_mvtbl = cQPdfLinkModelVTable(
  destructor: proc(self: pointer) {.cdecl.} =
    let inst = cast[ptr typeof(VirtualQPdfLinkModel()[])](self.fcQPdfLinkModel_vdata()[])
    inst[].h = nil
    inst[].owned = false,

  metaObject: fcQPdfLinkModel_method_callback_metaObject,
  metacast: fcQPdfLinkModel_method_callback_metacast,
  metacall: fcQPdfLinkModel_method_callback_metacall,
  roleNames: fcQPdfLinkModel_method_callback_roleNames,
  rowCount: fcQPdfLinkModel_method_callback_rowCount,
  data: fcQPdfLinkModel_method_callback_data,
  index: fcQPdfLinkModel_method_callback_index,
  sibling: fcQPdfLinkModel_method_callback_sibling,
  dropMimeData: fcQPdfLinkModel_method_callback_dropMimeData,
  flags: fcQPdfLinkModel_method_callback_flags,
  setData: fcQPdfLinkModel_method_callback_setData,
  headerData: fcQPdfLinkModel_method_callback_headerData,
  setHeaderData: fcQPdfLinkModel_method_callback_setHeaderData,
  itemData: fcQPdfLinkModel_method_callback_itemData,
  setItemData: fcQPdfLinkModel_method_callback_setItemData,
  clearItemData: fcQPdfLinkModel_method_callback_clearItemData,
  mimeTypes: fcQPdfLinkModel_method_callback_mimeTypes,
  mimeData: fcQPdfLinkModel_method_callback_mimeData,
  canDropMimeData: fcQPdfLinkModel_method_callback_canDropMimeData,
  supportedDropActions: fcQPdfLinkModel_method_callback_supportedDropActions,
  supportedDragActions: fcQPdfLinkModel_method_callback_supportedDragActions,
  insertRows: fcQPdfLinkModel_method_callback_insertRows,
  insertColumns: fcQPdfLinkModel_method_callback_insertColumns,
  removeRows: fcQPdfLinkModel_method_callback_removeRows,
  removeColumns: fcQPdfLinkModel_method_callback_removeColumns,
  moveRows: fcQPdfLinkModel_method_callback_moveRows,
  moveColumns: fcQPdfLinkModel_method_callback_moveColumns,
  fetchMore: fcQPdfLinkModel_method_callback_fetchMore,
  canFetchMore: fcQPdfLinkModel_method_callback_canFetchMore,
  sort: fcQPdfLinkModel_method_callback_sort,
  buddy: fcQPdfLinkModel_method_callback_buddy,
  match: fcQPdfLinkModel_method_callback_match,
  span: fcQPdfLinkModel_method_callback_span,
  multiData: fcQPdfLinkModel_method_callback_multiData,
  submit: fcQPdfLinkModel_method_callback_submit,
  revert: fcQPdfLinkModel_method_callback_revert,
  resetInternalData: fcQPdfLinkModel_method_callback_resetInternalData,
  event: fcQPdfLinkModel_method_callback_event,
  eventFilter: fcQPdfLinkModel_method_callback_eventFilter,
  timerEvent: fcQPdfLinkModel_method_callback_timerEvent,
  childEvent: fcQPdfLinkModel_method_callback_childEvent,
  customEvent: fcQPdfLinkModel_method_callback_customEvent,
  connectNotify: fcQPdfLinkModel_method_callback_connectNotify,
  disconnectNotify: fcQPdfLinkModel_method_callback_disconnectNotify,
)
proc create*(T: type gen_qpdflinkmodel_types.QPdfLinkModel,
    inst: VirtualQPdfLinkModel) =
  if inst[].h != nil: delete(move(inst[]))
  inst[].h = fcQPdfLinkModel_new(addr(cQPdfLinkModel_mvtbl), csize_t(sizeof(pointer)))
  fcQPdfLinkModel_vdata(inst[].h)[] = addr inst[]
  inst[].owned = true

proc create*(T: type gen_qpdflinkmodel_types.QPdfLinkModel,
    parent: gen_qobject_types.QObject,
    inst: VirtualQPdfLinkModel) =
  if inst[].h != nil: delete(move(inst[]))
  inst[].h = fcQPdfLinkModel_new2(addr(cQPdfLinkModel_mvtbl), csize_t(sizeof(pointer)), parent.h)
  fcQPdfLinkModel_vdata(inst[].h)[] = addr inst[]
  inst[].owned = true

proc staticMetaObject*(_: type gen_qpdflinkmodel_types.QPdfLinkModel): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQPdfLinkModel_staticMetaObject())
