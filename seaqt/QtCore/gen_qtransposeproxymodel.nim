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

proc fcQTransposeProxyModel_metaObject(self: pointer, ): pointer {.importc: "QTransposeProxyModel_metaObject".}
proc fcQTransposeProxyModel_metacast(self: pointer, param1: cstring): pointer {.importc: "QTransposeProxyModel_metacast".}
proc fcQTransposeProxyModel_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.importc: "QTransposeProxyModel_metacall".}
proc fcQTransposeProxyModel_tr(s: cstring): struct_miqt_string {.importc: "QTransposeProxyModel_tr".}
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
type cQTransposeProxyModelVTable = object
  destructor*: proc(vtbl: ptr cQTransposeProxyModelVTable, self: ptr cQTransposeProxyModel) {.cdecl, raises:[], gcsafe.}
  metaObject*: proc(vtbl, self: pointer, ): pointer {.cdecl, raises: [], gcsafe.}
  metacast*: proc(vtbl, self: pointer, param1: cstring): pointer {.cdecl, raises: [], gcsafe.}
  metacall*: proc(vtbl, self: pointer, param1: cint, param2: cint, param3: pointer): cint {.cdecl, raises: [], gcsafe.}
  setSourceModel*: proc(vtbl, self: pointer, newSourceModel: pointer): void {.cdecl, raises: [], gcsafe.}
  rowCount*: proc(vtbl, self: pointer, parent: pointer): cint {.cdecl, raises: [], gcsafe.}
  columnCount*: proc(vtbl, self: pointer, parent: pointer): cint {.cdecl, raises: [], gcsafe.}
  headerData*: proc(vtbl, self: pointer, section: cint, orientation: cint, role: cint): pointer {.cdecl, raises: [], gcsafe.}
  setHeaderData*: proc(vtbl, self: pointer, section: cint, orientation: cint, value: pointer, role: cint): bool {.cdecl, raises: [], gcsafe.}
  setItemData*: proc(vtbl, self: pointer, index: pointer, roles: struct_miqt_map): bool {.cdecl, raises: [], gcsafe.}
  span*: proc(vtbl, self: pointer, index: pointer): pointer {.cdecl, raises: [], gcsafe.}
  itemData*: proc(vtbl, self: pointer, index: pointer): struct_miqt_map {.cdecl, raises: [], gcsafe.}
  mapFromSource*: proc(vtbl, self: pointer, sourceIndex: pointer): pointer {.cdecl, raises: [], gcsafe.}
  mapToSource*: proc(vtbl, self: pointer, proxyIndex: pointer): pointer {.cdecl, raises: [], gcsafe.}
  parent*: proc(vtbl, self: pointer, index: pointer): pointer {.cdecl, raises: [], gcsafe.}
  index*: proc(vtbl, self: pointer, row: cint, column: cint, parent: pointer): pointer {.cdecl, raises: [], gcsafe.}
  insertRows*: proc(vtbl, self: pointer, row: cint, count: cint, parent: pointer): bool {.cdecl, raises: [], gcsafe.}
  removeRows*: proc(vtbl, self: pointer, row: cint, count: cint, parent: pointer): bool {.cdecl, raises: [], gcsafe.}
  moveRows*: proc(vtbl, self: pointer, sourceParent: pointer, sourceRow: cint, count: cint, destinationParent: pointer, destinationChild: cint): bool {.cdecl, raises: [], gcsafe.}
  insertColumns*: proc(vtbl, self: pointer, column: cint, count: cint, parent: pointer): bool {.cdecl, raises: [], gcsafe.}
  removeColumns*: proc(vtbl, self: pointer, column: cint, count: cint, parent: pointer): bool {.cdecl, raises: [], gcsafe.}
  moveColumns*: proc(vtbl, self: pointer, sourceParent: pointer, sourceColumn: cint, count: cint, destinationParent: pointer, destinationChild: cint): bool {.cdecl, raises: [], gcsafe.}
  sort*: proc(vtbl, self: pointer, column: cint, order: cint): void {.cdecl, raises: [], gcsafe.}
  mapSelectionToSource*: proc(vtbl, self: pointer, selection: pointer): pointer {.cdecl, raises: [], gcsafe.}
  mapSelectionFromSource*: proc(vtbl, self: pointer, selection: pointer): pointer {.cdecl, raises: [], gcsafe.}
  submit*: proc(vtbl, self: pointer, ): bool {.cdecl, raises: [], gcsafe.}
  revert*: proc(vtbl, self: pointer, ): void {.cdecl, raises: [], gcsafe.}
  data*: proc(vtbl, self: pointer, proxyIndex: pointer, role: cint): pointer {.cdecl, raises: [], gcsafe.}
  flags*: proc(vtbl, self: pointer, index: pointer): cint {.cdecl, raises: [], gcsafe.}
  setData*: proc(vtbl, self: pointer, index: pointer, value: pointer, role: cint): bool {.cdecl, raises: [], gcsafe.}
  clearItemData*: proc(vtbl, self: pointer, index: pointer): bool {.cdecl, raises: [], gcsafe.}
  buddy*: proc(vtbl, self: pointer, index: pointer): pointer {.cdecl, raises: [], gcsafe.}
  canFetchMore*: proc(vtbl, self: pointer, parent: pointer): bool {.cdecl, raises: [], gcsafe.}
  fetchMore*: proc(vtbl, self: pointer, parent: pointer): void {.cdecl, raises: [], gcsafe.}
  hasChildren*: proc(vtbl, self: pointer, parent: pointer): bool {.cdecl, raises: [], gcsafe.}
  sibling*: proc(vtbl, self: pointer, row: cint, column: cint, idx: pointer): pointer {.cdecl, raises: [], gcsafe.}
  mimeData*: proc(vtbl, self: pointer, indexes: struct_miqt_array): pointer {.cdecl, raises: [], gcsafe.}
  canDropMimeData*: proc(vtbl, self: pointer, data: pointer, action: cint, row: cint, column: cint, parent: pointer): bool {.cdecl, raises: [], gcsafe.}
  dropMimeData*: proc(vtbl, self: pointer, data: pointer, action: cint, row: cint, column: cint, parent: pointer): bool {.cdecl, raises: [], gcsafe.}
  mimeTypes*: proc(vtbl, self: pointer, ): struct_miqt_array {.cdecl, raises: [], gcsafe.}
  supportedDragActions*: proc(vtbl, self: pointer, ): cint {.cdecl, raises: [], gcsafe.}
  supportedDropActions*: proc(vtbl, self: pointer, ): cint {.cdecl, raises: [], gcsafe.}
  roleNames*: proc(vtbl, self: pointer, ): struct_miqt_map {.cdecl, raises: [], gcsafe.}
  match*: proc(vtbl, self: pointer, start: pointer, role: cint, value: pointer, hits: cint, flags: cint): struct_miqt_array {.cdecl, raises: [], gcsafe.}
  multiData*: proc(vtbl, self: pointer, index: pointer, roleDataSpan: pointer): void {.cdecl, raises: [], gcsafe.}
  resetInternalData*: proc(vtbl, self: pointer, ): void {.cdecl, raises: [], gcsafe.}
  event*: proc(vtbl, self: pointer, event: pointer): bool {.cdecl, raises: [], gcsafe.}
  eventFilter*: proc(vtbl, self: pointer, watched: pointer, event: pointer): bool {.cdecl, raises: [], gcsafe.}
  timerEvent*: proc(vtbl, self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  childEvent*: proc(vtbl, self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  customEvent*: proc(vtbl, self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  connectNotify*: proc(vtbl, self: pointer, signal: pointer): void {.cdecl, raises: [], gcsafe.}
  disconnectNotify*: proc(vtbl, self: pointer, signal: pointer): void {.cdecl, raises: [], gcsafe.}
proc fcQTransposeProxyModel_virtualbase_metaObject(self: pointer, ): pointer {.importc: "QTransposeProxyModel_virtualbase_metaObject".}
proc fcQTransposeProxyModel_virtualbase_metacast(self: pointer, param1: cstring): pointer {.importc: "QTransposeProxyModel_virtualbase_metacast".}
proc fcQTransposeProxyModel_virtualbase_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.importc: "QTransposeProxyModel_virtualbase_metacall".}
proc fcQTransposeProxyModel_virtualbase_setSourceModel(self: pointer, newSourceModel: pointer): void {.importc: "QTransposeProxyModel_virtualbase_setSourceModel".}
proc fcQTransposeProxyModel_virtualbase_rowCount(self: pointer, parent: pointer): cint {.importc: "QTransposeProxyModel_virtualbase_rowCount".}
proc fcQTransposeProxyModel_virtualbase_columnCount(self: pointer, parent: pointer): cint {.importc: "QTransposeProxyModel_virtualbase_columnCount".}
proc fcQTransposeProxyModel_virtualbase_headerData(self: pointer, section: cint, orientation: cint, role: cint): pointer {.importc: "QTransposeProxyModel_virtualbase_headerData".}
proc fcQTransposeProxyModel_virtualbase_setHeaderData(self: pointer, section: cint, orientation: cint, value: pointer, role: cint): bool {.importc: "QTransposeProxyModel_virtualbase_setHeaderData".}
proc fcQTransposeProxyModel_virtualbase_setItemData(self: pointer, index: pointer, roles: struct_miqt_map): bool {.importc: "QTransposeProxyModel_virtualbase_setItemData".}
proc fcQTransposeProxyModel_virtualbase_span(self: pointer, index: pointer): pointer {.importc: "QTransposeProxyModel_virtualbase_span".}
proc fcQTransposeProxyModel_virtualbase_itemData(self: pointer, index: pointer): struct_miqt_map {.importc: "QTransposeProxyModel_virtualbase_itemData".}
proc fcQTransposeProxyModel_virtualbase_mapFromSource(self: pointer, sourceIndex: pointer): pointer {.importc: "QTransposeProxyModel_virtualbase_mapFromSource".}
proc fcQTransposeProxyModel_virtualbase_mapToSource(self: pointer, proxyIndex: pointer): pointer {.importc: "QTransposeProxyModel_virtualbase_mapToSource".}
proc fcQTransposeProxyModel_virtualbase_parent(self: pointer, index: pointer): pointer {.importc: "QTransposeProxyModel_virtualbase_parent".}
proc fcQTransposeProxyModel_virtualbase_index(self: pointer, row: cint, column: cint, parent: pointer): pointer {.importc: "QTransposeProxyModel_virtualbase_index".}
proc fcQTransposeProxyModel_virtualbase_insertRows(self: pointer, row: cint, count: cint, parent: pointer): bool {.importc: "QTransposeProxyModel_virtualbase_insertRows".}
proc fcQTransposeProxyModel_virtualbase_removeRows(self: pointer, row: cint, count: cint, parent: pointer): bool {.importc: "QTransposeProxyModel_virtualbase_removeRows".}
proc fcQTransposeProxyModel_virtualbase_moveRows(self: pointer, sourceParent: pointer, sourceRow: cint, count: cint, destinationParent: pointer, destinationChild: cint): bool {.importc: "QTransposeProxyModel_virtualbase_moveRows".}
proc fcQTransposeProxyModel_virtualbase_insertColumns(self: pointer, column: cint, count: cint, parent: pointer): bool {.importc: "QTransposeProxyModel_virtualbase_insertColumns".}
proc fcQTransposeProxyModel_virtualbase_removeColumns(self: pointer, column: cint, count: cint, parent: pointer): bool {.importc: "QTransposeProxyModel_virtualbase_removeColumns".}
proc fcQTransposeProxyModel_virtualbase_moveColumns(self: pointer, sourceParent: pointer, sourceColumn: cint, count: cint, destinationParent: pointer, destinationChild: cint): bool {.importc: "QTransposeProxyModel_virtualbase_moveColumns".}
proc fcQTransposeProxyModel_virtualbase_sort(self: pointer, column: cint, order: cint): void {.importc: "QTransposeProxyModel_virtualbase_sort".}
proc fcQTransposeProxyModel_virtualbase_mapSelectionToSource(self: pointer, selection: pointer): pointer {.importc: "QTransposeProxyModel_virtualbase_mapSelectionToSource".}
proc fcQTransposeProxyModel_virtualbase_mapSelectionFromSource(self: pointer, selection: pointer): pointer {.importc: "QTransposeProxyModel_virtualbase_mapSelectionFromSource".}
proc fcQTransposeProxyModel_virtualbase_submit(self: pointer, ): bool {.importc: "QTransposeProxyModel_virtualbase_submit".}
proc fcQTransposeProxyModel_virtualbase_revert(self: pointer, ): void {.importc: "QTransposeProxyModel_virtualbase_revert".}
proc fcQTransposeProxyModel_virtualbase_data(self: pointer, proxyIndex: pointer, role: cint): pointer {.importc: "QTransposeProxyModel_virtualbase_data".}
proc fcQTransposeProxyModel_virtualbase_flags(self: pointer, index: pointer): cint {.importc: "QTransposeProxyModel_virtualbase_flags".}
proc fcQTransposeProxyModel_virtualbase_setData(self: pointer, index: pointer, value: pointer, role: cint): bool {.importc: "QTransposeProxyModel_virtualbase_setData".}
proc fcQTransposeProxyModel_virtualbase_clearItemData(self: pointer, index: pointer): bool {.importc: "QTransposeProxyModel_virtualbase_clearItemData".}
proc fcQTransposeProxyModel_virtualbase_buddy(self: pointer, index: pointer): pointer {.importc: "QTransposeProxyModel_virtualbase_buddy".}
proc fcQTransposeProxyModel_virtualbase_canFetchMore(self: pointer, parent: pointer): bool {.importc: "QTransposeProxyModel_virtualbase_canFetchMore".}
proc fcQTransposeProxyModel_virtualbase_fetchMore(self: pointer, parent: pointer): void {.importc: "QTransposeProxyModel_virtualbase_fetchMore".}
proc fcQTransposeProxyModel_virtualbase_hasChildren(self: pointer, parent: pointer): bool {.importc: "QTransposeProxyModel_virtualbase_hasChildren".}
proc fcQTransposeProxyModel_virtualbase_sibling(self: pointer, row: cint, column: cint, idx: pointer): pointer {.importc: "QTransposeProxyModel_virtualbase_sibling".}
proc fcQTransposeProxyModel_virtualbase_mimeData(self: pointer, indexes: struct_miqt_array): pointer {.importc: "QTransposeProxyModel_virtualbase_mimeData".}
proc fcQTransposeProxyModel_virtualbase_canDropMimeData(self: pointer, data: pointer, action: cint, row: cint, column: cint, parent: pointer): bool {.importc: "QTransposeProxyModel_virtualbase_canDropMimeData".}
proc fcQTransposeProxyModel_virtualbase_dropMimeData(self: pointer, data: pointer, action: cint, row: cint, column: cint, parent: pointer): bool {.importc: "QTransposeProxyModel_virtualbase_dropMimeData".}
proc fcQTransposeProxyModel_virtualbase_mimeTypes(self: pointer, ): struct_miqt_array {.importc: "QTransposeProxyModel_virtualbase_mimeTypes".}
proc fcQTransposeProxyModel_virtualbase_supportedDragActions(self: pointer, ): cint {.importc: "QTransposeProxyModel_virtualbase_supportedDragActions".}
proc fcQTransposeProxyModel_virtualbase_supportedDropActions(self: pointer, ): cint {.importc: "QTransposeProxyModel_virtualbase_supportedDropActions".}
proc fcQTransposeProxyModel_virtualbase_roleNames(self: pointer, ): struct_miqt_map {.importc: "QTransposeProxyModel_virtualbase_roleNames".}
proc fcQTransposeProxyModel_virtualbase_match(self: pointer, start: pointer, role: cint, value: pointer, hits: cint, flags: cint): struct_miqt_array {.importc: "QTransposeProxyModel_virtualbase_match".}
proc fcQTransposeProxyModel_virtualbase_multiData(self: pointer, index: pointer, roleDataSpan: pointer): void {.importc: "QTransposeProxyModel_virtualbase_multiData".}
proc fcQTransposeProxyModel_virtualbase_resetInternalData(self: pointer, ): void {.importc: "QTransposeProxyModel_virtualbase_resetInternalData".}
proc fcQTransposeProxyModel_virtualbase_event(self: pointer, event: pointer): bool {.importc: "QTransposeProxyModel_virtualbase_event".}
proc fcQTransposeProxyModel_virtualbase_eventFilter(self: pointer, watched: pointer, event: pointer): bool {.importc: "QTransposeProxyModel_virtualbase_eventFilter".}
proc fcQTransposeProxyModel_virtualbase_timerEvent(self: pointer, event: pointer): void {.importc: "QTransposeProxyModel_virtualbase_timerEvent".}
proc fcQTransposeProxyModel_virtualbase_childEvent(self: pointer, event: pointer): void {.importc: "QTransposeProxyModel_virtualbase_childEvent".}
proc fcQTransposeProxyModel_virtualbase_customEvent(self: pointer, event: pointer): void {.importc: "QTransposeProxyModel_virtualbase_customEvent".}
proc fcQTransposeProxyModel_virtualbase_connectNotify(self: pointer, signal: pointer): void {.importc: "QTransposeProxyModel_virtualbase_connectNotify".}
proc fcQTransposeProxyModel_virtualbase_disconnectNotify(self: pointer, signal: pointer): void {.importc: "QTransposeProxyModel_virtualbase_disconnectNotify".}
proc fcQTransposeProxyModel_new(vtbl: pointer, ): ptr cQTransposeProxyModel {.importc: "QTransposeProxyModel_new".}
proc fcQTransposeProxyModel_new2(vtbl: pointer, parent: pointer): ptr cQTransposeProxyModel {.importc: "QTransposeProxyModel_new2".}
proc fcQTransposeProxyModel_staticMetaObject(): pointer {.importc: "QTransposeProxyModel_staticMetaObject".}
proc fcQTransposeProxyModel_delete(self: pointer) {.importc: "QTransposeProxyModel_delete".}

proc metaObject*(self: gen_qtransposeproxymodel_types.QTransposeProxyModel, ): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQTransposeProxyModel_metaObject(self.h))

proc metacast*(self: gen_qtransposeproxymodel_types.QTransposeProxyModel, param1: cstring): pointer =
  fcQTransposeProxyModel_metacast(self.h, param1)

proc metacall*(self: gen_qtransposeproxymodel_types.QTransposeProxyModel, param1: cint, param2: cint, param3: pointer): cint =
  fcQTransposeProxyModel_metacall(self.h, cint(param1), param2, param3)

proc tr*(_: type gen_qtransposeproxymodel_types.QTransposeProxyModel, s: cstring): string =
  let v_ms = fcQTransposeProxyModel_tr(s)
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

type QTransposeProxyModelmetaObjectProc* = proc(self: QTransposeProxyModel): gen_qobjectdefs_types.QMetaObject {.raises: [], gcsafe.}
type QTransposeProxyModelmetacastProc* = proc(self: QTransposeProxyModel, param1: cstring): pointer {.raises: [], gcsafe.}
type QTransposeProxyModelmetacallProc* = proc(self: QTransposeProxyModel, param1: cint, param2: cint, param3: pointer): cint {.raises: [], gcsafe.}
type QTransposeProxyModelsetSourceModelProc* = proc(self: QTransposeProxyModel, newSourceModel: gen_qabstractitemmodel_types.QAbstractItemModel): void {.raises: [], gcsafe.}
type QTransposeProxyModelrowCountProc* = proc(self: QTransposeProxyModel, parent: gen_qabstractitemmodel_types.QModelIndex): cint {.raises: [], gcsafe.}
type QTransposeProxyModelcolumnCountProc* = proc(self: QTransposeProxyModel, parent: gen_qabstractitemmodel_types.QModelIndex): cint {.raises: [], gcsafe.}
type QTransposeProxyModelheaderDataProc* = proc(self: QTransposeProxyModel, section: cint, orientation: cint, role: cint): gen_qvariant_types.QVariant {.raises: [], gcsafe.}
type QTransposeProxyModelsetHeaderDataProc* = proc(self: QTransposeProxyModel, section: cint, orientation: cint, value: gen_qvariant_types.QVariant, role: cint): bool {.raises: [], gcsafe.}
type QTransposeProxyModelsetItemDataProc* = proc(self: QTransposeProxyModel, index: gen_qabstractitemmodel_types.QModelIndex, roles: Table[cint,gen_qvariant_types.QVariant]): bool {.raises: [], gcsafe.}
type QTransposeProxyModelspanProc* = proc(self: QTransposeProxyModel, index: gen_qabstractitemmodel_types.QModelIndex): gen_qsize_types.QSize {.raises: [], gcsafe.}
type QTransposeProxyModelitemDataProc* = proc(self: QTransposeProxyModel, index: gen_qabstractitemmodel_types.QModelIndex): Table[cint,gen_qvariant_types.QVariant] {.raises: [], gcsafe.}
type QTransposeProxyModelmapFromSourceProc* = proc(self: QTransposeProxyModel, sourceIndex: gen_qabstractitemmodel_types.QModelIndex): gen_qabstractitemmodel_types.QModelIndex {.raises: [], gcsafe.}
type QTransposeProxyModelmapToSourceProc* = proc(self: QTransposeProxyModel, proxyIndex: gen_qabstractitemmodel_types.QModelIndex): gen_qabstractitemmodel_types.QModelIndex {.raises: [], gcsafe.}
type QTransposeProxyModelparentProc* = proc(self: QTransposeProxyModel, index: gen_qabstractitemmodel_types.QModelIndex): gen_qabstractitemmodel_types.QModelIndex {.raises: [], gcsafe.}
type QTransposeProxyModelindexProc* = proc(self: QTransposeProxyModel, row: cint, column: cint, parent: gen_qabstractitemmodel_types.QModelIndex): gen_qabstractitemmodel_types.QModelIndex {.raises: [], gcsafe.}
type QTransposeProxyModelinsertRowsProc* = proc(self: QTransposeProxyModel, row: cint, count: cint, parent: gen_qabstractitemmodel_types.QModelIndex): bool {.raises: [], gcsafe.}
type QTransposeProxyModelremoveRowsProc* = proc(self: QTransposeProxyModel, row: cint, count: cint, parent: gen_qabstractitemmodel_types.QModelIndex): bool {.raises: [], gcsafe.}
type QTransposeProxyModelmoveRowsProc* = proc(self: QTransposeProxyModel, sourceParent: gen_qabstractitemmodel_types.QModelIndex, sourceRow: cint, count: cint, destinationParent: gen_qabstractitemmodel_types.QModelIndex, destinationChild: cint): bool {.raises: [], gcsafe.}
type QTransposeProxyModelinsertColumnsProc* = proc(self: QTransposeProxyModel, column: cint, count: cint, parent: gen_qabstractitemmodel_types.QModelIndex): bool {.raises: [], gcsafe.}
type QTransposeProxyModelremoveColumnsProc* = proc(self: QTransposeProxyModel, column: cint, count: cint, parent: gen_qabstractitemmodel_types.QModelIndex): bool {.raises: [], gcsafe.}
type QTransposeProxyModelmoveColumnsProc* = proc(self: QTransposeProxyModel, sourceParent: gen_qabstractitemmodel_types.QModelIndex, sourceColumn: cint, count: cint, destinationParent: gen_qabstractitemmodel_types.QModelIndex, destinationChild: cint): bool {.raises: [], gcsafe.}
type QTransposeProxyModelsortProc* = proc(self: QTransposeProxyModel, column: cint, order: cint): void {.raises: [], gcsafe.}
type QTransposeProxyModelmapSelectionToSourceProc* = proc(self: QTransposeProxyModel, selection: gen_qitemselectionmodel_types.QItemSelection): gen_qitemselectionmodel_types.QItemSelection {.raises: [], gcsafe.}
type QTransposeProxyModelmapSelectionFromSourceProc* = proc(self: QTransposeProxyModel, selection: gen_qitemselectionmodel_types.QItemSelection): gen_qitemselectionmodel_types.QItemSelection {.raises: [], gcsafe.}
type QTransposeProxyModelsubmitProc* = proc(self: QTransposeProxyModel): bool {.raises: [], gcsafe.}
type QTransposeProxyModelrevertProc* = proc(self: QTransposeProxyModel): void {.raises: [], gcsafe.}
type QTransposeProxyModeldataProc* = proc(self: QTransposeProxyModel, proxyIndex: gen_qabstractitemmodel_types.QModelIndex, role: cint): gen_qvariant_types.QVariant {.raises: [], gcsafe.}
type QTransposeProxyModelflagsProc* = proc(self: QTransposeProxyModel, index: gen_qabstractitemmodel_types.QModelIndex): cint {.raises: [], gcsafe.}
type QTransposeProxyModelsetDataProc* = proc(self: QTransposeProxyModel, index: gen_qabstractitemmodel_types.QModelIndex, value: gen_qvariant_types.QVariant, role: cint): bool {.raises: [], gcsafe.}
type QTransposeProxyModelclearItemDataProc* = proc(self: QTransposeProxyModel, index: gen_qabstractitemmodel_types.QModelIndex): bool {.raises: [], gcsafe.}
type QTransposeProxyModelbuddyProc* = proc(self: QTransposeProxyModel, index: gen_qabstractitemmodel_types.QModelIndex): gen_qabstractitemmodel_types.QModelIndex {.raises: [], gcsafe.}
type QTransposeProxyModelcanFetchMoreProc* = proc(self: QTransposeProxyModel, parent: gen_qabstractitemmodel_types.QModelIndex): bool {.raises: [], gcsafe.}
type QTransposeProxyModelfetchMoreProc* = proc(self: QTransposeProxyModel, parent: gen_qabstractitemmodel_types.QModelIndex): void {.raises: [], gcsafe.}
type QTransposeProxyModelhasChildrenProc* = proc(self: QTransposeProxyModel, parent: gen_qabstractitemmodel_types.QModelIndex): bool {.raises: [], gcsafe.}
type QTransposeProxyModelsiblingProc* = proc(self: QTransposeProxyModel, row: cint, column: cint, idx: gen_qabstractitemmodel_types.QModelIndex): gen_qabstractitemmodel_types.QModelIndex {.raises: [], gcsafe.}
type QTransposeProxyModelmimeDataProc* = proc(self: QTransposeProxyModel, indexes: seq[gen_qabstractitemmodel_types.QModelIndex]): gen_qmimedata_types.QMimeData {.raises: [], gcsafe.}
type QTransposeProxyModelcanDropMimeDataProc* = proc(self: QTransposeProxyModel, data: gen_qmimedata_types.QMimeData, action: cint, row: cint, column: cint, parent: gen_qabstractitemmodel_types.QModelIndex): bool {.raises: [], gcsafe.}
type QTransposeProxyModeldropMimeDataProc* = proc(self: QTransposeProxyModel, data: gen_qmimedata_types.QMimeData, action: cint, row: cint, column: cint, parent: gen_qabstractitemmodel_types.QModelIndex): bool {.raises: [], gcsafe.}
type QTransposeProxyModelmimeTypesProc* = proc(self: QTransposeProxyModel): seq[string] {.raises: [], gcsafe.}
type QTransposeProxyModelsupportedDragActionsProc* = proc(self: QTransposeProxyModel): cint {.raises: [], gcsafe.}
type QTransposeProxyModelsupportedDropActionsProc* = proc(self: QTransposeProxyModel): cint {.raises: [], gcsafe.}
type QTransposeProxyModelroleNamesProc* = proc(self: QTransposeProxyModel): Table[cint,seq[byte]] {.raises: [], gcsafe.}
type QTransposeProxyModelmatchProc* = proc(self: QTransposeProxyModel, start: gen_qabstractitemmodel_types.QModelIndex, role: cint, value: gen_qvariant_types.QVariant, hits: cint, flags: cint): seq[gen_qabstractitemmodel_types.QModelIndex] {.raises: [], gcsafe.}
type QTransposeProxyModelmultiDataProc* = proc(self: QTransposeProxyModel, index: gen_qabstractitemmodel_types.QModelIndex, roleDataSpan: gen_qabstractitemmodel_types.QModelRoleDataSpan): void {.raises: [], gcsafe.}
type QTransposeProxyModelresetInternalDataProc* = proc(self: QTransposeProxyModel): void {.raises: [], gcsafe.}
type QTransposeProxyModeleventProc* = proc(self: QTransposeProxyModel, event: gen_qcoreevent_types.QEvent): bool {.raises: [], gcsafe.}
type QTransposeProxyModeleventFilterProc* = proc(self: QTransposeProxyModel, watched: gen_qobject_types.QObject, event: gen_qcoreevent_types.QEvent): bool {.raises: [], gcsafe.}
type QTransposeProxyModeltimerEventProc* = proc(self: QTransposeProxyModel, event: gen_qcoreevent_types.QTimerEvent): void {.raises: [], gcsafe.}
type QTransposeProxyModelchildEventProc* = proc(self: QTransposeProxyModel, event: gen_qcoreevent_types.QChildEvent): void {.raises: [], gcsafe.}
type QTransposeProxyModelcustomEventProc* = proc(self: QTransposeProxyModel, event: gen_qcoreevent_types.QEvent): void {.raises: [], gcsafe.}
type QTransposeProxyModelconnectNotifyProc* = proc(self: QTransposeProxyModel, signal: gen_qmetaobject_types.QMetaMethod): void {.raises: [], gcsafe.}
type QTransposeProxyModeldisconnectNotifyProc* = proc(self: QTransposeProxyModel, signal: gen_qmetaobject_types.QMetaMethod): void {.raises: [], gcsafe.}
type QTransposeProxyModelVTable* = object
  vtbl: cQTransposeProxyModelVTable
  metaObject*: QTransposeProxyModelmetaObjectProc
  metacast*: QTransposeProxyModelmetacastProc
  metacall*: QTransposeProxyModelmetacallProc
  setSourceModel*: QTransposeProxyModelsetSourceModelProc
  rowCount*: QTransposeProxyModelrowCountProc
  columnCount*: QTransposeProxyModelcolumnCountProc
  headerData*: QTransposeProxyModelheaderDataProc
  setHeaderData*: QTransposeProxyModelsetHeaderDataProc
  setItemData*: QTransposeProxyModelsetItemDataProc
  span*: QTransposeProxyModelspanProc
  itemData*: QTransposeProxyModelitemDataProc
  mapFromSource*: QTransposeProxyModelmapFromSourceProc
  mapToSource*: QTransposeProxyModelmapToSourceProc
  parent*: QTransposeProxyModelparentProc
  index*: QTransposeProxyModelindexProc
  insertRows*: QTransposeProxyModelinsertRowsProc
  removeRows*: QTransposeProxyModelremoveRowsProc
  moveRows*: QTransposeProxyModelmoveRowsProc
  insertColumns*: QTransposeProxyModelinsertColumnsProc
  removeColumns*: QTransposeProxyModelremoveColumnsProc
  moveColumns*: QTransposeProxyModelmoveColumnsProc
  sort*: QTransposeProxyModelsortProc
  mapSelectionToSource*: QTransposeProxyModelmapSelectionToSourceProc
  mapSelectionFromSource*: QTransposeProxyModelmapSelectionFromSourceProc
  submit*: QTransposeProxyModelsubmitProc
  revert*: QTransposeProxyModelrevertProc
  data*: QTransposeProxyModeldataProc
  flags*: QTransposeProxyModelflagsProc
  setData*: QTransposeProxyModelsetDataProc
  clearItemData*: QTransposeProxyModelclearItemDataProc
  buddy*: QTransposeProxyModelbuddyProc
  canFetchMore*: QTransposeProxyModelcanFetchMoreProc
  fetchMore*: QTransposeProxyModelfetchMoreProc
  hasChildren*: QTransposeProxyModelhasChildrenProc
  sibling*: QTransposeProxyModelsiblingProc
  mimeData*: QTransposeProxyModelmimeDataProc
  canDropMimeData*: QTransposeProxyModelcanDropMimeDataProc
  dropMimeData*: QTransposeProxyModeldropMimeDataProc
  mimeTypes*: QTransposeProxyModelmimeTypesProc
  supportedDragActions*: QTransposeProxyModelsupportedDragActionsProc
  supportedDropActions*: QTransposeProxyModelsupportedDropActionsProc
  roleNames*: QTransposeProxyModelroleNamesProc
  match*: QTransposeProxyModelmatchProc
  multiData*: QTransposeProxyModelmultiDataProc
  resetInternalData*: QTransposeProxyModelresetInternalDataProc
  event*: QTransposeProxyModeleventProc
  eventFilter*: QTransposeProxyModeleventFilterProc
  timerEvent*: QTransposeProxyModeltimerEventProc
  childEvent*: QTransposeProxyModelchildEventProc
  customEvent*: QTransposeProxyModelcustomEventProc
  connectNotify*: QTransposeProxyModelconnectNotifyProc
  disconnectNotify*: QTransposeProxyModeldisconnectNotifyProc
proc QTransposeProxyModelmetaObject*(self: gen_qtransposeproxymodel_types.QTransposeProxyModel, ): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQTransposeProxyModel_virtualbase_metaObject(self.h))

