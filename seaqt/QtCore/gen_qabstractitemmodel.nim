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


type QAbstractItemModelLayoutChangeHintEnum* = distinct cint
template NoLayoutChangeHint*(_: type QAbstractItemModelLayoutChangeHintEnum): untyped = 0
template VerticalSortHint*(_: type QAbstractItemModelLayoutChangeHintEnum): untyped = 1
template HorizontalSortHint*(_: type QAbstractItemModelLayoutChangeHintEnum): untyped = 2


type QAbstractItemModelCheckIndexOptionEnum* = distinct cint
template NoOption*(_: type QAbstractItemModelCheckIndexOptionEnum): untyped = 0
template IndexIsValid*(_: type QAbstractItemModelCheckIndexOptionEnum): untyped = 1
template DoNotUseParent*(_: type QAbstractItemModelCheckIndexOptionEnum): untyped = 2
template ParentIsInvalid*(_: type QAbstractItemModelCheckIndexOptionEnum): untyped = 4


import ./gen_qabstractitemmodel_types
export gen_qabstractitemmodel_types

import
  ./gen_qcoreevent_types,
  ./gen_qdatastream_types,
  ./gen_qmetaobject_types,
  ./gen_qmimedata_types,
  ./gen_qobject,
  ./gen_qobjectdefs_types,
  ./gen_qsize_types,
  ./gen_qvariant_types,
  std/tables
export
  gen_qcoreevent_types,
  gen_qdatastream_types,
  gen_qmetaobject_types,
  gen_qmimedata_types,
  gen_qobject,
  gen_qobjectdefs_types,
  gen_qsize_types,
  gen_qvariant_types

type cQModelIndex*{.exportc: "QModelIndex", incompleteStruct.} = object
type cQPersistentModelIndex*{.exportc: "QPersistentModelIndex", incompleteStruct.} = object
type cQAbstractItemModel*{.exportc: "QAbstractItemModel", incompleteStruct.} = object
type cQAbstractTableModel*{.exportc: "QAbstractTableModel", incompleteStruct.} = object
type cQAbstractListModel*{.exportc: "QAbstractListModel", incompleteStruct.} = object

proc fcQModelIndex_row(self: pointer): cint {.importc: "QModelIndex_row".}
proc fcQModelIndex_column(self: pointer): cint {.importc: "QModelIndex_column".}
proc fcQModelIndex_internalId(self: pointer): uint {.importc: "QModelIndex_internalId".}
proc fcQModelIndex_internalPointer(self: pointer): pointer {.importc: "QModelIndex_internalPointer".}
proc fcQModelIndex_parent(self: pointer): pointer {.importc: "QModelIndex_parent".}
proc fcQModelIndex_sibling(self: pointer, row: cint, column: cint): pointer {.importc: "QModelIndex_sibling".}
proc fcQModelIndex_siblingAtColumn(self: pointer, column: cint): pointer {.importc: "QModelIndex_siblingAtColumn".}
proc fcQModelIndex_siblingAtRow(self: pointer, row: cint): pointer {.importc: "QModelIndex_siblingAtRow".}
proc fcQModelIndex_child(self: pointer, row: cint, column: cint): pointer {.importc: "QModelIndex_child".}
proc fcQModelIndex_data(self: pointer): pointer {.importc: "QModelIndex_data".}
proc fcQModelIndex_flags(self: pointer): cint {.importc: "QModelIndex_flags".}
proc fcQModelIndex_model(self: pointer): pointer {.importc: "QModelIndex_model".}
proc fcQModelIndex_isValid(self: pointer): bool {.importc: "QModelIndex_isValid".}
proc fcQModelIndex_operatorEqual(self: pointer, other: pointer): bool {.importc: "QModelIndex_operatorEqual".}
proc fcQModelIndex_operatorNotEqual(self: pointer, other: pointer): bool {.importc: "QModelIndex_operatorNotEqual".}
proc fcQModelIndex_operatorLesser(self: pointer, other: pointer): bool {.importc: "QModelIndex_operatorLesser".}
proc fcQModelIndex_data1(self: pointer, role: cint): pointer {.importc: "QModelIndex_data1".}
proc fcQModelIndex_new(): ptr cQModelIndex {.importc: "QModelIndex_new".}
proc fcQModelIndex_new2(param1: pointer): ptr cQModelIndex {.importc: "QModelIndex_new2".}
proc fcQPersistentModelIndex_operatorLesser(self: pointer, other: pointer): bool {.importc: "QPersistentModelIndex_operatorLesser".}
proc fcQPersistentModelIndex_operatorEqual(self: pointer, other: pointer): bool {.importc: "QPersistentModelIndex_operatorEqual".}
proc fcQPersistentModelIndex_operatorNotEqual(self: pointer, other: pointer): bool {.importc: "QPersistentModelIndex_operatorNotEqual".}
proc fcQPersistentModelIndex_operatorAssign(self: pointer, other: pointer): void {.importc: "QPersistentModelIndex_operatorAssign".}
proc fcQPersistentModelIndex_swap(self: pointer, other: pointer): void {.importc: "QPersistentModelIndex_swap".}
proc fcQPersistentModelIndex_operatorEqualWithOther(self: pointer, other: pointer): bool {.importc: "QPersistentModelIndex_operatorEqualWithOther".}
proc fcQPersistentModelIndex_operatorNotEqualWithOther(self: pointer, other: pointer): bool {.importc: "QPersistentModelIndex_operatorNotEqualWithOther".}
proc fcQPersistentModelIndex_operatorAssignWithOther(self: pointer, other: pointer): void {.importc: "QPersistentModelIndex_operatorAssignWithOther".}
proc fcQPersistentModelIndex_ToConstQModelIndexBitwiseAnd(self: pointer): pointer {.importc: "QPersistentModelIndex_ToConstQModelIndexBitwiseAnd".}
proc fcQPersistentModelIndex_row(self: pointer): cint {.importc: "QPersistentModelIndex_row".}
proc fcQPersistentModelIndex_column(self: pointer): cint {.importc: "QPersistentModelIndex_column".}
proc fcQPersistentModelIndex_internalPointer(self: pointer): pointer {.importc: "QPersistentModelIndex_internalPointer".}
proc fcQPersistentModelIndex_internalId(self: pointer): uint {.importc: "QPersistentModelIndex_internalId".}
proc fcQPersistentModelIndex_parent(self: pointer): pointer {.importc: "QPersistentModelIndex_parent".}
proc fcQPersistentModelIndex_sibling(self: pointer, row: cint, column: cint): pointer {.importc: "QPersistentModelIndex_sibling".}
proc fcQPersistentModelIndex_child(self: pointer, row: cint, column: cint): pointer {.importc: "QPersistentModelIndex_child".}
proc fcQPersistentModelIndex_data(self: pointer): pointer {.importc: "QPersistentModelIndex_data".}
proc fcQPersistentModelIndex_flags(self: pointer): cint {.importc: "QPersistentModelIndex_flags".}
proc fcQPersistentModelIndex_model(self: pointer): pointer {.importc: "QPersistentModelIndex_model".}
proc fcQPersistentModelIndex_isValid(self: pointer): bool {.importc: "QPersistentModelIndex_isValid".}
proc fcQPersistentModelIndex_data1(self: pointer, role: cint): pointer {.importc: "QPersistentModelIndex_data1".}
proc fcQPersistentModelIndex_new(): ptr cQPersistentModelIndex {.importc: "QPersistentModelIndex_new".}
proc fcQPersistentModelIndex_new2(index: pointer): ptr cQPersistentModelIndex {.importc: "QPersistentModelIndex_new2".}
proc fcQPersistentModelIndex_new3(other: pointer): ptr cQPersistentModelIndex {.importc: "QPersistentModelIndex_new3".}
proc fcQAbstractItemModel_metaObject(self: pointer): pointer {.importc: "QAbstractItemModel_metaObject".}
proc fcQAbstractItemModel_metacast(self: pointer, param1: cstring): pointer {.importc: "QAbstractItemModel_metacast".}
proc fcQAbstractItemModel_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.importc: "QAbstractItemModel_metacall".}
proc fcQAbstractItemModel_tr(s: cstring): struct_miqt_string {.importc: "QAbstractItemModel_tr".}
proc fcQAbstractItemModel_trUtf8(s: cstring): struct_miqt_string {.importc: "QAbstractItemModel_trUtf8".}
proc fcQAbstractItemModel_hasIndex(self: pointer, row: cint, column: cint): bool {.importc: "QAbstractItemModel_hasIndex".}
proc fcQAbstractItemModel_index(self: pointer, row: cint, column: cint, parent: pointer): pointer {.importc: "QAbstractItemModel_index".}
proc fcQAbstractItemModel_parent(self: pointer, child: pointer): pointer {.importc: "QAbstractItemModel_parent".}
proc fcQAbstractItemModel_sibling(self: pointer, row: cint, column: cint, idx: pointer): pointer {.importc: "QAbstractItemModel_sibling".}
proc fcQAbstractItemModel_rowCount(self: pointer, parent: pointer): cint {.importc: "QAbstractItemModel_rowCount".}
proc fcQAbstractItemModel_columnCount(self: pointer, parent: pointer): cint {.importc: "QAbstractItemModel_columnCount".}
proc fcQAbstractItemModel_hasChildren(self: pointer, parent: pointer): bool {.importc: "QAbstractItemModel_hasChildren".}
proc fcQAbstractItemModel_data(self: pointer, index: pointer, role: cint): pointer {.importc: "QAbstractItemModel_data".}
proc fcQAbstractItemModel_setData(self: pointer, index: pointer, value: pointer, role: cint): bool {.importc: "QAbstractItemModel_setData".}
proc fcQAbstractItemModel_headerData(self: pointer, section: cint, orientation: cint, role: cint): pointer {.importc: "QAbstractItemModel_headerData".}
proc fcQAbstractItemModel_setHeaderData(self: pointer, section: cint, orientation: cint, value: pointer, role: cint): bool {.importc: "QAbstractItemModel_setHeaderData".}
proc fcQAbstractItemModel_itemData(self: pointer, index: pointer): struct_miqt_map {.importc: "QAbstractItemModel_itemData".}
proc fcQAbstractItemModel_setItemData(self: pointer, index: pointer, roles: struct_miqt_map): bool {.importc: "QAbstractItemModel_setItemData".}
proc fcQAbstractItemModel_mimeTypes(self: pointer): struct_miqt_array {.importc: "QAbstractItemModel_mimeTypes".}
proc fcQAbstractItemModel_mimeData(self: pointer, indexes: struct_miqt_array): pointer {.importc: "QAbstractItemModel_mimeData".}
proc fcQAbstractItemModel_canDropMimeData(self: pointer, data: pointer, action: cint, row: cint, column: cint, parent: pointer): bool {.importc: "QAbstractItemModel_canDropMimeData".}
proc fcQAbstractItemModel_dropMimeData(self: pointer, data: pointer, action: cint, row: cint, column: cint, parent: pointer): bool {.importc: "QAbstractItemModel_dropMimeData".}
proc fcQAbstractItemModel_supportedDropActions(self: pointer): cint {.importc: "QAbstractItemModel_supportedDropActions".}
proc fcQAbstractItemModel_supportedDragActions(self: pointer): cint {.importc: "QAbstractItemModel_supportedDragActions".}
proc fcQAbstractItemModel_insertRows(self: pointer, row: cint, count: cint, parent: pointer): bool {.importc: "QAbstractItemModel_insertRows".}
proc fcQAbstractItemModel_insertColumns(self: pointer, column: cint, count: cint, parent: pointer): bool {.importc: "QAbstractItemModel_insertColumns".}
proc fcQAbstractItemModel_removeRows(self: pointer, row: cint, count: cint, parent: pointer): bool {.importc: "QAbstractItemModel_removeRows".}
proc fcQAbstractItemModel_removeColumns(self: pointer, column: cint, count: cint, parent: pointer): bool {.importc: "QAbstractItemModel_removeColumns".}
proc fcQAbstractItemModel_moveRows(self: pointer, sourceParent: pointer, sourceRow: cint, count: cint, destinationParent: pointer, destinationChild: cint): bool {.importc: "QAbstractItemModel_moveRows".}
proc fcQAbstractItemModel_moveColumns(self: pointer, sourceParent: pointer, sourceColumn: cint, count: cint, destinationParent: pointer, destinationChild: cint): bool {.importc: "QAbstractItemModel_moveColumns".}
proc fcQAbstractItemModel_insertRow(self: pointer, row: cint): bool {.importc: "QAbstractItemModel_insertRow".}
proc fcQAbstractItemModel_insertColumn(self: pointer, column: cint): bool {.importc: "QAbstractItemModel_insertColumn".}
proc fcQAbstractItemModel_removeRow(self: pointer, row: cint): bool {.importc: "QAbstractItemModel_removeRow".}
proc fcQAbstractItemModel_removeColumn(self: pointer, column: cint): bool {.importc: "QAbstractItemModel_removeColumn".}
proc fcQAbstractItemModel_moveRow(self: pointer, sourceParent: pointer, sourceRow: cint, destinationParent: pointer, destinationChild: cint): bool {.importc: "QAbstractItemModel_moveRow".}
proc fcQAbstractItemModel_moveColumn(self: pointer, sourceParent: pointer, sourceColumn: cint, destinationParent: pointer, destinationChild: cint): bool {.importc: "QAbstractItemModel_moveColumn".}
proc fcQAbstractItemModel_fetchMore(self: pointer, parent: pointer): void {.importc: "QAbstractItemModel_fetchMore".}
proc fcQAbstractItemModel_canFetchMore(self: pointer, parent: pointer): bool {.importc: "QAbstractItemModel_canFetchMore".}
proc fcQAbstractItemModel_flags(self: pointer, index: pointer): cint {.importc: "QAbstractItemModel_flags".}
proc fcQAbstractItemModel_sort(self: pointer, column: cint, order: cint): void {.importc: "QAbstractItemModel_sort".}
proc fcQAbstractItemModel_buddy(self: pointer, index: pointer): pointer {.importc: "QAbstractItemModel_buddy".}
proc fcQAbstractItemModel_match(self: pointer, start: pointer, role: cint, value: pointer, hits: cint, flags: cint): struct_miqt_array {.importc: "QAbstractItemModel_match".}
proc fcQAbstractItemModel_span(self: pointer, index: pointer): pointer {.importc: "QAbstractItemModel_span".}
proc fcQAbstractItemModel_roleNames(self: pointer): struct_miqt_map {.importc: "QAbstractItemModel_roleNames".}
proc fcQAbstractItemModel_checkIndex(self: pointer, index: pointer): bool {.importc: "QAbstractItemModel_checkIndex".}
proc fcQAbstractItemModel_dataChanged(self: pointer, topLeft: pointer, bottomRight: pointer): void {.importc: "QAbstractItemModel_dataChanged".}
proc fcQAbstractItemModel_connect_dataChanged(self: pointer, slot: int, callback: proc (slot: int, topLeft: pointer, bottomRight: pointer) {.cdecl.}, release: proc(slot: int) {.cdecl.}) {.importc: "QAbstractItemModel_connect_dataChanged".}
proc fcQAbstractItemModel_headerDataChanged(self: pointer, orientation: cint, first: cint, last: cint): void {.importc: "QAbstractItemModel_headerDataChanged".}
proc fcQAbstractItemModel_connect_headerDataChanged(self: pointer, slot: int, callback: proc (slot: int, orientation: cint, first: cint, last: cint) {.cdecl.}, release: proc(slot: int) {.cdecl.}) {.importc: "QAbstractItemModel_connect_headerDataChanged".}
proc fcQAbstractItemModel_layoutChanged(self: pointer): void {.importc: "QAbstractItemModel_layoutChanged".}
proc fcQAbstractItemModel_connect_layoutChanged(self: pointer, slot: int, callback: proc (slot: int) {.cdecl.}, release: proc(slot: int) {.cdecl.}) {.importc: "QAbstractItemModel_connect_layoutChanged".}
proc fcQAbstractItemModel_layoutAboutToBeChanged(self: pointer): void {.importc: "QAbstractItemModel_layoutAboutToBeChanged".}
proc fcQAbstractItemModel_connect_layoutAboutToBeChanged(self: pointer, slot: int, callback: proc (slot: int) {.cdecl.}, release: proc(slot: int) {.cdecl.}) {.importc: "QAbstractItemModel_connect_layoutAboutToBeChanged".}
proc fcQAbstractItemModel_submit(self: pointer): bool {.importc: "QAbstractItemModel_submit".}
proc fcQAbstractItemModel_revert(self: pointer): void {.importc: "QAbstractItemModel_revert".}
proc fcQAbstractItemModel_tr2(s: cstring, c: cstring): struct_miqt_string {.importc: "QAbstractItemModel_tr2".}
proc fcQAbstractItemModel_tr3(s: cstring, c: cstring, n: cint): struct_miqt_string {.importc: "QAbstractItemModel_tr3".}
proc fcQAbstractItemModel_trUtf82(s: cstring, c: cstring): struct_miqt_string {.importc: "QAbstractItemModel_trUtf82".}
proc fcQAbstractItemModel_trUtf83(s: cstring, c: cstring, n: cint): struct_miqt_string {.importc: "QAbstractItemModel_trUtf83".}
proc fcQAbstractItemModel_hasIndex3(self: pointer, row: cint, column: cint, parent: pointer): bool {.importc: "QAbstractItemModel_hasIndex3".}
proc fcQAbstractItemModel_insertRow2(self: pointer, row: cint, parent: pointer): bool {.importc: "QAbstractItemModel_insertRow2".}
proc fcQAbstractItemModel_insertColumn2(self: pointer, column: cint, parent: pointer): bool {.importc: "QAbstractItemModel_insertColumn2".}
proc fcQAbstractItemModel_removeRow2(self: pointer, row: cint, parent: pointer): bool {.importc: "QAbstractItemModel_removeRow2".}
proc fcQAbstractItemModel_removeColumn2(self: pointer, column: cint, parent: pointer): bool {.importc: "QAbstractItemModel_removeColumn2".}
proc fcQAbstractItemModel_checkIndex2(self: pointer, index: pointer, options: cint): bool {.importc: "QAbstractItemModel_checkIndex2".}
proc fcQAbstractItemModel_dataChanged3(self: pointer, topLeft: pointer, bottomRight: pointer, roles: struct_miqt_array): void {.importc: "QAbstractItemModel_dataChanged3".}
proc fcQAbstractItemModel_connect_dataChanged3(self: pointer, slot: int, callback: proc (slot: int, topLeft: pointer, bottomRight: pointer, roles: struct_miqt_array) {.cdecl.}, release: proc(slot: int) {.cdecl.}) {.importc: "QAbstractItemModel_connect_dataChanged3".}
proc fcQAbstractItemModel_layoutChanged1(self: pointer, parents: struct_miqt_array): void {.importc: "QAbstractItemModel_layoutChanged1".}
proc fcQAbstractItemModel_connect_layoutChanged1(self: pointer, slot: int, callback: proc (slot: int, parents: struct_miqt_array) {.cdecl.}, release: proc(slot: int) {.cdecl.}) {.importc: "QAbstractItemModel_connect_layoutChanged1".}
proc fcQAbstractItemModel_layoutChanged2(self: pointer, parents: struct_miqt_array, hint: cint): void {.importc: "QAbstractItemModel_layoutChanged2".}
proc fcQAbstractItemModel_connect_layoutChanged2(self: pointer, slot: int, callback: proc (slot: int, parents: struct_miqt_array, hint: cint) {.cdecl.}, release: proc(slot: int) {.cdecl.}) {.importc: "QAbstractItemModel_connect_layoutChanged2".}
proc fcQAbstractItemModel_layoutAboutToBeChanged1(self: pointer, parents: struct_miqt_array): void {.importc: "QAbstractItemModel_layoutAboutToBeChanged1".}
proc fcQAbstractItemModel_connect_layoutAboutToBeChanged1(self: pointer, slot: int, callback: proc (slot: int, parents: struct_miqt_array) {.cdecl.}, release: proc(slot: int) {.cdecl.}) {.importc: "QAbstractItemModel_connect_layoutAboutToBeChanged1".}
proc fcQAbstractItemModel_layoutAboutToBeChanged2(self: pointer, parents: struct_miqt_array, hint: cint): void {.importc: "QAbstractItemModel_layoutAboutToBeChanged2".}
proc fcQAbstractItemModel_connect_layoutAboutToBeChanged2(self: pointer, slot: int, callback: proc (slot: int, parents: struct_miqt_array, hint: cint) {.cdecl.}, release: proc(slot: int) {.cdecl.}) {.importc: "QAbstractItemModel_connect_layoutAboutToBeChanged2".}
proc fcQAbstractItemModel_vtbl(self: pointer): pointer {.importc: "QAbstractItemModel_vtbl".}
proc fcQAbstractItemModel_vdata(self: pointer): pointer {.importc: "QAbstractItemModel_vdata".}
type cQAbstractItemModelVTable {.pure.} = object
  destructor*: proc(self: pointer) {.cdecl, raises:[], gcsafe.}
  metaObject*: proc(self: pointer): pointer {.cdecl, raises: [], gcsafe.}
  metacast*: proc(self: pointer, param1: cstring): pointer {.cdecl, raises: [], gcsafe.}
  metacall*: proc(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.cdecl, raises: [], gcsafe.}
  index*: proc(self: pointer, row: cint, column: cint, parent: pointer): pointer {.cdecl, raises: [], gcsafe.}
  parent*: proc(self: pointer, child: pointer): pointer {.cdecl, raises: [], gcsafe.}
  sibling*: proc(self: pointer, row: cint, column: cint, idx: pointer): pointer {.cdecl, raises: [], gcsafe.}
  rowCount*: proc(self: pointer, parent: pointer): cint {.cdecl, raises: [], gcsafe.}
  columnCount*: proc(self: pointer, parent: pointer): cint {.cdecl, raises: [], gcsafe.}
  hasChildren*: proc(self: pointer, parent: pointer): bool {.cdecl, raises: [], gcsafe.}
  data*: proc(self: pointer, index: pointer, role: cint): pointer {.cdecl, raises: [], gcsafe.}
  setData*: proc(self: pointer, index: pointer, value: pointer, role: cint): bool {.cdecl, raises: [], gcsafe.}
  headerData*: proc(self: pointer, section: cint, orientation: cint, role: cint): pointer {.cdecl, raises: [], gcsafe.}
  setHeaderData*: proc(self: pointer, section: cint, orientation: cint, value: pointer, role: cint): bool {.cdecl, raises: [], gcsafe.}
  itemData*: proc(self: pointer, index: pointer): struct_miqt_map {.cdecl, raises: [], gcsafe.}
  setItemData*: proc(self: pointer, index: pointer, roles: struct_miqt_map): bool {.cdecl, raises: [], gcsafe.}
  mimeTypes*: proc(self: pointer): struct_miqt_array {.cdecl, raises: [], gcsafe.}
  mimeData*: proc(self: pointer, indexes: struct_miqt_array): pointer {.cdecl, raises: [], gcsafe.}
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
  match*: proc(self: pointer, start: pointer, role: cint, value: pointer, hits: cint, flags: cint): struct_miqt_array {.cdecl, raises: [], gcsafe.}
  span*: proc(self: pointer, index: pointer): pointer {.cdecl, raises: [], gcsafe.}
  roleNames*: proc(self: pointer): struct_miqt_map {.cdecl, raises: [], gcsafe.}
  submit*: proc(self: pointer): bool {.cdecl, raises: [], gcsafe.}
  revert*: proc(self: pointer): void {.cdecl, raises: [], gcsafe.}
  event*: proc(self: pointer, event: pointer): bool {.cdecl, raises: [], gcsafe.}
  eventFilter*: proc(self: pointer, watched: pointer, event: pointer): bool {.cdecl, raises: [], gcsafe.}
  timerEvent*: proc(self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  childEvent*: proc(self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  customEvent*: proc(self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  connectNotify*: proc(self: pointer, signal: pointer): void {.cdecl, raises: [], gcsafe.}
  disconnectNotify*: proc(self: pointer, signal: pointer): void {.cdecl, raises: [], gcsafe.}
proc fcQAbstractItemModel_virtualbase_metaObject(self: pointer): pointer {.importc: "QAbstractItemModel_virtualbase_metaObject".}
proc fcQAbstractItemModel_virtualbase_metacast(self: pointer, param1: cstring): pointer {.importc: "QAbstractItemModel_virtualbase_metacast".}
proc fcQAbstractItemModel_virtualbase_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.importc: "QAbstractItemModel_virtualbase_metacall".}
proc fcQAbstractItemModel_virtualbase_sibling(self: pointer, row: cint, column: cint, idx: pointer): pointer {.importc: "QAbstractItemModel_virtualbase_sibling".}
proc fcQAbstractItemModel_virtualbase_hasChildren(self: pointer, parent: pointer): bool {.importc: "QAbstractItemModel_virtualbase_hasChildren".}
proc fcQAbstractItemModel_virtualbase_setData(self: pointer, index: pointer, value: pointer, role: cint): bool {.importc: "QAbstractItemModel_virtualbase_setData".}
proc fcQAbstractItemModel_virtualbase_headerData(self: pointer, section: cint, orientation: cint, role: cint): pointer {.importc: "QAbstractItemModel_virtualbase_headerData".}
proc fcQAbstractItemModel_virtualbase_setHeaderData(self: pointer, section: cint, orientation: cint, value: pointer, role: cint): bool {.importc: "QAbstractItemModel_virtualbase_setHeaderData".}
proc fcQAbstractItemModel_virtualbase_itemData(self: pointer, index: pointer): struct_miqt_map {.importc: "QAbstractItemModel_virtualbase_itemData".}
proc fcQAbstractItemModel_virtualbase_setItemData(self: pointer, index: pointer, roles: struct_miqt_map): bool {.importc: "QAbstractItemModel_virtualbase_setItemData".}
proc fcQAbstractItemModel_virtualbase_mimeTypes(self: pointer): struct_miqt_array {.importc: "QAbstractItemModel_virtualbase_mimeTypes".}
proc fcQAbstractItemModel_virtualbase_mimeData(self: pointer, indexes: struct_miqt_array): pointer {.importc: "QAbstractItemModel_virtualbase_mimeData".}
proc fcQAbstractItemModel_virtualbase_canDropMimeData(self: pointer, data: pointer, action: cint, row: cint, column: cint, parent: pointer): bool {.importc: "QAbstractItemModel_virtualbase_canDropMimeData".}
proc fcQAbstractItemModel_virtualbase_dropMimeData(self: pointer, data: pointer, action: cint, row: cint, column: cint, parent: pointer): bool {.importc: "QAbstractItemModel_virtualbase_dropMimeData".}
proc fcQAbstractItemModel_virtualbase_supportedDropActions(self: pointer): cint {.importc: "QAbstractItemModel_virtualbase_supportedDropActions".}
proc fcQAbstractItemModel_virtualbase_supportedDragActions(self: pointer): cint {.importc: "QAbstractItemModel_virtualbase_supportedDragActions".}
proc fcQAbstractItemModel_virtualbase_insertRows(self: pointer, row: cint, count: cint, parent: pointer): bool {.importc: "QAbstractItemModel_virtualbase_insertRows".}
proc fcQAbstractItemModel_virtualbase_insertColumns(self: pointer, column: cint, count: cint, parent: pointer): bool {.importc: "QAbstractItemModel_virtualbase_insertColumns".}
proc fcQAbstractItemModel_virtualbase_removeRows(self: pointer, row: cint, count: cint, parent: pointer): bool {.importc: "QAbstractItemModel_virtualbase_removeRows".}
proc fcQAbstractItemModel_virtualbase_removeColumns(self: pointer, column: cint, count: cint, parent: pointer): bool {.importc: "QAbstractItemModel_virtualbase_removeColumns".}
proc fcQAbstractItemModel_virtualbase_moveRows(self: pointer, sourceParent: pointer, sourceRow: cint, count: cint, destinationParent: pointer, destinationChild: cint): bool {.importc: "QAbstractItemModel_virtualbase_moveRows".}
proc fcQAbstractItemModel_virtualbase_moveColumns(self: pointer, sourceParent: pointer, sourceColumn: cint, count: cint, destinationParent: pointer, destinationChild: cint): bool {.importc: "QAbstractItemModel_virtualbase_moveColumns".}
proc fcQAbstractItemModel_virtualbase_fetchMore(self: pointer, parent: pointer): void {.importc: "QAbstractItemModel_virtualbase_fetchMore".}
proc fcQAbstractItemModel_virtualbase_canFetchMore(self: pointer, parent: pointer): bool {.importc: "QAbstractItemModel_virtualbase_canFetchMore".}
proc fcQAbstractItemModel_virtualbase_flags(self: pointer, index: pointer): cint {.importc: "QAbstractItemModel_virtualbase_flags".}
proc fcQAbstractItemModel_virtualbase_sort(self: pointer, column: cint, order: cint): void {.importc: "QAbstractItemModel_virtualbase_sort".}
proc fcQAbstractItemModel_virtualbase_buddy(self: pointer, index: pointer): pointer {.importc: "QAbstractItemModel_virtualbase_buddy".}
proc fcQAbstractItemModel_virtualbase_match(self: pointer, start: pointer, role: cint, value: pointer, hits: cint, flags: cint): struct_miqt_array {.importc: "QAbstractItemModel_virtualbase_match".}
proc fcQAbstractItemModel_virtualbase_span(self: pointer, index: pointer): pointer {.importc: "QAbstractItemModel_virtualbase_span".}
proc fcQAbstractItemModel_virtualbase_roleNames(self: pointer): struct_miqt_map {.importc: "QAbstractItemModel_virtualbase_roleNames".}
proc fcQAbstractItemModel_virtualbase_submit(self: pointer): bool {.importc: "QAbstractItemModel_virtualbase_submit".}
proc fcQAbstractItemModel_virtualbase_revert(self: pointer): void {.importc: "QAbstractItemModel_virtualbase_revert".}
proc fcQAbstractItemModel_virtualbase_event(self: pointer, event: pointer): bool {.importc: "QAbstractItemModel_virtualbase_event".}
proc fcQAbstractItemModel_virtualbase_eventFilter(self: pointer, watched: pointer, event: pointer): bool {.importc: "QAbstractItemModel_virtualbase_eventFilter".}
proc fcQAbstractItemModel_virtualbase_timerEvent(self: pointer, event: pointer): void {.importc: "QAbstractItemModel_virtualbase_timerEvent".}
proc fcQAbstractItemModel_virtualbase_childEvent(self: pointer, event: pointer): void {.importc: "QAbstractItemModel_virtualbase_childEvent".}
proc fcQAbstractItemModel_virtualbase_customEvent(self: pointer, event: pointer): void {.importc: "QAbstractItemModel_virtualbase_customEvent".}
proc fcQAbstractItemModel_virtualbase_connectNotify(self: pointer, signal: pointer): void {.importc: "QAbstractItemModel_virtualbase_connectNotify".}
proc fcQAbstractItemModel_virtualbase_disconnectNotify(self: pointer, signal: pointer): void {.importc: "QAbstractItemModel_virtualbase_disconnectNotify".}
proc fcQAbstractItemModel_protectedbase_resetInternalData(self: pointer): void {.importc: "QAbstractItemModel_protectedbase_resetInternalData".}
proc fcQAbstractItemModel_protectedbase_createIndex(self: pointer, row: cint, column: cint): pointer {.importc: "QAbstractItemModel_protectedbase_createIndex".}
proc fcQAbstractItemModel_protectedbase_createIndex2(self: pointer, row: cint, column: cint, id: uint): pointer {.importc: "QAbstractItemModel_protectedbase_createIndex2".}
proc fcQAbstractItemModel_protectedbase_encodeData(self: pointer, indexes: struct_miqt_array, stream: pointer): void {.importc: "QAbstractItemModel_protectedbase_encodeData".}
proc fcQAbstractItemModel_protectedbase_decodeData(self: pointer, row: cint, column: cint, parent: pointer, stream: pointer): bool {.importc: "QAbstractItemModel_protectedbase_decodeData".}
proc fcQAbstractItemModel_protectedbase_beginInsertRows(self: pointer, parent: pointer, first: cint, last: cint): void {.importc: "QAbstractItemModel_protectedbase_beginInsertRows".}
proc fcQAbstractItemModel_protectedbase_endInsertRows(self: pointer): void {.importc: "QAbstractItemModel_protectedbase_endInsertRows".}
proc fcQAbstractItemModel_protectedbase_beginRemoveRows(self: pointer, parent: pointer, first: cint, last: cint): void {.importc: "QAbstractItemModel_protectedbase_beginRemoveRows".}
proc fcQAbstractItemModel_protectedbase_endRemoveRows(self: pointer): void {.importc: "QAbstractItemModel_protectedbase_endRemoveRows".}
proc fcQAbstractItemModel_protectedbase_beginMoveRows(self: pointer, sourceParent: pointer, sourceFirst: cint, sourceLast: cint, destinationParent: pointer, destinationRow: cint): bool {.importc: "QAbstractItemModel_protectedbase_beginMoveRows".}
proc fcQAbstractItemModel_protectedbase_endMoveRows(self: pointer): void {.importc: "QAbstractItemModel_protectedbase_endMoveRows".}
proc fcQAbstractItemModel_protectedbase_beginInsertColumns(self: pointer, parent: pointer, first: cint, last: cint): void {.importc: "QAbstractItemModel_protectedbase_beginInsertColumns".}
proc fcQAbstractItemModel_protectedbase_endInsertColumns(self: pointer): void {.importc: "QAbstractItemModel_protectedbase_endInsertColumns".}
proc fcQAbstractItemModel_protectedbase_beginRemoveColumns(self: pointer, parent: pointer, first: cint, last: cint): void {.importc: "QAbstractItemModel_protectedbase_beginRemoveColumns".}
proc fcQAbstractItemModel_protectedbase_endRemoveColumns(self: pointer): void {.importc: "QAbstractItemModel_protectedbase_endRemoveColumns".}
proc fcQAbstractItemModel_protectedbase_beginMoveColumns(self: pointer, sourceParent: pointer, sourceFirst: cint, sourceLast: cint, destinationParent: pointer, destinationColumn: cint): bool {.importc: "QAbstractItemModel_protectedbase_beginMoveColumns".}
proc fcQAbstractItemModel_protectedbase_endMoveColumns(self: pointer): void {.importc: "QAbstractItemModel_protectedbase_endMoveColumns".}
proc fcQAbstractItemModel_protectedbase_beginResetModel(self: pointer): void {.importc: "QAbstractItemModel_protectedbase_beginResetModel".}
proc fcQAbstractItemModel_protectedbase_endResetModel(self: pointer): void {.importc: "QAbstractItemModel_protectedbase_endResetModel".}
proc fcQAbstractItemModel_protectedbase_changePersistentIndex(self: pointer, fromVal: pointer, to: pointer): void {.importc: "QAbstractItemModel_protectedbase_changePersistentIndex".}
proc fcQAbstractItemModel_protectedbase_changePersistentIndexList(self: pointer, fromVal: struct_miqt_array, to: struct_miqt_array): void {.importc: "QAbstractItemModel_protectedbase_changePersistentIndexList".}
proc fcQAbstractItemModel_protectedbase_persistentIndexList(self: pointer): struct_miqt_array {.importc: "QAbstractItemModel_protectedbase_persistentIndexList".}
proc fcQAbstractItemModel_protectedbase_createIndex3(self: pointer, row: cint, column: cint, data: pointer): pointer {.importc: "QAbstractItemModel_protectedbase_createIndex3".}
proc fcQAbstractItemModel_protectedbase_sender(self: pointer): pointer {.importc: "QAbstractItemModel_protectedbase_sender".}
proc fcQAbstractItemModel_protectedbase_senderSignalIndex(self: pointer): cint {.importc: "QAbstractItemModel_protectedbase_senderSignalIndex".}
proc fcQAbstractItemModel_protectedbase_receivers(self: pointer, signal: cstring): cint {.importc: "QAbstractItemModel_protectedbase_receivers".}
proc fcQAbstractItemModel_protectedbase_isSignalConnected(self: pointer, signal: pointer): bool {.importc: "QAbstractItemModel_protectedbase_isSignalConnected".}
proc fcQAbstractItemModel_new(vtbl, vdata: pointer): ptr cQAbstractItemModel {.importc: "QAbstractItemModel_new".}
proc fcQAbstractItemModel_new2(vtbl, vdata: pointer, parent: pointer): ptr cQAbstractItemModel {.importc: "QAbstractItemModel_new2".}
proc fcQAbstractItemModel_staticMetaObject(): pointer {.importc: "QAbstractItemModel_staticMetaObject".}
proc fcQAbstractTableModel_metaObject(self: pointer): pointer {.importc: "QAbstractTableModel_metaObject".}
proc fcQAbstractTableModel_metacast(self: pointer, param1: cstring): pointer {.importc: "QAbstractTableModel_metacast".}
proc fcQAbstractTableModel_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.importc: "QAbstractTableModel_metacall".}
proc fcQAbstractTableModel_tr(s: cstring): struct_miqt_string {.importc: "QAbstractTableModel_tr".}
proc fcQAbstractTableModel_trUtf8(s: cstring): struct_miqt_string {.importc: "QAbstractTableModel_trUtf8".}
proc fcQAbstractTableModel_index(self: pointer, row: cint, column: cint, parent: pointer): pointer {.importc: "QAbstractTableModel_index".}
proc fcQAbstractTableModel_sibling(self: pointer, row: cint, column: cint, idx: pointer): pointer {.importc: "QAbstractTableModel_sibling".}
proc fcQAbstractTableModel_dropMimeData(self: pointer, data: pointer, action: cint, row: cint, column: cint, parent: pointer): bool {.importc: "QAbstractTableModel_dropMimeData".}
proc fcQAbstractTableModel_flags(self: pointer, index: pointer): cint {.importc: "QAbstractTableModel_flags".}
proc fcQAbstractTableModel_tr2(s: cstring, c: cstring): struct_miqt_string {.importc: "QAbstractTableModel_tr2".}
proc fcQAbstractTableModel_tr3(s: cstring, c: cstring, n: cint): struct_miqt_string {.importc: "QAbstractTableModel_tr3".}
proc fcQAbstractTableModel_trUtf82(s: cstring, c: cstring): struct_miqt_string {.importc: "QAbstractTableModel_trUtf82".}
proc fcQAbstractTableModel_trUtf83(s: cstring, c: cstring, n: cint): struct_miqt_string {.importc: "QAbstractTableModel_trUtf83".}
proc fcQAbstractTableModel_vtbl(self: pointer): pointer {.importc: "QAbstractTableModel_vtbl".}
proc fcQAbstractTableModel_vdata(self: pointer): pointer {.importc: "QAbstractTableModel_vdata".}
type cQAbstractTableModelVTable {.pure.} = object
  destructor*: proc(self: pointer) {.cdecl, raises:[], gcsafe.}
  metaObject*: proc(self: pointer): pointer {.cdecl, raises: [], gcsafe.}
  metacast*: proc(self: pointer, param1: cstring): pointer {.cdecl, raises: [], gcsafe.}
  metacall*: proc(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.cdecl, raises: [], gcsafe.}
  index*: proc(self: pointer, row: cint, column: cint, parent: pointer): pointer {.cdecl, raises: [], gcsafe.}
  sibling*: proc(self: pointer, row: cint, column: cint, idx: pointer): pointer {.cdecl, raises: [], gcsafe.}
  dropMimeData*: proc(self: pointer, data: pointer, action: cint, row: cint, column: cint, parent: pointer): bool {.cdecl, raises: [], gcsafe.}
  flags*: proc(self: pointer, index: pointer): cint {.cdecl, raises: [], gcsafe.}
  rowCount*: proc(self: pointer, parent: pointer): cint {.cdecl, raises: [], gcsafe.}
  columnCount*: proc(self: pointer, parent: pointer): cint {.cdecl, raises: [], gcsafe.}
  data*: proc(self: pointer, index: pointer, role: cint): pointer {.cdecl, raises: [], gcsafe.}
  setData*: proc(self: pointer, index: pointer, value: pointer, role: cint): bool {.cdecl, raises: [], gcsafe.}
  headerData*: proc(self: pointer, section: cint, orientation: cint, role: cint): pointer {.cdecl, raises: [], gcsafe.}
  setHeaderData*: proc(self: pointer, section: cint, orientation: cint, value: pointer, role: cint): bool {.cdecl, raises: [], gcsafe.}
  itemData*: proc(self: pointer, index: pointer): struct_miqt_map {.cdecl, raises: [], gcsafe.}
  setItemData*: proc(self: pointer, index: pointer, roles: struct_miqt_map): bool {.cdecl, raises: [], gcsafe.}
  mimeTypes*: proc(self: pointer): struct_miqt_array {.cdecl, raises: [], gcsafe.}
  mimeData*: proc(self: pointer, indexes: struct_miqt_array): pointer {.cdecl, raises: [], gcsafe.}
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
  match*: proc(self: pointer, start: pointer, role: cint, value: pointer, hits: cint, flags: cint): struct_miqt_array {.cdecl, raises: [], gcsafe.}
  span*: proc(self: pointer, index: pointer): pointer {.cdecl, raises: [], gcsafe.}
  roleNames*: proc(self: pointer): struct_miqt_map {.cdecl, raises: [], gcsafe.}
  submit*: proc(self: pointer): bool {.cdecl, raises: [], gcsafe.}
  revert*: proc(self: pointer): void {.cdecl, raises: [], gcsafe.}
  event*: proc(self: pointer, event: pointer): bool {.cdecl, raises: [], gcsafe.}
  eventFilter*: proc(self: pointer, watched: pointer, event: pointer): bool {.cdecl, raises: [], gcsafe.}
  timerEvent*: proc(self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  childEvent*: proc(self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  customEvent*: proc(self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  connectNotify*: proc(self: pointer, signal: pointer): void {.cdecl, raises: [], gcsafe.}
  disconnectNotify*: proc(self: pointer, signal: pointer): void {.cdecl, raises: [], gcsafe.}
proc fcQAbstractTableModel_virtualbase_metaObject(self: pointer): pointer {.importc: "QAbstractTableModel_virtualbase_metaObject".}
proc fcQAbstractTableModel_virtualbase_metacast(self: pointer, param1: cstring): pointer {.importc: "QAbstractTableModel_virtualbase_metacast".}
proc fcQAbstractTableModel_virtualbase_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.importc: "QAbstractTableModel_virtualbase_metacall".}
proc fcQAbstractTableModel_virtualbase_index(self: pointer, row: cint, column: cint, parent: pointer): pointer {.importc: "QAbstractTableModel_virtualbase_index".}
proc fcQAbstractTableModel_virtualbase_sibling(self: pointer, row: cint, column: cint, idx: pointer): pointer {.importc: "QAbstractTableModel_virtualbase_sibling".}
proc fcQAbstractTableModel_virtualbase_dropMimeData(self: pointer, data: pointer, action: cint, row: cint, column: cint, parent: pointer): bool {.importc: "QAbstractTableModel_virtualbase_dropMimeData".}
proc fcQAbstractTableModel_virtualbase_flags(self: pointer, index: pointer): cint {.importc: "QAbstractTableModel_virtualbase_flags".}
proc fcQAbstractTableModel_virtualbase_setData(self: pointer, index: pointer, value: pointer, role: cint): bool {.importc: "QAbstractTableModel_virtualbase_setData".}
proc fcQAbstractTableModel_virtualbase_headerData(self: pointer, section: cint, orientation: cint, role: cint): pointer {.importc: "QAbstractTableModel_virtualbase_headerData".}
proc fcQAbstractTableModel_virtualbase_setHeaderData(self: pointer, section: cint, orientation: cint, value: pointer, role: cint): bool {.importc: "QAbstractTableModel_virtualbase_setHeaderData".}
proc fcQAbstractTableModel_virtualbase_itemData(self: pointer, index: pointer): struct_miqt_map {.importc: "QAbstractTableModel_virtualbase_itemData".}
proc fcQAbstractTableModel_virtualbase_setItemData(self: pointer, index: pointer, roles: struct_miqt_map): bool {.importc: "QAbstractTableModel_virtualbase_setItemData".}
proc fcQAbstractTableModel_virtualbase_mimeTypes(self: pointer): struct_miqt_array {.importc: "QAbstractTableModel_virtualbase_mimeTypes".}
proc fcQAbstractTableModel_virtualbase_mimeData(self: pointer, indexes: struct_miqt_array): pointer {.importc: "QAbstractTableModel_virtualbase_mimeData".}
proc fcQAbstractTableModel_virtualbase_canDropMimeData(self: pointer, data: pointer, action: cint, row: cint, column: cint, parent: pointer): bool {.importc: "QAbstractTableModel_virtualbase_canDropMimeData".}
proc fcQAbstractTableModel_virtualbase_supportedDropActions(self: pointer): cint {.importc: "QAbstractTableModel_virtualbase_supportedDropActions".}
proc fcQAbstractTableModel_virtualbase_supportedDragActions(self: pointer): cint {.importc: "QAbstractTableModel_virtualbase_supportedDragActions".}
proc fcQAbstractTableModel_virtualbase_insertRows(self: pointer, row: cint, count: cint, parent: pointer): bool {.importc: "QAbstractTableModel_virtualbase_insertRows".}
proc fcQAbstractTableModel_virtualbase_insertColumns(self: pointer, column: cint, count: cint, parent: pointer): bool {.importc: "QAbstractTableModel_virtualbase_insertColumns".}
proc fcQAbstractTableModel_virtualbase_removeRows(self: pointer, row: cint, count: cint, parent: pointer): bool {.importc: "QAbstractTableModel_virtualbase_removeRows".}
proc fcQAbstractTableModel_virtualbase_removeColumns(self: pointer, column: cint, count: cint, parent: pointer): bool {.importc: "QAbstractTableModel_virtualbase_removeColumns".}
proc fcQAbstractTableModel_virtualbase_moveRows(self: pointer, sourceParent: pointer, sourceRow: cint, count: cint, destinationParent: pointer, destinationChild: cint): bool {.importc: "QAbstractTableModel_virtualbase_moveRows".}
proc fcQAbstractTableModel_virtualbase_moveColumns(self: pointer, sourceParent: pointer, sourceColumn: cint, count: cint, destinationParent: pointer, destinationChild: cint): bool {.importc: "QAbstractTableModel_virtualbase_moveColumns".}
proc fcQAbstractTableModel_virtualbase_fetchMore(self: pointer, parent: pointer): void {.importc: "QAbstractTableModel_virtualbase_fetchMore".}
proc fcQAbstractTableModel_virtualbase_canFetchMore(self: pointer, parent: pointer): bool {.importc: "QAbstractTableModel_virtualbase_canFetchMore".}
proc fcQAbstractTableModel_virtualbase_sort(self: pointer, column: cint, order: cint): void {.importc: "QAbstractTableModel_virtualbase_sort".}
proc fcQAbstractTableModel_virtualbase_buddy(self: pointer, index: pointer): pointer {.importc: "QAbstractTableModel_virtualbase_buddy".}
proc fcQAbstractTableModel_virtualbase_match(self: pointer, start: pointer, role: cint, value: pointer, hits: cint, flags: cint): struct_miqt_array {.importc: "QAbstractTableModel_virtualbase_match".}
proc fcQAbstractTableModel_virtualbase_span(self: pointer, index: pointer): pointer {.importc: "QAbstractTableModel_virtualbase_span".}
proc fcQAbstractTableModel_virtualbase_roleNames(self: pointer): struct_miqt_map {.importc: "QAbstractTableModel_virtualbase_roleNames".}
proc fcQAbstractTableModel_virtualbase_submit(self: pointer): bool {.importc: "QAbstractTableModel_virtualbase_submit".}
proc fcQAbstractTableModel_virtualbase_revert(self: pointer): void {.importc: "QAbstractTableModel_virtualbase_revert".}
proc fcQAbstractTableModel_virtualbase_event(self: pointer, event: pointer): bool {.importc: "QAbstractTableModel_virtualbase_event".}
proc fcQAbstractTableModel_virtualbase_eventFilter(self: pointer, watched: pointer, event: pointer): bool {.importc: "QAbstractTableModel_virtualbase_eventFilter".}
proc fcQAbstractTableModel_virtualbase_timerEvent(self: pointer, event: pointer): void {.importc: "QAbstractTableModel_virtualbase_timerEvent".}
proc fcQAbstractTableModel_virtualbase_childEvent(self: pointer, event: pointer): void {.importc: "QAbstractTableModel_virtualbase_childEvent".}
proc fcQAbstractTableModel_virtualbase_customEvent(self: pointer, event: pointer): void {.importc: "QAbstractTableModel_virtualbase_customEvent".}
proc fcQAbstractTableModel_virtualbase_connectNotify(self: pointer, signal: pointer): void {.importc: "QAbstractTableModel_virtualbase_connectNotify".}
proc fcQAbstractTableModel_virtualbase_disconnectNotify(self: pointer, signal: pointer): void {.importc: "QAbstractTableModel_virtualbase_disconnectNotify".}
proc fcQAbstractTableModel_protectedbase_resetInternalData(self: pointer): void {.importc: "QAbstractTableModel_protectedbase_resetInternalData".}
proc fcQAbstractTableModel_protectedbase_createIndex(self: pointer, row: cint, column: cint): pointer {.importc: "QAbstractTableModel_protectedbase_createIndex".}
proc fcQAbstractTableModel_protectedbase_encodeData(self: pointer, indexes: struct_miqt_array, stream: pointer): void {.importc: "QAbstractTableModel_protectedbase_encodeData".}
proc fcQAbstractTableModel_protectedbase_decodeData(self: pointer, row: cint, column: cint, parent: pointer, stream: pointer): bool {.importc: "QAbstractTableModel_protectedbase_decodeData".}
proc fcQAbstractTableModel_protectedbase_beginInsertRows(self: pointer, parent: pointer, first: cint, last: cint): void {.importc: "QAbstractTableModel_protectedbase_beginInsertRows".}
proc fcQAbstractTableModel_protectedbase_endInsertRows(self: pointer): void {.importc: "QAbstractTableModel_protectedbase_endInsertRows".}
proc fcQAbstractTableModel_protectedbase_beginRemoveRows(self: pointer, parent: pointer, first: cint, last: cint): void {.importc: "QAbstractTableModel_protectedbase_beginRemoveRows".}
proc fcQAbstractTableModel_protectedbase_endRemoveRows(self: pointer): void {.importc: "QAbstractTableModel_protectedbase_endRemoveRows".}
proc fcQAbstractTableModel_protectedbase_beginMoveRows(self: pointer, sourceParent: pointer, sourceFirst: cint, sourceLast: cint, destinationParent: pointer, destinationRow: cint): bool {.importc: "QAbstractTableModel_protectedbase_beginMoveRows".}
proc fcQAbstractTableModel_protectedbase_endMoveRows(self: pointer): void {.importc: "QAbstractTableModel_protectedbase_endMoveRows".}
proc fcQAbstractTableModel_protectedbase_beginInsertColumns(self: pointer, parent: pointer, first: cint, last: cint): void {.importc: "QAbstractTableModel_protectedbase_beginInsertColumns".}
proc fcQAbstractTableModel_protectedbase_endInsertColumns(self: pointer): void {.importc: "QAbstractTableModel_protectedbase_endInsertColumns".}
proc fcQAbstractTableModel_protectedbase_beginRemoveColumns(self: pointer, parent: pointer, first: cint, last: cint): void {.importc: "QAbstractTableModel_protectedbase_beginRemoveColumns".}
proc fcQAbstractTableModel_protectedbase_endRemoveColumns(self: pointer): void {.importc: "QAbstractTableModel_protectedbase_endRemoveColumns".}
proc fcQAbstractTableModel_protectedbase_beginMoveColumns(self: pointer, sourceParent: pointer, sourceFirst: cint, sourceLast: cint, destinationParent: pointer, destinationColumn: cint): bool {.importc: "QAbstractTableModel_protectedbase_beginMoveColumns".}
proc fcQAbstractTableModel_protectedbase_endMoveColumns(self: pointer): void {.importc: "QAbstractTableModel_protectedbase_endMoveColumns".}
proc fcQAbstractTableModel_protectedbase_beginResetModel(self: pointer): void {.importc: "QAbstractTableModel_protectedbase_beginResetModel".}
proc fcQAbstractTableModel_protectedbase_endResetModel(self: pointer): void {.importc: "QAbstractTableModel_protectedbase_endResetModel".}
proc fcQAbstractTableModel_protectedbase_changePersistentIndex(self: pointer, fromVal: pointer, to: pointer): void {.importc: "QAbstractTableModel_protectedbase_changePersistentIndex".}
proc fcQAbstractTableModel_protectedbase_changePersistentIndexList(self: pointer, fromVal: struct_miqt_array, to: struct_miqt_array): void {.importc: "QAbstractTableModel_protectedbase_changePersistentIndexList".}
proc fcQAbstractTableModel_protectedbase_persistentIndexList(self: pointer): struct_miqt_array {.importc: "QAbstractTableModel_protectedbase_persistentIndexList".}
proc fcQAbstractTableModel_protectedbase_sender(self: pointer): pointer {.importc: "QAbstractTableModel_protectedbase_sender".}
proc fcQAbstractTableModel_protectedbase_senderSignalIndex(self: pointer): cint {.importc: "QAbstractTableModel_protectedbase_senderSignalIndex".}
proc fcQAbstractTableModel_protectedbase_receivers(self: pointer, signal: cstring): cint {.importc: "QAbstractTableModel_protectedbase_receivers".}
proc fcQAbstractTableModel_protectedbase_isSignalConnected(self: pointer, signal: pointer): bool {.importc: "QAbstractTableModel_protectedbase_isSignalConnected".}
proc fcQAbstractTableModel_new(vtbl, vdata: pointer): ptr cQAbstractTableModel {.importc: "QAbstractTableModel_new".}
proc fcQAbstractTableModel_new2(vtbl, vdata: pointer, parent: pointer): ptr cQAbstractTableModel {.importc: "QAbstractTableModel_new2".}
proc fcQAbstractTableModel_staticMetaObject(): pointer {.importc: "QAbstractTableModel_staticMetaObject".}
proc fcQAbstractListModel_metaObject(self: pointer): pointer {.importc: "QAbstractListModel_metaObject".}
proc fcQAbstractListModel_metacast(self: pointer, param1: cstring): pointer {.importc: "QAbstractListModel_metacast".}
proc fcQAbstractListModel_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.importc: "QAbstractListModel_metacall".}
proc fcQAbstractListModel_tr(s: cstring): struct_miqt_string {.importc: "QAbstractListModel_tr".}
proc fcQAbstractListModel_trUtf8(s: cstring): struct_miqt_string {.importc: "QAbstractListModel_trUtf8".}
proc fcQAbstractListModel_index(self: pointer, row: cint, column: cint, parent: pointer): pointer {.importc: "QAbstractListModel_index".}
proc fcQAbstractListModel_sibling(self: pointer, row: cint, column: cint, idx: pointer): pointer {.importc: "QAbstractListModel_sibling".}
proc fcQAbstractListModel_dropMimeData(self: pointer, data: pointer, action: cint, row: cint, column: cint, parent: pointer): bool {.importc: "QAbstractListModel_dropMimeData".}
proc fcQAbstractListModel_flags(self: pointer, index: pointer): cint {.importc: "QAbstractListModel_flags".}
proc fcQAbstractListModel_tr2(s: cstring, c: cstring): struct_miqt_string {.importc: "QAbstractListModel_tr2".}
proc fcQAbstractListModel_tr3(s: cstring, c: cstring, n: cint): struct_miqt_string {.importc: "QAbstractListModel_tr3".}
proc fcQAbstractListModel_trUtf82(s: cstring, c: cstring): struct_miqt_string {.importc: "QAbstractListModel_trUtf82".}
proc fcQAbstractListModel_trUtf83(s: cstring, c: cstring, n: cint): struct_miqt_string {.importc: "QAbstractListModel_trUtf83".}
proc fcQAbstractListModel_vtbl(self: pointer): pointer {.importc: "QAbstractListModel_vtbl".}
proc fcQAbstractListModel_vdata(self: pointer): pointer {.importc: "QAbstractListModel_vdata".}
type cQAbstractListModelVTable {.pure.} = object
  destructor*: proc(self: pointer) {.cdecl, raises:[], gcsafe.}
  metaObject*: proc(self: pointer): pointer {.cdecl, raises: [], gcsafe.}
  metacast*: proc(self: pointer, param1: cstring): pointer {.cdecl, raises: [], gcsafe.}
  metacall*: proc(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.cdecl, raises: [], gcsafe.}
  index*: proc(self: pointer, row: cint, column: cint, parent: pointer): pointer {.cdecl, raises: [], gcsafe.}
  sibling*: proc(self: pointer, row: cint, column: cint, idx: pointer): pointer {.cdecl, raises: [], gcsafe.}
  dropMimeData*: proc(self: pointer, data: pointer, action: cint, row: cint, column: cint, parent: pointer): bool {.cdecl, raises: [], gcsafe.}
  flags*: proc(self: pointer, index: pointer): cint {.cdecl, raises: [], gcsafe.}
  rowCount*: proc(self: pointer, parent: pointer): cint {.cdecl, raises: [], gcsafe.}
  data*: proc(self: pointer, index: pointer, role: cint): pointer {.cdecl, raises: [], gcsafe.}
  setData*: proc(self: pointer, index: pointer, value: pointer, role: cint): bool {.cdecl, raises: [], gcsafe.}
  headerData*: proc(self: pointer, section: cint, orientation: cint, role: cint): pointer {.cdecl, raises: [], gcsafe.}
  setHeaderData*: proc(self: pointer, section: cint, orientation: cint, value: pointer, role: cint): bool {.cdecl, raises: [], gcsafe.}
  itemData*: proc(self: pointer, index: pointer): struct_miqt_map {.cdecl, raises: [], gcsafe.}
  setItemData*: proc(self: pointer, index: pointer, roles: struct_miqt_map): bool {.cdecl, raises: [], gcsafe.}
  mimeTypes*: proc(self: pointer): struct_miqt_array {.cdecl, raises: [], gcsafe.}
  mimeData*: proc(self: pointer, indexes: struct_miqt_array): pointer {.cdecl, raises: [], gcsafe.}
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
  match*: proc(self: pointer, start: pointer, role: cint, value: pointer, hits: cint, flags: cint): struct_miqt_array {.cdecl, raises: [], gcsafe.}
  span*: proc(self: pointer, index: pointer): pointer {.cdecl, raises: [], gcsafe.}
  roleNames*: proc(self: pointer): struct_miqt_map {.cdecl, raises: [], gcsafe.}
  submit*: proc(self: pointer): bool {.cdecl, raises: [], gcsafe.}
  revert*: proc(self: pointer): void {.cdecl, raises: [], gcsafe.}
  event*: proc(self: pointer, event: pointer): bool {.cdecl, raises: [], gcsafe.}
  eventFilter*: proc(self: pointer, watched: pointer, event: pointer): bool {.cdecl, raises: [], gcsafe.}
  timerEvent*: proc(self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  childEvent*: proc(self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  customEvent*: proc(self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  connectNotify*: proc(self: pointer, signal: pointer): void {.cdecl, raises: [], gcsafe.}
  disconnectNotify*: proc(self: pointer, signal: pointer): void {.cdecl, raises: [], gcsafe.}
proc fcQAbstractListModel_virtualbase_metaObject(self: pointer): pointer {.importc: "QAbstractListModel_virtualbase_metaObject".}
proc fcQAbstractListModel_virtualbase_metacast(self: pointer, param1: cstring): pointer {.importc: "QAbstractListModel_virtualbase_metacast".}
proc fcQAbstractListModel_virtualbase_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.importc: "QAbstractListModel_virtualbase_metacall".}
proc fcQAbstractListModel_virtualbase_index(self: pointer, row: cint, column: cint, parent: pointer): pointer {.importc: "QAbstractListModel_virtualbase_index".}
proc fcQAbstractListModel_virtualbase_sibling(self: pointer, row: cint, column: cint, idx: pointer): pointer {.importc: "QAbstractListModel_virtualbase_sibling".}
proc fcQAbstractListModel_virtualbase_dropMimeData(self: pointer, data: pointer, action: cint, row: cint, column: cint, parent: pointer): bool {.importc: "QAbstractListModel_virtualbase_dropMimeData".}
proc fcQAbstractListModel_virtualbase_flags(self: pointer, index: pointer): cint {.importc: "QAbstractListModel_virtualbase_flags".}
proc fcQAbstractListModel_virtualbase_setData(self: pointer, index: pointer, value: pointer, role: cint): bool {.importc: "QAbstractListModel_virtualbase_setData".}
proc fcQAbstractListModel_virtualbase_headerData(self: pointer, section: cint, orientation: cint, role: cint): pointer {.importc: "QAbstractListModel_virtualbase_headerData".}
proc fcQAbstractListModel_virtualbase_setHeaderData(self: pointer, section: cint, orientation: cint, value: pointer, role: cint): bool {.importc: "QAbstractListModel_virtualbase_setHeaderData".}
proc fcQAbstractListModel_virtualbase_itemData(self: pointer, index: pointer): struct_miqt_map {.importc: "QAbstractListModel_virtualbase_itemData".}
proc fcQAbstractListModel_virtualbase_setItemData(self: pointer, index: pointer, roles: struct_miqt_map): bool {.importc: "QAbstractListModel_virtualbase_setItemData".}
proc fcQAbstractListModel_virtualbase_mimeTypes(self: pointer): struct_miqt_array {.importc: "QAbstractListModel_virtualbase_mimeTypes".}
proc fcQAbstractListModel_virtualbase_mimeData(self: pointer, indexes: struct_miqt_array): pointer {.importc: "QAbstractListModel_virtualbase_mimeData".}
proc fcQAbstractListModel_virtualbase_canDropMimeData(self: pointer, data: pointer, action: cint, row: cint, column: cint, parent: pointer): bool {.importc: "QAbstractListModel_virtualbase_canDropMimeData".}
proc fcQAbstractListModel_virtualbase_supportedDropActions(self: pointer): cint {.importc: "QAbstractListModel_virtualbase_supportedDropActions".}
proc fcQAbstractListModel_virtualbase_supportedDragActions(self: pointer): cint {.importc: "QAbstractListModel_virtualbase_supportedDragActions".}
proc fcQAbstractListModel_virtualbase_insertRows(self: pointer, row: cint, count: cint, parent: pointer): bool {.importc: "QAbstractListModel_virtualbase_insertRows".}
proc fcQAbstractListModel_virtualbase_insertColumns(self: pointer, column: cint, count: cint, parent: pointer): bool {.importc: "QAbstractListModel_virtualbase_insertColumns".}
proc fcQAbstractListModel_virtualbase_removeRows(self: pointer, row: cint, count: cint, parent: pointer): bool {.importc: "QAbstractListModel_virtualbase_removeRows".}
proc fcQAbstractListModel_virtualbase_removeColumns(self: pointer, column: cint, count: cint, parent: pointer): bool {.importc: "QAbstractListModel_virtualbase_removeColumns".}
proc fcQAbstractListModel_virtualbase_moveRows(self: pointer, sourceParent: pointer, sourceRow: cint, count: cint, destinationParent: pointer, destinationChild: cint): bool {.importc: "QAbstractListModel_virtualbase_moveRows".}
proc fcQAbstractListModel_virtualbase_moveColumns(self: pointer, sourceParent: pointer, sourceColumn: cint, count: cint, destinationParent: pointer, destinationChild: cint): bool {.importc: "QAbstractListModel_virtualbase_moveColumns".}
proc fcQAbstractListModel_virtualbase_fetchMore(self: pointer, parent: pointer): void {.importc: "QAbstractListModel_virtualbase_fetchMore".}
proc fcQAbstractListModel_virtualbase_canFetchMore(self: pointer, parent: pointer): bool {.importc: "QAbstractListModel_virtualbase_canFetchMore".}
proc fcQAbstractListModel_virtualbase_sort(self: pointer, column: cint, order: cint): void {.importc: "QAbstractListModel_virtualbase_sort".}
proc fcQAbstractListModel_virtualbase_buddy(self: pointer, index: pointer): pointer {.importc: "QAbstractListModel_virtualbase_buddy".}
proc fcQAbstractListModel_virtualbase_match(self: pointer, start: pointer, role: cint, value: pointer, hits: cint, flags: cint): struct_miqt_array {.importc: "QAbstractListModel_virtualbase_match".}
proc fcQAbstractListModel_virtualbase_span(self: pointer, index: pointer): pointer {.importc: "QAbstractListModel_virtualbase_span".}
proc fcQAbstractListModel_virtualbase_roleNames(self: pointer): struct_miqt_map {.importc: "QAbstractListModel_virtualbase_roleNames".}
proc fcQAbstractListModel_virtualbase_submit(self: pointer): bool {.importc: "QAbstractListModel_virtualbase_submit".}
proc fcQAbstractListModel_virtualbase_revert(self: pointer): void {.importc: "QAbstractListModel_virtualbase_revert".}
proc fcQAbstractListModel_virtualbase_event(self: pointer, event: pointer): bool {.importc: "QAbstractListModel_virtualbase_event".}
proc fcQAbstractListModel_virtualbase_eventFilter(self: pointer, watched: pointer, event: pointer): bool {.importc: "QAbstractListModel_virtualbase_eventFilter".}
proc fcQAbstractListModel_virtualbase_timerEvent(self: pointer, event: pointer): void {.importc: "QAbstractListModel_virtualbase_timerEvent".}
proc fcQAbstractListModel_virtualbase_childEvent(self: pointer, event: pointer): void {.importc: "QAbstractListModel_virtualbase_childEvent".}
proc fcQAbstractListModel_virtualbase_customEvent(self: pointer, event: pointer): void {.importc: "QAbstractListModel_virtualbase_customEvent".}
proc fcQAbstractListModel_virtualbase_connectNotify(self: pointer, signal: pointer): void {.importc: "QAbstractListModel_virtualbase_connectNotify".}
proc fcQAbstractListModel_virtualbase_disconnectNotify(self: pointer, signal: pointer): void {.importc: "QAbstractListModel_virtualbase_disconnectNotify".}
proc fcQAbstractListModel_protectedbase_resetInternalData(self: pointer): void {.importc: "QAbstractListModel_protectedbase_resetInternalData".}
proc fcQAbstractListModel_protectedbase_createIndex(self: pointer, row: cint, column: cint): pointer {.importc: "QAbstractListModel_protectedbase_createIndex".}
proc fcQAbstractListModel_protectedbase_encodeData(self: pointer, indexes: struct_miqt_array, stream: pointer): void {.importc: "QAbstractListModel_protectedbase_encodeData".}
proc fcQAbstractListModel_protectedbase_decodeData(self: pointer, row: cint, column: cint, parent: pointer, stream: pointer): bool {.importc: "QAbstractListModel_protectedbase_decodeData".}
proc fcQAbstractListModel_protectedbase_beginInsertRows(self: pointer, parent: pointer, first: cint, last: cint): void {.importc: "QAbstractListModel_protectedbase_beginInsertRows".}
proc fcQAbstractListModel_protectedbase_endInsertRows(self: pointer): void {.importc: "QAbstractListModel_protectedbase_endInsertRows".}
proc fcQAbstractListModel_protectedbase_beginRemoveRows(self: pointer, parent: pointer, first: cint, last: cint): void {.importc: "QAbstractListModel_protectedbase_beginRemoveRows".}
proc fcQAbstractListModel_protectedbase_endRemoveRows(self: pointer): void {.importc: "QAbstractListModel_protectedbase_endRemoveRows".}
proc fcQAbstractListModel_protectedbase_beginMoveRows(self: pointer, sourceParent: pointer, sourceFirst: cint, sourceLast: cint, destinationParent: pointer, destinationRow: cint): bool {.importc: "QAbstractListModel_protectedbase_beginMoveRows".}
proc fcQAbstractListModel_protectedbase_endMoveRows(self: pointer): void {.importc: "QAbstractListModel_protectedbase_endMoveRows".}
proc fcQAbstractListModel_protectedbase_beginInsertColumns(self: pointer, parent: pointer, first: cint, last: cint): void {.importc: "QAbstractListModel_protectedbase_beginInsertColumns".}
proc fcQAbstractListModel_protectedbase_endInsertColumns(self: pointer): void {.importc: "QAbstractListModel_protectedbase_endInsertColumns".}
proc fcQAbstractListModel_protectedbase_beginRemoveColumns(self: pointer, parent: pointer, first: cint, last: cint): void {.importc: "QAbstractListModel_protectedbase_beginRemoveColumns".}
proc fcQAbstractListModel_protectedbase_endRemoveColumns(self: pointer): void {.importc: "QAbstractListModel_protectedbase_endRemoveColumns".}
proc fcQAbstractListModel_protectedbase_beginMoveColumns(self: pointer, sourceParent: pointer, sourceFirst: cint, sourceLast: cint, destinationParent: pointer, destinationColumn: cint): bool {.importc: "QAbstractListModel_protectedbase_beginMoveColumns".}
proc fcQAbstractListModel_protectedbase_endMoveColumns(self: pointer): void {.importc: "QAbstractListModel_protectedbase_endMoveColumns".}
proc fcQAbstractListModel_protectedbase_beginResetModel(self: pointer): void {.importc: "QAbstractListModel_protectedbase_beginResetModel".}
proc fcQAbstractListModel_protectedbase_endResetModel(self: pointer): void {.importc: "QAbstractListModel_protectedbase_endResetModel".}
proc fcQAbstractListModel_protectedbase_changePersistentIndex(self: pointer, fromVal: pointer, to: pointer): void {.importc: "QAbstractListModel_protectedbase_changePersistentIndex".}
proc fcQAbstractListModel_protectedbase_changePersistentIndexList(self: pointer, fromVal: struct_miqt_array, to: struct_miqt_array): void {.importc: "QAbstractListModel_protectedbase_changePersistentIndexList".}
proc fcQAbstractListModel_protectedbase_persistentIndexList(self: pointer): struct_miqt_array {.importc: "QAbstractListModel_protectedbase_persistentIndexList".}
proc fcQAbstractListModel_protectedbase_sender(self: pointer): pointer {.importc: "QAbstractListModel_protectedbase_sender".}
proc fcQAbstractListModel_protectedbase_senderSignalIndex(self: pointer): cint {.importc: "QAbstractListModel_protectedbase_senderSignalIndex".}
proc fcQAbstractListModel_protectedbase_receivers(self: pointer, signal: cstring): cint {.importc: "QAbstractListModel_protectedbase_receivers".}
proc fcQAbstractListModel_protectedbase_isSignalConnected(self: pointer, signal: pointer): bool {.importc: "QAbstractListModel_protectedbase_isSignalConnected".}
proc fcQAbstractListModel_new(vtbl, vdata: pointer): ptr cQAbstractListModel {.importc: "QAbstractListModel_new".}
proc fcQAbstractListModel_new2(vtbl, vdata: pointer, parent: pointer): ptr cQAbstractListModel {.importc: "QAbstractListModel_new2".}
proc fcQAbstractListModel_staticMetaObject(): pointer {.importc: "QAbstractListModel_staticMetaObject".}

proc row*(self: gen_qabstractitemmodel_types.QModelIndex): cint =
  fcQModelIndex_row(self.h)

proc column*(self: gen_qabstractitemmodel_types.QModelIndex): cint =
  fcQModelIndex_column(self.h)

proc internalId*(self: gen_qabstractitemmodel_types.QModelIndex): uint =
  fcQModelIndex_internalId(self.h)

proc internalPointer*(self: gen_qabstractitemmodel_types.QModelIndex): pointer =
  fcQModelIndex_internalPointer(self.h)

proc parent*(self: gen_qabstractitemmodel_types.QModelIndex): gen_qabstractitemmodel_types.QModelIndex =
  gen_qabstractitemmodel_types.QModelIndex(h: fcQModelIndex_parent(self.h), owned: true)

proc sibling*(self: gen_qabstractitemmodel_types.QModelIndex, row: cint, column: cint): gen_qabstractitemmodel_types.QModelIndex =
  gen_qabstractitemmodel_types.QModelIndex(h: fcQModelIndex_sibling(self.h, row, column), owned: true)

proc siblingAtColumn*(self: gen_qabstractitemmodel_types.QModelIndex, column: cint): gen_qabstractitemmodel_types.QModelIndex =
  gen_qabstractitemmodel_types.QModelIndex(h: fcQModelIndex_siblingAtColumn(self.h, column), owned: true)

proc siblingAtRow*(self: gen_qabstractitemmodel_types.QModelIndex, row: cint): gen_qabstractitemmodel_types.QModelIndex =
  gen_qabstractitemmodel_types.QModelIndex(h: fcQModelIndex_siblingAtRow(self.h, row), owned: true)

proc child*(self: gen_qabstractitemmodel_types.QModelIndex, row: cint, column: cint): gen_qabstractitemmodel_types.QModelIndex =
  gen_qabstractitemmodel_types.QModelIndex(h: fcQModelIndex_child(self.h, row, column), owned: true)

proc data*(self: gen_qabstractitemmodel_types.QModelIndex): gen_qvariant_types.QVariant =
  gen_qvariant_types.QVariant(h: fcQModelIndex_data(self.h), owned: true)

proc flags*(self: gen_qabstractitemmodel_types.QModelIndex): cint =
  cint(fcQModelIndex_flags(self.h))

proc model*(self: gen_qabstractitemmodel_types.QModelIndex): gen_qabstractitemmodel_types.QAbstractItemModel =
  gen_qabstractitemmodel_types.QAbstractItemModel(h: fcQModelIndex_model(self.h), owned: false)

proc isValid*(self: gen_qabstractitemmodel_types.QModelIndex): bool =
  fcQModelIndex_isValid(self.h)

proc operatorEqual*(self: gen_qabstractitemmodel_types.QModelIndex, other: gen_qabstractitemmodel_types.QModelIndex): bool =
  fcQModelIndex_operatorEqual(self.h, other.h)

proc operatorNotEqual*(self: gen_qabstractitemmodel_types.QModelIndex, other: gen_qabstractitemmodel_types.QModelIndex): bool =
  fcQModelIndex_operatorNotEqual(self.h, other.h)

proc operatorLesser*(self: gen_qabstractitemmodel_types.QModelIndex, other: gen_qabstractitemmodel_types.QModelIndex): bool =
  fcQModelIndex_operatorLesser(self.h, other.h)

proc data*(self: gen_qabstractitemmodel_types.QModelIndex, role: cint): gen_qvariant_types.QVariant =
  gen_qvariant_types.QVariant(h: fcQModelIndex_data1(self.h, role), owned: true)

proc create*(T: type gen_qabstractitemmodel_types.QModelIndex): gen_qabstractitemmodel_types.QModelIndex =
  gen_qabstractitemmodel_types.QModelIndex(h: fcQModelIndex_new(), owned: true)

proc create*(T: type gen_qabstractitemmodel_types.QModelIndex,
    param1: gen_qabstractitemmodel_types.QModelIndex): gen_qabstractitemmodel_types.QModelIndex =
  gen_qabstractitemmodel_types.QModelIndex(h: fcQModelIndex_new2(param1.h), owned: true)

proc operatorLesser*(self: gen_qabstractitemmodel_types.QPersistentModelIndex, other: gen_qabstractitemmodel_types.QPersistentModelIndex): bool =
  fcQPersistentModelIndex_operatorLesser(self.h, other.h)

proc operatorEqual*(self: gen_qabstractitemmodel_types.QPersistentModelIndex, other: gen_qabstractitemmodel_types.QPersistentModelIndex): bool =
  fcQPersistentModelIndex_operatorEqual(self.h, other.h)

proc operatorNotEqual*(self: gen_qabstractitemmodel_types.QPersistentModelIndex, other: gen_qabstractitemmodel_types.QPersistentModelIndex): bool =
  fcQPersistentModelIndex_operatorNotEqual(self.h, other.h)

proc operatorAssign*(self: gen_qabstractitemmodel_types.QPersistentModelIndex, other: gen_qabstractitemmodel_types.QPersistentModelIndex): void =
  fcQPersistentModelIndex_operatorAssign(self.h, other.h)

proc swap*(self: gen_qabstractitemmodel_types.QPersistentModelIndex, other: gen_qabstractitemmodel_types.QPersistentModelIndex): void =
  fcQPersistentModelIndex_swap(self.h, other.h)

proc operatorEqual*(self: gen_qabstractitemmodel_types.QPersistentModelIndex, other: gen_qabstractitemmodel_types.QModelIndex): bool =
  fcQPersistentModelIndex_operatorEqualWithOther(self.h, other.h)

proc operatorNotEqual*(self: gen_qabstractitemmodel_types.QPersistentModelIndex, other: gen_qabstractitemmodel_types.QModelIndex): bool =
  fcQPersistentModelIndex_operatorNotEqualWithOther(self.h, other.h)

proc operatorAssign*(self: gen_qabstractitemmodel_types.QPersistentModelIndex, other: gen_qabstractitemmodel_types.QModelIndex): void =
  fcQPersistentModelIndex_operatorAssignWithOther(self.h, other.h)

proc ToConstQModelIndexBitwiseAnd*(self: gen_qabstractitemmodel_types.QPersistentModelIndex): gen_qabstractitemmodel_types.QModelIndex =
  gen_qabstractitemmodel_types.QModelIndex(h: fcQPersistentModelIndex_ToConstQModelIndexBitwiseAnd(self.h), owned: false)

proc row*(self: gen_qabstractitemmodel_types.QPersistentModelIndex): cint =
  fcQPersistentModelIndex_row(self.h)

proc column*(self: gen_qabstractitemmodel_types.QPersistentModelIndex): cint =
  fcQPersistentModelIndex_column(self.h)

proc internalPointer*(self: gen_qabstractitemmodel_types.QPersistentModelIndex): pointer =
  fcQPersistentModelIndex_internalPointer(self.h)

proc internalId*(self: gen_qabstractitemmodel_types.QPersistentModelIndex): uint =
  fcQPersistentModelIndex_internalId(self.h)

proc parent*(self: gen_qabstractitemmodel_types.QPersistentModelIndex): gen_qabstractitemmodel_types.QModelIndex =
  gen_qabstractitemmodel_types.QModelIndex(h: fcQPersistentModelIndex_parent(self.h), owned: true)

proc sibling*(self: gen_qabstractitemmodel_types.QPersistentModelIndex, row: cint, column: cint): gen_qabstractitemmodel_types.QModelIndex =
  gen_qabstractitemmodel_types.QModelIndex(h: fcQPersistentModelIndex_sibling(self.h, row, column), owned: true)

proc child*(self: gen_qabstractitemmodel_types.QPersistentModelIndex, row: cint, column: cint): gen_qabstractitemmodel_types.QModelIndex =
  gen_qabstractitemmodel_types.QModelIndex(h: fcQPersistentModelIndex_child(self.h, row, column), owned: true)

proc data*(self: gen_qabstractitemmodel_types.QPersistentModelIndex): gen_qvariant_types.QVariant =
  gen_qvariant_types.QVariant(h: fcQPersistentModelIndex_data(self.h), owned: true)

proc flags*(self: gen_qabstractitemmodel_types.QPersistentModelIndex): cint =
  cint(fcQPersistentModelIndex_flags(self.h))

proc model*(self: gen_qabstractitemmodel_types.QPersistentModelIndex): gen_qabstractitemmodel_types.QAbstractItemModel =
  gen_qabstractitemmodel_types.QAbstractItemModel(h: fcQPersistentModelIndex_model(self.h), owned: false)

proc isValid*(self: gen_qabstractitemmodel_types.QPersistentModelIndex): bool =
  fcQPersistentModelIndex_isValid(self.h)

proc data*(self: gen_qabstractitemmodel_types.QPersistentModelIndex, role: cint): gen_qvariant_types.QVariant =
  gen_qvariant_types.QVariant(h: fcQPersistentModelIndex_data1(self.h, role), owned: true)

proc create*(T: type gen_qabstractitemmodel_types.QPersistentModelIndex): gen_qabstractitemmodel_types.QPersistentModelIndex =
  gen_qabstractitemmodel_types.QPersistentModelIndex(h: fcQPersistentModelIndex_new(), owned: true)

proc create*(T: type gen_qabstractitemmodel_types.QPersistentModelIndex,
    index: gen_qabstractitemmodel_types.QModelIndex): gen_qabstractitemmodel_types.QPersistentModelIndex =
  gen_qabstractitemmodel_types.QPersistentModelIndex(h: fcQPersistentModelIndex_new2(index.h), owned: true)

proc create*(T: type gen_qabstractitemmodel_types.QPersistentModelIndex,
    other: gen_qabstractitemmodel_types.QPersistentModelIndex): gen_qabstractitemmodel_types.QPersistentModelIndex =
  gen_qabstractitemmodel_types.QPersistentModelIndex(h: fcQPersistentModelIndex_new3(other.h), owned: true)

proc metaObject*(self: gen_qabstractitemmodel_types.QAbstractItemModel): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQAbstractItemModel_metaObject(self.h), owned: false)

proc metacast*(self: gen_qabstractitemmodel_types.QAbstractItemModel, param1: cstring): pointer =
  fcQAbstractItemModel_metacast(self.h, param1)

proc metacall*(self: gen_qabstractitemmodel_types.QAbstractItemModel, param1: cint, param2: cint, param3: pointer): cint =
  fcQAbstractItemModel_metacall(self.h, cint(param1), param2, param3)

proc tr*(_: type gen_qabstractitemmodel_types.QAbstractItemModel, s: cstring): string =
  let v_ms = fcQAbstractItemModel_tr(s)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc trUtf8*(_: type gen_qabstractitemmodel_types.QAbstractItemModel, s: cstring): string =
  let v_ms = fcQAbstractItemModel_trUtf8(s)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc hasIndex*(self: gen_qabstractitemmodel_types.QAbstractItemModel, row: cint, column: cint): bool =
  fcQAbstractItemModel_hasIndex(self.h, row, column)

proc index*(self: gen_qabstractitemmodel_types.QAbstractItemModel, row: cint, column: cint, parent: gen_qabstractitemmodel_types.QModelIndex): gen_qabstractitemmodel_types.QModelIndex =
  gen_qabstractitemmodel_types.QModelIndex(h: fcQAbstractItemModel_index(self.h, row, column, parent.h), owned: true)

proc parent*(self: gen_qabstractitemmodel_types.QAbstractItemModel, child: gen_qabstractitemmodel_types.QModelIndex): gen_qabstractitemmodel_types.QModelIndex =
  gen_qabstractitemmodel_types.QModelIndex(h: fcQAbstractItemModel_parent(self.h, child.h), owned: true)

proc sibling*(self: gen_qabstractitemmodel_types.QAbstractItemModel, row: cint, column: cint, idx: gen_qabstractitemmodel_types.QModelIndex): gen_qabstractitemmodel_types.QModelIndex =
  gen_qabstractitemmodel_types.QModelIndex(h: fcQAbstractItemModel_sibling(self.h, row, column, idx.h), owned: true)

proc rowCount*(self: gen_qabstractitemmodel_types.QAbstractItemModel, parent: gen_qabstractitemmodel_types.QModelIndex): cint =
  fcQAbstractItemModel_rowCount(self.h, parent.h)

proc columnCount*(self: gen_qabstractitemmodel_types.QAbstractItemModel, parent: gen_qabstractitemmodel_types.QModelIndex): cint =
  fcQAbstractItemModel_columnCount(self.h, parent.h)

proc hasChildren*(self: gen_qabstractitemmodel_types.QAbstractItemModel, parent: gen_qabstractitemmodel_types.QModelIndex): bool =
  fcQAbstractItemModel_hasChildren(self.h, parent.h)

proc data*(self: gen_qabstractitemmodel_types.QAbstractItemModel, index: gen_qabstractitemmodel_types.QModelIndex, role: cint): gen_qvariant_types.QVariant =
  gen_qvariant_types.QVariant(h: fcQAbstractItemModel_data(self.h, index.h, role), owned: true)

proc setData*(self: gen_qabstractitemmodel_types.QAbstractItemModel, index: gen_qabstractitemmodel_types.QModelIndex, value: gen_qvariant_types.QVariant, role: cint): bool =
  fcQAbstractItemModel_setData(self.h, index.h, value.h, role)

proc headerData*(self: gen_qabstractitemmodel_types.QAbstractItemModel, section: cint, orientation: cint, role: cint): gen_qvariant_types.QVariant =
  gen_qvariant_types.QVariant(h: fcQAbstractItemModel_headerData(self.h, section, cint(orientation), role), owned: true)

proc setHeaderData*(self: gen_qabstractitemmodel_types.QAbstractItemModel, section: cint, orientation: cint, value: gen_qvariant_types.QVariant, role: cint): bool =
  fcQAbstractItemModel_setHeaderData(self.h, section, cint(orientation), value.h, role)

proc itemData*(self: gen_qabstractitemmodel_types.QAbstractItemModel, index: gen_qabstractitemmodel_types.QModelIndex): Table[cint,gen_qvariant_types.QVariant] =
  var v_mm = fcQAbstractItemModel_itemData(self.h, index.h)
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

proc setItemData*(self: gen_qabstractitemmodel_types.QAbstractItemModel, index: gen_qabstractitemmodel_types.QModelIndex, roles: Table[cint,gen_qvariant_types.QVariant]): bool =
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

  fcQAbstractItemModel_setItemData(self.h, index.h, struct_miqt_map(len: csize_t(len(roles)),keys: if len(roles) == 0: nil else: addr(roles_Keys_CArray[0]), values: if len(roles) == 0: nil else: addr(roles_Values_CArray[0]),))

proc mimeTypes*(self: gen_qabstractitemmodel_types.QAbstractItemModel): seq[string] =
  var v_ma = fcQAbstractItemModel_mimeTypes(self.h)
  var vx_ret = newSeq[string](int(v_ma.len))
  let v_outCast = cast[ptr UncheckedArray[struct_miqt_string]](v_ma.data)
  for i in 0 ..< v_ma.len:
    let vx_lv_ms = v_outCast[i]
    let vx_lvx_ret = string.fromBytes(toOpenArrayByte(vx_lv_ms.data, 0, int(vx_lv_ms.len)-1))
    c_free(vx_lv_ms.data)
    vx_ret[i] = vx_lvx_ret
  c_free(v_ma.data)
  vx_ret

proc mimeData*(self: gen_qabstractitemmodel_types.QAbstractItemModel, indexes: seq[gen_qabstractitemmodel_types.QModelIndex]): gen_qmimedata_types.QMimeData =
  var indexes_CArray = newSeq[pointer](len(indexes))
  for i in 0..<len(indexes):
    indexes_CArray[i] = indexes[i].h

  gen_qmimedata_types.QMimeData(h: fcQAbstractItemModel_mimeData(self.h, struct_miqt_array(len: csize_t(len(indexes)), data: if len(indexes) == 0: nil else: addr(indexes_CArray[0]))), owned: false)

proc canDropMimeData*(self: gen_qabstractitemmodel_types.QAbstractItemModel, data: gen_qmimedata_types.QMimeData, action: cint, row: cint, column: cint, parent: gen_qabstractitemmodel_types.QModelIndex): bool =
  fcQAbstractItemModel_canDropMimeData(self.h, data.h, cint(action), row, column, parent.h)

proc dropMimeData*(self: gen_qabstractitemmodel_types.QAbstractItemModel, data: gen_qmimedata_types.QMimeData, action: cint, row: cint, column: cint, parent: gen_qabstractitemmodel_types.QModelIndex): bool =
  fcQAbstractItemModel_dropMimeData(self.h, data.h, cint(action), row, column, parent.h)

proc supportedDropActions*(self: gen_qabstractitemmodel_types.QAbstractItemModel): cint =
  cint(fcQAbstractItemModel_supportedDropActions(self.h))

proc supportedDragActions*(self: gen_qabstractitemmodel_types.QAbstractItemModel): cint =
  cint(fcQAbstractItemModel_supportedDragActions(self.h))

proc insertRows*(self: gen_qabstractitemmodel_types.QAbstractItemModel, row: cint, count: cint, parent: gen_qabstractitemmodel_types.QModelIndex): bool =
  fcQAbstractItemModel_insertRows(self.h, row, count, parent.h)

proc insertColumns*(self: gen_qabstractitemmodel_types.QAbstractItemModel, column: cint, count: cint, parent: gen_qabstractitemmodel_types.QModelIndex): bool =
  fcQAbstractItemModel_insertColumns(self.h, column, count, parent.h)

proc removeRows*(self: gen_qabstractitemmodel_types.QAbstractItemModel, row: cint, count: cint, parent: gen_qabstractitemmodel_types.QModelIndex): bool =
  fcQAbstractItemModel_removeRows(self.h, row, count, parent.h)

proc removeColumns*(self: gen_qabstractitemmodel_types.QAbstractItemModel, column: cint, count: cint, parent: gen_qabstractitemmodel_types.QModelIndex): bool =
  fcQAbstractItemModel_removeColumns(self.h, column, count, parent.h)

proc moveRows*(self: gen_qabstractitemmodel_types.QAbstractItemModel, sourceParent: gen_qabstractitemmodel_types.QModelIndex, sourceRow: cint, count: cint, destinationParent: gen_qabstractitemmodel_types.QModelIndex, destinationChild: cint): bool =
  fcQAbstractItemModel_moveRows(self.h, sourceParent.h, sourceRow, count, destinationParent.h, destinationChild)

proc moveColumns*(self: gen_qabstractitemmodel_types.QAbstractItemModel, sourceParent: gen_qabstractitemmodel_types.QModelIndex, sourceColumn: cint, count: cint, destinationParent: gen_qabstractitemmodel_types.QModelIndex, destinationChild: cint): bool =
  fcQAbstractItemModel_moveColumns(self.h, sourceParent.h, sourceColumn, count, destinationParent.h, destinationChild)

proc insertRow*(self: gen_qabstractitemmodel_types.QAbstractItemModel, row: cint): bool =
  fcQAbstractItemModel_insertRow(self.h, row)

proc insertColumn*(self: gen_qabstractitemmodel_types.QAbstractItemModel, column: cint): bool =
  fcQAbstractItemModel_insertColumn(self.h, column)

proc removeRow*(self: gen_qabstractitemmodel_types.QAbstractItemModel, row: cint): bool =
  fcQAbstractItemModel_removeRow(self.h, row)

proc removeColumn*(self: gen_qabstractitemmodel_types.QAbstractItemModel, column: cint): bool =
  fcQAbstractItemModel_removeColumn(self.h, column)

proc moveRow*(self: gen_qabstractitemmodel_types.QAbstractItemModel, sourceParent: gen_qabstractitemmodel_types.QModelIndex, sourceRow: cint, destinationParent: gen_qabstractitemmodel_types.QModelIndex, destinationChild: cint): bool =
  fcQAbstractItemModel_moveRow(self.h, sourceParent.h, sourceRow, destinationParent.h, destinationChild)

proc moveColumn*(self: gen_qabstractitemmodel_types.QAbstractItemModel, sourceParent: gen_qabstractitemmodel_types.QModelIndex, sourceColumn: cint, destinationParent: gen_qabstractitemmodel_types.QModelIndex, destinationChild: cint): bool =
  fcQAbstractItemModel_moveColumn(self.h, sourceParent.h, sourceColumn, destinationParent.h, destinationChild)

proc fetchMore*(self: gen_qabstractitemmodel_types.QAbstractItemModel, parent: gen_qabstractitemmodel_types.QModelIndex): void =
  fcQAbstractItemModel_fetchMore(self.h, parent.h)

proc canFetchMore*(self: gen_qabstractitemmodel_types.QAbstractItemModel, parent: gen_qabstractitemmodel_types.QModelIndex): bool =
  fcQAbstractItemModel_canFetchMore(self.h, parent.h)

proc flags*(self: gen_qabstractitemmodel_types.QAbstractItemModel, index: gen_qabstractitemmodel_types.QModelIndex): cint =
  cint(fcQAbstractItemModel_flags(self.h, index.h))

proc sort*(self: gen_qabstractitemmodel_types.QAbstractItemModel, column: cint, order: cint): void =
  fcQAbstractItemModel_sort(self.h, column, cint(order))

proc buddy*(self: gen_qabstractitemmodel_types.QAbstractItemModel, index: gen_qabstractitemmodel_types.QModelIndex): gen_qabstractitemmodel_types.QModelIndex =
  gen_qabstractitemmodel_types.QModelIndex(h: fcQAbstractItemModel_buddy(self.h, index.h), owned: true)

proc match*(self: gen_qabstractitemmodel_types.QAbstractItemModel, start: gen_qabstractitemmodel_types.QModelIndex, role: cint, value: gen_qvariant_types.QVariant, hits: cint, flags: cint): seq[gen_qabstractitemmodel_types.QModelIndex] =
  var v_ma = fcQAbstractItemModel_match(self.h, start.h, role, value.h, hits, cint(flags))
  var vx_ret = newSeq[gen_qabstractitemmodel_types.QModelIndex](int(v_ma.len))
  let v_outCast = cast[ptr UncheckedArray[pointer]](v_ma.data)
  for i in 0 ..< v_ma.len:
    vx_ret[i] = gen_qabstractitemmodel_types.QModelIndex(h: v_outCast[i], owned: true)
  c_free(v_ma.data)
  vx_ret

proc span*(self: gen_qabstractitemmodel_types.QAbstractItemModel, index: gen_qabstractitemmodel_types.QModelIndex): gen_qsize_types.QSize =
  gen_qsize_types.QSize(h: fcQAbstractItemModel_span(self.h, index.h), owned: true)

proc roleNames*(self: gen_qabstractitemmodel_types.QAbstractItemModel): Table[cint,seq[byte]] =
  var v_mm = fcQAbstractItemModel_roleNames(self.h)
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

proc checkIndex*(self: gen_qabstractitemmodel_types.QAbstractItemModel, index: gen_qabstractitemmodel_types.QModelIndex): bool =
  fcQAbstractItemModel_checkIndex(self.h, index.h)

proc dataChanged*(self: gen_qabstractitemmodel_types.QAbstractItemModel, topLeft: gen_qabstractitemmodel_types.QModelIndex, bottomRight: gen_qabstractitemmodel_types.QModelIndex): void =
  fcQAbstractItemModel_dataChanged(self.h, topLeft.h, bottomRight.h)

type QAbstractItemModeldataChangedSlot* = proc(topLeft: gen_qabstractitemmodel_types.QModelIndex, bottomRight: gen_qabstractitemmodel_types.QModelIndex)
proc cQAbstractItemModel_slot_callback_dataChanged(slot: int, topLeft: pointer, bottomRight: pointer) {.cdecl.} =
  let nimfunc = cast[ptr QAbstractItemModeldataChangedSlot](cast[pointer](slot))
  let slotval1 = gen_qabstractitemmodel_types.QModelIndex(h: topLeft, owned: false)

  let slotval2 = gen_qabstractitemmodel_types.QModelIndex(h: bottomRight, owned: false)

  nimfunc[](slotval1, slotval2)

proc cQAbstractItemModel_slot_callback_dataChanged_release(slot: int) {.cdecl.} =
  let nimfunc = cast[ref QAbstractItemModeldataChangedSlot](cast[pointer](slot))
  GC_unref(nimfunc)

proc ondataChanged*(self: gen_qabstractitemmodel_types.QAbstractItemModel, slot: QAbstractItemModeldataChangedSlot) =
  var tmp = new QAbstractItemModeldataChangedSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQAbstractItemModel_connect_dataChanged(self.h, cast[int](addr tmp[]), cQAbstractItemModel_slot_callback_dataChanged, cQAbstractItemModel_slot_callback_dataChanged_release)

proc headerDataChanged*(self: gen_qabstractitemmodel_types.QAbstractItemModel, orientation: cint, first: cint, last: cint): void =
  fcQAbstractItemModel_headerDataChanged(self.h, cint(orientation), first, last)

type QAbstractItemModelheaderDataChangedSlot* = proc(orientation: cint, first: cint, last: cint)
proc cQAbstractItemModel_slot_callback_headerDataChanged(slot: int, orientation: cint, first: cint, last: cint) {.cdecl.} =
  let nimfunc = cast[ptr QAbstractItemModelheaderDataChangedSlot](cast[pointer](slot))
  let slotval1 = cint(orientation)

  let slotval2 = first

  let slotval3 = last

  nimfunc[](slotval1, slotval2, slotval3)

proc cQAbstractItemModel_slot_callback_headerDataChanged_release(slot: int) {.cdecl.} =
  let nimfunc = cast[ref QAbstractItemModelheaderDataChangedSlot](cast[pointer](slot))
  GC_unref(nimfunc)

proc onheaderDataChanged*(self: gen_qabstractitemmodel_types.QAbstractItemModel, slot: QAbstractItemModelheaderDataChangedSlot) =
  var tmp = new QAbstractItemModelheaderDataChangedSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQAbstractItemModel_connect_headerDataChanged(self.h, cast[int](addr tmp[]), cQAbstractItemModel_slot_callback_headerDataChanged, cQAbstractItemModel_slot_callback_headerDataChanged_release)

proc layoutChanged*(self: gen_qabstractitemmodel_types.QAbstractItemModel): void =
  fcQAbstractItemModel_layoutChanged(self.h)

type QAbstractItemModellayoutChangedSlot* = proc()
proc cQAbstractItemModel_slot_callback_layoutChanged(slot: int) {.cdecl.} =
  let nimfunc = cast[ptr QAbstractItemModellayoutChangedSlot](cast[pointer](slot))
  nimfunc[]()

proc cQAbstractItemModel_slot_callback_layoutChanged_release(slot: int) {.cdecl.} =
  let nimfunc = cast[ref QAbstractItemModellayoutChangedSlot](cast[pointer](slot))
  GC_unref(nimfunc)

proc onlayoutChanged*(self: gen_qabstractitemmodel_types.QAbstractItemModel, slot: QAbstractItemModellayoutChangedSlot) =
  var tmp = new QAbstractItemModellayoutChangedSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQAbstractItemModel_connect_layoutChanged(self.h, cast[int](addr tmp[]), cQAbstractItemModel_slot_callback_layoutChanged, cQAbstractItemModel_slot_callback_layoutChanged_release)

proc layoutAboutToBeChanged*(self: gen_qabstractitemmodel_types.QAbstractItemModel): void =
  fcQAbstractItemModel_layoutAboutToBeChanged(self.h)

type QAbstractItemModellayoutAboutToBeChangedSlot* = proc()
proc cQAbstractItemModel_slot_callback_layoutAboutToBeChanged(slot: int) {.cdecl.} =
  let nimfunc = cast[ptr QAbstractItemModellayoutAboutToBeChangedSlot](cast[pointer](slot))
  nimfunc[]()

proc cQAbstractItemModel_slot_callback_layoutAboutToBeChanged_release(slot: int) {.cdecl.} =
  let nimfunc = cast[ref QAbstractItemModellayoutAboutToBeChangedSlot](cast[pointer](slot))
  GC_unref(nimfunc)

proc onlayoutAboutToBeChanged*(self: gen_qabstractitemmodel_types.QAbstractItemModel, slot: QAbstractItemModellayoutAboutToBeChangedSlot) =
  var tmp = new QAbstractItemModellayoutAboutToBeChangedSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQAbstractItemModel_connect_layoutAboutToBeChanged(self.h, cast[int](addr tmp[]), cQAbstractItemModel_slot_callback_layoutAboutToBeChanged, cQAbstractItemModel_slot_callback_layoutAboutToBeChanged_release)

proc submit*(self: gen_qabstractitemmodel_types.QAbstractItemModel): bool =
  fcQAbstractItemModel_submit(self.h)

proc revert*(self: gen_qabstractitemmodel_types.QAbstractItemModel): void =
  fcQAbstractItemModel_revert(self.h)

proc tr*(_: type gen_qabstractitemmodel_types.QAbstractItemModel, s: cstring, c: cstring): string =
  let v_ms = fcQAbstractItemModel_tr2(s, c)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc tr*(_: type gen_qabstractitemmodel_types.QAbstractItemModel, s: cstring, c: cstring, n: cint): string =
  let v_ms = fcQAbstractItemModel_tr3(s, c, n)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc trUtf8*(_: type gen_qabstractitemmodel_types.QAbstractItemModel, s: cstring, c: cstring): string =
  let v_ms = fcQAbstractItemModel_trUtf82(s, c)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc trUtf8*(_: type gen_qabstractitemmodel_types.QAbstractItemModel, s: cstring, c: cstring, n: cint): string =
  let v_ms = fcQAbstractItemModel_trUtf83(s, c, n)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc hasIndex*(self: gen_qabstractitemmodel_types.QAbstractItemModel, row: cint, column: cint, parent: gen_qabstractitemmodel_types.QModelIndex): bool =
  fcQAbstractItemModel_hasIndex3(self.h, row, column, parent.h)

proc insertRow*(self: gen_qabstractitemmodel_types.QAbstractItemModel, row: cint, parent: gen_qabstractitemmodel_types.QModelIndex): bool =
  fcQAbstractItemModel_insertRow2(self.h, row, parent.h)

proc insertColumn*(self: gen_qabstractitemmodel_types.QAbstractItemModel, column: cint, parent: gen_qabstractitemmodel_types.QModelIndex): bool =
  fcQAbstractItemModel_insertColumn2(self.h, column, parent.h)

proc removeRow*(self: gen_qabstractitemmodel_types.QAbstractItemModel, row: cint, parent: gen_qabstractitemmodel_types.QModelIndex): bool =
  fcQAbstractItemModel_removeRow2(self.h, row, parent.h)

proc removeColumn*(self: gen_qabstractitemmodel_types.QAbstractItemModel, column: cint, parent: gen_qabstractitemmodel_types.QModelIndex): bool =
  fcQAbstractItemModel_removeColumn2(self.h, column, parent.h)

proc checkIndex*(self: gen_qabstractitemmodel_types.QAbstractItemModel, index: gen_qabstractitemmodel_types.QModelIndex, options: cint): bool =
  fcQAbstractItemModel_checkIndex2(self.h, index.h, cint(options))

proc dataChanged*(self: gen_qabstractitemmodel_types.QAbstractItemModel, topLeft: gen_qabstractitemmodel_types.QModelIndex, bottomRight: gen_qabstractitemmodel_types.QModelIndex, roles: seq[cint]): void =
  var roles_CArray = newSeq[cint](len(roles))
  for i in 0..<len(roles):
    roles_CArray[i] = roles[i]

  fcQAbstractItemModel_dataChanged3(self.h, topLeft.h, bottomRight.h, struct_miqt_array(len: csize_t(len(roles)), data: if len(roles) == 0: nil else: addr(roles_CArray[0])))

type QAbstractItemModeldataChanged3Slot* = proc(topLeft: gen_qabstractitemmodel_types.QModelIndex, bottomRight: gen_qabstractitemmodel_types.QModelIndex, roles: seq[cint])
proc cQAbstractItemModel_slot_callback_dataChanged3(slot: int, topLeft: pointer, bottomRight: pointer, roles: struct_miqt_array) {.cdecl.} =
  let nimfunc = cast[ptr QAbstractItemModeldataChanged3Slot](cast[pointer](slot))
  let slotval1 = gen_qabstractitemmodel_types.QModelIndex(h: topLeft, owned: false)

  let slotval2 = gen_qabstractitemmodel_types.QModelIndex(h: bottomRight, owned: false)

  var vroles_ma = roles
  var vrolesx_ret = newSeq[cint](int(vroles_ma.len))
  let vroles_outCast = cast[ptr UncheckedArray[cint]](vroles_ma.data)
  for i in 0 ..< vroles_ma.len:
    vrolesx_ret[i] = vroles_outCast[i]
  c_free(vroles_ma.data)
  let slotval3 = vrolesx_ret

  nimfunc[](slotval1, slotval2, slotval3)

proc cQAbstractItemModel_slot_callback_dataChanged3_release(slot: int) {.cdecl.} =
  let nimfunc = cast[ref QAbstractItemModeldataChanged3Slot](cast[pointer](slot))
  GC_unref(nimfunc)

proc ondataChanged*(self: gen_qabstractitemmodel_types.QAbstractItemModel, slot: QAbstractItemModeldataChanged3Slot) =
  var tmp = new QAbstractItemModeldataChanged3Slot
  tmp[] = slot
  GC_ref(tmp)
  fcQAbstractItemModel_connect_dataChanged3(self.h, cast[int](addr tmp[]), cQAbstractItemModel_slot_callback_dataChanged3, cQAbstractItemModel_slot_callback_dataChanged3_release)

proc layoutChanged*(self: gen_qabstractitemmodel_types.QAbstractItemModel, parents: seq[gen_qabstractitemmodel_types.QPersistentModelIndex]): void =
  var parents_CArray = newSeq[pointer](len(parents))
  for i in 0..<len(parents):
    parents_CArray[i] = parents[i].h

  fcQAbstractItemModel_layoutChanged1(self.h, struct_miqt_array(len: csize_t(len(parents)), data: if len(parents) == 0: nil else: addr(parents_CArray[0])))

type QAbstractItemModellayoutChanged1Slot* = proc(parents: seq[gen_qabstractitemmodel_types.QPersistentModelIndex])
proc cQAbstractItemModel_slot_callback_layoutChanged1(slot: int, parents: struct_miqt_array) {.cdecl.} =
  let nimfunc = cast[ptr QAbstractItemModellayoutChanged1Slot](cast[pointer](slot))
  var vparents_ma = parents
  var vparentsx_ret = newSeq[gen_qabstractitemmodel_types.QPersistentModelIndex](int(vparents_ma.len))
  let vparents_outCast = cast[ptr UncheckedArray[pointer]](vparents_ma.data)
  for i in 0 ..< vparents_ma.len:
    vparentsx_ret[i] = gen_qabstractitemmodel_types.QPersistentModelIndex(h: vparents_outCast[i], owned: true)
  c_free(vparents_ma.data)
  let slotval1 = vparentsx_ret

  nimfunc[](slotval1)

proc cQAbstractItemModel_slot_callback_layoutChanged1_release(slot: int) {.cdecl.} =
  let nimfunc = cast[ref QAbstractItemModellayoutChanged1Slot](cast[pointer](slot))
  GC_unref(nimfunc)

proc onlayoutChanged*(self: gen_qabstractitemmodel_types.QAbstractItemModel, slot: QAbstractItemModellayoutChanged1Slot) =
  var tmp = new QAbstractItemModellayoutChanged1Slot
  tmp[] = slot
  GC_ref(tmp)
  fcQAbstractItemModel_connect_layoutChanged1(self.h, cast[int](addr tmp[]), cQAbstractItemModel_slot_callback_layoutChanged1, cQAbstractItemModel_slot_callback_layoutChanged1_release)

proc layoutChanged*(self: gen_qabstractitemmodel_types.QAbstractItemModel, parents: seq[gen_qabstractitemmodel_types.QPersistentModelIndex], hint: cint): void =
  var parents_CArray = newSeq[pointer](len(parents))
  for i in 0..<len(parents):
    parents_CArray[i] = parents[i].h

  fcQAbstractItemModel_layoutChanged2(self.h, struct_miqt_array(len: csize_t(len(parents)), data: if len(parents) == 0: nil else: addr(parents_CArray[0])), cint(hint))

type QAbstractItemModellayoutChanged2Slot* = proc(parents: seq[gen_qabstractitemmodel_types.QPersistentModelIndex], hint: cint)
proc cQAbstractItemModel_slot_callback_layoutChanged2(slot: int, parents: struct_miqt_array, hint: cint) {.cdecl.} =
  let nimfunc = cast[ptr QAbstractItemModellayoutChanged2Slot](cast[pointer](slot))
  var vparents_ma = parents
  var vparentsx_ret = newSeq[gen_qabstractitemmodel_types.QPersistentModelIndex](int(vparents_ma.len))
  let vparents_outCast = cast[ptr UncheckedArray[pointer]](vparents_ma.data)
  for i in 0 ..< vparents_ma.len:
    vparentsx_ret[i] = gen_qabstractitemmodel_types.QPersistentModelIndex(h: vparents_outCast[i], owned: true)
  c_free(vparents_ma.data)
  let slotval1 = vparentsx_ret

  let slotval2 = cint(hint)

  nimfunc[](slotval1, slotval2)

proc cQAbstractItemModel_slot_callback_layoutChanged2_release(slot: int) {.cdecl.} =
  let nimfunc = cast[ref QAbstractItemModellayoutChanged2Slot](cast[pointer](slot))
  GC_unref(nimfunc)

proc onlayoutChanged*(self: gen_qabstractitemmodel_types.QAbstractItemModel, slot: QAbstractItemModellayoutChanged2Slot) =
  var tmp = new QAbstractItemModellayoutChanged2Slot
  tmp[] = slot
  GC_ref(tmp)
  fcQAbstractItemModel_connect_layoutChanged2(self.h, cast[int](addr tmp[]), cQAbstractItemModel_slot_callback_layoutChanged2, cQAbstractItemModel_slot_callback_layoutChanged2_release)

proc layoutAboutToBeChanged*(self: gen_qabstractitemmodel_types.QAbstractItemModel, parents: seq[gen_qabstractitemmodel_types.QPersistentModelIndex]): void =
  var parents_CArray = newSeq[pointer](len(parents))
  for i in 0..<len(parents):
    parents_CArray[i] = parents[i].h

  fcQAbstractItemModel_layoutAboutToBeChanged1(self.h, struct_miqt_array(len: csize_t(len(parents)), data: if len(parents) == 0: nil else: addr(parents_CArray[0])))

type QAbstractItemModellayoutAboutToBeChanged1Slot* = proc(parents: seq[gen_qabstractitemmodel_types.QPersistentModelIndex])
proc cQAbstractItemModel_slot_callback_layoutAboutToBeChanged1(slot: int, parents: struct_miqt_array) {.cdecl.} =
  let nimfunc = cast[ptr QAbstractItemModellayoutAboutToBeChanged1Slot](cast[pointer](slot))
  var vparents_ma = parents
  var vparentsx_ret = newSeq[gen_qabstractitemmodel_types.QPersistentModelIndex](int(vparents_ma.len))
  let vparents_outCast = cast[ptr UncheckedArray[pointer]](vparents_ma.data)
  for i in 0 ..< vparents_ma.len:
    vparentsx_ret[i] = gen_qabstractitemmodel_types.QPersistentModelIndex(h: vparents_outCast[i], owned: true)
  c_free(vparents_ma.data)
  let slotval1 = vparentsx_ret

  nimfunc[](slotval1)

proc cQAbstractItemModel_slot_callback_layoutAboutToBeChanged1_release(slot: int) {.cdecl.} =
  let nimfunc = cast[ref QAbstractItemModellayoutAboutToBeChanged1Slot](cast[pointer](slot))
  GC_unref(nimfunc)

proc onlayoutAboutToBeChanged*(self: gen_qabstractitemmodel_types.QAbstractItemModel, slot: QAbstractItemModellayoutAboutToBeChanged1Slot) =
  var tmp = new QAbstractItemModellayoutAboutToBeChanged1Slot
  tmp[] = slot
  GC_ref(tmp)
  fcQAbstractItemModel_connect_layoutAboutToBeChanged1(self.h, cast[int](addr tmp[]), cQAbstractItemModel_slot_callback_layoutAboutToBeChanged1, cQAbstractItemModel_slot_callback_layoutAboutToBeChanged1_release)

proc layoutAboutToBeChanged*(self: gen_qabstractitemmodel_types.QAbstractItemModel, parents: seq[gen_qabstractitemmodel_types.QPersistentModelIndex], hint: cint): void =
  var parents_CArray = newSeq[pointer](len(parents))
  for i in 0..<len(parents):
    parents_CArray[i] = parents[i].h

  fcQAbstractItemModel_layoutAboutToBeChanged2(self.h, struct_miqt_array(len: csize_t(len(parents)), data: if len(parents) == 0: nil else: addr(parents_CArray[0])), cint(hint))

type QAbstractItemModellayoutAboutToBeChanged2Slot* = proc(parents: seq[gen_qabstractitemmodel_types.QPersistentModelIndex], hint: cint)
proc cQAbstractItemModel_slot_callback_layoutAboutToBeChanged2(slot: int, parents: struct_miqt_array, hint: cint) {.cdecl.} =
  let nimfunc = cast[ptr QAbstractItemModellayoutAboutToBeChanged2Slot](cast[pointer](slot))
  var vparents_ma = parents
  var vparentsx_ret = newSeq[gen_qabstractitemmodel_types.QPersistentModelIndex](int(vparents_ma.len))
  let vparents_outCast = cast[ptr UncheckedArray[pointer]](vparents_ma.data)
  for i in 0 ..< vparents_ma.len:
    vparentsx_ret[i] = gen_qabstractitemmodel_types.QPersistentModelIndex(h: vparents_outCast[i], owned: true)
  c_free(vparents_ma.data)
  let slotval1 = vparentsx_ret

  let slotval2 = cint(hint)

  nimfunc[](slotval1, slotval2)

proc cQAbstractItemModel_slot_callback_layoutAboutToBeChanged2_release(slot: int) {.cdecl.} =
  let nimfunc = cast[ref QAbstractItemModellayoutAboutToBeChanged2Slot](cast[pointer](slot))
  GC_unref(nimfunc)

proc onlayoutAboutToBeChanged*(self: gen_qabstractitemmodel_types.QAbstractItemModel, slot: QAbstractItemModellayoutAboutToBeChanged2Slot) =
  var tmp = new QAbstractItemModellayoutAboutToBeChanged2Slot
  tmp[] = slot
  GC_ref(tmp)
  fcQAbstractItemModel_connect_layoutAboutToBeChanged2(self.h, cast[int](addr tmp[]), cQAbstractItemModel_slot_callback_layoutAboutToBeChanged2, cQAbstractItemModel_slot_callback_layoutAboutToBeChanged2_release)

type QAbstractItemModelmetaObjectProc* = proc(self: QAbstractItemModel): gen_qobjectdefs_types.QMetaObject {.raises: [], gcsafe.}
type QAbstractItemModelmetacastProc* = proc(self: QAbstractItemModel, param1: cstring): pointer {.raises: [], gcsafe.}
type QAbstractItemModelmetacallProc* = proc(self: QAbstractItemModel, param1: cint, param2: cint, param3: pointer): cint {.raises: [], gcsafe.}
type QAbstractItemModelindexProc* = proc(self: QAbstractItemModel, row: cint, column: cint, parent: gen_qabstractitemmodel_types.QModelIndex): gen_qabstractitemmodel_types.QModelIndex {.raises: [], gcsafe.}
type QAbstractItemModelparentProc* = proc(self: QAbstractItemModel, child: gen_qabstractitemmodel_types.QModelIndex): gen_qabstractitemmodel_types.QModelIndex {.raises: [], gcsafe.}
type QAbstractItemModelsiblingProc* = proc(self: QAbstractItemModel, row: cint, column: cint, idx: gen_qabstractitemmodel_types.QModelIndex): gen_qabstractitemmodel_types.QModelIndex {.raises: [], gcsafe.}
type QAbstractItemModelrowCountProc* = proc(self: QAbstractItemModel, parent: gen_qabstractitemmodel_types.QModelIndex): cint {.raises: [], gcsafe.}
type QAbstractItemModelcolumnCountProc* = proc(self: QAbstractItemModel, parent: gen_qabstractitemmodel_types.QModelIndex): cint {.raises: [], gcsafe.}
type QAbstractItemModelhasChildrenProc* = proc(self: QAbstractItemModel, parent: gen_qabstractitemmodel_types.QModelIndex): bool {.raises: [], gcsafe.}
type QAbstractItemModeldataProc* = proc(self: QAbstractItemModel, index: gen_qabstractitemmodel_types.QModelIndex, role: cint): gen_qvariant_types.QVariant {.raises: [], gcsafe.}
type QAbstractItemModelsetDataProc* = proc(self: QAbstractItemModel, index: gen_qabstractitemmodel_types.QModelIndex, value: gen_qvariant_types.QVariant, role: cint): bool {.raises: [], gcsafe.}
type QAbstractItemModelheaderDataProc* = proc(self: QAbstractItemModel, section: cint, orientation: cint, role: cint): gen_qvariant_types.QVariant {.raises: [], gcsafe.}
type QAbstractItemModelsetHeaderDataProc* = proc(self: QAbstractItemModel, section: cint, orientation: cint, value: gen_qvariant_types.QVariant, role: cint): bool {.raises: [], gcsafe.}
type QAbstractItemModelitemDataProc* = proc(self: QAbstractItemModel, index: gen_qabstractitemmodel_types.QModelIndex): Table[cint,gen_qvariant_types.QVariant] {.raises: [], gcsafe.}
type QAbstractItemModelsetItemDataProc* = proc(self: QAbstractItemModel, index: gen_qabstractitemmodel_types.QModelIndex, roles: Table[cint,gen_qvariant_types.QVariant]): bool {.raises: [], gcsafe.}
type QAbstractItemModelmimeTypesProc* = proc(self: QAbstractItemModel): seq[string] {.raises: [], gcsafe.}
type QAbstractItemModelmimeDataProc* = proc(self: QAbstractItemModel, indexes: seq[gen_qabstractitemmodel_types.QModelIndex]): gen_qmimedata_types.QMimeData {.raises: [], gcsafe.}
type QAbstractItemModelcanDropMimeDataProc* = proc(self: QAbstractItemModel, data: gen_qmimedata_types.QMimeData, action: cint, row: cint, column: cint, parent: gen_qabstractitemmodel_types.QModelIndex): bool {.raises: [], gcsafe.}
type QAbstractItemModeldropMimeDataProc* = proc(self: QAbstractItemModel, data: gen_qmimedata_types.QMimeData, action: cint, row: cint, column: cint, parent: gen_qabstractitemmodel_types.QModelIndex): bool {.raises: [], gcsafe.}
type QAbstractItemModelsupportedDropActionsProc* = proc(self: QAbstractItemModel): cint {.raises: [], gcsafe.}
type QAbstractItemModelsupportedDragActionsProc* = proc(self: QAbstractItemModel): cint {.raises: [], gcsafe.}
type QAbstractItemModelinsertRowsProc* = proc(self: QAbstractItemModel, row: cint, count: cint, parent: gen_qabstractitemmodel_types.QModelIndex): bool {.raises: [], gcsafe.}
type QAbstractItemModelinsertColumnsProc* = proc(self: QAbstractItemModel, column: cint, count: cint, parent: gen_qabstractitemmodel_types.QModelIndex): bool {.raises: [], gcsafe.}
type QAbstractItemModelremoveRowsProc* = proc(self: QAbstractItemModel, row: cint, count: cint, parent: gen_qabstractitemmodel_types.QModelIndex): bool {.raises: [], gcsafe.}
type QAbstractItemModelremoveColumnsProc* = proc(self: QAbstractItemModel, column: cint, count: cint, parent: gen_qabstractitemmodel_types.QModelIndex): bool {.raises: [], gcsafe.}
type QAbstractItemModelmoveRowsProc* = proc(self: QAbstractItemModel, sourceParent: gen_qabstractitemmodel_types.QModelIndex, sourceRow: cint, count: cint, destinationParent: gen_qabstractitemmodel_types.QModelIndex, destinationChild: cint): bool {.raises: [], gcsafe.}
type QAbstractItemModelmoveColumnsProc* = proc(self: QAbstractItemModel, sourceParent: gen_qabstractitemmodel_types.QModelIndex, sourceColumn: cint, count: cint, destinationParent: gen_qabstractitemmodel_types.QModelIndex, destinationChild: cint): bool {.raises: [], gcsafe.}
type QAbstractItemModelfetchMoreProc* = proc(self: QAbstractItemModel, parent: gen_qabstractitemmodel_types.QModelIndex): void {.raises: [], gcsafe.}
type QAbstractItemModelcanFetchMoreProc* = proc(self: QAbstractItemModel, parent: gen_qabstractitemmodel_types.QModelIndex): bool {.raises: [], gcsafe.}
type QAbstractItemModelflagsProc* = proc(self: QAbstractItemModel, index: gen_qabstractitemmodel_types.QModelIndex): cint {.raises: [], gcsafe.}
type QAbstractItemModelsortProc* = proc(self: QAbstractItemModel, column: cint, order: cint): void {.raises: [], gcsafe.}
type QAbstractItemModelbuddyProc* = proc(self: QAbstractItemModel, index: gen_qabstractitemmodel_types.QModelIndex): gen_qabstractitemmodel_types.QModelIndex {.raises: [], gcsafe.}
type QAbstractItemModelmatchProc* = proc(self: QAbstractItemModel, start: gen_qabstractitemmodel_types.QModelIndex, role: cint, value: gen_qvariant_types.QVariant, hits: cint, flags: cint): seq[gen_qabstractitemmodel_types.QModelIndex] {.raises: [], gcsafe.}
type QAbstractItemModelspanProc* = proc(self: QAbstractItemModel, index: gen_qabstractitemmodel_types.QModelIndex): gen_qsize_types.QSize {.raises: [], gcsafe.}
type QAbstractItemModelroleNamesProc* = proc(self: QAbstractItemModel): Table[cint,seq[byte]] {.raises: [], gcsafe.}
type QAbstractItemModelsubmitProc* = proc(self: QAbstractItemModel): bool {.raises: [], gcsafe.}
type QAbstractItemModelrevertProc* = proc(self: QAbstractItemModel): void {.raises: [], gcsafe.}
type QAbstractItemModeleventProc* = proc(self: QAbstractItemModel, event: gen_qcoreevent_types.QEvent): bool {.raises: [], gcsafe.}
type QAbstractItemModeleventFilterProc* = proc(self: QAbstractItemModel, watched: gen_qobject_types.QObject, event: gen_qcoreevent_types.QEvent): bool {.raises: [], gcsafe.}
type QAbstractItemModeltimerEventProc* = proc(self: QAbstractItemModel, event: gen_qcoreevent_types.QTimerEvent): void {.raises: [], gcsafe.}
type QAbstractItemModelchildEventProc* = proc(self: QAbstractItemModel, event: gen_qcoreevent_types.QChildEvent): void {.raises: [], gcsafe.}
type QAbstractItemModelcustomEventProc* = proc(self: QAbstractItemModel, event: gen_qcoreevent_types.QEvent): void {.raises: [], gcsafe.}
type QAbstractItemModelconnectNotifyProc* = proc(self: QAbstractItemModel, signal: gen_qmetaobject_types.QMetaMethod): void {.raises: [], gcsafe.}
type QAbstractItemModeldisconnectNotifyProc* = proc(self: QAbstractItemModel, signal: gen_qmetaobject_types.QMetaMethod): void {.raises: [], gcsafe.}
type QAbstractItemModelVTable* {.inheritable, pure.} = object
  vtbl: cQAbstractItemModelVTable
  metaObject*: QAbstractItemModelmetaObjectProc
  metacast*: QAbstractItemModelmetacastProc
  metacall*: QAbstractItemModelmetacallProc
  index*: QAbstractItemModelindexProc
  parent*: QAbstractItemModelparentProc
  sibling*: QAbstractItemModelsiblingProc
  rowCount*: QAbstractItemModelrowCountProc
  columnCount*: QAbstractItemModelcolumnCountProc
  hasChildren*: QAbstractItemModelhasChildrenProc
  data*: QAbstractItemModeldataProc
  setData*: QAbstractItemModelsetDataProc
  headerData*: QAbstractItemModelheaderDataProc
  setHeaderData*: QAbstractItemModelsetHeaderDataProc
  itemData*: QAbstractItemModelitemDataProc
  setItemData*: QAbstractItemModelsetItemDataProc
  mimeTypes*: QAbstractItemModelmimeTypesProc
  mimeData*: QAbstractItemModelmimeDataProc
  canDropMimeData*: QAbstractItemModelcanDropMimeDataProc
  dropMimeData*: QAbstractItemModeldropMimeDataProc
  supportedDropActions*: QAbstractItemModelsupportedDropActionsProc
  supportedDragActions*: QAbstractItemModelsupportedDragActionsProc
  insertRows*: QAbstractItemModelinsertRowsProc
  insertColumns*: QAbstractItemModelinsertColumnsProc
  removeRows*: QAbstractItemModelremoveRowsProc
  removeColumns*: QAbstractItemModelremoveColumnsProc
  moveRows*: QAbstractItemModelmoveRowsProc
  moveColumns*: QAbstractItemModelmoveColumnsProc
  fetchMore*: QAbstractItemModelfetchMoreProc
  canFetchMore*: QAbstractItemModelcanFetchMoreProc
  flags*: QAbstractItemModelflagsProc
  sort*: QAbstractItemModelsortProc
  buddy*: QAbstractItemModelbuddyProc
  match*: QAbstractItemModelmatchProc
  span*: QAbstractItemModelspanProc
  roleNames*: QAbstractItemModelroleNamesProc
  submit*: QAbstractItemModelsubmitProc
  revert*: QAbstractItemModelrevertProc
  event*: QAbstractItemModeleventProc
  eventFilter*: QAbstractItemModeleventFilterProc
  timerEvent*: QAbstractItemModeltimerEventProc
  childEvent*: QAbstractItemModelchildEventProc
  customEvent*: QAbstractItemModelcustomEventProc
  connectNotify*: QAbstractItemModelconnectNotifyProc
  disconnectNotify*: QAbstractItemModeldisconnectNotifyProc
proc QAbstractItemModelmetaObject*(self: gen_qabstractitemmodel_types.QAbstractItemModel): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQAbstractItemModel_virtualbase_metaObject(self.h), owned: false)

proc cQAbstractItemModel_vtable_callback_metaObject(self: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QAbstractItemModelVTable](fcQAbstractItemModel_vdata(self))
  let self = QAbstractItemModel(h: self)
  var virtualReturn = vtbl[].metaObject(self)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc QAbstractItemModelmetacast*(self: gen_qabstractitemmodel_types.QAbstractItemModel, param1: cstring): pointer =
  fcQAbstractItemModel_virtualbase_metacast(self.h, param1)

proc cQAbstractItemModel_vtable_callback_metacast(self: pointer, param1: cstring): pointer {.cdecl.} =
  let vtbl = cast[ptr QAbstractItemModelVTable](fcQAbstractItemModel_vdata(self))
  let self = QAbstractItemModel(h: self)
  let slotval1 = (param1)
  var virtualReturn = vtbl[].metacast(self, slotval1)
  virtualReturn

proc QAbstractItemModelmetacall*(self: gen_qabstractitemmodel_types.QAbstractItemModel, param1: cint, param2: cint, param3: pointer): cint =
  fcQAbstractItemModel_virtualbase_metacall(self.h, cint(param1), param2, param3)

proc cQAbstractItemModel_vtable_callback_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.cdecl.} =
  let vtbl = cast[ptr QAbstractItemModelVTable](fcQAbstractItemModel_vdata(self))
  let self = QAbstractItemModel(h: self)
  let slotval1 = cint(param1)
  let slotval2 = param2
  let slotval3 = param3
  var virtualReturn = vtbl[].metacall(self, slotval1, slotval2, slotval3)
  virtualReturn

proc cQAbstractItemModel_vtable_callback_index(self: pointer, row: cint, column: cint, parent: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QAbstractItemModelVTable](fcQAbstractItemModel_vdata(self))
  let self = QAbstractItemModel(h: self)
  let slotval1 = row
  let slotval2 = column
  let slotval3 = gen_qabstractitemmodel_types.QModelIndex(h: parent, owned: false)
  var virtualReturn = vtbl[].index(self, slotval1, slotval2, slotval3)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc cQAbstractItemModel_vtable_callback_parent(self: pointer, child: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QAbstractItemModelVTable](fcQAbstractItemModel_vdata(self))
  let self = QAbstractItemModel(h: self)
  let slotval1 = gen_qabstractitemmodel_types.QModelIndex(h: child, owned: false)
  var virtualReturn = vtbl[].parent(self, slotval1)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc QAbstractItemModelsibling*(self: gen_qabstractitemmodel_types.QAbstractItemModel, row: cint, column: cint, idx: gen_qabstractitemmodel_types.QModelIndex): gen_qabstractitemmodel_types.QModelIndex =
  gen_qabstractitemmodel_types.QModelIndex(h: fcQAbstractItemModel_virtualbase_sibling(self.h, row, column, idx.h), owned: true)

proc cQAbstractItemModel_vtable_callback_sibling(self: pointer, row: cint, column: cint, idx: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QAbstractItemModelVTable](fcQAbstractItemModel_vdata(self))
  let self = QAbstractItemModel(h: self)
  let slotval1 = row
  let slotval2 = column
  let slotval3 = gen_qabstractitemmodel_types.QModelIndex(h: idx, owned: false)
  var virtualReturn = vtbl[].sibling(self, slotval1, slotval2, slotval3)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc cQAbstractItemModel_vtable_callback_rowCount(self: pointer, parent: pointer): cint {.cdecl.} =
  let vtbl = cast[ptr QAbstractItemModelVTable](fcQAbstractItemModel_vdata(self))
  let self = QAbstractItemModel(h: self)
  let slotval1 = gen_qabstractitemmodel_types.QModelIndex(h: parent, owned: false)
  var virtualReturn = vtbl[].rowCount(self, slotval1)
  virtualReturn

proc cQAbstractItemModel_vtable_callback_columnCount(self: pointer, parent: pointer): cint {.cdecl.} =
  let vtbl = cast[ptr QAbstractItemModelVTable](fcQAbstractItemModel_vdata(self))
  let self = QAbstractItemModel(h: self)
  let slotval1 = gen_qabstractitemmodel_types.QModelIndex(h: parent, owned: false)
  var virtualReturn = vtbl[].columnCount(self, slotval1)
  virtualReturn

proc QAbstractItemModelhasChildren*(self: gen_qabstractitemmodel_types.QAbstractItemModel, parent: gen_qabstractitemmodel_types.QModelIndex): bool =
  fcQAbstractItemModel_virtualbase_hasChildren(self.h, parent.h)

proc cQAbstractItemModel_vtable_callback_hasChildren(self: pointer, parent: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QAbstractItemModelVTable](fcQAbstractItemModel_vdata(self))
  let self = QAbstractItemModel(h: self)
  let slotval1 = gen_qabstractitemmodel_types.QModelIndex(h: parent, owned: false)
  var virtualReturn = vtbl[].hasChildren(self, slotval1)
  virtualReturn

proc cQAbstractItemModel_vtable_callback_data(self: pointer, index: pointer, role: cint): pointer {.cdecl.} =
  let vtbl = cast[ptr QAbstractItemModelVTable](fcQAbstractItemModel_vdata(self))
  let self = QAbstractItemModel(h: self)
  let slotval1 = gen_qabstractitemmodel_types.QModelIndex(h: index, owned: false)
  let slotval2 = role
  var virtualReturn = vtbl[].data(self, slotval1, slotval2)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc QAbstractItemModelsetData*(self: gen_qabstractitemmodel_types.QAbstractItemModel, index: gen_qabstractitemmodel_types.QModelIndex, value: gen_qvariant_types.QVariant, role: cint): bool =
  fcQAbstractItemModel_virtualbase_setData(self.h, index.h, value.h, role)

proc cQAbstractItemModel_vtable_callback_setData(self: pointer, index: pointer, value: pointer, role: cint): bool {.cdecl.} =
  let vtbl = cast[ptr QAbstractItemModelVTable](fcQAbstractItemModel_vdata(self))
  let self = QAbstractItemModel(h: self)
  let slotval1 = gen_qabstractitemmodel_types.QModelIndex(h: index, owned: false)
  let slotval2 = gen_qvariant_types.QVariant(h: value, owned: false)
  let slotval3 = role
  var virtualReturn = vtbl[].setData(self, slotval1, slotval2, slotval3)
  virtualReturn

proc QAbstractItemModelheaderData*(self: gen_qabstractitemmodel_types.QAbstractItemModel, section: cint, orientation: cint, role: cint): gen_qvariant_types.QVariant =
  gen_qvariant_types.QVariant(h: fcQAbstractItemModel_virtualbase_headerData(self.h, section, cint(orientation), role), owned: true)

proc cQAbstractItemModel_vtable_callback_headerData(self: pointer, section: cint, orientation: cint, role: cint): pointer {.cdecl.} =
  let vtbl = cast[ptr QAbstractItemModelVTable](fcQAbstractItemModel_vdata(self))
  let self = QAbstractItemModel(h: self)
  let slotval1 = section
  let slotval2 = cint(orientation)
  let slotval3 = role
  var virtualReturn = vtbl[].headerData(self, slotval1, slotval2, slotval3)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc QAbstractItemModelsetHeaderData*(self: gen_qabstractitemmodel_types.QAbstractItemModel, section: cint, orientation: cint, value: gen_qvariant_types.QVariant, role: cint): bool =
  fcQAbstractItemModel_virtualbase_setHeaderData(self.h, section, cint(orientation), value.h, role)

proc cQAbstractItemModel_vtable_callback_setHeaderData(self: pointer, section: cint, orientation: cint, value: pointer, role: cint): bool {.cdecl.} =
  let vtbl = cast[ptr QAbstractItemModelVTable](fcQAbstractItemModel_vdata(self))
  let self = QAbstractItemModel(h: self)
  let slotval1 = section
  let slotval2 = cint(orientation)
  let slotval3 = gen_qvariant_types.QVariant(h: value, owned: false)
  let slotval4 = role
  var virtualReturn = vtbl[].setHeaderData(self, slotval1, slotval2, slotval3, slotval4)
  virtualReturn

proc QAbstractItemModelitemData*(self: gen_qabstractitemmodel_types.QAbstractItemModel, index: gen_qabstractitemmodel_types.QModelIndex): Table[cint,gen_qvariant_types.QVariant] =
  var v_mm = fcQAbstractItemModel_virtualbase_itemData(self.h, index.h)
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

proc cQAbstractItemModel_vtable_callback_itemData(self: pointer, index: pointer): struct_miqt_map {.cdecl.} =
  let vtbl = cast[ptr QAbstractItemModelVTable](fcQAbstractItemModel_vdata(self))
  let self = QAbstractItemModel(h: self)
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

proc QAbstractItemModelsetItemData*(self: gen_qabstractitemmodel_types.QAbstractItemModel, index: gen_qabstractitemmodel_types.QModelIndex, roles: Table[cint,gen_qvariant_types.QVariant]): bool =
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

  fcQAbstractItemModel_virtualbase_setItemData(self.h, index.h, struct_miqt_map(len: csize_t(len(roles)),keys: if len(roles) == 0: nil else: addr(roles_Keys_CArray[0]), values: if len(roles) == 0: nil else: addr(roles_Values_CArray[0]),))

proc cQAbstractItemModel_vtable_callback_setItemData(self: pointer, index: pointer, roles: struct_miqt_map): bool {.cdecl.} =
  let vtbl = cast[ptr QAbstractItemModelVTable](fcQAbstractItemModel_vdata(self))
  let self = QAbstractItemModel(h: self)
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

proc QAbstractItemModelmimeTypes*(self: gen_qabstractitemmodel_types.QAbstractItemModel): seq[string] =
  var v_ma = fcQAbstractItemModel_virtualbase_mimeTypes(self.h)
  var vx_ret = newSeq[string](int(v_ma.len))
  let v_outCast = cast[ptr UncheckedArray[struct_miqt_string]](v_ma.data)
  for i in 0 ..< v_ma.len:
    let vx_lv_ms = v_outCast[i]
    let vx_lvx_ret = string.fromBytes(toOpenArrayByte(vx_lv_ms.data, 0, int(vx_lv_ms.len)-1))
    c_free(vx_lv_ms.data)
    vx_ret[i] = vx_lvx_ret
  c_free(v_ma.data)
  vx_ret

proc cQAbstractItemModel_vtable_callback_mimeTypes(self: pointer): struct_miqt_array {.cdecl.} =
  let vtbl = cast[ptr QAbstractItemModelVTable](fcQAbstractItemModel_vdata(self))
  let self = QAbstractItemModel(h: self)
  var virtualReturn = vtbl[].mimeTypes(self)
  var virtualReturn_CArray = cast[ptr UncheckedArray[struct_miqt_string]](if len(virtualReturn) > 0: c_malloc(c_sizet(sizeof(struct_miqt_string) * len(virtualReturn))) else: nil)
  for i in 0..<len(virtualReturn):
    var virtualReturn_i_copy = cast[cstring](if len(virtualReturn[i]) > 0: c_malloc(csize_t(len(virtualReturn[i]))) else: nil)
    if len(virtualReturn[i]) > 0: copyMem(cast[pointer](virtualReturn_i_copy), addr virtualReturn[i][0], csize_t(len(virtualReturn[i])))
    virtualReturn_CArray[i] = struct_miqt_string(data: virtualReturn_i_copy, len: csize_t(len(virtualReturn[i])))

  struct_miqt_array(len: csize_t(len(virtualReturn)), data: if len(virtualReturn) == 0: nil else: addr(virtualReturn_CArray[0]))

proc QAbstractItemModelmimeData*(self: gen_qabstractitemmodel_types.QAbstractItemModel, indexes: seq[gen_qabstractitemmodel_types.QModelIndex]): gen_qmimedata_types.QMimeData =
  var indexes_CArray = newSeq[pointer](len(indexes))
  for i in 0..<len(indexes):
    indexes_CArray[i] = indexes[i].h

  gen_qmimedata_types.QMimeData(h: fcQAbstractItemModel_virtualbase_mimeData(self.h, struct_miqt_array(len: csize_t(len(indexes)), data: if len(indexes) == 0: nil else: addr(indexes_CArray[0]))), owned: false)

proc cQAbstractItemModel_vtable_callback_mimeData(self: pointer, indexes: struct_miqt_array): pointer {.cdecl.} =
  let vtbl = cast[ptr QAbstractItemModelVTable](fcQAbstractItemModel_vdata(self))
  let self = QAbstractItemModel(h: self)
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

proc QAbstractItemModelcanDropMimeData*(self: gen_qabstractitemmodel_types.QAbstractItemModel, data: gen_qmimedata_types.QMimeData, action: cint, row: cint, column: cint, parent: gen_qabstractitemmodel_types.QModelIndex): bool =
  fcQAbstractItemModel_virtualbase_canDropMimeData(self.h, data.h, cint(action), row, column, parent.h)

proc cQAbstractItemModel_vtable_callback_canDropMimeData(self: pointer, data: pointer, action: cint, row: cint, column: cint, parent: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QAbstractItemModelVTable](fcQAbstractItemModel_vdata(self))
  let self = QAbstractItemModel(h: self)
  let slotval1 = gen_qmimedata_types.QMimeData(h: data, owned: false)
  let slotval2 = cint(action)
  let slotval3 = row
  let slotval4 = column
  let slotval5 = gen_qabstractitemmodel_types.QModelIndex(h: parent, owned: false)
  var virtualReturn = vtbl[].canDropMimeData(self, slotval1, slotval2, slotval3, slotval4, slotval5)
  virtualReturn

proc QAbstractItemModeldropMimeData*(self: gen_qabstractitemmodel_types.QAbstractItemModel, data: gen_qmimedata_types.QMimeData, action: cint, row: cint, column: cint, parent: gen_qabstractitemmodel_types.QModelIndex): bool =
  fcQAbstractItemModel_virtualbase_dropMimeData(self.h, data.h, cint(action), row, column, parent.h)

proc cQAbstractItemModel_vtable_callback_dropMimeData(self: pointer, data: pointer, action: cint, row: cint, column: cint, parent: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QAbstractItemModelVTable](fcQAbstractItemModel_vdata(self))
  let self = QAbstractItemModel(h: self)
  let slotval1 = gen_qmimedata_types.QMimeData(h: data, owned: false)
  let slotval2 = cint(action)
  let slotval3 = row
  let slotval4 = column
  let slotval5 = gen_qabstractitemmodel_types.QModelIndex(h: parent, owned: false)
  var virtualReturn = vtbl[].dropMimeData(self, slotval1, slotval2, slotval3, slotval4, slotval5)
  virtualReturn

proc QAbstractItemModelsupportedDropActions*(self: gen_qabstractitemmodel_types.QAbstractItemModel): cint =
  cint(fcQAbstractItemModel_virtualbase_supportedDropActions(self.h))

proc cQAbstractItemModel_vtable_callback_supportedDropActions(self: pointer): cint {.cdecl.} =
  let vtbl = cast[ptr QAbstractItemModelVTable](fcQAbstractItemModel_vdata(self))
  let self = QAbstractItemModel(h: self)
  var virtualReturn = vtbl[].supportedDropActions(self)
  cint(virtualReturn)

proc QAbstractItemModelsupportedDragActions*(self: gen_qabstractitemmodel_types.QAbstractItemModel): cint =
  cint(fcQAbstractItemModel_virtualbase_supportedDragActions(self.h))

proc cQAbstractItemModel_vtable_callback_supportedDragActions(self: pointer): cint {.cdecl.} =
  let vtbl = cast[ptr QAbstractItemModelVTable](fcQAbstractItemModel_vdata(self))
  let self = QAbstractItemModel(h: self)
  var virtualReturn = vtbl[].supportedDragActions(self)
  cint(virtualReturn)

proc QAbstractItemModelinsertRows*(self: gen_qabstractitemmodel_types.QAbstractItemModel, row: cint, count: cint, parent: gen_qabstractitemmodel_types.QModelIndex): bool =
  fcQAbstractItemModel_virtualbase_insertRows(self.h, row, count, parent.h)

proc cQAbstractItemModel_vtable_callback_insertRows(self: pointer, row: cint, count: cint, parent: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QAbstractItemModelVTable](fcQAbstractItemModel_vdata(self))
  let self = QAbstractItemModel(h: self)
  let slotval1 = row
  let slotval2 = count
  let slotval3 = gen_qabstractitemmodel_types.QModelIndex(h: parent, owned: false)
  var virtualReturn = vtbl[].insertRows(self, slotval1, slotval2, slotval3)
  virtualReturn

proc QAbstractItemModelinsertColumns*(self: gen_qabstractitemmodel_types.QAbstractItemModel, column: cint, count: cint, parent: gen_qabstractitemmodel_types.QModelIndex): bool =
  fcQAbstractItemModel_virtualbase_insertColumns(self.h, column, count, parent.h)

proc cQAbstractItemModel_vtable_callback_insertColumns(self: pointer, column: cint, count: cint, parent: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QAbstractItemModelVTable](fcQAbstractItemModel_vdata(self))
  let self = QAbstractItemModel(h: self)
  let slotval1 = column
  let slotval2 = count
  let slotval3 = gen_qabstractitemmodel_types.QModelIndex(h: parent, owned: false)
  var virtualReturn = vtbl[].insertColumns(self, slotval1, slotval2, slotval3)
  virtualReturn

proc QAbstractItemModelremoveRows*(self: gen_qabstractitemmodel_types.QAbstractItemModel, row: cint, count: cint, parent: gen_qabstractitemmodel_types.QModelIndex): bool =
  fcQAbstractItemModel_virtualbase_removeRows(self.h, row, count, parent.h)

proc cQAbstractItemModel_vtable_callback_removeRows(self: pointer, row: cint, count: cint, parent: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QAbstractItemModelVTable](fcQAbstractItemModel_vdata(self))
  let self = QAbstractItemModel(h: self)
  let slotval1 = row
  let slotval2 = count
  let slotval3 = gen_qabstractitemmodel_types.QModelIndex(h: parent, owned: false)
  var virtualReturn = vtbl[].removeRows(self, slotval1, slotval2, slotval3)
  virtualReturn

proc QAbstractItemModelremoveColumns*(self: gen_qabstractitemmodel_types.QAbstractItemModel, column: cint, count: cint, parent: gen_qabstractitemmodel_types.QModelIndex): bool =
  fcQAbstractItemModel_virtualbase_removeColumns(self.h, column, count, parent.h)

proc cQAbstractItemModel_vtable_callback_removeColumns(self: pointer, column: cint, count: cint, parent: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QAbstractItemModelVTable](fcQAbstractItemModel_vdata(self))
  let self = QAbstractItemModel(h: self)
  let slotval1 = column
  let slotval2 = count
  let slotval3 = gen_qabstractitemmodel_types.QModelIndex(h: parent, owned: false)
  var virtualReturn = vtbl[].removeColumns(self, slotval1, slotval2, slotval3)
  virtualReturn

proc QAbstractItemModelmoveRows*(self: gen_qabstractitemmodel_types.QAbstractItemModel, sourceParent: gen_qabstractitemmodel_types.QModelIndex, sourceRow: cint, count: cint, destinationParent: gen_qabstractitemmodel_types.QModelIndex, destinationChild: cint): bool =
  fcQAbstractItemModel_virtualbase_moveRows(self.h, sourceParent.h, sourceRow, count, destinationParent.h, destinationChild)

proc cQAbstractItemModel_vtable_callback_moveRows(self: pointer, sourceParent: pointer, sourceRow: cint, count: cint, destinationParent: pointer, destinationChild: cint): bool {.cdecl.} =
  let vtbl = cast[ptr QAbstractItemModelVTable](fcQAbstractItemModel_vdata(self))
  let self = QAbstractItemModel(h: self)
  let slotval1 = gen_qabstractitemmodel_types.QModelIndex(h: sourceParent, owned: false)
  let slotval2 = sourceRow
  let slotval3 = count
  let slotval4 = gen_qabstractitemmodel_types.QModelIndex(h: destinationParent, owned: false)
  let slotval5 = destinationChild
  var virtualReturn = vtbl[].moveRows(self, slotval1, slotval2, slotval3, slotval4, slotval5)
  virtualReturn

proc QAbstractItemModelmoveColumns*(self: gen_qabstractitemmodel_types.QAbstractItemModel, sourceParent: gen_qabstractitemmodel_types.QModelIndex, sourceColumn: cint, count: cint, destinationParent: gen_qabstractitemmodel_types.QModelIndex, destinationChild: cint): bool =
  fcQAbstractItemModel_virtualbase_moveColumns(self.h, sourceParent.h, sourceColumn, count, destinationParent.h, destinationChild)

proc cQAbstractItemModel_vtable_callback_moveColumns(self: pointer, sourceParent: pointer, sourceColumn: cint, count: cint, destinationParent: pointer, destinationChild: cint): bool {.cdecl.} =
  let vtbl = cast[ptr QAbstractItemModelVTable](fcQAbstractItemModel_vdata(self))
  let self = QAbstractItemModel(h: self)
  let slotval1 = gen_qabstractitemmodel_types.QModelIndex(h: sourceParent, owned: false)
  let slotval2 = sourceColumn
  let slotval3 = count
  let slotval4 = gen_qabstractitemmodel_types.QModelIndex(h: destinationParent, owned: false)
  let slotval5 = destinationChild
  var virtualReturn = vtbl[].moveColumns(self, slotval1, slotval2, slotval3, slotval4, slotval5)
  virtualReturn

proc QAbstractItemModelfetchMore*(self: gen_qabstractitemmodel_types.QAbstractItemModel, parent: gen_qabstractitemmodel_types.QModelIndex): void =
  fcQAbstractItemModel_virtualbase_fetchMore(self.h, parent.h)

proc cQAbstractItemModel_vtable_callback_fetchMore(self: pointer, parent: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QAbstractItemModelVTable](fcQAbstractItemModel_vdata(self))
  let self = QAbstractItemModel(h: self)
  let slotval1 = gen_qabstractitemmodel_types.QModelIndex(h: parent, owned: false)
  vtbl[].fetchMore(self, slotval1)

proc QAbstractItemModelcanFetchMore*(self: gen_qabstractitemmodel_types.QAbstractItemModel, parent: gen_qabstractitemmodel_types.QModelIndex): bool =
  fcQAbstractItemModel_virtualbase_canFetchMore(self.h, parent.h)

proc cQAbstractItemModel_vtable_callback_canFetchMore(self: pointer, parent: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QAbstractItemModelVTable](fcQAbstractItemModel_vdata(self))
  let self = QAbstractItemModel(h: self)
  let slotval1 = gen_qabstractitemmodel_types.QModelIndex(h: parent, owned: false)
  var virtualReturn = vtbl[].canFetchMore(self, slotval1)
  virtualReturn

proc QAbstractItemModelflags*(self: gen_qabstractitemmodel_types.QAbstractItemModel, index: gen_qabstractitemmodel_types.QModelIndex): cint =
  cint(fcQAbstractItemModel_virtualbase_flags(self.h, index.h))

proc cQAbstractItemModel_vtable_callback_flags(self: pointer, index: pointer): cint {.cdecl.} =
  let vtbl = cast[ptr QAbstractItemModelVTable](fcQAbstractItemModel_vdata(self))
  let self = QAbstractItemModel(h: self)
  let slotval1 = gen_qabstractitemmodel_types.QModelIndex(h: index, owned: false)
  var virtualReturn = vtbl[].flags(self, slotval1)
  cint(virtualReturn)

proc QAbstractItemModelsort*(self: gen_qabstractitemmodel_types.QAbstractItemModel, column: cint, order: cint): void =
  fcQAbstractItemModel_virtualbase_sort(self.h, column, cint(order))

proc cQAbstractItemModel_vtable_callback_sort(self: pointer, column: cint, order: cint): void {.cdecl.} =
  let vtbl = cast[ptr QAbstractItemModelVTable](fcQAbstractItemModel_vdata(self))
  let self = QAbstractItemModel(h: self)
  let slotval1 = column
  let slotval2 = cint(order)
  vtbl[].sort(self, slotval1, slotval2)

proc QAbstractItemModelbuddy*(self: gen_qabstractitemmodel_types.QAbstractItemModel, index: gen_qabstractitemmodel_types.QModelIndex): gen_qabstractitemmodel_types.QModelIndex =
  gen_qabstractitemmodel_types.QModelIndex(h: fcQAbstractItemModel_virtualbase_buddy(self.h, index.h), owned: true)

proc cQAbstractItemModel_vtable_callback_buddy(self: pointer, index: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QAbstractItemModelVTable](fcQAbstractItemModel_vdata(self))
  let self = QAbstractItemModel(h: self)
  let slotval1 = gen_qabstractitemmodel_types.QModelIndex(h: index, owned: false)
  var virtualReturn = vtbl[].buddy(self, slotval1)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc QAbstractItemModelmatch*(self: gen_qabstractitemmodel_types.QAbstractItemModel, start: gen_qabstractitemmodel_types.QModelIndex, role: cint, value: gen_qvariant_types.QVariant, hits: cint, flags: cint): seq[gen_qabstractitemmodel_types.QModelIndex] =
  var v_ma = fcQAbstractItemModel_virtualbase_match(self.h, start.h, role, value.h, hits, cint(flags))
  var vx_ret = newSeq[gen_qabstractitemmodel_types.QModelIndex](int(v_ma.len))
  let v_outCast = cast[ptr UncheckedArray[pointer]](v_ma.data)
  for i in 0 ..< v_ma.len:
    vx_ret[i] = gen_qabstractitemmodel_types.QModelIndex(h: v_outCast[i], owned: true)
  c_free(v_ma.data)
  vx_ret

proc cQAbstractItemModel_vtable_callback_match(self: pointer, start: pointer, role: cint, value: pointer, hits: cint, flags: cint): struct_miqt_array {.cdecl.} =
  let vtbl = cast[ptr QAbstractItemModelVTable](fcQAbstractItemModel_vdata(self))
  let self = QAbstractItemModel(h: self)
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

proc QAbstractItemModelspan*(self: gen_qabstractitemmodel_types.QAbstractItemModel, index: gen_qabstractitemmodel_types.QModelIndex): gen_qsize_types.QSize =
  gen_qsize_types.QSize(h: fcQAbstractItemModel_virtualbase_span(self.h, index.h), owned: true)

proc cQAbstractItemModel_vtable_callback_span(self: pointer, index: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QAbstractItemModelVTable](fcQAbstractItemModel_vdata(self))
  let self = QAbstractItemModel(h: self)
  let slotval1 = gen_qabstractitemmodel_types.QModelIndex(h: index, owned: false)
  var virtualReturn = vtbl[].span(self, slotval1)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc QAbstractItemModelroleNames*(self: gen_qabstractitemmodel_types.QAbstractItemModel): Table[cint,seq[byte]] =
  var v_mm = fcQAbstractItemModel_virtualbase_roleNames(self.h)
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

proc cQAbstractItemModel_vtable_callback_roleNames(self: pointer): struct_miqt_map {.cdecl.} =
  let vtbl = cast[ptr QAbstractItemModelVTable](fcQAbstractItemModel_vdata(self))
  let self = QAbstractItemModel(h: self)
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

proc QAbstractItemModelsubmit*(self: gen_qabstractitemmodel_types.QAbstractItemModel): bool =
  fcQAbstractItemModel_virtualbase_submit(self.h)

proc cQAbstractItemModel_vtable_callback_submit(self: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QAbstractItemModelVTable](fcQAbstractItemModel_vdata(self))
  let self = QAbstractItemModel(h: self)
  var virtualReturn = vtbl[].submit(self)
  virtualReturn

proc QAbstractItemModelrevert*(self: gen_qabstractitemmodel_types.QAbstractItemModel): void =
  fcQAbstractItemModel_virtualbase_revert(self.h)

proc cQAbstractItemModel_vtable_callback_revert(self: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QAbstractItemModelVTable](fcQAbstractItemModel_vdata(self))
  let self = QAbstractItemModel(h: self)
  vtbl[].revert(self)

proc QAbstractItemModelevent*(self: gen_qabstractitemmodel_types.QAbstractItemModel, event: gen_qcoreevent_types.QEvent): bool =
  fcQAbstractItemModel_virtualbase_event(self.h, event.h)

proc cQAbstractItemModel_vtable_callback_event(self: pointer, event: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QAbstractItemModelVTable](fcQAbstractItemModel_vdata(self))
  let self = QAbstractItemModel(h: self)
  let slotval1 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  var virtualReturn = vtbl[].event(self, slotval1)
  virtualReturn

proc QAbstractItemModeleventFilter*(self: gen_qabstractitemmodel_types.QAbstractItemModel, watched: gen_qobject_types.QObject, event: gen_qcoreevent_types.QEvent): bool =
  fcQAbstractItemModel_virtualbase_eventFilter(self.h, watched.h, event.h)

proc cQAbstractItemModel_vtable_callback_eventFilter(self: pointer, watched: pointer, event: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QAbstractItemModelVTable](fcQAbstractItemModel_vdata(self))
  let self = QAbstractItemModel(h: self)
  let slotval1 = gen_qobject_types.QObject(h: watched, owned: false)
  let slotval2 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  var virtualReturn = vtbl[].eventFilter(self, slotval1, slotval2)
  virtualReturn

proc QAbstractItemModeltimerEvent*(self: gen_qabstractitemmodel_types.QAbstractItemModel, event: gen_qcoreevent_types.QTimerEvent): void =
  fcQAbstractItemModel_virtualbase_timerEvent(self.h, event.h)

proc cQAbstractItemModel_vtable_callback_timerEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QAbstractItemModelVTable](fcQAbstractItemModel_vdata(self))
  let self = QAbstractItemModel(h: self)
  let slotval1 = gen_qcoreevent_types.QTimerEvent(h: event, owned: false)
  vtbl[].timerEvent(self, slotval1)

proc QAbstractItemModelchildEvent*(self: gen_qabstractitemmodel_types.QAbstractItemModel, event: gen_qcoreevent_types.QChildEvent): void =
  fcQAbstractItemModel_virtualbase_childEvent(self.h, event.h)

proc cQAbstractItemModel_vtable_callback_childEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QAbstractItemModelVTable](fcQAbstractItemModel_vdata(self))
  let self = QAbstractItemModel(h: self)
  let slotval1 = gen_qcoreevent_types.QChildEvent(h: event, owned: false)
  vtbl[].childEvent(self, slotval1)

proc QAbstractItemModelcustomEvent*(self: gen_qabstractitemmodel_types.QAbstractItemModel, event: gen_qcoreevent_types.QEvent): void =
  fcQAbstractItemModel_virtualbase_customEvent(self.h, event.h)

proc cQAbstractItemModel_vtable_callback_customEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QAbstractItemModelVTable](fcQAbstractItemModel_vdata(self))
  let self = QAbstractItemModel(h: self)
  let slotval1 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  vtbl[].customEvent(self, slotval1)

proc QAbstractItemModelconnectNotify*(self: gen_qabstractitemmodel_types.QAbstractItemModel, signal: gen_qmetaobject_types.QMetaMethod): void =
  fcQAbstractItemModel_virtualbase_connectNotify(self.h, signal.h)

proc cQAbstractItemModel_vtable_callback_connectNotify(self: pointer, signal: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QAbstractItemModelVTable](fcQAbstractItemModel_vdata(self))
  let self = QAbstractItemModel(h: self)
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal, owned: false)
  vtbl[].connectNotify(self, slotval1)

proc QAbstractItemModeldisconnectNotify*(self: gen_qabstractitemmodel_types.QAbstractItemModel, signal: gen_qmetaobject_types.QMetaMethod): void =
  fcQAbstractItemModel_virtualbase_disconnectNotify(self.h, signal.h)

proc cQAbstractItemModel_vtable_callback_disconnectNotify(self: pointer, signal: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QAbstractItemModelVTable](fcQAbstractItemModel_vdata(self))
  let self = QAbstractItemModel(h: self)
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal, owned: false)
  vtbl[].disconnectNotify(self, slotval1)

type VirtualQAbstractItemModel* {.inheritable.} = ref object of QAbstractItemModel
  vtbl*: cQAbstractItemModelVTable
method metaObject*(self: VirtualQAbstractItemModel): gen_qobjectdefs_types.QMetaObject {.base.} =
  QAbstractItemModelmetaObject(self[])
proc cQAbstractItemModel_method_callback_metaObject(self: pointer): pointer {.cdecl.} =
  let inst = cast[VirtualQAbstractItemModel](fcQAbstractItemModel_vdata(self))
  var virtualReturn = inst.metaObject()
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

method metacast*(self: VirtualQAbstractItemModel, param1: cstring): pointer {.base.} =
  QAbstractItemModelmetacast(self[], param1)
proc cQAbstractItemModel_method_callback_metacast(self: pointer, param1: cstring): pointer {.cdecl.} =
  let inst = cast[VirtualQAbstractItemModel](fcQAbstractItemModel_vdata(self))
  let slotval1 = (param1)
  var virtualReturn = inst.metacast(slotval1)
  virtualReturn

method metacall*(self: VirtualQAbstractItemModel, param1: cint, param2: cint, param3: pointer): cint {.base.} =
  QAbstractItemModelmetacall(self[], param1, param2, param3)
proc cQAbstractItemModel_method_callback_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.cdecl.} =
  let inst = cast[VirtualQAbstractItemModel](fcQAbstractItemModel_vdata(self))
  let slotval1 = cint(param1)
  let slotval2 = param2
  let slotval3 = param3
  var virtualReturn = inst.metacall(slotval1, slotval2, slotval3)
  virtualReturn

method index*(self: VirtualQAbstractItemModel, row: cint, column: cint, parent: gen_qabstractitemmodel_types.QModelIndex): gen_qabstractitemmodel_types.QModelIndex {.base.} =
  raiseAssert("missing implementation of QAbstractItemModel_virtualbase_index")
proc cQAbstractItemModel_method_callback_index(self: pointer, row: cint, column: cint, parent: pointer): pointer {.cdecl.} =
  let inst = cast[VirtualQAbstractItemModel](fcQAbstractItemModel_vdata(self))
  let slotval1 = row
  let slotval2 = column
  let slotval3 = gen_qabstractitemmodel_types.QModelIndex(h: parent, owned: false)
  var virtualReturn = inst.index(slotval1, slotval2, slotval3)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

method parent*(self: VirtualQAbstractItemModel, child: gen_qabstractitemmodel_types.QModelIndex): gen_qabstractitemmodel_types.QModelIndex {.base.} =
  raiseAssert("missing implementation of QAbstractItemModel_virtualbase_parent")
proc cQAbstractItemModel_method_callback_parent(self: pointer, child: pointer): pointer {.cdecl.} =
  let inst = cast[VirtualQAbstractItemModel](fcQAbstractItemModel_vdata(self))
  let slotval1 = gen_qabstractitemmodel_types.QModelIndex(h: child, owned: false)
  var virtualReturn = inst.parent(slotval1)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

method sibling*(self: VirtualQAbstractItemModel, row: cint, column: cint, idx: gen_qabstractitemmodel_types.QModelIndex): gen_qabstractitemmodel_types.QModelIndex {.base.} =
  QAbstractItemModelsibling(self[], row, column, idx)
proc cQAbstractItemModel_method_callback_sibling(self: pointer, row: cint, column: cint, idx: pointer): pointer {.cdecl.} =
  let inst = cast[VirtualQAbstractItemModel](fcQAbstractItemModel_vdata(self))
  let slotval1 = row
  let slotval2 = column
  let slotval3 = gen_qabstractitemmodel_types.QModelIndex(h: idx, owned: false)
  var virtualReturn = inst.sibling(slotval1, slotval2, slotval3)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

method rowCount*(self: VirtualQAbstractItemModel, parent: gen_qabstractitemmodel_types.QModelIndex): cint {.base.} =
  raiseAssert("missing implementation of QAbstractItemModel_virtualbase_rowCount")
proc cQAbstractItemModel_method_callback_rowCount(self: pointer, parent: pointer): cint {.cdecl.} =
  let inst = cast[VirtualQAbstractItemModel](fcQAbstractItemModel_vdata(self))
  let slotval1 = gen_qabstractitemmodel_types.QModelIndex(h: parent, owned: false)
  var virtualReturn = inst.rowCount(slotval1)
  virtualReturn

method columnCount*(self: VirtualQAbstractItemModel, parent: gen_qabstractitemmodel_types.QModelIndex): cint {.base.} =
  raiseAssert("missing implementation of QAbstractItemModel_virtualbase_columnCount")
proc cQAbstractItemModel_method_callback_columnCount(self: pointer, parent: pointer): cint {.cdecl.} =
  let inst = cast[VirtualQAbstractItemModel](fcQAbstractItemModel_vdata(self))
  let slotval1 = gen_qabstractitemmodel_types.QModelIndex(h: parent, owned: false)
  var virtualReturn = inst.columnCount(slotval1)
  virtualReturn

method hasChildren*(self: VirtualQAbstractItemModel, parent: gen_qabstractitemmodel_types.QModelIndex): bool {.base.} =
  QAbstractItemModelhasChildren(self[], parent)
proc cQAbstractItemModel_method_callback_hasChildren(self: pointer, parent: pointer): bool {.cdecl.} =
  let inst = cast[VirtualQAbstractItemModel](fcQAbstractItemModel_vdata(self))
  let slotval1 = gen_qabstractitemmodel_types.QModelIndex(h: parent, owned: false)
  var virtualReturn = inst.hasChildren(slotval1)
  virtualReturn

method data*(self: VirtualQAbstractItemModel, index: gen_qabstractitemmodel_types.QModelIndex, role: cint): gen_qvariant_types.QVariant {.base.} =
  raiseAssert("missing implementation of QAbstractItemModel_virtualbase_data")
proc cQAbstractItemModel_method_callback_data(self: pointer, index: pointer, role: cint): pointer {.cdecl.} =
  let inst = cast[VirtualQAbstractItemModel](fcQAbstractItemModel_vdata(self))
  let slotval1 = gen_qabstractitemmodel_types.QModelIndex(h: index, owned: false)
  let slotval2 = role
  var virtualReturn = inst.data(slotval1, slotval2)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

method setData*(self: VirtualQAbstractItemModel, index: gen_qabstractitemmodel_types.QModelIndex, value: gen_qvariant_types.QVariant, role: cint): bool {.base.} =
  QAbstractItemModelsetData(self[], index, value, role)
proc cQAbstractItemModel_method_callback_setData(self: pointer, index: pointer, value: pointer, role: cint): bool {.cdecl.} =
  let inst = cast[VirtualQAbstractItemModel](fcQAbstractItemModel_vdata(self))
  let slotval1 = gen_qabstractitemmodel_types.QModelIndex(h: index, owned: false)
  let slotval2 = gen_qvariant_types.QVariant(h: value, owned: false)
  let slotval3 = role
  var virtualReturn = inst.setData(slotval1, slotval2, slotval3)
  virtualReturn

method headerData*(self: VirtualQAbstractItemModel, section: cint, orientation: cint, role: cint): gen_qvariant_types.QVariant {.base.} =
  QAbstractItemModelheaderData(self[], section, orientation, role)
proc cQAbstractItemModel_method_callback_headerData(self: pointer, section: cint, orientation: cint, role: cint): pointer {.cdecl.} =
  let inst = cast[VirtualQAbstractItemModel](fcQAbstractItemModel_vdata(self))
  let slotval1 = section
  let slotval2 = cint(orientation)
  let slotval3 = role
  var virtualReturn = inst.headerData(slotval1, slotval2, slotval3)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

method setHeaderData*(self: VirtualQAbstractItemModel, section: cint, orientation: cint, value: gen_qvariant_types.QVariant, role: cint): bool {.base.} =
  QAbstractItemModelsetHeaderData(self[], section, orientation, value, role)
proc cQAbstractItemModel_method_callback_setHeaderData(self: pointer, section: cint, orientation: cint, value: pointer, role: cint): bool {.cdecl.} =
  let inst = cast[VirtualQAbstractItemModel](fcQAbstractItemModel_vdata(self))
  let slotval1 = section
  let slotval2 = cint(orientation)
  let slotval3 = gen_qvariant_types.QVariant(h: value, owned: false)
  let slotval4 = role
  var virtualReturn = inst.setHeaderData(slotval1, slotval2, slotval3, slotval4)
  virtualReturn

method itemData*(self: VirtualQAbstractItemModel, index: gen_qabstractitemmodel_types.QModelIndex): Table[cint,gen_qvariant_types.QVariant] {.base.} =
  QAbstractItemModelitemData(self[], index)
proc cQAbstractItemModel_method_callback_itemData(self: pointer, index: pointer): struct_miqt_map {.cdecl.} =
  let inst = cast[VirtualQAbstractItemModel](fcQAbstractItemModel_vdata(self))
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

  struct_miqt_map(len: csize_t(len(virtualReturn)),keys: if len(virtualReturn) == 0: nil else: addr(virtualReturn_Keys_CArray[0]), values: if len(virtualReturn) == 0: nil else: addr(virtualReturn_Values_CArray[0]),)

method setItemData*(self: VirtualQAbstractItemModel, index: gen_qabstractitemmodel_types.QModelIndex, roles: Table[cint,gen_qvariant_types.QVariant]): bool {.base.} =
  QAbstractItemModelsetItemData(self[], index, roles)
proc cQAbstractItemModel_method_callback_setItemData(self: pointer, index: pointer, roles: struct_miqt_map): bool {.cdecl.} =
  let inst = cast[VirtualQAbstractItemModel](fcQAbstractItemModel_vdata(self))
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

method mimeTypes*(self: VirtualQAbstractItemModel): seq[string] {.base.} =
  QAbstractItemModelmimeTypes(self[])
proc cQAbstractItemModel_method_callback_mimeTypes(self: pointer): struct_miqt_array {.cdecl.} =
  let inst = cast[VirtualQAbstractItemModel](fcQAbstractItemModel_vdata(self))
  var virtualReturn = inst.mimeTypes()
  var virtualReturn_CArray = cast[ptr UncheckedArray[struct_miqt_string]](if len(virtualReturn) > 0: c_malloc(c_sizet(sizeof(struct_miqt_string) * len(virtualReturn))) else: nil)
  for i in 0..<len(virtualReturn):
    var virtualReturn_i_copy = cast[cstring](if len(virtualReturn[i]) > 0: c_malloc(csize_t(len(virtualReturn[i]))) else: nil)
    if len(virtualReturn[i]) > 0: copyMem(cast[pointer](virtualReturn_i_copy), addr virtualReturn[i][0], csize_t(len(virtualReturn[i])))
    virtualReturn_CArray[i] = struct_miqt_string(data: virtualReturn_i_copy, len: csize_t(len(virtualReturn[i])))

  struct_miqt_array(len: csize_t(len(virtualReturn)), data: if len(virtualReturn) == 0: nil else: addr(virtualReturn_CArray[0]))

method mimeData*(self: VirtualQAbstractItemModel, indexes: seq[gen_qabstractitemmodel_types.QModelIndex]): gen_qmimedata_types.QMimeData {.base.} =
  QAbstractItemModelmimeData(self[], indexes)
proc cQAbstractItemModel_method_callback_mimeData(self: pointer, indexes: struct_miqt_array): pointer {.cdecl.} =
  let inst = cast[VirtualQAbstractItemModel](fcQAbstractItemModel_vdata(self))
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

method canDropMimeData*(self: VirtualQAbstractItemModel, data: gen_qmimedata_types.QMimeData, action: cint, row: cint, column: cint, parent: gen_qabstractitemmodel_types.QModelIndex): bool {.base.} =
  QAbstractItemModelcanDropMimeData(self[], data, action, row, column, parent)
proc cQAbstractItemModel_method_callback_canDropMimeData(self: pointer, data: pointer, action: cint, row: cint, column: cint, parent: pointer): bool {.cdecl.} =
  let inst = cast[VirtualQAbstractItemModel](fcQAbstractItemModel_vdata(self))
  let slotval1 = gen_qmimedata_types.QMimeData(h: data, owned: false)
  let slotval2 = cint(action)
  let slotval3 = row
  let slotval4 = column
  let slotval5 = gen_qabstractitemmodel_types.QModelIndex(h: parent, owned: false)
  var virtualReturn = inst.canDropMimeData(slotval1, slotval2, slotval3, slotval4, slotval5)
  virtualReturn

method dropMimeData*(self: VirtualQAbstractItemModel, data: gen_qmimedata_types.QMimeData, action: cint, row: cint, column: cint, parent: gen_qabstractitemmodel_types.QModelIndex): bool {.base.} =
  QAbstractItemModeldropMimeData(self[], data, action, row, column, parent)
proc cQAbstractItemModel_method_callback_dropMimeData(self: pointer, data: pointer, action: cint, row: cint, column: cint, parent: pointer): bool {.cdecl.} =
  let inst = cast[VirtualQAbstractItemModel](fcQAbstractItemModel_vdata(self))
  let slotval1 = gen_qmimedata_types.QMimeData(h: data, owned: false)
  let slotval2 = cint(action)
  let slotval3 = row
  let slotval4 = column
  let slotval5 = gen_qabstractitemmodel_types.QModelIndex(h: parent, owned: false)
  var virtualReturn = inst.dropMimeData(slotval1, slotval2, slotval3, slotval4, slotval5)
  virtualReturn

method supportedDropActions*(self: VirtualQAbstractItemModel): cint {.base.} =
  QAbstractItemModelsupportedDropActions(self[])
proc cQAbstractItemModel_method_callback_supportedDropActions(self: pointer): cint {.cdecl.} =
  let inst = cast[VirtualQAbstractItemModel](fcQAbstractItemModel_vdata(self))
  var virtualReturn = inst.supportedDropActions()
  cint(virtualReturn)

method supportedDragActions*(self: VirtualQAbstractItemModel): cint {.base.} =
  QAbstractItemModelsupportedDragActions(self[])
proc cQAbstractItemModel_method_callback_supportedDragActions(self: pointer): cint {.cdecl.} =
  let inst = cast[VirtualQAbstractItemModel](fcQAbstractItemModel_vdata(self))
  var virtualReturn = inst.supportedDragActions()
  cint(virtualReturn)

method insertRows*(self: VirtualQAbstractItemModel, row: cint, count: cint, parent: gen_qabstractitemmodel_types.QModelIndex): bool {.base.} =
  QAbstractItemModelinsertRows(self[], row, count, parent)
proc cQAbstractItemModel_method_callback_insertRows(self: pointer, row: cint, count: cint, parent: pointer): bool {.cdecl.} =
  let inst = cast[VirtualQAbstractItemModel](fcQAbstractItemModel_vdata(self))
  let slotval1 = row
  let slotval2 = count
  let slotval3 = gen_qabstractitemmodel_types.QModelIndex(h: parent, owned: false)
  var virtualReturn = inst.insertRows(slotval1, slotval2, slotval3)
  virtualReturn

method insertColumns*(self: VirtualQAbstractItemModel, column: cint, count: cint, parent: gen_qabstractitemmodel_types.QModelIndex): bool {.base.} =
  QAbstractItemModelinsertColumns(self[], column, count, parent)
proc cQAbstractItemModel_method_callback_insertColumns(self: pointer, column: cint, count: cint, parent: pointer): bool {.cdecl.} =
  let inst = cast[VirtualQAbstractItemModel](fcQAbstractItemModel_vdata(self))
  let slotval1 = column
  let slotval2 = count
  let slotval3 = gen_qabstractitemmodel_types.QModelIndex(h: parent, owned: false)
  var virtualReturn = inst.insertColumns(slotval1, slotval2, slotval3)
  virtualReturn

method removeRows*(self: VirtualQAbstractItemModel, row: cint, count: cint, parent: gen_qabstractitemmodel_types.QModelIndex): bool {.base.} =
  QAbstractItemModelremoveRows(self[], row, count, parent)
proc cQAbstractItemModel_method_callback_removeRows(self: pointer, row: cint, count: cint, parent: pointer): bool {.cdecl.} =
  let inst = cast[VirtualQAbstractItemModel](fcQAbstractItemModel_vdata(self))
  let slotval1 = row
  let slotval2 = count
  let slotval3 = gen_qabstractitemmodel_types.QModelIndex(h: parent, owned: false)
  var virtualReturn = inst.removeRows(slotval1, slotval2, slotval3)
  virtualReturn

method removeColumns*(self: VirtualQAbstractItemModel, column: cint, count: cint, parent: gen_qabstractitemmodel_types.QModelIndex): bool {.base.} =
  QAbstractItemModelremoveColumns(self[], column, count, parent)
proc cQAbstractItemModel_method_callback_removeColumns(self: pointer, column: cint, count: cint, parent: pointer): bool {.cdecl.} =
  let inst = cast[VirtualQAbstractItemModel](fcQAbstractItemModel_vdata(self))
  let slotval1 = column
  let slotval2 = count
  let slotval3 = gen_qabstractitemmodel_types.QModelIndex(h: parent, owned: false)
  var virtualReturn = inst.removeColumns(slotval1, slotval2, slotval3)
  virtualReturn

method moveRows*(self: VirtualQAbstractItemModel, sourceParent: gen_qabstractitemmodel_types.QModelIndex, sourceRow: cint, count: cint, destinationParent: gen_qabstractitemmodel_types.QModelIndex, destinationChild: cint): bool {.base.} =
  QAbstractItemModelmoveRows(self[], sourceParent, sourceRow, count, destinationParent, destinationChild)
proc cQAbstractItemModel_method_callback_moveRows(self: pointer, sourceParent: pointer, sourceRow: cint, count: cint, destinationParent: pointer, destinationChild: cint): bool {.cdecl.} =
  let inst = cast[VirtualQAbstractItemModel](fcQAbstractItemModel_vdata(self))
  let slotval1 = gen_qabstractitemmodel_types.QModelIndex(h: sourceParent, owned: false)
  let slotval2 = sourceRow
  let slotval3 = count
  let slotval4 = gen_qabstractitemmodel_types.QModelIndex(h: destinationParent, owned: false)
  let slotval5 = destinationChild
  var virtualReturn = inst.moveRows(slotval1, slotval2, slotval3, slotval4, slotval5)
  virtualReturn

method moveColumns*(self: VirtualQAbstractItemModel, sourceParent: gen_qabstractitemmodel_types.QModelIndex, sourceColumn: cint, count: cint, destinationParent: gen_qabstractitemmodel_types.QModelIndex, destinationChild: cint): bool {.base.} =
  QAbstractItemModelmoveColumns(self[], sourceParent, sourceColumn, count, destinationParent, destinationChild)
proc cQAbstractItemModel_method_callback_moveColumns(self: pointer, sourceParent: pointer, sourceColumn: cint, count: cint, destinationParent: pointer, destinationChild: cint): bool {.cdecl.} =
  let inst = cast[VirtualQAbstractItemModel](fcQAbstractItemModel_vdata(self))
  let slotval1 = gen_qabstractitemmodel_types.QModelIndex(h: sourceParent, owned: false)
  let slotval2 = sourceColumn
  let slotval3 = count
  let slotval4 = gen_qabstractitemmodel_types.QModelIndex(h: destinationParent, owned: false)
  let slotval5 = destinationChild
  var virtualReturn = inst.moveColumns(slotval1, slotval2, slotval3, slotval4, slotval5)
  virtualReturn

method fetchMore*(self: VirtualQAbstractItemModel, parent: gen_qabstractitemmodel_types.QModelIndex): void {.base.} =
  QAbstractItemModelfetchMore(self[], parent)
proc cQAbstractItemModel_method_callback_fetchMore(self: pointer, parent: pointer): void {.cdecl.} =
  let inst = cast[VirtualQAbstractItemModel](fcQAbstractItemModel_vdata(self))
  let slotval1 = gen_qabstractitemmodel_types.QModelIndex(h: parent, owned: false)
  inst.fetchMore(slotval1)

method canFetchMore*(self: VirtualQAbstractItemModel, parent: gen_qabstractitemmodel_types.QModelIndex): bool {.base.} =
  QAbstractItemModelcanFetchMore(self[], parent)
proc cQAbstractItemModel_method_callback_canFetchMore(self: pointer, parent: pointer): bool {.cdecl.} =
  let inst = cast[VirtualQAbstractItemModel](fcQAbstractItemModel_vdata(self))
  let slotval1 = gen_qabstractitemmodel_types.QModelIndex(h: parent, owned: false)
  var virtualReturn = inst.canFetchMore(slotval1)
  virtualReturn

method flags*(self: VirtualQAbstractItemModel, index: gen_qabstractitemmodel_types.QModelIndex): cint {.base.} =
  QAbstractItemModelflags(self[], index)
proc cQAbstractItemModel_method_callback_flags(self: pointer, index: pointer): cint {.cdecl.} =
  let inst = cast[VirtualQAbstractItemModel](fcQAbstractItemModel_vdata(self))
  let slotval1 = gen_qabstractitemmodel_types.QModelIndex(h: index, owned: false)
  var virtualReturn = inst.flags(slotval1)
  cint(virtualReturn)

method sort*(self: VirtualQAbstractItemModel, column: cint, order: cint): void {.base.} =
  QAbstractItemModelsort(self[], column, order)
proc cQAbstractItemModel_method_callback_sort(self: pointer, column: cint, order: cint): void {.cdecl.} =
  let inst = cast[VirtualQAbstractItemModel](fcQAbstractItemModel_vdata(self))
  let slotval1 = column
  let slotval2 = cint(order)
  inst.sort(slotval1, slotval2)

method buddy*(self: VirtualQAbstractItemModel, index: gen_qabstractitemmodel_types.QModelIndex): gen_qabstractitemmodel_types.QModelIndex {.base.} =
  QAbstractItemModelbuddy(self[], index)
proc cQAbstractItemModel_method_callback_buddy(self: pointer, index: pointer): pointer {.cdecl.} =
  let inst = cast[VirtualQAbstractItemModel](fcQAbstractItemModel_vdata(self))
  let slotval1 = gen_qabstractitemmodel_types.QModelIndex(h: index, owned: false)
  var virtualReturn = inst.buddy(slotval1)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

method match*(self: VirtualQAbstractItemModel, start: gen_qabstractitemmodel_types.QModelIndex, role: cint, value: gen_qvariant_types.QVariant, hits: cint, flags: cint): seq[gen_qabstractitemmodel_types.QModelIndex] {.base.} =
  QAbstractItemModelmatch(self[], start, role, value, hits, flags)
proc cQAbstractItemModel_method_callback_match(self: pointer, start: pointer, role: cint, value: pointer, hits: cint, flags: cint): struct_miqt_array {.cdecl.} =
  let inst = cast[VirtualQAbstractItemModel](fcQAbstractItemModel_vdata(self))
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

  struct_miqt_array(len: csize_t(len(virtualReturn)), data: if len(virtualReturn) == 0: nil else: addr(virtualReturn_CArray[0]))

method span*(self: VirtualQAbstractItemModel, index: gen_qabstractitemmodel_types.QModelIndex): gen_qsize_types.QSize {.base.} =
  QAbstractItemModelspan(self[], index)
proc cQAbstractItemModel_method_callback_span(self: pointer, index: pointer): pointer {.cdecl.} =
  let inst = cast[VirtualQAbstractItemModel](fcQAbstractItemModel_vdata(self))
  let slotval1 = gen_qabstractitemmodel_types.QModelIndex(h: index, owned: false)
  var virtualReturn = inst.span(slotval1)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

method roleNames*(self: VirtualQAbstractItemModel): Table[cint,seq[byte]] {.base.} =
  QAbstractItemModelroleNames(self[])
proc cQAbstractItemModel_method_callback_roleNames(self: pointer): struct_miqt_map {.cdecl.} =
  let inst = cast[VirtualQAbstractItemModel](fcQAbstractItemModel_vdata(self))
  var virtualReturn = inst.roleNames()
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

method submit*(self: VirtualQAbstractItemModel): bool {.base.} =
  QAbstractItemModelsubmit(self[])
proc cQAbstractItemModel_method_callback_submit(self: pointer): bool {.cdecl.} =
  let inst = cast[VirtualQAbstractItemModel](fcQAbstractItemModel_vdata(self))
  var virtualReturn = inst.submit()
  virtualReturn

method revert*(self: VirtualQAbstractItemModel): void {.base.} =
  QAbstractItemModelrevert(self[])
proc cQAbstractItemModel_method_callback_revert(self: pointer): void {.cdecl.} =
  let inst = cast[VirtualQAbstractItemModel](fcQAbstractItemModel_vdata(self))
  inst.revert()

method event*(self: VirtualQAbstractItemModel, event: gen_qcoreevent_types.QEvent): bool {.base.} =
  QAbstractItemModelevent(self[], event)
proc cQAbstractItemModel_method_callback_event(self: pointer, event: pointer): bool {.cdecl.} =
  let inst = cast[VirtualQAbstractItemModel](fcQAbstractItemModel_vdata(self))
  let slotval1 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  var virtualReturn = inst.event(slotval1)
  virtualReturn

method eventFilter*(self: VirtualQAbstractItemModel, watched: gen_qobject_types.QObject, event: gen_qcoreevent_types.QEvent): bool {.base.} =
  QAbstractItemModeleventFilter(self[], watched, event)
proc cQAbstractItemModel_method_callback_eventFilter(self: pointer, watched: pointer, event: pointer): bool {.cdecl.} =
  let inst = cast[VirtualQAbstractItemModel](fcQAbstractItemModel_vdata(self))
  let slotval1 = gen_qobject_types.QObject(h: watched, owned: false)
  let slotval2 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  var virtualReturn = inst.eventFilter(slotval1, slotval2)
  virtualReturn

method timerEvent*(self: VirtualQAbstractItemModel, event: gen_qcoreevent_types.QTimerEvent): void {.base.} =
  QAbstractItemModeltimerEvent(self[], event)
proc cQAbstractItemModel_method_callback_timerEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQAbstractItemModel](fcQAbstractItemModel_vdata(self))
  let slotval1 = gen_qcoreevent_types.QTimerEvent(h: event, owned: false)
  inst.timerEvent(slotval1)

method childEvent*(self: VirtualQAbstractItemModel, event: gen_qcoreevent_types.QChildEvent): void {.base.} =
  QAbstractItemModelchildEvent(self[], event)
proc cQAbstractItemModel_method_callback_childEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQAbstractItemModel](fcQAbstractItemModel_vdata(self))
  let slotval1 = gen_qcoreevent_types.QChildEvent(h: event, owned: false)
  inst.childEvent(slotval1)

method customEvent*(self: VirtualQAbstractItemModel, event: gen_qcoreevent_types.QEvent): void {.base.} =
  QAbstractItemModelcustomEvent(self[], event)
proc cQAbstractItemModel_method_callback_customEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQAbstractItemModel](fcQAbstractItemModel_vdata(self))
  let slotval1 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  inst.customEvent(slotval1)

method connectNotify*(self: VirtualQAbstractItemModel, signal: gen_qmetaobject_types.QMetaMethod): void {.base.} =
  QAbstractItemModelconnectNotify(self[], signal)
proc cQAbstractItemModel_method_callback_connectNotify(self: pointer, signal: pointer): void {.cdecl.} =
  let inst = cast[VirtualQAbstractItemModel](fcQAbstractItemModel_vdata(self))
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal, owned: false)
  inst.connectNotify(slotval1)

method disconnectNotify*(self: VirtualQAbstractItemModel, signal: gen_qmetaobject_types.QMetaMethod): void {.base.} =
  QAbstractItemModeldisconnectNotify(self[], signal)
proc cQAbstractItemModel_method_callback_disconnectNotify(self: pointer, signal: pointer): void {.cdecl.} =
  let inst = cast[VirtualQAbstractItemModel](fcQAbstractItemModel_vdata(self))
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal, owned: false)
  inst.disconnectNotify(slotval1)

proc resetInternalData*(self: gen_qabstractitemmodel_types.QAbstractItemModel): void =
  fcQAbstractItemModel_protectedbase_resetInternalData(self.h)

proc createIndex*(self: gen_qabstractitemmodel_types.QAbstractItemModel, row: cint, column: cint): gen_qabstractitemmodel_types.QModelIndex =
  gen_qabstractitemmodel_types.QModelIndex(h: fcQAbstractItemModel_protectedbase_createIndex(self.h, row, column), owned: true)

proc createIndex*(self: gen_qabstractitemmodel_types.QAbstractItemModel, row: cint, column: cint, id: uint): gen_qabstractitemmodel_types.QModelIndex =
  gen_qabstractitemmodel_types.QModelIndex(h: fcQAbstractItemModel_protectedbase_createIndex2(self.h, row, column, id), owned: true)

proc encodeData*(self: gen_qabstractitemmodel_types.QAbstractItemModel, indexes: seq[gen_qabstractitemmodel_types.QModelIndex], stream: gen_qdatastream_types.QDataStream): void =
  var indexes_CArray = newSeq[pointer](len(indexes))
  for i in 0..<len(indexes):
    indexes_CArray[i] = indexes[i].h

  fcQAbstractItemModel_protectedbase_encodeData(self.h, struct_miqt_array(len: csize_t(len(indexes)), data: if len(indexes) == 0: nil else: addr(indexes_CArray[0])), stream.h)

proc decodeData*(self: gen_qabstractitemmodel_types.QAbstractItemModel, row: cint, column: cint, parent: gen_qabstractitemmodel_types.QModelIndex, stream: gen_qdatastream_types.QDataStream): bool =
  fcQAbstractItemModel_protectedbase_decodeData(self.h, row, column, parent.h, stream.h)

proc beginInsertRows*(self: gen_qabstractitemmodel_types.QAbstractItemModel, parent: gen_qabstractitemmodel_types.QModelIndex, first: cint, last: cint): void =
  fcQAbstractItemModel_protectedbase_beginInsertRows(self.h, parent.h, first, last)

proc endInsertRows*(self: gen_qabstractitemmodel_types.QAbstractItemModel): void =
  fcQAbstractItemModel_protectedbase_endInsertRows(self.h)

proc beginRemoveRows*(self: gen_qabstractitemmodel_types.QAbstractItemModel, parent: gen_qabstractitemmodel_types.QModelIndex, first: cint, last: cint): void =
  fcQAbstractItemModel_protectedbase_beginRemoveRows(self.h, parent.h, first, last)

proc endRemoveRows*(self: gen_qabstractitemmodel_types.QAbstractItemModel): void =
  fcQAbstractItemModel_protectedbase_endRemoveRows(self.h)

proc beginMoveRows*(self: gen_qabstractitemmodel_types.QAbstractItemModel, sourceParent: gen_qabstractitemmodel_types.QModelIndex, sourceFirst: cint, sourceLast: cint, destinationParent: gen_qabstractitemmodel_types.QModelIndex, destinationRow: cint): bool =
  fcQAbstractItemModel_protectedbase_beginMoveRows(self.h, sourceParent.h, sourceFirst, sourceLast, destinationParent.h, destinationRow)

proc endMoveRows*(self: gen_qabstractitemmodel_types.QAbstractItemModel): void =
  fcQAbstractItemModel_protectedbase_endMoveRows(self.h)

proc beginInsertColumns*(self: gen_qabstractitemmodel_types.QAbstractItemModel, parent: gen_qabstractitemmodel_types.QModelIndex, first: cint, last: cint): void =
  fcQAbstractItemModel_protectedbase_beginInsertColumns(self.h, parent.h, first, last)

proc endInsertColumns*(self: gen_qabstractitemmodel_types.QAbstractItemModel): void =
  fcQAbstractItemModel_protectedbase_endInsertColumns(self.h)

proc beginRemoveColumns*(self: gen_qabstractitemmodel_types.QAbstractItemModel, parent: gen_qabstractitemmodel_types.QModelIndex, first: cint, last: cint): void =
  fcQAbstractItemModel_protectedbase_beginRemoveColumns(self.h, parent.h, first, last)

proc endRemoveColumns*(self: gen_qabstractitemmodel_types.QAbstractItemModel): void =
  fcQAbstractItemModel_protectedbase_endRemoveColumns(self.h)

proc beginMoveColumns*(self: gen_qabstractitemmodel_types.QAbstractItemModel, sourceParent: gen_qabstractitemmodel_types.QModelIndex, sourceFirst: cint, sourceLast: cint, destinationParent: gen_qabstractitemmodel_types.QModelIndex, destinationColumn: cint): bool =
  fcQAbstractItemModel_protectedbase_beginMoveColumns(self.h, sourceParent.h, sourceFirst, sourceLast, destinationParent.h, destinationColumn)

proc endMoveColumns*(self: gen_qabstractitemmodel_types.QAbstractItemModel): void =
  fcQAbstractItemModel_protectedbase_endMoveColumns(self.h)

proc beginResetModel*(self: gen_qabstractitemmodel_types.QAbstractItemModel): void =
  fcQAbstractItemModel_protectedbase_beginResetModel(self.h)

proc endResetModel*(self: gen_qabstractitemmodel_types.QAbstractItemModel): void =
  fcQAbstractItemModel_protectedbase_endResetModel(self.h)

proc changePersistentIndex*(self: gen_qabstractitemmodel_types.QAbstractItemModel, fromVal: gen_qabstractitemmodel_types.QModelIndex, to: gen_qabstractitemmodel_types.QModelIndex): void =
  fcQAbstractItemModel_protectedbase_changePersistentIndex(self.h, fromVal.h, to.h)

proc changePersistentIndexList*(self: gen_qabstractitemmodel_types.QAbstractItemModel, fromVal: seq[gen_qabstractitemmodel_types.QModelIndex], to: seq[gen_qabstractitemmodel_types.QModelIndex]): void =
  var fromVal_CArray = newSeq[pointer](len(fromVal))
  for i in 0..<len(fromVal):
    fromVal_CArray[i] = fromVal[i].h

  var to_CArray = newSeq[pointer](len(to))
  for i in 0..<len(to):
    to_CArray[i] = to[i].h

  fcQAbstractItemModel_protectedbase_changePersistentIndexList(self.h, struct_miqt_array(len: csize_t(len(fromVal)), data: if len(fromVal) == 0: nil else: addr(fromVal_CArray[0])), struct_miqt_array(len: csize_t(len(to)), data: if len(to) == 0: nil else: addr(to_CArray[0])))

proc persistentIndexList*(self: gen_qabstractitemmodel_types.QAbstractItemModel): seq[gen_qabstractitemmodel_types.QModelIndex] =
  var v_ma = fcQAbstractItemModel_protectedbase_persistentIndexList(self.h)
  var vx_ret = newSeq[gen_qabstractitemmodel_types.QModelIndex](int(v_ma.len))
  let v_outCast = cast[ptr UncheckedArray[pointer]](v_ma.data)
  for i in 0 ..< v_ma.len:
    vx_ret[i] = gen_qabstractitemmodel_types.QModelIndex(h: v_outCast[i], owned: true)
  c_free(v_ma.data)
  vx_ret

proc createIndex*(self: gen_qabstractitemmodel_types.QAbstractItemModel, row: cint, column: cint, data: pointer): gen_qabstractitemmodel_types.QModelIndex =
  gen_qabstractitemmodel_types.QModelIndex(h: fcQAbstractItemModel_protectedbase_createIndex3(self.h, row, column, data), owned: true)

proc sender*(self: gen_qabstractitemmodel_types.QAbstractItemModel): gen_qobject_types.QObject =
  gen_qobject_types.QObject(h: fcQAbstractItemModel_protectedbase_sender(self.h), owned: false)

proc senderSignalIndex*(self: gen_qabstractitemmodel_types.QAbstractItemModel): cint =
  fcQAbstractItemModel_protectedbase_senderSignalIndex(self.h)

proc receivers*(self: gen_qabstractitemmodel_types.QAbstractItemModel, signal: cstring): cint =
  fcQAbstractItemModel_protectedbase_receivers(self.h, signal)

proc isSignalConnected*(self: gen_qabstractitemmodel_types.QAbstractItemModel, signal: gen_qmetaobject_types.QMetaMethod): bool =
  fcQAbstractItemModel_protectedbase_isSignalConnected(self.h, signal.h)

proc create*(T: type gen_qabstractitemmodel_types.QAbstractItemModel,
    vtbl: ref QAbstractItemModelVTable = nil): gen_qabstractitemmodel_types.QAbstractItemModel =
  let vtbl = if vtbl == nil: new QAbstractItemModelVTable else: vtbl
  GC_ref(vtbl)
  vtbl[].vtbl.destructor = proc(self: pointer) {.cdecl.} =
    let vtbl = cast[ref QAbstractItemModelVTable](fcQAbstractItemModel_vdata(self))
    GC_unref(vtbl)
  if not isNil(vtbl[].metaObject):
    vtbl[].vtbl.metaObject = cQAbstractItemModel_vtable_callback_metaObject
  if not isNil(vtbl[].metacast):
    vtbl[].vtbl.metacast = cQAbstractItemModel_vtable_callback_metacast
  if not isNil(vtbl[].metacall):
    vtbl[].vtbl.metacall = cQAbstractItemModel_vtable_callback_metacall
  if not isNil(vtbl[].index):
    vtbl[].vtbl.index = cQAbstractItemModel_vtable_callback_index
  if not isNil(vtbl[].parent):
    vtbl[].vtbl.parent = cQAbstractItemModel_vtable_callback_parent
  if not isNil(vtbl[].sibling):
    vtbl[].vtbl.sibling = cQAbstractItemModel_vtable_callback_sibling
  if not isNil(vtbl[].rowCount):
    vtbl[].vtbl.rowCount = cQAbstractItemModel_vtable_callback_rowCount
  if not isNil(vtbl[].columnCount):
    vtbl[].vtbl.columnCount = cQAbstractItemModel_vtable_callback_columnCount
  if not isNil(vtbl[].hasChildren):
    vtbl[].vtbl.hasChildren = cQAbstractItemModel_vtable_callback_hasChildren
  if not isNil(vtbl[].data):
    vtbl[].vtbl.data = cQAbstractItemModel_vtable_callback_data
  if not isNil(vtbl[].setData):
    vtbl[].vtbl.setData = cQAbstractItemModel_vtable_callback_setData
  if not isNil(vtbl[].headerData):
    vtbl[].vtbl.headerData = cQAbstractItemModel_vtable_callback_headerData
  if not isNil(vtbl[].setHeaderData):
    vtbl[].vtbl.setHeaderData = cQAbstractItemModel_vtable_callback_setHeaderData
  if not isNil(vtbl[].itemData):
    vtbl[].vtbl.itemData = cQAbstractItemModel_vtable_callback_itemData
  if not isNil(vtbl[].setItemData):
    vtbl[].vtbl.setItemData = cQAbstractItemModel_vtable_callback_setItemData
  if not isNil(vtbl[].mimeTypes):
    vtbl[].vtbl.mimeTypes = cQAbstractItemModel_vtable_callback_mimeTypes
  if not isNil(vtbl[].mimeData):
    vtbl[].vtbl.mimeData = cQAbstractItemModel_vtable_callback_mimeData
  if not isNil(vtbl[].canDropMimeData):
    vtbl[].vtbl.canDropMimeData = cQAbstractItemModel_vtable_callback_canDropMimeData
  if not isNil(vtbl[].dropMimeData):
    vtbl[].vtbl.dropMimeData = cQAbstractItemModel_vtable_callback_dropMimeData
  if not isNil(vtbl[].supportedDropActions):
    vtbl[].vtbl.supportedDropActions = cQAbstractItemModel_vtable_callback_supportedDropActions
  if not isNil(vtbl[].supportedDragActions):
    vtbl[].vtbl.supportedDragActions = cQAbstractItemModel_vtable_callback_supportedDragActions
  if not isNil(vtbl[].insertRows):
    vtbl[].vtbl.insertRows = cQAbstractItemModel_vtable_callback_insertRows
  if not isNil(vtbl[].insertColumns):
    vtbl[].vtbl.insertColumns = cQAbstractItemModel_vtable_callback_insertColumns
  if not isNil(vtbl[].removeRows):
    vtbl[].vtbl.removeRows = cQAbstractItemModel_vtable_callback_removeRows
  if not isNil(vtbl[].removeColumns):
    vtbl[].vtbl.removeColumns = cQAbstractItemModel_vtable_callback_removeColumns
  if not isNil(vtbl[].moveRows):
    vtbl[].vtbl.moveRows = cQAbstractItemModel_vtable_callback_moveRows
  if not isNil(vtbl[].moveColumns):
    vtbl[].vtbl.moveColumns = cQAbstractItemModel_vtable_callback_moveColumns
  if not isNil(vtbl[].fetchMore):
    vtbl[].vtbl.fetchMore = cQAbstractItemModel_vtable_callback_fetchMore
  if not isNil(vtbl[].canFetchMore):
    vtbl[].vtbl.canFetchMore = cQAbstractItemModel_vtable_callback_canFetchMore
  if not isNil(vtbl[].flags):
    vtbl[].vtbl.flags = cQAbstractItemModel_vtable_callback_flags
  if not isNil(vtbl[].sort):
    vtbl[].vtbl.sort = cQAbstractItemModel_vtable_callback_sort
  if not isNil(vtbl[].buddy):
    vtbl[].vtbl.buddy = cQAbstractItemModel_vtable_callback_buddy
  if not isNil(vtbl[].match):
    vtbl[].vtbl.match = cQAbstractItemModel_vtable_callback_match
  if not isNil(vtbl[].span):
    vtbl[].vtbl.span = cQAbstractItemModel_vtable_callback_span
  if not isNil(vtbl[].roleNames):
    vtbl[].vtbl.roleNames = cQAbstractItemModel_vtable_callback_roleNames
  if not isNil(vtbl[].submit):
    vtbl[].vtbl.submit = cQAbstractItemModel_vtable_callback_submit
  if not isNil(vtbl[].revert):
    vtbl[].vtbl.revert = cQAbstractItemModel_vtable_callback_revert
  if not isNil(vtbl[].event):
    vtbl[].vtbl.event = cQAbstractItemModel_vtable_callback_event
  if not isNil(vtbl[].eventFilter):
    vtbl[].vtbl.eventFilter = cQAbstractItemModel_vtable_callback_eventFilter
  if not isNil(vtbl[].timerEvent):
    vtbl[].vtbl.timerEvent = cQAbstractItemModel_vtable_callback_timerEvent
  if not isNil(vtbl[].childEvent):
    vtbl[].vtbl.childEvent = cQAbstractItemModel_vtable_callback_childEvent
  if not isNil(vtbl[].customEvent):
    vtbl[].vtbl.customEvent = cQAbstractItemModel_vtable_callback_customEvent
  if not isNil(vtbl[].connectNotify):
    vtbl[].vtbl.connectNotify = cQAbstractItemModel_vtable_callback_connectNotify
  if not isNil(vtbl[].disconnectNotify):
    vtbl[].vtbl.disconnectNotify = cQAbstractItemModel_vtable_callback_disconnectNotify
  gen_qabstractitemmodel_types.QAbstractItemModel(h: fcQAbstractItemModel_new(addr(vtbl[].vtbl), addr(vtbl[])), owned: true)

proc create*(T: type gen_qabstractitemmodel_types.QAbstractItemModel,
    parent: gen_qobject_types.QObject,
    vtbl: ref QAbstractItemModelVTable = nil): gen_qabstractitemmodel_types.QAbstractItemModel =
  let vtbl = if vtbl == nil: new QAbstractItemModelVTable else: vtbl
  GC_ref(vtbl)
  vtbl[].vtbl.destructor = proc(self: pointer) {.cdecl.} =
    let vtbl = cast[ref QAbstractItemModelVTable](fcQAbstractItemModel_vdata(self))
    GC_unref(vtbl)
  if not isNil(vtbl[].metaObject):
    vtbl[].vtbl.metaObject = cQAbstractItemModel_vtable_callback_metaObject
  if not isNil(vtbl[].metacast):
    vtbl[].vtbl.metacast = cQAbstractItemModel_vtable_callback_metacast
  if not isNil(vtbl[].metacall):
    vtbl[].vtbl.metacall = cQAbstractItemModel_vtable_callback_metacall
  if not isNil(vtbl[].index):
    vtbl[].vtbl.index = cQAbstractItemModel_vtable_callback_index
  if not isNil(vtbl[].parent):
    vtbl[].vtbl.parent = cQAbstractItemModel_vtable_callback_parent
  if not isNil(vtbl[].sibling):
    vtbl[].vtbl.sibling = cQAbstractItemModel_vtable_callback_sibling
  if not isNil(vtbl[].rowCount):
    vtbl[].vtbl.rowCount = cQAbstractItemModel_vtable_callback_rowCount
  if not isNil(vtbl[].columnCount):
    vtbl[].vtbl.columnCount = cQAbstractItemModel_vtable_callback_columnCount
  if not isNil(vtbl[].hasChildren):
    vtbl[].vtbl.hasChildren = cQAbstractItemModel_vtable_callback_hasChildren
  if not isNil(vtbl[].data):
    vtbl[].vtbl.data = cQAbstractItemModel_vtable_callback_data
  if not isNil(vtbl[].setData):
    vtbl[].vtbl.setData = cQAbstractItemModel_vtable_callback_setData
  if not isNil(vtbl[].headerData):
    vtbl[].vtbl.headerData = cQAbstractItemModel_vtable_callback_headerData
  if not isNil(vtbl[].setHeaderData):
    vtbl[].vtbl.setHeaderData = cQAbstractItemModel_vtable_callback_setHeaderData
  if not isNil(vtbl[].itemData):
    vtbl[].vtbl.itemData = cQAbstractItemModel_vtable_callback_itemData
  if not isNil(vtbl[].setItemData):
    vtbl[].vtbl.setItemData = cQAbstractItemModel_vtable_callback_setItemData
  if not isNil(vtbl[].mimeTypes):
    vtbl[].vtbl.mimeTypes = cQAbstractItemModel_vtable_callback_mimeTypes
  if not isNil(vtbl[].mimeData):
    vtbl[].vtbl.mimeData = cQAbstractItemModel_vtable_callback_mimeData
  if not isNil(vtbl[].canDropMimeData):
    vtbl[].vtbl.canDropMimeData = cQAbstractItemModel_vtable_callback_canDropMimeData
  if not isNil(vtbl[].dropMimeData):
    vtbl[].vtbl.dropMimeData = cQAbstractItemModel_vtable_callback_dropMimeData
  if not isNil(vtbl[].supportedDropActions):
    vtbl[].vtbl.supportedDropActions = cQAbstractItemModel_vtable_callback_supportedDropActions
  if not isNil(vtbl[].supportedDragActions):
    vtbl[].vtbl.supportedDragActions = cQAbstractItemModel_vtable_callback_supportedDragActions
  if not isNil(vtbl[].insertRows):
    vtbl[].vtbl.insertRows = cQAbstractItemModel_vtable_callback_insertRows
  if not isNil(vtbl[].insertColumns):
    vtbl[].vtbl.insertColumns = cQAbstractItemModel_vtable_callback_insertColumns
  if not isNil(vtbl[].removeRows):
    vtbl[].vtbl.removeRows = cQAbstractItemModel_vtable_callback_removeRows
  if not isNil(vtbl[].removeColumns):
    vtbl[].vtbl.removeColumns = cQAbstractItemModel_vtable_callback_removeColumns
  if not isNil(vtbl[].moveRows):
    vtbl[].vtbl.moveRows = cQAbstractItemModel_vtable_callback_moveRows
  if not isNil(vtbl[].moveColumns):
    vtbl[].vtbl.moveColumns = cQAbstractItemModel_vtable_callback_moveColumns
  if not isNil(vtbl[].fetchMore):
    vtbl[].vtbl.fetchMore = cQAbstractItemModel_vtable_callback_fetchMore
  if not isNil(vtbl[].canFetchMore):
    vtbl[].vtbl.canFetchMore = cQAbstractItemModel_vtable_callback_canFetchMore
  if not isNil(vtbl[].flags):
    vtbl[].vtbl.flags = cQAbstractItemModel_vtable_callback_flags
  if not isNil(vtbl[].sort):
    vtbl[].vtbl.sort = cQAbstractItemModel_vtable_callback_sort
  if not isNil(vtbl[].buddy):
    vtbl[].vtbl.buddy = cQAbstractItemModel_vtable_callback_buddy
  if not isNil(vtbl[].match):
    vtbl[].vtbl.match = cQAbstractItemModel_vtable_callback_match
  if not isNil(vtbl[].span):
    vtbl[].vtbl.span = cQAbstractItemModel_vtable_callback_span
  if not isNil(vtbl[].roleNames):
    vtbl[].vtbl.roleNames = cQAbstractItemModel_vtable_callback_roleNames
  if not isNil(vtbl[].submit):
    vtbl[].vtbl.submit = cQAbstractItemModel_vtable_callback_submit
  if not isNil(vtbl[].revert):
    vtbl[].vtbl.revert = cQAbstractItemModel_vtable_callback_revert
  if not isNil(vtbl[].event):
    vtbl[].vtbl.event = cQAbstractItemModel_vtable_callback_event
  if not isNil(vtbl[].eventFilter):
    vtbl[].vtbl.eventFilter = cQAbstractItemModel_vtable_callback_eventFilter
  if not isNil(vtbl[].timerEvent):
    vtbl[].vtbl.timerEvent = cQAbstractItemModel_vtable_callback_timerEvent
  if not isNil(vtbl[].childEvent):
    vtbl[].vtbl.childEvent = cQAbstractItemModel_vtable_callback_childEvent
  if not isNil(vtbl[].customEvent):
    vtbl[].vtbl.customEvent = cQAbstractItemModel_vtable_callback_customEvent
  if not isNil(vtbl[].connectNotify):
    vtbl[].vtbl.connectNotify = cQAbstractItemModel_vtable_callback_connectNotify
  if not isNil(vtbl[].disconnectNotify):
    vtbl[].vtbl.disconnectNotify = cQAbstractItemModel_vtable_callback_disconnectNotify
  gen_qabstractitemmodel_types.QAbstractItemModel(h: fcQAbstractItemModel_new2(addr(vtbl[].vtbl), addr(vtbl[]), parent.h), owned: true)

const cQAbstractItemModel_mvtbl = cQAbstractItemModelVTable(
  destructor: proc(self: pointer) {.cdecl.} =
    let inst = cast[ptr typeof(VirtualQAbstractItemModel()[])](self.fcQAbstractItemModel_vtbl())
    inst[].h = nil
    inst[].owned = false,
  metaObject: cQAbstractItemModel_method_callback_metaObject,
  metacast: cQAbstractItemModel_method_callback_metacast,
  metacall: cQAbstractItemModel_method_callback_metacall,
  index: cQAbstractItemModel_method_callback_index,
  parent: cQAbstractItemModel_method_callback_parent,
  sibling: cQAbstractItemModel_method_callback_sibling,
  rowCount: cQAbstractItemModel_method_callback_rowCount,
  columnCount: cQAbstractItemModel_method_callback_columnCount,
  hasChildren: cQAbstractItemModel_method_callback_hasChildren,
  data: cQAbstractItemModel_method_callback_data,
  setData: cQAbstractItemModel_method_callback_setData,
  headerData: cQAbstractItemModel_method_callback_headerData,
  setHeaderData: cQAbstractItemModel_method_callback_setHeaderData,
  itemData: cQAbstractItemModel_method_callback_itemData,
  setItemData: cQAbstractItemModel_method_callback_setItemData,
  mimeTypes: cQAbstractItemModel_method_callback_mimeTypes,
  mimeData: cQAbstractItemModel_method_callback_mimeData,
  canDropMimeData: cQAbstractItemModel_method_callback_canDropMimeData,
  dropMimeData: cQAbstractItemModel_method_callback_dropMimeData,
  supportedDropActions: cQAbstractItemModel_method_callback_supportedDropActions,
  supportedDragActions: cQAbstractItemModel_method_callback_supportedDragActions,
  insertRows: cQAbstractItemModel_method_callback_insertRows,
  insertColumns: cQAbstractItemModel_method_callback_insertColumns,
  removeRows: cQAbstractItemModel_method_callback_removeRows,
  removeColumns: cQAbstractItemModel_method_callback_removeColumns,
  moveRows: cQAbstractItemModel_method_callback_moveRows,
  moveColumns: cQAbstractItemModel_method_callback_moveColumns,
  fetchMore: cQAbstractItemModel_method_callback_fetchMore,
  canFetchMore: cQAbstractItemModel_method_callback_canFetchMore,
  flags: cQAbstractItemModel_method_callback_flags,
  sort: cQAbstractItemModel_method_callback_sort,
  buddy: cQAbstractItemModel_method_callback_buddy,
  match: cQAbstractItemModel_method_callback_match,
  span: cQAbstractItemModel_method_callback_span,
  roleNames: cQAbstractItemModel_method_callback_roleNames,
  submit: cQAbstractItemModel_method_callback_submit,
  revert: cQAbstractItemModel_method_callback_revert,
  event: cQAbstractItemModel_method_callback_event,
  eventFilter: cQAbstractItemModel_method_callback_eventFilter,
  timerEvent: cQAbstractItemModel_method_callback_timerEvent,
  childEvent: cQAbstractItemModel_method_callback_childEvent,
  customEvent: cQAbstractItemModel_method_callback_customEvent,
  connectNotify: cQAbstractItemModel_method_callback_connectNotify,
  disconnectNotify: cQAbstractItemModel_method_callback_disconnectNotify,
)
proc create*(T: type gen_qabstractitemmodel_types.QAbstractItemModel,
    inst: VirtualQAbstractItemModel) =
  if inst[].h != nil: delete(move(inst[]))
  inst[].h = fcQAbstractItemModel_new(addr(cQAbstractItemModel_mvtbl), addr(inst[]))
  inst[].owned = true

proc create*(T: type gen_qabstractitemmodel_types.QAbstractItemModel,
    parent: gen_qobject_types.QObject,
    inst: VirtualQAbstractItemModel) =
  if inst[].h != nil: delete(move(inst[]))
  inst[].h = fcQAbstractItemModel_new2(addr(cQAbstractItemModel_mvtbl), addr(inst[]), parent.h)
  inst[].owned = true

proc staticMetaObject*(_: type gen_qabstractitemmodel_types.QAbstractItemModel): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQAbstractItemModel_staticMetaObject())
proc metaObject*(self: gen_qabstractitemmodel_types.QAbstractTableModel): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQAbstractTableModel_metaObject(self.h), owned: false)

proc metacast*(self: gen_qabstractitemmodel_types.QAbstractTableModel, param1: cstring): pointer =
  fcQAbstractTableModel_metacast(self.h, param1)

proc metacall*(self: gen_qabstractitemmodel_types.QAbstractTableModel, param1: cint, param2: cint, param3: pointer): cint =
  fcQAbstractTableModel_metacall(self.h, cint(param1), param2, param3)

proc tr*(_: type gen_qabstractitemmodel_types.QAbstractTableModel, s: cstring): string =
  let v_ms = fcQAbstractTableModel_tr(s)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc trUtf8*(_: type gen_qabstractitemmodel_types.QAbstractTableModel, s: cstring): string =
  let v_ms = fcQAbstractTableModel_trUtf8(s)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc index*(self: gen_qabstractitemmodel_types.QAbstractTableModel, row: cint, column: cint, parent: gen_qabstractitemmodel_types.QModelIndex): gen_qabstractitemmodel_types.QModelIndex =
  gen_qabstractitemmodel_types.QModelIndex(h: fcQAbstractTableModel_index(self.h, row, column, parent.h), owned: true)

proc sibling*(self: gen_qabstractitemmodel_types.QAbstractTableModel, row: cint, column: cint, idx: gen_qabstractitemmodel_types.QModelIndex): gen_qabstractitemmodel_types.QModelIndex =
  gen_qabstractitemmodel_types.QModelIndex(h: fcQAbstractTableModel_sibling(self.h, row, column, idx.h), owned: true)

proc dropMimeData*(self: gen_qabstractitemmodel_types.QAbstractTableModel, data: gen_qmimedata_types.QMimeData, action: cint, row: cint, column: cint, parent: gen_qabstractitemmodel_types.QModelIndex): bool =
  fcQAbstractTableModel_dropMimeData(self.h, data.h, cint(action), row, column, parent.h)

proc flags*(self: gen_qabstractitemmodel_types.QAbstractTableModel, index: gen_qabstractitemmodel_types.QModelIndex): cint =
  cint(fcQAbstractTableModel_flags(self.h, index.h))

proc tr*(_: type gen_qabstractitemmodel_types.QAbstractTableModel, s: cstring, c: cstring): string =
  let v_ms = fcQAbstractTableModel_tr2(s, c)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc tr*(_: type gen_qabstractitemmodel_types.QAbstractTableModel, s: cstring, c: cstring, n: cint): string =
  let v_ms = fcQAbstractTableModel_tr3(s, c, n)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc trUtf8*(_: type gen_qabstractitemmodel_types.QAbstractTableModel, s: cstring, c: cstring): string =
  let v_ms = fcQAbstractTableModel_trUtf82(s, c)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc trUtf8*(_: type gen_qabstractitemmodel_types.QAbstractTableModel, s: cstring, c: cstring, n: cint): string =
  let v_ms = fcQAbstractTableModel_trUtf83(s, c, n)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

type QAbstractTableModelmetaObjectProc* = proc(self: QAbstractTableModel): gen_qobjectdefs_types.QMetaObject {.raises: [], gcsafe.}
type QAbstractTableModelmetacastProc* = proc(self: QAbstractTableModel, param1: cstring): pointer {.raises: [], gcsafe.}
type QAbstractTableModelmetacallProc* = proc(self: QAbstractTableModel, param1: cint, param2: cint, param3: pointer): cint {.raises: [], gcsafe.}
type QAbstractTableModelindexProc* = proc(self: QAbstractTableModel, row: cint, column: cint, parent: gen_qabstractitemmodel_types.QModelIndex): gen_qabstractitemmodel_types.QModelIndex {.raises: [], gcsafe.}
type QAbstractTableModelsiblingProc* = proc(self: QAbstractTableModel, row: cint, column: cint, idx: gen_qabstractitemmodel_types.QModelIndex): gen_qabstractitemmodel_types.QModelIndex {.raises: [], gcsafe.}
type QAbstractTableModeldropMimeDataProc* = proc(self: QAbstractTableModel, data: gen_qmimedata_types.QMimeData, action: cint, row: cint, column: cint, parent: gen_qabstractitemmodel_types.QModelIndex): bool {.raises: [], gcsafe.}
type QAbstractTableModelflagsProc* = proc(self: QAbstractTableModel, index: gen_qabstractitemmodel_types.QModelIndex): cint {.raises: [], gcsafe.}
type QAbstractTableModelrowCountProc* = proc(self: QAbstractTableModel, parent: gen_qabstractitemmodel_types.QModelIndex): cint {.raises: [], gcsafe.}
type QAbstractTableModelcolumnCountProc* = proc(self: QAbstractTableModel, parent: gen_qabstractitemmodel_types.QModelIndex): cint {.raises: [], gcsafe.}
type QAbstractTableModeldataProc* = proc(self: QAbstractTableModel, index: gen_qabstractitemmodel_types.QModelIndex, role: cint): gen_qvariant_types.QVariant {.raises: [], gcsafe.}
type QAbstractTableModelsetDataProc* = proc(self: QAbstractTableModel, index: gen_qabstractitemmodel_types.QModelIndex, value: gen_qvariant_types.QVariant, role: cint): bool {.raises: [], gcsafe.}
type QAbstractTableModelheaderDataProc* = proc(self: QAbstractTableModel, section: cint, orientation: cint, role: cint): gen_qvariant_types.QVariant {.raises: [], gcsafe.}
type QAbstractTableModelsetHeaderDataProc* = proc(self: QAbstractTableModel, section: cint, orientation: cint, value: gen_qvariant_types.QVariant, role: cint): bool {.raises: [], gcsafe.}
type QAbstractTableModelitemDataProc* = proc(self: QAbstractTableModel, index: gen_qabstractitemmodel_types.QModelIndex): Table[cint,gen_qvariant_types.QVariant] {.raises: [], gcsafe.}
type QAbstractTableModelsetItemDataProc* = proc(self: QAbstractTableModel, index: gen_qabstractitemmodel_types.QModelIndex, roles: Table[cint,gen_qvariant_types.QVariant]): bool {.raises: [], gcsafe.}
type QAbstractTableModelmimeTypesProc* = proc(self: QAbstractTableModel): seq[string] {.raises: [], gcsafe.}
type QAbstractTableModelmimeDataProc* = proc(self: QAbstractTableModel, indexes: seq[gen_qabstractitemmodel_types.QModelIndex]): gen_qmimedata_types.QMimeData {.raises: [], gcsafe.}
type QAbstractTableModelcanDropMimeDataProc* = proc(self: QAbstractTableModel, data: gen_qmimedata_types.QMimeData, action: cint, row: cint, column: cint, parent: gen_qabstractitemmodel_types.QModelIndex): bool {.raises: [], gcsafe.}
type QAbstractTableModelsupportedDropActionsProc* = proc(self: QAbstractTableModel): cint {.raises: [], gcsafe.}
type QAbstractTableModelsupportedDragActionsProc* = proc(self: QAbstractTableModel): cint {.raises: [], gcsafe.}
type QAbstractTableModelinsertRowsProc* = proc(self: QAbstractTableModel, row: cint, count: cint, parent: gen_qabstractitemmodel_types.QModelIndex): bool {.raises: [], gcsafe.}
type QAbstractTableModelinsertColumnsProc* = proc(self: QAbstractTableModel, column: cint, count: cint, parent: gen_qabstractitemmodel_types.QModelIndex): bool {.raises: [], gcsafe.}
type QAbstractTableModelremoveRowsProc* = proc(self: QAbstractTableModel, row: cint, count: cint, parent: gen_qabstractitemmodel_types.QModelIndex): bool {.raises: [], gcsafe.}
type QAbstractTableModelremoveColumnsProc* = proc(self: QAbstractTableModel, column: cint, count: cint, parent: gen_qabstractitemmodel_types.QModelIndex): bool {.raises: [], gcsafe.}
type QAbstractTableModelmoveRowsProc* = proc(self: QAbstractTableModel, sourceParent: gen_qabstractitemmodel_types.QModelIndex, sourceRow: cint, count: cint, destinationParent: gen_qabstractitemmodel_types.QModelIndex, destinationChild: cint): bool {.raises: [], gcsafe.}
type QAbstractTableModelmoveColumnsProc* = proc(self: QAbstractTableModel, sourceParent: gen_qabstractitemmodel_types.QModelIndex, sourceColumn: cint, count: cint, destinationParent: gen_qabstractitemmodel_types.QModelIndex, destinationChild: cint): bool {.raises: [], gcsafe.}
type QAbstractTableModelfetchMoreProc* = proc(self: QAbstractTableModel, parent: gen_qabstractitemmodel_types.QModelIndex): void {.raises: [], gcsafe.}
type QAbstractTableModelcanFetchMoreProc* = proc(self: QAbstractTableModel, parent: gen_qabstractitemmodel_types.QModelIndex): bool {.raises: [], gcsafe.}
type QAbstractTableModelsortProc* = proc(self: QAbstractTableModel, column: cint, order: cint): void {.raises: [], gcsafe.}
type QAbstractTableModelbuddyProc* = proc(self: QAbstractTableModel, index: gen_qabstractitemmodel_types.QModelIndex): gen_qabstractitemmodel_types.QModelIndex {.raises: [], gcsafe.}
type QAbstractTableModelmatchProc* = proc(self: QAbstractTableModel, start: gen_qabstractitemmodel_types.QModelIndex, role: cint, value: gen_qvariant_types.QVariant, hits: cint, flags: cint): seq[gen_qabstractitemmodel_types.QModelIndex] {.raises: [], gcsafe.}
type QAbstractTableModelspanProc* = proc(self: QAbstractTableModel, index: gen_qabstractitemmodel_types.QModelIndex): gen_qsize_types.QSize {.raises: [], gcsafe.}
type QAbstractTableModelroleNamesProc* = proc(self: QAbstractTableModel): Table[cint,seq[byte]] {.raises: [], gcsafe.}
type QAbstractTableModelsubmitProc* = proc(self: QAbstractTableModel): bool {.raises: [], gcsafe.}
type QAbstractTableModelrevertProc* = proc(self: QAbstractTableModel): void {.raises: [], gcsafe.}
type QAbstractTableModeleventProc* = proc(self: QAbstractTableModel, event: gen_qcoreevent_types.QEvent): bool {.raises: [], gcsafe.}
type QAbstractTableModeleventFilterProc* = proc(self: QAbstractTableModel, watched: gen_qobject_types.QObject, event: gen_qcoreevent_types.QEvent): bool {.raises: [], gcsafe.}
type QAbstractTableModeltimerEventProc* = proc(self: QAbstractTableModel, event: gen_qcoreevent_types.QTimerEvent): void {.raises: [], gcsafe.}
type QAbstractTableModelchildEventProc* = proc(self: QAbstractTableModel, event: gen_qcoreevent_types.QChildEvent): void {.raises: [], gcsafe.}
type QAbstractTableModelcustomEventProc* = proc(self: QAbstractTableModel, event: gen_qcoreevent_types.QEvent): void {.raises: [], gcsafe.}
type QAbstractTableModelconnectNotifyProc* = proc(self: QAbstractTableModel, signal: gen_qmetaobject_types.QMetaMethod): void {.raises: [], gcsafe.}
type QAbstractTableModeldisconnectNotifyProc* = proc(self: QAbstractTableModel, signal: gen_qmetaobject_types.QMetaMethod): void {.raises: [], gcsafe.}
type QAbstractTableModelVTable* {.inheritable, pure.} = object
  vtbl: cQAbstractTableModelVTable
  metaObject*: QAbstractTableModelmetaObjectProc
  metacast*: QAbstractTableModelmetacastProc
  metacall*: QAbstractTableModelmetacallProc
  index*: QAbstractTableModelindexProc
  sibling*: QAbstractTableModelsiblingProc
  dropMimeData*: QAbstractTableModeldropMimeDataProc
  flags*: QAbstractTableModelflagsProc
  rowCount*: QAbstractTableModelrowCountProc
  columnCount*: QAbstractTableModelcolumnCountProc
  data*: QAbstractTableModeldataProc
  setData*: QAbstractTableModelsetDataProc
  headerData*: QAbstractTableModelheaderDataProc
  setHeaderData*: QAbstractTableModelsetHeaderDataProc
  itemData*: QAbstractTableModelitemDataProc
  setItemData*: QAbstractTableModelsetItemDataProc
  mimeTypes*: QAbstractTableModelmimeTypesProc
  mimeData*: QAbstractTableModelmimeDataProc
  canDropMimeData*: QAbstractTableModelcanDropMimeDataProc
  supportedDropActions*: QAbstractTableModelsupportedDropActionsProc
  supportedDragActions*: QAbstractTableModelsupportedDragActionsProc
  insertRows*: QAbstractTableModelinsertRowsProc
  insertColumns*: QAbstractTableModelinsertColumnsProc
  removeRows*: QAbstractTableModelremoveRowsProc
  removeColumns*: QAbstractTableModelremoveColumnsProc
  moveRows*: QAbstractTableModelmoveRowsProc
  moveColumns*: QAbstractTableModelmoveColumnsProc
  fetchMore*: QAbstractTableModelfetchMoreProc
  canFetchMore*: QAbstractTableModelcanFetchMoreProc
  sort*: QAbstractTableModelsortProc
  buddy*: QAbstractTableModelbuddyProc
  match*: QAbstractTableModelmatchProc
  span*: QAbstractTableModelspanProc
  roleNames*: QAbstractTableModelroleNamesProc
  submit*: QAbstractTableModelsubmitProc
  revert*: QAbstractTableModelrevertProc
  event*: QAbstractTableModeleventProc
  eventFilter*: QAbstractTableModeleventFilterProc
  timerEvent*: QAbstractTableModeltimerEventProc
  childEvent*: QAbstractTableModelchildEventProc
  customEvent*: QAbstractTableModelcustomEventProc
  connectNotify*: QAbstractTableModelconnectNotifyProc
  disconnectNotify*: QAbstractTableModeldisconnectNotifyProc
proc QAbstractTableModelmetaObject*(self: gen_qabstractitemmodel_types.QAbstractTableModel): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQAbstractTableModel_virtualbase_metaObject(self.h), owned: false)

proc cQAbstractTableModel_vtable_callback_metaObject(self: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QAbstractTableModelVTable](fcQAbstractTableModel_vdata(self))
  let self = QAbstractTableModel(h: self)
  var virtualReturn = vtbl[].metaObject(self)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc QAbstractTableModelmetacast*(self: gen_qabstractitemmodel_types.QAbstractTableModel, param1: cstring): pointer =
  fcQAbstractTableModel_virtualbase_metacast(self.h, param1)

proc cQAbstractTableModel_vtable_callback_metacast(self: pointer, param1: cstring): pointer {.cdecl.} =
  let vtbl = cast[ptr QAbstractTableModelVTable](fcQAbstractTableModel_vdata(self))
  let self = QAbstractTableModel(h: self)
  let slotval1 = (param1)
  var virtualReturn = vtbl[].metacast(self, slotval1)
  virtualReturn

proc QAbstractTableModelmetacall*(self: gen_qabstractitemmodel_types.QAbstractTableModel, param1: cint, param2: cint, param3: pointer): cint =
  fcQAbstractTableModel_virtualbase_metacall(self.h, cint(param1), param2, param3)

proc cQAbstractTableModel_vtable_callback_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.cdecl.} =
  let vtbl = cast[ptr QAbstractTableModelVTable](fcQAbstractTableModel_vdata(self))
  let self = QAbstractTableModel(h: self)
  let slotval1 = cint(param1)
  let slotval2 = param2
  let slotval3 = param3
  var virtualReturn = vtbl[].metacall(self, slotval1, slotval2, slotval3)
  virtualReturn

proc QAbstractTableModelindex*(self: gen_qabstractitemmodel_types.QAbstractTableModel, row: cint, column: cint, parent: gen_qabstractitemmodel_types.QModelIndex): gen_qabstractitemmodel_types.QModelIndex =
  gen_qabstractitemmodel_types.QModelIndex(h: fcQAbstractTableModel_virtualbase_index(self.h, row, column, parent.h), owned: true)

proc cQAbstractTableModel_vtable_callback_index(self: pointer, row: cint, column: cint, parent: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QAbstractTableModelVTable](fcQAbstractTableModel_vdata(self))
  let self = QAbstractTableModel(h: self)
  let slotval1 = row
  let slotval2 = column
  let slotval3 = gen_qabstractitemmodel_types.QModelIndex(h: parent, owned: false)
  var virtualReturn = vtbl[].index(self, slotval1, slotval2, slotval3)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc QAbstractTableModelsibling*(self: gen_qabstractitemmodel_types.QAbstractTableModel, row: cint, column: cint, idx: gen_qabstractitemmodel_types.QModelIndex): gen_qabstractitemmodel_types.QModelIndex =
  gen_qabstractitemmodel_types.QModelIndex(h: fcQAbstractTableModel_virtualbase_sibling(self.h, row, column, idx.h), owned: true)

proc cQAbstractTableModel_vtable_callback_sibling(self: pointer, row: cint, column: cint, idx: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QAbstractTableModelVTable](fcQAbstractTableModel_vdata(self))
  let self = QAbstractTableModel(h: self)
  let slotval1 = row
  let slotval2 = column
  let slotval3 = gen_qabstractitemmodel_types.QModelIndex(h: idx, owned: false)
  var virtualReturn = vtbl[].sibling(self, slotval1, slotval2, slotval3)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc QAbstractTableModeldropMimeData*(self: gen_qabstractitemmodel_types.QAbstractTableModel, data: gen_qmimedata_types.QMimeData, action: cint, row: cint, column: cint, parent: gen_qabstractitemmodel_types.QModelIndex): bool =
  fcQAbstractTableModel_virtualbase_dropMimeData(self.h, data.h, cint(action), row, column, parent.h)

proc cQAbstractTableModel_vtable_callback_dropMimeData(self: pointer, data: pointer, action: cint, row: cint, column: cint, parent: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QAbstractTableModelVTable](fcQAbstractTableModel_vdata(self))
  let self = QAbstractTableModel(h: self)
  let slotval1 = gen_qmimedata_types.QMimeData(h: data, owned: false)
  let slotval2 = cint(action)
  let slotval3 = row
  let slotval4 = column
  let slotval5 = gen_qabstractitemmodel_types.QModelIndex(h: parent, owned: false)
  var virtualReturn = vtbl[].dropMimeData(self, slotval1, slotval2, slotval3, slotval4, slotval5)
  virtualReturn

proc QAbstractTableModelflags*(self: gen_qabstractitemmodel_types.QAbstractTableModel, index: gen_qabstractitemmodel_types.QModelIndex): cint =
  cint(fcQAbstractTableModel_virtualbase_flags(self.h, index.h))

proc cQAbstractTableModel_vtable_callback_flags(self: pointer, index: pointer): cint {.cdecl.} =
  let vtbl = cast[ptr QAbstractTableModelVTable](fcQAbstractTableModel_vdata(self))
  let self = QAbstractTableModel(h: self)
  let slotval1 = gen_qabstractitemmodel_types.QModelIndex(h: index, owned: false)
  var virtualReturn = vtbl[].flags(self, slotval1)
  cint(virtualReturn)

proc cQAbstractTableModel_vtable_callback_rowCount(self: pointer, parent: pointer): cint {.cdecl.} =
  let vtbl = cast[ptr QAbstractTableModelVTable](fcQAbstractTableModel_vdata(self))
  let self = QAbstractTableModel(h: self)
  let slotval1 = gen_qabstractitemmodel_types.QModelIndex(h: parent, owned: false)
  var virtualReturn = vtbl[].rowCount(self, slotval1)
  virtualReturn

proc cQAbstractTableModel_vtable_callback_columnCount(self: pointer, parent: pointer): cint {.cdecl.} =
  let vtbl = cast[ptr QAbstractTableModelVTable](fcQAbstractTableModel_vdata(self))
  let self = QAbstractTableModel(h: self)
  let slotval1 = gen_qabstractitemmodel_types.QModelIndex(h: parent, owned: false)
  var virtualReturn = vtbl[].columnCount(self, slotval1)
  virtualReturn

proc cQAbstractTableModel_vtable_callback_data(self: pointer, index: pointer, role: cint): pointer {.cdecl.} =
  let vtbl = cast[ptr QAbstractTableModelVTable](fcQAbstractTableModel_vdata(self))
  let self = QAbstractTableModel(h: self)
  let slotval1 = gen_qabstractitemmodel_types.QModelIndex(h: index, owned: false)
  let slotval2 = role
  var virtualReturn = vtbl[].data(self, slotval1, slotval2)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc QAbstractTableModelsetData*(self: gen_qabstractitemmodel_types.QAbstractTableModel, index: gen_qabstractitemmodel_types.QModelIndex, value: gen_qvariant_types.QVariant, role: cint): bool =
  fcQAbstractTableModel_virtualbase_setData(self.h, index.h, value.h, role)

proc cQAbstractTableModel_vtable_callback_setData(self: pointer, index: pointer, value: pointer, role: cint): bool {.cdecl.} =
  let vtbl = cast[ptr QAbstractTableModelVTable](fcQAbstractTableModel_vdata(self))
  let self = QAbstractTableModel(h: self)
  let slotval1 = gen_qabstractitemmodel_types.QModelIndex(h: index, owned: false)
  let slotval2 = gen_qvariant_types.QVariant(h: value, owned: false)
  let slotval3 = role
  var virtualReturn = vtbl[].setData(self, slotval1, slotval2, slotval3)
  virtualReturn

proc QAbstractTableModelheaderData*(self: gen_qabstractitemmodel_types.QAbstractTableModel, section: cint, orientation: cint, role: cint): gen_qvariant_types.QVariant =
  gen_qvariant_types.QVariant(h: fcQAbstractTableModel_virtualbase_headerData(self.h, section, cint(orientation), role), owned: true)

proc cQAbstractTableModel_vtable_callback_headerData(self: pointer, section: cint, orientation: cint, role: cint): pointer {.cdecl.} =
  let vtbl = cast[ptr QAbstractTableModelVTable](fcQAbstractTableModel_vdata(self))
  let self = QAbstractTableModel(h: self)
  let slotval1 = section
  let slotval2 = cint(orientation)
  let slotval3 = role
  var virtualReturn = vtbl[].headerData(self, slotval1, slotval2, slotval3)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc QAbstractTableModelsetHeaderData*(self: gen_qabstractitemmodel_types.QAbstractTableModel, section: cint, orientation: cint, value: gen_qvariant_types.QVariant, role: cint): bool =
  fcQAbstractTableModel_virtualbase_setHeaderData(self.h, section, cint(orientation), value.h, role)

proc cQAbstractTableModel_vtable_callback_setHeaderData(self: pointer, section: cint, orientation: cint, value: pointer, role: cint): bool {.cdecl.} =
  let vtbl = cast[ptr QAbstractTableModelVTable](fcQAbstractTableModel_vdata(self))
  let self = QAbstractTableModel(h: self)
  let slotval1 = section
  let slotval2 = cint(orientation)
  let slotval3 = gen_qvariant_types.QVariant(h: value, owned: false)
  let slotval4 = role
  var virtualReturn = vtbl[].setHeaderData(self, slotval1, slotval2, slotval3, slotval4)
  virtualReturn

proc QAbstractTableModelitemData*(self: gen_qabstractitemmodel_types.QAbstractTableModel, index: gen_qabstractitemmodel_types.QModelIndex): Table[cint,gen_qvariant_types.QVariant] =
  var v_mm = fcQAbstractTableModel_virtualbase_itemData(self.h, index.h)
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

proc cQAbstractTableModel_vtable_callback_itemData(self: pointer, index: pointer): struct_miqt_map {.cdecl.} =
  let vtbl = cast[ptr QAbstractTableModelVTable](fcQAbstractTableModel_vdata(self))
  let self = QAbstractTableModel(h: self)
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

proc QAbstractTableModelsetItemData*(self: gen_qabstractitemmodel_types.QAbstractTableModel, index: gen_qabstractitemmodel_types.QModelIndex, roles: Table[cint,gen_qvariant_types.QVariant]): bool =
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

  fcQAbstractTableModel_virtualbase_setItemData(self.h, index.h, struct_miqt_map(len: csize_t(len(roles)),keys: if len(roles) == 0: nil else: addr(roles_Keys_CArray[0]), values: if len(roles) == 0: nil else: addr(roles_Values_CArray[0]),))

proc cQAbstractTableModel_vtable_callback_setItemData(self: pointer, index: pointer, roles: struct_miqt_map): bool {.cdecl.} =
  let vtbl = cast[ptr QAbstractTableModelVTable](fcQAbstractTableModel_vdata(self))
  let self = QAbstractTableModel(h: self)
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

proc QAbstractTableModelmimeTypes*(self: gen_qabstractitemmodel_types.QAbstractTableModel): seq[string] =
  var v_ma = fcQAbstractTableModel_virtualbase_mimeTypes(self.h)
  var vx_ret = newSeq[string](int(v_ma.len))
  let v_outCast = cast[ptr UncheckedArray[struct_miqt_string]](v_ma.data)
  for i in 0 ..< v_ma.len:
    let vx_lv_ms = v_outCast[i]
    let vx_lvx_ret = string.fromBytes(toOpenArrayByte(vx_lv_ms.data, 0, int(vx_lv_ms.len)-1))
    c_free(vx_lv_ms.data)
    vx_ret[i] = vx_lvx_ret
  c_free(v_ma.data)
  vx_ret

proc cQAbstractTableModel_vtable_callback_mimeTypes(self: pointer): struct_miqt_array {.cdecl.} =
  let vtbl = cast[ptr QAbstractTableModelVTable](fcQAbstractTableModel_vdata(self))
  let self = QAbstractTableModel(h: self)
  var virtualReturn = vtbl[].mimeTypes(self)
  var virtualReturn_CArray = cast[ptr UncheckedArray[struct_miqt_string]](if len(virtualReturn) > 0: c_malloc(c_sizet(sizeof(struct_miqt_string) * len(virtualReturn))) else: nil)
  for i in 0..<len(virtualReturn):
    var virtualReturn_i_copy = cast[cstring](if len(virtualReturn[i]) > 0: c_malloc(csize_t(len(virtualReturn[i]))) else: nil)
    if len(virtualReturn[i]) > 0: copyMem(cast[pointer](virtualReturn_i_copy), addr virtualReturn[i][0], csize_t(len(virtualReturn[i])))
    virtualReturn_CArray[i] = struct_miqt_string(data: virtualReturn_i_copy, len: csize_t(len(virtualReturn[i])))

  struct_miqt_array(len: csize_t(len(virtualReturn)), data: if len(virtualReturn) == 0: nil else: addr(virtualReturn_CArray[0]))

proc QAbstractTableModelmimeData*(self: gen_qabstractitemmodel_types.QAbstractTableModel, indexes: seq[gen_qabstractitemmodel_types.QModelIndex]): gen_qmimedata_types.QMimeData =
  var indexes_CArray = newSeq[pointer](len(indexes))
  for i in 0..<len(indexes):
    indexes_CArray[i] = indexes[i].h

  gen_qmimedata_types.QMimeData(h: fcQAbstractTableModel_virtualbase_mimeData(self.h, struct_miqt_array(len: csize_t(len(indexes)), data: if len(indexes) == 0: nil else: addr(indexes_CArray[0]))), owned: false)

proc cQAbstractTableModel_vtable_callback_mimeData(self: pointer, indexes: struct_miqt_array): pointer {.cdecl.} =
  let vtbl = cast[ptr QAbstractTableModelVTable](fcQAbstractTableModel_vdata(self))
  let self = QAbstractTableModel(h: self)
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

proc QAbstractTableModelcanDropMimeData*(self: gen_qabstractitemmodel_types.QAbstractTableModel, data: gen_qmimedata_types.QMimeData, action: cint, row: cint, column: cint, parent: gen_qabstractitemmodel_types.QModelIndex): bool =
  fcQAbstractTableModel_virtualbase_canDropMimeData(self.h, data.h, cint(action), row, column, parent.h)

proc cQAbstractTableModel_vtable_callback_canDropMimeData(self: pointer, data: pointer, action: cint, row: cint, column: cint, parent: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QAbstractTableModelVTable](fcQAbstractTableModel_vdata(self))
  let self = QAbstractTableModel(h: self)
  let slotval1 = gen_qmimedata_types.QMimeData(h: data, owned: false)
  let slotval2 = cint(action)
  let slotval3 = row
  let slotval4 = column
  let slotval5 = gen_qabstractitemmodel_types.QModelIndex(h: parent, owned: false)
  var virtualReturn = vtbl[].canDropMimeData(self, slotval1, slotval2, slotval3, slotval4, slotval5)
  virtualReturn

proc QAbstractTableModelsupportedDropActions*(self: gen_qabstractitemmodel_types.QAbstractTableModel): cint =
  cint(fcQAbstractTableModel_virtualbase_supportedDropActions(self.h))

proc cQAbstractTableModel_vtable_callback_supportedDropActions(self: pointer): cint {.cdecl.} =
  let vtbl = cast[ptr QAbstractTableModelVTable](fcQAbstractTableModel_vdata(self))
  let self = QAbstractTableModel(h: self)
  var virtualReturn = vtbl[].supportedDropActions(self)
  cint(virtualReturn)

proc QAbstractTableModelsupportedDragActions*(self: gen_qabstractitemmodel_types.QAbstractTableModel): cint =
  cint(fcQAbstractTableModel_virtualbase_supportedDragActions(self.h))

proc cQAbstractTableModel_vtable_callback_supportedDragActions(self: pointer): cint {.cdecl.} =
  let vtbl = cast[ptr QAbstractTableModelVTable](fcQAbstractTableModel_vdata(self))
  let self = QAbstractTableModel(h: self)
  var virtualReturn = vtbl[].supportedDragActions(self)
  cint(virtualReturn)

proc QAbstractTableModelinsertRows*(self: gen_qabstractitemmodel_types.QAbstractTableModel, row: cint, count: cint, parent: gen_qabstractitemmodel_types.QModelIndex): bool =
  fcQAbstractTableModel_virtualbase_insertRows(self.h, row, count, parent.h)

proc cQAbstractTableModel_vtable_callback_insertRows(self: pointer, row: cint, count: cint, parent: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QAbstractTableModelVTable](fcQAbstractTableModel_vdata(self))
  let self = QAbstractTableModel(h: self)
  let slotval1 = row
  let slotval2 = count
  let slotval3 = gen_qabstractitemmodel_types.QModelIndex(h: parent, owned: false)
  var virtualReturn = vtbl[].insertRows(self, slotval1, slotval2, slotval3)
  virtualReturn

proc QAbstractTableModelinsertColumns*(self: gen_qabstractitemmodel_types.QAbstractTableModel, column: cint, count: cint, parent: gen_qabstractitemmodel_types.QModelIndex): bool =
  fcQAbstractTableModel_virtualbase_insertColumns(self.h, column, count, parent.h)

proc cQAbstractTableModel_vtable_callback_insertColumns(self: pointer, column: cint, count: cint, parent: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QAbstractTableModelVTable](fcQAbstractTableModel_vdata(self))
  let self = QAbstractTableModel(h: self)
  let slotval1 = column
  let slotval2 = count
  let slotval3 = gen_qabstractitemmodel_types.QModelIndex(h: parent, owned: false)
  var virtualReturn = vtbl[].insertColumns(self, slotval1, slotval2, slotval3)
  virtualReturn

proc QAbstractTableModelremoveRows*(self: gen_qabstractitemmodel_types.QAbstractTableModel, row: cint, count: cint, parent: gen_qabstractitemmodel_types.QModelIndex): bool =
  fcQAbstractTableModel_virtualbase_removeRows(self.h, row, count, parent.h)

proc cQAbstractTableModel_vtable_callback_removeRows(self: pointer, row: cint, count: cint, parent: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QAbstractTableModelVTable](fcQAbstractTableModel_vdata(self))
  let self = QAbstractTableModel(h: self)
  let slotval1 = row
  let slotval2 = count
  let slotval3 = gen_qabstractitemmodel_types.QModelIndex(h: parent, owned: false)
  var virtualReturn = vtbl[].removeRows(self, slotval1, slotval2, slotval3)
  virtualReturn

proc QAbstractTableModelremoveColumns*(self: gen_qabstractitemmodel_types.QAbstractTableModel, column: cint, count: cint, parent: gen_qabstractitemmodel_types.QModelIndex): bool =
  fcQAbstractTableModel_virtualbase_removeColumns(self.h, column, count, parent.h)

proc cQAbstractTableModel_vtable_callback_removeColumns(self: pointer, column: cint, count: cint, parent: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QAbstractTableModelVTable](fcQAbstractTableModel_vdata(self))
  let self = QAbstractTableModel(h: self)
  let slotval1 = column
  let slotval2 = count
  let slotval3 = gen_qabstractitemmodel_types.QModelIndex(h: parent, owned: false)
  var virtualReturn = vtbl[].removeColumns(self, slotval1, slotval2, slotval3)
  virtualReturn

proc QAbstractTableModelmoveRows*(self: gen_qabstractitemmodel_types.QAbstractTableModel, sourceParent: gen_qabstractitemmodel_types.QModelIndex, sourceRow: cint, count: cint, destinationParent: gen_qabstractitemmodel_types.QModelIndex, destinationChild: cint): bool =
  fcQAbstractTableModel_virtualbase_moveRows(self.h, sourceParent.h, sourceRow, count, destinationParent.h, destinationChild)

proc cQAbstractTableModel_vtable_callback_moveRows(self: pointer, sourceParent: pointer, sourceRow: cint, count: cint, destinationParent: pointer, destinationChild: cint): bool {.cdecl.} =
  let vtbl = cast[ptr QAbstractTableModelVTable](fcQAbstractTableModel_vdata(self))
  let self = QAbstractTableModel(h: self)
  let slotval1 = gen_qabstractitemmodel_types.QModelIndex(h: sourceParent, owned: false)
  let slotval2 = sourceRow
  let slotval3 = count
  let slotval4 = gen_qabstractitemmodel_types.QModelIndex(h: destinationParent, owned: false)
  let slotval5 = destinationChild
  var virtualReturn = vtbl[].moveRows(self, slotval1, slotval2, slotval3, slotval4, slotval5)
  virtualReturn

proc QAbstractTableModelmoveColumns*(self: gen_qabstractitemmodel_types.QAbstractTableModel, sourceParent: gen_qabstractitemmodel_types.QModelIndex, sourceColumn: cint, count: cint, destinationParent: gen_qabstractitemmodel_types.QModelIndex, destinationChild: cint): bool =
  fcQAbstractTableModel_virtualbase_moveColumns(self.h, sourceParent.h, sourceColumn, count, destinationParent.h, destinationChild)

proc cQAbstractTableModel_vtable_callback_moveColumns(self: pointer, sourceParent: pointer, sourceColumn: cint, count: cint, destinationParent: pointer, destinationChild: cint): bool {.cdecl.} =
  let vtbl = cast[ptr QAbstractTableModelVTable](fcQAbstractTableModel_vdata(self))
  let self = QAbstractTableModel(h: self)
  let slotval1 = gen_qabstractitemmodel_types.QModelIndex(h: sourceParent, owned: false)
  let slotval2 = sourceColumn
  let slotval3 = count
  let slotval4 = gen_qabstractitemmodel_types.QModelIndex(h: destinationParent, owned: false)
  let slotval5 = destinationChild
  var virtualReturn = vtbl[].moveColumns(self, slotval1, slotval2, slotval3, slotval4, slotval5)
  virtualReturn

proc QAbstractTableModelfetchMore*(self: gen_qabstractitemmodel_types.QAbstractTableModel, parent: gen_qabstractitemmodel_types.QModelIndex): void =
  fcQAbstractTableModel_virtualbase_fetchMore(self.h, parent.h)

proc cQAbstractTableModel_vtable_callback_fetchMore(self: pointer, parent: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QAbstractTableModelVTable](fcQAbstractTableModel_vdata(self))
  let self = QAbstractTableModel(h: self)
  let slotval1 = gen_qabstractitemmodel_types.QModelIndex(h: parent, owned: false)
  vtbl[].fetchMore(self, slotval1)

proc QAbstractTableModelcanFetchMore*(self: gen_qabstractitemmodel_types.QAbstractTableModel, parent: gen_qabstractitemmodel_types.QModelIndex): bool =
  fcQAbstractTableModel_virtualbase_canFetchMore(self.h, parent.h)

proc cQAbstractTableModel_vtable_callback_canFetchMore(self: pointer, parent: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QAbstractTableModelVTable](fcQAbstractTableModel_vdata(self))
  let self = QAbstractTableModel(h: self)
  let slotval1 = gen_qabstractitemmodel_types.QModelIndex(h: parent, owned: false)
  var virtualReturn = vtbl[].canFetchMore(self, slotval1)
  virtualReturn

proc QAbstractTableModelsort*(self: gen_qabstractitemmodel_types.QAbstractTableModel, column: cint, order: cint): void =
  fcQAbstractTableModel_virtualbase_sort(self.h, column, cint(order))

proc cQAbstractTableModel_vtable_callback_sort(self: pointer, column: cint, order: cint): void {.cdecl.} =
  let vtbl = cast[ptr QAbstractTableModelVTable](fcQAbstractTableModel_vdata(self))
  let self = QAbstractTableModel(h: self)
  let slotval1 = column
  let slotval2 = cint(order)
  vtbl[].sort(self, slotval1, slotval2)

proc QAbstractTableModelbuddy*(self: gen_qabstractitemmodel_types.QAbstractTableModel, index: gen_qabstractitemmodel_types.QModelIndex): gen_qabstractitemmodel_types.QModelIndex =
  gen_qabstractitemmodel_types.QModelIndex(h: fcQAbstractTableModel_virtualbase_buddy(self.h, index.h), owned: true)

proc cQAbstractTableModel_vtable_callback_buddy(self: pointer, index: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QAbstractTableModelVTable](fcQAbstractTableModel_vdata(self))
  let self = QAbstractTableModel(h: self)
  let slotval1 = gen_qabstractitemmodel_types.QModelIndex(h: index, owned: false)
  var virtualReturn = vtbl[].buddy(self, slotval1)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc QAbstractTableModelmatch*(self: gen_qabstractitemmodel_types.QAbstractTableModel, start: gen_qabstractitemmodel_types.QModelIndex, role: cint, value: gen_qvariant_types.QVariant, hits: cint, flags: cint): seq[gen_qabstractitemmodel_types.QModelIndex] =
  var v_ma = fcQAbstractTableModel_virtualbase_match(self.h, start.h, role, value.h, hits, cint(flags))
  var vx_ret = newSeq[gen_qabstractitemmodel_types.QModelIndex](int(v_ma.len))
  let v_outCast = cast[ptr UncheckedArray[pointer]](v_ma.data)
  for i in 0 ..< v_ma.len:
    vx_ret[i] = gen_qabstractitemmodel_types.QModelIndex(h: v_outCast[i], owned: true)
  c_free(v_ma.data)
  vx_ret

proc cQAbstractTableModel_vtable_callback_match(self: pointer, start: pointer, role: cint, value: pointer, hits: cint, flags: cint): struct_miqt_array {.cdecl.} =
  let vtbl = cast[ptr QAbstractTableModelVTable](fcQAbstractTableModel_vdata(self))
  let self = QAbstractTableModel(h: self)
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

proc QAbstractTableModelspan*(self: gen_qabstractitemmodel_types.QAbstractTableModel, index: gen_qabstractitemmodel_types.QModelIndex): gen_qsize_types.QSize =
  gen_qsize_types.QSize(h: fcQAbstractTableModel_virtualbase_span(self.h, index.h), owned: true)

proc cQAbstractTableModel_vtable_callback_span(self: pointer, index: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QAbstractTableModelVTable](fcQAbstractTableModel_vdata(self))
  let self = QAbstractTableModel(h: self)
  let slotval1 = gen_qabstractitemmodel_types.QModelIndex(h: index, owned: false)
  var virtualReturn = vtbl[].span(self, slotval1)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc QAbstractTableModelroleNames*(self: gen_qabstractitemmodel_types.QAbstractTableModel): Table[cint,seq[byte]] =
  var v_mm = fcQAbstractTableModel_virtualbase_roleNames(self.h)
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

proc cQAbstractTableModel_vtable_callback_roleNames(self: pointer): struct_miqt_map {.cdecl.} =
  let vtbl = cast[ptr QAbstractTableModelVTable](fcQAbstractTableModel_vdata(self))
  let self = QAbstractTableModel(h: self)
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

proc QAbstractTableModelsubmit*(self: gen_qabstractitemmodel_types.QAbstractTableModel): bool =
  fcQAbstractTableModel_virtualbase_submit(self.h)

proc cQAbstractTableModel_vtable_callback_submit(self: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QAbstractTableModelVTable](fcQAbstractTableModel_vdata(self))
  let self = QAbstractTableModel(h: self)
  var virtualReturn = vtbl[].submit(self)
  virtualReturn

proc QAbstractTableModelrevert*(self: gen_qabstractitemmodel_types.QAbstractTableModel): void =
  fcQAbstractTableModel_virtualbase_revert(self.h)

proc cQAbstractTableModel_vtable_callback_revert(self: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QAbstractTableModelVTable](fcQAbstractTableModel_vdata(self))
  let self = QAbstractTableModel(h: self)
  vtbl[].revert(self)

proc QAbstractTableModelevent*(self: gen_qabstractitemmodel_types.QAbstractTableModel, event: gen_qcoreevent_types.QEvent): bool =
  fcQAbstractTableModel_virtualbase_event(self.h, event.h)

proc cQAbstractTableModel_vtable_callback_event(self: pointer, event: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QAbstractTableModelVTable](fcQAbstractTableModel_vdata(self))
  let self = QAbstractTableModel(h: self)
  let slotval1 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  var virtualReturn = vtbl[].event(self, slotval1)
  virtualReturn

proc QAbstractTableModeleventFilter*(self: gen_qabstractitemmodel_types.QAbstractTableModel, watched: gen_qobject_types.QObject, event: gen_qcoreevent_types.QEvent): bool =
  fcQAbstractTableModel_virtualbase_eventFilter(self.h, watched.h, event.h)

proc cQAbstractTableModel_vtable_callback_eventFilter(self: pointer, watched: pointer, event: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QAbstractTableModelVTable](fcQAbstractTableModel_vdata(self))
  let self = QAbstractTableModel(h: self)
  let slotval1 = gen_qobject_types.QObject(h: watched, owned: false)
  let slotval2 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  var virtualReturn = vtbl[].eventFilter(self, slotval1, slotval2)
  virtualReturn

proc QAbstractTableModeltimerEvent*(self: gen_qabstractitemmodel_types.QAbstractTableModel, event: gen_qcoreevent_types.QTimerEvent): void =
  fcQAbstractTableModel_virtualbase_timerEvent(self.h, event.h)

proc cQAbstractTableModel_vtable_callback_timerEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QAbstractTableModelVTable](fcQAbstractTableModel_vdata(self))
  let self = QAbstractTableModel(h: self)
  let slotval1 = gen_qcoreevent_types.QTimerEvent(h: event, owned: false)
  vtbl[].timerEvent(self, slotval1)

proc QAbstractTableModelchildEvent*(self: gen_qabstractitemmodel_types.QAbstractTableModel, event: gen_qcoreevent_types.QChildEvent): void =
  fcQAbstractTableModel_virtualbase_childEvent(self.h, event.h)

proc cQAbstractTableModel_vtable_callback_childEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QAbstractTableModelVTable](fcQAbstractTableModel_vdata(self))
  let self = QAbstractTableModel(h: self)
  let slotval1 = gen_qcoreevent_types.QChildEvent(h: event, owned: false)
  vtbl[].childEvent(self, slotval1)

proc QAbstractTableModelcustomEvent*(self: gen_qabstractitemmodel_types.QAbstractTableModel, event: gen_qcoreevent_types.QEvent): void =
  fcQAbstractTableModel_virtualbase_customEvent(self.h, event.h)

proc cQAbstractTableModel_vtable_callback_customEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QAbstractTableModelVTable](fcQAbstractTableModel_vdata(self))
  let self = QAbstractTableModel(h: self)
  let slotval1 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  vtbl[].customEvent(self, slotval1)

proc QAbstractTableModelconnectNotify*(self: gen_qabstractitemmodel_types.QAbstractTableModel, signal: gen_qmetaobject_types.QMetaMethod): void =
  fcQAbstractTableModel_virtualbase_connectNotify(self.h, signal.h)

proc cQAbstractTableModel_vtable_callback_connectNotify(self: pointer, signal: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QAbstractTableModelVTable](fcQAbstractTableModel_vdata(self))
  let self = QAbstractTableModel(h: self)
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal, owned: false)
  vtbl[].connectNotify(self, slotval1)

proc QAbstractTableModeldisconnectNotify*(self: gen_qabstractitemmodel_types.QAbstractTableModel, signal: gen_qmetaobject_types.QMetaMethod): void =
  fcQAbstractTableModel_virtualbase_disconnectNotify(self.h, signal.h)

proc cQAbstractTableModel_vtable_callback_disconnectNotify(self: pointer, signal: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QAbstractTableModelVTable](fcQAbstractTableModel_vdata(self))
  let self = QAbstractTableModel(h: self)
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal, owned: false)
  vtbl[].disconnectNotify(self, slotval1)

type VirtualQAbstractTableModel* {.inheritable.} = ref object of QAbstractTableModel
  vtbl*: cQAbstractTableModelVTable
method metaObject*(self: VirtualQAbstractTableModel): gen_qobjectdefs_types.QMetaObject {.base.} =
  QAbstractTableModelmetaObject(self[])
proc cQAbstractTableModel_method_callback_metaObject(self: pointer): pointer {.cdecl.} =
  let inst = cast[VirtualQAbstractTableModel](fcQAbstractTableModel_vdata(self))
  var virtualReturn = inst.metaObject()
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

method metacast*(self: VirtualQAbstractTableModel, param1: cstring): pointer {.base.} =
  QAbstractTableModelmetacast(self[], param1)
proc cQAbstractTableModel_method_callback_metacast(self: pointer, param1: cstring): pointer {.cdecl.} =
  let inst = cast[VirtualQAbstractTableModel](fcQAbstractTableModel_vdata(self))
  let slotval1 = (param1)
  var virtualReturn = inst.metacast(slotval1)
  virtualReturn

method metacall*(self: VirtualQAbstractTableModel, param1: cint, param2: cint, param3: pointer): cint {.base.} =
  QAbstractTableModelmetacall(self[], param1, param2, param3)
proc cQAbstractTableModel_method_callback_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.cdecl.} =
  let inst = cast[VirtualQAbstractTableModel](fcQAbstractTableModel_vdata(self))
  let slotval1 = cint(param1)
  let slotval2 = param2
  let slotval3 = param3
  var virtualReturn = inst.metacall(slotval1, slotval2, slotval3)
  virtualReturn

method index*(self: VirtualQAbstractTableModel, row: cint, column: cint, parent: gen_qabstractitemmodel_types.QModelIndex): gen_qabstractitemmodel_types.QModelIndex {.base.} =
  QAbstractTableModelindex(self[], row, column, parent)
proc cQAbstractTableModel_method_callback_index(self: pointer, row: cint, column: cint, parent: pointer): pointer {.cdecl.} =
  let inst = cast[VirtualQAbstractTableModel](fcQAbstractTableModel_vdata(self))
  let slotval1 = row
  let slotval2 = column
  let slotval3 = gen_qabstractitemmodel_types.QModelIndex(h: parent, owned: false)
  var virtualReturn = inst.index(slotval1, slotval2, slotval3)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

method sibling*(self: VirtualQAbstractTableModel, row: cint, column: cint, idx: gen_qabstractitemmodel_types.QModelIndex): gen_qabstractitemmodel_types.QModelIndex {.base.} =
  QAbstractTableModelsibling(self[], row, column, idx)
proc cQAbstractTableModel_method_callback_sibling(self: pointer, row: cint, column: cint, idx: pointer): pointer {.cdecl.} =
  let inst = cast[VirtualQAbstractTableModel](fcQAbstractTableModel_vdata(self))
  let slotval1 = row
  let slotval2 = column
  let slotval3 = gen_qabstractitemmodel_types.QModelIndex(h: idx, owned: false)
  var virtualReturn = inst.sibling(slotval1, slotval2, slotval3)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

method dropMimeData*(self: VirtualQAbstractTableModel, data: gen_qmimedata_types.QMimeData, action: cint, row: cint, column: cint, parent: gen_qabstractitemmodel_types.QModelIndex): bool {.base.} =
  QAbstractTableModeldropMimeData(self[], data, action, row, column, parent)
proc cQAbstractTableModel_method_callback_dropMimeData(self: pointer, data: pointer, action: cint, row: cint, column: cint, parent: pointer): bool {.cdecl.} =
  let inst = cast[VirtualQAbstractTableModel](fcQAbstractTableModel_vdata(self))
  let slotval1 = gen_qmimedata_types.QMimeData(h: data, owned: false)
  let slotval2 = cint(action)
  let slotval3 = row
  let slotval4 = column
  let slotval5 = gen_qabstractitemmodel_types.QModelIndex(h: parent, owned: false)
  var virtualReturn = inst.dropMimeData(slotval1, slotval2, slotval3, slotval4, slotval5)
  virtualReturn

method flags*(self: VirtualQAbstractTableModel, index: gen_qabstractitemmodel_types.QModelIndex): cint {.base.} =
  QAbstractTableModelflags(self[], index)
proc cQAbstractTableModel_method_callback_flags(self: pointer, index: pointer): cint {.cdecl.} =
  let inst = cast[VirtualQAbstractTableModel](fcQAbstractTableModel_vdata(self))
  let slotval1 = gen_qabstractitemmodel_types.QModelIndex(h: index, owned: false)
  var virtualReturn = inst.flags(slotval1)
  cint(virtualReturn)

method rowCount*(self: VirtualQAbstractTableModel, parent: gen_qabstractitemmodel_types.QModelIndex): cint {.base.} =
  raiseAssert("missing implementation of QAbstractTableModel_virtualbase_rowCount")
proc cQAbstractTableModel_method_callback_rowCount(self: pointer, parent: pointer): cint {.cdecl.} =
  let inst = cast[VirtualQAbstractTableModel](fcQAbstractTableModel_vdata(self))
  let slotval1 = gen_qabstractitemmodel_types.QModelIndex(h: parent, owned: false)
  var virtualReturn = inst.rowCount(slotval1)
  virtualReturn

method columnCount*(self: VirtualQAbstractTableModel, parent: gen_qabstractitemmodel_types.QModelIndex): cint {.base.} =
  raiseAssert("missing implementation of QAbstractTableModel_virtualbase_columnCount")
proc cQAbstractTableModel_method_callback_columnCount(self: pointer, parent: pointer): cint {.cdecl.} =
  let inst = cast[VirtualQAbstractTableModel](fcQAbstractTableModel_vdata(self))
  let slotval1 = gen_qabstractitemmodel_types.QModelIndex(h: parent, owned: false)
  var virtualReturn = inst.columnCount(slotval1)
  virtualReturn

method data*(self: VirtualQAbstractTableModel, index: gen_qabstractitemmodel_types.QModelIndex, role: cint): gen_qvariant_types.QVariant {.base.} =
  raiseAssert("missing implementation of QAbstractTableModel_virtualbase_data")
proc cQAbstractTableModel_method_callback_data(self: pointer, index: pointer, role: cint): pointer {.cdecl.} =
  let inst = cast[VirtualQAbstractTableModel](fcQAbstractTableModel_vdata(self))
  let slotval1 = gen_qabstractitemmodel_types.QModelIndex(h: index, owned: false)
  let slotval2 = role
  var virtualReturn = inst.data(slotval1, slotval2)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

method setData*(self: VirtualQAbstractTableModel, index: gen_qabstractitemmodel_types.QModelIndex, value: gen_qvariant_types.QVariant, role: cint): bool {.base.} =
  QAbstractTableModelsetData(self[], index, value, role)
proc cQAbstractTableModel_method_callback_setData(self: pointer, index: pointer, value: pointer, role: cint): bool {.cdecl.} =
  let inst = cast[VirtualQAbstractTableModel](fcQAbstractTableModel_vdata(self))
  let slotval1 = gen_qabstractitemmodel_types.QModelIndex(h: index, owned: false)
  let slotval2 = gen_qvariant_types.QVariant(h: value, owned: false)
  let slotval3 = role
  var virtualReturn = inst.setData(slotval1, slotval2, slotval3)
  virtualReturn

method headerData*(self: VirtualQAbstractTableModel, section: cint, orientation: cint, role: cint): gen_qvariant_types.QVariant {.base.} =
  QAbstractTableModelheaderData(self[], section, orientation, role)
proc cQAbstractTableModel_method_callback_headerData(self: pointer, section: cint, orientation: cint, role: cint): pointer {.cdecl.} =
  let inst = cast[VirtualQAbstractTableModel](fcQAbstractTableModel_vdata(self))
  let slotval1 = section
  let slotval2 = cint(orientation)
  let slotval3 = role
  var virtualReturn = inst.headerData(slotval1, slotval2, slotval3)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

method setHeaderData*(self: VirtualQAbstractTableModel, section: cint, orientation: cint, value: gen_qvariant_types.QVariant, role: cint): bool {.base.} =
  QAbstractTableModelsetHeaderData(self[], section, orientation, value, role)
proc cQAbstractTableModel_method_callback_setHeaderData(self: pointer, section: cint, orientation: cint, value: pointer, role: cint): bool {.cdecl.} =
  let inst = cast[VirtualQAbstractTableModel](fcQAbstractTableModel_vdata(self))
  let slotval1 = section
  let slotval2 = cint(orientation)
  let slotval3 = gen_qvariant_types.QVariant(h: value, owned: false)
  let slotval4 = role
  var virtualReturn = inst.setHeaderData(slotval1, slotval2, slotval3, slotval4)
  virtualReturn

method itemData*(self: VirtualQAbstractTableModel, index: gen_qabstractitemmodel_types.QModelIndex): Table[cint,gen_qvariant_types.QVariant] {.base.} =
  QAbstractTableModelitemData(self[], index)
proc cQAbstractTableModel_method_callback_itemData(self: pointer, index: pointer): struct_miqt_map {.cdecl.} =
  let inst = cast[VirtualQAbstractTableModel](fcQAbstractTableModel_vdata(self))
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

  struct_miqt_map(len: csize_t(len(virtualReturn)),keys: if len(virtualReturn) == 0: nil else: addr(virtualReturn_Keys_CArray[0]), values: if len(virtualReturn) == 0: nil else: addr(virtualReturn_Values_CArray[0]),)

method setItemData*(self: VirtualQAbstractTableModel, index: gen_qabstractitemmodel_types.QModelIndex, roles: Table[cint,gen_qvariant_types.QVariant]): bool {.base.} =
  QAbstractTableModelsetItemData(self[], index, roles)
proc cQAbstractTableModel_method_callback_setItemData(self: pointer, index: pointer, roles: struct_miqt_map): bool {.cdecl.} =
  let inst = cast[VirtualQAbstractTableModel](fcQAbstractTableModel_vdata(self))
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

method mimeTypes*(self: VirtualQAbstractTableModel): seq[string] {.base.} =
  QAbstractTableModelmimeTypes(self[])
proc cQAbstractTableModel_method_callback_mimeTypes(self: pointer): struct_miqt_array {.cdecl.} =
  let inst = cast[VirtualQAbstractTableModel](fcQAbstractTableModel_vdata(self))
  var virtualReturn = inst.mimeTypes()
  var virtualReturn_CArray = cast[ptr UncheckedArray[struct_miqt_string]](if len(virtualReturn) > 0: c_malloc(c_sizet(sizeof(struct_miqt_string) * len(virtualReturn))) else: nil)
  for i in 0..<len(virtualReturn):
    var virtualReturn_i_copy = cast[cstring](if len(virtualReturn[i]) > 0: c_malloc(csize_t(len(virtualReturn[i]))) else: nil)
    if len(virtualReturn[i]) > 0: copyMem(cast[pointer](virtualReturn_i_copy), addr virtualReturn[i][0], csize_t(len(virtualReturn[i])))
    virtualReturn_CArray[i] = struct_miqt_string(data: virtualReturn_i_copy, len: csize_t(len(virtualReturn[i])))

  struct_miqt_array(len: csize_t(len(virtualReturn)), data: if len(virtualReturn) == 0: nil else: addr(virtualReturn_CArray[0]))

method mimeData*(self: VirtualQAbstractTableModel, indexes: seq[gen_qabstractitemmodel_types.QModelIndex]): gen_qmimedata_types.QMimeData {.base.} =
  QAbstractTableModelmimeData(self[], indexes)
proc cQAbstractTableModel_method_callback_mimeData(self: pointer, indexes: struct_miqt_array): pointer {.cdecl.} =
  let inst = cast[VirtualQAbstractTableModel](fcQAbstractTableModel_vdata(self))
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

method canDropMimeData*(self: VirtualQAbstractTableModel, data: gen_qmimedata_types.QMimeData, action: cint, row: cint, column: cint, parent: gen_qabstractitemmodel_types.QModelIndex): bool {.base.} =
  QAbstractTableModelcanDropMimeData(self[], data, action, row, column, parent)
proc cQAbstractTableModel_method_callback_canDropMimeData(self: pointer, data: pointer, action: cint, row: cint, column: cint, parent: pointer): bool {.cdecl.} =
  let inst = cast[VirtualQAbstractTableModel](fcQAbstractTableModel_vdata(self))
  let slotval1 = gen_qmimedata_types.QMimeData(h: data, owned: false)
  let slotval2 = cint(action)
  let slotval3 = row
  let slotval4 = column
  let slotval5 = gen_qabstractitemmodel_types.QModelIndex(h: parent, owned: false)
  var virtualReturn = inst.canDropMimeData(slotval1, slotval2, slotval3, slotval4, slotval5)
  virtualReturn

method supportedDropActions*(self: VirtualQAbstractTableModel): cint {.base.} =
  QAbstractTableModelsupportedDropActions(self[])
proc cQAbstractTableModel_method_callback_supportedDropActions(self: pointer): cint {.cdecl.} =
  let inst = cast[VirtualQAbstractTableModel](fcQAbstractTableModel_vdata(self))
  var virtualReturn = inst.supportedDropActions()
  cint(virtualReturn)

method supportedDragActions*(self: VirtualQAbstractTableModel): cint {.base.} =
  QAbstractTableModelsupportedDragActions(self[])
proc cQAbstractTableModel_method_callback_supportedDragActions(self: pointer): cint {.cdecl.} =
  let inst = cast[VirtualQAbstractTableModel](fcQAbstractTableModel_vdata(self))
  var virtualReturn = inst.supportedDragActions()
  cint(virtualReturn)

method insertRows*(self: VirtualQAbstractTableModel, row: cint, count: cint, parent: gen_qabstractitemmodel_types.QModelIndex): bool {.base.} =
  QAbstractTableModelinsertRows(self[], row, count, parent)
proc cQAbstractTableModel_method_callback_insertRows(self: pointer, row: cint, count: cint, parent: pointer): bool {.cdecl.} =
  let inst = cast[VirtualQAbstractTableModel](fcQAbstractTableModel_vdata(self))
  let slotval1 = row
  let slotval2 = count
  let slotval3 = gen_qabstractitemmodel_types.QModelIndex(h: parent, owned: false)
  var virtualReturn = inst.insertRows(slotval1, slotval2, slotval3)
  virtualReturn

method insertColumns*(self: VirtualQAbstractTableModel, column: cint, count: cint, parent: gen_qabstractitemmodel_types.QModelIndex): bool {.base.} =
  QAbstractTableModelinsertColumns(self[], column, count, parent)
proc cQAbstractTableModel_method_callback_insertColumns(self: pointer, column: cint, count: cint, parent: pointer): bool {.cdecl.} =
  let inst = cast[VirtualQAbstractTableModel](fcQAbstractTableModel_vdata(self))
  let slotval1 = column
  let slotval2 = count
  let slotval3 = gen_qabstractitemmodel_types.QModelIndex(h: parent, owned: false)
  var virtualReturn = inst.insertColumns(slotval1, slotval2, slotval3)
  virtualReturn

method removeRows*(self: VirtualQAbstractTableModel, row: cint, count: cint, parent: gen_qabstractitemmodel_types.QModelIndex): bool {.base.} =
  QAbstractTableModelremoveRows(self[], row, count, parent)
proc cQAbstractTableModel_method_callback_removeRows(self: pointer, row: cint, count: cint, parent: pointer): bool {.cdecl.} =
  let inst = cast[VirtualQAbstractTableModel](fcQAbstractTableModel_vdata(self))
  let slotval1 = row
  let slotval2 = count
  let slotval3 = gen_qabstractitemmodel_types.QModelIndex(h: parent, owned: false)
  var virtualReturn = inst.removeRows(slotval1, slotval2, slotval3)
  virtualReturn

method removeColumns*(self: VirtualQAbstractTableModel, column: cint, count: cint, parent: gen_qabstractitemmodel_types.QModelIndex): bool {.base.} =
  QAbstractTableModelremoveColumns(self[], column, count, parent)
proc cQAbstractTableModel_method_callback_removeColumns(self: pointer, column: cint, count: cint, parent: pointer): bool {.cdecl.} =
  let inst = cast[VirtualQAbstractTableModel](fcQAbstractTableModel_vdata(self))
  let slotval1 = column
  let slotval2 = count
  let slotval3 = gen_qabstractitemmodel_types.QModelIndex(h: parent, owned: false)
  var virtualReturn = inst.removeColumns(slotval1, slotval2, slotval3)
  virtualReturn

method moveRows*(self: VirtualQAbstractTableModel, sourceParent: gen_qabstractitemmodel_types.QModelIndex, sourceRow: cint, count: cint, destinationParent: gen_qabstractitemmodel_types.QModelIndex, destinationChild: cint): bool {.base.} =
  QAbstractTableModelmoveRows(self[], sourceParent, sourceRow, count, destinationParent, destinationChild)
proc cQAbstractTableModel_method_callback_moveRows(self: pointer, sourceParent: pointer, sourceRow: cint, count: cint, destinationParent: pointer, destinationChild: cint): bool {.cdecl.} =
  let inst = cast[VirtualQAbstractTableModel](fcQAbstractTableModel_vdata(self))
  let slotval1 = gen_qabstractitemmodel_types.QModelIndex(h: sourceParent, owned: false)
  let slotval2 = sourceRow
  let slotval3 = count
  let slotval4 = gen_qabstractitemmodel_types.QModelIndex(h: destinationParent, owned: false)
  let slotval5 = destinationChild
  var virtualReturn = inst.moveRows(slotval1, slotval2, slotval3, slotval4, slotval5)
  virtualReturn

method moveColumns*(self: VirtualQAbstractTableModel, sourceParent: gen_qabstractitemmodel_types.QModelIndex, sourceColumn: cint, count: cint, destinationParent: gen_qabstractitemmodel_types.QModelIndex, destinationChild: cint): bool {.base.} =
  QAbstractTableModelmoveColumns(self[], sourceParent, sourceColumn, count, destinationParent, destinationChild)
proc cQAbstractTableModel_method_callback_moveColumns(self: pointer, sourceParent: pointer, sourceColumn: cint, count: cint, destinationParent: pointer, destinationChild: cint): bool {.cdecl.} =
  let inst = cast[VirtualQAbstractTableModel](fcQAbstractTableModel_vdata(self))
  let slotval1 = gen_qabstractitemmodel_types.QModelIndex(h: sourceParent, owned: false)
  let slotval2 = sourceColumn
  let slotval3 = count
  let slotval4 = gen_qabstractitemmodel_types.QModelIndex(h: destinationParent, owned: false)
  let slotval5 = destinationChild
  var virtualReturn = inst.moveColumns(slotval1, slotval2, slotval3, slotval4, slotval5)
  virtualReturn

method fetchMore*(self: VirtualQAbstractTableModel, parent: gen_qabstractitemmodel_types.QModelIndex): void {.base.} =
  QAbstractTableModelfetchMore(self[], parent)
proc cQAbstractTableModel_method_callback_fetchMore(self: pointer, parent: pointer): void {.cdecl.} =
  let inst = cast[VirtualQAbstractTableModel](fcQAbstractTableModel_vdata(self))
  let slotval1 = gen_qabstractitemmodel_types.QModelIndex(h: parent, owned: false)
  inst.fetchMore(slotval1)

method canFetchMore*(self: VirtualQAbstractTableModel, parent: gen_qabstractitemmodel_types.QModelIndex): bool {.base.} =
  QAbstractTableModelcanFetchMore(self[], parent)
proc cQAbstractTableModel_method_callback_canFetchMore(self: pointer, parent: pointer): bool {.cdecl.} =
  let inst = cast[VirtualQAbstractTableModel](fcQAbstractTableModel_vdata(self))
  let slotval1 = gen_qabstractitemmodel_types.QModelIndex(h: parent, owned: false)
  var virtualReturn = inst.canFetchMore(slotval1)
  virtualReturn

method sort*(self: VirtualQAbstractTableModel, column: cint, order: cint): void {.base.} =
  QAbstractTableModelsort(self[], column, order)
proc cQAbstractTableModel_method_callback_sort(self: pointer, column: cint, order: cint): void {.cdecl.} =
  let inst = cast[VirtualQAbstractTableModel](fcQAbstractTableModel_vdata(self))
  let slotval1 = column
  let slotval2 = cint(order)
  inst.sort(slotval1, slotval2)

method buddy*(self: VirtualQAbstractTableModel, index: gen_qabstractitemmodel_types.QModelIndex): gen_qabstractitemmodel_types.QModelIndex {.base.} =
  QAbstractTableModelbuddy(self[], index)
proc cQAbstractTableModel_method_callback_buddy(self: pointer, index: pointer): pointer {.cdecl.} =
  let inst = cast[VirtualQAbstractTableModel](fcQAbstractTableModel_vdata(self))
  let slotval1 = gen_qabstractitemmodel_types.QModelIndex(h: index, owned: false)
  var virtualReturn = inst.buddy(slotval1)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

method match*(self: VirtualQAbstractTableModel, start: gen_qabstractitemmodel_types.QModelIndex, role: cint, value: gen_qvariant_types.QVariant, hits: cint, flags: cint): seq[gen_qabstractitemmodel_types.QModelIndex] {.base.} =
  QAbstractTableModelmatch(self[], start, role, value, hits, flags)
proc cQAbstractTableModel_method_callback_match(self: pointer, start: pointer, role: cint, value: pointer, hits: cint, flags: cint): struct_miqt_array {.cdecl.} =
  let inst = cast[VirtualQAbstractTableModel](fcQAbstractTableModel_vdata(self))
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

  struct_miqt_array(len: csize_t(len(virtualReturn)), data: if len(virtualReturn) == 0: nil else: addr(virtualReturn_CArray[0]))

method span*(self: VirtualQAbstractTableModel, index: gen_qabstractitemmodel_types.QModelIndex): gen_qsize_types.QSize {.base.} =
  QAbstractTableModelspan(self[], index)
proc cQAbstractTableModel_method_callback_span(self: pointer, index: pointer): pointer {.cdecl.} =
  let inst = cast[VirtualQAbstractTableModel](fcQAbstractTableModel_vdata(self))
  let slotval1 = gen_qabstractitemmodel_types.QModelIndex(h: index, owned: false)
  var virtualReturn = inst.span(slotval1)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

method roleNames*(self: VirtualQAbstractTableModel): Table[cint,seq[byte]] {.base.} =
  QAbstractTableModelroleNames(self[])
proc cQAbstractTableModel_method_callback_roleNames(self: pointer): struct_miqt_map {.cdecl.} =
  let inst = cast[VirtualQAbstractTableModel](fcQAbstractTableModel_vdata(self))
  var virtualReturn = inst.roleNames()
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

method submit*(self: VirtualQAbstractTableModel): bool {.base.} =
  QAbstractTableModelsubmit(self[])
proc cQAbstractTableModel_method_callback_submit(self: pointer): bool {.cdecl.} =
  let inst = cast[VirtualQAbstractTableModel](fcQAbstractTableModel_vdata(self))
  var virtualReturn = inst.submit()
  virtualReturn

method revert*(self: VirtualQAbstractTableModel): void {.base.} =
  QAbstractTableModelrevert(self[])
proc cQAbstractTableModel_method_callback_revert(self: pointer): void {.cdecl.} =
  let inst = cast[VirtualQAbstractTableModel](fcQAbstractTableModel_vdata(self))
  inst.revert()

method event*(self: VirtualQAbstractTableModel, event: gen_qcoreevent_types.QEvent): bool {.base.} =
  QAbstractTableModelevent(self[], event)
proc cQAbstractTableModel_method_callback_event(self: pointer, event: pointer): bool {.cdecl.} =
  let inst = cast[VirtualQAbstractTableModel](fcQAbstractTableModel_vdata(self))
  let slotval1 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  var virtualReturn = inst.event(slotval1)
  virtualReturn

method eventFilter*(self: VirtualQAbstractTableModel, watched: gen_qobject_types.QObject, event: gen_qcoreevent_types.QEvent): bool {.base.} =
  QAbstractTableModeleventFilter(self[], watched, event)
proc cQAbstractTableModel_method_callback_eventFilter(self: pointer, watched: pointer, event: pointer): bool {.cdecl.} =
  let inst = cast[VirtualQAbstractTableModel](fcQAbstractTableModel_vdata(self))
  let slotval1 = gen_qobject_types.QObject(h: watched, owned: false)
  let slotval2 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  var virtualReturn = inst.eventFilter(slotval1, slotval2)
  virtualReturn

method timerEvent*(self: VirtualQAbstractTableModel, event: gen_qcoreevent_types.QTimerEvent): void {.base.} =
  QAbstractTableModeltimerEvent(self[], event)
proc cQAbstractTableModel_method_callback_timerEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQAbstractTableModel](fcQAbstractTableModel_vdata(self))
  let slotval1 = gen_qcoreevent_types.QTimerEvent(h: event, owned: false)
  inst.timerEvent(slotval1)

method childEvent*(self: VirtualQAbstractTableModel, event: gen_qcoreevent_types.QChildEvent): void {.base.} =
  QAbstractTableModelchildEvent(self[], event)
proc cQAbstractTableModel_method_callback_childEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQAbstractTableModel](fcQAbstractTableModel_vdata(self))
  let slotval1 = gen_qcoreevent_types.QChildEvent(h: event, owned: false)
  inst.childEvent(slotval1)

method customEvent*(self: VirtualQAbstractTableModel, event: gen_qcoreevent_types.QEvent): void {.base.} =
  QAbstractTableModelcustomEvent(self[], event)
proc cQAbstractTableModel_method_callback_customEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQAbstractTableModel](fcQAbstractTableModel_vdata(self))
  let slotval1 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  inst.customEvent(slotval1)

method connectNotify*(self: VirtualQAbstractTableModel, signal: gen_qmetaobject_types.QMetaMethod): void {.base.} =
  QAbstractTableModelconnectNotify(self[], signal)
proc cQAbstractTableModel_method_callback_connectNotify(self: pointer, signal: pointer): void {.cdecl.} =
  let inst = cast[VirtualQAbstractTableModel](fcQAbstractTableModel_vdata(self))
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal, owned: false)
  inst.connectNotify(slotval1)

method disconnectNotify*(self: VirtualQAbstractTableModel, signal: gen_qmetaobject_types.QMetaMethod): void {.base.} =
  QAbstractTableModeldisconnectNotify(self[], signal)
proc cQAbstractTableModel_method_callback_disconnectNotify(self: pointer, signal: pointer): void {.cdecl.} =
  let inst = cast[VirtualQAbstractTableModel](fcQAbstractTableModel_vdata(self))
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal, owned: false)
  inst.disconnectNotify(slotval1)

proc resetInternalData*(self: gen_qabstractitemmodel_types.QAbstractTableModel): void =
  fcQAbstractTableModel_protectedbase_resetInternalData(self.h)

proc createIndex*(self: gen_qabstractitemmodel_types.QAbstractTableModel, row: cint, column: cint): gen_qabstractitemmodel_types.QModelIndex =
  gen_qabstractitemmodel_types.QModelIndex(h: fcQAbstractTableModel_protectedbase_createIndex(self.h, row, column), owned: true)

proc encodeData*(self: gen_qabstractitemmodel_types.QAbstractTableModel, indexes: seq[gen_qabstractitemmodel_types.QModelIndex], stream: gen_qdatastream_types.QDataStream): void =
  var indexes_CArray = newSeq[pointer](len(indexes))
  for i in 0..<len(indexes):
    indexes_CArray[i] = indexes[i].h

  fcQAbstractTableModel_protectedbase_encodeData(self.h, struct_miqt_array(len: csize_t(len(indexes)), data: if len(indexes) == 0: nil else: addr(indexes_CArray[0])), stream.h)

proc decodeData*(self: gen_qabstractitemmodel_types.QAbstractTableModel, row: cint, column: cint, parent: gen_qabstractitemmodel_types.QModelIndex, stream: gen_qdatastream_types.QDataStream): bool =
  fcQAbstractTableModel_protectedbase_decodeData(self.h, row, column, parent.h, stream.h)

proc beginInsertRows*(self: gen_qabstractitemmodel_types.QAbstractTableModel, parent: gen_qabstractitemmodel_types.QModelIndex, first: cint, last: cint): void =
  fcQAbstractTableModel_protectedbase_beginInsertRows(self.h, parent.h, first, last)

proc endInsertRows*(self: gen_qabstractitemmodel_types.QAbstractTableModel): void =
  fcQAbstractTableModel_protectedbase_endInsertRows(self.h)

proc beginRemoveRows*(self: gen_qabstractitemmodel_types.QAbstractTableModel, parent: gen_qabstractitemmodel_types.QModelIndex, first: cint, last: cint): void =
  fcQAbstractTableModel_protectedbase_beginRemoveRows(self.h, parent.h, first, last)

proc endRemoveRows*(self: gen_qabstractitemmodel_types.QAbstractTableModel): void =
  fcQAbstractTableModel_protectedbase_endRemoveRows(self.h)

proc beginMoveRows*(self: gen_qabstractitemmodel_types.QAbstractTableModel, sourceParent: gen_qabstractitemmodel_types.QModelIndex, sourceFirst: cint, sourceLast: cint, destinationParent: gen_qabstractitemmodel_types.QModelIndex, destinationRow: cint): bool =
  fcQAbstractTableModel_protectedbase_beginMoveRows(self.h, sourceParent.h, sourceFirst, sourceLast, destinationParent.h, destinationRow)

proc endMoveRows*(self: gen_qabstractitemmodel_types.QAbstractTableModel): void =
  fcQAbstractTableModel_protectedbase_endMoveRows(self.h)

proc beginInsertColumns*(self: gen_qabstractitemmodel_types.QAbstractTableModel, parent: gen_qabstractitemmodel_types.QModelIndex, first: cint, last: cint): void =
  fcQAbstractTableModel_protectedbase_beginInsertColumns(self.h, parent.h, first, last)

proc endInsertColumns*(self: gen_qabstractitemmodel_types.QAbstractTableModel): void =
  fcQAbstractTableModel_protectedbase_endInsertColumns(self.h)

proc beginRemoveColumns*(self: gen_qabstractitemmodel_types.QAbstractTableModel, parent: gen_qabstractitemmodel_types.QModelIndex, first: cint, last: cint): void =
  fcQAbstractTableModel_protectedbase_beginRemoveColumns(self.h, parent.h, first, last)

proc endRemoveColumns*(self: gen_qabstractitemmodel_types.QAbstractTableModel): void =
  fcQAbstractTableModel_protectedbase_endRemoveColumns(self.h)

proc beginMoveColumns*(self: gen_qabstractitemmodel_types.QAbstractTableModel, sourceParent: gen_qabstractitemmodel_types.QModelIndex, sourceFirst: cint, sourceLast: cint, destinationParent: gen_qabstractitemmodel_types.QModelIndex, destinationColumn: cint): bool =
  fcQAbstractTableModel_protectedbase_beginMoveColumns(self.h, sourceParent.h, sourceFirst, sourceLast, destinationParent.h, destinationColumn)

proc endMoveColumns*(self: gen_qabstractitemmodel_types.QAbstractTableModel): void =
  fcQAbstractTableModel_protectedbase_endMoveColumns(self.h)

proc beginResetModel*(self: gen_qabstractitemmodel_types.QAbstractTableModel): void =
  fcQAbstractTableModel_protectedbase_beginResetModel(self.h)

proc endResetModel*(self: gen_qabstractitemmodel_types.QAbstractTableModel): void =
  fcQAbstractTableModel_protectedbase_endResetModel(self.h)

proc changePersistentIndex*(self: gen_qabstractitemmodel_types.QAbstractTableModel, fromVal: gen_qabstractitemmodel_types.QModelIndex, to: gen_qabstractitemmodel_types.QModelIndex): void =
  fcQAbstractTableModel_protectedbase_changePersistentIndex(self.h, fromVal.h, to.h)

proc changePersistentIndexList*(self: gen_qabstractitemmodel_types.QAbstractTableModel, fromVal: seq[gen_qabstractitemmodel_types.QModelIndex], to: seq[gen_qabstractitemmodel_types.QModelIndex]): void =
  var fromVal_CArray = newSeq[pointer](len(fromVal))
  for i in 0..<len(fromVal):
    fromVal_CArray[i] = fromVal[i].h

  var to_CArray = newSeq[pointer](len(to))
  for i in 0..<len(to):
    to_CArray[i] = to[i].h

  fcQAbstractTableModel_protectedbase_changePersistentIndexList(self.h, struct_miqt_array(len: csize_t(len(fromVal)), data: if len(fromVal) == 0: nil else: addr(fromVal_CArray[0])), struct_miqt_array(len: csize_t(len(to)), data: if len(to) == 0: nil else: addr(to_CArray[0])))

proc persistentIndexList*(self: gen_qabstractitemmodel_types.QAbstractTableModel): seq[gen_qabstractitemmodel_types.QModelIndex] =
  var v_ma = fcQAbstractTableModel_protectedbase_persistentIndexList(self.h)
  var vx_ret = newSeq[gen_qabstractitemmodel_types.QModelIndex](int(v_ma.len))
  let v_outCast = cast[ptr UncheckedArray[pointer]](v_ma.data)
  for i in 0 ..< v_ma.len:
    vx_ret[i] = gen_qabstractitemmodel_types.QModelIndex(h: v_outCast[i], owned: true)
  c_free(v_ma.data)
  vx_ret

proc sender*(self: gen_qabstractitemmodel_types.QAbstractTableModel): gen_qobject_types.QObject =
  gen_qobject_types.QObject(h: fcQAbstractTableModel_protectedbase_sender(self.h), owned: false)

proc senderSignalIndex*(self: gen_qabstractitemmodel_types.QAbstractTableModel): cint =
  fcQAbstractTableModel_protectedbase_senderSignalIndex(self.h)

proc receivers*(self: gen_qabstractitemmodel_types.QAbstractTableModel, signal: cstring): cint =
  fcQAbstractTableModel_protectedbase_receivers(self.h, signal)

proc isSignalConnected*(self: gen_qabstractitemmodel_types.QAbstractTableModel, signal: gen_qmetaobject_types.QMetaMethod): bool =
  fcQAbstractTableModel_protectedbase_isSignalConnected(self.h, signal.h)

proc create*(T: type gen_qabstractitemmodel_types.QAbstractTableModel,
    vtbl: ref QAbstractTableModelVTable = nil): gen_qabstractitemmodel_types.QAbstractTableModel =
  let vtbl = if vtbl == nil: new QAbstractTableModelVTable else: vtbl
  GC_ref(vtbl)
  vtbl[].vtbl.destructor = proc(self: pointer) {.cdecl.} =
    let vtbl = cast[ref QAbstractTableModelVTable](fcQAbstractTableModel_vdata(self))
    GC_unref(vtbl)
  if not isNil(vtbl[].metaObject):
    vtbl[].vtbl.metaObject = cQAbstractTableModel_vtable_callback_metaObject
  if not isNil(vtbl[].metacast):
    vtbl[].vtbl.metacast = cQAbstractTableModel_vtable_callback_metacast
  if not isNil(vtbl[].metacall):
    vtbl[].vtbl.metacall = cQAbstractTableModel_vtable_callback_metacall
  if not isNil(vtbl[].index):
    vtbl[].vtbl.index = cQAbstractTableModel_vtable_callback_index
  if not isNil(vtbl[].sibling):
    vtbl[].vtbl.sibling = cQAbstractTableModel_vtable_callback_sibling
  if not isNil(vtbl[].dropMimeData):
    vtbl[].vtbl.dropMimeData = cQAbstractTableModel_vtable_callback_dropMimeData
  if not isNil(vtbl[].flags):
    vtbl[].vtbl.flags = cQAbstractTableModel_vtable_callback_flags
  if not isNil(vtbl[].rowCount):
    vtbl[].vtbl.rowCount = cQAbstractTableModel_vtable_callback_rowCount
  if not isNil(vtbl[].columnCount):
    vtbl[].vtbl.columnCount = cQAbstractTableModel_vtable_callback_columnCount
  if not isNil(vtbl[].data):
    vtbl[].vtbl.data = cQAbstractTableModel_vtable_callback_data
  if not isNil(vtbl[].setData):
    vtbl[].vtbl.setData = cQAbstractTableModel_vtable_callback_setData
  if not isNil(vtbl[].headerData):
    vtbl[].vtbl.headerData = cQAbstractTableModel_vtable_callback_headerData
  if not isNil(vtbl[].setHeaderData):
    vtbl[].vtbl.setHeaderData = cQAbstractTableModel_vtable_callback_setHeaderData
  if not isNil(vtbl[].itemData):
    vtbl[].vtbl.itemData = cQAbstractTableModel_vtable_callback_itemData
  if not isNil(vtbl[].setItemData):
    vtbl[].vtbl.setItemData = cQAbstractTableModel_vtable_callback_setItemData
  if not isNil(vtbl[].mimeTypes):
    vtbl[].vtbl.mimeTypes = cQAbstractTableModel_vtable_callback_mimeTypes
  if not isNil(vtbl[].mimeData):
    vtbl[].vtbl.mimeData = cQAbstractTableModel_vtable_callback_mimeData
  if not isNil(vtbl[].canDropMimeData):
    vtbl[].vtbl.canDropMimeData = cQAbstractTableModel_vtable_callback_canDropMimeData
  if not isNil(vtbl[].supportedDropActions):
    vtbl[].vtbl.supportedDropActions = cQAbstractTableModel_vtable_callback_supportedDropActions
  if not isNil(vtbl[].supportedDragActions):
    vtbl[].vtbl.supportedDragActions = cQAbstractTableModel_vtable_callback_supportedDragActions
  if not isNil(vtbl[].insertRows):
    vtbl[].vtbl.insertRows = cQAbstractTableModel_vtable_callback_insertRows
  if not isNil(vtbl[].insertColumns):
    vtbl[].vtbl.insertColumns = cQAbstractTableModel_vtable_callback_insertColumns
  if not isNil(vtbl[].removeRows):
    vtbl[].vtbl.removeRows = cQAbstractTableModel_vtable_callback_removeRows
  if not isNil(vtbl[].removeColumns):
    vtbl[].vtbl.removeColumns = cQAbstractTableModel_vtable_callback_removeColumns
  if not isNil(vtbl[].moveRows):
    vtbl[].vtbl.moveRows = cQAbstractTableModel_vtable_callback_moveRows
  if not isNil(vtbl[].moveColumns):
    vtbl[].vtbl.moveColumns = cQAbstractTableModel_vtable_callback_moveColumns
  if not isNil(vtbl[].fetchMore):
    vtbl[].vtbl.fetchMore = cQAbstractTableModel_vtable_callback_fetchMore
  if not isNil(vtbl[].canFetchMore):
    vtbl[].vtbl.canFetchMore = cQAbstractTableModel_vtable_callback_canFetchMore
  if not isNil(vtbl[].sort):
    vtbl[].vtbl.sort = cQAbstractTableModel_vtable_callback_sort
  if not isNil(vtbl[].buddy):
    vtbl[].vtbl.buddy = cQAbstractTableModel_vtable_callback_buddy
  if not isNil(vtbl[].match):
    vtbl[].vtbl.match = cQAbstractTableModel_vtable_callback_match
  if not isNil(vtbl[].span):
    vtbl[].vtbl.span = cQAbstractTableModel_vtable_callback_span
  if not isNil(vtbl[].roleNames):
    vtbl[].vtbl.roleNames = cQAbstractTableModel_vtable_callback_roleNames
  if not isNil(vtbl[].submit):
    vtbl[].vtbl.submit = cQAbstractTableModel_vtable_callback_submit
  if not isNil(vtbl[].revert):
    vtbl[].vtbl.revert = cQAbstractTableModel_vtable_callback_revert
  if not isNil(vtbl[].event):
    vtbl[].vtbl.event = cQAbstractTableModel_vtable_callback_event
  if not isNil(vtbl[].eventFilter):
    vtbl[].vtbl.eventFilter = cQAbstractTableModel_vtable_callback_eventFilter
  if not isNil(vtbl[].timerEvent):
    vtbl[].vtbl.timerEvent = cQAbstractTableModel_vtable_callback_timerEvent
  if not isNil(vtbl[].childEvent):
    vtbl[].vtbl.childEvent = cQAbstractTableModel_vtable_callback_childEvent
  if not isNil(vtbl[].customEvent):
    vtbl[].vtbl.customEvent = cQAbstractTableModel_vtable_callback_customEvent
  if not isNil(vtbl[].connectNotify):
    vtbl[].vtbl.connectNotify = cQAbstractTableModel_vtable_callback_connectNotify
  if not isNil(vtbl[].disconnectNotify):
    vtbl[].vtbl.disconnectNotify = cQAbstractTableModel_vtable_callback_disconnectNotify
  gen_qabstractitemmodel_types.QAbstractTableModel(h: fcQAbstractTableModel_new(addr(vtbl[].vtbl), addr(vtbl[])), owned: true)

proc create*(T: type gen_qabstractitemmodel_types.QAbstractTableModel,
    parent: gen_qobject_types.QObject,
    vtbl: ref QAbstractTableModelVTable = nil): gen_qabstractitemmodel_types.QAbstractTableModel =
  let vtbl = if vtbl == nil: new QAbstractTableModelVTable else: vtbl
  GC_ref(vtbl)
  vtbl[].vtbl.destructor = proc(self: pointer) {.cdecl.} =
    let vtbl = cast[ref QAbstractTableModelVTable](fcQAbstractTableModel_vdata(self))
    GC_unref(vtbl)
  if not isNil(vtbl[].metaObject):
    vtbl[].vtbl.metaObject = cQAbstractTableModel_vtable_callback_metaObject
  if not isNil(vtbl[].metacast):
    vtbl[].vtbl.metacast = cQAbstractTableModel_vtable_callback_metacast
  if not isNil(vtbl[].metacall):
    vtbl[].vtbl.metacall = cQAbstractTableModel_vtable_callback_metacall
  if not isNil(vtbl[].index):
    vtbl[].vtbl.index = cQAbstractTableModel_vtable_callback_index
  if not isNil(vtbl[].sibling):
    vtbl[].vtbl.sibling = cQAbstractTableModel_vtable_callback_sibling
  if not isNil(vtbl[].dropMimeData):
    vtbl[].vtbl.dropMimeData = cQAbstractTableModel_vtable_callback_dropMimeData
  if not isNil(vtbl[].flags):
    vtbl[].vtbl.flags = cQAbstractTableModel_vtable_callback_flags
  if not isNil(vtbl[].rowCount):
    vtbl[].vtbl.rowCount = cQAbstractTableModel_vtable_callback_rowCount
  if not isNil(vtbl[].columnCount):
    vtbl[].vtbl.columnCount = cQAbstractTableModel_vtable_callback_columnCount
  if not isNil(vtbl[].data):
    vtbl[].vtbl.data = cQAbstractTableModel_vtable_callback_data
  if not isNil(vtbl[].setData):
    vtbl[].vtbl.setData = cQAbstractTableModel_vtable_callback_setData
  if not isNil(vtbl[].headerData):
    vtbl[].vtbl.headerData = cQAbstractTableModel_vtable_callback_headerData
  if not isNil(vtbl[].setHeaderData):
    vtbl[].vtbl.setHeaderData = cQAbstractTableModel_vtable_callback_setHeaderData
  if not isNil(vtbl[].itemData):
    vtbl[].vtbl.itemData = cQAbstractTableModel_vtable_callback_itemData
  if not isNil(vtbl[].setItemData):
    vtbl[].vtbl.setItemData = cQAbstractTableModel_vtable_callback_setItemData
  if not isNil(vtbl[].mimeTypes):
    vtbl[].vtbl.mimeTypes = cQAbstractTableModel_vtable_callback_mimeTypes
  if not isNil(vtbl[].mimeData):
    vtbl[].vtbl.mimeData = cQAbstractTableModel_vtable_callback_mimeData
  if not isNil(vtbl[].canDropMimeData):
    vtbl[].vtbl.canDropMimeData = cQAbstractTableModel_vtable_callback_canDropMimeData
  if not isNil(vtbl[].supportedDropActions):
    vtbl[].vtbl.supportedDropActions = cQAbstractTableModel_vtable_callback_supportedDropActions
  if not isNil(vtbl[].supportedDragActions):
    vtbl[].vtbl.supportedDragActions = cQAbstractTableModel_vtable_callback_supportedDragActions
  if not isNil(vtbl[].insertRows):
    vtbl[].vtbl.insertRows = cQAbstractTableModel_vtable_callback_insertRows
  if not isNil(vtbl[].insertColumns):
    vtbl[].vtbl.insertColumns = cQAbstractTableModel_vtable_callback_insertColumns
  if not isNil(vtbl[].removeRows):
    vtbl[].vtbl.removeRows = cQAbstractTableModel_vtable_callback_removeRows
  if not isNil(vtbl[].removeColumns):
    vtbl[].vtbl.removeColumns = cQAbstractTableModel_vtable_callback_removeColumns
  if not isNil(vtbl[].moveRows):
    vtbl[].vtbl.moveRows = cQAbstractTableModel_vtable_callback_moveRows
  if not isNil(vtbl[].moveColumns):
    vtbl[].vtbl.moveColumns = cQAbstractTableModel_vtable_callback_moveColumns
  if not isNil(vtbl[].fetchMore):
    vtbl[].vtbl.fetchMore = cQAbstractTableModel_vtable_callback_fetchMore
  if not isNil(vtbl[].canFetchMore):
    vtbl[].vtbl.canFetchMore = cQAbstractTableModel_vtable_callback_canFetchMore
  if not isNil(vtbl[].sort):
    vtbl[].vtbl.sort = cQAbstractTableModel_vtable_callback_sort
  if not isNil(vtbl[].buddy):
    vtbl[].vtbl.buddy = cQAbstractTableModel_vtable_callback_buddy
  if not isNil(vtbl[].match):
    vtbl[].vtbl.match = cQAbstractTableModel_vtable_callback_match
  if not isNil(vtbl[].span):
    vtbl[].vtbl.span = cQAbstractTableModel_vtable_callback_span
  if not isNil(vtbl[].roleNames):
    vtbl[].vtbl.roleNames = cQAbstractTableModel_vtable_callback_roleNames
  if not isNil(vtbl[].submit):
    vtbl[].vtbl.submit = cQAbstractTableModel_vtable_callback_submit
  if not isNil(vtbl[].revert):
    vtbl[].vtbl.revert = cQAbstractTableModel_vtable_callback_revert
  if not isNil(vtbl[].event):
    vtbl[].vtbl.event = cQAbstractTableModel_vtable_callback_event
  if not isNil(vtbl[].eventFilter):
    vtbl[].vtbl.eventFilter = cQAbstractTableModel_vtable_callback_eventFilter
  if not isNil(vtbl[].timerEvent):
    vtbl[].vtbl.timerEvent = cQAbstractTableModel_vtable_callback_timerEvent
  if not isNil(vtbl[].childEvent):
    vtbl[].vtbl.childEvent = cQAbstractTableModel_vtable_callback_childEvent
  if not isNil(vtbl[].customEvent):
    vtbl[].vtbl.customEvent = cQAbstractTableModel_vtable_callback_customEvent
  if not isNil(vtbl[].connectNotify):
    vtbl[].vtbl.connectNotify = cQAbstractTableModel_vtable_callback_connectNotify
  if not isNil(vtbl[].disconnectNotify):
    vtbl[].vtbl.disconnectNotify = cQAbstractTableModel_vtable_callback_disconnectNotify
  gen_qabstractitemmodel_types.QAbstractTableModel(h: fcQAbstractTableModel_new2(addr(vtbl[].vtbl), addr(vtbl[]), parent.h), owned: true)

const cQAbstractTableModel_mvtbl = cQAbstractTableModelVTable(
  destructor: proc(self: pointer) {.cdecl.} =
    let inst = cast[ptr typeof(VirtualQAbstractTableModel()[])](self.fcQAbstractTableModel_vtbl())
    inst[].h = nil
    inst[].owned = false,
  metaObject: cQAbstractTableModel_method_callback_metaObject,
  metacast: cQAbstractTableModel_method_callback_metacast,
  metacall: cQAbstractTableModel_method_callback_metacall,
  index: cQAbstractTableModel_method_callback_index,
  sibling: cQAbstractTableModel_method_callback_sibling,
  dropMimeData: cQAbstractTableModel_method_callback_dropMimeData,
  flags: cQAbstractTableModel_method_callback_flags,
  rowCount: cQAbstractTableModel_method_callback_rowCount,
  columnCount: cQAbstractTableModel_method_callback_columnCount,
  data: cQAbstractTableModel_method_callback_data,
  setData: cQAbstractTableModel_method_callback_setData,
  headerData: cQAbstractTableModel_method_callback_headerData,
  setHeaderData: cQAbstractTableModel_method_callback_setHeaderData,
  itemData: cQAbstractTableModel_method_callback_itemData,
  setItemData: cQAbstractTableModel_method_callback_setItemData,
  mimeTypes: cQAbstractTableModel_method_callback_mimeTypes,
  mimeData: cQAbstractTableModel_method_callback_mimeData,
  canDropMimeData: cQAbstractTableModel_method_callback_canDropMimeData,
  supportedDropActions: cQAbstractTableModel_method_callback_supportedDropActions,
  supportedDragActions: cQAbstractTableModel_method_callback_supportedDragActions,
  insertRows: cQAbstractTableModel_method_callback_insertRows,
  insertColumns: cQAbstractTableModel_method_callback_insertColumns,
  removeRows: cQAbstractTableModel_method_callback_removeRows,
  removeColumns: cQAbstractTableModel_method_callback_removeColumns,
  moveRows: cQAbstractTableModel_method_callback_moveRows,
  moveColumns: cQAbstractTableModel_method_callback_moveColumns,
  fetchMore: cQAbstractTableModel_method_callback_fetchMore,
  canFetchMore: cQAbstractTableModel_method_callback_canFetchMore,
  sort: cQAbstractTableModel_method_callback_sort,
  buddy: cQAbstractTableModel_method_callback_buddy,
  match: cQAbstractTableModel_method_callback_match,
  span: cQAbstractTableModel_method_callback_span,
  roleNames: cQAbstractTableModel_method_callback_roleNames,
  submit: cQAbstractTableModel_method_callback_submit,
  revert: cQAbstractTableModel_method_callback_revert,
  event: cQAbstractTableModel_method_callback_event,
  eventFilter: cQAbstractTableModel_method_callback_eventFilter,
  timerEvent: cQAbstractTableModel_method_callback_timerEvent,
  childEvent: cQAbstractTableModel_method_callback_childEvent,
  customEvent: cQAbstractTableModel_method_callback_customEvent,
  connectNotify: cQAbstractTableModel_method_callback_connectNotify,
  disconnectNotify: cQAbstractTableModel_method_callback_disconnectNotify,
)
proc create*(T: type gen_qabstractitemmodel_types.QAbstractTableModel,
    inst: VirtualQAbstractTableModel) =
  if inst[].h != nil: delete(move(inst[]))
  inst[].h = fcQAbstractTableModel_new(addr(cQAbstractTableModel_mvtbl), addr(inst[]))
  inst[].owned = true

proc create*(T: type gen_qabstractitemmodel_types.QAbstractTableModel,
    parent: gen_qobject_types.QObject,
    inst: VirtualQAbstractTableModel) =
  if inst[].h != nil: delete(move(inst[]))
  inst[].h = fcQAbstractTableModel_new2(addr(cQAbstractTableModel_mvtbl), addr(inst[]), parent.h)
  inst[].owned = true

proc staticMetaObject*(_: type gen_qabstractitemmodel_types.QAbstractTableModel): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQAbstractTableModel_staticMetaObject())
proc metaObject*(self: gen_qabstractitemmodel_types.QAbstractListModel): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQAbstractListModel_metaObject(self.h), owned: false)

proc metacast*(self: gen_qabstractitemmodel_types.QAbstractListModel, param1: cstring): pointer =
  fcQAbstractListModel_metacast(self.h, param1)

proc metacall*(self: gen_qabstractitemmodel_types.QAbstractListModel, param1: cint, param2: cint, param3: pointer): cint =
  fcQAbstractListModel_metacall(self.h, cint(param1), param2, param3)

proc tr*(_: type gen_qabstractitemmodel_types.QAbstractListModel, s: cstring): string =
  let v_ms = fcQAbstractListModel_tr(s)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc trUtf8*(_: type gen_qabstractitemmodel_types.QAbstractListModel, s: cstring): string =
  let v_ms = fcQAbstractListModel_trUtf8(s)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc index*(self: gen_qabstractitemmodel_types.QAbstractListModel, row: cint, column: cint, parent: gen_qabstractitemmodel_types.QModelIndex): gen_qabstractitemmodel_types.QModelIndex =
  gen_qabstractitemmodel_types.QModelIndex(h: fcQAbstractListModel_index(self.h, row, column, parent.h), owned: true)

proc sibling*(self: gen_qabstractitemmodel_types.QAbstractListModel, row: cint, column: cint, idx: gen_qabstractitemmodel_types.QModelIndex): gen_qabstractitemmodel_types.QModelIndex =
  gen_qabstractitemmodel_types.QModelIndex(h: fcQAbstractListModel_sibling(self.h, row, column, idx.h), owned: true)

proc dropMimeData*(self: gen_qabstractitemmodel_types.QAbstractListModel, data: gen_qmimedata_types.QMimeData, action: cint, row: cint, column: cint, parent: gen_qabstractitemmodel_types.QModelIndex): bool =
  fcQAbstractListModel_dropMimeData(self.h, data.h, cint(action), row, column, parent.h)

proc flags*(self: gen_qabstractitemmodel_types.QAbstractListModel, index: gen_qabstractitemmodel_types.QModelIndex): cint =
  cint(fcQAbstractListModel_flags(self.h, index.h))

proc tr*(_: type gen_qabstractitemmodel_types.QAbstractListModel, s: cstring, c: cstring): string =
  let v_ms = fcQAbstractListModel_tr2(s, c)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc tr*(_: type gen_qabstractitemmodel_types.QAbstractListModel, s: cstring, c: cstring, n: cint): string =
  let v_ms = fcQAbstractListModel_tr3(s, c, n)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc trUtf8*(_: type gen_qabstractitemmodel_types.QAbstractListModel, s: cstring, c: cstring): string =
  let v_ms = fcQAbstractListModel_trUtf82(s, c)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc trUtf8*(_: type gen_qabstractitemmodel_types.QAbstractListModel, s: cstring, c: cstring, n: cint): string =
  let v_ms = fcQAbstractListModel_trUtf83(s, c, n)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

type QAbstractListModelmetaObjectProc* = proc(self: QAbstractListModel): gen_qobjectdefs_types.QMetaObject {.raises: [], gcsafe.}
type QAbstractListModelmetacastProc* = proc(self: QAbstractListModel, param1: cstring): pointer {.raises: [], gcsafe.}
type QAbstractListModelmetacallProc* = proc(self: QAbstractListModel, param1: cint, param2: cint, param3: pointer): cint {.raises: [], gcsafe.}
type QAbstractListModelindexProc* = proc(self: QAbstractListModel, row: cint, column: cint, parent: gen_qabstractitemmodel_types.QModelIndex): gen_qabstractitemmodel_types.QModelIndex {.raises: [], gcsafe.}
type QAbstractListModelsiblingProc* = proc(self: QAbstractListModel, row: cint, column: cint, idx: gen_qabstractitemmodel_types.QModelIndex): gen_qabstractitemmodel_types.QModelIndex {.raises: [], gcsafe.}
type QAbstractListModeldropMimeDataProc* = proc(self: QAbstractListModel, data: gen_qmimedata_types.QMimeData, action: cint, row: cint, column: cint, parent: gen_qabstractitemmodel_types.QModelIndex): bool {.raises: [], gcsafe.}
type QAbstractListModelflagsProc* = proc(self: QAbstractListModel, index: gen_qabstractitemmodel_types.QModelIndex): cint {.raises: [], gcsafe.}
type QAbstractListModelrowCountProc* = proc(self: QAbstractListModel, parent: gen_qabstractitemmodel_types.QModelIndex): cint {.raises: [], gcsafe.}
type QAbstractListModeldataProc* = proc(self: QAbstractListModel, index: gen_qabstractitemmodel_types.QModelIndex, role: cint): gen_qvariant_types.QVariant {.raises: [], gcsafe.}
type QAbstractListModelsetDataProc* = proc(self: QAbstractListModel, index: gen_qabstractitemmodel_types.QModelIndex, value: gen_qvariant_types.QVariant, role: cint): bool {.raises: [], gcsafe.}
type QAbstractListModelheaderDataProc* = proc(self: QAbstractListModel, section: cint, orientation: cint, role: cint): gen_qvariant_types.QVariant {.raises: [], gcsafe.}
type QAbstractListModelsetHeaderDataProc* = proc(self: QAbstractListModel, section: cint, orientation: cint, value: gen_qvariant_types.QVariant, role: cint): bool {.raises: [], gcsafe.}
type QAbstractListModelitemDataProc* = proc(self: QAbstractListModel, index: gen_qabstractitemmodel_types.QModelIndex): Table[cint,gen_qvariant_types.QVariant] {.raises: [], gcsafe.}
type QAbstractListModelsetItemDataProc* = proc(self: QAbstractListModel, index: gen_qabstractitemmodel_types.QModelIndex, roles: Table[cint,gen_qvariant_types.QVariant]): bool {.raises: [], gcsafe.}
type QAbstractListModelmimeTypesProc* = proc(self: QAbstractListModel): seq[string] {.raises: [], gcsafe.}
type QAbstractListModelmimeDataProc* = proc(self: QAbstractListModel, indexes: seq[gen_qabstractitemmodel_types.QModelIndex]): gen_qmimedata_types.QMimeData {.raises: [], gcsafe.}
type QAbstractListModelcanDropMimeDataProc* = proc(self: QAbstractListModel, data: gen_qmimedata_types.QMimeData, action: cint, row: cint, column: cint, parent: gen_qabstractitemmodel_types.QModelIndex): bool {.raises: [], gcsafe.}
type QAbstractListModelsupportedDropActionsProc* = proc(self: QAbstractListModel): cint {.raises: [], gcsafe.}
type QAbstractListModelsupportedDragActionsProc* = proc(self: QAbstractListModel): cint {.raises: [], gcsafe.}
type QAbstractListModelinsertRowsProc* = proc(self: QAbstractListModel, row: cint, count: cint, parent: gen_qabstractitemmodel_types.QModelIndex): bool {.raises: [], gcsafe.}
type QAbstractListModelinsertColumnsProc* = proc(self: QAbstractListModel, column: cint, count: cint, parent: gen_qabstractitemmodel_types.QModelIndex): bool {.raises: [], gcsafe.}
type QAbstractListModelremoveRowsProc* = proc(self: QAbstractListModel, row: cint, count: cint, parent: gen_qabstractitemmodel_types.QModelIndex): bool {.raises: [], gcsafe.}
type QAbstractListModelremoveColumnsProc* = proc(self: QAbstractListModel, column: cint, count: cint, parent: gen_qabstractitemmodel_types.QModelIndex): bool {.raises: [], gcsafe.}
type QAbstractListModelmoveRowsProc* = proc(self: QAbstractListModel, sourceParent: gen_qabstractitemmodel_types.QModelIndex, sourceRow: cint, count: cint, destinationParent: gen_qabstractitemmodel_types.QModelIndex, destinationChild: cint): bool {.raises: [], gcsafe.}
type QAbstractListModelmoveColumnsProc* = proc(self: QAbstractListModel, sourceParent: gen_qabstractitemmodel_types.QModelIndex, sourceColumn: cint, count: cint, destinationParent: gen_qabstractitemmodel_types.QModelIndex, destinationChild: cint): bool {.raises: [], gcsafe.}
type QAbstractListModelfetchMoreProc* = proc(self: QAbstractListModel, parent: gen_qabstractitemmodel_types.QModelIndex): void {.raises: [], gcsafe.}
type QAbstractListModelcanFetchMoreProc* = proc(self: QAbstractListModel, parent: gen_qabstractitemmodel_types.QModelIndex): bool {.raises: [], gcsafe.}
type QAbstractListModelsortProc* = proc(self: QAbstractListModel, column: cint, order: cint): void {.raises: [], gcsafe.}
type QAbstractListModelbuddyProc* = proc(self: QAbstractListModel, index: gen_qabstractitemmodel_types.QModelIndex): gen_qabstractitemmodel_types.QModelIndex {.raises: [], gcsafe.}
type QAbstractListModelmatchProc* = proc(self: QAbstractListModel, start: gen_qabstractitemmodel_types.QModelIndex, role: cint, value: gen_qvariant_types.QVariant, hits: cint, flags: cint): seq[gen_qabstractitemmodel_types.QModelIndex] {.raises: [], gcsafe.}
type QAbstractListModelspanProc* = proc(self: QAbstractListModel, index: gen_qabstractitemmodel_types.QModelIndex): gen_qsize_types.QSize {.raises: [], gcsafe.}
type QAbstractListModelroleNamesProc* = proc(self: QAbstractListModel): Table[cint,seq[byte]] {.raises: [], gcsafe.}
type QAbstractListModelsubmitProc* = proc(self: QAbstractListModel): bool {.raises: [], gcsafe.}
type QAbstractListModelrevertProc* = proc(self: QAbstractListModel): void {.raises: [], gcsafe.}
type QAbstractListModeleventProc* = proc(self: QAbstractListModel, event: gen_qcoreevent_types.QEvent): bool {.raises: [], gcsafe.}
type QAbstractListModeleventFilterProc* = proc(self: QAbstractListModel, watched: gen_qobject_types.QObject, event: gen_qcoreevent_types.QEvent): bool {.raises: [], gcsafe.}
type QAbstractListModeltimerEventProc* = proc(self: QAbstractListModel, event: gen_qcoreevent_types.QTimerEvent): void {.raises: [], gcsafe.}
type QAbstractListModelchildEventProc* = proc(self: QAbstractListModel, event: gen_qcoreevent_types.QChildEvent): void {.raises: [], gcsafe.}
type QAbstractListModelcustomEventProc* = proc(self: QAbstractListModel, event: gen_qcoreevent_types.QEvent): void {.raises: [], gcsafe.}
type QAbstractListModelconnectNotifyProc* = proc(self: QAbstractListModel, signal: gen_qmetaobject_types.QMetaMethod): void {.raises: [], gcsafe.}
type QAbstractListModeldisconnectNotifyProc* = proc(self: QAbstractListModel, signal: gen_qmetaobject_types.QMetaMethod): void {.raises: [], gcsafe.}
type QAbstractListModelVTable* {.inheritable, pure.} = object
  vtbl: cQAbstractListModelVTable
  metaObject*: QAbstractListModelmetaObjectProc
  metacast*: QAbstractListModelmetacastProc
  metacall*: QAbstractListModelmetacallProc
  index*: QAbstractListModelindexProc
  sibling*: QAbstractListModelsiblingProc
  dropMimeData*: QAbstractListModeldropMimeDataProc
  flags*: QAbstractListModelflagsProc
  rowCount*: QAbstractListModelrowCountProc
  data*: QAbstractListModeldataProc
  setData*: QAbstractListModelsetDataProc
  headerData*: QAbstractListModelheaderDataProc
  setHeaderData*: QAbstractListModelsetHeaderDataProc
  itemData*: QAbstractListModelitemDataProc
  setItemData*: QAbstractListModelsetItemDataProc
  mimeTypes*: QAbstractListModelmimeTypesProc
  mimeData*: QAbstractListModelmimeDataProc
  canDropMimeData*: QAbstractListModelcanDropMimeDataProc
  supportedDropActions*: QAbstractListModelsupportedDropActionsProc
  supportedDragActions*: QAbstractListModelsupportedDragActionsProc
  insertRows*: QAbstractListModelinsertRowsProc
  insertColumns*: QAbstractListModelinsertColumnsProc
  removeRows*: QAbstractListModelremoveRowsProc
  removeColumns*: QAbstractListModelremoveColumnsProc
  moveRows*: QAbstractListModelmoveRowsProc
  moveColumns*: QAbstractListModelmoveColumnsProc
  fetchMore*: QAbstractListModelfetchMoreProc
  canFetchMore*: QAbstractListModelcanFetchMoreProc
  sort*: QAbstractListModelsortProc
  buddy*: QAbstractListModelbuddyProc
  match*: QAbstractListModelmatchProc
  span*: QAbstractListModelspanProc
  roleNames*: QAbstractListModelroleNamesProc
  submit*: QAbstractListModelsubmitProc
  revert*: QAbstractListModelrevertProc
  event*: QAbstractListModeleventProc
  eventFilter*: QAbstractListModeleventFilterProc
  timerEvent*: QAbstractListModeltimerEventProc
  childEvent*: QAbstractListModelchildEventProc
  customEvent*: QAbstractListModelcustomEventProc
  connectNotify*: QAbstractListModelconnectNotifyProc
  disconnectNotify*: QAbstractListModeldisconnectNotifyProc
proc QAbstractListModelmetaObject*(self: gen_qabstractitemmodel_types.QAbstractListModel): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQAbstractListModel_virtualbase_metaObject(self.h), owned: false)

proc cQAbstractListModel_vtable_callback_metaObject(self: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QAbstractListModelVTable](fcQAbstractListModel_vdata(self))
  let self = QAbstractListModel(h: self)
  var virtualReturn = vtbl[].metaObject(self)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc QAbstractListModelmetacast*(self: gen_qabstractitemmodel_types.QAbstractListModel, param1: cstring): pointer =
  fcQAbstractListModel_virtualbase_metacast(self.h, param1)

proc cQAbstractListModel_vtable_callback_metacast(self: pointer, param1: cstring): pointer {.cdecl.} =
  let vtbl = cast[ptr QAbstractListModelVTable](fcQAbstractListModel_vdata(self))
  let self = QAbstractListModel(h: self)
  let slotval1 = (param1)
  var virtualReturn = vtbl[].metacast(self, slotval1)
  virtualReturn

proc QAbstractListModelmetacall*(self: gen_qabstractitemmodel_types.QAbstractListModel, param1: cint, param2: cint, param3: pointer): cint =
  fcQAbstractListModel_virtualbase_metacall(self.h, cint(param1), param2, param3)

proc cQAbstractListModel_vtable_callback_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.cdecl.} =
  let vtbl = cast[ptr QAbstractListModelVTable](fcQAbstractListModel_vdata(self))
  let self = QAbstractListModel(h: self)
  let slotval1 = cint(param1)
  let slotval2 = param2
  let slotval3 = param3
  var virtualReturn = vtbl[].metacall(self, slotval1, slotval2, slotval3)
  virtualReturn

proc QAbstractListModelindex*(self: gen_qabstractitemmodel_types.QAbstractListModel, row: cint, column: cint, parent: gen_qabstractitemmodel_types.QModelIndex): gen_qabstractitemmodel_types.QModelIndex =
  gen_qabstractitemmodel_types.QModelIndex(h: fcQAbstractListModel_virtualbase_index(self.h, row, column, parent.h), owned: true)

proc cQAbstractListModel_vtable_callback_index(self: pointer, row: cint, column: cint, parent: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QAbstractListModelVTable](fcQAbstractListModel_vdata(self))
  let self = QAbstractListModel(h: self)
  let slotval1 = row
  let slotval2 = column
  let slotval3 = gen_qabstractitemmodel_types.QModelIndex(h: parent, owned: false)
  var virtualReturn = vtbl[].index(self, slotval1, slotval2, slotval3)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc QAbstractListModelsibling*(self: gen_qabstractitemmodel_types.QAbstractListModel, row: cint, column: cint, idx: gen_qabstractitemmodel_types.QModelIndex): gen_qabstractitemmodel_types.QModelIndex =
  gen_qabstractitemmodel_types.QModelIndex(h: fcQAbstractListModel_virtualbase_sibling(self.h, row, column, idx.h), owned: true)

proc cQAbstractListModel_vtable_callback_sibling(self: pointer, row: cint, column: cint, idx: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QAbstractListModelVTable](fcQAbstractListModel_vdata(self))
  let self = QAbstractListModel(h: self)
  let slotval1 = row
  let slotval2 = column
  let slotval3 = gen_qabstractitemmodel_types.QModelIndex(h: idx, owned: false)
  var virtualReturn = vtbl[].sibling(self, slotval1, slotval2, slotval3)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc QAbstractListModeldropMimeData*(self: gen_qabstractitemmodel_types.QAbstractListModel, data: gen_qmimedata_types.QMimeData, action: cint, row: cint, column: cint, parent: gen_qabstractitemmodel_types.QModelIndex): bool =
  fcQAbstractListModel_virtualbase_dropMimeData(self.h, data.h, cint(action), row, column, parent.h)

proc cQAbstractListModel_vtable_callback_dropMimeData(self: pointer, data: pointer, action: cint, row: cint, column: cint, parent: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QAbstractListModelVTable](fcQAbstractListModel_vdata(self))
  let self = QAbstractListModel(h: self)
  let slotval1 = gen_qmimedata_types.QMimeData(h: data, owned: false)
  let slotval2 = cint(action)
  let slotval3 = row
  let slotval4 = column
  let slotval5 = gen_qabstractitemmodel_types.QModelIndex(h: parent, owned: false)
  var virtualReturn = vtbl[].dropMimeData(self, slotval1, slotval2, slotval3, slotval4, slotval5)
  virtualReturn

proc QAbstractListModelflags*(self: gen_qabstractitemmodel_types.QAbstractListModel, index: gen_qabstractitemmodel_types.QModelIndex): cint =
  cint(fcQAbstractListModel_virtualbase_flags(self.h, index.h))

proc cQAbstractListModel_vtable_callback_flags(self: pointer, index: pointer): cint {.cdecl.} =
  let vtbl = cast[ptr QAbstractListModelVTable](fcQAbstractListModel_vdata(self))
  let self = QAbstractListModel(h: self)
  let slotval1 = gen_qabstractitemmodel_types.QModelIndex(h: index, owned: false)
  var virtualReturn = vtbl[].flags(self, slotval1)
  cint(virtualReturn)

proc cQAbstractListModel_vtable_callback_rowCount(self: pointer, parent: pointer): cint {.cdecl.} =
  let vtbl = cast[ptr QAbstractListModelVTable](fcQAbstractListModel_vdata(self))
  let self = QAbstractListModel(h: self)
  let slotval1 = gen_qabstractitemmodel_types.QModelIndex(h: parent, owned: false)
  var virtualReturn = vtbl[].rowCount(self, slotval1)
  virtualReturn

proc cQAbstractListModel_vtable_callback_data(self: pointer, index: pointer, role: cint): pointer {.cdecl.} =
  let vtbl = cast[ptr QAbstractListModelVTable](fcQAbstractListModel_vdata(self))
  let self = QAbstractListModel(h: self)
  let slotval1 = gen_qabstractitemmodel_types.QModelIndex(h: index, owned: false)
  let slotval2 = role
  var virtualReturn = vtbl[].data(self, slotval1, slotval2)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc QAbstractListModelsetData*(self: gen_qabstractitemmodel_types.QAbstractListModel, index: gen_qabstractitemmodel_types.QModelIndex, value: gen_qvariant_types.QVariant, role: cint): bool =
  fcQAbstractListModel_virtualbase_setData(self.h, index.h, value.h, role)

proc cQAbstractListModel_vtable_callback_setData(self: pointer, index: pointer, value: pointer, role: cint): bool {.cdecl.} =
  let vtbl = cast[ptr QAbstractListModelVTable](fcQAbstractListModel_vdata(self))
  let self = QAbstractListModel(h: self)
  let slotval1 = gen_qabstractitemmodel_types.QModelIndex(h: index, owned: false)
  let slotval2 = gen_qvariant_types.QVariant(h: value, owned: false)
  let slotval3 = role
  var virtualReturn = vtbl[].setData(self, slotval1, slotval2, slotval3)
  virtualReturn

proc QAbstractListModelheaderData*(self: gen_qabstractitemmodel_types.QAbstractListModel, section: cint, orientation: cint, role: cint): gen_qvariant_types.QVariant =
  gen_qvariant_types.QVariant(h: fcQAbstractListModel_virtualbase_headerData(self.h, section, cint(orientation), role), owned: true)

proc cQAbstractListModel_vtable_callback_headerData(self: pointer, section: cint, orientation: cint, role: cint): pointer {.cdecl.} =
  let vtbl = cast[ptr QAbstractListModelVTable](fcQAbstractListModel_vdata(self))
  let self = QAbstractListModel(h: self)
  let slotval1 = section
  let slotval2 = cint(orientation)
  let slotval3 = role
  var virtualReturn = vtbl[].headerData(self, slotval1, slotval2, slotval3)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc QAbstractListModelsetHeaderData*(self: gen_qabstractitemmodel_types.QAbstractListModel, section: cint, orientation: cint, value: gen_qvariant_types.QVariant, role: cint): bool =
  fcQAbstractListModel_virtualbase_setHeaderData(self.h, section, cint(orientation), value.h, role)

proc cQAbstractListModel_vtable_callback_setHeaderData(self: pointer, section: cint, orientation: cint, value: pointer, role: cint): bool {.cdecl.} =
  let vtbl = cast[ptr QAbstractListModelVTable](fcQAbstractListModel_vdata(self))
  let self = QAbstractListModel(h: self)
  let slotval1 = section
  let slotval2 = cint(orientation)
  let slotval3 = gen_qvariant_types.QVariant(h: value, owned: false)
  let slotval4 = role
  var virtualReturn = vtbl[].setHeaderData(self, slotval1, slotval2, slotval3, slotval4)
  virtualReturn

proc QAbstractListModelitemData*(self: gen_qabstractitemmodel_types.QAbstractListModel, index: gen_qabstractitemmodel_types.QModelIndex): Table[cint,gen_qvariant_types.QVariant] =
  var v_mm = fcQAbstractListModel_virtualbase_itemData(self.h, index.h)
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

proc cQAbstractListModel_vtable_callback_itemData(self: pointer, index: pointer): struct_miqt_map {.cdecl.} =
  let vtbl = cast[ptr QAbstractListModelVTable](fcQAbstractListModel_vdata(self))
  let self = QAbstractListModel(h: self)
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

proc QAbstractListModelsetItemData*(self: gen_qabstractitemmodel_types.QAbstractListModel, index: gen_qabstractitemmodel_types.QModelIndex, roles: Table[cint,gen_qvariant_types.QVariant]): bool =
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

  fcQAbstractListModel_virtualbase_setItemData(self.h, index.h, struct_miqt_map(len: csize_t(len(roles)),keys: if len(roles) == 0: nil else: addr(roles_Keys_CArray[0]), values: if len(roles) == 0: nil else: addr(roles_Values_CArray[0]),))

proc cQAbstractListModel_vtable_callback_setItemData(self: pointer, index: pointer, roles: struct_miqt_map): bool {.cdecl.} =
  let vtbl = cast[ptr QAbstractListModelVTable](fcQAbstractListModel_vdata(self))
  let self = QAbstractListModel(h: self)
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

proc QAbstractListModelmimeTypes*(self: gen_qabstractitemmodel_types.QAbstractListModel): seq[string] =
  var v_ma = fcQAbstractListModel_virtualbase_mimeTypes(self.h)
  var vx_ret = newSeq[string](int(v_ma.len))
  let v_outCast = cast[ptr UncheckedArray[struct_miqt_string]](v_ma.data)
  for i in 0 ..< v_ma.len:
    let vx_lv_ms = v_outCast[i]
    let vx_lvx_ret = string.fromBytes(toOpenArrayByte(vx_lv_ms.data, 0, int(vx_lv_ms.len)-1))
    c_free(vx_lv_ms.data)
    vx_ret[i] = vx_lvx_ret
  c_free(v_ma.data)
  vx_ret

proc cQAbstractListModel_vtable_callback_mimeTypes(self: pointer): struct_miqt_array {.cdecl.} =
  let vtbl = cast[ptr QAbstractListModelVTable](fcQAbstractListModel_vdata(self))
  let self = QAbstractListModel(h: self)
  var virtualReturn = vtbl[].mimeTypes(self)
  var virtualReturn_CArray = cast[ptr UncheckedArray[struct_miqt_string]](if len(virtualReturn) > 0: c_malloc(c_sizet(sizeof(struct_miqt_string) * len(virtualReturn))) else: nil)
  for i in 0..<len(virtualReturn):
    var virtualReturn_i_copy = cast[cstring](if len(virtualReturn[i]) > 0: c_malloc(csize_t(len(virtualReturn[i]))) else: nil)
    if len(virtualReturn[i]) > 0: copyMem(cast[pointer](virtualReturn_i_copy), addr virtualReturn[i][0], csize_t(len(virtualReturn[i])))
    virtualReturn_CArray[i] = struct_miqt_string(data: virtualReturn_i_copy, len: csize_t(len(virtualReturn[i])))

  struct_miqt_array(len: csize_t(len(virtualReturn)), data: if len(virtualReturn) == 0: nil else: addr(virtualReturn_CArray[0]))

proc QAbstractListModelmimeData*(self: gen_qabstractitemmodel_types.QAbstractListModel, indexes: seq[gen_qabstractitemmodel_types.QModelIndex]): gen_qmimedata_types.QMimeData =
  var indexes_CArray = newSeq[pointer](len(indexes))
  for i in 0..<len(indexes):
    indexes_CArray[i] = indexes[i].h

  gen_qmimedata_types.QMimeData(h: fcQAbstractListModel_virtualbase_mimeData(self.h, struct_miqt_array(len: csize_t(len(indexes)), data: if len(indexes) == 0: nil else: addr(indexes_CArray[0]))), owned: false)

proc cQAbstractListModel_vtable_callback_mimeData(self: pointer, indexes: struct_miqt_array): pointer {.cdecl.} =
  let vtbl = cast[ptr QAbstractListModelVTable](fcQAbstractListModel_vdata(self))
  let self = QAbstractListModel(h: self)
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

proc QAbstractListModelcanDropMimeData*(self: gen_qabstractitemmodel_types.QAbstractListModel, data: gen_qmimedata_types.QMimeData, action: cint, row: cint, column: cint, parent: gen_qabstractitemmodel_types.QModelIndex): bool =
  fcQAbstractListModel_virtualbase_canDropMimeData(self.h, data.h, cint(action), row, column, parent.h)

proc cQAbstractListModel_vtable_callback_canDropMimeData(self: pointer, data: pointer, action: cint, row: cint, column: cint, parent: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QAbstractListModelVTable](fcQAbstractListModel_vdata(self))
  let self = QAbstractListModel(h: self)
  let slotval1 = gen_qmimedata_types.QMimeData(h: data, owned: false)
  let slotval2 = cint(action)
  let slotval3 = row
  let slotval4 = column
  let slotval5 = gen_qabstractitemmodel_types.QModelIndex(h: parent, owned: false)
  var virtualReturn = vtbl[].canDropMimeData(self, slotval1, slotval2, slotval3, slotval4, slotval5)
  virtualReturn

proc QAbstractListModelsupportedDropActions*(self: gen_qabstractitemmodel_types.QAbstractListModel): cint =
  cint(fcQAbstractListModel_virtualbase_supportedDropActions(self.h))

proc cQAbstractListModel_vtable_callback_supportedDropActions(self: pointer): cint {.cdecl.} =
  let vtbl = cast[ptr QAbstractListModelVTable](fcQAbstractListModel_vdata(self))
  let self = QAbstractListModel(h: self)
  var virtualReturn = vtbl[].supportedDropActions(self)
  cint(virtualReturn)

proc QAbstractListModelsupportedDragActions*(self: gen_qabstractitemmodel_types.QAbstractListModel): cint =
  cint(fcQAbstractListModel_virtualbase_supportedDragActions(self.h))

proc cQAbstractListModel_vtable_callback_supportedDragActions(self: pointer): cint {.cdecl.} =
  let vtbl = cast[ptr QAbstractListModelVTable](fcQAbstractListModel_vdata(self))
  let self = QAbstractListModel(h: self)
  var virtualReturn = vtbl[].supportedDragActions(self)
  cint(virtualReturn)

proc QAbstractListModelinsertRows*(self: gen_qabstractitemmodel_types.QAbstractListModel, row: cint, count: cint, parent: gen_qabstractitemmodel_types.QModelIndex): bool =
  fcQAbstractListModel_virtualbase_insertRows(self.h, row, count, parent.h)

proc cQAbstractListModel_vtable_callback_insertRows(self: pointer, row: cint, count: cint, parent: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QAbstractListModelVTable](fcQAbstractListModel_vdata(self))
  let self = QAbstractListModel(h: self)
  let slotval1 = row
  let slotval2 = count
  let slotval3 = gen_qabstractitemmodel_types.QModelIndex(h: parent, owned: false)
  var virtualReturn = vtbl[].insertRows(self, slotval1, slotval2, slotval3)
  virtualReturn

proc QAbstractListModelinsertColumns*(self: gen_qabstractitemmodel_types.QAbstractListModel, column: cint, count: cint, parent: gen_qabstractitemmodel_types.QModelIndex): bool =
  fcQAbstractListModel_virtualbase_insertColumns(self.h, column, count, parent.h)

proc cQAbstractListModel_vtable_callback_insertColumns(self: pointer, column: cint, count: cint, parent: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QAbstractListModelVTable](fcQAbstractListModel_vdata(self))
  let self = QAbstractListModel(h: self)
  let slotval1 = column
  let slotval2 = count
  let slotval3 = gen_qabstractitemmodel_types.QModelIndex(h: parent, owned: false)
  var virtualReturn = vtbl[].insertColumns(self, slotval1, slotval2, slotval3)
  virtualReturn

proc QAbstractListModelremoveRows*(self: gen_qabstractitemmodel_types.QAbstractListModel, row: cint, count: cint, parent: gen_qabstractitemmodel_types.QModelIndex): bool =
  fcQAbstractListModel_virtualbase_removeRows(self.h, row, count, parent.h)

proc cQAbstractListModel_vtable_callback_removeRows(self: pointer, row: cint, count: cint, parent: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QAbstractListModelVTable](fcQAbstractListModel_vdata(self))
  let self = QAbstractListModel(h: self)
  let slotval1 = row
  let slotval2 = count
  let slotval3 = gen_qabstractitemmodel_types.QModelIndex(h: parent, owned: false)
  var virtualReturn = vtbl[].removeRows(self, slotval1, slotval2, slotval3)
  virtualReturn

proc QAbstractListModelremoveColumns*(self: gen_qabstractitemmodel_types.QAbstractListModel, column: cint, count: cint, parent: gen_qabstractitemmodel_types.QModelIndex): bool =
  fcQAbstractListModel_virtualbase_removeColumns(self.h, column, count, parent.h)

proc cQAbstractListModel_vtable_callback_removeColumns(self: pointer, column: cint, count: cint, parent: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QAbstractListModelVTable](fcQAbstractListModel_vdata(self))
  let self = QAbstractListModel(h: self)
  let slotval1 = column
  let slotval2 = count
  let slotval3 = gen_qabstractitemmodel_types.QModelIndex(h: parent, owned: false)
  var virtualReturn = vtbl[].removeColumns(self, slotval1, slotval2, slotval3)
  virtualReturn

proc QAbstractListModelmoveRows*(self: gen_qabstractitemmodel_types.QAbstractListModel, sourceParent: gen_qabstractitemmodel_types.QModelIndex, sourceRow: cint, count: cint, destinationParent: gen_qabstractitemmodel_types.QModelIndex, destinationChild: cint): bool =
  fcQAbstractListModel_virtualbase_moveRows(self.h, sourceParent.h, sourceRow, count, destinationParent.h, destinationChild)

proc cQAbstractListModel_vtable_callback_moveRows(self: pointer, sourceParent: pointer, sourceRow: cint, count: cint, destinationParent: pointer, destinationChild: cint): bool {.cdecl.} =
  let vtbl = cast[ptr QAbstractListModelVTable](fcQAbstractListModel_vdata(self))
  let self = QAbstractListModel(h: self)
  let slotval1 = gen_qabstractitemmodel_types.QModelIndex(h: sourceParent, owned: false)
  let slotval2 = sourceRow
  let slotval3 = count
  let slotval4 = gen_qabstractitemmodel_types.QModelIndex(h: destinationParent, owned: false)
  let slotval5 = destinationChild
  var virtualReturn = vtbl[].moveRows(self, slotval1, slotval2, slotval3, slotval4, slotval5)
  virtualReturn

proc QAbstractListModelmoveColumns*(self: gen_qabstractitemmodel_types.QAbstractListModel, sourceParent: gen_qabstractitemmodel_types.QModelIndex, sourceColumn: cint, count: cint, destinationParent: gen_qabstractitemmodel_types.QModelIndex, destinationChild: cint): bool =
  fcQAbstractListModel_virtualbase_moveColumns(self.h, sourceParent.h, sourceColumn, count, destinationParent.h, destinationChild)

proc cQAbstractListModel_vtable_callback_moveColumns(self: pointer, sourceParent: pointer, sourceColumn: cint, count: cint, destinationParent: pointer, destinationChild: cint): bool {.cdecl.} =
  let vtbl = cast[ptr QAbstractListModelVTable](fcQAbstractListModel_vdata(self))
  let self = QAbstractListModel(h: self)
  let slotval1 = gen_qabstractitemmodel_types.QModelIndex(h: sourceParent, owned: false)
  let slotval2 = sourceColumn
  let slotval3 = count
  let slotval4 = gen_qabstractitemmodel_types.QModelIndex(h: destinationParent, owned: false)
  let slotval5 = destinationChild
  var virtualReturn = vtbl[].moveColumns(self, slotval1, slotval2, slotval3, slotval4, slotval5)
  virtualReturn

proc QAbstractListModelfetchMore*(self: gen_qabstractitemmodel_types.QAbstractListModel, parent: gen_qabstractitemmodel_types.QModelIndex): void =
  fcQAbstractListModel_virtualbase_fetchMore(self.h, parent.h)

proc cQAbstractListModel_vtable_callback_fetchMore(self: pointer, parent: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QAbstractListModelVTable](fcQAbstractListModel_vdata(self))
  let self = QAbstractListModel(h: self)
  let slotval1 = gen_qabstractitemmodel_types.QModelIndex(h: parent, owned: false)
  vtbl[].fetchMore(self, slotval1)

proc QAbstractListModelcanFetchMore*(self: gen_qabstractitemmodel_types.QAbstractListModel, parent: gen_qabstractitemmodel_types.QModelIndex): bool =
  fcQAbstractListModel_virtualbase_canFetchMore(self.h, parent.h)

proc cQAbstractListModel_vtable_callback_canFetchMore(self: pointer, parent: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QAbstractListModelVTable](fcQAbstractListModel_vdata(self))
  let self = QAbstractListModel(h: self)
  let slotval1 = gen_qabstractitemmodel_types.QModelIndex(h: parent, owned: false)
  var virtualReturn = vtbl[].canFetchMore(self, slotval1)
  virtualReturn

proc QAbstractListModelsort*(self: gen_qabstractitemmodel_types.QAbstractListModel, column: cint, order: cint): void =
  fcQAbstractListModel_virtualbase_sort(self.h, column, cint(order))

proc cQAbstractListModel_vtable_callback_sort(self: pointer, column: cint, order: cint): void {.cdecl.} =
  let vtbl = cast[ptr QAbstractListModelVTable](fcQAbstractListModel_vdata(self))
  let self = QAbstractListModel(h: self)
  let slotval1 = column
  let slotval2 = cint(order)
  vtbl[].sort(self, slotval1, slotval2)

proc QAbstractListModelbuddy*(self: gen_qabstractitemmodel_types.QAbstractListModel, index: gen_qabstractitemmodel_types.QModelIndex): gen_qabstractitemmodel_types.QModelIndex =
  gen_qabstractitemmodel_types.QModelIndex(h: fcQAbstractListModel_virtualbase_buddy(self.h, index.h), owned: true)

proc cQAbstractListModel_vtable_callback_buddy(self: pointer, index: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QAbstractListModelVTable](fcQAbstractListModel_vdata(self))
  let self = QAbstractListModel(h: self)
  let slotval1 = gen_qabstractitemmodel_types.QModelIndex(h: index, owned: false)
  var virtualReturn = vtbl[].buddy(self, slotval1)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc QAbstractListModelmatch*(self: gen_qabstractitemmodel_types.QAbstractListModel, start: gen_qabstractitemmodel_types.QModelIndex, role: cint, value: gen_qvariant_types.QVariant, hits: cint, flags: cint): seq[gen_qabstractitemmodel_types.QModelIndex] =
  var v_ma = fcQAbstractListModel_virtualbase_match(self.h, start.h, role, value.h, hits, cint(flags))
  var vx_ret = newSeq[gen_qabstractitemmodel_types.QModelIndex](int(v_ma.len))
  let v_outCast = cast[ptr UncheckedArray[pointer]](v_ma.data)
  for i in 0 ..< v_ma.len:
    vx_ret[i] = gen_qabstractitemmodel_types.QModelIndex(h: v_outCast[i], owned: true)
  c_free(v_ma.data)
  vx_ret

proc cQAbstractListModel_vtable_callback_match(self: pointer, start: pointer, role: cint, value: pointer, hits: cint, flags: cint): struct_miqt_array {.cdecl.} =
  let vtbl = cast[ptr QAbstractListModelVTable](fcQAbstractListModel_vdata(self))
  let self = QAbstractListModel(h: self)
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

proc QAbstractListModelspan*(self: gen_qabstractitemmodel_types.QAbstractListModel, index: gen_qabstractitemmodel_types.QModelIndex): gen_qsize_types.QSize =
  gen_qsize_types.QSize(h: fcQAbstractListModel_virtualbase_span(self.h, index.h), owned: true)

proc cQAbstractListModel_vtable_callback_span(self: pointer, index: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QAbstractListModelVTable](fcQAbstractListModel_vdata(self))
  let self = QAbstractListModel(h: self)
  let slotval1 = gen_qabstractitemmodel_types.QModelIndex(h: index, owned: false)
  var virtualReturn = vtbl[].span(self, slotval1)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc QAbstractListModelroleNames*(self: gen_qabstractitemmodel_types.QAbstractListModel): Table[cint,seq[byte]] =
  var v_mm = fcQAbstractListModel_virtualbase_roleNames(self.h)
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

proc cQAbstractListModel_vtable_callback_roleNames(self: pointer): struct_miqt_map {.cdecl.} =
  let vtbl = cast[ptr QAbstractListModelVTable](fcQAbstractListModel_vdata(self))
  let self = QAbstractListModel(h: self)
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

proc QAbstractListModelsubmit*(self: gen_qabstractitemmodel_types.QAbstractListModel): bool =
  fcQAbstractListModel_virtualbase_submit(self.h)

proc cQAbstractListModel_vtable_callback_submit(self: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QAbstractListModelVTable](fcQAbstractListModel_vdata(self))
  let self = QAbstractListModel(h: self)
  var virtualReturn = vtbl[].submit(self)
  virtualReturn

proc QAbstractListModelrevert*(self: gen_qabstractitemmodel_types.QAbstractListModel): void =
  fcQAbstractListModel_virtualbase_revert(self.h)

proc cQAbstractListModel_vtable_callback_revert(self: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QAbstractListModelVTable](fcQAbstractListModel_vdata(self))
  let self = QAbstractListModel(h: self)
  vtbl[].revert(self)

proc QAbstractListModelevent*(self: gen_qabstractitemmodel_types.QAbstractListModel, event: gen_qcoreevent_types.QEvent): bool =
  fcQAbstractListModel_virtualbase_event(self.h, event.h)

proc cQAbstractListModel_vtable_callback_event(self: pointer, event: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QAbstractListModelVTable](fcQAbstractListModel_vdata(self))
  let self = QAbstractListModel(h: self)
  let slotval1 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  var virtualReturn = vtbl[].event(self, slotval1)
  virtualReturn

proc QAbstractListModeleventFilter*(self: gen_qabstractitemmodel_types.QAbstractListModel, watched: gen_qobject_types.QObject, event: gen_qcoreevent_types.QEvent): bool =
  fcQAbstractListModel_virtualbase_eventFilter(self.h, watched.h, event.h)

proc cQAbstractListModel_vtable_callback_eventFilter(self: pointer, watched: pointer, event: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QAbstractListModelVTable](fcQAbstractListModel_vdata(self))
  let self = QAbstractListModel(h: self)
  let slotval1 = gen_qobject_types.QObject(h: watched, owned: false)
  let slotval2 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  var virtualReturn = vtbl[].eventFilter(self, slotval1, slotval2)
  virtualReturn

proc QAbstractListModeltimerEvent*(self: gen_qabstractitemmodel_types.QAbstractListModel, event: gen_qcoreevent_types.QTimerEvent): void =
  fcQAbstractListModel_virtualbase_timerEvent(self.h, event.h)

proc cQAbstractListModel_vtable_callback_timerEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QAbstractListModelVTable](fcQAbstractListModel_vdata(self))
  let self = QAbstractListModel(h: self)
  let slotval1 = gen_qcoreevent_types.QTimerEvent(h: event, owned: false)
  vtbl[].timerEvent(self, slotval1)

proc QAbstractListModelchildEvent*(self: gen_qabstractitemmodel_types.QAbstractListModel, event: gen_qcoreevent_types.QChildEvent): void =
  fcQAbstractListModel_virtualbase_childEvent(self.h, event.h)

proc cQAbstractListModel_vtable_callback_childEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QAbstractListModelVTable](fcQAbstractListModel_vdata(self))
  let self = QAbstractListModel(h: self)
  let slotval1 = gen_qcoreevent_types.QChildEvent(h: event, owned: false)
  vtbl[].childEvent(self, slotval1)

proc QAbstractListModelcustomEvent*(self: gen_qabstractitemmodel_types.QAbstractListModel, event: gen_qcoreevent_types.QEvent): void =
  fcQAbstractListModel_virtualbase_customEvent(self.h, event.h)

proc cQAbstractListModel_vtable_callback_customEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QAbstractListModelVTable](fcQAbstractListModel_vdata(self))
  let self = QAbstractListModel(h: self)
  let slotval1 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  vtbl[].customEvent(self, slotval1)

proc QAbstractListModelconnectNotify*(self: gen_qabstractitemmodel_types.QAbstractListModel, signal: gen_qmetaobject_types.QMetaMethod): void =
  fcQAbstractListModel_virtualbase_connectNotify(self.h, signal.h)

proc cQAbstractListModel_vtable_callback_connectNotify(self: pointer, signal: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QAbstractListModelVTable](fcQAbstractListModel_vdata(self))
  let self = QAbstractListModel(h: self)
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal, owned: false)
  vtbl[].connectNotify(self, slotval1)

proc QAbstractListModeldisconnectNotify*(self: gen_qabstractitemmodel_types.QAbstractListModel, signal: gen_qmetaobject_types.QMetaMethod): void =
  fcQAbstractListModel_virtualbase_disconnectNotify(self.h, signal.h)

proc cQAbstractListModel_vtable_callback_disconnectNotify(self: pointer, signal: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QAbstractListModelVTable](fcQAbstractListModel_vdata(self))
  let self = QAbstractListModel(h: self)
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal, owned: false)
  vtbl[].disconnectNotify(self, slotval1)

type VirtualQAbstractListModel* {.inheritable.} = ref object of QAbstractListModel
  vtbl*: cQAbstractListModelVTable
method metaObject*(self: VirtualQAbstractListModel): gen_qobjectdefs_types.QMetaObject {.base.} =
  QAbstractListModelmetaObject(self[])
proc cQAbstractListModel_method_callback_metaObject(self: pointer): pointer {.cdecl.} =
  let inst = cast[VirtualQAbstractListModel](fcQAbstractListModel_vdata(self))
  var virtualReturn = inst.metaObject()
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

method metacast*(self: VirtualQAbstractListModel, param1: cstring): pointer {.base.} =
  QAbstractListModelmetacast(self[], param1)
proc cQAbstractListModel_method_callback_metacast(self: pointer, param1: cstring): pointer {.cdecl.} =
  let inst = cast[VirtualQAbstractListModel](fcQAbstractListModel_vdata(self))
  let slotval1 = (param1)
  var virtualReturn = inst.metacast(slotval1)
  virtualReturn

method metacall*(self: VirtualQAbstractListModel, param1: cint, param2: cint, param3: pointer): cint {.base.} =
  QAbstractListModelmetacall(self[], param1, param2, param3)
proc cQAbstractListModel_method_callback_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.cdecl.} =
  let inst = cast[VirtualQAbstractListModel](fcQAbstractListModel_vdata(self))
  let slotval1 = cint(param1)
  let slotval2 = param2
  let slotval3 = param3
  var virtualReturn = inst.metacall(slotval1, slotval2, slotval3)
  virtualReturn

method index*(self: VirtualQAbstractListModel, row: cint, column: cint, parent: gen_qabstractitemmodel_types.QModelIndex): gen_qabstractitemmodel_types.QModelIndex {.base.} =
  QAbstractListModelindex(self[], row, column, parent)
proc cQAbstractListModel_method_callback_index(self: pointer, row: cint, column: cint, parent: pointer): pointer {.cdecl.} =
  let inst = cast[VirtualQAbstractListModel](fcQAbstractListModel_vdata(self))
  let slotval1 = row
  let slotval2 = column
  let slotval3 = gen_qabstractitemmodel_types.QModelIndex(h: parent, owned: false)
  var virtualReturn = inst.index(slotval1, slotval2, slotval3)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

method sibling*(self: VirtualQAbstractListModel, row: cint, column: cint, idx: gen_qabstractitemmodel_types.QModelIndex): gen_qabstractitemmodel_types.QModelIndex {.base.} =
  QAbstractListModelsibling(self[], row, column, idx)
proc cQAbstractListModel_method_callback_sibling(self: pointer, row: cint, column: cint, idx: pointer): pointer {.cdecl.} =
  let inst = cast[VirtualQAbstractListModel](fcQAbstractListModel_vdata(self))
  let slotval1 = row
  let slotval2 = column
  let slotval3 = gen_qabstractitemmodel_types.QModelIndex(h: idx, owned: false)
  var virtualReturn = inst.sibling(slotval1, slotval2, slotval3)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

method dropMimeData*(self: VirtualQAbstractListModel, data: gen_qmimedata_types.QMimeData, action: cint, row: cint, column: cint, parent: gen_qabstractitemmodel_types.QModelIndex): bool {.base.} =
  QAbstractListModeldropMimeData(self[], data, action, row, column, parent)
proc cQAbstractListModel_method_callback_dropMimeData(self: pointer, data: pointer, action: cint, row: cint, column: cint, parent: pointer): bool {.cdecl.} =
  let inst = cast[VirtualQAbstractListModel](fcQAbstractListModel_vdata(self))
  let slotval1 = gen_qmimedata_types.QMimeData(h: data, owned: false)
  let slotval2 = cint(action)
  let slotval3 = row
  let slotval4 = column
  let slotval5 = gen_qabstractitemmodel_types.QModelIndex(h: parent, owned: false)
  var virtualReturn = inst.dropMimeData(slotval1, slotval2, slotval3, slotval4, slotval5)
  virtualReturn

method flags*(self: VirtualQAbstractListModel, index: gen_qabstractitemmodel_types.QModelIndex): cint {.base.} =
  QAbstractListModelflags(self[], index)
proc cQAbstractListModel_method_callback_flags(self: pointer, index: pointer): cint {.cdecl.} =
  let inst = cast[VirtualQAbstractListModel](fcQAbstractListModel_vdata(self))
  let slotval1 = gen_qabstractitemmodel_types.QModelIndex(h: index, owned: false)
  var virtualReturn = inst.flags(slotval1)
  cint(virtualReturn)

method rowCount*(self: VirtualQAbstractListModel, parent: gen_qabstractitemmodel_types.QModelIndex): cint {.base.} =
  raiseAssert("missing implementation of QAbstractListModel_virtualbase_rowCount")
proc cQAbstractListModel_method_callback_rowCount(self: pointer, parent: pointer): cint {.cdecl.} =
  let inst = cast[VirtualQAbstractListModel](fcQAbstractListModel_vdata(self))
  let slotval1 = gen_qabstractitemmodel_types.QModelIndex(h: parent, owned: false)
  var virtualReturn = inst.rowCount(slotval1)
  virtualReturn

method data*(self: VirtualQAbstractListModel, index: gen_qabstractitemmodel_types.QModelIndex, role: cint): gen_qvariant_types.QVariant {.base.} =
  raiseAssert("missing implementation of QAbstractListModel_virtualbase_data")
proc cQAbstractListModel_method_callback_data(self: pointer, index: pointer, role: cint): pointer {.cdecl.} =
  let inst = cast[VirtualQAbstractListModel](fcQAbstractListModel_vdata(self))
  let slotval1 = gen_qabstractitemmodel_types.QModelIndex(h: index, owned: false)
  let slotval2 = role
  var virtualReturn = inst.data(slotval1, slotval2)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

method setData*(self: VirtualQAbstractListModel, index: gen_qabstractitemmodel_types.QModelIndex, value: gen_qvariant_types.QVariant, role: cint): bool {.base.} =
  QAbstractListModelsetData(self[], index, value, role)
proc cQAbstractListModel_method_callback_setData(self: pointer, index: pointer, value: pointer, role: cint): bool {.cdecl.} =
  let inst = cast[VirtualQAbstractListModel](fcQAbstractListModel_vdata(self))
  let slotval1 = gen_qabstractitemmodel_types.QModelIndex(h: index, owned: false)
  let slotval2 = gen_qvariant_types.QVariant(h: value, owned: false)
  let slotval3 = role
  var virtualReturn = inst.setData(slotval1, slotval2, slotval3)
  virtualReturn

method headerData*(self: VirtualQAbstractListModel, section: cint, orientation: cint, role: cint): gen_qvariant_types.QVariant {.base.} =
  QAbstractListModelheaderData(self[], section, orientation, role)
proc cQAbstractListModel_method_callback_headerData(self: pointer, section: cint, orientation: cint, role: cint): pointer {.cdecl.} =
  let inst = cast[VirtualQAbstractListModel](fcQAbstractListModel_vdata(self))
  let slotval1 = section
  let slotval2 = cint(orientation)
  let slotval3 = role
  var virtualReturn = inst.headerData(slotval1, slotval2, slotval3)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

method setHeaderData*(self: VirtualQAbstractListModel, section: cint, orientation: cint, value: gen_qvariant_types.QVariant, role: cint): bool {.base.} =
  QAbstractListModelsetHeaderData(self[], section, orientation, value, role)
proc cQAbstractListModel_method_callback_setHeaderData(self: pointer, section: cint, orientation: cint, value: pointer, role: cint): bool {.cdecl.} =
  let inst = cast[VirtualQAbstractListModel](fcQAbstractListModel_vdata(self))
  let slotval1 = section
  let slotval2 = cint(orientation)
  let slotval3 = gen_qvariant_types.QVariant(h: value, owned: false)
  let slotval4 = role
  var virtualReturn = inst.setHeaderData(slotval1, slotval2, slotval3, slotval4)
  virtualReturn

method itemData*(self: VirtualQAbstractListModel, index: gen_qabstractitemmodel_types.QModelIndex): Table[cint,gen_qvariant_types.QVariant] {.base.} =
  QAbstractListModelitemData(self[], index)
proc cQAbstractListModel_method_callback_itemData(self: pointer, index: pointer): struct_miqt_map {.cdecl.} =
  let inst = cast[VirtualQAbstractListModel](fcQAbstractListModel_vdata(self))
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

  struct_miqt_map(len: csize_t(len(virtualReturn)),keys: if len(virtualReturn) == 0: nil else: addr(virtualReturn_Keys_CArray[0]), values: if len(virtualReturn) == 0: nil else: addr(virtualReturn_Values_CArray[0]),)

method setItemData*(self: VirtualQAbstractListModel, index: gen_qabstractitemmodel_types.QModelIndex, roles: Table[cint,gen_qvariant_types.QVariant]): bool {.base.} =
  QAbstractListModelsetItemData(self[], index, roles)
proc cQAbstractListModel_method_callback_setItemData(self: pointer, index: pointer, roles: struct_miqt_map): bool {.cdecl.} =
  let inst = cast[VirtualQAbstractListModel](fcQAbstractListModel_vdata(self))
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

method mimeTypes*(self: VirtualQAbstractListModel): seq[string] {.base.} =
  QAbstractListModelmimeTypes(self[])
proc cQAbstractListModel_method_callback_mimeTypes(self: pointer): struct_miqt_array {.cdecl.} =
  let inst = cast[VirtualQAbstractListModel](fcQAbstractListModel_vdata(self))
  var virtualReturn = inst.mimeTypes()
  var virtualReturn_CArray = cast[ptr UncheckedArray[struct_miqt_string]](if len(virtualReturn) > 0: c_malloc(c_sizet(sizeof(struct_miqt_string) * len(virtualReturn))) else: nil)
  for i in 0..<len(virtualReturn):
    var virtualReturn_i_copy = cast[cstring](if len(virtualReturn[i]) > 0: c_malloc(csize_t(len(virtualReturn[i]))) else: nil)
    if len(virtualReturn[i]) > 0: copyMem(cast[pointer](virtualReturn_i_copy), addr virtualReturn[i][0], csize_t(len(virtualReturn[i])))
    virtualReturn_CArray[i] = struct_miqt_string(data: virtualReturn_i_copy, len: csize_t(len(virtualReturn[i])))

  struct_miqt_array(len: csize_t(len(virtualReturn)), data: if len(virtualReturn) == 0: nil else: addr(virtualReturn_CArray[0]))

method mimeData*(self: VirtualQAbstractListModel, indexes: seq[gen_qabstractitemmodel_types.QModelIndex]): gen_qmimedata_types.QMimeData {.base.} =
  QAbstractListModelmimeData(self[], indexes)
proc cQAbstractListModel_method_callback_mimeData(self: pointer, indexes: struct_miqt_array): pointer {.cdecl.} =
  let inst = cast[VirtualQAbstractListModel](fcQAbstractListModel_vdata(self))
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

method canDropMimeData*(self: VirtualQAbstractListModel, data: gen_qmimedata_types.QMimeData, action: cint, row: cint, column: cint, parent: gen_qabstractitemmodel_types.QModelIndex): bool {.base.} =
  QAbstractListModelcanDropMimeData(self[], data, action, row, column, parent)
proc cQAbstractListModel_method_callback_canDropMimeData(self: pointer, data: pointer, action: cint, row: cint, column: cint, parent: pointer): bool {.cdecl.} =
  let inst = cast[VirtualQAbstractListModel](fcQAbstractListModel_vdata(self))
  let slotval1 = gen_qmimedata_types.QMimeData(h: data, owned: false)
  let slotval2 = cint(action)
  let slotval3 = row
  let slotval4 = column
  let slotval5 = gen_qabstractitemmodel_types.QModelIndex(h: parent, owned: false)
  var virtualReturn = inst.canDropMimeData(slotval1, slotval2, slotval3, slotval4, slotval5)
  virtualReturn

method supportedDropActions*(self: VirtualQAbstractListModel): cint {.base.} =
  QAbstractListModelsupportedDropActions(self[])
proc cQAbstractListModel_method_callback_supportedDropActions(self: pointer): cint {.cdecl.} =
  let inst = cast[VirtualQAbstractListModel](fcQAbstractListModel_vdata(self))
  var virtualReturn = inst.supportedDropActions()
  cint(virtualReturn)

method supportedDragActions*(self: VirtualQAbstractListModel): cint {.base.} =
  QAbstractListModelsupportedDragActions(self[])
proc cQAbstractListModel_method_callback_supportedDragActions(self: pointer): cint {.cdecl.} =
  let inst = cast[VirtualQAbstractListModel](fcQAbstractListModel_vdata(self))
  var virtualReturn = inst.supportedDragActions()
  cint(virtualReturn)

method insertRows*(self: VirtualQAbstractListModel, row: cint, count: cint, parent: gen_qabstractitemmodel_types.QModelIndex): bool {.base.} =
  QAbstractListModelinsertRows(self[], row, count, parent)
proc cQAbstractListModel_method_callback_insertRows(self: pointer, row: cint, count: cint, parent: pointer): bool {.cdecl.} =
  let inst = cast[VirtualQAbstractListModel](fcQAbstractListModel_vdata(self))
  let slotval1 = row
  let slotval2 = count
  let slotval3 = gen_qabstractitemmodel_types.QModelIndex(h: parent, owned: false)
  var virtualReturn = inst.insertRows(slotval1, slotval2, slotval3)
  virtualReturn

method insertColumns*(self: VirtualQAbstractListModel, column: cint, count: cint, parent: gen_qabstractitemmodel_types.QModelIndex): bool {.base.} =
  QAbstractListModelinsertColumns(self[], column, count, parent)
proc cQAbstractListModel_method_callback_insertColumns(self: pointer, column: cint, count: cint, parent: pointer): bool {.cdecl.} =
  let inst = cast[VirtualQAbstractListModel](fcQAbstractListModel_vdata(self))
  let slotval1 = column
  let slotval2 = count
  let slotval3 = gen_qabstractitemmodel_types.QModelIndex(h: parent, owned: false)
  var virtualReturn = inst.insertColumns(slotval1, slotval2, slotval3)
  virtualReturn

method removeRows*(self: VirtualQAbstractListModel, row: cint, count: cint, parent: gen_qabstractitemmodel_types.QModelIndex): bool {.base.} =
  QAbstractListModelremoveRows(self[], row, count, parent)
proc cQAbstractListModel_method_callback_removeRows(self: pointer, row: cint, count: cint, parent: pointer): bool {.cdecl.} =
  let inst = cast[VirtualQAbstractListModel](fcQAbstractListModel_vdata(self))
  let slotval1 = row
  let slotval2 = count
  let slotval3 = gen_qabstractitemmodel_types.QModelIndex(h: parent, owned: false)
  var virtualReturn = inst.removeRows(slotval1, slotval2, slotval3)
  virtualReturn

method removeColumns*(self: VirtualQAbstractListModel, column: cint, count: cint, parent: gen_qabstractitemmodel_types.QModelIndex): bool {.base.} =
  QAbstractListModelremoveColumns(self[], column, count, parent)
proc cQAbstractListModel_method_callback_removeColumns(self: pointer, column: cint, count: cint, parent: pointer): bool {.cdecl.} =
  let inst = cast[VirtualQAbstractListModel](fcQAbstractListModel_vdata(self))
  let slotval1 = column
  let slotval2 = count
  let slotval3 = gen_qabstractitemmodel_types.QModelIndex(h: parent, owned: false)
  var virtualReturn = inst.removeColumns(slotval1, slotval2, slotval3)
  virtualReturn

method moveRows*(self: VirtualQAbstractListModel, sourceParent: gen_qabstractitemmodel_types.QModelIndex, sourceRow: cint, count: cint, destinationParent: gen_qabstractitemmodel_types.QModelIndex, destinationChild: cint): bool {.base.} =
  QAbstractListModelmoveRows(self[], sourceParent, sourceRow, count, destinationParent, destinationChild)
proc cQAbstractListModel_method_callback_moveRows(self: pointer, sourceParent: pointer, sourceRow: cint, count: cint, destinationParent: pointer, destinationChild: cint): bool {.cdecl.} =
  let inst = cast[VirtualQAbstractListModel](fcQAbstractListModel_vdata(self))
  let slotval1 = gen_qabstractitemmodel_types.QModelIndex(h: sourceParent, owned: false)
  let slotval2 = sourceRow
  let slotval3 = count
  let slotval4 = gen_qabstractitemmodel_types.QModelIndex(h: destinationParent, owned: false)
  let slotval5 = destinationChild
  var virtualReturn = inst.moveRows(slotval1, slotval2, slotval3, slotval4, slotval5)
  virtualReturn

method moveColumns*(self: VirtualQAbstractListModel, sourceParent: gen_qabstractitemmodel_types.QModelIndex, sourceColumn: cint, count: cint, destinationParent: gen_qabstractitemmodel_types.QModelIndex, destinationChild: cint): bool {.base.} =
  QAbstractListModelmoveColumns(self[], sourceParent, sourceColumn, count, destinationParent, destinationChild)
proc cQAbstractListModel_method_callback_moveColumns(self: pointer, sourceParent: pointer, sourceColumn: cint, count: cint, destinationParent: pointer, destinationChild: cint): bool {.cdecl.} =
  let inst = cast[VirtualQAbstractListModel](fcQAbstractListModel_vdata(self))
  let slotval1 = gen_qabstractitemmodel_types.QModelIndex(h: sourceParent, owned: false)
  let slotval2 = sourceColumn
  let slotval3 = count
  let slotval4 = gen_qabstractitemmodel_types.QModelIndex(h: destinationParent, owned: false)
  let slotval5 = destinationChild
  var virtualReturn = inst.moveColumns(slotval1, slotval2, slotval3, slotval4, slotval5)
  virtualReturn

method fetchMore*(self: VirtualQAbstractListModel, parent: gen_qabstractitemmodel_types.QModelIndex): void {.base.} =
  QAbstractListModelfetchMore(self[], parent)
proc cQAbstractListModel_method_callback_fetchMore(self: pointer, parent: pointer): void {.cdecl.} =
  let inst = cast[VirtualQAbstractListModel](fcQAbstractListModel_vdata(self))
  let slotval1 = gen_qabstractitemmodel_types.QModelIndex(h: parent, owned: false)
  inst.fetchMore(slotval1)

method canFetchMore*(self: VirtualQAbstractListModel, parent: gen_qabstractitemmodel_types.QModelIndex): bool {.base.} =
  QAbstractListModelcanFetchMore(self[], parent)
proc cQAbstractListModel_method_callback_canFetchMore(self: pointer, parent: pointer): bool {.cdecl.} =
  let inst = cast[VirtualQAbstractListModel](fcQAbstractListModel_vdata(self))
  let slotval1 = gen_qabstractitemmodel_types.QModelIndex(h: parent, owned: false)
  var virtualReturn = inst.canFetchMore(slotval1)
  virtualReturn

method sort*(self: VirtualQAbstractListModel, column: cint, order: cint): void {.base.} =
  QAbstractListModelsort(self[], column, order)
proc cQAbstractListModel_method_callback_sort(self: pointer, column: cint, order: cint): void {.cdecl.} =
  let inst = cast[VirtualQAbstractListModel](fcQAbstractListModel_vdata(self))
  let slotval1 = column
  let slotval2 = cint(order)
  inst.sort(slotval1, slotval2)

method buddy*(self: VirtualQAbstractListModel, index: gen_qabstractitemmodel_types.QModelIndex): gen_qabstractitemmodel_types.QModelIndex {.base.} =
  QAbstractListModelbuddy(self[], index)
proc cQAbstractListModel_method_callback_buddy(self: pointer, index: pointer): pointer {.cdecl.} =
  let inst = cast[VirtualQAbstractListModel](fcQAbstractListModel_vdata(self))
  let slotval1 = gen_qabstractitemmodel_types.QModelIndex(h: index, owned: false)
  var virtualReturn = inst.buddy(slotval1)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

method match*(self: VirtualQAbstractListModel, start: gen_qabstractitemmodel_types.QModelIndex, role: cint, value: gen_qvariant_types.QVariant, hits: cint, flags: cint): seq[gen_qabstractitemmodel_types.QModelIndex] {.base.} =
  QAbstractListModelmatch(self[], start, role, value, hits, flags)
proc cQAbstractListModel_method_callback_match(self: pointer, start: pointer, role: cint, value: pointer, hits: cint, flags: cint): struct_miqt_array {.cdecl.} =
  let inst = cast[VirtualQAbstractListModel](fcQAbstractListModel_vdata(self))
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

  struct_miqt_array(len: csize_t(len(virtualReturn)), data: if len(virtualReturn) == 0: nil else: addr(virtualReturn_CArray[0]))

method span*(self: VirtualQAbstractListModel, index: gen_qabstractitemmodel_types.QModelIndex): gen_qsize_types.QSize {.base.} =
  QAbstractListModelspan(self[], index)
proc cQAbstractListModel_method_callback_span(self: pointer, index: pointer): pointer {.cdecl.} =
  let inst = cast[VirtualQAbstractListModel](fcQAbstractListModel_vdata(self))
  let slotval1 = gen_qabstractitemmodel_types.QModelIndex(h: index, owned: false)
  var virtualReturn = inst.span(slotval1)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

method roleNames*(self: VirtualQAbstractListModel): Table[cint,seq[byte]] {.base.} =
  QAbstractListModelroleNames(self[])
proc cQAbstractListModel_method_callback_roleNames(self: pointer): struct_miqt_map {.cdecl.} =
  let inst = cast[VirtualQAbstractListModel](fcQAbstractListModel_vdata(self))
  var virtualReturn = inst.roleNames()
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

method submit*(self: VirtualQAbstractListModel): bool {.base.} =
  QAbstractListModelsubmit(self[])
proc cQAbstractListModel_method_callback_submit(self: pointer): bool {.cdecl.} =
  let inst = cast[VirtualQAbstractListModel](fcQAbstractListModel_vdata(self))
  var virtualReturn = inst.submit()
  virtualReturn

method revert*(self: VirtualQAbstractListModel): void {.base.} =
  QAbstractListModelrevert(self[])
proc cQAbstractListModel_method_callback_revert(self: pointer): void {.cdecl.} =
  let inst = cast[VirtualQAbstractListModel](fcQAbstractListModel_vdata(self))
  inst.revert()

method event*(self: VirtualQAbstractListModel, event: gen_qcoreevent_types.QEvent): bool {.base.} =
  QAbstractListModelevent(self[], event)
proc cQAbstractListModel_method_callback_event(self: pointer, event: pointer): bool {.cdecl.} =
  let inst = cast[VirtualQAbstractListModel](fcQAbstractListModel_vdata(self))
  let slotval1 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  var virtualReturn = inst.event(slotval1)
  virtualReturn

method eventFilter*(self: VirtualQAbstractListModel, watched: gen_qobject_types.QObject, event: gen_qcoreevent_types.QEvent): bool {.base.} =
  QAbstractListModeleventFilter(self[], watched, event)
proc cQAbstractListModel_method_callback_eventFilter(self: pointer, watched: pointer, event: pointer): bool {.cdecl.} =
  let inst = cast[VirtualQAbstractListModel](fcQAbstractListModel_vdata(self))
  let slotval1 = gen_qobject_types.QObject(h: watched, owned: false)
  let slotval2 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  var virtualReturn = inst.eventFilter(slotval1, slotval2)
  virtualReturn

method timerEvent*(self: VirtualQAbstractListModel, event: gen_qcoreevent_types.QTimerEvent): void {.base.} =
  QAbstractListModeltimerEvent(self[], event)
proc cQAbstractListModel_method_callback_timerEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQAbstractListModel](fcQAbstractListModel_vdata(self))
  let slotval1 = gen_qcoreevent_types.QTimerEvent(h: event, owned: false)
  inst.timerEvent(slotval1)

method childEvent*(self: VirtualQAbstractListModel, event: gen_qcoreevent_types.QChildEvent): void {.base.} =
  QAbstractListModelchildEvent(self[], event)
proc cQAbstractListModel_method_callback_childEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQAbstractListModel](fcQAbstractListModel_vdata(self))
  let slotval1 = gen_qcoreevent_types.QChildEvent(h: event, owned: false)
  inst.childEvent(slotval1)

method customEvent*(self: VirtualQAbstractListModel, event: gen_qcoreevent_types.QEvent): void {.base.} =
  QAbstractListModelcustomEvent(self[], event)
proc cQAbstractListModel_method_callback_customEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQAbstractListModel](fcQAbstractListModel_vdata(self))
  let slotval1 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  inst.customEvent(slotval1)

method connectNotify*(self: VirtualQAbstractListModel, signal: gen_qmetaobject_types.QMetaMethod): void {.base.} =
  QAbstractListModelconnectNotify(self[], signal)
proc cQAbstractListModel_method_callback_connectNotify(self: pointer, signal: pointer): void {.cdecl.} =
  let inst = cast[VirtualQAbstractListModel](fcQAbstractListModel_vdata(self))
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal, owned: false)
  inst.connectNotify(slotval1)

method disconnectNotify*(self: VirtualQAbstractListModel, signal: gen_qmetaobject_types.QMetaMethod): void {.base.} =
  QAbstractListModeldisconnectNotify(self[], signal)
proc cQAbstractListModel_method_callback_disconnectNotify(self: pointer, signal: pointer): void {.cdecl.} =
  let inst = cast[VirtualQAbstractListModel](fcQAbstractListModel_vdata(self))
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal, owned: false)
  inst.disconnectNotify(slotval1)

proc resetInternalData*(self: gen_qabstractitemmodel_types.QAbstractListModel): void =
  fcQAbstractListModel_protectedbase_resetInternalData(self.h)

proc createIndex*(self: gen_qabstractitemmodel_types.QAbstractListModel, row: cint, column: cint): gen_qabstractitemmodel_types.QModelIndex =
  gen_qabstractitemmodel_types.QModelIndex(h: fcQAbstractListModel_protectedbase_createIndex(self.h, row, column), owned: true)

proc encodeData*(self: gen_qabstractitemmodel_types.QAbstractListModel, indexes: seq[gen_qabstractitemmodel_types.QModelIndex], stream: gen_qdatastream_types.QDataStream): void =
  var indexes_CArray = newSeq[pointer](len(indexes))
  for i in 0..<len(indexes):
    indexes_CArray[i] = indexes[i].h

  fcQAbstractListModel_protectedbase_encodeData(self.h, struct_miqt_array(len: csize_t(len(indexes)), data: if len(indexes) == 0: nil else: addr(indexes_CArray[0])), stream.h)

proc decodeData*(self: gen_qabstractitemmodel_types.QAbstractListModel, row: cint, column: cint, parent: gen_qabstractitemmodel_types.QModelIndex, stream: gen_qdatastream_types.QDataStream): bool =
  fcQAbstractListModel_protectedbase_decodeData(self.h, row, column, parent.h, stream.h)

proc beginInsertRows*(self: gen_qabstractitemmodel_types.QAbstractListModel, parent: gen_qabstractitemmodel_types.QModelIndex, first: cint, last: cint): void =
  fcQAbstractListModel_protectedbase_beginInsertRows(self.h, parent.h, first, last)

proc endInsertRows*(self: gen_qabstractitemmodel_types.QAbstractListModel): void =
  fcQAbstractListModel_protectedbase_endInsertRows(self.h)

proc beginRemoveRows*(self: gen_qabstractitemmodel_types.QAbstractListModel, parent: gen_qabstractitemmodel_types.QModelIndex, first: cint, last: cint): void =
  fcQAbstractListModel_protectedbase_beginRemoveRows(self.h, parent.h, first, last)

proc endRemoveRows*(self: gen_qabstractitemmodel_types.QAbstractListModel): void =
  fcQAbstractListModel_protectedbase_endRemoveRows(self.h)

proc beginMoveRows*(self: gen_qabstractitemmodel_types.QAbstractListModel, sourceParent: gen_qabstractitemmodel_types.QModelIndex, sourceFirst: cint, sourceLast: cint, destinationParent: gen_qabstractitemmodel_types.QModelIndex, destinationRow: cint): bool =
  fcQAbstractListModel_protectedbase_beginMoveRows(self.h, sourceParent.h, sourceFirst, sourceLast, destinationParent.h, destinationRow)

proc endMoveRows*(self: gen_qabstractitemmodel_types.QAbstractListModel): void =
  fcQAbstractListModel_protectedbase_endMoveRows(self.h)

proc beginInsertColumns*(self: gen_qabstractitemmodel_types.QAbstractListModel, parent: gen_qabstractitemmodel_types.QModelIndex, first: cint, last: cint): void =
  fcQAbstractListModel_protectedbase_beginInsertColumns(self.h, parent.h, first, last)

proc endInsertColumns*(self: gen_qabstractitemmodel_types.QAbstractListModel): void =
  fcQAbstractListModel_protectedbase_endInsertColumns(self.h)

proc beginRemoveColumns*(self: gen_qabstractitemmodel_types.QAbstractListModel, parent: gen_qabstractitemmodel_types.QModelIndex, first: cint, last: cint): void =
  fcQAbstractListModel_protectedbase_beginRemoveColumns(self.h, parent.h, first, last)

proc endRemoveColumns*(self: gen_qabstractitemmodel_types.QAbstractListModel): void =
  fcQAbstractListModel_protectedbase_endRemoveColumns(self.h)

proc beginMoveColumns*(self: gen_qabstractitemmodel_types.QAbstractListModel, sourceParent: gen_qabstractitemmodel_types.QModelIndex, sourceFirst: cint, sourceLast: cint, destinationParent: gen_qabstractitemmodel_types.QModelIndex, destinationColumn: cint): bool =
  fcQAbstractListModel_protectedbase_beginMoveColumns(self.h, sourceParent.h, sourceFirst, sourceLast, destinationParent.h, destinationColumn)

proc endMoveColumns*(self: gen_qabstractitemmodel_types.QAbstractListModel): void =
  fcQAbstractListModel_protectedbase_endMoveColumns(self.h)

proc beginResetModel*(self: gen_qabstractitemmodel_types.QAbstractListModel): void =
  fcQAbstractListModel_protectedbase_beginResetModel(self.h)

proc endResetModel*(self: gen_qabstractitemmodel_types.QAbstractListModel): void =
  fcQAbstractListModel_protectedbase_endResetModel(self.h)

proc changePersistentIndex*(self: gen_qabstractitemmodel_types.QAbstractListModel, fromVal: gen_qabstractitemmodel_types.QModelIndex, to: gen_qabstractitemmodel_types.QModelIndex): void =
  fcQAbstractListModel_protectedbase_changePersistentIndex(self.h, fromVal.h, to.h)

proc changePersistentIndexList*(self: gen_qabstractitemmodel_types.QAbstractListModel, fromVal: seq[gen_qabstractitemmodel_types.QModelIndex], to: seq[gen_qabstractitemmodel_types.QModelIndex]): void =
  var fromVal_CArray = newSeq[pointer](len(fromVal))
  for i in 0..<len(fromVal):
    fromVal_CArray[i] = fromVal[i].h

  var to_CArray = newSeq[pointer](len(to))
  for i in 0..<len(to):
    to_CArray[i] = to[i].h

  fcQAbstractListModel_protectedbase_changePersistentIndexList(self.h, struct_miqt_array(len: csize_t(len(fromVal)), data: if len(fromVal) == 0: nil else: addr(fromVal_CArray[0])), struct_miqt_array(len: csize_t(len(to)), data: if len(to) == 0: nil else: addr(to_CArray[0])))

proc persistentIndexList*(self: gen_qabstractitemmodel_types.QAbstractListModel): seq[gen_qabstractitemmodel_types.QModelIndex] =
  var v_ma = fcQAbstractListModel_protectedbase_persistentIndexList(self.h)
  var vx_ret = newSeq[gen_qabstractitemmodel_types.QModelIndex](int(v_ma.len))
  let v_outCast = cast[ptr UncheckedArray[pointer]](v_ma.data)
  for i in 0 ..< v_ma.len:
    vx_ret[i] = gen_qabstractitemmodel_types.QModelIndex(h: v_outCast[i], owned: true)
  c_free(v_ma.data)
  vx_ret

proc sender*(self: gen_qabstractitemmodel_types.QAbstractListModel): gen_qobject_types.QObject =
  gen_qobject_types.QObject(h: fcQAbstractListModel_protectedbase_sender(self.h), owned: false)

proc senderSignalIndex*(self: gen_qabstractitemmodel_types.QAbstractListModel): cint =
  fcQAbstractListModel_protectedbase_senderSignalIndex(self.h)

proc receivers*(self: gen_qabstractitemmodel_types.QAbstractListModel, signal: cstring): cint =
  fcQAbstractListModel_protectedbase_receivers(self.h, signal)

proc isSignalConnected*(self: gen_qabstractitemmodel_types.QAbstractListModel, signal: gen_qmetaobject_types.QMetaMethod): bool =
  fcQAbstractListModel_protectedbase_isSignalConnected(self.h, signal.h)

proc create*(T: type gen_qabstractitemmodel_types.QAbstractListModel,
    vtbl: ref QAbstractListModelVTable = nil): gen_qabstractitemmodel_types.QAbstractListModel =
  let vtbl = if vtbl == nil: new QAbstractListModelVTable else: vtbl
  GC_ref(vtbl)
  vtbl[].vtbl.destructor = proc(self: pointer) {.cdecl.} =
    let vtbl = cast[ref QAbstractListModelVTable](fcQAbstractListModel_vdata(self))
    GC_unref(vtbl)
  if not isNil(vtbl[].metaObject):
    vtbl[].vtbl.metaObject = cQAbstractListModel_vtable_callback_metaObject
  if not isNil(vtbl[].metacast):
    vtbl[].vtbl.metacast = cQAbstractListModel_vtable_callback_metacast
  if not isNil(vtbl[].metacall):
    vtbl[].vtbl.metacall = cQAbstractListModel_vtable_callback_metacall
  if not isNil(vtbl[].index):
    vtbl[].vtbl.index = cQAbstractListModel_vtable_callback_index
  if not isNil(vtbl[].sibling):
    vtbl[].vtbl.sibling = cQAbstractListModel_vtable_callback_sibling
  if not isNil(vtbl[].dropMimeData):
    vtbl[].vtbl.dropMimeData = cQAbstractListModel_vtable_callback_dropMimeData
  if not isNil(vtbl[].flags):
    vtbl[].vtbl.flags = cQAbstractListModel_vtable_callback_flags
  if not isNil(vtbl[].rowCount):
    vtbl[].vtbl.rowCount = cQAbstractListModel_vtable_callback_rowCount
  if not isNil(vtbl[].data):
    vtbl[].vtbl.data = cQAbstractListModel_vtable_callback_data
  if not isNil(vtbl[].setData):
    vtbl[].vtbl.setData = cQAbstractListModel_vtable_callback_setData
  if not isNil(vtbl[].headerData):
    vtbl[].vtbl.headerData = cQAbstractListModel_vtable_callback_headerData
  if not isNil(vtbl[].setHeaderData):
    vtbl[].vtbl.setHeaderData = cQAbstractListModel_vtable_callback_setHeaderData
  if not isNil(vtbl[].itemData):
    vtbl[].vtbl.itemData = cQAbstractListModel_vtable_callback_itemData
  if not isNil(vtbl[].setItemData):
    vtbl[].vtbl.setItemData = cQAbstractListModel_vtable_callback_setItemData
  if not isNil(vtbl[].mimeTypes):
    vtbl[].vtbl.mimeTypes = cQAbstractListModel_vtable_callback_mimeTypes
  if not isNil(vtbl[].mimeData):
    vtbl[].vtbl.mimeData = cQAbstractListModel_vtable_callback_mimeData
  if not isNil(vtbl[].canDropMimeData):
    vtbl[].vtbl.canDropMimeData = cQAbstractListModel_vtable_callback_canDropMimeData
  if not isNil(vtbl[].supportedDropActions):
    vtbl[].vtbl.supportedDropActions = cQAbstractListModel_vtable_callback_supportedDropActions
  if not isNil(vtbl[].supportedDragActions):
    vtbl[].vtbl.supportedDragActions = cQAbstractListModel_vtable_callback_supportedDragActions
  if not isNil(vtbl[].insertRows):
    vtbl[].vtbl.insertRows = cQAbstractListModel_vtable_callback_insertRows
  if not isNil(vtbl[].insertColumns):
    vtbl[].vtbl.insertColumns = cQAbstractListModel_vtable_callback_insertColumns
  if not isNil(vtbl[].removeRows):
    vtbl[].vtbl.removeRows = cQAbstractListModel_vtable_callback_removeRows
  if not isNil(vtbl[].removeColumns):
    vtbl[].vtbl.removeColumns = cQAbstractListModel_vtable_callback_removeColumns
  if not isNil(vtbl[].moveRows):
    vtbl[].vtbl.moveRows = cQAbstractListModel_vtable_callback_moveRows
  if not isNil(vtbl[].moveColumns):
    vtbl[].vtbl.moveColumns = cQAbstractListModel_vtable_callback_moveColumns
  if not isNil(vtbl[].fetchMore):
    vtbl[].vtbl.fetchMore = cQAbstractListModel_vtable_callback_fetchMore
  if not isNil(vtbl[].canFetchMore):
    vtbl[].vtbl.canFetchMore = cQAbstractListModel_vtable_callback_canFetchMore
  if not isNil(vtbl[].sort):
    vtbl[].vtbl.sort = cQAbstractListModel_vtable_callback_sort
  if not isNil(vtbl[].buddy):
    vtbl[].vtbl.buddy = cQAbstractListModel_vtable_callback_buddy
  if not isNil(vtbl[].match):
    vtbl[].vtbl.match = cQAbstractListModel_vtable_callback_match
  if not isNil(vtbl[].span):
    vtbl[].vtbl.span = cQAbstractListModel_vtable_callback_span
  if not isNil(vtbl[].roleNames):
    vtbl[].vtbl.roleNames = cQAbstractListModel_vtable_callback_roleNames
  if not isNil(vtbl[].submit):
    vtbl[].vtbl.submit = cQAbstractListModel_vtable_callback_submit
  if not isNil(vtbl[].revert):
    vtbl[].vtbl.revert = cQAbstractListModel_vtable_callback_revert
  if not isNil(vtbl[].event):
    vtbl[].vtbl.event = cQAbstractListModel_vtable_callback_event
  if not isNil(vtbl[].eventFilter):
    vtbl[].vtbl.eventFilter = cQAbstractListModel_vtable_callback_eventFilter
  if not isNil(vtbl[].timerEvent):
    vtbl[].vtbl.timerEvent = cQAbstractListModel_vtable_callback_timerEvent
  if not isNil(vtbl[].childEvent):
    vtbl[].vtbl.childEvent = cQAbstractListModel_vtable_callback_childEvent
  if not isNil(vtbl[].customEvent):
    vtbl[].vtbl.customEvent = cQAbstractListModel_vtable_callback_customEvent
  if not isNil(vtbl[].connectNotify):
    vtbl[].vtbl.connectNotify = cQAbstractListModel_vtable_callback_connectNotify
  if not isNil(vtbl[].disconnectNotify):
    vtbl[].vtbl.disconnectNotify = cQAbstractListModel_vtable_callback_disconnectNotify
  gen_qabstractitemmodel_types.QAbstractListModel(h: fcQAbstractListModel_new(addr(vtbl[].vtbl), addr(vtbl[])), owned: true)

proc create*(T: type gen_qabstractitemmodel_types.QAbstractListModel,
    parent: gen_qobject_types.QObject,
    vtbl: ref QAbstractListModelVTable = nil): gen_qabstractitemmodel_types.QAbstractListModel =
  let vtbl = if vtbl == nil: new QAbstractListModelVTable else: vtbl
  GC_ref(vtbl)
  vtbl[].vtbl.destructor = proc(self: pointer) {.cdecl.} =
    let vtbl = cast[ref QAbstractListModelVTable](fcQAbstractListModel_vdata(self))
    GC_unref(vtbl)
  if not isNil(vtbl[].metaObject):
    vtbl[].vtbl.metaObject = cQAbstractListModel_vtable_callback_metaObject
  if not isNil(vtbl[].metacast):
    vtbl[].vtbl.metacast = cQAbstractListModel_vtable_callback_metacast
  if not isNil(vtbl[].metacall):
    vtbl[].vtbl.metacall = cQAbstractListModel_vtable_callback_metacall
  if not isNil(vtbl[].index):
    vtbl[].vtbl.index = cQAbstractListModel_vtable_callback_index
  if not isNil(vtbl[].sibling):
    vtbl[].vtbl.sibling = cQAbstractListModel_vtable_callback_sibling
  if not isNil(vtbl[].dropMimeData):
    vtbl[].vtbl.dropMimeData = cQAbstractListModel_vtable_callback_dropMimeData
  if not isNil(vtbl[].flags):
    vtbl[].vtbl.flags = cQAbstractListModel_vtable_callback_flags
  if not isNil(vtbl[].rowCount):
    vtbl[].vtbl.rowCount = cQAbstractListModel_vtable_callback_rowCount
  if not isNil(vtbl[].data):
    vtbl[].vtbl.data = cQAbstractListModel_vtable_callback_data
  if not isNil(vtbl[].setData):
    vtbl[].vtbl.setData = cQAbstractListModel_vtable_callback_setData
  if not isNil(vtbl[].headerData):
    vtbl[].vtbl.headerData = cQAbstractListModel_vtable_callback_headerData
  if not isNil(vtbl[].setHeaderData):
    vtbl[].vtbl.setHeaderData = cQAbstractListModel_vtable_callback_setHeaderData
  if not isNil(vtbl[].itemData):
    vtbl[].vtbl.itemData = cQAbstractListModel_vtable_callback_itemData
  if not isNil(vtbl[].setItemData):
    vtbl[].vtbl.setItemData = cQAbstractListModel_vtable_callback_setItemData
  if not isNil(vtbl[].mimeTypes):
    vtbl[].vtbl.mimeTypes = cQAbstractListModel_vtable_callback_mimeTypes
  if not isNil(vtbl[].mimeData):
    vtbl[].vtbl.mimeData = cQAbstractListModel_vtable_callback_mimeData
  if not isNil(vtbl[].canDropMimeData):
    vtbl[].vtbl.canDropMimeData = cQAbstractListModel_vtable_callback_canDropMimeData
  if not isNil(vtbl[].supportedDropActions):
    vtbl[].vtbl.supportedDropActions = cQAbstractListModel_vtable_callback_supportedDropActions
  if not isNil(vtbl[].supportedDragActions):
    vtbl[].vtbl.supportedDragActions = cQAbstractListModel_vtable_callback_supportedDragActions
  if not isNil(vtbl[].insertRows):
    vtbl[].vtbl.insertRows = cQAbstractListModel_vtable_callback_insertRows
  if not isNil(vtbl[].insertColumns):
    vtbl[].vtbl.insertColumns = cQAbstractListModel_vtable_callback_insertColumns
  if not isNil(vtbl[].removeRows):
    vtbl[].vtbl.removeRows = cQAbstractListModel_vtable_callback_removeRows
  if not isNil(vtbl[].removeColumns):
    vtbl[].vtbl.removeColumns = cQAbstractListModel_vtable_callback_removeColumns
  if not isNil(vtbl[].moveRows):
    vtbl[].vtbl.moveRows = cQAbstractListModel_vtable_callback_moveRows
  if not isNil(vtbl[].moveColumns):
    vtbl[].vtbl.moveColumns = cQAbstractListModel_vtable_callback_moveColumns
  if not isNil(vtbl[].fetchMore):
    vtbl[].vtbl.fetchMore = cQAbstractListModel_vtable_callback_fetchMore
  if not isNil(vtbl[].canFetchMore):
    vtbl[].vtbl.canFetchMore = cQAbstractListModel_vtable_callback_canFetchMore
  if not isNil(vtbl[].sort):
    vtbl[].vtbl.sort = cQAbstractListModel_vtable_callback_sort
  if not isNil(vtbl[].buddy):
    vtbl[].vtbl.buddy = cQAbstractListModel_vtable_callback_buddy
  if not isNil(vtbl[].match):
    vtbl[].vtbl.match = cQAbstractListModel_vtable_callback_match
  if not isNil(vtbl[].span):
    vtbl[].vtbl.span = cQAbstractListModel_vtable_callback_span
  if not isNil(vtbl[].roleNames):
    vtbl[].vtbl.roleNames = cQAbstractListModel_vtable_callback_roleNames
  if not isNil(vtbl[].submit):
    vtbl[].vtbl.submit = cQAbstractListModel_vtable_callback_submit
  if not isNil(vtbl[].revert):
    vtbl[].vtbl.revert = cQAbstractListModel_vtable_callback_revert
  if not isNil(vtbl[].event):
    vtbl[].vtbl.event = cQAbstractListModel_vtable_callback_event
  if not isNil(vtbl[].eventFilter):
    vtbl[].vtbl.eventFilter = cQAbstractListModel_vtable_callback_eventFilter
  if not isNil(vtbl[].timerEvent):
    vtbl[].vtbl.timerEvent = cQAbstractListModel_vtable_callback_timerEvent
  if not isNil(vtbl[].childEvent):
    vtbl[].vtbl.childEvent = cQAbstractListModel_vtable_callback_childEvent
  if not isNil(vtbl[].customEvent):
    vtbl[].vtbl.customEvent = cQAbstractListModel_vtable_callback_customEvent
  if not isNil(vtbl[].connectNotify):
    vtbl[].vtbl.connectNotify = cQAbstractListModel_vtable_callback_connectNotify
  if not isNil(vtbl[].disconnectNotify):
    vtbl[].vtbl.disconnectNotify = cQAbstractListModel_vtable_callback_disconnectNotify
  gen_qabstractitemmodel_types.QAbstractListModel(h: fcQAbstractListModel_new2(addr(vtbl[].vtbl), addr(vtbl[]), parent.h), owned: true)

const cQAbstractListModel_mvtbl = cQAbstractListModelVTable(
  destructor: proc(self: pointer) {.cdecl.} =
    let inst = cast[ptr typeof(VirtualQAbstractListModel()[])](self.fcQAbstractListModel_vtbl())
    inst[].h = nil
    inst[].owned = false,
  metaObject: cQAbstractListModel_method_callback_metaObject,
  metacast: cQAbstractListModel_method_callback_metacast,
  metacall: cQAbstractListModel_method_callback_metacall,
  index: cQAbstractListModel_method_callback_index,
  sibling: cQAbstractListModel_method_callback_sibling,
  dropMimeData: cQAbstractListModel_method_callback_dropMimeData,
  flags: cQAbstractListModel_method_callback_flags,
  rowCount: cQAbstractListModel_method_callback_rowCount,
  data: cQAbstractListModel_method_callback_data,
  setData: cQAbstractListModel_method_callback_setData,
  headerData: cQAbstractListModel_method_callback_headerData,
  setHeaderData: cQAbstractListModel_method_callback_setHeaderData,
  itemData: cQAbstractListModel_method_callback_itemData,
  setItemData: cQAbstractListModel_method_callback_setItemData,
  mimeTypes: cQAbstractListModel_method_callback_mimeTypes,
  mimeData: cQAbstractListModel_method_callback_mimeData,
  canDropMimeData: cQAbstractListModel_method_callback_canDropMimeData,
  supportedDropActions: cQAbstractListModel_method_callback_supportedDropActions,
  supportedDragActions: cQAbstractListModel_method_callback_supportedDragActions,
  insertRows: cQAbstractListModel_method_callback_insertRows,
  insertColumns: cQAbstractListModel_method_callback_insertColumns,
  removeRows: cQAbstractListModel_method_callback_removeRows,
  removeColumns: cQAbstractListModel_method_callback_removeColumns,
  moveRows: cQAbstractListModel_method_callback_moveRows,
  moveColumns: cQAbstractListModel_method_callback_moveColumns,
  fetchMore: cQAbstractListModel_method_callback_fetchMore,
  canFetchMore: cQAbstractListModel_method_callback_canFetchMore,
  sort: cQAbstractListModel_method_callback_sort,
  buddy: cQAbstractListModel_method_callback_buddy,
  match: cQAbstractListModel_method_callback_match,
  span: cQAbstractListModel_method_callback_span,
  roleNames: cQAbstractListModel_method_callback_roleNames,
  submit: cQAbstractListModel_method_callback_submit,
  revert: cQAbstractListModel_method_callback_revert,
  event: cQAbstractListModel_method_callback_event,
  eventFilter: cQAbstractListModel_method_callback_eventFilter,
  timerEvent: cQAbstractListModel_method_callback_timerEvent,
  childEvent: cQAbstractListModel_method_callback_childEvent,
  customEvent: cQAbstractListModel_method_callback_customEvent,
  connectNotify: cQAbstractListModel_method_callback_connectNotify,
  disconnectNotify: cQAbstractListModel_method_callback_disconnectNotify,
)
proc create*(T: type gen_qabstractitemmodel_types.QAbstractListModel,
    inst: VirtualQAbstractListModel) =
  if inst[].h != nil: delete(move(inst[]))
  inst[].h = fcQAbstractListModel_new(addr(cQAbstractListModel_mvtbl), addr(inst[]))
  inst[].owned = true

proc create*(T: type gen_qabstractitemmodel_types.QAbstractListModel,
    parent: gen_qobject_types.QObject,
    inst: VirtualQAbstractListModel) =
  if inst[].h != nil: delete(move(inst[]))
  inst[].h = fcQAbstractListModel_new2(addr(cQAbstractListModel_mvtbl), addr(inst[]), parent.h)
  inst[].owned = true

proc staticMetaObject*(_: type gen_qabstractitemmodel_types.QAbstractListModel): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQAbstractListModel_staticMetaObject())