proc miqt_exec_callback_cQTransposeProxyModel_metaObject(vtbl: pointer, self: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QTransposeProxyModelVTable](vtbl)
  let self = QTransposeProxyModel(h: self)
  var virtualReturn = vtbl[].metaObject(self)
  virtualReturn.h

proc QTransposeProxyModelmetacast*(self: gen_qtransposeproxymodel_types.QTransposeProxyModel, param1: cstring): pointer =
  fcQTransposeProxyModel_virtualbase_metacast(self.h, param1)

proc miqt_exec_callback_cQTransposeProxyModel_metacast(vtbl: pointer, self: pointer, param1: cstring): pointer {.cdecl.} =
  let vtbl = cast[ptr QTransposeProxyModelVTable](vtbl)
  let self = QTransposeProxyModel(h: self)
  let slotval1 = (param1)
  var virtualReturn = vtbl[].metacast(self, slotval1)
  virtualReturn

proc QTransposeProxyModelmetacall*(self: gen_qtransposeproxymodel_types.QTransposeProxyModel, param1: cint, param2: cint, param3: pointer): cint =
  fcQTransposeProxyModel_virtualbase_metacall(self.h, cint(param1), param2, param3)

proc miqt_exec_callback_cQTransposeProxyModel_metacall(vtbl: pointer, self: pointer, param1: cint, param2: cint, param3: pointer): cint {.cdecl.} =
  let vtbl = cast[ptr QTransposeProxyModelVTable](vtbl)
  let self = QTransposeProxyModel(h: self)
  let slotval1 = cint(param1)
  let slotval2 = param2
  let slotval3 = param3
  var virtualReturn = vtbl[].metacall(self, slotval1, slotval2, slotval3)
  virtualReturn

proc QTransposeProxyModelsetSourceModel*(self: gen_qtransposeproxymodel_types.QTransposeProxyModel, newSourceModel: gen_qabstractitemmodel_types.QAbstractItemModel): void =
  fcQTransposeProxyModel_virtualbase_setSourceModel(self.h, newSourceModel.h)

proc miqt_exec_callback_cQTransposeProxyModel_setSourceModel(vtbl: pointer, self: pointer, newSourceModel: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QTransposeProxyModelVTable](vtbl)
  let self = QTransposeProxyModel(h: self)
  let slotval1 = gen_qabstractitemmodel_types.QAbstractItemModel(h: newSourceModel)
  vtbl[].setSourceModel(self, slotval1)

proc QTransposeProxyModelrowCount*(self: gen_qtransposeproxymodel_types.QTransposeProxyModel, parent: gen_qabstractitemmodel_types.QModelIndex): cint =
  fcQTransposeProxyModel_virtualbase_rowCount(self.h, parent.h)

proc miqt_exec_callback_cQTransposeProxyModel_rowCount(vtbl: pointer, self: pointer, parent: pointer): cint {.cdecl.} =
  let vtbl = cast[ptr QTransposeProxyModelVTable](vtbl)
  let self = QTransposeProxyModel(h: self)
  let slotval1 = gen_qabstractitemmodel_types.QModelIndex(h: parent)
  var virtualReturn = vtbl[].rowCount(self, slotval1)
  virtualReturn

proc QTransposeProxyModelcolumnCount*(self: gen_qtransposeproxymodel_types.QTransposeProxyModel, parent: gen_qabstractitemmodel_types.QModelIndex): cint =
  fcQTransposeProxyModel_virtualbase_columnCount(self.h, parent.h)

proc miqt_exec_callback_cQTransposeProxyModel_columnCount(vtbl: pointer, self: pointer, parent: pointer): cint {.cdecl.} =
  let vtbl = cast[ptr QTransposeProxyModelVTable](vtbl)
  let self = QTransposeProxyModel(h: self)
  let slotval1 = gen_qabstractitemmodel_types.QModelIndex(h: parent)
  var virtualReturn = vtbl[].columnCount(self, slotval1)
  virtualReturn

proc QTransposeProxyModelheaderData*(self: gen_qtransposeproxymodel_types.QTransposeProxyModel, section: cint, orientation: cint, role: cint): gen_qvariant_types.QVariant =
  gen_qvariant_types.QVariant(h: fcQTransposeProxyModel_virtualbase_headerData(self.h, section, cint(orientation), role))

proc miqt_exec_callback_cQTransposeProxyModel_headerData(vtbl: pointer, self: pointer, section: cint, orientation: cint, role: cint): pointer {.cdecl.} =
  let vtbl = cast[ptr QTransposeProxyModelVTable](vtbl)
  let self = QTransposeProxyModel(h: self)
  let slotval1 = section
  let slotval2 = cint(orientation)
  let slotval3 = role
  var virtualReturn = vtbl[].headerData(self, slotval1, slotval2, slotval3)
  virtualReturn.h

proc QTransposeProxyModelsetHeaderData*(self: gen_qtransposeproxymodel_types.QTransposeProxyModel, section: cint, orientation: cint, value: gen_qvariant_types.QVariant, role: cint): bool =
  fcQTransposeProxyModel_virtualbase_setHeaderData(self.h, section, cint(orientation), value.h, role)

proc miqt_exec_callback_cQTransposeProxyModel_setHeaderData(vtbl: pointer, self: pointer, section: cint, orientation: cint, value: pointer, role: cint): bool {.cdecl.} =
  let vtbl = cast[ptr QTransposeProxyModelVTable](vtbl)
  let self = QTransposeProxyModel(h: self)
  let slotval1 = section
  let slotval2 = cint(orientation)
  let slotval3 = gen_qvariant_types.QVariant(h: value)
  let slotval4 = role
  var virtualReturn = vtbl[].setHeaderData(self, slotval1, slotval2, slotval3, slotval4)
  virtualReturn

proc QTransposeProxyModelsetItemData*(self: gen_qtransposeproxymodel_types.QTransposeProxyModel, index: gen_qabstractitemmodel_types.QModelIndex, roles: Table[cint,gen_qvariant_types.QVariant]): bool =
  var roles_Keys_CArray = newSeq[cint](len(roles))
  var roles_Values_CArray = newSeq[pointer](len(roles))
  var roles_ctr = 0
  for rolesk, rolesv in roles:
    roles_Keys_CArray[roles_ctr] = roles_k
    roles_Values_CArray[roles_ctr] = roles_v.h
    roles_ctr += 1

  fcQTransposeProxyModel_virtualbase_setItemData(self.h, index.h, struct_miqt_map(len: csize_t(len(roles)),keys: if len(roles) == 0: nil else: addr(roles_Keys_CArray[0]), values: if len(roles) == 0: nil else: addr(roles_Values_CArray[0]),))

proc miqt_exec_callback_cQTransposeProxyModel_setItemData(vtbl: pointer, self: pointer, index: pointer, roles: struct_miqt_map): bool {.cdecl.} =
  let vtbl = cast[ptr QTransposeProxyModelVTable](vtbl)
  let self = QTransposeProxyModel(h: self)
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
  var virtualReturn = vtbl[].setItemData(self, slotval1, slotval2)
  virtualReturn

proc QTransposeProxyModelspan*(self: gen_qtransposeproxymodel_types.QTransposeProxyModel, index: gen_qabstractitemmodel_types.QModelIndex): gen_qsize_types.QSize =
  gen_qsize_types.QSize(h: fcQTransposeProxyModel_virtualbase_span(self.h, index.h))

proc miqt_exec_callback_cQTransposeProxyModel_span(vtbl: pointer, self: pointer, index: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QTransposeProxyModelVTable](vtbl)
  let self = QTransposeProxyModel(h: self)
  let slotval1 = gen_qabstractitemmodel_types.QModelIndex(h: index)
  var virtualReturn = vtbl[].span(self, slotval1)
  virtualReturn.h

proc QTransposeProxyModelitemData*(self: gen_qtransposeproxymodel_types.QTransposeProxyModel, index: gen_qabstractitemmodel_types.QModelIndex): Table[cint,gen_qvariant_types.QVariant] =
  var v_mm = fcQTransposeProxyModel_virtualbase_itemData(self.h, index.h)
  var vx_ret: Table[cint, gen_qvariant_types.QVariant]
  var v_Keys = cast[ptr UncheckedArray[cint]](v_mm.keys)
  var v_Values = cast[ptr UncheckedArray[pointer]](v_mm.values)
  for i in 0..<v_mm.len:
    var v_entry_Key = v_Keys[i]

    var v_entry_Value = gen_qvariant_types.QVariant(h: v_Values[i])

    vx_ret[v_entry_Key] = v_entry_Value
  vx_ret

proc miqt_exec_callback_cQTransposeProxyModel_itemData(vtbl: pointer, self: pointer, index: pointer): struct_miqt_map {.cdecl.} =
  let vtbl = cast[ptr QTransposeProxyModelVTable](vtbl)
  let self = QTransposeProxyModel(h: self)
  let slotval1 = gen_qabstractitemmodel_types.QModelIndex(h: index)
  var virtualReturn = vtbl[].itemData(self, slotval1)
  var virtualReturn_Keys_CArray = newSeq[cint](len(virtualReturn))
  var virtualReturn_Values_CArray = newSeq[pointer](len(virtualReturn))
  var virtualReturn_ctr = 0
  for virtualReturnk, virtualReturnv in virtualReturn:
    virtualReturn_Keys_CArray[virtualReturn_ctr] = virtualReturn_k
    virtualReturn_Values_CArray[virtualReturn_ctr] = virtualReturn_v.h
    virtualReturn_ctr += 1

  struct_miqt_map(len: csize_t(len(virtualReturn)),keys: if len(virtualReturn) == 0: nil else: addr(virtualReturn_Keys_CArray[0]), values: if len(virtualReturn) == 0: nil else: addr(virtualReturn_Values_CArray[0]),)

proc QTransposeProxyModelmapFromSource*(self: gen_qtransposeproxymodel_types.QTransposeProxyModel, sourceIndex: gen_qabstractitemmodel_types.QModelIndex): gen_qabstractitemmodel_types.QModelIndex =
  gen_qabstractitemmodel_types.QModelIndex(h: fcQTransposeProxyModel_virtualbase_mapFromSource(self.h, sourceIndex.h))

proc miqt_exec_callback_cQTransposeProxyModel_mapFromSource(vtbl: pointer, self: pointer, sourceIndex: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QTransposeProxyModelVTable](vtbl)
  let self = QTransposeProxyModel(h: self)
  let slotval1 = gen_qabstractitemmodel_types.QModelIndex(h: sourceIndex)
  var virtualReturn = vtbl[].mapFromSource(self, slotval1)
  virtualReturn.h

proc QTransposeProxyModelmapToSource*(self: gen_qtransposeproxymodel_types.QTransposeProxyModel, proxyIndex: gen_qabstractitemmodel_types.QModelIndex): gen_qabstractitemmodel_types.QModelIndex =
  gen_qabstractitemmodel_types.QModelIndex(h: fcQTransposeProxyModel_virtualbase_mapToSource(self.h, proxyIndex.h))

proc miqt_exec_callback_cQTransposeProxyModel_mapToSource(vtbl: pointer, self: pointer, proxyIndex: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QTransposeProxyModelVTable](vtbl)
  let self = QTransposeProxyModel(h: self)
  let slotval1 = gen_qabstractitemmodel_types.QModelIndex(h: proxyIndex)
  var virtualReturn = vtbl[].mapToSource(self, slotval1)
  virtualReturn.h

proc QTransposeProxyModelparent*(self: gen_qtransposeproxymodel_types.QTransposeProxyModel, index: gen_qabstractitemmodel_types.QModelIndex): gen_qabstractitemmodel_types.QModelIndex =
  gen_qabstractitemmodel_types.QModelIndex(h: fcQTransposeProxyModel_virtualbase_parent(self.h, index.h))

proc miqt_exec_callback_cQTransposeProxyModel_parent(vtbl: pointer, self: pointer, index: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QTransposeProxyModelVTable](vtbl)
  let self = QTransposeProxyModel(h: self)
  let slotval1 = gen_qabstractitemmodel_types.QModelIndex(h: index)
  var virtualReturn = vtbl[].parent(self, slotval1)
  virtualReturn.h

proc QTransposeProxyModelindex*(self: gen_qtransposeproxymodel_types.QTransposeProxyModel, row: cint, column: cint, parent: gen_qabstractitemmodel_types.QModelIndex): gen_qabstractitemmodel_types.QModelIndex =
  gen_qabstractitemmodel_types.QModelIndex(h: fcQTransposeProxyModel_virtualbase_index(self.h, row, column, parent.h))

proc miqt_exec_callback_cQTransposeProxyModel_index(vtbl: pointer, self: pointer, row: cint, column: cint, parent: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QTransposeProxyModelVTable](vtbl)
  let self = QTransposeProxyModel(h: self)
  let slotval1 = row
  let slotval2 = column
  let slotval3 = gen_qabstractitemmodel_types.QModelIndex(h: parent)
  var virtualReturn = vtbl[].index(self, slotval1, slotval2, slotval3)
  virtualReturn.h

proc QTransposeProxyModelinsertRows*(self: gen_qtransposeproxymodel_types.QTransposeProxyModel, row: cint, count: cint, parent: gen_qabstractitemmodel_types.QModelIndex): bool =
  fcQTransposeProxyModel_virtualbase_insertRows(self.h, row, count, parent.h)

proc miqt_exec_callback_cQTransposeProxyModel_insertRows(vtbl: pointer, self: pointer, row: cint, count: cint, parent: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QTransposeProxyModelVTable](vtbl)
  let self = QTransposeProxyModel(h: self)
  let slotval1 = row
  let slotval2 = count
  let slotval3 = gen_qabstractitemmodel_types.QModelIndex(h: parent)
  var virtualReturn = vtbl[].insertRows(self, slotval1, slotval2, slotval3)
  virtualReturn

proc QTransposeProxyModelremoveRows*(self: gen_qtransposeproxymodel_types.QTransposeProxyModel, row: cint, count: cint, parent: gen_qabstractitemmodel_types.QModelIndex): bool =
  fcQTransposeProxyModel_virtualbase_removeRows(self.h, row, count, parent.h)

proc miqt_exec_callback_cQTransposeProxyModel_removeRows(vtbl: pointer, self: pointer, row: cint, count: cint, parent: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QTransposeProxyModelVTable](vtbl)
  let self = QTransposeProxyModel(h: self)
  let slotval1 = row
  let slotval2 = count
  let slotval3 = gen_qabstractitemmodel_types.QModelIndex(h: parent)
  var virtualReturn = vtbl[].removeRows(self, slotval1, slotval2, slotval3)
  virtualReturn

proc QTransposeProxyModelmoveRows*(self: gen_qtransposeproxymodel_types.QTransposeProxyModel, sourceParent: gen_qabstractitemmodel_types.QModelIndex, sourceRow: cint, count: cint, destinationParent: gen_qabstractitemmodel_types.QModelIndex, destinationChild: cint): bool =
  fcQTransposeProxyModel_virtualbase_moveRows(self.h, sourceParent.h, sourceRow, count, destinationParent.h, destinationChild)

proc miqt_exec_callback_cQTransposeProxyModel_moveRows(vtbl: pointer, self: pointer, sourceParent: pointer, sourceRow: cint, count: cint, destinationParent: pointer, destinationChild: cint): bool {.cdecl.} =
  let vtbl = cast[ptr QTransposeProxyModelVTable](vtbl)
  let self = QTransposeProxyModel(h: self)
  let slotval1 = gen_qabstractitemmodel_types.QModelIndex(h: sourceParent)
  let slotval2 = sourceRow
  let slotval3 = count
  let slotval4 = gen_qabstractitemmodel_types.QModelIndex(h: destinationParent)
  let slotval5 = destinationChild
  var virtualReturn = vtbl[].moveRows(self, slotval1, slotval2, slotval3, slotval4, slotval5)
  virtualReturn

proc QTransposeProxyModelinsertColumns*(self: gen_qtransposeproxymodel_types.QTransposeProxyModel, column: cint, count: cint, parent: gen_qabstractitemmodel_types.QModelIndex): bool =
  fcQTransposeProxyModel_virtualbase_insertColumns(self.h, column, count, parent.h)

proc miqt_exec_callback_cQTransposeProxyModel_insertColumns(vtbl: pointer, self: pointer, column: cint, count: cint, parent: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QTransposeProxyModelVTable](vtbl)
  let self = QTransposeProxyModel(h: self)
  let slotval1 = column
  let slotval2 = count
  let slotval3 = gen_qabstractitemmodel_types.QModelIndex(h: parent)
  var virtualReturn = vtbl[].insertColumns(self, slotval1, slotval2, slotval3)
  virtualReturn

proc QTransposeProxyModelremoveColumns*(self: gen_qtransposeproxymodel_types.QTransposeProxyModel, column: cint, count: cint, parent: gen_qabstractitemmodel_types.QModelIndex): bool =
  fcQTransposeProxyModel_virtualbase_removeColumns(self.h, column, count, parent.h)

proc miqt_exec_callback_cQTransposeProxyModel_removeColumns(vtbl: pointer, self: pointer, column: cint, count: cint, parent: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QTransposeProxyModelVTable](vtbl)
  let self = QTransposeProxyModel(h: self)
  let slotval1 = column
  let slotval2 = count
  let slotval3 = gen_qabstractitemmodel_types.QModelIndex(h: parent)
  var virtualReturn = vtbl[].removeColumns(self, slotval1, slotval2, slotval3)
  virtualReturn

proc QTransposeProxyModelmoveColumns*(self: gen_qtransposeproxymodel_types.QTransposeProxyModel, sourceParent: gen_qabstractitemmodel_types.QModelIndex, sourceColumn: cint, count: cint, destinationParent: gen_qabstractitemmodel_types.QModelIndex, destinationChild: cint): bool =
  fcQTransposeProxyModel_virtualbase_moveColumns(self.h, sourceParent.h, sourceColumn, count, destinationParent.h, destinationChild)

proc miqt_exec_callback_cQTransposeProxyModel_moveColumns(vtbl: pointer, self: pointer, sourceParent: pointer, sourceColumn: cint, count: cint, destinationParent: pointer, destinationChild: cint): bool {.cdecl.} =
  let vtbl = cast[ptr QTransposeProxyModelVTable](vtbl)
  let self = QTransposeProxyModel(h: self)
  let slotval1 = gen_qabstractitemmodel_types.QModelIndex(h: sourceParent)
  let slotval2 = sourceColumn
  let slotval3 = count
  let slotval4 = gen_qabstractitemmodel_types.QModelIndex(h: destinationParent)
  let slotval5 = destinationChild
  var virtualReturn = vtbl[].moveColumns(self, slotval1, slotval2, slotval3, slotval4, slotval5)
  virtualReturn

proc QTransposeProxyModelsort*(self: gen_qtransposeproxymodel_types.QTransposeProxyModel, column: cint, order: cint): void =
  fcQTransposeProxyModel_virtualbase_sort(self.h, column, cint(order))

proc miqt_exec_callback_cQTransposeProxyModel_sort(vtbl: pointer, self: pointer, column: cint, order: cint): void {.cdecl.} =
  let vtbl = cast[ptr QTransposeProxyModelVTable](vtbl)
  let self = QTransposeProxyModel(h: self)
  let slotval1 = column
  let slotval2 = cint(order)
  vtbl[].sort(self, slotval1, slotval2)

proc QTransposeProxyModelmapSelectionToSource*(self: gen_qtransposeproxymodel_types.QTransposeProxyModel, selection: gen_qitemselectionmodel_types.QItemSelection): gen_qitemselectionmodel_types.QItemSelection =
  gen_qitemselectionmodel_types.QItemSelection(h: fcQTransposeProxyModel_virtualbase_mapSelectionToSource(self.h, selection.h))

proc miqt_exec_callback_cQTransposeProxyModel_mapSelectionToSource(vtbl: pointer, self: pointer, selection: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QTransposeProxyModelVTable](vtbl)
  let self = QTransposeProxyModel(h: self)
  let slotval1 = gen_qitemselectionmodel_types.QItemSelection(h: selection)
  var virtualReturn = vtbl[].mapSelectionToSource(self, slotval1)
  virtualReturn.h

proc QTransposeProxyModelmapSelectionFromSource*(self: gen_qtransposeproxymodel_types.QTransposeProxyModel, selection: gen_qitemselectionmodel_types.QItemSelection): gen_qitemselectionmodel_types.QItemSelection =
  gen_qitemselectionmodel_types.QItemSelection(h: fcQTransposeProxyModel_virtualbase_mapSelectionFromSource(self.h, selection.h))

proc miqt_exec_callback_cQTransposeProxyModel_mapSelectionFromSource(vtbl: pointer, self: pointer, selection: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QTransposeProxyModelVTable](vtbl)
  let self = QTransposeProxyModel(h: self)
  let slotval1 = gen_qitemselectionmodel_types.QItemSelection(h: selection)
  var virtualReturn = vtbl[].mapSelectionFromSource(self, slotval1)
  virtualReturn.h

proc QTransposeProxyModelsubmit*(self: gen_qtransposeproxymodel_types.QTransposeProxyModel, ): bool =
  fcQTransposeProxyModel_virtualbase_submit(self.h)

proc miqt_exec_callback_cQTransposeProxyModel_submit(vtbl: pointer, self: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QTransposeProxyModelVTable](vtbl)
  let self = QTransposeProxyModel(h: self)
  var virtualReturn = vtbl[].submit(self)
  virtualReturn

proc QTransposeProxyModelrevert*(self: gen_qtransposeproxymodel_types.QTransposeProxyModel, ): void =
  fcQTransposeProxyModel_virtualbase_revert(self.h)

proc miqt_exec_callback_cQTransposeProxyModel_revert(vtbl: pointer, self: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QTransposeProxyModelVTable](vtbl)
  let self = QTransposeProxyModel(h: self)
  vtbl[].revert(self)

proc QTransposeProxyModeldata*(self: gen_qtransposeproxymodel_types.QTransposeProxyModel, proxyIndex: gen_qabstractitemmodel_types.QModelIndex, role: cint): gen_qvariant_types.QVariant =
  gen_qvariant_types.QVariant(h: fcQTransposeProxyModel_virtualbase_data(self.h, proxyIndex.h, role))

proc miqt_exec_callback_cQTransposeProxyModel_data(vtbl: pointer, self: pointer, proxyIndex: pointer, role: cint): pointer {.cdecl.} =
  let vtbl = cast[ptr QTransposeProxyModelVTable](vtbl)
  let self = QTransposeProxyModel(h: self)
  let slotval1 = gen_qabstractitemmodel_types.QModelIndex(h: proxyIndex)
  let slotval2 = role
  var virtualReturn = vtbl[].data(self, slotval1, slotval2)
  virtualReturn.h

proc QTransposeProxyModelflags*(self: gen_qtransposeproxymodel_types.QTransposeProxyModel, index: gen_qabstractitemmodel_types.QModelIndex): cint =
  cint(fcQTransposeProxyModel_virtualbase_flags(self.h, index.h))

proc miqt_exec_callback_cQTransposeProxyModel_flags(vtbl: pointer, self: pointer, index: pointer): cint {.cdecl.} =
  let vtbl = cast[ptr QTransposeProxyModelVTable](vtbl)
  let self = QTransposeProxyModel(h: self)
  let slotval1 = gen_qabstractitemmodel_types.QModelIndex(h: index)
  var virtualReturn = vtbl[].flags(self, slotval1)
  cint(virtualReturn)

proc QTransposeProxyModelsetData*(self: gen_qtransposeproxymodel_types.QTransposeProxyModel, index: gen_qabstractitemmodel_types.QModelIndex, value: gen_qvariant_types.QVariant, role: cint): bool =
  fcQTransposeProxyModel_virtualbase_setData(self.h, index.h, value.h, role)

proc miqt_exec_callback_cQTransposeProxyModel_setData(vtbl: pointer, self: pointer, index: pointer, value: pointer, role: cint): bool {.cdecl.} =
  let vtbl = cast[ptr QTransposeProxyModelVTable](vtbl)
  let self = QTransposeProxyModel(h: self)
  let slotval1 = gen_qabstractitemmodel_types.QModelIndex(h: index)
  let slotval2 = gen_qvariant_types.QVariant(h: value)
  let slotval3 = role
  var virtualReturn = vtbl[].setData(self, slotval1, slotval2, slotval3)
  virtualReturn

proc QTransposeProxyModelclearItemData*(self: gen_qtransposeproxymodel_types.QTransposeProxyModel, index: gen_qabstractitemmodel_types.QModelIndex): bool =
  fcQTransposeProxyModel_virtualbase_clearItemData(self.h, index.h)

proc miqt_exec_callback_cQTransposeProxyModel_clearItemData(vtbl: pointer, self: pointer, index: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QTransposeProxyModelVTable](vtbl)
  let self = QTransposeProxyModel(h: self)
  let slotval1 = gen_qabstractitemmodel_types.QModelIndex(h: index)
  var virtualReturn = vtbl[].clearItemData(self, slotval1)
  virtualReturn

proc QTransposeProxyModelbuddy*(self: gen_qtransposeproxymodel_types.QTransposeProxyModel, index: gen_qabstractitemmodel_types.QModelIndex): gen_qabstractitemmodel_types.QModelIndex =
  gen_qabstractitemmodel_types.QModelIndex(h: fcQTransposeProxyModel_virtualbase_buddy(self.h, index.h))

proc miqt_exec_callback_cQTransposeProxyModel_buddy(vtbl: pointer, self: pointer, index: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QTransposeProxyModelVTable](vtbl)
  let self = QTransposeProxyModel(h: self)
  let slotval1 = gen_qabstractitemmodel_types.QModelIndex(h: index)
  var virtualReturn = vtbl[].buddy(self, slotval1)
  virtualReturn.h

proc QTransposeProxyModelcanFetchMore*(self: gen_qtransposeproxymodel_types.QTransposeProxyModel, parent: gen_qabstractitemmodel_types.QModelIndex): bool =
  fcQTransposeProxyModel_virtualbase_canFetchMore(self.h, parent.h)

proc miqt_exec_callback_cQTransposeProxyModel_canFetchMore(vtbl: pointer, self: pointer, parent: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QTransposeProxyModelVTable](vtbl)
  let self = QTransposeProxyModel(h: self)
  let slotval1 = gen_qabstractitemmodel_types.QModelIndex(h: parent)
  var virtualReturn = vtbl[].canFetchMore(self, slotval1)
  virtualReturn

proc QTransposeProxyModelfetchMore*(self: gen_qtransposeproxymodel_types.QTransposeProxyModel, parent: gen_qabstractitemmodel_types.QModelIndex): void =
  fcQTransposeProxyModel_virtualbase_fetchMore(self.h, parent.h)

proc miqt_exec_callback_cQTransposeProxyModel_fetchMore(vtbl: pointer, self: pointer, parent: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QTransposeProxyModelVTable](vtbl)
  let self = QTransposeProxyModel(h: self)
  let slotval1 = gen_qabstractitemmodel_types.QModelIndex(h: parent)
  vtbl[].fetchMore(self, slotval1)

proc QTransposeProxyModelhasChildren*(self: gen_qtransposeproxymodel_types.QTransposeProxyModel, parent: gen_qabstractitemmodel_types.QModelIndex): bool =
  fcQTransposeProxyModel_virtualbase_hasChildren(self.h, parent.h)

proc miqt_exec_callback_cQTransposeProxyModel_hasChildren(vtbl: pointer, self: pointer, parent: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QTransposeProxyModelVTable](vtbl)
  let self = QTransposeProxyModel(h: self)
  let slotval1 = gen_qabstractitemmodel_types.QModelIndex(h: parent)
  var virtualReturn = vtbl[].hasChildren(self, slotval1)
  virtualReturn

proc QTransposeProxyModelsibling*(self: gen_qtransposeproxymodel_types.QTransposeProxyModel, row: cint, column: cint, idx: gen_qabstractitemmodel_types.QModelIndex): gen_qabstractitemmodel_types.QModelIndex =
  gen_qabstractitemmodel_types.QModelIndex(h: fcQTransposeProxyModel_virtualbase_sibling(self.h, row, column, idx.h))

proc miqt_exec_callback_cQTransposeProxyModel_sibling(vtbl: pointer, self: pointer, row: cint, column: cint, idx: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QTransposeProxyModelVTable](vtbl)
  let self = QTransposeProxyModel(h: self)
  let slotval1 = row
  let slotval2 = column
  let slotval3 = gen_qabstractitemmodel_types.QModelIndex(h: idx)
  var virtualReturn = vtbl[].sibling(self, slotval1, slotval2, slotval3)
  virtualReturn.h

proc QTransposeProxyModelmimeData*(self: gen_qtransposeproxymodel_types.QTransposeProxyModel, indexes: seq[gen_qabstractitemmodel_types.QModelIndex]): gen_qmimedata_types.QMimeData =
  var indexes_CArray = newSeq[pointer](len(indexes))
  for i in 0..<len(indexes):
    indexes_CArray[i] = indexes[i].h

  gen_qmimedata_types.QMimeData(h: fcQTransposeProxyModel_virtualbase_mimeData(self.h, struct_miqt_array(len: csize_t(len(indexes)), data: if len(indexes) == 0: nil else: addr(indexes_CArray[0]))))

proc miqt_exec_callback_cQTransposeProxyModel_mimeData(vtbl: pointer, self: pointer, indexes: struct_miqt_array): pointer {.cdecl.} =
  let vtbl = cast[ptr QTransposeProxyModelVTable](vtbl)
  let self = QTransposeProxyModel(h: self)
  var vindexes_ma = indexes
  var vindexesx_ret = newSeq[gen_qabstractitemmodel_types.QModelIndex](int(vindexes_ma.len))
  let vindexes_outCast = cast[ptr UncheckedArray[pointer]](vindexes_ma.data)
  for i in 0 ..< vindexes_ma.len:
    vindexesx_ret[i] = gen_qabstractitemmodel_types.QModelIndex(h: vindexes_outCast[i])
  let slotval1 = vindexesx_ret
  var virtualReturn = vtbl[].mimeData(self, slotval1)
  virtualReturn.h

proc QTransposeProxyModelcanDropMimeData*(self: gen_qtransposeproxymodel_types.QTransposeProxyModel, data: gen_qmimedata_types.QMimeData, action: cint, row: cint, column: cint, parent: gen_qabstractitemmodel_types.QModelIndex): bool =
  fcQTransposeProxyModel_virtualbase_canDropMimeData(self.h, data.h, cint(action), row, column, parent.h)

proc miqt_exec_callback_cQTransposeProxyModel_canDropMimeData(vtbl: pointer, self: pointer, data: pointer, action: cint, row: cint, column: cint, parent: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QTransposeProxyModelVTable](vtbl)
  let self = QTransposeProxyModel(h: self)
  let slotval1 = gen_qmimedata_types.QMimeData(h: data)
  let slotval2 = cint(action)
  let slotval3 = row
  let slotval4 = column
  let slotval5 = gen_qabstractitemmodel_types.QModelIndex(h: parent)
  var virtualReturn = vtbl[].canDropMimeData(self, slotval1, slotval2, slotval3, slotval4, slotval5)
  virtualReturn

proc QTransposeProxyModeldropMimeData*(self: gen_qtransposeproxymodel_types.QTransposeProxyModel, data: gen_qmimedata_types.QMimeData, action: cint, row: cint, column: cint, parent: gen_qabstractitemmodel_types.QModelIndex): bool =
  fcQTransposeProxyModel_virtualbase_dropMimeData(self.h, data.h, cint(action), row, column, parent.h)

proc miqt_exec_callback_cQTransposeProxyModel_dropMimeData(vtbl: pointer, self: pointer, data: pointer, action: cint, row: cint, column: cint, parent: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QTransposeProxyModelVTable](vtbl)
  let self = QTransposeProxyModel(h: self)
  let slotval1 = gen_qmimedata_types.QMimeData(h: data)
  let slotval2 = cint(action)
  let slotval3 = row
  let slotval4 = column
  let slotval5 = gen_qabstractitemmodel_types.QModelIndex(h: parent)
  var virtualReturn = vtbl[].dropMimeData(self, slotval1, slotval2, slotval3, slotval4, slotval5)
  virtualReturn

proc QTransposeProxyModelmimeTypes*(self: gen_qtransposeproxymodel_types.QTransposeProxyModel, ): seq[string] =
  var v_ma = fcQTransposeProxyModel_virtualbase_mimeTypes(self.h)
  var vx_ret = newSeq[string](int(v_ma.len))
  let v_outCast = cast[ptr UncheckedArray[struct_miqt_string]](v_ma.data)
  for i in 0 ..< v_ma.len:
    let vx_lv_ms = v_outCast[i]
    let vx_lvx_ret = string.fromBytes(toOpenArrayByte(vx_lv_ms.data, 0, int(vx_lv_ms.len)-1))
    c_free(vx_lv_ms.data)
    vx_ret[i] = vx_lvx_ret
  vx_ret

proc miqt_exec_callback_cQTransposeProxyModel_mimeTypes(vtbl: pointer, self: pointer): struct_miqt_array {.cdecl.} =
  let vtbl = cast[ptr QTransposeProxyModelVTable](vtbl)
  let self = QTransposeProxyModel(h: self)
  var virtualReturn = vtbl[].mimeTypes(self)
  var virtualReturn_CArray = newSeq[struct_miqt_string](len(virtualReturn))
  for i in 0..<len(virtualReturn):
    virtualReturn_CArray[i] = struct_miqt_string(data: virtualReturn[i], len: csize_t(len(virtualReturn[i])))

  struct_miqt_array(len: csize_t(len(virtualReturn)), data: if len(virtualReturn) == 0: nil else: addr(virtualReturn_CArray[0]))

proc QTransposeProxyModelsupportedDragActions*(self: gen_qtransposeproxymodel_types.QTransposeProxyModel, ): cint =
  cint(fcQTransposeProxyModel_virtualbase_supportedDragActions(self.h))

proc miqt_exec_callback_cQTransposeProxyModel_supportedDragActions(vtbl: pointer, self: pointer): cint {.cdecl.} =
  let vtbl = cast[ptr QTransposeProxyModelVTable](vtbl)
  let self = QTransposeProxyModel(h: self)
  var virtualReturn = vtbl[].supportedDragActions(self)
  cint(virtualReturn)

proc QTransposeProxyModelsupportedDropActions*(self: gen_qtransposeproxymodel_types.QTransposeProxyModel, ): cint =
  cint(fcQTransposeProxyModel_virtualbase_supportedDropActions(self.h))

proc miqt_exec_callback_cQTransposeProxyModel_supportedDropActions(vtbl: pointer, self: pointer): cint {.cdecl.} =
  let vtbl = cast[ptr QTransposeProxyModelVTable](vtbl)
  let self = QTransposeProxyModel(h: self)
  var virtualReturn = vtbl[].supportedDropActions(self)
  cint(virtualReturn)

proc QTransposeProxyModelroleNames*(self: gen_qtransposeproxymodel_types.QTransposeProxyModel, ): Table[cint,seq[byte]] =
  var v_mm = fcQTransposeProxyModel_virtualbase_roleNames(self.h)
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

proc miqt_exec_callback_cQTransposeProxyModel_roleNames(vtbl: pointer, self: pointer): struct_miqt_map {.cdecl.} =
  let vtbl = cast[ptr QTransposeProxyModelVTable](vtbl)
  let self = QTransposeProxyModel(h: self)
  var virtualReturn = vtbl[].roleNames(self)
  var virtualReturn_Keys_CArray = newSeq[cint](len(virtualReturn))
  var virtualReturn_Values_CArray = newSeq[struct_miqt_string](len(virtualReturn))
  var virtualReturn_ctr = 0
  for virtualReturnk, virtualReturnv in virtualReturn:
    virtualReturn_Keys_CArray[virtualReturn_ctr] = virtualReturn_k
    virtualReturn_Values_CArray[virtualReturn_ctr] = struct_miqt_string(data: cast[cstring](if len(virtualReturn_v) == 0: nil else: unsafeAddr virtualReturn_v[0]), len: csize_t(len(virtualReturn_v)))
    virtualReturn_ctr += 1

  struct_miqt_map(len: csize_t(len(virtualReturn)),keys: if len(virtualReturn) == 0: nil else: addr(virtualReturn_Keys_CArray[0]), values: if len(virtualReturn) == 0: nil else: addr(virtualReturn_Values_CArray[0]),)

proc QTransposeProxyModelmatch*(self: gen_qtransposeproxymodel_types.QTransposeProxyModel, start: gen_qabstractitemmodel_types.QModelIndex, role: cint, value: gen_qvariant_types.QVariant, hits: cint, flags: cint): seq[gen_qabstractitemmodel_types.QModelIndex] =
  var v_ma = fcQTransposeProxyModel_virtualbase_match(self.h, start.h, role, value.h, hits, cint(flags))
  var vx_ret = newSeq[gen_qabstractitemmodel_types.QModelIndex](int(v_ma.len))
  let v_outCast = cast[ptr UncheckedArray[pointer]](v_ma.data)
  for i in 0 ..< v_ma.len:
    vx_ret[i] = gen_qabstractitemmodel_types.QModelIndex(h: v_outCast[i])
  vx_ret

proc miqt_exec_callback_cQTransposeProxyModel_match(vtbl: pointer, self: pointer, start: pointer, role: cint, value: pointer, hits: cint, flags: cint): struct_miqt_array {.cdecl.} =
  let vtbl = cast[ptr QTransposeProxyModelVTable](vtbl)
  let self = QTransposeProxyModel(h: self)
  let slotval1 = gen_qabstractitemmodel_types.QModelIndex(h: start)
  let slotval2 = role
  let slotval3 = gen_qvariant_types.QVariant(h: value)
  let slotval4 = hits
  let slotval5 = cint(flags)
  var virtualReturn = vtbl[].match(self, slotval1, slotval2, slotval3, slotval4, slotval5)
  var virtualReturn_CArray = newSeq[pointer](len(virtualReturn))
  for i in 0..<len(virtualReturn):
    virtualReturn_CArray[i] = virtualReturn[i].h

  struct_miqt_array(len: csize_t(len(virtualReturn)), data: if len(virtualReturn) == 0: nil else: addr(virtualReturn_CArray[0]))

proc QTransposeProxyModelmultiData*(self: gen_qtransposeproxymodel_types.QTransposeProxyModel, index: gen_qabstractitemmodel_types.QModelIndex, roleDataSpan: gen_qabstractitemmodel_types.QModelRoleDataSpan): void =
  fcQTransposeProxyModel_virtualbase_multiData(self.h, index.h, roleDataSpan.h)

proc miqt_exec_callback_cQTransposeProxyModel_multiData(vtbl: pointer, self: pointer, index: pointer, roleDataSpan: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QTransposeProxyModelVTable](vtbl)
  let self = QTransposeProxyModel(h: self)
  let slotval1 = gen_qabstractitemmodel_types.QModelIndex(h: index)
  let slotval2 = gen_qabstractitemmodel_types.QModelRoleDataSpan(h: roleDataSpan)
  vtbl[].multiData(self, slotval1, slotval2)

proc QTransposeProxyModelresetInternalData*(self: gen_qtransposeproxymodel_types.QTransposeProxyModel, ): void =
  fcQTransposeProxyModel_virtualbase_resetInternalData(self.h)

proc miqt_exec_callback_cQTransposeProxyModel_resetInternalData(vtbl: pointer, self: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QTransposeProxyModelVTable](vtbl)
  let self = QTransposeProxyModel(h: self)
  vtbl[].resetInternalData(self)

proc QTransposeProxyModelevent*(self: gen_qtransposeproxymodel_types.QTransposeProxyModel, event: gen_qcoreevent_types.QEvent): bool =
  fcQTransposeProxyModel_virtualbase_event(self.h, event.h)

proc miqt_exec_callback_cQTransposeProxyModel_event(vtbl: pointer, self: pointer, event: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QTransposeProxyModelVTable](vtbl)
  let self = QTransposeProxyModel(h: self)
  let slotval1 = gen_qcoreevent_types.QEvent(h: event)
  var virtualReturn = vtbl[].event(self, slotval1)
  virtualReturn

proc QTransposeProxyModeleventFilter*(self: gen_qtransposeproxymodel_types.QTransposeProxyModel, watched: gen_qobject_types.QObject, event: gen_qcoreevent_types.QEvent): bool =
  fcQTransposeProxyModel_virtualbase_eventFilter(self.h, watched.h, event.h)

proc miqt_exec_callback_cQTransposeProxyModel_eventFilter(vtbl: pointer, self: pointer, watched: pointer, event: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QTransposeProxyModelVTable](vtbl)
  let self = QTransposeProxyModel(h: self)
  let slotval1 = gen_qobject_types.QObject(h: watched)
  let slotval2 = gen_qcoreevent_types.QEvent(h: event)
  var virtualReturn = vtbl[].eventFilter(self, slotval1, slotval2)
  virtualReturn

proc QTransposeProxyModeltimerEvent*(self: gen_qtransposeproxymodel_types.QTransposeProxyModel, event: gen_qcoreevent_types.QTimerEvent): void =
  fcQTransposeProxyModel_virtualbase_timerEvent(self.h, event.h)

proc miqt_exec_callback_cQTransposeProxyModel_timerEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QTransposeProxyModelVTable](vtbl)
  let self = QTransposeProxyModel(h: self)
  let slotval1 = gen_qcoreevent_types.QTimerEvent(h: event)
  vtbl[].timerEvent(self, slotval1)

proc QTransposeProxyModelchildEvent*(self: gen_qtransposeproxymodel_types.QTransposeProxyModel, event: gen_qcoreevent_types.QChildEvent): void =
  fcQTransposeProxyModel_virtualbase_childEvent(self.h, event.h)

proc miqt_exec_callback_cQTransposeProxyModel_childEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QTransposeProxyModelVTable](vtbl)
  let self = QTransposeProxyModel(h: self)
  let slotval1 = gen_qcoreevent_types.QChildEvent(h: event)
  vtbl[].childEvent(self, slotval1)

proc QTransposeProxyModelcustomEvent*(self: gen_qtransposeproxymodel_types.QTransposeProxyModel, event: gen_qcoreevent_types.QEvent): void =
  fcQTransposeProxyModel_virtualbase_customEvent(self.h, event.h)

proc miqt_exec_callback_cQTransposeProxyModel_customEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QTransposeProxyModelVTable](vtbl)
  let self = QTransposeProxyModel(h: self)
  let slotval1 = gen_qcoreevent_types.QEvent(h: event)
  vtbl[].customEvent(self, slotval1)

proc QTransposeProxyModelconnectNotify*(self: gen_qtransposeproxymodel_types.QTransposeProxyModel, signal: gen_qmetaobject_types.QMetaMethod): void =
  fcQTransposeProxyModel_virtualbase_connectNotify(self.h, signal.h)

proc miqt_exec_callback_cQTransposeProxyModel_connectNotify(vtbl: pointer, self: pointer, signal: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QTransposeProxyModelVTable](vtbl)
  let self = QTransposeProxyModel(h: self)
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal)
  vtbl[].connectNotify(self, slotval1)

proc QTransposeProxyModeldisconnectNotify*(self: gen_qtransposeproxymodel_types.QTransposeProxyModel, signal: gen_qmetaobject_types.QMetaMethod): void =
  fcQTransposeProxyModel_virtualbase_disconnectNotify(self.h, signal.h)

proc miqt_exec_callback_cQTransposeProxyModel_disconnectNotify(vtbl: pointer, self: pointer, signal: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QTransposeProxyModelVTable](vtbl)
  let self = QTransposeProxyModel(h: self)
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal)
  vtbl[].disconnectNotify(self, slotval1)

proc create*(T: type gen_qtransposeproxymodel_types.QTransposeProxyModel,
    vtbl: ref QTransposeProxyModelVTable = nil): gen_qtransposeproxymodel_types.QTransposeProxyModel =
  let vtbl = if vtbl == nil: new QTransposeProxyModelVTable else: vtbl
  GC_ref(vtbl)
  vtbl.vtbl.destructor = proc(vtbl: ptr cQTransposeProxyModelVTable, _: ptr cQTransposeProxyModel) {.cdecl.} =
    let vtbl = cast[ref QTransposeProxyModelVTable](vtbl)
    GC_unref(vtbl)
  if not isNil(vtbl.metaObject):
    vtbl[].vtbl.metaObject = miqt_exec_callback_cQTransposeProxyModel_metaObject
  if not isNil(vtbl.metacast):
    vtbl[].vtbl.metacast = miqt_exec_callback_cQTransposeProxyModel_metacast
  if not isNil(vtbl.metacall):
    vtbl[].vtbl.metacall = miqt_exec_callback_cQTransposeProxyModel_metacall
  if not isNil(vtbl.setSourceModel):
    vtbl[].vtbl.setSourceModel = miqt_exec_callback_cQTransposeProxyModel_setSourceModel
  if not isNil(vtbl.rowCount):
    vtbl[].vtbl.rowCount = miqt_exec_callback_cQTransposeProxyModel_rowCount
  if not isNil(vtbl.columnCount):
    vtbl[].vtbl.columnCount = miqt_exec_callback_cQTransposeProxyModel_columnCount
  if not isNil(vtbl.headerData):
    vtbl[].vtbl.headerData = miqt_exec_callback_cQTransposeProxyModel_headerData
  if not isNil(vtbl.setHeaderData):
    vtbl[].vtbl.setHeaderData = miqt_exec_callback_cQTransposeProxyModel_setHeaderData
  if not isNil(vtbl.setItemData):
    vtbl[].vtbl.setItemData = miqt_exec_callback_cQTransposeProxyModel_setItemData
  if not isNil(vtbl.span):
    vtbl[].vtbl.span = miqt_exec_callback_cQTransposeProxyModel_span
  if not isNil(vtbl.itemData):
    vtbl[].vtbl.itemData = miqt_exec_callback_cQTransposeProxyModel_itemData
  if not isNil(vtbl.mapFromSource):
    vtbl[].vtbl.mapFromSource = miqt_exec_callback_cQTransposeProxyModel_mapFromSource
  if not isNil(vtbl.mapToSource):
    vtbl[].vtbl.mapToSource = miqt_exec_callback_cQTransposeProxyModel_mapToSource
  if not isNil(vtbl.parent):
    vtbl[].vtbl.parent = miqt_exec_callback_cQTransposeProxyModel_parent
  if not isNil(vtbl.index):
    vtbl[].vtbl.index = miqt_exec_callback_cQTransposeProxyModel_index
  if not isNil(vtbl.insertRows):
    vtbl[].vtbl.insertRows = miqt_exec_callback_cQTransposeProxyModel_insertRows
  if not isNil(vtbl.removeRows):
    vtbl[].vtbl.removeRows = miqt_exec_callback_cQTransposeProxyModel_removeRows
  if not isNil(vtbl.moveRows):
    vtbl[].vtbl.moveRows = miqt_exec_callback_cQTransposeProxyModel_moveRows
  if not isNil(vtbl.insertColumns):
    vtbl[].vtbl.insertColumns = miqt_exec_callback_cQTransposeProxyModel_insertColumns
  if not isNil(vtbl.removeColumns):
    vtbl[].vtbl.removeColumns = miqt_exec_callback_cQTransposeProxyModel_removeColumns
  if not isNil(vtbl.moveColumns):
    vtbl[].vtbl.moveColumns = miqt_exec_callback_cQTransposeProxyModel_moveColumns
  if not isNil(vtbl.sort):
    vtbl[].vtbl.sort = miqt_exec_callback_cQTransposeProxyModel_sort
  if not isNil(vtbl.mapSelectionToSource):
    vtbl[].vtbl.mapSelectionToSource = miqt_exec_callback_cQTransposeProxyModel_mapSelectionToSource
  if not isNil(vtbl.mapSelectionFromSource):
    vtbl[].vtbl.mapSelectionFromSource = miqt_exec_callback_cQTransposeProxyModel_mapSelectionFromSource
  if not isNil(vtbl.submit):
    vtbl[].vtbl.submit = miqt_exec_callback_cQTransposeProxyModel_submit
  if not isNil(vtbl.revert):
    vtbl[].vtbl.revert = miqt_exec_callback_cQTransposeProxyModel_revert
  if not isNil(vtbl.data):
    vtbl[].vtbl.data = miqt_exec_callback_cQTransposeProxyModel_data
  if not isNil(vtbl.flags):
    vtbl[].vtbl.flags = miqt_exec_callback_cQTransposeProxyModel_flags
  if not isNil(vtbl.setData):
    vtbl[].vtbl.setData = miqt_exec_callback_cQTransposeProxyModel_setData
  if not isNil(vtbl.clearItemData):
    vtbl[].vtbl.clearItemData = miqt_exec_callback_cQTransposeProxyModel_clearItemData
  if not isNil(vtbl.buddy):
    vtbl[].vtbl.buddy = miqt_exec_callback_cQTransposeProxyModel_buddy
  if not isNil(vtbl.canFetchMore):
    vtbl[].vtbl.canFetchMore = miqt_exec_callback_cQTransposeProxyModel_canFetchMore
  if not isNil(vtbl.fetchMore):
    vtbl[].vtbl.fetchMore = miqt_exec_callback_cQTransposeProxyModel_fetchMore
  if not isNil(vtbl.hasChildren):
    vtbl[].vtbl.hasChildren = miqt_exec_callback_cQTransposeProxyModel_hasChildren
  if not isNil(vtbl.sibling):
    vtbl[].vtbl.sibling = miqt_exec_callback_cQTransposeProxyModel_sibling
  if not isNil(vtbl.mimeData):
    vtbl[].vtbl.mimeData = miqt_exec_callback_cQTransposeProxyModel_mimeData
  if not isNil(vtbl.canDropMimeData):
    vtbl[].vtbl.canDropMimeData = miqt_exec_callback_cQTransposeProxyModel_canDropMimeData
  if not isNil(vtbl.dropMimeData):
    vtbl[].vtbl.dropMimeData = miqt_exec_callback_cQTransposeProxyModel_dropMimeData
  if not isNil(vtbl.mimeTypes):
    vtbl[].vtbl.mimeTypes = miqt_exec_callback_cQTransposeProxyModel_mimeTypes
  if not isNil(vtbl.supportedDragActions):
    vtbl[].vtbl.supportedDragActions = miqt_exec_callback_cQTransposeProxyModel_supportedDragActions
  if not isNil(vtbl.supportedDropActions):
    vtbl[].vtbl.supportedDropActions = miqt_exec_callback_cQTransposeProxyModel_supportedDropActions
  if not isNil(vtbl.roleNames):
    vtbl[].vtbl.roleNames = miqt_exec_callback_cQTransposeProxyModel_roleNames
  if not isNil(vtbl.match):
    vtbl[].vtbl.match = miqt_exec_callback_cQTransposeProxyModel_match
  if not isNil(vtbl.multiData):
    vtbl[].vtbl.multiData = miqt_exec_callback_cQTransposeProxyModel_multiData
  if not isNil(vtbl.resetInternalData):
    vtbl[].vtbl.resetInternalData = miqt_exec_callback_cQTransposeProxyModel_resetInternalData
  if not isNil(vtbl.event):
    vtbl[].vtbl.event = miqt_exec_callback_cQTransposeProxyModel_event
  if not isNil(vtbl.eventFilter):
    vtbl[].vtbl.eventFilter = miqt_exec_callback_cQTransposeProxyModel_eventFilter
  if not isNil(vtbl.timerEvent):
    vtbl[].vtbl.timerEvent = miqt_exec_callback_cQTransposeProxyModel_timerEvent
  if not isNil(vtbl.childEvent):
    vtbl[].vtbl.childEvent = miqt_exec_callback_cQTransposeProxyModel_childEvent
  if not isNil(vtbl.customEvent):
    vtbl[].vtbl.customEvent = miqt_exec_callback_cQTransposeProxyModel_customEvent
  if not isNil(vtbl.connectNotify):
    vtbl[].vtbl.connectNotify = miqt_exec_callback_cQTransposeProxyModel_connectNotify
  if not isNil(vtbl.disconnectNotify):
    vtbl[].vtbl.disconnectNotify = miqt_exec_callback_cQTransposeProxyModel_disconnectNotify
  gen_qtransposeproxymodel_types.QTransposeProxyModel(h: fcQTransposeProxyModel_new(addr(vtbl[]), ))

proc create*(T: type gen_qtransposeproxymodel_types.QTransposeProxyModel,
    parent: gen_qobject_types.QObject,
    vtbl: ref QTransposeProxyModelVTable = nil): gen_qtransposeproxymodel_types.QTransposeProxyModel =
  let vtbl = if vtbl == nil: new QTransposeProxyModelVTable else: vtbl
  GC_ref(vtbl)
  vtbl.vtbl.destructor = proc(vtbl: ptr cQTransposeProxyModelVTable, _: ptr cQTransposeProxyModel) {.cdecl.} =
    let vtbl = cast[ref QTransposeProxyModelVTable](vtbl)
    GC_unref(vtbl)
  if not isNil(vtbl.metaObject):
    vtbl[].vtbl.metaObject = miqt_exec_callback_cQTransposeProxyModel_metaObject
  if not isNil(vtbl.metacast):
    vtbl[].vtbl.metacast = miqt_exec_callback_cQTransposeProxyModel_metacast
  if not isNil(vtbl.metacall):
    vtbl[].vtbl.metacall = miqt_exec_callback_cQTransposeProxyModel_metacall
  if not isNil(vtbl.setSourceModel):
    vtbl[].vtbl.setSourceModel = miqt_exec_callback_cQTransposeProxyModel_setSourceModel
  if not isNil(vtbl.rowCount):
    vtbl[].vtbl.rowCount = miqt_exec_callback_cQTransposeProxyModel_rowCount
  if not isNil(vtbl.columnCount):
    vtbl[].vtbl.columnCount = miqt_exec_callback_cQTransposeProxyModel_columnCount
  if not isNil(vtbl.headerData):
    vtbl[].vtbl.headerData = miqt_exec_callback_cQTransposeProxyModel_headerData
  if not isNil(vtbl.setHeaderData):
    vtbl[].vtbl.setHeaderData = miqt_exec_callback_cQTransposeProxyModel_setHeaderData
  if not isNil(vtbl.setItemData):
    vtbl[].vtbl.setItemData = miqt_exec_callback_cQTransposeProxyModel_setItemData
  if not isNil(vtbl.span):
    vtbl[].vtbl.span = miqt_exec_callback_cQTransposeProxyModel_span
  if not isNil(vtbl.itemData):
    vtbl[].vtbl.itemData = miqt_exec_callback_cQTransposeProxyModel_itemData
  if not isNil(vtbl.mapFromSource):
    vtbl[].vtbl.mapFromSource = miqt_exec_callback_cQTransposeProxyModel_mapFromSource
  if not isNil(vtbl.mapToSource):
    vtbl[].vtbl.mapToSource = miqt_exec_callback_cQTransposeProxyModel_mapToSource
  if not isNil(vtbl.parent):
    vtbl[].vtbl.parent = miqt_exec_callback_cQTransposeProxyModel_parent
  if not isNil(vtbl.index):
    vtbl[].vtbl.index = miqt_exec_callback_cQTransposeProxyModel_index
  if not isNil(vtbl.insertRows):
    vtbl[].vtbl.insertRows = miqt_exec_callback_cQTransposeProxyModel_insertRows
  if not isNil(vtbl.removeRows):
    vtbl[].vtbl.removeRows = miqt_exec_callback_cQTransposeProxyModel_removeRows
  if not isNil(vtbl.moveRows):
    vtbl[].vtbl.moveRows = miqt_exec_callback_cQTransposeProxyModel_moveRows
  if not isNil(vtbl.insertColumns):
    vtbl[].vtbl.insertColumns = miqt_exec_callback_cQTransposeProxyModel_insertColumns
  if not isNil(vtbl.removeColumns):
    vtbl[].vtbl.removeColumns = miqt_exec_callback_cQTransposeProxyModel_removeColumns
  if not isNil(vtbl.moveColumns):
    vtbl[].vtbl.moveColumns = miqt_exec_callback_cQTransposeProxyModel_moveColumns
  if not isNil(vtbl.sort):
    vtbl[].vtbl.sort = miqt_exec_callback_cQTransposeProxyModel_sort
  if not isNil(vtbl.mapSelectionToSource):
    vtbl[].vtbl.mapSelectionToSource = miqt_exec_callback_cQTransposeProxyModel_mapSelectionToSource
  if not isNil(vtbl.mapSelectionFromSource):
    vtbl[].vtbl.mapSelectionFromSource = miqt_exec_callback_cQTransposeProxyModel_mapSelectionFromSource
  if not isNil(vtbl.submit):
    vtbl[].vtbl.submit = miqt_exec_callback_cQTransposeProxyModel_submit
  if not isNil(vtbl.revert):
    vtbl[].vtbl.revert = miqt_exec_callback_cQTransposeProxyModel_revert
  if not isNil(vtbl.data):
    vtbl[].vtbl.data = miqt_exec_callback_cQTransposeProxyModel_data
  if not isNil(vtbl.flags):
    vtbl[].vtbl.flags = miqt_exec_callback_cQTransposeProxyModel_flags
  if not isNil(vtbl.setData):
    vtbl[].vtbl.setData = miqt_exec_callback_cQTransposeProxyModel_setData
  if not isNil(vtbl.clearItemData):
    vtbl[].vtbl.clearItemData = miqt_exec_callback_cQTransposeProxyModel_clearItemData
  if not isNil(vtbl.buddy):
    vtbl[].vtbl.buddy = miqt_exec_callback_cQTransposeProxyModel_buddy
  if not isNil(vtbl.canFetchMore):
    vtbl[].vtbl.canFetchMore = miqt_exec_callback_cQTransposeProxyModel_canFetchMore
  if not isNil(vtbl.fetchMore):
    vtbl[].vtbl.fetchMore = miqt_exec_callback_cQTransposeProxyModel_fetchMore
  if not isNil(vtbl.hasChildren):
    vtbl[].vtbl.hasChildren = miqt_exec_callback_cQTransposeProxyModel_hasChildren
  if not isNil(vtbl.sibling):
    vtbl[].vtbl.sibling = miqt_exec_callback_cQTransposeProxyModel_sibling
  if not isNil(vtbl.mimeData):
    vtbl[].vtbl.mimeData = miqt_exec_callback_cQTransposeProxyModel_mimeData
  if not isNil(vtbl.canDropMimeData):
    vtbl[].vtbl.canDropMimeData = miqt_exec_callback_cQTransposeProxyModel_canDropMimeData
  if not isNil(vtbl.dropMimeData):
    vtbl[].vtbl.dropMimeData = miqt_exec_callback_cQTransposeProxyModel_dropMimeData
  if not isNil(vtbl.mimeTypes):
    vtbl[].vtbl.mimeTypes = miqt_exec_callback_cQTransposeProxyModel_mimeTypes
  if not isNil(vtbl.supportedDragActions):
    vtbl[].vtbl.supportedDragActions = miqt_exec_callback_cQTransposeProxyModel_supportedDragActions
  if not isNil(vtbl.supportedDropActions):
    vtbl[].vtbl.supportedDropActions = miqt_exec_callback_cQTransposeProxyModel_supportedDropActions
  if not isNil(vtbl.roleNames):
    vtbl[].vtbl.roleNames = miqt_exec_callback_cQTransposeProxyModel_roleNames
  if not isNil(vtbl.match):
    vtbl[].vtbl.match = miqt_exec_callback_cQTransposeProxyModel_match
  if not isNil(vtbl.multiData):
    vtbl[].vtbl.multiData = miqt_exec_callback_cQTransposeProxyModel_multiData
  if not isNil(vtbl.resetInternalData):
    vtbl[].vtbl.resetInternalData = miqt_exec_callback_cQTransposeProxyModel_resetInternalData
  if not isNil(vtbl.event):
    vtbl[].vtbl.event = miqt_exec_callback_cQTransposeProxyModel_event
  if not isNil(vtbl.eventFilter):
    vtbl[].vtbl.eventFilter = miqt_exec_callback_cQTransposeProxyModel_eventFilter
  if not isNil(vtbl.timerEvent):
    vtbl[].vtbl.timerEvent = miqt_exec_callback_cQTransposeProxyModel_timerEvent
  if not isNil(vtbl.childEvent):
    vtbl[].vtbl.childEvent = miqt_exec_callback_cQTransposeProxyModel_childEvent
  if not isNil(vtbl.customEvent):
    vtbl[].vtbl.customEvent = miqt_exec_callback_cQTransposeProxyModel_customEvent
  if not isNil(vtbl.connectNotify):
    vtbl[].vtbl.connectNotify = miqt_exec_callback_cQTransposeProxyModel_connectNotify
  if not isNil(vtbl.disconnectNotify):
    vtbl[].vtbl.disconnectNotify = miqt_exec_callback_cQTransposeProxyModel_disconnectNotify
  gen_qtransposeproxymodel_types.QTransposeProxyModel(h: fcQTransposeProxyModel_new2(addr(vtbl[]), parent.h))

proc staticMetaObject*(_: type gen_qtransposeproxymodel_types.QTransposeProxyModel): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQTransposeProxyModel_staticMetaObject())
proc delete*(self: gen_qtransposeproxymodel_types.QTransposeProxyModel) =
  fcQTransposeProxyModel_delete(self.h)
